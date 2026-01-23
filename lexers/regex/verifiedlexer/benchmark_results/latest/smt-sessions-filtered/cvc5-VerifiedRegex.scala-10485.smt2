; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541418 () Bool)

(assert start!541418)

(declare-fun b!5127262 () Bool)

(declare-fun e!3197603 () Bool)

(assert (=> b!5127262 (= e!3197603 false)))

(declare-fun lt!2114561 () Bool)

(declare-datatypes ((C!28786 0))(
  ( (C!28787 (val!24045 Int)) )
))
(declare-datatypes ((Regex!14260 0))(
  ( (ElementMatch!14260 (c!881560 C!28786)) (Concat!23105 (regOne!29032 Regex!14260) (regTwo!29032 Regex!14260)) (EmptyExpr!14260) (Star!14260 (reg!14589 Regex!14260)) (EmptyLang!14260) (Union!14260 (regOne!29033 Regex!14260) (regTwo!29033 Regex!14260)) )
))
(declare-datatypes ((List!59459 0))(
  ( (Nil!59335) (Cons!59335 (h!65783 Regex!14260) (t!372486 List!59459)) )
))
(declare-datatypes ((Context!7288 0))(
  ( (Context!7289 (exprs!4144 List!59459)) )
))
(declare-fun z!1006 () (Set Context!7288))

(declare-fun nullableZipper!1055 ((Set Context!7288)) Bool)

(assert (=> b!5127262 (= lt!2114561 (nullableZipper!1055 z!1006))))

(declare-fun b!5127263 () Bool)

(declare-fun e!3197602 () Bool)

(declare-fun tp!1430260 () Bool)

(assert (=> b!5127263 (= e!3197602 tp!1430260)))

(declare-fun b!5127264 () Bool)

(declare-fun res!2183044 () Bool)

(assert (=> b!5127264 (=> (not res!2183044) (not e!3197603))))

(declare-datatypes ((List!59460 0))(
  ( (Nil!59336) (Cons!59336 (h!65784 C!28786) (t!372487 List!59460)) )
))
(declare-fun s!2272 () List!59460)

(assert (=> b!5127264 (= res!2183044 (is-Nil!59336 s!2272))))

(declare-fun setNonEmpty!30709 () Bool)

(declare-fun tp!1430261 () Bool)

(declare-fun setRes!30709 () Bool)

(declare-fun setElem!30709 () Context!7288)

(declare-fun inv!78832 (Context!7288) Bool)

(assert (=> setNonEmpty!30709 (= setRes!30709 (and tp!1430261 (inv!78832 setElem!30709) e!3197602))))

(declare-fun setRest!30709 () (Set Context!7288))

(assert (=> setNonEmpty!30709 (= z!1006 (set.union (set.insert setElem!30709 (as set.empty (Set Context!7288))) setRest!30709))))

(declare-fun b!5127265 () Bool)

(declare-fun e!3197604 () Bool)

(declare-fun tp_is_empty!37793 () Bool)

(declare-fun tp!1430262 () Bool)

(assert (=> b!5127265 (= e!3197604 (and tp_is_empty!37793 tp!1430262))))

(declare-fun setIsEmpty!30709 () Bool)

(assert (=> setIsEmpty!30709 setRes!30709))

(declare-fun b!5127266 () Bool)

(declare-fun res!2183045 () Bool)

(assert (=> b!5127266 (=> (not res!2183045) (not e!3197603))))

(declare-fun matchZipper!928 ((Set Context!7288) List!59460) Bool)

(assert (=> b!5127266 (= res!2183045 (matchZipper!928 z!1006 s!2272))))

(declare-fun res!2183043 () Bool)

(assert (=> start!541418 (=> (not res!2183043) (not e!3197603))))

(declare-fun lostCauseZipper!1138 ((Set Context!7288)) Bool)

(assert (=> start!541418 (= res!2183043 (lostCauseZipper!1138 z!1006))))

(assert (=> start!541418 e!3197603))

(declare-fun condSetEmpty!30709 () Bool)

(assert (=> start!541418 (= condSetEmpty!30709 (= z!1006 (as set.empty (Set Context!7288))))))

(assert (=> start!541418 setRes!30709))

(assert (=> start!541418 e!3197604))

(assert (= (and start!541418 res!2183043) b!5127264))

(assert (= (and b!5127264 res!2183044) b!5127266))

(assert (= (and b!5127266 res!2183045) b!5127262))

(assert (= (and start!541418 condSetEmpty!30709) setIsEmpty!30709))

(assert (= (and start!541418 (not condSetEmpty!30709)) setNonEmpty!30709))

(assert (= setNonEmpty!30709 b!5127263))

(assert (= (and start!541418 (is-Cons!59336 s!2272)) b!5127265))

(declare-fun m!6191294 () Bool)

(assert (=> b!5127262 m!6191294))

(declare-fun m!6191296 () Bool)

(assert (=> setNonEmpty!30709 m!6191296))

(declare-fun m!6191298 () Bool)

(assert (=> b!5127266 m!6191298))

(declare-fun m!6191300 () Bool)

(assert (=> start!541418 m!6191300))

(push 1)

(assert (not b!5127263))

(assert tp_is_empty!37793)

(assert (not b!5127266))

(assert (not start!541418))

(assert (not setNonEmpty!30709))

(assert (not b!5127262))

(assert (not b!5127265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

