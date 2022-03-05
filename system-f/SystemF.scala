/* 
 * Copyright 2009-2022 EPFL, Lausanne 
 * 
 * Authors: Andrea Gilot, Noé De Santo
 */

import stainless.lang._
import stainless.collection._
import stainless.annotation._

object SystemF {
  sealed trait Type {
  
    def freeVars: List[BigInt] = {
      this match {
        case BasicType(_) => Nil()
        case ArrowType(t1, t2) => t1.freeVars ++ t2.freeVars
        case VariableType(v) => List[BigInt](v)
        case UniversalType(body) => body.freeVars.filter(x => x > 0).map(x => x - 1)
      }
    }

    def hasFreeVariablesIn(c: BigInt, d: BigInt): Boolean = {
      require(c >= 0)
      require(d >= 0)
      this match {
        case BasicType(_)         => false
        case ArrowType(t1, t2)    => t1.hasFreeVariablesIn(c, d) || t2.hasFreeVariablesIn(c, d)
        case VariableType(v)      => (c <= v) && (v < c+d)
        case UniversalType(body)  => body.hasFreeVariablesIn(c+1, d)
      }
    }.ensuring(res => (d == 0) ==> !res)

    def isClosed: Boolean = {
      def rec(t: Type, c: BigInt): Boolean = {
        t match {
          case BasicType(_)         => true
          case ArrowType(t1, t2)    => rec(t1, c) && rec(t2, c)
          case VariableType(v)      => v < c
          case UniversalType(body)  => rec(body, c+1)
        }
      }

      rec(this, 0)
    }
  }
  case class BasicType(s: String) extends Type
  case class ArrowType(t1: Type, t2: Type) extends Type
  case class VariableType(v: BigInt) extends Type { require(v >= 0) }
  case class UniversalType(t: Type) extends Type

  type Environment = List[Type]
  def hasFreeVariablesIn(env: Environment, c: BigInt, d: BigInt): Boolean = {
    require(c >= 0)
    require(d >= 0)

    env match {
      case Nil() => false
      case Cons(h, t) => h.hasFreeVariablesIn(c, d) || hasFreeVariablesIn(t, c, d)
    }
  }.ensuring(res =>
    ( !res ==> env.forall(!_.hasFreeVariablesIn(c, d)) ) &&
    ( res ==> env.exists(_.hasFreeVariablesIn(c, d)) ) &&
    ( (d == 0) ==> !res )
  )

  sealed trait Term {
    def isValue: Boolean = {
        this match {
            case Abs(_, _)  => true
            case TAbs(_)    => true
            case _          => false
        }
    }

    def hasFreeVariablesIn(c: BigInt, d: BigInt): Boolean = {
      require(c >= 0)
      require(d >= 0)
      this match {
        case Var(k)         => (c <= k) && (k < c+d)
        case Abs(_, body)   => body.hasFreeVariablesIn(c+1, d)
        case App(t1, t2)    => t1.hasFreeVariablesIn(c, d) || t2.hasFreeVariablesIn(c, d)
        case Fix(f)         => f.hasFreeVariablesIn(c, d)
        case TAbs(body)     => body.hasFreeVariablesIn(c, d)
        case TApp(t, _)     => t.hasFreeVariablesIn(c, d)
      }
    }.ensuring(res => (d == 0) ==> !res)

    def isClosed: Boolean = {
      def rec(t: Term, c: BigInt): Boolean = {
        t match {
          case Var(k)         => k < c
          case Abs(_, body)   => rec(body, c+1)
          case App(t1, t2)    => rec(t1, c) && rec(t2, c)
          case Fix(f)         => rec(f, c)
          case TAbs(body)     => rec(body, c)
          case TApp(t, _)     => rec(t, c)
        }
      }

      rec(this, 0)
    }

    def hasFreeTypeVariablesIn(c: BigInt, d: BigInt): Boolean = {
      require(c >= 0)
      require(d >= 0)
      this match {
        case Var(k)         => false
        case Abs(typ, body) => typ.hasFreeVariablesIn(c, d) || body.hasFreeTypeVariablesIn(c, d)
        case App(t1, t2)    => t1.hasFreeTypeVariablesIn(c, d) || t2.hasFreeTypeVariablesIn(c, d)
        case Fix(f)         => f.hasFreeTypeVariablesIn(c, d)
        case TAbs(body)     => body.hasFreeTypeVariablesIn(c+1, d)
        case TApp(t, typ)   => t.hasFreeTypeVariablesIn(c, d) || typ.hasFreeVariablesIn(c, d)
      }
    }.ensuring(res => (d == 0) ==> !res)

  }
  case class Var(k: BigInt) extends Term { require(k >= 0) }
  case class Abs(argType: Type, body: Term) extends Term
  case class App(t1: Term, t2: Term) extends Term
  case class Fix(t: Term) extends Term
  case class TAbs(t: Term) extends Term
  case class TApp(t: Term, typ: Type) extends Term

}

