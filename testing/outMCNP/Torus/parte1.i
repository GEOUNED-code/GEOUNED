Input Test
C   ______ _______  _____      _     _ __   _ _______ ______  
C  |  ____ |______ |     | ___ |     | | \  | |______ |     \ 
C  |_____| |______ |_____|     |_____| |  \_| |______ |_____/
C Version : 1.0.1     22/10/2023
C FreeCAD Version : 0.20.2 
C
C *************************************************************
C Original Step file : inputSTEP/Torus/parte1.stp
C
C Creation Date : 2023-10-31 13:37:08.492042
C Solid Cells   : 1
C Total Cells   : 4
C Surfaces      : 13
C Materials     : 0
C
C **************************************************************
1     0      -6 2 5 -1:3 -4 5 -2
           imp:n=1.0   imp:p=1.0   
C 
C ##########################################################
C              VOID CELLS
C ##########################################################
C 
2     0      7 9 11 -12 -10 -8 (-5:(1:6:-2) (2:4:-3))
           imp:n=1.0   imp:p=1.0   
           $Automatic Generated Void Cell. Enclosure(-1.216478440058479, 1.216478440058479, -1.216478440058479, 1.216478440058479, -1.0, 2.0500000000000003)
           $Enclosed cells : (1)
3     0      -13 (-7:8:-9:10:-11:12)
           imp:n=1.0   imp:p=1.0   
           $Graveyard_in
4     0      13
           imp:n=0     imp:p=0     
           $Graveyard
 
C ##########################################################
C                  SURFACE DEFINITION
C ##########################################################
1      PZ   1.0500000e+00
2      PZ   1.0000000e+00
3      PZ   0.0000000e+00
4      CZ      0.200000
5      TZ   0.0000000e+00  0.0000000e+00  1.0000000e+00
            1.5000000e-01  5.0000000e-02  5.0000000e-02
6      KZ   9.000000e-01     1.000000 1
7      PX  -1.2164784e+00
8      PX   1.2164784e+00
9      PY  -1.2164784e+00
10     PY   1.2164784e+00
11     PZ  -1.0000000e+00
12     PZ   2.0500000e+00
13     S   0.0000000e+00  0.0000000e+00  5.2500000e-01  2.3449497e+00
 
C 
MODE P
VOID 
NPS 1e6
PRDMP 2J -1
C SDEF PAR=P X=D1 Y=D2 Z=D3 
C SI1 -1.2164784e+00 1.2164784e+00 
C SI2 -1.2164784e+00 1.2164784e+00 
C SI3 -1.0000000e+00 2.0500000e+00 
C SP1 0  1 
C SP2 0  1 
C SP3 0  1 
SDEF PAR=P NRM=-1 SUR=13 WGT=1.7274956e+01 DIR=d1
SI1 0 1
SP1 -21 1
F4:P  1 
SD4   1.2390814e-01 