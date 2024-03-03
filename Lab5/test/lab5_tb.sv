module lab5_tb;
logic a,b,c,d,e,f,g,a1,a2,a3,a4,a5,a6,a7,a8;
logic [3:0]num;
logic [2:0]sel;
lab5 abc(.num(num),
.sel(sel),
.a(a),
.b(b),
.c(c),
.d(d),
.e(e),
.f(f),
.g(g),
.a1(a1),
.a2(a2),
.a3(a3),
.a4(a4),
.a5(a5),
.a6(a6),
.a7(a7),
.a8(a8)
);
initial begin
    for (int i;i<8;i++)begin
    sel=i;
     for (int j;j<16;j++)begin
     num=j;
     #10;
     end
    end
end
initial begin
    $monitor("sel=%h;num=%b;a=%b;b=%b;c=%b;d=%b;e=%b;f=%b;g=%b       a1=%b;a2=%b;a3=%b;a4=%b;a5=%b,a6=%b,a7=%b,a8=%b",sel,num,a,b,c,d,e,f,g,a1,a2,a3,a4,a5,a6,a7,a8);
end
    
endmodule