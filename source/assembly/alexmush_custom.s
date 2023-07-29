    .export _enable_grayscale, _toggle_grayscale, _disable_grayscale
    .export famistudio_dpcm_bank_callback, _music_play, _sfx_sample_play
    .export _oam_meta_spr_hflipped
    .export _unpack_tiles

.SEGMENT "ZEROPAGE"

TILE_CNT    =TEMP+2
;RLE_BYTE    =TEMP+3
FLAG_CNT    =TEMP+4
BIT_IN_CNT  =TEMP+5
RLE_FLAGS   =TEMP+7
RLE_DELTA   =TEMP+8
RLE_TEMPA   =TEMP+9
RLE_TEMPB   =TEMP+10

.segment "BSS"
    decomp_buffer: .res 16  ;For GFX RLE

.SEGMENT "CODE"

;alexmush's debug additions

;void __fastcall__ enable_grayscale(void);

_enable_grayscale:
    lda <PPU_MASK_VAR
    ora #%00000001
    sta <PPU_MASK_VAR
    sta PPU_MASK
    rts

;void __fastcall__ toggle_grayscale(void);

_toggle_grayscale:
    lda <PPU_MASK_VAR
    eor #%00000001
    sta <PPU_MASK_VAR
    sta PPU_MASK
    rts

;void __fastcall__ disable_grayscale(void);

_disable_grayscale:
    lda <PPU_MASK_VAR
    and #%11111110
    sta <PPU_MASK_VAR
    sta PPU_MASK
    rts

famistudio_dpcm_bank_callback:
    CLC
    ADC #$0C
    LDX #MMC3_REG_SEL_PRG_BANK_0
    JMP mmc3_internal_set_bank

;void __fastcall__ music_play(unsigned char song);
_music_play:
    LDY #$00
    TSX
@bank_loop:
    PHA
    SEC
    SBC @music_counts, Y
    BCC @found_bank
    INY
    TXS ;Act as if no PHA happened
    JMP @bank_loop
    
@found_bank:
    TYA
    PHA
    CLC
    ADC #$09
    LDX #MMC3_REG_SEL_PRG_BANK_1
    JSR mmc3_internal_set_bank
    PLA
    CMP current_song_bank
    BEQ :+
    ;If different bank than before reinitalize FS
        STA current_song_bank
        TAY
        LDX @music_data_locations_lo, Y
        LDA @music_data_locations_hi, Y
        TAY
        LDA #$01
        JSR famistudio_init
    :
    PLA
    CLC
    ADC #$01 ;DPCM aligner
    JSR famistudio_music_play
    
    LDA mmc3PRG1Bank
    LDX #MMC3_REG_SEL_PRG_BANK_1
    JMP mmc3_internal_set_bank


@music_data_locations_lo:
.byte <music1_data_, <music2_data_, <music3_data_
@music_data_locations_hi:
.byte >music1_data_, >music2_data_, >music3_data_
@music_counts:
.byte $07, $09, $FF  ;last bank is marked with an FF to always stop bank picking

;void __fastcall__ sfx_sample_play(unsigned char index);
_sfx_sample_play:
    PHA
    LDA current_song_bank
    CLC
    ADC #$09
    LDX #MMC3_REG_SEL_PRG_BANK_1
    JSR mmc3_internal_set_bank
    PLA
    JSR famistudio_sfx_sample_play
    LDA mmc3PRG1Bank
    LDX #MMC3_REG_SEL_PRG_BANK_1
    JMP mmc3_internal_set_bank

;unsigned char __fastcall__ oam_meta_spr_hflipped(unsigned char x,unsigned char y,unsigned char sprid,const unsigned char *data);

_oam_meta_spr_hflipped:

    sta <PTR
    stx <PTR+1

    ldy #2      ;three popa calls replacement, performed in reversed order
    lda (sp),y
    dey
    sta <SCRX
    lda (sp),y
    dey
    sta <SCRY
    lda (sp),y
    tax

@1:

    lda (PTR),y     ;x offset
    cmp #$80
    beq @2
    iny
    eor #$FF
    clc
    ADC <SCRX
    SEC
    sbc #$08
    sta OAM_BUF+3,x
    lda (PTR),y     ;y offset
    iny
    clc
    adc <SCRY
    sta OAM_BUF+0,x
    lda (PTR),y     ;tile
    iny
    sta OAM_BUF+1,x
    lda (PTR),y     ;attribute
    INY
    ora #$40
    sta OAM_BUF+2,x
    inx
    inx
    inx
    inx
    jmp @1

