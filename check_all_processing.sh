#!/bin/sh

export TAG=$1;

echo "******************"
echo "TAG: $TAG"
echo "******************"

for fileset in `grep $TAG submitter_all.csh|awk '{print$5}'`
  do
export theAWKName=$fileset;
ls -l               test*/afs/cern.ch/user/c/ceballos/scratch0/catalog/cern/filefi/$TAG/$fileset/*out|wc|awk '{printf("%3d ",$1)}';
grep ysis::Terminat test*/afs/cern.ch/user/c/ceballos/scratch0/catalog/cern/filefi/$TAG/$fileset/*out|wc|awk '{printf("%3d ",$1)}';
#grep  RunLumiSelectionMod_hDEvents test*/afs/cern.ch/user/c/ceballos/scratch0/catalog/cern/filefi/$TAG/$fileset/*out|wc|awk '{printf("%3d ",$1)}';
wc ~/scratch0/catalog/cern/filefi/$TAG/$fileset/Filesets|awk '{printf("%3d %s\n",$1,ENVIRON["theAWKName"])}';
done
