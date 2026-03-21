// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Jul  4 17:30:10 2025
// Host        : lolifish running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lolifish/Documents/projects/fir/fir.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7z020clg400-1I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [15:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "200" *) 
  (* C_READ_DEPTH_B = "200" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "200" *) 
  (* C_WRITE_DEPTH_B = "200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "azynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19872)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
