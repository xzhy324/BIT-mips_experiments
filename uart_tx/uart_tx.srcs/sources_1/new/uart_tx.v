module uart_tx(
    input                   I_clk           , //系统100MHz时钟
    input                   I_rst           , //系统全局复位
    input                   I_sending       , //发送中信号
    input                   I_bps_tx_clk    , //接收波特率时钟
    input              [7:0] I_data          , //输入的字节
    output              reg O_bps_tx_clk_en , //波特率时钟使能信号
    output              reg O_rs232_txd     , //发送的串行数据，在硬件上与串口相连
    output              reg O_done            //结束信号
    );

    reg [3:0] R_state;
    
    ///////////////////////////////////////////////////////
    // 功能:按照发送时钟，将数据逐位发送,
    ///////////////////////////////////////////////////////
    always @ (posedge I_clk or negedge I_rst)
    begin
        if (I_rst)
        begin
            O_done           <= 1'b0 ;
            R_state          <= 4'd0 ;
        end
        else if (I_sending && !O_done)
        begin
            O_bps_tx_clk_en <= 1'b1 ; //打开波特率时钟使能信号
            if (I_bps_tx_clk)
                begin
                    case (R_state)
                        4'd0 : //发送起始位，但不保存
                            begin
                                O_rs232_txd     <= 1'b0 ;
                                O_done          <= 1'b0 ;
                                R_state         <= R_state + 1'b1 ;
                            end
                        4'd1 : // 发送第0位
                            begin
                                O_rs232_txd     <= I_data[0] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd2 :// 发送第1位
                            begin
                                O_rs232_txd     <= I_data[1] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd3 :
                            begin
                                O_rs232_txd     <= I_data[2] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd4 :
                            begin
                                O_rs232_txd     <= I_data[3] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd5 :
                            begin
                                O_rs232_txd     <= I_data[4] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd6 :
                            begin
                                O_rs232_txd     <= I_data[5] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd7 :
                            begin
                                O_rs232_txd     <= I_data[6] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1       ;
                            end                                                                                                         
                        4'd8 :
                            begin
                                O_rs232_txd     <= I_data[7] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd9 ://发送停止位
                            begin
                                O_rs232_txd     <= 1'b1 ;
                                O_done          <= 1'b1 ;
                                R_state             <= 4'd0             ;
                            end

                        default:R_state <= 4'd0                         ;
                    endcase
                end
        end
        else
            begin
                O_done                  <= 1'b0 ;
                R_state                 <= 4'd0 ;
                O_bps_tx_clk_en         <= 1'b0 ; //发送完以后关闭波特率时钟使能信号
            end
    end
endmodule