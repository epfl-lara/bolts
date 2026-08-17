import stainless.annotation.{ghost => ghostAnnot, _}
import stainless.lang._

trait TotalOrder[A] {
  def leq(x: A, y: A): Boolean

  @law def reflexivityLaw(x: A): Boolean = leq(x, x)

  @law def antiSymmetryLaw(x: A, y: A): Boolean = ((leq(x, y) && leq(y, x)) ==> (x == y))

  @law def transitivityLaw(x: A, y: A, z: A): Boolean = ((leq(x, y) && leq(y, z)) ==> leq(x, z))

  @law def totalityLaw(x: A, y: A): Boolean = leq(x, y) || leq(y, x)
}
