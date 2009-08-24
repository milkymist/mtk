#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:EDK_projects/te0304/system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

XILINX_EDK_DIR = /opt/Xilinx/10.1/EDK
NON_CYG_XILINX_EDK_DIR = /opt/Xilinx/10.1/EDK

SYSTEM = system

MHSFILE = system.mhs

MSSFILE = system.mss

FPGA_ARCH = spartan3e

DEVICE = xc3s1600efg320-4

LANGUAGE = vhdl

SEARCHPATHOPT =  -lp .

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(SUBMODULE_OPT)

LIBGEN_OPTIONS = -mhs $(MHSFILE) -p $(DEVICE) $(SEARCHPATHOPT) \
                   $(MICROBLAZE_0_LIBG_OPT)

VPGEN_OPTIONS = -p $(DEVICE) $(SEARCHPATHOPT)

MANAGE_FASTRT_OPTIONS = -reduce_fanout no

OBSERVE_PAR_OPTIONS = -error no

DOPE_TEST_OUTPUT_DIR = dope_test
DOPE_TEST_OUTPUT = $(DOPE_TEST_OUTPUT_DIR)/executable.elf

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

MICROBLAZE_0_BOOTLOOP = $(BOOTLOOP_DIR)/microblaze_0.elf
MICROBLAZE_0_XMDSTUB = microblaze_0/code/xmdstub.elf

BRAMINIT_ELF_FILES =  
BRAMINIT_ELF_FILE_ARGS =  

ALL_USER_ELF_FILES = $(DOPE_TEST_OUTPUT) 

SIM_CMD = vsim

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.do

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.do

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.do

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

MIX_LANG_SIM_OPT = -mixed yes

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(LANGUAGE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_FILE_ARGS) $(MIX_LANG_SIM_OPT)  -s mti

MICROBLAZE_0_XMDSTUB = microblaze_0/code/xmdstub.elf

LIBRARIES =  \
       microblaze_0/lib/libxil.a 
VPEXEC = virtualplatform/vpexec

LIBSCLEAN_TARGETS = microblaze_0_libsclean 

PROGRAMCLEAN_TARGETS = dope_test_programclean 

CORE_STATE_DEVELOPMENT_FILES = 

WRAPPER_NGC_FILES = implementation/microblaze_0_wrapper.ngc \
implementation/mb_plb_wrapper.ngc \
implementation/ilmb_wrapper.ngc \
implementation/dlmb_wrapper.ngc \
implementation/dlmb_cntlr_wrapper.ngc \
implementation/ilmb_cntlr_wrapper.ngc \
implementation/lmb_bram_wrapper.ngc \
implementation/rs232_wrapper.ngc \
implementation/ddr_sdram_wrapper.ngc \
implementation/xps_timer_1_wrapper.ngc \
implementation/clock_generator_0_wrapper.ngc \
implementation/debug_module_wrapper.ngc \
implementation/proc_sys_reset_0_wrapper.ngc \
implementation/xps_intc_0_wrapper.ngc \
implementation/plb_ps2_controller_0_wrapper.ngc \
implementation/plb_npi_vga_controller_0_wrapper.ngc \
implementation/led_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

#################################################################
# SOFTWARE APPLICATION DOPE_TEST
#################################################################

DOPE_TEST_SOURCES = ../../dope-embedded/test/colors.c ../../dope-embedded/test/disp_img.c ../../dope-embedded/test/dopecmd.c ../../dope-embedded/test/grid.c ../../dope-embedded/test/led.c ../../dope-embedded/test/settings.c ../../dope-embedded/test/slides.c ../../dope-embedded/test/slideshow.c ../../dope-embedded/test/test.c ../../dope-embedded/test/te0304/platform.c 

DOPE_TEST_HEADERS = ../../dope-embedded/test/colors.h ../../dope-embedded/test/disp_img.h ../../dope-embedded/test/dopecmd.h ../../dope-embedded/test/grid.h ../../dope-embedded/test/led.h ../../dope-embedded/test/platform.h ../../dope-embedded/test/settings.h ../../dope-embedded/test/slides.h ../../dope-embedded/test/slideshow.h ../../dope-embedded/test/util.h 

DOPE_TEST_CC = mb-gcc
DOPE_TEST_CC_SIZE = mb-size
DOPE_TEST_CC_OPT = -O2
DOPE_TEST_CFLAGS = 
DOPE_TEST_CC_SEARCH = # -B
DOPE_TEST_LIBPATH = -L./microblaze_0/lib/   -L../../dope-embedded/lib/te0304 
DOPE_TEST_INCLUDES = -I./microblaze_0/include/  -I../../dope-embedded/test/   -I../../dope-embedded/include 
DOPE_TEST_LFLAGS =   -ldope 
DOPE_TEST_LINKER_SCRIPT = dope.ld
DOPE_TEST_LINKER_SCRIPT_FLAG = -Wl,-T -Wl,$(DOPE_TEST_LINKER_SCRIPT) 
DOPE_TEST_CC_DEBUG_FLAG =  -g 
DOPE_TEST_CC_PROFILE_FLAG = # -pg
DOPE_TEST_CC_GLOBPTR_FLAG= # -mxl-gp-opt
DOPE_TEST_MODE = executable
DOPE_TEST_LIBG_OPT = -$(DOPE_TEST_MODE) microblaze_0
DOPE_TEST_CC_INFERRED_FLAGS= -mxl-soft-mul -mxl-barrel-shift -mxl-pattern-compare -mno-xl-soft-div -mcpu=v7.10.d 
DOPE_TEST_CC_START_ADDR_FLAG=  #  # -Wl,-defsym -Wl,_TEXT_START_ADDR=
DOPE_TEST_CC_STACK_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_STACK_SIZE=
DOPE_TEST_CC_HEAP_SIZE_FLAG=  #  # -Wl,-defsym -Wl,_HEAP_SIZE=
DOPE_TEST_OTHER_CC_FLAGS= $(DOPE_TEST_CC_GLOBPTR_FLAG)  \
                  $(DOPE_TEST_CC_START_ADDR_FLAG) $(DOPE_TEST_CC_STACK_SIZE_FLAG) $(DOPE_TEST_CC_HEAP_SIZE_FLAG)  \
                  $(DOPE_TEST_CC_INFERRED_FLAGS)  \
                  $(DOPE_TEST_LINKER_SCRIPT_FLAG) $(DOPE_TEST_CC_DEBUG_FLAG) $(DOPE_TEST_CC_PROFILE_FLAG) 
