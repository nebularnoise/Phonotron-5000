library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity nios_ps2 is
port(
	CLOCK_50 : in std_logic;
	CLOCK_100 : in std_logic;
	SRAM_ADDR : OUT STD_LOGIC_VECTOR (17 DOWNTO 0);
	SRAM_DQ :INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
	SRAM_WE_N : OUT STD_LOGIC;
	SRAM_OE_N : OUT STD_LOGIC;
	SRAM_UB_N : OUT STD_LOGIC;
	SRAM_LB_N : OUT STD_LOGIC;
	SRAM_CE_N : OUT STD_LOGIC;
	PS2_CLK : in std_logic;
	PS2_DAT : in std_logic;
	in_bus : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
	wr_en : OUT STD_LOGIC;
	color_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	led_r : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	seq_clap : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	seq_hh : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	seq_kick : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	seq_snare : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	kick_irq : IN STD_LOGIC;
	snare_irq : IN STD_LOGIC;
	hh_irq : IN STD_LOGIC;
	clap_irq : IN STD_LOGIC;
	dac_irq : IN STD_LOGIC;
	wr_address : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
	AUD_BCLK : OUT STD_LOGIC;
	AUD_DACDAT : OUT STD_LOGIC;
	AUD_XCK : OUT STD_LOGIC;
	AUD_DACLRCK : OUT STD_LOGIC;
	I2C_SCLK :  OUT STD_LOGIC;
	CLOCK_27 : in std_logic;
	I2C_SDAT : INOUT STD_LOGIC;
	audio_sos : out   std_logic_vector(23 downto 0)
	);
end entity;


architecture A of nios_ps2 is

component  ps2_keyboard IS
  GENERIC(
    clk_freq              : INTEGER := 100_000_000; --system clock frequency in Hz
    pulse_shape_counter_size : INTEGER := 9);         --set such that (2^size)/clk_freq = 5us (size = 9 for 100MHz)
  PORT(
    clk          : IN  STD_LOGIC;                     --system clock
    ps2_clk      : IN  STD_LOGIC;                     --clock signal from PS/2 keyboard
    ps2_data     : IN  STD_LOGIC;                     --data signal from PS/2 keyboard
    ps2_code_new : OUT STD_LOGIC;                     --flag that new PS/2 code is available on ps2_code bus
    ps2_code     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); --code received from PS/2
END component;

component audio_pll IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
END component;


component I2C_AV_Config 
	port(
		iCLK : IN std_logic;
		iRST_N : IN std_logic;
		I2C_SCLK : OUT std_logic;
		I2C_SDAT : INOUT std_logic
	);
end component;

	signal Clk_Audio_Dac : std_logic;

	signal Clk_100 : std_logic;
	signal ps2_code_ok : std_logic;
	signal ps2_code_ok_dly : std_logic;
	signal ps2_code : STD_LOGIC_VECTOR(7 DOWNTO 0);

COMPONENT nios_ii
	PORT(
				sram_de2_ADDR            : out   std_logic_vector(17 downto 0);                    -- ADDR
            sram_de2_DQ              : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
            sram_de2_WE_N            : out   std_logic;                                        -- WE_N
            sram_de2_OE_N            : out   std_logic;                                        -- OE_N
            sram_de2_UB_N            : out   std_logic;                                        -- UB_N
            sram_de2_LB_N            : out   std_logic;                                        -- LB_N
            sram_de2_CE_N            : out   std_logic;                                        -- CE_N
            color_out_export         : out   std_logic_vector(1 downto 0);                     -- export
            wr_address_export        : out   std_logic_vector(16 downto 0);                    -- export
            seq_clap_export          : out   std_logic_vector(31 downto 0);                    -- export
            seq_kick_export          : out   std_logic_vector(31 downto 0);                    -- export
            wr_en_export             : out   std_logic;                                        -- export
            reset_100_reset_n        : in    std_logic                     := 'X';             -- reset_n
            in_bus_export            : in    std_logic_vector(19 downto 0) := (others => 'X'); -- export
            clk_50_clk               : in    std_logic                     := 'X';             -- clk
            reset_50_reset_n         : in    std_logic                     := 'X';             -- reset_n
            clk_100_clk              : in    std_logic                     := 'X';             -- clk
            led_r_export             : out   std_logic_vector(17 downto 0);                    -- export
            seq_snare_export         : out   std_logic_vector(31 downto 0);                    -- export
            seq_hh_export            : out   std_logic_vector(31 downto 0);                    -- export
            kb_data_export           : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
            kb_irq_export            : in    std_logic                     := 'X';             -- export
            kick_irq_export          : in    std_logic                     := 'X';             -- export
            snare_irq_export         : in    std_logic                     := 'X';             -- export
            hh_irq_export            : in    std_logic                     := 'X';             -- export
            clap_irq_export          : in    std_logic                     := 'X';             -- export
            dac_irq_export           : in    std_logic                     := 'X';             -- export
            audio_dac_fifo_oAUD_BCK  : out   std_logic;                                        -- oAUD_BCK
            audio_dac_fifo_oAUD_LRCK : out   std_logic;                                        -- oAUD_LRCK
            audio_dac_fifo_oAUD_DATA : out   std_logic;                                        -- oAUD_DATA
            audio_dac_fifo_oAUD_XCK  : out   std_logic;                                        -- oAUD_XCK
            audio_dac_fifo_iCLK_18_4 : in    std_logic                     := 'X';             -- iCLK_18_4
            audio_sos_export         : out   std_logic_vector(31 downto 0)    
	);
