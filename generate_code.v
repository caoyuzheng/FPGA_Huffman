`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:13 06/20/2018 
// Design Name: 
// Module Name:    generate_code 
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
module generate_code(CLK,nRST,node_1,node_2,node_3,node_4,node_5,node_6,node_7,node_8,node_9,node_10,node_11,node_12,node_13,node_14,node_15,node_16,node_17,node_18,node_19,tree_over,CODE_TABLE,over);
	
	input CLK;
	input nRST;
	input [27:0] node_1;
	input [27:0] node_2;
	input [27:0] node_3;
	input [27:0] node_4;
	input [27:0] node_5;
	input [27:0] node_6;
	input [27:0] node_7;
	input [27:0] node_8;
	input [27:0] node_9;
	input [27:0] node_10;
	input [27:0] node_11;
	input [27:0] node_12;
	input [27:0] node_13;
	input [27:0] node_14;
	input [27:0] node_15;
	input [27:0] node_16;
	input [27:0] node_17;
	input [27:0] node_18;
	input [27:0] node_19;
	input tree_over;
	output [129:0] CODE_TABLE;
	output over;
	reg over;
	
	reg [12:0] code_1;
	reg [12:0] code_2;
	reg [12:0] code_3;
	reg [12:0] code_4;
	reg [12:0] code_5;
	reg [12:0] code_6;
	reg [12:0] code_7;
	reg [12:0] code_8;
	reg [12:0] code_9;
	reg [12:0] code_10;
	reg [8:0] code_tmp;
	reg [3:0] code_length;
	
	parameter State_1 = 5'b00001;
	parameter State_2 = 5'b00010;
	parameter State_3 = 5'b00011;
	parameter State_4 = 5'b00100;
	parameter State_5 = 5'b00101;
	parameter State_6 = 5'b00110;
	parameter State_7 = 5'b00111;
	parameter State_8 = 5'b01000;
	parameter State_9 = 5'b01001;
	parameter State_10 = 5'b01010;
	parameter State_11 = 5'b01011;
	parameter State_12 = 5'b01100;
	parameter State_13 = 5'b01101;
	parameter State_14 = 5'b01110;
	parameter State_15 = 5'b01111;
	parameter State_16 = 5'b10000;
	parameter State_17 = 5'b10001;
	parameter State_18 = 5'b10010;
	parameter State_19 = 5'b10011;
	
	reg left_11,left_12,left_13,left_14,left_15,left_16,left_17,left_18,left_19;
	reg right_11,right_12,right_13,right_14,right_15,right_16,right_17,right_18,right_19;
	reg [4:0] State;

	always @ (posedge CLK or negedge nRST)
	 begin
	 	if(~nRST)
			begin
			State <= State_19;
			left_11 <= 1;left_12 <= 1;left_13 <= 1;left_14 <= 1;left_15 <= 1;left_16 <= 1;left_17 <= 1;left_18 <= 1;left_19 <= 1;
			right_11 <= 1;right_12 <= 1;right_13 <= 1;right_14 <= 1;right_15 <= 1;right_16 <= 1;right_17 <= 1;right_18 <= 1;right_19 <= 1;
			code_1 <= 0;code_2 <= 0;code_3 <= 0;code_4 <= 0;code_5 <= 0;code_6 <= 0;code_7 <= 0;code_8 <= 0;code_9 <= 0;code_10 <= 0;
			code_tmp <= 0;
			code_length <= 0;
			over <= 1'b0;
			end
		else
			begin
			if(tree_over) begin
  			case(State)
				State_1: begin
							code_1[12] <= code_tmp[0];
							code_1[11] <= code_tmp[1];
							code_1[10] <= code_tmp[2];
							code_1[9] <= code_tmp[3];
							code_1[8] <= code_tmp[4];
							code_1[7] <= code_tmp[5];
							code_1[6] <= code_tmp[6];
							code_1[5] <= code_tmp[7];
							code_1[4] <= code_tmp[8];
							code_1[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_1[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase			
							end
				State_2: begin
							code_2[12] <= code_tmp[0];
							code_2[11] <= code_tmp[1];
							code_2[10] <= code_tmp[2];
							code_2[9] <= code_tmp[3];
							code_2[8] <= code_tmp[4];
							code_2[7] <= code_tmp[5];
							code_2[6] <= code_tmp[6];
							code_2[5] <= code_tmp[7];
							code_2[4] <= code_tmp[8];
							code_2[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_2[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase							
							end
				State_3: begin
							code_3[12] <= code_tmp[0];
							code_3[11] <= code_tmp[1];
							code_3[10] <= code_tmp[2];
							code_3[9] <= code_tmp[3];
							code_3[8] <= code_tmp[4];
							code_3[7] <= code_tmp[5];
							code_3[6] <= code_tmp[6];
							code_3[5] <= code_tmp[7];
							code_3[4] <= code_tmp[8];
							code_3[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_3[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase					
						   end
				State_4: begin
							code_4[12] <= code_tmp[0];
							code_4[11] <= code_tmp[1];
							code_4[10] <= code_tmp[2];
							code_4[9] <= code_tmp[3];
							code_4[8] <= code_tmp[4];
							code_4[7] <= code_tmp[5];
							code_4[6] <= code_tmp[6];
							code_4[5] <= code_tmp[7];
							code_4[4] <= code_tmp[8];
							code_4[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_4[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase					
							end
				State_5: begin
							code_5[12] <= code_tmp[0];
							code_5[11] <= code_tmp[1];
							code_5[10] <= code_tmp[2];
							code_5[9] <= code_tmp[3];
							code_5[8] <= code_tmp[4];
							code_5[7] <= code_tmp[5];
							code_5[6] <= code_tmp[6];
							code_5[5] <= code_tmp[7];
							code_5[4] <= code_tmp[8];
							code_5[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_5[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase						
							end
				State_6: begin
							code_6[12] <= code_tmp[0];
							code_6[11] <= code_tmp[1];
							code_6[10] <= code_tmp[2];
							code_6[9] <= code_tmp[3];
							code_6[8] <= code_tmp[4];
							code_6[7] <= code_tmp[5];
							code_6[6] <= code_tmp[6];
							code_6[5] <= code_tmp[7];
							code_6[4] <= code_tmp[8];
							code_6[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_6[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase							
							end
				State_7: begin
							code_7[12] <= code_tmp[0];
							code_7[11] <= code_tmp[1];
							code_7[10] <= code_tmp[2];
							code_7[9] <= code_tmp[3];
							code_7[8] <= code_tmp[4];
							code_7[7] <= code_tmp[5];
							code_7[6] <= code_tmp[6];
							code_7[5] <= code_tmp[7];
							code_7[4] <= code_tmp[8];
							code_length <= code_length + 1;
							code_7[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_7[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase					
						   end
				State_8: begin
							code_8[12] <= code_tmp[0];
							code_8[11] <= code_tmp[1];
							code_8[10] <= code_tmp[2];
							code_8[9] <= code_tmp[3];
							code_8[8] <= code_tmp[4];
							code_8[7] <= code_tmp[5];
							code_8[6] <= code_tmp[6];
							code_8[5] <= code_tmp[7];
							code_8[4] <= code_tmp[8];
							code_8[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_8[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase					
							end
				State_9: begin
							code_9[12] <= code_tmp[0];
							code_9[11] <= code_tmp[1];
							code_9[10] <= code_tmp[2];
							code_9[9] <= code_tmp[3];
							code_9[8] <= code_tmp[4];
							code_9[7] <= code_tmp[5];
							code_9[6] <= code_tmp[6];
							code_9[5] <= code_tmp[7];
							code_9[4] <= code_tmp[8];
							code_9[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_9[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase			
							end
				State_10: begin
							code_10[12] <= code_tmp[0];
							code_10[11] <= code_tmp[1];
							code_10[10] <= code_tmp[2];
							code_10[9] <= code_tmp[3];
							code_10[8] <= code_tmp[4];
							code_10[7] <= code_tmp[5];
							code_10[6] <= code_tmp[6];
							code_10[5] <= code_tmp[7];
							code_10[4] <= code_tmp[8];
							code_10[3:0] <= code_length[3:0];
							code_tmp[code_length-1] <= 0;
							code_length <= code_length - 1;
							case(node_10[27:23])
									5'b01010: begin 
										State <= State_11; 
										if(left_11) left_11 <= 1'b0;
										else right_11 <= 1'b0;
										end
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase					
							end
				State_11: begin
							if(left_11)
							begin
							code_tmp[code_length] <= 1'b0;
							code_length <= code_length + 1;
							case(node_11[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								default: ;
								endcase
							end
							else if(right_11)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_11[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								case(node_11[27:23])
									5'b01011: begin 
										State <= State_12; 
										if(left_12) left_12 <= 1'b0;
										else right_12 <= 1'b0;
										end
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase
								end
							end
				State_12: begin
							if(left_12)
							begin
							code_tmp[code_length] <= 1'b0;
							code_length <= code_length + 1;
							case(node_12[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								default: ;
								endcase
							end
							else if(right_12)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_12[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								case(node_12[27:23])
									5'b01100: begin 
										State <= State_13; 
										if(left_13) left_13 <= 1'b0;
										else right_13 <= 1'b0;
										end
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase
								end
							end
				State_13: begin
							if(left_13)
							begin
							code_tmp[code_length] <= 1'b0;
							code_length <= code_length + 1;
							case(node_13[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								default: ;
								endcase
							end
							else if(right_13)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_13[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								case(node_13[27:23])
									5'b01101: begin 
										State <= State_14; 
										if(left_14) left_14 <= 1'b0;
										else right_14 <= 1'b0;
										end
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase
								end
							end
				State_14: begin
							if(left_14)
							begin
							code_tmp[code_length] <= 1'b0;
							code_length <= code_length + 1;
							case(node_14[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								default: ;
								endcase
							end
							else if(right_14)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_14[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								case(node_14[27:23])
									5'b01110: begin 
										State <= State_15; 
										if(left_15) left_15 <= 1'b0;
										else right_15 <= 1'b0;
										end
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase
								end
							end
				State_15: begin
							if(left_15)
							begin
								code_tmp[code_length] <= 1'b0;
								code_length <= code_length + 1;
								case(node_15[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								default: ;
								endcase
							end
							else if(right_15)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_15[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								case(node_15[27:23])
									5'b01111: begin 
										State <= State_16; 
										if(left_16) left_16 <= 1'b0;
										else right_16 <= 1'b0;
										end
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase
								end
							end
				State_16: begin
							if(left_16)
							begin
							code_tmp[code_length] <= 1'b0;
							code_length <= code_length + 1;
							case(node_16[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								default: ;
								endcase
							end
							else if(right_16)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_16[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								case(node_16[27:23])
									5'b10000: begin 
										State <= State_17; 
										if(left_17) left_17 <= 1'b0;
										else right_17 <= 1'b0;
										end
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase
								end
							end
				State_17: begin
							if(left_17)
							begin
							code_tmp[code_length] <= 1'b0;
							code_length <= code_length + 1;
							case(node_17[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								5'b01111: State <= State_16;
								default: ;
								endcase
							end
							else if(right_17)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_17[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								5'b01111: State <= State_16;
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								case(node_17[27:23])
									5'b10001: begin 
										State <= State_18; 
										if(left_18) left_18 <= 1'b0;
										else right_18 <= 1'b0;
										end
									5'b10010: begin 
										State <= State_19; 
										if(left_19) left_19 <= 1'b0;
										else right_19 <= 1'b0;
										end
									default: ;
								endcase
								end
							end
				State_18: begin
							if(left_18)
							begin
							code_tmp[code_length] <= 1'b0;
							code_length <= code_length + 1;
							case(node_18[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								5'b01111: State <= State_16;
								5'b10000: State <= State_17;
								default: ;
								endcase
							end
							else if(right_18)
								begin
								code_tmp[code_length] <= 1'b1;
								code_length <= code_length + 1;
								case(node_18[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								5'b01111: State <= State_16;
								5'b10000: State <= State_17;
								default: ;
								endcase
								end
							else begin
								code_tmp[code_length] <= 0;
								code_length <= code_length - 1;
								State <= State_19; 
								if(left_19) left_19 <= 1'b0;
								else right_19 <= 1'b0;
								end
							end
				State_19: begin
							if(left_19)
							begin
							code_length <= code_length + 1;
							case(node_19[17:13])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								5'b01111: State <= State_16;
								5'b10000: State <= State_17;
								5'b10001: State <= State_18;
								default: ;
								endcase
							end
							else if(right_19)
								begin
								code_length <= code_length + 1;
								code_tmp[code_length] <= 1'b1;
								case(node_19[22:18])
								5'b00000: State <= State_1; 
								5'b00001: State <= State_2; 
								5'b00010: State <= State_3; 
								5'b00011: State <= State_4; 
								5'b00100: State <= State_5; 
								5'b00101: State <= State_6; 
								5'b00110: State <= State_7; 
								5'b00111: State <= State_8; 
								5'b01000: State <= State_9; 
								5'b01001: State <= State_10; 
								5'b01010: State <= State_11; 
								5'b01011: State <= State_12; 
								5'b01100: State <= State_13; 
								5'b01101: State <= State_14; 
								5'b01110: State <= State_15;
								5'b01111: State <= State_16;
								5'b10000: State <= State_17;
								5'b10001: State <= State_18;
								default: ;
								endcase
								end
							else begin
								left_11 <= 1;left_12 <= 1;left_13 <= 1;left_14 <= 1;left_15 <= 1;left_16 <= 1;left_17 <= 1;left_18 <= 1;left_19 <= 1;
								right_11 <= 1;right_12 <= 1;right_13 <= 1;right_14 <= 1;right_15 <= 1;right_16 <= 1;right_17 <= 1;right_18 <= 1;right_19 <= 1;
								code_tmp <= 0;
								code_length <= 0;
								over <= 1'b1;
								end
							end
				default:;
			endcase
			end
			else ;
			end
	 end
	 assign CODE_TABLE = {code_10,code_9,code_8,code_7,code_6,code_5,code_4,code_3,code_2,code_1};

endmodule
