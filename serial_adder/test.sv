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
endprogram
