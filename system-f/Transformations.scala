/* 
 * Copyright 2009-2022 EPFL, Lausanne 
 * 
 * Authors: Andrea Gilot, Noé De Santo
 */

import stainless.lang._
import stainless.collection._
import stainless.annotation._

object Transformations {
  import SystemF._

  object Terms {

    // ↑ᵈ_c(t)
    def shift(t: Term, d: BigInt, c: BigInt): Term = {
      require(c >= 0)
      require(if(d < 0){!t.hasFreeVariablesIn(c, -d)} else{true})
      t match {
        case Var(k)    => if (k < c) Var(k) else Var(k + d)
        case Abs(typ, body) => Abs(typ, shift(body, d, c+1))
        case App(t1, t2)    => App(shift(t1, d, c), shift(t2, d, c))
        case Fix(f)         => Fix(shift(f, d, c))
        case TAbs(body)     => TAbs(shift(body, d, c))
        case TApp(t, typ)   => TApp(shift(t, d, c), typ)
      }
    }

    // [j -> s]t
    def substitute(t: Term, j: BigInt, s: Term): Term = {
      t match {
        case Var(k) => if (k == j) s else t 
        case Abs(typ, body) => Abs(typ, substitute(body, j+1, shift(s, 1, 0)))
        case App(t1, t2) => App(substitute(t1, j, s), substitute(t2, j, s))
        case Fix(f) => Fix(substitute(f, j, s))
        case TAbs(body) => TAbs(substitute(body, j, Types.shift(s, 1, 0)))
        case TApp(t, typ) => TApp(substitute(t, j, s), typ)
      }
    }
  }

  object Types {

    def shift(t: Type, d: BigInt, c: BigInt): Type = {
      require(c >= 0)
      require(if(d < 0){!t.hasFreeVariablesIn(c, -d)} else true)
      t match {
        case BasicType(_) => t
        case ArrowType(t1, t2) => ArrowType(shift(t1, d, c), shift(t2, d, c))
        case VariableType(k) => if (k < c) VariableType(k) else VariableType(k + d)
        case UniversalType(body) => UniversalType(shift(body, d, c + 1))
      }
    }

    def substitute(t: Type, j: BigInt, s: Type): Type = {
      t match {
        case BasicType(_) => t
        case ArrowType(t1, t2) => ArrowType(substitute(t1, j, s), substitute(t2, j, s))
        case VariableType(k) => if(j == k) s else t  
        case UniversalType(b) => UniversalType(substitute(b, j + 1, shift(s, 1, 0)))
      }
    }

    def shift(t: Term, d: BigInt, c: BigInt): Term = {
      require(c >= 0)
      require(if(d < 0) {!t.hasFreeTypeVariablesIn(c, -d)} else{true})
      
      t match {
        case Var(k) => t
        case Abs(typ, body) => Abs(shift(typ, d, c), shift(body, d, c))
        case App(t1, t2) => App(shift(t1, d, c), shift(t2, d, c))
        case Fix(f) => Fix(shift(f, d, c))
        case TAbs(body) => TAbs(shift(body, d, c+1))
        case TApp(t, typ) => TApp(shift(t, d, c), shift(typ, d, c))
      }
    }

    def substitute(t: Term, v: BigInt, s: Type): Term = {
      t match {
        case Var(k) => t
        case Abs(typ, body) => Abs(substitute(typ, v, s), substitute(body, v, s))
        case App(t1, t2) => App(substitute(t1, v, s), substitute(t2, v, s))
        case Fix(f) => Fix(substitute(f, v, s))
        case TAbs(body) => TAbs(substitute(body, v+1, shift(s, 1, 0)))
        case TApp(t, typ) => TApp(substitute(t, v, s), substitute(typ, v, s))
      }
    }

    def shift(env: Environment, d: BigInt, c: BigInt): Environment = {
      require(c >= 0)
      require(if(d < 0) !hasFreeVariablesIn(env, c, -d) else true)
      
      env match {
        case Nil() => Nil[Type]()
        case Cons(h, t) => {
          Cons(shift(h, d, c), shift(t, d, c))
        }
      }
    }.ensuring(res => res.length == env.length)

    def substitute(env: Environment, d: BigInt, typ: Type): Environment = {
      env.map(Transformations.Types.substitute(_, d, typ))
    }
  }

}

object TransformationsProperties {
  import SystemF._

  object Terms {
    import SystemFProperties.Terms._
    import Transformations.Terms._

    @opaque @pure
    def boundRangeTypeShiftIdentity(t: Term, s: BigInt, c: BigInt, a: BigInt, b: BigInt): Unit = {
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(if(s < 0){!t.hasFreeTypeVariablesIn(c, -s)} else{true})

      t match {
        case Var(_) => {
          assert(
            t.hasFreeVariablesIn(a, b) 
            == 
            Transformations.Types.shift(t, s, c).hasFreeVariablesIn(a, b)
          )
        }
        case Abs(_, body) => {
          boundRangeTypeShiftIdentity(body, s, c, a+1, b)
        }
        case App(t1, t2) => {
          boundRangeTypeShiftIdentity(t1, s, c, a, b)
          boundRangeTypeShiftIdentity(t2, s, c, a, b)
        }
        case Fix(f) => {
          boundRangeTypeShiftIdentity(f, s, c, a, b)
        }
        case TAbs(body) => {
          boundRangeTypeShiftIdentity(body, s, c+1, a, b)
        }
        case TApp(body, _) => {
          boundRangeTypeShiftIdentity(body, s, c, a, b)
        }
      }
    }.ensuring(
      t.hasFreeVariablesIn(a, b) 
      == 
      Transformations.Types.shift(t, s, c).hasFreeVariablesIn(a, b)
    )

