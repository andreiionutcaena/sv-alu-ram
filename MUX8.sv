`timescale 1ns / 1ps

module MUX8
(
   input logic [7:0]  in0,
   input logic [7:0]  in1,
   input logic [7:0]  in2,
   input logic [7:0]  in3,
   input logic [7:0]  in4,
   input logic [7:0]  in5,
   input logic [7:0]  in6,
   input logic [7:0]  in7,
   input logic [2:0]  select,
   output logic [7:0] out  
);
always_comb
begin
    case(select)
        0: out = in0;
        1: out = in1;
        2: out = in2;
        3: out = in3;
        4: out = in4;
        5: out = in5;
        6: out = in6;
        7: out = in7;
        default: out = 0;
    endcase
end
endmodule
