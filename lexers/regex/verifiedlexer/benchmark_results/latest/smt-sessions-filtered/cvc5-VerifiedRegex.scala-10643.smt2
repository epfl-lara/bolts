; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546140 () Bool)

(assert start!546140)

(declare-fun b!5163058 () Bool)

(declare-fun e!3216965 () Bool)

(declare-fun tp_is_empty!38317 () Bool)

(declare-fun tp!1448113 () Bool)

(assert (=> b!5163058 (= e!3216965 (and tp_is_empty!38317 tp!1448113))))

(declare-fun tp!1448112 () Bool)

(declare-fun setRes!31385 () Bool)

(declare-datatypes ((C!29334 0))(
  ( (C!29335 (val!24369 Int)) )
))
(declare-datatypes ((Regex!14534 0))(
  ( (ElementMatch!14534 (c!888231 C!29334)) (Concat!23379 (regOne!29580 Regex!14534) (regTwo!29580 Regex!14534)) (EmptyExpr!14534) (Star!14534 (reg!14863 Regex!14534)) (EmptyLang!14534) (Union!14534 (regOne!29581 Regex!14534) (regTwo!29581 Regex!14534)) )
))
(declare-datatypes ((List!60021 0))(
  ( (Nil!59897) (Cons!59897 (h!66345 Regex!14534) (t!373174 List!60021)) )
))
(declare-datatypes ((Context!7836 0))(
  ( (Context!7837 (exprs!4418 List!60021)) )
))
(declare-fun setElem!31385 () Context!7836)

(declare-fun setNonEmpty!31385 () Bool)

(declare-fun e!3216967 () Bool)

(declare-fun inv!79580 (Context!7836) Bool)

(assert (=> setNonEmpty!31385 (= setRes!31385 (and tp!1448112 (inv!79580 setElem!31385) e!3216967))))

(declare-fun z!4413 () (Set Context!7836))

(declare-fun setRest!31385 () (Set Context!7836))

(assert (=> setNonEmpty!31385 (= z!4413 (set.union (set.insert setElem!31385 (as set.empty (Set Context!7836))) setRest!31385))))

(declare-fun b!5163059 () Bool)

(declare-fun e!3216966 () Bool)

(assert (=> b!5163059 (= e!3216966 false)))

(declare-fun lt!2122790 () (Set Context!7836))

(declare-datatypes ((List!60022 0))(
  ( (Nil!59898) (Cons!59898 (h!66346 C!29334) (t!373175 List!60022)) )
))
(declare-fun derivationZipper!157 ((Set Context!7836) List!60022) (Set Context!7836))

(assert (=> b!5163059 (= lt!2122790 (derivationZipper!157 z!4413 Nil!59898))))

(declare-fun b!5163060 () Bool)

(declare-fun tp!1448114 () Bool)

(assert (=> b!5163060 (= e!3216967 tp!1448114)))

(declare-fun res!2195105 () Bool)

(assert (=> start!546140 (=> (not res!2195105) (not e!3216966))))

(declare-fun input!5707 () List!60022)

(declare-fun isPrefix!5665 (List!60022 List!60022) Bool)

(assert (=> start!546140 (= res!2195105 (isPrefix!5665 Nil!59898 input!5707))))

(assert (=> start!546140 e!3216966))

(assert (=> start!546140 e!3216965))

(declare-fun condSetEmpty!31385 () Bool)

(assert (=> start!546140 (= condSetEmpty!31385 (= z!4413 (as set.empty (Set Context!7836))))))

(assert (=> start!546140 setRes!31385))

(declare-fun setIsEmpty!31385 () Bool)

(assert (=> setIsEmpty!31385 setRes!31385))

(assert (= (and start!546140 res!2195105) b!5163059))

(assert (= (and start!546140 (is-Cons!59898 input!5707)) b!5163058))

(assert (= (and start!546140 condSetEmpty!31385) setIsEmpty!31385))

(assert (= (and start!546140 (not condSetEmpty!31385)) setNonEmpty!31385))

(assert (= setNonEmpty!31385 b!5163060))

(declare-fun m!6213704 () Bool)

(assert (=> setNonEmpty!31385 m!6213704))

(declare-fun m!6213706 () Bool)

(assert (=> b!5163059 m!6213706))

(declare-fun m!6213708 () Bool)

(assert (=> start!546140 m!6213708))

(push 1)

(assert (not b!5163059))

(assert (not start!546140))

(assert tp_is_empty!38317)

(assert (not b!5163060))

(assert (not setNonEmpty!31385))

(assert (not b!5163058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

