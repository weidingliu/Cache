// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Jul  7 20:02:46 2022
// Host        : LWD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top TAGV_ram -prefix
//               TAGV_ram_ TAGC_ram_stub.v
// Design      : TAGC_ram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *)
module TAGV_ram(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[6:0],dina[19:0],douta[19:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [6:0]addra;
  input [19:0]dina;
  output [19:0]douta;
endmodule
