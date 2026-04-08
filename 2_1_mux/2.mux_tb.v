module tb_mux_2to1;

reg a, b, sel;
wire y;

// DUT
mux_2to1 dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $dumpfile("mux.vcd");
  $dumpvars(0,  a, b, sel,y);

    // Test cases
    a = 0; b = 0; sel = 0; #10;
    a = 0; b = 1; sel = 0; #10;
    a = 1; b = 0; sel = 0; #10;
    a = 1; b = 1; sel = 0; #10;

    a = 0; b = 0; sel = 1; #10;
    a = 0; b = 1; sel = 1; #10;
    a = 1; b = 0; sel = 1; #10;
    a = 1; b = 1; sel = 1; #10;

    $finish;
end

endmodule
