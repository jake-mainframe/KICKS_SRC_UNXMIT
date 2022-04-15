//KIKCOBPP JOB  CLASS=C,MSGCLASS=A,MSGLEVEL=(1,1),REGION=7000K
//*
//JOBPROC DD   DSN=K.S.V1R5M0.PROCLIB,DISP=SHR
//*
//* Fairly arbitrary breakup of the API components
//* necessary to enable use of GCC370, the 24 bit
//* version of the GCC compiler...
//*
//MAKLOAD EXEC PGM=IEFBR14
//LOAD DD DSN=&&LOAD,UNIT=SYSALLDA,DISP=(NEW,PASS),
// DCB=(RECFM=U,BLKSIZE=6000),SPACE=(CYL,(5,5,20))
//*
//KIK02CO1 EXEC KGCC,NAME=KIK02CO1,LLIB='&&LOAD'
//COPY.SYSUT1 DD *,DCB=BLKSIZE=3120
#define PPCOB
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "kikpp01.h"
char *MYstrstr(char *big, char *little);
/*
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(NOCODE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ABEND)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ADDRESS)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ALLOCATE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ASKTIME)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ASSIGN)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(BIF)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(BUILD)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(CANCEL)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(CHANGE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(CONNECT)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(CONVERSE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(DELAY)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(DELETE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(DELETEQ)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(DEQ)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(DUMP)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ENDBR)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ENQ)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ENTER)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(EXTRACT)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(FORMATTI)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(FREE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(FREEMAIN)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(GETMAIN)
//KIK02CO2 EXEC KGCC,NAME=KIK02CO2,LLIB='&&LOAD'
//COPY.SYSUT1 DD *,DCB=BLKSIZE=3120
#define PPCOB
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "kikpp01.h"
char *MYstrstr(char *big, char *little);
/*
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(HANDLE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(IGNORE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(LINK)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(LOAD)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(POP)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(POST)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(PURGE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(PUSH)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(READNEXT)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(READPREV)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(READQ)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(READ)
//KIK02CO3 EXEC KGCC,NAME=KIK02CO3,LLIB='&&LOAD'
//COPY.SYSUT1 DD *,DCB=BLKSIZE=3120
#define PPCOB
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "kikpp01.h"
char *MYstrstr(char *big, char *little);
/*
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(RECEIVE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(RELEASE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(RESETBR)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(RETRIEVE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(RETURN)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(REWRITE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(ROUTE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SEND)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SIGNOFF)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SIGNON)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(START)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(STARTBR)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SUSPEND)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SYNCPOIN)
//KIK02CO4 EXEC KGCC,NAME=KIK02CO4,LLIB='&&LOAD'
//COPY.SYSUT1 DD *,DCB=BLKSIZE=3120
#define PPCOB
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include "kikpp01.h"
char *MYstrstr(char *big, char *little);
/*
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(UNLOCK)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(WAIT)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(WRITE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(WRITEQ)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(XCTL)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SPOOLCLO)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SPOOLOPE)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SPOOLREA)
// DD DISP=SHR,DSN=K.X.COBPP.PARTS(SPOOLWRI)
//KIK03COB EXEC KGCC,NAME=KIK03COB,LLIB='&&LOAD'
//COPY.SYSUT1 DD *,DCB=BLKSIZE=3120
#define PPCOB
/*
// DD DISP=SHR,DSN=K.X.COBPP(KIK03COB)
//KIKPPCOB EXEC KGCC,NAME=KIKPPCOB,LOPTS='XREF,MAP'
//COPY.SYSUT1 DD *,DCB=BLKSIZE=3120
#define PPCOB
/*
// DD DISP=SHR,DSN=K.X.COBPP(KIKPPCOB)
//LKED.SYSLIN DD DSN=&&OBJSET,DISP=(OLD,DELETE)
// DD *
 INCLUDE LLIB(KIK02CO1)
 INCLUDE LLIB(KIK02CO2)
 INCLUDE LLIB(KIK02CO3)
 INCLUDE LLIB(KIK02CO4)
 INCLUDE LLIB(KIK03COB)
 ENTRY @@CRT0
/*
//LKED.LLIB   DD DSN=&&LOAD,DISP=(OLD,DELETE)
//
