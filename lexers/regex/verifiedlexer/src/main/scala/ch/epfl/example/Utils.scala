package ch.epfl.lexer.example

import ch.epfl.map.Hashable
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.lexer.ZipperRegex.Context

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

end ExampleUtils
