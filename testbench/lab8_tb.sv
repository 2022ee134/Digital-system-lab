`timescale 1ns/1ns  
module lab8_tb();
logic clock;
logic reset;
logic direction;
logic [3:0]num;
logic [3:0]sel;
logic [6:0]segments;
logic [7:0]display;
lab8 BUT(.clock(clock),
.reset(reset),
.direction(direction),
.num(num),
.sel(sel),
.segments(segments),
.display(display));
initial begin
  clock=0;
  reset=1;
  direction=1;
  #20;
  reset=0;
  #20;
  reset=1;
  #20;
  reset=0;
  #20;
  reset=1;
  sel=4'h8;
  num=4'h2;
  #20
  sel=4'h7;
  num=4'h0;
  #20;
  sel=4'h6;
  num=4'h2;
  #20;
  sel=4'h5;
  num=4'h2;
  #20;
  sel=4'h4;
  num=4'hE;
  #20;
  sel=4'h3;
  num=4'hE;
  #20;
  sel=4'h2;
  num=4'h1;
  #20;
  sel=4'h1;
  num=4'h3;
  #20;
  sel=4'h0;
  num=4'h4;
  #20;
  reset=0;
  #16s;
  direction=0;
  #16s;
  $stop;
    end
always #5 clock=~clock;

endmodule