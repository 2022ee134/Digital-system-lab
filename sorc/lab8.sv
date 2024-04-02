module lab8(
    input logic [3:0]num,logic [3:0]sel,logic clock,logic reset,logic direction,
    output logic [6:0]segments,logic [7:0]display
);
logic clock2;
logic [3:0]sel1;
logic [2:0]sel2;
logic [4:0]q1,q2,q3,q4,q5,q6,q7,q8,q9;
logic [4:0]q;
flip_flop UUT1(.num(num), .sel(sel1), .clock(clock2), .reset(reset), .direction(direction),
.q1(q1), .q2(q2), .q3(q3), .q4(q4), .q5(q5), .q6(q6), .q7(q7), .q8(q8), .q9(q9));

mux8_1 UUT2(.q1(q1), .q2(q2), .q3(q3), .q4(q4), .q5(q5), .q6(q6), .q7(q7), .q8(q8), .q9(q9), .sel(sel1),
.q(q));

decoder4_7 UUT3(.q(q), 
.segments(segments));

clock2_sel2 UUT4(.clock(clock), .reset(reset),
.sel2(sel2), .clock2(clock2));

mux4_2 UUT5(.sel(sel), .sel2(sel2), .reset(reset),
.sel1(sel1));

decoder4_8 UUT6(.sel1(sel1), 
.display(display));
endmodule