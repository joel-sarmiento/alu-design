`timescale 1ns/1ps
module subtractor_4bit_tb;
    reg [3:0] A, B;
    wire [3:0] Diff;
    wire Borrow;

    subtractor_4bit uut (.A(A), .B(B), .Diff(Diff), .Borrow(Borrow));

    initial begin
        $dumpfile("subtractor_4bit.vcd");
        $dumpvars(0, subtractor_4bit_tb);

        A = 4'b1010; B = 4'b0100; #10;
        A = 4'b0011; B = 4'b0100; #10;
        $finish;
    end
endmodule
