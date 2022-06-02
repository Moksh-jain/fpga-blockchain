module comparator(input a,b,output c,d,e);
assign c=(a==b)?1:0;
assign d=(a>b)?1:0;
assign e=(a<b)?1:0;
endmodule
    //test bench for this output given below
    module test_1;
    reg a;
    reg b;
    wire c;
    wire d;
    wire e;
    comparator UUT(.a(a),.b(b),.c(c),.d(d),.e(e));
    initial begin
        a=0;
        b=0;
        #10;
        a=0;
        b=1;
        #10;
        a=1;
        b=0;
        #10;
        a=1;
        b=1;
        #10;
    end 
    endmodule
