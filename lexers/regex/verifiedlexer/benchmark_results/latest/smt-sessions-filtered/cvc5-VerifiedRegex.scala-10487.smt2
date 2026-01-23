; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541426 () Bool)

(assert start!541426)

(declare-fun b!5127296 () Bool)

(declare-fun e!3197626 () Bool)

(assert (=> b!5127296 (= e!3197626 (not true))))

(declare-datatypes ((C!28794 0))(
  ( (C!28795 (val!24049 Int)) )
))
(declare-datatypes ((Regex!14264 0))(
  ( (ElementMatch!14264 (c!881564 C!28794)) (Concat!23109 (regOne!29040 Regex!14264) (regTwo!29040 Regex!14264)) (EmptyExpr!14264) (Star!14264 (reg!14593 Regex!14264)) (EmptyLang!14264) (Union!14264 (regOne!29041 Regex!14264) (regTwo!29041 Regex!14264)) )
))
(declare-datatypes ((List!59465 0))(
  ( (Nil!59341) (Cons!59341 (h!65789 Regex!14264) (t!372492 List!59465)) )
))
(declare-datatypes ((Context!7296 0))(
  ( (Context!7297 (exprs!4148 List!59465)) )
))
(declare-fun z!1006 () (Set Context!7296))

(declare-datatypes ((List!59466 0))(
  ( (Nil!59342) (Cons!59342 (h!65790 C!28794) (t!372493 List!59466)) )
))
(declare-fun s!2272 () List!59466)

(declare-fun lostCauseZipper!1142 ((Set Context!7296)) Bool)

(declare-fun derivationStepZipper!873 ((Set Context!7296) C!28794) (Set Context!7296))

(assert (=> b!5127296 (lostCauseZipper!1142 (derivationStepZipper!873 z!1006 (h!65790 s!2272)))))

(declare-datatypes ((Unit!150527 0))(
  ( (Unit!150528) )
))
(declare-fun lt!2114573 () Unit!150527)

(declare-fun lemmaLostCauseFixPoint!1 ((Set Context!7296) C!28794) Unit!150527)

(assert (=> b!5127296 (= lt!2114573 (lemmaLostCauseFixPoint!1 z!1006 (h!65790 s!2272)))))

(declare-fun b!5127297 () Bool)

(declare-fun res!2183059 () Bool)

(assert (=> b!5127297 (=> (not res!2183059) (not e!3197626))))

(assert (=> b!5127297 (= res!2183059 (not (is-Nil!59342 s!2272)))))

(declare-fun b!5127298 () Bool)

(declare-fun e!3197627 () Bool)

(declare-fun tp_is_empty!37797 () Bool)

(declare-fun tp!1430290 () Bool)

(assert (=> b!5127298 (= e!3197627 (and tp_is_empty!37797 tp!1430290))))

(declare-fun res!2183060 () Bool)

(assert (=> start!541426 (=> (not res!2183060) (not e!3197626))))

(assert (=> start!541426 (= res!2183060 (lostCauseZipper!1142 z!1006))))

(assert (=> start!541426 e!3197626))

(declare-fun condSetEmpty!30721 () Bool)

(assert (=> start!541426 (= condSetEmpty!30721 (= z!1006 (as set.empty (Set Context!7296))))))

(declare-fun setRes!30721 () Bool)

(assert (=> start!541426 setRes!30721))

(assert (=> start!541426 e!3197627))

(declare-fun b!5127299 () Bool)

(declare-fun e!3197628 () Bool)

(declare-fun tp!1430291 () Bool)

(assert (=> b!5127299 (= e!3197628 tp!1430291)))

(declare-fun setIsEmpty!30721 () Bool)

(assert (=> setIsEmpty!30721 setRes!30721))

(declare-fun setElem!30721 () Context!7296)

(declare-fun setNonEmpty!30721 () Bool)

(declare-fun tp!1430292 () Bool)

(declare-fun inv!78842 (Context!7296) Bool)

(assert (=> setNonEmpty!30721 (= setRes!30721 (and tp!1430292 (inv!78842 setElem!30721) e!3197628))))

(declare-fun setRest!30721 () (Set Context!7296))

(assert (=> setNonEmpty!30721 (= z!1006 (set.union (set.insert setElem!30721 (as set.empty (Set Context!7296))) setRest!30721))))

(assert (= (and start!541426 res!2183060) b!5127297))

(assert (= (and b!5127297 res!2183059) b!5127296))

(assert (= (and start!541426 condSetEmpty!30721) setIsEmpty!30721))

(assert (= (and start!541426 (not condSetEmpty!30721)) setNonEmpty!30721))

(assert (= setNonEmpty!30721 b!5127299))

(assert (= (and start!541426 (is-Cons!59342 s!2272)) b!5127298))

(declare-fun m!6191318 () Bool)

(assert (=> b!5127296 m!6191318))

(assert (=> b!5127296 m!6191318))

(declare-fun m!6191320 () Bool)

(assert (=> b!5127296 m!6191320))

(declare-fun m!6191322 () Bool)

(assert (=> b!5127296 m!6191322))

(declare-fun m!6191324 () Bool)

(assert (=> start!541426 m!6191324))

(declare-fun m!6191326 () Bool)

(assert (=> setNonEmpty!30721 m!6191326))

(push 1)

(assert (not b!5127298))

(assert (not setNonEmpty!30721))

(assert (not start!541426))

(assert (not b!5127299))

(assert (not b!5127296))

(assert tp_is_empty!37797)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

