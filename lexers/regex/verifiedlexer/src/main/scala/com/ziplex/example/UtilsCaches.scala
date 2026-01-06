package com.ziplex.lexer.example

import com.mutablemaps.map.Hashable
import com.ziplex.lexer.VerifiedRegex._
import com.ziplex.lexer.MemoisationZipper
import com.ziplex.lexer.ZipperRegex._
import com.ziplex.lexer.Token
import com.ziplex.lexer.Vector
import stainless.annotation.extern
import scala.annotation.tailrec
import com.ziplex.lexer.Sequence

object ExampleUtils:
  
  // ----------- tiny 64-bit mixing utilities (no libs) -----------

  private inline val C1 = 0xff51afd7ed558ccdL
  private inline val C2 = 0xc4ceb9fe1a85ec53L
  private inline val PHI = 0x9e3779b97f4a7c15L

  /** Strong 64-bit finalizer (good avalanche). */
  private inline def mix64(x0: Long): Long =
    var x = x0
    x ^= (x >>> 33)
    x *= C1
    x ^= (x >>> 33)
    x *= C2
    x ^= (x >>> 33)
    x

  /** Step-combine: order-sensitive. */
  private inline def step(acc: Long, v: Long): Long =
    mix64(acc ^ mix64(v + PHI))

  /** Fold a Long to an Int-like domain (when you only have Ints). */
  private inline def fold32(x: Long): Long =
    x ^ (x >>> 32)

  // ----------- your hashables -----------

  object ContextHashable extends Hashable[Context[Char]] {
    override def hash(ctx: Context[Char]): Long =
      var h = mix64(0x435f4e545854L) // "C_NTXT" seed-ish
      var i = 0L
      var it = ctx.exprs
      while !it.isEmpty do
        val eh = it.head.hash // assumed Long and "fixed"
        // include position to keep list order significant
        h = step(h, eh + i * PHI)
        it = it.tail
        i += 1L
      // incorporate length
      step(h, i)
  }

  object ContextCharHashable extends Hashable[(Context[Char], Char)] {
    override def hash(k: (Context[Char], Char)): Long =
      val (ctx, c) = k
      var h = mix64(0x435f43484152L) // "C_CHAR"
      h = step(h, ContextHashable.hash(ctx))
      h = step(h, c.toInt.toLong)
      h
  }

  object RegexContextCharHashable extends Hashable[(Regex[Char], Context[Char], Char)] {
    override def hash(k: (Regex[Char], Context[Char], Char)): Long =
      val (r, ctx, c) = k
      var h = mix64(0x525f435f434cL) // "R_C_CL"
      h = step(h, r.hash)
      h = step(h, ContextHashable.hash(ctx))
      h = step(h, c.toInt.toLong)
      h
  }

  object ZipperBigIntHashable extends Hashable[(Zipper[Char], BigInt)] {
    override def hash(k: (Zipper[Char], BigInt)): Long =
      val (z, b) = k

      // z : Set[Context[Char]] => order-insensitive aggregation
      var sum = 0L
      var xor = 0L
      var prod = 1L
      var n = 0L

      val it = z.toScala.iterator
      while it.hasNext do
        val ch = mix64(ContextHashable.hash(it.next()))
        sum += ch
        xor ^= ch
        prod *= (ch | 1L) // keep odd to avoid collapsing to 0 too easily
        n += 1

      val zHash = mix64(sum) ^ mix64(xor) ^ mix64(prod) ^ mix64(n)

      // BigInt: keep it cheap; mix in hashCode plus a couple stable shape hints
      val bHash = b.hashCode().toLong
      val bShape = (b.signum.toLong << 1) ^ (b.bitLength.toLong << 17)

      step(step(mix64(0x5a5f42494749L), zHash), fold32(bHash) ^ bShape)
  }

  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
  def findLongestMatchCache(totalInput: Sequence[Char]) = MemoisationZipper.emptyFindLongestMatch[Char](ZipperBigIntHashable, totalInput)
end ExampleUtils
