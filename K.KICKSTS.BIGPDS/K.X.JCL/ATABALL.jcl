//ATABALL JOB  CLASS=C,MSGCLASS=Z,MSGLEVEL=(1,1)
//*
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.S.V1R5M0.INSTLIB(KIKDCTB$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKDCTS$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKDCT1$),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//*
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.S.V1R5M0.INSTLIB(KIKFCTB$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKFCTS$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKFCT1$),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//*
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.S.V1R5M0.INSTLIB(KIKPCTB$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKPCTS$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKPCT1$),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//*
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.S.V1R5M0.INSTLIB(KIKPPTB$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKPPTS$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKPPT1$),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//*
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD DSN=K.S.V1R5M0.INSTLIB(KIKSITB$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKSITS$),DISP=SHR
//       DD DSN=K.S.V1R5M0.INSTLIB(KIKSIT1$),DISP=SHR
//SYSUT2 DD SYSOUT=(,INTRDR)
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//
