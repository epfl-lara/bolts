; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540336 () Bool)

(assert start!540336)

(declare-fun b!5119487 () Bool)

(declare-fun res!2179840 () Bool)

(declare-fun e!3192896 () Bool)

(assert (=> b!5119487 (=> res!2179840 e!3192896)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28684 0))(
  ( (C!28685 (val!23994 Int)) )
))
(declare-datatypes ((Regex!14209 0))(
  ( (ElementMatch!14209 (c!879725 C!28684)) (Concat!23054 (regOne!28930 Regex!14209) (regTwo!28930 Regex!14209)) (EmptyExpr!14209) (Star!14209 (reg!14538 Regex!14209)) (EmptyLang!14209) (Union!14209 (regOne!28931 Regex!14209) (regTwo!28931 Regex!14209)) )
))
(declare-datatypes ((List!59337 0))(
  ( (Nil!59213) (Cons!59213 (h!65661 Regex!14209) (t!372354 List!59337)) )
))
(declare-datatypes ((Context!7186 0))(
  ( (Context!7187 (exprs!4093 List!59337)) )
))
(declare-fun z!4463 () (InoxSet Context!7186))

(declare-fun lostCauseZipper!1095 ((InoxSet Context!7186)) Bool)

(assert (=> b!5119487 (= res!2179840 (lostCauseZipper!1095 z!4463))))

(declare-fun b!5119488 () Bool)

(declare-fun e!3192894 () Bool)

(declare-fun e!3192899 () Bool)

(assert (=> b!5119488 (= e!3192894 e!3192899)))

(declare-fun res!2179836 () Bool)

(assert (=> b!5119488 (=> res!2179836 e!3192899)))

(declare-datatypes ((List!59338 0))(
  ( (Nil!59214) (Cons!59214 (h!65662 C!28684) (t!372355 List!59338)) )
))
(declare-fun lt!2110550 () List!59338)

(declare-fun lt!2110551 () C!28684)

(declare-fun head!10937 (List!59338) C!28684)

(assert (=> b!5119488 (= res!2179836 (not (= (head!10937 lt!2110550) lt!2110551)))))

(declare-fun lt!2110547 () List!59338)

(declare-fun lt!2110552 () List!59338)

(assert (=> b!5119488 (= lt!2110547 lt!2110552)))

(declare-fun input!5745 () List!59338)

(declare-datatypes ((Unit!150353 0))(
  ( (Unit!150354) )
))
(declare-fun lt!2110549 () Unit!150353)

(declare-fun testedP!265 () List!59338)

(declare-fun lemmaSamePrefixThenSameSuffix!2648 (List!59338 List!59338 List!59338 List!59338 List!59338) Unit!150353)

(assert (=> b!5119488 (= lt!2110549 (lemmaSamePrefixThenSameSuffix!2648 testedP!265 lt!2110547 testedP!265 lt!2110552 input!5745))))

(declare-fun b!5119489 () Bool)

(declare-fun e!3192901 () Bool)

(assert (=> b!5119489 (= e!3192901 e!3192894)))

(declare-fun res!2179837 () Bool)

(assert (=> b!5119489 (=> res!2179837 e!3192894)))

(declare-fun lt!2110561 () List!59338)

(assert (=> b!5119489 (= res!2179837 (not (= lt!2110561 input!5745)))))

(declare-fun lt!2110555 () List!59338)

(assert (=> b!5119489 (= lt!2110555 lt!2110561)))

(declare-fun ++!13034 (List!59338 List!59338) List!59338)

(assert (=> b!5119489 (= lt!2110561 (++!13034 testedP!265 lt!2110547))))

(declare-fun lt!2110553 () List!59338)

(assert (=> b!5119489 (= lt!2110547 (++!13034 lt!2110550 lt!2110553))))

(declare-fun lt!2110548 () Unit!150353)

(declare-fun lemmaConcatAssociativity!2782 (List!59338 List!59338 List!59338) Unit!150353)

(assert (=> b!5119489 (= lt!2110548 (lemmaConcatAssociativity!2782 testedP!265 lt!2110550 lt!2110553))))

(declare-fun b!5119490 () Bool)

(declare-fun res!2179829 () Bool)

(assert (=> b!5119490 (=> res!2179829 e!3192899)))

