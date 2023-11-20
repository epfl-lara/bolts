#!/usr/bin/env bash

STAINLESS="stainless"

function run_tests {
  shift

  echo ""
  echo "------------------------------------------------------------------------------------------"
  echo "Running '$STAINLESS $@' on bolts project: $project..."
  echo "$ find $project -name '*.scala' -exec $STAINLESS $@ {} +"
  find . -name '*.scala' -exec $STAINLESS "$@" {} +

  status=$?

  if [ $status -ne 0 ]
  then
    echo "'$STAINLESS $@' failed on bolts project: $project."
    echo "------------------------------------------------------------------------------------------"
    echo ""
    exit 1
  fi

  echo "------------------------------------------------------------------------------------------"
  echo ""
}

cd $1
run_tests 

