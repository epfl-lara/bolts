/* Copyright 2009-2021 EPFL, Lausanne */
/* Modified by Clément Burgelin */

import stainless.annotation._
import stainless.collection._
import stainless.lang._
import stainless.proof._

import InorderSet._

object RedBlackTree {
  sealed abstract class Color
  case class Red() extends Color
  case class Black() extends Color
 
  sealed abstract class Tree {
    def content : Set[BigInt] = this match {
      case Empty() => Set.empty
      case Node(_, l, v, r) => l.content ++ Set(v) ++ r.content
    }

    def toList : List[BigInt] = (this match {
      case Empty() => List.empty[BigInt]
      case Node(_, l, v, r) => l.toList ++ (v :: r.toList)
    }).ensuring(_.content == content)

    def size : BigInt = (this match {
      case Empty() => BigInt(0)
      case Node(_, l, v, r) => l.size + 1 + r.size
    }) ensuring(_ == toList.length)
  }
  
  case class Empty() extends Tree
  case class Node(color: Color, left: Tree, value: BigInt, right: Tree) extends Tree {
    def leftList : List[BigInt] = left.toList
    def rightList : List[BigInt] = value :: right.toList

    def head: BigInt = (left match {
      case Empty() => value
      case n: Node => n.head
    }) ensuring(_ == toList.head)

    def last: BigInt = {
      concatLast(leftList, rightList)
      right match {
        case Empty() => value
        case n: Node => n.last
      }
    } ensuring(_ == toList.last)
  }

  sealed abstract class OptionInt
  case class Some(v : BigInt) extends OptionInt
  case class None() extends OptionInt

  /* We consider leaves to be black by definition */
  def isBlack(t: Tree) : Boolean = t match {
    case Empty() => true
    case Node(Black(),_,_,_) => true
    case _ => false
  }

  // Validity functions
  def isValidRBTree(t: Tree) : Boolean = (isBlack(t) && isValidRBSubtree(t))

  def isValidRBSubtree(t: Tree) : Boolean = {
    decreases(t.size)
    isBST(t) && blackBalanced(t) && redNodesHaveBlackChildren(t)
  } ensuring(_ ==> (t match {
    case Node(_, l, v, r) => isValidRBSubtree(l) && isValidRBSubtree(r)
    case _ => true
  }))
  
  def isValidTempNode(n: Node) : Boolean = (
    isBST(n) && blackBalanced(n) && redDescHaveBlackChildren(n)
  ) ensuring(_ ==> (n match {
    case Node(_, l, v, r) => isValidRBSubtree(l) && isValidRBSubtree(r)
  }))

  def isValidPreBalancingNode(n: Node): Boolean = (
    isBST(n) && blackBalanced(n)
    && redDescHaveBlackChildren(n.left) && redDescHaveBlackChildren(n.right)
    && (redNodesHaveBlackChildren(n.left) || redNodesHaveBlackChildren(n.right))
  )

  def isBST(t: Tree) : Boolean = isInorder(t.toList) ensuring(_ ==> (t match {
    case Node(_, l, v, r) => inorderSpread(l.toList, v, r.toList)
    case _ => true
  }))

  def redNodesHaveBlackChildren(t: Tree) : Boolean = {
    decreases((t.size) * 2 + 1)
    t match {
      case Empty() => true
      case Node(Black(), l, _, r) => redNodesHaveBlackChildren(l) && redNodesHaveBlackChildren(r)
      case Node(Red(), l, _, r) => isBlack(l) && isBlack(r) && redNodesHaveBlackChildren(l) && redNodesHaveBlackChildren(r)
    }
  } ensuring(_ ==> redDescHaveBlackChildren(t))

  def redDescHaveBlackChildren(t: Tree) : Boolean = {
    decreases(t.size * 2)
    t match {
      case Empty() => true
      case Node(_,l,_,r) => redNodesHaveBlackChildren(l) && redNodesHaveBlackChildren(r)
    }
  }

  def blackBalanced(t : Tree) : Boolean = t match {
    case Node(_,l,_,r) => blackBalanced(l) && blackBalanced(r) && blackHeight(l) == blackHeight(r)
    case Empty() => true
  }

  def blackHeight(t : Tree) : BigInt = t match {
    case Empty() => 1
    case Node(Black(), l, _, _) => blackHeight(l) + 1
    case Node(Red(), l, _, _) => blackHeight(l)
  }

