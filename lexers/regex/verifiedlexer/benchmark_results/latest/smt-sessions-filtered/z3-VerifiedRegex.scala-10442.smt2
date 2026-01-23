; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539708 () Bool)

(assert start!539708)

(declare-fun b!5115216 () Bool)

(declare-fun res!2177617 () Bool)

(declare-fun e!3190241 () Bool)

(assert (=> b!5115216 (=> res!2177617 e!3190241)))

(declare-fun lt!2107583 () Int)

(declare-datatypes ((C!28616 0))(
  ( (C!28617 (val!23960 Int)) )
))
(declare-datatypes ((List!59251 0))(
  ( (Nil!59127) (Cons!59127 (h!65575 C!28616) (t!372260 List!59251)) )
))
(declare-fun input!5745 () List!59251)

(declare-fun size!39481 (List!59251) Int)

(assert (=> b!5115216 (= res!2177617 (>= lt!2107583 (size!39481 input!5745)))))

(declare-fun b!5115217 () Bool)

(declare-fun res!2177621 () Bool)

(assert (=> b!5115217 (=> res!2177621 e!3190241)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14175 0))(
  ( (ElementMatch!14175 (c!878919 C!28616)) (Concat!23020 (regOne!28862 Regex!14175) (regTwo!28862 Regex!14175)) (EmptyExpr!14175) (Star!14175 (reg!14504 Regex!14175)) (EmptyLang!14175) (Union!14175 (regOne!28863 Regex!14175) (regTwo!28863 Regex!14175)) )
))
(declare-datatypes ((List!59252 0))(
  ( (Nil!59128) (Cons!59128 (h!65576 Regex!14175) (t!372261 List!59252)) )
))
(declare-datatypes ((Context!7118 0))(
  ( (Context!7119 (exprs!4059 List!59252)) )
))
(declare-fun z!4463 () (InoxSet Context!7118))

(declare-fun lostCauseZipper!1061 ((InoxSet Context!7118)) Bool)

(assert (=> b!5115217 (= res!2177621 (lostCauseZipper!1061 z!4463))))

(declare-fun b!5115218 () Bool)

(declare-fun e!3190245 () Bool)

(declare-fun e!3190248 () Bool)

(assert (=> b!5115218 (= e!3190245 e!3190248)))

(declare-fun res!2177608 () Bool)

(assert (=> b!5115218 (=> (not res!2177608) (not e!3190248))))

(declare-fun lt!2107579 () Int)

(assert (=> b!5115218 (= res!2177608 (>= lt!2107579 lt!2107583))))

(declare-fun testedP!265 () List!59251)

(assert (=> b!5115218 (= lt!2107583 (size!39481 testedP!265))))

(declare-fun knownP!20 () List!59251)

(assert (=> b!5115218 (= lt!2107579 (size!39481 knownP!20))))

(declare-fun b!5115219 () Bool)

(declare-fun e!3190247 () Bool)

(declare-fun e!3190253 () Bool)

(assert (=> b!5115219 (= e!3190247 e!3190253)))

(declare-fun res!2177613 () Bool)

(assert (=> b!5115219 (=> res!2177613 e!3190253)))

(declare-fun lt!2107588 () List!59251)

(declare-fun lt!2107586 () C!28616)

(declare-fun lt!2107584 () List!59251)

(declare-fun $colon$colon!1121 (List!59251 C!28616) List!59251)

(assert (=> b!5115219 (= res!2177613 (not (= lt!2107588 ($colon$colon!1121 lt!2107584 lt!2107586))))))

(declare-fun tail!10044 (List!59251) List!59251)

(assert (=> b!5115219 (= lt!2107584 (tail!10044 lt!2107588))))

(declare-fun setIsEmpty!30013 () Bool)

(declare-fun setRes!30014 () Bool)

(assert (=> setIsEmpty!30013 setRes!30014))

(declare-fun b!5115220 () Bool)

(declare-fun e!3190240 () Bool)

(declare-fun e!3190252 () Bool)

(assert (=> b!5115220 (= e!3190240 e!3190252)))

(declare-fun res!2177622 () Bool)

(assert (=> b!5115220 (=> res!2177622 e!3190252)))

(declare-fun lt!2107594 () List!59251)

(assert (=> b!5115220 (= res!2177622 (not (= lt!2107594 input!5745)))))

(declare-fun lt!2107587 () List!59251)

(declare-fun lt!2107575 () List!59251)

(declare-fun ++!13000 (List!59251 List!59251) List!59251)

(assert (=> b!5115220 (= lt!2107594 (++!13000 lt!2107587 lt!2107575))))

(assert (=> b!5115220 (= lt!2107587 (++!13000 testedP!265 lt!2107588))))

(declare-fun b!5115221 () Bool)

(declare-fun res!2177607 () Bool)

(assert (=> b!5115221 (=> res!2177607 e!3190252)))

(declare-fun lt!2107571 () List!59251)

(assert (=> b!5115221 (= res!2177607 (not (= (++!13000 testedP!265 lt!2107571) input!5745)))))

(declare-fun tp!1427097 () Bool)

(declare-fun setNonEmpty!30013 () Bool)

(declare-fun setElem!30014 () Context!7118)

(declare-fun e!3190250 () Bool)

(declare-fun inv!78618 (Context!7118) Bool)

(assert (=> setNonEmpty!30013 (= setRes!30014 (and tp!1427097 (inv!78618 setElem!30014) e!3190250))))

(declare-fun baseZ!46 () (InoxSet Context!7118))

(declare-fun setRest!30014 () (InoxSet Context!7118))

(assert (=> setNonEmpty!30013 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7118 Bool)) false) setElem!30014 true) setRest!30014))))

(declare-fun b!5115223 () Bool)

(declare-fun e!3190243 () Bool)

(assert (=> b!5115223 (= e!3190253 e!3190243)))

(declare-fun res!2177619 () Bool)

(assert (=> b!5115223 (=> res!2177619 e!3190243)))

(declare-fun lt!2107577 () List!59251)

(assert (=> b!5115223 (= res!2177619 (not (= lt!2107577 knownP!20)))))

(declare-fun lt!2107573 () List!59251)

(declare-fun lt!2107576 () List!59251)

(assert (=> b!5115223 (= lt!2107577 (++!13000 lt!2107573 lt!2107576))))

(declare-fun b!5115224 () Bool)

(declare-fun res!2177614 () Bool)

(assert (=> b!5115224 (=> res!2177614 e!3190241)))

(declare-fun derivationZipper!74 ((InoxSet Context!7118) List!59251) (InoxSet Context!7118))

(assert (=> b!5115224 (= res!2177614 (not (= (derivationZipper!74 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5115225 () Bool)

(declare-fun e!3190244 () Bool)

(declare-fun tp_is_empty!37623 () Bool)

(declare-fun tp!1427102 () Bool)

(assert (=> b!5115225 (= e!3190244 (and tp_is_empty!37623 tp!1427102))))

(declare-fun b!5115226 () Bool)

(declare-fun e!3190251 () Bool)

(declare-fun tp!1427103 () Bool)

(assert (=> b!5115226 (= e!3190251 (and tp_is_empty!37623 tp!1427103))))

(declare-fun b!5115227 () Bool)

(declare-fun res!2177610 () Bool)

(assert (=> b!5115227 (=> (not res!2177610) (not e!3190245))))

(declare-fun isPrefix!5580 (List!59251 List!59251) Bool)

(assert (=> b!5115227 (= res!2177610 (isPrefix!5580 knownP!20 input!5745))))

(declare-fun b!5115228 () Bool)

(declare-fun e!3190246 () Bool)

(assert (=> b!5115228 (= e!3190246 e!3190247)))

(declare-fun res!2177606 () Bool)

(assert (=> b!5115228 (=> res!2177606 e!3190247)))

(declare-fun head!10903 (List!59251) C!28616)

(assert (=> b!5115228 (= res!2177606 (not (= (head!10903 lt!2107588) lt!2107586)))))

(declare-fun lt!2107581 () List!59251)

(assert (=> b!5115228 (= lt!2107581 lt!2107571)))

(declare-datatypes ((Unit!150249 0))(
  ( (Unit!150250) )
))
(declare-fun lt!2107582 () Unit!150249)

(declare-fun lemmaSamePrefixThenSameSuffix!2626 (List!59251 List!59251 List!59251 List!59251 List!59251) Unit!150249)

(assert (=> b!5115228 (= lt!2107582 (lemmaSamePrefixThenSameSuffix!2626 testedP!265 lt!2107581 testedP!265 lt!2107571 input!5745))))

(declare-fun res!2177612 () Bool)

(assert (=> start!539708 (=> (not res!2177612) (not e!3190245))))

(assert (=> start!539708 (= res!2177612 (isPrefix!5580 testedP!265 input!5745))))

(assert (=> start!539708 e!3190245))

(assert (=> start!539708 e!3190244))

(declare-fun condSetEmpty!30014 () Bool)

(assert (=> start!539708 (= condSetEmpty!30014 (= z!4463 ((as const (Array Context!7118 Bool)) false)))))

(declare-fun setRes!30013 () Bool)

(assert (=> start!539708 setRes!30013))

(declare-fun e!3190242 () Bool)

(assert (=> start!539708 e!3190242))

(declare-fun condSetEmpty!30013 () Bool)

(assert (=> start!539708 (= condSetEmpty!30013 (= baseZ!46 ((as const (Array Context!7118 Bool)) false)))))

(assert (=> start!539708 setRes!30014))

(assert (=> start!539708 e!3190251))

(declare-fun b!5115222 () Bool)

(declare-fun res!2177611 () Bool)

(assert (=> b!5115222 (=> (not res!2177611) (not e!3190248))))

(declare-fun matchZipper!843 ((InoxSet Context!7118) List!59251) Bool)

(assert (=> b!5115222 (= res!2177611 (matchZipper!843 baseZ!46 knownP!20))))

(declare-fun b!5115229 () Bool)

(assert (=> b!5115229 (= e!3190252 e!3190246)))

(declare-fun res!2177615 () Bool)

(assert (=> b!5115229 (=> res!2177615 e!3190246)))

(declare-fun lt!2107578 () List!59251)

(assert (=> b!5115229 (= res!2177615 (not (= lt!2107578 input!5745)))))

(assert (=> b!5115229 (= lt!2107594 lt!2107578)))

(assert (=> b!5115229 (= lt!2107578 (++!13000 testedP!265 lt!2107581))))

(assert (=> b!5115229 (= lt!2107581 (++!13000 lt!2107588 lt!2107575))))

(declare-fun lt!2107593 () Unit!150249)

(declare-fun lemmaConcatAssociativity!2758 (List!59251 List!59251 List!59251) Unit!150249)

(assert (=> b!5115229 (= lt!2107593 (lemmaConcatAssociativity!2758 testedP!265 lt!2107588 lt!2107575))))

(declare-fun tp!1427098 () Bool)

(declare-fun setNonEmpty!30014 () Bool)

(declare-fun setElem!30013 () Context!7118)

(declare-fun e!3190249 () Bool)

(assert (=> setNonEmpty!30014 (= setRes!30013 (and tp!1427098 (inv!78618 setElem!30013) e!3190249))))

(declare-fun setRest!30013 () (InoxSet Context!7118))

(assert (=> setNonEmpty!30014 (= z!4463 ((_ map or) (store ((as const (Array Context!7118 Bool)) false) setElem!30013 true) setRest!30013))))

(declare-fun b!5115230 () Bool)

(declare-fun res!2177620 () Bool)

(assert (=> b!5115230 (=> res!2177620 e!3190253)))

(assert (=> b!5115230 (= res!2177620 (not (= lt!2107587 knownP!20)))))

(declare-fun b!5115231 () Bool)

(assert (=> b!5115231 (= e!3190243 (or (not (= lt!2107584 lt!2107576)) (not (= lt!2107571 Nil!59127))))))

(declare-fun lt!2107580 () List!59251)

(assert (=> b!5115231 (= lt!2107580 lt!2107588)))

(declare-fun lt!2107572 () Unit!150249)

(assert (=> b!5115231 (= lt!2107572 (lemmaSamePrefixThenSameSuffix!2626 testedP!265 lt!2107580 testedP!265 lt!2107588 knownP!20))))

(assert (=> b!5115231 (= lt!2107577 (++!13000 testedP!265 lt!2107580))))

(declare-fun lt!2107589 () List!59251)

(assert (=> b!5115231 (= lt!2107580 (++!13000 lt!2107589 lt!2107576))))

(declare-fun lt!2107592 () Unit!150249)

(assert (=> b!5115231 (= lt!2107592 (lemmaConcatAssociativity!2758 testedP!265 lt!2107589 lt!2107576))))

(declare-fun b!5115232 () Bool)

(declare-fun res!2177616 () Bool)

(assert (=> b!5115232 (=> res!2177616 e!3190241)))

(assert (=> b!5115232 (= res!2177616 (= lt!2107583 lt!2107579))))

(declare-fun b!5115233 () Bool)

(declare-fun tp!1427101 () Bool)

(assert (=> b!5115233 (= e!3190249 tp!1427101)))

(declare-fun b!5115234 () Bool)

(declare-fun tp!1427100 () Bool)

(assert (=> b!5115234 (= e!3190250 tp!1427100)))

(declare-fun b!5115235 () Bool)

(declare-fun tp!1427099 () Bool)

(assert (=> b!5115235 (= e!3190242 (and tp_is_empty!37623 tp!1427099))))

(declare-fun setIsEmpty!30014 () Bool)

(assert (=> setIsEmpty!30014 setRes!30013))

(declare-fun b!5115236 () Bool)

(assert (=> b!5115236 (= e!3190241 e!3190240)))

(declare-fun res!2177609 () Bool)

(assert (=> b!5115236 (=> res!2177609 e!3190240)))

(assert (=> b!5115236 (= res!2177609 (not (= (++!13000 knownP!20 lt!2107575) input!5745)))))

(declare-fun getSuffix!3254 (List!59251 List!59251) List!59251)

(assert (=> b!5115236 (= lt!2107575 (getSuffix!3254 input!5745 knownP!20))))

(assert (=> b!5115236 (= lt!2107576 (getSuffix!3254 knownP!20 lt!2107573))))

(assert (=> b!5115236 (isPrefix!5580 lt!2107573 knownP!20)))

(declare-fun lt!2107591 () Unit!150249)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!717 (List!59251 List!59251 List!59251) Unit!150249)

(assert (=> b!5115236 (= lt!2107591 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!717 knownP!20 lt!2107573 input!5745))))

(declare-fun derivationStepZipper!810 ((InoxSet Context!7118) C!28616) (InoxSet Context!7118))

(assert (=> b!5115236 (= (derivationZipper!74 baseZ!46 lt!2107573) (derivationStepZipper!810 z!4463 lt!2107586))))

(declare-fun lt!2107590 () Unit!150249)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!35 ((InoxSet Context!7118) (InoxSet Context!7118) List!59251 C!28616) Unit!150249)

(assert (=> b!5115236 (= lt!2107590 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!35 baseZ!46 z!4463 testedP!265 lt!2107586))))

(assert (=> b!5115236 (isPrefix!5580 lt!2107573 input!5745)))

(declare-fun lt!2107574 () Unit!150249)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!970 (List!59251 List!59251) Unit!150249)

