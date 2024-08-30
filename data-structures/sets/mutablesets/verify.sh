stainless-dotty\
 ./src/scala/ch/epfl/set/MutableSetsInterface.scala\
 ./src/scala/ch/epfl/set/MutableHashSet.scala\
 ./src/scala/ch/epfl/map/MutableMapsInterface.scala\
 ./src/scala/ch/epfl/map/MutableHashMap.scala\
 ./src/scala/ch/epfl/map/MutableLongMap.scala\
 ./src/scala/ch/epfl/map/ListMap.scala\
 ./src/scala/ch/epfl/map/ListLongMap.scala\
  --config-file=stainless.conf -Dparallel=6 --functions=MutableSet._,MutableMapInterface._ $1
