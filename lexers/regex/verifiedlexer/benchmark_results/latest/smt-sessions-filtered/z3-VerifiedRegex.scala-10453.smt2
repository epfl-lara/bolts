; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540048 () Bool)

(assert start!540048)

(declare-fun res!2178939 () Bool)

(declare-fun e!3191852 () Bool)

(assert (=> start!540048 (=> (not res!2178939) (not e!3191852))))

(declare-datatypes ((C!28660 0))(
  ( (C!28661 (val!23982 Int)) )
))
(declare-datatypes ((List!59306 0))(
  ( (Nil!59182) (Cons!59182 (h!65630 C!28660) (t!372317 List!59306)) )
))
(declare-fun testedP!265 () List!59306)

(declare-fun input!5745 () List!59306)

(declare-fun isPrefix!5602 (List!59306 List!59306) Bool)

(assert (=> start!540048 (= res!2178939 (isPrefix!5602 testedP!265 input!5745))))

(assert (=> start!540048 e!3191852))

(declare-fun e!3191850 () Bool)

(assert (=> start!540048 e!3191850))

(declare-fun condSetEmpty!30193 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14197 0))(
  ( (ElementMatch!14197 (c!879375 C!28660)) (Concat!23042 (regOne!28906 Regex!14197) (regTwo!28906 Regex!14197)) (EmptyExpr!14197) (Star!14197 (reg!14526 Regex!14197)) (EmptyLang!14197) (Union!14197 (regOne!28907 Regex!14197) (regTwo!28907 Regex!14197)) )
))
(declare-datatypes ((List!59307 0))(
  ( (Nil!59183) (Cons!59183 (h!65631 Regex!14197) (t!372318 List!59307)) )
))
(declare-datatypes ((Context!7162 0))(
  ( (Context!7163 (exprs!4081 List!59307)) )
))
(declare-fun z!4463 () (InoxSet Context!7162))

(assert (=> start!540048 (= condSetEmpty!30193 (= z!4463 ((as const (Array Context!7162 Bool)) false)))))

(declare-fun setRes!30193 () Bool)

(assert (=> start!540048 setRes!30193))

(declare-fun e!3191849 () Bool)

(assert (=> start!540048 e!3191849))

(declare-fun condSetEmpty!30194 () Bool)

(declare-fun baseZ!46 () (InoxSet Context!7162))

(assert (=> start!540048 (= condSetEmpty!30194 (= baseZ!46 ((as const (Array Context!7162 Bool)) false)))))

(declare-fun setRes!30194 () Bool)

(assert (=> start!540048 setRes!30194))

(declare-fun e!3191848 () Bool)

(assert (=> start!540048 e!3191848))

(declare-fun b!5117749 () Bool)

(declare-fun e!3191855 () Bool)

(declare-fun e!3191854 () Bool)

(assert (=> b!5117749 (= e!3191855 (not e!3191854))))

(declare-fun res!2178945 () Bool)

(assert (=> b!5117749 (=> res!2178945 e!3191854)))

(declare-fun lt!2109387 () List!59306)

(declare-fun matchZipper!865 ((InoxSet Context!7162) List!59306) Bool)

(assert (=> b!5117749 (= res!2178945 (not (matchZipper!865 z!4463 lt!2109387)))))

(declare-fun knownP!20 () List!59306)

(declare-fun getSuffix!3276 (List!59306 List!59306) List!59306)

(assert (=> b!5117749 (= lt!2109387 (getSuffix!3276 knownP!20 testedP!265))))

(assert (=> b!5117749 (isPrefix!5602 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150315 0))(
  ( (Unit!150316) )
))
(declare-fun lt!2109385 () Unit!150315)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!739 (List!59306 List!59306 List!59306) Unit!150315)

(assert (=> b!5117749 (= lt!2109385 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!739 knownP!20 testedP!265 input!5745))))

(declare-fun b!5117750 () Bool)

(declare-fun e!3191851 () Bool)

(declare-fun tp!1427814 () Bool)

(assert (=> b!5117750 (= e!3191851 tp!1427814)))

(declare-fun b!5117751 () Bool)

(declare-fun e!3191853 () Bool)

(declare-fun e!3191847 () Bool)

(assert (=> b!5117751 (= e!3191853 e!3191847)))

(declare-fun res!2178943 () Bool)

(assert (=> b!5117751 (=> res!2178943 e!3191847)))

(declare-fun lt!2109388 () List!59306)

(assert (=> b!5117751 (= res!2178943 (not (= lt!2109388 input!5745)))))

