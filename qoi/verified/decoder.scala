import stainless.*
import stainless.lang.{inline as inlineCall, ghost as ghostExpr, *}
import stainless.collection.*
import stainless.annotation.{inlineOnce, ghost, mutable, opaque, pure, cCode}
import stainless.proof.*
import StaticChecks.*
import common.*

object decoder {

  case class Ctx(bytes: Array[Byte], w: Long, h: Long, chan: Long) {
    require(0 < w && w <= MaxWidth &&
      0 < h && h <= MaxHeight &&
      3 <= chan && chan <= 4 &&
      HeaderSize <= bytes.length)

    @inline
    def pixelsLen: Long = {
      w * h * chan
    }.ensuring(_ % chan == 0)

    @inline
    def chunksLen: Long = bytes.length - Padding
  }

  @cCode.`export`
  case class DecodedResult(pixels: Array[Byte], w: Long, h: Long, chan: Long)

  case class WriteRunPixelsResult(remainingRun: Long, pxPos: Long)

  sealed trait DecodedNext
  case class Run(run: Long) extends DecodedNext
  case class DiffOrIndexOrColor(px: Int) extends DecodedNext

  case class DecodingIteration(px: Int, inPos: Long, pxPos: Long, remainingRun: Long)


  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @pure
  @cCode.`export`
  def decode(bytes: Array[Byte], to: Long): OptionMut[DecodedResult] = {
    if (!(bytes.length > HeaderSize + Padding && HeaderSize + Padding < to && to <= bytes.length))
      NoneMut()
    else {
      decodeHeader(bytes) match {
        case Some((w, h, chan)) =>
          assert(0 < w && w <= MaxWidth)
          assert(0 < h && h <= MaxHeight)
          assert(3 <= chan && chan <= 4)
          val index = Array.fill(64)(0)
          val pixels = allocArray(w.toInt * h.toInt * chan.toInt)
          val px = Pixel.fromRgba(0, 0, 0, 255.toByte)
          val decIter = decodeLoop(index, pixels, px, HeaderSize, to - Padding, 0)(using Ctx(bytes, w, h, chan))
          @ghost val pixelsPreWrite = freshCopy(pixels)
          ghostExpr {
            check(0 <= decIter.pxPos && decIter.pxPos <= pixels.length)
            check(decIter.pxPos % chan == 0)
          }
          if (decIter.pxPos != pixels.length) {
            writeRemainingPixels(pixels, decIter.px, decIter.pxPos, decIter.pxPos)(using Ctx(bytes, w, h, chan))
          }
          ghostExpr {
            if (decIter.pxPos != pixels.length) {
              check(arraysEq(pixelsPreWrite, pixels, 0, decIter.pxPos))
            } else {
              eqImpliesArraysEq(pixelsPreWrite, pixels, 0, decIter.pxPos)
              check(arraysEq(pixelsPreWrite, pixels, 0, decIter.pxPos))
            }
            check((decIter.pxPos != pixels.length) ==> samePixelsForall(pixels, decIter.px, decIter.pxPos, pixels.length, chan))
          }
          SomeMut(DecodedResult(pixels, w, h, chan))

        case None() => NoneMut()
      }
    }
  }

  @opaque
  @inlineOnce
  def writeRemainingPixels(pixels: Array[Byte], pxPrev: Int, pxPos: Long, @ghost pxPosOrig: Long)(using Ctx): Unit = {
    decreases(pixels.length - pxPos)
    require(pixels.length == pixelsLen)
    require(0 <= pxPos && pxPos < pixels.length)
    require(0 <= pxPosOrig && pxPosOrig <= pxPos)
    require(pxPos % chan == 0)
    require(pxPosOrig % chan == 0)
    require((pxPosOrig != pxPos) ==> samePixelsForall(pixels, pxPrev, pxPosOrig, pxPos, chan))

    @ghost val oldPixels = freshCopy(pixels)
    ghostExpr {
      modLeqLemma(pxPos, pixels.length, chan)
      assert(pxPos + chan <= pixels.length)
    }
    val pxPosPlusChan = pxPos + chan
    ghostExpr {
      modSumLemma(pxPos, chan)
      assert(pxPosPlusChan % chan == 0)
      assert(pxPosPlusChan >= 0)
      assert(pxPosPlusChan >= pxPosOrig)
    }
    writePixel(pixels, pxPrev, pxPos)
    ghostExpr {
      modMultLemma(w, h, chan)
      assert(pixelsLen == w * h * chan)
      check(pixelsLen % chan == 0)
      check(pixels.length % chan == 0)

      assert(arraysEq(oldPixels, pixels, 0, pxPos))
      check(oldPixels.length == pixels.length)
      arraysEqDropRightLemma(oldPixels, pixels, 0, pxPosOrig, pxPos)
      check(arraysEq(oldPixels, pixels, 0, pxPosOrig))

      assert(samePixels(pixels, pxPrev, pxPos, chan))
      samePixelsSingleElementRange(pixels, pxPrev, pxPos, chan)
      assert(samePixelsForall(pixels, pxPrev, pxPos, pxPosPlusChan, chan))
      if (pxPosOrig != pxPos) {
        arraysEqDropLeftLemma(oldPixels, pixels, 0, pxPosOrig, pxPos)
        assert(samePixelsForall(oldPixels, pxPrev, pxPosOrig, pxPos, chan))
        samePixelsForallUnchangedLemma(oldPixels, pixels, pxPrev, pxPosOrig, pxPos, chan)
        assert(samePixelsForall(pixels, pxPrev, pxPosOrig, pxPos, chan))

        samePixelsForallCombinedLemma(pixels, pxPrev, pxPosOrig, pxPos, pxPosPlusChan, chan)
        check(samePixelsForall(pixels, pxPrev, pxPosOrig, pxPosPlusChan, chan))
      }
    }
    assert((pxPosOrig != pxPos) ==> samePixelsForall(pixels, pxPrev, pxPosOrig, pxPosPlusChan, chan))

    if (pxPosPlusChan < pixels.length) {
      ghostExpr {
        modLeqLemma(pxPosPlusChan, pixels.length, chan)
        assert(pxPosPlusChan + chan <= pixels.length)
      }
      @ghost val pixelsPreRec = freshCopy(pixels)
      writeRemainingPixels(pixels, pxPrev, pxPosPlusChan, pxPosOrig)
      ghostExpr {
        assert(pixelsPreRec.length == pixels.length)
        check(pixelsPreRec.length == pixels.length)
        assert(arraysEq(pixelsPreRec, pixels, 0, pxPosOrig))
        assert(arraysEq(oldPixels, pixelsPreRec, 0, pxPosOrig))
        arraysEqTransLemma(oldPixels, pixelsPreRec, pixels, 0, pxPosOrig)
        check(arraysEq(oldPixels, pixels, 0, pxPosOrig))

        check(samePixelsForall(pixels, pxPrev, pxPosOrig, pixels.length, chan))
      }
    } else {
      ghostExpr {
        assert(pxPosPlusChan == pixels.length)

        if (pxPosOrig != pxPos) {
          assert(samePixelsForall(pixels, pxPrev, pxPosOrig, pxPosPlusChan, chan))
          check(samePixelsForall(pixels, pxPrev, pxPosOrig, pixels.length, chan))
        } else {
          check(samePixelsForall(pixels, pxPrev, pxPosOrig, pixels.length, chan))
        }
      }
    }
  }.ensuring { _ =>
    old(pixels).length == pixels.length &&&
    arraysEq(old(pixels), pixels, 0, pxPosOrig) &&&
    samePixelsForall(pixels, pxPrev, pxPosOrig, pixels.length, chan)
  }

