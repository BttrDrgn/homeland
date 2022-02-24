.section .sdata, "wa"  # 0x804D5320 - 0x804D6D00
.global lbl_804D5320
lbl_804D5320:
	# ROM: 0x179600
	.4byte 0x00000001
	.4byte 0

.global lbl_804D5328
lbl_804D5328:
	# ROM: 0x179608
	.asciz "System"
	.balign 4

.global lbl_804D5330
lbl_804D5330:
	# ROM: 0x179610
	.asciz "Config"
	.balign 4
	.4byte 0x800F6918  ;# ptr
	.4byte 0
	.4byte 0x800F6904  ;# ptr
	.4byte 0x800F6924  ;# ptr

.global lbl_804D5348
lbl_804D5348:
	.byte 1

.global lbl_804D5349
lbl_804D5349:
	# ROM: 0x179629
	.byte 0x01, 0x00, 0x00
	.4byte 0x800F696C  ;# ptr
	.4byte 0
	.4byte 0x800F6958  ;# ptr
	.4byte 0x800F6978  ;# ptr
	.4byte 0
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5360
	.4byte 0
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5370
	.4byte 0
	.4byte 0x800F69B8  ;# ptr
	.4byte 0x800F69C4  ;# ptr
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5388
	.4byte 0
	.4byte 0x800F6A00  ;# ptr
	.4byte 0x800F6A0C  ;# ptr
	.4byte 0x800F69E8  ;# ptr
	.4byte 0x800F6A18  ;# ptr
	.asciz "Frame"
	.balign 4
	.4byte 0x804D53A8
	.4byte 0
	.4byte 0x800F6A48  ;# ptr
	.4byte 0x800F6A58  ;# ptr

.global lbl_804D53C0
lbl_804D53C0:
	# ROM: 0x1796A0
	.4byte 0
	.4byte 0x00000004
	.asciz "Frame"
	.balign 4
	.4byte 0x804D53C8
	.4byte 0
	.4byte 0x800F6A80  ;# ptr
	.4byte 0x800F6A94  ;# ptr
	.asciz "Frame"
	.balign 4
	.4byte 0x804D53E0
	.4byte 0
	.4byte 0x800F6AB8  ;# ptr
	.4byte 0x800F6AC4  ;# ptr

.global lbl_804D53F8
lbl_804D53F8:
	# ROM: 0x1796D8
	.4byte 0
	.4byte 0x00000005

.global lbl_804D5400
lbl_804D5400:
	# ROM: 0x1796E0
	.4byte 0
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5404
	.4byte 0
	.4byte 0x800F6AE8  ;# ptr
	.4byte 0x800F6AF4  ;# ptr
	.4byte 0
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5420
	.4byte 0
	.4byte 0x800F6B38  ;# ptr
	.4byte 0x800F6B44  ;# ptr
	.4byte 0x800F6B28  ;# ptr
	.4byte 0x800F6B50  ;# ptr
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5440
	.4byte 0
	.4byte 0x800F6BB0  ;# ptr
	.4byte 0x800F6BBC  ;# ptr
	.4byte 0x800F6BC8  ;# ptr
	.4byte 0x800F6BD8  ;# ptr
	.4byte 0x800F6BA0  ;# ptr
	.4byte 0x800F6BEC  ;# ptr
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5468
	.4byte 0
	.4byte 0x800F6C5C  ;# ptr
	.4byte 0x800F6C68  ;# ptr
	.4byte 0x800F6C74  ;# ptr
	.4byte 0x800F6C84  ;# ptr
	.4byte 0x800F6C48  ;# ptr
	.4byte 0x800F6C98  ;# ptr
	.asciz "Frame"
	.balign 4
	.4byte 0x804D5490
	.4byte 0
	.4byte 0x800F6D08  ;# ptr
	.4byte 0x800F6D14  ;# ptr
	.4byte 0x800F6D20  ;# ptr
	.4byte 0x800F6D30  ;# ptr
	.4byte 0x800F6D44  ;# ptr
	.4byte 0x800F6D58  ;# ptr
	.4byte 0x800F6CF0  ;# ptr
	.4byte 0x800F6D74  ;# ptr
	.asciz "Frame"
	.balign 4
	.4byte 0x804D54C0
	.4byte 0
	.4byte 0x800F6DE8  ;# ptr
	.4byte 0x800F6DF4  ;# ptr
	.4byte 0x800F6DD8  ;# ptr
	.4byte 0x800F6E00  ;# ptr
	.4byte 0x800F6E38  ;# ptr
	.4byte 0
	.4byte 0x800F6E78  ;# ptr
	.4byte 0
	.4byte 0x800F6E60  ;# ptr
	.4byte 0x800F6E88  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D54F8
	.4byte 0
	.4byte 0x800F6EE0  ;# ptr
	.4byte 0
	.4byte 0x800F6EC0  ;# ptr
	.4byte 0x800F6EF0  ;# ptr
	.asciz "MenuFix"
	.asciz "Menu"
	.balign 4
	.4byte 0x804D5520
	.4byte 0
	.4byte 0x804D5518
	.4byte 0x800F6F10  ;# ptr
	.4byte 0x800F6F54  ;# ptr
	.4byte 0
	.4byte 0x800F6F64  ;# ptr
	.4byte 0x800F6F88  ;# ptr
	.4byte 0x800F6F30  ;# ptr
	.4byte 0x800F6F94  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D5550
	.4byte 0
	.4byte 0x800F6FD0  ;# ptr
	.4byte 0x800F6FDC  ;# ptr
	.4byte 0x800F7018  ;# ptr
	.4byte 0
	.4byte 0x800F7000  ;# ptr
	.4byte 0x800F7028  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D5578
	.4byte 0
	.4byte 0x800F7048  ;# ptr
	.4byte 0x800F7054  ;# ptr
	.4byte 0x800F709C  ;# ptr
	.4byte 0
	.4byte 0x800F7078  ;# ptr
	.4byte 0x800F70AC  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D55A0
	.4byte 0
	.4byte 0x800F70CC  ;# ptr
	.4byte 0x800F70D8  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D55B8
	.4byte 0
	.4byte 0x800F70F8  ;# ptr
	.4byte 0x800F710C  ;# ptr
	.4byte 0x800F7148  ;# ptr
	.4byte 0
	.4byte 0x800F712C  ;# ptr
	.4byte 0x800F7158  ;# ptr

.global lbl_804D55E0
lbl_804D55E0:
	# ROM: 0x1798C0
	.4byte 0x01000000
	.4byte 0
	.asciz "Menu"
	.balign 4
	.4byte 0x804D55E8
	.4byte 0
	.4byte 0x800F7178  ;# ptr
	.4byte 0x800F7188  ;# ptr
	.4byte 0x82CD82A2
	.4byte 0
	.4byte 0x82A282A2
	.4byte 0x82A60000
	.4byte 0x800F71BC  ;# ptr
	.4byte 0
	.4byte 0x800F71A8  ;# ptr
	.4byte 0x800F71CC  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D5620
	.4byte 0
	.4byte 0x800F71EC  ;# ptr
	.4byte 0x800F71F8  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D5638
	.4byte 0
	.4byte 0x800F7218  ;# ptr
	.4byte 0x800F7224  ;# ptr
	.asciz "Menu"
	.balign 4
	.4byte 0x804D5650
	.4byte 0
	.4byte 0x800F7270  ;# ptr
	.4byte 0x800F727C  ;# ptr
	.4byte 0x800F7288  ;# ptr
	.4byte 0x800F7298  ;# ptr
	.4byte 0x800F72D0  ;# ptr
	.4byte 0
	.4byte 0x800F72C0  ;# ptr
	.4byte 0x800F72E0  ;# ptr

.global lbl_804D5680
lbl_804D5680:
	# ROM: 0x179960
	.4byte 0x82A282A2
	.4byte 0x82A60000
	.4byte 0x800F7308  ;# ptr
	.4byte 0x800F7318  ;# ptr

.global lbl_804D5690
lbl_804D5690:
	# ROM: 0x179970
	.4byte 0x82CD82A2
	.4byte 0

.global lbl_804D5698
lbl_804D5698:
	# ROM: 0x179978
	.4byte 0
	.4byte 0x800F7360  ;# ptr
	.4byte 0
	.4byte 0
	.4byte 0x800F739C  ;# ptr
	.4byte 0
	.4byte 0x800F7390  ;# ptr
	.4byte 0x800F73A8  ;# ptr

