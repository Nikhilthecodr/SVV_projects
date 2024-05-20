interface fsm_inter(input bit clk);
    logic reset;
    logic din;
    logic dout;

clocking cb@(posedge clk);
default input #2ns output #3ns;
    input dout;
    output din;
endclocking: cb;

modport TB(clocking cb, output reset);

endinterface
