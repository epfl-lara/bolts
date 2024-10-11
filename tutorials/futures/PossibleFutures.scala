import stainless.annotation.*
import stainless.lang.*
import stainless.lang.StaticChecks.*
object PossibleFutures:

  class Future[A](private val f : Unit => A):   
    @ghost 
    def expected: A = f(()) // predicted value

    @extern
    def await: A = {
      println("In reality, I will wait for the future to be done")
      f(())
    }.ensuring(_ == expected)

  object Future:
    @extern
    def apply[A](f: Unit => A): Future[A] = {
      println("In reality, I will create a future and allow it to start computing")
      new Future[A](f)
    }.ensuring(res => res.f == f)

  def small(x:Int): Boolean = 
    -128 <= x && x < 127

  def addThree(x: Future[Int]) =  
    require(small(x.expected))
    val one = Future(_ => 1)
    val two = Future(_ => 2)
    one.await + two.await + x.await
