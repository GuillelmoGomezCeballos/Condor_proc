ls -l test/*all*root|awk '{printf("root -q -b -l events_ntuple.C\\(\\\"%s\\\",0\\)\n",$9)}'
