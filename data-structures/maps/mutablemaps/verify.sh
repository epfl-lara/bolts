# Usage: ./verify.sh [--parallel N] [stainless option]
# N is the number of VCs checked at a time.
PARALLEL=6
if [ "$1" = "--parallel" ]; then
  PARALLEL="$2"
  shift 2
fi

stainless-dotty\
 ./src/main/scala/com/mutablemaps/map/ListMap.scala\
 ./src/main/scala/com/mutablemaps/map/ListLongMap.scala\
 ./src/main/scala/com/mutablemaps/map/MutableLongMap.scala\
 ./src/main/scala/com/mutablemaps/map/MutableHashMap.scala\
 ./src/main/scala/com/mutablemaps/map/MutableMapsInterface.scala\
  --config-file=stainless.conf -Dparallel="$PARALLEL" $1
