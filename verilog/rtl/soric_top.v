// SPDX-FileCopyrightText: 
// 2021 Nguyen Dao
// 2021 Andrew Attwood
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
//
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module soric_top #(
    parameter NCORE = 2,  
    parameter D_ADDR_W = 14, // data bus address width
    parameter I_ADDR_W = 13, // inst bus address width

    parameter NSRAM = 4,
    parameter SRAM_ADDR_W =11 // 2kB blocks
)  (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
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
    output [2:0] la_data_out,
    input  [3:0] la_data_in,

    // IOs
    input  [37:0] io_in, //CLK: [2:0] eFPGA: [12:3]
    output [37:0] io_out, //CLK: [2:0] eFPGA: [12:3]
    output [37:0] io_oeb, //CLK: [2:0] eFPGA: [12:3]

    // Independent clock (on independent integer divider)
    input   user_clock2
);

assign io_oeb[ 7:0] =  8'b11111111; //CLK and configuration
assign io_oeb[12:8] =  5'b00011; //CPU

//wire [1:0]  clk_sel = {io_in[2],io_in[1]};
//wire external_clock = io_in[0];
// This clock can go to the CPU (connects to the fabric LUT output flops
//wire            CLK = clk_sel[0] ? (clk_sel[1] ? wb_clk_i : user_clock2) : external_clock;
//assign CLK=wb_clk_i;

// To CPU
wire [36-1:0] W_OPA; //from RISCV
wire [36-1:0] W_OPB; //from RISCV
wire [36-1:0] W_RES0; //to RISCV
wire [36-1:0] W_RES1; //to RISCV
wire [36-1:0] W_RES2; //to RISCV

wire [36-1:0] E_OPA; //from RISCV
wire [36-1:0] E_OPB; //from RISCV
wire [36-1:0] E_RES0; //to RISCV
wire [36-1:0] E_RES1; //to RISCV
wire [36-1:0] E_RES2; //to RISCV

// CPU configuration port
wire [31:0] eFPGA_operand_a_1_o;
wire [31:0] SelfWriteData; // configuration data write port
wire        SelfWriteStrobe; // must decode address and write enable
assign W_OPA[34:3]   = eFPGA_operand_a_1_o;
assign SelfWriteData = eFPGA_operand_a_1_o;

reg debug_req_1;
reg fetch_enable_1;
reg debug_req_2;
reg fetch_enable_2;

always @(*) begin
/*	if(io_in[3] == 1'b1 )begin
		debug_req_1 =  la_data_in[0];
		fetch_enable_1 = la_data_in[1];
		debug_req_2 = la_data_in[2];
		fetch_enable_2 = la_data_in[3];
	end 
	else begin*/
		debug_req_1 = io_in[4];
		fetch_enable_1 = io_in[5];
		debug_req_2 = io_in[6];
		fetch_enable_2 = io_in[7];
