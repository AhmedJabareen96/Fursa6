#! /bin/bash

# Get input in Fahrenheit and converts it to Celcius

INPUT=$1

# check if there's an input

if [ $# -lt 1 ];
then    
    echo "Error: there's no input. (one integer is required)"
    exit 1
fi

RESULT=$(echo "${INPUT} - 32" | bc)
RESULT=$(echo "${RESULT} * 5/9" | bc)


echo "$INPUT F equals $RESULT C"
