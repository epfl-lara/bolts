package ch.epfl.lexer.example

import ch.epfl.map.Hashable
import ch.epfl.lexer.VerifiedRegex._
import ch.epfl.lexer.MemoisationZipper
import ch.epfl.lexer.ZipperRegex._
import ch.epfl.lexer.Token
import ch.epfl.lexer.Vector
import stainless.annotation.extern
import scala.annotation.tailrec

object ExampleUtils:
  object ContextHashable extends Hashable[Context[Char]] {
    override def hash(ctx: Context[Char]): Long = {
      ctx.exprs.foldLeft(19L)((acc, expr) => acc * expr.hash)
    }
  }

  object ContextCharHashable extends Hashable[(Context[Char], Char)] {
    override def hash(k: (Context[Char], Char)): Long = {
      val (ctx, c) = k
      ContextHashable.hash(ctx) * 23 + c.hashCode() * 29
    }
  }

  object RegexContextCharHashable extends Hashable[(Regex[Char], Context[Char], Char)] {
    override def hash(k: (Regex[Char], Context[Char], Char)): Long = {
      val (r, ctx, c) = k
      r.hash * 31 + ContextHashable.hash(ctx) * 37 + c.hashCode() * 43
    }
  }
  
  val zipperCacheUp: MemoisationZipper.CacheUp[Char] = MemoisationZipper.emptyUp(ContextCharHashable)
  val zipperCacheDown: MemoisationZipper.CacheDown[Char] = MemoisationZipper.emptyDown(RegexContextCharHashable)
end ExampleUtils
