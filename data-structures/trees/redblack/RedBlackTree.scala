/* Copyright 2009-2021 EPFL, Lausanne */
/* Modified by Clément Burgelin */
/* Paper used for insertion : https://doi.org/10.1007/978-3-319-43144-4_19 */
/* Paper used for deletion : https://doi.org/10.1017/S0956796814000227 */

import stainless.annotation._
import stainless.collection._
import stainless.lang._
import stainless.proof._

import StrictlyOrderedList._

object RedBlackTree {
  sealed abstract class Color {
    def brighter: Color = {
      require(this != R)
      this match {
        case B => R
        case BB => B
      }
    }

    def darker: Color = {
      require(this != BB)
      this match {
        case R => B
        case B => BB
      }
    }
  }

  case object R extends Color  // Red
  case object B extends Color  // Black
  case object BB extends Color // DoubleBlack
 
  sealed abstract class Tree {
    def content: Set[BigInt] = this match {
      case Empty(_) => Set.empty
      case Node(_, l, v, r) => l.content ++ Set(v) ++ r.content
    }

    def toList: List[BigInt] = (this match {
      case Empty(_) => List.empty[BigInt]
      case Node(_, l, v, r) => l.toList ++ (v :: r.toList)
    }).ensuring(_.content == content)

    lazy val size: BigInt = (this match {
      case Empty(_) => BigInt(0)
      case Node(_, l, v, r) => l.size + 1 + r.size
    }).ensuring(_ == toList.length)

    def color: Color = (this match {
      case Empty(c) => c
      case Node(c,_,_,_) => c
    })

    def contains(elem: BigInt): Boolean = {
      require(isBST(this))
      this match {
        case Empty(_) => false
        case Node(_, left, value, right) =>
          (elem == value) || (if(elem < value) {
            check(smaller(left.toList, value, right.toList, elem))
            left.contains(elem)
          } else {
            check(bigger(left.toList, value, right.toList, elem))
            right.contains(elem)
          })
      }
    }.ensuring(res => res == this.toList.contains(elem))
  }
  
  case class Empty(c: Color) extends Tree
  case class Node(c: Color, left: Tree, value: BigInt, right: Tree) extends Tree {
    def leftList: List[BigInt] = left.toList
    def rightList: List[BigInt] = value :: right.toList

    def head: BigInt = (left match {
      case Empty(_) => value
      case n: Node => n.head
    }).ensuring(_ == toList.head)

    def last: BigInt = {
      concatLast(leftList, rightList)
      right match {
        case Empty(_) => value
        case n: Node => n.last
      }
    }.ensuring(_ == toList.last)
  }

  sealed abstract class OptionInt
  case class Some(v: BigInt) extends OptionInt
  case class None() extends OptionInt

  // Validity functions

  def isValidRBTree(t: Tree): Boolean = (t.color == B && isValidRBSubtree(t))

  def isValidRBSubtree(t: Tree): Boolean = {
    decreases(t.size)
    isBST(t) && blackBalanced(t) && redNodesHaveBlackChildren(t)
  }.ensuring(_ ==> (t match {
    case Node(_, l, v, r) => isValidRBSubtree(l) && isValidRBSubtree(r)
    case _ => true
  }))

  private def isValidTempSubtree(t: Tree): Boolean = {
    isBST(t) && blackBalanced(t) && redDescHaveBlackChildren(t)
  }.ensuring(_ ==> (t match {
    case Node(_, l, v, r) => isValidRBSubtree(l) && isValidRBSubtree(r)
    case _ => true
  }))

  private def isValidPreBalancingNode(n: Node): Boolean = (
    isBST(n) && blackBalanced(n)
    && redDescHaveBlackChildren(n.left) && redDescHaveBlackChildren(n.right)
    && (redNodesHaveBlackChildren(n.left) || redNodesHaveBlackChildren(n.right))
    && isValidColor(n.left) && isValidColor(n.right)
  )

  private def isValidPreRotateNode(n: Node): Boolean = (
    isBST(n) && blackBalanced(n)
    && redDescHaveBlackChildren(n.left) && redDescHaveBlackChildren(n.right)
    && (redNodesHaveBlackChildren(n.left) || redNodesHaveBlackChildren(n.right))
    && (redNodesHaveBlackChildren(n.left) || n.left.color == BB)
    && (redNodesHaveBlackChildren(n.right) || n.right.color == BB)
  )

  // Validity sub-functions

