// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Oct 13 15:08:25 2019
// Host        : USER-20180123QP running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               E:/Navigator/Nav_code_7020__PS/ov5640_rgb565_lcd__0801/ov5640_rgb565_lcd.srcs/sources_1/bd/design_1/ip/design_1_rgb2lcd_0_0/design_1_rgb2lcd_0_0_sim_netlist.v
// Design      : design_1_rgb2lcd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rgb2lcd_0_0,rgb2lcd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "rgb2lcd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_rgb2lcd_0_0
   (rgb_data,
    rgb_vde,
    rgb_hsync,
    rgb_vsync,
    pixel_clk,
    vid_rst,
    lcd_pclk,
    lcd_rst,
    lcd_hs,
    lcd_vs,
    lcd_de,
    lcd_bl,
    lcd_id,
    lcd_rgb_i,
    lcd_rgb_o,
    lcd_rgb_t);
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb DATA" *) input [23:0]rgb_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb ACTIVE_VIDEO" *) input rgb_vde;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb HSYNC" *) input rgb_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_rgb VSYNC" *) input rgb_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, ASSOCIATED_BUSIF pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_axi_dynclk_0_0_PXL_CLK_O, INSERT_VIP 0" *) input pixel_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 vid_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input vid_rst;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd CLK" *) output lcd_pclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 lcd_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lcd_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output lcd_rst;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd HS" *) output lcd_hs;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd VS" *) output lcd_vs;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd DE" *) output lcd_de;
  (* X_INTERFACE_INFO = "xilinx.com:user:lcd:1.0 lcd BL" *) output lcd_bl;
  output [2:0]lcd_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 lcd_rgb TRI_I" *) input [23:0]lcd_rgb_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 lcd_rgb TRI_O" *) output [23:0]lcd_rgb_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 lcd_rgb TRI_T" *) output [23:0]lcd_rgb_t;

  wire \<const1> ;
  wire lcd_de;
  wire lcd_hs;
  wire [2:0]lcd_id;
  wire [23:0]lcd_rgb_i;
  wire [23:0]lcd_rgb_o;
  wire [0:0]\^lcd_rgb_t ;
  wire lcd_vs;
  wire pixel_clk;
  wire [23:0]rgb_data;
  wire rgb_hsync;
  wire rgb_vde;
  wire rgb_vsync;
  wire vid_rst;

  assign lcd_bl = \<const1> ;
  assign lcd_pclk = pixel_clk;
  assign lcd_rgb_t[23] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[22] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[21] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[20] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[19] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[18] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[17] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[16] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[15] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[14] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[13] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[12] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[11] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[10] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[9] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[8] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[7] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[6] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[5] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[4] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[3] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[2] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[1] = \^lcd_rgb_t [0];
  assign lcd_rgb_t[0] = \^lcd_rgb_t [0];
  assign lcd_rst = vid_rst;
  VCC VCC
       (.P(\<const1> ));
  design_1_rgb2lcd_0_0_rgb2lcd inst
       (.E(\^lcd_rgb_t ),
        .lcd_de(lcd_de),
        .lcd_hs(lcd_hs),
        .lcd_id(lcd_id),
        .lcd_rgb_i({lcd_rgb_i[23],lcd_rgb_i[15],lcd_rgb_i[7]}),
        .lcd_rgb_o(lcd_rgb_o),
        .lcd_vs(lcd_vs),
        .pixel_clk(pixel_clk),
        .rgb_data(rgb_data),
        .rgb_hsync(rgb_hsync),
        .rgb_vde(rgb_vde),
        .rgb_vsync(rgb_vsync),
        .vid_rst(vid_rst));
endmodule

