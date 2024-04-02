module decoder4_7(
    input logic [4:0]q,
    output logic [6:0]segments
);
always_comb begin 
    case (q)
    5'h00:segments=7'b0000001;
    5'h01:segments=7'b1001111;
    5'h02:segments=7'b0010010;
    5'h03:segments=7'b0000110;
    5'h04:segments=7'b1001100;
    5'h05:segments=7'b0100100;
    5'h06:segments=7'b0100000;
    5'h07:segments=7'b0001111;
    5'h08:segments=7'b0000000;
    5'h09:segments=7'b0000100;
    5'h0A:segments=7'b0001000;
    5'h0B:segments=7'b1100000;
    5'h0C:segments=7'b0110001;
    5'h0D:segments=7'b1000010;
    5'h0E:segments=7'b0110000;
    5'h0F:segments=7'b0111000;
        default: begin
         segments=7'b1111111;
        end
    endcase
    
end 
endmodule