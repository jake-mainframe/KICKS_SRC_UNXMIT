//SHOWLIBS JOB  CLASS=C,MSGCLASS=Z
// EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//SYSUT2 DD UNIT=10D,DISP=OLD,DCB=BLKSIZE=80
//SYSUT1 DD DATA,DLM=$$,DCB=BLKSIZE=3120
ID CMSBATCH
/JOB CMSUSER 123456 SHOWLIBS
$$
// DD DSN=K.X.CMSBATCH(MAPN),DISP=SHR
// DD DATA,DLM=$$
MAPN
KBLOCK SHOWLIBS
MACLIB COMP KIKCOBCP
MACLIB COMP KIKGCCCP
MACLIB COMP KIKCOUSR
MACLIB COMP KIKCOSYS
MACLIB COMP KIKGCSYS
MACLIB COMP KIKGCUSR
MACLIB COMP KIKSAMPL
MACLIB COMP KIKTABLE
MACLIB COMP OSVSAM38
* ****
L * MACLIB N (ALL
MACLIB MAP  KIKCOBCP (TERM
MACLIB MAP  KIKGCCCP (TERM
MACLIB MAP  KIKCOUSR (TERM
MACLIB MAP  KIKCOSYS (TERM
MACLIB MAP  KIKGCUSR (TERM
MACLIB MAP  KIKGCSYS (TERM
MACLIB MAP  KIKTABLE (TERM
MACLIB MAP  KIKSAMPL (TERM
*ACLIB MAP  OSVSAM38 (TERM
* ****
L * TXTLIB N (ALL
TXTLIB MAP  KIKULOD  (TERM
TXTLIB MAP  KIKSLOD  (TERM
TXTLIB MAP  KIKURPL  (TERM
TXTLIB MAP  KIKSRPL  (TERM
TXTLIB MAP  KIKSAMPL (TERM
/*
$$
