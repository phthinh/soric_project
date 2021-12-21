`timescale 1 ps / 1 ps

module inter #(
        parameter DATA_WIDTH = 32,
        parameter MASTER_ADDR_WIDTH = 12,
        parameter SLAVE_ADDR_WIDTH = 10,
        parameter MASTERS = 4,
        parameter SLAVES = 3,
        parameter [SLAVES * MASTER_ADDR_WIDTH - 1 :0] MASTER_ADDR_MATCH   = {12'h800, 12'h400, 12'h0},
        parameter [SLAVES * MASTER_ADDR_WIDTH - 1 :0] MASTER_ADDR_MASK = { 12'hC00, 12'hC00, 12'hC00}
)(
        clk,
        reset,
        master_data_req_i,
        master_data_addr_i,
        master_data_we_i,
        master_data_be_i,
        master_data_wdata_i,
        master_data_rdata_o,
        master_data_rvalid_o,
        master_data_gnt_o,
        slave_data_req_o,
        slave_data_addr_o,
        slave_data_we_o,
        slave_data_be_o,
        slave_data_wdata_o,
        slave_data_rdata_i,
        slave_data_rvalid_i,
        slave_data_gnt_i
);

        input clk;
        input reset;
        input wire [MASTERS - 1:0] master_data_req_i;
        input wire [(MASTERS * MASTER_ADDR_WIDTH) - 1:0] master_data_addr_i;
        input wire [MASTERS - 1:0] master_data_we_i;
        input wire [(MASTERS * (DATA_WIDTH / 8)) - 1:0] master_data_be_i;
        input wire [(MASTERS * DATA_WIDTH) - 1:0] master_data_wdata_i;
        output reg [(MASTERS * DATA_WIDTH) - 1:0] master_data_rdata_o;
        output reg [MASTERS - 1:0] master_data_rvalid_o;
        output reg [MASTERS - 1:0] master_data_gnt_o;
        output reg [SLAVES - 1:0] slave_data_req_o;
        output reg [(SLAVES * SLAVE_ADDR_WIDTH) - 1:0] slave_data_addr_o;
        output reg [SLAVES - 1:0] slave_data_we_o;
        output reg [(SLAVES * (DATA_WIDTH / 8)) - 1:0] slave_data_be_o;
        output reg [(SLAVES * DATA_WIDTH) - 1:0] slave_data_wdata_o;
        input wire [(SLAVES * DATA_WIDTH) - 1:0] slave_data_rdata_i;
        input wire [SLAVES - 1:0] slave_data_rvalid_i;
        input wire [SLAVES - 1:0] slave_data_gnt_i;
        reg arb_to_master_grant [MASTERS - 1:0];
     //   wire arb_active;
        genvar i;
        //genvar j;
        logic [(SLAVES * MASTERS) - 1:0] arbiter_request;
        wire [(SLAVES * MASTERS) - 1:0] arbiter_grant;
       //parameter [$clog2(SLAVES):0] PARAM_SLAVE_ADDR = 2'b10;
      
                for (i = 0; i < SLAVES; i = i + 1)  
                always @(*)
                begin
                        for (int j = 0; j < MASTERS; j = j + 1)
                               arbiter_request[(i * MASTERS) + j] = (( master_data_addr_i[ j * MASTER_ADDR_WIDTH +: MASTER_ADDR_WIDTH ] & MASTER_ADDR_MASK[ i * MASTER_ADDR_WIDTH +: MASTER_ADDR_WIDTH ]) ==  MASTER_ADDR_MATCH[ i * MASTER_ADDR_WIDTH +: MASTER_ADDR_WIDTH ] )? master_data_req_i[j] : 0;
                end
                for (i = 0; i < MASTERS; i = i + 1)
                        begin : sv2v_autoblock_1
                           always @(*)begin
                                reg local_arb_grant;
                                local_arb_grant = 1'b0;
                                begin : sv2v_autoblock_2
                                        reg signed [31:0] j;
                                        for (int j = 0; j < SLAVES; j = j + 1)
                                                local_arb_grant = local_arb_grant | arbiter_grant[(j * MASTERS) + i];
                                end
                                arb_to_master_grant[i] = local_arb_grant;
                           end
                        end

                        
        generate
                for (i = 0; i < SLAVES; i = i + 1) begin : generate_arbiters
                        arbiter #(.NUM_PORTS(MASTERS)) i_arb(
                                .clk(clk),
                                .rst(reset),
                                .request(arbiter_request[(i * MASTERS) + (MASTERS - 1)-:MASTERS]),
                                .grant(arbiter_grant[(i * MASTERS) + (MASTERS - 1)-:MASTERS])
                     
                        );
                end
        endgenerate
        genvar a,t;
         
         generate
                 for ( a = 0; a < SLAVES; a = a + 1)
                        begin : slave_out1
                          
                                always @(*)
                                begin 
                                        
                                        slave_data_addr_o[a * SLAVE_ADDR_WIDTH+:SLAVE_ADDR_WIDTH] = 0;
                                        slave_data_we_o[a] = 0;
                                        slave_data_be_o[a * (DATA_WIDTH / 8)+:DATA_WIDTH / 8] = 0;
                                        slave_data_wdata_o[a * DATA_WIDTH+:DATA_WIDTH] = 0;
                                        slave_data_req_o[a] = 0;
                                        for (int  t = 0; t < MASTERS; t = t + 1)
                                        begin : slave_out2
                                                
                                
                                                if (arbiter_grant[(a*MASTERS) + t] == 1'b1) begin : slave_out
                                                        slave_data_addr_o[a * SLAVE_ADDR_WIDTH+:SLAVE_ADDR_WIDTH] = master_data_addr_i[t * MASTER_ADDR_WIDTH+:SLAVE_ADDR_WIDTH];
                                                        slave_data_we_o[a] = master_data_we_i[t];
                                                        slave_data_be_o[a * (DATA_WIDTH / 8)+:DATA_WIDTH / 8] = master_data_be_i[t * (DATA_WIDTH / 8)+:DATA_WIDTH / 8];
                                                        slave_data_wdata_o[a * DATA_WIDTH+:DATA_WIDTH] = master_data_wdata_i[t * DATA_WIDTH+:DATA_WIDTH];
                                                        //need to fix
                                                        slave_data_req_o[a] = master_data_req_i[t];
                                                end
                                        end
                                end
                             

                        end
         endgenerate
        
        generate
        for (i = 0; i < MASTERS; i = i + 1)
                begin :m_data1
                        always @(*)                       
                        begin :m_data2
                                master_data_rdata_o[i * DATA_WIDTH+:DATA_WIDTH] = 0;
                                master_data_rvalid_o[i] = 0;
                                master_data_gnt_o[i] = 0;
                                for (int k = 0; k < SLAVES; k = k + 1)
                                begin
                                        if (arbiter_grant[(k * MASTERS) + i] == 1'b1) 
                                        begin 
                                                master_data_rdata_o[i * DATA_WIDTH+:DATA_WIDTH] = slave_data_rdata_i[k * DATA_WIDTH+:DATA_WIDTH];
                                                master_data_rvalid_o[i] = slave_data_rvalid_i[k];
                                                master_data_gnt_o[i] = slave_data_gnt_i[k] & master_data_req_i[i] ;
                                        end
                                end
                        end
                end
        endgenerate
endmodule


module arbiter     #(
    parameter NUM_PORTS=5
    )(
	clk,
	rst,
	request,
	grant
	//active
);
	parameter SEL_WIDTH = (NUM_PORTS > 1 ? $clog2(NUM_PORTS) : 1);
	input clk;
	input rst;
	input [NUM_PORTS - 1:0] request;
	output reg [NUM_PORTS - 1:0] grant;
	
	//output reg active;
	localparam WRAP_LENGTH = 2 * NUM_PORTS;
	function [SEL_WIDTH - 1:0] ff1;
		input [NUM_PORTS - 1:0] in;
		reg set;
		integer i;
		begin
			set = 1'b0;
			ff1 = 'b0;
			for (i = 0; i < NUM_PORTS; i = i + 1)
				if (in[i] & ~set) begin
					set = 1'b1;
					ff1 = i[0+:SEL_WIDTH];
				end
		end
	endfunction
	integer yy;
	wire next;
	wire [NUM_PORTS - 1:0] order;
	reg [NUM_PORTS - 1:0] token;
	wire [NUM_PORTS - 1:0] token_lookahead [NUM_PORTS - 1:0];
	wire [WRAP_LENGTH - 1:0] token_wrap;
	assign token_wrap = {token, token};
	assign next = ~|(token & request);
	always @(posedge clk) grant <= token & request;

	//always @(posedge clk) active <= |(token & request);
	always @(posedge clk)
		if (rst)
			token <= 'b1;
		else if (next)
			for (yy = 0; yy < NUM_PORTS; yy = yy + 1)
				begin : TOKEN_
					if (order[yy])
						token <= token_lookahead[yy];
				end
	genvar xx;
	generate
		for (xx = 0; xx < NUM_PORTS; xx = xx + 1) begin : ORDER_
			assign token_lookahead[xx] = token_wrap[xx+:NUM_PORTS];
			assign order[xx] = |(token_lookahead[xx] & request);
		end
	endgenerate
endmodule
