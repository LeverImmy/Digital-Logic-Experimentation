// ʹ��ʱ��ģ���ϵ� 1M ʱ�ӣ����������ĳ����ʹ�ÿ���ģ���ϵĲ������ؿ����������/��ͣ

module counter_1_2 (
    input wire CLK,             // ��������
    input wire RST,             // ��λ����
    input wire Switch,          // ����/��ͣ����
    output reg [6:0] High,      // ��λ��������
    output reg [6:0] Low        // ��λ��������
    );

    reg [3:0] cnt_H;
    reg [3:0] cnt_L;
    reg [30:0] cnt_total;

    always_ff @(posedge CLK or posedge RST) begin
        if (RST) begin // ���¸�λ���أ�����
            cnt_H <= 0;
            cnt_L <= 0;
            cnt_total <= 0;
        end else if (Switch) begin // �������
            cnt_total <= cnt_total + 1;
            if (cnt_total == 999999) begin // 1MHz -> 1Hz �ļ���ת��
                cnt_L <= cnt_L + 1;
                cnt_total <= 0;
                if (cnt_L == 9) begin // ��λ����λ�Ľ�λ
                    cnt_H <= cnt_H + 1;
                    cnt_L <= 0;
                    if (cnt_H == 5) begin // �������
                        cnt_H <= 0;
                    end
                end
            end
        end
    end

    decoder u1 (
        .sw(cnt_H),
        .seg(High)
    );

    decoder u2 (
        .sw(cnt_L),
        .seg(Low)
    );
endmodule
