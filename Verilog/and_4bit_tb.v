`timescale 1ns/1ps
module and_4bit_tb;
    reg [3:0] A, B;
    wire [3:0] Y;

    and_4bit uut (.A(A), .B(B), .Y(Y));

    initial begin
        $dumpfile("and_4bit.vcd");
        $dumpvars(0, and_4bit_tb);

        // Test cases
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b1010; B = 4'b1100; #10;
        A = 4'b1111; B = 4'b1111; #10;
        $finish;
    end
endmodule
