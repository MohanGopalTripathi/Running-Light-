----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:54 03/24/2015 
-- Design Name: 
-- Module Name:    top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           button : in  STD_LOGIC;
           led_out : out  STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is

    component led is
        port 
        ( 
            clk : in  STD_LOGIC;
            rst : in  STD_LOGIC;
            button : in  STD_LOGIC;
            led : out  STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

begin

    led_i : led
            
        port map
            
            (
            
                clk     => clk,
                rst     => rst,
                button  => button,
                led     => led_out
            
            );


end Behavioral;