object SystemFProperties {
  import SystemF._

  object Terms {

    @opaque @pure
    def boundRangeDecrease(t: Term, c: BigInt, d1: BigInt, d2: BigInt): Unit = {
      require(d1 >= 0 && d2 >= 0)
      require(c >= 0)
      require(d2 <= d1)
      require(!t.hasFreeVariablesIn(c, d1))

      t match{
        case Var(_) => ()
        case Abs(targ, body) => {
          boundRangeDecrease(body, c + 1, d1, d2)
        }
        case App(t1, t2) => {
          boundRangeDecrease(t1, c, d1, d2)
          boundRangeDecrease(t2, c, d1, d2)
        }
        case Fix(f) => boundRangeDecrease(f, c, d1, d2)
        case TAbs(body) => boundRangeDecrease(body, c, d1, d2)
        case TApp(t, _) => boundRangeDecrease(t, c, d1, d2)
      }
    }.ensuring(!t.hasFreeVariablesIn(c, d2))

    @opaque @pure
    def boundRangeIncreaseCutoff(t: Term, c1: BigInt, c2: BigInt, d: BigInt): Unit = {
      require(c1 >= 0 && c2 >= 0)
      require(0 <= d && c2 - c1 <= d)
      require(c1 <= c2)
      require(!t.hasFreeVariablesIn(c1, d))

      t match {
        case Var(_) => ()
        case Abs(targ, body) => boundRangeIncreaseCutoff(body, c1 + 1, c2 + 1, d)
        case App(t1, t2) => {
          boundRangeIncreaseCutoff(t1, c1, c2, d)
          boundRangeIncreaseCutoff(t2, c1, c2, d)
        }
        case Fix(f) => boundRangeIncreaseCutoff(f, c1, c2, d)
        case TAbs(body) => boundRangeIncreaseCutoff(body, c1, c2, d)
        case TApp(t, _) => boundRangeIncreaseCutoff(t, c1, c2, d)
      }
    }.ensuring(!t.hasFreeVariablesIn(c2, d - (c2 - c1)))

    @opaque @pure
    def boundRangeConcatenation(t: Term, a: BigInt, b: BigInt, c: BigInt): Unit = {
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(!t.hasFreeVariablesIn(a, b))
      require(!t.hasFreeVariablesIn(a + b, c))

      t match{
        case Var(k) => ()
        case Abs(targ, body) => {
          boundRangeConcatenation(body, a + 1, b, c)
        }
        case App(t1, t2) => {
          boundRangeConcatenation(t1, a, b, c)
          boundRangeConcatenation(t2, a, b, c)
        }
        case Fix(f) => boundRangeConcatenation(f, a, b, c)
        case TAbs(body) => boundRangeConcatenation(body, a, b, c)
        case TApp(t, _) => boundRangeConcatenation(t, a, b, c)
      }
    }.ensuring(!t.hasFreeVariablesIn(a, b + c))
  }

  object Types {

    def hasFreeVariablesInCompleteness(t: Type, k: BigInt, c: BigInt, d: BigInt): Unit = {
      require(t.freeVars.contains(k))
      require(c >= 0)
      require(d >= 0)
      require(c <= k && k < c + d)
      t match{
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          if(t1.freeVars.contains(k)){
            hasFreeVariablesInCompleteness(t1, k, c, d)
          }
          else{
            hasFreeVariablesInCompleteness(t2, k, c, d)
          }
        }
        case VariableType(_) => ()
        case UniversalType(body) => {
          ListProperties.mapInvertAddContains(body.freeVars.filter(x => x > 0), k, 1)
          hasFreeVariablesInCompleteness(body, k + 1, c + 1, d)
        }
      }
    }.ensuring(t.hasFreeVariablesIn(c, d))