(assert (=> b!5115236 (= lt!2107574 (lemmaAddHeadSuffixToPrefixStillPrefix!970 testedP!265 input!5745))))

(assert (=> b!5115236 (= lt!2107573 (++!13000 testedP!265 lt!2107589))))

(assert (=> b!5115236 (= lt!2107589 (Cons!59127 lt!2107586 Nil!59127))))

(assert (=> b!5115236 (= lt!2107586 (head!10903 lt!2107571))))

(assert (=> b!5115236 (= lt!2107571 (getSuffix!3254 input!5745 testedP!265))))

(declare-fun b!5115237 () Bool)

(assert (=> b!5115237 (= e!3190248 (not e!3190241))))

(declare-fun res!2177618 () Bool)

(assert (=> b!5115237 (=> res!2177618 e!3190241)))

(assert (=> b!5115237 (= res!2177618 (not (matchZipper!843 z!4463 lt!2107588)))))

(assert (=> b!5115237 (= lt!2107588 (getSuffix!3254 knownP!20 testedP!265))))

(assert (=> b!5115237 (isPrefix!5580 testedP!265 knownP!20)))

(declare-fun lt!2107585 () Unit!150249)

(assert (=> b!5115237 (= lt!2107585 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!717 knownP!20 testedP!265 input!5745))))

(assert (= (and start!539708 res!2177612) b!5115227))

(assert (= (and b!5115227 res!2177610) b!5115218))

(assert (= (and b!5115218 res!2177608) b!5115222))

(assert (= (and b!5115222 res!2177611) b!5115237))

(assert (= (and b!5115237 (not res!2177618)) b!5115224))

(assert (= (and b!5115224 (not res!2177614)) b!5115217))

(assert (= (and b!5115217 (not res!2177621)) b!5115232))

(assert (= (and b!5115232 (not res!2177616)) b!5115216))

(assert (= (and b!5115216 (not res!2177617)) b!5115236))

(assert (= (and b!5115236 (not res!2177609)) b!5115220))

(assert (= (and b!5115220 (not res!2177622)) b!5115221))

(assert (= (and b!5115221 (not res!2177607)) b!5115229))

(assert (= (and b!5115229 (not res!2177615)) b!5115228))

(assert (= (and b!5115228 (not res!2177606)) b!5115219))

(assert (= (and b!5115219 (not res!2177613)) b!5115230))

(assert (= (and b!5115230 (not res!2177620)) b!5115223))

(assert (= (and b!5115223 (not res!2177619)) b!5115231))

(get-info :version)

(assert (= (and start!539708 ((_ is Cons!59127) input!5745)) b!5115225))

(assert (= (and start!539708 condSetEmpty!30014) setIsEmpty!30014))

(assert (= (and start!539708 (not condSetEmpty!30014)) setNonEmpty!30014))

(assert (= setNonEmpty!30014 b!5115233))

(assert (= (and start!539708 ((_ is Cons!59127) testedP!265)) b!5115235))

(assert (= (and start!539708 condSetEmpty!30013) setIsEmpty!30013))

(assert (= (and start!539708 (not condSetEmpty!30013)) setNonEmpty!30013))

(assert (= setNonEmpty!30013 b!5115234))

(assert (= (and start!539708 ((_ is Cons!59127) knownP!20)) b!5115226))

(declare-fun m!6174194 () Bool)

(assert (=> b!5115219 m!6174194))

(declare-fun m!6174196 () Bool)

(assert (=> b!5115219 m!6174196))

(declare-fun m!6174198 () Bool)

(assert (=> start!539708 m!6174198))

(declare-fun m!6174200 () Bool)

(assert (=> b!5115222 m!6174200))

(declare-fun m!6174202 () Bool)

(assert (=> b!5115216 m!6174202))

(declare-fun m!6174204 () Bool)

(assert (=> b!5115218 m!6174204))

(declare-fun m!6174206 () Bool)

(assert (=> b!5115218 m!6174206))

(declare-fun m!6174208 () Bool)

(assert (=> b!5115220 m!6174208))

(declare-fun m!6174210 () Bool)

(assert (=> b!5115220 m!6174210))

(declare-fun m!6174212 () Bool)

(assert (=> b!5115221 m!6174212))

(declare-fun m!6174214 () Bool)

(assert (=> b!5115224 m!6174214))

(declare-fun m!6174216 () Bool)

(assert (=> b!5115217 m!6174216))

(declare-fun m!6174218 () Bool)

(assert (=> b!5115227 m!6174218))

(declare-fun m!6174220 () Bool)

(assert (=> b!5115237 m!6174220))

(declare-fun m!6174222 () Bool)

(assert (=> b!5115237 m!6174222))

(declare-fun m!6174224 () Bool)

(assert (=> b!5115237 m!6174224))

(declare-fun m!6174226 () Bool)

(assert (=> b!5115237 m!6174226))

(declare-fun m!6174228 () Bool)

(assert (=> b!5115223 m!6174228))

(declare-fun m!6174230 () Bool)

(assert (=> b!5115228 m!6174230))

(declare-fun m!6174232 () Bool)

(assert (=> b!5115228 m!6174232))

(declare-fun m!6174234 () Bool)

(assert (=> setNonEmpty!30014 m!6174234))

(declare-fun m!6174236 () Bool)

(assert (=> b!5115236 m!6174236))

(declare-fun m!6174238 () Bool)

(assert (=> b!5115236 m!6174238))

(declare-fun m!6174240 () Bool)

(assert (=> b!5115236 m!6174240))

(declare-fun m!6174242 () Bool)

(assert (=> b!5115236 m!6174242))

(declare-fun m!6174244 () Bool)

(assert (=> b!5115236 m!6174244))

(declare-fun m!6174246 () Bool)

(assert (=> b!5115236 m!6174246))

(declare-fun m!6174248 () Bool)

(assert (=> b!5115236 m!6174248))

(declare-fun m!6174250 () Bool)

(assert (=> b!5115236 m!6174250))

(declare-fun m!6174252 () Bool)

(assert (=> b!5115236 m!6174252))

(declare-fun m!6174254 () Bool)

(assert (=> b!5115236 m!6174254))

(declare-fun m!6174256 () Bool)

(assert (=> b!5115236 m!6174256))

(declare-fun m!6174258 () Bool)

(assert (=> b!5115236 m!6174258))

(declare-fun m!6174260 () Bool)

(assert (=> b!5115236 m!6174260))

(declare-fun m!6174262 () Bool)

(assert (=> b!5115229 m!6174262))

(declare-fun m!6174264 () Bool)

(assert (=> b!5115229 m!6174264))

(declare-fun m!6174266 () Bool)

(assert (=> b!5115229 m!6174266))

(declare-fun m!6174268 () Bool)

(assert (=> setNonEmpty!30013 m!6174268))

(declare-fun m!6174270 () Bool)

(assert (=> b!5115231 m!6174270))

(declare-fun m!6174272 () Bool)

(assert (=> b!5115231 m!6174272))

(declare-fun m!6174274 () Bool)

(assert (=> b!5115231 m!6174274))

(declare-fun m!6174276 () Bool)

(assert (=> b!5115231 m!6174276))

(check-sat (not b!5115233) (not b!5115216) (not b!5115229) (not setNonEmpty!30013) (not b!5115221) (not b!5115222) (not b!5115223) (not b!5115225) (not b!5115217) (not b!5115224) (not b!5115219) (not setNonEmpty!30014) (not b!5115237) (not b!5115234) (not b!5115227) (not b!5115228) (not start!539708) (not b!5115226) tp_is_empty!37623 (not b!5115220) (not b!5115236) (not b!5115235) (not b!5115218) (not b!5115231))
(check-sat)
(get-model)

(declare-fun d!1653203 () Bool)

(declare-fun c!878922 () Bool)

(declare-fun isEmpty!31898 (List!59251) Bool)

(assert (=> d!1653203 (= c!878922 (isEmpty!31898 knownP!20))))

(declare-fun e!3190256 () Bool)

(assert (=> d!1653203 (= (matchZipper!843 baseZ!46 knownP!20) e!3190256)))

(declare-fun b!5115242 () Bool)

(declare-fun nullableZipper!1009 ((InoxSet Context!7118)) Bool)

(assert (=> b!5115242 (= e!3190256 (nullableZipper!1009 baseZ!46))))

(declare-fun b!5115243 () Bool)

(assert (=> b!5115243 (= e!3190256 (matchZipper!843 (derivationStepZipper!810 baseZ!46 (head!10903 knownP!20)) (tail!10044 knownP!20)))))

(assert (= (and d!1653203 c!878922) b!5115242))

(assert (= (and d!1653203 (not c!878922)) b!5115243))

(declare-fun m!6174278 () Bool)

(assert (=> d!1653203 m!6174278))

(declare-fun m!6174280 () Bool)

(assert (=> b!5115242 m!6174280))

(declare-fun m!6174282 () Bool)

(assert (=> b!5115243 m!6174282))

(assert (=> b!5115243 m!6174282))

(declare-fun m!6174284 () Bool)

(assert (=> b!5115243 m!6174284))

(declare-fun m!6174286 () Bool)

(assert (=> b!5115243 m!6174286))

(assert (=> b!5115243 m!6174284))

(assert (=> b!5115243 m!6174286))

(declare-fun m!6174288 () Bool)

(assert (=> b!5115243 m!6174288))

(assert (=> b!5115222 d!1653203))

(declare-fun d!1653205 () Bool)

(assert (=> d!1653205 (= lt!2107580 lt!2107588)))

(declare-fun lt!2107597 () Unit!150249)

(declare-fun choose!37557 (List!59251 List!59251 List!59251 List!59251 List!59251) Unit!150249)

