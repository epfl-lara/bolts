; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208868 () Bool)

(assert start!208868)

(declare-fun b!2152837 () Bool)

(declare-fun e!1376835 () Bool)

(declare-fun tp!669353 () Bool)

(assert (=> b!2152837 (= e!1376835 tp!669353)))

(assert (=> start!208868 false))

(declare-fun e!1376836 () Bool)

(assert (=> start!208868 e!1376836))

(assert (=> start!208868 true))

(declare-fun tp!669350 () Bool)

(declare-fun b!2152838 () Bool)

(declare-fun e!1376834 () Bool)

(declare-datatypes ((C!11930 0))(
  ( (C!11931 (val!6951 Int)) )
))
(declare-datatypes ((List!24845 0))(
  ( (Nil!24761) (Cons!24761 (h!30162 C!11930) (t!197393 List!24845)) )
))
(declare-datatypes ((IArray!16061 0))(
  ( (IArray!16062 (innerList!8088 List!24845)) )
))
(declare-datatypes ((Conc!8028 0))(
  ( (Node!8028 (left!19045 Conc!8028) (right!19375 Conc!8028) (csize!16286 Int) (cheight!8239 Int)) (Leaf!11742 (xs!10970 IArray!16061) (csize!16287 Int)) (Empty!8028) )
))
(declare-datatypes ((Regex!5892 0))(
  ( (ElementMatch!5892 (c!341381 C!11930)) (Concat!10194 (regOne!12296 Regex!5892) (regTwo!12296 Regex!5892)) (EmptyExpr!5892) (Star!5892 (reg!6221 Regex!5892)) (EmptyLang!5892) (Union!5892 (regOne!12297 Regex!5892) (regTwo!12297 Regex!5892)) )
))
(declare-datatypes ((List!24846 0))(
  ( (Nil!24762) (Cons!24762 (h!30163 Regex!5892) (t!197394 List!24846)) )
))
(declare-datatypes ((Context!2924 0))(
  ( (Context!2925 (exprs!1962 List!24846)) )
))
(declare-datatypes ((BalanceConc!15818 0))(
  ( (BalanceConc!15819 (c!341382 Conc!8028)) )
))
(declare-datatypes ((StackFrame!318 0))(
  ( (StackFrame!319 (z!5961 (Set Context!2924)) (from!2804 Int) (lastNullablePos!491 Int) (res!928307 Int) (totalInput!3293 BalanceConc!15818)) )
))
(declare-datatypes ((List!24847 0))(
  ( (Nil!24763) (Cons!24763 (h!30164 StackFrame!318) (t!197395 List!24847)) )
))
(declare-fun s!7978 () List!24847)

(declare-fun inv!32696 (StackFrame!318) Bool)

(assert (=> b!2152838 (= e!1376836 (and (inv!32696 (h!30164 s!7978)) e!1376834 tp!669350))))

(declare-fun e!1376833 () Bool)

(declare-fun b!2152839 () Bool)

(declare-fun setRes!17383 () Bool)

(declare-fun inv!32697 (BalanceConc!15818) Bool)

(assert (=> b!2152839 (= e!1376834 (and setRes!17383 (inv!32697 (totalInput!3293 (h!30164 s!7978))) e!1376833))))

(declare-fun condSetEmpty!17383 () Bool)

(assert (=> b!2152839 (= condSetEmpty!17383 (= (z!5961 (h!30164 s!7978)) (as set.empty (Set Context!2924))))))

(declare-fun setNonEmpty!17383 () Bool)

(declare-fun setElem!17383 () Context!2924)

(declare-fun tp!669352 () Bool)

(declare-fun inv!32698 (Context!2924) Bool)

(assert (=> setNonEmpty!17383 (= setRes!17383 (and tp!669352 (inv!32698 setElem!17383) e!1376835))))

(declare-fun setRest!17383 () (Set Context!2924))

(assert (=> setNonEmpty!17383 (= (z!5961 (h!30164 s!7978)) (set.union (set.insert setElem!17383 (as set.empty (Set Context!2924))) setRest!17383))))

(declare-fun setIsEmpty!17383 () Bool)

(assert (=> setIsEmpty!17383 setRes!17383))

(declare-fun b!2152840 () Bool)

(declare-fun tp!669351 () Bool)

(declare-fun inv!32699 (Conc!8028) Bool)

(assert (=> b!2152840 (= e!1376833 (and (inv!32699 (c!341382 (totalInput!3293 (h!30164 s!7978)))) tp!669351))))

(assert (= (and b!2152839 condSetEmpty!17383) setIsEmpty!17383))

(assert (= (and b!2152839 (not condSetEmpty!17383)) setNonEmpty!17383))

(assert (= setNonEmpty!17383 b!2152837))

(assert (= b!2152839 b!2152840))

(assert (= b!2152838 b!2152839))

(assert (= (and start!208868 (is-Cons!24763 s!7978)) b!2152838))

(declare-fun m!2594838 () Bool)

(assert (=> b!2152838 m!2594838))

(declare-fun m!2594840 () Bool)

(assert (=> b!2152839 m!2594840))

(declare-fun m!2594842 () Bool)

(assert (=> setNonEmpty!17383 m!2594842))

(declare-fun m!2594844 () Bool)

(assert (=> b!2152840 m!2594844))

(push 1)

(assert (not b!2152838))

(assert (not b!2152839))

(assert (not b!2152837))

(assert (not setNonEmpty!17383))

(assert (not b!2152840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

