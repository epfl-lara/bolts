//> using sourceJar "./stainless-library_2.13-0.9.8.1-sources.jar"
//> using jar "./stainless-library_2.13-0.9.8.jar"
import stainless.lang.* 
import stainless.collection.*
import stainless.annotation.*
import stainless.lang.StaticChecks.*
import stainless.collection.ListSpecs.*
sealed abstract class AgTree[T] // agitated tree
case class FoldLeft[T](elems: List[T]) extends AgTree[T]:
  require(!elems.isEmpty)
case class Combine[T](left: AgTree[T], right: AgTree[T]) extends AgTree[T]

extension[T] (at: AgTree[T])
  def toList: List[T] = {
    at match
      case FoldLeft(es) => es
      case Combine(at1, at2) => at1.toList ++ at2.toList   
  } ensuring (!_.isEmpty)

trait Reducer[T,S]:
  def s0: S
  def seqop(s: S, t: T): S
  def combop(s1: S, s2: S): S

  @law def combSeqAssoc(s1: S, s2: S, t: T): Boolean =
    combop(s1, seqop(s2, t)) == seqop(combop(s1, s2), t)
  @law def combZeroSeq(s: S, t: T): Boolean =
    combop(s, seqop(s0, t)) == seqop(s, t)
end Reducer

def fold[T,S](at: AgTree[T], r: Reducer[T,S]): S = {
  at match
    case FoldLeft(es) => es.foldLeft(r.s0)(r.seqop)
    case Combine(at1, at2) =>       
      combLemma(at1.toList, at2.toList, r)
      r.combop(fold(at1, r), fold(at2, r))
} ensuring(_ == at.toList.foldLeft(r.s0)(r.seqop))

def foldListConc[T,S](l1: List[T], l2: List[T], s0: S, seqop: (S,T) => S): Unit = {
  l1 match
    case Nil() => ()
    case Cons(t1,l1rest) => {
      assert(l1 ++ l2 == Cons(t1, l1rest ++ l2), "head of concat")
      assert((l1 ++ l2).foldLeft(s0)(seqop) == 
             (l1rest ++ l2).foldLeft(seqop(s0, t1))(seqop))
      foldListConc(l1rest, l2, seqop(s0,t1), seqop)
    }
} ensuring(_ => (l1 ++ l2).foldLeft(s0)(seqop) == 
                l2.foldLeft(l1.foldLeft(s0)(seqop))(seqop))

def foldListLast[T,S](l1: List[T], t: T, s0: S, seqop: (S,T) => S): Unit = {
  foldListConc(l1, List(t), s0, seqop)
} ensuring(_ => (l1 ++ List(t)).foldLeft(s0)(seqop) == seqop(l1.foldLeft(s0)(seqop), t))

def initLast[T](l: List[T]): (List[T], T) = {
  require(!l.isEmpty)
  l match
    case Cons(x, Nil()) => (Nil[T](), x)
    case Cons(x, xs) => 
      val (xsInit, last) = initLast(xs)
      (Cons(x, xsInit), last)
} ensuring(res => l == res._1 ++ List(res._2))

def combLemma[T,S](l1: List[T], l2: List[T], r: Reducer[T,S]): Unit =   
  require(!l1.isEmpty && !l2.isEmpty)
  decreases(l2.length)
  val s1 = l1.foldLeft(r.s0)(r.seqop)
  val s2 = l2.foldLeft(r.s0)(r.seqop)
  val s = (l1 ++ l2).foldLeft(r.s0)(r.seqop)
  {
    foldListConc(l1, l2, r.s0, r.seqop)
    l2 match
      case Cons(t2, Nil()) => 
        assert(s2 == r.seqop(r.s0, t2))
        assert(r.combZeroSeq(s1, t2))        
        ()
      case _ => 
        val (l2init, l2last) = initLast(l2)
        foldListLast(l2init, l2last, r.s0, r.seqop)
        val s2init = l2init.foldLeft(r.s0)(r.seqop)
        assert(s2 == r.seqop(s2init, l2last), "s2 eqs")
        val s1s2init = (l1 ++ l2init).foldLeft(r.s0)(r.seqop)
        combLemma(l1, l2init, r)
        ListSpecs.appendAssoc(l1, l2init, List(l2last))
        foldListLast(l1 ++ l2init, l2last, r.s0, r.seqop)
        assert(r.combSeqAssoc(s1, s2init, l2last))        
        ()
  }.ensuring(_ => r.combop(s1, s2) == s)
   