(assert (=> d!1653205 (= lt!2107597 (choose!37557 testedP!265 lt!2107580 testedP!265 lt!2107588 knownP!20))))

(assert (=> d!1653205 (isPrefix!5580 testedP!265 knownP!20)))

(assert (=> d!1653205 (= (lemmaSamePrefixThenSameSuffix!2626 testedP!265 lt!2107580 testedP!265 lt!2107588 knownP!20) lt!2107597)))

(declare-fun bs!1192330 () Bool)

(assert (= bs!1192330 d!1653205))

(declare-fun m!6174290 () Bool)

(assert (=> bs!1192330 m!6174290))

(assert (=> bs!1192330 m!6174224))

(assert (=> b!5115231 d!1653205))

(declare-fun b!5115252 () Bool)

(declare-fun e!3190262 () List!59251)

(assert (=> b!5115252 (= e!3190262 lt!2107580)))

(declare-fun d!1653207 () Bool)

(declare-fun e!3190261 () Bool)

(assert (=> d!1653207 e!3190261))

(declare-fun res!2177627 () Bool)

(assert (=> d!1653207 (=> (not res!2177627) (not e!3190261))))

(declare-fun lt!2107600 () List!59251)

(declare-fun content!10513 (List!59251) (InoxSet C!28616))

(assert (=> d!1653207 (= res!2177627 (= (content!10513 lt!2107600) ((_ map or) (content!10513 testedP!265) (content!10513 lt!2107580))))))

(assert (=> d!1653207 (= lt!2107600 e!3190262)))

(declare-fun c!878925 () Bool)

