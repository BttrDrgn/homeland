#---------------------------------------------------
# HomeLand Disassembly Makefile
#---------------------------------------------------

ifneq (,$(findstring Windows,$(OS)))
  EXE := .exe
else
  WINE ?= wine
endif

# Unknown what actual compiler version it uses
MWCC_VERSION = 2.6
MWLD_VERSION := 2.6

VERBOSE ?= 0

# Don't echo build commands unless VERBOSE is set
ifeq ($(VERBOSE),0)
  QUIET := @
endif

# default recipe
default: all

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
CC      = $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
LD      := $(WINE) tools/mwcc_compiler/$(MWLD_VERSION)/mwldeppc.exe
OBJCOPY := $(DEVKITPPC)/bin/powerpc-eabi-objcopy
OBJDUMP := $(DEVKITPPC)/bin/powerpc-eabi-objdump
GCC     := $(DEVKITPPC)/bin/powerpc-eabi-gcc
HOSTCC  := cc
SHA1SUM := sha1sum
ELF2DOL := tools/elf2dol$(EXE)
ELF2REL := tools/elf2rel$(EXE)

# Options
INCLUDE_DIRS := src
SYSTEM_INCLUDE_DIRS := include

INCLUDES := -i include/
ASM_INCLUDES := -I include/

RUNTIME_INCLUDE_DIRS := libraries/PowerPC_EABI_Support/Runtime/Inc

#ASFLAGS     := -mgekko -I asm
ASFLAGS     := -mgekko $(ASM_INCLUDES)
CFLAGS      := -O4,p -inline auto -nodefaults -proc gekko -fp hard -Cpp_exceptions off -enum int -warn pragmas -pragma 'cats off' $(INCLUDES)
CPPFLAGS     = $(addprefix -i ,$(INCLUDE_DIRS) $(dir $^)) -I- $(addprefix -i ,$(SYSTEM_INCLUDE_DIRS))
ifeq ($(VERBOSE),1)
# this set of LDFLAGS outputs warnings.
DOL_LDFLAGS := -fp hard -nodefaults
endif
ifeq ($(VERBOSE),0)
# this set of LDFLAGS generates no warnings.
DOL_LDFLAGS := -fp hard -nodefaults -w off
endif

ifeq ($(VERBOSE),1)
# this set of LDFLAGS outputs warnings.
REL_LDFLAGS := -nodefaults -fp hard -r -m _prolog -g
endif
ifeq ($(VERBOSE),0)
# this set of LDFLAGS generates no warnings.
REL_LDFLAGS := -nodefaults -fp hard -r -m _prolog -g -w off
endif

HOSTCFLAGS   := -Wall -O3 -s

CC_CHECK     := $(GCC) -Wall -Wextra -Wno-unused -Wno-main -Wno-unknown-pragmas -Wno-unused-variable -Wno-unused-parameter -Wno-sign-compare -Wno-missing-field-initializers -Wno-char-subscripts -fsyntax-only -fno-builtin -nostdinc $(addprefix -I ,$(INCLUDE_DIRS) $(SYSTEM_INCLUDE_DIRS)) -DNONMATCHING

ifeq ($(VERBOSE),0)
# this set of ASFLAGS generates no warnings.
ASFLAGS += -W
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

NAME := homeland
VERSION ?= final

LINK_INFO_DIR := linker
BUILD_DIR := build/$(NAME).$(VERSION)
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/main.map

DOL_LCF := $(LINK_INFO_DIR)/static.lcf
REL_LCF := $(LINK_INFO_DIR)/partial.lcf

include $(LINK_INFO_DIR)/obj_files_main.mk

O_FILES :=	$(SOURCES)
ALL_DIRS := $(sort $(dir $(O_FILES)))
ALL_O_FILES := $(O_FILES)
DUMMY != mkdir -p $(ALL_DIRS)
$(ELF): $(O_FILES)

# start.rel sources
# include $(LINK_INFO_DIR)/obj_files_main.mk
SOURCES := \
	 asm/start/start.s \

O_FILES := $(addsuffix .o,$(basename $(SOURCES)))
ALL_O_FILES += $(O_FILES)
start.plf: $(O_FILES)
start.rel: ELF2REL_ARGS := -i 1 -o 0x0 -l 0x3A -c 16
ALL_RELS += start.rel
ALL_REL_MAPS += start.map
ALL_REL_ELFS += start.plf

