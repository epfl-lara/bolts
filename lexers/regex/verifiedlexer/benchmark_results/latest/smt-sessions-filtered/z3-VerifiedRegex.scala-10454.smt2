; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540052 () Bool)

(assert start!540052)

(declare-fun b!5117856 () Bool)

(declare-fun res!2179016 () Bool)

(declare-fun e!3191917 () Bool)

(assert (=> b!5117856 (=> res!2179016 e!3191917)))

(declare-datatypes ((C!28664 0))(
  ( (C!28665 (val!23984 Int)) )
))
(declare-datatypes ((List!59310 0))(
  ( (Nil!59186) (Cons!59186 (h!65634 C!28664) (t!372321 List!59310)) )
))
(declare-fun input!5745 () List!59310)

(declare-fun lt!2109481 () List!59310)

(declare-fun testedP!265 () List!59310)

(declare-fun ++!13024 (List!59310 List!59310) List!59310)

(assert (=> b!5117856 (= res!2179016 (not (= (++!13024 testedP!265 lt!2109481) input!5745)))))

(declare-fun b!5117857 () Bool)

(declare-fun res!2179026 () Bool)

(declare-fun e!3191915 () Bool)

(assert (=> b!5117857 (=> res!2179026 e!3191915)))

(declare-fun lt!2109488 () Int)

(declare-fun size!39505 (List!59310) Int)

(assert (=> b!5117857 (= res!2179026 (>= lt!2109488 (size!39505 input!5745)))))

(declare-fun b!5117858 () Bool)

(declare-fun e!3191912 () Bool)

(declare-fun tp_is_empty!37671 () Bool)

(declare-fun tp!1427859 () Bool)

(assert (=> b!5117858 (= e!3191912 (and tp_is_empty!37671 tp!1427859))))

(declare-fun b!5117859 () Bool)

(declare-fun res!2179023 () Bool)

(declare-fun e!3191916 () Bool)

(assert (=> b!5117859 (=> (not res!2179023) (not e!3191916))))

(declare-fun knownP!20 () List!59310)

(declare-fun isPrefix!5604 (List!59310 List!59310) Bool)

(assert (=> b!5117859 (= res!2179023 (isPrefix!5604 knownP!20 input!5745))))

(declare-fun b!5117860 () Bool)

(declare-fun res!2179021 () Bool)

(assert (=> b!5117860 (=> res!2179021 e!3191915)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14199 0))(
  ( (ElementMatch!14199 (c!879377 C!28664)) (Concat!23044 (regOne!28910 Regex!14199) (regTwo!28910 Regex!14199)) (EmptyExpr!14199) (Star!14199 (reg!14528 Regex!14199)) (EmptyLang!14199) (Union!14199 (regOne!28911 Regex!14199) (regTwo!28911 Regex!14199)) )
))
(declare-datatypes ((List!59311 0))(
  ( (Nil!59187) (Cons!59187 (h!65635 Regex!14199) (t!372322 List!59311)) )
))
(declare-datatypes ((Context!7166 0))(
  ( (Context!7167 (exprs!4083 List!59311)) )
))
(declare-fun z!4463 () (InoxSet Context!7166))

(declare-fun baseZ!46 () (InoxSet Context!7166))

(declare-fun derivationZipper!98 ((InoxSet Context!7166) List!59310) (InoxSet Context!7166))

