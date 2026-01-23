; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!548920 () Bool)

(assert start!548920)

(declare-datatypes ((C!29626 0))(
  ( (C!29627 (val!24515 Int)) )
))
(declare-datatypes ((Regex!14678 0))(
  ( (ElementMatch!14678 (c!893325 C!29626)) (Concat!23523 (regOne!29868 Regex!14678) (regTwo!29868 Regex!14678)) (EmptyExpr!14678) (Star!14678 (reg!15007 Regex!14678)) (EmptyLang!14678) (Union!14678 (regOne!29869 Regex!14678) (regTwo!29869 Regex!14678)) )
))
(declare-datatypes ((List!60335 0))(
  ( (Nil!60211) (Cons!60211 (h!66659 Regex!14678) (t!373488 List!60335)) )
))
(declare-datatypes ((Context!8124 0))(
  ( (Context!8125 (exprs!4562 List!60335)) )
))
(declare-fun lt!2136100 () (Set Context!8124))

(declare-fun baseZ!87 () (Set Context!8124))

(declare-datatypes ((List!60336 0))(
  ( (Nil!60212) (Cons!60212 (h!66660 C!29626) (t!373489 List!60336)) )
))
(declare-fun input!5952 () List!60336)

(declare-fun derivationZipper!301 ((Set Context!8124) List!60336) (Set Context!8124))

(assert (=> start!548920 (= lt!2136100 (derivationZipper!301 baseZ!87 input!5952))))

(assert (=> start!548920 false))

(declare-fun condSetEmpty!32569 () Bool)

(assert (=> start!548920 (= condSetEmpty!32569 (= baseZ!87 (as set.empty (Set Context!8124))))))

(declare-fun setRes!32569 () Bool)

(assert (=> start!548920 setRes!32569))

(declare-fun e!3229082 () Bool)

(assert (=> start!548920 e!3229082))

(declare-fun b!5182795 () Bool)

(declare-fun tp_is_empty!38609 () Bool)

(declare-fun tp!1453744 () Bool)

(assert (=> b!5182795 (= e!3229082 (and tp_is_empty!38609 tp!1453744))))

(declare-fun setIsEmpty!32569 () Bool)

(assert (=> setIsEmpty!32569 setRes!32569))

(declare-fun setNonEmpty!32569 () Bool)

(declare-fun tp!1453743 () Bool)

(declare-fun e!3229083 () Bool)

(declare-fun setElem!32569 () Context!8124)

(declare-fun inv!79943 (Context!8124) Bool)

(assert (=> setNonEmpty!32569 (= setRes!32569 (and tp!1453743 (inv!79943 setElem!32569) e!3229083))))

(declare-fun setRest!32569 () (Set Context!8124))

(assert (=> setNonEmpty!32569 (= baseZ!87 (set.union (set.insert setElem!32569 (as set.empty (Set Context!8124))) setRest!32569))))

(declare-fun b!5182794 () Bool)

(declare-fun tp!1453742 () Bool)

(assert (=> b!5182794 (= e!3229083 tp!1453742)))

(assert (= (and start!548920 condSetEmpty!32569) setIsEmpty!32569))

(assert (= (and start!548920 (not condSetEmpty!32569)) setNonEmpty!32569))

(assert (= setNonEmpty!32569 b!5182794))

(assert (= (and start!548920 (is-Cons!60212 input!5952)) b!5182795))

(declare-fun m!6242922 () Bool)

(assert (=> start!548920 m!6242922))

(declare-fun m!6242924 () Bool)

(assert (=> setNonEmpty!32569 m!6242924))

(push 1)

(assert (not b!5182794))

(assert (not setNonEmpty!32569))

(assert (not b!5182795))

(assert tp_is_empty!38609)

(assert (not start!548920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

