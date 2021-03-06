#!/usr/lib/epics/bin/linux-x86-debug/aravisGigEApp

< envPaths
< unique.cmd

epicsEnvSet("EPICS_CA_MAX_ARRAY_BYTES","10000000")
epicsEnvSet("TOP", "${PWD}")

errlogInit(20000)

dbLoadDatabase("$(EPICS_BASE)/dbd/aravisGigEApp.dbd")

aravisGigEApp_registerRecordDeviceDriver(pdbbase) 

epicsEnvSet("PORT",   "CAM")
epicsEnvSet("QSIZE",  "20")
epicsEnvSet("XSIZE",  "1360")
epicsEnvSet("YSIZE",  "1024")
epicsEnvSet("NCHANS", "2048")


# aravisCameraConfig(portName,    # The name of the asyn port to be created
#                    cameraId,    # Camera ID string (run arv-tool from CLI)
#                    maxBuffers,  # Maximum number of NDArray buffers driver can allocate. -1=unlimited
#                    maxMemory,   # Maximum memory bytes driver can allocate. -1=unlimited
#aravisCameraConfig("$(PORT)", "Allied Vision Technologies-02-2165A-06632", 50, -1)
aravisCameraConfig("$(PORT)", "$(UID)", 50, -1)

asynSetTraceIOMask("$(PORT)",0,2)
#asynSetTraceMask("$(PORT)",0,255)

dbLoadRecords("$(EPICS_BASE)/db/ADBase.template",   "P=$(PREFIX),R=cam1:,PORT=$(PORT),ADDR=0,TIMEOUT=1")

dbLoadRecords("$(EPICS_BASE)/db/aravisCamera.template","P=$(PREFIX),R=cam1:,PORT=$(PORT),ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/Prosilica_GC.template","P=$(PREFIX),R=cam1:,PORT=$(PORT),ADDR=0,TIMEOUT=1")


# Create a standard arrays plugin, set it to get data from first Prosilica driver.
NDStdArraysConfigure("Image1", 5, 0, "$(PORT)", 0, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=image1:,PORT=Image1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")

# Use this line if you only want to use the Prosilica in 8-bit mode.  It uses an 8-bit waveform record
# NELEMENTS is set large enough for a 1360x1024x3 image size, which is the number of pixels in RGB images from the GC1380CH color camera. 
# Must be at least as big as the maximum size of your camera images
dbLoadRecords("$(EPICS_BASE)/db/NDStdArrays.template", "P=$(PREFIX),R=image1:,PORT=Image1,ADDR=0,TIMEOUT=1,TYPE=Int8,FTVL=UCHAR,NELEMENTS=4177920")

# Use this line if you want to use the Prosilica in 8,12 or 16-bit modes.  
# It uses an 16-bit waveform record, so it uses twice the memory and bandwidth required for only 8-bit data.
#dbLoadRecords("$(EPICS_BASE)/db/NDStdArrays.template", "P=$(PREFIX),R=image1:,PORT=Image1,ADDR=0,TIMEOUT=1,TYPE=Int16,FTVL=SHORT,NELEMENTS=4177920")

# Load all other plugins using commonPlugins.cmd
< ../commonPlugins.cmd

#asynSetTraceMask("$(PORT)",0,255)

iocInit()

#asynSetTraceMask("$(PORT)",0,1)

# save things every thirty seconds
create_monitor_set("auto_settings.req", 30,"P=$(PREFIX),D=cam1:")
