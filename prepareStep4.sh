prevStepName="step3"
stepName="step4"

sed 's/fakevirt *1/fakevirt 0/' powhegVBFWZ.input > powheg.input
sed -i 's/parallelstage *1/parallelstage 4/' powheg.input 
sed -i 's/numevts *0/numevts 500/' powheg.input 
cp ${prevStepName}/*.dat .
. prepare.sh ${stepName/step/}
rm *.dat

condor_submit "condor_submit_nosharedfs_${stepName}" -queue 500