(assert (=> b!5117860 (= res!2179021 (not (= (derivationZipper!98 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5117861 () Bool)

(declare-fun e!3191921 () Bool)

(declare-fun tp!1427856 () Bool)

(assert (=> b!5117861 (= e!3191921 tp!1427856)))

(declare-fun b!5117862 () Bool)

(declare-fun res!2179019 () Bool)

(assert (=> b!5117862 (=> res!2179019 e!3191915)))

(declare-fun lostCauseZipper!1085 ((InoxSet Context!7166)) Bool)

(assert (=> b!5117862 (= res!2179019 (lostCauseZipper!1085 z!4463))))

(declare-fun b!5117863 () Bool)

(declare-fun e!3191913 () Bool)

(declare-fun tp!1427853 () Bool)

(assert (=> b!5117863 (= e!3191913 (and tp_is_empty!37671 tp!1427853))))

(declare-fun b!5117864 () Bool)

(declare-fun e!3191911 () Bool)

(declare-fun tp!1427858 () Bool)

(assert (=> b!5117864 (= e!3191911 (and tp_is_empty!37671 tp!1427858))))

(declare-fun b!5117865 () Bool)

(declare-fun e!3191920 () Bool)

(declare-fun tp!1427857 () Bool)

(assert (=> b!5117865 (= e!3191920 tp!1427857)))

(declare-fun b!5117866 () Bool)

(declare-fun e!3191919 () Bool)

(assert (=> b!5117866 (= e!3191916 e!3191919)))

(declare-fun res!2179018 () Bool)

(assert (=> b!5117866 (=> (not res!2179018) (not e!3191919))))

(declare-fun lt!2109479 () Int)

(assert (=> b!5117866 (= res!2179018 (>= lt!2109479 lt!2109488))))

(assert (=> b!5117866 (= lt!2109488 (size!39505 testedP!265))))

(assert (=> b!5117866 (= lt!2109479 (size!39505 knownP!20))))

(declare-fun setIsEmpty!30205 () Bool)

(declare-fun setRes!30206 () Bool)

(assert (=> setIsEmpty!30205 setRes!30206))

(declare-fun setIsEmpty!30206 () Bool)

(declare-fun setRes!30205 () Bool)

(assert (=> setIsEmpty!30206 setRes!30205))

(declare-fun tp!1427855 () Bool)

(declare-fun setElem!30205 () Context!7166)

(declare-fun setNonEmpty!30205 () Bool)

(declare-fun inv!78678 (Context!7166) Bool)

(assert (=> setNonEmpty!30205 (= setRes!30205 (and tp!1427855 (inv!78678 setElem!30205) e!3191920))))

(declare-fun setRest!30206 () (InoxSet Context!7166))

(assert (=> setNonEmpty!30205 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7166 Bool)) false) setElem!30205 true) setRest!30206))))

(declare-fun b!5117868 () Bool)

(declare-fun e!3191914 () Bool)

(assert (=> b!5117868 (= e!3191917 e!3191914)))

(declare-fun res!2179020 () Bool)

(assert (=> b!5117868 (=> res!2179020 e!3191914)))

(declare-fun lt!2109480 () List!59310)

(assert (=> b!5117868 (= res!2179020 (not (= lt!2109480 input!5745)))))

(declare-fun lt!2109483 () List!59310)

(assert (=> b!5117868 (= lt!2109483 lt!2109480)))

(declare-fun lt!2109487 () List!59310)

(assert (=> b!5117868 (= lt!2109480 (++!13024 testedP!265 lt!2109487))))

(declare-fun lt!2109477 () List!59310)

(declare-fun lt!2109482 () List!59310)

(assert (=> b!5117868 (= lt!2109487 (++!13024 lt!2109477 lt!2109482))))

(declare-datatypes ((Unit!150319 0))(
  ( (Unit!150320) )
))
(declare-fun lt!2109476 () Unit!150319)

(declare-fun lemmaConcatAssociativity!2772 (List!59310 List!59310 List!59310) Unit!150319)

(assert (=> b!5117868 (= lt!2109476 (lemmaConcatAssociativity!2772 testedP!265 lt!2109477 lt!2109482))))

(declare-fun b!5117869 () Bool)

(assert (=> b!5117869 (= e!3191919 (not e!3191915))))

(declare-fun res!2179015 () Bool)

(assert (=> b!5117869 (=> res!2179015 e!3191915)))

