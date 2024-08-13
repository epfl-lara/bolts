package ch.epfl.lexer

import stainless.collection.* 
import stainless.annotation.*
import stainless.lang.* 

object ListSetObj {
  case class ListSet[A](toList: List[A]) {
    require(ListSpecs.noDuplicate(toList))
    def contains(elem: A): Boolean = toList.contains(elem)
    def add(elem: A): ListSet[A] = {
      if toList.contains(elem) then this else ListSet(elem :: toList)
    }.ensuring(res => res.contains(elem)) 
  }
  
}
