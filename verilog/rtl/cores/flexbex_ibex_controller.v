module flexbex_ibex_controller (
	clk,
	rst_n,
	fetch_enable_i,
	ctrl_busy_o,
	first_fetch_o,
	is_decoding_o,
	deassert_we_o,
	illegal_insn_i,
	ecall_insn_i,
	mret_insn_i,
	dret_insn_i,
	pipe_flush_i,
	ebrk_insn_i,
	csr_status_i,
	instr_valid_i,
	instr_req_o,
	pc_set_o,
	pc_mux_o,
	exc_pc_mux_o,
	data_misaligned_i,
	branch_in_id_i,
	branch_set_i,
	jump_set_i,
	instr_multicyle_i,
	irq_i,
	irq_req_ctrl_i,
	irq_id_ctrl_i,
	m_IE_i,
	irq_ack_o,
	irq_id_o,
	exc_cause_o,
	exc_ack_o,
	exc_kill_o,
	debug_req_i,
	debug_cause_o,
	debug_csr_save_o,
	debug_single_step_i,
	debug_ebreakm_i,
	csr_save_if_o,
	csr_save_id_o,
	csr_cause_o,
	csr_restore_mret_id_o,
	csr_restore_dret_id_o,
	csr_save_cause_o,
	operand_a_fw_mux_sel_o,
	halt_if_o,
	halt_id_o,
	id_ready_i,
	perf_jump_o,
	perf_tbranch_o
);
	input wire clk;
	input wire rst_n;
	input wire fetch_enable_i;
	output reg ctrl_busy_o;
	output reg first_fetch_o;
	output reg is_decoding_o;
	output wire deassert_we_o;
	input wire illegal_insn_i;
	input wire ecall_insn_i;
	input wire mret_insn_i;
	input wire dret_insn_i;
	input wire pipe_flush_i;
	input wire ebrk_insn_i;
	input wire csr_status_i;
	input wire instr_valid_i;
	output reg instr_req_o;
	output reg pc_set_o;
	output reg [2:0] pc_mux_o;
	output reg [2:0] exc_pc_mux_o;
	input wire data_misaligned_i;
	input wire branch_in_id_i;
	input wire branch_set_i;
	input wire jump_set_i;
	input wire instr_multicyle_i;
	input wire irq_i;
	input wire irq_req_ctrl_i;
	input wire [4:0] irq_id_ctrl_i;
	input wire m_IE_i;
	output reg irq_ack_o;
	output reg [4:0] irq_id_o;
	output reg [5:0] exc_cause_o;
	output reg exc_ack_o;
	output reg exc_kill_o;
	input wire debug_req_i;
	output reg [2:0] debug_cause_o;
	output reg debug_csr_save_o;
	input wire debug_single_step_i;
	input wire debug_ebreakm_i;
	output reg csr_save_if_o;
	output reg csr_save_id_o;
	output reg [5:0] csr_cause_o;
	output reg csr_restore_mret_id_o;
	output reg csr_restore_dret_id_o;
	output reg csr_save_cause_o;
	output wire operand_a_fw_mux_sel_o;
	output reg halt_if_o;
	output reg halt_id_o;
	input wire id_ready_i;
	output reg perf_jump_o;
	output reg perf_tbranch_o;
	reg [3:0] ctrl_fsm_cs;
	reg [3:0] ctrl_fsm_ns;
	reg irq_enable_int;
	reg debug_mode_q;
	reg debug_mode_n;
	function automatic [5:0] sv2v_cast_6;
		input reg [5:0] inp;
		sv2v_cast_6 = inp;
	endfunction
	always @(*) begin
		instr_req_o = 1'b1;
		exc_ack_o = 1'b0;
		exc_kill_o = 1'b0;
		csr_save_if_o = 1'b0;
		csr_save_id_o = 1'b0;
		csr_restore_mret_id_o = 1'b0;
		csr_restore_dret_id_o = 1'b0;
		csr_save_cause_o = 1'b0;
		exc_cause_o = 6'h00;
		exc_pc_mux_o = 3'd4;
		csr_cause_o = 6'h00;
		pc_mux_o = 3'd0;
		pc_set_o = 1'b0;
		ctrl_fsm_ns = ctrl_fsm_cs;
		ctrl_busy_o = 1'b1;
		is_decoding_o = 1'b0;
		first_fetch_o = 1'b0;
		halt_if_o = 1'b0;
		halt_id_o = 1'b0;
		irq_ack_o = 1'b0;
		irq_id_o = irq_id_ctrl_i;
		irq_enable_int = m_IE_i;
		debug_csr_save_o = 1'b0;
		debug_cause_o = 3'h1;
		debug_mode_n = debug_mode_q;
		perf_tbranch_o = 1'b0;
		perf_jump_o = 1'b0;
		case (ctrl_fsm_cs)
			4'd0: begin
				instr_req_o = 1'b0;
				pc_mux_o = 3'd0;
				pc_set_o = 1'b1;
				if (fetch_enable_i)
					ctrl_fsm_ns = 4'd1;
			end
			4'd1: begin
				instr_req_o = 1'b1;
				pc_mux_o = 3'd0;
				pc_set_o = 1'b1;
				ctrl_fsm_ns = 4'd4;
			end
			4'd2: begin
				ctrl_busy_o = 1'b0;
				instr_req_o = 1'b0;
				halt_if_o = 1'b1;
				halt_id_o = 1'b1;
				ctrl_fsm_ns = 4'd3;
			end
			4'd3: begin
				ctrl_busy_o = 1'b0;
				instr_req_o = 1'b0;
				halt_if_o = 1'b1;
				halt_id_o = 1'b1;
				if (((irq_i || debug_req_i) || debug_mode_q) || debug_single_step_i)
					ctrl_fsm_ns = 4'd4;
			end
			4'd4: begin
				first_fetch_o = 1'b1;
				if (id_ready_i)
					ctrl_fsm_ns = 4'd5;
				if (irq_req_ctrl_i && irq_enable_int) begin
					ctrl_fsm_ns = 4'd7;
					halt_if_o = 1'b1;
					halt_id_o = 1'b1;
				end
				if (debug_req_i && !debug_mode_q) begin
					ctrl_fsm_ns = 4'd8;
					halt_if_o = 1'b1;
					halt_id_o = 1'b1;
				end
			end
			4'd5: begin
				is_decoding_o = 1'b0;
				case (1'b1)
					debug_req_i && !debug_mode_q: begin
						ctrl_fsm_ns = 4'd9;
						halt_if_o = 1'b1;
						halt_id_o = 1'b1;
					end
					((irq_req_ctrl_i && irq_enable_int) && !debug_req_i) && !debug_mode_q: begin
						ctrl_fsm_ns = 4'd7;
						halt_if_o = 1'b1;
						halt_id_o = 1'b1;
					end
					default: begin
						exc_kill_o = (irq_req_ctrl_i & ~instr_multicyle_i) & ~branch_in_id_i;
						if (instr_valid_i) begin
							is_decoding_o = 1'b1;
							if (branch_set_i || jump_set_i) begin
								pc_mux_o = 3'd1;
								pc_set_o = 1'b1;
								perf_tbranch_o = branch_set_i;
								perf_jump_o = jump_set_i;
							end
							else if ((((((mret_insn_i || dret_insn_i) || ecall_insn_i) || pipe_flush_i) || ebrk_insn_i) || illegal_insn_i) || csr_status_i) begin
								ctrl_fsm_ns = 4'd6;
								halt_if_o = 1'b1;
								halt_id_o = 1'b1;
							end
						end
					end
				endcase
				if (debug_single_step_i && !debug_mode_q) begin
					halt_if_o = 1'b1;
					ctrl_fsm_ns = 4'd8;
				end
			end
			4'd7: begin
				pc_mux_o = 3'd2;
				pc_set_o = 1'b1;
				exc_pc_mux_o = 3'd4;
				exc_cause_o = sv2v_cast_6({1'b0, irq_id_ctrl_i});
				csr_save_cause_o = 1'b1;
				csr_cause_o = sv2v_cast_6({1'b1, irq_id_ctrl_i});
				csr_save_if_o = 1'b1;
				irq_ack_o = 1'b1;
				exc_ack_o = 1'b1;
				ctrl_fsm_ns = 4'd5;
			end
			4'd8: begin
				pc_mux_o = 3'd2;
				pc_set_o = 1'b1;
				exc_pc_mux_o = 3'd5;
				csr_save_if_o = 1'b1;
				debug_csr_save_o = 1'b1;
				csr_save_cause_o = 1'b1;
				if (debug_single_step_i)
					debug_cause_o = 3'h4;
				else if (debug_req_i)
					debug_cause_o = 3'h3;
				else if (ebrk_insn_i)
					debug_cause_o = 3'h1;
				debug_mode_n = 1'b1;
				ctrl_fsm_ns = 4'd5;
			end
			4'd9: begin
				pc_mux_o = 3'd2;
				pc_set_o = 1'b1;
				exc_pc_mux_o = 3'd5;
				if (((ebrk_insn_i && debug_ebreakm_i) && !debug_mode_q) || (debug_req_i && !debug_mode_q)) begin
					csr_save_cause_o = 1'b1;
					csr_save_id_o = 1'b1;
					debug_csr_save_o = 1'b1;
					if (debug_req_i)
						debug_cause_o = 3'h3;
					else if (ebrk_insn_i)
						debug_cause_o = 3'h1;
				end
				debug_mode_n = 1'b1;
				ctrl_fsm_ns = 4'd5;
			end
			4'd6: begin
				halt_if_o = 1'b1;
				halt_id_o = 1'b1;
				if (!pipe_flush_i)
					ctrl_fsm_ns = 4'd5;
				else
					ctrl_fsm_ns = 4'd2;
				case (1'b1)
					ecall_insn_i: begin
						pc_mux_o = 3'd2;
						pc_set_o = 1'b1;
						csr_save_id_o = 1'b1;
						csr_save_cause_o = 1'b1;
						exc_pc_mux_o = 3'd1;
						exc_cause_o = 6'h0b;
						csr_cause_o = 6'h0b;
					end
					illegal_insn_i: begin
						pc_mux_o = 3'd2;
						pc_set_o = 1'b1;
						csr_save_id_o = 1'b1;
						csr_save_cause_o = 1'b1;
						if (debug_mode_q)
							exc_pc_mux_o = 3'd6;
						else
							exc_pc_mux_o = 3'd0;
						exc_cause_o = 6'h02;
						csr_cause_o = 6'h02;
					end
					mret_insn_i: begin
						pc_mux_o = 3'd3;
						pc_set_o = 1'b1;
						csr_restore_mret_id_o = 1'b1;
					end
					dret_insn_i: begin
						pc_mux_o = 3'd4;
						pc_set_o = 1'b1;
						debug_mode_n = 1'b0;
						csr_restore_dret_id_o = 1'b1;
					end
					ebrk_insn_i:
						if (debug_mode_q)
							ctrl_fsm_ns = 4'd9;
						else if (debug_ebreakm_i)
							ctrl_fsm_ns = 4'd9;
						else begin
							pc_mux_o = 3'd2;
							pc_set_o = 1'b1;
							csr_save_id_o = 1'b1;
							csr_save_cause_o = 1'b1;
							exc_pc_mux_o = 3'd7;
							exc_cause_o = 6'h03;
							csr_cause_o = 6'h03;
						end
					default:
						;
				endcase
			end
			default: begin
				instr_req_o = 1'b0;
				ctrl_fsm_ns = 4'd0;
			end
		endcase
	end
	assign deassert_we_o = ~is_decoding_o | illegal_insn_i;
	assign operand_a_fw_mux_sel_o = (data_misaligned_i ? 1'd1 : 1'd0);
	always @(posedge clk or negedge rst_n) begin : UPDATE_REGS
		if (!rst_n) begin
			ctrl_fsm_cs <= 4'd0;
			debug_mode_q <= 1'b0;
		end
		else begin
			ctrl_fsm_cs <= ctrl_fsm_ns;
			debug_mode_q <= debug_mode_n;
		end
	end
endmodule
