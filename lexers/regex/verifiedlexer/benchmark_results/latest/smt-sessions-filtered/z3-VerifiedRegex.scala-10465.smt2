; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540496 () Bool)

(assert start!540496)

(declare-fun setIsEmpty!30375 () Bool)

(declare-fun setRes!30376 () Bool)

(assert (=> setIsEmpty!30375 setRes!30376))

(declare-fun b!5120767 () Bool)

(declare-fun e!3193674 () Bool)

(declare-fun tp_is_empty!37715 () Bool)

(declare-fun tp!1428587 () Bool)

(assert (=> b!5120767 (= e!3193674 (and tp_is_empty!37715 tp!1428587))))

(declare-fun b!5120768 () Bool)

(declare-fun res!2180392 () Bool)

(declare-fun e!3193668 () Bool)

(assert (=> b!5120768 (=> res!2180392 e!3193668)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28708 0))(
  ( (C!28709 (val!24006 Int)) )
))
(declare-datatypes ((Regex!14221 0))(
  ( (ElementMatch!14221 (c!879999 C!28708)) (Concat!23066 (regOne!28954 Regex!14221) (regTwo!28954 Regex!14221)) (EmptyExpr!14221) (Star!14221 (reg!14550 Regex!14221)) (EmptyLang!14221) (Union!14221 (regOne!28955 Regex!14221) (regTwo!28955 Regex!14221)) )
))
(declare-datatypes ((List!59363 0))(
  ( (Nil!59239) (Cons!59239 (h!65687 Regex!14221) (t!372382 List!59363)) )
))
(declare-datatypes ((Context!7210 0))(
  ( (Context!7211 (exprs!4105 List!59363)) )
))
(declare-fun z!4463 () (InoxSet Context!7210))

(declare-fun lostCauseZipper!1103 ((InoxSet Context!7210)) Bool)

(assert (=> b!5120768 (= res!2180392 (lostCauseZipper!1103 z!4463))))

(declare-fun b!5120769 () Bool)

(declare-fun e!3193675 () Bool)

(declare-fun tp!1428583 () Bool)

(assert (=> b!5120769 (= e!3193675 tp!1428583)))

(declare-fun tp!1428585 () Bool)

(declare-fun setNonEmpty!30375 () Bool)

(declare-fun setRes!30375 () Bool)

(declare-fun setElem!30375 () Context!7210)

(declare-fun e!3193672 () Bool)

(declare-fun inv!78733 (Context!7210) Bool)

(assert (=> setNonEmpty!30375 (= setRes!30375 (and tp!1428585 (inv!78733 setElem!30375) e!3193672))))

(declare-fun setRest!30376 () (InoxSet Context!7210))

(assert (=> setNonEmpty!30375 (= z!4463 ((_ map or) (store ((as const (Array Context!7210 Bool)) false) setElem!30375 true) setRest!30376))))

(declare-fun b!5120771 () Bool)

(declare-fun e!3193670 () Bool)

(declare-fun tp!1428589 () Bool)

(assert (=> b!5120771 (= e!3193670 (and tp_is_empty!37715 tp!1428589))))

(declare-fun b!5120772 () Bool)

(declare-fun tp!1428584 () Bool)

(assert (=> b!5120772 (= e!3193672 tp!1428584)))

(declare-fun b!5120773 () Bool)

(declare-fun res!2180394 () Bool)

(assert (=> b!5120773 (=> res!2180394 e!3193668)))

(declare-fun lt!2111089 () Int)

(declare-fun lt!2111092 () Int)

(assert (=> b!5120773 (= res!2180394 (not (= lt!2111089 lt!2111092)))))

(declare-fun b!5120774 () Bool)

(declare-fun res!2180393 () Bool)

(declare-fun e!3193669 () Bool)

(assert (=> b!5120774 (=> (not res!2180393) (not e!3193669))))

(declare-fun baseZ!46 () (InoxSet Context!7210))

(declare-datatypes ((List!59364 0))(
  ( (Nil!59240) (Cons!59240 (h!65688 C!28708) (t!372383 List!59364)) )
))
(declare-fun knownP!20 () List!59364)

