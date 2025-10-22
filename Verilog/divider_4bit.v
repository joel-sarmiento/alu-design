module divider_4bit (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Quotient,
    output [3:0] Remainder
);
    assign Quotient = (B != 0) ? (A / B) : 4'b0000;
    assign Remainder = (B != 0) ? (A % B) : 4'b0000;
endmodule
