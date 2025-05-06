`timescale 1ns / 1ps


module ALU
(
    input logic [7:0]  in0,
    input logic [7:0]  in1,
    input logic [2:0]  select,
    output logic [7:0] result,
    output logic       zero_flag,
    output logic       carry_flag
);

logic [7:0] sum_result;
logic [7:0] sub_result;
logic [7:0] and_result;
logic [7:0] or_result;
logic [7:0] xor_result;
logic [8:0] temp0;
logic [8:0] temp1;

assign temp0 = in0 + in1;
assign {carry_flag, sum_result} = temp0;
assign sub_result = in0 - in1;
//assign {carry_flag, sub_result} = temp1;
assign and_result = in0 & in1;
assign or_result = in0 | in1;
assign xor_result = in0 ^ in1;

MUX8 MUX8
(
   .in0(sum_result),
   .in1(sub_result),
   .in2(and_result),
   .in3(or_result),
   .in4(xor_result),
   .in5(0),
   .in6(0),
   .in7(0),
   .select(select),
   .out(result)  
);

assign zero_flag = (result==0);

endmodule
