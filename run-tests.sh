#!/usr/bin/env bash

STAINLESS_SCALAC="stainless-scalac --timeout=300 --vc-cache=false --fail-early"

STD_TESTS="algorithms extended-gcd fp-principles Fulcrum gcd LambdaEvaluator LeftPad reachabilityChecker software-foundations stlc"

function run_tests {
  option=$1
  project=$2
  echo "Running stainless-scalac on bolts project: $project..."
  find "$project" -name '*.scala' -exec $STAINLESS_SCALAC $option {} +
  status=$?

  if [ $status -ne 0 ]
  then
    echo "$STAINLESS_SCALAC failed on bolts project: $project."
    exit 1
  fi
}

for project in $STD_TESTS; do
  run_tests "" "$project"
done

# The `--type-checker` option does not support `forall` so all files containing `forall` are ignored.

TC_TESTS="fp-principles Fulcrum LambdaEvaluator LeftPad reachabilityChecker software-foundations stlc"

for project in $TC_TESTS; do
  run_tests "--type-checker" "$project"
done

