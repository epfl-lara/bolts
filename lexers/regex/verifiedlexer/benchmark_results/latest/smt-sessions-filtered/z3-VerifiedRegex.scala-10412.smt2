; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538592 () Bool)

(assert start!538592)

(declare-fun setIsEmpty!29517 () Bool)

(declare-fun setRes!29517 () Bool)

(assert (=> setIsEmpty!29517 setRes!29517))

(declare-fun b!5108041 () Bool)

(declare-fun res!2174267 () Bool)

(declare-fun e!3185880 () Bool)

(assert (=> b!5108041 (=> (not res!2174267) (not e!3185880))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28496 0))(
  ( (C!28497 (val!23900 Int)) )
))
(declare-datatypes ((Regex!14115 0))(
  ( (ElementMatch!14115 (c!877423 C!28496)) (Concat!22960 (regOne!28742 Regex!14115) (regTwo!28742 Regex!14115)) (EmptyExpr!14115) (Star!14115 (reg!14444 Regex!14115)) (EmptyLang!14115) (Union!14115 (regOne!28743 Regex!14115) (regTwo!28743 Regex!14115)) )
))
(declare-datatypes ((List!59100 0))(
  ( (Nil!58976) (Cons!58976 (h!65424 Regex!14115) (t!372101 List!59100)) )
))
(declare-datatypes ((Context!6998 0))(
  ( (Context!6999 (exprs!3999 List!59100)) )
))
(declare-fun baseZ!46 () (InoxSet Context!6998))

(declare-datatypes ((List!59101 0))(
  ( (Nil!58977) (Cons!58977 (h!65425 C!28496) (t!372102 List!59101)) )
))
(declare-fun knownP!20 () List!59101)

(declare-fun matchZipper!783 ((InoxSet Context!6998) List!59101) Bool)

(assert (=> b!5108041 (= res!2174267 (matchZipper!783 baseZ!46 knownP!20))))

(declare-fun b!5108042 () Bool)

(declare-fun e!3185879 () Bool)

(assert (=> b!5108042 (= e!3185880 (not e!3185879))))

(declare-fun res!2174269 () Bool)

(assert (=> b!5108042 (=> res!2174269 e!3185879)))

(declare-fun z!4463 () (InoxSet Context!6998))

(declare-fun testedP!265 () List!59101)

(declare-fun getSuffix!3194 (List!59101 List!59101) List!59101)

(assert (=> b!5108042 (= res!2174269 (not (matchZipper!783 z!4463 (getSuffix!3194 knownP!20 testedP!265))))))

(declare-fun isPrefix!5520 (List!59101 List!59101) Bool)

(assert (=> b!5108042 (isPrefix!5520 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150043 0))(
  ( (Unit!150044) )
))
(declare-fun lt!2102976 () Unit!150043)

(declare-fun input!5745 () List!59101)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!657 (List!59101 List!59101 List!59101) Unit!150043)

(assert (=> b!5108042 (= lt!2102976 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!657 knownP!20 testedP!265 input!5745))))

(declare-fun b!5108043 () Bool)

(declare-fun res!2174263 () Bool)

(assert (=> b!5108043 (=> res!2174263 e!3185879)))

(declare-fun derivationZipper!14 ((InoxSet Context!6998) List!59101) (InoxSet Context!6998))

