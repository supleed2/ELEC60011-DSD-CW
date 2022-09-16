module cordic_t(
	input clk,
	input clk_en,
	input reset,
	input [31:0] dataa,
	output [31:0] result
);
	reg [31:0] x[16:0];
	reg [31:0] y[16:0];
	reg [31:0] z[16:0];
	integer i;
	wire [31:0] angle_lut [31:0];
	assign result = x[16];

	always @(*) begin
		 if(reset) begin
			for(i = 0 ;i < 17; i = i+1) begin
				x[i] <= 0;
				y[i] <= 0;
				z[i] <= 0;
			end
		end else begin
			x[0] <= 32'b00100110110111010011101101101010;
			y[0] <= 0;
			z[0] <= dataa;
			for(i = 0 ;i < 16; i = i+1) begin
				if(~z[i][31]) begin
					x[i+1] <= x[i] - ({{32{y[i][31]}}, y[i]} >> i);
					y[i+1] <= y[i] + ({{32{x[i][31]}}, x[i]} >> i);
					z[i+1] <= z[i] - angle_lut[i];
				end
				else begin
					x[i+1] <= x[i] + ({{32{y[i][31]}}, y[i]} >> i);
					y[i+1] <= y[i] - ({{32{x[i][31]}}, x[i]} >> i);
					z[i+1] <= z[i] + angle_lut[i];
				end
			end
		end		
	end

	assign angle_lut[0] = 32'b00110010010000111111011010101001;
	assign angle_lut[1] = 32'b00011101101011000110011100000101;
	assign angle_lut[2] = 32'b00001111101011011011101011111101;
	assign angle_lut[3] = 32'b00000111111101010110111010100111;
	assign angle_lut[4] = 32'b00000011111111101010101101110111;
	assign angle_lut[5] = 32'b00000001111111111101010101011100;
	assign angle_lut[6] = 32'b00000000111111111111101010101011;
	assign angle_lut[7] = 32'b00000000011111111111111101010101;
	assign angle_lut[8] = 32'b00000000001111111111111111101011;
	assign angle_lut[9] = 32'b00000000000111111111111111111101;
	assign angle_lut[10] = 32'b00000000000100000000000000000000;
	assign angle_lut[11] = 32'b00000000000010000000000000000000;
	assign angle_lut[12] = 32'b00000000000001000000000000000000;
	assign angle_lut[13] = 32'b00000000000000100000000000000000;
	assign angle_lut[14] = 32'b00000000000000010000000000000000;
	assign angle_lut[15] = 32'b00000000000000001000000000000000;
	assign angle_lut[16] = 32'b00000000000000000100000000000000;
	assign angle_lut[17] = 32'b00000000000000000010000000000000;
	assign angle_lut[18] = 32'b00000000000000000001000000000000;
	assign angle_lut[19] = 32'b00000000000000000000100000000000;
	assign angle_lut[20] = 32'b00000000000000000000010000000000;
	assign angle_lut[21] = 32'b00000000000000000000001000000000;
	assign angle_lut[22] = 32'b00000000000000000000000100000000;
	assign angle_lut[23] = 32'b00000000000000000000000010000000;
	assign angle_lut[24] = 32'b00000000000000000000000001000000;
	assign angle_lut[25] = 32'b00000000000000000000000000100000;
	assign angle_lut[26] = 32'b00000000000000000000000000010000;
	assign angle_lut[27] = 32'b00000000000000000000000000001000;
	assign angle_lut[28] = 32'b00000000000000000000000000000100;
	assign angle_lut[29] = 32'b00000000000000000000000000000010;
	assign angle_lut[30] = 32'b00000000000000000000000000000001;
	assign angle_lut[31] = 32'b00000000000000000000000000000001;
endmodule