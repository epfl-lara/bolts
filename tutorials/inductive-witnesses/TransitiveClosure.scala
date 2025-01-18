import stainless.annotation.*
import stainless.lang.*

/* This example shows how to represent inductive definitions in
   Stainless using algebraic data types with invariants and explicit
   proof witnesses. This is in the style of Coq. It is often not
   needed in Stainless, but can be useful for complex proofs.
 */

object TransitiveClosure:
  /* R is an example relation. @opaque means it is not expanded. */
  @opaque
  def R(x: BigInt, y: BigInt): Boolean = 
    y == x + 2

  /* We define proof witnesses for reflexive transitive closure R*(x,y).
     We can think of this as an inductive definition. */

  /* I would like ClosureProof to have two parameters, but Stainless does not support this yet. 
     Instead, we define two getters. */

  sealed trait ClosureProof:
    def x: BigInt
    def y: BigInt

  case class Equal(v: BigInt) extends ClosureProof:
    override def x: BigInt = v
    override def y: BigInt = v

  case class ByBaseR(v1: BigInt, v2: BigInt) extends ClosureProof:
    require(R(v1, v2))
    override def x: BigInt = v1
    override def y: BigInt = v2

  case class ByTransitivity(p1: ClosureProof, p2: ClosureProof) extends ClosureProof:
    require(p1.y == p2.x)
    override def x: BigInt = p1.x
    override def y: BigInt = p2.y

  def Rstar(using proof: ClosureProof)(x: BigInt, y: BigInt): Boolean = 
    proof.x == x && proof.y == y

  /* Let us prove that Rstar(x,y) implies y - x is even and non-negative. */
  /* Proof of that fact is induction on the proof tree for R*(x,y).  */

  def soundnessRstar(using proof: ClosureProof)(x: BigInt, y: BigInt): Unit = {
    require(Rstar(x, y))
    proof match
      case Equal(v) => ()
      case ByBaseR(v1, v2) => unfold(R(v1, v2))
      case ByTransitivity(p1, p2) => 
        soundnessRstar(using p1)(p1.x, p1.y)
        soundnessRstar(using p2)(p2.x, p2.y)
  }.ensuring(_ => x <= y && (y - x) % 2 == 0)

  /* Let us now prove the converse: if y - x is even and non-negative, then Rstar(x,y). */
  /* Proof is induction on y-x. */

  def completenessRstar(x: BigInt, y: BigInt): ClosureProof = {
    require(x <= y && (y - x) % 2 == 0)
    decreases(y - x)
    if y - x == 0 then Equal(x)
    else if y - x == 2 then 
      unfold(R(x, y))
      ByBaseR(x, y)
    else
      val p1 = completenessRstar(x, x + 2)
      val p2 = completenessRstar(x + 2, y)
      ByTransitivity(p1, p2)

  }.ensuring(proof => proof.x == x && proof.y == y)


end TransitiveClosure
