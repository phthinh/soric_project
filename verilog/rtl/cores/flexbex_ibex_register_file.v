module flexbex_ibex_register_file (
	clk,
	rst_n,
	test_en_i,
	raddr_a_i,
	rdata_a_o,
	raddr_b_i,
	rdata_b_o,
	waddr_a_i,
	wdata_a_i,
	we_a_i
);
	parameter [0:0] RV32E = 0;
	parameter DATA_WIDTH = 32;
	input wire clk;
	input wire rst_n;
	input wire test_en_i;
	input wire [4:0] raddr_a_i;
	output wire [DATA_WIDTH - 1:0] rdata_a_o;
	input wire [4:0] raddr_b_i;
	output wire [DATA_WIDTH - 1:0] rdata_b_o;
	input wire [4:0] waddr_a_i;
	input wire [DATA_WIDTH - 1:0] wdata_a_i;
	input wire we_a_i;
	localparam ADDR_WIDTH = (RV32E ? 4 : 5);
	localparam NUM_WORDS = 2 ** ADDR_WIDTH;
	wire [(NUM_WORDS * DATA_WIDTH) - 1:0] rf_reg;
	reg [((NUM_WORDS - 1) >= 1 ? ((NUM_WORDS - 1) * DATA_WIDTH) + (DATA_WIDTH - 1) : ((3 - NUM_WORDS) * DATA_WIDTH) + (((NUM_WORDS - 1) * DATA_WIDTH) - 1)):((NUM_WORDS - 1) >= 1 ? DATA_WIDTH : (NUM_WORDS - 1) * DATA_WIDTH)] rf_reg_tmp;
	reg [NUM_WORDS - 1:1] we_a_dec;
	always @(*) begin : we_a_decoder
		begin : sv2v_autoblock_1
			reg signed [31:0] i;
			for (i = 1; i < NUM_WORDS; i = i + 1)
				we_a_dec[i] = (waddr_a_i == i ? we_a_i : 1'b0);
		end
	end
	function automatic [DATA_WIDTH - 1:0] sv2v_cast_16D66;
		input reg [DATA_WIDTH - 1:0] inp;
		sv2v_cast_16D66 = inp;
	endfunction
	always @(posedge clk or negedge rst_n)
		if (!rst_n)
			rf_reg_tmp <= {((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS) {sv2v_cast_16D66(1'sb0)}};
		else begin : sv2v_autoblock_2
			reg signed [31:0] r;
			for (r = 1; r < NUM_WORDS; r = r + 1)
				if (we_a_dec[r])
					rf_reg_tmp[((NUM_WORDS - 1) >= 1 ? r : 1 - (r - (NUM_WORDS - 1))) * DATA_WIDTH+:DATA_WIDTH] <= wdata_a_i;
		end
	assign rf_reg[0+:DATA_WIDTH] = 1'sb0;
	assign rf_reg[DATA_WIDTH * (((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : ((NUM_WORDS - 1) + ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS)) - 1) - (((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS) - 1))+:DATA_WIDTH * ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS)] = rf_reg_tmp[DATA_WIDTH * ((NUM_WORDS - 1) >= 1 ? ((NUM_WORDS - 1) >= 1 ? ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : ((NUM_WORDS - 1) + ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS)) - 1) - (((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS) - 1) : ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : ((NUM_WORDS - 1) + ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS)) - 1)) : 1 - (((NUM_WORDS - 1) >= 1 ? ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : ((NUM_WORDS - 1) + ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS)) - 1) - (((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS) - 1) : ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : ((NUM_WORDS - 1) + ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS)) - 1)) - (NUM_WORDS - 1)))+:DATA_WIDTH * ((NUM_WORDS - 1) >= 1 ? NUM_WORDS - 1 : 3 - NUM_WORDS)];
	assign rdata_a_o = rf_reg[raddr_a_i * DATA_WIDTH+:DATA_WIDTH];
	assign rdata_b_o = rf_reg[raddr_b_i * DATA_WIDTH+:DATA_WIDTH];
endmodule
