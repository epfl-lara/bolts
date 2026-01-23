; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539796 () Bool)

(assert start!539796)

(declare-fun b!5116199 () Bool)

(declare-fun e!3190892 () Bool)

(declare-fun e!3190899 () Bool)

(assert (=> b!5116199 (= e!3190892 e!3190899)))

(declare-fun res!2178275 () Bool)

(assert (=> b!5116199 (=> (not res!2178275) (not e!3190899))))

(declare-fun lt!2108540 () Int)

(declare-fun lt!2108531 () Int)

(assert (=> b!5116199 (= res!2178275 (>= lt!2108540 lt!2108531))))

(declare-datatypes ((C!28636 0))(
  ( (C!28637 (val!23970 Int)) )
))
(declare-datatypes ((List!59273 0))(
  ( (Nil!59149) (Cons!59149 (h!65597 C!28636) (t!372284 List!59273)) )
))
(declare-fun testedP!265 () List!59273)

(declare-fun size!39491 (List!59273) Int)

(assert (=> b!5116199 (= lt!2108531 (size!39491 testedP!265))))

(declare-fun knownP!20 () List!59273)

(assert (=> b!5116199 (= lt!2108540 (size!39491 knownP!20))))

(declare-fun b!5116200 () Bool)

(declare-fun e!3190898 () Bool)

(declare-fun e!3190896 () Bool)

(assert (=> b!5116200 (= e!3190898 e!3190896)))

(declare-fun res!2178269 () Bool)

(assert (=> b!5116200 (=> res!2178269 e!3190896)))

(declare-fun input!5745 () List!59273)

(declare-fun lt!2108537 () List!59273)

(declare-fun ++!13010 (List!59273 List!59273) List!59273)

(assert (=> b!5116200 (= res!2178269 (not (= (++!13010 knownP!20 lt!2108537) input!5745)))))

(declare-fun getSuffix!3264 (List!59273 List!59273) List!59273)

(assert (=> b!5116200 (= lt!2108537 (getSuffix!3264 input!5745 knownP!20))))

(declare-fun lt!2108539 () List!59273)

(declare-fun lt!2108542 () List!59273)

(assert (=> b!5116200 (= lt!2108539 (getSuffix!3264 knownP!20 lt!2108542))))

(declare-fun isPrefix!5590 (List!59273 List!59273) Bool)

(assert (=> b!5116200 (isPrefix!5590 lt!2108542 knownP!20)))

(declare-datatypes ((Unit!150273 0))(
  ( (Unit!150274) )
))
(declare-fun lt!2108543 () Unit!150273)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!727 (List!59273 List!59273 List!59273) Unit!150273)

(assert (=> b!5116200 (= lt!2108543 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!727 knownP!20 lt!2108542 input!5745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14185 0))(
  ( (ElementMatch!14185 (c!879019 C!28636)) (Concat!23030 (regOne!28882 Regex!14185) (regTwo!28882 Regex!14185)) (EmptyExpr!14185) (Star!14185 (reg!14514 Regex!14185)) (EmptyLang!14185) (Union!14185 (regOne!28883 Regex!14185) (regTwo!28883 Regex!14185)) )
))
(declare-datatypes ((List!59274 0))(
  ( (Nil!59150) (Cons!59150 (h!65598 Regex!14185) (t!372285 List!59274)) )
))
(declare-datatypes ((Context!7138 0))(
  ( (Context!7139 (exprs!4069 List!59274)) )
))
(declare-fun baseZ!46 () (InoxSet Context!7138))

(declare-fun lt!2108541 () (InoxSet Context!7138))

(declare-fun derivationZipper!84 ((InoxSet Context!7138) List!59273) (InoxSet Context!7138))

(assert (=> b!5116200 (= (derivationZipper!84 baseZ!46 lt!2108542) lt!2108541)))

(declare-fun z!4463 () (InoxSet Context!7138))

(declare-fun lt!2108534 () C!28636)

(declare-fun derivationStepZipper!820 ((InoxSet Context!7138) C!28636) (InoxSet Context!7138))

(assert (=> b!5116200 (= lt!2108541 (derivationStepZipper!820 z!4463 lt!2108534))))

(declare-fun lt!2108523 () Unit!150273)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!45 ((InoxSet Context!7138) (InoxSet Context!7138) List!59273 C!28636) Unit!150273)

