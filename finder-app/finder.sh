#!/bin/bash
if [ ! $# -eq 2 ] 
then
    echo "Two parameters must be provided"
    exit 1

fi

if [ ! -d $1 ]
then
    echo "First parameter must be a directory"
    exit 1
fi

numFiles=$(grep -l $2 $1 -d recurse | wc --lines)
numLines=$(grep $2 $1 -d recurse | wc --lines)

echo "The number of files are ${numFiles} and the number of matching lines are ${numLines}"
exit 0