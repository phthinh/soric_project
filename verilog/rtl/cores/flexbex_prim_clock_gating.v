// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
module flexbex_prim_clock_gating (
	clk_i,
	en_i,
	test_en_i,
	clk_o
);
	input wire clk_i;
	input wire en_i;
	input wire test_en_i;
	output wire clk_o;
	reg clk_en;
	always @(*)
		if (clk_i == 1'b0)
			clk_en <= en_i | test_en_i;
	assign clk_o = clk_i & clk_en;
endmodule
