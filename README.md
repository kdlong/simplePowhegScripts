First, no promises that this works out of the box. But please let me know if something stupid is broken

The idea is just to direct submission to condor of the POWHEG BOX procedure described in, .e.g, [VBF_WZ](https://www.hep.wisc.edu/~kdlong/POWHEG_VBF_WZ/manual-powheg-vbs-wz.pdf)

More details on parallel run mode can be found in the [W/Z+2jet maual](https://twiki.cern.ch/twiki/pub/CMS/PowhegBOXPrecompiled/manual-BOX-WZ2jet.pdf)

You have to run each step individually, wait for it to finish, and then run the next one. You will want to tweak the condor_submit file if running somewhere besides the Wisconsin HEP cluster

You will probably also want to modify the number of jobs for each step etc. In principle running is very easy:

```
bash

bash prepareStep1-1.sh
...
bash prepareStep4.sh
```
