/** Author: Samuel Chassot
  */

package ch.epfl.map

object OptimisedChecks {
  extension [T](inline value: T) inline def ensuring(condition: T => Boolean): T = value
  inline def require(inline condition: Boolean): Unit = ()
  inline def assert(inline condition: Boolean): Unit = ()
}
