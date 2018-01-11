-- megafunction wizard: %VGA Controller v13.0%
-- GENERATION: XML
-- vga_controller.vhd

-- Generated using ACDS version 13.0 156 at 2017.10.30.09:23:46

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vga_controller is
	port (
		clk           : in  std_logic                     := '0';             --        clock_reset.clk
		reset         : in  std_logic                     := '0';             --  clock_reset_reset.reset
		data          : in  std_logic_vector(29 downto 0) := (others => '0'); --    avalon_vga_sink.data
		startofpacket : in  std_logic                     := '0';             --                   .startofpacket
		endofpacket   : in  std_logic                     := '0';             --                   .endofpacket
		valid         : in  std_logic                     := '0';             --                   .valid
		ready         : out std_logic;                                        --                   .ready
		VGA_CLK       : out std_logic;                                        -- external_interface.export
		VGA_HS        : out std_logic;                                        --                   .export
		VGA_VS        : out std_logic;                                        --                   .export
		VGA_BLANK     : out std_logic;                                        --                   .export
		VGA_SYNC      : out std_logic;                                        --                   .export
		VGA_R         : out std_logic_vector(9 downto 0);                     --                   .export
		VGA_G         : out std_logic_vector(9 downto 0);                     --                   .export
		VGA_B         : out std_logic_vector(9 downto 0)                      --                   .export
	);
end entity vga_controller;

architecture rtl of vga_controller is
	component vga_controller_0002 is
		port (
			clk           : in  std_logic                     := 'X';             -- clk
			reset         : in  std_logic                     := 'X';             -- reset
			data          : in  std_logic_vector(29 downto 0) := (others => 'X'); -- data
			startofpacket : in  std_logic                     := 'X';             -- startofpacket
			endofpacket   : in  std_logic                     := 'X';             -- endofpacket
			valid         : in  std_logic                     := 'X';             -- valid
			ready         : out std_logic;                                        -- ready
			VGA_CLK       : out std_logic;                                        -- export
			VGA_HS        : out std_logic;                                        -- export
			VGA_VS        : out std_logic;                                        -- export
			VGA_BLANK     : out std_logic;                                        -- export
			VGA_SYNC      : out std_logic;                                        -- export
			VGA_R         : out std_logic_vector(9 downto 0);                     -- export
			VGA_G         : out std_logic_vector(9 downto 0);                     -- export
			VGA_B         : out std_logic_vector(9 downto 0)                      -- export
		);
	end component vga_controller_0002;

begin

	vga_controller_inst : component vga_controller_0002
		port map (
			clk           => clk,           --        clock_reset.clk
			reset         => reset,         --  clock_reset_reset.reset
			data          => data,          --    avalon_vga_sink.data
			startofpacket => startofpacket, --                   .startofpacket
			endofpacket   => endofpacket,   --                   .endofpacket
			valid         => valid,         --                   .valid
			ready         => ready,         --                   .ready
			VGA_CLK       => VGA_CLK,       -- external_interface.export
			VGA_HS        => VGA_HS,        --                   .export
			VGA_VS        => VGA_VS,        --                   .export
			VGA_BLANK     => VGA_BLANK,     --                   .export
			VGA_SYNC      => VGA_SYNC,      --                   .export
			VGA_R         => VGA_R,         --                   .export
			VGA_G         => VGA_G,         --                   .export
			VGA_B         => VGA_B          --                   .export
		);

end architecture rtl; -- of vga_controller
-- Retrieval info: <?xml version="1.0"?>
--<!--
--	Generated by Altera MegaWizard Launcher Utility version 1.0
--	************************************************************
--	THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--	************************************************************
--	Copyright (C) 1991-2017 Altera Corporation
--	Any megafunction design, and related net list (encrypted or decrypted),
--	support information, device programming or simulation file, and any other
--	associated documentation or information provided by Altera or a partner
--	under Altera's Megafunction Partnership Program may be used only to
--	program PLD devices (but not masked PLD devices) from Altera.  Any other
--	use of such megafunction design, net list, support information, device
--	programming or simulation file, or any other related documentation or
--	information is prohibited for any other purpose, including, but not
--	limited to modification, reverse engineering, de-compiling, or use with
--	any other silicon devices, unless such use is explicitly licensed under
--	a separate agreement with Altera or a megafunction partner.  Title to
--	the intellectual property, including patents, copyrights, trademarks,
--	trade secrets, or maskworks, embodied in any such megafunction design,
--	net list, support information, device programming or simulation file, or
--	any other related documentation or information provided by Altera or a
--	megafunction partner, remains with Altera, the megafunction partner, or
--	their respective licensors.  No other licenses, including any licenses
--	needed under any third party's intellectual property, are provided herein.
---->
-- Retrieval info: <instance entity-name="altera_up_avalon_video_vga_controller" version="13.0" >
-- Retrieval info: 	<generic name="board" value="DE2" />
-- Retrieval info: 	<generic name="device" value="VGA Connector" />
-- Retrieval info: 	<generic name="underflow_flag" value="false" />
-- Retrieval info: 	<generic name="AUTO_CLOCK_RESET_CLOCK_RATE" value="-1" />
-- Retrieval info: 	<generic name="AUTO_DEVICE_FAMILY" value="Cyclone II" />
-- Retrieval info: </instance>
-- IPFS_FILES : vga_controller.vho
-- RELATED_FILES: vga_controller.vhd, altera_up_avalon_video_vga_timing.v, vga_controller_0002.v