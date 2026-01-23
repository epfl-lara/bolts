; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!542316 () Bool)

(assert start!542316)

(declare-fun b!5130278 () Bool)

(assert (=> b!5130278 true))

(declare-fun bs!1195668 () Bool)

(declare-fun b!5130277 () Bool)

(declare-fun b!5130274 () Bool)

(assert (= bs!1195668 (and b!5130277 b!5130274)))

(declare-fun lambda!253576 () Int)

(declare-fun lambda!253575 () Int)

(assert (=> bs!1195668 (not (= lambda!253576 lambda!253575))))

(declare-fun e!3199651 () Bool)

(declare-fun e!3199655 () Bool)

(assert (=> b!5130274 (= e!3199651 e!3199655)))

(declare-fun res!2184809 () Bool)

(assert (=> b!5130274 (=> (not res!2184809) (not e!3199655))))

(declare-fun lt!2116313 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28924 0))(
  ( (C!28925 (val!24114 Int)) )
))
(declare-datatypes ((Regex!14329 0))(
  ( (ElementMatch!14329 (c!882423 C!28924)) (Concat!23174 (regOne!29170 Regex!14329) (regTwo!29170 Regex!14329)) (EmptyExpr!14329) (Star!14329 (reg!14658 Regex!14329)) (EmptyLang!14329) (Union!14329 (regOne!29171 Regex!14329) (regTwo!29171 Regex!14329)) )
))
(declare-datatypes ((List!59585 0))(
  ( (Nil!59461) (Cons!59461 (h!65909 Regex!14329) (t!372612 List!59585)) )
))
(declare-datatypes ((Context!7426 0))(
  ( (Context!7427 (exprs!4213 List!59585)) )
))
(declare-fun lt!2116314 () (InoxSet Context!7426))

(declare-fun forall!13744 ((InoxSet Context!7426) Int) Bool)

(assert (=> b!5130274 (= res!2184809 (= lt!2116313 (forall!13744 lt!2116314 lambda!253575)))))

(declare-fun lostCauseZipper!1173 ((InoxSet Context!7426)) Bool)

(assert (=> b!5130274 (= lt!2116313 (lostCauseZipper!1173 lt!2116314))))

(declare-fun setIsEmpty!31022 () Bool)

(declare-fun setRes!31022 () Bool)

(assert (=> setIsEmpty!31022 setRes!31022))

(declare-fun b!5130275 () Bool)

(declare-fun res!2184806 () Bool)

(assert (=> b!5130275 (=> (not res!2184806) (not e!3199655))))

(declare-fun z!1054 () (InoxSet Context!7426))

(assert (=> b!5130275 (= res!2184806 (forall!13744 z!1054 lambda!253575))))

(declare-fun b!5130276 () Bool)

(declare-fun e!3199652 () Bool)

(declare-fun tp!1431240 () Bool)

(assert (=> b!5130276 (= e!3199652 tp!1431240)))

(declare-fun e!3199653 () Bool)

(assert (=> b!5130277 (= e!3199655 (not e!3199653))))

(declare-fun res!2184811 () Bool)

(assert (=> b!5130277 (=> res!2184811 e!3199653)))

(declare-fun exists!1622 ((InoxSet Context!7426) Int) Bool)

(assert (=> b!5130277 (= res!2184811 (not (exists!1622 lt!2116314 lambda!253576)))))

(declare-datatypes ((List!59586 0))(
  ( (Nil!59462) (Cons!59462 (h!65910 Context!7426) (t!372613 List!59586)) )
))
(declare-fun lt!2116315 () List!59586)

(declare-fun exists!1623 (List!59586 Int) Bool)

(assert (=> b!5130277 (exists!1623 lt!2116315 lambda!253576)))

(declare-datatypes ((Unit!150706 0))(
  ( (Unit!150707) )
))
(declare-fun lt!2116316 () Unit!150706)

(declare-fun lemmaNotForallThenExists!367 (List!59586 Int) Unit!150706)

(assert (=> b!5130277 (= lt!2116316 (lemmaNotForallThenExists!367 lt!2116315 lambda!253575))))

(declare-fun toList!8319 ((InoxSet Context!7426)) List!59586)

(assert (=> b!5130277 (= lt!2116315 (toList!8319 lt!2116314))))

(declare-fun e!3199654 () Bool)

(assert (=> b!5130278 (= e!3199654 e!3199651)))

(declare-fun res!2184812 () Bool)

(assert (=> b!5130278 (=> (not res!2184812) (not e!3199651))))

(declare-fun lambda!253574 () Int)

