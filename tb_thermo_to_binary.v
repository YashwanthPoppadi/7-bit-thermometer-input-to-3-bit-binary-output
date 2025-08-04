`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 21:05:07
// Design Name: 
// Module Name: tb_thermo_to_binary
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


module tb_thermo_to_binary;

  reg [6:0] i;          // input thermometer code
  wire [2:0] b;         // output binary code

  // Instantiate the Unit Under Test (UUT)
  thermo_to_binary uut (
    .i(i),
    .b(b)
  );

  initial begin
    // Monitor output
    $monitor("Time=%0t | i=%b -> b=%b", $time, i, b);

    // Apply test cases
    i = 7'b0000000; #10;
    i = 7'b0000001; #10;
    i = 7'b0000011; #10;
    i = 7'b0000111; #10;
    i = 7'b0001111; #10;
    i = 7'b0011111; #10;
    i = 7'b0111111; #10;
    i = 7'b1111111; #10;
    $stop;
  end

endmodule
