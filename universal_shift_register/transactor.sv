class transactor;

  rand bit [1:0] select;
  rand bit [3:0] p_din;
  rand bit s_left_din;
  rand bit s_right_din;

  constraint c1 { select inside { 2'b00, 2'b01, 2'b10, 2'b11 }; }
  constraint c2 { p_din inside {[4'b0000:4'b1111] }; } 
  constraint c3 { s_left_din inside {0, 1};  }
  constraint c4 { s_right_din inside {0, 1};  }
  endclass