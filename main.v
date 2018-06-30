`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:37:38 06/20/2018 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(CLK,nRST,input_start,input_data,output_start,data,done);
	input CLK;
	input nRST;
	input input_start;
	input [3:0] input_data;
	output output_start;
	output data;
	output done;
	reg data;
	reg done;
 
	reg [1023:0] character;
	wire [129:0] frequent;
 
	wire [27:0] node_1;
	wire [27:0] node_2;
	wire [27:0] node_3;
	wire [27:0] node_4;
	wire [27:0] node_5;
	wire [27:0] node_6;
	wire [27:0] node_7;
	wire [27:0] node_8;
	wire [27:0] node_9;
	wire [27:0] node_10;
	wire [27:0] node_11;
	wire [27:0] node_12;
	wire [27:0] node_13;
	wire [27:0] node_14;
	wire [27:0] node_15;
	wire [27:0] node_16;
	wire [27:0] node_17;
	wire [27:0] node_18;
	wire [27:0] node_19;

	wire [129:0] CODE_TABLE;
	wire [1023:0] out;
	wire [10:0] count;
	wire over;
	wire count_over;
	wire tree_over;
	
	reg [11:0] j;
	reg input_over;
	
	always @(posedge CLK or negedge nRST)
	begin
		if(~nRST)
			begin
			character <= 1023'b0;
			j <= 8'b0;
			input_over <= 1'b0;
			end
		else 
		begin
			if(input_start) begin
				if(j == 12'h100) input_over <= 1'b1;
				else begin
					j <= j + 1;
					character[3:0] <= #1 input_data[3:0];
					character <= {character[1019:0],4'b0000};
				end
			end
			else ;
		end
	end
			
	count count_1(
		.CLK(CLK),
		.nRST(nRST),
		.input_over(input_over),
		.CHARACTER_IN(character[1023:0]),
		.FREQUENT_OUT(frequent[129:0]),
		.count_over(count_over)
	);
	
	generate_tree tree(
		.CLK(CLK),
		.nRST(nRST),
		.frequent(frequent),
		.count_over(count_over),
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
		.tree_over(tree_over)
	);
	
	generate_code code(
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
		.CODE_TABLE(CODE_TABLE[129:0]),
		.over(over)
	);

	out_data out_data1(
		.CLK(CLK),
		.nRST(nRST),
		.over(over),
		.CODE_TABLE(CODE_TABLE[129:0]),
		.start(output_start),
		.out(out[1023:0]),
		.count(count[10:0])
	);

	reg [10:0] i;
	reg [3:0] clk_counter;
	
	always @(posedge CLK or negedge nRST)
	begin
		if(~nRST)
			begin
				clk_counter <= 4'b0001;
				i <= 10'b0;
				data <= 1'b0;
				done <= 1'b0;
			end
		else 
			begin
			if(output_start) begin
				case(clk_counter)
				4'b0001: begin 
					data <= out[i];
					clk_counter <= clk_counter + 1;
					i <= i + 1;
					end
				4'b0010: begin
					if(i < count) clk_counter <= 4'b0001;
					else done <= 1'b1;
					end
				endcase
				end
			end
	 end
	 
endmodule
