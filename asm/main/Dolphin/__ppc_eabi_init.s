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
