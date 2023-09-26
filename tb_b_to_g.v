`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2023 04:41:47 PM
// Design Name: 
// Module Name: gray_counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gray_counter_tb();
reg clk,rst;
wire [3:0] g;
//wire [3:0] b;

gray__counter dut(clk,rst,g);

initial begin
clk=1'b0;
rst=1'b1;
#10
rst=1'b0;
#200
$finish;
end

always #5 clk = ~clk;



endmodule
