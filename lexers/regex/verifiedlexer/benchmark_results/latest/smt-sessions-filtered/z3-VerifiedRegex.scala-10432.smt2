; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539156 () Bool)

(assert start!539156)

(declare-fun b!5111877 () Bool)

(declare-fun res!2175923 () Bool)

(declare-fun e!3188234 () Bool)

(assert (=> b!5111877 (=> res!2175923 e!3188234)))

(declare-fun lt!2105341 () Int)

(declare-datatypes ((C!28576 0))(
  ( (C!28577 (val!23940 Int)) )
))
(declare-datatypes ((List!59195 0))(
  ( (Nil!59071) (Cons!59071 (h!65519 C!28576) (t!372196 List!59195)) )
))
(declare-fun input!5745 () List!59195)

(declare-fun size!39461 (List!59195) Int)

(assert (=> b!5111877 (= res!2175923 (>= lt!2105341 (size!39461 input!5745)))))

(declare-fun b!5111878 () Bool)

(declare-fun e!3188235 () Bool)

(declare-fun tp!1426342 () Bool)

(assert (=> b!5111878 (= e!3188235 tp!1426342)))

(declare-datatypes ((Regex!14155 0))(
  ( (ElementMatch!14155 (c!878213 C!28576)) (Concat!23000 (regOne!28822 Regex!14155) (regTwo!28822 Regex!14155)) (EmptyExpr!14155) (Star!14155 (reg!14484 Regex!14155)) (EmptyLang!14155) (Union!14155 (regOne!28823 Regex!14155) (regTwo!28823 Regex!14155)) )
))
(declare-datatypes ((List!59196 0))(
  ( (Nil!59072) (Cons!59072 (h!65520 Regex!14155) (t!372197 List!59196)) )
))
(declare-datatypes ((Context!7078 0))(
  ( (Context!7079 (exprs!4039 List!59196)) )
))
(declare-fun setElem!29830 () Context!7078)

(declare-fun tp!1426343 () Bool)

(declare-fun setRes!29830 () Bool)

(declare-fun setNonEmpty!29829 () Bool)

(declare-fun inv!78568 (Context!7078) Bool)

(assert (=> setNonEmpty!29829 (= setRes!29830 (and tp!1426343 (inv!78568 setElem!29830) e!3188235))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7078))

(declare-fun setRest!29830 () (InoxSet Context!7078))

(assert (=> setNonEmpty!29829 (= z!4463 ((_ map or) (store ((as const (Array Context!7078 Bool)) false) setElem!29830 true) setRest!29830))))

(declare-fun b!5111879 () Bool)

(declare-fun res!2175929 () Bool)

(assert (=> b!5111879 (=> res!2175929 e!3188234)))

(declare-fun lt!2105332 () Int)

(assert (=> b!5111879 (= res!2175929 (= lt!2105341 lt!2105332))))

(declare-fun b!5111880 () Bool)

(declare-fun res!2175924 () Bool)

(assert (=> b!5111880 (=> res!2175924 e!3188234)))

(declare-fun lostCauseZipper!1041 ((InoxSet Context!7078)) Bool)

(assert (=> b!5111880 (= res!2175924 (lostCauseZipper!1041 z!4463))))

(declare-fun b!5111881 () Bool)

(declare-fun e!3188237 () Bool)

(declare-fun tp_is_empty!37583 () Bool)

(declare-fun tp!1426341 () Bool)

(assert (=> b!5111881 (= e!3188237 (and tp_is_empty!37583 tp!1426341))))

(declare-fun b!5111882 () Bool)

(declare-fun res!2175926 () Bool)

(assert (=> b!5111882 (=> res!2175926 e!3188234)))

(declare-fun testedP!265 () List!59195)

(declare-fun baseZ!46 () (InoxSet Context!7078))

(declare-fun derivationZipper!54 ((InoxSet Context!7078) List!59195) (InoxSet Context!7078))

