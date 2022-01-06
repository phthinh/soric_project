// SPDX-FileCopyrightText: 
// 2021 Thinh Pham 
// 2021 Nguyen Dao
// 2021 Andrew Attwood
//
// 2020 Efabless Corporation
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

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter NCORE = 2,  
    parameter D_ADDR_W = 14, // data bus address width
    parameter I_ADDR_W = 13, // inst bus address width

    parameter NSRAM = 4,
    parameter SRAM_ADDR_W =11, // 2kB blocks

    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
);

/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/

//wire [1:0]  clk_sel = {io_in[2],io_in[1]};
//wire external_clock = io_in[0];
// This clock can go to the CPU (connects to the fabric LUT output flops
//wire            CLK = clk_sel[0] ? (clk_sel[1] ? wb_clk_i : user_clock2) : external_clock;
//assign CLK=wb_clk_i;

    wire clk_i = wb_clk_i;      //main clock 20mhz
    wire reset = wb_rst_i;

    wire debug_req_1    = io_in[4];
    wire fetch_enable_1 = io_in[5];
    wire debug_req_2    = io_in[6];
    wire fetch_enable_2 = io_in[7];


// Data bus
    wire [ NCORE                - 1:0]  master_data_req_to_inter;
    wire [(NCORE * D_ADDR_W)    - 1:0]  master_data_addr_to_inter;
    wire [ NCORE                - 1:0]  master_data_we_to_inter;
    wire [(NCORE *  4)          - 1:0]  master_data_be_to_inter;
    wire [(NCORE * 32)          - 1:0]  master_data_wdata_to_inter;
    wire [(NCORE * 32)          - 1:0]  master_data_rdata_to_inter;
    wire [ NCORE                - 1:0]  master_data_rvalid_to_inter;
    wire [ NCORE                - 1:0]  master_data_gnt_to_inter;

    wire [ NSRAM                - 1:0]  slave_data_req_to_inter;
    wire [(NSRAM * SRAM_ADDR_W) - 1:0]  slave_data_addr_to_inter;
    wire [ NSRAM                - 1:0]  slave_data_we_to_inter;
    wire [(NSRAM *  4)          - 1:0]  slave_data_be_to_inter;
    wire [(NSRAM * 32)          - 1:0]  slave_data_wdata_to_inter;
    wire [(NSRAM * 32)          - 1:0]  slave_data_rdata_to_inter;

// Intructions bus
    wire [ NCORE                - 1:0] master_data_req_to_inter_ro;
    wire [(NCORE * I_ADDR_W)    - 1:0] master_data_addr_to_inter_ro;
    wire [(NCORE * 32)          - 1:0] master_data_rdata_to_inter_ro;
    wire [ NCORE                - 1:0] master_data_rvalid_to_inter_ro;
    wire [ NCORE                - 1:0] master_data_gnt_to_inter_ro;

    wire [ NSRAM                - 1:0] slave_data_req_to_inter_ro;
    wire [(NSRAM * SRAM_ADDR_W) - 1:0] slave_data_addr_to_inter_ro;
    wire [(NSRAM * 32)          - 1:0] slave_data_rdata_to_inter_ro;

