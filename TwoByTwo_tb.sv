// This testbench is to test the 4-bit adder ...
module TwoByTwo_tb;
logic [3:0] A, B;
logic [3:0] S;
logic cin;
logic cout;

fourBitAdder_TwoByTwo dut(A, B, cin, S, cout);
initial begin
// test a set of inputs for the 4-bit adder module
A = 4'b0000; B = 4'b0000; cin = 0; #10;
A = 4'b1111; B = 4'b1111; cin = 0; #10;
end
endmodule
