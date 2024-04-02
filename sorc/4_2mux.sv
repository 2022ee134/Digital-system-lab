module mux4_2(
    input logic [3:0]sel,logic [2:0]sel2,logic reset,
    output logic clk ,logic [3:0]sel1
);
always_comb begin 
    if (reset) begin
        sel1=sel;
    end else begin
        sel1=sel2;
    end
end   
endmodule