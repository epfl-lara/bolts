#!/usr/bin/env bash

STAINLESS_SCALAC="stainless-scalac --timeout=300 --vc-cache=false --fail-early"

STD_TESTS="algorithms \
           extended-gcd \
           fp-principles/example \
           fp-principles/functional-sets \
           fp-principles/huffman-coding \
           fp-principles/object-oriented-sets \
           fp-principles/recursion \
           Fulcrum \
           gcd \
           LeftPad \
           reachabilityChecker \
           software-foundations"

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

for project in $STD_TESTS; do
  run_tests "" "$project"
done

# The `--type-checker` option does not support `forall` so all files containing `forall` are ignored.

TC_TESTS="fp-principles/example \
          fp-principles/functional-sets \
          fp-principles/huffman-coding \
          fp-principles/recursion \
          Fulcrum \
          LeftPad \
          reachabilityChecker \
          software-foundations"

for project in $TC_TESTS; do
  run_tests "--type-checker" "$project"
done

