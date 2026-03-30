#!/usr/bin/env bash

SBT_TEMP=$ROOT_DIR/sbt-temp
# if TEMP_DIR is not set, set it to the default
JAVA_OPTS_TMP_DIR=${JAVA_OPTS_TMP_DIR:-$ROOT_DIR/temporary}
mkdir -p $JAVA_OPTS_TMP_DIR

STAINLESS="stainless-dotty"
ADMIT_VCS=false
# First check whether the flag --admit-vcs is present
if [[ "$1" = "--admit-vcs" ]]; then
  ADMIT_VCS=true
  shift # Remove the flag from the arguments
fi
# Add a --lite flag to run only a subset of the tests
if [[ "$1" = "--lite" ]]; then
  LITE=true
  shift # Remove the flag from the arguments
fi
if [[ "$#" = 1 ]]; then
  STAINLESS="$1"
fi

if [ "$LITE" = true ]; then
  echo "Running in lite mode, only a subset of the tests will be run."
  TC_TESTS=`cat tctests_lite.txt`
else
  TC_TESTS=`cat tctests.txt`
fi
echo "**************************"
echo "Type Checking vcgen tests:"
echo $TC_TESTS
for project in $TC_TESTS; do
  if [ "$ADMIT_VCS" = true ]; then
    ./run-one-test.sh --admit-vcs  "$STAINLESS" "$project"
  else
    ./run-one-test.sh "$STAINLESS" "$project"
  fi
  status=$?
  if [ $status -ne 0 ]; then
    exit $status
  fi
done

rm -rf $SBT_TEMP
rm -rf $JAVA_OPTS_TMP_DIR
echo "************* Verifying bolts projects was successful! *************"