#!/bin/bash

FIRST=$1 SECOND=$2
# check number of inputs
if  [ $# -lt 2 ];
then
	echo "Input error: no enough arguments. (2 required)"
        exit 1
fi
re='^[0-9]+([.][0-9]+)?$'
if ! [[ $FIRST =~ $re ]] ; then
   echo "error: first argument is not a number" >&2; exit 1
fi

re='^[0-9]+([.][0-9]+)?$'
if ! [[ $SECOND =~ $re ]] ; then
   echo "error: second argument is not a number" >&2; exit 1
fi


SUM=$(echo "$FIRST + $SECOND" | bc)

if [ 1 -eq "$(echo "${SUM} < 100" | bc)" ]
then
        echo "sum is less than 100"
elif [ 1 -eq "$(echo "${SUM} > 100" | bc)" ]
then
        echo "sum greater than 100"
else

        echo "sum equals 100"
fi