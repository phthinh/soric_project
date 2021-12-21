module peripheral (
	clk,
	reset,
	slave_data_addr_i,
	slave_data_we_i,
	slave_data_be_i,
	slave_data_wdata_i,
	slave_data_rdata_o,
	slave_data_rvalid_o,
	slave_data_gnt_o,
	data_req_i,
	rxd_uart,
	txd_uart
);
	parameter DATA_WIDTH = 32;
	parameter ADDR_WIDTH = 10;
	input clk;
	input reset;
	input wire [ADDR_WIDTH - 1:0] slave_data_addr_i;
	input wire slave_data_we_i;
	input wire [(DATA_WIDTH / 8) - 1:0] slave_data_be_i;
	input wire [DATA_WIDTH - 1:0] slave_data_wdata_i;
	output reg [DATA_WIDTH - 1:0] slave_data_rdata_o;
	output reg slave_data_rvalid_o;
	output reg slave_data_gnt_o;
	input wire data_req_i;
	input wire rxd_uart;
	output wire txd_uart;
	localparam tdataaddress = 2'b00;
	reg [7:0] s_axis_tdata_uart;
	reg s_axis_tvalid_uart;
	wire s_axis_tready_uart;
	reg [7:0] m_axis_tdata_uart;
	wire m_axis_tvalid_uart;
	reg m_axis_tready_uart;
	wire tx_busy_uart;
	wire rx_busy_uart;
	wire rx_overrun_error_uart;
	wire rx_frame_error_uart;
	reg [22:0] configuration;
	always @(posedge clk) begin : setregister
		if (reset) begin
			slave_data_rvalid_o <= 0;
			slave_data_gnt_o <= 0;
			slave_data_rdata_o <= 0;
			s_axis_tdata_uart <= 0;
			s_axis_tvalid_uart <= 0;
			configuration[22:0] <= 0;
		end
		else if (data_req_i == 1) begin
			slave_data_gnt_o <= 1;
			slave_data_rvalid_o <= 1;
			if (slave_data_addr_i[2:0] == 3'h0) begin
				if (slave_data_we_i == 1'b1) begin
					if (s_axis_tready_uart == 1'b1) begin
						s_axis_tdata_uart <= slave_data_wdata_i[7:0];
						s_axis_tvalid_uart <= 1;
					end
				end
				else begin
					slave_data_rdata_o[7:0] <= m_axis_tdata_uart;
					configuration[22] <= 0;
				end
			end
			else if (slave_data_addr_i[2:0] == 3'h4)
				if (slave_data_we_i == 1'b1) begin
					configuration[15:0] <= slave_data_wdata_i[15:0];
					configuration[22] <= slave_data_wdata_i[22];
				end
				else
					slave_data_rdata_o[21:0] <= configuration[21:0];
		end
		else begin
			slave_data_rvalid_o <= 0;
			slave_data_gnt_o <= 0;
			s_axis_tvalid_uart <= 0;
			configuration[16] <= rx_frame_error_uart;
			configuration[17] <= rx_overrun_error_uart;
			configuration[18] <= rx_busy_uart;
			configuration[19] <= tx_busy_uart;
			configuration[20] <= s_axis_tready_uart;
			if (configuration[21] == 1'b0)
				configuration[21] <= m_axis_tvalid_uart;
			else if ((configuration[22] == 1) && (configuration[21] == 1'b1))
				configuration[21] <= 1'b0;
		end
	end
	reg [7:0] uart_data_recv;
	always @(posedge clk) begin : uart_data
		if (m_axis_tvalid_uart)
			uart_data_recv <= m_axis_tdata_uart;
	end
	axi_uart axi_uart_i(
		.clk(clk),
		.rst(reset),
		.s_axis_tdata(s_axis_tdata_uart),
		.s_axis_tvalid(s_axis_tvalid_uart),
		.s_axis_tready(s_axis_tready_uart),
		.m_axis_tdata(m_axis_tdata_uart),
		.m_axis_tvalid(m_axis_tvalid_uart),
		.m_axis_tready(1'b1),
		.rxd(rxd_uart),
		.txd(txd_uart),
		.tx_busy(tx_busy_uart),
		.rx_busy(rx_busy_uart),
		.rx_overrun_error(rx_overrun_error_uart),
		.rx_frame_error(rx_frame_error_uart),
		.prescale(configuration[15:0])
	);
endmodule
