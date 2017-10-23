/*
Author: Sarah Sallinger
*/
import stainless.collection._
import stainless.lang._
import stainless.annotation._
import stainless.proof._

import scala.language.postfixOps

//This version currently takes ~ 1h to verify on my machine with i5 and 8GB RAM.

object ReachabilityChecker {

  case class State(registers: List[Boolean]) {
    override def toString: String = {
      registers match {
        case Nil() => ";"
        case Cons(x, xs) if (x) => "1" + State(xs).toString
        case Cons(x, xs) => "0" + State(xs).toString
      }
    }
  }

  case class System(transitions: List[(State, State)])

  abstract class Result
  case object Unknown extends Result
  case object Unreachable extends Result
  case class Trace(states: List[State]) extends Result

  def successors(tr: List[(State, State)], s: State): List[State] = {
    tr match {
      case Nil() => List()
      case Cons((s1, s2), trs) =>
        if (s1 == s) Cons(s2, successors(trs, s))
        else successors(trs, s)
    }
  }

  @induct
  def successorsTransition(tr: List[(State, State)],
                           s: State,
                           st: State): Boolean = {
    require(successors(tr, s).contains(st))
    tr.contains((s, st))
  } holds

  def canTransition(tr: List[(State, State)],
                    x: State,
                    l: List[State]): Boolean = {
    l match {
      case Nil() => true
      case Cons(y, ys) => tr.contains((x, y)) && canTransition(tr, x, ys)
    }
  }

  def canTransitionSuccHelp(tr: List[(State, State)],
                            s: State,
                            succ: List[State]): Boolean = {

    require(subset(succ, successors(tr, s)))
    succ match {
      case Nil() => true
      case Cons(x, xs) =>
        successorsTransition(tr, s, x) && tr.contains((s, x)) && canTransitionSuccHelp(
          tr,
          s,
          xs) && canTransition(tr, s, succ)
    }
  } holds

  def canTransitionSucc(tr: List[(State, State)], s: State): Boolean = {
    val succ = successors(tr, s)

    subsetReflexive(succ) &&
    canTransitionSuccHelp(tr, s, succ) &&
    canTransition(tr, s, succ)

  } holds

  def subset[X](l1: List[X], l2: List[X]): Boolean = {
    l1 match {
      case Nil() => true
      case Cons(x, xs) => l2.contains(x) && subset(xs, l2)
    }
  }

  def subsetReflexive[X](l1: List[X]): Boolean = {
    l1 match {
      case Nil() => subset(l1, l1)
      case Cons(x, xs) =>
        l1.contains(x) && subsetReflexive(xs) && subsetExtend(xs, xs, x) && subset(
          xs,
          l1) && subset(l1, l1)
    }
  } holds

  @induct
  def subsetExtend[X](l1: List[X], l2: List[X], x: X): Boolean = {
    require(subset(l1, l2))

    subset(l1, x :: l2)
  } holds

  def kReachabilityCheck(currentTrace: List[State],
                         s: System,
                         target: State,
                         k: BigInt,
                         initial: State): Result = {
    require(
      simple(currentTrace) &&
        !currentTrace.isEmpty &&
        isTrace(s, currentTrace) &&
        canTransitionSucc(s.transitions, currentTrace.last) &&
        currentTrace.head == initial
    )

    if (currentTrace.last == target)
      Trace(currentTrace)
    else if (k == 0)
      Unknown
    else {
      exploreSuccessors(successors(s.transitions, currentTrace.last),
                        currentTrace,
                        s,
                        target,
                        k - 1,
                        false,
                        initial)
    }
  } ensuring (res =>
                res match {
                  case Trace(t) =>
                    isTrace(s, t) && !t.isEmpty && t.head == initial && t.last == target && simple(
                      t)
                  case _ => true
                })

  @induct
  def prependTrace(t: List[State], s: System, st: State): Boolean = {
    require(isTrace(s, t) && s.transitions.contains((t.last, st)))

    isTrace(s, t :+ st)
  } holds

  @induct
  def noTarget(t: List[State], target: State, x: State): Boolean = {
    require(!t.contains(target))

    val l = t :+ x

    x == l.last && (target == x || !l.contains(target))
  } holds

