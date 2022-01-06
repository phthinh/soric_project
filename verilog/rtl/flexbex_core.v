// SPDX-FileCopyrightText: 2021 Thinh Pham
//
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

//flexbex_ibex_core wrapper
module flexbex_core (
`ifdef USE_POWER_PINS
	vccd1,
	vssd1,
`endif
	clk_i,
	rst_i,

	instr_req_o,
	instr_gnt_i,
	instr_rvalid_i,
	instr_addr_o,
	instr_rdata_i,

	data_req_o,
	data_gnt_i,
	data_rvalid_i,
	data_we_o,
	data_be_o,
	data_addr_o,
	data_wdata_o,
	data_wdata_intg_o,
	data_rdata_i,

	debug_req_i,
	fetch_enable_i
);

`ifdef USE_POWER_PINS
	input vccd1;
	input vssd1;
`endif

	input wire clk_i;
	input wire rst_i;
	output wire instr_req_o;
	input wire instr_gnt_i;
	input wire instr_rvalid_i;
	output wire [31:0] instr_addr_o;
	input wire [31:0] instr_rdata_i;

	output wire data_req_o;
	input wire data_gnt_i;
	input wire data_rvalid_i;
	output wire data_we_o;
	output wire [3:0] data_be_o;
	output wire [31:0] data_addr_o;
	output wire [31:0] data_wdata_o;
	output wire [6:0] data_wdata_intg_o;
	input wire [31:0] data_rdata_i;

	input wire debug_req_i;
	input wire fetch_enable_i;

	wire test_en_i = 1'b1;
	wire [31:0] boot_addr_i = 32'h00000000;

	wire [31:0] eFPGA_result_a_i  = 32'd0;
	wire [31:0] eFPGA_result_b_i  = 32'd0;
	wire [31:0] eFPGA_result_c_i  = 32'd0;
	wire        eFPGA_fpga_done_i = 1'b0;

	wire       irq_nm_i = 1'b0;
        wire [4:0] irq_id_i = 5'd0;

wire        rst_ni = ~rst_i;
wire [31:0] flexbex_addr_o;
//need to set the debug vector
flexbex_ibex_core ibex_core_2 (
    .clk_i(  clk_i),
    .rst_ni( rst_ni),

    .boot_addr_i(boot_addr_i),
    .cluster_id_i(6'd0),
    .core_id_i(4'd1),

    .data_addr_o(    flexbex_addr_o),
    .data_be_o(      data_be_o),
    .data_err_i(     1'b0),
    .data_gnt_i(     data_gnt_i),
    .data_rdata_i(   data_rdata_i),
    .data_req_o(     data_req_o),
    .data_rvalid_i(  data_rvalid_i),
    .data_wdata_o(   data_wdata_o),
    .data_we_o(      data_we_o),

    .instr_addr_o(   instr_addr_o),
    .instr_gnt_i(    instr_gnt_i),
    .instr_rdata_i(  instr_rdata_i),
    .instr_req_o(    instr_req_o),
    .instr_rvalid_i( instr_rvalid_i),

    .debug_req_i(    debug_req_i),
    .fetch_enable_i( fetch_enable_i),
    .ext_perf_counters_i( 1'b0 ),

    .irq_ack_o( ), 
    .irq_i(    irq_nm_i ),
    .irq_id_i( irq_id_i ),
    .irq_id_o( ),
    .eFPGA_operand_a_o( ),
    .eFPGA_operand_b_o( ),
    .eFPGA_result_a_i(eFPGA_result_a_i),
    .eFPGA_result_b_i(eFPGA_result_b_i),
    .eFPGA_result_c_i(eFPGA_result_c_i),
    .eFPGA_write_strobe_o( ),
    .eFPGA_fpga_done_i(eFPGA_fpga_done_i),
    .eFPGA_delay_o( ),
    .eFPGA_en_o( ),
    .eFPGA_operator_o( ),

    .test_en_i(  test_en_i )
);

assign data_addr_o = {flexbex_addr_o[31:2], 2'b00};

endmodule
