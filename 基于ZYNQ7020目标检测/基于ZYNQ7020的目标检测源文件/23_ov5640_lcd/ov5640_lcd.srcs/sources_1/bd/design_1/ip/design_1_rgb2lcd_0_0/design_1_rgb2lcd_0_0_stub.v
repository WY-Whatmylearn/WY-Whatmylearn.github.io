// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 17 10:51:46 2019
// Host        : USER-20180123QP running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               E:/Navigator/Nav_code_7020__PS/ov5640_lcd/ov5640_lcd.srcs/sources_1/bd/design_1/ip/design_1_rgb2lcd_0_0/design_1_rgb2lcd_0_0_stub.v
// Design      : design_1_rgb2lcd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rgb2lcd,Vivado 2018.3" *)
module design_1_rgb2lcd_0_0(rgb_data, rgb_vde, rgb_hsync, rgb_vsync, 
  pixel_clk, vid_rst, lcd_pclk, lcd_rst, lcd_hs, lcd_vs, lcd_de, lcd_bl, lcd_id, lcd_rgb_i, lcd_rgb_o, 
  lcd_rgb_t)
/* synthesis syn_black_box black_box_pad_pin="rgb_data[23:0],rgb_vde,rgb_hsync,rgb_vsync,pixel_clk,vid_rst,lcd_pclk,lcd_rst,lcd_hs,lcd_vs,lcd_de,lcd_bl,lcd_id[2:0],lcd_rgb_i[23:0],lcd_rgb_o[23:0],lcd_rgb_t[23:0]" */;
  input [23:0]rgb_data;
  input rgb_vde;
  input rgb_hsync;
  input rgb_vsync;
  input pixel_clk;
  input vid_rst;
  output lcd_pclk;
  output lcd_rst;
  output lcd_hs;
  output lcd_vs;
  output lcd_de;
  output lcd_bl;
  output [2:0]lcd_id;
  input [23:0]lcd_rgb_i;
  output [23:0]lcd_rgb_o;
  output [23:0]lcd_rgb_t;
endmodule
