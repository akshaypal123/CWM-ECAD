//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name: Akshay Pal
// Date: 9th June 2020 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb (
	);

	parameter CLK_PERIOD = 10;

	// Define registers and wires
	reg clk;
	reg rst;
	reg button;
	reg err;
	wire [2:0] throw;

	// Generate clock
	initial 
	begin
		clk = 1'b0;
		forever 
			#(CLK_PERIOD/2) clk = ~clk;
	end 

	// Tests
	initial begin
		rst = 1;
		button = 1;
		err = 0; 
		forever begin 
			#1
			rst = 0;
			#10
			if (throw == 0) begin
				$display("***TEST FAILED! Did not roll. ***");
				err = 1;
			end 
			#60
			if (throw != 1) begin
				$display("***TEST FAILED! Dice did not count. ***");
				err = 1;
			end
		end
	end

	// Finish criteria 
	initial begin
		#80
		if (err == 0)
			$display("***TEST PASSED! :) ***");
		$finish;
	end

	// Instantiate Dice Module

	electronic_dice top (
		.clk (clk),
		.rst (rst),
		.button (button),
		.throw (throw)
	);
 
endmodule
