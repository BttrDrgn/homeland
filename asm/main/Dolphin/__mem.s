.include "macros.inc"

.section .init # 0x80003100 - 0x80005600

.global memset
memset:
/* 80003458 00000458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000345C 0000045C  7C 08 02 A6 */	mflr r0
/* 80003460 00000460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003464 00000464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80003468 00000468  7C 7F 1B 78 */	mr r31, r3
/* 8000346C 0000046C  48 00 00 1D */	bl __fill_mem
/* 80003470 00000470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003474 00000474  7F E3 FB 78 */	mr r3, r31
/* 80003478 00000478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000347C 0000047C  7C 08 03 A6 */	mtlr r0
/* 80003480 00000480  38 21 00 10 */	addi r1, r1, 0x10
/* 80003484 00000484  4E 80 00 20 */	blr 

.global __fill_mem
__fill_mem:
/* 80003488 00000488  28 05 00 20 */	cmplwi r5, 0x20
/* 8000348C 0000048C  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80003490 00000490  38 C3 FF FF */	addi r6, r3, -1
/* 80003494 00000494  7C 87 23 78 */	mr r7, r4
/* 80003498 00000498  41 80 00 90 */	blt lbl_80003528
/* 8000349C 0000049C  7C C0 30 F8 */	nor r0, r6, r6
/* 800034A0 000004A0  54 03 07 BF */	clrlwi. r3, r0, 0x1e
/* 800034A4 000004A4  41 82 00 14 */	beq lbl_800034B8
/* 800034A8 000004A8  7C A3 28 50 */	subf r5, r3, r5
lbl_800034AC:
/* 800034AC 000004AC  34 63 FF FF */	addic. r3, r3, -1
/* 800034B0 000004B0  9C E6 00 01 */	stbu r7, 1(r6)
/* 800034B4 000004B4  40 82 FF F8 */	bne lbl_800034AC
lbl_800034B8:
/* 800034B8 000004B8  28 07 00 00 */	cmplwi r7, 0
/* 800034BC 000004BC  41 82 00 1C */	beq lbl_800034D8
/* 800034C0 000004C0  54 E3 C0 0E */	slwi r3, r7, 0x18
/* 800034C4 000004C4  54 E0 80 1E */	slwi r0, r7, 0x10
/* 800034C8 000004C8  54 E4 40 2E */	slwi r4, r7, 8
/* 800034CC 000004CC  7C 60 03 78 */	or r0, r3, r0
/* 800034D0 000004D0  7C 80 03 78 */	or r0, r4, r0
/* 800034D4 000004D4  7C E7 03 78 */	or r7, r7, r0
lbl_800034D8:
/* 800034D8 000004D8  54 A3 D9 7F */	rlwinm. r3, r5, 0x1b, 5, 0x1f
/* 800034DC 000004DC  38 86 FF FD */	addi r4, r6, -3
/* 800034E0 000004E0  41 82 00 2C */	beq lbl_8000350C
lbl_800034E4:
/* 800034E4 000004E4  90 E4 00 04 */	stw r7, 4(r4)
/* 800034E8 000004E8  34 63 FF FF */	addic. r3, r3, -1
/* 800034EC 000004EC  90 E4 00 08 */	stw r7, 8(r4)
/* 800034F0 000004F0  90 E4 00 0C */	stw r7, 0xc(r4)
/* 800034F4 000004F4  90 E4 00 10 */	stw r7, 0x10(r4)
/* 800034F8 000004F8  90 E4 00 14 */	stw r7, 0x14(r4)
/* 800034FC 000004FC  90 E4 00 18 */	stw r7, 0x18(r4)
/* 80003500 00000500  90 E4 00 1C */	stw r7, 0x1c(r4)
/* 80003504 00000504  94 E4 00 20 */	stwu r7, 0x20(r4)
/* 80003508 00000508  40 82 FF DC */	bne lbl_800034E4
lbl_8000350C:
/* 8000350C 0000050C  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 80003510 00000510  41 82 00 10 */	beq lbl_80003520
lbl_80003514:
/* 80003514 00000514  34 63 FF FF */	addic. r3, r3, -1
/* 80003518 00000518  94 E4 00 04 */	stwu r7, 4(r4)
/* 8000351C 0000051C  40 82 FF F8 */	bne lbl_80003514
lbl_80003520:
/* 80003520 00000520  38 C4 00 03 */	addi r6, r4, 3
/* 80003524 00000524  54 A5 07 BE */	clrlwi r5, r5, 0x1e
lbl_80003528:
/* 80003528 00000528  28 05 00 00 */	cmplwi r5, 0
/* 8000352C 0000052C  4D 82 00 20 */	beqlr 
lbl_80003530:
/* 80003530 00000530  34 A5 FF FF */	addic. r5, r5, -1
/* 80003534 00000534  9C E6 00 01 */	stbu r7, 1(r6)
/* 80003538 00000538  40 82 FF F8 */	bne lbl_80003530
/* 8000353C 0000053C  4E 80 00 20 */	blr 

.global memcpy
memcpy:
/* 80003540 00000540  7C 04 18 40 */	cmplw r4, r3
/* 80003544 00000544  41 80 00 28 */	blt lbl_8000356C
/* 80003548 00000548  38 84 FF FF */	addi r4, r4, -1
/* 8000354C 0000054C  38 C3 FF FF */	addi r6, r3, -1
/* 80003550 00000550  38 A5 00 01 */	addi r5, r5, 1
/* 80003554 00000554  48 00 00 0C */	b lbl_80003560
lbl_80003558:
/* 80003558 00000558  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8000355C 0000055C  9C 06 00 01 */	stbu r0, 1(r6)
lbl_80003560:
/* 80003560 00000560  34 A5 FF FF */	addic. r5, r5, -1
/* 80003564 00000564  40 82 FF F4 */	bne lbl_80003558
/* 80003568 00000568  4E 80 00 20 */	blr 
lbl_8000356C:
/* 8000356C 0000056C  7C 84 2A 14 */	add r4, r4, r5
/* 80003570 00000570  7C C3 2A 14 */	add r6, r3, r5
/* 80003574 00000574  38 A5 00 01 */	addi r5, r5, 1
/* 80003578 00000578  48 00 00 0C */	b lbl_80003584
lbl_8000357C:
/* 8000357C 0000057C  8C 04 FF FF */	lbzu r0, -1(r4)
/* 80003580 00000580  9C 06 FF FF */	stbu r0, -1(r6)
lbl_80003584:
/* 80003584 00000584  34 A5 FF FF */	addic. r5, r5, -1
/* 80003588 00000588  40 82 FF F4 */	bne lbl_8000357C
/* 8000358C 0000058C  4E 80 00 20 */	blr 