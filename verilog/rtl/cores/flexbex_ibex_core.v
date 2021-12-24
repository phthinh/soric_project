module flexbex_ibex_core (
	clk_i,
	rst_ni,
	test_en_i,
	core_id_i,
	cluster_id_i,
	boot_addr_i,
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
	data_rdata_i,
	data_err_i,
	irq_i,
	irq_id_i,
	irq_ack_o,
	irq_id_o,
	debug_req_i,
	fetch_enable_i,
	ext_perf_counters_i,
	eFPGA_operand_a_o,
	eFPGA_operand_b_o,
	eFPGA_result_a_i,
	eFPGA_result_b_i,
	eFPGA_result_c_i,
	eFPGA_write_strobe_o,
	eFPGA_fpga_done_i,
	eFPGA_en_o,
	eFPGA_operator_o,
	eFPGA_delay_o
);
	parameter N_EXT_PERF_COUNTERS = 1;
	parameter [0:0] RV32E = 0;
	parameter [0:0] RV32M = 1;
	parameter DM_HALT_ADDRESS = 32'h000000d8;
	parameter DM_EXCEPTION_ADDRESS = 32'h000000f4;
	input wire clk_i;
	input wire rst_ni;
	input wire test_en_i;
	input wire [3:0] core_id_i;
	input wire [5:0] cluster_id_i;
	input wire [31:0] boot_addr_i;
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
	input wire [31:0] data_rdata_i;
	input wire data_err_i;
	input wire irq_i;
	input wire [4:0] irq_id_i;
	output wire irq_ack_o;
	output wire [4:0] irq_id_o;
	input wire debug_req_i;
	input wire fetch_enable_i;
	input wire [N_EXT_PERF_COUNTERS - 1:0] ext_perf_counters_i;
	output wire [31:0] eFPGA_operand_a_o;
	output wire [31:0] eFPGA_operand_b_o;
	input wire [31:0] eFPGA_result_a_i;
	input wire [31:0] eFPGA_result_b_i;
	input wire [31:0] eFPGA_result_c_i;
	output wire eFPGA_write_strobe_o;
	input eFPGA_fpga_done_i;
	output eFPGA_en_o;
	output [1:0] eFPGA_operator_o;
	output [3:0] eFPGA_delay_o;
	wire eFPGA_en;
	assign eFPGA_en_o = eFPGA_en;
	wire [1:0] eFPGA_operator;
	assign eFPGA_operator_o = eFPGA_operator;
	wire [3:0] eFPGA_delay;
	assign eFPGA_delay_o = eFPGA_delay;
	wire instr_valid_id;
	wire [31:0] instr_rdata_id;
	wire is_compressed_id;
	wire illegal_c_insn_id;
	wire [31:0] pc_if;
	wire [31:0] pc_id;
	wire clear_instr_valid;
	wire pc_set;
	wire [2:0] pc_mux_id;
	wire [2:0] exc_pc_mux_id;
	wire [5:0] exc_cause;
	wire lsu_load_err;
	wire lsu_store_err;
	wire is_decoding;
	wire data_misaligned;
	wire [31:0] misaligned_addr;
	wire [31:0] jump_target_ex;
	wire branch_decision;
	wire ctrl_busy;
	wire if_busy;
	wire lsu_busy;
	wire core_busy;
	wire core_ctrl_firstfetch;
	wire core_busy_int;
	reg core_busy_q;
	wire [4:0] alu_operator_ex;
	wire [31:0] alu_operand_a_ex;
	wire [31:0] alu_operand_b_ex;
	wire [31:0] alu_adder_result_ex;
	wire [31:0] regfile_wdata_ex;
	wire mult_en_ex;
	wire div_en_ex;
	wire [1:0] multdiv_operator_ex;
	wire [1:0] multdiv_signed_mode_ex;
	wire [31:0] multdiv_operand_a_ex;
	wire [31:0] multdiv_operand_b_ex;
	wire csr_access_ex;
	wire [1:0] csr_op_ex;
	wire csr_access;
	wire [1:0] csr_op;
	wire [11:0] csr_addr;
	wire [31:0] csr_rdata;
	wire [31:0] csr_wdata;
	wire data_we_ex;
	wire [1:0] data_type_ex;
	wire data_sign_ext_ex;
	wire [1:0] data_reg_offset_ex;
	wire data_req_ex;
	wire [31:0] data_wdata_ex;
	wire [31:0] regfile_wdata_lsu;
	wire halt_if;
	wire id_ready;
	wire ex_ready;
	wire if_valid;
	wire id_valid;
	wire data_valid_lsu;
	wire instr_req_int;
	wire m_irq_enable;
	wire [31:0] mepc;
	wire [31:0] depc;
	wire csr_save_cause;
	wire csr_save_if;
	wire csr_save_id;
	wire [5:0] csr_cause;
	wire csr_restore_mret_id;
	wire csr_restore_dret_id;
	wire [2:0] debug_cause;
	wire debug_csr_save;
	wire debug_single_step;
	wire debug_ebreakm;
	wire perf_imiss;
	wire perf_jump;
	wire perf_branch;
	wire perf_tbranch;
	wire clk;
	wire clock_en;
	assign core_busy_int = (if_busy | ctrl_busy) | lsu_busy;
	always @(posedge clk_i or negedge rst_ni)
		if (!rst_ni)
			core_busy_q <= 1'b0;
		else
			core_busy_q <= core_busy_int;
	assign core_busy = (core_ctrl_firstfetch ? 1'b1 : core_busy_q);
	assign clock_en = (core_busy | irq_i) | debug_req_i;
	flexbex_prim_clock_gating core_clock_gate_i(
		.clk_i(clk_i),
		.en_i(clock_en),
		.test_en_i(test_en_i),
		.clk_o(clk)
	);
	flexbex_ibex_if_stage #(
		.DM_HALT_ADDRESS(DM_HALT_ADDRESS),
		.DM_EXCEPTION_ADDRESS(DM_EXCEPTION_ADDRESS)
	) if_stage_i(
		.clk(clk),
		.rst_n(rst_ni),
		.boot_addr_i(boot_addr_i),
		.req_i(instr_req_int),
		.instr_req_o(instr_req_o),
		.instr_addr_o(instr_addr_o),
		.instr_gnt_i(instr_gnt_i),
		.instr_rvalid_i(instr_rvalid_i),
		.instr_rdata_i(instr_rdata_i),
		.instr_valid_id_o(instr_valid_id),
		.instr_rdata_id_o(instr_rdata_id),
		.is_compressed_id_o(is_compressed_id),
		.illegal_c_insn_id_o(illegal_c_insn_id),
		.pc_if_o(pc_if),
		.pc_id_o(pc_id),
		.clear_instr_valid_i(clear_instr_valid),
		.pc_set_i(pc_set),
		.exception_pc_reg_i(mepc),
		.depc_i(depc),
		.pc_mux_i(pc_mux_id),
		.exc_pc_mux_i(exc_pc_mux_id),
		.exc_vec_pc_mux_i(exc_cause),
		.jump_target_ex_i(jump_target_ex),
		.halt_if_i(halt_if),
		.id_ready_i(id_ready),
		.if_valid_o(if_valid),
		.if_busy_o(if_busy),
		.perf_imiss_o(perf_imiss)
	);
	flexbex_ibex_id_stage #(
		.RV32E(RV32E),
		.RV32M(RV32M)
	) id_stage_i(
		.clk(clk),
		.rst_n(rst_ni),
		.test_en_i(test_en_i),
		.fetch_enable_i(fetch_enable_i),
		.ctrl_busy_o(ctrl_busy),
		.core_ctrl_firstfetch_o(core_ctrl_firstfetch),
		.is_decoding_o(is_decoding),
		.instr_valid_i(instr_valid_id),
		.instr_rdata_i(instr_rdata_id),
		.instr_req_o(instr_req_int),
		.branch_decision_i(branch_decision),
		.clear_instr_valid_o(clear_instr_valid),
		.pc_set_o(pc_set),
		.pc_mux_o(pc_mux_id),
		.exc_pc_mux_o(exc_pc_mux_id),
		.exc_cause_o(exc_cause),
		.illegal_c_insn_i(illegal_c_insn_id),
		.is_compressed_i(is_compressed_id),
		.pc_id_i(pc_id),
		.halt_if_o(halt_if),
		.id_ready_o(id_ready),
		.ex_ready_i(ex_ready),
		.id_valid_o(id_valid),
		.alu_operator_ex_o(alu_operator_ex),
		.alu_operand_a_ex_o(alu_operand_a_ex),
		.alu_operand_b_ex_o(alu_operand_b_ex),
		.mult_en_ex_o(mult_en_ex),
		.div_en_ex_o(div_en_ex),
		.multdiv_operator_ex_o(multdiv_operator_ex),
		.multdiv_signed_mode_ex_o(multdiv_signed_mode_ex),
		.multdiv_operand_a_ex_o(multdiv_operand_a_ex),
		.multdiv_operand_b_ex_o(multdiv_operand_b_ex),
		.eFPGA_en_o(eFPGA_en),
		.eFPGA_operator_o(eFPGA_operator),
		.eFPGA_operand_a_o(eFPGA_operand_a_o),
		.eFPGA_operand_b_o(eFPGA_operand_b_o),
		.eFPGA_delay_o(eFPGA_delay),
		.csr_access_ex_o(csr_access_ex),
		.csr_op_ex_o(csr_op_ex),
		.csr_cause_o(csr_cause),
		.csr_save_if_o(csr_save_if),
		.csr_save_id_o(csr_save_id),
		.csr_restore_mret_id_o(csr_restore_mret_id),
		.csr_restore_dret_id_o(csr_restore_dret_id),
		.csr_save_cause_o(csr_save_cause),
		.data_req_ex_o(data_req_ex),
		.data_we_ex_o(data_we_ex),
		.data_type_ex_o(data_type_ex),
		.data_sign_ext_ex_o(data_sign_ext_ex),
		.data_reg_offset_ex_o(data_reg_offset_ex),
		.data_wdata_ex_o(data_wdata_ex),
		.data_misaligned_i(data_misaligned),
		.misaligned_addr_i(misaligned_addr),
		.irq_i(irq_i),
		.irq_id_i(irq_id_i),
		.m_irq_enable_i(m_irq_enable),
		.irq_ack_o(irq_ack_o),
		.irq_id_o(irq_id_o),
		.lsu_load_err_i(lsu_load_err),
		.lsu_store_err_i(lsu_store_err),
		.debug_cause_o(debug_cause),
		.debug_csr_save_o(debug_csr_save),
		.debug_req_i(debug_req_i),
		.debug_single_step_i(debug_single_step),
		.debug_ebreakm_i(debug_ebreakm),
		.regfile_wdata_lsu_i(regfile_wdata_lsu),
		.regfile_wdata_ex_i(regfile_wdata_ex),
		.csr_rdata_i(csr_rdata),
		.perf_jump_o(perf_jump),
		.perf_branch_o(perf_branch),
		.perf_tbranch_o(perf_tbranch)
	);
	flexbex_ibex_ex_block #(.RV32M(RV32M)) ex_block_i(
		.clk(clk),
		.rst_n(rst_ni),
		.alu_operator_i(alu_operator_ex),
		.multdiv_operator_i(multdiv_operator_ex),
		.alu_operand_a_i(alu_operand_a_ex),
		.alu_operand_b_i(alu_operand_b_ex),
		.mult_en_i(mult_en_ex),
		.div_en_i(div_en_ex),
		.multdiv_signed_mode_i(multdiv_signed_mode_ex),
		.multdiv_operand_a_i(multdiv_operand_a_ex),
		.multdiv_operand_b_i(multdiv_operand_b_ex),
		.alu_adder_result_ex_o(alu_adder_result_ex),
		.regfile_wdata_ex_o(regfile_wdata_ex),
		.eFPGA_en_i(eFPGA_en),
		.eFPGA_operator_i(eFPGA_operator),
		.eFPGA_fpga_done_i(eFPGA_fpga_done_i),
		.eFPGA_result_a_i(eFPGA_result_a_i),
		.eFPGA_result_b_i(eFPGA_result_b_i),
		.eFPGA_result_c_i(eFPGA_result_c_i),
		.eFPGA_delay_i(eFPGA_delay),
		.eFPGA_write_strobe_o(eFPGA_write_strobe_o),
		.jump_target_o(jump_target_ex),
		.branch_decision_o(branch_decision),
		.lsu_en_i(data_req_ex),
		.lsu_ready_ex_i(data_valid_lsu),
		.ex_ready_o(ex_ready)
	);
	flexbex_ibex_load_store_unit load_store_unit_i(
		.clk(clk),
		.rst_n(rst_ni),
		.data_req_o(data_req_o),
		.data_gnt_i(data_gnt_i),
		.data_rvalid_i(data_rvalid_i),
		.data_err_i(data_err_i),
		.data_addr_o(data_addr_o),
		.data_we_o(data_we_o),
		.data_be_o(data_be_o),
		.data_wdata_o(data_wdata_o),
		.data_rdata_i(data_rdata_i),
		.data_we_ex_i(data_we_ex),
		.data_type_ex_i(data_type_ex),
		.data_wdata_ex_i(data_wdata_ex),
		.data_reg_offset_ex_i(data_reg_offset_ex),
		.data_sign_ext_ex_i(data_sign_ext_ex),
		.data_rdata_ex_o(regfile_wdata_lsu),
		.data_req_ex_i(data_req_ex),
		.adder_result_ex_i(alu_adder_result_ex),
		.data_misaligned_o(data_misaligned),
		.misaligned_addr_o(misaligned_addr),
		.load_err_o(lsu_load_err),
		.store_err_o(lsu_store_err),
		.data_valid_o(data_valid_lsu),
		.lsu_update_addr_o(),
		.busy_o(lsu_busy)
	);
	flexbex_ibex_cs_registers #(
		.N_EXT_CNT(N_EXT_PERF_COUNTERS),
		.RV32E(RV32E),
		.RV32M(RV32M)
	) cs_registers_i(
		.clk(clk),
		.rst_n(rst_ni),
		.core_id_i(core_id_i),
		.cluster_id_i(cluster_id_i),
		.boot_addr_i(boot_addr_i),
		.csr_access_i(csr_access),
		.csr_addr_i(csr_addr),
		.csr_wdata_i(csr_wdata),
		.csr_op_i(csr_op),
		.csr_rdata_o(csr_rdata),
		.m_irq_enable_o(m_irq_enable),
		.mepc_o(mepc),
		.debug_cause_i(debug_cause),
		.debug_csr_save_i(debug_csr_save),
		.depc_o(depc),
		.debug_single_step_o(debug_single_step),
		.debug_ebreakm_o(debug_ebreakm),
		.pc_if_i(pc_if),
		.pc_id_i(pc_id),
		.csr_save_if_i(csr_save_if),
		.csr_save_id_i(csr_save_id),
		.csr_restore_mret_i(csr_restore_mret_id),
		.csr_restore_dret_i(csr_restore_dret_id),
		.csr_cause_i(csr_cause),
		.csr_save_cause_i(csr_save_cause),
		.if_valid_i(if_valid),
		.id_valid_i(id_valid),
		.is_compressed_i(is_compressed_id),
		.is_decoding_i(is_decoding),
		.imiss_i(perf_imiss),
		.pc_set_i(pc_set),
		.jump_i(perf_jump),
		.branch_i(perf_branch),
		.branch_taken_i(perf_tbranch),
		.mem_load_i((data_req_o & data_gnt_i) & ~data_we_o),
		.mem_store_i((data_req_o & data_gnt_i) & data_we_o),
		.ext_counters_i(ext_perf_counters_i)
	);
	assign csr_access = csr_access_ex;
	assign csr_wdata = alu_operand_a_ex;
	assign csr_op = csr_op_ex;
	function automatic [11:0] sv2v_cast_12;
		input reg [11:0] inp;
		sv2v_cast_12 = inp;
	endfunction
	assign csr_addr = sv2v_cast_12((csr_access_ex ? alu_operand_b_ex[11:0] : 12'b000000000000));
endmodule
