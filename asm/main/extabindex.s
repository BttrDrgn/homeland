.section extab_, "wa"  # 0x80005600 - 0x80005640
lbl_80005600:
	.4byte 0x20080000
	.4byte 0x00000000
lbl_80005608:
	.4byte 0x20080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__26__partial_array_destructorFv
lbl_80005620:
	.4byte 0x18080000
	.4byte 0x00000000

.section extabindex_, "wa"  # 0x80005640 - 0x800056A0
lbl_80005640:
	.4byte __destroy_arr
	.4byte 0x00000078
	.4byte lbl_80005600
	.4byte __construct_array
	.4byte 0x000000FC
	.4byte lbl_80005608
	.4byte __dt__26__partial_array_destructorFv
	.4byte 0x000000B8
	.4byte lbl_80005620
.global lbl_80005664
lbl_80005664:
	.4byte lbl_80005640
	.4byte lbl_80005664
	.4byte __destroy_arr
	.4byte 0x0000022C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
