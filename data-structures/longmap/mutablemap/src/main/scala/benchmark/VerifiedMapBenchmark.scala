package ch.epfl.echassot.benchmark


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
    import BenchmarkUtil.*
    // ------------------------------------------------ UPDATE + LOOKUPS --------------------------------------------------------------------
    @Param(Array("1", "2", "3", "4", "5", "6", "7", "8", "9"))
    var n: String = _

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def createMapAndUpdateThenLookupVerified(): Unit = {
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
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def createMapAndUpdateThenLookupOriginal(): Unit = {
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
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def createListMapAndUpdateThenLookup(): Unit = {
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
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def lookupVerified(): Unit = {
        val mutableMap = getVerifiedMapFilledWith2toNValues(n)
        for (k, _) <- getSmallKeyValuePairsList(n) do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def lookupOriginal(): Unit = {
        val mutableMap = getOriginalMapFilledWith2toNValues(n)
        for (k, _) <- getSmallKeyValuePairsList(n) do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def lookupListMap(): Unit = {
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
    
    @Param(Array("4096","8192","12288","16384","20480","24576","28672","32768","36864","40960","45056","49152","53248","57344","61440","65536"))
    var keysListName: String = _

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1Verified(): Unit = {
        verifiedMapFilledWith2to15Values(randomKey)
    }   

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1Original(): Unit = {
        originalMapFilledWith2to15Values(randomKey)
    }

    // ------------------------------------------------ RETRIEVE N KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieveVerified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- getKeysList(keysListName) do
            m(k)
        end for
    }   

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieveOriginal(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- getKeysList(keysListName) do
            m(k)
        end for
    }


    // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS IN MAPS WITH 16 INITIAL BUFFER ----------------------------------------------------------
      @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysThenLookup16BufferVerified(): Unit = {
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
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysThenLookup16BufferOriginal(): Unit = {
        val map = getOriginalMapEmptyBuffer(16)
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            map(k)
        end for
    }

    // ------------------------------------------------ CREATE + UPDATE 2^^15 KEYS THEN LOOKUPS IN MAPS WITH 16 INITIAL BUFFER -------------------------------------------------
    
    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def createMapAndUpdate2to15KeysThenLookupVerified(): Unit = {
        val mutableMap = MutableLongMap.getEmptyLongMap[Long](k => 0L, 16)
        for (k, v) <- random2to15Pairs do
        mutableMap.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            mutableMap(k)
        end for
    }

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def createMapAndUpdate2to15KeysThenLookupOriginal(): Unit = {
        val map = new LongMap[Long](k => 0L, 16)
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
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysThenLookup2to17BufferVerified(): Unit = {
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
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysThenLookup2to17BufferOriginal(): Unit = {
        val map = getOriginalMapEmptyBuffer(Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            map(k)
        end for
    }

    // ------------------------------------------------ CREATE + UPDATE 2^^15 KEYS THEN LOOKUPS IN MAPS WITH 2^^17 INITIAL BUFFER -------------------------------------------------

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def createMapAndUpdate2to15KeysVerifiedWith2to17BufferThenLookupVerified(): Unit = {
        val mutableMap = MutableLongMap.getEmptyLongMap[Long](k => 0L, Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
        mutableMap.update(k, v)
        end for

        for k <- getKeysList(keysListName) do
            mutableMap(k)
        end for
    }

    @Benchmark    
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def createMapAndUpdate2to15KeysVerifiedWith2to17BufferThenLookupOriginal(): Unit = {
        val map = new LongMap[Long](k => 0L, Math.pow(2, 17).toInt)
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

    val random2to15Pairs = Random.shuffle((0L until long2to15).map(i => (i.toLong, Random.nextLong())).toList)

    val randomKey = Random.between(0, long2to15)
    val randomKeysList: Map[String, List[Long]] = 
        (1 to 16).map(_*4096).map(n => (n.toString(), random2to15Pairs.take(n).map(_._1)))
        .map((t: (String, List[Long])) => (t._1, Random.shuffle(t._2))).toMap[String, List[Long]]
        
    def getKeysList(n: String): List[Long] = randomKeysList.getOrElse(n, List.empty[Long])

    val smallRandomKeyValuePairsList: Map[String, List[(Long, Long)]] = 
        (1 to 9).map(Math.pow(2, _).toInt).map(n => random2to15Pairs.take(n)).zip((1 to 9).map(_.toString())).map(t => (t._2, t._1))
        .map((t: (String, List[(Long, Long)])) => (t._1, Random.shuffle(t._2))).toMap[String, List[(Long, Long)]]
        
    def getSmallKeyValuePairsList(n: String): List[(Long, Long)] = smallRandomKeyValuePairsList.getOrElse(n, List.empty[(Long, Long)])
    
    def getVerifiedMapEmptyBuffer(n: Int) = MutableLongMap.getEmptyLongMap[Long](k => 0L, n)
    def getOriginalMapEmptyBuffer(n: Int) = new LongMap[Long](k => 0L, n)
    val emptyListMap = ListMapLongKey[Long](StainlessList[(Long, Long)]())

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