module JK_FF(JK_inter.RTL r1);
  always @ (posedge clk, posedge reset)
    begin 
      if (r1.reset)
        r1.q<=0;
      else
        case ({J,K})
          2'b00: r1.q <= r1.q;
          2'b01: r1.q <= 0;
          2'b10: r1.q <= 1;
          2'b11: r1.q <= ~(r1.q);
        endcase
endmodule
