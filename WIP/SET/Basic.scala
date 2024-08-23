package SET
import stainless.annotation._
import stainless.lang.StaticChecks._
import stainless.proof._

// Basic properties
object Basic {
  // .............................................................
  // equality properties that follow from definition via eqClass
  // .............................................................
  def refl(s: SET): Unit = { 
    ()
  }.ensuring(_ => s === s)

  def sym(s1: SET, s2: SET): Unit = {
    ()
  }.ensuring(_ => (s1 =!= s2) || (s2 === s1))

  def tran(s1: SET, s2: SET, s3: SET): Unit = {
    ()
  }.ensuring(_ => (s1 =!= s2) || (s2 =!= s3) || (s1 === s3))

  def congL(a: SET, b: SET, a1: SET): Unit = {
    ()
  }.ensuring(_ => !(a in b) || (a =!= a1) || (a1 in b))
  
  def congR(a: SET, b: SET, b1: SET): Unit = {
    ()
  }.ensuring(_ => !(a in b) || !(b === b1) || (a in b1))

  // two subsets imply equality
  def subsetsEq(a: SET, b: SET): Unit = {
    val w = SET.notEqWitn(a, b)      
    SET.subseteq(a, b, w)
    SET.subseteq(b, a, w)
  }.ensuring(_ => !(a subsetEq b) || !(b subsetEq a) || (a === b))

  @ghost
  def one : SET = {
    val one = SET(SET.empty)
  
    SET.singletonDef(SET.empty, SET.empty)
    assert(SET.empty in one)
    SET.emptyDef(SET.empty)
    assert(!(SET.empty in SET.empty))
    assert(SET.empty =!= one)
    val w = SET.notSubseteqWitn(SET.empty, one)
    SET.emptyDef(w)
 
    one
  }.ensuring(one =>
    (SET.empty in one)
    && (SET.empty =!= one)
    && (SET.empty subsetEq one))
  
}
