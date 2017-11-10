// Counter
module Counter(q, clk, reset);

  output [3:0] q;
  input clk, reset;
  
  ToggleFlipFlop tff0(q[0], ~clk, reset);
  ToggleFlipFlop tff1(q[1], ~q[0], reset);
  ToggleFlipFlop tff2(q[2], ~q[1], reset);
  ToggleFlipFlop tff3(q[3], ~q[2], reset);
  
endmodule