.global __OSCurrHeap
__OSCurrHeap:
	# ROM: 0x179998
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x800F73D8  ;# ptr
	.4byte 0
	.4byte 0x800F73F0  ;# ptr
	.4byte 0
	.4byte 0x800F7424  ;# ptr
	.4byte 0
	.4byte 0x800F7418  ;# ptr
	.4byte 0x800F7430  ;# ptr
	.4byte 0x800F746C  ;# ptr
	.4byte 0
	.4byte 0x800F7458  ;# ptr
	.4byte 0x800F7478  ;# ptr
	.4byte 0x800F74D0  ;# ptr
	.4byte 0
	.4byte 0x800F74C0  ;# ptr
	.4byte 0x800F74DC  ;# ptr
	.4byte 0x800F7518  ;# ptr
	.4byte 0
	.4byte 0x800F7524  ;# ptr
	.4byte 0x800F7538  ;# ptr
	.4byte 0x800F7508  ;# ptr
	.4byte 0x800F7544  ;# ptr
	.4byte 0x800F7588  ;# ptr
	.4byte 0
	.4byte 0x800F7594  ;# ptr
	.4byte 0x800F75A8  ;# ptr
	.4byte 0x800F7578  ;# ptr
	.4byte 0x800F75B4  ;# ptr
	.4byte 0x800F7600  ;# ptr
	.4byte 0
	.4byte 0x800F760C  ;# ptr
	.4byte 0x800F7620  ;# ptr
	.4byte 0x800F75E8  ;# ptr
	.4byte 0x800F762C  ;# ptr

.global lbl_804D5748
lbl_804D5748:
	# ROM: 0x179A28
	.4byte 0x00000001
	.4byte 0
	.4byte 0x82600000
	.4byte 0x82610000
	.4byte 0x82620000
	.4byte 0x82630000
	.4byte 0x82640000
	.4byte 0x82650000
	.4byte 0x82660000
	.4byte 0x82670000
	.4byte 0x82690000
	.4byte 0x826A0000

.global lbl_804D5778
lbl_804D5778:
	# ROM: 0x179A58
	.4byte 0x256C6400

.global lbl_804D577C
lbl_804D577C:
	# ROM: 0x179A5C
	.asciz "%s%s"
	.balign 4
	.4byte 0
	.4byte 0x82A082B0
	.4byte 0x82C40000
	.4byte 0x82A082CD
	.4byte 0x82CD0000
	.4byte 0x82A282A2
	.4byte 0x82A60000
	.4byte 0x82A282B1
	.4byte 0x82A40000
	.4byte 0x82A882A9
	.4byte 0x82CB0000
	.4byte 0x82A982B9
	.4byte 0x82AE0000
	.4byte 0x82B182B1
	.4byte 0x82C50000
	.4byte 0x82B182E0
	.4byte 0x82CC0000
	.4byte 0x82B382B0
	.4byte 0x82C40000
	.4byte 0x82B582F1
	.4byte 0x82BE0000
	.4byte 0x82B982A9
	.4byte 0x82A20000
	.4byte 0x82BB82A4
	.4byte 0x82D10000
	.4byte 0x82BE82EA
	.4byte 0x82A90000
	.4byte 0x82BE82EA
	.4byte 0x82E00000
	.4byte 0x82BF82A9
	.4byte 0x82E70000
	.4byte 0x82C482D4
	.4byte 0x82EA0000
	.4byte 0x82C582B5
	.4byte 0x82BD0000
	.4byte 0x82C782B1
	.4byte 0x82C90000
	.4byte 0x82C882BA
	.4byte 0x81480000
	.4byte 0x82D082C7
	.4byte 0x82A20000
	.4byte 0x83678343
	.4byte 0x838C0000
	.4byte 0x82DC82E0
	.4byte 0x82CC0000
	.4byte 0x82DD82F1
	.4byte 0x82C80000
	.4byte 0x82E082C7
	.4byte 0x82E90000
	.4byte 0x82E882EA
	.4byte 0x82AB0000
	.4byte 0x82ED815B
	.4byte 0x82A20000
	.4byte 0x82ED82A9
	.4byte 0x82E80000
	.4byte 0x8345838B
	.4byte 0
	.4byte 0x834A836C
	.4byte 0x838B0000
	.4byte 0x834C838D
	.4byte 0
	.4byte 0x83698343
	.4byte 0x83580000
	.4byte 0x836F8362
	.4byte 0x83610000
	.4byte 0x836F838B
	.4byte 0x834E0000
	.4byte 0x8370815B
	.4byte 0x834E0000
	.4byte 0x838F8362
	.4byte 0x83600000

.global lbl_804D58A0
lbl_804D58A0:
	# ROM: 0x179B80
	.4byte 0xFFFFFFFF

.global lbl_804D58A4
lbl_804D58A4:
	.4byte 1
.global lbl_804D58A8
lbl_804D58A8:
	.2byte 0x44
.global lbl_804D58AA
lbl_804D58AA:
	.2byte 0xA4
.global lbl_804D58AC
lbl_804D58AC:
	.2byte 0x44
.global lbl_804D58AE
lbl_804D58AE:
	.2byte 0xA4
.global lbl_804D58B0
lbl_804D58B0:
	.byte 1
.global lbl_804D58B1
lbl_804D58B1:
	.byte 1
.global lbl_804D58B2
lbl_804D58B2:
	.byte 1
.global lbl_804D58B3
lbl_804D58B3:
	.byte 1