(assert (=> b!5116200 (= lt!2108523 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!45 baseZ!46 z!4463 testedP!265 lt!2108534))))

(assert (=> b!5116200 (isPrefix!5590 lt!2108542 input!5745)))

(declare-fun lt!2108527 () Unit!150273)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!980 (List!59273 List!59273) Unit!150273)

(assert (=> b!5116200 (= lt!2108527 (lemmaAddHeadSuffixToPrefixStillPrefix!980 testedP!265 input!5745))))

(declare-fun lt!2108536 () List!59273)

(assert (=> b!5116200 (= lt!2108542 (++!13010 testedP!265 lt!2108536))))

(assert (=> b!5116200 (= lt!2108536 (Cons!59149 lt!2108534 Nil!59149))))

(declare-fun lt!2108546 () List!59273)

(declare-fun head!10913 (List!59273) C!28636)

(assert (=> b!5116200 (= lt!2108534 (head!10913 lt!2108546))))

(assert (=> b!5116200 (= lt!2108546 (getSuffix!3264 input!5745 testedP!265))))

(declare-fun b!5116201 () Bool)

(declare-fun e!3190901 () Bool)

(declare-fun tp_is_empty!37643 () Bool)

(declare-fun tp!1427349 () Bool)

(assert (=> b!5116201 (= e!3190901 (and tp_is_empty!37643 tp!1427349))))

(declare-fun b!5116202 () Bool)

(declare-fun e!3190893 () Bool)

(declare-fun tp!1427352 () Bool)

(assert (=> b!5116202 (= e!3190893 tp!1427352)))

(declare-fun res!2178277 () Bool)

(assert (=> start!539796 (=> (not res!2178277) (not e!3190892))))

(assert (=> start!539796 (= res!2178277 (isPrefix!5590 testedP!265 input!5745))))

(assert (=> start!539796 e!3190892))

(declare-fun e!3190900 () Bool)

(assert (=> start!539796 e!3190900))

(declare-fun condSetEmpty!30082 () Bool)

(assert (=> start!539796 (= condSetEmpty!30082 (= z!4463 ((as const (Array Context!7138 Bool)) false)))))

(declare-fun setRes!30081 () Bool)

(assert (=> start!539796 setRes!30081))

(assert (=> start!539796 e!3190901))

(declare-fun condSetEmpty!30081 () Bool)

(assert (=> start!539796 (= condSetEmpty!30081 (= baseZ!46 ((as const (Array Context!7138 Bool)) false)))))

(declare-fun setRes!30082 () Bool)

(assert (=> start!539796 setRes!30082))

(declare-fun e!3190894 () Bool)

(assert (=> start!539796 e!3190894))

(declare-fun b!5116203 () Bool)

(declare-fun res!2178274 () Bool)

(declare-fun e!3190886 () Bool)

(assert (=> b!5116203 (=> res!2178274 e!3190886)))

(assert (=> b!5116203 (= res!2178274 (= lt!2108531 lt!2108540))))

(declare-fun setIsEmpty!30081 () Bool)

(assert (=> setIsEmpty!30081 setRes!30081))

(declare-fun setNonEmpty!30081 () Bool)

(declare-fun setElem!30082 () Context!7138)

(declare-fun tp!1427354 () Bool)

(declare-fun inv!78643 (Context!7138) Bool)

(assert (=> setNonEmpty!30081 (= setRes!30082 (and tp!1427354 (inv!78643 setElem!30082) e!3190893))))

(declare-fun setRest!30081 () (InoxSet Context!7138))

(assert (=> setNonEmpty!30081 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7138 Bool)) false) setElem!30082 true) setRest!30081))))

(declare-fun b!5116204 () Bool)

(assert (=> b!5116204 (= e!3190886 e!3190898)))

(declare-fun res!2178276 () Bool)

(assert (=> b!5116204 (=> res!2178276 e!3190898)))

(declare-fun lt!2108530 () Int)

(assert (=> b!5116204 (= res!2178276 (>= lt!2108531 lt!2108530))))

(assert (=> b!5116204 (= lt!2108530 (size!39491 input!5745))))

(declare-fun b!5116205 () Bool)

(declare-fun e!3190887 () Bool)

(declare-fun e!3190897 () Bool)

(assert (=> b!5116205 (= e!3190887 e!3190897)))

(declare-fun res!2178271 () Bool)

