import stainless.*
import stainless.lang.{ghost as ghostExpr, inline as inlineCall, *}
import stainless.collection.*
import stainless.annotation.{cCode, inlineOnce, mutable, opaque, pure, ghost}
import stainless.proof.*
import StaticChecks.*
import common.*

object encoder {

  case class EncCtx(pixels: Array[Byte], w: Long, h: Long, chan: Long) {
    require(0 < w && w <= MaxWidth &&
      0 < h && h <= MaxHeight &&
      3 <= chan && chan <= 4 &&
      w * h * chan == pixels.length)

    @inline
    def maxSize: Long = w * h * (chan + 1) + HeaderSize + Padding

    @inline
    def pxEnd: Long = pixels.length - chan
  }

  @cCode.`export`
  case class EncodedResult(encoded: Array[Byte], length: Long)

  case class EncodingIteration(px: Int, outPos: Long, run: Long)

  case class RunUpdate(reset: Boolean, run: Long, outPos: Long)

  case class LoopIter(px: Int, pxPrev: Int, pxPos: Long)

  case class GhostDecoded(var index: Array[Int],
                          var pixels: Array[Byte],
                          var inPos: Long,
                          var pxPos: Long)

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @ghost
  @pure
  def decodeEncodeIsIdentityThm(using EncCtx): Boolean = {
    val EncodedResult(bytes, outPos) = encode()

    decoder.decode(bytes, outPos) match {
      case SomeMut(decoder.DecodedResult(decodedPixels, ww, hh, cchan)) =>
        ww == w &&
        hh == h &&
        cchan == chan &&
        arraysEq(pixels, decodedPixels, 0, pixels.length)
      case NoneMut() => false
    }
  }.holds

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @pure
  @cCode.`export`
  def encode(pixels: Array[Byte], w: Long, h: Long, chan: Long): OptionMut[EncodedResult] = {
    if (!(0 < w && w <= MaxWidth &&
      0 < h && h <= MaxHeight &&
      3 <= chan && chan <= 4 &&
      w * h * chan == pixels.length))
      NoneMut()
    else SomeMut(encode()(using EncCtx(pixels, w, h, chan)))
  }

  @pure
  @cCode.inline // To allow "returning" arrays
  def encode()(using EncCtx): EncodedResult = {
    val bytes = allocArray(maxSize.toInt)
    writeHeader(bytes)
    val index = Array.fill(64)(0)
    val pxPrev = Pixel.fromRgba(0, 0, 0, 255.toByte)
    @ghost val decoded = GhostDecoded(freshCopy(index), Array.fill(pixels.length)(0: Byte), HeaderSize, 0)
    @ghost val initDecoded = freshCopy(decoded)
    @ghost val oldBytes = freshCopy(bytes)
    val EncodingIteration(pxRes, outPos, _) = encodeLoop(index, bytes, pxPrev, 0, HeaderSize, 0, decoded)

    ghostExpr {
      assert(decodeLoopEncodeProp(bytes, pxPrev, HeaderSize, outPos, initDecoded, pxRes, decoded))
      assert(decoded.pxPos == pxEnd + chan)
      assert(pxEnd + chan == pixels.length)
      assert(decoded.pxPos == pixels.length)
      assert(arraysEq(oldBytes, bytes, 0, HeaderSize))
      assert(HeaderSize <= outPos && outPos <= maxSize - Padding)

      given decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)

      assert(pixels.length == w * h * chan)
      val (decIndex, decPixels, decIter) = decoder.decodeLoopPure(initDecoded.index, initDecoded.pixels, pxPrev, HeaderSize, outPos, 0)
      assert(decIter.pxPos % chan == 0)
      assert(decIter.inPos == outPos)
      assert(decIndex == decoded.index)
      assert(decPixels == decoded.pixels)
      assert(decIter.remainingRun == 0)
      assert(decIter.pxPos == decoded.pxPos)
      assert(decIter.pxPos == pixels.length)
      assert(decIter.inPos == decoded.inPos)
      assert(0 < w && w <= MaxWidth)
      assert(0 < h && h <= MaxHeight)
      assert(3 <= chan && chan <= 4)
      assert(pixels.length > 0)
      assert(arraysEq(pixels, decPixels, 0, pixels.length))

      {
        val readMagic = read32(oldBytes, 0)
        val readW = read32(oldBytes, 4)
        val readH = read32(oldBytes, 8)
        val readChan = oldBytes(12)
        assert(readMagic == MagicNumber)
        assert(readW == w.toInt)
        assert(readH == h.toInt)
        assert(readChan.toLong == chan)
        assert(0 < readW && readW <= MaxWidth)
        assert(0 < readH && readH <= MaxHeight)
        assert(readMagic == MagicNumber)
        assert(3 <= readChan && readChan <= 4)
        assert(readW.toLong == w)
        assert(readH.toLong == h)
        assert(readChan.toLong == chan)
        unfold(decoder.decodeHeader(oldBytes))
        assert(decoder.decodeHeader(oldBytes) == Some((w, h, chan)))
        decoder.decodeHeaderBytesEqLemma(oldBytes, bytes)
        check(decoder.decodeHeader(bytes) == Some((w, h, chan)))
      }

      decoder.decodeLemma(outPos + Padding)
      val SomeMut(decoder.DecodedResult(actuallyDecoded, ww, hh, cchan)) = decoder.decode(bytes, outPos + Padding): @unchecked
      check(ww == w)
      check(hh == h)
      check(cchan == chan)
      assert(actuallyDecoded == decoder.decodeLoopPure(initDecoded.index, initDecoded.pixels, pxPrev, HeaderSize, outPos, 0)._2)
      assert(arraysEq(pixels, actuallyDecoded, 0, pixels.length))
    }

