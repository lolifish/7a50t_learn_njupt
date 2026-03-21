module polyphase_fir(
    input wire clk,
    input wire rst,
    input wire signed [15:0] din,
    output reg signed [35:0] dout,
    output wire clk_out_en
    );
    parameter N = 25;

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

    parameter M = 5;  // 分组数（降采样倍数）
    parameter L = 5;  // 每组包含的卷积单元数
    // 输入移位寄存器
    reg signed [15:0] shift_reg_in [0:N-1];
    integer i;
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            for (i = 0; i < N; i = i + 1)
                shift_reg_in[i] <= 16'sd0;
        end else begin
            for (i = N-1; i > 0; i = i - 1)
                shift_reg_in[i] <= shift_reg_in[i-1];
            shift_reg_in[0] <= din;
        end
    end

    // 分支索引计数器 (记录在第几个相位)
    reg [2:0] branch_idx;
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            branch_idx <= 0;
        end else begin
            if (branch_idx == M - 1) begin
                branch_idx <= 0;
            end else begin
                branch_idx <= branch_idx + 1;
            end
        end
    end

    assign clk_out_en = (branch_idx == M - 1);
    
    // 计算单个多相分支的输出
    // 在每个时钟周期，根据当前的branch_idx计算一个分支的结果
    reg signed [35:0] convolution_result;
    always @(*) begin
        convolution_result = 0;
        for (i = 0; i < L; i = i + 1) begin
            // k是分支索引, i是分支内系数索引
            convolution_result = convolution_result + shift_reg_in[0 + i * M] * coeff_rom[branch_idx + i * M];
        end
    end


reg signed [35:0] final_sum;
always @(posedge clk) begin
     if (branch_idx == 0)
         final_sum <= convolution_result;
     else
         final_sum <= final_sum + convolution_result;
end

always @(posedge clk or negedge rst) begin
    if (!rst)
        dout <= 0;
    else if (branch_idx == 0) // 当 branch_idx == M-1
        dout <= final_sum; // 此刻 final_sum 包含了所有 M 项的和
end

endmodule
