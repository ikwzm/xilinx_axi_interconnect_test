library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity s00_couplers_imp_6WEGOS is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_6WEGOS;

architecture STRUCTURE of s00_couplers_imp_6WEGOS is
  component tb_1_auto_ds_4 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component tb_1_auto_ds_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_ds_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_ds_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_ds_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_ds_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_ds_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_ds_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_ds_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_ds_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_ds_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_ds_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arregion(3 downto 0) <= auto_ds_to_s00_couplers_ARREGION(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_ds_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_ds_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_ds_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_ds_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_ds_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_ds_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_ds_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_ds_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_ds_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awregion(3 downto 0) <= auto_ds_to_s00_couplers_AWREGION(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_ds_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_ds_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_ds_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_ds_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_ds_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_ds_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_ds_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_ds_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(3 downto 0) <= s00_couplers_to_auto_ds_BID(3 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(511 downto 0) <= s00_couplers_to_auto_ds_RDATA(511 downto 0);
  S_AXI_rid(3 downto 0) <= s00_couplers_to_auto_ds_RID(3 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_ds_WREADY;
  auto_ds_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_ds_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_ds_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_ds_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_ds_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_ds_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_ds_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_ds_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_ds_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_ds_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_ds_ARID(3 downto 0) <= S_AXI_arid(3 downto 0);
  s00_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_ds_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  s00_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_ds_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_ds_AWID(3 downto 0) <= S_AXI_awid(3 downto 0);
  s00_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_ds_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  s00_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_ds_WDATA(511 downto 0) <= S_AXI_wdata(511 downto 0);
  s00_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_ds_WSTRB(63 downto 0) <= S_AXI_wstrb(63 downto 0);
  s00_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component tb_1_auto_ds_4
    port map (
      m_axi_araddr(31 downto 0) => auto_ds_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_s00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_ds_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_s00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_s00_couplers_AWVALID,
      m_axi_bready => auto_ds_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_s00_couplers_RLAST,
      m_axi_rready => auto_ds_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_s00_couplers_WLAST,
      m_axi_wready => auto_ds_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_ds_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(3 downto 0) => s00_couplers_to_auto_ds_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => s00_couplers_to_auto_ds_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_ds_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => s00_couplers_to_auto_ds_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => s00_couplers_to_auto_ds_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_ds_AWVALID,
      s_axi_bid(3 downto 0) => s00_couplers_to_auto_ds_BID(3 downto 0),
      s_axi_bready => s00_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_ds_BVALID,
      s_axi_rdata(511 downto 0) => s00_couplers_to_auto_ds_RDATA(511 downto 0),
      s_axi_rid(3 downto 0) => s00_couplers_to_auto_ds_RID(3 downto 0),
      s_axi_rlast => s00_couplers_to_auto_ds_RLAST,
      s_axi_rready => s00_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_ds_RVALID,
      s_axi_wdata(511 downto 0) => s00_couplers_to_auto_ds_WDATA(511 downto 0),
      s_axi_wlast => s00_couplers_to_auto_ds_WLAST,
      s_axi_wready => s00_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(63 downto 0) => s00_couplers_to_auto_ds_WSTRB(63 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_ds_WVALID
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity tb_1_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end tb_1_axi_interconnect_0_0;

architecture STRUCTURE of tb_1_axi_interconnect_0_0 is
  signal DUT_ACLK_net : STD_LOGIC;
  signal DUT_ARESETN_net : STD_LOGIC;
  signal DUT_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DUT_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DUT_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DUT_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_ARREADY : STD_LOGIC;
  signal DUT_to_s00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_to_s00_couplers_ARVALID : STD_LOGIC;
  signal DUT_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DUT_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DUT_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DUT_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_AWREADY : STD_LOGIC;
  signal DUT_to_s00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_to_s00_couplers_AWVALID : STD_LOGIC;
  signal DUT_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_BREADY : STD_LOGIC;
  signal DUT_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_to_s00_couplers_BVALID : STD_LOGIC;
  signal DUT_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal DUT_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_to_s00_couplers_RLAST : STD_LOGIC;
  signal DUT_to_s00_couplers_RREADY : STD_LOGIC;
  signal DUT_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_to_s00_couplers_RVALID : STD_LOGIC;
  signal DUT_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal DUT_to_s00_couplers_WLAST : STD_LOGIC;
  signal DUT_to_s00_couplers_WREADY : STD_LOGIC;
  signal DUT_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal DUT_to_s00_couplers_WVALID : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal s00_couplers_to_DUT_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_DUT_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_DUT_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_DUT_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_DUT_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_DUT_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_DUT_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_DUT_ARREADY : STD_LOGIC;
  signal s00_couplers_to_DUT_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_DUT_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_DUT_ARVALID : STD_LOGIC;
  signal s00_couplers_to_DUT_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_DUT_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_DUT_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_DUT_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_DUT_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_DUT_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_DUT_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_DUT_AWREADY : STD_LOGIC;
  signal s00_couplers_to_DUT_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_DUT_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_DUT_AWVALID : STD_LOGIC;
  signal s00_couplers_to_DUT_BREADY : STD_LOGIC;
  signal s00_couplers_to_DUT_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_DUT_BVALID : STD_LOGIC;
  signal s00_couplers_to_DUT_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_DUT_RLAST : STD_LOGIC;
  signal s00_couplers_to_DUT_RREADY : STD_LOGIC;
  signal s00_couplers_to_DUT_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_DUT_RVALID : STD_LOGIC;
  signal s00_couplers_to_DUT_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_DUT_WLAST : STD_LOGIC;
  signal s00_couplers_to_DUT_WREADY : STD_LOGIC;
  signal s00_couplers_to_DUT_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_DUT_WVALID : STD_LOGIC;
begin
  DUT_ACLK_net <= M00_ACLK;
  DUT_ARESETN_net <= M00_ARESETN;
  DUT_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  DUT_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  DUT_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  DUT_to_s00_couplers_ARID(3 downto 0) <= S00_AXI_arid(3 downto 0);
  DUT_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  DUT_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  DUT_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  DUT_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  DUT_to_s00_couplers_ARREGION(3 downto 0) <= S00_AXI_arregion(3 downto 0);
  DUT_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  DUT_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  DUT_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  DUT_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  DUT_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  DUT_to_s00_couplers_AWID(3 downto 0) <= S00_AXI_awid(3 downto 0);
  DUT_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  DUT_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  DUT_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  DUT_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  DUT_to_s00_couplers_AWREGION(3 downto 0) <= S00_AXI_awregion(3 downto 0);
  DUT_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  DUT_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  DUT_to_s00_couplers_BREADY <= S00_AXI_bready;
  DUT_to_s00_couplers_RREADY <= S00_AXI_rready;
  DUT_to_s00_couplers_WDATA(511 downto 0) <= S00_AXI_wdata(511 downto 0);
  DUT_to_s00_couplers_WLAST <= S00_AXI_wlast;
  DUT_to_s00_couplers_WSTRB(63 downto 0) <= S00_AXI_wstrb(63 downto 0);
  DUT_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  M00_AXI_araddr(31 downto 0) <= s00_couplers_to_DUT_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= s00_couplers_to_DUT_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= s00_couplers_to_DUT_ARCACHE(3 downto 0);
  M00_AXI_arlen(7 downto 0) <= s00_couplers_to_DUT_ARLEN(7 downto 0);
  M00_AXI_arlock(0) <= s00_couplers_to_DUT_ARLOCK(0);
  M00_AXI_arprot(2 downto 0) <= s00_couplers_to_DUT_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= s00_couplers_to_DUT_ARQOS(3 downto 0);
  M00_AXI_arregion(3 downto 0) <= s00_couplers_to_DUT_ARREGION(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= s00_couplers_to_DUT_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= s00_couplers_to_DUT_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= s00_couplers_to_DUT_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= s00_couplers_to_DUT_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= s00_couplers_to_DUT_AWCACHE(3 downto 0);
  M00_AXI_awlen(7 downto 0) <= s00_couplers_to_DUT_AWLEN(7 downto 0);
  M00_AXI_awlock(0) <= s00_couplers_to_DUT_AWLOCK(0);
  M00_AXI_awprot(2 downto 0) <= s00_couplers_to_DUT_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= s00_couplers_to_DUT_AWQOS(3 downto 0);
  M00_AXI_awregion(3 downto 0) <= s00_couplers_to_DUT_AWREGION(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= s00_couplers_to_DUT_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= s00_couplers_to_DUT_AWVALID;
  M00_AXI_bready <= s00_couplers_to_DUT_BREADY;
  M00_AXI_rready <= s00_couplers_to_DUT_RREADY;
  M00_AXI_wdata(31 downto 0) <= s00_couplers_to_DUT_WDATA(31 downto 0);
  M00_AXI_wlast <= s00_couplers_to_DUT_WLAST;
  M00_AXI_wstrb(3 downto 0) <= s00_couplers_to_DUT_WSTRB(3 downto 0);
  M00_AXI_wvalid <= s00_couplers_to_DUT_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= DUT_to_s00_couplers_ARREADY;
  S00_AXI_awready <= DUT_to_s00_couplers_AWREADY;
  S00_AXI_bid(3 downto 0) <= DUT_to_s00_couplers_BID(3 downto 0);
  S00_AXI_bresp(1 downto 0) <= DUT_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= DUT_to_s00_couplers_BVALID;
  S00_AXI_rdata(511 downto 0) <= DUT_to_s00_couplers_RDATA(511 downto 0);
  S00_AXI_rid(3 downto 0) <= DUT_to_s00_couplers_RID(3 downto 0);
  S00_AXI_rlast <= DUT_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= DUT_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= DUT_to_s00_couplers_RVALID;
  S00_AXI_wready <= DUT_to_s00_couplers_WREADY;
  s00_couplers_to_DUT_ARREADY <= M00_AXI_arready;
  s00_couplers_to_DUT_AWREADY <= M00_AXI_awready;
  s00_couplers_to_DUT_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_DUT_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_DUT_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_DUT_RLAST <= M00_AXI_rlast;
  s00_couplers_to_DUT_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_DUT_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_DUT_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_6WEGOS
    port map (
      M_ACLK => DUT_ACLK_net,
      M_ARESETN => DUT_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_DUT_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_DUT_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_DUT_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_DUT_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_DUT_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_DUT_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_DUT_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_DUT_ARREADY,
      M_AXI_arregion(3 downto 0) => s00_couplers_to_DUT_ARREGION(3 downto 0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_DUT_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_DUT_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_DUT_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_DUT_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_DUT_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_DUT_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_DUT_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_DUT_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_DUT_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_DUT_AWREADY,
      M_AXI_awregion(3 downto 0) => s00_couplers_to_DUT_AWREGION(3 downto 0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_DUT_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_DUT_AWVALID,
      M_AXI_bready => s00_couplers_to_DUT_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_DUT_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_DUT_BVALID,
      M_AXI_rdata(31 downto 0) => s00_couplers_to_DUT_RDATA(31 downto 0),
      M_AXI_rlast => s00_couplers_to_DUT_RLAST,
      M_AXI_rready => s00_couplers_to_DUT_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_DUT_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_DUT_RVALID,
      M_AXI_wdata(31 downto 0) => s00_couplers_to_DUT_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_DUT_WLAST,
      M_AXI_wready => s00_couplers_to_DUT_WREADY,
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_DUT_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_DUT_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => DUT_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => DUT_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => DUT_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(3 downto 0) => DUT_to_s00_couplers_ARID(3 downto 0),
      S_AXI_arlen(7 downto 0) => DUT_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => DUT_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => DUT_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => DUT_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => DUT_to_s00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => DUT_to_s00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => DUT_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => DUT_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => DUT_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => DUT_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => DUT_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(3 downto 0) => DUT_to_s00_couplers_AWID(3 downto 0),
      S_AXI_awlen(7 downto 0) => DUT_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => DUT_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => DUT_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => DUT_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => DUT_to_s00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => DUT_to_s00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => DUT_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => DUT_to_s00_couplers_AWVALID,
      S_AXI_bid(3 downto 0) => DUT_to_s00_couplers_BID(3 downto 0),
      S_AXI_bready => DUT_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => DUT_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => DUT_to_s00_couplers_BVALID,
      S_AXI_rdata(511 downto 0) => DUT_to_s00_couplers_RDATA(511 downto 0),
      S_AXI_rid(3 downto 0) => DUT_to_s00_couplers_RID(3 downto 0),
      S_AXI_rlast => DUT_to_s00_couplers_RLAST,
      S_AXI_rready => DUT_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => DUT_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => DUT_to_s00_couplers_RVALID,
      S_AXI_wdata(511 downto 0) => DUT_to_s00_couplers_WDATA(511 downto 0),
      S_AXI_wlast => DUT_to_s00_couplers_WLAST,
      S_AXI_wready => DUT_to_s00_couplers_WREADY,
      S_AXI_wstrb(63 downto 0) => DUT_to_s00_couplers_WSTRB(63 downto 0),
      S_AXI_wvalid => DUT_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity tb_1 is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of tb_1 : entity is "tb_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLanguage=VHDL,numBlks=4,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=2,maxHierDepth=0}";
end tb_1;

architecture STRUCTURE of tb_1 is
  component tb_1_AXI4_INTERCONNECT_TEST_BFM_0_0 is
  port (
    M00_ACLK : in STD_LOGIC;
    M00_ARESETn : in STD_LOGIC;
    M00_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_ARUSER : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_ARID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_ARVALID : out STD_LOGIC;
    M00_ARREADY : in STD_LOGIC;
    M00_RVALID : in STD_LOGIC;
    M00_RLAST : in STD_LOGIC;
    M00_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_RID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_RREADY : out STD_LOGIC;
    M00_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AWUSER : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AWID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AWVALID : out STD_LOGIC;
    M00_AWREADY : in STD_LOGIC;
    M00_WLAST : out STD_LOGIC;
    M00_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_WVALID : out STD_LOGIC;
    M00_WREADY : in STD_LOGIC;
    M00_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_BID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_BVALID : in STD_LOGIC;
    M00_BREADY : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETn : in STD_LOGIC;
    S00_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_ARUSER : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_ARID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_ARVALID : in STD_LOGIC;
    S00_ARREADY : out STD_LOGIC;
    S00_RVALID : out STD_LOGIC;
    S00_RLAST : out STD_LOGIC;
    S00_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_RID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_RREADY : in STD_LOGIC;
    S00_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AWUSER : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AWID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AWVALID : in STD_LOGIC;
    S00_AWREADY : out STD_LOGIC;
    S00_WLAST : in STD_LOGIC;
    S00_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_WVALID : in STD_LOGIC;
    S00_WREADY : out STD_LOGIC;
    S00_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_BID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_BVALID : out STD_LOGIC;
    S00_BREADY : in STD_LOGIC;
    ACLK0 : out STD_LOGIC;
    ACLK1 : out STD_LOGIC;
    ARESETn : out STD_LOGIC
  );
  end component tb_1_AXI4_INTERCONNECT_TEST_BFM_0_0;
  signal BFM_ACLK0 : STD_LOGIC;
  signal BFM_ARESETn : STD_LOGIC;
  signal BFM_M00_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BFM_M00_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal BFM_M00_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BFM_M00_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal BFM_M00_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BFM_M00_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_ARREADY : STD_LOGIC;
  signal BFM_M00_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BFM_M00_ARVALID : STD_LOGIC;
  signal BFM_M00_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BFM_M00_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal BFM_M00_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BFM_M00_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal BFM_M00_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BFM_M00_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_AWREADY : STD_LOGIC;
  signal BFM_M00_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BFM_M00_AWVALID : STD_LOGIC;
  signal BFM_M00_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_BREADY : STD_LOGIC;
  signal BFM_M00_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal BFM_M00_BVALID : STD_LOGIC;
  signal BFM_M00_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal BFM_M00_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BFM_M00_RLAST : STD_LOGIC;
  signal BFM_M00_RREADY : STD_LOGIC;
  signal BFM_M00_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal BFM_M00_RVALID : STD_LOGIC;
  signal BFM_M00_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal BFM_M00_WLAST : STD_LOGIC;
  signal BFM_M00_WREADY : STD_LOGIC;
  signal BFM_M00_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal BFM_M00_WVALID : STD_LOGIC;
  signal DUT_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DUT_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DUT_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DUT_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_M00_AXI_ARREADY : STD_LOGIC;
  signal DUT_M00_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_M00_AXI_ARVALID : STD_LOGIC;
  signal DUT_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DUT_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal DUT_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal DUT_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_M00_AXI_AWREADY : STD_LOGIC;
  signal DUT_M00_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal DUT_M00_AXI_AWVALID : STD_LOGIC;
  signal DUT_M00_AXI_BREADY : STD_LOGIC;
  signal DUT_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_M00_AXI_BVALID : STD_LOGIC;
  signal DUT_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DUT_M00_AXI_RLAST : STD_LOGIC;
  signal DUT_M00_AXI_RREADY : STD_LOGIC;
  signal DUT_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DUT_M00_AXI_RVALID : STD_LOGIC;
  signal DUT_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DUT_M00_AXI_WLAST : STD_LOGIC;
  signal DUT_M00_AXI_WREADY : STD_LOGIC;
  signal DUT_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal DUT_M00_AXI_WVALID : STD_LOGIC;
  signal GND_1 : STD_LOGIC;
  signal NLW_BFM_ACLK1_UNCONNECTED : STD_LOGIC;
  signal NLW_BFM_M00_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BFM_M00_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BFM_S00_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BFM_S00_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
BFM: component tb_1_AXI4_INTERCONNECT_TEST_BFM_0_0
    port map (
      ACLK0 => BFM_ACLK0,
      ACLK1 => NLW_BFM_ACLK1_UNCONNECTED,
      ARESETn => BFM_ARESETn,
      M00_ACLK => BFM_ACLK0,
      M00_ARADDR(31 downto 0) => BFM_M00_ARADDR(31 downto 0),
      M00_ARBURST(1 downto 0) => BFM_M00_ARBURST(1 downto 0),
      M00_ARCACHE(3 downto 0) => BFM_M00_ARCACHE(3 downto 0),
      M00_ARESETn => BFM_ARESETn,
      M00_ARID(3 downto 0) => BFM_M00_ARID(3 downto 0),
      M00_ARLEN(7 downto 0) => BFM_M00_ARLEN(7 downto 0),
      M00_ARLOCK(0) => BFM_M00_ARLOCK(0),
      M00_ARPROT(2 downto 0) => BFM_M00_ARPROT(2 downto 0),
      M00_ARQOS(3 downto 0) => BFM_M00_ARQOS(3 downto 0),
      M00_ARREADY => BFM_M00_ARREADY,
      M00_ARREGION(3 downto 0) => BFM_M00_ARREGION(3 downto 0),
      M00_ARSIZE(2 downto 0) => BFM_M00_ARSIZE(2 downto 0),
      M00_ARUSER(3 downto 0) => NLW_BFM_M00_ARUSER_UNCONNECTED(3 downto 0),
      M00_ARVALID => BFM_M00_ARVALID,
      M00_AWADDR(31 downto 0) => BFM_M00_AWADDR(31 downto 0),
      M00_AWBURST(1 downto 0) => BFM_M00_AWBURST(1 downto 0),
      M00_AWCACHE(3 downto 0) => BFM_M00_AWCACHE(3 downto 0),
      M00_AWID(3 downto 0) => BFM_M00_AWID(3 downto 0),
      M00_AWLEN(7 downto 0) => BFM_M00_AWLEN(7 downto 0),
      M00_AWLOCK(0) => BFM_M00_AWLOCK(0),
      M00_AWPROT(2 downto 0) => BFM_M00_AWPROT(2 downto 0),
      M00_AWQOS(3 downto 0) => BFM_M00_AWQOS(3 downto 0),
      M00_AWREADY => BFM_M00_AWREADY,
      M00_AWREGION(3 downto 0) => BFM_M00_AWREGION(3 downto 0),
      M00_AWSIZE(2 downto 0) => BFM_M00_AWSIZE(2 downto 0),
      M00_AWUSER(3 downto 0) => NLW_BFM_M00_AWUSER_UNCONNECTED(3 downto 0),
      M00_AWVALID => BFM_M00_AWVALID,
      M00_BID(3 downto 0) => BFM_M00_BID(3 downto 0),
      M00_BREADY => BFM_M00_BREADY,
      M00_BRESP(1 downto 0) => BFM_M00_BRESP(1 downto 0),
      M00_BVALID => BFM_M00_BVALID,
      M00_RDATA(511 downto 0) => BFM_M00_RDATA(511 downto 0),
      M00_RID(3 downto 0) => BFM_M00_RID(3 downto 0),
      M00_RLAST => BFM_M00_RLAST,
      M00_RREADY => BFM_M00_RREADY,
      M00_RRESP(1 downto 0) => BFM_M00_RRESP(1 downto 0),
      M00_RVALID => BFM_M00_RVALID,
      M00_WDATA(511 downto 0) => BFM_M00_WDATA(511 downto 0),
      M00_WLAST => BFM_M00_WLAST,
      M00_WREADY => BFM_M00_WREADY,
      M00_WSTRB(63 downto 0) => BFM_M00_WSTRB(63 downto 0),
      M00_WVALID => BFM_M00_WVALID,
      S00_ACLK => BFM_ACLK0,
      S00_ARADDR(31 downto 0) => DUT_M00_AXI_ARADDR(31 downto 0),
      S00_ARBURST(1 downto 0) => DUT_M00_AXI_ARBURST(1 downto 0),
      S00_ARCACHE(3 downto 0) => DUT_M00_AXI_ARCACHE(3 downto 0),
      S00_ARESETn => BFM_ARESETn,
      S00_ARID(3) => GND_1,
      S00_ARID(2) => GND_1,
      S00_ARID(1) => GND_1,
      S00_ARID(0) => GND_1,
      S00_ARLEN(7 downto 0) => DUT_M00_AXI_ARLEN(7 downto 0),
      S00_ARLOCK(0) => DUT_M00_AXI_ARLOCK(0),
      S00_ARPROT(2 downto 0) => DUT_M00_AXI_ARPROT(2 downto 0),
      S00_ARQOS(3 downto 0) => DUT_M00_AXI_ARQOS(3 downto 0),
      S00_ARREADY => DUT_M00_AXI_ARREADY,
      S00_ARREGION(3 downto 0) => DUT_M00_AXI_ARREGION(3 downto 0),
      S00_ARSIZE(2 downto 0) => DUT_M00_AXI_ARSIZE(2 downto 0),
      S00_ARUSER(3) => GND_1,
      S00_ARUSER(2) => GND_1,
      S00_ARUSER(1) => GND_1,
      S00_ARUSER(0) => GND_1,
      S00_ARVALID => DUT_M00_AXI_ARVALID,
      S00_AWADDR(31 downto 0) => DUT_M00_AXI_AWADDR(31 downto 0),
      S00_AWBURST(1 downto 0) => DUT_M00_AXI_AWBURST(1 downto 0),
      S00_AWCACHE(3 downto 0) => DUT_M00_AXI_AWCACHE(3 downto 0),
      S00_AWID(3) => GND_1,
      S00_AWID(2) => GND_1,
      S00_AWID(1) => GND_1,
      S00_AWID(0) => GND_1,
      S00_AWLEN(7 downto 0) => DUT_M00_AXI_AWLEN(7 downto 0),
      S00_AWLOCK(0) => DUT_M00_AXI_AWLOCK(0),
      S00_AWPROT(2 downto 0) => DUT_M00_AXI_AWPROT(2 downto 0),
      S00_AWQOS(3 downto 0) => DUT_M00_AXI_AWQOS(3 downto 0),
      S00_AWREADY => DUT_M00_AXI_AWREADY,
      S00_AWREGION(3 downto 0) => DUT_M00_AXI_AWREGION(3 downto 0),
      S00_AWSIZE(2 downto 0) => DUT_M00_AXI_AWSIZE(2 downto 0),
      S00_AWUSER(3) => GND_1,
      S00_AWUSER(2) => GND_1,
      S00_AWUSER(1) => GND_1,
      S00_AWUSER(0) => GND_1,
      S00_AWVALID => DUT_M00_AXI_AWVALID,
      S00_BID(3 downto 0) => NLW_BFM_S00_BID_UNCONNECTED(3 downto 0),
      S00_BREADY => DUT_M00_AXI_BREADY,
      S00_BRESP(1 downto 0) => DUT_M00_AXI_BRESP(1 downto 0),
      S00_BVALID => DUT_M00_AXI_BVALID,
      S00_RDATA(31 downto 0) => DUT_M00_AXI_RDATA(31 downto 0),
      S00_RID(3 downto 0) => NLW_BFM_S00_RID_UNCONNECTED(3 downto 0),
      S00_RLAST => DUT_M00_AXI_RLAST,
      S00_RREADY => DUT_M00_AXI_RREADY,
      S00_RRESP(1 downto 0) => DUT_M00_AXI_RRESP(1 downto 0),
      S00_RVALID => DUT_M00_AXI_RVALID,
      S00_WDATA(31 downto 0) => DUT_M00_AXI_WDATA(31 downto 0),
      S00_WLAST => DUT_M00_AXI_WLAST,
      S00_WREADY => DUT_M00_AXI_WREADY,
      S00_WSTRB(3 downto 0) => DUT_M00_AXI_WSTRB(3 downto 0),
      S00_WVALID => DUT_M00_AXI_WVALID
    );
DUT: entity work.tb_1_axi_interconnect_0_0
    port map (
      ACLK => BFM_ACLK0,
      ARESETN => BFM_ARESETn,
      M00_ACLK => BFM_ACLK0,
      M00_ARESETN => BFM_ARESETn,
      M00_AXI_araddr(31 downto 0) => DUT_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => DUT_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => DUT_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => DUT_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => DUT_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => DUT_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => DUT_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => DUT_M00_AXI_ARREADY,
      M00_AXI_arregion(3 downto 0) => DUT_M00_AXI_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => DUT_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => DUT_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => DUT_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => DUT_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => DUT_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => DUT_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => DUT_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => DUT_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => DUT_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => DUT_M00_AXI_AWREADY,
      M00_AXI_awregion(3 downto 0) => DUT_M00_AXI_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => DUT_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => DUT_M00_AXI_AWVALID,
      M00_AXI_bready => DUT_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => DUT_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => DUT_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => DUT_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => DUT_M00_AXI_RLAST,
      M00_AXI_rready => DUT_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => DUT_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => DUT_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => DUT_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => DUT_M00_AXI_WLAST,
      M00_AXI_wready => DUT_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => DUT_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => DUT_M00_AXI_WVALID,
      S00_ACLK => BFM_ACLK0,
      S00_ARESETN => BFM_ARESETn,
      S00_AXI_araddr(31 downto 0) => BFM_M00_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => BFM_M00_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => BFM_M00_ARCACHE(3 downto 0),
      S00_AXI_arid(3 downto 0) => BFM_M00_ARID(3 downto 0),
      S00_AXI_arlen(7 downto 0) => BFM_M00_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => BFM_M00_ARLOCK(0),
      S00_AXI_arprot(2 downto 0) => BFM_M00_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => BFM_M00_ARQOS(3 downto 0),
      S00_AXI_arready => BFM_M00_ARREADY,
      S00_AXI_arregion(3 downto 0) => BFM_M00_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => BFM_M00_ARSIZE(2 downto 0),
      S00_AXI_arvalid => BFM_M00_ARVALID,
      S00_AXI_awaddr(31 downto 0) => BFM_M00_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => BFM_M00_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => BFM_M00_AWCACHE(3 downto 0),
      S00_AXI_awid(3 downto 0) => BFM_M00_AWID(3 downto 0),
      S00_AXI_awlen(7 downto 0) => BFM_M00_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => BFM_M00_AWLOCK(0),
      S00_AXI_awprot(2 downto 0) => BFM_M00_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => BFM_M00_AWQOS(3 downto 0),
      S00_AXI_awready => BFM_M00_AWREADY,
      S00_AXI_awregion(3 downto 0) => BFM_M00_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => BFM_M00_AWSIZE(2 downto 0),
      S00_AXI_awvalid => BFM_M00_AWVALID,
      S00_AXI_bid(3 downto 0) => BFM_M00_BID(3 downto 0),
      S00_AXI_bready => BFM_M00_BREADY,
      S00_AXI_bresp(1 downto 0) => BFM_M00_BRESP(1 downto 0),
      S00_AXI_bvalid => BFM_M00_BVALID,
      S00_AXI_rdata(511 downto 0) => BFM_M00_RDATA(511 downto 0),
      S00_AXI_rid(3 downto 0) => BFM_M00_RID(3 downto 0),
      S00_AXI_rlast => BFM_M00_RLAST,
      S00_AXI_rready => BFM_M00_RREADY,
      S00_AXI_rresp(1 downto 0) => BFM_M00_RRESP(1 downto 0),
      S00_AXI_rvalid => BFM_M00_RVALID,
      S00_AXI_wdata(511 downto 0) => BFM_M00_WDATA(511 downto 0),
      S00_AXI_wlast => BFM_M00_WLAST,
      S00_AXI_wready => BFM_M00_WREADY,
      S00_AXI_wstrb(63 downto 0) => BFM_M00_WSTRB(63 downto 0),
      S00_AXI_wvalid => BFM_M00_WVALID
    );
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
end STRUCTURE;
