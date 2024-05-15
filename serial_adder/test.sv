program test(serial_inter.TB T1);

initial begin
    // Iterate through all possible combinations of data_a, data_b, and reset
    for (int i = 0; i < 16; i = i + 1) begin
      T1.reset <= i[0];
      T1.cb.data_b <= i[3:0];
      T1.cb.data_a <= i[3:0];
      #100; // Wait for a while
    end
    $finish; // End simulation
  end
 //    initial begin
 // T1.cb.data_a <= 4'b0001; T1.cb.data_b <= 4'b0001; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0001; T1.cb.data_b <= 4'b0001; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0001; T1.cb.data_b <= 4'b0011; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0001; T1.cb.data_b <= 4'b0011; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0101; T1.cb.data_b <= 4'b0010; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b1100; T1.cb.data_b <= 4'b0111; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b1010; T1.cb.data_b <= 4'b1001; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b1010; T1.cb.data_b <= 4'b1001; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0111; T1.cb.data_b <= 4'b1111; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0111; T1.cb.data_b <= 4'b1111; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1111; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0111; T1.cb.data_b <= 4'b1111; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0011; T1.cb.data_b <= 4'b0011; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0111; T1.cb.data_b <= 4'b1100; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1011; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1011; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1000; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0010; T1.cb.data_b <= 4'b0011; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1010; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1111; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1010; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b1110;  T1.cb.data_b <= 4'b1010; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1010; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b1111; T1.cb.data_b <= 4'b1110; T1.reset <= 1; #100;
 // T1.cb.data_a <= 4'b0110; T1.cb.data_b <= 4'b1011; T1.reset <= 0; #100;
 // T1.cb.data_a <= 4'b1111; T1.cb.data_b <= 4'b1010; T1.reset <= 1; #100; 
 //  end
endprogram
