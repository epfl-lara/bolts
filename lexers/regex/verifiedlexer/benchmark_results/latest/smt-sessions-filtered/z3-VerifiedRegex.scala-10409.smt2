; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538580 () Bool)

(assert start!538580)

(declare-fun setRes!29481 () Bool)

(declare-fun e!3185732 () Bool)

(declare-fun tp!1424901 () Bool)

(declare-datatypes ((C!28484 0))(
  ( (C!28485 (val!23894 Int)) )
))
(declare-datatypes ((Regex!14109 0))(
  ( (ElementMatch!14109 (c!877417 C!28484)) (Concat!22954 (regOne!28730 Regex!14109) (regTwo!28730 Regex!14109)) (EmptyExpr!14109) (Star!14109 (reg!14438 Regex!14109)) (EmptyLang!14109) (Union!14109 (regOne!28731 Regex!14109) (regTwo!28731 Regex!14109)) )
))
(declare-datatypes ((List!59088 0))(
  ( (Nil!58964) (Cons!58964 (h!65412 Regex!14109) (t!372089 List!59088)) )
))
(declare-datatypes ((Context!6986 0))(
  ( (Context!6987 (exprs!3993 List!59088)) )
))
(declare-fun setElem!29481 () Context!6986)

(declare-fun setNonEmpty!29481 () Bool)

(declare-fun inv!78453 (Context!6986) Bool)

