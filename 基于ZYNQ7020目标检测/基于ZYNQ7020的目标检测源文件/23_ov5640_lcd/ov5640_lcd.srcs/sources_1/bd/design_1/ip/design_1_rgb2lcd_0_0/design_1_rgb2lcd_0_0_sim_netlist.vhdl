-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 17 10:51:46 2019
-- Host        : USER-20180123QP running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               E:/Navigator/Nav_code_7020__PS/ov5640_lcd/ov5640_lcd.srcs/sources_1/bd/design_1/ip/design_1_rgb2lcd_0_0/design_1_rgb2lcd_0_0_sim_netlist.vhdl
-- Design      : design_1_rgb2lcd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2lcd_0_0_rgb2lcd is
  port (
    lcd_rgb_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lcd_hs : out STD_LOGIC;
    lcd_vs : out STD_LOGIC;
    lcd_de : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    lcd_id : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rgb_vde : in STD_LOGIC;
    rgb_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_hsync : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    rgb_vsync : in STD_LOGIC;
    lcd_rgb_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    vid_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb2lcd_0_0_rgb2lcd : entity is "rgb2lcd";
end design_1_rgb2lcd_0_0_rgb2lcd;

architecture STRUCTURE of design_1_rgb2lcd_0_0_rgb2lcd is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal int_pData : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \int_pData[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[10]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[13]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[14]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[17]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[18]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[21]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[22]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_pData[9]_i_1_n_0\ : STD_LOGIC;
  signal lcd_hs_i_1_n_0 : STD_LOGIC;
  signal rd_id_flag : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \int_pData[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_pData[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_pData[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_pData[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_pData[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_pData[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_pData[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_pData[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_pData[17]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_pData[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_pData[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_pData[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_pData[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_pData[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_pData[22]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_pData[23]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_pData[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_pData[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_pData[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_pData[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_pData[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_pData[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_pData[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_pData[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lcd_rgb_o[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lcd_rgb_o[10]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \lcd_rgb_o[11]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \lcd_rgb_o[12]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lcd_rgb_o[13]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \lcd_rgb_o[14]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lcd_rgb_o[15]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \lcd_rgb_o[16]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lcd_rgb_o[17]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lcd_rgb_o[18]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \lcd_rgb_o[19]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \lcd_rgb_o[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lcd_rgb_o[20]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lcd_rgb_o[21]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lcd_rgb_o[22]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lcd_rgb_o[23]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lcd_rgb_o[2]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lcd_rgb_o[3]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lcd_rgb_o[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_rgb_o[5]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lcd_rgb_o[6]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lcd_rgb_o[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lcd_rgb_o[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \lcd_rgb_o[9]_INST_0\ : label is "soft_lutpair16";
begin
  E(0) <= \^e\(0);
\int_pData[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(0),
      O => \int_pData[0]_i_1_n_0\
    );
\int_pData[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(10),
      O => \int_pData[10]_i_1_n_0\
    );
\int_pData[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(11),
      O => \int_pData[11]_i_1_n_0\
    );
\int_pData[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(12),
      O => \int_pData[12]_i_1_n_0\
    );
\int_pData[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(13),
      O => \int_pData[13]_i_1_n_0\
    );
\int_pData[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(14),
      O => \int_pData[14]_i_1_n_0\
    );
\int_pData[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(15),
      O => \int_pData[15]_i_1_n_0\
    );
\int_pData[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(16),
      O => \int_pData[16]_i_1_n_0\
    );
\int_pData[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(17),
      O => \int_pData[17]_i_1_n_0\
    );
\int_pData[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(18),
      O => \int_pData[18]_i_1_n_0\
    );
\int_pData[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(19),
      O => \int_pData[19]_i_1_n_0\
    );
\int_pData[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(1),
      O => \int_pData[1]_i_1_n_0\
    );
\int_pData[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(20),
      O => \int_pData[20]_i_1_n_0\
    );
\int_pData[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(21),
      O => \int_pData[21]_i_1_n_0\
    );
\int_pData[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(22),
      O => \int_pData[22]_i_1_n_0\
    );
\int_pData[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(23),
      O => \int_pData[23]_i_1_n_0\
    );
\int_pData[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(2),
      O => \int_pData[2]_i_1_n_0\
    );
\int_pData[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(3),
      O => \int_pData[3]_i_1_n_0\
    );
\int_pData[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(4),
      O => \int_pData[4]_i_1_n_0\
    );
\int_pData[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(5),
      O => \int_pData[5]_i_1_n_0\
    );
\int_pData[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(6),
      O => \int_pData[6]_i_1_n_0\
    );
\int_pData[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(7),
      O => \int_pData[7]_i_1_n_0\
    );
\int_pData[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(8),
      O => \int_pData[8]_i_1_n_0\
    );
\int_pData[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rgb_vde,
      I1 => rgb_data(9),
      O => \int_pData[9]_i_1_n_0\
    );
\int_pData_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[0]_i_1_n_0\,
      Q => int_pData(0)
    );
\int_pData_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[10]_i_1_n_0\,
      Q => int_pData(10)
    );
\int_pData_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[11]_i_1_n_0\,
      Q => int_pData(11)
    );
\int_pData_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[12]_i_1_n_0\,
      Q => int_pData(12)
    );
\int_pData_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[13]_i_1_n_0\,
      Q => int_pData(13)
    );
\int_pData_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[14]_i_1_n_0\,
      Q => int_pData(14)
    );
\int_pData_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[15]_i_1_n_0\,
      Q => int_pData(15)
    );
\int_pData_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[16]_i_1_n_0\,
      Q => int_pData(16)
    );
\int_pData_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[17]_i_1_n_0\,
      Q => int_pData(17)
    );
\int_pData_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[18]_i_1_n_0\,
      Q => int_pData(18)
    );
\int_pData_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[19]_i_1_n_0\,
      Q => int_pData(19)
    );
\int_pData_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[1]_i_1_n_0\,
      Q => int_pData(1)
    );
\int_pData_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[20]_i_1_n_0\,
      Q => int_pData(20)
    );
\int_pData_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[21]_i_1_n_0\,
      Q => int_pData(21)
    );
\int_pData_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[22]_i_1_n_0\,
      Q => int_pData(22)
    );
\int_pData_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[23]_i_1_n_0\,
      Q => int_pData(23)
    );
\int_pData_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[2]_i_1_n_0\,
      Q => int_pData(2)
    );
\int_pData_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[3]_i_1_n_0\,
      Q => int_pData(3)
    );
\int_pData_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[4]_i_1_n_0\,
      Q => int_pData(4)
    );
\int_pData_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[5]_i_1_n_0\,
      Q => int_pData(5)
    );
\int_pData_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[6]_i_1_n_0\,
      Q => int_pData(6)
    );
\int_pData_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[7]_i_1_n_0\,
      Q => int_pData(7)
    );
\int_pData_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[8]_i_1_n_0\,
      Q => int_pData(8)
    );
\int_pData_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => \int_pData[9]_i_1_n_0\,
      Q => int_pData(9)
    );
lcd_de_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => rgb_vde,
      Q => lcd_de
    );
lcd_hs_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vid_rst,
      O => lcd_hs_i_1_n_0
    );
lcd_hs_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => rgb_hsync,
      Q => lcd_hs
    );
\lcd_id_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \^e\(0),
      CLR => lcd_hs_i_1_n_0,
      D => lcd_rgb_i(2),
      Q => lcd_id(0)
    );
