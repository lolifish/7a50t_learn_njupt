module move(
input clk,
input [15:0]data,
input rst_n,
output reg dout
);

reg [3:0]bit_cnt;
reg [15:0]data_buf;
reg work_flag;

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        dout <= 0;
        bit_cnt <= 15;
        data_buf <= data;
        work_flag <= 1;
    end else begin
        if(work_flag)begin
            dout <= data_buf[15];
            if(bit_cnt > 0)begin
                bit_cnt <= bit_cnt - 1;
                data_buf <= data_buf << 1;
            end else 
                work_flag <= 0;
        end else begin
            dout <= 0;
        end
    end
end

endmodule