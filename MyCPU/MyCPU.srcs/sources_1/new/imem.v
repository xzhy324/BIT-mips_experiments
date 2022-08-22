`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/21 16:48:33
// Design Name: 
// Module Name: imem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module imem(//read-only instruction-memory
    input clk,
    input rst,
    
    input [31:0] i_addr,
    output [31:0] o_data
    );
    
    //simulate mem
    reg [7:0] imem[255:0];
    
    //initialize imem from local txt file
    initial begin
        $readmemb("C:/mipstest/imem_init.txt",imem);
    end
    
    //read instruction from imem
    wire [7:0] addr = i_addr[7:0];
    assign o_data = {imem[addr+3],imem[addr+2],imem[addr+1],imem[addr]};

    
endmodule
