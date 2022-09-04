`timescale 1ns / 1ps

module regfile(
    input clk,
    input rst,
    input reg_we, //write enable signal. :: =1,write back ; =0 read
    
    input [4:0]rs_addr,//source register for reading
    input [4:0]rt_addr,//target register for reading
    input [4:0]wb_addr,//write-back register address
    input [31:0]wb_data,//write-back register data
    
    output [31:0] rs_data,//data from source register
    output [31:0] rt_data//data from target register
    );
    
    //registers
    reg [31:0] regs[31:0];
    
    //initialize regfiles whenever rst button is pushed.
    integer i;
    always @(posedge clk or negedge rst)begin
        if(!rst)begin
            for(i=0;i<32;i=i+1) regs[i] <= 32'b0;
        end
        else if(reg_we) regs[wb_addr] <= wb_data;
    end
    
    //reading 
    assign rs_data = (rs_addr==0)? 32'b0: regs[rs_addr];
    assign rt_data = (rt_addr==0)? 32'b0: regs[rt_addr];
   
    
endmodule
