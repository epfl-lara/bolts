// Dispenser example, presented in https://tube.switch.ch/videos/ded227dd
import stainless.lang._
import stainless.collection._
object Dispenser {
  abstract sealed class Action
  case class FirstCoin() extends Action
  case class SecondCoin(levelNo: BigInt, slotNo: BigInt) extends Action {
    require(0 <= levelNo && levelNo <= 5 &&
            0 <= slotNo && slotNo <= 3)
  }

  case class State(
    levels: List[List[BigInt]],
    coins: BigInt,
    oneInserted: Boolean)
  {
    require(levels.size == 6 &&
            levels.forall(l => l.size == 4) &&
            0 <= coins && coins <= 500)
  }

  def isInitial(s: State): Boolean = {
    s.levels.forall(l => l.forall(itemNo => itemNo==10)) &&
    s.coins == 0 &&
    s.oneInserted == false
  }

  def r(s1: State, a: Action): Option[State] = {
    a match {
      case FirstCoin() if !s1.oneInserted && s1.coins < 500 =>
        Some(s1.copy(
          oneInserted = true,
          coins = s1.coins + 1))
      case SecondCoin(levelNo,slotNo) if s1.oneInserted && s1.coins < 500 => {
        val level: List[BigInt] = s1.levels(levelNo)
        val amount = level(slotNo)
        if (amount > 0) {
          val newLevel: List[BigInt] = level.updated(slotNo, amount - 1)
          Some(s1.copy(
            levels = s1.levels.updated(levelNo, newLevel),
            oneInserted = false,
            coins = s1.coins + 1))
        } else None()
      }
      case _ => None()
    }
  }

  def isTraceLike(t: List[(State,Action)]): Boolean = {
    decreases(t)
    t match {
      case Cons((s1,a1), Cons((s2,a2),rest)) => {
        if (r(s1,a1)==Some(s2)) isTraceLike((s2,a2)::rest)
        else false
      }
      case _ => true
    }
  }

  def isTrace(t: List[(State, Action)]): Boolean = { // last action is ignored
    t match {
      case Cons((s,a),_) => isInitial(s) && isTraceLike(t)
      case _ => false
    }
  }

  def exampleTrace: List[(State,Action)] = {
    val b10 = BigInt(10)
    val s0 = State(
      levels = List(
        List(b10,b10,b10,b10),
        List(b10,b10,b10,b10),
        List(b10,b10,b10,b10),
        List(b10,b10,b10,b10),
        List(b10,b10,b10,b10),
        List(b10,b10,b10,b10)),
      coins = BigInt(0),
      oneInserted=false)
    val Some(s1) = r(s0, FirstCoin()): @unchecked
    val Some(s2) = r(s1, SecondCoin(0,0)): @unchecked
    List[(State,Action)]((s0, FirstCoin()), (s1, SecondCoin(0,0)), (s2, FirstCoin()))
  }.ensuring(res => isTrace(res))

  def prop(s: State): Boolean = {
    s.coins % 2 == (if (s.oneInserted) BigInt(1) else BigInt(0))
  }

  def propInductive(t: List[(State, Action)]): Unit = {
    require(isTraceLike(t) &&
      (t match {
        case Cons((s,a),_) => prop(s)
        case _ => false
      })
    )
    decreases(t)
    t match {
      case Cons((s,a),Nil()) => ()
      case Cons((s,a),rest) => {
        assert(rest.last == t.last)
        propInductive(rest)
      }
    }
  }.ensuring(_ => prop(t.last._1))

  def propInvariant(t: List[(State, Action)]): Unit = {
    require(isTrace(t))
    propInductive(t)
  }.ensuring(_ => prop(t.last._1))
}
