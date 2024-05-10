module top();
  bit clk;
  JK_inter i1(clk);
  test inst1 (i1.TB)
  JK_FF BUT(i1);
  always #5 clk = ~clk;
  initial 
    begin
      $dumpfile(" JK_FF.vcd");
      $dumpvars;
    end
endmodule
