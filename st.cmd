#!/bin/bash

SIM_DETECTOR_APP=/usr/lib/epics/bin/linux-x86_64/simDetectorApp

export EPICS_CA_MAX_ARRAY_BYTES=10000000
export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_ADDR_LIST=10.23.0.255

cd iocBoot/iocSimDetector && $SIM_DETECTOR_APP ./st.cmd.linux