(* ORIG_REF_NAME = "rgb2lcd" *) 
module design_1_rgb2lcd_0_0_rgb2lcd
   (lcd_rgb_o,
    lcd_hs,
    lcd_vs,
    lcd_de,
    E,
    lcd_id,
    rgb_vde,
    rgb_data,
    rgb_hsync,
    pixel_clk,
    rgb_vsync,
    lcd_rgb_i,
    vid_rst);
  output [23:0]lcd_rgb_o;
  output lcd_hs;
  output lcd_vs;
  output lcd_de;
  output [0:0]E;
  output [2:0]lcd_id;
  input rgb_vde;
  input [23:0]rgb_data;
  input rgb_hsync;
  input pixel_clk;
  input rgb_vsync;
  input [2:0]lcd_rgb_i;
  input vid_rst;

  wire [0:0]E;
  wire [23:0]int_pData;
  wire \int_pData[0]_i_1_n_0 ;
  wire \int_pData[10]_i_1_n_0 ;
  wire \int_pData[11]_i_1_n_0 ;
  wire \int_pData[12]_i_1_n_0 ;
  wire \int_pData[13]_i_1_n_0 ;
  wire \int_pData[14]_i_1_n_0 ;
  wire \int_pData[15]_i_1_n_0 ;
  wire \int_pData[16]_i_1_n_0 ;
  wire \int_pData[17]_i_1_n_0 ;
  wire \int_pData[18]_i_1_n_0 ;
  wire \int_pData[19]_i_1_n_0 ;
  wire \int_pData[1]_i_1_n_0 ;
  wire \int_pData[20]_i_1_n_0 ;
  wire \int_pData[21]_i_1_n_0 ;
  wire \int_pData[22]_i_1_n_0 ;
  wire \int_pData[23]_i_1_n_0 ;
  wire \int_pData[2]_i_1_n_0 ;
  wire \int_pData[3]_i_1_n_0 ;
  wire \int_pData[4]_i_1_n_0 ;
  wire \int_pData[5]_i_1_n_0 ;
  wire \int_pData[6]_i_1_n_0 ;
  wire \int_pData[7]_i_1_n_0 ;
  wire \int_pData[8]_i_1_n_0 ;
  wire \int_pData[9]_i_1_n_0 ;
  wire lcd_de;
  wire lcd_hs;
  wire lcd_hs_i_1_n_0;
  wire [2:0]lcd_id;
  wire [2:0]lcd_rgb_i;
  wire [23:0]lcd_rgb_o;
  wire lcd_vs;
  wire pixel_clk;
  wire rd_id_flag;
  wire [23:0]rgb_data;
  wire rgb_hsync;
  wire rgb_vde;
  wire rgb_vsync;
  wire vid_rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[0]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[0]),
        .O(\int_pData[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[10]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[10]),
        .O(\int_pData[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[11]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[11]),
        .O(\int_pData[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[12]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[12]),
        .O(\int_pData[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[13]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[13]),
        .O(\int_pData[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[14]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[14]),
        .O(\int_pData[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[15]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[15]),
        .O(\int_pData[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[16]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[16]),
        .O(\int_pData[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[17]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[17]),
        .O(\int_pData[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[18]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[18]),
        .O(\int_pData[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[19]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[19]),
        .O(\int_pData[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[1]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[1]),
        .O(\int_pData[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[20]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[20]),
        .O(\int_pData[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[21]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[21]),
        .O(\int_pData[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[22]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[22]),
        .O(\int_pData[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[23]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[23]),
        .O(\int_pData[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[2]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[2]),
        .O(\int_pData[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[3]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[3]),
        .O(\int_pData[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[4]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[4]),
        .O(\int_pData[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[5]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[5]),
        .O(\int_pData[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[6]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[6]),
        .O(\int_pData[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[7]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[7]),
        .O(\int_pData[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[8]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[8]),
        .O(\int_pData[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_pData[9]_i_1 
       (.I0(rgb_vde),
        .I1(rgb_data[9]),
        .O(\int_pData[9]_i_1_n_0 ));
  FDCE \int_pData_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[0]_i_1_n_0 ),
        .Q(int_pData[0]));
  FDCE \int_pData_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[10]_i_1_n_0 ),
        .Q(int_pData[10]));
  FDCE \int_pData_reg[11] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[11]_i_1_n_0 ),
        .Q(int_pData[11]));
  FDCE \int_pData_reg[12] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[12]_i_1_n_0 ),
        .Q(int_pData[12]));
  FDCE \int_pData_reg[13] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[13]_i_1_n_0 ),
        .Q(int_pData[13]));
  FDCE \int_pData_reg[14] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[14]_i_1_n_0 ),
        .Q(int_pData[14]));
  FDCE \int_pData_reg[15] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[15]_i_1_n_0 ),
        .Q(int_pData[15]));
  FDCE \int_pData_reg[16] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[16]_i_1_n_0 ),
        .Q(int_pData[16]));
  FDCE \int_pData_reg[17] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[17]_i_1_n_0 ),
        .Q(int_pData[17]));
  FDCE \int_pData_reg[18] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[18]_i_1_n_0 ),
        .Q(int_pData[18]));
  FDCE \int_pData_reg[19] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[19]_i_1_n_0 ),
        .Q(int_pData[19]));
  FDCE \int_pData_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[1]_i_1_n_0 ),
        .Q(int_pData[1]));
  FDCE \int_pData_reg[20] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[20]_i_1_n_0 ),
        .Q(int_pData[20]));
  FDCE \int_pData_reg[21] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[21]_i_1_n_0 ),
        .Q(int_pData[21]));
  FDCE \int_pData_reg[22] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[22]_i_1_n_0 ),
        .Q(int_pData[22]));
  FDCE \int_pData_reg[23] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[23]_i_1_n_0 ),
        .Q(int_pData[23]));
  FDCE \int_pData_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[2]_i_1_n_0 ),
        .Q(int_pData[2]));
  FDCE \int_pData_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[3]_i_1_n_0 ),
        .Q(int_pData[3]));
  FDCE \int_pData_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[4]_i_1_n_0 ),
        .Q(int_pData[4]));
  FDCE \int_pData_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[5]_i_1_n_0 ),
        .Q(int_pData[5]));
  FDCE \int_pData_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[6]_i_1_n_0 ),
        .Q(int_pData[6]));
  FDCE \int_pData_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[7]_i_1_n_0 ),
        .Q(int_pData[7]));
  FDCE \int_pData_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[8]_i_1_n_0 ),
        .Q(int_pData[8]));
  FDCE \int_pData_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(\int_pData[9]_i_1_n_0 ),
        .Q(int_pData[9]));
  FDCE lcd_de_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(rgb_vde),
        .Q(lcd_de));
  LUT1 #(
    .INIT(2'h1)) 
    lcd_hs_i_1
       (.I0(vid_rst),
        .O(lcd_hs_i_1_n_0));
  FDCE lcd_hs_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(rgb_hsync),
        .Q(lcd_hs));
  FDCE \lcd_id_reg[0] 
       (.C(pixel_clk),
        .CE(E),
        .CLR(lcd_hs_i_1_n_0),
        .D(lcd_rgb_i[2]),
        .Q(lcd_id[0]));
  FDCE \lcd_id_reg[1] 
       (.C(pixel_clk),
        .CE(E),
        .CLR(lcd_hs_i_1_n_0),
        .D(lcd_rgb_i[1]),
        .Q(lcd_id[1]));
  FDCE \lcd_id_reg[2] 
       (.C(pixel_clk),
        .CE(E),
        .CLR(lcd_hs_i_1_n_0),
        .D(lcd_rgb_i[0]),
        .Q(lcd_id[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[0]_INST_0 
       (.I0(int_pData[0]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[10]_INST_0 
       (.I0(int_pData[10]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[11]_INST_0 
       (.I0(int_pData[11]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[12]_INST_0 
       (.I0(int_pData[12]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[13]_INST_0 
       (.I0(int_pData[13]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[14]_INST_0 
       (.I0(int_pData[14]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[15]_INST_0 
       (.I0(int_pData[15]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[16]_INST_0 
       (.I0(int_pData[16]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[16]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[17]_INST_0 
       (.I0(int_pData[17]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[18]_INST_0 
       (.I0(int_pData[18]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[19]_INST_0 
       (.I0(int_pData[19]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[1]_INST_0 
       (.I0(int_pData[1]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[20]_INST_0 
       (.I0(int_pData[20]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[21]_INST_0 
       (.I0(int_pData[21]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[22]_INST_0 
       (.I0(int_pData[22]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[23]_INST_0 
       (.I0(int_pData[23]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[2]_INST_0 
       (.I0(int_pData[2]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[3]_INST_0 
       (.I0(int_pData[3]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[4]_INST_0 
       (.I0(int_pData[4]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[5]_INST_0 
       (.I0(int_pData[5]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[6]_INST_0 
       (.I0(int_pData[6]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[7]_INST_0 
       (.I0(int_pData[7]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[8]_INST_0 
       (.I0(int_pData[8]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_rgb_o[9]_INST_0 
       (.I0(int_pData[9]),
        .I1(rd_id_flag),
        .O(lcd_rgb_o[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \lcd_rgb_t[0]_INST_0 
       (.I0(rd_id_flag),
        .O(E));
  FDCE lcd_vs_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .CLR(lcd_hs_i_1_n_0),
        .D(rgb_vsync),
        .Q(lcd_vs));
  FDCE #(
    .INIT(1'b0)) 
    rd_id_flag_reg
       (.C(pixel_clk),
        .CE(E),
        .CLR(lcd_hs_i_1_n_0),
        .D(1'b1),
        .Q(rd_id_flag));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
