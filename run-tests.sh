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

TC_TESTS=`cat tctests.txt`
echo **************************
echo Type Checking vcgen tests:
echo $TC_TESTS
for project in $TC_TESTS; do
  run_tests "$project"
done

run_tests "data-structures/sorted-array" "--solvers=no-inc:smt-z3:z3 tactic.default_tactic=smt sat.euf=true"
run_tests "data-structures/maps/longmap" "--solvers=smt-cvc4,smt-z3,no-inc:smt-z3:z3 tactic.default_tactic=smt sat.euf=true"

# The `--type-checker` option does not support `forall` so files containing `forall` are done in STD_TESTS:

# for now empty as those needing quantifiers were slow anyway, see WIP-slow
#STD_TESTS=""
#for project in $STD_TESTS; do
#  run_tests "$project" "--type-checker=false" "--infer-measures=false"
#done
