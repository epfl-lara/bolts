import stainless.annotation.*
import stainless.lang.*
import stainless.lang.StaticChecks.*

object PossibleFutures:
  @extern
  def sleep(t: Int): Unit =
    Thread.sleep(scala.util.Random.nextInt(t))

  def slow(x: Int): Int =
    sleep(100)
    x

  @extern
  def say(s: String): Unit =
    println(s)

  @extern
  def myGet[A](opt: Option[A], s: String): A =
    opt match
      case Some(v) => 
        say(s + " get succeeded ")
        v
      case None() =>
        say(s + " get failed")
        throw Exception("myGet failed")

  // constructure is private: enforce using Future.apply and hence asynchrony
  class Future[R](private val todo : () => R):
    @ghost 
    def expected: R = todo() // predicted value. Public, but spec only

    def await: R = {
      todo()
    }.ensuring(_ == expected)

  object Future:
    @ignore    
    class FunctionThread[A,B](var input: Option[A] = None[A](),
                              var output: Option[B] = None[B](),
                              f: A => B) extends Thread:
      def setInput(a: A): Unit = synchronized:
        input match
          case None() => 
            input = Some(a)
            this.notifyAll()
          case _ => 
            say("input double set!")
    
      override def run: Unit = synchronized:
        while input.isEmpty do
          FunctionThread.this.wait()
        if output.isEmpty then
          output = Some(f(input.get))
          FunctionThread.this.notifyAll()
        else
          say("output double set!")

      def getOutput: B = synchronized:
        while output.isEmpty do
          FunctionThread.this.wait()
        output.get
    end FunctionThread

    @extern
    def apply[A](todo: () => A): Future[A] = {      
      val t = FunctionThread(None[Unit](), None[A](), (_:Unit) => todo())
      t.setInput(())
      t.start            
      new Future[A](() => t.getOutput)
    }.ensuring(_.expected == todo())

    // Instead of general promises, we ask for body to depend on a future
    @extern
    def runBody[A,B](body: Future[A] => Future[B]): A => B =
      val ta = FunctionThread[A,A](None[A](), None[A](), (x:A) => x)
      ta.start

      val fa = new Future[A](() => ta.getOutput)
      val fb = body(fa)

      def result(a:A): B =
        ta.setInput(a)
        fb.await

      result
    end runBody

  // ------------------ Example -----------------

  def small(x:Int): Boolean = 
    -128 <= x && x < 127

  def addOne(x: Future[Int]): Int =
    require(small(x.expected))    
    x.await + 1

  def addThree(x: Future[Int]): Int =  
    require(small(x.expected))    
    val two = Future(() => slow(1))
    val one = Future(() => slow(2))    
    one.await + two.await + x.await
          
  def addFour(x: Future[Int]) =  
    require(small(x.expected))    
    val two = Future(() => slow(1))
    val one = Future(() => slow(2))    
    val body: Future[Int] => Future[Int] =
      (y: Future[Int]) =>
        Future: () =>
          val t: Int = one.await + two.await + x.await
          say("Already did some useful work!")
          val yres = y.await
          if small(yres) then t + y.await
          else 0
    val f = Future.runBody(body)
    val yv: Int = slow(slow(50))
    say("Only now we provide the argument")
    f(yv) 

  // run to observe that values are computed asynchronously 
  @main @extern
  def test =
    println(f"The result is: ${addFour(Future(() => slow(100)))}")
