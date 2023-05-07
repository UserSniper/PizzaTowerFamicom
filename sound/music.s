; This file for the FamiStudio Sound Engine and was generated by FamiStudio

.if FAMISTUDIO_CFG_C_BINDINGS
.export _music_data_=music_data_
.endif

music_data_:
	.byte 7
	.word @instruments
	.word @samples-4
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,307,256 ; 00 : Time for a Smackdown! 1
	.word @song1ch0,@song1ch1,@song1ch2,@song1ch3,@song1ch4,307,256 ; 01 : Pizza Deluxe! 1
	.word @song2ch0,@song2ch1,@song2ch2,@song2ch3,@song2ch4,307,256 ; 02 : Mondays 1
	.word @song3ch0,@song3ch1,@song3ch2,@song3ch3,@song3ch4,307,256 ; 03 : Funiculi Holiday 1
	.word @song4ch0,@song4ch1,@song4ch2,@song4ch3,@song4ch4,307,256 ; 04 : hmm look what u done did you found a secret :) 1
	.word @song5ch0,@song5ch1,@song5ch2,@song5ch3,@song5ch4,307,256 ; 05 : Oregano Mirage 1
	.word @song6ch0,@song6ch1,@song6ch2,@song6ch3,@song6ch4,307,256 ; 06 : bye bye there! 1

.export music_data_
.global FAMISTUDIO_DPCM_PTR

@instruments:
	.word @env12,@env20,@env3,@env0 ; 00 : bass 1
	.word @env12,@env19,@env22,@env0 ; 01 : blank 1
	.word @env17,@env8,@env6,@env0 ; 02 : funny guitar 1
	.word @env24,@env19,@env22,@env0 ; 03 : main 1
	.word @env28,@env19,@env4,@env0 ; 04 : New instrument 1
	.word @env16,@env14,@env23,@env0 ; 05 : New instrument 3
	.word @env27,@env1,@env22,@env0 ; 06 : noise (get it) kick 1
	.word @env13,@env10,@env22,@env0 ; 07 : noise hat 1
	.word @env15,@env10,@env22,@env0 ; 08 : noise open hat 1
	.word @env18,@env7,@env22,@env0 ; 09 : noise snare 1
	.word @env9,@env19,@env5,@env0 ; 0a : secret bell 1
	.word @env26,@env19,@env25,@env0 ; 0b : secret square 1
	.word @env12,@env2,@env22,@env0 ; 0c : triangle kick 1
	.word @env12,@env19,@env22,@env0 ; 0d : triangle snare 1

@samples:

@env0:
	.byte $00,$c0,$7f,$00,$02
@env1:
	.byte $c2,$c9,$00,$01
@env2:
	.byte $d0,$d0,$c0,$00,$02
@env3:
	.byte $c2,$c3,$00,$01
@env4:
	.byte $c3,$7f,$00,$00
@env5:
	.byte $c2,$c1,$00,$01
@env6:
	.byte $c2,$c0,$00,$01
@env7:
	.byte $c2,$c6,$00,$01
@env8:
	.byte $c7,$c0,$00,$01
@env9:
	.byte $00,$c3,$c5,$c4,$c3,$c2,$c2,$c1,$c1,$c0,$00,$09
@env10:
	.byte $be,$c0,$00,$01
@env11:
	.byte $d3,$d3,$c0,$00,$02
@env12:
	.byte $00,$cf,$7f,$00,$02
@env13:
	.byte $00,$c5,$c4,$c3,$c2,$c1,$c0,$00,$06
@env14:
	.byte $b4,$bc,$c0,$bc,$b4,$00,$04
@env15:
	.byte $00,$c5,$c4,$c3,$00,$03
@env16:
	.byte $06,$c2,$c4,$c8,$00,$03,$c4,$c2,$c0,$00,$08
@env17:
	.byte $06,$c7,$c5,$c4,$00,$03,$c3,$c2,$c1,$c0,$00,$09
