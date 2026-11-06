# Usage: ./verify.sh [--parallel N] [stainless option]
# N is the number of VCs checked at a time. Without the option, they are checked one at a time.
PARALLEL_OPTION=""
if [ "$1" = "--parallel" ]; then
  PARALLEL_OPTION="-Dparallel=$2"
  shift 2
fi

stainless-dotty BalanceConcArr.scala BalanceConc.scala SimpleConc.scala --config-file=stainless.conf $PARALLEL_OPTION $1