    def hasFreeVariablesInSoundness(t: Type, c: BigInt, d: BigInt): Unit = {
      require(c >= 0)
      require(d >= 0)
      require(t.freeVars.forall(x => x < c || x >= c + d))

      t match{
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          ListProperties.forallConcat(t1.freeVars, t2.freeVars, (x: BigInt) => x < c || x >= c + d)
          hasFreeVariablesInSoundness(t1, c, d)
          hasFreeVariablesInSoundness(t2, c, d)
        }
        case VariableType(_) => ()
        case UniversalType(body) => {
          ListProperties.forallMapLemma(body.freeVars.filter(x => x > 0), c, d, 1)
          ListProperties.forallFilterLemma(body.freeVars, c, d, 1)
          hasFreeVariablesInSoundness(body, c + 1, d)
        }
      }
    }.ensuring(!t.hasFreeVariablesIn(c, d))

    @opaque @pure
    def boundRangeDecrease(t: Type, c: BigInt, d1: BigInt, d2: BigInt): Unit = {
      require(d1 >= 0 && d2 >= 0)
      require(c >= 0)
      require(d2 <= d1)
      require(!t.hasFreeVariablesIn(c, d1))

      t match{
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          boundRangeDecrease(t1, c, d1, d2)
          boundRangeDecrease(t2, c, d1, d2)
        }
        case VariableType(v) => ()
        case UniversalType(body) => boundRangeDecrease(body, c+1, d1, d2)
      }
    }.ensuring(!t.hasFreeVariablesIn(c, d2))

    @opaque @pure
    def boundRangeIncreaseCutoff(t: Type, c1: BigInt, c2: BigInt, d: BigInt): Unit = {
      require(c1 >= 0 && c2 >= 0)
      require(0 <= d && c2 - c1 <= d)
      require(c1 <= c2)
      require(!t.hasFreeVariablesIn(c1, d))

      t match {
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          boundRangeIncreaseCutoff(t1, c1, c2, d)
          boundRangeIncreaseCutoff(t2, c1, c2, d)
        }
        case VariableType(v) => ()
        case UniversalType(body) => boundRangeIncreaseCutoff(body, c1 + 1, c2 + 1, d)
      }
    }.ensuring(!t.hasFreeVariablesIn(c2, d - (c2 - c1)))

    @opaque @pure
    def boundRangeConcatenation(t: Type, a: BigInt, b: BigInt, c: BigInt): Unit = {
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(!t.hasFreeVariablesIn(a, b))
      require(!t.hasFreeVariablesIn(a + b, c))

      t match{
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          boundRangeConcatenation(t1, a, b, c)
          boundRangeConcatenation(t2, a, b, c)
        }
        case VariableType(v) => ()
        case UniversalType(body) => boundRangeConcatenation(body, a + 1, b, c)
      }
    }.ensuring(!t.hasFreeVariablesIn(a, b + c))

    @opaque @pure
    def boundRangeDecrease(t: Term, c: BigInt, d1: BigInt, d2: BigInt): Unit = {
      require(d1 >= 0 && d2 >= 0)
      require(c >= 0)
      require(d2 <= d1)
      require(!t.hasFreeTypeVariablesIn(c, d1))

      t match{
        case Var(_) => ()
        case Abs(targ, body) => {
          boundRangeDecrease(targ, c, d1, d2)
          boundRangeDecrease(body, c, d1, d2)
        }
        case App(t1, t2) => {
          boundRangeDecrease(t1, c, d1, d2)
          boundRangeDecrease(t2, c, d1, d2)
        }
        case Fix(f) => boundRangeDecrease(f, c, d1, d2)
        case TAbs(body) => boundRangeDecrease(body, c+1, d1, d2)
        case TApp(t, typ) => {
          boundRangeDecrease(t, c, d1, d2)
          boundRangeDecrease(typ, c, d1, d2)
        }
      }
    }.ensuring(!t.hasFreeTypeVariablesIn(c, d2))

    @opaque @pure
    def boundRangeIncreaseCutoff(t: Term, c1: BigInt, c2: BigInt, d: BigInt): Unit = {
      require(c1 >= 0 && c2 >= 0)
      require(0 <= d && c2 - c1 <= d)
      require(c1 <= c2)
      require(!t.hasFreeTypeVariablesIn(c1, d))

      t match{
        case Var(_) => ()
        case Abs(targ, body) => {
          boundRangeIncreaseCutoff(targ, c1, c2, d)
          boundRangeIncreaseCutoff(body, c1, c2, d)
        }
        case App(t1, t2) => {
          boundRangeIncreaseCutoff(t1, c1, c2, d)
          boundRangeIncreaseCutoff(t2, c1, c2, d)
        }
        case Fix(f) => boundRangeIncreaseCutoff(f, c1, c2, d)
        case TAbs(body) => boundRangeIncreaseCutoff(body, c1+1, c2+1, d)
        case TApp(t, typ) => {
          boundRangeIncreaseCutoff(t, c1, c2, d)
          boundRangeIncreaseCutoff(typ, c1, c2, d)
        }
      }
    }.ensuring(!t.hasFreeTypeVariablesIn(c2, d - (c2 - c1)))

    @opaque @pure
    def boundRangeConcatenation(t: Term, a: BigInt, b: BigInt, c: BigInt): Unit = {
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(!t.hasFreeTypeVariablesIn(a, b))
      require(!t.hasFreeTypeVariablesIn(a + b, c))

      t match{
        case Var(_) => ()
        case Abs(targ, body) => {
          boundRangeConcatenation(targ, a, b, c)
          boundRangeConcatenation(body, a, b, c)
        }
        case App(t1, t2) => {
          boundRangeConcatenation(t1, a, b, c)
          boundRangeConcatenation(t2, a, b, c)
        }
        case Fix(f) => boundRangeConcatenation(f, a, b, c)
        case TAbs(body) => boundRangeConcatenation(body, a+1, b, c)
        case TApp(t, typ) => {
          boundRangeConcatenation(t, a, b, c)
          boundRangeConcatenation(typ, a, b, c)
        }
      }
    }.ensuring(!t.hasFreeTypeVariablesIn(a, b + c))

  }

}