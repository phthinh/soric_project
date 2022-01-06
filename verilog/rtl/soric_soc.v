// SPDX-FileCopyrightText: 
// 2021 Thinh Pham
// 2021 Andrew Attwood
// 2021 Nguyen Dao
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

//need to check the address width through the application.

module soric_soc #(
    parameter NCORE = 2,  
    parameter D_ADDR_W = 14, // data bus address width
    parameter I_ADDR_W = 13, // inst bus address width
    parameter NSRAM = 4,
    parameter SRAM_ADDR_W = 11     // SRAM blocks of 2 kB
) (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    input  wire        wb_clk_i,
    input  wire        wb_rst_i,
    input  wire        wbs_stb_i,
    input  wire        wbs_cyc_i,
    input  wire        wbs_we_i,
    input  wire [ 3:0] wbs_sel_i,
    input  wire [31:0] wbs_dat_i,
    input  wire [31:0] wbs_adr_i,
    output wire        wbs_ack_o,
    output wire [31:0] wbs_dat_o,

    input  wire [ NCORE                - 1:0] master_data_req_to_inter_ro_i,
    input  wire [(NCORE * I_ADDR_W)    - 1:0] master_data_addr_to_inter_ro_i,
    output wire [(NCORE * 32)          - 1:0] master_data_rdata_to_inter_ro_o,
    output wire [ NCORE                - 1:0] master_data_rvalid_to_inter_ro_o,
    output wire [ NCORE                - 1:0] master_data_gnt_to_inter_ro_o,

    output wire [ NSRAM                - 1:0] slave_data_req_to_inter_ro_o,
    output wire [(NSRAM * SRAM_ADDR_W) - 1:0] slave_data_addr_to_inter_ro_o,
    input  wire [(NSRAM * 32)          - 1:0] slave_data_rdata_to_inter_ro_i,

    input  wire [ NCORE                 - 1:0]  master_data_req_to_inter_i,
    input  wire [(NCORE *  D_ADDR_W)    - 1:0]  master_data_addr_to_inter_i,
    input  wire [ NCORE                 - 1:0]  master_data_we_to_inter_i,
    input  wire [(NCORE *   4)          - 1:0]  master_data_be_to_inter_i,
    input  wire [(NCORE *  32)          - 1:0]  master_data_wdata_to_inter_i,
    output wire [(NCORE *  32)          - 1:0]  master_data_rdata_to_inter_o,
    output wire [ NCORE                 - 1:0]  master_data_rvalid_to_inter_o,
    output wire [ NCORE                 - 1:0]  master_data_gnt_to_inter_o,

    output wire [(NSRAM *  SRAM_ADDR_W) - 1:0]  slave_data_addr_to_inter_o,
    output wire [ NSRAM                 - 1:0]  slave_data_req_to_inter_o,
    output wire [ NSRAM                 - 1:0]  slave_data_we_to_inter_o,
    output wire [(NSRAM *   4)          - 1:0]  slave_data_be_to_inter_o,
    output wire [(NSRAM *  32)          - 1:0]  slave_data_wdata_to_inter_o,
    input  wire [(NSRAM *  32)          - 1:0]  slave_data_rdata_to_inter_i,

    input  wire        rxd_uart,
    output wire        txd_uart,
    input  wire        rxd_uart_to_mem,
    output wire        txd_uart_to_mem,
    output wire        error_uart_to_mem
);

    wire clk_i = wb_clk_i;      //main clock 20mhz
    wire reset = wb_rst_i;
    wire reset_ni = ~reset;

// Intructions read only interconnection
    wire [ NSRAM                - 1:0] slave_data_req_to_inter_ro;
