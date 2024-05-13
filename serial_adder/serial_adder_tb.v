`timescale 1s/100ns
`include "serial_adder.v"

module serial_adder_tb;
  reg [3:0] data_a, data_b;
  reg clk, reset;

  wire [3:0] out;
  wire cout;
  wire [4:0] acc;

  serial_adder s_adder(data_a, data_b, clk, reset, out, cout, acc);

  initial begin
    $monitor("data_a = %4b, data_b = %4b, reset = %b,cout=%b, out=%b, acc=%b", data_a, data_b, reset,cout, out, acc);
    $dumpfile("serial_adder_tb.vcd");
    $dumpvars(0, serial_adder_tb);
    clk = 0;
    data_a = 4'b0001; data_b = 4'b0001; reset = 1; #100;
    data_a = 4'b0001; data_b = 4'b0001; reset = 0; #100;
    data_a = 4'b0001; data_b = 4'b0011; reset = 1; #100;
    data_a = 4'b0001; data_b = 4'b0011; reset = 0; #100;
   $finish;
  end

  always #10 clk = !clk;

endmodule
