package ch.epfl.lexer.example

import stainless.annotation.extern
import stainless.annotation.pure

import ch.epfl.map.Hashable
import ch.epfl.lexer.VerifiedRegex.Regex
import ch.epfl.lexer.ZipperRegex.Context


object ExampleUtils:
  case object ContextHashable extends Hashable[Context[Char]] {
    
    override def hash(ctx: Context[Char]): Long = innerHash(ctx)
    @extern @pure 
    def innerHash(ctx: Context[Char]): Long = {
      ctx.exprs.foldLeft(19L)((acc, expr) => acc * expr.hash)
    }
  }

  case object ContextCharHashable extends Hashable[(Context[Char], Char)] {
    
    override def hash(k: (Context[Char], Char)): Long = innerHash(k)
    @extern @pure 
    def innerHash(k: (Context[Char], Char)): Long = {
      val (ctx, c) = k
      ContextHashable.hash(ctx) * 23 + c.hashCode() * 29
    }
  }

  case object RegexContextCharHashable extends Hashable[(Regex[Char], Context[Char], Char)] {
    
    override def hash(k: (Regex[Char], Context[Char], Char)): Long = innerHash(k)
    @extern @pure 
    def innerHash(k: (Regex[Char], Context[Char], Char)): Long = {
      val (r, ctx, c) = k
      r.hash * 31 + ContextHashable.hash(ctx) * 37 + c.hashCode() * 43
    }
  }

end ExampleUtils
