.include "macros.inc"

.section .text, "ax"  # 0x800056A0 - 0x800E2460

.global fseek
fseek:
/* 800D2660 000CF5C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D2664 000CF5C4  7C 08 02 A6 */	mflr r0
/* 800D2668 000CF5C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D266C 000CF5CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D2670 000CF5D0  7C BF 2B 78 */	mr r31, r5
/* 800D2674 000CF5D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D2678 000CF5D8  7C 9E 23 78 */	mr r30, r4
/* 800D267C 000CF5DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800D2680 000CF5E0  7C 7D 1B 78 */	mr r29, r3
/* 800D2684 000CF5E4  38 60 00 02 */	li r3, 2
/* 800D2688 000CF5E8  4B FF F8 F5 */	bl __begin_critical_region
/* 800D268C 000CF5EC  7F A3 EB 78 */	mr r3, r29
/* 800D2690 000CF5F0  7F C4 F3 78 */	mr r4, r30
/* 800D2694 000CF5F4  7F E5 FB 78 */	mr r5, r31
/* 800D2698 000CF5F8  48 00 00 35 */	bl _fseek
/* 800D269C 000CF5FC  7C 60 1B 78 */	mr r0, r3
/* 800D26A0 000CF600  38 60 00 02 */	li r3, 2
/* 800D26A4 000CF604  7C 1F 03 78 */	mr r31, r0
/* 800D26A8 000CF608  4B FF F8 D1 */	bl __end_critical_region
/* 800D26AC 000CF60C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D26B0 000CF610  7F E3 FB 78 */	mr r3, r31
/* 800D26B4 000CF614  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D26B8 000CF618  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D26BC 000CF61C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800D26C0 000CF620  7C 08 03 A6 */	mtlr r0
/* 800D26C4 000CF624  38 21 00 20 */	addi r1, r1, 0x20
/* 800D26C8 000CF628  4E 80 00 20 */	blr 

