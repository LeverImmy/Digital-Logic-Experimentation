module counter (
    input wire CLK,             // ��������
    input wire RST,             // ��λ����
    output reg [6:0] High,      // ��λ��������
    output reg [6:0] Low        // ��λ��������
    );

    reg [3:0] cnt_H;
    reg [3:0] cnt_L;

    always_ff @(posedge CLK or posedge RST) begin
        if (RST) begin // ���¸�λ���أ�����
            cnt_H <= 0;
            cnt_L <= 0;
        end else begin
            cnt_L <= cnt_L + 1;
            if (cnt_L == 9) begin // ��λ����λ�Ľ�λ
                cnt_H <= cnt_H + 1;
                cnt_L <= 0;
                if (cnt_H == 5) begin // �������
                    cnt_H <= 0;
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
