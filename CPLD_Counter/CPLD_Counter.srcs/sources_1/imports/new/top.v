`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2021 16:50:19
// Design Name: 
// Module Name: top
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


module top(
    input SCLK,
    input RESET,
    inout CTRL,
    inout [7:0]DQ,
    output[1:0] LED
    );
    
Counter counter_module(
   .pclk(SCLK),
   .led(LED),
   .reset(RESET),
   .wr_n(CTRL),
   .dq(DQ)
);
endmodule
