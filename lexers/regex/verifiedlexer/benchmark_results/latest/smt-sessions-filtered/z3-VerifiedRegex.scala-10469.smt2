; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540680 () Bool)

(assert start!540680)

(declare-fun setRes!30445 () Bool)

(declare-fun tp!1429066 () Bool)

(declare-datatypes ((C!28724 0))(
  ( (C!28725 (val!24014 Int)) )
))
(declare-datatypes ((Regex!14229 0))(
  ( (ElementMatch!14229 (c!880269 C!28724)) (Concat!23074 (regOne!28970 Regex!14229) (regTwo!28970 Regex!14229)) (EmptyExpr!14229) (Star!14229 (reg!14558 Regex!14229)) (EmptyLang!14229) (Union!14229 (regOne!28971 Regex!14229) (regTwo!28971 Regex!14229)) )
))
(declare-datatypes ((List!59381 0))(
  ( (Nil!59257) (Cons!59257 (h!65705 Regex!14229) (t!372400 List!59381)) )
))
(declare-datatypes ((Context!7226 0))(
  ( (Context!7227 (exprs!4113 List!59381)) )
))
(declare-fun setElem!30445 () Context!7226)

(declare-fun e!3194498 () Bool)

(declare-fun setNonEmpty!30445 () Bool)

(declare-fun inv!78753 (Context!7226) Bool)

(assert (=> setNonEmpty!30445 (= setRes!30445 (and tp!1429066 (inv!78753 setElem!30445) e!3194498))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7226))

(declare-fun setRest!30446 () (InoxSet Context!7226))

(assert (=> setNonEmpty!30445 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7226 Bool)) false) setElem!30445 true) setRest!30446))))

(declare-fun b!5122134 () Bool)

(declare-fun res!2180974 () Bool)

(declare-fun e!3194500 () Bool)

(assert (=> b!5122134 (=> res!2180974 e!3194500)))

(declare-fun z!4463 () (InoxSet Context!7226))

(declare-datatypes ((List!59382 0))(
  ( (Nil!59258) (Cons!59258 (h!65706 C!28724) (t!372401 List!59382)) )
))
(declare-fun testedP!265 () List!59382)

(declare-fun derivationZipper!126 ((InoxSet Context!7226) List!59382) (InoxSet Context!7226))

(assert (=> b!5122134 (= res!2180974 (not (= (derivationZipper!126 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5122135 () Bool)

(declare-fun res!2180963 () Bool)

(declare-fun e!3194508 () Bool)

(assert (=> b!5122135 (=> res!2180963 e!3194508)))

(declare-fun lt!2111601 () List!59382)

(declare-fun knownP!20 () List!59382)

(assert (=> b!5122135 (= res!2180963 (not (= lt!2111601 knownP!20)))))

(declare-fun b!5122136 () Bool)

(declare-fun res!2180968 () Bool)

(declare-fun e!3194505 () Bool)

(assert (=> b!5122136 (=> (not res!2180968) (not e!3194505))))

(declare-fun input!5745 () List!59382)

(declare-fun isPrefix!5634 (List!59382 List!59382) Bool)

(assert (=> b!5122136 (= res!2180968 (isPrefix!5634 knownP!20 input!5745))))

(declare-fun b!5122137 () Bool)

(declare-fun e!3194503 () Bool)

(assert (=> b!5122137 (= e!3194500 e!3194503)))

(declare-fun res!2180969 () Bool)

(assert (=> b!5122137 (=> res!2180969 e!3194503)))

(declare-fun lt!2111589 () List!59382)

(declare-fun ++!13042 (List!59382 List!59382) List!59382)

(assert (=> b!5122137 (= res!2180969 (not (= (++!13042 knownP!20 lt!2111589) input!5745)))))

(declare-fun getSuffix!3306 (List!59382 List!59382) List!59382)

(assert (=> b!5122137 (= lt!2111589 (getSuffix!3306 input!5745 knownP!20))))

(declare-fun lt!2111603 () List!59382)

(declare-fun lt!2111596 () List!59382)

(assert (=> b!5122137 (= lt!2111603 (getSuffix!3306 knownP!20 lt!2111596))))

(assert (=> b!5122137 (isPrefix!5634 lt!2111596 knownP!20)))

(declare-datatypes ((Unit!150397 0))(
  ( (Unit!150398) )
))
(declare-fun lt!2111605 () Unit!150397)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!769 (List!59382 List!59382 List!59382) Unit!150397)

(assert (=> b!5122137 (= lt!2111605 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!769 knownP!20 lt!2111596 input!5745))))

(declare-fun lt!2111599 () C!28724)

(declare-fun derivationStepZipper!852 ((InoxSet Context!7226) C!28724) (InoxSet Context!7226))

(assert (=> b!5122137 (= (derivationZipper!126 baseZ!46 lt!2111596) (derivationStepZipper!852 z!4463 lt!2111599))))

(declare-fun lt!2111590 () Unit!150397)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!73 ((InoxSet Context!7226) (InoxSet Context!7226) List!59382 C!28724) Unit!150397)

(assert (=> b!5122137 (= lt!2111590 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!73 baseZ!46 z!4463 testedP!265 lt!2111599))))

(assert (=> b!5122137 (isPrefix!5634 lt!2111596 input!5745)))

(declare-fun lt!2111608 () Unit!150397)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1008 (List!59382 List!59382) Unit!150397)

