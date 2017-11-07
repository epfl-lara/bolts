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

  @induct 
  def mult_0_r(n: Nat) = {
    n * O == O
  } holds

  @induct 
  def plus_n_Sm(n: Nat, m: Nat) = {
    S (n + m) == n + (S(m))
  } holds

  // here, we do the induction manually, as we need to use the previous lemma
  // during the induction
  def plus_comm(n: Nat, m: Nat): Boolean = {
    n match {
      case O => assert(plus_n_O(m))
      case S(n2) => 
        assert(plus_comm(n2,m)) // induction hypothesis: n2 + m == m + n2
        assert(plus_n_Sm(m,n2)) // S(m + n2) == m + S(n2)
    }
    n + m == m + n
  } holds

  @induct
  def plus_assoc(n: Nat, m: Nat, p: Nat) = {
    n + (m + p) == (n + m) + p
  } holds

  /** [] */

  /** **** Exercise: 2 stars (double_plus)  */

  def double(n: Nat): Nat = n match {
    case O => O
    case S(n2) => S(S(double(n2)))
  }

  def double_plus(n: Nat): Boolean = {
    n match {
      case O => ()
      case S(n2) =>
        assert(double_plus(n2))
        assert(plus_n_Sm(n,n))
    }
    
    double(n) == n + n
  } holds

  /** [] */


  /** **** Exercise: 2 stars, optional (evenb_S)  */

  @induct
  def evenb_S(n: Nat): Boolean = {
    evenb (S(n)) == !evenb(n)
  } holds

  /** [] */


  def mult_0_plus2(n: Nat, m: Nat): Boolean = {
    assert (O + n == n) // this is not really required here
    (O + n) * m == n * m
  } holds

  def plus_rearrange(n: Nat, m: Nat, p: Nat, q: Nat): Boolean = {
    assert(plus_comm(n,m)) // asserts that n+m == m+n
    (n + m) + (p + q) == (m + n) + (p + q)
  } holds

  /** **** Exercise: 3 stars, recommended (mult_comm)  */
  
  def plus_swap(n: Nat, m: Nat, p: Nat): Boolean = {
    assert(plus_comm(n,m+p)) // n + (m+p) == (m+p) + n
    assert(plus_assoc(m,p,n)) // (m+p) + n == m+(p+n)
    assert(plus_comm(p,n)) // p+n = n+p

    n + (m + p) == m + (n + p)
  } holds

  def mult_n_Sm(n: Nat, m: Nat): Boolean = {
    n match {
      case O => ()
      case S(n2) =>
        // By definition n * S(m) = S(n2) * S(m) = S(m) + n2 * S(m) = S(m + n2 * S(m))
        mult_n_Sm(n2, m) // by induction hypothesis: we know n2*S(m) = n2 + n2*m
        // therefore, n * S(m) = S(m + (n2 + n2*m))
        assert(plus_swap(m,n2,n2*m)) // m + (n2 + n2*m) = n2 + (m + n2 * m)
    }
    n * S(m) == n + n * m
  } holds

  def mult_comm(n: Nat, m: Nat): Boolean = {
    n match {
      case O =>
        assert(mult_0_r(m))
      case S(n2) =>
        assert(mult_comm(n2,m))
        assert(mult_n_Sm(m,n2))
        // these assertions are not needed, but show the steps of the proof
        // assert(n * m == m + n2 * m) // by defininition
        // assert(n * m == m + m * n2) // by mult_comm
        // assert(m * S(n2) == m + m * n2) // by mult_n_Sm
        // assert(m * n == m + m * n2) // because S(n2) == n
        // assert(n * m == m * n)
    }

    n * m == m * n
  } holds

  /** [] */


  /** **** Exercise: 3 stars, optional (more_exercises)  */

  @induct
  def leb_refl(n: Nat) = {
    leb(n,n)
  } holds

  def zero_nbeq_S(n: Nat) = {
    !beq_nat(O,S(n))
  } holds

// Theorem zero_nbeq_S : forall n:nat,
//   beq_nat 0 (S n) = false.
// Proof.
//   intro. simpl. reflexivity.
// Qed.

// Theorem andb_false_r : forall b : bool,
//   andb b false = false.
// Proof.
//   destruct b; reflexivity.
// Qed.

// Theorem plus_ble_compat_l : forall n m p : nat,
//   leb n m = true -> leb (p + n) (p + m) = true.
// Proof.
//   induction p as [ | p' IH]; intros; simpl.
//   - apply H.
//   - rewrite IH.
//     + reflexivity.
//     + apply H.
// Qed.

// Theorem S_nbeq_0 : forall n:nat,
//   beq_nat (S n) 0 = false.
// Proof.
//   simpl. intuition.
// Qed.

// Theorem mult_1_l : forall n:nat, 1 * n = n.
// Proof.
//   intros. simpl. rewrite plus_n_O. reflexivity.
// Qed.

// Theorem all3_spec : forall b c : bool,
//     orb
//       (andb b c)
//       (orb (negb b)
//                (negb c))
//   = true.
// Proof.
//   intros. destruct b; destruct c; simpl; reflexivity.
// Qed.
 
// Theorem mult_plus_distr_r : forall n m p : nat,
//   (n + m) * p = (n * p) + (m * p).
// Proof.
//   induction n as [ | n' IH]; intros; simpl.
//   - reflexivity.
//   - rewrite IH. rewrite plus_assoc. reflexivity.
// Qed.

// Theorem mult_assoc : forall n m p : nat,
//   n * (m * p) = (n * m) * p.
// Proof.
//   induction n as [ | n' IH]; intros; simpl.
//   - reflexivity.
//   - rewrite IH. rewrite mult_plus_distr_r. reflexivity.
// Qed.

}