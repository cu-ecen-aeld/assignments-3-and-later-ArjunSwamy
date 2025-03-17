#!/bin/bash
if [ ! $# -eq 2 ] 
then
    echo "Two parameters must be provided"
    exit 1

fi

mkdir -p $(dirname $1) && touch $1

if [ ! -e "$1" ]
then
    echo "File could not be created"
    exit 1
fi

echo "$2" > "$1"