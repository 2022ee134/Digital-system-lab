module decoder4_8(
    input logic [3:0]sel1,
    output logic [7:0]display
);
always_comb begin
     case(sel1)
    4'h0:display=8'b11111110;
    4'h1:display=8'b11111101;
    4'h2:display=8'b11111011;
    4'h3:display=8'b11110111;
    4'h4:display=8'b11101111;
    4'h5:display=8'b11011111;
    4'h6:display=8'b10111111;
    4'h7:display=8'b01111111;
    4'h8:display=8'b11111110;
        default: begin
            display=8'b11111111;
        end
    endcase
    end
endmodule