(assert (=> b!5122137 (= lt!2111608 (lemmaAddHeadSuffixToPrefixStillPrefix!1008 testedP!265 input!5745))))

(declare-fun lt!2111600 () List!59382)

(assert (=> b!5122137 (= lt!2111596 (++!13042 testedP!265 lt!2111600))))

(assert (=> b!5122137 (= lt!2111600 (Cons!59258 lt!2111599 Nil!59258))))

(declare-fun lt!2111592 () List!59382)

(declare-fun head!10945 (List!59382) C!28724)

(assert (=> b!5122137 (= lt!2111599 (head!10945 lt!2111592))))

(assert (=> b!5122137 (= lt!2111592 (getSuffix!3306 input!5745 testedP!265))))

(declare-fun b!5122138 () Bool)

(declare-fun e!3194497 () Bool)

(declare-fun e!3194502 () Bool)

(assert (=> b!5122138 (= e!3194497 e!3194502)))

(declare-fun res!2180976 () Bool)

(assert (=> b!5122138 (=> res!2180976 e!3194502)))

(declare-fun lt!2111597 () List!59382)

(assert (=> b!5122138 (= res!2180976 (not (= lt!2111597 input!5745)))))

(declare-fun lt!2111602 () List!59382)

(assert (=> b!5122138 (= lt!2111602 lt!2111597)))

(declare-fun lt!2111604 () List!59382)

(assert (=> b!5122138 (= lt!2111597 (++!13042 testedP!265 lt!2111604))))

(declare-fun lt!2111598 () List!59382)

(assert (=> b!5122138 (= lt!2111604 (++!13042 lt!2111598 lt!2111589))))

(declare-fun lt!2111607 () Unit!150397)

(declare-fun lemmaConcatAssociativity!2786 (List!59382 List!59382 List!59382) Unit!150397)

(assert (=> b!5122138 (= lt!2111607 (lemmaConcatAssociativity!2786 testedP!265 lt!2111598 lt!2111589))))

(declare-fun b!5122139 () Bool)

(declare-fun res!2180966 () Bool)

(declare-fun e!3194509 () Bool)

(assert (=> b!5122139 (=> (not res!2180966) (not e!3194509))))

(declare-fun matchZipper!897 ((InoxSet Context!7226) List!59382) Bool)

(assert (=> b!5122139 (= res!2180966 (matchZipper!897 baseZ!46 knownP!20))))

(declare-fun b!5122140 () Bool)

(declare-fun tp!1429067 () Bool)

(assert (=> b!5122140 (= e!3194498 tp!1429067)))

(declare-fun b!5122141 () Bool)

(declare-fun e!3194507 () Bool)

(declare-fun tp_is_empty!37731 () Bool)

(declare-fun tp!1429069 () Bool)

(assert (=> b!5122141 (= e!3194507 (and tp_is_empty!37731 tp!1429069))))

(declare-fun b!5122142 () Bool)

(assert (=> b!5122142 (= e!3194505 e!3194509)))

(declare-fun res!2180978 () Bool)

(assert (=> b!5122142 (=> (not res!2180978) (not e!3194509))))

(declare-fun lt!2111594 () Int)

(declare-fun lt!2111593 () Int)

(assert (=> b!5122142 (= res!2180978 (>= lt!2111594 lt!2111593))))

(declare-fun size!39535 (List!59382) Int)

(assert (=> b!5122142 (= lt!2111593 (size!39535 testedP!265))))

(assert (=> b!5122142 (= lt!2111594 (size!39535 knownP!20))))

(declare-fun b!5122143 () Bool)

(declare-fun e!3194504 () Bool)

(declare-fun tp!1429068 () Bool)

