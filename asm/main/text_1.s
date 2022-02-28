.include "macros.inc"

.section .text, "ax"  # 0x800056A0 - 0x800E2460

.global func_800D1E60
func_800D1E60:
/* 800D1E60 000CEDC0  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 800D1E64 000CEDC4  7C 80 1A 78 */	xor r0, r4, r3
/* 800D1E68 000CEDC8  7C 64 00 50 */	subf r3, r4, r0
/* 800D1E6C 000CEDCC  4E 80 00 20 */	blr 

.global func_800D1E70
func_800D1E70:
/* 800D1E70 000CEDD0  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 800D1E74 000CEDD4  7C 80 1A 78 */	xor r0, r4, r3
/* 800D1E78 000CEDD8  7C 64 00 50 */	subf r3, r4, r0
/* 800D1E7C 000CEDDC  4E 80 00 20 */	blr 

# start of buffer_io.c
.global __flush_buffer
__flush_buffer:
/* 800D1E80 000CEDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D1E84 000CEDE4  7C 08 02 A6 */	mflr r0
/* 800D1E88 000CEDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D1E8C 000CEDEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D1E90 000CEDF0  7C 7F 1B 78 */	mr r31, r3
/* 800D1E94 000CEDF4  93 C1 00 08 */	stw r30, 8(r1)
/* 800D1E98 000CEDF8  7C 9E 23 78 */	mr r30, r4
/* 800D1E9C 000CEDFC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 800D1EA0 000CEE00  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 800D1EA4 000CEE04  7C 03 00 51 */	subf. r0, r3, r0
/* 800D1EA8 000CEE08  41 82 00 50 */	beq lbl_800D1EF8
/* 800D1EAC 000CEE0C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 800D1EB0 000CEE10  38 BF 00 28 */	addi r5, r31, 0x28
/* 800D1EB4 000CEE14  81 9F 00 40 */	lwz r12, 0x40(r31)
/* 800D1EB8 000CEE18  80 7F 00 00 */	lwz r3, 0(r31)
/* 800D1EBC 000CEE1C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 800D1EC0 000CEE20  80 DF 00 48 */	lwz r6, 0x48(r31)
/* 800D1EC4 000CEE24  7D 89 03 A6 */	mtctr r12
/* 800D1EC8 000CEE28  4E 80 04 21 */	bctrl 
/* 800D1ECC 000CEE2C  28 1E 00 00 */	cmplwi r30, 0
/* 800D1ED0 000CEE30  41 82 00 0C */	beq lbl_800D1EDC
/* 800D1ED4 000CEE34  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 800D1ED8 000CEE38  90 1E 00 00 */	stw r0, 0(r30)
lbl_800D1EDC:
/* 800D1EDC 000CEE3C  2C 03 00 00 */	cmpwi r3, 0
/* 800D1EE0 000CEE40  41 82 00 08 */	beq lbl_800D1EE8
/* 800D1EE4 000CEE44  48 00 00 48 */	b lbl_800D1F2C
lbl_800D1EE8:
/* 800D1EE8 000CEE48  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 800D1EEC 000CEE4C  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 800D1EF0 000CEE50  7C 03 02 14 */	add r0, r3, r0
/* 800D1EF4 000CEE54  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_800D1EF8:
/* 800D1EF8 000CEE58  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 800D1EFC 000CEE5C  38 60 00 00 */	li r3, 0
/* 800D1F00 000CEE60  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800D1F04 000CEE64  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 800D1F08 000CEE68  90 1F 00 28 */	stw r0, 0x28(r31)
/* 800D1F0C 000CEE6C  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 800D1F10 000CEE70  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 800D1F14 000CEE74  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 800D1F18 000CEE78  7C A4 20 38 */	and r4, r5, r4
/* 800D1F1C 000CEE7C  7C 04 00 50 */	subf r0, r4, r0
/* 800D1F20 000CEE80  90 1F 00 28 */	stw r0, 0x28(r31)
/* 800D1F24 000CEE84  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800D1F28 000CEE88  90 1F 00 34 */	stw r0, 0x34(r31)
lbl_800D1F2C:
/* 800D1F2C 000CEE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D1F30 000CEE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D1F34 000CEE94  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D1F38 000CEE98  7C 08 03 A6 */	mtlr r0
/* 800D1F3C 000CEE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800D1F40 000CEEA0  4E 80 00 20 */	blr 

