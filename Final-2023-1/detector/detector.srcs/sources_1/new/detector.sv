// ʹ��ʱ��ģ���ϵ� 1M ʱ�ӣ����������ĳ����ʹ�ÿ���ģ���ϵĲ������ؿ����������/��ͣ

module detector (
    input wire CLK,                 // ���濪��
    input wire RST,                 // ��λ����
    input wire Mode,                // ģʽ����
    input wire [5:0] Input,         // ��������
    output reg [6:0] Display,       // ��λ��������
    output reg LED1,
    output reg LED2
    );

    reg [5:0] seq;
    reg [30:0] cnt_total;

    always_ff @(posedge CLK or posedge RST) begin
        if (Mode) begin // ��������ģʽ
            if (RST) begin // ���¸�λ���أ�����
                seq <= 6'b111111;
            end else if (CLK) begin
                seq <= Input;
            end

        end else begin // ������ʾģʽ
            if (CLK) begin
                cnt_total <= cnt_total + 1;
                LED1 <= seq[cnt_total];
            end

        end
    end

endmodule
