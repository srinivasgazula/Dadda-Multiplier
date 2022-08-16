module test_dada;
reg [15:0] a,b;
wire [31:0] result;
reg [31:0] golden_ref;
dadda dut(a,b,result);
integer seed,i;
integer flag=0;
initial 
begin

for(i=0;i<=7;i=i+1)
begin
a=$random;
b=$random;
golden_ref=a*b;
$monitor("At time %d , a is %d , b is %d, result is %d ",$time,a,b,result);
#5 if(golden_ref!=result) 
		flag=flag+1;
#5;
end

if(flag!=0)
$display("Design Failure");
else
$display("Success");

end
endmodule 