(assert (=> b!5122143 (= e!3194504 (and tp_is_empty!37731 tp!1429068))))

(declare-fun b!5122144 () Bool)

(declare-fun e!3194499 () Bool)

(declare-fun tp!1429065 () Bool)

(assert (=> b!5122144 (= e!3194499 tp!1429065)))

(declare-fun b!5122145 () Bool)

(assert (=> b!5122145 (= e!3194509 (not e!3194500))))

(declare-fun res!2180977 () Bool)

(assert (=> b!5122145 (=> res!2180977 e!3194500)))

(assert (=> b!5122145 (= res!2180977 (not (matchZipper!897 z!4463 lt!2111598)))))

(assert (=> b!5122145 (= lt!2111598 (getSuffix!3306 knownP!20 testedP!265))))

(assert (=> b!5122145 (isPrefix!5634 testedP!265 knownP!20)))

(declare-fun lt!2111606 () Unit!150397)

(assert (=> b!5122145 (= lt!2111606 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!769 knownP!20 testedP!265 input!5745))))

(declare-fun b!5122146 () Bool)

(assert (=> b!5122146 (= e!3194502 e!3194508)))

(declare-fun res!2180975 () Bool)

(assert (=> b!5122146 (=> res!2180975 e!3194508)))

(assert (=> b!5122146 (= res!2180975 (not (= (head!10945 lt!2111598) lt!2111599)))))

(assert (=> b!5122146 (= lt!2111604 lt!2111592)))

(declare-fun lt!2111595 () Unit!150397)

(declare-fun lemmaSamePrefixThenSameSuffix!2652 (List!59382 List!59382 List!59382 List!59382 List!59382) Unit!150397)

(assert (=> b!5122146 (= lt!2111595 (lemmaSamePrefixThenSameSuffix!2652 testedP!265 lt!2111604 testedP!265 lt!2111592 input!5745))))

(declare-fun b!5122147 () Bool)

(declare-fun e!3194501 () Bool)

(declare-fun lt!2111591 () List!59382)

(assert (=> b!5122147 (= e!3194501 (= lt!2111591 knownP!20))))

(declare-fun lt!2111587 () List!59382)

(assert (=> b!5122147 (= lt!2111587 lt!2111591)))

(assert (=> b!5122147 (= lt!2111591 (++!13042 testedP!265 (++!13042 lt!2111600 lt!2111603)))))

(declare-fun lt!2111588 () Unit!150397)

(assert (=> b!5122147 (= lt!2111588 (lemmaConcatAssociativity!2786 testedP!265 lt!2111600 lt!2111603))))

(declare-fun b!5122148 () Bool)

(declare-fun res!2180971 () Bool)

(assert (=> b!5122148 (=> res!2180971 e!3194500)))

(assert (=> b!5122148 (= res!2180971 (= lt!2111593 lt!2111594))))

(declare-fun b!5122149 () Bool)

(declare-fun res!2180965 () Bool)

(assert (=> b!5122149 (=> res!2180965 e!3194500)))

(assert (=> b!5122149 (= res!2180965 (>= lt!2111593 (size!39535 input!5745)))))

(declare-fun b!5122150 () Bool)

(declare-fun res!2180964 () Bool)

(assert (=> b!5122150 (=> res!2180964 e!3194497)))

(assert (=> b!5122150 (= res!2180964 (not (= (++!13042 testedP!265 lt!2111592) input!5745)))))

(declare-fun b!5122151 () Bool)

(declare-fun res!2180967 () Bool)

(assert (=> b!5122151 (=> res!2180967 e!3194508)))

(declare-fun $colon$colon!1143 (List!59382 C!28724) List!59382)

(declare-fun tail!10080 (List!59382) List!59382)

(assert (=> b!5122151 (= res!2180967 (not (= lt!2111598 ($colon$colon!1143 (tail!10080 lt!2111598) lt!2111599))))))

(declare-fun b!5122152 () Bool)

(declare-fun res!2180973 () Bool)

(assert (=> b!5122152 (=> res!2180973 e!3194500)))

(declare-fun lostCauseZipper!1111 ((InoxSet Context!7226)) Bool)

(assert (=> b!5122152 (= res!2180973 (lostCauseZipper!1111 z!4463))))

(declare-fun b!5122153 () Bool)

(assert (=> b!5122153 (= e!3194503 e!3194497)))

(declare-fun res!2180972 () Bool)

(assert (=> b!5122153 (=> res!2180972 e!3194497)))

(assert (=> b!5122153 (= res!2180972 (not (= lt!2111602 input!5745)))))

