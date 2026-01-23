; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540488 () Bool)

(assert start!540488)

(declare-fun b!5120612 () Bool)

(declare-fun e!3193576 () Bool)

(declare-fun tp!1428502 () Bool)

(assert (=> b!5120612 (= e!3193576 tp!1428502)))

(declare-fun b!5120613 () Bool)

(declare-fun res!2180294 () Bool)

(declare-fun e!3193578 () Bool)

(assert (=> b!5120613 (=> res!2180294 e!3193578)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28700 0))(
  ( (C!28701 (val!24002 Int)) )
))
(declare-datatypes ((Regex!14217 0))(
  ( (ElementMatch!14217 (c!879995 C!28700)) (Concat!23062 (regOne!28946 Regex!14217) (regTwo!28946 Regex!14217)) (EmptyExpr!14217) (Star!14217 (reg!14546 Regex!14217)) (EmptyLang!14217) (Union!14217 (regOne!28947 Regex!14217) (regTwo!28947 Regex!14217)) )
))
(declare-datatypes ((List!59355 0))(
  ( (Nil!59231) (Cons!59231 (h!65679 Regex!14217) (t!372374 List!59355)) )
))
(declare-datatypes ((Context!7202 0))(
  ( (Context!7203 (exprs!4101 List!59355)) )
))
(declare-fun z!4463 () (InoxSet Context!7202))

(declare-fun lostCauseZipper!1099 ((InoxSet Context!7202)) Bool)

(assert (=> b!5120613 (= res!2180294 (not (lostCauseZipper!1099 z!4463)))))

(declare-fun b!5120614 () Bool)

(declare-fun e!3193577 () Bool)

(declare-fun tp!1428505 () Bool)

(assert (=> b!5120614 (= e!3193577 tp!1428505)))

(declare-fun setElem!30351 () Context!7202)

(declare-fun setRes!30351 () Bool)

(declare-fun tp!1428499 () Bool)

(declare-fun setNonEmpty!30351 () Bool)

(declare-fun inv!78723 (Context!7202) Bool)

(assert (=> setNonEmpty!30351 (= setRes!30351 (and tp!1428499 (inv!78723 setElem!30351) e!3193577))))

(declare-fun setRest!30352 () (InoxSet Context!7202))

(assert (=> setNonEmpty!30351 (= z!4463 ((_ map or) (store ((as const (Array Context!7202 Bool)) false) setElem!30351 true) setRest!30352))))

(declare-fun b!5120615 () Bool)

(declare-fun e!3193574 () Bool)

(declare-fun tp_is_empty!37707 () Bool)

(declare-fun tp!1428500 () Bool)

(assert (=> b!5120615 (= e!3193574 (and tp_is_empty!37707 tp!1428500))))

(declare-fun b!5120617 () Bool)

(declare-fun res!2180295 () Bool)

(declare-fun e!3193575 () Bool)

(assert (=> b!5120617 (=> (not res!2180295) (not e!3193575))))

(declare-fun baseZ!46 () (InoxSet Context!7202))

(declare-datatypes ((List!59356 0))(
  ( (Nil!59232) (Cons!59232 (h!65680 C!28700) (t!372375 List!59356)) )
))
(declare-fun knownP!20 () List!59356)

(declare-fun matchZipper!885 ((InoxSet Context!7202) List!59356) Bool)

(assert (=> b!5120617 (= res!2180295 (matchZipper!885 baseZ!46 knownP!20))))

(declare-fun b!5120618 () Bool)

(declare-fun res!2180297 () Bool)

(declare-fun e!3193572 () Bool)

(assert (=> b!5120618 (=> (not res!2180297) (not e!3193572))))

(declare-fun input!5745 () List!59356)

(declare-fun isPrefix!5622 (List!59356 List!59356) Bool)

(assert (=> b!5120618 (= res!2180297 (isPrefix!5622 knownP!20 input!5745))))

(declare-fun b!5120619 () Bool)

(declare-fun e!3193573 () Bool)

(assert (=> b!5120619 (= e!3193573 e!3193578)))

