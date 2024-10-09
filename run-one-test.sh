#!/usr/bin/env bash

ADMIT_VCS=false
if [[ "$1" = "--admit-vcs" ]]; then
  ADMIT_VCS=true
  shift # Remove the flag from the arguments
fi
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
  status=-1
  if [ -f "$project/verify.sh" ]; then
    echo "Running verify.sh script in bolts project: $project..."
    cd "$project"
    echo "$ cat ./verify.sh"
    cat "./verify.sh"
    echo ""
    if [ "$ADMIT_VCS" = true ]; then
      bash "./verify.sh" "--compact" "--admit-vcs=true"
    else
      bash "./verify.sh" "--compact"
    fi
    status=$?
    cd -
  else
    echo "Running '$STAINLESS --config-file=$conf $@' on bolts project: $project..."
    echo "$ find $project -name '*.scala' -exec $STAINLESS --config-file=$conf $@ {} +"
    if [ "$ADMIT_VCS" = true ]; then
      find "$project" -name '*.scala' -exec $STAINLESS "--config-file=$conf" "--compact" "--admit-vcs=true" "$@" {} +
    else
      find "$project" -name '*.scala' -exec $STAINLESS "--config-file=$conf" "$@" {} +
    fi
    status=$?
  fi

  if [ $ADMIT_VCS = true ]; then
    if [ $status -eq 0 ] || [ $status -eq 1 ]; then
      echo "Stainless accepted project: $project."
      exit 0
    else
      echo "Stainless rejected project: $project."
      exit 1
    fi
    echo "------------------------------------------------------------------------------------------"
    echo ""
    return $status
  else
    if [ $status -ne 0 ]
    then
      echo "'$STAINLESS $@' failed on bolts project: $project."
      echo "------------------------------------------------------------------------------------------"
      echo ""
      exit 1
    fi
    echo "------------------------------------------------------------------------------------------"
    echo ""
    exit 0
  fi
}

run_tests "${@:2}"