.global func_800D1F44
func_800D1F44:
/* 800D1F44 000CEEA4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 800D1F48 000CEEA8  90 03 00 24 */	stw r0, 0x24(r3)
/* 800D1F4C 000CEEAC  80 03 00 20 */	lwz r0, 0x20(r3)
/* 800D1F50 000CEEB0  90 03 00 28 */	stw r0, 0x28(r3)
/* 800D1F54 000CEEB4  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 800D1F58 000CEEB8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 800D1F5C 000CEEBC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 800D1F60 000CEEC0  7C A4 20 38 */	and r4, r5, r4
/* 800D1F64 000CEEC4  7C 04 00 50 */	subf r0, r4, r0
/* 800D1F68 000CEEC8  90 03 00 28 */	stw r0, 0x28(r3)
/* 800D1F6C 000CEECC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800D1F70 000CEED0  90 03 00 34 */	stw r0, 0x34(r3)
/* 800D1F74 000CEED4  4E 80 00 20 */	blr 

.global __end_critical_region
__end_critical_region:
/* 800D1F78 000CEED8  4E 80 00 20 */	blr 

.global __begin_critical_region
__begin_critical_region:
/* 800D1F7C 000CEEDC  4E 80 00 20 */	blr 

.global __kill_critical_regions
__kill_critical_regions:
/* 800D1F80 000CEEE0  4E 80 00 20 */	blr 

.global func_800D1F84
func_800D1F84:
/* 800D1F84 000CEEE4  2C 03 FF FF */	cmpwi r3, -1
/* 800D1F88 000CEEE8  40 82 00 0C */	bne lbl_800D1F94
/* 800D1F8C 000CEEEC  38 60 FF FF */	li r3, -1
/* 800D1F90 000CEEF0  4E 80 00 20 */	blr 
lbl_800D1F94:
/* 800D1F94 000CEEF4  3C 80 80 18 */	lis r4, __upper_map@ha
/* 800D1F98 000CEEF8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800D1F9C 000CEEFC  38 64 BF E8 */	addi r3, r4, __upper_map@l
/* 800D1FA0 000CEF00  7C 63 00 AE */	lbzx r3, r3, r0
/* 800D1FA4 000CEF04  4E 80 00 20 */	blr 

.global func_800D1FA8
func_800D1FA8:
/* 800D1FA8 000CEF08  2C 03 FF FF */	cmpwi r3, -1
/* 800D1FAC 000CEF0C  40 82 00 0C */	bne lbl_800D1FB8
/* 800D1FB0 000CEF10  38 60 FF FF */	li r3, -1
/* 800D1FB4 000CEF14  4E 80 00 20 */	blr 
lbl_800D1FB8:
/* 800D1FB8 000CEF18  3C 80 80 18 */	lis r4, __lower_map@ha
/* 800D1FBC 000CEF1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800D1FC0 000CEF20  38 64 BE E8 */	addi r3, r4, __lower_map@l
/* 800D1FC4 000CEF24  7C 63 00 AE */	lbzx r3, r3, r0
/* 800D1FC8 000CEF28  4E 80 00 20 */	blr 

.global func_800D1FCC
func_800D1FCC:
/* 800D1FCC 000CEF2C  3C 80 80 18 */	lis r4, __ctype_map@ha
/* 800D1FD0 000CEF30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800D1FD4 000CEF34  38 64 BD E8 */	addi r3, r4, __ctype_map@l
/* 800D1FD8 000CEF38  7C 03 00 AE */	lbzx r0, r3, r0
/* 800D1FDC 000CEF3C  54 03 06 72 */	rlwinm r3, r0, 0, 0x19, 0x19
/* 800D1FE0 000CEF40  4E 80 00 20 */	blr 

