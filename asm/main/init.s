.include "macros.inc"

.section .init # 0x80003100 - 0x80005600

.global __init_hardware
__init_hardware:
/* 80003400 00000400  7C 00 00 A6 */	mfmsr r0
/* 80003404 00000404  60 00 20 00 */	ori r0, r0, 0x2000
/* 80003408 00000408  7C 00 01 24 */	mtmsr r0
/* 8000340C 0000040C  7F E8 02 A6 */	mflr r31
/* 80003410 00000410  48 04 88 09 */	bl __OSPSInit
/* 80003414 00000414  48 04 7D CD */	bl __OSFPRInit
/* 80003418 00000418  48 04 96 BD */	bl __OSCacheInit
/* 8000341C 0000041C  7F E8 03 A6 */	mtlr r31
/* 80003420 00000420  4E 80 00 20 */	blr 

.global __flush_cache
__flush_cache:
/* 80003424 00000424  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 80003428 00000428  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 8000342C 0000042C  7C A5 18 38 */	and r5, r5, r3
/* 80003430 00000430  7C 65 18 50 */	subf r3, r5, r3
/* 80003434 00000434  7C 84 1A 14 */	add r4, r4, r3
lbl_80003438:
/* 80003438 00000438  7C 00 28 6C */	dcbst 0, r5
/* 8000343C 0000043C  7C 00 04 AC */	sync 0
/* 80003440 00000440  7C 00 2F AC */	icbi 0, r5
/* 80003444 00000444  30 A5 00 08 */	addic r5, r5, 8
/* 80003448 00000448  34 84 FF F8 */	addic. r4, r4, -8
/* 8000344C 0000044C  40 80 FF EC */	bge lbl_80003438
/* 80003450 00000450  4C 00 01 2C */	isync 
/* 80003454 00000454  4E 80 00 20 */	blr 

.global memset
memset:
/* 80003458 00000458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000345C 0000045C  7C 08 02 A6 */	mflr r0
/* 80003460 00000460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80003464 00000464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80003468 00000468  7C 7F 1B 78 */	mr r31, r3
/* 8000346C 0000046C  48 00 00 1D */	bl func_80003488
/* 80003470 00000470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80003474 00000474  7F E3 FB 78 */	mr r3, r31
/* 80003478 00000478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000347C 0000047C  7C 08 03 A6 */	mtlr r0
/* 80003480 00000480  38 21 00 10 */	addi r1, r1, 0x10
/* 80003484 00000484  4E 80 00 20 */	blr 

.global func_80003488
func_80003488:
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

.global func_80003590
func_80003590:
/* 80003590 00000590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80003594 00000594  7C 08 02 A6 */	mflr r0
/* 80003598 00000598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000359C 0000059C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800035A0 000005A0  7C 7F 1B 78 */	mr r31, r3
/* 800035A4 000005A4  48 0D BB AD */	bl func_800DF150
/* 800035A8 000005A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800035AC 000005AC  7F E3 FB 78 */	mr r3, r31
/* 800035B0 000005B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800035B4 000005B4  7C 08 03 A6 */	mtlr r0
/* 800035B8 000005B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800035BC 000005BC  4E 80 00 20 */	blr 

.global TRK_memcpy
TRK_memcpy:
/* 800035C0 000005C0  38 84 FF FF */	addi r4, r4, -1
/* 800035C4 000005C4  38 C3 FF FF */	addi r6, r3, -1
/* 800035C8 000005C8  38 A5 00 01 */	addi r5, r5, 1
/* 800035CC 000005CC  48 00 00 0C */	b lbl_800035D8
lbl_800035D0:
/* 800035D0 000005D0  8C 04 00 01 */	lbzu r0, 1(r4)
/* 800035D4 000005D4  9C 06 00 01 */	stbu r0, 1(r6)
lbl_800035D8:
/* 800035D8 000005D8  34 A5 FF FF */	addic. r5, r5, -1
/* 800035DC 000005DC  40 82 FF F4 */	bne lbl_800035D0
/* 800035E0 000005E0  4E 80 00 20 */	blr 
