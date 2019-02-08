prevStepName="step2"
stepName="step3"

#sed -i 's/xgriditeration 1/xgriditeration 2/' powheg.input
sed 's/fakevirt *1/fakevirt 0/' powhegVBFWZ.input > powheg.input
sed -i 's/parallelstage *1/parallelstage 3/' powheg.input 
cp ${prevStepName}/*.dat .
. prepare.sh ${stepName/step/}

condor_submit "condor_submit_nosharedfs_${stepName}" -queue 200
