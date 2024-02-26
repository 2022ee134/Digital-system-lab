module lab4_t2(output logic a,b,c,d,e,f,g,a1,a2,a3,a4,a5,a6,a7,a8,
input logic [3:0]num,[2:0]sel);
always_comb begin 
    a=((~num[3])&&(~num[2])&&(~num[1])&&(num[0]))||((~num[3])&&(num[2])&&(~num[1])&&(~num[0]))||((num[3])&&(num[2])&&(~num[1])&&(num[0]))||((num[3])&&(~num[2])&&(num[1])&&(num[0]));
    b=((num[3])&&(num[2])&&(~num[0]))||((num[2])&&(num[1])&&(~num[0]))||((~num[3])&&(num[2])&&(~num[1])&&(~num[0]))||((num[3])&&(num[1])&&(num[0]));
    c=((~num[3])&&(~num[2])&&(num[1])&&(~num[0]))||((num[3])&&(num[2])&&(~num[0]))||((num[3])&&(num[2])&&(num[1]));
    d=((~num[3])&&(~num[2])&&(~num[1])&&(num[0]))||((~num[3])&&(num[2])&&(~num[1])&&(~num[0]))||((num[2])&&(num[1])&&(num[0]))||((num[3])&&(~num[2])&&(num[1])&&(~num[0]));
    e=((~num[3])&&(num[0]))||((~num[3])&&(num[2])&&(~num[1]))||((~num[2])&&(~num[1])&&(num[0]));
    f=((~num[3])&&(~num[2])&&(num[0]))||((~num[3])&&(~num[2])&&(num[1]))||((~num[3])&&(num[2])&&(num[0]))||((num[3])&&(num[2])&&(~num[1])&&(num[0]));
    g=((~num[3])&&(~num[2])&&(~num[1]))||((~num[3])&&(num[2])&&(num[1])&&(num[0]))||((num[3])&&(num[2])&&(~num[1])&&(~num[0]));
    a1=(sel[2])||(sel[1])||(sel[0]);
    a2=(sel[2])||(sel[1])||(~sel[0]);
    a3=(sel[2])||(~sel[1])||(sel[0]);
    a4=(sel[2])||(~sel[1])||(~sel[0]);
    a5=(~sel[2])||(sel[1])||(sel[0]);
    a6=(~sel[2])||(sel[1])||(~sel[0]);
    a7=(~sel[2])||(~sel[1])||(sel[0]);
    a8=(~sel[2])||(~sel[1])||(~sel[0]);
    
end
endmodule