(assert (=> b!5111882 (= res!2175926 (not (= (derivationZipper!54 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5111883 () Bool)

(declare-fun e!3188236 () Bool)

(declare-fun tp!1426344 () Bool)

(assert (=> b!5111883 (= e!3188236 tp!1426344)))

(declare-fun b!5111884 () Bool)

(declare-fun res!2175930 () Bool)

(declare-fun e!3188233 () Bool)

(assert (=> b!5111884 (=> (not res!2175930) (not e!3188233))))

(declare-fun knownP!20 () List!59195)

(declare-fun isPrefix!5560 (List!59195 List!59195) Bool)

(assert (=> b!5111884 (= res!2175930 (isPrefix!5560 knownP!20 input!5745))))

(declare-fun b!5111885 () Bool)

(declare-fun e!3188231 () Bool)

(assert (=> b!5111885 (= e!3188234 e!3188231)))

(declare-fun res!2175934 () Bool)

(assert (=> b!5111885 (=> res!2175934 e!3188231)))

(declare-fun lt!2105344 () List!59195)

(declare-fun ++!12980 (List!59195 List!59195) List!59195)

(assert (=> b!5111885 (= res!2175934 (not (= (++!12980 knownP!20 lt!2105344) input!5745)))))

(declare-fun getSuffix!3234 (List!59195 List!59195) List!59195)

(assert (=> b!5111885 (= lt!2105344 (getSuffix!3234 input!5745 knownP!20))))

(declare-fun lt!2105343 () List!59195)

(declare-fun lt!2105331 () List!59195)

(assert (=> b!5111885 (= lt!2105343 (getSuffix!3234 knownP!20 lt!2105331))))

(assert (=> b!5111885 (isPrefix!5560 lt!2105331 knownP!20)))

(declare-datatypes ((Unit!150177 0))(
  ( (Unit!150178) )
))
(declare-fun lt!2105339 () Unit!150177)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!697 (List!59195 List!59195 List!59195) Unit!150177)

(assert (=> b!5111885 (= lt!2105339 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!697 knownP!20 lt!2105331 input!5745))))

(declare-fun lt!2105342 () C!28576)

(declare-fun derivationStepZipper!790 ((InoxSet Context!7078) C!28576) (InoxSet Context!7078))

(assert (=> b!5111885 (= (derivationZipper!54 baseZ!46 lt!2105331) (derivationStepZipper!790 z!4463 lt!2105342))))

(declare-fun lt!2105333 () Unit!150177)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!15 ((InoxSet Context!7078) (InoxSet Context!7078) List!59195 C!28576) Unit!150177)

(assert (=> b!5111885 (= lt!2105333 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!15 baseZ!46 z!4463 testedP!265 lt!2105342))))

(assert (=> b!5111885 (isPrefix!5560 lt!2105331 input!5745)))

(declare-fun lt!2105335 () Unit!150177)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!950 (List!59195 List!59195) Unit!150177)

(assert (=> b!5111885 (= lt!2105335 (lemmaAddHeadSuffixToPrefixStillPrefix!950 testedP!265 input!5745))))

(assert (=> b!5111885 (= lt!2105331 (++!12980 testedP!265 (Cons!59071 lt!2105342 Nil!59071)))))

(declare-fun lt!2105336 () List!59195)

(declare-fun head!10883 (List!59195) C!28576)

(assert (=> b!5111885 (= lt!2105342 (head!10883 lt!2105336))))

(assert (=> b!5111885 (= lt!2105336 (getSuffix!3234 input!5745 testedP!265))))

(declare-fun b!5111886 () Bool)

(declare-fun res!2175933 () Bool)

(declare-fun e!3188239 () Bool)

(assert (=> b!5111886 (=> res!2175933 e!3188239)))

(assert (=> b!5111886 (= res!2175933 (not (= (++!12980 testedP!265 lt!2105336) input!5745)))))

(declare-fun b!5111887 () Bool)

(declare-fun e!3188238 () Bool)

(declare-fun tp!1426345 () Bool)

(assert (=> b!5111887 (= e!3188238 (and tp_is_empty!37583 tp!1426345))))

(declare-fun b!5111888 () Bool)

(declare-fun e!3188232 () Bool)

(assert (=> b!5111888 (= e!3188233 e!3188232)))

(declare-fun res!2175927 () Bool)

(assert (=> b!5111888 (=> (not res!2175927) (not e!3188232))))

(assert (=> b!5111888 (= res!2175927 (>= lt!2105332 lt!2105341))))

(assert (=> b!5111888 (= lt!2105341 (size!39461 testedP!265))))

(assert (=> b!5111888 (= lt!2105332 (size!39461 knownP!20))))

(declare-fun setElem!29829 () Context!7078)

(declare-fun tp!1426347 () Bool)

(declare-fun setRes!29829 () Bool)

(declare-fun setNonEmpty!29830 () Bool)

(assert (=> setNonEmpty!29830 (= setRes!29829 (and tp!1426347 (inv!78568 setElem!29829) e!3188236))))

(declare-fun setRest!29829 () (InoxSet Context!7078))

