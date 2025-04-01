// The full adder takes two bits and one carry-in bit as inputs
// and computes the sum ...
module twoBitAdder(a, b, cin, s, cout);
input logic [1:0] a, b;
input logic cin;
output logic [1:0] s;
output logic cout;

logic n1, n2, n3;

assign n1 = (~a[1] & a[0] & ~b[1])+(~a[1] & ~b[1] & b[0])+(a[1] & a[0] & b[1])+(a[1] & b[1] & b[0]);
assign n2 = (~a[1] & ~a[0] & b[1])+(~a[1] & b[1] & ~b[0])+(a[1] & ~b[1] & ~b[0])+(a[1] & ~a[0] & ~b[1]);
assign n3 = (~a[1] & a[0] & ~b[1] & b[0])+(a[1] & a[0] & b[1] & b[0])+(~a[1] & ~a[0] & b[1] & ~b[0])+(a[1] & ~a[0] & ~b[1] & ~b[0]);

assign s[1] = (cin & n1) + (~cin & n2) + n3;
assign s[0] = (~cin & ((a[0] & ~b[0]) + (~a[0] & b[0]))) + (cin & ((~a[0] & ~b[0]) + (a[0] & b[0])));
assign cout = (a[1] & b[1])+(a[1] & a[0] & b[0])+(a[0] & b[1] & b[0]) + (cin & ((a[1] & a[0])+(b[1] & b[0])+(a[1] & b[0])+(a[0] & b[1])));
endmodule



