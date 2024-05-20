`include "transactor.sv"
`include "universal_inter.sv"
class driver;
transactor tx;
virtual universal_inter.TB i1;

function new(virtual universal_inter.TB i1_new);
this.i1=i1_new;
this.tx=new();
$display ("%d : Driver: new method created", $time);
endfunction

task drive_data();
begin
repeat(2000) @( i1.cb)
begin
if((tx.randomize()))
begin
i1.cb.select<=tx.select;
i1.cb.p_din<=tx.p_din;
i1.cb.s_left_din<=tx.s_left_din;
i1.cb.s_right_din<=tx.s_right_din;
end
end
end
endtask
endclass