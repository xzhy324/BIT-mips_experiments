`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/22 12:38:38
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    reg clk,rst;
    initial begin
        clk=0;
        rst=0;
        #10
        rst = 1;
    $display("MyCPU Running..");
    end
    
    always #10 clk=~clk;
    
    cpu_top cpu_top(
        .clk(clk),
        .rst(rst)
    );
    
endmodule