(declare-fun lt!2109378 () List!59306)

(declare-fun ++!13022 (List!59306 List!59306) List!59306)

(assert (=> b!5117751 (= lt!2109388 (++!13022 (++!13022 testedP!265 lt!2109387) lt!2109378))))

(declare-fun b!5117752 () Bool)

(assert (=> b!5117752 (= e!3191852 e!3191855)))

(declare-fun res!2178938 () Bool)

(assert (=> b!5117752 (=> (not res!2178938) (not e!3191855))))

(declare-fun lt!2109386 () Int)

(declare-fun lt!2109377 () Int)

(assert (=> b!5117752 (= res!2178938 (>= lt!2109386 lt!2109377))))

(declare-fun size!39503 (List!59306) Int)

(assert (=> b!5117752 (= lt!2109377 (size!39503 testedP!265))))

(assert (=> b!5117752 (= lt!2109386 (size!39503 knownP!20))))

(declare-fun b!5117753 () Bool)

(declare-fun res!2178940 () Bool)

(assert (=> b!5117753 (=> (not res!2178940) (not e!3191855))))

(assert (=> b!5117753 (= res!2178940 (matchZipper!865 baseZ!46 knownP!20))))

(declare-fun b!5117754 () Bool)

(declare-fun tp_is_empty!37667 () Bool)

(declare-fun tp!1427817 () Bool)

(assert (=> b!5117754 (= e!3191850 (and tp_is_empty!37667 tp!1427817))))

(declare-fun b!5117755 () Bool)

(declare-fun tp!1427816 () Bool)

(assert (=> b!5117755 (= e!3191848 (and tp_is_empty!37667 tp!1427816))))

(declare-fun b!5117756 () Bool)

(declare-fun lt!2109384 () List!59306)

(assert (=> b!5117756 (= e!3191847 (= lt!2109384 input!5745))))

(assert (=> b!5117756 (= lt!2109388 lt!2109384)))

(assert (=> b!5117756 (= lt!2109384 (++!13022 testedP!265 (++!13022 lt!2109387 lt!2109378)))))

(declare-fun lt!2109383 () Unit!150315)

(declare-fun lemmaConcatAssociativity!2770 (List!59306 List!59306 List!59306) Unit!150315)

(assert (=> b!5117756 (= lt!2109383 (lemmaConcatAssociativity!2770 testedP!265 lt!2109387 lt!2109378))))

(declare-fun b!5117757 () Bool)

(declare-fun e!3191846 () Bool)

(declare-fun tp!1427815 () Bool)

(assert (=> b!5117757 (= e!3191846 tp!1427815)))

(declare-fun b!5117758 () Bool)

(declare-fun res!2178948 () Bool)

(assert (=> b!5117758 (=> res!2178948 e!3191854)))

(assert (=> b!5117758 (= res!2178948 (= lt!2109377 lt!2109386))))

(declare-fun b!5117759 () Bool)

(declare-fun tp!1427811 () Bool)

(assert (=> b!5117759 (= e!3191849 (and tp_is_empty!37667 tp!1427811))))

(declare-fun setIsEmpty!30193 () Bool)

(assert (=> setIsEmpty!30193 setRes!30193))

(declare-fun setElem!30193 () Context!7162)

(declare-fun tp!1427812 () Bool)

(declare-fun setNonEmpty!30193 () Bool)

(declare-fun inv!78673 (Context!7162) Bool)

(assert (=> setNonEmpty!30193 (= setRes!30193 (and tp!1427812 (inv!78673 setElem!30193) e!3191846))))

(declare-fun setRest!30194 () (InoxSet Context!7162))

(assert (=> setNonEmpty!30193 (= z!4463 ((_ map or) (store ((as const (Array Context!7162 Bool)) false) setElem!30193 true) setRest!30194))))

(declare-fun setIsEmpty!30194 () Bool)

(assert (=> setIsEmpty!30194 setRes!30194))

(declare-fun b!5117760 () Bool)

(declare-fun res!2178946 () Bool)

(assert (=> b!5117760 (=> res!2178946 e!3191854)))

(assert (=> b!5117760 (= res!2178946 (>= lt!2109377 (size!39503 input!5745)))))

(declare-fun b!5117761 () Bool)

(declare-fun res!2178947 () Bool)

(assert (=> b!5117761 (=> res!2178947 e!3191854)))

(declare-fun lostCauseZipper!1083 ((InoxSet Context!7162)) Bool)

(assert (=> b!5117761 (= res!2178947 (lostCauseZipper!1083 z!4463))))