    EncodedResult(bytes, outPos + Padding)
  }

  @opaque
  @inlineOnce
  def encodeLoop(index: Array[Int], bytes: Array[Byte], pxPrev: Int, run0: Long, outPos0: Long, pxPos: Long, @ghost decoded: GhostDecoded)(using EncCtx): EncodingIteration = {
    decreases(pixels.length - pxPos)
    require(rangesInv(index.length, bytes.length, run0, outPos0, pxPos))
    require(pxPos + chan <= pixels.length)
    require(positionsIneqInv(run0, outPos0, pxPos))
    require((chan == 3) ==> (Pixel.a(pxPrev) == 255.toByte))
    require(decoded.inPos == outPos0)
    require(decoded.index == index)
    require(decoded.pixels.length == pixels.length)
    require(pxPosInv(decoded.pxPos))
    require(decoded.pxPos + chan <= decoded.pixels.length)
    require(decoded.pxPos + chan * run0 == pxPos)
    require(arraysEq(decoded.pixels, pixels, 0, decoded.pxPos))
    require((run0 > 0) ==> samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPos, chan))

    @ghost val oldDecoded = freshCopy(decoded)
    @ghost val oldBytes = freshCopy(bytes)
    val EncodingIteration(px, outPos2, run1) = encodeSingleStep(index, bytes, pxPrev, run0, outPos0, pxPos, decoded)
    ghostExpr {
      assert(decoded.pixels.length == pixels.length)
      check(bytes.length == maxSize)
      check(oldBytes.length == bytes.length)
      check(index.length == 64)
      check(index == decoded.index)
      check(HeaderSize <= outPos2 && outPos2 <= maxSize - Padding)
      assert(rangesInv(index.length, bytes.length, run1, outPos2, pxPos))
      assert(positionsIneqInv(run1, outPos2, pxPos + chan))
      assert((chan == 3) ==> (Pixel.a(px) == 255.toByte))
      assert(decoded.inPos == outPos2)
      assert(samePixels(pixels, px, pxPos, chan)) // Precond 2 very slow (~100s), precond 4 slow (~40s)
      assert(decoded.index == index)
      assert(decoded.pxPos + chan * run1 == pxPos + chan)
      assert(decoded.pxPos % chan == 0) // Slow (~50s)
      assert(0 <= decoded.pxPos)
      assert(arraysEq(oldBytes, bytes, 0, outPos0)) // Precond 2 slow (~45s)
      assert(decoded.pixels.length == pixels.length)
      assert((outPos0 < outPos2) ==> decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, oldDecoded, px, decoded))

      modMultLemma(w, h, chan)
      assert((w * h * chan) % chan == 0)
      assert(pixels.length == w * h * chan)
      assert(pixels.length % chan == 0)
      assert(pxPosInv(pxPos))
      unfold(pxPosInv(pxPos))
      assert(pxPos % chan == 0)

      assert(0 <= outPos0 && outPos0 <= bytes.length - Padding)
      assert(outPos0 <= bytes.length)
    }

    if (pxPos + chan < pixels.length) {
      val pxPosPlusChan = pxPos + chan
      ghostExpr {
        assert(pxPosPlusChan >= 0)
        modSumLemma(pxPos, chan)
        assert(pxPosPlusChan % chan == 0)
        modLeqLemma(pxPosPlusChan, pixels.length, chan)
        assert(pxPosPlusChan + chan <= pixels.length)
        assert(rangesInv(index.length, bytes.length, run1, outPos2, pxPosPlusChan)) // Slow (~60s)

        if (outPos0 == outPos2) {
          assert(run1 == run0 + 1)
          assert(px == pxPrev)
          check(decoded == oldDecoded)

          check(decoded.pxPos + chan <= decoded.pixels.length)
          check(decoded.pxPos % chan == 0)

          check(decoded.pxPos < decoded.pixels.length)
          check(decoded.pxPos + chan <= decoded.pixels.length)
          check(arraysEq(decoded.pixels, pixels, 0, decoded.pxPos))

          samePixelsSingleElementRange(pixels, px, decoded.pxPos, chan)
          if (run0 != 0) {
            assert(0 <= decoded.pxPos)
            assert(decoded.pxPos < pxPos)
            assert(samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPos, chan))
            samePixelsForallCombinedLemma(pixels, px, decoded.pxPos, pxPos, pxPosPlusChan, chan)
            check(samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPosPlusChan, chan))
          } else {
            assert(decoded.pxPos == pxPos)
            check(samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPosPlusChan, chan))
          }
          check((run1 > 0) ==> samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPosPlusChan, chan))
          check(decoded.pxPos + chan * run1 == pxPosPlusChan)
        } else {
          assert(outPos0 < outPos2)
          assert(run1 == 0)
          assert(decoded.pxPos == pxPos + chan)
          assert(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, oldDecoded, px, decoded))

          check(decoded.pxPos < decoded.pixels.length)
          modLeqLemma(decoded.pxPos, decoded.pixels.length, chan)
          check(decoded.pxPos + chan <= decoded.pixels.length)

          assert(arraysEq(pixels, decoded.pixels, 0, decoded.pxPos))
          arraysEqSymLemma(pixels, decoded.pixels, 0, decoded.pxPos)
          check(arraysEq(decoded.pixels, pixels, 0, decoded.pxPos))
          check((run1 > 0) ==> samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPosPlusChan, chan))
          check(decoded.pxPos + chan * run1 == pxPosPlusChan)
        }
      }
      @ghost val bytesPreRec = freshCopy(bytes)
      @ghost val decodedPreRec = freshCopy(decoded)
      // We do not de-structure `res` here, as this causes GenC to emit extra-instruction, which hinder TCE by gcc and clang.
      val res = encodeLoop(index, bytes, px, run1, outPos2, pxPosPlusChan, decoded)

      ghostExpr {
        val EncodingIteration(pxRes, outPosRes, _) = res
        check(bytes.length == maxSize && index == decoded.index)
        check(decoded.pixels.length == pixels.length)
        check(oldBytes.length == bytes.length)
        assert(index.length == 64 && decoded.index.length == 64)
        check(HeaderSize <= outPosRes && outPosRes <= maxSize - Padding)
        check(outPos0 < outPosRes)
        check(outPos2 < outPosRes)
        check(outPosRes <= bytes.length - Padding)
        assert(decodeLoopEncodeProp(bytes, px, outPos2, outPosRes, decodedPreRec, pxRes, decoded))
        assert(arraysEq(bytesPreRec, bytes, 0, outPos2))

        // From encodeSingleStep, which .holds for bytes and decoded prior to the recursive call:
        //   (outPos0 < outPos2) ==> decodeEncodeProp(bytesPreRec, pxPrev, pxPos, outPos0, outPos2, oldDecoded, decodedPreRec)

        if (outPos0 == outPos2) {
          assert(px == pxPrev)
          assert(oldDecoded == decodedPreRec)
          check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPosRes, oldDecoded, pxRes, decoded))
        } else {
          assert(outPos0 < outPos2)
          assert(decodeLoopEncodeProp(bytesPreRec, pxPrev, outPos0, outPos2, oldDecoded, px, decodedPreRec))

          arraysEqDropLeftLemma(bytesPreRec, bytes, 0, outPos0, outPos2)
          assert(arraysEq(bytesPreRec, bytes, outPos0, outPos2))
          decodeLoopEncodePropBytesEqLemma(bytesPreRec, bytes, pxPrev, outPos0, outPos2, oldDecoded, px, decodedPreRec)
          assert(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, oldDecoded, px, decodedPreRec))

          given decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)

          val (ix1, pix1, decIter1) = decoder.decodeLoopPure(oldDecoded.index, oldDecoded.pixels, pxPrev, outPos0, outPos2, oldDecoded.pxPos)
          assert(decIter1.pxPos == decodedPreRec.pxPos)
          assert(decIter1.inPos == decodedPreRec.inPos)
          assert(decIter1.inPos == outPos2)
          assert(decIter1.px == px)

          assert(decodedPreRec.pxPos + chan * run1 == pxPos + chan)
          assert(decodedPreRec.pxPos < pixels.length)
          assert(decIter1.pxPos + chan <= pixels.length)
          assert(decIter1.pxPos < pixels.length)
          assert(ix1 == decodedPreRec.index)
          assert(pix1 == decodedPreRec.pixels)

          assert(decodedPreRec.index.length == 64 && decodedPreRec.pixels.length == pixels.length)
          assert(HeaderSize <= outPos2 && outPos2 <= bytes.length - Padding)
          assert(outPos2 <= bytes.length)
          assert(0 <= decodedPreRec.pxPos && decodedPreRec.pxPos <= decodedPreRec.pixels.length)
          assert(decodedPreRec.pxPos % chan == 0)
          assert(decodedPreRec.index.length == 64)
          assert(decodedPreRec.pixels.length == pixels.length)
          assert(decodedPreRec.pixels.length == w * h * chan)
          assert((w * h * chan) % chan == 0)
          assert(0 <= decodedPreRec.pxPos)
          assert(decodedPreRec.pxPos <= w * h * chan)
          assert(decodedPreRec.pixels.length % chan == 0)
          assert(decoder.pxPosInv(decodedPreRec.pxPos)) // Very slow (~110s)
          val (ix2, pix2, decIter2) = decoder.decodeLoopPure(decodedPreRec.index, decodedPreRec.pixels, px, outPos2, outPosRes, decodedPreRec.pxPos)
          assert(decIter2.pxPos == decoded.pxPos)
          assert(decIter2.inPos == decoded.inPos)
          assert(ix2 == decoded.index)
          assert(pix2 == decoded.pixels)

          assert(oldDecoded.pxPos % chan == 0)
          assert(HeaderSize <= outPos0 && outPos0 <= bytes.length)
          assert(oldDecoded.index.length == 64)
          assert(oldDecoded.pixels.length == pixels.length)
          assert(oldDecoded.pixels.length == w * h * chan)
          assert((w * h * chan) % chan == 0)
          assert(oldDecoded.pixels.length % chan == 0)
          assert(0 <= oldDecoded.pxPos && oldDecoded.pxPos <= oldDecoded.pixels.length) // Very slow (~120s)
          val (ix3, pix3, decIter3) = decoder.decodeLoopPure(oldDecoded.index, oldDecoded.pixels, pxPrev, outPos0, outPosRes, oldDecoded.pxPos) // Precond 4 slow (~85s)

          assert(outPosRes <= bytes.length - Padding)
          assert(outPos0 < outPos2)
          assert(outPos2 < outPosRes)
          assert(ix1 == decodedPreRec.index)
          assert(pix1 == decodedPreRec.pixels)
          assert(decIter1.px == px)
          assert(decIter1.inPos == outPos2)
          assert(decIter1.pxPos + chan <= pixels.length)
          assert(decIter1.pxPos < pixels.length)
          assert(oldDecoded.pixels.length == pixels.length)
          assert(decIter1.pxPos + chan <= oldDecoded.pixels.length)
          assert(decIter1.pxPos < oldDecoded.pixels.length)
          decoder.decodeLoopPureMergedLemma(oldDecoded.index, oldDecoded.pixels, pxPrev, outPos0, outPos2, outPosRes, oldDecoded.pxPos)
          assert(ix2 == ix3)
          assert(pix2 == pix3)
          assert(decIter2 == decIter3)

          assert(decIter3.pxPos == decoded.pxPos)
          assert(decIter3.inPos == decoded.inPos)
          assert(ix3 == decoded.index)
          assert(pix3 == decoded.pixels)

          check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPosRes, oldDecoded, pxRes, decoded)) // Slow (~70s)
        }
        check(oldBytes.length == bytes.length)
        check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPosRes, oldDecoded, pxRes, decoded))

        arraysEqDropRightLemma(bytesPreRec, bytes, 0, outPos0, outPos2)
        arraysEqTransLemma(oldBytes, bytesPreRec, bytes, 0, outPos0)
        check(arraysEq(oldBytes, bytes, 0, outPos0))
        check(decoded.pxPos == pxEnd + chan)
      }

      res
    } else {
      @ghost val bytesPrePadded = freshCopy(bytes)
      bytes(outPos2.toInt + Padding - 1) = 1
      ghostExpr {
        check(outPos0 < outPos2)

        // Showing arraysEq(oldBytes, bytes, 0, outPos0)
        check(oldBytes.length == bytesPrePadded.length)
        check(bytesPrePadded.length == bytes.length)
        assert(arraysEq(oldBytes, bytesPrePadded, 0, outPos0))

        updatedAtArraysEq(bytesPrePadded, outPos2 + Padding - 1, 1)
        assert(arraysEq(bytesPrePadded, bytes, 0, outPos2 + Padding - 1))
        arraysEqDropRightLemma(bytesPrePadded, bytes, 0, outPos0, outPos2 + Padding - 1)
        assert(arraysEq(bytesPrePadded, bytes, 0, outPos0))
        arraysEqTransLemma(oldBytes, bytesPrePadded, bytes, 0, outPos0)
        check(arraysEq(oldBytes, bytes, 0, outPos0))

        assert(pxPos + chan == pixels.length)
        assert(pxPos == pixels.length - chan)
        assert((pxPos == pxEnd) ==> (run1 == 0))
        assert(pxPos == pxEnd)
        assert(run1 == 0)
        assert(decoded.pxPos + chan * run1 == pxPos + chan)
        assert(decoded.pxPos == pxPos + chan)
        check(decoded.pxPos == pxEnd + chan)

        // Showing decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPosRes, oldDecoded, pxRes, decoded)
        assert(decodeLoopEncodeProp(bytesPrePadded, pxPrev, outPos0, outPos2, oldDecoded, px, decoded))
        // The two arraysEqX are for the precond arraysEq(oldBytes, bytes, outPos0, outPos2)
        arraysEqDropRightLemma(bytesPrePadded, bytes, 0, outPos2, outPos2 + Padding - 1)
        arraysEqDropLeftLemma(bytesPrePadded, bytes, 0, outPos0, outPos2)
        decodeLoopEncodePropBytesEqLemma(bytesPrePadded, bytes, pxPrev, outPos0, outPos2, oldDecoded, px, decoded)
        check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, oldDecoded, px, decoded))
      }
      EncodingIteration(px, outPos2, run1)
    }
  }.ensuring { case EncodingIteration(pxRes, outPosRes, _) =>
    bytes.length == maxSize &&&
    index.length == 64 &&&
    index == decoded.index &&&
    decoded.pixels.length == pixels.length &&&
    HeaderSize <= outPosRes &&& outPosRes <= maxSize - Padding &&&
    outPos0 < outPosRes &&&
    old(bytes).length == bytes.length &&&
    arraysEq(old(bytes), bytes, 0, outPos0) &&&
    decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPosRes, old(decoded), pxRes, decoded) &&&
    decoded.pxPos == pxEnd + chan
  }

  @opaque
  @inlineOnce
  def writeHeader(bytes: Array[Byte])(using EncCtx): Unit = {
    require(bytes.length >= HeaderSize)
    write32(bytes, 0, MagicNumber)
    assert(read32(bytes, 0) == MagicNumber)

    write32(bytes, 4, w.toInt)
    assert(read32(bytes, 4) == w.toInt)

    write32(bytes, 8, h.toInt)
    assert(read32(bytes, 8) == h.toInt)

    bytes(12) = chan.toByte
    assert(bytes(12) == chan.toByte)

    bytes(13) = 0 // Color-space (unused)
  }.ensuring { _ =>
    old(bytes).length == bytes.length &&&
    read32(bytes, 0) == MagicNumber &&&
    read32(bytes, 4) == w.toInt &&&
    read32(bytes, 8) == h.toInt &&&
    bytes(12) == chan.toByte &&&
    bytes(13) == 0
  }

  @opaque
  @inlineOnce
  def encodeSingleStep(index: Array[Int], bytes: Array[Byte], pxPrev: Int, run0: Long, outPos0: Long, pxPos: Long, @ghost decoded: GhostDecoded)(using EncCtx): EncodingIteration = {
    require(rangesInv(index.length, bytes.length, run0, outPos0, pxPos))
    require(pxPos + chan <= pixels.length)
    require(positionsIneqInv(run0, outPos0, pxPos))
    require((chan == 3) ==> (Pixel.a(pxPrev) == 255.toByte))
    require(decoded.inPos == outPos0)
    require(decoded.index == index)
    require(decoded.pixels.length == pixels.length)
    require(pxPosInv(decoded.pxPos))
    require(decoded.pxPos + chan <= decoded.pixels.length)
    require(decoded.pxPos + chan * run0 == pxPos)
    require(arraysEq(decoded.pixels, pixels, 0, decoded.pxPos))
    require((run0 > 0) ==> samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPos, chan))

    assert(decoded.index.length == 64)

    val px =
      if (chan == 4) read32(pixels, pxPos.toInt)
      else {
        assert(chan == 3 && Pixel.a(pxPrev) == 255.toByte)
        Pixel.fromRgba(pixels(pxPos.toInt), pixels(pxPos.toInt + 1), pixels(pxPos.toInt + 2), Pixel.a(pxPrev))
      }
    assert((chan == 3) ==> (Pixel.a(px) == Pixel.a(pxPrev)))
    assert(samePixels(pixels, px, pxPos, chan)) // Precond 2 slow (~55s)
    given li: LoopIter = LoopIter(px, pxPrev, pxPos)

    @ghost val bytesPre = freshCopy(bytes)
    val runUpd = updateRun(bytes, run0, outPos0)
    ghostExpr {
      withinBoundsLemma(run0, outPos0, pxPos)
      assert(runUpd.reset ==> updateRunProp(bytes, run0, outPos0, runUpd))
      assert(bytesPre.length == bytes.length)
      assert(arraysEq(bytesPre, bytes, 0, outPos0))
    }
    val run1 = runUpd.run
    val outPos1 = runUpd.outPos

    @ghost val indexPre = freshCopy(index)

    val outPos2 = if (px != pxPrev) {
      assert(run1 == 0)
      assert(bool2int(px == pxPrev) == 0)

      ghostExpr {
        if (run0 == 0) {
          positionsIneqIncrementedLemma(run1, outPos1, pxPos)
          check(positionsIneqInv(run1, outPos1 + chan + 1, pxPos + chan))
        } else {
          assert(runUpd.reset && outPos1 <= outPos0 + 2 && run0 > 0)
          val lhs0 = chan * (outPos0 - HeaderSize + chan)
          val rhs0 = (chan + 1) * pxPos
          assert(lhs0 <= rhs0)
          val lhs1 = lhs0 + (chan + 1) * chan
          val rhs1 = rhs0 + (chan + 1) * chan
          assert(lhs1 <= rhs1) // Slow (~45s)
          val lhs2 = chan * (outPos0 - HeaderSize + chan + chan + 1)
          val rhs2 = (chan + 1) * (pxPos + chan)
          assert(lhs2 == lhs1)
          assert(rhs2 == rhs1)
          assert(lhs2 <= rhs2)
          val lhs3 = chan * (outPos1 - HeaderSize + chan + 1)
          assert((lhs3 <= lhs2) `because` (chan >= 3 && outPos1 <= outPos0 + 2))
          assert(lhs3 <= rhs2)
          check(positionsIneqInv(0, outPos1 + chan + 1, pxPos + chan))
        }
        assert(positionsIneqInv(0, outPos1 + chan + 1, pxPos + chan))
      }

      @ghost val bytesPreEncNoRun = freshCopy(bytes)
      assert(arraysEq(bytesPre, bytesPreEncNoRun, 0, outPos0))
      val outPos2 = encodeNoRun(index, bytes, outPos1)

      ghostExpr {
        assert(bytesPreEncNoRun.length == bytes.length)
        assert(arraysEq(bytesPreEncNoRun, bytes, 0, outPos1))
        check(positionsIneqInv(0, outPos2, pxPos + chan))
        check(HeaderSize <= outPos2 && outPos1 < outPos2 && outPos2 <= maxSize - Padding)
        check(rangesInv(index.length, bytes.length, 0, outPos1, pxPos))

        // Note: bool2int(px == pxPrev) == 0
        check((runUpd.reset ==> updateRunProp(bytes, run0, outPos0, runUpd)) because {
          if (run0 > 0 && runUpd.reset) {
            updateRunPropBytesEqLemma(bytesPreEncNoRun, run0, outPos0, runUpd, bytes)
            trivial
          } else trivial
        })

        assert((outPos2 <= bytes.length - Padding).because(bytes.length == maxSize))
        check(positionsIneqInv(0, outPos1, pxPos))
        // Precond 6 slow (~40s)
        check(encodeNoRunProp(indexPre, index, bytes, outPos1, outPos2))

        arraysEqDropRightLemma(bytesPreEncNoRun, bytes, 0, outPos0, outPos1)
        arraysEqTransLemma(bytesPre, bytesPreEncNoRun, bytes, 0, outPos0)
        check(arraysEq(bytesPre, bytes, 0, outPos0))
      }

      outPos2
    } else {
      ghostExpr {
        if (runUpd.reset) {
          assert(outPos1 <= outPos0 + 2)
          assert(run1 == 0)
          val lhs0 = chan * (outPos0 - HeaderSize + run0 * chan)
          val rhs0 = (chan + 1) * pxPos
          assert(lhs0 <= rhs0)
          val lhs1 = lhs0 + (chan + 1) * chan
          val rhs1 = rhs0 + (chan + 1) * chan
          assert(lhs1 <= rhs1) // Slow (~75s)
          val lhs2 = chan * (outPos0 - HeaderSize + run0 * chan + chan + 1)
          val rhs2 = (chan + 1) * (pxPos + chan)
          assert(lhs1 == lhs2)
          assert(rhs1 == rhs2)
          assert(lhs2 <= rhs2)
          val lhs3 = chan * (outPos0 - HeaderSize + run0 * chan + chan + 1)
          assert(lhs3 <= rhs2)
          val lhs4 = chan * (outPos1 - HeaderSize)
          assert((lhs4 <= lhs3).because(chan >= 3 && outPos1 <= outPos0 + 2 && run0 >= 0))
          assert(lhs4 <= rhs2)
          check(positionsIneqInv(run1, outPos1, pxPos + chan))
        } else {
          assert(outPos1 == outPos0 && run1 == run0 + 1 && run0 < 0x2020)
          assert(positionsIneqInv(run0, outPos0, pxPos))
          val lhs0 = chan * ((outPos0 - HeaderSize) + chan * run0)
          val rhs0 = (chan + 1) * pxPos
          assert(lhs0 <= rhs0)
          val lhs1 = lhs0 + (chan + 1) * chan
          val rhs1 = rhs0 + (chan + 1) * chan
          assert(lhs1 <= rhs1) // Slow (~60s)
          val lhs2 = chan * ((outPos0 - HeaderSize) + chan * run0 + chan + 1)
          val rhs2 = (chan + 1) * (pxPos + chan)
          assert(lhs2 == lhs1)
          assert(rhs2 == rhs1)
          assert(lhs2 <= rhs2)
          val lhs3 = chan * ((outPos0 - HeaderSize) + chan * (run0 + 1))
          assert(lhs3 <= lhs2) // We actually have lhs3 == lhs2 but lhs3 <= lhs2 is sufficient and takes way less time to verify
          assert(lhs3 <= rhs2)
          val lhs4 = chan * ((outPos1 - HeaderSize) + chan * (run0 + 1))
          assert(lhs4 == lhs3)
          assert(lhs4 <= rhs2)
          check(positionsIneqInv(run1, outPos1, pxPos + chan).because(run1 == run0 + 1))
        }

        check(rangesInv(index.length, bytes.length, run1, outPos1, pxPos))
        check(positionsIneqInv(run1, outPos1, pxPos + chan))
      }
      outPos1
    }
    assert(HeaderSize <= outPos2 && outPos2 <= maxSize - Padding)
    assert((px != pxPrev) ==> (outPos1 < outPos2))
    assert((outPos2 <= bytes.length - Padding).because(bytes.length == maxSize))
    assert(runUpd.reset ==> updateRunProp(bytes, run0, outPos0, runUpd))
    assert((px != pxPrev) ==> encodeNoRunProp(indexPre, index, bytes, outPos1, outPos2))

    @ghost val newDecoded = if (run0 > 0 && runUpd.reset && px != pxPrev) {  // Note: bool2int(px == pxPrev) == 0
      check(outPos1 < outPos2)
      assert(updateRunProp(bytes, run0, outPos0, runUpd))
      assert(encodeNoRunProp(indexPre, index, bytes, outPos1, outPos2))
      assert(indexPre.updated(colorPos(px), px) == index)

      assert(decoded.pxPos + chan * run0 <= pixels.length)
      val decoded1 = {
        val decoded1 = decodeUpdateRunPass(bytes, run0, outPos0, runUpd, decoded)
        check(pixels.length == decoded1.pixels.length)
        check(arraysEq(pixels, decoded1.pixels, 0, decoded1.pxPos))
        arraysEqDropLeftLemma(pixels, decoded1.pixels, 0, pxPos, decoded1.pxPos)
        arraysEqSymLemma(pixels, decoded1.pixels, 0, pxPos)
        check(arraysEq(decoded1.pixels, pixels, 0, pxPos))
        check(decoded1.index == indexPre)

        assert(decoded1.pxPos == decoded.pxPos + chan * run0)
        assert(decoded.pxPos + chan * run0 == pxPos)
        check(decoded1.pxPos == pxPos)
        check(decoded1.inPos == outPos1)
        check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos1, decoded, pxPrev, decoded1))

        freshCopy(decoded1)
      }
      val decoded2 = {
        val decoded2 = decodeEncodeNoRunPass(indexPre, index, bytes, outPos1, outPos2, decoded1)
        check(pixels.length == decoded2.pixels.length)
        check(decoded2.pxPos == decoded1.pxPos + chan)
        check(decoded2.pxPos % chan == 0)
        check(decoded2.inPos == outPos2)
        check(arraysEq(pixels, decoded2.pixels, 0, decoded2.pxPos))
        check(decoded2.index == decoded1.index.updated(colorPos(px), px))
        assert(decoded1.pxPos == pxPos)
        assert(pxPos + chan <= pixels.length)
        assert(decoded1.pxPos + chan <= pixels.length)
        assert(decoded1.pixels.length == pixels.length)
        assert(decoded1.pxPos + chan <= decoded1.pixels.length)
        check(decodeLoopEncodeProp(bytes, pxPrev, outPos1, outPos2, decoded1, px, decoded2))

        freshCopy(decoded2)
      }


      given decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)

      val (ix3, pix3, decIter3) = {
        assert(decoded.pixels.length == pixels.length)
        assert(pxPosInv(decoded.pxPos))
        assert(0 <= decoded.pxPos && decoded.pxPos <= decoded.pixels.length)
        assert(outPosInv(outPos0))
        unfold(outPosInv(outPos0))
        assert(HeaderSize <= outPos0 && outPos0 <= bytes.length - Padding)
        assert(decoder.inPosInv(outPos0))
        assert(decoded.index.length == 64)
        assert(outPos0 < outPos1 && outPos1 <= bytes.length - Padding)
        // For precond 2, 4, 5
        assert(pxPosInv(decoded.pxPos))
        unfold(pxPosInv(decoded.pxPos))
        assert(0 <= decoded.pxPos && decoded.pxPos <= pixels.length && decoded.pxPos % chan == 0)
        assert(decoded.pxPos + chan * run0 == pxPos)
        assert(pxPos + chan <= pixels.length)
        assert(decoded.pxPos + chan <= pixels.length)
        assert(decoded.pixels.length == pixels.length)
        assert(decoded.pxPos + chan <= decoded.pixels.length) // 5
        assert(pixels.length == w * h * chan) // 2 (and part of 4)
        assert(decoder.pxPosInv(decoded.pxPos)) // 4  Slow (~60s)
        val (ix1, pix1, decIter1) = decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos0, outPos1, decoded.pxPos)
        assert(decIter1.pxPos == decoded1.pxPos)
        assert(decIter1.pxPos == pxPos)
        assert(decIter1.inPos == outPos1)

        decoder.doDecodeNext(decoded.index, pxPrev, outPos0) match {
          case (decoder.Run(r), inPos) =>
            assert(decIter1.px == pxPrev)
            ()
          case _ =>
            assert(false)
            ()
        }

        assert(decIter1.px == pxPrev)
        assert(decIter1.remainingRun == 0)
        assert(ix1 == decoded1.index)
        assert(pix1 == decoded1.pixels)

        assert(decoded1.pxPos == pxPos)
        assert(decoded1.pixels.length == pixels.length)
        assert(pxPos + chan <= pixels.length)
        assert(decoded1.pxPos + chan <= decoded1.pixels.length)
        assert(outPos1 < outPos2 && outPos2 <= bytes.length - Padding)
        assert(pixels.length == w * h * chan)
        assert(pxPos % chan == 0)
        assert(decoder.pxPosInv(decoded1.pxPos))
        val (ix2, pix2, decIter2) = decoder.decodeLoopPure(decoded1.index, decoded1.pixels, decIter1.px, outPos1, outPos2, decoded1.pxPos)
        assert(decIter2.pxPos == decoded2.pxPos)
        assert(decIter2.inPos == outPos2)
        assert(decIter2.remainingRun == 0)
        assert(decIter2.px == px)
        assert(ix2 == decoded2.index)
        assert(pix2 == decoded2.pixels)

        val (ix3, pix3, decIter3) = decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos0, outPos2, decoded.pxPos)
        assert(pxPos < pixels.length && pxPos + chan <= pixels.length)
        assert(decIter1.pxPos < decoded.pixels.length)
        assert(decIter1.pxPos + chan <= decoded.pixels.length) // Very slow (~90s)
        // Precond 7 slow (~45s)
        decoder.decodeLoopPureMergedLemma(decoded.index, decoded.pixels, pxPrev, outPos0, outPos1, outPos2, decoded.pxPos)
        check(ix3 == decoded2.index)
        check(pix3 == decoded2.pixels)
        check(decIter3.pxPos == decoded2.pxPos)
        check(decIter3.inPos == outPos2)
        check(decIter3.remainingRun == 0)
        check(decIter3.px == px)

        assert(arraysEq(pixels, decoded2.pixels, 0, decoded2.pxPos))
        assert(decIter3.pxPos == pxPos + chan)
        assert(pix3 == decoded2.pixels && decoded2.pxPos == pxPos + chan)
        check(arraysEq(pixels, pix3, 0, decIter3.pxPos))

        (freshCopy(ix3), freshCopy(pix3), decIter3)
      }
      assert((ix3, pix3, decIter3) == decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos0, outPos2, decoded.pxPos))
      check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, decoded, px, decoded2)) // Very slow (from ~75s up to ~140s)

      check(index == decoded2.index)
      assert(run1 == 0)
      check(decoded2.pxPos + chan * run1 == pxPos + chan)

      assert(outPos0 != outPos2)
      check((outPos0 == outPos2) ==> (decoded == decoded2 && run1 == run0 + 1 && px == pxPrev))

      freshCopy(decoded2)
    } else if (!(run0 > 0 && runUpd.reset) && px != pxPrev) { // Note: bool2int(px == pxPrev) == 0
      check(outPos0 == outPos1)
      assert(encodeNoRunProp(indexPre, index, bytes, outPos1, outPos2))
      assert(indexPre.updated(colorPos(px), px) == index)
      val decoded2 = decodeEncodeNoRunPass(indexPre, index, bytes, outPos1, outPos2, decoded)
      assert(decoded2.pixels.length == pixels.length)
      assert(decoded2.pxPos % chan == 0)
      assert(decoded2.pxPos == decoded.pxPos + chan)
      assert(arraysEq(pixels, decoded2.pixels, 0, decoded2.pxPos))
      check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, decoded, px, decoded2))
      check(index == decoded2.index)

      assert(run0 == 0 && run1 == 0)
      assert(decoded.pxPos == pxPos)
      check(decoded2.pxPos + chan * run1 == pxPos + chan)

      assert(outPos0 != outPos2)
      check((outPos0 == outPos2) ==> (decoded == decoded2 && run1 == run0 + 1 && px == pxPrev))

      freshCopy(decoded2)
    } else if (run0 + 1 > 0 && runUpd.reset && px == pxPrev) { // Note: bool2int(px == pxPrev) == 1
      assert(decoded.pxPos + chan * run0 <= pixels.length)
      check(outPos1 == outPos2)
      assert(updateRunProp(bytes, run0, outPos0, runUpd))
      val decoded2 = decodeUpdateRunPass(bytes, run0, outPos0, runUpd, decoded)
      assert(decoded2.pixels.length == pixels.length)
      assert(decoded2.pxPos == decoded.pxPos + chan * (run0 + 1))
      assert(decoded.pxPos + chan * run0 == pxPos)
      assert(decoded.pxPos + chan * run0 + chan == pxPos + chan)
      assert(decoded.pxPos + chan * (run0 + 1) == pxPos + chan)
      assert(decoded2.pxPos == pxPos + chan)
      assert(decoded2.pxPos % chan == 0)
      assert(arraysEq(pixels, decoded2.pixels, 0, decoded2.pxPos))
      check(decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, decoded, px, decoded2))
      check(index == decoded2.index)

      assert(run1 == 0)
      check(decoded2.pxPos + chan * run1 == pxPos + chan)

      assert(outPos0 != outPos2)
      check((outPos0 == outPos2) ==> (decoded == decoded2 && run1 == run0 + 1 && px == pxPrev))

      freshCopy(decoded2)
    } else {
      check(outPos0 == outPos1 && outPos1 == outPos2)
      check(run1 == run0 + 1 && px == pxPrev)

      assert(decoded.pxPos + chan * run0 == pxPos)
      assert(decoded.pxPos + chan * run0 + chan == pxPos + chan)
      assert(decoded.pxPos + chan * (run0 + 1) == pxPos + chan)
      check(decoded.pxPos + chan * run1 == pxPos + chan)

      assert(outPos0 == outPos2)
      check((outPos0 == outPos2) ==> (decoded == decoded && run1 == run0 + 1 && px == pxPrev))

      freshCopy(decoded)
    }

    ghostExpr {
      check(index == newDecoded.index)
      check((outPos0 < outPos2) ==> decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, decoded, px, newDecoded))
      assert(pxPosInv(pxPos))
      unfold(pxPosInv(pxPos))
      check(pxPos % chan == 0)

      modMultLemma(w, h, chan)
      assert((w * h * chan) % chan == 0)
      assert(pixels.length == w * h * chan)
      check(pixels.length % chan == 0)

      check(samePixels(pixels, px, pxPos, chan))
      check(arraysEq(bytesPre, bytes, 0, outPos0))
      check(rangesInv(index.length, bytes.length, run1, outPos2, pxPos))
      check(positionsIneqInv(run1, outPos2, pxPos + chan))
      check(pxPosInv(decoded.pxPos))
      check(newDecoded.pxPos + chan * run1 == pxPos + chan)
      check((outPos0 == outPos2) ==> (decoded == newDecoded && run1 == run0 + 1 && px == pxPrev))

      decoded.index = freshCopy(newDecoded.index)
      decoded.pixels = freshCopy(newDecoded.pixels)
      decoded.inPos = newDecoded.inPos
      decoded.pxPos = newDecoded.pxPos

      check(index == decoded.index)
    }

    EncodingIteration(px, outPos2, run1)
  }.ensuring { case EncodingIteration(px, outPos2, run1) => // Wins the "slowest to verify" award (~210s)
    // Bytes and index length are unchanged
    bytes.length == maxSize &&&
    index.length == 64 &&&
    // Range for outPos2
    outPos0 <= outPos2 &&&
    outPosInv(outPos2) &&&
    // Run-related props
    runInv(run1) &&&
    ((run1 > 0) ==> (bytes == old(bytes) && outPos2 == outPos0)) &&&
    ((pxPos == pxEnd) ==> (run1 == 0)) &&&
    // Ranges and inequality still holding
    positionsIneqInv(run1, outPos2, pxPos + chan) &&&
    rangesInv(index.length, bytes.length, run1, outPos2, pxPos) &&&
    // Alpha-channel unchanged when we only have 3 channels
    ((chan == 3) ==> (Pixel.a(px) == 255.toByte)) &&&
    index == decoded.index &&&
    decoded.pixels.length == pixels.length &&&
    pxPosInv(decoded.pxPos) &&&
    decoded.pxPos + chan * run1 == pxPos + chan &&&
    ((outPos0 < outPos2) ==> decodeLoopEncodeProp(bytes, pxPrev, outPos0, outPos2, old(decoded), px, decoded)) &&&
    ((outPos0 == outPos2) ==> (old(decoded) == decoded && run1 == run0 + 1 && px == pxPrev)) &&&
    samePixels(pixels, px, pxPos, chan) &&& // Precond 2 slow (~70s)
    arraysEq(old(bytes), bytes, 0, outPos0)
  }

  @inline
  def updateRun(bytes: Array[Byte], run0: Long, outPos0: Long)(using EncCtx, LoopIter): RunUpdate = {
    require(bytes.length == maxSize)
    require(runInv(run0))
    require(outPosInv(outPos0))
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    require(positionsIneqInv(run0, outPos0, pxPos))

    ghostExpr {
      withinBoundsLemma(run0, outPos0, pxPos)
      assert(outPos0 + run0 * chan + Padding <= maxSize)
      assert(outPos0 + 2 <= maxSize)
    }
    @ghost val bytesPre = freshCopy(bytes)

    var run = run0
    var outPos = outPos0

    if (px == pxPrev)
      run += 1

    var runReset = false
    if (run > 0 && (run == 62 || px != pxPrev || pxPos == pxEnd)) {
      val b1 = (OpRun | (run - 1)).toByte
      bytes(outPos.toInt) = b1
      outPos += 1
      ghostExpr(check(decoder.decodeRun(b1) == run - 1))
      run = 0
      runReset = true
      ghostExpr {
        updatedAtArraysEq(bytesPre, outPos0, b1)
        check(arraysEq(bytesPre, bytes, 0, outPos0))
      }
    } else {
      ghostExpr {
        assert(bytesPre == bytes)
        eqImpliesArraysEq(bytesPre, bytes, 0, outPos0)
        check(arraysEq(bytesPre, bytes, 0, outPos0))
      }
    }
    ghostExpr(check(arraysEq(bytesPre, bytes, 0, outPos0)))

    RunUpdate(runReset, run, outPos)
  }.ensuring({ ru =>
    old(bytes).length == bytes.length &&&
    arraysEq(old(bytes), bytes, 0, outPos0) &&&
    runInv(ru.run) &&&
    outPosInv(ru.outPos) &&&
    (ru.reset ==> (ru.run == 0 && ru.outPos == outPos0 + 1)) &&&
    (!ru.reset ==> (ru.outPos == outPos0)) &&&
    ((px != pxPrev && run0 == 0) ==> (ru.run == 0)) &&&
    ((px == pxPrev && !ru.reset) ==> (ru.run == run0 + 1)) &&&
    (ru.reset ==> updateRunProp(bytes, run0, outPos0, ru))
  })

  @opaque
  @inlineOnce
  def encodeNoRun(index: Array[Int], bytes: Array[Byte], outPos1: Long)(using EncCtx, LoopIter): Long = {
    require(index.length == 64)
    require(bytes.length == maxSize)
    require(outPosInv(outPos1))
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    require(positionsIneqInv(0, outPos1, pxPos))
    require((chan == 3) ==> (Pixel.a(px) == Pixel.a(pxPrev)))

    ghostExpr {
      withinBoundsLemma(0, outPos1, pxPos)
      assert(outPos1 + chan + 1 <= maxSize)

      positionsIneqIncrementedLemma(0, outPos1, pxPos)
      assert(positionsIneqInv(0, outPos1 + chan + 1, pxPos + chan)) // Needed for loopInvUpperOutPosLemma
    }

    @ghost val oldIndex = freshCopy(index)
    @ghost val oldBytes = freshCopy(bytes)

    val indexPos = colorPos(px)
    var newOutPos = outPos1

    if (index(indexPos) == px) {
      val b1 = (OpIndex | indexPos) & 0xff
      bytes(newOutPos.toInt) = b1.toByte
      newOutPos += 1
      ghostExpr {
        check(newOutPos <= maxSize - Padding)
        check(encodeNoRunProp(oldIndex, index, bytes, outPos1, newOutPos))
        updatedAtArraysEq(oldBytes, outPos1, b1.toByte)
        check(arraysEq(oldBytes, bytes, 0, outPos1))
      }
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
          check(decoder.decodeDiff(pxPrev, b1) == px)
          bytes(newOutPos.toInt) = b1.toByte
          newOutPos += 1

          ghostExpr {
            check(encodeNoRunProp(oldIndex, index, bytes, outPos1, newOutPos))
            updatedAtArraysEq(oldBytes, outPos1, b1.toByte)
            check(arraysEq(oldBytes, bytes, 0, outPos1))
          }
        } else if (vgR > -9 && vgR < 8 && vg > -33 && vg < 32 && vgB > -9 && vgB < 8) {
          val b1 = OpLuma | ((vg + 32) & 0xff)
          val b2 = (((vgR + 8) << 4) & 0xff) | ((vgB + 8) & 0xff)
          check(decoder.decodeLuma(pxPrev, b1, b2) == px)
          bytes(newOutPos.toInt) = b1.toByte
          newOutPos += 1
          bytes(newOutPos.toInt) = b2.toByte
          newOutPos += 1

          ghostExpr {
            check(encodeNoRunProp(oldIndex, index, bytes, outPos1, newOutPos))
            updatedAtArraysEq(oldBytes, outPos1, b1.toByte, b2.toByte)
            check(arraysEq(oldBytes, bytes, 0, outPos1))
          }
        } else {
          bytes(newOutPos.toInt) = OpRgb.toByte
          newOutPos += 1
          bytes(newOutPos.toInt) = Pixel.r(px)
          newOutPos += 1
          bytes(newOutPos.toInt) = Pixel.g(px)
          newOutPos += 1
          bytes(newOutPos.toInt) = Pixel.b(px)
          newOutPos += 1

          ghostExpr {
            check(encodeNoRunProp(oldIndex, index, bytes, outPos1, newOutPos))
            updatedAtArraysEq(oldBytes, outPos1, OpRgb.toByte, Pixel.r(px), Pixel.g(px), Pixel.b(px))
            check(arraysEq(oldBytes, bytes, 0, outPos1))
          }
        }

        ghostExpr {
          loopInvUpperOutPosLemma(0, outPos1, pxPos + chan, newOutPos) // For precond. 2 of withinBoundsLemma2
          withinBoundsLemma2(0, newOutPos, pxPos + chan)
          check(newOutPos <= maxSize - Padding)
          check(encodeNoRunProp(oldIndex, index, bytes, outPos1, newOutPos))
          check(arraysEq(oldBytes, bytes, 0, outPos1))
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

        ghostExpr {
          updatedAtArraysEq(oldBytes, outPos1, OpRgba.toByte, Pixel.r(px), Pixel.g(px), Pixel.b(px), Pixel.a(px))
          check(arraysEq(oldBytes, bytes, 0, outPos1))

          loopInvUpperOutPosLemma(0, outPos1, pxPos + chan, newOutPos) // For precond. 2 of withinBoundsLemma2
          withinBoundsLemma2(0, newOutPos, pxPos + chan)
          check(newOutPos <= maxSize - Padding)
          check(encodeNoRunProp(oldIndex, index, bytes, outPos1, newOutPos))
        }
      }
    }

    ghostExpr {
      assert(newOutPos <= outPos1 + chan + 1)
      check(newOutPos <= maxSize - Padding)
      loopInvUpperOutPosLemma(0, outPos1, pxPos + chan, newOutPos)
      check(rangesInv(index.length, bytes.length, 0, newOutPos, pxPos))
      check(positionsIneqInv(0, newOutPos, pxPos + chan))
      check(encodeNoRunProp(oldIndex, index, bytes, outPos1, newOutPos))
      check(arraysEq(oldBytes, bytes, 0, outPos1))
    }
    newOutPos
  }.ensuring({ newOutPos =>
    old(bytes).length == bytes.length &&&
    outPosInv(newOutPos) &&&
    outPos1 < newOutPos &&&
    positionsIneqInv(0, newOutPos, pxPos + chan) &&&
    encodeNoRunProp(old(index), index, bytes, outPos1, newOutPos) &&&
    arraysEq(old(bytes), bytes, 0, outPos1)
  })

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @ghost
  def positionsIneqInv(run: Long, outPos: Long, pxPos: Long)(using EncCtx): Boolean =
    chan * (outPos - HeaderSize + chan * run) <= (chan + 1) * pxPos

  @ghost
  def runInv(run: Long): Boolean =
    0 <= run && run < 62

  @ghost
  def pxPosInv(pxPos: Long)(using EncCtx): Boolean =
    0 <= pxPos && pxPos <= pixels.length && pxPos % chan == 0

  @ghost
  def outPosInv(outPos: Long)(using EncCtx): Boolean =
    HeaderSize <= outPos && outPos <= maxSize - Padding

  @ghost
  def rangesInv(run: Long, outPos: Long, pxPos: Long)(using EncCtx): Boolean =
    pxPosInv(pxPos) && runInv(run) && outPosInv(outPos)

  @ghost
  def rangesInv(indexLen: Long, bytesLen: Long, run: Long, outPos: Long, pxPos: Long)(using EncCtx): Boolean =
    pxPosInv(pxPos) && runInv(run) && outPosInv(outPos) && bytesLen == maxSize && indexLen == 64

  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @ghost
  @opaque
  @inlineOnce
  def withinBoundsLemma(run: Long, outPos: Long, pxPos: Long)(using EncCtx): Unit = {
    require(rangesInv(run, outPos, pxPos))
    require(positionsIneqInv(run, outPos, pxPos))
    require(pxPos + chan <= pixels.length)
    assert(chan * (outPos - HeaderSize + chan * run + chan + 1) <= (chan + 1) * (pxPos + chan))
    assert(chan * (outPos - HeaderSize + chan * run + chan + 1) <= (chan + 1) * pixels.length)
    assert(pixels.length * (chan + 1) == w * h * chan * (chan + 1))
    assert(chan * (maxSize - HeaderSize - Padding) == w * h * chan * (chan + 1))
    assert((chan + 1) * pixels.length == chan * (maxSize - HeaderSize - Padding))
    assert(chan * (outPos - HeaderSize + chan * run + chan + 1) <= chan * (maxSize - HeaderSize - Padding))
    assert(outPos - HeaderSize + chan * run + chan + 1 <= maxSize - HeaderSize - Padding) // ~23s
  }.ensuring(_ => outPos + run * chan + chan + 1 + Padding <= maxSize)

  @ghost
  @opaque
  @inlineOnce
  def withinBoundsLemma2(run: Long, outPos: Long, pxPos: Long)(using EncCtx): Unit = {
    require(rangesInv(run, outPos, pxPos))
    require(positionsIneqInv(run, outPos, pxPos))
    val lhs = outPos - HeaderSize + chan * run + chan + 1
    assert(chan * lhs <= (chan + 1) * (pxPos + chan))
    assert(chan * lhs <= (chan + 1) * (pixels.length + chan))
    assert(pixels.length * (chan + 1) == w * h * chan * (chan + 1))
    val maxPxPos = maxSize - HeaderSize - Padding
    assert(chan * maxPxPos == w * h * chan * (chan + 1))
    assert((chan + 1) * pixels.length == chan * maxPxPos)
    assert(chan * lhs - (chan + 1) * chan <= (chan + 1) * (pixels.length + chan) - (chan + 1) * chan)
    val lhs2 = lhs - chan - 1
    assert(chan * lhs2 <= (chan + 1) * pixels.length)
    assert(chan * lhs2 <= chan * maxPxPos)
    assert(outPos - HeaderSize + chan * run <= maxPxPos)
    assert(outPos + chan * run <= maxSize - Padding)
    assert(outPos + chan * run + Padding <= maxSize)
  }.ensuring(_ => outPos + chan * run + Padding <= maxSize)

  @ghost
  @opaque
  @inlineOnce
  def positionsIneqIncrementedLemma(run: Long, outPos: Long, pxPos: Long)(using EncCtx): Unit = {
    require(rangesInv(run, outPos, pxPos))
    require(positionsIneqInv(run, outPos, pxPos))
  }.ensuring(_ => positionsIneqInv(run, outPos + chan + 1, pxPos + chan))

  @ghost
  @opaque
  @inlineOnce
  def loopInvUpperOutPosLemma(run: Long, oldOutPos: Long, pxPos: Long, newOutPos: Long)(using EncCtx): Unit = {
    require(rangesInv(run, oldOutPos, pxPos))
    require(HeaderSize <= newOutPos && newOutPos <= oldOutPos + chan + 1)
    require(positionsIneqInv(run, oldOutPos + chan + 1, pxPos))
    assert(chan * ((oldOutPos - HeaderSize) + chan * run) <= (chan + 1) * pxPos)
    assert(chan * (newOutPos - HeaderSize) <= chan * (oldOutPos + chan + 1 - HeaderSize))
    assert(chan * ((newOutPos - HeaderSize) + chan * run) <= chan * ((oldOutPos + chan + 1 - HeaderSize) + chan * run))
  }.ensuring(_ => positionsIneqInv(run, newOutPos, pxPos))

  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @ghost
  @pure
  def decodeLoopEncodeProp(bytes: Array[Byte],
                           pxPrev: Int,
                           outPos0: Long,
                           outPos2: Long,
                           decoded: GhostDecoded,
                           px: Int,
                           newDecoded: GhostDecoded)(using EncCtx): Boolean = {
    require(bytes.length == maxSize)
    require(outPosInv(outPos0))
    require(outPosInv(outPos2))
    require(decoded.pixels.length == pixels.length)
    require(decoded.index.length == 64)
    require(pxPosInv(decoded.pxPos))
    require(decoded.pxPos + chan <= decoded.pixels.length)
    require(outPos0 < outPos2)

    given decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)
    assert(decoded.pixels.length == w * h * chan)
    assert(decoded.pixels.length % chan == 0)
    val (decIndex, decPixels, decIter) = decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos0, outPos2, decoded.pxPos)

    decoded.pxPos < decIter.pxPos &&
    decIter.pxPos <= decoded.pixels.length &&
    decIter.pxPos % chan == 0 &&
    decIter.inPos == outPos2 &&
    arraysEq(pixels, decPixels, 0, decIter.pxPos) &&
    decIter.remainingRun == 0 &&
    decIter.pxPos == newDecoded.pxPos &&
    decIter.inPos == newDecoded.inPos &&
    decIndex == newDecoded.index &&
    decPixels == newDecoded.pixels &&
    decIter.px == px
  }

  @ghost
  @pure
  @opaque
  @inlineOnce
  def decodeLoopEncodePropBytesEqLemma(bytes1: Array[Byte],
                                       bytes2: Array[Byte],
                                       pxPrev: Int,
                                       outPos0: Long,
                                       outPos2: Long,
                                       decoded: GhostDecoded,
                                       px: Int,
                                       newDecoded: GhostDecoded)(using EncCtx): Unit = {
    require(bytes1.length == maxSize)
    require(outPosInv(outPos0))
    require(outPosInv(outPos2))
    require(decoded.pixels.length == pixels.length)
    require(decoded.index.length == 64)
    require(decoded.pxPos + chan <= decoded.pixels.length)
    require(pxPosInv(decoded.pxPos))
    require(outPos0 < outPos2)
    require(decodeLoopEncodeProp(bytes1, pxPrev, outPos0, outPos2, decoded, px, newDecoded))
    require(bytes1.length == bytes2.length)
    require(arraysEq(bytes1, bytes2, outPos0, outPos2))
    require(pxPosInv(newDecoded.pxPos))

    val ctx1 = decoder.DecCtx(freshCopy(bytes1), w, h, chan)
    assert(decoded.pixels.length % chan == 0)
    assert(decoded.pixels.length == w * h * chan)
    assert(outPos0 <= bytes1.length)
    val (ix1, pix1, decIter1) = decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos0, outPos2, decoded.pxPos)(using ctx1)
    assert(decIter1.pxPos == newDecoded.pxPos)
    assert(decIter1.pxPos <= pixels.length)
    assert(decIter1.inPos == outPos2)

    val ctx2 = decoder.DecCtx(freshCopy(bytes2), w, h, chan)
    decoder.decodeLoopPureBytesEqLemma(decoded.index, decoded.pixels, pxPrev, outPos0, outPos2, decoded.pxPos, bytes2)(using ctx1)
    val (ix2, pix2, decIter2) = decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos0, outPos2, decoded.pxPos)(using ctx2)
    assert(ix1 == ix2)
    assert(pix1 == pix2)
    assert(decIter1 == decIter2)
    check(decodeLoopEncodeProp(bytes2, pxPrev, outPos0, outPos2, decoded, px, newDecoded))
  }.ensuring(_ => decodeLoopEncodeProp(bytes2, pxPrev, outPos0, outPos2, decoded, px, newDecoded))

  @ghost
  @pure
  @opaque
  @inlineOnce
  def decodeUpdateRunPass(bytes: Array[Byte], run0: Long, outPos0: Long, ru: RunUpdate, decoded: GhostDecoded)(using EncCtx, LoopIter): GhostDecoded = {
    require(bytes.length == maxSize)
    require(runInv(run0))
    require(outPosInv(outPos0))
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    require(outPos0 < bytes.length - Padding)
    val run = run0 + bool2int(px == pxPrev)
    require(run > 0)
    require(updateRunProp(bytes, run0, outPos0, ru))
    require(outPos0 < ru.outPos && ru.outPos <= bytes.length - Padding)
    require(decoded.index.length == 64)
    require(decoded.pixels.length == pixels.length)
    require(pxPosInv(decoded.pxPos))
    require(decoded.pxPos + chan <= decoded.pixels.length)
    require(decoded.pxPos + chan * run0 == pxPos)
    require(arraysEq(decoded.pixels, pixels, 0, decoded.pxPos))
    require(samePixels(pixels, px, pxPos, chan))
    require((run0 > 0) ==> samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPos, chan))

    assert(3 <= chan && chan <= 4)
    assert(decoded.pxPos + chan * run0 + chan <= pixels.length)
    assert(pxPos % chan == 0)
    assert(pixels.length % chan == 0)

    given dctx: decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)
    assert(decoded.pixels.length == w * h * chan)
    assert(decoded.pixels.length % chan == 0)
    assert(HeaderSize <= outPos0 && outPos0 <= bytes.length)
    assert(decoded.pxPos % chan == 0)
    assert(0 <= decoded.pxPos && decoded.pxPos <= pixels.length)
    assert(decoder.pxPosInv(pxPos))
    val (decIndex, decPixels, decIter) = {
      val (decIndex, decPixels, decIter) = decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos0, ru.outPos, decoded.pxPos)
      check(decIter.pxPos % chan == 0)
      updateRunPropAnyIndexLemma(bytes, decoded.index, run0, outPos0, ru)

      check(decIndex == decoded.index)
      check(decIter.px == pxPrev)
      check(decIter.inPos == ru.outPos)
      check(decIter.remainingRun == 0)
      check(decPixels.length == pixels.length)

      assert(decoder.writeRunPixelsInv(decoded.pxPos, run - 1, decIter.pxPos, decIter.remainingRun)) // Slow (~40-70s) and may spuriously fail to verify!!
      unfold(decoder.writeRunPixelsInv(decoded.pxPos, run - 1, decIter.pxPos, decIter.remainingRun))
      assert((decoded.pxPos + chan + chan * (run - 1) <= decoded.pixels.length) ==> (decIter.remainingRun == 0 && decIter.pxPos == decoded.pxPos + chan * run)) // Slow (~60s)
      assert(run - 1 <= run0)
      assert(decoded.pxPos + chan * run <= decoded.pxPos + chan * run0 + chan)
      assert(decoded.pxPos + chan * run == decoded.pxPos + chan + chan * (run - 1))
      check(decoded.pxPos + chan + chan * (run - 1) <= pixels.length)
      check(decIter.pxPos == decoded.pxPos + chan * run)

      check(decoded.pxPos < decIter.pxPos)
      check(decIter.pxPos <= decoded.pixels.length)
      assert(arraysEq(decoded.pixels, decPixels, 0, decoded.pxPos))
      assert(samePixelsForall(decPixels, pxPrev, decoded.pxPos, decIter.pxPos, chan))
      arraysEqSymLemma(decoded.pixels, pixels, 0, decoded.pxPos)
      arraysEqTransLemma(pixels, decoded.pixels, decPixels, 0, decoded.pxPos)
      check(arraysEq(pixels, decPixels, 0, decoded.pxPos))

      (freshCopy(decIndex), freshCopy(decPixels), decIter)
    }

    val pxPosPlusChan = pxPos + chan
    assert(pxPosPlusChan <= pixels.length)
    modSumLemma(pxPos, chan)
    assert(pxPosPlusChan % chan == 0)
    samePixelsSingleElementRange(pixels, px, pxPos, chan)
    assert(samePixelsForall(pixels, px, pxPos, pxPosPlusChan, chan))
    if (run0 == 0) {
      assert(px == pxPrev)
      assert(decoded.pxPos == pxPos)
      assert(decIter.pxPos == decoded.pxPos + chan)
      assert(decIter.pxPos == pxPos + chan)
      assert(decIter.pxPos == pxPosPlusChan)
      assert(samePixelsForall(decPixels, px, pxPos, pxPosPlusChan, chan))
      samePixelsForallArraysEq(pixels, decPixels, px, pxPos, pxPosPlusChan, chan)
      arraysEqCombinedLemma2(pixels, decPixels, 0, pxPos, pxPosPlusChan)
      check(arraysEq(pixels, decPixels, 0, decIter.pxPos))
    } else {
      assert(samePixelsForall(pixels, pxPrev, decoded.pxPos, pxPos, chan))
      assert(decoded.pxPos + chan * run0 == pxPos && decIter.pxPos == decoded.pxPos + chan * run) // From previous assertions
      assert(decoded.pxPos == pxPos - chan * run0)
      assert(decIter.pxPos == pxPos - chan * run0 + chan * run)
      assert(decIter.pxPos == pxPos + chan * bool2int(px == pxPrev))
      if (px == pxPrev) {
        assert(decIter.pxPos == pxPos + chan)
        samePixelsForallCombinedLemma(pixels, px, decoded.pxPos, pxPos, pxPosPlusChan, chan)
        assert(samePixelsForall(pixels, px, decoded.pxPos, decIter.pxPos, chan))
        samePixelsForallArraysEq(pixels, decPixels, px, decoded.pxPos, decIter.pxPos, chan)
        assert(arraysEq(pixels, decPixels, decoded.pxPos, decIter.pxPos))
        arraysEqCombinedLemma2(pixels, decPixels, 0, decoded.pxPos, decIter.pxPos)
        check(arraysEq(pixels, decPixels, 0, decIter.pxPos))
      } else {
        assert(decIter.pxPos == pxPos)
        assert(samePixelsForall(pixels, pxPrev, decoded.pxPos, decIter.pxPos, chan))
        samePixelsForallArraysEq(pixels, decPixels, pxPrev, decoded.pxPos, decIter.pxPos, chan)
        assert(arraysEq(pixels, decPixels, decoded.pxPos, decIter.pxPos))
        arraysEqCombinedLemma2(pixels, decPixels, 0, decoded.pxPos, decIter.pxPos)
        check(arraysEq(pixels, decPixels, 0, decIter.pxPos))
      }
      check(arraysEq(pixels, decPixels, 0, decIter.pxPos))
    }
    check(arraysEq(pixels, decPixels, 0, decIter.pxPos))

    GhostDecoded(freshCopy(decIndex), freshCopy(decPixels), decIter.inPos, decIter.pxPos)
  }.ensuring { newDecoded =>
    newDecoded.pxPos == decoded.pxPos + chan * (run0 + bool2int(px == pxPrev)) &&&
    newDecoded.pxPos % chan == 0 &&&
    newDecoded.inPos == ru.outPos &&&
    newDecoded.index == decoded.index &&&
    decodeLoopEncodeProp(bytes, pxPrev, outPos0, ru.outPos, decoded, pxPrev, newDecoded)
  }

  @ghost
  @pure
  def updateRunProp(bytes: Array[Byte], run0: Long, outPos0: Long, ru: RunUpdate)(using EncCtx, LoopIter): Boolean = {
    require(bytes.length == maxSize)
    require(runInv(run0))
    require(outPosInv(outPos0))
    require(outPos0 < bytes.length - Padding)
    val run = run0 + bool2int(px == pxPrev)
    require(run > 0)

    val dummyIndex = Array.fill(64)(0)
    given decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)
    decoder.doDecodeNext(dummyIndex, pxPrev, outPos0) match {
      case (decoder.Run(r), inPos) => r + 1 == run && inPos == ru.outPos
      case _ => false
    }
  }

  @ghost
  @pure
  @opaque
  @inlineOnce
  def updateRunPropAnyIndexLemma(bytes: Array[Byte], index: Array[Int], run0: Long, outPos0: Long, ru: RunUpdate)(using EncCtx, LoopIter): Unit = {
    require(bytes.length == maxSize)
    require(runInv(run0))
    require(outPosInv(outPos0))
    require(outPos0 < bytes.length - Padding)
    val run = run0 + bool2int(px == pxPrev)
    require(run > 0)
    require(updateRunProp(bytes, run0, outPos0, ru))
    require(index.length == 64)
    val ctx = decoder.DecCtx(freshCopy(bytes), w, h, chan)
    val decodedNextRes = decoder.doDecodeNext(index, pxPrev, outPos0)(using ctx)

    {
      ()
    }.ensuring(_ => decodedNextRes match {
      case (decoder.Run(r), inPos) => r + 1 == run && inPos == ru.outPos
      case _ => false
    })
  }

  @ghost
  @pure
  def updateRunPropBytesEqLemma(bytes: Array[Byte], run0: Long, outPos0: Long,
                                ru: RunUpdate, bytes2: Array[Byte])(using EncCtx, LoopIter): Unit = {
    require(bytes.length == maxSize)
    require(runInv(run0))
    require(outPosInv(outPos0))
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    require(outPos0 < bytes.length - Padding)
    val run = run0 + bool2int(px == pxPrev)
    require(run > 0)
    require(updateRunProp(bytes, run0, outPos0, ru))
    require(bytes.length == bytes2.length)
    require(arraysEq(bytes, bytes2, 0, ru.outPos))
    require(outPos0 + 1 <= ru.outPos)

    val dctx1: decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)
    val dctx2: decoder.DecCtx = decoder.DecCtx(freshCopy(bytes2), w, h, chan)
    val dummyIndex = Array.fill(64)(0)
    val res1 = decoder.doDecodeNext(dummyIndex, pxPrev, outPos0)(using dctx1)
    val res2 = decoder.doDecodeNext(dummyIndex, pxPrev, outPos0)(using dctx2)

    val b1Bytes1 = bytes(outPos0.toInt).toInt & 0xff
    val b1Bytes2 = bytes2(outPos0.toInt).toInt & 0xff
    arraysEqAtIndex(bytes, bytes2, 0, ru.outPos, outPos0)
    assert(b1Bytes1 == b1Bytes2)
    assert((b1Bytes1 & Mask2) == OpRun)
    check(res1 == res2)
    check((outPos0 < bytes2.length - Padding).because(bytes.length == bytes2.length))
  }.ensuring(_ => updateRunProp(bytes2, run0, outPos0, ru))

  @ghost
  @opaque
  @inlineOnce
  def decodeEncodeNoRunPass(oldIndex: Array[Int], index: Array[Int], bytes: Array[Byte], outPos1: Long, outPos2: Long, decoded: GhostDecoded)(using EncCtx, LoopIter): GhostDecoded = {
    require(oldIndex.length == 64)
    require(index.length == 64)
    require(bytes.length == maxSize)
    require(outPosInv(outPos1))
    require(outPosInv(outPos2))
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    require(positionsIneqInv(0, outPos1, pxPos))
    require(outPos1 < outPos2)
    require(decoded.index.length == 64)
    require(oldIndex == decoded.index)
    require(encodeNoRunProp(oldIndex, index, bytes, outPos1, outPos2))
    require(decoded.pixels.length == pixels.length)
    require(decoded.pxPos == pxPos)
    require(samePixels(pixels, px, pxPos, chan))
    require(arraysEq(decoded.pixels, pixels, 0, pxPos))
    require(px != pxPrev)

    assert(pxPos % chan == 0 && pixels.length % chan == 0)
    given decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)
    val (decIndex, decPixels, decIter) = decoder.decodeLoopPure(decoded.index, decoded.pixels, pxPrev, outPos1, outPos2, decoded.pxPos)
    check(decPixels.length == decoded.pixels.length)
    check(decoded.pxPos < decIter.pxPos)
    check(decIter.pxPos <= decoded.pixels.length)
    check(decIter.pxPos % chan == 0)
    check(decIter.inPos == outPos2)
    assert(decPixels.length % chan == 0)
    check(decIter.remainingRun == 0)
    check(decIter.pxPos == decoded.pxPos + chan)

    assert(encodeNoRunProp(oldIndex, index, bytes, outPos1, outPos2))
    check(decoded.index.updated(colorPos(px), px) == decIndex)
    assert(samePixels(decPixels, px, decoded.pxPos, chan))

    assert(arraysEq(decoded.pixels, decPixels, 0, decoded.pxPos))
    arraysEqSymLemma(decoded.pixels, pixels, 0, pxPos)
    arraysEqTransLemma(pixels, decoded.pixels, decPixels, 0, pxPos)
    assert(arraysEq(pixels, decPixels, 0, pxPos))
    samePixelsSingleElementRange(pixels, px, pxPos, chan)
    samePixelsSingleElementRange(decPixels, px, pxPos, chan)
    samePixelsForallArraysEq(pixels, decPixels, px, pxPos, pxPos + chan, chan)
    assert(arraysEq(pixels, decPixels, pxPos, pxPos + chan))
    arraysEqCombinedLemma2(pixels, decPixels, 0, pxPos, pxPos + chan)
    assert(arraysEq(pixels, decPixels, 0, pxPos + chan))
    check(arraysEq(pixels, decPixels, 0, decIter.pxPos).because(decIter.pxPos == pxPos + chan))

    GhostDecoded(freshCopy(decIndex), freshCopy(decPixels), decIter.inPos, decIter.pxPos)
  }.ensuring { newDecoded =>
    newDecoded.pxPos % chan == 0 &&&
    newDecoded.inPos == outPos2 &&&
    newDecoded.pxPos == pxPos + chan &&&
    newDecoded.index == decoded.index.updated(colorPos(px), px) &&&
    newDecoded.pixels.length == pixels.length &&&
    decodeLoopEncodeProp(bytes, pxPrev, outPos1, outPos2, decoded, px, newDecoded)
  }

  @ghost
  @pure
  def encodeNoRunProp(oldIndex: Array[Int], index: Array[Int], bytes: Array[Byte], outPos1: Long, outPos2: Long)(using EncCtx, LoopIter): Boolean = {
    require(oldIndex.length == 64)
    require(index.length == 64)
    require(bytes.length == maxSize)
    require(outPosInv(outPos1))
    require(outPosInv(outPos2))
    require(pxPosInv(pxPos))
    require(pxPos + chan <= pixels.length)
    require(positionsIneqInv(0, outPos1, pxPos))
    require(outPos1 < outPos2)

    given dctx: decoder.DecCtx = decoder.DecCtx(freshCopy(bytes), w, h, chan)
    withinBoundsLemma(0, outPos1, pxPos)
    assert(0 <= pxPos && pxPos <= pixels.length && w * h * chan == pixels.length && pixels.length % chan == 0)

    decoder.doDecodeNext(oldIndex, pxPrev, outPos1) match {
      case (decoder.DiffOrIndexOrColor(decodedPx), inPosRes) =>
        decodedPx == px && inPosRes == outPos2 && oldIndex.updated(colorPos(px), px) == index
      case _ => false
    }
  }

  /////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////

  @inline
  @cCode.inline
  def maxSize(using ctx: EncCtx): Long = ctx.maxSize

  @inline
  @cCode.inline
  def pxEnd(using ctx: EncCtx): Long = ctx.pxEnd

  @inline
  @cCode.inline
  def w(using ctx: EncCtx): Long = ctx.w

  @inline
  @cCode.inline
  def h(using ctx: EncCtx): Long = ctx.h

  @inline
  @cCode.inline
  def chan(using ctx: EncCtx): Long = ctx.chan

  @inline
  @cCode.inline
  def pixels(using ctx: EncCtx): Array[Byte] = ctx.pixels

  @inline
  @cCode.inline
  def px(using li: LoopIter): Int = li.px

  @inline
  @cCode.inline
  def pxPrev(using li: LoopIter): Int = li.pxPrev

  @inline
  @cCode.inline
  def pxPos(using li: LoopIter): Long = li.pxPos
}
