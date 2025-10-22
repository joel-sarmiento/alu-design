`timescale 1ns/1ps
module adder_4bit_tb;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    adder_4bit uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
        $dumpfile("adder_4bit.vcd");
        $dumpvars(0, adder_4bit_tb);

        A = 4'b0011; B = 4'b0001; Cin = 0; #10;
        A = 4'b1111; B = 4'b0001; Cin = 1; #10;
        $finish;
    end
endmodule