(declare-fun $colon$colon!1139 (List!59338 C!28684) List!59338)

(declare-fun tail!10074 (List!59338) List!59338)

(assert (=> b!5119490 (= res!2179829 (not (= lt!2110550 ($colon$colon!1139 (tail!10074 lt!2110550) lt!2110551))))))

(declare-fun b!5119491 () Bool)

(declare-fun e!3192902 () Bool)

(declare-fun tp_is_empty!37691 () Bool)

(declare-fun tp!1428237 () Bool)

(assert (=> b!5119491 (= e!3192902 (and tp_is_empty!37691 tp!1428237))))

(declare-fun setElem!30298 () Context!7186)

(declare-fun setRes!30298 () Bool)

(declare-fun tp!1428232 () Bool)

(declare-fun setNonEmpty!30297 () Bool)

(declare-fun e!3192898 () Bool)

(declare-fun inv!78703 (Context!7186) Bool)

(assert (=> setNonEmpty!30297 (= setRes!30298 (and tp!1428232 (inv!78703 setElem!30298) e!3192898))))

(declare-fun baseZ!46 () (InoxSet Context!7186))

(declare-fun setRest!30297 () (InoxSet Context!7186))

(assert (=> setNonEmpty!30297 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7186 Bool)) false) setElem!30298 true) setRest!30297))))

(declare-fun b!5119492 () Bool)

(declare-fun res!2179828 () Bool)

(declare-fun e!3192900 () Bool)

(assert (=> b!5119492 (=> (not res!2179828) (not e!3192900))))

(declare-fun knownP!20 () List!59338)

(declare-fun matchZipper!877 ((InoxSet Context!7186) List!59338) Bool)

(assert (=> b!5119492 (= res!2179828 (matchZipper!877 baseZ!46 knownP!20))))

(declare-fun setIsEmpty!30297 () Bool)

(assert (=> setIsEmpty!30297 setRes!30298))

(declare-fun setIsEmpty!30298 () Bool)

(declare-fun setRes!30297 () Bool)

(assert (=> setIsEmpty!30298 setRes!30297))

(declare-fun b!5119493 () Bool)

(assert (=> b!5119493 (= e!3192900 (not e!3192896))))

(declare-fun res!2179831 () Bool)

(assert (=> b!5119493 (=> res!2179831 e!3192896)))

(assert (=> b!5119493 (= res!2179831 (not (matchZipper!877 z!4463 lt!2110550)))))

(declare-fun getSuffix!3288 (List!59338 List!59338) List!59338)

(assert (=> b!5119493 (= lt!2110550 (getSuffix!3288 knownP!20 testedP!265))))

(declare-fun isPrefix!5614 (List!59338 List!59338) Bool)

(assert (=> b!5119493 (isPrefix!5614 testedP!265 knownP!20)))

(declare-fun lt!2110557 () Unit!150353)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!751 (List!59338 List!59338 List!59338) Unit!150353)

(assert (=> b!5119493 (= lt!2110557 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!751 knownP!20 testedP!265 input!5745))))

(declare-fun b!5119494 () Bool)

(declare-fun e!3192903 () Bool)

(declare-fun tp!1428236 () Bool)

(assert (=> b!5119494 (= e!3192903 (and tp_is_empty!37691 tp!1428236))))

(declare-fun b!5119495 () Bool)

(declare-fun res!2179830 () Bool)

(declare-fun e!3192893 () Bool)

(assert (=> b!5119495 (=> (not res!2179830) (not e!3192893))))

(assert (=> b!5119495 (= res!2179830 (isPrefix!5614 knownP!20 input!5745))))

(declare-fun b!5119496 () Bool)

(assert (=> b!5119496 (= e!3192893 e!3192900)))

(declare-fun res!2179833 () Bool)

(assert (=> b!5119496 (=> (not res!2179833) (not e!3192900))))

(declare-fun lt!2110556 () Int)

(declare-fun lt!2110558 () Int)

(assert (=> b!5119496 (= res!2179833 (>= lt!2110556 lt!2110558))))

(declare-fun size!39515 (List!59338) Int)

(assert (=> b!5119496 (= lt!2110558 (size!39515 testedP!265))))

(assert (=> b!5119496 (= lt!2110556 (size!39515 knownP!20))))

