/PROG  FIND
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1793;
CREATE		= DATE 25-04-12  TIME 23:19:20;
MODIFIED	= DATE 25-04-14  TIME 23:09:12;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 54;
MEMORY_SIZE	= 2257;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:J P[1] 100% FINE    ;
   4:  LBL[1] ;
   5:  VISION RUN_FIND 'COLORSORT'    ;
   6:  WAIT   3.00(sec) ;
   7:  VISION GET_OFFSET 'COLORSORT' VR[1] JMP LBL[10] ;
   8:  R[5]=VR[1].MODELID ;
   9:  DO[2]=ON ;
  10:  IF R[5]=1,JMP LBL[2] ;
  11:  IF R[5]=3,JMP LBL[3] ;
  12:  PR[1]=VR[1].FOUND_POS[1] ;
  13:  PR[4]=PR[1:CYLINDREUH]+PR[3]    ;
  14:L P[2] 500mm/sec FINE Offset,PR[4]    ;
  15:L P[2] 100mm/sec FINE Offset,PR[1:CYLINDREUH]    ;
  16:  CALL CLOSE    ;
  17:L P[2] 1000mm/sec FINE Offset,PR[4]    ;
  18:J P[4] 100% FINE    ;
  19:L P[3] 1000mm/sec FINE    ;
  20:  CALL OPEN    ;
  21:L P[4] 100mm/sec FINE    ;
  22:  JMP LBL[1] ;
  23:  LBL[2] ;
  24:  PR[1]=VR[1].FOUND_POS[1] ;
  25:  PR[4]=PR[1:CYLINDREUH]+PR[3]    ;
  26:L P[5] 500mm/sec FINE Offset,PR[4]    ;
  27:L P[5] 100mm/sec FINE Offset,PR[1:CYLINDREUH]    ;
  28:  CALL CLOSE2    ;
  29:L P[5] 1000mm/sec FINE Offset,PR[4]    ;
  30:J P[7] 100% FINE    ;
  31:L P[8] 1000mm/sec FINE    ;
  32:  CALL OPEN2    ;
  33:L P[7] 100mm/sec FINE    ;
  34:  JMP LBL[4] ;
  35:  LBL[3] ;
  36:  PR[1]=VR[1].FOUND_POS[1] ;
  37:  PR[4]=PR[1:CYLINDREUH]+PR[3]    ;
  38:L P[6] 500mm/sec FINE Offset,PR[4]    ;
  39:L P[9] 100mm/sec FINE Offset,PR[1:CYLINDREUH]    ;
  40:  CALL CLOSE33    ;
  41:L P[6] 1000mm/sec FINE Offset,PR[4]    ;
  42:J P[10] 100% FINE    ;
  43:L P[11] 1000mm/sec FINE    ;
  44:  CALL OPEN3    ;
  45:  DO[2]=OFF ;
  46:L P[10] 500mm/sec FINE    ;
  47:  LBL[4] ;
  48:  JMP LBL[1] ;
  49:  LBL[10] ;
  50:   ;
  51:   ;
  52:   ;
  53:   ;
  54:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -49.794  mm,	Y =  -308.385  mm,	Z =   204.925  mm,
	W =      .503 deg,	P =    -2.182 deg,	R =   -87.219 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -659.287  mm,	Y =  -370.193  mm,	Z =  -420.529  mm,
	W =      .000 deg,	P =      .000 deg,	R =   -78.179 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -659.287  mm,	Y =  -370.193  mm,	Z =   293.471  mm,
	W =      .000 deg,	P =      .000 deg,	R =   -78.179 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   550.422  mm,	Y =  -330.194  mm,	Z =   200.520  mm,
	W =     -.000 deg,	P =     -.000 deg,	R =   -78.179 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   550.422  mm,	Y =  -330.194  mm,	Z =  -413.520  mm,
	W =     -.000 deg,	P =      .000 deg,	R =   -78.179 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =     0.000  mm,	Y =     0.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.068  mm,	Y =  1671.335  mm,	Z =   361.464  mm,
	W =      .000 deg,	P =     -.000 deg,	R =    11.821 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -552.068  mm,	Y =  1671.335  mm,	Z =   161.464  mm,
	W =     -.000 deg,	P =      .000 deg,	R =    11.821 deg
};
/END