.global lbl_804D58B4
lbl_804D58B4:
	# ROM: 0x179B94
	.4byte 0
	.4byte 0x00000003
	.4byte 0x800F831C  ;# ptr
	.4byte 0
	.4byte 0
	.4byte 0x800F835C  ;# ptr
	.4byte 0
	.4byte 0x800F8348  ;# ptr
	.4byte 0x800F8368  ;# ptr
	.4byte 0x81E10000
	.4byte 0x81E30000
	.4byte 0x81E20000
	.4byte 0x81E00000
	.4byte 0x81DF0000
	.4byte 0x82C10000
	.4byte 0x815B0000
	.4byte 0x81600000
	.4byte 0x81640000
	.4byte 0x81480000
	.4byte 0x81490000
	.4byte 0x81420000
	.4byte 0x81400000
	.4byte 0x82A00000
	.4byte 0x82A20000
	.4byte 0x82A40000
	.4byte 0x82A60000
	.4byte 0x82A80000
	.4byte 0x82A90000
	.4byte 0x82AB0000
	.4byte 0x82AD0000
	.4byte 0x82AF0000
	.4byte 0x82B10000
	.4byte 0x82B30000
	.4byte 0x82B50000
	.4byte 0x82B70000
	.4byte 0x82B90000
	.4byte 0x82BB0000
	.4byte 0x82BD0000
	.4byte 0x82BF0000
	.4byte 0x82C20000
	.4byte 0x82C40000
	.4byte 0x82C60000
	.4byte 0x82C80000
	.4byte 0x82C90000
	.4byte 0x82CA0000
	.4byte 0x82CB0000
	.4byte 0x82CC0000
	.4byte 0x82CD0000
	.4byte 0x82D00000
	.4byte 0x82D30000
	.4byte 0x82D60000
	.4byte 0x82D90000
	.4byte 0x82DC0000
	.4byte 0x82DD0000
	.4byte 0x82DE0000
	.4byte 0x82DF0000
	.4byte 0x82E00000
	.4byte 0x82E20000
	.4byte 0x82E40000
	.4byte 0x82E60000
	.4byte 0x82E70000
	.4byte 0x82E80000
	.4byte 0x82E90000
	.4byte 0x82EA0000
	.4byte 0x82EB0000
	.4byte 0x82ED0000
	.4byte 0x82F00000
	.4byte 0x82F10000
	.4byte 0x800F841C  ;# ptr
	.4byte 0
	.4byte 0x800F8428  ;# ptr
	.4byte 0x800F843C  ;# ptr
	.4byte 0x800F8408  ;# ptr
	.4byte 0x800F8448  ;# ptr
	.4byte 0
	.4byte 0x81E10000
	.4byte 0x81E30000
	.4byte 0x81E20000
	.4byte 0x81E00000
	.4byte 0x81DF0000
	.4byte 0x83620000
	.4byte 0x815B0000
	.4byte 0x81600000
	.4byte 0x81640000
	.4byte 0x81480000
	.4byte 0x81490000
	.4byte 0x81420000
	.4byte 0x81400000
	.4byte 0x83410000
	.4byte 0x83430000
	.4byte 0x83450000
	.4byte 0x83470000
	.4byte 0x83490000
	.4byte 0x834A0000
	.4byte 0x834C0000
	.4byte 0x834E0000
	.4byte 0x83500000
	.4byte 0x83520000
	.4byte 0x83540000
	.4byte 0x83560000
	.4byte 0x83580000
	.4byte 0x835A0000
	.4byte 0x835C0000
	.4byte 0x835E0000
	.4byte 0x83600000
	.4byte 0x83630000
	.4byte 0x83650000
	.4byte 0x83670000
	.4byte 0x83690000
	.4byte 0x836A0000
	.4byte 0x836B0000
	.4byte 0x836C0000
	.4byte 0x836D0000
	.4byte 0x836E0000
	.4byte 0x83710000
	.4byte 0x83740000
	.4byte 0x83770000
	.4byte 0x837A0000
	.4byte 0x837D0000
	.4byte 0x837E0000
	.4byte 0x83800000
	.4byte 0x83810000
	.4byte 0x83820000
	.4byte 0x83840000
	.4byte 0x83860000
	.4byte 0x83880000
	.4byte 0x83890000
	.4byte 0x838A0000
	.4byte 0x838B0000
	.4byte 0x838C0000
	.4byte 0x838D0000
	.4byte 0x838F0000
	.4byte 0x83920000
	.4byte 0x83930000
	.4byte 0x800F8504  ;# ptr
	.4byte 0
	.4byte 0x800F8510  ;# ptr
	.4byte 0x800F8524  ;# ptr
	.4byte 0x800F84F0  ;# ptr
	.4byte 0x800F8530  ;# ptr
	.4byte 0
	.4byte 0x82608261
	.4byte 0x82620000
	.4byte 0x82638264
	.4byte 0x82650000
	.4byte 0x82668267
	.4byte 0x82680000
	.4byte 0x8269826A
	.4byte 0x826B0000
	.4byte 0x826C826D
	.4byte 0x826E0000
	.4byte 0x82738274
	.4byte 0x82750000
	.4byte 0
	.4byte 0x800F8618  ;# ptr
	.4byte 0
	.4byte 0x800F8604  ;# ptr
	.4byte 0x800F8624  ;# ptr
	.4byte 0
	.4byte 0x837B838B
	.4byte 0
	.4byte 0x82B10000
	.4byte 0x82A982A2
	.4byte 0
	.4byte 0x82C20000
	.4byte 0x815B0000
	.4byte 0x81600000
	.4byte 0x81640000
	.4byte 0x81480000
	.4byte 0x81490000
	.4byte 0x81420000
	.4byte 0x81400000
	.4byte 0x82500000
	.4byte 0x82510000
	.4byte 0x82520000
	.4byte 0x82530000
	.4byte 0x82540000
	.4byte 0x82550000
	.4byte 0x82560000
	.4byte 0x82570000
	.4byte 0x82580000
	.4byte 0x824F0000
	.4byte 0x800F86A4  ;# ptr
	.4byte 0
	.4byte 0x800F86B0  ;# ptr
	.4byte 0x800F86C4  ;# ptr
	.4byte 0x800F8690  ;# ptr
	.4byte 0x800F86D0  ;# ptr
	.4byte 0
	.4byte 0x81400000
	.4byte 0x81E70000
	.4byte 0x81E80000
	.4byte 0x81CE0000
	.4byte 0x82E882EA
	.4byte 0x82AB0000

.global lbl_804D5BC0
lbl_804D5BC0:
	# ROM: 0x179EA0
	.asciz "all.bin"
	.4byte 0x8016C4D8  ;# ptr
	.4byte 0
	.4byte 0x8016C520  ;# ptr
	.4byte 0
	.4byte 0x8016C4FC  ;# ptr
	.4byte 0x8016C52C  ;# ptr
	.4byte 0x8016C5C0  ;# ptr
	.4byte 0
	.4byte 0x8016C5A8  ;# ptr
	.4byte 0x8016C5D0  ;# ptr
	.4byte 0x8016C614  ;# ptr
	.4byte 0
	.4byte 0x8016C600  ;# ptr
	.4byte 0x8016C624  ;# ptr
	.4byte 0x8016C658  ;# ptr
	.4byte 0
	.4byte 0x8016C640  ;# ptr
	.4byte 0x8016C668  ;# ptr
	.4byte 0x8016C69C  ;# ptr
	.4byte 0
	.4byte 0x8016C688  ;# ptr
	.4byte 0x8016C6AC  ;# ptr
	.4byte 0x8016C6DC  ;# ptr
	.4byte 0
	.4byte 0x8016C6C8  ;# ptr
	.4byte 0x8016C6EC  ;# ptr
	.4byte 0x8016C740  ;# ptr
	.4byte 0
	.4byte 0x8016C728  ;# ptr
	.4byte 0x8016C750  ;# ptr
	.4byte 0x8016C790  ;# ptr
	.4byte 0
	.4byte 0x8016C770  ;# ptr
	.4byte 0x8016C7A0  ;# ptr
	.asciz "M24_rao"

.global lbl_804D5C58
lbl_804D5C58:
	.byte 1

.global lbl_804D5C59
lbl_804D5C59:
	# ROM: 0x179F39
	.byte 0x01, 0x00, 0x00
	.4byte 0

.global lbl_804D5C60
lbl_804D5C60:
	# ROM: 0x179F40
	.4byte 0x000000FF
	.4byte 0

.global lbl_804D5C68
lbl_804D5C68:
	# ROM: 0x179F48
	.4byte 0x8016D2C8  ;# ptr
	.asciz "_L.dsp"
	.balign 4

.global lbl_804D5C74
lbl_804D5C74:
	# ROM: 0x179F54
	.4byte 0x804D5C6C
	.asciz "_R.dsp"
	.balign 4

.global lbl_804D5C80
lbl_804D5C80:
	# ROM: 0x179F60
	.4byte 0x804D5C78
	.4byte 0

.global lbl_804D5C88
lbl_804D5C88:
	# ROM: 0x179F68
	.4byte 0xEBEBEBFF

.global lbl_804D5C8C
lbl_804D5C8C:
	# ROM: 0x179F6C
	.4byte 0x000000FF

.global lbl_804D5C90
lbl_804D5C90:
	# ROM: 0x179F70
	.4byte 0xEB0000FF

.global lbl_804D5C94
lbl_804D5C94:
	# ROM: 0x179F74
	.4byte 0x20B4B4FF

.global lbl_804D5C98
lbl_804D5C98:
	# ROM: 0x179F78
	.4byte 0x0000EBFF

.global lbl_804D5C9C
lbl_804D5C9C:
	# ROM: 0x179F7C
	.4byte 0xEB00EBFF

.global lbl_804D5CA0
lbl_804D5CA0:
	# ROM: 0x179F80
	.4byte 0x00EBEBFF

.global lbl_804D5CA4
lbl_804D5CA4:
	# ROM: 0x179F84
	.4byte 0x7F7F7FFF

.global lbl_804D5CA8
lbl_804D5CA8:
	# ROM: 0x179F88
	.4byte 0xDCA014FF

.global lbl_804D5CAC
lbl_804D5CAC:
	# ROM: 0x179F8C
	.4byte 0x1437EBFF

