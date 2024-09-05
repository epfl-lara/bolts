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
  echo `date`
  echo "------------------------------------------------------------------------------------------"
  # Check if there is a verify.sh file in the project folder
  # If yes, then echo a message saying we run it and its content, then run it, other run the command X
  if [ -f "$project/verify.sh" ]; then
    echo "Running verify.sh script in bolts project: $project..."
    cd "$project"
    echo "$ cat ./verify.sh"
    cat "./verify.sh"
    echo ""
    bash "./verify.sh --compact"
    status=$?
    cd -
  else
    echo "Running '$STAINLESS --config-file=$conf $@' on bolts project: $project..."
    echo "$ find $project -name '*.scala' -exec $STAINLESS --config-file=$conf $@ {} +"
    find "$project" -name '*.scala' -exec $STAINLESS "--config-file=$conf" "--compact" "$@" {} +
  fi

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
