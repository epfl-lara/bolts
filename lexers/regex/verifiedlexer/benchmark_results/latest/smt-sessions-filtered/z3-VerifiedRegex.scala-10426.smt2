; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539028 () Bool)

(assert start!539028)

(declare-datatypes ((C!28552 0))(
  ( (C!28553 (val!23928 Int)) )
))
(declare-datatypes ((Regex!14143 0))(
  ( (ElementMatch!14143 (c!878061 C!28552)) (Concat!22988 (regOne!28798 Regex!14143) (regTwo!28798 Regex!14143)) (EmptyExpr!14143) (Star!14143 (reg!14472 Regex!14143)) (EmptyLang!14143) (Union!14143 (regOne!28799 Regex!14143) (regTwo!28799 Regex!14143)) )
))
(declare-datatypes ((List!59168 0))(
  ( (Nil!59044) (Cons!59044 (h!65492 Regex!14143) (t!372169 List!59168)) )
))
(declare-datatypes ((Context!7054 0))(
  ( (Context!7055 (exprs!4027 List!59168)) )
))
(declare-fun setElem!29741 () Context!7054)

(declare-fun setRes!29741 () Bool)

(declare-fun tp!1426009 () Bool)

(declare-fun setNonEmpty!29741 () Bool)

(declare-fun e!3187673 () Bool)

(declare-fun inv!78538 (Context!7054) Bool)

(assert (=> setNonEmpty!29741 (= setRes!29741 (and tp!1426009 (inv!78538 setElem!29741) e!3187673))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!7054))

(declare-fun setRest!29742 () (InoxSet Context!7054))

(assert (=> setNonEmpty!29741 (= z!4463 ((_ map or) (store ((as const (Array Context!7054 Bool)) false) setElem!29741 true) setRest!29742))))

(declare-fun b!5110946 () Bool)

(declare-fun res!2175453 () Bool)

(declare-fun e!3187671 () Bool)

(assert (=> b!5110946 (=> res!2175453 e!3187671)))

(declare-fun lt!2104779 () Int)

(declare-fun lt!2104780 () Int)

(assert (=> b!5110946 (= res!2175453 (= lt!2104779 lt!2104780))))

(declare-fun b!5110947 () Bool)

(declare-fun e!3187670 () Bool)

(declare-fun tp_is_empty!37559 () Bool)

(declare-fun tp!1426011 () Bool)

(assert (=> b!5110947 (= e!3187670 (and tp_is_empty!37559 tp!1426011))))

(declare-fun setIsEmpty!29741 () Bool)

(assert (=> setIsEmpty!29741 setRes!29741))

(declare-fun b!5110948 () Bool)

(declare-fun res!2175452 () Bool)

(assert (=> b!5110948 (=> res!2175452 e!3187671)))

(declare-fun lostCauseZipper!1029 ((InoxSet Context!7054)) Bool)

(assert (=> b!5110948 (= res!2175452 (lostCauseZipper!1029 z!4463))))

(declare-fun tp!1426006 () Bool)

(declare-fun e!3187672 () Bool)

(declare-fun setElem!29742 () Context!7054)

(declare-fun setNonEmpty!29742 () Bool)

(declare-fun setRes!29742 () Bool)

(assert (=> setNonEmpty!29742 (= setRes!29742 (and tp!1426006 (inv!78538 setElem!29742) e!3187672))))

(declare-fun baseZ!46 () (InoxSet Context!7054))

(declare-fun setRest!29741 () (InoxSet Context!7054))

(assert (=> setNonEmpty!29742 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7054 Bool)) false) setElem!29742 true) setRest!29741))))

(declare-fun b!5110949 () Bool)

(declare-fun tp!1426010 () Bool)

(assert (=> b!5110949 (= e!3187673 tp!1426010)))

(declare-fun b!5110950 () Bool)

(declare-fun e!3187668 () Bool)

(declare-fun e!3187666 () Bool)

(assert (=> b!5110950 (= e!3187668 e!3187666)))

(declare-fun res!2175455 () Bool)

(assert (=> b!5110950 (=> (not res!2175455) (not e!3187666))))

(assert (=> b!5110950 (= res!2175455 (>= lt!2104780 lt!2104779))))

(declare-datatypes ((List!59169 0))(
  ( (Nil!59045) (Cons!59045 (h!65493 C!28552) (t!372170 List!59169)) )
))
(declare-fun testedP!265 () List!59169)

(declare-fun size!39449 (List!59169) Int)

(assert (=> b!5110950 (= lt!2104779 (size!39449 testedP!265))))

(declare-fun knownP!20 () List!59169)

(assert (=> b!5110950 (= lt!2104780 (size!39449 knownP!20))))

