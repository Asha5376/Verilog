module logic_unit(
    input a,
    input b,
    input [1:0] sel,
    output reg y
);

always @(*) begin
    case(sel)
        2'b00: y = a & b;   // AND
        2'b01: y = a | b;   // OR
        2'b10: y = a ^ b;   // XOR
        default: y = 0;
    endcase
end
endmodule
