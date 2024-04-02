module mux8_1(
    input logic [4:0]q1,q2,q3,q4,q5,q6,q7,q8,q9,logic [3:0]sel,
    output logic [4:0]q
);
always_comb begin 
  case (sel)
    4'h0: q=q1;
    4'h1: q=q2;
    4'h2: q=q3;
    4'h3: q=q4;
    4'h4: q=q5;
    4'h5: q=q6;
    4'h6: q=q7;
    4'h7: q=q8;
    4'h8: q=q9;
    default: begin
    q=5'h10;
    end
  endcase 
end 
endmodule