.global func_800D1FE4
func_800D1FE4:
/* 800D1FE4 000CEF44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D1FE8 000CEF48  7C 08 02 A6 */	mflr r0
/* 800D1FEC 000CEF4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D1FF0 000CEF50  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 800D1FF4 000CEF54  7C 99 23 78 */	mr r25, r4
/* 800D1FF8 000CEF58  7C DA 33 78 */	mr r26, r6
/* 800D1FFC 000CEF5C  7C 7B 1B 78 */	mr r27, r3
/* 800D2000 000CEF60  7C BC 2B 78 */	mr r28, r5
/* 800D2004 000CEF64  38 80 00 00 */	li r4, 0
/* 800D2008 000CEF68  7F 43 D3 78 */	mr r3, r26
/* 800D200C 000CEF6C  48 00 61 95 */	bl fwide
/* 800D2010 000CEF70  2C 03 00 00 */	cmpwi r3, 0
/* 800D2014 000CEF74  40 82 00 10 */	bne lbl_800D2024
/* 800D2018 000CEF78  7F 43 D3 78 */	mr r3, r26
/* 800D201C 000CEF7C  38 80 FF FF */	li r4, -1
/* 800D2020 000CEF80  48 00 61 81 */	bl fwide
lbl_800D2024:
/* 800D2024 000CEF84  7F B9 E1 D7 */	mullw. r29, r25, r28
/* 800D2028 000CEF88  41 82 00 1C */	beq lbl_800D2044
/* 800D202C 000CEF8C  88 1A 00 0A */	lbz r0, 0xa(r26)
/* 800D2030 000CEF90  28 00 00 00 */	cmplwi r0, 0
/* 800D2034 000CEF94  40 82 00 10 */	bne lbl_800D2044
/* 800D2038 000CEF98  A0 1A 00 04 */	lhz r0, 4(r26)
/* 800D203C 000CEF9C  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 800D2040 000CEFA0  40 82 00 0C */	bne lbl_800D204C
lbl_800D2044:
/* 800D2044 000CEFA4  38 60 00 00 */	li r3, 0
/* 800D2048 000CEFA8  48 00 02 94 */	b lbl_800D22DC
lbl_800D204C:
/* 800D204C 000CEFAC  28 00 00 02 */	cmplwi r0, 2
/* 800D2050 000CEFB0  40 82 00 08 */	bne lbl_800D2058
/* 800D2054 000CEFB4  48 00 10 C1 */	bl __stdio_atexit
lbl_800D2058:
/* 800D2058 000CEFB8  88 1A 00 05 */	lbz r0, 5(r26)
/* 800D205C 000CEFBC  3B E0 00 01 */	li r31, 1
/* 800D2060 000CEFC0  38 60 00 00 */	li r3, 0
/* 800D2064 000CEFC4  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 800D2068 000CEFC8  41 82 00 14 */	beq lbl_800D207C
/* 800D206C 000CEFCC  88 1A 00 04 */	lbz r0, 4(r26)
/* 800D2070 000CEFD0  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 800D2074 000CEFD4  28 00 00 02 */	cmplwi r0, 2
/* 800D2078 000CEFD8  40 82 00 08 */	bne lbl_800D2080
lbl_800D207C:
/* 800D207C 000CEFDC  38 60 00 01 */	li r3, 1
lbl_800D2080:
/* 800D2080 000CEFE0  2C 03 00 00 */	cmpwi r3, 0
/* 800D2084 000CEFE4  40 82 00 18 */	bne lbl_800D209C
/* 800D2088 000CEFE8  88 1A 00 04 */	lbz r0, 4(r26)
/* 800D208C 000CEFEC  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 800D2090 000CEFF0  28 00 00 01 */	cmplwi r0, 1
/* 800D2094 000CEFF4  41 82 00 08 */	beq lbl_800D209C
/* 800D2098 000CEFF8  3B E0 00 00 */	li r31, 0
lbl_800D209C:
/* 800D209C 000CEFFC  88 1A 00 08 */	lbz r0, 8(r26)
/* 800D20A0 000CF000  54 00 DF 7F */	rlwinm. r0, r0, 0x1b, 0x1d, 0x1f
/* 800D20A4 000CF004  40 82 00 54 */	bne lbl_800D20F8
/* 800D20A8 000CF008  88 7A 00 04 */	lbz r3, 4(r26)
/* 800D20AC 000CF00C  54 60 EF BD */	rlwinm. r0, r3, 0x1d, 0x1e, 0x1e
/* 800D20B0 000CF010  54 63 EF 7E */	rlwinm r3, r3, 0x1d, 0x1d, 0x1f
/* 800D20B4 000CF014  41 82 00 44 */	beq lbl_800D20F8
/* 800D20B8 000CF018  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800D20BC 000CF01C  41 82 00 24 */	beq lbl_800D20E0
/* 800D20C0 000CF020  7F 43 D3 78 */	mr r3, r26
/* 800D20C4 000CF024  38 80 00 00 */	li r4, 0
/* 800D20C8 000CF028  38 A0 00 02 */	li r5, 2
/* 800D20CC 000CF02C  48 00 05 95 */	bl fseek
/* 800D20D0 000CF030  2C 03 00 00 */	cmpwi r3, 0
/* 800D20D4 000CF034  41 82 00 0C */	beq lbl_800D20E0
/* 800D20D8 000CF038  38 60 00 00 */	li r3, 0
/* 800D20DC 000CF03C  48 00 02 00 */	b lbl_800D22DC
lbl_800D20E0:
/* 800D20E0 000CF040  88 1A 00 08 */	lbz r0, 8(r26)
/* 800D20E4 000CF044  38 60 00 01 */	li r3, 1
/* 800D20E8 000CF048  50 60 2E 34 */	rlwimi r0, r3, 5, 0x18, 0x1a
/* 800D20EC 000CF04C  7F 43 D3 78 */	mr r3, r26
/* 800D20F0 000CF050  98 1A 00 08 */	stb r0, 8(r26)
/* 800D20F4 000CF054  4B FF FE 51 */	bl func_800D1F44
lbl_800D20F8:
/* 800D20F8 000CF058  88 1A 00 08 */	lbz r0, 8(r26)
/* 800D20FC 000CF05C  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 800D2100 000CF060  28 00 00 01 */	cmplwi r0, 1
/* 800D2104 000CF064  41 82 00 1C */	beq lbl_800D2120
/* 800D2108 000CF068  38 60 00 01 */	li r3, 1
/* 800D210C 000CF06C  38 00 00 00 */	li r0, 0
/* 800D2110 000CF070  98 7A 00 0A */	stb r3, 0xa(r26)
/* 800D2114 000CF074  38 60 00 00 */	li r3, 0
/* 800D2118 000CF078  90 1A 00 28 */	stw r0, 0x28(r26)
/* 800D211C 000CF07C  48 00 01 C0 */	b lbl_800D22DC
lbl_800D2120:
/* 800D2120 000CF080  28 1D 00 00 */	cmplwi r29, 0
/* 800D2124 000CF084  7F 7E DB 78 */	mr r30, r27
/* 800D2128 000CF088  3B 80 00 00 */	li r28, 0
/* 800D212C 000CF08C  41 82 01 20 */	beq lbl_800D224C
/* 800D2130 000CF090  80 9A 00 24 */	lwz r4, 0x24(r26)
/* 800D2134 000CF094  80 7A 00 1C */	lwz r3, 0x1c(r26)
/* 800D2138 000CF098  7C 04 18 40 */	cmplw r4, r3
/* 800D213C 000CF09C  40 82 00 0C */	bne lbl_800D2148
/* 800D2140 000CF0A0  2C 1F 00 00 */	cmpwi r31, 0
/* 800D2144 000CF0A4  41 82 01 08 */	beq lbl_800D224C
lbl_800D2148:
/* 800D2148 000CF0A8  80 1A 00 20 */	lwz r0, 0x20(r26)
/* 800D214C 000CF0AC  7C 63 20 50 */	subf r3, r3, r4
/* 800D2150 000CF0B0  7C 03 00 50 */	subf r0, r3, r0
/* 800D2154 000CF0B4  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_800D2158:
/* 800D2158 000CF0B8  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 800D215C 000CF0BC  3B 60 00 00 */	li r27, 0
/* 800D2160 000CF0C0  7C 00 E8 40 */	cmplw r0, r29
/* 800D2164 000CF0C4  90 01 00 08 */	stw r0, 8(r1)
/* 800D2168 000CF0C8  40 81 00 08 */	ble lbl_800D2170
/* 800D216C 000CF0CC  93 A1 00 08 */	stw r29, 8(r1)
lbl_800D2170:
/* 800D2170 000CF0D0  88 1A 00 04 */	lbz r0, 4(r26)
/* 800D2174 000CF0D4  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 800D2178 000CF0D8  28 00 00 01 */	cmplwi r0, 1
/* 800D217C 000CF0DC  40 82 00 30 */	bne lbl_800D21AC
/* 800D2180 000CF0E0  80 A1 00 08 */	lwz r5, 8(r1)
/* 800D2184 000CF0E4  28 05 00 00 */	cmplwi r5, 0
/* 800D2188 000CF0E8  41 82 00 24 */	beq lbl_800D21AC
/* 800D218C 000CF0EC  7F C3 F3 78 */	mr r3, r30
/* 800D2190 000CF0F0  38 80 00 0A */	li r4, 0xa
/* 800D2194 000CF0F4  48 00 0B 8D */	bl __memrchr
/* 800D2198 000CF0F8  7C 7B 1B 79 */	or. r27, r3, r3
/* 800D219C 000CF0FC  41 82 00 10 */	beq lbl_800D21AC
/* 800D21A0 000CF100  38 1B 00 01 */	addi r0, r27, 1
/* 800D21A4 000CF104  7C 1E 00 50 */	subf r0, r30, r0
/* 800D21A8 000CF108  90 01 00 08 */	stw r0, 8(r1)
lbl_800D21AC:
/* 800D21AC 000CF10C  80 A1 00 08 */	lwz r5, 8(r1)
/* 800D21B0 000CF110  28 05 00 00 */	cmplwi r5, 0
/* 800D21B4 000CF114  41 82 00 3C */	beq lbl_800D21F0
/* 800D21B8 000CF118  80 7A 00 24 */	lwz r3, 0x24(r26)
/* 800D21BC 000CF11C  7F C4 F3 78 */	mr r4, r30
/* 800D21C0 000CF120  4B F3 13 81 */	bl memcpy
/* 800D21C4 000CF124  80 61 00 08 */	lwz r3, 8(r1)
/* 800D21C8 000CF128  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 800D21CC 000CF12C  7F DE 1A 14 */	add r30, r30, r3
/* 800D21D0 000CF130  7F 9C 1A 14 */	add r28, r28, r3
/* 800D21D4 000CF134  7C 00 1A 14 */	add r0, r0, r3
/* 800D21D8 000CF138  7F A3 E8 50 */	subf r29, r3, r29
/* 800D21DC 000CF13C  90 1A 00 24 */	stw r0, 0x24(r26)
/* 800D21E0 000CF140  80 61 00 08 */	lwz r3, 8(r1)
/* 800D21E4 000CF144  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 800D21E8 000CF148  7C 03 00 50 */	subf r0, r3, r0
/* 800D21EC 000CF14C  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_800D21F0:
/* 800D21F0 000CF150  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 800D21F4 000CF154  28 00 00 00 */	cmplwi r0, 0
/* 800D21F8 000CF158  41 82 00 18 */	beq lbl_800D2210
/* 800D21FC 000CF15C  28 1B 00 00 */	cmplwi r27, 0
/* 800D2200 000CF160  40 82 00 10 */	bne lbl_800D2210
/* 800D2204 000CF164  88 1A 00 04 */	lbz r0, 4(r26)
/* 800D2208 000CF168  54 00 FF BF */	rlwinm. r0, r0, 0x1f, 0x1e, 0x1f
/* 800D220C 000CF16C  40 82 00 30 */	bne lbl_800D223C
lbl_800D2210:
/* 800D2210 000CF170  7F 43 D3 78 */	mr r3, r26
/* 800D2214 000CF174  38 80 00 00 */	li r4, 0
/* 800D2218 000CF178  4B FF FC 69 */	bl __flush_buffer
/* 800D221C 000CF17C  2C 03 00 00 */	cmpwi r3, 0
/* 800D2220 000CF180  41 82 00 1C */	beq lbl_800D223C
/* 800D2224 000CF184  38 60 00 01 */	li r3, 1
/* 800D2228 000CF188  38 00 00 00 */	li r0, 0
/* 800D222C 000CF18C  98 7A 00 0A */	stb r3, 0xa(r26)
/* 800D2230 000CF190  3B A0 00 00 */	li r29, 0
/* 800D2234 000CF194  90 1A 00 28 */	stw r0, 0x28(r26)
/* 800D2238 000CF198  48 00 00 14 */	b lbl_800D224C
lbl_800D223C:
/* 800D223C 000CF19C  28 1D 00 00 */	cmplwi r29, 0
/* 800D2240 000CF1A0  41 82 00 0C */	beq lbl_800D224C
/* 800D2244 000CF1A4  2C 1F 00 00 */	cmpwi r31, 0
/* 800D2248 000CF1A8  40 82 FF 10 */	bne lbl_800D2158
lbl_800D224C:
/* 800D224C 000CF1AC  28 1D 00 00 */	cmplwi r29, 0
/* 800D2250 000CF1B0  41 82 00 68 */	beq lbl_800D22B8
/* 800D2254 000CF1B4  2C 1F 00 00 */	cmpwi r31, 0
/* 800D2258 000CF1B8  40 82 00 60 */	bne lbl_800D22B8
/* 800D225C 000CF1BC  83 7A 00 1C */	lwz r27, 0x1c(r26)
/* 800D2260 000CF1C0  7C 1E EA 14 */	add r0, r30, r29
/* 800D2264 000CF1C4  83 FA 00 20 */	lwz r31, 0x20(r26)
/* 800D2268 000CF1C8  7F 43 D3 78 */	mr r3, r26
/* 800D226C 000CF1CC  38 81 00 08 */	addi r4, r1, 8
/* 800D2270 000CF1D0  93 DA 00 1C */	stw r30, 0x1c(r26)
/* 800D2274 000CF1D4  93 BA 00 20 */	stw r29, 0x20(r26)
/* 800D2278 000CF1D8  90 1A 00 24 */	stw r0, 0x24(r26)
/* 800D227C 000CF1DC  4B FF FC 05 */	bl __flush_buffer
/* 800D2280 000CF1E0  2C 03 00 00 */	cmpwi r3, 0
/* 800D2284 000CF1E4  41 82 00 14 */	beq lbl_800D2298
/* 800D2288 000CF1E8  38 60 00 01 */	li r3, 1
/* 800D228C 000CF1EC  38 00 00 00 */	li r0, 0
/* 800D2290 000CF1F0  98 7A 00 0A */	stb r3, 0xa(r26)
/* 800D2294 000CF1F4  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_800D2298:
/* 800D2298 000CF1F8  80 01 00 08 */	lwz r0, 8(r1)
/* 800D229C 000CF1FC  7F 43 D3 78 */	mr r3, r26
/* 800D22A0 000CF200  93 7A 00 1C */	stw r27, 0x1c(r26)
/* 800D22A4 000CF204  7F 9C 02 14 */	add r28, r28, r0
/* 800D22A8 000CF208  93 FA 00 20 */	stw r31, 0x20(r26)
/* 800D22AC 000CF20C  4B FF FC 99 */	bl func_800D1F44
/* 800D22B0 000CF210  38 00 00 00 */	li r0, 0
/* 800D22B4 000CF214  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_800D22B8:
/* 800D22B8 000CF218  88 1A 00 04 */	lbz r0, 4(r26)
/* 800D22BC 000CF21C  54 00 FF BE */	rlwinm r0, r0, 0x1f, 0x1e, 0x1f
/* 800D22C0 000CF220  28 00 00 02 */	cmplwi r0, 2
/* 800D22C4 000CF224  41 82 00 0C */	beq lbl_800D22D0
/* 800D22C8 000CF228  38 00 00 00 */	li r0, 0
/* 800D22CC 000CF22C  90 1A 00 28 */	stw r0, 0x28(r26)
lbl_800D22D0:
/* 800D22D0 000CF230  38 19 FF FF */	addi r0, r25, -1
/* 800D22D4 000CF234  7C 1C 02 14 */	add r0, r28, r0
/* 800D22D8 000CF238  7C 60 CB 96 */	divwu r3, r0, r25
lbl_800D22DC:
/* 800D22DC 000CF23C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 800D22E0 000CF240  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D22E4 000CF244  7C 08 03 A6 */	mtlr r0
/* 800D22E8 000CF248  38 21 00 30 */	addi r1, r1, 0x30
/* 800D22EC 000CF24C  4E 80 00 20 */	blr 

