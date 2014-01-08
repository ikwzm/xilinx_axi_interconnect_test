library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity tb_1_wrapper is
end tb_1_wrapper;

architecture STRUCTURE of tb_1_wrapper is
  component tb_1 is
  end component tb_1;
begin
tb_1_i: component tb_1
    port map (
      
    );
end STRUCTURE;
