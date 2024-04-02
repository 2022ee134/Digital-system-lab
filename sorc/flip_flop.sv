module flip_flop(
    input logic [3:0]num,logic [3:0]sel,logic direction,logic reset,logic clock,
    output logic [4:0]q1,q2,q3,q4,q5,q6,q7,q8,q9
);
logic [4:0]q10,q11,q12,q13,q14,q15,q16;
always_ff @( posedge clock,posedge reset ) begin 
    if (reset) begin
        case (sel)
            4'h0: q1<=num;
            4'h1: q2<=num;
            4'h2: q3<=num;
            4'h3: q4<=num;
            4'h4: q5<=num;
            4'h5: q6<=num;
            4'h6: q7<=num;
            4'h7: q8<=num;
            4'h8: q9<=num;
            default: begin
                q10<=5'h10;
                q11<=5'h10;
                q12<=5'h10;
                q13<=5'h10;
                q14<=5'h10;
                q15<=5'h10;
                q16<=5'h10;
                q1<=q1;q2<=q2;q3<=q3;q4<=q4;q5<=q5;q6<=q6;q7<=q7;q8<=q8;q9<=q9;
            end
        endcase
    end
    else if (direction) begin
        q1<=q16;
        q2<=q1;
        q3<=q2;
        q4<=q3;
        q5<=q4;
        q6<=q5;
        q7<=q6;
        q8<=q7;
        q9<=q8;
        q10<=q9;
        q11<=q10;
        q12<=q11;
        q13<=q12;
        q14<=q13;
        q15<=q14;
        q16<=q15;
    end
    else  begin
        q1<=q2;
        q2<=q3;
        q3<=q4;
        q4<=q5;
        q5<=q6;
        q6<=q7;
        q7<=q8;
        q8<=q9;
        q9<=q10;
        q10<=q11;
        q11<=q12;
        q12<=q13;
        q13<=q14;
        q14<=q15;
        q15<=q16;
        q16<=q1;
    end
end 
endmodule