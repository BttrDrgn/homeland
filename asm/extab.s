.section extab_, "wa"  # 0x80005600 - 0x80005640
	.incbin "baserom.dol", 0xDF3C0, 0x40

.section extabindex_, "wa"  # 0x80005640 - 0x800056A0
	.incbin "baserom.dol", 0xDF400, 0x24
.global lbl_80005664
lbl_80005664:
	.incbin "baserom.dol", 0xDF424, 0x3C
    