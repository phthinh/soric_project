module uart (
	clk,
	rst,
	rx,
	tx,
	transmit,
	tx_byte,
	received,
	rx_byte,
	is_receiving,
	is_transmitting,
	recv_error
);
	input clk;
	input rst;
	input rx;
	output tx;
	input transmit;
	input [7:0] tx_byte;
	output received;
	output [7:0] rx_byte;
	output is_receiving;
	output is_transmitting;
	output recv_error;
	parameter CLOCK_DIVIDE = 2;
	parameter RX_IDLE = 0;
	parameter RX_CHECK_START = 1;
	parameter RX_READ_BITS = 2;
	parameter RX_CHECK_STOP = 3;
	parameter RX_DELAY_RESTART = 4;
	parameter RX_ERROR = 5;
	parameter RX_RECEIVED = 6;
	parameter TX_IDLE = 0;
	parameter TX_SENDING = 1;
	parameter TX_DELAY_RESTART = 2;
	reg [10:0] rx_clk_divider = CLOCK_DIVIDE;
	reg [10:0] tx_clk_divider = CLOCK_DIVIDE;
	reg [2:0] recv_state = RX_IDLE;
	reg [5:0] rx_countdown;
	reg [3:0] rx_bits_remaining;
	reg [7:0] rx_data;
	reg tx_out = 1'b1;
	reg [1:0] tx_state = TX_IDLE;
	reg [5:0] tx_countdown;
	reg [3:0] tx_bits_remaining;
	reg [7:0] tx_data;
	assign received = recv_state == RX_RECEIVED;
	assign recv_error = recv_state == RX_ERROR;
	assign is_receiving = recv_state != RX_IDLE;
	assign rx_byte = rx_data;
	assign tx = tx_out;
	assign is_transmitting = tx_state != TX_IDLE;
	always @(posedge clk) begin
		if (rst) begin
			recv_state = RX_IDLE;
			tx_state = TX_IDLE;
		end
		rx_clk_divider = rx_clk_divider - 1;
		if (!rx_clk_divider) begin
			rx_clk_divider = CLOCK_DIVIDE;
			rx_countdown = rx_countdown - 1;
		end
		tx_clk_divider = tx_clk_divider - 1;
		if (!tx_clk_divider) begin
			tx_clk_divider = CLOCK_DIVIDE;
			tx_countdown = tx_countdown - 1;
		end
		case (recv_state)
			RX_IDLE:
				if (!rx) begin
					rx_clk_divider = CLOCK_DIVIDE;
					rx_countdown = 2;
					recv_state = RX_CHECK_START;
				end
			RX_CHECK_START:
				if (!rx_countdown)
					if (!rx) begin
						rx_countdown = 4;
						rx_bits_remaining = 8;
						recv_state = RX_READ_BITS;
					end
					else
						recv_state = RX_ERROR;
			RX_READ_BITS:
				if (!rx_countdown) begin
					rx_data = {rx, rx_data[7:1]};
					rx_countdown = 4;
					rx_bits_remaining = rx_bits_remaining - 1;
					recv_state = (rx_bits_remaining ? RX_READ_BITS : RX_CHECK_STOP);
				end
			RX_CHECK_STOP:
				if (!rx_countdown)
					recv_state = (rx ? RX_RECEIVED : RX_ERROR);
			RX_DELAY_RESTART: recv_state = (rx_countdown ? RX_DELAY_RESTART : RX_IDLE);
			RX_ERROR: begin
				rx_countdown = 8;
				recv_state = RX_DELAY_RESTART;
			end
			RX_RECEIVED: recv_state = RX_IDLE;
		endcase
		case (tx_state)
			TX_IDLE:
				if (transmit) begin
					tx_data = tx_byte;
					tx_clk_divider = CLOCK_DIVIDE;
					tx_countdown = 4;
					tx_out = 0;
					tx_bits_remaining = 8;
					tx_state = TX_SENDING;
				end
			TX_SENDING:
				if (!tx_countdown)
					if (tx_bits_remaining) begin
						tx_bits_remaining = tx_bits_remaining - 1;
						tx_out = tx_data[0];
						tx_data = {1'b0, tx_data[7:1]};
						tx_countdown = 4;
						tx_state = TX_SENDING;
					end
					else begin
						tx_out = 1;
						tx_countdown = 8;
						tx_state = TX_DELAY_RESTART;
					end
			TX_DELAY_RESTART: tx_state = (tx_countdown ? TX_DELAY_RESTART : TX_IDLE);
		endcase
	end
endmodule