(declare-fun matchZipper!867 ((InoxSet Context!7166) List!59310) Bool)

(assert (=> b!5117869 (= res!2179015 (not (matchZipper!867 z!4463 lt!2109477)))))

(declare-fun getSuffix!3278 (List!59310 List!59310) List!59310)

(assert (=> b!5117869 (= lt!2109477 (getSuffix!3278 knownP!20 testedP!265))))

(assert (=> b!5117869 (isPrefix!5604 testedP!265 knownP!20)))

(declare-fun lt!2109485 () Unit!150319)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!741 (List!59310 List!59310 List!59310) Unit!150319)

(assert (=> b!5117869 (= lt!2109485 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!741 knownP!20 testedP!265 input!5745))))

(declare-fun b!5117870 () Bool)

(declare-fun e!3191918 () Bool)

(assert (=> b!5117870 (= e!3191915 e!3191918)))

(declare-fun res!2179024 () Bool)

(assert (=> b!5117870 (=> res!2179024 e!3191918)))

(assert (=> b!5117870 (= res!2179024 (not (= (++!13024 knownP!20 lt!2109482) input!5745)))))

(assert (=> b!5117870 (= lt!2109482 (getSuffix!3278 input!5745 knownP!20))))

(declare-fun lt!2109484 () List!59310)

(declare-fun lt!2109486 () List!59310)

(assert (=> b!5117870 (= lt!2109484 (getSuffix!3278 knownP!20 lt!2109486))))

(assert (=> b!5117870 (isPrefix!5604 lt!2109486 knownP!20)))

(declare-fun lt!2109489 () Unit!150319)

(assert (=> b!5117870 (= lt!2109489 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!741 knownP!20 lt!2109486 input!5745))))

(declare-fun lt!2109475 () C!28664)

(declare-fun derivationStepZipper!834 ((InoxSet Context!7166) C!28664) (InoxSet Context!7166))

(assert (=> b!5117870 (= (derivationZipper!98 baseZ!46 lt!2109486) (derivationStepZipper!834 z!4463 lt!2109475))))

(declare-fun lt!2109478 () Unit!150319)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!55 ((InoxSet Context!7166) (InoxSet Context!7166) List!59310 C!28664) Unit!150319)

(assert (=> b!5117870 (= lt!2109478 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!55 baseZ!46 z!4463 testedP!265 lt!2109475))))

(assert (=> b!5117870 (isPrefix!5604 lt!2109486 input!5745)))

(declare-fun lt!2109474 () Unit!150319)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!990 (List!59310 List!59310) Unit!150319)

(assert (=> b!5117870 (= lt!2109474 (lemmaAddHeadSuffixToPrefixStillPrefix!990 testedP!265 input!5745))))

(assert (=> b!5117870 (= lt!2109486 (++!13024 testedP!265 (Cons!59186 lt!2109475 Nil!59186)))))

(declare-fun head!10927 (List!59310) C!28664)

(assert (=> b!5117870 (= lt!2109475 (head!10927 lt!2109481))))

(assert (=> b!5117870 (= lt!2109481 (getSuffix!3278 input!5745 testedP!265))))

(declare-fun tp!1427854 () Bool)

(declare-fun setNonEmpty!30206 () Bool)

(declare-fun setElem!30206 () Context!7166)

(assert (=> setNonEmpty!30206 (= setRes!30206 (and tp!1427854 (inv!78678 setElem!30206) e!3191921))))

(declare-fun setRest!30205 () (InoxSet Context!7166))

(assert (=> setNonEmpty!30206 (= z!4463 ((_ map or) (store ((as const (Array Context!7166 Bool)) false) setElem!30206 true) setRest!30205))))

(declare-fun b!5117871 () Bool)

(assert (=> b!5117871 (= e!3191914 true)))

(assert (=> b!5117871 (= lt!2109487 lt!2109481)))

