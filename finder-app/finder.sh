#!/bin/bash

if [ $# -eq 2 ]
then
  filedir=$1
  searchstr=$2
  if [ -d $filedir ]
  then
    X=$( find $filedir -type f | wc -l )
    Y=$( grep -w -c $searchstr $filedir/* | wc -l )
    echo The number of files are ${X} and the number of matching lines are ${Y}
    exit 0
  else
    echo "File Directory Doesn't exist"
    exit 1
  fi
else
  echo "Missing Arguments"
  exit 1
fi
