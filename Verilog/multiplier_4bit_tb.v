`timescale 1ns/1ps
module multiplier_4bit_tb;
    reg [3:0] A, B;
    wire [3:0] Product, Overflow;

    multiplier_4bit uut (.A(A), .B(B), .Product(Product), .Overflow(Overflow));

    initial begin
        $dumpfile("multiplier_4bit.vcd");
        $dumpvars(0, multiplier_4bit_tb);

        A = 4'b0011; B = 4'b0010; #10;
        A = 4'b1111; B = 4'b1111; #10;
        $finish;
    end
endmodule
