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
	wire red;
	wire amber;
	wire green;
	wire [2:0] result;

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
		button = 1;
		sel = 0;
		rst = 1;
		#10 rst = 1'b0; //sets back to zero
		#30
		if(result != 3'b100) begin //by 4 iterations, should equal 4 on the dice
			err = 1;
			$display("***TEST FAILED. Dice should equal 4 ***");
		end
		sel = 1;	//switches to lights
		#20
		if(result != 3'b110) begin //waits 2 more iterations, should equal 110 on the lights
			err = 1;
			$display("***TEST FAILED. Lights should be red and amber (110), not switching correctly.***");
		end
	end	

	// Finish criteria
	initial begin
		#160
		if (err == 0)
			$display("*** TEST PASSED! :) ***");
		$finish;
	end




	// Instantiate Ex6 top.v
	multiplexer top (
		.rst (rst),
		.clk (clk),
		.button (button),
		.sel (sel),
		.result (result[2:0])
		);
endmodule
	


