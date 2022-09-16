// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue Mar 22 14:21:41 2022"

module fullfunction(
	clk,
	reset,
	en,
	start,
	dataa,
	done,
	result
);


input wire	clk;
input wire	reset;
input wire	en;
input wire	start;
input wire	[31:0] dataa;
output reg	done;
output wire	[31:0] result;

wire	SYNTHESIZED_WIRE_30;
reg	DFF_00_inst0;
reg	DFF_00_inst2;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_6;
reg	DFF_00_inst11;
reg	DFF_00_inst12;
reg	DFF_00_inst13;
reg	DFF_00_inst14;
reg	DFF_00_inst15;
reg	DFF_00_inst16;
reg	DFF_00_inst1;
wire	[31:0] SYNTHESIZED_WIRE_22;
wire	[31:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_26;
wire	[31:0] SYNTHESIZED_WIRE_27;
wire	[31:0] SYNTHESIZED_WIRE_28;
wire	[31:0] SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_30 = 1;
assign	SYNTHESIZED_WIRE_31 = 1;




always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst0 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst0 <= 1;
	end
else
	begin
	DFF_00_inst0 <= start;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst1 <= 1;
	end
else
	begin
	DFF_00_inst1 <= DFF_00_inst0;
	end
end


cordic	b2v_00_inst10(
	.clk(clk),
	.clk_en(en),
	.start(DFF_00_inst2),
	.reset(reset),
	.dataa(SYNTHESIZED_WIRE_4),
	.done(SYNTHESIZED_WIRE_6),
	.result(SYNTHESIZED_WIRE_28));
	defparam	b2v_00_inst10.stages = 16;


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst11 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst11 <= 1;
	end
else
	begin
	DFF_00_inst11 <= SYNTHESIZED_WIRE_6;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst12 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst12 <= 1;
	end
else
	begin
	DFF_00_inst12 <= DFF_00_inst11;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst13 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst13 <= 1;
	end
else
	begin
	DFF_00_inst13 <= DFF_00_inst12;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst14 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst14 <= 1;
	end
else
	begin
	DFF_00_inst14 <= DFF_00_inst13;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst15 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst15 <= 1;
	end
else
	begin
	DFF_00_inst15 <= DFF_00_inst14;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst16 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst16 <= 1;
	end
else
	begin
	DFF_00_inst16 <= DFF_00_inst15;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	done <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	done <= 1;
	end
else
	begin
	done <= DFF_00_inst16;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst2 <= 1;
	end
else
	begin
	DFF_00_inst2 <= DFF_00_inst1;
	end
end


fp_mul	b2v_00_inst4(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(dataa),
	.b(dataa),
	.q(SYNTHESIZED_WIRE_24));


fp_div128	b2v_00_inst5(
	.dataa(SYNTHESIZED_WIRE_22),
	.result(SYNTHESIZED_WIRE_29));


fp_div2	b2v_00_inst6(
	.dataa(dataa),
	.result(SYNTHESIZED_WIRE_27));


fp_sub	b2v_00_inst7(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(dataa),
	.b(SYNTHESIZED_WIRE_23),
	.q(SYNTHESIZED_WIRE_22));


fp_mul	b2v_00_inst8(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_24),
	.b(SYNTHESIZED_WIRE_25),
	.q(SYNTHESIZED_WIRE_26));


fp_add	b2v_00_inst9(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_26),
	.b(SYNTHESIZED_WIRE_27),
	.q(result));


fix_to_fp	b2v_inst(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_28),
	.q(SYNTHESIZED_WIRE_25));


fp_to_fix	b2v_inst1(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_29),
	.q(SYNTHESIZED_WIRE_4));



const128	b2v_inst3(
	.result(SYNTHESIZED_WIRE_23));



endmodule
