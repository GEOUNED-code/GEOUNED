Input Test
C   ______ _______  _____      _     _ __   _ _______ ______  
C  |  ____ |______ |     | ___ |     | | \  | |______ |     \ 
C  |_____| |______ |_____|     |_____| |  \_| |______ |_____/
C Version : 1.0.1     22/10/2023
C FreeCAD Version : 0.20.2 
C
C *************************************************************
C Original Step file : inputSTEP//SCDR_90.stp
C
C Creation Date : 2023-10-31 09:21:19.549666
C Solid Cells   : 1
C Total Cells   : 4
C Surfaces      : 30
C Materials     : 0
C
C **************************************************************
1     0      -1 5 16 -15 2:-1 5 6 15 19 2:-1 16 -15 -5 2:-1 7 9 15 20 -8 -5 2:
           -3 5 -17 16 1:-3 5 10 -21 17 1:-2 5 -18 16 4:-2 5 -22 18 -11 4:-3 
           -17 16 -5 1:-3 9 12 17 -13 -8 -5 1:-2 -18 16 -5 4:-2 9 -23 18 -14 -8 
           -5 4
           imp:n=1.0   imp:p=1.0   
C 
C ##########################################################
C              VOID CELLS
C ##########################################################
C 
2     0      24 26 28 -29 -27 -25 (1:-5:-16:15:-2) (1:-5:-15:-19:-6:-2) (1:5:
           -16:15:-2) (1:5:8:-15:-20:-9:-7:-2) (-1:-5:17:-16:3) (-1:-5:-17:21:
           -10:3) (2:-5:18:-16:-4) (2:-5:-18:22:11:-4) (-1:5:17:-16:3) (-1:5:-9:
           13:-17:-12:8:3) (2:5:18:-16:-4) (2:5:-9:-18:23:14:8:-4)
           imp:n=1.0   imp:p=1.0   
           $Automatic Generated Void Cell. Enclosure(35.076675957749686, 47.97313695718635, 2.2499684097077344, 7.749968409710383, -11.541474069670151, 5.6884183094441045)
           $Enclosed cells : (1)
3     0      -30 (-24:25:-26:27:-28:29)
           imp:n=1.0   imp:p=1.0   
           $Graveyard_in
4     0      30
           imp:n=0     imp:p=0     
           $Graveyard
 
C ##########################################################
C                  SURFACE DEFINITION
C ##########################################################
1      PY   6.4499684e+00
2      PY   3.5499684e+00
3      PY   6.7499684e+00
4      PY   3.2499684e+00
5      P   -8.9725837e-01 -1.9716362e-13  4.4150585e-01 -3.6821918e+01
6      P    9.4664926e-01  2.0759000e-13  3.2226570e-01  3.4160409e+01
7      P   -9.4664926e-01 -2.0759000e-13 -3.2226570e-01 -4.2160409e+01
8      P    3.2226570e-01  7.0640000e-14 -9.4664926e-01  2.1913647e+01
9      P    9.4664926e-01  2.0759000e-13  3.2226570e-01  3.1660409e+01
10     P    6.6938211e-01 -7.0710678e-01  2.2787626e-01  1.9594241e+01
11     P   -6.6938211e-01 -7.0710678e-01 -2.2787626e-01 -2.6665264e+01
12     P   -6.6938211e-01 -7.0710678e-01 -2.2787626e-01 -3.4372728e+01
13     P   -6.7890443e-01 -4.5765992e-01  5.7413951e-01 -3.1595516e+01
14     P    6.6938211e-01 -7.0710678e-01  2.2787626e-01  2.7301705e+01
15     C/Y     40.076676     0.688418     4.000000
16     C/Y     40.076676     0.688418     1.750000
17     K/Y   4.007668e+01  1.044997e+01  6.884183e-01     1.000000 -1
18     K/Y   4.007668e+01 -4.500316e-01  6.884183e-01     1.000000 1
19     P   -6.4573348e-01 -1.4165809e-13 -7.6356288e-01 -2.2975091e+01
20     P    7.6356266e-01  1.6746046e-13 -6.4573374e-01  3.2215436e+01
21     P    4.8453660e-01 -6.4804577e-01  5.8758911e-01  1.3051066e+01
22     P    4.8453660e-01  6.4804577e-01  5.8758911e-01  1.9531483e+01
23     P   -6.7890443e-01  4.5765992e-01  5.7413951e-01 -2.7018946e+01
24     PX   3.5076676e+01
25     PX   4.7973137e+01
26     PY   2.2499684e+00
27     PY   7.7499684e+00
28     PZ  -1.1541474e+01
29     PZ   5.6884183e+00
30     S   4.1524906e+01  4.9999684e+00 -2.9265279e+00  1.1328866e+01
 
C 
MODE P
VOID 
NPS 1e6
PRDMP 2J -1
C SDEF PAR=P X=D1 Y=D2 Z=D3 
C SI1 3.5076676e+01 4.7973137e+01 
C SI2 2.2499684e+00 7.7499684e+00 
C SI3 -1.1541474e+01 5.6884183e+00 
C SP1 0  1 
C SP2 0  1 
C SP3 0  1 
SDEF PAR=P NRM=-1 SUR=30 WGT=4.0320205e+02 DIR=d1
SI1 0 1
SP1 -21 1
F4:P  1 
SD4   3.4608246e+02 