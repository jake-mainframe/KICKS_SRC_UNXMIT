//LSTLINES  JOB  CLASS=C,MSGCLASS=Z
//*
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//SYSUT2 DD UNIT=10D,DISP=OLD,DCB=BLKSIZE=80
//SYSUT1 DD DATA,DLM=$$,DCB=BLKSIZE=3120
ID CMSBATCH
/JOB CMSUSER 123456 LSTLINES
$$
// DD DSN=K.X.CMSBATCH(MAPN),DISP=SHR
// DD DSN=K.X.CMSBATCH(KGCCE),DISP=SHR
// DD DSN=K.X.CMSBATCH(KGCCGET),DISP=SHR
// DD DATA,DLM=$$
MAPN
KBLOCK LSTLINES
KGCCE  LSTLINES
$$
// DD DSN=K.X.UTIL(LSTLINES),DISP=SHR
// DD DATA,DLM=$$
/*
*P TERM CHARDEL OFF     CMSBATCH WON'T LET ME DO IT...
GLOBAL TXTLIB PDPCLIB
LOAD LSTLINES (CLEAR
GENMOD LSTLINES
COPY LSTLINES MODULE A = = N (REPLACE
/*
$$
//