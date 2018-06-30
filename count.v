`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:15 06/20/2018 
// Design Name: 
// Module Name:    count 
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
module count(CLK,nRST,input_over,CHARACTER_IN,FREQUENT_OUT,count_over);
	input CLK;
	input nRST;
	input input_over;
	input [1023:0] CHARACTER_IN;
	output [129:0] FREQUENT_OUT;
	output count_over;
	
	reg count_over;
	reg [11:0]i;
	
	reg [7:0] temp_frequent0;
	reg [7:0] temp_frequent1;
	reg [7:0] temp_frequent2;
	reg [7:0] temp_frequent3;
	reg [7:0] temp_frequent4;
	reg [7:0] temp_frequent5;
	reg [7:0] temp_frequent6;
	reg [7:0] temp_frequent7;
	reg [7:0] temp_frequent8;
	reg [7:0] temp_frequent9;
	
	reg [3:0] temp_character;
	reg[1023:0] character;
	reg index;

	always @ (posedge CLK or negedge nRST)
	 begin
	 	if(~nRST)
			begin
				temp_character <= 4'b1111;
				temp_frequent0 <= 8'b0;
				temp_frequent1 <= 8'b0;
				temp_frequent2 <= 8'b0;
				temp_frequent3 <= 8'b0;
				temp_frequent4 <= 8'b0;
				temp_frequent5 <= 8'b0;
				temp_frequent6 <= 8'b0;
				temp_frequent7 <= 8'b0;
				temp_frequent8 <= 8'b0;
				temp_frequent9 <= 8'b0;
				i <= 12'b0;
				count_over <= 1'b0;
				index <= 1'b1;
			end
		else
			begin
				if(input_over)
					begin	
					if(index) begin
						index <= 1'b0;
						character[1023:0] <= CHARACTER_IN[1023:0];
					end
					else begin
						if(i == 12'h101) count_over <= 1;
						else begin
							i <= i + 1;
							temp_character	<= character[3:0]; 
							character <= {4'b0000,character[1023:4]};
							 case(temp_character)
							 4'b0000: temp_frequent0 <= temp_frequent0 + 1;
							 4'b0001: temp_frequent1 <= temp_frequent1 + 1;
							 4'b0010: temp_frequent2 <= temp_frequent2 + 1;
							 4'b0011: temp_frequent3 <= temp_frequent3 + 1;
							 4'b0100: temp_frequent4 <= temp_frequent4 + 1;
							 4'b0101: temp_frequent5 <= temp_frequent5 + 1;
							 4'b0110: temp_frequent6 <= temp_frequent6 + 1;
							 4'b0111: temp_frequent7 <= temp_frequent7 + 1;
							 4'b1000: temp_frequent8 <= temp_frequent8 + 1;
							 4'b1001: temp_frequent9 <= temp_frequent9 + 1;
							 default:;
							 endcase
							end
						end
					end
				else ;
			end
	 end	
	assign FREQUENT_OUT[129:0] = {temp_frequent9,5'b01001,temp_frequent8,5'b01000,temp_frequent7,5'b00111,temp_frequent6,5'b00110,temp_frequent5,5'b00101,temp_frequent4,5'b00100,temp_frequent3,5'b00011,temp_frequent2,5'b00010,temp_frequent1,5'b00001,temp_frequent0,5'b00000};
	
endmodule