  // <<insert element x into the tree t>>
  def ins(t: Tree, x: BigInt): Node = {
    require(isValidRBSubtree(t))
    val temp = t match {
      case Empty() => Node(Red(),Empty(),x,Empty())
      case in @ Node(c,a,y,b) => {
        if (x < y) {
          val out = Node(c, ins(a, x), y, b)
          assert(insertSmallerLemma(a.toList, y, b.toList, x))
          assert(ins(a, x).toList ++ (y :: b.toList) == inorderInsert(t.toList, x))
          check(out.toList == inorderInsert(t.toList, x))
          check(isValidPreBalancingNode(out))
          out
        } else if (x == y) {
          assert(insertEqualLemma(a.toList, y, b.toList, x))
          check(in.toList == inorderInsert(t.toList, x))
          check(isValidPreBalancingNode(in))
          in
        } else {
          val out = Node(c, a, y, ins(b, x))
          assert(insertBiggerLemma(a.toList, y, b.toList, x))
          assert(a.toList ++ (y :: ins(b, x).toList) == inorderInsert(t.toList, x))
          check(out.toList == inorderInsert(t.toList, x))
          check(isValidPreBalancingNode(out))
          out
        }
      }
    }
    if(temp.color == Black()) {
      val out = balance(temp)
      out
    } else {
      check(redDescHaveBlackChildren(temp))
      temp
    }
  } ensuring (res =>
    res.toList == inorderInsert(t.toList, x)
    && isValidTempNode(res)
    && blackHeight(res) == blackHeight(t)
  )

  def makeBlack(n: Node): Node = {
    n match {
      case Node(Red(),l,v,r) => Node(Black(),l,v,r)
      case _ => n
    }
  } ensuring(isValidTempNode(n) ==> isValidRBTree(_))

  def add(t: Tree, x: BigInt): Node = {
    require(isValidRBSubtree(t))
    val out = makeBlack(ins(t, x))
    out
  } ensuring (res => res.toList == inorderInsert(t.toList, x) && isValidRBTree(res))

  def balance(in: Node): Node = {
    require(isValidPreBalancingNode(in) && isBlack(in))
    in match {
      case Node(Black(),Node(Red(),Node(Red(),a,xV,b),yV,c),zV,d) => {
        val out = Node(Red(),Node(Black(),a,xV,b),yV,Node(Black(),c,zV,d))
        RedBlackTreeSpecs.treeAssocRight(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        check(isValidTempNode(out))
        out
      }
      case Node(Black(),left @ Node(Red(),a,xV,Node(Red(),b,yV,c)),zV,d) => {
        val out = Node(Red(),Node(Black(),a,xV,b),yV,Node(Black(),c,zV,d))
        RedBlackTreeSpecs.treeAssocRight(left)
        RedBlackTreeSpecs.treeAssocRight(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        check(isValidTempNode(out))
        out
      }
      case Node(Black(),a,xV,right @ Node(Red(),Node(Red(),b,yV,c),zV,d)) => {
        val out = Node(Red(),Node(Black(),a,xV,b),yV,Node(Black(),c,zV,d))
        RedBlackTreeSpecs.treeAssocLeft(right)
        RedBlackTreeSpecs.treeAssocLeft(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        check(isValidTempNode(out))
        out
      }
      case Node(Black(),a,xV,Node(Red(),b,yV,Node(Red(),c,zV,d))) => {
        val out = Node(Red(),Node(Black(),a,xV,b),yV,Node(Black(),c,zV,d))
        RedBlackTreeSpecs.treeAssocLeft(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        check(isValidTempNode(out))
        out
      }
      case _ => {
        check(isValidRBSubtree(in))
        in
      }
    }
  } ensuring (res =>
    res.toList == in.toList
    && isValidRBSubtree(res) && blackHeight(res) == blackHeight(in)
    && isValidTempNode(res)
  )
}

import RedBlackTree._

object RedBlackTreeSpecs {
  def treeAssocLeft(n: Node): Boolean = {
    n.left match {
      case Empty() => true
      case Node(_, ll, lv, lr) => {
        val l1 = ll.toList
        val l2 = lv :: lr.toList
        val l3 = n.value :: n.right.toList
        ListSpecs.appendAssoc(l1, l2, l3)
        n.toList == l1 ++ (l2 ++ l3)
      }
    }
  }.holds

  def treeAssocRight(n: Node): Boolean = {
    n.right match {
      case Empty() => true
      case Node(_, rl, rv, rr) => {
        val l1 = n.left.toList
        val l2 = n.value :: rl.toList
        val l3 = rv :: rr.toList
        ListSpecs.appendAssoc(l1, l2, l3)
        n.toList == (l1 ++ l2) ++ l3
      }
    }
  }.holds
}