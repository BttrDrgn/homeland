/*
Code sections:
	.init:	0x00000100	0x80003100	0x80005600
	.text:	0x00002600	0x800056A0	0x800E2460
Data sections:
	extab:		0x000DF3C0	0x80005600	0x80005640
	extabindex:	0x000DF400	0x80005640	0x800056A0
	.ctors:		0x000DF460	0x800E2460	0x800E2760
	.dtors:		0x000DF760	0x800E2760	0x800E2780
	.rodata:	0x000DF780	0x800E2780	0x800F6880
	.data:		0x000F3880	0x800F6880	0x8017C600
	.sdata:		0x00179600	0x804D5320	0x804D6D00
	.sbss: 					0x804D6D00  0x804D9020
	.sdata2:	0x0017AFE0	0x804D9020	0x804DA760
	.sbss2: 				0x804DA760  0x804DA780
BSS section:
	.bss:		0x00000000	0x8017C600	0x804D5320
Entry Point: 0x80003154
*/

/* Start */
# id: 1
# version: 3
# nameoffset: 0x0, size: 0x3A
# section table: 0x4C, size: 0x80
# imp table: 0x16F50
# relocs offset: 0x16F60
# _prolog:     1:0x0
# _epilog:     1:0x50
# _unresolved: 1:0x9C
# num sections: 16
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x000000CC	length: 0x00010C54	flags: 1
# offset: 0x00010D20	length: 0x00000060	flags: 0
# offset: 0x00010D80	length: 0x00000008	flags: 0
# offset: 0x00010D88	length: 0x00003E08	flags: 0
# offset: 0x00014B90	length: 0x000023C0	flags: 0
# offset: 0x10000000	length: 0x0000A458	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0

/* Alone */
# id: 2
# version: 3
# nameoffset: 0x3A, size: 0x3A
# section table: 0x4C, size: 0x80
# imp table: 0x1DDEEC
# relocs offset: 0x1DDEFC
# _prolog:     1:0x0
# _epilog:     1:0x50
# _unresolved: 1:0x9C
# num sections: 16
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x000000CC	length: 0x0014BCF0	flags: 1
# offset: 0x0014BDBC	length: 0x00000A9C	flags: 0
# offset: 0x0014C858	length: 0x00000008	flags: 0
# offset: 0x0014C860	length: 0x00061ECC	flags: 0
# offset: 0x001AE730	length: 0x0002F7BC	flags: 0
# offset: 0x10000000	length: 0x000AC38C	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0

/* Client */
# id: 3
# version: 3
# nameoffset: 0x74, size: 0x3C
# section table: 0x4C, size: 0x90
# imp table: 0x11D710
# relocs offset: 0x11D720
# _prolog:     1:0x0
# _epilog:     1:0x50
# _unresolved: 1:0x9C
# num sections: 18
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x000000DC	length: 0x000AC32C	flags: 1
# offset: 0x000AC408	length: 0x000005A4	flags: 0
# offset: 0x000AC9AC	length: 0x00000008	flags: 0
# offset: 0x000AC9B8	length: 0x0004FFF0	flags: 0
# offset: 0x000FC9A8	length: 0x00020D68	flags: 0
# offset: 0x10000000	length: 0x0005F924	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0

/* Server */
# id: 4
# version: 3
# nameoffset: 0xB0, size: 0x3C
# section table: 0x4C, size: 0x90
# imp table: 0x152EF4
# relocs offset: 0x152F04
# _prolog:     1:0x0
# _epilog:     1:0x50
# _unresolved: 1:0x9C
# num sections: 18
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x000000DC	length: 0x000F9DA4	flags: 1
# offset: 0x000F9E80	length: 0x00000710	flags: 0
# offset: 0x000FA590	length: 0x00000008	flags: 0
# offset: 0x000FA598	length: 0x0003D428	flags: 0
# offset: 0x001379C0	length: 0x0001B534	flags: 0
# offset: 0x10000000	length: 0x000BD942	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0
# offset: 0x00000000	length: 0x00000000	flags: 0

.set r0, 0
.set r1, 1
.set r2, 2
.set r3, 3
.set r4, 4
.set r5, 5
.set r6, 6
.set r7, 7
.set r8, 8
.set r9, 9
.set r10, 10
.set r11, 11
.set r12, 12
.set r13, 13
.set r14, 14
.set r15, 15
.set r16, 16
.set r17, 17
.set r18, 18
.set r19, 19
.set r20, 20
.set r21, 21
.set r22, 22
.set r23, 23
.set r24, 24
.set r25, 25
.set r26, 26
.set r27, 27
.set r28, 28
.set r29, 29
.set r30, 30
.set r31, 31
.set f0, 0
.set f1, 1
.set f2, 2
.set f3, 3
.set f4, 4
.set f5, 5
.set f6, 6
.set f7, 7
.set f8, 8
.set f9, 9
.set f10, 10
.set f11, 11
.set f12, 12
.set f13, 13
.set f14, 14
.set f15, 15
.set f16, 16
.set f17, 17
.set f18, 18
.set f19, 19
.set f20, 20
.set f21, 21
.set f22, 22
.set f23, 23
.set f24, 24
.set f25, 25
.set f26, 26
.set f27, 27
.set f28, 28
.set f29, 29
.set f30, 30
.set f31, 31
.set qr0, 0
.set qr1, 1
.set qr2, 2
.set qr3, 3
.set qr4, 4
.set qr5, 5
.set qr6, 6
.set qr7, 7
# Small Data Area (read/write) Base
#.set _SDA_BASE_, 0x804DD320
# Small Data Area (read only) Base
#.set _SDA2_BASE_, 0x804E1020

.set NULL, 0
