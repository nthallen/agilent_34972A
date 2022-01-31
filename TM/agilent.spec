# agilent.spec
tmcbase = base.tmc
cmdbase = agilent.cmd
genuibase = base.genui

Module TMbase
OBJ = TMbase.tbl TMbase.genui freemem.tmc

Module Agilent ConvType=T30K ConvWidth=6 ConvUnits=C
OBJ = agilent.genui agilent.tmc agilent_base.tbl

TGTDIR = $(TGTNODE)/home/agilent
IGNORE = "*.o" "*.exe" "*.stackdump" Makefile

DISTRIB = services interact
IDISTRIB = doit

agilentdisp : agilent.tbl
agilentalgo : agilent.tma
doit : agilent.doit
