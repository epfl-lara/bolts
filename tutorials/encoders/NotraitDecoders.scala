import stainless.annotation.*
import stainless.collection.*
import stainless.lang.*
object NotraitDecoders {
  final case class Buffer(a: Array[Int], var size: Int):
    require (0 <= size && size <= a.length)

  final case class Pair[X,Y](_1: X, _2: Y)

  sealed trait Result[T]
  case class Fail[T]() extends Result[T] 
  case class Ok[T](res: T, pos: Int) extends Result[T]

  type EncodeFunction[T] = (T, Buffer) => Boolean
  type DecodeFunction[T] = (Int, Buffer) => Result[T]

  final case class Encoder[T](encode: EncodeFunction[T], decode: DecodeFunction[T])

  def encodeInt(x: Int, b: Buffer): Boolean = {
    val size0 = b.size
    if size0 < b.a.length then
      b.a(size0) = x
      b.size += 1
      true
    else 
      false
  }

  @pure
  def decodeInt(pos: Int, b: Buffer): Result[Int] = {
    if 0 <= pos && pos < b.size then
      Ok(b.a(pos), pos + 1)
    else 
      Fail()
  }

  def intEnc: Encoder[Int] = Encoder[Int](encodeInt, decodeInt)

  def seqEnc[X,Y](x: Encoder[X], y: Encoder[Y]): Encoder[Pair[X,Y]] = {
    def encode(p: Pair[X,Y], b: Buffer): Boolean = {
      val okX = x.encode(p._1, b)
      if okX then 
        y.encode(p._2, b)
      else 
        false
    }

    def decode(pos: Int, b: Buffer): Result[Pair[X,Y]] = {
      x.decode(pos, b) match {
        case Fail() => Fail()
        case Ok(x, pos1) =>
          if pos1 < b.size then
            y.decode(pos1, b) match {
              case Fail() => Fail()
              case Ok(y, pos2) => Ok(Pair(x, y), pos2)
            }
          else
            Fail()
      }
    }
    Encoder[Pair[X,Y]](encode, decode)
  }
}
