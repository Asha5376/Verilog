module tb;

reg a, b, c, d;
reg [1:0] sel;
wire y;

reg expected;

mux_4to1 dut (
  .a(a),
  .b(b),
  .c(c),
  .d(d),
  .sel(sel),
  .y(y)
);

initial begin

  a=0; b=1; c=0; d=1;

  sel=2'b00; #10;
  expected = a;
  if (y !== expected) $display("ERROR sel=00");

  sel=2'b01; #10;
  expected = b;
  if (y !== expected) $display("ERROR sel=01");

  sel=2'b10; #10;
  expected = c;
  if (y !== expected) $display("ERROR sel=10");

  sel=2'b11; #10;
  expected = d;
  if (y !== expected) $display("ERROR sel=11");

  $display("TEST COMPLETED");
  $finish;

end

endmodule
