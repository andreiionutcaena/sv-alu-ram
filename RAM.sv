`timescale 1ns / 1ps

module RAM
(
    input logic        clock,
    input logic  [7:0] data_write,
    input logic  [3:0] addr_write,
    input logic        write_enable,
    input logic  [3:0] addr0_read,
    input logic  [3:0] addr1_read,
    output logic [7:0] data0_read,
    output logic [7:0] data1_read
);

logic [7:0] memory [0:15];

assign data0_read = memory[addr0_read];
assign data1_read = memory[addr1_read];

always_ff @(posedge clock)
begin
    if(write_enable == 1)
    begin
        memory[addr_write] <= data_write;
    end
end

endmodule
