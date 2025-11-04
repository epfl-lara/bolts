package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.collection.mutable.LongMap
import scala.collection.mutable.HashMap
import scala.util.Random
import com.mutablemaps.map.MutableLongMap
import stainless.collection.{List => StainlessList}
import scala.collection.immutable
import com.mutablemaps.map.EfficientFill
import com.mutablemaps.map.MutableHashMap
import com.mutablemaps.map.MutableLongMap
import com.mutablemaps.map.Hashable
import com.mutablemaps.map.ListMap
import com.mutablemaps.map.Ordering


@State(Scope.Benchmark)
class MutableHashMapBenchmarkBig {
  import HashMapBenchmarkUtilBig.*

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
  def lookupN_VerifiedMutableLongMap(): Unit = {
    val m: MutableLongMap.LongMap[Long] = verifiedLongMapFilledWith2to22Values
    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfLongSize2to23(i))
      i += 1
    end while
    val temp = acc * 5

  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_OriginalHashMap(): Unit = {
    val m: HashMap[Key, Long] = hashMapFilledWith2to22Values
    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_VerifiedHashMap(): Unit = {
    val m: MutableHashMap.HashMap[Key, Long] = verifiedHashMapFilledWith2to22Values
    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }

  // ------------------------------------------------ UPDATE 2^^22 KEYS THEN LOOKUPS IN MAPS WITH 16 INITIAL BUFFER ----------------------------------------------------------
  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_16Buffer_VerifiedMutableLongMap(): Unit = {
    val m:MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to22PairsLong do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfLongSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_16Buffer_OriginalHashMap(): Unit = {
    val m:HashMap[Key, Long] = getHashMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do  m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }
  
  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_16Buffer_VerifiedHashMap(): Unit = {
    val m: MutableHashMap.HashMap[Key, Long] = getVerifiedHashMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do  m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }

  // ------------------------------------------------ UPDATE 2^^22 KEYS THEN REMOVE 2097152 (=2^^21) THEN UPDATE AGAIN THEN LOOKUPS, BUFFER 16 ----------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_VerifiedMutableLongMap(): Unit = {
    val m:MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to22PairsLong do m.update(k, v)
    end for

    var i1 = 0
    val n1 = 2097152
    while (i1 < n1) do
      m.remove(randomArrayOfLongSize2to23(i1))
      i1 += 1
    end while

    for (k, v) <- random2to22PairsLong do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfLongSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_OriginalHashMap(): Unit = {
    val m:HashMap[Key, Long] = getHashMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do  m.update(k, v)
    end for

    var i1 = 0
    val n1 = 2097152
    while (i1 < n1) do
      m.remove(randomArrayOfKeysSize2to23(i1))
      i1 += 1
    end while

    for (k, v) <- random2to22Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_VerifiedHashMap(): Unit = {
    val m: MutableHashMap.HashMap[Key, Long] = getVerifiedHashMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do m.update(k, v)
    end for

    var i1 = 0
    val n1 = 2097152
    while (i1 < n1) do
      m.remove(randomArrayOfKeysSize2to23(i1))
      i1 += 1
    end while

    for (k, v) <- random2to22Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to23(i))
      i += 1
    end while
    val temp = acc * 5
  }


}

case class Key(l: Long, s: String)

object HashKey extends Hashable[Key]:
  override def hash(k: Key): Long = k.hashCode().toLong // to be more realistic, as we can have collisions
end HashKey


object HashMapBenchmarkUtilBig {
  val seed = 0x0ddba11
  Random.setSeed(seed)

  val long2to22 = Math.pow(2, 22).toLong
  val long2to23 = Math.pow(2, 23).toLong

  val random2to22PairsLong = Random.shuffle((0L until long2to22).map(i => (i.toLong, Random.nextLong())).toList)
  val random2to22Pairs = Random.shuffle((0L until long2to22).map(i => (Key(i.toLong, i.toLong.toString()), Random.nextLong())).toList)

  val randomArrayOfLongSize2to23: Array[Long] = Random.shuffle((0L until long2to22) ++ (0L until long2to22)).toArray
  val randomArrayOfKeysSize2to23: Array[Key] = Random.shuffle((0L until long2to22) ++ (0L until long2to22)).map(l => Key(l, l.toString())).toArray

  def getVerifiedMapEmptyBuffer(n: Int) = MutableLongMap.getEmptyLongMap[Long](k => 0L, n)
  def getVerifiedHashMapEmptyBuffer(n: Int) = MutableHashMap.getEmptyHashMap[Key, Long](k => 0L, hashF = HashKey)
  def getHashMapEmptyBuffer(n: Int): HashMap[Key, Long] = HashMap.newBuilder(n).result()

  val verifiedLongMapFilledWith2to22Values = {
    val mutableMap: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to22PairsLong do mutableMap.update(k, v)
    end for
    mutableMap
  }

  val verifiedHashMapFilledWith2to22Values: MutableHashMap.HashMap[Key, Long] = {
    val mutableMap: MutableHashMap.HashMap[Key, Long] = getVerifiedHashMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do mutableMap.update(k, v)
    end for
    mutableMap
  }

  val hashMapFilledWith2to22Values = {
    val map: HashMap[Key, Long] = getHashMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do map.update(k, v)
    end for
    map
  }
}
