`timescale 1ns/1ns  
module lab7_tb();
logic clock;
logic reset;
logic write;
logic [3:0]num;
logic [2:0]sel;
logic [6:0]segments;
logic [7:0]display;
lab7 BUT(.clock(clock),
.reset(reset),
.write(write),
.num(num),
.sel(sel),
.segments(segments),
.display(display));
initial begin
  clock=0;
  reset=0;
  write=1;
  sel=3'h7;
  num=4'h2;
  #20;
  sel=3'h6;
  num=4'h0;
  #20;
  sel=3'h5;
  num=4'h2;
  #20;
  sel=3'h4;
  num=4'h2;
  #20;
  sel=3'h3;
  num=4'hE;
  #20;
  sel=3'h2;
  num=4'hE;
  #20;
  sel=3'h1;
  num=4'h1;
  #20;
  sel=3'h0;
  num=4'h3;
  #20;
  write=0;
  #1s;
  write=1;
  #20;
  $stop;
    end

initial begin
  $display("reset=%h; write=%h;   num=%h; sel=%h;           display=%h; segments=%h",reset,write,num,sel,display,segments);
end
always #5 clock=~clock;

endmodule