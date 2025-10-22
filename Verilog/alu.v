module alu (
  input [3:0] A, B,
  input [3:0] opcode,
  output reg [3:0] X, Y
);

always @(*) begin
  case (opcode)
    4'b0000: X = A & B;              
    4'b0001: X = A | B;              
    4'b0010: X = ~(A & B);           
    4'b0011: X = ~(A | B);           
    4'b0100: X = A ^ B;              
    4'b0101: X = ~(A ^ B);           
    4'b0110: X = ~A;                 
    4'b0111: {Y, X} = A + B;         
    4'b1000: {Y, X} = A - B;         
    4'b1001: {Y, X} = A * B;         
    4'b1010: begin
               X = B == 0 ? 4'b0000 : A / B;
               Y = B == 0 ? 4'b0000 : A % B;
             end
    default: begin
               X = 4'b0000;
               Y = 4'b0000;
             end
  endcase
end

endmodule
