// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Jun  5 15:52:58 2021
// Host        : DESKTOP-FN4Q5AG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/project/24_ov5640_hdmi/ov5640_hdmi.srcs/sources_1/ip/video_fifo/video_fifo_stub.v
// Design      : video_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_3,Vivado 2018.3" *)
module video_fifo(clk, srst, din, wr_en, rd_en, dout, full, almost_full, 
  empty, almost_empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[23:0],wr_en,rd_en,dout[23:0],full,almost_full,empty,almost_empty" */;
  input clk;
  input srst;
  input [23:0]din;
  input wr_en;
  input rd_en;
  output [23:0]dout;
  output full;
  output almost_full;
  output empty;
  output almost_empty;
endmodule
