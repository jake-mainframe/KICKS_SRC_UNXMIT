//KIKTCP0$  JOB  CLASS=C,MSGCLASS=Z
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//SYSUT2 DD UNIT=10D,DISP=OLD,DCB=BLKSIZE=80
//SYSUT1 DD DATA,DLM=$$,DCB=BLKSIZE=3120
ID CMSBATCH
/JOB CMSUSER 123456 KIKTCP0$
$$
// DD DSN=K.X.CMSBATCH(MAPN),DISP=SHR
// DD DSN=K.X.CMSBATCH(KGCCGET),DISP=SHR
// DD DSN=K.X.CMSBATCH(KGCCCSL),DISP=SHR
// DD DATA,DLM=$$
MAPN
KBLOCK KIKTCP0$
KGCCGET
VMARC UNPACK ASYSH VMARC N = = A
KGCCCSL KIKTCP0$
$$
// DD DSN=K.X.ROOT.C(KIKTCP0$),DISP=SHR
// DD DSN=K.X.ROOT.CPART(ENCODE32),DISP=SHR
// DD DSN=K.X.ROOT.CPART(RDJFCB),DISP=SHR
// DD DATA,DLM=$$
/*
 INCLUDE KIKENTRY
 INCLUDE KIKCRLP
 INCLUDE KIKTCP0$
/*
*YPE KIKTCP0$ LISTING *
*YPE KIKTCP0$ LKEDIT *
/*
$$
//