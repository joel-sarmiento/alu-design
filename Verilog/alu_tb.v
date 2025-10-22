`timescale 1ns/1ps

module alu_tb;
  reg [3:0] A, B;
  reg [3:0] opcode;
  wire [3:0] X, Y;

  alu uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .X(X),
    .Y(Y)
  );

  initial begin
    $dumpfile("alu_test.vcd");
    $dumpvars(0, alu_tb);

    $display("Starting ALU Testbench...");
    
    // Test AND
    A = 4'b1100; B = 4'b1010; opcode = 4'b0000; #10;

    // Test OR
    opcode = 4'b0001; #10;

    // Test NAND
    opcode = 4'b0010; #10;

    // Test NOR
    opcode = 4'b0011; #10;

    // Test XOR
    opcode = 4'b0100; #10;

    // Test XNOR
    opcode = 4'b0101; #10;

    // Test NOT A
    opcode = 4'b0110; #10;

    // Test ADD
    A = 4'b0101; B = 4'b0011; opcode = 4'b0111; #10;

    // Test SUB
    opcode = 4'b1000; #10;

    // Test MUL
    opcode = 4'b1001; #10;

    // Test DIV/MOD
    A = 4'b1000; B = 4'b0010; opcode = 4'b1010; #10;

    // End simulation
    $stop;
  end
endmodule
