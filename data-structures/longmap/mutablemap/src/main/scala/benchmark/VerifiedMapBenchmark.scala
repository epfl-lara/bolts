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
    val random1024Keys = Random.shuffle((0 until 1024).map(i => Random.between(0, long2to15)).toList)
    val random4096Keys = Random.shuffle((0 until 4096).map(i => Random.between(0, long2to15)).toList)
    val random8192Keys = Random.shuffle((0 until 8192).map(i => Random.between(0, long2to15)).toList)
    val random16384Keys = Random.shuffle((0 until 16384).map(i => Random.between(0, long2to15)).toList)
    val random65536Keys = Random.shuffle((0 until 65536).map(i => Random.between(0, long2to15)).toList)
    val random262144Keys = Random.shuffle((0 until 262144).map(i => Random.between(0, long2to15)).toList)

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

}

@State(Scope.Benchmark)
class MutableLongMapBenchmark {
    import BenchmarkUtil.*
    // ------------------------------------------------ RETRIEVE ONE KEY --------------------------------------------------------------------
    
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

    // ------------------------------------------------ RETRIEVE 1024 KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1024Verified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- random1024Keys do
            m(k)
        end for
    }   

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1024Original(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- random1024Keys do
            m(k)
        end for
    }

    // ------------------------------------------------ RETRIEVE 4096 KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve4096Verified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- random4096Keys do
            m(k)
        end for
    }   

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve4096Original(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- random4096Keys do
            m(k)
        end for
    }


    // ------------------------------------------------ RETRIEVE 8192 KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve8192Verified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- random8192Keys do
            m(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve8192Original(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- random8192Keys do
            m(k)
        end for
    }

    // ------------------------------------------------ RETRIEVE 16384 KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve16384Verified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- random16384Keys do
            m(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve16384Original(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- random16384Keys do
            m(k)
        end for
    }

    // ------------------------------------------------ RETRIEVE 65536 KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve65536Verified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- random65536Keys do
            m(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve65536Original(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- random65536Keys do
            m(k)
        end for
    }

    // ------------------------------------------------ RETRIEVE 262144 KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve262144Verified(): Unit = {
        val m = verifiedMapFilledWith2to15Values
        for k <- random262144Keys do
            m(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve262144Original(): Unit = {
        val m = originalMapFilledWith2to15Values
        for k <- random262144Keys do
            m(k)
        end for
    }



    // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS 1024 IN MAPS WITH 16 INITIAL BUFFER -------------------------------------------------
    
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysLookup1024Verified(): Unit = {
        val mutableMap = MutableLongMap.getEmptyLongMap[Long](k => 0L)
        for (k, v) <- random2to15Pairs do
        mutableMap.update(k, v)
        end for

        for k <- random1024Keys do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysLookup1024Original(): Unit = {
        val map = LongMap[Long]()
        for (k, v) <- random2to15Pairs do
        map.update(k, v)
        end for

        for k <- random1024Keys do
            map(k)
        end for
    }

    // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS 1024 IN MAPS WITH 2^^17 INITIAL BUFFER -------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysVerifiedWith2to17BufferLookup1024Verified(): Unit = {
        val mutableMap = MutableLongMap.getEmptyLongMap[Long](k => 0L, Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
        mutableMap.update(k, v)
        end for

        for k <- random1024Keys do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15KeysVerifiedWith2to17BufferLookup1024Original(): Unit = {
        val map = new LongMap[Long](k => 0L, Math.pow(2, 17).toInt)
        for (k, v) <- random2to15Pairs do
        map.update(k, v)
        end for

        for k <- random1024Keys do
            map(k)
        end for
    }
    
}