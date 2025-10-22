`timescale 1ns/1ps
module xor_4bit_tb;
    reg [3:0] A, B;
    wire [3:0] Y;

    xor_4bit uut (.A(A), .B(B), .Y(Y));

    initial begin
        $dumpfile("xor_4bit.vcd");
        $dumpvars(0, xor_4bit_tb);

        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b1010; B = 4'b1100; #10;
        A = 4'b1111; B = 4'b1111; #10;
        $finish;
    end
endmodule