(assert (=> b!5116205 (=> res!2178271 e!3190897)))

(declare-fun lt!2108548 () List!59273)

(assert (=> b!5116205 (= res!2178271 (not (= lt!2108548 lt!2108539)))))

(declare-fun lt!2108545 () List!59273)

(declare-fun lt!2108529 () List!59273)

(assert (=> b!5116205 (= lt!2108545 lt!2108529)))

(declare-fun lt!2108524 () Unit!150273)

(declare-fun lemmaSamePrefixThenSameSuffix!2636 (List!59273 List!59273 List!59273 List!59273 List!59273) Unit!150273)

(assert (=> b!5116205 (= lt!2108524 (lemmaSamePrefixThenSameSuffix!2636 testedP!265 lt!2108545 testedP!265 lt!2108529 knownP!20))))

(declare-fun lt!2108528 () List!59273)

(assert (=> b!5116205 (= lt!2108528 (++!13010 testedP!265 lt!2108545))))

(assert (=> b!5116205 (= lt!2108545 (++!13010 lt!2108536 lt!2108539))))

(declare-fun lt!2108521 () Unit!150273)

(declare-fun lemmaConcatAssociativity!2768 (List!59273 List!59273 List!59273) Unit!150273)

(assert (=> b!5116205 (= lt!2108521 (lemmaConcatAssociativity!2768 testedP!265 lt!2108536 lt!2108539))))

(declare-fun b!5116206 () Bool)

(declare-fun tp!1427351 () Bool)

(assert (=> b!5116206 (= e!3190900 (and tp_is_empty!37643 tp!1427351))))

(declare-fun tp!1427350 () Bool)

(declare-fun setElem!30081 () Context!7138)

(declare-fun e!3190890 () Bool)

(declare-fun setNonEmpty!30082 () Bool)

(assert (=> setNonEmpty!30082 (= setRes!30081 (and tp!1427350 (inv!78643 setElem!30081) e!3190890))))

(declare-fun setRest!30082 () (InoxSet Context!7138))

(assert (=> setNonEmpty!30082 (= z!4463 ((_ map or) (store ((as const (Array Context!7138 Bool)) false) setElem!30081 true) setRest!30082))))

(declare-fun b!5116207 () Bool)

(declare-fun e!3190889 () Bool)

(assert (=> b!5116207 (= e!3190889 e!3190887)))

(declare-fun res!2178278 () Bool)

(assert (=> b!5116207 (=> res!2178278 e!3190887)))

(assert (=> b!5116207 (= res!2178278 (not (= lt!2108528 knownP!20)))))

(assert (=> b!5116207 (= lt!2108528 (++!13010 lt!2108542 lt!2108539))))

(declare-fun b!5116208 () Bool)

(declare-fun e!3190895 () Bool)

(assert (=> b!5116208 (= e!3190895 e!3190889)))

(declare-fun res!2178263 () Bool)

(assert (=> b!5116208 (=> res!2178263 e!3190889)))

(declare-fun $colon$colon!1131 (List!59273 C!28636) List!59273)

(assert (=> b!5116208 (= res!2178263 (not (= lt!2108529 ($colon$colon!1131 lt!2108548 lt!2108534))))))

(declare-fun tail!10054 (List!59273) List!59273)

(assert (=> b!5116208 (= lt!2108548 (tail!10054 lt!2108529))))

(declare-fun b!5116209 () Bool)

(assert (=> b!5116209 (= e!3190897 true)))

(declare-fun lt!2108535 () Int)

(declare-datatypes ((tuple2!63632 0))(
  ( (tuple2!63633 (_1!35119 List!59273) (_2!35119 List!59273)) )
))
(declare-fun findLongestMatchInnerZipper!197 ((InoxSet Context!7138) List!59273 Int List!59273 List!59273 Int) tuple2!63632)

(assert (=> b!5116209 (= lt!2108535 (size!39491 (_1!35119 (findLongestMatchInnerZipper!197 z!4463 testedP!265 lt!2108531 lt!2108546 input!5745 lt!2108530))))))

(assert (=> b!5116209 (>= (size!39491 (_1!35119 (findLongestMatchInnerZipper!197 lt!2108541 lt!2108542 (size!39491 lt!2108542) (getSuffix!3264 input!5745 lt!2108542) input!5745 lt!2108530))) lt!2108540)))

