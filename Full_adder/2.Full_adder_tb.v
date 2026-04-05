module tb;

reg a,b,cin;
wire sum,carry;

full_adder FA(a,b,cin,sum,carry);

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,a,b,cin,sum,carry);

  a=0;b=0;cin=0; #10;
  a=0;b=1;cin=0; #10;
  a=1;b=0;cin=1; #10;
  a=1;b=1;cin=1; #10;

  #10 $finish;
end

endmodule
