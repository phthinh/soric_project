`timescale 1 ps / 1 ps

//need to check the address width through the application.

module soric_soc #(
   parameter SLAVE_ADDR_WIDTH = 10,
   parameter ADDR_WIDTH       = 12,
   parameter MASTERS          =  4,
   parameter SLAVES           =  3,
   parameter ROMASTERS        =  2,
   parameter ROSLAVES         =  2,
   parameter ROMASTER_ADDR_WIDTH=11
) (
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif
   //core 1
   input  wire        debug_req_1_i,
   input  wire        fetch_enable_1_i,         // enable cpu 1
   output             irq_ack_1_o,
   input  wire        irq_1_i,
   input  wire [ 4:0] irq_id_1_i,
   output wire [ 4:0] irq_id_1_o,
   output wire [31:0] eFPGA_operand_a_1_o,
   output wire [31:0] eFPGA_operand_b_1_o,
   input  wire [31:0] eFPGA_result_a_1_i,
   input  wire [31:0] eFPGA_result_b_1_i,
   input  wire [31:0] eFPGA_result_c_1_i,       // total 160 pins to fpga
   output wire        eFPGA_write_strobe_1_o,
   input  wire        eFPGA_fpga_done_1_i,
   output wire        eFPGA_en_1_o,
   output wire [ 1:0] eFPGA_operator_1_o,
   output wire [ 3:0] eFPGA_delay_1_o,

   input  wire        debug_req_2_i,
   input  wire        fetch_enable_2_i,          // enable cpu 2
   output wire        irq_ack_2_o,
   input  wire        irq_2_i,
   input  wire [ 4:0] irq_id_2_i,
   output wire [ 4:0] irq_id_2_o,
   output wire [31:0] eFPGA_operand_a_2_o,
   output wire [31:0] eFPGA_operand_b_2_o,
   input  wire [31:0] eFPGA_result_a_2_i,
   input  wire [31:0] eFPGA_result_b_2_i,
   input  wire [31:0] eFPGA_result_c_2_i,        // total 160 pins to fpga
   output wire        eFPGA_write_strobe_2_o,
   input  wire        eFPGA_fpga_done_2_i,
   output wire        eFPGA_en_2_o,
   output wire [ 1:0] eFPGA_operator_2_o,
   output wire [ 3:0] eFPGA_delay_2_o,

   input  wire        rxd_uart,
   output wire        txd_uart,
   input  wire        rxd_uart_to_mem,
   output wire        txd_uart_to_mem,
   output wire        error_uart_to_mem,

   input  wire        wb_clk_i,
   input  wire        wb_rst_i,
   input  wire        wbs_stb_i,
   input  wire        wbs_cyc_i,
   input  wire        wbs_we_i,
   input  wire [ 3:0] wbs_sel_i,
   input  wire [31:0] wbs_dat_i,
   input  wire [31:0] wbs_adr_i,
   output wire        wbs_ack_o,
   output wire [31:0] wbs_dat_o
);

    wire clk_i = wb_clk_i;      //main clock 20mhz
    wire reset = wb_rst_i;
    wire reset_ni = ~reset;

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

    wire                                       slave_data_rvalid_to_inter;
    wire                                       slave_data_gnt_to_inter;

ibex_top #(
    .PMPEnable        (1'b0),
    .RV32E            (1'b0),    //None
    .RV32M            (2),       //RV32MFast
    .RV32B            (0),       //RV32BNone
    .RV32Zk           (2),       //RV32Zkn
    .DmHaltAddr       (32'h00000000),
    .DmExceptionAddr  (32'h00000000)
) ibex_core_1 (
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

    .eFPGA_operand_a_o(    eFPGA_operand_a_1_o   ),
    .eFPGA_operand_b_o(    eFPGA_operand_b_1_o   ),
    .eFPGA_result_a_i(     eFPGA_result_a_1_i    ),
    .eFPGA_result_b_i(     eFPGA_result_b_1_i    ),
    .eFPGA_result_c_i(     eFPGA_result_c_1_i    ),
    .eFPGA_write_strobe_o( eFPGA_write_strobe_1_o),
    .eFPGA_fpga_done_i(    eFPGA_fpga_done_1_i   ),
    .eFPGA_en_o(           eFPGA_en_1_o          ),
    .eFPGA_operator_o(     eFPGA_operator_1_o    ),
    .eFPGA_delay_o(        eFPGA_delay_1_o       ),

    .debug_req_i(debug_req_1_i),
    .crash_dump_o(),

    .fetch_enable_i(fetch_enable_1_i),
    .alert_minor_o         (),
    .alert_major_o         (),
    .core_sleep_o          (),

    // Interrupt inputs
    .irq_software_i( 1'b0  ),
    .irq_timer_i(    1'b0  ),
    .irq_external_i(irq_1_i),
    .irq_fast_i(    15'd0  ),
    .irq_nm_i(       1'b0  ),      // non-maskeable interrupt

    .scan_rst_ni(    1'b1  )    //unactivated
);

wire [ADDR_WIDTH-1:0] flexbex_addr_o;
//need to set the debug vector
flexbex_ibex_core ibex_core_2 (
    .boot_addr_i(32'h0),
    .clk_i(clk_i),
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

    .debug_req_i(         debug_req_2_i),
    .ext_perf_counters_i( 1'b0 ),
    .fetch_enable_i(      fetch_enable_2_i),

    .instr_addr_o(  master_data_addr_to_inter_ro[ (2 * ROMASTER_ADDR_WIDTH) - 1 : ROMASTER_ADDR_WIDTH]),
    .instr_gnt_i(   master_data_gnt_to_inter_ro[1]),
    .instr_rdata_i( master_data_rdata_to_inter_ro[(2 * 32)       - 1 : 1 * 32 ]),
    .instr_req_o(   master_data_req_to_inter_ro[1]),
    .instr_rvalid_i(master_data_rvalid_to_inter_ro[1]),

    .irq_ack_o(     irq_ack_2_o),
    .irq_i(         irq_2_i),
    .irq_id_i(      irq_id_2_i),
    .irq_id_o(      irq_id_2_o),
    .rst_ni(        reset_ni),
    .test_en_i(     1'b1    ),
    .eFPGA_operand_a_o(     eFPGA_operand_a_2_o),
    .eFPGA_operand_b_o(     eFPGA_operand_b_2_o),
    .eFPGA_result_a_i(      eFPGA_result_a_2_i),
    .eFPGA_result_b_i(      eFPGA_result_b_2_i),
    .eFPGA_result_c_i(      eFPGA_result_c_2_i),
    .eFPGA_write_strobe_o(  eFPGA_write_strobe_2_o),
    .eFPGA_fpga_done_i(     eFPGA_fpga_done_2_i),
    .eFPGA_en_o(            eFPGA_en_2_o),
    .eFPGA_operator_o(      eFPGA_operator_2_o),
    .eFPGA_delay_o(         eFPGA_delay_2_o)
);

assign master_data_addr_to_inter[  (2 * ADDR_WIDTH) - 1 : 1 * ADDR_WIDTH]= {flexbex_addr_o[ADDR_WIDTH-1:2], 2'b00};
// Intructions read only interconnection

    wire [ ROMASTERS - 1:0] master_data_req_to_inter_ro;
    wire [(ROMASTERS * ROMASTER_ADDR_WIDTH) - 1:0] master_data_addr_to_inter_ro;
    wire [(ROMASTERS * 32) - 1:0] master_data_rdata_to_inter_ro;
    wire [ ROMASTERS - 1:0] master_data_rvalid_to_inter_ro;
    wire [ ROMASTERS - 1:0] master_data_gnt_to_inter_ro;

    wire [ ROSLAVES - 1:0] slave_data_req_to_inter_ro;
    wire [(ROSLAVES * SLAVE_ADDR_WIDTH) - 1:0] slave_data_addr_to_inter_ro;
    wire [(ROSLAVES * 32) - 1:0] slave_data_rdata_to_inter_ro;

inter_read inter_read_i
(
    .clk(clk_i),
    .reset(reset),
    .master_data_req_i(master_data_req_to_inter_ro),
    .master_data_addr_i(master_data_addr_to_inter_ro),
    .master_data_rdata_o(master_data_rdata_to_inter_ro),
    .master_data_rvalid_o(master_data_rvalid_to_inter_ro),
    .master_data_gnt_o(master_data_gnt_to_inter_ro),
    .slave_data_req_o(slave_data_req_to_inter_ro), //active low
    .slave_data_addr_o(slave_data_addr_to_inter_ro),
    .slave_data_rdata_i(slave_data_rdata_to_inter_ro),
    .slave_data_gnt_i(2'd3)
);

sky130_sram_1kbyte_1rw1r_32x256_8 sram_1_i(
//sram sram_1_i(
// Port 0: RW
    .clk0(clk_i),
    .csb0(!slave_data_req_to_inter[0]),
    .web0(!slave_data_we_to_inter[0]),
    .wmask0(slave_data_be_to_inter[( ((32 / 8))) - 1 :0]),
    .addr0(slave_data_addr_to_inter[ (SLAVE_ADDR_WIDTH) - 1 : 0]),
    .din0(slave_data_wdata_to_inter[  31 : 0 ]),
    .dout0(slave_data_rdata_to_inter[ 31 : 0 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(!slave_data_req_to_inter_ro[0]),
    .addr1(slave_data_addr_to_inter_ro[(SLAVE_ADDR_WIDTH) - 1 : 0]),
    .dout1(slave_data_rdata_to_inter_ro[31 : 0])
  );

//use sram module name
sky130_sram_1kbyte_1rw1r_32x256_8 sram_2_i(
//sram sram_2_i(
// Port 0: RW
    .clk0(clk_i),
    .csb0(!slave_data_req_to_inter[1]),
    .web0(!slave_data_we_to_inter[1]),
    .wmask0(slave_data_be_to_inter[( (2 * (32 / 8))) - 1 : ((32 / 8))]),
    .addr0(slave_data_addr_to_inter[ (2 * SLAVE_ADDR_WIDTH) - 1 : SLAVE_ADDR_WIDTH]),
    .din0(slave_data_wdata_to_inter[ (2 * 32) - 1 : 32 ]),
    .dout0(slave_data_rdata_to_inter[ (2 * 32) - 1 : 32 ]),
// Port 1: R
    .clk1(clk_i),
    .csb1(!slave_data_req_to_inter_ro[1]),
    .addr1(slave_data_addr_to_inter_ro[(2 * SLAVE_ADDR_WIDTH) - 1 : SLAVE_ADDR_WIDTH]),
    .dout1(slave_data_rdata_to_inter_ro[ (2 * 32) - 1 : 32 ])
  );


// Read/Write interconnection (Memory and Peripherals)
    assign master_data_addr_to_inter[  (3 * ADDR_WIDTH) - 1: 2 * ADDR_WIDTH ] = wbs_adr_i[ADDR_WIDTH - 1:0];
    assign master_data_wdata_to_inter[ (3 * 32) - 1        : 2 * 32]          = wbs_dat_i;
    assign master_data_be_to_inter[  ( (3 * (32 / 8))) - 1 : 2 * (32 / 8)]    = wbs_sel_i;
    assign master_data_req_to_inter[2]                                        = wbs_stb_i & wbs_cyc_i;
    assign master_data_we_to_inter[2]                                         = wbs_we_i;
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
    .MASTERS(4),
    .SLAVES(3)
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
    .slave_data_rvalid_i(slave_data_rvalid),
    .slave_data_gnt_i({ slave_data_gnt_peri1_i,2'd3})
);

assign slave_data_rvalid[0] = slave_data_rvalid_write[0] | slave_data_rvalid_read[0];
assign slave_data_rvalid[1] = slave_data_rvalid_write[1] | slave_data_rvalid_read[1];
assign slave_data_rvalid[2] = slave_data_rvalid_write[2] | slave_data_rvalid_read[2];

wire slave_data_rvalid_peri1_i;
wire [SLAVES - 1:0]slave_data_rvalid_source = {slave_data_rvalid_peri1_i, 2'd3};

//for sram interfaces rvalid should be high following gnt(1) + we_o(0)
genvar i;

generate
    for (i = 0; i < SLAVES; i = i + 1) begin
        always @(posedge clk_i)
        begin
            if(reset == 1)
                slave_data_rvalid_read[i] = 0;
            else if(slave_data_req_to_inter[i] == 1'b1 && slave_data_we_to_inter[i] == 1'b0)
                slave_data_rvalid_read[i] = slave_data_rvalid_source[i];
            else
                slave_data_rvalid_read[i] = 0;
        end
    end
endgenerate
genvar j;
generate
    for (j = 0; j < SLAVES; j = j + 1) begin
        always @(posedge clk_i)
        begin
            if(reset == 1)
                slave_data_rvalid_write[j] = 0;
            else if(slave_data_req_to_inter[j] == 1'b1 && slave_data_we_to_inter[j] == 1'b1)
                slave_data_rvalid_write[j] = slave_data_rvalid_source[j];
            else
                slave_data_rvalid_write[j] = 0;
        end
    end
endgenerate

peripheral #(
    .DATA_WIDTH(32),
    .ADDR_WIDTH(SLAVE_ADDR_WIDTH)
) peripheral1 (
    .clk(clk_i),
    .reset(reset),
    .slave_data_addr_i(slave_data_addr_to_inter[ (  3 * SLAVE_ADDR_WIDTH) - 1 : 2 * SLAVE_ADDR_WIDTH]),
    .slave_data_we_i(slave_data_we_to_inter[2]),
    .slave_data_be_i(slave_data_be_to_inter[(      (3 * (32 / 8))) - 1 : 2 * ((32 / 8))]),
    .slave_data_wdata_i(slave_data_wdata_to_inter[ (3 *  32) - 1 : 2 * 32 ]),
    .slave_data_rdata_o(slave_data_rdata_to_inter[ (3 *  32) - 1 : 2 * 32 ]),
    .slave_data_rvalid_o(slave_data_rvalid_peri1_i),
    .slave_data_gnt_o(slave_data_gnt_peri1_i),
    .data_req_i(slave_data_req_to_inter[2]),
    .rxd_uart(rxd_uart),
    .txd_uart(txd_uart)
);

endmodule