(declare-fun b!5119497 () Bool)

(declare-fun e!3192892 () Bool)

(declare-fun tp!1428235 () Bool)

(assert (=> b!5119497 (= e!3192892 (and tp_is_empty!37691 tp!1428235))))

(declare-fun b!5119498 () Bool)

(declare-fun e!3192897 () Bool)

(assert (=> b!5119498 (= e!3192897 e!3192901)))

(declare-fun res!2179827 () Bool)

(assert (=> b!5119498 (=> res!2179827 e!3192901)))

(assert (=> b!5119498 (= res!2179827 (not (= lt!2110555 input!5745)))))

(declare-fun lt!2110545 () List!59338)

(assert (=> b!5119498 (= lt!2110555 (++!13034 lt!2110545 lt!2110553))))

(assert (=> b!5119498 (= lt!2110545 (++!13034 testedP!265 lt!2110550))))

(declare-fun b!5119499 () Bool)

(declare-fun res!2179832 () Bool)

(assert (=> b!5119499 (=> res!2179832 e!3192896)))

(assert (=> b!5119499 (= res!2179832 (= lt!2110558 lt!2110556))))

(declare-fun b!5119500 () Bool)

(declare-fun e!3192895 () Bool)

(declare-fun tp!1428234 () Bool)

(assert (=> b!5119500 (= e!3192895 tp!1428234)))

(declare-fun setNonEmpty!30298 () Bool)

(declare-fun tp!1428233 () Bool)

(declare-fun setElem!30297 () Context!7186)

(assert (=> setNonEmpty!30298 (= setRes!30297 (and tp!1428233 (inv!78703 setElem!30297) e!3192895))))

(declare-fun setRest!30298 () (InoxSet Context!7186))

(assert (=> setNonEmpty!30298 (= z!4463 ((_ map or) (store ((as const (Array Context!7186 Bool)) false) setElem!30297 true) setRest!30298))))

(declare-fun b!5119501 () Bool)

(assert (=> b!5119501 (= e!3192899 true)))

(declare-fun lt!2110544 () List!59338)

(declare-fun lt!2110546 () List!59338)

(declare-fun lt!2110554 () List!59338)

(assert (=> b!5119501 (= lt!2110544 (++!13034 lt!2110546 lt!2110554))))

(declare-fun b!5119502 () Bool)

(declare-fun res!2179842 () Bool)

(assert (=> b!5119502 (=> res!2179842 e!3192901)))

(assert (=> b!5119502 (= res!2179842 (not (= (++!13034 testedP!265 lt!2110552) input!5745)))))

(declare-fun b!5119503 () Bool)

(declare-fun res!2179839 () Bool)

(assert (=> b!5119503 (=> res!2179839 e!3192899)))

(assert (=> b!5119503 (= res!2179839 (not (= lt!2110545 knownP!20)))))

(declare-fun b!5119504 () Bool)

(assert (=> b!5119504 (= e!3192896 e!3192897)))

(declare-fun res!2179841 () Bool)

(assert (=> b!5119504 (=> res!2179841 e!3192897)))

(assert (=> b!5119504 (= res!2179841 (not (= (++!13034 knownP!20 lt!2110553) input!5745)))))

(assert (=> b!5119504 (= lt!2110553 (getSuffix!3288 input!5745 knownP!20))))

(assert (=> b!5119504 (= lt!2110554 (getSuffix!3288 knownP!20 lt!2110546))))

(assert (=> b!5119504 (isPrefix!5614 lt!2110546 knownP!20)))

(declare-fun lt!2110562 () Unit!150353)

(assert (=> b!5119504 (= lt!2110562 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!751 knownP!20 lt!2110546 input!5745))))

(declare-fun derivationZipper!108 ((InoxSet Context!7186) List!59338) (InoxSet Context!7186))

(declare-fun derivationStepZipper!844 ((InoxSet Context!7186) C!28684) (InoxSet Context!7186))

(assert (=> b!5119504 (= (derivationZipper!108 baseZ!46 lt!2110546) (derivationStepZipper!844 z!4463 lt!2110551))))

(declare-fun lt!2110559 () Unit!150353)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!65 ((InoxSet Context!7186) (InoxSet Context!7186) List!59338 C!28684) Unit!150353)

