/* Copyright 2017- LARA, EPFL, Lausanne.
   Author: Dragana Milovancevic. */
package funsets

import stainless.lang._
import stainless.annotation._
import stainless.collection._

// Purely Functional Sets.
object FunSets {
  // We represent a set by its characteristic function, `contains` 
  
  // Indicates whether a set contains a given element.
  def contains(s: Int => Boolean, elem: Int): Boolean = s(elem)
 
  // Complement of `s`
  def complement(s: Int => Boolean): Int => Boolean = (e: Int) => !s(e)

  // check that every element is in the set or its complement
  def checkComplement(e: Int, s: Int=>Boolean) : Boolean = 
    (contains(s, e) || contains(complement(s),e)).holds

  // The set containing the given element and nothing else
  def singletonSet(elem: Int): Int => Boolean = (e: Int) => elem == e

  // check that singleton does contain the element    
  def checkContains(elem: Int) : Boolean = 
    contains(singletonSet(elem), elem).holds
    
  // check that distinct elements give distinct singletons
  def checkSingleton(e1: Int, e2:Int, s: Int=>Boolean): Boolean = 
     (e1==e2 || 
      contains(singletonSet(e1), e1) && !(contains(singletonSet(e1), e2))).holds

  // Union of the two given sets, whose elements that in `s` or `t`
  def union(s: Int => Boolean, t: Int => Boolean): Int => Boolean =
    (elem: Int) => s(elem) || t(elem)

  // check if an element is in one of the sets, it is in the union
  def checkUnion1(s1: Int=>Boolean, s2: Int=>Boolean, e: Int): Boolean = 
     ((!contains(s1, e) && !contains(s2, e)) || 
      (contains(union(s1, s2), e))).holds

  // check if element is in union, it is in one of the sets
  def checkUnion2(s1: Int=>Boolean, s2: Int=>Boolean, e: Int) : Boolean = 
     ((!contains(union(s1, s2), e)) || (contains(s1, e) || contains(s2, e)) ).holds
  
  // Intersection of the two given sets: elements both in `s` and `t`
  def intersect(s: Int => Boolean, t: Int => Boolean): Int => Boolean =
     (elem: Int) => s(elem) && t(elem)

  // check if set is in intersection, it is in both sets
  def checkIntersect(s1: Int => Boolean, s2: Int => Boolean, e: Int): Boolean =
     ((contains(s1, e) && contains(s2, e)) || (!contains(intersect(s1, s2), e))).holds
  

  // Difference of the two given sets, elements of `s` that are not in `t`.
  def diff(s: Int => Boolean, t: Int => Boolean): Int => Boolean =
     (elem: Int) => s(elem) && !t(elem)
  
  // check if element is in the intersection it is in `s1` and not `s2`
  def checkDiff(s1: Int => Boolean, s2: Int => Boolean, e: Int): Boolean = 
     (!contains(diff(s1, s2), e) || (contains(s1, e) && !contains(s2, e))).holds
  
  /**
   * Returns the subset of `s` for which `p` holds.
   */
  def filter(s: Int => Boolean, p: Int => Boolean): Int => Boolean = {
    (elem: Int) => s(elem) && p(elem)
  } ensuring(forallCheck(filter(s, p), p))
  

  // The bounds on absolute value of `forallCheck` and `existsCheck`
  val bound = 1000

  // Check for bounded range if all `s` satisfy `p`
  def forallCheck(s: Int => Boolean, p: Int => Boolean): Boolean = {
    def iter(a: Int): Boolean = {
      if (a>bound) true
      else if (s(a) && !p(a)) false
      else iter(a+1)
    }
    iter(-bound)
  }
   
  // Check if exists an integer in the bound and within `s` that satisfies `p`
  def existsCheck(s: Int => Boolean, p: Int => Boolean): Boolean = {
    if(forallCheck(s, (elem:Int) => !p(elem))) false
    else true
  }

  // either set `s` its complement are nonempty
  def checkExists(s: Int=>Boolean) : Boolean = 
    (existsCheck(s, _=>true) || existsCheck(complement(s),_=>true)).holds
  
  // Set computed by applying `f` to each element of `s`
  def map(s: Int => Boolean, f: Int => Int): Int => Boolean = {
        def iter(newset:Int => Boolean, a: Int): Int => Boolean = {   
          if(a>bound) newset
          else if (s(a)) iter(union(newset, singletonSet(f(a))), a+1)
          else iter(newset, a+1)
        }
        iter(Int => false, -bound)
  } 

  def checkSet1(s1: Int => Boolean, s2: Int => Boolean, x: Int): Boolean = 
      (intersect(s1, s2)(x) == complement(union(complement(s1), complement(s2)))(x)).holds

  def checkSet2(s1: Int => Boolean, s2: Int => Boolean, x: Int): Boolean = 
    (union(s1, s2)(x) == complement(intersect(complement(s1), complement(s2)))(x)).holds
}
