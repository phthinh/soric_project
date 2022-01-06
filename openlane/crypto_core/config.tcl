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
#set ::env(SYNTH_DRIVING_CELL) "sky130_fd_sc_hd__inv_2"
set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

set script_dir [file dirname [file normalize [info script]]]

set ::env(ROUTING_CORES)   8

set ::env(DESIGN_NAME) crypto_core
set ::env(VERILOG_FILES) "\
	$script_dir/../../verilog/rtl/crypto_core.v \
	$script_dir/../../verilog/rtl/cores/ibex_* "

set ::env(DESIGN_IS_CORE) 0

set ::env(CLOCK_PORT) "clk_i"
set ::env(CLOCK_NET) "clk_i"
set ::env(CLOCK_PERIOD) "40"

set ::env(SYNTH_STRATEGY) "DELAY 2"
set ::env(SYNTH_MAX_FANOUT) 4

### Power Nets
set ::env(VDD_NETS)          "vccd1"
set ::env(GND_NETS)          "vssd1"

### Floorplan
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 900 900"
set ::env(CELL_PAD) 0

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg


### Placement
set ::env(PL_TARGET_DENSITY) 0.35
#set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 1
set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 0.2
set ::env(PL_RESIZER_ALLOW_SETUP_VIOS) 1

### Routing
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.2
set ::env(GLB_RT_ADJUSTMENT) 0.25
#set ::env(GLB_RT_L2_ADJUSTMENT) 0.21
#set ::env(GLB_RT_L3_ADJUSTMENT) 0.21
#set ::env(GLB_RT_L4_ADJUSTMENT) 0.1
#set ::env(GLB_RT_L5_ADJUSTMENT) 0.1
#set ::env(GLB_RT_L6_ADJUSTMENT) 0.1
#set ::env(GLB_RT_TILES) 14
#set ::env(GLB_RT_OBS)               "met5 $::env(DIE_AREA)"
set ::env(GLB_RT_MAXLAYER)          5
#set ::env(GLB_RT_ALLOW_CONGESTION) 0
#set ::env(GLB_RT_OVERFLOW_ITERS) 200

#set ::env(FILL_CELL) "sky130_ef_sc_hd__fill_12 sky130_ef_sc_hd__fill_8 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_1"
set ::env(DIODE_INSERTION_STRATEGY) 4


#set ::env(SYNTH_MAX_FANOUT) 4

# Maximum layer used for routing is metal 4.
# This is because this macro will be inserted in a top level (user_project_wrapper) 
# where the PDN is planned on metal 5. So, to avoid having shorts between routes
# in this macro and the top level metal 5 stripes, we have to restrict routes to metal4.  
#set ::env(GLB_RT_MAXLAYER) 5

#set ::env(DIODE_INSERTION_STRATEGY) 4 
# If you're going to use multiple power domains, then disable cvc run.
set ::env(RUN_CVC) 1
