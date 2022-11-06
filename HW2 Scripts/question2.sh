#! /bin/bash

# Get input in Fahrenheit and converts it to Celcius

INPUT=$1

# check if there's an input

if [ $# -lt 1 ];
then    
    echo "Error: there's no input. (one integer is required)"
    exit 1
fi

re='^[0-9]+$'
if ! [[ $INPUT =~ $re ]] ; then
   echo "error: Input is not an integer" >&2; exit 1
fi

RESULT=$(($INPUT-32))
RESULT=$((RESULT*5/9))

echo "$INPUT F equals $RESULT C"