# # alone.rel sources
SOURCES := \
	 asm/alone/alone.s \

O_FILES := $(addsuffix .o,$(basename $(SOURCES)))
ALL_O_FILES += $(O_FILES)
alone.plf: $(O_FILES)
alone.rel: ELF2REL_ARGS := -i 2 -o 0x3A -l 0x3A -c 16
ALL_RELS += alone.rel
ALL_REL_MAPS += alone.map
ALL_REL_ELFS += alone.plf

# client.rel sources
SOURCES := \
	 asm/client/client.s \

O_FILES := $(addsuffix .o,$(basename $(SOURCES)))
ALL_O_FILES += $(O_FILES)
client.plf: $(O_FILES)
client.rel: ELF2REL_ARGS := -i 3 -o 0x74 -l 0x3C -c 18
ALL_RELS += client.rel
ALL_REL_MAPS += client.map
ALL_REL_ELFS += client.plf

# server.rel sources
SOURCES := \
	 asm/server/server.s \

O_FILES := $(addsuffix .o,$(basename $(SOURCES)))
ALL_O_FILES += $(O_FILES)
server.plf: $(O_FILES)
server.rel: ELF2REL_ARGS := -i 4 -o 0xB0 -l 0x3C -c 18
ALL_RELS += server.rel
ALL_REL_MAPS += server.map
ALL_REL_ELFS += server.plf

$(BUILD_DIR)/src/main/Dolphin/__start.o: MWCC_VERSION := 1.2.5

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

.PHONY: all default

all: $(DOL) $(ALL_RELS)
	$(QUIET) $(SHA1SUM) -c sha1/$(NAME).$(VERSION).sha1

# static module (.dol file)
%.dol: %.elf $(ELF2DOL)
	@echo Converting $< to $@
	$(QUIET) $(ELF2DOL) $(filter %.elf,$^) $@

%.elf: $(DOL_LCF)
	@echo Linking static module $@
	$(QUIET) $(LD) -lcf $(DOL_LCF) $(DOL_LDFLAGS) $(filter %.o,$^) -map $(@:.elf=.map) -o $@

# relocatable module (.rel file)
%.rel: %.plf $(ELF) $(ELF2REL)
	@echo Converting $(filter %.plf,$^) to $@
	$(QUIET) $(ELF2REL) $(filter %.plf,$^) $(ELF) $@ $(ELF2REL_ARGS)

%.plf: $(REL_LCF)
	@echo Linking relocatable module $@
	$(QUIET) $(LD) -lcf $(REL_LCF) $(REL_LDFLAGS) $(filter %.o,$^) -map $(@:.plf=.map) -o $@

# Canned recipe for compiling C or C++
# Uses CC_CHECK to check syntax and generate dependencies, compiles the file,
# then disassembles the object file
define COMPILE =
@echo Compiling $<
$(QUIET) $(CC_CHECK) -MMD -MF $(@:.o=.dep) -MT $@ $<
$(QUIET) $(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<
$(QUIET) $(OBJDUMP) -Drz $@ > $(@:.o=.dump)
endef

# relocatable modules must not use the small data sections
%.plf: CFLAGS += -sdata 0 -sdata2 0 -g

$(BUILD_DIR)/%.o: %.c
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<
$(BUILD_DIR)/%.o: %.cpp
	$(COMPILE)
$(BUILD_DIR)/%.o: %.cp
	$(COMPILE)

$(BUILD_DIR)/%.o: %.s
	@echo Assembling $<
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<

clean:
	$(RM) $(DOL) $(ELF) $(MAP) $(ALL_RELS) $(ALL_REL_MAPS) $(ALL_REL_ELFS) $(ELF2DOL) $(ELF2REL)
	find . -name '*.o' -exec rm {} +
	find . -name '*.dep' -exec rm {} +
	find . -name '*.dump' -exec rm {} +

# Automatic dependency files
DEP_FILES := $(addsuffix .dep,$(basename $(ALL_O_FILES)))
-include $(DEP_FILES)

#-------------------------------------------------------------------------------
# Tool Recipes
#-------------------------------------------------------------------------------

$(ELF2DOL): tools/elf2dol.c
	@echo Building tool $@
	$(QUIET) $(HOSTCC) $(HOSTCFLAGS) -o	 $@ $^

$(ELF2REL): tools/elf2rel.c
	@echo Building tool $@
	$(QUIET) $(HOSTCC) $(HOSTCFLAGS) -o $@ $^

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true