module lab4_t1(input logic[1:0]a,b,
output logic blue ,red,green);
always_comb begin 
    blue=((~b[1])&&(~b[0]))||(a[1]&&a[0])||(a[0]&&(~b[1]))||(a[1]&&b[0]);
    red=((~a[1])&&(~a[0]))||(b[1]&&b[0])||((~a[0])&&b[1])||((~a[1])&&b[1])||((~a[1])&&b[0]);
    green=(a[1]&&(~b[1]))||((~a[1])&&b[1])||((~a[0])&&b[0])||(a[0]&&(~b[0]));

end
endmodule