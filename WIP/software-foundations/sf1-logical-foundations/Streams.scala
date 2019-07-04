object Streams {
  case class Stream(head: Nat, tail: () => Stream)

  def zeros: Stream = Stream(0, () => zeros)

  def ntail(n: Nat, s: Stream): Stream =
    if (n == 0) s
    else ntail(n-1, s.tail())

  def usable(n: Nat, s: Stream): Pred = terminate(ntail(n,s))
  def usable(s: Stream): Pred = {
    require(forall((n: Nat) => usable(n,s)))

    Forall((n: Nat) => usable(n,s))
  }

  @induct
  def zerosUsable(n: Nat) = {
    usable(n,zeros)
  } holds

  // zerosUsable: forall n, usable(n,zeros)
  //            : usable(zeros)

  def zerosUsable(n: Nat): usable(n, zeros) = {
    if (n == 0)
      solve
    else {
      zerosUsable(n-1) // de type usable(n-1,zeros)
    }
  }

  // Int: Type

  // p1 /\ p2: Pred


  // False: Pred

  // x: False

  // def example(p1: Pred, p2: Pred)(x1: p1)(x2: p2): p1 /\ p2 = solve

  
  // example: (Pred,Pred) => Pred
  // def example(p1: Pred, p2: Pred): {p: Pred | p === p1 /\ p2 } = p1 /\ p2

  // def example(p1: Pred, p2: Pred, p3: p1 /\ p2) = {
    
  // }


  // example: (Pred,Pred) => Pred
  // def example(p1: Nat, p2: Nat): Nat = p1 + p2


  // def example(x1: Int, x2: Int): { y: Int | y == x1 + x2 } = x1 + x2


  // overall, zerosUsable has type: forall(n: Nat), usable(n, zeros)
  // which is the type: usable(zeros)

  def zipWith(f: (BigInt,BigInt) => BigInt, s1: Stream, s2: Stream): Stream =
    Stream(f(s1.head, s2.head), () =>
      zipWith(f, s1.tail(), s2.tail())
    )

  // we prove:
  // forall n, usable(n,s1) and usable(n,s2) implies
  //    usable(n, zip(f,s1,s2))

  @induct
  def zipWithUsable(f: (BigInt,BigInt) => BigInt, s1: Stream, s2: Stream, n: Nat) = {
    require(usable(n,s1) /\ usable(n,s2))

    assert(usable(n,zip(f,s1,s2)))
  }

  def fib: Stream = 
    Stream(0, () => 
      Stream(1, () => 
        zipWith(_ + _, fib, fib.tail())
      )
    )

  // finally, we show that fib is usable, by induction on n
  def fibUsable(n: Nat): usable(n,fib) = {
    if (n < 2)
      solve
    else {
      pose(fibUsable(n-1)) // we know that fib is usable n-1 times by IH
      pose(zipWithUsable(_ + _, fib, fib.tail(), n-2)) // and that zipWith(_ + _, fib, fib.tail()) is usable n-2 times
    }
  }
}