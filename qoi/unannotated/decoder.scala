import common.*

object decoder {

  case class DecCtx(bytes: Array[Byte], w: Long, h: Long, chan: Long) {
    def pixelsLen: Long = w * h * chan

    def chunksLen: Long = bytes.length - Padding
  }

  case class DecodedResult(pixels: Array[Byte], w: Long, h: Long, chan: Long)

  case class WriteRunPixelsResult(remainingRun: Long, pxPos: Long)

  sealed trait DecodedNext
  case class Run(run: Long) extends DecodedNext
  case class DiffOrIndexOrColor(px: Int) extends DecodedNext

  case class DecodingIteration(px: Int, inPos: Long, pxPos: Long, remainingRun: Long)

  /////////////////////////////////////////////////////////////////////////////////////////////////////

  def decode(bytes: Array[Byte], until: Long): Option[DecodedResult] = {
    if (!(bytes.length > HeaderSize + Padding && HeaderSize + Padding < until && until <= bytes.length)) {
      None
    } else {
      decodeHeader(bytes).map {
        case (w, h, chan) =>
          val index = Array.fill(64)(0)
          val pixels = Array.fill(w.toInt * h.toInt * chan.toInt)(0: Byte)
          val px = Pixel.fromRgba(0, 0, 0, 255.toByte)
          val decIter = decodeLoop(index, pixels, px, HeaderSize, until - Padding, 0)(using DecCtx(bytes, w, h, chan))
          if (decIter.pxPos != pixels.length) {
            writeRemainingPixels(pixels, decIter.px, decIter.pxPos)(using DecCtx(bytes, w, h, chan))
          }
          DecodedResult(pixels, w, h, chan)
      }
    }
  }

  def writeRemainingPixels(pixels: Array[Byte], pxPrev: Int, pxPos: Long)(using DecCtx): Unit = {
    writePixel(pixels, pxPrev, pxPos)
    if (pxPos + chan < pixels.length) {
      writeRemainingPixels(pixels, pxPrev, pxPos + chan)
    }
  }

  def decodeLoop(index: Array[Int], pixels: Array[Byte], pxPrev: Int,
                 inPos0: Long, untilInPos: Long, pxPos0: Long)(using DecCtx): DecodingIteration = {
    val (res, decIter) = decodeNext(index, pixels, pxPrev, inPos0, pxPos0)

    if (decIter.inPos < untilInPos && decIter.pxPos + chan <= pixels.length) {
      decodeLoop(index, pixels, decIter.px, decIter.inPos, untilInPos, decIter.pxPos)
    } else {
      decIter
    }
  }

  def decodeNext(index: Array[Int], pixels: Array[Byte], pxPrev: Int, inPos0: Long, pxPos0: Long)(using DecCtx): (DecodedNext, DecodingIteration) = {
    val (decRes, inPos) = doDecodeNext(index, pxPrev, inPos0)

    decRes match {
      case Run(run) =>
        val WriteRunPixelsResult(resRun, resPxPos) = writeRunPixels(pixels, pxPrev, run, pxPos0)
        (decRes, DecodingIteration(pxPrev, inPos, resPxPos, resRun))

      case DiffOrIndexOrColor(px) =>
        writePixel(pixels, px, pxPos0)
        index(colorPos(px)) = px
        (decRes, DecodingIteration(px, inPos, pxPos0 + chan, 0))
    }
  }

  def doDecodeNext(index: Array[Int], pxPrev: Int, inPos0: Long)(using DecCtx): (DecodedNext, Long) = {
    var px = pxPrev
    var inPos = inPos0
    var run = 0L

    val b1 = bytes(inPos.toInt).toInt & 0xff
    inPos += 1
    val res: DecodedNext = if (b1 == OpRgb) {
      val px = Pixel.withRgba(pxPrev)(r = bytes(inPos.toInt), g = bytes(inPos.toInt + 1), b = bytes(inPos.toInt + 2))
      inPos += 3
      DiffOrIndexOrColor(px)
    } else if (b1 == OpRgba) {
      val px = Pixel.withRgba(pxPrev)(r = bytes(inPos.toInt), g = bytes(inPos.toInt + 1), b = bytes(inPos.toInt + 2), a = bytes(inPos.toInt + 3))
      inPos += 4
      DiffOrIndexOrColor(px)
    } else if ((b1 & Mask2) == OpIndex) {
      val px = index(b1)
      DiffOrIndexOrColor(px)
    } else if ((b1 & Mask2) == OpDiff) {
      val px = decodeDiff(pxPrev, b1)
      DiffOrIndexOrColor(px)
    } else if ((b1 & Mask2) == OpLuma) {
      val b2 = bytes(inPos.toInt).toInt & 0xff
      inPos += 1
      val px = decodeLuma(pxPrev, b1, b2)
      DiffOrIndexOrColor(px)
    } else if ((b1 & Mask2) == OpRun) {
      val run = decodeRun(b1)
      Run(run)
    } else {
      DiffOrIndexOrColor(pxPrev)
    }
    (res, inPos)
  }

  def decodeHeader(bytes: Array[Byte]): Option[(Long, Long, Long)] = {
    val magic = read32(bytes, 0)
    val w = read32(bytes, 4)
    val h = read32(bytes, 8)
    val chan = bytes(12)

    if (0 < w && w <= MaxWidth && 0 < h && h <= MaxHeight && magic == MagicNumber && 3 <= chan && chan <= 4)
      Some((w.toLong, h.toLong, chan.toLong))
    else
      None
  }

  def writeRunPixels(pixels: Array[Byte], px: Int, run0: Long, pxPos0: Long)(using DecCtx): WriteRunPixelsResult = {
    writePixel(pixels, px, pxPos0)
    if (run0 > 0 && pxPos0 + chan < pixels.length) {
      writeRunPixels(pixels, px, run0 - 1, pxPos0 + chan)
    } else {
      WriteRunPixelsResult(run0, pxPos0 + chan)
    }
  }

  def writePixel(pixels: Array[Byte], px: Int, pxPos: Long)(using DecCtx): Unit = {
    pixels(pxPos.toInt) = Pixel.r(px)
    pixels(pxPos.toInt + 1) = Pixel.g(px)
    pixels(pxPos.toInt + 2) = Pixel.b(px)
    if (chan == 4) {
      pixels(pxPos.toInt + 3) = Pixel.a(px)
    }
  }

  def decodeDiff(pxPrev: Int, b1: Int): Int = {
    Pixel.incremented(pxPrev)(
      (((b1 >>> 4) & 0x03) - 2).toByte,
      (((b1 >>> 2) & 0x03) - 2).toByte,
      ((b1 & 0x03) - 2).toByte)
  }

  def decodeLuma(pxPrev: Int, b1: Int, b2: Int): Int = {
    val vg = (b1 & 0x3f) - 32
    Pixel.incremented(pxPrev)(
      (vg - 8 + ((b2 >>> 4) & 0x0f)).toByte,
      vg.toByte,
      (vg - 8 + (b2 & 0x0f)).toByte)
  }

  def decodeRun(b1: Int): Int = b1 & 0x3f

  /////////////////////////////////////////////////////////////////////////////////////////////////////

  def w(using ctx: DecCtx): Long = ctx.w

  def h(using ctx: DecCtx): Long = ctx.h

  def chan(using ctx: DecCtx): Long = ctx.chan

  def pixelsLen(using ctx: DecCtx): Long = ctx.pixelsLen

  def chunksLen(using ctx: DecCtx): Long = ctx.chunksLen

  def bytes(using ctx: DecCtx): Array[Byte] = ctx.bytes
}
