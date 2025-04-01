// The module "fourBitAdder FourByOne" ...
module fourBitAdder_FourByOne(a, b, cin, s, cout);
input logic [3:0] a, b;
input logic cin;
output logic [3:0] s; 
output logic cout;//define inputs/outputs

logic c0, c1, c2;
fullAdder f0(a[0], b[0], cin, s[0], c0);
fullAdder f1(a[1], b[1], c0, s[1], c1);
fullAdder f2(a[2], b[2], c1, s[2], c2);
fullAdder f3(a[3], b[3], c2, s[3], cout);
endmodule
