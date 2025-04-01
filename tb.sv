
// This testbench is to test the 4-bit adder ...
module tb;
logic [1:0] A, B;
logic cin;
logic cout;

adders dut(A, B, cin, cout);

initial begin
A = 11; B = 11; cin = 1; #10;
//A = 4'b0000; B = 4'b0000; #10;
//A = 4'b1110; B = 4'b0101; #10;
end
endmodule