(assert (=> d!1653207 (= c!878925 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653207 (= (++!13000 testedP!265 lt!2107580) lt!2107600)))

(declare-fun b!5115255 () Bool)

(assert (=> b!5115255 (= e!3190261 (or (not (= lt!2107580 Nil!59127)) (= lt!2107600 testedP!265)))))

(declare-fun b!5115253 () Bool)

(assert (=> b!5115253 (= e!3190262 (Cons!59127 (h!65575 testedP!265) (++!13000 (t!372260 testedP!265) lt!2107580)))))

(declare-fun b!5115254 () Bool)

(declare-fun res!2177628 () Bool)

(assert (=> b!5115254 (=> (not res!2177628) (not e!3190261))))

(assert (=> b!5115254 (= res!2177628 (= (size!39481 lt!2107600) (+ (size!39481 testedP!265) (size!39481 lt!2107580))))))

(assert (= (and d!1653207 c!878925) b!5115252))

(assert (= (and d!1653207 (not c!878925)) b!5115253))

(assert (= (and d!1653207 res!2177627) b!5115254))

(assert (= (and b!5115254 res!2177628) b!5115255))

(declare-fun m!6174292 () Bool)

(assert (=> d!1653207 m!6174292))

(declare-fun m!6174294 () Bool)

(assert (=> d!1653207 m!6174294))

(declare-fun m!6174296 () Bool)

(assert (=> d!1653207 m!6174296))

(declare-fun m!6174298 () Bool)

(assert (=> b!5115253 m!6174298))

(declare-fun m!6174300 () Bool)

(assert (=> b!5115254 m!6174300))

(assert (=> b!5115254 m!6174204))

(declare-fun m!6174302 () Bool)

(assert (=> b!5115254 m!6174302))

(assert (=> b!5115231 d!1653207))

(declare-fun b!5115256 () Bool)

(declare-fun e!3190264 () List!59251)

(assert (=> b!5115256 (= e!3190264 lt!2107576)))

(declare-fun d!1653211 () Bool)

(declare-fun e!3190263 () Bool)

(assert (=> d!1653211 e!3190263))

(declare-fun res!2177629 () Bool)

(assert (=> d!1653211 (=> (not res!2177629) (not e!3190263))))

(declare-fun lt!2107601 () List!59251)

(assert (=> d!1653211 (= res!2177629 (= (content!10513 lt!2107601) ((_ map or) (content!10513 lt!2107589) (content!10513 lt!2107576))))))

(assert (=> d!1653211 (= lt!2107601 e!3190264)))

(declare-fun c!878926 () Bool)

(assert (=> d!1653211 (= c!878926 ((_ is Nil!59127) lt!2107589))))

(assert (=> d!1653211 (= (++!13000 lt!2107589 lt!2107576) lt!2107601)))

(declare-fun b!5115259 () Bool)

(assert (=> b!5115259 (= e!3190263 (or (not (= lt!2107576 Nil!59127)) (= lt!2107601 lt!2107589)))))

(declare-fun b!5115257 () Bool)

(assert (=> b!5115257 (= e!3190264 (Cons!59127 (h!65575 lt!2107589) (++!13000 (t!372260 lt!2107589) lt!2107576)))))

(declare-fun b!5115258 () Bool)

(declare-fun res!2177630 () Bool)

(assert (=> b!5115258 (=> (not res!2177630) (not e!3190263))))

(assert (=> b!5115258 (= res!2177630 (= (size!39481 lt!2107601) (+ (size!39481 lt!2107589) (size!39481 lt!2107576))))))

(assert (= (and d!1653211 c!878926) b!5115256))

(assert (= (and d!1653211 (not c!878926)) b!5115257))

(assert (= (and d!1653211 res!2177629) b!5115258))

(assert (= (and b!5115258 res!2177630) b!5115259))

(declare-fun m!6174304 () Bool)

(assert (=> d!1653211 m!6174304))

(declare-fun m!6174306 () Bool)

(assert (=> d!1653211 m!6174306))

(declare-fun m!6174308 () Bool)

(assert (=> d!1653211 m!6174308))

(declare-fun m!6174310 () Bool)

(assert (=> b!5115257 m!6174310))

(declare-fun m!6174312 () Bool)

(assert (=> b!5115258 m!6174312))

(declare-fun m!6174314 () Bool)

(assert (=> b!5115258 m!6174314))

(declare-fun m!6174316 () Bool)

(assert (=> b!5115258 m!6174316))

(assert (=> b!5115231 d!1653211))

(declare-fun d!1653213 () Bool)

(assert (=> d!1653213 (= (++!13000 (++!13000 testedP!265 lt!2107589) lt!2107576) (++!13000 testedP!265 (++!13000 lt!2107589 lt!2107576)))))

(declare-fun lt!2107606 () Unit!150249)

(declare-fun choose!37559 (List!59251 List!59251 List!59251) Unit!150249)

(assert (=> d!1653213 (= lt!2107606 (choose!37559 testedP!265 lt!2107589 lt!2107576))))

(assert (=> d!1653213 (= (lemmaConcatAssociativity!2758 testedP!265 lt!2107589 lt!2107576) lt!2107606)))

(declare-fun bs!1192331 () Bool)

(assert (= bs!1192331 d!1653213))

(declare-fun m!6174318 () Bool)

(assert (=> bs!1192331 m!6174318))

(assert (=> bs!1192331 m!6174250))

(declare-fun m!6174320 () Bool)

(assert (=> bs!1192331 m!6174320))

(assert (=> bs!1192331 m!6174274))

(declare-fun m!6174322 () Bool)

(assert (=> bs!1192331 m!6174322))

(assert (=> bs!1192331 m!6174250))

(assert (=> bs!1192331 m!6174274))

(assert (=> b!5115231 d!1653213))

(declare-fun d!1653215 () Bool)

(declare-fun lambda!250800 () Int)

(declare-fun forall!13574 (List!59252 Int) Bool)

(assert (=> d!1653215 (= (inv!78618 setElem!30014) (forall!13574 (exprs!4059 setElem!30014) lambda!250800))))

(declare-fun bs!1192341 () Bool)

(assert (= bs!1192341 d!1653215))

(declare-fun m!6174474 () Bool)

(assert (=> bs!1192341 m!6174474))

(assert (=> setNonEmpty!30013 d!1653215))

(declare-fun b!5115342 () Bool)

(declare-fun e!3190310 () List!59251)

(assert (=> b!5115342 (= e!3190310 lt!2107576)))

(declare-fun d!1653271 () Bool)

(declare-fun e!3190309 () Bool)

(assert (=> d!1653271 e!3190309))

(declare-fun res!2177667 () Bool)

(assert (=> d!1653271 (=> (not res!2177667) (not e!3190309))))

(declare-fun lt!2107643 () List!59251)

(assert (=> d!1653271 (= res!2177667 (= (content!10513 lt!2107643) ((_ map or) (content!10513 lt!2107573) (content!10513 lt!2107576))))))

(assert (=> d!1653271 (= lt!2107643 e!3190310)))

(declare-fun c!878952 () Bool)

(assert (=> d!1653271 (= c!878952 ((_ is Nil!59127) lt!2107573))))

(assert (=> d!1653271 (= (++!13000 lt!2107573 lt!2107576) lt!2107643)))

(declare-fun b!5115345 () Bool)

(assert (=> b!5115345 (= e!3190309 (or (not (= lt!2107576 Nil!59127)) (= lt!2107643 lt!2107573)))))

(declare-fun b!5115343 () Bool)

(assert (=> b!5115343 (= e!3190310 (Cons!59127 (h!65575 lt!2107573) (++!13000 (t!372260 lt!2107573) lt!2107576)))))

(declare-fun b!5115344 () Bool)

(declare-fun res!2177668 () Bool)

(assert (=> b!5115344 (=> (not res!2177668) (not e!3190309))))

(assert (=> b!5115344 (= res!2177668 (= (size!39481 lt!2107643) (+ (size!39481 lt!2107573) (size!39481 lt!2107576))))))

(assert (= (and d!1653271 c!878952) b!5115342))

(assert (= (and d!1653271 (not c!878952)) b!5115343))

(assert (= (and d!1653271 res!2177667) b!5115344))

(assert (= (and b!5115344 res!2177668) b!5115345))

(declare-fun m!6174476 () Bool)

(assert (=> d!1653271 m!6174476))

(declare-fun m!6174478 () Bool)

(assert (=> d!1653271 m!6174478))

(assert (=> d!1653271 m!6174308))

(declare-fun m!6174480 () Bool)

(assert (=> b!5115343 m!6174480))

(declare-fun m!6174482 () Bool)

(assert (=> b!5115344 m!6174482))

(declare-fun m!6174484 () Bool)

(assert (=> b!5115344 m!6174484))

(assert (=> b!5115344 m!6174316))

(assert (=> b!5115223 d!1653271))

(declare-fun d!1653273 () Bool)

(declare-fun c!878959 () Bool)

(assert (=> d!1653273 (= c!878959 ((_ is Cons!59127) testedP!265))))

(declare-fun e!3190325 () (InoxSet Context!7118))

(assert (=> d!1653273 (= (derivationZipper!74 baseZ!46 testedP!265) e!3190325)))

(declare-fun b!5115370 () Bool)

(assert (=> b!5115370 (= e!3190325 (derivationZipper!74 (derivationStepZipper!810 baseZ!46 (h!65575 testedP!265)) (t!372260 testedP!265)))))

(declare-fun b!5115371 () Bool)

(assert (=> b!5115371 (= e!3190325 baseZ!46)))

(assert (= (and d!1653273 c!878959) b!5115370))

(assert (= (and d!1653273 (not c!878959)) b!5115371))

(declare-fun m!6174522 () Bool)

(assert (=> b!5115370 m!6174522))

(assert (=> b!5115370 m!6174522))

(declare-fun m!6174524 () Bool)

(assert (=> b!5115370 m!6174524))

(assert (=> b!5115224 d!1653273))

(declare-fun d!1653289 () Bool)

(declare-fun lt!2107652 () Int)

(assert (=> d!1653289 (>= lt!2107652 0)))

(declare-fun e!3190328 () Int)

(assert (=> d!1653289 (= lt!2107652 e!3190328)))

(declare-fun c!878962 () Bool)

(assert (=> d!1653289 (= c!878962 ((_ is Nil!59127) input!5745))))

(assert (=> d!1653289 (= (size!39481 input!5745) lt!2107652)))

(declare-fun b!5115376 () Bool)

(assert (=> b!5115376 (= e!3190328 0)))

(declare-fun b!5115377 () Bool)

(assert (=> b!5115377 (= e!3190328 (+ 1 (size!39481 (t!372260 input!5745))))))

(assert (= (and d!1653289 c!878962) b!5115376))

(assert (= (and d!1653289 (not c!878962)) b!5115377))

(declare-fun m!6174526 () Bool)

(assert (=> b!5115377 m!6174526))

(assert (=> b!5115216 d!1653289))

(declare-fun bs!1192344 () Bool)

(declare-fun b!5115398 () Bool)

(declare-fun d!1653291 () Bool)

(assert (= bs!1192344 (and b!5115398 d!1653291)))

(declare-fun lambda!250826 () Int)

(declare-fun lambda!250823 () Int)

(assert (=> bs!1192344 (not (= lambda!250826 lambda!250823))))

(declare-fun bs!1192345 () Bool)

(declare-fun b!5115399 () Bool)

(assert (= bs!1192345 (and b!5115399 d!1653291)))

(declare-fun lambda!250827 () Int)

(assert (=> bs!1192345 (not (= lambda!250827 lambda!250823))))

(declare-fun bs!1192346 () Bool)

(assert (= bs!1192346 (and b!5115399 b!5115398)))

(assert (=> bs!1192346 (= lambda!250827 lambda!250826)))

(declare-datatypes ((List!59253 0))(
  ( (Nil!59129) (Cons!59129 (h!65577 Context!7118) (t!372264 List!59253)) )
))
(declare-fun lt!2107690 () List!59253)

(declare-fun call!356507 () Bool)

(declare-fun lt!2107694 () List!59253)

(declare-fun bm!356502 () Bool)

(declare-fun c!878985 () Bool)

(declare-fun exists!1456 (List!59253 Int) Bool)

(assert (=> bm!356502 (= call!356507 (exists!1456 (ite c!878985 lt!2107694 lt!2107690) (ite c!878985 lambda!250826 lambda!250827)))))

(declare-fun e!3190348 () Unit!150249)

(declare-fun Unit!150251 () Unit!150249)

(assert (=> b!5115399 (= e!3190348 Unit!150251)))

(declare-fun call!356506 () List!59253)

(assert (=> b!5115399 (= lt!2107690 call!356506)))

(declare-fun lt!2107692 () Unit!150249)

(declare-fun lemmaForallThenNotExists!302 (List!59253 Int) Unit!150249)

(assert (=> b!5115399 (= lt!2107692 (lemmaForallThenNotExists!302 lt!2107690 lambda!250823))))

(assert (=> b!5115399 (not call!356507)))

(declare-fun lt!2107693 () Unit!150249)

(assert (=> b!5115399 (= lt!2107693 lt!2107692)))

(declare-fun lt!2107689 () Bool)

(declare-datatypes ((Option!14679 0))(
  ( (None!14678) (Some!14678 (v!50691 List!59251)) )
))
(declare-fun isEmpty!31899 (Option!14679) Bool)

(declare-fun getLanguageWitness!796 ((InoxSet Context!7118)) Option!14679)

(assert (=> d!1653291 (= lt!2107689 (isEmpty!31899 (getLanguageWitness!796 z!4463)))))

(declare-fun forall!13575 ((InoxSet Context!7118) Int) Bool)

(assert (=> d!1653291 (= lt!2107689 (forall!13575 z!4463 lambda!250823))))

(declare-fun lt!2107688 () Unit!150249)

(assert (=> d!1653291 (= lt!2107688 e!3190348)))

(assert (=> d!1653291 (= c!878985 (not (forall!13575 z!4463 lambda!250823)))))

(assert (=> d!1653291 (= (lostCauseZipper!1061 z!4463) lt!2107689)))

(declare-fun bm!356501 () Bool)

(declare-fun toList!8245 ((InoxSet Context!7118)) List!59253)

(assert (=> bm!356501 (= call!356506 (toList!8245 z!4463))))

(declare-fun Unit!150252 () Unit!150249)

(assert (=> b!5115398 (= e!3190348 Unit!150252)))

(assert (=> b!5115398 (= lt!2107694 call!356506)))

(declare-fun lt!2107695 () Unit!150249)

(declare-fun lemmaNotForallThenExists!319 (List!59253 Int) Unit!150249)

(assert (=> b!5115398 (= lt!2107695 (lemmaNotForallThenExists!319 lt!2107694 lambda!250823))))

(assert (=> b!5115398 call!356507))

(declare-fun lt!2107691 () Unit!150249)

(assert (=> b!5115398 (= lt!2107691 lt!2107695)))

(assert (= (and d!1653291 c!878985) b!5115398))

(assert (= (and d!1653291 (not c!878985)) b!5115399))

(assert (= (or b!5115398 b!5115399) bm!356501))

(assert (= (or b!5115398 b!5115399) bm!356502))

(declare-fun m!6174544 () Bool)

(assert (=> d!1653291 m!6174544))

(assert (=> d!1653291 m!6174544))

(declare-fun m!6174546 () Bool)

(assert (=> d!1653291 m!6174546))

(declare-fun m!6174548 () Bool)

(assert (=> d!1653291 m!6174548))

(assert (=> d!1653291 m!6174548))

(declare-fun m!6174550 () Bool)

(assert (=> b!5115398 m!6174550))

(declare-fun m!6174552 () Bool)

(assert (=> bm!356502 m!6174552))

(declare-fun m!6174554 () Bool)

(assert (=> b!5115399 m!6174554))

(declare-fun m!6174556 () Bool)

(assert (=> bm!356501 m!6174556))

(assert (=> b!5115217 d!1653291))

(declare-fun b!5115419 () Bool)

(declare-fun e!3190359 () Bool)

(assert (=> b!5115419 (= e!3190359 (>= (size!39481 input!5745) (size!39481 testedP!265)))))

(declare-fun b!5115416 () Bool)

(declare-fun e!3190360 () Bool)

(declare-fun e!3190361 () Bool)

(assert (=> b!5115416 (= e!3190360 e!3190361)))

(declare-fun res!2177693 () Bool)

(assert (=> b!5115416 (=> (not res!2177693) (not e!3190361))))

(assert (=> b!5115416 (= res!2177693 (not ((_ is Nil!59127) input!5745)))))

(declare-fun b!5115418 () Bool)

(assert (=> b!5115418 (= e!3190361 (isPrefix!5580 (tail!10044 testedP!265) (tail!10044 input!5745)))))

(declare-fun d!1653301 () Bool)

(assert (=> d!1653301 e!3190359))

(declare-fun res!2177694 () Bool)

(assert (=> d!1653301 (=> res!2177694 e!3190359)))

(declare-fun lt!2107707 () Bool)

(assert (=> d!1653301 (= res!2177694 (not lt!2107707))))

(assert (=> d!1653301 (= lt!2107707 e!3190360)))

(declare-fun res!2177696 () Bool)

(assert (=> d!1653301 (=> res!2177696 e!3190360)))

(assert (=> d!1653301 (= res!2177696 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653301 (= (isPrefix!5580 testedP!265 input!5745) lt!2107707)))

(declare-fun b!5115417 () Bool)

(declare-fun res!2177695 () Bool)

(assert (=> b!5115417 (=> (not res!2177695) (not e!3190361))))

(assert (=> b!5115417 (= res!2177695 (= (head!10903 testedP!265) (head!10903 input!5745)))))

(assert (= (and d!1653301 (not res!2177696)) b!5115416))

(assert (= (and b!5115416 res!2177693) b!5115417))

(assert (= (and b!5115417 res!2177695) b!5115418))

(assert (= (and d!1653301 (not res!2177694)) b!5115419))

(assert (=> b!5115419 m!6174202))

(assert (=> b!5115419 m!6174204))

(declare-fun m!6174584 () Bool)

(assert (=> b!5115418 m!6174584))

(declare-fun m!6174586 () Bool)

(assert (=> b!5115418 m!6174586))

(assert (=> b!5115418 m!6174584))

(assert (=> b!5115418 m!6174586))

(declare-fun m!6174588 () Bool)

(assert (=> b!5115418 m!6174588))

(declare-fun m!6174590 () Bool)

(assert (=> b!5115417 m!6174590))

(declare-fun m!6174592 () Bool)

(assert (=> b!5115417 m!6174592))

(assert (=> start!539708 d!1653301))

(declare-fun d!1653309 () Bool)

(declare-fun lt!2107708 () Int)

(assert (=> d!1653309 (>= lt!2107708 0)))

(declare-fun e!3190365 () Int)

(assert (=> d!1653309 (= lt!2107708 e!3190365)))

(declare-fun c!878990 () Bool)

(assert (=> d!1653309 (= c!878990 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653309 (= (size!39481 testedP!265) lt!2107708)))

(declare-fun b!5115425 () Bool)

(assert (=> b!5115425 (= e!3190365 0)))

(declare-fun b!5115426 () Bool)

(assert (=> b!5115426 (= e!3190365 (+ 1 (size!39481 (t!372260 testedP!265))))))

(assert (= (and d!1653309 c!878990) b!5115425))

(assert (= (and d!1653309 (not c!878990)) b!5115426))

(declare-fun m!6174594 () Bool)

(assert (=> b!5115426 m!6174594))

(assert (=> b!5115218 d!1653309))

(declare-fun d!1653311 () Bool)

(declare-fun lt!2107709 () Int)

(assert (=> d!1653311 (>= lt!2107709 0)))

(declare-fun e!3190367 () Int)

(assert (=> d!1653311 (= lt!2107709 e!3190367)))

(declare-fun c!878991 () Bool)

(assert (=> d!1653311 (= c!878991 ((_ is Nil!59127) knownP!20))))

(assert (=> d!1653311 (= (size!39481 knownP!20) lt!2107709)))

(declare-fun b!5115428 () Bool)

(assert (=> b!5115428 (= e!3190367 0)))

(declare-fun b!5115429 () Bool)

(assert (=> b!5115429 (= e!3190367 (+ 1 (size!39481 (t!372260 knownP!20))))))

(assert (= (and d!1653311 c!878991) b!5115428))

(assert (= (and d!1653311 (not c!878991)) b!5115429))

(declare-fun m!6174596 () Bool)

(assert (=> b!5115429 m!6174596))

(assert (=> b!5115218 d!1653311))

(declare-fun b!5115436 () Bool)

(declare-fun e!3190369 () Bool)

(assert (=> b!5115436 (= e!3190369 (>= (size!39481 input!5745) (size!39481 knownP!20)))))

(declare-fun b!5115433 () Bool)

(declare-fun e!3190370 () Bool)

(declare-fun e!3190371 () Bool)

(assert (=> b!5115433 (= e!3190370 e!3190371)))

(declare-fun res!2177697 () Bool)

(assert (=> b!5115433 (=> (not res!2177697) (not e!3190371))))

(assert (=> b!5115433 (= res!2177697 (not ((_ is Nil!59127) input!5745)))))

(declare-fun b!5115435 () Bool)

(assert (=> b!5115435 (= e!3190371 (isPrefix!5580 (tail!10044 knownP!20) (tail!10044 input!5745)))))

(declare-fun d!1653313 () Bool)

(assert (=> d!1653313 e!3190369))

(declare-fun res!2177698 () Bool)

(assert (=> d!1653313 (=> res!2177698 e!3190369)))

(declare-fun lt!2107710 () Bool)

(assert (=> d!1653313 (= res!2177698 (not lt!2107710))))

(assert (=> d!1653313 (= lt!2107710 e!3190370)))

(declare-fun res!2177700 () Bool)

(assert (=> d!1653313 (=> res!2177700 e!3190370)))

(assert (=> d!1653313 (= res!2177700 ((_ is Nil!59127) knownP!20))))

(assert (=> d!1653313 (= (isPrefix!5580 knownP!20 input!5745) lt!2107710)))

(declare-fun b!5115434 () Bool)

(declare-fun res!2177699 () Bool)

(assert (=> b!5115434 (=> (not res!2177699) (not e!3190371))))

(assert (=> b!5115434 (= res!2177699 (= (head!10903 knownP!20) (head!10903 input!5745)))))

(assert (= (and d!1653313 (not res!2177700)) b!5115433))

(assert (= (and b!5115433 res!2177697) b!5115434))

(assert (= (and b!5115434 res!2177699) b!5115435))

(assert (= (and d!1653313 (not res!2177698)) b!5115436))

(assert (=> b!5115436 m!6174202))

(assert (=> b!5115436 m!6174206))

(assert (=> b!5115435 m!6174286))

(assert (=> b!5115435 m!6174586))

(assert (=> b!5115435 m!6174286))

(assert (=> b!5115435 m!6174586))

(declare-fun m!6174598 () Bool)

(assert (=> b!5115435 m!6174598))

(assert (=> b!5115434 m!6174282))

(assert (=> b!5115434 m!6174592))

(assert (=> b!5115227 d!1653313))

(declare-fun b!5115442 () Bool)

(declare-fun e!3190378 () List!59251)

(assert (=> b!5115442 (= e!3190378 lt!2107575)))

(declare-fun d!1653315 () Bool)

(declare-fun e!3190377 () Bool)

(assert (=> d!1653315 e!3190377))

(declare-fun res!2177701 () Bool)

(assert (=> d!1653315 (=> (not res!2177701) (not e!3190377))))

(declare-fun lt!2107711 () List!59251)

(assert (=> d!1653315 (= res!2177701 (= (content!10513 lt!2107711) ((_ map or) (content!10513 knownP!20) (content!10513 lt!2107575))))))

(assert (=> d!1653315 (= lt!2107711 e!3190378)))

(declare-fun c!878992 () Bool)

(assert (=> d!1653315 (= c!878992 ((_ is Nil!59127) knownP!20))))

(assert (=> d!1653315 (= (++!13000 knownP!20 lt!2107575) lt!2107711)))

(declare-fun b!5115445 () Bool)

(assert (=> b!5115445 (= e!3190377 (or (not (= lt!2107575 Nil!59127)) (= lt!2107711 knownP!20)))))

(declare-fun b!5115443 () Bool)

(assert (=> b!5115443 (= e!3190378 (Cons!59127 (h!65575 knownP!20) (++!13000 (t!372260 knownP!20) lt!2107575)))))

(declare-fun b!5115444 () Bool)

(declare-fun res!2177702 () Bool)

(assert (=> b!5115444 (=> (not res!2177702) (not e!3190377))))

(assert (=> b!5115444 (= res!2177702 (= (size!39481 lt!2107711) (+ (size!39481 knownP!20) (size!39481 lt!2107575))))))

(assert (= (and d!1653315 c!878992) b!5115442))

(assert (= (and d!1653315 (not c!878992)) b!5115443))

(assert (= (and d!1653315 res!2177701) b!5115444))

(assert (= (and b!5115444 res!2177702) b!5115445))

(declare-fun m!6174602 () Bool)

(assert (=> d!1653315 m!6174602))

(declare-fun m!6174604 () Bool)

(assert (=> d!1653315 m!6174604))

(declare-fun m!6174606 () Bool)

(assert (=> d!1653315 m!6174606))

(declare-fun m!6174608 () Bool)

(assert (=> b!5115443 m!6174608))

(declare-fun m!6174610 () Bool)

(assert (=> b!5115444 m!6174610))

(assert (=> b!5115444 m!6174206))

(declare-fun m!6174612 () Bool)

(assert (=> b!5115444 m!6174612))

(assert (=> b!5115236 d!1653315))

(declare-fun d!1653317 () Bool)

(assert (=> d!1653317 (= (derivationZipper!74 baseZ!46 (++!13000 testedP!265 (Cons!59127 lt!2107586 Nil!59127))) (derivationStepZipper!810 z!4463 lt!2107586))))

(declare-fun lt!2107714 () Unit!150249)

(declare-fun choose!37562 ((InoxSet Context!7118) (InoxSet Context!7118) List!59251 C!28616) Unit!150249)

(assert (=> d!1653317 (= lt!2107714 (choose!37562 baseZ!46 z!4463 testedP!265 lt!2107586))))

(assert (=> d!1653317 (= (derivationZipper!74 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1653317 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!35 baseZ!46 z!4463 testedP!265 lt!2107586) lt!2107714)))

(declare-fun bs!1192351 () Bool)

(assert (= bs!1192351 d!1653317))

(assert (=> bs!1192351 m!6174246))

(declare-fun m!6174614 () Bool)

(assert (=> bs!1192351 m!6174614))

(assert (=> bs!1192351 m!6174214))

(assert (=> bs!1192351 m!6174614))

(declare-fun m!6174616 () Bool)

(assert (=> bs!1192351 m!6174616))

(declare-fun m!6174618 () Bool)

(assert (=> bs!1192351 m!6174618))

(assert (=> b!5115236 d!1653317))

(declare-fun d!1653319 () Bool)

(assert (=> d!1653319 true))

(declare-fun lambda!250833 () Int)

(declare-fun flatMap!344 ((InoxSet Context!7118) Int) (InoxSet Context!7118))

(assert (=> d!1653319 (= (derivationStepZipper!810 z!4463 lt!2107586) (flatMap!344 z!4463 lambda!250833))))

(declare-fun bs!1192352 () Bool)

(assert (= bs!1192352 d!1653319))

(declare-fun m!6174620 () Bool)

(assert (=> bs!1192352 m!6174620))

(assert (=> b!5115236 d!1653319))

(declare-fun b!5115452 () Bool)

(declare-fun e!3190380 () Bool)

(assert (=> b!5115452 (= e!3190380 (>= (size!39481 input!5745) (size!39481 lt!2107573)))))

(declare-fun b!5115449 () Bool)

(declare-fun e!3190381 () Bool)

(declare-fun e!3190382 () Bool)

(assert (=> b!5115449 (= e!3190381 e!3190382)))

(declare-fun res!2177703 () Bool)

(assert (=> b!5115449 (=> (not res!2177703) (not e!3190382))))

(assert (=> b!5115449 (= res!2177703 (not ((_ is Nil!59127) input!5745)))))

(declare-fun b!5115451 () Bool)

(assert (=> b!5115451 (= e!3190382 (isPrefix!5580 (tail!10044 lt!2107573) (tail!10044 input!5745)))))

(declare-fun d!1653321 () Bool)

(assert (=> d!1653321 e!3190380))

(declare-fun res!2177704 () Bool)

(assert (=> d!1653321 (=> res!2177704 e!3190380)))

(declare-fun lt!2107715 () Bool)

(assert (=> d!1653321 (= res!2177704 (not lt!2107715))))

(assert (=> d!1653321 (= lt!2107715 e!3190381)))

(declare-fun res!2177706 () Bool)

(assert (=> d!1653321 (=> res!2177706 e!3190381)))

(assert (=> d!1653321 (= res!2177706 ((_ is Nil!59127) lt!2107573))))

(assert (=> d!1653321 (= (isPrefix!5580 lt!2107573 input!5745) lt!2107715)))

(declare-fun b!5115450 () Bool)

(declare-fun res!2177705 () Bool)

(assert (=> b!5115450 (=> (not res!2177705) (not e!3190382))))

(assert (=> b!5115450 (= res!2177705 (= (head!10903 lt!2107573) (head!10903 input!5745)))))

(assert (= (and d!1653321 (not res!2177706)) b!5115449))

(assert (= (and b!5115449 res!2177703) b!5115450))

(assert (= (and b!5115450 res!2177705) b!5115451))

(assert (= (and d!1653321 (not res!2177704)) b!5115452))

(assert (=> b!5115452 m!6174202))

(assert (=> b!5115452 m!6174484))

(declare-fun m!6174622 () Bool)

(assert (=> b!5115451 m!6174622))

(assert (=> b!5115451 m!6174586))

(assert (=> b!5115451 m!6174622))

(assert (=> b!5115451 m!6174586))

(declare-fun m!6174624 () Bool)

(assert (=> b!5115451 m!6174624))

(declare-fun m!6174626 () Bool)

(assert (=> b!5115450 m!6174626))

(assert (=> b!5115450 m!6174592))

(assert (=> b!5115236 d!1653321))

(declare-fun d!1653323 () Bool)

(assert (=> d!1653323 (= (head!10903 lt!2107571) (h!65575 lt!2107571))))

(assert (=> b!5115236 d!1653323))

(declare-fun b!5115456 () Bool)

(declare-fun e!3190383 () Bool)

(assert (=> b!5115456 (= e!3190383 (>= (size!39481 knownP!20) (size!39481 lt!2107573)))))

(declare-fun b!5115453 () Bool)

(declare-fun e!3190384 () Bool)

(declare-fun e!3190385 () Bool)

(assert (=> b!5115453 (= e!3190384 e!3190385)))

(declare-fun res!2177707 () Bool)

(assert (=> b!5115453 (=> (not res!2177707) (not e!3190385))))

(assert (=> b!5115453 (= res!2177707 (not ((_ is Nil!59127) knownP!20)))))

(declare-fun b!5115455 () Bool)

(assert (=> b!5115455 (= e!3190385 (isPrefix!5580 (tail!10044 lt!2107573) (tail!10044 knownP!20)))))

(declare-fun d!1653325 () Bool)

(assert (=> d!1653325 e!3190383))

(declare-fun res!2177708 () Bool)

(assert (=> d!1653325 (=> res!2177708 e!3190383)))

(declare-fun lt!2107716 () Bool)

(assert (=> d!1653325 (= res!2177708 (not lt!2107716))))

(assert (=> d!1653325 (= lt!2107716 e!3190384)))

(declare-fun res!2177710 () Bool)

(assert (=> d!1653325 (=> res!2177710 e!3190384)))

(assert (=> d!1653325 (= res!2177710 ((_ is Nil!59127) lt!2107573))))

(assert (=> d!1653325 (= (isPrefix!5580 lt!2107573 knownP!20) lt!2107716)))

(declare-fun b!5115454 () Bool)

(declare-fun res!2177709 () Bool)

(assert (=> b!5115454 (=> (not res!2177709) (not e!3190385))))

(assert (=> b!5115454 (= res!2177709 (= (head!10903 lt!2107573) (head!10903 knownP!20)))))

(assert (= (and d!1653325 (not res!2177710)) b!5115453))

(assert (= (and b!5115453 res!2177707) b!5115454))

(assert (= (and b!5115454 res!2177709) b!5115455))

(assert (= (and d!1653325 (not res!2177708)) b!5115456))

(assert (=> b!5115456 m!6174206))

(assert (=> b!5115456 m!6174484))

(assert (=> b!5115455 m!6174622))

(assert (=> b!5115455 m!6174286))

(assert (=> b!5115455 m!6174622))

(assert (=> b!5115455 m!6174286))

(declare-fun m!6174628 () Bool)

(assert (=> b!5115455 m!6174628))

(assert (=> b!5115454 m!6174626))

(assert (=> b!5115454 m!6174282))

(assert (=> b!5115236 d!1653325))

(declare-fun d!1653327 () Bool)

(declare-fun c!878996 () Bool)

(assert (=> d!1653327 (= c!878996 ((_ is Cons!59127) lt!2107573))))

(declare-fun e!3190386 () (InoxSet Context!7118))

(assert (=> d!1653327 (= (derivationZipper!74 baseZ!46 lt!2107573) e!3190386)))

(declare-fun b!5115457 () Bool)

(assert (=> b!5115457 (= e!3190386 (derivationZipper!74 (derivationStepZipper!810 baseZ!46 (h!65575 lt!2107573)) (t!372260 lt!2107573)))))

(declare-fun b!5115458 () Bool)

(assert (=> b!5115458 (= e!3190386 baseZ!46)))

(assert (= (and d!1653327 c!878996) b!5115457))

(assert (= (and d!1653327 (not c!878996)) b!5115458))

(declare-fun m!6174630 () Bool)

(assert (=> b!5115457 m!6174630))

(assert (=> b!5115457 m!6174630))

(declare-fun m!6174632 () Bool)

(assert (=> b!5115457 m!6174632))

(assert (=> b!5115236 d!1653327))

(declare-fun b!5115459 () Bool)

(declare-fun e!3190388 () List!59251)

(assert (=> b!5115459 (= e!3190388 lt!2107589)))

(declare-fun d!1653329 () Bool)

(declare-fun e!3190387 () Bool)

(assert (=> d!1653329 e!3190387))

(declare-fun res!2177711 () Bool)

(assert (=> d!1653329 (=> (not res!2177711) (not e!3190387))))

(declare-fun lt!2107717 () List!59251)

(assert (=> d!1653329 (= res!2177711 (= (content!10513 lt!2107717) ((_ map or) (content!10513 testedP!265) (content!10513 lt!2107589))))))

(assert (=> d!1653329 (= lt!2107717 e!3190388)))

(declare-fun c!878997 () Bool)

(assert (=> d!1653329 (= c!878997 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653329 (= (++!13000 testedP!265 lt!2107589) lt!2107717)))

(declare-fun b!5115462 () Bool)

(assert (=> b!5115462 (= e!3190387 (or (not (= lt!2107589 Nil!59127)) (= lt!2107717 testedP!265)))))

(declare-fun b!5115460 () Bool)

(assert (=> b!5115460 (= e!3190388 (Cons!59127 (h!65575 testedP!265) (++!13000 (t!372260 testedP!265) lt!2107589)))))

(declare-fun b!5115461 () Bool)

(declare-fun res!2177712 () Bool)

(assert (=> b!5115461 (=> (not res!2177712) (not e!3190387))))

(assert (=> b!5115461 (= res!2177712 (= (size!39481 lt!2107717) (+ (size!39481 testedP!265) (size!39481 lt!2107589))))))

(assert (= (and d!1653329 c!878997) b!5115459))

(assert (= (and d!1653329 (not c!878997)) b!5115460))

(assert (= (and d!1653329 res!2177711) b!5115461))

(assert (= (and b!5115461 res!2177712) b!5115462))

(declare-fun m!6174634 () Bool)

(assert (=> d!1653329 m!6174634))

(assert (=> d!1653329 m!6174294))

(assert (=> d!1653329 m!6174306))

(declare-fun m!6174636 () Bool)

(assert (=> b!5115460 m!6174636))

(declare-fun m!6174638 () Bool)

(assert (=> b!5115461 m!6174638))

(assert (=> b!5115461 m!6174204))

(assert (=> b!5115461 m!6174314))

(assert (=> b!5115236 d!1653329))

(declare-fun d!1653331 () Bool)

(assert (=> d!1653331 (isPrefix!5580 (++!13000 testedP!265 (Cons!59127 (head!10903 (getSuffix!3254 input!5745 testedP!265)) Nil!59127)) input!5745)))

(declare-fun lt!2107720 () Unit!150249)

(declare-fun choose!37565 (List!59251 List!59251) Unit!150249)

(assert (=> d!1653331 (= lt!2107720 (choose!37565 testedP!265 input!5745))))

(assert (=> d!1653331 (isPrefix!5580 testedP!265 input!5745)))

(assert (=> d!1653331 (= (lemmaAddHeadSuffixToPrefixStillPrefix!970 testedP!265 input!5745) lt!2107720)))

(declare-fun bs!1192353 () Bool)

(assert (= bs!1192353 d!1653331))

(declare-fun m!6174640 () Bool)

(assert (=> bs!1192353 m!6174640))

(declare-fun m!6174642 () Bool)

(assert (=> bs!1192353 m!6174642))

(assert (=> bs!1192353 m!6174236))

(declare-fun m!6174644 () Bool)

(assert (=> bs!1192353 m!6174644))

(assert (=> bs!1192353 m!6174640))

(declare-fun m!6174646 () Bool)

(assert (=> bs!1192353 m!6174646))

(assert (=> bs!1192353 m!6174236))

(assert (=> bs!1192353 m!6174198))

(assert (=> b!5115236 d!1653331))

(declare-fun d!1653333 () Bool)

(assert (=> d!1653333 (isPrefix!5580 lt!2107573 knownP!20)))

(declare-fun lt!2107723 () Unit!150249)

(declare-fun choose!37566 (List!59251 List!59251 List!59251) Unit!150249)

(assert (=> d!1653333 (= lt!2107723 (choose!37566 knownP!20 lt!2107573 input!5745))))

(assert (=> d!1653333 (isPrefix!5580 knownP!20 input!5745)))

(assert (=> d!1653333 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!717 knownP!20 lt!2107573 input!5745) lt!2107723)))

(declare-fun bs!1192354 () Bool)

(assert (= bs!1192354 d!1653333))

(assert (=> bs!1192354 m!6174258))

(declare-fun m!6174648 () Bool)

(assert (=> bs!1192354 m!6174648))

(assert (=> bs!1192354 m!6174218))

(assert (=> b!5115236 d!1653333))

(declare-fun d!1653335 () Bool)

(declare-fun lt!2107726 () List!59251)

(assert (=> d!1653335 (= (++!13000 knownP!20 lt!2107726) input!5745)))

(declare-fun e!3190391 () List!59251)

(assert (=> d!1653335 (= lt!2107726 e!3190391)))

(declare-fun c!879000 () Bool)

(assert (=> d!1653335 (= c!879000 ((_ is Cons!59127) knownP!20))))

(assert (=> d!1653335 (>= (size!39481 input!5745) (size!39481 knownP!20))))

(assert (=> d!1653335 (= (getSuffix!3254 input!5745 knownP!20) lt!2107726)))

(declare-fun b!5115467 () Bool)

(assert (=> b!5115467 (= e!3190391 (getSuffix!3254 (tail!10044 input!5745) (t!372260 knownP!20)))))

(declare-fun b!5115468 () Bool)

(assert (=> b!5115468 (= e!3190391 input!5745)))

(assert (= (and d!1653335 c!879000) b!5115467))

(assert (= (and d!1653335 (not c!879000)) b!5115468))

(declare-fun m!6174650 () Bool)

(assert (=> d!1653335 m!6174650))

(assert (=> d!1653335 m!6174202))

(assert (=> d!1653335 m!6174206))

(assert (=> b!5115467 m!6174586))

(assert (=> b!5115467 m!6174586))

(declare-fun m!6174652 () Bool)

(assert (=> b!5115467 m!6174652))

(assert (=> b!5115236 d!1653335))

(declare-fun d!1653337 () Bool)

(declare-fun lt!2107727 () List!59251)

(assert (=> d!1653337 (= (++!13000 testedP!265 lt!2107727) input!5745)))

(declare-fun e!3190392 () List!59251)

(assert (=> d!1653337 (= lt!2107727 e!3190392)))

(declare-fun c!879001 () Bool)

(assert (=> d!1653337 (= c!879001 ((_ is Cons!59127) testedP!265))))

(assert (=> d!1653337 (>= (size!39481 input!5745) (size!39481 testedP!265))))

(assert (=> d!1653337 (= (getSuffix!3254 input!5745 testedP!265) lt!2107727)))

(declare-fun b!5115469 () Bool)

(assert (=> b!5115469 (= e!3190392 (getSuffix!3254 (tail!10044 input!5745) (t!372260 testedP!265)))))

(declare-fun b!5115470 () Bool)

(assert (=> b!5115470 (= e!3190392 input!5745)))

(assert (= (and d!1653337 c!879001) b!5115469))

(assert (= (and d!1653337 (not c!879001)) b!5115470))

(declare-fun m!6174654 () Bool)

(assert (=> d!1653337 m!6174654))

(assert (=> d!1653337 m!6174202))

(assert (=> d!1653337 m!6174204))

(assert (=> b!5115469 m!6174586))

(assert (=> b!5115469 m!6174586))

(declare-fun m!6174656 () Bool)

(assert (=> b!5115469 m!6174656))

(assert (=> b!5115236 d!1653337))

(declare-fun d!1653339 () Bool)

(declare-fun lt!2107728 () List!59251)

(assert (=> d!1653339 (= (++!13000 lt!2107573 lt!2107728) knownP!20)))

(declare-fun e!3190393 () List!59251)

(assert (=> d!1653339 (= lt!2107728 e!3190393)))

(declare-fun c!879002 () Bool)

(assert (=> d!1653339 (= c!879002 ((_ is Cons!59127) lt!2107573))))

(assert (=> d!1653339 (>= (size!39481 knownP!20) (size!39481 lt!2107573))))

(assert (=> d!1653339 (= (getSuffix!3254 knownP!20 lt!2107573) lt!2107728)))

(declare-fun b!5115471 () Bool)

(assert (=> b!5115471 (= e!3190393 (getSuffix!3254 (tail!10044 knownP!20) (t!372260 lt!2107573)))))

(declare-fun b!5115472 () Bool)

(assert (=> b!5115472 (= e!3190393 knownP!20)))

(assert (= (and d!1653339 c!879002) b!5115471))

(assert (= (and d!1653339 (not c!879002)) b!5115472))

(declare-fun m!6174658 () Bool)

(assert (=> d!1653339 m!6174658))

(assert (=> d!1653339 m!6174206))

(assert (=> d!1653339 m!6174484))

(assert (=> b!5115471 m!6174286))

(assert (=> b!5115471 m!6174286))

(declare-fun m!6174660 () Bool)

(assert (=> b!5115471 m!6174660))

(assert (=> b!5115236 d!1653339))

(declare-fun d!1653341 () Bool)

(assert (=> d!1653341 (= ($colon$colon!1121 lt!2107584 lt!2107586) (Cons!59127 lt!2107586 lt!2107584))))

(assert (=> b!5115219 d!1653341))

(declare-fun d!1653343 () Bool)

(assert (=> d!1653343 (= (tail!10044 lt!2107588) (t!372260 lt!2107588))))

(assert (=> b!5115219 d!1653343))

(declare-fun d!1653345 () Bool)

(assert (=> d!1653345 (= (head!10903 lt!2107588) (h!65575 lt!2107588))))

(assert (=> b!5115228 d!1653345))

(declare-fun d!1653347 () Bool)

(assert (=> d!1653347 (= lt!2107581 lt!2107571)))

(declare-fun lt!2107729 () Unit!150249)

(assert (=> d!1653347 (= lt!2107729 (choose!37557 testedP!265 lt!2107581 testedP!265 lt!2107571 input!5745))))

(assert (=> d!1653347 (isPrefix!5580 testedP!265 input!5745)))

(assert (=> d!1653347 (= (lemmaSamePrefixThenSameSuffix!2626 testedP!265 lt!2107581 testedP!265 lt!2107571 input!5745) lt!2107729)))

(declare-fun bs!1192355 () Bool)

(assert (= bs!1192355 d!1653347))

(declare-fun m!6174662 () Bool)

(assert (=> bs!1192355 m!6174662))

(assert (=> bs!1192355 m!6174198))

(assert (=> b!5115228 d!1653347))

(declare-fun d!1653349 () Bool)

(declare-fun c!879003 () Bool)

(assert (=> d!1653349 (= c!879003 (isEmpty!31898 lt!2107588))))

(declare-fun e!3190394 () Bool)

(assert (=> d!1653349 (= (matchZipper!843 z!4463 lt!2107588) e!3190394)))

(declare-fun b!5115473 () Bool)

(assert (=> b!5115473 (= e!3190394 (nullableZipper!1009 z!4463))))

(declare-fun b!5115474 () Bool)

(assert (=> b!5115474 (= e!3190394 (matchZipper!843 (derivationStepZipper!810 z!4463 (head!10903 lt!2107588)) (tail!10044 lt!2107588)))))

(assert (= (and d!1653349 c!879003) b!5115473))

(assert (= (and d!1653349 (not c!879003)) b!5115474))

(declare-fun m!6174664 () Bool)

(assert (=> d!1653349 m!6174664))

(declare-fun m!6174666 () Bool)

(assert (=> b!5115473 m!6174666))

(assert (=> b!5115474 m!6174230))

(assert (=> b!5115474 m!6174230))

(declare-fun m!6174668 () Bool)

(assert (=> b!5115474 m!6174668))

(assert (=> b!5115474 m!6174196))

(assert (=> b!5115474 m!6174668))

(assert (=> b!5115474 m!6174196))

(declare-fun m!6174670 () Bool)

(assert (=> b!5115474 m!6174670))

(assert (=> b!5115237 d!1653349))

(declare-fun d!1653351 () Bool)

(declare-fun lt!2107730 () List!59251)

(assert (=> d!1653351 (= (++!13000 testedP!265 lt!2107730) knownP!20)))

(declare-fun e!3190395 () List!59251)

(assert (=> d!1653351 (= lt!2107730 e!3190395)))

(declare-fun c!879004 () Bool)

(assert (=> d!1653351 (= c!879004 ((_ is Cons!59127) testedP!265))))

(assert (=> d!1653351 (>= (size!39481 knownP!20) (size!39481 testedP!265))))

(assert (=> d!1653351 (= (getSuffix!3254 knownP!20 testedP!265) lt!2107730)))

(declare-fun b!5115475 () Bool)

(assert (=> b!5115475 (= e!3190395 (getSuffix!3254 (tail!10044 knownP!20) (t!372260 testedP!265)))))

(declare-fun b!5115476 () Bool)

(assert (=> b!5115476 (= e!3190395 knownP!20)))

(assert (= (and d!1653351 c!879004) b!5115475))

(assert (= (and d!1653351 (not c!879004)) b!5115476))

(declare-fun m!6174672 () Bool)

(assert (=> d!1653351 m!6174672))

(assert (=> d!1653351 m!6174206))

(assert (=> d!1653351 m!6174204))

(assert (=> b!5115475 m!6174286))

(assert (=> b!5115475 m!6174286))

(declare-fun m!6174674 () Bool)

(assert (=> b!5115475 m!6174674))

(assert (=> b!5115237 d!1653351))

(declare-fun b!5115480 () Bool)

(declare-fun e!3190396 () Bool)

(assert (=> b!5115480 (= e!3190396 (>= (size!39481 knownP!20) (size!39481 testedP!265)))))

(declare-fun b!5115477 () Bool)

(declare-fun e!3190397 () Bool)

(declare-fun e!3190398 () Bool)

(assert (=> b!5115477 (= e!3190397 e!3190398)))

(declare-fun res!2177713 () Bool)

(assert (=> b!5115477 (=> (not res!2177713) (not e!3190398))))

(assert (=> b!5115477 (= res!2177713 (not ((_ is Nil!59127) knownP!20)))))

(declare-fun b!5115479 () Bool)

(assert (=> b!5115479 (= e!3190398 (isPrefix!5580 (tail!10044 testedP!265) (tail!10044 knownP!20)))))

(declare-fun d!1653353 () Bool)

(assert (=> d!1653353 e!3190396))

(declare-fun res!2177714 () Bool)

(assert (=> d!1653353 (=> res!2177714 e!3190396)))

(declare-fun lt!2107731 () Bool)

(assert (=> d!1653353 (= res!2177714 (not lt!2107731))))

(assert (=> d!1653353 (= lt!2107731 e!3190397)))

(declare-fun res!2177716 () Bool)

(assert (=> d!1653353 (=> res!2177716 e!3190397)))

(assert (=> d!1653353 (= res!2177716 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653353 (= (isPrefix!5580 testedP!265 knownP!20) lt!2107731)))

(declare-fun b!5115478 () Bool)

(declare-fun res!2177715 () Bool)

(assert (=> b!5115478 (=> (not res!2177715) (not e!3190398))))

(assert (=> b!5115478 (= res!2177715 (= (head!10903 testedP!265) (head!10903 knownP!20)))))

(assert (= (and d!1653353 (not res!2177716)) b!5115477))

(assert (= (and b!5115477 res!2177713) b!5115478))

(assert (= (and b!5115478 res!2177715) b!5115479))

(assert (= (and d!1653353 (not res!2177714)) b!5115480))

(assert (=> b!5115480 m!6174206))

(assert (=> b!5115480 m!6174204))

(assert (=> b!5115479 m!6174584))

(assert (=> b!5115479 m!6174286))

(assert (=> b!5115479 m!6174584))

(assert (=> b!5115479 m!6174286))

(declare-fun m!6174676 () Bool)

(assert (=> b!5115479 m!6174676))

(assert (=> b!5115478 m!6174590))

(assert (=> b!5115478 m!6174282))

(assert (=> b!5115237 d!1653353))

(declare-fun d!1653355 () Bool)

(assert (=> d!1653355 (isPrefix!5580 testedP!265 knownP!20)))

(declare-fun lt!2107732 () Unit!150249)

(assert (=> d!1653355 (= lt!2107732 (choose!37566 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653355 (isPrefix!5580 knownP!20 input!5745)))

(assert (=> d!1653355 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!717 knownP!20 testedP!265 input!5745) lt!2107732)))

(declare-fun bs!1192356 () Bool)

(assert (= bs!1192356 d!1653355))

(assert (=> bs!1192356 m!6174224))

(declare-fun m!6174678 () Bool)

(assert (=> bs!1192356 m!6174678))

(assert (=> bs!1192356 m!6174218))

(assert (=> b!5115237 d!1653355))

(declare-fun b!5115481 () Bool)

(declare-fun e!3190400 () List!59251)

(assert (=> b!5115481 (= e!3190400 lt!2107581)))

(declare-fun d!1653357 () Bool)

(declare-fun e!3190399 () Bool)

(assert (=> d!1653357 e!3190399))

(declare-fun res!2177717 () Bool)

(assert (=> d!1653357 (=> (not res!2177717) (not e!3190399))))

(declare-fun lt!2107733 () List!59251)

(assert (=> d!1653357 (= res!2177717 (= (content!10513 lt!2107733) ((_ map or) (content!10513 testedP!265) (content!10513 lt!2107581))))))

(assert (=> d!1653357 (= lt!2107733 e!3190400)))

(declare-fun c!879005 () Bool)

(assert (=> d!1653357 (= c!879005 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653357 (= (++!13000 testedP!265 lt!2107581) lt!2107733)))

(declare-fun b!5115484 () Bool)

(assert (=> b!5115484 (= e!3190399 (or (not (= lt!2107581 Nil!59127)) (= lt!2107733 testedP!265)))))

(declare-fun b!5115482 () Bool)

(assert (=> b!5115482 (= e!3190400 (Cons!59127 (h!65575 testedP!265) (++!13000 (t!372260 testedP!265) lt!2107581)))))

(declare-fun b!5115483 () Bool)

(declare-fun res!2177718 () Bool)

(assert (=> b!5115483 (=> (not res!2177718) (not e!3190399))))

(assert (=> b!5115483 (= res!2177718 (= (size!39481 lt!2107733) (+ (size!39481 testedP!265) (size!39481 lt!2107581))))))

(assert (= (and d!1653357 c!879005) b!5115481))

(assert (= (and d!1653357 (not c!879005)) b!5115482))

(assert (= (and d!1653357 res!2177717) b!5115483))

(assert (= (and b!5115483 res!2177718) b!5115484))

(declare-fun m!6174680 () Bool)

(assert (=> d!1653357 m!6174680))

(assert (=> d!1653357 m!6174294))

(declare-fun m!6174682 () Bool)

(assert (=> d!1653357 m!6174682))

(declare-fun m!6174684 () Bool)

(assert (=> b!5115482 m!6174684))

(declare-fun m!6174686 () Bool)

(assert (=> b!5115483 m!6174686))

(assert (=> b!5115483 m!6174204))

(declare-fun m!6174688 () Bool)

(assert (=> b!5115483 m!6174688))

(assert (=> b!5115229 d!1653357))

(declare-fun b!5115485 () Bool)

(declare-fun e!3190402 () List!59251)

(assert (=> b!5115485 (= e!3190402 lt!2107575)))

(declare-fun d!1653359 () Bool)

(declare-fun e!3190401 () Bool)

(assert (=> d!1653359 e!3190401))

(declare-fun res!2177719 () Bool)

(assert (=> d!1653359 (=> (not res!2177719) (not e!3190401))))

(declare-fun lt!2107734 () List!59251)

(assert (=> d!1653359 (= res!2177719 (= (content!10513 lt!2107734) ((_ map or) (content!10513 lt!2107588) (content!10513 lt!2107575))))))

(assert (=> d!1653359 (= lt!2107734 e!3190402)))

(declare-fun c!879006 () Bool)

(assert (=> d!1653359 (= c!879006 ((_ is Nil!59127) lt!2107588))))

(assert (=> d!1653359 (= (++!13000 lt!2107588 lt!2107575) lt!2107734)))

(declare-fun b!5115488 () Bool)

(assert (=> b!5115488 (= e!3190401 (or (not (= lt!2107575 Nil!59127)) (= lt!2107734 lt!2107588)))))

(declare-fun b!5115486 () Bool)

(assert (=> b!5115486 (= e!3190402 (Cons!59127 (h!65575 lt!2107588) (++!13000 (t!372260 lt!2107588) lt!2107575)))))

(declare-fun b!5115487 () Bool)

(declare-fun res!2177720 () Bool)

(assert (=> b!5115487 (=> (not res!2177720) (not e!3190401))))

(assert (=> b!5115487 (= res!2177720 (= (size!39481 lt!2107734) (+ (size!39481 lt!2107588) (size!39481 lt!2107575))))))

(assert (= (and d!1653359 c!879006) b!5115485))

(assert (= (and d!1653359 (not c!879006)) b!5115486))

(assert (= (and d!1653359 res!2177719) b!5115487))

(assert (= (and b!5115487 res!2177720) b!5115488))

(declare-fun m!6174690 () Bool)

(assert (=> d!1653359 m!6174690))

(declare-fun m!6174692 () Bool)

(assert (=> d!1653359 m!6174692))

(assert (=> d!1653359 m!6174606))

(declare-fun m!6174694 () Bool)

(assert (=> b!5115486 m!6174694))

(declare-fun m!6174696 () Bool)

(assert (=> b!5115487 m!6174696))

(declare-fun m!6174698 () Bool)

(assert (=> b!5115487 m!6174698))

(assert (=> b!5115487 m!6174612))

(assert (=> b!5115229 d!1653359))

(declare-fun d!1653361 () Bool)

(assert (=> d!1653361 (= (++!13000 (++!13000 testedP!265 lt!2107588) lt!2107575) (++!13000 testedP!265 (++!13000 lt!2107588 lt!2107575)))))

(declare-fun lt!2107735 () Unit!150249)

(assert (=> d!1653361 (= lt!2107735 (choose!37559 testedP!265 lt!2107588 lt!2107575))))

(assert (=> d!1653361 (= (lemmaConcatAssociativity!2758 testedP!265 lt!2107588 lt!2107575) lt!2107735)))

(declare-fun bs!1192357 () Bool)

(assert (= bs!1192357 d!1653361))

(declare-fun m!6174700 () Bool)

(assert (=> bs!1192357 m!6174700))

(assert (=> bs!1192357 m!6174210))

(declare-fun m!6174702 () Bool)

(assert (=> bs!1192357 m!6174702))

(assert (=> bs!1192357 m!6174264))

(declare-fun m!6174704 () Bool)

(assert (=> bs!1192357 m!6174704))

(assert (=> bs!1192357 m!6174210))

(assert (=> bs!1192357 m!6174264))

(assert (=> b!5115229 d!1653361))

(declare-fun b!5115489 () Bool)

(declare-fun e!3190404 () List!59251)

(assert (=> b!5115489 (= e!3190404 lt!2107575)))

(declare-fun d!1653363 () Bool)

(declare-fun e!3190403 () Bool)

(assert (=> d!1653363 e!3190403))

(declare-fun res!2177721 () Bool)

(assert (=> d!1653363 (=> (not res!2177721) (not e!3190403))))

(declare-fun lt!2107736 () List!59251)

(assert (=> d!1653363 (= res!2177721 (= (content!10513 lt!2107736) ((_ map or) (content!10513 lt!2107587) (content!10513 lt!2107575))))))

(assert (=> d!1653363 (= lt!2107736 e!3190404)))

(declare-fun c!879007 () Bool)

(assert (=> d!1653363 (= c!879007 ((_ is Nil!59127) lt!2107587))))

(assert (=> d!1653363 (= (++!13000 lt!2107587 lt!2107575) lt!2107736)))

(declare-fun b!5115492 () Bool)

(assert (=> b!5115492 (= e!3190403 (or (not (= lt!2107575 Nil!59127)) (= lt!2107736 lt!2107587)))))

(declare-fun b!5115490 () Bool)

(assert (=> b!5115490 (= e!3190404 (Cons!59127 (h!65575 lt!2107587) (++!13000 (t!372260 lt!2107587) lt!2107575)))))

(declare-fun b!5115491 () Bool)

(declare-fun res!2177722 () Bool)

(assert (=> b!5115491 (=> (not res!2177722) (not e!3190403))))

(assert (=> b!5115491 (= res!2177722 (= (size!39481 lt!2107736) (+ (size!39481 lt!2107587) (size!39481 lt!2107575))))))

(assert (= (and d!1653363 c!879007) b!5115489))

(assert (= (and d!1653363 (not c!879007)) b!5115490))

(assert (= (and d!1653363 res!2177721) b!5115491))

(assert (= (and b!5115491 res!2177722) b!5115492))

(declare-fun m!6174706 () Bool)

(assert (=> d!1653363 m!6174706))

(declare-fun m!6174708 () Bool)

(assert (=> d!1653363 m!6174708))

(assert (=> d!1653363 m!6174606))

(declare-fun m!6174710 () Bool)

(assert (=> b!5115490 m!6174710))

(declare-fun m!6174712 () Bool)

(assert (=> b!5115491 m!6174712))

(declare-fun m!6174714 () Bool)

(assert (=> b!5115491 m!6174714))

(assert (=> b!5115491 m!6174612))

(assert (=> b!5115220 d!1653363))

(declare-fun b!5115493 () Bool)

(declare-fun e!3190406 () List!59251)

(assert (=> b!5115493 (= e!3190406 lt!2107588)))

(declare-fun d!1653365 () Bool)

(declare-fun e!3190405 () Bool)

(assert (=> d!1653365 e!3190405))

(declare-fun res!2177723 () Bool)

(assert (=> d!1653365 (=> (not res!2177723) (not e!3190405))))

(declare-fun lt!2107737 () List!59251)

(assert (=> d!1653365 (= res!2177723 (= (content!10513 lt!2107737) ((_ map or) (content!10513 testedP!265) (content!10513 lt!2107588))))))

(assert (=> d!1653365 (= lt!2107737 e!3190406)))

(declare-fun c!879008 () Bool)

(assert (=> d!1653365 (= c!879008 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653365 (= (++!13000 testedP!265 lt!2107588) lt!2107737)))

(declare-fun b!5115496 () Bool)

(assert (=> b!5115496 (= e!3190405 (or (not (= lt!2107588 Nil!59127)) (= lt!2107737 testedP!265)))))

(declare-fun b!5115494 () Bool)

(assert (=> b!5115494 (= e!3190406 (Cons!59127 (h!65575 testedP!265) (++!13000 (t!372260 testedP!265) lt!2107588)))))

(declare-fun b!5115495 () Bool)

(declare-fun res!2177724 () Bool)

(assert (=> b!5115495 (=> (not res!2177724) (not e!3190405))))

(assert (=> b!5115495 (= res!2177724 (= (size!39481 lt!2107737) (+ (size!39481 testedP!265) (size!39481 lt!2107588))))))

(assert (= (and d!1653365 c!879008) b!5115493))

(assert (= (and d!1653365 (not c!879008)) b!5115494))

(assert (= (and d!1653365 res!2177723) b!5115495))

(assert (= (and b!5115495 res!2177724) b!5115496))

(declare-fun m!6174716 () Bool)

(assert (=> d!1653365 m!6174716))

(assert (=> d!1653365 m!6174294))

(assert (=> d!1653365 m!6174692))

(declare-fun m!6174718 () Bool)

(assert (=> b!5115494 m!6174718))

(declare-fun m!6174720 () Bool)

(assert (=> b!5115495 m!6174720))

(assert (=> b!5115495 m!6174204))

(assert (=> b!5115495 m!6174698))

(assert (=> b!5115220 d!1653365))

(declare-fun bs!1192358 () Bool)

(declare-fun d!1653367 () Bool)

(assert (= bs!1192358 (and d!1653367 d!1653215)))

(declare-fun lambda!250834 () Int)

(assert (=> bs!1192358 (= lambda!250834 lambda!250800)))

(assert (=> d!1653367 (= (inv!78618 setElem!30013) (forall!13574 (exprs!4059 setElem!30013) lambda!250834))))

(declare-fun bs!1192359 () Bool)

(assert (= bs!1192359 d!1653367))

(declare-fun m!6174722 () Bool)

(assert (=> bs!1192359 m!6174722))

(assert (=> setNonEmpty!30014 d!1653367))

(declare-fun b!5115497 () Bool)

(declare-fun e!3190408 () List!59251)

(assert (=> b!5115497 (= e!3190408 lt!2107571)))

(declare-fun d!1653369 () Bool)

(declare-fun e!3190407 () Bool)

(assert (=> d!1653369 e!3190407))

(declare-fun res!2177725 () Bool)

(assert (=> d!1653369 (=> (not res!2177725) (not e!3190407))))

(declare-fun lt!2107738 () List!59251)

(assert (=> d!1653369 (= res!2177725 (= (content!10513 lt!2107738) ((_ map or) (content!10513 testedP!265) (content!10513 lt!2107571))))))

(assert (=> d!1653369 (= lt!2107738 e!3190408)))

(declare-fun c!879009 () Bool)

(assert (=> d!1653369 (= c!879009 ((_ is Nil!59127) testedP!265))))

(assert (=> d!1653369 (= (++!13000 testedP!265 lt!2107571) lt!2107738)))

(declare-fun b!5115500 () Bool)

(assert (=> b!5115500 (= e!3190407 (or (not (= lt!2107571 Nil!59127)) (= lt!2107738 testedP!265)))))

(declare-fun b!5115498 () Bool)

(assert (=> b!5115498 (= e!3190408 (Cons!59127 (h!65575 testedP!265) (++!13000 (t!372260 testedP!265) lt!2107571)))))

(declare-fun b!5115499 () Bool)

(declare-fun res!2177726 () Bool)

(assert (=> b!5115499 (=> (not res!2177726) (not e!3190407))))

(assert (=> b!5115499 (= res!2177726 (= (size!39481 lt!2107738) (+ (size!39481 testedP!265) (size!39481 lt!2107571))))))

(assert (= (and d!1653369 c!879009) b!5115497))

(assert (= (and d!1653369 (not c!879009)) b!5115498))

(assert (= (and d!1653369 res!2177725) b!5115499))

(assert (= (and b!5115499 res!2177726) b!5115500))

(declare-fun m!6174724 () Bool)

(assert (=> d!1653369 m!6174724))

(assert (=> d!1653369 m!6174294))

(declare-fun m!6174726 () Bool)

(assert (=> d!1653369 m!6174726))

(declare-fun m!6174728 () Bool)

(assert (=> b!5115498 m!6174728))

(declare-fun m!6174730 () Bool)

(assert (=> b!5115499 m!6174730))

(assert (=> b!5115499 m!6174204))

(declare-fun m!6174732 () Bool)

(assert (=> b!5115499 m!6174732))

(assert (=> b!5115221 d!1653369))

(declare-fun b!5115505 () Bool)

(declare-fun e!3190411 () Bool)

(declare-fun tp!1427127 () Bool)

(assert (=> b!5115505 (= e!3190411 (and tp_is_empty!37623 tp!1427127))))

(assert (=> b!5115226 (= tp!1427103 e!3190411)))

(assert (= (and b!5115226 ((_ is Cons!59127) (t!372260 knownP!20))) b!5115505))

(declare-fun condSetEmpty!30021 () Bool)

(assert (=> setNonEmpty!30013 (= condSetEmpty!30021 (= setRest!30014 ((as const (Array Context!7118 Bool)) false)))))

(declare-fun setRes!30021 () Bool)

(assert (=> setNonEmpty!30013 (= tp!1427097 setRes!30021)))

(declare-fun setIsEmpty!30021 () Bool)

(assert (=> setIsEmpty!30021 setRes!30021))

(declare-fun setNonEmpty!30021 () Bool)

(declare-fun e!3190414 () Bool)

(declare-fun setElem!30021 () Context!7118)

(declare-fun tp!1427132 () Bool)

(assert (=> setNonEmpty!30021 (= setRes!30021 (and tp!1427132 (inv!78618 setElem!30021) e!3190414))))

(declare-fun setRest!30021 () (InoxSet Context!7118))

(assert (=> setNonEmpty!30021 (= setRest!30014 ((_ map or) (store ((as const (Array Context!7118 Bool)) false) setElem!30021 true) setRest!30021))))

(declare-fun b!5115510 () Bool)

(declare-fun tp!1427133 () Bool)

(assert (=> b!5115510 (= e!3190414 tp!1427133)))

(assert (= (and setNonEmpty!30013 condSetEmpty!30021) setIsEmpty!30021))

(assert (= (and setNonEmpty!30013 (not condSetEmpty!30021)) setNonEmpty!30021))

(assert (= setNonEmpty!30021 b!5115510))

(declare-fun m!6174734 () Bool)

(assert (=> setNonEmpty!30021 m!6174734))

(declare-fun b!5115515 () Bool)

(declare-fun e!3190417 () Bool)

(declare-fun tp!1427138 () Bool)

(declare-fun tp!1427139 () Bool)

(assert (=> b!5115515 (= e!3190417 (and tp!1427138 tp!1427139))))

(assert (=> b!5115233 (= tp!1427101 e!3190417)))

(assert (= (and b!5115233 ((_ is Cons!59128) (exprs!4059 setElem!30013))) b!5115515))

(declare-fun b!5115516 () Bool)

(declare-fun e!3190418 () Bool)

(declare-fun tp!1427140 () Bool)

(declare-fun tp!1427141 () Bool)

(assert (=> b!5115516 (= e!3190418 (and tp!1427140 tp!1427141))))

(assert (=> b!5115234 (= tp!1427100 e!3190418)))

(assert (= (and b!5115234 ((_ is Cons!59128) (exprs!4059 setElem!30014))) b!5115516))

(declare-fun condSetEmpty!30022 () Bool)

(assert (=> setNonEmpty!30014 (= condSetEmpty!30022 (= setRest!30013 ((as const (Array Context!7118 Bool)) false)))))

(declare-fun setRes!30022 () Bool)

(assert (=> setNonEmpty!30014 (= tp!1427098 setRes!30022)))

(declare-fun setIsEmpty!30022 () Bool)

(assert (=> setIsEmpty!30022 setRes!30022))

(declare-fun setElem!30022 () Context!7118)

(declare-fun tp!1427142 () Bool)

(declare-fun e!3190419 () Bool)

(declare-fun setNonEmpty!30022 () Bool)

(assert (=> setNonEmpty!30022 (= setRes!30022 (and tp!1427142 (inv!78618 setElem!30022) e!3190419))))

(declare-fun setRest!30022 () (InoxSet Context!7118))

(assert (=> setNonEmpty!30022 (= setRest!30013 ((_ map or) (store ((as const (Array Context!7118 Bool)) false) setElem!30022 true) setRest!30022))))

(declare-fun b!5115517 () Bool)

(declare-fun tp!1427143 () Bool)

(assert (=> b!5115517 (= e!3190419 tp!1427143)))

(assert (= (and setNonEmpty!30014 condSetEmpty!30022) setIsEmpty!30022))

(assert (= (and setNonEmpty!30014 (not condSetEmpty!30022)) setNonEmpty!30022))

(assert (= setNonEmpty!30022 b!5115517))

(declare-fun m!6174736 () Bool)

(assert (=> setNonEmpty!30022 m!6174736))

(declare-fun b!5115518 () Bool)

(declare-fun e!3190420 () Bool)

(declare-fun tp!1427144 () Bool)

(assert (=> b!5115518 (= e!3190420 (and tp_is_empty!37623 tp!1427144))))

(assert (=> b!5115225 (= tp!1427102 e!3190420)))

(assert (= (and b!5115225 ((_ is Cons!59127) (t!372260 input!5745))) b!5115518))

(declare-fun b!5115519 () Bool)

(declare-fun e!3190421 () Bool)

(declare-fun tp!1427145 () Bool)

(assert (=> b!5115519 (= e!3190421 (and tp_is_empty!37623 tp!1427145))))

(assert (=> b!5115235 (= tp!1427099 e!3190421)))

(assert (= (and b!5115235 ((_ is Cons!59127) (t!372260 testedP!265))) b!5115519))

(check-sat (not b!5115444) (not b!5115486) (not b!5115467) (not b!5115499) (not b!5115490) (not b!5115479) (not b!5115471) (not b!5115344) (not b!5115516) (not b!5115243) (not d!1653203) (not b!5115495) (not d!1653211) (not b!5115518) (not d!1653213) (not d!1653331) (not d!1653339) (not d!1653361) (not d!1653359) (not b!5115456) (not d!1653333) (not setNonEmpty!30022) (not b!5115505) (not b!5115343) (not b!5115482) (not d!1653347) (not d!1653317) (not bm!356501) (not bm!356502) (not b!5115436) (not b!5115455) (not b!5115461) (not d!1653215) (not b!5115491) (not b!5115515) (not d!1653335) (not b!5115443) (not b!5115254) (not b!5115399) (not b!5115478) (not b!5115253) tp_is_empty!37623 (not d!1653337) (not b!5115519) (not d!1653329) (not b!5115377) (not b!5115475) (not b!5115426) (not d!1653291) (not b!5115452) (not b!5115517) (not b!5115474) (not b!5115418) (not d!1653271) (not d!1653357) (not b!5115480) (not b!5115398) (not b!5115435) (not b!5115454) (not b!5115483) (not b!5115510) (not d!1653369) (not b!5115242) (not d!1653315) (not b!5115469) (not b!5115451) (not setNonEmpty!30021) (not b!5115258) (not b!5115419) (not d!1653355) (not b!5115473) (not d!1653207) (not d!1653205) (not b!5115457) (not d!1653349) (not d!1653367) (not b!5115417) (not d!1653363) (not b!5115257) (not b!5115494) (not d!1653351) (not b!5115498) (not b!5115487) (not b!5115434) (not d!1653319) (not b!5115429) (not b!5115370) (not d!1653365) (not b!5115450) (not b!5115460))
(check-sat)