.global _fseek
_fseek:
/* 800D26CC 000CF62C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D26D0 000CF630  7C 08 02 A6 */	mflr r0
/* 800D26D4 000CF634  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D26D8 000CF638  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D26DC 000CF63C  7C BF 2B 78 */	mr r31, r5
/* 800D26E0 000CF640  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D26E4 000CF644  7C 7E 1B 78 */	mr r30, r3
/* 800D26E8 000CF648  90 81 00 08 */	stw r4, 8(r1)
/* 800D26EC 000CF64C  A0 03 00 04 */	lhz r0, 4(r3)
/* 800D26F0 000CF650  54 00 D7 7E */	rlwinm r0, r0, 0x1a, 0x1d, 0x1f
/* 800D26F4 000CF654  28 00 00 01 */	cmplwi r0, 1
/* 800D26F8 000CF658  40 82 00 10 */	bne lbl_800D2708
/* 800D26FC 000CF65C  88 1E 00 0A */	lbz r0, 0xa(r30)
/* 800D2700 000CF660  28 00 00 00 */	cmplwi r0, 0
/* 800D2704 000CF664  41 82 00 14 */	beq lbl_800D2718
lbl_800D2708:
/* 800D2708 000CF668  38 00 00 28 */	li r0, 0x28
/* 800D270C 000CF66C  38 60 FF FF */	li r3, -1
/* 800D2710 000CF670  90 0D BC A8 */	stw r0, errno@sda21(r13)
/* 800D2714 000CF674  48 00 01 DC */	b lbl_800D28F0
lbl_800D2718:
/* 800D2718 000CF678  88 1E 00 08 */	lbz r0, 8(r30)
/* 800D271C 000CF67C  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 800D2720 000CF680  28 00 00 01 */	cmplwi r0, 1
/* 800D2724 000CF684  40 82 00 34 */	bne lbl_800D2758
/* 800D2728 000CF688  38 80 00 00 */	li r4, 0
/* 800D272C 000CF68C  4B FF F7 55 */	bl __flush_buffer
/* 800D2730 000CF690  2C 03 00 00 */	cmpwi r3, 0
/* 800D2734 000CF694  41 82 00 24 */	beq lbl_800D2758
/* 800D2738 000CF698  38 00 00 01 */	li r0, 1
/* 800D273C 000CF69C  38 80 00 00 */	li r4, 0
/* 800D2740 000CF6A0  98 1E 00 0A */	stb r0, 0xa(r30)
/* 800D2744 000CF6A4  38 00 00 28 */	li r0, 0x28
/* 800D2748 000CF6A8  38 60 FF FF */	li r3, -1
/* 800D274C 000CF6AC  90 9E 00 28 */	stw r4, 0x28(r30)
/* 800D2750 000CF6B0  90 0D BC A8 */	stw r0, errno@sda21(r13)
/* 800D2754 000CF6B4  48 00 01 9C */	b lbl_800D28F0
lbl_800D2758:
/* 800D2758 000CF6B8  2C 1F 00 01 */	cmpwi r31, 1
/* 800D275C 000CF6BC  40 82 00 80 */	bne lbl_800D27DC
/* 800D2760 000CF6C0  A0 1E 00 04 */	lhz r0, 4(r30)
/* 800D2764 000CF6C4  3B E0 00 00 */	li r31, 0
/* 800D2768 000CF6C8  54 00 D7 7E */	rlwinm r0, r0, 0x1a, 0x1d, 0x1f
/* 800D276C 000CF6CC  28 00 00 01 */	cmplwi r0, 1
/* 800D2770 000CF6D0  41 82 00 0C */	beq lbl_800D277C
/* 800D2774 000CF6D4  28 00 00 02 */	cmplwi r0, 2
/* 800D2778 000CF6D8  40 82 00 10 */	bne lbl_800D2788
lbl_800D277C:
/* 800D277C 000CF6DC  88 1E 00 0A */	lbz r0, 0xa(r30)
/* 800D2780 000CF6E0  28 00 00 00 */	cmplwi r0, 0
/* 800D2784 000CF6E4  41 82 00 14 */	beq lbl_800D2798
lbl_800D2788:
/* 800D2788 000CF6E8  38 00 00 28 */	li r0, 0x28
/* 800D278C 000CF6EC  38 60 FF FF */	li r3, -1
/* 800D2790 000CF6F0  90 0D BC A8 */	stw r0, errno@sda21(r13)
/* 800D2794 000CF6F4  48 00 00 3C */	b lbl_800D27D0
lbl_800D2798:
/* 800D2798 000CF6F8  88 1E 00 08 */	lbz r0, 8(r30)
/* 800D279C 000CF6FC  54 05 DF 7F */	rlwinm. r5, r0, 0x1b, 0x1d, 0x1f
/* 800D27A0 000CF700  40 82 00 0C */	bne lbl_800D27AC
/* 800D27A4 000CF704  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 800D27A8 000CF708  48 00 00 28 */	b lbl_800D27D0
lbl_800D27AC:
/* 800D27AC 000CF70C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 800D27B0 000CF710  28 05 00 03 */	cmplwi r5, 3
/* 800D27B4 000CF714  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800D27B8 000CF718  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 800D27BC 000CF71C  7C 03 00 50 */	subf r0, r3, r0
/* 800D27C0 000CF720  7C 64 02 14 */	add r3, r4, r0
/* 800D27C4 000CF724  41 80 00 0C */	blt lbl_800D27D0
/* 800D27C8 000CF728  38 05 FF FE */	addi r0, r5, -2
/* 800D27CC 000CF72C  7C 60 18 50 */	subf r3, r0, r3
lbl_800D27D0:
/* 800D27D0 000CF730  80 01 00 08 */	lwz r0, 8(r1)
/* 800D27D4 000CF734  7C 00 1A 14 */	add r0, r0, r3
/* 800D27D8 000CF738  90 01 00 08 */	stw r0, 8(r1)
lbl_800D27DC:
/* 800D27DC 000CF73C  2C 1F 00 02 */	cmpwi r31, 2
/* 800D27E0 000CF740  41 82 00 90 */	beq lbl_800D2870
/* 800D27E4 000CF744  88 1E 00 04 */	lbz r0, 4(r30)
/* 800D27E8 000CF748  54 00 EF 7E */	rlwinm r0, r0, 0x1d, 0x1d, 0x1f
/* 800D27EC 000CF74C  28 00 00 03 */	cmplwi r0, 3
/* 800D27F0 000CF750  41 82 00 80 */	beq lbl_800D2870
/* 800D27F4 000CF754  88 1E 00 08 */	lbz r0, 8(r30)
/* 800D27F8 000CF758  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 800D27FC 000CF75C  28 00 00 02 */	cmplwi r0, 2
/* 800D2800 000CF760  41 82 00 0C */	beq lbl_800D280C
/* 800D2804 000CF764  28 00 00 03 */	cmplwi r0, 3
/* 800D2808 000CF768  40 82 00 68 */	bne lbl_800D2870
lbl_800D280C:
/* 800D280C 000CF76C  80 61 00 08 */	lwz r3, 8(r1)
/* 800D2810 000CF770  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800D2814 000CF774  7C 03 00 40 */	cmplw r3, r0
/* 800D2818 000CF778  40 80 00 10 */	bge lbl_800D2828
/* 800D281C 000CF77C  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 800D2820 000CF780  7C 03 00 40 */	cmplw r3, r0
/* 800D2824 000CF784  40 80 00 18 */	bge lbl_800D283C
lbl_800D2828:
/* 800D2828 000CF788  88 1E 00 08 */	lbz r0, 8(r30)
/* 800D282C 000CF78C  38 60 00 00 */	li r3, 0
/* 800D2830 000CF790  50 60 2E 34 */	rlwimi r0, r3, 5, 0x18, 0x1a
/* 800D2834 000CF794  98 1E 00 08 */	stb r0, 8(r30)
/* 800D2838 000CF798  48 00 00 48 */	b lbl_800D2880
lbl_800D283C:
/* 800D283C 000CF79C  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 800D2840 000CF7A0  7C 00 18 50 */	subf r0, r0, r3
/* 800D2844 000CF7A4  38 60 00 02 */	li r3, 2
/* 800D2848 000CF7A8  7C 04 02 14 */	add r0, r4, r0
/* 800D284C 000CF7AC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 800D2850 000CF7B0  80 81 00 08 */	lwz r4, 8(r1)
/* 800D2854 000CF7B4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 800D2858 000CF7B8  7C 04 00 50 */	subf r0, r4, r0
/* 800D285C 000CF7BC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 800D2860 000CF7C0  88 1E 00 08 */	lbz r0, 8(r30)
/* 800D2864 000CF7C4  50 60 2E 34 */	rlwimi r0, r3, 5, 0x18, 0x1a
/* 800D2868 000CF7C8  98 1E 00 08 */	stb r0, 8(r30)
/* 800D286C 000CF7CC  48 00 00 14 */	b lbl_800D2880
lbl_800D2870:
/* 800D2870 000CF7D0  88 1E 00 08 */	lbz r0, 8(r30)
/* 800D2874 000CF7D4  38 60 00 00 */	li r3, 0
/* 800D2878 000CF7D8  50 60 2E 34 */	rlwimi r0, r3, 5, 0x18, 0x1a
/* 800D287C 000CF7DC  98 1E 00 08 */	stb r0, 8(r30)
lbl_800D2880:
/* 800D2880 000CF7E0  88 1E 00 08 */	lbz r0, 8(r30)
/* 800D2884 000CF7E4  54 00 DF 7F */	rlwinm. r0, r0, 0x1b, 0x1d, 0x1f
/* 800D2888 000CF7E8  40 82 00 64 */	bne lbl_800D28EC
/* 800D288C 000CF7EC  81 9E 00 38 */	lwz r12, 0x38(r30)
/* 800D2890 000CF7F0  28 0C 00 00 */	cmplwi r12, 0
/* 800D2894 000CF7F4  41 82 00 44 */	beq lbl_800D28D8
/* 800D2898 000CF7F8  7F E5 FB 78 */	mr r5, r31
/* 800D289C 000CF7FC  38 81 00 08 */	addi r4, r1, 8
/* 800D28A0 000CF800  80 7E 00 00 */	lwz r3, 0(r30)
/* 800D28A4 000CF804  80 DE 00 48 */	lwz r6, 0x48(r30)
/* 800D28A8 000CF808  7D 89 03 A6 */	mtctr r12
/* 800D28AC 000CF80C  4E 80 04 21 */	bctrl 
/* 800D28B0 000CF810  2C 03 00 00 */	cmpwi r3, 0
/* 800D28B4 000CF814  41 82 00 24 */	beq lbl_800D28D8
/* 800D28B8 000CF818  38 00 00 01 */	li r0, 1
/* 800D28BC 000CF81C  38 80 00 00 */	li r4, 0
/* 800D28C0 000CF820  98 1E 00 0A */	stb r0, 0xa(r30)
/* 800D28C4 000CF824  38 00 00 28 */	li r0, 0x28
/* 800D28C8 000CF828  38 60 FF FF */	li r3, -1
/* 800D28CC 000CF82C  90 9E 00 28 */	stw r4, 0x28(r30)
/* 800D28D0 000CF830  90 0D BC A8 */	stw r0, errno@sda21(r13)
/* 800D28D4 000CF834  48 00 00 1C */	b lbl_800D28F0
lbl_800D28D8:
/* 800D28D8 000CF838  38 60 00 00 */	li r3, 0
/* 800D28DC 000CF83C  98 7E 00 09 */	stb r3, 9(r30)
/* 800D28E0 000CF840  80 01 00 08 */	lwz r0, 8(r1)
/* 800D28E4 000CF844  90 1E 00 18 */	stw r0, 0x18(r30)
/* 800D28E8 000CF848  90 7E 00 28 */	stw r3, 0x28(r30)
lbl_800D28EC:
/* 800D28EC 000CF84C  38 60 00 00 */	li r3, 0
lbl_800D28F0:
/* 800D28F0 000CF850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D28F4 000CF854  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D28F8 000CF858  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D28FC 000CF85C  7C 08 03 A6 */	mtlr r0
/* 800D2900 000CF860  38 21 00 20 */	addi r1, r1, 0x20
/* 800D2904 000CF864  4E 80 00 20 */	blr 

