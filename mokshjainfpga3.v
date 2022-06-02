module adder8bit(input [7:0]a,input [7:0]b,output sum[7:0], c);
wire carry[6:0];
assign sum[7]=(a[7]^b[7]);
assign carry[6]=(((a[7]+b[7])>1)?1:0);
assign sum[6]=((a[6]+b[6]+carry[6])/2);
assign carry[5]=(((a[6]+b[6]+carry[6])>1)?1:0);
assign sum[5]=((a[5]+b[5]+carry[5])/2);
assign carry[4]=(((a[5]+b[5]+carry[5])>1)?1:0);
assign sum[4]=((a[4]+b[4]+carry[4])/2);
assign carry[3]=(((a[4]+b[4]+carry[4])>1)?1:0);
assign sum[3]=((a[3]+b[3]+carry[3])/2);
assign carry[2]=(((a[3]+b[3]+carry[3])>1)?1:0);
assign sum[2]=((a[2]+b[2]+carry[2])/2);
assign carry[1]=(((a[2]+b[2]+carry[2])>1)?1:0);
assign sum[1]=((a[1]+b[1]+carry[1])/2);
assign carry[0]=(((a[1]+b[1]+carry[1])>1)?1:0);
assign sum[0]=((a[0]+b[0]+carry[0])/2);
assign c=(((a[1]+b[1]+carry[1])>1)?1:0);
endmodule
// Testbench for this code------>
module test;
reg [7:0] a;
reg [7:0] b;
wire [7:0] sum;
wire carry;
adder8bit UUT(.a(a),.b(b),.sum(sum),.c(carry)); 
initial begin
    // can test any arbitary values here
end
endmodule