@env18:
	.byte $00,$ca,$c7,$c5,$c4,$c3,$c3,$c2,$c2,$c1,$02,$c0,$00,$0b
@env19:
	.byte $c0,$7f,$00,$01
@env20:
	.byte $c5,$c0,$00,$01
@env21:
	.byte $dc,$dc,$c0,$00,$02
@env22:
	.byte $7f,$00,$00
@env23:
	.byte $c2,$7f,$00,$00
@env24:
	.byte $07,$c3,$c4,$c3,$c2,$00,$04,$c1,$c1,$c0,$c0,$c0,$00,$0b
@env25:
	.byte $c0,$c2,$00,$01
@env26:
	.byte $0a,$c2,$c3,$c4,$02,$c3,$c3,$c2,$00,$07,$c2,$04,$c1,$07,$c0,$04,$c0,$00,$10
@env27:
	.byte $00,$c7,$c5,$c4,$c3,$c2,$c2,$c1,$02,$c0,$00,$09
@env28:
	.byte $06,$c5,$c8,$c6,$00,$03,$c5,$c4,$c3,$c3,$c2,$03,$c1,$06,$c0,$00,$0e

@song0ch0:
	.byte $45, $06
@song0ch0loop:
	.byte $ff, $42
	.word @song0ch0loop
@song0ch1:
@song0ch1loop:
	.byte $ff, $42
	.word @song0ch1loop
@song0ch2:
@song0ch2loop:
	.byte $ff, $42
	.word @song0ch2loop
@song0ch3:
@song0ch3loop:
	.byte $ff, $42
	.word @song0ch3loop
@song0ch4:
@song0ch4loop:
	.byte $ff, $42
	.word @song0ch4loop
@song1ch0:
	.byte $45, $06
@song1ch0loop:
	.byte $ff, $42
	.word @song1ch0loop
@song1ch1:
@song1ch1loop:
	.byte $ff, $42
	.word @song1ch1loop
@song1ch2:
@song1ch2loop:
	.byte $ff, $42
	.word @song1ch2loop
@song1ch3:
@song1ch3loop:
	.byte $ff, $42
	.word @song1ch3loop
@song1ch4:
@song1ch4loop:
	.byte $ff, $42
	.word @song1ch4loop
@song2ch0:
	.byte $45, $04
@song2ch0loop:
	.byte $4e, $00, $86, $28, $8d, $2b, $8d, $2f, $8d, $2e, $8d, $44, $a7, $27, $27, $27, $27, $85, $43, $4f, $18, $33, $19
@song2ref27:
	.byte $85, $44, $95, $3b, $81, $44, $89
@song2ref34:
	.byte $36, $81, $44, $85, $3b, $81, $3a, $81, $44, $81, $87
	.byte $41, $09
	.word @song2ref34
	.byte $85
	.byte $41, $09
	.word @song2ref34
	.byte $85, $27, $8d, $2a, $8d, $2e, $8d, $2d, $8d, $44, $a7, $7f, $26, $26, $26, $26, $85, $43, $4f, $17, $32, $19
	.byte $41, $12
	.word @song2ref27
	.byte $41, $09
	.word @song2ref34
	.byte $85
	.byte $41, $09
	.word @song2ref34
	.byte $85
@song2ref85:
	.byte $84, $15, $00, $15, $00, $15, $00, $15, $00, $15, $89, $44, $81, $15, $00, $15, $15, $15, $00, $15, $00, $15, $89, $43
	.byte $4f, $59, $21, $19, $81, $86, $32, $81, $46, $01, $34, $83, $46, $00
@song2ref123:
	.byte $32, $83, $30, $81, $32, $81, $30, $81, $2d, $81, $2b, $81, $2d, $81, $28, $81, $29, $81, $28, $81, $44, $89, $87, $73
	.byte $4e, $03, $82, $03, $95, $72, $97, $71, $87, $7f, $4d, $00, $4e, $00, $86, $26, $81, $28, $44
