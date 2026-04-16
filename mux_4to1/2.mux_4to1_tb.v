`timescale 1ns/1ps

module tb_mux4to1;

reg a, b, c, d;
reg [1:0] sel;
wire y;

// Instantiate DUT
mux4to1 uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
);

// Dump for waveform
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_mux4to1);
end

initial begin
    // Inputs
    a=0; b=1; c=0; d=1;

    sel=2'b00; #10;
    sel=2'b01; #10;
    sel=2'b10; #10;
    sel=2'b11; #10;

    $finish;
end

// Monitor
initial begin
    $monitor("sel=%b y=%b", sel, y);
end

endmodule
