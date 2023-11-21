#!/usr/bin/env bash

STAINLESS="$1"

function run_tests {
  project=$1
  # One shift for stainless executable, the other for the project folder
  shift
  shift

  conf="$project/stainless.conf"
  if [ ! -f $conf ]; then
    conf=stainless.conf.nightly
  fi
  echo ""
  echo "------------------------------------------------------------------------------------------"
  echo "Running '$STAINLESS --config-file=$conf $@' on bolts project: $project..."
  echo "$ find $project -name '*.scala' -exec $STAINLESS --config-file=$conf $@ {} +"
  find "$project" -name '*.scala' -exec $STAINLESS "--config-file=$conf" "$@" {} +

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

run_tests "${@:2}"