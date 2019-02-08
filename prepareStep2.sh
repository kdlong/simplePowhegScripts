prevStepName="step1-2"
stepName="step2"

#sed -i 's/xgriditeration 1/xgriditeration 2/' powheg.input
sed 's/fakevirt *1/fakevirt 0/' powhegVBFWZ.input > powheg.input
sed -i 's/parallelstage *1/parallelstage 2/' powheg.input 
. prepare.sh ${stepName/step/}
rm *.dat

condor_submit "condor_submit_nosharedfs_${stepName}" -queue 200
