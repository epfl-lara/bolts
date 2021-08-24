import stainless.annotation._
import stainless.lang._

// trait TotalOrder[A] {
//   def leq(x: A, y: A): Boolean

//   @ghost
//   def reflexivityLaw(x: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     leq(x, x)
//   }

//   @ghost
//   def antiSymmetryLaw(x: A, y: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     (leq(x, y) && leq(y, x)) ==> (x == y)
//   }

//   @ghost
//   def transitivityLaw(x: A, y: A, z: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     (leq(x, y) && leq(y, z)) ==> leq(x, z)
//   }

//   @ghost
//   def totalityLaw(x: A, y: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     leq(x, y) || leq(y, x)
//   }
// }


// FIXME: currently unsound because of the `???`
// Make sure these propertes hold when instantiating a new `TotalOrder`
case class TotalOrder[A](leq: (A, A) => Boolean) {
  @ghost
  def reflexivityLaw(x: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    leq(x, x)
  }

  @ghost
  def antiSymmetryLaw(x: A, y: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    (leq(x, y) && leq(y, x)) ==> (x == y)
  }

  @ghost
  def transitivityLaw(x: A, y: A, z: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    (leq(x, y) && leq(y, z)) ==> leq(x, z)
  }

  @ghost
  def totalityLaw(x: A, y: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    leq(x, y) || leq(y, x)
  }
}

