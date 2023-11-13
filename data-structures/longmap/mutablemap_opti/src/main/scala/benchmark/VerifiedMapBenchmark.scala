package benchmark


import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.collection.mutable.LongMap
import scala.util.Random
import ch.epfl.chassot.MutableLongMap
import ch.epfl.chassot.ListMapLongKey
import stainless.collection.{List => StainlessList}
import scala.collection.immutable


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
        for (k, v) <- pairs do
        mutableMap.update(k, v)
        end for

        for (k, _) <- pairs do
            mutableMap(k)
        end for
    }

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateLookup_Original(): Unit = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        val pairs = getSmallKeyValuePairsList(n)
        for (k, v) <- pairs do
        mutableMap.update(k, v)
        end for

        for (k, _) <- pairs do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateLookup_ListMap(): Unit = {
        var listMap = emptyListMap
        val pairs = getSmallKeyValuePairsList(n)
        for (k, v) <- pairs do
            listMap = listMap  + (k, v)
        end for

        for (k, _) <- pairs do
            listMap(k)
        end for
    }

    // ------------------------------------------------ LOOKUPS --------------------------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def lookup_Verified(): Unit = {
        val mutableMap = getVerifiedMapFilledWith2toNValues(n)
        for (k, _) <- getSmallKeyValuePairsList(n) do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def lookup_Original(): Unit = {
        val mutableMap = getOriginalMapFilledWith2toNValues(n)
        for (k, _) <- getSmallKeyValuePairsList(n) do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def lookup_ListMap(): Unit = {
        val listMap = getListMapFilledWith2toNValues(n)
        for (k, _) <- getSmallKeyValuePairsList(n) do
            listMap(k)
        end for
    }


}

@State(Scope.Benchmark)
class MutableLongMapBenchmark {
    import BenchmarkUtil.*
    // ------------------------------------------------ RETRIEVE ONE KEY --------------------------------------------------------------------
    
    @Param(Array("2048","4096","6144","8192","10240","12288","14336","16384","18432","20480","22528","24576","26624","28672","30720","32768","34816","36864","38912","40960","43008","45056","47104","49152","51200","53248","55296","57344","59392","61440","63488", "65536"))
    var keysListName: String = _

    // ------------------------------------------------ RETRIEVE N KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def lookupN_Verified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- getKeysList(keysListName) do
            m(k)
        end for
    }   

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def lookupN_Original(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- getKeysList(keysListName) do
            m(k)
        end for
    }


    // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS IN MAPS WITH 16 INITIAL BUFFER ----------------------------------------------------------
    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateLookup_16Buffer_Verified(): Unit = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs do
            mutableMap.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            mutableMap(k)
        end for
    }

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateLookup_16Buffer_Original(): Unit = {
        val map = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            map(k)
        end for
    }

    // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS IN MAPS WITH 2^^17 INITIAL BUFFER ----------------------------------------------------------
      @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateLookup_2to17Buffer_Verified(): Unit = {
        val mutableMap = getVerifiedMapEmptyBuffer(Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
            mutableMap.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            mutableMap(k)
        end for
    }

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateLookup_2to17Buffer_Original(): Unit = {
        val map = getOriginalMapEmptyBuffer(Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            map(k)
        end for
    }

    // ------------------------------------------------ UPDATE 2^^15 KEYS THEN REMOVE 2^^14 + 8192 THEN UPDATE AGAIN THEN LOOKUPS ----------------------------------------------------------

      @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateRemoveUpdateLookup_16Buffer_Verified(): Unit = {
        val mutableMap = getVerifiedMapEmptyBuffer(Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
            mutableMap.update(k, v)
        end for

        for k <- getKeysList("24576") do
            mutableMap.remove(k)
        end for

        for (k, v) <- random2to15Pairs do
            mutableMap.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            mutableMap(k)
        end for
    }

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def createUpdateRemoveUpdateLookup_16Buffer_Original(): Unit = {
        val map = getOriginalMapEmptyBuffer(Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for

        for k <- getKeysList("24576") do
            map.remove(k)
        end for

        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            map(k)
        end for
    }
    
}

object BenchmarkUtil {
    val seed = 0x0ddba11
    Random.setSeed(seed)

    val long2to15 = Math.pow(2, 15).toLong
    val long2to20 = Math.pow(2, 20).toLong

    val random2to15Pairs = Random.shuffle((0L until long2to15).map(i => (i.toLong, Random.nextLong())).toList)

    val randomKeysListsUpTo2to16: Map[String, Array[Long]] = 
        (1 to 32).map(_*2048).map(n => (n.toString(), random2to15Pairs.take(n).map(_._1)))
        .map((t: (String, List[Long])) => (t._1, Random.shuffle(t._2))).toMap[String, List[Long]].map(t => (t._1, t._2.toArray))
        
    def getKeysList(n: String): Array[Long] = randomKeysListsUpTo2to16.getOrElse(n, Array.fill(1)(0L))

    def getVerifiedMapEmptyBuffer(n: Int) = MutableLongMap.getEmptyLongMap[Long](k => 0L, n)
    def getOriginalMapEmptyBuffer(n: Int) = new LongMap[Long](k => 0L, n)

    val verifiedMapFilledWith2to15Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs do
            mutableMap.update(k, v)
        end for
        mutableMap
    }

    val originalMapFilledWith2to15Values = {
        val map = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for
        map
    }
}

object BenchmarkUtilListMap {
    import BenchmarkUtil.*

    val smallRandomKeyValuePairsList: Map[String, Array[(Long, Long)]] = 
        (1 to 9).map(Math.pow(2, _).toInt).map(n => random2to15Pairs.take(n)).zip((1 to 9).map(_.toString())).map(t => (t._2, t._1))
        .map((t: (String, List[(Long, Long)])) => (t._1, Random.shuffle(t._2))).toMap[String, List[(Long, Long)]].map(t => (t._1, t._2.toArray))

    def getSmallKeyValuePairsList(n: String): Array[(Long, Long)] = smallRandomKeyValuePairsList.getOrElse(n, Array.fill(1)((0L, 0L)))

    val emptyListMap = ListMapLongKey[Long](StainlessList[(Long, Long)]())

    // To benchmark the ListMap
    val verifiedMapFilledWith2to1Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(1) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to1Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(1) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to1Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(1) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to2Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(2) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to2Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(2) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to2Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(2) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to3Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 3).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to3Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 3).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to3Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 3).toInt) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to4Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 4).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to4Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 4).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to4Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 4).toInt) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to5Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 5).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to5Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 5).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to5Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 5).toInt) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to6Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 6).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to6Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 6).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to6Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 6).toInt) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to7Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 7).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to7Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 7).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to7Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 7).toInt) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to8Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 8).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to8Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 8).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to8Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 8).toInt) do
            listMap = listMap  + (k, v)
        end for
        listMap
    }

    val verifiedMapFilledWith2to9Values = {
        val mutableMap = getVerifiedMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 9).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val originalMapFilledWith2to9Values = {
        val mutableMap = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 9).toInt) do
            mutableMap.update(k, v)
        end for
        mutableMap
    }
    val listMapFilledWith2to9Values = {
        var listMap = emptyListMap
        for (k, v) <- random2to15Pairs.take(Math.pow(2, 9).toInt) do
            listMap = listMap  + (k, v)
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
        case _ => throw new Exception("Invalid n")
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
        case _ => throw new Exception("Invalid n")
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
        case _ => throw new Exception("Invalid n")
    }
}