; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539032 () Bool)

(assert start!539032)

(declare-fun b!5111030 () Bool)

(declare-fun e!3187717 () Bool)

(declare-fun tp_is_empty!37563 () Bool)

(declare-fun tp!1426053 () Bool)

(assert (=> b!5111030 (= e!3187717 (and tp_is_empty!37563 tp!1426053))))

(declare-fun b!5111032 () Bool)

(declare-fun e!3187715 () Bool)

(declare-fun tp!1426052 () Bool)

(assert (=> b!5111032 (= e!3187715 tp!1426052)))

(declare-datatypes ((C!28556 0))(
  ( (C!28557 (val!23930 Int)) )
))
(declare-datatypes ((Regex!14145 0))(
  ( (ElementMatch!14145 (c!878063 C!28556)) (Concat!22990 (regOne!28802 Regex!14145) (regTwo!28802 Regex!14145)) (EmptyExpr!14145) (Star!14145 (reg!14474 Regex!14145)) (EmptyLang!14145) (Union!14145 (regOne!28803 Regex!14145) (regTwo!28803 Regex!14145)) )
))
(declare-datatypes ((List!59172 0))(
  ( (Nil!59048) (Cons!59048 (h!65496 Regex!14145) (t!372173 List!59172)) )
))
(declare-datatypes ((Context!7058 0))(
  ( (Context!7059 (exprs!4029 List!59172)) )
))
(declare-fun setElem!29753 () Context!7058)

(declare-fun setRes!29753 () Bool)

(declare-fun setNonEmpty!29753 () Bool)

(declare-fun tp!1426048 () Bool)

(declare-fun inv!78543 (Context!7058) Bool)

(assert (=> setNonEmpty!29753 (= setRes!29753 (and tp!1426048 (inv!78543 setElem!29753) e!3187715))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7058))

(declare-fun setRest!29753 () (InoxSet Context!7058))

(assert (=> setNonEmpty!29753 (= z!4463 ((_ map or) (store ((as const (Array Context!7058 Bool)) false) setElem!29753 true) setRest!29753))))

(declare-fun b!5111033 () Bool)

(declare-fun e!3187721 () Bool)

(declare-fun e!3187719 () Bool)

(assert (=> b!5111033 (= e!3187721 (not e!3187719))))

(declare-fun res!2175509 () Bool)

(assert (=> b!5111033 (=> res!2175509 e!3187719)))

(declare-datatypes ((List!59173 0))(
  ( (Nil!59049) (Cons!59049 (h!65497 C!28556) (t!372174 List!59173)) )
))
(declare-fun testedP!265 () List!59173)

(declare-fun knownP!20 () List!59173)

(declare-fun matchZipper!813 ((InoxSet Context!7058) List!59173) Bool)

(declare-fun getSuffix!3224 (List!59173 List!59173) List!59173)

(assert (=> b!5111033 (= res!2175509 (not (matchZipper!813 z!4463 (getSuffix!3224 knownP!20 testedP!265))))))

(declare-fun isPrefix!5550 (List!59173 List!59173) Bool)

(assert (=> b!5111033 (isPrefix!5550 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59173)

(declare-datatypes ((Unit!150151 0))(
  ( (Unit!150152) )
))
(declare-fun lt!2104821 () Unit!150151)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!687 (List!59173 List!59173 List!59173) Unit!150151)

(assert (=> b!5111033 (= lt!2104821 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!687 knownP!20 testedP!265 input!5745))))

(declare-fun b!5111034 () Bool)

(declare-fun res!2175507 () Bool)

(declare-fun e!3187716 () Bool)

(assert (=> b!5111034 (=> (not res!2175507) (not e!3187716))))

(assert (=> b!5111034 (= res!2175507 (isPrefix!5550 knownP!20 input!5745))))

(declare-fun b!5111035 () Bool)

(declare-fun res!2175506 () Bool)

(assert (=> b!5111035 (=> res!2175506 e!3187719)))

(declare-fun lostCauseZipper!1031 ((InoxSet Context!7058)) Bool)

(assert (=> b!5111035 (= res!2175506 (lostCauseZipper!1031 z!4463))))

(declare-fun b!5111036 () Bool)

(declare-fun res!2175502 () Bool)

(assert (=> b!5111036 (=> (not res!2175502) (not e!3187721))))

(declare-fun baseZ!46 () (InoxSet Context!7058))

(assert (=> b!5111036 (= res!2175502 (matchZipper!813 baseZ!46 knownP!20))))

(declare-fun b!5111037 () Bool)

(declare-fun res!2175504 () Bool)

(assert (=> b!5111037 (=> res!2175504 e!3187719)))

(declare-fun lt!2104822 () Int)

(declare-fun lt!2104827 () Int)

