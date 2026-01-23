; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539792 () Bool)

(assert start!539792)

(declare-fun b!5116060 () Bool)

(declare-fun res!2178154 () Bool)

(declare-fun e!3190803 () Bool)

(assert (=> b!5116060 (=> (not res!2178154) (not e!3190803))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28632 0))(
  ( (C!28633 (val!23968 Int)) )
))
(declare-datatypes ((Regex!14183 0))(
  ( (ElementMatch!14183 (c!879017 C!28632)) (Concat!23028 (regOne!28878 Regex!14183) (regTwo!28878 Regex!14183)) (EmptyExpr!14183) (Star!14183 (reg!14512 Regex!14183)) (EmptyLang!14183) (Union!14183 (regOne!28879 Regex!14183) (regTwo!28879 Regex!14183)) )
))
(declare-datatypes ((List!59269 0))(
  ( (Nil!59145) (Cons!59145 (h!65593 Regex!14183) (t!372280 List!59269)) )
))
(declare-datatypes ((Context!7134 0))(
  ( (Context!7135 (exprs!4067 List!59269)) )
))
(declare-fun baseZ!46 () (InoxSet Context!7134))

(declare-datatypes ((List!59270 0))(
  ( (Nil!59146) (Cons!59146 (h!65594 C!28632) (t!372281 List!59270)) )
))
(declare-fun knownP!20 () List!59270)

(declare-fun matchZipper!851 ((InoxSet Context!7134) List!59270) Bool)

(assert (=> b!5116060 (= res!2178154 (matchZipper!851 baseZ!46 knownP!20))))

(declare-fun b!5116061 () Bool)

(declare-fun e!3190804 () Bool)

(declare-fun e!3190796 () Bool)

(assert (=> b!5116061 (= e!3190804 e!3190796)))

(declare-fun res!2178167 () Bool)

(assert (=> b!5116061 (=> res!2178167 e!3190796)))

(declare-fun lt!2108360 () List!59270)

(declare-fun input!5745 () List!59270)

(assert (=> b!5116061 (= res!2178167 (not (= lt!2108360 input!5745)))))

(declare-fun lt!2108375 () List!59270)

(declare-fun lt!2108378 () List!59270)

(declare-fun ++!13008 (List!59270 List!59270) List!59270)

(assert (=> b!5116061 (= lt!2108360 (++!13008 lt!2108375 lt!2108378))))

(declare-fun testedP!265 () List!59270)

(declare-fun lt!2108368 () List!59270)

(assert (=> b!5116061 (= lt!2108375 (++!13008 testedP!265 lt!2108368))))

(declare-fun b!5116062 () Bool)

(declare-fun e!3190793 () Bool)

(assert (=> b!5116062 (= e!3190793 e!3190804)))

(declare-fun res!2178158 () Bool)

(assert (=> b!5116062 (=> res!2178158 e!3190804)))

(assert (=> b!5116062 (= res!2178158 (not (= (++!13008 knownP!20 lt!2108378) input!5745)))))

(declare-fun getSuffix!3262 (List!59270 List!59270) List!59270)

(assert (=> b!5116062 (= lt!2108378 (getSuffix!3262 input!5745 knownP!20))))

(declare-fun lt!2108355 () List!59270)

(declare-fun lt!2108357 () List!59270)

(assert (=> b!5116062 (= lt!2108355 (getSuffix!3262 knownP!20 lt!2108357))))

(declare-fun isPrefix!5588 (List!59270 List!59270) Bool)

(assert (=> b!5116062 (isPrefix!5588 lt!2108357 knownP!20)))

(declare-datatypes ((Unit!150269 0))(
  ( (Unit!150270) )
))
(declare-fun lt!2108358 () Unit!150269)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!725 (List!59270 List!59270 List!59270) Unit!150269)

(assert (=> b!5116062 (= lt!2108358 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!725 knownP!20 lt!2108357 input!5745))))

(declare-fun lt!2108354 () (InoxSet Context!7134))

(declare-fun derivationZipper!82 ((InoxSet Context!7134) List!59270) (InoxSet Context!7134))

(assert (=> b!5116062 (= (derivationZipper!82 baseZ!46 lt!2108357) lt!2108354)))

(declare-fun z!4463 () (InoxSet Context!7134))

(declare-fun lt!2108371 () C!28632)

(declare-fun derivationStepZipper!818 ((InoxSet Context!7134) C!28632) (InoxSet Context!7134))

