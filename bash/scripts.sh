#!/usr/bin/env bash

### Concat String Techniques ###
### Type 1 ###
VAR1="String 1,"
VAR2="String 2"
VAR3="$VAR1$VAR2"
echo "$VAR3"

### Type 2 ###
VAR1="String 1,"
VAR1+="String 2"
echo "$VAR1"

### Type 3 ###
VAR1="String 1,"
VAR2="${VAR1}String 2"
echo "$VAR2"

### Array Looping Techniques ###

### Array Basics ###

array=( A B C D E F G )
echo "${array[0]}"
echo "${array[1]}"
echo "${array[2]}"
echo "${array[3]}"
echo "${array[4]}"
echo "${array[5]}"
echo "${array[6]}"

### Type 1 :: while Looping ###

count=0
while [ $count -le 10 ]
do
    echo "$count"
    count=$(( $count + 1 ))
done

### Type 2 :: for Looping ###

users=( Kate Jake Patt )
for user in "${users[@]}"
do
    echo "$user"
done

for (( n=1; n<=10; n++ ))
do
    echo "$n"
done

### Type 3 :: until Looping ###

count=0
until [ $count -gt 10 ]
do
    echo "$count"
    count=$(( $count + 1 ))
done

### Numerical Operations ###

num1=1
num2=2
num=$((num1 + num2))
echo "$num"

### Passing Aruguements ###

singleValue=$1
echo $singleValue

arrayPassed=( "$@" )
echo "${arrayPassed[@]}"

for user in "${arrayPassed[@]}"
do
    echo "$user"
done

### Solr Testing ###

#service solr start
#service solr status > solr_log
#service solr restart
#service solr -c testCore

### If-Else If-Else ###

count=99
if [ $count -eq 100 ]
then
  echo "Count is 100"
elif [ $count -gt 100 ]
then
  echo "Count is greater than 100"
else
  echo "Count is less than 100"
fi

country="Romania"
case $country in

  Lithuania)
    echo -n "Lithuanian"
    ;;

  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

  *)
    echo -n "unknown"
    ;;
esac


FILE=script.sh
if [ -d "$FILE" ]; then
	if [ -s "$FILE" ]; then
		echo "file is empty"
	else
		echo "file is not empty"
	fi
	
fi

## References ::
# 1. https://devhints.io/bash