(assert (=> setNonEmpty!29481 (= setRes!29481 (and tp!1424901 (inv!78453 setElem!29481) e!3185732))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4463 () (InoxSet Context!6986))

(declare-fun setRest!29482 () (InoxSet Context!6986))

(assert (=> setNonEmpty!29481 (= z!4463 ((_ map or) (store ((as const (Array Context!6986 Bool)) false) setElem!29481 true) setRest!29482))))

(declare-fun b!5107820 () Bool)

(declare-fun res!2174135 () Bool)

(declare-fun e!3185733 () Bool)

(assert (=> b!5107820 (=> res!2174135 e!3185733)))

(declare-fun lostCauseZipper!995 ((InoxSet Context!6986)) Bool)

(assert (=> b!5107820 (= res!2174135 (not (lostCauseZipper!995 z!4463)))))

(declare-fun setRes!29482 () Bool)

(declare-fun setElem!29482 () Context!6986)

(declare-fun tp!1424900 () Bool)

(declare-fun e!3185737 () Bool)

(declare-fun setNonEmpty!29482 () Bool)

(assert (=> setNonEmpty!29482 (= setRes!29482 (and tp!1424900 (inv!78453 setElem!29482) e!3185737))))

(declare-fun baseZ!46 () (InoxSet Context!6986))

(declare-fun setRest!29481 () (InoxSet Context!6986))

(assert (=> setNonEmpty!29482 (= baseZ!46 ((_ map or) (store ((as const (Array Context!6986 Bool)) false) setElem!29482 true) setRest!29481))))

(declare-fun b!5107821 () Bool)

(declare-fun res!2174136 () Bool)

(declare-fun e!3185739 () Bool)

(assert (=> b!5107821 (=> (not res!2174136) (not e!3185739))))

(declare-datatypes ((List!59089 0))(
  ( (Nil!58965) (Cons!58965 (h!65413 C!28484) (t!372090 List!59089)) )
))
(declare-fun knownP!20 () List!59089)

(declare-fun input!5745 () List!59089)

(declare-fun isPrefix!5514 (List!59089 List!59089) Bool)

(assert (=> b!5107821 (= res!2174136 (isPrefix!5514 knownP!20 input!5745))))

(declare-fun b!5107822 () Bool)

(declare-fun res!2174134 () Bool)

(assert (=> b!5107822 (=> (not res!2174134) (not e!3185739))))

(declare-fun testedP!265 () List!59089)

(declare-fun size!39415 (List!59089) Int)

(assert (=> b!5107822 (= res!2174134 (>= (size!39415 knownP!20) (size!39415 testedP!265)))))

(declare-fun b!5107823 () Bool)

(declare-fun tp!1424905 () Bool)

(assert (=> b!5107823 (= e!3185737 tp!1424905)))

(declare-fun setIsEmpty!29481 () Bool)

(assert (=> setIsEmpty!29481 setRes!29481))

(declare-fun b!5107824 () Bool)

(declare-fun e!3185736 () Bool)

(declare-fun tp_is_empty!37491 () Bool)

(declare-fun tp!1424903 () Bool)

(assert (=> b!5107824 (= e!3185736 (and tp_is_empty!37491 tp!1424903))))

(declare-fun b!5107825 () Bool)

(declare-fun e!3185735 () Bool)

(declare-fun tp!1424899 () Bool)

(assert (=> b!5107825 (= e!3185735 (and tp_is_empty!37491 tp!1424899))))

(declare-fun res!2174132 () Bool)

(assert (=> start!538580 (=> (not res!2174132) (not e!3185739))))

(assert (=> start!538580 (= res!2174132 (isPrefix!5514 testedP!265 input!5745))))

(assert (=> start!538580 e!3185739))

(declare-fun e!3185738 () Bool)

(assert (=> start!538580 e!3185738))

(declare-fun condSetEmpty!29482 () Bool)

(assert (=> start!538580 (= condSetEmpty!29482 (= z!4463 ((as const (Array Context!6986 Bool)) false)))))

(assert (=> start!538580 setRes!29481))

(assert (=> start!538580 e!3185736))

(declare-fun condSetEmpty!29481 () Bool)

(assert (=> start!538580 (= condSetEmpty!29481 (= baseZ!46 ((as const (Array Context!6986 Bool)) false)))))

(assert (=> start!538580 setRes!29482))

(assert (=> start!538580 e!3185735))

(declare-fun b!5107826 () Bool)

(declare-fun tp!1424904 () Bool)

(assert (=> b!5107826 (= e!3185732 tp!1424904)))

(declare-fun b!5107827 () Bool)

(declare-fun tp!1424902 () Bool)

(assert (=> b!5107827 (= e!3185738 (and tp_is_empty!37491 tp!1424902))))

(declare-fun b!5107828 () Bool)

(declare-fun e!3185734 () Bool)

(assert (=> b!5107828 (= e!3185739 (not e!3185734))))

(declare-fun res!2174138 () Bool)

(assert (=> b!5107828 (=> res!2174138 e!3185734)))

(declare-fun lt!2102905 () List!59089)

(declare-fun matchZipper!777 ((InoxSet Context!6986) List!59089) Bool)

(assert (=> b!5107828 (= res!2174138 (not (matchZipper!777 z!4463 lt!2102905)))))

(declare-fun getSuffix!3188 (List!59089 List!59089) List!59089)

(assert (=> b!5107828 (= lt!2102905 (getSuffix!3188 knownP!20 testedP!265))))

(assert (=> b!5107828 (isPrefix!5514 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150031 0))(
  ( (Unit!150032) )
))
(declare-fun lt!2102906 () Unit!150031)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!651 (List!59089 List!59089 List!59089) Unit!150031)

(assert (=> b!5107828 (= lt!2102906 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!651 knownP!20 testedP!265 input!5745))))

(declare-fun b!5107829 () Bool)

(declare-fun res!2174137 () Bool)

(assert (=> b!5107829 (=> (not res!2174137) (not e!3185739))))

(assert (=> b!5107829 (= res!2174137 (matchZipper!777 baseZ!46 knownP!20))))

(declare-fun setIsEmpty!29482 () Bool)

(assert (=> setIsEmpty!29482 setRes!29482))

(declare-fun b!5107830 () Bool)

(assert (=> b!5107830 (= e!3185734 e!3185733)))

(declare-fun res!2174133 () Bool)

(assert (=> b!5107830 (=> res!2174133 e!3185733)))

(declare-fun lt!2102904 () (InoxSet Context!6986))

(assert (=> b!5107830 (= res!2174133 (not (= lt!2102904 z!4463)))))

(declare-fun derivationZipper!8 ((InoxSet Context!6986) List!59089) (InoxSet Context!6986))

