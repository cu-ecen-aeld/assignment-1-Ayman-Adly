#!/bin/bash

if [ $# -eq 2 ]
then
  writefile=$1
  writestr=$2
  if [ ! -e $writefile ]
  then
    mkdir -p "$(dirname ${writefile})"
  fi
  echo $writestr > $writefile
  if [ -e $writefile ]
  then
    exit 0
  else
    echo "File couldn't be created"
    exit 1
  fi
else
  echo "Missing Arguments"
  exit 1
fi