    @opaque @pure
    def boundRangeShiftComposition(t: Term, a: BigInt, b: BigInt, c: BigInt, d: BigInt): Unit = {
      require(a >= 0)
      require(c >= 0)
      require(d >= 0)
      require(d <= c + a)
      require(if(d < c) !t.hasFreeVariablesIn(d, c - d) else !t.hasFreeVariablesIn(c, d - c))
      require((b >= 0) || (-b <= a))


      if (d < c){
        boundRangeShift(t, a, c, c, 0)
        boundRangeShift(t, a, c, d, c - d)
        boundRangeConcatenation(shift(t, a, c), d, c - d, a)
        boundRangeDecrease(shift(t, a, c), d, c - d + a, a)
      }
      else{
        boundRangeShift(t, a, c, c, d - c)
        boundRangeIncreaseCutoff(shift(t, a, c), c, d, a + d - c)
      }

      assert(!shift(t, a, c).hasFreeVariablesIn(d, a))
      if(b < 0){
        boundRangeDecrease(shift(t, a, c), d, a, -b)       
      }
      else{
        ()
      }


      t match {
        case Var(k) => ()
        case Abs(targ, body) => {
          boundRangeShiftComposition(body, a, b, c + 1, d + 1)
        }
        case App(t1, t2) => {
          boundRangeShiftComposition(t1, a, b, c, d)
          boundRangeShiftComposition(t2, a, b, c, d)
        }
        case Fix(f) => {
          boundRangeShiftComposition(f, a, b, c, d)
        }
        case TAbs(body)     => {
          boundRangeShiftComposition(body, a, b, c, d)
        }
        case TApp(t, _)     => {
          boundRangeShiftComposition(t, a, b, c, d)
        }
      }
    }.ensuring(shift(shift(t, a, c), b, d) == shift(t, a + b, c))

    @opaque @pure
    def boundRangeShift(t: Term, d: BigInt, c: BigInt, a: BigInt, b: BigInt): Unit = {
      require(c >= 0)
      require(a >= 0)
      require(b >= 0)
      require(!t.hasFreeVariablesIn(a, b))
      require(if(d < 0){!t.hasFreeVariablesIn(c, -d)} else true)
      t match {
        case Var(k) => ()
        case Abs(_, body) => 
          boundRangeShift(body, d, c + 1, a + 1, b)
        case App(t1, t2) => {
          boundRangeShift(t1, d, c, a, b)
          boundRangeShift(t2, d, c, a, b)
        }
        case Fix(f) => boundRangeShift(f, d, c, a, b)
        case TAbs(body) => boundRangeShift(body, d, c, a, b)
        case TApp(t, _) => boundRangeShift(t, d, c, a, b)
      }
    }.ensuring(
      if(d >= 0){
        (if(c >= a && c <= a + b)           {!shift(t, d, c).hasFreeVariablesIn(a, b + d)} else {true}) &&
        (if(c <= a + b)                     {!shift(t, d, c).hasFreeVariablesIn(a + d, b)} else {true}) &&
        (if(c >= a)                         {!shift(t, d, c).hasFreeVariablesIn(a, b)} else {true})
      }
      else{
        (if(a + b <= c)                     {!shift(t, d, c).hasFreeVariablesIn(a, b)} else true) &&
        (if(a + b >= c && a <= c)           {!shift(t, d, c).hasFreeVariablesIn(a, c - a)} else true) &&
        (if(a + b >= -d + c && a <= -d + c) {!shift(t, d, c).hasFreeVariablesIn(c, a + b + d - c)} else true) &&
        (if(a >= -d + c)                    {!shift(t, d, c).hasFreeVariablesIn(a + d, b)} else true) 
      })

    @opaque @pure
    def boundRangeSubstitutionLemma(t: Term, j: BigInt, s: Term): Unit = {
      require(j >= 0)
      require(!s.hasFreeVariablesIn(0, j+1))

      t match {
        case Var(k) => {
          boundRangeIncreaseCutoff(s, 0, j, j+1)
        }
        case Abs(_, body) => {
          boundRangeShift(s, 1, 0, 0, j+1)
          boundRangeIncreaseCutoff(shift(s, 1, 0), 0, j + 1, j+2)
          boundRangeSubstitutionLemma(body, j+1, shift(s, 1, 0))
        }
        case App(t1, t2) => {
          boundRangeSubstitutionLemma(t1, j, s)
          boundRangeSubstitutionLemma(t2, j, s)
        }
        case Fix(f) => {
          boundRangeSubstitutionLemma(f, j, s)
        }
        case TAbs(body) => {
          boundRangeTypeShiftIdentity(s, 1, 0, 0, j+1)
          boundRangeSubstitutionLemma(body, j, Transformations.Types.shift(s, 1, 0))
        }
        case TApp(t, _) => {
          boundRangeSubstitutionLemma(t, j, s)
        }
      }
    }.ensuring(!substitute(t, j, s).hasFreeVariablesIn(j, 1))
  }