.global fwrite
fwrite:
/* 800D22F0 000CF250  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D22F4 000CF254  7C 08 02 A6 */	mflr r0
/* 800D22F8 000CF258  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D22FC 000CF25C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D2300 000CF260  7C DF 33 78 */	mr r31, r6
/* 800D2304 000CF264  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D2308 000CF268  7C BE 2B 78 */	mr r30, r5
/* 800D230C 000CF26C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800D2310 000CF270  7C 9D 23 78 */	mr r29, r4
/* 800D2314 000CF274  93 81 00 10 */	stw r28, 0x10(r1)
/* 800D2318 000CF278  7C 7C 1B 78 */	mr r28, r3
/* 800D231C 000CF27C  38 60 00 02 */	li r3, 2
/* 800D2320 000CF280  4B FF FC 5D */	bl __begin_critical_region
/* 800D2324 000CF284  7F 83 E3 78 */	mr r3, r28
/* 800D2328 000CF288  7F A4 EB 78 */	mr r4, r29
/* 800D232C 000CF28C  7F C5 F3 78 */	mr r5, r30
/* 800D2330 000CF290  7F E6 FB 78 */	mr r6, r31
/* 800D2334 000CF294  4B FF FC B1 */	bl func_800D1FE4
/* 800D2338 000CF298  7C 60 1B 78 */	mr r0, r3
/* 800D233C 000CF29C  38 60 00 02 */	li r3, 2
/* 800D2340 000CF2A0  7C 1F 03 78 */	mr r31, r0
/* 800D2344 000CF2A4  4B FF FC 35 */	bl __end_critical_region
/* 800D2348 000CF2A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D234C 000CF2AC  7F E3 FB 78 */	mr r3, r31
/* 800D2350 000CF2B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D2354 000CF2B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D2358 000CF2B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D235C 000CF2BC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800D2360 000CF2C0  7C 08 03 A6 */	mtlr r0
/* 800D2364 000CF2C4  38 21 00 20 */	addi r1, r1, 0x20
/* 800D2368 000CF2C8  4E 80 00 20 */	blr 
