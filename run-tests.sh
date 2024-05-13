#!/usr/bin/env bash

STAINLESS="stainless-dotty"
if [[ "$#" = 1 ]]; then
  STAINLESS="$1"
fi

# Determining the frontend version
OUTPUT=$($STAINLESS --version --no-colors)
VERSION=$(echo "${OUTPUT}" | awk '/^Bundled Scala compiler: /{print $4}')
IS_DOTTY=false
if [[ $VERSION == 3\.* ]]; then
  IS_DOTTY=true
elif [[ $VERSION != 2\.* ]]; then
  echo "Could not recognize Stainless frontend version"
  exit 1
fi

TC_TESTS=`cat tctests.txt`
if [[ "$IS_DOTTY" = true ]]; then
  TC_TESTS=$(cat tctests_dotty.txt)$'\n'$TC_TESTS
fi
echo "**************************"
echo "Type Checking vcgen tests:"
echo $TC_TESTS
for project in $TC_TESTS; do
  ./run-one-test.sh "$STAINLESS" "$project"
done
