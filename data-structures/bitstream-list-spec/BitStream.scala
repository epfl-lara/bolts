import stainless.lang.* 
import stainless.annotation.ghost

// We'll be abkle to make use of the BigInt <=> Int conversions that Sankalp added, so that we can relate the size of the underlying array to the length of the bit stream, and also to be able to index into the bit stream using BigInt indices.
object BitStreamV2 {
  case class BitStream(underlying: Array[Byte], length: BigInt) {
    require(length >= 0 && length <= underlying.length * 8)

    @ghost def toList(): {res: List[Boolean] | res.length == length} = {
      Nil()
    }

  }
}