prevStepName="step1-1"

# Assume powhegVBFWZ.input has settings for step 1.1
cp powhegVBFWZ.input powheg.input
. prepare.sh $stepName 

condor_submit "condor_submit_nosharedfs_${stepName}" -queue 200
