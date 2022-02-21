.section .ctors, "wa"  # 0x800E2460 - 0x800E2760
.global lbl_800E2460
lbl_800E2460:
	.incbin "baserom.dol", 0xDF460, 0x300