.global lbl_804D5CB0
lbl_804D5CB0:
	# ROM: 0x179F90
	.4byte 0x817C0000
	.4byte 0
	.4byte 0x70000005
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x70000006
	.4byte 0x00000002
	.4byte 0x70000007
	.4byte 0x00000005
	.4byte 0x70000008
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x404040FF
	.4byte 0x70000009
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x404040FF
	.4byte 0x7000000A
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x404040FF
	.4byte 0x70000000
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x404040FF
	.4byte 0x70000004
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.asciz "TFHBase"
	.4byte 0x804D5D48
	.4byte 0
	.4byte 0x8016EF58  ;# ptr
	.4byte 0x8016EF64  ;# ptr
	.4byte 0x8016EF9C  ;# ptr
	.4byte 0x8016EFAC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5D68
	.4byte 0
	.4byte 0x8016EFE0  ;# ptr
	.4byte 0x8016EFEC  ;# ptr
	.4byte 0x8016EFF8  ;# ptr
	.4byte 0x8016F00C  ;# ptr
	.4byte 0x8016EFC8  ;# ptr
	.4byte 0x8016F020  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5D90
	.4byte 0
	.4byte 0x8016F078  ;# ptr
	.4byte 0x8016F084  ;# ptr
	.4byte 0x8016F090  ;# ptr
	.4byte 0x8016F0A4  ;# ptr
	.4byte 0x8016F0B8  ;# ptr
	.4byte 0x8016F0D0  ;# ptr
	.4byte 0x8016F060  ;# ptr
	.4byte 0x8016F0EC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5DC0
	.4byte 0
	.4byte 0x8016F148  ;# ptr
	.4byte 0x8016F154  ;# ptr
	.4byte 0x8016F160  ;# ptr
	.4byte 0x8016F174  ;# ptr
	.4byte 0x8016F188  ;# ptr
	.4byte 0x8016F1A0  ;# ptr
	.4byte 0x8016F130  ;# ptr
	.4byte 0x8016F1BC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5DF0
	.4byte 0
	.4byte 0x8016F218  ;# ptr
	.4byte 0x8016F224  ;# ptr
	.4byte 0x8016F230  ;# ptr
	.4byte 0x8016F244  ;# ptr
	.4byte 0x8016F258  ;# ptr
	.4byte 0x8016F270  ;# ptr
	.4byte 0x8016F200  ;# ptr
	.4byte 0x8016F28C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5E20
	.4byte 0
	.4byte 0x8016F2E8  ;# ptr
	.4byte 0x8016F2F4  ;# ptr
	.4byte 0x8016F300  ;# ptr
	.4byte 0x8016F314  ;# ptr
	.4byte 0x8016F328  ;# ptr
	.4byte 0x8016F340  ;# ptr
	.4byte 0x8016F2D0  ;# ptr
	.4byte 0x8016F35C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5E50
	.4byte 0
	.4byte 0x8016F3BC  ;# ptr
	.4byte 0x8016F3C8  ;# ptr
	.4byte 0x8016F3D4  ;# ptr
	.4byte 0x8016F3E8  ;# ptr
	.4byte 0x8016F3A0  ;# ptr
	.4byte 0x8016F3FC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5E78
	.4byte 0
	.4byte 0x8016F458  ;# ptr
	.4byte 0x8016F464  ;# ptr
	.4byte 0x8016F470  ;# ptr
	.4byte 0x8016F484  ;# ptr
	.4byte 0x8016F498  ;# ptr
	.4byte 0x8016F4B4  ;# ptr
	.4byte 0x8016F438  ;# ptr
	.4byte 0x8016F4D0  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5EA8
	.4byte 0
	.4byte 0x8016F538  ;# ptr
	.4byte 0x8016F544  ;# ptr
	.4byte 0x8016F550  ;# ptr
	.4byte 0x8016F564  ;# ptr
	.4byte 0x8016F578  ;# ptr
	.4byte 0x8016F594  ;# ptr
	.4byte 0x8016F518  ;# ptr
	.4byte 0x8016F5B0  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5ED8
	.4byte 0
	.4byte 0x8016F618  ;# ptr
	.4byte 0x8016F624  ;# ptr
	.4byte 0x8016F630  ;# ptr
	.4byte 0x8016F644  ;# ptr
	.4byte 0x8016F658  ;# ptr
	.4byte 0x8016F674  ;# ptr
	.4byte 0x8016F5F8  ;# ptr
	.4byte 0x8016F690  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5F08
	.4byte 0
	.4byte 0x8016F6F8  ;# ptr
	.4byte 0x8016F704  ;# ptr
	.4byte 0x8016F710  ;# ptr
	.4byte 0x8016F724  ;# ptr
	.4byte 0x8016F738  ;# ptr
	.4byte 0x8016F754  ;# ptr
	.4byte 0x8016F6D8  ;# ptr
	.4byte 0x8016F770  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5F38
	.4byte 0
	.4byte 0x8016F7D8  ;# ptr
	.4byte 0x8016F7E4  ;# ptr
	.4byte 0x8016F7F0  ;# ptr
	.4byte 0x8016F804  ;# ptr
	.4byte 0x8016F818  ;# ptr
	.4byte 0x8016F834  ;# ptr
	.4byte 0x8016F7B8  ;# ptr
	.4byte 0x8016F850  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5F68
	.4byte 0
	.4byte 0x8016F8BC  ;# ptr
	.4byte 0x8016F8C8  ;# ptr
	.4byte 0x8016F8D4  ;# ptr
	.4byte 0x8016F8E8  ;# ptr
	.4byte 0x8016F8FC  ;# ptr
	.4byte 0x8016F918  ;# ptr
	.4byte 0x8016F898  ;# ptr
	.4byte 0x8016F934  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5F98
	.4byte 0
	.4byte 0x8016F994  ;# ptr
	.4byte 0x8016F9A0  ;# ptr
	.4byte 0x8016F9AC  ;# ptr
	.4byte 0x8016F9C0  ;# ptr
	.4byte 0x8016F978  ;# ptr
	.4byte 0x8016F9D4  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5FC0
	.4byte 0
	.4byte 0x8016FA2C  ;# ptr
	.4byte 0x8016FA38  ;# ptr
	.4byte 0x8016FA44  ;# ptr
	.4byte 0x8016FA58  ;# ptr
	.4byte 0x8016FA10  ;# ptr
	.4byte 0x8016FA6C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D5FE8
	.4byte 0
	.4byte 0x8016FAC4  ;# ptr
	.4byte 0x8016FAD0  ;# ptr
	.4byte 0x8016FADC  ;# ptr
	.4byte 0x8016FAF0  ;# ptr
	.4byte 0x8016FAA8  ;# ptr
	.4byte 0x8016FB04  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6010
	.4byte 0
	.4byte 0x8016FB5C  ;# ptr
	.4byte 0x8016FB68  ;# ptr
	.4byte 0x8016FB74  ;# ptr
	.4byte 0x8016FB88  ;# ptr
	.4byte 0x8016FB40  ;# ptr
	.4byte 0x8016FB9C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6038
	.4byte 0
	.4byte 0x8016FBF8  ;# ptr
	.4byte 0x8016FC04  ;# ptr
	.4byte 0x8016FC10  ;# ptr
	.4byte 0x8016FC24  ;# ptr
	.4byte 0x8016FBD8  ;# ptr
	.4byte 0x8016FC38  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6060
	.4byte 0
	.4byte 0x8016FC9C  ;# ptr
	.4byte 0x8016FCA8  ;# ptr
	.4byte 0x8016FCB4  ;# ptr
	.4byte 0x8016FCC8  ;# ptr
	.4byte 0x8016FC78  ;# ptr
	.4byte 0x8016FCDC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6088
	.4byte 0
	.4byte 0x8016FD2C  ;# ptr
	.4byte 0x8016FD38  ;# ptr
	.4byte 0x8016FD18  ;# ptr
	.4byte 0x8016FD44  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D60A8
	.4byte 0
	.4byte 0x8016FD90  ;# ptr
	.4byte 0x8016FD9C  ;# ptr
	.4byte 0x8016FDA8  ;# ptr
	.4byte 0x8016FDBC  ;# ptr
	.4byte 0x8016FD78  ;# ptr
	.4byte 0x8016FDD0  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D60D0
	.4byte 0
	.4byte 0x8016FE28  ;# ptr
	.4byte 0x8016FE34  ;# ptr
	.4byte 0x8016FE40  ;# ptr
	.4byte 0x8016FE54  ;# ptr
	.4byte 0x8016FE10  ;# ptr
	.4byte 0x8016FE68  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D60F8
	.4byte 0
	.4byte 0x8016FEC0  ;# ptr
	.4byte 0x8016FECC  ;# ptr
	.4byte 0x8016FED8  ;# ptr
	.4byte 0x8016FEEC  ;# ptr
	.4byte 0x8016FEA8  ;# ptr
	.4byte 0x8016FF00  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6120
	.4byte 0
	.4byte 0x8016FF5C  ;# ptr
	.4byte 0x8016FF68  ;# ptr
	.4byte 0x8016FF74  ;# ptr
	.4byte 0x8016FF88  ;# ptr
	.4byte 0x8016FF40  ;# ptr
	.4byte 0x8016FF9C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6148
	.4byte 0
	.4byte 0x8016FFF4  ;# ptr
	.4byte 0x80170000  ;# ptr
	.4byte 0x8017000C  ;# ptr
	.4byte 0x80170020  ;# ptr
	.4byte 0x8016FFD8  ;# ptr
	.4byte 0x80170034  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6170
	.4byte 0
	.4byte 0x8017008C  ;# ptr
	.4byte 0x80170098  ;# ptr
	.4byte 0x801700A4  ;# ptr
	.4byte 0x801700B8  ;# ptr
	.4byte 0x80170070  ;# ptr
	.4byte 0x801700CC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6198
	.4byte 0
	.4byte 0x80170124  ;# ptr
	.4byte 0x80170130  ;# ptr
	.4byte 0x8017013C  ;# ptr
	.4byte 0x80170150  ;# ptr
	.4byte 0x80170108  ;# ptr
	.4byte 0x80170164  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D61C0
	.4byte 0
	.4byte 0x801701BC  ;# ptr
	.4byte 0x801701C8  ;# ptr
	.4byte 0x801701D4  ;# ptr
	.4byte 0x801701E8  ;# ptr
	.4byte 0x801701A0  ;# ptr
	.4byte 0x801701FC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D61E8
	.4byte 0
	.4byte 0x80170254  ;# ptr
	.4byte 0x80170260  ;# ptr
	.4byte 0x8017026C  ;# ptr
	.4byte 0x80170280  ;# ptr
	.4byte 0x80170238  ;# ptr
	.4byte 0x80170294  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6210
	.4byte 0
	.4byte 0x801702F0  ;# ptr
	.4byte 0x801702FC  ;# ptr
	.4byte 0x80170308  ;# ptr
	.4byte 0x8017031C  ;# ptr
	.4byte 0x801702D0  ;# ptr
	.4byte 0x80170330  ;# ptr

