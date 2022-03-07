import stainless.*
import stainless.lang.*
import stainless.annotation._

object common {
  object Pixel {
    @cCode.`export`
    def r(px: Int): Byte = ((px >>> 24) & 0xff).toByte

    @cCode.`export`
    def g(px: Int): Byte = ((px >>> 16) & 0xff).toByte

    @cCode.`export`
    def b(px: Int): Byte = ((px >>> 8) & 0xff).toByte

    @cCode.`export`
    def a(px: Int): Byte = (px & 0xff).toByte

    @cCode.`export`
    def fromRgba(r: Byte, g: Byte, b: Byte, a: Byte): Int = {
      (r << 24) | ((g << 16) & 0xffffff) | ((b << 8) & 0xffff) | (a & 0xff)
      // Incorrect version, albeit seemingly correct:
      //  (r << 24) | (g << 16) | (b << 8) | a
      // This is due to the fact that the sub-expressions (g << 16), etc. get promoted to Int and are sign-extent.
    }.ensuring(res => Pixel.r(res) == r && Pixel.g(res) == g && Pixel.b(res) == b && Pixel.a(res) == a)

    @cCode.`export`
    def incremented(px: Int)(dr: Byte = 0, dg: Byte = 0, db: Byte = 0, da: Byte = 0): Int = {
      fromRgba(((Pixel.r(px) + dr) & 0xff).toByte, ((Pixel.g(px) + dg) & 0xff).toByte, ((Pixel.b(px) + db) & 0xff).toByte, ((Pixel.a(px) + da) & 0xff).toByte)
    }.ensuring(res =>
      Pixel.r(res) == ((Pixel.r(px) + dr) & 0xff).toByte &&
      Pixel.g(res) == ((Pixel.g(px) + dg) & 0xff).toByte &&
      Pixel.b(res) == ((Pixel.b(px) + db) & 0xff).toByte &&
      Pixel.a(res) == ((Pixel.a(px) + da) & 0xff).toByte)

    // withRgba is a convenience wrapper around fromRgba that returns a copy of a pixel with selected modified channels.
    // Example:
    //   val px: Int = ...
    //   val px2 = Pixel.withRgba(px)(g = 123, b = 3) // Same as px, except with G=123 and B=3
    @cCode.`export`
    def withRgba(px: Int)(r: Byte = Pixel.r(px), g: Byte = Pixel.g(px), b: Byte = Pixel.b(px), a: Byte = Pixel.a(px)): Int =
      fromRgba(r, g, b, a)
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @cCode.`export`
  def write16(data: Array[Byte], i: Int, value: Short): Unit = {
    require(data.length >= 2 && i >= 0 && i < data.length - 1)
    data(i) = ((0xff00 & value) >>> 8).toByte
    data(i + 1) = (0xff & value).toByte
  }.ensuring(_ => read16(data, i) == value && old(data).length == data.length)

  @cCode.`export`
  def write32(data: Array[Byte], i: Int, value: Int): Unit = {
    require(data.length >= 4 && i >= 0 && i < data.length - 3)
    write16(data, i, (value >>> 16).toShort)
    write16(data, i + 2, value.toShort)
  }.ensuring(_ => read32(data, i) == value && old(data).length == data.length)

  @cCode.`export`
  def read16(data: Array[Byte], i: Int): Short = {
    require(data.length >= 2 && i >= 0 && i < data.length - 1)
    (((((data(i) & 0xff) << 8) & 0xffff) | (data(i + 1) & 0xff)) & 0xffff).toShort
  }

  @cCode.`export`
  def read32(data: Array[Byte], i: Int): Int = {
    require(data.length >= 4 && i >= 0 && i < data.length - 3)
    (read16(data, i) << 16) | (read16(data, i + 2) & 0xffff)
  }
}
