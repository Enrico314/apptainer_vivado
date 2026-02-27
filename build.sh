#!/bin/bash

# where to build the container. Please, if you know lustre do not use it directly. It will be slow.
apptainer_output_path='/tmp/epierobo/'

mkdir -p ${apptainer_output_path}

#export APPTAINER_NOCLEANUP=1 # for debugging
#export APPTAINER_MESSAGELEVEL=4 # for debuggning
apptainer build \
  --build-arg INSTALL_TARGET_DIR=/opt/xilinx/ \
  --build-arg HOST_TOOL_ARCHIVE_NAME=FPGAs_AdaptiveSoCs_Unified_SDI_2025.2_1114_2157.tar \
  --force \
  --no-cleanup \
  ${apptainer_output_path}/vivado_app.sif \
  vivado.def
