import common.*

object encoder {

  case class EncCtx(pixels: Array[Byte], w: Long, h: Long, chan: Long) {
    def maxSize: Long = w * h * (chan + 1) + HeaderSize + Padding

    def pxEnd: Long = pixels.length - chan
  }

  case class EncodedResult(encoded: Array[Byte], length: Long)

  case class EncodingIteration(px: Int, outPos: Long, run: Long)

  case class RunUpdate(reset: Boolean, run: Long, outPos: Long)

  case class LoopIter(px: Int, pxPrev: Int, pxPos: Long)

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  def encode(pixels: Array[Byte], w: Long, h: Long, chan: Long): Option[EncodedResult] = {
    if (!(0 < w && w <= MaxWidth &&
      0 < h && h <= MaxHeight &&
      3 <= chan && chan <= 4 &&
      w * h * chan == pixels.length))
      None
    else Some(encode()(using EncCtx(pixels, w, h, chan)))
  }

  def encode()(using EncCtx): EncodedResult = {
    val bytes = Array.fill(maxSize.toInt)(0: Byte)
    writeHeader(bytes)
    val index = Array.fill(64)(0)
    val pxPrev = Pixel.fromRgba(0, 0, 0, 255.toByte)
    val EncodingIteration(pxRes, outPos, _) = encodeLoop(index, bytes, pxPrev, 0, HeaderSize, 0)
    EncodedResult(bytes, outPos + Padding)
  }

  def encodeLoop(index: Array[Int], bytes: Array[Byte], pxPrev: Int, run0: Long, outPos0: Long, pxPos: Long)(using EncCtx): EncodingIteration = {
    val EncodingIteration(px, outPos2, run1) = encodeSingleStep(index, bytes, pxPrev, run0, outPos0, pxPos)

    if (pxPos + chan < pixels.length) {
      encodeLoop(index, bytes, px, run1, outPos2, pxPos + chan)
    } else {
      bytes(outPos2.toInt + Padding - 1) = 1
      EncodingIteration(px, outPos2, run1)
    }
  }

  def writeHeader(bytes: Array[Byte])(using EncCtx): Unit = {
    write32(bytes, 0, MagicNumber)
    assert(read32(bytes, 0) == MagicNumber)

    write32(bytes, 4, w.toInt)
    assert(read32(bytes, 4) == w.toInt)

    write32(bytes, 8, h.toInt)
    assert(read32(bytes, 8) == h.toInt)

    bytes(12) = chan.toByte
    assert(bytes(12) == chan.toByte)

    bytes(13) = 0 // Color-space (unused)
  }

  def encodeSingleStep(index: Array[Int], bytes: Array[Byte], pxPrev: Int, run0: Long, outPos0: Long, pxPos: Long)(using EncCtx): EncodingIteration = {
    val px =
      if (chan == 4) read32(pixels, pxPos.toInt)
      else Pixel.fromRgba(pixels(pxPos.toInt), pixels(pxPos.toInt + 1), pixels(pxPos.toInt + 2), Pixel.a(pxPrev))
    given li: LoopIter = LoopIter(px, pxPrev, pxPos)

    val runUpd = updateRun(bytes, run0, outPos0)
    val run1 = runUpd.run
    val outPos1 = runUpd.outPos

    val outPos2 = if (px != pxPrev) {
      encodeNoRun(index, bytes, outPos1)
    } else {
      outPos1
    }
    EncodingIteration(px, outPos2, run1)
  }

  def updateRun(bytes: Array[Byte], run0: Long, outPos0: Long)(using EncCtx, LoopIter): RunUpdate = {
    var run = run0
    var outPos = outPos0

    if (px == pxPrev)
      run += 1

    var runReset = false
    if (run > 0 && (run == 62 || px != pxPrev || pxPos == pxEnd)) {
      val b1 = (OpRun | (run - 1)).toByte
      bytes(outPos.toInt) = b1
      outPos += 1
      run = 0
      runReset = true
    }
    RunUpdate(runReset, run, outPos)
  }

  def encodeNoRun(index: Array[Int], bytes: Array[Byte], outPos1: Long)(using EncCtx, LoopIter): Long = {
    val indexPos = colorPos(px)
    var newOutPos = outPos1

    if (index(indexPos) == px) {
      val b1 = (OpIndex | indexPos) & 0xff
      bytes(newOutPos.toInt) = b1.toByte
      newOutPos += 1
    } else {
      index(indexPos) = px

      if (Pixel.a(px) == Pixel.a(pxPrev)) {
        // Note: these 5 variables are declared as signed char in the reference implementation
        val vr = ((Pixel.r(px).toInt & 0xff) - (Pixel.r(pxPrev).toInt & 0xff)).toByte
        val vg = ((Pixel.g(px).toInt & 0xff) - (Pixel.g(pxPrev).toInt & 0xff)).toByte
        val vb = ((Pixel.b(px).toInt & 0xff) - (Pixel.b(pxPrev).toInt & 0xff)).toByte
        val vgR = (vr - vg).toByte
        val vgB = (vb - vg).toByte

        if (vr > -3 && vr < 2 && vg > -3 && vg < 2 && vb > -3 && vb < 2) {
          val b1 = OpDiff | (((vr + 2) << 4) & 0xff) | (((vg + 2) << 2) & 0xff) | ((vb + 2) & 0xff)
          bytes(newOutPos.toInt) = b1.toByte
          newOutPos += 1
        } else if (vgR > -9 && vgR < 8 && vg > -33 && vg < 32 && vgB > -9 && vgB < 8) {
          val b1 = OpLuma | ((vg + 32) & 0xff)
          val b2 = (((vgR + 8) << 4) & 0xff) | ((vgB + 8) & 0xff)
          bytes(newOutPos.toInt) = b1.toByte
          newOutPos += 1
          bytes(newOutPos.toInt) = b2.toByte
          newOutPos += 1
        } else {
          bytes(newOutPos.toInt) = OpRgb.toByte
          newOutPos += 1
          bytes(newOutPos.toInt) = Pixel.r(px)
          newOutPos += 1
          bytes(newOutPos.toInt) = Pixel.g(px)
          newOutPos += 1
          bytes(newOutPos.toInt) = Pixel.b(px)
          newOutPos += 1
        }
      } else {
        bytes(newOutPos.toInt) = OpRgba.toByte
        newOutPos += 1
        bytes(newOutPos.toInt) = Pixel.r(px)
        newOutPos += 1
        bytes(newOutPos.toInt) = Pixel.g(px)
        newOutPos += 1
        bytes(newOutPos.toInt) = Pixel.b(px)
        newOutPos += 1
        bytes(newOutPos.toInt) = Pixel.a(px)
        newOutPos += 1
      }
    }

    newOutPos
  }

  def maxSize(using ctx: EncCtx): Long = ctx.maxSize

  def pxEnd(using ctx: EncCtx): Long = ctx.pxEnd

  def w(using ctx: EncCtx): Long = ctx.w

  def h(using ctx: EncCtx): Long = ctx.h

  def chan(using ctx: EncCtx): Long = ctx.chan

  def pixels(using ctx: EncCtx): Array[Byte] = ctx.pixels

  def px(using li: LoopIter): Int = li.px

  def pxPrev(using li: LoopIter): Int = li.pxPrev

  def pxPos(using li: LoopIter): Long = li.pxPos
}
