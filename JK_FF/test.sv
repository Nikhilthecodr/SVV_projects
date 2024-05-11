module test(JK_inter.TB t1);
        initial begin
          t1.reset<=0;
	  t1.J<=0;t1.K<=0;
          #10 t1.reset<=1;
          #10 t1.reset<=0;
          #10 t1.J<=0;t1.K<=1;
          #10 t1.J<=1;t1.K<=0;
          #10 t1.J<=1;t1.K<=1;
          #10 t1.J<=0;t1.K<=0;
          #10 $finish;
        end
      endmodule
