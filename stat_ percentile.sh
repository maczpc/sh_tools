#!/bin/bash
echo $1
total_count=`cat $1|wc -l`
tp10=$[$total_count/10*9]
tp20=$[$total_count/10*8]
tp50=$[$total_count/2]
tp80=$[$total_count/10*2]
tp85=$[$total_count/20*3]
tp90=$[$total_count/10]
tp95=$[$total_count/20]
tp99=$[$total_count/100]
tp999=$[$total_count/1000]
tp9999=$[$total_count/10000]
echo "total_count:"$total_count
cat $1|sort -n -r| awk -v tp10="$tp10" -v tp20="$tp20" -v tp50="$tp50" -v tp80="$tp80" -v tp85="$tp85" -v tp90="$tp90" -v tp95="$tp95" -v tp99="$tp99" -v tp999="$tp999" -v tp9999="$tp9999" 'BEGIN{count=0;}{ if(count==tp10) {print "tp10:"$0;} else if(count==tp20) {print "tp20:"$0;} else if(count==tp50) {print "tp50:"$0;} else if(count==tp80) {print "tp80:"$0;} else if(count==tp85) {print "tp85:"$0;} else if(count==tp90){print "tp90:"$0;} else if (count==tp95) {print "tp95:"$0;} else if(count==tp99){print "tp99:"$0;} else if(count==tp999){print "tp999:"$0;} else if(count==tp9999){print "tp9999:"$0;};count=count+1;}'
