; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542324 () Bool)

(assert start!542324)

(declare-fun b!5130410 () Bool)

(assert (=> b!5130410 true))

(declare-fun bs!1195678 () Bool)

(declare-fun b!5130405 () Bool)

(declare-fun b!5130406 () Bool)

(assert (= bs!1195678 (and b!5130405 b!5130406)))

(declare-fun lambda!253665 () Int)

(declare-fun lambda!253664 () Int)

(assert (=> bs!1195678 (not (= lambda!253665 lambda!253664))))

(declare-fun bs!1195679 () Bool)

(declare-fun b!5130412 () Bool)

(assert (= bs!1195679 (and b!5130412 b!5130406)))

(declare-fun lambda!253666 () Int)

(assert (=> bs!1195679 (not (= lambda!253666 lambda!253664))))

(declare-fun bs!1195680 () Bool)

(assert (= bs!1195680 (and b!5130412 b!5130405)))

(assert (=> bs!1195680 (not (= lambda!253666 lambda!253665))))

(assert (=> b!5130412 true))

(assert (=> b!5130412 true))

(declare-fun b!5130403 () Bool)

(declare-fun res!2184914 () Bool)

(declare-fun e!3199738 () Bool)

(assert (=> b!5130403 (=> (not res!2184914) (not e!3199738))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28932 0))(
  ( (C!28933 (val!24118 Int)) )
))
(declare-datatypes ((Regex!14333 0))(
  ( (ElementMatch!14333 (c!882467 C!28932)) (Concat!23178 (regOne!29178 Regex!14333) (regTwo!29178 Regex!14333)) (EmptyExpr!14333) (Star!14333 (reg!14662 Regex!14333)) (EmptyLang!14333) (Union!14333 (regOne!29179 Regex!14333) (regTwo!29179 Regex!14333)) )
))
(declare-datatypes ((List!59593 0))(
  ( (Nil!59469) (Cons!59469 (h!65917 Regex!14333) (t!372620 List!59593)) )
))
(declare-datatypes ((Context!7434 0))(
  ( (Context!7435 (exprs!4217 List!59593)) )
))
(declare-fun z!1054 () (InoxSet Context!7434))

(declare-fun forall!13748 ((InoxSet Context!7434) Int) Bool)

(assert (=> b!5130403 (= res!2184914 (forall!13748 z!1054 lambda!253664))))

(declare-fun b!5130404 () Bool)

(declare-fun res!2184918 () Bool)

(declare-fun e!3199737 () Bool)

(assert (=> b!5130404 (=> res!2184918 e!3199737)))

(declare-fun lt!2116386 () Context!7434)

(declare-fun lostCause!1286 (Context!7434) Bool)

(assert (=> b!5130404 (= res!2184918 (lostCause!1286 lt!2116386))))

(declare-fun e!3199739 () Bool)

(assert (=> b!5130405 (= e!3199738 (not e!3199739))))

(declare-fun res!2184913 () Bool)

(assert (=> b!5130405 (=> res!2184913 e!3199739)))

(declare-fun lt!2116383 () (InoxSet Context!7434))

(declare-fun exists!1630 ((InoxSet Context!7434) Int) Bool)

(assert (=> b!5130405 (= res!2184913 (not (exists!1630 lt!2116383 lambda!253665)))))

(declare-datatypes ((List!59594 0))(
  ( (Nil!59470) (Cons!59470 (h!65918 Context!7434) (t!372621 List!59594)) )
))
(declare-fun lt!2116387 () List!59594)

(declare-fun exists!1631 (List!59594 Int) Bool)

(assert (=> b!5130405 (exists!1631 lt!2116387 lambda!253665)))

(declare-datatypes ((Unit!150714 0))(
  ( (Unit!150715) )
))
(declare-fun lt!2116384 () Unit!150714)

(declare-fun lemmaNotForallThenExists!371 (List!59594 Int) Unit!150714)

(assert (=> b!5130405 (= lt!2116384 (lemmaNotForallThenExists!371 lt!2116387 lambda!253664))))

