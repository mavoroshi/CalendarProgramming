10  CLS
20  DATA 31,28,31,30,31,30,31,31,30,31,30,31
30  DIM LD(12)
40  FOR J=1 TO 12
50  READ LD(J)
60  NEXT J
70 INPUT "YEAR:";NEN
80 INPUT "MONTH:";TUKI
90 NEN2=NEN
100 GOSUB "CURUU"
110 LD(2)=LD(2)+URUU
120 DAY=1
130 TUKI2=TUKI
140 DAY2=DAY
150 GOSUB "CYOUBI"
160 YOUBI=YOUBI2
170 LPRINT "*** ";NEN;"/";TUKI;" ***"
180 LPRINT "SUNMONTUEWEDTHUFRISAT"
190 WX=YOUBI*3
200 FOR N=1 TO LD(TUKI)
210 IF N<>1 THEN 250
220 FOR Z=1 TO WX
230 LPRINT " ";
240 NEXT Z
250 LPRINT USING("###");N;
260 WX=WX+3
265 IF WX>18 THEN PRINT ""
270 IF WX>18 LET WX=0
280 NEXT N
290 LPRINT ""
300 LPRINT "TWITTER#ｶﾚﾝﾀﾞｰﾌﾟﾛｸﾞﾗﾐﾝｸﾞ"
310 LPRINT "!!! ﾌﾟﾁｺﾝﾃｽﾄ 2014 !!!"
320 LPRINT "!!!     ﾊﾞﾊﾞｰﾝ    !!!"
330 END
340 "CURUU"
350 IF (NEN2-4*INT(NEN2/4))<>0 THEN GOTO 400
360 IF (NEN2-100*INT(NEN2/100))<>0 THEN GOTO 380
370 IF (NEN2-400*INT(NEN2/400))<>0 THEN GOTO 400
380 URUU=1
390 GOTO 410
400 URUU=0
410 RETURN
420 "CYOUBI"
430 IF TUKI2>2 THEN GOTO 460
440 NEN2=NEN2-1
450 TUKI2=TUKI2+12
460 WYOUBI=NEN2+INT(NEN2/4)-INT(NEN2/100)+INT(NEN2/400)+INT((13*TUKI2+8)/5)+DAY2
470 YOUBI2=WYOUBI-7*INT(WYOUBI/7)
480 RETURN
