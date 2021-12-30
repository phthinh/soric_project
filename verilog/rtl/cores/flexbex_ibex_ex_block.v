// Copyright lowRISC contributors.
// Copyright 2018 ETH Zurich and University of Bologna.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

////////////////////////////////////////////////////////////////////////////////
// Engineer:       Renzo Andri - andrire@student.ethz.ch                      //
//                                                                            //
// Additional contributions by:                                               //
//                 Igor Loi - igor.loi@unibo.it                               //
//                 Sven Stucki - svstucki@student.ethz.ch                     //
//                 Andreas Traber - atraber@iis.ee.ethz.ch                    //
//                 Markus Wegmann - markus.wegmann@technokrat.ch              //
//                 Davide Schiavone - pschiavo@iis.ee.ethz.ch                 //
//                                                                            //
// Design Name:    Execute stage                                              //
// Project Name:   ibex                                                       //
// Language:       SystemVerilog                                              //
//                                                                            //
// Description:    Execution block: Hosts ALU and MUL/DIV unit                //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

module flexbex_ibex_ex_block (
	clk,
	rst_n,
	alu_operator_i,
	multdiv_operator_i,
	mult_en_i,
	div_en_i,
	eFPGA_en_i,
	eFPGA_operator_i,
	eFPGA_result_a_i,
	eFPGA_result_b_i,
	eFPGA_result_c_i,
	eFPGA_delay_i,
	eFPGA_fpga_done_i,
	eFPGA_write_strobe_o,
	alu_operand_a_i,
	alu_operand_b_i,
	multdiv_signed_mode_i,
	multdiv_operand_a_i,
	multdiv_operand_b_i,
	alu_adder_result_ex_o,
	regfile_wdata_ex_o,
	jump_target_o,
	branch_decision_o,
	lsu_en_i,
	lsu_ready_ex_i,
	ex_ready_o
);
	parameter [0:0] RV32M = 1;
	input wire clk;
	input wire rst_n;
	input wire [4:0] alu_operator_i;
	input wire [1:0] multdiv_operator_i;
	input wire mult_en_i;
	input wire div_en_i;
	input wire eFPGA_en_i;
	input wire [1:0] eFPGA_operator_i;
	input wire [31:0] eFPGA_result_a_i;
	input wire [31:0] eFPGA_result_b_i;
	input wire [31:0] eFPGA_result_c_i;
	input wire [3:0] eFPGA_delay_i;
	input wire eFPGA_fpga_done_i;
	output wire eFPGA_write_strobe_o;
	input wire [31:0] alu_operand_a_i;
	input wire [31:0] alu_operand_b_i;
	input wire [1:0] multdiv_signed_mode_i;
	input wire [31:0] multdiv_operand_a_i;
	input wire [31:0] multdiv_operand_b_i;
	output wire [31:0] alu_adder_result_ex_o;
	output wire [31:0] regfile_wdata_ex_o;
	output wire [31:0] jump_target_o;
	output wire branch_decision_o;
	input wire lsu_en_i;
	input wire lsu_ready_ex_i;
	output reg ex_ready_o;
	localparam MULT_TYPE = 1;
	wire [31:0] alu_result;
	wire [31:0] multdiv_result;
	wire [31:0] eFPGA_result;
	wire [32:0] multdiv_alu_operand_b;
	wire [32:0] multdiv_alu_operand_a;
	wire [33:0] alu_adder_result_ext;
	wire alu_cmp_result;
	wire alu_is_equal_result;
	wire multdiv_ready;
	wire multdiv_en_sel;
	wire multdiv_en;
	generate
		if (RV32M) begin : gen_multdiv_m
			assign multdiv_en_sel = (MULT_TYPE ? div_en_i : mult_en_i | div_en_i);
			assign multdiv_en = mult_en_i | div_en_i;
		end
		else begin : gen_multdiv_nom
			assign multdiv_en_sel = 1'b0;
			assign multdiv_en = 1'b0;
		end
	endgenerate
	assign regfile_wdata_ex_o = (multdiv_en ? multdiv_result : (eFPGA_en_i ? eFPGA_result : alu_result));
	assign branch_decision_o = alu_cmp_result;
	assign jump_target_o = alu_adder_result_ex_o;
	flexbex_ibex_alu alu_i(
		.operator_i(alu_operator_i),
		.operand_a_i(alu_operand_a_i),
		.operand_b_i(alu_operand_b_i),
		.multdiv_operand_a_i(multdiv_alu_operand_a),
		.multdiv_operand_b_i(multdiv_alu_operand_b),
		.multdiv_en_i(multdiv_en_sel),
		.adder_result_o(alu_adder_result_ex_o),
		.adder_result_ext_o(alu_adder_result_ext),
		.result_o(alu_result),
		.comparison_result_o(alu_cmp_result),
		.is_equal_result_o(alu_is_equal_result)
	);
	flexbex_ibex_multdiv_fast multdiv_i(
		.clk(clk),
		.rst_n(rst_n),
		.mult_en_i(mult_en_i),
		.div_en_i(div_en_i),
		.operator_i(multdiv_operator_i),
		.signed_mode_i(multdiv_signed_mode_i),
		.op_a_i(multdiv_operand_a_i),
		.op_b_i(multdiv_operand_b_i),
		.alu_operand_a_o(multdiv_alu_operand_a),
		.alu_operand_b_o(multdiv_alu_operand_b),
		.alu_adder_ext_i(alu_adder_result_ext),
		.alu_adder_i(alu_adder_result_ex_o),
		.equal_to_zero(alu_is_equal_result),
		.ready_o(multdiv_ready),
		.multdiv_result_o(multdiv_result)
	);
	wire eFPGA_ready;
	flexbex_ibex_eFPGA eFPGA_i(
		.clk(clk),
		.rst_n(rst_n),
		.en_i(eFPGA_en_i),
		.operator_i(eFPGA_operator_i),
		.ready_o(eFPGA_ready),
		.endresult_o(eFPGA_result),
		.result_a_i(eFPGA_result_a_i),
		.result_b_i(eFPGA_result_b_i),
		.result_c_i(eFPGA_result_c_i),
		.delay_i(eFPGA_delay_i),
		.write_strobe(eFPGA_write_strobe_o),
		.efpga_done_i(eFPGA_fpga_done_i)
	);
	always @(*)
		case (1'b1)
			multdiv_en: ex_ready_o = multdiv_ready;
			lsu_en_i: ex_ready_o = lsu_ready_ex_i;
			eFPGA_en_i: ex_ready_o = eFPGA_ready;
			default: ex_ready_o = 1'b1;
		endcase
endmodule
