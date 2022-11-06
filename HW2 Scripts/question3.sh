#! /bin/bash

MYDIR=$1

# check for an input
if [ $# -lt 1 ];
then
echo "Did not receive an input"
echo "showing the largest 10 files in the home directory and it's sub-directories"
MYDIR="/home"
fi

# find the largest 10 files/directories
find $MYDIR -type f -iname "*.mp4" -printf '%s %p\n'| sort -nr | head -10