.global lbl_804D6238
lbl_804D6238:
	# ROM: 0x17A518
	.4byte 0xFFFFFFFF

.global lbl_804D623C
lbl_804D623C:
	# ROM: 0x17A51C
	.4byte 0xFFFFFF00
	.4byte 0x80171430  ;# ptr
	.4byte 0
	.4byte 0x8017143C  ;# ptr
	.4byte 0x80171450  ;# ptr
	.4byte 0x80171420  ;# ptr
	.4byte 0x8017145C  ;# ptr
	.4byte 0x801714D8  ;# ptr
	.4byte 0
	.4byte 0x801714B4  ;# ptr
	.4byte 0x801714E4  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6268
	.4byte 0
	.4byte 0x80171514  ;# ptr
	.4byte 0x80171524  ;# ptr
	.4byte 0x80171558  ;# ptr
	.4byte 0x8017156C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6288
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6298
	.4byte 0x80171610  ;# ptr
	.4byte 0x80171600  ;# ptr
	.4byte 0x8017161C  ;# ptr
	.4byte 0x80171648  ;# ptr
	.4byte 0x8017165C  ;# ptr
	.4byte 0x80171688  ;# ptr
	.4byte 0x80171694  ;# ptr
	.asciz "TFHNode"
	.asciz "TFHBase"
	.4byte 0x804D62C8
	.4byte 0
	.4byte 0x804D62C0
	.4byte 0x801716B0  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D62E0
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D62F0
	.4byte 0x801717BC  ;# ptr
	.4byte 0x801717A8  ;# ptr
	.4byte 0x801717C8  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6308
	.4byte 0
	.4byte 0x801717F8  ;# ptr
	.4byte 0x80171808  ;# ptr
	.4byte 0x80171814  ;# ptr
	.4byte 0x80171828  ;# ptr
	.4byte 0x80171864  ;# ptr
	.4byte 0x8017187C  ;# ptr
	.asciz "TFHNode"
	.4byte 0x804D6330
	.4byte 0x801718E4  ;# ptr

.global lbl_804D6340
lbl_804D6340:
	# ROM: 0x17A620
	.4byte 0x801718F0  ;# ptr
	.4byte 0x80171904  ;# ptr
	.4byte 0x801718CC  ;# ptr
	.4byte 0x80171918  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6350
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6360
	.4byte 0x80171968  ;# ptr
	.4byte 0x80171974  ;# ptr
	.4byte 0x80171988  ;# ptr
	.4byte 0x80171950  ;# ptr
	.4byte 0x8017199C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6380
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6390
	.4byte 0x801719E8  ;# ptr
	.4byte 0x801719F4  ;# ptr
	.4byte 0x80171A08  ;# ptr
	.4byte 0x801719D0  ;# ptr
	.4byte 0x80171A1C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D63B0
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D63C0
	.4byte 0x80171A68  ;# ptr
	.4byte 0x80171A74  ;# ptr
	.4byte 0x80171A88  ;# ptr
	.4byte 0x80171A50  ;# ptr
	.4byte 0x80171A9C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D63E0
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D63F0
	.4byte 0x80171AE8  ;# ptr
	.4byte 0x80171AF4  ;# ptr
	.4byte 0x80171B08  ;# ptr
	.4byte 0x80171AD0  ;# ptr
	.4byte 0x80171B1C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6410
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6420
	.4byte 0x80171B60  ;# ptr
	.4byte 0x80171B50  ;# ptr
	.4byte 0x80171B6C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6438
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6448
	.4byte 0x80171BB0  ;# ptr
	.4byte 0x80171BBC  ;# ptr
	.4byte 0x80171BCC  ;# ptr
	.4byte 0x80171B98  ;# ptr
	.4byte 0x80171BE0  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6468
	.4byte 0
	.4byte 0x80171C18  ;# ptr
	.4byte 0x80171C28  ;# ptr
	.4byte 0x80171C34  ;# ptr
	.4byte 0x80171C48  ;# ptr
	.4byte 0x80171C5C  ;# ptr
	.4byte 0x80171C74  ;# ptr
	.asciz "TFHNode"
	.4byte 0x804D6490
	.4byte 0x80171D04  ;# ptr
	.4byte 0x80171D10  ;# ptr
	.4byte 0x80171D20  ;# ptr
	.4byte 0x80171CF0  ;# ptr
	.4byte 0x80171D34  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D64B0
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D64C0
	.4byte 0x80171D7C  ;# ptr
	.4byte 0x80171D88  ;# ptr
	.4byte 0x80171D98  ;# ptr
	.4byte 0x80171D68  ;# ptr
	.4byte 0x80171DAC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D64E0
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D64F0
	.4byte 0x80171DF4  ;# ptr
	.4byte 0x80171E00  ;# ptr
	.4byte 0x80171E10  ;# ptr
	.4byte 0x80171DE0  ;# ptr
	.4byte 0x80171E24  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6510
	.4byte 0
	.4byte 0x80171E70  ;# ptr
	.4byte 0x80171E80  ;# ptr
	.4byte 0x80171E8C  ;# ptr
	.4byte 0x80171EA0  ;# ptr
	.4byte 0x80171EB4  ;# ptr
	.4byte 0x80171EC8  ;# ptr
	.4byte 0x80171E58  ;# ptr
	.4byte 0x80171EE4  ;# ptr
	.asciz "TFHNode"
	.4byte 0x804D6540
	.4byte 0x80171F94  ;# ptr
	.4byte 0x80171FA0  ;# ptr
	.4byte 0x80171FB0  ;# ptr
	.4byte 0x80171FC4  ;# ptr
	.4byte 0x80171FD8  ;# ptr
	.4byte 0x80171F78  ;# ptr
	.4byte 0x80171FF4  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6568
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6578
	.4byte 0x80172048  ;# ptr
	.4byte 0x80172054  ;# ptr
	.4byte 0x80172064  ;# ptr
	.4byte 0x80172078  ;# ptr
	.4byte 0x8017208C  ;# ptr
	.4byte 0x80172030  ;# ptr
	.4byte 0x801720A8  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D65A0
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D65B0
	.4byte 0x80172100  ;# ptr
	.4byte 0x8017210C  ;# ptr
	.4byte 0x8017211C  ;# ptr
	.4byte 0x801720E8  ;# ptr
	.4byte 0x80172130  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D65D0
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D65E0
	.4byte 0x80172178  ;# ptr
	.4byte 0x80172168  ;# ptr
	.4byte 0x80172184  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D65F8
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6608
	.4byte 0x801721C4  ;# ptr
	.4byte 0x801721B0  ;# ptr
	.4byte 0x801721D0  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6620
	.4byte 0
	.asciz "TFHNode"
	.4byte 0x804D6630
	.4byte 0x80172218  ;# ptr
	.4byte 0x80172224  ;# ptr
	.4byte 0x80172238  ;# ptr
	.4byte 0x80172200  ;# ptr
	.4byte 0x8017224C  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6650
	.4byte 0
	.4byte 0x80172280  ;# ptr
	.4byte 0x80172290  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6668
	.4byte 0
	.4byte 0x801722A8  ;# ptr
	.4byte 0x801722B8  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6680
	.4byte 0
	.4byte 0x801722E8  ;# ptr
	.4byte 0x801722F8  ;# ptr
	.4byte 0x801722D0  ;# ptr
	.4byte 0x80172304  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D66A0
	.4byte 0
	.4byte 0x8017235C  ;# ptr
	.4byte 0x8017236C  ;# ptr
	.4byte 0x80172378  ;# ptr
	.4byte 0x8017238C  ;# ptr
	.4byte 0x801723A0  ;# ptr
	.4byte 0x801723B8  ;# ptr
	.4byte 0x80172340  ;# ptr
	.4byte 0x801723D4  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D66D0
	.4byte 0
	.4byte 0x8017244C  ;# ptr
	.4byte 0x8017245C  ;# ptr
	.4byte 0x80172468  ;# ptr
	.4byte 0x8017247C  ;# ptr
	.4byte 0x80172490  ;# ptr
	.4byte 0x801724A8  ;# ptr
	.4byte 0x80172430  ;# ptr
	.4byte 0x801724C4  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6700
	.4byte 0
	.4byte 0x80172540  ;# ptr
	.4byte 0x80172550  ;# ptr
	.4byte 0x8017255C  ;# ptr
	.4byte 0x80172570  ;# ptr
	.4byte 0x80172584  ;# ptr
	.4byte 0x8017259C  ;# ptr
	.4byte 0x80172520  ;# ptr
	.4byte 0x801725B8  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6730
	.4byte 0
	.4byte 0x8017262C  ;# ptr
	.4byte 0x8017263C  ;# ptr
	.4byte 0x80172648  ;# ptr
	.4byte 0x8017265C  ;# ptr
	.4byte 0x80172670  ;# ptr
	.4byte 0x80172688  ;# ptr
	.4byte 0x80172610  ;# ptr
	.4byte 0x801726A4  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6760
	.4byte 0
	.4byte 0x8017271C  ;# ptr
	.4byte 0x8017272C  ;# ptr
	.4byte 0x80172738  ;# ptr
	.4byte 0x8017274C  ;# ptr
	.4byte 0x80172760  ;# ptr
	.4byte 0x80172778  ;# ptr
	.4byte 0x80172700  ;# ptr
	.4byte 0x80172794  ;# ptr