(declare-fun res!2180296 () Bool)

(assert (=> b!5120619 (=> res!2180296 e!3193578)))

(declare-fun lt!2111042 () (InoxSet Context!7202))

(assert (=> b!5120619 (= res!2180296 (not (= lt!2111042 z!4463)))))

(declare-fun testedP!265 () List!59356)

(declare-fun derivationZipper!114 ((InoxSet Context!7202) List!59356) (InoxSet Context!7202))

(assert (=> b!5120619 (= lt!2111042 (derivationZipper!114 baseZ!46 testedP!265))))

(declare-fun b!5120620 () Bool)

(declare-fun e!3193579 () Bool)

(declare-fun tp!1428504 () Bool)

(assert (=> b!5120620 (= e!3193579 (and tp_is_empty!37707 tp!1428504))))

(declare-fun b!5120621 () Bool)

(declare-fun e!3193571 () Bool)

(declare-fun tp!1428501 () Bool)

(assert (=> b!5120621 (= e!3193571 (and tp_is_empty!37707 tp!1428501))))

(declare-fun setRes!30352 () Bool)

(declare-fun tp!1428503 () Bool)

(declare-fun setNonEmpty!30352 () Bool)

(declare-fun setElem!30352 () Context!7202)

(assert (=> setNonEmpty!30352 (= setRes!30352 (and tp!1428503 (inv!78723 setElem!30352) e!3193576))))

(declare-fun setRest!30351 () (InoxSet Context!7202))

(assert (=> setNonEmpty!30352 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7202 Bool)) false) setElem!30352 true) setRest!30351))))

(declare-fun setIsEmpty!30351 () Bool)

(assert (=> setIsEmpty!30351 setRes!30351))

(declare-fun setIsEmpty!30352 () Bool)

(assert (=> setIsEmpty!30352 setRes!30352))

(declare-fun b!5120616 () Bool)

(declare-fun lt!2111044 () Int)

(declare-fun lt!2111040 () Int)

(assert (=> b!5120616 (= e!3193578 (<= lt!2111044 lt!2111040))))

(assert (=> b!5120616 (= (matchZipper!885 baseZ!46 testedP!265) (matchZipper!885 lt!2111042 Nil!59232))))

(declare-datatypes ((Unit!150369 0))(
  ( (Unit!150370) )
))
(declare-fun lt!2111043 () Unit!150369)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!10 ((InoxSet Context!7202) List!59356) Unit!150369)

(assert (=> b!5120616 (= lt!2111043 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!10 baseZ!46 testedP!265))))

(declare-fun res!2180299 () Bool)

(assert (=> start!540488 (=> (not res!2180299) (not e!3193572))))

(assert (=> start!540488 (= res!2180299 (isPrefix!5622 testedP!265 input!5745))))

(assert (=> start!540488 e!3193572))

(assert (=> start!540488 e!3193579))

(declare-fun condSetEmpty!30352 () Bool)

(assert (=> start!540488 (= condSetEmpty!30352 (= z!4463 ((as const (Array Context!7202 Bool)) false)))))

(assert (=> start!540488 setRes!30351))

(assert (=> start!540488 e!3193574))

(declare-fun condSetEmpty!30351 () Bool)

(assert (=> start!540488 (= condSetEmpty!30351 (= baseZ!46 ((as const (Array Context!7202 Bool)) false)))))

(assert (=> start!540488 setRes!30352))

(assert (=> start!540488 e!3193571))

(declare-fun b!5120622 () Bool)

(assert (=> b!5120622 (= e!3193575 (not e!3193573))))

(declare-fun res!2180298 () Bool)

(assert (=> b!5120622 (=> res!2180298 e!3193573)))

(declare-fun getSuffix!3294 (List!59356 List!59356) List!59356)

(assert (=> b!5120622 (= res!2180298 (not (matchZipper!885 z!4463 (getSuffix!3294 knownP!20 testedP!265))))))

(assert (=> b!5120622 (isPrefix!5622 testedP!265 knownP!20)))

