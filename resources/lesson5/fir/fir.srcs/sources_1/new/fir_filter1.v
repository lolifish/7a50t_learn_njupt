// fir_filter.v
// 25 阶 FIR 滤波器，使用 16 位定点系数，32 位输出
// 适用于 FPGA 或 ASIC 实现

module fir_filter(
    input wire clk,
    input wire rst,
    input wire signed [15:0] din,
    output reg signed [35:0] dout
    );
    parameter N = 25;

    // 系数
    reg signed [15: 0] coeff_rom [0: N-1];
    initial begin
        coeff_rom[0]  = 16'shF96C;
        coeff_rom[1]  = 16'shFBA7;
        coeff_rom[2]  = 16'shFCAC;
        coeff_rom[3]  = 16'sh006D;
        coeff_rom[4]  = 16'sh07A9;
        coeff_rom[5]  = 16'sh12B2;
        coeff_rom[6]  = 16'sh2146;
        coeff_rom[7]  = 16'sh326E;
        coeff_rom[8]  = 16'sh449B;
        coeff_rom[9]  = 16'sh55D5;
        coeff_rom[10] = 16'sh6409;
        coeff_rom[11] = 16'sh6D66;
        coeff_rom[12] = 16'sh70AA;
        coeff_rom[13] = 16'sh6D66;
        coeff_rom[14] = 16'sh6409;
        coeff_rom[15] = 16'sh55D5;
        coeff_rom[16] = 16'sh449B;
        coeff_rom[17] = 16'sh326E;
        coeff_rom[18] = 16'sh2146;
        coeff_rom[19] = 16'sh12B2;
        coeff_rom[20] = 16'sh07A9;
        coeff_rom[21] = 16'sh006D;
        coeff_rom[22] = 16'shFCAC;
        coeff_rom[23] = 16'shFBA7;
        coeff_rom[24] = 16'shF96C;
    end
    integer i;

    // 移位寄存器
    reg signed [15:0] shift_reg [0:N-1];
    always @(posedge clk or negedge rst) begin
        // 复位
        if (!rst) begin
            for (i = 0; i < N; i = i + 1)
                shift_reg[i] <= 16'sd0;
        // 输入移位
        end else begin
            for (i = N-1; i > 0; i = i - 1)
                shift_reg[i] <= shift_reg[i-1];
            shift_reg[0] <= din;
        end
    end

    // 线性卷积
    reg signed [35:0] tmp;
    always @(*) begin
        tmp = 0;
        for (i = 0; i < N; i = i + 1)
            tmp = tmp + shift_reg[i] * coeff_rom[i];
    end

    // 输出
    always @(posedge clk or negedge rst) begin
        if (!rst) dout <= 0;
        else begin
            for (i = 0; i < N; i = i + 1)
                dout <= tmp;
        end
    end

endmodule
