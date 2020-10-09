import stainless.lang._
import stainless.collection._

object Memory {
  type Address = Long
  type Value = Long
  val iValue = 0L

  sealed abstract class Action
  case class Read(a: Address, got: Value) extends Action
  case class Write(a: Address, v: Value) extends Action
  case class Idle() extends Action

  /* === === === === === Associate List === === === === === */

  type MemList = List[(Address,Value)]
  val NilM : MemList = Nil[(Address, Value)]()

  def sorted1(l: MemList): Boolean = {
    l match {
      case Cons((a1,v1), Cons((a2,v2), rest)) =>
        a1 < a2 && sorted1((a2,v2)::rest)
      case _ => true
    }
  }

  def noZeroValues(l: MemList): Boolean = {
    l match {
      case Cons((a1,v1), rest) => 
        v1 != iValue && noZeroValues(rest)
      case Nil() => true
    }
  }

  def lookup(l: MemList, a: Address): Option[Value] =   
    l match {
      case Nil() => None[Value]()
      case Cons((a1,v1),rest) =>
        if (a == a1) Some[Value](v1)
        else lookup(rest, a)
    }

  def update(l: MemList, a: Address, v: Value): MemList = {
    require(sorted1(l) && noZeroValues(l))
    l match {
      case Nil() => 
        if (v==iValue) Nil[(Address,Value)]()
        else List[(Address, Value)]((a,v))
      case Cons((a1,v1), rest) =>
        if (a == a1) {
          if (v==iValue) rest 
          else (a1, v)::rest
        } else if (a < a1) {
          if (v==iValue) (a1,v1)::rest
          else (a,v)::(a1,v1)::rest
        } else (a1,v1) :: update(rest, a, v)
    }
  }.ensuring((res: MemList) => sorted1(res) && noZeroValues(res) &&            
             res.size <= l.size + 1)

  def lookupUpdate(l: MemList, a: Address, v: Value, a0: Address): Unit = {
    require(sorted1(l) && noZeroValues(l))
    l match {
      case Nil() => ()
      case Cons((a1,v1),rest) => lookupUpdate(rest, a, v, a0)
    }
  }.ensuring(_ => lookup(update(l,a,v), a0) == 
                  (if (a==a0) {
                    if (v==iValue) None[Value]() else Some(v) 
                  } else lookup(l, a0)))

  /* === === === === === Simple Memory === === === === === */

  case class MemoryA(state: MemList) {
    require(sorted1(state) && noZeroValues(state))

    def read(a: Address): (Value,MemoryA) = 
      lookup(state, a) match {
        case None() => (iValue, this)
        case Some(v) => (v, this)
      }

    def write(a: Address, v: Value): MemoryA =
      MemoryA(update(state, a, v))

  }
  def rA(m1: MemoryA, act: Action, m2: MemoryA): Boolean = {
    act match {
      case Read(a, got) => m1.read(a)==(got, m2)
      case Write(a,v)   => m1.write(a, v)==m2
      case Idle()       => m1==m2
    }
  }

  val iMemoryA = MemoryA(NilM)

  /* === === === === === Memory with Cache === === === === === */

  val maxCache = BigInt(1024)

  case class MemoryC(cache: MemList, main: MemoryA) {
    require(sorted1(cache) && noZeroValues(cache) && cache.size <= maxCache)
    
    def read(a: Address): (Value, MemoryC) = 
      lookup(cache, a) match {
        case None() => {          
          val (v,m) = main.read(a)
          val MemoryC(c1,m1) = MemoryC(cache, m).writeBack
          (v, MemoryC(update(c1, a, v), m1))
        }
        case Some(v) => (v, this)
      }

    def writeBack: MemoryC = {
      cache match {
        case Cons((a,v), rest) => 
          MemoryC(rest, main.write(a,v))
        case _ => this
      }
    } ensuring(res => cache.size == 0 || 
                      res.cache.size < cache.size)

    def write(a: Address, v: Value): MemoryC = {
      lookup(cache, a) match {
        case None() => {
          val MemoryC(c1,m1) = writeBack
          MemoryC(update(c1, a, v), m1)
        }
        case Some(_) => {
          updateExisting(cache, a, v)
          MemoryC(update(cache, a, v), main)
        }
      } 
    }
  }

  def updateExisting(l: MemList, a: Address, v: Value): Unit = {
    require(sorted1(l) && noZeroValues(l) && lookup(l, a) != None())
    l match {
      case Cons((a1,v1),rest) if (a1 != a) => updateExisting(rest, a, v)
      case _ => ()
    }
  }.ensuring(_ => update(l, a, v).size <= l.size)

  def rC(m1: MemoryC, act: Action, m2: MemoryC): Boolean = {
    act match {
      case Read(a, got) => m1.read(a)==(got, m2)
      case Write(a,v)   => m1.write(a, v)==m2
      case Idle()       => m1.writeBack==m2
    }
  }

  val iMemoryC = MemoryC(NilM, iMemoryA)

  def writeAll(cache: MemList, main: MemList, a0: Address): MemList = {
    require(sorted1(cache) && noZeroValues(cache) && 
            sorted1(main) && noZeroValues(main))
    cache match {
      case Nil() => main
      case Cons((a,v), rest) => {
        val main1 = writeAll(rest, main, a0)
        lookupUpdate(main1, a, v, a0)
        update(main1, a, v)
      }
    }
  }.ensuring(res => sorted1(res) && noZeroValues(res) 
    &&
     lookup(res, a0) == 
     (lookup(cache, a0) match {
       case None() => lookup(main, a0)
       case Some(v) => Some(v)
     })
     )

  def α(mC: MemoryC): MemoryA = 
    MemoryA(writeAll(mC.cache, mC.main.state, 0L))
  
  def simRead(mc1: MemoryC, a: Address, v: Value, mc2: MemoryC): Unit = {
  }.ensuring(_ => 
      (rC(mc1, Read(a,v), mc2) ==>
       rA(α(mc1),Read(a,v), α(mc2))))

/*    
  def simWrite(ml1: MemoryA, a: Address, v: Value, ml2: MemoryA): Unit = {
    ml1.state match {
      case Nil() => ()
      case Cons((a1,v1), rest) =>
        if (a == a1) ()
        else if (a < a1) ()
        else simWrite(MemoryA(rest), a, v, ml2)
    }
  } ensuring(_ => 
      (rL(ml1,Write(a,v), ml2) ==>
    rF(α(ml1),Write(a,v), α(ml2))))

  def sim(ml1: MemoryA, act: Action, ml2: MemoryA): Unit = {
    act match {
      case Read(a,v) => simRead(ml1, a, v, ml2)
      case Write(a,v) => simWrite(ml1, a, v, ml2)
    }
  } ensuring(_ => 
      (rL(ml1,act, ml2) ==> rF(α(ml1),act, α(ml2))))
  def initSim: Unit = {

  } ensuring(_ => abst(iMemoryA) === iMemoryF)

  def traceLikeF(t: List[(MemoryA, Action)]): Boolean = {
    t match {
      case Cons((m1,a1), Cons((m2,a2),rest)) => 
        
      case _ => true
    }
  }
*/
}