.global ftell
ftell:
/* 800D2908 000CF868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D290C 000CF86C  7C 08 02 A6 */	mflr r0
/* 800D2910 000CF870  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D2914 000CF874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D2918 000CF878  7C 7F 1B 78 */	mr r31, r3
/* 800D291C 000CF87C  38 60 00 02 */	li r3, 2
/* 800D2920 000CF880  4B FF F6 5D */	bl __begin_critical_region
/* 800D2924 000CF884  A0 1F 00 04 */	lhz r0, 4(r31)
/* 800D2928 000CF888  54 00 D7 7E */	rlwinm r0, r0, 0x1a, 0x1d, 0x1f
/* 800D292C 000CF88C  28 00 00 01 */	cmplwi r0, 1
/* 800D2930 000CF890  41 82 00 0C */	beq lbl_800D293C
/* 800D2934 000CF894  28 00 00 02 */	cmplwi r0, 2
/* 800D2938 000CF898  40 82 00 10 */	bne lbl_800D2948
lbl_800D293C:
/* 800D293C 000CF89C  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 800D2940 000CF8A0  28 00 00 00 */	cmplwi r0, 0
/* 800D2944 000CF8A4  41 82 00 14 */	beq lbl_800D2958
lbl_800D2948:
/* 800D2948 000CF8A8  38 00 00 28 */	li r0, 0x28
/* 800D294C 000CF8AC  3B E0 FF FF */	li r31, -1
/* 800D2950 000CF8B0  90 0D BC A8 */	stw r0, errno@sda21(r13)
/* 800D2954 000CF8B4  48 00 00 3C */	b lbl_800D2990
lbl_800D2958:
/* 800D2958 000CF8B8  88 1F 00 08 */	lbz r0, 8(r31)
/* 800D295C 000CF8BC  54 05 DF 7F */	rlwinm. r5, r0, 0x1b, 0x1d, 0x1f
/* 800D2960 000CF8C0  40 82 00 0C */	bne lbl_800D296C
/* 800D2964 000CF8C4  83 FF 00 18 */	lwz r31, 0x18(r31)
/* 800D2968 000CF8C8  48 00 00 28 */	b lbl_800D2990
lbl_800D296C:
/* 800D296C 000CF8CC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 800D2970 000CF8D0  28 05 00 03 */	cmplwi r5, 3
/* 800D2974 000CF8D4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 800D2978 000CF8D8  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 800D297C 000CF8DC  7C 03 00 50 */	subf r0, r3, r0
/* 800D2980 000CF8E0  7F E4 02 14 */	add r31, r4, r0
/* 800D2984 000CF8E4  41 80 00 0C */	blt lbl_800D2990
/* 800D2988 000CF8E8  38 05 FF FE */	addi r0, r5, -2
/* 800D298C 000CF8EC  7F E0 F8 50 */	subf r31, r0, r31
lbl_800D2990:
/* 800D2990 000CF8F0  38 60 00 02 */	li r3, 2
/* 800D2994 000CF8F4  4B FF F5 E5 */	bl __end_critical_region
/* 800D2998 000CF8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D299C 000CF8FC  7F E3 FB 78 */	mr r3, r31
/* 800D29A0 000CF900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D29A4 000CF904  7C 08 03 A6 */	mtlr r0
/* 800D29A8 000CF908  38 21 00 10 */	addi r1, r1, 0x10
/* 800D29AC 000CF90C  4E 80 00 20 */	blr 
