//KIKACP  JOB  CLASS=C,MSGCLASS=A,MSGLEVEL=(1,1),REGION=7000K
//*
//JOBPROC DD   DSN=K.S.V1R5M0.PROCLIB,DISP=SHR
//*
//KIKACP   EXEC KGCC,NAME=KIKACP
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.ROOT.C(KIKACP)
// DD DISP=SHR,DSN=K.X.ROOT.CPART(KIKACPTR)
// DD DISP=SHR,DSN=K.X.ROOT.CPART(RDJFCB)
//