(declare-fun matchZipper!889 ((InoxSet Context!7210) List!59364) Bool)

(assert (=> b!5120774 (= res!2180393 (matchZipper!889 baseZ!46 knownP!20))))

(declare-fun b!5120775 () Bool)

(declare-fun testedP!265 () List!59364)

(assert (=> b!5120775 (= e!3193668 (matchZipper!889 baseZ!46 testedP!265))))

(assert (=> b!5120775 (= testedP!265 knownP!20)))

(declare-fun input!5745 () List!59364)

(declare-datatypes ((Unit!150377 0))(
  ( (Unit!150378) )
))
(declare-fun lt!2111090 () Unit!150377)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1346 (List!59364 List!59364 List!59364) Unit!150377)

(assert (=> b!5120775 (= lt!2111090 (lemmaIsPrefixSameLengthThenSameList!1346 testedP!265 knownP!20 input!5745))))

(declare-fun res!2180395 () Bool)

(declare-fun e!3193671 () Bool)

(assert (=> start!540496 (=> (not res!2180395) (not e!3193671))))

(declare-fun isPrefix!5626 (List!59364 List!59364) Bool)

(assert (=> start!540496 (= res!2180395 (isPrefix!5626 testedP!265 input!5745))))

(assert (=> start!540496 e!3193671))

(assert (=> start!540496 e!3193670))

(declare-fun condSetEmpty!30375 () Bool)

(assert (=> start!540496 (= condSetEmpty!30375 (= z!4463 ((as const (Array Context!7210 Bool)) false)))))

(assert (=> start!540496 setRes!30375))

(assert (=> start!540496 e!3193674))

(declare-fun condSetEmpty!30376 () Bool)

(assert (=> start!540496 (= condSetEmpty!30376 (= baseZ!46 ((as const (Array Context!7210 Bool)) false)))))

(assert (=> start!540496 setRes!30376))

(declare-fun e!3193673 () Bool)

(assert (=> start!540496 e!3193673))

(declare-fun b!5120770 () Bool)

(declare-fun tp!1428586 () Bool)

(assert (=> b!5120770 (= e!3193673 (and tp_is_empty!37715 tp!1428586))))

(declare-fun setNonEmpty!30376 () Bool)

(declare-fun tp!1428588 () Bool)

(declare-fun setElem!30376 () Context!7210)

(assert (=> setNonEmpty!30376 (= setRes!30376 (and tp!1428588 (inv!78733 setElem!30376) e!3193675))))

(declare-fun setRest!30375 () (InoxSet Context!7210))

(assert (=> setNonEmpty!30376 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7210 Bool)) false) setElem!30376 true) setRest!30375))))

(declare-fun b!5120776 () Bool)

(declare-fun res!2180396 () Bool)

(assert (=> b!5120776 (=> res!2180396 e!3193668)))

(declare-fun derivationZipper!118 ((InoxSet Context!7210) List!59364) (InoxSet Context!7210))

