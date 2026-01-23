; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543102 () Bool)

(assert start!543102)

(declare-fun b!5133355 () Bool)

(assert (=> b!5133355 true))

(declare-fun b!5133354 () Bool)

(declare-fun res!2186487 () Bool)

(declare-fun e!3201779 () Bool)

(assert (=> b!5133354 (=> (not res!2186487) (not e!3201779))))

(declare-datatypes ((C!29010 0))(
  ( (C!29011 (val!24157 Int)) )
))
(declare-datatypes ((Regex!14372 0))(
  ( (ElementMatch!14372 (c!883485 C!29010)) (Concat!23217 (regOne!29256 Regex!14372) (regTwo!29256 Regex!14372)) (EmptyExpr!14372) (Star!14372 (reg!14701 Regex!14372)) (EmptyLang!14372) (Union!14372 (regOne!29257 Regex!14372) (regTwo!29257 Regex!14372)) )
))
(declare-datatypes ((List!59691 0))(
  ( (Nil!59567) (Cons!59567 (h!66015 Regex!14372) (t!372718 List!59691)) )
))
(declare-datatypes ((Context!7512 0))(
  ( (Context!7513 (exprs!4256 List!59691)) )
))
(declare-fun lt!2118528 () (Set Context!7512))

(declare-fun lambda!255418 () Int)

(declare-fun lostCauseZipper!1216 ((Set Context!7512)) Bool)

(declare-fun forall!13828 ((Set Context!7512) Int) Bool)

(assert (=> b!5133354 (= res!2186487 (= (lostCauseZipper!1216 lt!2118528) (forall!13828 lt!2118528 lambda!255418)))))

(declare-fun e!3201781 () Bool)

(declare-fun setElem!31245 () Context!7512)

(declare-fun setNonEmpty!31245 () Bool)

(declare-fun setRes!31245 () Bool)

(declare-fun tp!1431951 () Bool)

(declare-fun inv!79112 (Context!7512) Bool)

(assert (=> setNonEmpty!31245 (= setRes!31245 (and tp!1431951 (inv!79112 setElem!31245) e!3201781))))

(declare-fun z!1054 () (Set Context!7512))

(declare-fun setRest!31245 () (Set Context!7512))

(assert (=> setNonEmpty!31245 (= z!1054 (set.union (set.insert setElem!31245 (as set.empty (Set Context!7512))) setRest!31245))))

(declare-fun e!3201780 () Bool)

(assert (=> b!5133355 (= e!3201780 e!3201779)))

(declare-fun res!2186485 () Bool)

(assert (=> b!5133355 (=> (not res!2186485) (not e!3201779))))

(declare-fun lambda!255417 () Int)

(declare-fun flatMap!423 ((Set Context!7512) Int) (Set Context!7512))

(assert (=> b!5133355 (= res!2186485 (= lt!2118528 (flatMap!423 z!1054 lambda!255417)))))

(declare-fun a!1233 () C!29010)

(declare-fun derivationStepZipper!927 ((Set Context!7512) C!29010) (Set Context!7512))

(assert (=> b!5133355 (= lt!2118528 (derivationStepZipper!927 z!1054 a!1233))))

(declare-fun setIsEmpty!31245 () Bool)

(assert (=> setIsEmpty!31245 setRes!31245))

(declare-fun b!5133356 () Bool)

(declare-fun tp!1431950 () Bool)

(assert (=> b!5133356 (= e!3201781 tp!1431950)))

(declare-fun b!5133357 () Bool)

(assert (=> b!5133357 (= e!3201779 false)))

(declare-fun lt!2118529 () Bool)

(assert (=> b!5133357 (= lt!2118529 (forall!13828 z!1054 lambda!255418))))

(declare-fun res!2186486 () Bool)

(assert (=> start!543102 (=> (not res!2186486) (not e!3201780))))

(assert (=> start!543102 (= res!2186486 (lostCauseZipper!1216 z!1054))))

(assert (=> start!543102 e!3201780))

(declare-fun condSetEmpty!31245 () Bool)

(assert (=> start!543102 (= condSetEmpty!31245 (= z!1054 (as set.empty (Set Context!7512))))))

(assert (=> start!543102 setRes!31245))

(declare-fun tp_is_empty!37917 () Bool)

(assert (=> start!543102 tp_is_empty!37917))

(assert (= (and start!543102 res!2186486) b!5133355))

(assert (= (and b!5133355 res!2186485) b!5133354))

(assert (= (and b!5133354 res!2186487) b!5133357))

(assert (= (and start!543102 condSetEmpty!31245) setIsEmpty!31245))

(assert (= (and start!543102 (not condSetEmpty!31245)) setNonEmpty!31245))

(assert (= setNonEmpty!31245 b!5133356))

(declare-fun m!6199518 () Bool)

(assert (=> b!5133354 m!6199518))

(declare-fun m!6199520 () Bool)

(assert (=> b!5133354 m!6199520))

(declare-fun m!6199522 () Bool)

(assert (=> b!5133355 m!6199522))

(declare-fun m!6199524 () Bool)

(assert (=> b!5133355 m!6199524))

(declare-fun m!6199526 () Bool)

(assert (=> setNonEmpty!31245 m!6199526))

(declare-fun m!6199528 () Bool)

(assert (=> start!543102 m!6199528))

(declare-fun m!6199530 () Bool)

(assert (=> b!5133357 m!6199530))

(push 1)

(assert (not b!5133354))

(assert (not start!543102))

(assert tp_is_empty!37917)

(assert (not b!5133356))

(assert (not b!5133355))

(assert (not b!5133357))

(assert (not setNonEmpty!31245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

