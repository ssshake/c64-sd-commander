  ��(147) , �53280,0:� 1 POKE 53280,11 9 �53281,0 E �646,15 p � PRINT "////////////////////////////" � � PRINT "       RICH DESKTOP         " � � PRINT "////////////////////////////" � DELIMITER$�">  " � LNGTH�7:SX�0:SY�100:TMOUT�0 		 PROGRAM$(0,0)�"FILES" -	
 PROGRAM$(1,0)�"BBS" G	 PROGRAM$(2,0)�"PAINT" `	 PROGRAM$(3,0)�"GAME" y	 PROGRAM$(4,0)�"WORD" �	 PROGRAM$(5,0)�"SHEETS" �	 PROGRAM$(6,0)�"MUSIC" �	 PROGRAM$(7,0)�"BASIC" �	 PROGRAM$(0,1)�"8,1" �	 PROGRAM$(1,1)�"8,1" 
 PROGRAM$(2,1)�"8,1" (
 PROGRAM$(3,1)�"8,1" @
 PROGRAM$(4,1)�"8,1" X
 PROGRAM$(5,1)�"8,1" p
 PROGRAM$(6,1)�"8,1" �
 PROGRAM$(7,1)�"8,1" �
 � X COORD �
 XY(0,0)�3 �
 XY(1,0)�13 �
 XY(2,0)�23 �
 XY(3,0)�33 �
 XY(4,0)�3 �
  XY(5,0)�13 �
! XY(6,0)�23 " XY(7,0)�33 # � Y COORD )$ XY(0,1)�12 8% XY(1,1)�12 G& XY(2,1)�12 V' XY(3,1)�12 e( XY(4,1)�20 t) XY(5,1)�20 �* XY(6,1)�20 �+ XY(7,1)�20 �d I�0 �� ��(147) �� � GOSUB 1071 : REM PRETTY LINES �� ROW�12:COL�12:�7000:�"LOADING DESKTOP..." � �6000:� RENDER SPRITES A� ROW�12:COL�12:�7000:�"                  " �� �2000:� RENDER LIST : REM DO NOT CHANGE THIS LINE NUMBER!!!!!! WILL BREAK A FEW SPOTS �� �3500:� SET CURSOR �� ROW�0:COL�25:�7000:�"DAGGATOP V0.2.4" �� ROW�0:COL�0:�7000:�"[F1] HELP" 8� � ROW = 1: COL = 0: GOSUB 7000: PRINT "F3 = CONSOLE" u� � ROW = 2: COL = 0: GOSUB 7000: PRINT "F5 = SCREENSAVER" �� �1110:� RENDER PROMPT �� � BEGIN RENDER LOOP �� CURRENT$�PROGRAM$(I,0):� CURRENT SELECTION �� �3000:� GET INPUT � �173:� END RENDER LOOP �� %�� DRAW PRETTY LINES 2��55296,0 K�B�960:S�1024:C�55296 W��X�0�39 aT�S�X kA�C�X ��A,7:� TOP ROW COLOR ��A�B,2:� BOTTOM ROW COLOR ��T,221:� TOP BORDER CHARACTER ��T�B,221:� BOTTOM BORDER CHARACTER ��X #L�2014:R�39 $�X�1�23 %H�X�40 )&T�S�H:V�C�H F'�V,6:� LEFT BORDER COLOR f(�V�R,6:� RIGHT BORDER COLOR �)�T,221:� LEFT BORDER CHARACTER �*�T�R,221:� RIGHT BORDER CHARACTER �+�X �.� �/� FASTER PRETTY LINES �0�646,2 $1ROW�0:COL�0:�7000:�"����������������������������������������"; g2ROW�24:COL�0:�7000:�"���������������������������������������"; u3�2023,230 �4�56295,2 �8�L�1�23 �9ROW�L:COL�0:�7000:�"�                                      �"; �:� �B�646,1 �C� V� DRAW COMMAND PROMPT ^B�920:S�1024:C�55296 %_T�B�S 1`�X�3�37 >k�T�X,119 Kx�C�B�X,1 R~�X ^�T�3,79 k��T�37,80 z��T�40�4,62 ���T�34,6 ���T�35,51 ���C�B�40�4,1 ���T�3�40,101 ���C�B�40�3,1 ��� ��� RENDER LIST AND RENDER CURRENT SELECTION ��53280,0:�53281,0 ��X�0�LNGTH .�� T$ = "   " e�� IF CURRENT$ = PROGRAM$(X,0) THEN T$ = DELIMITER$ ��� PRINT T$ + PROGRAM$(X, 0) ��� POKE 1024 + XY(X, 0) + 40 * XY(X, 1), 127 ��� POKE 55296 + XY(X, 0) + 40 * XY(X, 1), 8 �ROW�XY(X,1):COL�XY(X,0):�7000 ��PROGRAM$(X,0)  ��X =�� UPDATE CURSOR POSITION N�� GOSUB 3500 T�� ��� WAIT FOR KEYBOARD INPUT AND UPDATE NAVIGATION ��TMOUT�TMOUT�1:�TMOUT�5000�TMOUT�0:�9000 ���KEY$:�KEY$�""��3001 ���3400:TMOUT�0 ��KEY$��(13)��4000:� LAUNCH APP $��KEY$��(134)��5000:� DIR LIST 8��KEY$�""�I�I�4 L��KEY$�""�I�I�1 `��KEY$�"�"�I�I�4 t��KEY$�"�"�I�I�1 ���KEY$�"1"�I�0:�4000 ���KEY$�"2"�I�1:�4000 ���KEY$�"3"�I�2:�4000 ���KEY$�"4"�I�3:�4000 ���KEY$�"5"�I�4:�4000 ��KEY$�"6"�I�5:�4000 ��KEY$��(133)��8000 2��KEY$��(135)��9000 C��I�LNGTH�I�0 T��I�0�I�LNGTH ^��3500 d�� �H� CLEAR OLD CURSOR POSITION �I�(1024�XY(I,0)�40�XY(I,1))�1,32 ��� ��� SET NEW CURSOR POSITION ���(1024�XY(I,0)�40�XY(I,1))�1,250:� 90 ��(55296�XY(I,0)�40�XY(I,1))�1,13 1�� FOR X = 0 TO 12 C�� SX = SX + X r�� POKE V + 0,SX : REM UPDATE X COORDINATES ��� POKE V + 1,SY : REM UPDATE Y COORDINATES ��� NEXT X �� POKE V + 0,XY(I, 0) * 10 �� POKE V + 1,XY(I, 1) * 10 �t� �� LAUNCH APP 6�ROW�12:COL�12:�7000:�"LAUNCHING APP "�CURRENT$ J�� POKE 53280,11 ^�� POKE 53281,15 p�� POKE 646, 0 ���V�21,0:� DISABLE SPRITES ���CURRENT$�"BASIC"��64738 ��� DYNAMIC KEYBOARD LOADER EXAMPLE �� CHR$(34) IS FOR QUOTE MARKS. PRINTS AT PROPER PLACE G��"�LOAD";�(34);PROGRAM$(I,0);�(34);",";PROGRAM$(I,1) Z��:�:�:�:�"RUN" |��"":�198,2:�631,13:�632,13:� ��� 198=NUMBER OF CHARACTERS IN KEYBOARD BUFFER. 13=RETURN �� ��ROW�0:COL�0:�7000 ���19,65 �� POKE 53280,12: POKE 53281,12 !��V�21,0:� DISABLE SPRITES -���(147) 8��11000 \�� GOSUB 10000 : REM DIR LISTING d��"" l��"" w��646,1 ���"> ";IP$ ���"" ���646,15 ���IP$�"EXIT"���(147):�V�21,255:�143:�5035 ���IP$�"DIR"��10000:�5035 ���IP$�"LS"��10000:�5035 ��IP$�"HELP"��11000:�5035 T���(IP$,4)�"LOAD"��"I DONT KNOW HOW TO LOAD YET":�5035 ����(IP$,3)�"RUN"��"I DONT KNOW HOW TO RUN YET":�5035 ��� ELSE ���15,8,15,IP$:�15 ���"" � �10000 ���5035 �� �p� SPRITES zV�53248:� START OF DISPLAY CHIP '{�V�21,255:� ENABLE SPRITE 2 AND 3 _|�2040,13:� SPRITE 2 DATA FROM BLOCK 13 : ICON FILES |}�2041,14:� ICON TERMINAL �~�2042,15:�  ICON PAINT ��2043,192:�  ICON GAME ���2044,193:�  ICON WORD ���2045,194:�  ICON SHEETS ��2046,195:�  ICON MUSIC "��2047,196:�  ICON BASIC :��V�39,3:� FILE ICON M��V�40,13:� BBS a��V�41,7:� PAINT t��V�42,2:� GAME ���V�43,1:� WORD ���V�44,6:� SHEETS ���V�45,10:� MUSIC ���V�46,14:� BASIC  ��N�0�63:�Q:�832�N,Q:�:� LOADS SPRITE INTO MEM SOMEHOW :��N�0�63:�Q:�896�N,Q:�:� LOADS SPRITE INTO MEM SOMEHOW t��N�0�63:�Q:�960�N,Q:�:� LOADS SPRITE INTO MEM SOMEHOW ���N�0�319:�Q:�12288�N,Q:�:� LOADS SPRITE INTO MEM SOMEHOW ���53264,�(53264)�136:� SIGNIFICANT BIT FOR SPRITE 4 AND 8 ��V�23,255:�V�29,255:� EXPAND SPRITE *��V�0,45:� FILES 7��V�1,100 O��V�2,125:� TERMINAL \��V�3,100 q��V�4,205:� PAINT ~��V�5,100 ���V�6,29:� GAMES ���V�7,100 ���V�8,45:� WORD ���V�9,160 ���V�10,125:� SHEETS ���V�11,160 ���V�12,205:� MUSIC ��V�13,160 ��V�14,29:� BASIC +��V�15,160 ?7� SELECTOR ICON ���255,255,255,255,255,255,255,255,255,255,255,252,255,255,252,255,255,255,255,255 ���255,255,231,255,255,219,255,255,219,255,255,231,255,255,255,255,255,255,255,255 > ��231,255,255,231,255,255,231,255,255,231,255,255,231,255,255,255,255,255,255,255 � ��255,255,255,1,0,255,0,3,0,192,12,114,48,16,251,8,33,255,132,33,255,196,64,127 � ��194,64,63,98,128,30,33,128,12,1,128,8,1,128,12,1,128,31,1,64,63,130,64,31,2,32 8!��14,4,32,14,4,16,6,8,12,4,48,3,30,192,0,255,0,1,0,8,0,0,20,0,1,231,0,7,195,192 �!��15,137,224,28,132,240,56,128,248,56,64,252,120,65,252,124,235,252,115,235,252 �!��97,235,248,97,235,248,115,235,240,127,235,112,62,107,32,30,107,128,15,235,128 1"��3,235,0,0,8,0,0,0,0,1,0,28,0,0,34,0,0,69,0,0,69,0,0,65,0,0,34,0,0,28,0,0,20,0 �"��0,20,0,0,20,0,0,20,0,0,28,0,0,34,0,0,127,0,0,255,128,7,255,240,8,0,8,8,0,8,15 �" �255,248,15,255,248,7,255,240,1,63,255,192,63,255,208,63,255,216,63,255,192,63 +#
�255,252,56,0,60,63,255,252,56,64,188,63,255,252,60,96,252,63,255,252,56,30,124 �#�63,255,252,60,0,252,63,255,252,60,112,124,63,255,252,63,0,124,63,255,252,63,255 �#�252,63,255,252,1,0,0,0,121,139,230,122,235,234,122,219,234,121,187,230,127,251 )$(�254,0,0,0,127,251,254,127,251,254,127,251,254,127,251,254,0,0,0,127,251,254,127 |$2�251,254,127,251,254,127,251,254,0,0,0,127,251,254,127,251,254,127,251,254,0,0 �$<�0,1,0,112,0,0,124,0,0,63,0,0,55,192,0,48,224,0,48,0,0,16,0,0,24,0,0,24,0,0,24 #%F�0,0,12,0,0,124,0,1,254,0,3,255,0,3,255,0,3,255,0,3,255,0,1,254,0,0,252,0,0,112 w%P�0,0,0,0,1,0,0,0,3,254,0,7,254,0,15,254,0,15,254,0,31,254,0,31,129,255,63,1,254 �%Z�63,1,252,63,1,248,63,1,240,63,0,0,63,1,240,63,1,248,63,1,252,31,1,254,31,129 �%d�255,15,254,0,15,254,0,7,254,0,3,254,0,1 �%,� +&X�780,0:� FUNCTION TO SET TEXT POSITION X/Y 8&b�781,ROW E&l�782,COL P&v�65520 V&�� m&@ROW�23:COL�6:�7000 �&J�"MOVE=ARROW KEYS. RUN=RETURN" �&�� �&(#� SCREENSAVER �&,#��(147) �&-#�V�21,0:� DISABLE SPRITES �&.#�646,5 �&/#�53280,0 �&0#�53281,0 '1#� POKE 646, INT(RND(1)*16) .'3#ROW�24:COL�0:�7000: J'4#�"> DUMP MEMORY 0-64K " a'8#ROW�0:COL�0:�7000: �'9#BV�1:BC�5:W�1024:BN�5:CV�0 �':#A��(BV)�255 �';#D�256 �'<#�M�0�6:�55296�1024�W,1:�W,118:BC�BN:��(�(1)�6)�1�BC�BN:�13 �'>#D�D�2:B��(A�D) �'?#A�A�(B�D): 6(B#�W,�(�(�(B),1)):�55296�1024�W,BC:W�W�1:�W�2024�W�1024: <(C#� w(D#�W,�(�(�(A),1)):�55296�1024�W,BC:W�W�1:�W�2024�W�1024: �(F#BN�5 �(O#� BN = INT(RND(1)*15)+1 �(P#� PRINT "DEBUG >" BV �(Z#�KEY$:��KEY$�""��646,1:��(147):�V�21,255:�143: )�#BV�BV�1:�BV�65534�BV�1:BC�5 #)�#�CV�1�BN�13:CV�0:�9018 =)�#�CV�0�BN�5:CV�1:�9018 G)�#�9018 M)�#� W)'� DIR �)'D��(186):� LAST USED DRIVE NUMBER, YOU CAN FORCE 8 IF < 8 �)'�57812"$",D:�43,1:�44,192:�768,174:�769,167:�47003,1 *$'�782,192:�65493:�42291:�:�44,8:�768,139:�769,227 	*.'� *�*� HELP +*+�"DAGGA/DOS 0.2.4" 3*+�"" ?*+�646,15 s*+�"VALID COMMANDS: DIR LS CD LOAD RUN HELP EXIT" ~*+�646,3 �* +�"":�"ALL OTHER COMMANDS SENT RAW TO SD2IEC":�"" �*%+�646,15 �**+�"CD//           - ROOT DIRECTORY" +4+�"CD/MYDIR       - CHANGE TO A DIRECTORY" =+5+�"CD MYIMAGE.D64 - MOUNT DISK IMAGE" e+6+�"CD _           - GO UP ONE LEVEL" p+>+�646,1 v+\+�   