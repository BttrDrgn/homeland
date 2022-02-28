.include "macros.inc"

.section .text, "ax"  # 0x800056A0 - 0x800E2460
# start of arith.c
.global labs
labs:
/* 800D1E60 000CEDC0  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 800D1E64 000CEDC4  7C 80 1A 78 */	xor r0, r4, r3
/* 800D1E68 000CEDC8  7C 64 00 50 */	subf r3, r4, r0
/* 800D1E6C 000CEDCC  4E 80 00 20 */	blr 

.global abs
abs:
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

.global __prep_buffer
__prep_buffer:
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

# start of critical_regions.gamecube.c
.global __end_critical_region
__end_critical_region:
/* 800D1F78 000CEED8  4E 80 00 20 */	blr 

.global __begin_critical_region
__begin_critical_region:
/* 800D1F7C 000CEEDC  4E 80 00 20 */	blr 

.global __kill_critical_regions
__kill_critical_regions:
/* 800D1F80 000CEEE0  4E 80 00 20 */	blr 

# start of ctype.c
.global toupper
toupper:
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

.global tolower
tolower:
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

.global islower
islower:
/* 800D1FCC 000CEF2C  3C 80 80 18 */	lis r4, __ctype_map@ha
/* 800D1FD0 000CEF30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800D1FD4 000CEF34  38 64 BD E8 */	addi r3, r4, __ctype_map@l
/* 800D1FD8 000CEF38  7C 03 00 AE */	lbzx r0, r3, r0
/* 800D1FDC 000CEF3C  54 03 06 72 */	rlwinm r3, r0, 0, 0x19, 0x19
/* 800D1FE0 000CEF40  4E 80 00 20 */	blr 
