//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
module top_tb (
	);

	parameter CLK_PERIOD = 10; 
	
	// Define registers and wires
	reg clk;
	reg rst;
	reg button;
	reg sel;
	reg err;
	wire [2:0] result;

	// Generate clock
	initial
	begin
		clk = 1'b0
		forever 
			#(CLK_PERIOD/2) clk = ~clk;
	end 

	// Tests










	// Finish criteria
	initial begin
		#160
		if (err == 0)
			$display("*** TEST PASSED! :) ***");
		$finish;
	end




	// Instantiate Ex6 top.v
	mux top (
		.rst (rst),
		.clk (clk),
		.button (button),
		.sel (sel),
		.result (result[2:0])
		);
endmodule
endmodule
	


