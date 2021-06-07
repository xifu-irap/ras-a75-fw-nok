// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Apr  9 12:21:15 2021
// Host        : PC-NOEMIE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ATHENA_X-IFU/Documents/Noemie2020/solution_commande/RAS_simu/ip/fifo_pipeout/fifo_pipeout_sim_netlist.v
// Design      : fifo_pipeout
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_pipeout,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module fifo_pipeout
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [12:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [12:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [12:0]din;
  wire [12:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "13" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "13" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "2kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2045" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2044" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  fifo_pipeout_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module fifo_pipeout_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module fifo_pipeout_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_pipeout_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_pipeout_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module fifo_pipeout_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module fifo_pipeout_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module fifo_pipeout_clk_x_pntrs
   (v1_reg,
    RD_PNTR_WR,
    v1_reg_0,
    v1_reg_1,
    WR_PNTR_RD,
    v1_reg_2,
    Q,
    \gmux.gm[4].gms.ms ,
    \src_gray_ff_reg[10] ,
    \gmux.gm[5].gms.ms ,
    wr_clk,
    \src_gray_ff_reg[10]_0 ,
    rd_clk,
    RD_PNTR);
  output [4:0]v1_reg;
  output [0:0]RD_PNTR_WR;
  output [4:0]v1_reg_0;
  output [0:0]v1_reg_1;
  output [9:0]WR_PNTR_RD;
  output [0:0]v1_reg_2;
  input [9:0]Q;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [4:0]\src_gray_ff_reg[10] ;
  input [0:0]\gmux.gm[5].gms.ms ;
  input wr_clk;
  input [10:0]\src_gray_ff_reg[10]_0 ;
  input rd_clk;
  input [5:0]RD_PNTR;

  wire [9:0]Q;
  wire [5:0]RD_PNTR;
  wire [0:0]RD_PNTR_WR;
  wire [9:0]WR_PNTR_RD;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [0:0]\gmux.gm[5].gms.ms ;
  wire rd_clk;
  wire [9:0]rd_pntr_wr;
  wire [4:0]\src_gray_ff_reg[10] ;
  wire [10:0]\src_gray_ff_reg[10]_0 ;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [0:0]v1_reg_1;
  wire [0:0]v1_reg_2;
  wire wr_clk;
  wire [10:10]wr_pntr_rd;

  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(rd_pntr_wr[0]),
        .I1(Q[0]),
        .I2(rd_pntr_wr[1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_wr[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(rd_pntr_wr[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(rd_pntr_wr[2]),
        .I1(Q[2]),
        .I2(rd_pntr_wr[3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_wr[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(rd_pntr_wr[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(rd_pntr_wr[4]),
        .I1(Q[4]),
        .I2(rd_pntr_wr[5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_wr[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(rd_pntr_wr[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(rd_pntr_wr[6]),
        .I1(Q[6]),
        .I2(rd_pntr_wr[7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_wr[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(rd_pntr_wr[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(rd_pntr_wr[8]),
        .I1(Q[8]),
        .I2(rd_pntr_wr[9]),
        .I3(Q[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_wr[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(rd_pntr_wr[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg_0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1__1 
       (.I0(wr_pntr_rd),
        .I1(\src_gray_ff_reg[10] [4]),
        .O(v1_reg_1));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1__2 
       (.I0(wr_pntr_rd),
        .I1(\gmux.gm[5].gms.ms ),
        .O(v1_reg_2));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_pipeout_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin({RD_PNTR_WR,rd_pntr_wr}),
        .src_clk(rd_clk),
        .src_in_bin({\src_gray_ff_reg[10] ,RD_PNTR}));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "11" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_pipeout_xpm_cdc_gray__2 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin({wr_pntr_rd,WR_PNTR_RD}),
        .src_clk(wr_clk),
        .src_in_bin(\src_gray_ff_reg[10]_0 ));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_pipeout_compare
   (comp1,
    \gmux.gm[5].gms.ms_0 ,
    v1_reg);
  output comp1;
  input [4:0]\gmux.gm[5].gms.ms_0 ;
  input [0:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire [4:0]\gmux.gm[5].gms.ms_0 ;
  wire [0:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[5].gms.ms_0 [3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg,\gmux.gm[5].gms.ms_0 [4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_pipeout_compare_0
   (ram_full_fb_i_reg,
    \gmux.gm[5].gms.ms_0 ,
    v1_reg_0,
    out,
    wr_en,
    comp1,
    ram_full_fb_i_reg_0);
  output ram_full_fb_i_reg;
  input [4:0]\gmux.gm[5].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input out;
  input wr_en;
  input comp1;
  input ram_full_fb_i_reg_0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire comp2;
  wire [4:0]\gmux.gm[5].gms.ms_0 ;
  wire out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire [0:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[5].gms.ms_0 [3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp2,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg_0,\gmux.gm[5].gms.ms_0 [4]}));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    ram_full_i_i_1
       (.I0(comp2),
        .I1(out),
        .I2(wr_en),
        .I3(comp1),
        .I4(ram_full_fb_i_reg_0),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_pipeout_compare_1
   (rd_en_0,
    v1_reg,
    ram_empty_fb_i_reg,
    rd_en,
    out,
    comp1);
  output rd_en_0;
  input [4:0]v1_reg;
  input [0:0]ram_empty_fb_i_reg;
  input rd_en;
  input out;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp0;
  wire comp1;
  wire out;
  wire [0:0]ram_empty_fb_i_reg;
  wire rd_en;
  wire rd_en_0;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp0,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],ram_empty_fb_i_reg,v1_reg[4]}));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(out),
        .I3(comp1),
        .O(rd_en_0));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fifo_pipeout_compare_2
   (comp1,
    v1_reg_0,
    ram_empty_fb_i_reg);
  output comp1;
  input [4:0]v1_reg_0;
  input [0:0]ram_empty_fb_i_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire [0:0]ram_empty_fb_i_reg;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],ram_empty_fb_i_reg,v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module fifo_pipeout_dmem
   (dout,
    wr_clk,
    din,
    \gpr1.dout_i[2]_i_12_0 ,
    \gpr1.dout_i_reg[12]_0 ,
    Q,
    \gpr1.dout_i[2]_i_12_1 ,
    \gpr1.dout_i[2]_i_12_2 ,
    \gpr1.dout_i[2]_i_12_3 ,
    \gpr1.dout_i[2]_i_13_0 ,
    \gpr1.dout_i[2]_i_13_1 ,
    \gpr1.dout_i[2]_i_13_2 ,
    \gpr1.dout_i[2]_i_13_3 ,
    \gpr1.dout_i[2]_i_10_0 ,
    \gpr1.dout_i[2]_i_10_1 ,
    \gpr1.dout_i[2]_i_10_2 ,
    \gpr1.dout_i[2]_i_10_3 ,
    \gpr1.dout_i[2]_i_11_0 ,
    \gpr1.dout_i[2]_i_11_1 ,
    \gpr1.dout_i[2]_i_11_2 ,
    \gpr1.dout_i[2]_i_11_3 ,
    \gpr1.dout_i[2]_i_8_0 ,
    \gpr1.dout_i[2]_i_8_1 ,
    \gpr1.dout_i[2]_i_8_2 ,
    \gpr1.dout_i[2]_i_8_3 ,
    \gpr1.dout_i[2]_i_9_0 ,
    \gpr1.dout_i[2]_i_9_1 ,
    \gpr1.dout_i[2]_i_9_2 ,
    \gpr1.dout_i[2]_i_9_3 ,
    \gpr1.dout_i[2]_i_6_0 ,
    \gpr1.dout_i[2]_i_6_1 ,
    \gpr1.dout_i[2]_i_6_2 ,
    \gpr1.dout_i[2]_i_6_3 ,
    \gpr1.dout_i[2]_i_7_0 ,
    \gpr1.dout_i[2]_i_7_1 ,
    \gpr1.dout_i[2]_i_7_2 ,
    \gpr1.dout_i[2]_i_7_3 ,
    ADDRC,
    \gpr1.dout_i[8]_i_7_0 ,
    \gpr1.dout_i[11]_i_7_0 ,
    RD_PNTR,
    E,
    rd_clk,
    AR);
  output [12:0]dout;
  input wr_clk;
  input [12:0]din;
  input \gpr1.dout_i[2]_i_12_0 ;
  input [10:0]\gpr1.dout_i_reg[12]_0 ;
  input [5:0]Q;
  input \gpr1.dout_i[2]_i_12_1 ;
  input \gpr1.dout_i[2]_i_12_2 ;
  input \gpr1.dout_i[2]_i_12_3 ;
  input \gpr1.dout_i[2]_i_13_0 ;
  input \gpr1.dout_i[2]_i_13_1 ;
  input \gpr1.dout_i[2]_i_13_2 ;
  input \gpr1.dout_i[2]_i_13_3 ;
  input \gpr1.dout_i[2]_i_10_0 ;
  input \gpr1.dout_i[2]_i_10_1 ;
  input \gpr1.dout_i[2]_i_10_2 ;
  input \gpr1.dout_i[2]_i_10_3 ;
  input \gpr1.dout_i[2]_i_11_0 ;
  input \gpr1.dout_i[2]_i_11_1 ;
  input \gpr1.dout_i[2]_i_11_2 ;
  input \gpr1.dout_i[2]_i_11_3 ;
  input \gpr1.dout_i[2]_i_8_0 ;
  input \gpr1.dout_i[2]_i_8_1 ;
  input \gpr1.dout_i[2]_i_8_2 ;
  input \gpr1.dout_i[2]_i_8_3 ;
  input \gpr1.dout_i[2]_i_9_0 ;
  input \gpr1.dout_i[2]_i_9_1 ;
  input \gpr1.dout_i[2]_i_9_2 ;
  input \gpr1.dout_i[2]_i_9_3 ;
  input \gpr1.dout_i[2]_i_6_0 ;
  input \gpr1.dout_i[2]_i_6_1 ;
  input \gpr1.dout_i[2]_i_6_2 ;
  input \gpr1.dout_i[2]_i_6_3 ;
  input \gpr1.dout_i[2]_i_7_0 ;
  input \gpr1.dout_i[2]_i_7_1 ;
  input \gpr1.dout_i[2]_i_7_2 ;
  input \gpr1.dout_i[2]_i_7_3 ;
  input [5:0]ADDRC;
  input [5:0]\gpr1.dout_i[8]_i_7_0 ;
  input [5:0]\gpr1.dout_i[11]_i_7_0 ;
  input [5:0]RD_PNTR;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRC;
  wire [0:0]AR;
  wire [0:0]E;
  wire [5:0]Q;
  wire RAM_reg_0_63_0_2_n_0;
  wire RAM_reg_0_63_0_2_n_1;
  wire RAM_reg_0_63_0_2_n_2;
  wire RAM_reg_0_63_12_12_n_0;
  wire RAM_reg_0_63_3_5_n_0;
  wire RAM_reg_0_63_3_5_n_1;
  wire RAM_reg_0_63_3_5_n_2;
  wire RAM_reg_0_63_6_8_n_0;
  wire RAM_reg_0_63_6_8_n_1;
  wire RAM_reg_0_63_6_8_n_2;
  wire RAM_reg_0_63_9_11_n_0;
  wire RAM_reg_0_63_9_11_n_1;
  wire RAM_reg_0_63_9_11_n_2;
  wire RAM_reg_1024_1087_0_2_n_0;
  wire RAM_reg_1024_1087_0_2_n_1;
  wire RAM_reg_1024_1087_0_2_n_2;
  wire RAM_reg_1024_1087_12_12_n_0;
  wire RAM_reg_1024_1087_3_5_n_0;
  wire RAM_reg_1024_1087_3_5_n_1;
  wire RAM_reg_1024_1087_3_5_n_2;
  wire RAM_reg_1024_1087_6_8_n_0;
  wire RAM_reg_1024_1087_6_8_n_1;
  wire RAM_reg_1024_1087_6_8_n_2;
  wire RAM_reg_1024_1087_9_11_n_0;
  wire RAM_reg_1024_1087_9_11_n_1;
  wire RAM_reg_1024_1087_9_11_n_2;
  wire RAM_reg_1088_1151_0_2_n_0;
  wire RAM_reg_1088_1151_0_2_n_1;
  wire RAM_reg_1088_1151_0_2_n_2;
  wire RAM_reg_1088_1151_12_12_n_0;
  wire RAM_reg_1088_1151_3_5_n_0;
  wire RAM_reg_1088_1151_3_5_n_1;
  wire RAM_reg_1088_1151_3_5_n_2;
  wire RAM_reg_1088_1151_6_8_n_0;
  wire RAM_reg_1088_1151_6_8_n_1;
  wire RAM_reg_1088_1151_6_8_n_2;
  wire RAM_reg_1088_1151_9_11_n_0;
  wire RAM_reg_1088_1151_9_11_n_1;
  wire RAM_reg_1088_1151_9_11_n_2;
  wire RAM_reg_1152_1215_0_2_n_0;
  wire RAM_reg_1152_1215_0_2_n_1;
  wire RAM_reg_1152_1215_0_2_n_2;
  wire RAM_reg_1152_1215_12_12_n_0;
  wire RAM_reg_1152_1215_3_5_n_0;
  wire RAM_reg_1152_1215_3_5_n_1;
  wire RAM_reg_1152_1215_3_5_n_2;
  wire RAM_reg_1152_1215_6_8_n_0;
  wire RAM_reg_1152_1215_6_8_n_1;
  wire RAM_reg_1152_1215_6_8_n_2;
  wire RAM_reg_1152_1215_9_11_n_0;
  wire RAM_reg_1152_1215_9_11_n_1;
  wire RAM_reg_1152_1215_9_11_n_2;
  wire RAM_reg_1216_1279_0_2_n_0;
  wire RAM_reg_1216_1279_0_2_n_1;
  wire RAM_reg_1216_1279_0_2_n_2;
  wire RAM_reg_1216_1279_12_12_n_0;
  wire RAM_reg_1216_1279_3_5_n_0;
  wire RAM_reg_1216_1279_3_5_n_1;
  wire RAM_reg_1216_1279_3_5_n_2;
  wire RAM_reg_1216_1279_6_8_n_0;
  wire RAM_reg_1216_1279_6_8_n_1;
  wire RAM_reg_1216_1279_6_8_n_2;
  wire RAM_reg_1216_1279_9_11_n_0;
  wire RAM_reg_1216_1279_9_11_n_1;
  wire RAM_reg_1216_1279_9_11_n_2;
  wire RAM_reg_1280_1343_0_2_n_0;
  wire RAM_reg_1280_1343_0_2_n_1;
  wire RAM_reg_1280_1343_0_2_n_2;
  wire RAM_reg_1280_1343_12_12_n_0;
  wire RAM_reg_1280_1343_3_5_n_0;
  wire RAM_reg_1280_1343_3_5_n_1;
  wire RAM_reg_1280_1343_3_5_n_2;
  wire RAM_reg_1280_1343_6_8_n_0;
  wire RAM_reg_1280_1343_6_8_n_1;
  wire RAM_reg_1280_1343_6_8_n_2;
  wire RAM_reg_1280_1343_9_11_n_0;
  wire RAM_reg_1280_1343_9_11_n_1;
  wire RAM_reg_1280_1343_9_11_n_2;
  wire RAM_reg_128_191_0_2_n_0;
  wire RAM_reg_128_191_0_2_n_1;
  wire RAM_reg_128_191_0_2_n_2;
  wire RAM_reg_128_191_12_12_n_0;
  wire RAM_reg_128_191_3_5_n_0;
  wire RAM_reg_128_191_3_5_n_1;
  wire RAM_reg_128_191_3_5_n_2;
  wire RAM_reg_128_191_6_8_n_0;
  wire RAM_reg_128_191_6_8_n_1;
  wire RAM_reg_128_191_6_8_n_2;
  wire RAM_reg_128_191_9_11_n_0;
  wire RAM_reg_128_191_9_11_n_1;
  wire RAM_reg_128_191_9_11_n_2;
  wire RAM_reg_1344_1407_0_2_n_0;
  wire RAM_reg_1344_1407_0_2_n_1;
  wire RAM_reg_1344_1407_0_2_n_2;
  wire RAM_reg_1344_1407_12_12_n_0;
  wire RAM_reg_1344_1407_3_5_n_0;
  wire RAM_reg_1344_1407_3_5_n_1;
  wire RAM_reg_1344_1407_3_5_n_2;
  wire RAM_reg_1344_1407_6_8_n_0;
  wire RAM_reg_1344_1407_6_8_n_1;
  wire RAM_reg_1344_1407_6_8_n_2;
  wire RAM_reg_1344_1407_9_11_n_0;
  wire RAM_reg_1344_1407_9_11_n_1;
  wire RAM_reg_1344_1407_9_11_n_2;
  wire RAM_reg_1408_1471_0_2_n_0;
  wire RAM_reg_1408_1471_0_2_n_1;
  wire RAM_reg_1408_1471_0_2_n_2;
  wire RAM_reg_1408_1471_12_12_n_0;
  wire RAM_reg_1408_1471_3_5_n_0;
  wire RAM_reg_1408_1471_3_5_n_1;
  wire RAM_reg_1408_1471_3_5_n_2;
  wire RAM_reg_1408_1471_6_8_n_0;
  wire RAM_reg_1408_1471_6_8_n_1;
  wire RAM_reg_1408_1471_6_8_n_2;
  wire RAM_reg_1408_1471_9_11_n_0;
  wire RAM_reg_1408_1471_9_11_n_1;
  wire RAM_reg_1408_1471_9_11_n_2;
  wire RAM_reg_1472_1535_0_2_n_0;
  wire RAM_reg_1472_1535_0_2_n_1;
  wire RAM_reg_1472_1535_0_2_n_2;
  wire RAM_reg_1472_1535_12_12_n_0;
  wire RAM_reg_1472_1535_3_5_n_0;
  wire RAM_reg_1472_1535_3_5_n_1;
  wire RAM_reg_1472_1535_3_5_n_2;
  wire RAM_reg_1472_1535_6_8_n_0;
  wire RAM_reg_1472_1535_6_8_n_1;
  wire RAM_reg_1472_1535_6_8_n_2;
  wire RAM_reg_1472_1535_9_11_n_0;
  wire RAM_reg_1472_1535_9_11_n_1;
  wire RAM_reg_1472_1535_9_11_n_2;
  wire RAM_reg_1536_1599_0_2_n_0;
  wire RAM_reg_1536_1599_0_2_n_1;
  wire RAM_reg_1536_1599_0_2_n_2;
  wire RAM_reg_1536_1599_12_12_n_0;
  wire RAM_reg_1536_1599_3_5_n_0;
  wire RAM_reg_1536_1599_3_5_n_1;
  wire RAM_reg_1536_1599_3_5_n_2;
  wire RAM_reg_1536_1599_6_8_n_0;
  wire RAM_reg_1536_1599_6_8_n_1;
  wire RAM_reg_1536_1599_6_8_n_2;
  wire RAM_reg_1536_1599_9_11_n_0;
  wire RAM_reg_1536_1599_9_11_n_1;
  wire RAM_reg_1536_1599_9_11_n_2;
  wire RAM_reg_1600_1663_0_2_n_0;
  wire RAM_reg_1600_1663_0_2_n_1;
  wire RAM_reg_1600_1663_0_2_n_2;
  wire RAM_reg_1600_1663_12_12_n_0;
  wire RAM_reg_1600_1663_3_5_n_0;
  wire RAM_reg_1600_1663_3_5_n_1;
  wire RAM_reg_1600_1663_3_5_n_2;
  wire RAM_reg_1600_1663_6_8_n_0;
  wire RAM_reg_1600_1663_6_8_n_1;
  wire RAM_reg_1600_1663_6_8_n_2;
  wire RAM_reg_1600_1663_9_11_n_0;
  wire RAM_reg_1600_1663_9_11_n_1;
  wire RAM_reg_1600_1663_9_11_n_2;
  wire RAM_reg_1664_1727_0_2_n_0;
  wire RAM_reg_1664_1727_0_2_n_1;
  wire RAM_reg_1664_1727_0_2_n_2;
  wire RAM_reg_1664_1727_12_12_n_0;
  wire RAM_reg_1664_1727_3_5_n_0;
  wire RAM_reg_1664_1727_3_5_n_1;
  wire RAM_reg_1664_1727_3_5_n_2;
  wire RAM_reg_1664_1727_6_8_n_0;
  wire RAM_reg_1664_1727_6_8_n_1;
  wire RAM_reg_1664_1727_6_8_n_2;
  wire RAM_reg_1664_1727_9_11_n_0;
  wire RAM_reg_1664_1727_9_11_n_1;
  wire RAM_reg_1664_1727_9_11_n_2;
  wire RAM_reg_1728_1791_0_2_n_0;
  wire RAM_reg_1728_1791_0_2_n_1;
  wire RAM_reg_1728_1791_0_2_n_2;
  wire RAM_reg_1728_1791_12_12_n_0;
  wire RAM_reg_1728_1791_3_5_n_0;
  wire RAM_reg_1728_1791_3_5_n_1;
  wire RAM_reg_1728_1791_3_5_n_2;
  wire RAM_reg_1728_1791_6_8_n_0;
  wire RAM_reg_1728_1791_6_8_n_1;
  wire RAM_reg_1728_1791_6_8_n_2;
  wire RAM_reg_1728_1791_9_11_n_0;
  wire RAM_reg_1728_1791_9_11_n_1;
  wire RAM_reg_1728_1791_9_11_n_2;
  wire RAM_reg_1792_1855_0_2_n_0;
  wire RAM_reg_1792_1855_0_2_n_1;
  wire RAM_reg_1792_1855_0_2_n_2;
  wire RAM_reg_1792_1855_12_12_n_0;
  wire RAM_reg_1792_1855_3_5_n_0;
  wire RAM_reg_1792_1855_3_5_n_1;
  wire RAM_reg_1792_1855_3_5_n_2;
  wire RAM_reg_1792_1855_6_8_n_0;
  wire RAM_reg_1792_1855_6_8_n_1;
  wire RAM_reg_1792_1855_6_8_n_2;
  wire RAM_reg_1792_1855_9_11_n_0;
  wire RAM_reg_1792_1855_9_11_n_1;
  wire RAM_reg_1792_1855_9_11_n_2;
  wire RAM_reg_1856_1919_0_2_n_0;
  wire RAM_reg_1856_1919_0_2_n_1;
  wire RAM_reg_1856_1919_0_2_n_2;
  wire RAM_reg_1856_1919_12_12_n_0;
  wire RAM_reg_1856_1919_3_5_n_0;
  wire RAM_reg_1856_1919_3_5_n_1;
  wire RAM_reg_1856_1919_3_5_n_2;
  wire RAM_reg_1856_1919_6_8_n_0;
  wire RAM_reg_1856_1919_6_8_n_1;
  wire RAM_reg_1856_1919_6_8_n_2;
  wire RAM_reg_1856_1919_9_11_n_0;
  wire RAM_reg_1856_1919_9_11_n_1;
  wire RAM_reg_1856_1919_9_11_n_2;
  wire RAM_reg_1920_1983_0_2_n_0;
  wire RAM_reg_1920_1983_0_2_n_1;
  wire RAM_reg_1920_1983_0_2_n_2;
  wire RAM_reg_1920_1983_12_12_n_0;
  wire RAM_reg_1920_1983_3_5_n_0;
  wire RAM_reg_1920_1983_3_5_n_1;
  wire RAM_reg_1920_1983_3_5_n_2;
  wire RAM_reg_1920_1983_6_8_n_0;
  wire RAM_reg_1920_1983_6_8_n_1;
  wire RAM_reg_1920_1983_6_8_n_2;
  wire RAM_reg_1920_1983_9_11_n_0;
  wire RAM_reg_1920_1983_9_11_n_1;
  wire RAM_reg_1920_1983_9_11_n_2;
  wire RAM_reg_192_255_0_2_n_0;
  wire RAM_reg_192_255_0_2_n_1;
  wire RAM_reg_192_255_0_2_n_2;
  wire RAM_reg_192_255_12_12_n_0;
  wire RAM_reg_192_255_3_5_n_0;
  wire RAM_reg_192_255_3_5_n_1;
  wire RAM_reg_192_255_3_5_n_2;
  wire RAM_reg_192_255_6_8_n_0;
  wire RAM_reg_192_255_6_8_n_1;
  wire RAM_reg_192_255_6_8_n_2;
  wire RAM_reg_192_255_9_11_n_0;
  wire RAM_reg_192_255_9_11_n_1;
  wire RAM_reg_192_255_9_11_n_2;
  wire RAM_reg_1984_2047_0_2_n_0;
  wire RAM_reg_1984_2047_0_2_n_1;
  wire RAM_reg_1984_2047_0_2_n_2;
  wire RAM_reg_1984_2047_12_12_n_0;
  wire RAM_reg_1984_2047_3_5_n_0;
  wire RAM_reg_1984_2047_3_5_n_1;
  wire RAM_reg_1984_2047_3_5_n_2;
  wire RAM_reg_1984_2047_6_8_n_0;
  wire RAM_reg_1984_2047_6_8_n_1;
  wire RAM_reg_1984_2047_6_8_n_2;
  wire RAM_reg_1984_2047_9_11_n_0;
  wire RAM_reg_1984_2047_9_11_n_1;
  wire RAM_reg_1984_2047_9_11_n_2;
  wire RAM_reg_256_319_0_2_n_0;
  wire RAM_reg_256_319_0_2_n_1;
  wire RAM_reg_256_319_0_2_n_2;
  wire RAM_reg_256_319_12_12_n_0;
  wire RAM_reg_256_319_3_5_n_0;
  wire RAM_reg_256_319_3_5_n_1;
  wire RAM_reg_256_319_3_5_n_2;
  wire RAM_reg_256_319_6_8_n_0;
  wire RAM_reg_256_319_6_8_n_1;
  wire RAM_reg_256_319_6_8_n_2;
  wire RAM_reg_256_319_9_11_n_0;
  wire RAM_reg_256_319_9_11_n_1;
  wire RAM_reg_256_319_9_11_n_2;
  wire RAM_reg_320_383_0_2_n_0;
  wire RAM_reg_320_383_0_2_n_1;
  wire RAM_reg_320_383_0_2_n_2;
  wire RAM_reg_320_383_12_12_n_0;
  wire RAM_reg_320_383_3_5_n_0;
  wire RAM_reg_320_383_3_5_n_1;
  wire RAM_reg_320_383_3_5_n_2;
  wire RAM_reg_320_383_6_8_n_0;
  wire RAM_reg_320_383_6_8_n_1;
  wire RAM_reg_320_383_6_8_n_2;
  wire RAM_reg_320_383_9_11_n_0;
  wire RAM_reg_320_383_9_11_n_1;
  wire RAM_reg_320_383_9_11_n_2;
  wire RAM_reg_384_447_0_2_n_0;
  wire RAM_reg_384_447_0_2_n_1;
  wire RAM_reg_384_447_0_2_n_2;
  wire RAM_reg_384_447_12_12_n_0;
  wire RAM_reg_384_447_3_5_n_0;
  wire RAM_reg_384_447_3_5_n_1;
  wire RAM_reg_384_447_3_5_n_2;
  wire RAM_reg_384_447_6_8_n_0;
  wire RAM_reg_384_447_6_8_n_1;
  wire RAM_reg_384_447_6_8_n_2;
  wire RAM_reg_384_447_9_11_n_0;
  wire RAM_reg_384_447_9_11_n_1;
  wire RAM_reg_384_447_9_11_n_2;
  wire RAM_reg_448_511_0_2_n_0;
  wire RAM_reg_448_511_0_2_n_1;
  wire RAM_reg_448_511_0_2_n_2;
  wire RAM_reg_448_511_12_12_n_0;
  wire RAM_reg_448_511_3_5_n_0;
  wire RAM_reg_448_511_3_5_n_1;
  wire RAM_reg_448_511_3_5_n_2;
  wire RAM_reg_448_511_6_8_n_0;
  wire RAM_reg_448_511_6_8_n_1;
  wire RAM_reg_448_511_6_8_n_2;
  wire RAM_reg_448_511_9_11_n_0;
  wire RAM_reg_448_511_9_11_n_1;
  wire RAM_reg_448_511_9_11_n_2;
  wire RAM_reg_512_575_0_2_n_0;
  wire RAM_reg_512_575_0_2_n_1;
  wire RAM_reg_512_575_0_2_n_2;
  wire RAM_reg_512_575_12_12_n_0;
  wire RAM_reg_512_575_3_5_n_0;
  wire RAM_reg_512_575_3_5_n_1;
  wire RAM_reg_512_575_3_5_n_2;
  wire RAM_reg_512_575_6_8_n_0;
  wire RAM_reg_512_575_6_8_n_1;
  wire RAM_reg_512_575_6_8_n_2;
  wire RAM_reg_512_575_9_11_n_0;
  wire RAM_reg_512_575_9_11_n_1;
  wire RAM_reg_512_575_9_11_n_2;
  wire RAM_reg_576_639_0_2_n_0;
  wire RAM_reg_576_639_0_2_n_1;
  wire RAM_reg_576_639_0_2_n_2;
  wire RAM_reg_576_639_12_12_n_0;
  wire RAM_reg_576_639_3_5_n_0;
  wire RAM_reg_576_639_3_5_n_1;
  wire RAM_reg_576_639_3_5_n_2;
  wire RAM_reg_576_639_6_8_n_0;
  wire RAM_reg_576_639_6_8_n_1;
  wire RAM_reg_576_639_6_8_n_2;
  wire RAM_reg_576_639_9_11_n_0;
  wire RAM_reg_576_639_9_11_n_1;
  wire RAM_reg_576_639_9_11_n_2;
  wire RAM_reg_640_703_0_2_n_0;
  wire RAM_reg_640_703_0_2_n_1;
  wire RAM_reg_640_703_0_2_n_2;
  wire RAM_reg_640_703_12_12_n_0;
  wire RAM_reg_640_703_3_5_n_0;
  wire RAM_reg_640_703_3_5_n_1;
  wire RAM_reg_640_703_3_5_n_2;
  wire RAM_reg_640_703_6_8_n_0;
  wire RAM_reg_640_703_6_8_n_1;
  wire RAM_reg_640_703_6_8_n_2;
  wire RAM_reg_640_703_9_11_n_0;
  wire RAM_reg_640_703_9_11_n_1;
  wire RAM_reg_640_703_9_11_n_2;
  wire RAM_reg_64_127_0_2_n_0;
  wire RAM_reg_64_127_0_2_n_1;
  wire RAM_reg_64_127_0_2_n_2;
  wire RAM_reg_64_127_12_12_n_0;
  wire RAM_reg_64_127_3_5_n_0;
  wire RAM_reg_64_127_3_5_n_1;
  wire RAM_reg_64_127_3_5_n_2;
  wire RAM_reg_64_127_6_8_n_0;
  wire RAM_reg_64_127_6_8_n_1;
  wire RAM_reg_64_127_6_8_n_2;
  wire RAM_reg_64_127_9_11_n_0;
  wire RAM_reg_64_127_9_11_n_1;
  wire RAM_reg_64_127_9_11_n_2;
  wire RAM_reg_704_767_0_2_n_0;
  wire RAM_reg_704_767_0_2_n_1;
  wire RAM_reg_704_767_0_2_n_2;
  wire RAM_reg_704_767_12_12_n_0;
  wire RAM_reg_704_767_3_5_n_0;
  wire RAM_reg_704_767_3_5_n_1;
  wire RAM_reg_704_767_3_5_n_2;
  wire RAM_reg_704_767_6_8_n_0;
  wire RAM_reg_704_767_6_8_n_1;
  wire RAM_reg_704_767_6_8_n_2;
  wire RAM_reg_704_767_9_11_n_0;
  wire RAM_reg_704_767_9_11_n_1;
  wire RAM_reg_704_767_9_11_n_2;
  wire RAM_reg_768_831_0_2_n_0;
  wire RAM_reg_768_831_0_2_n_1;
  wire RAM_reg_768_831_0_2_n_2;
  wire RAM_reg_768_831_12_12_n_0;
  wire RAM_reg_768_831_3_5_n_0;
  wire RAM_reg_768_831_3_5_n_1;
  wire RAM_reg_768_831_3_5_n_2;
  wire RAM_reg_768_831_6_8_n_0;
  wire RAM_reg_768_831_6_8_n_1;
  wire RAM_reg_768_831_6_8_n_2;
  wire RAM_reg_768_831_9_11_n_0;
  wire RAM_reg_768_831_9_11_n_1;
  wire RAM_reg_768_831_9_11_n_2;
  wire RAM_reg_832_895_0_2_n_0;
  wire RAM_reg_832_895_0_2_n_1;
  wire RAM_reg_832_895_0_2_n_2;
  wire RAM_reg_832_895_12_12_n_0;
  wire RAM_reg_832_895_3_5_n_0;
  wire RAM_reg_832_895_3_5_n_1;
  wire RAM_reg_832_895_3_5_n_2;
  wire RAM_reg_832_895_6_8_n_0;
  wire RAM_reg_832_895_6_8_n_1;
  wire RAM_reg_832_895_6_8_n_2;
  wire RAM_reg_832_895_9_11_n_0;
  wire RAM_reg_832_895_9_11_n_1;
  wire RAM_reg_832_895_9_11_n_2;
  wire RAM_reg_896_959_0_2_n_0;
  wire RAM_reg_896_959_0_2_n_1;
  wire RAM_reg_896_959_0_2_n_2;
  wire RAM_reg_896_959_12_12_n_0;
  wire RAM_reg_896_959_3_5_n_0;
  wire RAM_reg_896_959_3_5_n_1;
  wire RAM_reg_896_959_3_5_n_2;
  wire RAM_reg_896_959_6_8_n_0;
  wire RAM_reg_896_959_6_8_n_1;
  wire RAM_reg_896_959_6_8_n_2;
  wire RAM_reg_896_959_9_11_n_0;
  wire RAM_reg_896_959_9_11_n_1;
  wire RAM_reg_896_959_9_11_n_2;
  wire RAM_reg_960_1023_0_2_n_0;
  wire RAM_reg_960_1023_0_2_n_1;
  wire RAM_reg_960_1023_0_2_n_2;
  wire RAM_reg_960_1023_12_12_n_0;
  wire RAM_reg_960_1023_3_5_n_0;
  wire RAM_reg_960_1023_3_5_n_1;
  wire RAM_reg_960_1023_3_5_n_2;
  wire RAM_reg_960_1023_6_8_n_0;
  wire RAM_reg_960_1023_6_8_n_1;
  wire RAM_reg_960_1023_6_8_n_2;
  wire RAM_reg_960_1023_9_11_n_0;
  wire RAM_reg_960_1023_9_11_n_1;
  wire RAM_reg_960_1023_9_11_n_2;
  wire [5:0]RD_PNTR;
  wire [12:0]din;
  wire [12:0]dout;
  wire [12:0]dout_i0;
  wire \gpr1.dout_i[0]_i_10_n_0 ;
  wire \gpr1.dout_i[0]_i_11_n_0 ;
  wire \gpr1.dout_i[0]_i_12_n_0 ;
  wire \gpr1.dout_i[0]_i_13_n_0 ;
  wire \gpr1.dout_i[0]_i_6_n_0 ;
  wire \gpr1.dout_i[0]_i_7_n_0 ;
  wire \gpr1.dout_i[0]_i_8_n_0 ;
  wire \gpr1.dout_i[0]_i_9_n_0 ;
  wire \gpr1.dout_i[10]_i_10_n_0 ;
  wire \gpr1.dout_i[10]_i_11_n_0 ;
  wire \gpr1.dout_i[10]_i_12_n_0 ;
  wire \gpr1.dout_i[10]_i_13_n_0 ;
  wire \gpr1.dout_i[10]_i_6_n_0 ;
  wire \gpr1.dout_i[10]_i_7_n_0 ;
  wire \gpr1.dout_i[10]_i_8_n_0 ;
  wire \gpr1.dout_i[10]_i_9_n_0 ;
  wire \gpr1.dout_i[11]_i_10_n_0 ;
  wire \gpr1.dout_i[11]_i_11_n_0 ;
  wire \gpr1.dout_i[11]_i_12_n_0 ;
  wire \gpr1.dout_i[11]_i_13_n_0 ;
  wire \gpr1.dout_i[11]_i_6_n_0 ;
  wire [5:0]\gpr1.dout_i[11]_i_7_0 ;
  wire \gpr1.dout_i[11]_i_7_n_0 ;
  wire \gpr1.dout_i[11]_i_8_n_0 ;
  wire \gpr1.dout_i[11]_i_9_n_0 ;
  wire \gpr1.dout_i[12]_i_10_n_0 ;
  wire \gpr1.dout_i[12]_i_11_n_0 ;
  wire \gpr1.dout_i[12]_i_12_n_0 ;
  wire \gpr1.dout_i[12]_i_13_n_0 ;
  wire \gpr1.dout_i[12]_i_14_n_0 ;
  wire \gpr1.dout_i[12]_i_7_n_0 ;
  wire \gpr1.dout_i[12]_i_8_n_0 ;
  wire \gpr1.dout_i[12]_i_9_n_0 ;
  wire \gpr1.dout_i[1]_i_10_n_0 ;
  wire \gpr1.dout_i[1]_i_11_n_0 ;
  wire \gpr1.dout_i[1]_i_12_n_0 ;
  wire \gpr1.dout_i[1]_i_13_n_0 ;
  wire \gpr1.dout_i[1]_i_6_n_0 ;
  wire \gpr1.dout_i[1]_i_7_n_0 ;
  wire \gpr1.dout_i[1]_i_8_n_0 ;
  wire \gpr1.dout_i[1]_i_9_n_0 ;
  wire \gpr1.dout_i[2]_i_10_0 ;
  wire \gpr1.dout_i[2]_i_10_1 ;
  wire \gpr1.dout_i[2]_i_10_2 ;
  wire \gpr1.dout_i[2]_i_10_3 ;
  wire \gpr1.dout_i[2]_i_10_n_0 ;
  wire \gpr1.dout_i[2]_i_11_0 ;
  wire \gpr1.dout_i[2]_i_11_1 ;
  wire \gpr1.dout_i[2]_i_11_2 ;
  wire \gpr1.dout_i[2]_i_11_3 ;
  wire \gpr1.dout_i[2]_i_11_n_0 ;
  wire \gpr1.dout_i[2]_i_12_0 ;
  wire \gpr1.dout_i[2]_i_12_1 ;
  wire \gpr1.dout_i[2]_i_12_2 ;
  wire \gpr1.dout_i[2]_i_12_3 ;
  wire \gpr1.dout_i[2]_i_12_n_0 ;
  wire \gpr1.dout_i[2]_i_13_0 ;
  wire \gpr1.dout_i[2]_i_13_1 ;
  wire \gpr1.dout_i[2]_i_13_2 ;
  wire \gpr1.dout_i[2]_i_13_3 ;
  wire \gpr1.dout_i[2]_i_13_n_0 ;
  wire \gpr1.dout_i[2]_i_6_0 ;
  wire \gpr1.dout_i[2]_i_6_1 ;
  wire \gpr1.dout_i[2]_i_6_2 ;
  wire \gpr1.dout_i[2]_i_6_3 ;
  wire \gpr1.dout_i[2]_i_6_n_0 ;
  wire \gpr1.dout_i[2]_i_7_0 ;
  wire \gpr1.dout_i[2]_i_7_1 ;
  wire \gpr1.dout_i[2]_i_7_2 ;
  wire \gpr1.dout_i[2]_i_7_3 ;
  wire \gpr1.dout_i[2]_i_7_n_0 ;
  wire \gpr1.dout_i[2]_i_8_0 ;
  wire \gpr1.dout_i[2]_i_8_1 ;
  wire \gpr1.dout_i[2]_i_8_2 ;
  wire \gpr1.dout_i[2]_i_8_3 ;
  wire \gpr1.dout_i[2]_i_8_n_0 ;
  wire \gpr1.dout_i[2]_i_9_0 ;
  wire \gpr1.dout_i[2]_i_9_1 ;
  wire \gpr1.dout_i[2]_i_9_2 ;
  wire \gpr1.dout_i[2]_i_9_3 ;
  wire \gpr1.dout_i[2]_i_9_n_0 ;
  wire \gpr1.dout_i[3]_i_10_n_0 ;
  wire \gpr1.dout_i[3]_i_11_n_0 ;
  wire \gpr1.dout_i[3]_i_12_n_0 ;
  wire \gpr1.dout_i[3]_i_13_n_0 ;
  wire \gpr1.dout_i[3]_i_6_n_0 ;
  wire \gpr1.dout_i[3]_i_7_n_0 ;
  wire \gpr1.dout_i[3]_i_8_n_0 ;
  wire \gpr1.dout_i[3]_i_9_n_0 ;
  wire \gpr1.dout_i[4]_i_10_n_0 ;
  wire \gpr1.dout_i[4]_i_11_n_0 ;
  wire \gpr1.dout_i[4]_i_12_n_0 ;
  wire \gpr1.dout_i[4]_i_13_n_0 ;
  wire \gpr1.dout_i[4]_i_6_n_0 ;
  wire \gpr1.dout_i[4]_i_7_n_0 ;
  wire \gpr1.dout_i[4]_i_8_n_0 ;
  wire \gpr1.dout_i[4]_i_9_n_0 ;
  wire \gpr1.dout_i[5]_i_10_n_0 ;
  wire \gpr1.dout_i[5]_i_11_n_0 ;
  wire \gpr1.dout_i[5]_i_12_n_0 ;
  wire \gpr1.dout_i[5]_i_13_n_0 ;
  wire \gpr1.dout_i[5]_i_6_n_0 ;
  wire \gpr1.dout_i[5]_i_7_n_0 ;
  wire \gpr1.dout_i[5]_i_8_n_0 ;
  wire \gpr1.dout_i[5]_i_9_n_0 ;
  wire \gpr1.dout_i[6]_i_10_n_0 ;
  wire \gpr1.dout_i[6]_i_11_n_0 ;
  wire \gpr1.dout_i[6]_i_12_n_0 ;
  wire \gpr1.dout_i[6]_i_13_n_0 ;
  wire \gpr1.dout_i[6]_i_6_n_0 ;
  wire \gpr1.dout_i[6]_i_7_n_0 ;
  wire \gpr1.dout_i[6]_i_8_n_0 ;
  wire \gpr1.dout_i[6]_i_9_n_0 ;
  wire \gpr1.dout_i[7]_i_10_n_0 ;
  wire \gpr1.dout_i[7]_i_11_n_0 ;
  wire \gpr1.dout_i[7]_i_12_n_0 ;
  wire \gpr1.dout_i[7]_i_13_n_0 ;
  wire \gpr1.dout_i[7]_i_6_n_0 ;
  wire \gpr1.dout_i[7]_i_7_n_0 ;
  wire \gpr1.dout_i[7]_i_8_n_0 ;
  wire \gpr1.dout_i[7]_i_9_n_0 ;
  wire \gpr1.dout_i[8]_i_10_n_0 ;
  wire \gpr1.dout_i[8]_i_11_n_0 ;
  wire \gpr1.dout_i[8]_i_12_n_0 ;
  wire \gpr1.dout_i[8]_i_13_n_0 ;
  wire \gpr1.dout_i[8]_i_6_n_0 ;
  wire [5:0]\gpr1.dout_i[8]_i_7_0 ;
  wire \gpr1.dout_i[8]_i_7_n_0 ;
  wire \gpr1.dout_i[8]_i_8_n_0 ;
  wire \gpr1.dout_i[8]_i_9_n_0 ;
  wire \gpr1.dout_i[9]_i_10_n_0 ;
  wire \gpr1.dout_i[9]_i_11_n_0 ;
  wire \gpr1.dout_i[9]_i_12_n_0 ;
  wire \gpr1.dout_i[9]_i_13_n_0 ;
  wire \gpr1.dout_i[9]_i_6_n_0 ;
  wire \gpr1.dout_i[9]_i_7_n_0 ;
  wire \gpr1.dout_i[9]_i_8_n_0 ;
  wire \gpr1.dout_i[9]_i_9_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[10]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[11]_i_5_n_0 ;
  wire [10:0]\gpr1.dout_i_reg[12]_0 ;
  wire \gpr1.dout_i_reg[12]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[12]_i_6_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[8]_i_5_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_4_n_0 ;
  wire \gpr1.dout_i_reg[9]_i_5_n_0 ;
  wire rd_clk;
  wire wr_clk;
  wire NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_12_12_SPO_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_0_63_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_0_2_n_0),
        .DOB(RAM_reg_0_63_0_2_n_1),
        .DOC(RAM_reg_0_63_0_2_n_2),
        .DOD(NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_0_63_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_0_63_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_0_63_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_0_63_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_3_5_n_0),
        .DOB(RAM_reg_0_63_3_5_n_1),
        .DOC(RAM_reg_0_63_3_5_n_2),
        .DOD(NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_0_63_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_6_8_n_0),
        .DOB(RAM_reg_0_63_6_8_n_1),
        .DOC(RAM_reg_0_63_6_8_n_2),
        .DOD(NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_0_63_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_9_11_n_0),
        .DOB(RAM_reg_0_63_9_11_n_1),
        .DOC(RAM_reg_0_63_9_11_n_2),
        .DOD(NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1024_1087_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_0_2_n_0),
        .DOB(RAM_reg_1024_1087_0_2_n_1),
        .DOC(RAM_reg_1024_1087_0_2_n_2),
        .DOD(NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1024_1087_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1024_1087_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1024_1087_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1024_1087_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_3_5_n_0),
        .DOB(RAM_reg_1024_1087_3_5_n_1),
        .DOC(RAM_reg_1024_1087_3_5_n_2),
        .DOD(NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1024_1087_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_6_8_n_0),
        .DOB(RAM_reg_1024_1087_6_8_n_1),
        .DOC(RAM_reg_1024_1087_6_8_n_2),
        .DOD(NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1024" *) 
  (* ram_addr_end = "1087" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1024_1087_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_9_11_n_0),
        .DOB(RAM_reg_1024_1087_9_11_n_1),
        .DOC(RAM_reg_1024_1087_9_11_n_2),
        .DOD(NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1088_1151_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_0_2_n_0),
        .DOB(RAM_reg_1088_1151_0_2_n_1),
        .DOC(RAM_reg_1088_1151_0_2_n_2),
        .DOD(NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1088_1151_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1088_1151_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1088_1151_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1088_1151_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_3_5_n_0),
        .DOB(RAM_reg_1088_1151_3_5_n_1),
        .DOC(RAM_reg_1088_1151_3_5_n_2),
        .DOD(NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1088_1151_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_6_8_n_0),
        .DOB(RAM_reg_1088_1151_6_8_n_1),
        .DOC(RAM_reg_1088_1151_6_8_n_2),
        .DOD(NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1088" *) 
  (* ram_addr_end = "1151" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1088_1151_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_9_11_n_0),
        .DOB(RAM_reg_1088_1151_9_11_n_1),
        .DOC(RAM_reg_1088_1151_9_11_n_2),
        .DOD(NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1152_1215_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_0_2_n_0),
        .DOB(RAM_reg_1152_1215_0_2_n_1),
        .DOC(RAM_reg_1152_1215_0_2_n_2),
        .DOD(NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1152_1215_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1152_1215_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1152_1215_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1152_1215_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_3_5_n_0),
        .DOB(RAM_reg_1152_1215_3_5_n_1),
        .DOC(RAM_reg_1152_1215_3_5_n_2),
        .DOD(NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1152_1215_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_6_8_n_0),
        .DOB(RAM_reg_1152_1215_6_8_n_1),
        .DOC(RAM_reg_1152_1215_6_8_n_2),
        .DOD(NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1152" *) 
  (* ram_addr_end = "1215" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1152_1215_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_9_11_n_0),
        .DOB(RAM_reg_1152_1215_9_11_n_1),
        .DOC(RAM_reg_1152_1215_9_11_n_2),
        .DOD(NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1216_1279_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_0_2_n_0),
        .DOB(RAM_reg_1216_1279_0_2_n_1),
        .DOC(RAM_reg_1216_1279_0_2_n_2),
        .DOD(NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1216_1279_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1216_1279_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1216_1279_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1216_1279_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_3_5_n_0),
        .DOB(RAM_reg_1216_1279_3_5_n_1),
        .DOC(RAM_reg_1216_1279_3_5_n_2),
        .DOD(NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1216_1279_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_6_8_n_0),
        .DOB(RAM_reg_1216_1279_6_8_n_1),
        .DOC(RAM_reg_1216_1279_6_8_n_2),
        .DOD(NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1216" *) 
  (* ram_addr_end = "1279" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1216_1279_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_9_11_n_0),
        .DOB(RAM_reg_1216_1279_9_11_n_1),
        .DOC(RAM_reg_1216_1279_9_11_n_2),
        .DOD(NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_8_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1280_1343_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_0_2_n_0),
        .DOB(RAM_reg_1280_1343_0_2_n_1),
        .DOC(RAM_reg_1280_1343_0_2_n_2),
        .DOD(NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1280_1343_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1280_1343_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1280_1343_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1280_1343_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_3_5_n_0),
        .DOB(RAM_reg_1280_1343_3_5_n_1),
        .DOC(RAM_reg_1280_1343_3_5_n_2),
        .DOD(NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1280_1343_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_6_8_n_0),
        .DOB(RAM_reg_1280_1343_6_8_n_1),
        .DOC(RAM_reg_1280_1343_6_8_n_2),
        .DOD(NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1280" *) 
  (* ram_addr_end = "1343" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1280_1343_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_9_11_n_0),
        .DOB(RAM_reg_1280_1343_9_11_n_1),
        .DOC(RAM_reg_1280_1343_9_11_n_2),
        .DOD(NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_128_191_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_0_2_n_0),
        .DOB(RAM_reg_128_191_0_2_n_1),
        .DOC(RAM_reg_128_191_0_2_n_2),
        .DOD(NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_128_191_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_128_191_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_128_191_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_128_191_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_3_5_n_0),
        .DOB(RAM_reg_128_191_3_5_n_1),
        .DOC(RAM_reg_128_191_3_5_n_2),
        .DOD(NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_128_191_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_6_8_n_0),
        .DOB(RAM_reg_128_191_6_8_n_1),
        .DOC(RAM_reg_128_191_6_8_n_2),
        .DOD(NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_128_191_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_9_11_n_0),
        .DOB(RAM_reg_128_191_9_11_n_1),
        .DOC(RAM_reg_128_191_9_11_n_2),
        .DOD(NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1344_1407_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_0_2_n_0),
        .DOB(RAM_reg_1344_1407_0_2_n_1),
        .DOC(RAM_reg_1344_1407_0_2_n_2),
        .DOD(NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1344_1407_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1344_1407_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1344_1407_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1344_1407_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_3_5_n_0),
        .DOB(RAM_reg_1344_1407_3_5_n_1),
        .DOC(RAM_reg_1344_1407_3_5_n_2),
        .DOD(NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1344_1407_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_6_8_n_0),
        .DOB(RAM_reg_1344_1407_6_8_n_1),
        .DOC(RAM_reg_1344_1407_6_8_n_2),
        .DOD(NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1344" *) 
  (* ram_addr_end = "1407" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1344_1407_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_9_11_n_0),
        .DOB(RAM_reg_1344_1407_9_11_n_1),
        .DOC(RAM_reg_1344_1407_9_11_n_2),
        .DOD(NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1408_1471_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_0_2_n_0),
        .DOB(RAM_reg_1408_1471_0_2_n_1),
        .DOC(RAM_reg_1408_1471_0_2_n_2),
        .DOD(NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1408_1471_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1408_1471_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1408_1471_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1408_1471_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_3_5_n_0),
        .DOB(RAM_reg_1408_1471_3_5_n_1),
        .DOC(RAM_reg_1408_1471_3_5_n_2),
        .DOD(NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1408_1471_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_6_8_n_0),
        .DOB(RAM_reg_1408_1471_6_8_n_1),
        .DOC(RAM_reg_1408_1471_6_8_n_2),
        .DOD(NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1408" *) 
  (* ram_addr_end = "1471" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1408_1471_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_9_11_n_0),
        .DOB(RAM_reg_1408_1471_9_11_n_1),
        .DOC(RAM_reg_1408_1471_9_11_n_2),
        .DOD(NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1472_1535_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_0_2_n_0),
        .DOB(RAM_reg_1472_1535_0_2_n_1),
        .DOC(RAM_reg_1472_1535_0_2_n_2),
        .DOD(NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1472_1535_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1472_1535_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1472_1535_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1472_1535_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_3_5_n_0),
        .DOB(RAM_reg_1472_1535_3_5_n_1),
        .DOC(RAM_reg_1472_1535_3_5_n_2),
        .DOD(NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1472_1535_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_6_8_n_0),
        .DOB(RAM_reg_1472_1535_6_8_n_1),
        .DOC(RAM_reg_1472_1535_6_8_n_2),
        .DOD(NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1472" *) 
  (* ram_addr_end = "1535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1472_1535_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_9_11_n_0),
        .DOB(RAM_reg_1472_1535_9_11_n_1),
        .DOC(RAM_reg_1472_1535_9_11_n_2),
        .DOD(NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_9_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1536_1599_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_0_2_n_0),
        .DOB(RAM_reg_1536_1599_0_2_n_1),
        .DOC(RAM_reg_1536_1599_0_2_n_2),
        .DOD(NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1536_1599_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1536_1599_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1536_1599_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1536_1599_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_3_5_n_0),
        .DOB(RAM_reg_1536_1599_3_5_n_1),
        .DOC(RAM_reg_1536_1599_3_5_n_2),
        .DOD(NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1536_1599_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_6_8_n_0),
        .DOB(RAM_reg_1536_1599_6_8_n_1),
        .DOC(RAM_reg_1536_1599_6_8_n_2),
        .DOD(NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1536" *) 
  (* ram_addr_end = "1599" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1536_1599_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_9_11_n_0),
        .DOB(RAM_reg_1536_1599_9_11_n_1),
        .DOC(RAM_reg_1536_1599_9_11_n_2),
        .DOD(NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1600_1663_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_0_2_n_0),
        .DOB(RAM_reg_1600_1663_0_2_n_1),
        .DOC(RAM_reg_1600_1663_0_2_n_2),
        .DOD(NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1600_1663_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1600_1663_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1600_1663_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1600_1663_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_3_5_n_0),
        .DOB(RAM_reg_1600_1663_3_5_n_1),
        .DOC(RAM_reg_1600_1663_3_5_n_2),
        .DOD(NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1600_1663_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_6_8_n_0),
        .DOB(RAM_reg_1600_1663_6_8_n_1),
        .DOC(RAM_reg_1600_1663_6_8_n_2),
        .DOD(NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1600" *) 
  (* ram_addr_end = "1663" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1600_1663_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_9_11_n_0),
        .DOB(RAM_reg_1600_1663_9_11_n_1),
        .DOC(RAM_reg_1600_1663_9_11_n_2),
        .DOD(NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1664_1727_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_0_2_n_0),
        .DOB(RAM_reg_1664_1727_0_2_n_1),
        .DOC(RAM_reg_1664_1727_0_2_n_2),
        .DOD(NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1664_1727_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1664_1727_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1664_1727_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1664_1727_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_3_5_n_0),
        .DOB(RAM_reg_1664_1727_3_5_n_1),
        .DOC(RAM_reg_1664_1727_3_5_n_2),
        .DOD(NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1664_1727_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_6_8_n_0),
        .DOB(RAM_reg_1664_1727_6_8_n_1),
        .DOC(RAM_reg_1664_1727_6_8_n_2),
        .DOD(NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1664" *) 
  (* ram_addr_end = "1727" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1664_1727_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_9_11_n_0),
        .DOB(RAM_reg_1664_1727_9_11_n_1),
        .DOC(RAM_reg_1664_1727_9_11_n_2),
        .DOD(NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1728_1791_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_0_2_n_0),
        .DOB(RAM_reg_1728_1791_0_2_n_1),
        .DOC(RAM_reg_1728_1791_0_2_n_2),
        .DOD(NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1728_1791_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1728_1791_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1728_1791_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1728_1791_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_3_5_n_0),
        .DOB(RAM_reg_1728_1791_3_5_n_1),
        .DOC(RAM_reg_1728_1791_3_5_n_2),
        .DOD(NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1728_1791_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_6_8_n_0),
        .DOB(RAM_reg_1728_1791_6_8_n_1),
        .DOC(RAM_reg_1728_1791_6_8_n_2),
        .DOD(NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1728" *) 
  (* ram_addr_end = "1791" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1728_1791_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_9_11_n_0),
        .DOB(RAM_reg_1728_1791_9_11_n_1),
        .DOC(RAM_reg_1728_1791_9_11_n_2),
        .DOD(NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1792_1855_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_0_2_n_0),
        .DOB(RAM_reg_1792_1855_0_2_n_1),
        .DOC(RAM_reg_1792_1855_0_2_n_2),
        .DOD(NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1792_1855_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1792_1855_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1792_1855_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1792_1855_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_3_5_n_0),
        .DOB(RAM_reg_1792_1855_3_5_n_1),
        .DOC(RAM_reg_1792_1855_3_5_n_2),
        .DOD(NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1792_1855_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_6_8_n_0),
        .DOB(RAM_reg_1792_1855_6_8_n_1),
        .DOC(RAM_reg_1792_1855_6_8_n_2),
        .DOD(NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1792" *) 
  (* ram_addr_end = "1855" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1792_1855_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_9_11_n_0),
        .DOB(RAM_reg_1792_1855_9_11_n_1),
        .DOC(RAM_reg_1792_1855_9_11_n_2),
        .DOD(NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1856_1919_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_0_2_n_0),
        .DOB(RAM_reg_1856_1919_0_2_n_1),
        .DOC(RAM_reg_1856_1919_0_2_n_2),
        .DOD(NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1856_1919_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1856_1919_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1856_1919_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1856_1919_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_3_5_n_0),
        .DOB(RAM_reg_1856_1919_3_5_n_1),
        .DOC(RAM_reg_1856_1919_3_5_n_2),
        .DOD(NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1856_1919_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_6_8_n_0),
        .DOB(RAM_reg_1856_1919_6_8_n_1),
        .DOC(RAM_reg_1856_1919_6_8_n_2),
        .DOD(NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1856" *) 
  (* ram_addr_end = "1919" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1856_1919_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_9_11_n_0),
        .DOB(RAM_reg_1856_1919_9_11_n_1),
        .DOC(RAM_reg_1856_1919_9_11_n_2),
        .DOD(NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1920_1983_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_0_2_n_0),
        .DOB(RAM_reg_1920_1983_0_2_n_1),
        .DOC(RAM_reg_1920_1983_0_2_n_2),
        .DOD(NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1920_1983_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1920_1983_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1920_1983_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1920_1983_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_3_5_n_0),
        .DOB(RAM_reg_1920_1983_3_5_n_1),
        .DOC(RAM_reg_1920_1983_3_5_n_2),
        .DOD(NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1920_1983_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_6_8_n_0),
        .DOB(RAM_reg_1920_1983_6_8_n_1),
        .DOC(RAM_reg_1920_1983_6_8_n_2),
        .DOD(NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1920" *) 
  (* ram_addr_end = "1983" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1920_1983_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_9_11_n_0),
        .DOB(RAM_reg_1920_1983_9_11_n_1),
        .DOC(RAM_reg_1920_1983_9_11_n_2),
        .DOD(NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_192_255_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_0_2_n_0),
        .DOB(RAM_reg_192_255_0_2_n_1),
        .DOC(RAM_reg_192_255_0_2_n_2),
        .DOD(NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_192_255_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_192_255_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_192_255_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_192_255_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_3_5_n_0),
        .DOB(RAM_reg_192_255_3_5_n_1),
        .DOC(RAM_reg_192_255_3_5_n_2),
        .DOD(NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_192_255_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_6_8_n_0),
        .DOB(RAM_reg_192_255_6_8_n_1),
        .DOC(RAM_reg_192_255_6_8_n_2),
        .DOD(NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_192_255_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_9_11_n_0),
        .DOB(RAM_reg_192_255_9_11_n_1),
        .DOC(RAM_reg_192_255_9_11_n_2),
        .DOD(NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_1984_2047_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_0_2_n_0),
        .DOB(RAM_reg_1984_2047_0_2_n_1),
        .DOC(RAM_reg_1984_2047_0_2_n_2),
        .DOD(NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_1984_2047_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_1984_2047_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_1984_2047_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_1984_2047_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_3_5_n_0),
        .DOB(RAM_reg_1984_2047_3_5_n_1),
        .DOC(RAM_reg_1984_2047_3_5_n_2),
        .DOD(NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_1984_2047_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_6_8_n_0),
        .DOB(RAM_reg_1984_2047_6_8_n_1),
        .DOC(RAM_reg_1984_2047_6_8_n_2),
        .DOD(NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "1984" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_1984_2047_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_9_11_n_0),
        .DOB(RAM_reg_1984_2047_9_11_n_1),
        .DOC(RAM_reg_1984_2047_9_11_n_2),
        .DOD(NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_256_319_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_0_2_n_0),
        .DOB(RAM_reg_256_319_0_2_n_1),
        .DOC(RAM_reg_256_319_0_2_n_2),
        .DOD(NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_256_319_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_256_319_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_256_319_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_256_319_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_3_5_n_0),
        .DOB(RAM_reg_256_319_3_5_n_1),
        .DOC(RAM_reg_256_319_3_5_n_2),
        .DOD(NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_256_319_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_6_8_n_0),
        .DOB(RAM_reg_256_319_6_8_n_1),
        .DOC(RAM_reg_256_319_6_8_n_2),
        .DOD(NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_256_319_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_9_11_n_0),
        .DOB(RAM_reg_256_319_9_11_n_1),
        .DOC(RAM_reg_256_319_9_11_n_2),
        .DOD(NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_320_383_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_0_2_n_0),
        .DOB(RAM_reg_320_383_0_2_n_1),
        .DOC(RAM_reg_320_383_0_2_n_2),
        .DOD(NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_320_383_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_320_383_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_320_383_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_320_383_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_3_5_n_0),
        .DOB(RAM_reg_320_383_3_5_n_1),
        .DOC(RAM_reg_320_383_3_5_n_2),
        .DOD(NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_320_383_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_6_8_n_0),
        .DOB(RAM_reg_320_383_6_8_n_1),
        .DOC(RAM_reg_320_383_6_8_n_2),
        .DOD(NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_320_383_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_9_11_n_0),
        .DOB(RAM_reg_320_383_9_11_n_1),
        .DOC(RAM_reg_320_383_9_11_n_2),
        .DOD(NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_384_447_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_0_2_n_0),
        .DOB(RAM_reg_384_447_0_2_n_1),
        .DOC(RAM_reg_384_447_0_2_n_2),
        .DOD(NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_384_447_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_384_447_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_384_447_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_384_447_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_3_5_n_0),
        .DOB(RAM_reg_384_447_3_5_n_1),
        .DOC(RAM_reg_384_447_3_5_n_2),
        .DOD(NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_384_447_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_6_8_n_0),
        .DOB(RAM_reg_384_447_6_8_n_1),
        .DOC(RAM_reg_384_447_6_8_n_2),
        .DOD(NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_384_447_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_9_11_n_0),
        .DOB(RAM_reg_384_447_9_11_n_1),
        .DOC(RAM_reg_384_447_9_11_n_2),
        .DOD(NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_448_511_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_0_2_n_0),
        .DOB(RAM_reg_448_511_0_2_n_1),
        .DOC(RAM_reg_448_511_0_2_n_2),
        .DOD(NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_448_511_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_448_511_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_448_511_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_448_511_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_3_5_n_0),
        .DOB(RAM_reg_448_511_3_5_n_1),
        .DOC(RAM_reg_448_511_3_5_n_2),
        .DOD(NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_448_511_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_6_8_n_0),
        .DOB(RAM_reg_448_511_6_8_n_1),
        .DOC(RAM_reg_448_511_6_8_n_2),
        .DOD(NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_448_511_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_9_11_n_0),
        .DOB(RAM_reg_448_511_9_11_n_1),
        .DOC(RAM_reg_448_511_9_11_n_2),
        .DOD(NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_13_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_512_575_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_0_2_n_0),
        .DOB(RAM_reg_512_575_0_2_n_1),
        .DOC(RAM_reg_512_575_0_2_n_2),
        .DOD(NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_512_575_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_512_575_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_512_575_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_512_575_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_3_5_n_0),
        .DOB(RAM_reg_512_575_3_5_n_1),
        .DOC(RAM_reg_512_575_3_5_n_2),
        .DOD(NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_512_575_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_6_8_n_0),
        .DOB(RAM_reg_512_575_6_8_n_1),
        .DOC(RAM_reg_512_575_6_8_n_2),
        .DOD(NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_512_575_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_9_11_n_0),
        .DOB(RAM_reg_512_575_9_11_n_1),
        .DOC(RAM_reg_512_575_9_11_n_2),
        .DOD(NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_576_639_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_0_2_n_0),
        .DOB(RAM_reg_576_639_0_2_n_1),
        .DOC(RAM_reg_576_639_0_2_n_2),
        .DOD(NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_576_639_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_576_639_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_576_639_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_576_639_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_3_5_n_0),
        .DOB(RAM_reg_576_639_3_5_n_1),
        .DOC(RAM_reg_576_639_3_5_n_2),
        .DOD(NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_576_639_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_6_8_n_0),
        .DOB(RAM_reg_576_639_6_8_n_1),
        .DOC(RAM_reg_576_639_6_8_n_2),
        .DOD(NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_576_639_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_9_11_n_0),
        .DOB(RAM_reg_576_639_9_11_n_1),
        .DOC(RAM_reg_576_639_9_11_n_2),
        .DOD(NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_640_703_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_0_2_n_0),
        .DOB(RAM_reg_640_703_0_2_n_1),
        .DOC(RAM_reg_640_703_0_2_n_2),
        .DOD(NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_640_703_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_640_703_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_640_703_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_640_703_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_3_5_n_0),
        .DOB(RAM_reg_640_703_3_5_n_1),
        .DOC(RAM_reg_640_703_3_5_n_2),
        .DOD(NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_640_703_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_6_8_n_0),
        .DOB(RAM_reg_640_703_6_8_n_1),
        .DOC(RAM_reg_640_703_6_8_n_2),
        .DOD(NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_640_703_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_9_11_n_0),
        .DOB(RAM_reg_640_703_9_11_n_1),
        .DOC(RAM_reg_640_703_9_11_n_2),
        .DOD(NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_64_127_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_0_2_n_0),
        .DOB(RAM_reg_64_127_0_2_n_1),
        .DOC(RAM_reg_64_127_0_2_n_2),
        .DOD(NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_64_127_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_64_127_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_64_127_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_64_127_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_3_5_n_0),
        .DOB(RAM_reg_64_127_3_5_n_1),
        .DOC(RAM_reg_64_127_3_5_n_2),
        .DOD(NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_64_127_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_6_8_n_0),
        .DOB(RAM_reg_64_127_6_8_n_1),
        .DOC(RAM_reg_64_127_6_8_n_2),
        .DOD(NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_64_127_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_9_11_n_0),
        .DOB(RAM_reg_64_127_9_11_n_1),
        .DOC(RAM_reg_64_127_9_11_n_2),
        .DOD(NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_12_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_704_767_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_0_2_n_0),
        .DOB(RAM_reg_704_767_0_2_n_1),
        .DOC(RAM_reg_704_767_0_2_n_2),
        .DOD(NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_704_767_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_704_767_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_704_767_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_704_767_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_3_5_n_0),
        .DOB(RAM_reg_704_767_3_5_n_1),
        .DOC(RAM_reg_704_767_3_5_n_2),
        .DOD(NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_704_767_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_6_8_n_0),
        .DOB(RAM_reg_704_767_6_8_n_1),
        .DOC(RAM_reg_704_767_6_8_n_2),
        .DOD(NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_704_767_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_9_11_n_0),
        .DOB(RAM_reg_704_767_9_11_n_1),
        .DOC(RAM_reg_704_767_9_11_n_2),
        .DOD(NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_10_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_768_831_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_0_2_n_0),
        .DOB(RAM_reg_768_831_0_2_n_1),
        .DOC(RAM_reg_768_831_0_2_n_2),
        .DOD(NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_0 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_768_831_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_768_831_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_768_831_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_768_831_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_3_5_n_0),
        .DOB(RAM_reg_768_831_3_5_n_1),
        .DOC(RAM_reg_768_831_3_5_n_2),
        .DOD(NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_768_831_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_6_8_n_0),
        .DOB(RAM_reg_768_831_6_8_n_1),
        .DOC(RAM_reg_768_831_6_8_n_2),
        .DOD(NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_768_831_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_9_11_n_0),
        .DOB(RAM_reg_768_831_9_11_n_1),
        .DOC(RAM_reg_768_831_9_11_n_2),
        .DOD(NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_832_895_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_0_2_n_0),
        .DOB(RAM_reg_832_895_0_2_n_1),
        .DOC(RAM_reg_832_895_0_2_n_2),
        .DOD(NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_1 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_832_895_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_832_895_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_832_895_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_832_895_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_3_5_n_0),
        .DOB(RAM_reg_832_895_3_5_n_1),
        .DOC(RAM_reg_832_895_3_5_n_2),
        .DOD(NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_832_895_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_6_8_n_0),
        .DOB(RAM_reg_832_895_6_8_n_1),
        .DOC(RAM_reg_832_895_6_8_n_2),
        .DOD(NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_832_895_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_9_11_n_0),
        .DOB(RAM_reg_832_895_9_11_n_1),
        .DOC(RAM_reg_832_895_9_11_n_2),
        .DOD(NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_896_959_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_0_2_n_0),
        .DOB(RAM_reg_896_959_0_2_n_1),
        .DOC(RAM_reg_896_959_0_2_n_2),
        .DOD(NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_2 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_896_959_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_896_959_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_896_959_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_896_959_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_3_5_n_0),
        .DOB(RAM_reg_896_959_3_5_n_1),
        .DOC(RAM_reg_896_959_3_5_n_2),
        .DOD(NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_896_959_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_6_8_n_0),
        .DOB(RAM_reg_896_959_6_8_n_1),
        .DOC(RAM_reg_896_959_6_8_n_2),
        .DOD(NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_896_959_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_9_11_n_0),
        .DOB(RAM_reg_896_959_9_11_n_1),
        .DOC(RAM_reg_896_959_9_11_n_2),
        .DOD(NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_960_1023_0_2
       (.ADDRA(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRB(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRC(\gpr1.dout_i_reg[12]_0 [5:0]),
        .ADDRD(Q),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_0_2_n_0),
        .DOB(RAM_reg_960_1023_0_2_n_1),
        .DOC(RAM_reg_960_1023_0_2_n_2),
        .DOD(NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_3 ));
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM64X1D RAM_reg_960_1023_12_12
       (.A0(Q[0]),
        .A1(Q[1]),
        .A2(Q[2]),
        .A3(Q[3]),
        .A4(Q[4]),
        .A5(Q[5]),
        .D(din[12]),
        .DPO(RAM_reg_960_1023_12_12_n_0),
        .DPRA0(RD_PNTR[0]),
        .DPRA1(RD_PNTR[1]),
        .DPRA2(RD_PNTR[2]),
        .DPRA3(RD_PNTR[3]),
        .DPRA4(RD_PNTR[4]),
        .DPRA5(RD_PNTR[5]),
        .SPO(NLW_RAM_reg_960_1023_12_12_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_960_1023_3_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(Q),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_3_5_n_0),
        .DOB(RAM_reg_960_1023_3_5_n_1),
        .DOC(RAM_reg_960_1023_3_5_n_2),
        .DOD(NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M RAM_reg_960_1023_6_8
       (.ADDRA(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[8]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[6]),
        .DIB(din[7]),
        .DIC(din[8]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_6_8_n_0),
        .DOB(RAM_reg_960_1023_6_8_n_1),
        .DOC(RAM_reg_960_1023_6_8_n_2),
        .DOD(NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "26624" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M RAM_reg_960_1023_9_11
       (.ADDRA(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRB(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRC(\gpr1.dout_i[11]_i_7_0 ),
        .ADDRD(Q),
        .DIA(din[9]),
        .DIB(din[10]),
        .DIC(din[11]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_9_11_n_0),
        .DOB(RAM_reg_960_1023_9_11_n_1),
        .DOC(RAM_reg_960_1023_9_11_n_2),
        .DOD(NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_11_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_1 
       (.I0(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[0]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[0]_i_5_n_0 ),
        .O(dout_i0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_10 
       (.I0(RAM_reg_704_767_0_2_n_0),
        .I1(RAM_reg_640_703_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_11 
       (.I0(RAM_reg_960_1023_0_2_n_0),
        .I1(RAM_reg_896_959_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_12 
       (.I0(RAM_reg_192_255_0_2_n_0),
        .I1(RAM_reg_128_191_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_13 
       (.I0(RAM_reg_448_511_0_2_n_0),
        .I1(RAM_reg_384_447_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_6 
       (.I0(RAM_reg_1728_1791_0_2_n_0),
        .I1(RAM_reg_1664_1727_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_7 
       (.I0(RAM_reg_1984_2047_0_2_n_0),
        .I1(RAM_reg_1920_1983_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_8 
       (.I0(RAM_reg_1216_1279_0_2_n_0),
        .I1(RAM_reg_1152_1215_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_9 
       (.I0(RAM_reg_1472_1535_0_2_n_0),
        .I1(RAM_reg_1408_1471_0_2_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_0_2_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_1 
       (.I0(\gpr1.dout_i_reg[10]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[10]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[10]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[10]_i_5_n_0 ),
        .O(dout_i0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_10 
       (.I0(RAM_reg_704_767_9_11_n_1),
        .I1(RAM_reg_640_703_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_11 
       (.I0(RAM_reg_960_1023_9_11_n_1),
        .I1(RAM_reg_896_959_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_12 
       (.I0(RAM_reg_192_255_9_11_n_1),
        .I1(RAM_reg_128_191_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_13 
       (.I0(RAM_reg_448_511_9_11_n_1),
        .I1(RAM_reg_384_447_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_6 
       (.I0(RAM_reg_1728_1791_9_11_n_1),
        .I1(RAM_reg_1664_1727_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_7 
       (.I0(RAM_reg_1984_2047_9_11_n_1),
        .I1(RAM_reg_1920_1983_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_8 
       (.I0(RAM_reg_1216_1279_9_11_n_1),
        .I1(RAM_reg_1152_1215_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[10]_i_9 
       (.I0(RAM_reg_1472_1535_9_11_n_1),
        .I1(RAM_reg_1408_1471_9_11_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_9_11_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_9_11_n_1),
        .O(\gpr1.dout_i[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_1 
       (.I0(\gpr1.dout_i_reg[11]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[11]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[11]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[11]_i_5_n_0 ),
        .O(dout_i0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_10 
       (.I0(RAM_reg_704_767_9_11_n_2),
        .I1(RAM_reg_640_703_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_11 
       (.I0(RAM_reg_960_1023_9_11_n_2),
        .I1(RAM_reg_896_959_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_12 
       (.I0(RAM_reg_192_255_9_11_n_2),
        .I1(RAM_reg_128_191_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_13 
       (.I0(RAM_reg_448_511_9_11_n_2),
        .I1(RAM_reg_384_447_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_6 
       (.I0(RAM_reg_1728_1791_9_11_n_2),
        .I1(RAM_reg_1664_1727_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_7 
       (.I0(RAM_reg_1984_2047_9_11_n_2),
        .I1(RAM_reg_1920_1983_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_8 
       (.I0(RAM_reg_1216_1279_9_11_n_2),
        .I1(RAM_reg_1152_1215_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[11]_i_9 
       (.I0(RAM_reg_1472_1535_9_11_n_2),
        .I1(RAM_reg_1408_1471_9_11_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_9_11_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_9_11_n_2),
        .O(\gpr1.dout_i[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_10 
       (.I0(RAM_reg_1472_1535_12_12_n_0),
        .I1(RAM_reg_1408_1471_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_11 
       (.I0(RAM_reg_704_767_12_12_n_0),
        .I1(RAM_reg_640_703_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_12 
       (.I0(RAM_reg_960_1023_12_12_n_0),
        .I1(RAM_reg_896_959_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_13 
       (.I0(RAM_reg_192_255_12_12_n_0),
        .I1(RAM_reg_128_191_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_14 
       (.I0(RAM_reg_448_511_12_12_n_0),
        .I1(RAM_reg_384_447_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_2 
       (.I0(\gpr1.dout_i_reg[12]_i_3_n_0 ),
        .I1(\gpr1.dout_i_reg[12]_i_4_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[12]_i_5_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[12]_i_6_n_0 ),
        .O(dout_i0[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_7 
       (.I0(RAM_reg_1728_1791_12_12_n_0),
        .I1(RAM_reg_1664_1727_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_8 
       (.I0(RAM_reg_1984_2047_12_12_n_0),
        .I1(RAM_reg_1920_1983_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[12]_i_9 
       (.I0(RAM_reg_1216_1279_12_12_n_0),
        .I1(RAM_reg_1152_1215_12_12_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_12_12_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_12_12_n_0),
        .O(\gpr1.dout_i[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_1 
       (.I0(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[1]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[1]_i_5_n_0 ),
        .O(dout_i0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_10 
       (.I0(RAM_reg_704_767_0_2_n_1),
        .I1(RAM_reg_640_703_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_11 
       (.I0(RAM_reg_960_1023_0_2_n_1),
        .I1(RAM_reg_896_959_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_12 
       (.I0(RAM_reg_192_255_0_2_n_1),
        .I1(RAM_reg_128_191_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_13 
       (.I0(RAM_reg_448_511_0_2_n_1),
        .I1(RAM_reg_384_447_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_6 
       (.I0(RAM_reg_1728_1791_0_2_n_1),
        .I1(RAM_reg_1664_1727_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_7 
       (.I0(RAM_reg_1984_2047_0_2_n_1),
        .I1(RAM_reg_1920_1983_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_8 
       (.I0(RAM_reg_1216_1279_0_2_n_1),
        .I1(RAM_reg_1152_1215_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_9 
       (.I0(RAM_reg_1472_1535_0_2_n_1),
        .I1(RAM_reg_1408_1471_0_2_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_0_2_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_1 
       (.I0(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[2]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[2]_i_5_n_0 ),
        .O(dout_i0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_10 
       (.I0(RAM_reg_704_767_0_2_n_2),
        .I1(RAM_reg_640_703_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_11 
       (.I0(RAM_reg_960_1023_0_2_n_2),
        .I1(RAM_reg_896_959_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_12 
       (.I0(RAM_reg_192_255_0_2_n_2),
        .I1(RAM_reg_128_191_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_13 
       (.I0(RAM_reg_448_511_0_2_n_2),
        .I1(RAM_reg_384_447_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_6 
       (.I0(RAM_reg_1728_1791_0_2_n_2),
        .I1(RAM_reg_1664_1727_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_7 
       (.I0(RAM_reg_1984_2047_0_2_n_2),
        .I1(RAM_reg_1920_1983_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_8 
       (.I0(RAM_reg_1216_1279_0_2_n_2),
        .I1(RAM_reg_1152_1215_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_9 
       (.I0(RAM_reg_1472_1535_0_2_n_2),
        .I1(RAM_reg_1408_1471_0_2_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_0_2_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_1 
       (.I0(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[3]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[3]_i_5_n_0 ),
        .O(dout_i0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_10 
       (.I0(RAM_reg_704_767_3_5_n_0),
        .I1(RAM_reg_640_703_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_11 
       (.I0(RAM_reg_960_1023_3_5_n_0),
        .I1(RAM_reg_896_959_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_12 
       (.I0(RAM_reg_192_255_3_5_n_0),
        .I1(RAM_reg_128_191_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_13 
       (.I0(RAM_reg_448_511_3_5_n_0),
        .I1(RAM_reg_384_447_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_6 
       (.I0(RAM_reg_1728_1791_3_5_n_0),
        .I1(RAM_reg_1664_1727_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_7 
       (.I0(RAM_reg_1984_2047_3_5_n_0),
        .I1(RAM_reg_1920_1983_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_8 
       (.I0(RAM_reg_1216_1279_3_5_n_0),
        .I1(RAM_reg_1152_1215_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_9 
       (.I0(RAM_reg_1472_1535_3_5_n_0),
        .I1(RAM_reg_1408_1471_3_5_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_3_5_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_1 
       (.I0(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[4]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[4]_i_5_n_0 ),
        .O(dout_i0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_10 
       (.I0(RAM_reg_704_767_3_5_n_1),
        .I1(RAM_reg_640_703_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_11 
       (.I0(RAM_reg_960_1023_3_5_n_1),
        .I1(RAM_reg_896_959_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_12 
       (.I0(RAM_reg_192_255_3_5_n_1),
        .I1(RAM_reg_128_191_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_13 
       (.I0(RAM_reg_448_511_3_5_n_1),
        .I1(RAM_reg_384_447_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_6 
       (.I0(RAM_reg_1728_1791_3_5_n_1),
        .I1(RAM_reg_1664_1727_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_7 
       (.I0(RAM_reg_1984_2047_3_5_n_1),
        .I1(RAM_reg_1920_1983_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_8 
       (.I0(RAM_reg_1216_1279_3_5_n_1),
        .I1(RAM_reg_1152_1215_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_9 
       (.I0(RAM_reg_1472_1535_3_5_n_1),
        .I1(RAM_reg_1408_1471_3_5_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_3_5_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_1 
       (.I0(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[5]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[5]_i_5_n_0 ),
        .O(dout_i0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_10 
       (.I0(RAM_reg_704_767_3_5_n_2),
        .I1(RAM_reg_640_703_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_11 
       (.I0(RAM_reg_960_1023_3_5_n_2),
        .I1(RAM_reg_896_959_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_12 
       (.I0(RAM_reg_192_255_3_5_n_2),
        .I1(RAM_reg_128_191_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_13 
       (.I0(RAM_reg_448_511_3_5_n_2),
        .I1(RAM_reg_384_447_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_6 
       (.I0(RAM_reg_1728_1791_3_5_n_2),
        .I1(RAM_reg_1664_1727_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_7 
       (.I0(RAM_reg_1984_2047_3_5_n_2),
        .I1(RAM_reg_1920_1983_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_8 
       (.I0(RAM_reg_1216_1279_3_5_n_2),
        .I1(RAM_reg_1152_1215_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_9 
       (.I0(RAM_reg_1472_1535_3_5_n_2),
        .I1(RAM_reg_1408_1471_3_5_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_3_5_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_1 
       (.I0(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[6]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[6]_i_5_n_0 ),
        .O(dout_i0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_10 
       (.I0(RAM_reg_704_767_6_8_n_0),
        .I1(RAM_reg_640_703_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_11 
       (.I0(RAM_reg_960_1023_6_8_n_0),
        .I1(RAM_reg_896_959_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_12 
       (.I0(RAM_reg_192_255_6_8_n_0),
        .I1(RAM_reg_128_191_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_13 
       (.I0(RAM_reg_448_511_6_8_n_0),
        .I1(RAM_reg_384_447_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_6 
       (.I0(RAM_reg_1728_1791_6_8_n_0),
        .I1(RAM_reg_1664_1727_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_7 
       (.I0(RAM_reg_1984_2047_6_8_n_0),
        .I1(RAM_reg_1920_1983_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_8 
       (.I0(RAM_reg_1216_1279_6_8_n_0),
        .I1(RAM_reg_1152_1215_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_9 
       (.I0(RAM_reg_1472_1535_6_8_n_0),
        .I1(RAM_reg_1408_1471_6_8_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_6_8_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_6_8_n_0),
        .O(\gpr1.dout_i[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_1 
       (.I0(\gpr1.dout_i_reg[7]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[7]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[7]_i_5_n_0 ),
        .O(dout_i0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_10 
       (.I0(RAM_reg_704_767_6_8_n_1),
        .I1(RAM_reg_640_703_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_11 
       (.I0(RAM_reg_960_1023_6_8_n_1),
        .I1(RAM_reg_896_959_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_12 
       (.I0(RAM_reg_192_255_6_8_n_1),
        .I1(RAM_reg_128_191_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_13 
       (.I0(RAM_reg_448_511_6_8_n_1),
        .I1(RAM_reg_384_447_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_6 
       (.I0(RAM_reg_1728_1791_6_8_n_1),
        .I1(RAM_reg_1664_1727_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_7 
       (.I0(RAM_reg_1984_2047_6_8_n_1),
        .I1(RAM_reg_1920_1983_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_8 
       (.I0(RAM_reg_1216_1279_6_8_n_1),
        .I1(RAM_reg_1152_1215_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_9 
       (.I0(RAM_reg_1472_1535_6_8_n_1),
        .I1(RAM_reg_1408_1471_6_8_n_1),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_6_8_n_1),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_6_8_n_1),
        .O(\gpr1.dout_i[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_1 
       (.I0(\gpr1.dout_i_reg[8]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[8]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[8]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[8]_i_5_n_0 ),
        .O(dout_i0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_10 
       (.I0(RAM_reg_704_767_6_8_n_2),
        .I1(RAM_reg_640_703_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_11 
       (.I0(RAM_reg_960_1023_6_8_n_2),
        .I1(RAM_reg_896_959_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_12 
       (.I0(RAM_reg_192_255_6_8_n_2),
        .I1(RAM_reg_128_191_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_13 
       (.I0(RAM_reg_448_511_6_8_n_2),
        .I1(RAM_reg_384_447_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_6 
       (.I0(RAM_reg_1728_1791_6_8_n_2),
        .I1(RAM_reg_1664_1727_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_7 
       (.I0(RAM_reg_1984_2047_6_8_n_2),
        .I1(RAM_reg_1920_1983_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_8 
       (.I0(RAM_reg_1216_1279_6_8_n_2),
        .I1(RAM_reg_1152_1215_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[8]_i_9 
       (.I0(RAM_reg_1472_1535_6_8_n_2),
        .I1(RAM_reg_1408_1471_6_8_n_2),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_6_8_n_2),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_6_8_n_2),
        .O(\gpr1.dout_i[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_1 
       (.I0(\gpr1.dout_i_reg[9]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[9]_i_3_n_0 ),
        .I2(\gpr1.dout_i_reg[12]_0 [10]),
        .I3(\gpr1.dout_i_reg[9]_i_4_n_0 ),
        .I4(\gpr1.dout_i_reg[12]_0 [9]),
        .I5(\gpr1.dout_i_reg[9]_i_5_n_0 ),
        .O(dout_i0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_10 
       (.I0(RAM_reg_704_767_9_11_n_0),
        .I1(RAM_reg_640_703_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_576_639_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_512_575_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_11 
       (.I0(RAM_reg_960_1023_9_11_n_0),
        .I1(RAM_reg_896_959_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_832_895_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_768_831_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_12 
       (.I0(RAM_reg_192_255_9_11_n_0),
        .I1(RAM_reg_128_191_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_64_127_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_0_63_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_13 
       (.I0(RAM_reg_448_511_9_11_n_0),
        .I1(RAM_reg_384_447_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_320_383_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_256_319_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_6 
       (.I0(RAM_reg_1728_1791_9_11_n_0),
        .I1(RAM_reg_1664_1727_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1600_1663_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1536_1599_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_7 
       (.I0(RAM_reg_1984_2047_9_11_n_0),
        .I1(RAM_reg_1920_1983_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1856_1919_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1792_1855_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_8 
       (.I0(RAM_reg_1216_1279_9_11_n_0),
        .I1(RAM_reg_1152_1215_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1088_1151_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1024_1087_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[9]_i_9 
       (.I0(RAM_reg_1472_1535_9_11_n_0),
        .I1(RAM_reg_1408_1471_9_11_n_0),
        .I2(\gpr1.dout_i_reg[12]_0 [7]),
        .I3(RAM_reg_1344_1407_9_11_n_0),
        .I4(\gpr1.dout_i_reg[12]_0 [6]),
        .I5(RAM_reg_1280_1343_9_11_n_0),
        .O(\gpr1.dout_i[9]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[0]),
        .Q(dout[0]));
  MUXF7 \gpr1.dout_i_reg[0]_i_2 
       (.I0(\gpr1.dout_i[0]_i_6_n_0 ),
        .I1(\gpr1.dout_i[0]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_3 
       (.I0(\gpr1.dout_i[0]_i_8_n_0 ),
        .I1(\gpr1.dout_i[0]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_4 
       (.I0(\gpr1.dout_i[0]_i_10_n_0 ),
        .I1(\gpr1.dout_i[0]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_5 
       (.I0(\gpr1.dout_i[0]_i_12_n_0 ),
        .I1(\gpr1.dout_i[0]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[10]),
        .Q(dout[10]));
  MUXF7 \gpr1.dout_i_reg[10]_i_2 
       (.I0(\gpr1.dout_i[10]_i_6_n_0 ),
        .I1(\gpr1.dout_i[10]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_3 
       (.I0(\gpr1.dout_i[10]_i_8_n_0 ),
        .I1(\gpr1.dout_i[10]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_4 
       (.I0(\gpr1.dout_i[10]_i_10_n_0 ),
        .I1(\gpr1.dout_i[10]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[10]_i_5 
       (.I0(\gpr1.dout_i[10]_i_12_n_0 ),
        .I1(\gpr1.dout_i[10]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[10]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[11]),
        .Q(dout[11]));
  MUXF7 \gpr1.dout_i_reg[11]_i_2 
       (.I0(\gpr1.dout_i[11]_i_6_n_0 ),
        .I1(\gpr1.dout_i[11]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_3 
       (.I0(\gpr1.dout_i[11]_i_8_n_0 ),
        .I1(\gpr1.dout_i[11]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_4 
       (.I0(\gpr1.dout_i[11]_i_10_n_0 ),
        .I1(\gpr1.dout_i[11]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[11]_i_5 
       (.I0(\gpr1.dout_i[11]_i_12_n_0 ),
        .I1(\gpr1.dout_i[11]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[11]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[12]),
        .Q(dout[12]));
  MUXF7 \gpr1.dout_i_reg[12]_i_3 
       (.I0(\gpr1.dout_i[12]_i_7_n_0 ),
        .I1(\gpr1.dout_i[12]_i_8_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_4 
       (.I0(\gpr1.dout_i[12]_i_9_n_0 ),
        .I1(\gpr1.dout_i[12]_i_10_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_5 
       (.I0(\gpr1.dout_i[12]_i_11_n_0 ),
        .I1(\gpr1.dout_i[12]_i_12_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[12]_i_6 
       (.I0(\gpr1.dout_i[12]_i_13_n_0 ),
        .I1(\gpr1.dout_i[12]_i_14_n_0 ),
        .O(\gpr1.dout_i_reg[12]_i_6_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[1]),
        .Q(dout[1]));
  MUXF7 \gpr1.dout_i_reg[1]_i_2 
       (.I0(\gpr1.dout_i[1]_i_6_n_0 ),
        .I1(\gpr1.dout_i[1]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_3 
       (.I0(\gpr1.dout_i[1]_i_8_n_0 ),
        .I1(\gpr1.dout_i[1]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_4 
       (.I0(\gpr1.dout_i[1]_i_10_n_0 ),
        .I1(\gpr1.dout_i[1]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_5 
       (.I0(\gpr1.dout_i[1]_i_12_n_0 ),
        .I1(\gpr1.dout_i[1]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[2]),
        .Q(dout[2]));
  MUXF7 \gpr1.dout_i_reg[2]_i_2 
       (.I0(\gpr1.dout_i[2]_i_6_n_0 ),
        .I1(\gpr1.dout_i[2]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_3 
       (.I0(\gpr1.dout_i[2]_i_8_n_0 ),
        .I1(\gpr1.dout_i[2]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_4 
       (.I0(\gpr1.dout_i[2]_i_10_n_0 ),
        .I1(\gpr1.dout_i[2]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_5 
       (.I0(\gpr1.dout_i[2]_i_12_n_0 ),
        .I1(\gpr1.dout_i[2]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[3]),
        .Q(dout[3]));
  MUXF7 \gpr1.dout_i_reg[3]_i_2 
       (.I0(\gpr1.dout_i[3]_i_6_n_0 ),
        .I1(\gpr1.dout_i[3]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_3 
       (.I0(\gpr1.dout_i[3]_i_8_n_0 ),
        .I1(\gpr1.dout_i[3]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_4 
       (.I0(\gpr1.dout_i[3]_i_10_n_0 ),
        .I1(\gpr1.dout_i[3]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_5 
       (.I0(\gpr1.dout_i[3]_i_12_n_0 ),
        .I1(\gpr1.dout_i[3]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[4]),
        .Q(dout[4]));
  MUXF7 \gpr1.dout_i_reg[4]_i_2 
       (.I0(\gpr1.dout_i[4]_i_6_n_0 ),
        .I1(\gpr1.dout_i[4]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_3 
       (.I0(\gpr1.dout_i[4]_i_8_n_0 ),
        .I1(\gpr1.dout_i[4]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_4 
       (.I0(\gpr1.dout_i[4]_i_10_n_0 ),
        .I1(\gpr1.dout_i[4]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_5 
       (.I0(\gpr1.dout_i[4]_i_12_n_0 ),
        .I1(\gpr1.dout_i[4]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[5]),
        .Q(dout[5]));
  MUXF7 \gpr1.dout_i_reg[5]_i_2 
       (.I0(\gpr1.dout_i[5]_i_6_n_0 ),
        .I1(\gpr1.dout_i[5]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_3 
       (.I0(\gpr1.dout_i[5]_i_8_n_0 ),
        .I1(\gpr1.dout_i[5]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_4 
       (.I0(\gpr1.dout_i[5]_i_10_n_0 ),
        .I1(\gpr1.dout_i[5]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_5 
       (.I0(\gpr1.dout_i[5]_i_12_n_0 ),
        .I1(\gpr1.dout_i[5]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[6]),
        .Q(dout[6]));
  MUXF7 \gpr1.dout_i_reg[6]_i_2 
       (.I0(\gpr1.dout_i[6]_i_6_n_0 ),
        .I1(\gpr1.dout_i[6]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_3 
       (.I0(\gpr1.dout_i[6]_i_8_n_0 ),
        .I1(\gpr1.dout_i[6]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_4 
       (.I0(\gpr1.dout_i[6]_i_10_n_0 ),
        .I1(\gpr1.dout_i[6]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_5 
       (.I0(\gpr1.dout_i[6]_i_12_n_0 ),
        .I1(\gpr1.dout_i[6]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[7]),
        .Q(dout[7]));
  MUXF7 \gpr1.dout_i_reg[7]_i_2 
       (.I0(\gpr1.dout_i[7]_i_6_n_0 ),
        .I1(\gpr1.dout_i[7]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_3 
       (.I0(\gpr1.dout_i[7]_i_8_n_0 ),
        .I1(\gpr1.dout_i[7]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_4 
       (.I0(\gpr1.dout_i[7]_i_10_n_0 ),
        .I1(\gpr1.dout_i[7]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_5 
       (.I0(\gpr1.dout_i[7]_i_12_n_0 ),
        .I1(\gpr1.dout_i[7]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[8]),
        .Q(dout[8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_2 
       (.I0(\gpr1.dout_i[8]_i_6_n_0 ),
        .I1(\gpr1.dout_i[8]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_3 
       (.I0(\gpr1.dout_i[8]_i_8_n_0 ),
        .I1(\gpr1.dout_i[8]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_4 
       (.I0(\gpr1.dout_i[8]_i_10_n_0 ),
        .I1(\gpr1.dout_i[8]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[8]_i_5 
       (.I0(\gpr1.dout_i[8]_i_12_n_0 ),
        .I1(\gpr1.dout_i[8]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[8]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(dout_i0[9]),
        .Q(dout[9]));
  MUXF7 \gpr1.dout_i_reg[9]_i_2 
       (.I0(\gpr1.dout_i[9]_i_6_n_0 ),
        .I1(\gpr1.dout_i[9]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_2_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_3 
       (.I0(\gpr1.dout_i[9]_i_8_n_0 ),
        .I1(\gpr1.dout_i[9]_i_9_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_3_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_4 
       (.I0(\gpr1.dout_i[9]_i_10_n_0 ),
        .I1(\gpr1.dout_i[9]_i_11_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_4_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
  MUXF7 \gpr1.dout_i_reg[9]_i_5 
       (.I0(\gpr1.dout_i[9]_i_12_n_0 ),
        .I1(\gpr1.dout_i[9]_i_13_n_0 ),
        .O(\gpr1.dout_i_reg[9]_i_5_n_0 ),
        .S(\gpr1.dout_i_reg[12]_0 [8]));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module fifo_pipeout_fifo_generator_ramfifo
   (wr_rst_busy,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    empty,
    full,
    valid,
    dout,
    rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output wr_rst_busy;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output empty;
  output full;
  output valid;
  output [12:0]dout;
  input rst;
  input wr_clk;
  input rd_clk;
  input [12:0]din;
  input wr_en;
  input rd_en;

  wire [12:0]din;
  wire [12:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_21 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_22 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_23 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_24 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_25 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_26 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_27 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_28 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_29 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_30 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_31 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_32 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_33 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_34 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_35 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_36 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_37 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_38 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_4 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_5 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_7 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_8 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_9 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_13 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_14 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_15 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_16 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_17 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_18 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_19 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_20 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_21 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_22 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_23 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_24 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_25 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_26 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_27 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_28 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_29 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_30 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_31 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_32 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_33 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_34 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_35 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_36 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_37 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_38 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_39 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_40 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_41 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_42 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_43 ;
  wire [5:5]\gras.rsts/c0/v1_reg ;
  wire [5:5]\gras.rsts/c1/v1_reg ;
  wire [4:0]\gwas.wsts/c1/v1_reg ;
  wire [4:0]\gwas.wsts/c2/v1_reg ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire [10:0]rd_pntr;
  wire [10:10]rd_pntr_plus1;
  wire [10:10]rd_pntr_wr;
  wire rst;
  wire rst_full_ff_i;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire [10:0]wr_pntr;
  wire [9:0]wr_pntr_plus1;
  wire [9:0]wr_pntr_plus2;
  wire [9:0]wr_pntr_rd;
  wire wr_rst_busy;

  fifo_pipeout_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(wr_pntr_plus1),
        .RD_PNTR({\gntv_or_sync_fifo.gl0.rd_n_4 ,\gntv_or_sync_fifo.gl0.rd_n_5 ,\gntv_or_sync_fifo.gl0.rd_n_6 ,\gntv_or_sync_fifo.gl0.rd_n_7 ,\gntv_or_sync_fifo.gl0.rd_n_8 ,\gntv_or_sync_fifo.gl0.rd_n_9 }),
        .RD_PNTR_WR(rd_pntr_wr),
        .WR_PNTR_RD(wr_pntr_rd),
        .\gmux.gm[4].gms.ms (wr_pntr_plus2),
        .\gmux.gm[5].gms.ms (rd_pntr_plus1),
        .rd_clk(rd_clk),
        .\src_gray_ff_reg[10] (rd_pntr[10:6]),
        .\src_gray_ff_reg[10]_0 (wr_pntr),
        .v1_reg(\gwas.wsts/c1/v1_reg ),
        .v1_reg_0(\gwas.wsts/c2/v1_reg ),
        .v1_reg_1(\gras.rsts/c0/v1_reg ),
        .v1_reg_2(\gras.rsts/c1/v1_reg ),
        .wr_clk(wr_clk));
  fifo_pipeout_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.ADDRC({\gntv_or_sync_fifo.gl0.rd_n_21 ,\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 ,\gntv_or_sync_fifo.gl0.rd_n_25 ,\gntv_or_sync_fifo.gl0.rd_n_26 }),
        .AR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .Q(rd_pntr_plus1),
        .RD_PNTR({\gntv_or_sync_fifo.gl0.rd_n_4 ,\gntv_or_sync_fifo.gl0.rd_n_5 ,\gntv_or_sync_fifo.gl0.rd_n_6 ,\gntv_or_sync_fifo.gl0.rd_n_7 ,\gntv_or_sync_fifo.gl0.rd_n_8 ,\gntv_or_sync_fifo.gl0.rd_n_9 }),
        .WR_PNTR_RD(wr_pntr_rd),
        .empty(empty),
        .\gc0.count_d1_reg[10] (rd_pntr),
        .\gc0.count_d1_reg[5]_rep__0 ({\gntv_or_sync_fifo.gl0.rd_n_27 ,\gntv_or_sync_fifo.gl0.rd_n_28 ,\gntv_or_sync_fifo.gl0.rd_n_29 ,\gntv_or_sync_fifo.gl0.rd_n_30 ,\gntv_or_sync_fifo.gl0.rd_n_31 ,\gntv_or_sync_fifo.gl0.rd_n_32 }),
        .\gc0.count_d1_reg[5]_rep__1 ({\gntv_or_sync_fifo.gl0.rd_n_33 ,\gntv_or_sync_fifo.gl0.rd_n_34 ,\gntv_or_sync_fifo.gl0.rd_n_35 ,\gntv_or_sync_fifo.gl0.rd_n_36 ,\gntv_or_sync_fifo.gl0.rd_n_37 ,\gntv_or_sync_fifo.gl0.rd_n_38 }),
        .ram_empty_fb_i_reg(\gras.rsts/c0/v1_reg ),
        .ram_empty_fb_i_reg_0(\gras.rsts/c1/v1_reg ),
        .ram_rd_en_i(ram_rd_en_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .valid(valid));
  fifo_pipeout_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(rstblk_n_0),
        .Q(wr_pntr),
        .RD_PNTR_WR(rd_pntr_wr),
        .full(full),
        .\gic0.gc0.count_d1_reg[9] (wr_pntr_plus1),
        .\gic0.gc0.count_d2_reg[10] (\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .\gic0.gc0.count_d2_reg[10]_0 (\gntv_or_sync_fifo.gl0.wr_n_13 ),
        .\gic0.gc0.count_d2_reg[10]_1 (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gic0.gc0.count_d2_reg[10]_2 (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gic0.gc0.count_d2_reg[6] (\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .\gic0.gc0.count_d2_reg[6]_0 (\gntv_or_sync_fifo.gl0.wr_n_29 ),
        .\gic0.gc0.count_d2_reg[6]_1 (\gntv_or_sync_fifo.gl0.wr_n_30 ),
        .\gic0.gc0.count_d2_reg[6]_2 (\gntv_or_sync_fifo.gl0.wr_n_31 ),
        .\gic0.gc0.count_d2_reg[6]_3 (\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .\gic0.gc0.count_d2_reg[6]_4 (\gntv_or_sync_fifo.gl0.wr_n_38 ),
        .\gic0.gc0.count_d2_reg[7] (\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .\gic0.gc0.count_d2_reg[7]_0 (\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .\gic0.gc0.count_d2_reg[7]_1 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gic0.gc0.count_d2_reg[7]_2 (\gntv_or_sync_fifo.gl0.wr_n_27 ),
        .\gic0.gc0.count_d2_reg[7]_3 (\gntv_or_sync_fifo.gl0.wr_n_34 ),
        .\gic0.gc0.count_d2_reg[7]_4 (\gntv_or_sync_fifo.gl0.wr_n_39 ),
        .\gic0.gc0.count_d2_reg[7]_5 (\gntv_or_sync_fifo.gl0.wr_n_42 ),
        .\gic0.gc0.count_d2_reg[7]_6 (\gntv_or_sync_fifo.gl0.wr_n_43 ),
        .\gic0.gc0.count_d2_reg[8] (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gic0.gc0.count_d2_reg[8]_0 (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gic0.gc0.count_d2_reg[8]_1 (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gic0.gc0.count_d2_reg[8]_2 (\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .\gic0.gc0.count_d2_reg[8]_3 (\gntv_or_sync_fifo.gl0.wr_n_35 ),
        .\gic0.gc0.count_d2_reg[8]_4 (\gntv_or_sync_fifo.gl0.wr_n_37 ),
        .\gic0.gc0.count_d2_reg[8]_5 (\gntv_or_sync_fifo.gl0.wr_n_40 ),
        .\gic0.gc0.count_d2_reg[8]_6 (\gntv_or_sync_fifo.gl0.wr_n_41 ),
        .\gic0.gc0.count_d2_reg[9] (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gic0.gc0.count_d2_reg[9]_0 (\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .\gic0.gc0.count_d2_reg[9]_1 (\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .\gic0.gc0.count_d2_reg[9]_2 (\gntv_or_sync_fifo.gl0.wr_n_28 ),
        .\gic0.gc0.count_d2_reg[9]_3 (\gntv_or_sync_fifo.gl0.wr_n_32 ),
        .\gic0.gc0.count_d2_reg[9]_4 (\gntv_or_sync_fifo.gl0.wr_n_33 ),
        .\gic0.gc0.count_reg[9] (wr_pntr_plus2),
        .\gmux.gm[5].gms.ms (\gwas.wsts/c1/v1_reg ),
        .\gmux.gm[5].gms.ms_0 (\gwas.wsts/c2/v1_reg ),
        .out(rst_full_ff_i),
        .ram_full_fb_i_reg(rst_full_gen_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_pipeout_memory \gntv_or_sync_fifo.mem 
       (.ADDRC({\gntv_or_sync_fifo.gl0.rd_n_21 ,\gntv_or_sync_fifo.gl0.rd_n_22 ,\gntv_or_sync_fifo.gl0.rd_n_23 ,\gntv_or_sync_fifo.gl0.rd_n_24 ,\gntv_or_sync_fifo.gl0.rd_n_25 ,\gntv_or_sync_fifo.gl0.rd_n_26 }),
        .AR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .E(ram_rd_en_i),
        .Q(wr_pntr[5:0]),
        .RD_PNTR({\gntv_or_sync_fifo.gl0.rd_n_4 ,\gntv_or_sync_fifo.gl0.rd_n_5 ,\gntv_or_sync_fifo.gl0.rd_n_6 ,\gntv_or_sync_fifo.gl0.rd_n_7 ,\gntv_or_sync_fifo.gl0.rd_n_8 ,\gntv_or_sync_fifo.gl0.rd_n_9 }),
        .din(din),
        .dout(dout),
        .\gpr1.dout_i[11]_i_7 ({\gntv_or_sync_fifo.gl0.rd_n_33 ,\gntv_or_sync_fifo.gl0.rd_n_34 ,\gntv_or_sync_fifo.gl0.rd_n_35 ,\gntv_or_sync_fifo.gl0.rd_n_36 ,\gntv_or_sync_fifo.gl0.rd_n_37 ,\gntv_or_sync_fifo.gl0.rd_n_38 }),
        .\gpr1.dout_i[2]_i_10 (\gntv_or_sync_fifo.gl0.wr_n_33 ),
        .\gpr1.dout_i[2]_i_10_0 (\gntv_or_sync_fifo.gl0.wr_n_35 ),
        .\gpr1.dout_i[2]_i_10_1 (\gntv_or_sync_fifo.gl0.wr_n_37 ),
        .\gpr1.dout_i[2]_i_10_2 (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gpr1.dout_i[2]_i_11 (\gntv_or_sync_fifo.gl0.wr_n_39 ),
        .\gpr1.dout_i[2]_i_11_0 (\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .\gpr1.dout_i[2]_i_11_1 (\gntv_or_sync_fifo.gl0.wr_n_29 ),
        .\gpr1.dout_i[2]_i_11_2 (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gpr1.dout_i[2]_i_12 (\gntv_or_sync_fifo.gl0.wr_n_13 ),
        .\gpr1.dout_i[2]_i_12_0 (\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .\gpr1.dout_i[2]_i_12_1 (\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .\gpr1.dout_i[2]_i_12_2 (\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .\gpr1.dout_i[2]_i_13 (\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .\gpr1.dout_i[2]_i_13_0 (\gntv_or_sync_fifo.gl0.wr_n_28 ),
        .\gpr1.dout_i[2]_i_13_1 (\gntv_or_sync_fifo.gl0.wr_n_32 ),
        .\gpr1.dout_i[2]_i_13_2 (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gpr1.dout_i[2]_i_6 (\gntv_or_sync_fifo.gl0.wr_n_43 ),
        .\gpr1.dout_i[2]_i_6_0 (\gntv_or_sync_fifo.gl0.wr_n_34 ),
        .\gpr1.dout_i[2]_i_6_1 (\gntv_or_sync_fifo.gl0.wr_n_36 ),
        .\gpr1.dout_i[2]_i_6_2 (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gpr1.dout_i[2]_i_7 (\gntv_or_sync_fifo.gl0.wr_n_38 ),
        .\gpr1.dout_i[2]_i_7_0 (\gntv_or_sync_fifo.gl0.wr_n_27 ),
        .\gpr1.dout_i[2]_i_7_1 (\gntv_or_sync_fifo.gl0.wr_n_31 ),
        .\gpr1.dout_i[2]_i_7_2 (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gpr1.dout_i[2]_i_8 (\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .\gpr1.dout_i[2]_i_8_0 (\gntv_or_sync_fifo.gl0.wr_n_40 ),
        .\gpr1.dout_i[2]_i_8_1 (\gntv_or_sync_fifo.gl0.wr_n_41 ),
        .\gpr1.dout_i[2]_i_8_2 (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gpr1.dout_i[2]_i_9 (\gntv_or_sync_fifo.gl0.wr_n_42 ),
        .\gpr1.dout_i[2]_i_9_0 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gpr1.dout_i[2]_i_9_1 (\gntv_or_sync_fifo.gl0.wr_n_30 ),
        .\gpr1.dout_i[2]_i_9_2 (\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .\gpr1.dout_i[8]_i_7 ({\gntv_or_sync_fifo.gl0.rd_n_27 ,\gntv_or_sync_fifo.gl0.rd_n_28 ,\gntv_or_sync_fifo.gl0.rd_n_29 ,\gntv_or_sync_fifo.gl0.rd_n_30 ,\gntv_or_sync_fifo.gl0.rd_n_31 ,\gntv_or_sync_fifo.gl0.rd_n_32 }),
        .\gpr1.dout_i_reg[12] (rd_pntr),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  fifo_pipeout_reset_blk_ramfifo rstblk
       (.AR(rstblk_n_0),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_gen_i),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 (\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .out(rst_full_ff_i),
        .rd_clk(rd_clk),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module fifo_pipeout_fifo_generator_top
   (wr_rst_busy,
    AR,
    empty,
    full,
    valid,
    dout,
    rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output wr_rst_busy;
  output [0:0]AR;
  output empty;
  output full;
  output valid;
  output [12:0]dout;
  input rst;
  input wr_clk;
  input rd_clk;
  input [12:0]din;
  input wr_en;
  input rd_en;

  wire [0:0]AR;
  wire [12:0]din;
  wire [12:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  fifo_pipeout_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (AR),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "11" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "13" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "13" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "1" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "2kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "2045" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "2044" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "11" *) 
(* C_RD_DEPTH = "2048" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "11" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "11" *) 
(* C_WR_DEPTH = "2048" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "11" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_5" *) 
module fifo_pipeout_fifo_generator_v13_2_5
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [12:0]din;
  input wr_en;
  input rd_en;
  input [10:0]prog_empty_thresh;
  input [10:0]prog_empty_thresh_assert;
  input [10:0]prog_empty_thresh_negate;
  input [10:0]prog_full_thresh;
  input [10:0]prog_full_thresh_assert;
  input [10:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [12:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [10:0]data_count;
  output [10:0]rd_data_count;
  output [10:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire [12:0]din;
  wire [12:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[10] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  fifo_pipeout_fifo_generator_v13_2_5_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rd_rst_busy),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_5_synth" *) 
module fifo_pipeout_fifo_generator_v13_2_5_synth
   (wr_rst_busy,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    empty,
    full,
    valid,
    dout,
    rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output wr_rst_busy;
  output \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output empty;
  output full;
  output valid;
  output [12:0]dout;
  input rst;
  input wr_clk;
  input rd_clk;
  input [12:0]din;
  input wr_en;
  input rd_en;

  wire [12:0]din;
  wire [12:0]dout;
  wire empty;
  wire full;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  fifo_pipeout_fifo_generator_top \gconvfifo.rf 
       (.AR(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module fifo_pipeout_memory
   (dout,
    wr_clk,
    din,
    \gpr1.dout_i[2]_i_12 ,
    \gpr1.dout_i_reg[12] ,
    Q,
    \gpr1.dout_i[2]_i_12_0 ,
    \gpr1.dout_i[2]_i_12_1 ,
    \gpr1.dout_i[2]_i_12_2 ,
    \gpr1.dout_i[2]_i_13 ,
    \gpr1.dout_i[2]_i_13_0 ,
    \gpr1.dout_i[2]_i_13_1 ,
    \gpr1.dout_i[2]_i_13_2 ,
    \gpr1.dout_i[2]_i_10 ,
    \gpr1.dout_i[2]_i_10_0 ,
    \gpr1.dout_i[2]_i_10_1 ,
    \gpr1.dout_i[2]_i_10_2 ,
    \gpr1.dout_i[2]_i_11 ,
    \gpr1.dout_i[2]_i_11_0 ,
    \gpr1.dout_i[2]_i_11_1 ,
    \gpr1.dout_i[2]_i_11_2 ,
    \gpr1.dout_i[2]_i_8 ,
    \gpr1.dout_i[2]_i_8_0 ,
    \gpr1.dout_i[2]_i_8_1 ,
    \gpr1.dout_i[2]_i_8_2 ,
    \gpr1.dout_i[2]_i_9 ,
    \gpr1.dout_i[2]_i_9_0 ,
    \gpr1.dout_i[2]_i_9_1 ,
    \gpr1.dout_i[2]_i_9_2 ,
    \gpr1.dout_i[2]_i_6 ,
    \gpr1.dout_i[2]_i_6_0 ,
    \gpr1.dout_i[2]_i_6_1 ,
    \gpr1.dout_i[2]_i_6_2 ,
    \gpr1.dout_i[2]_i_7 ,
    \gpr1.dout_i[2]_i_7_0 ,
    \gpr1.dout_i[2]_i_7_1 ,
    \gpr1.dout_i[2]_i_7_2 ,
    ADDRC,
    \gpr1.dout_i[8]_i_7 ,
    \gpr1.dout_i[11]_i_7 ,
    RD_PNTR,
    E,
    rd_clk,
    AR);
  output [12:0]dout;
  input wr_clk;
  input [12:0]din;
  input \gpr1.dout_i[2]_i_12 ;
  input [10:0]\gpr1.dout_i_reg[12] ;
  input [5:0]Q;
  input \gpr1.dout_i[2]_i_12_0 ;
  input \gpr1.dout_i[2]_i_12_1 ;
  input \gpr1.dout_i[2]_i_12_2 ;
  input \gpr1.dout_i[2]_i_13 ;
  input \gpr1.dout_i[2]_i_13_0 ;
  input \gpr1.dout_i[2]_i_13_1 ;
  input \gpr1.dout_i[2]_i_13_2 ;
  input \gpr1.dout_i[2]_i_10 ;
  input \gpr1.dout_i[2]_i_10_0 ;
  input \gpr1.dout_i[2]_i_10_1 ;
  input \gpr1.dout_i[2]_i_10_2 ;
  input \gpr1.dout_i[2]_i_11 ;
  input \gpr1.dout_i[2]_i_11_0 ;
  input \gpr1.dout_i[2]_i_11_1 ;
  input \gpr1.dout_i[2]_i_11_2 ;
  input \gpr1.dout_i[2]_i_8 ;
  input \gpr1.dout_i[2]_i_8_0 ;
  input \gpr1.dout_i[2]_i_8_1 ;
  input \gpr1.dout_i[2]_i_8_2 ;
  input \gpr1.dout_i[2]_i_9 ;
  input \gpr1.dout_i[2]_i_9_0 ;
  input \gpr1.dout_i[2]_i_9_1 ;
  input \gpr1.dout_i[2]_i_9_2 ;
  input \gpr1.dout_i[2]_i_6 ;
  input \gpr1.dout_i[2]_i_6_0 ;
  input \gpr1.dout_i[2]_i_6_1 ;
  input \gpr1.dout_i[2]_i_6_2 ;
  input \gpr1.dout_i[2]_i_7 ;
  input \gpr1.dout_i[2]_i_7_0 ;
  input \gpr1.dout_i[2]_i_7_1 ;
  input \gpr1.dout_i[2]_i_7_2 ;
  input [5:0]ADDRC;
  input [5:0]\gpr1.dout_i[8]_i_7 ;
  input [5:0]\gpr1.dout_i[11]_i_7 ;
  input [5:0]RD_PNTR;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRC;
  wire [0:0]AR;
  wire [0:0]E;
  wire [5:0]Q;
  wire [5:0]RD_PNTR;
  wire [12:0]din;
  wire [12:0]dout;
  wire [5:0]\gpr1.dout_i[11]_i_7 ;
  wire \gpr1.dout_i[2]_i_10 ;
  wire \gpr1.dout_i[2]_i_10_0 ;
  wire \gpr1.dout_i[2]_i_10_1 ;
  wire \gpr1.dout_i[2]_i_10_2 ;
  wire \gpr1.dout_i[2]_i_11 ;
  wire \gpr1.dout_i[2]_i_11_0 ;
  wire \gpr1.dout_i[2]_i_11_1 ;
  wire \gpr1.dout_i[2]_i_11_2 ;
  wire \gpr1.dout_i[2]_i_12 ;
  wire \gpr1.dout_i[2]_i_12_0 ;
  wire \gpr1.dout_i[2]_i_12_1 ;
  wire \gpr1.dout_i[2]_i_12_2 ;
  wire \gpr1.dout_i[2]_i_13 ;
  wire \gpr1.dout_i[2]_i_13_0 ;
  wire \gpr1.dout_i[2]_i_13_1 ;
  wire \gpr1.dout_i[2]_i_13_2 ;
  wire \gpr1.dout_i[2]_i_6 ;
  wire \gpr1.dout_i[2]_i_6_0 ;
  wire \gpr1.dout_i[2]_i_6_1 ;
  wire \gpr1.dout_i[2]_i_6_2 ;
  wire \gpr1.dout_i[2]_i_7 ;
  wire \gpr1.dout_i[2]_i_7_0 ;
  wire \gpr1.dout_i[2]_i_7_1 ;
  wire \gpr1.dout_i[2]_i_7_2 ;
  wire \gpr1.dout_i[2]_i_8 ;
  wire \gpr1.dout_i[2]_i_8_0 ;
  wire \gpr1.dout_i[2]_i_8_1 ;
  wire \gpr1.dout_i[2]_i_8_2 ;
  wire \gpr1.dout_i[2]_i_9 ;
  wire \gpr1.dout_i[2]_i_9_0 ;
  wire \gpr1.dout_i[2]_i_9_1 ;
  wire \gpr1.dout_i[2]_i_9_2 ;
  wire [5:0]\gpr1.dout_i[8]_i_7 ;
  wire [10:0]\gpr1.dout_i_reg[12] ;
  wire rd_clk;
  wire wr_clk;

  fifo_pipeout_dmem \gdm.dm_gen.dm 
       (.ADDRC(ADDRC),
        .AR(AR),
        .E(E),
        .Q(Q),
        .RD_PNTR(RD_PNTR),
        .din(din),
        .dout(dout),
        .\gpr1.dout_i[11]_i_7_0 (\gpr1.dout_i[11]_i_7 ),
        .\gpr1.dout_i[2]_i_10_0 (\gpr1.dout_i[2]_i_10 ),
        .\gpr1.dout_i[2]_i_10_1 (\gpr1.dout_i[2]_i_10_0 ),
        .\gpr1.dout_i[2]_i_10_2 (\gpr1.dout_i[2]_i_10_1 ),
        .\gpr1.dout_i[2]_i_10_3 (\gpr1.dout_i[2]_i_10_2 ),
        .\gpr1.dout_i[2]_i_11_0 (\gpr1.dout_i[2]_i_11 ),
        .\gpr1.dout_i[2]_i_11_1 (\gpr1.dout_i[2]_i_11_0 ),
        .\gpr1.dout_i[2]_i_11_2 (\gpr1.dout_i[2]_i_11_1 ),
        .\gpr1.dout_i[2]_i_11_3 (\gpr1.dout_i[2]_i_11_2 ),
        .\gpr1.dout_i[2]_i_12_0 (\gpr1.dout_i[2]_i_12 ),
        .\gpr1.dout_i[2]_i_12_1 (\gpr1.dout_i[2]_i_12_0 ),
        .\gpr1.dout_i[2]_i_12_2 (\gpr1.dout_i[2]_i_12_1 ),
        .\gpr1.dout_i[2]_i_12_3 (\gpr1.dout_i[2]_i_12_2 ),
        .\gpr1.dout_i[2]_i_13_0 (\gpr1.dout_i[2]_i_13 ),
        .\gpr1.dout_i[2]_i_13_1 (\gpr1.dout_i[2]_i_13_0 ),
        .\gpr1.dout_i[2]_i_13_2 (\gpr1.dout_i[2]_i_13_1 ),
        .\gpr1.dout_i[2]_i_13_3 (\gpr1.dout_i[2]_i_13_2 ),
        .\gpr1.dout_i[2]_i_6_0 (\gpr1.dout_i[2]_i_6 ),
        .\gpr1.dout_i[2]_i_6_1 (\gpr1.dout_i[2]_i_6_0 ),
        .\gpr1.dout_i[2]_i_6_2 (\gpr1.dout_i[2]_i_6_1 ),
        .\gpr1.dout_i[2]_i_6_3 (\gpr1.dout_i[2]_i_6_2 ),
        .\gpr1.dout_i[2]_i_7_0 (\gpr1.dout_i[2]_i_7 ),
        .\gpr1.dout_i[2]_i_7_1 (\gpr1.dout_i[2]_i_7_0 ),
        .\gpr1.dout_i[2]_i_7_2 (\gpr1.dout_i[2]_i_7_1 ),
        .\gpr1.dout_i[2]_i_7_3 (\gpr1.dout_i[2]_i_7_2 ),
        .\gpr1.dout_i[2]_i_8_0 (\gpr1.dout_i[2]_i_8 ),
        .\gpr1.dout_i[2]_i_8_1 (\gpr1.dout_i[2]_i_8_0 ),
        .\gpr1.dout_i[2]_i_8_2 (\gpr1.dout_i[2]_i_8_1 ),
        .\gpr1.dout_i[2]_i_8_3 (\gpr1.dout_i[2]_i_8_2 ),
        .\gpr1.dout_i[2]_i_9_0 (\gpr1.dout_i[2]_i_9 ),
        .\gpr1.dout_i[2]_i_9_1 (\gpr1.dout_i[2]_i_9_0 ),
        .\gpr1.dout_i[2]_i_9_2 (\gpr1.dout_i[2]_i_9_1 ),
        .\gpr1.dout_i[2]_i_9_3 (\gpr1.dout_i[2]_i_9_2 ),
        .\gpr1.dout_i[8]_i_7_0 (\gpr1.dout_i[8]_i_7 ),
        .\gpr1.dout_i_reg[12]_0 (\gpr1.dout_i_reg[12] ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module fifo_pipeout_rd_bin_cntr
   (Q,
    v1_reg,
    RD_PNTR,
    \gc0.count_d1_reg[10]_0 ,
    v1_reg_0,
    ADDRC,
    \gc0.count_d1_reg[5]_rep__0_0 ,
    \gc0.count_d1_reg[5]_rep__1_0 ,
    WR_PNTR_RD,
    E,
    rd_clk,
    AR);
  output [0:0]Q;
  output [4:0]v1_reg;
  output [5:0]RD_PNTR;
  output [10:0]\gc0.count_d1_reg[10]_0 ;
  output [4:0]v1_reg_0;
  output [5:0]ADDRC;
  output [5:0]\gc0.count_d1_reg[5]_rep__0_0 ;
  output [5:0]\gc0.count_d1_reg[5]_rep__1_0 ;
  input [9:0]WR_PNTR_RD;
  input [0:0]E;
  input rd_clk;
  input [0:0]AR;

  wire [5:0]ADDRC;
  wire [0:0]AR;
  wire [0:0]E;
  wire [0:0]Q;
  wire [5:0]RD_PNTR;
  wire [9:0]WR_PNTR_RD;
  wire \gc0.count[10]_i_2_n_0 ;
  wire [10:0]\gc0.count_d1_reg[10]_0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__0_0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__1_0 ;
  wire [10:0]plusOp__0;
  wire rd_clk;
  wire [9:0]rd_pntr_plus1;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp__0[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[10]_i_1 
       (.I0(rd_pntr_plus1[8]),
        .I1(rd_pntr_plus1[6]),
        .I2(\gc0.count[10]_i_2_n_0 ),
        .I3(rd_pntr_plus1[7]),
        .I4(rd_pntr_plus1[9]),
        .I5(Q),
        .O(plusOp__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[10]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\gc0.count[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[10]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[10]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[10]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(rd_pntr_plus1[7]),
        .I1(\gc0.count[10]_i_2_n_0 ),
        .I2(rd_pntr_plus1[6]),
        .I3(rd_pntr_plus1[8]),
        .I4(rd_pntr_plus1[9]),
        .O(plusOp__0[9]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(\gc0.count_d1_reg[10]_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(ADDRC[0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [0]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[0]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0]_rep__2 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[0]),
        .Q(RD_PNTR[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(Q),
        .Q(\gc0.count_d1_reg[10]_0 [10]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(\gc0.count_d1_reg[10]_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(ADDRC[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1]_rep__2 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[1]),
        .Q(RD_PNTR[1]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(\gc0.count_d1_reg[10]_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(ADDRC[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[2]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2]_rep__2 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[2]),
        .Q(RD_PNTR[2]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gc0.count_d1_reg[10]_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(ADDRC[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[3]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3]_rep__2 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[3]),
        .Q(RD_PNTR[3]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gc0.count_d1_reg[10]_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(ADDRC[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[4]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4]_rep__2 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[4]),
        .Q(RD_PNTR[4]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(\gc0.count_d1_reg[10]_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(ADDRC[5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__0 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(\gc0.count_d1_reg[5]_rep__0_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__1 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(\gc0.count_d1_reg[5]_rep__1_0 [5]));
  (* ORIG_CELL_NAME = "gc0.count_d1_reg[5]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5]_rep__2 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[5]),
        .Q(RD_PNTR[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[6]),
        .Q(\gc0.count_d1_reg[10]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[7]),
        .Q(\gc0.count_d1_reg[10]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[8]),
        .Q(\gc0.count_d1_reg[10]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(rd_pntr_plus1[9]),
        .Q(\gc0.count_d1_reg[10]_0 [9]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(rd_pntr_plus1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[10]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(rd_pntr_plus1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(rd_pntr_plus1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(rd_pntr_plus1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[5]),
        .Q(rd_pntr_plus1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[6]),
        .Q(rd_pntr_plus1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[7]),
        .Q(rd_pntr_plus1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[8]),
        .Q(rd_pntr_plus1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[9]),
        .Q(rd_pntr_plus1[9]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(RD_PNTR[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(RD_PNTR[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(RD_PNTR[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(RD_PNTR[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(rd_pntr_plus1[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus1[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(RD_PNTR[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(RD_PNTR[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(rd_pntr_plus1[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(rd_pntr_plus1[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(\gc0.count_d1_reg[10]_0 [6]),
        .I1(WR_PNTR_RD[6]),
        .I2(\gc0.count_d1_reg[10]_0 [7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(rd_pntr_plus1[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(rd_pntr_plus1[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(\gc0.count_d1_reg[10]_0 [8]),
        .I1(WR_PNTR_RD[8]),
        .I2(\gc0.count_d1_reg[10]_0 [9]),
        .I3(WR_PNTR_RD[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(rd_pntr_plus1[8]),
        .I1(WR_PNTR_RD[8]),
        .I2(rd_pntr_plus1[9]),
        .I3(WR_PNTR_RD[9]),
        .O(v1_reg_0[4]));
endmodule

(* ORIG_REF_NAME = "rd_handshaking_flags" *) 
module fifo_pipeout_rd_handshaking_flags
   (valid,
    ram_valid_i,
    rd_clk,
    AR);
  output valid;
  input ram_valid_i;
  input rd_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire ram_valid_i;
  wire rd_clk;
  wire valid;

  FDCE #(
    .INIT(1'b0)) 
    \gv.ram_valid_d1_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(ram_valid_i),
        .Q(valid));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module fifo_pipeout_rd_logic
   (empty,
    valid,
    ram_rd_en_i,
    Q,
    RD_PNTR,
    \gc0.count_d1_reg[10] ,
    ADDRC,
    \gc0.count_d1_reg[5]_rep__0 ,
    \gc0.count_d1_reg[5]_rep__1 ,
    ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    rd_clk,
    AR,
    rd_en,
    WR_PNTR_RD);
  output empty;
  output valid;
  output ram_rd_en_i;
  output [0:0]Q;
  output [5:0]RD_PNTR;
  output [10:0]\gc0.count_d1_reg[10] ;
  output [5:0]ADDRC;
  output [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  output [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  input [0:0]ram_empty_fb_i_reg;
  input [0:0]ram_empty_fb_i_reg_0;
  input rd_clk;
  input [0:0]AR;
  input rd_en;
  input [9:0]WR_PNTR_RD;

  wire [5:0]ADDRC;
  wire [0:0]AR;
  wire [0:0]Q;
  wire [5:0]RD_PNTR;
  wire [9:0]WR_PNTR_RD;
  wire [4:0]\c0/v1_reg ;
  wire [4:0]\c1/v1_reg ;
  wire empty;
  wire [10:0]\gc0.count_d1_reg[10] ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__0 ;
  wire [5:0]\gc0.count_d1_reg[5]_rep__1 ;
  wire [0:0]ram_empty_fb_i_reg;
  wire [0:0]ram_empty_fb_i_reg_0;
  wire ram_rd_en_i;
  wire ram_valid_i;
  wire rd_clk;
  wire rd_en;
  wire valid;

  fifo_pipeout_rd_status_flags_as \gras.rsts 
       (.AR(AR),
        .E(ram_rd_en_i),
        .empty(empty),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .ram_empty_fb_i_reg_1(ram_empty_fb_i_reg_0),
        .ram_valid_i(ram_valid_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
  fifo_pipeout_rd_handshaking_flags \grhf.rhf 
       (.AR(AR),
        .ram_valid_i(ram_valid_i),
        .rd_clk(rd_clk),
        .valid(valid));
  fifo_pipeout_rd_bin_cntr rpntr
       (.ADDRC(ADDRC),
        .AR(AR),
        .E(ram_rd_en_i),
        .Q(Q),
        .RD_PNTR(RD_PNTR),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc0.count_d1_reg[10]_0 (\gc0.count_d1_reg[10] ),
        .\gc0.count_d1_reg[5]_rep__0_0 (\gc0.count_d1_reg[5]_rep__0 ),
        .\gc0.count_d1_reg[5]_rep__1_0 (\gc0.count_d1_reg[5]_rep__1 ),
        .rd_clk(rd_clk),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module fifo_pipeout_rd_status_flags_as
   (empty,
    E,
    ram_valid_i,
    v1_reg,
    ram_empty_fb_i_reg_0,
    v1_reg_0,
    ram_empty_fb_i_reg_1,
    rd_clk,
    AR,
    rd_en);
  output empty;
  output [0:0]E;
  output ram_valid_i;
  input [4:0]v1_reg;
  input [0:0]ram_empty_fb_i_reg_0;
  input [4:0]v1_reg_0;
  input [0:0]ram_empty_fb_i_reg_1;
  input rd_clk;
  input [0:0]AR;
  input rd_en;

  wire [0:0]AR;
  wire [0:0]E;
  wire c0_n_0;
  wire comp1;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire [0:0]ram_empty_fb_i_reg_0;
  wire [0:0]ram_empty_fb_i_reg_1;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_valid_i;
  wire rd_clk;
  wire rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign empty = ram_empty_i;
  fifo_pipeout_compare_1 c0
       (.comp1(comp1),
        .out(ram_empty_fb_i),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg_0),
        .rd_en(rd_en),
        .rd_en_0(c0_n_0),
        .v1_reg(v1_reg));
  fifo_pipeout_compare_2 c1
       (.comp1(comp1),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg_1),
        .v1_reg_0(v1_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \gpr1.dout_i[12]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \gv.ram_valid_d1_i_1 
       (.I0(rd_en),
        .I1(ram_empty_i),
        .O(ram_valid_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .PRE(AR),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .PRE(AR),
        .Q(ram_empty_i));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module fifo_pipeout_reset_blk_ramfifo
   (AR,
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ,
    out,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    wr_rst_busy,
    rst,
    wr_clk,
    rd_clk);
  output [0:0]AR;
  output [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  output out;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output wr_rst_busy;
  input rst;
  input wr_clk;
  input rd_clk;

  wire [0:0]AR;
  wire dest_out;
  wire \grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire [0:0]\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  wire rd_clk;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire [3:0]rd_rst_wr_ext;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d4;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d5;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d6;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d7;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire sckt_rd_rst_wr;
  wire wr_clk;
  wire wr_rst_busy;
  wire [1:0]wr_rst_rd_ext;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d3;
  assign out = rst_d2;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_busy),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  LUT2 #(
    .INIT(4'hE)) 
    \grstd1.grst_full.grst_f.rst_d3_i_1 
       (.I0(rst_d2),
        .I1(AR),
        .O(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grstd1.grst_full.grst_f.rst_d3_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d4_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d3),
        .PRE(rst_wr_reg2),
        .Q(rst_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(wr_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(wr_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b1),
        .O(rst_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(wr_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(rd_rst_reg[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(rd_rst_reg[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(rd_rst_reg[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(rst_wr_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(rst_rd_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(rst_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(rst_d6));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(rst_wr_reg2),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_pipeout_xpm_cdc_async_rst \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst 
       (.dest_arst(rst_rd_reg2),
        .dest_clk(rd_clk),
        .src_arst(rst));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ),
        .I1(wr_rst_rd_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(AR),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(AR));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(wr_rst_busy),
        .I1(rd_rst_wr_ext[1]),
        .I2(rd_rst_wr_ext[0]),
        .I3(rd_rst_wr_ext[3]),
        .I4(rd_rst_wr_ext[2]),
        .O(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_busy));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(rst_rd_reg2),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_pipeout_xpm_cdc_single \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(wr_clk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(rd_clk),
        .src_in(\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg_0 ));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_pipeout_xpm_cdc_single__2 \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(rd_clk),
        .dest_out(dest_out),
        .src_clk(wr_clk),
        .src_in(AR));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* INV_DEF_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* RST_ACTIVE_HIGH = "1" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_pipeout_xpm_cdc_async_rst__1 \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst 
       (.dest_arst(rst_wr_reg2),
        .dest_clk(wr_clk),
        .src_arst(rst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module fifo_pipeout_wr_bin_cntr
   (\gic0.gc0.count_d2_reg[10]_0 ,
    Q,
    \gic0.gc0.count_d2_reg[10]_1 ,
    \gic0.gc0.count_d2_reg[6]_0 ,
    \gic0.gc0.count_d2_reg[7]_0 ,
    \gic0.gc0.count_d2_reg[9]_0 ,
    \gic0.gc0.count_d2_reg[8]_0 ,
    \gic0.gc0.count_d2_reg[10]_2 ,
    \gic0.gc0.count_d2_reg[10]_3 ,
    \gic0.gc0.count_d2_reg[8]_1 ,
    \gic0.gc0.count_d2_reg[9]_1 ,
    \gic0.gc0.count_d2_reg[8]_2 ,
    \gic0.gc0.count_d2_reg[9]_2 ,
    \gic0.gc0.count_d2_reg[8]_3 ,
    \gic0.gc0.count_d2_reg[7]_1 ,
    \gic0.gc0.count_d2_reg[7]_2 ,
    \gic0.gc0.count_d2_reg[7]_3 ,
    \gic0.gc0.count_d2_reg[9]_3 ,
    \gic0.gc0.count_d2_reg[6]_1 ,
    \gic0.gc0.count_d2_reg[6]_2 ,
    \gic0.gc0.count_d2_reg[6]_3 ,
    \gic0.gc0.count_d2_reg[9]_4 ,
    \gic0.gc0.count_d2_reg[9]_5 ,
    \gic0.gc0.count_d2_reg[7]_4 ,
    \gic0.gc0.count_d2_reg[8]_4 ,
    \gic0.gc0.count_d2_reg[6]_4 ,
    \gic0.gc0.count_d2_reg[8]_5 ,
    \gic0.gc0.count_d2_reg[6]_5 ,
    \gic0.gc0.count_d2_reg[7]_5 ,
    \gic0.gc0.count_d2_reg[8]_6 ,
    \gic0.gc0.count_d2_reg[8]_7 ,
    \gic0.gc0.count_d2_reg[7]_6 ,
    \gic0.gc0.count_d2_reg[7]_7 ,
    \gic0.gc0.count_reg[9]_0 ,
    v1_reg,
    v1_reg_0,
    \gic0.gc0.count_d1_reg[9]_0 ,
    ram_wr_en,
    RD_PNTR_WR,
    wr_clk,
    AR);
  output \gic0.gc0.count_d2_reg[10]_0 ;
  output [10:0]Q;
  output \gic0.gc0.count_d2_reg[10]_1 ;
  output \gic0.gc0.count_d2_reg[6]_0 ;
  output \gic0.gc0.count_d2_reg[7]_0 ;
  output \gic0.gc0.count_d2_reg[9]_0 ;
  output \gic0.gc0.count_d2_reg[8]_0 ;
  output \gic0.gc0.count_d2_reg[10]_2 ;
  output \gic0.gc0.count_d2_reg[10]_3 ;
  output \gic0.gc0.count_d2_reg[8]_1 ;
  output \gic0.gc0.count_d2_reg[9]_1 ;
  output \gic0.gc0.count_d2_reg[8]_2 ;
  output \gic0.gc0.count_d2_reg[9]_2 ;
  output \gic0.gc0.count_d2_reg[8]_3 ;
  output \gic0.gc0.count_d2_reg[7]_1 ;
  output \gic0.gc0.count_d2_reg[7]_2 ;
  output \gic0.gc0.count_d2_reg[7]_3 ;
  output \gic0.gc0.count_d2_reg[9]_3 ;
  output \gic0.gc0.count_d2_reg[6]_1 ;
  output \gic0.gc0.count_d2_reg[6]_2 ;
  output \gic0.gc0.count_d2_reg[6]_3 ;
  output \gic0.gc0.count_d2_reg[9]_4 ;
  output \gic0.gc0.count_d2_reg[9]_5 ;
  output \gic0.gc0.count_d2_reg[7]_4 ;
  output \gic0.gc0.count_d2_reg[8]_4 ;
  output \gic0.gc0.count_d2_reg[6]_4 ;
  output \gic0.gc0.count_d2_reg[8]_5 ;
  output \gic0.gc0.count_d2_reg[6]_5 ;
  output \gic0.gc0.count_d2_reg[7]_5 ;
  output \gic0.gc0.count_d2_reg[8]_6 ;
  output \gic0.gc0.count_d2_reg[8]_7 ;
  output \gic0.gc0.count_d2_reg[7]_6 ;
  output \gic0.gc0.count_d2_reg[7]_7 ;
  output [9:0]\gic0.gc0.count_reg[9]_0 ;
  output [0:0]v1_reg;
  output [0:0]v1_reg_0;
  output [9:0]\gic0.gc0.count_d1_reg[9]_0 ;
  input ram_wr_en;
  input [0:0]RD_PNTR_WR;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [10:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire \gic0.gc0.count[10]_i_2_n_0 ;
  wire [9:0]\gic0.gc0.count_d1_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[10]_0 ;
  wire \gic0.gc0.count_d2_reg[10]_1 ;
  wire \gic0.gc0.count_d2_reg[10]_2 ;
  wire \gic0.gc0.count_d2_reg[10]_3 ;
  wire \gic0.gc0.count_d2_reg[6]_0 ;
  wire \gic0.gc0.count_d2_reg[6]_1 ;
  wire \gic0.gc0.count_d2_reg[6]_2 ;
  wire \gic0.gc0.count_d2_reg[6]_3 ;
  wire \gic0.gc0.count_d2_reg[6]_4 ;
  wire \gic0.gc0.count_d2_reg[6]_5 ;
  wire \gic0.gc0.count_d2_reg[7]_0 ;
  wire \gic0.gc0.count_d2_reg[7]_1 ;
  wire \gic0.gc0.count_d2_reg[7]_2 ;
  wire \gic0.gc0.count_d2_reg[7]_3 ;
  wire \gic0.gc0.count_d2_reg[7]_4 ;
  wire \gic0.gc0.count_d2_reg[7]_5 ;
  wire \gic0.gc0.count_d2_reg[7]_6 ;
  wire \gic0.gc0.count_d2_reg[7]_7 ;
  wire \gic0.gc0.count_d2_reg[8]_0 ;
  wire \gic0.gc0.count_d2_reg[8]_1 ;
  wire \gic0.gc0.count_d2_reg[8]_2 ;
  wire \gic0.gc0.count_d2_reg[8]_3 ;
  wire \gic0.gc0.count_d2_reg[8]_4 ;
  wire \gic0.gc0.count_d2_reg[8]_5 ;
  wire \gic0.gc0.count_d2_reg[8]_6 ;
  wire \gic0.gc0.count_d2_reg[8]_7 ;
  wire \gic0.gc0.count_d2_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[9]_1 ;
  wire \gic0.gc0.count_d2_reg[9]_2 ;
  wire \gic0.gc0.count_d2_reg[9]_3 ;
  wire \gic0.gc0.count_d2_reg[9]_4 ;
  wire \gic0.gc0.count_d2_reg[9]_5 ;
  wire [9:0]\gic0.gc0.count_reg[9]_0 ;
  wire [10:0]plusOp;
  wire ram_wr_en;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire wr_clk;
  wire [10:10]wr_pntr_plus1;
  wire [10:10]wr_pntr_plus2;

  LUT6 #(
    .INIT(64'h0000000000000002)) 
    RAM_reg_0_63_0_2_i_1
       (.I0(ram_wr_en),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[10]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    RAM_reg_1024_1087_0_2_i_1
       (.I0(Q[10]),
        .I1(ram_wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_1088_1151_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[8]_6 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_1152_1215_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[8]_7 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_1216_1279_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(ram_wr_en),
        .I5(Q[10]),
        .O(\gic0.gc0.count_d2_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_1280_1343_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[10]),
        .I3(Q[8]),
        .I4(Q[6]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[7]_6 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    RAM_reg_128_191_0_2_i_1
       (.I0(Q[7]),
        .I1(ram_wr_en),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_1344_1407_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(ram_wr_en),
        .I5(Q[10]),
        .O(\gic0.gc0.count_d2_reg[7]_2 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_1408_1471_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(ram_wr_en),
        .I5(Q[10]),
        .O(\gic0.gc0.count_d2_reg[6]_2 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RAM_reg_1472_1535_0_2_i_1
       (.I0(ram_wr_en),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_1536_1599_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[10]),
        .I3(Q[9]),
        .I4(Q[6]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[7]_7 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_1600_1663_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(ram_wr_en),
        .I5(Q[10]),
        .O(\gic0.gc0.count_d2_reg[7]_4 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_1664_1727_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(ram_wr_en),
        .I5(Q[10]),
        .O(\gic0.gc0.count_d2_reg[6]_4 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RAM_reg_1728_1791_0_2_i_1
       (.I0(ram_wr_en),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_1792_1855_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(ram_wr_en),
        .I5(Q[10]),
        .O(\gic0.gc0.count_d2_reg[6]_5 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RAM_reg_1856_1919_0_2_i_1
       (.I0(ram_wr_en),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[7]_3 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RAM_reg_1920_1983_0_2_i_1
       (.I0(ram_wr_en),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[6]_3 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_192_255_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[9]_2 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    RAM_reg_1984_2047_0_2_i_1
       (.I0(Q[10]),
        .I1(ram_wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[10]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    RAM_reg_256_319_0_2_i_1
       (.I0(Q[8]),
        .I1(ram_wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[8]_3 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_320_383_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[9]_3 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_384_447_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[9]_4 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_448_511_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(ram_wr_en),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    RAM_reg_512_575_0_2_i_1
       (.I0(Q[9]),
        .I1(ram_wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[10]),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[9]_5 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_576_639_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[8]_4 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_640_703_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[8]_5 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    RAM_reg_64_127_0_2_i_1
       (.I0(Q[6]),
        .I1(ram_wr_en),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[10]),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_704_767_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(ram_wr_en),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_768_831_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[10]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(Q[6]),
        .I5(ram_wr_en),
        .O(\gic0.gc0.count_d2_reg[7]_5 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_832_895_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(ram_wr_en),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    RAM_reg_896_959_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(ram_wr_en),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[6]_1 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    RAM_reg_960_1023_0_2_i_1
       (.I0(ram_wr_en),
        .I1(Q[10]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[10]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [0]),
        .O(plusOp[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc0.count[10]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [8]),
        .I1(\gic0.gc0.count_reg[9]_0 [6]),
        .I2(\gic0.gc0.count[10]_i_2_n_0 ),
        .I3(\gic0.gc0.count_reg[9]_0 [7]),
        .I4(\gic0.gc0.count_reg[9]_0 [9]),
        .I5(wr_pntr_plus2),
        .O(plusOp[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc0.count[10]_i_2 
       (.I0(\gic0.gc0.count_reg[9]_0 [5]),
        .I1(\gic0.gc0.count_reg[9]_0 [3]),
        .I2(\gic0.gc0.count_reg[9]_0 [1]),
        .I3(\gic0.gc0.count_reg[9]_0 [0]),
        .I4(\gic0.gc0.count_reg[9]_0 [2]),
        .I5(\gic0.gc0.count_reg[9]_0 [4]),
        .O(\gic0.gc0.count[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [0]),
        .I1(\gic0.gc0.count_reg[9]_0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [0]),
        .I1(\gic0.gc0.count_reg[9]_0 [1]),
        .I2(\gic0.gc0.count_reg[9]_0 [2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [1]),
        .I1(\gic0.gc0.count_reg[9]_0 [0]),
        .I2(\gic0.gc0.count_reg[9]_0 [2]),
        .I3(\gic0.gc0.count_reg[9]_0 [3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [2]),
        .I1(\gic0.gc0.count_reg[9]_0 [0]),
        .I2(\gic0.gc0.count_reg[9]_0 [1]),
        .I3(\gic0.gc0.count_reg[9]_0 [3]),
        .I4(\gic0.gc0.count_reg[9]_0 [4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc0.count[5]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [3]),
        .I1(\gic0.gc0.count_reg[9]_0 [1]),
        .I2(\gic0.gc0.count_reg[9]_0 [0]),
        .I3(\gic0.gc0.count_reg[9]_0 [2]),
        .I4(\gic0.gc0.count_reg[9]_0 [4]),
        .I5(\gic0.gc0.count_reg[9]_0 [5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[6]_i_1 
       (.I0(\gic0.gc0.count[10]_i_2_n_0 ),
        .I1(\gic0.gc0.count_reg[9]_0 [6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[7]_i_1 
       (.I0(\gic0.gc0.count[10]_i_2_n_0 ),
        .I1(\gic0.gc0.count_reg[9]_0 [6]),
        .I2(\gic0.gc0.count_reg[9]_0 [7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[8]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [6]),
        .I1(\gic0.gc0.count[10]_i_2_n_0 ),
        .I2(\gic0.gc0.count_reg[9]_0 [7]),
        .I3(\gic0.gc0.count_reg[9]_0 [8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[9]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [7]),
        .I1(\gic0.gc0.count[10]_i_2_n_0 ),
        .I2(\gic0.gc0.count_reg[9]_0 [6]),
        .I3(\gic0.gc0.count_reg[9]_0 [8]),
        .I4(\gic0.gc0.count_reg[9]_0 [9]),
        .O(plusOp[9]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .D(\gic0.gc0.count_reg[9]_0 [0]),
        .PRE(AR),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(wr_pntr_plus2),
        .Q(wr_pntr_plus1));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [1]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [2]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [3]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [4]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [5]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [6]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [7]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [8]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_reg[9]_0 [9]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(wr_pntr_plus1),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(\gic0.gc0.count_d1_reg[9]_0 [9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[0]),
        .Q(\gic0.gc0.count_reg[9]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[10]),
        .Q(wr_pntr_plus2));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .D(plusOp[1]),
        .PRE(AR),
        .Q(\gic0.gc0.count_reg[9]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(\gic0.gc0.count_reg[9]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(\gic0.gc0.count_reg[9]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[4]),
        .Q(\gic0.gc0.count_reg[9]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[5]),
        .Q(\gic0.gc0.count_reg[9]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[6]),
        .Q(\gic0.gc0.count_reg[9]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[7]),
        .Q(\gic0.gc0.count_reg[9]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[8]),
        .Q(\gic0.gc0.count_reg[9]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en),
        .CLR(AR),
        .D(plusOp[9]),
        .Q(\gic0.gc0.count_reg[9]_0 [9]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(wr_pntr_plus1),
        .I1(RD_PNTR_WR),
        .O(v1_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1__0 
       (.I0(wr_pntr_plus2),
        .I1(RD_PNTR_WR),
        .O(v1_reg_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module fifo_pipeout_wr_logic
   (full,
    \gic0.gc0.count_d2_reg[10] ,
    Q,
    \gic0.gc0.count_d2_reg[10]_0 ,
    \gic0.gc0.count_d2_reg[6] ,
    \gic0.gc0.count_d2_reg[7] ,
    \gic0.gc0.count_d2_reg[9] ,
    \gic0.gc0.count_d2_reg[8] ,
    \gic0.gc0.count_d2_reg[10]_1 ,
    \gic0.gc0.count_d2_reg[10]_2 ,
    \gic0.gc0.count_d2_reg[8]_0 ,
    \gic0.gc0.count_d2_reg[9]_0 ,
    \gic0.gc0.count_d2_reg[8]_1 ,
    \gic0.gc0.count_d2_reg[9]_1 ,
    \gic0.gc0.count_d2_reg[8]_2 ,
    \gic0.gc0.count_d2_reg[7]_0 ,
    \gic0.gc0.count_d2_reg[7]_1 ,
    \gic0.gc0.count_d2_reg[7]_2 ,
    \gic0.gc0.count_d2_reg[9]_2 ,
    \gic0.gc0.count_d2_reg[6]_0 ,
    \gic0.gc0.count_d2_reg[6]_1 ,
    \gic0.gc0.count_d2_reg[6]_2 ,
    \gic0.gc0.count_d2_reg[9]_3 ,
    \gic0.gc0.count_d2_reg[9]_4 ,
    \gic0.gc0.count_d2_reg[7]_3 ,
    \gic0.gc0.count_d2_reg[8]_3 ,
    \gic0.gc0.count_d2_reg[6]_3 ,
    \gic0.gc0.count_d2_reg[8]_4 ,
    \gic0.gc0.count_d2_reg[6]_4 ,
    \gic0.gc0.count_d2_reg[7]_4 ,
    \gic0.gc0.count_d2_reg[8]_5 ,
    \gic0.gc0.count_d2_reg[8]_6 ,
    \gic0.gc0.count_d2_reg[7]_5 ,
    \gic0.gc0.count_d2_reg[7]_6 ,
    \gic0.gc0.count_reg[9] ,
    \gic0.gc0.count_d1_reg[9] ,
    \gmux.gm[5].gms.ms ,
    \gmux.gm[5].gms.ms_0 ,
    wr_clk,
    out,
    wr_en,
    ram_full_fb_i_reg,
    RD_PNTR_WR,
    AR);
  output full;
  output \gic0.gc0.count_d2_reg[10] ;
  output [10:0]Q;
  output \gic0.gc0.count_d2_reg[10]_0 ;
  output \gic0.gc0.count_d2_reg[6] ;
  output \gic0.gc0.count_d2_reg[7] ;
  output \gic0.gc0.count_d2_reg[9] ;
  output \gic0.gc0.count_d2_reg[8] ;
  output \gic0.gc0.count_d2_reg[10]_1 ;
  output \gic0.gc0.count_d2_reg[10]_2 ;
  output \gic0.gc0.count_d2_reg[8]_0 ;
  output \gic0.gc0.count_d2_reg[9]_0 ;
  output \gic0.gc0.count_d2_reg[8]_1 ;
  output \gic0.gc0.count_d2_reg[9]_1 ;
  output \gic0.gc0.count_d2_reg[8]_2 ;
  output \gic0.gc0.count_d2_reg[7]_0 ;
  output \gic0.gc0.count_d2_reg[7]_1 ;
  output \gic0.gc0.count_d2_reg[7]_2 ;
  output \gic0.gc0.count_d2_reg[9]_2 ;
  output \gic0.gc0.count_d2_reg[6]_0 ;
  output \gic0.gc0.count_d2_reg[6]_1 ;
  output \gic0.gc0.count_d2_reg[6]_2 ;
  output \gic0.gc0.count_d2_reg[9]_3 ;
  output \gic0.gc0.count_d2_reg[9]_4 ;
  output \gic0.gc0.count_d2_reg[7]_3 ;
  output \gic0.gc0.count_d2_reg[8]_3 ;
  output \gic0.gc0.count_d2_reg[6]_3 ;
  output \gic0.gc0.count_d2_reg[8]_4 ;
  output \gic0.gc0.count_d2_reg[6]_4 ;
  output \gic0.gc0.count_d2_reg[7]_4 ;
  output \gic0.gc0.count_d2_reg[8]_5 ;
  output \gic0.gc0.count_d2_reg[8]_6 ;
  output \gic0.gc0.count_d2_reg[7]_5 ;
  output \gic0.gc0.count_d2_reg[7]_6 ;
  output [9:0]\gic0.gc0.count_reg[9] ;
  output [9:0]\gic0.gc0.count_d1_reg[9] ;
  input [4:0]\gmux.gm[5].gms.ms ;
  input [4:0]\gmux.gm[5].gms.ms_0 ;
  input wr_clk;
  input out;
  input wr_en;
  input ram_full_fb_i_reg;
  input [0:0]RD_PNTR_WR;
  input [0:0]AR;

  wire [0:0]AR;
  wire [10:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire [5:5]\c1/v1_reg ;
  wire [5:5]\c2/v1_reg ;
  wire full;
  wire [9:0]\gic0.gc0.count_d1_reg[9] ;
  wire \gic0.gc0.count_d2_reg[10] ;
  wire \gic0.gc0.count_d2_reg[10]_0 ;
  wire \gic0.gc0.count_d2_reg[10]_1 ;
  wire \gic0.gc0.count_d2_reg[10]_2 ;
  wire \gic0.gc0.count_d2_reg[6] ;
  wire \gic0.gc0.count_d2_reg[6]_0 ;
  wire \gic0.gc0.count_d2_reg[6]_1 ;
  wire \gic0.gc0.count_d2_reg[6]_2 ;
  wire \gic0.gc0.count_d2_reg[6]_3 ;
  wire \gic0.gc0.count_d2_reg[6]_4 ;
  wire \gic0.gc0.count_d2_reg[7] ;
  wire \gic0.gc0.count_d2_reg[7]_0 ;
  wire \gic0.gc0.count_d2_reg[7]_1 ;
  wire \gic0.gc0.count_d2_reg[7]_2 ;
  wire \gic0.gc0.count_d2_reg[7]_3 ;
  wire \gic0.gc0.count_d2_reg[7]_4 ;
  wire \gic0.gc0.count_d2_reg[7]_5 ;
  wire \gic0.gc0.count_d2_reg[7]_6 ;
  wire \gic0.gc0.count_d2_reg[8] ;
  wire \gic0.gc0.count_d2_reg[8]_0 ;
  wire \gic0.gc0.count_d2_reg[8]_1 ;
  wire \gic0.gc0.count_d2_reg[8]_2 ;
  wire \gic0.gc0.count_d2_reg[8]_3 ;
  wire \gic0.gc0.count_d2_reg[8]_4 ;
  wire \gic0.gc0.count_d2_reg[8]_5 ;
  wire \gic0.gc0.count_d2_reg[8]_6 ;
  wire \gic0.gc0.count_d2_reg[9] ;
  wire \gic0.gc0.count_d2_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[9]_1 ;
  wire \gic0.gc0.count_d2_reg[9]_2 ;
  wire \gic0.gc0.count_d2_reg[9]_3 ;
  wire \gic0.gc0.count_d2_reg[9]_4 ;
  wire [9:0]\gic0.gc0.count_reg[9] ;
  wire [4:0]\gmux.gm[5].gms.ms ;
  wire [4:0]\gmux.gm[5].gms.ms_0 ;
  wire out;
  wire ram_full_fb_i_reg;
  wire ram_wr_en;
  wire wr_clk;
  wire wr_en;

  fifo_pipeout_wr_status_flags_as \gwas.wsts 
       (.full(full),
        .\gmux.gm[5].gms.ms (\gmux.gm[5].gms.ms ),
        .\gmux.gm[5].gms.ms_0 (\gmux.gm[5].gms.ms_0 ),
        .out(out),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg),
        .ram_wr_en(ram_wr_en),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_pipeout_wr_bin_cntr wpntr
       (.AR(AR),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\gic0.gc0.count_d1_reg[9]_0 (\gic0.gc0.count_d1_reg[9] ),
        .\gic0.gc0.count_d2_reg[10]_0 (\gic0.gc0.count_d2_reg[10] ),
        .\gic0.gc0.count_d2_reg[10]_1 (\gic0.gc0.count_d2_reg[10]_0 ),
        .\gic0.gc0.count_d2_reg[10]_2 (\gic0.gc0.count_d2_reg[10]_1 ),
        .\gic0.gc0.count_d2_reg[10]_3 (\gic0.gc0.count_d2_reg[10]_2 ),
        .\gic0.gc0.count_d2_reg[6]_0 (\gic0.gc0.count_d2_reg[6] ),
        .\gic0.gc0.count_d2_reg[6]_1 (\gic0.gc0.count_d2_reg[6]_0 ),
        .\gic0.gc0.count_d2_reg[6]_2 (\gic0.gc0.count_d2_reg[6]_1 ),
        .\gic0.gc0.count_d2_reg[6]_3 (\gic0.gc0.count_d2_reg[6]_2 ),
        .\gic0.gc0.count_d2_reg[6]_4 (\gic0.gc0.count_d2_reg[6]_3 ),
        .\gic0.gc0.count_d2_reg[6]_5 (\gic0.gc0.count_d2_reg[6]_4 ),
        .\gic0.gc0.count_d2_reg[7]_0 (\gic0.gc0.count_d2_reg[7] ),
        .\gic0.gc0.count_d2_reg[7]_1 (\gic0.gc0.count_d2_reg[7]_0 ),
        .\gic0.gc0.count_d2_reg[7]_2 (\gic0.gc0.count_d2_reg[7]_1 ),
        .\gic0.gc0.count_d2_reg[7]_3 (\gic0.gc0.count_d2_reg[7]_2 ),
        .\gic0.gc0.count_d2_reg[7]_4 (\gic0.gc0.count_d2_reg[7]_3 ),
        .\gic0.gc0.count_d2_reg[7]_5 (\gic0.gc0.count_d2_reg[7]_4 ),
        .\gic0.gc0.count_d2_reg[7]_6 (\gic0.gc0.count_d2_reg[7]_5 ),
        .\gic0.gc0.count_d2_reg[7]_7 (\gic0.gc0.count_d2_reg[7]_6 ),
        .\gic0.gc0.count_d2_reg[8]_0 (\gic0.gc0.count_d2_reg[8] ),
        .\gic0.gc0.count_d2_reg[8]_1 (\gic0.gc0.count_d2_reg[8]_0 ),
        .\gic0.gc0.count_d2_reg[8]_2 (\gic0.gc0.count_d2_reg[8]_1 ),
        .\gic0.gc0.count_d2_reg[8]_3 (\gic0.gc0.count_d2_reg[8]_2 ),
        .\gic0.gc0.count_d2_reg[8]_4 (\gic0.gc0.count_d2_reg[8]_3 ),
        .\gic0.gc0.count_d2_reg[8]_5 (\gic0.gc0.count_d2_reg[8]_4 ),
        .\gic0.gc0.count_d2_reg[8]_6 (\gic0.gc0.count_d2_reg[8]_5 ),
        .\gic0.gc0.count_d2_reg[8]_7 (\gic0.gc0.count_d2_reg[8]_6 ),
        .\gic0.gc0.count_d2_reg[9]_0 (\gic0.gc0.count_d2_reg[9] ),
        .\gic0.gc0.count_d2_reg[9]_1 (\gic0.gc0.count_d2_reg[9]_0 ),
        .\gic0.gc0.count_d2_reg[9]_2 (\gic0.gc0.count_d2_reg[9]_1 ),
        .\gic0.gc0.count_d2_reg[9]_3 (\gic0.gc0.count_d2_reg[9]_2 ),
        .\gic0.gc0.count_d2_reg[9]_4 (\gic0.gc0.count_d2_reg[9]_3 ),
        .\gic0.gc0.count_d2_reg[9]_5 (\gic0.gc0.count_d2_reg[9]_4 ),
        .\gic0.gc0.count_reg[9]_0 (\gic0.gc0.count_reg[9] ),
        .ram_wr_en(ram_wr_en),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module fifo_pipeout_wr_status_flags_as
   (full,
    ram_wr_en,
    \gmux.gm[5].gms.ms ,
    v1_reg,
    \gmux.gm[5].gms.ms_0 ,
    v1_reg_0,
    wr_clk,
    out,
    wr_en,
    ram_full_fb_i_reg_0);
  output full;
  output ram_wr_en;
  input [4:0]\gmux.gm[5].gms.ms ;
  input [0:0]v1_reg;
  input [4:0]\gmux.gm[5].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input wr_clk;
  input out;
  input wr_en;
  input ram_full_fb_i_reg_0;

  wire c2_n_0;
  wire comp1;
  wire [4:0]\gmux.gm[5].gms.ms ;
  wire [4:0]\gmux.gm[5].gms.ms_0 ;
  wire out;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire ram_wr_en;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  fifo_pipeout_compare c1
       (.comp1(comp1),
        .\gmux.gm[5].gms.ms_0 (\gmux.gm[5].gms.ms ),
        .v1_reg(v1_reg));
  fifo_pipeout_compare_0 c2
       (.comp1(comp1),
        .\gmux.gm[5].gms.ms_0 (\gmux.gm[5].gms.ms_0 ),
        .out(ram_full_fb_i),
        .ram_full_fb_i_reg(c2_n_0),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[10]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(ram_wr_en));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_0),
        .PRE(out),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_0),
        .PRE(out),
        .Q(ram_full_i));
endmodule
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