(assert (=> b!5116062 (= lt!2108354 (derivationStepZipper!818 z!4463 lt!2108371))))

(declare-fun lt!2108379 () Unit!150269)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!43 ((InoxSet Context!7134) (InoxSet Context!7134) List!59270 C!28632) Unit!150269)

(assert (=> b!5116062 (= lt!2108379 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!43 baseZ!46 z!4463 testedP!265 lt!2108371))))

(assert (=> b!5116062 (isPrefix!5588 lt!2108357 input!5745)))

(declare-fun lt!2108373 () Unit!150269)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!978 (List!59270 List!59270) Unit!150269)

(assert (=> b!5116062 (= lt!2108373 (lemmaAddHeadSuffixToPrefixStillPrefix!978 testedP!265 input!5745))))

(declare-fun lt!2108380 () List!59270)

(assert (=> b!5116062 (= lt!2108357 (++!13008 testedP!265 lt!2108380))))

(assert (=> b!5116062 (= lt!2108380 (Cons!59146 lt!2108371 Nil!59146))))

(declare-fun lt!2108359 () List!59270)

(declare-fun head!10911 (List!59270) C!28632)

(assert (=> b!5116062 (= lt!2108371 (head!10911 lt!2108359))))

(assert (=> b!5116062 (= lt!2108359 (getSuffix!3262 input!5745 testedP!265))))

(declare-fun setNonEmpty!30069 () Bool)

(declare-fun tp!1427308 () Bool)

(declare-fun setRes!30070 () Bool)

(declare-fun e!3190790 () Bool)

(declare-fun setElem!30069 () Context!7134)

(declare-fun inv!78638 (Context!7134) Bool)

(assert (=> setNonEmpty!30069 (= setRes!30070 (and tp!1427308 (inv!78638 setElem!30069) e!3190790))))

(declare-fun setRest!30069 () (InoxSet Context!7134))

(assert (=> setNonEmpty!30069 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7134 Bool)) false) setElem!30069 true) setRest!30069))))

(declare-fun b!5116064 () Bool)

(declare-fun e!3190795 () Bool)

(assert (=> b!5116064 (= e!3190803 (not e!3190795))))

(declare-fun res!2178161 () Bool)

(assert (=> b!5116064 (=> res!2178161 e!3190795)))

(assert (=> b!5116064 (= res!2178161 (not (matchZipper!851 z!4463 lt!2108368)))))

(assert (=> b!5116064 (= lt!2108368 (getSuffix!3262 knownP!20 testedP!265))))

(assert (=> b!5116064 (isPrefix!5588 testedP!265 knownP!20)))

(declare-fun lt!2108361 () Unit!150269)

(assert (=> b!5116064 (= lt!2108361 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!725 knownP!20 testedP!265 input!5745))))

(declare-fun b!5116065 () Bool)

(declare-fun res!2178169 () Bool)

(assert (=> b!5116065 (=> res!2178169 e!3190795)))

