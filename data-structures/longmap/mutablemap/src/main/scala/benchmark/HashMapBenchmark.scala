package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.collection.mutable.LongMap
import scala.collection.mutable.HashMap
import scala.util.Random
import ch.epfl.chassot.MutableLongMap
import stainless.collection.{List => StainlessList}
import scala.collection.immutable
import ch.epfl.chassot.EfficientFill
import ch.epfl.chassot.MutableHashMap
import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.Hashable
import ch.epfl.chassot.ListMap
import ch.epfl.chassot.Ordering


@State(Scope.Benchmark)
class MutableHashMapBenchmarkBig {
  import HashMapBenchmarkUtilBig.*

  @Param(
    Array(
      "0",
      "131072",
      // "262144",
      "393216",
      // "524288",
      "655360",
      // "786432",
      "917504",
      // "1048576",
      "1179648",
      // "1310720",
      "1441792",
      // "1572864",
      "1703936",
      // "1835008",
      "1966080",
      // "2097152",
      "2228224",
      // "2359296",
      "2490368",
      // "2621440",
      "2752512",
      // "2883584",
      "3014656",
      // "3145728",
      "3276800",
      // "3407872",
      "3538944",
      // "3670016",
      "3801088",
      // "3932160",
      "4063232",
      // "4194304",
      "4325376",
      // "4456448",
      "4587520",
      // "4718592",
      "4849664",
      // "4980736",
      "5111808",
      // "5242880",
      "5373952",
      // "5505024",
      "5636096",
      // "5767168",
      "5898240",
      // "6029312",
      "6160384",
      // "6291456",
      "6422528",
      // "6553600",
      "6684672",
      // "6815744",
      "6946816",
      // "7077888",
      "7208960",
      // "7340032",
      "7471104",
      // "7602176",
      "7733248",
      // "7864320",
      "7995392",
      // "8126464",
      "8257536",
      "8388608"
    )
  )
  var nKeys: String = _

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

  // ------------------------------------------------ UPDATE 2^^22 KEYS THEN LOOKUPS IN MAPS WITH 2^^23 INITIAL BUFFER ----------------------------------------------------------
  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_2to17Buffer_VerifiedMutableLongMap(): Unit = {
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
  def createUpdateLookup_2to17Buffer_OriginalHashMap(): Unit = {
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
  def createUpdateLookup_2to17Buffer_VerifiedHashMap(): Unit = {
    val m: MutableHashMap.HashMap[Key, Long] = getVerifiedHashMapEmptyBuffer(16)
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

  // ------------------------------------------------ UPDATE 2^^22 KEYS THEN REMOVE 2097152 (=2^^21) THEN UPDATE AGAIN THEN LOOKUPS, BUFFER 16 ----------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_VerifiedMutableLongMap(): Unit = {
    val m:MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to22PairsLong do m.update(k, v)
    end for

    var i1 = 0
    val n1 = 24576
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
    val n1 = 24576
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
    val n1 = 24576
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

object KeyOrdering extends Ordering[Key]:
  override def compare(x: Key, y: Key): Int = 
    val lComp = x.l.compareTo(y.l)
    if lComp != 0 then lComp else x.s.compareTo(y.s)
end KeyOrdering

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
  def getVerifiedHashMapEmptyBuffer(n: Int) = MutableHashMap.getEmptyHashMap[Key, Long](k => 0L, hashF = HashKey, ordering = KeyOrdering)
  def getHashMapEmptyBuffer(n: Int): HashMap[Key, Long] = HashMap.newBuilder(n).result()

  val verifiedLongMapFilledWith2to22Values = {
    val mutableMap: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to22PairsLong do mutableMap.update(k, v)
    end for
    mutableMap
  }

  val verifiedHashMapFilledWith2to22Values = {
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