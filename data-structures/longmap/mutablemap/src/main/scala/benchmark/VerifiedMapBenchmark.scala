package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.collection.mutable.LongMap
import scala.collection.mutable.HashMap
import scala.util.Random
import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.MutableLongMapOpti
import ch.epfl.chassot.ListLongMap
import stainless.collection.{List => StainlessList}
import scala.collection.immutable
import ch.epfl.chassot.MutableLongMapOpti.LongMapOpti
import benchmark.BenchmarkUtil.getHashMapEmptyBuffer

@State(Scope.Benchmark)
class ArrayFillBenchmark {
  import EfficientFill.*
  import MutableLongMap.ValueCell
  import MutableLongMap.EmptyCell
  import MutableLongMap.ValueCellFull
  @Param(
    Array(
      "0","2", "4", "8", "16", "32", "64", "128", "256", "512", "1024", "2048", "4096", "8192", "16384", "32768", "65536", "131072", "262144", "524288", "1048576", "2097152", "4194304", "8388608", "16777216", "33554432"
    )
  )
  var size: String = _

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def fillLong_ArrayFill(): Unit = {
    val a = Array.fill(size.toInt)(0L)
    val x = a(0) + 1L
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def fillLong_EfficientFill(): Unit = {
    val a = fillByValueLong(size.toInt)(0L)
    val x = a(0) + 1L
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def fillValueCell_ArrayFill(): Unit = {
    val a = Array.fill(size.toInt)(EmptyCell[Long]())
    val x = a(0).get(0L) + 1L
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def fillValueCell_EfficientFill(): Unit = {
    val a = fillByValueLong(size.toInt)(EmptyCell[Long]())
    val x = a(0).get(0L) + 1L
  }
}

@State(Scope.Benchmark)
class LongListMapBenchmark {
  import BenchmarkUtilListMap.*
  import BenchmarkUtil.*
  // ------------------------------------------------ CREATE + UPDATE + LOOKUPS --------------------------------------------------------------------
  @Param(Array("1", "2", "3", "4", "5", "6", "7", "8", "9"))
  var n: String = _

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_Verified(): Unit = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    val pairs = getSmallKeyValuePairsList(n)
    for (k, v) <- pairs do mutableMap.update(k, v)
    end for

    for (k, _) <- pairs do mutableMap(k)
    end for
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_Original(): Unit = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    val pairs = getSmallKeyValuePairsList(n)
    for (k, v) <- pairs do mutableMap.update(k, v)
    end for

    for (k, _) <- pairs do mutableMap(k)
    end for
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_ListMap(): Unit = {
    var listMap = emptyListMap
    val pairs = getSmallKeyValuePairsList(n)
    for (k, v) <- pairs do listMap = listMap + (k, v)
    end for

    for (k, _) <- pairs do listMap(k)
    end for
  }

  // ------------------------------------------------ LOOKUPS --------------------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookup_Verified(): Unit = {
    val mutableMap = getVerifiedMapFilledWith2toNValues(n)
    for (k, _) <- getSmallKeyValuePairsList(n) do mutableMap(k)
    end for
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookup_Original(): Unit = {
    val mutableMap = getOriginalMapFilledWith2toNValues(n)
    for (k, _) <- getSmallKeyValuePairsList(n) do mutableMap(k)
    end for
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookup_ListMap(): Unit = {
    val listMap = getListMapFilledWith2toNValues(n)
    for (k, _) <- getSmallKeyValuePairsList(n) do listMap(k)
    end for
  }

}

// trait BenchMap[M, T]{
//     def empty(buffer_size: Int): M
//     def apply(k: Long): T
//     def update(k: Long, v: T): Boolean
//     def remove(k: Long): Boolean
// }

// implicit val MutableLongMapWrapper: BenchMap[MutableLongMap.LongMap[Long], Long] = new BenchMap[MutableLongMap.LongMap[Long], Long] {
//     def empty(buffer_size: Int): MutableLongMap.LongMap[Long] = MutableLongMap.getEmptyLongMap[Long](k => 0L, buffer_size)
//     def apply(m: MutableLongMap.LongMap[Long], k: Long): Long = m(k)
//     def update(m: MutableLongMap.LongMap[Long], k: Long, v: Long): Boolean = m.update(k, v)
//     def remove(m: MutableLongMap.LongMap[Long], k: Long): Boolean = m.remove(k)
// }

@State(Scope.Benchmark)
class MutableLongMapBenchmark {
  import BenchmarkUtil.*
  @Param(
    Array(
      "0",
      "1024",
      "2048",
      "3072",
      "4096",
      "5120",
      "6144",
      "7168",
      "8192",
      "9216",
      "10240",
      "11264",
      "12288",
      "13312",
      "14336",
      "15360",
      "16384",
      "17408",
      "18432",
      "19456",
      "20480",
      "21504",
      "22528",
      "23552",
      "24576",
      "25600",
      "26624",
      "27648",
      "28672",
      "29696",
      "30720",
      "31744",
      "32768",
      "33792",
      "34816",
      "35840",
      "36864",
      "37888",
      "38912",
      "39936",
      "40960",
      "41984",
      "43008",
      "44032",
      "45056",
      "46080",
      "47104",
      "48128",
      "49152",
      "50176",
      "51200",
      "52224",
      "53248",
      "54272",
      "55296",
      "56320",
      "57344",
      "58368",
      "59392",
      "60416",
      "61440",
      "62464",
      "63488",
      "64512",
      "65536"
    )
  )
  var nKeys: String = _

  // ------------------------------------------------ RETRIEVE N KEYS FROM 2^^15 MAP ---------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = verifiedMapFilledWith2to15Values
    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_Original(): Unit = {
    val m: LongMap[Long] = originalMapFilledWith2to15Values
    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_Opti(): Unit = {
    val m: MutableLongMapOpti.LongMapOpti[Long] = verifiedOptiMapFilledWith2to15Values
    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_HashMap(): Unit = {
    val m: HashMap[Long, Long] = hashMapFilledWith2to15Values
    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS IN MAPS WITH 16 INITIAL BUFFER ----------------------------------------------------------
  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_16Buffer_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_16Buffer_Original(): Unit = {
    val m: LongMap[Long] = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_16Buffer_Opti(): Unit = {
    val m: LongMapOpti[Long] = getVerifiedOptiMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_16Buffer_HashMap(): Unit = {
    val m: HashMap[Long, Long] = getHashMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS IN MAPS WITH 2^^17 INITIAL BUFFER ----------------------------------------------------------
  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_2to17Buffer_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_2to17Buffer_Original(): Unit = {
    val m: LongMap[Long] = getOriginalMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_2to17Buffer_Opti(): Unit = {
    val m: MutableLongMapOpti.LongMapOpti[Long] = getVerifiedOptiMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_2to17Buffer_HashMap(): Unit = {
    val m: HashMap[Long, Long] = getHashMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  // ------------------------------------------------ UPDATE 2^^15 KEYS THEN REMOVE 2^^14 + 8192 THEN UPDATE AGAIN THEN LOOKUPS ----------------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i1 = 0
    val n1 = 24576
    while (i1 < n1) do
      m.remove(randomArrayOfKeysSize2to16(i1))
      i1 += 1
    end while

    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_Original(): Unit = {
    val m: LongMap[Long] = getOriginalMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i1 = 0
    val n1 = 24576
    while (i1 < n1) do
      m.remove(randomArrayOfKeysSize2to16(i1))
      i1 += 1
    end while

    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_Opti(): Unit = {
    val m: MutableLongMapOpti.LongMapOpti[Long] = getVerifiedOptiMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i1 = 0
    val n1 = 24576
    while (i1 < n1) do
      m.remove(randomArrayOfKeysSize2to16(i1))
      i1 += 1
    end while

    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5

  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_HashMap(): Unit = {
    val m: HashMap[Long, Long] = getHashMapEmptyBuffer(Math.pow(2, 17).toInt)
    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i1 = 0
    val n1 = 24576
    while (i1 < n1) do
      m.remove(randomArrayOfKeysSize2to16(i1))
      i1 += 1
    end while

    for (k, v) <- random2to15Pairs do m.update(k, v)
    end for

    var i = 0
    val n = nKeys.toInt
    var acc: Long = 1
    while (i < n) do
      acc *= m(randomArrayOfKeysSize2to16(i))
      i += 1
    end while
    val temp = acc * 5

  }

}

@State(Scope.Benchmark)
class MutableLongMapBenchmarkBig {
  import BenchmarkUtilBig.*

  @Param(
    Array(
      "0",
      "131072",
      "262144",
      "393216",
      "524288",
      "655360",
      "786432",
      "917504",
      "1048576",
      "1179648",
      "1310720",
      "1441792",
      "1572864",
      "1703936",
      "1835008",
      "1966080",
      "2097152",
      "2228224",
      "2359296",
      "2490368",
      "2621440",
      "2752512",
      "2883584",
      "3014656",
      "3145728",
      "3276800",
      "3407872",
      "3538944",
      "3670016",
      "3801088",
      "3932160",
      "4063232",
      "4194304",
      "4325376",
      "4456448",
      "4587520",
      "4718592",
      "4849664",
      "4980736",
      "5111808",
      "5242880",
      "5373952",
      "5505024",
      "5636096",
      "5767168",
      "5898240",
      "6029312",
      "6160384",
      "6291456",
      "6422528",
      "6553600",
      "6684672",
      "6815744",
      "6946816",
      "7077888",
      "7208960",
      "7340032",
      "7471104",
      "7602176",
      "7733248",
      "7864320",
      "7995392",
      "8126464",
      "8257536",
      "8388608"
    )
  )
  var nKeys: String = _

  // ------------------------------------------------ RETRIEVE N KEYS FROM 2^^22 MAP ---------------------------------------------------

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def lookupN_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = verifiedMapFilledWith2to22Values
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
  def lookupN_Original(): Unit = {
    val m: LongMap[Long] = originalMapFilledWith2to22Values
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
  def lookupN_Opti(): Unit = {
    val m: MutableLongMapOpti.LongMapOpti[Long] = verifiedOptiMapFilledWith2to22Values
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
  def lookupN_HashMap(): Unit = {
    val m: HashMap[Long, Long] = hashMapFilledWith2to22Values
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
  def createUpdateLookup_16Buffer_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
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
  def createUpdateLookup_16Buffer_Original(): Unit = {
    val m: LongMap[Long] = getOriginalMapEmptyBuffer(16)
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
  def createUpdateLookup_16Buffer_Opti(): Unit = {
    val m: LongMapOpti[Long] = getVerifiedOptiMapEmptyBuffer(16)
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
  def createUpdateLookup_16Buffer_HashMap(): Unit = {
    val m: HashMap[Long, Long] = getHashMapEmptyBuffer(16)
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

  // ------------------------------------------------ UPDATE 2^^22 KEYS THEN LOOKUPS IN MAPS WITH 2^^23 INITIAL BUFFER ----------------------------------------------------------
  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateLookup_2to17Buffer_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(Math.pow(2, 23).toInt)
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
  def createUpdateLookup_2to17Buffer_Original(): Unit = {
    val m: LongMap[Long] = getOriginalMapEmptyBuffer(Math.pow(2, 23).toInt)
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
  def createUpdateLookup_2to17Buffer_Opti(): Unit = {
    val m: MutableLongMapOpti.LongMapOpti[Long] = getVerifiedOptiMapEmptyBuffer(Math.pow(2, 23).toInt)
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
  def createUpdateLookup_2to17Buffer_HashMap(): Unit = {
    val m: HashMap[Long, Long] = getHashMapEmptyBuffer(Math.pow(2, 23).toInt)
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
  def createUpdateRemoveUpdateLookup_16Buffer_Verified(): Unit = {
    val m: MutableLongMap.LongMap[Long] = getVerifiedMapEmptyBuffer(16)
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

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_Original(): Unit = {
    val m: LongMap[Long] = getOriginalMapEmptyBuffer(16)
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

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_Opti(): Unit = {
    val m: MutableLongMapOpti.LongMapOpti[Long] = getVerifiedOptiMapEmptyBuffer(16)
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

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def createUpdateRemoveUpdateLookup_16Buffer_HashMap(): Unit = {
    val m: HashMap[Long, Long] = getHashMapEmptyBuffer(16)
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

object BenchmarkUtil {
  val seed = 0x0ddba11
  Random.setSeed(seed)

  val long2to15 = Math.pow(2, 15).toLong

  val random2to15Pairs = Random.shuffle((0L until long2to15).map(i => (i.toLong, Random.nextLong())).toList)

  val randomArrayOfKeysSize2to16: Array[Long] = Random.shuffle((0L until long2to15) ++ (0L until long2to15)).toArray

  def getVerifiedMapEmptyBuffer(n: Int) = MutableLongMap.getEmptyLongMap[Long](k => 0L, n)
  def getOriginalMapEmptyBuffer(n: Int) = new LongMap[Long](k => 0L, n)
  def getVerifiedOptiMapEmptyBuffer(n: Int) = MutableLongMapOpti.getEmptyLongMap[Long](k => 0L, n)
  def getHashMapEmptyBuffer(n: Int): HashMap[Long, Long] = HashMap.newBuilder(n).result()

  val verifiedMapFilledWith2to15Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do mutableMap.update(k, v)
    end for
    mutableMap
  }

  val verifiedOptiMapFilledWith2to15Values = {
    val mutableMap = getVerifiedOptiMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do mutableMap.update(k, v)
    end for
    mutableMap
  }

  val originalMapFilledWith2to15Values = {
    val map = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do map.update(k, v)
    end for
    map
  }

  val hashMapFilledWith2to15Values = {
    val map: HashMap[Long, Long] = getHashMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs do map.update(k, v)
    end for
    map
  }
}

object BenchmarkUtilBig {
  val seed = 0x0ddba11
  Random.setSeed(seed)

  val long2to22 = Math.pow(2, 22).toLong
  val long2to23 = Math.pow(2, 23).toLong

  val random2to22Pairs = Random.shuffle((0L until long2to22).map(i => (i.toLong, Random.nextLong())).toList)

  val randomArrayOfKeysSize2to23: Array[Long] = Random.shuffle((0L until long2to22) ++ (0L until long2to22)).toArray

  def getVerifiedMapEmptyBuffer(n: Int) = MutableLongMap.getEmptyLongMap[Long](k => 0L, n)
  def getOriginalMapEmptyBuffer(n: Int) = new LongMap[Long](k => 0L, n)
  def getVerifiedOptiMapEmptyBuffer(n: Int) = MutableLongMapOpti.getEmptyLongMap[Long](k => 0L, n)

  val verifiedMapFilledWith2to22Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do mutableMap.update(k, v)
    end for
    mutableMap
  }

  val verifiedOptiMapFilledWith2to22Values = {
    val mutableMap = getVerifiedOptiMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do mutableMap.update(k, v)
    end for
    mutableMap
  }

  val originalMapFilledWith2to22Values = {
    val map = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do map.update(k, v)
    end for
    map
  }

  val hashMapFilledWith2to22Values = {
    val map: HashMap[Long, Long] = getHashMapEmptyBuffer(16)
    for (k, v) <- random2to22Pairs do map.update(k, v)
    end for
    map
  }
}

object BenchmarkUtilListMap {
  import BenchmarkUtil.*

  val smallRandomKeyValuePairsList: Map[String, Array[(Long, Long)]] =
    (1 to 9)
      .map(Math.pow(2, _).toInt)
      .map(n => random2to15Pairs.take(n))
      .zip((1 to 9).map(_.toString()))
      .map(t => (t._2, t._1))
      .map((t: (String, List[(Long, Long)])) => (t._1, Random.shuffle(t._2)))
      .toMap[String, List[(Long, Long)]]
      .map(t => (t._1, t._2.toArray))

  def getSmallKeyValuePairsList(n: String): Array[(Long, Long)] = smallRandomKeyValuePairsList.getOrElse(n, Array.fill(1)((0L, 0L)))

  val emptyListMap = ListLongMap[Long](StainlessList[(Long, Long)]())

  // To benchmark the ListMap
  val verifiedMapFilledWith2to1Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(1) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to1Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(1) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to1Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(1) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to2Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(2) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to2Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(2) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to2Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(2) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to3Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 3).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to3Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 3).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to3Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 3).toInt) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to4Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 4).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to4Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 4).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to4Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 4).toInt) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to5Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 5).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to5Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 5).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to5Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 5).toInt) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to6Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 6).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to6Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 6).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to6Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 6).toInt) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to7Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 7).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to7Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 7).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to7Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 7).toInt) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to8Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 8).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to8Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 8).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to8Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 8).toInt) do listMap = listMap + (k, v)
    end for
    listMap
  }

  val verifiedMapFilledWith2to9Values = {
    val mutableMap = getVerifiedMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 9).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val originalMapFilledWith2to9Values = {
    val mutableMap = getOriginalMapEmptyBuffer(16)
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 9).toInt) do mutableMap.update(k, v)
    end for
    mutableMap
  }
  val listMapFilledWith2to9Values = {
    var listMap = emptyListMap
    for (k, v) <- random2to15Pairs.take(Math.pow(2, 9).toInt) do listMap = listMap + (k, v)
    end for
    listMap
  }

