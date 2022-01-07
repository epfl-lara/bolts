#!/usr/bin/env bash

FRONTEND="stainless-scalac"
if [[ "$#" = 1 ]]; then
  FRONTEND="$1"
fi
STAINLESS="$FRONTEND --config-file=stainless.conf.nightly"

function run_tests {
  project=$1
  shift

  echo ""
  echo "------------------------------------------------------------------------------------------"
  echo "Running '$STAINLESS $option' on bolts project: $project..."
  echo "$ find $project -name '*.scala' -exec $STAINLESS $option {} +"
  find "$project" -name '*.scala' -exec $STAINLESS "$@" {} +

  status=$?

  if [ $status -ne 0 ]
  then
    echo "'$STAINLESS $option' failed on bolts project: $project."
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
          expression-compiler \
          data-structures/amortized-queue1 \
          data-structures/amortized-queue2 \
          data-structures/concrope \
          data-structures/redblack \
          fp-principles/example \
          fp-principles/functional-sets \
          fp-principles/object-oriented-sets \
          fp-principles/huffman-coding \
          fp-principles/recursion \
          Fulcrum \
          LeftPad \
          laws/simple-transform \
          memory \
          reachabilityChecker \
          software-foundations"

for project in $TC_TESTS; do
  run_tests "$project"
done

# add here
#    data-structures/maps/longmap
# and others that have special conf; redo so we always use the conf file in the directory?
run_tests "sorted-array" "--solvers=no-inc:smt-z3:z3 tactic.default_tactic=smt sat.euf=true"

# The `--type-checker` option does not support `forall` so files containing `forall` are done in STD_TESTS:

STD_TESTS="gcd extended-gcd"

for project in $STD_TESTS; do
  run_tests "$project" "--type-checker=false" "--infer-measures=false"
done
