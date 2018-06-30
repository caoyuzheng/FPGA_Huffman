`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:52:26 06/23/2018
// Design Name:   sort
// Module Name:   C:/Users/magnifico/Desktop/FPGA/Huffman/Huffman/sort_test.v
// Project Name:  Huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sort
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sort_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg sort_begin;
	reg [129:0] FREQUENT_IN;

	// Outputs
	wire sort_over;
	wire [129:0] FREQUENT_OUT;

	// Instantiate the Unit Under Test (UUT)
	sort uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.sort_begin(sort_begin),
		.FREQUENT_IN(FREQUENT_IN), 
		.sort_over(sort_over),
		.FREQUENT_OUT(FREQUENT_OUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		sort_begin = 1'b1;
		FREQUENT_IN = 130'h07923a81c38d9868a3241818b885822c0;

		// Wait 100 ns for global reset to finish
		#100;
		nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always 
		#DELAY CLK = ~ CLK;
      
endmodule