  object Types {
    import SystemFProperties.Types._
    import Transformations.Types._


    @opaque @pure
    def boundRangeSubstitutionIdentity(t: Type, j: BigInt, typ: Type): Unit = {
      require(j >= 0)
      require(!t.hasFreeVariablesIn(j, 1))

      t match {
        case VariableType(k) => {
          assert(k != j)
          assert(substitute(t, j, typ) == t)
        }
        case BasicType(_) => {
          assert(substitute(t, j, typ) == t)
        }
        case UniversalType(body) => {
          boundRangeSubstitutionIdentity(body, j+1, shift(typ, 1 ,0))
        }
        case ArrowType(t1, t2) => {
          boundRangeSubstitutionIdentity(t1, j, typ)
          boundRangeSubstitutionIdentity(t2, j, typ)
        }
      }

    }.ensuring(
      substitute(t, j, typ) == t
    )

    @opaque @pure
    def shift0Identity(t: Type, c: BigInt): Unit = {
      require(c >= 0)
      t match {
        case VariableType(k) => ()
        case BasicType(_) => ()
        case UniversalType(body) => {
          shift0Identity(body, c+1)
        }
        case ArrowType(t1, t2) => {
          shift0Identity(t1, c)
          shift0Identity(t2, c)
        }
      }
    }.ensuring(shift(t, 0, c) == t)

    @opaque @pure
    def boundRangeShiftComposition(t: Type, a: BigInt, b: BigInt, c: BigInt, d: BigInt): Unit = {
      require(a >= 0)
      require(c >= 0)
      require(d >= 0)
      require(d <= c + a)
      require(if(d < c) !t.hasFreeVariablesIn(d, c - d) else !t.hasFreeVariablesIn(c, d - c))
      require((b >= 0) || (-b <= a))


      if (d < c){
        boundRangeShift(t, a, c, c, 0)
        boundRangeShift(t, a, c, d, c - d)
        boundRangeConcatenation(shift(t, a, c), d, c - d, a)
        boundRangeDecrease(shift(t, a, c), d, c - d + a, a)
      }
      else{
        boundRangeShift(t, a, c, c, d - c)
        boundRangeIncreaseCutoff(shift(t, a, c), c, d, a + d - c)
      }

      assert(!shift(t, a, c).hasFreeVariablesIn(d, a))
      if(b < 0){
        boundRangeDecrease(shift(t, a, c), d, a, -b)      
      }
      else{
        ()
      }

      t match {
        case VariableType(_) => ()
        case BasicType(_) => ()
        case UniversalType(body) => {
          boundRangeShiftComposition(body, a, b, c + 1, d + 1)
        }
        case ArrowType(t1, t2) => {
          boundRangeShiftComposition(t1, a, b, c, d)
          boundRangeShiftComposition(t2, a, b, c, d)
        }
      }
    }.ensuring(
      (if(b < 0){!shift(t, a, c).hasFreeVariablesIn(d, -b)} else true) &&
      shift(shift(t, a, c), b, d) == shift(t, a + b, c)
    )

    //TODO: adapt for d < 0
    @opaque @pure
    def boundRangeShift(t: Type, d: BigInt, c: BigInt, a: BigInt, b: BigInt): Unit = {
      require(c >= 0)
      require(b >= 0)
      require(a >= 0)
      require(!t.hasFreeVariablesIn(a, b))
      require(if(d < 0){!t.hasFreeVariablesIn(c, -d)} else true)

      t match {
        case BasicType(_) => ()
        case VariableType(_) => ()
        case UniversalType(body)   => {
          boundRangeShift(body, d, c+1, a + 1, b)
        }
        case ArrowType(t1, t2)    => {
          boundRangeShift(t1, d, c, a, b)
          boundRangeShift(t2, d, c, a, b)
        }
      }

    }.ensuring(
      if(d >= 0){
        (if(c >= a && c <= a + b)           {!shift(t, d, c).hasFreeVariablesIn(a, b + d)} else {true}) &&
        (if(c <= a + b)                     {!shift(t, d, c).hasFreeVariablesIn(a + d, b)} else {true}) &&
        (if(c >= a)                         {!shift(t, d, c).hasFreeVariablesIn(a, b)} else {true})
      }
      else{
        (if(a + b <= c)                     {!shift(t, d, c).hasFreeVariablesIn(a, b)} else true) &&
        (if(a + b >= c && a <= c)           {!shift(t, d, c).hasFreeVariablesIn(a, c - a)} else true) &&
        (if(a + b >= -d + c && a <= -d + c) {!shift(t, d, c).hasFreeVariablesIn(c, a + b + d - c)} else true) &&
        (if(a >= -d + c)                    {!shift(t, d, c).hasFreeVariablesIn(a + d, b)} else true) 
      })

    @opaque @pure
    def boundRangeSubstitutionLemma(t: Type, j: BigInt, s: Type): Unit = {
      require(j >= 0)
      require(!s.hasFreeVariablesIn(0, j+1))

      t match {
        case BasicType(_) => 
        case VariableType(v) => {
          boundRangeIncreaseCutoff(s, 0, j, j+1)
        }
        case UniversalType(body) => {
          boundRangeShift(s, 1, 0, 0, j+1)
          boundRangeIncreaseCutoff(shift(s, 1, 0), 0, j + 1, j+2)
          boundRangeSubstitutionLemma(body, j+1, shift(s, 1, 0))
        }
        case ArrowType(t1, t2) => {
          boundRangeSubstitutionLemma(t1, j, s)
          boundRangeSubstitutionLemma(t2, j, s)
        }
      }
    }.ensuring(!substitute(t, j, s).hasFreeVariablesIn(j, 1))