(declare-fun lt!2109490 () Unit!150319)

(declare-fun lemmaSamePrefixThenSameSuffix!2638 (List!59310 List!59310 List!59310 List!59310 List!59310) Unit!150319)

(assert (=> b!5117871 (= lt!2109490 (lemmaSamePrefixThenSameSuffix!2638 testedP!265 lt!2109487 testedP!265 lt!2109481 input!5745))))

(declare-fun b!5117872 () Bool)

(declare-fun res!2179022 () Bool)

(assert (=> b!5117872 (=> res!2179022 e!3191915)))

(assert (=> b!5117872 (= res!2179022 (= lt!2109488 lt!2109479))))

(declare-fun b!5117873 () Bool)

(assert (=> b!5117873 (= e!3191918 e!3191917)))

(declare-fun res!2179014 () Bool)

(assert (=> b!5117873 (=> res!2179014 e!3191917)))

(assert (=> b!5117873 (= res!2179014 (not (= lt!2109483 input!5745)))))

(assert (=> b!5117873 (= lt!2109483 (++!13024 (++!13024 testedP!265 lt!2109477) lt!2109482))))

(declare-fun b!5117867 () Bool)

(declare-fun res!2179017 () Bool)

(assert (=> b!5117867 (=> (not res!2179017) (not e!3191919))))

(assert (=> b!5117867 (= res!2179017 (matchZipper!867 baseZ!46 knownP!20))))

(declare-fun res!2179025 () Bool)

(assert (=> start!540052 (=> (not res!2179025) (not e!3191916))))

(assert (=> start!540052 (= res!2179025 (isPrefix!5604 testedP!265 input!5745))))

(assert (=> start!540052 e!3191916))

(assert (=> start!540052 e!3191911))

(declare-fun condSetEmpty!30206 () Bool)

(assert (=> start!540052 (= condSetEmpty!30206 (= z!4463 ((as const (Array Context!7166 Bool)) false)))))

(assert (=> start!540052 setRes!30206))

(assert (=> start!540052 e!3191913))

(declare-fun condSetEmpty!30205 () Bool)

(assert (=> start!540052 (= condSetEmpty!30205 (= baseZ!46 ((as const (Array Context!7166 Bool)) false)))))

(assert (=> start!540052 setRes!30205))

(assert (=> start!540052 e!3191912))

(assert (= (and start!540052 res!2179025) b!5117859))

(assert (= (and b!5117859 res!2179023) b!5117866))

(assert (= (and b!5117866 res!2179018) b!5117867))

(assert (= (and b!5117867 res!2179017) b!5117869))

(assert (= (and b!5117869 (not res!2179015)) b!5117860))

(assert (= (and b!5117860 (not res!2179021)) b!5117862))

(assert (= (and b!5117862 (not res!2179019)) b!5117872))

(assert (= (and b!5117872 (not res!2179022)) b!5117857))

(assert (= (and b!5117857 (not res!2179026)) b!5117870))

(assert (= (and b!5117870 (not res!2179024)) b!5117873))

(assert (= (and b!5117873 (not res!2179014)) b!5117856))

(assert (= (and b!5117856 (not res!2179016)) b!5117868))

(assert (= (and b!5117868 (not res!2179020)) b!5117871))

(get-info :version)

(assert (= (and start!540052 ((_ is Cons!59186) input!5745)) b!5117864))

(assert (= (and start!540052 condSetEmpty!30206) setIsEmpty!30205))

(assert (= (and start!540052 (not condSetEmpty!30206)) setNonEmpty!30206))

(assert (= setNonEmpty!30206 b!5117861))

(assert (= (and start!540052 ((_ is Cons!59186) testedP!265)) b!5117863))

(assert (= (and start!540052 condSetEmpty!30205) setIsEmpty!30206))

(assert (= (and start!540052 (not condSetEmpty!30205)) setNonEmpty!30205))

