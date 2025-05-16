/** Author: Samuel Chassot
  */

package ch.epfl.lexer

object OptimisedChecks {
  extension [T](inline value: T) inline def ensuring(condition: T => Boolean): T = value
  inline def require(inline condition: Boolean): Unit = ()
  inline def assert(inline condition: Boolean): Unit = ()
  inline def decreases(inline r1: Any): Unit = ()
  inline def decreases(inline r1: Any, inline r2: Any): Unit = ()
  inline def decreases(inline r1: Any, inline r2: Any, inline r3: Any): Unit = ()
  inline def decreases(inline r1: Any, inline r2: Any, inline r3: Any, inline r4: Any, inline r5: Any): Unit = ()
  inline def ghostExpr(inline expr: Any): Unit = ()
  inline def unfold[T](inline expr: T): Unit = ()
}