  def decodeLoop(index: Array[Int], pixels: Array[Byte], pxPrev: Int,
                 inPos0: Long, untilInPos: Long, pxPos0: Long)(using Ctx): DecodingIteration = {
    decreases(untilInPos - inPos0)
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < untilInPos && untilInPos <= chunksLen)

    @ghost val indexPre = freshCopy(index)
    @ghost val pixelsPre = freshCopy(pixels)
    val (res, decIter) = decodeNext(index, pixels, pxPrev, inPos0, pxPos0)
    ghostExpr { check(decIter.pxPos % chan == 0) }

    if (decIter.inPos < untilInPos && decIter.pxPos + chan <= pixels.length) {
      decodeLoop(index, pixels, decIter.px, decIter.inPos, untilInPos, decIter.pxPos)
    } else {
      decIter
    }
  }.ensuring { decIter =>
    index.length == 64 &&&
    old(pixels).length == pixels.length &&&
    pxPosInv(decIter.pxPos) &&&
    HeaderSize <= decIter.inPos
  }

  def decodeNext(index: Array[Int], pixels: Array[Byte], pxPrev: Int, inPos0: Long, pxPos0: Long)(using Ctx): (DecodedNext, DecodingIteration) = {
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < chunksLen)

    @ghost val pixelsPre = freshCopy(pixels)
    @ghost val indexPre = freshCopy(index)
    val (decRes, inPos) = doDecodeNext(index, pxPrev, inPos0)

    decRes match {
      case Run(run) =>
        val WriteRunPixelsResult(resRun, resPxPos) = writeRunPixels(pixels, pxPrev, run, pxPos0)
        ghostExpr {
          check(pxPos0 < resPxPos && resPxPos <= pixels.length && resPxPos % chan == 0)
          check(pixelsPre.length == pixels.length)
          check(arraysEq(pixelsPre, pixels, 0, pxPos0))
          check(samePixelsForall(pixels, pxPrev, pxPos0, resPxPos, chan))
          check(writeRunPixelsInv(pxPos0, run, resPxPos, resRun))
          unfold(writeRunPixelsInv(pxPos0, run, resPxPos, resRun))
          check((pxPos0 + chan + chan * run <= pixelsLen) ==> (resRun == 0 && resPxPos == pxPos0 + chan * (run + 1))) // Slow (~60s)
        }
        (decRes, DecodingIteration(pxPrev, inPos, resPxPos, resRun))

      case DiffOrIndexOrColor(px) =>
        writePixel(pixels, px, pxPos0)
        index(colorPos(px)) = px
        ghostExpr {
          check(pixelsPre.length == pixels.length)
          check(arraysEq(pixelsPre, pixels, 0, pxPos0))
          check(indexPre.updated(colorPos(px), px) == index)
          check(samePixels(pixels, px, pxPos0, chan))
        }
        (decRes, DecodingIteration(px, inPos, pxPos0 + chan, 0))
    }
  }

  @pure
  def doDecodeNext(index: Array[Int], pxPrev: Int, inPos0: Long)(using Ctx): (DecodedNext, Long) = {
    require(index.length == 64)
    require(HeaderSize <= inPos0 && inPos0 < chunksLen)
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
  }.ensuring { case (_, inPos) => inPos <= inPos0 + 5 }

  @pure
  def decodeHeader(bytes: Array[Byte]): Option[(Long, Long, Long)] = {
    require(bytes.length > HeaderSize + Padding)

    val magic = read32(bytes, 0)
    val w = read32(bytes, 4)
    val h = read32(bytes, 8)
    val chan = bytes(12)

    if (0 < w && w <= MaxWidth && 0 < h && h <= MaxHeight && magic == MagicNumber && 3 <= chan && chan <= 4)
      Some((w.toLong, h.toLong, chan.toLong))
    else
      None()
  }

  // Note: not opaque, as writeRunPixelsPureBytesEqLemma needs to see its definition.
  def writeRunPixels(pixels: Array[Byte], px: Int, run0: Long, pxPos0: Long)(using Ctx): WriteRunPixelsResult = {
    decreases(pixelsLen - pxPos0)
    require(pixels.length == pixelsLen)
    require(runInv(run0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)

    // Note: a run of 0 is possible: it means that we repeat the previous pixel once.

    val pxPos0PlusChan = pxPos0 + chan
    ghostExpr {
      modSumLemma(pxPos0, chan)
      assert(pxPos0PlusChan % chan == 0)
    }
    @ghost val pixelsPre = freshCopy(pixels)

    writePixel(pixels, px, pxPos0)

    ghostExpr {
      assert(pixels.length == pixelsPre.length)
      assert(arraysEq(pixelsPre, pixels, 0, pxPos0))

      assert(samePixels(pixels, px, pxPos0, chan))
      samePixelsSingleElementRange(pixels, px, pxPos0, chan)
      check(samePixelsForall(pixels, px, pxPos0, pxPos0PlusChan, chan))
    }

    if (run0 > 0 && pxPos0 + chan < pixels.length) {
      val run0Minus1 = run0 - 1
      @ghost val pixelsPreRec = freshCopy(pixels)

      ghostExpr {
        modLeqLemma(pxPos0PlusChan, pixels.length, chan)
        assert(pxPos0PlusChan + chan <= pixels.length)
        eqImpliesArraysEq(pixelsPreRec, pixels, 0, pxPos0)
        assert(arraysEq(pixelsPreRec, pixels, 0, pxPos0))
        assert(arraysEq(pixelsPre, pixelsPreRec, 0, pxPos0))
        assert(samePixelsForall(pixelsPreRec, px, pxPos0, pxPos0PlusChan, chan))
      }

      val WriteRunPixelsResult(run2, pxPos2) = writeRunPixels(pixels, px, run0Minus1, pxPos0PlusChan)

      ghostExpr {
        assert(pixels.length == pixelsPre.length)
        assert(pxPos0PlusChan < pxPos2)
        assert(arraysEq(pixelsPreRec, pixels, 0, pxPos0PlusChan))
        assert(samePixelsForall(pixels, px, pxPos0PlusChan, pxPos2, chan))

        // 2.
        arraysEqDropRightLemma(pixelsPreRec, pixels, 0, pxPos0, pxPos0PlusChan)
        assert(arraysEq(pixelsPreRec, pixels, 0, pxPos0))
        arraysEqTransLemma(pixelsPre, pixelsPreRec, pixels, 0, pxPos0)
        check(arraysEq(pixelsPre, pixels, 0, pxPos0))

        // 3.
        arraysEqDropLeftLemma(pixelsPreRec, pixels, 0, pxPos0, pxPos0PlusChan)
        assert(arraysEq(pixelsPreRec, pixels, pxPos0, pxPos0PlusChan))
        samePixelsForallUnchangedLemma(pixelsPreRec, pixels, px, pxPos0, pxPos0PlusChan, chan)
        assert(samePixelsForall(pixels, px, pxPos0, pxPos0PlusChan, chan))
        samePixelsForallCombinedLemma(pixels, px, pxPos0, pxPos0PlusChan, pxPos2, chan)
        check(samePixelsForall(pixels, px, pxPos0, pxPos2, chan))

        // 4.
        assert(pxPos0 + chan < pxPos2)
        check(pxPos0 < pxPos2)

        // 7.
        check(((pxPos0 + chan + run0 * chan <= pixels.length) ==> (run2 == 0 && pxPos2 == pxPos0 + chan * (run0 + 1))) because {
          val lhs0 = pxPos0PlusChan + chan + run0Minus1 * chan
          val rhs0 = pxPos0PlusChan + chan * (run0Minus1 + 1)
          assert((lhs0 <= pixels.length) ==> (run2 == 0 && pxPos2 == rhs0))

          val lhs1 = pxPos0 + chan + chan + (run0 - 1) * chan
          val rhs1 = pxPos0 + chan + chan * run0
          assert(lhs1 == lhs0)
          assert(rhs1 == rhs0)

          val lhs2 = pxPos0 + chan + chan + run0 * chan - chan
          val rhs2 = pxPos0 + chan * (run0 + 1)
          assert(lhs2 == lhs1)
          assert(rhs2 == rhs1)

          val lhs3 = pxPos0 + chan + run0 * chan
          assert(lhs3 == lhs2)

          assert(lhs3 == lhs0)
          assert(rhs2 == rhs0)
          assert((lhs3 <= pixels.length) ==> (run2 == 0 && pxPos2 == rhs2))

          check((pxPos0 + chan + run0 * chan <= pixels.length) ==> (run2 == 0 && pxPos2 == pxPos0 + chan * (run0 + 1)))
          trivial
        })
      }
      WriteRunPixelsResult(run2, pxPos2)
    } else {
      WriteRunPixelsResult(run0, pxPos0 + chan)
    }
  }.ensuring { case WriteRunPixelsResult(run2, pxPos2) =>
    old(pixels).length == pixels.length &&&
    arraysEq(old(pixels), pixels, 0, pxPos0) &&&
    samePixelsForall(pixels, px, pxPos0, pxPos2, chan) &&&
    pxPos0 < pxPos2 &&&
    pxPos2 <= pixels.length &&&
    pxPos2 % chan == 0 &&&
    writeRunPixelsInv(pxPos0, run0, pxPos2, run2)
  }

  // Note: not opaque, as writePixelPureBytesEqLemma needs to see its definition.
  def writePixel(pixels: Array[Byte], px: Int, pxPos: Long)(using Ctx): Unit = {
    require(pixels.length == pixelsLen)
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)

    @ghost val pixelsPre = freshCopy(pixels)
    ghostExpr {
      eqImpliesArraysEq(pixelsPre, pixels, 0, pxPos)
      assert(arraysEq(pixelsPre, pixels, 0, pxPos))
    }

    pixels(pxPos.toInt) = Pixel.r(px)
    pixels(pxPos.toInt + 1) = Pixel.g(px)
    pixels(pxPos.toInt + 2) = Pixel.b(px)

    if (chan == 4) {
      pixels(pxPos.toInt + 3) = Pixel.a(px)
      ghostExpr {
        updatedAtArraysEq(pixelsPre, pxPos, Pixel.r(px), Pixel.g(px), Pixel.b(px), Pixel.a(px))
        check(arraysEq(pixelsPre, pixels, 0, pxPos))
      }
    } else {
      ghostExpr {
        updatedAtArraysEq(pixelsPre, pxPos, Pixel.r(px), Pixel.g(px), Pixel.b(px))
        check(arraysEq(pixelsPre, pixels, 0, pxPos))
      }
    }
  }.ensuring { _ =>
    old(pixels).length == pixels.length &&&
    arraysEq(old(pixels), pixels, 0, pxPos) &&&
    samePixels(pixels, px, pxPos, chan)
  }

  def decodeDiff(pxPrev: Int, b1: Int): Int = {
    require((b1 & Mask2) == OpDiff)
    Pixel.incremented(pxPrev)(
      (((b1 >>> 4) & 0x03) - 2).toByte,
      (((b1 >>> 2) & 0x03) - 2).toByte,
      ((b1 & 0x03) - 2).toByte)
  }

  def decodeLuma(pxPrev: Int, b1: Int, b2: Int): Int = {
    require((b1 & Mask2) == OpLuma)
    val vg = (b1 & 0x3f) - 32
    Pixel.incremented(pxPrev)(
      (vg - 8 + ((b2 >>> 4) & 0x0f)).toByte,
      vg.toByte,
      (vg - 8 + (b2 & 0x0f)).toByte)
  }

  def decodeRun(b1: Int): Int = {
    require((b1 & Mask2) == OpRun)
    b1 & 0x3f
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @ghost
  def runInv(run: Long): Boolean =
    0 <= run && run <= 62

  @ghost
  def pxPosInv(pxPos: Long)(using Ctx): Boolean =
    0 <= pxPos && pxPos <= pixelsLen && pxPos % chan == 0

  @ghost
  def inPosInv(inPos: Long)(using Ctx): Boolean =
    HeaderSize <= inPos && inPos <= bytes.length - Padding

  @ghost
  def rangesInv(run: Long, inPos: Long, pxPos: Long)(using Ctx): Boolean =
    pxPosInv(pxPos) && runInv(run) && inPosInv(inPos)

  @ghost
  def rangesInv(indexLen: Long, run: Long, inPos: Long, pxPos: Long)(using Ctx): Boolean =
    pxPosInv(pxPos) && runInv(run) && inPosInv(inPos) && indexLen == 64

  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @ghost
  @pure
  def writePixelPure(pixels: Array[Byte], px: Int, pxPos: Long)(using Ctx): Array[Byte] = {
    require(pixels.length == pixelsLen)
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    val pixelsCpy = freshCopy(pixels)
    writePixel(pixelsCpy, px, pxPos)
    pixelsCpy
  }.ensuring { newPixels =>
    pixels.length == newPixels.length &&&
    arraysEq(pixels, newPixels, 0, pxPos) &&&
    samePixels(newPixels, px, pxPos, chan)
  }

  @ghost
  @pure
  @opaque
  @inlineOnce
  def writePixelPureBytesEqLemma(pixels: Array[Byte], px: Int, pxPos: Long, from: Long, until: Long, bytes2: Array[Byte])(using ctx1: Ctx): Unit = {
    require(pixels.length == pixelsLen)
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    require(bytes.length == bytes2.length)
    require(0 <= from && from <= until && until <= bytes.length)
    require(arraysEq(bytes, bytes2, from, until))

    val ctx2 = Ctx(freshCopy(bytes2), w, h, chan)
    val pix1 = writePixelPure(pixels, px, pxPos)(using ctx1)
    val pix2 = writePixelPure(pixels, px, pxPos)(using ctx2)

    {
      ()
    }.ensuring(_ => pix1 == pix2)
  }

  @ghost
  def writeRunPixelsInv(pxPos0: Long, run0: Long, pxPos2: Long, run2: Long)(using Ctx): Boolean = {
    require(runInv(run0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixelsLen)
    (pxPos0 + chan + chan * run0 <= pixelsLen) ==> (run2 == 0 && pxPos2 == pxPos0 + chan * (run0 + 1))
  }

  @ghost
  @pure
  def writeRunPixelsPure(pixels: Array[Byte], px: Int, run0: Long, pxPos0: Long)(using Ctx): (Array[Byte], Long, Long) = {
    require(pixels.length == pixelsLen)
    require(runInv(run0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    val pixelsCpy = freshCopy(pixels)
    val WriteRunPixelsResult(run2, pxPos2) = writeRunPixels(pixelsCpy, px, run0, pxPos0)
    (pixelsCpy, run2, pxPos2)
  }.ensuring { case (newPixels, run2, pxPos2) =>
    pixels.length == newPixels.length &&&
    arraysEq(pixels, newPixels, 0, pxPos0) &&&
    samePixelsForall(newPixels, px, pxPos0, pxPos2, chan) &&&
    pxPos0 < pxPos2 &&&
    pxPos2 <= newPixels.length &&&
    pxPos2 % chan == 0 &&&
    writeRunPixelsInv(pxPos0, run0, pxPos2, run2)
  }

  @ghost
  @pure
  @opaque
  @inlineOnce
  def writeRunPixelPureBytesEqLemma(pixels: Array[Byte], px: Int, run0: Long, pxPos0: Long, from: Long, until: Long, bytes2: Array[Byte])(using ctx1: Ctx): Unit = {
    decreases(pixelsLen - pxPos0)
    require(pixels.length == pixelsLen)
    require(runInv(run0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(bytes.length == bytes2.length)
    require(0 <= from && from <= until && until <= bytes.length)
    require(arraysEq(bytes, bytes2, from, until))

    val ctx2 = Ctx(freshCopy(bytes2), w, h, chan)
    val (pix1, run1, pxPos1) = writeRunPixelsPure(pixels, px, run0, pxPos0)(using ctx1)
    val (pix2, run2, pxPos2) = writeRunPixelsPure(pixels, px, run0, pxPos0)(using ctx2)

    {
      if (run0 == 0 || pxPos0 + chan >= pixels.length) {
        check(pix1 == pix2)
        check(run1 == run2)
        check(pxPos1 == pxPos2)
      } else {
        val pxPos0PlusChan = pxPos0 + chan
        modSumLemma(pxPos0, chan)
        modLeqLemma(pxPos0, pixels.length, chan)
        assert(pxPos0PlusChan % chan == 0)
        assert(pxPos0PlusChan + chan <= pixels.length)
        val pixNext1 = writePixelPure(pixels, px, pxPos0)(using ctx1)
        val (pixRec1, runRec1, pxPosRec1) = writeRunPixelsPure(pixNext1, px, run0 - 1, pxPos0PlusChan)(using ctx1)
        assert(pixRec1 == pix1)
        assert(runRec1 == run1)
        assert(pxPosRec1 == pxPos1)
        val pixNext2 = writePixelPure(pixels, px, pxPos0)(using ctx2)
        val (pixRec2, runRec2, pxPosRec2) = writeRunPixelsPure(pixNext2, px, run0 - 1, pxPos0PlusChan)(using ctx2)
        assert(pixRec2 == pix2)
        assert(runRec2 == run2)
        assert(pxPosRec2 == pxPos2)

        writePixelPureBytesEqLemma(pixels, px, pxPos0, from, until, bytes2)
        assert(pixNext1 == pixNext2)
        writeRunPixelPureBytesEqLemma(pixNext1, px, run0 - 1, pxPos0PlusChan, from, until, bytes2)
        assert(pixRec1 == pixRec2)
        assert(runRec1 == runRec2)
        assert(pxPosRec1 == pxPosRec2)

        check(pix1 == pix2)
        check(run1 == run2)
        check(pxPos1 == pxPos2)
      }
    }.ensuring { _ =>
      pix1 == pix2 &&&
      run1 == run2 &&&
      pxPos1 == pxPos2
    }
  }

  @ghost
  @pure
  def decodeNextPure(index: Array[Int], pixels: Array[Byte], pxPrev: Int, inPos0: Long, pxPos0: Long)(using Ctx): (Array[Int], Array[Byte], DecodedNext, DecodingIteration) = {
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < chunksLen)

    val indexPre = freshCopy(index)
    val pixelsPre = freshCopy(pixels)
    val (decRes, decIter) = decodeNext(indexPre, pixelsPre, pxPrev, inPos0, pxPos0)
    (indexPre, pixelsPre, decRes, decIter)
  }.ensuring {
    case (indexPre, pixelsPre, _, decIter) =>
      indexPre.length == 64 &&&
      pixelsPre.length == pixels.length &&&
      0 <= decIter.inPos &&&
      inPos0 < decIter.inPos &&&
      decIter.pxPos % chan == 0
  }

  @ghost
  @pure
  @opaque
  @inlineOnce
  def decodeHeaderBytesEqLemma(bytes: Array[Byte], bytes2: Array[Byte]): Unit = {
    require(bytes.length > HeaderSize + Padding)
    require(bytes.length == bytes2.length)
    require(arraysEq(bytes, bytes2, 0, HeaderSize))

    val res1 = decodeHeader(bytes)
    val res2 = decodeHeader(bytes2)

    {
      arraysEqAtIndices(bytes, bytes2, 0, HeaderSize, 0, 14)
      check(res1 == res2)
    }.ensuring(_ => res1 == res2)
  }

  @ghost
  @pure
  @opaque
  @inlineOnce
  def decodeLemma(until: Long)(using Ctx): Unit = {
    require(HeaderSize + Padding < until && until <= bytes.length)
    val readMagic = read32(bytes, 0)
    val readW = read32(bytes, 4)
    val readH = read32(bytes, 8)
    val readChan = bytes(12)
    require(readMagic == MagicNumber)
    require(readW == w.toInt)
    require(readH == h.toInt)
    require(readChan.toLong == chan)

    val SomeMut(DecodedResult(decodedPixels, ww, hh, cchan)) = decode(bytes, until)
    val initIndex = Array.fill(64)(0)
    val initPixels = Array.fill(w.toInt * h.toInt * chan.toInt)(0: Byte)
    val initPx = Pixel.fromRgba(0, 0, 0, 255.toByte)
    val (_, decodedPixLoop, decIter) = decodeLoopPure(initIndex, initPixels, initPx, HeaderSize, until - Padding, 0)

    {
      check(initPixels.length == decodedPixLoop.length)
      check(decodedPixels.length == initPixels.length)
      modMultLemma(w, h, chan)
      check(decodedPixels.length % chan == 0)
      check(0 <= decIter.pxPos && decIter.pxPos <= decodedPixels.length)
      check(decIter.pxPos % chan == 0)
    }.ensuring { _ =>
      arraysEq(decodedPixLoop, decodedPixels, 0, decIter.pxPos) &&&
      ((decIter.pxPos != decodedPixels.length) ==> samePixelsForall(decodedPixels, decIter.px, decIter.pxPos, decodedPixels.length, chan))
    }
  }

  @ghost
  @pure
  def decodeLoopPure(index: Array[Int], pixels: Array[Byte], pxPrev: Int,
                      inPos0: Long, untilInPos: Long, pxPos0: Long)(using Ctx): (Array[Int], Array[Byte], DecodingIteration) = {
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < untilInPos && untilInPos <= chunksLen)

    val indexCpy = freshCopy(index)
    val pixelsCpy = freshCopy(pixels)
    val res = decodeLoop(indexCpy, pixelsCpy, pxPrev, inPos0, untilInPos, pxPos0)
    (indexCpy, pixelsCpy, res)
  }.ensuring { case (indexCpy, pixelsCpy, res) =>
    0 <= res.pxPos &&& res.pxPos <= pixels.length &&&
    res.pxPos % chan == 0
    indexCpy.length == 64 &&&
    pixelsCpy.length == pixels.length
  }

  @ghost
  @opaque
  @inlineOnce
  @pure
  def decodeLoopPureNextLemma(index: Array[Int],
                               pixels: Array[Byte],
                               pxPrev: Int,
                               inPos0: Long,
                               inPos1: Long,
                               pxPos0: Long)(using Ctx): Unit = {
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < inPos1 && inPos1 <= chunksLen)

    val res1 = decodeLoopPure(index, pixels, pxPrev, inPos0, inPos1, pxPos0)
    val index1 = res1._1
    val pixels1 = res1._2
    val decIter1 = res1._3
    val resNext = decodeNextPure(index, pixels, pxPrev, inPos0, pxPos0)
    val indexNext = resNext._1
    val pixelNext = resNext._2
    val decIterNext = resNext._4
    require(decIterNext.inPos < inPos1 && decIterNext.pxPos < pixels.length && decIterNext.pxPos + chan <= pixels.length)
    val res2 = decodeLoopPure(indexNext, pixelNext, decIterNext.px, decIterNext.inPos, inPos1, decIterNext.pxPos)
    val index2 = res2._1
    val pixels2 = res2._2
    val decIter2 = res2._3

    {
      ()
    }.ensuring { _ =>
      decIter1 == decIter2 &&&
      index1 == index2 &&&
      pixels1 == pixels2
    }
  }

  @ghost
  @opaque
  @inlineOnce
  @pure
  def decodeLoopPureBytesEqLemma(index: Array[Int],
                                 pixels: Array[Byte],
                                 pxPrev: Int,
                                 inPos0: Long,
                                 untilInPos: Long,
                                 pxPos0: Long,
                                 bytes2: Array[Byte])(using ctx1: Ctx): Unit = {
    decreases(untilInPos - inPos0)
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < untilInPos && untilInPos <= chunksLen)
    require(bytes.length == bytes2.length)
    require(arraysEq(bytes, bytes2, inPos0, untilInPos))

    val ctx2 = Ctx(freshCopy(bytes2), w, h, chan)
    val res1 = decodeLoopPure(index, pixels, pxPrev, inPos0, untilInPos, pxPos0)(using ctx1)
    val ix1 = res1._1
    val pix1 = res1._2
    val decIter1 = res1._3
    require(decIter1.pxPos <= pixels.length)
    require(decIter1.inPos == untilInPos)
    val res2 = decodeLoopPure(index, pixels, pxPrev, inPos0, untilInPos, pxPos0)(using ctx2)
    val ix2 = res2._1
    val pix2 = res2._2
    val decIter2 = res2._3

    {
      assert(ctx2.bytes == bytes2)
      val (ix1Next, pix1Next, _, decIter1Next) = decodeNextPure(index, pixels, pxPrev, inPos0, pxPos0)(using ctx1)
      val (ix2Next, pix2Next, _, decIter2Next) = decodeNextPure(index, pixels, pxPrev, inPos0, pxPos0)(using ctx2)

      assert(inPos0 < decIter1Next.inPos)
      assert(decIter1Next.inPos <= decIter1.inPos)
      arraysEqDropRightLemma(bytes, bytes2, inPos0, decIter1Next.inPos, untilInPos)
      assert(arraysEq(bytes, bytes2, inPos0, decIter1Next.inPos))
      decodeNextPureBytesEqLemma(index, pixels, pxPrev, inPos0, pxPos0, bytes2)
      assert(decIter1Next == decIter2Next)
      assert(ix1Next == ix2Next)
      assert(pix1Next == pix2Next)

      if (decIter1Next.inPos == decIter1.inPos) {
        assert(decIter1Next.inPos == untilInPos)
        assert(ix1Next == ix1)
        assert(pix1Next == pix1)
        assert(decIter1Next == decIter1)
        check(ix1 == ix2)
        check(pix1 == pix2)
        check(decIter1 == decIter2)
      } else {
        assert(0 <= decIter1Next.inPos && decIter1Next.inPos < decIter1.inPos)
        assert(ix1Next.length == 64 && pixels.length == pix1Next.length)
        assert(decIter1Next.pxPos < pixels.length)
        assert(decIter1Next.pxPos + chan <= pixels.length)

        arraysEqDropLeftLemma(bytes, bytes2, inPos0, decIter1Next.inPos, untilInPos)
        assert(arraysEq(bytes, bytes2, decIter1Next.inPos, untilInPos))
        decodeLoopPureBytesEqLemma(ix1Next, pix1Next, decIter1Next.px, decIter1Next.inPos, untilInPos, decIter1Next.pxPos, bytes2)
        val (ix1Rec, pix1Rec, decIter1Rec) = decodeLoopPure(ix1Next, pix1Next, decIter1Next.px, decIter1Next.inPos, untilInPos, decIter1Next.pxPos)(using ctx1)
        val (ix2Rec, pix2Rec, decIter2Rec) = decodeLoopPure(ix1Next, pix1Next, decIter1Next.px, decIter1Next.inPos, untilInPos, decIter1Next.pxPos)(using ctx2)
        assert(ix1Rec == ix2Rec)
        assert(pix1Rec == pix2Rec)
        assert(decIter1Rec == decIter2Rec)

        decodeLoopPureNextLemma(index, pixels, pxPrev, inPos0, untilInPos, pxPos0)
        assert(ix1 == ix1Rec)
        assert(pix1 == pix1Rec)
        assert(decIter1 == decIter1Rec)

        check(ix1 == ix2)
        check(pix1 == pix2)
        check(decIter1 == decIter2)
      }
    }.ensuring { _ =>
      ix1 == ix2 &&&
      pix1 == pix2 &&&
      decIter1 == decIter2
    }
  }

  @ghost
  @opaque
  @inlineOnce
  @pure
  def decodeLoopPureMergedLemma(index: Array[Int],
                                pixels: Array[Byte],
                                pxPrev: Int,
                                inPos0: Long,
                                inPos1: Long,
                                inPos2: Long,
                                pxPos0: Long)(using Ctx): Unit = {
    decreases(inPos2 - inPos0)
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < inPos1 && inPos1 < inPos2 && inPos2 <= chunksLen)
    val res1 = decodeLoopPure(index, pixels, pxPrev, inPos0, inPos1, pxPos0)
    val index1 = res1._1
    val pixels1 = res1._2
    val decIter1 = res1._3
    require(decIter1.pxPos < pixels.length && decIter1.pxPos + chan <= pixels.length)
    require(decIter1.inPos == inPos1)
    val res2 = decodeLoopPure(index1, pixels1, decIter1.px, inPos1, inPos2, decIter1.pxPos)
    val index2 = res2._1
    val pixels2 = res2._2
    val decIter2 = res2._3
    val res3 = decodeLoopPure(index, pixels, pxPrev, inPos0, inPos2, pxPos0)
    val index3 = res3._1
    val pixels3 = res3._2
    val decIter3 = res3._3

    {
      val (indexNext, pixelNext, _, decIterNext) = decodeNextPure(index, pixels, pxPrev, inPos0, pxPos0)
      if (decIterNext.inPos == decIter1.inPos) {
        check(decIter2.inPos == decIter3.inPos)
        check(decIter2.pxPos == decIter3.pxPos)
      } else {
        assert(0 <= decIterNext.inPos && decIterNext.inPos < decIter1.inPos)
        assert(indexNext.length == 64 && pixels.length == pixelNext.length)
        assert(decIterNext.pxPos < pixels.length)
        assert(decIterNext.pxPos + chan <= pixels.length)

        val (index1Rec, pixels1Rec, decIter1Rec) = decodeLoopPure(indexNext, pixelNext, decIterNext.px, decIterNext.inPos, inPos1, decIterNext.pxPos)
        decodeLoopPureNextLemma(index, pixels, pxPrev, inPos0, inPos1, pxPos0)
        assert(decIter1Rec == decIter1)
        assert(index1Rec == index1)
        assert(pixels1Rec == pixels1)

        val (index2Rec, pixels2Rec, decIter2Rec) = decodeLoopPure(index1Rec, pixels1Rec, decIter1Rec.px, inPos1, inPos2, decIter1Rec.pxPos)

        val (index3Rec, pixels3Rec, decIter3Rec) = decodeLoopPure(indexNext, pixelNext, decIterNext.px, decIterNext.inPos, inPos2, decIterNext.pxPos)

        decodeLoopPureMergedLemma(indexNext, pixelNext, decIterNext.px, decIterNext.inPos, inPos1, inPos2, decIterNext.pxPos)
        assert(decIter2Rec == decIter3Rec)

        decodeLoopPureNextLemma(index, pixels, pxPrev, inPos0, inPos2, pxPos0)
        assert(decIter3Rec == decIter3)
        assert(index3Rec == index3)
        assert(pixels3Rec == pixels3)

        assert(decodeLoopPure(index1Rec, pixels1Rec, decIter1Rec.px, inPos1, inPos2, decIter1Rec.pxPos) ==
          decodeLoopPure(index1, pixels1, decIter1.px, inPos1, inPos2, decIter1.pxPos))
        assert(decIter2Rec == decIter2)
        assert(index2Rec == index2)
        assert(pixels2Rec == pixels2)

        check(decIter2 == decIter3)
        assert(index2 == index3)
        assert(pixels2 == pixels3)
      }
    }.ensuring { _ =>
      decIter2 == decIter3 &&&
      index2 == index3 &&&
      pixels2 == pixels3
    }
  }

  @ghost
  @opaque
  @inlineOnce
  @pure
  def decodeNextPureBytesEqLemma(index: Array[Int], pixels: Array[Byte], pxPrev: Int, inPos0: Long, pxPos0: Long, bytes2: Array[Byte])(using ctx1: Ctx): Unit = {
    require(index.length == 64)
    require(pixels.length == pixelsLen)
    require(inPosInv(inPos0))
    require(pxPosInv(pxPos0))
    require(pxPos0 + chan <= pixels.length)
    require(inPos0 < chunksLen)
    require(bytes.length == bytes2.length)
    val ctx2 = Ctx(freshCopy(bytes2), w, h, chan)
    val resNext1 = decodeNextPure(index, pixels, pxPrev, inPos0, pxPos0)(using ctx1)
    val ix1 = resNext1._1
    val pix1 = resNext1._2
    val res1 = resNext1._3
    val decIter1 = resNext1._4

    require(arraysEq(bytes, bytes2, inPos0, decIter1.inPos))
    val resNext2 = decodeNextPure(index, pixels, pxPrev, inPos0, pxPos0)(using ctx2)
    val ix2 = resNext2._1
    val pix2 = resNext2._2
    val res2 = resNext2._3
    val decIter2 = resNext2._4

    {
      doDecodeNextBytesEqLemma(index, pxPrev, inPos0, bytes2)
      check(res1 == res2)
      check(ix1 == ix2)
      assert(bytes(inPos0.toInt) == bytes2(inPos0.toInt))
      assert(decIter1.inPos <= inPos0 + 5)
      assert((inPos0 + 1 < decIter1.inPos) ==> {
        arraysEqAtIndex(bytes, bytes2, inPos0, decIter1.inPos, inPos0 + 1)
        bytes((inPos0 + 1).toInt) == bytes2((inPos0 + 1).toInt)
      })
      assert((inPos0 + 2 < decIter1.inPos) ==> {
        arraysEqAtIndex(bytes, bytes2, inPos0, decIter1.inPos, inPos0 + 2)
        bytes((inPos0 + 2).toInt) == bytes2((inPos0 + 2).toInt)
      })
      assert((inPos0 + 3 < decIter1.inPos) ==> {
        arraysEqAtIndex(bytes, bytes2, inPos0, decIter1.inPos, inPos0 + 3)
        bytes((inPos0 + 3).toInt) == bytes2((inPos0 + 3).toInt)
      })
      assert((inPos0 + 4 < decIter1.inPos) ==> {
        arraysEqAtIndex(bytes, bytes2, inPos0, decIter1.inPos, inPos0 + 4)
        bytes((inPos0 + 4).toInt) == bytes2((inPos0 + 4).toInt)
      })
      val b1 = bytes(inPos0.toInt).toInt & 0xff
      if (b1 == OpRgb) {
        assert(decIter1.inPos == inPos0 + 4)
        assert(bytes((inPos0 + 1).toInt) == bytes2((inPos0 + 1).toInt))
        assert(bytes((inPos0 + 2).toInt) == bytes2((inPos0 + 2).toInt))
        assert(bytes((inPos0 + 3).toInt) == bytes2((inPos0 + 3).toInt))
        check(decIter1 == decIter2)
        check(pix1 == pix2)
      } else if (b1 == OpRgba) {
        assert(decIter1.inPos == inPos0 + 5)
        assert(bytes((inPos0 + 1).toInt) == bytes2((inPos0 + 1).toInt))
        assert(bytes((inPos0 + 2).toInt) == bytes2((inPos0 + 2).toInt))
        assert(bytes((inPos0 + 3).toInt) == bytes2((inPos0 + 3).toInt))
        assert(bytes((inPos0 + 4).toInt) == bytes2((inPos0 + 4).toInt))
        check(decIter1 == decIter2)
        check(pix1 == pix2)
      } else if ((b1 & Mask2) == OpLuma) {
        assert(decIter1.inPos == inPos0 + 2)
        assert(bytes((inPos0 + 1).toInt) == bytes2((inPos0 + 1).toInt))
        check(decIter1 == decIter2)
        check(pix1 == pix2)
      } else if ((b1 & Mask2) == OpIndex || (b1 & Mask2) == OpDiff) {
        assert(decIter1.inPos == inPos0 + 1)
        check(decIter1 == decIter2)
        check(pix1 == pix2)
      } else if ((b1 & Mask2) == OpRun) {
        assert(decIter1.inPos == inPos0 + 1)
        assert(res1 == Run(decodeRun(b1)))
        assert(res2 == Run(decodeRun(b1)))
        writeRunPixelPureBytesEqLemma(pixels, pxPrev, decodeRun(b1), pxPos0, inPos0, decIter1.inPos, bytes2)
        check(decIter1 == decIter2)
        check(pix1 == pix2)
      } else {
        assert(res1 == DiffOrIndexOrColor(pxPrev))
        assert(res2 == DiffOrIndexOrColor(pxPrev))
        assert(decIter1.inPos == inPos0 + 1)
        check(decIter1 == decIter2)
        check(pix1 == pix2)
      }
      check(decIter1 == decIter2)
      check(pix1 == pix2)
    }.ensuring { _ =>
      res1 == res2 &&&
      ix1 == ix2 &&&
      pix1 == pix2 &&&
      decIter1 == decIter2
    }
  }

  @ghost
  @opaque
  @inlineOnce
  @pure
  def doDecodeNextBytesEqLemma(index: Array[Int], pxPrev: Int, inPos0: Long, bytes2: Array[Byte])(using ctx1: Ctx): Unit = {
    require(index.length == 64)
    require(inPosInv(inPos0))
    require(inPos0 < chunksLen)
    require(bytes.length == bytes2.length)

    val ctx2 = Ctx(freshCopy(bytes2), w, h, chan)
    val (res1, inPos1) = doDecodeNext(index, pxPrev, inPos0)(using ctx1)
    require(arraysEq(bytes, bytes2, inPos0, inPos1))
    val (res2, inPos2) = doDecodeNext(index, pxPrev, inPos0)(using ctx2)

    {
      assert(bytes(inPos0.toInt) == bytes2(inPos0.toInt))
      check(inPos1 == inPos2)
      check(res1 == res2)
      ()
    }.ensuring { _ =>
      res1 == res2 &&&
      inPos1 == inPos2
    }
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @inline
  @cCode.inline
  def w(using ctx: Ctx): Long = ctx.w

  @inline
  @cCode.inline
  def h(using ctx: Ctx): Long = ctx.h

  @inline
  @cCode.inline
  def chan(using ctx: Ctx): Long = ctx.chan

  @inline
  @cCode.inline
  def pixelsLen(using ctx: Ctx): Long = ctx.pixelsLen

  @inline
  @cCode.inline
  def chunksLen(using ctx: Ctx): Long = ctx.chunksLen

  @inline
  @cCode.inline
  def bytes(using ctx: Ctx): Array[Byte] = ctx.bytes
}
