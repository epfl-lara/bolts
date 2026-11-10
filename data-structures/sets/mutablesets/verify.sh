# Usage: ./verify.sh [--parallel N] [stainless option]
# N is the number of VCs checked at a time.
PARALLEL=6
if [ "$1" = "--parallel" ]; then
  PARALLEL="$2"
  shift 2
fi

stainless-dotty\
 ./src/main/scala/ch/epfl/set/MutableSetsInterface.scala\
 ./src/main/scala/ch/epfl/set/MutableHashSet.scala\
 ./src/main/scala/ch/epfl/map/MutableMapsInterface.scala\
 ./src/main/scala/ch/epfl/map/MutableHashMap.scala\
 ./src/main/scala/ch/epfl/map/MutableLongMap.scala\
 ./src/main/scala/ch/epfl/map/ListMap.scala\
 ./src/main/scala/ch/epfl/map/ListLongMap.scala\
  --config-file=stainless.conf -Dparallel="$PARALLEL" --functions=MutableSet._,MutableMapInterface._ $1