@song2ref166:
	.byte $2b, $81, $2d, $44, $30, $2d, $2f, $30, $35, $81, $37, $81, $39, $81, $44, $89, $00, $8d
	.byte $41, $16
	.word @song2ref85
	.byte $43, $4f, $06, $21, $19, $81, $bf, $42
	.word @song2ch0loop
@song2ch1:
@song2ch1loop:
	.byte $4e, $00, $00, $89, $71, $4d, $01, $82, $28, $8d, $2b, $8d, $2f, $8d, $2e, $81, $8d, $4d, $00, $00, $99, $7f, $86, $1b
	.byte $1b, $1b, $1b, $85, $43, $4f, $18, $27, $13
@song2ref231:
	.byte $85, $44, $9d, $71, $82, $3b
@song2ref237:
	.byte $81, $00, $89, $36, $81, $00, $85, $3b, $81, $3a
	.byte $41, $0a
	.word @song2ref237
@song2ref250:
	.byte $81, $00, $85, $36, $81, $00, $85, $3b, $81, $3a, $81, $00, $89, $4d, $01, $27, $8d, $2a, $8d, $2e, $8d, $2d, $81, $8d
	.byte $4d, $00, $00, $99, $7f, $86, $1a, $1a, $1a, $1a, $85, $43, $4f, $19, $26, $12
	.byte $41, $0e
	.word @song2ref231
	.byte $41, $0a
	.word @song2ref237
	.byte $41, $0b
	.word @song2ref250
@song2ref299:
	.byte $7f, $84, $10, $00, $10, $00, $10, $00, $10, $00, $10, $89, $44, $81, $10, $00, $10, $10, $10, $00, $10, $00, $10, $89
	.byte $43, $4f, $76, $1c, $14, $81, $77, $50, $fd, $30, $80, $04, $8b, $71, $82
	.byte $41, $14
	.word @song2ref123
	.byte $00, $85, $77, $50, $fe, $00, $80, $03, $99, $a3, $77, $50, $fe, $40, $02, $89, $71, $82
	.byte $41, $11
	.word @song2ref166
	.byte $89
	.byte $41, $16
	.word @song2ref299
	.byte $43, $4f, $07, $1c, $14, $81, $bf, $42
	.word @song2ch1loop
@song2ch2:
@song2ch2loop:
	.byte $4b, $80, $09, $bd, $bf, $09, $bd, $bf, $08, $bd, $bf, $08, $bd, $bf
@song2ref391:
	.byte $98, $09, $9d, $4a, .lobyte(@env21), .hibyte(@env21), $9a, $09, $9d, $4a, .lobyte(@env19), .hibyte(@env19), $4b, $98
	.byte $09, $9d, $4a, .lobyte(@env21), .hibyte(@env21), $9a, $09, $9d, $4a, .lobyte(@env19), .hibyte(@env19), $4b
	.byte $41, $08
	.word @song2ref391
	.byte $4a, .lobyte(@env19), .hibyte(@env19), $4b, $98, $08, $9d, $4a, .lobyte(@env21), .hibyte(@env21), $9a, $08, $9d, $4a
	.byte .lobyte(@env19), .hibyte(@env19), $4b, $98, $08, $9d, $4a, .lobyte(@env21), .hibyte(@env21), $9a, $08, $9d, $42
	.word @song2ch2loop
@song2ch3:
@song2ch3loop:
	.byte $bf, $bf, $bf, $bf, $bf, $bf, $bf, $9f, $70, $50, $02, $80, $82, $20, $9d, $7f
