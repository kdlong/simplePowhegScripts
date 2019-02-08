stepName=$1
if [ $# -eq 0 ]; then
    tar czf step_data.tgz *.dat powheg.input pwhg_main
else
    stepNum=${stepName/step/} 
    tar czf step${stepNum}_data.tgz *.dat powheg.input pwhg_main
    rm *.dat
    mkdir $stepName
    pushd $stepName
    mv ../${stepName}_data.tgz .
    sed "s/STEP_REPLACE/$stepName/g" ../run_pwhg_condor_nosharedfs.sh > run_pwhg_condor_nosharedfs.sh
    sed "s/STEP_REPLACE/$stepName/g" ../condor_submit_nosharedfs > "condor_submit_nosharedfs_${stepName}"
fi
