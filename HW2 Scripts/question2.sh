#! /bin/bash

# Get input in Fahrenheit and converts it to Celcius

INPUT=$1

# check if there's an input

if [ $# -lt 1 ];
then    
    echo "Error: there's no input. (one parameter is required)"
    exit 1
fi
RESULT=$(($INPUT-32))
RESULT=$((RESULT*5/9))

echo "$INPUT F equals $RESULT C"