(assert (=> b!5108043 (= res!2174263 (not (= (derivationZipper!14 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5108044 () Bool)

(declare-fun e!3185883 () Bool)

(declare-fun tp_is_empty!37503 () Bool)

(declare-fun tp!1425025 () Bool)

(assert (=> b!5108044 (= e!3185883 (and tp_is_empty!37503 tp!1425025))))

(declare-fun res!2174266 () Bool)

(declare-fun e!3185881 () Bool)

(assert (=> start!538592 (=> (not res!2174266) (not e!3185881))))

(assert (=> start!538592 (= res!2174266 (isPrefix!5520 testedP!265 input!5745))))

(assert (=> start!538592 e!3185881))

(assert (=> start!538592 e!3185883))

(declare-fun condSetEmpty!29517 () Bool)

(assert (=> start!538592 (= condSetEmpty!29517 (= z!4463 ((as const (Array Context!6998 Bool)) false)))))

(declare-fun setRes!29518 () Bool)

(assert (=> start!538592 setRes!29518))

(declare-fun e!3185878 () Bool)

(assert (=> start!538592 e!3185878))

(declare-fun condSetEmpty!29518 () Bool)

(assert (=> start!538592 (= condSetEmpty!29518 (= baseZ!46 ((as const (Array Context!6998 Bool)) false)))))

(assert (=> start!538592 setRes!29517))

(declare-fun e!3185876 () Bool)

(assert (=> start!538592 e!3185876))

(declare-fun b!5108045 () Bool)

(declare-fun e!3185877 () Bool)

(declare-fun tp!1425028 () Bool)

(assert (=> b!5108045 (= e!3185877 tp!1425028)))

(declare-fun b!5108046 () Bool)

(declare-fun res!2174270 () Bool)

(assert (=> b!5108046 (=> res!2174270 e!3185879)))

(declare-fun lt!2102975 () Int)

(declare-fun lt!2102978 () Int)

(assert (=> b!5108046 (= res!2174270 (not (= lt!2102975 lt!2102978)))))

(declare-fun setElem!29518 () Context!6998)

(declare-fun tp!1425030 () Bool)

(declare-fun setNonEmpty!29517 () Bool)

(declare-fun inv!78468 (Context!6998) Bool)

(assert (=> setNonEmpty!29517 (= setRes!29517 (and tp!1425030 (inv!78468 setElem!29518) e!3185877))))

(declare-fun setRest!29517 () (InoxSet Context!6998))

(assert (=> setNonEmpty!29517 (= baseZ!46 ((_ map or) (store ((as const (Array Context!6998 Bool)) false) setElem!29518 true) setRest!29517))))

(declare-fun b!5108047 () Bool)

(declare-fun tp!1425027 () Bool)

(assert (=> b!5108047 (= e!3185878 (and tp_is_empty!37503 tp!1425027))))

(declare-fun b!5108048 () Bool)

(declare-fun tp!1425031 () Bool)

(assert (=> b!5108048 (= e!3185876 (and tp_is_empty!37503 tp!1425031))))

(declare-fun setElem!29517 () Context!6998)

(declare-fun e!3185882 () Bool)

(declare-fun setNonEmpty!29518 () Bool)

(declare-fun tp!1425026 () Bool)

(assert (=> setNonEmpty!29518 (= setRes!29518 (and tp!1425026 (inv!78468 setElem!29517) e!3185882))))

(declare-fun setRest!29518 () (InoxSet Context!6998))

(assert (=> setNonEmpty!29518 (= z!4463 ((_ map or) (store ((as const (Array Context!6998 Bool)) false) setElem!29517 true) setRest!29518))))

(declare-fun b!5108049 () Bool)

(declare-fun res!2174264 () Bool)

(assert (=> b!5108049 (=> (not res!2174264) (not e!3185881))))

(assert (=> b!5108049 (= res!2174264 (isPrefix!5520 knownP!20 input!5745))))

(declare-fun b!5108050 () Bool)

(declare-fun tp!1425029 () Bool)

(assert (=> b!5108050 (= e!3185882 tp!1425029)))

(declare-fun b!5108051 () Bool)

(assert (=> b!5108051 (= e!3185881 e!3185880)))

(declare-fun res!2174265 () Bool)

(assert (=> b!5108051 (=> (not res!2174265) (not e!3185880))))

(assert (=> b!5108051 (= res!2174265 (>= lt!2102978 lt!2102975))))

(declare-fun size!39421 (List!59101) Int)

(assert (=> b!5108051 (= lt!2102975 (size!39421 testedP!265))))

(assert (=> b!5108051 (= lt!2102978 (size!39421 knownP!20))))

(declare-fun b!5108052 () Bool)

(declare-fun res!2174268 () Bool)

(assert (=> b!5108052 (=> res!2174268 e!3185879)))

(declare-fun lostCauseZipper!1001 ((InoxSet Context!6998)) Bool)

(assert (=> b!5108052 (= res!2174268 (lostCauseZipper!1001 z!4463))))

(declare-fun b!5108053 () Bool)

(assert (=> b!5108053 (= e!3185879 true)))

(declare-fun lt!2102977 () Bool)

(assert (=> b!5108053 (= lt!2102977 (matchZipper!783 baseZ!46 testedP!265))))

(assert (=> b!5108053 (= testedP!265 knownP!20)))

(declare-fun lt!2102974 () Unit!150043)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1328 (List!59101 List!59101 List!59101) Unit!150043)

(assert (=> b!5108053 (= lt!2102974 (lemmaIsPrefixSameLengthThenSameList!1328 testedP!265 knownP!20 input!5745))))

(declare-fun setIsEmpty!29518 () Bool)

(assert (=> setIsEmpty!29518 setRes!29518))

(assert (= (and start!538592 res!2174266) b!5108049))

(assert (= (and b!5108049 res!2174264) b!5108051))

(assert (= (and b!5108051 res!2174265) b!5108041))

(assert (= (and b!5108041 res!2174267) b!5108042))

(assert (= (and b!5108042 (not res!2174269)) b!5108043))

(assert (= (and b!5108043 (not res!2174263)) b!5108052))

(assert (= (and b!5108052 (not res!2174268)) b!5108046))

(assert (= (and b!5108046 (not res!2174270)) b!5108053))

(get-info :version)

(assert (= (and start!538592 ((_ is Cons!58977) input!5745)) b!5108044))

(assert (= (and start!538592 condSetEmpty!29517) setIsEmpty!29518))

(assert (= (and start!538592 (not condSetEmpty!29517)) setNonEmpty!29518))

(assert (= setNonEmpty!29518 b!5108050))

(assert (= (and start!538592 ((_ is Cons!58977) testedP!265)) b!5108047))

(assert (= (and start!538592 condSetEmpty!29518) setIsEmpty!29517))

(assert (= (and start!538592 (not condSetEmpty!29518)) setNonEmpty!29517))

(assert (= setNonEmpty!29517 b!5108045))

(assert (= (and start!538592 ((_ is Cons!58977) knownP!20)) b!5108048))

(declare-fun m!6165144 () Bool)

(assert (=> b!5108043 m!6165144))

(declare-fun m!6165146 () Bool)

(assert (=> setNonEmpty!29517 m!6165146))

(declare-fun m!6165148 () Bool)

(assert (=> b!5108053 m!6165148))

(declare-fun m!6165150 () Bool)

(assert (=> b!5108053 m!6165150))

(declare-fun m!6165152 () Bool)

(assert (=> b!5108042 m!6165152))

(assert (=> b!5108042 m!6165152))

(declare-fun m!6165154 () Bool)

(assert (=> b!5108042 m!6165154))

(declare-fun m!6165156 () Bool)

(assert (=> b!5108042 m!6165156))

(declare-fun m!6165158 () Bool)

(assert (=> b!5108042 m!6165158))

(declare-fun m!6165160 () Bool)

(assert (=> b!5108052 m!6165160))

(declare-fun m!6165162 () Bool)

(assert (=> b!5108041 m!6165162))

(declare-fun m!6165164 () Bool)

(assert (=> start!538592 m!6165164))

(declare-fun m!6165166 () Bool)

(assert (=> b!5108049 m!6165166))

(declare-fun m!6165168 () Bool)

(assert (=> b!5108051 m!6165168))

(declare-fun m!6165170 () Bool)

(assert (=> b!5108051 m!6165170))

(declare-fun m!6165172 () Bool)

(assert (=> setNonEmpty!29518 m!6165172))

(check-sat (not b!5108048) (not b!5108045) (not b!5108051) (not b!5108047) (not start!538592) (not b!5108053) (not setNonEmpty!29518) (not b!5108044) (not b!5108049) (not b!5108041) (not b!5108042) (not b!5108050) (not b!5108052) (not setNonEmpty!29517) tp_is_empty!37503 (not b!5108043))
(check-sat)
