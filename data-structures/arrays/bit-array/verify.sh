# Usage: ./verify.sh [--parallel N] [stainless option]
# N is the number of VCs checked at a time.
PARALLEL=4
if [ "$1" = "--parallel" ]; then
  PARALLEL="$2"
  shift 2
fi

stainless-dotty\
  BitArray.scala\
  --config-file=stainless.conf -Dparallel="$PARALLEL" $1
