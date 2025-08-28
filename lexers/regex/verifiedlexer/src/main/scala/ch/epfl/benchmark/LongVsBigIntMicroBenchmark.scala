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
    "1024", 
    "2048", 
    "4096", 
    "8192", 
    "16384"
    )
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

  val sizes = List(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384)

  val randomLongs: Map[Int, Seq[Long]] = sizes.map(size => size -> Seq.fill(size)(r.nextLong())).toMap
  val randomBigInts: Map[Int, Seq[BigInt]] = randomLongs.mapValues(_.map(BigInt(_))).toMap
}