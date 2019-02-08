#!/bin/bash

export LHAPDF_DATA_PATH=/cvmfs/cms.cern.ch/slc6_amd64_gcc630/external/lhapdf/6.2.1/share/LHAPDF
tarname=STEP_REPLACE_data.tgz
if [ -e $tarname ]; then
    tar xvzf $tarname
fi
echo $1 | ./pwhg_main
