module detector (
    input wire CLK,                 // ���濪��
    input wire RST,                 // ��λ����
    input wire Mode,                // ģʽ����
    input wire [5:0] Input,         // ��������
    output reg [2:0] Display,       // ��������
    output reg LED1,
    output reg LED2
    );
    
    reg [5:0] seq;
    reg [30:0] cnt_total;
    
    always_ff @(posedge CLK or posedge RST) begin
        if (RST) begin // ���¸�λ���أ�����
            seq <= 31;
            cnt_total <= 0;
            LED1 <= 0;
            LED2 <= 0;
        end else begin
            if (Mode) begin // ��������ģʽ
                seq <= Input;
                cnt_total <= 0;
                LED1 <= 0;
                LED2 <= 0;
            end else begin // ������ʾģʽ
                if (cnt_total < 6) begin
                    LED1 = seq[cnt_total];
                    if (cnt_total >= 2 && seq[cnt_total - 2] == 1 && seq[cnt_total - 1] == 1 && seq[cnt_total] == 1) begin
                        Display <= cnt_total;
                        LED2 <= 1;
                    end
                    cnt_total = cnt_total + 1;
                end else if (cnt_total == 6) begin
                    LED1 <= 0;
                end
            end
        end
    end

endmodule
