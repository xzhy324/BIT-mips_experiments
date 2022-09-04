`timescale 1ns / 1ps

module dmem(
    input clk,
    input rst,
    input we, //we=0,read-only ; we=1 read&write
    
    input [31:0] _addr,
    input [31:0] w_data, //data to write into dmem, which united in word for instr 'sw'
    
    output [31:0] r_data //data from dmem
    );
    
    //simulate mem
    reg [7:0] dmem [255:0];
    
    //initialize dmem from local txt file
    initial begin
        $readmemb("C:/projects/BIT-MIPS/bitmips_experiments/test/singletest/dmem_init.txt",dmem);
    end
    
    //read data from dmem
    wire [7:0] addr = _addr[7:0];
    assign r_data = {dmem[addr+3],dmem[addr+2],dmem[addr+1],dmem[addr]};
    
    //write dmem if required(we=1)
    always @(posedge clk) begin
        if(we) begin
            //little-endian as experiments required
            dmem[addr] <= w_data[7:0];
            dmem[addr+1] <= w_data[15:8];
            dmem[addr+2] <= w_data[23:16];
            dmem[addr+3] <= w_data[31:24];
        end
    end
    
endmodule
