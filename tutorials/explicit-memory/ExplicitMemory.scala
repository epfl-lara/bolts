import stainless.annotation.*
import stainless.lang.*
import scala.annotation.*
object ExplicitMemory:

  opaque type Ref[A] = Int
  case class Mem(a: Array[Int], var free: Int):
    require(0 <= free && free <= a.size)

  @extern
  def initMem(size: Int): Mem = {
    Mem(Array.tabulate(size)(i => 0), 0)
  }.ensuring(res => res.free == 0 && res.a.size == size)

  
  inline def valid(addr: Int, k: Int)(using m: Mem): Boolean =
    0 < k && 0 <= addr && addr <= m.free && k <= m.free - k

  inline def valid(addr: Int)(using m: Mem): Boolean =
    0 <= addr && addr < m.free // valid(addr, 1)

  def available(k: Int)(using m: Mem): Boolean =
    0 < k && m.free <= m.a.size && k <= m.a.size - m.free

  def allocate(k: Int)(using m: Mem): Int =
    require(available(k))
    val res = m.free
    m.free = m.free + k
    res

  def newInt(initVal: Int)(using m: Mem): Ref[Int] =
    require(available(1))
    val addr = allocate(1)
    addr.fill(initVal)
    addr

  def newLong(initVal: Long)(using m: Mem): Ref[Long] =
    require(available(2))
    val addr = allocate(2)
    addr.fill(initVal)
    addr


  extension (addr: Ref[Int])(using m: Mem)
    def fill(v: Int): Unit =
      require(valid(addr))
      m.a(addr) = v

    def :=(addrV: Ref[Int]): Unit =
      require(valid(addr) && valid(addrV))
      m.a(addr) = m.a(addrV)

    def apply(): Int =
      require(valid(addr))
      m.a(addr)

  extension (addr: Ref[Long])(using m: Mem)
    def fill(v: Long): Unit = {
      require(valid(addr) && valid(addr + 1))
      m.a(addr) = (v >> 32).toInt
      m.a(addr + 1) = (v & 0xFFFFFFFF).toInt    
    }

    def ::=(addrV: Ref[Long]): Unit =
      require(valid(addr) && valid(addr + 1) && 
              valid(addrV) && valid(addrV + 1))
      m.a(addr) = m.a(addrV)
      m.a(addr + 1) = m.a(addrV + 1)

    @pure
    def longValue: Long =
      require(valid(addr) && valid(addr + 1))
      val hi = m.a(addr).toLong << 32
      val lo = m.a(addr + 1).toLong
      hi + lo

  def test2 =
    given m: Mem = initMem(100)
    val x = newInt(42)
    val y = newInt(8)
    {
      val y = x
      y := newInt(13)
    }
    var i = 0
    (while i < 20 do
      decreases(20 - i)
      val t = newLong(0L)
      i += 1).invariant(0 <= i && i <= 50 && available(50 - 2*i))

  @main @extern
  def test =
    given m: Mem = initMem(100)
    val x = newInt(42)
    val y = newInt(8)
    println(f"x == ${x()}, y == ${y()}")
    {
      val y = x
      y := newInt(13)
      println(f"x == ${x()}, y == ${y()}")
    }
    println(f"x == ${x()}, y == ${y()}")
    var z = newLong(0L)
    z = x
    println(f"z == ${z.longValue}")
