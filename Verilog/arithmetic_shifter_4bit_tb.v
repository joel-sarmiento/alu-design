`timescale 1ns/1ps
module arithmetic_shifter_4bit_tb;
    reg [3:0] A, B;
    wire [3:0] X, Y;

    arithmetic_shifter_4bit uut (.A(A), .B(B), .X(X), .Y(Y));

    initial begin
        $dumpfile("arithmetic_shifter_4bit.vcd");
        $dumpvars(0, arithmetic_shifter_4bit_tb);

        // Example tests from PDF
        A = 4'b1011; B = 4'b0110; #10; // Left shift
        A = 4'b1101; B = 4'b1101; #10; // Right shift
        $finish;
    end
endmodule
