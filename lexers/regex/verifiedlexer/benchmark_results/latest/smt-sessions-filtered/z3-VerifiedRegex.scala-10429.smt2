; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539092 () Bool)

(assert start!539092)

(declare-fun b!5111404 () Bool)

(declare-fun e!3187946 () Bool)

(assert (=> b!5111404 (= e!3187946 true)))

(declare-fun lt!2105031 () Int)

(declare-datatypes ((C!28564 0))(
  ( (C!28565 (val!23934 Int)) )
))
(declare-datatypes ((List!59182 0))(
  ( (Nil!59058) (Cons!59058 (h!65506 C!28564) (t!372183 List!59182)) )
))
(declare-fun lt!2105034 () List!59182)

(declare-fun size!39455 (List!59182) Int)

(assert (=> b!5111404 (= lt!2105031 (size!39455 lt!2105034))))

(declare-fun knownP!20 () List!59182)

(declare-fun isPrefix!5554 (List!59182 List!59182) Bool)

(assert (=> b!5111404 (isPrefix!5554 lt!2105034 knownP!20)))

(declare-fun input!5745 () List!59182)

(declare-datatypes ((Unit!150163 0))(
  ( (Unit!150164) )
))
(declare-fun lt!2105030 () Unit!150163)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!691 (List!59182 List!59182 List!59182) Unit!150163)

(assert (=> b!5111404 (= lt!2105030 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!691 knownP!20 lt!2105034 input!5745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14149 0))(
  ( (ElementMatch!14149 (c!878137 C!28564)) (Concat!22994 (regOne!28810 Regex!14149) (regTwo!28810 Regex!14149)) (EmptyExpr!14149) (Star!14149 (reg!14478 Regex!14149)) (EmptyLang!14149) (Union!14149 (regOne!28811 Regex!14149) (regTwo!28811 Regex!14149)) )
))
(declare-datatypes ((List!59183 0))(
  ( (Nil!59059) (Cons!59059 (h!65507 Regex!14149) (t!372184 List!59183)) )
))
(declare-datatypes ((Context!7066 0))(
  ( (Context!7067 (exprs!4033 List!59183)) )
))
(declare-fun z!4463 () (InoxSet Context!7066))

(declare-fun baseZ!46 () (InoxSet Context!7066))

(declare-fun lt!2105036 () C!28564)

(declare-fun derivationZipper!48 ((InoxSet Context!7066) List!59182) (InoxSet Context!7066))

(declare-fun derivationStepZipper!784 ((InoxSet Context!7066) C!28564) (InoxSet Context!7066))

(assert (=> b!5111404 (= (derivationZipper!48 baseZ!46 lt!2105034) (derivationStepZipper!784 z!4463 lt!2105036))))

(declare-fun lt!2105032 () Unit!150163)

(declare-fun testedP!265 () List!59182)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!9 ((InoxSet Context!7066) (InoxSet Context!7066) List!59182 C!28564) Unit!150163)

(assert (=> b!5111404 (= lt!2105032 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!9 baseZ!46 z!4463 testedP!265 lt!2105036))))

(assert (=> b!5111404 (isPrefix!5554 lt!2105034 input!5745)))

(declare-fun lt!2105037 () Unit!150163)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!944 (List!59182 List!59182) Unit!150163)

(assert (=> b!5111404 (= lt!2105037 (lemmaAddHeadSuffixToPrefixStillPrefix!944 testedP!265 input!5745))))

(declare-fun ++!12974 (List!59182 List!59182) List!59182)

(assert (=> b!5111404 (= lt!2105034 (++!12974 testedP!265 (Cons!59058 lt!2105036 Nil!59058)))))

(declare-fun head!10877 (List!59182) C!28564)

(declare-fun getSuffix!3228 (List!59182 List!59182) List!59182)

(assert (=> b!5111404 (= lt!2105036 (head!10877 (getSuffix!3228 input!5745 testedP!265)))))

(declare-fun setRes!29786 () Bool)

(declare-fun setNonEmpty!29785 () Bool)

(declare-fun setElem!29786 () Context!7066)

(declare-fun e!3187945 () Bool)

(declare-fun tp!1426173 () Bool)

(declare-fun inv!78553 (Context!7066) Bool)

(assert (=> setNonEmpty!29785 (= setRes!29786 (and tp!1426173 (inv!78553 setElem!29786) e!3187945))))

(declare-fun setRest!29785 () (InoxSet Context!7066))

(assert (=> setNonEmpty!29785 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7066 Bool)) false) setElem!29786 true) setRest!29785))))

(declare-fun b!5111405 () Bool)

(declare-fun res!2175682 () Bool)

(declare-fun e!3187944 () Bool)

(assert (=> b!5111405 (=> (not res!2175682) (not e!3187944))))

(declare-fun matchZipper!817 ((InoxSet Context!7066) List!59182) Bool)

(assert (=> b!5111405 (= res!2175682 (matchZipper!817 baseZ!46 knownP!20))))