@song2ref466:
	.byte $8c, $18, $81, $8e, $23, $81, $23, $81, $21, $81, $23, $81, $23, $81, $21, $85, $92, $18, $8d, $8e, $21, $81, $23, $81
	.byte $23, $81, $23, $81
	.byte $41, $18
	.word @song2ref466
	.byte $41, $18
	.word @song2ref466
	.byte $41, $18
	.word @song2ref466
	.byte $41, $18
	.word @song2ref466
	.byte $41, $18
	.word @song2ref466
	.byte $42
	.word @song2ch3loop
@song2ch4:
@song2ch4loop:
	.byte $bf, $bf, $bf, $bf, $bf, $bf, $bf, $bf, $bf, $bf, $bf, $bf, $bf, $bf, $42
	.word @song2ch4loop
@song3ch0:
	.byte $45, $06
@song3ch0loop:
	.byte $ff, $42
	.word @song3ch0loop
@song3ch1:
@song3ch1loop:
	.byte $ff, $42
	.word @song3ch1loop
@song3ch2:
@song3ch2loop:
	.byte $ff, $42
	.word @song3ch2loop
@song3ch3:
@song3ch3loop:
	.byte $ff, $42
	.word @song3ch3loop
@song3ch4:
@song3ch4loop:
	.byte $ff, $42
	.word @song3ch4loop
@song4ch0:
@song4ch0loop:
	.byte $7f, $4d, $01
@song4ref5:
	.byte $96
@song4ref6:
	.byte $19, $81, $20, $81, $1f, $81, $19, $1c, $81, $1c, $81, $1c, $81, $1c, $1e, $81, $19, $81, $20, $81, $1f, $81, $19, $1c
	.byte $81, $1c, $81, $1c, $81, $1c, $1e, $81, $17, $81, $20, $81, $1e, $81, $17, $1b, $81, $1b, $81, $1b, $81, $1c, $1e, $81
	.byte $17, $81, $20, $81, $1e, $81, $17, $1b, $81, $1e, $81, $20, $81, $23, $25, $81, $4d, $01
	.byte $41, $3c
	.word @song4ref6
	.byte $43, $4f, $7f, $2c, $09, $83, $00, $ff, $ff, $81, $76, $4d, $ff
@song4ref88:
	.byte $94
@song4ref89:
	.byte $2c, $81, $33, $81, $32, $81, $2c, $2f, $81, $2f, $81, $2f, $81, $2f, $31, $81, $2c, $81, $33, $81, $32, $81, $2c, $2f
	.byte $81, $2f, $81, $2f, $81, $2f, $31, $81, $2a, $81, $33, $81, $31, $81, $2a, $2e, $81, $2e, $81, $2e, $81, $2f, $31, $81
	.byte $2a, $81, $33, $81, $31, $81, $2a, $2e, $81, $31, $81, $33, $81, $36, $38, $81, $4d, $ff
	.byte $41, $3f
	.word @song4ref89
	.byte $7f, $4d, $01
@song4ref161:
	.byte $25, $81, $2c, $81, $2b, $81, $25, $28, $81, $28, $81, $28, $81, $28, $2a, $81, $25, $81, $2c, $81, $2b, $81, $25, $28
	.byte $81, $28, $81, $28, $81, $28, $2a, $81, $23, $81, $2c, $81, $2a, $81, $23, $27, $81, $27, $81, $27, $81, $28, $2a, $81
	.byte $23, $81, $2c, $81, $2a, $81, $23, $27, $81, $2a, $81, $2c, $4f, $7f, $38, $18, $43, $0c, $83, $42
	.word @song4ch0loop
@song4ch1:
@song4ch1loop:
	.byte $7f, $4d, $ff
	.byte $41, $40
	.word @song4ref5
	.byte $4d, $ff
	.byte $41, $3c
	.word @song4ref6
	.byte $4f, $7f, $2c, $02, $83, $00, $ff, $ff, $4d, $00
	.byte $41, $40
	.word @song4ref88
	.byte $4d, $00
	.byte $41, $40
	.word @song4ref89
	.byte $4d, $ff
	.byte $41, $3f
	.word @song4ref161
	.byte $42
	.word @song4ch1loop