.global lbl_804D6790
lbl_804D6790:
	# ROM: 0x17AA70
	.4byte 0
	.asciz "TFHBase"
	.4byte 0x804D6794
	.4byte 0
	.4byte 0x80172890  ;# ptr
	.4byte 0x801728A0  ;# ptr
	.4byte 0x801728AC  ;# ptr
	.4byte 0x801728C0  ;# ptr
	.4byte 0x801728D4  ;# ptr
	.4byte 0x801728EC  ;# ptr
	.4byte 0x80172870  ;# ptr
	.4byte 0x80172908  ;# ptr
	.4byte 0
	.asciz "TFHBase"
	.4byte 0x804D67C8
	.4byte 0
	.4byte 0x801729A8  ;# ptr
	.4byte 0x801729B8  ;# ptr
	.4byte 0x801729C4  ;# ptr
	.4byte 0x801729D8  ;# ptr
	.4byte 0x801729EC  ;# ptr
	.4byte 0x80172A04  ;# ptr
	.4byte 0x80172990  ;# ptr
	.4byte 0x80172A20  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D67F8
	.4byte 0
	.4byte 0x80172AC4  ;# ptr
	.4byte 0x80172AD4  ;# ptr
	.4byte 0x80172AE0  ;# ptr
	.4byte 0x80172AF4  ;# ptr
	.4byte 0x80172B08  ;# ptr
	.4byte 0x80172B1C  ;# ptr
	.4byte 0x80172AA8  ;# ptr
	.4byte 0x80172B38  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6828
	.4byte 0
	.4byte 0x80172BB0  ;# ptr
	.4byte 0x80172BC0  ;# ptr
	.4byte 0x80172BCC  ;# ptr
	.4byte 0x80172BE0  ;# ptr
	.4byte 0x80172BF4  ;# ptr
	.4byte 0x80172C08  ;# ptr
	.4byte 0x80172C24  ;# ptr
	.4byte 0x80172C3C  ;# ptr
	.4byte 0x80172B90  ;# ptr
	.4byte 0x80172C60  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6860
	.4byte 0
	.4byte 0x80172CE8  ;# ptr
	.4byte 0x80172CF8  ;# ptr
	.4byte 0x80172D04  ;# ptr
	.4byte 0x80172D18  ;# ptr
	.4byte 0x80172D2C  ;# ptr
	.4byte 0x80172D40  ;# ptr
	.4byte 0x80172D5C  ;# ptr
	.4byte 0x80172D74  ;# ptr
	.4byte 0x80172CC8  ;# ptr
	.4byte 0x80172D98  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6898
	.4byte 0
	.4byte 0x80172E1C  ;# ptr
	.4byte 0x80172E2C  ;# ptr
	.4byte 0x80172E38  ;# ptr
	.4byte 0x80172E4C  ;# ptr
	.4byte 0x80172E60  ;# ptr
	.4byte 0x80172E74  ;# ptr
	.4byte 0x80172E00  ;# ptr
	.4byte 0x80172E90  ;# ptr
	.4byte 0x80172EE8  ;# ptr
	.4byte 0x80172EFC  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D68D0
	.4byte 0
	.4byte 0x80172F2C  ;# ptr
	.4byte 0x80172F3C  ;# ptr
	.4byte 0x80172F48  ;# ptr
	.4byte 0x80172F5C  ;# ptr
	.4byte 0x80172F18  ;# ptr
	.4byte 0x80172F70  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D68F8
	.4byte 0
	.4byte 0x80172FD0  ;# ptr
	.4byte 0x80172FE0  ;# ptr
	.4byte 0x80172FEC  ;# ptr
	.4byte 0x80173000  ;# ptr
	.4byte 0x80172FB8  ;# ptr
	.4byte 0x80173014  ;# ptr
	.asciz "TFHBase"
	.4byte 0x804D6920
	.4byte 0
	.4byte 0x8017307C  ;# ptr
	.4byte 0x8017308C  ;# ptr
	.4byte 0x80173098  ;# ptr
	.4byte 0x801730AC  ;# ptr
	.4byte 0x801730C0  ;# ptr
	.4byte 0x801730D8  ;# ptr
	.4byte 0x80173060  ;# ptr
	.4byte 0x801730F4  ;# ptr

.global lbl_804D6950
lbl_804D6950:
	# ROM: 0x17AC30
	.4byte 0x80173148  ;# ptr

.global lbl_804D6954
lbl_804D6954:
	# ROM: 0x17AC34
	.asciz "%08x\n"
	.balign 4

.global lbl_804D695C
lbl_804D695C:
	# ROM: 0x17AC3C
	.4byte 0x25730A00

.global __OSArenaLo
__OSArenaLo:
	# ROM: 0x17AC40
	.4byte 0xFFFFFFFF
	.4byte 0

.global __OSFpscrEnableBits
__OSFpscrEnableBits:
	# ROM: 0x17AC48
	.4byte 0x000000F8

.global lbl_804D696C
lbl_804D696C:
	# ROM: 0x17AC4C
	.4byte 0x0A000000

.global lbl_804D6970
lbl_804D6970:
	# ROM: 0x17AC50
	.4byte 0x25640000
	.4byte 0

.global lbl_804D6978
lbl_804D6978:
	# ROM: 0x17AC58
	.4byte 0xFFFF0000
	.4byte 0

.global lbl_804D6980
lbl_804D6980:
	# ROM: 0x17AC60
	.4byte 0x800522EC  ;# ptr
	.4byte 0

.global lbl_804D6988
lbl_804D6988:
	# ROM: 0x17AC68
	.4byte 0x801746F8  ;# ptr
	.4byte 0

