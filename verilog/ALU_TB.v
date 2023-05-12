`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2023 12:45:52 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB();
reg [3:0] a1,b,sel;
wire [3:0] c;
wire ca;
wire [7:0] m;

ALU DUT(.a(a1),.b(b),.sel(sel),.c(c),.carry(ca),.mul_out(m));
integer i;
initial 
   begin
        a1=4'b1010 ; b=4'b0011; sel=4'b0000;
        for (i=0;i<=15;i=i+1)
      begin
       sel=sel+4'b0001;
       #10;
      end;
      #10 a1=4'b1110 ; b=4'b1100;
    end

endmodule
