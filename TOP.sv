`timescale 1ns / 1ps

module TOP
(
    input logic  [7:0] data,
    input logic        clock,
    input logic        write_enable,
    input logic  [3:0] addr_write,
    input logic  [3:0] addr0,
    input logic  [3:0] addr1,
    input logic  [2:0] select,
    output logic [7:0] result,
    output logic       zero_flag,
    output logic       carry_flag
);

logic [7:0] data0;
logic [7:0] data1;

RAM RAM
(
    .clock(clock),
    .data_write(data),
    .addr_write(addr_write),
    .write_enable(write_enable),
    .addr0_read(addr0),
    .addr1_read(addr1),
    .data0_read(data0),
    .data1_read(data1)
);

ALU ALU
(
    .in0(data0),
    .in1(data1),
    .select(select),
    .result(result),
    .zero_flag(zero_flag),
    .carry_flag(carry_flag)
);


endmodule
