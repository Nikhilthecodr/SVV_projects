interface universal_inter(input bit clk);
  logic  reset;
  logic [1:0] select; // select operation
  logic [3:0] p_din;  // parallel data in 
  logic s_left_din;  // serial left data in
  logic s_right_din;  // serial right data in
  logic [3:0] p_dout; //parallel data out
  logic s_left_dout; // serial left data out
  logic s_right_dout;

clocking cb@(posedge clk);
default input #2ns output #3ns;
  input p_dout; //parallel data out
  input s_left_dout; // serial left data out
  input s_right_dout;
  output select;
  output p_din;
  output s_left_din; 
  output s_right_din;
endclocking: cb;
modport TB(clocking cb, output reset);

endinterface
