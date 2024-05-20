`include "fsm_1101.v"
`include "test.sv"
module top;
bit clk;
fsm_inter la (clk);
fsm_1101 DUT(clk,la.reset, la.din,la.dout);
test TB1(la.TB);
always #5 clk=~clk;
initial
begin
$dumpfile("top.vcd");
$dumpvars;
#500 $finish;
end
endmodule
