package sf1

import stainless.lang._ // for the holds keyword
import scala.language.postfixOps // to avoid warnings about postfix holds

import stainless.annotation._ // for the @induct annotation

import Basics._

object Induction {

  // This theorem requires a proof by induction. To use the induction 
  // hypothesis, we make a recursive call to the function, with the argument 
  // for which we want to use the inductive hypothesis (here, n2)
  def plus_n_O(n: Nat): Boolean = {
    n match {
      case O => ()
      case S(n2) => assert(plus_n_O(n2))
    }

    n + O == n
  } holds

  // For such simple examples, Stainless also supports an @induct annotation,
  // that tells Stainless to use the inductive hypothesis.

  @induct
  def plus_n_O_auto(n: Nat): Boolean = {
    n + O == n
  } holds

  // minus_diag is defined in Basics.scala

  /** **** Exercise: 2 stars, recommended (basic_induction)  */

  

  /** [] */


}