END COMPONENT;
 
	
begin

pll0 : audio_pll 
	PORT MAP
	(
		inclk0 => CLOCK_27,
		c0 =>  Clk_Audio_Dac
	);


I2CInst:I2C_AV_Config 
	port map(
		iCLK => CLOCK_100,
		iRST_N => '1',
		I2C_SCLK  => I2C_SCLK,
		I2C_SDAT  => I2C_SDAT
	);	
	
KBInst : ps2_keyboard 
  PORT MAP(
    clk => CLOCK_100,
    ps2_clk  =>  PS2_CLK ,
    ps2_data  =>  PS2_DAT ,
    ps2_code_new => ps2_code_ok  ,
    ps2_code  =>  ps2_code
	 );

nios_ii_instance : nios_ii
PORT MAP(
		sram_de2_ADDR            => SRAM_ADDR,            --       sram_de2.ADDR
		sram_de2_DQ              => SRAM_DQ,              --               .DQ
		sram_de2_WE_N 				 => SRAM_WE_N,
		sram_de2_OE_N 				 => SRAM_OE_N,
		sram_de2_UB_N 				 => SRAM_UB_N,
		sram_de2_LB_N 				 => SRAM_LB_N,
		sram_de2_CE_N 				 => SRAM_CE_N,
		color_out_export         => color_out,         --      color_out.export
		wr_address_export        => wr_address,        --     wr_address.export
		seq_clap_export          => open,          --       seq_clap.export
		seq_kick_export          => open,          --       seq_kick.export
		wr_en_export             => wr_en,             --          wr_en.export
		reset_100_reset_n        => '1',        --      reset_100.reset_n
		in_bus_export            => in_bus,            --         in_bus.export
		clk_50_clk               => CLOCK_50,               --         clk_50.clk
		reset_50_reset_n         => '1',         --       reset_50.reset_n
		clk_100_clk              => CLOCK_100,              --        clk_100.clk
		led_r_export             => led_r,             --          led_r.export
		seq_snare_export         => open,         --      seq_snare.export
		seq_hh_export            => open,            --         seq_hh.export
		kb_data_export           => ps2_code,           --        kb_data.export
		kb_irq_export            => ps2_code_ok,            --         kb_irq.export
		kick_irq_export          => kick_irq,          --       kick_irq.export
		snare_irq_export         => snare_irq,         --      snare_irq.export
		hh_irq_export            => hh_irq,            --         hh_irq.export
		clap_irq_export          => clap_irq,          --       clap_irq.export
		dac_irq_export           => dac_irq,           --        dac_irq.export
		audio_dac_fifo_oAUD_BCK  => AUD_BCLK,  -- audio_dac_fifo.oAUD_BCK
		audio_dac_fifo_oAUD_LRCK => AUD_DACLRCK, --               .oAUD_LRCK
		audio_dac_fifo_oAUD_DATA => AUD_DACDAT, --               .oAUD_DATA
		audio_dac_fifo_oAUD_XCK  => AUD_XCK,  --               .oAUD_XCK
		audio_dac_fifo_iCLK_18_4 => Clk_Audio_Dac, --               .iCLK_18_4
		audio_sos_export(23 downto 0)         => audio_sos          --      audio_sos.export 
		 );


end A;