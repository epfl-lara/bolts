; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538584 () Bool)

(assert start!538584)

(declare-fun b!5107897 () Bool)

(declare-fun e!3185790 () Bool)

(declare-fun tp!1424945 () Bool)

(assert (=> b!5107897 (= e!3185790 tp!1424945)))

(declare-fun e!3185785 () Bool)

(declare-fun setRes!29494 () Bool)

(declare-fun tp!1424946 () Bool)

(declare-datatypes ((C!28488 0))(
  ( (C!28489 (val!23896 Int)) )
))
(declare-datatypes ((Regex!14111 0))(
  ( (ElementMatch!14111 (c!877419 C!28488)) (Concat!22956 (regOne!28734 Regex!14111) (regTwo!28734 Regex!14111)) (EmptyExpr!14111) (Star!14111 (reg!14440 Regex!14111)) (EmptyLang!14111) (Union!14111 (regOne!28735 Regex!14111) (regTwo!28735 Regex!14111)) )
))
(declare-datatypes ((List!59092 0))(
  ( (Nil!58968) (Cons!58968 (h!65416 Regex!14111) (t!372093 List!59092)) )
))
(declare-datatypes ((Context!6990 0))(
  ( (Context!6991 (exprs!3995 List!59092)) )
))
(declare-fun setElem!29493 () Context!6990)

(declare-fun setNonEmpty!29493 () Bool)

(declare-fun inv!78458 (Context!6990) Bool)

(assert (=> setNonEmpty!29493 (= setRes!29494 (and tp!1424946 (inv!78458 setElem!29493) e!3185785))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!6990))

(declare-fun setRest!29493 () (InoxSet Context!6990))

(assert (=> setNonEmpty!29493 (= baseZ!46 ((_ map or) (store ((as const (Array Context!6990 Bool)) false) setElem!29493 true) setRest!29493))))

(declare-fun b!5107898 () Bool)

(declare-fun e!3185792 () Bool)

(declare-fun tp_is_empty!37495 () Bool)

(declare-fun tp!1424944 () Bool)

(assert (=> b!5107898 (= e!3185792 (and tp_is_empty!37495 tp!1424944))))

(declare-fun b!5107899 () Bool)

(declare-fun e!3185793 () Bool)

(declare-fun e!3185789 () Bool)

(assert (=> b!5107899 (= e!3185793 (not e!3185789))))

(declare-fun res!2174182 () Bool)

(assert (=> b!5107899 (=> res!2174182 e!3185789)))

(declare-fun z!4463 () (InoxSet Context!6990))

(declare-datatypes ((List!59093 0))(
  ( (Nil!58969) (Cons!58969 (h!65417 C!28488) (t!372094 List!59093)) )
))
(declare-fun lt!2102934 () List!59093)

(declare-fun matchZipper!779 ((InoxSet Context!6990) List!59093) Bool)

(assert (=> b!5107899 (= res!2174182 (not (matchZipper!779 z!4463 lt!2102934)))))

(declare-fun knownP!20 () List!59093)

(declare-fun testedP!265 () List!59093)

(declare-fun getSuffix!3190 (List!59093 List!59093) List!59093)

(assert (=> b!5107899 (= lt!2102934 (getSuffix!3190 knownP!20 testedP!265))))

(declare-fun isPrefix!5516 (List!59093 List!59093) Bool)

(assert (=> b!5107899 (isPrefix!5516 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59093)

(declare-datatypes ((Unit!150035 0))(
  ( (Unit!150036) )
))
(declare-fun lt!2102936 () Unit!150035)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!653 (List!59093 List!59093 List!59093) Unit!150035)

(assert (=> b!5107899 (= lt!2102936 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!653 knownP!20 testedP!265 input!5745))))

(declare-fun res!2174181 () Bool)

(assert (=> start!538584 (=> (not res!2174181) (not e!3185793))))

(assert (=> start!538584 (= res!2174181 (isPrefix!5516 testedP!265 input!5745))))

(assert (=> start!538584 e!3185793))

(assert (=> start!538584 e!3185792))

(declare-fun condSetEmpty!29494 () Bool)

(assert (=> start!538584 (= condSetEmpty!29494 (= z!4463 ((as const (Array Context!6990 Bool)) false)))))

(declare-fun setRes!29493 () Bool)

