// Code your testbench here
module tb;

reg a, b;
reg [1:0] sel;
wire y;

logic_unit dut(a, b, sel, y);

initial begin
    $monitor("a=%b b=%b sel=%b y=%b", a, b, sel, y);

    a=0; b=0;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;

    a=0; b=1;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;

    a=1; b=0;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;

    a=1; b=1;
    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
end
	
  initial begin
      $dumpfile("logic_unit.vcd");
      $dumpvars(0,a, b, sel, y);
    end
endmodule
