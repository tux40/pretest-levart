#!/bin/bash

# variables
word1='There Were'	
word2='HTTP 500 errors in '
word3='in the last 10 minutes.'
LOGFILE="00-access.log"
LOGFILE1="01-access.log"
LOGFILE2="02-access.log"
LOGFILE3="03-access.log"

#function
inthelast_ten(){
awk -v "since=$(date -d'10 minutes ago' +%s)" '$1 > since' |
cut -f2-
}

filter_500(){
awk '($9 ~ /500/)'
}

count_number(){
awk 'END { print NR }'
}

#actions
get_error_500(){

echo "$word1" | tr "\n" " "; cat $LOGFILE | inthelast_ten | filter_500 | count_number | tr "\n" " " ; echo "$word2" | tr "\n" " "; echo "./$LOGFILE"| tr "\n" " "; echo "$word3" 
}
get_error_500_1(){

echo "$word1" | tr "\n" " "; cat $LOGFILE1 | inthelast_ten | filter_500 | count_number | tr "\n" " " ; echo "$word2" | tr "\n" " "; echo "./$LOGFILE1"| tr "\n" " "; echo "$word3" 
}

get_error_500_2(){

echo "$word1" | tr "\n" " "; cat $LOGFILE2 | inthelast_ten | filter_500 | count_number | tr "\n" " " ; echo "$word2" | tr "\n" " "; echo "./$LOGFILE2"| tr "\n" " "; echo "$word3" 
}
get_error_500_3(){

echo "$word1" | tr "\n" " "; cat $LOGFILE3 | inthelast_ten | filter_500 | count_number | tr "\n" " " ; echo "$word2" | tr "\n" " "; echo "./$LOGFILE3"| tr "\n" " "; echo "$word3" 
}
#executing
get_error_500
get_error_500_1
get_error_500_2
get_error_500_3

