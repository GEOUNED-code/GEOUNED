Input Test
C   ______ _______  _____      _     _ __   _ _______ ______  
C  |  ____ |______ |     | ___ |     | | \  | |______ |     \ 
C  |_____| |______ |_____|     |_____| |  \_| |______ |_____/
C Version : 0.9.8.1     09/06/2023
C FreeCAD Version : 0.20.2 
C
C *************************************************************
C Original Step file : inputSTEP/DoubleCylinder/pieza.stp
C
C Creation Date : 2023-06-11 18:17:29.952035
C Solid Cells   : 1
C Total Cells   : 4
C Surfaces      : 25
C Materials     : 0
C
C **************************************************************
1     0      -1 -2 -3 -4 12 5 -6 13 17:-2 -3 -7 14 -6 -8 15 -4 9 18:-2 -3 8 -10 
           -5 11:-3 -4 8 -11 -5 -6 16
           imp:n=1.0   imp:p=1.0   
           $/Sólido1
C 
C ##########################################################
C              VOIDS 
C ##########################################################
C 
2     0      19 21 23 -24 -22 -20 (3:(1:4:6:-13:-17:-12:-5:2) (2:6:8:-14:-18:
           -15:-9:7:4) (2:-8:-11:10:5) (4:6:11:-16:-8:5))
           imp:n=1.0   imp:p=1.0   
           $Automatic Generated Void Cell. Enclosure(34.13238636210711, 39.45938114769521, 5.3357981334812665, 9.032547691019097, 45.19769476089668, 50.972496101482704)
           $Enclosed cells : (1)
3     0      -25 (-19:20:-21:22:-23:24)
           imp:n=1.0   imp:p=1.0   
           $Graveyard_in
4     0      25
           imp:n=0     imp:p=0     
           $Graveyard
 
C ##########################################################
C                  SURFACE DEFINITION
C ##########################################################
1      P    7.3784606e-01  1.3010219e-01  6.6231157e-01  6.2151356e+01
2      P   -7.3317589e-01 -1.5876420e-01  6.6124659e-01  3.9619377e+00
3      P    1.9454321e-01 -9.8069494e-01 -1.9757901e-02 -2.5616969e-01
4      P    7.3317589e-01  1.5876420e-01 -6.6124659e-01 -3.5619377e+00
5      P    6.5161800e-01  1.1415500e-01  7.4990840e-01  6.1718805e+01
6      P   -1.9454321e-01  9.8069494e-01  1.9757901e-02  1.5561697e+00
7      P   -9.7530811e-01 -1.9803970e-01  9.7746401e-02 -3.1181735e+01
8      P    6.5161800e-01  1.1415500e-01  7.4990840e-01  5.9918805e+01
9      P    5.5507811e-01  9.7875202e-02  8.2601982e-01  5.8552434e+01
10     P   -1.9454321e-01  9.8069494e-01  1.9757901e-02  4.3230585e-01
11     P   -7.3317589e-01 -1.5876420e-01  6.6124659e-01  3.7619377e+00
12     GQ   0.581445710493123  0.979428677648545  0.439125611858333
          -0.185582490672266  0.214829493665443  0.969033293610163
          -91.036563460162256 -20.182321164678285 -82.507973908567422
          3874.124028650739547 
13     GQ   0.462453079161026  0.974793941088913  0.562752979750060
          -0.232804118126292  0.209964512726478  0.969620109901546
          -80.683629717363104 -15.212760650972967 -93.112824124640312
          3852.757597861380418 
14     GQ   0.350210777037867  0.966999139089363  0.682790083872771
          -0.292872694310717  0.204628446913813  0.908007896256845
          -64.287210850087803 -14.487746777464238 -96.683453265628202
          3421.094783220790305 
15     GQ   0.462453079161026  0.974793941088913  0.562752979750060
          -0.232804118126292  0.209964512726478  0.969620109901546
          -77.425539729930463 -14.641985610164639 -89.363282191651280
          3548.663578546905228 
16     GQ   0.462453079161026  0.974793941088913  0.562752979750060
          -0.232804118126292  0.209964512726478  0.969620109901546
          -78.898950172057837 -15.711929124146202 -91.253859470415307
          3699.733024074037530 
17     P   -3.2073283e-01 -8.3985920e-01 -4.3791206e-01 -4.0147773e+01
18     P    5.1299389e-01 -6.8898809e-01  5.1198895e-01  3.7237088e+01
19     PX   3.4132386e+01
20     PX   3.9459381e+01
21     PY   5.3357981e+00
22     PY   9.0325477e+00
23     PZ   4.5197695e+01
24     PZ   5.0972496e+01
25     S   3.6795884e+01  7.1841729e+00  4.8085095e+01  4.4282323e+00
 
C 
MODE P
VOID 
NPS 1e6
PRDMP 2J -1
C SDEF PAR=P X=D1 Y=D2 Z=D3 
C SI1 3.4132386e+01 3.9459381e+01 
C SI2 5.3357981e+00 9.0325477e+00 
C SI3 4.5197695e+01 5.0972496e+01 
C SP1 0  1 
C SP2 0  1 
C SP3 0  1 
SDEF PAR=P NRM=-1 SUR=25 WGT=6.1604248e+01 DIR=d1
SI1 0 1
SP1 -21 1
F4:P  1 
SD4   1.1545693e+00 