(assert (=> setNonEmpty!29830 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7078 Bool)) false) setElem!29829 true) setRest!29829))))

(declare-fun b!5111889 () Bool)

(assert (=> b!5111889 (= e!3188239 true)))

(declare-fun lt!2105340 () List!59195)

(declare-fun lt!2105338 () List!59195)

(assert (=> b!5111889 (= lt!2105340 (++!12980 testedP!265 (++!12980 lt!2105338 lt!2105344)))))

(declare-fun lt!2105337 () Unit!150177)

(declare-fun lemmaConcatAssociativity!2738 (List!59195 List!59195 List!59195) Unit!150177)

(assert (=> b!5111889 (= lt!2105337 (lemmaConcatAssociativity!2738 testedP!265 lt!2105338 lt!2105344))))

(declare-fun b!5111890 () Bool)

(assert (=> b!5111890 (= e!3188231 e!3188239)))

(declare-fun res!2175925 () Bool)

(assert (=> b!5111890 (=> res!2175925 e!3188239)))

(assert (=> b!5111890 (= res!2175925 (not (= lt!2105340 input!5745)))))

(assert (=> b!5111890 (= lt!2105340 (++!12980 (++!12980 testedP!265 lt!2105338) lt!2105344))))

(declare-fun res!2175928 () Bool)

(assert (=> start!539156 (=> (not res!2175928) (not e!3188233))))

(assert (=> start!539156 (= res!2175928 (isPrefix!5560 testedP!265 input!5745))))

(assert (=> start!539156 e!3188233))

(assert (=> start!539156 e!3188237))

(declare-fun condSetEmpty!29829 () Bool)

(assert (=> start!539156 (= condSetEmpty!29829 (= z!4463 ((as const (Array Context!7078 Bool)) false)))))

(assert (=> start!539156 setRes!29830))

(declare-fun e!3188230 () Bool)

(assert (=> start!539156 e!3188230))

(declare-fun condSetEmpty!29830 () Bool)

(assert (=> start!539156 (= condSetEmpty!29830 (= baseZ!46 ((as const (Array Context!7078 Bool)) false)))))

(assert (=> start!539156 setRes!29829))

(assert (=> start!539156 e!3188238))

(declare-fun setIsEmpty!29829 () Bool)

(assert (=> setIsEmpty!29829 setRes!29829))

(declare-fun b!5111891 () Bool)

(assert (=> b!5111891 (= e!3188232 (not e!3188234))))

(declare-fun res!2175932 () Bool)

(assert (=> b!5111891 (=> res!2175932 e!3188234)))

(declare-fun matchZipper!823 ((InoxSet Context!7078) List!59195) Bool)

(assert (=> b!5111891 (= res!2175932 (not (matchZipper!823 z!4463 lt!2105338)))))

(assert (=> b!5111891 (= lt!2105338 (getSuffix!3234 knownP!20 testedP!265))))

(assert (=> b!5111891 (isPrefix!5560 testedP!265 knownP!20)))

(declare-fun lt!2105334 () Unit!150177)

(assert (=> b!5111891 (= lt!2105334 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!697 knownP!20 testedP!265 input!5745))))

(declare-fun b!5111892 () Bool)

(declare-fun tp!1426346 () Bool)

(assert (=> b!5111892 (= e!3188230 (and tp_is_empty!37583 tp!1426346))))

(declare-fun setIsEmpty!29830 () Bool)

(assert (=> setIsEmpty!29830 setRes!29830))

(declare-fun b!5111893 () Bool)

(declare-fun res!2175931 () Bool)

(assert (=> b!5111893 (=> (not res!2175931) (not e!3188232))))

(assert (=> b!5111893 (= res!2175931 (matchZipper!823 baseZ!46 knownP!20))))

(assert (= (and start!539156 res!2175928) b!5111884))

(assert (= (and b!5111884 res!2175930) b!5111888))

(assert (= (and b!5111888 res!2175927) b!5111893))

(assert (= (and b!5111893 res!2175931) b!5111891))

(assert (= (and b!5111891 (not res!2175932)) b!5111882))

(assert (= (and b!5111882 (not res!2175926)) b!5111880))

(assert (= (and b!5111880 (not res!2175924)) b!5111879))

(assert (= (and b!5111879 (not res!2175929)) b!5111877))

(assert (= (and b!5111877 (not res!2175923)) b!5111885))

(assert (= (and b!5111885 (not res!2175934)) b!5111890))

(assert (= (and b!5111890 (not res!2175925)) b!5111886))