(assert (=> b!5107830 (= lt!2102904 (derivationZipper!8 baseZ!46 testedP!265))))

(declare-fun b!5107831 () Bool)

(assert (=> b!5107831 (= e!3185733 true)))

(declare-fun lt!2102902 () List!59089)

(declare-fun ++!12944 (List!59089 List!59089) List!59089)

(assert (=> b!5107831 (= lt!2102902 (++!12944 testedP!265 lt!2102905))))

(assert (=> b!5107831 (= (matchZipper!777 baseZ!46 testedP!265) (matchZipper!777 lt!2102904 Nil!58965))))

(declare-fun lt!2102903 () Unit!150031)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!4 ((InoxSet Context!6986) List!59089) Unit!150031)

(assert (=> b!5107831 (= lt!2102903 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!4 baseZ!46 testedP!265))))

(assert (= (and start!538580 res!2174132) b!5107821))

(assert (= (and b!5107821 res!2174136) b!5107822))

(assert (= (and b!5107822 res!2174134) b!5107829))

(assert (= (and b!5107829 res!2174137) b!5107828))

(assert (= (and b!5107828 (not res!2174138)) b!5107830))

(assert (= (and b!5107830 (not res!2174133)) b!5107820))

(assert (= (and b!5107820 (not res!2174135)) b!5107831))

(get-info :version)

(assert (= (and start!538580 ((_ is Cons!58965) input!5745)) b!5107827))

(assert (= (and start!538580 condSetEmpty!29482) setIsEmpty!29481))

(assert (= (and start!538580 (not condSetEmpty!29482)) setNonEmpty!29481))

(assert (= setNonEmpty!29481 b!5107826))

(assert (= (and start!538580 ((_ is Cons!58965) testedP!265)) b!5107824))

(assert (= (and start!538580 condSetEmpty!29481) setIsEmpty!29482))

(assert (= (and start!538580 (not condSetEmpty!29481)) setNonEmpty!29482))

(assert (= setNonEmpty!29482 b!5107823))

(assert (= (and start!538580 ((_ is Cons!58965) knownP!20)) b!5107825))

(declare-fun m!6164956 () Bool)

(assert (=> b!5107821 m!6164956))

(declare-fun m!6164958 () Bool)

(assert (=> setNonEmpty!29482 m!6164958))

(declare-fun m!6164960 () Bool)

(assert (=> b!5107830 m!6164960))

(declare-fun m!6164962 () Bool)

(assert (=> setNonEmpty!29481 m!6164962))

(declare-fun m!6164964 () Bool)

(assert (=> b!5107829 m!6164964))

(declare-fun m!6164966 () Bool)

(assert (=> start!538580 m!6164966))

(declare-fun m!6164968 () Bool)

(assert (=> b!5107820 m!6164968))

(declare-fun m!6164970 () Bool)

(assert (=> b!5107831 m!6164970))

(declare-fun m!6164972 () Bool)

(assert (=> b!5107831 m!6164972))

(declare-fun m!6164974 () Bool)

(assert (=> b!5107831 m!6164974))

(declare-fun m!6164976 () Bool)

(assert (=> b!5107831 m!6164976))

(declare-fun m!6164978 () Bool)

(assert (=> b!5107828 m!6164978))

(declare-fun m!6164980 () Bool)

(assert (=> b!5107828 m!6164980))

(declare-fun m!6164982 () Bool)

(assert (=> b!5107828 m!6164982))

(declare-fun m!6164984 () Bool)

(assert (=> b!5107828 m!6164984))

(declare-fun m!6164986 () Bool)

(assert (=> b!5107822 m!6164986))

(declare-fun m!6164988 () Bool)

(assert (=> b!5107822 m!6164988))

(check-sat (not b!5107829) tp_is_empty!37491 (not b!5107826) (not b!5107831) (not start!538580) (not b!5107825) (not b!5107823) (not b!5107822) (not b!5107821) (not setNonEmpty!29481) (not setNonEmpty!29482) (not b!5107830) (not b!5107824) (not b!5107828) (not b!5107827) (not b!5107820))
(check-sat)