@song4ch2:
@song4ch2loop:
	.byte $4b, $98
@song4ref272:
	.byte $0d, $00, $0d, $00, $47, $02, $9a, $25, $00, $98, $0b, $0b, $80, $0d, $47, $02, $98, $0d, $80, $0d, $00, $47, $02, $9a
	.byte $25, $00, $47, $02, $98, $0d, $00, $0d, $00, $0d, $00, $47, $02, $9a, $25, $00, $98, $0b, $47, $02, $0b, $80, $0d, $47
	.byte $02, $98, $0d, $10, $81, $4a, .lobyte(@env11), .hibyte(@env11), $9a, $12, $81, $4a, .lobyte(@env19), .hibyte(@env19)
	.byte $4b, $98, $14, $81, $0b, $00, $0b, $00, $47, $02, $9a, $25, $00, $98, $0a, $0a, $80, $0b, $47, $02, $98, $0b, $0b, $00
	.byte $47, $02, $9a, $25, $00, $47, $02, $98, $19, $00, $0b, $00, $0b, $00, $47, $02, $9a, $25, $00, $98, $0a, $0a, $80, $0b
	.byte $98, $0b, $0f, $81, $4a, .lobyte(@env11), .hibyte(@env11), $9a, $12, $81, $4a, .lobyte(@env19), .hibyte(@env19), $4b
	.byte $98, $14, $81
	.byte $41, $40
	.word @song4ref272
	.byte $41, $40
	.word @song4ref272
	.byte $41, $40
	.word @song4ref272
	.byte $41, $40
	.word @song4ref272
	.byte $41, $40
	.word @song4ref272
@song4ref414:
	.byte $47, $02, $0d, $00, $47, $02, $0d, $00, $47, $02, $9a, $25, $00, $47, $02, $98, $0d, $47, $02, $0d, $00, $47, $02, $0d
	.byte $47, $02, $0d, $00, $47, $02, $9a, $25, $00, $47, $02, $98, $0d, $00, $47, $02, $0d, $00, $47, $02, $0d, $00, $47, $02
	.byte $9a, $25, $00, $47, $02, $98, $0d, $47, $02, $0d, $00, $47, $02, $0d, $47, $02, $0d, $00, $47, $02, $9a, $25, $00, $47
	.byte $02, $98, $0d, $00
	.byte $41, $1e
	.word @song4ref414
	.byte $83, $42
	.word @song4ch2loop
@song4ch3:
@song4ch3loop:
	.byte $7f
@song4ref499:
	.byte $8c, $18, $8e, $21, $8c, $18, $8e, $21, $92, $18, $81, $8c, $18, $18, $8e, $21, $8c, $18, $18, $8e, $21, $92, $18, $81
	.byte $8c, $18, $8e, $21, $8c, $18, $8e, $21, $8c, $18, $8e, $21, $92, $18, $81, $8c, $18, $18, $8e, $21, $8c, $18, $18, $8e
	.byte $21, $92, $18, $81, $8c, $18, $8e, $21
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $1d
	.word @song4ref499
	.byte $85
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $20
	.word @song4ref499
	.byte $41, $1d
	.word @song4ref499
	.byte $85, $42
	.word @song4ch3loop
@song4ch4:
	.byte $45, $09
@song4ch4loop:
@song4ref602:
	.byte $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81
	.byte $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81
	.byte $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81
	.byte $45, $0a, $81, $45, $08, $81, $45, $0a, $81, $45, $08, $81
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $41, $1c
	.word @song4ref602
	.byte $42
	.word @song4ch4loop
@song5ch0:
@song5ch0loop:
	.byte $ff, $ff, $ff, $ff, $42
	.word @song5ch0loop