(declare-fun lt!2108532 () Unit!150273)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!13 ((InoxSet Context!7138) (InoxSet Context!7138) List!59273 List!59273 List!59273) Unit!150273)

(assert (=> b!5116209 (= lt!2108532 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!13 baseZ!46 lt!2108541 input!5745 lt!2108542 knownP!20))))

(declare-fun b!5116210 () Bool)

(assert (=> b!5116210 (= e!3190899 (not e!3190886))))

(declare-fun res!2178264 () Bool)

(assert (=> b!5116210 (=> res!2178264 e!3190886)))

(declare-fun matchZipper!853 ((InoxSet Context!7138) List!59273) Bool)

(assert (=> b!5116210 (= res!2178264 (not (matchZipper!853 z!4463 lt!2108529)))))

(assert (=> b!5116210 (= lt!2108529 (getSuffix!3264 knownP!20 testedP!265))))

(assert (=> b!5116210 (isPrefix!5590 testedP!265 knownP!20)))

(declare-fun lt!2108526 () Unit!150273)

(assert (=> b!5116210 (= lt!2108526 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!727 knownP!20 testedP!265 input!5745))))

(declare-fun b!5116211 () Bool)

(declare-fun res!2178272 () Bool)

(assert (=> b!5116211 (=> res!2178272 e!3190886)))

(declare-fun lostCauseZipper!1071 ((InoxSet Context!7138)) Bool)

(assert (=> b!5116211 (= res!2178272 (lostCauseZipper!1071 z!4463))))

(declare-fun b!5116212 () Bool)

(declare-fun res!2178270 () Bool)

(assert (=> b!5116212 (=> (not res!2178270) (not e!3190892))))

(assert (=> b!5116212 (= res!2178270 (isPrefix!5590 knownP!20 input!5745))))

(declare-fun setIsEmpty!30082 () Bool)

(assert (=> setIsEmpty!30082 setRes!30082))

(declare-fun b!5116213 () Bool)

(declare-fun res!2178267 () Bool)

(assert (=> b!5116213 (=> res!2178267 e!3190886)))