(assert (=> b!5120776 (= res!2180396 (not (= (derivationZipper!118 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5120777 () Bool)

(assert (=> b!5120777 (= e!3193671 e!3193669)))

(declare-fun res!2180390 () Bool)

(assert (=> b!5120777 (=> (not res!2180390) (not e!3193669))))

(assert (=> b!5120777 (= res!2180390 (>= lt!2111092 lt!2111089))))

(declare-fun size!39527 (List!59364) Int)

(assert (=> b!5120777 (= lt!2111089 (size!39527 testedP!265))))

(assert (=> b!5120777 (= lt!2111092 (size!39527 knownP!20))))

(declare-fun b!5120778 () Bool)

(declare-fun res!2180391 () Bool)

(assert (=> b!5120778 (=> (not res!2180391) (not e!3193671))))

(assert (=> b!5120778 (= res!2180391 (isPrefix!5626 knownP!20 input!5745))))

(declare-fun b!5120779 () Bool)

(assert (=> b!5120779 (= e!3193669 (not e!3193668))))

(declare-fun res!2180389 () Bool)

(assert (=> b!5120779 (=> res!2180389 e!3193668)))

(declare-fun getSuffix!3298 (List!59364 List!59364) List!59364)

(assert (=> b!5120779 (= res!2180389 (not (matchZipper!889 z!4463 (getSuffix!3298 knownP!20 testedP!265))))))

(assert (=> b!5120779 (isPrefix!5626 testedP!265 knownP!20)))

(declare-fun lt!2111091 () Unit!150377)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!761 (List!59364 List!59364 List!59364) Unit!150377)

(assert (=> b!5120779 (= lt!2111091 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!761 knownP!20 testedP!265 input!5745))))

(declare-fun setIsEmpty!30376 () Bool)

(assert (=> setIsEmpty!30376 setRes!30375))

(assert (= (and start!540496 res!2180395) b!5120778))

(assert (= (and b!5120778 res!2180391) b!5120777))

(assert (= (and b!5120777 res!2180390) b!5120774))

(assert (= (and b!5120774 res!2180393) b!5120779))

(assert (= (and b!5120779 (not res!2180389)) b!5120776))

(assert (= (and b!5120776 (not res!2180396)) b!5120768))

(assert (= (and b!5120768 (not res!2180392)) b!5120773))

(assert (= (and b!5120773 (not res!2180394)) b!5120775))

(get-info :version)

(assert (= (and start!540496 ((_ is Cons!59240) input!5745)) b!5120771))

(assert (= (and start!540496 condSetEmpty!30375) setIsEmpty!30376))

(assert (= (and start!540496 (not condSetEmpty!30375)) setNonEmpty!30375))

(assert (= setNonEmpty!30375 b!5120772))

(assert (= (and start!540496 ((_ is Cons!59240) testedP!265)) b!5120767))

(assert (= (and start!540496 condSetEmpty!30376) setIsEmpty!30375))

(assert (= (and start!540496 (not condSetEmpty!30376)) setNonEmpty!30376))

(assert (= setNonEmpty!30376 b!5120769))

(assert (= (and start!540496 ((_ is Cons!59240) knownP!20)) b!5120770))

(declare-fun m!6181768 () Bool)

(assert (=> setNonEmpty!30376 m!6181768))

(declare-fun m!6181770 () Bool)

(assert (=> b!5120774 m!6181770))

(declare-fun m!6181772 () Bool)

(assert (=> b!5120778 m!6181772))

(declare-fun m!6181774 () Bool)

(assert (=> start!540496 m!6181774))

(declare-fun m!6181776 () Bool)

(assert (=> b!5120779 m!6181776))

(assert (=> b!5120779 m!6181776))

(declare-fun m!6181778 () Bool)

(assert (=> b!5120779 m!6181778))

(declare-fun m!6181780 () Bool)

(assert (=> b!5120779 m!6181780))

(declare-fun m!6181782 () Bool)

(assert (=> b!5120779 m!6181782))

(declare-fun m!6181784 () Bool)

(assert (=> b!5120768 m!6181784))

(declare-fun m!6181786 () Bool)

(assert (=> setNonEmpty!30375 m!6181786))

(declare-fun m!6181788 () Bool)

(assert (=> b!5120776 m!6181788))

(declare-fun m!6181790 () Bool)

(assert (=> b!5120777 m!6181790))

(declare-fun m!6181792 () Bool)

(assert (=> b!5120777 m!6181792))

(declare-fun m!6181794 () Bool)

(assert (=> b!5120775 m!6181794))

(declare-fun m!6181796 () Bool)

(assert (=> b!5120775 m!6181796))

(check-sat (not b!5120767) tp_is_empty!37715 (not b!5120776) (not b!5120772) (not b!5120775) (not b!5120771) (not start!540496) (not b!5120774) (not setNonEmpty!30376) (not b!5120770) (not b!5120769) (not b!5120778) (not b!5120768) (not setNonEmpty!30375) (not b!5120779) (not b!5120777))
(check-sat)
