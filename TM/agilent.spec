# agilent.spec
tmcbase = base.tmc
genuibase = base.genui
Module TMbase
#IGNORE = TMbase.tbl TMbase.genui freemem.tmc
OBJ = TMbase.tbl TMbase.genui freemem.tmc

Module Agilent ConvType=T30K ConvWidth=6 ConvUnits=C
#IGNORE = agilent.genui agilent.tmc agilent_base.tbl
OBJ = agilent.genui agilent.tmc agilent_base.tbl

TGTDIR = $(TGTNODE)/home/agilent
IGNORE = "*.o" "*.exe" "*.stackdump" Makefile

DISTRIB = services interact
IDISTRIB = doit

agilentdisp : agilent.tbl
agilentalgo : agilent.tma
doit : agilent.doit

