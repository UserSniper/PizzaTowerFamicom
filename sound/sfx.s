; This file is for the FamiStudio Sound Engine and was generated by FamiStudio


.if FAMISTUDIO_CFG_C_BINDINGS
.export _sounds=sounds
.endif

sounds:
	.word @ntsc
	.word @ntsc
@ntsc:
	.word @sfx_ntsc_sfx_1
	.word @sfx_ntsc_sfx_2

@sfx_ntsc_sfx_1:
	.byte $82,$01,$81,$ab,$80,$f5,$89,$f0,$01,$80,$f8,$01,$80,$f0,$02,$81
	.byte $67,$80,$f5,$01,$80,$f8,$01,$81,$ab,$80,$f3,$01,$80,$f4,$01,$81
	.byte $2d,$80,$f5,$01,$80,$f8,$01,$81,$67,$80,$f3,$01,$80,$f4,$01,$82
	.byte $00,$81,$fd,$80,$f5,$01,$80,$f8,$01,$82,$01,$81,$2d,$80,$f3,$01
	.byte $80,$f4,$01,$82,$00,$81,$d5,$80,$f5,$01,$80,$f8,$01,$81,$fd,$80
	.byte $f3,$01,$80,$f4,$01,$81,$b3,$80,$f5,$01,$80,$f8,$01,$81,$d5,$80
	.byte $f3,$01,$80,$f4,$01,$81,$96,$80,$f5,$01,$80,$f8,$01,$81,$b3,$80
	.byte $f3,$01,$80,$f4,$01,$81,$7e,$80,$f5,$01,$80,$f8,$01,$81,$96,$80
	.byte $f3,$01,$80,$f4,$01,$81,$6a,$80,$f5,$01,$80,$f8,$01,$81,$7e,$80
	.byte $f3,$01,$80,$f4,$01,$81,$77,$80,$f5,$01,$80,$f8,$01,$81,$6a,$80
	.byte $f3,$01,$80,$f4,$01,$81,$96,$80,$f5,$01,$80,$f8,$01,$81,$77,$80
	.byte $f3,$01,$80,$f4,$01,$81,$bd,$80,$f5,$01,$80,$f8,$01,$81,$96,$80
	.byte $f3,$01,$80,$f4,$01,$81,$e1,$80,$f5,$01,$80,$f8,$01,$81,$bd,$80
	.byte $f3,$01,$80,$f4,$01,$82,$01,$81,$0c,$80,$f5,$01,$80,$f8,$01,$82
	.byte $00,$81,$e1,$80,$f3,$01,$80,$f4,$01,$82,$01,$81,$3f,$80,$f5,$01
	.byte $80,$f8,$01,$81,$0c,$80,$f3,$01,$80,$f4,$01,$81,$7c,$80,$f5,$01
	.byte $80,$f8,$01,$81,$3f,$80,$f3,$01,$80,$f4,$00
@sfx_ntsc_sfx_2:
	.byte $89,$f0,$00

.export sounds
