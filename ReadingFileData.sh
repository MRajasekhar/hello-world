#!/bin/bash
FILE=$1 # file name can pass as argument, otherwise you can hard code the file name
sed "1d" $FILE # To Remove header line
while read line; 
do
     echo "This is a line : $line"
	 first_word=$(echo $line | awk '{print $1}')
	 second_word=$(echo $line | awk '{print $2}')
	 
	if $second_word -gt 85 ; then
    send an email with $line
	else
	echo $line > logfileName # This is for reference purpose, if don't want then delete this and above line
	fi
	 
done < $FILE



TempFile.txt:

Table_space  Size
X			  80
Y			  90

