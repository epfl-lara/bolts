import stainless.lang._
object ComputableLanguage {
  sealed abstract class List[A] {
    def size: BigInt = {
          this match {
            case Nil() => BigInt(0)
            case Cons(h, t) => 1 + t.size
          }
    }.ensuring(_ >= 0)

    def ++(that: List[A]): List[A] = {
        this match {
          case Nil() => that
          case Cons(x, xs) => Cons(x, xs ++ that)
        }
    }

    def power(n: BigInt): List[A] = {
      require(0 <= n)
      if (n==0) Nil[A]()
      else this ++ power(n-1)
    }

    def apply(index: BigInt): A = {
      require(0 <= index && index < size)
      this match {
        case Cons(h,t) =>
          if (index == BigInt(0)) h
          else t(index-1)
      }
    }

    def slice(from: BigInt, to: BigInt): List[A] = {
      require(0 <= from && from <= to && to <= size)
      this match {
        case Nil() => Nil[A]()
        case Cons(h,t) =>
          if (from == 0 && to == 0) Nil[A]()
          else if (from == 0) Cons[A](h, t.slice(0, to-1))
          else t.slice(from-1, to-1)
      }
    }.ensuring(res => res.size == to - from)

    def startsWith(that: List[A]): Boolean =  
      that.size <= size && slice(0, that.size)==that

    def prefixOf(that: List[A]): Boolean = that.startsWith(this)

    def endsWith(that: List[A]): Boolean = 
      that.size <= size && slice(size - that.size, size)==that

    def suffixOf(that: List[A]): Boolean = that.endsWith(this)
  }
  case class Cons[A](h: A, t: List[A]) extends List[A]
  case class Nil[A]() extends List[A]

  def epsilon[A] = Nil[A]()
  
  case class Lang[A](contains: List[A] => Boolean) {
    def ||(that: Lang[A]): Lang[A] = 
      Lang((w: List[A]) => this.contains(w) || that.contains(w))
    
    def &&(that: Lang[A]): Lang[A] = 
      Lang((w: List[A]) => this.contains(w) && that.contains(w))
    
    def complement: Lang[A] =
      Lang((w: List[A]) => !this.contains(w))

    def ++(that: Lang[A]): Lang[A] = {
        def f(w: List[A]): Boolean = {            
            val n: BigInt = w.size
            def checkFrom(i: BigInt): Boolean = {
              require(0 <= i && i <= n)
              decreases(i)
              (this.contains(w.slice(0, i)) && that.contains(w.slice(i, n))) ||
               (i > 0 && checkFrom(i - 1))
            }
            checkFrom(n)
        }
        Lang(f)
    }
    def power(n: BigInt): Lang[A] = {
      require(0 <= n)
      if (n==0) emptyWordSingleton[A]
      else this ++ power(n-1)
    }
    def *(): Lang[A] = {
        def f(w: List[A]): Boolean = {
            val n: BigInt = w.size
            def checkFromTo(from: BigInt, k: BigInt, to: BigInt): Boolean = {
                require(0 <= from && from < k && k <= to && to <= n)
                decreases(to - from, to - k)
                contains(w.slice(from, to)) ||
                (k < to && checkFromTo(from, k+1, to)) ||
                (from + 1 < k && k < to &&
                 checkFromTo(from, from + 1, k) && checkFromTo(k, k + 1, to))
            }
            (n==0) || checkFromTo(0, 1, n)
        }
        Lang(f)
    }

    def nullable: Boolean = contains(Nil[A]())

    def derivative(a: A): Lang[A] = 
      Lang((w: List[A]) => contains(Cons(a,w)))

      def derivativeW(as: List[A]): Lang[A] = 
      Lang((w: List[A]) => contains(as ++ w))
  }
  def emptyLanguage[A] = Lang((w: List[A]) => false) //  {}
  def emptyWordSingleton[A] = Lang((w: List[A]) => (w == Nil[A]())) // {epsilon}
}
