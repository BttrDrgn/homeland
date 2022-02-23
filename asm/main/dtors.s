.section .dtors, "wa"  # 0x800E2760 - 0x800E2780
.global __destroy_global_chain_reference
__destroy_global_chain_reference:
	.4byte func_800CD438
.global __fini_cpp_exceptions_reference
__fini_cpp_exceptions_reference:
	.4byte lbl_800CDE94
.global __destroy_global_chain_reference_1
__destroy_global_chain_reference_1:
	.4byte func_800CD438