(assert (=> b!5111037 (= res!2175504 (= lt!2104822 lt!2104827))))

(declare-fun b!5111038 () Bool)

(declare-fun e!3187714 () Bool)

(declare-fun tp!1426051 () Bool)

(assert (=> b!5111038 (= e!3187714 (and tp_is_empty!37563 tp!1426051))))

(declare-fun setIsEmpty!29753 () Bool)

(declare-fun setRes!29754 () Bool)

(assert (=> setIsEmpty!29753 setRes!29754))

(declare-fun b!5111039 () Bool)

(declare-fun res!2175503 () Bool)

(assert (=> b!5111039 (=> res!2175503 e!3187719)))

(declare-fun size!39451 (List!59173) Int)

(assert (=> b!5111039 (= res!2175503 (>= lt!2104822 (size!39451 input!5745)))))

(declare-fun setIsEmpty!29754 () Bool)

(assert (=> setIsEmpty!29754 setRes!29753))

(declare-fun b!5111031 () Bool)

(declare-fun e!3187718 () Bool)

(declare-fun tp!1426047 () Bool)

(assert (=> b!5111031 (= e!3187718 (and tp_is_empty!37563 tp!1426047))))

(declare-fun res!2175505 () Bool)

(assert (=> start!539032 (=> (not res!2175505) (not e!3187716))))

(assert (=> start!539032 (= res!2175505 (isPrefix!5550 testedP!265 input!5745))))

(assert (=> start!539032 e!3187716))

(assert (=> start!539032 e!3187717))

(declare-fun condSetEmpty!29754 () Bool)

(assert (=> start!539032 (= condSetEmpty!29754 (= z!4463 ((as const (Array Context!7058 Bool)) false)))))

(assert (=> start!539032 setRes!29753))

(assert (=> start!539032 e!3187718))

(declare-fun condSetEmpty!29753 () Bool)

(assert (=> start!539032 (= condSetEmpty!29753 (= baseZ!46 ((as const (Array Context!7058 Bool)) false)))))

(assert (=> start!539032 setRes!29754))

(assert (=> start!539032 e!3187714))

(declare-fun b!5111040 () Bool)

(assert (=> b!5111040 (= e!3187719 true)))

(declare-fun lt!2104823 () Int)

(declare-fun lt!2104828 () List!59173)

(assert (=> b!5111040 (= lt!2104823 (size!39451 lt!2104828))))

(declare-fun lt!2104825 () C!28556)

(declare-fun derivationZipper!44 ((InoxSet Context!7058) List!59173) (InoxSet Context!7058))

(declare-fun derivationStepZipper!780 ((InoxSet Context!7058) C!28556) (InoxSet Context!7058))

(assert (=> b!5111040 (= (derivationZipper!44 baseZ!46 lt!2104828) (derivationStepZipper!780 z!4463 lt!2104825))))

(declare-fun lt!2104826 () Unit!150151)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!5 ((InoxSet Context!7058) (InoxSet Context!7058) List!59173 C!28556) Unit!150151)

(assert (=> b!5111040 (= lt!2104826 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!5 baseZ!46 z!4463 testedP!265 lt!2104825))))

(assert (=> b!5111040 (isPrefix!5550 lt!2104828 input!5745)))

(declare-fun lt!2104824 () Unit!150151)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!940 (List!59173 List!59173) Unit!150151)

(assert (=> b!5111040 (= lt!2104824 (lemmaAddHeadSuffixToPrefixStillPrefix!940 testedP!265 input!5745))))

(declare-fun ++!12970 (List!59173 List!59173) List!59173)

(assert (=> b!5111040 (= lt!2104828 (++!12970 testedP!265 (Cons!59049 lt!2104825 Nil!59049)))))

(declare-fun head!10873 (List!59173) C!28556)

(assert (=> b!5111040 (= lt!2104825 (head!10873 (getSuffix!3224 input!5745 testedP!265)))))

(declare-fun setElem!29754 () Context!7058)

(declare-fun e!3187720 () Bool)

(declare-fun tp!1426049 () Bool)

(declare-fun setNonEmpty!29754 () Bool)

(assert (=> setNonEmpty!29754 (= setRes!29754 (and tp!1426049 (inv!78543 setElem!29754) e!3187720))))

(declare-fun setRest!29754 () (InoxSet Context!7058))

(assert (=> setNonEmpty!29754 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7058 Bool)) false) setElem!29754 true) setRest!29754))))

(declare-fun b!5111041 () Bool)

(assert (=> b!5111041 (= e!3187716 e!3187721)))

(declare-fun res!2175508 () Bool)

(assert (=> b!5111041 (=> (not res!2175508) (not e!3187721))))

