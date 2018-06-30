`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:33 06/26/2018 
// Design Name: 
// Module Name:    out_data 
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
module out_data(CLK,nRST,over,CODE_TABLE,start,out,count);
	input CLK;
   input nRST;
	input over;
	input [129:0] CODE_TABLE;

	output start;
	output [1023:0] out;
	output [10:0] count;

	reg start;
	reg [1023:0] out;
	reg[1023:0] character;
	reg [3:0] temp_character;
	
   reg [8:0] data_tmp;
	reg [3:0] data_len;
   reg [10:0] count;
	reg index;
	reg [7:0] i;

	reg [7:0] clk_counter;

	 always @ (posedge CLK or negedge nRST)
	 begin
	 	if(~nRST)
			begin
				clk_counter <= 8'h01;
				start <= 1'b0;
				count <= 11'b0;
				out <= 1024'b0;
				index <= 1'b0;
				i <= 8'b0;
				data_tmp <= 9'b0;
				data_len <= 4'b0;
				temp_character <= 4'b1111;
				character <= 1024'b1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_1001_1000_0111_0110_0101_0100_0011_0010_0001_0000_0010_0011_0011_0100_0100_0100_0101_0101_0101_0101_0110_0110_0110_0110_0110_0111_0111_0111_0111_0111_0111_1000_1000_1000_1000_1000_1000_1000_1001_1001_1001_1001_1001_1001_1001_1001;
			end
		else
			begin	
			if(over) begin
				case(clk_counter) 
					8'h01: begin
						 data_tmp <= CODE_TABLE[12:4]; 
						 data_len <= CODE_TABLE[3:0];
						 clk_counter <= clk_counter + 1;
						 end
					8'h02: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h03: begin
						 data_tmp <= CODE_TABLE[25:17];
						 data_len <= CODE_TABLE[16:13];
						 clk_counter <= clk_counter + 1;
						 end
					8'h04: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h05 : begin
						 data_tmp <= CODE_TABLE[38:30];
						 data_len <= CODE_TABLE[29:26];
						 clk_counter <= clk_counter + 1;
						 end
					8'h06: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h07: begin
						 data_tmp <= CODE_TABLE[51:43];
						 data_len <= CODE_TABLE[42:39];
						 clk_counter <= clk_counter + 1;
						 end
					8'h08: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h09: begin
						 data_tmp <= CODE_TABLE[64:56];
						 data_len <= CODE_TABLE[55:52];
						 clk_counter <= clk_counter + 1;
						 end
					8'h0a: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h0b: begin  
						 data_tmp <= CODE_TABLE[77:69];
						 data_len <= CODE_TABLE[68:65];
						 clk_counter <= clk_counter + 1;
						 end
					8'h0c: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h0d: begin	  
						 data_tmp <= CODE_TABLE[90:82];
						 data_len <= CODE_TABLE[81:78];
						 clk_counter <= clk_counter + 1;
						 end
					8'h0e: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h0f: begin   
						 data_tmp <= CODE_TABLE[103:95];
						 data_len <= CODE_TABLE[94:91];
						 clk_counter <= clk_counter + 1;
						 end
					8'h10: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h11: begin   
						 data_tmp <= CODE_TABLE[116:108];
						 data_len <= CODE_TABLE[107:104];
						 clk_counter <= clk_counter + 1;
						 end
					8'h12: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h13: begin
						 data_tmp <= CODE_TABLE[129:121];
						 data_len <= CODE_TABLE[120:117];
						 clk_counter <= clk_counter + 1;
						 end
					8'h14: begin
					case(data_len)
					4'd1: begin
						out[count] <= data_tmp[8];
						count <= count + 1;
						end
					4'd2: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						count <= count + 2;
						end
					4'd3: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						count <= count + 3;
						end
					4'd4: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						count <= count + 4;
						end
					4'd5: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						count <= count + 5;
						end
					4'd6: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						count <= count + 6;
						end
					4'd7: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						count <= count + 7;
						end
					4'd8: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						count <= count + 8;
						end
					4'd9: begin
						out[count] <= data_tmp[8];
						out[count+1] <= data_tmp[7];
						out[count+2] <= data_tmp[6];
						out[count+3] <= data_tmp[5];
						out[count+4] <= data_tmp[4];
						out[count+5] <= data_tmp[3];
						out[count+6] <= data_tmp[2];
						out[count+7] <= data_tmp[1];
						out[count+8] <= data_tmp[0];
						count <= count + 9;
						end
						endcase
						clk_counter <= clk_counter + 1;
					if(index) clk_counter <= 8'h15;
						else clk_counter <= clk_counter + 1;
					end
					8'h15: begin
						 character <= {4'b0000,character[1023:4]};
						 temp_character <= character[3:0];
						 index <= 1;
						 i <= i + 1;
						 case(temp_character)
							 4'b0000: clk_counter <= 8'h01;
							 4'b0001: clk_counter <= 8'h03;
							 4'b0010: clk_counter <= 8'h05;
							 4'b0011: clk_counter <= 8'h07;
							 4'b0100: clk_counter <= 8'h09;
							 4'b0101: clk_counter <= 8'h0b;
							 4'b0110: clk_counter <= 8'h0d;
							 4'b0111: clk_counter <= 8'h0f;
							 4'b1000: clk_counter <= 8'h11;
							 4'b1001: clk_counter <= 8'h13;
						 default:;
						 endcase 
						 if(i == 8'hff) clk_counter <= clk_counter + 1;
						 end
					8'h16: start <= 1'b1;
					default: ;
			  endcase	
			end
			else ;
			end
	 end
	 
endmodule