@2:

    lda <sp
    adc #2          ;carry is always set here, so it adds 3
    sta <sp
    bcc @3
    inc <sp+1

@3:

    txa
    rts


;Format:
;1 byte - amount of 8x8 tiles
;   Repeat amount of tiles / 8 times:
;1 byte - flags whether the tile is stored as raw data or RLE encoded
;X bytes - actual data

;void __fastcall__ unpack_tiles(const unsigned char* data);
_unpack_tiles:
    LDY #$00
    STA <PTR
    STX <PTR+1
    ; Get total tile count
    LDA (PTR), Y
    STA <TILE_CNT
    INC <PTR
    BNE @GetRLEFlags
    INC <PTR+1

@GetRLEFlags:
    LDA #$08
    LDY #$00
    STA <FLAG_CNT
    LDA (PTR), Y
    STA <RLE_FLAGS
    INC <PTR
    BNE @NewTile
    INC <PTR+1

@NewTile:
    ASL <RLE_FLAGS
    BCS @RLEDecompress
    LDX #$10
    LDY #$00
    
@NotCompressedLoop:
    LDA (PTR), Y
    STA PPU_DATA
    INC <PTR
    BNE :+
    INC <PTR+1
    :
    DEX
    BNE @NotCompressedLoop

    DEC <TILE_CNT
    BEQ @End
    DEC <FLAG_CNT
    BNE @NewTile

    JMP @GetRLEFlags

@End:
    RTS


;RLE Format (based on 1st Gen Pokemon):
;1 bit - whether the data is delta-encoded
;1 bit - starting packet type (0 if zero, 1 if data)
;variable - actual data:
;   Zero packet:
;   x bits - 1s ending with a 0, specifies the length of the following number
;   x bits - amount of 00 pairs + 1 with the leading bit stripped
;   Data packet:
;   2x bits - data in bit pairs
;   2 bits - terminating 00 pair
@RLEDecompress:
    LDX #$00
    STX <RLE_DELTA
    INX
    STX <RLE_BYTE
    LDX #$0F
    LDY #$00
    LDA (PTR), Y    ; Get new byte
    LDY #$03
    INC <PTR
    BNE @RLEParseHeader
    INC <PTR+1

@RLEParseHeader:
    PHA
    ASL             ;Delta encoding bit
    ASL             ;Get initial packet type
    BCC @RLEZeroPacket

@RLEDataPacketLoop:
    PHA
    AND #$C0
    BEQ @RLEZeroPacketFromData
    PLA
    ASL             ;
    ROL <RLE_BYTE   ;   Get the bit pair
    ASL             ;
    ROL <RLE_BYTE   ;

    BCC :+
    ;Write the byte to the buffer
    STA <RLE_TEMPA   ;Same as PHA
    LDA <RLE_BYTE
    STA decomp_buffer, X
    ;Update counter
    LDA #$01
    STA <RLE_BYTE
    LDA <RLE_TEMPA   ;Cheaper than PLA
    DEX
    BPL :+
    DEY
    JMP @RLEnd
    :

    DEY
    BNE @RLEDataPacketLoop
    ;Get new byte
    LDA (PTR), Y    ; Get new byte
    LDY #$04    ; Update counter
    INC <PTR
    BNE @RLEDataPacketLoop
    INC <PTR+1
    JMP @RLEDataPacketLoop


@RLEZeroPacketFromData:
    PLA
    ;Coming from data packet, remove the terminating 00 pair
    ASL
    ASL
    DEY
    BNE @RLEZeroPacket
    LDA (PTR), Y    ; Get new byte
    LDY #$04    ; Update counter
    INC <PTR
    BNE @RLEZeroPacket
    INC <PTR+1
@RLEZeroPacket:
    ;The IN counter used to count *pairs* of bits
    ;That's why this adjustment exists
    STY <RLE_TEMPA
    ASL <RLE_TEMPA
    LDY <RLE_TEMPA
    STX <RLE_TEMPA   ;X is used for other purposes here
    LDX #$00
