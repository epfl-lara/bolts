import stainless.lang._
import stainless.collection._

object Memory {
  type Address = Long
  type Value = Long
  val iValue = 0L

  sealed abstract class Action
  case class Read(a: Address) extends Action
  case class Write(a: Address, v: Value) extends Action

  case class MemoryF(state: Address => Value) {
    def read(a: Address): Value = state(a)
    def write(a: Address, v: Value): MemoryF = 
      MemoryF((a1 : Address) =>
        if (a1 == a) v
        else state(a1))

    def step(act: Action): MemoryF = {
      act match {
        case Read(a) => this
        case Write(a,v) => write(a, v)
      }
    }

    def ===(that: MemoryF): Boolean = {
      forall((a: Address) => this.state(a) == that.state(a))
    }
  }
  val iMemoryF = MemoryF((a: Address) => iValue)

  type MemList = List[(Address,Value)]

  case class MemoryL(state: MemList) {
    require(sorted1(state))

    def read(a: Address): Value = lookup(state, a)

    def write(a: Address, v: Value) =
      MemoryL(update(state, a, v))

    def step(act: Action): MemoryL = {
      act match {
        case Read(a) => this
        case Write(a,v) => write(a, v)
      }
    }
  }

  def sorted1(l: MemList): Boolean = {
    l match {
      case Cons((a1,v1), Cons((a2,v2), rest)) =>
        a1 < a2 && sorted1((a2,v2)::rest)
      case _ => true
    }
  }

  def lookup(l: MemList, a: Address): Value =   
    l match {
      case Nil() => iValue
      case Cons((a1,v1),rest) =>
        if (a == a1) v1
        else lookup(rest, a)
    }

  def update(l: MemList, a: Address, v: Value): MemList = {
    require(sorted1(l))
    l match {
      case Nil() => List[(Address, Value)]((a,v))
      case Cons((a1,v1), rest) =>
        if (a == a1) (a1, v)::rest
        else if (a < a1) (a,v)::(a1,v1)::rest
        else (a1,v1) :: update(rest, a, v)
    }
  }.ensuring((res: MemList) => sorted1(res))

  def abst(ml: MemoryL): MemoryF = 
    MemoryF(ml.read(_))

  def simRead(ml: MemoryL, a: Address): Unit = {
  }.ensuring(res => abst(ml.step(Read(a))) === abst(ml).step(Read(a)))

  def simWrite(ml: MemoryL, a: Address, v: Value): Unit = {
    ml.state match {
      case Nil() => ()
      case Cons((a1,v1), rest) =>
        if (a == a1) ()
        else if (a < a1) ()
        else simWrite(MemoryL(rest), a, v)
    }
  }.ensuring(res => abst(ml.step(Write(a,v))) === abst(ml).step(Write(a,v)))

  def sim(ml: MemoryL, act: Action): Unit = {
    act match {
      case Read(a) => simRead(ml, a)
      case Write(a,v) => simWrite(ml, a, v)
    }
  }.ensuring(res => abst(ml.step(act)) === abst(ml).step(act))

}
