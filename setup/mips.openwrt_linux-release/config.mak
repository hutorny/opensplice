SPECIAL      = RELEASE

ifeq ($(FORCE_DEBUG_SYMBOLS), no)
# Compiler flags
CFLAGS_OPT       = -O3 -fno-strict-aliasing
CFLAGS_DEBUG     = -DNDEBUG
JCFLAGS          = -g -nowarn

#Csc compiler flags
CSFLAGS_DEBUG    =
else
# Basically the release setting so it builds the core in release mode
# but also remove optimization and add debug symbols
CFLAGS_OPT       = -O0
CFLAGS_DEBUG     = -g
JCFLAGS          = -g

#Csc compiler flags
CSFLAGS_DEBUG    =
endif
ifdef OSPL_OUTER_HOME
include $(OSPL_OUTER_HOME)/setup/mips.openwrt_linux-default.mak
else
include $(OSPL_HOME)/setup/mips.openwrt_linux-default.mak
endif
