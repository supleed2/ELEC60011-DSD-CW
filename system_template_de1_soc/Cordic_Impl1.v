module Cordic_Impl1(
    input clk,
    input clk_en,
    input start,
    input reset,
    input [31:0] dataa,
    output [31:0] result,
	 output [31:0] z_debug,
	 output [31:0] angle_debug,
	 output [4:0] iter_debug,
    output done,
	 output [31:0] y_debug
);
    reg [31:0] x_out,y_out,z_out;
    reg [31:0] x_next,y_next,z_next;
    reg [4:0] iter,iter_next;
	 wire [31:0] angle_lut [31:0];
    reg working, working_next;
	 assign z_debug = z_out;
    assign result = x_out;
	 assign angle_debug = angle_lut[iter];
	 assign y_debug = y_out;
	 assign iter_debug = iter;
    assign done = (iter==5'b11111);
    always@(posedge clk or posedge reset) begin
        if(reset) begin
            x_out <= 0; 

            y_out <= 0;

            z_out <= 0;

            iter <= 0;

            working <= 0;

        end else begin
            x_out <= x_next;
            y_out <= y_next;
            z_out <= z_next;
				if(done) begin
					working <= 0;
				end else begin
					working <= working_next;
				end
            iter <= iter_next;
        end
    end

    always @(*) begin
        if(working) begin
            if(~z_out[31]) begin
                x_next <= x_out - ({{32{y_out[31]}}, y_out} >> iter);
                y_next <= y_out + ({{32{x_out[31]}}, x_out} >> iter);
                z_next <= z_out - angle_lut[iter];
            end
            else begin
                x_next <= x_out + ({{32{y_out[31]}}, y_out} >> iter);
                y_next <= y_out - ({{32{x_out[31]}}, x_out} >> iter);
                z_next <= z_out + angle_lut[iter];
            end
            iter_next <= iter+1;
			end 
			else if(start) begin
            x_next <= 32'b00100110110111010011101101101010; //Gain factor
            y_next <= 0;
            z_next <= dataa;
            working_next <= 1;
				iter_next <= 0;
			end else begin
				x_next <= 0; 
            y_next <= 0;
            z_next <= 0;
            working_next <= 0;
				iter_next <= 0;
			end
    end
	 assign angle_lut[0] = 32'b00110010010000111111011010101000;
     assign angle_lut[1] = 32'b00011101101011000110011100000101;
     assign angle_lut[2] = 32'b00001111101011011011101011111100;
     assign angle_lut[3] = 32'b00000111111101010110111010100110;
     assign angle_lut[4] = 32'b00000011111111101010101101110110;
     assign angle_lut[5] = 32'b00000001111111111101010101011011;
     assign angle_lut[6] = 32'b00000000111111111111101010101010;
     assign angle_lut[7] = 32'b00000000011111111111111101010101;
     assign angle_lut[8] = 32'b00000000001111111111111111101010;
     assign angle_lut[9] = 32'b00000000000111111111111111111101;
     assign angle_lut[10] = 32'b00000000000011111111111111111111;
     assign angle_lut[11] = 32'b00000000000001111111111111111111;
     assign angle_lut[12] = 32'b00000000000000111111111111111111;
     assign angle_lut[13] = 32'b00000000000000011111111111111111;
     assign angle_lut[14] = 32'b00000000000000001111111111111111;
     assign angle_lut[15] = 32'b00000000000000000111111111111111;
     assign angle_lut[16] = 32'b00000000000000000011111111111111;
     assign angle_lut[17] = 32'b00000000000000000010000000000000;
     assign angle_lut[18] = 32'b00000000000000000000111111111111;
     assign angle_lut[19] = 32'b00000000000000000000100000000000;
     assign angle_lut[20] = 32'b00000000000000000000001111111111;
     assign angle_lut[21] = 32'b00000000000000000000000111111111;
     assign angle_lut[22] = 32'b00000000000000000000000100000000;
     assign angle_lut[23] = 32'b00000000000000000000000001111111;
     assign angle_lut[24] = 32'b00000000000000000000000001000000;
     assign angle_lut[25] = 32'b00000000000000000000000000011111;
     assign angle_lut[26] = 32'b00000000000000000000000000001111;
     assign angle_lut[27] = 32'b00000000000000000000000000001000;
     assign angle_lut[28] = 32'b00000000000000000000000000000011;
     assign angle_lut[29] = 32'b00000000000000000000000000000010;
     assign angle_lut[30] = 32'b00000000000000000000000000000000;
     assign angle_lut[31] = 32'b00000000000000000000000000000000;

	 
endmodule