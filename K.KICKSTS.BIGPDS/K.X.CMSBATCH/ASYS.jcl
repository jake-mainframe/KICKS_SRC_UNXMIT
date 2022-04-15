//ASYS      JOB  CLASS=C,MSGCLASS=Z
//*
//H2FB PROC H=H,MEM=MEM
// EXEC PGM=FB2VB
//STEPLIB DD DSN=K.S.V1R5M0.SKIKLOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSTERM  DD SYSOUT=*
//SYSIN    DD DUMMY,DCB=BLKSIZE=80
//SYSUT1   DD DSN=K.X.&H(&MEM),DISP=SHR
//SYSUT2   DD DSN=K.TEMPPDS(&MEM),DISP=SHR
// PEND
//*
//*ERO EXEC PGM=IEFBR14
//*YSUT2 DD DSN=K.TEMPPDS,DISP=(OLD,DELETE)
//ONE EXEC PGM=IEFBR14
//SYSUT2 DD DSN=K.TEMPPDS,DISP=(NEW,CATLG),UNIT=SYSDA,
// SPACE=(3120,(100,100,100)),DCB=(RECFM=FB,LRECL=80,BLKSIZE=3120)
//*
//A  EXEC H2FB,MEM=BMSFLD
//B  EXEC H2FB,MEM=BMSMAP
//C  EXEC H2FB,MEM=BMSMS
//D  EXEC H2FB,MEM=DCTENT
//E  EXEC H2FB,MEM=DCTHDR
//F  EXEC H2FB,MEM=FCTENT
//G  EXEC H2FB,MEM=FCTHDR
//H  EXEC H2FB,MEM=KEDFCOMM
//I  EXEC H2FB,MEM=KEDFXEQ
//J  EXEC H2FB,MEM=KICKS
//K  EXEC H2FB,MEM=KICKSAID
//K2 EXEC H2FB,MEM=KIKAID
//K3 EXEC H2FB,MEM=KIKBMSCA
//L  EXEC H2FB,MEM=KIKCSA
//M  EXEC H2FB,MEM=KIKEIB
//N  EXEC H2FB,MEM=KIKLOAD
//O  EXEC H2FB,MEM=KIKMACS
//P  EXEC H2FB,MEM=KIKMG01
//Q  EXEC H2FB,MEM=KIKPP01
//R  EXEC H2FB,MEM=KIKTCA
//S  EXEC H2FB,MEM=KIKTCTTE
//T  EXEC H2FB,MEM=KIKTRAC
//U  EXEC H2FB,MEM=KIKVCON5
//V  EXEC H2FB,MEM=PCTENT
//W  EXEC H2FB,MEM=PCTHDR
//X  EXEC H2FB,MEM=PPTENT
//Y  EXEC H2FB,MEM=PPTHDR
//Z  EXEC H2FB,MEM=SVC99,H=TH
//Z2 EXEC H2FB,MEM=IEFJFCB,H=TH
//Z3 EXEC H2FB,MEM=EXTID,H=CH
//Z4 EXEC H2FB,MEM=IFGACB,H=TH
//Z5 EXEC H2FB,MEM=IFGRPL,H=TH
//Z6 EXEC H2FB,MEM=IFGEXLST,H=TH
//Z7 EXEC H2FB,MEM=IKQRPL,H=CH
//Z8 EXEC H2FB,MEM=IKJRB,H=TH
//Z9 EXEC H2FB,MEM=IHASDWA,H=TH
//Z0 EXEC H2FB,MEM=IHAPIE,H=TH
//*
//TWO   EXEC PGM=IEBGENER
//SYSPRINT DD SYSOUT=*
//SYSIN DD DUMMY,DCB=BLKSIZE=80
//SYSUT2 DD UNIT=10D,DISP=OLD,DCB=BLKSIZE=80
//SYSUT1 DD DATA,DLM=$$,DCB=BLKSIZE=3120
ID CMSBATCH
/JOB CMSUSER 123456 ASYS
$$
// DD DSN=K.X.CMSBATCH(MAPN),DISP=SHR
// DD DATA,DLM=$$
MAPN
KBLOCK ASYS
*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KICKS H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KICKS)
// DD DATA,DLM=$$
/*
* kicks.h pulls in kikvcon5.h, kikload.h, kiktrac.h,
*                  kikeib.h,   kiktca.h,  kiktctte.h,
*                  kikcsa.h,   kikmacs.h
*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKVCON5 H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKVCON5)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKLOAD H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKLOAD)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKTRAC H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKTRAC)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKEIB H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKEIB)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKTCA H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKTCA)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKTCTTE H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKTCTTE)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKCSA H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKCSA)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKMACS H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKMACS)
// DD DATA,DLM=$$
/*
*
* next get the table header/entry copy's
*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK BMSFLD H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(BMSFLD)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK BMSMAP H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(BMSMAP)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK BMSMS H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(BMSMS)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK DCTENT H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(DCTENT)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK DCTHDR H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(DCTHDR)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK FCTENT H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(FCTENT)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK FCTHDR H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(FCTHDR)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK PCTENT H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(PCTENT)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK PCTHDR H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(PCTHDR)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK PPTENT H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(PPTENT)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK PPTHDR H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(PPTHDR)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KEDFCOMM H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KEDFCOMM)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KEDFXEQ H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KEDFXEQ)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKMG01 H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKMG01)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKPP01 H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKPP01)
// DD DATA,DLM=$$
/*
*
* next get misc copy's - svc99, aid, ...
*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK SVC99 H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(SVC99)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KICKSAID H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KICKSAID)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKAID H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKAID)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK KIKBMSCA H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(KIKBMSCA)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IEFJFCB H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IEFJFCB)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK EXTID H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(EXTID)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IFGACB H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IFGACB)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IFGRPL H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IFGRPL)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IFGEXLST H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IFGEXLST)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IKQRPL H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IKQRPL)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IKJRB H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IKJRB)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IHASDWA H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IHASDWA)
// DD DATA,DLM=$$
/*
FILEDEF  INMOVE  TERM ( RECFM F BLOCK 80 LRECL 80
FILEDEF  OUTMOVE DISK IHAPIE H A ( RECFM F BLOCK 80 LRECL 80
MOVEFILE
$$
// DD DISP=(SHR),DSN=K.TEMPPDS(IHAPIE)
// DD DATA,DLM=$$
/*
VMARC PACK * H A ASYSH VMARC N (REPLACE
/*
$$
//THREE EXEC PGM=IEFBR14
//SYSUT2 DD DSN=K.TEMPPDS,DISP=(OLD,DELETE)
//