@song5ch1:
@song5ch1loop:
	.byte $ff, $ff, $87, $8a, $27, $81, $44, $81, $27, $81, $2c, $81, $44, $81, $2a, $81, $44, $81, $27, $25, $23, $85, $20, $81
	.byte $23, $81, $44, $81, $25, $44, $27, $44, $25, $44, $23, $44, $20, $81, $44, $81, $23, $44, $27, $44, $25, $85, $2a, $44
	.byte $2a, $44, $2a, $89, $44, $85, $87, $88, $2c, $83, $4f, $40, $38, $2c, $43, $20, $81, $2c, $89, $2a, $dd, $42
	.word @song5ch1loop
@song5ch2:
@song5ch2loop:
	.byte $84
@song5ref84:
	.byte $08, $00, $08, $81, $0f, $81, $08, $81, $0f, $81, $14, $85, $17, $00, $17, $81, $0b, $81, $17, $81, $00, $81, $17, $00
	.byte $17, $89, $12, $81, $06, $81, $00, $81, $17, $81, $00, $81, $0b, $81, $06, $81, $00, $81, $19, $81, $0d, $81, $08, $81
	.byte $10, $85, $00, $81, $12, $81, $00, $81, $7f
@song5ref141:
	.byte $08, $83, $0b, $83, $0f, $81, $09, $83, $0d, $83, $10, $81
	.byte $41, $0c
	.word @song5ref141
	.byte $41, $0c
	.word @song5ref141
@song5ref159:
	.byte $0f, $81, $10, $81, $0f, $81, $0d, $81
	.byte $41, $08
	.word @song5ref159
	.byte $41, $38
	.word @song5ref84
	.byte $41, $38
	.word @song5ref84
	.byte $42
	.word @song5ch2loop
@song5ch3:
@song5ch3loop:
	.byte $7f
@song5ref181:
	.byte $8e, $21, $23, $90, $20, $81, $8e, $21, $23, $90, $20, $81
	.byte $41, $08
	.word @song5ref181
	.byte $41, $08
	.word @song5ref181
	.byte $41, $08
	.word @song5ref181
	.byte $41, $08
	.word @song5ref181
	.byte $41, $08
	.word @song5ref181
	.byte $41, $08
	.word @song5ref181
	.byte $41, $08
	.word @song5ref181
@song5ref214:
	.byte $8c, $20, $8e, $23, $90, $20, $81, $92, $20, $8e, $23, $90, $20, $81
	.byte $41, $08
	.word @song5ref214
	.byte $41, $08
	.word @song5ref214
	.byte $41, $08
	.word @song5ref214
	.byte $41, $08
	.word @song5ref214
	.byte $41, $08
	.word @song5ref214
	.byte $00, $9d
@song5ref245:
	.byte $8c, $17, $98, $23, $8c, $23, $81, $9a, $17, $85, $8c, $17, $98, $23, $8c, $23, $81, $9a, $17, $85
	.byte $41, $0c
	.word @song5ref245
	.byte $41, $0c
	.word @song5ref245
	.byte $41, $0c
	.word @song5ref245
	.byte $41, $0c
	.word @song5ref245
	.byte $41, $0c
	.word @song5ref245
	.byte $41, $0c
	.word @song5ref245
	.byte $41, $0c
	.word @song5ref245
	.byte $42
	.word @song5ch3loop
@song5ch4:
	.byte $45, $05
@song5ch4loop:
	.byte $45, $05, $ff, $45, $05, $ff, $45, $05, $ff, $45, $05, $ff, $42
	.word @song5ch4loop
@song6ch0:
@song6ch0loop:
	.byte $4d, $ff, $91, $77, $4e, $03
@song6ref8:
	.byte $88
