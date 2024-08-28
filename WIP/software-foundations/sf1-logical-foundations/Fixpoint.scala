object Fixpoint {


  def map(f, l): List[Int] = l match {
    case Nil => Nil
    case x :: xs => 
      f(x) :: map(f, xs)  // size(map(f,xs)) == size(xs)
  }

  map: forall f, l, { l2: List[Int] | size(l2) == size(l)) }

  def mapLemma(f1, f2, l):  map(f1, map(f2, l)) === map(f1 o f2, l) = l match {
    case Nil => solve
    case x :: xs =>
      pose(mapLemma(f1, f2, xs)) // map(f1,map(f2,xs)) === map(f1 o f2,xs)

      assert(map(f1, map(f2, l)) === map(f1, f2(x) :: map(f2, xs)))
      assert(map(f1, map(f2, l)) === f1(f2(x)) :: map(f1,map(f2, xs))
      assert(map(f1, map(f2, l)) === f1(f2(x)) :: map(f1 o f2,xs))
      assert(map(f1, map(f2, l)) === (f1 o f2)(x) :: map(f1 o f2,xs))
      assert(map(f1, map(f2, l)) === map(f1 o f2, l))



  }



  def lemme[T](f, x1, x2) = {
    require(x1 == x2)

    assert(f(x1) === f(x2))
  }

  lemme: forall T, forall f: T => T, x1 x2: T, [ (x1 ==  x2) === true ] =>
      [ f(x1) === f(x2) ]

  def loop: false === true = loop

  Pour tout P: Pred, s'il exists p: P, alors P est vrai

  lemme: forall f x1 x2, ...

  pour tout f, pour tout x1, x2, si x1 == x2 alors f(x1) === f(x2)


  sealed abstract class Theorem {
    def use: Boolean 
  }

  p: (b === true)

  case class IsTrue(b: () => Boolean) extends Theorem {
    require(b())
    def use: Boolean = true
  }

  case class Forall[T](f: T => Theorem) extends Theorem

  case class Forall[T](f: T => Boolean) extends Theorem

  
  def Forall

  sealed abstract class Nat
  case object O extends Nat
  case class S(n: Nat) extends Nat

  def minus(n: Nat, m: Nat): Nat = (n,m) match {
    case (O, _) => O
    case (S(_), O) => n
    case (S(n2), S(m2)) => minus(n2, m2)
  }

  def findFixpoint(b,f, e1, e2: Forall): Nat = {
    require(forall x: x <= y => f(x) <= f(y))
    require(forall x: Nat, f(x) <= b)

    val e1 = Forall((x: Nat) => x <= y => f(x) <= f(y))
    val e2 = Forall((x: Nat) => f(x) <= b)

    assert()

    
    b match {
      case O => 0
      case Succ(b2) =>
        // we consider two subcases
        if (f(O) === O)
          // then y = 0 works again
          O
        else {
          // otherwise, we define g = \x. f(x+1) - 1 and find a fixpoint for g
          val g = x => minus(f(Succ(x)))(One) // no underflow since f is lowerbounded by 1

          // we find the fixpoint of g by inductive hypothesis (recursion on b)
          // but first, we need to prove that g is increasing and bounded by b2
          val e3: forall x y: Nat, x <= y => g(x) <= g(y) =
            (x: Nat) =>
              (y: Nat) => {
                // we use the fact that f is increasing
                // instantiating e1 on x + 1 and y + 1
                pose(e1(Succ(x))(Succ(y)))  
                assert(x <= y => g(x) <= g(y)) // x <= y => f(x+1) <= f(y+1)
              }

          val e3 =
            Forall((x: Nat) =>
              Forall((y: Nat) => {
                // we use the fact that f is increasing
                // instantiating e1 on x + 1 and y + 1
                pose(e1(Succ(x))(Succ(y)))  
                Theorem(x <= y => g(x) <= g(y)) // x <= y => f(x+1) <= f(y+1)
              }

          val e4: forall x: Nat, g(x) <= b2 =
            (x: Nat) => {
              // we use the fact that f(x+1) is bounded by b
              pose(e2(Succ(x)))
              solve
            }

          // here we gave proof details for e3 and e4, but the system should be
          // able to infer them with the solve keyword:
          //    val y = findFixpoint(b2)(g)(solve)(solve)

          val y = findFixpoint(b2)(g)(e3)(e4)
          // we know g(y) == y and g(y) = f(y+1) - 1
          // moreover, f(y+1) > 0, 
          // therefore, f(y+1) - 1 = y
          // and f(y+1) == y+1
          
          // we return y+1 as the fixpoint
          y+1
        }

    }


  }.ensuring(res => f(res) == res)

  def Monotonic(f): Pred = forall x: Nat, forall y: Nat, x <= y => f(x) <= f(y)

  def Monotonic(f): Pred = forall x: Nat, forall y: Nat, x <= y => f(x) <= f(y)

  def findFixpoint
    (b: Nat)
    (f: Nat => Nat)
    (e1: Monotonic(f))
    (e2: forall x: Nat, f(x) <= b):
      { y: Nat | f(y) === y } = {
      
    b match {
      case O => 
        // if f is bounded by O, the theorem .holds with y = O
        O
      case Succ(b2) =>
        // we consider two subcases
        if (f(O) === O)
          // then y = 0 works again
          O
        else {
          // otherwise, we define g = \x. f(x+1) - 1 and find a fixpoint for g
          val g = x => minus(f(Succ(x)))(One) // no underflow since f is lowerbounded by 1

          // we find the fixpoint of g by inductive hypothesis (recursion on b)
          // but first, we need to prove that g is increasing and bounded by b2
          val e3: forall x y: Nat, x <= y => g(x) <= g(y) =
            (x: Nat) =>
              (y: Nat) => {
                // we use the fact that f is increasing
                // instantiating e1 on x + 1 and y + 1
                pose(e1(Succ(x))(Succ(y)))
                solve
              }

          val e4: forall x: Nat, g(x) <= b2 =
            (x: Nat) => {
              // we use the fact that f(x+1) is bounded by b
              pose(e2(Succ(x)))
              solve
            }

          // here we gave proof details for e3 and e4, but the system should be
          // able to infer them with the solve keyword:
          //    val y = findFixpoint(b2)(g)(solve)(solve)

          val y = findFixpoint(b2)(g)(e3)(e4)
          // we know g(y) == y and g(y) = f(y+1) - 1
          // moreover, f(y+1) > 0, 
          // therefore, f(y+1) - 1 = y
          // and f(y+1) == y+1
          
          // we return y+1 as the fixpoint
          y+1
        }

    }
  }