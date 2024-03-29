Input Test
C   ______ _______  _____      _     _ __   _ _______ ______  
C  |  ____ |______ |     | ___ |     | | \  | |______ |     \ 
C  |_____| |______ |_____|     |_____| |  \_| |______ |_____/
C Version : 1.0.1     22/10/2023
C FreeCAD Version : 0.20.2 
C
C *************************************************************
C Original Step file : inputSTEP/Torus/placa3.stp
C
C Creation Date : 2023-10-31 13:37:03.307142
C Solid Cells   : 1
C Total Cells   : 4
C Surfaces      : 13
C Materials     : 0
C
C **************************************************************
1     0      4 5 6 -1 -3 -2
           imp:n=1.0   imp:p=1.0   
C 
C ##########################################################
C              VOID CELLS
C ##########################################################
C 
2     0      7 9 11 -12 -10 -8 (1:3:-5:-6:-4:2)
           imp:n=1.0   imp:p=1.0   
           $Automatic Generated Void Cell. Enclosure(5.235636739339386, 11.881510882689469, 5.235636739341233, 11.88151088269084, -2.42, 2.42)
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
1      PX   1.0000000e+01
2      PY   1.0000000e+01
3      PZ   5.0000000e-01
4      PZ  -5.0000000e-01
5      TZ   0.0000000e+00  0.0000000e+00  0.0000000e+00
            1.0000000e+01  2.0000000e+00  2.0000000e+00
6      CZ     11.936492
7      PX   5.2356367e+00
8      PX   1.1881511e+01
9      PY   5.2356367e+00
10     PY   1.1881511e+01
11     PZ  -2.4200000e+00
12     PZ   2.4200000e+00
13     S   8.5585738e+00  8.5585738e+00  0.0000000e+00  5.3915681e+00
 
C 
MODE P
VOID 
NPS 1e6
PRDMP 2J -1
C SDEF PAR=P X=D1 Y=D2 Z=D3 
C SI1 5.2356367e+00 1.1881511e+01 
C SI2 5.2356367e+00 1.1881511e+01 
C SI3 -2.4200000e+00 2.4200000e+00 
C SP1 0  1 
C SP2 0  1 
C SP3 0  1 
SDEF PAR=P NRM=-1 SUR=13 WGT=9.1322977e+01 DIR=d1
SI1 0 1
SP1 -21 1
F4:P  1 
SD4   5.0107497e+00 