\lcd_id_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \^e\(0),
      CLR => lcd_hs_i_1_n_0,
      D => lcd_rgb_i(1),
      Q => lcd_id(1)
    );
\lcd_id_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => \^e\(0),
      CLR => lcd_hs_i_1_n_0,
      D => lcd_rgb_i(0),
      Q => lcd_id(2)
    );
\lcd_rgb_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(0),
      I1 => rd_id_flag,
      O => lcd_rgb_o(0)
    );
\lcd_rgb_o[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(10),
      I1 => rd_id_flag,
      O => lcd_rgb_o(10)
    );
\lcd_rgb_o[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(11),
      I1 => rd_id_flag,
      O => lcd_rgb_o(11)
    );
\lcd_rgb_o[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(12),
      I1 => rd_id_flag,
      O => lcd_rgb_o(12)
    );
\lcd_rgb_o[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(13),
      I1 => rd_id_flag,
      O => lcd_rgb_o(13)
    );
\lcd_rgb_o[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(14),
      I1 => rd_id_flag,
      O => lcd_rgb_o(14)
    );
\lcd_rgb_o[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(15),
      I1 => rd_id_flag,
      O => lcd_rgb_o(15)
    );
\lcd_rgb_o[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(16),
      I1 => rd_id_flag,
      O => lcd_rgb_o(16)
    );
