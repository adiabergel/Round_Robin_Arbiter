interface arbiter_if_in (input logic clk);
  logic       reset;
  logic [7:0] rx_data;

  clocking drv_cb @(negedge clk);
    output reset;
    output rx_data;
  endclocking

  clocking mon_cb @(negedge clk);
    input reset;
    input rx_data;
  endclocking
endinterface
