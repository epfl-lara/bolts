package NewStyleInterface

import stainless.lang._
import stainless.annotation._
import stainless.lang.Quantifiers._

object A:
  // Case class based, low level encoding of an interface
  case class ImmutableBox[V](v: Option[V]):
    def get(): Option[V] = v
    def set(v2: V): ImmutableBox[V] = ImmutableBox(Some(v2))

  @mutable
  case class MutableBoxInterface[@mutable M, V](
    @pure get: M => Option[V],
    set: (M, V) => Unit,
    getAbstract: M => ImmutableBox[V])

  @ghost
  @pure
  def validGet[@mutable M, V](mi: MutableBoxInterface[M, V], m: M): Boolean = {
    val mCopy = freshCopy(m)
    val mAbstract = mi.getAbstract(mCopy)
    mi.get(mCopy) == mAbstract.get()
  }

  @ghost
  @pure
  def validSet[@mutable M, V](mi: MutableBoxInterface[M, V], m: M, v: V): Boolean = {
    val mCopy = freshCopy(m)
    val mAbstractBefore = mi.getAbstract(mCopy)
    mi.set(mCopy, v)
    mi.getAbstract(mCopy) == mAbstractBefore.set(v)
  }
  @ghost
  @pure
  def instantiate(): Unit = {
    val mi = MutableBoxInterface[MutableBox[Int], Int](
      get = (m: MutableBox[Int]) => m.get(), // Illegal effect in lambda body
      set = (m: MutableBox[Int], v: Int) => m.set(v), // Illegal effect in lambda body
      getAbstract = (m: MutableBox[Int]) => ImmutableBox(m.get())
    )

    val m = MutableBox[Int](None())
    assert(validGet(mi, m))
    assert(validSet(mi, m, 42))
    // Need to actually prove the specifications for this implementation using explicit quantification (where require/ensuring based specification implicitly quantifies over the receiver and parameters)
    assert(forall((m: MutableBox[Int]) => validGet(mi, m)))
    assert(forall((m: MutableBox[Int], v: Int) => validSet(mi, m, v)))
  }


  // Trait based interface but using laws to avoid ??? in the implementation to be able to have require/ensuring on a non-implemented method
  case class MutableBox[V](var v: Option[V]) extends MutableBoxInterfaceTrait[V]:
    override def get(): Option[V] = v
    override def set(v2: V): Unit = { v = Some(v2) }

    override def getAbstract(): ImmutableBox[V] = ImmutableBox(v)

    override def validGet(): Boolean = {
      val mCopy = freshCopy(this)
      val mAbstract = mCopy.getAbstract()
      mCopy.get() == mAbstract.get()
    }
    override def validSet(v2: V): Boolean = {
      val mCopy = freshCopy(this)
      val mAbstractBefore = mCopy.getAbstract()
      mCopy.set(v2)
      mCopy.getAbstract() == mAbstractBefore.set(v2)
    }


  @mutable trait MutableBoxInterfaceTrait[V]:
    def get(): Option[V]
    def set(v: V): Unit
    def getAbstract(): ImmutableBox[V]

    @law def validGet(): Boolean = {
      val mCopy = freshCopy(this)
      val mAbstract = mCopy.getAbstract()
      mCopy.get() == mAbstract.get()
    }
    @law def validSet(v: V): Boolean = {
      val mCopy = freshCopy(this)
      val mAbstractBefore = mCopy.getAbstract()
      mCopy.set(v)
      mCopy.getAbstract() == mAbstractBefore.set(v)
    }