inter_read #(
    .DATA_WIDTH(32),
    .M_ADDR_WIDTH( ROMASTER_ADDR_WIDTH),
    .S_ADDR_WIDTH( SLAVE_ADDR_WIDTH   ),
    .ROMASTERS(    NCORE          ),
    .ROSLAVES(     NSRAM          ),
    .M_ADDR_MATCH({ 13'h1800 ,13'h1000, 13'h0800, 13'h0000} ),
    .M_ADDR_MASK( { 13'h1800, 13'h1800, 13'h1800, 13'h1800} )
)   inter_read_i (
    .clk(clk_i),
    .reset(reset),
    .master_data_req_i(master_data_req_to_inter_ro_i),
    .master_data_addr_i(master_data_addr_to_inter_ro_i),
    .master_data_rdata_o(master_data_rdata_to_inter_ro_o),
    .master_data_rvalid_o(master_data_rvalid_to_inter_ro_o),
    .master_data_gnt_o(master_data_gnt_to_inter_ro_o),
    .slave_data_req_o(slave_data_req_to_inter_ro),            
    .slave_data_addr_o(slave_data_addr_to_inter_ro_o),
    .slave_data_rdata_i(slave_data_rdata_to_inter_ro_i),
    .slave_data_gnt_i( {NSRAM{1'b1}} )
);
    assign slave_data_req_to_inter_ro_o = ~slave_data_req_to_inter_ro; //active low
/*
genvar i;
generate
    for (i=0; i < NSRAM; i++) begin : gen_sram_block
sky130_sram_2kbyte_1rw1r_32x512_8 sram_i(
//sram sram_2_i(
// Port 0: RW
    .clk0(clk_i),
    .csb0(!slave_data_req_to_inter[i]),
    .web0(!slave_data_we_to_inter[ i]),
    .wmask0(slave_data_be_to_inter[  ((i+1) * 4) - 1 -: 4]),
    .addr0(slave_data_addr_to_inter[ ((i+1) * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
    .din0(slave_data_wdata_to_inter[ ((i+1) * 32) - 1 -: 32 ]),
    .dout0(slave_data_rdata_to_inter[((i+1) * 32) - 1 -: 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(!slave_data_req_to_inter_ro[i]),
    .addr1(slave_data_addr_to_inter_ro[ ((i+1) * SLAVE_ADDR_WIDTH) - 1 -: (SLAVE_ADDR_WIDTH  - 2)]),
    .dout1(slave_data_rdata_to_inter_ro[((i+1) * 32) - 1 -: 32 ])
  );
    end
endgenerate
*/

// interconnection to COREs
// Read/Write interconnection (Memory and Peripherals)
    localparam MASTERS             = NCORE + 2;
    localparam SLAVES              = NSRAM + 1; 
    localparam SLAVE_ADDR_WIDTH    = SRAM_ADDR_W;   // SRAM blocks of 2 kB
    localparam ADDR_WIDTH          = D_ADDR_W;      
    localparam ROMASTERS           = NCORE;
    localparam ROSLAVES            = NSRAM;          
    localparam ROMASTER_ADDR_WIDTH = I_ADDR_W;     

    wire [ MASTERS                     - 1:0]  master_data_req_to_inter;
    wire [(MASTERS *  ADDR_WIDTH)      - 1:0]  master_data_addr_to_inter;
    wire [ MASTERS                     - 1:0]  master_data_we_to_inter;
    wire [(MASTERS * (32 / 8))         - 1:0]  master_data_be_to_inter;
    wire [(MASTERS *  32)              - 1:0]  master_data_wdata_to_inter;
    wire [(MASTERS *  32)              - 1:0]  master_data_rdata_to_inter;
    wire [ MASTERS                     - 1:0]  master_data_rvalid_to_inter;
    wire [ MASTERS                     - 1:0]  master_data_gnt_to_inter;

    wire [ SLAVES                      - 1:0]  slave_data_req_to_inter;
    wire [(SLAVES *  SLAVE_ADDR_WIDTH) - 1:0]  slave_data_addr_to_inter;
    wire [ SLAVES                      - 1:0]  slave_data_we_to_inter;
    wire [(SLAVES * (32 / 8) )         - 1:0]  slave_data_be_to_inter;
    wire [(SLAVES *  32)               - 1:0]  slave_data_wdata_to_inter;
    wire [(SLAVES *  32)               - 1:0]  slave_data_rdata_to_inter;

    assign master_data_addr_to_inter[  (NCORE * ADDR_WIDTH) - 1: 0] = master_data_addr_to_inter_i;
    assign master_data_wdata_to_inter[ (NCORE * 32)         - 1: 0] = master_data_wdata_to_inter_i;
    assign master_data_be_to_inter[    (NCORE *  4)         - 1: 0] = master_data_be_to_inter_i;
    assign master_data_req_to_inter[    NCORE               - 1: 0] = master_data_req_to_inter_i;
    assign master_data_we_to_inter[     NCORE               - 1: 0] = master_data_we_to_inter_i;
    assign master_data_rdata_to_inter_o  = master_data_rdata_to_inter[(NCORE * 32) - 1 : 0];
    assign master_data_rvalid_to_inter_o = master_data_rdata_to_inter[ NCORE       - 1 : 0];
    assign master_data_gnt_to_inter_o    = master_data_rdata_to_inter[ NCORE       - 1 : 0];

    assign slave_data_addr_to_inter_o  =  slave_data_addr_to_inter[( NSRAM * SRAM_ADDR_W) - 1:0];
    assign slave_data_req_to_inter_o   = ~slave_data_req_to_inter[   NSRAM                - 1:0]; //active low
    assign slave_data_we_to_inter_o    = ~slave_data_we_to_inter[    NSRAM                - 1:0]; //active low
    assign slave_data_be_to_inter_o    =  slave_data_be_to_inter[(   NSRAM *  4)          - 1:0];
    assign slave_data_wdata_to_inter_o =  slave_data_wdata_to_inter[(NSRAM * 32)          - 1:0];
    assign slave_data_rdata_to_inter[(NSRAM *  32) - 1:0] = slave_data_rdata_to_inter_i;

// interconnection to HOST
// Read/Write interconnection (Memory and Peripherals)
    assign master_data_addr_to_inter[  (3 * ADDR_WIDTH) - 1: 2 * ADDR_WIDTH ] = wbs_adr_i[ADDR_WIDTH - 1:0];
    assign master_data_wdata_to_inter[ (3 * 32) - 1        : 2 * 32]          = wbs_dat_i;
    assign master_data_be_to_inter[  ( (3 * (32 / 8))) - 1 : 2 * (32 / 8)]    = wbs_sel_i;
    assign master_data_req_to_inter[2]                                        = wbs_stb_i & wbs_cyc_i;
    assign master_data_we_to_inter[ 2]                                        = wbs_we_i;
    assign wbs_dat_o = master_data_rdata_to_inter[ (3 * 32) - 1 : 2 * 32];
    assign wbs_ack_o = master_data_gnt_to_inter[2] & master_data_rvalid_to_inter[2];     //todo check ack

uart_to_mem #(
     .ADDR_WIDTH(ADDR_WIDTH)
) uart_to_mem_i (
    .clk_i(clk_i), // The master clock for this module
    .rst_i(reset), // Synchronous reset.
    .rx_i(rxd_uart_to_mem), // Incoming serial line
    .tx_o(txd_uart_to_mem),  // Outgoing serial line
    .data_req_o(master_data_req_to_inter[3]),//Request ready, must stay high until data_gnt_i is high for one cycle
    .data_addr_o(master_data_addr_to_inter[   (4 * ADDR_WIDTH) - 1: 3 * ADDR_WIDTH ]),//Address
    .data_we_o(master_data_we_to_inter[3] ),                                          //Write Enable, high for writes, low for reads. Sent together with data_req_o
    .data_be_o(master_data_be_to_inter[     ( (4 * (32 / 8)))  - 1: 3 * (32 / 8)]),   //Byte Enable. Is set for the bytes to write/read, sent together with data_req_o
    .data_wdata_o(master_data_wdata_to_inter[ (4 *  32)        - 1: 3 *  32 ]),       //Data to be written to memory, sent together with data_req_o
    .data_rdata_i(master_data_rdata_to_inter[ (4 *  32)        - 1: 3 *  32 ]),       //Data read from memory
    .data_rvalid_i(master_data_rvalid_to_inter[3]),//data_rdata_is holds valid data when data_rvalid_i is high. This signal will be high for exactly one cycle per request.
    .data_gnt_i(master_data_gnt_to_inter[3]),//The other side accepted the request. data_addr_o may change in the next cycle
    .uart_error(error_uart_to_mem)
);

    wire                 slave_data_gnt_peri1_i;
    wire [SLAVES - 1:0]  slave_data_rvalid;
    reg  [SLAVES - 1:0]  slave_data_rvalid_write;
    reg  [SLAVES - 1:0]  slave_data_rvalid_read;

inter #(
    .DATA_WIDTH(32),
    .MASTER_ADDR_WIDTH( ADDR_WIDTH       ),
    .SLAVE_ADDR_WIDTH(  SLAVE_ADDR_WIDTH ),
    .MASTERS(           MASTERS          ),
    .SLAVES(            SLAVES           ),
    .MASTER_ADDR_MATCH( { 14'h2000, 14'h1800, 14'h1000, 14'h0800, 14'h0000} ),
    .MASTER_ADDR_MASK(  { 14'h3800, 14'h3800, 14'h3800, 14'h3800, 14'h3800} )
) inter_i (
    .clk(clk_i),
    .reset(reset),
    .master_data_req_i(master_data_req_to_inter),
    .master_data_addr_i(master_data_addr_to_inter),
    .master_data_we_i(master_data_we_to_inter),
    .master_data_be_i(master_data_be_to_inter),
    .master_data_wdata_i(master_data_wdata_to_inter),
    .master_data_rdata_o(master_data_rdata_to_inter),
    .master_data_rvalid_o(master_data_rvalid_to_inter),
    .master_data_gnt_o(master_data_gnt_to_inter),
    .slave_data_req_o(slave_data_req_to_inter),
    .slave_data_addr_o(slave_data_addr_to_inter),
    .slave_data_we_o(slave_data_we_to_inter),
    .slave_data_be_o(slave_data_be_to_inter),
    .slave_data_wdata_o(slave_data_wdata_to_inter),
    .slave_data_rdata_i(slave_data_rdata_to_inter),
    .slave_data_rvalid_i({slave_data_gnt_peri1_i, {NSRAM{1'b1}} }),
    .slave_data_gnt_i({   slave_data_gnt_peri1_i, {NSRAM{1'b1}} })
);

wire slave_data_rvalid_peri1_i;
peripheral #(
    .DATA_WIDTH(32),
    .ADDR_WIDTH(SLAVE_ADDR_WIDTH)
) peripheral1 (
    .clk(clk_i),
    .reset(reset),
    .slave_data_addr_i(slave_data_addr_to_inter[ (  5 * SLAVE_ADDR_WIDTH) - 1  -: SLAVE_ADDR_WIDTH]),
    .slave_data_we_i(slave_data_we_to_inter[4]),
    .slave_data_be_i(slave_data_be_to_inter[       (5 *  4) - 1 -:  4 ]),
    .slave_data_wdata_i(slave_data_wdata_to_inter[ (5 * 32) - 1 -: 32 ]),
    .slave_data_rdata_o(slave_data_rdata_to_inter[ (5 * 32) - 1 -: 32 ]),
    .slave_data_rvalid_o(slave_data_rvalid_peri1_i),
    .slave_data_gnt_o(slave_data_gnt_peri1_i),
    .data_req_i(slave_data_req_to_inter[4]),
    .rxd_uart(rxd_uart),
    .txd_uart(txd_uart)
);

endmodule
