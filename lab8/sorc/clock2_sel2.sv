module clock2_sel2(
    input logic clock,reset,
    output logic clock2,logic [2:0]sel2
);
logic [16:0]count=16'd000000;
logic clk=0;
logic [25:0]count2=26'd00000000;
always_ff @( posedge clock , posedge reset ) begin 
    if(reset)begin
       clk<=0;
       count<=16'd000000; 
    end
    else if (count==17'd124999) begin
        clk<= ~clk;
            count<=16'd000000;
    end 
    else begin
            count <=count+1;
    end
       
end

always_comb begin
    if (reset) begin
        sel2[0]=0;
    end else begin
        sel2[0]=clk;
    end
end
always_ff @( posedge clk , posedge reset ) begin 
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

always_ff @( posedge clock , posedge reset ) begin 
    if(reset)begin
       clock2<=1'b0;
       count2<=26'd00000000; 
    end
    else if (count2==26'd49999999) begin
        clock2<= ~clock2;
            count2<= 26'd00000000;
    end 
    else begin
            count2 <=count2+1;
    end
end   
endmodule