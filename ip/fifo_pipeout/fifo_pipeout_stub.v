// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Jun 14 10:53:32 2021
// Host        : PC-NOEMIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top fifo_pipeout -prefix
//               fifo_pipeout_ fifo_pipeout_stub.v
// Design      : fifo_pipeout
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.1" *)
module fifo_pipeout(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, valid)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[12:0],wr_en,rd_en,dout[12:0],full,empty,valid" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [12:0]din;
  input wr_en;
  input rd_en;
  output [12:0]dout;
  output full;
  output empty;
  output valid;
endmodule
