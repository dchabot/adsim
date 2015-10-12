#!/bin/bash

SIM_DETECTOR_APP=/epics/src/areadetector-1-9-1/bin/linux-x86_64/simDetectorApp

export EPICS_CA_MAX_ARRAY_BYTES=10000000
#export EPICS_CA_AUTO_ADDR_LIST=NO
#export EPICS_CA_ADDR_LIST=127.0.0.1

cd iocBoot/iocSimDetector && $SIM_DETECTOR_APP ./st.cmd.linux
