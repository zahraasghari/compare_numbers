library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity compare_numbers is
  port (
    a,b,c,d : in std_logic_vector (15 downto 0);
    max,min : out std_logic_vector (15 downto 0)
  );
end compare_numbers ;

architecture Behavioral of compare_numbers is
      
	   signal s1,s2:std_logic_vector (15 downto 0);
		
begin
  process(a,b,c,d)
  begin
    if (a >= b and a >= c and a >= d) then
		   s1<= a;
		elsif (b >= a and b >= c and b >= d) then
		   s1<= b;
		elsif (c >= a and c >= b and c >= d) then
		   s1<= c;
		elsif (d >= a and d >= b and d >= c) then
		   s1<= d;
	 end if;
	 
	 
	 if (a <= b and a <= c and a <= d) then
		   s2<= a;
		elsif (b <= a and b<= c and b <=d) then
		   s2<= b;
		elsif (c <= a and c <= b and c <= d) then
		   s2<= c;
		elsif (d <= a and d <= b and d <= c) then
		   s2<= d;
	 end if;
	 
			
		
  
  end process;
      max <= s1;
      min <= s2;
end Behavioral;