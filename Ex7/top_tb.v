//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Times Table
// Student Name: Akshay Pal
// Date: 11th June 2020
//
// Description: A testbench module to test Ex7 - Times Table
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb (
	);

	parameter CLK_PERIOD = 10; 
	
	// Regs and wires
	reg clk;
	reg read;
	reg [2:0] a;
	reg [2:0] b;
	reg err;
	wire [4:0] result;
	
	// Generate clock
	initial
	begin
		clk = 1'b0;
		forever 
			#(CLK_PERIOD/2) clk = ~clk;
	end 

	// Tests
	initial begin
		err = 0;
		enable = 1;







	// Finish criteria 
	initial begin 
		#160
		if (err == 0)
			$display("*** TEST PASSED! :) ***");
		$finish;
	end 

	// Instantiate top.v
	multiplier top (
		.clk (clk),
		.read (read),
		.a (a),
		.b (b)
		);
endmodule