(declare-fun b!5117762 () Bool)

(assert (=> b!5117762 (= e!3191854 e!3191853)))

(declare-fun res!2178937 () Bool)

(assert (=> b!5117762 (=> res!2178937 e!3191853)))

(assert (=> b!5117762 (= res!2178937 (not (= (++!13022 knownP!20 lt!2109378) input!5745)))))

(assert (=> b!5117762 (= lt!2109378 (getSuffix!3276 input!5745 knownP!20))))

(declare-fun lt!2109381 () List!59306)

(declare-fun lt!2109380 () List!59306)

(assert (=> b!5117762 (= lt!2109381 (getSuffix!3276 knownP!20 lt!2109380))))

(assert (=> b!5117762 (isPrefix!5602 lt!2109380 knownP!20)))

(declare-fun lt!2109382 () Unit!150315)

(assert (=> b!5117762 (= lt!2109382 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!739 knownP!20 lt!2109380 input!5745))))

(declare-fun lt!2109376 () C!28660)

(declare-fun derivationZipper!96 ((InoxSet Context!7162) List!59306) (InoxSet Context!7162))

(declare-fun derivationStepZipper!832 ((InoxSet Context!7162) C!28660) (InoxSet Context!7162))

(assert (=> b!5117762 (= (derivationZipper!96 baseZ!46 lt!2109380) (derivationStepZipper!832 z!4463 lt!2109376))))

(declare-fun lt!2109379 () Unit!150315)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!53 ((InoxSet Context!7162) (InoxSet Context!7162) List!59306 C!28660) Unit!150315)

(assert (=> b!5117762 (= lt!2109379 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!53 baseZ!46 z!4463 testedP!265 lt!2109376))))

(assert (=> b!5117762 (isPrefix!5602 lt!2109380 input!5745)))

(declare-fun lt!2109374 () Unit!150315)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!988 (List!59306 List!59306) Unit!150315)

(assert (=> b!5117762 (= lt!2109374 (lemmaAddHeadSuffixToPrefixStillPrefix!988 testedP!265 input!5745))))

(assert (=> b!5117762 (= lt!2109380 (++!13022 testedP!265 (Cons!59182 lt!2109376 Nil!59182)))))

(declare-fun lt!2109375 () List!59306)

(declare-fun head!10925 (List!59306) C!28660)

(assert (=> b!5117762 (= lt!2109376 (head!10925 lt!2109375))))

(assert (=> b!5117762 (= lt!2109375 (getSuffix!3276 input!5745 testedP!265))))

(declare-fun b!5117763 () Bool)

(declare-fun res!2178941 () Bool)

(assert (=> b!5117763 (=> res!2178941 e!3191847)))

(assert (=> b!5117763 (= res!2178941 (not (= (++!13022 testedP!265 lt!2109375) input!5745)))))

(declare-fun b!5117764 () Bool)

(declare-fun res!2178942 () Bool)

(assert (=> b!5117764 (=> res!2178942 e!3191854)))

(assert (=> b!5117764 (= res!2178942 (not (= (derivationZipper!96 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5117765 () Bool)

(declare-fun res!2178944 () Bool)

(assert (=> b!5117765 (=> (not res!2178944) (not e!3191852))))

(assert (=> b!5117765 (= res!2178944 (isPrefix!5602 knownP!20 input!5745))))

(declare-fun setNonEmpty!30194 () Bool)

(declare-fun setElem!30194 () Context!7162)

(declare-fun tp!1427813 () Bool)

(assert (=> setNonEmpty!30194 (= setRes!30194 (and tp!1427813 (inv!78673 setElem!30194) e!3191851))))

(declare-fun setRest!30193 () (InoxSet Context!7162))

(assert (=> setNonEmpty!30194 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7162 Bool)) false) setElem!30194 true) setRest!30193))))

(assert (= (and start!540048 res!2178939) b!5117765))

(assert (= (and b!5117765 res!2178944) b!5117752))

(assert (= (and b!5117752 res!2178938) b!5117753))

(assert (= (and b!5117753 res!2178940) b!5117749))

(assert (= (and b!5117749 (not res!2178945)) b!5117764))

(assert (= (and b!5117764 (not res!2178942)) b!5117761))

(assert (= (and b!5117761 (not res!2178947)) b!5117758))

(assert (= (and b!5117758 (not res!2178948)) b!5117760))

(assert (= (and b!5117760 (not res!2178946)) b!5117762))

(assert (= (and b!5117762 (not res!2178937)) b!5117751))

(assert (= (and b!5117751 (not res!2178943)) b!5117763))

