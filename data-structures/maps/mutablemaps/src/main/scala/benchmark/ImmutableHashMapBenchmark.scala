package benchmark.maps

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import org.openjdk.jmh.infra.Blackhole
import scala.collection.immutable

/** Same three scenarios as [[MutableHashMapBenchmarkBig]], on the same keys and values, for the immutable `HashMap` of the Scala standard library.
  *
  * It gives the third series of the HashMap comparison (verified `MutableHashMap` vs `scala.collection.mutable.HashMap` vs
  * `scala.collection.immutable.HashMap`). The immutable map has no initial buffer size, hence no `16Buffer` in the names.
  */
@State(Scope.Benchmark)
class ImmutableHashMapBenchmarkBig {
  import HashMapBenchmarkUtilBig.*
  import ImmutableHashMapBenchmarkUtilBig.*

  // Same values as MutableHashMapBenchmarkBig
  @Param(
    Array(
      "131072",
      "393216",
      "655360",
      "917504",
      "1179648",
      "1441792",
      "1703936",
      "1966080",
      "2228224",
      "2490368",
      "2752512",
      "3014656",
      "3276800",
      "3538944",
      "3801088",
      "4063232",
      "4325376",
      "4587520",
      "4849664",
      "5111808",
      "5373952",
      "5636096",
      "5898240",
      "6160384",
      "6422528",
      "6684672",
      "6946816",
      "7208960",
      "7471104",
      "7733248",
      "7995392",
      "8257536",
      "8388608"
    )
  )
  var nKeys: String = scala.compiletime.uninitialized

  // ------------------------------------------------ RETRIEVE N KEYS FROM 2^^22 MAP ---------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_ImmutableHashMap(bh: Blackhole): Unit = {
    val m: immutable.HashMap[Key, Long] = immutableHashMapFilledWith2to22Values
    var i = 0
    val n = nKeys.toInt
    while (i < n) do
      bh.consume(m(randomArrayOfKeysSize2to23(i)))
      i += 1
    end while
  }

  // ------------------------------------------------ UPDATE 2^^22 KEYS THEN LOOKUPS ----------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_ImmutableHashMap(bh: Blackhole): Unit = {
    var m: immutable.HashMap[Key, Long] = immutable.HashMap.empty
    for (k, v) <- random2to22Pairs do m = m.updated(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    while (i < n) do
      bh.consume(m(randomArrayOfKeysSize2to23(i)))
      i += 1
    end while
  }

  // ------------------------------------------------ UPDATE 2^^22 KEYS THEN REMOVE 2097152 (=2^^21) THEN UPDATE AGAIN THEN LOOKUPS ----------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_ImmutableHashMap(bh: Blackhole): Unit = {
    var m: immutable.HashMap[Key, Long] = immutable.HashMap.empty
    for (k, v) <- random2to22Pairs do m = m.updated(k, v)
    end for

    var i1 = 0
    val n1 = 2097152
    while (i1 < n1) do
      m = m.removed(randomArrayOfKeysSize2to23(i1))
      i1 += 1
    end while

    for (k, v) <- random2to22Pairs do m = m.updated(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    while (i < n) do
      bh.consume(m(randomArrayOfKeysSize2to23(i)))
      i += 1
    end while
  }
}

object ImmutableHashMapBenchmarkUtilBig {
  import HashMapBenchmarkUtilBig.random2to22Pairs

  val immutableHashMapFilledWith2to22Values: immutable.HashMap[Key, Long] = {
    var map: immutable.HashMap[Key, Long] = immutable.HashMap.empty
    for (k, v) <- random2to22Pairs do map = map.updated(k, v)
    end for
    map
  }
}
