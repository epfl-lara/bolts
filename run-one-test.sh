#!/usr/bin/env bash

STAINLESS="stainless"

function run_tests {
  project=$1
  shift

  echo ""
  echo "------------------------------------------------------------------------------------------"
  echo "Running '$STAINLESS $@' on bolts project: $project..."
  echo "$ find $project -name '*.scala' -exec $STAINLESS $@ {} +"
  find "$project" -name '*.scala' -exec $STAINLESS "$@" {} +

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

# Tests that use the usual --type-checker=true verification condition generator:

run_tests "$1" "--config-file=stainless.conf.nightly"
