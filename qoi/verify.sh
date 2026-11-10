#!/bin/bash

# kill subprocesses on exit or kill
trap '[ -n "$(jobs -pr)" ] && kill -9 $(jobs -pr)' SIGINT SIGTERM EXIT

# Usage: ./verify.sh [--parallel N] [stainless option]
# N is the number of VCs checked at a time.
PARALLEL=4
if [ "$1" = "--parallel" ]; then
  PARALLEL="$2"
  shift 2
fi

stainless-dotty verified/common.scala verified/encoder.scala verified/decoder.scala -J-Xms10G -J-Xss20M --config-file=stainless.conf -Dparallel="$PARALLEL" "$@" $1
