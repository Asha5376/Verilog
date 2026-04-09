module tb;

reg [3:0] a, b;
reg cin;

wire [3:0] sum;
wire cout;

reg [4:0] expected;
integer i;

four_bit_adder dut (
  .a(a),
  .b(b),
  .cin(cin),
  .sum(sum),
  .cout(cout)
);

initial begin

  for (i = 0; i < 20; i = i + 1) begin

    a   = $random % 16;
    b   = $random % 16;
    cin = $random % 2;

    #10;

    expected = a + b + cin;

    if ({cout, sum} !== expected)
      $display("ERROR: a=%b b=%b cin=%b | sum=%b cout=%b | expected=%b",
                a, b, cin, sum, cout, expected);

  end

  $display("ALL TESTS COMPLETED");
  

end

endmodule
