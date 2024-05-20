`include "transactor.sv"
`include "fsm_inter.sv"
class driver;
transactor tx;
virtual fsm_inter.TB i1;

function new(virtual fsm_inter.TB i1_new);
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
i1.cb.din<=tx.din;
end
end
end
endtask
endclass