    @opaque @pure
    def shiftCommutativity(subs: Type, c: BigInt, d: BigInt, a: BigInt, b: BigInt) : Unit ={
      require(c >= 0)
      require(d >= 0)
      require(b >= 0)
      require(a >= 0)
      require(d <= c)
      subs match{
        case BasicType(_) => ()
        case ArrowType(t1, t2) => 
          shiftCommutativity(t1, c, d, a, b)
          shiftCommutativity(t2, c, d, a, b)
        case VariableType(v) => ()
        case UniversalType(t) =>
          shiftCommutativity(t, c + 1, d + 1, a, b)
      }
    }.ensuring(shift(shift(subs, b, c), a, d) == shift(shift(subs, a, d), b, c + a))
    
    @opaque @pure
    def shiftCommutativity2(subs: Type, d1: BigInt, c1: BigInt, d2: BigInt, c2: BigInt) : Unit ={
      require(c1 >= 0)
      require(c2 >= 0)
      require(d1 < 0)
      require(d2 >= 0)
      require(c2 <= c1)
      require(!subs.hasFreeVariablesIn(c1, -d1) || !shift(subs, d2, c2).hasFreeVariablesIn(c1 + d2, -d1))

      subs match {
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          shiftCommutativity2(t1, d1, c1, d2, c2)
          shiftCommutativity2(t2, d1, c1, d2, c2)
        }
        case VariableType(v) => {
          ()
        }
        case UniversalType(t) => {
          shiftCommutativity2(t, d1, c1+1, d2, c2+1) 
        }
      }
    }.ensuring(
      !subs.hasFreeVariablesIn(c1, -d1) &&
      !shift(subs, d2, c2).hasFreeVariablesIn(c1 + d2, -d1) &&
      shift(shift(subs, d1, c1), d2, c2) == shift(shift(subs, d2, c2), d1, c1+d2)
    )
    