.global lbl_804D6990
lbl_804D6990:
	# ROM: 0x17AC70
	.4byte 0x80174808  ;# ptr
	.4byte 0

.global lbl_804D6998
lbl_804D6998:
	# ROM: 0x17AC78
	.4byte 0
	.4byte 0x3F800000

.global lbl_804D69A0
lbl_804D69A0:
	# ROM: 0x17AC80
	.4byte 0x801749D0  ;# ptr

.global lbl_804D69A4
lbl_804D69A4:
	# ROM: 0x17AC84
	.asciz "vi.c"
	.balign 4
	.4byte 0

.global __PADVersion
__PADVersion:
	# ROM: 0x17AC90
	.4byte 0x80174DB8  ;# ptr

.global ResettingChan
ResettingChan:
	# ROM: 0x17AC94
	.4byte 0x00000020

.global XPatchBits
XPatchBits:
	# ROM: 0x17AC98
	.4byte 0xF0000000

.global AnalogMode
AnalogMode:
	# ROM: 0x17AC9C
	.4byte 0x00000300

.global Spec
Spec:
	# ROM: 0x17ACA0
	.4byte 0x00000005

.global MakeStatus
MakeStatus:
	# ROM: 0x17ACA4
	.4byte 0x8005AD60  ;# ptr

.global CmdReadOrigin
CmdReadOrigin:
	# ROM: 0x17ACA8
	.4byte 0x41000000

.global CmdCalibrate
CmdCalibrate:
	# ROM: 0x17ACAC
	.4byte 0x42000000

.global lbl_804D69D0
lbl_804D69D0:
	# ROM: 0x17ACB0
	.4byte 0x80174E10  ;# ptr
	.4byte 0

.global lbl_804D69D8
lbl_804D69D8:
	# ROM: 0x17ACB8
	.4byte 0x80174E58  ;# ptr
	.4byte 0

.global lbl_804D69E0
lbl_804D69E0:
	# ROM: 0x17ACC0
	.4byte 0x80174EA0  ;# ptr
	.4byte 0

.global lbl_804D69E8
lbl_804D69E8:
	# ROM: 0x17ACC8
	.4byte 0x80174EE8  ;# ptr
	.4byte 0

.global lbl_804D69F0
lbl_804D69F0:
	# ROM: 0x17ACD0
	.4byte 0x801750A8  ;# ptr
	.4byte 0

.global lbl_804D69F8
lbl_804D69F8:
	# ROM: 0x17ACD8
	.4byte 0x00000001
	.4byte 0

.global lbl_804D6A00
lbl_804D6A00:
	.2byte 0xFFFF

.global lbl_804D6A02
lbl_804D6A02:
	# ROM: 0x17ACE2
	.byte 0x1C, 0x00
	.4byte 0

.global lbl_804D6A08
lbl_804D6A08:
	# ROM: 0x17ACE8
	.4byte 0x801752A0  ;# ptr
	.4byte 0

.global lbl_804D6A10
lbl_804D6A10:
	# ROM: 0x17ACF0
	.4byte 0x00040102

.global lbl_804D6A14
lbl_804D6A14:
	# ROM: 0x17ACF4
	.4byte 0x00080102

.global lbl_804D6A18
lbl_804D6A18:
	# ROM: 0x17ACF8
	.4byte 0x000C0102
	.4byte 0

.global lbl_804D6A20
lbl_804D6A20:
	# ROM: 0x17AD00
	.4byte 0x80818283
	.4byte 0xA0A1A2A3

.global lbl_804D6A28
lbl_804D6A28:
	# ROM: 0x17AD08
	.4byte 0x84858687
	.4byte 0xA4A5A6A7

.global lbl_804D6A30
lbl_804D6A30:
	# ROM: 0x17AD10
	.4byte 0x88898A8B
	.4byte 0xA8A9AAAB

.global lbl_804D6A38
lbl_804D6A38:
	# ROM: 0x17AD18
	.4byte 0x8C8D8E8F
	.4byte 0xACADAEAF

.global lbl_804D6A40
lbl_804D6A40:
	# ROM: 0x17AD20
	.4byte 0x90919293
	.4byte 0xB0B1B2B3

.global lbl_804D6A48
lbl_804D6A48:
	# ROM: 0x17AD28
	.4byte 0x94959697
	.4byte 0xB4B5B6B7

.global lbl_804D6A50
lbl_804D6A50:
	# ROM: 0x17AD30
	.4byte 0x98999A9B
	.4byte 0xB8B9BABB

.global lbl_804D6A58
lbl_804D6A58:
	# ROM: 0x17AD38
	.4byte 0x00040105
	.4byte 0x02060000

.global lbl_804D6A60
lbl_804D6A60:
	# ROM: 0x17AD40
	.4byte 0x80175B68  ;# ptr

.global lbl_804D6A64
lbl_804D6A64:
	# ROM: 0x17AD44
	.4byte 0

.global lbl_804D6A68
lbl_804D6A68:
	# ROM: 0x17AD48
	.4byte 0x2C2C0000

.global lbl_804D6A6C
lbl_804D6A6C:
	# ROM: 0x17AD4C
	.4byte 0x31000000

.global lbl_804D6A70
lbl_804D6A70:
	# ROM: 0x17AD50
	.4byte 0x2D000000
	.4byte 0

.global lbl_804D6A78
lbl_804D6A78:
	# ROM: 0x17AD58
	.4byte 0x00000001
	.4byte 0

.global lbl_804D6A80
lbl_804D6A80:
	# ROM: 0x17AD60
	.asciz "dvdfs.c"

.global lbl_804D6A88
lbl_804D6A88:
	# ROM: 0x17AD68
	.4byte 0x80175CF8  ;# ptr

.global lbl_804D6A8C
lbl_804D6A8C:
	# ROM: 0x17AD6C
	.4byte 0x00000001

.global lbl_804D6A90
lbl_804D6A90:
	# ROM: 0x17AD70
	.4byte 0x8006EF3C  ;# ptr

.global lbl_804D6A94
lbl_804D6A94:
	# ROM: 0x17AD74
	.asciz "dvd.c"
	.balign 4

.global lbl_804D6A9C
lbl_804D6A9C:
	# ROM: 0x17AD7C
	.4byte 0xFFFFFFFF

.global lbl_804D6AA0
lbl_804D6AA0:
	# ROM: 0x17AD80
	.4byte 0x0A000000

.global lbl_804D6AA4
lbl_804D6AA4:
	# ROM: 0x17AD84
	.4byte 0x4F464600

.global lbl_804D6AA8
lbl_804D6AA8:
	# ROM: 0x17AD88
	.4byte 0x4F4E0000
	.4byte 0

.global lbl_804D6AB0
lbl_804D6AB0:
	# ROM: 0x17AD90
	.4byte 0xFFFF0000
	.4byte 0

.global lbl_804D6AB8
lbl_804D6AB8:
	.2byte 0x1
.global lbl_804D6ABA
lbl_804D6ABA:
	.2byte 0x8

.global lbl_804D6ABC
lbl_804D6ABC:
	# ROM: 0x17AD9C
	.4byte 0x00080000

.global lbl_804D6AC0
lbl_804D6AC0:
	# ROM: 0x17ADA0
	.4byte 0x00002000

.global lbl_804D6AC4
lbl_804D6AC4:
	# ROM: 0x17ADA4
	.4byte 0x00010000

.global lbl_804D6AC8
lbl_804D6AC8:
	# ROM: 0x17ADA8
	.4byte 0x00002000

.global lbl_804D6ACC
lbl_804D6ACC:
	# ROM: 0x17ADAC
	.4byte 0x00002000

.global lbl_804D6AD0
lbl_804D6AD0:
	# ROM: 0x17ADB0
	.4byte 0x00200000
	.4byte 0

.global lbl_804D6AD8
lbl_804D6AD8:
	# ROM: 0x17ADB8
	.4byte 0x00000010
	.4byte 0

.global lbl_804D6AE0
lbl_804D6AE0:
	# ROM: 0x17ADC0
	.4byte 0x00060000
	.4byte 0

.global lbl_804D6AE8
lbl_804D6AE8:
	# ROM: 0x17ADC8
	.4byte 0xFFFF0000

.global lbl_804D6AEC
lbl_804D6AEC:
	# ROM: 0x17ADCC
	.4byte 0xFFFFFFFE

