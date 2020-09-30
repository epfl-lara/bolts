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

/*
=== Functional Queues === 

Recall that a queue allows taking elements from the **front** and adding elements to the **end**.  Queues are expected to implement these operations in //about constant// time. Here we are going to implement and prove correct a //purely functional// queue, which means that it does not use mutation. The benefit is that we can prove such implementations correct much more easily and, moreover, even after adding or removing an element we can continue to access the previous version of the queue. On the flip side, it means that a simple imperative implementation (such as a doubly linked list with a tail pointer) is out of question. Instead, we use functional lists. A simplest functional approach would be to implement dequeue as list head and implement enqueue as appending a single element to the end of the list. Unfortunately, this would make enqueue linear in the size of the queue. Conversely, if we decided to implement dequeue by removing from the end of a list, then the dequeue would take linear time, instead of constant. A solution is instead to use two lists: one for removing and one for adding. When the list from which remove gets empty, we need to add elements from the other list. We do this by reversing the list, which is good on average, because we do it only once for every element we put into the queue.

=== Functional Queues in Stainless ===

The example contains three class definitions:
  - First, we define **abstract class** `Queue` whose method bodies are only placeholders, but, crucially, contain postconditions that every implementation must obey. These postconditions are specified using `toList` function, which itself is abstract. Such functions used in specifications are called **abstraction function**: they map a (possibly complex) implementation into a simpler model (in this case list).
  - As an illustration, `SimpleQueue` shows a trivial implementation, where `toList` is an identity function. This gives us the first (inefficient) implementation. Note that, even though `SimpleQueue` does not contain any specifications, Stainless automatically checks that all postconditions of the superclass hold. (You can test this by trying to make implementation incorrect and examining what happens).
  - Finally, we define our amortized implementation that has a `front` list and `rear` list. The `toList` method gives the meaning of our queue in terms of list: it is meant to represent `front ++ rear.reverse`. In case of `enqueue` we provide a proof, using Stainless' `equations` library, that establishes the postcondition stated in the abstract class.
 */
