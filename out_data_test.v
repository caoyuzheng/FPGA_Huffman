`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:45 06/26/2018
// Design Name:   out_data
// Module Name:   C:/Users/magnifico/Desktop/FPGA/Huffman/Huffman/out_data_test.v
// Project Name:  Huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: out_data
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module out_data_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg over;
	reg [129:0] CODE_TABLE;

	// Outputs
	wire start;
	wire [1023:0] out;
	wire [10:0] count;

	// Instantiate the Unit Under Test (UUT)
	out_data uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.over(over), 
		.CODE_TABLE(CODE_TABLE), 
		.start(start), 
		.out(out),
		.count(count)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		over = 1'b1;
		CODE_TABLE = 130'h2807003601a00c806003f027013409804;

		// Wait 100 ns for global reset to finish
		#100;
	nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always 
		#DELAY CLK = ~ CLK;
      
endmodule