  def exploreSuccessors(succ: List[State],
                        currentTrace: List[State],
                        s: System,
                        target: State,
                        k: BigInt,
                        unknown: Boolean,
                        initial: State): Result = {
    require(
      simple(currentTrace) &&
        !currentTrace.isEmpty &&
        isTrace(s, currentTrace) &&
        canTransition(s.transitions, currentTrace.last, succ) &&
        currentTrace.head == initial)

    succ match {
      case Nil() => if (unknown) Unknown else Unreachable
      case Cons(x, xs) =>
        if (!currentTrace.contains(x) && // needed for simpleAppend
            prependTrace(currentTrace, s, x) &&
            simpleAppend(currentTrace, x)) {

          val res =
            kReachabilityCheck(currentTrace :+ x, s, target, k, initial)
          res match {
            case Trace(t) => res //target found
            case Unknown =>
              exploreSuccessors(xs, currentTrace, s, target, k, true, initial)
            case Unreachable =>
              exploreSuccessors(xs,
                                currentTrace,
                                s,
                                target,
                                k,
                                unknown,
                                initial)
          }
        } else
          exploreSuccessors(xs, currentTrace, s, target, k, unknown, initial)
    }
  } ensuring (res =>
                res match {
                  case Trace(t) =>
                    isTrace(s, t) && !t.isEmpty && t.head == initial && t.last == target && simple(
                      t)
                  case _ => true
                })

  def isTrace(s: System, t: List[State]): Boolean = {
    t match {
      case s1 :: s2 :: ts =>
        s.transitions.contains((s1, s2)) &&
          isTrace(s, s2 :: ts)
      case _ => true
    }
  }

  def correctTrace(s: System,
                   initial: State,
                   target: State,
                   k: BigInt): Boolean = {
    val res = kReachabilityCheck(List(initial), s, target, k, initial)

    res match {
      case Trace(t) =>
        initial == t.head &&
          t.last == target &&
          isTrace(s, t)
      case _ => true
    }
  } holds

  @induct
  def inSuccessors(tr: List[(State, State)], s1: State, s2: State): Boolean = {
    require(tr.contains((s1, s2)))
    successors(tr, s1).contains(s2)
  } holds

  def disjoint[X](l1: List[X], l2: List[X]): Boolean = {
    (l1 & l2).isEmpty
  }

  def simple[X](l: List[X]): Boolean = l match {
    case Nil() => true
    case Cons(x, xs) => !xs.contains(x) && simple(xs)
  }

  def contentContains[X](l: List[X], x: X): Boolean = {
    require(l.contains(x))

    l.content.contains(x)
  } holds

  def completeTrace(l: List[State],
                    s: System,
                    initial: State,
                    target: State,
                    currentTrace: List[State]): Boolean = {
    require(
      simple(currentTrace) &&
        isTrace(s, l) &&
        !l.isEmpty &&
        l.last == target &&
        !currentTrace.isEmpty &&
        l.head == currentTrace.last &&
        isTrace(s, currentTrace) &&
        currentTrace.head == initial &&
        canTransitionSucc(s.transitions, currentTrace.last) &&
        disjoint(currentTrace, l.tail) &&
        simple(l)
    )
    val res =
      kReachabilityCheck(currentTrace, s, target, l.length - 1, initial)

    (if (currentTrace.last == target)
       true
     else if (l.length - 1 == 0)
       false
     else {
       val succ = successors(s.transitions, currentTrace.last)

       if (inSuccessors(s.transitions, l.head, l.tail.head)) {
         completeTraceExploreSucc(l.tail,
                                  s,
                                  succ,
                                  target,
                                  false,
                                  initial,
                                  currentTrace)
       } else
         false
     }) && (res match {
      case Trace(_) => true
      case _ => false
    })

  } holds

