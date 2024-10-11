import stainless.annotation.*
import stainless.lang.*
import stainless.lang.StaticChecks.*

object PossibleFutures:

  // constructure is private: enforce using Future.apply and hence asynchrony
  class Future[A](private val todo : () => A):
    @ghost 
    def expected: A = todo() // predicted value. Public, but spec only

    def await: A = {
      todo()
    }.ensuring(_ == expected)

  object Future:
    @extern
    def apply[A](todo: () => A): Future[A] = {      
      var result: Option[A] = None[A]()
      val t = new Thread:        
        override def run: Unit =
          result = Some(todo())
          println(f"Computed $result")

      t.start               
      def expandedTodo: A =
        t.join
        result.get

      new Future[A](() => expandedTodo)
    }.ensuring(_.expected == todo())

  def small(x:Int): Boolean = 
    -128 <= x && x < 127

  @extern
  def sleep(t: Int): Unit =
    Thread.sleep(scala.util.Random.nextInt(t))

  def slow(x: Int): Int =
    sleep(100)
    x

  def addThree(x: Future[Int]) =  
    require(small(x.expected))
    val two = Future(() => slow(1))
    val one = Future(() => slow(2))
    one.await + two.await + x.await

  // run to observe that values are computed asynchronously 
  @main @extern
  def test =
    println(f"The result is: ${addThree(Future(() => slow(100)))}")