soric_soc #(
    .NCORE(NCORE),
    .NSRAM(NSRAM),
    .SRAM_ADDR_W(SRAM_ADDR_W)
) soric_soc_i (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif

    //Wishbone to carvel
    .wb_clk_i(clk_i), 
    .wb_rst_i(wb_rst_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_dat_o(wbs_dat_o),

    //instrucion bus
    .master_data_req_to_inter_ro_i(master_data_req_to_inter_ro),
    .master_data_addr_to_inter_ro_i(master_data_addr_to_inter_ro),
    .master_data_rdata_to_inter_ro_o(master_data_rdata_to_inter_ro),
    .master_data_rvalid_to_inter_ro_o(master_data_rvalid_to_inter_ro),
    .master_data_gnt_to_inter_ro_o(master_data_gnt_to_inter_ro),
    .slave_data_req_to_inter_ro_o(slave_data_req_to_inter_ro),
    .slave_data_addr_to_inter_ro_o(slave_data_addr_to_inter_ro),
    .slave_data_rdata_to_inter_ro_i(slave_data_rdata_to_inter_ro),

    //data bus
    .master_data_req_to_inter_i( master_data_req_to_inter),
    .master_data_addr_to_inter_i(master_data_addr_to_inter),
    .master_data_we_to_inter_i(master_data_we_to_inter),
    .master_data_be_to_inter_i(master_data_be_to_inter),
    .master_data_wdata_to_inter_i(master_data_wdata_to_inter),
    .master_data_rdata_to_inter_o(master_data_rdata_to_inter),
    .master_data_rvalid_to_inter_o(master_data_rvalid_to_inter),
    .master_data_gnt_to_inter_o(master_data_gnt_to_inter),
    .slave_data_req_to_inter_o(slave_data_req_to_inter),
    .slave_data_addr_to_inter_o(slave_data_addr_to_inter),
    .slave_data_we_to_inter_o(slave_data_we_to_inter),
    .slave_data_be_to_inter_o(slave_data_be_to_inter),
    .slave_data_wdata_to_inter_o(slave_data_wdata_to_inter),
    .slave_data_rdata_to_inter_i(slave_data_rdata_to_inter),

    //uart pins to USER area off chip IO
    .rxd_uart(io_in[8]),
    .txd_uart(io_out[10]),
    .rxd_uart_to_mem(io_in[9]),
    .txd_uart_to_mem(io_out[11]),
    .error_uart_to_mem(io_out[12])
);

//CPU instantiation
crypto_core #(
    .PMPEnable        (1'b0),
    .RV32E            (1'b0),    //None
    .RV32M            (2),       //RV32MFast
    .RV32B            (0),       //RV32BNone
    .RV32Zk           (2),       //RV32Zkn
    .DmHaltAddr       (32'h00000000),
    .DmExceptionAddr  (32'h00000000)
) ibex_core_1 (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
    .clk_i(clk_i),
    .rst_i(reset),

    .instr_req_o(       master_data_req_to_inter_ro[0]),
    .instr_gnt_i(       master_data_gnt_to_inter_ro[0]),
    .instr_rvalid_i(    master_data_rvalid_to_inter_ro[0]),
    .instr_addr_o(      master_data_addr_to_inter_ro[  I_ADDR_W - 1 : 0]),
    .instr_rdata_i(     master_data_rdata_to_inter_ro[ 31: 0 ]),

    .data_req_o(        master_data_req_to_inter[0]),
    .data_gnt_i(        master_data_gnt_to_inter[0]),
    .data_rvalid_i(     master_data_rvalid_to_inter[0]),
    .data_we_o(         master_data_we_to_inter[0]),
    .data_be_o(         master_data_be_to_inter[    4       - 1 : 0]),
    .data_addr_o(       master_data_addr_to_inter[ D_ADDR_W - 1 : 0]),
    .data_wdata_o(      master_data_wdata_to_inter[31: 0]),
    .data_wdata_intg_o(),
    .data_rdata_i(      master_data_rdata_to_inter[31: 0]),

    .debug_req_i(debug_req_1),       
    .fetch_enable_i(fetch_enable_1) 
);

flexbex_core ibex_core_2 (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
    .clk_i(clk_i),
    .rst_i(reset),

    .data_req_o(    master_data_req_to_inter[1]),
    .data_gnt_i(    master_data_gnt_to_inter[1]),
    .data_rvalid_i( master_data_rvalid_to_inter[1]),
    .data_we_o(     master_data_we_to_inter[1]),
    .data_be_o(     master_data_be_to_inter[    (2 *  4)       - 1 :  4]),
    .data_addr_o(   master_data_addr_to_inter[  (2 * D_ADDR_W) - 1 : D_ADDR_W]),
    .data_rdata_i(  master_data_rdata_to_inter[ (2 * 32)       - 1 : 32]),
    .data_wdata_o(  master_data_wdata_to_inter[ (2 * 32)       - 1 : 32]),

    .instr_req_o(   master_data_req_to_inter_ro[1]),
    .instr_gnt_i(   master_data_gnt_to_inter_ro[1]),
    .instr_rvalid_i(master_data_rvalid_to_inter_ro[1]),
    .instr_addr_o(  master_data_addr_to_inter_ro[ (2 * I_ADDR_W) - 1 : I_ADDR_W]),
    .instr_rdata_i( master_data_rdata_to_inter_ro[(2 * 32)       - 1 : 32]),

    .debug_req_i(    debug_req_2),
    .fetch_enable_i( fetch_enable_2)
);

sky130_sram_2kbyte_1rw1r_32x512_8 sram_1_i(
//sram sram_1_i(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
// Port 0: RW
    .clk0(clk_i),
    .csb0(slave_data_req_to_inter[0]),
    .web0(slave_data_we_to_inter[0]),
    .wmask0(slave_data_be_to_inter[    3 : 0]),
    .addr0(slave_data_addr_to_inter[ (SRAM_ADDR_W) - 1 : 2]),
    .din0(slave_data_wdata_to_inter[  31 : 0 ]),
    .dout0(slave_data_rdata_to_inter[ 31 : 0 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(slave_data_req_to_inter_ro[0]),
    .addr1(slave_data_addr_to_inter_ro[(SRAM_ADDR_W) - 1 : 2]),
    .dout1(slave_data_rdata_to_inter_ro[31 : 0])
  );

sky130_sram_2kbyte_1rw1r_32x512_8 sram_2_i(
//sram sram_2_i(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
// Port 0: RW
    .clk0(clk_i),
    .csb0(slave_data_req_to_inter[1]),
    .web0(slave_data_we_to_inter[ 1]),
    .wmask0(slave_data_be_to_inter[     (2 *  4) - 1 -:  4 ]),
    .addr0(slave_data_addr_to_inter[    (2 * SRAM_ADDR_W) - 1 -: (SRAM_ADDR_W  - 2)]),
    .din0(slave_data_wdata_to_inter[    (2 * 32) - 1 -: 32 ]),
    .dout0(slave_data_rdata_to_inter[   (2 * 32) - 1 -: 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(slave_data_req_to_inter_ro[1]),
    .addr1(slave_data_addr_to_inter_ro[ (2 * SRAM_ADDR_W) - 1 -: (SRAM_ADDR_W  - 2)]),
    .dout1(slave_data_rdata_to_inter_ro[(2 * 32) - 1 -: 32 ])
  );

sky130_sram_2kbyte_1rw1r_32x512_8 sram_3_i(
//sram sram_3_i(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
// Port 0: RW
    .clk0(clk_i),
    .csb0(slave_data_req_to_inter[2]),
    .web0(slave_data_we_to_inter[ 2]),
    .wmask0(slave_data_be_to_inter[   (3 *  4) - 1 -:  4 ]),
    .addr0(slave_data_addr_to_inter[  (3 * SRAM_ADDR_W) - 1 -: (SRAM_ADDR_W  - 2)]),
    .din0(slave_data_wdata_to_inter[  (3 * 32) - 1 -: 32 ]),
    .dout0(slave_data_rdata_to_inter[ (3 * 32) - 1 -: 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(slave_data_req_to_inter_ro[2]),
    .addr1(slave_data_addr_to_inter_ro[ (3 * SRAM_ADDR_W) - 1 -: (SRAM_ADDR_W  - 2)]),
    .dout1(slave_data_rdata_to_inter_ro[(3 * 32) - 1 -: 32 ])
  );

sky130_sram_2kbyte_1rw1r_32x512_8 sram_4_i(
//sram sram_2_i(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
// Port 0: RW
    .clk0(clk_i),
    .csb0(slave_data_req_to_inter[3]),
    .web0(slave_data_we_to_inter[ 3]),
    .wmask0(slave_data_be_to_inter[  (4 *  4) - 1 -:  4 ]),
    .addr0(slave_data_addr_to_inter[ (4 * SRAM_ADDR_W) - 1 -: (SRAM_ADDR_W  - 2)]),
    .din0(slave_data_wdata_to_inter[ (4 * 32) - 1 -: 32 ]),
    .dout0(slave_data_rdata_to_inter[(4 * 32) - 1 -: 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(slave_data_req_to_inter_ro[3]),
    .addr1(slave_data_addr_to_inter_ro[ (4 * SRAM_ADDR_W) - 1 -: (SRAM_ADDR_W  - 2)]),
    .dout1(slave_data_rdata_to_inter_ro[(4 * 32) - 1 -: 32 ])
  );

//assign la_data_out   = {master_data_addr_to_inter_ro, master_data_rdata_to_inter_ro};
assign la_data_out   = 128'd0;
assign io_out[ 9: 0] = 10'd0;
assign io_out[37:13] = 25'd0;

assign io_oeb[ 7:0]  =  8'b11111111; //CLK and configuration
assign io_oeb[12:8]  =  5'b00011;    //CPU
assign io_oeb[37:13] = 25'd0;

assign user_irq = 3'b000;

endmodule	// user_project_wrapper
`default_nettype wire