@song6ref9:
	.byte $0d, $81, $00, $85, $0d, $81, $00, $81, $0d, $81, $00, $85, $0d, $81, $00, $81, $0d, $81, $44, $89, $0d, $81, $44, $89
	.byte $0b, $81, $44, $89, $0b, $81, $44, $81, $0d, $81, $00, $85, $0d, $81, $00, $81, $0d, $81, $00, $85, $0d, $81, $00, $81
	.byte $10, $91, $44, $81, $12, $8b, $4d, $ff, $91, $4e, $03
	.byte $41, $37
	.word @song6ref9
	.byte $4e, $03
	.byte $41, $37
	.word @song6ref9
	.byte $4e, $03
	.byte $41, $37
	.word @song6ref9
	.byte $4e, $03
	.byte $41, $37
	.word @song6ref9
	.byte $4e, $03
	.byte $41, $36
	.word @song6ref9
	.byte $42
	.word @song6ch0loop
@song6ch1:
@song6ch1loop:
	.byte $41, $31
	.word @song6ref8
	.byte $89, $44, $89, $12, $97, $44, $83
	.byte $41, $31
	.word @song6ref9
	.byte $89, $44, $89, $12, $97, $44, $83
	.byte $41, $31
	.word @song6ref9
	.byte $89, $44, $89, $12, $97, $44, $83
	.byte $41, $31
	.word @song6ref9
	.byte $89, $44, $89, $12, $97, $44, $83
	.byte $41, $31
	.word @song6ref9
	.byte $89, $44, $89, $12, $97, $44, $83
	.byte $41, $31
	.word @song6ref9
	.byte $89, $44, $89, $12, $97, $44, $83, $42
	.word @song6ch1loop
@song6ch2:
@song6ch2loop:
	.byte $98
@song6ref160:
	.byte $0d, $81, $00, $85, $82, $0d, $81, $00, $81, $0d, $81, $98, $0d, $00, $83, $82, $0d, $81, $00, $81, $0d, $85, $98, $0d
	.byte $83, $00, $82, $0d, $8d, $98, $0b, $8b, $00, $82, $0b, $85, $98, $0d, $81, $00, $85, $82, $0d, $81, $00, $81, $0d, $81
	.byte $98, $0d, $00, $83, $82, $0d, $81, $00, $81, $10, $85, $98, $10, $8d, $82, $12, $85, $98, $12, $95
	.byte $41, $36
	.word @song6ref160
	.byte $41, $36
	.word @song6ref160
	.byte $41, $36
	.word @song6ref160
	.byte $41, $36
	.word @song6ref160
	.byte $41, $36
	.word @song6ref160
	.byte $42
	.word @song6ch2loop
@song6ch3:
@song6ch3loop:
	.byte $8c
@song6ref248:
	.byte $18, $95, $18, $95, $18, $95, $18, $95, $18, $95, $18, $95, $18, $95, $18, $95, $18, $95
	.byte $41, $12
	.word @song6ref248
	.byte $41, $12
	.word @song6ref248
	.byte $18, $95, $18, $95, $18, $95, $18, $95, $18, $95
@song6ref282:
	.byte $18, $89, $8e, $21, $83, $23, $83, $8c, $18, $89, $8e, $21, $83, $23, $83, $8c, $18, $89, $8e, $21, $89, $8c, $18, $83
	.byte $8e, $21, $83, $22, $89, $8c
	.byte $41, $16
	.word @song6ref282
	.byte $8c
	.byte $41, $16
	.word @song6ref282
	.byte $8c
	.byte $41, $16
	.word @song6ref282
	.byte $42
	.word @song6ch3loop
@song6ch4:
	.byte $45, $01
@song6ch4loop:
@song6ref329:
	.byte $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81
	.byte $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81
	.byte $45, $02, $95, $45, $03, $81
	.byte $41, $12
	.word @song6ref329
	.byte $41, $12
	.word @song6ref329
	.byte $41, $12
	.word @song6ref329
	.byte $41, $12
	.word @song6ref329
	.byte $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81, $45, $02, $95, $45, $03, $81, $42
	.word @song6ch4loop