    @opaque @pure
    def shiftCommutativity3(subs: Type, d1: BigInt, c1: BigInt, d2: BigInt, c2: BigInt) : Unit ={
      require(c1 >= 0)
      require(c2 >= 0)
      require(d1 < 0)
      require(d2 >= 0)
      require(c2 >= c1)
      require(!subs.hasFreeVariablesIn(c1, -d1) || !shift(subs, d2, c2-d1).hasFreeVariablesIn(c1, -d1))

      subs match {
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          shiftCommutativity3(t1, d1, c1, d2, c2)
          shiftCommutativity3(t2, d1, c1, d2, c2)
        }
        case VariableType(v) => {
          ()
        }
        case UniversalType(t) => {
          shiftCommutativity3(t, d1, c1+1, d2, c2+1) 
        }
      }
    }.ensuring(
      !subs.hasFreeVariablesIn(c1, -d1) &&
      !shift(subs, d2, c2-d1).hasFreeVariablesIn(c1, -d1) &&
      shift(shift(subs, d1, c1), d2, c2) == shift(shift(subs, d2, c2-d1), d1, c1)
    )

    @opaque @pure
    def shiftCommutativity4(subs: Type, d1: BigInt, c1: BigInt, d2: BigInt, c2: BigInt) : Unit ={
      require(c1 >= 0)
      require(c2 >= 0)
      require(d1 < 0)
      require(d2 < 0)
      require(c1 >= c2)
      require(c2 <= c1+d2)
      require(!subs.hasFreeVariablesIn(c1, -d1))
      require(!subs.hasFreeVariablesIn(c2, -d2))
      require(!shift(subs, d1, c1).hasFreeVariablesIn(c2, -d2))

      subs match {
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          shiftCommutativity4(t1, d1, c1, d2, c2)
          shiftCommutativity4(t2, d1, c1, d2, c2)
        }
        case VariableType(v) => {
          ()
        }
        case UniversalType(t) => {
          shiftCommutativity4(t, d1, c1+1, d2, c2+1) 
        }
      }
    }.ensuring(
      !shift(subs, d2, c2).hasFreeVariablesIn(c1+d2, -d1) &&
      shift(shift(subs, d1, c1), d2, c2) == shift(shift(subs, d2, c2), d1, c1+d2)
    )

    @opaque @pure
    def shiftSubstitutionCommutativityType(typ: Type, s: BigInt, c: BigInt, k: BigInt, subs: Type): Unit = {
      require(s >= 0)
      require(c >= 0 && c <= k)

      typ match {
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          shiftSubstitutionCommutativityType(t1, s, c, k, subs)
          shiftSubstitutionCommutativityType(t2, s, c, k, subs)
        }
        case VariableType(v) => ()
        case UniversalType(t) => {
          shiftCommutativity(subs, c, 0, 1, s)
          shiftSubstitutionCommutativityType(t, s, c+1, k+1, shift(subs, 1, 0))
        }
      }
    }.ensuring(
      shift(substitute(typ, k, subs), s, c) 
      == 
      substitute(shift(typ, s, c), k+s, shift(subs, s, c))
    )

    @opaque @pure
    def shiftSubstitutionCommutativityType2(typ: Type, s: BigInt, c: BigInt, k: BigInt, subs: Type): Unit = {
      require(c > k)
      require(k >= 0)
      require(if (s < 0) {!subs.hasFreeVariablesIn(c, -s) && !typ.hasFreeVariablesIn(c, -s)} else {true})

      if(s < 0){
        boundRangeSubstitutionLemma1(typ, k, subs, -s, -s, c, c)
      }

      typ match {
        case BasicType(_) => {}
        case ArrowType(t1, t2) => {
          shiftSubstitutionCommutativityType2(t1, s, c, k, subs)
          shiftSubstitutionCommutativityType2(t2, s, c, k, subs)
        }
        case VariableType(v) => {}
        case UniversalType(t) => {
          if(s >= 0){
            shiftCommutativity(subs, c, 0, 1, s)
          }
          else{
            boundRangeShift(subs, 1, 0, c, -s)
            shiftCommutativity2(subs, s, c, 1, 0)
          }
          shiftSubstitutionCommutativityType2(t, s, c+1, k+1, shift(subs, 1, 0))
        }
      }
    }.ensuring(
        (if(s < 0){ (
          !substitute(typ, k, subs).hasFreeVariablesIn(c, -s) 
        )} else true) &&
      (
        shift(substitute(typ, k, subs), s, c) 
        == 
        substitute(shift(typ, s, c), k, shift(subs, s, c))
      )
    )

    @opaque @pure
    def shiftSubstitutionCommutativityTypeNeg(typ: Type, s: BigInt, c: BigInt, k: BigInt, subs: Type): Unit = {
      require(c >= 0 && c <= k)
      require(s > 0)
      require(!typ.hasFreeVariablesIn(c, s))

      boundRangeShift(subs, s, c, c, 0)
      boundRangeSubstitutionLemma1(typ, k + s, shift(subs, s, c), s, s, c, c)


      typ match {
        case BasicType(_) => {}
        case ArrowType(t1, t2) => {
          shiftSubstitutionCommutativityTypeNeg(t1, s, c, k, subs)
          shiftSubstitutionCommutativityTypeNeg(t2, s, c, k, subs)
        }
        case VariableType(v) => {
          boundRangeShiftComposition(subs, s, -s, c, c)
          if (v >= c && k == v - s){
              boundRangeShiftComposition(subs, s, -s, c, c)
              shift0Identity(subs, c)          

          }
        }
        case UniversalType(t) => {
          shiftSubstitutionCommutativityTypeNeg(t, s, c + 1, k + 1, shift(subs, 1, 0))
          shiftCommutativity(subs, c, 0, 1, s)
        }
      }
    }.ensuring(
      !substitute(typ, k + s, shift(subs, s, c)).hasFreeVariablesIn(c, s) &&
      (
        shift(substitute(typ, k + s, shift(subs, s, c)), -s, c) 
        == 
        substitute(shift(typ, -s, c), k, subs)
      )
    )

    @opaque @pure
    def boundRangeSubstitutionLemma1(t: Type, j: BigInt, s: Type, a: BigInt, b: BigInt, c: BigInt, d: BigInt): Unit = {
      require(j >= 0)
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(d >= 0)
      require(!s.hasFreeVariablesIn(c, a))
      require(!t.hasFreeVariablesIn(d, b))
      require(c + a >= d + b)
      require(c <= d)

      t match {
        case BasicType(_) => 
          assert(!substitute(t, j, s).hasFreeVariablesIn(d, b))
        case ArrowType(t1, t2) => 
          boundRangeSubstitutionLemma1(t1, j, s, a, b, c, d)
          boundRangeSubstitutionLemma1(t2, j, s, a, b, c, d)
          assert(!substitute(t, j, s).hasFreeVariablesIn(d, b))
        case VariableType(v) => 
          boundRangeIncreaseCutoff(s, c, d, a)
          boundRangeDecrease(s, d, a - (d - c), b)
          assert(!substitute(t, j, s).hasFreeVariablesIn(d, b))
        case UniversalType(body) =>
          if(c > 0){
            boundRangeShift(s, 1, 0, c, a)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(c + 1, a))
          }
          else{
            assert(!s.hasFreeVariablesIn(0, a))
            boundRangeShift(s, 1, 0, 0, a)
            boundRangeIncreaseCutoff(shift(s, 1, 0), 0, 1 , a + 1)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(1, a))
          }
          boundRangeSubstitutionLemma1(body, j + 1, shift(s, 1, 0), a, b, c + 1, d + 1)

          assert(!substitute(body, j + 1, shift(s, 1, 0)).hasFreeVariablesIn(d + 1, b))
          assert(!UniversalType(substitute(body, j + 1, shift(s, 1, 0))).hasFreeVariablesIn(d, b))
          assert(!substitute(UniversalType(body), j, s).hasFreeVariablesIn(d, b))
          assert(!substitute(t, j, s).hasFreeVariablesIn(d, b))

      }
    }.ensuring(!substitute(t, j, s).hasFreeVariablesIn(d, b))

    @opaque @pure
    def boundRangeSubstitutionLemma2(t: Type, j: BigInt, s: Type, a: BigInt, b: BigInt, c: BigInt, d: BigInt): Unit = {
      require(j >= 0)
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(d >= 0)
      require(!s.hasFreeVariablesIn(c, a))
      require(!t.hasFreeVariablesIn(d, b))
      require(c + a <= d + b)
      require(c >= d)

      t match {
        case BasicType(_) => 
          assert(!substitute(t, j, s).hasFreeVariablesIn(c, a))
        case ArrowType(t1, t2) => 
          boundRangeSubstitutionLemma2(t1, j, s, a, b, c, d)
          boundRangeSubstitutionLemma2(t2, j, s, a, b, c, d)
          assert(!substitute(t, j, s).hasFreeVariablesIn(c, a))
        case VariableType(v) => 
          boundRangeIncreaseCutoff(t, d, c, b)
          boundRangeDecrease(t, c, b - (c - d), a)
          assert(!substitute(t, j, s).hasFreeVariablesIn(c, a))
        case UniversalType(body) =>
          if(c > 0){
            boundRangeShift(s, 1, 0, c, a)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(c + 1, a))
          }
          else{
            assert(!s.hasFreeVariablesIn(0, a))
            boundRangeShift(s, 1, 0, 0, a)
            boundRangeIncreaseCutoff(shift(s, 1, 0), 0, 1 , a + 1)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(1, a))
          }
          boundRangeSubstitutionLemma2(body, j + 1, shift(s, 1, 0), a, b, c + 1, d + 1)

      }
    }.ensuring(!substitute(t, j, s).hasFreeVariablesIn(c, a))

    @opaque @pure
    def boundRangeSubstitutionLemma3(t: Type, j: BigInt, s: Type, a: BigInt, b: BigInt, c: BigInt, d: BigInt): Unit = {
      require(j >= 0)
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(d >= 0)
      require(!s.hasFreeVariablesIn(c, a))
      require(!t.hasFreeVariablesIn(d, b))
      require(c <= d + b)
      require(c + a >= d + b)
      require(c >= d)

      t match {
        case BasicType(_) => 
          assert(!substitute(t, j, s).hasFreeVariablesIn(c, b - (c - d)))
        case ArrowType(t1, t2) => 
          boundRangeSubstitutionLemma3(t1, j, s, a, b, c, d)
          boundRangeSubstitutionLemma3(t2, j, s, a, b, c, d)
          assert(!substitute(t, j, s).hasFreeVariablesIn(c, b - (c - d)))
        case VariableType(v) => 
          boundRangeDecrease(s, c, a, b - (c - d))
          boundRangeIncreaseCutoff(t, d, c, b)
          assert(!substitute(t, j, s).hasFreeVariablesIn(c, b - (c - d)))
        case UniversalType(body) =>
          if(c > 0){
            boundRangeShift(s, 1, 0, c, a)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(c + 1, a))
          }
          else{
            assert(!s.hasFreeVariablesIn(0, a))
            boundRangeShift(s, 1, 0, 0, a)
            boundRangeIncreaseCutoff(shift(s, 1, 0), 0, 1 , a + 1)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(1, a))
          }
          boundRangeSubstitutionLemma3(body, j + 1, shift(s, 1, 0), a, b, c + 1, d + 1)

      }
    }.ensuring(!substitute(t, j, s).hasFreeVariablesIn(c, b - (c - d)))

    @opaque @pure
    def boundRangeSubstitutionLemma4(t: Type, j: BigInt, s: Type, a: BigInt, b: BigInt, c: BigInt, d: BigInt): Unit = {
      require(j >= 0)
      require(a >= 0)
      require(b >= 0)
      require(c >= 0)
      require(d >= 0)
      require(!s.hasFreeVariablesIn(c, a))
      require(!t.hasFreeVariablesIn(d, b))
      require(c + a >= d)
      require(c + a <= d + b)
      require(c <= d)

      t match {
        case BasicType(_) => 
          assert(!substitute(t, j, s).hasFreeVariablesIn(d, a - (d - c)))
        case ArrowType(t1, t2) => 
          boundRangeSubstitutionLemma4(t1, j, s, a, b, c, d)
          boundRangeSubstitutionLemma4(t2, j, s, a, b, c, d)
          assert(!substitute(t, j, s).hasFreeVariablesIn(d, a - (d - c)))
        case VariableType(v) => 
          boundRangeDecrease(t, d, b, a - (d - c))
          boundRangeIncreaseCutoff(s, c, d, a)
          assert(!substitute(t, j, s).hasFreeVariablesIn(d, a - (d - c)))
        case UniversalType(body) =>
          if(c > 0){
            boundRangeShift(s, 1, 0, c, a)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(c + 1, a))
          }
          else{
            assert(!s.hasFreeVariablesIn(0, a))
            boundRangeShift(s, 1, 0, 0, a)
            boundRangeIncreaseCutoff(shift(s, 1, 0), 0, 1 , a + 1)
            assert(!shift(s, 1, 0).hasFreeVariablesIn(1, a))
          }
          boundRangeSubstitutionLemma4(body, j + 1, shift(s, 1, 0), a, b, c + 1, d + 1)

      }
    }.ensuring(!substitute(t, j, s).hasFreeVariablesIn(d, a - (d - c)))

    @opaque @pure
    def substitutionCommutativity(t: Type, j: BigInt, s: Type, k: BigInt, u: Type): Unit = {
      require(j >= 0 && k >= 0)
      require(j != k)
      require(!u.hasFreeVariablesIn(j, 1))

      t match {
        case VariableType(i) => {
          if(i == k) {
            boundRangeSubstitutionIdentity(u, j, substitute(s, k, u))
          }
        }
        case BasicType(_) => ()
        case ArrowType(t1, t2) => {
          substitutionCommutativity(t1, j, s, k, u)
          substitutionCommutativity(t2, j, s, k, u)
        }
        case UniversalType(b) => {
          shiftSubstitutionCommutativityType(s, 1, 0, k, u)
          boundRangeShift(u, 1, 0, j, 1)
          substitutionCommutativity(b, j+1, shift(s, 1, 0), k+1, shift(u, 1, 0))
        }
      }
    }.ensuring(
      substitute(substitute(t, j, s), k, u)
      ==
      substitute(substitute(t, k, u), j, substitute(s, k, u))
    )

    /// Types in terms 

    @opaque @pure
    def boundRangeShift(t: Term, d: BigInt, c: BigInt, a: BigInt, b: BigInt): Unit = {
      require(c >= 0)
      require(a >= 0)
      require(b >= 0)
      require(!t.hasFreeTypeVariablesIn(a, b))
      require(if(d < 0) {!t.hasFreeTypeVariablesIn(c, -d)} else true)
      t match {
        case Var(k) => ()
        case Abs(targ, body) =>
          boundRangeShift(targ, d, c, a, b)
          boundRangeShift(body, d, c, a, b)
        case App(t1, t2) => {
          boundRangeShift(t1, d, c, a, b)
          boundRangeShift(t2, d, c, a, b)
        }
        case Fix(f) => boundRangeShift(f, d, c, a, b)
        case TAbs(body) => boundRangeShift(body, d, c + 1, a + 1, b)
        case TApp(t, typ) => 
          boundRangeShift(t, d, c, a, b)
          boundRangeShift(typ, d, c, a, b)
      }
    }.ensuring(
      if(d >= 0){
        (if(c >= a && c <= a + b)           {!shift(t, d, c).hasFreeTypeVariablesIn(a, b + d)} else {true}) &&
        (if(c <= a + b)                     {!shift(t, d, c).hasFreeTypeVariablesIn(a + d, b)} else {true}) &&
        (if(c >= a)                         {!shift(t, d, c).hasFreeTypeVariablesIn(a, b)} else {true})
      }
      else{
        (if(a + b <= c)                     {!shift(t, d, c).hasFreeTypeVariablesIn(a, b)} else true) &&
        (if(a + b >= c && a <= c)           {!shift(t, d, c).hasFreeTypeVariablesIn(a, c - a)} else true) &&
        (if(a + b >= -d + c && a <= -d + c) {!shift(t, d, c).hasFreeTypeVariablesIn(c, a + b + d - c)} else true) &&
        (if(a >= -d + c)                    {!shift(t, d, c).hasFreeTypeVariablesIn(a + d, b)} else true) 
      })

    @opaque @pure
    def boundRangeSubstitutionLemma(t: Term, j: BigInt, s: Type): Unit = {
      require(j >= 0)
      require(!s.hasFreeVariablesIn(0, j+1))

      t match {
        case Var(k) => ()
        case Abs(targ, body) => {
          boundRangeSubstitutionLemma(targ, j, s)
          boundRangeSubstitutionLemma(body, j, s)
        }
        case App(t1, t2) => {
          boundRangeSubstitutionLemma(t1, j, s)
          boundRangeSubstitutionLemma(t2, j, s)
        }
        case Fix(f) => boundRangeSubstitutionLemma(f, j, s)
        case TAbs(body) => {
          boundRangeShift(s, 1, 0, 0, j+1)
          boundRangeSubstitutionLemma(body, j+1, shift(s, 1, 0))
        }
        case TApp(term, typ) => {
          boundRangeSubstitutionLemma(term, j, s)
          boundRangeSubstitutionLemma(typ, j, s)
        }
      }
    }.ensuring(!substitute(t, j, s).hasFreeTypeVariablesIn(j, 1))

    /// Types in environments


    @opaque @pure
    def boundRangeSubstitutionIdentity(env: Environment, j: BigInt, typ: Type): Unit = {
      require(j >= 0)
      require(!hasFreeVariablesIn(env, j, 1))

      env match {
        case Nil() => {
          assert(substitute(env, j, typ) == env)
        }
        case Cons(h, t) => {
          boundRangeSubstitutionIdentity(h, j, typ)
          boundRangeSubstitutionIdentity(t, j, typ)
        }
      }

    }.ensuring(
      substitute(env, j, typ) == env
    )

    @opaque @pure
    def shift0Identity(env: Environment, c: BigInt): Unit = {
      require(c >= 0)
      env match {
        case Nil() => assert(shift(env, 0, c) == env)
        case Cons(h, t) => {
          shift0Identity(h, c)
          shift0Identity(t, c)
        }
      }
    }.ensuring(shift(env, 0, c) == env)

    @opaque @pure
    def boundRangeShiftComposition(env: Environment, a: BigInt, b: BigInt, c: BigInt, d: BigInt): Unit = {
      require(a >= 0)
      require(c >= 0)
      require(d >= 0)
      require(d <= c + a)
      require(if(d < c) !hasFreeVariablesIn(env, d, c - d) else !hasFreeVariablesIn(env, c, d - c))
      require((b >= 0) || (-b <= a))

      env match {
        case Nil() => {
          assert(shift(shift(env, a, c), b, d) == shift(env, a + b, c))
        }
        case Cons(h, t) => {
          boundRangeShiftComposition(h, a, b, c, d)
          boundRangeShiftComposition(t, a, b, c, d)
        }
      }

    }.ensuring(
      (if (b < 0) !hasFreeVariablesIn(shift(env, a, c), d, -b) else true) &&
      shift(shift(env, a, c), b, d) == shift(env, a + b, c)
    )

    @opaque @pure
    def boundRangeShift(env: Environment, d: BigInt, c: BigInt, a: BigInt, b: BigInt): Unit = {
      require(c >= 0)
      require(b >= 0)
      require(a >= 0)
      require(!hasFreeVariablesIn(env, a, b))
      require(if(d < 0){!hasFreeVariablesIn(env, c, -d)} else true)

      env match {
        case Nil() => ()
        case Cons(h, t) => {
          boundRangeShift(h, d, c, a, b)
          boundRangeShift(t, d, c, a, b)
        }
      }

    }.ensuring(
      if(d >= 0){
        (if(c >= a && c <= a + b)           {!hasFreeVariablesIn(shift(env, d, c), a, b + d)} else {true}) &&
        (if(c <= a + b)                     {!hasFreeVariablesIn(shift(env, d, c), a + d, b)} else {true}) &&
        (if(c >= a)                         {!hasFreeVariablesIn(shift(env, d, c), a, b)} else {true})
      }
      else{
        (if(a + b <= c)                     {!hasFreeVariablesIn(shift(env, d, c), a, b)} else true) &&
        (if(a + b >= c && a <= c)           {!hasFreeVariablesIn(shift(env, d, c), a, c - a)} else true) &&
        (if(a + b >= -d + c && a <= -d + c) {!hasFreeVariablesIn(shift(env, d, c), c, a + b + d - c)} else true) &&
        (if(a >= -d + c)                    {!hasFreeVariablesIn(shift(env, d, c), a + d, b)} else true) 
      })

    @opaque @pure
    def shiftCommutativity(env: Environment, c: BigInt, d: BigInt, a: BigInt, b: BigInt) : Unit ={
      require(c >= 0)
      require(d >= 0)
      require(b >= 0)
      require(a >= 0)
      require(d <= c)
      
      env match {
        case Nil() => ()
        case Cons(h, t) => {
          shiftCommutativity(h, c, d, a, b)
          shiftCommutativity(t, c, d, a, b)
        }
      }
    }.ensuring(shift(shift(env, b, c), a, d) == shift(shift(env, a, d), b, c + a))
    

    @opaque @pure
    def shiftCommutativity2(env: Environment, d1: BigInt, c1: BigInt, d2: BigInt, c2: BigInt) : Unit ={
      require(c1 >= 0)
      require(c2 >= 0)
      require(d1 < 0)
      require(d2 >= 0)
      require(c2 <= c1)
      require(!hasFreeVariablesIn(env, c1, -d1) || !hasFreeVariablesIn(shift(env, d2, c2), c1+d2, -d1))

      env match {
        case Nil() => ()
        case Cons(h, t) => {
          shiftCommutativity2(h, d1, c1, d2, c2)
          shiftCommutativity2(t, d1, c1, d2, c2)
        }
      }
    }.ensuring(
      !hasFreeVariablesIn(env, c1, -d1) &&
      !hasFreeVariablesIn(shift(env, d2, c2), c1+d2, -d1) &&
      shift(shift(env, d1, c1), d2, c2) == shift(shift(env, d2, c2), d1, c1+d2)
    )

    /// Environment shift is map-like

    @opaque @pure
    def shiftIndexing(env: Environment, d: BigInt, c: BigInt, j: BigInt): Unit = {
      require(c >= 0)
      require(if(d < 0) !hasFreeVariablesIn(env, c, -d) else true)
      require(0 <= j && j < env.length)

      val Cons(h, t) = env

      if(j == 0) {
      }
      else {
        shiftIndexing(t, d, c, j-1)
      }
    }.ensuring(
      (if (d < 0) !env(j).hasFreeVariablesIn(c, -d) else true) &&
      ( shift(env, d, c)(j) == shift(env(j), d, c) )
    )

    @opaque @pure
    def shiftPrepend(h: Type, @induct t: Environment, d: BigInt, c: BigInt): Unit = {
      require(c >= 0)
      require(if(d < 0) !h.hasFreeVariablesIn(c, -d) else true)
      require(if(d < 0) !hasFreeVariablesIn(t, c, -d) else true)
    }.ensuring(
      shift(h, d, c) :: shift(t, d, c)
      ==
      shift(h :: t, d, c)
    )

    @opaque @pure
    def shiftConcat(@induct env1: Environment, env2: Environment, d: BigInt, c: BigInt): Unit = {
      require(c >= 0)
      require(if(d < 0) !hasFreeVariablesIn(env1, c, -d) else true)
      require(if(d < 0) !hasFreeVariablesIn(env2, c, -d) else true)

    }.ensuring(
      (if (d < 0) !hasFreeVariablesIn(env1 ++ env2, c, -d) else true) && 
      ( shift(env1 ++ env2, d, c) == (shift(env1, d, c) ++ shift(env2, d, c)) )
    )
  }

}