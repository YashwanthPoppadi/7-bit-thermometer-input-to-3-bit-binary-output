`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 20:21:11
// Design Name: 
// Module Name: thermo_to_binary
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

// verilog code for full adder using case statement
// Module, input and output declaration
module FA_case(
    input wire a,b,cin,
    output reg sum,cout
);
always @(*)
    begin
      case({a,b,cin})
      3'b000: begin sum=0; cout=0; end
      3'b001: begin sum=1; cout=0; end
      3'b010: begin sum=1; cout=0; end
      3'b011: begin sum=0; cout=1; end
      3'b100: begin sum=1; cout=0; end
      3'b101: begin sum=0; cout=1; end
      3'b110: begin sum=0; cout=1; end
      3'b111: begin sum=1; cout=1; end
      endcase
    end
endmodule

//code for 7-bit thermometer input to 3-bit binary output
   module thermo_to_binary(
    input [6:0] i,      // 7-bit thermometer input
    output [2:0] b     // 3-bit binary output
);

// Internal wires connecting full adders
    wire s1,s2,s3,s4,s5;
    
    // First stage: pair-wise addition
    FA_case d1(i[5],i[4],i[3],s1,s2);     // Add middle three bits
    FA_case d2(i[2],i[1],i[0],s3,s4);     // Add lower three bits
    
    // Second stage: combine partial sums
    FA_case d3(i[6],s1,s3,b[0],s5);       // Add MSB and partial sums
    FA_case d4(s2,s5,s4,b[1],b[2]);       // Final adder chain
 
endmodule
 

