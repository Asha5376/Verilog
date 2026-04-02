module tb;

reg a, b;
wire and_y, or_y, not_y;

// DUT
gates dut (
    .a(a),
    .b(b),
    .and_y(and_y),
    .or_y(or_y),
    .not_y(not_y)
);

initial begin
    $display("a b | AND OR NOT | RESULT");

    test(0,0);
    test(0,1);
    test(1,0);
    test(1,1);

    $finish;
end

//  TASK = automatic checking
task test(input ta, input tb);
    reg exp_and, exp_or, exp_not;
    begin
        a = ta;
        b = tb;
        #10;

        // expected values
        exp_and = ta & tb;
        exp_or  = ta | tb;
        exp_not = ~ta;

        if (and_y==exp_and && or_y==exp_or && not_y==exp_not)
            $display("%b %b | %b %b %b | PASS", ta,tb,and_y,or_y,not_y);
        else
            $display("%b %b | %b %b %b | FAIL", ta,tb,and_y,or_y,not_y);
    end
endtask

endmodule
