//KIKPCP1$  JOB  CLASS=C,MSGCLASS=Z
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//SYSUT2 DD UNIT=10D,DISP=OLD,DCB=BLKSIZE=80
//SYSUT1 DD DATA,DLM=$$,DCB=BLKSIZE=3120
ID CMSBATCH
/JOB CMSUSER 123456 KIKPCP1$
$$
// DD DSN=K.X.CMSBATCH(MAPN),DISP=SHR
// DD DSN=K.X.CMSBATCH(KGCCGET),DISP=SHR
// DD DSN=K.X.CMSBATCH(KGCCCSL),DISP=SHR
// DD DATA,DLM=$$
MAPN
KBLOCK KIKPCP1$
KGCCGET
VMARC UNPACK ASYSH VMARC N = = A
KGCCCSL KIKPCP1$
$$
// DD DSN=K.X.ROOT.CPART(ENCODE32),DISP=SHR
// DD DSN=K.X.ROOT.C(KIKPCP1$),DISP=SHR
// DD DATA,DLM=$$
/*
 INCLUDE KIKENTRY
 INCLUDE KIKPCP1$
 INCLUDE KIKACP
 INCLUDE SVC99
/*
*YPE KIKPCP1$ LISTING *
TYPE KIKPCP1$ LKEDIT *
/*
$$
//