; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539632 () Bool)

(assert start!539632)

(declare-fun setRes!29982 () Bool)

(declare-fun e!3189917 () Bool)

(declare-fun tp!1426975 () Bool)

(declare-datatypes ((C!28608 0))(
  ( (C!28609 (val!23956 Int)) )
))
(declare-datatypes ((Regex!14171 0))(
  ( (ElementMatch!14171 (c!878825 C!28608)) (Concat!23016 (regOne!28854 Regex!14171) (regTwo!28854 Regex!14171)) (EmptyExpr!14171) (Star!14171 (reg!14500 Regex!14171)) (EmptyLang!14171) (Union!14171 (regOne!28855 Regex!14171) (regTwo!28855 Regex!14171)) )
))
(declare-datatypes ((List!59241 0))(
  ( (Nil!59117) (Cons!59117 (h!65565 Regex!14171) (t!372248 List!59241)) )
))
(declare-datatypes ((Context!7110 0))(
  ( (Context!7111 (exprs!4055 List!59241)) )
))
(declare-fun setElem!29981 () Context!7110)

(declare-fun setNonEmpty!29981 () Bool)

(declare-fun inv!78608 (Context!7110) Bool)

(assert (=> setNonEmpty!29981 (= setRes!29982 (and tp!1426975 (inv!78608 setElem!29981) e!3189917))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7110))

(declare-fun setRest!29982 () (InoxSet Context!7110))

(assert (=> setNonEmpty!29981 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7110 Bool)) false) setElem!29981 true) setRest!29982))))

(declare-fun b!5114670 () Bool)

(declare-fun res!2177298 () Bool)

(declare-fun e!3189920 () Bool)

(assert (=> b!5114670 (=> res!2177298 e!3189920)))

(declare-datatypes ((List!59242 0))(
  ( (Nil!59118) (Cons!59118 (h!65566 C!28608) (t!372249 List!59242)) )
))
(declare-fun lt!2107165 () List!59242)

(declare-fun knownP!20 () List!59242)

(assert (=> b!5114670 (= res!2177298 (not (= lt!2107165 knownP!20)))))

(declare-fun b!5114671 () Bool)

(declare-fun res!2177306 () Bool)

(declare-fun e!3189911 () Bool)

(assert (=> b!5114671 (=> res!2177306 e!3189911)))

(declare-fun input!5745 () List!59242)

(declare-fun lt!2107159 () List!59242)

(declare-fun testedP!265 () List!59242)

(declare-fun ++!12996 (List!59242 List!59242) List!59242)

(assert (=> b!5114671 (= res!2177306 (not (= (++!12996 testedP!265 lt!2107159) input!5745)))))

(declare-fun b!5114672 () Bool)

(declare-fun res!2177307 () Bool)

(declare-fun e!3189914 () Bool)

(assert (=> b!5114672 (=> (not res!2177307) (not e!3189914))))

(declare-fun isPrefix!5576 (List!59242 List!59242) Bool)

(assert (=> b!5114672 (= res!2177307 (isPrefix!5576 knownP!20 input!5745))))

(declare-fun b!5114673 () Bool)

(declare-fun tp!1426977 () Bool)

(assert (=> b!5114673 (= e!3189917 tp!1426977)))

(declare-fun res!2177311 () Bool)

(assert (=> start!539632 (=> (not res!2177311) (not e!3189914))))

(assert (=> start!539632 (= res!2177311 (isPrefix!5576 testedP!265 input!5745))))

(assert (=> start!539632 e!3189914))

(declare-fun e!3189923 () Bool)

(assert (=> start!539632 e!3189923))

(declare-fun condSetEmpty!29981 () Bool)

(declare-fun z!4463 () (InoxSet Context!7110))

(assert (=> start!539632 (= condSetEmpty!29981 (= z!4463 ((as const (Array Context!7110 Bool)) false)))))

(declare-fun setRes!29981 () Bool)

(assert (=> start!539632 setRes!29981))

(declare-fun e!3189916 () Bool)

(assert (=> start!539632 e!3189916))

(declare-fun condSetEmpty!29982 () Bool)

(assert (=> start!539632 (= condSetEmpty!29982 (= baseZ!46 ((as const (Array Context!7110 Bool)) false)))))

(assert (=> start!539632 setRes!29982))

(declare-fun e!3189913 () Bool)

(assert (=> start!539632 e!3189913))

(declare-fun setIsEmpty!29981 () Bool)

(assert (=> setIsEmpty!29981 setRes!29981))

