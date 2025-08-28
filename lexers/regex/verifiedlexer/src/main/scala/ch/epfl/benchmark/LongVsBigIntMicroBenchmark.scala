package ch.epfl.lexer
package benchmark

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*

@State(Scope.Benchmark)
class LongVsBigIntMicroBenchmark {

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def compareIds_longs(): Unit = {
    LongVsBigIntMicroBenchmarkUtils.randomLongs.foreach { id =>
      LongVsBigIntMicroBenchmarkUtils.randomLongs.foreach { otherId =>
        val _ = id == otherId
      }
    }
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def compareIds_bigints(): Unit = {
    LongVsBigIntMicroBenchmarkUtils.randomBigInts.foreach { id =>
      LongVsBigIntMicroBenchmarkUtils.randomBigInts.foreach { otherId =>
        val _ = id == otherId
      }
    }
  }
}

object LongVsBigIntMicroBenchmarkUtils {
  val randomLongs = Seq.fill(100)(scala.util.Random.nextLong())
  val randomBigInts = randomLongs.map(BigInt(_))
}