(assert (=> start!538584 setRes!29493))

(declare-fun e!3185787 () Bool)

(assert (=> start!538584 e!3185787))

(declare-fun condSetEmpty!29493 () Bool)

(assert (=> start!538584 (= condSetEmpty!29493 (= baseZ!46 ((as const (Array Context!6990 Bool)) false)))))

(assert (=> start!538584 setRes!29494))

(declare-fun e!3185786 () Bool)

(assert (=> start!538584 e!3185786))

(declare-fun b!5107900 () Bool)

(declare-fun e!3185791 () Bool)

(assert (=> b!5107900 (= e!3185791 true)))

(assert (=> b!5107900 false))

(declare-fun lt!2102935 () Unit!150035)

(declare-fun lemmaLostCauseCannotMatch!51 ((InoxSet Context!6990) List!59093) Unit!150035)

(assert (=> b!5107900 (= lt!2102935 (lemmaLostCauseCannotMatch!51 z!4463 lt!2102934))))

(declare-fun b!5107901 () Bool)

(declare-fun res!2174184 () Bool)

(assert (=> b!5107901 (=> (not res!2174184) (not e!3185793))))

(assert (=> b!5107901 (= res!2174184 (matchZipper!779 baseZ!46 knownP!20))))

(declare-fun b!5107902 () Bool)

(declare-fun res!2174180 () Bool)

(declare-fun e!3185788 () Bool)

(assert (=> b!5107902 (=> res!2174180 e!3185788)))

(declare-fun lostCauseZipper!997 ((InoxSet Context!6990)) Bool)

(assert (=> b!5107902 (= res!2174180 (not (lostCauseZipper!997 z!4463)))))

(declare-fun b!5107903 () Bool)

(declare-fun tp!1424947 () Bool)

(assert (=> b!5107903 (= e!3185787 (and tp_is_empty!37495 tp!1424947))))

(declare-fun setIsEmpty!29493 () Bool)

(assert (=> setIsEmpty!29493 setRes!29493))

(declare-fun b!5107904 () Bool)

(declare-fun tp!1424942 () Bool)

(assert (=> b!5107904 (= e!3185786 (and tp_is_empty!37495 tp!1424942))))

(declare-fun b!5107905 () Bool)

(assert (=> b!5107905 (= e!3185789 e!3185788)))

(declare-fun res!2174186 () Bool)

(assert (=> b!5107905 (=> res!2174186 e!3185788)))

(declare-fun lt!2102932 () (InoxSet Context!6990))

(assert (=> b!5107905 (= res!2174186 (not (= lt!2102932 z!4463)))))

(declare-fun derivationZipper!10 ((InoxSet Context!6990) List!59093) (InoxSet Context!6990))

(assert (=> b!5107905 (= lt!2102932 (derivationZipper!10 baseZ!46 testedP!265))))

(declare-fun b!5107906 () Bool)

(declare-fun res!2174179 () Bool)

(assert (=> b!5107906 (=> (not res!2174179) (not e!3185793))))

(assert (=> b!5107906 (= res!2174179 (isPrefix!5516 knownP!20 input!5745))))

(declare-fun b!5107907 () Bool)

(declare-fun tp!1424941 () Bool)

(assert (=> b!5107907 (= e!3185785 tp!1424941)))

(declare-fun b!5107908 () Bool)

(declare-fun res!2174185 () Bool)

(assert (=> b!5107908 (=> (not res!2174185) (not e!3185793))))

(declare-fun size!39417 (List!59093) Int)

(assert (=> b!5107908 (= res!2174185 (>= (size!39417 knownP!20) (size!39417 testedP!265)))))

(declare-fun b!5107909 () Bool)

(assert (=> b!5107909 (= e!3185788 e!3185791)))

(declare-fun res!2174183 () Bool)

(assert (=> b!5107909 (=> res!2174183 e!3185791)))

(declare-fun ++!12946 (List!59093 List!59093) List!59093)

(assert (=> b!5107909 (= res!2174183 (not (= (++!12946 testedP!265 lt!2102934) knownP!20)))))

(assert (=> b!5107909 (= (matchZipper!779 baseZ!46 testedP!265) (matchZipper!779 lt!2102932 Nil!58969))))