(declare-fun b!5114674 () Bool)

(declare-fun e!3189922 () Bool)

(assert (=> b!5114674 (= e!3189911 e!3189922)))

(declare-fun res!2177310 () Bool)

(assert (=> b!5114674 (=> res!2177310 e!3189922)))

(declare-fun lt!2107167 () List!59242)

(assert (=> b!5114674 (= res!2177310 (not (= lt!2107167 input!5745)))))

(declare-fun lt!2107158 () List!59242)

(assert (=> b!5114674 (= lt!2107158 lt!2107167)))

(declare-fun lt!2107157 () List!59242)

(assert (=> b!5114674 (= lt!2107167 (++!12996 testedP!265 lt!2107157))))

(declare-fun lt!2107160 () List!59242)

(declare-fun lt!2107156 () List!59242)

(assert (=> b!5114674 (= lt!2107157 (++!12996 lt!2107160 lt!2107156))))

(declare-datatypes ((Unit!150237 0))(
  ( (Unit!150238) )
))
(declare-fun lt!2107166 () Unit!150237)

(declare-fun lemmaConcatAssociativity!2754 (List!59242 List!59242 List!59242) Unit!150237)

(assert (=> b!5114674 (= lt!2107166 (lemmaConcatAssociativity!2754 testedP!265 lt!2107160 lt!2107156))))

(declare-fun b!5114675 () Bool)

(declare-fun res!2177303 () Bool)

(declare-fun e!3189921 () Bool)

(assert (=> b!5114675 (=> res!2177303 e!3189921)))

(declare-fun lostCauseZipper!1057 ((InoxSet Context!7110)) Bool)

(assert (=> b!5114675 (= res!2177303 (lostCauseZipper!1057 z!4463))))

(declare-fun b!5114676 () Bool)

(declare-fun res!2177304 () Bool)

(assert (=> b!5114676 (=> res!2177304 e!3189921)))

(declare-fun derivationZipper!70 ((InoxSet Context!7110) List!59242) (InoxSet Context!7110))