  def completeTraceExploreSucc(l: List[State],
                               s: System,
                               succ: List[State],
                               target: State,
                               unknown: Boolean,
                               initial: State,
                               currentTrace: List[State]): Boolean = {
    require(
      simple(currentTrace) &&
        isTrace(s, l) &&
        !l.isEmpty &&
        l.last == target &&
        !currentTrace.isEmpty &&
        succ.contains(l.head) &&
        isTrace(s, currentTrace) &&
        currentTrace.head == initial &&
        canTransition(s.transitions, currentTrace.last, succ) &&
        disjoint(currentTrace, l) &&
        simple(l)
    )

    val res = exploreSuccessors(succ,
                                currentTrace,
                                s,
                                target,
                                l.length - 1,
                                unknown,
                                initial)

    (succ match {
      case Nil() => false
      case Cons(x, xs) if (!currentTrace.contains(x)) =>
        if (prependTrace(currentTrace, s, x) &&
            noTarget(currentTrace, target, x) &&
            simpleAppend(currentTrace, x)) {

          kReachabilityCheck(currentTrace :+ x,
                             s,
                             target,
                             l.length - 1,
                             initial) match {
            case Trace(t) => true
            case Unknown =>
              if (x == l.head) {
                completeTrace(l, s, initial, target, currentTrace :+ x) &&
                false
              } else
                completeTraceExploreSucc(l,
                                         s,
                                         xs,
                                         target,
                                         true,
                                         initial,
                                         currentTrace)
            case Unreachable =>
              if (x == l.head) {
                completeTrace(l, s, initial, target, currentTrace :+ x) &&
                false
              } else
                completeTraceExploreSucc(
                  l,
                  s,
                  xs,
                  target,
                  unknown,
                  initial,
                  currentTrace) //exploreSuccessors(xs, currentTrace, s, target, k, unknown, initial)
          }
        } else false

      case Cons(x, xs) => //exploreSuccessors(xs, currentTrace, s, target, k, unknown, initial)
        if (x == l.head)
          false
        else {
          completeTraceExploreSucc(l,
                                   s,
                                   xs,
                                   target,
                                   unknown,
                                   initial,
                                   currentTrace)
        }
    }) && (res match {
      case Trace(_) => true
      case _ => false
    })
  } holds

  def completeTraceInit(l: List[State],
                        s: System,
                        initial: State,
                        target: State): Boolean = {
    require(
      isTrace(s, l) &&
        !l.isEmpty &&
        l.last == target &&
        l.head == initial
    )
    val res =
      kReachabilityCheck(List(initial),
                         s,
                         target,
                         simpleTrace(s, l).length - 1,
                         initial)

    completeTrace(simpleTrace(s, l), s, initial, target, List(initial)) &&
    (res match {
      case Trace(t) => true
      case _ => false
    })

  } holds

  def statesToString(l: List[State]): String = l match {
    case Nil() => ""
    case Cons(x, xs) => x.toString + "\n" + statesToString(xs)
  }

  //create equivalent cycle free trace for given trace
  def simpleTrace(s: System, l: List[State]): List[State] = {
    require(isTrace(s, l))
    l match {
      case Nil() => l
      case Cons(x, xs) =>
        if (!xs.contains(x)) {
          simpleNoAdd(s, xs, x) && simplePrepend(x, simpleTrace(s, xs))
          x :: simpleTrace(s, xs)
        } else {
          removeCycleLast(s, xs, x)
          simpleTrace(s, x :: removeCycle(s, xs, x))
        }
    }
  } ensuring (res =>
                check(simple(res)) && (l.isEmpty || (check(res.head == l.head) && check(
                  isTrace(s, res)) && check(res.last == l.last))))

  def removeCycle(s: System,
                  l: List[State],
                  duplicateState: State): List[State] = {
    require(isTrace(s, l) && l.contains(duplicateState))
    l match {
      case Cons(x, xs) =>
        if (x == duplicateState)
          xs
        else {
          removeCycle(s, xs, duplicateState)
        }
    }
  } ensuring (res =>
                isTrace(s, res) && (res.isEmpty || s.transitions.contains(
                  (duplicateState, res.head))))

  def simplePrepend[X](x: X, l: List[X]): Boolean = {
    require(simple(l) && !l.contains(x))
    simple(x :: l)
  } holds

  def simpleNoAdd(s: System, l: List[State], st: State): Boolean = {
    require(isTrace(s, l) && !l.contains(st))
    val sim = simpleTrace(s, l)

    (l match {
      case Nil() => true
      case Cons(x, xs) =>
        if (!xs.contains(x)) {
          simpleNoAdd(s, xs, st)
        } else {
          removeCycleNoAdd(s, xs, x, st) && simpleNoAdd(
            s,
            x :: removeCycle(s, xs, x),
            st)
        }
    }) && !sim.contains(st)
  } holds

  @induct
  def removeCycleNoAdd(s: System,
                       l: List[State],
                       duplicateState: State,
                       st: State): Boolean = {
    require(isTrace(s, l) && l.contains(duplicateState) && !l.contains(st))
    val rc = removeCycle(s, l, duplicateState)
    !rc.contains(st)
  } holds

  @induct
  def removeCycleLast(s: System,
                      l: List[State],
                      duplicateState: State): Boolean = {
    require(isTrace(s, l) && l.contains(duplicateState))
    l.last == (duplicateState :: removeCycle(s, l, duplicateState)).last
  } holds

  @induct
  def simpleAppend[X](t: List[X], x: X): Boolean = {
    require(simple(t) && !t.contains(x))
    simple(t :+ x)
  } holds
}
