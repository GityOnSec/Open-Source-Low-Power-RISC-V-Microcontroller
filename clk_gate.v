module clk_gate(
 input wire clk,
 input wire enable,
 output wire gclk
);

 reg lat;
 always @(clk or enable)
  if(!clk)
    lat = enable;

 assign gclk = clk & lat;
endmodule
