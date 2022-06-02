module comparator(input [7:0]a,input [7:0]b,output c,output d,output e);
assign c=(a==b)?1:0;
assign d=(a>b)?1:0;
assign e=(a<b)?1:0;
endmodule
module tr;
reg [7:0]a;
reg [7:0]b;
comparator UUT(.a(a),.b(b),.c(c),.d(d),.e(e));
initial begin
a=4'b1001;
b=4'b1100;
#10;
a=4'b1011;
b=4'b1010;
#10;
end
endmodule

