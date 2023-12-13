`default_nettype none

module combined_cells (
    input [5:0] in,
    output [209:0] out_notouch_
);

// constants
/////////////
gf180mcu_fd_sc_mcu9t5v0__tieh tieh_inst(.Z(out_notouch_[0]));
gf180mcu_fd_sc_mcu9t5v0__tiel tiel_inst(.ZN(out_notouch_[1]));

// buffers & inverters
///////////////////////
gf180mcu_fd_sc_mcu9t5v0__buf_1 buf_1_inst(.I(in[0]), .Z(out_notouch_[2]));
gf180mcu_fd_sc_mcu9t5v0__buf_2 buf_2_inst(.I(in[0]), .Z(out_notouch_[3]));
gf180mcu_fd_sc_mcu9t5v0__buf_3 buf_3_inst(.I(in[0]), .Z(out_notouch_[4]));
gf180mcu_fd_sc_mcu9t5v0__buf_4 buf_4_inst(.I(in[0]), .Z(out_notouch_[5]));
gf180mcu_fd_sc_mcu9t5v0__buf_8 buf_8_inst(.I(in[0]), .Z(out_notouch_[6]));
gf180mcu_fd_sc_mcu9t5v0__buf_12 buf_12_inst(.I(in[0]), .Z(out_notouch_[7]));
gf180mcu_fd_sc_mcu9t5v0__buf_16 buf_16_inst(.I(in[0]), .Z(out_notouch_[8]));
gf180mcu_fd_sc_mcu9t5v0__buf_20 buf_20_inst(.I(in[0]), .Z(out_notouch_[9]));
gf180mcu_fd_sc_mcu9t5v0__inv_1 inv_1_inst(.I(in[0]), .ZN(out_notouch_[10]));
gf180mcu_fd_sc_mcu9t5v0__inv_2 inv_2_inst(.I(in[0]), .ZN(out_notouch_[11]));
gf180mcu_fd_sc_mcu9t5v0__inv_3 inv_3_inst(.I(in[0]), .ZN(out_notouch_[12]));
gf180mcu_fd_sc_mcu9t5v0__inv_4 inv_4_inst(.I(in[0]), .ZN(out_notouch_[13]));
gf180mcu_fd_sc_mcu9t5v0__inv_8 inv_8_inst(.I(in[0]), .ZN(out_notouch_[14]));
gf180mcu_fd_sc_mcu9t5v0__inv_12 inv_12_inst(.I(in[0]), .ZN(out_notouch_[15]));
gf180mcu_fd_sc_mcu9t5v0__inv_16 inv_16_inst(.I(in[0]), .ZN(out_notouch_[16]));
gf180mcu_fd_sc_mcu9t5v0__inv_20 inv_20_inst(.I(in[0]), .ZN(out_notouch_[17]));

// and & nand variants
///////////////////////
gf180mcu_fd_sc_mcu9t5v0__and2_1 and2_1_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[18]));
gf180mcu_fd_sc_mcu9t5v0__and2_2 and2_2_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[19]));
gf180mcu_fd_sc_mcu9t5v0__and2_4 and2_4_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[20]));
gf180mcu_fd_sc_mcu9t5v0__and3_1 and3_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[21]));
gf180mcu_fd_sc_mcu9t5v0__and3_2 and3_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[22]));
gf180mcu_fd_sc_mcu9t5v0__and3_4 and3_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[23]));
gf180mcu_fd_sc_mcu9t5v0__and4_1 and4_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .Z(out_notouch_[24]));
gf180mcu_fd_sc_mcu9t5v0__and4_2 and4_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .Z(out_notouch_[25]));
gf180mcu_fd_sc_mcu9t5v0__and4_4 and4_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .Z(out_notouch_[26]));
gf180mcu_fd_sc_mcu9t5v0__nand2_1 nand2_1_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[27]));
gf180mcu_fd_sc_mcu9t5v0__nand2_2 nand2_2_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[28]));
gf180mcu_fd_sc_mcu9t5v0__nand2_4 nand2_4_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[29]));
gf180mcu_fd_sc_mcu9t5v0__nand3_1 nand3_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[30]));
gf180mcu_fd_sc_mcu9t5v0__nand3_2 nand3_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[31]));
gf180mcu_fd_sc_mcu9t5v0__nand3_4 nand3_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[32]));
gf180mcu_fd_sc_mcu9t5v0__nand4_1 nand4_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .ZN(out_notouch_[33]));
gf180mcu_fd_sc_mcu9t5v0__nand4_2 nand4_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .ZN(out_notouch_[34]));
gf180mcu_fd_sc_mcu9t5v0__nand4_4 nand4_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .ZN(out_notouch_[35]));

// or & nor variants
/////////////////////
gf180mcu_fd_sc_mcu9t5v0__nor2_1 nor2_1_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[36]));
gf180mcu_fd_sc_mcu9t5v0__nor2_2 nor2_2_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[37]));
gf180mcu_fd_sc_mcu9t5v0__nor2_4 nor2_4_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[38]));
gf180mcu_fd_sc_mcu9t5v0__nor3_1 nor3_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[39]));
gf180mcu_fd_sc_mcu9t5v0__nor3_2 nor3_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[40]));
gf180mcu_fd_sc_mcu9t5v0__nor3_4 nor3_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[41]));
gf180mcu_fd_sc_mcu9t5v0__nor4_1 nor4_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .ZN(out_notouch_[42]));
gf180mcu_fd_sc_mcu9t5v0__nor4_2 nor4_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .ZN(out_notouch_[43]));
gf180mcu_fd_sc_mcu9t5v0__nor4_4 nor4_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .ZN(out_notouch_[44]));
gf180mcu_fd_sc_mcu9t5v0__or2_1 or2_1_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[45]));
gf180mcu_fd_sc_mcu9t5v0__or2_2 or2_2_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[46]));
gf180mcu_fd_sc_mcu9t5v0__or2_4 or2_4_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[47]));
gf180mcu_fd_sc_mcu9t5v0__or3_1 or3_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[48]));
gf180mcu_fd_sc_mcu9t5v0__or3_2 or3_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[49]));
gf180mcu_fd_sc_mcu9t5v0__or3_4 or3_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[50]));
gf180mcu_fd_sc_mcu9t5v0__or4_1 or4_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .Z(out_notouch_[51]));
gf180mcu_fd_sc_mcu9t5v0__or4_2 or4_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .Z(out_notouch_[52]));
gf180mcu_fd_sc_mcu9t5v0__or4_4 or4_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .A4(in[3]), .Z(out_notouch_[53]));

// xor & xnor variants
///////////////////////
gf180mcu_fd_sc_mcu9t5v0__xnor2_1 xnor2_1_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[54]));
gf180mcu_fd_sc_mcu9t5v0__xnor2_2 xnor2_2_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[55]));
gf180mcu_fd_sc_mcu9t5v0__xnor2_4 xnor2_4_inst(.A1(in[0]), .A2(in[1]), .ZN(out_notouch_[56]));
gf180mcu_fd_sc_mcu9t5v0__xnor3_1 xnor3_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[57]));
gf180mcu_fd_sc_mcu9t5v0__xnor3_2 xnor3_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[58]));
gf180mcu_fd_sc_mcu9t5v0__xnor3_4 xnor3_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .ZN(out_notouch_[59]));
gf180mcu_fd_sc_mcu9t5v0__xor2_1 xor2_1_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[60]));
gf180mcu_fd_sc_mcu9t5v0__xor2_2 xor2_2_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[61]));
gf180mcu_fd_sc_mcu9t5v0__xor2_4 xor2_4_inst(.A1(in[0]), .A2(in[1]), .Z(out_notouch_[62]));
gf180mcu_fd_sc_mcu9t5v0__xor3_1 xor3_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[63]));
gf180mcu_fd_sc_mcu9t5v0__xor3_2 xor3_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[64]));
gf180mcu_fd_sc_mcu9t5v0__xor3_4 xor3_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .Z(out_notouch_[65]));

// and-into-or variants
////////////////////////
gf180mcu_fd_sc_mcu9t5v0__aoi21_1 aoi21_1_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .ZN(out_notouch_[66]));
gf180mcu_fd_sc_mcu9t5v0__aoi21_2 aoi21_2_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .ZN(out_notouch_[67]));
gf180mcu_fd_sc_mcu9t5v0__aoi21_4 aoi21_4_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .ZN(out_notouch_[68]));
gf180mcu_fd_sc_mcu9t5v0__aoi22_1 aoi22_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .ZN(out_notouch_[69]));
gf180mcu_fd_sc_mcu9t5v0__aoi22_2 aoi22_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .ZN(out_notouch_[70]));
gf180mcu_fd_sc_mcu9t5v0__aoi22_4 aoi22_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .ZN(out_notouch_[71]));
gf180mcu_fd_sc_mcu9t5v0__aoi211_1 aoi211_1_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .C(in[3]), .ZN(out_notouch_[72]));
gf180mcu_fd_sc_mcu9t5v0__aoi211_2 aoi211_2_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .C(in[3]), .ZN(out_notouch_[73]));
gf180mcu_fd_sc_mcu9t5v0__aoi211_4 aoi211_4_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .C(in[3]), .ZN(out_notouch_[74]));
gf180mcu_fd_sc_mcu9t5v0__aoi221_1 aoi221_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C(in[4]), .ZN(out_notouch_[75]));
gf180mcu_fd_sc_mcu9t5v0__aoi221_2 aoi221_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C(in[4]), .ZN(out_notouch_[76]));
gf180mcu_fd_sc_mcu9t5v0__aoi221_4 aoi221_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C(in[4]), .ZN(out_notouch_[77]));
gf180mcu_fd_sc_mcu9t5v0__aoi222_1 aoi222_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .ZN(out_notouch_[78]));
gf180mcu_fd_sc_mcu9t5v0__aoi222_2 aoi222_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .ZN(out_notouch_[79]));
gf180mcu_fd_sc_mcu9t5v0__aoi222_4 aoi222_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .ZN(out_notouch_[80]));

// or-into-and variants
////////////////////////
gf180mcu_fd_sc_mcu9t5v0__oai21_1 oai21_1_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .ZN(out_notouch_[81]));
gf180mcu_fd_sc_mcu9t5v0__oai21_2 oai21_2_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .ZN(out_notouch_[82]));
gf180mcu_fd_sc_mcu9t5v0__oai21_4 oai21_4_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .ZN(out_notouch_[83]));
gf180mcu_fd_sc_mcu9t5v0__oai22_1 oai22_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .ZN(out_notouch_[84]));
gf180mcu_fd_sc_mcu9t5v0__oai22_2 oai22_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .ZN(out_notouch_[85]));
gf180mcu_fd_sc_mcu9t5v0__oai22_4 oai22_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .ZN(out_notouch_[86]));
gf180mcu_fd_sc_mcu9t5v0__oai31_1 oai31_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B(in[3]), .ZN(out_notouch_[87]));
gf180mcu_fd_sc_mcu9t5v0__oai31_2 oai31_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B(in[3]), .ZN(out_notouch_[88]));
gf180mcu_fd_sc_mcu9t5v0__oai31_4 oai31_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B(in[3]), .ZN(out_notouch_[89]));
gf180mcu_fd_sc_mcu9t5v0__oai32_1 oai32_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .ZN(out_notouch_[90]));
gf180mcu_fd_sc_mcu9t5v0__oai32_2 oai32_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .ZN(out_notouch_[91]));
gf180mcu_fd_sc_mcu9t5v0__oai32_4 oai32_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .ZN(out_notouch_[92]));
gf180mcu_fd_sc_mcu9t5v0__oai33_1 oai33_1_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .B3(in[5]), .ZN(out_notouch_[93]));
gf180mcu_fd_sc_mcu9t5v0__oai33_2 oai33_2_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .B3(in[5]), .ZN(out_notouch_[94]));
gf180mcu_fd_sc_mcu9t5v0__oai33_4 oai33_4_inst(.A1(in[0]), .A2(in[1]), .A3(in[2]), .B1(in[3]), .B2(in[4]), .B3(in[5]), .ZN(out_notouch_[95]));
gf180mcu_fd_sc_mcu9t5v0__oai211_1 oai211_1_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .C(in[3]), .ZN(out_notouch_[96]));
gf180mcu_fd_sc_mcu9t5v0__oai211_2 oai211_2_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .C(in[3]), .ZN(out_notouch_[97]));
gf180mcu_fd_sc_mcu9t5v0__oai211_4 oai211_4_inst(.A1(in[0]), .A2(in[1]), .B(in[2]), .C(in[3]), .ZN(out_notouch_[98]));
gf180mcu_fd_sc_mcu9t5v0__oai221_1 oai221_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C(in[4]), .ZN(out_notouch_[99]));
gf180mcu_fd_sc_mcu9t5v0__oai221_2 oai221_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C(in[4]), .ZN(out_notouch_[100]));
gf180mcu_fd_sc_mcu9t5v0__oai221_4 oai221_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C(in[4]), .ZN(out_notouch_[101]));
gf180mcu_fd_sc_mcu9t5v0__oai222_1 oai222_1_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .ZN(out_notouch_[102]));
gf180mcu_fd_sc_mcu9t5v0__oai222_2 oai222_2_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .ZN(out_notouch_[103]));
gf180mcu_fd_sc_mcu9t5v0__oai222_4 oai222_4_inst(.A1(in[0]), .A2(in[1]), .B1(in[2]), .B2(in[3]), .C1(in[4]), .C2(in[5]), .ZN(out_notouch_[104]));

// other combinational cells (majority, multiplexors, adders)
//////////////////////////////////////////////////////////////
gf180mcu_fd_sc_mcu9t5v0__addf_1 addf_1_inst(.A(in[0]), .B(in[1]), .CI(in[2]), .CO(out_notouch_[105]), .S(out_notouch_[106]));
gf180mcu_fd_sc_mcu9t5v0__addf_2 addf_2_inst(.A(in[0]), .B(in[1]), .CI(in[2]), .CO(out_notouch_[107]), .S(out_notouch_[108]));
gf180mcu_fd_sc_mcu9t5v0__addf_4 addf_4_inst(.A(in[0]), .B(in[1]), .CI(in[2]), .CO(out_notouch_[109]), .S(out_notouch_[110]));
gf180mcu_fd_sc_mcu9t5v0__addh_1 addh_1_inst(.A(in[0]), .B(in[1]), .CO(out_notouch_[111]), .S(out_notouch_[112]));
gf180mcu_fd_sc_mcu9t5v0__addh_2 addh_2_inst(.A(in[0]), .B(in[1]), .CO(out_notouch_[113]), .S(out_notouch_[114]));
gf180mcu_fd_sc_mcu9t5v0__addh_4 addh_4_inst(.A(in[0]), .B(in[1]), .CO(out_notouch_[115]), .S(out_notouch_[116]));
gf180mcu_fd_sc_mcu9t5v0__mux2_1 mux2_1_inst(.I0(in[0]), .I1(in[1]), .S(in[2]), .Z(out_notouch_[117]));
gf180mcu_fd_sc_mcu9t5v0__mux2_2 mux2_2_inst(.I0(in[0]), .I1(in[1]), .S(in[2]), .Z(out_notouch_[118]));
gf180mcu_fd_sc_mcu9t5v0__mux2_4 mux2_4_inst(.I0(in[0]), .I1(in[1]), .S(in[2]), .Z(out_notouch_[119]));
gf180mcu_fd_sc_mcu9t5v0__mux4_1 mux4_1_inst(.I0(in[0]), .I1(in[1]), .I2(in[2]), .I3(in[3]), .S0(in[4]), .S1(in[5]), .Z(out_notouch_[120]));
gf180mcu_fd_sc_mcu9t5v0__mux4_2 mux4_2_inst(.I0(in[0]), .I1(in[1]), .I2(in[2]), .I3(in[3]), .S0(in[4]), .S1(in[5]), .Z(out_notouch_[121]));
gf180mcu_fd_sc_mcu9t5v0__mux4_4 mux4_4_inst(.I0(in[0]), .I1(in[1]), .I2(in[2]), .I3(in[3]), .S0(in[4]), .S1(in[5]), .Z(out_notouch_[122]));

// latches
///////////
gf180mcu_fd_sc_mcu9t5v0__latq_1 latq_1_inst(.D(in[0]), .E(in[1]), .Q(out_notouch_[123]));
gf180mcu_fd_sc_mcu9t5v0__latq_2 latq_2_inst(.D(in[0]), .E(in[1]), .Q(out_notouch_[124]));
gf180mcu_fd_sc_mcu9t5v0__latq_4 latq_4_inst(.D(in[0]), .E(in[1]), .Q(out_notouch_[125]));
gf180mcu_fd_sc_mcu9t5v0__latrnq_1 latrnq_1_inst(.D(in[0]), .E(in[1]), .RN(in[2]), .Q(out_notouch_[126]));
gf180mcu_fd_sc_mcu9t5v0__latrnq_2 latrnq_2_inst(.D(in[0]), .E(in[1]), .RN(in[2]), .Q(out_notouch_[127]));
gf180mcu_fd_sc_mcu9t5v0__latrnq_4 latrnq_4_inst(.D(in[0]), .E(in[1]), .RN(in[2]), .Q(out_notouch_[128]));
gf180mcu_fd_sc_mcu9t5v0__latrsnq_1 latrsnq_1_inst(.D(in[0]), .E(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[129]));
gf180mcu_fd_sc_mcu9t5v0__latrsnq_2 latrsnq_2_inst(.D(in[0]), .E(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[130]));
gf180mcu_fd_sc_mcu9t5v0__latrsnq_4 latrsnq_4_inst(.D(in[0]), .E(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[131]));
gf180mcu_fd_sc_mcu9t5v0__latsnq_1 latsnq_1_inst(.D(in[0]), .E(in[1]), .SETN(in[2]), .Q(out_notouch_[132]));
gf180mcu_fd_sc_mcu9t5v0__latsnq_2 latsnq_2_inst(.D(in[0]), .E(in[1]), .SETN(in[2]), .Q(out_notouch_[133]));
gf180mcu_fd_sc_mcu9t5v0__latsnq_4 latsnq_4_inst(.D(in[0]), .E(in[1]), .SETN(in[2]), .Q(out_notouch_[134]));

// flops
/////////
gf180mcu_fd_sc_mcu9t5v0__dffnq_1 dffnq_1_inst(.CLKN(in[0]), .D(in[1]), .Q(out_notouch_[135]));
gf180mcu_fd_sc_mcu9t5v0__dffnq_2 dffnq_2_inst(.CLKN(in[0]), .D(in[1]), .Q(out_notouch_[136]));
gf180mcu_fd_sc_mcu9t5v0__dffnq_4 dffnq_4_inst(.CLKN(in[0]), .D(in[1]), .Q(out_notouch_[137]));
gf180mcu_fd_sc_mcu9t5v0__dffnrnq_1 dffnrnq_1_inst(.CLKN(in[0]), .D(in[1]), .RN(in[2]), .Q(out_notouch_[138]));
gf180mcu_fd_sc_mcu9t5v0__dffnrnq_2 dffnrnq_2_inst(.CLKN(in[0]), .D(in[1]), .RN(in[2]), .Q(out_notouch_[139]));
gf180mcu_fd_sc_mcu9t5v0__dffnrnq_4 dffnrnq_4_inst(.CLKN(in[0]), .D(in[1]), .RN(in[2]), .Q(out_notouch_[140]));
gf180mcu_fd_sc_mcu9t5v0__dffnrsnq_1 dffnrsnq_1_inst(.CLKN(in[0]), .D(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[141]));
gf180mcu_fd_sc_mcu9t5v0__dffnrsnq_2 dffnrsnq_2_inst(.CLKN(in[0]), .D(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[142]));
gf180mcu_fd_sc_mcu9t5v0__dffnrsnq_4 dffnrsnq_4_inst(.CLKN(in[0]), .D(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[143]));
gf180mcu_fd_sc_mcu9t5v0__dffnsnq_1 dffnsnq_1_inst(.CLKN(in[0]), .D(in[1]), .SETN(in[2]), .Q(out_notouch_[144]));
gf180mcu_fd_sc_mcu9t5v0__dffnsnq_2 dffnsnq_2_inst(.CLKN(in[0]), .D(in[1]), .SETN(in[2]), .Q(out_notouch_[145]));
gf180mcu_fd_sc_mcu9t5v0__dffnsnq_4 dffnsnq_4_inst(.CLKN(in[0]), .D(in[1]), .SETN(in[2]), .Q(out_notouch_[146]));
gf180mcu_fd_sc_mcu9t5v0__dffq_1 dffq_1_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[147]));
gf180mcu_fd_sc_mcu9t5v0__dffq_2 dffq_2_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[148]));
gf180mcu_fd_sc_mcu9t5v0__dffq_4 dffq_4_inst(.CLK(in[0]), .D(in[1]), .Q(out_notouch_[149]));
gf180mcu_fd_sc_mcu9t5v0__dffrnq_1 dffrnq_1_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .Q(out_notouch_[150]));
gf180mcu_fd_sc_mcu9t5v0__dffrnq_2 dffrnq_2_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .Q(out_notouch_[151]));
gf180mcu_fd_sc_mcu9t5v0__dffrnq_4 dffrnq_4_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .Q(out_notouch_[152]));
gf180mcu_fd_sc_mcu9t5v0__dffrsnq_1 dffrsnq_1_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[153]));
gf180mcu_fd_sc_mcu9t5v0__dffrsnq_2 dffrsnq_2_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[154]));
gf180mcu_fd_sc_mcu9t5v0__dffrsnq_4 dffrsnq_4_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SETN(in[3]), .Q(out_notouch_[155]));
gf180mcu_fd_sc_mcu9t5v0__dffsnq_1 dffsnq_1_inst(.CLK(in[0]), .D(in[1]), .SETN(in[2]), .Q(out_notouch_[156]));
gf180mcu_fd_sc_mcu9t5v0__dffsnq_2 dffsnq_2_inst(.CLK(in[0]), .D(in[1]), .SETN(in[2]), .Q(out_notouch_[157]));
gf180mcu_fd_sc_mcu9t5v0__dffsnq_4 dffsnq_4_inst(.CLK(in[0]), .D(in[1]), .SETN(in[2]), .Q(out_notouch_[158]));

// flops with scan chain
/////////////////////////
gf180mcu_fd_sc_mcu9t5v0__sdffq_1 sdffq_1_inst(.CLK(in[0]), .D(in[1]), .SE(in[2]), .SI(in[3]), .Q(out_notouch_[159]));
gf180mcu_fd_sc_mcu9t5v0__sdffq_2 sdffq_2_inst(.CLK(in[0]), .D(in[1]), .SE(in[2]), .SI(in[3]), .Q(out_notouch_[160]));
gf180mcu_fd_sc_mcu9t5v0__sdffq_4 sdffq_4_inst(.CLK(in[0]), .D(in[1]), .SE(in[2]), .SI(in[3]), .Q(out_notouch_[161]));
gf180mcu_fd_sc_mcu9t5v0__sdffrnq_1 sdffrnq_1_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SE(in[3]), .SI(in[4]), .Q(out_notouch_[162]));
gf180mcu_fd_sc_mcu9t5v0__sdffrnq_2 sdffrnq_2_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SE(in[3]), .SI(in[4]), .Q(out_notouch_[163]));
gf180mcu_fd_sc_mcu9t5v0__sdffrnq_4 sdffrnq_4_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SE(in[3]), .SI(in[4]), .Q(out_notouch_[164]));
gf180mcu_fd_sc_mcu9t5v0__sdffrsnq_1 sdffrsnq_1_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SE(in[3]), .SETN(in[4]), .SI(in[5]), .Q(out_notouch_[165]));
gf180mcu_fd_sc_mcu9t5v0__sdffrsnq_2 sdffrsnq_2_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SE(in[3]), .SETN(in[4]), .SI(in[5]), .Q(out_notouch_[166]));
gf180mcu_fd_sc_mcu9t5v0__sdffrsnq_4 sdffrsnq_4_inst(.CLK(in[0]), .D(in[1]), .RN(in[2]), .SE(in[3]), .SETN(in[4]), .SI(in[5]), .Q(out_notouch_[167]));
gf180mcu_fd_sc_mcu9t5v0__sdffsnq_1 sdffsnq_1_inst(.CLK(in[0]), .D(in[1]), .SE(in[2]), .SETN(in[3]), .SI(in[4]), .Q(out_notouch_[168]));
gf180mcu_fd_sc_mcu9t5v0__sdffsnq_2 sdffsnq_2_inst(.CLK(in[0]), .D(in[1]), .SE(in[2]), .SETN(in[3]), .SI(in[4]), .Q(out_notouch_[169]));
gf180mcu_fd_sc_mcu9t5v0__sdffsnq_4 sdffsnq_4_inst(.CLK(in[0]), .D(in[1]), .SE(in[2]), .SETN(in[3]), .SI(in[4]), .Q(out_notouch_[170]));

// tri-state buffers
/////////////////////
tri [4:0] tribuf_notouch_;
gf180mcu_fd_sc_mcu9t5v0__bufz_1 bufz_1_inst(.EN(in[0]), .I(in[1]), .Z(tribuf_notouch_[0]));
gf180mcu_fd_sc_mcu9t5v0__bufz_2 bufz_2_inst(.EN(in[2]), .I(in[3]), .Z(tribuf_notouch_[0]));
gf180mcu_fd_sc_mcu9t5v0__bufz_3 bufz_3_inst(.EN(in[4]), .I(in[5]), .Z(tribuf_notouch_[0]));
assign out_notouch_[171] = tribuf_notouch_[0];
gf180mcu_fd_sc_mcu9t5v0__bufz_4 bufz_4_inst(.EN(in[0]), .I(in[1]), .Z(tribuf_notouch_[1]));
gf180mcu_fd_sc_mcu9t5v0__bufz_8 bufz_8_inst(.EN(in[2]), .I(in[3]), .Z(tribuf_notouch_[1]));
gf180mcu_fd_sc_mcu9t5v0__bufz_12 bufz_12_inst(.EN(in[4]), .I(in[5]), .Z(tribuf_notouch_[1]));
assign out_notouch_[172] = tribuf_notouch_[1];
gf180mcu_fd_sc_mcu9t5v0__bufz_16 bufz_16_inst(.EN(in[0]), .I(in[1]), .Z(tribuf_notouch_[2]));
gf180mcu_fd_sc_mcu9t5v0__hold hold_inst(.Z(tribuf_notouch_[2]));
gf180mcu_fd_sc_mcu9t5v0__invz_1 invz_1_inst(.EN(in[2]), .I(in[3]), .ZN(tribuf_notouch_[2]));
assign out_notouch_[173] = tribuf_notouch_[2];
gf180mcu_fd_sc_mcu9t5v0__invz_2 invz_2_inst(.EN(in[0]), .I(in[1]), .ZN(tribuf_notouch_[3]));
gf180mcu_fd_sc_mcu9t5v0__invz_3 invz_3_inst(.EN(in[2]), .I(in[3]), .ZN(tribuf_notouch_[3]));
gf180mcu_fd_sc_mcu9t5v0__invz_4 invz_4_inst(.EN(in[4]), .I(in[5]), .ZN(tribuf_notouch_[3]));
assign out_notouch_[174] = tribuf_notouch_[3];
gf180mcu_fd_sc_mcu9t5v0__invz_8 invz_8_inst(.EN(in[0]), .I(in[1]), .ZN(tribuf_notouch_[4]));
gf180mcu_fd_sc_mcu9t5v0__invz_12 invz_12_inst(.EN(in[2]), .I(in[3]), .ZN(tribuf_notouch_[4]));
//gf180mcu_fd_sc_mcu9t5v0__invz_16 invz_16_inst(.EN(in[4]), .I(in[5]), .ZN(tribuf_notouch_[4])); // fails at detailed placement
assign out_notouch_[175] = tribuf_notouch_[4];

// delay buffers
/////////////////
gf180mcu_fd_sc_mcu9t5v0__dlya_1 dlya_1_inst(.I(in[0]), .Z(out_notouch_[176]));
gf180mcu_fd_sc_mcu9t5v0__dlya_2 dlya_2_inst(.I(in[0]), .Z(out_notouch_[177]));
gf180mcu_fd_sc_mcu9t5v0__dlya_4 dlya_4_inst(.I(in[0]), .Z(out_notouch_[178]));
gf180mcu_fd_sc_mcu9t5v0__dlyb_1 dlyb_1_inst(.I(in[0]), .Z(out_notouch_[179]));
gf180mcu_fd_sc_mcu9t5v0__dlyb_2 dlyb_2_inst(.I(in[0]), .Z(out_notouch_[180]));
gf180mcu_fd_sc_mcu9t5v0__dlyb_4 dlyb_4_inst(.I(in[0]), .Z(out_notouch_[181]));
gf180mcu_fd_sc_mcu9t5v0__dlyc_1 dlyc_1_inst(.I(in[0]), .Z(out_notouch_[182]));
gf180mcu_fd_sc_mcu9t5v0__dlyc_2 dlyc_2_inst(.I(in[0]), .Z(out_notouch_[183]));
gf180mcu_fd_sc_mcu9t5v0__dlyc_4 dlyc_4_inst(.I(in[0]), .Z(out_notouch_[184]));
gf180mcu_fd_sc_mcu9t5v0__dlyd_1 dlyd_1_inst(.I(in[0]), .Z(out_notouch_[185]));
gf180mcu_fd_sc_mcu9t5v0__dlyd_2 dlyd_2_inst(.I(in[0]), .Z(out_notouch_[186]));
gf180mcu_fd_sc_mcu9t5v0__dlyd_4 dlyd_4_inst(.I(in[0]), .Z(out_notouch_[187]));

// buffers, inverters and delay buffers for the clock tree
///////////////////////////////////////////////////////////
gf180mcu_fd_sc_mcu9t5v0__clkbuf_1 clkbuf_1_inst(.I(in[0]), .Z(out_notouch_[188]));
gf180mcu_fd_sc_mcu9t5v0__clkbuf_2 clkbuf_2_inst(.I(in[0]), .Z(out_notouch_[189]));
gf180mcu_fd_sc_mcu9t5v0__clkbuf_3 clkbuf_3_inst(.I(in[0]), .Z(out_notouch_[190]));
gf180mcu_fd_sc_mcu9t5v0__clkbuf_4 clkbuf_4_inst(.I(in[0]), .Z(out_notouch_[191]));
gf180mcu_fd_sc_mcu9t5v0__clkbuf_8 clkbuf_8_inst(.I(in[0]), .Z(out_notouch_[192]));
gf180mcu_fd_sc_mcu9t5v0__clkbuf_12 clkbuf_12_inst(.I(in[0]), .Z(out_notouch_[193]));
gf180mcu_fd_sc_mcu9t5v0__clkbuf_16 clkbuf_16_inst(.I(in[0]), .Z(out_notouch_[194]));
gf180mcu_fd_sc_mcu9t5v0__clkbuf_20 clkbuf_20_inst(.I(in[0]), .Z(out_notouch_[195]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_1 clkinv_1_inst(.I(in[0]), .ZN(out_notouch_[196]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_2 clkinv_2_inst(.I(in[0]), .ZN(out_notouch_[197]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_3 clkinv_3_inst(.I(in[0]), .ZN(out_notouch_[198]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_4 clkinv_4_inst(.I(in[0]), .ZN(out_notouch_[199]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_8 clkinv_8_inst(.I(in[0]), .ZN(out_notouch_[200]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_12 clkinv_12_inst(.I(in[0]), .ZN(out_notouch_[201]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_16 clkinv_16_inst(.I(in[0]), .ZN(out_notouch_[202]));
gf180mcu_fd_sc_mcu9t5v0__clkinv_20 clkinv_20_inst(.I(in[0]), .ZN(out_notouch_[203]));

// clock gating (latches for the clock tree)
/////////////////////////////////////////////
gf180mcu_fd_sc_mcu9t5v0__icgtn_1 icgtn_1_inst(.CLKN(in[0]), .E(in[1]), .TE(in[2]), .Q(out_notouch_[204]));
gf180mcu_fd_sc_mcu9t5v0__icgtn_2 icgtn_2_inst(.CLKN(in[0]), .E(in[1]), .TE(in[2]), .Q(out_notouch_[205]));
gf180mcu_fd_sc_mcu9t5v0__icgtn_4 icgtn_4_inst(.CLKN(in[0]), .E(in[1]), .TE(in[2]), .Q(out_notouch_[206]));
assign out_notouch_[207] = 1'b0; //gf180mcu_fd_sc_mcu9t5v0__icgtp_1 icgtp_1_inst(.CLK(in[0]), .E(in[1]), .TE(in[2]), .Q(out_notouch_[207])); fails at drc
gf180mcu_fd_sc_mcu9t5v0__icgtp_2 icgtp_2_inst(.CLK(in[0]), .E(in[1]), .TE(in[2]), .Q(out_notouch_[208]));
gf180mcu_fd_sc_mcu9t5v0__icgtp_4 icgtp_4_inst(.CLK(in[0]), .E(in[1]), .TE(in[2]), .Q(out_notouch_[209]));

// fill cells
//////////////
//gf180mcu_fd_sc_mcu9t5v0__fill_1 fill_1_inst();
//gf180mcu_fd_sc_mcu9t5v0__fill_2 fill_2_inst();
//gf180mcu_fd_sc_mcu9t5v0__fill_4 fill_4_inst();
//gf180mcu_fd_sc_mcu9t5v0__fill_8 fill_8_inst();
//gf180mcu_fd_sc_mcu9t5v0__fill_16 fill_16_inst();
//gf180mcu_fd_sc_mcu9t5v0__fill_32 fill_32_inst();
//gf180mcu_fd_sc_mcu9t5v0__fill_64 fill_64_inst();

// fill cells with decoupling capacitors
/////////////////////////////////////////
//gf180mcu_fd_sc_mcu9t5v0__endcap endcap_inst();
//gf180mcu_fd_sc_mcu9t5v0__fillcap_4 fillcap_4_inst();
//gf180mcu_fd_sc_mcu9t5v0__fillcap_8 fillcap_8_inst();
//gf180mcu_fd_sc_mcu9t5v0__fillcap_16 fillcap_16_inst();
//gf180mcu_fd_sc_mcu9t5v0__fillcap_32 fillcap_32_inst();
//gf180mcu_fd_sc_mcu9t5v0__fillcap_64 fillcap_64_inst();

// tap cells
/////////////
//gf180mcu_fd_sc_mcu9t5v0__filltie filltie_inst();

// antenna tie-down diode
//////////////////////////
//gf180mcu_fd_sc_mcu9t5v0__antenna antenna_inst(.I(in[0]));

endmodule

