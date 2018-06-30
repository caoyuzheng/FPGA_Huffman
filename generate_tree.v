`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:28 06/20/2018 
// Design Name: 
// Module Name:    generate_tree 
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
module generate_tree(CLK,nRST,frequent,count_over,node_1,node_2,node_3,node_4,node_5,node_6,node_7,node_8,node_9,node_10,node_11,node_12,node_13,node_14,node_15,node_16,node_17,node_18,node_19,tree_over);
	
	input CLK;
	input nRST;
	input [129:0] frequent;
	input count_over;
	output [27:0] node_1;
	output [27:0] node_2;
	output [27:0] node_3;
	output [27:0] node_4;
	output [27:0] node_5;
	output [27:0] node_6;
	output [27:0] node_7;
	output [27:0] node_8;
	output [27:0] node_9;
	output [27:0] node_10;
	output [27:0] node_11;
	output [27:0] node_12;
	output [27:0] node_13;
	output [27:0] node_14;
	output [27:0] node_15;
	output [27:0] node_16;
	output [27:0] node_17;
	output [27:0] node_18;
	output [27:0] node_19;
	output tree_over;
	reg tree_over;
	
	wire [7:0] temp1;
	wire [7:0] temp2;
	wire [7:0] temp3;
	wire [7:0] temp4;
	wire [7:0] temp5;
	wire [7:0] temp6;
	wire [7:0] temp7;
	wire [7:0] temp8;
	wire [7:0] temp9;
	wire [7:0] temp10;
	wire [7:0] temp11;
	wire [7:0] temp12;
	wire [7:0] temp13;
	wire [7:0] temp14;
	wire [7:0] temp15;
	wire [7:0] temp16;
	wire [7:0] temp17;
	wire [7:0] temp18;
	wire [129:0] f1;
	wire [129:0] f2;
	wire [129:0] f3;
	wire [129:0] f4;
	wire [129:0] f5;
	wire [129:0] f6;
	wire [129:0] f7;
	wire [129:0] f8;
	wire [129:0] f9;
	wire [129:0] f10;
	wire [129:0] f11;
	wire [129:0] f12;
	wire [129:0] f13;
	wire [129:0] f14;
	wire [129:0] f15;
	wire [129:0] f16;
	wire [129:0] f17;
	wire [129:0] f18;
	wire [129:0] f19;
	
	assign f1[129:0] = frequent[129:0];
	assign node_1[22:0] = {10'b1111_1111_11,frequent[12:0]};
	assign node_2[22:0] = {10'b1111_1111_11,frequent[25:13]};
	assign node_3[22:0] = {10'b1111_1111_11,frequent[38:26]};
	assign node_4[22:0] = {10'b1111_1111_11,frequent[51:39]};
	assign node_5[22:0] = {10'b1111_1111_11,frequent[64:52]};
	assign node_6[22:0] = {10'b1111_1111_11,frequent[77:65]};
	assign node_7[22:0] = {10'b1111_1111_11,frequent[90:78]};
	assign node_8[22:0] = {10'b1111_1111_11,frequent[103:91]};
	assign node_9[22:0] = {10'b1111_1111_11,frequent[116:104]};
	assign node_10[22:0] = {10'b1111_1111_11,frequent[129:117]};
	
	reg [4:0] fa_1;
	reg [4:0] fa_2;
	reg [4:0] fa_3;
	reg [4:0] fa_4;
	reg [4:0] fa_5;
	reg [4:0] fa_6;
	reg [4:0] fa_7;
	reg [4:0] fa_8;
	reg [4:0] fa_9;
	reg [4:0] fa_10;
	reg [4:0] fa_11;
	reg [4:0] fa_12;
	reg [4:0] fa_13;
	reg [4:0] fa_14;
	reg [4:0] fa_15;
	reg [4:0] fa_16;
	reg [4:0] fa_17;
	reg [4:0] fa_18;
	reg [4:0] fa_19;
	
	parameter State_1 = 4'b0001;
	parameter State_2 = 4'b0010;
	parameter State_3 = 4'b0011;
	parameter State_4 = 4'b0100;
	parameter State_5 = 4'b0101;
	parameter State_6 = 4'b0110;
	parameter State_7 = 4'b0111;
	parameter State_8 = 4'b1000;
	parameter State_9 = 4'b1001;
	parameter State_10 = 4'b1010;
	
	wire sort1_over;
	wire sort2_over;
	wire sort3_over;
	wire sort4_over;
	wire sort5_over;
	wire sort6_over;
	wire sort7_over;
	wire sort8_over;
	wire sort9_over;
	wire add1_over;
	wire add2_over;
	wire add3_over;
	wire add4_over;
	wire add5_over;
	wire add6_over;
	wire add7_over;
	wire add8_over;
	wire add9_over;
	
	reg [3:0] State;
	
	sort sort_1(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(count_over),
		.FREQUENT_IN(f1[129:0]),
		.FREQUENT_OUT(f2[129:0]),
		.sort_over(sort1_over)
	);
	
	assign temp1[7:0] = f2[12:5];
	assign temp2[7:0] = f2[25:18];
	
	add add_1(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort1_over),
		.ADD_1(temp1),
		.ADD_2(temp2),
		.SUM(node_11[12:5]),
		.add_over(add1_over)
	);
	
	//父节点
	assign node_11[4:0] = 5'b01010;
	assign node_11[17:13] = f2[4:0];
	assign node_11[22:18] = f2[17:13];
	
	//新序列
	assign f3[129:26] = f2[129:26];
	assign f3[25:13] = node_11[12:0];
	assign f3[12:0] = 13'b1111111111111;
	
	sort sort_2(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add1_over),
		.FREQUENT_IN(f3[129:0]),
		.FREQUENT_OUT(f4[129:0]),
		.sort_over(sort2_over)
	);
	
	assign temp3[7:0] = f4[12:5];
	assign temp4[7:0] = f4[25:18];
	
	add add_2(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort2_over),
		.ADD_1(temp3),
		.ADD_2(temp4),
		.SUM(node_12[12:5]),
		.add_over(add2_over)
	);
	
	assign node_12[4:0] = 5'b01011;
	assign node_12[17:13] = f4[4:0];
	assign node_12[22:18] = f4[17:13];

	assign f5[129:26] = f4[129:26];
	assign f5[25:13] = node_12[12:0];
	assign f5[12:0] = 13'b1111111111111;
	
	sort sort_3(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add2_over),
		.FREQUENT_IN(f5[129:0]),
		.FREQUENT_OUT(f6[129:0]),
		.sort_over(sort3_over)
	);
	
	assign temp5[7:0] = f6[12:5];
	assign temp6[7:0] = f6[25:18];
	
	add add_3(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort3_over),
		.ADD_1(temp5),
		.ADD_2(temp6),
		.SUM(node_13[12:5]),
		.add_over(add3_over)
	);
	
	assign node_13[4:0] = 5'b01100;
	assign node_13[17:13] = f6[4:0];
	assign node_13[22:18] = f6[17:13];
	
	assign f7[129:26] = f6[129:26];
	assign f7[25:13] = node_13[12:0];
	assign f7[12:0] = 13'b1111111111111;
	
	sort sort_4(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add3_over),
		.FREQUENT_IN(f7[129:0]),
		.FREQUENT_OUT(f8[129:0]),
		.sort_over(sort4_over)
	);
	
	assign temp7[7:0] = f8[12:5];
	assign temp8[7:0] = f8[25:18];
	
	add add_4(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort4_over),
		.ADD_1(temp7),
		.ADD_2(temp8),
		.SUM(node_14[12:5]),
		.add_over(add4_over)
	);
	
	assign node_14[4:0] = 5'b01101;
	assign node_14[17:13] = f8[4:0];
	assign node_14[22:18] = f8[17:13];

	assign f9[129:26] = f8[129:26];
	assign f9[25:13] = node_14[12:0];
	assign f9[12:0] = 13'b1111111111111;
	
	sort sort_5(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add4_over),
		.FREQUENT_IN(f9[129:0]),
		.FREQUENT_OUT(f10[129:0]),
		.sort_over(sort5_over)
	);
	
	assign temp9[7:0] = f10[12:5];
	assign temp10[7:0] = f10[25:18];
	
	add add_5(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort5_over),
		.ADD_1(temp9),
		.ADD_2(temp10),
		.SUM(node_15[12:5]),
		.add_over(add5_over)
	);
	
	assign node_15[4:0] = 5'b01110;
	assign node_15[17:13] = f10[4:0];
	assign node_15[22:18] = f10[17:13];

	assign f11[129:26] = f10[129:26];
	assign f11[25:13] = node_15[12:0];
	assign f11[12:0] = 13'b1111111111111;
	
	sort sort_6(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add5_over),
		.FREQUENT_IN(f11[129:0]),
		.FREQUENT_OUT(f12[129:0]),
		.sort_over(sort6_over)
	);
	
	assign temp11[7:0] = f12[12:5];
	assign temp12[7:0] = f12[25:18];
	
	add add_6(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort6_over),
		.ADD_1(temp11),
		.ADD_2(temp12),
		.SUM(node_16[12:5]),
		.add_over(add6_over)
	);
	
	assign node_16[4:0] = 5'b01111;
	assign node_16[17:13] = f12[4:0];
	assign node_16[22:18] = f12[17:13];

	assign f13[129:26] = f12[129:26];
	assign f13[25:13] = node_16[12:0];
	assign f13[12:0] = 13'b1111111111111;
	
	sort sort_7(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add6_over),
		.FREQUENT_IN(f13[129:0]),
		.FREQUENT_OUT(f14[129:0]),
		.sort_over(sort7_over)
	);
	
	assign temp13[7:0] = f14[12:5];
	assign temp14[7:0] = f14[25:18];
	
	add add_7(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort7_over),
		.ADD_1(temp13),
		.ADD_2(temp14),
		.SUM(node_17[12:5]),
		.add_over(add7_over)
	);
	
	assign node_17[4:0] = 5'b10000;
	assign node_17[17:13] = f14[4:0];
	assign node_17[22:18] = f14[17:13];

	assign f15[129:26] = f14[129:26];
	assign f15[25:13] = node_17[12:0];
	assign f15[12:0] = 13'b1111111111111;
	
	sort sort_8(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add7_over),
		.FREQUENT_IN(f15[129:0]),
		.FREQUENT_OUT(f16[129:0]),
		.sort_over(sort8_over)
	);
	
	assign temp15[7:0] = f16[12:5];
	assign temp16[7:0] = f16[25:18];
	
	add add_8(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort8_over),
		.ADD_1(temp15),
		.ADD_2(temp16),
		.SUM(node_18[12:5]),
		.add_over(add8_over)
	);
	
	assign node_18[4:0] = 5'b10001;
	assign node_18[17:13] = f16[4:0];
	assign node_18[22:18] = f16[17:13];

	assign f17[129:26] = f16[129:26];
	assign f17[25:13] = node_18[12:0];
	assign f17[12:0] = 13'b1111111111111;
	
	sort sort_9(
		.CLK(CLK),
		.nRST(nRST),
		.sort_begin(add8_over),
		.FREQUENT_IN(f17[129:0]),
		.FREQUENT_OUT(f18[129:0]),
		.sort_over(sort9_over)
	);
	
	assign temp17[7:0] = f18[12:5];
	assign temp18[7:0] = f18[25:18];
	
	add add_9(
		.CLK(CLK),
		.nRST(nRST),
		.add_begin(sort9_over),
		.ADD_1(temp17),
		.ADD_2(temp18),
		.SUM(node_19[12:5]),
		.add_over(add9_over)
	);
	
	assign node_19[4:0] = 5'b10010;
	assign node_19[17:13] = f18[4:0];
	assign node_19[22:18] = f18[17:13];

	assign f19[129:26] = f18[129:26];
	assign f19[25:13] = node_19[12:0];
	assign f19[12:0] = 13'b1111111111111;
	
	assign node_1[27:23] = fa_1[4:0];
	assign node_2[27:23] = fa_2[4:0];
	assign node_3[27:23] = fa_3[4:0];
	assign node_4[27:23] = fa_4[4:0];
	assign node_5[27:23] = fa_5[4:0];
	assign node_6[27:23] = fa_6[4:0];
	assign node_7[27:23] = fa_7[4:0];
	assign node_8[27:23] = fa_8[4:0];
	assign node_9[27:23] = fa_9[4:0];
	assign node_10[27:23] = fa_10[4:0];
	assign node_11[27:23] = fa_11[4:0];
	assign node_12[27:23] = fa_12[4:0];
	assign node_13[27:23] = fa_13[4:0];
	assign node_14[27:23] = fa_14[4:0];
	assign node_15[27:23] = fa_15[4:0];
	assign node_16[27:23] = fa_16[4:0];
	assign node_17[27:23] = fa_17[4:0];
	assign node_18[27:23] = fa_18[4:0];
	assign node_19[27:23] = fa_19[4:0];
	
	//左节点
	always @ (posedge CLK or negedge nRST)
	begin
	if(~nRST)
	begin
	fa_1 <= 5'b0;
	fa_2 <= 5'b0;
	fa_3 <= 5'b0;
	fa_4 <= 5'b0;
	fa_5 <= 5'b0;
	fa_6 <= 5'b0;
	fa_7 <= 5'b0;
	fa_8 <= 5'b0;
	fa_9 <= 5'b0;
	fa_10 <= 5'b0;
	fa_11 <= 5'b0;
	fa_12 <= 5'b0;
	fa_13 <= 5'b0;
	fa_14 <= 5'b0;
	fa_15 <= 5'b0;
	fa_16 <= 5'b0;
	fa_17 <= 5'b0;
	fa_18 <= 5'b0;
	fa_19 <= 5'b0;
	State <= State_1;
	tree_over <= 1'b0;
	end
	else
	begin
	if(add9_over) begin
	case(State)
		State_1: begin
		if(f2[4:0] == 5'b00000 || f2[17:13] == 5'b00000)	fa_1 <= 5'b01010;
		if(f2[4:0] == 5'b00001 || f2[17:13] == 5'b00001)	fa_2 <= 5'b01010;
		if(f2[4:0] == 5'b00010 || f2[17:13] == 5'b00010)	fa_3 <= 5'b01010;
		if(f2[4:0] == 5'b00011 || f2[17:13] == 5'b00011)	fa_4 <= 5'b01010;
		if(f2[4:0] == 5'b00100 || f2[17:13] == 5'b00100)	fa_5 <= 5'b01010;
		if(f2[4:0] == 5'b00101 || f2[17:13] == 5'b00101)	fa_6 <= 5'b01010;
		if(f2[4:0] == 5'b00110 || f2[17:13] == 5'b00110)	fa_7 <= 5'b01010;
		if(f2[4:0] == 5'b00111 || f2[17:13] == 5'b00111)	fa_8 <= 5'b01010;
		if(f2[4:0] == 5'b01000 || f2[17:13] == 5'b01000)	fa_9 <= 5'b01010;
		if(f2[4:0] == 5'b01001 || f2[17:13] == 5'b01001)	fa_10 <= 5'b01010;
		State <= State_2;
		end
		State_2: begin
		if(f4[4:0] == 5'b00000 || f4[17:13] == 5'b00000)	fa_1 <= 5'b01011;
		if(f4[4:0] == 5'b00001 || f4[17:13] == 5'b00001)	fa_2 <= 5'b01011;
		if(f4[4:0] == 5'b00010 || f4[17:13] == 5'b00010)	fa_3 <= 5'b01011;
		if(f4[4:0] == 5'b00011 || f4[17:13] == 5'b00011)	fa_4 <= 5'b01011;
		if(f4[4:0] == 5'b00100 || f4[17:13] == 5'b00100)	fa_5 <= 5'b01011;
		if(f4[4:0] == 5'b00101 || f4[17:13] == 5'b00101)	fa_6 <= 5'b01011;
		if(f4[4:0] == 5'b00110 || f4[17:13] == 5'b00110)	fa_7 <= 5'b01011;
		if(f4[4:0] == 5'b00111 || f4[17:13] == 5'b00111)	fa_8 <= 5'b01011;
		if(f4[4:0] == 5'b01000 || f4[17:13] == 5'b01000)	fa_9 <= 5'b01011;
		if(f4[4:0] == 5'b01001 || f4[17:13] == 5'b01001)	fa_10 <= 5'b01011;
		if(f4[4:0] == 5'b01010 || f4[17:13] == 5'b01010)	fa_11 <= 5'b01011;
		State <= State_3;
		end
		State_3: begin
		if(f6[4:0] == 5'b00000 || f6[17:13] == 5'b00000)	fa_1 <= 5'b01100;
		if(f6[4:0] == 5'b00001 || f6[17:13] == 5'b00001)	fa_2 <= 5'b01100;
		if(f6[4:0] == 5'b00010 || f6[17:13] == 5'b00010)	fa_3 <= 5'b01100;
		if(f6[4:0] == 5'b00011 || f6[17:13] == 5'b00011)	fa_4 <= 5'b01100;
		if(f6[4:0] == 5'b00100 || f6[17:13] == 5'b00100)	fa_5 <= 5'b01100;
		if(f6[4:0] == 5'b00101 || f6[17:13] == 5'b00101)	fa_6 <= 5'b01100;
		if(f6[4:0] == 5'b00110 || f6[17:13] == 5'b00110)	fa_7 <= 5'b01100;
		if(f6[4:0] == 5'b00111 || f6[17:13] == 5'b00111)	fa_8 <= 5'b01100;
		if(f6[4:0] == 5'b01000 || f6[17:13] == 5'b01000)	fa_9 <= 5'b01100;
		if(f6[4:0] == 5'b01001 || f6[17:13] == 5'b01001)	fa_10 <= 5'b01100;
		if(f6[4:0] == 5'b01010 || f6[17:13] == 5'b01010)	fa_11 <= 5'b01100;
		if(f6[4:0] == 5'b01011 || f6[17:13] == 5'b01011)	fa_12 <= 5'b01100;
		State <= State_4;
		end
		State_4: begin
		if(f8[4:0] == 5'b00000 || f8[17:13] == 5'b00000)	fa_1 <= 5'b01101;
		if(f8[4:0] == 5'b00001 || f8[17:13] == 5'b00001)	fa_2 <= 5'b01101;
		if(f8[4:0] == 5'b00010 || f8[17:13] == 5'b00010)	fa_3 <= 5'b01101;
		if(f8[4:0] == 5'b00011 || f8[17:13] == 5'b00011)	fa_4 <= 5'b01101;
		if(f8[4:0] == 5'b00100 || f8[17:13] == 5'b00100)	fa_5 <= 5'b01101;
		if(f8[4:0] == 5'b00101 || f8[17:13] == 5'b00101)	fa_6 <= 5'b01101;
		if(f8[4:0] == 5'b00110 || f8[17:13] == 5'b00110)	fa_7 <= 5'b01101;
		if(f8[4:0] == 5'b00111 || f8[17:13] == 5'b00111)	fa_8 <= 5'b01101;
		if(f8[4:0] == 5'b01000 || f8[17:13] == 5'b01000)	fa_9 <= 5'b01101;
		if(f8[4:0] == 5'b01001 || f8[17:13] == 5'b01001)	fa_10 <= 5'b01101;
		if(f8[4:0] == 5'b01010 || f8[17:13] == 5'b01010)	fa_11 <= 5'b01101;
		if(f8[4:0] == 5'b01011 || f8[17:13] == 5'b01011)	fa_12 <= 5'b01101;
		if(f8[4:0] == 5'b01100 || f8[17:13] == 5'b01100)	fa_13 <= 5'b01101;
		State <= State_5;
		end
		State_5: begin
		if(f10[4:0] == 5'b00000 || f10[17:13] == 5'b00000)	fa_1 <= 5'b01110;
		if(f10[4:0] == 5'b00001 || f10[17:13] == 5'b00001)	fa_2 <= 5'b01110;
		if(f10[4:0] == 5'b00010 || f10[17:13] == 5'b00010)	fa_3 <= 5'b01110;
		if(f10[4:0] == 5'b00011 || f10[17:13] == 5'b00011)	fa_4 <= 5'b01110;
		if(f10[4:0] == 5'b00100 || f10[17:13] == 5'b00100)	fa_5 <= 5'b01110;
		if(f10[4:0] == 5'b00101 || f10[17:13] == 5'b00101)	fa_6 <= 5'b01110;
		if(f10[4:0] == 5'b00110 || f10[17:13] == 5'b00110)	fa_7 <= 5'b01110;
		if(f10[4:0] == 5'b00111 || f10[17:13] == 5'b00111)	fa_8 <= 5'b01110;
		if(f10[4:0] == 5'b01000 || f10[17:13] == 5'b01000)	fa_9 <= 5'b01110;
		if(f10[4:0] == 5'b01001 || f10[17:13] == 5'b01001)	fa_10 <= 5'b01110;
		if(f10[4:0] == 5'b01010 || f10[17:13] == 5'b01010)	fa_11 <= 5'b01110;
		if(f10[4:0] == 5'b01011 || f10[17:13] == 5'b01011)	fa_12 <= 5'b01110;
		if(f10[4:0] == 5'b01100 || f10[17:13] == 5'b01100)	fa_13 <= 5'b01110;
		if(f10[4:0] == 5'b01101 || f10[17:13] == 5'b01101)	fa_14 <= 5'b01110;
		State <= State_6;
		end
		State_6: begin
		if(f12[4:0] == 5'b00000 || f12[17:13] == 5'b00000)	fa_1 <= 5'b01111;
		if(f12[4:0] == 5'b00001 || f12[17:13] == 5'b00001)	fa_2 <= 5'b01111;
		if(f12[4:0] == 5'b00010 || f12[17:13] == 5'b00010)	fa_3 <= 5'b01111;
		if(f12[4:0] == 5'b00011 || f12[17:13] == 5'b00011)	fa_4 <= 5'b01111;
		if(f12[4:0] == 5'b00100 || f12[17:13] == 5'b00100)	fa_5 <= 5'b01111;
		if(f12[4:0] == 5'b00101 || f12[17:13] == 5'b00101)	fa_6 <= 5'b01111;
		if(f12[4:0] == 5'b00110 || f12[17:13] == 5'b00110)	fa_7 <= 5'b01111;
		if(f12[4:0] == 5'b00111 || f12[17:13] == 5'b00111)	fa_8 <= 5'b01111;
		if(f12[4:0] == 5'b01000 || f12[17:13] == 5'b01000)	fa_9 <= 5'b01111;
		if(f12[4:0] == 5'b01001 || f12[17:13] == 5'b01001)	fa_10 <= 5'b01111;
		if(f12[4:0] == 5'b01010 || f12[17:13] == 5'b01010)	fa_11 <= 5'b01111;
		if(f12[4:0] == 5'b01011 || f12[17:13] == 5'b01011)	fa_12 <= 5'b01111;
		if(f12[4:0] == 5'b01100 || f12[17:13] == 5'b01100)	fa_13 <= 5'b01111;
		if(f12[4:0] == 5'b01101 || f12[17:13] == 5'b01101)	fa_14 <= 5'b01111;
		if(f12[4:0] == 5'b01110 || f12[17:13] == 5'b01110)	fa_15 <= 5'b01111;
		State <= State_7;
		end
		State_7: begin
		if(f14[4:0] == 5'b00000 || f14[17:13] == 5'b00000)	fa_1 <= 5'b10000;
		if(f14[4:0] == 5'b00001 || f14[17:13] == 5'b00001)	fa_2 <= 5'b10000;
		if(f14[4:0] == 5'b00010 || f14[17:13] == 5'b00010)	fa_3 <= 5'b10000;
		if(f14[4:0] == 5'b00011 || f14[17:13] == 5'b00011)	fa_4 <= 5'b10000;
		if(f14[4:0] == 5'b00100 || f14[17:13] == 5'b00100)	fa_5 <= 5'b10000;
		if(f14[4:0] == 5'b00101 || f14[17:13] == 5'b00101)	fa_6 <= 5'b10000;
		if(f14[4:0] == 5'b00110 || f14[17:13] == 5'b00110)	fa_7 <= 5'b10000;
		if(f14[4:0] == 5'b00111 || f14[17:13] == 5'b00111)	fa_8 <= 5'b10000;
		if(f14[4:0] == 5'b01000 || f14[17:13] == 5'b01000)	fa_9 <= 5'b10000;
		if(f14[4:0] == 5'b01001 || f14[17:13] == 5'b01001)	fa_10 <= 5'b10000;
		if(f14[4:0] == 5'b01010 || f14[17:13] == 5'b01010)	fa_11 <= 5'b10000;
		if(f14[4:0] == 5'b01011 || f14[17:13] == 5'b01011)	fa_12 <= 5'b10000;
		if(f14[4:0] == 5'b01100 || f14[17:13] == 5'b01100)	fa_13 <= 5'b10000;
		if(f14[4:0] == 5'b01101 || f14[17:13] == 5'b01101)	fa_14 <= 5'b10000;
		if(f14[4:0] == 5'b01110 || f14[17:13] == 5'b01110)	fa_15 <= 5'b10000;
		if(f14[4:0] == 5'b01111 || f14[17:13] == 5'b01111)	fa_16 <= 5'b10000;
		State <= State_8;
		end
		State_8: begin
		if(f16[4:0] == 5'b00000 || f16[17:13] == 5'b00000)	fa_1 <= 5'b10001;
		if(f16[4:0] == 5'b00001 || f16[17:13] == 5'b00001)	fa_2 <= 5'b10001;
		if(f16[4:0] == 5'b00010 || f16[17:13] == 5'b00010)	fa_3 <= 5'b10001;
		if(f16[4:0] == 5'b00011 || f16[17:13] == 5'b00011)	fa_4 <= 5'b10001;
		if(f16[4:0] == 5'b00100 || f16[17:13] == 5'b00100)	fa_5 <= 5'b10001;
		if(f16[4:0] == 5'b00101 || f16[17:13] == 5'b00101)	fa_6 <= 5'b10001;
		if(f16[4:0] == 5'b00110 || f16[17:13] == 5'b00110)	fa_7 <= 5'b10001;
		if(f16[4:0] == 5'b00111 || f16[17:13] == 5'b00111)	fa_8 <= 5'b10001;
		if(f16[4:0] == 5'b01000 || f16[17:13] == 5'b01000)	fa_9 <= 5'b10001;
		if(f16[4:0] == 5'b01001 || f16[17:13] == 5'b01001)	fa_10 <= 5'b10001;
		if(f16[4:0] == 5'b01010 || f16[17:13] == 5'b01010)	fa_11 <= 5'b10001;
		if(f16[4:0] == 5'b01011 || f16[17:13] == 5'b01011)	fa_12 <= 5'b10001;
		if(f16[4:0] == 5'b01100 || f16[17:13] == 5'b01100)	fa_13 <= 5'b10001;
		if(f16[4:0] == 5'b01101 || f16[17:13] == 5'b01101)	fa_14 <= 5'b10001;
		if(f16[4:0] == 5'b01110 || f16[17:13] == 5'b01110)	fa_15 <= 5'b10001;
		if(f16[4:0] == 5'b01111 || f16[17:13] == 5'b01111)	fa_16 <= 5'b10001;
		if(f16[4:0] == 5'b10000 || f16[17:13] == 5'b10000)	fa_17 <= 5'b10001;
		State <= State_9;
		end
		State_9: begin
		if(f18[4:0] == 5'b00000 || f18[17:13] == 5'b00000)	fa_1 <= 5'b10010;
		if(f18[4:0] == 5'b00001 || f18[17:13] == 5'b00001)	fa_2 <= 5'b10010;
		if(f18[4:0] == 5'b00010 || f18[17:13] == 5'b00010)	fa_3 <= 5'b10010;
		if(f18[4:0] == 5'b00011 || f18[17:13] == 5'b00011)	fa_4 <= 5'b10010;
		if(f18[4:0] == 5'b00100 || f18[17:13] == 5'b00100)	fa_5 <= 5'b10010;
		if(f18[4:0] == 5'b00101 || f18[17:13] == 5'b00101)	fa_6 <= 5'b10010;
		if(f18[4:0] == 5'b00110 || f18[17:13] == 5'b00110)	fa_7 <= 5'b10010;
		if(f18[4:0] == 5'b00111 || f18[17:13] == 5'b00111)	fa_8 <= 5'b10010;
		if(f18[4:0] == 5'b01000 || f18[17:13] == 5'b01000)	fa_9 <= 5'b10010;
		if(f18[4:0] == 5'b01001 || f18[17:13] == 5'b01001)	fa_10 <= 5'b10010;
		if(f18[4:0] == 5'b01010 || f18[17:13] == 5'b01010)	fa_11 <= 5'b10010;
		if(f18[4:0] == 5'b01011 || f18[17:13] == 5'b01011)	fa_12 <= 5'b10010;
		if(f18[4:0] == 5'b01100 || f18[17:13] == 5'b01100)	fa_13 <= 5'b10010;
		if(f18[4:0] == 5'b01101 || f18[17:13] == 5'b01101)	fa_14 <= 5'b10010;
		if(f18[4:0] == 5'b01110 || f18[17:13] == 5'b01110)	fa_15 <= 5'b10010;
		if(f18[4:0] == 5'b01111 || f18[17:13] == 5'b01111)	fa_16 <= 5'b10010;
		if(f18[4:0] == 5'b10000 || f18[17:13] == 5'b10000)	fa_17 <= 5'b10010;
		if(f18[4:0] == 5'b10001 || f18[17:13] == 5'b10001)	fa_18 <= 5'b10010;
		State <= State_10;
		end
		State_10: tree_over <= 1'b1;
		default: ;
		endcase
		end
		else ;
	end
	end
	
	
endmodule
