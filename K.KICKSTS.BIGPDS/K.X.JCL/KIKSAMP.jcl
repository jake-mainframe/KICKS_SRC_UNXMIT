//KIKSAMP JOB  CLASS=C,MSGCLASS=Z,MSGLEVEL=(1,1)
//*
//* NOTE - CHANGE ".COB(" BELOW TO ".CB2(" IN ZOS...
//*
//MURMAPS EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.U.V1R5M0.MAPSRC($MURMAPS),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//*
//MURPGMS EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.U.V1R5M0.COB($MURPGMS),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//*
//TACMAPS EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.U.V1R5M0.MAPSRC($TACMAPS),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//*
//TACPGMS EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.U.V1R5M0.COB($TACPGMS),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//
