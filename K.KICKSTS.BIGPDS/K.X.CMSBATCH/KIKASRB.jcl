//KIKASRB  JOB  CLASS=C,MSGCLASS=Z
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//SYSUT2 DD UNIT=10D,DISP=OLD,DCB=BLKSIZE=80
//SYSUT1 DD DATA,DLM=$$,DCB=BLKSIZE=3120
ID CMSBATCH
/JOB CMSUSER 123456 KIKASRB
$$
// DD DSN=K.X.CMSBATCH(MAPN),DISP=SHR
// DD DSN=K.X.CMSBATCH(KASM),DISP=SHR
// DD DATA,DLM=$$
MAPN
KBLOCK KIKASRB
KASM kikasrb
     LCLB &MVS,&CMS
&CMS SETB 1
$$
// DD DSN=K.X.ROOT.ASM(KIKASRB),DISP=SHR
// DD DATA,DLM=$$
/*
*YPE KIKASRB LISTING
/*
$$
//
