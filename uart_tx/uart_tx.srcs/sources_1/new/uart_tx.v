module uart_tx(
    input                   I_clk           , //ϵͳ100MHzʱ��
    input                   I_rst           , //ϵͳȫ�ָ�λ
    input                   I_sending       , //�������ź�
    input                   I_bps_tx_clk    , //���ղ�����ʱ��
    input              [7:0] I_data          , //������ֽ�
    output              reg O_bps_tx_clk_en , //������ʱ��ʹ���ź�
    output              reg O_rs232_txd     , //���͵Ĵ������ݣ���Ӳ�����봮������
    output              reg O_done            //�����ź�
    );

    reg [3:0] R_state;
    
    ///////////////////////////////////////////////////////
    // ����:���շ���ʱ�ӣ���������λ����,
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
            O_bps_tx_clk_en <= 1'b1 ; //�򿪲�����ʱ��ʹ���ź�
            if (I_bps_tx_clk)
                begin
                    case (R_state)
                        4'd0 : //������ʼλ����������
                            begin
                                O_rs232_txd     <= 1'b0 ;
                                O_done          <= 1'b0 ;
                                R_state         <= R_state + 1'b1 ;
                            end
                        4'd1 : // ���͵�0λ
                            begin
                                O_rs232_txd     <= I_data[0] ;
                                O_done          <= 1'b0 ;
                                R_state             <= R_state + 1'b1   ;
                            end
                        4'd2 :// ���͵�1λ
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
                        4'd9 ://����ֹͣλ
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
                O_bps_tx_clk_en         <= 1'b0 ; //�������Ժ�رղ�����ʱ��ʹ���ź�
            end
    end
endmodule