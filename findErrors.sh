mkdir -p $HOME/Condor_proc/test/afs
grep FindServerAndPath          $HOME/Condor_proc/test*/afs/* -r |awk '{print$1}';
grep AbortAnalysis              $HOME/Condor_proc/test*/afs/* -r |awk '{print$1}';
grep G__exception               $HOME/Condor_proc/test*/afs/* -r |awk '{print$1}';
grep segmentation               $HOME/Condor_proc/test*/afs/* -r |awk '{print$0}';
grep aborting                   $HOME/Condor_proc/test*/afs/* -r |awk '{print$0}';
grep exceeded                   $HOME/Condor_proc/test*/afs/* -r |awk '{print$0}';
grep "TXNetFile::CreateXClient" $HOME/Condor_proc/test*/afs/* -r |awk '{print$0}';
grep "SysError"                 $HOME/Condor_proc/test*/afs/* -r |awk '{print$0}';
grep "keyboard interrupt"       $HOME/Condor_proc/test*/afs/* -r |awk '{print$0}';