(declare-fun toList!8323 ((InoxSet Context!7434)) List!59594)

(assert (=> b!5130405 (= lt!2116387 (toList!8323 lt!2116383))))

(declare-fun e!3199740 () Bool)

(assert (=> b!5130406 (= e!3199740 e!3199738)))

(declare-fun res!2184919 () Bool)

(assert (=> b!5130406 (=> (not res!2184919) (not e!3199738))))

(declare-fun lt!2116388 () Bool)

(assert (=> b!5130406 (= res!2184919 (= lt!2116388 (forall!13748 lt!2116383 lambda!253664)))))

(declare-fun lostCauseZipper!1177 ((InoxSet Context!7434)) Bool)

(assert (=> b!5130406 (= lt!2116388 (lostCauseZipper!1177 lt!2116383))))

(declare-fun b!5130407 () Bool)

(declare-fun e!3199735 () Bool)

(declare-fun tp!1431264 () Bool)

(assert (=> b!5130407 (= e!3199735 tp!1431264)))

(declare-fun b!5130408 () Bool)

(declare-fun res!2184916 () Bool)

(assert (=> b!5130408 (=> (not res!2184916) (not e!3199738))))

(assert (=> b!5130408 (= res!2184916 (not lt!2116388))))

(declare-fun b!5130409 () Bool)

(assert (=> b!5130409 (= e!3199739 e!3199737)))

(declare-fun res!2184911 () Bool)

(assert (=> b!5130409 (=> res!2184911 e!3199737)))

(assert (=> b!5130409 (= res!2184911 (not (select lt!2116383 lt!2116386)))))

(declare-fun getWitness!783 (List!59594 Int) Context!7434)

(assert (=> b!5130409 (= lt!2116386 (getWitness!783 lt!2116387 lambda!253665))))

(declare-fun setIsEmpty!31034 () Bool)

(declare-fun setRes!31034 () Bool)

(assert (=> setIsEmpty!31034 setRes!31034))

(declare-fun e!3199741 () Bool)

(assert (=> b!5130410 (= e!3199741 e!3199740)))

(declare-fun res!2184912 () Bool)

(assert (=> b!5130410 (=> (not res!2184912) (not e!3199740))))

(declare-fun lambda!253663 () Int)

(declare-fun flatMap!384 ((InoxSet Context!7434) Int) (InoxSet Context!7434))

(assert (=> b!5130410 (= res!2184912 (= lt!2116383 (flatMap!384 z!1054 lambda!253663)))))

(declare-fun a!1233 () C!28932)

(declare-fun derivationStepZipper!888 ((InoxSet Context!7434) C!28932) (InoxSet Context!7434))

(assert (=> b!5130410 (= lt!2116383 (derivationStepZipper!888 z!1054 a!1233))))

(declare-fun b!5130411 () Bool)

(declare-fun e!3199736 () Bool)

(assert (=> b!5130411 (= e!3199736 (exists!1630 z!1054 lambda!253666))))

(assert (=> b!5130412 (= e!3199737 e!3199736)))

(declare-fun res!2184915 () Bool)

(assert (=> b!5130412 (=> res!2184915 e!3199736)))

(assert (=> b!5130412 (= res!2184915 (not (exists!1630 z!1054 lambda!253666)))))

(assert (=> b!5130412 (exists!1630 z!1054 lambda!253666)))

(declare-fun lt!2116385 () Unit!150714)

(declare-fun lemmaFlatMapPost!2 ((InoxSet Context!7434) Int Context!7434) Unit!150714)

(assert (=> b!5130412 (= lt!2116385 (lemmaFlatMapPost!2 z!1054 lambda!253663 lt!2116386))))

(declare-fun b!5130413 () Bool)

(declare-fun res!2184920 () Bool)

(assert (=> b!5130413 (=> (not res!2184920) (not e!3199738))))

(assert (=> b!5130413 (= res!2184920 (not (forall!13748 lt!2116383 lambda!253664)))))

(declare-fun setElem!31034 () Context!7434)

(declare-fun setNonEmpty!31034 () Bool)

