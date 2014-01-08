-----------------------------------------------------------------------------------
--!     @file    axi4_interconnect_test_bfm.vhd
--!     @brief   Bus Function Model for AXI4 Interconnect Test
--!     @version 1.0.0
--!     @date    2014/1/8
--!     @author  Ichiro Kawazome <ichiro_k@ca2.so-net.ne.jp>
-----------------------------------------------------------------------------------
--
--      Copyright (C) 2012,2013 Ichiro Kawazome
--      All rights reserved.
--
--      Redistribution and use in source and binary forms, with or without
--      modification, are permitted provided that the following conditions
--      are met:
--
--        1. Redistributions of source code must retain the above copyright
--           notice, this list of conditions and the following disclaimer.
--
--        2. Redistributions in binary form must reproduce the above copyright
--           notice, this list of conditions and the following disclaimer in
--           the documentation and/or other materials provided with the
--           distribution.
--
--      THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--      "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--      LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
--      A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT
--      OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
--      SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
--      LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
--      DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
--      THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
--      (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
--      OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-----------------------------------------------------------------------------------
library ieee;
use     ieee.std_logic_1164.all;
entity  AXI4_INTERCONNECT_TEST_BFM is
    generic (
        NAME            : --! @brief テストベンチの識別名.
                          STRING    := "TB";
        SCENARIO_FILE   : --! @brief シナリオファイルの名前.
                          STRING    := "test.snr";
        READ_ENABLE     : --! @brief リードモードを指定する.
                          boolean   := TRUE;
        WRITE_ENABLE    : --! @brief ライトモードを指定する.
                          boolean   := TRUE;
        ID_WIDTH        : --! @brief M00_ID/S00_IDのビット幅.
                          integer   :=  4;
        M00_ADDR_WIDTH  : --! @brief M00_ARADDR/M00_AWADDRのビット幅.
                          integer   := 32;
        M00_USER_WIDTH  : --! @brief M00_ARUSER/M00_AWUSERのビット幅.
                          integer   := 4;
        M00_DATA_WIDTH  : --! @brief M00_RDATA/M00_WDATAのビット幅.
                          integer   := 32;
        S00_ADDR_WIDTH  : --! @brief S00_ARADDR/S00_AWADDRのビット幅.
                          integer   := 32;
        S00_USER_WIDTH  : --! @brief S00_ARUSER/S00_AWUSERのビット幅.
                          integer   := 4;
        S00_DATA_WIDTH  : --! @brief S00_RDATA/S00_WDATAのビット幅.
                          integer   := 32
    );
    port (
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
        M00_ACLK        : in  std_logic;
        M00_ARESETn     : in  std_logic;
        M00_ARADDR      : out std_logic_vector(M00_ADDR_WIDTH  -1 downto 0);
        M00_ARLEN       : out std_logic_vector(7 downto 0);
        M00_ARSIZE      : out std_logic_vector(2 downto 0);
        M00_ARBURST     : out std_logic_vector(1 downto 0);
        M00_ARLOCK      : out std_logic_vector(0 downto 0);
        M00_ARCACHE     : out std_logic_vector(3 downto 0);
        M00_ARPROT      : out std_logic_vector(2 downto 0);
        M00_ARQOS       : out std_logic_vector(3 downto 0);
        M00_ARREGION    : out std_logic_vector(3 downto 0);
        M00_ARUSER      : out std_logic_vector(M00_USER_WIDTH  -1 downto 0);
        M00_ARID        : out std_logic_vector(ID_WIDTH        -1 downto 0);
        M00_ARVALID     : out std_logic;
        M00_ARREADY     : in  std_logic;
        M00_RVALID      : in  std_logic;
        M00_RLAST       : in  std_logic;
        M00_RDATA       : in  std_logic_vector(M00_DATA_WIDTH  -1 downto 0);
        M00_RRESP       : in  std_logic_vector(1 downto 0);
        M00_RID         : in  std_logic_vector(ID_WIDTH        -1 downto 0);
        M00_RREADY      : out std_logic;
        M00_AWADDR      : out std_logic_vector(M00_ADDR_WIDTH  -1 downto 0);
        M00_AWLEN       : out std_logic_vector(7 downto 0);
        M00_AWSIZE      : out std_logic_vector(2 downto 0);
        M00_AWBURST     : out std_logic_vector(1 downto 0);
        M00_AWLOCK      : out std_logic_vector(0 downto 0);
        M00_AWCACHE     : out std_logic_vector(3 downto 0);
        M00_AWPROT      : out std_logic_vector(2 downto 0);
        M00_AWQOS       : out std_logic_vector(3 downto 0);
        M00_AWREGION    : out std_logic_vector(3 downto 0);
        M00_AWUSER      : out std_logic_vector(M00_USER_WIDTH  -1 downto 0);
        M00_AWID        : out std_logic_vector(ID_WIDTH        -1 downto 0);
        M00_AWVALID     : out std_logic;
        M00_AWREADY     : in  std_logic;
        M00_WLAST       : out std_logic;
        M00_WDATA       : out std_logic_vector(M00_DATA_WIDTH  -1 downto 0);
        M00_WSTRB       : out std_logic_vector(M00_DATA_WIDTH/8-1 downto 0);
        M00_WVALID      : out std_logic;
        M00_WREADY      : in  std_logic;
        M00_BRESP       : in  std_logic_vector(1 downto 0);
        M00_BID         : in  std_logic_vector(ID_WIDTH        -1 downto 0);
        M00_BVALID      : in  std_logic;
        M00_BREADY      : out std_logic;
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
        S00_ACLK        : in  std_logic;
        S00_ARESETn     : in  std_logic;
        S00_ARADDR      : in  std_logic_vector(S00_ADDR_WIDTH  -1 downto 0);
        S00_ARLEN       : in  std_logic_vector(7 downto 0);
        S00_ARSIZE      : in  std_logic_vector(2 downto 0);
        S00_ARBURST     : in  std_logic_vector(1 downto 0);
        S00_ARLOCK      : in  std_logic_vector(0 downto 0);
        S00_ARCACHE     : in  std_logic_vector(3 downto 0);
        S00_ARPROT      : in  std_logic_vector(2 downto 0);
        S00_ARQOS       : in  std_logic_vector(3 downto 0);
        S00_ARREGION    : in  std_logic_vector(3 downto 0);
        S00_ARUSER      : in  std_logic_vector(S00_USER_WIDTH  -1 downto 0);
        S00_ARID        : in  std_logic_vector(ID_WIDTH        -1 downto 0);
        S00_ARVALID     : in  std_logic;
        S00_ARREADY     : out std_logic;
        S00_RVALID      : out std_logic;
        S00_RLAST       : out std_logic;
        S00_RDATA       : out std_logic_vector(S00_DATA_WIDTH  -1 downto 0);
        S00_RRESP       : out std_logic_vector(1 downto 0);
        S00_RID         : out std_logic_vector(ID_WIDTH        -1 downto 0);
        S00_RREADY      : in  std_logic;
        S00_AWADDR      : in  std_logic_vector(S00_ADDR_WIDTH  -1 downto 0);
        S00_AWLEN       : in  std_logic_vector(7 downto 0);
        S00_AWSIZE      : in  std_logic_vector(2 downto 0);
        S00_AWBURST     : in  std_logic_vector(1 downto 0);
        S00_AWLOCK      : in  std_logic_vector(0 downto 0);
        S00_AWCACHE     : in  std_logic_vector(3 downto 0);
        S00_AWPROT      : in  std_logic_vector(2 downto 0);
        S00_AWQOS       : in  std_logic_vector(3 downto 0);
        S00_AWREGION    : in  std_logic_vector(3 downto 0);
        S00_AWUSER      : in  std_logic_vector(S00_USER_WIDTH  -1 downto 0);
        S00_AWID        : in  std_logic_vector(ID_WIDTH        -1 downto 0);
        S00_AWVALID     : in  std_logic;
        S00_AWREADY     : out std_logic;
        S00_WLAST       : in  std_logic;
        S00_WDATA       : in  std_logic_vector(S00_DATA_WIDTH  -1 downto 0);
        S00_WSTRB       : in  std_logic_vector(S00_DATA_WIDTH/8-1 downto 0);
        S00_WVALID      : in  std_logic;
        S00_WREADY      : out std_logic;
        S00_BRESP       : out std_logic_vector(1 downto 0);
        S00_BID         : out std_logic_vector(ID_WIDTH        -1 downto 0);
        S00_BVALID      : out std_logic;
        S00_BREADY      : in  std_logic;
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
        ACLK0           : out std_logic;
        ACLK1           : out std_logic;
        ARESETn         : out std_logic
    );
end     AXI4_INTERCONNECT_TEST_BFM;
library ieee;
use     ieee.std_logic_1164.all;
use     ieee.numeric_std.all;
use     std.textio.all;
library DUMMY_PLUG;
use     DUMMY_PLUG.AXI4_TYPES.all;
use     DUMMY_PLUG.AXI4_MODELS.AXI4_MASTER_PLAYER;
use     DUMMY_PLUG.AXI4_MODELS.AXI4_SLAVE_PLAYER;
use     DUMMY_PLUG.AXI4_MODELS.AXI4_SIGNAL_PRINTER;
use     DUMMY_PLUG.SYNC.all;
use     DUMMY_PLUG.CORE.MARCHAL;
use     DUMMY_PLUG.CORE.REPORT_STATUS_TYPE;
use     DUMMY_PLUG.CORE.REPORT_STATUS_VECTOR;
use     DUMMY_PLUG.CORE.MARGE_REPORT_STATUS;
architecture MODEL of AXI4_INTERCONNECT_TEST_BFM is
    -------------------------------------------------------------------------------
    -- 各種定数
    -------------------------------------------------------------------------------
    constant PERIOD          : time    := 10 ns;
    constant DELAY           : time    :=  1 ns;
    constant M00_WIDTH       : AXI4_SIGNAL_WIDTH_TYPE := (
                                 ID          => ID_WIDTH,
                                 AWADDR      => M00_ADDR_WIDTH,
                                 ARADDR      => M00_ADDR_WIDTH,
                                 ALEN        => 8,
                                 ALOCK       => 1,
                                 WDATA       => M00_DATA_WIDTH,
                                 RDATA       => M00_DATA_WIDTH,
                                 ARUSER      => M00_USER_WIDTH,
                                 AWUSER      => M00_USER_WIDTH,
                                 WUSER       => 1,
                                 RUSER       => 1,
                                 BUSER       => 1);
    constant S00_WIDTH       : AXI4_SIGNAL_WIDTH_TYPE := (
                                 ID          => ID_WIDTH,
                                 AWADDR      => S00_ADDR_WIDTH,
                                 ARADDR      => S00_ADDR_WIDTH,
                                 ALEN        => 8,
                                 ALOCK       => 1,
                                 WDATA       => S00_DATA_WIDTH,
                                 RDATA       => S00_DATA_WIDTH,
                                 ARUSER      => S00_USER_WIDTH,
                                 AWUSER      => S00_USER_WIDTH,
                                 WUSER       => 1,
                                 RUSER       => 1,
                                 BUSER       => 1);
    constant SYNC_WIDTH      : integer :=  2;
    constant GPO_WIDTH       : integer :=  8;
    constant GPI_WIDTH       : integer :=  2*GPO_WIDTH;
    -------------------------------------------------------------------------------
    -- グローバルシグナル.
    -------------------------------------------------------------------------------
    signal   clock           : std_logic;
    signal   reset           : std_logic;
    signal   sync            : SYNC_SIG_VECTOR (SYNC_WIDTH     -1 downto 0);
    -------------------------------------------------------------------------------
    -- 
    -------------------------------------------------------------------------------
    signal   N_REPORT        : REPORT_STATUS_TYPE;
    signal   N_FINISH        : std_logic;
    -------------------------------------------------------------------------------
    -- 
    -------------------------------------------------------------------------------
    signal   M00_GPI         : std_logic_vector(GPI_WIDTH        -1 downto 0);
    signal   M00_GPO         : std_logic_vector(GPO_WIDTH        -1 downto 0);
    signal   M00_REPORT      : REPORT_STATUS_TYPE;
    signal   M00_FINISH      : std_logic;
    signal   m00_araddr_io   : std_logic_vector(M00_WIDTH.ARADDR -1 downto 0);
    signal   m00_arlen_io    : std_logic_vector(M00_WIDTH.ALEN   -1 downto 0);
    signal   m00_arsize_io   : std_logic_vector(2 downto 0);
    signal   m00_arburst_io  : std_logic_vector(1 downto 0);
    signal   m00_arlock_io   : std_logic_vector(0 downto 0);
    signal   m00_arcache_io  : std_logic_vector(3 downto 0);
    signal   m00_arprot_io   : std_logic_vector(2 downto 0);
    signal   m00_arqos_io    : std_logic_vector(3 downto 0);
    signal   m00_arregion_io : std_logic_vector(3 downto 0);
    signal   m00_aruser_io   : std_logic_vector(M00_WIDTH.ARUSER -1 downto 0);
    signal   m00_arid_io     : std_logic_vector(M00_WIDTH.ID     -1 downto 0);
    signal   m00_arvalid_io  : std_logic;
    signal   m00_rready_io   : std_logic;
    signal   m00_awaddr_io   : std_logic_vector(M00_WIDTH.AWADDR -1 downto 0);
    signal   m00_awlen_io    : std_logic_vector(M00_WIDTH.ALEN   -1 downto 0);
    signal   m00_awsize_io   : std_logic_vector(2 downto 0);
    signal   m00_awburst_io  : std_logic_vector(1 downto 0);
    signal   m00_awlock_io   : std_logic_vector(0 downto 0);
    signal   m00_awcache_io  : std_logic_vector(3 downto 0);
    signal   m00_awprot_io   : std_logic_vector(2 downto 0);
    signal   m00_awqos_io    : std_logic_vector(3 downto 0);
    signal   m00_awregion_io : std_logic_vector(3 downto 0);
    signal   m00_awuser_io   : std_logic_vector(M00_WIDTH.AWUSER -1 downto 0);
    signal   m00_awid_io     : std_logic_vector(M00_WIDTH.ID     -1 downto 0);
    signal   m00_awvalid_io  : std_logic;
    signal   m00_wlast_io    : std_logic;
    signal   m00_wdata_io    : std_logic_vector(M00_WIDTH.WDATA  -1 downto 0);
    signal   m00_wstrb_io    : std_logic_vector(M00_WIDTH.WDATA/8-1 downto 0);
    signal   m00_wvalid_io   : std_logic;
    signal   m00_bready_io   : std_logic;
    constant m00_ruser_io    : std_logic_vector(M00_WIDTH.RUSER  -1 downto 0) := (others => '0');
    constant m00_buser_io    : std_logic_vector(M00_WIDTH.BUSER  -1 downto 0) := (others => '0');
    signal   m00_wuser_io    : std_logic_vector(M00_WIDTH.WUSER  -1 downto 0);
    signal   m00_wid_io      : std_logic_vector(M00_WIDTH.ID     -1 downto 0);
    -------------------------------------------------------------------------------
    -- 
    -------------------------------------------------------------------------------
    signal   S00_GPI         : std_logic_vector(GPI_WIDTH        -1 downto 0);
    signal   S00_GPO         : std_logic_vector(GPO_WIDTH        -1 downto 0);
    signal   S00_REPORT      : REPORT_STATUS_TYPE;
    signal   S00_FINISH      : std_logic;
    signal   s00_arready_io  : std_logic;
    signal   s00_rvalid_io   : std_logic;
    signal   s00_rlast_io    : std_logic;
    signal   s00_rdata_io    : std_logic_vector(S00_WIDTH.RDATA  -1 downto 0);
    signal   s00_rresp_io    : std_logic_vector(1 downto 0);
    signal   s00_rid_io      : std_logic_vector(S00_WIDTH.ID     -1 downto 0);
    signal   s00_awready_io  : std_logic;
    signal   s00_wready_io   : std_logic;
    signal   s00_bresp_io    : std_logic_vector(1 downto 0);
    signal   s00_bid_io      : std_logic_vector(S00_WIDTH.ID     -1 downto 0);
    signal   s00_bvalid_io   : std_logic;
    signal   s00_ruser_io    : std_logic_vector(S00_WIDTH.RUSER  -1 downto 0);
    signal   s00_buser_io    : std_logic_vector(S00_WIDTH.BUSER  -1 downto 0);
    constant s00_wuser_io    : std_logic_vector(S00_WIDTH.WUSER  -1 downto 0) := (others => '0');
    constant s00_wid_io      : std_logic_vector(S00_WIDTH.ID     -1 downto 0) := (others => '0');
begin
    -------------------------------------------------------------------------------
    -- 
    -------------------------------------------------------------------------------
    N: MARCHAL
        generic map(
            SCENARIO_FILE   => SCENARIO_FILE,
            NAME            => "MARCHAL",
            SYNC_PLUG_NUM   => 1,
            SYNC_WIDTH      => SYNC_WIDTH,
            FINISH_ABORT    => FALSE
        )
        port map(
            CLK             => clock           , -- In  :
            RESET           => reset           , -- Out :
            SYNC(0)         => sync(0)         , -- I/O :
            SYNC(1)         => sync(1)         , -- I/O :
            REPORT_STATUS   => n_report        , -- Out :
            FINISH          => n_finish          -- Out :
        );
    ------------------------------------------------------------------------------
    -- AXI4_MASTER_PLAYER
    ------------------------------------------------------------------------------
    M00: AXI4_MASTER_PLAYER
        generic map (
            SCENARIO_FILE   => SCENARIO_FILE   ,
            NAME            => "M00"           ,
            READ_ENABLE     => READ_ENABLE     ,
            WRITE_ENABLE    => WRITE_ENABLE    ,
            OUTPUT_DELAY    => DELAY           ,
            WIDTH           => M00_WIDTH       ,
            SYNC_PLUG_NUM   => 2               ,
            SYNC_WIDTH      => SYNC_WIDTH      ,
            GPI_WIDTH       => GPI_WIDTH       ,
            GPO_WIDTH       => GPO_WIDTH       ,
            FINISH_ABORT    => FALSE
        )
        port map(
        ---------------------------------------------------------------------------
        -- グローバルシグナル.
        ---------------------------------------------------------------------------
            ACLK            => M00_ACLK        , -- In  :
            ARESETn         => M00_ARESETn     , -- In  :
        ---------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        ---------------------------------------------------------------------------
            ARADDR          => m00_araddr_io   , -- I/O : 
            ARLEN           => m00_arlen_io    , -- I/O : 
            ARSIZE          => m00_arsize_io   , -- I/O : 
            ARBURST         => m00_arburst_io  , -- I/O : 
            ARLOCK          => m00_arlock_io   , -- I/O : 
            ARCACHE         => m00_arcache_io  , -- I/O : 
            ARPROT          => m00_arprot_io   , -- I/O : 
            ARQOS           => m00_arqos_io    , -- I/O : 
            ARREGION        => m00_arregion_io , -- I/O : 
            ARUSER          => m00_aruser_io   , -- I/O : 
            ARID            => m00_arid_io     , -- I/O : 
            ARVALID         => m00_arvalid_io  , -- I/O : 
            ARREADY         => M00_ARREADY     , -- In  :    
        ---------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        ---------------------------------------------------------------------------
            RLAST           => M00_RLAST       , -- In  :    
            RDATA           => M00_RDATA       , -- In  :    
            RRESP           => M00_RRESP       , -- In  :    
            RUSER           => m00_ruser_io    , -- In  :    
            RID             => M00_RID         , -- In  :    
            RVALID          => M00_RVALID      , -- In  :    
            RREADY          => m00_rready_io   , -- I/O : 
        --------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        --------------------------------------------------------------------------
            AWADDR          => m00_awaddr_io   , -- I/O : 
            AWLEN           => m00_awlen_io    , -- I/O : 
            AWSIZE          => m00_awsize_io   , -- I/O : 
            AWBURST         => m00_awburst_io  , -- I/O : 
            AWLOCK          => m00_awlock_io   , -- I/O : 
            AWCACHE         => m00_awcache_io  , -- I/O : 
            AWPROT          => m00_awprot_io   , -- I/O : 
            AWQOS           => m00_awqos_io    , -- I/O : 
            AWREGION        => m00_awregion_io , -- I/O : 
            AWUSER          => m00_awuser_io   , -- I/O : 
            AWID            => m00_awid_io     , -- I/O : 
            AWVALID         => m00_awvalid_io  , -- I/O : 
            AWREADY         => M00_AWREADY     , -- In  :    
        --------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        --------------------------------------------------------------------------
            WLAST           => m00_wlast_io    , -- I/O : 
            WDATA           => m00_wdata_io    , -- I/O : 
            WSTRB           => m00_wstrb_io    , -- I/O : 
            WUSER           => m00_wuser_io    , -- I/O : 
            WID             => m00_wid_io      , -- I/O : 
            WVALID          => m00_wvalid_io   , -- I/O : 
            WREADY          => M00_WREADY      , -- In  :    
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
            BRESP           => M00_BRESP       , -- In  :    
            BUSER           => m00_buser_io    , -- In  :    
            BID             => M00_BID         , -- In  :    
            BVALID          => M00_BVALID      , -- In  :    
            BREADY          => m00_bready_io   , -- I/O : 
        --------------------------------------------------------------------------
        -- シンクロ用信号
        --------------------------------------------------------------------------
            SYNC(0)         => sync(0)         , -- I/O :
            SYNC(1)         => sync(1)         , -- I/O :
        --------------------------------------------------------------------------
        -- GPIO
        --------------------------------------------------------------------------
            GPI             => m00_gpi         , -- In  :
            GPO             => m00_gpo         , -- Out :
        --------------------------------------------------------------------------
        -- 各種状態出力.
        --------------------------------------------------------------------------
            REPORT_STATUS   => m00_report      , -- Out :
            FINISH          => m00_finish        -- Out :
        );
    M00_ARADDR      <= m00_araddr_io      ;
    M00_ARLEN       <= m00_arlen_io       ;
    M00_ARSIZE      <= m00_arsize_io      ;
    M00_ARBURST     <= m00_arburst_io     ;
    M00_ARLOCK      <= m00_arlock_io      ;
    M00_ARCACHE     <= m00_arcache_io     ;
    M00_ARPROT      <= m00_arprot_io      ;
    M00_ARQOS       <= m00_arqos_io       ;
    M00_ARREGION    <= m00_arregion_io    ;
    M00_ARUSER      <= m00_aruser_io      ;
    M00_ARID        <= m00_arid_io        ;
    M00_ARVALID     <= m00_arvalid_io     ;
    M00_RREADY      <= m00_rready_io      ;
    M00_AWADDR      <= m00_awaddr_io      ;
    M00_AWLEN       <= m00_awlen_io       ;
    M00_AWSIZE      <= m00_awsize_io      ;
    M00_AWBURST     <= m00_awburst_io     ;
    M00_AWLOCK      <= m00_awlock_io      ;
    M00_AWCACHE     <= m00_awcache_io     ;
    M00_AWPROT      <= m00_awprot_io      ;
    M00_AWQOS       <= m00_awqos_io       ;
    M00_AWREGION    <= m00_awregion_io    ;
    M00_AWUSER      <= m00_awuser_io      ;
    M00_AWID        <= m00_awid_io        ;
    M00_AWVALID     <= m00_awvalid_io     ;
    M00_WLAST       <= m00_wlast_io       ;
    M00_WDATA       <= m00_wdata_io       ;
    M00_WSTRB       <= m00_wstrb_io       ;
    M00_WVALID      <= m00_wvalid_io      ;
    M00_BREADY      <= m00_bready_io      ;
    ------------------------------------------------------------------------------
    -- AXI4_SLAVE_PLAYER
    ------------------------------------------------------------------------------
    S00: AXI4_SLAVE_PLAYER
        generic map (
            SCENARIO_FILE   => SCENARIO_FILE   ,
            NAME            => "S00"           ,
            READ_ENABLE     => READ_ENABLE     ,
            WRITE_ENABLE    => WRITE_ENABLE    ,
            OUTPUT_DELAY    => DELAY           ,
            WIDTH           => S00_WIDTH       ,
            SYNC_PLUG_NUM   => 3               ,
            SYNC_WIDTH      => SYNC_WIDTH      ,
            GPI_WIDTH       => GPI_WIDTH       ,
            GPO_WIDTH       => GPO_WIDTH       ,
            FINISH_ABORT    => FALSE
        )
        port map(
        ---------------------------------------------------------------------------
        -- グローバルシグナル.
        ---------------------------------------------------------------------------
            ACLK            => S00_ACLK        , -- In  :
            ARESETn         => S00_ARESETn     , -- In  :
        ---------------------------------------------------------------------------
        -- リードアドレスチャネルシグナル.
        ---------------------------------------------------------------------------
            ARADDR          => S00_ARADDR      , -- In  :    
            ARLEN           => S00_ARLEN       , -- In  :    
            ARSIZE          => S00_ARSIZE      , -- In  :    
            ARBURST         => S00_ARBURST     , -- In  :    
            ARLOCK          => S00_ARLOCK      , -- In  :    
            ARCACHE         => S00_ARCACHE     , -- In  :    
            ARPROT          => S00_ARPROT      , -- In  :    
            ARQOS           => S00_ARQOS       , -- In  :    
            ARREGION        => S00_ARREGION    , -- In  :    
            ARUSER          => S00_ARUSER      , -- In  :    
            ARID            => S00_ARID        , -- In  :    
            ARVALID         => S00_ARVALID     , -- In  :    
            ARREADY         => s00_arready_io  , -- I/O : 
        ---------------------------------------------------------------------------
        -- リードデータチャネルシグナル.
        ---------------------------------------------------------------------------
            RLAST           => s00_rlast_io    , -- I/O : 
            RDATA           => s00_rdata_io    , -- I/O : 
            RRESP           => s00_rresp_io    , -- I/O : 
            RUSER           => s00_ruser_io    , -- I/O : 
            RID             => s00_rid_io      , -- I/O : 
            RVALID          => s00_rvalid_io   , -- I/O : 
            RREADY          => S00_RREADY      , -- In  :    
        ---------------------------------------------------------------------------
        -- ライトアドレスチャネルシグナル.
        ---------------------------------------------------------------------------
            AWADDR          => S00_AWADDR      , -- In  :    
            AWLEN           => S00_AWLEN       , -- In  :    
            AWSIZE          => S00_AWSIZE      , -- In  :    
            AWBURST         => S00_AWBURST     , -- In  :    
            AWLOCK          => S00_AWLOCK      , -- In  :    
            AWCACHE         => S00_AWCACHE     , -- In  :    
            AWPROT          => S00_AWPROT      , -- In  :    
            AWQOS           => S00_AWQOS       , -- In  :    
            AWREGION        => S00_AWREGION    , -- In  :    
            AWUSER          => S00_AWUSER      , -- In  :    
            AWID            => S00_AWID        , -- In  :    
            AWVALID         => S00_AWVALID     , -- In  :    
            AWREADY         => s00_awready_io  , -- I/O : 
        ---------------------------------------------------------------------------
        -- ライトデータチャネルシグナル.
        ---------------------------------------------------------------------------
            WLAST           => S00_WLAST       , -- In  :    
            WDATA           => S00_WDATA       , -- In  :    
            WSTRB           => S00_WSTRB       , -- In  :    
            WUSER           => s00_wuser_io    , -- In  :    
            WID             => s00_wid_io      , -- In  :    
            WVALID          => S00_WVALID      , -- In  :    
            WREADY          => s00_wready_io   , -- I/O : 
        --------------------------------------------------------------------------
        -- ライト応答チャネルシグナル.
        --------------------------------------------------------------------------
            BRESP           => s00_bresp_io    , -- I/O : 
            BUSER           => s00_buser_io    , -- I/O : 
            BID             => s00_bid_io      , -- I/O : 
            BVALID          => s00_bvalid_io   , -- I/O : 
            BREADY          => S00_BREADY      , -- In  :    
        ---------------------------------------------------------------------------
        -- シンクロ用信号
        ---------------------------------------------------------------------------
            SYNC(0)         => sync(0)         , -- I/O :
            SYNC(1)         => sync(1)         , -- I/O :
        --------------------------------------------------------------------------
        -- GPIO
        --------------------------------------------------------------------------
            GPI             => s00_gpi         , -- In  :
            GPO             => s00_gpo         , -- Out :
        --------------------------------------------------------------------------
        -- 各種状態出力.
        --------------------------------------------------------------------------
            REPORT_STATUS   => s00_report      , -- Out :
            FINISH          => s00_finish        -- Out :
    );
    S00_ARREADY     <= s00_arready_io;
    S00_RVALID      <= s00_rvalid_io;
    S00_RLAST       <= s00_rlast_io;
    S00_RDATA       <= s00_rdata_io;
    S00_RRESP       <= s00_rresp_io;
    S00_RID         <= s00_rid_io;
    S00_AWREADY     <= s00_awready_io;
    S00_WREADY      <= s00_wready_io;
    S00_BRESP       <= s00_bresp_io;
    S00_BID         <= s00_bid_io;
    S00_BVALID      <= s00_bvalid_io;
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
    process begin
        clock <= '1';
        ACLK0 <= '1';
        ACLK1 <= '1';
        wait for PERIOD / 2;
        clock <= '0';
        ACLK0 <= '0';
        ACLK1 <= '0';
        wait for PERIOD / 2;
    end process;
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
    ARESETn <= '1' when (reset = '0') else '0';
    m00_gpi <= s00_gpo & m00_gpo;
    s00_gpi <= s00_gpo & m00_gpo;
    -------------------------------------------------------------------------------
    --
    -------------------------------------------------------------------------------
    process
        variable L   : LINE;
        constant T   : STRING(1 to 7) := "  ***  ";
        variable rep : REPORT_STATUS_TYPE;
        variable rv  : REPORT_STATUS_VECTOR(1 to 2);
    begin
        wait until (N_FINISH'event and N_FINISH = '1');
        wait for DELAY;
        WRITE(L,T);                                                     WRITELINE(OUTPUT,L);
        WRITE(L,T & "ERROR REPORT " & NAME);                            WRITELINE(OUTPUT,L);
        WRITE(L,T & "[ M00 ]");                                         WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Error    : ");WRITE(L,M00_REPORT.error_count   );WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Mismatch : ");WRITE(L,M00_REPORT.mismatch_count);WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Warning  : ");WRITE(L,M00_REPORT.warning_count );WRITELINE(OUTPUT,L);
        WRITE(L,T);                                                     WRITELINE(OUTPUT,L);
        WRITE(L,T & "[ S00 ]");                                         WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Error    : ");WRITE(L,S00_REPORT.error_count   );WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Mismatch : ");WRITE(L,S00_REPORT.mismatch_count);WRITELINE(OUTPUT,L);
        WRITE(L,T & "  Warning  : ");WRITE(L,S00_REPORT.warning_count );WRITELINE(OUTPUT,L);
        WRITE(L,T);                                                     WRITELINE(OUTPUT,L);
        assert FALSE report "Simulation complete." severity FAILURE;
        wait;
    end process;
    
    
end MODEL;
