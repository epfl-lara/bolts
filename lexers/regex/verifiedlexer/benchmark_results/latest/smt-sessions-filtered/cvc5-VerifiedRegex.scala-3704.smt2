; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208728 () Bool)

(assert start!208728)

(assert (=> start!208728 true))

(declare-fun bs!445643 () Bool)

(declare-fun b!2151761 () Bool)

(assert (= bs!445643 (and b!2151761 start!208728)))

(declare-fun res2!7 () Int)

(declare-fun lambda!80982 () Int)

(declare-fun lambda!80981 () Int)

(declare-fun res1!7 () Int)

(assert (=> bs!445643 (= (= res2!7 res1!7) (= lambda!80982 lambda!80981))))

(assert (=> b!2151761 true))

(declare-fun res!927820 () Bool)

(declare-fun e!1376143 () Bool)

(assert (=> start!208728 (=> (not res!927820) (not e!1376143))))

(declare-datatypes ((C!11894 0))(
  ( (C!11895 (val!6933 Int)) )
))
(declare-datatypes ((List!24791 0))(
  ( (Nil!24707) (Cons!24707 (h!30108 C!11894) (t!197339 List!24791)) )
))
(declare-datatypes ((IArray!16025 0))(
  ( (IArray!16026 (innerList!8070 List!24791)) )
))
(declare-datatypes ((Conc!8010 0))(
  ( (Node!8010 (left!18984 Conc!8010) (right!19314 Conc!8010) (csize!16250 Int) (cheight!8221 Int)) (Leaf!11715 (xs!10952 IArray!16025) (csize!16251 Int)) (Empty!8010) )
))
(declare-datatypes ((Regex!5874 0))(
  ( (ElementMatch!5874 (c!341307 C!11894)) (Concat!10176 (regOne!12260 Regex!5874) (regTwo!12260 Regex!5874)) (EmptyExpr!5874) (Star!5874 (reg!6203 Regex!5874)) (EmptyLang!5874) (Union!5874 (regOne!12261 Regex!5874) (regTwo!12261 Regex!5874)) )
))
(declare-datatypes ((List!24792 0))(
  ( (Nil!24708) (Cons!24708 (h!30109 Regex!5874) (t!197340 List!24792)) )
))
(declare-datatypes ((Context!2888 0))(
  ( (Context!2889 (exprs!1944 List!24792)) )
))
(declare-datatypes ((BalanceConc!15782 0))(
  ( (BalanceConc!15783 (c!341308 Conc!8010)) )
))
(declare-datatypes ((StackFrame!282 0))(
  ( (StackFrame!283 (z!5943 (Set Context!2888)) (from!2786 Int) (lastNullablePos!473 Int) (res!927821 Int) (totalInput!3275 BalanceConc!15782)) )
))
(declare-datatypes ((List!24793 0))(
  ( (Nil!24709) (Cons!24709 (h!30110 StackFrame!282) (t!197341 List!24793)) )
))
(declare-fun s!7978 () List!24793)

(declare-fun forall!5046 (List!24793 Int) Bool)

(assert (=> start!208728 (= res!927820 (forall!5046 s!7978 lambda!80981))))

(assert (=> start!208728 e!1376143))

(declare-fun e!1376146 () Bool)

(assert (=> start!208728 e!1376146))

(assert (=> start!208728 true))

(declare-fun b!2151759 () Bool)

(declare-fun e!1376144 () Bool)

(declare-fun tp!668873 () Bool)

(declare-fun inv!32574 (Conc!8010) Bool)

(assert (=> b!2151759 (= e!1376144 (and (inv!32574 (c!341308 (totalInput!3275 (h!30110 s!7978)))) tp!668873))))

(declare-fun b!2151760 () Bool)

(declare-fun e!1376147 () Bool)

(declare-fun tp!668872 () Bool)

(assert (=> b!2151760 (= e!1376147 tp!668872)))

(assert (=> b!2151761 (= e!1376143 (not (forall!5046 (t!197341 s!7978) lambda!80982)))))

(assert (=> b!2151761 (forall!5046 (t!197341 s!7978) lambda!80982)))

