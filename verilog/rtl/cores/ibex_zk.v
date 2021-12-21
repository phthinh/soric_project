module ibex_zk (
	operator_i,
	operand_a_i,
	operand_b_i,
	result_o,
	zk_val_o
);
	parameter integer RV32Zk = 32'sd0;
	input wire [6:0] operator_i;
	input wire [31:0] operand_a_i;
	input wire [31:0] operand_b_i;
	output wire [31:0] result_o;
	output wire zk_val_o;
	function automatic [31:0] ror32;
		input reg [31:0] x;
		input reg [4:0] amt;
		reg [31:0] ro;
		reg [31:0] l8;
		reg [31:0] l4;
		reg [31:0] l2;
		reg [31:0] l1;
		reg [31:0] l0;
		begin
			l0 = x;
			l1 = ({32 {amt[0]}} & {l0[0], l0[31:1]}) | ({32 {!amt[0]}} & l0[31:0]);
			l2 = ({32 {amt[1]}} & {l1[1:0], l1[31:2]}) | ({32 {!amt[1]}} & l1[31:0]);
			l4 = ({32 {amt[2]}} & {l2[3:0], l2[31:4]}) | ({32 {!amt[2]}} & l2[31:0]);
			l8 = ({32 {amt[3]}} & {l4[7:0], l4[31:8]}) | ({32 {!amt[3]}} & l4[31:0]);
			ro = ({32 {amt[4]}} & {l8[15:0], l8[31:16]}) | ({32 {!amt[4]}} & l8[31:0]);
			ror32 = ro;
		end
	endfunction
	function automatic [31:0] rol32;
		input reg [31:0] x;
		input reg [4:0] amt;
		reg [31:0] ro;
		reg [31:0] l8;
		reg [31:0] l4;
		reg [31:0] l2;
		reg [31:0] l1;
		reg [31:0] l0;
		begin
			l0 = x;
			l1 = ({32 {amt[0]}} & {l0[30:0], l0[31]}) | ({32 {!amt[0]}} & l0[31:0]);
			l2 = ({32 {amt[1]}} & {l1[29:0], l1[31:30]}) | ({32 {!amt[1]}} & l1[31:0]);
			l4 = ({32 {amt[2]}} & {l2[27:0], l2[31:28]}) | ({32 {!amt[2]}} & l2[31:0]);
			l8 = ({32 {amt[3]}} & {l4[23:0], l4[31:24]}) | ({32 {!amt[3]}} & l4[31:0]);
			ro = ({32 {amt[4]}} & {l8[15:0], l8[31:16]}) | ({32 {!amt[4]}} & l8[31:0]);
			rol32 = ro;
		end
	endfunction
	function automatic [7:0] rev8;
		input reg [7:0] x;
		reg [7:0] rb;
		begin
			begin : sv2v_autoblock_1
				reg signed [31:0] i;
				for (i = 0; i < 8; i = i + 1)
					rb[i] = x[(8 - i) - 1];
			end
			rev8 = rb;
		end
	endfunction
	function automatic [31:0] zip32;
		input reg [31:0] x;
		reg [31:0] uz;
		begin
			begin : sv2v_autoblock_2
				reg signed [31:0] i;
				for (i = 0; i < 16; i = i + 1)
					begin
						uz[2 * i] = x[i];
						uz[(2 * i) + 1] = x[i + 16];
					end
			end
			zip32 = uz;
		end
	endfunction
	function automatic [31:0] unzip32;
		input reg [31:0] x;
		reg [15:0] zh;
		reg [15:0] zl;
		begin
			begin : sv2v_autoblock_3
				reg signed [31:0] i;
				for (i = 0; i < 16; i = i + 1)
					begin
						zh[i] = x[(2 * i) + 1];
						zl[i] = x[2 * i];
					end
			end
			unzip32 = {zh, zl};
		end
	endfunction
	function automatic [7:0] xtime2;
		input reg [7:0] a;
		reg [7:0] x2;
		begin
			x2 = {a[6:0], 1'b0} ^ (a[7] ? 8'h1b : 8'b00000000);
			xtime2 = x2;
		end
	endfunction
	function automatic [7:0] xtimeN;
		input reg [7:0] a;
		input reg [3:0] b;
		reg [7:0] xn;
		begin
			xn = (((b[0] ? a : 0) ^ (b[1] ? xtime2(a) : 0)) ^ (b[2] ? xtime2(xtime2(a)) : 0)) ^ (b[3] ? xtime2(xtime2(xtime2(a))) : 0);
			xtimeN = xn;
		end
	endfunction
	wire zkb_val;
	wire [31:0] zkb_result;
	generate
		if (RV32Zk != 32'sd0) begin : gen_zkb
			wire ror_sel;
			wire rol_sel;
			wire rori_sel;
			wire andn_sel;
			wire orn_sel;
			wire xnor_sel;
			wire pack_sel;
			wire packh_sel;
			wire brev8_sel;
			wire rev8_sel;
			wire zip_sel;
			wire unzip_sel;
			wire clmull_sel;
			wire clmulh_sel;
			wire xperm8_sel;
			wire xperm4_sel;
			assign ror_sel = operator_i == 7'd67;
			assign rol_sel = operator_i == 7'd68;
			assign rori_sel = operator_i == 7'd62;
			assign andn_sel = operator_i == 7'd69;
			assign orn_sel = operator_i == 7'd70;
			assign xnor_sel = operator_i == 7'd71;
			assign pack_sel = operator_i == 7'd72;
			assign packh_sel = operator_i == 7'd73;
			assign brev8_sel = operator_i == 7'd63;
			assign rev8_sel = operator_i == 7'd64;
			assign zip_sel = operator_i == 7'd65;
			assign unzip_sel = operator_i == 7'd66;
			assign clmull_sel = operator_i == 7'd74;
			assign clmulh_sel = operator_i == 7'd75;
			assign xperm8_sel = operator_i == 7'd76;
			assign xperm4_sel = operator_i == 7'd77;
			wire [4:0] shamt;
			assign shamt = operand_b_i[4:0];
			wire [31:0] wror;
			wire [31:0] wrol;
			wire [31:0] wandn;
			wire [31:0] worn;
			wire [31:0] wxnor;
			wire [31:0] wpack;
			wire [31:0] wpackh;
			assign wror = ror32(operand_a_i, shamt);
			assign wrol = rol32(operand_a_i, shamt);
			assign wandn = operand_a_i & ~operand_b_i;
			assign worn = operand_a_i | ~operand_b_i;
			assign wxnor = operand_a_i ^ ~operand_b_i;
			assign wpack = {operand_b_i[15:0], operand_a_i[15:0]};
			assign wpackh = {16'd0, operand_b_i[7:0], operand_a_i[7:0]};
			wire [7:0] rs1_b0;
			wire [7:0] rs1_b1;
			wire [7:0] rs1_b2;
			wire [7:0] rs1_b3;
			assign rs1_b0 = operand_a_i[7:0];
			assign rs1_b1 = operand_a_i[15:8];
			assign rs1_b2 = operand_a_i[23:16];
			assign rs1_b3 = operand_a_i[31:24];
			wire [7:0] brev8_0;
			wire [7:0] brev8_1;
			wire [7:0] brev8_2;
			wire [7:0] brev8_3;
			assign brev8_0 = rev8(rs1_b0);
			assign brev8_1 = rev8(rs1_b1);
			assign brev8_2 = rev8(rs1_b2);
			assign brev8_3 = rev8(rs1_b3);
			wire [31:0] wbrev8;
			wire [31:0] wrev8;
			assign wbrev8 = {brev8_3, brev8_2, brev8_1, brev8_0};
			assign wrev8 = {rs1_b0, rs1_b1, rs1_b2, rs1_b3};
			wire [31:0] wzip;
			wire [31:0] wunzip;
			assign wzip = zip32(operand_a_i);
			assign wunzip = unzip32(operand_a_i);
			wire [3:0] lut_4b [7:0];
			wire [31:0] wxperm4;
			genvar i;
			for (i = 0; i < 8; i = i + 1) begin : gen_lut_xperm4
				assign lut_4b[i] = operand_a_i[4 * i+:4];
				wire [2:0] lut_8idx;
				assign lut_8idx = operand_b_i[4 * i+:3];
				wire [3:0] lut4_out;
				assign lut4_out = lut_4b[lut_8idx];
				assign wxperm4[i * 4+:4] = (operand_b_i[(4 * i) + 3] ? 4'b0000 : lut4_out);
			end
			wire [7:0] lut_8b [3:0];
			wire [31:0] wxperm8;
			for (i = 0; i < 4; i = i + 1) begin : gen_lut_xperm8
				assign lut_8b[i] = operand_a_i[8 * i+:8];
				wire [1:0] lut_4idx;
				assign lut_4idx = operand_b_i[8 * i+:2];
				wire [7:0] lut8_out;
				assign lut8_out = lut_8b[lut_4idx];
				assign wxperm8[i * 8+:8] = (|{operand_b_i[(8 * i) + 7:(8 * i) + 2]} ? 8'd0 : lut8_out);
			end
			wire [15:0] lhs0;
			wire [15:0] rhs0;
			wire [15:0] lhs1;
			wire [15:0] rhs1;
			wire [15:0] lhs2;
			wire [15:0] rhs2;
			assign lhs0 = (clmulh_sel ? operand_a_i[31:16] : operand_a_i[15:0]);
			assign rhs0 = (clmulh_sel ? operand_b_i[31:16] : operand_b_i[15:0]);
			assign lhs1 = operand_a_i[15:0];
			assign rhs1 = operand_b_i[31:16];
			assign lhs2 = operand_a_i[31:16];
			assign rhs2 = operand_b_i[15:0];
			wire [31:0] polymul0;
			wire [31:0] polymul1;
			wire [31:0] polymul2;
			ibex_poly16_mul mul16_ins0(
				lhs0,
				rhs0,
				polymul0
			);
			ibex_poly16_mul mul16_ins1(
				lhs1,
				rhs1,
				polymul1
			);
			ibex_poly16_mul mul16_ins2(
				lhs2,
				rhs2,
				polymul2
			);
			wire [31:0] wclmull;
			wire [31:0] wclmulh;
			wire [31:0] clmulm;
			assign clmulm = polymul1 ^ polymul2;
			assign wclmulh = {polymul0[31:16], polymul0[15:0] ^ clmulm[31:16]};
			assign wclmull = {polymul0[31:16] ^ clmulm[15:0], polymul0[15:0]};
			assign zkb_val = |{ror_sel, rol_sel, rori_sel, andn_sel, orn_sel, xnor_sel, pack_sel, packh_sel, brev8_sel, rev8_sel, zip_sel, unzip_sel, clmull_sel, clmulh_sel, xperm8_sel, xperm4_sel};
			assign zkb_result = ((((((((((((((({32 {ror_sel}} & wror) | ({32 {rol_sel}} & wrol)) | ({32 {rori_sel}} & wror)) | ({32 {andn_sel}} & wandn)) | ({32 {orn_sel}} & worn)) | ({32 {xnor_sel}} & wxnor)) | ({32 {pack_sel}} & wpack)) | ({32 {packh_sel}} & wpackh)) | ({32 {brev8_sel}} & wbrev8)) | ({32 {rev8_sel}} & wrev8)) | ({32 {zip_sel}} & wzip)) | ({32 {unzip_sel}} & wunzip)) | ({32 {clmull_sel}} & wclmull)) | ({32 {clmulh_sel}} & wclmulh)) | ({32 {xperm8_sel}} & wxperm8)) | ({32 {xperm4_sel}} & wxperm4);
		end
		else begin : no_gen_zkb
			assign zkb_val = 1'b0;
			assign zkb_result = 32'd0;
		end
	endgenerate
	wire zkn_val;
	wire [31:0] zkn_result;
	generate
		if (RV32Zk == 32'sd2) begin : gen_zkn
			wire bs0;
			wire bs1;
			wire bs2;
			wire bs3;
			assign bs0 = (((operator_i == 7'd88) || (operator_i == 7'd92)) || (operator_i == 7'd96)) || (operator_i == 7'd100);
			assign bs1 = (((operator_i == 7'd89) || (operator_i == 7'd93)) || (operator_i == 7'd97)) || (operator_i == 7'd101);
			assign bs2 = (((operator_i == 7'd90) || (operator_i == 7'd94)) || (operator_i == 7'd98)) || (operator_i == 7'd102);
			assign bs3 = (((operator_i == 7'd91) || (operator_i == 7'd95)) || (operator_i == 7'd99)) || (operator_i == 7'd103);
			wire decs_sel;
			wire encs_sel;
			wire decsm_sel;
			wire encsm_sel;
			assign decs_sel = (((operator_i == 7'd88) || (operator_i == 7'd89)) || (operator_i == 7'd90)) || (operator_i == 7'd91);
			assign encs_sel = (((operator_i == 7'd96) || (operator_i == 7'd97)) || (operator_i == 7'd98)) || (operator_i == 7'd99);
			assign decsm_sel = (((operator_i == 7'd92) || (operator_i == 7'd93)) || (operator_i == 7'd94)) || (operator_i == 7'd95);
			assign encsm_sel = (((operator_i == 7'd100) || (operator_i == 7'd101)) || (operator_i == 7'd102)) || (operator_i == 7'd103);
			wire aes32_sel;
			assign aes32_sel = ((decs_sel || encs_sel) || encsm_sel) || decsm_sel;
			wire [7:0] sel_byte;
			assign sel_byte = ((({8 {bs0}} & operand_b_i[7:0]) | ({8 {bs1}} & operand_b_i[15:8])) | ({8 {bs2}} & operand_b_i[23:16])) | ({8 {bs3}} & operand_b_i[31:24]);
			wire dec;
			wire mix;
			assign dec = decs_sel || decsm_sel;
			assign mix = encsm_sel || decsm_sel;
			wire [7:0] sbox_out;
			ibex_aes_sbox i_aes_sbox(
				.fw(~dec),
				.in(sel_byte),
				.fx(sbox_out)
			);
			wire [7:0] mix_b0;
			wire [7:0] mix_b1;
			wire [7:0] mix_b2;
			wire [7:0] mix_b3;
			assign mix_b3 = xtimeN(sbox_out, (dec ? 11 : 3));
			assign mix_b2 = (dec ? xtimeN(sbox_out, 13) : sbox_out);
			assign mix_b1 = (dec ? xtimeN(sbox_out, 9) : sbox_out);
			assign mix_b0 = xtimeN(sbox_out, (dec ? 14 : 2));
			wire [31:0] mixed;
			wire [31:0] sbox_mix;
			wire [31:0] rotated;
			assign mixed = {mix_b3, mix_b2, mix_b1, mix_b0};
			assign sbox_mix = (mix ? mixed : {24'b000000000000000000000000, sbox_out});
			assign rotated = ((({32 {bs0}} & {sbox_mix}) | ({32 {bs1}} & {sbox_mix[23:0], sbox_mix[31:24]})) | ({32 {bs2}} & {sbox_mix[15:0], sbox_mix[31:16]})) | ({32 {bs3}} & {sbox_mix[7:0], sbox_mix[31:8]});
			wire sha256_sum0_sel;
			wire sha256_sum1_sel;
			wire sha256_sig0_sel;
			wire sha256_sig1_sel;
			assign sha256_sum0_sel = operator_i == 7'd78;
			assign sha256_sum1_sel = operator_i == 7'd79;
			assign sha256_sig0_sel = operator_i == 7'd80;
			assign sha256_sig1_sel = operator_i == 7'd81;
			wire sha512_sum0r_sel;
			wire sha512_sum1r_sel;
			wire sha512_sig0l_sel;
			wire sha512_sig1l_sel;
			wire sha512_sig0h_sel;
			wire sha512_sig1h_sel;
			assign sha512_sum0r_sel = operator_i == 7'd82;
			assign sha512_sum1r_sel = operator_i == 7'd83;
			assign sha512_sig0l_sel = operator_i == 7'd84;
			assign sha512_sig0h_sel = operator_i == 7'd86;
			assign sha512_sig1l_sel = operator_i == 7'd85;
			assign sha512_sig1h_sel = operator_i == 7'd87;
			wire [31:0] sha256_sum0;
			wire [31:0] sha256_sum1;
			wire [31:0] sha256_sig0;
			wire [31:0] sha256_sig1;
			assign sha256_sig0 = (((operand_a_i >> 7) | (operand_a_i << 25)) ^ ((operand_a_i >> 18) | (operand_a_i << 14))) ^ (operand_a_i >> 3);
			assign sha256_sig1 = (((operand_a_i >> 17) | (operand_a_i << 15)) ^ ((operand_a_i >> 19) | (operand_a_i << 13))) ^ (operand_a_i >> 10);
			assign sha256_sum0 = (((operand_a_i >> 2) | (operand_a_i << 30)) ^ ((operand_a_i >> 13) | (operand_a_i << 19))) ^ ((operand_a_i >> 22) | (operand_a_i << 10));
			assign sha256_sum1 = (((operand_a_i >> 6) | (operand_a_i << 26)) ^ ((operand_a_i >> 11) | (operand_a_i << 21))) ^ ((operand_a_i >> 25) | (operand_a_i << 7));
			wire [31:0] sha512_sum0r;
			wire [31:0] sha512_sum1r;
			wire [31:0] sha512_sig0l;
			wire [31:0] sha512_sig1l;
			wire [31:0] sha512_sig0h;
			wire [31:0] sha512_sig1h;
			assign sha512_sum0r = (((((operand_a_i << 25) ^ (operand_a_i << 30)) ^ (operand_a_i >> 28)) ^ (operand_b_i >> 7)) ^ (operand_b_i >> 2)) ^ (operand_b_i << 4);
			assign sha512_sum1r = (((((operand_a_i << 23) ^ (operand_a_i >> 14)) ^ (operand_a_i >> 18)) ^ (operand_b_i >> 9)) ^ (operand_b_i << 18)) ^ (operand_b_i << 14);
			assign sha512_sig0l = (((((operand_a_i >> 1) ^ (operand_a_i >> 7)) ^ (operand_a_i >> 8)) ^ (operand_b_i << 31)) ^ (operand_b_i << 25)) ^ (operand_b_i << 24);
			assign sha512_sig0h = ((((operand_a_i >> 1) ^ (operand_a_i >> 7)) ^ (operand_a_i >> 8)) ^ (operand_b_i << 31)) ^ (operand_b_i << 24);
			assign sha512_sig1l = (((((operand_a_i << 3) ^ (operand_a_i >> 6)) ^ (operand_a_i >> 19)) ^ (operand_b_i >> 29)) ^ (operand_b_i << 26)) ^ (operand_b_i << 13);
			assign sha512_sig1h = ((((operand_a_i << 3) ^ (operand_a_i >> 6)) ^ (operand_a_i >> 19)) ^ (operand_b_i >> 29)) ^ (operand_b_i << 13);
			assign zkn_val = |{sha256_sum0_sel, sha256_sum1_sel, sha256_sig0_sel, sha256_sig1_sel, sha512_sum0r_sel, sha512_sum1r_sel, sha512_sig0l_sel, sha512_sig1l_sel, sha512_sig0h_sel, sha512_sig1h_sel, aes32_sel};
			assign zkn_result = (((((((((({32 {aes32_sel}} & (rotated ^ operand_a_i)) | ({32 {sha256_sig0_sel}} & sha256_sig0)) | ({32 {sha256_sig1_sel}} & sha256_sig1)) | ({32 {sha256_sum0_sel}} & sha256_sum0)) | ({32 {sha256_sum1_sel}} & sha256_sum1)) | ({32 {sha512_sum0r_sel}} & sha512_sum0r)) | ({32 {sha512_sum1r_sel}} & sha512_sum1r)) | ({32 {sha512_sig0l_sel}} & sha512_sig0l)) | ({32 {sha512_sig0h_sel}} & sha512_sig0h)) | ({32 {sha512_sig1l_sel}} & sha512_sig1l)) | ({32 {sha512_sig1h_sel}} & sha512_sig1h);
		end
		else begin : no_gen_zkn
			assign zkn_val = 1'b0;
			assign zkn_result = 32'd0;
		end
	endgenerate
	wire zks_val;
	wire [31:0] zks_result;
	generate
		if (RV32Zk == 32'sd3) begin : gen_zks
			wire sm4ed_sel;
			wire sm4ks_sel;
			wire sm3p0_sel;
			wire sm3p1_sel;
			assign sm4ed_sel = (((operator_i == 7'd104) || (operator_i == 7'd106)) || (operator_i == 7'd105)) || (operator_i == 7'd107);
			assign sm4ks_sel = (((operator_i == 7'd108) || (operator_i == 7'd110)) || (operator_i == 7'd109)) || (operator_i == 7'd111);
			assign sm3p0_sel = operator_i == 7'd112;
			assign sm3p1_sel = operator_i == 7'd113;
			wire zks_bs0;
			wire zks_bs1;
			wire zks_bs2;
			wire zks_bs3;
			assign zks_bs0 = (operator_i == 7'd104) || (operator_i == 7'd108);
			assign zks_bs1 = (operator_i == 7'd105) || (operator_i == 7'd109);
			assign zks_bs2 = (operator_i == 7'd106) || (operator_i == 7'd110);
			assign zks_bs3 = (operator_i == 7'd107) || (operator_i == 7'd111);
			wire [7:0] sbox_in;
			assign sbox_in = ((({8 {zks_bs0}} & operand_b_i[7:0]) | ({8 {zks_bs1}} & operand_b_i[15:8])) | ({8 {zks_bs2}} & operand_b_i[23:16])) | ({8 {zks_bs3}} & operand_b_i[31:24]);
			wire [7:0] sm4_sbox_out;
			ibex_sm4_sbox ism4_sbox(
				.in(sbox_in),
				.fx(sm4_sbox_out)
			);
			wire [31:0] s;
			assign s = {24'b000000000000000000000000, sm4_sbox_out};
			wire [31:0] ed1;
			wire [31:0] ed2;
			assign ed1 = ((s ^ (s << 8)) ^ (s << 2)) ^ (s << 18);
			assign ed2 = (ed1 ^ ((s & 32'h0000003f) << 26)) ^ ((s & 32'h000000c0) << 10);
			wire [31:0] ks1;
			wire [31:0] ks2;
			assign ks1 = (s ^ ((s & 32'h00000007) << 29)) ^ ((s & 32'h000000fe) << 7);
			assign ks2 = (ks1 ^ ((s & 32'h00000001) << 23)) ^ ((s & 32'h000000f8) << 13);
			wire [31:0] rot_in;
			wire [31:0] rot_out;
			wire [31:0] sm4;
			assign rot_in = (sm4ks_sel ? ks2 : ed2);
			assign rot_out = ((({32 {zks_bs0}} & {rot_in}) | ({32 {zks_bs1}} & {rot_in[23:0], rot_in[31:24]})) | ({32 {zks_bs2}} & {rot_in[15:0], rot_in[31:16]})) | ({32 {zks_bs3}} & {rot_in[7:0], rot_in[31:8]});
			assign sm4 = rot_out ^ operand_a_i;
			wire [31:0] sm3_p0;
			wire [31:0] sm3_p1;
			assign sm3_p0 = (operand_a_i ^ ((operand_a_i << 9) | (operand_a_i >> 23))) ^ ((operand_a_i << 17) | (operand_a_i >> 15));
			assign sm3_p1 = (operand_a_i ^ ((operand_a_i << 15) | (operand_a_i >> 17))) ^ ((operand_a_i << 23) | (operand_a_i >> 9));
			assign zks_val = |{sm4ed_sel, sm4ks_sel, sm3p0_sel, sm3p1_sel};
			assign zks_result = ((({32 {sm4ed_sel}} & sm4) | ({32 {sm4ks_sel}} & sm4)) | ({32 {sm3p0_sel}} & sm3_p0)) | ({32 {sm3p1_sel}} & sm3_p1);
		end
		else begin : no_gen_zks
			assign zks_val = 1'b0;
			assign zks_result = 32'd0;
		end
	endgenerate
	assign zk_val_o = (zkb_val || zkn_val) || zks_val;
	assign result_o = (zkb_result | zkn_result) | zks_result;
endmodule
