`timescale 1ns / 1ps

module imem(//read-only instruction-memory
    input clk,
    input rst,
    
    input [31:0] i_addr,
    output [31:0] o_data
    );
    
    //simulate mem
    reg [31:0] imem[255:0];
    
    //initialize imem from local txt file
    initial begin
        $readmemh("C:/projects/BIT-MIPS/bitmips_experiments/test/singletest/extra_test.hex",imem);
    end
    
    //read instruction from imem
    wire [7:0] addr = i_addr[9:2];
    assign o_data = imem[addr];

    
endmodule
