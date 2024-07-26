#!/usr/bin/env bash

STAINLESS="stainless-dotty"
if [[ "$#" = 1 ]]; then
  STAINLESS="$1"
fi

TC_TESTS=`cat tctests.txt`
echo "**************************"
echo "Type Checking vcgen tests:"
echo $TC_TESTS
for project in $TC_TESTS; do
  ./run-one-test.sh "$STAINLESS" "$project"
  status=$?
  if [ $status -ne 0 ]; then
    exit $status
  fi
done