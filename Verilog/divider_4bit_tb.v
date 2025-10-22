`timescale 1ns/1ps
module divider_4bit_tb;
    reg [3:0] A, B;
    wire [3:0] Quotient, Remainder;

    divider_4bit uut (.A(A), .B(B), .Quotient(Quotient), .Remainder(Remainder));

    initial begin
        $dumpfile("divider_4bit.vcd");
        $dumpvars(0, divider_4bit_tb);

        A = 4'b1010; B = 4'b0010; #10;
        A = 4'b1111; B = 4'b0100; #10;
        $finish;
    end
endmodule
