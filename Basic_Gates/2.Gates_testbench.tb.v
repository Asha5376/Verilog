module tb;
  
reg a,b;
wire and_y, or_y, not_y;
//dut connections 
gates dut(.a(a),.b(b),.and_y(and_y),.or_y(or_y),.not_y(not_y));

initial begin
$display("a b | AND OR NOT");
  
a=0;b=0; #10;
  $display("%b %b |%b %b %b", a,b,and_y,or_y,not_y);
a=0;b=1; #10;
  $display("%b %b |%b %b %b", a,b,and_y,or_y,not_y);
a=1;b=0; #10;
  $display("%b %b |%b %b %b", a,b,and_y,or_y,not_y);
a=1;b=1; #10;
  $display("%b %b |%b %b %b", a,b,and_y,or_y,not_y);

end
  
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,a,b,and_y,or_y,not_y);
end
  
initial begin
  a=0;b=0; #10;
  a=0;b=1; #10;
  a=1;b=0; #10;
  a=1;b=1; #10;
  
  
 end 
endmodule

  
