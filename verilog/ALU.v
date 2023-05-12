`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 12:02:57 PM
// Design Name: 
// Module Name: ALU
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


module ALU(a,b,c,carry,sel,mul_out);
    input [3:0] a,b,sel;
    output reg [3:0] c;
    output reg carry;
    output reg  [7:0] mul_out;
    always @(*)
    
    begin
    case (sel)
    4'b0000: {carry,c} = a+b;
    4'b0001: c = a-b;
    4'b0010: mul_out = a*b;
    4'b0011: c = a/b;
    4'b0100: c = a%b;
    4'b0101: c = a**b;
    4'b0110: c = a<<1;
    4'b0111: c = a>>3;
    4'b1000: c = {a[2:0],a[3]};
    4'b1001: c = {a[0],a[3:1]};
    4'b1010: c = a & b;
    4'b1011: c = a && b;
    4'b1100: c = a || b;
    4'b1101: c = a ^^ b;
    4'b1110: c = ~(a || b);
    4'b1111: c = ~(a && b);
    default: {carry,c} = a + b;
    endcase
    end
endmodule
