sealed trait Tree
case class Node(left: Tree, right: Tree) extends Tree
case class Leaf(value: BigInt) extends Tree

sealed trait Context
case class Empty() extends Context
case class WentLeft(right: Tree, parent: Context) extends Context
case class WentRight(left: Tree, parent: Context) extends Context


/**
* Create a zipper with the given tree in focus and an empty context, i.e., the focus is the root of the tree.
*
* @param tree
* @return
*/
def focus(tree: Tree): Zipper = Zipper(tree, Empty())
case class Zipper(focus: Tree, context: Context):
  /**
  * Move the focus back to the root of the original tree by reassembling the tree from the context.
  *
  * @return
  */
  def unfocus(): Tree = context match
    case Empty() => focus
    case WentLeft(right, parent) => Zipper(Node(focus, right), parent).unfocus()
    case WentRight(left, parent) => Zipper(Node(left, focus), parent).unfocus()

  /**
  * Move the focus to the parent node if it exists.
  *
  * @return
  */
  def moveUp(): Zipper = context match
    case Empty() => this
    case WentLeft(right, parent) => Zipper(Node(focus, right), parent)
    case WentRight(left, parent) => Zipper(Node(left, focus), parent)

  /**
  * Move the focus to the left child if it exists.
  *
  * @return
  */
  def moveLeft(): Zipper = focus match
    case Leaf(_) => this
    case Node(left, right) => Zipper(left, WentLeft(right, context))

  /**
  * Move the focus to the right child if it exists.
  *
  * @return
  */
  def moveRight(): Zipper = focus match
    case Leaf(_) => this
    case Node(left, right) => Zipper(right, WentRight(left, context))
end Zipper

val t = Node(Node(Leaf(1), Leaf(2)), Leaf(3))
val z = focus(t)
val z1 = z.moveLeft()
val z2 = z1.moveRight()

z2.unfocus() 