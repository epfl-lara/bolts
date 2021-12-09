/* Copyright 2009-2021 EPFL, Lausanne */
import stainless.lang._
import stainless.annotation._
import stainless.proof._
import stainless.lang.StaticChecks._
import stainless.collection._

case class Queue2[A](front: List[A], rear: List[A]) {
  import Queue2._

  def asList: List[A] = front ++ rear.reverse

  def isAmortized: Boolean = front.size >= rear.size

  def isEmpty: Boolean = front.isEmpty && rear.isEmpty

  def tail: Queue2[A] = {
    require(isAmortized && !isEmpty)
    amortizedQueue(front.tail, rear)
  } ensuring (_.isAmortized)

  def enqueue(elem: A): Queue2[A] = {
    amortizedQueue(front, Cons(elem, rear))
  } ensuring(_.isAmortized)

  def head: A = {
    require(isAmortized && !isEmpty)
    front.head
  }
}


object Queue2 {
  def empty[A]: Queue2[A] = {
    Queue2[A](Nil(), Nil())
  } ensuring (_.isEmpty)

  def amortizedQueue[A](front: List[A], rear: List[A]): Queue2[A] = {
    if (rear.size <= front.size)
      Queue2(front, rear)
    else
      Queue2(front ++ rear.reverse, Nil[A]())
  } ensuring (_.isAmortized)
}


object QueueSpecs {
  import ListSpecs._

  def propEnqueue[A](queue: Queue2[A], elem: A) : Unit = {
    import Queue2._

    val (front, rear) = (queue.front, queue.rear)

    assert(queue.enqueue(elem) == amortizedQueue(front, Cons(elem, rear)))

    if (Cons(elem, rear).size <= front.size) {
      assert(amortizedQueue(front, Cons(elem, rear)) == Queue2(front, Cons(elem, rear)))
      assert(Queue2(front, Cons(elem, rear)).asList == front ++ Cons(elem, rear).reverse)
      assert(front ++ Cons(elem, rear).reverse == front ++ (rear.reverse ++ Cons(elem, Nil[A]())))
      assert(appendAssoc(front, rear.reverse, Cons(elem, Nil[A]())))
      assert(front ++ (rear.reverse ++ Cons(elem, Nil[A]())) == (front ++ rear.reverse) ++ Cons(elem, Nil[A]()))
      assert((front ++ rear.reverse) ++ Cons(elem, Nil[A]()) == queue.asList ++ Cons(elem, Nil[A]()))

      check(queue.enqueue(elem).asList == queue.asList ++ Cons(elem, Nil[A]()))
    } else {
      assert(amortizedQueue(front, Cons(elem, rear)) == Queue2(front ++ Cons(elem, rear).reverse, Nil[A]()))
      assert(Queue2(front ++ Cons(elem, rear).reverse, Nil[A]()).asList == front ++ Cons(elem, rear).reverse ++ Nil[A]().reverse)
      assert(front ++ Cons(elem, rear).reverse ++ Nil[A]().reverse == front ++ Cons(elem, rear).reverse ++ Nil[A]())
      assert(front ++ Cons(elem, rear).reverse ++ Nil[A]() == front ++ Cons(elem, rear).reverse)
      assert(front ++ Cons(elem, rear).reverse == front ++ (rear.reverse ++ Cons(elem, Nil[A]())))
      assert(appendAssoc(front, rear.reverse, Cons(elem, Nil[A]())))
      assert(front ++ (rear.reverse ++ Cons(elem, Nil[A]())) == (front ++ rear.reverse) ++ Cons(elem, Nil[A]()))
      assert((front ++ rear.reverse) ++ Cons(elem, Nil[A]()) == queue.asList ++ Cons(elem, Nil[A]()))

      check(queue.enqueue(elem).asList == queue.asList ++ Cons(elem, Nil[A]()))
    }
  }.ensuring(_ =>
    queue.enqueue(elem).asList == queue.asList ++ Cons(elem, Nil[A]())
  )

  def propFront[A](queue: Queue2[A], elem: A) : Unit = {
    require(!queue.isEmpty && queue.isAmortized)
    decreases(queue)

    ()
  }.ensuring(_ =>
    queue.asList.head == queue.head
  )

  def propTail[A](queue: Queue2[A], elem: A) : Unit = {
    require(!queue.isEmpty && queue.isAmortized)

    check(rightUnitAppend(queue.front.tail ++ queue.rear.reverse))

  }.ensuring(_ =>
    queue.asList.tail == queue.tail.asList
  )

  def enqueueAndFront[A](queue: Queue2[A], elem: A) : Unit = {
    if (queue.isEmpty)
      assert(queue.enqueue(elem).head == elem)
  }

  def enqueueDequeueThrice[A](queue: Queue2[A], e1: A, e2: A, e3: A): Unit = {
    if (queue.isEmpty) {
      val q1 = queue.enqueue(e1)
      val q2 = q1.enqueue(e2)
      val q3 = q2.enqueue(e3)
      val e1prime = q3.head
      val q4 = q3.tail
      val e2prime = q4.head
      val q5 = q4.tail
      val e3prime = q5.head
      assert(e1 == e1prime && e2 == e2prime && e3 == e3prime)
    }
  }
}
