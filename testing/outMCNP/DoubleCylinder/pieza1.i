Input Test
C   ______ _______  _____      _     _ __   _ _______ ______  
C  |  ____ |______ |     | ___ |     | | \  | |______ |     \ 
C  |_____| |______ |_____|     |_____| |  \_| |______ |_____/
C Version : 1.0.1     22/10/2023
C FreeCAD Version : 0.20.2 
C
C *************************************************************
C Original Step file : inputSTEP/DoubleCylinder/pieza1.stp
C
C Creation Date : 2023-10-31 09:25:02.319507
C Solid Cells   : 1
C Total Cells   : 4
C Surfaces      : 19
C Materials     : 0
C
C **************************************************************
1     0      6 10 11 -9 -5:1 6 7 9 10 -5 -3 -2:4 6 10 -8 -7 -5 -2:4 6 8 9 12 -5
           imp:n=1.0   imp:p=1.0   
C 
C ##########################################################
C              VOID CELLS
C ##########################################################
C 
2     0      13 15 17 -18 -16 -14 (-6:5:(9:-11:-10) (-1:3:-9:-10:-7:2) (2:7:-10:
           8:-4) (-8:-4:-12:-9))
           imp:n=1.0   imp:p=1.0   
           $Automatic Generated Void Cell. Enclosure(-1.0, 2.0, -1.0, 2.0, -1.0, 2.0)
           $Enclosed cells : (1)
3     0      -19 (-13:14:-15:16:-17:18)
           imp:n=1.0   imp:p=1.0   
           $Graveyard_in
4     0      19
           imp:n=0     imp:p=0     
           $Graveyard
 
C ##########################################################
C                  SURFACE DEFINITION
C ##########################################################
1      PX   0.0000000e+00
2      PX   1.0000000e+00
3      PY   1.0000000e+00
4      PY   0.0000000e+00
5      PZ   1.0000000e+00
6      PZ   0.0000000e+00
7      P   -6.0861825e-01  7.9346318e-01  0.0000000e+00  1.5869264e-01
8      P   -7.7144921e-01 -6.3629091e-01  0.0000000e+00 -4.6354735e-01
9      C/Z      0.200000     0.200000     0.200000
10     C/Z      0.320000     0.320000     0.100000
11     P   -7.0710678e-01 -7.0710678e-01  0.0000000e+00 -4.5608387e-01
12     P    7.9346318e-01 -6.0861825e-01  0.0000000e+00  1.5869264e-01
13     PX  -1.0000000e+00
14     PX   2.0000000e+00
15     PY  -1.0000000e+00
16     PY   2.0000000e+00
17     PZ  -1.0000000e+00
18     PZ   2.0000000e+00
19     S   5.0000000e-01  5.0000000e-01  5.0000000e-01  2.6500377e+00
 
C 
MODE P
VOID 
NPS 1e6
PRDMP 2J -1
C SDEF PAR=P X=D1 Y=D2 Z=D3 
C SI1 -1.0000000e+00 2.0000000e+00 
C SI2 -1.0000000e+00 2.0000000e+00 
C SI3 -1.0000000e+00 2.0000000e+00 
C SP1 0  1 
C SP2 0  1 
C SP3 0  1 
SDEF PAR=P NRM=-1 SUR=19 WGT=2.2062463e+01 DIR=d1
SI1 0 1
SP1 -21 1
F4:P  1 
SD4   9.6000000e-01 