(declare-fun tp!1431265 () Bool)

(declare-fun inv!79013 (Context!7434) Bool)

(assert (=> setNonEmpty!31034 (= setRes!31034 (and tp!1431265 (inv!79013 setElem!31034) e!3199735))))

(declare-fun setRest!31034 () (InoxSet Context!7434))

(assert (=> setNonEmpty!31034 (= z!1054 ((_ map or) (store ((as const (Array Context!7434 Bool)) false) setElem!31034 true) setRest!31034))))

(declare-fun res!2184917 () Bool)

(assert (=> start!542324 (=> (not res!2184917) (not e!3199741))))

(assert (=> start!542324 (= res!2184917 (lostCauseZipper!1177 z!1054))))

(assert (=> start!542324 e!3199741))

(declare-fun condSetEmpty!31034 () Bool)

(assert (=> start!542324 (= condSetEmpty!31034 (= z!1054 ((as const (Array Context!7434 Bool)) false)))))

(assert (=> start!542324 setRes!31034))

(declare-fun tp_is_empty!37839 () Bool)

(assert (=> start!542324 tp_is_empty!37839))

(assert (= (and start!542324 res!2184917) b!5130410))

(assert (= (and b!5130410 res!2184912) b!5130406))

(assert (= (and b!5130406 res!2184919) b!5130403))

(assert (= (and b!5130403 res!2184914) b!5130408))

(assert (= (and b!5130408 res!2184916) b!5130413))

(assert (= (and b!5130413 res!2184920) b!5130405))

(assert (= (and b!5130405 (not res!2184913)) b!5130409))

(assert (= (and b!5130409 (not res!2184911)) b!5130404))

(assert (= (and b!5130404 (not res!2184918)) b!5130412))

(assert (= (and b!5130412 (not res!2184915)) b!5130411))

(assert (= (and start!542324 condSetEmpty!31034) setIsEmpty!31034))

(assert (= (and start!542324 (not condSetEmpty!31034)) setNonEmpty!31034))

(assert (= setNonEmpty!31034 b!5130407))

(declare-fun m!6195154 () Bool)

(assert (=> b!5130411 m!6195154))

(declare-fun m!6195156 () Bool)

(assert (=> b!5130404 m!6195156))

(declare-fun m!6195158 () Bool)

(assert (=> start!542324 m!6195158))

(declare-fun m!6195160 () Bool)

(assert (=> b!5130405 m!6195160))

(declare-fun m!6195162 () Bool)

(assert (=> b!5130405 m!6195162))

(declare-fun m!6195164 () Bool)

(assert (=> b!5130405 m!6195164))

(declare-fun m!6195166 () Bool)

(assert (=> b!5130405 m!6195166))

(declare-fun m!6195168 () Bool)

(assert (=> b!5130406 m!6195168))

(declare-fun m!6195170 () Bool)

(assert (=> b!5130406 m!6195170))

(declare-fun m!6195172 () Bool)

(assert (=> setNonEmpty!31034 m!6195172))

(assert (=> b!5130412 m!6195154))

(assert (=> b!5130412 m!6195154))

(declare-fun m!6195174 () Bool)

(assert (=> b!5130412 m!6195174))

(declare-fun m!6195176 () Bool)

(assert (=> b!5130410 m!6195176))

(declare-fun m!6195178 () Bool)

(assert (=> b!5130410 m!6195178))

(assert (=> b!5130413 m!6195168))

(declare-fun m!6195180 () Bool)

(assert (=> b!5130403 m!6195180))

(declare-fun m!6195182 () Bool)

(assert (=> b!5130409 m!6195182))

(declare-fun m!6195184 () Bool)

(assert (=> b!5130409 m!6195184))

(check-sat (not setNonEmpty!31034) (not b!5130407) (not b!5130403) (not b!5130411) (not start!542324) (not b!5130406) (not b!5130412) (not b!5130404) (not b!5130410) (not b!5130413) (not b!5130405) tp_is_empty!37839 (not b!5130409))
(check-sat)
