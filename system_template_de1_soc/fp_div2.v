module fp_div2 ( 
input [31:0] dataa,
output [31:0] result
);
wire [7:0] NewExp;
assign NewExp = dataa[30:23]-1;
assign result = (dataa[30:23]==0) ? 0 : {dataa[31],NewExp,dataa[22:0]};
endmodule