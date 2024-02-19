module lab3(output logic x, y,
input logic a,b,c
);
logic o;
assign o=a|b;
assign x=o^(~c);
assign y=o&(~(a&b)^o);
endmodule