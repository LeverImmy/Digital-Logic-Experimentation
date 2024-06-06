module elevator(
    input wire CLK,
    input wire RST,
    input wire Ctrl,
    input wire E_Button,
    output reg[6:0] Seg_7
    );
    
    reg [3:0] level;
    reg [30:0] cnt_total;
    
    always_ff @(posedge CLK or posedge RST) begin
        if (RST) begin // ���¸�λ���أ�����
            level <= 0;
            cnt_total <= 0;
        end else if (!E_Button) begin
            cnt_total <= cnt_total + 1;
            if (cnt_total == 999999) begin
                cnt_total <= 0;
                if (Ctrl) begin // ����
                    if (level < 5)
                        level <= level + 1;
                end else begin // �½�
                    if (level > 0)
                        level <= level - 1;
                end
            end
        end
    end
    
    decoder u (
        .sw(level + 1),
        .seg(Seg_7)
    );
    
endmodule
