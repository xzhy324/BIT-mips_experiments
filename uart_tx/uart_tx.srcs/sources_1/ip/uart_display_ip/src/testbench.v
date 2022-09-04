`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/31 21:34:32
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
    $display("testing light_show..");
    end
    
    always #10 clk=~clk;
    
    
    
    reg input_data;
    wire output_data;
    wire [6:0] led;
    wire [1:0] px;
    
    integer i;
    
    reg [7:0] data = 8'b10010011;
                  
    initial begin
        for(i=0;i<8;i=i+1)begin
            #10 input_data <= data[i];
        end
    end              
    
    uart_top uart_top0(
        .I_clk(clk),
        .I_rst_n(rst),
        .I_rs232_rxd(input_data),
        .O_rs232_txd(output_data),
        .O_led(led),
        .O_px(px)
    );
endmodule
