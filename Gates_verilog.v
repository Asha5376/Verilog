module gates(
  input a,
  input b,
  output and_y,
  output or_y,
  output not_y
);
  
assign and_y=a & b;
assign or_y=a | b;
assign not_y=~a;
endmodule
