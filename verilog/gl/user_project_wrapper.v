module user_project_wrapper (user_clock2,
    vccd1,
    vccd2,
    vdda1,
    vdda2,
    vssa1,
    vssa2,
    vssd1,
    vssd2,
    wb_clk_i,
    wb_rst_i,
    wbs_ack_o,
    wbs_cyc_i,
    wbs_stb_i,
    wbs_we_i,
    analog_io,
    io_in,
    io_oeb,
    io_out,
    la_data_in,
    la_data_out,
    la_oenb,
    user_irq,
    wbs_adr_i,
    wbs_dat_i,
    wbs_dat_o,
    wbs_sel_i);
 input user_clock2;
 input vccd1;
 input vccd2;
 input vdda1;
 input vdda2;
 input vssa1;
 input vssa2;
 input vssd1;
 input vssd2;
 input wb_clk_i;
 input wb_rst_i;
 output wbs_ack_o;
 input wbs_cyc_i;
 input wbs_stb_i;
 input wbs_we_i;
 inout [28:0] analog_io;
 input [37:0] io_in;
 output [37:0] io_oeb;
 output [37:0] io_out;
 input [127:0] la_data_in;
 output [127:0] la_data_out;
 input [127:0] la_oenb;
 output [2:0] user_irq;
 input [31:0] wbs_adr_i;
 input [31:0] wbs_dat_i;
 output [31:0] wbs_dat_o;
 input [3:0] wbs_sel_i;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire _38_;
 wire _39_;
 wire _40_;
 wire _41_;
 wire _42_;
 wire _43_;
 wire _44_;
 wire _45_;
 wire _46_;
 wire _47_;
 wire _48_;
 wire _49_;
 wire _50_;
 wire _51_;
 wire _52_;
 wire _53_;
 wire _54_;
 wire _55_;
 wire _56_;
 wire _57_;
 wire _58_;
 wire _59_;
 wire _60_;
 wire _61_;
 wire _62_;
 wire _63_;
 wire _64_;
 wire _65_;
 wire _66_;
 wire _67_;
 wire _68_;
 wire _69_;
 wire _70_;
 wire _71_;
 wire _72_;
 wire _73_;
 wire _74_;
 wire \master_data_addr_to_inter[0] ;
 wire \master_data_addr_to_inter[10] ;
 wire \master_data_addr_to_inter[11] ;
 wire \master_data_addr_to_inter[12] ;
 wire \master_data_addr_to_inter[13] ;
 wire \master_data_addr_to_inter[14] ;
 wire \master_data_addr_to_inter[15] ;
 wire \master_data_addr_to_inter[16] ;
 wire \master_data_addr_to_inter[17] ;
 wire \master_data_addr_to_inter[18] ;
 wire \master_data_addr_to_inter[19] ;
 wire \master_data_addr_to_inter[1] ;
 wire \master_data_addr_to_inter[20] ;
 wire \master_data_addr_to_inter[21] ;
 wire \master_data_addr_to_inter[22] ;
 wire \master_data_addr_to_inter[23] ;
 wire \master_data_addr_to_inter[24] ;
 wire \master_data_addr_to_inter[25] ;
 wire \master_data_addr_to_inter[26] ;
 wire \master_data_addr_to_inter[27] ;
 wire \master_data_addr_to_inter[2] ;
 wire \master_data_addr_to_inter[3] ;
 wire \master_data_addr_to_inter[4] ;
 wire \master_data_addr_to_inter[5] ;
 wire \master_data_addr_to_inter[6] ;
 wire \master_data_addr_to_inter[7] ;
 wire \master_data_addr_to_inter[8] ;
 wire \master_data_addr_to_inter[9] ;
 wire \master_data_addr_to_inter_ro[0] ;
 wire \master_data_addr_to_inter_ro[10] ;
 wire \master_data_addr_to_inter_ro[11] ;
 wire \master_data_addr_to_inter_ro[12] ;
 wire \master_data_addr_to_inter_ro[13] ;
 wire \master_data_addr_to_inter_ro[14] ;
 wire \master_data_addr_to_inter_ro[15] ;
 wire \master_data_addr_to_inter_ro[16] ;
 wire \master_data_addr_to_inter_ro[17] ;
 wire \master_data_addr_to_inter_ro[18] ;
 wire \master_data_addr_to_inter_ro[19] ;
 wire \master_data_addr_to_inter_ro[1] ;
 wire \master_data_addr_to_inter_ro[20] ;
 wire \master_data_addr_to_inter_ro[21] ;
 wire \master_data_addr_to_inter_ro[22] ;
 wire \master_data_addr_to_inter_ro[23] ;
 wire \master_data_addr_to_inter_ro[24] ;
 wire \master_data_addr_to_inter_ro[25] ;
 wire \master_data_addr_to_inter_ro[2] ;
 wire \master_data_addr_to_inter_ro[3] ;
 wire \master_data_addr_to_inter_ro[4] ;
 wire \master_data_addr_to_inter_ro[5] ;
 wire \master_data_addr_to_inter_ro[6] ;
 wire \master_data_addr_to_inter_ro[7] ;
 wire \master_data_addr_to_inter_ro[8] ;
 wire \master_data_addr_to_inter_ro[9] ;
 wire \master_data_be_to_inter[0] ;
 wire \master_data_be_to_inter[1] ;
 wire \master_data_be_to_inter[2] ;
 wire \master_data_be_to_inter[3] ;
 wire \master_data_be_to_inter[4] ;
 wire \master_data_be_to_inter[5] ;
 wire \master_data_be_to_inter[6] ;
 wire \master_data_be_to_inter[7] ;
 wire \master_data_gnt_to_inter[0] ;
 wire \master_data_gnt_to_inter[1] ;
 wire \master_data_gnt_to_inter_ro[0] ;
 wire \master_data_gnt_to_inter_ro[1] ;
 wire \master_data_rdata_to_inter[0] ;
 wire \master_data_rdata_to_inter[10] ;
 wire \master_data_rdata_to_inter[11] ;
 wire \master_data_rdata_to_inter[12] ;
 wire \master_data_rdata_to_inter[13] ;
 wire \master_data_rdata_to_inter[14] ;
 wire \master_data_rdata_to_inter[15] ;
 wire \master_data_rdata_to_inter[16] ;
 wire \master_data_rdata_to_inter[17] ;
 wire \master_data_rdata_to_inter[18] ;
 wire \master_data_rdata_to_inter[19] ;
 wire \master_data_rdata_to_inter[1] ;
 wire \master_data_rdata_to_inter[20] ;
 wire \master_data_rdata_to_inter[21] ;
 wire \master_data_rdata_to_inter[22] ;
 wire \master_data_rdata_to_inter[23] ;
 wire \master_data_rdata_to_inter[24] ;
 wire \master_data_rdata_to_inter[25] ;
 wire \master_data_rdata_to_inter[26] ;
 wire \master_data_rdata_to_inter[27] ;
 wire \master_data_rdata_to_inter[28] ;
 wire \master_data_rdata_to_inter[29] ;
 wire \master_data_rdata_to_inter[2] ;
 wire \master_data_rdata_to_inter[30] ;
 wire \master_data_rdata_to_inter[31] ;
 wire \master_data_rdata_to_inter[32] ;
 wire \master_data_rdata_to_inter[33] ;
 wire \master_data_rdata_to_inter[34] ;
 wire \master_data_rdata_to_inter[35] ;
 wire \master_data_rdata_to_inter[36] ;
 wire \master_data_rdata_to_inter[37] ;
 wire \master_data_rdata_to_inter[38] ;
 wire \master_data_rdata_to_inter[39] ;
 wire \master_data_rdata_to_inter[3] ;
 wire \master_data_rdata_to_inter[40] ;
 wire \master_data_rdata_to_inter[41] ;
 wire \master_data_rdata_to_inter[42] ;
 wire \master_data_rdata_to_inter[43] ;
 wire \master_data_rdata_to_inter[44] ;
 wire \master_data_rdata_to_inter[45] ;
 wire \master_data_rdata_to_inter[46] ;
 wire \master_data_rdata_to_inter[47] ;
 wire \master_data_rdata_to_inter[48] ;
 wire \master_data_rdata_to_inter[49] ;
 wire \master_data_rdata_to_inter[4] ;
 wire \master_data_rdata_to_inter[50] ;
 wire \master_data_rdata_to_inter[51] ;
 wire \master_data_rdata_to_inter[52] ;
 wire \master_data_rdata_to_inter[53] ;
 wire \master_data_rdata_to_inter[54] ;
 wire \master_data_rdata_to_inter[55] ;
 wire \master_data_rdata_to_inter[56] ;
 wire \master_data_rdata_to_inter[57] ;
 wire \master_data_rdata_to_inter[58] ;
 wire \master_data_rdata_to_inter[59] ;
 wire \master_data_rdata_to_inter[5] ;
 wire \master_data_rdata_to_inter[60] ;
 wire \master_data_rdata_to_inter[61] ;
 wire \master_data_rdata_to_inter[62] ;
 wire \master_data_rdata_to_inter[63] ;
 wire \master_data_rdata_to_inter[6] ;
 wire \master_data_rdata_to_inter[7] ;
 wire \master_data_rdata_to_inter[8] ;
 wire \master_data_rdata_to_inter[9] ;
 wire \master_data_rdata_to_inter_ro[0] ;
 wire \master_data_rdata_to_inter_ro[10] ;
 wire \master_data_rdata_to_inter_ro[11] ;
 wire \master_data_rdata_to_inter_ro[12] ;
 wire \master_data_rdata_to_inter_ro[13] ;
 wire \master_data_rdata_to_inter_ro[14] ;
 wire \master_data_rdata_to_inter_ro[15] ;
 wire \master_data_rdata_to_inter_ro[16] ;
 wire \master_data_rdata_to_inter_ro[17] ;
 wire \master_data_rdata_to_inter_ro[18] ;
 wire \master_data_rdata_to_inter_ro[19] ;
 wire \master_data_rdata_to_inter_ro[1] ;
 wire \master_data_rdata_to_inter_ro[20] ;
 wire \master_data_rdata_to_inter_ro[21] ;
 wire \master_data_rdata_to_inter_ro[22] ;
 wire \master_data_rdata_to_inter_ro[23] ;
 wire \master_data_rdata_to_inter_ro[24] ;
 wire \master_data_rdata_to_inter_ro[25] ;
 wire \master_data_rdata_to_inter_ro[26] ;
 wire \master_data_rdata_to_inter_ro[27] ;
 wire \master_data_rdata_to_inter_ro[28] ;
 wire \master_data_rdata_to_inter_ro[29] ;
 wire \master_data_rdata_to_inter_ro[2] ;
 wire \master_data_rdata_to_inter_ro[30] ;
 wire \master_data_rdata_to_inter_ro[31] ;
 wire \master_data_rdata_to_inter_ro[32] ;
 wire \master_data_rdata_to_inter_ro[33] ;
 wire \master_data_rdata_to_inter_ro[34] ;
 wire \master_data_rdata_to_inter_ro[35] ;
 wire \master_data_rdata_to_inter_ro[36] ;
 wire \master_data_rdata_to_inter_ro[37] ;
 wire \master_data_rdata_to_inter_ro[38] ;
 wire \master_data_rdata_to_inter_ro[39] ;
 wire \master_data_rdata_to_inter_ro[3] ;
 wire \master_data_rdata_to_inter_ro[40] ;
 wire \master_data_rdata_to_inter_ro[41] ;
 wire \master_data_rdata_to_inter_ro[42] ;
 wire \master_data_rdata_to_inter_ro[43] ;
 wire \master_data_rdata_to_inter_ro[44] ;
 wire \master_data_rdata_to_inter_ro[45] ;
 wire \master_data_rdata_to_inter_ro[46] ;
 wire \master_data_rdata_to_inter_ro[47] ;
 wire \master_data_rdata_to_inter_ro[48] ;
 wire \master_data_rdata_to_inter_ro[49] ;
 wire \master_data_rdata_to_inter_ro[4] ;
 wire \master_data_rdata_to_inter_ro[50] ;
 wire \master_data_rdata_to_inter_ro[51] ;
 wire \master_data_rdata_to_inter_ro[52] ;
 wire \master_data_rdata_to_inter_ro[53] ;
 wire \master_data_rdata_to_inter_ro[54] ;
 wire \master_data_rdata_to_inter_ro[55] ;
 wire \master_data_rdata_to_inter_ro[56] ;
 wire \master_data_rdata_to_inter_ro[57] ;
 wire \master_data_rdata_to_inter_ro[58] ;
 wire \master_data_rdata_to_inter_ro[59] ;
 wire \master_data_rdata_to_inter_ro[5] ;
 wire \master_data_rdata_to_inter_ro[60] ;
 wire \master_data_rdata_to_inter_ro[61] ;
 wire \master_data_rdata_to_inter_ro[62] ;
 wire \master_data_rdata_to_inter_ro[63] ;
 wire \master_data_rdata_to_inter_ro[6] ;
 wire \master_data_rdata_to_inter_ro[7] ;
 wire \master_data_rdata_to_inter_ro[8] ;
 wire \master_data_rdata_to_inter_ro[9] ;
 wire \master_data_req_to_inter[0] ;
 wire \master_data_req_to_inter[1] ;
 wire \master_data_req_to_inter_ro[0] ;
 wire \master_data_req_to_inter_ro[1] ;
 wire \master_data_rvalid_to_inter[0] ;
 wire \master_data_rvalid_to_inter[1] ;
 wire \master_data_rvalid_to_inter_ro[0] ;
 wire \master_data_rvalid_to_inter_ro[1] ;
 wire \master_data_wdata_to_inter[0] ;
 wire \master_data_wdata_to_inter[10] ;
 wire \master_data_wdata_to_inter[11] ;
 wire \master_data_wdata_to_inter[12] ;
 wire \master_data_wdata_to_inter[13] ;
 wire \master_data_wdata_to_inter[14] ;
 wire \master_data_wdata_to_inter[15] ;
 wire \master_data_wdata_to_inter[16] ;
 wire \master_data_wdata_to_inter[17] ;
 wire \master_data_wdata_to_inter[18] ;
 wire \master_data_wdata_to_inter[19] ;
 wire \master_data_wdata_to_inter[1] ;
 wire \master_data_wdata_to_inter[20] ;
 wire \master_data_wdata_to_inter[21] ;
 wire \master_data_wdata_to_inter[22] ;
 wire \master_data_wdata_to_inter[23] ;
 wire \master_data_wdata_to_inter[24] ;
 wire \master_data_wdata_to_inter[25] ;
 wire \master_data_wdata_to_inter[26] ;
 wire \master_data_wdata_to_inter[27] ;
 wire \master_data_wdata_to_inter[28] ;
 wire \master_data_wdata_to_inter[29] ;
 wire \master_data_wdata_to_inter[2] ;
 wire \master_data_wdata_to_inter[30] ;
 wire \master_data_wdata_to_inter[31] ;
 wire \master_data_wdata_to_inter[32] ;
 wire \master_data_wdata_to_inter[33] ;
 wire \master_data_wdata_to_inter[34] ;
 wire \master_data_wdata_to_inter[35] ;
 wire \master_data_wdata_to_inter[36] ;
 wire \master_data_wdata_to_inter[37] ;
 wire \master_data_wdata_to_inter[38] ;
 wire \master_data_wdata_to_inter[39] ;
 wire \master_data_wdata_to_inter[3] ;
 wire \master_data_wdata_to_inter[40] ;
 wire \master_data_wdata_to_inter[41] ;
 wire \master_data_wdata_to_inter[42] ;
 wire \master_data_wdata_to_inter[43] ;
 wire \master_data_wdata_to_inter[44] ;
 wire \master_data_wdata_to_inter[45] ;
 wire \master_data_wdata_to_inter[46] ;
 wire \master_data_wdata_to_inter[47] ;
 wire \master_data_wdata_to_inter[48] ;
 wire \master_data_wdata_to_inter[49] ;
 wire \master_data_wdata_to_inter[4] ;
 wire \master_data_wdata_to_inter[50] ;
 wire \master_data_wdata_to_inter[51] ;
 wire \master_data_wdata_to_inter[52] ;
 wire \master_data_wdata_to_inter[53] ;
 wire \master_data_wdata_to_inter[54] ;
 wire \master_data_wdata_to_inter[55] ;
 wire \master_data_wdata_to_inter[56] ;
 wire \master_data_wdata_to_inter[57] ;
 wire \master_data_wdata_to_inter[58] ;
 wire \master_data_wdata_to_inter[59] ;
 wire \master_data_wdata_to_inter[5] ;
 wire \master_data_wdata_to_inter[60] ;
 wire \master_data_wdata_to_inter[61] ;
 wire \master_data_wdata_to_inter[62] ;
 wire \master_data_wdata_to_inter[63] ;
 wire \master_data_wdata_to_inter[6] ;
 wire \master_data_wdata_to_inter[7] ;
 wire \master_data_wdata_to_inter[8] ;
 wire \master_data_wdata_to_inter[9] ;
 wire \master_data_we_to_inter[0] ;
 wire \master_data_we_to_inter[1] ;
 wire \slave_data_addr_to_inter[0] ;
 wire \slave_data_addr_to_inter[10] ;
 wire \slave_data_addr_to_inter[11] ;
 wire \slave_data_addr_to_inter[12] ;
 wire \slave_data_addr_to_inter[13] ;
 wire \slave_data_addr_to_inter[14] ;
 wire \slave_data_addr_to_inter[15] ;
 wire \slave_data_addr_to_inter[16] ;
 wire \slave_data_addr_to_inter[17] ;
 wire \slave_data_addr_to_inter[18] ;
 wire \slave_data_addr_to_inter[19] ;
 wire \slave_data_addr_to_inter[1] ;
 wire \slave_data_addr_to_inter[20] ;
 wire \slave_data_addr_to_inter[21] ;
 wire \slave_data_addr_to_inter[22] ;
 wire \slave_data_addr_to_inter[23] ;
 wire \slave_data_addr_to_inter[24] ;
 wire \slave_data_addr_to_inter[25] ;
 wire \slave_data_addr_to_inter[26] ;
 wire \slave_data_addr_to_inter[27] ;
 wire \slave_data_addr_to_inter[28] ;
 wire \slave_data_addr_to_inter[29] ;
 wire \slave_data_addr_to_inter[2] ;
 wire \slave_data_addr_to_inter[30] ;
 wire \slave_data_addr_to_inter[31] ;
 wire \slave_data_addr_to_inter[32] ;
 wire \slave_data_addr_to_inter[33] ;
 wire \slave_data_addr_to_inter[34] ;
 wire \slave_data_addr_to_inter[35] ;
 wire \slave_data_addr_to_inter[36] ;
 wire \slave_data_addr_to_inter[37] ;
 wire \slave_data_addr_to_inter[38] ;
 wire \slave_data_addr_to_inter[39] ;
 wire \slave_data_addr_to_inter[3] ;
 wire \slave_data_addr_to_inter[40] ;
 wire \slave_data_addr_to_inter[41] ;
 wire \slave_data_addr_to_inter[42] ;
 wire \slave_data_addr_to_inter[43] ;
 wire \slave_data_addr_to_inter[4] ;
 wire \slave_data_addr_to_inter[5] ;
 wire \slave_data_addr_to_inter[6] ;
 wire \slave_data_addr_to_inter[7] ;
 wire \slave_data_addr_to_inter[8] ;
 wire \slave_data_addr_to_inter[9] ;
 wire \slave_data_addr_to_inter_ro[0] ;
 wire \slave_data_addr_to_inter_ro[10] ;
 wire \slave_data_addr_to_inter_ro[11] ;
 wire \slave_data_addr_to_inter_ro[12] ;
 wire \slave_data_addr_to_inter_ro[13] ;
 wire \slave_data_addr_to_inter_ro[14] ;
 wire \slave_data_addr_to_inter_ro[15] ;
 wire \slave_data_addr_to_inter_ro[16] ;
 wire \slave_data_addr_to_inter_ro[17] ;
 wire \slave_data_addr_to_inter_ro[18] ;
 wire \slave_data_addr_to_inter_ro[19] ;
 wire \slave_data_addr_to_inter_ro[1] ;
 wire \slave_data_addr_to_inter_ro[20] ;
 wire \slave_data_addr_to_inter_ro[21] ;
 wire \slave_data_addr_to_inter_ro[22] ;
 wire \slave_data_addr_to_inter_ro[23] ;
 wire \slave_data_addr_to_inter_ro[24] ;
 wire \slave_data_addr_to_inter_ro[25] ;
 wire \slave_data_addr_to_inter_ro[26] ;
 wire \slave_data_addr_to_inter_ro[27] ;
 wire \slave_data_addr_to_inter_ro[28] ;
 wire \slave_data_addr_to_inter_ro[29] ;
 wire \slave_data_addr_to_inter_ro[2] ;
 wire \slave_data_addr_to_inter_ro[30] ;
 wire \slave_data_addr_to_inter_ro[31] ;
 wire \slave_data_addr_to_inter_ro[32] ;
 wire \slave_data_addr_to_inter_ro[33] ;
 wire \slave_data_addr_to_inter_ro[34] ;
 wire \slave_data_addr_to_inter_ro[35] ;
 wire \slave_data_addr_to_inter_ro[36] ;
 wire \slave_data_addr_to_inter_ro[37] ;
 wire \slave_data_addr_to_inter_ro[38] ;
 wire \slave_data_addr_to_inter_ro[39] ;
 wire \slave_data_addr_to_inter_ro[3] ;
 wire \slave_data_addr_to_inter_ro[40] ;
 wire \slave_data_addr_to_inter_ro[41] ;
 wire \slave_data_addr_to_inter_ro[42] ;
 wire \slave_data_addr_to_inter_ro[43] ;
 wire \slave_data_addr_to_inter_ro[4] ;
 wire \slave_data_addr_to_inter_ro[5] ;
 wire \slave_data_addr_to_inter_ro[6] ;
 wire \slave_data_addr_to_inter_ro[7] ;
 wire \slave_data_addr_to_inter_ro[8] ;
 wire \slave_data_addr_to_inter_ro[9] ;
 wire \slave_data_be_to_inter[0] ;
 wire \slave_data_be_to_inter[10] ;
 wire \slave_data_be_to_inter[11] ;
 wire \slave_data_be_to_inter[12] ;
 wire \slave_data_be_to_inter[13] ;
 wire \slave_data_be_to_inter[14] ;
 wire \slave_data_be_to_inter[15] ;
 wire \slave_data_be_to_inter[1] ;
 wire \slave_data_be_to_inter[2] ;
 wire \slave_data_be_to_inter[3] ;
 wire \slave_data_be_to_inter[4] ;
 wire \slave_data_be_to_inter[5] ;
 wire \slave_data_be_to_inter[6] ;
 wire \slave_data_be_to_inter[7] ;
 wire \slave_data_be_to_inter[8] ;
 wire \slave_data_be_to_inter[9] ;
 wire \slave_data_rdata_to_inter[0] ;
 wire \slave_data_rdata_to_inter[100] ;
 wire \slave_data_rdata_to_inter[101] ;
 wire \slave_data_rdata_to_inter[102] ;
 wire \slave_data_rdata_to_inter[103] ;
 wire \slave_data_rdata_to_inter[104] ;
 wire \slave_data_rdata_to_inter[105] ;
 wire \slave_data_rdata_to_inter[106] ;
 wire \slave_data_rdata_to_inter[107] ;
 wire \slave_data_rdata_to_inter[108] ;
 wire \slave_data_rdata_to_inter[109] ;
 wire \slave_data_rdata_to_inter[10] ;
 wire \slave_data_rdata_to_inter[110] ;
 wire \slave_data_rdata_to_inter[111] ;
 wire \slave_data_rdata_to_inter[112] ;
 wire \slave_data_rdata_to_inter[113] ;
 wire \slave_data_rdata_to_inter[114] ;
 wire \slave_data_rdata_to_inter[115] ;
 wire \slave_data_rdata_to_inter[116] ;
 wire \slave_data_rdata_to_inter[117] ;
 wire \slave_data_rdata_to_inter[118] ;
 wire \slave_data_rdata_to_inter[119] ;
 wire \slave_data_rdata_to_inter[11] ;
 wire \slave_data_rdata_to_inter[120] ;
 wire \slave_data_rdata_to_inter[121] ;
 wire \slave_data_rdata_to_inter[122] ;
 wire \slave_data_rdata_to_inter[123] ;
 wire \slave_data_rdata_to_inter[124] ;
 wire \slave_data_rdata_to_inter[125] ;
 wire \slave_data_rdata_to_inter[126] ;
 wire \slave_data_rdata_to_inter[127] ;
 wire \slave_data_rdata_to_inter[12] ;
 wire \slave_data_rdata_to_inter[13] ;
 wire \slave_data_rdata_to_inter[14] ;
 wire \slave_data_rdata_to_inter[15] ;
 wire \slave_data_rdata_to_inter[16] ;
 wire \slave_data_rdata_to_inter[17] ;
 wire \slave_data_rdata_to_inter[18] ;
 wire \slave_data_rdata_to_inter[19] ;
 wire \slave_data_rdata_to_inter[1] ;
 wire \slave_data_rdata_to_inter[20] ;
 wire \slave_data_rdata_to_inter[21] ;
 wire \slave_data_rdata_to_inter[22] ;
 wire \slave_data_rdata_to_inter[23] ;
 wire \slave_data_rdata_to_inter[24] ;
 wire \slave_data_rdata_to_inter[25] ;
 wire \slave_data_rdata_to_inter[26] ;
 wire \slave_data_rdata_to_inter[27] ;
 wire \slave_data_rdata_to_inter[28] ;
 wire \slave_data_rdata_to_inter[29] ;
 wire \slave_data_rdata_to_inter[2] ;
 wire \slave_data_rdata_to_inter[30] ;
 wire \slave_data_rdata_to_inter[31] ;
 wire \slave_data_rdata_to_inter[32] ;
 wire \slave_data_rdata_to_inter[33] ;
 wire \slave_data_rdata_to_inter[34] ;
 wire \slave_data_rdata_to_inter[35] ;
 wire \slave_data_rdata_to_inter[36] ;
 wire \slave_data_rdata_to_inter[37] ;
 wire \slave_data_rdata_to_inter[38] ;
 wire \slave_data_rdata_to_inter[39] ;
 wire \slave_data_rdata_to_inter[3] ;
 wire \slave_data_rdata_to_inter[40] ;
 wire \slave_data_rdata_to_inter[41] ;
 wire \slave_data_rdata_to_inter[42] ;
 wire \slave_data_rdata_to_inter[43] ;
 wire \slave_data_rdata_to_inter[44] ;
 wire \slave_data_rdata_to_inter[45] ;
 wire \slave_data_rdata_to_inter[46] ;
 wire \slave_data_rdata_to_inter[47] ;
 wire \slave_data_rdata_to_inter[48] ;
 wire \slave_data_rdata_to_inter[49] ;
 wire \slave_data_rdata_to_inter[4] ;
 wire \slave_data_rdata_to_inter[50] ;
 wire \slave_data_rdata_to_inter[51] ;
 wire \slave_data_rdata_to_inter[52] ;
 wire \slave_data_rdata_to_inter[53] ;
 wire \slave_data_rdata_to_inter[54] ;
 wire \slave_data_rdata_to_inter[55] ;
 wire \slave_data_rdata_to_inter[56] ;
 wire \slave_data_rdata_to_inter[57] ;
 wire \slave_data_rdata_to_inter[58] ;
 wire \slave_data_rdata_to_inter[59] ;
 wire \slave_data_rdata_to_inter[5] ;
 wire \slave_data_rdata_to_inter[60] ;
 wire \slave_data_rdata_to_inter[61] ;
 wire \slave_data_rdata_to_inter[62] ;
 wire \slave_data_rdata_to_inter[63] ;
 wire \slave_data_rdata_to_inter[64] ;
 wire \slave_data_rdata_to_inter[65] ;
 wire \slave_data_rdata_to_inter[66] ;
 wire \slave_data_rdata_to_inter[67] ;
 wire \slave_data_rdata_to_inter[68] ;
 wire \slave_data_rdata_to_inter[69] ;
 wire \slave_data_rdata_to_inter[6] ;
 wire \slave_data_rdata_to_inter[70] ;
 wire \slave_data_rdata_to_inter[71] ;
 wire \slave_data_rdata_to_inter[72] ;
 wire \slave_data_rdata_to_inter[73] ;
 wire \slave_data_rdata_to_inter[74] ;
 wire \slave_data_rdata_to_inter[75] ;
 wire \slave_data_rdata_to_inter[76] ;
 wire \slave_data_rdata_to_inter[77] ;
 wire \slave_data_rdata_to_inter[78] ;
 wire \slave_data_rdata_to_inter[79] ;
 wire \slave_data_rdata_to_inter[7] ;
 wire \slave_data_rdata_to_inter[80] ;
 wire \slave_data_rdata_to_inter[81] ;
 wire \slave_data_rdata_to_inter[82] ;
 wire \slave_data_rdata_to_inter[83] ;
 wire \slave_data_rdata_to_inter[84] ;
 wire \slave_data_rdata_to_inter[85] ;
 wire \slave_data_rdata_to_inter[86] ;
 wire \slave_data_rdata_to_inter[87] ;
 wire \slave_data_rdata_to_inter[88] ;
 wire \slave_data_rdata_to_inter[89] ;
 wire \slave_data_rdata_to_inter[8] ;
 wire \slave_data_rdata_to_inter[90] ;
 wire \slave_data_rdata_to_inter[91] ;
 wire \slave_data_rdata_to_inter[92] ;
 wire \slave_data_rdata_to_inter[93] ;
 wire \slave_data_rdata_to_inter[94] ;
 wire \slave_data_rdata_to_inter[95] ;
 wire \slave_data_rdata_to_inter[96] ;
 wire \slave_data_rdata_to_inter[97] ;
 wire \slave_data_rdata_to_inter[98] ;
 wire \slave_data_rdata_to_inter[99] ;
 wire \slave_data_rdata_to_inter[9] ;
 wire \slave_data_rdata_to_inter_ro[0] ;
 wire \slave_data_rdata_to_inter_ro[100] ;
 wire \slave_data_rdata_to_inter_ro[101] ;
 wire \slave_data_rdata_to_inter_ro[102] ;
 wire \slave_data_rdata_to_inter_ro[103] ;
 wire \slave_data_rdata_to_inter_ro[104] ;
 wire \slave_data_rdata_to_inter_ro[105] ;
 wire \slave_data_rdata_to_inter_ro[106] ;
 wire \slave_data_rdata_to_inter_ro[107] ;
 wire \slave_data_rdata_to_inter_ro[108] ;
 wire \slave_data_rdata_to_inter_ro[109] ;
 wire \slave_data_rdata_to_inter_ro[10] ;
 wire \slave_data_rdata_to_inter_ro[110] ;
 wire \slave_data_rdata_to_inter_ro[111] ;
 wire \slave_data_rdata_to_inter_ro[112] ;
 wire \slave_data_rdata_to_inter_ro[113] ;
 wire \slave_data_rdata_to_inter_ro[114] ;
 wire \slave_data_rdata_to_inter_ro[115] ;
 wire \slave_data_rdata_to_inter_ro[116] ;
 wire \slave_data_rdata_to_inter_ro[117] ;
 wire \slave_data_rdata_to_inter_ro[118] ;
 wire \slave_data_rdata_to_inter_ro[119] ;
 wire \slave_data_rdata_to_inter_ro[11] ;
 wire \slave_data_rdata_to_inter_ro[120] ;
 wire \slave_data_rdata_to_inter_ro[121] ;
 wire \slave_data_rdata_to_inter_ro[122] ;
 wire \slave_data_rdata_to_inter_ro[123] ;
 wire \slave_data_rdata_to_inter_ro[124] ;
 wire \slave_data_rdata_to_inter_ro[125] ;
 wire \slave_data_rdata_to_inter_ro[126] ;
 wire \slave_data_rdata_to_inter_ro[127] ;
 wire \slave_data_rdata_to_inter_ro[12] ;
 wire \slave_data_rdata_to_inter_ro[13] ;
 wire \slave_data_rdata_to_inter_ro[14] ;
 wire \slave_data_rdata_to_inter_ro[15] ;
 wire \slave_data_rdata_to_inter_ro[16] ;
 wire \slave_data_rdata_to_inter_ro[17] ;
 wire \slave_data_rdata_to_inter_ro[18] ;
 wire \slave_data_rdata_to_inter_ro[19] ;
 wire \slave_data_rdata_to_inter_ro[1] ;
 wire \slave_data_rdata_to_inter_ro[20] ;
 wire \slave_data_rdata_to_inter_ro[21] ;
 wire \slave_data_rdata_to_inter_ro[22] ;
 wire \slave_data_rdata_to_inter_ro[23] ;
 wire \slave_data_rdata_to_inter_ro[24] ;
 wire \slave_data_rdata_to_inter_ro[25] ;
 wire \slave_data_rdata_to_inter_ro[26] ;
 wire \slave_data_rdata_to_inter_ro[27] ;
 wire \slave_data_rdata_to_inter_ro[28] ;
 wire \slave_data_rdata_to_inter_ro[29] ;
 wire \slave_data_rdata_to_inter_ro[2] ;
 wire \slave_data_rdata_to_inter_ro[30] ;
 wire \slave_data_rdata_to_inter_ro[31] ;
 wire \slave_data_rdata_to_inter_ro[32] ;
 wire \slave_data_rdata_to_inter_ro[33] ;
 wire \slave_data_rdata_to_inter_ro[34] ;
 wire \slave_data_rdata_to_inter_ro[35] ;
 wire \slave_data_rdata_to_inter_ro[36] ;
 wire \slave_data_rdata_to_inter_ro[37] ;
 wire \slave_data_rdata_to_inter_ro[38] ;
 wire \slave_data_rdata_to_inter_ro[39] ;
 wire \slave_data_rdata_to_inter_ro[3] ;
 wire \slave_data_rdata_to_inter_ro[40] ;
 wire \slave_data_rdata_to_inter_ro[41] ;
 wire \slave_data_rdata_to_inter_ro[42] ;
 wire \slave_data_rdata_to_inter_ro[43] ;
 wire \slave_data_rdata_to_inter_ro[44] ;
 wire \slave_data_rdata_to_inter_ro[45] ;
 wire \slave_data_rdata_to_inter_ro[46] ;
 wire \slave_data_rdata_to_inter_ro[47] ;
 wire \slave_data_rdata_to_inter_ro[48] ;
 wire \slave_data_rdata_to_inter_ro[49] ;
 wire \slave_data_rdata_to_inter_ro[4] ;
 wire \slave_data_rdata_to_inter_ro[50] ;
 wire \slave_data_rdata_to_inter_ro[51] ;
 wire \slave_data_rdata_to_inter_ro[52] ;
 wire \slave_data_rdata_to_inter_ro[53] ;
 wire \slave_data_rdata_to_inter_ro[54] ;
 wire \slave_data_rdata_to_inter_ro[55] ;
 wire \slave_data_rdata_to_inter_ro[56] ;
 wire \slave_data_rdata_to_inter_ro[57] ;
 wire \slave_data_rdata_to_inter_ro[58] ;
 wire \slave_data_rdata_to_inter_ro[59] ;
 wire \slave_data_rdata_to_inter_ro[5] ;
 wire \slave_data_rdata_to_inter_ro[60] ;
 wire \slave_data_rdata_to_inter_ro[61] ;
 wire \slave_data_rdata_to_inter_ro[62] ;
 wire \slave_data_rdata_to_inter_ro[63] ;
 wire \slave_data_rdata_to_inter_ro[64] ;
 wire \slave_data_rdata_to_inter_ro[65] ;
 wire \slave_data_rdata_to_inter_ro[66] ;
 wire \slave_data_rdata_to_inter_ro[67] ;
 wire \slave_data_rdata_to_inter_ro[68] ;
 wire \slave_data_rdata_to_inter_ro[69] ;
 wire \slave_data_rdata_to_inter_ro[6] ;
 wire \slave_data_rdata_to_inter_ro[70] ;
 wire \slave_data_rdata_to_inter_ro[71] ;
 wire \slave_data_rdata_to_inter_ro[72] ;
 wire \slave_data_rdata_to_inter_ro[73] ;
 wire \slave_data_rdata_to_inter_ro[74] ;
 wire \slave_data_rdata_to_inter_ro[75] ;
 wire \slave_data_rdata_to_inter_ro[76] ;
 wire \slave_data_rdata_to_inter_ro[77] ;
 wire \slave_data_rdata_to_inter_ro[78] ;
 wire \slave_data_rdata_to_inter_ro[79] ;
 wire \slave_data_rdata_to_inter_ro[7] ;
 wire \slave_data_rdata_to_inter_ro[80] ;
 wire \slave_data_rdata_to_inter_ro[81] ;
 wire \slave_data_rdata_to_inter_ro[82] ;
 wire \slave_data_rdata_to_inter_ro[83] ;
 wire \slave_data_rdata_to_inter_ro[84] ;
 wire \slave_data_rdata_to_inter_ro[85] ;
 wire \slave_data_rdata_to_inter_ro[86] ;
 wire \slave_data_rdata_to_inter_ro[87] ;
 wire \slave_data_rdata_to_inter_ro[88] ;
 wire \slave_data_rdata_to_inter_ro[89] ;
 wire \slave_data_rdata_to_inter_ro[8] ;
 wire \slave_data_rdata_to_inter_ro[90] ;
 wire \slave_data_rdata_to_inter_ro[91] ;
 wire \slave_data_rdata_to_inter_ro[92] ;
 wire \slave_data_rdata_to_inter_ro[93] ;
 wire \slave_data_rdata_to_inter_ro[94] ;
 wire \slave_data_rdata_to_inter_ro[95] ;
 wire \slave_data_rdata_to_inter_ro[96] ;
 wire \slave_data_rdata_to_inter_ro[97] ;
 wire \slave_data_rdata_to_inter_ro[98] ;
 wire \slave_data_rdata_to_inter_ro[99] ;
 wire \slave_data_rdata_to_inter_ro[9] ;
 wire \slave_data_req_to_inter[0] ;
 wire \slave_data_req_to_inter[1] ;
 wire \slave_data_req_to_inter[2] ;
 wire \slave_data_req_to_inter[3] ;
 wire \slave_data_req_to_inter_ro[0] ;
 wire \slave_data_req_to_inter_ro[1] ;
 wire \slave_data_req_to_inter_ro[2] ;
 wire \slave_data_req_to_inter_ro[3] ;
 wire \slave_data_wdata_to_inter[0] ;
 wire \slave_data_wdata_to_inter[100] ;
 wire \slave_data_wdata_to_inter[101] ;
 wire \slave_data_wdata_to_inter[102] ;
 wire \slave_data_wdata_to_inter[103] ;
 wire \slave_data_wdata_to_inter[104] ;
 wire \slave_data_wdata_to_inter[105] ;
 wire \slave_data_wdata_to_inter[106] ;
 wire \slave_data_wdata_to_inter[107] ;
 wire \slave_data_wdata_to_inter[108] ;
 wire \slave_data_wdata_to_inter[109] ;
 wire \slave_data_wdata_to_inter[10] ;
 wire \slave_data_wdata_to_inter[110] ;
 wire \slave_data_wdata_to_inter[111] ;
 wire \slave_data_wdata_to_inter[112] ;
 wire \slave_data_wdata_to_inter[113] ;
 wire \slave_data_wdata_to_inter[114] ;
 wire \slave_data_wdata_to_inter[115] ;
 wire \slave_data_wdata_to_inter[116] ;
 wire \slave_data_wdata_to_inter[117] ;
 wire \slave_data_wdata_to_inter[118] ;
 wire \slave_data_wdata_to_inter[119] ;
 wire \slave_data_wdata_to_inter[11] ;
 wire \slave_data_wdata_to_inter[120] ;
 wire \slave_data_wdata_to_inter[121] ;
 wire \slave_data_wdata_to_inter[122] ;
 wire \slave_data_wdata_to_inter[123] ;
 wire \slave_data_wdata_to_inter[124] ;
 wire \slave_data_wdata_to_inter[125] ;
 wire \slave_data_wdata_to_inter[126] ;
 wire \slave_data_wdata_to_inter[127] ;
 wire \slave_data_wdata_to_inter[12] ;
 wire \slave_data_wdata_to_inter[13] ;
 wire \slave_data_wdata_to_inter[14] ;
 wire \slave_data_wdata_to_inter[15] ;
 wire \slave_data_wdata_to_inter[16] ;
 wire \slave_data_wdata_to_inter[17] ;
 wire \slave_data_wdata_to_inter[18] ;
 wire \slave_data_wdata_to_inter[19] ;
 wire \slave_data_wdata_to_inter[1] ;
 wire \slave_data_wdata_to_inter[20] ;
 wire \slave_data_wdata_to_inter[21] ;
 wire \slave_data_wdata_to_inter[22] ;
 wire \slave_data_wdata_to_inter[23] ;
 wire \slave_data_wdata_to_inter[24] ;
 wire \slave_data_wdata_to_inter[25] ;
 wire \slave_data_wdata_to_inter[26] ;
 wire \slave_data_wdata_to_inter[27] ;
 wire \slave_data_wdata_to_inter[28] ;
 wire \slave_data_wdata_to_inter[29] ;
 wire \slave_data_wdata_to_inter[2] ;
 wire \slave_data_wdata_to_inter[30] ;
 wire \slave_data_wdata_to_inter[31] ;
 wire \slave_data_wdata_to_inter[32] ;
 wire \slave_data_wdata_to_inter[33] ;
 wire \slave_data_wdata_to_inter[34] ;
 wire \slave_data_wdata_to_inter[35] ;
 wire \slave_data_wdata_to_inter[36] ;
 wire \slave_data_wdata_to_inter[37] ;
 wire \slave_data_wdata_to_inter[38] ;
 wire \slave_data_wdata_to_inter[39] ;
 wire \slave_data_wdata_to_inter[3] ;
 wire \slave_data_wdata_to_inter[40] ;
 wire \slave_data_wdata_to_inter[41] ;
 wire \slave_data_wdata_to_inter[42] ;
 wire \slave_data_wdata_to_inter[43] ;
 wire \slave_data_wdata_to_inter[44] ;
 wire \slave_data_wdata_to_inter[45] ;
 wire \slave_data_wdata_to_inter[46] ;
 wire \slave_data_wdata_to_inter[47] ;
 wire \slave_data_wdata_to_inter[48] ;
 wire \slave_data_wdata_to_inter[49] ;
 wire \slave_data_wdata_to_inter[4] ;
 wire \slave_data_wdata_to_inter[50] ;
 wire \slave_data_wdata_to_inter[51] ;
 wire \slave_data_wdata_to_inter[52] ;
 wire \slave_data_wdata_to_inter[53] ;
 wire \slave_data_wdata_to_inter[54] ;
 wire \slave_data_wdata_to_inter[55] ;
 wire \slave_data_wdata_to_inter[56] ;
 wire \slave_data_wdata_to_inter[57] ;
 wire \slave_data_wdata_to_inter[58] ;
 wire \slave_data_wdata_to_inter[59] ;
 wire \slave_data_wdata_to_inter[5] ;
 wire \slave_data_wdata_to_inter[60] ;
 wire \slave_data_wdata_to_inter[61] ;
 wire \slave_data_wdata_to_inter[62] ;
 wire \slave_data_wdata_to_inter[63] ;
 wire \slave_data_wdata_to_inter[64] ;
 wire \slave_data_wdata_to_inter[65] ;
 wire \slave_data_wdata_to_inter[66] ;
 wire \slave_data_wdata_to_inter[67] ;
 wire \slave_data_wdata_to_inter[68] ;
 wire \slave_data_wdata_to_inter[69] ;
 wire \slave_data_wdata_to_inter[6] ;
 wire \slave_data_wdata_to_inter[70] ;
 wire \slave_data_wdata_to_inter[71] ;
 wire \slave_data_wdata_to_inter[72] ;
 wire \slave_data_wdata_to_inter[73] ;
 wire \slave_data_wdata_to_inter[74] ;
 wire \slave_data_wdata_to_inter[75] ;
 wire \slave_data_wdata_to_inter[76] ;
 wire \slave_data_wdata_to_inter[77] ;
 wire \slave_data_wdata_to_inter[78] ;
 wire \slave_data_wdata_to_inter[79] ;
 wire \slave_data_wdata_to_inter[7] ;
 wire \slave_data_wdata_to_inter[80] ;
 wire \slave_data_wdata_to_inter[81] ;
 wire \slave_data_wdata_to_inter[82] ;
 wire \slave_data_wdata_to_inter[83] ;
 wire \slave_data_wdata_to_inter[84] ;
 wire \slave_data_wdata_to_inter[85] ;
 wire \slave_data_wdata_to_inter[86] ;
 wire \slave_data_wdata_to_inter[87] ;
 wire \slave_data_wdata_to_inter[88] ;
 wire \slave_data_wdata_to_inter[89] ;
 wire \slave_data_wdata_to_inter[8] ;
 wire \slave_data_wdata_to_inter[90] ;
 wire \slave_data_wdata_to_inter[91] ;
 wire \slave_data_wdata_to_inter[92] ;
 wire \slave_data_wdata_to_inter[93] ;
 wire \slave_data_wdata_to_inter[94] ;
 wire \slave_data_wdata_to_inter[95] ;
 wire \slave_data_wdata_to_inter[96] ;
 wire \slave_data_wdata_to_inter[97] ;
 wire \slave_data_wdata_to_inter[98] ;
 wire \slave_data_wdata_to_inter[99] ;
 wire \slave_data_wdata_to_inter[9] ;
 wire \slave_data_we_to_inter[0] ;
 wire \slave_data_we_to_inter[1] ;
 wire \slave_data_we_to_inter[2] ;
 wire \slave_data_we_to_inter[3] ;

 crypto_core ibex_core_1 (.clk_i(wb_clk_i),
    .data_gnt_i(\master_data_gnt_to_inter[0] ),
    .data_req_o(\master_data_req_to_inter[0] ),
    .data_rvalid_i(\master_data_rvalid_to_inter[0] ),
    .data_we_o(\master_data_we_to_inter[0] ),
    .debug_req_i(io_in[4]),
    .fetch_enable_i(io_in[5]),
    .instr_gnt_i(\master_data_gnt_to_inter_ro[0] ),
    .instr_req_o(\master_data_req_to_inter_ro[0] ),
    .instr_rvalid_i(\master_data_rvalid_to_inter_ro[0] ),
    .rst_i(wb_rst_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .data_addr_o({_08_,
    _07_,
    _06_,
    _05_,
    _04_,
    _03_,
    _02_,
    _01_,
    _17_,
    _16_,
    _15_,
    _14_,
    _13_,
    _12_,
    _11_,
    _10_,
    _09_,
    _00_,
    \master_data_addr_to_inter[13] ,
    \master_data_addr_to_inter[12] ,
    \master_data_addr_to_inter[11] ,
    \master_data_addr_to_inter[10] ,
    \master_data_addr_to_inter[9] ,
    \master_data_addr_to_inter[8] ,
    \master_data_addr_to_inter[7] ,
    \master_data_addr_to_inter[6] ,
    \master_data_addr_to_inter[5] ,
    \master_data_addr_to_inter[4] ,
    \master_data_addr_to_inter[3] ,
    \master_data_addr_to_inter[2] ,
    \master_data_addr_to_inter[1] ,
    \master_data_addr_to_inter[0] }),
    .data_be_o({\master_data_be_to_inter[3] ,
    \master_data_be_to_inter[2] ,
    \master_data_be_to_inter[1] ,
    \master_data_be_to_inter[0] }),
    .data_rdata_i({\master_data_rdata_to_inter[31] ,
    \master_data_rdata_to_inter[30] ,
    \master_data_rdata_to_inter[29] ,
    \master_data_rdata_to_inter[28] ,
    \master_data_rdata_to_inter[27] ,
    \master_data_rdata_to_inter[26] ,
    \master_data_rdata_to_inter[25] ,
    \master_data_rdata_to_inter[24] ,
    \master_data_rdata_to_inter[23] ,
    \master_data_rdata_to_inter[22] ,
    \master_data_rdata_to_inter[21] ,
    \master_data_rdata_to_inter[20] ,
    \master_data_rdata_to_inter[19] ,
    \master_data_rdata_to_inter[18] ,
    \master_data_rdata_to_inter[17] ,
    \master_data_rdata_to_inter[16] ,
    \master_data_rdata_to_inter[15] ,
    \master_data_rdata_to_inter[14] ,
    \master_data_rdata_to_inter[13] ,
    \master_data_rdata_to_inter[12] ,
    \master_data_rdata_to_inter[11] ,
    \master_data_rdata_to_inter[10] ,
    \master_data_rdata_to_inter[9] ,
    \master_data_rdata_to_inter[8] ,
    \master_data_rdata_to_inter[7] ,
    \master_data_rdata_to_inter[6] ,
    \master_data_rdata_to_inter[5] ,
    \master_data_rdata_to_inter[4] ,
    \master_data_rdata_to_inter[3] ,
    \master_data_rdata_to_inter[2] ,
    \master_data_rdata_to_inter[1] ,
    \master_data_rdata_to_inter[0] }),
    .data_wdata_intg_o({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7}),
    .data_wdata_o({\master_data_wdata_to_inter[31] ,
    \master_data_wdata_to_inter[30] ,
    \master_data_wdata_to_inter[29] ,
    \master_data_wdata_to_inter[28] ,
    \master_data_wdata_to_inter[27] ,
    \master_data_wdata_to_inter[26] ,
    \master_data_wdata_to_inter[25] ,
    \master_data_wdata_to_inter[24] ,
    \master_data_wdata_to_inter[23] ,
    \master_data_wdata_to_inter[22] ,
    \master_data_wdata_to_inter[21] ,
    \master_data_wdata_to_inter[20] ,
    \master_data_wdata_to_inter[19] ,
    \master_data_wdata_to_inter[18] ,
    \master_data_wdata_to_inter[17] ,
    \master_data_wdata_to_inter[16] ,
    \master_data_wdata_to_inter[15] ,
    \master_data_wdata_to_inter[14] ,
    \master_data_wdata_to_inter[13] ,
    \master_data_wdata_to_inter[12] ,
    \master_data_wdata_to_inter[11] ,
    \master_data_wdata_to_inter[10] ,
    \master_data_wdata_to_inter[9] ,
    \master_data_wdata_to_inter[8] ,
    \master_data_wdata_to_inter[7] ,
    \master_data_wdata_to_inter[6] ,
    \master_data_wdata_to_inter[5] ,
    \master_data_wdata_to_inter[4] ,
    \master_data_wdata_to_inter[3] ,
    \master_data_wdata_to_inter[2] ,
    \master_data_wdata_to_inter[1] ,
    \master_data_wdata_to_inter[0] }),
    .instr_addr_o({_27_,
    _26_,
    _25_,
    _24_,
    _23_,
    _22_,
    _21_,
    _20_,
    _19_,
    _36_,
    _35_,
    _34_,
    _33_,
    _32_,
    _31_,
    _30_,
    _29_,
    _28_,
    _18_,
    \master_data_addr_to_inter_ro[12] ,
    \master_data_addr_to_inter_ro[11] ,
    \master_data_addr_to_inter_ro[10] ,
    \master_data_addr_to_inter_ro[9] ,
    \master_data_addr_to_inter_ro[8] ,
    \master_data_addr_to_inter_ro[7] ,
    \master_data_addr_to_inter_ro[6] ,
    \master_data_addr_to_inter_ro[5] ,
    \master_data_addr_to_inter_ro[4] ,
    \master_data_addr_to_inter_ro[3] ,
    \master_data_addr_to_inter_ro[2] ,
    \master_data_addr_to_inter_ro[1] ,
    \master_data_addr_to_inter_ro[0] }),
    .instr_rdata_i({\master_data_rdata_to_inter_ro[31] ,
    \master_data_rdata_to_inter_ro[30] ,
    \master_data_rdata_to_inter_ro[29] ,
    \master_data_rdata_to_inter_ro[28] ,
    \master_data_rdata_to_inter_ro[27] ,
    \master_data_rdata_to_inter_ro[26] ,
    \master_data_rdata_to_inter_ro[25] ,
    \master_data_rdata_to_inter_ro[24] ,
    \master_data_rdata_to_inter_ro[23] ,
    \master_data_rdata_to_inter_ro[22] ,
    \master_data_rdata_to_inter_ro[21] ,
    \master_data_rdata_to_inter_ro[20] ,
    \master_data_rdata_to_inter_ro[19] ,
    \master_data_rdata_to_inter_ro[18] ,
    \master_data_rdata_to_inter_ro[17] ,
    \master_data_rdata_to_inter_ro[16] ,
    \master_data_rdata_to_inter_ro[15] ,
    \master_data_rdata_to_inter_ro[14] ,
    \master_data_rdata_to_inter_ro[13] ,
    \master_data_rdata_to_inter_ro[12] ,
    \master_data_rdata_to_inter_ro[11] ,
    \master_data_rdata_to_inter_ro[10] ,
    \master_data_rdata_to_inter_ro[9] ,
    \master_data_rdata_to_inter_ro[8] ,
    \master_data_rdata_to_inter_ro[7] ,
    \master_data_rdata_to_inter_ro[6] ,
    \master_data_rdata_to_inter_ro[5] ,
    \master_data_rdata_to_inter_ro[4] ,
    \master_data_rdata_to_inter_ro[3] ,
    \master_data_rdata_to_inter_ro[2] ,
    \master_data_rdata_to_inter_ro[1] ,
    \master_data_rdata_to_inter_ro[0] }));
 flexbex_core ibex_core_2 (.clk_i(wb_clk_i),
    .data_gnt_i(\master_data_gnt_to_inter[1] ),
    .data_req_o(\master_data_req_to_inter[1] ),
    .data_rvalid_i(\master_data_rvalid_to_inter[1] ),
    .data_we_o(\master_data_we_to_inter[1] ),
    .debug_req_i(io_in[6]),
    .fetch_enable_i(io_in[7]),
    .instr_gnt_i(\master_data_gnt_to_inter_ro[1] ),
    .instr_req_o(\master_data_req_to_inter_ro[1] ),
    .instr_rvalid_i(\master_data_rvalid_to_inter_ro[1] ),
    .rst_i(wb_rst_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .data_addr_o({_65_,
    _64_,
    _63_,
    _62_,
    _61_,
    _60_,
    _59_,
    _58_,
    _74_,
    _73_,
    _72_,
    _71_,
    _70_,
    _69_,
    _68_,
    _67_,
    _66_,
    _57_,
    \master_data_addr_to_inter[27] ,
    \master_data_addr_to_inter[26] ,
    \master_data_addr_to_inter[25] ,
    \master_data_addr_to_inter[24] ,
    \master_data_addr_to_inter[23] ,
    \master_data_addr_to_inter[22] ,
    \master_data_addr_to_inter[21] ,
    \master_data_addr_to_inter[20] ,
    \master_data_addr_to_inter[19] ,
    \master_data_addr_to_inter[18] ,
    \master_data_addr_to_inter[17] ,
    \master_data_addr_to_inter[16] ,
    \master_data_addr_to_inter[15] ,
    \master_data_addr_to_inter[14] }),
    .data_be_o({\master_data_be_to_inter[7] ,
    \master_data_be_to_inter[6] ,
    \master_data_be_to_inter[5] ,
    \master_data_be_to_inter[4] }),
    .data_rdata_i({\master_data_rdata_to_inter[63] ,
    \master_data_rdata_to_inter[62] ,
    \master_data_rdata_to_inter[61] ,
    \master_data_rdata_to_inter[60] ,
    \master_data_rdata_to_inter[59] ,
    \master_data_rdata_to_inter[58] ,
    \master_data_rdata_to_inter[57] ,
    \master_data_rdata_to_inter[56] ,
    \master_data_rdata_to_inter[55] ,
    \master_data_rdata_to_inter[54] ,
    \master_data_rdata_to_inter[53] ,
    \master_data_rdata_to_inter[52] ,
    \master_data_rdata_to_inter[51] ,
    \master_data_rdata_to_inter[50] ,
    \master_data_rdata_to_inter[49] ,
    \master_data_rdata_to_inter[48] ,
    \master_data_rdata_to_inter[47] ,
    \master_data_rdata_to_inter[46] ,
    \master_data_rdata_to_inter[45] ,
    \master_data_rdata_to_inter[44] ,
    \master_data_rdata_to_inter[43] ,
    \master_data_rdata_to_inter[42] ,
    \master_data_rdata_to_inter[41] ,
    \master_data_rdata_to_inter[40] ,
    \master_data_rdata_to_inter[39] ,
    \master_data_rdata_to_inter[38] ,
    \master_data_rdata_to_inter[37] ,
    \master_data_rdata_to_inter[36] ,
    \master_data_rdata_to_inter[35] ,
    \master_data_rdata_to_inter[34] ,
    \master_data_rdata_to_inter[33] ,
    \master_data_rdata_to_inter[32] }),
    .data_wdata_intg_o({_NC8,
    _NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14}),
    .data_wdata_o({\master_data_wdata_to_inter[63] ,
    \master_data_wdata_to_inter[62] ,
    \master_data_wdata_to_inter[61] ,
    \master_data_wdata_to_inter[60] ,
    \master_data_wdata_to_inter[59] ,
    \master_data_wdata_to_inter[58] ,
    \master_data_wdata_to_inter[57] ,
    \master_data_wdata_to_inter[56] ,
    \master_data_wdata_to_inter[55] ,
    \master_data_wdata_to_inter[54] ,
    \master_data_wdata_to_inter[53] ,
    \master_data_wdata_to_inter[52] ,
    \master_data_wdata_to_inter[51] ,
    \master_data_wdata_to_inter[50] ,
    \master_data_wdata_to_inter[49] ,
    \master_data_wdata_to_inter[48] ,
    \master_data_wdata_to_inter[47] ,
    \master_data_wdata_to_inter[46] ,
    \master_data_wdata_to_inter[45] ,
    \master_data_wdata_to_inter[44] ,
    \master_data_wdata_to_inter[43] ,
    \master_data_wdata_to_inter[42] ,
    \master_data_wdata_to_inter[41] ,
    \master_data_wdata_to_inter[40] ,
    \master_data_wdata_to_inter[39] ,
    \master_data_wdata_to_inter[38] ,
    \master_data_wdata_to_inter[37] ,
    \master_data_wdata_to_inter[36] ,
    \master_data_wdata_to_inter[35] ,
    \master_data_wdata_to_inter[34] ,
    \master_data_wdata_to_inter[33] ,
    \master_data_wdata_to_inter[32] }),
    .instr_addr_o({_47_,
    _46_,
    _45_,
    _44_,
    _43_,
    _42_,
    _41_,
    _40_,
    _39_,
    _56_,
    _55_,
    _54_,
    _53_,
    _52_,
    _51_,
    _50_,
    _49_,
    _48_,
    _38_,
    \master_data_addr_to_inter_ro[25] ,
    \master_data_addr_to_inter_ro[24] ,
    \master_data_addr_to_inter_ro[23] ,
    \master_data_addr_to_inter_ro[22] ,
    \master_data_addr_to_inter_ro[21] ,
    \master_data_addr_to_inter_ro[20] ,
    \master_data_addr_to_inter_ro[19] ,
    \master_data_addr_to_inter_ro[18] ,
    \master_data_addr_to_inter_ro[17] ,
    \master_data_addr_to_inter_ro[16] ,
    \master_data_addr_to_inter_ro[15] ,
    \master_data_addr_to_inter_ro[14] ,
    \master_data_addr_to_inter_ro[13] }),
    .instr_rdata_i({\master_data_rdata_to_inter_ro[63] ,
    \master_data_rdata_to_inter_ro[62] ,
    \master_data_rdata_to_inter_ro[61] ,
    \master_data_rdata_to_inter_ro[60] ,
    \master_data_rdata_to_inter_ro[59] ,
    \master_data_rdata_to_inter_ro[58] ,
    \master_data_rdata_to_inter_ro[57] ,
    \master_data_rdata_to_inter_ro[56] ,
    \master_data_rdata_to_inter_ro[55] ,
    \master_data_rdata_to_inter_ro[54] ,
    \master_data_rdata_to_inter_ro[53] ,
    \master_data_rdata_to_inter_ro[52] ,
    \master_data_rdata_to_inter_ro[51] ,
    \master_data_rdata_to_inter_ro[50] ,
    \master_data_rdata_to_inter_ro[49] ,
    \master_data_rdata_to_inter_ro[48] ,
    \master_data_rdata_to_inter_ro[47] ,
    \master_data_rdata_to_inter_ro[46] ,
    \master_data_rdata_to_inter_ro[45] ,
    \master_data_rdata_to_inter_ro[44] ,
    \master_data_rdata_to_inter_ro[43] ,
    \master_data_rdata_to_inter_ro[42] ,
    \master_data_rdata_to_inter_ro[41] ,
    \master_data_rdata_to_inter_ro[40] ,
    \master_data_rdata_to_inter_ro[39] ,
    \master_data_rdata_to_inter_ro[38] ,
    \master_data_rdata_to_inter_ro[37] ,
    \master_data_rdata_to_inter_ro[36] ,
    \master_data_rdata_to_inter_ro[35] ,
    \master_data_rdata_to_inter_ro[34] ,
    \master_data_rdata_to_inter_ro[33] ,
    \master_data_rdata_to_inter_ro[32] }));
 soric_soc soric_soc_i (.error_uart_to_mem(io_out[12]),
    .rxd_uart(io_in[8]),
    .rxd_uart_to_mem(io_in[9]),
    .txd_uart(io_out[10]),
    .txd_uart_to_mem(io_out[11]),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
    .wbs_ack_o(wbs_ack_o),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .io_oeb({io_oeb[37],
    io_oeb[36],
    io_oeb[35],
    io_oeb[34],
    io_oeb[33],
    io_oeb[32],
    io_oeb[31],
    io_oeb[30],
    io_oeb[29],
    io_oeb[28],
    io_oeb[27],
    io_oeb[26],
    io_oeb[25],
    io_oeb[24],
    io_oeb[23],
    io_oeb[22],
    io_oeb[21],
    io_oeb[20],
    io_oeb[19],
    io_oeb[18],
    io_oeb[17],
    io_oeb[16],
    io_oeb[15],
    io_oeb[14],
    io_oeb[13],
    io_oeb[12],
    io_oeb[11],
    io_oeb[10],
    io_oeb[9],
    io_oeb[8],
    io_oeb[7],
    io_oeb[6],
    io_oeb[5],
    io_oeb[4],
    io_oeb[3],
    io_oeb[2],
    io_oeb[1],
    io_oeb[0]}),
    .io_out({_37_,
    io_out[37],
    io_out[36],
    io_out[35],
    io_out[34],
    io_out[33],
    io_out[32],
    io_out[31],
    io_out[30],
    io_out[29],
    io_out[28],
    io_out[27],
    io_out[26],
    io_out[25],
    io_out[24],
    io_out[23],
    io_out[22],
    io_out[21],
    io_out[20],
    io_out[19],
    io_out[18],
    io_out[17],
    io_out[16],
    io_out[15],
    io_out[14],
    io_out[13],
    io_out[9],
    io_out[8],
    io_out[7],
    io_out[6],
    io_out[5],
    io_out[4],
    io_out[3],
    io_out[2],
    io_out[1],
    io_out[0]}),
    .la_data_out({la_data_out[127],
    la_data_out[126],
    la_data_out[125],
    la_data_out[124],
    la_data_out[123],
    la_data_out[122],
    la_data_out[121],
    la_data_out[120],
    la_data_out[119],
    la_data_out[118],
    la_data_out[117],
    la_data_out[116],
    la_data_out[115],
    la_data_out[114],
    la_data_out[113],
    la_data_out[112],
    la_data_out[111],
    la_data_out[110],
    la_data_out[109],
    la_data_out[108],
    la_data_out[107],
    la_data_out[106],
    la_data_out[105],
    la_data_out[104],
    la_data_out[103],
    la_data_out[102],
    la_data_out[101],
    la_data_out[100],
    la_data_out[99],
    la_data_out[98],
    la_data_out[97],
    la_data_out[96],
    la_data_out[95],
    la_data_out[94],
    la_data_out[93],
    la_data_out[92],
    la_data_out[91],
    la_data_out[90],
    la_data_out[89],
    la_data_out[88],
    la_data_out[87],
    la_data_out[86],
    la_data_out[85],
    la_data_out[84],
    la_data_out[83],
    la_data_out[82],
    la_data_out[81],
    la_data_out[80],
    la_data_out[79],
    la_data_out[78],
    la_data_out[77],
    la_data_out[76],
    la_data_out[75],
    la_data_out[74],
    la_data_out[73],
    la_data_out[72],
    la_data_out[71],
    la_data_out[70],
    la_data_out[69],
    la_data_out[68],
    la_data_out[67],
    la_data_out[66],
    la_data_out[65],
    la_data_out[64],
    la_data_out[63],
    la_data_out[62],
    la_data_out[61],
    la_data_out[60],
    la_data_out[59],
    la_data_out[58],
    la_data_out[57],
    la_data_out[56],
    la_data_out[55],
    la_data_out[54],
    la_data_out[53],
    la_data_out[52],
    la_data_out[51],
    la_data_out[50],
    la_data_out[49],
    la_data_out[48],
    la_data_out[47],
    la_data_out[46],
    la_data_out[45],
    la_data_out[44],
    la_data_out[43],
    la_data_out[42],
    la_data_out[41],
    la_data_out[40],
    la_data_out[39],
    la_data_out[38],
    la_data_out[37],
    la_data_out[36],
    la_data_out[35],
    la_data_out[34],
    la_data_out[33],
    la_data_out[32],
    la_data_out[31],
    la_data_out[30],
    la_data_out[29],
    la_data_out[28],
    la_data_out[27],
    la_data_out[26],
    la_data_out[25],
    la_data_out[24],
    la_data_out[23],
    la_data_out[22],
    la_data_out[21],
    la_data_out[20],
    la_data_out[19],
    la_data_out[18],
    la_data_out[17],
    la_data_out[16],
    la_data_out[15],
    la_data_out[14],
    la_data_out[13],
    la_data_out[12],
    la_data_out[11],
    la_data_out[10],
    la_data_out[9],
    la_data_out[8],
    la_data_out[7],
    la_data_out[6],
    la_data_out[5],
    la_data_out[4],
    la_data_out[3],
    la_data_out[2],
    la_data_out[1],
    la_data_out[0]}),
    .master_data_addr_to_inter_i({\master_data_addr_to_inter[27] ,
    \master_data_addr_to_inter[26] ,
    \master_data_addr_to_inter[25] ,
    \master_data_addr_to_inter[24] ,
    \master_data_addr_to_inter[23] ,
    \master_data_addr_to_inter[22] ,
    \master_data_addr_to_inter[21] ,
    \master_data_addr_to_inter[20] ,
    \master_data_addr_to_inter[19] ,
    \master_data_addr_to_inter[18] ,
    \master_data_addr_to_inter[17] ,
    \master_data_addr_to_inter[16] ,
    \master_data_addr_to_inter[15] ,
    \master_data_addr_to_inter[14] ,
    \master_data_addr_to_inter[13] ,
    \master_data_addr_to_inter[12] ,
    \master_data_addr_to_inter[11] ,
    \master_data_addr_to_inter[10] ,
    \master_data_addr_to_inter[9] ,
    \master_data_addr_to_inter[8] ,
    \master_data_addr_to_inter[7] ,
    \master_data_addr_to_inter[6] ,
    \master_data_addr_to_inter[5] ,
    \master_data_addr_to_inter[4] ,
    \master_data_addr_to_inter[3] ,
    \master_data_addr_to_inter[2] ,
    \master_data_addr_to_inter[1] ,
    \master_data_addr_to_inter[0] }),
    .master_data_addr_to_inter_ro_i({\master_data_addr_to_inter_ro[25] ,
    \master_data_addr_to_inter_ro[24] ,
    \master_data_addr_to_inter_ro[23] ,
    \master_data_addr_to_inter_ro[22] ,
    \master_data_addr_to_inter_ro[21] ,
    \master_data_addr_to_inter_ro[20] ,
    \master_data_addr_to_inter_ro[19] ,
    \master_data_addr_to_inter_ro[18] ,
    \master_data_addr_to_inter_ro[17] ,
    \master_data_addr_to_inter_ro[16] ,
    \master_data_addr_to_inter_ro[15] ,
    \master_data_addr_to_inter_ro[14] ,
    \master_data_addr_to_inter_ro[13] ,
    \master_data_addr_to_inter_ro[12] ,
    \master_data_addr_to_inter_ro[11] ,
    \master_data_addr_to_inter_ro[10] ,
    \master_data_addr_to_inter_ro[9] ,
    \master_data_addr_to_inter_ro[8] ,
    \master_data_addr_to_inter_ro[7] ,
    \master_data_addr_to_inter_ro[6] ,
    \master_data_addr_to_inter_ro[5] ,
    \master_data_addr_to_inter_ro[4] ,
    \master_data_addr_to_inter_ro[3] ,
    \master_data_addr_to_inter_ro[2] ,
    \master_data_addr_to_inter_ro[1] ,
    \master_data_addr_to_inter_ro[0] }),
    .master_data_be_to_inter_i({\master_data_be_to_inter[7] ,
    \master_data_be_to_inter[6] ,
    \master_data_be_to_inter[5] ,
    \master_data_be_to_inter[4] ,
    \master_data_be_to_inter[3] ,
    \master_data_be_to_inter[2] ,
    \master_data_be_to_inter[1] ,
    \master_data_be_to_inter[0] }),
    .master_data_gnt_to_inter_o({\master_data_gnt_to_inter[1] ,
    \master_data_gnt_to_inter[0] }),
    .master_data_gnt_to_inter_ro_o({\master_data_gnt_to_inter_ro[1] ,
    \master_data_gnt_to_inter_ro[0] }),
    .master_data_rdata_to_inter_o({\master_data_rdata_to_inter[63] ,
    \master_data_rdata_to_inter[62] ,
    \master_data_rdata_to_inter[61] ,
    \master_data_rdata_to_inter[60] ,
    \master_data_rdata_to_inter[59] ,
    \master_data_rdata_to_inter[58] ,
    \master_data_rdata_to_inter[57] ,
    \master_data_rdata_to_inter[56] ,
    \master_data_rdata_to_inter[55] ,
    \master_data_rdata_to_inter[54] ,
    \master_data_rdata_to_inter[53] ,
    \master_data_rdata_to_inter[52] ,
    \master_data_rdata_to_inter[51] ,
    \master_data_rdata_to_inter[50] ,
    \master_data_rdata_to_inter[49] ,
    \master_data_rdata_to_inter[48] ,
    \master_data_rdata_to_inter[47] ,
    \master_data_rdata_to_inter[46] ,
    \master_data_rdata_to_inter[45] ,
    \master_data_rdata_to_inter[44] ,
    \master_data_rdata_to_inter[43] ,
    \master_data_rdata_to_inter[42] ,
    \master_data_rdata_to_inter[41] ,
    \master_data_rdata_to_inter[40] ,
    \master_data_rdata_to_inter[39] ,
    \master_data_rdata_to_inter[38] ,
    \master_data_rdata_to_inter[37] ,
    \master_data_rdata_to_inter[36] ,
    \master_data_rdata_to_inter[35] ,
    \master_data_rdata_to_inter[34] ,
    \master_data_rdata_to_inter[33] ,
    \master_data_rdata_to_inter[32] ,
    \master_data_rdata_to_inter[31] ,
    \master_data_rdata_to_inter[30] ,
    \master_data_rdata_to_inter[29] ,
    \master_data_rdata_to_inter[28] ,
    \master_data_rdata_to_inter[27] ,
    \master_data_rdata_to_inter[26] ,
    \master_data_rdata_to_inter[25] ,
    \master_data_rdata_to_inter[24] ,
    \master_data_rdata_to_inter[23] ,
    \master_data_rdata_to_inter[22] ,
    \master_data_rdata_to_inter[21] ,
    \master_data_rdata_to_inter[20] ,
    \master_data_rdata_to_inter[19] ,
    \master_data_rdata_to_inter[18] ,
    \master_data_rdata_to_inter[17] ,
    \master_data_rdata_to_inter[16] ,
    \master_data_rdata_to_inter[15] ,
    \master_data_rdata_to_inter[14] ,
    \master_data_rdata_to_inter[13] ,
    \master_data_rdata_to_inter[12] ,
    \master_data_rdata_to_inter[11] ,
    \master_data_rdata_to_inter[10] ,
    \master_data_rdata_to_inter[9] ,
    \master_data_rdata_to_inter[8] ,
    \master_data_rdata_to_inter[7] ,
    \master_data_rdata_to_inter[6] ,
    \master_data_rdata_to_inter[5] ,
    \master_data_rdata_to_inter[4] ,
    \master_data_rdata_to_inter[3] ,
    \master_data_rdata_to_inter[2] ,
    \master_data_rdata_to_inter[1] ,
    \master_data_rdata_to_inter[0] }),
    .master_data_rdata_to_inter_ro_o({\master_data_rdata_to_inter_ro[63] ,
    \master_data_rdata_to_inter_ro[62] ,
    \master_data_rdata_to_inter_ro[61] ,
    \master_data_rdata_to_inter_ro[60] ,
    \master_data_rdata_to_inter_ro[59] ,
    \master_data_rdata_to_inter_ro[58] ,
    \master_data_rdata_to_inter_ro[57] ,
    \master_data_rdata_to_inter_ro[56] ,
    \master_data_rdata_to_inter_ro[55] ,
    \master_data_rdata_to_inter_ro[54] ,
    \master_data_rdata_to_inter_ro[53] ,
    \master_data_rdata_to_inter_ro[52] ,
    \master_data_rdata_to_inter_ro[51] ,
    \master_data_rdata_to_inter_ro[50] ,
    \master_data_rdata_to_inter_ro[49] ,
    \master_data_rdata_to_inter_ro[48] ,
    \master_data_rdata_to_inter_ro[47] ,
    \master_data_rdata_to_inter_ro[46] ,
    \master_data_rdata_to_inter_ro[45] ,
    \master_data_rdata_to_inter_ro[44] ,
    \master_data_rdata_to_inter_ro[43] ,
    \master_data_rdata_to_inter_ro[42] ,
    \master_data_rdata_to_inter_ro[41] ,
    \master_data_rdata_to_inter_ro[40] ,
    \master_data_rdata_to_inter_ro[39] ,
    \master_data_rdata_to_inter_ro[38] ,
    \master_data_rdata_to_inter_ro[37] ,
    \master_data_rdata_to_inter_ro[36] ,
    \master_data_rdata_to_inter_ro[35] ,
    \master_data_rdata_to_inter_ro[34] ,
    \master_data_rdata_to_inter_ro[33] ,
    \master_data_rdata_to_inter_ro[32] ,
    \master_data_rdata_to_inter_ro[31] ,
    \master_data_rdata_to_inter_ro[30] ,
    \master_data_rdata_to_inter_ro[29] ,
    \master_data_rdata_to_inter_ro[28] ,
    \master_data_rdata_to_inter_ro[27] ,
    \master_data_rdata_to_inter_ro[26] ,
    \master_data_rdata_to_inter_ro[25] ,
    \master_data_rdata_to_inter_ro[24] ,
    \master_data_rdata_to_inter_ro[23] ,
    \master_data_rdata_to_inter_ro[22] ,
    \master_data_rdata_to_inter_ro[21] ,
    \master_data_rdata_to_inter_ro[20] ,
    \master_data_rdata_to_inter_ro[19] ,
    \master_data_rdata_to_inter_ro[18] ,
    \master_data_rdata_to_inter_ro[17] ,
    \master_data_rdata_to_inter_ro[16] ,
    \master_data_rdata_to_inter_ro[15] ,
    \master_data_rdata_to_inter_ro[14] ,
    \master_data_rdata_to_inter_ro[13] ,
    \master_data_rdata_to_inter_ro[12] ,
    \master_data_rdata_to_inter_ro[11] ,
    \master_data_rdata_to_inter_ro[10] ,
    \master_data_rdata_to_inter_ro[9] ,
    \master_data_rdata_to_inter_ro[8] ,
    \master_data_rdata_to_inter_ro[7] ,
    \master_data_rdata_to_inter_ro[6] ,
    \master_data_rdata_to_inter_ro[5] ,
    \master_data_rdata_to_inter_ro[4] ,
    \master_data_rdata_to_inter_ro[3] ,
    \master_data_rdata_to_inter_ro[2] ,
    \master_data_rdata_to_inter_ro[1] ,
    \master_data_rdata_to_inter_ro[0] }),
    .master_data_req_to_inter_i({\master_data_req_to_inter[1] ,
    \master_data_req_to_inter[0] }),
    .master_data_req_to_inter_ro_i({\master_data_req_to_inter_ro[1] ,
    \master_data_req_to_inter_ro[0] }),
    .master_data_rvalid_to_inter_o({\master_data_rvalid_to_inter[1] ,
    \master_data_rvalid_to_inter[0] }),
    .master_data_rvalid_to_inter_ro_o({\master_data_rvalid_to_inter_ro[1] ,
    \master_data_rvalid_to_inter_ro[0] }),
    .master_data_wdata_to_inter_i({\master_data_wdata_to_inter[63] ,
    \master_data_wdata_to_inter[62] ,
    \master_data_wdata_to_inter[61] ,
    \master_data_wdata_to_inter[60] ,
    \master_data_wdata_to_inter[59] ,
    \master_data_wdata_to_inter[58] ,
    \master_data_wdata_to_inter[57] ,
    \master_data_wdata_to_inter[56] ,
    \master_data_wdata_to_inter[55] ,
    \master_data_wdata_to_inter[54] ,
    \master_data_wdata_to_inter[53] ,
    \master_data_wdata_to_inter[52] ,
    \master_data_wdata_to_inter[51] ,
    \master_data_wdata_to_inter[50] ,
    \master_data_wdata_to_inter[49] ,
    \master_data_wdata_to_inter[48] ,
    \master_data_wdata_to_inter[47] ,
    \master_data_wdata_to_inter[46] ,
    \master_data_wdata_to_inter[45] ,
    \master_data_wdata_to_inter[44] ,
    \master_data_wdata_to_inter[43] ,
    \master_data_wdata_to_inter[42] ,
    \master_data_wdata_to_inter[41] ,
    \master_data_wdata_to_inter[40] ,
    \master_data_wdata_to_inter[39] ,
    \master_data_wdata_to_inter[38] ,
    \master_data_wdata_to_inter[37] ,
    \master_data_wdata_to_inter[36] ,
    \master_data_wdata_to_inter[35] ,
    \master_data_wdata_to_inter[34] ,
    \master_data_wdata_to_inter[33] ,
    \master_data_wdata_to_inter[32] ,
    \master_data_wdata_to_inter[31] ,
    \master_data_wdata_to_inter[30] ,
    \master_data_wdata_to_inter[29] ,
    \master_data_wdata_to_inter[28] ,
    \master_data_wdata_to_inter[27] ,
    \master_data_wdata_to_inter[26] ,
    \master_data_wdata_to_inter[25] ,
    \master_data_wdata_to_inter[24] ,
    \master_data_wdata_to_inter[23] ,
    \master_data_wdata_to_inter[22] ,
    \master_data_wdata_to_inter[21] ,
    \master_data_wdata_to_inter[20] ,
    \master_data_wdata_to_inter[19] ,
    \master_data_wdata_to_inter[18] ,
    \master_data_wdata_to_inter[17] ,
    \master_data_wdata_to_inter[16] ,
    \master_data_wdata_to_inter[15] ,
    \master_data_wdata_to_inter[14] ,
    \master_data_wdata_to_inter[13] ,
    \master_data_wdata_to_inter[12] ,
    \master_data_wdata_to_inter[11] ,
    \master_data_wdata_to_inter[10] ,
    \master_data_wdata_to_inter[9] ,
    \master_data_wdata_to_inter[8] ,
    \master_data_wdata_to_inter[7] ,
    \master_data_wdata_to_inter[6] ,
    \master_data_wdata_to_inter[5] ,
    \master_data_wdata_to_inter[4] ,
    \master_data_wdata_to_inter[3] ,
    \master_data_wdata_to_inter[2] ,
    \master_data_wdata_to_inter[1] ,
    \master_data_wdata_to_inter[0] }),
    .master_data_we_to_inter_i({\master_data_we_to_inter[1] ,
    \master_data_we_to_inter[0] }),
    .slave_data_addr_to_inter_o({\slave_data_addr_to_inter[43] ,
    \slave_data_addr_to_inter[42] ,
    \slave_data_addr_to_inter[41] ,
    \slave_data_addr_to_inter[40] ,
    \slave_data_addr_to_inter[39] ,
    \slave_data_addr_to_inter[38] ,
    \slave_data_addr_to_inter[37] ,
    \slave_data_addr_to_inter[36] ,
    \slave_data_addr_to_inter[35] ,
    \slave_data_addr_to_inter[34] ,
    \slave_data_addr_to_inter[33] ,
    \slave_data_addr_to_inter[32] ,
    \slave_data_addr_to_inter[31] ,
    \slave_data_addr_to_inter[30] ,
    \slave_data_addr_to_inter[29] ,
    \slave_data_addr_to_inter[28] ,
    \slave_data_addr_to_inter[27] ,
    \slave_data_addr_to_inter[26] ,
    \slave_data_addr_to_inter[25] ,
    \slave_data_addr_to_inter[24] ,
    \slave_data_addr_to_inter[23] ,
    \slave_data_addr_to_inter[22] ,
    \slave_data_addr_to_inter[21] ,
    \slave_data_addr_to_inter[20] ,
    \slave_data_addr_to_inter[19] ,
    \slave_data_addr_to_inter[18] ,
    \slave_data_addr_to_inter[17] ,
    \slave_data_addr_to_inter[16] ,
    \slave_data_addr_to_inter[15] ,
    \slave_data_addr_to_inter[14] ,
    \slave_data_addr_to_inter[13] ,
    \slave_data_addr_to_inter[12] ,
    \slave_data_addr_to_inter[11] ,
    \slave_data_addr_to_inter[10] ,
    \slave_data_addr_to_inter[9] ,
    \slave_data_addr_to_inter[8] ,
    \slave_data_addr_to_inter[7] ,
    \slave_data_addr_to_inter[6] ,
    \slave_data_addr_to_inter[5] ,
    \slave_data_addr_to_inter[4] ,
    \slave_data_addr_to_inter[3] ,
    \slave_data_addr_to_inter[2] ,
    \slave_data_addr_to_inter[1] ,
    \slave_data_addr_to_inter[0] }),
    .slave_data_addr_to_inter_ro_o({\slave_data_addr_to_inter_ro[43] ,
    \slave_data_addr_to_inter_ro[42] ,
    \slave_data_addr_to_inter_ro[41] ,
    \slave_data_addr_to_inter_ro[40] ,
    \slave_data_addr_to_inter_ro[39] ,
    \slave_data_addr_to_inter_ro[38] ,
    \slave_data_addr_to_inter_ro[37] ,
    \slave_data_addr_to_inter_ro[36] ,
    \slave_data_addr_to_inter_ro[35] ,
    \slave_data_addr_to_inter_ro[34] ,
    \slave_data_addr_to_inter_ro[33] ,
    \slave_data_addr_to_inter_ro[32] ,
    \slave_data_addr_to_inter_ro[31] ,
    \slave_data_addr_to_inter_ro[30] ,
    \slave_data_addr_to_inter_ro[29] ,
    \slave_data_addr_to_inter_ro[28] ,
    \slave_data_addr_to_inter_ro[27] ,
    \slave_data_addr_to_inter_ro[26] ,
    \slave_data_addr_to_inter_ro[25] ,
    \slave_data_addr_to_inter_ro[24] ,
    \slave_data_addr_to_inter_ro[23] ,
    \slave_data_addr_to_inter_ro[22] ,
    \slave_data_addr_to_inter_ro[21] ,
    \slave_data_addr_to_inter_ro[20] ,
    \slave_data_addr_to_inter_ro[19] ,
    \slave_data_addr_to_inter_ro[18] ,
    \slave_data_addr_to_inter_ro[17] ,
    \slave_data_addr_to_inter_ro[16] ,
    \slave_data_addr_to_inter_ro[15] ,
    \slave_data_addr_to_inter_ro[14] ,
    \slave_data_addr_to_inter_ro[13] ,
    \slave_data_addr_to_inter_ro[12] ,
    \slave_data_addr_to_inter_ro[11] ,
    \slave_data_addr_to_inter_ro[10] ,
    \slave_data_addr_to_inter_ro[9] ,
    \slave_data_addr_to_inter_ro[8] ,
    \slave_data_addr_to_inter_ro[7] ,
    \slave_data_addr_to_inter_ro[6] ,
    \slave_data_addr_to_inter_ro[5] ,
    \slave_data_addr_to_inter_ro[4] ,
    \slave_data_addr_to_inter_ro[3] ,
    \slave_data_addr_to_inter_ro[2] ,
    \slave_data_addr_to_inter_ro[1] ,
    \slave_data_addr_to_inter_ro[0] }),
    .slave_data_be_to_inter_o({\slave_data_be_to_inter[15] ,
    \slave_data_be_to_inter[14] ,
    \slave_data_be_to_inter[13] ,
    \slave_data_be_to_inter[12] ,
    \slave_data_be_to_inter[11] ,
    \slave_data_be_to_inter[10] ,
    \slave_data_be_to_inter[9] ,
    \slave_data_be_to_inter[8] ,
    \slave_data_be_to_inter[7] ,
    \slave_data_be_to_inter[6] ,
    \slave_data_be_to_inter[5] ,
    \slave_data_be_to_inter[4] ,
    \slave_data_be_to_inter[3] ,
    \slave_data_be_to_inter[2] ,
    \slave_data_be_to_inter[1] ,
    \slave_data_be_to_inter[0] }),
    .slave_data_rdata_to_inter_i({\slave_data_rdata_to_inter[127] ,
    \slave_data_rdata_to_inter[126] ,
    \slave_data_rdata_to_inter[125] ,
    \slave_data_rdata_to_inter[124] ,
    \slave_data_rdata_to_inter[123] ,
    \slave_data_rdata_to_inter[122] ,
    \slave_data_rdata_to_inter[121] ,
    \slave_data_rdata_to_inter[120] ,
    \slave_data_rdata_to_inter[119] ,
    \slave_data_rdata_to_inter[118] ,
    \slave_data_rdata_to_inter[117] ,
    \slave_data_rdata_to_inter[116] ,
    \slave_data_rdata_to_inter[115] ,
    \slave_data_rdata_to_inter[114] ,
    \slave_data_rdata_to_inter[113] ,
    \slave_data_rdata_to_inter[112] ,
    \slave_data_rdata_to_inter[111] ,
    \slave_data_rdata_to_inter[110] ,
    \slave_data_rdata_to_inter[109] ,
    \slave_data_rdata_to_inter[108] ,
    \slave_data_rdata_to_inter[107] ,
    \slave_data_rdata_to_inter[106] ,
    \slave_data_rdata_to_inter[105] ,
    \slave_data_rdata_to_inter[104] ,
    \slave_data_rdata_to_inter[103] ,
    \slave_data_rdata_to_inter[102] ,
    \slave_data_rdata_to_inter[101] ,
    \slave_data_rdata_to_inter[100] ,
    \slave_data_rdata_to_inter[99] ,
    \slave_data_rdata_to_inter[98] ,
    \slave_data_rdata_to_inter[97] ,
    \slave_data_rdata_to_inter[96] ,
    \slave_data_rdata_to_inter[95] ,
    \slave_data_rdata_to_inter[94] ,
    \slave_data_rdata_to_inter[93] ,
    \slave_data_rdata_to_inter[92] ,
    \slave_data_rdata_to_inter[91] ,
    \slave_data_rdata_to_inter[90] ,
    \slave_data_rdata_to_inter[89] ,
    \slave_data_rdata_to_inter[88] ,
    \slave_data_rdata_to_inter[87] ,
    \slave_data_rdata_to_inter[86] ,
    \slave_data_rdata_to_inter[85] ,
    \slave_data_rdata_to_inter[84] ,
    \slave_data_rdata_to_inter[83] ,
    \slave_data_rdata_to_inter[82] ,
    \slave_data_rdata_to_inter[81] ,
    \slave_data_rdata_to_inter[80] ,
    \slave_data_rdata_to_inter[79] ,
    \slave_data_rdata_to_inter[78] ,
    \slave_data_rdata_to_inter[77] ,
    \slave_data_rdata_to_inter[76] ,
    \slave_data_rdata_to_inter[75] ,
    \slave_data_rdata_to_inter[74] ,
    \slave_data_rdata_to_inter[73] ,
    \slave_data_rdata_to_inter[72] ,
    \slave_data_rdata_to_inter[71] ,
    \slave_data_rdata_to_inter[70] ,
    \slave_data_rdata_to_inter[69] ,
    \slave_data_rdata_to_inter[68] ,
    \slave_data_rdata_to_inter[67] ,
    \slave_data_rdata_to_inter[66] ,
    \slave_data_rdata_to_inter[65] ,
    \slave_data_rdata_to_inter[64] ,
    \slave_data_rdata_to_inter[63] ,
    \slave_data_rdata_to_inter[62] ,
    \slave_data_rdata_to_inter[61] ,
    \slave_data_rdata_to_inter[60] ,
    \slave_data_rdata_to_inter[59] ,
    \slave_data_rdata_to_inter[58] ,
    \slave_data_rdata_to_inter[57] ,
    \slave_data_rdata_to_inter[56] ,
    \slave_data_rdata_to_inter[55] ,
    \slave_data_rdata_to_inter[54] ,
    \slave_data_rdata_to_inter[53] ,
    \slave_data_rdata_to_inter[52] ,
    \slave_data_rdata_to_inter[51] ,
    \slave_data_rdata_to_inter[50] ,
    \slave_data_rdata_to_inter[49] ,
    \slave_data_rdata_to_inter[48] ,
    \slave_data_rdata_to_inter[47] ,
    \slave_data_rdata_to_inter[46] ,
    \slave_data_rdata_to_inter[45] ,
    \slave_data_rdata_to_inter[44] ,
    \slave_data_rdata_to_inter[43] ,
    \slave_data_rdata_to_inter[42] ,
    \slave_data_rdata_to_inter[41] ,
    \slave_data_rdata_to_inter[40] ,
    \slave_data_rdata_to_inter[39] ,
    \slave_data_rdata_to_inter[38] ,
    \slave_data_rdata_to_inter[37] ,
    \slave_data_rdata_to_inter[36] ,
    \slave_data_rdata_to_inter[35] ,
    \slave_data_rdata_to_inter[34] ,
    \slave_data_rdata_to_inter[33] ,
    \slave_data_rdata_to_inter[32] ,
    \slave_data_rdata_to_inter[31] ,
    \slave_data_rdata_to_inter[30] ,
    \slave_data_rdata_to_inter[29] ,
    \slave_data_rdata_to_inter[28] ,
    \slave_data_rdata_to_inter[27] ,
    \slave_data_rdata_to_inter[26] ,
    \slave_data_rdata_to_inter[25] ,
    \slave_data_rdata_to_inter[24] ,
    \slave_data_rdata_to_inter[23] ,
    \slave_data_rdata_to_inter[22] ,
    \slave_data_rdata_to_inter[21] ,
    \slave_data_rdata_to_inter[20] ,
    \slave_data_rdata_to_inter[19] ,
    \slave_data_rdata_to_inter[18] ,
    \slave_data_rdata_to_inter[17] ,
    \slave_data_rdata_to_inter[16] ,
    \slave_data_rdata_to_inter[15] ,
    \slave_data_rdata_to_inter[14] ,
    \slave_data_rdata_to_inter[13] ,
    \slave_data_rdata_to_inter[12] ,
    \slave_data_rdata_to_inter[11] ,
    \slave_data_rdata_to_inter[10] ,
    \slave_data_rdata_to_inter[9] ,
    \slave_data_rdata_to_inter[8] ,
    \slave_data_rdata_to_inter[7] ,
    \slave_data_rdata_to_inter[6] ,
    \slave_data_rdata_to_inter[5] ,
    \slave_data_rdata_to_inter[4] ,
    \slave_data_rdata_to_inter[3] ,
    \slave_data_rdata_to_inter[2] ,
    \slave_data_rdata_to_inter[1] ,
    \slave_data_rdata_to_inter[0] }),
    .slave_data_rdata_to_inter_ro_i({\slave_data_rdata_to_inter_ro[127] ,
    \slave_data_rdata_to_inter_ro[126] ,
    \slave_data_rdata_to_inter_ro[125] ,
    \slave_data_rdata_to_inter_ro[124] ,
    \slave_data_rdata_to_inter_ro[123] ,
    \slave_data_rdata_to_inter_ro[122] ,
    \slave_data_rdata_to_inter_ro[121] ,
    \slave_data_rdata_to_inter_ro[120] ,
    \slave_data_rdata_to_inter_ro[119] ,
    \slave_data_rdata_to_inter_ro[118] ,
    \slave_data_rdata_to_inter_ro[117] ,
    \slave_data_rdata_to_inter_ro[116] ,
    \slave_data_rdata_to_inter_ro[115] ,
    \slave_data_rdata_to_inter_ro[114] ,
    \slave_data_rdata_to_inter_ro[113] ,
    \slave_data_rdata_to_inter_ro[112] ,
    \slave_data_rdata_to_inter_ro[111] ,
    \slave_data_rdata_to_inter_ro[110] ,
    \slave_data_rdata_to_inter_ro[109] ,
    \slave_data_rdata_to_inter_ro[108] ,
    \slave_data_rdata_to_inter_ro[107] ,
    \slave_data_rdata_to_inter_ro[106] ,
    \slave_data_rdata_to_inter_ro[105] ,
    \slave_data_rdata_to_inter_ro[104] ,
    \slave_data_rdata_to_inter_ro[103] ,
    \slave_data_rdata_to_inter_ro[102] ,
    \slave_data_rdata_to_inter_ro[101] ,
    \slave_data_rdata_to_inter_ro[100] ,
    \slave_data_rdata_to_inter_ro[99] ,
    \slave_data_rdata_to_inter_ro[98] ,
    \slave_data_rdata_to_inter_ro[97] ,
    \slave_data_rdata_to_inter_ro[96] ,
    \slave_data_rdata_to_inter_ro[95] ,
    \slave_data_rdata_to_inter_ro[94] ,
    \slave_data_rdata_to_inter_ro[93] ,
    \slave_data_rdata_to_inter_ro[92] ,
    \slave_data_rdata_to_inter_ro[91] ,
    \slave_data_rdata_to_inter_ro[90] ,
    \slave_data_rdata_to_inter_ro[89] ,
    \slave_data_rdata_to_inter_ro[88] ,
    \slave_data_rdata_to_inter_ro[87] ,
    \slave_data_rdata_to_inter_ro[86] ,
    \slave_data_rdata_to_inter_ro[85] ,
    \slave_data_rdata_to_inter_ro[84] ,
    \slave_data_rdata_to_inter_ro[83] ,
    \slave_data_rdata_to_inter_ro[82] ,
    \slave_data_rdata_to_inter_ro[81] ,
    \slave_data_rdata_to_inter_ro[80] ,
    \slave_data_rdata_to_inter_ro[79] ,
    \slave_data_rdata_to_inter_ro[78] ,
    \slave_data_rdata_to_inter_ro[77] ,
    \slave_data_rdata_to_inter_ro[76] ,
    \slave_data_rdata_to_inter_ro[75] ,
    \slave_data_rdata_to_inter_ro[74] ,
    \slave_data_rdata_to_inter_ro[73] ,
    \slave_data_rdata_to_inter_ro[72] ,
    \slave_data_rdata_to_inter_ro[71] ,
    \slave_data_rdata_to_inter_ro[70] ,
    \slave_data_rdata_to_inter_ro[69] ,
    \slave_data_rdata_to_inter_ro[68] ,
    \slave_data_rdata_to_inter_ro[67] ,
    \slave_data_rdata_to_inter_ro[66] ,
    \slave_data_rdata_to_inter_ro[65] ,
    \slave_data_rdata_to_inter_ro[64] ,
    \slave_data_rdata_to_inter_ro[63] ,
    \slave_data_rdata_to_inter_ro[62] ,
    \slave_data_rdata_to_inter_ro[61] ,
    \slave_data_rdata_to_inter_ro[60] ,
    \slave_data_rdata_to_inter_ro[59] ,
    \slave_data_rdata_to_inter_ro[58] ,
    \slave_data_rdata_to_inter_ro[57] ,
    \slave_data_rdata_to_inter_ro[56] ,
    \slave_data_rdata_to_inter_ro[55] ,
    \slave_data_rdata_to_inter_ro[54] ,
    \slave_data_rdata_to_inter_ro[53] ,
    \slave_data_rdata_to_inter_ro[52] ,
    \slave_data_rdata_to_inter_ro[51] ,
    \slave_data_rdata_to_inter_ro[50] ,
    \slave_data_rdata_to_inter_ro[49] ,
    \slave_data_rdata_to_inter_ro[48] ,
    \slave_data_rdata_to_inter_ro[47] ,
    \slave_data_rdata_to_inter_ro[46] ,
    \slave_data_rdata_to_inter_ro[45] ,
    \slave_data_rdata_to_inter_ro[44] ,
    \slave_data_rdata_to_inter_ro[43] ,
    \slave_data_rdata_to_inter_ro[42] ,
    \slave_data_rdata_to_inter_ro[41] ,
    \slave_data_rdata_to_inter_ro[40] ,
    \slave_data_rdata_to_inter_ro[39] ,
    \slave_data_rdata_to_inter_ro[38] ,
    \slave_data_rdata_to_inter_ro[37] ,
    \slave_data_rdata_to_inter_ro[36] ,
    \slave_data_rdata_to_inter_ro[35] ,
    \slave_data_rdata_to_inter_ro[34] ,
    \slave_data_rdata_to_inter_ro[33] ,
    \slave_data_rdata_to_inter_ro[32] ,
    \slave_data_rdata_to_inter_ro[31] ,
    \slave_data_rdata_to_inter_ro[30] ,
    \slave_data_rdata_to_inter_ro[29] ,
    \slave_data_rdata_to_inter_ro[28] ,
    \slave_data_rdata_to_inter_ro[27] ,
    \slave_data_rdata_to_inter_ro[26] ,
    \slave_data_rdata_to_inter_ro[25] ,
    \slave_data_rdata_to_inter_ro[24] ,
    \slave_data_rdata_to_inter_ro[23] ,
    \slave_data_rdata_to_inter_ro[22] ,
    \slave_data_rdata_to_inter_ro[21] ,
    \slave_data_rdata_to_inter_ro[20] ,
    \slave_data_rdata_to_inter_ro[19] ,
    \slave_data_rdata_to_inter_ro[18] ,
    \slave_data_rdata_to_inter_ro[17] ,
    \slave_data_rdata_to_inter_ro[16] ,
    \slave_data_rdata_to_inter_ro[15] ,
    \slave_data_rdata_to_inter_ro[14] ,
    \slave_data_rdata_to_inter_ro[13] ,
    \slave_data_rdata_to_inter_ro[12] ,
    \slave_data_rdata_to_inter_ro[11] ,
    \slave_data_rdata_to_inter_ro[10] ,
    \slave_data_rdata_to_inter_ro[9] ,
    \slave_data_rdata_to_inter_ro[8] ,
    \slave_data_rdata_to_inter_ro[7] ,
    \slave_data_rdata_to_inter_ro[6] ,
    \slave_data_rdata_to_inter_ro[5] ,
    \slave_data_rdata_to_inter_ro[4] ,
    \slave_data_rdata_to_inter_ro[3] ,
    \slave_data_rdata_to_inter_ro[2] ,
    \slave_data_rdata_to_inter_ro[1] ,
    \slave_data_rdata_to_inter_ro[0] }),
    .slave_data_req_to_inter_o({\slave_data_req_to_inter[3] ,
    \slave_data_req_to_inter[2] ,
    \slave_data_req_to_inter[1] ,
    \slave_data_req_to_inter[0] }),
    .slave_data_req_to_inter_ro_o({\slave_data_req_to_inter_ro[3] ,
    \slave_data_req_to_inter_ro[2] ,
    \slave_data_req_to_inter_ro[1] ,
    \slave_data_req_to_inter_ro[0] }),
    .slave_data_wdata_to_inter_o({\slave_data_wdata_to_inter[127] ,
    \slave_data_wdata_to_inter[126] ,
    \slave_data_wdata_to_inter[125] ,
    \slave_data_wdata_to_inter[124] ,
    \slave_data_wdata_to_inter[123] ,
    \slave_data_wdata_to_inter[122] ,
    \slave_data_wdata_to_inter[121] ,
    \slave_data_wdata_to_inter[120] ,
    \slave_data_wdata_to_inter[119] ,
    \slave_data_wdata_to_inter[118] ,
    \slave_data_wdata_to_inter[117] ,
    \slave_data_wdata_to_inter[116] ,
    \slave_data_wdata_to_inter[115] ,
    \slave_data_wdata_to_inter[114] ,
    \slave_data_wdata_to_inter[113] ,
    \slave_data_wdata_to_inter[112] ,
    \slave_data_wdata_to_inter[111] ,
    \slave_data_wdata_to_inter[110] ,
    \slave_data_wdata_to_inter[109] ,
    \slave_data_wdata_to_inter[108] ,
    \slave_data_wdata_to_inter[107] ,
    \slave_data_wdata_to_inter[106] ,
    \slave_data_wdata_to_inter[105] ,
    \slave_data_wdata_to_inter[104] ,
    \slave_data_wdata_to_inter[103] ,
    \slave_data_wdata_to_inter[102] ,
    \slave_data_wdata_to_inter[101] ,
    \slave_data_wdata_to_inter[100] ,
    \slave_data_wdata_to_inter[99] ,
    \slave_data_wdata_to_inter[98] ,
    \slave_data_wdata_to_inter[97] ,
    \slave_data_wdata_to_inter[96] ,
    \slave_data_wdata_to_inter[95] ,
    \slave_data_wdata_to_inter[94] ,
    \slave_data_wdata_to_inter[93] ,
    \slave_data_wdata_to_inter[92] ,
    \slave_data_wdata_to_inter[91] ,
    \slave_data_wdata_to_inter[90] ,
    \slave_data_wdata_to_inter[89] ,
    \slave_data_wdata_to_inter[88] ,
    \slave_data_wdata_to_inter[87] ,
    \slave_data_wdata_to_inter[86] ,
    \slave_data_wdata_to_inter[85] ,
    \slave_data_wdata_to_inter[84] ,
    \slave_data_wdata_to_inter[83] ,
    \slave_data_wdata_to_inter[82] ,
    \slave_data_wdata_to_inter[81] ,
    \slave_data_wdata_to_inter[80] ,
    \slave_data_wdata_to_inter[79] ,
    \slave_data_wdata_to_inter[78] ,
    \slave_data_wdata_to_inter[77] ,
    \slave_data_wdata_to_inter[76] ,
    \slave_data_wdata_to_inter[75] ,
    \slave_data_wdata_to_inter[74] ,
    \slave_data_wdata_to_inter[73] ,
    \slave_data_wdata_to_inter[72] ,
    \slave_data_wdata_to_inter[71] ,
    \slave_data_wdata_to_inter[70] ,
    \slave_data_wdata_to_inter[69] ,
    \slave_data_wdata_to_inter[68] ,
    \slave_data_wdata_to_inter[67] ,
    \slave_data_wdata_to_inter[66] ,
    \slave_data_wdata_to_inter[65] ,
    \slave_data_wdata_to_inter[64] ,
    \slave_data_wdata_to_inter[63] ,
    \slave_data_wdata_to_inter[62] ,
    \slave_data_wdata_to_inter[61] ,
    \slave_data_wdata_to_inter[60] ,
    \slave_data_wdata_to_inter[59] ,
    \slave_data_wdata_to_inter[58] ,
    \slave_data_wdata_to_inter[57] ,
    \slave_data_wdata_to_inter[56] ,
    \slave_data_wdata_to_inter[55] ,
    \slave_data_wdata_to_inter[54] ,
    \slave_data_wdata_to_inter[53] ,
    \slave_data_wdata_to_inter[52] ,
    \slave_data_wdata_to_inter[51] ,
    \slave_data_wdata_to_inter[50] ,
    \slave_data_wdata_to_inter[49] ,
    \slave_data_wdata_to_inter[48] ,
    \slave_data_wdata_to_inter[47] ,
    \slave_data_wdata_to_inter[46] ,
    \slave_data_wdata_to_inter[45] ,
    \slave_data_wdata_to_inter[44] ,
    \slave_data_wdata_to_inter[43] ,
    \slave_data_wdata_to_inter[42] ,
    \slave_data_wdata_to_inter[41] ,
    \slave_data_wdata_to_inter[40] ,
    \slave_data_wdata_to_inter[39] ,
    \slave_data_wdata_to_inter[38] ,
    \slave_data_wdata_to_inter[37] ,
    \slave_data_wdata_to_inter[36] ,
    \slave_data_wdata_to_inter[35] ,
    \slave_data_wdata_to_inter[34] ,
    \slave_data_wdata_to_inter[33] ,
    \slave_data_wdata_to_inter[32] ,
    \slave_data_wdata_to_inter[31] ,
    \slave_data_wdata_to_inter[30] ,
    \slave_data_wdata_to_inter[29] ,
    \slave_data_wdata_to_inter[28] ,
    \slave_data_wdata_to_inter[27] ,
    \slave_data_wdata_to_inter[26] ,
    \slave_data_wdata_to_inter[25] ,
    \slave_data_wdata_to_inter[24] ,
    \slave_data_wdata_to_inter[23] ,
    \slave_data_wdata_to_inter[22] ,
    \slave_data_wdata_to_inter[21] ,
    \slave_data_wdata_to_inter[20] ,
    \slave_data_wdata_to_inter[19] ,
    \slave_data_wdata_to_inter[18] ,
    \slave_data_wdata_to_inter[17] ,
    \slave_data_wdata_to_inter[16] ,
    \slave_data_wdata_to_inter[15] ,
    \slave_data_wdata_to_inter[14] ,
    \slave_data_wdata_to_inter[13] ,
    \slave_data_wdata_to_inter[12] ,
    \slave_data_wdata_to_inter[11] ,
    \slave_data_wdata_to_inter[10] ,
    \slave_data_wdata_to_inter[9] ,
    \slave_data_wdata_to_inter[8] ,
    \slave_data_wdata_to_inter[7] ,
    \slave_data_wdata_to_inter[6] ,
    \slave_data_wdata_to_inter[5] ,
    \slave_data_wdata_to_inter[4] ,
    \slave_data_wdata_to_inter[3] ,
    \slave_data_wdata_to_inter[2] ,
    \slave_data_wdata_to_inter[1] ,
    \slave_data_wdata_to_inter[0] }),
    .slave_data_we_to_inter_o({\slave_data_we_to_inter[3] ,
    \slave_data_we_to_inter[2] ,
    \slave_data_we_to_inter[1] ,
    \slave_data_we_to_inter[0] }),
    .user_irq({user_irq[2],
    user_irq[1],
    user_irq[0]}),
    .wbs_adr_i({wbs_adr_i[31],
    wbs_adr_i[30],
    wbs_adr_i[29],
    wbs_adr_i[28],
    wbs_adr_i[27],
    wbs_adr_i[26],
    wbs_adr_i[25],
    wbs_adr_i[24],
    wbs_adr_i[23],
    wbs_adr_i[22],
    wbs_adr_i[21],
    wbs_adr_i[20],
    wbs_adr_i[19],
    wbs_adr_i[18],
    wbs_adr_i[17],
    wbs_adr_i[16],
    wbs_adr_i[15],
    wbs_adr_i[14],
    wbs_adr_i[13],
    wbs_adr_i[12],
    wbs_adr_i[11],
    wbs_adr_i[10],
    wbs_adr_i[9],
    wbs_adr_i[8],
    wbs_adr_i[7],
    wbs_adr_i[6],
    wbs_adr_i[5],
    wbs_adr_i[4],
    wbs_adr_i[3],
    wbs_adr_i[2],
    wbs_adr_i[1],
    wbs_adr_i[0]}),
    .wbs_dat_i({wbs_dat_i[31],
    wbs_dat_i[30],
    wbs_dat_i[29],
    wbs_dat_i[28],
    wbs_dat_i[27],
    wbs_dat_i[26],
    wbs_dat_i[25],
    wbs_dat_i[24],
    wbs_dat_i[23],
    wbs_dat_i[22],
    wbs_dat_i[21],
    wbs_dat_i[20],
    wbs_dat_i[19],
    wbs_dat_i[18],
    wbs_dat_i[17],
    wbs_dat_i[16],
    wbs_dat_i[15],
    wbs_dat_i[14],
    wbs_dat_i[13],
    wbs_dat_i[12],
    wbs_dat_i[11],
    wbs_dat_i[10],
    wbs_dat_i[9],
    wbs_dat_i[8],
    wbs_dat_i[7],
    wbs_dat_i[6],
    wbs_dat_i[5],
    wbs_dat_i[4],
    wbs_dat_i[3],
    wbs_dat_i[2],
    wbs_dat_i[1],
    wbs_dat_i[0]}),
    .wbs_dat_o({wbs_dat_o[31],
    wbs_dat_o[30],
    wbs_dat_o[29],
    wbs_dat_o[28],
    wbs_dat_o[27],
    wbs_dat_o[26],
    wbs_dat_o[25],
    wbs_dat_o[24],
    wbs_dat_o[23],
    wbs_dat_o[22],
    wbs_dat_o[21],
    wbs_dat_o[20],
    wbs_dat_o[19],
    wbs_dat_o[18],
    wbs_dat_o[17],
    wbs_dat_o[16],
    wbs_dat_o[15],
    wbs_dat_o[14],
    wbs_dat_o[13],
    wbs_dat_o[12],
    wbs_dat_o[11],
    wbs_dat_o[10],
    wbs_dat_o[9],
    wbs_dat_o[8],
    wbs_dat_o[7],
    wbs_dat_o[6],
    wbs_dat_o[5],
    wbs_dat_o[4],
    wbs_dat_o[3],
    wbs_dat_o[2],
    wbs_dat_o[1],
    wbs_dat_o[0]}),
    .wbs_sel_i({wbs_sel_i[3],
    wbs_sel_i[2],
    wbs_sel_i[1],
    wbs_sel_i[0]}));
 sky130_sram_2kbyte_1rw1r_32x512_8 sram_1_i (.csb0(\slave_data_req_to_inter[0] ),
    .csb1(\slave_data_req_to_inter_ro[0] ),
    .web0(\slave_data_we_to_inter[0] ),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\slave_data_addr_to_inter[10] ,
    \slave_data_addr_to_inter[9] ,
    \slave_data_addr_to_inter[8] ,
    \slave_data_addr_to_inter[7] ,
    \slave_data_addr_to_inter[6] ,
    \slave_data_addr_to_inter[5] ,
    \slave_data_addr_to_inter[4] ,
    \slave_data_addr_to_inter[3] ,
    \slave_data_addr_to_inter[2] }),
    .addr1({\slave_data_addr_to_inter_ro[10] ,
    \slave_data_addr_to_inter_ro[9] ,
    \slave_data_addr_to_inter_ro[8] ,
    \slave_data_addr_to_inter_ro[7] ,
    \slave_data_addr_to_inter_ro[6] ,
    \slave_data_addr_to_inter_ro[5] ,
    \slave_data_addr_to_inter_ro[4] ,
    \slave_data_addr_to_inter_ro[3] ,
    \slave_data_addr_to_inter_ro[2] }),
    .din0({\slave_data_wdata_to_inter[31] ,
    \slave_data_wdata_to_inter[30] ,
    \slave_data_wdata_to_inter[29] ,
    \slave_data_wdata_to_inter[28] ,
    \slave_data_wdata_to_inter[27] ,
    \slave_data_wdata_to_inter[26] ,
    \slave_data_wdata_to_inter[25] ,
    \slave_data_wdata_to_inter[24] ,
    \slave_data_wdata_to_inter[23] ,
    \slave_data_wdata_to_inter[22] ,
    \slave_data_wdata_to_inter[21] ,
    \slave_data_wdata_to_inter[20] ,
    \slave_data_wdata_to_inter[19] ,
    \slave_data_wdata_to_inter[18] ,
    \slave_data_wdata_to_inter[17] ,
    \slave_data_wdata_to_inter[16] ,
    \slave_data_wdata_to_inter[15] ,
    \slave_data_wdata_to_inter[14] ,
    \slave_data_wdata_to_inter[13] ,
    \slave_data_wdata_to_inter[12] ,
    \slave_data_wdata_to_inter[11] ,
    \slave_data_wdata_to_inter[10] ,
    \slave_data_wdata_to_inter[9] ,
    \slave_data_wdata_to_inter[8] ,
    \slave_data_wdata_to_inter[7] ,
    \slave_data_wdata_to_inter[6] ,
    \slave_data_wdata_to_inter[5] ,
    \slave_data_wdata_to_inter[4] ,
    \slave_data_wdata_to_inter[3] ,
    \slave_data_wdata_to_inter[2] ,
    \slave_data_wdata_to_inter[1] ,
    \slave_data_wdata_to_inter[0] }),
    .dout0({\slave_data_rdata_to_inter[31] ,
    \slave_data_rdata_to_inter[30] ,
    \slave_data_rdata_to_inter[29] ,
    \slave_data_rdata_to_inter[28] ,
    \slave_data_rdata_to_inter[27] ,
    \slave_data_rdata_to_inter[26] ,
    \slave_data_rdata_to_inter[25] ,
    \slave_data_rdata_to_inter[24] ,
    \slave_data_rdata_to_inter[23] ,
    \slave_data_rdata_to_inter[22] ,
    \slave_data_rdata_to_inter[21] ,
    \slave_data_rdata_to_inter[20] ,
    \slave_data_rdata_to_inter[19] ,
    \slave_data_rdata_to_inter[18] ,
    \slave_data_rdata_to_inter[17] ,
    \slave_data_rdata_to_inter[16] ,
    \slave_data_rdata_to_inter[15] ,
    \slave_data_rdata_to_inter[14] ,
    \slave_data_rdata_to_inter[13] ,
    \slave_data_rdata_to_inter[12] ,
    \slave_data_rdata_to_inter[11] ,
    \slave_data_rdata_to_inter[10] ,
    \slave_data_rdata_to_inter[9] ,
    \slave_data_rdata_to_inter[8] ,
    \slave_data_rdata_to_inter[7] ,
    \slave_data_rdata_to_inter[6] ,
    \slave_data_rdata_to_inter[5] ,
    \slave_data_rdata_to_inter[4] ,
    \slave_data_rdata_to_inter[3] ,
    \slave_data_rdata_to_inter[2] ,
    \slave_data_rdata_to_inter[1] ,
    \slave_data_rdata_to_inter[0] }),
    .dout1({\slave_data_rdata_to_inter_ro[31] ,
    \slave_data_rdata_to_inter_ro[30] ,
    \slave_data_rdata_to_inter_ro[29] ,
    \slave_data_rdata_to_inter_ro[28] ,
    \slave_data_rdata_to_inter_ro[27] ,
    \slave_data_rdata_to_inter_ro[26] ,
    \slave_data_rdata_to_inter_ro[25] ,
    \slave_data_rdata_to_inter_ro[24] ,
    \slave_data_rdata_to_inter_ro[23] ,
    \slave_data_rdata_to_inter_ro[22] ,
    \slave_data_rdata_to_inter_ro[21] ,
    \slave_data_rdata_to_inter_ro[20] ,
    \slave_data_rdata_to_inter_ro[19] ,
    \slave_data_rdata_to_inter_ro[18] ,
    \slave_data_rdata_to_inter_ro[17] ,
    \slave_data_rdata_to_inter_ro[16] ,
    \slave_data_rdata_to_inter_ro[15] ,
    \slave_data_rdata_to_inter_ro[14] ,
    \slave_data_rdata_to_inter_ro[13] ,
    \slave_data_rdata_to_inter_ro[12] ,
    \slave_data_rdata_to_inter_ro[11] ,
    \slave_data_rdata_to_inter_ro[10] ,
    \slave_data_rdata_to_inter_ro[9] ,
    \slave_data_rdata_to_inter_ro[8] ,
    \slave_data_rdata_to_inter_ro[7] ,
    \slave_data_rdata_to_inter_ro[6] ,
    \slave_data_rdata_to_inter_ro[5] ,
    \slave_data_rdata_to_inter_ro[4] ,
    \slave_data_rdata_to_inter_ro[3] ,
    \slave_data_rdata_to_inter_ro[2] ,
    \slave_data_rdata_to_inter_ro[1] ,
    \slave_data_rdata_to_inter_ro[0] }),
    .wmask0({\slave_data_be_to_inter[3] ,
    \slave_data_be_to_inter[2] ,
    \slave_data_be_to_inter[1] ,
    \slave_data_be_to_inter[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 sram_2_i (.csb0(\slave_data_req_to_inter[1] ),
    .csb1(\slave_data_req_to_inter_ro[1] ),
    .web0(\slave_data_we_to_inter[1] ),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\slave_data_addr_to_inter[21] ,
    \slave_data_addr_to_inter[20] ,
    \slave_data_addr_to_inter[19] ,
    \slave_data_addr_to_inter[18] ,
    \slave_data_addr_to_inter[17] ,
    \slave_data_addr_to_inter[16] ,
    \slave_data_addr_to_inter[15] ,
    \slave_data_addr_to_inter[14] ,
    \slave_data_addr_to_inter[13] }),
    .addr1({\slave_data_addr_to_inter_ro[21] ,
    \slave_data_addr_to_inter_ro[20] ,
    \slave_data_addr_to_inter_ro[19] ,
    \slave_data_addr_to_inter_ro[18] ,
    \slave_data_addr_to_inter_ro[17] ,
    \slave_data_addr_to_inter_ro[16] ,
    \slave_data_addr_to_inter_ro[15] ,
    \slave_data_addr_to_inter_ro[14] ,
    \slave_data_addr_to_inter_ro[13] }),
    .din0({\slave_data_wdata_to_inter[63] ,
    \slave_data_wdata_to_inter[62] ,
    \slave_data_wdata_to_inter[61] ,
    \slave_data_wdata_to_inter[60] ,
    \slave_data_wdata_to_inter[59] ,
    \slave_data_wdata_to_inter[58] ,
    \slave_data_wdata_to_inter[57] ,
    \slave_data_wdata_to_inter[56] ,
    \slave_data_wdata_to_inter[55] ,
    \slave_data_wdata_to_inter[54] ,
    \slave_data_wdata_to_inter[53] ,
    \slave_data_wdata_to_inter[52] ,
    \slave_data_wdata_to_inter[51] ,
    \slave_data_wdata_to_inter[50] ,
    \slave_data_wdata_to_inter[49] ,
    \slave_data_wdata_to_inter[48] ,
    \slave_data_wdata_to_inter[47] ,
    \slave_data_wdata_to_inter[46] ,
    \slave_data_wdata_to_inter[45] ,
    \slave_data_wdata_to_inter[44] ,
    \slave_data_wdata_to_inter[43] ,
    \slave_data_wdata_to_inter[42] ,
    \slave_data_wdata_to_inter[41] ,
    \slave_data_wdata_to_inter[40] ,
    \slave_data_wdata_to_inter[39] ,
    \slave_data_wdata_to_inter[38] ,
    \slave_data_wdata_to_inter[37] ,
    \slave_data_wdata_to_inter[36] ,
    \slave_data_wdata_to_inter[35] ,
    \slave_data_wdata_to_inter[34] ,
    \slave_data_wdata_to_inter[33] ,
    \slave_data_wdata_to_inter[32] }),
    .dout0({\slave_data_rdata_to_inter[63] ,
    \slave_data_rdata_to_inter[62] ,
    \slave_data_rdata_to_inter[61] ,
    \slave_data_rdata_to_inter[60] ,
    \slave_data_rdata_to_inter[59] ,
    \slave_data_rdata_to_inter[58] ,
    \slave_data_rdata_to_inter[57] ,
    \slave_data_rdata_to_inter[56] ,
    \slave_data_rdata_to_inter[55] ,
    \slave_data_rdata_to_inter[54] ,
    \slave_data_rdata_to_inter[53] ,
    \slave_data_rdata_to_inter[52] ,
    \slave_data_rdata_to_inter[51] ,
    \slave_data_rdata_to_inter[50] ,
    \slave_data_rdata_to_inter[49] ,
    \slave_data_rdata_to_inter[48] ,
    \slave_data_rdata_to_inter[47] ,
    \slave_data_rdata_to_inter[46] ,
    \slave_data_rdata_to_inter[45] ,
    \slave_data_rdata_to_inter[44] ,
    \slave_data_rdata_to_inter[43] ,
    \slave_data_rdata_to_inter[42] ,
    \slave_data_rdata_to_inter[41] ,
    \slave_data_rdata_to_inter[40] ,
    \slave_data_rdata_to_inter[39] ,
    \slave_data_rdata_to_inter[38] ,
    \slave_data_rdata_to_inter[37] ,
    \slave_data_rdata_to_inter[36] ,
    \slave_data_rdata_to_inter[35] ,
    \slave_data_rdata_to_inter[34] ,
    \slave_data_rdata_to_inter[33] ,
    \slave_data_rdata_to_inter[32] }),
    .dout1({\slave_data_rdata_to_inter_ro[63] ,
    \slave_data_rdata_to_inter_ro[62] ,
    \slave_data_rdata_to_inter_ro[61] ,
    \slave_data_rdata_to_inter_ro[60] ,
    \slave_data_rdata_to_inter_ro[59] ,
    \slave_data_rdata_to_inter_ro[58] ,
    \slave_data_rdata_to_inter_ro[57] ,
    \slave_data_rdata_to_inter_ro[56] ,
    \slave_data_rdata_to_inter_ro[55] ,
    \slave_data_rdata_to_inter_ro[54] ,
    \slave_data_rdata_to_inter_ro[53] ,
    \slave_data_rdata_to_inter_ro[52] ,
    \slave_data_rdata_to_inter_ro[51] ,
    \slave_data_rdata_to_inter_ro[50] ,
    \slave_data_rdata_to_inter_ro[49] ,
    \slave_data_rdata_to_inter_ro[48] ,
    \slave_data_rdata_to_inter_ro[47] ,
    \slave_data_rdata_to_inter_ro[46] ,
    \slave_data_rdata_to_inter_ro[45] ,
    \slave_data_rdata_to_inter_ro[44] ,
    \slave_data_rdata_to_inter_ro[43] ,
    \slave_data_rdata_to_inter_ro[42] ,
    \slave_data_rdata_to_inter_ro[41] ,
    \slave_data_rdata_to_inter_ro[40] ,
    \slave_data_rdata_to_inter_ro[39] ,
    \slave_data_rdata_to_inter_ro[38] ,
    \slave_data_rdata_to_inter_ro[37] ,
    \slave_data_rdata_to_inter_ro[36] ,
    \slave_data_rdata_to_inter_ro[35] ,
    \slave_data_rdata_to_inter_ro[34] ,
    \slave_data_rdata_to_inter_ro[33] ,
    \slave_data_rdata_to_inter_ro[32] }),
    .wmask0({\slave_data_be_to_inter[7] ,
    \slave_data_be_to_inter[6] ,
    \slave_data_be_to_inter[5] ,
    \slave_data_be_to_inter[4] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 sram_3_i (.csb0(\slave_data_req_to_inter[2] ),
    .csb1(\slave_data_req_to_inter_ro[2] ),
    .web0(\slave_data_we_to_inter[2] ),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\slave_data_addr_to_inter[32] ,
    \slave_data_addr_to_inter[31] ,
    \slave_data_addr_to_inter[30] ,
    \slave_data_addr_to_inter[29] ,
    \slave_data_addr_to_inter[28] ,
    \slave_data_addr_to_inter[27] ,
    \slave_data_addr_to_inter[26] ,
    \slave_data_addr_to_inter[25] ,
    \slave_data_addr_to_inter[24] }),
    .addr1({\slave_data_addr_to_inter_ro[32] ,
    \slave_data_addr_to_inter_ro[31] ,
    \slave_data_addr_to_inter_ro[30] ,
    \slave_data_addr_to_inter_ro[29] ,
    \slave_data_addr_to_inter_ro[28] ,
    \slave_data_addr_to_inter_ro[27] ,
    \slave_data_addr_to_inter_ro[26] ,
    \slave_data_addr_to_inter_ro[25] ,
    \slave_data_addr_to_inter_ro[24] }),
    .din0({\slave_data_wdata_to_inter[95] ,
    \slave_data_wdata_to_inter[94] ,
    \slave_data_wdata_to_inter[93] ,
    \slave_data_wdata_to_inter[92] ,
    \slave_data_wdata_to_inter[91] ,
    \slave_data_wdata_to_inter[90] ,
    \slave_data_wdata_to_inter[89] ,
    \slave_data_wdata_to_inter[88] ,
    \slave_data_wdata_to_inter[87] ,
    \slave_data_wdata_to_inter[86] ,
    \slave_data_wdata_to_inter[85] ,
    \slave_data_wdata_to_inter[84] ,
    \slave_data_wdata_to_inter[83] ,
    \slave_data_wdata_to_inter[82] ,
    \slave_data_wdata_to_inter[81] ,
    \slave_data_wdata_to_inter[80] ,
    \slave_data_wdata_to_inter[79] ,
    \slave_data_wdata_to_inter[78] ,
    \slave_data_wdata_to_inter[77] ,
    \slave_data_wdata_to_inter[76] ,
    \slave_data_wdata_to_inter[75] ,
    \slave_data_wdata_to_inter[74] ,
    \slave_data_wdata_to_inter[73] ,
    \slave_data_wdata_to_inter[72] ,
    \slave_data_wdata_to_inter[71] ,
    \slave_data_wdata_to_inter[70] ,
    \slave_data_wdata_to_inter[69] ,
    \slave_data_wdata_to_inter[68] ,
    \slave_data_wdata_to_inter[67] ,
    \slave_data_wdata_to_inter[66] ,
    \slave_data_wdata_to_inter[65] ,
    \slave_data_wdata_to_inter[64] }),
    .dout0({\slave_data_rdata_to_inter[95] ,
    \slave_data_rdata_to_inter[94] ,
    \slave_data_rdata_to_inter[93] ,
    \slave_data_rdata_to_inter[92] ,
    \slave_data_rdata_to_inter[91] ,
    \slave_data_rdata_to_inter[90] ,
    \slave_data_rdata_to_inter[89] ,
    \slave_data_rdata_to_inter[88] ,
    \slave_data_rdata_to_inter[87] ,
    \slave_data_rdata_to_inter[86] ,
    \slave_data_rdata_to_inter[85] ,
    \slave_data_rdata_to_inter[84] ,
    \slave_data_rdata_to_inter[83] ,
    \slave_data_rdata_to_inter[82] ,
    \slave_data_rdata_to_inter[81] ,
    \slave_data_rdata_to_inter[80] ,
    \slave_data_rdata_to_inter[79] ,
    \slave_data_rdata_to_inter[78] ,
    \slave_data_rdata_to_inter[77] ,
    \slave_data_rdata_to_inter[76] ,
    \slave_data_rdata_to_inter[75] ,
    \slave_data_rdata_to_inter[74] ,
    \slave_data_rdata_to_inter[73] ,
    \slave_data_rdata_to_inter[72] ,
    \slave_data_rdata_to_inter[71] ,
    \slave_data_rdata_to_inter[70] ,
    \slave_data_rdata_to_inter[69] ,
    \slave_data_rdata_to_inter[68] ,
    \slave_data_rdata_to_inter[67] ,
    \slave_data_rdata_to_inter[66] ,
    \slave_data_rdata_to_inter[65] ,
    \slave_data_rdata_to_inter[64] }),
    .dout1({\slave_data_rdata_to_inter_ro[95] ,
    \slave_data_rdata_to_inter_ro[94] ,
    \slave_data_rdata_to_inter_ro[93] ,
    \slave_data_rdata_to_inter_ro[92] ,
    \slave_data_rdata_to_inter_ro[91] ,
    \slave_data_rdata_to_inter_ro[90] ,
    \slave_data_rdata_to_inter_ro[89] ,
    \slave_data_rdata_to_inter_ro[88] ,
    \slave_data_rdata_to_inter_ro[87] ,
    \slave_data_rdata_to_inter_ro[86] ,
    \slave_data_rdata_to_inter_ro[85] ,
    \slave_data_rdata_to_inter_ro[84] ,
    \slave_data_rdata_to_inter_ro[83] ,
    \slave_data_rdata_to_inter_ro[82] ,
    \slave_data_rdata_to_inter_ro[81] ,
    \slave_data_rdata_to_inter_ro[80] ,
    \slave_data_rdata_to_inter_ro[79] ,
    \slave_data_rdata_to_inter_ro[78] ,
    \slave_data_rdata_to_inter_ro[77] ,
    \slave_data_rdata_to_inter_ro[76] ,
    \slave_data_rdata_to_inter_ro[75] ,
    \slave_data_rdata_to_inter_ro[74] ,
    \slave_data_rdata_to_inter_ro[73] ,
    \slave_data_rdata_to_inter_ro[72] ,
    \slave_data_rdata_to_inter_ro[71] ,
    \slave_data_rdata_to_inter_ro[70] ,
    \slave_data_rdata_to_inter_ro[69] ,
    \slave_data_rdata_to_inter_ro[68] ,
    \slave_data_rdata_to_inter_ro[67] ,
    \slave_data_rdata_to_inter_ro[66] ,
    \slave_data_rdata_to_inter_ro[65] ,
    \slave_data_rdata_to_inter_ro[64] }),
    .wmask0({\slave_data_be_to_inter[11] ,
    \slave_data_be_to_inter[10] ,
    \slave_data_be_to_inter[9] ,
    \slave_data_be_to_inter[8] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 sram_4_i (.csb0(\slave_data_req_to_inter[3] ),
    .csb1(\slave_data_req_to_inter_ro[3] ),
    .web0(\slave_data_we_to_inter[3] ),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\slave_data_addr_to_inter[43] ,
    \slave_data_addr_to_inter[42] ,
    \slave_data_addr_to_inter[41] ,
    \slave_data_addr_to_inter[40] ,
    \slave_data_addr_to_inter[39] ,
    \slave_data_addr_to_inter[38] ,
    \slave_data_addr_to_inter[37] ,
    \slave_data_addr_to_inter[36] ,
    \slave_data_addr_to_inter[35] }),
    .addr1({\slave_data_addr_to_inter_ro[43] ,
    \slave_data_addr_to_inter_ro[42] ,
    \slave_data_addr_to_inter_ro[41] ,
    \slave_data_addr_to_inter_ro[40] ,
    \slave_data_addr_to_inter_ro[39] ,
    \slave_data_addr_to_inter_ro[38] ,
    \slave_data_addr_to_inter_ro[37] ,
    \slave_data_addr_to_inter_ro[36] ,
    \slave_data_addr_to_inter_ro[35] }),
    .din0({\slave_data_wdata_to_inter[127] ,
    \slave_data_wdata_to_inter[126] ,
    \slave_data_wdata_to_inter[125] ,
    \slave_data_wdata_to_inter[124] ,
    \slave_data_wdata_to_inter[123] ,
    \slave_data_wdata_to_inter[122] ,
    \slave_data_wdata_to_inter[121] ,
    \slave_data_wdata_to_inter[120] ,
    \slave_data_wdata_to_inter[119] ,
    \slave_data_wdata_to_inter[118] ,
    \slave_data_wdata_to_inter[117] ,
    \slave_data_wdata_to_inter[116] ,
    \slave_data_wdata_to_inter[115] ,
    \slave_data_wdata_to_inter[114] ,
    \slave_data_wdata_to_inter[113] ,
    \slave_data_wdata_to_inter[112] ,
    \slave_data_wdata_to_inter[111] ,
    \slave_data_wdata_to_inter[110] ,
    \slave_data_wdata_to_inter[109] ,
    \slave_data_wdata_to_inter[108] ,
    \slave_data_wdata_to_inter[107] ,
    \slave_data_wdata_to_inter[106] ,
    \slave_data_wdata_to_inter[105] ,
    \slave_data_wdata_to_inter[104] ,
    \slave_data_wdata_to_inter[103] ,
    \slave_data_wdata_to_inter[102] ,
    \slave_data_wdata_to_inter[101] ,
    \slave_data_wdata_to_inter[100] ,
    \slave_data_wdata_to_inter[99] ,
    \slave_data_wdata_to_inter[98] ,
    \slave_data_wdata_to_inter[97] ,
    \slave_data_wdata_to_inter[96] }),
    .dout0({\slave_data_rdata_to_inter[127] ,
    \slave_data_rdata_to_inter[126] ,
    \slave_data_rdata_to_inter[125] ,
    \slave_data_rdata_to_inter[124] ,
    \slave_data_rdata_to_inter[123] ,
    \slave_data_rdata_to_inter[122] ,
    \slave_data_rdata_to_inter[121] ,
    \slave_data_rdata_to_inter[120] ,
    \slave_data_rdata_to_inter[119] ,
    \slave_data_rdata_to_inter[118] ,
    \slave_data_rdata_to_inter[117] ,
    \slave_data_rdata_to_inter[116] ,
    \slave_data_rdata_to_inter[115] ,
    \slave_data_rdata_to_inter[114] ,
    \slave_data_rdata_to_inter[113] ,
    \slave_data_rdata_to_inter[112] ,
    \slave_data_rdata_to_inter[111] ,
    \slave_data_rdata_to_inter[110] ,
    \slave_data_rdata_to_inter[109] ,
    \slave_data_rdata_to_inter[108] ,
    \slave_data_rdata_to_inter[107] ,
    \slave_data_rdata_to_inter[106] ,
    \slave_data_rdata_to_inter[105] ,
    \slave_data_rdata_to_inter[104] ,
    \slave_data_rdata_to_inter[103] ,
    \slave_data_rdata_to_inter[102] ,
    \slave_data_rdata_to_inter[101] ,
    \slave_data_rdata_to_inter[100] ,
    \slave_data_rdata_to_inter[99] ,
    \slave_data_rdata_to_inter[98] ,
    \slave_data_rdata_to_inter[97] ,
    \slave_data_rdata_to_inter[96] }),
    .dout1({\slave_data_rdata_to_inter_ro[127] ,
    \slave_data_rdata_to_inter_ro[126] ,
    \slave_data_rdata_to_inter_ro[125] ,
    \slave_data_rdata_to_inter_ro[124] ,
    \slave_data_rdata_to_inter_ro[123] ,
    \slave_data_rdata_to_inter_ro[122] ,
    \slave_data_rdata_to_inter_ro[121] ,
    \slave_data_rdata_to_inter_ro[120] ,
    \slave_data_rdata_to_inter_ro[119] ,
    \slave_data_rdata_to_inter_ro[118] ,
    \slave_data_rdata_to_inter_ro[117] ,
    \slave_data_rdata_to_inter_ro[116] ,
    \slave_data_rdata_to_inter_ro[115] ,
    \slave_data_rdata_to_inter_ro[114] ,
    \slave_data_rdata_to_inter_ro[113] ,
    \slave_data_rdata_to_inter_ro[112] ,
    \slave_data_rdata_to_inter_ro[111] ,
    \slave_data_rdata_to_inter_ro[110] ,
    \slave_data_rdata_to_inter_ro[109] ,
    \slave_data_rdata_to_inter_ro[108] ,
    \slave_data_rdata_to_inter_ro[107] ,
    \slave_data_rdata_to_inter_ro[106] ,
    \slave_data_rdata_to_inter_ro[105] ,
    \slave_data_rdata_to_inter_ro[104] ,
    \slave_data_rdata_to_inter_ro[103] ,
    \slave_data_rdata_to_inter_ro[102] ,
    \slave_data_rdata_to_inter_ro[101] ,
    \slave_data_rdata_to_inter_ro[100] ,
    \slave_data_rdata_to_inter_ro[99] ,
    \slave_data_rdata_to_inter_ro[98] ,
    \slave_data_rdata_to_inter_ro[97] ,
    \slave_data_rdata_to_inter_ro[96] }),
    .wmask0({\slave_data_be_to_inter[15] ,
    \slave_data_be_to_inter[14] ,
    \slave_data_be_to_inter[13] ,
    \slave_data_be_to_inter[12] }));
endmodule
