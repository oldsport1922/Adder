
// The module "fourBitAdder TwoByTwo" ...
module fourBitAdder_TwoByTwo(a, b, cin, s, cout);
input logic [3:0] a, b;
input logic cin;
output logic [3:0] s; 
output logic cout;//define inputs/outputs

logic c;
twoBitAdder f0(a[1:0], b[1:0], cin, s[1:0], c);
twoBitAdder f1(a[3:2], b[3:2], c, s[3:2], cout);
endmodule{module fourBitAdder_TwoByTwo(a, b, cin, s, cout);
input logic [3:0] a, b;
input logic cin;
output logic [3:0] s; 
output logic cout;//define inputs/outputs

logic c;
twoBitAdder f0(a[1:0], b[1:0], cin, s[1:0], c);
twoBitAdder f1(a[3:2], b[3:2], c, s[3:2], cout);
endmodule}