(assert (= (and b!5111886 (not res!2175933)) b!5111889))

(get-info :version)

(assert (= (and start!539156 ((_ is Cons!59071) input!5745)) b!5111881))

(assert (= (and start!539156 condSetEmpty!29829) setIsEmpty!29830))

(assert (= (and start!539156 (not condSetEmpty!29829)) setNonEmpty!29829))

(assert (= setNonEmpty!29829 b!5111878))

(assert (= (and start!539156 ((_ is Cons!59071) testedP!265)) b!5111892))

(assert (= (and start!539156 condSetEmpty!29830) setIsEmpty!29829))

(assert (= (and start!539156 (not condSetEmpty!29830)) setNonEmpty!29830))

(assert (= setNonEmpty!29830 b!5111883))

(assert (= (and start!539156 ((_ is Cons!59071) knownP!20)) b!5111887))

(declare-fun m!6169448 () Bool)

(assert (=> b!5111877 m!6169448))

(declare-fun m!6169450 () Bool)

(assert (=> b!5111885 m!6169450))

(declare-fun m!6169452 () Bool)

(assert (=> b!5111885 m!6169452))

(declare-fun m!6169454 () Bool)

(assert (=> b!5111885 m!6169454))

(declare-fun m!6169456 () Bool)

(assert (=> b!5111885 m!6169456))

(declare-fun m!6169458 () Bool)

(assert (=> b!5111885 m!6169458))

(declare-fun m!6169460 () Bool)

(assert (=> b!5111885 m!6169460))

(declare-fun m!6169462 () Bool)

(assert (=> b!5111885 m!6169462))

(declare-fun m!6169464 () Bool)

(assert (=> b!5111885 m!6169464))

(declare-fun m!6169466 () Bool)

(assert (=> b!5111885 m!6169466))

(declare-fun m!6169468 () Bool)

(assert (=> b!5111885 m!6169468))

(declare-fun m!6169470 () Bool)

(assert (=> b!5111885 m!6169470))

(declare-fun m!6169472 () Bool)

(assert (=> b!5111885 m!6169472))

(declare-fun m!6169474 () Bool)

(assert (=> b!5111885 m!6169474))

(declare-fun m!6169476 () Bool)

(assert (=> b!5111880 m!6169476))

(declare-fun m!6169478 () Bool)

(assert (=> b!5111889 m!6169478))

(assert (=> b!5111889 m!6169478))

(declare-fun m!6169480 () Bool)

(assert (=> b!5111889 m!6169480))

(declare-fun m!6169482 () Bool)

(assert (=> b!5111889 m!6169482))

(declare-fun m!6169484 () Bool)

(assert (=> b!5111890 m!6169484))

(assert (=> b!5111890 m!6169484))

(declare-fun m!6169486 () Bool)

(assert (=> b!5111890 m!6169486))

(declare-fun m!6169488 () Bool)

(assert (=> setNonEmpty!29829 m!6169488))

(declare-fun m!6169490 () Bool)

(assert (=> b!5111893 m!6169490))

(declare-fun m!6169492 () Bool)

(assert (=> start!539156 m!6169492))

(declare-fun m!6169494 () Bool)

(assert (=> setNonEmpty!29830 m!6169494))

(declare-fun m!6169496 () Bool)

(assert (=> b!5111888 m!6169496))

(declare-fun m!6169498 () Bool)

(assert (=> b!5111888 m!6169498))

(declare-fun m!6169500 () Bool)

(assert (=> b!5111882 m!6169500))

(declare-fun m!6169502 () Bool)

(assert (=> b!5111891 m!6169502))

(declare-fun m!6169504 () Bool)

(assert (=> b!5111891 m!6169504))

(declare-fun m!6169506 () Bool)

(assert (=> b!5111891 m!6169506))

(declare-fun m!6169508 () Bool)

(assert (=> b!5111891 m!6169508))

(declare-fun m!6169510 () Bool)

(assert (=> b!5111886 m!6169510))

(declare-fun m!6169512 () Bool)

(assert (=> b!5111884 m!6169512))

(check-sat (not b!5111889) (not b!5111880) (not b!5111883) (not b!5111881) (not b!5111893) (not b!5111891) (not setNonEmpty!29830) (not b!5111884) (not b!5111890) (not setNonEmpty!29829) tp_is_empty!37583 (not b!5111878) (not b!5111877) (not b!5111892) (not b!5111885) (not b!5111888) (not b!5111882) (not b!5111887) (not b!5111886) (not start!539156))
(check-sat)
