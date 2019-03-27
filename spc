`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2019 13:14:51
// Design Name: 
// Module Name: spc
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


module spc(input CLOCK, input PUSHBTN, output spo);
    wire one_out, two_out;
    dff dff1(CLOCK, PUSHBTN, one_out);
    dff dff2(CLOCK, one_out, two_out);
    assign spo = one_out & ~two_out;
endmodule
