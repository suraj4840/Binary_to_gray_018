`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2023 04:21:39 PM
// Design Name: 
// Module Name: gray__counter
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


module gray__counter(clk,rst,g);
input clk,rst;
reg [3:0] b=4'b0000;
output reg [3:0] g;

always @(posedge clk,posedge rst)
begin
if(rst)
 g<=4'b0000;
else 
 begin 
 g[3]=b[3];
 g[2]=b[3]^b[2];
 g[1]=b[2]^b[1];
 g[0]=b[1]^b[0];
 b = b+1'b0001;
 g=g+1;
 end
 end
 endmodule 
