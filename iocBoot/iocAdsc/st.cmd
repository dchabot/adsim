< envPaths
errlogInit(20000)

dbLoadDatabase("$(EPICS_BASE)/dbd/adscApp.dbd")
adscApp_registerRecordDeviceDriver(pdbbase) 

epicsEnvSet("PREFIX", "13ADCS1:")
epicsEnvSet("PORT",   "ADSC1")
epicsEnvSet("QSIZE",  "20")
epicsEnvSet("XSIZE",  "2048")
epicsEnvSet("YSIZE",  "2048")
epicsEnvSet("NCHANS", "2048")

#
# adscConfig(const char *portName, const char *modelName)
#   portName   asyn port name
#   modelName  ADSC detector model name; must be one of "Q4", "Q4r", "Q210",
#              "Q210r", "Q270", "Q315", or "Q315r"
#
adscConfig("$(PORT)","Q210r")
dbLoadRecords("$(EPICS_BASE)/db/ADBase.template","P=$(PREFIX),R=cam1:,PORT=$(PORT),ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/adsc.template",  "P=$(PREFIX),R=cam1:,PORT=$(PORT),ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDFile.template","P=$(PREFIX),R=cam1:,PORT=$(PORT),ADDR=0,TIMEOUT=1")

#asynSetTraceMask("$(PORT)",0,255)

set_requestfile_path("./")
set_requestfile_path("$(TOP)/as/req")
set_savefile_path("./autosave")
set_requestfile_path("$(EPICS_BASE)/as/req")
set_pass0_restoreFile("auto_settings.sav")
set_pass1_restoreFile("auto_settings.sav")
save_restoreSet_status_prefix("$(PREFIX)")
dbLoadRecords("$(EPICS_BASE)/db/save_restoreStatus.db","P=$(PREFIX)")

iocInit()

# save things every thirty seconds
create_monitor_set("auto_settings.req",30,"P=$(PREFIX),R=cam1:")
