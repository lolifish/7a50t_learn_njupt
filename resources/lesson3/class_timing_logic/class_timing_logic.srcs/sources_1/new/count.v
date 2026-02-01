module count_div(
input clk,
input rst_n,
input wire [15:0] cnt_max,
output reg [15:0] cnt,
output reg div
);

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        cnt <= 0;
        div <= 0;
    end else begin
        if(cnt < cnt_max-1)begin
            cnt <= cnt + 1;
        end else begin
            cnt <= 0;
        end
        if(cnt < cnt_max/2)begin
            div <= 1;
        end else begin
            div <= 0;
        end
    end
end

endmodule