.global lbl_804D6AF0
lbl_804D6AF0:
	# ROM: 0x17ADD0
	.4byte 0x04081020
	.4byte 0x40000000

.global lbl_804D6AF8
lbl_804D6AF8:
	# ROM: 0x17ADD8
	.4byte 0x03080B13
	.4byte 0x1E310000

.global lbl_804D6B00
lbl_804D6B00:
	# ROM: 0x17ADE0
	.4byte 0xFFFF0000
	.4byte 0

.global lbl_804D6B08
lbl_804D6B08:
	# ROM: 0x17ADE8
	.4byte 0x801765C0  ;# ptr

.global lbl_804D6B0C
lbl_804D6B0C:
	# ROM: 0x17ADEC
	.4byte 0x4F4B0000

.global lbl_804D6B10
lbl_804D6B10:
	# ROM: 0x17ADF0
	.asciz "CONNECT"

.global lbl_804D6B18
lbl_804D6B18:
	# ROM: 0x17ADF8
	.asciz "+MCR: "
	.balign 4

.global lbl_804D6B20
lbl_804D6B20:
	# ROM: 0x17AE00
	.asciz "+DR: "
	.balign 4

.global lbl_804D6B28
lbl_804D6B28:
	# ROM: 0x17AE08
	.asciz "+ER: "
	.balign 4

.global lbl_804D6B30
lbl_804D6B30:
	# ROM: 0x17AE10
	.asciz "+MRR: "
	.balign 4

.global lbl_804D6B38
lbl_804D6B38:
	# ROM: 0x17AE18
	.asciz "%d,%d"
	.balign 4

.global lbl_804D6B40
lbl_804D6B40:
	# ROM: 0x17AE20
	.asciz "ATE0"
	.balign 4

.global lbl_804D6B48
lbl_804D6B48:
	# ROM: 0x17AE28
	.asciz "ERROR"
	.balign 4

.global lbl_804D6B50
lbl_804D6B50:
	# ROM: 0x17AE30
	.asciz "BUSY"
	.balign 4

.global lbl_804D6B58
lbl_804D6B58:
	# ROM: 0x17AE38
	.asciz "RING"
	.balign 4

.global lbl_804D6B60
lbl_804D6B60:
	# ROM: 0x17AE40
	.asciz "DELAYED"

.global lbl_804D6B68
lbl_804D6B68:
	# ROM: 0x17AE48
	.4byte 0x00000001

.global lbl_804D6B6C
lbl_804D6B6C:
	# ROM: 0x17AE4C
	.4byte 0x30300000

.global lbl_804D6B70
lbl_804D6B70:
	# ROM: 0x17AE50
	.4byte 0x42350000

.global lbl_804D6B74
lbl_804D6B74:
	# ROM: 0x17AE54
	.asciz "AT+GCI="

.global lbl_804D6B7C
lbl_804D6B7C:
	# ROM: 0x17AE5C
	.4byte 0x0D000000

.global lbl_804D6B80
lbl_804D6B80:
	# ROM: 0x17AE60
	.4byte 0x41545A0D
	.4byte 0

.global lbl_804D6B88
lbl_804D6B88:
	# ROM: 0x17AE68
	.4byte 0x41544530
	.4byte 0x0D000000
	.4byte 0x5A000000
	.4byte 0x2B560000
	.4byte 0x2B470000
	.4byte 0x26460000
	.4byte 0x26590000
	.4byte 0x26570000
	.4byte 0x265A0000
	.4byte 0x45000000
	.4byte 0x51000000
	.4byte 0x56000000
	.4byte 0x57000000
	.4byte 0x4C000000
	.4byte 0x4D000000
	.4byte 0x26560000
	.4byte 0x5C560000
	.4byte 0x2A420000
	.4byte 0x2A440000
	.asciz "+MS?"
	.balign 4
	.4byte 0x23554400
	.4byte 0x53323400
	.4byte 0x53393500
	.4byte 0x21000000

.global lbl_804D6BEC
lbl_804D6BEC:
	# ROM: 0x17AECC
	.4byte 0x41540000

.global lbl_804D6BF0
lbl_804D6BF0:
	# ROM: 0x17AED0
	.4byte 0x41544830
	.4byte 0x0D000000

.global lbl_804D6BF8
lbl_804D6BF8:
	# ROM: 0x17AED8
	.asciz "ATDT"
	.balign 4

.global lbl_804D6C00
lbl_804D6C00:
	# ROM: 0x17AEE0
	.4byte 0x41542650
	.4byte 0x300D0000

.global lbl_804D6C08
lbl_804D6C08:
	# ROM: 0x17AEE8
	.asciz "ATDP"
	.balign 4

.global lbl_804D6C10
lbl_804D6C10:
	# ROM: 0x17AEF0
	.4byte 0x41542650
	.4byte 0x320D0000
	.4byte 0
	.4byte 0x56393000
	.4byte 0x56333400
	.asciz "V32B"
	.balign 4
	.asciz "V22B"
	.balign 4

.global lbl_804D6C34
lbl_804D6C34:
	# ROM: 0x17AF14
	.asciz "AT+MS="
	.balign 4
	.4byte 0x33000000
	.4byte 0x34000000
	.4byte 0x30000000

.global lbl_804D6C48
lbl_804D6C48:
	# ROM: 0x17AF28
	.asciz "AT+ES="
	.balign 4
	.4byte 0x32000000
	.4byte 0x31000000

.global lbl_804D6C58
lbl_804D6C58:
	# ROM: 0x17AF38
	.asciz "AT%C"
	.balign 4

.global lbl_804D6C60
lbl_804D6C60:
	# ROM: 0x17AF40
	.4byte 0x41545800
	.4byte 0

.global lbl_804D6C68
lbl_804D6C68:
	# ROM: 0x17AF48
	.4byte 0x801766B8  ;# ptr

.global lbl_804D6C6C
lbl_804D6C6C:
	.4byte 0xFFFFFFFF
	.2byte 0xFFFF
.global lbl_804D6C72
lbl_804D6C72:
	.2byte 0xD107

.global lbl_804D6C74
lbl_804D6C74:
	# ROM: 0x17AF54
	.4byte 0x4E000000

.global lbl_804D6C78
lbl_804D6C78:
	# ROM: 0x17AF58
	.4byte 0x00000001
	.4byte 0

.global lbl_804D6C80
lbl_804D6C80:
	# ROM: 0x17AF60
	.4byte 0x00000001
	.4byte 0x00020000

.global lbl_804D6C88
lbl_804D6C88:
	# ROM: 0x17AF68
	.4byte 0x00000001
	.4byte 0x00020000

.global lbl_804D6C90
lbl_804D6C90:
	# ROM: 0x17AF70
	.4byte 0x1EC00000
	.4byte 0

.global fragmentID
fragmentID:
	# ROM: 0x17AF78
	.4byte 0xFFFFFFFE
	.4byte 0

.global lbl_804D6CA0
lbl_804D6CA0:
	# ROM: 0x17AF80
	.4byte 0
	.4byte 0

.global lbl_804D6CA8
lbl_804D6CA8:
	# ROM: 0x17AF88
	.4byte 0x00000001
	.4byte 0

.global lbl_804D6CB0
lbl_804D6CB0:
	# ROM: 0x17AF90
	.4byte 0x7FFFFFFF

.global __float_huge
__float_huge:
	# ROM: 0x17AF94
	.4byte 0x7F800000

.global lbl_804D6CB8
lbl_804D6CB8:
	# ROM: 0x17AF98
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804D6CC0
lbl_804D6CC0:
	# ROM: 0x17AFA0
	.4byte 0x7FF00000
	.4byte 0

.global lbl_804D6CC8
lbl_804D6CC8:
	# ROM: 0x17AFA8
	.4byte 0x00100000
	.4byte 0

.global lbl_804D6CD0
lbl_804D6CD0:
	# ROM: 0x17AFB0
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804D6CD8
lbl_804D6CD8:
	# ROM: 0x17AFB8
	.4byte 0x00800000

.global lbl_804D6CDC
lbl_804D6CDC:
	# ROM: 0x17AFBC
	.4byte 0x7F7FFFFF

.global lbl_804D6CE0
lbl_804D6CE0:
	# ROM: 0x17AFC0
	.4byte 0x34000000
	.4byte 0

.global lbl_804D6CE8
lbl_804D6CE8:
	.byte 0x80