  def isBST(t: Tree): Boolean = {
    isInorder(t.toList)
  }.ensuring(_ ==> (t match {
    case Node(_, l, v, r) => inorderSpread(l.toList, v, r.toList)
    case _ => true
  }))

  def redNodesHaveBlackChildren(t: Tree): Boolean = {
    decreases((t.size) * 2 + 1)
    t match {
      case Empty(B) => true
      case Node(B, l, _, r) => redNodesHaveBlackChildren(l) && redNodesHaveBlackChildren(r)
      case Node(R, l, _, r) => l.color == B && r.color == B && redNodesHaveBlackChildren(l) && redNodesHaveBlackChildren(r)
      case _ => false // DoubleBlack (or Red Empty node)
    }
  }.ensuring(_ ==> (redDescHaveBlackChildren(t) && isValidColor(t)))

  def redDescHaveBlackChildren(t: Tree): Boolean = {
    decreases(t.size * 2)
    t match {
      case Empty(_) => true
      case Node(_, l, _, r) => redNodesHaveBlackChildren(l) && redNodesHaveBlackChildren(r)
    }
  }

  def blackHeight(t: Tree): BigInt = {t match {
    case Empty(R) => BigInt(0)
    case Empty(B) => BigInt(1)
    case Empty(BB) => BigInt(2)
    case Node(R, l, _, _) => blackHeight(l)
    case Node(B, l, _, _) => blackHeight(l) + 1
    case Node(BB, l, _, _) => blackHeight(l) + 2
  }}.ensuring(0 <= _)

  def blackBalanced(t: Tree): Boolean = {
    t match {
      case Node(_, l, _, r) => blackBalanced(l) && blackBalanced(r) && blackHeight(l) == blackHeight(r)
      case Empty(_) => true
    }
  }

  def isValidColor(t: Tree): Boolean = {
    t match {
      case Empty(c) => c == B
      case Node(c, l, _, r) => (c == B || c == R)
    }
  }

  // Color changes

  def makeNodeBlack(n: Node): Node = {
    n match {
      case Node(_, l, v, r) => Node(B, l, v, r)
    }
  }.ensuring(isValidRBSubtree(n) ==> isValidRBTree(_))

  def makeBlack(t: Tree): Tree = {
    t match {
      case n: Node => makeNodeBlack(n)
      case _ => Empty(B)
    }
  }.ensuring(isValidRBSubtree(t) ==> isValidRBTree(_))

  def darkenNode(n: Node): Node = {
    require(isValidRBSubtree(n))
    n match {
      case Node(R, l, v, r) => Node(B, l, v, r)
      case Node(B, l, v, r) => Node(BB, l, v, r)
    }
  }.ensuring(
    res =>
    res.toList == n.toList &&
    isValidTempSubtree(res) &&
    blackHeight(res) == (blackHeight(n) + 1)
  )

  def darken(t: Tree): Tree = {
    require(isValidRBSubtree(t))
    t match {
      case Empty(B) => Empty(BB)
      case n: Node => darkenNode(n)
    }
  }

  def brightenNode(n: Node): Node = {
    require(isValidPreBalancingNode(n) && n.c != R)
    n match {
      case Node(BB, l, v, r) => Node(B, l, v, r)
      case Node(B, l, v, r) => {
        Node(R, l, v, r)
      }
    }
  }.ensuring(
    res =>
    res.toList == n.toList &&
    isValidPreBalancingNode(res) &&
    isValidColor(res) &&
    blackHeight(res) == (blackHeight(n) - 1)
  )

  def brighten(t: Tree): Tree = {
    require(isValidTempSubtree(t) && t.color != R)
    t match {
      case Empty(BB) => Empty(B)
      case Empty(B) => Empty(R)
      case n: Node => brightenNode(n)
    }
  }

  // Rotations and balancing