(assert (=> b!5122153 (= lt!2111602 (++!13042 lt!2111601 lt!2111589))))

(assert (=> b!5122153 (= lt!2111601 (++!13042 testedP!265 lt!2111598))))

(declare-fun b!5122154 () Bool)

(assert (=> b!5122154 (= e!3194508 e!3194501)))

(declare-fun res!2180962 () Bool)

(assert (=> b!5122154 (=> res!2180962 e!3194501)))

(assert (=> b!5122154 (= res!2180962 (not (= lt!2111587 knownP!20)))))

(assert (=> b!5122154 (= lt!2111587 (++!13042 lt!2111596 lt!2111603))))

(declare-fun res!2180970 () Bool)

(assert (=> start!540680 (=> (not res!2180970) (not e!3194505))))

(assert (=> start!540680 (= res!2180970 (isPrefix!5634 testedP!265 input!5745))))

(assert (=> start!540680 e!3194505))

(declare-fun e!3194506 () Bool)

(assert (=> start!540680 e!3194506))

(declare-fun condSetEmpty!30446 () Bool)

(assert (=> start!540680 (= condSetEmpty!30446 (= z!4463 ((as const (Array Context!7226 Bool)) false)))))

(declare-fun setRes!30446 () Bool)

(assert (=> start!540680 setRes!30446))

(assert (=> start!540680 e!3194507))

(declare-fun condSetEmpty!30445 () Bool)

(assert (=> start!540680 (= condSetEmpty!30445 (= baseZ!46 ((as const (Array Context!7226 Bool)) false)))))

(assert (=> start!540680 setRes!30445))

(assert (=> start!540680 e!3194504))

(declare-fun setNonEmpty!30446 () Bool)

(declare-fun setElem!30446 () Context!7226)

(declare-fun tp!1429070 () Bool)

(assert (=> setNonEmpty!30446 (= setRes!30446 (and tp!1429070 (inv!78753 setElem!30446) e!3194499))))

(declare-fun setRest!30445 () (InoxSet Context!7226))

(assert (=> setNonEmpty!30446 (= z!4463 ((_ map or) (store ((as const (Array Context!7226 Bool)) false) setElem!30446 true) setRest!30445))))

(declare-fun setIsEmpty!30445 () Bool)

(assert (=> setIsEmpty!30445 setRes!30445))

(declare-fun b!5122155 () Bool)

(declare-fun tp!1429071 () Bool)

(assert (=> b!5122155 (= e!3194506 (and tp_is_empty!37731 tp!1429071))))

(declare-fun setIsEmpty!30446 () Bool)

(assert (=> setIsEmpty!30446 setRes!30446))

(assert (= (and start!540680 res!2180970) b!5122136))

(assert (= (and b!5122136 res!2180968) b!5122142))

(assert (= (and b!5122142 res!2180978) b!5122139))

(assert (= (and b!5122139 res!2180966) b!5122145))

(assert (= (and b!5122145 (not res!2180977)) b!5122134))

(assert (= (and b!5122134 (not res!2180974)) b!5122152))

(assert (= (and b!5122152 (not res!2180973)) b!5122148))

(assert (= (and b!5122148 (not res!2180971)) b!5122149))

(assert (= (and b!5122149 (not res!2180965)) b!5122137))

(assert (= (and b!5122137 (not res!2180969)) b!5122153))

(assert (= (and b!5122153 (not res!2180972)) b!5122150))

(assert (= (and b!5122150 (not res!2180964)) b!5122138))

(assert (= (and b!5122138 (not res!2180976)) b!5122146))

(assert (= (and b!5122146 (not res!2180975)) b!5122151))

(assert (= (and b!5122151 (not res!2180967)) b!5122135))

(assert (= (and b!5122135 (not res!2180963)) b!5122154))

(assert (= (and b!5122154 (not res!2180962)) b!5122147))

(get-info :version)

(assert (= (and start!540680 ((_ is Cons!59258) input!5745)) b!5122155))

(assert (= (and start!540680 condSetEmpty!30446) setIsEmpty!30446))

(assert (= (and start!540680 (not condSetEmpty!30446)) setNonEmpty!30446))

(assert (= setNonEmpty!30446 b!5122144))

(assert (= (and start!540680 ((_ is Cons!59258) testedP!265)) b!5122141))

(assert (= (and start!540680 condSetEmpty!30445) setIsEmpty!30445))

(assert (= (and start!540680 (not condSetEmpty!30445)) setNonEmpty!30445))

(assert (= setNonEmpty!30445 b!5122140))

