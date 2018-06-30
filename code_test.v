`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:07:44 06/22/2018
// Design Name:   generate_code
// Module Name:   C:/Users/magnifico/Desktop/FPGA/Huffman/Huffman/code_test.v
// Project Name:  Huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generate_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module code_test;

	// Inputs
	reg CLK;
	reg nRST;
	reg [27:0] node_1;
	reg [27:0] node_2;
	reg [27:0] node_3;
	reg [27:0] node_4;
	reg [27:0] node_5;
	reg [27:0] node_6;
	reg [27:0] node_7;
	reg [27:0] node_8;
	reg [27:0] node_9;
	reg [27:0] node_10;
	reg [27:0] node_11;
	reg [27:0] node_12;
	reg [27:0] node_13;
	reg [27:0] node_14;
	reg [27:0] node_15;
	reg [27:0] node_16;
	reg [27:0] node_17;
	reg [27:0] node_18;
	reg [27:0] node_19;
	reg tree_over;

	// Outputs
	wire [129:0] CODE_TABLE;
	wire over;

	// Instantiate the Unit Under Test (UUT)
	generate_code uut (
		.CLK(CLK), 
		.nRST(nRST), 
		.node_1(node_1), 
		.node_2(node_2), 
		.node_3(node_3), 
		.node_4(node_4), 
		.node_5(node_5), 
		.node_6(node_6), 
		.node_7(node_7), 
		.node_8(node_8), 
		.node_9(node_9), 
		.node_10(node_10), 
		.node_11(node_11), 
		.node_12(node_12), 
		.node_13(node_13), 
		.node_14(node_14), 
		.node_15(node_15), 
		.node_16(node_16), 
		.node_17(node_17), 
		.node_18(node_18), 
		.node_19(node_19), 
		.tree_over(tree_over),
		.CODE_TABLE(CODE_TABLE),
		.over(over)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		nRST = 0;
		node_1 = 28'h57fe2c0;
		node_2 = 28'h57fe2c1;
		node_3 = 28'h5ffe2e2;
		node_4 = 28'h5ffe303;
		node_5 = 28'h67fe324;
		node_6 = 28'h67fe345;
		node_7 = 28'h6ffe366;
		node_8 = 28'h6ffe387;
		node_9 = 28'h77fe3a8;
		node_10 = 28'h77fe3c9;
		node_11 = 28'h784058a;
		node_12 = 28'h78c45eb;
		node_13 = 28'h814866c;
		node_14 = 28'h81cc6ed;
		node_15 = 28'h8a5076e;
		node_16 = 28'h8ad4b6f;
		node_17 = 28'h9358d50;
		node_18 = 28'h93dd2d1;
		node_19 = 28'h0460012;
		tree_over = 1'b1;

		// Wait 100 ns for global reset to finish
		#100;
		nRST = 1;
		// Add stimulus here

	end
	parameter DELAY = 1;
	always 
		#DELAY CLK = ~ CLK;
      
endmodule

