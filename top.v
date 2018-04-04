// Copyright (C) 2017  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
// CREATED		"Mon Feb 12 14:41:43 2018"

module top(
	CLK12M,
	USR_BTN,
	LED
);


input wire	CLK12M;
input wire	USR_BTN;
output wire	[7:0] LED;

wire	[31:0] counter;
wire	SYNTHESIZED_WIRE_0;

wire	[7:0] GDFX_TEMP_SIGNAL_0;
wire	[7:0] GDFX_TEMP_SIGNAL_1;


assign	GDFX_TEMP_SIGNAL_0 = {counter[19],counter[20],counter[21],counter[22],counter[23],counter[24],counter[25],counter[26]};
assign	GDFX_TEMP_SIGNAL_1 = {counter[24],counter[25],counter[26],counter[27],counter[28],counter[29],counter[30],counter[31]};


PLL	b2v_inst(
	.inclk0(CLK12M),
	.c0(SYNTHESIZED_WIRE_0));


counter_mux	b2v_inst1(
	.sel(USR_BTN),
	.data0x(GDFX_TEMP_SIGNAL_0),
	.data1x(GDFX_TEMP_SIGNAL_1),
	.result(LED));


simple_counter	b2v_inst2(
	.clock(SYNTHESIZED_WIRE_0),
	.q(counter));


endmodule