(declare-fun b!5110951 () Bool)

(declare-fun tp!1426005 () Bool)

(assert (=> b!5110951 (= e!3187672 tp!1426005)))

(declare-fun b!5110952 () Bool)

(declare-fun res!2175456 () Bool)

(assert (=> b!5110952 (=> res!2175456 e!3187671)))

(declare-fun input!5745 () List!59169)

(assert (=> b!5110952 (= res!2175456 (>= lt!2104779 (size!39449 input!5745)))))

(declare-fun b!5110953 () Bool)

(declare-fun res!2175451 () Bool)

(assert (=> b!5110953 (=> res!2175451 e!3187671)))

(declare-fun derivationZipper!42 ((InoxSet Context!7054) List!59169) (InoxSet Context!7054))

(assert (=> b!5110953 (= res!2175451 (not (= (derivationZipper!42 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5110954 () Bool)

(declare-fun res!2175449 () Bool)

(assert (=> b!5110954 (=> (not res!2175449) (not e!3187666))))

(declare-fun matchZipper!811 ((InoxSet Context!7054) List!59169) Bool)

(assert (=> b!5110954 (= res!2175449 (matchZipper!811 baseZ!46 knownP!20))))

(declare-fun res!2175450 () Bool)

(assert (=> start!539028 (=> (not res!2175450) (not e!3187668))))

(declare-fun isPrefix!5548 (List!59169 List!59169) Bool)

(assert (=> start!539028 (= res!2175450 (isPrefix!5548 testedP!265 input!5745))))

(assert (=> start!539028 e!3187668))

(declare-fun e!3187669 () Bool)

(assert (=> start!539028 e!3187669))

(declare-fun condSetEmpty!29742 () Bool)

(assert (=> start!539028 (= condSetEmpty!29742 (= z!4463 ((as const (Array Context!7054 Bool)) false)))))

(assert (=> start!539028 setRes!29741))

(declare-fun e!3187667 () Bool)

(assert (=> start!539028 e!3187667))

(declare-fun condSetEmpty!29741 () Bool)

(assert (=> start!539028 (= condSetEmpty!29741 (= baseZ!46 ((as const (Array Context!7054 Bool)) false)))))

(assert (=> start!539028 setRes!29742))

(assert (=> start!539028 e!3187670))

(declare-fun b!5110955 () Bool)

(assert (=> b!5110955 (= e!3187666 (not e!3187671))))

(declare-fun res!2175454 () Bool)

(assert (=> b!5110955 (=> res!2175454 e!3187671)))

(declare-fun getSuffix!3222 (List!59169 List!59169) List!59169)

(assert (=> b!5110955 (= res!2175454 (not (matchZipper!811 z!4463 (getSuffix!3222 knownP!20 testedP!265))))))

(assert (=> b!5110955 (isPrefix!5548 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150147 0))(
  ( (Unit!150148) )
))
(declare-fun lt!2104776 () Unit!150147)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!685 (List!59169 List!59169 List!59169) Unit!150147)

(assert (=> b!5110955 (= lt!2104776 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!685 knownP!20 testedP!265 input!5745))))

(declare-fun b!5110956 () Bool)

(declare-fun res!2175448 () Bool)

(assert (=> b!5110956 (=> (not res!2175448) (not e!3187668))))

(assert (=> b!5110956 (= res!2175448 (isPrefix!5548 knownP!20 input!5745))))

(declare-fun setIsEmpty!29742 () Bool)

(assert (=> setIsEmpty!29742 setRes!29742))

(declare-fun b!5110957 () Bool)

(declare-fun tp!1426008 () Bool)

(assert (=> b!5110957 (= e!3187667 (and tp_is_empty!37559 tp!1426008))))

(declare-fun b!5110958 () Bool)

(declare-fun tp!1426007 () Bool)

(assert (=> b!5110958 (= e!3187669 (and tp_is_empty!37559 tp!1426007))))

(declare-fun b!5110959 () Bool)

(assert (=> b!5110959 (= e!3187671 true)))

(declare-fun lt!2104775 () C!28552)

(declare-fun lt!2104778 () List!59169)

(declare-fun derivationStepZipper!778 ((InoxSet Context!7054) C!28552) (InoxSet Context!7054))

(assert (=> b!5110959 (= (derivationZipper!42 baseZ!46 lt!2104778) (derivationStepZipper!778 z!4463 lt!2104775))))

(declare-fun lt!2104774 () Unit!150147)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!3 ((InoxSet Context!7054) (InoxSet Context!7054) List!59169 C!28552) Unit!150147)

(assert (=> b!5110959 (= lt!2104774 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!3 baseZ!46 z!4463 testedP!265 lt!2104775))))

(assert (=> b!5110959 (isPrefix!5548 lt!2104778 input!5745)))

(declare-fun lt!2104777 () Unit!150147)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!938 (List!59169 List!59169) Unit!150147)

