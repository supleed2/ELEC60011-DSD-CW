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
// CREATED		"Sun Mar 27 14:50:26 2022"

module fullfunction_t(
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

wire	SYNTHESIZED_WIRE_29;
reg	DFF_00_inst0;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_30;
reg	DFF_00_inst17;
reg	DFF_00_inst11;
reg	DFF_00_inst12;
reg	DFF_00_inst13;
reg	DFF_00_inst14;
reg	DFF_00_inst15;
wire	SYNTHESIZED_WIRE_31;
reg	DFF_00_inst2;
reg	DFF_00_inst1;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	[31:0] SYNTHESIZED_WIRE_22;
wire	[31:0] SYNTHESIZED_WIRE_23;
wire	[31:0] SYNTHESIZED_WIRE_24;
wire	[31:0] SYNTHESIZED_WIRE_25;
wire	[31:0] SYNTHESIZED_WIRE_26;
wire	[31:0] SYNTHESIZED_WIRE_27;
wire	[31:0] SYNTHESIZED_WIRE_28;

assign	SYNTHESIZED_WIRE_29 = 1;
assign	SYNTHESIZED_WIRE_30 = 1;
assign	SYNTHESIZED_WIRE_31 = 1;




always@(posedge clk or negedge SYNTHESIZED_WIRE_29 or negedge SYNTHESIZED_WIRE_29)
begin
if (!SYNTHESIZED_WIRE_29)
	begin
	DFF_00_inst0 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_29)
	begin
	DFF_00_inst0 <= 1;
	end
else
	begin
	DFF_00_inst0 <= start;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_29 or negedge SYNTHESIZED_WIRE_29)
begin
if (!SYNTHESIZED_WIRE_29)
	begin
	DFF_00_inst1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_29)
	begin
	DFF_00_inst1 <= 1;
	end
else
	begin
	DFF_00_inst1 <= DFF_00_inst0;
	end
end


cordic_t	b2v_00_inst10(
	.clk(clk),
	.clk_en(en),
	.reset(reset),
	.dataa(SYNTHESIZED_WIRE_4),
	.result(SYNTHESIZED_WIRE_27));


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst11 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst11 <= 1;
	end
else
	begin
	DFF_00_inst11 <= DFF_00_inst17;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst12 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst12 <= 1;
	end
else
	begin
	DFF_00_inst12 <= DFF_00_inst11;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst13 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst13 <= 1;
	end
else
	begin
	DFF_00_inst13 <= DFF_00_inst12;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst14 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst14 <= 1;
	end
else
	begin
	DFF_00_inst14 <= DFF_00_inst13;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst15 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	DFF_00_inst15 <= 1;
	end
else
	begin
	DFF_00_inst15 <= DFF_00_inst14;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_30 or negedge SYNTHESIZED_WIRE_30)
begin
if (!SYNTHESIZED_WIRE_30)
	begin
	done <= 0;
	end
else
if (!SYNTHESIZED_WIRE_30)
	begin
	done <= 1;
	end
else
	begin
	done <= DFF_00_inst15;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_31 or negedge SYNTHESIZED_WIRE_31)
begin
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst17 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_31)
	begin
	DFF_00_inst17 <= 1;
	end
else
	begin
	DFF_00_inst17 <= DFF_00_inst2;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_29 or negedge SYNTHESIZED_WIRE_29)
begin
if (!SYNTHESIZED_WIRE_29)
	begin
	DFF_00_inst2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_29)
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
	.q(SYNTHESIZED_WIRE_23));


fp_div128	b2v_00_inst5(
	.dataa(SYNTHESIZED_WIRE_21),
	.result(SYNTHESIZED_WIRE_28));


fp_div2	b2v_00_inst6(
	.dataa(dataa),
	.result(SYNTHESIZED_WIRE_26));


fp_sub	b2v_00_inst7(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(dataa),
	.b(SYNTHESIZED_WIRE_22),
	.q(SYNTHESIZED_WIRE_21));


fp_mul	b2v_00_inst8(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_23),
	.b(SYNTHESIZED_WIRE_24),
	.q(SYNTHESIZED_WIRE_25));


fp_add	b2v_00_inst9(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_25),
	.b(SYNTHESIZED_WIRE_26),
	.q(result));


fix_to_fp	b2v_inst(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_27),
	.q(SYNTHESIZED_WIRE_24));


fp_to_fix	b2v_inst1(
	.clk(clk),
	.areset(reset),
	.en(en),
	.a(SYNTHESIZED_WIRE_28),
	.q(SYNTHESIZED_WIRE_4));



const128	b2v_inst4(
	.result(SYNTHESIZED_WIRE_22));




endmodule
