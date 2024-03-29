//KEDFXEQ JOB  CLASS=C,MSGCLASS=A,MSGLEVEL=(1,1),REGION=7000K
//*
//JOBPROC DD   DSN=K.S.V1R5M0.PROCLIB,DISP=SHR
//*
//MAKLOAD EXEC PGM=IEFBR14
//LOAD DD DSN=&&LOAD,UNIT=SYSALLDA,DISP=(NEW,PASS),
// DCB=(RECFM=U,BLKSIZE=6000),SPACE=(CYL,(5,5,20))
//*
//DOAPI    EXEC  PROC=KGCC,NAME=DOAPI,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOAPI)
//DOBMS    EXEC  PROC=KGCC,NAME=DOBMS,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOBMS)
//DOBOTTOM EXEC  PROC=KGCC,NAME=DOBOTTOM,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOBOTTOM)
//DOCOMM   EXEC  PROC=KGCC,NAME=DOCOMM,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOCOMM)
//DOCWA    EXEC  PROC=KGCC,NAME=DOCWA,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOCWA)
//DODCP    EXEC  PROC=KGCC,NAME=DODCP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DODCP)
//DODUMP   EXEC  PROC=KGCC,NAME=DODUMP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DODUMP)
//DOEIB    EXEC  PROC=KGCC,NAME=DOEIB,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOEIB)
//DOFCP    EXEC  PROC=KGCC,NAME=DOFCP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOFCP)
//DOFILTER EXEC  PROC=KGCC,NAME=DOFILTER,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOFILTER)
//DOKCP    EXEC  PROC=KGCC,NAME=DOKCP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOKCP)
//DOMAIN   EXEC  PROC=KGCC,NAME=DOMAIN,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOMAIN)
//DOPCP    EXEC  PROC=KGCC,NAME=DOPCP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOPCP)
//DOSCP    EXEC  PROC=KGCC,NAME=DOSCP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOSCP)
//DOTCP    EXEC  PROC=KGCC,NAME=DOTCP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOTCP)
//DOTCTTEU EXEC  PROC=KGCC,NAME=DOTCTTEU,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOTCTTEU)
//DOTIOA   EXEC  PROC=KGCC,NAME=DOTIOA,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOTIOA)
//DOTOP    EXEC  PROC=KGCC,NAME=DOTOP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOTOP)
//DOTRACE  EXEC  PROC=KGCC,NAME=DOTRACE,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOTRACE)
//DOTSP    EXEC  PROC=KGCC,NAME=DOTSP,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOTSP)
//DOTWA    EXEC  PROC=KGCC,NAME=DOTWA,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOTWA)
//DOUSR    EXEC  PROC=KGCC,NAME=DOUSR,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOUSR)
//DOWS     EXEC  PROC=KGCC,NAME=DOWS,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(DOWS)
//GETMAPDS EXEC  PROC=KGCC,NAME=GETMAPDS,LLIB='&&LOAD'
//COPY.SYSUT1 DD DISP=SHR,DSN=K.X.KEDFXEQ.PARTS(GETMAPDS)
//*
//KEDFXEQ  EXEC  PROC=KGCC,NAME=KEDFXEQ,LOPTS='XREF,MAP',
//       LLIB='K.S.V1R5M0.KIKRPL'
//COPY.SYSUT1 DD *,DCB=BLKSIZE=3120
#define KEDFXEQFLAG
#include "kedfxeq.h"
/*
//            DD DISP=SHR,DSN=K.X.ROOT.CPART(KIKACPTR)
//            DD DISP=SHR,DSN=K.X.ROOT.CPART(ENCODE32)
//            DD DISP=SHR,DSN=K.X.KEDFXEQ(KEDFXEQ)
//LKED.SYSLIN DD DSN=&&OBJSET,DISP=(OLD,DELETE)
// DD *
 INCLUDE LLIB(DOAPI)
 INCLUDE LLIB(DOBMS)
 INCLUDE LLIB(DOBOTTOM)
 INCLUDE LLIB(DOCOMM)
 INCLUDE LLIB(DOCWA)
 INCLUDE LLIB(DODCP)
 INCLUDE LLIB(DODUMP)
 INCLUDE LLIB(DOEIB)
 INCLUDE LLIB(DOFCP)
 INCLUDE LLIB(DOFILTER)
 INCLUDE LLIB(DOKCP)
 INCLUDE LLIB(DOMAIN)
 INCLUDE LLIB(DOPCP)
 INCLUDE LLIB(DOSCP)
 INCLUDE LLIB(DOTCP)
 INCLUDE LLIB(DOTCTTEU)
 INCLUDE LLIB(DOTIOA)
 INCLUDE LLIB(DOTOP)
 INCLUDE LLIB(DOTRACE)
 INCLUDE LLIB(DOTSP)
 INCLUDE LLIB(DOTWA)
 INCLUDE LLIB(DOUSR)
 INCLUDE LLIB(DOWS)
 INCLUDE LLIB(GETMAPDS)
 ENTRY KEDFXEQ
/*
//LKED.LLIB   DD DSN=&&LOAD,DISP=(OLD,DELETE)
//
