Input Test
C   ______ _______  _____      _     _ __   _ _______ ______  
C  |  ____ |______ |     | ___ |     | | \  | |______ |     \ 
C  |_____| |______ |_____|     |_____| |  \_| |______ |_____/
C Version : 0.9.8.1     09/06/2023
C FreeCAD Version : 0.20.2 
C
C *************************************************************
C Original Step file : inputSTEP/Torus/codo2.stp
C
C Creation Date : 2023-06-11 18:12:13.752157
C Solid Cells   : 1
C Total Cells   : 4
C Surfaces      : 15
C Materials     : 0
C
C **************************************************************
1     0      -2 -4 5 -1:-6 3 1 7
           imp:n=1.0   imp:p=1.0   
C 
C ##########################################################
C              VOIDS 
C ##########################################################
C 
2     0      9 11 13 -14 -12 -10 (1:4:-5:2) (-1:6:-7:-3)
           imp:n=1.0   imp:p=1.0   
           $Automatic Generated Void Cell. Enclosure(-2.407109860380112, 2.407109860380112, -1.0000000000005822, 3.0, -1.3, 1.3)
           $Enclosed cells : (1)
3     0      -15 (-9:10:-11:12:-13:14)
           imp:n=1.0   imp:p=1.0   
           $Graveyard_in
4     0      15
           imp:n=0     imp:p=0     
           $Graveyard
 
C ##########################################################
C                  SURFACE DEFINITION
C ##########################################################
1      PX   3.5527137e-16
2      PY   2.0000000e+00
3      PY   0.0000000e+00
4      TZ   0.0000000e+00  2.0000000e+00  0.0000000e+00
            1.0000000e+00  3.0000000e-01  3.0000000e-01
5      TZ   0.0000000e+00  2.0000000e+00  0.0000000e+00
            1.0000000e+00  2.0000000e-01  2.0000000e-01
6      TZ   0.0000000e+00  0.0000000e+00  0.0000000e+00
            1.0000000e+00  3.0000000e-01  3.0000000e-01
7      TZ   0.0000000e+00  0.0000000e+00  0.0000000e+00
            1.0000000e+00  2.0000000e-01  2.0000000e-01
8      P   -8.3844362e-01 -5.4498835e-01  0.0000000e+00 -1.0899767e+00
9      PX  -2.4071099e+00
10     PX   2.4071099e+00
11     PY  -1.0000000e+00
12     PY   3.0000000e+00
13     PZ  -1.3000000e+00
14     PZ   1.3000000e+00
15     S   0.0000000e+00  1.0000000e+00  0.0000000e+00  3.4566080e+00
 
C 
MODE P
VOID 
NPS 1e6
PRDMP 2J -1
C SDEF PAR=P X=D1 Y=D2 Z=D3 
C SI1 -2.4071099e+00 2.4071099e+00 
C SI2 -1.0000000e+00 3.0000000e+00 
C SI3 -1.3000000e+00 1.3000000e+00 
C SP1 0  1 
C SP2 0  1 
C SP3 0  1 
SDEF PAR=P NRM=-1 SUR=15 WGT=3.7536185e+01 DIR=d1
SI1 0 1
SP1 -21 1
F4:P  1 
SD4   4.9348022e-01 