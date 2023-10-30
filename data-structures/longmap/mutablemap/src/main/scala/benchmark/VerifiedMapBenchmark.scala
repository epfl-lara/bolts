package ch.epfl.echassot.benchmark


import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import ch.epfl.chassot.MutableLongMap
import scala.collection.mutable.LongMap
import scala.util.Random


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

    val verifiedMapFilledWith2to15Values = {
        val mutableMap = MutableLongMap.getEmptyLongMap[Long](k => 0L, 16)
        for (k, v) <- random2to15Pairs do
            mutableMap.update(k, v)
        end for
        mutableMap
    }


    val originalMapFilledWith2to15Values = {
        val map = new LongMap[Long](k => 0L, 16)
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for
        map
    }

    val verifiedMapEmpty16Buffer = MutableLongMap.getEmptyLongMap[Long](k => 0L, 16)
    val originalMapEmpty16Buffer = new LongMap[Long](k => 0L, 16)

    val verifiedMapEmpty2to17Buffer = MutableLongMap.getEmptyLongMap[Long](k => 0L, Math.pow(2, 17).toInt)
    val originalMapEmpty2to17Buffer = new LongMap[Long](k => 0L, Math.pow(2, 17).toInt)

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
        val mutableMap = verifiedMapEmpty16Buffer
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
        val map = originalMapEmpty16Buffer
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
        val mutableMap = verifiedMapEmpty2to17Buffer
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
        val map = originalMapEmpty2to17Buffer
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