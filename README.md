# FPGA_Huffman
Xilinx哈夫曼编码，对一段数据序列进行哈夫曼编码，使得平均码长最短，输出各元素编码和编码后的数据序列。
## 1. 设计要求
1. 组成序列的元素是[0-9]这10个数字，每个数字其对应的4位二进制数表示。比如5对应0101，9对应1001。
2. 输入数据序列的长度为256。
3. 先输出每个元素的编码，然后输出数据序列对应的哈夫曼编码序列。
## 2. 电路接口
RTL 级代码顶层模块为 HuffmanCoding ,可参考电路接口与时序如下:
```
module HuffmanCoding
(
  input wire clk,
  input wire rst_n,
  input wire [3:0] data_in,
  input wire start,
  output wire output_data,
  output wire output_start,
  output wire output_done
);
 ```
1. 复位之后,当 start 信号高有效后开始连续输入 256个数据序列, data_in数据宽度为 4,输入需要 256个时钟周期。
2. 经过运算后, output_start信号高有效后, 开始输出结果 output_data。 output_data信号数据宽度是 1, 因此输出是二进制序列。 最后 output_done高有效说明整个编码过程结束。
3. output_data数据包含 2个部分。 先输出 [0-9]这 10个数字的哈夫曼编码 , 然后输出数据序列哈夫曼编码后的序列。
