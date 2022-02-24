# Linker order for every file, passed to the Metrowerks linker.

# main dol sources
SOURCES :=\
    $(BUILD_DIR)/asm/main/init.o\
    $(BUILD_DIR)/asm/main/text.o\
    $(BUILD_DIR)/asm/main/extabindex.o\
    $(BUILD_DIR)/asm/main/ctors.o\
    $(BUILD_DIR)/asm/main/dtors.o\
    $(BUILD_DIR)/asm/main/rodata.o\
    $(BUILD_DIR)/asm/main/data.o\
    $(BUILD_DIR)/asm/main/sdata.o\
    $(BUILD_DIR)/asm/main/sbss.o\
    $(BUILD_DIR)/asm/main/sdata2.o\
    $(BUILD_DIR)/asm/main/sbss2.o\
    $(BUILD_DIR)/asm/main/bss.o\
