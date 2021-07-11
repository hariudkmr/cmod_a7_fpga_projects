`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2021 16:25:38
// Design Name: 
// Module Name: counter
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


module Counter(
    input pclk,
    output [1:0] led,
    input reset,
    output reg wr_n,
    output [7:0] dq
    );
    
reg [31:0] cntrv;
assign led = cntrv[31:30];
assign dq = cntrv[7:0];


always @ (posedge pclk ) begin
        if (reset) begin
             wr_n <= 1; // Disable writes
             cntrv <= 0;
        end
        else begin
            wr_n <= 0;
            cntrv <= cntrv + 1;
        end
end
endmodule