(assert (=> b!5114676 (= res!2177304 (not (= (derivationZipper!70 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5114677 () Bool)

(declare-fun e!3189918 () Bool)

(assert (=> b!5114677 (= e!3189918 true)))

(declare-fun lt!2107162 () List!59242)

(declare-fun lt!2107152 () List!59242)

(declare-fun lt!2107150 () List!59242)

(assert (=> b!5114677 (= lt!2107162 (++!12996 testedP!265 (++!12996 lt!2107152 lt!2107150)))))

(declare-fun lt!2107163 () Unit!150237)

(assert (=> b!5114677 (= lt!2107163 (lemmaConcatAssociativity!2754 testedP!265 lt!2107152 lt!2107150))))

(declare-fun b!5114678 () Bool)

(declare-fun e!3189915 () Bool)

(declare-fun tp!1426971 () Bool)

(assert (=> b!5114678 (= e!3189915 tp!1426971)))

(declare-fun b!5114679 () Bool)

(declare-fun e!3189919 () Bool)

(assert (=> b!5114679 (= e!3189919 e!3189911)))

(declare-fun res!2177300 () Bool)

(assert (=> b!5114679 (=> res!2177300 e!3189911)))

(assert (=> b!5114679 (= res!2177300 (not (= lt!2107158 input!5745)))))

(assert (=> b!5114679 (= lt!2107158 (++!12996 lt!2107165 lt!2107156))))

(assert (=> b!5114679 (= lt!2107165 (++!12996 testedP!265 lt!2107160))))

(declare-fun setNonEmpty!29982 () Bool)

(declare-fun tp!1426974 () Bool)

(declare-fun setElem!29982 () Context!7110)

(assert (=> setNonEmpty!29982 (= setRes!29981 (and tp!1426974 (inv!78608 setElem!29982) e!3189915))))

(declare-fun setRest!29981 () (InoxSet Context!7110))

(assert (=> setNonEmpty!29982 (= z!4463 ((_ map or) (store ((as const (Array Context!7110 Bool)) false) setElem!29982 true) setRest!29981))))

(declare-fun b!5114680 () Bool)

(assert (=> b!5114680 (= e!3189920 e!3189918)))

(declare-fun res!2177301 () Bool)

(assert (=> b!5114680 (=> res!2177301 e!3189918)))

(assert (=> b!5114680 (= res!2177301 (not (= lt!2107162 knownP!20)))))

(declare-fun lt!2107154 () List!59242)

(assert (=> b!5114680 (= lt!2107162 (++!12996 lt!2107154 lt!2107150))))

(declare-fun b!5114681 () Bool)

(assert (=> b!5114681 (= e!3189922 e!3189920)))

(declare-fun res!2177299 () Bool)

(assert (=> b!5114681 (=> res!2177299 e!3189920)))

(declare-fun lt!2107151 () C!28608)

(declare-fun head!10899 (List!59242) C!28608)

(assert (=> b!5114681 (= res!2177299 (not (= (head!10899 lt!2107160) lt!2107151)))))

(assert (=> b!5114681 (= lt!2107157 lt!2107159)))

(declare-fun lt!2107153 () Unit!150237)

(declare-fun lemmaSamePrefixThenSameSuffix!2622 (List!59242 List!59242 List!59242 List!59242 List!59242) Unit!150237)

(assert (=> b!5114681 (= lt!2107153 (lemmaSamePrefixThenSameSuffix!2622 testedP!265 lt!2107157 testedP!265 lt!2107159 input!5745))))

(declare-fun b!5114682 () Bool)

(declare-fun tp_is_empty!37615 () Bool)

(declare-fun tp!1426976 () Bool)

(assert (=> b!5114682 (= e!3189923 (and tp_is_empty!37615 tp!1426976))))

(declare-fun b!5114683 () Bool)

(declare-fun e!3189912 () Bool)

(assert (=> b!5114683 (= e!3189914 e!3189912)))

(declare-fun res!2177314 () Bool)

(assert (=> b!5114683 (=> (not res!2177314) (not e!3189912))))

(declare-fun lt!2107168 () Int)

(declare-fun lt!2107149 () Int)

(assert (=> b!5114683 (= res!2177314 (>= lt!2107168 lt!2107149))))

(declare-fun size!39477 (List!59242) Int)

(assert (=> b!5114683 (= lt!2107149 (size!39477 testedP!265))))

(assert (=> b!5114683 (= lt!2107168 (size!39477 knownP!20))))

(declare-fun setIsEmpty!29982 () Bool)

(assert (=> setIsEmpty!29982 setRes!29982))

(declare-fun b!5114684 () Bool)

(declare-fun res!2177302 () Bool)

(assert (=> b!5114684 (=> res!2177302 e!3189921)))

(assert (=> b!5114684 (= res!2177302 (>= lt!2107149 (size!39477 input!5745)))))

(declare-fun b!5114685 () Bool)

(assert (=> b!5114685 (= e!3189921 e!3189919)))

(declare-fun res!2177308 () Bool)

(assert (=> b!5114685 (=> res!2177308 e!3189919)))

(assert (=> b!5114685 (= res!2177308 (not (= (++!12996 knownP!20 lt!2107156) input!5745)))))

(declare-fun getSuffix!3250 (List!59242 List!59242) List!59242)

(assert (=> b!5114685 (= lt!2107156 (getSuffix!3250 input!5745 knownP!20))))

(assert (=> b!5114685 (= lt!2107150 (getSuffix!3250 knownP!20 lt!2107154))))

(assert (=> b!5114685 (isPrefix!5576 lt!2107154 knownP!20)))

(declare-fun lt!2107155 () Unit!150237)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!713 (List!59242 List!59242 List!59242) Unit!150237)

(assert (=> b!5114685 (= lt!2107155 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!713 knownP!20 lt!2107154 input!5745))))

(declare-fun derivationStepZipper!806 ((InoxSet Context!7110) C!28608) (InoxSet Context!7110))

(assert (=> b!5114685 (= (derivationZipper!70 baseZ!46 lt!2107154) (derivationStepZipper!806 z!4463 lt!2107151))))

(declare-fun lt!2107164 () Unit!150237)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!31 ((InoxSet Context!7110) (InoxSet Context!7110) List!59242 C!28608) Unit!150237)

(assert (=> b!5114685 (= lt!2107164 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!31 baseZ!46 z!4463 testedP!265 lt!2107151))))

(assert (=> b!5114685 (isPrefix!5576 lt!2107154 input!5745)))

(declare-fun lt!2107161 () Unit!150237)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!966 (List!59242 List!59242) Unit!150237)

(assert (=> b!5114685 (= lt!2107161 (lemmaAddHeadSuffixToPrefixStillPrefix!966 testedP!265 input!5745))))

(assert (=> b!5114685 (= lt!2107154 (++!12996 testedP!265 lt!2107152))))

