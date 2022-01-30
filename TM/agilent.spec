# agilent.spec
tmcbase = base.tmc
Module TMbase
IGNORE = TMbase.tbl TMbase.genui freemem.tmc
OBJ = TMbase.tbl TMbase.genui freemem.tmc

Module Agilent
IGNORE = agilent.genui agilent.tmc
OBJ = agilent.genui agilent.tmc

TGTDIR = $(TGTNODE)/home/Agilent
IGNORE = "*.o" "*.exe" "*.stackdump" Makefile

DISTRIB = services interact
IDISTRIB = doit

agilentdisp : agilent.tbl
agilentalgo : agilent.tma
doit : agilent.doit