(assert (= setNonEmpty!30205 b!5117865))

(assert (= (and start!540052 ((_ is Cons!59186) knownP!20)) b!5117858))

(declare-fun m!6177666 () Bool)

(assert (=> b!5117867 m!6177666))

(declare-fun m!6177668 () Bool)

(assert (=> b!5117869 m!6177668))

(declare-fun m!6177670 () Bool)

(assert (=> b!5117869 m!6177670))

(declare-fun m!6177672 () Bool)

(assert (=> b!5117869 m!6177672))

(declare-fun m!6177674 () Bool)

(assert (=> b!5117869 m!6177674))

(declare-fun m!6177676 () Bool)

(assert (=> b!5117859 m!6177676))

(declare-fun m!6177678 () Bool)

(assert (=> setNonEmpty!30205 m!6177678))

(declare-fun m!6177680 () Bool)

(assert (=> b!5117856 m!6177680))

(declare-fun m!6177682 () Bool)

(assert (=> start!540052 m!6177682))

(declare-fun m!6177684 () Bool)

(assert (=> b!5117857 m!6177684))

(declare-fun m!6177686 () Bool)

(assert (=> b!5117866 m!6177686))

(declare-fun m!6177688 () Bool)

(assert (=> b!5117866 m!6177688))

(declare-fun m!6177690 () Bool)

(assert (=> b!5117873 m!6177690))

(assert (=> b!5117873 m!6177690))

(declare-fun m!6177692 () Bool)

(assert (=> b!5117873 m!6177692))

(declare-fun m!6177694 () Bool)

(assert (=> setNonEmpty!30206 m!6177694))

(declare-fun m!6177696 () Bool)

(assert (=> b!5117862 m!6177696))

(declare-fun m!6177698 () Bool)

(assert (=> b!5117871 m!6177698))

(declare-fun m!6177700 () Bool)

(assert (=> b!5117860 m!6177700))

(declare-fun m!6177702 () Bool)

(assert (=> b!5117868 m!6177702))

(declare-fun m!6177704 () Bool)

(assert (=> b!5117868 m!6177704))

(declare-fun m!6177706 () Bool)

(assert (=> b!5117868 m!6177706))

(declare-fun m!6177708 () Bool)

(assert (=> b!5117870 m!6177708))

(declare-fun m!6177710 () Bool)

(assert (=> b!5117870 m!6177710))

(declare-fun m!6177712 () Bool)

(assert (=> b!5117870 m!6177712))

(declare-fun m!6177714 () Bool)

(assert (=> b!5117870 m!6177714))

(declare-fun m!6177716 () Bool)

(assert (=> b!5117870 m!6177716))

(declare-fun m!6177718 () Bool)

(assert (=> b!5117870 m!6177718))

(declare-fun m!6177720 () Bool)

(assert (=> b!5117870 m!6177720))

(declare-fun m!6177722 () Bool)

(assert (=> b!5117870 m!6177722))

(declare-fun m!6177724 () Bool)

(assert (=> b!5117870 m!6177724))

(declare-fun m!6177726 () Bool)

(assert (=> b!5117870 m!6177726))

(declare-fun m!6177728 () Bool)

(assert (=> b!5117870 m!6177728))

(declare-fun m!6177730 () Bool)

(assert (=> b!5117870 m!6177730))

(declare-fun m!6177732 () Bool)

(assert (=> b!5117870 m!6177732))

(check-sat (not setNonEmpty!30206) (not b!5117862) (not b!5117871) (not b!5117861) (not b!5117870) (not b!5117865) (not setNonEmpty!30205) (not b!5117864) (not b!5117860) (not b!5117856) (not b!5117866) (not start!540052) (not b!5117873) tp_is_empty!37671 (not b!5117869) (not b!5117868) (not b!5117858) (not b!5117857) (not b!5117863) (not b!5117867) (not b!5117859))
(check-sat)
