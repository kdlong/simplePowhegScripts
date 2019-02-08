prevStepFolder="step1-1"
stepName="step1-2"

sed -i 's/xgriditeration 1/xgriditeration 2/' powhegVBFWZ.input > powheg.input
cp ${prevStepName}/*.dat .
. prepare.sh ${stepName/step/}
rm *.dat

condor_submit "condor_submit_nosharedfs_${stepName}" -queue 200