\lcd_rgb_o[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(17),
      I1 => rd_id_flag,
      O => lcd_rgb_o(17)
    );
\lcd_rgb_o[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(18),
      I1 => rd_id_flag,
      O => lcd_rgb_o(18)
    );
\lcd_rgb_o[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(19),
      I1 => rd_id_flag,
      O => lcd_rgb_o(19)
    );
\lcd_rgb_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(1),
      I1 => rd_id_flag,
      O => lcd_rgb_o(1)
    );
\lcd_rgb_o[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(20),
      I1 => rd_id_flag,
      O => lcd_rgb_o(20)
    );
\lcd_rgb_o[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(21),
      I1 => rd_id_flag,
      O => lcd_rgb_o(21)
    );
\lcd_rgb_o[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(22),
      I1 => rd_id_flag,
      O => lcd_rgb_o(22)
    );
\lcd_rgb_o[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(23),
      I1 => rd_id_flag,
      O => lcd_rgb_o(23)
    );
\lcd_rgb_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(2),
      I1 => rd_id_flag,
      O => lcd_rgb_o(2)
    );
\lcd_rgb_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(3),
      I1 => rd_id_flag,
      O => lcd_rgb_o(3)
    );
\lcd_rgb_o[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(4),
      I1 => rd_id_flag,
      O => lcd_rgb_o(4)
    );
\lcd_rgb_o[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(5),
      I1 => rd_id_flag,
      O => lcd_rgb_o(5)
    );
\lcd_rgb_o[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(6),
      I1 => rd_id_flag,
      O => lcd_rgb_o(6)
    );
\lcd_rgb_o[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(7),
      I1 => rd_id_flag,
      O => lcd_rgb_o(7)
    );
\lcd_rgb_o[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(8),
      I1 => rd_id_flag,
      O => lcd_rgb_o(8)
    );
\lcd_rgb_o[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => int_pData(9),
      I1 => rd_id_flag,
      O => lcd_rgb_o(9)
    );
\lcd_rgb_t[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_id_flag,
      O => \^e\(0)
    );
lcd_vs_reg: unisim.vcomponents.FDCE
     port map (
      C => pixel_clk,
      CE => '1',
      CLR => lcd_hs_i_1_n_0,
      D => rgb_vsync,
      Q => lcd_vs
    );
