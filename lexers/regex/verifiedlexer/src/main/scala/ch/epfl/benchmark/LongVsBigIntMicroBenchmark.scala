package benchmark.lexer

import java.util.concurrent.TimeUnit
import org.openjdk.jmh.annotations.*
import scala.util.Random
import scala.compiletime.uninitialized

@State(Scope.Benchmark)
class LongVsBigIntMicroBenchmark {
  
  @Param(
    Array(
      "1", 
      "2", 
      "4", 
      "8", 
      "16", 
      "32", 
      "64", 
      "128", 
      "256", 
      "512", 
      "768", 
      "1024", 
      "1300", 
      "1700", 
      "2000", 
      "2300", 
      "2500", 
      "2800", 
      "3000", 
      "3500", 
      "4000", 
      "4500", 
      "5000", 
      "5500", 
      "6000", 
      "6500", 
      "7000", 
      "7500", 
      "8000", 
      "8500", 
      "9000", 
      "9500", 
      "10000")
  )
  var size: String = uninitialized

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def compareIds_longs(): Unit = {
    LongVsBigIntMicroBenchmarkUtils.randomLongs(size.toInt).foreach { id =>
      LongVsBigIntMicroBenchmarkUtils.randomLongs(size.toInt).foreach { otherId =>
        val out = id == otherId
        assert(out == out)
      }
    }
  }

  @Benchmark
  @BenchmarkMode(Array(Mode.AverageTime))
  @OutputTimeUnit(TimeUnit.MICROSECONDS)
  def compareIds_bigints(): Unit = {
    LongVsBigIntMicroBenchmarkUtils.randomBigInts(size.toInt).foreach { id =>
      LongVsBigIntMicroBenchmarkUtils.randomBigInts(size.toInt).foreach { otherId =>
        val out = id == otherId
        assert(out == out)
      }
    }
  }
}

object LongVsBigIntMicroBenchmarkUtils {

  val seed = 0x0ddba11
  val r = new Random(seed)

  val sizes = List(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 768, 1024, 1300, 1700, 2000, 2300, 2500, 2800, 3000, 3500, 4000, 4500, 5000, 5500, 6000, 6500, 7000, 7500, 8000, 8500, 9000, 9500, 10000)

  val randomLongs: Map[Int, Seq[Long]] = sizes.map(size => size -> Seq.fill(size)(r.nextLong())).toMap
  val randomBigInts: Map[Int, Seq[BigInt]] = randomLongs.mapValues(_.map(BigInt(_))).toMap
}