(declare-fun lt!2111041 () Unit!150369)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!757 (List!59356 List!59356 List!59356) Unit!150369)

(assert (=> b!5120622 (= lt!2111041 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!757 knownP!20 testedP!265 input!5745))))

(declare-fun b!5120623 () Bool)

(assert (=> b!5120623 (= e!3193572 e!3193575)))

(declare-fun res!2180300 () Bool)

(assert (=> b!5120623 (=> (not res!2180300) (not e!3193575))))

(assert (=> b!5120623 (= res!2180300 (>= lt!2111040 lt!2111044))))

(declare-fun size!39523 (List!59356) Int)

(assert (=> b!5120623 (= lt!2111044 (size!39523 testedP!265))))

(assert (=> b!5120623 (= lt!2111040 (size!39523 knownP!20))))

(assert (= (and start!540488 res!2180299) b!5120618))

(assert (= (and b!5120618 res!2180297) b!5120623))

(assert (= (and b!5120623 res!2180300) b!5120617))

(assert (= (and b!5120617 res!2180295) b!5120622))

(assert (= (and b!5120622 (not res!2180298)) b!5120619))

(assert (= (and b!5120619 (not res!2180296)) b!5120613))

(assert (= (and b!5120613 (not res!2180294)) b!5120616))

(get-info :version)

(assert (= (and start!540488 ((_ is Cons!59232) input!5745)) b!5120620))

(assert (= (and start!540488 condSetEmpty!30352) setIsEmpty!30351))

(assert (= (and start!540488 (not condSetEmpty!30352)) setNonEmpty!30351))

(assert (= setNonEmpty!30351 b!5120614))

(assert (= (and start!540488 ((_ is Cons!59232) testedP!265)) b!5120615))

(assert (= (and start!540488 condSetEmpty!30351) setIsEmpty!30352))

(assert (= (and start!540488 (not condSetEmpty!30351)) setNonEmpty!30352))

(assert (= setNonEmpty!30352 b!5120612))

(assert (= (and start!540488 ((_ is Cons!59232) knownP!20)) b!5120621))

(declare-fun m!6181650 () Bool)

(assert (=> b!5120623 m!6181650))

(declare-fun m!6181652 () Bool)

(assert (=> b!5120623 m!6181652))

(declare-fun m!6181654 () Bool)

(assert (=> b!5120616 m!6181654))

(declare-fun m!6181656 () Bool)

(assert (=> b!5120616 m!6181656))

(declare-fun m!6181658 () Bool)

(assert (=> b!5120616 m!6181658))

(declare-fun m!6181660 () Bool)

(assert (=> b!5120613 m!6181660))

(declare-fun m!6181662 () Bool)

(assert (=> b!5120619 m!6181662))

(declare-fun m!6181664 () Bool)

(assert (=> b!5120617 m!6181664))

(declare-fun m!6181666 () Bool)

(assert (=> b!5120622 m!6181666))

(assert (=> b!5120622 m!6181666))

(declare-fun m!6181668 () Bool)

(assert (=> b!5120622 m!6181668))

(declare-fun m!6181670 () Bool)

(assert (=> b!5120622 m!6181670))

(declare-fun m!6181672 () Bool)

(assert (=> b!5120622 m!6181672))

(declare-fun m!6181674 () Bool)

(assert (=> setNonEmpty!30351 m!6181674))

(declare-fun m!6181676 () Bool)

(assert (=> setNonEmpty!30352 m!6181676))

(declare-fun m!6181678 () Bool)

(assert (=> start!540488 m!6181678))

(declare-fun m!6181680 () Bool)

(assert (=> b!5120618 m!6181680))

(check-sat (not b!5120618) (not b!5120616) tp_is_empty!37707 (not b!5120617) (not b!5120620) (not setNonEmpty!30352) (not b!5120613) (not b!5120622) (not start!540488) (not b!5120619) (not b!5120614) (not b!5120621) (not setNonEmpty!30351) (not b!5120623) (not b!5120615) (not b!5120612))
(check-sat)