rd_id_flag_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \^e\(0),
      CLR => lcd_hs_i_1_n_0,
      D => '1',
      Q => rd_id_flag
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb2lcd_0_0 is
  port (
    rgb_data : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rgb_vde : in STD_LOGIC;
    rgb_hsync : in STD_LOGIC;
    rgb_vsync : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    vid_rst : in STD_LOGIC;
    lcd_pclk : out STD_LOGIC;
    lcd_rst : out STD_LOGIC;
    lcd_hs : out STD_LOGIC;
    lcd_vs : out STD_LOGIC;
    lcd_de : out STD_LOGIC;
    lcd_bl : out STD_LOGIC;
    lcd_id : out STD_LOGIC_VECTOR ( 2 downto 0 );
    lcd_rgb_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    lcd_rgb_o : out STD_LOGIC_VECTOR ( 23 downto 0 );
    lcd_rgb_t : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rgb2lcd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rgb2lcd_0_0 : entity is "design_1_rgb2lcd_0_0,rgb2lcd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_rgb2lcd_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_rgb2lcd_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_rgb2lcd_0_0 : entity is "rgb2lcd,Vivado 2018.3";
end design_1_rgb2lcd_0_0;

architecture STRUCTURE of design_1_rgb2lcd_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^lcd_rgb_t\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^pixel_clk\ : STD_LOGIC;
  signal \^vid_rst\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of lcd_bl : signal is "xilinx.com:user:lcd:1.0 lcd BL";
  attribute X_INTERFACE_INFO of lcd_de : signal is "xilinx.com:user:lcd:1.0 lcd DE";
  attribute X_INTERFACE_INFO of lcd_hs : signal is "xilinx.com:user:lcd:1.0 lcd HS";
  attribute X_INTERFACE_INFO of lcd_pclk : signal is "xilinx.com:user:lcd:1.0 lcd CLK";
  attribute X_INTERFACE_INFO of lcd_rst : signal is "xilinx.com:signal:reset:1.0 lcd_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of lcd_rst : signal is "XIL_INTERFACENAME lcd_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lcd_vs : signal is "xilinx.com:user:lcd:1.0 lcd VS";
  attribute X_INTERFACE_INFO of pixel_clk : signal is "xilinx.com:signal:clock:1.0 pixel_clk CLK";
  attribute X_INTERFACE_PARAMETER of pixel_clk : signal is "XIL_INTERFACENAME pixel_clk, ASSOCIATED_BUSIF pixel_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_axi_dynclk_0_0_PXL_CLK_O, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rgb_hsync : signal is "xilinx.com:interface:vid_io:1.0 vid_rgb HSYNC";
  attribute X_INTERFACE_INFO of rgb_vde : signal is "xilinx.com:interface:vid_io:1.0 vid_rgb ACTIVE_VIDEO";
  attribute X_INTERFACE_INFO of rgb_vsync : signal is "xilinx.com:interface:vid_io:1.0 vid_rgb VSYNC";
  attribute X_INTERFACE_INFO of vid_rst : signal is "xilinx.com:signal:reset:1.0 vid_rst RST";
  attribute X_INTERFACE_PARAMETER of vid_rst : signal is "XIL_INTERFACENAME vid_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lcd_rgb_i : signal is "xilinx.com:interface:gpio:1.0 lcd_rgb TRI_I";
  attribute X_INTERFACE_INFO of lcd_rgb_o : signal is "xilinx.com:interface:gpio:1.0 lcd_rgb TRI_O";
  attribute X_INTERFACE_INFO of lcd_rgb_t : signal is "xilinx.com:interface:gpio:1.0 lcd_rgb TRI_T";
  attribute X_INTERFACE_INFO of rgb_data : signal is "xilinx.com:interface:vid_io:1.0 vid_rgb DATA";
begin
  \^pixel_clk\ <= pixel_clk;
  \^vid_rst\ <= vid_rst;
  lcd_bl <= \<const1>\;
  lcd_pclk <= \^pixel_clk\;
  lcd_rgb_t(23) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(22) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(21) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(20) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(19) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(18) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(17) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(16) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(15) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(14) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(13) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(12) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(11) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(10) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(9) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(8) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(7) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(6) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(5) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(4) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(3) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(2) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(1) <= \^lcd_rgb_t\(0);
  lcd_rgb_t(0) <= \^lcd_rgb_t\(0);
  lcd_rst <= \^vid_rst\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_rgb2lcd_0_0_rgb2lcd
     port map (
      E(0) => \^lcd_rgb_t\(0),
      lcd_de => lcd_de,
      lcd_hs => lcd_hs,
      lcd_id(2 downto 0) => lcd_id(2 downto 0),
      lcd_rgb_i(2) => lcd_rgb_i(23),
      lcd_rgb_i(1) => lcd_rgb_i(15),
      lcd_rgb_i(0) => lcd_rgb_i(7),
      lcd_rgb_o(23 downto 0) => lcd_rgb_o(23 downto 0),
      lcd_vs => lcd_vs,
      pixel_clk => \^pixel_clk\,
      rgb_data(23 downto 0) => rgb_data(23 downto 0),
      rgb_hsync => rgb_hsync,
      rgb_vde => rgb_vde,
      rgb_vsync => rgb_vsync,
      vid_rst => \^vid_rst\
    );
end STRUCTURE;
