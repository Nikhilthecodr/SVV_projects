`include "driver.sv"
program test(fsm_inter.TB itb);
driver drv =new(itb);
initial
begin
itb.reset<=0;
#10 itb.reset<=1;
#10 itb.reset<=0;
end
initial
begin
drv.drive_data();
end
endprogram