@RLEZeroPacketLengthLoop:
    DEY
    BPL :+
    INY
    LDA (PTR), Y    ; Get new byte
    LDY #07    ; Update counter
    INC <PTR
    BNE :+
        INC <PTR+1
    :
    ASL
    INX
    BCS @RLEZeroPacketLengthLoop

@RLEZeroPacketAddition:
    PHA
    LDA #$01
    STA <RLE_TEMPB
    PLA

@RLEZeroPacketAdditionLoop:
    DEY
    BPL :+
    INY
    LDA (PTR), Y    ; Get new byte
    LDY #$07    ; Update counter
    INC <PTR
    BNE :+
        INC <PTR+1

    :
    ASL
    ROL <RLE_TEMPB
    DEX
    BNE @RLEZeroPacketAdditionLoop


;gotta do it again
    TSX ; Useful if needed to cancel PHA, X is already unused
    PHA
    TYA
    LSR A
    TAY
    BNE @RLEZeroPacketZeroInsertion
    
    TXS ; Cancel the PHA
    LDA (PTR), Y    ; Get new byte
    PHA
    LDY #$04    ; Update counter
    INC <PTR
    BNE @RLEZeroPacketZeroInsertion
        INC <PTR+1

@RLEZeroPacketZeroInsertion:
    LDX <RLE_TEMPA ;Recover X
    DEC <RLE_TEMPB ;Decrement amount of bit pairs 
    BEQ @RLEZeroPacketToData
    LDA <RLE_BYTE
;Loop 1, possibly containing old data
@RLEZeroPacketLoop1:
    ASL
    DEC <RLE_TEMPB
    BEQ @RLEZeroPacketToDataFromLoop1
    ASL
    BCC @RLEZeroPacketLoop1
;Before Loop 2
    ;Write the byte to the buffer
    STA decomp_buffer, X
    ;Update counter
    LDA #$01
    STA <RLE_BYTE
    DEX
    BMI @EndPLA
;Loop 2, just writing zeros:
@RLEZeroPacketLoop2:
    LDA <RLE_TEMPB
    CMP #$04
    BMI @RLEZeroPacketLoop3
    SEC
    SBC #$04
    STA <RLE_TEMPB
    LDA #$00
    STA decomp_buffer, X
    DEX
    BPL @RLEZeroPacketLoop2

@EndPLA:
    PLA
@RLEnd:
    CPY #$04
    BNE :+
    DEC <PTR
    LDA <PTR
    CMP #$FF
    BNE :+
    DEC <PTR+1
    :
    ; Delta decode if necessary
    LDX #$0F
    PLA
    BMI @DeltaDecode
@DataOut:
    ;Put da data into VRAM
    LDA decomp_buffer, X
    STA PPU_DATA
    DEX
    BPL @DataOut
    DEC <TILE_CNT
    BEQ @End2
    DEC <FLAG_CNT
    BNE @NewTileJMP
    JMP @GetRLEFlags
@End2:
    RTS
@NewTileJMP:
    JMP @NewTile


;Loop 3, the remaining bits
@RLEZeroPacketLoop3:
    TYA
    LDY <RLE_TEMPB
    STA <RLE_TEMPB
    LDA @RemainBitsTable, Y
    STA <RLE_BYTE
    LDY <RLE_TEMPB
@RLEZeroPacketToData:
    PLA
    JMP @RLEDataPacketLoop
@RLEZeroPacketToDataFromLoop1:
    ASL
    STA <RLE_BYTE
    BCC @RLEZeroPacketToData
    ;Write the byte to the buffer
    STA decomp_buffer, X
    ;Update counter
    LDA #$01
    STA <RLE_BYTE
    DEX
    BMI @EndPLA
    JMP @RLEZeroPacketToData

@DeltaDecode:
    LDA #$00
    STA <RLE_TEMPA
    @DeltaBigLoop:
        LDA decomp_buffer, X
        STA <RLE_BYTE
        LDA #$01
        @DeltaLoop:
            ASL <RLE_BYTE
            BCC :+
                STA <RLE_TEMPB
                LDA <RLE_TEMPA
                EOR #$01
                STA <RLE_TEMPA
                LDA <RLE_TEMPB
            :
            ASL A
            ORA <RLE_TEMPA
            BCC @DeltaLoop
            STA decomp_buffer, X
            DEX
            BPL @DeltaBigLoop
    LDX #$0F
    JMP @DataOut

@RemainBitsTable:
    .byte $01, $04, $10, $40
