`timescale 1ns / 1ps

module tb();

logic  [7:0] data;
logic        clock;
logic        write_enable;
logic  [3:0] addr_write;
logic  [3:0] addr0;
logic  [3:0] addr1;
logic  [2:0] select;
logic  [7:0] result;
logic        zero_flag;
logic        carry_flag;

TOP DUT
(
    .data(data),
    .clock(clock),
    .write_enable(write_enable),
    .addr_write(addr_write),
    .addr0(addr0),
    .addr1(addr1),
    .select(select),
    .result(result),
    .zero_flag(zero_flag),
    .carry_flag(carry_flag)
);

initial
begin
    clock = 0;
    forever #10 clock = ~clock;
end

initial
begin
data=0;              
write_enable=0;
addr_write=0;
addr0=0;       
addr1=0;       
select=0;      

repeat(10) @(posedge clock);
@(negedge clock);
write_enable = 1;
data = 100;
addr_write = 1;

repeat(10) @(posedge clock);
@(negedge clock);
data = 50;
addr_write = 2;

repeat(10) @(posedge clock);
@(negedge clock);
data = 150;
addr_write = 3;

repeat(10) @(posedge clock);
@(negedge clock);
data = 250;
addr_write = 4;

repeat(10) @(posedge clock);
write_enable = 0;

repeat(10) @(posedge clock);
addr0 = 4;
addr1 = 2;

repeat(10) @(posedge clock);
select = 1;

repeat(10) @(posedge clock);
select = 2;

repeat(10) @(posedge clock);
select = 3;

repeat(10) @(posedge clock);
select = 4;

repeat(10) @(posedge clock);
$stop();
end

endmodule