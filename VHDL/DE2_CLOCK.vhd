LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
--USE  IEEE.numeric_std.all;
--USE  WORK.MY_PACKAGE.all;
--USE  IEEE.math_real.all;
LIBRARY IEEE_PROPOSED;
use IEEE_PROPOSED.fixed_float_types.all;
use IEEE_PROPOSED.fixed_pkg.all;
--use IEEE_PROPOSED.fixed_alg_pkg.all;
use IEEE_PROPOSED.float_pkg.all;
--use work.MY_LIBRARY.all;
use work.types.all; --needed for my_library (declarations)
-- This code displays time in the DE2's LCD Display
-- Key2  resets time
ENTITY DE2_CLOCK IS
	PORT(reset, clk_50Mhz	: IN	STD_LOGIC;
		 LCD_RS, LCD_E, LCD_ON, RESET_LED, SEC_LED		: OUT	STD_LOGIC;
		 LCD_RW				   : BUFFER STD_LOGIC;
		 GPIO0				   : INOUT	STD_LOGIC_VECTOR(35 DOWNTO 0);
		 GPIO1					: INOUT	STD_LOGIC_VECTOR(35 DOWNTO 0);
		 DATA_BUS				: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0));
END DE2_CLOCK;

ARCHITECTURE a OF DE2_CLOCK IS
	TYPE STATE_TYPE IS (HOLD, FUNC_SET, DISPLAY_ON, MODE_SET, WRITE_CHAR1,
	WRITE_CHAR2,WRITE_CHAR3, RETURN_HOME, TOGGLE_E, RESET1, RESET2, 
	RESET3, DISPLAY_OFF, DISPLAY_CLEAR); -- WRITE_CHAR4,WRITE_CHAR5,WRITE_CHAR6,WRITE_CHAR7,WRITE_CHAR8, WRITE_CHAR9, WRITE_CHAR10,
	type memory is array (INTEGER range <>) of std_logic_vector(7 downto 0);
	type memoryint is array (INTEGER range <>) of float32;
	--type memoryDAC is array (INTEGER range <>) of std_logic_vector(11 downto 0);
	SIGNAL state, next_command: STATE_TYPE;
	SIGNAL DATA_BUS_VALUE: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL CLK_COUNT_400HZ: STD_LOGIC_VECTOR(19 DOWNTO 0);
	SIGNAL CLK_COUNT_10HZ: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL CLK_COUNT_12MHZ: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL BCD_SECD0,BCD_SECD1,BCD_MIND0,BCD_MIND1: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL BCD_HRD0,BCD_HRD1,BCD_TSEC: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL DAC_SIGNAL: memoryDAC(0 to 10) := ((others=> (others=>'0')));
	SIGNAL CLK_400HZ, CLK_10HZ, CLK_12MHZ : STD_LOGIC;
	SIGNAL ADC1, ADC2, ADC3: memoryint(0 to 9) := ((others=> (others=>'0'))); --(3999999 downto 0);
	--SIGNAL ADC1: memoryDAC(24999 downto 0) := ((others=> (others=>'0'))); --(3999999 downto 0);
	--SIGNAL FREQ_DIV: INTEGER RANGE 40 to 400000;
	SIGNAL COUNT_RMS: INTEGER RANGE 0 to 9:= 0;
	SIGNAL COUNT_DAC: INTEGER RANGE 0 to 11:= 0;	
	--SIGNAL j: INTEGER := 0;
	--SIGNAL ADC1_MAX: INTEGER RANGE 0 to 250 := 0;
	--SIGNAL ADC2_MAX: INTEGER RANGE 0 to 250 := 0;
	--SIGNAL ADC3_MAX: INTEGER RANGE 0 to 250 := 0;
	SIGNAL ADC1_AVC: STD_LOGIC_VECTOR(2 DOWNTO 0) := "000"; --(GPIO0 (14), GPIO0 (16),GPIO0 (18) A
	SIGNAL ADC2_AVC: STD_LOGIC_VECTOR(2 DOWNTO 0) := "000"; --(GPIO1 (13), GPIO1 (15),GPIO1 (17) A
	SIGNAL ADC3_AVC: STD_LOGIC_VECTOR(2 DOWNTO 0) := "000"; --(GPIO0 (21), GPIO0 (23),GPIO0 (25) A
	CONSTANT COUNT_RMS_FINAL: INTEGER := 9;--24999;
	SHARED VARIABLE x, z:    float32 := (others=>'0');
	SIGNAL realW: memoryint(0 to 19); 
	SIGNAL imagW: memoryint(0 to 19); 
	SIGNAL IMP: memoryint(0 to 0):= ((others=> (others=>'0')));  --100k is OK
	SIGNAL IMP_DUMMY1:    STD_LOGIC_VECTOR(7 DOWNTO 0) :="00000000";
	SIGNAL IMP_DUMMY2:    STD_LOGIC_VECTOR(31 downto 0);
	SHARED VARIABLE IMP_DUMMY:    STD_LOGIC_VECTOR(31 DOWNTO 0) := (others=>'0');
	SHARED VARIABLE BLA:    UNSIGNED(7 DOWNTO 0);
	SHARED VARIABLE FLAG: integer := 0;
	--function  sqrt  ( d : UNSIGNED ) return UNSIGNED ;
	
	component my_library
		port (
                 DAC_SIGNAL: OUT memoryDAC(0 to 10);-- := ((others=> (others=>'0')));
                 RESET : IN STD_LOGIC
           );
	end component;
	
BEGIN

A1: my_library port map(
DAC_SIGNAL => DAC_SIGNAL,
RESET => RESET
);

	--(GPIO0 (14), GPIO0 (16),GPIO0 (18)) <= ADC1_AVC;
	--(GPIO1 (13), GPIO1 (15),GPIO1 (17)) <= ADC2_AVC;
   --(GPIO1 (21), GPIO1 (23),GPIO1 (25)) <= ADC3_AVC;
	LCD_ON <= '1';
	RESET_LED <= NOT RESET;
	SEC_LED <= BCD_SECD0(0);
-- BIDIRECTIONAL TRI STATE LCD DATA BUS
	DATA_BUS <= DATA_BUS_VALUE WHEN LCD_RW = '0' ELSE "ZZZZZZZZ";
--	(GPIO0 (14), GPIO0 (16), GPIO0 (18)) <= ADC1_AVC;
--	(GPIO1 (13), GPIO1 (15), GPIO1 (17)) <= ADC2_AVC;
--	(GPIO1 (19), GPIO1 (23), GPIO1 (25)) <= ADC3_AVC;
	realW(0) <= to_float(1.97255,realW(0)); --to_s(2*cos(0.00628),d1_1); 			  --gravar as 20 freq            --Goertzel
	imagW(0) <= to_float(0.16512,realW(0)); --sin(2.0*pi*k(j)./Fs(z));                   --K sï¿½o as freq injetadas no tecido
	realW(1) <= to_float(1.9998,realW(0)); --to_s(2*cos(0.00628),d1_1); 			  --gravar as 20 freq            --Goertzel
	imagW(1) <= to_float(0.0126,realW(0)); --sin(2.0*pi*k(j)./Fs(z));                   --K sï¿½o as freq injetadas no tecido
	realW(2) <= to_float(0.1,realW(0)); --to_s(2*cos(0.00628),d1_1); 			  --gravar as 20 freq            --Goertzel
	imagW(2) <= to_float(-0.1,realW(0)); --sin(2.0*pi*k(j)./Fs(z));                   --K sï¿½o as freq injetadas no tecido
	ADC1(0) <= to_float(11.0,realW(0));
	ADC1(1) <= to_float(10.686,realW(0));
	ADC1(2) <= to_float(9.7963,realW(0));
	ADC1(3) <= to_float(8.4832,realW(0));
	ADC1(4) <= to_float(6.9640,realW(0));
	ADC1(5) <= to_float(5.4799,realW(0));
	ADC1(6) <= to_float(4.2485,realW(0));
	ADC1(7) <= to_float(3.4239,realW(0));
	ADC1(8) <= to_float(3.0710,realW(0));
	ADC1(9) <= to_float(3.1599,realW(0));
		PROCESS	
	BEGIN
	 WAIT UNTIL CLK_50MHZ'EVENT AND CLK_50MHZ = '1';
		IF RESET = '0' THEN
		 CLK_COUNT_400HZ <= X"00000";
		 CLK_400HZ <= '0';
		ELSE
				IF CLK_COUNT_400HZ < X"0F424" THEN 
				 CLK_COUNT_400HZ <= CLK_COUNT_400HZ + 1;
				ELSE
		    	 CLK_COUNT_400HZ <= X"00000";
				 CLK_400HZ <= NOT CLK_400HZ;
				END IF;
		END IF;
	END PROCESS;
	PROCESS (CLK_400HZ, reset)
	BEGIN
		IF reset = '0' THEN
			state <= RESET1;
			DATA_BUS_VALUE <= X"38";
			next_command <= RESET2;
			LCD_E <= '1';
			LCD_RS <= '0';
			LCD_RW <= '0';

		ELSIF CLK_400HZ'EVENT AND CLK_400HZ = '1' THEN
-- GENERATE 1/10 SEC CLOCK SIGNAL FOR SECOND COUNT PROCESS

			IF CLK_COUNT_10HZ < 19 THEN
				CLK_COUNT_10HZ <= CLK_COUNT_10HZ + 1;
			ELSE
				CLK_COUNT_10HZ <= X"00";
				CLK_10HZ <= NOT CLK_10HZ;
			END IF;
-- SEND TIME TO LCD			
			CASE state IS
-- Set Function to 8-bit transfer and 2 line display with 5x8 Font size
-- see Hitachi HD44780 family data sheet for LCD command and timing details
				WHEN RESET1 =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= RESET2;
				WHEN RESET2 =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= RESET3;
				WHEN RESET3 =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= FUNC_SET;
-- EXTRA STATES ABOVE ARE NEEDED FOR RELIABLE PUSHBUTTON RESET OF LCD
				WHEN FUNC_SET =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"38";
						state <= TOGGLE_E;
						next_command <= DISPLAY_OFF;
-- Turn off Display and Turn off cursor
				WHEN DISPLAY_OFF =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"08";
						state <= TOGGLE_E;
						next_command <= DISPLAY_CLEAR;
-- Turn on Display and Turn off cursor
				WHEN DISPLAY_CLEAR =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"01";
						state <= TOGGLE_E;
						next_command <= DISPLAY_ON;
-- Turn on Display and Turn off cursor
				WHEN DISPLAY_ON =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"0C";
						state <= TOGGLE_E;
						next_command <= MODE_SET;
-- Set write mode to auto increment address and move cursor to the right
				WHEN MODE_SET =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"06";
						state <= TOGGLE_E;
						next_command <= WRITE_CHAR1;
-- Write ASCII hex character in first LCD character location R
				WHEN WRITE_CHAR1 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"52";
						state <= TOGGLE_E;
						next_command <= WRITE_CHAR2;
						
-- Write ASCII hex character in second LCD character location " "
				WHEN WRITE_CHAR2 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"20";
						state <= TOGGLE_E;
						next_command <= WRITE_CHAR3;
-- Write ASCII hex character in third LCD character location =
--				WHEN WRITE_CHAR3 =>
--						LCD_E <= '1';
--						LCD_RS <= '1';
--						LCD_RW <= '0';
--						DATA_BUS_VALUE <= X"3D" ;
--						state <= TOGGLE_E;
--						next_command <= RETURN_HOME; --WRITE_CHAR4;
						
				WHEN WRITE_CHAR3 =>
						LCD_E <= '1';
						LCD_RS <= '1';
						LCD_RW <= '0';
--						IF FLAG = 20 THEN
						DATA_BUS_VALUE <= IMP_DUMMY1;
--						ELSE
--						DATA_BUS_VALUE <= X"3D" ;
--						END IF;
						state <= TOGGLE_E;
						next_command <= RETURN_HOME; --WRITE_CHAR4;

-- Return write address to first character postion
				WHEN RETURN_HOME =>
						LCD_E <= '1';
						LCD_RS <= '0';
						LCD_RW <= '0';
						DATA_BUS_VALUE <= X"80";
						state <= TOGGLE_E;
						next_command <= WRITE_CHAR1;
-- The next two states occur at the end of each command to the LCD
-- Toggle E line - falling edge loads inst/data to LCD controller
				WHEN TOGGLE_E =>
						LCD_E <= '0';
						state <= HOLD;
-- Hold LCD inst/data valid after falling edge of E line				
				WHEN HOLD =>
						state <= next_command;
			END CASE;
		END IF;
	END PROCESS;
--	PROCESS	(CLK_10HZ, reset)
--	BEGIN
--	    IF RESET = '0' THEN
--		 CLK_COUNT_1HZ <= X"00";
--		 CLK_1HZ <= '0';
--		ELSE
--				IF CLK_COUNT_1HZ < X"0A" THEN 
--				 CLK_COUNT_1HZ <= CLK_COUNT_1HZ + 1;
--				ELSE
--		    	 CLK_COUNT_1HZ <= X"00";
--				 CLK_1HZ <= NOT CLK_1HZ;
--				END IF;
--		END IF;
--	END PROCESS;
	PROCESS (Clk_10hz, reset)
	BEGIN
		--IMP_DUMMY1 <= to_slv(resize(x*0.1,7,0));X
		IF reset = '0' THEN	
			BCD_HRD1 <= X"0";			
			BCD_HRD0 <= X"0";
			BCD_MIND1 <= X"0";
			BCD_MIND0 <= X"0";
			BCD_SECD1 <= X"0";
			BCD_SECD0 <= X"0";
			BCD_TSEC  <= X"0";

		ELSIF clk_10HZ'EVENT AND clk_10HZ = '1' THEN
-- TENTHS OF SECONDS
		IF BCD_TSEC < 9 THEN
		 BCD_TSEC <= BCD_TSEC + 1;
		ELSE
		 BCD_TSEC <= X"0";
-- SECONDS
		IF BCD_SECD0 < 9 THEN
	 	 BCD_SECD0 <= BCD_SECD0 + 1;
		ELSE
-- TENS OF SECONDS
		 BCD_SECD0 <= "0000";
	 	  IF BCD_SECD1 < 5 THEN
	  	 BCD_SECD1 <= BCD_SECD1 + 1;
	 	 ELSE
-- MINUTES
	  	 BCD_SECD1 <= "0000";
	  	 IF BCD_MIND0 < 9 THEN
	   	  BCD_MIND0 <= BCD_MIND0 + 1;
	  	 ELSE
-- TENS OF MINUTES
	   	  BCD_MIND0 <= "0000";
	   	  IF BCD_MIND1 < 5 THEN
	       BCD_MIND1 <= BCD_MIND1 + 1;
	   	  ELSE
-- HOURS
	    	BCD_MIND1 <= "0000";
	    	IF BCD_HRD0 < 9 AND NOT((BCD_HRD1 = 2) AND (BCD_HRD0 = 3))THEN
	     	 BCD_HRD0 <= BCD_HRD0 + 1;
	    	ELSE
-- TENS OF HOURS
	     	 IF NOT((BCD_HRD1 = 2) AND (BCD_HRD0 = 3)) THEN
	      	  BCD_HRD1 <= BCD_HRD1 + 1;
	      	  BCD_HRD0 <= "0000";
	     	 ELSE
-- NEW DAY
	      	 BCD_HRD1 <= "0000";
          	 BCD_HRD0 <= "0000";
         	END IF;
           END IF;
          END IF;
         END IF;
        END IF;
       END IF;
	 END IF;
	END IF;
 END PROCESS;
  PROCESS	
	BEGIN
	 WAIT UNTIL CLK_50MHZ'EVENT AND CLK_50MHZ = '1';
		IF RESET = '0' THEN
		 CLK_COUNT_12MHZ <= X"00";
		 CLK_12MHZ <= '0';
		ELSE
				IF CLK_COUNT_12MHZ < 4 THEN 
				 CLK_COUNT_12MHZ <= CLK_COUNT_12MHZ + 1;
				ELSE
		    	 CLK_COUNT_12MHZ <= X"00";
				 CLK_12MHZ <= NOT CLK_12MHZ;
				END IF;
		END IF;
  END PROCESS;
	PROCESS --(CLK_12MHZ, reset) --it enter in the rising and falling edge, the freq is acctually 6,25Mhz
	VARIABLE d1_1: float32 := (others=>'0');
	VARIABLE d1_2: float32 := (others=>'0');
	VARIABLE y:    float32 := (others=>'0');
	BEGIN
	WAIT UNTIL CLK_50MHZ'EVENT AND CLK_50MHZ = '1';

		IF RESET = '0' THEN
	    COUNT_RMS <= 0;
		 
		ELSIF COUNT_RMS = COUNT_RMS_FINAL THEN
			FOR j in 0 to 0 LOOP
			d1_1 :=  to_float(0.0,y);
			d1_2 :=  to_float(0.0,y);
			y :=     to_float(0.0,y);
		FOR k in 0 to COUNT_RMS_FINAL LOOP
		--y <= resize(to_float("000000000000000000000000" & ADC1(COUNT_RMS))*33000/1020+30000/4,y);
		--y <= resize(to_float("000000000000000000000000" & ADC1(COUNT_RMS))+resize(multiply(realW(j),d1_1),y) - d1_2,y);
		-- y <= resize(to_float("000000000000000000000000" & ADC1(COUNT_RMS))*32.3529+7500,y);
		-- y <= resize(divide(y,resize((1-y*0.0001),y))+resize(multiply(realW(j),d1_1),y) - d1_2,y);		
		--y := resize(to_float("000000000000000000000000" & ADC1(k))+resize(multiply(realW(j),d1_1),y) - d1_2,y);
		y := resize(ADC1(k)+resize(multiply(realW(j),d1_1),y) - d1_2,y);
		d1_2 := d1_1;
		d1_1 := y;
		END LOOP;		
		x := resize(sqrt((realW(j)*d1_1*0.5 - d1_2) * (realW(j)*d1_1*0.5 - d1_2)+(imagW(j)*d1_1)*(imagW(j)*d1_1)),y);
		
--IMP_DUMMY := std_logic_vector(UNSIGNED(x));
--		IMP_DUMMY1(7) <= IMP_DUMMY(7);
--		IMP_DUMMY1(6) <= IMP_DUMMY(6);
--		IMP_DUMMY1(5) <= IMP_DUMMY(5);
--		IMP_DUMMY1(4) <= IMP_DUMMY(4);
--		IMP_DUMMY1(3) <= IMP_DUMMY(3);
--		IMP_DUMMY1(2) <= IMP_DUMMY(2);
--		IMP_DUMMY1(1) <= IMP_DUMMY(1);
--		IMP_DUMMY1(0) <= IMP_DUMMY(0);
		--IMP_DUMMY1 <= std_logic_vector(resize(x*0.1+48,7,0));		
--		FOR n in 0 to 50000 LOOP
--		END LOOP;
		
		--IMP_DUMMY := 48 + IMP_DUMMY;
		--IMP_DUMMY1 := 48 + IMP_DUMMY1;
		COUNT_RMS <= 0;
		END LOOP;
		ELSE
		--ADC1(COUNT_RMS) <= GPIO0 (17) & GPIO0 (15) & GPIO0 (13) & GPIO0 (11) & GPIO0 (9) & GPIO0 (7) & GPIO0 (5) & GPIO0 (3);
		--ADC2(COUNT_RMS) <= GPIO1 (11) & GPIO1 (9) & GPIO1 (7) & GPIO1 (5) & GPIO1 (3) & GPIO1 (1) & GPIO1 (0) & GPIO1 (2);
		--ADC3(COUNT_RMS) <= GPIO1 (18) & GPIO1 (16) & GPIO1 (14) & GPIO1 (12) & GPIO1 (10) & GPIO1 (8) & GPIO1 (6) & GPIO1 (4);
		COUNT_RMS <= COUNT_RMS +1; -- if the smallest freq is 100HZ it will save 100000
		END IF;
--		FLAG <= FLAG + 1;
--		IF FLAG = 21 THEN
--						FLAG <= 0;
--						END IF;
	--GPIO0_25 TO 35, 34 DOWNTO 24  DAC 
	--GPIO0_6 DOWNTO 0 ADC 2 (NOT USED)
	--GPIO0_17 DOWNTO 3 ADC 1 (2 in 2)
	--GPIO1_11 DOWNTO 0 ADC 3 (2 in 2)
	--GPIO1_18 DOWNTO 4 ADC 4 (2 in 2)
	END PROCESS;

PROCESS	(CLK_12MHZ, reset)
	BEGIN
	    IF RESET = '0' THEN
		-- (GPIO0 (25), GPIO0 (27),GPIO0 (29),GPIO0 (31),GPIO0 (33),GPIO0 (35),GPIO0 (34),GPIO0 (32),GPIO0 (30),GPIO0 (28),GPIO0 (26),GPIO0 (24)) <= conv_std_logic_vector(0,12);
		 COUNT_DAC <= 0;
		 ELSE --IF CLK_12MHZ'EVENT AND CLK_12MHZ = '1' THEN
			COUNT_DAC <= COUNT_DAC +1;
			IF COUNT_DAC = 10 THEN
				COUNT_DAC <= 0;
			END IF;
			--(GPIO0 (25), GPIO0 (27),GPIO0 (29),GPIO0 (31),GPIO0 (33),GPIO0 (35),GPIO0 (34),GPIO0 (32),GPIO0 (30),GPIO0 (28),GPIO0 (26),GPIO0 (24)) <= DAC_SIGNAL(COUNT_DAC);
		END IF;
END PROCESS;
END a;
