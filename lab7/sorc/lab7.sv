 module lab7(
   input logic [3:0]num,
   input logic[2:0]sel,
   input logic write,
   input logic clock,
   input logic reset,
   output logic [7:0]display,
   output logic[6:0]segments
);
logic [3:0]a1;
logic [3:0]a2;
logic [3:0]a3;
logic [3:0]a4;
logic [3:0]a5;
logic [3:0]a6;
logic [3:0]a7;
logic [3:0]a8;
logic [3:0]m;
logic clock2=0;
logic [2:0]sel2=0;
logic [16:0]count=0;
always_ff @( posedge clock , posedge reset ) begin 
    if(reset)begin
       clock2<=0;
       count<=0; 
    end
    else if (count==17'd124999) begin
        clock2<= ~clock2;
            count<= 0;
    end 
    else begin
            count <=count+1;
    end
       
end

always_comb begin
    if (reset) begin
        sel2[0]=0;
    end else begin
        sel2[0]=clock2;
    end
end
always_ff @( posedge clock2 , posedge reset ) begin 
    if (reset) begin
        sel2[1]<=0;
    end else begin
        sel2[1]<=~sel2[1];
    end
end
always_ff @( posedge sel2[1] , posedge reset ) begin 
    if (reset) begin
        sel2[2]<=0;
    end else begin
        sel2[2]<=~sel2[2];
    end
end

always_ff @( posedge clock,posedge reset  ) begin 
    if (reset)begin
      a1 <=0;
      a2 <=0;
      a3 <=0;
      a4 <=0;
      a5 <=0;
      a6 <=0;
      a7 <=0;
      a8 <=0;
    end
    else if(write) begin
     case (sel)
        3'b000: a1<=num;
        3'b001: a2<=num;
        3'b010: a3<=num;
        3'b011: a4<=num;
        3'b100: a5<=num;
        3'b101: a6<=num;
        3'b110: a7<=num;
        3'b111: a8<=num;
        default: begin
            a1<=a1;a2<=a2;a3<=a3;a4<=a4;a5<=a5;a6<=a6;a7<=a7;a8<=a8;
        end
     endcase
    end
    end
always_comb begin
case (sel2)
    3'b000:m=a1;
    3'b001:m=a2;
    3'b010:m=a3;
    3'b011:m=a4;
    3'b100:m=a5;
    3'b101:m=a6;
    3'b110:m=a7;
    3'b111:m=a8;
    default: begin
        m=4'b0000;
    end
    endcase
end
always_comb begin
    if (!write) begin
     case(sel2)
    3'b000:display=8'b11111110;
    3'b001:display=8'b11111101;
    3'b010:display=8'b11111011;
    3'b011:display=8'b11110111;
    3'b100:display=8'b11101111;
    3'b101:display=8'b11011111;
    3'b110:display=8'b10111111;
    3'b111:display=8'b01111111;
        default: begin
            display=8'b11111111;
        end
    endcase
    end
    else begin
        display=8'b11111111;
    end
end
always_comb begin 
    case (m)
    4'h0:segments=7'b0000001;
    4'h1:segments=7'b1001111;
    4'h2:segments=7'b0010010;
    4'h3:segments=7'b0000110;
    4'h4:segments=7'b1001100;
    4'h5:segments=7'b0100100;
    4'h6:segments=7'b0100000;
    4'h7:segments=7'b0001111;
    4'h8:segments=7'b0000000;
    4'h9:segments=7'b0000100;
    4'hA:segments=7'b0001000;
    4'hB:segments=7'b1100000;
    4'hC:segments=7'b0110001;
    4'hD:segments=7'b1000010;
    4'hE:segments=7'b0110000;
    4'hF:segments=7'b0111000;
        default: begin
         segments=7'b1111111;
        end
    endcase
    
end
endmodule
