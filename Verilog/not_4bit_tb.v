`timescale 1ns/1ps
module not_4bit_tb;
    reg [3:0] A;
    wire [3:0] Y;

    not_4bit uut (.A(A), .Y(Y));

    initial begin
        $dumpfile("not_4bit.vcd");
        $dumpvars(0, not_4bit_tb);

        A = 4'b0000; #10;
        A = 4'b1010; #10;
        A = 4'b1111; #10;
        $finish;
    end
endmodule
