.include "macros.inc"
.section .rodata # 0x800E2780 - 0x800F6880
.balign 8
"@stringBase0":
	.4byte 0x2E000043
	.4byte 0x00000000

.section .data, "wa"  # 0x800F6880 - 0x8017C600
.balign 8
.global __lconv
__lconv:
	.4byte "@stringBase0"
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte "@stringBase0"+2
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
	.4byte "@stringBase0"+2
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