(declare-fun b!5111406 () Bool)

(declare-fun tp!1426176 () Bool)

(assert (=> b!5111406 (= e!3187945 tp!1426176)))

(declare-fun b!5111407 () Bool)

(declare-fun e!3187941 () Bool)

(assert (=> b!5111407 (= e!3187941 e!3187944)))

(declare-fun res!2175685 () Bool)

(assert (=> b!5111407 (=> (not res!2175685) (not e!3187944))))

(declare-fun lt!2105038 () Int)

(declare-fun lt!2105033 () Int)

(assert (=> b!5111407 (= res!2175685 (>= lt!2105038 lt!2105033))))

(assert (=> b!5111407 (= lt!2105033 (size!39455 testedP!265))))

(assert (=> b!5111407 (= lt!2105038 (size!39455 knownP!20))))

(declare-fun b!5111408 () Bool)

(declare-fun res!2175679 () Bool)

(assert (=> b!5111408 (=> res!2175679 e!3187946)))

(assert (=> b!5111408 (= res!2175679 (= lt!2105033 lt!2105038))))

(declare-fun setIsEmpty!29785 () Bool)

(declare-fun setRes!29785 () Bool)

(assert (=> setIsEmpty!29785 setRes!29785))

(declare-fun b!5111409 () Bool)

(declare-fun e!3187942 () Bool)

(declare-fun tp_is_empty!37571 () Bool)

(declare-fun tp!1426178 () Bool)

(assert (=> b!5111409 (= e!3187942 (and tp_is_empty!37571 tp!1426178))))

(declare-fun b!5111410 () Bool)

(declare-fun e!3187940 () Bool)

(declare-fun tp!1426177 () Bool)

(assert (=> b!5111410 (= e!3187940 tp!1426177)))

(declare-fun b!5111411 () Bool)

(declare-fun e!3187943 () Bool)

(declare-fun tp!1426179 () Bool)

(assert (=> b!5111411 (= e!3187943 (and tp_is_empty!37571 tp!1426179))))

(declare-fun res!2175683 () Bool)

(assert (=> start!539092 (=> (not res!2175683) (not e!3187941))))

(assert (=> start!539092 (= res!2175683 (isPrefix!5554 testedP!265 input!5745))))

(assert (=> start!539092 e!3187941))

(declare-fun e!3187947 () Bool)

(assert (=> start!539092 e!3187947))

(declare-fun condSetEmpty!29786 () Bool)

(assert (=> start!539092 (= condSetEmpty!29786 (= z!4463 ((as const (Array Context!7066 Bool)) false)))))

(assert (=> start!539092 setRes!29785))

(assert (=> start!539092 e!3187943))

(declare-fun condSetEmpty!29785 () Bool)

(assert (=> start!539092 (= condSetEmpty!29785 (= baseZ!46 ((as const (Array Context!7066 Bool)) false)))))

(assert (=> start!539092 setRes!29786))

(assert (=> start!539092 e!3187942))

(declare-fun b!5111412 () Bool)

(declare-fun res!2175678 () Bool)

(assert (=> b!5111412 (=> (not res!2175678) (not e!3187941))))

(assert (=> b!5111412 (= res!2175678 (isPrefix!5554 knownP!20 input!5745))))

(declare-fun b!5111413 () Bool)

(declare-fun res!2175686 () Bool)

(assert (=> b!5111413 (=> res!2175686 e!3187946)))

(declare-fun lostCauseZipper!1035 ((InoxSet Context!7066)) Bool)

(assert (=> b!5111413 (= res!2175686 (lostCauseZipper!1035 z!4463))))

(declare-fun b!5111414 () Bool)

(assert (=> b!5111414 (= e!3187944 (not e!3187946))))

(declare-fun res!2175681 () Bool)

(assert (=> b!5111414 (=> res!2175681 e!3187946)))

(assert (=> b!5111414 (= res!2175681 (not (matchZipper!817 z!4463 (getSuffix!3228 knownP!20 testedP!265))))))

(assert (=> b!5111414 (isPrefix!5554 testedP!265 knownP!20)))

(declare-fun lt!2105035 () Unit!150163)

(assert (=> b!5111414 (= lt!2105035 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!691 knownP!20 testedP!265 input!5745))))

(declare-fun b!5111415 () Bool)

(declare-fun tp!1426174 () Bool)

(assert (=> b!5111415 (= e!3187947 (and tp_is_empty!37571 tp!1426174))))

(declare-fun setIsEmpty!29786 () Bool)

(assert (=> setIsEmpty!29786 setRes!29786))

(declare-fun b!5111416 () Bool)

(declare-fun res!2175680 () Bool)

(assert (=> b!5111416 (=> res!2175680 e!3187946)))

(assert (=> b!5111416 (= res!2175680 (>= lt!2105033 (size!39455 input!5745)))))

(declare-fun setNonEmpty!29786 () Bool)

(declare-fun setElem!29785 () Context!7066)

(declare-fun tp!1426175 () Bool)

