// The full adder takes two bits and one carry-in bit as inputs
// and computes the sum ...
module fullAdder(a, b, cin, s, cout);
input logic a, b, cin;
output logic s, cout;
logic n;
assign n = (~a & b)+(~b & a);

assign s = (~cin & n) + (~n & cin);
assign cout = (cin & n) + (a & b);
endmodule







