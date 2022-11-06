#!/bin/bash

FIRST=$1 SECOND=$2
# check number of inputs
if  [ $# -lt 2 ];
then
	echo "Input error: no enough arguments. (2 required)"
        exit 1
fi

re='^[0-9]+$'
if ! [[ $FIRST =~ $re ]] ; then
   echo "error: First input is not a number" >&2; exit 1
fi

re='^[0-9]+$'
if ! [[ $SECOND =~ $re ]] ; then
   echo "error: Second input is not a number" >&2; exit 1
fi

SUM=$(($FIRST+$SECOND))


if [ $SUM -lt 100 ]
then
        echo "sum is less than 100"
elif [ $SUM -eq 100 ]
then
        echo "sum equals 100"
else

        echo "sum is greater than 100"
fi

