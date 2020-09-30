import stainless.collection._
import stainless.lang._
import stainless.equations._

abstract class Queue[A] {

  def enqueue(a: A) = (??? : Queue[A])
    .ensuring(res =>
    res.toList == this.toList ++ List(a))

  def dequeue: Option[(A, Queue[A])] = (??? : Option[(A, Queue[A])])
    .ensuring(res => res match {
      case None() =>  this.toList == Nil[A]()
      case Some((a, q)) => this.toList == a :: q.toList
    })

  def toList: List[A]
}

case class SimpleQueue[A](l: List[A]) extends Queue[A] {
  def enqueue(a: A) = SimpleQueue(l ++ List(a))

  def dequeue = l match {
    case Nil() => None()
    case Cons(x, xs) => Some((x, SimpleQueue(xs)))
  }

  def toList = l
}


case class AmortizedQueue[A](front: List[A], rear: List[A]) extends Queue[A] {
  def enqueue(a: A) = {
    val res = AmortizedQueue(front, a :: rear)
    (
      res.toList                         ==:| trivial |:
      front ++ (a :: rear).reverse       ==:| trivial |: // by definition of `reverse`
      front ++ (rear.reverse :+ a)       ==:| trivial |: // postcondition of `:+` in Stainless
      front ++ (rear.reverse ++ List(a)) ==:| ListSpecs.appendAssoc(front, rear.reverse, List(a)) |:
      (front ++ rear.reverse) ++ List(a) ==:| trivial |:
      this.toList ++ List(a)
    ).qed
    res
  }

  def dequeue = front match {
    case Nil() =>
      rear.reverse match {
        case Nil() => None()
        case Cons(x, xs) => Some(x, AmortizedQueue(xs, Nil()))
      }
    case Cons(x, xs) => Some((x, AmortizedQueue(xs, rear)))
  }

  def toList = front ++ rear.reverse
}
