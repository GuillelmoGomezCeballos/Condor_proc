./check_all_processing.sh 029 > bbb;./check_all_processing.sh 025 >> bbb;./check_all_processing.sh 031 >> bbb;awk '($1!=$2){print$0}' bbb;rm -f bbb;