//	end
end 

   localparam MASTERS          = NCORE + 2;
   localparam SLAVES           = NSRAM + NPERI;    //3
   localparam SLAVE_ADDR_WIDTH = 11;     // SRAM blocks of 2 kB
   localparam ADDR_WIDTH       = 14;      //12
   localparam ROMASTER_ADDR_WIDTH=13;   //11

    wire clk_i = wb_clk_i;      //main clock 20mhz
    wire reset = wb_rst_i;
    wire reset_ni = ~reset;

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
    .master_data_req_to_inter_ro(master_data_req_to_inter_ro),
    .master_data_addr_to_inter_ro(master_data_addr_to_inter_ro),
    .master_data_rdata_to_inter_ro(master_data_rdata_to_inter_ro),
    .master_data_rvalid_to_inter_ro(master_data_rvalid_to_inter_ro),
    .master_data_gnt_to_inter_ro(master_data_gnt_to_inter_ro),
    .slave_data_req_to_inter_ro(slave_data_req_to_inter_ro),
    .slave_data_addr_to_inter_ro(slave_data_addr_to_inter_ro),
    .slave_data_rdata_to_inter_ro(slave_data_rdata_to_inter_ro),

    //data bus
    .master_data_req_to_inter_i(master_data_req_to_inter),
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
ibex_top #(
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
    .clk_i (clk_i),
    .rst_ni(reset_ni),

    .test_en_i(1'b1),
    .ram_cfg_i(1'b0),  // not in use
    .hart_id_i  (32'd0),
    .boot_addr_i(32'h00000000),

    .instr_req_o(       master_data_req_to_inter_ro[0]),
    .instr_gnt_i(       master_data_gnt_to_inter_ro[0]),
    .instr_rvalid_i(    master_data_rvalid_to_inter_ro[0]),
    .instr_addr_o(      master_data_addr_to_inter_ro[  ROMASTER_ADDR_WIDTH - 1 : 0]),
    .instr_rdata_i(     master_data_rdata_to_inter_ro[ 31: 0 ]),
    .instr_rdata_intg_i(7'd0),
    .instr_err_i(       1'b0),

    .data_req_o(        master_data_req_to_inter[0]),
    .data_gnt_i(        master_data_gnt_to_inter[0]),
    .data_rvalid_i(     master_data_rvalid_to_inter[0]),
    .data_we_o(         master_data_we_to_inter[0]),
    .data_be_o(         master_data_be_to_inter[   (32 / 8)   - 1 : 0]),
    .data_addr_o(       master_data_addr_to_inter[ ADDR_WIDTH - 1 : 0]),
    .data_wdata_o(      master_data_wdata_to_inter[31: 0]),
    .data_wdata_intg_o(),
    .data_rdata_i(      master_data_rdata_to_inter[31: 0]),
    .data_rdata_intg_i(7'd0),
    .data_err_i(       1'b0),

    .debug_req_i(debug_req_1),       //todo needs LA in PIN
    .fetch_enable_i(fetch_enable_1), //todo needs LA in PIN
    .irq_external_i(W_RES1[33]),

    .eFPGA_operand_a_o(eFPGA_operand_a_1_o),
    .eFPGA_operand_b_o(W_OPB[31:0]),
    .eFPGA_result_a_i(W_RES0[31:0]),
    .eFPGA_result_b_i(W_RES1[31:0]),
    .eFPGA_result_c_i(W_RES2[31:0]),
    .eFPGA_write_strobe_o(SelfWriteStrobe),//todo write strobe connection
    .eFPGA_fpga_done_i(W_RES1[34]), 
    .eFPGA_delay_o(W_OPB[33:32]),
    .eFPGA_en_o(W_OPA[35]),
    .eFPGA_operator_o(W_OPB[35:34]),

    .crash_dump_o(),
    .alert_minor_o         (),
    .alert_major_o         (),
    .core_sleep_o          (),

    // Interrupt inputs
    .irq_software_i( 1'b0  ),
    .irq_timer_i(    1'b0  ),
    .irq_fast_i(    15'd0  ),
    .irq_nm_i(       1'b0  ),      // non-maskeable interrupt

    .scan_rst_ni(    1'b1  )    //unactivated
);

wire [ADDR_WIDTH-1:0] flexbex_addr_o;
//need to set the debug vector
flexbex_ibex_core ibex_core_2 (
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
    .clk_i(clk_i),
    .boot_addr_i(32'h0),
    .cluster_id_i(6'd0),
    .core_id_i(4'd1),

    .data_addr_o(   flexbex_addr_o),
    .data_be_o(     master_data_be_to_inter[ (  (2 * (32 / 8)))  - 1 : 1 * (32 / 8)]),
    .data_err_i(    1'b0),
    .data_gnt_i(    master_data_gnt_to_inter[1]),
    .data_rdata_i(  master_data_rdata_to_inter[ (2 *  32)        - 1 : 1 *  32]),
    .data_req_o(    master_data_req_to_inter[1]),
    .data_rvalid_i( master_data_rvalid_to_inter[1]),
    .data_wdata_o(  master_data_wdata_to_inter[ (2 *  32)        - 1 : 1 *  32]),
    .data_we_o(     master_data_we_to_inter[1]),

    .instr_addr_o(  master_data_addr_to_inter_ro[ (2 * ROMASTER_ADDR_WIDTH) - 1 : ROMASTER_ADDR_WIDTH]),
    .instr_gnt_i(   master_data_gnt_to_inter_ro[1]),
    .instr_rdata_i( master_data_rdata_to_inter_ro[(2 * 32)       - 1 : 1 * 32 ]),
    .instr_req_o(   master_data_req_to_inter_ro[1]),
    .instr_rvalid_i(master_data_rvalid_to_inter_ro[1]),

    .debug_req_i(         debug_req_2),
    .fetch_enable_i(      fetch_enable_2),
    .ext_perf_counters_i( 1'b0 ),

    .irq_ack_o(E_OPA[0]), 
    .irq_i(E_RES1[33]),
    .irq_id_i({E_RES1[32],E_RES0[35:32]}),
    .irq_id_o(E_OPA[2:1]),
    .eFPGA_operand_a_o(E_OPA[34:3]),
    .eFPGA_operand_b_o(E_OPB[31:0]),
    .eFPGA_result_a_i(E_RES0[31:0]),
    .eFPGA_result_b_i(E_RES1[31:0]),
    .eFPGA_result_c_i(E_RES2[31:0]),
    .eFPGA_write_strobe_o(io_out[16]),
    .eFPGA_fpga_done_i(E_RES1[34]),
    .eFPGA_delay_o(E_OPB[33:32]),
    .eFPGA_en_o(E_OPA[35]),
    .eFPGA_operator_o(E_OPB[35:34]),

    .rst_ni(        reset_ni),
    .test_en_i(     1'b1    )
);

assign master_data_addr_to_inter[  (2 * ADDR_WIDTH) - 1 : 1 * ADDR_WIDTH]= {flexbex_addr_o[ADDR_WIDTH-1:2], 2'b00};


sky130_sram_2kbyte_1rw1r_32x512_8 sram_1_i(
//sram sram_1_i(
`ifdef USE_POWER_PINS
    .vccd1(vccd1),
    .vssd1(vssd1),    
`endif
// Port 0: RW
    .clk0(clk_i),
    .csb0(!slave_data_req_to_inter[0]),
    .web0(!slave_data_we_to_inter[0]),
    .wmask0(slave_data_be_to_inter[( ((32 / 8))) - 1 :0]),
    .addr0(slave_data_addr_to_inter[ (SLAVE_ADDR_WIDTH) - 1 : 2]),
    .din0(slave_data_wdata_to_inter[  31 : 0 ]),
    .dout0(slave_data_rdata_to_inter[ 31 : 0 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(!slave_data_req_to_inter_ro[0]),
    .addr1(slave_data_addr_to_inter_ro[(SLAVE_ADDR_WIDTH) - 1 : 2]),
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
    .csb0(!slave_data_req_to_inter[1]),
    .web0(!slave_data_we_to_inter[ 1]),
    .wmask0(slave_data_be_to_inter[(    (2 * (32 / 8))) - 1 -: ((32 / 8))]),
    .addr0(slave_data_addr_to_inter[    (2 * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
    .din0(slave_data_wdata_to_inter[    (2 * 32) - 1 -: 32 ]),
    .dout0(slave_data_rdata_to_inter[   (2 * 32) - 1 -: 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(!slave_data_req_to_inter_ro[1]),
    .addr1(slave_data_addr_to_inter_ro[ (2 * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
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
    .csb0(!slave_data_req_to_inter[2]),
    .web0(!slave_data_we_to_inter[ 2]),
    .wmask0(slave_data_be_to_inter[(  (3 * (32/8))) - 1 -: ((32/8))]),
    .addr0(slave_data_addr_to_inter[  (3 * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
    .din0(slave_data_wdata_to_inter[  (3 * 32) - 1 -: 32 ]),
    .dout0(slave_data_rdata_to_inter[ (3 * 32) - 1 -: 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(!slave_data_req_to_inter_ro[2]),
    .addr1(slave_data_addr_to_inter_ro[ (3 * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
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
    .csb0(!slave_data_req_to_inter[3]),
    .web0(!slave_data_we_to_inter[ 3]),
    .wmask0(slave_data_be_to_inter[( (4 * (32 / 8))) - 1 -: ((32 / 8))]),
    .addr0(slave_data_addr_to_inter[ (4 * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
    .din0(slave_data_wdata_to_inter[ (4 * 32) - 1 -: 32 ]),
    .dout0(slave_data_rdata_to_inter[(4 * 32) - 1 -: 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(!slave_data_req_to_inter_ro[3]),
    .addr1(slave_data_addr_to_inter_ro[ (4 * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
    .dout1(slave_data_rdata_to_inter_ro[(4 * 32) - 1 -: 32 ])
  );

assign la_data_out[2:0] = 3'b000;
assign io_out[6]        = 1'b0;
assign io_out[26:17]    = 10'd0;
assign io_oeb[26:17]    = 10'd0; //eFPGA IO pins

assign W_RES0           = 36'd0; //to RISCV
assign W_RES1           = 36'd0; //to RISCV
assign W_RES2           = 36'd0; //to RISCV

assign E_RES0           = 36'd0; //to RISCV
assign E_RES1           = 36'd0; //to RISCV
assign E_RES2           = 36'd0; //to RISCV
wire [36-1:0] unused0   = W_OPA; //from RISCV
wire [36-1:0] unused1   = W_OPB; //from RISCV
wire [36-1:0] unused2   = E_OPA; //from RISCV
wire [36-1:0] unused3   = E_OPB; //from RISCV
wire [31  :0] unused4   = SelfWriteData;

endmodule
`default_nettype wire