(assert (=> b!5116065 (= res!2178169 (not (= (derivationZipper!82 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5116066 () Bool)

(declare-fun e!3190791 () Bool)

(declare-fun e!3190797 () Bool)

(assert (=> b!5116066 (= e!3190791 e!3190797)))

(declare-fun res!2178160 () Bool)

(assert (=> b!5116066 (=> res!2178160 e!3190797)))

(declare-fun lt!2108374 () List!59270)

(declare-fun $colon$colon!1129 (List!59270 C!28632) List!59270)

(assert (=> b!5116066 (= res!2178160 (not (= lt!2108368 ($colon$colon!1129 lt!2108374 lt!2108371))))))

(declare-fun tail!10052 (List!59270) List!59270)

(assert (=> b!5116066 (= lt!2108374 (tail!10052 lt!2108368))))

(declare-fun b!5116067 () Bool)

(declare-fun e!3190794 () Bool)

(declare-fun lt!2108370 () Int)

(declare-fun lt!2108363 () Int)

(assert (=> b!5116067 (= e!3190794 (>= lt!2108370 lt!2108363))))

(declare-fun b!5116068 () Bool)

(declare-fun res!2178163 () Bool)

(assert (=> b!5116068 (=> res!2178163 e!3190797)))

(assert (=> b!5116068 (= res!2178163 (not (= lt!2108375 knownP!20)))))

(declare-fun b!5116069 () Bool)

(declare-fun e!3190800 () Bool)

(declare-fun tp_is_empty!37639 () Bool)

(declare-fun tp!1427311 () Bool)

(assert (=> b!5116069 (= e!3190800 (and tp_is_empty!37639 tp!1427311))))

(declare-fun setRes!30069 () Bool)

(declare-fun setNonEmpty!30070 () Bool)

(declare-fun tp!1427307 () Bool)

(declare-fun e!3190789 () Bool)

(declare-fun setElem!30070 () Context!7134)

(assert (=> setNonEmpty!30070 (= setRes!30069 (and tp!1427307 (inv!78638 setElem!30070) e!3190789))))

(declare-fun setRest!30070 () (InoxSet Context!7134))

(assert (=> setNonEmpty!30070 (= z!4463 ((_ map or) (store ((as const (Array Context!7134 Bool)) false) setElem!30070 true) setRest!30070))))

(declare-fun b!5116070 () Bool)

(assert (=> b!5116070 (= e!3190795 e!3190793)))

(declare-fun res!2178156 () Bool)

(assert (=> b!5116070 (=> res!2178156 e!3190793)))

(assert (=> b!5116070 (= res!2178156 (>= lt!2108363 lt!2108370))))

(declare-fun size!39489 (List!59270) Int)

(assert (=> b!5116070 (= lt!2108370 (size!39489 input!5745))))

(declare-fun b!5116071 () Bool)

(declare-fun e!3190802 () Bool)

(declare-fun e!3190801 () Bool)

(assert (=> b!5116071 (= e!3190802 e!3190801)))

(declare-fun res!2178155 () Bool)

(assert (=> b!5116071 (=> res!2178155 e!3190801)))

(assert (=> b!5116071 (= res!2178155 (not (= lt!2108374 lt!2108355)))))

(declare-fun lt!2108369 () List!59270)

(assert (=> b!5116071 (= lt!2108369 lt!2108368)))

(declare-fun lt!2108372 () Unit!150269)

(declare-fun lemmaSamePrefixThenSameSuffix!2634 (List!59270 List!59270 List!59270 List!59270 List!59270) Unit!150269)

(assert (=> b!5116071 (= lt!2108372 (lemmaSamePrefixThenSameSuffix!2634 testedP!265 lt!2108369 testedP!265 lt!2108368 knownP!20))))

(declare-fun lt!2108367 () List!59270)

(assert (=> b!5116071 (= lt!2108367 (++!13008 testedP!265 lt!2108369))))

(assert (=> b!5116071 (= lt!2108369 (++!13008 lt!2108380 lt!2108355))))

(declare-fun lt!2108366 () Unit!150269)

(declare-fun lemmaConcatAssociativity!2766 (List!59270 List!59270 List!59270) Unit!150269)

(assert (=> b!5116071 (= lt!2108366 (lemmaConcatAssociativity!2766 testedP!265 lt!2108380 lt!2108355))))

(declare-fun b!5116072 () Bool)

(declare-fun res!2178166 () Bool)

(declare-fun e!3190799 () Bool)

(assert (=> b!5116072 (=> (not res!2178166) (not e!3190799))))

(assert (=> b!5116072 (= res!2178166 (isPrefix!5588 knownP!20 input!5745))))

(declare-fun b!5116073 () Bool)

(declare-fun tp!1427312 () Bool)

(assert (=> b!5116073 (= e!3190790 tp!1427312)))

(declare-fun b!5116074 () Bool)

(assert (=> b!5116074 (= e!3190799 e!3190803)))

(declare-fun res!2178165 () Bool)

(assert (=> b!5116074 (=> (not res!2178165) (not e!3190803))))

(declare-fun lt!2108362 () Int)

(assert (=> b!5116074 (= res!2178165 (>= lt!2108362 lt!2108363))))

(assert (=> b!5116074 (= lt!2108363 (size!39489 testedP!265))))

(assert (=> b!5116074 (= lt!2108362 (size!39489 knownP!20))))

(declare-fun b!5116075 () Bool)

(assert (=> b!5116075 (= e!3190797 e!3190802)))

(declare-fun res!2178168 () Bool)

(assert (=> b!5116075 (=> res!2178168 e!3190802)))

(assert (=> b!5116075 (= res!2178168 (not (= lt!2108367 knownP!20)))))

(assert (=> b!5116075 (= lt!2108367 (++!13008 lt!2108357 lt!2108355))))

(declare-fun b!5116076 () Bool)

(declare-fun res!2178170 () Bool)

(assert (=> b!5116076 (=> res!2178170 e!3190795)))

(declare-fun lostCauseZipper!1069 ((InoxSet Context!7134)) Bool)

(assert (=> b!5116076 (= res!2178170 (lostCauseZipper!1069 z!4463))))

(declare-fun res!2178164 () Bool)

(assert (=> start!539792 (=> (not res!2178164) (not e!3190799))))

(assert (=> start!539792 (= res!2178164 (isPrefix!5588 testedP!265 input!5745))))

(assert (=> start!539792 e!3190799))

(declare-fun e!3190792 () Bool)

(assert (=> start!539792 e!3190792))

(declare-fun condSetEmpty!30070 () Bool)

(assert (=> start!539792 (= condSetEmpty!30070 (= z!4463 ((as const (Array Context!7134 Bool)) false)))))

(assert (=> start!539792 setRes!30069))

(assert (=> start!539792 e!3190800))

(declare-fun condSetEmpty!30069 () Bool)

(assert (=> start!539792 (= condSetEmpty!30069 (= baseZ!46 ((as const (Array Context!7134 Bool)) false)))))

(assert (=> start!539792 setRes!30070))

(declare-fun e!3190805 () Bool)

(assert (=> start!539792 e!3190805))

(declare-fun b!5116063 () Bool)

(declare-fun e!3190798 () Bool)

(assert (=> b!5116063 (= e!3190796 e!3190798)))

(declare-fun res!2178153 () Bool)

(assert (=> b!5116063 (=> res!2178153 e!3190798)))

(declare-fun lt!2108365 () List!59270)

(assert (=> b!5116063 (= res!2178153 (not (= lt!2108365 input!5745)))))

(assert (=> b!5116063 (= lt!2108360 lt!2108365)))

(declare-fun lt!2108376 () List!59270)

(assert (=> b!5116063 (= lt!2108365 (++!13008 testedP!265 lt!2108376))))

(assert (=> b!5116063 (= lt!2108376 (++!13008 lt!2108368 lt!2108378))))

(declare-fun lt!2108377 () Unit!150269)

(assert (=> b!5116063 (= lt!2108377 (lemmaConcatAssociativity!2766 testedP!265 lt!2108368 lt!2108378))))

(declare-fun b!5116077 () Bool)

(declare-fun res!2178159 () Bool)

(assert (=> b!5116077 (=> res!2178159 e!3190796)))

(assert (=> b!5116077 (= res!2178159 (not (= (++!13008 testedP!265 lt!2108359) input!5745)))))

(declare-fun b!5116078 () Bool)

(declare-fun tp!1427309 () Bool)

(assert (=> b!5116078 (= e!3190805 (and tp_is_empty!37639 tp!1427309))))

(declare-fun b!5116079 () Bool)

(declare-fun tp!1427310 () Bool)

(assert (=> b!5116079 (= e!3190789 tp!1427310)))

(declare-fun b!5116080 () Bool)

(declare-fun res!2178157 () Bool)

(assert (=> b!5116080 (=> res!2178157 e!3190795)))

(assert (=> b!5116080 (= res!2178157 (= lt!2108363 lt!2108362))))

(declare-fun b!5116081 () Bool)

(declare-fun tp!1427313 () Bool)

(assert (=> b!5116081 (= e!3190792 (and tp_is_empty!37639 tp!1427313))))

(declare-fun setIsEmpty!30069 () Bool)

(assert (=> setIsEmpty!30069 setRes!30069))

(declare-fun b!5116082 () Bool)

(assert (=> b!5116082 (= e!3190798 e!3190791)))

(declare-fun res!2178152 () Bool)

(assert (=> b!5116082 (=> res!2178152 e!3190791)))

(assert (=> b!5116082 (= res!2178152 (not (= (head!10911 lt!2108368) lt!2108371)))))

(assert (=> b!5116082 (= lt!2108376 lt!2108359)))

(declare-fun lt!2108356 () Unit!150269)

(assert (=> b!5116082 (= lt!2108356 (lemmaSamePrefixThenSameSuffix!2634 testedP!265 lt!2108376 testedP!265 lt!2108359 input!5745))))

(declare-fun setIsEmpty!30070 () Bool)

(assert (=> setIsEmpty!30070 setRes!30070))

(declare-fun b!5116083 () Bool)

(assert (=> b!5116083 (= e!3190801 e!3190794)))

(declare-fun res!2178162 () Bool)

(assert (=> b!5116083 (=> res!2178162 e!3190794)))

(declare-datatypes ((tuple2!63628 0))(
  ( (tuple2!63629 (_1!35117 List!59270) (_2!35117 List!59270)) )
))
(declare-fun findLongestMatchInnerZipper!195 ((InoxSet Context!7134) List!59270 Int List!59270 List!59270 Int) tuple2!63628)

(assert (=> b!5116083 (= res!2178162 (< (size!39489 (_1!35117 (findLongestMatchInnerZipper!195 z!4463 testedP!265 lt!2108363 lt!2108359 input!5745 lt!2108370))) lt!2108362))))

(assert (=> b!5116083 (>= (size!39489 (_1!35117 (findLongestMatchInnerZipper!195 lt!2108354 lt!2108357 (size!39489 lt!2108357) (getSuffix!3262 input!5745 lt!2108357) input!5745 lt!2108370))) lt!2108362)))

(declare-fun lt!2108364 () Unit!150269)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!11 ((InoxSet Context!7134) (InoxSet Context!7134) List!59270 List!59270 List!59270) Unit!150269)

(assert (=> b!5116083 (= lt!2108364 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!11 baseZ!46 lt!2108354 input!5745 lt!2108357 knownP!20))))

(assert (= (and start!539792 res!2178164) b!5116072))

(assert (= (and b!5116072 res!2178166) b!5116074))

(assert (= (and b!5116074 res!2178165) b!5116060))

(assert (= (and b!5116060 res!2178154) b!5116064))

(assert (= (and b!5116064 (not res!2178161)) b!5116065))

(assert (= (and b!5116065 (not res!2178169)) b!5116076))

(assert (= (and b!5116076 (not res!2178170)) b!5116080))

(assert (= (and b!5116080 (not res!2178157)) b!5116070))

(assert (= (and b!5116070 (not res!2178156)) b!5116062))

(assert (= (and b!5116062 (not res!2178158)) b!5116061))

(assert (= (and b!5116061 (not res!2178167)) b!5116077))

(assert (= (and b!5116077 (not res!2178159)) b!5116063))

(assert (= (and b!5116063 (not res!2178153)) b!5116082))

(assert (= (and b!5116082 (not res!2178152)) b!5116066))

(assert (= (and b!5116066 (not res!2178160)) b!5116068))

(assert (= (and b!5116068 (not res!2178163)) b!5116075))

(assert (= (and b!5116075 (not res!2178168)) b!5116071))

(assert (= (and b!5116071 (not res!2178155)) b!5116083))

(assert (= (and b!5116083 (not res!2178162)) b!5116067))

(get-info :version)

(assert (= (and start!539792 ((_ is Cons!59146) input!5745)) b!5116081))

(assert (= (and start!539792 condSetEmpty!30070) setIsEmpty!30069))

(assert (= (and start!539792 (not condSetEmpty!30070)) setNonEmpty!30070))

(assert (= setNonEmpty!30070 b!5116079))

(assert (= (and start!539792 ((_ is Cons!59146) testedP!265)) b!5116069))

(assert (= (and start!539792 condSetEmpty!30069) setIsEmpty!30070))

(assert (= (and start!539792 (not condSetEmpty!30069)) setNonEmpty!30069))

(assert (= setNonEmpty!30069 b!5116073))

(assert (= (and start!539792 ((_ is Cons!59146) knownP!20)) b!5116078))

(declare-fun m!6175388 () Bool)

(assert (=> b!5116062 m!6175388))

(declare-fun m!6175390 () Bool)

(assert (=> b!5116062 m!6175390))

(declare-fun m!6175392 () Bool)

(assert (=> b!5116062 m!6175392))

(declare-fun m!6175394 () Bool)

(assert (=> b!5116062 m!6175394))

(declare-fun m!6175396 () Bool)

(assert (=> b!5116062 m!6175396))

(declare-fun m!6175398 () Bool)

(assert (=> b!5116062 m!6175398))

(declare-fun m!6175400 () Bool)

(assert (=> b!5116062 m!6175400))

(declare-fun m!6175402 () Bool)

(assert (=> b!5116062 m!6175402))

(declare-fun m!6175404 () Bool)

(assert (=> b!5116062 m!6175404))

(declare-fun m!6175406 () Bool)

(assert (=> b!5116062 m!6175406))

(declare-fun m!6175408 () Bool)

(assert (=> b!5116062 m!6175408))

(declare-fun m!6175410 () Bool)

(assert (=> b!5116062 m!6175410))

(declare-fun m!6175412 () Bool)

(assert (=> b!5116062 m!6175412))

(declare-fun m!6175414 () Bool)

(assert (=> b!5116072 m!6175414))

(declare-fun m!6175416 () Bool)

(assert (=> b!5116074 m!6175416))

(declare-fun m!6175418 () Bool)

(assert (=> b!5116074 m!6175418))

(declare-fun m!6175420 () Bool)

(assert (=> setNonEmpty!30070 m!6175420))

(declare-fun m!6175422 () Bool)

(assert (=> b!5116076 m!6175422))

(declare-fun m!6175424 () Bool)

(assert (=> b!5116071 m!6175424))

(declare-fun m!6175426 () Bool)

(assert (=> b!5116071 m!6175426))

(declare-fun m!6175428 () Bool)

(assert (=> b!5116071 m!6175428))

(declare-fun m!6175430 () Bool)

(assert (=> b!5116071 m!6175430))

(declare-fun m!6175432 () Bool)

(assert (=> b!5116061 m!6175432))

(declare-fun m!6175434 () Bool)

(assert (=> b!5116061 m!6175434))

(declare-fun m!6175436 () Bool)

(assert (=> b!5116065 m!6175436))

(declare-fun m!6175438 () Bool)

(assert (=> b!5116075 m!6175438))

(declare-fun m!6175440 () Bool)

(assert (=> b!5116083 m!6175440))

(declare-fun m!6175442 () Bool)

(assert (=> b!5116083 m!6175442))

(declare-fun m!6175444 () Bool)

(assert (=> b!5116083 m!6175444))

(declare-fun m!6175446 () Bool)

(assert (=> b!5116083 m!6175446))

(declare-fun m!6175448 () Bool)

(assert (=> b!5116083 m!6175448))

(declare-fun m!6175450 () Bool)

(assert (=> b!5116083 m!6175450))

(assert (=> b!5116083 m!6175440))

(assert (=> b!5116083 m!6175442))

(declare-fun m!6175452 () Bool)

(assert (=> b!5116083 m!6175452))

(declare-fun m!6175454 () Bool)

(assert (=> b!5116070 m!6175454))

(declare-fun m!6175456 () Bool)

(assert (=> setNonEmpty!30069 m!6175456))

(declare-fun m!6175458 () Bool)

(assert (=> b!5116082 m!6175458))

(declare-fun m!6175460 () Bool)

(assert (=> b!5116082 m!6175460))

(declare-fun m!6175462 () Bool)

(assert (=> b!5116077 m!6175462))

(declare-fun m!6175464 () Bool)

(assert (=> start!539792 m!6175464))

(declare-fun m!6175466 () Bool)

(assert (=> b!5116064 m!6175466))

(declare-fun m!6175468 () Bool)

(assert (=> b!5116064 m!6175468))

(declare-fun m!6175470 () Bool)

(assert (=> b!5116064 m!6175470))

(declare-fun m!6175472 () Bool)

(assert (=> b!5116064 m!6175472))

(declare-fun m!6175474 () Bool)

(assert (=> b!5116060 m!6175474))

(declare-fun m!6175476 () Bool)

(assert (=> b!5116066 m!6175476))

(declare-fun m!6175478 () Bool)

(assert (=> b!5116066 m!6175478))

(declare-fun m!6175480 () Bool)

(assert (=> b!5116063 m!6175480))

(declare-fun m!6175482 () Bool)

(assert (=> b!5116063 m!6175482))

(declare-fun m!6175484 () Bool)

(assert (=> b!5116063 m!6175484))

(check-sat (not b!5116060) (not b!5116075) (not b!5116061) (not setNonEmpty!30070) (not b!5116065) (not b!5116070) (not b!5116069) (not b!5116077) (not b!5116073) tp_is_empty!37639 (not b!5116066) (not b!5116079) (not b!5116071) (not b!5116078) (not setNonEmpty!30069) (not b!5116064) (not b!5116082) (not b!5116072) (not b!5116063) (not start!539792) (not b!5116083) (not b!5116074) (not b!5116081) (not b!5116062) (not b!5116076))
(check-sat)