(declare-datatypes ((Unit!37870 0))(
  ( (Unit!37871) )
))
(declare-fun lt!801216 () Unit!37870)

(declare-fun lemmaStackPreservesForEqualRes!34 (List!24793 Int Int) Unit!37870)

(assert (=> b!2151761 (= lt!801216 (lemmaStackPreservesForEqualRes!34 (t!197341 s!7978) res1!7 res2!7))))

(declare-fun lt!801215 () Unit!37870)

(declare-fun lemmaInv!792 (StackFrame!282) Unit!37870)

(assert (=> b!2151761 (= lt!801215 (lemmaInv!792 (h!30110 s!7978)))))

(declare-fun b!2151762 () Bool)

(declare-fun e!1376145 () Bool)

(declare-fun tp!668871 () Bool)

(declare-fun inv!32575 (StackFrame!282) Bool)

(assert (=> b!2151762 (= e!1376146 (and (inv!32575 (h!30110 s!7978)) e!1376145 tp!668871))))

(declare-fun setElem!17281 () Context!2888)

(declare-fun tp!668870 () Bool)

(declare-fun setRes!17281 () Bool)

(declare-fun setNonEmpty!17281 () Bool)

(declare-fun inv!32576 (Context!2888) Bool)

(assert (=> setNonEmpty!17281 (= setRes!17281 (and tp!668870 (inv!32576 setElem!17281) e!1376147))))

(declare-fun setRest!17281 () (Set Context!2888))

(assert (=> setNonEmpty!17281 (= (z!5943 (h!30110 s!7978)) (set.union (set.insert setElem!17281 (as set.empty (Set Context!2888))) setRest!17281))))

(declare-fun setIsEmpty!17281 () Bool)

(assert (=> setIsEmpty!17281 setRes!17281))

(declare-fun b!2151763 () Bool)

(declare-fun inv!32577 (BalanceConc!15782) Bool)

(assert (=> b!2151763 (= e!1376145 (and setRes!17281 (inv!32577 (totalInput!3275 (h!30110 s!7978))) e!1376144))))

(declare-fun condSetEmpty!17281 () Bool)

(assert (=> b!2151763 (= condSetEmpty!17281 (= (z!5943 (h!30110 s!7978)) (as set.empty (Set Context!2888))))))

(declare-fun b!2151764 () Bool)

(declare-fun res!927819 () Bool)

(assert (=> b!2151764 (=> (not res!927819) (not e!1376143))))

(assert (=> b!2151764 (= res!927819 (and (= res1!7 res2!7) (not (is-Nil!24709 s!7978))))))

(assert (= (and start!208728 res!927820) b!2151764))

(assert (= (and b!2151764 res!927819) b!2151761))

(assert (= (and b!2151763 condSetEmpty!17281) setIsEmpty!17281))

(assert (= (and b!2151763 (not condSetEmpty!17281)) setNonEmpty!17281))

(assert (= setNonEmpty!17281 b!2151760))

(assert (= b!2151763 b!2151759))

(assert (= b!2151762 b!2151763))

(assert (= (and start!208728 (is-Cons!24709 s!7978)) b!2151762))

(declare-fun m!2594262 () Bool)

(assert (=> start!208728 m!2594262))

(declare-fun m!2594264 () Bool)

(assert (=> setNonEmpty!17281 m!2594264))

(declare-fun m!2594266 () Bool)

(assert (=> b!2151763 m!2594266))

(declare-fun m!2594268 () Bool)

(assert (=> b!2151762 m!2594268))

(declare-fun m!2594270 () Bool)

(assert (=> b!2151759 m!2594270))

(declare-fun m!2594272 () Bool)

(assert (=> b!2151761 m!2594272))

(assert (=> b!2151761 m!2594272))

(declare-fun m!2594274 () Bool)

(assert (=> b!2151761 m!2594274))

(declare-fun m!2594276 () Bool)

(assert (=> b!2151761 m!2594276))

(push 1)

(assert (not b!2151760))

(assert (not b!2151763))

(assert (not b!2151762))

(assert (not b!2151761))

(assert (not b!2151759))

(assert (not setNonEmpty!17281))

(assert (not start!208728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

