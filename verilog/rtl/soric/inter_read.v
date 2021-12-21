module inter_read (
	clk,
	reset,
	master_data_req_i,
	master_data_addr_i,
	master_data_rdata_o,
	master_data_rvalid_o,
	master_data_gnt_o,
	slave_data_req_o,
	slave_data_addr_o,
	slave_data_rdata_i,
	slave_data_gnt_i
);
	parameter DATA_WIDTH = 32;
	parameter M_ADDR_WIDTH = 11;
	parameter S_ADDR_WIDTH = 10;
	parameter ROMASTERS = 2;
	parameter ROSLAVES = 2;
	parameter [(ROSLAVES * M_ADDR_WIDTH) - 1:0] M_ADDR_MATCH = 22'h200000;
	parameter [(ROSLAVES * M_ADDR_WIDTH) - 1:0] M_ADDR_MASK = 22'h200400;
	input clk;
	input reset;
	input wire [ROMASTERS - 1:0] master_data_req_i;
	input wire [(ROMASTERS * M_ADDR_WIDTH) - 1:0] master_data_addr_i;
	output reg [(ROMASTERS * DATA_WIDTH) - 1:0] master_data_rdata_o;
	output reg [ROMASTERS - 1:0] master_data_rvalid_o;
	output reg [ROMASTERS - 1:0] master_data_gnt_o;
	output reg [ROSLAVES - 1:0] slave_data_req_o;
	output reg [(ROSLAVES * S_ADDR_WIDTH) - 1:0] slave_data_addr_o;
	input wire [(ROSLAVES * DATA_WIDTH) - 1:0] slave_data_rdata_i;
	input wire [ROSLAVES - 1:0] slave_data_gnt_i;
	genvar i;
	reg [(ROSLAVES * ROMASTERS) - 1:0] arbiter_request;
	wire [(ROSLAVES * ROMASTERS) - 1:0] arbiter_grant;
	generate
		for (i = 0; i < ROSLAVES; i = i + 1) begin : gen_slave_arbiter
			always @(*) begin : sv2v_autoblock_1
				reg signed [31:0] j;
				for (j = 0; j < ROMASTERS; j = j + 1)
					arbiter_request[(i * ROMASTERS) + j] = ((master_data_addr_i[j * M_ADDR_WIDTH+:M_ADDR_WIDTH] & M_ADDR_MASK[i * M_ADDR_WIDTH+:M_ADDR_WIDTH]) == M_ADDR_MATCH[i * M_ADDR_WIDTH+:M_ADDR_WIDTH] ? master_data_req_i[j] : 0);
			end
		end
		for (i = 0; i < ROSLAVES; i = i + 1) begin : generate_arbiters
			arbiter #(.NUM_PORTS(ROMASTERS)) i_arb(
				.clk(clk),
				.rst(reset),
				.request(arbiter_request[(i * ROMASTERS) + (ROMASTERS - 1)-:ROMASTERS]),
				.grant(arbiter_grant[(i * ROMASTERS) + (ROMASTERS - 1)-:ROMASTERS])
			);
		end
	endgenerate
	genvar a;
	generate
		for (a = 0; a < ROSLAVES; a = a + 1) begin : slave_out1
			always @(*) begin
				slave_data_addr_o[a * S_ADDR_WIDTH+:S_ADDR_WIDTH] = 0;
				slave_data_req_o[a] = 0;
				begin : sv2v_autoblock_2
					reg signed [31:0] t;
					for (t = 0; t < ROMASTERS; t = t + 1)
						if (arbiter_grant[(a * ROMASTERS) + t] == 1'b1) begin
							slave_data_addr_o[a * S_ADDR_WIDTH+:S_ADDR_WIDTH] = master_data_addr_i[t * M_ADDR_WIDTH+:S_ADDR_WIDTH];
							slave_data_req_o[a] = master_data_req_i[t];
						end
				end
			end
		end
	endgenerate
	reg [ROMASTERS - 1:0] master_data_rvalid;
	generate
		for (i = 0; i < ROMASTERS; i = i + 1) begin : m_data1
			always @(*) begin
				master_data_rdata_o[i * DATA_WIDTH+:DATA_WIDTH] = 0;
				master_data_gnt_o[i] = 0;
				master_data_rvalid[i] = 0;
				begin : sv2v_autoblock_3
					reg signed [31:0] j;
					for (j = 0; j < ROSLAVES; j = j + 1)
						if (arbiter_grant[(j * ROMASTERS) + i] == 1'b1) begin
							master_data_rdata_o[i * DATA_WIDTH+:DATA_WIDTH] = slave_data_rdata_i[j * DATA_WIDTH+:DATA_WIDTH];
							master_data_gnt_o[i] = ((slave_data_gnt_i[j] & master_data_req_i[i]) & arbiter_grant[(j * ROMASTERS) + i+:1]) & arbiter_request[(j * ROMASTERS) + i+:1];
							master_data_rvalid[i] = master_data_gnt_o[i];
						end
				end
			end
		end
	endgenerate
	always @(posedge clk) master_data_rvalid_o = master_data_rvalid;
endmodule
