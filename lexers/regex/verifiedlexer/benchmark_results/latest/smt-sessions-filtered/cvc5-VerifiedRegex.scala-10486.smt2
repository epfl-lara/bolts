; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541422 () Bool)

(assert start!541422)

(declare-fun lt!2114567 () Bool)

(declare-datatypes ((C!28790 0))(
  ( (C!28791 (val!24047 Int)) )
))
(declare-datatypes ((Regex!14262 0))(
  ( (ElementMatch!14262 (c!881562 C!28790)) (Concat!23107 (regOne!29036 Regex!14262) (regTwo!29036 Regex!14262)) (EmptyExpr!14262) (Star!14262 (reg!14591 Regex!14262)) (EmptyLang!14262) (Union!14262 (regOne!29037 Regex!14262) (regTwo!29037 Regex!14262)) )
))
(declare-datatypes ((List!59463 0))(
  ( (Nil!59339) (Cons!59339 (h!65787 Regex!14262) (t!372490 List!59463)) )
))
(declare-datatypes ((Context!7292 0))(
  ( (Context!7293 (exprs!4146 List!59463)) )
))
(declare-fun z!1006 () (Set Context!7292))

(declare-fun lostCauseZipper!1140 ((Set Context!7292)) Bool)

(assert (=> start!541422 (= lt!2114567 (lostCauseZipper!1140 z!1006))))

(assert (=> start!541422 false))

(declare-fun condSetEmpty!30715 () Bool)

(assert (=> start!541422 (= condSetEmpty!30715 (= z!1006 (as set.empty (Set Context!7292))))))

(declare-fun setRes!30715 () Bool)

(assert (=> start!541422 setRes!30715))

(declare-fun setIsEmpty!30715 () Bool)

(assert (=> setIsEmpty!30715 setRes!30715))

(declare-fun setElem!30715 () Context!7292)

(declare-fun setNonEmpty!30715 () Bool)

(declare-fun e!3197616 () Bool)

(declare-fun tp!1430277 () Bool)

(declare-fun inv!78837 (Context!7292) Bool)

(assert (=> setNonEmpty!30715 (= setRes!30715 (and tp!1430277 (inv!78837 setElem!30715) e!3197616))))

(declare-fun setRest!30715 () (Set Context!7292))

(assert (=> setNonEmpty!30715 (= z!1006 (set.union (set.insert setElem!30715 (as set.empty (Set Context!7292))) setRest!30715))))

(declare-fun b!5127284 () Bool)

(declare-fun tp!1430276 () Bool)

(assert (=> b!5127284 (= e!3197616 tp!1430276)))

(assert (= (and start!541422 condSetEmpty!30715) setIsEmpty!30715))

(assert (= (and start!541422 (not condSetEmpty!30715)) setNonEmpty!30715))

(assert (= setNonEmpty!30715 b!5127284))

(declare-fun m!6191310 () Bool)

(assert (=> start!541422 m!6191310))

(declare-fun m!6191312 () Bool)

(assert (=> setNonEmpty!30715 m!6191312))

(push 1)

(assert (not start!541422))

(assert (not setNonEmpty!30715))

(assert (not b!5127284))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

