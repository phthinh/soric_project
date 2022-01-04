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

 wire one_;
 wire zero_;
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
 wire net1;
 wire net10;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;
 wire net109;
 wire net11;
 wire net110;
 wire net111;
 wire net112;
 wire net113;
 wire net114;
 wire net115;
 wire net116;
 wire net117;
 wire net118;
 wire net119;
 wire net12;
 wire net120;
 wire net121;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire net129;
 wire net13;
 wire net130;
 wire net131;
 wire net132;
 wire net133;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire net139;
 wire net14;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire net149;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net5;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net6;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net7;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net8;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net9;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
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
    .debug_req_i(net82),
    .fetch_enable_i(net80),
    .instr_gnt_i(\master_data_gnt_to_inter_ro[0] ),
    .instr_req_o(\master_data_req_to_inter_ro[0] ),
    .instr_rvalid_i(\master_data_rvalid_to_inter_ro[0] ),
    .rst_i(net1),
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
    .data_gnt_i(net74),
    .data_req_o(\master_data_req_to_inter[1] ),
    .data_rvalid_i(net8),
    .data_we_o(\master_data_we_to_inter[1] ),
    .debug_req_i(net79),
    .fetch_enable_i(net78),
    .instr_gnt_i(net73),
    .instr_req_o(\master_data_req_to_inter_ro[1] ),
    .instr_rvalid_i(net7),
    .rst_i(net1),
    .data_addr_o({_64_,
    _63_,
    _62_,
    _61_,
    _60_,
    _59_,
    _58_,
    _57_,
    _73_,
    _72_,
    _71_,
    _70_,
    _69_,
    _68_,
    _67_,
    _66_,
    _65_,
    _56_,
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
    .data_rdata_i({net41,
    net42,
    net43,
    net44,
    net45,
    net46,
    net47,
    net48,
    net49,
    net50,
    net51,
    net52,
    net53,
    net54,
    net55,
    net56,
    net57,
    net58,
    net59,
    net60,
    net61,
    net62,
    net63,
    net64,
    net65,
    net66,
    net67,
    net68,
    net69,
    net70,
    net71,
    net72}),
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
    .instr_addr_o({_46_,
    _45_,
    _44_,
    _43_,
    _42_,
    _41_,
    _40_,
    _39_,
    _38_,
    _55_,
    _54_,
    _53_,
    _52_,
    _51_,
    _50_,
    _49_,
    _48_,
    _47_,
    _37_,
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
    .instr_rdata_i({net9,
    net10,
    net11,
    net12,
    net13,
    net14,
    net15,
    net16,
    net17,
    net18,
    net19,
    net20,
    net21,
    net22,
    net23,
    net24,
    net25,
    net26,
    net27,
    net28,
    net29,
    net30,
    net31,
    net32,
    net33,
    net34,
    net35,
    net36,
    net37,
    net38,
    net39,
    net40}));
 sky130_fd_sc_hd__buf_12 repeater1 (.A(net2),
    .X(net1));
 sky130_fd_sc_hd__buf_12 repeater10 (.A(\master_data_rdata_to_inter_ro[62] ),
    .X(net10));
 sky130_fd_sc_hd__buf_12 repeater100 (.A(\master_data_wdata_to_inter[40] ),
    .X(net100));
 sky130_fd_sc_hd__buf_12 repeater101 (.A(\master_data_wdata_to_inter[39] ),
    .X(net101));
 sky130_fd_sc_hd__buf_12 repeater102 (.A(\master_data_wdata_to_inter[38] ),
    .X(net102));
 sky130_fd_sc_hd__buf_12 repeater103 (.A(\master_data_wdata_to_inter[37] ),
    .X(net103));
 sky130_fd_sc_hd__buf_12 repeater104 (.A(\master_data_wdata_to_inter[36] ),
    .X(net104));
 sky130_fd_sc_hd__buf_12 repeater105 (.A(\master_data_wdata_to_inter[35] ),
    .X(net105));
 sky130_fd_sc_hd__buf_12 repeater106 (.A(\master_data_wdata_to_inter[63] ),
    .X(net106));
 sky130_fd_sc_hd__buf_12 repeater107 (.A(\master_data_wdata_to_inter[62] ),
    .X(net107));
 sky130_fd_sc_hd__buf_12 repeater108 (.A(\master_data_wdata_to_inter[34] ),
    .X(net108));
 sky130_fd_sc_hd__buf_12 repeater109 (.A(\master_data_wdata_to_inter[61] ),
    .X(net109));
 sky130_fd_sc_hd__buf_12 repeater11 (.A(\master_data_rdata_to_inter_ro[61] ),
    .X(net11));
 sky130_fd_sc_hd__buf_12 repeater110 (.A(\master_data_wdata_to_inter[60] ),
    .X(net110));
 sky130_fd_sc_hd__buf_12 repeater111 (.A(\master_data_wdata_to_inter[59] ),
    .X(net111));
 sky130_fd_sc_hd__buf_12 repeater112 (.A(\master_data_wdata_to_inter[58] ),
    .X(net112));
 sky130_fd_sc_hd__buf_12 repeater113 (.A(\master_data_wdata_to_inter[57] ),
    .X(net113));
 sky130_fd_sc_hd__buf_12 repeater114 (.A(\master_data_wdata_to_inter[56] ),
    .X(net114));
 sky130_fd_sc_hd__buf_12 repeater115 (.A(\master_data_wdata_to_inter[55] ),
    .X(net115));
 sky130_fd_sc_hd__buf_12 repeater116 (.A(\master_data_wdata_to_inter[54] ),
    .X(net116));
 sky130_fd_sc_hd__buf_12 repeater117 (.A(\master_data_wdata_to_inter[53] ),
    .X(net117));
 sky130_fd_sc_hd__buf_12 repeater118 (.A(\master_data_wdata_to_inter[52] ),
    .X(net118));
 sky130_fd_sc_hd__buf_12 repeater119 (.A(\master_data_wdata_to_inter[33] ),
    .X(net119));
 sky130_fd_sc_hd__buf_12 repeater12 (.A(\master_data_rdata_to_inter_ro[60] ),
    .X(net12));
 sky130_fd_sc_hd__buf_12 repeater120 (.A(\master_data_wdata_to_inter[51] ),
    .X(net120));
 sky130_fd_sc_hd__buf_12 repeater121 (.A(\master_data_wdata_to_inter[50] ),
    .X(net121));
 sky130_fd_sc_hd__buf_12 repeater122 (.A(\master_data_wdata_to_inter[49] ),
    .X(net122));
 sky130_fd_sc_hd__buf_12 repeater123 (.A(\master_data_wdata_to_inter[48] ),
    .X(net123));
 sky130_fd_sc_hd__buf_12 repeater124 (.A(\master_data_wdata_to_inter[47] ),
    .X(net124));
 sky130_fd_sc_hd__buf_12 repeater125 (.A(\master_data_wdata_to_inter[46] ),
    .X(net125));
 sky130_fd_sc_hd__buf_12 repeater126 (.A(\master_data_wdata_to_inter[45] ),
    .X(net126));
 sky130_fd_sc_hd__buf_12 repeater127 (.A(\master_data_wdata_to_inter[44] ),
    .X(net127));
 sky130_fd_sc_hd__buf_12 repeater128 (.A(\master_data_wdata_to_inter[43] ),
    .X(net128));
 sky130_fd_sc_hd__buf_12 repeater129 (.A(\master_data_wdata_to_inter[42] ),
    .X(net129));
 sky130_fd_sc_hd__buf_12 repeater13 (.A(\master_data_rdata_to_inter_ro[59] ),
    .X(net13));
 sky130_fd_sc_hd__buf_12 repeater130 (.A(\master_data_wdata_to_inter[32] ),
    .X(net130));
 sky130_fd_sc_hd__buf_12 repeater131 (.A(\master_data_req_to_inter[1] ),
    .X(net131));
 sky130_fd_sc_hd__buf_12 repeater132 (.A(\master_data_be_to_inter[7] ),
    .X(net132));
 sky130_fd_sc_hd__buf_12 repeater133 (.A(\master_data_be_to_inter[6] ),
    .X(net133));
 sky130_fd_sc_hd__buf_12 repeater134 (.A(\master_data_be_to_inter[5] ),
    .X(net134));
 sky130_fd_sc_hd__buf_12 repeater135 (.A(\master_data_be_to_inter[4] ),
    .X(net135));
 sky130_fd_sc_hd__buf_12 repeater136 (.A(\master_data_addr_to_inter[23] ),
    .X(net136));
 sky130_fd_sc_hd__buf_12 repeater137 (.A(\master_data_addr_to_inter[22] ),
    .X(net137));
 sky130_fd_sc_hd__buf_12 repeater138 (.A(\master_data_addr_to_inter[21] ),
    .X(net138));
 sky130_fd_sc_hd__buf_12 repeater139 (.A(\master_data_addr_to_inter[20] ),
    .X(net139));
 sky130_fd_sc_hd__buf_12 repeater14 (.A(\master_data_rdata_to_inter_ro[58] ),
    .X(net14));
 sky130_fd_sc_hd__buf_12 repeater140 (.A(\master_data_addr_to_inter[19] ),
    .X(net140));
 sky130_fd_sc_hd__buf_12 repeater141 (.A(\master_data_addr_to_inter[18] ),
    .X(net141));
 sky130_fd_sc_hd__buf_12 repeater142 (.A(\master_data_addr_to_inter[17] ),
    .X(net142));
 sky130_fd_sc_hd__buf_12 repeater143 (.A(\master_data_addr_to_inter[16] ),
    .X(net143));
 sky130_fd_sc_hd__buf_12 repeater144 (.A(\master_data_addr_to_inter[15] ),
    .X(net144));
 sky130_fd_sc_hd__buf_12 repeater145 (.A(\master_data_addr_to_inter[27] ),
    .X(net145));
 sky130_fd_sc_hd__buf_12 repeater146 (.A(\master_data_addr_to_inter[26] ),
    .X(net146));
 sky130_fd_sc_hd__buf_12 repeater147 (.A(\master_data_addr_to_inter[25] ),
    .X(net147));
 sky130_fd_sc_hd__buf_12 repeater148 (.A(\master_data_addr_to_inter[24] ),
    .X(net148));
 sky130_fd_sc_hd__buf_12 repeater149 (.A(\master_data_addr_to_inter[14] ),
    .X(net149));
 sky130_fd_sc_hd__buf_12 repeater15 (.A(\master_data_rdata_to_inter_ro[57] ),
    .X(net15));
 sky130_fd_sc_hd__buf_12 repeater16 (.A(\master_data_rdata_to_inter_ro[56] ),
    .X(net16));
 sky130_fd_sc_hd__buf_12 repeater17 (.A(\master_data_rdata_to_inter_ro[55] ),
    .X(net17));
 sky130_fd_sc_hd__buf_12 repeater18 (.A(\master_data_rdata_to_inter_ro[54] ),
    .X(net18));
 sky130_fd_sc_hd__buf_12 repeater19 (.A(\master_data_rdata_to_inter_ro[53] ),
    .X(net19));
 sky130_fd_sc_hd__buf_12 repeater2 (.A(net3),
    .X(net2));
 sky130_fd_sc_hd__buf_12 repeater20 (.A(\master_data_rdata_to_inter_ro[52] ),
    .X(net20));
 sky130_fd_sc_hd__buf_12 repeater21 (.A(\master_data_rdata_to_inter_ro[51] ),
    .X(net21));
 sky130_fd_sc_hd__buf_12 repeater22 (.A(\master_data_rdata_to_inter_ro[50] ),
    .X(net22));
 sky130_fd_sc_hd__buf_12 repeater23 (.A(\master_data_rdata_to_inter_ro[49] ),
    .X(net23));
 sky130_fd_sc_hd__buf_12 repeater24 (.A(\master_data_rdata_to_inter_ro[48] ),
    .X(net24));
 sky130_fd_sc_hd__buf_12 repeater25 (.A(\master_data_rdata_to_inter_ro[47] ),
    .X(net25));
 sky130_fd_sc_hd__buf_12 repeater26 (.A(\master_data_rdata_to_inter_ro[46] ),
    .X(net26));
 sky130_fd_sc_hd__buf_12 repeater27 (.A(\master_data_rdata_to_inter_ro[45] ),
    .X(net27));
 sky130_fd_sc_hd__buf_12 repeater28 (.A(\master_data_rdata_to_inter_ro[44] ),
    .X(net28));
 sky130_fd_sc_hd__buf_12 repeater29 (.A(\master_data_rdata_to_inter_ro[43] ),
    .X(net29));
 sky130_fd_sc_hd__buf_12 repeater3 (.A(net4),
    .X(net3));
 sky130_fd_sc_hd__buf_12 repeater30 (.A(\master_data_rdata_to_inter_ro[42] ),
    .X(net30));
 sky130_fd_sc_hd__buf_12 repeater31 (.A(\master_data_rdata_to_inter_ro[41] ),
    .X(net31));
 sky130_fd_sc_hd__buf_12 repeater32 (.A(\master_data_rdata_to_inter_ro[40] ),
    .X(net32));
 sky130_fd_sc_hd__buf_12 repeater33 (.A(\master_data_rdata_to_inter_ro[39] ),
    .X(net33));
 sky130_fd_sc_hd__buf_12 repeater34 (.A(\master_data_rdata_to_inter_ro[38] ),
    .X(net34));
 sky130_fd_sc_hd__buf_12 repeater35 (.A(\master_data_rdata_to_inter_ro[37] ),
    .X(net35));
 sky130_fd_sc_hd__buf_12 repeater36 (.A(\master_data_rdata_to_inter_ro[36] ),
    .X(net36));
 sky130_fd_sc_hd__buf_12 repeater37 (.A(\master_data_rdata_to_inter_ro[35] ),
    .X(net37));
 sky130_fd_sc_hd__buf_12 repeater38 (.A(\master_data_rdata_to_inter_ro[34] ),
    .X(net38));
 sky130_fd_sc_hd__buf_12 repeater39 (.A(\master_data_rdata_to_inter_ro[33] ),
    .X(net39));
 sky130_fd_sc_hd__buf_12 repeater4 (.A(wb_rst_i),
    .X(net4));
 sky130_fd_sc_hd__buf_12 repeater40 (.A(\master_data_rdata_to_inter_ro[32] ),
    .X(net40));
 sky130_fd_sc_hd__buf_12 repeater41 (.A(\master_data_rdata_to_inter[63] ),
    .X(net41));
 sky130_fd_sc_hd__buf_12 repeater42 (.A(\master_data_rdata_to_inter[62] ),
    .X(net42));
 sky130_fd_sc_hd__buf_12 repeater43 (.A(\master_data_rdata_to_inter[61] ),
    .X(net43));
 sky130_fd_sc_hd__buf_12 repeater44 (.A(\master_data_rdata_to_inter[60] ),
    .X(net44));
 sky130_fd_sc_hd__buf_12 repeater45 (.A(\master_data_rdata_to_inter[59] ),
    .X(net45));
 sky130_fd_sc_hd__buf_12 repeater46 (.A(\master_data_rdata_to_inter[58] ),
    .X(net46));
 sky130_fd_sc_hd__buf_12 repeater47 (.A(\master_data_rdata_to_inter[57] ),
    .X(net47));
 sky130_fd_sc_hd__buf_12 repeater48 (.A(\master_data_rdata_to_inter[56] ),
    .X(net48));
 sky130_fd_sc_hd__buf_12 repeater49 (.A(\master_data_rdata_to_inter[55] ),
    .X(net49));
 sky130_fd_sc_hd__buf_2 repeater5 (.A(net5),
    .X(io_out[11]));
 sky130_fd_sc_hd__buf_12 repeater50 (.A(\master_data_rdata_to_inter[54] ),
    .X(net50));
 sky130_fd_sc_hd__buf_12 repeater51 (.A(\master_data_rdata_to_inter[53] ),
    .X(net51));
 sky130_fd_sc_hd__buf_12 repeater52 (.A(\master_data_rdata_to_inter[52] ),
    .X(net52));
 sky130_fd_sc_hd__buf_12 repeater53 (.A(\master_data_rdata_to_inter[51] ),
    .X(net53));
 sky130_fd_sc_hd__buf_12 repeater54 (.A(\master_data_rdata_to_inter[50] ),
    .X(net54));
 sky130_fd_sc_hd__buf_12 repeater55 (.A(\master_data_rdata_to_inter[49] ),
    .X(net55));
 sky130_fd_sc_hd__buf_12 repeater56 (.A(\master_data_rdata_to_inter[48] ),
    .X(net56));
 sky130_fd_sc_hd__buf_12 repeater57 (.A(\master_data_rdata_to_inter[47] ),
    .X(net57));
 sky130_fd_sc_hd__buf_12 repeater58 (.A(\master_data_rdata_to_inter[46] ),
    .X(net58));
 sky130_fd_sc_hd__buf_12 repeater59 (.A(\master_data_rdata_to_inter[45] ),
    .X(net59));
 sky130_fd_sc_hd__buf_2 repeater6 (.A(net6),
    .X(io_out[10]));
 sky130_fd_sc_hd__buf_12 repeater60 (.A(\master_data_rdata_to_inter[44] ),
    .X(net60));
 sky130_fd_sc_hd__buf_12 repeater61 (.A(\master_data_rdata_to_inter[43] ),
    .X(net61));
 sky130_fd_sc_hd__buf_12 repeater62 (.A(\master_data_rdata_to_inter[42] ),
    .X(net62));
 sky130_fd_sc_hd__buf_12 repeater63 (.A(\master_data_rdata_to_inter[41] ),
    .X(net63));
 sky130_fd_sc_hd__buf_12 repeater64 (.A(\master_data_rdata_to_inter[40] ),
    .X(net64));
 sky130_fd_sc_hd__buf_12 repeater65 (.A(\master_data_rdata_to_inter[39] ),
    .X(net65));
 sky130_fd_sc_hd__buf_12 repeater66 (.A(\master_data_rdata_to_inter[38] ),
    .X(net66));
 sky130_fd_sc_hd__buf_12 repeater67 (.A(\master_data_rdata_to_inter[37] ),
    .X(net67));
 sky130_fd_sc_hd__buf_12 repeater68 (.A(\master_data_rdata_to_inter[36] ),
    .X(net68));
 sky130_fd_sc_hd__buf_12 repeater69 (.A(\master_data_rdata_to_inter[35] ),
    .X(net69));
 sky130_fd_sc_hd__buf_12 repeater7 (.A(\master_data_rvalid_to_inter_ro[1] ),
    .X(net7));
 sky130_fd_sc_hd__buf_12 repeater70 (.A(\master_data_rdata_to_inter[34] ),
    .X(net70));
 sky130_fd_sc_hd__buf_12 repeater71 (.A(\master_data_rdata_to_inter[33] ),
    .X(net71));
 sky130_fd_sc_hd__buf_12 repeater72 (.A(\master_data_rdata_to_inter[32] ),
    .X(net72));
 sky130_fd_sc_hd__buf_12 repeater73 (.A(\master_data_gnt_to_inter_ro[1] ),
    .X(net73));
 sky130_fd_sc_hd__buf_12 repeater74 (.A(\master_data_gnt_to_inter[1] ),
    .X(net74));
 sky130_fd_sc_hd__buf_2 repeater75 (.A(net75),
    .X(io_out[12]));
 sky130_fd_sc_hd__buf_12 repeater76 (.A(io_in[9]),
    .X(net76));
 sky130_fd_sc_hd__buf_12 repeater77 (.A(io_in[8]),
    .X(net77));
 sky130_fd_sc_hd__buf_12 repeater78 (.A(io_in[7]),
    .X(net78));
 sky130_fd_sc_hd__buf_12 repeater79 (.A(io_in[6]),
    .X(net79));
 sky130_fd_sc_hd__buf_12 repeater8 (.A(\master_data_rvalid_to_inter[1] ),
    .X(net8));
 sky130_fd_sc_hd__buf_12 repeater80 (.A(net81),
    .X(net80));
 sky130_fd_sc_hd__buf_12 repeater81 (.A(io_in[5]),
    .X(net81));
 sky130_fd_sc_hd__buf_12 repeater82 (.A(net83),
    .X(net82));
 sky130_fd_sc_hd__buf_12 repeater83 (.A(io_in[4]),
    .X(net83));
 sky130_fd_sc_hd__buf_12 repeater84 (.A(\master_data_req_to_inter_ro[1] ),
    .X(net84));
 sky130_fd_sc_hd__buf_12 repeater85 (.A(\master_data_addr_to_inter_ro[22] ),
    .X(net85));
 sky130_fd_sc_hd__buf_12 repeater86 (.A(\master_data_addr_to_inter_ro[21] ),
    .X(net86));
 sky130_fd_sc_hd__buf_12 repeater87 (.A(\master_data_addr_to_inter_ro[20] ),
    .X(net87));
 sky130_fd_sc_hd__buf_12 repeater88 (.A(\master_data_addr_to_inter_ro[19] ),
    .X(net88));
 sky130_fd_sc_hd__buf_12 repeater89 (.A(\master_data_addr_to_inter_ro[18] ),
    .X(net89));
 sky130_fd_sc_hd__buf_12 repeater9 (.A(\master_data_rdata_to_inter_ro[63] ),
    .X(net9));
 sky130_fd_sc_hd__buf_12 repeater90 (.A(\master_data_addr_to_inter_ro[17] ),
    .X(net90));
 sky130_fd_sc_hd__buf_12 repeater91 (.A(\master_data_addr_to_inter_ro[16] ),
    .X(net91));
 sky130_fd_sc_hd__buf_12 repeater92 (.A(\master_data_addr_to_inter_ro[15] ),
    .X(net92));
 sky130_fd_sc_hd__buf_12 repeater93 (.A(\master_data_addr_to_inter_ro[14] ),
    .X(net93));
 sky130_fd_sc_hd__buf_12 repeater94 (.A(\master_data_addr_to_inter_ro[25] ),
    .X(net94));
 sky130_fd_sc_hd__buf_12 repeater95 (.A(\master_data_addr_to_inter_ro[24] ),
    .X(net95));
 sky130_fd_sc_hd__buf_12 repeater96 (.A(\master_data_addr_to_inter_ro[23] ),
    .X(net96));
 sky130_fd_sc_hd__buf_12 repeater97 (.A(\master_data_addr_to_inter_ro[13] ),
    .X(net97));
 sky130_fd_sc_hd__buf_12 repeater98 (.A(\master_data_we_to_inter[1] ),
    .X(net98));
 sky130_fd_sc_hd__buf_12 repeater99 (.A(\master_data_wdata_to_inter[41] ),
    .X(net99));
 soric_soc soric_soc_i (.error_uart_to_mem(net75),
    .rxd_uart(net77),
    .rxd_uart_to_mem(net76),
    .txd_uart(net6),
    .txd_uart_to_mem(net5),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(net3),
    .wbs_ack_o(wbs_ack_o),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .master_data_addr_to_inter_i({net145,
    net146,
    net147,
    net148,
    net136,
    net137,
    net138,
    net139,
    net140,
    net141,
    net142,
    net143,
    net144,
    net149,
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
    .master_data_addr_to_inter_ro_i({net94,
    net95,
    net96,
    net85,
    net86,
    net87,
    net88,
    net89,
    net90,
    net91,
    net92,
    net93,
    net97,
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
    .master_data_be_to_inter_i({net132,
    net133,
    net134,
    net135,
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
    .master_data_req_to_inter_i({net131,
    \master_data_req_to_inter[0] }),
    .master_data_req_to_inter_ro_i({net84,
    \master_data_req_to_inter_ro[0] }),
    .master_data_rvalid_to_inter_o({\master_data_rvalid_to_inter[1] ,
    \master_data_rvalid_to_inter[0] }),
    .master_data_rvalid_to_inter_ro_o({\master_data_rvalid_to_inter_ro[1] ,
    \master_data_rvalid_to_inter_ro[0] }),
    .master_data_wdata_to_inter_i({net106,
    net107,
    net109,
    net110,
    net111,
    net112,
    net113,
    net114,
    net115,
    net116,
    net117,
    net118,
    net120,
    net121,
    net122,
    net123,
    net124,
    net125,
    net126,
    net127,
    net128,
    net129,
    net99,
    net100,
    net101,
    net102,
    net103,
    net104,
    net105,
    net108,
    net119,
    net130,
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
    .master_data_we_to_inter_i({net98,
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
 assign io_oeb[0] = one_;
 assign io_oeb[10] = zero_;
 assign io_oeb[11] = zero_;
 assign io_oeb[12] = zero_;
 assign io_oeb[13] = zero_;
 assign io_oeb[14] = zero_;
 assign io_oeb[15] = zero_;
 assign io_oeb[16] = zero_;
 assign io_oeb[17] = zero_;
 assign io_oeb[18] = zero_;
 assign io_oeb[19] = zero_;
 assign io_oeb[1] = one_;
 assign io_oeb[20] = zero_;
 assign io_oeb[21] = zero_;
 assign io_oeb[22] = zero_;
 assign io_oeb[23] = zero_;
 assign io_oeb[24] = zero_;
 assign io_oeb[25] = zero_;
 assign io_oeb[26] = zero_;
 assign io_oeb[27] = zero_;
 assign io_oeb[28] = zero_;
 assign io_oeb[29] = zero_;
 assign io_oeb[2] = one_;
 assign io_oeb[30] = zero_;
 assign io_oeb[31] = zero_;
 assign io_oeb[32] = zero_;
 assign io_oeb[33] = zero_;
 assign io_oeb[34] = zero_;
 assign io_oeb[35] = zero_;
 assign io_oeb[36] = zero_;
 assign io_oeb[37] = zero_;
 assign io_oeb[3] = one_;
 assign io_oeb[4] = one_;
 assign io_oeb[5] = one_;
 assign io_oeb[6] = one_;
 assign io_oeb[7] = one_;
 assign io_oeb[8] = one_;
 assign io_oeb[9] = one_;
 assign io_out[0] = zero_;
 assign io_out[13] = zero_;
 assign io_out[14] = zero_;
 assign io_out[15] = zero_;
 assign io_out[16] = zero_;
 assign io_out[17] = zero_;
 assign io_out[18] = zero_;
 assign io_out[19] = zero_;
 assign io_out[1] = zero_;
 assign io_out[20] = zero_;
 assign io_out[21] = zero_;
 assign io_out[22] = zero_;
 assign io_out[23] = zero_;
 assign io_out[24] = zero_;
 assign io_out[25] = zero_;
 assign io_out[26] = zero_;
 assign io_out[27] = zero_;
 assign io_out[28] = zero_;
 assign io_out[29] = zero_;
 assign io_out[2] = zero_;
 assign io_out[30] = zero_;
 assign io_out[31] = zero_;
 assign io_out[32] = zero_;
 assign io_out[33] = zero_;
 assign io_out[34] = zero_;
 assign io_out[35] = zero_;
 assign io_out[36] = zero_;
 assign io_out[37] = zero_;
 assign io_out[3] = zero_;
 assign io_out[4] = zero_;
 assign io_out[5] = zero_;
 assign io_out[6] = zero_;
 assign io_out[7] = zero_;
 assign io_out[8] = zero_;
 assign io_out[9] = zero_;
 assign la_data_out[0] = zero_;
 assign la_data_out[100] = zero_;
 assign la_data_out[101] = zero_;
 assign la_data_out[102] = zero_;
 assign la_data_out[103] = zero_;
 assign la_data_out[104] = zero_;
 assign la_data_out[105] = zero_;
 assign la_data_out[106] = zero_;
 assign la_data_out[107] = zero_;
 assign la_data_out[108] = zero_;
 assign la_data_out[109] = zero_;
 assign la_data_out[10] = zero_;
 assign la_data_out[110] = zero_;
 assign la_data_out[111] = zero_;
 assign la_data_out[112] = zero_;
 assign la_data_out[113] = zero_;
 assign la_data_out[114] = zero_;
 assign la_data_out[115] = zero_;
 assign la_data_out[116] = zero_;
 assign la_data_out[117] = zero_;
 assign la_data_out[118] = zero_;
 assign la_data_out[119] = zero_;
 assign la_data_out[11] = zero_;
 assign la_data_out[120] = zero_;
 assign la_data_out[121] = zero_;
 assign la_data_out[122] = zero_;
 assign la_data_out[123] = zero_;
 assign la_data_out[124] = zero_;
 assign la_data_out[125] = zero_;
 assign la_data_out[126] = zero_;
 assign la_data_out[127] = zero_;
 assign la_data_out[12] = zero_;
 assign la_data_out[13] = zero_;
 assign la_data_out[14] = zero_;
 assign la_data_out[15] = zero_;
 assign la_data_out[16] = zero_;
 assign la_data_out[17] = zero_;
 assign la_data_out[18] = zero_;
 assign la_data_out[19] = zero_;
 assign la_data_out[1] = zero_;
 assign la_data_out[20] = zero_;
 assign la_data_out[21] = zero_;
 assign la_data_out[22] = zero_;
 assign la_data_out[23] = zero_;
 assign la_data_out[24] = zero_;
 assign la_data_out[25] = zero_;
 assign la_data_out[26] = zero_;
 assign la_data_out[27] = zero_;
 assign la_data_out[28] = zero_;
 assign la_data_out[29] = zero_;
 assign la_data_out[2] = zero_;
 assign la_data_out[30] = zero_;
 assign la_data_out[31] = zero_;
 assign la_data_out[32] = zero_;
 assign la_data_out[33] = zero_;
 assign la_data_out[34] = zero_;
 assign la_data_out[35] = zero_;
 assign la_data_out[36] = zero_;
 assign la_data_out[37] = zero_;
 assign la_data_out[38] = zero_;
 assign la_data_out[39] = zero_;
 assign la_data_out[3] = zero_;
 assign la_data_out[40] = zero_;
 assign la_data_out[41] = zero_;
 assign la_data_out[42] = zero_;
 assign la_data_out[43] = zero_;
 assign la_data_out[44] = zero_;
 assign la_data_out[45] = zero_;
 assign la_data_out[46] = zero_;
 assign la_data_out[47] = zero_;
 assign la_data_out[48] = zero_;
 assign la_data_out[49] = zero_;
 assign la_data_out[4] = zero_;
 assign la_data_out[50] = zero_;
 assign la_data_out[51] = zero_;
 assign la_data_out[52] = zero_;
 assign la_data_out[53] = zero_;
 assign la_data_out[54] = zero_;
 assign la_data_out[55] = zero_;
 assign la_data_out[56] = zero_;
 assign la_data_out[57] = zero_;
 assign la_data_out[58] = zero_;
 assign la_data_out[59] = zero_;
 assign la_data_out[5] = zero_;
 assign la_data_out[60] = zero_;
 assign la_data_out[61] = zero_;
 assign la_data_out[62] = zero_;
 assign la_data_out[63] = zero_;
 assign la_data_out[64] = zero_;
 assign la_data_out[65] = zero_;
 assign la_data_out[66] = zero_;
 assign la_data_out[67] = zero_;
 assign la_data_out[68] = zero_;
 assign la_data_out[69] = zero_;
 assign la_data_out[6] = zero_;
 assign la_data_out[70] = zero_;
 assign la_data_out[71] = zero_;
 assign la_data_out[72] = zero_;
 assign la_data_out[73] = zero_;
 assign la_data_out[74] = zero_;
 assign la_data_out[75] = zero_;
 assign la_data_out[76] = zero_;
 assign la_data_out[77] = zero_;
 assign la_data_out[78] = zero_;
 assign la_data_out[79] = zero_;
 assign la_data_out[7] = zero_;
 assign la_data_out[80] = zero_;
 assign la_data_out[81] = zero_;
 assign la_data_out[82] = zero_;
 assign la_data_out[83] = zero_;
 assign la_data_out[84] = zero_;
 assign la_data_out[85] = zero_;
 assign la_data_out[86] = zero_;
 assign la_data_out[87] = zero_;
 assign la_data_out[88] = zero_;
 assign la_data_out[89] = zero_;
 assign la_data_out[8] = zero_;
 assign la_data_out[90] = zero_;
 assign la_data_out[91] = zero_;
 assign la_data_out[92] = zero_;
 assign la_data_out[93] = zero_;
 assign la_data_out[94] = zero_;
 assign la_data_out[95] = zero_;
 assign la_data_out[96] = zero_;
 assign la_data_out[97] = zero_;
 assign la_data_out[98] = zero_;
 assign la_data_out[99] = zero_;
 assign la_data_out[9] = zero_;
 assign user_irq[0] = zero_;
 assign user_irq[1] = zero_;
 assign user_irq[2] = zero_;
endmodule
