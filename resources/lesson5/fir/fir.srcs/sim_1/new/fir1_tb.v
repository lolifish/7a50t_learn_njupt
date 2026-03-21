`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2025 05:31:26 PM
// Design Name: 
// Module Name: fir1_tb
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


module fir1_tb();
    reg clk;
    reg rst;
    reg [7: 0] addra;
    wire [15: 0] douta;
    wire [35: 0] dout1;
    wire [35: 0] dout2;
    wire [35: 0] dout;
    wire [15: 0] in_post;
    wire clk_en;

    // 实例化ROM
    blk_mem_gen_0 uut (
        .clka(clk),
        .ena(rst),
        .addra(addra),
        .douta(douta)
    );

    initial begin
        clk = 0;
        rst = 0;
        # 100
        rst = 1;
    end
    always # 10 clk=~clk;

    always @(posedge clk or negedge rst) begin
        if (!rst) addra<=0;
        else begin
            if (addra>=199) addra<=0;
            else addra<=addra+1;
        end
    end


polyphase_fir poly_fir_filter(
    .clk ( clk ),
    .rst ( rst ),
    .din ( douta ),
    .dout  ( dout1  ),
    .clk_out_en(clk_en)
);
fir_filter u_fir_filter(
    .clk ( clk ),
    .rst ( rst ),
    .din ( douta ),
    .dout  ( dout2  )
);

assign in_post = dout1[35:20];

fir_filter u_fir_filter_post(
    .clk (clk_en),
    .rst ( rst ),
    .din ( in_post ),
    .dout  ( dout  )
);


endmodule