(declare-fun flatMap!380 ((InoxSet Context!7426) Int) (InoxSet Context!7426))

(assert (=> b!5130278 (= res!2184812 (= lt!2116314 (flatMap!380 z!1054 lambda!253574)))))

(declare-fun a!1233 () C!28924)

(declare-fun derivationStepZipper!884 ((InoxSet Context!7426) C!28924) (InoxSet Context!7426))

(assert (=> b!5130278 (= lt!2116314 (derivationStepZipper!884 z!1054 a!1233))))

(declare-fun b!5130279 () Bool)

(assert (=> b!5130279 (= e!3199653 (exists!1623 lt!2116315 lambda!253576))))

(declare-fun b!5130280 () Bool)

(declare-fun res!2184808 () Bool)

(assert (=> b!5130280 (=> (not res!2184808) (not e!3199655))))

(assert (=> b!5130280 (= res!2184808 (not lt!2116313))))

(declare-fun tp!1431241 () Bool)

(declare-fun setNonEmpty!31022 () Bool)

(declare-fun setElem!31022 () Context!7426)

(declare-fun inv!79003 (Context!7426) Bool)

(assert (=> setNonEmpty!31022 (= setRes!31022 (and tp!1431241 (inv!79003 setElem!31022) e!3199652))))

(declare-fun setRest!31022 () (InoxSet Context!7426))

(assert (=> setNonEmpty!31022 (= z!1054 ((_ map or) (store ((as const (Array Context!7426 Bool)) false) setElem!31022 true) setRest!31022))))

(declare-fun res!2184810 () Bool)

(assert (=> start!542316 (=> (not res!2184810) (not e!3199654))))

(assert (=> start!542316 (= res!2184810 (lostCauseZipper!1173 z!1054))))

(assert (=> start!542316 e!3199654))

(declare-fun condSetEmpty!31022 () Bool)

(assert (=> start!542316 (= condSetEmpty!31022 (= z!1054 ((as const (Array Context!7426 Bool)) false)))))

(assert (=> start!542316 setRes!31022))

(declare-fun tp_is_empty!37831 () Bool)

(assert (=> start!542316 tp_is_empty!37831))

(declare-fun b!5130281 () Bool)

(declare-fun res!2184807 () Bool)

(assert (=> b!5130281 (=> (not res!2184807) (not e!3199655))))

(assert (=> b!5130281 (= res!2184807 (not (forall!13744 lt!2116314 lambda!253575)))))

(assert (= (and start!542316 res!2184810) b!5130278))

(assert (= (and b!5130278 res!2184812) b!5130274))

(assert (= (and b!5130274 res!2184809) b!5130275))

(assert (= (and b!5130275 res!2184806) b!5130280))

(assert (= (and b!5130280 res!2184808) b!5130281))

(assert (= (and b!5130281 res!2184807) b!5130277))

(assert (= (and b!5130277 (not res!2184811)) b!5130279))

(assert (= (and start!542316 condSetEmpty!31022) setIsEmpty!31022))

(assert (= (and start!542316 (not condSetEmpty!31022)) setNonEmpty!31022))

(assert (= setNonEmpty!31022 b!5130276))

(declare-fun m!6195044 () Bool)

(assert (=> b!5130275 m!6195044))

(declare-fun m!6195046 () Bool)

(assert (=> b!5130277 m!6195046))

(declare-fun m!6195048 () Bool)

(assert (=> b!5130277 m!6195048))

(declare-fun m!6195050 () Bool)

(assert (=> b!5130277 m!6195050))

(declare-fun m!6195052 () Bool)

(assert (=> b!5130277 m!6195052))

(declare-fun m!6195054 () Bool)

(assert (=> start!542316 m!6195054))

(declare-fun m!6195056 () Bool)

(assert (=> b!5130278 m!6195056))

(declare-fun m!6195058 () Bool)

(assert (=> b!5130278 m!6195058))

(assert (=> b!5130279 m!6195048))

(declare-fun m!6195060 () Bool)

(assert (=> b!5130274 m!6195060))

(declare-fun m!6195062 () Bool)

(assert (=> b!5130274 m!6195062))

(declare-fun m!6195064 () Bool)

(assert (=> setNonEmpty!31022 m!6195064))

(assert (=> b!5130281 m!6195060))

(check-sat (not b!5130277) (not b!5130275) (not b!5130278) (not b!5130276) (not b!5130279) (not setNonEmpty!31022) tp_is_empty!37831 (not start!542316) (not b!5130281) (not b!5130274))
(check-sat)