  // Rotate nodes to ensure that black nodes have black childrens while maintaining balancing
  @opaque
  private def balance(in: Node): Node = {
    require(isValidPreBalancingNode(in) && in.color == B)
    in match {
      case Node(B, l @ Node(R, ll @ Node(R,a,xV,b), yV, c), zV, d) => {
        val out = Node(R, Node(B,a,xV,b), yV, Node(B,c,zV,d))
        RedBlackTreeSpecs.treeAssocRight(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        out
      }
      case Node(B, l @ Node(R, a, xV, lr @ Node(R,b,yV,c)), zV, d) => {
        val out = Node(R, Node(B,a,xV,b), yV, Node(B,c,zV,d))
        RedBlackTreeSpecs.treeAssocRight(l)
        RedBlackTreeSpecs.treeAssocRight(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        out
      }
      case Node(B, a, xV, r @ Node(R, rl @ Node(R,b,yV,c), zV, d)) => {
        val out = Node(R, Node(B,a,xV,b), yV, Node(B,c,zV,d))
        RedBlackTreeSpecs.treeAssocLeft(r)
        RedBlackTreeSpecs.treeAssocLeft(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        out
      }
      case Node(B, a, xV, r @ Node(R, b, yV, rr @ Node(R,c,zV,d))) => {
        val out = Node(R, Node(B,a,xV,b), yV, Node(B,c,zV,d))
        RedBlackTreeSpecs.treeAssocLeft(out)
        check(isValidRBSubtree(out) && blackHeight(out) == blackHeight(in))
        check(out.toList == in.toList)
        out
      }
      case _ => {
        check(isValidRBSubtree(in))
        in
      }
    }
  }.ensuring(res =>
    res.toList == in.toList
    && isValidRBSubtree(res)
    && blackHeight(res) == blackHeight(in)
  )

  // Same as balance, but also works if the root node is a double-black
  @opaque
  private def balanceBB(n: Node): Node = {
    require(isValidPreBalancingNode(n) && (n.c == B || n.c == BB))
    if(n.c == B) {
      balance(n)
    } else {
      // DoubleBlack case
      darkenNode(balance(brightenNode(n)))
    }
  }.ensuring(res =>
    res.toList == n.toList
    && isValidTempSubtree(res)
    && (n.c == BB) ==> (res.c != R)
    && blackHeight(res) == blackHeight(n)
  )

  // Moves Double-black up while maintaining balancing
  @opaque
  private def rotate(c: Color, l: Tree, v: BigInt, r: Tree): Node = {
    require(
      isValidPreRotateNode(Node(c, l, v, r)) && c != BB &&
      ((c == R) ==> (l.color != R && r.color != R))
    )
    decreases(Node(c, l, v, r).size)
    val in = Node(c, l, v, r)
    check(blackHeight(l) == blackHeight(r))
    check(isValidTempSubtree(l) && isValidTempSubtree(r))
    check(isValidRBSubtree(l) || isValidRBSubtree(r))
    check(l.color != BB || r.color != BB)
    if(c == B) {
      // Black root - branch start
      if(l.color == BB) {
        assert(2 <= blackHeight(l))
        check(2 <= blackHeight(r) && r.isInstanceOf[Node])
        val nr = r.asInstanceOf[Node]
        var bl = brighten(l) // Convert DoubleBlack to Black
        if(nr.c == R) {
          assert(2 <= blackHeight(nr.left))
          assert(nr.left.color == B && nr.left.isInstanceOf[Node])
          val rl = nr.left.asInstanceOf[Node]
          val rotLeft = Node(B, Node(R,bl,v,rl.left), rl.value, rl.right)
          RedBlackTreeSpecs.treeAssocDeepRight(in)
          val temp = Node(B, rotLeft, nr.value, nr.right)
          assert(temp.toList == in.toList && isBST(temp))
          val rot = Node(B, balance(rotLeft), nr.value, nr.right)
          check(rot.toList == in.toList)
          check(isValidTempSubtree(rot))
          check(((c != R) ==> (rot.color != R)))
          check(blackHeight(rot) == blackHeight(in))
          rot
        } else {
          assert(nr.c == B)
          val preBal = Node(BB, Node(R,bl,v,nr.left), nr.value, nr.right)
          RedBlackTreeSpecs.treeAssocRight(in)
          assert(preBal.toList == in.toList)
          val rot = balanceBB(preBal)
          check(rot.toList == in.toList)
          check(isValidTempSubtree(rot))
          assert(rot.color != R)
          check(((c != R) ==> (rot.color != R)))
          check(blackHeight(rot) == blackHeight(in))
          rot
        }
      } else if (r.color == BB) {
        assert(2 <= blackHeight(r))
        check(2 <= blackHeight(l) && l.isInstanceOf[Node])
        val nl = l.asInstanceOf[Node]
        var br = brighten(r) // Convert DoubleBlack to Black
        if(nl.c == R) {
          assert(2 <= blackHeight(nl.left))
          assert(2 <= blackHeight(nl.right))
          assert(nl.right.color == B && nl.right.isInstanceOf[Node])
          val lr = nl.right.asInstanceOf[Node]
          val rotRight = Node(B, lr.left, lr.value, Node(R,lr.right,v,br))
          RedBlackTreeSpecs.treeAssocDeepLeft(in)
          val temp = Node(B, nl.left, nl.value, rotRight)
          assert(temp.toList == in.toList && isBST(temp))
          val rot = Node(B, nl.left, nl.value, balance(rotRight))
          check(rot.toList == in.toList)
          check(isValidTempSubtree(rot))
          check(rot.color != R)
          check(blackHeight(rot) == blackHeight(in))
          rot
        } else {
          assert(nl.c == B)
          val preBal = Node(BB, nl.left, nl.value, Node(R,nl.right,v,br))
          RedBlackTreeSpecs.treeAssocLeft(in)
          assert(preBal.toList == in.toList)
          val rot = balanceBB(preBal)
          check(rot.toList == in.toList)
          check(isValidTempSubtree(rot))
          check(rot.color != R)
          check(blackHeight(rot) == blackHeight(in))
          rot
        }
      } else {
        // No DoubleBlack
        assert(isValidPreBalancingNode(in))
        if(c == B) {
          check(isValidTempSubtree(in))
          in
        } else {
          assert(c == R)
          assert(isValidTempSubtree(in))
          in
        }
      }
      // Black root - branch end
    } else {
      // Red root - branch start
      assert(c == R)
      if(l.color == BB) {
        check(2 <= blackHeight(r) && r.color == B && r.isInstanceOf[Node])
        val nr = r.asInstanceOf[Node]
        var bl = brighten(l) // Convert DoubleBlack to Black
        val preBal = Node(B, Node(R, bl, v, nr.left), nr.value, nr.right)
        RedBlackTreeSpecs.treeAssocRight(in)
        assert(preBal.toList == in.toList)
        val rot = balance(preBal)
        check(rot.toList == in.toList)
        check(isValidTempSubtree(rot))
        check(((c != R) ==> (rot.color != R)))
        check(blackHeight(rot) == blackHeight(in))
        rot
      } else if(r.color == BB) {
        check(2 <= blackHeight(l) && l.color == B && l.isInstanceOf[Node])
        val nl = l.asInstanceOf[Node]
        assert(nl.color == B)
        var br = brighten(r) // Convert DoubleBlack to Black
        val preBal = Node(B, nl.left, nl.value, Node(R, nl.right, v, br))
        RedBlackTreeSpecs.treeAssocLeft(in)
        assert(preBal.toList == in.toList)
        val rot = balance(preBal)
        check(rot.toList == in.toList)
        check(isValidTempSubtree(rot))
        check(((c != R) ==> (rot.color != R)))
        check(blackHeight(rot) == blackHeight(in))
        rot
      } else {
        // No DoubleBlack
        assert(l.color == B && r.color == B)
        assert(isValidTempSubtree(in))
        in
      }
      // Red root - branch end
    }
  }.ensuring(res =>
    res.toList == Node(c, l, v, r).toList
    && isValidTempSubtree(res)
    && (res.color == BB || redNodesHaveBlackChildren(res))
    && ((c != R) ==> (res.color != R))
    && blackHeight(res) == blackHeight(Node(c, l, v, r))
  )

  // Addition

  private def ins(t: Tree, x: BigInt): Node = {
    require(isValidRBSubtree(t))
    val temp = t match {
      case Empty(B) => Node(R, Empty(B), x, Empty(B))
      case in @ Node(c, a, v, b) => {
        if (x < v) {
          val out = Node(c, ins(a, x), v, b)
          assert(insertSmallerLemma(a.toList, v, b.toList, x))
          assert(ins(a, x).toList ++ (v :: b.toList) == inorderInsert(t.toList, x))
          check(out.toList == inorderInsert(t.toList, x))
          check(isValidPreBalancingNode(out))
          out
        } else if (x == v) {
          assert(insertEqualLemma(a.toList, v, b.toList, x))
          check(in.toList == inorderInsert(t.toList, x))
          check(isValidPreBalancingNode(in))
          in
        } else {
          val out = Node(c, a, v, ins(b, x))
          assert(insertBiggerLemma(a.toList, v, b.toList, x))
          assert(a.toList ++ (v :: ins(b, x).toList) == inorderInsert(t.toList, x))
          check(out.toList == inorderInsert(t.toList, x))
          check(isValidPreBalancingNode(out))
          out
        }
      }
    }
    if(temp.color == B) {
      val out = balance(temp)
      out
    } else {
      check(redDescHaveBlackChildren(temp))
      temp
    }
  }.ensuring(res =>
    res.toList == inorderInsert(t.toList, x)
    && isValidTempSubtree(res)
    && blackHeight(res) == blackHeight(t)
  )

  def add(t: Tree, x: BigInt): Node = {
    require(isValidRBSubtree(t))
    val out = makeNodeBlack(ins(t, x))
    out
  }.ensuring(res => res.toList == inorderInsert(t.toList, x) && isValidRBTree(res))

  // Removal

  @opaque
  def popMax(n: Node): (Tree, BigInt) = {
    require(isValidRBSubtree(n))
    decreases(n.size)
    val out = n match {
      case Node(R, l, v, Empty(B)) => {
        assert(l.toList :+ v == n.toList)
        check(blackHeight(l) == blackHeight(n))
        check(isValidTempSubtree(l))
        (l, v)
      }
      case Node(B, l, v, Empty(B)) => {
        assert(blackHeight(l) + 1 == blackHeight(n))
        val t = darken(l)
        assert(t.toList :+ v == n.toList)
        check(blackHeight(t) == blackHeight(n))
        check(isValidTempSubtree(t))
        (t, v)
      }
      case Node(c, l, v, r: Node) => {
        val (tr, max) = popMax(r)
        val preRot = Node(c, l, v, tr)
        ListSpecs.appendAssoc(l.toList, v :: tr.toList, List(max))
        assert(preRot.toList :+ max == n.toList)
        inorderSpread(preRot.toList, max)
        assert(redNodesHaveBlackChildren(l))
        assert(tr.color == BB || redNodesHaveBlackChildren(tr))
        assert(isValidPreRotateNode(preRot))
        assert((c == R) ==> (l.color != R))
        assert((c == R) ==> (tr.color != R))
        val t = rotate(c, l, v, tr)
        check(t.toList :+ max == n.toList)
        check((n.c == B) ==> (t.color != R))
        check(blackHeight(t) == blackHeight(n))
        (t, max)
      }
    }
    out
  }.ensuring(res =>
    res._1.toList :+ res._2 == n.toList
    && isValidTempSubtree(res._1)
    && (res._1.color == BB || redNodesHaveBlackChildren(res._1))
    && ((n.c == B) ==> (res._1.color != R))
    && blackHeight(res._1) == blackHeight(n)
  )

  @opaque
  def popMin(n: Node): (BigInt, Tree) = {
    require(isValidRBSubtree(n))
    decreases(n.size)
    val out = n match {
      case Node(R, Empty(B), v, r) => {
        assert(v :: r.toList == n.toList)
        check(blackHeight(r) == blackHeight(n))
        check(isValidTempSubtree(r))
        (v, r)
      }
      case Node(B, Empty(B), v, r) => {
        assert(blackHeight(r) + 1 == blackHeight(n))
        val t = darken(r)
        assert(v :: t.toList == n.toList)
        check(blackHeight(t) == blackHeight(n))
        check(isValidTempSubtree(t))
        (v, t)
      }
      case Node(c, l: Node, v, r) => {
        val (min, tl) = popMin(l)
        val preRot = Node(c, tl, v, r)
        assert(min :: preRot.toList == n.toList)
        assert(redNodesHaveBlackChildren(r))
        assert(tl.color == BB || redNodesHaveBlackChildren(tl))
        assert(isValidPreRotateNode(preRot))
        assert((c == R) ==> (r.color != R))
        assert((c == R) ==> (tl.color != R))
        val t = rotate(c, tl, v, r)
        check(min :: t.toList == n.toList)
        check((n.c == B) ==> (t.color != R))
        check(blackHeight(t) == blackHeight(n))
        (min, t)
      }
    }
    out
  }.ensuring(res =>
    res._1 :: res._2.toList == n.toList
    && isValidTempSubtree(res._2)
    && (res._2.color == BB || redNodesHaveBlackChildren(res._2))
    && ((n.c == B) ==> (res._2.color != R))
    && blackHeight(res._2) == blackHeight(n)
  )

  private def del(t: Tree, x: BigInt): Tree = {
    require(isValidRBSubtree(t))
    decreases(t.size)
    val preBal = t match {
      case Empty(B) => t
      case in @ Node(c, a, v, b) => {
        if (x < v) {
          val out = Node(c, del(a, x), v, b)
          assert(deleteSmallerLemma(a.toList, v, b.toList, x))
          check(isValidPreRotateNode(out))
          check(out.toList == deleteFirst(in.toList, x))
          out
        } else if (x == v) {
          if(a.isInstanceOf[Node]) {
            val (newA, newV) = popMax(a.asInstanceOf[Node])
            val out = Node(c, newA, newV, b)
            assert(deleteEqualLemma(a.toList, v, b.toList, x))
            ListSpecs.appendAssoc(newA.toList, List(newV), b.toList)
            check(isValidPreRotateNode(out))
            check(out.toList == deleteFirst(in.toList, x))
            out
          } else if(b.isInstanceOf[Node]) {
            val (newV, newB) = popMin(b.asInstanceOf[Node])
            val out = Node(c, a, newV, newB)
            check(isValidPreRotateNode(out))
            check(out.toList == deleteFirst(in.toList, x))
            out
          } else {
            assert(a == b && a == Empty(B))
            val out = if(c == R) {
              Empty(B)
            } else {
              Empty(BB)
            }
            assert(blackHeight(out) == blackHeight(in))
            check(out.toList == deleteFirst(in.toList, x))
            out
          }
        } else {
          val out = Node(c, a, v, del(b, x))
          assert(deleteBiggerLemma(a.toList, v, b.toList, x))
          check(isValidPreRotateNode(out))
          check(out.toList == deleteFirst(in.toList, x))
          out
        }
      }
    }
    if(preBal.isInstanceOf[Node]) {
      val n = preBal.asInstanceOf[Node]
      rotate(n.c, n.left, n.value, n.right)
    } else {
      check(preBal == Empty(B) || preBal == Empty(BB))
      preBal
    }
  }.ensuring(res =>
    res.toList == deleteFirst(t.toList, x)
    && isValidTempSubtree(res)
    && blackHeight(res) == blackHeight(t)
  )

  def remove(t: Tree, x: BigInt): Tree = {
    require(isValidRBSubtree(t))
    val out = makeBlack(del(t, x))
    out
  }.ensuring(res => res.toList == deleteFirst(t.toList, x) && isValidRBTree(res))
}

import RedBlackTree._

object RedBlackTreeSpecs {
  def treeAssocLeft(n: Node): Boolean = {
    n.left match {
      case Empty(_) => true
      case Node(_, ll, lv, lr) => {
        val l1 = ll.toList
        val l2 = lv :: lr.toList
        val l3 = n.value :: n.right.toList
        ListSpecs.appendAssoc(l1, l2, l3)
        n.toList == l1 ++ (l2 ++ l3)
      }
    }
  }..holds

  def treeAssocDeepLeft(n: Node): Boolean = {
    require(
      n.left.isInstanceOf[Node] &&
      n.left.asInstanceOf[Node].right.isInstanceOf[Node]
    )
    n.left match {
      case Node(lc, ll, lv, lr) =>
        lr match {
          case Node(lrc, lrl, lrv, lrr) =>
            val l1 = ll.toList
            val l2 = lv :: lrl.toList
            val l3 = lrv :: lrr.toList
            val l4 = n.value :: n.right.toList
            treeAssocLeft(n)
            treeAssocLeft(Node(B, lr, n.value, n.right))
            n.toList == l1 ++ (l2 ++ (l3 ++ l4))
        }
    }
  }..holds

  def treeAssocRight(n: Node): Boolean = {
    n.right match {
      case Empty(_) => true
      case Node(_, rl, rv, rr) => {
        val l1 = n.left.toList
        val l2 = n.value :: rl.toList
        val l3 = rv :: rr.toList
        ListSpecs.appendAssoc(l1, l2, l3)
        n.toList == (l1 ++ l2) ++ l3
      }
    }
  }..holds

  def treeAssocDeepRight(n: Node): Boolean = {
    require(
      n.right.isInstanceOf[Node] &&
      n.right.asInstanceOf[Node].left.isInstanceOf[Node]
    )
    n.right match {
      case Node(rc, rl, rv, rr) =>
        rl match {
          case Node(rlc, rll, rlv, rlr) =>
            val l1 = n.left.toList
            val l2 = n.value :: rll.toList
            val l3 = rlv :: rlr.toList
            val l4 = rv :: rr.toList
            treeAssocRight(n)
            treeAssocRight(Node(B, n.left, n.value, rl))
            n.toList == ((l1 ++ l2) ++ l3) ++ l4
        }
    }
  }..holds
}