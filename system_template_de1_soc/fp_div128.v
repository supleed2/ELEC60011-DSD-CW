module fp_div128 ( 
input [31:0] dataa,
output [31:0] result
);
wire [7:0] NewExp;
assign NewExp = dataa[30:23]-7;
assign result = (dataa[30:23]<=6) ? 0 : {dataa[31],NewExp,dataa[22:0]};
endmodule