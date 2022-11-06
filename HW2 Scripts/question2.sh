#! /bin/bash

# Get input in Fahrenheit and converts it to Celcius

INPUT=$1

# check if there's an input

if [ $# -lt 1 ];
then    
    echo "Error: there's no input. (one number is required)"
    exit 1
fi

re='^[0-9]+([.][0-9]+)?$'
if ! [[ $INPUT =~ $re ]] ; then
   echo "error: Not a number" >&2; exit 1
fi

RESULT=$(echo "${INPUT} - 32" | bc)
RESULT=$(echo "${RESULT} * 5/9" | bc)


echo "$INPUT F equals $RESULT C"