  def getVerifiedMapFilledWith2toNValues(n: String) = n match {
    case "1" => verifiedMapFilledWith2to1Values
    case "2" => verifiedMapFilledWith2to2Values
    case "3" => verifiedMapFilledWith2to3Values
    case "4" => verifiedMapFilledWith2to4Values
    case "5" => verifiedMapFilledWith2to5Values
    case "6" => verifiedMapFilledWith2to6Values
    case "7" => verifiedMapFilledWith2to7Values
    case "8" => verifiedMapFilledWith2to8Values
    case "9" => verifiedMapFilledWith2to9Values
    case _   => throw new Exception("Invalid n")
  }

  def getOriginalMapFilledWith2toNValues(n: String) = n match {
    case "1" => originalMapFilledWith2to1Values
    case "2" => originalMapFilledWith2to2Values
    case "3" => originalMapFilledWith2to3Values
    case "4" => originalMapFilledWith2to4Values
    case "5" => originalMapFilledWith2to5Values
    case "6" => originalMapFilledWith2to6Values
    case "7" => originalMapFilledWith2to7Values
    case "8" => originalMapFilledWith2to8Values
    case "9" => originalMapFilledWith2to9Values
    case _   => throw new Exception("Invalid n")
  }

  def getListMapFilledWith2toNValues(n: String) = n match {
    case "1" => listMapFilledWith2to1Values
    case "2" => listMapFilledWith2to2Values
    case "3" => listMapFilledWith2to3Values
    case "4" => listMapFilledWith2to4Values
    case "5" => listMapFilledWith2to5Values
    case "6" => listMapFilledWith2to6Values
    case "7" => listMapFilledWith2to7Values
    case "8" => listMapFilledWith2to8Values
    case "9" => listMapFilledWith2to9Values
    case _   => throw new Exception("Invalid n")
  }
}
