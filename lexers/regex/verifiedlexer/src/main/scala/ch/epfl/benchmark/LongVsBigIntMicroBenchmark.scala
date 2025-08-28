package ch.epfl.lexer
package benchmark

import java.util.concurrent.TimeUnit

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

  val seed = 0x0ddba11
  val r = new Random(seed)

  val randomLongs = Seq.fill(100)(r.nextLong())
  val randomBigInts = randomLongs.map(BigInt(_))
}