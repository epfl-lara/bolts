; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208828 () Bool)

(assert start!208828)

(assert (=> start!208828 true))

(declare-fun e!1376626 () Bool)

(declare-fun b!2152511 () Bool)

(declare-datatypes ((C!11918 0))(
  ( (C!11919 (val!6945 Int)) )
))
(declare-datatypes ((List!24827 0))(
  ( (Nil!24743) (Cons!24743 (h!30144 C!11918) (t!197375 List!24827)) )
))
(declare-datatypes ((IArray!16049 0))(
  ( (IArray!16050 (innerList!8082 List!24827)) )
))
(declare-datatypes ((Conc!8022 0))(
  ( (Node!8022 (left!19026 Conc!8022) (right!19356 Conc!8022) (csize!16274 Int) (cheight!8233 Int)) (Leaf!11733 (xs!10964 IArray!16049) (csize!16275 Int)) (Empty!8022) )
))
(declare-datatypes ((Regex!5886 0))(
  ( (ElementMatch!5886 (c!341355 C!11918)) (Concat!10188 (regOne!12284 Regex!5886) (regTwo!12284 Regex!5886)) (EmptyExpr!5886) (Star!5886 (reg!6215 Regex!5886)) (EmptyLang!5886) (Union!5886 (regOne!12285 Regex!5886) (regTwo!12285 Regex!5886)) )
))
(declare-datatypes ((List!24828 0))(
  ( (Nil!24744) (Cons!24744 (h!30145 Regex!5886) (t!197376 List!24828)) )
))
(declare-datatypes ((Context!2912 0))(
  ( (Context!2913 (exprs!1956 List!24828)) )
))
(declare-datatypes ((BalanceConc!15806 0))(
  ( (BalanceConc!15807 (c!341356 Conc!8022)) )
))
(declare-datatypes ((StackFrame!306 0))(
  ( (StackFrame!307 (z!5955 (Set Context!2912)) (from!2798 Int) (lastNullablePos!485 Int) (res!928159 Int) (totalInput!3287 BalanceConc!15806)) )
))
(declare-datatypes ((List!24829 0))(
  ( (Nil!24745) (Cons!24745 (h!30146 StackFrame!306) (t!197377 List!24829)) )
))
(declare-fun s!7978 () List!24829)

(declare-fun setRes!17353 () Bool)

(declare-fun e!1376627 () Bool)

(declare-fun inv!32657 (BalanceConc!15806) Bool)

(assert (=> b!2152511 (= e!1376626 (and setRes!17353 (inv!32657 (totalInput!3287 (h!30146 s!7978))) e!1376627))))

(declare-fun condSetEmpty!17353 () Bool)

(assert (=> b!2152511 (= condSetEmpty!17353 (= (z!5955 (h!30146 s!7978)) (as set.empty (Set Context!2912))))))

(declare-fun b!2152512 () Bool)

(declare-fun e!1376625 () Bool)

(declare-fun tp!669212 () Bool)

(declare-fun inv!32658 (StackFrame!306) Bool)

(assert (=> b!2152512 (= e!1376625 (and (inv!32658 (h!30146 s!7978)) e!1376626 tp!669212))))

(declare-fun b!2152513 () Bool)

(declare-fun e!1376628 () Bool)

(assert (=> b!2152513 (= e!1376628 false)))

(declare-datatypes ((Unit!37890 0))(
  ( (Unit!37891) )
))
(declare-fun lt!801267 () Unit!37890)

(declare-fun lemmaInv!800 (StackFrame!306) Unit!37890)

(assert (=> b!2152513 (= lt!801267 (lemmaInv!800 (h!30146 s!7978)))))

(declare-fun setElem!17353 () Context!2912)

(declare-fun e!1376629 () Bool)

(declare-fun tp!669213 () Bool)

(declare-fun setNonEmpty!17353 () Bool)

(declare-fun inv!32659 (Context!2912) Bool)

(assert (=> setNonEmpty!17353 (= setRes!17353 (and tp!669213 (inv!32659 setElem!17353) e!1376629))))

(declare-fun setRest!17353 () (Set Context!2912))

(assert (=> setNonEmpty!17353 (= (z!5955 (h!30146 s!7978)) (set.union (set.insert setElem!17353 (as set.empty (Set Context!2912))) setRest!17353))))

(declare-fun res!928157 () Bool)

(assert (=> start!208828 (=> (not res!928157) (not e!1376628))))

(declare-fun lambda!81083 () Int)

(declare-fun forall!5064 (List!24829 Int) Bool)

(assert (=> start!208828 (= res!928157 (forall!5064 s!7978 lambda!81083))))

(assert (=> start!208828 e!1376628))

(assert (=> start!208828 e!1376625))

(assert (=> start!208828 true))

(declare-fun b!2152514 () Bool)

(declare-fun res!928158 () Bool)

(assert (=> b!2152514 (=> (not res!928158) (not e!1376628))))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(assert (=> b!2152514 (= res!928158 (and (= res1!7 res2!7) (not (is-Nil!24745 s!7978))))))

(declare-fun b!2152515 () Bool)

(declare-fun tp!669215 () Bool)

(declare-fun inv!32660 (Conc!8022) Bool)

(assert (=> b!2152515 (= e!1376627 (and (inv!32660 (c!341356 (totalInput!3287 (h!30146 s!7978)))) tp!669215))))

(declare-fun b!2152516 () Bool)

(declare-fun tp!669214 () Bool)

(assert (=> b!2152516 (= e!1376629 tp!669214)))

(declare-fun setIsEmpty!17353 () Bool)

(assert (=> setIsEmpty!17353 setRes!17353))

(assert (= (and start!208828 res!928157) b!2152514))

(assert (= (and b!2152514 res!928158) b!2152513))

(assert (= (and b!2152511 condSetEmpty!17353) setIsEmpty!17353))

(assert (= (and b!2152511 (not condSetEmpty!17353)) setNonEmpty!17353))

(assert (= setNonEmpty!17353 b!2152516))

(assert (= b!2152511 b!2152515))

(assert (= b!2152512 b!2152511))

(assert (= (and start!208828 (is-Cons!24745 s!7978)) b!2152512))

(declare-fun m!2594666 () Bool)

(assert (=> b!2152511 m!2594666))

(declare-fun m!2594668 () Bool)

(assert (=> b!2152512 m!2594668))

(declare-fun m!2594670 () Bool)

(assert (=> start!208828 m!2594670))

(declare-fun m!2594672 () Bool)

(assert (=> b!2152515 m!2594672))

(declare-fun m!2594674 () Bool)

(assert (=> setNonEmpty!17353 m!2594674))

(declare-fun m!2594676 () Bool)

(assert (=> b!2152513 m!2594676))

(push 1)

(assert (not b!2152511))

(assert (not b!2152513))

(assert (not b!2152515))

(assert (not b!2152516))

(assert (not b!2152512))

(assert (not setNonEmpty!17353))

(assert (not start!208828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