(assert (=> b!5119504 (= lt!2110559 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!65 baseZ!46 z!4463 testedP!265 lt!2110551))))

(assert (=> b!5119504 (isPrefix!5614 lt!2110546 input!5745)))

(declare-fun lt!2110560 () Unit!150353)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1000 (List!59338 List!59338) Unit!150353)

(assert (=> b!5119504 (= lt!2110560 (lemmaAddHeadSuffixToPrefixStillPrefix!1000 testedP!265 input!5745))))

(assert (=> b!5119504 (= lt!2110546 (++!13034 testedP!265 (Cons!59214 lt!2110551 Nil!59214)))))

(assert (=> b!5119504 (= lt!2110551 (head!10937 lt!2110552))))

(assert (=> b!5119504 (= lt!2110552 (getSuffix!3288 input!5745 testedP!265))))

(declare-fun b!5119505 () Bool)

(declare-fun tp!1428231 () Bool)

(assert (=> b!5119505 (= e!3192898 tp!1428231)))

(declare-fun b!5119506 () Bool)

(declare-fun res!2179838 () Bool)

(assert (=> b!5119506 (=> res!2179838 e!3192896)))

(assert (=> b!5119506 (= res!2179838 (>= lt!2110558 (size!39515 input!5745)))))

(declare-fun res!2179834 () Bool)

(assert (=> start!540336 (=> (not res!2179834) (not e!3192893))))

(assert (=> start!540336 (= res!2179834 (isPrefix!5614 testedP!265 input!5745))))

(assert (=> start!540336 e!3192893))

(assert (=> start!540336 e!3192892))

(declare-fun condSetEmpty!30298 () Bool)

(assert (=> start!540336 (= condSetEmpty!30298 (= z!4463 ((as const (Array Context!7186 Bool)) false)))))

(assert (=> start!540336 setRes!30297))

(assert (=> start!540336 e!3192903))

(declare-fun condSetEmpty!30297 () Bool)

(assert (=> start!540336 (= condSetEmpty!30297 (= baseZ!46 ((as const (Array Context!7186 Bool)) false)))))

(assert (=> start!540336 setRes!30298))

(assert (=> start!540336 e!3192902))

(declare-fun b!5119507 () Bool)

(declare-fun res!2179835 () Bool)

(assert (=> b!5119507 (=> res!2179835 e!3192896)))

(assert (=> b!5119507 (= res!2179835 (not (= (derivationZipper!108 baseZ!46 testedP!265) z!4463)))))

(assert (= (and start!540336 res!2179834) b!5119495))

(assert (= (and b!5119495 res!2179830) b!5119496))

(assert (= (and b!5119496 res!2179833) b!5119492))

(assert (= (and b!5119492 res!2179828) b!5119493))

(assert (= (and b!5119493 (not res!2179831)) b!5119507))

(assert (= (and b!5119507 (not res!2179835)) b!5119487))

(assert (= (and b!5119487 (not res!2179840)) b!5119499))

(assert (= (and b!5119499 (not res!2179832)) b!5119506))

(assert (= (and b!5119506 (not res!2179838)) b!5119504))

(assert (= (and b!5119504 (not res!2179841)) b!5119498))

(assert (= (and b!5119498 (not res!2179827)) b!5119502))

(assert (= (and b!5119502 (not res!2179842)) b!5119489))

(assert (= (and b!5119489 (not res!2179837)) b!5119488))

(assert (= (and b!5119488 (not res!2179836)) b!5119490))

(assert (= (and b!5119490 (not res!2179829)) b!5119503))

(assert (= (and b!5119503 (not res!2179839)) b!5119501))

(get-info :version)

(assert (= (and start!540336 ((_ is Cons!59214) input!5745)) b!5119497))

(assert (= (and start!540336 condSetEmpty!30298) setIsEmpty!30298))

(assert (= (and start!540336 (not condSetEmpty!30298)) setNonEmpty!30298))

(assert (= setNonEmpty!30298 b!5119500))

(assert (= (and start!540336 ((_ is Cons!59214) testedP!265)) b!5119494))

(assert (= (and start!540336 condSetEmpty!30297) setIsEmpty!30297))

(assert (= (and start!540336 (not condSetEmpty!30297)) setNonEmpty!30297))

