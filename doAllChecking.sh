#!/bin/bash

./check_all_processing.sh 029 > bbb;
./check_all_processing.sh 025 >> bbb;
./check_all_processing.sh 031 >> bbb;
if [ $1 == "1" ]; then
  awk '($1!=$2||$1!=$3){print$0}' bbb;rm -f bbb;
else
  awk '($1!=$2        ){print$0}' bbb;rm -f bbb;
fi