(assert (=> b!5114685 (= lt!2107152 (Cons!59118 lt!2107151 Nil!59118))))

(assert (=> b!5114685 (= lt!2107151 (head!10899 lt!2107159))))

(assert (=> b!5114685 (= lt!2107159 (getSuffix!3250 input!5745 testedP!265))))

(declare-fun b!5114686 () Bool)

(declare-fun res!2177309 () Bool)

(assert (=> b!5114686 (=> res!2177309 e!3189920)))

(declare-fun $colon$colon!1117 (List!59242 C!28608) List!59242)

(declare-fun tail!10040 (List!59242) List!59242)

(assert (=> b!5114686 (= res!2177309 (not (= lt!2107160 ($colon$colon!1117 (tail!10040 lt!2107160) lt!2107151))))))

(declare-fun b!5114687 () Bool)

(declare-fun res!2177312 () Bool)

(assert (=> b!5114687 (=> res!2177312 e!3189921)))

(assert (=> b!5114687 (= res!2177312 (= lt!2107149 lt!2107168))))

(declare-fun b!5114688 () Bool)

(assert (=> b!5114688 (= e!3189912 (not e!3189921))))

(declare-fun res!2177305 () Bool)

(assert (=> b!5114688 (=> res!2177305 e!3189921)))

(declare-fun matchZipper!839 ((InoxSet Context!7110) List!59242) Bool)

(assert (=> b!5114688 (= res!2177305 (not (matchZipper!839 z!4463 lt!2107160)))))

(assert (=> b!5114688 (= lt!2107160 (getSuffix!3250 knownP!20 testedP!265))))

(assert (=> b!5114688 (isPrefix!5576 testedP!265 knownP!20)))

(declare-fun lt!2107148 () Unit!150237)

(assert (=> b!5114688 (= lt!2107148 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!713 knownP!20 testedP!265 input!5745))))

(declare-fun b!5114689 () Bool)

(declare-fun tp!1426972 () Bool)

(assert (=> b!5114689 (= e!3189913 (and tp_is_empty!37615 tp!1426972))))

(declare-fun b!5114690 () Bool)

(declare-fun tp!1426973 () Bool)

(assert (=> b!5114690 (= e!3189916 (and tp_is_empty!37615 tp!1426973))))

(declare-fun b!5114691 () Bool)

(declare-fun res!2177313 () Bool)

(assert (=> b!5114691 (=> (not res!2177313) (not e!3189912))))

(assert (=> b!5114691 (= res!2177313 (matchZipper!839 baseZ!46 knownP!20))))

(assert (= (and start!539632 res!2177311) b!5114672))

(assert (= (and b!5114672 res!2177307) b!5114683))

(assert (= (and b!5114683 res!2177314) b!5114691))

(assert (= (and b!5114691 res!2177313) b!5114688))

(assert (= (and b!5114688 (not res!2177305)) b!5114676))

(assert (= (and b!5114676 (not res!2177304)) b!5114675))

(assert (= (and b!5114675 (not res!2177303)) b!5114687))

(assert (= (and b!5114687 (not res!2177312)) b!5114684))

(assert (= (and b!5114684 (not res!2177302)) b!5114685))

(assert (= (and b!5114685 (not res!2177308)) b!5114679))

(assert (= (and b!5114679 (not res!2177300)) b!5114671))

(assert (= (and b!5114671 (not res!2177306)) b!5114674))

(assert (= (and b!5114674 (not res!2177310)) b!5114681))

(assert (= (and b!5114681 (not res!2177299)) b!5114686))

(assert (= (and b!5114686 (not res!2177309)) b!5114670))

(assert (= (and b!5114670 (not res!2177298)) b!5114680))

(assert (= (and b!5114680 (not res!2177301)) b!5114677))

(get-info :version)

(assert (= (and start!539632 ((_ is Cons!59118) input!5745)) b!5114682))

(assert (= (and start!539632 condSetEmpty!29981) setIsEmpty!29981))

(assert (= (and start!539632 (not condSetEmpty!29981)) setNonEmpty!29982))

(assert (= setNonEmpty!29982 b!5114678))

(assert (= (and start!539632 ((_ is Cons!59118) testedP!265)) b!5114690))

(assert (= (and start!539632 condSetEmpty!29982) setIsEmpty!29982))

(assert (= (and start!539632 (not condSetEmpty!29982)) setNonEmpty!29981))

(assert (= setNonEmpty!29981 b!5114673))

(assert (= (and start!539632 ((_ is Cons!59118) knownP!20)) b!5114689))