(assert (= setNonEmpty!30297 b!5119505))

(assert (= (and start!540336 ((_ is Cons!59214) knownP!20)) b!5119491))

(declare-fun m!6179954 () Bool)

(assert (=> b!5119501 m!6179954))

(declare-fun m!6179956 () Bool)

(assert (=> b!5119498 m!6179956))

(declare-fun m!6179958 () Bool)

(assert (=> b!5119498 m!6179958))

(declare-fun m!6179960 () Bool)

(assert (=> setNonEmpty!30298 m!6179960))

(declare-fun m!6179962 () Bool)

(assert (=> start!540336 m!6179962))

(declare-fun m!6179964 () Bool)

(assert (=> b!5119504 m!6179964))

(declare-fun m!6179966 () Bool)

(assert (=> b!5119504 m!6179966))

(declare-fun m!6179968 () Bool)

(assert (=> b!5119504 m!6179968))

(declare-fun m!6179970 () Bool)

(assert (=> b!5119504 m!6179970))

(declare-fun m!6179972 () Bool)

(assert (=> b!5119504 m!6179972))

(declare-fun m!6179974 () Bool)

(assert (=> b!5119504 m!6179974))

(declare-fun m!6179976 () Bool)

(assert (=> b!5119504 m!6179976))

(declare-fun m!6179978 () Bool)

(assert (=> b!5119504 m!6179978))

(declare-fun m!6179980 () Bool)

(assert (=> b!5119504 m!6179980))

(declare-fun m!6179982 () Bool)

(assert (=> b!5119504 m!6179982))

(declare-fun m!6179984 () Bool)

(assert (=> b!5119504 m!6179984))

(declare-fun m!6179986 () Bool)

(assert (=> b!5119504 m!6179986))

(declare-fun m!6179988 () Bool)

(assert (=> b!5119504 m!6179988))

(declare-fun m!6179990 () Bool)

(assert (=> b!5119492 m!6179990))

(declare-fun m!6179992 () Bool)

(assert (=> b!5119487 m!6179992))

(declare-fun m!6179994 () Bool)

(assert (=> b!5119507 m!6179994))

(declare-fun m!6179996 () Bool)

(assert (=> b!5119488 m!6179996))

(declare-fun m!6179998 () Bool)

(assert (=> b!5119488 m!6179998))

(declare-fun m!6180000 () Bool)

(assert (=> b!5119496 m!6180000))

(declare-fun m!6180002 () Bool)

(assert (=> b!5119496 m!6180002))

(declare-fun m!6180004 () Bool)

(assert (=> b!5119502 m!6180004))

(declare-fun m!6180006 () Bool)

(assert (=> b!5119495 m!6180006))

(declare-fun m!6180008 () Bool)

(assert (=> b!5119489 m!6180008))

(declare-fun m!6180010 () Bool)

(assert (=> b!5119489 m!6180010))

(declare-fun m!6180012 () Bool)

(assert (=> b!5119489 m!6180012))

(declare-fun m!6180014 () Bool)

(assert (=> setNonEmpty!30297 m!6180014))

(declare-fun m!6180016 () Bool)

(assert (=> b!5119493 m!6180016))

(declare-fun m!6180018 () Bool)

(assert (=> b!5119493 m!6180018))

(declare-fun m!6180020 () Bool)

(assert (=> b!5119493 m!6180020))

(declare-fun m!6180022 () Bool)

(assert (=> b!5119493 m!6180022))

(declare-fun m!6180024 () Bool)

(assert (=> b!5119490 m!6180024))

(assert (=> b!5119490 m!6180024))

(declare-fun m!6180026 () Bool)

(assert (=> b!5119490 m!6180026))

(declare-fun m!6180028 () Bool)

(assert (=> b!5119506 m!6180028))

(check-sat (not b!5119500) (not b!5119489) (not setNonEmpty!30297) (not b!5119490) (not b!5119497) (not b!5119505) (not b!5119501) (not b!5119498) (not b!5119491) (not b!5119506) (not b!5119488) (not b!5119494) (not b!5119487) tp_is_empty!37691 (not setNonEmpty!30298) (not b!5119492) (not b!5119507) (not start!540336) (not b!5119504) (not b!5119502) (not b!5119495) (not b!5119496) (not b!5119493))
(check-sat)
