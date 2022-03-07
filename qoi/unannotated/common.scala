object common {
  val OpIndex = 0x00
  val OpDiff = 0x40
  val OpLuma = 0x80
  val OpRun = 0xc0
  val OpRgb = 0xfe
  val OpRgba = 0xff

  val Mask2 = 0xc0

  val MagicNumber = 1903126886
  val HeaderSize = 14
  val Padding = 8

  val MaxWidth = 8192
  val MaxHeight = 8192

  object Pixel {
    def r(px: Int): Byte = ((px >>> 24) & 0xff).toByte
    def g(px: Int): Byte = ((px >>> 16) & 0xff).toByte
    def b(px: Int): Byte = ((px >>> 8) & 0xff).toByte
    def a(px: Int): Byte = (px & 0xff).toByte

    def fromRgba(r: Byte, g: Byte, b: Byte, a: Byte): Int =
      (r << 24) | ((g << 16) & 0xffffff) | ((b << 8) & 0xffff) | (a.toInt & 0xff)

    def incremented(px: Int)(r: Byte = 0, g: Byte = 0, b: Byte = 0, a: Byte = 0): Int =
      fromRgba(((Pixel.r(px) + r) & 0xff).toByte, ((Pixel.g(px) + g) & 0xff).toByte, ((Pixel.b(px) + b) & 0xff).toByte, ((Pixel.a(px) + a) & 0xff).toByte)

    def withRgba(px: Int)(r: Byte = Pixel.r(px), g: Byte = Pixel.g(px), b: Byte = Pixel.b(px), a: Byte = Pixel.a(px)): Int =
      fromRgba(r, g, b, a)
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////

  def colorPos(px: Int): Int =
    ((Pixel.r(px) & 0xff) * 3 + (Pixel.g(px) & 0xff) * 5 + (Pixel.b(px) & 0xff) * 7 + (Pixel.a(px) & 0xff) * 11) % 64

  def write16(data: Array[Byte], i: Int, value: Short): Unit = {
    data(i) = ((0xff00 & value) >>> 8).toByte
    data(i + 1) = (0xff & value).toByte
  }

  def write32(data: Array[Byte], i: Int, value: Int): Unit = {
    write16(data, i, (value >>> 16).toShort)
    write16(data, i + 2, value.toShort)
  }

  def read16(data: Array[Byte], i: Int): Short =
    (((((data(i) & 0xff) << 8) & 0xffff) | (data(i + 1) & 0xff)) & 0xffff).toShort

  def read32(data: Array[Byte], i: Int): Int =
    (read16(data, i) << 16) | (read16(data, i + 2) & 0xffff)
}