(assert (=> b!5116213 (= res!2178267 (not (= (derivationZipper!84 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5116214 () Bool)

(declare-fun e!3190888 () Bool)

(declare-fun e!3190891 () Bool)

(assert (=> b!5116214 (= e!3190888 e!3190891)))

(declare-fun res!2178268 () Bool)

(assert (=> b!5116214 (=> res!2178268 e!3190891)))

(declare-fun lt!2108525 () List!59273)

(assert (=> b!5116214 (= res!2178268 (not (= lt!2108525 input!5745)))))

(declare-fun lt!2108533 () List!59273)

(assert (=> b!5116214 (= lt!2108533 lt!2108525)))

(declare-fun lt!2108538 () List!59273)

(assert (=> b!5116214 (= lt!2108525 (++!13010 testedP!265 lt!2108538))))

(assert (=> b!5116214 (= lt!2108538 (++!13010 lt!2108529 lt!2108537))))

(declare-fun lt!2108547 () Unit!150273)

(assert (=> b!5116214 (= lt!2108547 (lemmaConcatAssociativity!2768 testedP!265 lt!2108529 lt!2108537))))

(declare-fun b!5116215 () Bool)

(assert (=> b!5116215 (= e!3190891 e!3190895)))

(declare-fun res!2178261 () Bool)

(assert (=> b!5116215 (=> res!2178261 e!3190895)))

(assert (=> b!5116215 (= res!2178261 (not (= (head!10913 lt!2108529) lt!2108534)))))

(assert (=> b!5116215 (= lt!2108538 lt!2108546)))

(declare-fun lt!2108544 () Unit!150273)

(assert (=> b!5116215 (= lt!2108544 (lemmaSamePrefixThenSameSuffix!2636 testedP!265 lt!2108538 testedP!265 lt!2108546 input!5745))))

(declare-fun b!5116216 () Bool)

(declare-fun tp!1427353 () Bool)

(assert (=> b!5116216 (= e!3190890 tp!1427353)))

(declare-fun b!5116217 () Bool)

(declare-fun res!2178266 () Bool)

(assert (=> b!5116217 (=> res!2178266 e!3190888)))

(assert (=> b!5116217 (= res!2178266 (not (= (++!13010 testedP!265 lt!2108546) input!5745)))))

(declare-fun b!5116218 () Bool)

(declare-fun res!2178265 () Bool)

(assert (=> b!5116218 (=> res!2178265 e!3190889)))

(declare-fun lt!2108522 () List!59273)

(assert (=> b!5116218 (= res!2178265 (not (= lt!2108522 knownP!20)))))

(declare-fun b!5116219 () Bool)

(assert (=> b!5116219 (= e!3190896 e!3190888)))

(declare-fun res!2178273 () Bool)

(assert (=> b!5116219 (=> res!2178273 e!3190888)))

(assert (=> b!5116219 (= res!2178273 (not (= lt!2108533 input!5745)))))

(assert (=> b!5116219 (= lt!2108533 (++!13010 lt!2108522 lt!2108537))))

(assert (=> b!5116219 (= lt!2108522 (++!13010 testedP!265 lt!2108529))))

(declare-fun b!5116220 () Bool)

(declare-fun tp!1427355 () Bool)

(assert (=> b!5116220 (= e!3190894 (and tp_is_empty!37643 tp!1427355))))

(declare-fun b!5116221 () Bool)

(declare-fun res!2178262 () Bool)

(assert (=> b!5116221 (=> (not res!2178262) (not e!3190899))))

(assert (=> b!5116221 (= res!2178262 (matchZipper!853 baseZ!46 knownP!20))))

(assert (= (and start!539796 res!2178277) b!5116212))

(assert (= (and b!5116212 res!2178270) b!5116199))

(assert (= (and b!5116199 res!2178275) b!5116221))

(assert (= (and b!5116221 res!2178262) b!5116210))

(assert (= (and b!5116210 (not res!2178264)) b!5116213))

(assert (= (and b!5116213 (not res!2178267)) b!5116211))

(assert (= (and b!5116211 (not res!2178272)) b!5116203))

(assert (= (and b!5116203 (not res!2178274)) b!5116204))

(assert (= (and b!5116204 (not res!2178276)) b!5116200))

(assert (= (and b!5116200 (not res!2178269)) b!5116219))

(assert (= (and b!5116219 (not res!2178273)) b!5116217))

(assert (= (and b!5116217 (not res!2178266)) b!5116214))

(assert (= (and b!5116214 (not res!2178268)) b!5116215))

(assert (= (and b!5116215 (not res!2178261)) b!5116208))

(assert (= (and b!5116208 (not res!2178263)) b!5116218))

(assert (= (and b!5116218 (not res!2178265)) b!5116207))

(assert (= (and b!5116207 (not res!2178278)) b!5116205))

(assert (= (and b!5116205 (not res!2178271)) b!5116209))

(get-info :version)

(assert (= (and start!539796 ((_ is Cons!59149) input!5745)) b!5116206))

(assert (= (and start!539796 condSetEmpty!30082) setIsEmpty!30081))

(assert (= (and start!539796 (not condSetEmpty!30082)) setNonEmpty!30082))

(assert (= setNonEmpty!30082 b!5116216))

(assert (= (and start!539796 ((_ is Cons!59149) testedP!265)) b!5116201))

(assert (= (and start!539796 condSetEmpty!30081) setIsEmpty!30082))

(assert (= (and start!539796 (not condSetEmpty!30081)) setNonEmpty!30081))

(assert (= setNonEmpty!30081 b!5116202))

(assert (= (and start!539796 ((_ is Cons!59149) knownP!20)) b!5116220))

(declare-fun m!6175584 () Bool)

(assert (=> start!539796 m!6175584))

(declare-fun m!6175586 () Bool)

(assert (=> b!5116214 m!6175586))

(declare-fun m!6175588 () Bool)

(assert (=> b!5116214 m!6175588))

(declare-fun m!6175590 () Bool)

(assert (=> b!5116214 m!6175590))

(declare-fun m!6175592 () Bool)

(assert (=> b!5116215 m!6175592))

(declare-fun m!6175594 () Bool)

(assert (=> b!5116215 m!6175594))

(declare-fun m!6175596 () Bool)

(assert (=> b!5116204 m!6175596))

(declare-fun m!6175598 () Bool)

(assert (=> b!5116199 m!6175598))

(declare-fun m!6175600 () Bool)

(assert (=> b!5116199 m!6175600))

(declare-fun m!6175602 () Bool)

(assert (=> b!5116205 m!6175602))

(declare-fun m!6175604 () Bool)

(assert (=> b!5116205 m!6175604))

(declare-fun m!6175606 () Bool)

(assert (=> b!5116205 m!6175606))

(declare-fun m!6175608 () Bool)

(assert (=> b!5116205 m!6175608))

(declare-fun m!6175610 () Bool)

(assert (=> b!5116208 m!6175610))

(declare-fun m!6175612 () Bool)

(assert (=> b!5116208 m!6175612))

(declare-fun m!6175614 () Bool)

(assert (=> b!5116209 m!6175614))

(declare-fun m!6175616 () Bool)

(assert (=> b!5116209 m!6175616))

(declare-fun m!6175618 () Bool)

(assert (=> b!5116209 m!6175618))

(declare-fun m!6175620 () Bool)

(assert (=> b!5116209 m!6175620))

(declare-fun m!6175622 () Bool)

(assert (=> b!5116209 m!6175622))

(declare-fun m!6175624 () Bool)

(assert (=> b!5116209 m!6175624))

(assert (=> b!5116209 m!6175618))

(assert (=> b!5116209 m!6175624))

(declare-fun m!6175626 () Bool)

(assert (=> b!5116209 m!6175626))

(declare-fun m!6175628 () Bool)

(assert (=> setNonEmpty!30082 m!6175628))

(declare-fun m!6175630 () Bool)

(assert (=> b!5116217 m!6175630))

(declare-fun m!6175632 () Bool)

(assert (=> b!5116221 m!6175632))

(declare-fun m!6175634 () Bool)

(assert (=> setNonEmpty!30081 m!6175634))

(declare-fun m!6175636 () Bool)

(assert (=> b!5116207 m!6175636))

(declare-fun m!6175638 () Bool)

(assert (=> b!5116212 m!6175638))

(declare-fun m!6175640 () Bool)

(assert (=> b!5116219 m!6175640))

(declare-fun m!6175642 () Bool)

(assert (=> b!5116219 m!6175642))

(declare-fun m!6175644 () Bool)

(assert (=> b!5116200 m!6175644))

(declare-fun m!6175646 () Bool)

(assert (=> b!5116200 m!6175646))

(declare-fun m!6175648 () Bool)

(assert (=> b!5116200 m!6175648))

(declare-fun m!6175650 () Bool)

(assert (=> b!5116200 m!6175650))

(declare-fun m!6175652 () Bool)

(assert (=> b!5116200 m!6175652))

(declare-fun m!6175654 () Bool)

(assert (=> b!5116200 m!6175654))

(declare-fun m!6175656 () Bool)

(assert (=> b!5116200 m!6175656))

(declare-fun m!6175658 () Bool)

(assert (=> b!5116200 m!6175658))

(declare-fun m!6175660 () Bool)

(assert (=> b!5116200 m!6175660))

(declare-fun m!6175662 () Bool)

(assert (=> b!5116200 m!6175662))

(declare-fun m!6175664 () Bool)

(assert (=> b!5116200 m!6175664))

(declare-fun m!6175666 () Bool)

(assert (=> b!5116200 m!6175666))

(declare-fun m!6175668 () Bool)

(assert (=> b!5116200 m!6175668))

(declare-fun m!6175670 () Bool)

(assert (=> b!5116213 m!6175670))

(declare-fun m!6175672 () Bool)

(assert (=> b!5116211 m!6175672))

(declare-fun m!6175674 () Bool)

(assert (=> b!5116210 m!6175674))

(declare-fun m!6175676 () Bool)

(assert (=> b!5116210 m!6175676))

(declare-fun m!6175678 () Bool)

(assert (=> b!5116210 m!6175678))

(declare-fun m!6175680 () Bool)

(assert (=> b!5116210 m!6175680))

(check-sat (not b!5116211) (not b!5116202) (not b!5116214) (not setNonEmpty!30082) (not b!5116215) (not b!5116199) (not b!5116220) (not b!5116217) (not b!5116201) (not b!5116205) tp_is_empty!37643 (not b!5116210) (not b!5116208) (not b!5116221) (not b!5116219) (not b!5116204) (not b!5116207) (not b!5116216) (not b!5116206) (not start!539796) (not b!5116213) (not b!5116209) (not b!5116212) (not b!5116200) (not setNonEmpty!30081))
(check-sat)
