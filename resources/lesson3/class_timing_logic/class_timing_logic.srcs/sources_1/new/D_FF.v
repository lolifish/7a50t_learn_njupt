module dff(
input clk,
input D,
input rst_n,
output reg Q
);

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)
        Q <= 0;
    else 
        Q <= D;
end


endmodule