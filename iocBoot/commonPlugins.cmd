# Create a netCDF file saving plugin.
NDFileNetCDFConfigure("FileNetCDF1", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=netCDF1:,PORT=FileNetCDF1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDFile.template",      "P=$(PREFIX),R=netCDF1:,PORT=FileNetCDF1,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDFileNetCDF.template","P=$(PREFIX),R=netCDF1:,PORT=FileNetCDF1,ADDR=0,TIMEOUT=1")

# Create a TIFF file saving plugin
NDFileTIFFConfigure("FileTIFF1", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=TIFF1:,PORT=FileTIFF1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDFile.template",      "P=$(PREFIX),R=TIFF1:,PORT=FileTIFF1,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDFileTIFF.template",  "P=$(PREFIX),R=TIFF1:,PORT=FileTIFF1,ADDR=0,TIMEOUT=1")

# Create a JPEG file saving plugin
NDFileJPEGConfigure("FileJPEG1", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=JPEG1:,PORT=FileJPEG1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDFile.template",      "P=$(PREFIX),R=JPEG1:,PORT=FileJPEG1,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDFileJPEG.template",  "P=$(PREFIX),R=JPEG1:,PORT=FileJPEG1,ADDR=0,TIMEOUT=1")

# Create a NeXus file saving plugin
#NDFileNexusConfigure("FileNexus1", $(QSIZE), 0, "$(PORT)", 0)
#dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Nexus1:,PORT=FileNexus1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
#dbLoadRecords("$(EPICS_BASE)/db/NDFile.template",      "P=$(PREFIX),R=Nexus1:,PORT=FileNexus1,ADDR=0,TIMEOUT=1")
#dbLoadRecords("$(EPICS_BASE)/db/NDFileNexus.template", "P=$(PREFIX),R=Nexus1:,PORT=FileNexus1,ADDR=0,TIMEOUT=1")

# Create an HDF5 file saving plugin
NDFileHDF5Configure("FileHDF1", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=HDF1:,PORT=FileHDF1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDFile.template",      "P=$(PREFIX),R=HDF1:,PORT=FileHDF1,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDFileHDF5.template",  "P=$(PREFIX),R=HDF1:,PORT=FileHDF1,ADDR=0,TIMEOUT=1")

# Create a Magick file saving plugin
NDFileMagickConfigure("FileMagick1", $(QSIZE), 0, "$(PORT)", 0)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Magick1:,PORT=FileMagick1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDFile.template",      "P=$(PREFIX),R=Magick1:,PORT=FileMagick1,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDFileMagick.template","P=$(PREFIX),R=Magick1:,PORT=FileMagick1,ADDR=0,TIMEOUT=1")

# Create 4 ROI plugins
NDROIConfigure("ROI1", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=ROI1:,  PORT=ROI1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDROI.template",       "P=$(PREFIX),R=ROI1:,  PORT=ROI1,ADDR=0,TIMEOUT=1")
NDROIConfigure("ROI2", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=ROI2:,  PORT=ROI2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDROI.template",       "P=$(PREFIX),R=ROI2:,  PORT=ROI2,ADDR=0,TIMEOUT=1")
NDROIConfigure("ROI3", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=ROI3:,  PORT=ROI3,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDROI.template",       "P=$(PREFIX),R=ROI3:,  PORT=ROI3,ADDR=0,TIMEOUT=1")
NDROIConfigure("ROI4", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=ROI4:,  PORT=ROI4,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDROI.template",       "P=$(PREFIX),R=ROI4:,  PORT=ROI4,ADDR=0,TIMEOUT=1")

# Create a processing plugin
NDProcessConfigure("PROC1", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Proc1:,  PORT=PROC1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDProcess.template",   "P=$(PREFIX),R=Proc1:,  PORT=PROC1,ADDR=0,TIMEOUT=1")

# Create 5 statistics plugins
NDStatsConfigure("STATS1", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Stats1:,  PORT=STATS1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=ROI1,NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDStats.template",     "P=$(PREFIX),R=Stats1:,  PORT=STATS1,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE)")
NDStatsConfigure("STATS2", $(QSIZE), 0, "ROI1", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Stats2:,  PORT=STATS2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=ROI2,NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDStats.template",     "P=$(PREFIX),R=Stats2:,  PORT=STATS2,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE)")
NDStatsConfigure("STATS3", $(QSIZE), 0, "ROI2", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Stats3:,  PORT=STATS3,ADDR=0,TIMEOUT=1,NDARRAY_PORT=ROI3,NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDStats.template",     "P=$(PREFIX),R=Stats3:,  PORT=STATS3,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE)")
NDStatsConfigure("STATS4", $(QSIZE), 0, "ROI3", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Stats4:,  PORT=STATS4,ADDR=0,TIMEOUT=1,NDARRAY_PORT=ROI4,NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDStats.template",     "P=$(PREFIX),R=Stats4:,  PORT=STATS4,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE)")
NDStatsConfigure("STATS5", $(QSIZE), 0, "ROI4", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Stats5:,  PORT=STATS5,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDStats.template",     "P=$(PREFIX),R=Stats5:,  PORT=STATS5,ADDR=0,TIMEOUT=1,HIST_SIZE=256,XSIZE=$(XSIZE),YSIZE=$(YSIZE)")

# Create "fastSweep" drivers for the MCA record to do on-the-fly scanning of Stats data
initFastSweep("SweepTotal1", "STATS1", 1, $(NCHANS), "TOTAL_ARRAY", "CALLBACK_PERIOD")
initFastSweep("SweepNet1",   "STATS1", 1, $(NCHANS), "NET_ARRAY",   "CALLBACK_PERIOD")
initFastSweep("SweepTotal2", "STATS2", 1, $(NCHANS), "TOTAL_ARRAY", "CALLBACK_PERIOD")
initFastSweep("SweepNet2",   "STATS2", 1, $(NCHANS), "NET_ARRAY",   "CALLBACK_PERIOD")
initFastSweep("SweepTotal3", "STATS3", 1, $(NCHANS), "TOTAL_ARRAY", "CALLBACK_PERIOD")
initFastSweep("SweepNet3",   "STATS3", 1, $(NCHANS), "NET_ARRAY",   "CALLBACK_PERIOD")
initFastSweep("SweepTotal4", "STATS4", 1, $(NCHANS), "TOTAL_ARRAY", "CALLBACK_PERIOD")
initFastSweep("SweepNet4",   "STATS4", 1, $(NCHANS), "NET_ARRAY",   "CALLBACK_PERIOD")
initFastSweep("SweepTotal5", "STATS5", 1, $(NCHANS), "TOTAL_ARRAY", "CALLBACK_PERIOD")
initFastSweep("SweepNet5",   "STATS5", 1, $(NCHANS), "NET_ARRAY",   "CALLBACK_PERIOD")

# Load MCA records for the fast sweep drivers
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats1:TotalArray,DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepTotal1 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats2:TotalArray,DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepTotal2 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats3:TotalArray,DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepTotal3 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats4:TotalArray,DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepTotal4 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats5:TotalArray,DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepTotal5 0)")
#
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats1:NetArray,  DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepNet1 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats2:NetArray,  DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepNet2 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats3:NetArray,  DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepNet3 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats4:NetArray,  DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepNet4 0)")
#dbLoadRecords("$(EPICS_BASE)/db/mca.db", "P=$(PREFIX),M=Stats5:NetArray,  DTYP=asynMCA,NCHAN=$(NCHANS),INP=@asyn(SweepNet5 0)")

# Create a transform plugin
NDTransformConfigure("TRANS1", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Trans1:,  PORT=TRANS1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDTransform.template", "P=$(PREFIX),R=Trans1:,  PORT=TRANS1,ADDR=0,TIMEOUT=1")

# Create an overlay plugin with 8 overlays
NDOverlayConfigure("OVER1", $(QSIZE), 0, "$(PORT)", 0, 8, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template","P=$(PREFIX),R=Over1:, PORT=OVER1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlay.template",   "P=$(PREFIX),R=Over1:, PORT=OVER1,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:1:,NAME=ROI1,   SHAPE=1,O=Over1:,XPOS=$(PREFIX)ROI1:MinX_RBV,YPOS=$(PREFIX)ROI1:MinY_RBV,XSIZE=$(PREFIX)ROI1:SizeX_RBV,YSIZE=$(PREFIX)ROI1:SizeY_RBV,PORT=OVER1,ADDR=0,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:2:,NAME=ROI2,   SHAPE=1,O=Over1:,XPOS=$(PREFIX)ROI2:MinX_RBV,YPOS=$(PREFIX)ROI2:MinY_RBV,XSIZE=$(PREFIX)ROI2:SizeX_RBV,YSIZE=$(PREFIX)ROI2:SizeY_RBV,PORT=OVER1,ADDR=1,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:3:,NAME=ROI3,   SHAPE=1,O=Over1:,XPOS=$(PREFIX)ROI3:MinX_RBV,YPOS=$(PREFIX)ROI3:MinY_RBV,XSIZE=$(PREFIX)ROI3:SizeX_RBV,YSIZE=$(PREFIX)ROI3:SizeY_RBV,PORT=OVER1,ADDR=2,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:4:,NAME=ROI4,   SHAPE=1,O=Over1:,XPOS=$(PREFIX)ROI4:MinX_RBV,YPOS=$(PREFIX)ROI4:MinY_RBV,XSIZE=$(PREFIX)ROI4:SizeX_RBV,YSIZE=$(PREFIX)ROI4:SizeY_RBV,PORT=OVER1,ADDR=3,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:5:,NAME=Cursor1,SHAPE=1,O=Over1:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER1,ADDR=4,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:6:,NAME=Cursor2,SHAPE=1,O=Over1:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER1,ADDR=5,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:7:,NAME=Box1,   SHAPE=1,O=Over1:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER1,ADDR=6,TIMEOUT=1")
dbLoadRecords("$(EPICS_BASE)/db/NDOverlayN.template","P=$(PREFIX),R=Over1:8:,NAME=Box2,   SHAPE=1,O=Over1:,XPOS=junk,                  YPOS=junk,                  XSIZE=junk,                   YSIZE=junk,                   PORT=OVER1,ADDR=7,TIMEOUT=1")

# Create 2 color conversion plugins
NDColorConvertConfigure("CC1", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template",   "P=$(PREFIX),R=CC1:,  PORT=CC1,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDColorConvert.template", "P=$(PREFIX),R=CC1:,  PORT=CC1,ADDR=0,TIMEOUT=1")
NDColorConvertConfigure("CC2", $(QSIZE), 0, "$(PORT)", 0, -1, -1)
dbLoadRecords("$(EPICS_BASE)/db/NDPluginBase.template",   "P=$(PREFIX),R=CC2:,  PORT=CC2,ADDR=0,TIMEOUT=1,NDARRAY_PORT=$(PORT),NDARRAY_ADDR=0")
dbLoadRecords("$(EPICS_BASE)/db/NDColorConvert.template", "P=$(PREFIX),R=CC2:,  PORT=CC2,ADDR=0,TIMEOUT=1")

# Load scan records
dbLoadRecords("$(EPICS_BASE)/db/scan.db", "P=$(PREFIX),MAXPTS1=2000,MAXPTS2=200,MAXPTS3=20,MAXPTS4=10,MAXPTSH=10")

dbLoadRecords("db/iocAdminSoft.db", "IOC=$(IOC=$(PREFIX))")

set_requestfile_path("${TOP}")
set_requestfile_path("$(TOP)/iocBoot/iocSimDetector")
set_requestfile_path("$(EPICS_BASE)/as/req")
set_savefile_path("$(TOP)/iocBoot/iocSimDetector/autosave")
set_pass0_restoreFile("auto_settings.sav")
set_pass1_restoreFile("auto_settings.sav")
save_restoreSet_status_prefix("$(PREFIX)")
dbLoadRecords("$(EPICS_BASE)/db/save_restoreStatus.db", "P=$(PREFIX)")
