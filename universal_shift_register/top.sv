`include "universal.v"
`include "test_drv.sv"
module top;
bit clk;
universal_inter la (clk);
universal DUT(clk,la.reset, la.select ,la.p_din , la.s_left_din ,la.s_right_din ,la.p_dout ,la.s_left_dout ,la.s_right_dout);
test_drv TB1(la.TB);
always #5 clk=~clk;
initial
begin
$dumpfile("top.vcd");
$dumpvars;
#500 $finish;
end
endmodule