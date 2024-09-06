stainless-dotty\
 ./src/main/scala/ch/epfl/set/MutableSetsInterface.scala\
 ./src/main/scala/ch/epfl/set/MutableHashSet.scala\
 ./src/main/scala/ch/epfl/map/MutableMapsInterface.scala\
 ./src/main/scala/ch/epfl/map/MutableHashMap.scala\
 ./src/main/scala/ch/epfl/map/MutableLongMap.scala\
 ./src/main/scala/ch/epfl/map/ListMap.scala\
 ./src/main/scala/ch/epfl/map/ListLongMap.scala\
  --config-file=stainless.conf -Dparallel=6 --functions=MutableSet._,MutableMapInterface._ $1
