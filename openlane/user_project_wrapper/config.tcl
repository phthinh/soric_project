# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# Base Configurations. Don't Touch
# section begin

set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

# YOU ARE NOT ALLOWED TO CHANGE ANY VARIABLES DEFINED IN THE FIXED WRAPPER CFGS 
source $::env(CARAVEL_ROOT)/openlane/user_project_wrapper_empty/fixed_wrapper_cfgs.tcl

# YOU CAN CHANGE ANY VARIABLES DEFINED IN THE DEFAULT WRAPPER CFGS BY OVERRIDING THEM IN THIS CONFIG.TCL
source $::env(CARAVEL_ROOT)/openlane/user_project_wrapper_empty/default_wrapper_cfgs.tcl

set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) user_project_wrapper
#section end

# User Configurations
set ::env(ROUTING_CORES)   8

## Source Verilog Files
set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/user_project_wrapper.v" 
#	$script_dir/../../verilog/rtl/soric_core.v"

## Clock configurations
set ::env(CLOCK_PORT)   "wb_clk_i"
#set ::env(CLOCK_NET)    "wb_clk_i"
set ::env(CLOCK_PERIOD) "40"

## Internal Macros
### Macro PDN Connections
set ::env(FP_PDN_MACRO_HOOKS) "\
	soric_soc_i vccd1 vssd1 \
    ibex_core_1 vccd1 vssd1 \
	ibex_core_2 vccd1 vssd1 \
	sram_1_i vccd1 vssd1 \
	sram_2_i vccd1 vssd1 \
	sram_3_i vccd1 vssd1 \
	sram_4_i vccd1 vssd1 \
	"

### Macro Placement
set ::env(MACRO_PLACEMENT_CFG) $script_dir/macro.cfg

# disable pdn check nodes becuase it hangs with multiple power domains.
# any issue with pdn connections will be flagged with LVS so it is not a critical check.
set ::env(FP_PDN_CHECK_NODES) 0
set ::env(FP_PDN_ENABLE_RAILS) 0

## Placement
#set ::env(PL_TARGET_DENSITY)     0.1
# Increase diamanod search height so that the detailed placement can legalize cells overlapping with big macros
#set ::env(PL_DIAMOND_SEARCH_HEIGHT) 400	
#set ::env(CELL_PAD)              0

# The following is because there are no std cells in the example wrapper project.
set ::env(SYNTH_TOP_LEVEL) 1
set ::env(PL_RANDOM_GLB_PLACEMENT) 1

set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_BUFFER_INPUT_PORTS) 0
set ::env(PL_RESIZER_BUFFER_OUTPUT_PORTS) 0

#set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.2
#set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.2
set ::env(GLB_RT_MAXLAYER) 5

#Flexbex size 900x900
#SRAM SIZE 683.1 X 416.54  => 690x420
set ::env(GLB_RT_OBS) " \
	li1   400  750 1083.1 1166.54,\
	met1  400  750 1083.1 1166.54,\
	met2  400  750 1083.1 1166.54,\
	met3  400  750 1083.1 1166.54,\
	li1   400 1500 1083.1 1916.54,\
	met1  400 1500 1083.1 1916.54,\
	met2  400 1500 1083.1 1916.54,\
	met3  400 1500 1083.1 1916.54,\
	li1  1800  750 2483.1 1166.54,\
	met1 1800  750 2483.1 1166.54,\
	met2 1800  750 2483.1 1166.54,\
	met3 1800  750 2483.1 1166.54,\
	li1  1800 1500 2483.1 1916.54,\
	met1 1800 1500 2483.1 1916.54,\
	met2 1800 1500 2483.1 1916.54,\
	met3 1800 1500 2483.1 1916.54,\
	met1 1700 2300 2600   3200, \
	met2 1700 2300 2600   3200"

set ::env(DIODE_INSERTION_STRATEGY) 0
#set ::env(DECAP_CELL) "sky130_ef_sc_hd__decap_12 sky130_fd_sc_hd__decap_8 sky130_fd_sc_hd__decap_6 sky130_fd_sc_hd__decap_4 sky130_fd_sc_hd__decap_3"
#set ::env(FILL_CELL) "sky130_ef_sc_hd__fill_12 sky130_ef_sc_hd__fill_8 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_1"
set ::env(FILL_INSERTION) 0
set ::env(TAP_DECAP_INSERTION) 0
set ::env(CLOCK_TREE_SYNTH) 0

#set ::env(RUN_LVS) 0
set ::env(RUN_MAGIC_DRC) 0


#set ::env(QUIT_ON_MAGIC_DRC) "0"
#set ::env(QUIT_ON_NEGATIVE_WNS) "0"
#set ::env(QUIT_ON_SLEW_VIOLATIONS) "0"
set ::env(QUIT_ON_TIMING_VIOLATIONS) "0"
set ::env(QUIT_ON_TR_DRC) "0"

### Black-box verilog and views
set ::env(VERILOG_FILES_BLACKBOX) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/crypto_core.v \
	$script_dir/../../verilog/rtl/flexbex_core.v \
	$script_dir/../../verilog/rtl/soric_soc.v \
	$script_dir/../../verilog/rtl/mem/sky130_sram_2kbyte_1rw1r_32x512_8.v"

set ::env(EXTRA_LEFS) "\
	$script_dir/../../lef/soric_soc.lef \
	$script_dir/../../lef/crypto_core.lef \
	$script_dir/../../lef/flexbex_core.lef \
	$script_dir/../../lef/sky130_sram_2kbyte_1rw1r_32x512_8.lef"

set ::env(EXTRA_GDS_FILES) "\
	$script_dir/../../gds/soric_soc.gds \
	$script_dir/../../gds/crypto_core.gds \
	$script_dir/../../gds/flexbex_core.gds \
	$script_dir/../../gds/sky130_sram_2kbyte_1rw1r_32x512_8.gds"
