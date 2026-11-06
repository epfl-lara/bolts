# Usage: ./verify.sh [--parallel N] [stainless option]
# N is the number of VCs checked at a time.
PARALLEL=8
if [ "$1" = "--parallel" ]; then
  PARALLEL="$2"
  shift 2
fi

stainless-dotty\
  IntArray.scala\
  ByteArray.scala\
  --config-file=stainless.conf -Dparallel="$PARALLEL" $1
