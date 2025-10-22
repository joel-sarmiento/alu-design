module arithmetic_shifter_4bit (
    input  [3:0] A,
    input  [3:0] B,
    output reg [3:0] X,
    output reg [3:0] Y
);
    reg [3:0] temp;

    always @(*) begin
        if (B[3] == 0) begin
            // Left Shift
            {Y, X} = {A, B[0]} << B[2:1];
        end else begin
            // Right Shift
            {X, Y} = {B[0], A} >> B[2:1];
        end
    end
endmodule
