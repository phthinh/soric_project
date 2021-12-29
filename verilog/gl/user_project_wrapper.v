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

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire \mprj.E_OPA[0] ;
 wire \mprj.E_OPA[10] ;
 wire \mprj.E_OPA[11] ;
 wire \mprj.E_OPA[12] ;
 wire \mprj.E_OPA[13] ;
 wire \mprj.E_OPA[14] ;
 wire \mprj.E_OPA[15] ;
 wire \mprj.E_OPA[16] ;
 wire \mprj.E_OPA[17] ;
 wire \mprj.E_OPA[18] ;
 wire \mprj.E_OPA[19] ;
 wire \mprj.E_OPA[1] ;
 wire \mprj.E_OPA[20] ;
 wire \mprj.E_OPA[21] ;
 wire \mprj.E_OPA[22] ;
 wire \mprj.E_OPA[23] ;
 wire \mprj.E_OPA[24] ;
 wire \mprj.E_OPA[25] ;
 wire \mprj.E_OPA[26] ;
 wire \mprj.E_OPA[27] ;
 wire \mprj.E_OPA[28] ;
 wire \mprj.E_OPA[29] ;
 wire \mprj.E_OPA[2] ;
 wire \mprj.E_OPA[30] ;
 wire \mprj.E_OPA[31] ;
 wire \mprj.E_OPA[32] ;
 wire \mprj.E_OPA[33] ;
 wire \mprj.E_OPA[34] ;
 wire \mprj.E_OPA[35] ;
 wire \mprj.E_OPA[3] ;
 wire \mprj.E_OPA[4] ;
 wire \mprj.E_OPA[5] ;
 wire \mprj.E_OPA[6] ;
 wire \mprj.E_OPA[7] ;
 wire \mprj.E_OPA[8] ;
 wire \mprj.E_OPA[9] ;
 wire \mprj.E_OPB[0] ;
 wire \mprj.E_OPB[10] ;
 wire \mprj.E_OPB[11] ;
 wire \mprj.E_OPB[12] ;
 wire \mprj.E_OPB[13] ;
 wire \mprj.E_OPB[14] ;
 wire \mprj.E_OPB[15] ;
 wire \mprj.E_OPB[16] ;
 wire \mprj.E_OPB[17] ;
 wire \mprj.E_OPB[18] ;
 wire \mprj.E_OPB[19] ;
 wire \mprj.E_OPB[1] ;
 wire \mprj.E_OPB[20] ;
 wire \mprj.E_OPB[21] ;
 wire \mprj.E_OPB[22] ;
 wire \mprj.E_OPB[23] ;
 wire \mprj.E_OPB[24] ;
 wire \mprj.E_OPB[25] ;
 wire \mprj.E_OPB[26] ;
 wire \mprj.E_OPB[27] ;
 wire \mprj.E_OPB[28] ;
 wire \mprj.E_OPB[29] ;
 wire \mprj.E_OPB[2] ;
 wire \mprj.E_OPB[30] ;
 wire \mprj.E_OPB[31] ;
 wire \mprj.E_OPB[32] ;
 wire \mprj.E_OPB[33] ;
 wire \mprj.E_OPB[34] ;
 wire \mprj.E_OPB[35] ;
 wire \mprj.E_OPB[3] ;
 wire \mprj.E_OPB[4] ;
 wire \mprj.E_OPB[5] ;
 wire \mprj.E_OPB[6] ;
 wire \mprj.E_OPB[7] ;
 wire \mprj.E_OPB[8] ;
 wire \mprj.E_OPB[9] ;
 wire \mprj.SelfWriteData[0] ;
 wire \mprj.SelfWriteData[10] ;
 wire \mprj.SelfWriteData[11] ;
 wire \mprj.SelfWriteData[12] ;
 wire \mprj.SelfWriteData[13] ;
 wire \mprj.SelfWriteData[14] ;
 wire \mprj.SelfWriteData[15] ;
 wire \mprj.SelfWriteData[16] ;
 wire \mprj.SelfWriteData[17] ;
 wire \mprj.SelfWriteData[18] ;
 wire \mprj.SelfWriteData[19] ;
 wire \mprj.SelfWriteData[1] ;
 wire \mprj.SelfWriteData[20] ;
 wire \mprj.SelfWriteData[21] ;
 wire \mprj.SelfWriteData[22] ;
 wire \mprj.SelfWriteData[23] ;
 wire \mprj.SelfWriteData[24] ;
 wire \mprj.SelfWriteData[25] ;
 wire \mprj.SelfWriteData[26] ;
 wire \mprj.SelfWriteData[27] ;
 wire \mprj.SelfWriteData[28] ;
 wire \mprj.SelfWriteData[29] ;
 wire \mprj.SelfWriteData[2] ;
 wire \mprj.SelfWriteData[30] ;
 wire \mprj.SelfWriteData[31] ;
 wire \mprj.SelfWriteData[3] ;
 wire \mprj.SelfWriteData[4] ;
 wire \mprj.SelfWriteData[5] ;
 wire \mprj.SelfWriteData[6] ;
 wire \mprj.SelfWriteData[7] ;
 wire \mprj.SelfWriteData[8] ;
 wire \mprj.SelfWriteData[9] ;
 wire \mprj.SelfWriteStrobe ;
 wire \mprj.W_OPA[35] ;
 wire \mprj.W_OPB[0] ;
 wire \mprj.W_OPB[10] ;
 wire \mprj.W_OPB[11] ;
 wire \mprj.W_OPB[12] ;
 wire \mprj.W_OPB[13] ;
 wire \mprj.W_OPB[14] ;
 wire \mprj.W_OPB[15] ;
 wire \mprj.W_OPB[16] ;
 wire \mprj.W_OPB[17] ;
 wire \mprj.W_OPB[18] ;
 wire \mprj.W_OPB[19] ;
 wire \mprj.W_OPB[1] ;
 wire \mprj.W_OPB[20] ;
 wire \mprj.W_OPB[21] ;
 wire \mprj.W_OPB[22] ;
 wire \mprj.W_OPB[23] ;
 wire \mprj.W_OPB[24] ;
 wire \mprj.W_OPB[25] ;
 wire \mprj.W_OPB[26] ;
 wire \mprj.W_OPB[27] ;
 wire \mprj.W_OPB[28] ;
 wire \mprj.W_OPB[29] ;
 wire \mprj.W_OPB[2] ;
 wire \mprj.W_OPB[30] ;
 wire \mprj.W_OPB[31] ;
 wire \mprj.W_OPB[32] ;
 wire \mprj.W_OPB[33] ;
 wire \mprj.W_OPB[34] ;
 wire \mprj.W_OPB[35] ;
 wire \mprj.W_OPB[3] ;
 wire \mprj.W_OPB[4] ;
 wire \mprj.W_OPB[5] ;
 wire \mprj.W_OPB[6] ;
 wire \mprj.W_OPB[7] ;
 wire \mprj.W_OPB[8] ;
 wire \mprj.W_OPB[9] ;
 wire \mprj.flexbex_addr_o[0] ;
 wire \mprj.flexbex_addr_o[10] ;
 wire \mprj.flexbex_addr_o[11] ;
 wire \mprj.flexbex_addr_o[12] ;
 wire \mprj.flexbex_addr_o[13] ;
 wire \mprj.flexbex_addr_o[1] ;
 wire \mprj.flexbex_addr_o[2] ;
 wire \mprj.flexbex_addr_o[3] ;
 wire \mprj.flexbex_addr_o[4] ;
 wire \mprj.flexbex_addr_o[5] ;
 wire \mprj.flexbex_addr_o[6] ;
 wire \mprj.flexbex_addr_o[7] ;
 wire \mprj.flexbex_addr_o[8] ;
 wire \mprj.flexbex_addr_o[9] ;
 wire \mprj.master_data_addr_to_inter[0] ;
 wire \mprj.master_data_addr_to_inter[10] ;
 wire \mprj.master_data_addr_to_inter[11] ;
 wire \mprj.master_data_addr_to_inter[12] ;
 wire \mprj.master_data_addr_to_inter[13] ;
 wire \mprj.master_data_addr_to_inter[1] ;
 wire \mprj.master_data_addr_to_inter[2] ;
 wire \mprj.master_data_addr_to_inter[3] ;
 wire \mprj.master_data_addr_to_inter[4] ;
 wire \mprj.master_data_addr_to_inter[5] ;
 wire \mprj.master_data_addr_to_inter[6] ;
 wire \mprj.master_data_addr_to_inter[7] ;
 wire \mprj.master_data_addr_to_inter[8] ;
 wire \mprj.master_data_addr_to_inter[9] ;
 wire \mprj.master_data_addr_to_inter_ro[0] ;
 wire \mprj.master_data_addr_to_inter_ro[10] ;
 wire \mprj.master_data_addr_to_inter_ro[11] ;
 wire \mprj.master_data_addr_to_inter_ro[12] ;
 wire \mprj.master_data_addr_to_inter_ro[13] ;
 wire \mprj.master_data_addr_to_inter_ro[14] ;
 wire \mprj.master_data_addr_to_inter_ro[15] ;
 wire \mprj.master_data_addr_to_inter_ro[16] ;
 wire \mprj.master_data_addr_to_inter_ro[17] ;
 wire \mprj.master_data_addr_to_inter_ro[18] ;
 wire \mprj.master_data_addr_to_inter_ro[19] ;
 wire \mprj.master_data_addr_to_inter_ro[1] ;
 wire \mprj.master_data_addr_to_inter_ro[20] ;
 wire \mprj.master_data_addr_to_inter_ro[21] ;
 wire \mprj.master_data_addr_to_inter_ro[22] ;
 wire \mprj.master_data_addr_to_inter_ro[23] ;
 wire \mprj.master_data_addr_to_inter_ro[24] ;
 wire \mprj.master_data_addr_to_inter_ro[25] ;
 wire \mprj.master_data_addr_to_inter_ro[2] ;
 wire \mprj.master_data_addr_to_inter_ro[3] ;
 wire \mprj.master_data_addr_to_inter_ro[4] ;
 wire \mprj.master_data_addr_to_inter_ro[5] ;
 wire \mprj.master_data_addr_to_inter_ro[6] ;
 wire \mprj.master_data_addr_to_inter_ro[7] ;
 wire \mprj.master_data_addr_to_inter_ro[8] ;
 wire \mprj.master_data_addr_to_inter_ro[9] ;
 wire \mprj.master_data_be_to_inter[0] ;
 wire \mprj.master_data_be_to_inter[1] ;
 wire \mprj.master_data_be_to_inter[2] ;
 wire \mprj.master_data_be_to_inter[3] ;
 wire \mprj.master_data_be_to_inter[4] ;
 wire \mprj.master_data_be_to_inter[5] ;
 wire \mprj.master_data_be_to_inter[6] ;
 wire \mprj.master_data_be_to_inter[7] ;
 wire \mprj.master_data_gnt_to_inter[0] ;
 wire \mprj.master_data_gnt_to_inter[1] ;
 wire \mprj.master_data_gnt_to_inter_ro[0] ;
 wire \mprj.master_data_gnt_to_inter_ro[1] ;
 wire \mprj.master_data_rdata_to_inter[0] ;
 wire \mprj.master_data_rdata_to_inter[10] ;
 wire \mprj.master_data_rdata_to_inter[11] ;
 wire \mprj.master_data_rdata_to_inter[12] ;
 wire \mprj.master_data_rdata_to_inter[13] ;
 wire \mprj.master_data_rdata_to_inter[14] ;
 wire \mprj.master_data_rdata_to_inter[15] ;
 wire \mprj.master_data_rdata_to_inter[16] ;
 wire \mprj.master_data_rdata_to_inter[17] ;
 wire \mprj.master_data_rdata_to_inter[18] ;
 wire \mprj.master_data_rdata_to_inter[19] ;
 wire \mprj.master_data_rdata_to_inter[1] ;
 wire \mprj.master_data_rdata_to_inter[20] ;
 wire \mprj.master_data_rdata_to_inter[21] ;
 wire \mprj.master_data_rdata_to_inter[22] ;
 wire \mprj.master_data_rdata_to_inter[23] ;
 wire \mprj.master_data_rdata_to_inter[24] ;
 wire \mprj.master_data_rdata_to_inter[25] ;
 wire \mprj.master_data_rdata_to_inter[26] ;
 wire \mprj.master_data_rdata_to_inter[27] ;
 wire \mprj.master_data_rdata_to_inter[28] ;
 wire \mprj.master_data_rdata_to_inter[29] ;
 wire \mprj.master_data_rdata_to_inter[2] ;
 wire \mprj.master_data_rdata_to_inter[30] ;
 wire \mprj.master_data_rdata_to_inter[31] ;
 wire \mprj.master_data_rdata_to_inter[32] ;
 wire \mprj.master_data_rdata_to_inter[33] ;
 wire \mprj.master_data_rdata_to_inter[34] ;
 wire \mprj.master_data_rdata_to_inter[35] ;
 wire \mprj.master_data_rdata_to_inter[36] ;
 wire \mprj.master_data_rdata_to_inter[37] ;
 wire \mprj.master_data_rdata_to_inter[38] ;
 wire \mprj.master_data_rdata_to_inter[39] ;
 wire \mprj.master_data_rdata_to_inter[3] ;
 wire \mprj.master_data_rdata_to_inter[40] ;
 wire \mprj.master_data_rdata_to_inter[41] ;
 wire \mprj.master_data_rdata_to_inter[42] ;
 wire \mprj.master_data_rdata_to_inter[43] ;
 wire \mprj.master_data_rdata_to_inter[44] ;
 wire \mprj.master_data_rdata_to_inter[45] ;
 wire \mprj.master_data_rdata_to_inter[46] ;
 wire \mprj.master_data_rdata_to_inter[47] ;
 wire \mprj.master_data_rdata_to_inter[48] ;
 wire \mprj.master_data_rdata_to_inter[49] ;
 wire \mprj.master_data_rdata_to_inter[4] ;
 wire \mprj.master_data_rdata_to_inter[50] ;
 wire \mprj.master_data_rdata_to_inter[51] ;
 wire \mprj.master_data_rdata_to_inter[52] ;
 wire \mprj.master_data_rdata_to_inter[53] ;
 wire \mprj.master_data_rdata_to_inter[54] ;
 wire \mprj.master_data_rdata_to_inter[55] ;
 wire \mprj.master_data_rdata_to_inter[56] ;
 wire \mprj.master_data_rdata_to_inter[57] ;
 wire \mprj.master_data_rdata_to_inter[58] ;
 wire \mprj.master_data_rdata_to_inter[59] ;
 wire \mprj.master_data_rdata_to_inter[5] ;
 wire \mprj.master_data_rdata_to_inter[60] ;
 wire \mprj.master_data_rdata_to_inter[61] ;
 wire \mprj.master_data_rdata_to_inter[62] ;
 wire \mprj.master_data_rdata_to_inter[63] ;
 wire \mprj.master_data_rdata_to_inter[6] ;
 wire \mprj.master_data_rdata_to_inter[7] ;
 wire \mprj.master_data_rdata_to_inter[8] ;
 wire \mprj.master_data_rdata_to_inter[9] ;
 wire \mprj.master_data_rdata_to_inter_ro[0] ;
 wire \mprj.master_data_rdata_to_inter_ro[10] ;
 wire \mprj.master_data_rdata_to_inter_ro[11] ;
 wire \mprj.master_data_rdata_to_inter_ro[12] ;
 wire \mprj.master_data_rdata_to_inter_ro[13] ;
 wire \mprj.master_data_rdata_to_inter_ro[14] ;
 wire \mprj.master_data_rdata_to_inter_ro[15] ;
 wire \mprj.master_data_rdata_to_inter_ro[16] ;
 wire \mprj.master_data_rdata_to_inter_ro[17] ;
 wire \mprj.master_data_rdata_to_inter_ro[18] ;
 wire \mprj.master_data_rdata_to_inter_ro[19] ;
 wire \mprj.master_data_rdata_to_inter_ro[1] ;
 wire \mprj.master_data_rdata_to_inter_ro[20] ;
 wire \mprj.master_data_rdata_to_inter_ro[21] ;
 wire \mprj.master_data_rdata_to_inter_ro[22] ;
 wire \mprj.master_data_rdata_to_inter_ro[23] ;
 wire \mprj.master_data_rdata_to_inter_ro[24] ;
 wire \mprj.master_data_rdata_to_inter_ro[25] ;
 wire \mprj.master_data_rdata_to_inter_ro[26] ;
 wire \mprj.master_data_rdata_to_inter_ro[27] ;
 wire \mprj.master_data_rdata_to_inter_ro[28] ;
 wire \mprj.master_data_rdata_to_inter_ro[29] ;
 wire \mprj.master_data_rdata_to_inter_ro[2] ;
 wire \mprj.master_data_rdata_to_inter_ro[30] ;
 wire \mprj.master_data_rdata_to_inter_ro[31] ;
 wire \mprj.master_data_rdata_to_inter_ro[32] ;
 wire \mprj.master_data_rdata_to_inter_ro[33] ;
 wire \mprj.master_data_rdata_to_inter_ro[34] ;
 wire \mprj.master_data_rdata_to_inter_ro[35] ;
 wire \mprj.master_data_rdata_to_inter_ro[36] ;
 wire \mprj.master_data_rdata_to_inter_ro[37] ;
 wire \mprj.master_data_rdata_to_inter_ro[38] ;
 wire \mprj.master_data_rdata_to_inter_ro[39] ;
 wire \mprj.master_data_rdata_to_inter_ro[3] ;
 wire \mprj.master_data_rdata_to_inter_ro[40] ;
 wire \mprj.master_data_rdata_to_inter_ro[41] ;
 wire \mprj.master_data_rdata_to_inter_ro[42] ;
 wire \mprj.master_data_rdata_to_inter_ro[43] ;
 wire \mprj.master_data_rdata_to_inter_ro[44] ;
 wire \mprj.master_data_rdata_to_inter_ro[45] ;
 wire \mprj.master_data_rdata_to_inter_ro[46] ;
 wire \mprj.master_data_rdata_to_inter_ro[47] ;
 wire \mprj.master_data_rdata_to_inter_ro[48] ;
 wire \mprj.master_data_rdata_to_inter_ro[49] ;
 wire \mprj.master_data_rdata_to_inter_ro[4] ;
 wire \mprj.master_data_rdata_to_inter_ro[50] ;
 wire \mprj.master_data_rdata_to_inter_ro[51] ;
 wire \mprj.master_data_rdata_to_inter_ro[52] ;
 wire \mprj.master_data_rdata_to_inter_ro[53] ;
 wire \mprj.master_data_rdata_to_inter_ro[54] ;
 wire \mprj.master_data_rdata_to_inter_ro[55] ;
 wire \mprj.master_data_rdata_to_inter_ro[56] ;
 wire \mprj.master_data_rdata_to_inter_ro[57] ;
 wire \mprj.master_data_rdata_to_inter_ro[58] ;
 wire \mprj.master_data_rdata_to_inter_ro[59] ;
 wire \mprj.master_data_rdata_to_inter_ro[5] ;
 wire \mprj.master_data_rdata_to_inter_ro[60] ;
 wire \mprj.master_data_rdata_to_inter_ro[61] ;
 wire \mprj.master_data_rdata_to_inter_ro[62] ;
 wire \mprj.master_data_rdata_to_inter_ro[63] ;
 wire \mprj.master_data_rdata_to_inter_ro[6] ;
 wire \mprj.master_data_rdata_to_inter_ro[7] ;
 wire \mprj.master_data_rdata_to_inter_ro[8] ;
 wire \mprj.master_data_rdata_to_inter_ro[9] ;
 wire \mprj.master_data_req_to_inter[0] ;
 wire \mprj.master_data_req_to_inter[1] ;
 wire \mprj.master_data_req_to_inter_ro[0] ;
 wire \mprj.master_data_req_to_inter_ro[1] ;
 wire \mprj.master_data_rvalid_to_inter[0] ;
 wire \mprj.master_data_rvalid_to_inter[1] ;
 wire \mprj.master_data_rvalid_to_inter_ro[0] ;
 wire \mprj.master_data_rvalid_to_inter_ro[1] ;
 wire \mprj.master_data_wdata_to_inter[0] ;
 wire \mprj.master_data_wdata_to_inter[10] ;
 wire \mprj.master_data_wdata_to_inter[11] ;
 wire \mprj.master_data_wdata_to_inter[12] ;
 wire \mprj.master_data_wdata_to_inter[13] ;
 wire \mprj.master_data_wdata_to_inter[14] ;
 wire \mprj.master_data_wdata_to_inter[15] ;
 wire \mprj.master_data_wdata_to_inter[16] ;
 wire \mprj.master_data_wdata_to_inter[17] ;
 wire \mprj.master_data_wdata_to_inter[18] ;
 wire \mprj.master_data_wdata_to_inter[19] ;
 wire \mprj.master_data_wdata_to_inter[1] ;
 wire \mprj.master_data_wdata_to_inter[20] ;
 wire \mprj.master_data_wdata_to_inter[21] ;
 wire \mprj.master_data_wdata_to_inter[22] ;
 wire \mprj.master_data_wdata_to_inter[23] ;
 wire \mprj.master_data_wdata_to_inter[24] ;
 wire \mprj.master_data_wdata_to_inter[25] ;
 wire \mprj.master_data_wdata_to_inter[26] ;
 wire \mprj.master_data_wdata_to_inter[27] ;
 wire \mprj.master_data_wdata_to_inter[28] ;
 wire \mprj.master_data_wdata_to_inter[29] ;
 wire \mprj.master_data_wdata_to_inter[2] ;
 wire \mprj.master_data_wdata_to_inter[30] ;
 wire \mprj.master_data_wdata_to_inter[31] ;
 wire \mprj.master_data_wdata_to_inter[32] ;
 wire \mprj.master_data_wdata_to_inter[33] ;
 wire \mprj.master_data_wdata_to_inter[34] ;
 wire \mprj.master_data_wdata_to_inter[35] ;
 wire \mprj.master_data_wdata_to_inter[36] ;
 wire \mprj.master_data_wdata_to_inter[37] ;
 wire \mprj.master_data_wdata_to_inter[38] ;
 wire \mprj.master_data_wdata_to_inter[39] ;
 wire \mprj.master_data_wdata_to_inter[3] ;
 wire \mprj.master_data_wdata_to_inter[40] ;
 wire \mprj.master_data_wdata_to_inter[41] ;
 wire \mprj.master_data_wdata_to_inter[42] ;
 wire \mprj.master_data_wdata_to_inter[43] ;
 wire \mprj.master_data_wdata_to_inter[44] ;
 wire \mprj.master_data_wdata_to_inter[45] ;
 wire \mprj.master_data_wdata_to_inter[46] ;
 wire \mprj.master_data_wdata_to_inter[47] ;
 wire \mprj.master_data_wdata_to_inter[48] ;
 wire \mprj.master_data_wdata_to_inter[49] ;
 wire \mprj.master_data_wdata_to_inter[4] ;
 wire \mprj.master_data_wdata_to_inter[50] ;
 wire \mprj.master_data_wdata_to_inter[51] ;
 wire \mprj.master_data_wdata_to_inter[52] ;
 wire \mprj.master_data_wdata_to_inter[53] ;
 wire \mprj.master_data_wdata_to_inter[54] ;
 wire \mprj.master_data_wdata_to_inter[55] ;
 wire \mprj.master_data_wdata_to_inter[56] ;
 wire \mprj.master_data_wdata_to_inter[57] ;
 wire \mprj.master_data_wdata_to_inter[58] ;
 wire \mprj.master_data_wdata_to_inter[59] ;
 wire \mprj.master_data_wdata_to_inter[5] ;
 wire \mprj.master_data_wdata_to_inter[60] ;
 wire \mprj.master_data_wdata_to_inter[61] ;
 wire \mprj.master_data_wdata_to_inter[62] ;
 wire \mprj.master_data_wdata_to_inter[63] ;
 wire \mprj.master_data_wdata_to_inter[6] ;
 wire \mprj.master_data_wdata_to_inter[7] ;
 wire \mprj.master_data_wdata_to_inter[8] ;
 wire \mprj.master_data_wdata_to_inter[9] ;
 wire \mprj.master_data_we_to_inter[0] ;
 wire \mprj.master_data_we_to_inter[1] ;
 wire \mprj.reset_ni ;
 wire \mprj.slave_data_addr_to_inter[0] ;
 wire \mprj.slave_data_addr_to_inter[10] ;
 wire \mprj.slave_data_addr_to_inter[11] ;
 wire \mprj.slave_data_addr_to_inter[12] ;
 wire \mprj.slave_data_addr_to_inter[13] ;
 wire \mprj.slave_data_addr_to_inter[14] ;
 wire \mprj.slave_data_addr_to_inter[15] ;
 wire \mprj.slave_data_addr_to_inter[16] ;
 wire \mprj.slave_data_addr_to_inter[17] ;
 wire \mprj.slave_data_addr_to_inter[18] ;
 wire \mprj.slave_data_addr_to_inter[19] ;
 wire \mprj.slave_data_addr_to_inter[1] ;
 wire \mprj.slave_data_addr_to_inter[20] ;
 wire \mprj.slave_data_addr_to_inter[21] ;
 wire \mprj.slave_data_addr_to_inter[22] ;
 wire \mprj.slave_data_addr_to_inter[23] ;
 wire \mprj.slave_data_addr_to_inter[24] ;
 wire \mprj.slave_data_addr_to_inter[25] ;
 wire \mprj.slave_data_addr_to_inter[26] ;
 wire \mprj.slave_data_addr_to_inter[27] ;
 wire \mprj.slave_data_addr_to_inter[28] ;
 wire \mprj.slave_data_addr_to_inter[29] ;
 wire \mprj.slave_data_addr_to_inter[2] ;
 wire \mprj.slave_data_addr_to_inter[30] ;
 wire \mprj.slave_data_addr_to_inter[31] ;
 wire \mprj.slave_data_addr_to_inter[32] ;
 wire \mprj.slave_data_addr_to_inter[33] ;
 wire \mprj.slave_data_addr_to_inter[34] ;
 wire \mprj.slave_data_addr_to_inter[35] ;
 wire \mprj.slave_data_addr_to_inter[36] ;
 wire \mprj.slave_data_addr_to_inter[37] ;
 wire \mprj.slave_data_addr_to_inter[38] ;
 wire \mprj.slave_data_addr_to_inter[39] ;
 wire \mprj.slave_data_addr_to_inter[3] ;
 wire \mprj.slave_data_addr_to_inter[40] ;
 wire \mprj.slave_data_addr_to_inter[41] ;
 wire \mprj.slave_data_addr_to_inter[42] ;
 wire \mprj.slave_data_addr_to_inter[43] ;
 wire \mprj.slave_data_addr_to_inter[4] ;
 wire \mprj.slave_data_addr_to_inter[5] ;
 wire \mprj.slave_data_addr_to_inter[6] ;
 wire \mprj.slave_data_addr_to_inter[7] ;
 wire \mprj.slave_data_addr_to_inter[8] ;
 wire \mprj.slave_data_addr_to_inter[9] ;
 wire \mprj.slave_data_addr_to_inter_ro[0] ;
 wire \mprj.slave_data_addr_to_inter_ro[10] ;
 wire \mprj.slave_data_addr_to_inter_ro[11] ;
 wire \mprj.slave_data_addr_to_inter_ro[12] ;
 wire \mprj.slave_data_addr_to_inter_ro[13] ;
 wire \mprj.slave_data_addr_to_inter_ro[14] ;
 wire \mprj.slave_data_addr_to_inter_ro[15] ;
 wire \mprj.slave_data_addr_to_inter_ro[16] ;
 wire \mprj.slave_data_addr_to_inter_ro[17] ;
 wire \mprj.slave_data_addr_to_inter_ro[18] ;
 wire \mprj.slave_data_addr_to_inter_ro[19] ;
 wire \mprj.slave_data_addr_to_inter_ro[1] ;
 wire \mprj.slave_data_addr_to_inter_ro[20] ;
 wire \mprj.slave_data_addr_to_inter_ro[21] ;
 wire \mprj.slave_data_addr_to_inter_ro[22] ;
 wire \mprj.slave_data_addr_to_inter_ro[23] ;
 wire \mprj.slave_data_addr_to_inter_ro[24] ;
 wire \mprj.slave_data_addr_to_inter_ro[25] ;
 wire \mprj.slave_data_addr_to_inter_ro[26] ;
 wire \mprj.slave_data_addr_to_inter_ro[27] ;
 wire \mprj.slave_data_addr_to_inter_ro[28] ;
 wire \mprj.slave_data_addr_to_inter_ro[29] ;
 wire \mprj.slave_data_addr_to_inter_ro[2] ;
 wire \mprj.slave_data_addr_to_inter_ro[30] ;
 wire \mprj.slave_data_addr_to_inter_ro[31] ;
 wire \mprj.slave_data_addr_to_inter_ro[32] ;
 wire \mprj.slave_data_addr_to_inter_ro[33] ;
 wire \mprj.slave_data_addr_to_inter_ro[34] ;
 wire \mprj.slave_data_addr_to_inter_ro[35] ;
 wire \mprj.slave_data_addr_to_inter_ro[36] ;
 wire \mprj.slave_data_addr_to_inter_ro[37] ;
 wire \mprj.slave_data_addr_to_inter_ro[38] ;
 wire \mprj.slave_data_addr_to_inter_ro[39] ;
 wire \mprj.slave_data_addr_to_inter_ro[3] ;
 wire \mprj.slave_data_addr_to_inter_ro[40] ;
 wire \mprj.slave_data_addr_to_inter_ro[41] ;
 wire \mprj.slave_data_addr_to_inter_ro[42] ;
 wire \mprj.slave_data_addr_to_inter_ro[43] ;
 wire \mprj.slave_data_addr_to_inter_ro[4] ;
 wire \mprj.slave_data_addr_to_inter_ro[5] ;
 wire \mprj.slave_data_addr_to_inter_ro[6] ;
 wire \mprj.slave_data_addr_to_inter_ro[7] ;
 wire \mprj.slave_data_addr_to_inter_ro[8] ;
 wire \mprj.slave_data_addr_to_inter_ro[9] ;
 wire \mprj.slave_data_be_to_inter[0] ;
 wire \mprj.slave_data_be_to_inter[10] ;
 wire \mprj.slave_data_be_to_inter[11] ;
 wire \mprj.slave_data_be_to_inter[12] ;
 wire \mprj.slave_data_be_to_inter[13] ;
 wire \mprj.slave_data_be_to_inter[14] ;
 wire \mprj.slave_data_be_to_inter[15] ;
 wire \mprj.slave_data_be_to_inter[1] ;
 wire \mprj.slave_data_be_to_inter[2] ;
 wire \mprj.slave_data_be_to_inter[3] ;
 wire \mprj.slave_data_be_to_inter[4] ;
 wire \mprj.slave_data_be_to_inter[5] ;
 wire \mprj.slave_data_be_to_inter[6] ;
 wire \mprj.slave_data_be_to_inter[7] ;
 wire \mprj.slave_data_be_to_inter[8] ;
 wire \mprj.slave_data_be_to_inter[9] ;
 wire \mprj.slave_data_rdata_to_inter[0] ;
 wire \mprj.slave_data_rdata_to_inter[100] ;
 wire \mprj.slave_data_rdata_to_inter[101] ;
 wire \mprj.slave_data_rdata_to_inter[102] ;
 wire \mprj.slave_data_rdata_to_inter[103] ;
 wire \mprj.slave_data_rdata_to_inter[104] ;
 wire \mprj.slave_data_rdata_to_inter[105] ;
 wire \mprj.slave_data_rdata_to_inter[106] ;
 wire \mprj.slave_data_rdata_to_inter[107] ;
 wire \mprj.slave_data_rdata_to_inter[108] ;
 wire \mprj.slave_data_rdata_to_inter[109] ;
 wire \mprj.slave_data_rdata_to_inter[10] ;
 wire \mprj.slave_data_rdata_to_inter[110] ;
 wire \mprj.slave_data_rdata_to_inter[111] ;
 wire \mprj.slave_data_rdata_to_inter[112] ;
 wire \mprj.slave_data_rdata_to_inter[113] ;
 wire \mprj.slave_data_rdata_to_inter[114] ;
 wire \mprj.slave_data_rdata_to_inter[115] ;
 wire \mprj.slave_data_rdata_to_inter[116] ;
 wire \mprj.slave_data_rdata_to_inter[117] ;
 wire \mprj.slave_data_rdata_to_inter[118] ;
 wire \mprj.slave_data_rdata_to_inter[119] ;
 wire \mprj.slave_data_rdata_to_inter[11] ;
 wire \mprj.slave_data_rdata_to_inter[120] ;
 wire \mprj.slave_data_rdata_to_inter[121] ;
 wire \mprj.slave_data_rdata_to_inter[122] ;
 wire \mprj.slave_data_rdata_to_inter[123] ;
 wire \mprj.slave_data_rdata_to_inter[124] ;
 wire \mprj.slave_data_rdata_to_inter[125] ;
 wire \mprj.slave_data_rdata_to_inter[126] ;
 wire \mprj.slave_data_rdata_to_inter[127] ;
 wire \mprj.slave_data_rdata_to_inter[12] ;
 wire \mprj.slave_data_rdata_to_inter[13] ;
 wire \mprj.slave_data_rdata_to_inter[14] ;
 wire \mprj.slave_data_rdata_to_inter[15] ;
 wire \mprj.slave_data_rdata_to_inter[16] ;
 wire \mprj.slave_data_rdata_to_inter[17] ;
 wire \mprj.slave_data_rdata_to_inter[18] ;
 wire \mprj.slave_data_rdata_to_inter[19] ;
 wire \mprj.slave_data_rdata_to_inter[1] ;
 wire \mprj.slave_data_rdata_to_inter[20] ;
 wire \mprj.slave_data_rdata_to_inter[21] ;
 wire \mprj.slave_data_rdata_to_inter[22] ;
 wire \mprj.slave_data_rdata_to_inter[23] ;
 wire \mprj.slave_data_rdata_to_inter[24] ;
 wire \mprj.slave_data_rdata_to_inter[25] ;
 wire \mprj.slave_data_rdata_to_inter[26] ;
 wire \mprj.slave_data_rdata_to_inter[27] ;
 wire \mprj.slave_data_rdata_to_inter[28] ;
 wire \mprj.slave_data_rdata_to_inter[29] ;
 wire \mprj.slave_data_rdata_to_inter[2] ;
 wire \mprj.slave_data_rdata_to_inter[30] ;
 wire \mprj.slave_data_rdata_to_inter[31] ;
 wire \mprj.slave_data_rdata_to_inter[32] ;
 wire \mprj.slave_data_rdata_to_inter[33] ;
 wire \mprj.slave_data_rdata_to_inter[34] ;
 wire \mprj.slave_data_rdata_to_inter[35] ;
 wire \mprj.slave_data_rdata_to_inter[36] ;
 wire \mprj.slave_data_rdata_to_inter[37] ;
 wire \mprj.slave_data_rdata_to_inter[38] ;
 wire \mprj.slave_data_rdata_to_inter[39] ;
 wire \mprj.slave_data_rdata_to_inter[3] ;
 wire \mprj.slave_data_rdata_to_inter[40] ;
 wire \mprj.slave_data_rdata_to_inter[41] ;
 wire \mprj.slave_data_rdata_to_inter[42] ;
 wire \mprj.slave_data_rdata_to_inter[43] ;
 wire \mprj.slave_data_rdata_to_inter[44] ;
 wire \mprj.slave_data_rdata_to_inter[45] ;
 wire \mprj.slave_data_rdata_to_inter[46] ;
 wire \mprj.slave_data_rdata_to_inter[47] ;
 wire \mprj.slave_data_rdata_to_inter[48] ;
 wire \mprj.slave_data_rdata_to_inter[49] ;
 wire \mprj.slave_data_rdata_to_inter[4] ;
 wire \mprj.slave_data_rdata_to_inter[50] ;
 wire \mprj.slave_data_rdata_to_inter[51] ;
 wire \mprj.slave_data_rdata_to_inter[52] ;
 wire \mprj.slave_data_rdata_to_inter[53] ;
 wire \mprj.slave_data_rdata_to_inter[54] ;
 wire \mprj.slave_data_rdata_to_inter[55] ;
 wire \mprj.slave_data_rdata_to_inter[56] ;
 wire \mprj.slave_data_rdata_to_inter[57] ;
 wire \mprj.slave_data_rdata_to_inter[58] ;
 wire \mprj.slave_data_rdata_to_inter[59] ;
 wire \mprj.slave_data_rdata_to_inter[5] ;
 wire \mprj.slave_data_rdata_to_inter[60] ;
 wire \mprj.slave_data_rdata_to_inter[61] ;
 wire \mprj.slave_data_rdata_to_inter[62] ;
 wire \mprj.slave_data_rdata_to_inter[63] ;
 wire \mprj.slave_data_rdata_to_inter[64] ;
 wire \mprj.slave_data_rdata_to_inter[65] ;
 wire \mprj.slave_data_rdata_to_inter[66] ;
 wire \mprj.slave_data_rdata_to_inter[67] ;
 wire \mprj.slave_data_rdata_to_inter[68] ;
 wire \mprj.slave_data_rdata_to_inter[69] ;
 wire \mprj.slave_data_rdata_to_inter[6] ;
 wire \mprj.slave_data_rdata_to_inter[70] ;
 wire \mprj.slave_data_rdata_to_inter[71] ;
 wire \mprj.slave_data_rdata_to_inter[72] ;
 wire \mprj.slave_data_rdata_to_inter[73] ;
 wire \mprj.slave_data_rdata_to_inter[74] ;
 wire \mprj.slave_data_rdata_to_inter[75] ;
 wire \mprj.slave_data_rdata_to_inter[76] ;
 wire \mprj.slave_data_rdata_to_inter[77] ;
 wire \mprj.slave_data_rdata_to_inter[78] ;
 wire \mprj.slave_data_rdata_to_inter[79] ;
 wire \mprj.slave_data_rdata_to_inter[7] ;
 wire \mprj.slave_data_rdata_to_inter[80] ;
 wire \mprj.slave_data_rdata_to_inter[81] ;
 wire \mprj.slave_data_rdata_to_inter[82] ;
 wire \mprj.slave_data_rdata_to_inter[83] ;
 wire \mprj.slave_data_rdata_to_inter[84] ;
 wire \mprj.slave_data_rdata_to_inter[85] ;
 wire \mprj.slave_data_rdata_to_inter[86] ;
 wire \mprj.slave_data_rdata_to_inter[87] ;
 wire \mprj.slave_data_rdata_to_inter[88] ;
 wire \mprj.slave_data_rdata_to_inter[89] ;
 wire \mprj.slave_data_rdata_to_inter[8] ;
 wire \mprj.slave_data_rdata_to_inter[90] ;
 wire \mprj.slave_data_rdata_to_inter[91] ;
 wire \mprj.slave_data_rdata_to_inter[92] ;
 wire \mprj.slave_data_rdata_to_inter[93] ;
 wire \mprj.slave_data_rdata_to_inter[94] ;
 wire \mprj.slave_data_rdata_to_inter[95] ;
 wire \mprj.slave_data_rdata_to_inter[96] ;
 wire \mprj.slave_data_rdata_to_inter[97] ;
 wire \mprj.slave_data_rdata_to_inter[98] ;
 wire \mprj.slave_data_rdata_to_inter[99] ;
 wire \mprj.slave_data_rdata_to_inter[9] ;
 wire \mprj.slave_data_rdata_to_inter_ro[0] ;
 wire \mprj.slave_data_rdata_to_inter_ro[100] ;
 wire \mprj.slave_data_rdata_to_inter_ro[101] ;
 wire \mprj.slave_data_rdata_to_inter_ro[102] ;
 wire \mprj.slave_data_rdata_to_inter_ro[103] ;
 wire \mprj.slave_data_rdata_to_inter_ro[104] ;
 wire \mprj.slave_data_rdata_to_inter_ro[105] ;
 wire \mprj.slave_data_rdata_to_inter_ro[106] ;
 wire \mprj.slave_data_rdata_to_inter_ro[107] ;
 wire \mprj.slave_data_rdata_to_inter_ro[108] ;
 wire \mprj.slave_data_rdata_to_inter_ro[109] ;
 wire \mprj.slave_data_rdata_to_inter_ro[10] ;
 wire \mprj.slave_data_rdata_to_inter_ro[110] ;
 wire \mprj.slave_data_rdata_to_inter_ro[111] ;
 wire \mprj.slave_data_rdata_to_inter_ro[112] ;
 wire \mprj.slave_data_rdata_to_inter_ro[113] ;
 wire \mprj.slave_data_rdata_to_inter_ro[114] ;
 wire \mprj.slave_data_rdata_to_inter_ro[115] ;
 wire \mprj.slave_data_rdata_to_inter_ro[116] ;
 wire \mprj.slave_data_rdata_to_inter_ro[117] ;
 wire \mprj.slave_data_rdata_to_inter_ro[118] ;
 wire \mprj.slave_data_rdata_to_inter_ro[119] ;
 wire \mprj.slave_data_rdata_to_inter_ro[11] ;
 wire \mprj.slave_data_rdata_to_inter_ro[120] ;
 wire \mprj.slave_data_rdata_to_inter_ro[121] ;
 wire \mprj.slave_data_rdata_to_inter_ro[122] ;
 wire \mprj.slave_data_rdata_to_inter_ro[123] ;
 wire \mprj.slave_data_rdata_to_inter_ro[124] ;
 wire \mprj.slave_data_rdata_to_inter_ro[125] ;
 wire \mprj.slave_data_rdata_to_inter_ro[126] ;
 wire \mprj.slave_data_rdata_to_inter_ro[127] ;
 wire \mprj.slave_data_rdata_to_inter_ro[12] ;
 wire \mprj.slave_data_rdata_to_inter_ro[13] ;
 wire \mprj.slave_data_rdata_to_inter_ro[14] ;
 wire \mprj.slave_data_rdata_to_inter_ro[15] ;
 wire \mprj.slave_data_rdata_to_inter_ro[16] ;
 wire \mprj.slave_data_rdata_to_inter_ro[17] ;
 wire \mprj.slave_data_rdata_to_inter_ro[18] ;
 wire \mprj.slave_data_rdata_to_inter_ro[19] ;
 wire \mprj.slave_data_rdata_to_inter_ro[1] ;
 wire \mprj.slave_data_rdata_to_inter_ro[20] ;
 wire \mprj.slave_data_rdata_to_inter_ro[21] ;
 wire \mprj.slave_data_rdata_to_inter_ro[22] ;
 wire \mprj.slave_data_rdata_to_inter_ro[23] ;
 wire \mprj.slave_data_rdata_to_inter_ro[24] ;
 wire \mprj.slave_data_rdata_to_inter_ro[25] ;
 wire \mprj.slave_data_rdata_to_inter_ro[26] ;
 wire \mprj.slave_data_rdata_to_inter_ro[27] ;
 wire \mprj.slave_data_rdata_to_inter_ro[28] ;
 wire \mprj.slave_data_rdata_to_inter_ro[29] ;
 wire \mprj.slave_data_rdata_to_inter_ro[2] ;
 wire \mprj.slave_data_rdata_to_inter_ro[30] ;
 wire \mprj.slave_data_rdata_to_inter_ro[31] ;
 wire \mprj.slave_data_rdata_to_inter_ro[32] ;
 wire \mprj.slave_data_rdata_to_inter_ro[33] ;
 wire \mprj.slave_data_rdata_to_inter_ro[34] ;
 wire \mprj.slave_data_rdata_to_inter_ro[35] ;
 wire \mprj.slave_data_rdata_to_inter_ro[36] ;
 wire \mprj.slave_data_rdata_to_inter_ro[37] ;
 wire \mprj.slave_data_rdata_to_inter_ro[38] ;
 wire \mprj.slave_data_rdata_to_inter_ro[39] ;
 wire \mprj.slave_data_rdata_to_inter_ro[3] ;
 wire \mprj.slave_data_rdata_to_inter_ro[40] ;
 wire \mprj.slave_data_rdata_to_inter_ro[41] ;
 wire \mprj.slave_data_rdata_to_inter_ro[42] ;
 wire \mprj.slave_data_rdata_to_inter_ro[43] ;
 wire \mprj.slave_data_rdata_to_inter_ro[44] ;
 wire \mprj.slave_data_rdata_to_inter_ro[45] ;
 wire \mprj.slave_data_rdata_to_inter_ro[46] ;
 wire \mprj.slave_data_rdata_to_inter_ro[47] ;
 wire \mprj.slave_data_rdata_to_inter_ro[48] ;
 wire \mprj.slave_data_rdata_to_inter_ro[49] ;
 wire \mprj.slave_data_rdata_to_inter_ro[4] ;
 wire \mprj.slave_data_rdata_to_inter_ro[50] ;
 wire \mprj.slave_data_rdata_to_inter_ro[51] ;
 wire \mprj.slave_data_rdata_to_inter_ro[52] ;
 wire \mprj.slave_data_rdata_to_inter_ro[53] ;
 wire \mprj.slave_data_rdata_to_inter_ro[54] ;
 wire \mprj.slave_data_rdata_to_inter_ro[55] ;
 wire \mprj.slave_data_rdata_to_inter_ro[56] ;
 wire \mprj.slave_data_rdata_to_inter_ro[57] ;
 wire \mprj.slave_data_rdata_to_inter_ro[58] ;
 wire \mprj.slave_data_rdata_to_inter_ro[59] ;
 wire \mprj.slave_data_rdata_to_inter_ro[5] ;
 wire \mprj.slave_data_rdata_to_inter_ro[60] ;
 wire \mprj.slave_data_rdata_to_inter_ro[61] ;
 wire \mprj.slave_data_rdata_to_inter_ro[62] ;
 wire \mprj.slave_data_rdata_to_inter_ro[63] ;
 wire \mprj.slave_data_rdata_to_inter_ro[64] ;
 wire \mprj.slave_data_rdata_to_inter_ro[65] ;
 wire \mprj.slave_data_rdata_to_inter_ro[66] ;
 wire \mprj.slave_data_rdata_to_inter_ro[67] ;
 wire \mprj.slave_data_rdata_to_inter_ro[68] ;
 wire \mprj.slave_data_rdata_to_inter_ro[69] ;
 wire \mprj.slave_data_rdata_to_inter_ro[6] ;
 wire \mprj.slave_data_rdata_to_inter_ro[70] ;
 wire \mprj.slave_data_rdata_to_inter_ro[71] ;
 wire \mprj.slave_data_rdata_to_inter_ro[72] ;
 wire \mprj.slave_data_rdata_to_inter_ro[73] ;
 wire \mprj.slave_data_rdata_to_inter_ro[74] ;
 wire \mprj.slave_data_rdata_to_inter_ro[75] ;
 wire \mprj.slave_data_rdata_to_inter_ro[76] ;
 wire \mprj.slave_data_rdata_to_inter_ro[77] ;
 wire \mprj.slave_data_rdata_to_inter_ro[78] ;
 wire \mprj.slave_data_rdata_to_inter_ro[79] ;
 wire \mprj.slave_data_rdata_to_inter_ro[7] ;
 wire \mprj.slave_data_rdata_to_inter_ro[80] ;
 wire \mprj.slave_data_rdata_to_inter_ro[81] ;
 wire \mprj.slave_data_rdata_to_inter_ro[82] ;
 wire \mprj.slave_data_rdata_to_inter_ro[83] ;
 wire \mprj.slave_data_rdata_to_inter_ro[84] ;
 wire \mprj.slave_data_rdata_to_inter_ro[85] ;
 wire \mprj.slave_data_rdata_to_inter_ro[86] ;
 wire \mprj.slave_data_rdata_to_inter_ro[87] ;
 wire \mprj.slave_data_rdata_to_inter_ro[88] ;
 wire \mprj.slave_data_rdata_to_inter_ro[89] ;
 wire \mprj.slave_data_rdata_to_inter_ro[8] ;
 wire \mprj.slave_data_rdata_to_inter_ro[90] ;
 wire \mprj.slave_data_rdata_to_inter_ro[91] ;
 wire \mprj.slave_data_rdata_to_inter_ro[92] ;
 wire \mprj.slave_data_rdata_to_inter_ro[93] ;
 wire \mprj.slave_data_rdata_to_inter_ro[94] ;
 wire \mprj.slave_data_rdata_to_inter_ro[95] ;
 wire \mprj.slave_data_rdata_to_inter_ro[96] ;
 wire \mprj.slave_data_rdata_to_inter_ro[97] ;
 wire \mprj.slave_data_rdata_to_inter_ro[98] ;
 wire \mprj.slave_data_rdata_to_inter_ro[99] ;
 wire \mprj.slave_data_rdata_to_inter_ro[9] ;
 wire \mprj.slave_data_req_to_inter[0] ;
 wire \mprj.slave_data_req_to_inter[1] ;
 wire \mprj.slave_data_req_to_inter[2] ;
 wire \mprj.slave_data_req_to_inter[3] ;
 wire \mprj.slave_data_req_to_inter_ro[0] ;
 wire \mprj.slave_data_req_to_inter_ro[1] ;
 wire \mprj.slave_data_req_to_inter_ro[2] ;
 wire \mprj.slave_data_req_to_inter_ro[3] ;
 wire \mprj.slave_data_wdata_to_inter[0] ;
 wire \mprj.slave_data_wdata_to_inter[100] ;
 wire \mprj.slave_data_wdata_to_inter[101] ;
 wire \mprj.slave_data_wdata_to_inter[102] ;
 wire \mprj.slave_data_wdata_to_inter[103] ;
 wire \mprj.slave_data_wdata_to_inter[104] ;
 wire \mprj.slave_data_wdata_to_inter[105] ;
 wire \mprj.slave_data_wdata_to_inter[106] ;
 wire \mprj.slave_data_wdata_to_inter[107] ;
 wire \mprj.slave_data_wdata_to_inter[108] ;
 wire \mprj.slave_data_wdata_to_inter[109] ;
 wire \mprj.slave_data_wdata_to_inter[10] ;
 wire \mprj.slave_data_wdata_to_inter[110] ;
 wire \mprj.slave_data_wdata_to_inter[111] ;
 wire \mprj.slave_data_wdata_to_inter[112] ;
 wire \mprj.slave_data_wdata_to_inter[113] ;
 wire \mprj.slave_data_wdata_to_inter[114] ;
 wire \mprj.slave_data_wdata_to_inter[115] ;
 wire \mprj.slave_data_wdata_to_inter[116] ;
 wire \mprj.slave_data_wdata_to_inter[117] ;
 wire \mprj.slave_data_wdata_to_inter[118] ;
 wire \mprj.slave_data_wdata_to_inter[119] ;
 wire \mprj.slave_data_wdata_to_inter[11] ;
 wire \mprj.slave_data_wdata_to_inter[120] ;
 wire \mprj.slave_data_wdata_to_inter[121] ;
 wire \mprj.slave_data_wdata_to_inter[122] ;
 wire \mprj.slave_data_wdata_to_inter[123] ;
 wire \mprj.slave_data_wdata_to_inter[124] ;
 wire \mprj.slave_data_wdata_to_inter[125] ;
 wire \mprj.slave_data_wdata_to_inter[126] ;
 wire \mprj.slave_data_wdata_to_inter[127] ;
 wire \mprj.slave_data_wdata_to_inter[12] ;
 wire \mprj.slave_data_wdata_to_inter[13] ;
 wire \mprj.slave_data_wdata_to_inter[14] ;
 wire \mprj.slave_data_wdata_to_inter[15] ;
 wire \mprj.slave_data_wdata_to_inter[16] ;
 wire \mprj.slave_data_wdata_to_inter[17] ;
 wire \mprj.slave_data_wdata_to_inter[18] ;
 wire \mprj.slave_data_wdata_to_inter[19] ;
 wire \mprj.slave_data_wdata_to_inter[1] ;
 wire \mprj.slave_data_wdata_to_inter[20] ;
 wire \mprj.slave_data_wdata_to_inter[21] ;
 wire \mprj.slave_data_wdata_to_inter[22] ;
 wire \mprj.slave_data_wdata_to_inter[23] ;
 wire \mprj.slave_data_wdata_to_inter[24] ;
 wire \mprj.slave_data_wdata_to_inter[25] ;
 wire \mprj.slave_data_wdata_to_inter[26] ;
 wire \mprj.slave_data_wdata_to_inter[27] ;
 wire \mprj.slave_data_wdata_to_inter[28] ;
 wire \mprj.slave_data_wdata_to_inter[29] ;
 wire \mprj.slave_data_wdata_to_inter[2] ;
 wire \mprj.slave_data_wdata_to_inter[30] ;
 wire \mprj.slave_data_wdata_to_inter[31] ;
 wire \mprj.slave_data_wdata_to_inter[32] ;
 wire \mprj.slave_data_wdata_to_inter[33] ;
 wire \mprj.slave_data_wdata_to_inter[34] ;
 wire \mprj.slave_data_wdata_to_inter[35] ;
 wire \mprj.slave_data_wdata_to_inter[36] ;
 wire \mprj.slave_data_wdata_to_inter[37] ;
 wire \mprj.slave_data_wdata_to_inter[38] ;
 wire \mprj.slave_data_wdata_to_inter[39] ;
 wire \mprj.slave_data_wdata_to_inter[3] ;
 wire \mprj.slave_data_wdata_to_inter[40] ;
 wire \mprj.slave_data_wdata_to_inter[41] ;
 wire \mprj.slave_data_wdata_to_inter[42] ;
 wire \mprj.slave_data_wdata_to_inter[43] ;
 wire \mprj.slave_data_wdata_to_inter[44] ;
 wire \mprj.slave_data_wdata_to_inter[45] ;
 wire \mprj.slave_data_wdata_to_inter[46] ;
 wire \mprj.slave_data_wdata_to_inter[47] ;
 wire \mprj.slave_data_wdata_to_inter[48] ;
 wire \mprj.slave_data_wdata_to_inter[49] ;
 wire \mprj.slave_data_wdata_to_inter[4] ;
 wire \mprj.slave_data_wdata_to_inter[50] ;
 wire \mprj.slave_data_wdata_to_inter[51] ;
 wire \mprj.slave_data_wdata_to_inter[52] ;
 wire \mprj.slave_data_wdata_to_inter[53] ;
 wire \mprj.slave_data_wdata_to_inter[54] ;
 wire \mprj.slave_data_wdata_to_inter[55] ;
 wire \mprj.slave_data_wdata_to_inter[56] ;
 wire \mprj.slave_data_wdata_to_inter[57] ;
 wire \mprj.slave_data_wdata_to_inter[58] ;
 wire \mprj.slave_data_wdata_to_inter[59] ;
 wire \mprj.slave_data_wdata_to_inter[5] ;
 wire \mprj.slave_data_wdata_to_inter[60] ;
 wire \mprj.slave_data_wdata_to_inter[61] ;
 wire \mprj.slave_data_wdata_to_inter[62] ;
 wire \mprj.slave_data_wdata_to_inter[63] ;
 wire \mprj.slave_data_wdata_to_inter[64] ;
 wire \mprj.slave_data_wdata_to_inter[65] ;
 wire \mprj.slave_data_wdata_to_inter[66] ;
 wire \mprj.slave_data_wdata_to_inter[67] ;
 wire \mprj.slave_data_wdata_to_inter[68] ;
 wire \mprj.slave_data_wdata_to_inter[69] ;
 wire \mprj.slave_data_wdata_to_inter[6] ;
 wire \mprj.slave_data_wdata_to_inter[70] ;
 wire \mprj.slave_data_wdata_to_inter[71] ;
 wire \mprj.slave_data_wdata_to_inter[72] ;
 wire \mprj.slave_data_wdata_to_inter[73] ;
 wire \mprj.slave_data_wdata_to_inter[74] ;
 wire \mprj.slave_data_wdata_to_inter[75] ;
 wire \mprj.slave_data_wdata_to_inter[76] ;
 wire \mprj.slave_data_wdata_to_inter[77] ;
 wire \mprj.slave_data_wdata_to_inter[78] ;
 wire \mprj.slave_data_wdata_to_inter[79] ;
 wire \mprj.slave_data_wdata_to_inter[7] ;
 wire \mprj.slave_data_wdata_to_inter[80] ;
 wire \mprj.slave_data_wdata_to_inter[81] ;
 wire \mprj.slave_data_wdata_to_inter[82] ;
 wire \mprj.slave_data_wdata_to_inter[83] ;
 wire \mprj.slave_data_wdata_to_inter[84] ;
 wire \mprj.slave_data_wdata_to_inter[85] ;
 wire \mprj.slave_data_wdata_to_inter[86] ;
 wire \mprj.slave_data_wdata_to_inter[87] ;
 wire \mprj.slave_data_wdata_to_inter[88] ;
 wire \mprj.slave_data_wdata_to_inter[89] ;
 wire \mprj.slave_data_wdata_to_inter[8] ;
 wire \mprj.slave_data_wdata_to_inter[90] ;
 wire \mprj.slave_data_wdata_to_inter[91] ;
 wire \mprj.slave_data_wdata_to_inter[92] ;
 wire \mprj.slave_data_wdata_to_inter[93] ;
 wire \mprj.slave_data_wdata_to_inter[94] ;
 wire \mprj.slave_data_wdata_to_inter[95] ;
 wire \mprj.slave_data_wdata_to_inter[96] ;
 wire \mprj.slave_data_wdata_to_inter[97] ;
 wire \mprj.slave_data_wdata_to_inter[98] ;
 wire \mprj.slave_data_wdata_to_inter[99] ;
 wire \mprj.slave_data_wdata_to_inter[9] ;
 wire \mprj.slave_data_we_to_inter[0] ;
 wire \mprj.slave_data_we_to_inter[1] ;
 wire \mprj.slave_data_we_to_inter[2] ;
 wire \mprj.slave_data_we_to_inter[3] ;
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
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net16;
 wire net160;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net17;
 wire net170;
 wire net171;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net18;
 wire net180;
 wire net181;
 wire net182;
 wire net183;
 wire net184;
 wire net185;
 wire net186;
 wire net187;
 wire net188;
 wire net189;
 wire net19;
 wire net190;
 wire net191;
 wire net192;
 wire net193;
 wire net194;
 wire net195;
 wire net196;
 wire net197;
 wire net198;
 wire net199;
 wire net2;
 wire net20;
 wire net200;
 wire net201;
 wire net202;
 wire net203;
 wire net204;
 wire net205;
 wire net206;
 wire net207;
 wire net208;
 wire net209;
 wire net21;
 wire net210;
 wire net211;
 wire net212;
 wire net213;
 wire net214;
 wire net215;
 wire net216;
 wire net217;
 wire net218;
 wire net219;
 wire net22;
 wire net220;
 wire net221;
 wire net222;
 wire net223;
 wire net224;
 wire net225;
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

 sky130_fd_sc_hd__diode_2 ANTENNA__0442__A (.DIODE(\mprj.slave_data_req_to_inter_ro[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0443__A (.DIODE(\mprj.slave_data_we_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0444__A (.DIODE(\mprj.slave_data_req_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0445__A (.DIODE(\mprj.slave_data_req_to_inter_ro[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0446__A (.DIODE(\mprj.slave_data_we_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0447__A (.DIODE(\mprj.slave_data_req_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0448__A (.DIODE(\mprj.slave_data_req_to_inter_ro[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0449__A (.DIODE(\mprj.slave_data_we_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0450__A (.DIODE(\mprj.slave_data_req_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0451__A (.DIODE(\mprj.slave_data_req_to_inter_ro[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0452__A (.DIODE(\mprj.slave_data_we_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0453__A (.DIODE(\mprj.slave_data_req_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA__0454__A (.DIODE(net116),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input10_A (.DIODE(wbs_adr_i[11]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input11_A (.DIODE(wbs_adr_i[12]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input12_A (.DIODE(wbs_adr_i[13]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input13_A (.DIODE(wbs_adr_i[14]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input14_A (.DIODE(wbs_adr_i[15]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input15_A (.DIODE(wbs_adr_i[16]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input16_A (.DIODE(wbs_adr_i[17]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input17_A (.DIODE(wbs_adr_i[18]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input18_A (.DIODE(wbs_adr_i[19]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input19_A (.DIODE(wbs_adr_i[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input1_A (.DIODE(io_in[4]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input20_A (.DIODE(wbs_adr_i[20]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input21_A (.DIODE(wbs_adr_i[21]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input22_A (.DIODE(wbs_adr_i[22]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input23_A (.DIODE(wbs_adr_i[23]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input24_A (.DIODE(wbs_adr_i[24]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input25_A (.DIODE(wbs_adr_i[25]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input26_A (.DIODE(wbs_adr_i[26]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input27_A (.DIODE(wbs_adr_i[27]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input28_A (.DIODE(wbs_adr_i[28]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input29_A (.DIODE(wbs_adr_i[29]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input2_A (.DIODE(io_in[5]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input30_A (.DIODE(wbs_adr_i[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input31_A (.DIODE(wbs_adr_i[30]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input32_A (.DIODE(wbs_adr_i[31]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input33_A (.DIODE(wbs_adr_i[3]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input34_A (.DIODE(wbs_adr_i[4]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input35_A (.DIODE(wbs_adr_i[5]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input36_A (.DIODE(wbs_adr_i[6]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input37_A (.DIODE(wbs_adr_i[7]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input38_A (.DIODE(wbs_adr_i[8]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input39_A (.DIODE(wbs_adr_i[9]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input3_A (.DIODE(io_in[6]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input40_A (.DIODE(wbs_cyc_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input41_A (.DIODE(wbs_dat_i[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input42_A (.DIODE(wbs_dat_i[10]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input43_A (.DIODE(wbs_dat_i[11]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input44_A (.DIODE(wbs_dat_i[12]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input45_A (.DIODE(wbs_dat_i[13]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input46_A (.DIODE(wbs_dat_i[14]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input47_A (.DIODE(wbs_dat_i[15]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input48_A (.DIODE(wbs_dat_i[16]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input49_A (.DIODE(wbs_dat_i[17]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input4_A (.DIODE(io_in[7]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input50_A (.DIODE(wbs_dat_i[18]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input51_A (.DIODE(wbs_dat_i[19]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input52_A (.DIODE(wbs_dat_i[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input53_A (.DIODE(wbs_dat_i[20]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input54_A (.DIODE(wbs_dat_i[21]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input55_A (.DIODE(wbs_dat_i[22]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input56_A (.DIODE(wbs_dat_i[23]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input57_A (.DIODE(wbs_dat_i[24]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input58_A (.DIODE(wbs_dat_i[25]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input59_A (.DIODE(wbs_dat_i[26]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input5_A (.DIODE(io_in[8]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input60_A (.DIODE(wbs_dat_i[27]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input61_A (.DIODE(wbs_dat_i[28]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input62_A (.DIODE(wbs_dat_i[29]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input63_A (.DIODE(wbs_dat_i[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input64_A (.DIODE(wbs_dat_i[30]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input65_A (.DIODE(wbs_dat_i[31]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input66_A (.DIODE(wbs_dat_i[3]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input67_A (.DIODE(wbs_dat_i[4]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input68_A (.DIODE(wbs_dat_i[5]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input69_A (.DIODE(wbs_dat_i[6]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input6_A (.DIODE(io_in[9]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input70_A (.DIODE(wbs_dat_i[7]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input71_A (.DIODE(wbs_dat_i[8]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input72_A (.DIODE(wbs_dat_i[9]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input73_A (.DIODE(wbs_sel_i[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input74_A (.DIODE(wbs_sel_i[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input75_A (.DIODE(wbs_sel_i[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input76_A (.DIODE(wbs_sel_i[3]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input77_A (.DIODE(wbs_stb_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input78_A (.DIODE(wbs_we_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input7_A (.DIODE(wb_rst_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input8_A (.DIODE(wbs_adr_i[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_input9_A (.DIODE(wbs_adr_i[10]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_clk_i  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_gnt_i  (.DIODE(\mprj.master_data_gnt_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[0]  (.DIODE(\mprj.master_data_rdata_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[10]  (.DIODE(\mprj.master_data_rdata_to_inter[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[11]  (.DIODE(\mprj.master_data_rdata_to_inter[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[12]  (.DIODE(\mprj.master_data_rdata_to_inter[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[13]  (.DIODE(\mprj.master_data_rdata_to_inter[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[14]  (.DIODE(\mprj.master_data_rdata_to_inter[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[15]  (.DIODE(\mprj.master_data_rdata_to_inter[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[16]  (.DIODE(\mprj.master_data_rdata_to_inter[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[17]  (.DIODE(\mprj.master_data_rdata_to_inter[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[18]  (.DIODE(\mprj.master_data_rdata_to_inter[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[19]  (.DIODE(\mprj.master_data_rdata_to_inter[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[1]  (.DIODE(\mprj.master_data_rdata_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[20]  (.DIODE(\mprj.master_data_rdata_to_inter[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[21]  (.DIODE(\mprj.master_data_rdata_to_inter[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[22]  (.DIODE(\mprj.master_data_rdata_to_inter[22] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[23]  (.DIODE(\mprj.master_data_rdata_to_inter[23] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[24]  (.DIODE(\mprj.master_data_rdata_to_inter[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[25]  (.DIODE(\mprj.master_data_rdata_to_inter[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[26]  (.DIODE(\mprj.master_data_rdata_to_inter[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[27]  (.DIODE(\mprj.master_data_rdata_to_inter[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[28]  (.DIODE(\mprj.master_data_rdata_to_inter[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[29]  (.DIODE(\mprj.master_data_rdata_to_inter[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[2]  (.DIODE(\mprj.master_data_rdata_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[30]  (.DIODE(\mprj.master_data_rdata_to_inter[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[31]  (.DIODE(\mprj.master_data_rdata_to_inter[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[3]  (.DIODE(\mprj.master_data_rdata_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[4]  (.DIODE(\mprj.master_data_rdata_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[5]  (.DIODE(\mprj.master_data_rdata_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[6]  (.DIODE(\mprj.master_data_rdata_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[7]  (.DIODE(\mprj.master_data_rdata_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[8]  (.DIODE(\mprj.master_data_rdata_to_inter[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rdata_i[9]  (.DIODE(\mprj.master_data_rdata_to_inter[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_data_rvalid_i  (.DIODE(\mprj.master_data_rvalid_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_debug_req_i  (.DIODE(net119),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_fetch_enable_i  (.DIODE(net118),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_gnt_i  (.DIODE(\mprj.master_data_gnt_to_inter_ro[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[0]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[10]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[11]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[12]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[13]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[14]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[15]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[16]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[17]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[18]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[19]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[1]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[20]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[21]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[22]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[22] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[23]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[23] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[24]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[25]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[26]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[27]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[28]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[29]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[2]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[30]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[31]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[3]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[4]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[5]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[6]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[7]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[8]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rdata_i[9]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_instr_rvalid_i  (.DIODE(\mprj.master_data_rvalid_to_inter_ro[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_1_rst_ni  (.DIODE(\mprj.reset_ni ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_clk_i  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_gnt_i  (.DIODE(net160),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[0]  (.DIODE(net158),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[10]  (.DIODE(net148),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[11]  (.DIODE(net147),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[12]  (.DIODE(net146),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[13]  (.DIODE(net145),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[14]  (.DIODE(net144),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[15]  (.DIODE(net143),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[16]  (.DIODE(net142),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[17]  (.DIODE(net141),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[18]  (.DIODE(net140),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[19]  (.DIODE(net139),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[1]  (.DIODE(net157),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[20]  (.DIODE(net138),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[21]  (.DIODE(net137),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[22]  (.DIODE(net136),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[23]  (.DIODE(net135),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[24]  (.DIODE(net134),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[25]  (.DIODE(net133),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[26]  (.DIODE(net132),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[27]  (.DIODE(net131),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[28]  (.DIODE(net130),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[29]  (.DIODE(net129),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[2]  (.DIODE(net156),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[30]  (.DIODE(net128),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[31]  (.DIODE(net127),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[3]  (.DIODE(net155),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[4]  (.DIODE(net154),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[5]  (.DIODE(net153),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[6]  (.DIODE(net152),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[7]  (.DIODE(net151),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[8]  (.DIODE(net150),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rdata_i[9]  (.DIODE(net149),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_data_rvalid_i  (.DIODE(net123),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_debug_req_i  (.DIODE(net3),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_fetch_enable_i  (.DIODE(net4),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_gnt_i  (.DIODE(net159),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[0]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[10]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[11]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[12]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[44] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[13]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[45] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[14]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[46] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[15]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[47] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[16]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[48] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[17]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[49] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[18]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[50] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[19]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[51] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[1]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[33] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[20]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[52] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[21]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[53] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[22]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[54] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[23]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[55] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[24]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[56] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[25]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[57] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[26]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[58] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[27]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[59] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[28]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[60] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[29]  (.DIODE(net126),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[2]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[34] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[30]  (.DIODE(net125),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[31]  (.DIODE(net124),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[3]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[4]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[5]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[6]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[7]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[8]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rdata_i[9]  (.DIODE(\mprj.master_data_rdata_to_inter_ro[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_instr_rvalid_i  (.DIODE(net122),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.ibex_core_2_rst_ni  (.DIODE(\mprj.reset_ni ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[0]  (.DIODE(\mprj.master_data_addr_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[10]  (.DIODE(\mprj.master_data_addr_to_inter[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[11]  (.DIODE(\mprj.master_data_addr_to_inter[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[12]  (.DIODE(\mprj.master_data_addr_to_inter[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[13]  (.DIODE(\mprj.master_data_addr_to_inter[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[16]  (.DIODE(net221),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[17]  (.DIODE(net220),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[18]  (.DIODE(net219),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[19]  (.DIODE(net218),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[1]  (.DIODE(\mprj.master_data_addr_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[20]  (.DIODE(net217),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[21]  (.DIODE(net216),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[22]  (.DIODE(net215),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[23]  (.DIODE(net214),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[24]  (.DIODE(net225),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[25]  (.DIODE(net224),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[26]  (.DIODE(net223),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[27]  (.DIODE(net222),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[2]  (.DIODE(\mprj.master_data_addr_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[3]  (.DIODE(\mprj.master_data_addr_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[4]  (.DIODE(\mprj.master_data_addr_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[5]  (.DIODE(\mprj.master_data_addr_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[6]  (.DIODE(\mprj.master_data_addr_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[7]  (.DIODE(\mprj.master_data_addr_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[8]  (.DIODE(\mprj.master_data_addr_to_inter[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_i[9]  (.DIODE(\mprj.master_data_addr_to_inter[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[0]  (.DIODE(\mprj.master_data_addr_to_inter_ro[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[10]  (.DIODE(\mprj.master_data_addr_to_inter_ro[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[11]  (.DIODE(\mprj.master_data_addr_to_inter_ro[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[12]  (.DIODE(\mprj.master_data_addr_to_inter_ro[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[13]  (.DIODE(net175),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[14]  (.DIODE(net171),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[15]  (.DIODE(net170),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[16]  (.DIODE(net169),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[17]  (.DIODE(net168),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[18]  (.DIODE(net167),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[19]  (.DIODE(net166),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[1]  (.DIODE(\mprj.master_data_addr_to_inter_ro[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[20]  (.DIODE(net165),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[21]  (.DIODE(net164),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[22]  (.DIODE(net163),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[23]  (.DIODE(net174),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[24]  (.DIODE(net173),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[25]  (.DIODE(net172),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[2]  (.DIODE(\mprj.master_data_addr_to_inter_ro[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[3]  (.DIODE(\mprj.master_data_addr_to_inter_ro[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[4]  (.DIODE(\mprj.master_data_addr_to_inter_ro[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[5]  (.DIODE(\mprj.master_data_addr_to_inter_ro[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[6]  (.DIODE(\mprj.master_data_addr_to_inter_ro[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[7]  (.DIODE(\mprj.master_data_addr_to_inter_ro[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[8]  (.DIODE(\mprj.master_data_addr_to_inter_ro[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_addr_to_inter_ro[9]  (.DIODE(\mprj.master_data_addr_to_inter_ro[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[0]  (.DIODE(\mprj.master_data_be_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[1]  (.DIODE(\mprj.master_data_be_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[2]  (.DIODE(\mprj.master_data_be_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[3]  (.DIODE(\mprj.master_data_be_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[4]  (.DIODE(net213),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[5]  (.DIODE(net212),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[6]  (.DIODE(net211),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_be_to_inter_i[7]  (.DIODE(net210),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_req_to_inter_i[0]  (.DIODE(\mprj.master_data_req_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_req_to_inter_i[1]  (.DIODE(net209),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_req_to_inter_ro[0]  (.DIODE(\mprj.master_data_req_to_inter_ro[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_req_to_inter_ro[1]  (.DIODE(net162),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[0]  (.DIODE(\mprj.master_data_wdata_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[10]  (.DIODE(\mprj.master_data_wdata_to_inter[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[11]  (.DIODE(\mprj.master_data_wdata_to_inter[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[12]  (.DIODE(\mprj.master_data_wdata_to_inter[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[13]  (.DIODE(\mprj.master_data_wdata_to_inter[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[14]  (.DIODE(\mprj.master_data_wdata_to_inter[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[15]  (.DIODE(\mprj.master_data_wdata_to_inter[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[16]  (.DIODE(\mprj.master_data_wdata_to_inter[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[17]  (.DIODE(\mprj.master_data_wdata_to_inter[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[18]  (.DIODE(\mprj.master_data_wdata_to_inter[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[19]  (.DIODE(\mprj.master_data_wdata_to_inter[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[1]  (.DIODE(\mprj.master_data_wdata_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[20]  (.DIODE(\mprj.master_data_wdata_to_inter[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[21]  (.DIODE(\mprj.master_data_wdata_to_inter[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[22]  (.DIODE(\mprj.master_data_wdata_to_inter[22] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[23]  (.DIODE(\mprj.master_data_wdata_to_inter[23] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[24]  (.DIODE(\mprj.master_data_wdata_to_inter[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[25]  (.DIODE(\mprj.master_data_wdata_to_inter[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[26]  (.DIODE(\mprj.master_data_wdata_to_inter[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[27]  (.DIODE(\mprj.master_data_wdata_to_inter[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[28]  (.DIODE(\mprj.master_data_wdata_to_inter[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[29]  (.DIODE(\mprj.master_data_wdata_to_inter[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[2]  (.DIODE(\mprj.master_data_wdata_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[30]  (.DIODE(\mprj.master_data_wdata_to_inter[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[31]  (.DIODE(\mprj.master_data_wdata_to_inter[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[32]  (.DIODE(net208),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[33]  (.DIODE(net197),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[34]  (.DIODE(net186),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[35]  (.DIODE(net183),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[36]  (.DIODE(net182),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[37]  (.DIODE(net181),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[38]  (.DIODE(net180),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[39]  (.DIODE(net179),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[3]  (.DIODE(\mprj.master_data_wdata_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[40]  (.DIODE(net178),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[41]  (.DIODE(net177),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[42]  (.DIODE(net207),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[43]  (.DIODE(net206),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[44]  (.DIODE(net205),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[45]  (.DIODE(net204),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[46]  (.DIODE(net203),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[47]  (.DIODE(net202),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[48]  (.DIODE(net201),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[49]  (.DIODE(net200),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[4]  (.DIODE(\mprj.master_data_wdata_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[50]  (.DIODE(net199),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[51]  (.DIODE(net198),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[52]  (.DIODE(net196),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[53]  (.DIODE(net195),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[54]  (.DIODE(net194),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[55]  (.DIODE(net193),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[56]  (.DIODE(net192),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[57]  (.DIODE(net191),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[58]  (.DIODE(net190),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[59]  (.DIODE(net189),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[5]  (.DIODE(\mprj.master_data_wdata_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[60]  (.DIODE(net188),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[61]  (.DIODE(net187),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[62]  (.DIODE(net185),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[63]  (.DIODE(net184),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[6]  (.DIODE(\mprj.master_data_wdata_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[7]  (.DIODE(\mprj.master_data_wdata_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[8]  (.DIODE(\mprj.master_data_wdata_to_inter[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_wdata_to_inter_i[9]  (.DIODE(\mprj.master_data_wdata_to_inter[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_we_to_inter_i[0]  (.DIODE(\mprj.master_data_we_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_master_data_we_to_inter_i[1]  (.DIODE(net176),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_rxd_uart  (.DIODE(net5),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_rxd_uart_to_mem  (.DIODE(net6),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[0]  (.DIODE(\mprj.slave_data_rdata_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[100]  (.DIODE(\mprj.slave_data_rdata_to_inter[100] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[101]  (.DIODE(\mprj.slave_data_rdata_to_inter[101] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[102]  (.DIODE(\mprj.slave_data_rdata_to_inter[102] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[103]  (.DIODE(\mprj.slave_data_rdata_to_inter[103] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[104]  (.DIODE(\mprj.slave_data_rdata_to_inter[104] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[105]  (.DIODE(\mprj.slave_data_rdata_to_inter[105] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[106]  (.DIODE(\mprj.slave_data_rdata_to_inter[106] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[107]  (.DIODE(\mprj.slave_data_rdata_to_inter[107] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[108]  (.DIODE(\mprj.slave_data_rdata_to_inter[108] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[109]  (.DIODE(\mprj.slave_data_rdata_to_inter[109] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[10]  (.DIODE(\mprj.slave_data_rdata_to_inter[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[110]  (.DIODE(\mprj.slave_data_rdata_to_inter[110] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[111]  (.DIODE(\mprj.slave_data_rdata_to_inter[111] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[112]  (.DIODE(\mprj.slave_data_rdata_to_inter[112] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[113]  (.DIODE(\mprj.slave_data_rdata_to_inter[113] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[114]  (.DIODE(\mprj.slave_data_rdata_to_inter[114] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[115]  (.DIODE(\mprj.slave_data_rdata_to_inter[115] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[116]  (.DIODE(\mprj.slave_data_rdata_to_inter[116] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[117]  (.DIODE(\mprj.slave_data_rdata_to_inter[117] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[118]  (.DIODE(\mprj.slave_data_rdata_to_inter[118] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[119]  (.DIODE(\mprj.slave_data_rdata_to_inter[119] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[11]  (.DIODE(\mprj.slave_data_rdata_to_inter[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[120]  (.DIODE(\mprj.slave_data_rdata_to_inter[120] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[121]  (.DIODE(\mprj.slave_data_rdata_to_inter[121] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[122]  (.DIODE(\mprj.slave_data_rdata_to_inter[122] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[123]  (.DIODE(\mprj.slave_data_rdata_to_inter[123] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[124]  (.DIODE(\mprj.slave_data_rdata_to_inter[124] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[125]  (.DIODE(\mprj.slave_data_rdata_to_inter[125] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[126]  (.DIODE(\mprj.slave_data_rdata_to_inter[126] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[127]  (.DIODE(\mprj.slave_data_rdata_to_inter[127] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[12]  (.DIODE(\mprj.slave_data_rdata_to_inter[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[13]  (.DIODE(\mprj.slave_data_rdata_to_inter[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[14]  (.DIODE(\mprj.slave_data_rdata_to_inter[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[15]  (.DIODE(\mprj.slave_data_rdata_to_inter[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[16]  (.DIODE(\mprj.slave_data_rdata_to_inter[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[17]  (.DIODE(\mprj.slave_data_rdata_to_inter[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[18]  (.DIODE(\mprj.slave_data_rdata_to_inter[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[19]  (.DIODE(\mprj.slave_data_rdata_to_inter[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[1]  (.DIODE(\mprj.slave_data_rdata_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[20]  (.DIODE(\mprj.slave_data_rdata_to_inter[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[21]  (.DIODE(\mprj.slave_data_rdata_to_inter[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[22]  (.DIODE(\mprj.slave_data_rdata_to_inter[22] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[23]  (.DIODE(\mprj.slave_data_rdata_to_inter[23] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[24]  (.DIODE(\mprj.slave_data_rdata_to_inter[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[25]  (.DIODE(\mprj.slave_data_rdata_to_inter[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[26]  (.DIODE(\mprj.slave_data_rdata_to_inter[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[27]  (.DIODE(\mprj.slave_data_rdata_to_inter[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[28]  (.DIODE(\mprj.slave_data_rdata_to_inter[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[29]  (.DIODE(\mprj.slave_data_rdata_to_inter[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[2]  (.DIODE(\mprj.slave_data_rdata_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[30]  (.DIODE(\mprj.slave_data_rdata_to_inter[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[31]  (.DIODE(\mprj.slave_data_rdata_to_inter[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[32]  (.DIODE(\mprj.slave_data_rdata_to_inter[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[33]  (.DIODE(\mprj.slave_data_rdata_to_inter[33] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[34]  (.DIODE(\mprj.slave_data_rdata_to_inter[34] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[35]  (.DIODE(\mprj.slave_data_rdata_to_inter[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[36]  (.DIODE(\mprj.slave_data_rdata_to_inter[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[37]  (.DIODE(\mprj.slave_data_rdata_to_inter[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[38]  (.DIODE(\mprj.slave_data_rdata_to_inter[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[39]  (.DIODE(\mprj.slave_data_rdata_to_inter[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[3]  (.DIODE(\mprj.slave_data_rdata_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[40]  (.DIODE(\mprj.slave_data_rdata_to_inter[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[41]  (.DIODE(\mprj.slave_data_rdata_to_inter[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[42]  (.DIODE(\mprj.slave_data_rdata_to_inter[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[43]  (.DIODE(\mprj.slave_data_rdata_to_inter[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[44]  (.DIODE(\mprj.slave_data_rdata_to_inter[44] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[45]  (.DIODE(\mprj.slave_data_rdata_to_inter[45] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[46]  (.DIODE(\mprj.slave_data_rdata_to_inter[46] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[47]  (.DIODE(\mprj.slave_data_rdata_to_inter[47] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[48]  (.DIODE(\mprj.slave_data_rdata_to_inter[48] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[49]  (.DIODE(\mprj.slave_data_rdata_to_inter[49] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[4]  (.DIODE(\mprj.slave_data_rdata_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[50]  (.DIODE(\mprj.slave_data_rdata_to_inter[50] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[51]  (.DIODE(\mprj.slave_data_rdata_to_inter[51] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[52]  (.DIODE(\mprj.slave_data_rdata_to_inter[52] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[53]  (.DIODE(\mprj.slave_data_rdata_to_inter[53] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[54]  (.DIODE(\mprj.slave_data_rdata_to_inter[54] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[55]  (.DIODE(\mprj.slave_data_rdata_to_inter[55] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[56]  (.DIODE(\mprj.slave_data_rdata_to_inter[56] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[57]  (.DIODE(\mprj.slave_data_rdata_to_inter[57] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[58]  (.DIODE(\mprj.slave_data_rdata_to_inter[58] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[59]  (.DIODE(\mprj.slave_data_rdata_to_inter[59] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[5]  (.DIODE(\mprj.slave_data_rdata_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[60]  (.DIODE(\mprj.slave_data_rdata_to_inter[60] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[61]  (.DIODE(\mprj.slave_data_rdata_to_inter[61] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[62]  (.DIODE(\mprj.slave_data_rdata_to_inter[62] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[63]  (.DIODE(\mprj.slave_data_rdata_to_inter[63] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[64]  (.DIODE(\mprj.slave_data_rdata_to_inter[64] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[65]  (.DIODE(\mprj.slave_data_rdata_to_inter[65] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[66]  (.DIODE(\mprj.slave_data_rdata_to_inter[66] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[67]  (.DIODE(\mprj.slave_data_rdata_to_inter[67] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[68]  (.DIODE(\mprj.slave_data_rdata_to_inter[68] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[69]  (.DIODE(\mprj.slave_data_rdata_to_inter[69] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[6]  (.DIODE(\mprj.slave_data_rdata_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[70]  (.DIODE(\mprj.slave_data_rdata_to_inter[70] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[71]  (.DIODE(\mprj.slave_data_rdata_to_inter[71] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[72]  (.DIODE(\mprj.slave_data_rdata_to_inter[72] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[73]  (.DIODE(\mprj.slave_data_rdata_to_inter[73] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[74]  (.DIODE(\mprj.slave_data_rdata_to_inter[74] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[75]  (.DIODE(\mprj.slave_data_rdata_to_inter[75] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[76]  (.DIODE(\mprj.slave_data_rdata_to_inter[76] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[77]  (.DIODE(\mprj.slave_data_rdata_to_inter[77] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[78]  (.DIODE(\mprj.slave_data_rdata_to_inter[78] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[79]  (.DIODE(\mprj.slave_data_rdata_to_inter[79] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[7]  (.DIODE(\mprj.slave_data_rdata_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[80]  (.DIODE(\mprj.slave_data_rdata_to_inter[80] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[81]  (.DIODE(\mprj.slave_data_rdata_to_inter[81] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[82]  (.DIODE(\mprj.slave_data_rdata_to_inter[82] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[83]  (.DIODE(\mprj.slave_data_rdata_to_inter[83] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[84]  (.DIODE(\mprj.slave_data_rdata_to_inter[84] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[85]  (.DIODE(\mprj.slave_data_rdata_to_inter[85] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[86]  (.DIODE(\mprj.slave_data_rdata_to_inter[86] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[87]  (.DIODE(\mprj.slave_data_rdata_to_inter[87] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[88]  (.DIODE(\mprj.slave_data_rdata_to_inter[88] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[89]  (.DIODE(\mprj.slave_data_rdata_to_inter[89] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[8]  (.DIODE(\mprj.slave_data_rdata_to_inter[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[90]  (.DIODE(\mprj.slave_data_rdata_to_inter[90] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[91]  (.DIODE(\mprj.slave_data_rdata_to_inter[91] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[92]  (.DIODE(\mprj.slave_data_rdata_to_inter[92] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[93]  (.DIODE(\mprj.slave_data_rdata_to_inter[93] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[94]  (.DIODE(\mprj.slave_data_rdata_to_inter[94] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[95]  (.DIODE(\mprj.slave_data_rdata_to_inter[95] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[96]  (.DIODE(\mprj.slave_data_rdata_to_inter[96] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[97]  (.DIODE(\mprj.slave_data_rdata_to_inter[97] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[98]  (.DIODE(\mprj.slave_data_rdata_to_inter[98] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[99]  (.DIODE(\mprj.slave_data_rdata_to_inter[99] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_i[9]  (.DIODE(\mprj.slave_data_rdata_to_inter[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[0]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[100]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[100] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[101]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[101] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[102]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[102] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[103]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[103] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[104]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[104] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[105]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[105] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[106]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[106] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[107]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[107] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[108]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[108] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[109]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[109] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[10]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[110]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[110] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[111]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[111] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[112]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[112] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[113]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[113] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[114]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[114] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[115]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[115] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[116]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[116] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[117]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[117] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[118]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[118] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[119]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[119] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[11]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[120]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[120] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[121]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[121] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[122]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[122] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[123]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[123] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[124]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[124] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[125]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[125] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[126]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[126] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[127]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[127] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[12]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[13]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[14]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[15]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[16]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[17]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[18]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[19]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[1]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[20]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[21]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[22]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[22] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[23]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[23] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[24]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[25]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[26]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[27]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[28]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[29]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[2]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[30]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[31]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[32]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[33]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[33] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[34]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[34] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[35]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[36]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[37]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[38]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[39]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[3]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[40]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[41]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[42]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[43]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[44]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[44] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[45]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[45] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[46]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[46] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[47]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[47] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[48]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[48] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[49]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[49] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[4]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[50]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[50] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[51]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[51] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[52]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[52] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[53]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[53] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[54]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[54] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[55]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[55] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[56]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[56] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[57]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[57] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[58]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[58] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[59]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[59] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[5]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[60]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[60] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[61]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[61] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[62]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[62] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[63]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[63] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[64]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[64] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[65]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[65] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[66]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[66] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[67]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[67] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[68]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[68] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[69]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[69] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[6]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[70]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[70] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[71]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[71] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[72]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[72] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[73]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[73] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[74]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[74] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[75]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[75] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[76]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[76] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[77]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[77] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[78]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[78] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[79]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[79] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[7]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[80]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[80] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[81]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[81] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[82]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[82] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[83]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[83] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[84]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[84] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[85]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[85] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[86]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[86] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[87]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[87] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[88]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[88] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[89]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[89] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[8]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[90]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[90] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[91]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[91] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[92]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[92] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[93]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[93] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[94]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[94] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[95]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[95] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[96]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[96] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[97]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[97] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[98]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[98] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[99]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[99] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_slave_data_rdata_to_inter_ro[9]  (.DIODE(\mprj.slave_data_rdata_to_inter_ro[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wb_clk_i  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wb_rst_i  (.DIODE(net117),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[0]  (.DIODE(net8),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[10]  (.DIODE(net9),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[11]  (.DIODE(net10),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[12]  (.DIODE(net11),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[13]  (.DIODE(net12),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[14]  (.DIODE(net13),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[15]  (.DIODE(net14),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[16]  (.DIODE(net15),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[17]  (.DIODE(net16),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[18]  (.DIODE(net17),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[19]  (.DIODE(net18),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[1]  (.DIODE(net19),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[20]  (.DIODE(net20),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[21]  (.DIODE(net21),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[22]  (.DIODE(net22),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[23]  (.DIODE(net23),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[24]  (.DIODE(net24),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[25]  (.DIODE(net25),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[26]  (.DIODE(net26),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[27]  (.DIODE(net27),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[28]  (.DIODE(net28),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[29]  (.DIODE(net29),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[2]  (.DIODE(net30),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[30]  (.DIODE(net31),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[31]  (.DIODE(net32),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[3]  (.DIODE(net33),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[4]  (.DIODE(net34),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[5]  (.DIODE(net35),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[6]  (.DIODE(net36),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[7]  (.DIODE(net37),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[8]  (.DIODE(net38),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_adr_i[9]  (.DIODE(net39),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_cyc_i  (.DIODE(net40),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[0]  (.DIODE(net41),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[10]  (.DIODE(net42),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[11]  (.DIODE(net43),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[12]  (.DIODE(net44),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[13]  (.DIODE(net45),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[14]  (.DIODE(net46),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[15]  (.DIODE(net47),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[16]  (.DIODE(net48),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[17]  (.DIODE(net49),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[18]  (.DIODE(net50),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[19]  (.DIODE(net51),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[1]  (.DIODE(net52),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[20]  (.DIODE(net53),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[21]  (.DIODE(net54),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[22]  (.DIODE(net55),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[23]  (.DIODE(net56),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[24]  (.DIODE(net57),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[25]  (.DIODE(net58),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[26]  (.DIODE(net59),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[27]  (.DIODE(net60),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[28]  (.DIODE(net61),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[29]  (.DIODE(net62),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[2]  (.DIODE(net63),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[30]  (.DIODE(net64),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[31]  (.DIODE(net65),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[3]  (.DIODE(net66),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[4]  (.DIODE(net67),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[5]  (.DIODE(net68),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[6]  (.DIODE(net69),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[7]  (.DIODE(net70),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[8]  (.DIODE(net71),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_dat_i[9]  (.DIODE(net72),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_sel_i[0]  (.DIODE(net73),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_sel_i[1]  (.DIODE(net74),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_sel_i[2]  (.DIODE(net75),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_sel_i[3]  (.DIODE(net76),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_stb_i  (.DIODE(net77),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.soric_soc_i_wbs_we_i  (.DIODE(net78),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[0]  (.DIODE(\mprj.slave_data_addr_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[1]  (.DIODE(\mprj.slave_data_addr_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[2]  (.DIODE(\mprj.slave_data_addr_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[3]  (.DIODE(\mprj.slave_data_addr_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[4]  (.DIODE(\mprj.slave_data_addr_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[5]  (.DIODE(\mprj.slave_data_addr_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[6]  (.DIODE(\mprj.slave_data_addr_to_inter[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[7]  (.DIODE(\mprj.slave_data_addr_to_inter[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr0[8]  (.DIODE(\mprj.slave_data_addr_to_inter[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[0]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[1]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[2]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[3]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[4]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[5]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[6]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[7]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_addr1[8]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_clk0  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_clk1  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_csb0  (.DIODE(_0000_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_csb1  (.DIODE(_0002_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[0]  (.DIODE(\mprj.slave_data_wdata_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[10]  (.DIODE(\mprj.slave_data_wdata_to_inter[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[11]  (.DIODE(\mprj.slave_data_wdata_to_inter[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[12]  (.DIODE(\mprj.slave_data_wdata_to_inter[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[13]  (.DIODE(\mprj.slave_data_wdata_to_inter[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[14]  (.DIODE(\mprj.slave_data_wdata_to_inter[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[15]  (.DIODE(\mprj.slave_data_wdata_to_inter[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[16]  (.DIODE(\mprj.slave_data_wdata_to_inter[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[17]  (.DIODE(\mprj.slave_data_wdata_to_inter[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[18]  (.DIODE(\mprj.slave_data_wdata_to_inter[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[19]  (.DIODE(\mprj.slave_data_wdata_to_inter[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[1]  (.DIODE(\mprj.slave_data_wdata_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[20]  (.DIODE(\mprj.slave_data_wdata_to_inter[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[21]  (.DIODE(\mprj.slave_data_wdata_to_inter[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[22]  (.DIODE(\mprj.slave_data_wdata_to_inter[22] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[23]  (.DIODE(\mprj.slave_data_wdata_to_inter[23] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[24]  (.DIODE(\mprj.slave_data_wdata_to_inter[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[25]  (.DIODE(\mprj.slave_data_wdata_to_inter[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[26]  (.DIODE(\mprj.slave_data_wdata_to_inter[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[27]  (.DIODE(\mprj.slave_data_wdata_to_inter[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[28]  (.DIODE(\mprj.slave_data_wdata_to_inter[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[29]  (.DIODE(\mprj.slave_data_wdata_to_inter[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[2]  (.DIODE(\mprj.slave_data_wdata_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[30]  (.DIODE(\mprj.slave_data_wdata_to_inter[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[31]  (.DIODE(\mprj.slave_data_wdata_to_inter[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[3]  (.DIODE(\mprj.slave_data_wdata_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[4]  (.DIODE(\mprj.slave_data_wdata_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[5]  (.DIODE(\mprj.slave_data_wdata_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[6]  (.DIODE(\mprj.slave_data_wdata_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[7]  (.DIODE(\mprj.slave_data_wdata_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[8]  (.DIODE(\mprj.slave_data_wdata_to_inter[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_din0[9]  (.DIODE(\mprj.slave_data_wdata_to_inter[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_web0  (.DIODE(_0001_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_wmask0[0]  (.DIODE(\mprj.slave_data_be_to_inter[0] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_wmask0[1]  (.DIODE(\mprj.slave_data_be_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_wmask0[2]  (.DIODE(\mprj.slave_data_be_to_inter[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_1_i_wmask0[3]  (.DIODE(\mprj.slave_data_be_to_inter[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[0]  (.DIODE(\mprj.slave_data_addr_to_inter[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[1]  (.DIODE(\mprj.slave_data_addr_to_inter[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[2]  (.DIODE(\mprj.slave_data_addr_to_inter[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[3]  (.DIODE(\mprj.slave_data_addr_to_inter[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[4]  (.DIODE(\mprj.slave_data_addr_to_inter[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[5]  (.DIODE(\mprj.slave_data_addr_to_inter[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[6]  (.DIODE(\mprj.slave_data_addr_to_inter[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[7]  (.DIODE(\mprj.slave_data_addr_to_inter[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr0[8]  (.DIODE(\mprj.slave_data_addr_to_inter[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[0]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[1]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[2]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[3]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[4]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[5]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[6]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[7]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_addr1[8]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_clk0  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_clk1  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_csb0  (.DIODE(_0003_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[0]  (.DIODE(\mprj.slave_data_wdata_to_inter[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[10]  (.DIODE(\mprj.slave_data_wdata_to_inter[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[11]  (.DIODE(\mprj.slave_data_wdata_to_inter[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[12]  (.DIODE(\mprj.slave_data_wdata_to_inter[44] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[13]  (.DIODE(\mprj.slave_data_wdata_to_inter[45] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[14]  (.DIODE(\mprj.slave_data_wdata_to_inter[46] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[15]  (.DIODE(\mprj.slave_data_wdata_to_inter[47] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[16]  (.DIODE(\mprj.slave_data_wdata_to_inter[48] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[17]  (.DIODE(\mprj.slave_data_wdata_to_inter[49] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[18]  (.DIODE(\mprj.slave_data_wdata_to_inter[50] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[19]  (.DIODE(\mprj.slave_data_wdata_to_inter[51] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[1]  (.DIODE(\mprj.slave_data_wdata_to_inter[33] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[20]  (.DIODE(\mprj.slave_data_wdata_to_inter[52] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[21]  (.DIODE(\mprj.slave_data_wdata_to_inter[53] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[22]  (.DIODE(\mprj.slave_data_wdata_to_inter[54] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[23]  (.DIODE(\mprj.slave_data_wdata_to_inter[55] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[24]  (.DIODE(\mprj.slave_data_wdata_to_inter[56] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[25]  (.DIODE(\mprj.slave_data_wdata_to_inter[57] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[26]  (.DIODE(\mprj.slave_data_wdata_to_inter[58] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[27]  (.DIODE(\mprj.slave_data_wdata_to_inter[59] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[28]  (.DIODE(\mprj.slave_data_wdata_to_inter[60] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[29]  (.DIODE(\mprj.slave_data_wdata_to_inter[61] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[2]  (.DIODE(\mprj.slave_data_wdata_to_inter[34] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[30]  (.DIODE(\mprj.slave_data_wdata_to_inter[62] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[31]  (.DIODE(\mprj.slave_data_wdata_to_inter[63] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[3]  (.DIODE(\mprj.slave_data_wdata_to_inter[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[4]  (.DIODE(\mprj.slave_data_wdata_to_inter[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[5]  (.DIODE(\mprj.slave_data_wdata_to_inter[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[6]  (.DIODE(\mprj.slave_data_wdata_to_inter[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[7]  (.DIODE(\mprj.slave_data_wdata_to_inter[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[8]  (.DIODE(\mprj.slave_data_wdata_to_inter[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_din0[9]  (.DIODE(\mprj.slave_data_wdata_to_inter[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_web0  (.DIODE(_0004_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_wmask0[0]  (.DIODE(\mprj.slave_data_be_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_wmask0[1]  (.DIODE(\mprj.slave_data_be_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_wmask0[2]  (.DIODE(\mprj.slave_data_be_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_2_i_wmask0[3]  (.DIODE(\mprj.slave_data_be_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[0]  (.DIODE(\mprj.slave_data_addr_to_inter[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[1]  (.DIODE(\mprj.slave_data_addr_to_inter[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[2]  (.DIODE(\mprj.slave_data_addr_to_inter[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[3]  (.DIODE(\mprj.slave_data_addr_to_inter[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[4]  (.DIODE(\mprj.slave_data_addr_to_inter[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[5]  (.DIODE(\mprj.slave_data_addr_to_inter[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[6]  (.DIODE(\mprj.slave_data_addr_to_inter[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[7]  (.DIODE(\mprj.slave_data_addr_to_inter[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr0[8]  (.DIODE(\mprj.slave_data_addr_to_inter[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[0]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[1]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[2]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[26] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[3]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[27] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[4]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[28] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[5]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[29] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[6]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[30] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[7]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[31] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_addr1[8]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_clk0  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_clk1  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_csb0  (.DIODE(_0006_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_csb1  (.DIODE(_0008_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[0]  (.DIODE(\mprj.slave_data_wdata_to_inter[64] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[10]  (.DIODE(\mprj.slave_data_wdata_to_inter[74] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[11]  (.DIODE(\mprj.slave_data_wdata_to_inter[75] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[12]  (.DIODE(\mprj.slave_data_wdata_to_inter[76] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[13]  (.DIODE(\mprj.slave_data_wdata_to_inter[77] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[14]  (.DIODE(\mprj.slave_data_wdata_to_inter[78] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[15]  (.DIODE(\mprj.slave_data_wdata_to_inter[79] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[16]  (.DIODE(\mprj.slave_data_wdata_to_inter[80] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[17]  (.DIODE(\mprj.slave_data_wdata_to_inter[81] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[18]  (.DIODE(\mprj.slave_data_wdata_to_inter[82] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[19]  (.DIODE(\mprj.slave_data_wdata_to_inter[83] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[1]  (.DIODE(\mprj.slave_data_wdata_to_inter[65] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[20]  (.DIODE(\mprj.slave_data_wdata_to_inter[84] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[21]  (.DIODE(\mprj.slave_data_wdata_to_inter[85] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[22]  (.DIODE(\mprj.slave_data_wdata_to_inter[86] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[23]  (.DIODE(\mprj.slave_data_wdata_to_inter[87] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[24]  (.DIODE(\mprj.slave_data_wdata_to_inter[88] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[25]  (.DIODE(\mprj.slave_data_wdata_to_inter[89] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[26]  (.DIODE(\mprj.slave_data_wdata_to_inter[90] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[27]  (.DIODE(\mprj.slave_data_wdata_to_inter[91] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[28]  (.DIODE(\mprj.slave_data_wdata_to_inter[92] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[29]  (.DIODE(\mprj.slave_data_wdata_to_inter[93] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[2]  (.DIODE(\mprj.slave_data_wdata_to_inter[66] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[30]  (.DIODE(\mprj.slave_data_wdata_to_inter[94] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[31]  (.DIODE(\mprj.slave_data_wdata_to_inter[95] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[3]  (.DIODE(\mprj.slave_data_wdata_to_inter[67] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[4]  (.DIODE(\mprj.slave_data_wdata_to_inter[68] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[5]  (.DIODE(\mprj.slave_data_wdata_to_inter[69] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[6]  (.DIODE(\mprj.slave_data_wdata_to_inter[70] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[7]  (.DIODE(\mprj.slave_data_wdata_to_inter[71] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[8]  (.DIODE(\mprj.slave_data_wdata_to_inter[72] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_din0[9]  (.DIODE(\mprj.slave_data_wdata_to_inter[73] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_web0  (.DIODE(_0007_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_wmask0[0]  (.DIODE(\mprj.slave_data_be_to_inter[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_wmask0[1]  (.DIODE(\mprj.slave_data_be_to_inter[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_wmask0[2]  (.DIODE(\mprj.slave_data_be_to_inter[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_3_i_wmask0[3]  (.DIODE(\mprj.slave_data_be_to_inter[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[0]  (.DIODE(\mprj.slave_data_addr_to_inter[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[1]  (.DIODE(\mprj.slave_data_addr_to_inter[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[2]  (.DIODE(\mprj.slave_data_addr_to_inter[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[3]  (.DIODE(\mprj.slave_data_addr_to_inter[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[4]  (.DIODE(\mprj.slave_data_addr_to_inter[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[5]  (.DIODE(\mprj.slave_data_addr_to_inter[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[6]  (.DIODE(\mprj.slave_data_addr_to_inter[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[7]  (.DIODE(\mprj.slave_data_addr_to_inter[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr0[8]  (.DIODE(\mprj.slave_data_addr_to_inter[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[0]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[1]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[2]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[3]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[4]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[5]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[6]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[7]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_addr1[8]  (.DIODE(\mprj.slave_data_addr_to_inter_ro[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_clk0  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_clk1  (.DIODE(wb_clk_i),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_csb0  (.DIODE(_0009_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_csb1  (.DIODE(_0011_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[0]  (.DIODE(\mprj.slave_data_wdata_to_inter[96] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[10]  (.DIODE(\mprj.slave_data_wdata_to_inter[106] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[11]  (.DIODE(\mprj.slave_data_wdata_to_inter[107] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[12]  (.DIODE(\mprj.slave_data_wdata_to_inter[108] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[13]  (.DIODE(\mprj.slave_data_wdata_to_inter[109] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[14]  (.DIODE(\mprj.slave_data_wdata_to_inter[110] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[15]  (.DIODE(\mprj.slave_data_wdata_to_inter[111] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[16]  (.DIODE(\mprj.slave_data_wdata_to_inter[112] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[17]  (.DIODE(\mprj.slave_data_wdata_to_inter[113] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[18]  (.DIODE(\mprj.slave_data_wdata_to_inter[114] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[19]  (.DIODE(\mprj.slave_data_wdata_to_inter[115] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[1]  (.DIODE(\mprj.slave_data_wdata_to_inter[97] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[20]  (.DIODE(\mprj.slave_data_wdata_to_inter[116] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[21]  (.DIODE(\mprj.slave_data_wdata_to_inter[117] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[22]  (.DIODE(\mprj.slave_data_wdata_to_inter[118] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[23]  (.DIODE(\mprj.slave_data_wdata_to_inter[119] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[24]  (.DIODE(\mprj.slave_data_wdata_to_inter[120] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[25]  (.DIODE(\mprj.slave_data_wdata_to_inter[121] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[26]  (.DIODE(\mprj.slave_data_wdata_to_inter[122] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[27]  (.DIODE(\mprj.slave_data_wdata_to_inter[123] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[28]  (.DIODE(\mprj.slave_data_wdata_to_inter[124] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[29]  (.DIODE(\mprj.slave_data_wdata_to_inter[125] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[2]  (.DIODE(\mprj.slave_data_wdata_to_inter[98] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[30]  (.DIODE(\mprj.slave_data_wdata_to_inter[126] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[31]  (.DIODE(\mprj.slave_data_wdata_to_inter[127] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[3]  (.DIODE(\mprj.slave_data_wdata_to_inter[99] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[4]  (.DIODE(\mprj.slave_data_wdata_to_inter[100] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[5]  (.DIODE(\mprj.slave_data_wdata_to_inter[101] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[6]  (.DIODE(\mprj.slave_data_wdata_to_inter[102] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[7]  (.DIODE(\mprj.slave_data_wdata_to_inter[103] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[8]  (.DIODE(\mprj.slave_data_wdata_to_inter[104] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_din0[9]  (.DIODE(\mprj.slave_data_wdata_to_inter[105] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_web0  (.DIODE(_0010_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_wmask0[0]  (.DIODE(\mprj.slave_data_be_to_inter[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_wmask0[1]  (.DIODE(\mprj.slave_data_be_to_inter[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_wmask0[2]  (.DIODE(\mprj.slave_data_be_to_inter[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_mprj.sram_4_i_wmask0[3]  (.DIODE(\mprj.slave_data_be_to_inter[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output100_A (.DIODE(net100),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output101_A (.DIODE(net101),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output102_A (.DIODE(net102),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output103_A (.DIODE(net103),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output104_A (.DIODE(net104),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output105_A (.DIODE(net105),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output106_A (.DIODE(net106),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output107_A (.DIODE(net107),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output108_A (.DIODE(net108),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output109_A (.DIODE(net109),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output110_A (.DIODE(net110),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output111_A (.DIODE(net111),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output112_A (.DIODE(net112),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output113_A (.DIODE(net113),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output114_A (.DIODE(net114),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output115_A (.DIODE(net115),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output79_A (.DIODE(net121),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output80_A (.DIODE(net120),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output81_A (.DIODE(net161),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output82_A (.DIODE(net82),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output83_A (.DIODE(net83),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output84_A (.DIODE(net84),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output85_A (.DIODE(net85),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output86_A (.DIODE(net86),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output87_A (.DIODE(net87),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output88_A (.DIODE(net88),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output89_A (.DIODE(net89),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output90_A (.DIODE(net90),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output91_A (.DIODE(net91),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output92_A (.DIODE(net92),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output93_A (.DIODE(net93),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output94_A (.DIODE(net94),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output95_A (.DIODE(net95),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output96_A (.DIODE(net96),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output97_A (.DIODE(net97),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output98_A (.DIODE(net98),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_output99_A (.DIODE(net99),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater116_A (.DIODE(net117),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater117_A (.DIODE(net7),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater118_A (.DIODE(net2),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater119_A (.DIODE(net1),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater120_A (.DIODE(net80),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater121_A (.DIODE(net79),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater122_A (.DIODE(\mprj.master_data_rvalid_to_inter_ro[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater123_A (.DIODE(\mprj.master_data_rvalid_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater124_A (.DIODE(\mprj.master_data_rdata_to_inter_ro[63] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater125_A (.DIODE(\mprj.master_data_rdata_to_inter_ro[62] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater126_A (.DIODE(\mprj.master_data_rdata_to_inter_ro[61] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater127_A (.DIODE(\mprj.master_data_rdata_to_inter[63] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater128_A (.DIODE(\mprj.master_data_rdata_to_inter[62] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater129_A (.DIODE(\mprj.master_data_rdata_to_inter[61] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater130_A (.DIODE(\mprj.master_data_rdata_to_inter[60] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater131_A (.DIODE(\mprj.master_data_rdata_to_inter[59] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater132_A (.DIODE(\mprj.master_data_rdata_to_inter[58] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater133_A (.DIODE(\mprj.master_data_rdata_to_inter[57] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater134_A (.DIODE(\mprj.master_data_rdata_to_inter[56] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater135_A (.DIODE(\mprj.master_data_rdata_to_inter[55] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater136_A (.DIODE(\mprj.master_data_rdata_to_inter[54] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater137_A (.DIODE(\mprj.master_data_rdata_to_inter[53] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater138_A (.DIODE(\mprj.master_data_rdata_to_inter[52] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater139_A (.DIODE(\mprj.master_data_rdata_to_inter[51] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater140_A (.DIODE(\mprj.master_data_rdata_to_inter[50] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater141_A (.DIODE(\mprj.master_data_rdata_to_inter[49] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater142_A (.DIODE(\mprj.master_data_rdata_to_inter[48] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater143_A (.DIODE(\mprj.master_data_rdata_to_inter[47] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater144_A (.DIODE(\mprj.master_data_rdata_to_inter[46] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater145_A (.DIODE(\mprj.master_data_rdata_to_inter[45] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater146_A (.DIODE(\mprj.master_data_rdata_to_inter[44] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater147_A (.DIODE(\mprj.master_data_rdata_to_inter[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater148_A (.DIODE(\mprj.master_data_rdata_to_inter[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater149_A (.DIODE(\mprj.master_data_rdata_to_inter[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater150_A (.DIODE(\mprj.master_data_rdata_to_inter[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater151_A (.DIODE(\mprj.master_data_rdata_to_inter[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater152_A (.DIODE(\mprj.master_data_rdata_to_inter[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater153_A (.DIODE(\mprj.master_data_rdata_to_inter[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater154_A (.DIODE(\mprj.master_data_rdata_to_inter[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater155_A (.DIODE(\mprj.master_data_rdata_to_inter[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater156_A (.DIODE(\mprj.master_data_rdata_to_inter[34] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater157_A (.DIODE(\mprj.master_data_rdata_to_inter[33] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater158_A (.DIODE(\mprj.master_data_rdata_to_inter[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater159_A (.DIODE(\mprj.master_data_gnt_to_inter_ro[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater160_A (.DIODE(\mprj.master_data_gnt_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater161_A (.DIODE(net81),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater162_A (.DIODE(\mprj.master_data_req_to_inter_ro[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater163_A (.DIODE(\mprj.master_data_addr_to_inter_ro[22] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater164_A (.DIODE(\mprj.master_data_addr_to_inter_ro[21] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater165_A (.DIODE(\mprj.master_data_addr_to_inter_ro[20] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater166_A (.DIODE(\mprj.master_data_addr_to_inter_ro[19] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater167_A (.DIODE(\mprj.master_data_addr_to_inter_ro[18] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater168_A (.DIODE(\mprj.master_data_addr_to_inter_ro[17] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater169_A (.DIODE(\mprj.master_data_addr_to_inter_ro[16] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater170_A (.DIODE(\mprj.master_data_addr_to_inter_ro[15] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater171_A (.DIODE(\mprj.master_data_addr_to_inter_ro[14] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater172_A (.DIODE(\mprj.master_data_addr_to_inter_ro[25] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater173_A (.DIODE(\mprj.master_data_addr_to_inter_ro[24] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater174_A (.DIODE(\mprj.master_data_addr_to_inter_ro[23] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater175_A (.DIODE(\mprj.master_data_addr_to_inter_ro[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater176_A (.DIODE(\mprj.master_data_we_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater177_A (.DIODE(\mprj.master_data_wdata_to_inter[41] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater178_A (.DIODE(\mprj.master_data_wdata_to_inter[40] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater179_A (.DIODE(\mprj.master_data_wdata_to_inter[39] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater180_A (.DIODE(\mprj.master_data_wdata_to_inter[38] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater181_A (.DIODE(\mprj.master_data_wdata_to_inter[37] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater182_A (.DIODE(\mprj.master_data_wdata_to_inter[36] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater183_A (.DIODE(\mprj.master_data_wdata_to_inter[35] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater184_A (.DIODE(\mprj.master_data_wdata_to_inter[63] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater185_A (.DIODE(\mprj.master_data_wdata_to_inter[62] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater186_A (.DIODE(\mprj.master_data_wdata_to_inter[34] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater187_A (.DIODE(\mprj.master_data_wdata_to_inter[61] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater188_A (.DIODE(\mprj.master_data_wdata_to_inter[60] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater189_A (.DIODE(\mprj.master_data_wdata_to_inter[59] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater190_A (.DIODE(\mprj.master_data_wdata_to_inter[58] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater191_A (.DIODE(\mprj.master_data_wdata_to_inter[57] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater192_A (.DIODE(\mprj.master_data_wdata_to_inter[56] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater193_A (.DIODE(\mprj.master_data_wdata_to_inter[55] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater194_A (.DIODE(\mprj.master_data_wdata_to_inter[54] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater195_A (.DIODE(\mprj.master_data_wdata_to_inter[53] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater196_A (.DIODE(\mprj.master_data_wdata_to_inter[52] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater197_A (.DIODE(\mprj.master_data_wdata_to_inter[33] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater198_A (.DIODE(\mprj.master_data_wdata_to_inter[51] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater199_A (.DIODE(\mprj.master_data_wdata_to_inter[50] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater200_A (.DIODE(\mprj.master_data_wdata_to_inter[49] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater201_A (.DIODE(\mprj.master_data_wdata_to_inter[48] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater202_A (.DIODE(\mprj.master_data_wdata_to_inter[47] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater203_A (.DIODE(\mprj.master_data_wdata_to_inter[46] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater204_A (.DIODE(\mprj.master_data_wdata_to_inter[45] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater205_A (.DIODE(\mprj.master_data_wdata_to_inter[44] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater206_A (.DIODE(\mprj.master_data_wdata_to_inter[43] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater207_A (.DIODE(\mprj.master_data_wdata_to_inter[42] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater208_A (.DIODE(\mprj.master_data_wdata_to_inter[32] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater209_A (.DIODE(\mprj.master_data_req_to_inter[1] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater210_A (.DIODE(\mprj.master_data_be_to_inter[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater211_A (.DIODE(\mprj.master_data_be_to_inter[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater212_A (.DIODE(\mprj.master_data_be_to_inter[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater213_A (.DIODE(\mprj.master_data_be_to_inter[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater214_A (.DIODE(\mprj.flexbex_addr_o[9] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater215_A (.DIODE(\mprj.flexbex_addr_o[8] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater216_A (.DIODE(\mprj.flexbex_addr_o[7] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater217_A (.DIODE(\mprj.flexbex_addr_o[6] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater218_A (.DIODE(\mprj.flexbex_addr_o[5] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater219_A (.DIODE(\mprj.flexbex_addr_o[4] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater220_A (.DIODE(\mprj.flexbex_addr_o[3] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater221_A (.DIODE(\mprj.flexbex_addr_o[2] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater222_A (.DIODE(\mprj.flexbex_addr_o[13] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater223_A (.DIODE(\mprj.flexbex_addr_o[12] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater224_A (.DIODE(\mprj.flexbex_addr_o[11] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__diode_2 ANTENNA_repeater225_A (.DIODE(\mprj.flexbex_addr_o[10] ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_12 _0442_ (.A(\mprj.slave_data_req_to_inter_ro[3] ),
    .Y(_0011_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__clkinv_4 _0443_ (.A(\mprj.slave_data_we_to_inter[3] ),
    .Y(_0010_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__clkinv_4 _0444_ (.A(\mprj.slave_data_req_to_inter[3] ),
    .Y(_0009_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__clkinv_16 _0445_ (.A(\mprj.slave_data_req_to_inter_ro[2] ),
    .Y(_0008_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_2 _0446_ (.A(\mprj.slave_data_we_to_inter[2] ),
    .Y(_0007_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_2 _0447_ (.A(\mprj.slave_data_req_to_inter[2] ),
    .Y(_0006_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_2 _0448_ (.A(\mprj.slave_data_req_to_inter_ro[1] ),
    .Y(_0005_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_8 _0449_ (.A(\mprj.slave_data_we_to_inter[1] ),
    .Y(_0004_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_8 _0450_ (.A(\mprj.slave_data_req_to_inter[1] ),
    .Y(_0003_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_2 _0451_ (.A(\mprj.slave_data_req_to_inter_ro[0] ),
    .Y(_0002_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_6 _0452_ (.A(\mprj.slave_data_we_to_inter[0] ),
    .Y(_0001_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__inv_6 _0453_ (.A(\mprj.slave_data_req_to_inter[0] ),
    .Y(_0000_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__clkinv_16 _0454_ (.A(net116),
    .Y(\mprj.reset_ni ),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0455_ (.HI(io_oeb[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0456_ (.HI(io_oeb[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0457_ (.HI(io_oeb[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0458_ (.HI(io_oeb[3]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0459_ (.HI(io_oeb[4]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0460_ (.HI(io_oeb[5]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0461_ (.HI(io_oeb[6]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0462_ (.HI(io_oeb[7]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0463_ (.HI(io_oeb[8]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0464_ (.HI(io_oeb[9]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0465_ (.HI(_0012_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0466_ (.HI(_0013_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0467_ (.HI(_0014_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0468_ (.HI(_0015_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0469_ (.LO(la_data_out[72]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0470_ (.LO(la_data_out[73]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0471_ (.LO(la_data_out[74]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0472_ (.LO(la_data_out[75]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0473_ (.LO(la_data_out[76]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0474_ (.LO(la_data_out[77]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0475_ (.LO(la_data_out[78]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0476_ (.LO(la_data_out[79]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0477_ (.LO(la_data_out[80]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0478_ (.LO(la_data_out[81]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0479_ (.LO(la_data_out[82]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0480_ (.LO(la_data_out[83]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0481_ (.LO(la_data_out[84]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0482_ (.LO(la_data_out[85]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0483_ (.LO(la_data_out[86]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0484_ (.LO(la_data_out[87]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0485_ (.LO(la_data_out[88]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0486_ (.LO(la_data_out[89]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0487_ (.LO(la_data_out[90]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0488_ (.LO(la_data_out[91]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0489_ (.LO(la_data_out[92]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0490_ (.LO(la_data_out[93]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0491_ (.LO(la_data_out[94]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0492_ (.LO(la_data_out[95]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0493_ (.LO(la_data_out[96]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0494_ (.LO(la_data_out[97]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0495_ (.LO(la_data_out[98]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0496_ (.LO(la_data_out[99]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0497_ (.LO(la_data_out[100]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0498_ (.LO(la_data_out[101]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0499_ (.LO(la_data_out[102]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0500_ (.LO(la_data_out[103]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0501_ (.LO(la_data_out[104]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0502_ (.LO(la_data_out[105]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0503_ (.LO(la_data_out[106]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0504_ (.LO(la_data_out[107]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0505_ (.LO(la_data_out[108]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0506_ (.LO(la_data_out[109]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0507_ (.LO(la_data_out[110]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0508_ (.LO(la_data_out[111]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0509_ (.LO(la_data_out[112]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0510_ (.LO(la_data_out[113]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0511_ (.LO(la_data_out[114]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0512_ (.LO(la_data_out[115]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0513_ (.LO(la_data_out[116]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0514_ (.LO(la_data_out[117]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0515_ (.LO(la_data_out[118]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0516_ (.LO(la_data_out[119]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0517_ (.LO(la_data_out[120]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0518_ (.LO(la_data_out[121]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0519_ (.LO(la_data_out[122]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0520_ (.LO(la_data_out[123]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0521_ (.LO(la_data_out[124]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0522_ (.LO(la_data_out[125]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0523_ (.LO(la_data_out[126]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0524_ (.LO(la_data_out[127]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0525_ (.LO(io_out[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0526_ (.LO(io_out[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0527_ (.LO(io_out[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0528_ (.LO(io_out[3]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0529_ (.LO(io_out[4]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0530_ (.LO(io_out[5]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0531_ (.LO(io_out[6]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0532_ (.LO(io_out[7]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0533_ (.LO(io_out[8]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0534_ (.LO(io_out[9]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0535_ (.LO(io_out[13]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0536_ (.LO(io_out[14]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0537_ (.LO(io_out[15]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0538_ (.LO(io_out[17]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0539_ (.LO(io_out[18]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0540_ (.LO(io_out[19]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0541_ (.LO(io_out[20]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0542_ (.LO(io_out[21]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0543_ (.LO(io_out[22]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0544_ (.LO(io_out[23]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0545_ (.LO(io_out[24]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0546_ (.LO(io_out[25]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0547_ (.LO(io_out[26]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0548_ (.LO(io_out[27]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0549_ (.LO(io_out[28]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0550_ (.LO(io_out[29]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0551_ (.LO(io_out[30]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0552_ (.LO(io_out[31]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0553_ (.LO(io_out[32]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0554_ (.LO(io_out[33]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0555_ (.LO(io_out[34]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0556_ (.LO(io_out[35]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0557_ (.LO(io_out[36]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0558_ (.LO(io_out[37]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0559_ (.LO(io_oeb[10]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0560_ (.LO(io_oeb[11]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0561_ (.LO(io_oeb[12]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0562_ (.LO(io_oeb[13]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0563_ (.LO(io_oeb[14]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0564_ (.LO(io_oeb[15]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0565_ (.LO(io_oeb[16]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0566_ (.LO(io_oeb[17]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0567_ (.LO(io_oeb[18]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0568_ (.LO(io_oeb[19]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0569_ (.LO(io_oeb[20]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0570_ (.LO(io_oeb[21]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0571_ (.LO(io_oeb[22]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0572_ (.LO(io_oeb[23]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0573_ (.LO(io_oeb[24]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0574_ (.LO(io_oeb[25]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0575_ (.LO(io_oeb[26]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0576_ (.LO(io_oeb[27]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0577_ (.LO(io_oeb[28]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0578_ (.LO(io_oeb[29]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0579_ (.LO(io_oeb[30]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0580_ (.LO(io_oeb[31]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0581_ (.LO(io_oeb[32]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0582_ (.LO(io_oeb[33]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0583_ (.LO(io_oeb[34]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0584_ (.LO(io_oeb[35]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0585_ (.LO(io_oeb[36]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0586_ (.LO(io_oeb[37]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0587_ (.LO(user_irq[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0588_ (.LO(user_irq[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0589_ (.LO(user_irq[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0590_ (.LO(_0016_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0591_ (.LO(_0017_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0592_ (.LO(_0018_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0593_ (.LO(_0019_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0594_ (.LO(_0020_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0595_ (.LO(_0021_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0596_ (.LO(_0022_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0597_ (.LO(_0023_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0598_ (.LO(_0024_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0599_ (.LO(_0025_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0600_ (.LO(_0026_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0601_ (.LO(_0027_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0602_ (.LO(_0028_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0603_ (.LO(_0029_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0604_ (.LO(_0030_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0605_ (.LO(_0031_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0606_ (.LO(_0032_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0607_ (.LO(_0033_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0608_ (.LO(_0034_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0609_ (.LO(_0035_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0610_ (.LO(_0036_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0611_ (.LO(_0037_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0612_ (.LO(_0038_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0613_ (.LO(_0039_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0614_ (.LO(_0040_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0615_ (.LO(_0041_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0616_ (.LO(_0042_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0617_ (.LO(_0043_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0618_ (.LO(_0044_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0619_ (.LO(_0045_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0620_ (.LO(_0046_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0621_ (.LO(_0047_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0622_ (.LO(_0048_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0623_ (.LO(_0049_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0624_ (.LO(_0050_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0625_ (.LO(_0051_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0626_ (.LO(_0052_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0627_ (.LO(_0053_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0628_ (.LO(_0054_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0629_ (.LO(_0055_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0630_ (.LO(_0056_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0631_ (.LO(_0057_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0632_ (.LO(_0058_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0633_ (.LO(_0059_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0634_ (.LO(_0060_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0635_ (.LO(_0061_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0636_ (.LO(_0062_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0637_ (.LO(_0063_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0638_ (.LO(_0064_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0639_ (.LO(_0065_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0640_ (.LO(_0066_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0641_ (.LO(_0067_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0642_ (.LO(_0068_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0643_ (.LO(_0069_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0644_ (.LO(_0070_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0645_ (.LO(_0071_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0646_ (.LO(_0072_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0647_ (.LO(_0073_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0648_ (.LO(_0074_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0649_ (.LO(_0075_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0650_ (.LO(_0076_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0651_ (.LO(_0077_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0652_ (.LO(_0078_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0653_ (.LO(_0079_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0654_ (.LO(_0080_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0655_ (.LO(_0081_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0656_ (.LO(_0082_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0657_ (.LO(_0083_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0658_ (.LO(_0084_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0659_ (.LO(_0085_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0660_ (.LO(_0086_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0661_ (.LO(_0087_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0662_ (.LO(_0088_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0663_ (.LO(_0089_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0664_ (.LO(_0090_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0665_ (.LO(_0091_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0666_ (.LO(_0092_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0667_ (.LO(_0093_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0668_ (.LO(_0094_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0669_ (.LO(_0095_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0670_ (.LO(_0096_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0671_ (.LO(_0097_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0672_ (.LO(_0098_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0673_ (.LO(_0099_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0674_ (.LO(_0100_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0675_ (.LO(_0101_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0676_ (.LO(_0102_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0677_ (.LO(_0103_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0678_ (.LO(_0104_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0679_ (.LO(_0105_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0680_ (.LO(_0106_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0681_ (.LO(_0107_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0682_ (.LO(_0108_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0683_ (.LO(_0109_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0684_ (.LO(_0110_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0685_ (.LO(_0111_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0686_ (.LO(_0112_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0687_ (.LO(_0113_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0688_ (.LO(_0114_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0689_ (.LO(_0115_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0690_ (.LO(_0116_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0691_ (.LO(_0117_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0692_ (.LO(_0118_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0693_ (.LO(_0119_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0694_ (.LO(_0120_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0695_ (.LO(_0121_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0696_ (.LO(_0122_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0697_ (.LO(_0123_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0698_ (.LO(_0124_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0699_ (.LO(_0125_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0700_ (.LO(_0126_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0701_ (.LO(_0127_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0702_ (.LO(_0128_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0703_ (.LO(_0129_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0704_ (.LO(_0130_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0705_ (.LO(_0131_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0706_ (.LO(_0132_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0707_ (.LO(_0133_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0708_ (.LO(_0134_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0709_ (.LO(_0135_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0710_ (.LO(_0136_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0711_ (.LO(_0137_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0712_ (.LO(_0138_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0713_ (.LO(_0139_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0714_ (.LO(_0140_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0715_ (.LO(_0141_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0716_ (.LO(_0142_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0717_ (.LO(_0143_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0718_ (.LO(_0144_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0719_ (.LO(_0145_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0720_ (.LO(_0146_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0721_ (.LO(_0147_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0722_ (.LO(_0148_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0723_ (.LO(_0149_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0724_ (.LO(_0150_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0725_ (.LO(_0151_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0726_ (.LO(_0152_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0727_ (.LO(_0153_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0728_ (.LO(_0154_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0729_ (.LO(_0155_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0730_ (.LO(_0156_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0731_ (.LO(_0157_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0732_ (.LO(_0158_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0733_ (.LO(_0159_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0734_ (.LO(_0160_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0735_ (.LO(_0161_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0736_ (.LO(_0162_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0737_ (.LO(_0163_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0738_ (.LO(_0164_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0739_ (.LO(_0165_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0740_ (.LO(_0166_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0741_ (.LO(_0167_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0742_ (.LO(_0168_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0743_ (.LO(_0169_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0744_ (.LO(_0170_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0745_ (.LO(_0171_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0746_ (.LO(_0172_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0747_ (.LO(_0173_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0748_ (.LO(_0174_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0749_ (.LO(_0175_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0750_ (.LO(_0176_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0751_ (.LO(_0177_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0752_ (.LO(_0178_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0753_ (.LO(_0179_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0754_ (.LO(_0180_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0755_ (.LO(_0181_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0756_ (.LO(_0182_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0757_ (.LO(_0183_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0758_ (.LO(_0184_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0759_ (.LO(_0185_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0760_ (.LO(_0186_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0761_ (.LO(_0187_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0762_ (.LO(_0188_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0763_ (.LO(_0189_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0764_ (.LO(_0190_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0765_ (.LO(_0191_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0766_ (.LO(_0192_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0767_ (.LO(_0193_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0768_ (.LO(_0194_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0769_ (.LO(_0195_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0770_ (.LO(_0196_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0771_ (.LO(_0197_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0772_ (.LO(_0198_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0773_ (.LO(_0199_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0774_ (.LO(_0200_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0775_ (.LO(_0201_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0776_ (.LO(_0202_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0777_ (.LO(_0203_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0778_ (.LO(_0204_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0779_ (.LO(_0205_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0780_ (.LO(_0206_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0781_ (.LO(_0207_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0782_ (.LO(_0208_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0783_ (.LO(_0209_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0784_ (.LO(_0210_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0785_ (.LO(_0211_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0786_ (.LO(_0212_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0787_ (.LO(_0213_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0788_ (.LO(_0214_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0789_ (.LO(_0215_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0790_ (.LO(_0216_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0791_ (.LO(_0217_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0792_ (.LO(_0218_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0793_ (.LO(_0219_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0794_ (.LO(_0220_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0795_ (.LO(_0221_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0796_ (.LO(_0222_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0797_ (.LO(_0223_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0798_ (.LO(_0224_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0799_ (.LO(_0225_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0800_ (.LO(_0226_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0801_ (.LO(_0227_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0802_ (.LO(_0228_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0803_ (.LO(_0229_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0804_ (.LO(_0230_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0805_ (.LO(_0231_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0806_ (.LO(_0232_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0807_ (.LO(_0233_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0808_ (.LO(_0234_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0809_ (.LO(_0235_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0810_ (.LO(_0236_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0811_ (.LO(_0237_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0812_ (.LO(_0238_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0813_ (.LO(_0239_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0814_ (.LO(_0240_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0815_ (.LO(_0241_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0816_ (.LO(_0242_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0817_ (.LO(_0243_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0818_ (.LO(_0244_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0819_ (.LO(_0245_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0820_ (.LO(_0246_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0821_ (.LO(_0247_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0822_ (.LO(_0248_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0823_ (.LO(_0249_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0824_ (.LO(_0250_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0825_ (.LO(_0251_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0826_ (.LO(_0252_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0827_ (.LO(_0253_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0828_ (.LO(_0254_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0829_ (.LO(_0255_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0830_ (.LO(_0256_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0831_ (.LO(_0257_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0832_ (.LO(_0258_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0833_ (.LO(_0259_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0834_ (.LO(_0260_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0835_ (.LO(_0261_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0836_ (.LO(_0262_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0837_ (.LO(_0263_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0838_ (.LO(_0264_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0839_ (.LO(_0265_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0840_ (.LO(_0266_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0841_ (.LO(_0267_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0842_ (.LO(_0268_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0843_ (.LO(_0269_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0844_ (.LO(_0270_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0845_ (.LO(_0271_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0846_ (.LO(_0272_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0847_ (.LO(_0273_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0848_ (.LO(_0274_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0849_ (.LO(_0275_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0850_ (.LO(_0276_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0851_ (.LO(_0277_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0852_ (.LO(_0278_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0853_ (.LO(_0279_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0854_ (.LO(_0280_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0855_ (.LO(_0281_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0856_ (.LO(_0282_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0857_ (.LO(_0283_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0858_ (.LO(_0284_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0859_ (.LO(_0285_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0860_ (.LO(_0286_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0861_ (.LO(_0287_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0862_ (.LO(_0288_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0863_ (.LO(_0289_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0864_ (.LO(_0290_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0865_ (.LO(_0291_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0866_ (.LO(_0292_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0867_ (.LO(_0293_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0868_ (.LO(_0294_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0869_ (.LO(_0295_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0870_ (.LO(_0296_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0871_ (.LO(_0297_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0872_ (.LO(_0298_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0873_ (.LO(_0299_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0874_ (.LO(_0300_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0875_ (.LO(_0301_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0876_ (.LO(_0302_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0877_ (.LO(_0303_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0878_ (.LO(_0304_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0879_ (.LO(_0305_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0880_ (.LO(_0306_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0881_ (.LO(_0307_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0882_ (.LO(_0308_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0883_ (.LO(_0309_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0884_ (.LO(_0310_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0885_ (.LO(_0311_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0886_ (.LO(_0312_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0887_ (.LO(_0313_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0888_ (.LO(_0314_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0889_ (.LO(_0315_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0890_ (.LO(_0316_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0891_ (.LO(_0317_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0892_ (.LO(_0318_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0893_ (.LO(_0319_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0894_ (.LO(_0320_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0895_ (.LO(_0321_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0896_ (.LO(_0322_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0897_ (.LO(_0323_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0898_ (.LO(_0324_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0899_ (.LO(_0325_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0900_ (.LO(_0326_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0901_ (.LO(_0327_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0902_ (.LO(_0328_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0903_ (.LO(_0329_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0904_ (.LO(_0330_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0905_ (.LO(_0331_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0906_ (.LO(_0332_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0907_ (.LO(_0333_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0908_ (.LO(_0334_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0909_ (.LO(_0335_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0910_ (.LO(_0336_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0911_ (.LO(_0337_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0912_ (.LO(_0338_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0913_ (.LO(_0339_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0914_ (.LO(_0340_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0915_ (.LO(_0341_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0916_ (.LO(_0342_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0917_ (.LO(_0343_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0918_ (.LO(_0344_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0919_ (.LO(_0345_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0920_ (.LO(_0346_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0921_ (.LO(_0347_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0922_ (.LO(_0348_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0923_ (.LO(_0349_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0924_ (.LO(_0350_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0925_ (.LO(_0351_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0926_ (.LO(_0352_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0927_ (.LO(_0353_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0928_ (.LO(_0354_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0929_ (.LO(_0355_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0930_ (.LO(_0356_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0931_ (.LO(_0357_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0932_ (.LO(_0358_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0933_ (.LO(_0359_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0934_ (.LO(_0360_),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0935_ (.LO(la_data_out[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0936_ (.LO(la_data_out[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0937_ (.LO(la_data_out[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0938_ (.LO(la_data_out[3]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0939_ (.LO(la_data_out[4]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0940_ (.LO(la_data_out[5]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0941_ (.LO(la_data_out[6]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0942_ (.LO(la_data_out[7]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0943_ (.LO(la_data_out[8]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0944_ (.LO(la_data_out[9]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0945_ (.LO(la_data_out[10]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0946_ (.LO(la_data_out[11]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0947_ (.LO(la_data_out[12]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0948_ (.LO(la_data_out[13]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0949_ (.LO(la_data_out[14]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0950_ (.LO(la_data_out[15]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0951_ (.LO(la_data_out[16]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0952_ (.LO(la_data_out[17]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0953_ (.LO(la_data_out[18]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0954_ (.LO(la_data_out[19]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0955_ (.LO(la_data_out[20]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0956_ (.LO(la_data_out[21]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0957_ (.LO(la_data_out[22]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0958_ (.LO(la_data_out[23]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0959_ (.LO(la_data_out[24]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0960_ (.LO(la_data_out[25]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0961_ (.LO(la_data_out[26]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0962_ (.LO(la_data_out[27]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0963_ (.LO(la_data_out[28]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0964_ (.LO(la_data_out[29]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0965_ (.LO(la_data_out[30]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0966_ (.LO(la_data_out[31]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0967_ (.LO(la_data_out[32]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0968_ (.LO(la_data_out[33]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0969_ (.LO(la_data_out[34]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0970_ (.LO(la_data_out[35]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0971_ (.LO(la_data_out[36]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0972_ (.LO(la_data_out[37]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0973_ (.LO(la_data_out[38]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0974_ (.LO(la_data_out[39]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0975_ (.LO(la_data_out[40]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0976_ (.LO(la_data_out[41]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0977_ (.LO(la_data_out[42]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0978_ (.LO(la_data_out[43]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0979_ (.LO(la_data_out[44]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0980_ (.LO(la_data_out[45]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0981_ (.LO(la_data_out[46]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0982_ (.LO(la_data_out[47]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0983_ (.LO(la_data_out[48]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0984_ (.LO(la_data_out[49]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0985_ (.LO(la_data_out[50]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0986_ (.LO(la_data_out[51]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0987_ (.LO(la_data_out[52]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0988_ (.LO(la_data_out[53]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0989_ (.LO(la_data_out[54]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0990_ (.LO(la_data_out[55]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0991_ (.LO(la_data_out[56]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0992_ (.LO(la_data_out[57]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0993_ (.LO(la_data_out[58]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0994_ (.LO(la_data_out[59]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0995_ (.LO(la_data_out[60]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0996_ (.LO(la_data_out[61]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0997_ (.LO(la_data_out[62]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0998_ (.LO(la_data_out[63]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _0999_ (.LO(la_data_out[64]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _1000_ (.LO(la_data_out[65]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _1001_ (.LO(la_data_out[66]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _1002_ (.LO(la_data_out[67]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _1003_ (.LO(la_data_out[68]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _1004_ (.LO(la_data_out[69]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _1005_ (.LO(la_data_out[70]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__conb_1 _1006_ (.LO(la_data_out[71]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input1 (.A(io_in[4]),
    .X(net1),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input10 (.A(wbs_adr_i[11]),
    .X(net10),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input11 (.A(wbs_adr_i[12]),
    .X(net11),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input12 (.A(wbs_adr_i[13]),
    .X(net12),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input13 (.A(wbs_adr_i[14]),
    .X(net13),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input14 (.A(wbs_adr_i[15]),
    .X(net14),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input15 (.A(wbs_adr_i[16]),
    .X(net15),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input16 (.A(wbs_adr_i[17]),
    .X(net16),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input17 (.A(wbs_adr_i[18]),
    .X(net17),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input18 (.A(wbs_adr_i[19]),
    .X(net18),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input19 (.A(wbs_adr_i[1]),
    .X(net19),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input2 (.A(io_in[5]),
    .X(net2),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input20 (.A(wbs_adr_i[20]),
    .X(net20),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input21 (.A(wbs_adr_i[21]),
    .X(net21),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input22 (.A(wbs_adr_i[22]),
    .X(net22),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input23 (.A(wbs_adr_i[23]),
    .X(net23),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input24 (.A(wbs_adr_i[24]),
    .X(net24),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input25 (.A(wbs_adr_i[25]),
    .X(net25),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input26 (.A(wbs_adr_i[26]),
    .X(net26),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input27 (.A(wbs_adr_i[27]),
    .X(net27),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input28 (.A(wbs_adr_i[28]),
    .X(net28),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input29 (.A(wbs_adr_i[29]),
    .X(net29),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input3 (.A(io_in[6]),
    .X(net3),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input30 (.A(wbs_adr_i[2]),
    .X(net30),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input31 (.A(wbs_adr_i[30]),
    .X(net31),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input32 (.A(wbs_adr_i[31]),
    .X(net32),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input33 (.A(wbs_adr_i[3]),
    .X(net33),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input34 (.A(wbs_adr_i[4]),
    .X(net34),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input35 (.A(wbs_adr_i[5]),
    .X(net35),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input36 (.A(wbs_adr_i[6]),
    .X(net36),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input37 (.A(wbs_adr_i[7]),
    .X(net37),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input38 (.A(wbs_adr_i[8]),
    .X(net38),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input39 (.A(wbs_adr_i[9]),
    .X(net39),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input4 (.A(io_in[7]),
    .X(net4),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__clkbuf_16 input40 (.A(wbs_cyc_i),
    .X(net40),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input41 (.A(wbs_dat_i[0]),
    .X(net41),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input42 (.A(wbs_dat_i[10]),
    .X(net42),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input43 (.A(wbs_dat_i[11]),
    .X(net43),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input44 (.A(wbs_dat_i[12]),
    .X(net44),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input45 (.A(wbs_dat_i[13]),
    .X(net45),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input46 (.A(wbs_dat_i[14]),
    .X(net46),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input47 (.A(wbs_dat_i[15]),
    .X(net47),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input48 (.A(wbs_dat_i[16]),
    .X(net48),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input49 (.A(wbs_dat_i[17]),
    .X(net49),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input5 (.A(io_in[8]),
    .X(net5),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input50 (.A(wbs_dat_i[18]),
    .X(net50),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input51 (.A(wbs_dat_i[19]),
    .X(net51),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input52 (.A(wbs_dat_i[1]),
    .X(net52),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input53 (.A(wbs_dat_i[20]),
    .X(net53),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input54 (.A(wbs_dat_i[21]),
    .X(net54),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input55 (.A(wbs_dat_i[22]),
    .X(net55),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input56 (.A(wbs_dat_i[23]),
    .X(net56),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input57 (.A(wbs_dat_i[24]),
    .X(net57),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input58 (.A(wbs_dat_i[25]),
    .X(net58),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input59 (.A(wbs_dat_i[26]),
    .X(net59),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input6 (.A(io_in[9]),
    .X(net6),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input60 (.A(wbs_dat_i[27]),
    .X(net60),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input61 (.A(wbs_dat_i[28]),
    .X(net61),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input62 (.A(wbs_dat_i[29]),
    .X(net62),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input63 (.A(wbs_dat_i[2]),
    .X(net63),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input64 (.A(wbs_dat_i[30]),
    .X(net64),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input65 (.A(wbs_dat_i[31]),
    .X(net65),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input66 (.A(wbs_dat_i[3]),
    .X(net66),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input67 (.A(wbs_dat_i[4]),
    .X(net67),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input68 (.A(wbs_dat_i[5]),
    .X(net68),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input69 (.A(wbs_dat_i[6]),
    .X(net69),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_6 input7 (.A(wb_rst_i),
    .X(net7),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input70 (.A(wbs_dat_i[7]),
    .X(net70),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input71 (.A(wbs_dat_i[8]),
    .X(net71),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input72 (.A(wbs_dat_i[9]),
    .X(net72),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input73 (.A(wbs_sel_i[0]),
    .X(net73),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input74 (.A(wbs_sel_i[1]),
    .X(net74),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input75 (.A(wbs_sel_i[2]),
    .X(net75),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input76 (.A(wbs_sel_i[3]),
    .X(net76),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input77 (.A(wbs_stb_i),
    .X(net77),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input78 (.A(wbs_we_i),
    .X(net78),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input8 (.A(wbs_adr_i[0]),
    .X(net8),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 input9 (.A(wbs_adr_i[10]),
    .X(net9),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 ibex_top \mprj.ibex_core_1  (.clk_i(wb_clk_i),
    .data_err_i(_0048_),
    .data_gnt_i(\mprj.master_data_gnt_to_inter[0] ),
    .data_req_o(\mprj.master_data_req_to_inter[0] ),
    .data_rvalid_i(\mprj.master_data_rvalid_to_inter[0] ),
    .data_we_o(\mprj.master_data_we_to_inter[0] ),
    .debug_req_i(net119),
    .eFPGA_en_o(\mprj.W_OPA[35] ),
    .eFPGA_fpga_done_i(_0056_),
    .eFPGA_write_strobe_o(\mprj.SelfWriteStrobe ),
    .fetch_enable_i(net118),
    .instr_err_i(_0185_),
    .instr_gnt_i(\mprj.master_data_gnt_to_inter_ro[0] ),
    .instr_req_o(\mprj.master_data_req_to_inter_ro[0] ),
    .instr_rvalid_i(\mprj.master_data_rvalid_to_inter_ro[0] ),
    .irq_external_i(_0193_),
    .irq_nm_i(_0209_),
    .irq_software_i(_0210_),
    .irq_timer_i(_0211_),
    .ram_cfg_i(_0212_),
    .rst_ni(\mprj.reset_ni ),
    .scan_rst_ni(_0012_),
    .test_en_i(_0013_),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .boot_addr_i({_0047_,
    _0046_,
    _0045_,
    _0044_,
    _0043_,
    _0042_,
    _0041_,
    _0040_,
    _0039_,
    _0038_,
    _0037_,
    _0036_,
    _0035_,
    _0034_,
    _0033_,
    _0032_,
    _0031_,
    _0030_,
    _0029_,
    _0028_,
    _0027_,
    _0026_,
    _0025_,
    _0024_,
    _0023_,
    _0022_,
    _0021_,
    _0020_,
    _0019_,
    _0018_,
    _0017_,
    _0016_}),
    .crash_dump_o({_NC1,
    _NC2,
    _NC3,
    _NC4,
    _NC5,
    _NC6,
    _NC7,
    _NC8,
    _NC9,
    _NC10,
    _NC11,
    _NC12,
    _NC13,
    _NC14,
    _NC15,
    _NC16,
    _NC17,
    _NC18,
    _NC19,
    _NC20,
    _NC21,
    _NC22,
    _NC23,
    _NC24,
    _NC25,
    _NC26,
    _NC27,
    _NC28,
    _NC29,
    _NC30,
    _NC31,
    _NC32,
    _NC33,
    _NC34,
    _NC35,
    _NC36,
    _NC37,
    _NC38,
    _NC39,
    _NC40,
    _NC41,
    _NC42,
    _NC43,
    _NC44,
    _NC45,
    _NC46,
    _NC47,
    _NC48,
    _NC49,
    _NC50,
    _NC51,
    _NC52,
    _NC53,
    _NC54,
    _NC55,
    _NC56,
    _NC57,
    _NC58,
    _NC59,
    _NC60,
    _NC61,
    _NC62,
    _NC63,
    _NC64,
    _NC65,
    _NC66,
    _NC67,
    _NC68,
    _NC69,
    _NC70,
    _NC71,
    _NC72,
    _NC73,
    _NC74,
    _NC75,
    _NC76,
    _NC77,
    _NC78,
    _NC79,
    _NC80,
    _NC81,
    _NC82,
    _NC83,
    _NC84,
    _NC85,
    _NC86,
    _NC87,
    _NC88,
    _NC89,
    _NC90,
    _NC91,
    _NC92,
    _NC93,
    _NC94,
    _NC95,
    _NC96,
    _NC97,
    _NC98,
    _NC99,
    _NC100,
    _NC101,
    _NC102,
    _NC103,
    _NC104,
    _NC105,
    _NC106,
    _NC107,
    _NC108,
    _NC109,
    _NC110,
    _NC111,
    _NC112,
    _NC113,
    _NC114,
    _NC115,
    _NC116,
    _NC117,
    _NC118,
    _NC119,
    _NC120,
    _NC121,
    _NC122,
    _NC123,
    _NC124,
    _NC125,
    _NC126,
    _NC127,
    _NC128}),
    .data_addr_o({_0413_,
    _0412_,
    _0411_,
    _0410_,
    _0409_,
    _0408_,
    _0407_,
    _0406_,
    _0422_,
    _0421_,
    _0420_,
    _0419_,
    _0418_,
    _0417_,
    _0416_,
    _0415_,
    _0414_,
    _0405_,
    \mprj.master_data_addr_to_inter[13] ,
    \mprj.master_data_addr_to_inter[12] ,
    \mprj.master_data_addr_to_inter[11] ,
    \mprj.master_data_addr_to_inter[10] ,
    \mprj.master_data_addr_to_inter[9] ,
    \mprj.master_data_addr_to_inter[8] ,
    \mprj.master_data_addr_to_inter[7] ,
    \mprj.master_data_addr_to_inter[6] ,
    \mprj.master_data_addr_to_inter[5] ,
    \mprj.master_data_addr_to_inter[4] ,
    \mprj.master_data_addr_to_inter[3] ,
    \mprj.master_data_addr_to_inter[2] ,
    \mprj.master_data_addr_to_inter[1] ,
    \mprj.master_data_addr_to_inter[0] }),
    .data_be_o({\mprj.master_data_be_to_inter[3] ,
    \mprj.master_data_be_to_inter[2] ,
    \mprj.master_data_be_to_inter[1] ,
    \mprj.master_data_be_to_inter[0] }),
    .data_rdata_i({\mprj.master_data_rdata_to_inter[31] ,
    \mprj.master_data_rdata_to_inter[30] ,
    \mprj.master_data_rdata_to_inter[29] ,
    \mprj.master_data_rdata_to_inter[28] ,
    \mprj.master_data_rdata_to_inter[27] ,
    \mprj.master_data_rdata_to_inter[26] ,
    \mprj.master_data_rdata_to_inter[25] ,
    \mprj.master_data_rdata_to_inter[24] ,
    \mprj.master_data_rdata_to_inter[23] ,
    \mprj.master_data_rdata_to_inter[22] ,
    \mprj.master_data_rdata_to_inter[21] ,
    \mprj.master_data_rdata_to_inter[20] ,
    \mprj.master_data_rdata_to_inter[19] ,
    \mprj.master_data_rdata_to_inter[18] ,
    \mprj.master_data_rdata_to_inter[17] ,
    \mprj.master_data_rdata_to_inter[16] ,
    \mprj.master_data_rdata_to_inter[15] ,
    \mprj.master_data_rdata_to_inter[14] ,
    \mprj.master_data_rdata_to_inter[13] ,
    \mprj.master_data_rdata_to_inter[12] ,
    \mprj.master_data_rdata_to_inter[11] ,
    \mprj.master_data_rdata_to_inter[10] ,
    \mprj.master_data_rdata_to_inter[9] ,
    \mprj.master_data_rdata_to_inter[8] ,
    \mprj.master_data_rdata_to_inter[7] ,
    \mprj.master_data_rdata_to_inter[6] ,
    \mprj.master_data_rdata_to_inter[5] ,
    \mprj.master_data_rdata_to_inter[4] ,
    \mprj.master_data_rdata_to_inter[3] ,
    \mprj.master_data_rdata_to_inter[2] ,
    \mprj.master_data_rdata_to_inter[1] ,
    \mprj.master_data_rdata_to_inter[0] }),
    .data_rdata_intg_i({_0055_,
    _0054_,
    _0053_,
    _0052_,
    _0051_,
    _0050_,
    _0049_}),
    .data_wdata_intg_o({_NC129,
    _NC130,
    _NC131,
    _NC132,
    _NC133,
    _NC134,
    _NC135}),
    .data_wdata_o({\mprj.master_data_wdata_to_inter[31] ,
    \mprj.master_data_wdata_to_inter[30] ,
    \mprj.master_data_wdata_to_inter[29] ,
    \mprj.master_data_wdata_to_inter[28] ,
    \mprj.master_data_wdata_to_inter[27] ,
    \mprj.master_data_wdata_to_inter[26] ,
    \mprj.master_data_wdata_to_inter[25] ,
    \mprj.master_data_wdata_to_inter[24] ,
    \mprj.master_data_wdata_to_inter[23] ,
    \mprj.master_data_wdata_to_inter[22] ,
    \mprj.master_data_wdata_to_inter[21] ,
    \mprj.master_data_wdata_to_inter[20] ,
    \mprj.master_data_wdata_to_inter[19] ,
    \mprj.master_data_wdata_to_inter[18] ,
    \mprj.master_data_wdata_to_inter[17] ,
    \mprj.master_data_wdata_to_inter[16] ,
    \mprj.master_data_wdata_to_inter[15] ,
    \mprj.master_data_wdata_to_inter[14] ,
    \mprj.master_data_wdata_to_inter[13] ,
    \mprj.master_data_wdata_to_inter[12] ,
    \mprj.master_data_wdata_to_inter[11] ,
    \mprj.master_data_wdata_to_inter[10] ,
    \mprj.master_data_wdata_to_inter[9] ,
    \mprj.master_data_wdata_to_inter[8] ,
    \mprj.master_data_wdata_to_inter[7] ,
    \mprj.master_data_wdata_to_inter[6] ,
    \mprj.master_data_wdata_to_inter[5] ,
    \mprj.master_data_wdata_to_inter[4] ,
    \mprj.master_data_wdata_to_inter[3] ,
    \mprj.master_data_wdata_to_inter[2] ,
    \mprj.master_data_wdata_to_inter[1] ,
    \mprj.master_data_wdata_to_inter[0] }),
    .eFPGA_delay_o({_0404_,
    _0403_,
    \mprj.W_OPB[33] ,
    \mprj.W_OPB[32] }),
    .eFPGA_operand_a_o({\mprj.SelfWriteData[31] ,
    \mprj.SelfWriteData[30] ,
    \mprj.SelfWriteData[29] ,
    \mprj.SelfWriteData[28] ,
    \mprj.SelfWriteData[27] ,
    \mprj.SelfWriteData[26] ,
    \mprj.SelfWriteData[25] ,
    \mprj.SelfWriteData[24] ,
    \mprj.SelfWriteData[23] ,
    \mprj.SelfWriteData[22] ,
    \mprj.SelfWriteData[21] ,
    \mprj.SelfWriteData[20] ,
    \mprj.SelfWriteData[19] ,
    \mprj.SelfWriteData[18] ,
    \mprj.SelfWriteData[17] ,
    \mprj.SelfWriteData[16] ,
    \mprj.SelfWriteData[15] ,
    \mprj.SelfWriteData[14] ,
    \mprj.SelfWriteData[13] ,
    \mprj.SelfWriteData[12] ,
    \mprj.SelfWriteData[11] ,
    \mprj.SelfWriteData[10] ,
    \mprj.SelfWriteData[9] ,
    \mprj.SelfWriteData[8] ,
    \mprj.SelfWriteData[7] ,
    \mprj.SelfWriteData[6] ,
    \mprj.SelfWriteData[5] ,
    \mprj.SelfWriteData[4] ,
    \mprj.SelfWriteData[3] ,
    \mprj.SelfWriteData[2] ,
    \mprj.SelfWriteData[1] ,
    \mprj.SelfWriteData[0] }),
    .eFPGA_operand_b_o({\mprj.W_OPB[31] ,
    \mprj.W_OPB[30] ,
    \mprj.W_OPB[29] ,
    \mprj.W_OPB[28] ,
    \mprj.W_OPB[27] ,
    \mprj.W_OPB[26] ,
    \mprj.W_OPB[25] ,
    \mprj.W_OPB[24] ,
    \mprj.W_OPB[23] ,
    \mprj.W_OPB[22] ,
    \mprj.W_OPB[21] ,
    \mprj.W_OPB[20] ,
    \mprj.W_OPB[19] ,
    \mprj.W_OPB[18] ,
    \mprj.W_OPB[17] ,
    \mprj.W_OPB[16] ,
    \mprj.W_OPB[15] ,
    \mprj.W_OPB[14] ,
    \mprj.W_OPB[13] ,
    \mprj.W_OPB[12] ,
    \mprj.W_OPB[11] ,
    \mprj.W_OPB[10] ,
    \mprj.W_OPB[9] ,
    \mprj.W_OPB[8] ,
    \mprj.W_OPB[7] ,
    \mprj.W_OPB[6] ,
    \mprj.W_OPB[5] ,
    \mprj.W_OPB[4] ,
    \mprj.W_OPB[3] ,
    \mprj.W_OPB[2] ,
    \mprj.W_OPB[1] ,
    \mprj.W_OPB[0] }),
    .eFPGA_operator_o({\mprj.W_OPB[35] ,
    \mprj.W_OPB[34] }),
    .eFPGA_result_a_i({_0088_,
    _0087_,
    _0086_,
    _0085_,
    _0084_,
    _0083_,
    _0082_,
    _0081_,
    _0080_,
    _0079_,
    _0078_,
    _0077_,
    _0076_,
    _0075_,
    _0074_,
    _0073_,
    _0072_,
    _0071_,
    _0070_,
    _0069_,
    _0068_,
    _0067_,
    _0066_,
    _0065_,
    _0064_,
    _0063_,
    _0062_,
    _0061_,
    _0060_,
    _0059_,
    _0058_,
    _0057_}),
    .eFPGA_result_b_i({_0120_,
    _0119_,
    _0118_,
    _0117_,
    _0116_,
    _0115_,
    _0114_,
    _0113_,
    _0112_,
    _0111_,
    _0110_,
    _0109_,
    _0108_,
    _0107_,
    _0106_,
    _0105_,
    _0104_,
    _0103_,
    _0102_,
    _0101_,
    _0100_,
    _0099_,
    _0098_,
    _0097_,
    _0096_,
    _0095_,
    _0094_,
    _0093_,
    _0092_,
    _0091_,
    _0090_,
    _0089_}),
    .eFPGA_result_c_i({_0152_,
    _0151_,
    _0150_,
    _0149_,
    _0148_,
    _0147_,
    _0146_,
    _0145_,
    _0144_,
    _0143_,
    _0142_,
    _0141_,
    _0140_,
    _0139_,
    _0138_,
    _0137_,
    _0136_,
    _0135_,
    _0134_,
    _0133_,
    _0132_,
    _0131_,
    _0130_,
    _0129_,
    _0128_,
    _0127_,
    _0126_,
    _0125_,
    _0124_,
    _0123_,
    _0122_,
    _0121_}),
    .hart_id_i({_0184_,
    _0183_,
    _0182_,
    _0181_,
    _0180_,
    _0179_,
    _0178_,
    _0177_,
    _0176_,
    _0175_,
    _0174_,
    _0173_,
    _0172_,
    _0171_,
    _0170_,
    _0169_,
    _0168_,
    _0167_,
    _0166_,
    _0165_,
    _0164_,
    _0163_,
    _0162_,
    _0161_,
    _0160_,
    _0159_,
    _0158_,
    _0157_,
    _0156_,
    _0155_,
    _0154_,
    _0153_}),
    .instr_addr_o({_0432_,
    _0431_,
    _0430_,
    _0429_,
    _0428_,
    _0427_,
    _0426_,
    _0425_,
    _0424_,
    _0441_,
    _0440_,
    _0439_,
    _0438_,
    _0437_,
    _0436_,
    _0435_,
    _0434_,
    _0433_,
    _0423_,
    \mprj.master_data_addr_to_inter_ro[12] ,
    \mprj.master_data_addr_to_inter_ro[11] ,
    \mprj.master_data_addr_to_inter_ro[10] ,
    \mprj.master_data_addr_to_inter_ro[9] ,
    \mprj.master_data_addr_to_inter_ro[8] ,
    \mprj.master_data_addr_to_inter_ro[7] ,
    \mprj.master_data_addr_to_inter_ro[6] ,
    \mprj.master_data_addr_to_inter_ro[5] ,
    \mprj.master_data_addr_to_inter_ro[4] ,
    \mprj.master_data_addr_to_inter_ro[3] ,
    \mprj.master_data_addr_to_inter_ro[2] ,
    \mprj.master_data_addr_to_inter_ro[1] ,
    \mprj.master_data_addr_to_inter_ro[0] }),
    .instr_rdata_i({\mprj.master_data_rdata_to_inter_ro[31] ,
    \mprj.master_data_rdata_to_inter_ro[30] ,
    \mprj.master_data_rdata_to_inter_ro[29] ,
    \mprj.master_data_rdata_to_inter_ro[28] ,
    \mprj.master_data_rdata_to_inter_ro[27] ,
    \mprj.master_data_rdata_to_inter_ro[26] ,
    \mprj.master_data_rdata_to_inter_ro[25] ,
    \mprj.master_data_rdata_to_inter_ro[24] ,
    \mprj.master_data_rdata_to_inter_ro[23] ,
    \mprj.master_data_rdata_to_inter_ro[22] ,
    \mprj.master_data_rdata_to_inter_ro[21] ,
    \mprj.master_data_rdata_to_inter_ro[20] ,
    \mprj.master_data_rdata_to_inter_ro[19] ,
    \mprj.master_data_rdata_to_inter_ro[18] ,
    \mprj.master_data_rdata_to_inter_ro[17] ,
    \mprj.master_data_rdata_to_inter_ro[16] ,
    \mprj.master_data_rdata_to_inter_ro[15] ,
    \mprj.master_data_rdata_to_inter_ro[14] ,
    \mprj.master_data_rdata_to_inter_ro[13] ,
    \mprj.master_data_rdata_to_inter_ro[12] ,
    \mprj.master_data_rdata_to_inter_ro[11] ,
    \mprj.master_data_rdata_to_inter_ro[10] ,
    \mprj.master_data_rdata_to_inter_ro[9] ,
    \mprj.master_data_rdata_to_inter_ro[8] ,
    \mprj.master_data_rdata_to_inter_ro[7] ,
    \mprj.master_data_rdata_to_inter_ro[6] ,
    \mprj.master_data_rdata_to_inter_ro[5] ,
    \mprj.master_data_rdata_to_inter_ro[4] ,
    \mprj.master_data_rdata_to_inter_ro[3] ,
    \mprj.master_data_rdata_to_inter_ro[2] ,
    \mprj.master_data_rdata_to_inter_ro[1] ,
    \mprj.master_data_rdata_to_inter_ro[0] }),
    .instr_rdata_intg_i({_0192_,
    _0191_,
    _0190_,
    _0189_,
    _0188_,
    _0187_,
    _0186_}),
    .irq_fast_i({_0208_,
    _0207_,
    _0206_,
    _0205_,
    _0204_,
    _0203_,
    _0202_,
    _0201_,
    _0200_,
    _0199_,
    _0198_,
    _0197_,
    _0196_,
    _0195_,
    _0194_}));
 flexbex_ibex_core \mprj.ibex_core_2  (.clk_i(wb_clk_i),
    .data_err_i(_0254_),
    .data_gnt_i(net160),
    .data_req_o(\mprj.master_data_req_to_inter[1] ),
    .data_rvalid_i(net123),
    .data_we_o(\mprj.master_data_we_to_inter[1] ),
    .debug_req_i(net3),
    .eFPGA_en_o(\mprj.E_OPA[35] ),
    .eFPGA_fpga_done_i(_0255_),
    .eFPGA_write_strobe_o(net82),
    .ext_perf_counters_i(_0352_),
    .fetch_enable_i(net4),
    .instr_gnt_i(net159),
    .instr_req_o(\mprj.master_data_req_to_inter_ro[1] ),
    .instr_rvalid_i(net122),
    .irq_ack_o(\mprj.E_OPA[0] ),
    .irq_i(_0353_),
    .rst_ni(\mprj.reset_ni ),
    .test_en_i(_0015_),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .boot_addr_i({_0244_,
    _0243_,
    _0242_,
    _0241_,
    _0240_,
    _0239_,
    _0238_,
    _0237_,
    _0236_,
    _0235_,
    _0234_,
    _0233_,
    _0232_,
    _0231_,
    _0230_,
    _0229_,
    _0228_,
    _0227_,
    _0226_,
    _0225_,
    _0224_,
    _0223_,
    _0222_,
    _0221_,
    _0220_,
    _0219_,
    _0218_,
    _0217_,
    _0216_,
    _0215_,
    _0214_,
    _0213_}),
    .cluster_id_i({_0250_,
    _0249_,
    _0248_,
    _0247_,
    _0246_,
    _0245_}),
    .core_id_i({_0253_,
    _0252_,
    _0251_,
    _0014_}),
    .data_addr_o({_0393_,
    _0392_,
    _0391_,
    _0390_,
    _0389_,
    _0388_,
    _0387_,
    _0386_,
    _0402_,
    _0401_,
    _0400_,
    _0399_,
    _0398_,
    _0397_,
    _0396_,
    _0395_,
    _0394_,
    _0385_,
    \mprj.flexbex_addr_o[13] ,
    \mprj.flexbex_addr_o[12] ,
    \mprj.flexbex_addr_o[11] ,
    \mprj.flexbex_addr_o[10] ,
    \mprj.flexbex_addr_o[9] ,
    \mprj.flexbex_addr_o[8] ,
    \mprj.flexbex_addr_o[7] ,
    \mprj.flexbex_addr_o[6] ,
    \mprj.flexbex_addr_o[5] ,
    \mprj.flexbex_addr_o[4] ,
    \mprj.flexbex_addr_o[3] ,
    \mprj.flexbex_addr_o[2] ,
    \mprj.flexbex_addr_o[1] ,
    \mprj.flexbex_addr_o[0] }),
    .data_be_o({\mprj.master_data_be_to_inter[7] ,
    \mprj.master_data_be_to_inter[6] ,
    \mprj.master_data_be_to_inter[5] ,
    \mprj.master_data_be_to_inter[4] }),
    .data_rdata_i({net127,
    net128,
    net129,
    net130,
    net131,
    net132,
    net133,
    net134,
    net135,
    net136,
    net137,
    net138,
    net139,
    net140,
    net141,
    net142,
    net143,
    net144,
    net145,
    net146,
    net147,
    net148,
    net149,
    net150,
    net151,
    net152,
    net153,
    net154,
    net155,
    net156,
    net157,
    net158}),
    .data_wdata_o({\mprj.master_data_wdata_to_inter[63] ,
    \mprj.master_data_wdata_to_inter[62] ,
    \mprj.master_data_wdata_to_inter[61] ,
    \mprj.master_data_wdata_to_inter[60] ,
    \mprj.master_data_wdata_to_inter[59] ,
    \mprj.master_data_wdata_to_inter[58] ,
    \mprj.master_data_wdata_to_inter[57] ,
    \mprj.master_data_wdata_to_inter[56] ,
    \mprj.master_data_wdata_to_inter[55] ,
    \mprj.master_data_wdata_to_inter[54] ,
    \mprj.master_data_wdata_to_inter[53] ,
    \mprj.master_data_wdata_to_inter[52] ,
    \mprj.master_data_wdata_to_inter[51] ,
    \mprj.master_data_wdata_to_inter[50] ,
    \mprj.master_data_wdata_to_inter[49] ,
    \mprj.master_data_wdata_to_inter[48] ,
    \mprj.master_data_wdata_to_inter[47] ,
    \mprj.master_data_wdata_to_inter[46] ,
    \mprj.master_data_wdata_to_inter[45] ,
    \mprj.master_data_wdata_to_inter[44] ,
    \mprj.master_data_wdata_to_inter[43] ,
    \mprj.master_data_wdata_to_inter[42] ,
    \mprj.master_data_wdata_to_inter[41] ,
    \mprj.master_data_wdata_to_inter[40] ,
    \mprj.master_data_wdata_to_inter[39] ,
    \mprj.master_data_wdata_to_inter[38] ,
    \mprj.master_data_wdata_to_inter[37] ,
    \mprj.master_data_wdata_to_inter[36] ,
    \mprj.master_data_wdata_to_inter[35] ,
    \mprj.master_data_wdata_to_inter[34] ,
    \mprj.master_data_wdata_to_inter[33] ,
    \mprj.master_data_wdata_to_inter[32] }),
    .eFPGA_delay_o({_0362_,
    _0361_,
    \mprj.E_OPB[33] ,
    \mprj.E_OPB[32] }),
    .eFPGA_operand_a_o({\mprj.E_OPA[34] ,
    \mprj.E_OPA[33] ,
    \mprj.E_OPA[32] ,
    \mprj.E_OPA[31] ,
    \mprj.E_OPA[30] ,
    \mprj.E_OPA[29] ,
    \mprj.E_OPA[28] ,
    \mprj.E_OPA[27] ,
    \mprj.E_OPA[26] ,
    \mprj.E_OPA[25] ,
    \mprj.E_OPA[24] ,
    \mprj.E_OPA[23] ,
    \mprj.E_OPA[22] ,
    \mprj.E_OPA[21] ,
    \mprj.E_OPA[20] ,
    \mprj.E_OPA[19] ,
    \mprj.E_OPA[18] ,
    \mprj.E_OPA[17] ,
    \mprj.E_OPA[16] ,
    \mprj.E_OPA[15] ,
    \mprj.E_OPA[14] ,
    \mprj.E_OPA[13] ,
    \mprj.E_OPA[12] ,
    \mprj.E_OPA[11] ,
    \mprj.E_OPA[10] ,
    \mprj.E_OPA[9] ,
    \mprj.E_OPA[8] ,
    \mprj.E_OPA[7] ,
    \mprj.E_OPA[6] ,
    \mprj.E_OPA[5] ,
    \mprj.E_OPA[4] ,
    \mprj.E_OPA[3] }),
    .eFPGA_operand_b_o({\mprj.E_OPB[31] ,
    \mprj.E_OPB[30] ,
    \mprj.E_OPB[29] ,
    \mprj.E_OPB[28] ,
    \mprj.E_OPB[27] ,
    \mprj.E_OPB[26] ,
    \mprj.E_OPB[25] ,
    \mprj.E_OPB[24] ,
    \mprj.E_OPB[23] ,
    \mprj.E_OPB[22] ,
    \mprj.E_OPB[21] ,
    \mprj.E_OPB[20] ,
    \mprj.E_OPB[19] ,
    \mprj.E_OPB[18] ,
    \mprj.E_OPB[17] ,
    \mprj.E_OPB[16] ,
    \mprj.E_OPB[15] ,
    \mprj.E_OPB[14] ,
    \mprj.E_OPB[13] ,
    \mprj.E_OPB[12] ,
    \mprj.E_OPB[11] ,
    \mprj.E_OPB[10] ,
    \mprj.E_OPB[9] ,
    \mprj.E_OPB[8] ,
    \mprj.E_OPB[7] ,
    \mprj.E_OPB[6] ,
    \mprj.E_OPB[5] ,
    \mprj.E_OPB[4] ,
    \mprj.E_OPB[3] ,
    \mprj.E_OPB[2] ,
    \mprj.E_OPB[1] ,
    \mprj.E_OPB[0] }),
    .eFPGA_operator_o({\mprj.E_OPB[35] ,
    \mprj.E_OPB[34] }),
    .eFPGA_result_a_i({_0287_,
    _0286_,
    _0285_,
    _0284_,
    _0283_,
    _0282_,
    _0281_,
    _0280_,
    _0279_,
    _0278_,
    _0277_,
    _0276_,
    _0275_,
    _0274_,
    _0273_,
    _0272_,
    _0271_,
    _0270_,
    _0269_,
    _0268_,
    _0267_,
    _0266_,
    _0265_,
    _0264_,
    _0263_,
    _0262_,
    _0261_,
    _0260_,
    _0259_,
    _0258_,
    _0257_,
    _0256_}),
    .eFPGA_result_b_i({_0319_,
    _0318_,
    _0317_,
    _0316_,
    _0315_,
    _0314_,
    _0313_,
    _0312_,
    _0311_,
    _0310_,
    _0309_,
    _0308_,
    _0307_,
    _0306_,
    _0305_,
    _0304_,
    _0303_,
    _0302_,
    _0301_,
    _0300_,
    _0299_,
    _0298_,
    _0297_,
    _0296_,
    _0295_,
    _0294_,
    _0293_,
    _0292_,
    _0291_,
    _0290_,
    _0289_,
    _0288_}),
    .eFPGA_result_c_i({_0351_,
    _0350_,
    _0349_,
    _0348_,
    _0347_,
    _0346_,
    _0345_,
    _0344_,
    _0343_,
    _0342_,
    _0341_,
    _0340_,
    _0339_,
    _0338_,
    _0337_,
    _0336_,
    _0335_,
    _0334_,
    _0333_,
    _0332_,
    _0331_,
    _0330_,
    _0329_,
    _0328_,
    _0327_,
    _0326_,
    _0325_,
    _0324_,
    _0323_,
    _0322_,
    _0321_,
    _0320_}),
    .instr_addr_o({_0375_,
    _0374_,
    _0373_,
    _0372_,
    _0371_,
    _0370_,
    _0369_,
    _0368_,
    _0367_,
    _0384_,
    _0383_,
    _0382_,
    _0381_,
    _0380_,
    _0379_,
    _0378_,
    _0377_,
    _0376_,
    _0366_,
    \mprj.master_data_addr_to_inter_ro[25] ,
    \mprj.master_data_addr_to_inter_ro[24] ,
    \mprj.master_data_addr_to_inter_ro[23] ,
    \mprj.master_data_addr_to_inter_ro[22] ,
    \mprj.master_data_addr_to_inter_ro[21] ,
    \mprj.master_data_addr_to_inter_ro[20] ,
    \mprj.master_data_addr_to_inter_ro[19] ,
    \mprj.master_data_addr_to_inter_ro[18] ,
    \mprj.master_data_addr_to_inter_ro[17] ,
    \mprj.master_data_addr_to_inter_ro[16] ,
    \mprj.master_data_addr_to_inter_ro[15] ,
    \mprj.master_data_addr_to_inter_ro[14] ,
    \mprj.master_data_addr_to_inter_ro[13] }),
    .instr_rdata_i({net124,
    net125,
    net126,
    \mprj.master_data_rdata_to_inter_ro[60] ,
    \mprj.master_data_rdata_to_inter_ro[59] ,
    \mprj.master_data_rdata_to_inter_ro[58] ,
    \mprj.master_data_rdata_to_inter_ro[57] ,
    \mprj.master_data_rdata_to_inter_ro[56] ,
    \mprj.master_data_rdata_to_inter_ro[55] ,
    \mprj.master_data_rdata_to_inter_ro[54] ,
    \mprj.master_data_rdata_to_inter_ro[53] ,
    \mprj.master_data_rdata_to_inter_ro[52] ,
    \mprj.master_data_rdata_to_inter_ro[51] ,
    \mprj.master_data_rdata_to_inter_ro[50] ,
    \mprj.master_data_rdata_to_inter_ro[49] ,
    \mprj.master_data_rdata_to_inter_ro[48] ,
    \mprj.master_data_rdata_to_inter_ro[47] ,
    \mprj.master_data_rdata_to_inter_ro[46] ,
    \mprj.master_data_rdata_to_inter_ro[45] ,
    \mprj.master_data_rdata_to_inter_ro[44] ,
    \mprj.master_data_rdata_to_inter_ro[43] ,
    \mprj.master_data_rdata_to_inter_ro[42] ,
    \mprj.master_data_rdata_to_inter_ro[41] ,
    \mprj.master_data_rdata_to_inter_ro[40] ,
    \mprj.master_data_rdata_to_inter_ro[39] ,
    \mprj.master_data_rdata_to_inter_ro[38] ,
    \mprj.master_data_rdata_to_inter_ro[37] ,
    \mprj.master_data_rdata_to_inter_ro[36] ,
    \mprj.master_data_rdata_to_inter_ro[35] ,
    \mprj.master_data_rdata_to_inter_ro[34] ,
    \mprj.master_data_rdata_to_inter_ro[33] ,
    \mprj.master_data_rdata_to_inter_ro[32] }),
    .irq_id_i({_0358_,
    _0357_,
    _0356_,
    _0355_,
    _0354_}),
    .irq_id_o({_0365_,
    _0364_,
    _0363_,
    \mprj.E_OPA[2] ,
    \mprj.E_OPA[1] }));
 soric_soc \mprj.soric_soc_i  (.error_uart_to_mem(net81),
    .rxd_uart(net5),
    .rxd_uart_to_mem(net6),
    .txd_uart(net79),
    .txd_uart_to_mem(net80),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(net117),
    .wbs_ack_o(net83),
    .wbs_cyc_i(net40),
    .wbs_stb_i(net77),
    .wbs_we_i(net78),
    .master_data_addr_to_inter_i({net222,
    net223,
    net224,
    net225,
    net214,
    net215,
    net216,
    net217,
    net218,
    net219,
    net220,
    net221,
    _0360_,
    _0359_,
    \mprj.master_data_addr_to_inter[13] ,
    \mprj.master_data_addr_to_inter[12] ,
    \mprj.master_data_addr_to_inter[11] ,
    \mprj.master_data_addr_to_inter[10] ,
    \mprj.master_data_addr_to_inter[9] ,
    \mprj.master_data_addr_to_inter[8] ,
    \mprj.master_data_addr_to_inter[7] ,
    \mprj.master_data_addr_to_inter[6] ,
    \mprj.master_data_addr_to_inter[5] ,
    \mprj.master_data_addr_to_inter[4] ,
    \mprj.master_data_addr_to_inter[3] ,
    \mprj.master_data_addr_to_inter[2] ,
    \mprj.master_data_addr_to_inter[1] ,
    \mprj.master_data_addr_to_inter[0] }),
    .master_data_addr_to_inter_ro({net172,
    net173,
    net174,
    net163,
    net164,
    net165,
    net166,
    net167,
    net168,
    net169,
    net170,
    net171,
    net175,
    \mprj.master_data_addr_to_inter_ro[12] ,
    \mprj.master_data_addr_to_inter_ro[11] ,
    \mprj.master_data_addr_to_inter_ro[10] ,
    \mprj.master_data_addr_to_inter_ro[9] ,
    \mprj.master_data_addr_to_inter_ro[8] ,
    \mprj.master_data_addr_to_inter_ro[7] ,
    \mprj.master_data_addr_to_inter_ro[6] ,
    \mprj.master_data_addr_to_inter_ro[5] ,
    \mprj.master_data_addr_to_inter_ro[4] ,
    \mprj.master_data_addr_to_inter_ro[3] ,
    \mprj.master_data_addr_to_inter_ro[2] ,
    \mprj.master_data_addr_to_inter_ro[1] ,
    \mprj.master_data_addr_to_inter_ro[0] }),
    .master_data_be_to_inter_i({net210,
    net211,
    net212,
    net213,
    \mprj.master_data_be_to_inter[3] ,
    \mprj.master_data_be_to_inter[2] ,
    \mprj.master_data_be_to_inter[1] ,
    \mprj.master_data_be_to_inter[0] }),
    .master_data_gnt_to_inter_o({\mprj.master_data_gnt_to_inter[1] ,
    \mprj.master_data_gnt_to_inter[0] }),
    .master_data_gnt_to_inter_ro({\mprj.master_data_gnt_to_inter_ro[1] ,
    \mprj.master_data_gnt_to_inter_ro[0] }),
    .master_data_rdata_to_inter_o({\mprj.master_data_rdata_to_inter[63] ,
    \mprj.master_data_rdata_to_inter[62] ,
    \mprj.master_data_rdata_to_inter[61] ,
    \mprj.master_data_rdata_to_inter[60] ,
    \mprj.master_data_rdata_to_inter[59] ,
    \mprj.master_data_rdata_to_inter[58] ,
    \mprj.master_data_rdata_to_inter[57] ,
    \mprj.master_data_rdata_to_inter[56] ,
    \mprj.master_data_rdata_to_inter[55] ,
    \mprj.master_data_rdata_to_inter[54] ,
    \mprj.master_data_rdata_to_inter[53] ,
    \mprj.master_data_rdata_to_inter[52] ,
    \mprj.master_data_rdata_to_inter[51] ,
    \mprj.master_data_rdata_to_inter[50] ,
    \mprj.master_data_rdata_to_inter[49] ,
    \mprj.master_data_rdata_to_inter[48] ,
    \mprj.master_data_rdata_to_inter[47] ,
    \mprj.master_data_rdata_to_inter[46] ,
    \mprj.master_data_rdata_to_inter[45] ,
    \mprj.master_data_rdata_to_inter[44] ,
    \mprj.master_data_rdata_to_inter[43] ,
    \mprj.master_data_rdata_to_inter[42] ,
    \mprj.master_data_rdata_to_inter[41] ,
    \mprj.master_data_rdata_to_inter[40] ,
    \mprj.master_data_rdata_to_inter[39] ,
    \mprj.master_data_rdata_to_inter[38] ,
    \mprj.master_data_rdata_to_inter[37] ,
    \mprj.master_data_rdata_to_inter[36] ,
    \mprj.master_data_rdata_to_inter[35] ,
    \mprj.master_data_rdata_to_inter[34] ,
    \mprj.master_data_rdata_to_inter[33] ,
    \mprj.master_data_rdata_to_inter[32] ,
    \mprj.master_data_rdata_to_inter[31] ,
    \mprj.master_data_rdata_to_inter[30] ,
    \mprj.master_data_rdata_to_inter[29] ,
    \mprj.master_data_rdata_to_inter[28] ,
    \mprj.master_data_rdata_to_inter[27] ,
    \mprj.master_data_rdata_to_inter[26] ,
    \mprj.master_data_rdata_to_inter[25] ,
    \mprj.master_data_rdata_to_inter[24] ,
    \mprj.master_data_rdata_to_inter[23] ,
    \mprj.master_data_rdata_to_inter[22] ,
    \mprj.master_data_rdata_to_inter[21] ,
    \mprj.master_data_rdata_to_inter[20] ,
    \mprj.master_data_rdata_to_inter[19] ,
    \mprj.master_data_rdata_to_inter[18] ,
    \mprj.master_data_rdata_to_inter[17] ,
    \mprj.master_data_rdata_to_inter[16] ,
    \mprj.master_data_rdata_to_inter[15] ,
    \mprj.master_data_rdata_to_inter[14] ,
    \mprj.master_data_rdata_to_inter[13] ,
    \mprj.master_data_rdata_to_inter[12] ,
    \mprj.master_data_rdata_to_inter[11] ,
    \mprj.master_data_rdata_to_inter[10] ,
    \mprj.master_data_rdata_to_inter[9] ,
    \mprj.master_data_rdata_to_inter[8] ,
    \mprj.master_data_rdata_to_inter[7] ,
    \mprj.master_data_rdata_to_inter[6] ,
    \mprj.master_data_rdata_to_inter[5] ,
    \mprj.master_data_rdata_to_inter[4] ,
    \mprj.master_data_rdata_to_inter[3] ,
    \mprj.master_data_rdata_to_inter[2] ,
    \mprj.master_data_rdata_to_inter[1] ,
    \mprj.master_data_rdata_to_inter[0] }),
    .master_data_rdata_to_inter_ro({\mprj.master_data_rdata_to_inter_ro[63] ,
    \mprj.master_data_rdata_to_inter_ro[62] ,
    \mprj.master_data_rdata_to_inter_ro[61] ,
    \mprj.master_data_rdata_to_inter_ro[60] ,
    \mprj.master_data_rdata_to_inter_ro[59] ,
    \mprj.master_data_rdata_to_inter_ro[58] ,
    \mprj.master_data_rdata_to_inter_ro[57] ,
    \mprj.master_data_rdata_to_inter_ro[56] ,
    \mprj.master_data_rdata_to_inter_ro[55] ,
    \mprj.master_data_rdata_to_inter_ro[54] ,
    \mprj.master_data_rdata_to_inter_ro[53] ,
    \mprj.master_data_rdata_to_inter_ro[52] ,
    \mprj.master_data_rdata_to_inter_ro[51] ,
    \mprj.master_data_rdata_to_inter_ro[50] ,
    \mprj.master_data_rdata_to_inter_ro[49] ,
    \mprj.master_data_rdata_to_inter_ro[48] ,
    \mprj.master_data_rdata_to_inter_ro[47] ,
    \mprj.master_data_rdata_to_inter_ro[46] ,
    \mprj.master_data_rdata_to_inter_ro[45] ,
    \mprj.master_data_rdata_to_inter_ro[44] ,
    \mprj.master_data_rdata_to_inter_ro[43] ,
    \mprj.master_data_rdata_to_inter_ro[42] ,
    \mprj.master_data_rdata_to_inter_ro[41] ,
    \mprj.master_data_rdata_to_inter_ro[40] ,
    \mprj.master_data_rdata_to_inter_ro[39] ,
    \mprj.master_data_rdata_to_inter_ro[38] ,
    \mprj.master_data_rdata_to_inter_ro[37] ,
    \mprj.master_data_rdata_to_inter_ro[36] ,
    \mprj.master_data_rdata_to_inter_ro[35] ,
    \mprj.master_data_rdata_to_inter_ro[34] ,
    \mprj.master_data_rdata_to_inter_ro[33] ,
    \mprj.master_data_rdata_to_inter_ro[32] ,
    \mprj.master_data_rdata_to_inter_ro[31] ,
    \mprj.master_data_rdata_to_inter_ro[30] ,
    \mprj.master_data_rdata_to_inter_ro[29] ,
    \mprj.master_data_rdata_to_inter_ro[28] ,
    \mprj.master_data_rdata_to_inter_ro[27] ,
    \mprj.master_data_rdata_to_inter_ro[26] ,
    \mprj.master_data_rdata_to_inter_ro[25] ,
    \mprj.master_data_rdata_to_inter_ro[24] ,
    \mprj.master_data_rdata_to_inter_ro[23] ,
    \mprj.master_data_rdata_to_inter_ro[22] ,
    \mprj.master_data_rdata_to_inter_ro[21] ,
    \mprj.master_data_rdata_to_inter_ro[20] ,
    \mprj.master_data_rdata_to_inter_ro[19] ,
    \mprj.master_data_rdata_to_inter_ro[18] ,
    \mprj.master_data_rdata_to_inter_ro[17] ,
    \mprj.master_data_rdata_to_inter_ro[16] ,
    \mprj.master_data_rdata_to_inter_ro[15] ,
    \mprj.master_data_rdata_to_inter_ro[14] ,
    \mprj.master_data_rdata_to_inter_ro[13] ,
    \mprj.master_data_rdata_to_inter_ro[12] ,
    \mprj.master_data_rdata_to_inter_ro[11] ,
    \mprj.master_data_rdata_to_inter_ro[10] ,
    \mprj.master_data_rdata_to_inter_ro[9] ,
    \mprj.master_data_rdata_to_inter_ro[8] ,
    \mprj.master_data_rdata_to_inter_ro[7] ,
    \mprj.master_data_rdata_to_inter_ro[6] ,
    \mprj.master_data_rdata_to_inter_ro[5] ,
    \mprj.master_data_rdata_to_inter_ro[4] ,
    \mprj.master_data_rdata_to_inter_ro[3] ,
    \mprj.master_data_rdata_to_inter_ro[2] ,
    \mprj.master_data_rdata_to_inter_ro[1] ,
    \mprj.master_data_rdata_to_inter_ro[0] }),
    .master_data_req_to_inter_i({net209,
    \mprj.master_data_req_to_inter[0] }),
    .master_data_req_to_inter_ro({net162,
    \mprj.master_data_req_to_inter_ro[0] }),
    .master_data_rvalid_to_inter_o({\mprj.master_data_rvalid_to_inter[1] ,
    \mprj.master_data_rvalid_to_inter[0] }),
    .master_data_rvalid_to_inter_ro({\mprj.master_data_rvalid_to_inter_ro[1] ,
    \mprj.master_data_rvalid_to_inter_ro[0] }),
    .master_data_wdata_to_inter_i({net184,
    net185,
    net187,
    net188,
    net189,
    net190,
    net191,
    net192,
    net193,
    net194,
    net195,
    net196,
    net198,
    net199,
    net200,
    net201,
    net202,
    net203,
    net204,
    net205,
    net206,
    net207,
    net177,
    net178,
    net179,
    net180,
    net181,
    net182,
    net183,
    net186,
    net197,
    net208,
    \mprj.master_data_wdata_to_inter[31] ,
    \mprj.master_data_wdata_to_inter[30] ,
    \mprj.master_data_wdata_to_inter[29] ,
    \mprj.master_data_wdata_to_inter[28] ,
    \mprj.master_data_wdata_to_inter[27] ,
    \mprj.master_data_wdata_to_inter[26] ,
    \mprj.master_data_wdata_to_inter[25] ,
    \mprj.master_data_wdata_to_inter[24] ,
    \mprj.master_data_wdata_to_inter[23] ,
    \mprj.master_data_wdata_to_inter[22] ,
    \mprj.master_data_wdata_to_inter[21] ,
    \mprj.master_data_wdata_to_inter[20] ,
    \mprj.master_data_wdata_to_inter[19] ,
    \mprj.master_data_wdata_to_inter[18] ,
    \mprj.master_data_wdata_to_inter[17] ,
    \mprj.master_data_wdata_to_inter[16] ,
    \mprj.master_data_wdata_to_inter[15] ,
    \mprj.master_data_wdata_to_inter[14] ,
    \mprj.master_data_wdata_to_inter[13] ,
    \mprj.master_data_wdata_to_inter[12] ,
    \mprj.master_data_wdata_to_inter[11] ,
    \mprj.master_data_wdata_to_inter[10] ,
    \mprj.master_data_wdata_to_inter[9] ,
    \mprj.master_data_wdata_to_inter[8] ,
    \mprj.master_data_wdata_to_inter[7] ,
    \mprj.master_data_wdata_to_inter[6] ,
    \mprj.master_data_wdata_to_inter[5] ,
    \mprj.master_data_wdata_to_inter[4] ,
    \mprj.master_data_wdata_to_inter[3] ,
    \mprj.master_data_wdata_to_inter[2] ,
    \mprj.master_data_wdata_to_inter[1] ,
    \mprj.master_data_wdata_to_inter[0] }),
    .master_data_we_to_inter_i({net176,
    \mprj.master_data_we_to_inter[0] }),
    .slave_data_addr_to_inter_o({\mprj.slave_data_addr_to_inter[43] ,
    \mprj.slave_data_addr_to_inter[42] ,
    \mprj.slave_data_addr_to_inter[41] ,
    \mprj.slave_data_addr_to_inter[40] ,
    \mprj.slave_data_addr_to_inter[39] ,
    \mprj.slave_data_addr_to_inter[38] ,
    \mprj.slave_data_addr_to_inter[37] ,
    \mprj.slave_data_addr_to_inter[36] ,
    \mprj.slave_data_addr_to_inter[35] ,
    \mprj.slave_data_addr_to_inter[34] ,
    \mprj.slave_data_addr_to_inter[33] ,
    \mprj.slave_data_addr_to_inter[32] ,
    \mprj.slave_data_addr_to_inter[31] ,
    \mprj.slave_data_addr_to_inter[30] ,
    \mprj.slave_data_addr_to_inter[29] ,
    \mprj.slave_data_addr_to_inter[28] ,
    \mprj.slave_data_addr_to_inter[27] ,
    \mprj.slave_data_addr_to_inter[26] ,
    \mprj.slave_data_addr_to_inter[25] ,
    \mprj.slave_data_addr_to_inter[24] ,
    \mprj.slave_data_addr_to_inter[23] ,
    \mprj.slave_data_addr_to_inter[22] ,
    \mprj.slave_data_addr_to_inter[21] ,
    \mprj.slave_data_addr_to_inter[20] ,
    \mprj.slave_data_addr_to_inter[19] ,
    \mprj.slave_data_addr_to_inter[18] ,
    \mprj.slave_data_addr_to_inter[17] ,
    \mprj.slave_data_addr_to_inter[16] ,
    \mprj.slave_data_addr_to_inter[15] ,
    \mprj.slave_data_addr_to_inter[14] ,
    \mprj.slave_data_addr_to_inter[13] ,
    \mprj.slave_data_addr_to_inter[12] ,
    \mprj.slave_data_addr_to_inter[11] ,
    \mprj.slave_data_addr_to_inter[10] ,
    \mprj.slave_data_addr_to_inter[9] ,
    \mprj.slave_data_addr_to_inter[8] ,
    \mprj.slave_data_addr_to_inter[7] ,
    \mprj.slave_data_addr_to_inter[6] ,
    \mprj.slave_data_addr_to_inter[5] ,
    \mprj.slave_data_addr_to_inter[4] ,
    \mprj.slave_data_addr_to_inter[3] ,
    \mprj.slave_data_addr_to_inter[2] ,
    \mprj.slave_data_addr_to_inter[1] ,
    \mprj.slave_data_addr_to_inter[0] }),
    .slave_data_addr_to_inter_ro({\mprj.slave_data_addr_to_inter_ro[43] ,
    \mprj.slave_data_addr_to_inter_ro[42] ,
    \mprj.slave_data_addr_to_inter_ro[41] ,
    \mprj.slave_data_addr_to_inter_ro[40] ,
    \mprj.slave_data_addr_to_inter_ro[39] ,
    \mprj.slave_data_addr_to_inter_ro[38] ,
    \mprj.slave_data_addr_to_inter_ro[37] ,
    \mprj.slave_data_addr_to_inter_ro[36] ,
    \mprj.slave_data_addr_to_inter_ro[35] ,
    \mprj.slave_data_addr_to_inter_ro[34] ,
    \mprj.slave_data_addr_to_inter_ro[33] ,
    \mprj.slave_data_addr_to_inter_ro[32] ,
    \mprj.slave_data_addr_to_inter_ro[31] ,
    \mprj.slave_data_addr_to_inter_ro[30] ,
    \mprj.slave_data_addr_to_inter_ro[29] ,
    \mprj.slave_data_addr_to_inter_ro[28] ,
    \mprj.slave_data_addr_to_inter_ro[27] ,
    \mprj.slave_data_addr_to_inter_ro[26] ,
    \mprj.slave_data_addr_to_inter_ro[25] ,
    \mprj.slave_data_addr_to_inter_ro[24] ,
    \mprj.slave_data_addr_to_inter_ro[23] ,
    \mprj.slave_data_addr_to_inter_ro[22] ,
    \mprj.slave_data_addr_to_inter_ro[21] ,
    \mprj.slave_data_addr_to_inter_ro[20] ,
    \mprj.slave_data_addr_to_inter_ro[19] ,
    \mprj.slave_data_addr_to_inter_ro[18] ,
    \mprj.slave_data_addr_to_inter_ro[17] ,
    \mprj.slave_data_addr_to_inter_ro[16] ,
    \mprj.slave_data_addr_to_inter_ro[15] ,
    \mprj.slave_data_addr_to_inter_ro[14] ,
    \mprj.slave_data_addr_to_inter_ro[13] ,
    \mprj.slave_data_addr_to_inter_ro[12] ,
    \mprj.slave_data_addr_to_inter_ro[11] ,
    \mprj.slave_data_addr_to_inter_ro[10] ,
    \mprj.slave_data_addr_to_inter_ro[9] ,
    \mprj.slave_data_addr_to_inter_ro[8] ,
    \mprj.slave_data_addr_to_inter_ro[7] ,
    \mprj.slave_data_addr_to_inter_ro[6] ,
    \mprj.slave_data_addr_to_inter_ro[5] ,
    \mprj.slave_data_addr_to_inter_ro[4] ,
    \mprj.slave_data_addr_to_inter_ro[3] ,
    \mprj.slave_data_addr_to_inter_ro[2] ,
    \mprj.slave_data_addr_to_inter_ro[1] ,
    \mprj.slave_data_addr_to_inter_ro[0] }),
    .slave_data_be_to_inter_o({\mprj.slave_data_be_to_inter[15] ,
    \mprj.slave_data_be_to_inter[14] ,
    \mprj.slave_data_be_to_inter[13] ,
    \mprj.slave_data_be_to_inter[12] ,
    \mprj.slave_data_be_to_inter[11] ,
    \mprj.slave_data_be_to_inter[10] ,
    \mprj.slave_data_be_to_inter[9] ,
    \mprj.slave_data_be_to_inter[8] ,
    \mprj.slave_data_be_to_inter[7] ,
    \mprj.slave_data_be_to_inter[6] ,
    \mprj.slave_data_be_to_inter[5] ,
    \mprj.slave_data_be_to_inter[4] ,
    \mprj.slave_data_be_to_inter[3] ,
    \mprj.slave_data_be_to_inter[2] ,
    \mprj.slave_data_be_to_inter[1] ,
    \mprj.slave_data_be_to_inter[0] }),
    .slave_data_rdata_to_inter_i({\mprj.slave_data_rdata_to_inter[127] ,
    \mprj.slave_data_rdata_to_inter[126] ,
    \mprj.slave_data_rdata_to_inter[125] ,
    \mprj.slave_data_rdata_to_inter[124] ,
    \mprj.slave_data_rdata_to_inter[123] ,
    \mprj.slave_data_rdata_to_inter[122] ,
    \mprj.slave_data_rdata_to_inter[121] ,
    \mprj.slave_data_rdata_to_inter[120] ,
    \mprj.slave_data_rdata_to_inter[119] ,
    \mprj.slave_data_rdata_to_inter[118] ,
    \mprj.slave_data_rdata_to_inter[117] ,
    \mprj.slave_data_rdata_to_inter[116] ,
    \mprj.slave_data_rdata_to_inter[115] ,
    \mprj.slave_data_rdata_to_inter[114] ,
    \mprj.slave_data_rdata_to_inter[113] ,
    \mprj.slave_data_rdata_to_inter[112] ,
    \mprj.slave_data_rdata_to_inter[111] ,
    \mprj.slave_data_rdata_to_inter[110] ,
    \mprj.slave_data_rdata_to_inter[109] ,
    \mprj.slave_data_rdata_to_inter[108] ,
    \mprj.slave_data_rdata_to_inter[107] ,
    \mprj.slave_data_rdata_to_inter[106] ,
    \mprj.slave_data_rdata_to_inter[105] ,
    \mprj.slave_data_rdata_to_inter[104] ,
    \mprj.slave_data_rdata_to_inter[103] ,
    \mprj.slave_data_rdata_to_inter[102] ,
    \mprj.slave_data_rdata_to_inter[101] ,
    \mprj.slave_data_rdata_to_inter[100] ,
    \mprj.slave_data_rdata_to_inter[99] ,
    \mprj.slave_data_rdata_to_inter[98] ,
    \mprj.slave_data_rdata_to_inter[97] ,
    \mprj.slave_data_rdata_to_inter[96] ,
    \mprj.slave_data_rdata_to_inter[95] ,
    \mprj.slave_data_rdata_to_inter[94] ,
    \mprj.slave_data_rdata_to_inter[93] ,
    \mprj.slave_data_rdata_to_inter[92] ,
    \mprj.slave_data_rdata_to_inter[91] ,
    \mprj.slave_data_rdata_to_inter[90] ,
    \mprj.slave_data_rdata_to_inter[89] ,
    \mprj.slave_data_rdata_to_inter[88] ,
    \mprj.slave_data_rdata_to_inter[87] ,
    \mprj.slave_data_rdata_to_inter[86] ,
    \mprj.slave_data_rdata_to_inter[85] ,
    \mprj.slave_data_rdata_to_inter[84] ,
    \mprj.slave_data_rdata_to_inter[83] ,
    \mprj.slave_data_rdata_to_inter[82] ,
    \mprj.slave_data_rdata_to_inter[81] ,
    \mprj.slave_data_rdata_to_inter[80] ,
    \mprj.slave_data_rdata_to_inter[79] ,
    \mprj.slave_data_rdata_to_inter[78] ,
    \mprj.slave_data_rdata_to_inter[77] ,
    \mprj.slave_data_rdata_to_inter[76] ,
    \mprj.slave_data_rdata_to_inter[75] ,
    \mprj.slave_data_rdata_to_inter[74] ,
    \mprj.slave_data_rdata_to_inter[73] ,
    \mprj.slave_data_rdata_to_inter[72] ,
    \mprj.slave_data_rdata_to_inter[71] ,
    \mprj.slave_data_rdata_to_inter[70] ,
    \mprj.slave_data_rdata_to_inter[69] ,
    \mprj.slave_data_rdata_to_inter[68] ,
    \mprj.slave_data_rdata_to_inter[67] ,
    \mprj.slave_data_rdata_to_inter[66] ,
    \mprj.slave_data_rdata_to_inter[65] ,
    \mprj.slave_data_rdata_to_inter[64] ,
    \mprj.slave_data_rdata_to_inter[63] ,
    \mprj.slave_data_rdata_to_inter[62] ,
    \mprj.slave_data_rdata_to_inter[61] ,
    \mprj.slave_data_rdata_to_inter[60] ,
    \mprj.slave_data_rdata_to_inter[59] ,
    \mprj.slave_data_rdata_to_inter[58] ,
    \mprj.slave_data_rdata_to_inter[57] ,
    \mprj.slave_data_rdata_to_inter[56] ,
    \mprj.slave_data_rdata_to_inter[55] ,
    \mprj.slave_data_rdata_to_inter[54] ,
    \mprj.slave_data_rdata_to_inter[53] ,
    \mprj.slave_data_rdata_to_inter[52] ,
    \mprj.slave_data_rdata_to_inter[51] ,
    \mprj.slave_data_rdata_to_inter[50] ,
    \mprj.slave_data_rdata_to_inter[49] ,
    \mprj.slave_data_rdata_to_inter[48] ,
    \mprj.slave_data_rdata_to_inter[47] ,
    \mprj.slave_data_rdata_to_inter[46] ,
    \mprj.slave_data_rdata_to_inter[45] ,
    \mprj.slave_data_rdata_to_inter[44] ,
    \mprj.slave_data_rdata_to_inter[43] ,
    \mprj.slave_data_rdata_to_inter[42] ,
    \mprj.slave_data_rdata_to_inter[41] ,
    \mprj.slave_data_rdata_to_inter[40] ,
    \mprj.slave_data_rdata_to_inter[39] ,
    \mprj.slave_data_rdata_to_inter[38] ,
    \mprj.slave_data_rdata_to_inter[37] ,
    \mprj.slave_data_rdata_to_inter[36] ,
    \mprj.slave_data_rdata_to_inter[35] ,
    \mprj.slave_data_rdata_to_inter[34] ,
    \mprj.slave_data_rdata_to_inter[33] ,
    \mprj.slave_data_rdata_to_inter[32] ,
    \mprj.slave_data_rdata_to_inter[31] ,
    \mprj.slave_data_rdata_to_inter[30] ,
    \mprj.slave_data_rdata_to_inter[29] ,
    \mprj.slave_data_rdata_to_inter[28] ,
    \mprj.slave_data_rdata_to_inter[27] ,
    \mprj.slave_data_rdata_to_inter[26] ,
    \mprj.slave_data_rdata_to_inter[25] ,
    \mprj.slave_data_rdata_to_inter[24] ,
    \mprj.slave_data_rdata_to_inter[23] ,
    \mprj.slave_data_rdata_to_inter[22] ,
    \mprj.slave_data_rdata_to_inter[21] ,
    \mprj.slave_data_rdata_to_inter[20] ,
    \mprj.slave_data_rdata_to_inter[19] ,
    \mprj.slave_data_rdata_to_inter[18] ,
    \mprj.slave_data_rdata_to_inter[17] ,
    \mprj.slave_data_rdata_to_inter[16] ,
    \mprj.slave_data_rdata_to_inter[15] ,
    \mprj.slave_data_rdata_to_inter[14] ,
    \mprj.slave_data_rdata_to_inter[13] ,
    \mprj.slave_data_rdata_to_inter[12] ,
    \mprj.slave_data_rdata_to_inter[11] ,
    \mprj.slave_data_rdata_to_inter[10] ,
    \mprj.slave_data_rdata_to_inter[9] ,
    \mprj.slave_data_rdata_to_inter[8] ,
    \mprj.slave_data_rdata_to_inter[7] ,
    \mprj.slave_data_rdata_to_inter[6] ,
    \mprj.slave_data_rdata_to_inter[5] ,
    \mprj.slave_data_rdata_to_inter[4] ,
    \mprj.slave_data_rdata_to_inter[3] ,
    \mprj.slave_data_rdata_to_inter[2] ,
    \mprj.slave_data_rdata_to_inter[1] ,
    \mprj.slave_data_rdata_to_inter[0] }),
    .slave_data_rdata_to_inter_ro({\mprj.slave_data_rdata_to_inter_ro[127] ,
    \mprj.slave_data_rdata_to_inter_ro[126] ,
    \mprj.slave_data_rdata_to_inter_ro[125] ,
    \mprj.slave_data_rdata_to_inter_ro[124] ,
    \mprj.slave_data_rdata_to_inter_ro[123] ,
    \mprj.slave_data_rdata_to_inter_ro[122] ,
    \mprj.slave_data_rdata_to_inter_ro[121] ,
    \mprj.slave_data_rdata_to_inter_ro[120] ,
    \mprj.slave_data_rdata_to_inter_ro[119] ,
    \mprj.slave_data_rdata_to_inter_ro[118] ,
    \mprj.slave_data_rdata_to_inter_ro[117] ,
    \mprj.slave_data_rdata_to_inter_ro[116] ,
    \mprj.slave_data_rdata_to_inter_ro[115] ,
    \mprj.slave_data_rdata_to_inter_ro[114] ,
    \mprj.slave_data_rdata_to_inter_ro[113] ,
    \mprj.slave_data_rdata_to_inter_ro[112] ,
    \mprj.slave_data_rdata_to_inter_ro[111] ,
    \mprj.slave_data_rdata_to_inter_ro[110] ,
    \mprj.slave_data_rdata_to_inter_ro[109] ,
    \mprj.slave_data_rdata_to_inter_ro[108] ,
    \mprj.slave_data_rdata_to_inter_ro[107] ,
    \mprj.slave_data_rdata_to_inter_ro[106] ,
    \mprj.slave_data_rdata_to_inter_ro[105] ,
    \mprj.slave_data_rdata_to_inter_ro[104] ,
    \mprj.slave_data_rdata_to_inter_ro[103] ,
    \mprj.slave_data_rdata_to_inter_ro[102] ,
    \mprj.slave_data_rdata_to_inter_ro[101] ,
    \mprj.slave_data_rdata_to_inter_ro[100] ,
    \mprj.slave_data_rdata_to_inter_ro[99] ,
    \mprj.slave_data_rdata_to_inter_ro[98] ,
    \mprj.slave_data_rdata_to_inter_ro[97] ,
    \mprj.slave_data_rdata_to_inter_ro[96] ,
    \mprj.slave_data_rdata_to_inter_ro[95] ,
    \mprj.slave_data_rdata_to_inter_ro[94] ,
    \mprj.slave_data_rdata_to_inter_ro[93] ,
    \mprj.slave_data_rdata_to_inter_ro[92] ,
    \mprj.slave_data_rdata_to_inter_ro[91] ,
    \mprj.slave_data_rdata_to_inter_ro[90] ,
    \mprj.slave_data_rdata_to_inter_ro[89] ,
    \mprj.slave_data_rdata_to_inter_ro[88] ,
    \mprj.slave_data_rdata_to_inter_ro[87] ,
    \mprj.slave_data_rdata_to_inter_ro[86] ,
    \mprj.slave_data_rdata_to_inter_ro[85] ,
    \mprj.slave_data_rdata_to_inter_ro[84] ,
    \mprj.slave_data_rdata_to_inter_ro[83] ,
    \mprj.slave_data_rdata_to_inter_ro[82] ,
    \mprj.slave_data_rdata_to_inter_ro[81] ,
    \mprj.slave_data_rdata_to_inter_ro[80] ,
    \mprj.slave_data_rdata_to_inter_ro[79] ,
    \mprj.slave_data_rdata_to_inter_ro[78] ,
    \mprj.slave_data_rdata_to_inter_ro[77] ,
    \mprj.slave_data_rdata_to_inter_ro[76] ,
    \mprj.slave_data_rdata_to_inter_ro[75] ,
    \mprj.slave_data_rdata_to_inter_ro[74] ,
    \mprj.slave_data_rdata_to_inter_ro[73] ,
    \mprj.slave_data_rdata_to_inter_ro[72] ,
    \mprj.slave_data_rdata_to_inter_ro[71] ,
    \mprj.slave_data_rdata_to_inter_ro[70] ,
    \mprj.slave_data_rdata_to_inter_ro[69] ,
    \mprj.slave_data_rdata_to_inter_ro[68] ,
    \mprj.slave_data_rdata_to_inter_ro[67] ,
    \mprj.slave_data_rdata_to_inter_ro[66] ,
    \mprj.slave_data_rdata_to_inter_ro[65] ,
    \mprj.slave_data_rdata_to_inter_ro[64] ,
    \mprj.slave_data_rdata_to_inter_ro[63] ,
    \mprj.slave_data_rdata_to_inter_ro[62] ,
    \mprj.slave_data_rdata_to_inter_ro[61] ,
    \mprj.slave_data_rdata_to_inter_ro[60] ,
    \mprj.slave_data_rdata_to_inter_ro[59] ,
    \mprj.slave_data_rdata_to_inter_ro[58] ,
    \mprj.slave_data_rdata_to_inter_ro[57] ,
    \mprj.slave_data_rdata_to_inter_ro[56] ,
    \mprj.slave_data_rdata_to_inter_ro[55] ,
    \mprj.slave_data_rdata_to_inter_ro[54] ,
    \mprj.slave_data_rdata_to_inter_ro[53] ,
    \mprj.slave_data_rdata_to_inter_ro[52] ,
    \mprj.slave_data_rdata_to_inter_ro[51] ,
    \mprj.slave_data_rdata_to_inter_ro[50] ,
    \mprj.slave_data_rdata_to_inter_ro[49] ,
    \mprj.slave_data_rdata_to_inter_ro[48] ,
    \mprj.slave_data_rdata_to_inter_ro[47] ,
    \mprj.slave_data_rdata_to_inter_ro[46] ,
    \mprj.slave_data_rdata_to_inter_ro[45] ,
    \mprj.slave_data_rdata_to_inter_ro[44] ,
    \mprj.slave_data_rdata_to_inter_ro[43] ,
    \mprj.slave_data_rdata_to_inter_ro[42] ,
    \mprj.slave_data_rdata_to_inter_ro[41] ,
    \mprj.slave_data_rdata_to_inter_ro[40] ,
    \mprj.slave_data_rdata_to_inter_ro[39] ,
    \mprj.slave_data_rdata_to_inter_ro[38] ,
    \mprj.slave_data_rdata_to_inter_ro[37] ,
    \mprj.slave_data_rdata_to_inter_ro[36] ,
    \mprj.slave_data_rdata_to_inter_ro[35] ,
    \mprj.slave_data_rdata_to_inter_ro[34] ,
    \mprj.slave_data_rdata_to_inter_ro[33] ,
    \mprj.slave_data_rdata_to_inter_ro[32] ,
    \mprj.slave_data_rdata_to_inter_ro[31] ,
    \mprj.slave_data_rdata_to_inter_ro[30] ,
    \mprj.slave_data_rdata_to_inter_ro[29] ,
    \mprj.slave_data_rdata_to_inter_ro[28] ,
    \mprj.slave_data_rdata_to_inter_ro[27] ,
    \mprj.slave_data_rdata_to_inter_ro[26] ,
    \mprj.slave_data_rdata_to_inter_ro[25] ,
    \mprj.slave_data_rdata_to_inter_ro[24] ,
    \mprj.slave_data_rdata_to_inter_ro[23] ,
    \mprj.slave_data_rdata_to_inter_ro[22] ,
    \mprj.slave_data_rdata_to_inter_ro[21] ,
    \mprj.slave_data_rdata_to_inter_ro[20] ,
    \mprj.slave_data_rdata_to_inter_ro[19] ,
    \mprj.slave_data_rdata_to_inter_ro[18] ,
    \mprj.slave_data_rdata_to_inter_ro[17] ,
    \mprj.slave_data_rdata_to_inter_ro[16] ,
    \mprj.slave_data_rdata_to_inter_ro[15] ,
    \mprj.slave_data_rdata_to_inter_ro[14] ,
    \mprj.slave_data_rdata_to_inter_ro[13] ,
    \mprj.slave_data_rdata_to_inter_ro[12] ,
    \mprj.slave_data_rdata_to_inter_ro[11] ,
    \mprj.slave_data_rdata_to_inter_ro[10] ,
    \mprj.slave_data_rdata_to_inter_ro[9] ,
    \mprj.slave_data_rdata_to_inter_ro[8] ,
    \mprj.slave_data_rdata_to_inter_ro[7] ,
    \mprj.slave_data_rdata_to_inter_ro[6] ,
    \mprj.slave_data_rdata_to_inter_ro[5] ,
    \mprj.slave_data_rdata_to_inter_ro[4] ,
    \mprj.slave_data_rdata_to_inter_ro[3] ,
    \mprj.slave_data_rdata_to_inter_ro[2] ,
    \mprj.slave_data_rdata_to_inter_ro[1] ,
    \mprj.slave_data_rdata_to_inter_ro[0] }),
    .slave_data_req_to_inter_o({\mprj.slave_data_req_to_inter[3] ,
    \mprj.slave_data_req_to_inter[2] ,
    \mprj.slave_data_req_to_inter[1] ,
    \mprj.slave_data_req_to_inter[0] }),
    .slave_data_req_to_inter_ro({\mprj.slave_data_req_to_inter_ro[3] ,
    \mprj.slave_data_req_to_inter_ro[2] ,
    \mprj.slave_data_req_to_inter_ro[1] ,
    \mprj.slave_data_req_to_inter_ro[0] }),
    .slave_data_wdata_to_inter_o({\mprj.slave_data_wdata_to_inter[127] ,
    \mprj.slave_data_wdata_to_inter[126] ,
    \mprj.slave_data_wdata_to_inter[125] ,
    \mprj.slave_data_wdata_to_inter[124] ,
    \mprj.slave_data_wdata_to_inter[123] ,
    \mprj.slave_data_wdata_to_inter[122] ,
    \mprj.slave_data_wdata_to_inter[121] ,
    \mprj.slave_data_wdata_to_inter[120] ,
    \mprj.slave_data_wdata_to_inter[119] ,
    \mprj.slave_data_wdata_to_inter[118] ,
    \mprj.slave_data_wdata_to_inter[117] ,
    \mprj.slave_data_wdata_to_inter[116] ,
    \mprj.slave_data_wdata_to_inter[115] ,
    \mprj.slave_data_wdata_to_inter[114] ,
    \mprj.slave_data_wdata_to_inter[113] ,
    \mprj.slave_data_wdata_to_inter[112] ,
    \mprj.slave_data_wdata_to_inter[111] ,
    \mprj.slave_data_wdata_to_inter[110] ,
    \mprj.slave_data_wdata_to_inter[109] ,
    \mprj.slave_data_wdata_to_inter[108] ,
    \mprj.slave_data_wdata_to_inter[107] ,
    \mprj.slave_data_wdata_to_inter[106] ,
    \mprj.slave_data_wdata_to_inter[105] ,
    \mprj.slave_data_wdata_to_inter[104] ,
    \mprj.slave_data_wdata_to_inter[103] ,
    \mprj.slave_data_wdata_to_inter[102] ,
    \mprj.slave_data_wdata_to_inter[101] ,
    \mprj.slave_data_wdata_to_inter[100] ,
    \mprj.slave_data_wdata_to_inter[99] ,
    \mprj.slave_data_wdata_to_inter[98] ,
    \mprj.slave_data_wdata_to_inter[97] ,
    \mprj.slave_data_wdata_to_inter[96] ,
    \mprj.slave_data_wdata_to_inter[95] ,
    \mprj.slave_data_wdata_to_inter[94] ,
    \mprj.slave_data_wdata_to_inter[93] ,
    \mprj.slave_data_wdata_to_inter[92] ,
    \mprj.slave_data_wdata_to_inter[91] ,
    \mprj.slave_data_wdata_to_inter[90] ,
    \mprj.slave_data_wdata_to_inter[89] ,
    \mprj.slave_data_wdata_to_inter[88] ,
    \mprj.slave_data_wdata_to_inter[87] ,
    \mprj.slave_data_wdata_to_inter[86] ,
    \mprj.slave_data_wdata_to_inter[85] ,
    \mprj.slave_data_wdata_to_inter[84] ,
    \mprj.slave_data_wdata_to_inter[83] ,
    \mprj.slave_data_wdata_to_inter[82] ,
    \mprj.slave_data_wdata_to_inter[81] ,
    \mprj.slave_data_wdata_to_inter[80] ,
    \mprj.slave_data_wdata_to_inter[79] ,
    \mprj.slave_data_wdata_to_inter[78] ,
    \mprj.slave_data_wdata_to_inter[77] ,
    \mprj.slave_data_wdata_to_inter[76] ,
    \mprj.slave_data_wdata_to_inter[75] ,
    \mprj.slave_data_wdata_to_inter[74] ,
    \mprj.slave_data_wdata_to_inter[73] ,
    \mprj.slave_data_wdata_to_inter[72] ,
    \mprj.slave_data_wdata_to_inter[71] ,
    \mprj.slave_data_wdata_to_inter[70] ,
    \mprj.slave_data_wdata_to_inter[69] ,
    \mprj.slave_data_wdata_to_inter[68] ,
    \mprj.slave_data_wdata_to_inter[67] ,
    \mprj.slave_data_wdata_to_inter[66] ,
    \mprj.slave_data_wdata_to_inter[65] ,
    \mprj.slave_data_wdata_to_inter[64] ,
    \mprj.slave_data_wdata_to_inter[63] ,
    \mprj.slave_data_wdata_to_inter[62] ,
    \mprj.slave_data_wdata_to_inter[61] ,
    \mprj.slave_data_wdata_to_inter[60] ,
    \mprj.slave_data_wdata_to_inter[59] ,
    \mprj.slave_data_wdata_to_inter[58] ,
    \mprj.slave_data_wdata_to_inter[57] ,
    \mprj.slave_data_wdata_to_inter[56] ,
    \mprj.slave_data_wdata_to_inter[55] ,
    \mprj.slave_data_wdata_to_inter[54] ,
    \mprj.slave_data_wdata_to_inter[53] ,
    \mprj.slave_data_wdata_to_inter[52] ,
    \mprj.slave_data_wdata_to_inter[51] ,
    \mprj.slave_data_wdata_to_inter[50] ,
    \mprj.slave_data_wdata_to_inter[49] ,
    \mprj.slave_data_wdata_to_inter[48] ,
    \mprj.slave_data_wdata_to_inter[47] ,
    \mprj.slave_data_wdata_to_inter[46] ,
    \mprj.slave_data_wdata_to_inter[45] ,
    \mprj.slave_data_wdata_to_inter[44] ,
    \mprj.slave_data_wdata_to_inter[43] ,
    \mprj.slave_data_wdata_to_inter[42] ,
    \mprj.slave_data_wdata_to_inter[41] ,
    \mprj.slave_data_wdata_to_inter[40] ,
    \mprj.slave_data_wdata_to_inter[39] ,
    \mprj.slave_data_wdata_to_inter[38] ,
    \mprj.slave_data_wdata_to_inter[37] ,
    \mprj.slave_data_wdata_to_inter[36] ,
    \mprj.slave_data_wdata_to_inter[35] ,
    \mprj.slave_data_wdata_to_inter[34] ,
    \mprj.slave_data_wdata_to_inter[33] ,
    \mprj.slave_data_wdata_to_inter[32] ,
    \mprj.slave_data_wdata_to_inter[31] ,
    \mprj.slave_data_wdata_to_inter[30] ,
    \mprj.slave_data_wdata_to_inter[29] ,
    \mprj.slave_data_wdata_to_inter[28] ,
    \mprj.slave_data_wdata_to_inter[27] ,
    \mprj.slave_data_wdata_to_inter[26] ,
    \mprj.slave_data_wdata_to_inter[25] ,
    \mprj.slave_data_wdata_to_inter[24] ,
    \mprj.slave_data_wdata_to_inter[23] ,
    \mprj.slave_data_wdata_to_inter[22] ,
    \mprj.slave_data_wdata_to_inter[21] ,
    \mprj.slave_data_wdata_to_inter[20] ,
    \mprj.slave_data_wdata_to_inter[19] ,
    \mprj.slave_data_wdata_to_inter[18] ,
    \mprj.slave_data_wdata_to_inter[17] ,
    \mprj.slave_data_wdata_to_inter[16] ,
    \mprj.slave_data_wdata_to_inter[15] ,
    \mprj.slave_data_wdata_to_inter[14] ,
    \mprj.slave_data_wdata_to_inter[13] ,
    \mprj.slave_data_wdata_to_inter[12] ,
    \mprj.slave_data_wdata_to_inter[11] ,
    \mprj.slave_data_wdata_to_inter[10] ,
    \mprj.slave_data_wdata_to_inter[9] ,
    \mprj.slave_data_wdata_to_inter[8] ,
    \mprj.slave_data_wdata_to_inter[7] ,
    \mprj.slave_data_wdata_to_inter[6] ,
    \mprj.slave_data_wdata_to_inter[5] ,
    \mprj.slave_data_wdata_to_inter[4] ,
    \mprj.slave_data_wdata_to_inter[3] ,
    \mprj.slave_data_wdata_to_inter[2] ,
    \mprj.slave_data_wdata_to_inter[1] ,
    \mprj.slave_data_wdata_to_inter[0] }),
    .slave_data_we_to_inter_o({\mprj.slave_data_we_to_inter[3] ,
    \mprj.slave_data_we_to_inter[2] ,
    \mprj.slave_data_we_to_inter[1] ,
    \mprj.slave_data_we_to_inter[0] }),
    .wbs_adr_i({net32,
    net31,
    net29,
    net28,
    net27,
    net26,
    net25,
    net24,
    net23,
    net22,
    net21,
    net20,
    net18,
    net17,
    net16,
    net15,
    net14,
    net13,
    net12,
    net11,
    net10,
    net9,
    net39,
    net38,
    net37,
    net36,
    net35,
    net34,
    net33,
    net30,
    net19,
    net8}),
    .wbs_dat_i({net65,
    net64,
    net62,
    net61,
    net60,
    net59,
    net58,
    net57,
    net56,
    net55,
    net54,
    net53,
    net51,
    net50,
    net49,
    net48,
    net47,
    net46,
    net45,
    net44,
    net43,
    net42,
    net72,
    net71,
    net70,
    net69,
    net68,
    net67,
    net66,
    net63,
    net52,
    net41}),
    .wbs_dat_o({net108,
    net107,
    net105,
    net104,
    net103,
    net102,
    net101,
    net100,
    net99,
    net98,
    net97,
    net96,
    net94,
    net93,
    net92,
    net91,
    net90,
    net89,
    net88,
    net87,
    net86,
    net85,
    net115,
    net114,
    net113,
    net112,
    net111,
    net110,
    net109,
    net106,
    net95,
    net84}),
    .wbs_sel_i({net76,
    net75,
    net74,
    net73}));
 sky130_sram_2kbyte_1rw1r_32x512_8 \mprj.sram_1_i  (.csb0(_0000_),
    .csb1(_0002_),
    .web0(_0001_),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mprj.slave_data_addr_to_inter[10] ,
    \mprj.slave_data_addr_to_inter[9] ,
    \mprj.slave_data_addr_to_inter[8] ,
    \mprj.slave_data_addr_to_inter[7] ,
    \mprj.slave_data_addr_to_inter[6] ,
    \mprj.slave_data_addr_to_inter[5] ,
    \mprj.slave_data_addr_to_inter[4] ,
    \mprj.slave_data_addr_to_inter[3] ,
    \mprj.slave_data_addr_to_inter[2] }),
    .addr1({\mprj.slave_data_addr_to_inter_ro[10] ,
    \mprj.slave_data_addr_to_inter_ro[9] ,
    \mprj.slave_data_addr_to_inter_ro[8] ,
    \mprj.slave_data_addr_to_inter_ro[7] ,
    \mprj.slave_data_addr_to_inter_ro[6] ,
    \mprj.slave_data_addr_to_inter_ro[5] ,
    \mprj.slave_data_addr_to_inter_ro[4] ,
    \mprj.slave_data_addr_to_inter_ro[3] ,
    \mprj.slave_data_addr_to_inter_ro[2] }),
    .din0({\mprj.slave_data_wdata_to_inter[31] ,
    \mprj.slave_data_wdata_to_inter[30] ,
    \mprj.slave_data_wdata_to_inter[29] ,
    \mprj.slave_data_wdata_to_inter[28] ,
    \mprj.slave_data_wdata_to_inter[27] ,
    \mprj.slave_data_wdata_to_inter[26] ,
    \mprj.slave_data_wdata_to_inter[25] ,
    \mprj.slave_data_wdata_to_inter[24] ,
    \mprj.slave_data_wdata_to_inter[23] ,
    \mprj.slave_data_wdata_to_inter[22] ,
    \mprj.slave_data_wdata_to_inter[21] ,
    \mprj.slave_data_wdata_to_inter[20] ,
    \mprj.slave_data_wdata_to_inter[19] ,
    \mprj.slave_data_wdata_to_inter[18] ,
    \mprj.slave_data_wdata_to_inter[17] ,
    \mprj.slave_data_wdata_to_inter[16] ,
    \mprj.slave_data_wdata_to_inter[15] ,
    \mprj.slave_data_wdata_to_inter[14] ,
    \mprj.slave_data_wdata_to_inter[13] ,
    \mprj.slave_data_wdata_to_inter[12] ,
    \mprj.slave_data_wdata_to_inter[11] ,
    \mprj.slave_data_wdata_to_inter[10] ,
    \mprj.slave_data_wdata_to_inter[9] ,
    \mprj.slave_data_wdata_to_inter[8] ,
    \mprj.slave_data_wdata_to_inter[7] ,
    \mprj.slave_data_wdata_to_inter[6] ,
    \mprj.slave_data_wdata_to_inter[5] ,
    \mprj.slave_data_wdata_to_inter[4] ,
    \mprj.slave_data_wdata_to_inter[3] ,
    \mprj.slave_data_wdata_to_inter[2] ,
    \mprj.slave_data_wdata_to_inter[1] ,
    \mprj.slave_data_wdata_to_inter[0] }),
    .dout0({\mprj.slave_data_rdata_to_inter[31] ,
    \mprj.slave_data_rdata_to_inter[30] ,
    \mprj.slave_data_rdata_to_inter[29] ,
    \mprj.slave_data_rdata_to_inter[28] ,
    \mprj.slave_data_rdata_to_inter[27] ,
    \mprj.slave_data_rdata_to_inter[26] ,
    \mprj.slave_data_rdata_to_inter[25] ,
    \mprj.slave_data_rdata_to_inter[24] ,
    \mprj.slave_data_rdata_to_inter[23] ,
    \mprj.slave_data_rdata_to_inter[22] ,
    \mprj.slave_data_rdata_to_inter[21] ,
    \mprj.slave_data_rdata_to_inter[20] ,
    \mprj.slave_data_rdata_to_inter[19] ,
    \mprj.slave_data_rdata_to_inter[18] ,
    \mprj.slave_data_rdata_to_inter[17] ,
    \mprj.slave_data_rdata_to_inter[16] ,
    \mprj.slave_data_rdata_to_inter[15] ,
    \mprj.slave_data_rdata_to_inter[14] ,
    \mprj.slave_data_rdata_to_inter[13] ,
    \mprj.slave_data_rdata_to_inter[12] ,
    \mprj.slave_data_rdata_to_inter[11] ,
    \mprj.slave_data_rdata_to_inter[10] ,
    \mprj.slave_data_rdata_to_inter[9] ,
    \mprj.slave_data_rdata_to_inter[8] ,
    \mprj.slave_data_rdata_to_inter[7] ,
    \mprj.slave_data_rdata_to_inter[6] ,
    \mprj.slave_data_rdata_to_inter[5] ,
    \mprj.slave_data_rdata_to_inter[4] ,
    \mprj.slave_data_rdata_to_inter[3] ,
    \mprj.slave_data_rdata_to_inter[2] ,
    \mprj.slave_data_rdata_to_inter[1] ,
    \mprj.slave_data_rdata_to_inter[0] }),
    .dout1({\mprj.slave_data_rdata_to_inter_ro[31] ,
    \mprj.slave_data_rdata_to_inter_ro[30] ,
    \mprj.slave_data_rdata_to_inter_ro[29] ,
    \mprj.slave_data_rdata_to_inter_ro[28] ,
    \mprj.slave_data_rdata_to_inter_ro[27] ,
    \mprj.slave_data_rdata_to_inter_ro[26] ,
    \mprj.slave_data_rdata_to_inter_ro[25] ,
    \mprj.slave_data_rdata_to_inter_ro[24] ,
    \mprj.slave_data_rdata_to_inter_ro[23] ,
    \mprj.slave_data_rdata_to_inter_ro[22] ,
    \mprj.slave_data_rdata_to_inter_ro[21] ,
    \mprj.slave_data_rdata_to_inter_ro[20] ,
    \mprj.slave_data_rdata_to_inter_ro[19] ,
    \mprj.slave_data_rdata_to_inter_ro[18] ,
    \mprj.slave_data_rdata_to_inter_ro[17] ,
    \mprj.slave_data_rdata_to_inter_ro[16] ,
    \mprj.slave_data_rdata_to_inter_ro[15] ,
    \mprj.slave_data_rdata_to_inter_ro[14] ,
    \mprj.slave_data_rdata_to_inter_ro[13] ,
    \mprj.slave_data_rdata_to_inter_ro[12] ,
    \mprj.slave_data_rdata_to_inter_ro[11] ,
    \mprj.slave_data_rdata_to_inter_ro[10] ,
    \mprj.slave_data_rdata_to_inter_ro[9] ,
    \mprj.slave_data_rdata_to_inter_ro[8] ,
    \mprj.slave_data_rdata_to_inter_ro[7] ,
    \mprj.slave_data_rdata_to_inter_ro[6] ,
    \mprj.slave_data_rdata_to_inter_ro[5] ,
    \mprj.slave_data_rdata_to_inter_ro[4] ,
    \mprj.slave_data_rdata_to_inter_ro[3] ,
    \mprj.slave_data_rdata_to_inter_ro[2] ,
    \mprj.slave_data_rdata_to_inter_ro[1] ,
    \mprj.slave_data_rdata_to_inter_ro[0] }),
    .wmask0({\mprj.slave_data_be_to_inter[3] ,
    \mprj.slave_data_be_to_inter[2] ,
    \mprj.slave_data_be_to_inter[1] ,
    \mprj.slave_data_be_to_inter[0] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 \mprj.sram_2_i  (.csb0(_0003_),
    .csb1(_0005_),
    .web0(_0004_),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mprj.slave_data_addr_to_inter[21] ,
    \mprj.slave_data_addr_to_inter[20] ,
    \mprj.slave_data_addr_to_inter[19] ,
    \mprj.slave_data_addr_to_inter[18] ,
    \mprj.slave_data_addr_to_inter[17] ,
    \mprj.slave_data_addr_to_inter[16] ,
    \mprj.slave_data_addr_to_inter[15] ,
    \mprj.slave_data_addr_to_inter[14] ,
    \mprj.slave_data_addr_to_inter[13] }),
    .addr1({\mprj.slave_data_addr_to_inter_ro[21] ,
    \mprj.slave_data_addr_to_inter_ro[20] ,
    \mprj.slave_data_addr_to_inter_ro[19] ,
    \mprj.slave_data_addr_to_inter_ro[18] ,
    \mprj.slave_data_addr_to_inter_ro[17] ,
    \mprj.slave_data_addr_to_inter_ro[16] ,
    \mprj.slave_data_addr_to_inter_ro[15] ,
    \mprj.slave_data_addr_to_inter_ro[14] ,
    \mprj.slave_data_addr_to_inter_ro[13] }),
    .din0({\mprj.slave_data_wdata_to_inter[63] ,
    \mprj.slave_data_wdata_to_inter[62] ,
    \mprj.slave_data_wdata_to_inter[61] ,
    \mprj.slave_data_wdata_to_inter[60] ,
    \mprj.slave_data_wdata_to_inter[59] ,
    \mprj.slave_data_wdata_to_inter[58] ,
    \mprj.slave_data_wdata_to_inter[57] ,
    \mprj.slave_data_wdata_to_inter[56] ,
    \mprj.slave_data_wdata_to_inter[55] ,
    \mprj.slave_data_wdata_to_inter[54] ,
    \mprj.slave_data_wdata_to_inter[53] ,
    \mprj.slave_data_wdata_to_inter[52] ,
    \mprj.slave_data_wdata_to_inter[51] ,
    \mprj.slave_data_wdata_to_inter[50] ,
    \mprj.slave_data_wdata_to_inter[49] ,
    \mprj.slave_data_wdata_to_inter[48] ,
    \mprj.slave_data_wdata_to_inter[47] ,
    \mprj.slave_data_wdata_to_inter[46] ,
    \mprj.slave_data_wdata_to_inter[45] ,
    \mprj.slave_data_wdata_to_inter[44] ,
    \mprj.slave_data_wdata_to_inter[43] ,
    \mprj.slave_data_wdata_to_inter[42] ,
    \mprj.slave_data_wdata_to_inter[41] ,
    \mprj.slave_data_wdata_to_inter[40] ,
    \mprj.slave_data_wdata_to_inter[39] ,
    \mprj.slave_data_wdata_to_inter[38] ,
    \mprj.slave_data_wdata_to_inter[37] ,
    \mprj.slave_data_wdata_to_inter[36] ,
    \mprj.slave_data_wdata_to_inter[35] ,
    \mprj.slave_data_wdata_to_inter[34] ,
    \mprj.slave_data_wdata_to_inter[33] ,
    \mprj.slave_data_wdata_to_inter[32] }),
    .dout0({\mprj.slave_data_rdata_to_inter[63] ,
    \mprj.slave_data_rdata_to_inter[62] ,
    \mprj.slave_data_rdata_to_inter[61] ,
    \mprj.slave_data_rdata_to_inter[60] ,
    \mprj.slave_data_rdata_to_inter[59] ,
    \mprj.slave_data_rdata_to_inter[58] ,
    \mprj.slave_data_rdata_to_inter[57] ,
    \mprj.slave_data_rdata_to_inter[56] ,
    \mprj.slave_data_rdata_to_inter[55] ,
    \mprj.slave_data_rdata_to_inter[54] ,
    \mprj.slave_data_rdata_to_inter[53] ,
    \mprj.slave_data_rdata_to_inter[52] ,
    \mprj.slave_data_rdata_to_inter[51] ,
    \mprj.slave_data_rdata_to_inter[50] ,
    \mprj.slave_data_rdata_to_inter[49] ,
    \mprj.slave_data_rdata_to_inter[48] ,
    \mprj.slave_data_rdata_to_inter[47] ,
    \mprj.slave_data_rdata_to_inter[46] ,
    \mprj.slave_data_rdata_to_inter[45] ,
    \mprj.slave_data_rdata_to_inter[44] ,
    \mprj.slave_data_rdata_to_inter[43] ,
    \mprj.slave_data_rdata_to_inter[42] ,
    \mprj.slave_data_rdata_to_inter[41] ,
    \mprj.slave_data_rdata_to_inter[40] ,
    \mprj.slave_data_rdata_to_inter[39] ,
    \mprj.slave_data_rdata_to_inter[38] ,
    \mprj.slave_data_rdata_to_inter[37] ,
    \mprj.slave_data_rdata_to_inter[36] ,
    \mprj.slave_data_rdata_to_inter[35] ,
    \mprj.slave_data_rdata_to_inter[34] ,
    \mprj.slave_data_rdata_to_inter[33] ,
    \mprj.slave_data_rdata_to_inter[32] }),
    .dout1({\mprj.slave_data_rdata_to_inter_ro[63] ,
    \mprj.slave_data_rdata_to_inter_ro[62] ,
    \mprj.slave_data_rdata_to_inter_ro[61] ,
    \mprj.slave_data_rdata_to_inter_ro[60] ,
    \mprj.slave_data_rdata_to_inter_ro[59] ,
    \mprj.slave_data_rdata_to_inter_ro[58] ,
    \mprj.slave_data_rdata_to_inter_ro[57] ,
    \mprj.slave_data_rdata_to_inter_ro[56] ,
    \mprj.slave_data_rdata_to_inter_ro[55] ,
    \mprj.slave_data_rdata_to_inter_ro[54] ,
    \mprj.slave_data_rdata_to_inter_ro[53] ,
    \mprj.slave_data_rdata_to_inter_ro[52] ,
    \mprj.slave_data_rdata_to_inter_ro[51] ,
    \mprj.slave_data_rdata_to_inter_ro[50] ,
    \mprj.slave_data_rdata_to_inter_ro[49] ,
    \mprj.slave_data_rdata_to_inter_ro[48] ,
    \mprj.slave_data_rdata_to_inter_ro[47] ,
    \mprj.slave_data_rdata_to_inter_ro[46] ,
    \mprj.slave_data_rdata_to_inter_ro[45] ,
    \mprj.slave_data_rdata_to_inter_ro[44] ,
    \mprj.slave_data_rdata_to_inter_ro[43] ,
    \mprj.slave_data_rdata_to_inter_ro[42] ,
    \mprj.slave_data_rdata_to_inter_ro[41] ,
    \mprj.slave_data_rdata_to_inter_ro[40] ,
    \mprj.slave_data_rdata_to_inter_ro[39] ,
    \mprj.slave_data_rdata_to_inter_ro[38] ,
    \mprj.slave_data_rdata_to_inter_ro[37] ,
    \mprj.slave_data_rdata_to_inter_ro[36] ,
    \mprj.slave_data_rdata_to_inter_ro[35] ,
    \mprj.slave_data_rdata_to_inter_ro[34] ,
    \mprj.slave_data_rdata_to_inter_ro[33] ,
    \mprj.slave_data_rdata_to_inter_ro[32] }),
    .wmask0({\mprj.slave_data_be_to_inter[7] ,
    \mprj.slave_data_be_to_inter[6] ,
    \mprj.slave_data_be_to_inter[5] ,
    \mprj.slave_data_be_to_inter[4] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 \mprj.sram_3_i  (.csb0(_0006_),
    .csb1(_0008_),
    .web0(_0007_),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mprj.slave_data_addr_to_inter[32] ,
    \mprj.slave_data_addr_to_inter[31] ,
    \mprj.slave_data_addr_to_inter[30] ,
    \mprj.slave_data_addr_to_inter[29] ,
    \mprj.slave_data_addr_to_inter[28] ,
    \mprj.slave_data_addr_to_inter[27] ,
    \mprj.slave_data_addr_to_inter[26] ,
    \mprj.slave_data_addr_to_inter[25] ,
    \mprj.slave_data_addr_to_inter[24] }),
    .addr1({\mprj.slave_data_addr_to_inter_ro[32] ,
    \mprj.slave_data_addr_to_inter_ro[31] ,
    \mprj.slave_data_addr_to_inter_ro[30] ,
    \mprj.slave_data_addr_to_inter_ro[29] ,
    \mprj.slave_data_addr_to_inter_ro[28] ,
    \mprj.slave_data_addr_to_inter_ro[27] ,
    \mprj.slave_data_addr_to_inter_ro[26] ,
    \mprj.slave_data_addr_to_inter_ro[25] ,
    \mprj.slave_data_addr_to_inter_ro[24] }),
    .din0({\mprj.slave_data_wdata_to_inter[95] ,
    \mprj.slave_data_wdata_to_inter[94] ,
    \mprj.slave_data_wdata_to_inter[93] ,
    \mprj.slave_data_wdata_to_inter[92] ,
    \mprj.slave_data_wdata_to_inter[91] ,
    \mprj.slave_data_wdata_to_inter[90] ,
    \mprj.slave_data_wdata_to_inter[89] ,
    \mprj.slave_data_wdata_to_inter[88] ,
    \mprj.slave_data_wdata_to_inter[87] ,
    \mprj.slave_data_wdata_to_inter[86] ,
    \mprj.slave_data_wdata_to_inter[85] ,
    \mprj.slave_data_wdata_to_inter[84] ,
    \mprj.slave_data_wdata_to_inter[83] ,
    \mprj.slave_data_wdata_to_inter[82] ,
    \mprj.slave_data_wdata_to_inter[81] ,
    \mprj.slave_data_wdata_to_inter[80] ,
    \mprj.slave_data_wdata_to_inter[79] ,
    \mprj.slave_data_wdata_to_inter[78] ,
    \mprj.slave_data_wdata_to_inter[77] ,
    \mprj.slave_data_wdata_to_inter[76] ,
    \mprj.slave_data_wdata_to_inter[75] ,
    \mprj.slave_data_wdata_to_inter[74] ,
    \mprj.slave_data_wdata_to_inter[73] ,
    \mprj.slave_data_wdata_to_inter[72] ,
    \mprj.slave_data_wdata_to_inter[71] ,
    \mprj.slave_data_wdata_to_inter[70] ,
    \mprj.slave_data_wdata_to_inter[69] ,
    \mprj.slave_data_wdata_to_inter[68] ,
    \mprj.slave_data_wdata_to_inter[67] ,
    \mprj.slave_data_wdata_to_inter[66] ,
    \mprj.slave_data_wdata_to_inter[65] ,
    \mprj.slave_data_wdata_to_inter[64] }),
    .dout0({\mprj.slave_data_rdata_to_inter[95] ,
    \mprj.slave_data_rdata_to_inter[94] ,
    \mprj.slave_data_rdata_to_inter[93] ,
    \mprj.slave_data_rdata_to_inter[92] ,
    \mprj.slave_data_rdata_to_inter[91] ,
    \mprj.slave_data_rdata_to_inter[90] ,
    \mprj.slave_data_rdata_to_inter[89] ,
    \mprj.slave_data_rdata_to_inter[88] ,
    \mprj.slave_data_rdata_to_inter[87] ,
    \mprj.slave_data_rdata_to_inter[86] ,
    \mprj.slave_data_rdata_to_inter[85] ,
    \mprj.slave_data_rdata_to_inter[84] ,
    \mprj.slave_data_rdata_to_inter[83] ,
    \mprj.slave_data_rdata_to_inter[82] ,
    \mprj.slave_data_rdata_to_inter[81] ,
    \mprj.slave_data_rdata_to_inter[80] ,
    \mprj.slave_data_rdata_to_inter[79] ,
    \mprj.slave_data_rdata_to_inter[78] ,
    \mprj.slave_data_rdata_to_inter[77] ,
    \mprj.slave_data_rdata_to_inter[76] ,
    \mprj.slave_data_rdata_to_inter[75] ,
    \mprj.slave_data_rdata_to_inter[74] ,
    \mprj.slave_data_rdata_to_inter[73] ,
    \mprj.slave_data_rdata_to_inter[72] ,
    \mprj.slave_data_rdata_to_inter[71] ,
    \mprj.slave_data_rdata_to_inter[70] ,
    \mprj.slave_data_rdata_to_inter[69] ,
    \mprj.slave_data_rdata_to_inter[68] ,
    \mprj.slave_data_rdata_to_inter[67] ,
    \mprj.slave_data_rdata_to_inter[66] ,
    \mprj.slave_data_rdata_to_inter[65] ,
    \mprj.slave_data_rdata_to_inter[64] }),
    .dout1({\mprj.slave_data_rdata_to_inter_ro[95] ,
    \mprj.slave_data_rdata_to_inter_ro[94] ,
    \mprj.slave_data_rdata_to_inter_ro[93] ,
    \mprj.slave_data_rdata_to_inter_ro[92] ,
    \mprj.slave_data_rdata_to_inter_ro[91] ,
    \mprj.slave_data_rdata_to_inter_ro[90] ,
    \mprj.slave_data_rdata_to_inter_ro[89] ,
    \mprj.slave_data_rdata_to_inter_ro[88] ,
    \mprj.slave_data_rdata_to_inter_ro[87] ,
    \mprj.slave_data_rdata_to_inter_ro[86] ,
    \mprj.slave_data_rdata_to_inter_ro[85] ,
    \mprj.slave_data_rdata_to_inter_ro[84] ,
    \mprj.slave_data_rdata_to_inter_ro[83] ,
    \mprj.slave_data_rdata_to_inter_ro[82] ,
    \mprj.slave_data_rdata_to_inter_ro[81] ,
    \mprj.slave_data_rdata_to_inter_ro[80] ,
    \mprj.slave_data_rdata_to_inter_ro[79] ,
    \mprj.slave_data_rdata_to_inter_ro[78] ,
    \mprj.slave_data_rdata_to_inter_ro[77] ,
    \mprj.slave_data_rdata_to_inter_ro[76] ,
    \mprj.slave_data_rdata_to_inter_ro[75] ,
    \mprj.slave_data_rdata_to_inter_ro[74] ,
    \mprj.slave_data_rdata_to_inter_ro[73] ,
    \mprj.slave_data_rdata_to_inter_ro[72] ,
    \mprj.slave_data_rdata_to_inter_ro[71] ,
    \mprj.slave_data_rdata_to_inter_ro[70] ,
    \mprj.slave_data_rdata_to_inter_ro[69] ,
    \mprj.slave_data_rdata_to_inter_ro[68] ,
    \mprj.slave_data_rdata_to_inter_ro[67] ,
    \mprj.slave_data_rdata_to_inter_ro[66] ,
    \mprj.slave_data_rdata_to_inter_ro[65] ,
    \mprj.slave_data_rdata_to_inter_ro[64] }),
    .wmask0({\mprj.slave_data_be_to_inter[11] ,
    \mprj.slave_data_be_to_inter[10] ,
    \mprj.slave_data_be_to_inter[9] ,
    \mprj.slave_data_be_to_inter[8] }));
 sky130_sram_2kbyte_1rw1r_32x512_8 \mprj.sram_4_i  (.csb0(_0009_),
    .csb1(_0011_),
    .web0(_0010_),
    .clk0(wb_clk_i),
    .clk1(wb_clk_i),
    .vccd1(vccd1),
    .vssd1(vssd1),
    .addr0({\mprj.slave_data_addr_to_inter[43] ,
    \mprj.slave_data_addr_to_inter[42] ,
    \mprj.slave_data_addr_to_inter[41] ,
    \mprj.slave_data_addr_to_inter[40] ,
    \mprj.slave_data_addr_to_inter[39] ,
    \mprj.slave_data_addr_to_inter[38] ,
    \mprj.slave_data_addr_to_inter[37] ,
    \mprj.slave_data_addr_to_inter[36] ,
    \mprj.slave_data_addr_to_inter[35] }),
    .addr1({\mprj.slave_data_addr_to_inter_ro[43] ,
    \mprj.slave_data_addr_to_inter_ro[42] ,
    \mprj.slave_data_addr_to_inter_ro[41] ,
    \mprj.slave_data_addr_to_inter_ro[40] ,
    \mprj.slave_data_addr_to_inter_ro[39] ,
    \mprj.slave_data_addr_to_inter_ro[38] ,
    \mprj.slave_data_addr_to_inter_ro[37] ,
    \mprj.slave_data_addr_to_inter_ro[36] ,
    \mprj.slave_data_addr_to_inter_ro[35] }),
    .din0({\mprj.slave_data_wdata_to_inter[127] ,
    \mprj.slave_data_wdata_to_inter[126] ,
    \mprj.slave_data_wdata_to_inter[125] ,
    \mprj.slave_data_wdata_to_inter[124] ,
    \mprj.slave_data_wdata_to_inter[123] ,
    \mprj.slave_data_wdata_to_inter[122] ,
    \mprj.slave_data_wdata_to_inter[121] ,
    \mprj.slave_data_wdata_to_inter[120] ,
    \mprj.slave_data_wdata_to_inter[119] ,
    \mprj.slave_data_wdata_to_inter[118] ,
    \mprj.slave_data_wdata_to_inter[117] ,
    \mprj.slave_data_wdata_to_inter[116] ,
    \mprj.slave_data_wdata_to_inter[115] ,
    \mprj.slave_data_wdata_to_inter[114] ,
    \mprj.slave_data_wdata_to_inter[113] ,
    \mprj.slave_data_wdata_to_inter[112] ,
    \mprj.slave_data_wdata_to_inter[111] ,
    \mprj.slave_data_wdata_to_inter[110] ,
    \mprj.slave_data_wdata_to_inter[109] ,
    \mprj.slave_data_wdata_to_inter[108] ,
    \mprj.slave_data_wdata_to_inter[107] ,
    \mprj.slave_data_wdata_to_inter[106] ,
    \mprj.slave_data_wdata_to_inter[105] ,
    \mprj.slave_data_wdata_to_inter[104] ,
    \mprj.slave_data_wdata_to_inter[103] ,
    \mprj.slave_data_wdata_to_inter[102] ,
    \mprj.slave_data_wdata_to_inter[101] ,
    \mprj.slave_data_wdata_to_inter[100] ,
    \mprj.slave_data_wdata_to_inter[99] ,
    \mprj.slave_data_wdata_to_inter[98] ,
    \mprj.slave_data_wdata_to_inter[97] ,
    \mprj.slave_data_wdata_to_inter[96] }),
    .dout0({\mprj.slave_data_rdata_to_inter[127] ,
    \mprj.slave_data_rdata_to_inter[126] ,
    \mprj.slave_data_rdata_to_inter[125] ,
    \mprj.slave_data_rdata_to_inter[124] ,
    \mprj.slave_data_rdata_to_inter[123] ,
    \mprj.slave_data_rdata_to_inter[122] ,
    \mprj.slave_data_rdata_to_inter[121] ,
    \mprj.slave_data_rdata_to_inter[120] ,
    \mprj.slave_data_rdata_to_inter[119] ,
    \mprj.slave_data_rdata_to_inter[118] ,
    \mprj.slave_data_rdata_to_inter[117] ,
    \mprj.slave_data_rdata_to_inter[116] ,
    \mprj.slave_data_rdata_to_inter[115] ,
    \mprj.slave_data_rdata_to_inter[114] ,
    \mprj.slave_data_rdata_to_inter[113] ,
    \mprj.slave_data_rdata_to_inter[112] ,
    \mprj.slave_data_rdata_to_inter[111] ,
    \mprj.slave_data_rdata_to_inter[110] ,
    \mprj.slave_data_rdata_to_inter[109] ,
    \mprj.slave_data_rdata_to_inter[108] ,
    \mprj.slave_data_rdata_to_inter[107] ,
    \mprj.slave_data_rdata_to_inter[106] ,
    \mprj.slave_data_rdata_to_inter[105] ,
    \mprj.slave_data_rdata_to_inter[104] ,
    \mprj.slave_data_rdata_to_inter[103] ,
    \mprj.slave_data_rdata_to_inter[102] ,
    \mprj.slave_data_rdata_to_inter[101] ,
    \mprj.slave_data_rdata_to_inter[100] ,
    \mprj.slave_data_rdata_to_inter[99] ,
    \mprj.slave_data_rdata_to_inter[98] ,
    \mprj.slave_data_rdata_to_inter[97] ,
    \mprj.slave_data_rdata_to_inter[96] }),
    .dout1({\mprj.slave_data_rdata_to_inter_ro[127] ,
    \mprj.slave_data_rdata_to_inter_ro[126] ,
    \mprj.slave_data_rdata_to_inter_ro[125] ,
    \mprj.slave_data_rdata_to_inter_ro[124] ,
    \mprj.slave_data_rdata_to_inter_ro[123] ,
    \mprj.slave_data_rdata_to_inter_ro[122] ,
    \mprj.slave_data_rdata_to_inter_ro[121] ,
    \mprj.slave_data_rdata_to_inter_ro[120] ,
    \mprj.slave_data_rdata_to_inter_ro[119] ,
    \mprj.slave_data_rdata_to_inter_ro[118] ,
    \mprj.slave_data_rdata_to_inter_ro[117] ,
    \mprj.slave_data_rdata_to_inter_ro[116] ,
    \mprj.slave_data_rdata_to_inter_ro[115] ,
    \mprj.slave_data_rdata_to_inter_ro[114] ,
    \mprj.slave_data_rdata_to_inter_ro[113] ,
    \mprj.slave_data_rdata_to_inter_ro[112] ,
    \mprj.slave_data_rdata_to_inter_ro[111] ,
    \mprj.slave_data_rdata_to_inter_ro[110] ,
    \mprj.slave_data_rdata_to_inter_ro[109] ,
    \mprj.slave_data_rdata_to_inter_ro[108] ,
    \mprj.slave_data_rdata_to_inter_ro[107] ,
    \mprj.slave_data_rdata_to_inter_ro[106] ,
    \mprj.slave_data_rdata_to_inter_ro[105] ,
    \mprj.slave_data_rdata_to_inter_ro[104] ,
    \mprj.slave_data_rdata_to_inter_ro[103] ,
    \mprj.slave_data_rdata_to_inter_ro[102] ,
    \mprj.slave_data_rdata_to_inter_ro[101] ,
    \mprj.slave_data_rdata_to_inter_ro[100] ,
    \mprj.slave_data_rdata_to_inter_ro[99] ,
    \mprj.slave_data_rdata_to_inter_ro[98] ,
    \mprj.slave_data_rdata_to_inter_ro[97] ,
    \mprj.slave_data_rdata_to_inter_ro[96] }),
    .wmask0({\mprj.slave_data_be_to_inter[15] ,
    \mprj.slave_data_be_to_inter[14] ,
    \mprj.slave_data_be_to_inter[13] ,
    \mprj.slave_data_be_to_inter[12] }));
 sky130_fd_sc_hd__buf_2 output100 (.A(net100),
    .X(wbs_dat_o[24]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output101 (.A(net101),
    .X(wbs_dat_o[25]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output102 (.A(net102),
    .X(wbs_dat_o[26]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output103 (.A(net103),
    .X(wbs_dat_o[27]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output104 (.A(net104),
    .X(wbs_dat_o[28]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output105 (.A(net105),
    .X(wbs_dat_o[29]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output106 (.A(net106),
    .X(wbs_dat_o[2]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output107 (.A(net107),
    .X(wbs_dat_o[30]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output108 (.A(net108),
    .X(wbs_dat_o[31]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output109 (.A(net109),
    .X(wbs_dat_o[3]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output110 (.A(net110),
    .X(wbs_dat_o[4]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output111 (.A(net111),
    .X(wbs_dat_o[5]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output112 (.A(net112),
    .X(wbs_dat_o[6]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output113 (.A(net113),
    .X(wbs_dat_o[7]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output114 (.A(net114),
    .X(wbs_dat_o[8]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output115 (.A(net115),
    .X(wbs_dat_o[9]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output79 (.A(net121),
    .X(io_out[10]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output80 (.A(net120),
    .X(io_out[11]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output81 (.A(net161),
    .X(io_out[12]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output82 (.A(net82),
    .X(io_out[16]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output83 (.A(net83),
    .X(wbs_ack_o),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output84 (.A(net84),
    .X(wbs_dat_o[0]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output85 (.A(net85),
    .X(wbs_dat_o[10]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output86 (.A(net86),
    .X(wbs_dat_o[11]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output87 (.A(net87),
    .X(wbs_dat_o[12]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output88 (.A(net88),
    .X(wbs_dat_o[13]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output89 (.A(net89),
    .X(wbs_dat_o[14]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output90 (.A(net90),
    .X(wbs_dat_o[15]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output91 (.A(net91),
    .X(wbs_dat_o[16]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output92 (.A(net92),
    .X(wbs_dat_o[17]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output93 (.A(net93),
    .X(wbs_dat_o[18]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output94 (.A(net94),
    .X(wbs_dat_o[19]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output95 (.A(net95),
    .X(wbs_dat_o[1]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output96 (.A(net96),
    .X(wbs_dat_o[20]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output97 (.A(net97),
    .X(wbs_dat_o[21]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output98 (.A(net98),
    .X(wbs_dat_o[22]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_2 output99 (.A(net99),
    .X(wbs_dat_o[23]),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater116 (.A(net117),
    .X(net116),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater117 (.A(net7),
    .X(net117),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater118 (.A(net2),
    .X(net118),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater119 (.A(net1),
    .X(net119),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater120 (.A(net80),
    .X(net120),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater121 (.A(net79),
    .X(net121),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater122 (.A(\mprj.master_data_rvalid_to_inter_ro[1] ),
    .X(net122),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater123 (.A(\mprj.master_data_rvalid_to_inter[1] ),
    .X(net123),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater124 (.A(\mprj.master_data_rdata_to_inter_ro[63] ),
    .X(net124),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater125 (.A(\mprj.master_data_rdata_to_inter_ro[62] ),
    .X(net125),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater126 (.A(\mprj.master_data_rdata_to_inter_ro[61] ),
    .X(net126),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater127 (.A(\mprj.master_data_rdata_to_inter[63] ),
    .X(net127),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater128 (.A(\mprj.master_data_rdata_to_inter[62] ),
    .X(net128),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater129 (.A(\mprj.master_data_rdata_to_inter[61] ),
    .X(net129),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater130 (.A(\mprj.master_data_rdata_to_inter[60] ),
    .X(net130),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater131 (.A(\mprj.master_data_rdata_to_inter[59] ),
    .X(net131),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater132 (.A(\mprj.master_data_rdata_to_inter[58] ),
    .X(net132),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater133 (.A(\mprj.master_data_rdata_to_inter[57] ),
    .X(net133),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater134 (.A(\mprj.master_data_rdata_to_inter[56] ),
    .X(net134),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater135 (.A(\mprj.master_data_rdata_to_inter[55] ),
    .X(net135),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater136 (.A(\mprj.master_data_rdata_to_inter[54] ),
    .X(net136),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater137 (.A(\mprj.master_data_rdata_to_inter[53] ),
    .X(net137),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater138 (.A(\mprj.master_data_rdata_to_inter[52] ),
    .X(net138),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater139 (.A(\mprj.master_data_rdata_to_inter[51] ),
    .X(net139),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater140 (.A(\mprj.master_data_rdata_to_inter[50] ),
    .X(net140),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater141 (.A(\mprj.master_data_rdata_to_inter[49] ),
    .X(net141),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater142 (.A(\mprj.master_data_rdata_to_inter[48] ),
    .X(net142),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater143 (.A(\mprj.master_data_rdata_to_inter[47] ),
    .X(net143),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater144 (.A(\mprj.master_data_rdata_to_inter[46] ),
    .X(net144),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater145 (.A(\mprj.master_data_rdata_to_inter[45] ),
    .X(net145),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater146 (.A(\mprj.master_data_rdata_to_inter[44] ),
    .X(net146),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater147 (.A(\mprj.master_data_rdata_to_inter[43] ),
    .X(net147),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater148 (.A(\mprj.master_data_rdata_to_inter[42] ),
    .X(net148),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater149 (.A(\mprj.master_data_rdata_to_inter[41] ),
    .X(net149),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater150 (.A(\mprj.master_data_rdata_to_inter[40] ),
    .X(net150),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater151 (.A(\mprj.master_data_rdata_to_inter[39] ),
    .X(net151),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater152 (.A(\mprj.master_data_rdata_to_inter[38] ),
    .X(net152),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater153 (.A(\mprj.master_data_rdata_to_inter[37] ),
    .X(net153),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater154 (.A(\mprj.master_data_rdata_to_inter[36] ),
    .X(net154),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater155 (.A(\mprj.master_data_rdata_to_inter[35] ),
    .X(net155),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater156 (.A(\mprj.master_data_rdata_to_inter[34] ),
    .X(net156),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater157 (.A(\mprj.master_data_rdata_to_inter[33] ),
    .X(net157),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater158 (.A(\mprj.master_data_rdata_to_inter[32] ),
    .X(net158),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater159 (.A(\mprj.master_data_gnt_to_inter_ro[1] ),
    .X(net159),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater160 (.A(\mprj.master_data_gnt_to_inter[1] ),
    .X(net160),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater161 (.A(net81),
    .X(net161),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater162 (.A(\mprj.master_data_req_to_inter_ro[1] ),
    .X(net162),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater163 (.A(\mprj.master_data_addr_to_inter_ro[22] ),
    .X(net163),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater164 (.A(\mprj.master_data_addr_to_inter_ro[21] ),
    .X(net164),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater165 (.A(\mprj.master_data_addr_to_inter_ro[20] ),
    .X(net165),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater166 (.A(\mprj.master_data_addr_to_inter_ro[19] ),
    .X(net166),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater167 (.A(\mprj.master_data_addr_to_inter_ro[18] ),
    .X(net167),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater168 (.A(\mprj.master_data_addr_to_inter_ro[17] ),
    .X(net168),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater169 (.A(\mprj.master_data_addr_to_inter_ro[16] ),
    .X(net169),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater170 (.A(\mprj.master_data_addr_to_inter_ro[15] ),
    .X(net170),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater171 (.A(\mprj.master_data_addr_to_inter_ro[14] ),
    .X(net171),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater172 (.A(\mprj.master_data_addr_to_inter_ro[25] ),
    .X(net172),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater173 (.A(\mprj.master_data_addr_to_inter_ro[24] ),
    .X(net173),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater174 (.A(\mprj.master_data_addr_to_inter_ro[23] ),
    .X(net174),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater175 (.A(\mprj.master_data_addr_to_inter_ro[13] ),
    .X(net175),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater176 (.A(\mprj.master_data_we_to_inter[1] ),
    .X(net176),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater177 (.A(\mprj.master_data_wdata_to_inter[41] ),
    .X(net177),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater178 (.A(\mprj.master_data_wdata_to_inter[40] ),
    .X(net178),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater179 (.A(\mprj.master_data_wdata_to_inter[39] ),
    .X(net179),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater180 (.A(\mprj.master_data_wdata_to_inter[38] ),
    .X(net180),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater181 (.A(\mprj.master_data_wdata_to_inter[37] ),
    .X(net181),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater182 (.A(\mprj.master_data_wdata_to_inter[36] ),
    .X(net182),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater183 (.A(\mprj.master_data_wdata_to_inter[35] ),
    .X(net183),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater184 (.A(\mprj.master_data_wdata_to_inter[63] ),
    .X(net184),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater185 (.A(\mprj.master_data_wdata_to_inter[62] ),
    .X(net185),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater186 (.A(\mprj.master_data_wdata_to_inter[34] ),
    .X(net186),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater187 (.A(\mprj.master_data_wdata_to_inter[61] ),
    .X(net187),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater188 (.A(\mprj.master_data_wdata_to_inter[60] ),
    .X(net188),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater189 (.A(\mprj.master_data_wdata_to_inter[59] ),
    .X(net189),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater190 (.A(\mprj.master_data_wdata_to_inter[58] ),
    .X(net190),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater191 (.A(\mprj.master_data_wdata_to_inter[57] ),
    .X(net191),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater192 (.A(\mprj.master_data_wdata_to_inter[56] ),
    .X(net192),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater193 (.A(\mprj.master_data_wdata_to_inter[55] ),
    .X(net193),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater194 (.A(\mprj.master_data_wdata_to_inter[54] ),
    .X(net194),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater195 (.A(\mprj.master_data_wdata_to_inter[53] ),
    .X(net195),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater196 (.A(\mprj.master_data_wdata_to_inter[52] ),
    .X(net196),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater197 (.A(\mprj.master_data_wdata_to_inter[33] ),
    .X(net197),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater198 (.A(\mprj.master_data_wdata_to_inter[51] ),
    .X(net198),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater199 (.A(\mprj.master_data_wdata_to_inter[50] ),
    .X(net199),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater200 (.A(\mprj.master_data_wdata_to_inter[49] ),
    .X(net200),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater201 (.A(\mprj.master_data_wdata_to_inter[48] ),
    .X(net201),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater202 (.A(\mprj.master_data_wdata_to_inter[47] ),
    .X(net202),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater203 (.A(\mprj.master_data_wdata_to_inter[46] ),
    .X(net203),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater204 (.A(\mprj.master_data_wdata_to_inter[45] ),
    .X(net204),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater205 (.A(\mprj.master_data_wdata_to_inter[44] ),
    .X(net205),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater206 (.A(\mprj.master_data_wdata_to_inter[43] ),
    .X(net206),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater207 (.A(\mprj.master_data_wdata_to_inter[42] ),
    .X(net207),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater208 (.A(\mprj.master_data_wdata_to_inter[32] ),
    .X(net208),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater209 (.A(\mprj.master_data_req_to_inter[1] ),
    .X(net209),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater210 (.A(\mprj.master_data_be_to_inter[7] ),
    .X(net210),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater211 (.A(\mprj.master_data_be_to_inter[6] ),
    .X(net211),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater212 (.A(\mprj.master_data_be_to_inter[5] ),
    .X(net212),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater213 (.A(\mprj.master_data_be_to_inter[4] ),
    .X(net213),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater214 (.A(\mprj.flexbex_addr_o[9] ),
    .X(net214),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater215 (.A(\mprj.flexbex_addr_o[8] ),
    .X(net215),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater216 (.A(\mprj.flexbex_addr_o[7] ),
    .X(net216),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater217 (.A(\mprj.flexbex_addr_o[6] ),
    .X(net217),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater218 (.A(\mprj.flexbex_addr_o[5] ),
    .X(net218),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater219 (.A(\mprj.flexbex_addr_o[4] ),
    .X(net219),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater220 (.A(\mprj.flexbex_addr_o[3] ),
    .X(net220),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater221 (.A(\mprj.flexbex_addr_o[2] ),
    .X(net221),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater222 (.A(\mprj.flexbex_addr_o[13] ),
    .X(net222),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater223 (.A(\mprj.flexbex_addr_o[12] ),
    .X(net223),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater224 (.A(\mprj.flexbex_addr_o[11] ),
    .X(net224),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
 sky130_fd_sc_hd__buf_12 repeater225 (.A(\mprj.flexbex_addr_o[10] ),
    .X(net225),
    .VGND(vssd1),
    .VNB(vssd1),
    .VPB(vccd1),
    .VPWR(vccd1));
endmodule
