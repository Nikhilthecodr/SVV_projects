// Code your design here
interface JK_inter(input bit clk);
  logic J,K,reset,q;
  modport RTL(input J,K,reset,clk,output q);
  modport TB(input q, output J,K,reset);
endinterface

          
      