(assert (=> b!5110959 (= lt!2104777 (lemmaAddHeadSuffixToPrefixStillPrefix!938 testedP!265 input!5745))))

(declare-fun ++!12968 (List!59169 List!59169) List!59169)

(assert (=> b!5110959 (= lt!2104778 (++!12968 testedP!265 (Cons!59045 lt!2104775 Nil!59045)))))

(declare-fun head!10871 (List!59169) C!28552)

(assert (=> b!5110959 (= lt!2104775 (head!10871 (getSuffix!3222 input!5745 testedP!265)))))

(assert (= (and start!539028 res!2175450) b!5110956))

(assert (= (and b!5110956 res!2175448) b!5110950))

(assert (= (and b!5110950 res!2175455) b!5110954))

(assert (= (and b!5110954 res!2175449) b!5110955))

(assert (= (and b!5110955 (not res!2175454)) b!5110953))

(assert (= (and b!5110953 (not res!2175451)) b!5110948))

(assert (= (and b!5110948 (not res!2175452)) b!5110946))

(assert (= (and b!5110946 (not res!2175453)) b!5110952))

(assert (= (and b!5110952 (not res!2175456)) b!5110959))

(get-info :version)

(assert (= (and start!539028 ((_ is Cons!59045) input!5745)) b!5110958))

(assert (= (and start!539028 condSetEmpty!29742) setIsEmpty!29741))

(assert (= (and start!539028 (not condSetEmpty!29742)) setNonEmpty!29741))

(assert (= setNonEmpty!29741 b!5110949))

(assert (= (and start!539028 ((_ is Cons!59045) testedP!265)) b!5110957))

(assert (= (and start!539028 condSetEmpty!29741) setIsEmpty!29742))

(assert (= (and start!539028 (not condSetEmpty!29741)) setNonEmpty!29742))

(assert (= setNonEmpty!29742 b!5110951))

(assert (= (and start!539028 ((_ is Cons!59045) knownP!20)) b!5110947))

(declare-fun m!6168358 () Bool)

(assert (=> setNonEmpty!29741 m!6168358))

(declare-fun m!6168360 () Bool)

(assert (=> b!5110954 m!6168360))

(declare-fun m!6168362 () Bool)

(assert (=> b!5110955 m!6168362))

(assert (=> b!5110955 m!6168362))

(declare-fun m!6168364 () Bool)

(assert (=> b!5110955 m!6168364))

(declare-fun m!6168366 () Bool)

(assert (=> b!5110955 m!6168366))

(declare-fun m!6168368 () Bool)

(assert (=> b!5110955 m!6168368))

(declare-fun m!6168370 () Bool)

(assert (=> b!5110948 m!6168370))

(declare-fun m!6168372 () Bool)

(assert (=> setNonEmpty!29742 m!6168372))

(declare-fun m!6168374 () Bool)

(assert (=> b!5110956 m!6168374))

(declare-fun m!6168376 () Bool)

(assert (=> b!5110959 m!6168376))

(declare-fun m!6168378 () Bool)

(assert (=> b!5110959 m!6168378))

(declare-fun m!6168380 () Bool)

(assert (=> b!5110959 m!6168380))

(declare-fun m!6168382 () Bool)

(assert (=> b!5110959 m!6168382))

(declare-fun m!6168384 () Bool)

(assert (=> b!5110959 m!6168384))

(declare-fun m!6168386 () Bool)

(assert (=> b!5110959 m!6168386))

(declare-fun m!6168388 () Bool)

(assert (=> b!5110959 m!6168388))

(assert (=> b!5110959 m!6168376))

(declare-fun m!6168390 () Bool)

(assert (=> b!5110959 m!6168390))

(declare-fun m!6168392 () Bool)

(assert (=> b!5110952 m!6168392))

(declare-fun m!6168394 () Bool)

(assert (=> b!5110953 m!6168394))

(declare-fun m!6168396 () Bool)

(assert (=> b!5110950 m!6168396))

(declare-fun m!6168398 () Bool)

(assert (=> b!5110950 m!6168398))

(declare-fun m!6168400 () Bool)

(assert (=> start!539028 m!6168400))

(check-sat (not b!5110948) (not b!5110959) (not b!5110947) (not b!5110958) (not setNonEmpty!29741) (not setNonEmpty!29742) (not b!5110949) (not b!5110955) (not b!5110951) (not b!5110953) tp_is_empty!37559 (not b!5110952) (not b!5110956) (not b!5110957) (not b!5110950) (not b!5110954) (not start!539028))
(check-sat)
