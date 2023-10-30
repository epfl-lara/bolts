package ch.epfl.echassot.benchmark


import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import ch.epfl.chassot.MutableLongMap
import scala.collection.mutable.LongMap
import scala.util.Random
import ch.epfl.echassot.benchmark.BenchmarkUtil.random1024Keys


object BenchmarkUtil {
    val seed = 0x0ddba11
    Random.setSeed(seed)
    
    val long2to15 = Math.pow(2, 15).toLong

    val random2to15Pairs = Random.shuffle((0L until long2to15).map(i => (i.toLong, Random.nextLong())).toList)

    val random1024Keys = Random.shuffle((0 until 1024).map(i => Random.between(0, long2to15)).toList)
    val randomKey = Random.between(0, long2to15)

    val verifiedMapFilledWith2to15Values = {
        val mutableMap = MutableLongMap.getEmptyLongMap[Long](k => 0L)
        for (k, v) <- random2to15Pairs do
            mutableMap.update(k, v)
        end for
        mutableMap
    }

    val originalMapFilledWith2to15Values = {
        val map = LongMap[Long]()
        for (k, v) <- random2to15Pairs do
            map.update(k, v)
        end for
        map
    }

}

@State(Scope.Benchmark)
class MutableLongMapBenchmark {

    // ------------------------------------------------ RETRIEVE ONE KEY --------------------------------------------------------------------
    
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1Verified(): Unit = {
        BenchmarkUtil.verifiedMapFilledWith2to15Values(BenchmarkUtil.randomKey)
    }   

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1Original(): Unit = {
        BenchmarkUtil.originalMapFilledWith2to15Values(BenchmarkUtil.randomKey)
    }

    // ------------------------------------------------ RETRIEVE 1024 KEYS FROM 2^^15 MAP ---------------------------------------------------

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1024Verified(): Unit = {
        val m = BenchmarkUtil.verifiedMapFilledWith2to15Values
        for k <- random1024Keys do
            m(k)
        end for
    }   

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MICROSECONDS)
    def retrieve1024Original(): Unit = {
        val m = BenchmarkUtil.originalMapFilledWith2to15Values
        for k <- random1024Keys do
            m(k)
        end for
    }

    // ------------------------------------------------ UPDATE 2^^15 KEYS THEN LOOKUPS 1024 -------------------------------------------------
    
    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update2to15Keys(): Unit = {
        val mutableMap = MutableLongMap.getEmptyLongMap[Long](k => 0L)
        for (k, v) <- BenchmarkUtil.random2to15Pairs do
        mutableMap.update(k, v)
        end for

        for k <- random1024Keys do
            mutableMap(k)
        end for
    }

    @Benchmark
    @BenchmarkMode(Array(Mode.AverageTime))
    @OutputTimeUnit(TimeUnit.MILLISECONDS)
    def update10to6keysOriginal(): Unit = {
        val map = LongMap[Long]()
        for (k, v) <- BenchmarkUtil.random2to15Pairs do
        map.update(k, v)
        end for

        for k <- random1024Keys do
            map(k)
        end for
    }

    
}