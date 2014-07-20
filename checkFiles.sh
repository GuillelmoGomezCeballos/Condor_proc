#!/bin/sh

awk '{print"echo ==="$5"===;wc "$3"/"$4"/"$5"/Filesets; ls -l test*/*"$5"_????_noskim.root|wc;"}' submitter_all.csh > temp;
chmod a+x temp;
./temp;
rm -f temp;
