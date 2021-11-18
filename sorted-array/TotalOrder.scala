import stainless.annotation.{ghost => ghostAnnot, _}
import stainless.lang._

// trait TotalOrder[A] {
//   def leq(x: A, y: A): Boolean

//   @ghostAnnot
//   def reflexivityLaw(x: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     leq(x, x)
//   }

//   @ghostAnnot
//   def antiSymmetryLaw(x: A, y: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     (leq(x, y) && leq(y, x)) ==> (x == y)
//   }

//   @ghostAnnot
//   def transitivityLaw(x: A, y: A, z: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     (leq(x, y) && leq(y, z)) ==> leq(x, z)
//   }

//   @ghostAnnot
//   def totalityLaw(x: A, y: A): Unit = {
//     (??? : Unit)
//   }.ensuring { _ =>
//     leq(x, y) || leq(y, x)
//   }
// }


// FIXME: currently unsound because of the `???`
// Make sure these propertes hold when instantiating a new `TotalOrder`
case class TotalOrder[A](leq: (A, A) => Boolean) {
  @ghostAnnot
  def reflexivityLaw(x: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    leq(x, x)
  }

  @ghostAnnot
  def antiSymmetryLaw(x: A, y: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    (leq(x, y) && leq(y, x)) ==> (x == y)
  }

  @ghostAnnot
  def transitivityLaw(x: A, y: A, z: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    (leq(x, y) && leq(y, z)) ==> leq(x, z)
  }

  @ghostAnnot
  def totalityLaw(x: A, y: A): Unit = {
    (??? : Unit)
  }.ensuring { _ =>
    leq(x, y) || leq(y, x)
  }
}

