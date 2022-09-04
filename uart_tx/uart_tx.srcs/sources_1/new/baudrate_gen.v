
module baudrate_gen(
    input I_clk,
    input I_rst,
    input I_bps_tx_clk_en,
    output O_bps_tx_clk
    );
    
    parameter   C_BPS9600   = 10415,
                C_BPS19200  = 5207,
                C_BPS38400  = 2603,
                C_BPS57600  = 1301,
                C_BPS115200 = 867;
                
    parameter C_BPS = C_BPS115200;
    
    reg [12:0] R_bps_tx_cnt; //recieving clk counter, 2^13-1 is the upper bound for 10415(biggest counter required)
    always @(posedge I_clk or negedge I_rst)
    begin
        if(I_rst)
            R_bps_tx_cnt <= 13'b0; // initial when rst is pushed
        else if(I_bps_tx_clk_en == 1'b1)
        begin
            if(R_bps_tx_cnt >= C_BPS)
                R_bps_tx_cnt <= 13'b0;
            else
                R_bps_tx_cnt <= R_bps_tx_cnt + 1'b1;
        end
        else
            R_bps_tx_cnt <= 13'b0; // when ENable is closed, erase cnt to all 0
    end
    
    assign O_bps_tx_clk = (R_bps_tx_cnt == C_BPS >> 1'b1)? 1'b1 : 1'b0;
    
endmodule
