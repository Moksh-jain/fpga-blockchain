module fulladder(input a,b,carry1,output carry2,sum);
assign sum=(((a+b+carry1)%2)==0)?0:1;
assign carry2=((a+b+carry1)>1)?1:0;
endmodule
// test bench for the given code
module fulladder_1;
reg a;
reg b;
reg carry1;
wire carry2;
wire sum;
fulladder UUT (.a(a),.b(b),.carry1(carry1),.carry2(carry2),.sum(sum));
initial begin
    a=0;
    b=0;
    carry1=0;
    #10;
    a=0;
    b=1;
    carry1=0;
    #10;
    a=0;
    b=0;
    carry1=1;
    #10;
    a=0;
    b=1;
    carry1=1;
    #10;
    a=1;
    b=0;
    carry1=0;
    #10;
    a=1;
    b=1;
    carry1=0;
    #10;
    a=1;
    b=0;
    carry1=1;
    #10;
    a=1;
    b=1;
    carry1=1;
    #10;
end
endmodule


