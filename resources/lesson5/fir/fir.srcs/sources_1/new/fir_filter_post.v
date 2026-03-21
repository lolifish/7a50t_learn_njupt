`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2025 01:56:17 PM
// Design Name: 
// Module Name: fir_filter_post
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fir_filter_post(
    input wire clk,
    input wire rst,
    input wire signed [15:0] din,
    output reg signed [35:0] dout
    );
    parameter N = 29;

    // FIR 系数（由 MATLAB 生成的 COE 文件导出）
    // 系数 ROM（Verilog-2001 写法）
    reg signed [15: 0] coeff_rom [0: N-1];
    initial begin
        coeff_rom[0]  = 16'shFEFA;
        coeff_rom[1]  = 16'shF90F;
        coeff_rom[2]  = 16'shF871;
        coeff_rom[3]  = 16'shF5A1;
        coeff_rom[4]  = 16'shF485;
        coeff_rom[5]  = 16'shF57F;
        coeff_rom[6]  = 16'shF968;
        coeff_rom[7]  = 16'sh009E;
        coeff_rom[8]  = 16'sh0AFC;
        coeff_rom[9]  = 16'sh17C8;
        coeff_rom[10] = 16'sh25BA;
        coeff_rom[11] = 16'sh3330;
        coeff_rom[12] = 16'sh3E6A;
        coeff_rom[13] = 16'sh45DD;
        coeff_rom[14] = 16'sh4878;
        coeff_rom[15] = 16'sh45DD;
        coeff_rom[16] = 16'sh3E6A;
        coeff_rom[17] = 16'sh3330;
        coeff_rom[18] = 16'sh25BA;
        coeff_rom[19] = 16'sh17C8;
        coeff_rom[20] = 16'sh0AFC;
        coeff_rom[21] = 16'sh009E;
        coeff_rom[22] = 16'shF968;
        coeff_rom[23] = 16'shF57F;
        coeff_rom[24] = 16'shF485;
        coeff_rom[25] = 16'shF5A1;
        coeff_rom[26] = 16'shF871;
        coeff_rom[27] = 16'shF90F;
        coeff_rom[28] = 16'shFEFA;
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
    always @(posedge clk or negedge rst) begin
        if (!rst) dout <= 0;
        else begin
            for (i = 0; i < N; i = i + 1)
                dout <= tmp;
        end
    end

endmodule