(assert (=> setNonEmpty!29786 (= setRes!29785 (and tp!1426175 (inv!78553 setElem!29785) e!3187940))))

(declare-fun setRest!29786 () (InoxSet Context!7066))

(assert (=> setNonEmpty!29786 (= z!4463 ((_ map or) (store ((as const (Array Context!7066 Bool)) false) setElem!29785 true) setRest!29786))))

(declare-fun b!5111417 () Bool)

(declare-fun res!2175684 () Bool)

(assert (=> b!5111417 (=> res!2175684 e!3187946)))

(assert (=> b!5111417 (= res!2175684 (not (= (derivationZipper!48 baseZ!46 testedP!265) z!4463)))))

(assert (= (and start!539092 res!2175683) b!5111412))

(assert (= (and b!5111412 res!2175678) b!5111407))

(assert (= (and b!5111407 res!2175685) b!5111405))

(assert (= (and b!5111405 res!2175682) b!5111414))

(assert (= (and b!5111414 (not res!2175681)) b!5111417))

(assert (= (and b!5111417 (not res!2175684)) b!5111413))

(assert (= (and b!5111413 (not res!2175686)) b!5111408))

(assert (= (and b!5111408 (not res!2175679)) b!5111416))

(assert (= (and b!5111416 (not res!2175680)) b!5111404))

(get-info :version)

(assert (= (and start!539092 ((_ is Cons!59058) input!5745)) b!5111415))

(assert (= (and start!539092 condSetEmpty!29786) setIsEmpty!29785))

(assert (= (and start!539092 (not condSetEmpty!29786)) setNonEmpty!29786))

(assert (= setNonEmpty!29786 b!5111410))

(assert (= (and start!539092 ((_ is Cons!59058) testedP!265)) b!5111411))

(assert (= (and start!539092 condSetEmpty!29785) setIsEmpty!29786))

(assert (= (and start!539092 (not condSetEmpty!29785)) setNonEmpty!29785))

(assert (= setNonEmpty!29785 b!5111406))

(assert (= (and start!539092 ((_ is Cons!59058) knownP!20)) b!5111409))

(declare-fun m!6168884 () Bool)

(assert (=> start!539092 m!6168884))

(declare-fun m!6168886 () Bool)

(assert (=> setNonEmpty!29785 m!6168886))

(declare-fun m!6168888 () Bool)

(assert (=> b!5111414 m!6168888))

(assert (=> b!5111414 m!6168888))

(declare-fun m!6168890 () Bool)

(assert (=> b!5111414 m!6168890))

(declare-fun m!6168892 () Bool)

(assert (=> b!5111414 m!6168892))

(declare-fun m!6168894 () Bool)

(assert (=> b!5111414 m!6168894))

(declare-fun m!6168896 () Bool)

(assert (=> b!5111407 m!6168896))

(declare-fun m!6168898 () Bool)

(assert (=> b!5111407 m!6168898))

(declare-fun m!6168900 () Bool)

(assert (=> b!5111412 m!6168900))

(declare-fun m!6168902 () Bool)

(assert (=> b!5111417 m!6168902))

(declare-fun m!6168904 () Bool)

(assert (=> b!5111416 m!6168904))

(declare-fun m!6168906 () Bool)

(assert (=> setNonEmpty!29786 m!6168906))

(declare-fun m!6168908 () Bool)

(assert (=> b!5111405 m!6168908))

(declare-fun m!6168910 () Bool)

(assert (=> b!5111413 m!6168910))

(declare-fun m!6168912 () Bool)

(assert (=> b!5111404 m!6168912))

(declare-fun m!6168914 () Bool)

(assert (=> b!5111404 m!6168914))

(declare-fun m!6168916 () Bool)

(assert (=> b!5111404 m!6168916))

(declare-fun m!6168918 () Bool)

(assert (=> b!5111404 m!6168918))

(declare-fun m!6168920 () Bool)

(assert (=> b!5111404 m!6168920))

(declare-fun m!6168922 () Bool)

(assert (=> b!5111404 m!6168922))

(declare-fun m!6168924 () Bool)

(assert (=> b!5111404 m!6168924))

(declare-fun m!6168926 () Bool)

(assert (=> b!5111404 m!6168926))

(declare-fun m!6168928 () Bool)

(assert (=> b!5111404 m!6168928))

(assert (=> b!5111404 m!6168912))

(declare-fun m!6168930 () Bool)

(assert (=> b!5111404 m!6168930))

(declare-fun m!6168932 () Bool)

(assert (=> b!5111404 m!6168932))

(check-sat (not b!5111405) (not b!5111411) (not b!5111409) (not b!5111406) (not b!5111417) (not b!5111412) (not b!5111404) (not b!5111415) (not b!5111416) (not b!5111407) (not b!5111410) (not b!5111413) (not setNonEmpty!29785) tp_is_empty!37571 (not start!539092) (not setNonEmpty!29786) (not b!5111414))
(check-sat)