(assert (= (and start!540680 ((_ is Cons!59258) knownP!20)) b!5122143))

(declare-fun m!6183476 () Bool)

(assert (=> b!5122154 m!6183476))

(declare-fun m!6183478 () Bool)

(assert (=> b!5122142 m!6183478))

(declare-fun m!6183480 () Bool)

(assert (=> b!5122142 m!6183480))

(declare-fun m!6183482 () Bool)

(assert (=> b!5122153 m!6183482))

(declare-fun m!6183484 () Bool)

(assert (=> b!5122153 m!6183484))

(declare-fun m!6183486 () Bool)

(assert (=> setNonEmpty!30446 m!6183486))

(declare-fun m!6183488 () Bool)

(assert (=> b!5122149 m!6183488))

(declare-fun m!6183490 () Bool)

(assert (=> b!5122138 m!6183490))

(declare-fun m!6183492 () Bool)

(assert (=> b!5122138 m!6183492))

(declare-fun m!6183494 () Bool)

(assert (=> b!5122138 m!6183494))

(declare-fun m!6183496 () Bool)

(assert (=> setNonEmpty!30445 m!6183496))

(declare-fun m!6183498 () Bool)

(assert (=> b!5122151 m!6183498))

(assert (=> b!5122151 m!6183498))

(declare-fun m!6183500 () Bool)

(assert (=> b!5122151 m!6183500))

(declare-fun m!6183502 () Bool)

(assert (=> b!5122152 m!6183502))

(declare-fun m!6183504 () Bool)

(assert (=> b!5122136 m!6183504))

(declare-fun m!6183506 () Bool)

(assert (=> start!540680 m!6183506))

(declare-fun m!6183508 () Bool)

(assert (=> b!5122147 m!6183508))

(assert (=> b!5122147 m!6183508))

(declare-fun m!6183510 () Bool)

(assert (=> b!5122147 m!6183510))

(declare-fun m!6183512 () Bool)

(assert (=> b!5122147 m!6183512))

(declare-fun m!6183514 () Bool)

(assert (=> b!5122139 m!6183514))

(declare-fun m!6183516 () Bool)

(assert (=> b!5122146 m!6183516))

(declare-fun m!6183518 () Bool)

(assert (=> b!5122146 m!6183518))

(declare-fun m!6183520 () Bool)

(assert (=> b!5122150 m!6183520))

(declare-fun m!6183522 () Bool)

(assert (=> b!5122145 m!6183522))

(declare-fun m!6183524 () Bool)

(assert (=> b!5122145 m!6183524))

(declare-fun m!6183526 () Bool)

(assert (=> b!5122145 m!6183526))

(declare-fun m!6183528 () Bool)

(assert (=> b!5122145 m!6183528))

(declare-fun m!6183530 () Bool)

(assert (=> b!5122134 m!6183530))

(declare-fun m!6183532 () Bool)

(assert (=> b!5122137 m!6183532))

(declare-fun m!6183534 () Bool)

(assert (=> b!5122137 m!6183534))

(declare-fun m!6183536 () Bool)

(assert (=> b!5122137 m!6183536))

(declare-fun m!6183538 () Bool)

(assert (=> b!5122137 m!6183538))

(declare-fun m!6183540 () Bool)

(assert (=> b!5122137 m!6183540))

(declare-fun m!6183542 () Bool)

(assert (=> b!5122137 m!6183542))

(declare-fun m!6183544 () Bool)

(assert (=> b!5122137 m!6183544))

(declare-fun m!6183546 () Bool)

(assert (=> b!5122137 m!6183546))

(declare-fun m!6183548 () Bool)

(assert (=> b!5122137 m!6183548))

(declare-fun m!6183550 () Bool)

(assert (=> b!5122137 m!6183550))

(declare-fun m!6183552 () Bool)

(assert (=> b!5122137 m!6183552))

(declare-fun m!6183554 () Bool)

(assert (=> b!5122137 m!6183554))

(declare-fun m!6183556 () Bool)

(assert (=> b!5122137 m!6183556))

(check-sat (not b!5122139) (not b!5122151) (not b!5122142) (not setNonEmpty!30445) (not b!5122150) (not b!5122145) (not b!5122147) (not b!5122134) (not b!5122153) (not b!5122155) (not b!5122136) (not b!5122140) (not b!5122144) tp_is_empty!37731 (not b!5122143) (not setNonEmpty!30446) (not b!5122152) (not b!5122138) (not b!5122149) (not start!540680) (not b!5122146) (not b!5122154) (not b!5122137) (not b!5122141))
(check-sat)