(declare-fun lt!2102933 () Unit!150035)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!6 ((InoxSet Context!6990) List!59093) Unit!150035)

(assert (=> b!5107909 (= lt!2102933 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!6 baseZ!46 testedP!265))))

(declare-fun setNonEmpty!29494 () Bool)

(declare-fun tp!1424943 () Bool)

(declare-fun setElem!29494 () Context!6990)

(assert (=> setNonEmpty!29494 (= setRes!29493 (and tp!1424943 (inv!78458 setElem!29494) e!3185790))))

(declare-fun setRest!29494 () (InoxSet Context!6990))

(assert (=> setNonEmpty!29494 (= z!4463 ((_ map or) (store ((as const (Array Context!6990 Bool)) false) setElem!29494 true) setRest!29494))))

(declare-fun setIsEmpty!29494 () Bool)

(assert (=> setIsEmpty!29494 setRes!29494))

(assert (= (and start!538584 res!2174181) b!5107906))

(assert (= (and b!5107906 res!2174179) b!5107908))

(assert (= (and b!5107908 res!2174185) b!5107901))

(assert (= (and b!5107901 res!2174184) b!5107899))

(assert (= (and b!5107899 (not res!2174182)) b!5107905))

(assert (= (and b!5107905 (not res!2174186)) b!5107902))

(assert (= (and b!5107902 (not res!2174180)) b!5107909))

(assert (= (and b!5107909 (not res!2174183)) b!5107900))

(get-info :version)

(assert (= (and start!538584 ((_ is Cons!58969) input!5745)) b!5107898))

(assert (= (and start!538584 condSetEmpty!29494) setIsEmpty!29493))

(assert (= (and start!538584 (not condSetEmpty!29494)) setNonEmpty!29494))

(assert (= setNonEmpty!29494 b!5107897))

(assert (= (and start!538584 ((_ is Cons!58969) testedP!265)) b!5107903))

(assert (= (and start!538584 condSetEmpty!29493) setIsEmpty!29494))

(assert (= (and start!538584 (not condSetEmpty!29493)) setNonEmpty!29493))

(assert (= setNonEmpty!29493 b!5107907))

(assert (= (and start!538584 ((_ is Cons!58969) knownP!20)) b!5107904))

(declare-fun m!6165026 () Bool)

(assert (=> b!5107902 m!6165026))

(declare-fun m!6165028 () Bool)

(assert (=> b!5107900 m!6165028))

(declare-fun m!6165030 () Bool)

(assert (=> b!5107909 m!6165030))

(declare-fun m!6165032 () Bool)

(assert (=> b!5107909 m!6165032))

(declare-fun m!6165034 () Bool)

(assert (=> b!5107909 m!6165034))

(declare-fun m!6165036 () Bool)

(assert (=> b!5107909 m!6165036))

(declare-fun m!6165038 () Bool)

(assert (=> start!538584 m!6165038))

(declare-fun m!6165040 () Bool)

(assert (=> b!5107905 m!6165040))

(declare-fun m!6165042 () Bool)

(assert (=> setNonEmpty!29493 m!6165042))

(declare-fun m!6165044 () Bool)

(assert (=> b!5107906 m!6165044))

(declare-fun m!6165046 () Bool)

(assert (=> b!5107901 m!6165046))

(declare-fun m!6165048 () Bool)

(assert (=> setNonEmpty!29494 m!6165048))

(declare-fun m!6165050 () Bool)

(assert (=> b!5107899 m!6165050))

(declare-fun m!6165052 () Bool)

(assert (=> b!5107899 m!6165052))

(declare-fun m!6165054 () Bool)

(assert (=> b!5107899 m!6165054))

(declare-fun m!6165056 () Bool)

(assert (=> b!5107899 m!6165056))

(declare-fun m!6165058 () Bool)

(assert (=> b!5107908 m!6165058))

(declare-fun m!6165060 () Bool)

(assert (=> b!5107908 m!6165060))

(check-sat (not b!5107909) (not setNonEmpty!29494) (not b!5107902) tp_is_empty!37495 (not b!5107908) (not b!5107907) (not b!5107898) (not b!5107903) (not b!5107906) (not b!5107899) (not b!5107905) (not b!5107901) (not setNonEmpty!29493) (not b!5107900) (not b!5107897) (not start!538584) (not b!5107904))
(check-sat)
