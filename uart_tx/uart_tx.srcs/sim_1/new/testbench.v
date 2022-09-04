`timescale 1ns / 1ps

module testbench(

    );
    
    reg clk,rst;
    
    initial begin
        clk=0;
        #5 rst=1;
        #10
        rst=0;
    $display("testing uart_tx..");
    end
    
    always #10 clk=~clk;
    
    
    wire [6:0] led;
    wire [1:0] px;
    
    reg [31:0] data = 32'hffffac04;
                        
    uart_top uart_top0(
        .I_clk(clk),
        .I_rst(rst),
        .I_addr(32'haaaaffff),
        .I_data(data),
        .O_led(led),
        .O_px(px)
    );
endmodule