(assert (=> b!5111041 (= res!2175508 (>= lt!2104827 lt!2104822))))

(assert (=> b!5111041 (= lt!2104822 (size!39451 testedP!265))))

(assert (=> b!5111041 (= lt!2104827 (size!39451 knownP!20))))

(declare-fun b!5111042 () Bool)

(declare-fun res!2175510 () Bool)

(assert (=> b!5111042 (=> res!2175510 e!3187719)))

(assert (=> b!5111042 (= res!2175510 (not (= (derivationZipper!44 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5111043 () Bool)

(declare-fun tp!1426050 () Bool)

(assert (=> b!5111043 (= e!3187720 tp!1426050)))

(assert (= (and start!539032 res!2175505) b!5111034))

(assert (= (and b!5111034 res!2175507) b!5111041))

(assert (= (and b!5111041 res!2175508) b!5111036))

(assert (= (and b!5111036 res!2175502) b!5111033))

(assert (= (and b!5111033 (not res!2175509)) b!5111042))

(assert (= (and b!5111042 (not res!2175510)) b!5111035))

(assert (= (and b!5111035 (not res!2175506)) b!5111037))

(assert (= (and b!5111037 (not res!2175504)) b!5111039))

(assert (= (and b!5111039 (not res!2175503)) b!5111040))

(get-info :version)

(assert (= (and start!539032 ((_ is Cons!59049) input!5745)) b!5111030))

(assert (= (and start!539032 condSetEmpty!29754) setIsEmpty!29754))

(assert (= (and start!539032 (not condSetEmpty!29754)) setNonEmpty!29753))

(assert (= setNonEmpty!29753 b!5111032))

(assert (= (and start!539032 ((_ is Cons!59049) testedP!265)) b!5111031))

(assert (= (and start!539032 condSetEmpty!29753) setIsEmpty!29753))

(assert (= (and start!539032 (not condSetEmpty!29753)) setNonEmpty!29754))

(assert (= setNonEmpty!29754 b!5111043))

(assert (= (and start!539032 ((_ is Cons!59049) knownP!20)) b!5111038))

(declare-fun m!6168448 () Bool)

(assert (=> b!5111040 m!6168448))

(assert (=> b!5111040 m!6168448))

(declare-fun m!6168450 () Bool)

(assert (=> b!5111040 m!6168450))

(declare-fun m!6168452 () Bool)

(assert (=> b!5111040 m!6168452))

(declare-fun m!6168454 () Bool)

(assert (=> b!5111040 m!6168454))

(declare-fun m!6168456 () Bool)

(assert (=> b!5111040 m!6168456))

(declare-fun m!6168458 () Bool)

(assert (=> b!5111040 m!6168458))

(declare-fun m!6168460 () Bool)

(assert (=> b!5111040 m!6168460))

(declare-fun m!6168462 () Bool)

(assert (=> b!5111040 m!6168462))

(declare-fun m!6168464 () Bool)

(assert (=> b!5111040 m!6168464))

(declare-fun m!6168466 () Bool)

(assert (=> b!5111039 m!6168466))

(declare-fun m!6168468 () Bool)

(assert (=> b!5111036 m!6168468))

(declare-fun m!6168470 () Bool)

(assert (=> b!5111034 m!6168470))

(declare-fun m!6168472 () Bool)

(assert (=> setNonEmpty!29753 m!6168472))

(declare-fun m!6168474 () Bool)

(assert (=> b!5111033 m!6168474))

(assert (=> b!5111033 m!6168474))

(declare-fun m!6168476 () Bool)

(assert (=> b!5111033 m!6168476))

(declare-fun m!6168478 () Bool)

(assert (=> b!5111033 m!6168478))

(declare-fun m!6168480 () Bool)

(assert (=> b!5111033 m!6168480))

(declare-fun m!6168482 () Bool)

(assert (=> b!5111041 m!6168482))

(declare-fun m!6168484 () Bool)

(assert (=> b!5111041 m!6168484))

(declare-fun m!6168486 () Bool)

(assert (=> b!5111035 m!6168486))

(declare-fun m!6168488 () Bool)

(assert (=> setNonEmpty!29754 m!6168488))

(declare-fun m!6168490 () Bool)

(assert (=> start!539032 m!6168490))

(declare-fun m!6168492 () Bool)

(assert (=> b!5111042 m!6168492))

(check-sat (not b!5111033) (not b!5111036) (not b!5111040) (not b!5111041) (not b!5111030) (not b!5111035) (not b!5111031) (not b!5111039) (not b!5111043) (not b!5111038) (not start!539032) (not b!5111032) tp_is_empty!37563 (not b!5111034) (not setNonEmpty!29753) (not b!5111042) (not setNonEmpty!29754))
(check-sat)
