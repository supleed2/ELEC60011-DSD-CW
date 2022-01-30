`timescale 1 ns / 100 ps
module tb ();

	//Inputs to DUT are reg type
	reg [31:0] dataa;
	reg [31:0] datab; 

	//Output from DUT is wire type
	wire [31:0] result;

	//Instantiate the DUT
	//mul refers to the verilog module defined by the LPM_MULT ip
	mul unit(
		.dataa(dataa),
		.datab(datab), 
		.result(result)
	);

	// ---- If a clock is required, see below ----
	// //Create a 50MHz clock
	// always
	// 	#10 clk = ~clk;
	// -----------------------

	//Initial Block
	initial
	begin
		$display($time, " << Starting Simulation >> ");
		
		// intialise/set input
		// clk = 1'b0;
		
		// If using a clock
		// @(posedge clk); 
		
		// Wait 10 cycles (corresponds to timescale at the top) 
		#10
		
		// set dataa and datab
		dataa <= 32'd1;
		datab <= 32'd2;
		
		#10
		dataa <= 32'd332;
		datab <= 32'd22;
		
		#10
		dataa <= 32'd2;
		datab <= 32'd23;
		
		#10
		$display($time, "<< Simulation Complete >>");
		$stop;
	end

endmodule
