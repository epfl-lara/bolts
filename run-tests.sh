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

# Tests that use the usual --type-checker=true verification condition generator:

TC_TESTS="algorithms \
          dispenser \
          add-digits \
          data-structures/amortized-queue \
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

# The `--type-checker` option does not support `forall` so files containing `forall` are done in STD_TESTS:

STD_TESTS="gcd extended-gcd"

for project in $STD_TESTS; do
  run_tests "--type-checker=false --infer-measures=false" "$project"
done
