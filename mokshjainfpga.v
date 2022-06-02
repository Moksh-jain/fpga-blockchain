// code for half adder
module halfadder(input a,b, output sum, c);
assign sum= (a^b);
assign c= (a&b);
endmodule
// test bench code for half adder
module halfadder_1;
reg a;
reg b;
wire s;
wire ca;
halfadder UUT (.a(a),.b(b),.sum(s),.c(ca));
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
