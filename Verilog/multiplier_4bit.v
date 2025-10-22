module multiplier_4bit (
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Product,
    output [3:0] Overflow
);
    wire [7:0] full_product;
    assign full_product = A * B;
    assign Product = full_product[3:0];
    assign Overflow = full_product[7:4];
endmodule
