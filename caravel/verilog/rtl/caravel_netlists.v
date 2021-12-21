// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`timescale 1 ns / 1 ps

`define UNIT_DELAY #1
`define USE_POWER_PINS

`ifdef SIM

`include "defines.v"
`include "pads.v"

/* NOTE: Need to pass the PDK root directory to iverilog with option -I */

`ifdef  EF_STYLE 
	`include "libs.ref/verilog/sky130_fd_io/sky130_fd_io.v"
	`include "libs.ref/verilog/sky130_fd_io/sky130_ef_io.v"
	`include "libs.ref/verilog/sky130_fd_io/sky130_ef_io__gpiov2_pad_wrapped.v"

	`include "libs.ref/verilog/sky130_fd_sc_hd/primitives.v"
	`include "libs.ref/verilog/sky130_fd_sc_hd/sky130_fd_sc_hd.v"
	`include "libs.ref/verilog/sky130_fd_sc_hvl/primitives.v"
	`include "libs.ref/verilog/sky130_fd_sc_hvl/sky130_fd_sc_hvl.v"
`else 
	`include "libs.ref/sky130_fd_io/verilog/sky130_fd_io.v"
	`include "libs.ref/sky130_fd_io/verilog/sky130_ef_io.v"
	`include "libs.ref/sky130_fd_io/verilog/sky130_ef_io__gpiov2_pad_wrapped.v"

	`include "libs.ref/sky130_fd_sc_hd/verilog/primitives.v"
	`include "libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v"
	`include "libs.ref/sky130_fd_sc_hvl/verilog/primitives.v"
	`include "libs.ref/sky130_fd_sc_hvl/verilog/sky130_fd_sc_hvl.v"
`endif 

`ifdef GL
	`include "gl/mgmt_core.v"
	`include "gl/digital_pll.v"
	`include "gl/DFFRAM.v"
	`include "gl/storage.v"
	`include "gl/user_id_programming.v"
	`include "gl/chip_io.v"
	`include "gl/mprj_logic_high.v"
    `include "gl/mprj2_logic_high.v"
	`include "gl/mgmt_protect.v"
    `include "gl/mgmt_protect_hv.v"
	`include "gl/gpio_control_block.v"
	`include "gl/gpio_logic_high.v"
	`include "gl/sky130_fd_sc_hvl__lsbufhv2lv_1_wrapped.v"
    `include "gl/caravel.v"
`else
	`include "mgmt_soc.v"
	`include "housekeeping_spi.v"
	`include "caravel_clocking.v"
	`include "mgmt_core.v"
	`include "digital_pll.v"
	`include "DFFRAM.v"
	`include "DFFRAMBB.v"
	`include "storage.v"
	`include "user_id_programming.v"
	`include "clock_div.v"
	`include "storage_bridge_wb.v"
	`include "mprj_io.v"
	`include "chip_io.v"
	`include "mprj_logic_high.v"
    `include "mprj2_logic_high.v"
	`include "mgmt_protect.v"
    `include "mgmt_protect_hv.v"
	`include "gpio_control_block.v"
	`include "gpio_logic_high.v"
    `include "sky130_fd_sc_hvl__lsbufhv2lv_1_wrapped.v"
    `include "caravel.v"
`endif

`include "simple_por.v"
`include "sram_1rw1r_32_256_8_sky130.v"

`endif
