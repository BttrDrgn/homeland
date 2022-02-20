.section .dtors, "wa"  # 0x800E2760 - 0x800E2780
.global lbl_800E2760
lbl_800E2760:
	.incbin "baserom.dol", 0xDF760, 0x20
