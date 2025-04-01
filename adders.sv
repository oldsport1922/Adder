// The full adder takes two bits and one carry-in bit as inputs
// and computes the sum ...
module adders(a, b, cin, cout);
input logic [1:0] a, b;
input logic cin;
output logic cout;

assign cout = (a[1] & b[1])+(a[1] & a[0] & b[0])+(a[0] & b[1] & b[0]) + (cin & ((a[1] & a[0])+(b[1] & b[0])+(a[1] & b[0])+(a[0] & b[1])));

//assign s = cin ^ n;
//assign cout = (cin & n) + (a & b);

endmodule