(declare-fun m!6173400 () Bool)

(assert (=> b!5114688 m!6173400))

(declare-fun m!6173402 () Bool)

(assert (=> b!5114688 m!6173402))

(declare-fun m!6173404 () Bool)

(assert (=> b!5114688 m!6173404))

(declare-fun m!6173406 () Bool)

(assert (=> b!5114688 m!6173406))

(declare-fun m!6173408 () Bool)

(assert (=> b!5114672 m!6173408))

(declare-fun m!6173410 () Bool)

(assert (=> b!5114683 m!6173410))

(declare-fun m!6173412 () Bool)

(assert (=> b!5114683 m!6173412))

(declare-fun m!6173414 () Bool)

(assert (=> b!5114684 m!6173414))

(declare-fun m!6173416 () Bool)

(assert (=> b!5114675 m!6173416))

(declare-fun m!6173418 () Bool)

(assert (=> b!5114686 m!6173418))

(assert (=> b!5114686 m!6173418))

(declare-fun m!6173420 () Bool)

(assert (=> b!5114686 m!6173420))

(declare-fun m!6173422 () Bool)

(assert (=> b!5114681 m!6173422))

(declare-fun m!6173424 () Bool)

(assert (=> b!5114681 m!6173424))

(declare-fun m!6173426 () Bool)

(assert (=> b!5114674 m!6173426))

(declare-fun m!6173428 () Bool)

(assert (=> b!5114674 m!6173428))

(declare-fun m!6173430 () Bool)

(assert (=> b!5114674 m!6173430))

(declare-fun m!6173432 () Bool)

(assert (=> b!5114679 m!6173432))

(declare-fun m!6173434 () Bool)

(assert (=> b!5114679 m!6173434))

(declare-fun m!6173436 () Bool)

(assert (=> b!5114691 m!6173436))

(declare-fun m!6173438 () Bool)

(assert (=> b!5114685 m!6173438))

(declare-fun m!6173440 () Bool)

(assert (=> b!5114685 m!6173440))

(declare-fun m!6173442 () Bool)

(assert (=> b!5114685 m!6173442))

(declare-fun m!6173444 () Bool)

(assert (=> b!5114685 m!6173444))

(declare-fun m!6173446 () Bool)

(assert (=> b!5114685 m!6173446))

(declare-fun m!6173448 () Bool)

(assert (=> b!5114685 m!6173448))

(declare-fun m!6173450 () Bool)

(assert (=> b!5114685 m!6173450))

(declare-fun m!6173452 () Bool)

(assert (=> b!5114685 m!6173452))

(declare-fun m!6173454 () Bool)

(assert (=> b!5114685 m!6173454))

(declare-fun m!6173456 () Bool)

(assert (=> b!5114685 m!6173456))

(declare-fun m!6173458 () Bool)

(assert (=> b!5114685 m!6173458))

(declare-fun m!6173460 () Bool)

(assert (=> b!5114685 m!6173460))

(declare-fun m!6173462 () Bool)

(assert (=> b!5114685 m!6173462))

(declare-fun m!6173464 () Bool)

(assert (=> b!5114676 m!6173464))

(declare-fun m!6173466 () Bool)

(assert (=> b!5114671 m!6173466))

(declare-fun m!6173468 () Bool)

(assert (=> setNonEmpty!29982 m!6173468))

(declare-fun m!6173470 () Bool)

(assert (=> setNonEmpty!29981 m!6173470))

(declare-fun m!6173472 () Bool)

(assert (=> b!5114677 m!6173472))

(assert (=> b!5114677 m!6173472))

(declare-fun m!6173474 () Bool)

(assert (=> b!5114677 m!6173474))

(declare-fun m!6173476 () Bool)

(assert (=> b!5114677 m!6173476))

(declare-fun m!6173478 () Bool)

(assert (=> b!5114680 m!6173478))

(declare-fun m!6173480 () Bool)

(assert (=> start!539632 m!6173480))

(check-sat (not b!5114683) (not b!5114675) (not b!5114690) (not b!5114682) (not b!5114688) tp_is_empty!37615 (not start!539632) (not b!5114680) (not b!5114678) (not b!5114679) (not setNonEmpty!29981) (not b!5114674) (not b!5114676) (not setNonEmpty!29982) (not b!5114689) (not b!5114671) (not b!5114684) (not b!5114673) (not b!5114686) (not b!5114672) (not b!5114691) (not b!5114677) (not b!5114685) (not b!5114681))
(check-sat)
