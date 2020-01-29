#!/usr/bin/env bash

STAINLESS_SCALAC="stainless-scalac --config-file=stainless.conf.nightly"

function run_tests {
  option=$1
  project=$2

  echo ""
  echo "------------------------------------------------------------------------------------------"
  echo "Running '$STAINLESS_SCALAC $option' on bolts project: $project..."
  echo "$ find $project -name '*.scala' -exec $STAINLESS_SCALAC $option {} +"
  find "$project" -name '*.scala' -exec $STAINLESS_SCALAC $option {} +

  status=$?

  if [ $status -ne 0 ]
  then
    echo "'$STAINLESS_SCALAC $option' failed on bolts project: $project."
    echo "------------------------------------------------------------------------------------------"
    echo ""
    exit 1
  fi

  echo "------------------------------------------------------------------------------------------"
  echo ""
}

# The `--type-checker` option does not support `forall` so all files containing `forall` are ignored.

TC_TESTS="algorithms
          fp-principles/example \
          fp-principles/functional-sets \
          fp-principles/object-oriented-sets \
          fp-principles/huffman-coding \
          fp-principles/recursion \
          Fulcrum \
          LeftPad \
          reachabilityChecker \
          software-foundations"

for project in $TC_TESTS; do
  run_tests "--type-checker" "$project"
done

STD_TESTS="gcd extended-gcd"

for project in $STD_TESTS; do
  run_tests "--type-checker=false --infer-measures=false" "$project"
done