(assert (= (and b!5117763 (not res!2178941)) b!5117756))

(get-info :version)

(assert (= (and start!540048 ((_ is Cons!59182) input!5745)) b!5117754))

(assert (= (and start!540048 condSetEmpty!30193) setIsEmpty!30193))

(assert (= (and start!540048 (not condSetEmpty!30193)) setNonEmpty!30193))

(assert (= setNonEmpty!30193 b!5117757))

(assert (= (and start!540048 ((_ is Cons!59182) testedP!265)) b!5117759))

(assert (= (and start!540048 condSetEmpty!30194) setIsEmpty!30194))

(assert (= (and start!540048 (not condSetEmpty!30194)) setNonEmpty!30194))

(assert (= setNonEmpty!30194 b!5117750))

(assert (= (and start!540048 ((_ is Cons!59182) knownP!20)) b!5117755))

(declare-fun m!6177532 () Bool)

(assert (=> b!5117761 m!6177532))

(declare-fun m!6177534 () Bool)

(assert (=> b!5117752 m!6177534))

(declare-fun m!6177536 () Bool)

(assert (=> b!5117752 m!6177536))

(declare-fun m!6177538 () Bool)

(assert (=> b!5117762 m!6177538))

(declare-fun m!6177540 () Bool)

(assert (=> b!5117762 m!6177540))

(declare-fun m!6177542 () Bool)

(assert (=> b!5117762 m!6177542))

(declare-fun m!6177544 () Bool)

(assert (=> b!5117762 m!6177544))

(declare-fun m!6177546 () Bool)

(assert (=> b!5117762 m!6177546))

(declare-fun m!6177548 () Bool)

(assert (=> b!5117762 m!6177548))

(declare-fun m!6177550 () Bool)

(assert (=> b!5117762 m!6177550))

(declare-fun m!6177552 () Bool)

(assert (=> b!5117762 m!6177552))

(declare-fun m!6177554 () Bool)

(assert (=> b!5117762 m!6177554))

(declare-fun m!6177556 () Bool)

(assert (=> b!5117762 m!6177556))

(declare-fun m!6177558 () Bool)

(assert (=> b!5117762 m!6177558))

(declare-fun m!6177560 () Bool)

(assert (=> b!5117762 m!6177560))

(declare-fun m!6177562 () Bool)

(assert (=> b!5117762 m!6177562))

(declare-fun m!6177564 () Bool)

(assert (=> b!5117756 m!6177564))

(assert (=> b!5117756 m!6177564))

(declare-fun m!6177566 () Bool)

(assert (=> b!5117756 m!6177566))

(declare-fun m!6177568 () Bool)

(assert (=> b!5117756 m!6177568))

(declare-fun m!6177570 () Bool)

(assert (=> b!5117753 m!6177570))

(declare-fun m!6177572 () Bool)

(assert (=> b!5117760 m!6177572))

(declare-fun m!6177574 () Bool)

(assert (=> setNonEmpty!30194 m!6177574))

(declare-fun m!6177576 () Bool)

(assert (=> b!5117763 m!6177576))

(declare-fun m!6177578 () Bool)

(assert (=> start!540048 m!6177578))

(declare-fun m!6177580 () Bool)

(assert (=> b!5117749 m!6177580))

(declare-fun m!6177582 () Bool)

(assert (=> b!5117749 m!6177582))

(declare-fun m!6177584 () Bool)

(assert (=> b!5117749 m!6177584))

(declare-fun m!6177586 () Bool)

(assert (=> b!5117749 m!6177586))

(declare-fun m!6177588 () Bool)

(assert (=> b!5117751 m!6177588))

(assert (=> b!5117751 m!6177588))

(declare-fun m!6177590 () Bool)

(assert (=> b!5117751 m!6177590))

(declare-fun m!6177592 () Bool)

(assert (=> b!5117764 m!6177592))

(declare-fun m!6177594 () Bool)

(assert (=> setNonEmpty!30193 m!6177594))

(declare-fun m!6177596 () Bool)

(assert (=> b!5117765 m!6177596))

(check-sat (not b!5117753) (not b!5117764) (not b!5117751) (not b!5117756) (not b!5117759) (not b!5117755) (not b!5117765) (not b!5117763) (not b!5117757) (not b!5117749) (not b!5117752) (not b!5117754) (not setNonEmpty!30193) (not start!540048) (not setNonEmpty!30194) (not b!5117762) tp_is_empty!37667 (not b!5117750) (not b!5117760) (not b!5117761))
(check-sat)
