
module lab4_t1_tb(
);
logic [1:0]a1;
logic [1:0]b1;
logic blue;
logic red;
logic green;
localparam period =10 ;
lab4_t1 abc(.a(a1),
.b(b1),
.blue(blue),
.green(green),
.red(red));
initial begin
    a1[1]=0;a1[0]=0;b1[1]=0;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    b1[1]=1;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    a1[0]=1;b1[1]=0;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    b1[1]=1;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    a1[1]=1;a1[0]=0;b1[1]=0;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    b1[1]=1;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    a1[0]=1;b1[1]=0;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    b1[1]=1;b1[0]=0;
    #period;
    b1[0]=1;
    #period;
    $stop;
end
initial begin
    $monitor("a[1]=%b,a[0]=%b,b[1]=%b,b[0]=%b,blue=%b,green=%b,red=%b,cyan=%b,yellow=%b,purpul=%b",a1[1],a1[0],b1[1],b1[0],blue,green,red,(green&blue),(red&green),(blue&red));
end
endmodule