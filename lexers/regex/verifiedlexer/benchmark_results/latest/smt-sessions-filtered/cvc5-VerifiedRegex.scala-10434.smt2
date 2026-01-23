; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!539222 () Bool)

(assert start!539222)

(declare-fun b!5112296 () Bool)

(declare-fun e!3188490 () Bool)

(declare-fun tp!1426450 () Bool)

(assert (=> b!5112296 (= e!3188490 tp!1426450)))

(declare-fun res!2176137 () Bool)

(declare-fun e!3188487 () Bool)

(assert (=> start!539222 (=> (not res!2176137) (not e!3188487))))

(declare-datatypes ((C!28582 0))(
  ( (C!28583 (val!23943 Int)) )
))
(declare-datatypes ((List!59203 0))(
  ( (Nil!59079) (Cons!59079 (h!65527 C!28582) (t!372204 List!59203)) )
))
(declare-fun testedP!265 () List!59203)

(declare-fun input!5745 () List!59203)

(declare-fun isPrefix!5563 (List!59203 List!59203) Bool)

(assert (=> start!539222 (= res!2176137 (isPrefix!5563 testedP!265 input!5745))))

(assert (=> start!539222 e!3188487))

(declare-fun e!3188491 () Bool)

(assert (=> start!539222 e!3188491))

(declare-fun condSetEmpty!29855 () Bool)

(declare-datatypes ((Regex!14158 0))(
  ( (ElementMatch!14158 (c!878300 C!28582)) (Concat!23003 (regOne!28828 Regex!14158) (regTwo!28828 Regex!14158)) (EmptyExpr!14158) (Star!14158 (reg!14487 Regex!14158)) (EmptyLang!14158) (Union!14158 (regOne!28829 Regex!14158) (regTwo!28829 Regex!14158)) )
))
(declare-datatypes ((List!59204 0))(
  ( (Nil!59080) (Cons!59080 (h!65528 Regex!14158) (t!372205 List!59204)) )
))
(declare-datatypes ((Context!7084 0))(
  ( (Context!7085 (exprs!4042 List!59204)) )
))
(declare-fun z!4463 () (Set Context!7084))

(assert (=> start!539222 (= condSetEmpty!29855 (= z!4463 (as set.empty (Set Context!7084))))))

(declare-fun setRes!29856 () Bool)

(assert (=> start!539222 setRes!29856))

(declare-fun e!3188484 () Bool)

(assert (=> start!539222 e!3188484))

(declare-fun condSetEmpty!29856 () Bool)

(declare-fun baseZ!46 () (Set Context!7084))

(assert (=> start!539222 (= condSetEmpty!29856 (= baseZ!46 (as set.empty (Set Context!7084))))))

(declare-fun setRes!29855 () Bool)

(assert (=> start!539222 setRes!29855))

(declare-fun e!3188493 () Bool)

(assert (=> start!539222 e!3188493))

(declare-fun b!5112297 () Bool)

(declare-fun res!2176131 () Bool)

(declare-fun e!3188492 () Bool)

(assert (=> b!5112297 (=> res!2176131 e!3188492)))

(declare-fun lt!2105620 () List!59203)

(declare-fun ++!12983 (List!59203 List!59203) List!59203)

(assert (=> b!5112297 (= res!2176131 (not (= (++!12983 testedP!265 lt!2105620) input!5745)))))

(declare-fun b!5112298 () Bool)

(declare-fun tp_is_empty!37589 () Bool)

(declare-fun tp!1426448 () Bool)

(assert (=> b!5112298 (= e!3188491 (and tp_is_empty!37589 tp!1426448))))

(declare-fun b!5112299 () Bool)

(declare-fun res!2176143 () Bool)

(declare-fun e!3188494 () Bool)

(assert (=> b!5112299 (=> res!2176143 e!3188494)))

(declare-fun derivationZipper!57 ((Set Context!7084) List!59203) (Set Context!7084))

(assert (=> b!5112299 (= res!2176143 (not (= (derivationZipper!57 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5112300 () Bool)

(declare-fun tp!1426452 () Bool)

(assert (=> b!5112300 (= e!3188484 (and tp_is_empty!37589 tp!1426452))))

(declare-fun setElem!29856 () Context!7084)

(declare-fun e!3188488 () Bool)

(declare-fun tp!1426451 () Bool)

(declare-fun setNonEmpty!29855 () Bool)

(declare-fun inv!78577 (Context!7084) Bool)

(assert (=> setNonEmpty!29855 (= setRes!29855 (and tp!1426451 (inv!78577 setElem!29856) e!3188488))))

(declare-fun setRest!29856 () (Set Context!7084))

(assert (=> setNonEmpty!29855 (= baseZ!46 (set.union (set.insert setElem!29856 (as set.empty (Set Context!7084))) setRest!29856))))

(declare-fun setNonEmpty!29856 () Bool)

(declare-fun tp!1426446 () Bool)

(declare-fun setElem!29855 () Context!7084)

(assert (=> setNonEmpty!29856 (= setRes!29856 (and tp!1426446 (inv!78577 setElem!29855) e!3188490))))

(declare-fun setRest!29855 () (Set Context!7084))

(assert (=> setNonEmpty!29856 (= z!4463 (set.union (set.insert setElem!29855 (as set.empty (Set Context!7084))) setRest!29855))))

(declare-fun b!5112301 () Bool)

(declare-fun e!3188485 () Bool)

(assert (=> b!5112301 (= e!3188485 (not (= lt!2105620 Nil!59079)))))

(declare-fun lt!2105618 () List!59203)

(assert (=> b!5112301 (= lt!2105618 lt!2105620)))

(declare-datatypes ((Unit!150187 0))(
  ( (Unit!150188) )
))
(declare-fun lt!2105628 () Unit!150187)

(declare-fun lemmaSamePrefixThenSameSuffix!2609 (List!59203 List!59203 List!59203 List!59203 List!59203) Unit!150187)

(assert (=> b!5112301 (= lt!2105628 (lemmaSamePrefixThenSameSuffix!2609 testedP!265 lt!2105618 testedP!265 lt!2105620 input!5745))))

(declare-fun b!5112302 () Bool)

(declare-fun res!2176136 () Bool)

(assert (=> b!5112302 (=> res!2176136 e!3188494)))

(declare-fun lt!2105619 () Int)

(declare-fun lt!2105617 () Int)

(assert (=> b!5112302 (= res!2176136 (= lt!2105619 lt!2105617))))

(declare-fun b!5112303 () Bool)

(declare-fun e!3188489 () Bool)

(assert (=> b!5112303 (= e!3188494 e!3188489)))

(declare-fun res!2176134 () Bool)

(assert (=> b!5112303 (=> res!2176134 e!3188489)))

(declare-fun lt!2105616 () List!59203)

(declare-fun knownP!20 () List!59203)

(assert (=> b!5112303 (= res!2176134 (not (= (++!12983 knownP!20 lt!2105616) input!5745)))))

(declare-fun getSuffix!3237 (List!59203 List!59203) List!59203)

(assert (=> b!5112303 (= lt!2105616 (getSuffix!3237 input!5745 knownP!20))))

(declare-fun lt!2105615 () List!59203)

(declare-fun lt!2105622 () List!59203)

(assert (=> b!5112303 (= lt!2105615 (getSuffix!3237 knownP!20 lt!2105622))))

(assert (=> b!5112303 (isPrefix!5563 lt!2105622 knownP!20)))

(declare-fun lt!2105624 () Unit!150187)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!700 (List!59203 List!59203 List!59203) Unit!150187)

(assert (=> b!5112303 (= lt!2105624 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!700 knownP!20 lt!2105622 input!5745))))

(declare-fun lt!2105629 () C!28582)

(declare-fun derivationStepZipper!793 ((Set Context!7084) C!28582) (Set Context!7084))

(assert (=> b!5112303 (= (derivationZipper!57 baseZ!46 lt!2105622) (derivationStepZipper!793 z!4463 lt!2105629))))

(declare-fun lt!2105623 () Unit!150187)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!18 ((Set Context!7084) (Set Context!7084) List!59203 C!28582) Unit!150187)

(assert (=> b!5112303 (= lt!2105623 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!18 baseZ!46 z!4463 testedP!265 lt!2105629))))

(assert (=> b!5112303 (isPrefix!5563 lt!2105622 input!5745)))

(declare-fun lt!2105627 () Unit!150187)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!953 (List!59203 List!59203) Unit!150187)

(assert (=> b!5112303 (= lt!2105627 (lemmaAddHeadSuffixToPrefixStillPrefix!953 testedP!265 input!5745))))

(assert (=> b!5112303 (= lt!2105622 (++!12983 testedP!265 (Cons!59079 lt!2105629 Nil!59079)))))

(declare-fun head!10886 (List!59203) C!28582)

(assert (=> b!5112303 (= lt!2105629 (head!10886 lt!2105620))))

(assert (=> b!5112303 (= lt!2105620 (getSuffix!3237 input!5745 testedP!265))))

(declare-fun b!5112304 () Bool)

(declare-fun res!2176135 () Bool)

(declare-fun e!3188486 () Bool)

(assert (=> b!5112304 (=> (not res!2176135) (not e!3188486))))

(declare-fun matchZipper!826 ((Set Context!7084) List!59203) Bool)

(assert (=> b!5112304 (= res!2176135 (matchZipper!826 baseZ!46 knownP!20))))

(declare-fun setIsEmpty!29855 () Bool)

(assert (=> setIsEmpty!29855 setRes!29856))

(declare-fun b!5112305 () Bool)

(declare-fun res!2176140 () Bool)

(assert (=> b!5112305 (=> res!2176140 e!3188494)))

(declare-fun size!39464 (List!59203) Int)

(assert (=> b!5112305 (= res!2176140 (>= lt!2105619 (size!39464 input!5745)))))

(declare-fun b!5112306 () Bool)

(assert (=> b!5112306 (= e!3188492 e!3188485)))

(declare-fun res!2176138 () Bool)

(assert (=> b!5112306 (=> res!2176138 e!3188485)))

(declare-fun lt!2105626 () List!59203)

(assert (=> b!5112306 (= res!2176138 (not (= lt!2105626 input!5745)))))

(declare-fun lt!2105621 () List!59203)

(assert (=> b!5112306 (= lt!2105621 lt!2105626)))

(assert (=> b!5112306 (= lt!2105626 (++!12983 testedP!265 lt!2105618))))

(declare-fun lt!2105630 () List!59203)

(assert (=> b!5112306 (= lt!2105618 (++!12983 lt!2105630 lt!2105616))))

(declare-fun lt!2105631 () Unit!150187)

(declare-fun lemmaConcatAssociativity!2741 (List!59203 List!59203 List!59203) Unit!150187)

(assert (=> b!5112306 (= lt!2105631 (lemmaConcatAssociativity!2741 testedP!265 lt!2105630 lt!2105616))))

(declare-fun b!5112307 () Bool)

(assert (=> b!5112307 (= e!3188487 e!3188486)))

(declare-fun res!2176142 () Bool)

(assert (=> b!5112307 (=> (not res!2176142) (not e!3188486))))

(assert (=> b!5112307 (= res!2176142 (>= lt!2105617 lt!2105619))))

(assert (=> b!5112307 (= lt!2105619 (size!39464 testedP!265))))

(assert (=> b!5112307 (= lt!2105617 (size!39464 knownP!20))))

(declare-fun setIsEmpty!29856 () Bool)

(assert (=> setIsEmpty!29856 setRes!29855))

(declare-fun b!5112308 () Bool)

(assert (=> b!5112308 (= e!3188489 e!3188492)))

(declare-fun res!2176139 () Bool)

(assert (=> b!5112308 (=> res!2176139 e!3188492)))

(assert (=> b!5112308 (= res!2176139 (not (= lt!2105621 input!5745)))))

(assert (=> b!5112308 (= lt!2105621 (++!12983 (++!12983 testedP!265 lt!2105630) lt!2105616))))

(declare-fun b!5112309 () Bool)

(declare-fun res!2176133 () Bool)

(assert (=> b!5112309 (=> (not res!2176133) (not e!3188487))))

(assert (=> b!5112309 (= res!2176133 (isPrefix!5563 knownP!20 input!5745))))

(declare-fun b!5112310 () Bool)

(declare-fun res!2176132 () Bool)

(assert (=> b!5112310 (=> res!2176132 e!3188494)))

(declare-fun lostCauseZipper!1044 ((Set Context!7084)) Bool)

(assert (=> b!5112310 (= res!2176132 (lostCauseZipper!1044 z!4463))))

(declare-fun b!5112311 () Bool)

(assert (=> b!5112311 (= e!3188486 (not e!3188494))))

(declare-fun res!2176141 () Bool)

(assert (=> b!5112311 (=> res!2176141 e!3188494)))

(assert (=> b!5112311 (= res!2176141 (not (matchZipper!826 z!4463 lt!2105630)))))

(assert (=> b!5112311 (= lt!2105630 (getSuffix!3237 knownP!20 testedP!265))))

(assert (=> b!5112311 (isPrefix!5563 testedP!265 knownP!20)))

(declare-fun lt!2105625 () Unit!150187)

(assert (=> b!5112311 (= lt!2105625 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!700 knownP!20 testedP!265 input!5745))))

(declare-fun b!5112312 () Bool)

(declare-fun tp!1426449 () Bool)

(assert (=> b!5112312 (= e!3188493 (and tp_is_empty!37589 tp!1426449))))

(declare-fun b!5112313 () Bool)

(declare-fun tp!1426447 () Bool)

(assert (=> b!5112313 (= e!3188488 tp!1426447)))

(assert (= (and start!539222 res!2176137) b!5112309))

(assert (= (and b!5112309 res!2176133) b!5112307))

(assert (= (and b!5112307 res!2176142) b!5112304))

(assert (= (and b!5112304 res!2176135) b!5112311))

(assert (= (and b!5112311 (not res!2176141)) b!5112299))

(assert (= (and b!5112299 (not res!2176143)) b!5112310))

(assert (= (and b!5112310 (not res!2176132)) b!5112302))

(assert (= (and b!5112302 (not res!2176136)) b!5112305))

(assert (= (and b!5112305 (not res!2176140)) b!5112303))

(assert (= (and b!5112303 (not res!2176134)) b!5112308))

(assert (= (and b!5112308 (not res!2176139)) b!5112297))

(assert (= (and b!5112297 (not res!2176131)) b!5112306))

(assert (= (and b!5112306 (not res!2176138)) b!5112301))

(assert (= (and start!539222 (is-Cons!59079 input!5745)) b!5112298))

(assert (= (and start!539222 condSetEmpty!29855) setIsEmpty!29855))

(assert (= (and start!539222 (not condSetEmpty!29855)) setNonEmpty!29856))

(assert (= setNonEmpty!29856 b!5112296))

(assert (= (and start!539222 (is-Cons!59079 testedP!265)) b!5112300))

(assert (= (and start!539222 condSetEmpty!29856) setIsEmpty!29856))

(assert (= (and start!539222 (not condSetEmpty!29856)) setNonEmpty!29855))

(assert (= setNonEmpty!29855 b!5112313))

(assert (= (and start!539222 (is-Cons!59079 knownP!20)) b!5112312))

(declare-fun m!6170038 () Bool)

(assert (=> b!5112303 m!6170038))

(declare-fun m!6170040 () Bool)

(assert (=> b!5112303 m!6170040))

(declare-fun m!6170042 () Bool)

(assert (=> b!5112303 m!6170042))

(declare-fun m!6170044 () Bool)

(assert (=> b!5112303 m!6170044))

(declare-fun m!6170046 () Bool)

(assert (=> b!5112303 m!6170046))

(declare-fun m!6170048 () Bool)

(assert (=> b!5112303 m!6170048))

(declare-fun m!6170050 () Bool)

(assert (=> b!5112303 m!6170050))

(declare-fun m!6170052 () Bool)

(assert (=> b!5112303 m!6170052))

(declare-fun m!6170054 () Bool)

(assert (=> b!5112303 m!6170054))

(declare-fun m!6170056 () Bool)

(assert (=> b!5112303 m!6170056))

(declare-fun m!6170058 () Bool)

(assert (=> b!5112303 m!6170058))

(declare-fun m!6170060 () Bool)

(assert (=> b!5112303 m!6170060))

(declare-fun m!6170062 () Bool)

(assert (=> b!5112303 m!6170062))

(declare-fun m!6170064 () Bool)

(assert (=> b!5112305 m!6170064))

(declare-fun m!6170066 () Bool)

(assert (=> setNonEmpty!29855 m!6170066))

(declare-fun m!6170068 () Bool)

(assert (=> b!5112301 m!6170068))

(declare-fun m!6170070 () Bool)

(assert (=> b!5112310 m!6170070))

(declare-fun m!6170072 () Bool)

(assert (=> b!5112297 m!6170072))

(declare-fun m!6170074 () Bool)

(assert (=> b!5112299 m!6170074))

(declare-fun m!6170076 () Bool)

(assert (=> b!5112308 m!6170076))

(assert (=> b!5112308 m!6170076))

(declare-fun m!6170078 () Bool)

(assert (=> b!5112308 m!6170078))

(declare-fun m!6170080 () Bool)

(assert (=> b!5112304 m!6170080))

(declare-fun m!6170082 () Bool)

(assert (=> setNonEmpty!29856 m!6170082))

(declare-fun m!6170084 () Bool)

(assert (=> b!5112306 m!6170084))

(declare-fun m!6170086 () Bool)

(assert (=> b!5112306 m!6170086))

(declare-fun m!6170088 () Bool)

(assert (=> b!5112306 m!6170088))

(declare-fun m!6170090 () Bool)

(assert (=> b!5112311 m!6170090))

(declare-fun m!6170092 () Bool)

(assert (=> b!5112311 m!6170092))

(declare-fun m!6170094 () Bool)

(assert (=> b!5112311 m!6170094))

(declare-fun m!6170096 () Bool)

(assert (=> b!5112311 m!6170096))

(declare-fun m!6170098 () Bool)

(assert (=> b!5112309 m!6170098))

(declare-fun m!6170100 () Bool)

(assert (=> start!539222 m!6170100))

(declare-fun m!6170102 () Bool)

(assert (=> b!5112307 m!6170102))

(declare-fun m!6170104 () Bool)

(assert (=> b!5112307 m!6170104))

(push 1)

(assert (not b!5112301))

(assert (not b!5112297))

(assert (not setNonEmpty!29856))

(assert (not b!5112309))

(assert (not b!5112300))

(assert (not setNonEmpty!29855))

(assert (not start!539222))

(assert tp_is_empty!37589)

(assert (not b!5112306))

(assert (not b!5112298))

(assert (not b!5112305))

(assert (not b!5112299))

(assert (not b!5112304))

(assert (not b!5112307))

(assert (not b!5112308))

(assert (not b!5112303))

(assert (not b!5112310))

(assert (not b!5112313))

(assert (not b!5112296))

(assert (not b!5112312))

(assert (not b!5112311))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1652149 () Bool)

(declare-fun lt!2105689 () Int)

(assert (=> d!1652149 (>= lt!2105689 0)))

(declare-fun e!3188538 () Int)

(assert (=> d!1652149 (= lt!2105689 e!3188538)))

(declare-fun c!878308 () Bool)

(assert (=> d!1652149 (= c!878308 (is-Nil!59079 input!5745))))

(assert (=> d!1652149 (= (size!39464 input!5745) lt!2105689)))

(declare-fun b!5112388 () Bool)

(assert (=> b!5112388 (= e!3188538 0)))

(declare-fun b!5112389 () Bool)

(assert (=> b!5112389 (= e!3188538 (+ 1 (size!39464 (t!372204 input!5745))))))

(assert (= (and d!1652149 c!878308) b!5112388))

(assert (= (and d!1652149 (not c!878308)) b!5112389))

(declare-fun m!6170200 () Bool)

(assert (=> b!5112389 m!6170200))

(assert (=> b!5112305 d!1652149))

(declare-fun d!1652155 () Bool)

(declare-fun e!3188549 () Bool)

(assert (=> d!1652155 e!3188549))

(declare-fun res!2176204 () Bool)

(assert (=> d!1652155 (=> (not res!2176204) (not e!3188549))))

(declare-fun lt!2105694 () List!59203)

(declare-fun content!10498 (List!59203) (Set C!28582))

(assert (=> d!1652155 (= res!2176204 (= (content!10498 lt!2105694) (set.union (content!10498 testedP!265) (content!10498 lt!2105620))))))

(declare-fun e!3188550 () List!59203)

(assert (=> d!1652155 (= lt!2105694 e!3188550)))

(declare-fun c!878311 () Bool)

(assert (=> d!1652155 (= c!878311 (is-Nil!59079 testedP!265))))

(assert (=> d!1652155 (= (++!12983 testedP!265 lt!2105620) lt!2105694)))

(declare-fun b!5112408 () Bool)

(declare-fun res!2176203 () Bool)

(assert (=> b!5112408 (=> (not res!2176203) (not e!3188549))))

(assert (=> b!5112408 (= res!2176203 (= (size!39464 lt!2105694) (+ (size!39464 testedP!265) (size!39464 lt!2105620))))))

(declare-fun b!5112406 () Bool)

(assert (=> b!5112406 (= e!3188550 lt!2105620)))

(declare-fun b!5112407 () Bool)

(assert (=> b!5112407 (= e!3188550 (Cons!59079 (h!65527 testedP!265) (++!12983 (t!372204 testedP!265) lt!2105620)))))

(declare-fun b!5112409 () Bool)

(assert (=> b!5112409 (= e!3188549 (or (not (= lt!2105620 Nil!59079)) (= lt!2105694 testedP!265)))))

(assert (= (and d!1652155 c!878311) b!5112406))

(assert (= (and d!1652155 (not c!878311)) b!5112407))

(assert (= (and d!1652155 res!2176204) b!5112408))

(assert (= (and b!5112408 res!2176203) b!5112409))

(declare-fun m!6170202 () Bool)

(assert (=> d!1652155 m!6170202))

(declare-fun m!6170204 () Bool)

(assert (=> d!1652155 m!6170204))

(declare-fun m!6170206 () Bool)

(assert (=> d!1652155 m!6170206))

(declare-fun m!6170208 () Bool)

(assert (=> b!5112408 m!6170208))

(assert (=> b!5112408 m!6170102))

(declare-fun m!6170210 () Bool)

(assert (=> b!5112408 m!6170210))

(declare-fun m!6170212 () Bool)

(assert (=> b!5112407 m!6170212))

(assert (=> b!5112297 d!1652155))

(declare-fun d!1652157 () Bool)

(declare-fun e!3188551 () Bool)

(assert (=> d!1652157 e!3188551))

(declare-fun res!2176206 () Bool)

(assert (=> d!1652157 (=> (not res!2176206) (not e!3188551))))

(declare-fun lt!2105695 () List!59203)

(assert (=> d!1652157 (= res!2176206 (= (content!10498 lt!2105695) (set.union (content!10498 testedP!265) (content!10498 lt!2105618))))))

(declare-fun e!3188552 () List!59203)

(assert (=> d!1652157 (= lt!2105695 e!3188552)))

(declare-fun c!878312 () Bool)

(assert (=> d!1652157 (= c!878312 (is-Nil!59079 testedP!265))))

(assert (=> d!1652157 (= (++!12983 testedP!265 lt!2105618) lt!2105695)))

(declare-fun b!5112412 () Bool)

(declare-fun res!2176205 () Bool)

(assert (=> b!5112412 (=> (not res!2176205) (not e!3188551))))

(assert (=> b!5112412 (= res!2176205 (= (size!39464 lt!2105695) (+ (size!39464 testedP!265) (size!39464 lt!2105618))))))

(declare-fun b!5112410 () Bool)

(assert (=> b!5112410 (= e!3188552 lt!2105618)))

(declare-fun b!5112411 () Bool)

(assert (=> b!5112411 (= e!3188552 (Cons!59079 (h!65527 testedP!265) (++!12983 (t!372204 testedP!265) lt!2105618)))))

(declare-fun b!5112413 () Bool)

(assert (=> b!5112413 (= e!3188551 (or (not (= lt!2105618 Nil!59079)) (= lt!2105695 testedP!265)))))

(assert (= (and d!1652157 c!878312) b!5112410))

(assert (= (and d!1652157 (not c!878312)) b!5112411))

(assert (= (and d!1652157 res!2176206) b!5112412))

(assert (= (and b!5112412 res!2176205) b!5112413))

(declare-fun m!6170214 () Bool)

(assert (=> d!1652157 m!6170214))

(assert (=> d!1652157 m!6170204))

(declare-fun m!6170216 () Bool)

(assert (=> d!1652157 m!6170216))

(declare-fun m!6170218 () Bool)

(assert (=> b!5112412 m!6170218))

(assert (=> b!5112412 m!6170102))

(declare-fun m!6170220 () Bool)

(assert (=> b!5112412 m!6170220))

(declare-fun m!6170222 () Bool)

(assert (=> b!5112411 m!6170222))

(assert (=> b!5112306 d!1652157))

(declare-fun d!1652159 () Bool)

(declare-fun e!3188553 () Bool)

(assert (=> d!1652159 e!3188553))

(declare-fun res!2176208 () Bool)

(assert (=> d!1652159 (=> (not res!2176208) (not e!3188553))))

(declare-fun lt!2105696 () List!59203)

(assert (=> d!1652159 (= res!2176208 (= (content!10498 lt!2105696) (set.union (content!10498 lt!2105630) (content!10498 lt!2105616))))))

(declare-fun e!3188554 () List!59203)

(assert (=> d!1652159 (= lt!2105696 e!3188554)))

(declare-fun c!878313 () Bool)

(assert (=> d!1652159 (= c!878313 (is-Nil!59079 lt!2105630))))

(assert (=> d!1652159 (= (++!12983 lt!2105630 lt!2105616) lt!2105696)))

(declare-fun b!5112416 () Bool)

(declare-fun res!2176207 () Bool)

(assert (=> b!5112416 (=> (not res!2176207) (not e!3188553))))

(assert (=> b!5112416 (= res!2176207 (= (size!39464 lt!2105696) (+ (size!39464 lt!2105630) (size!39464 lt!2105616))))))

(declare-fun b!5112414 () Bool)

(assert (=> b!5112414 (= e!3188554 lt!2105616)))

(declare-fun b!5112415 () Bool)

(assert (=> b!5112415 (= e!3188554 (Cons!59079 (h!65527 lt!2105630) (++!12983 (t!372204 lt!2105630) lt!2105616)))))

(declare-fun b!5112417 () Bool)

(assert (=> b!5112417 (= e!3188553 (or (not (= lt!2105616 Nil!59079)) (= lt!2105696 lt!2105630)))))

(assert (= (and d!1652159 c!878313) b!5112414))

(assert (= (and d!1652159 (not c!878313)) b!5112415))

(assert (= (and d!1652159 res!2176208) b!5112416))

(assert (= (and b!5112416 res!2176207) b!5112417))

(declare-fun m!6170224 () Bool)

(assert (=> d!1652159 m!6170224))

(declare-fun m!6170226 () Bool)

(assert (=> d!1652159 m!6170226))

(declare-fun m!6170228 () Bool)

(assert (=> d!1652159 m!6170228))

(declare-fun m!6170230 () Bool)

(assert (=> b!5112416 m!6170230))

(declare-fun m!6170232 () Bool)

(assert (=> b!5112416 m!6170232))

(declare-fun m!6170234 () Bool)

(assert (=> b!5112416 m!6170234))

(declare-fun m!6170236 () Bool)

(assert (=> b!5112415 m!6170236))

(assert (=> b!5112306 d!1652159))

(declare-fun d!1652161 () Bool)

(assert (=> d!1652161 (= (++!12983 (++!12983 testedP!265 lt!2105630) lt!2105616) (++!12983 testedP!265 (++!12983 lt!2105630 lt!2105616)))))

(declare-fun lt!2105700 () Unit!150187)

(declare-fun choose!37487 (List!59203 List!59203 List!59203) Unit!150187)

(assert (=> d!1652161 (= lt!2105700 (choose!37487 testedP!265 lt!2105630 lt!2105616))))

(assert (=> d!1652161 (= (lemmaConcatAssociativity!2741 testedP!265 lt!2105630 lt!2105616) lt!2105700)))

(declare-fun bs!1192126 () Bool)

(assert (= bs!1192126 d!1652161))

(declare-fun m!6170248 () Bool)

(assert (=> bs!1192126 m!6170248))

(assert (=> bs!1192126 m!6170076))

(assert (=> bs!1192126 m!6170086))

(declare-fun m!6170250 () Bool)

(assert (=> bs!1192126 m!6170250))

(assert (=> bs!1192126 m!6170076))

(assert (=> bs!1192126 m!6170078))

(assert (=> bs!1192126 m!6170086))

(assert (=> b!5112306 d!1652161))

(declare-fun d!1652165 () Bool)

(declare-fun lt!2105701 () Int)

(assert (=> d!1652165 (>= lt!2105701 0)))

(declare-fun e!3188558 () Int)

(assert (=> d!1652165 (= lt!2105701 e!3188558)))

(declare-fun c!878314 () Bool)

(assert (=> d!1652165 (= c!878314 (is-Nil!59079 testedP!265))))

(assert (=> d!1652165 (= (size!39464 testedP!265) lt!2105701)))

(declare-fun b!5112422 () Bool)

(assert (=> b!5112422 (= e!3188558 0)))

(declare-fun b!5112423 () Bool)

(assert (=> b!5112423 (= e!3188558 (+ 1 (size!39464 (t!372204 testedP!265))))))

(assert (= (and d!1652165 c!878314) b!5112422))

(assert (= (and d!1652165 (not c!878314)) b!5112423))

(declare-fun m!6170252 () Bool)

(assert (=> b!5112423 m!6170252))

(assert (=> b!5112307 d!1652165))

(declare-fun d!1652167 () Bool)

(declare-fun lt!2105702 () Int)

(assert (=> d!1652167 (>= lt!2105702 0)))

(declare-fun e!3188559 () Int)

(assert (=> d!1652167 (= lt!2105702 e!3188559)))

(declare-fun c!878315 () Bool)

(assert (=> d!1652167 (= c!878315 (is-Nil!59079 knownP!20))))

(assert (=> d!1652167 (= (size!39464 knownP!20) lt!2105702)))

(declare-fun b!5112424 () Bool)

(assert (=> b!5112424 (= e!3188559 0)))

(declare-fun b!5112425 () Bool)

(assert (=> b!5112425 (= e!3188559 (+ 1 (size!39464 (t!372204 knownP!20))))))

(assert (= (and d!1652167 c!878315) b!5112424))

(assert (= (and d!1652167 (not c!878315)) b!5112425))

(declare-fun m!6170254 () Bool)

(assert (=> b!5112425 m!6170254))

(assert (=> b!5112307 d!1652167))

(declare-fun d!1652169 () Bool)

(declare-fun c!878318 () Bool)

(assert (=> d!1652169 (= c!878318 (is-Cons!59079 testedP!265))))

(declare-fun e!3188562 () (Set Context!7084))

(assert (=> d!1652169 (= (derivationZipper!57 baseZ!46 testedP!265) e!3188562)))

(declare-fun b!5112430 () Bool)

(assert (=> b!5112430 (= e!3188562 (derivationZipper!57 (derivationStepZipper!793 baseZ!46 (h!65527 testedP!265)) (t!372204 testedP!265)))))

(declare-fun b!5112431 () Bool)

(assert (=> b!5112431 (= e!3188562 baseZ!46)))

(assert (= (and d!1652169 c!878318) b!5112430))

(assert (= (and d!1652169 (not c!878318)) b!5112431))

(declare-fun m!6170256 () Bool)

(assert (=> b!5112430 m!6170256))

(assert (=> b!5112430 m!6170256))

(declare-fun m!6170258 () Bool)

(assert (=> b!5112430 m!6170258))

(assert (=> b!5112299 d!1652169))

(declare-fun d!1652171 () Bool)

(declare-fun e!3188563 () Bool)

(assert (=> d!1652171 e!3188563))

(declare-fun res!2176214 () Bool)

(assert (=> d!1652171 (=> (not res!2176214) (not e!3188563))))

(declare-fun lt!2105703 () List!59203)

(assert (=> d!1652171 (= res!2176214 (= (content!10498 lt!2105703) (set.union (content!10498 (++!12983 testedP!265 lt!2105630)) (content!10498 lt!2105616))))))

(declare-fun e!3188564 () List!59203)

(assert (=> d!1652171 (= lt!2105703 e!3188564)))

(declare-fun c!878319 () Bool)

(assert (=> d!1652171 (= c!878319 (is-Nil!59079 (++!12983 testedP!265 lt!2105630)))))

(assert (=> d!1652171 (= (++!12983 (++!12983 testedP!265 lt!2105630) lt!2105616) lt!2105703)))

(declare-fun b!5112434 () Bool)

(declare-fun res!2176213 () Bool)

(assert (=> b!5112434 (=> (not res!2176213) (not e!3188563))))

(assert (=> b!5112434 (= res!2176213 (= (size!39464 lt!2105703) (+ (size!39464 (++!12983 testedP!265 lt!2105630)) (size!39464 lt!2105616))))))

(declare-fun b!5112432 () Bool)

(assert (=> b!5112432 (= e!3188564 lt!2105616)))

(declare-fun b!5112433 () Bool)

(assert (=> b!5112433 (= e!3188564 (Cons!59079 (h!65527 (++!12983 testedP!265 lt!2105630)) (++!12983 (t!372204 (++!12983 testedP!265 lt!2105630)) lt!2105616)))))

(declare-fun b!5112435 () Bool)

(assert (=> b!5112435 (= e!3188563 (or (not (= lt!2105616 Nil!59079)) (= lt!2105703 (++!12983 testedP!265 lt!2105630))))))

(assert (= (and d!1652171 c!878319) b!5112432))

(assert (= (and d!1652171 (not c!878319)) b!5112433))

(assert (= (and d!1652171 res!2176214) b!5112434))

(assert (= (and b!5112434 res!2176213) b!5112435))

(declare-fun m!6170260 () Bool)

(assert (=> d!1652171 m!6170260))

(assert (=> d!1652171 m!6170076))

(declare-fun m!6170262 () Bool)

(assert (=> d!1652171 m!6170262))

(assert (=> d!1652171 m!6170228))

(declare-fun m!6170264 () Bool)

(assert (=> b!5112434 m!6170264))

(assert (=> b!5112434 m!6170076))

(declare-fun m!6170266 () Bool)

(assert (=> b!5112434 m!6170266))

(assert (=> b!5112434 m!6170234))

(declare-fun m!6170268 () Bool)

(assert (=> b!5112433 m!6170268))

(assert (=> b!5112308 d!1652171))

(declare-fun d!1652173 () Bool)

(declare-fun e!3188565 () Bool)

(assert (=> d!1652173 e!3188565))

(declare-fun res!2176216 () Bool)

(assert (=> d!1652173 (=> (not res!2176216) (not e!3188565))))

(declare-fun lt!2105704 () List!59203)

(assert (=> d!1652173 (= res!2176216 (= (content!10498 lt!2105704) (set.union (content!10498 testedP!265) (content!10498 lt!2105630))))))

(declare-fun e!3188566 () List!59203)

(assert (=> d!1652173 (= lt!2105704 e!3188566)))

(declare-fun c!878320 () Bool)

(assert (=> d!1652173 (= c!878320 (is-Nil!59079 testedP!265))))

(assert (=> d!1652173 (= (++!12983 testedP!265 lt!2105630) lt!2105704)))

(declare-fun b!5112438 () Bool)

(declare-fun res!2176215 () Bool)

(assert (=> b!5112438 (=> (not res!2176215) (not e!3188565))))

(assert (=> b!5112438 (= res!2176215 (= (size!39464 lt!2105704) (+ (size!39464 testedP!265) (size!39464 lt!2105630))))))

(declare-fun b!5112436 () Bool)

(assert (=> b!5112436 (= e!3188566 lt!2105630)))

(declare-fun b!5112437 () Bool)

(assert (=> b!5112437 (= e!3188566 (Cons!59079 (h!65527 testedP!265) (++!12983 (t!372204 testedP!265) lt!2105630)))))

(declare-fun b!5112439 () Bool)

(assert (=> b!5112439 (= e!3188565 (or (not (= lt!2105630 Nil!59079)) (= lt!2105704 testedP!265)))))

(assert (= (and d!1652173 c!878320) b!5112436))

(assert (= (and d!1652173 (not c!878320)) b!5112437))

(assert (= (and d!1652173 res!2176216) b!5112438))

(assert (= (and b!5112438 res!2176215) b!5112439))

(declare-fun m!6170270 () Bool)

(assert (=> d!1652173 m!6170270))

(assert (=> d!1652173 m!6170204))

(assert (=> d!1652173 m!6170226))

(declare-fun m!6170272 () Bool)

(assert (=> b!5112438 m!6170272))

(assert (=> b!5112438 m!6170102))

(assert (=> b!5112438 m!6170232))

(declare-fun m!6170274 () Bool)

(assert (=> b!5112437 m!6170274))

(assert (=> b!5112308 d!1652173))

(declare-fun d!1652175 () Bool)

(declare-fun lambda!250485 () Int)

(declare-fun forall!13545 (List!59204 Int) Bool)

(assert (=> d!1652175 (= (inv!78577 setElem!29856) (forall!13545 (exprs!4042 setElem!29856) lambda!250485))))

(declare-fun bs!1192127 () Bool)

(assert (= bs!1192127 d!1652175))

(declare-fun m!6170276 () Bool)

(assert (=> bs!1192127 m!6170276))

(assert (=> setNonEmpty!29855 d!1652175))

(declare-fun b!5112451 () Bool)

(declare-fun e!3188573 () Bool)

(assert (=> b!5112451 (= e!3188573 (>= (size!39464 input!5745) (size!39464 knownP!20)))))

(declare-fun b!5112450 () Bool)

(declare-fun e!3188575 () Bool)

(declare-fun tail!10027 (List!59203) List!59203)

(assert (=> b!5112450 (= e!3188575 (isPrefix!5563 (tail!10027 knownP!20) (tail!10027 input!5745)))))

(declare-fun d!1652177 () Bool)

(assert (=> d!1652177 e!3188573))

(declare-fun res!2176225 () Bool)

(assert (=> d!1652177 (=> res!2176225 e!3188573)))

(declare-fun lt!2105707 () Bool)

(assert (=> d!1652177 (= res!2176225 (not lt!2105707))))

(declare-fun e!3188574 () Bool)

(assert (=> d!1652177 (= lt!2105707 e!3188574)))

(declare-fun res!2176227 () Bool)

(assert (=> d!1652177 (=> res!2176227 e!3188574)))

(assert (=> d!1652177 (= res!2176227 (is-Nil!59079 knownP!20))))

(assert (=> d!1652177 (= (isPrefix!5563 knownP!20 input!5745) lt!2105707)))

(declare-fun b!5112449 () Bool)

(declare-fun res!2176226 () Bool)

(assert (=> b!5112449 (=> (not res!2176226) (not e!3188575))))

(assert (=> b!5112449 (= res!2176226 (= (head!10886 knownP!20) (head!10886 input!5745)))))

(declare-fun b!5112448 () Bool)

(assert (=> b!5112448 (= e!3188574 e!3188575)))

(declare-fun res!2176228 () Bool)

(assert (=> b!5112448 (=> (not res!2176228) (not e!3188575))))

(assert (=> b!5112448 (= res!2176228 (not (is-Nil!59079 input!5745)))))

(assert (= (and d!1652177 (not res!2176227)) b!5112448))

(assert (= (and b!5112448 res!2176228) b!5112449))

(assert (= (and b!5112449 res!2176226) b!5112450))

(assert (= (and d!1652177 (not res!2176225)) b!5112451))

(assert (=> b!5112451 m!6170064))

(assert (=> b!5112451 m!6170104))

(declare-fun m!6170278 () Bool)

(assert (=> b!5112450 m!6170278))

(declare-fun m!6170280 () Bool)

(assert (=> b!5112450 m!6170280))

(assert (=> b!5112450 m!6170278))

(assert (=> b!5112450 m!6170280))

(declare-fun m!6170282 () Bool)

(assert (=> b!5112450 m!6170282))

(declare-fun m!6170284 () Bool)

(assert (=> b!5112449 m!6170284))

(declare-fun m!6170286 () Bool)

(assert (=> b!5112449 m!6170286))

(assert (=> b!5112309 d!1652177))

(declare-fun bs!1192128 () Bool)

(declare-fun d!1652179 () Bool)

(assert (= bs!1192128 (and d!1652179 d!1652175)))

(declare-fun lambda!250486 () Int)

(assert (=> bs!1192128 (= lambda!250486 lambda!250485)))

(assert (=> d!1652179 (= (inv!78577 setElem!29855) (forall!13545 (exprs!4042 setElem!29855) lambda!250486))))

(declare-fun bs!1192129 () Bool)

(assert (= bs!1192129 d!1652179))

(declare-fun m!6170288 () Bool)

(assert (=> bs!1192129 m!6170288))

(assert (=> setNonEmpty!29856 d!1652179))

(declare-fun bs!1192130 () Bool)

(declare-fun b!5112456 () Bool)

(declare-fun d!1652181 () Bool)

(assert (= bs!1192130 (and b!5112456 d!1652181)))

(declare-fun lambda!250500 () Int)

(declare-fun lambda!250499 () Int)

(assert (=> bs!1192130 (not (= lambda!250500 lambda!250499))))

(declare-fun bs!1192131 () Bool)

(declare-fun b!5112457 () Bool)

(assert (= bs!1192131 (and b!5112457 d!1652181)))

(declare-fun lambda!250501 () Int)

(assert (=> bs!1192131 (not (= lambda!250501 lambda!250499))))

(declare-fun bs!1192132 () Bool)

(assert (= bs!1192132 (and b!5112457 b!5112456)))

(assert (=> bs!1192132 (= lambda!250501 lambda!250500)))

(declare-fun e!3188582 () Unit!150187)

(declare-fun Unit!150191 () Unit!150187)

(assert (=> b!5112457 (= e!3188582 Unit!150191)))

(declare-datatypes ((List!59207 0))(
  ( (Nil!59083) (Cons!59083 (h!65531 Context!7084) (t!372208 List!59207)) )
))
(declare-fun lt!2105724 () List!59207)

(declare-fun call!356418 () List!59207)

(assert (=> b!5112457 (= lt!2105724 call!356418)))

(declare-fun lt!2105725 () Unit!150187)

(declare-fun lemmaForallThenNotExists!288 (List!59207 Int) Unit!150187)

(assert (=> b!5112457 (= lt!2105725 (lemmaForallThenNotExists!288 lt!2105724 lambda!250499))))

(declare-fun call!356419 () Bool)

(assert (=> b!5112457 (not call!356419)))

(declare-fun lt!2105730 () Unit!150187)

(assert (=> b!5112457 (= lt!2105730 lt!2105725)))

(declare-fun c!878331 () Bool)

(declare-fun bm!356414 () Bool)

(declare-fun lt!2105727 () List!59207)

(declare-fun exists!1442 (List!59207 Int) Bool)

(assert (=> bm!356414 (= call!356419 (exists!1442 (ite c!878331 lt!2105727 lt!2105724) (ite c!878331 lambda!250500 lambda!250501)))))

(declare-fun bm!356413 () Bool)

(declare-fun toList!8231 ((Set Context!7084)) List!59207)

(assert (=> bm!356413 (= call!356418 (toList!8231 z!4463))))

(declare-fun Unit!150192 () Unit!150187)

(assert (=> b!5112456 (= e!3188582 Unit!150192)))

(assert (=> b!5112456 (= lt!2105727 call!356418)))

(declare-fun lt!2105726 () Unit!150187)

(declare-fun lemmaNotForallThenExists!305 (List!59207 Int) Unit!150187)

(assert (=> b!5112456 (= lt!2105726 (lemmaNotForallThenExists!305 lt!2105727 lambda!250499))))

(assert (=> b!5112456 call!356419))

(declare-fun lt!2105729 () Unit!150187)

(assert (=> b!5112456 (= lt!2105729 lt!2105726)))

(declare-fun lt!2105731 () Bool)

(declare-datatypes ((Option!14665 0))(
  ( (None!14664) (Some!14664 (v!50677 List!59203)) )
))
(declare-fun isEmpty!31870 (Option!14665) Bool)

(declare-fun getLanguageWitness!782 ((Set Context!7084)) Option!14665)

(assert (=> d!1652181 (= lt!2105731 (isEmpty!31870 (getLanguageWitness!782 z!4463)))))

(declare-fun forall!13546 ((Set Context!7084) Int) Bool)

(assert (=> d!1652181 (= lt!2105731 (forall!13546 z!4463 lambda!250499))))

(declare-fun lt!2105728 () Unit!150187)

(assert (=> d!1652181 (= lt!2105728 e!3188582)))

(assert (=> d!1652181 (= c!878331 (not (forall!13546 z!4463 lambda!250499)))))

(assert (=> d!1652181 (= (lostCauseZipper!1044 z!4463) lt!2105731)))

(assert (= (and d!1652181 c!878331) b!5112456))

(assert (= (and d!1652181 (not c!878331)) b!5112457))

(assert (= (or b!5112456 b!5112457) bm!356413))

(assert (= (or b!5112456 b!5112457) bm!356414))

(declare-fun m!6170290 () Bool)

(assert (=> d!1652181 m!6170290))

(assert (=> d!1652181 m!6170290))

(declare-fun m!6170292 () Bool)

(assert (=> d!1652181 m!6170292))

(declare-fun m!6170294 () Bool)

(assert (=> d!1652181 m!6170294))

(assert (=> d!1652181 m!6170294))

(declare-fun m!6170296 () Bool)

(assert (=> b!5112457 m!6170296))

(declare-fun m!6170298 () Bool)

(assert (=> b!5112456 m!6170298))

(declare-fun m!6170300 () Bool)

(assert (=> bm!356414 m!6170300))

(declare-fun m!6170302 () Bool)

(assert (=> bm!356413 m!6170302))

(assert (=> b!5112310 d!1652181))

(declare-fun d!1652183 () Bool)

(assert (=> d!1652183 (= lt!2105618 lt!2105620)))

(declare-fun lt!2105734 () Unit!150187)

(declare-fun choose!37488 (List!59203 List!59203 List!59203 List!59203 List!59203) Unit!150187)

(assert (=> d!1652183 (= lt!2105734 (choose!37488 testedP!265 lt!2105618 testedP!265 lt!2105620 input!5745))))

(assert (=> d!1652183 (isPrefix!5563 testedP!265 input!5745)))

(assert (=> d!1652183 (= (lemmaSamePrefixThenSameSuffix!2609 testedP!265 lt!2105618 testedP!265 lt!2105620 input!5745) lt!2105734)))

(declare-fun bs!1192133 () Bool)

(assert (= bs!1192133 d!1652183))

(declare-fun m!6170304 () Bool)

(assert (=> bs!1192133 m!6170304))

(assert (=> bs!1192133 m!6170100))

(assert (=> b!5112301 d!1652183))

(declare-fun d!1652185 () Bool)

(assert (=> d!1652185 (= (head!10886 lt!2105620) (h!65527 lt!2105620))))

(assert (=> b!5112303 d!1652185))

(declare-fun d!1652187 () Bool)

(declare-fun lt!2105737 () List!59203)

(assert (=> d!1652187 (= (++!12983 lt!2105622 lt!2105737) knownP!20)))

(declare-fun e!3188585 () List!59203)

(assert (=> d!1652187 (= lt!2105737 e!3188585)))

(declare-fun c!878334 () Bool)

(assert (=> d!1652187 (= c!878334 (is-Cons!59079 lt!2105622))))

(assert (=> d!1652187 (>= (size!39464 knownP!20) (size!39464 lt!2105622))))

(assert (=> d!1652187 (= (getSuffix!3237 knownP!20 lt!2105622) lt!2105737)))

(declare-fun b!5112462 () Bool)

(assert (=> b!5112462 (= e!3188585 (getSuffix!3237 (tail!10027 knownP!20) (t!372204 lt!2105622)))))

(declare-fun b!5112463 () Bool)

(assert (=> b!5112463 (= e!3188585 knownP!20)))

(assert (= (and d!1652187 c!878334) b!5112462))

(assert (= (and d!1652187 (not c!878334)) b!5112463))

(declare-fun m!6170306 () Bool)

(assert (=> d!1652187 m!6170306))

(assert (=> d!1652187 m!6170104))

(declare-fun m!6170308 () Bool)

(assert (=> d!1652187 m!6170308))

(assert (=> b!5112462 m!6170278))

(assert (=> b!5112462 m!6170278))

(declare-fun m!6170310 () Bool)

(assert (=> b!5112462 m!6170310))

(assert (=> b!5112303 d!1652187))

(declare-fun b!5112467 () Bool)

(declare-fun e!3188586 () Bool)

(assert (=> b!5112467 (= e!3188586 (>= (size!39464 knownP!20) (size!39464 lt!2105622)))))

(declare-fun b!5112466 () Bool)

(declare-fun e!3188588 () Bool)

(assert (=> b!5112466 (= e!3188588 (isPrefix!5563 (tail!10027 lt!2105622) (tail!10027 knownP!20)))))

(declare-fun d!1652189 () Bool)

(assert (=> d!1652189 e!3188586))

(declare-fun res!2176229 () Bool)

(assert (=> d!1652189 (=> res!2176229 e!3188586)))

(declare-fun lt!2105738 () Bool)

(assert (=> d!1652189 (= res!2176229 (not lt!2105738))))

(declare-fun e!3188587 () Bool)

(assert (=> d!1652189 (= lt!2105738 e!3188587)))

(declare-fun res!2176231 () Bool)

(assert (=> d!1652189 (=> res!2176231 e!3188587)))

(assert (=> d!1652189 (= res!2176231 (is-Nil!59079 lt!2105622))))

(assert (=> d!1652189 (= (isPrefix!5563 lt!2105622 knownP!20) lt!2105738)))

(declare-fun b!5112465 () Bool)

(declare-fun res!2176230 () Bool)

(assert (=> b!5112465 (=> (not res!2176230) (not e!3188588))))

(assert (=> b!5112465 (= res!2176230 (= (head!10886 lt!2105622) (head!10886 knownP!20)))))

(declare-fun b!5112464 () Bool)

(assert (=> b!5112464 (= e!3188587 e!3188588)))

(declare-fun res!2176232 () Bool)

(assert (=> b!5112464 (=> (not res!2176232) (not e!3188588))))

(assert (=> b!5112464 (= res!2176232 (not (is-Nil!59079 knownP!20)))))

(assert (= (and d!1652189 (not res!2176231)) b!5112464))

(assert (= (and b!5112464 res!2176232) b!5112465))

(assert (= (and b!5112465 res!2176230) b!5112466))

(assert (= (and d!1652189 (not res!2176229)) b!5112467))

(assert (=> b!5112467 m!6170104))

(assert (=> b!5112467 m!6170308))

(declare-fun m!6170312 () Bool)

(assert (=> b!5112466 m!6170312))

(assert (=> b!5112466 m!6170278))

(assert (=> b!5112466 m!6170312))

(assert (=> b!5112466 m!6170278))

(declare-fun m!6170314 () Bool)

(assert (=> b!5112466 m!6170314))

(declare-fun m!6170316 () Bool)

(assert (=> b!5112465 m!6170316))

(assert (=> b!5112465 m!6170284))

(assert (=> b!5112303 d!1652189))

(declare-fun d!1652191 () Bool)

(declare-fun c!878335 () Bool)

(assert (=> d!1652191 (= c!878335 (is-Cons!59079 lt!2105622))))

(declare-fun e!3188589 () (Set Context!7084))

(assert (=> d!1652191 (= (derivationZipper!57 baseZ!46 lt!2105622) e!3188589)))

(declare-fun b!5112468 () Bool)

(assert (=> b!5112468 (= e!3188589 (derivationZipper!57 (derivationStepZipper!793 baseZ!46 (h!65527 lt!2105622)) (t!372204 lt!2105622)))))

(declare-fun b!5112469 () Bool)

(assert (=> b!5112469 (= e!3188589 baseZ!46)))

(assert (= (and d!1652191 c!878335) b!5112468))

(assert (= (and d!1652191 (not c!878335)) b!5112469))

(declare-fun m!6170318 () Bool)

(assert (=> b!5112468 m!6170318))

(assert (=> b!5112468 m!6170318))

(declare-fun m!6170320 () Bool)

(assert (=> b!5112468 m!6170320))

(assert (=> b!5112303 d!1652191))

(declare-fun d!1652193 () Bool)

(assert (=> d!1652193 (isPrefix!5563 (++!12983 testedP!265 (Cons!59079 (head!10886 (getSuffix!3237 input!5745 testedP!265)) Nil!59079)) input!5745)))

(declare-fun lt!2105741 () Unit!150187)

(declare-fun choose!37489 (List!59203 List!59203) Unit!150187)

(assert (=> d!1652193 (= lt!2105741 (choose!37489 testedP!265 input!5745))))

(assert (=> d!1652193 (isPrefix!5563 testedP!265 input!5745)))

(assert (=> d!1652193 (= (lemmaAddHeadSuffixToPrefixStillPrefix!953 testedP!265 input!5745) lt!2105741)))

(declare-fun bs!1192134 () Bool)

(assert (= bs!1192134 d!1652193))

(declare-fun m!6170322 () Bool)

(assert (=> bs!1192134 m!6170322))

(declare-fun m!6170324 () Bool)

(assert (=> bs!1192134 m!6170324))

(assert (=> bs!1192134 m!6170038))

(declare-fun m!6170326 () Bool)

(assert (=> bs!1192134 m!6170326))

(assert (=> bs!1192134 m!6170038))

(assert (=> bs!1192134 m!6170322))

(declare-fun m!6170328 () Bool)

(assert (=> bs!1192134 m!6170328))

(assert (=> bs!1192134 m!6170100))

(assert (=> b!5112303 d!1652193))

(declare-fun d!1652195 () Bool)

(declare-fun lt!2105742 () List!59203)

(assert (=> d!1652195 (= (++!12983 knownP!20 lt!2105742) input!5745)))

(declare-fun e!3188590 () List!59203)

(assert (=> d!1652195 (= lt!2105742 e!3188590)))

(declare-fun c!878336 () Bool)

(assert (=> d!1652195 (= c!878336 (is-Cons!59079 knownP!20))))

(assert (=> d!1652195 (>= (size!39464 input!5745) (size!39464 knownP!20))))

(assert (=> d!1652195 (= (getSuffix!3237 input!5745 knownP!20) lt!2105742)))

(declare-fun b!5112470 () Bool)

(assert (=> b!5112470 (= e!3188590 (getSuffix!3237 (tail!10027 input!5745) (t!372204 knownP!20)))))

(declare-fun b!5112471 () Bool)

(assert (=> b!5112471 (= e!3188590 input!5745)))

(assert (= (and d!1652195 c!878336) b!5112470))

(assert (= (and d!1652195 (not c!878336)) b!5112471))

(declare-fun m!6170330 () Bool)

(assert (=> d!1652195 m!6170330))

(assert (=> d!1652195 m!6170064))

(assert (=> d!1652195 m!6170104))

(assert (=> b!5112470 m!6170280))

(assert (=> b!5112470 m!6170280))

(declare-fun m!6170332 () Bool)

(assert (=> b!5112470 m!6170332))

(assert (=> b!5112303 d!1652195))

(declare-fun d!1652197 () Bool)

(assert (=> d!1652197 (isPrefix!5563 lt!2105622 knownP!20)))

(declare-fun lt!2105745 () Unit!150187)

(declare-fun choose!37490 (List!59203 List!59203 List!59203) Unit!150187)

(assert (=> d!1652197 (= lt!2105745 (choose!37490 knownP!20 lt!2105622 input!5745))))

(assert (=> d!1652197 (isPrefix!5563 knownP!20 input!5745)))

(assert (=> d!1652197 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!700 knownP!20 lt!2105622 input!5745) lt!2105745)))

(declare-fun bs!1192135 () Bool)

(assert (= bs!1192135 d!1652197))

(assert (=> bs!1192135 m!6170048))

(declare-fun m!6170334 () Bool)

(assert (=> bs!1192135 m!6170334))

(assert (=> bs!1192135 m!6170098))

(assert (=> b!5112303 d!1652197))

(declare-fun d!1652199 () Bool)

(declare-fun lt!2105746 () List!59203)

(assert (=> d!1652199 (= (++!12983 testedP!265 lt!2105746) input!5745)))

(declare-fun e!3188591 () List!59203)

(assert (=> d!1652199 (= lt!2105746 e!3188591)))

(declare-fun c!878337 () Bool)

(assert (=> d!1652199 (= c!878337 (is-Cons!59079 testedP!265))))

(assert (=> d!1652199 (>= (size!39464 input!5745) (size!39464 testedP!265))))

(assert (=> d!1652199 (= (getSuffix!3237 input!5745 testedP!265) lt!2105746)))

(declare-fun b!5112472 () Bool)

(assert (=> b!5112472 (= e!3188591 (getSuffix!3237 (tail!10027 input!5745) (t!372204 testedP!265)))))

(declare-fun b!5112473 () Bool)

(assert (=> b!5112473 (= e!3188591 input!5745)))

(assert (= (and d!1652199 c!878337) b!5112472))

(assert (= (and d!1652199 (not c!878337)) b!5112473))

(declare-fun m!6170336 () Bool)

(assert (=> d!1652199 m!6170336))

(assert (=> d!1652199 m!6170064))

(assert (=> d!1652199 m!6170102))

(assert (=> b!5112472 m!6170280))

(assert (=> b!5112472 m!6170280))

(declare-fun m!6170338 () Bool)

(assert (=> b!5112472 m!6170338))

(assert (=> b!5112303 d!1652199))

(declare-fun b!5112477 () Bool)

(declare-fun e!3188592 () Bool)

(assert (=> b!5112477 (= e!3188592 (>= (size!39464 input!5745) (size!39464 lt!2105622)))))

(declare-fun b!5112476 () Bool)

(declare-fun e!3188594 () Bool)

(assert (=> b!5112476 (= e!3188594 (isPrefix!5563 (tail!10027 lt!2105622) (tail!10027 input!5745)))))

(declare-fun d!1652201 () Bool)

(assert (=> d!1652201 e!3188592))

(declare-fun res!2176233 () Bool)

(assert (=> d!1652201 (=> res!2176233 e!3188592)))

(declare-fun lt!2105747 () Bool)

(assert (=> d!1652201 (= res!2176233 (not lt!2105747))))

(declare-fun e!3188593 () Bool)

(assert (=> d!1652201 (= lt!2105747 e!3188593)))

(declare-fun res!2176235 () Bool)

(assert (=> d!1652201 (=> res!2176235 e!3188593)))

(assert (=> d!1652201 (= res!2176235 (is-Nil!59079 lt!2105622))))

(assert (=> d!1652201 (= (isPrefix!5563 lt!2105622 input!5745) lt!2105747)))

(declare-fun b!5112475 () Bool)

(declare-fun res!2176234 () Bool)

(assert (=> b!5112475 (=> (not res!2176234) (not e!3188594))))

(assert (=> b!5112475 (= res!2176234 (= (head!10886 lt!2105622) (head!10886 input!5745)))))

(declare-fun b!5112474 () Bool)

(assert (=> b!5112474 (= e!3188593 e!3188594)))

(declare-fun res!2176236 () Bool)

(assert (=> b!5112474 (=> (not res!2176236) (not e!3188594))))

(assert (=> b!5112474 (= res!2176236 (not (is-Nil!59079 input!5745)))))

(assert (= (and d!1652201 (not res!2176235)) b!5112474))

(assert (= (and b!5112474 res!2176236) b!5112475))

(assert (= (and b!5112475 res!2176234) b!5112476))

(assert (= (and d!1652201 (not res!2176233)) b!5112477))

(assert (=> b!5112477 m!6170064))

(assert (=> b!5112477 m!6170308))

(assert (=> b!5112476 m!6170312))

(assert (=> b!5112476 m!6170280))

(assert (=> b!5112476 m!6170312))

(assert (=> b!5112476 m!6170280))

(declare-fun m!6170340 () Bool)

(assert (=> b!5112476 m!6170340))

(assert (=> b!5112475 m!6170316))

(assert (=> b!5112475 m!6170286))

(assert (=> b!5112303 d!1652201))

(declare-fun d!1652203 () Bool)

(assert (=> d!1652203 true))

(declare-fun lambda!250504 () Int)

(declare-fun flatMap!329 ((Set Context!7084) Int) (Set Context!7084))

(assert (=> d!1652203 (= (derivationStepZipper!793 z!4463 lt!2105629) (flatMap!329 z!4463 lambda!250504))))

(declare-fun bs!1192136 () Bool)

(assert (= bs!1192136 d!1652203))

(declare-fun m!6170342 () Bool)

(assert (=> bs!1192136 m!6170342))

(assert (=> b!5112303 d!1652203))

(declare-fun d!1652205 () Bool)

(declare-fun e!3188595 () Bool)

(assert (=> d!1652205 e!3188595))

(declare-fun res!2176238 () Bool)

(assert (=> d!1652205 (=> (not res!2176238) (not e!3188595))))

(declare-fun lt!2105748 () List!59203)

(assert (=> d!1652205 (= res!2176238 (= (content!10498 lt!2105748) (set.union (content!10498 knownP!20) (content!10498 lt!2105616))))))

(declare-fun e!3188596 () List!59203)

(assert (=> d!1652205 (= lt!2105748 e!3188596)))

(declare-fun c!878340 () Bool)

(assert (=> d!1652205 (= c!878340 (is-Nil!59079 knownP!20))))

(assert (=> d!1652205 (= (++!12983 knownP!20 lt!2105616) lt!2105748)))

(declare-fun b!5112482 () Bool)

(declare-fun res!2176237 () Bool)

(assert (=> b!5112482 (=> (not res!2176237) (not e!3188595))))

(assert (=> b!5112482 (= res!2176237 (= (size!39464 lt!2105748) (+ (size!39464 knownP!20) (size!39464 lt!2105616))))))

(declare-fun b!5112480 () Bool)

(assert (=> b!5112480 (= e!3188596 lt!2105616)))

(declare-fun b!5112481 () Bool)

(assert (=> b!5112481 (= e!3188596 (Cons!59079 (h!65527 knownP!20) (++!12983 (t!372204 knownP!20) lt!2105616)))))

(declare-fun b!5112483 () Bool)

(assert (=> b!5112483 (= e!3188595 (or (not (= lt!2105616 Nil!59079)) (= lt!2105748 knownP!20)))))

(assert (= (and d!1652205 c!878340) b!5112480))

(assert (= (and d!1652205 (not c!878340)) b!5112481))

(assert (= (and d!1652205 res!2176238) b!5112482))

(assert (= (and b!5112482 res!2176237) b!5112483))

(declare-fun m!6170344 () Bool)

(assert (=> d!1652205 m!6170344))

(declare-fun m!6170346 () Bool)

(assert (=> d!1652205 m!6170346))

(assert (=> d!1652205 m!6170228))

(declare-fun m!6170348 () Bool)

(assert (=> b!5112482 m!6170348))

(assert (=> b!5112482 m!6170104))

(assert (=> b!5112482 m!6170234))

(declare-fun m!6170350 () Bool)

(assert (=> b!5112481 m!6170350))

(assert (=> b!5112303 d!1652205))

(declare-fun d!1652207 () Bool)

(assert (=> d!1652207 (= (derivationZipper!57 baseZ!46 (++!12983 testedP!265 (Cons!59079 lt!2105629 Nil!59079))) (derivationStepZipper!793 z!4463 lt!2105629))))

(declare-fun lt!2105751 () Unit!150187)

(declare-fun choose!37491 ((Set Context!7084) (Set Context!7084) List!59203 C!28582) Unit!150187)

(assert (=> d!1652207 (= lt!2105751 (choose!37491 baseZ!46 z!4463 testedP!265 lt!2105629))))

(assert (=> d!1652207 (= (derivationZipper!57 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1652207 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!18 baseZ!46 z!4463 testedP!265 lt!2105629) lt!2105751)))

(declare-fun bs!1192137 () Bool)

(assert (= bs!1192137 d!1652207))

(assert (=> bs!1192137 m!6170074))

(assert (=> bs!1192137 m!6170042))

(declare-fun m!6170352 () Bool)

(assert (=> bs!1192137 m!6170352))

(assert (=> bs!1192137 m!6170058))

(assert (=> bs!1192137 m!6170042))

(declare-fun m!6170354 () Bool)

(assert (=> bs!1192137 m!6170354))

(assert (=> b!5112303 d!1652207))

(declare-fun d!1652209 () Bool)

(declare-fun e!3188597 () Bool)

(assert (=> d!1652209 e!3188597))

(declare-fun res!2176240 () Bool)

(assert (=> d!1652209 (=> (not res!2176240) (not e!3188597))))

(declare-fun lt!2105752 () List!59203)

(assert (=> d!1652209 (= res!2176240 (= (content!10498 lt!2105752) (set.union (content!10498 testedP!265) (content!10498 (Cons!59079 lt!2105629 Nil!59079)))))))

(declare-fun e!3188598 () List!59203)

(assert (=> d!1652209 (= lt!2105752 e!3188598)))

(declare-fun c!878342 () Bool)

(assert (=> d!1652209 (= c!878342 (is-Nil!59079 testedP!265))))

(assert (=> d!1652209 (= (++!12983 testedP!265 (Cons!59079 lt!2105629 Nil!59079)) lt!2105752)))

(declare-fun b!5112486 () Bool)

(declare-fun res!2176239 () Bool)

(assert (=> b!5112486 (=> (not res!2176239) (not e!3188597))))

(assert (=> b!5112486 (= res!2176239 (= (size!39464 lt!2105752) (+ (size!39464 testedP!265) (size!39464 (Cons!59079 lt!2105629 Nil!59079)))))))

(declare-fun b!5112484 () Bool)

(assert (=> b!5112484 (= e!3188598 (Cons!59079 lt!2105629 Nil!59079))))

(declare-fun b!5112485 () Bool)

(assert (=> b!5112485 (= e!3188598 (Cons!59079 (h!65527 testedP!265) (++!12983 (t!372204 testedP!265) (Cons!59079 lt!2105629 Nil!59079))))))

(declare-fun b!5112487 () Bool)

(assert (=> b!5112487 (= e!3188597 (or (not (= (Cons!59079 lt!2105629 Nil!59079) Nil!59079)) (= lt!2105752 testedP!265)))))

(assert (= (and d!1652209 c!878342) b!5112484))

(assert (= (and d!1652209 (not c!878342)) b!5112485))

(assert (= (and d!1652209 res!2176240) b!5112486))

(assert (= (and b!5112486 res!2176239) b!5112487))

(declare-fun m!6170356 () Bool)

(assert (=> d!1652209 m!6170356))

(assert (=> d!1652209 m!6170204))

(declare-fun m!6170358 () Bool)

(assert (=> d!1652209 m!6170358))

(declare-fun m!6170360 () Bool)

(assert (=> b!5112486 m!6170360))

(assert (=> b!5112486 m!6170102))

(declare-fun m!6170362 () Bool)

(assert (=> b!5112486 m!6170362))

(declare-fun m!6170364 () Bool)

(assert (=> b!5112485 m!6170364))

(assert (=> b!5112303 d!1652209))

(declare-fun b!5112491 () Bool)

(declare-fun e!3188599 () Bool)

(assert (=> b!5112491 (= e!3188599 (>= (size!39464 input!5745) (size!39464 testedP!265)))))

(declare-fun b!5112490 () Bool)

(declare-fun e!3188601 () Bool)

(assert (=> b!5112490 (= e!3188601 (isPrefix!5563 (tail!10027 testedP!265) (tail!10027 input!5745)))))

(declare-fun d!1652211 () Bool)

(assert (=> d!1652211 e!3188599))

(declare-fun res!2176241 () Bool)

(assert (=> d!1652211 (=> res!2176241 e!3188599)))

(declare-fun lt!2105753 () Bool)

(assert (=> d!1652211 (= res!2176241 (not lt!2105753))))

(declare-fun e!3188600 () Bool)

(assert (=> d!1652211 (= lt!2105753 e!3188600)))

(declare-fun res!2176243 () Bool)

(assert (=> d!1652211 (=> res!2176243 e!3188600)))

(assert (=> d!1652211 (= res!2176243 (is-Nil!59079 testedP!265))))

(assert (=> d!1652211 (= (isPrefix!5563 testedP!265 input!5745) lt!2105753)))

(declare-fun b!5112489 () Bool)

(declare-fun res!2176242 () Bool)

(assert (=> b!5112489 (=> (not res!2176242) (not e!3188601))))

(assert (=> b!5112489 (= res!2176242 (= (head!10886 testedP!265) (head!10886 input!5745)))))

(declare-fun b!5112488 () Bool)

(assert (=> b!5112488 (= e!3188600 e!3188601)))

(declare-fun res!2176244 () Bool)

(assert (=> b!5112488 (=> (not res!2176244) (not e!3188601))))

(assert (=> b!5112488 (= res!2176244 (not (is-Nil!59079 input!5745)))))

(assert (= (and d!1652211 (not res!2176243)) b!5112488))

(assert (= (and b!5112488 res!2176244) b!5112489))

(assert (= (and b!5112489 res!2176242) b!5112490))

(assert (= (and d!1652211 (not res!2176241)) b!5112491))

(assert (=> b!5112491 m!6170064))

(assert (=> b!5112491 m!6170102))

(declare-fun m!6170366 () Bool)

(assert (=> b!5112490 m!6170366))

(assert (=> b!5112490 m!6170280))

(assert (=> b!5112490 m!6170366))

(assert (=> b!5112490 m!6170280))

(declare-fun m!6170368 () Bool)

(assert (=> b!5112490 m!6170368))

(declare-fun m!6170370 () Bool)

(assert (=> b!5112489 m!6170370))

(assert (=> b!5112489 m!6170286))

(assert (=> start!539222 d!1652211))

(declare-fun d!1652213 () Bool)

(declare-fun c!878345 () Bool)

(declare-fun isEmpty!31871 (List!59203) Bool)

(assert (=> d!1652213 (= c!878345 (isEmpty!31871 lt!2105630))))

(declare-fun e!3188604 () Bool)

(assert (=> d!1652213 (= (matchZipper!826 z!4463 lt!2105630) e!3188604)))

(declare-fun b!5112496 () Bool)

(declare-fun nullableZipper!995 ((Set Context!7084)) Bool)

(assert (=> b!5112496 (= e!3188604 (nullableZipper!995 z!4463))))

(declare-fun b!5112497 () Bool)

(assert (=> b!5112497 (= e!3188604 (matchZipper!826 (derivationStepZipper!793 z!4463 (head!10886 lt!2105630)) (tail!10027 lt!2105630)))))

(assert (= (and d!1652213 c!878345) b!5112496))

(assert (= (and d!1652213 (not c!878345)) b!5112497))

(declare-fun m!6170372 () Bool)

(assert (=> d!1652213 m!6170372))

(declare-fun m!6170374 () Bool)

(assert (=> b!5112496 m!6170374))

(declare-fun m!6170376 () Bool)

(assert (=> b!5112497 m!6170376))

(assert (=> b!5112497 m!6170376))

(declare-fun m!6170378 () Bool)

(assert (=> b!5112497 m!6170378))

(declare-fun m!6170380 () Bool)

(assert (=> b!5112497 m!6170380))

(assert (=> b!5112497 m!6170378))

(assert (=> b!5112497 m!6170380))

(declare-fun m!6170382 () Bool)

(assert (=> b!5112497 m!6170382))

(assert (=> b!5112311 d!1652213))

(declare-fun d!1652215 () Bool)

(declare-fun lt!2105754 () List!59203)

(assert (=> d!1652215 (= (++!12983 testedP!265 lt!2105754) knownP!20)))

(declare-fun e!3188605 () List!59203)

(assert (=> d!1652215 (= lt!2105754 e!3188605)))

(declare-fun c!878346 () Bool)

(assert (=> d!1652215 (= c!878346 (is-Cons!59079 testedP!265))))

(assert (=> d!1652215 (>= (size!39464 knownP!20) (size!39464 testedP!265))))

(assert (=> d!1652215 (= (getSuffix!3237 knownP!20 testedP!265) lt!2105754)))

(declare-fun b!5112498 () Bool)

(assert (=> b!5112498 (= e!3188605 (getSuffix!3237 (tail!10027 knownP!20) (t!372204 testedP!265)))))

(declare-fun b!5112499 () Bool)

(assert (=> b!5112499 (= e!3188605 knownP!20)))

(assert (= (and d!1652215 c!878346) b!5112498))

(assert (= (and d!1652215 (not c!878346)) b!5112499))

(declare-fun m!6170384 () Bool)

(assert (=> d!1652215 m!6170384))

(assert (=> d!1652215 m!6170104))

(assert (=> d!1652215 m!6170102))

(assert (=> b!5112498 m!6170278))

(assert (=> b!5112498 m!6170278))

(declare-fun m!6170386 () Bool)

(assert (=> b!5112498 m!6170386))

(assert (=> b!5112311 d!1652215))

(declare-fun b!5112503 () Bool)

(declare-fun e!3188606 () Bool)

(assert (=> b!5112503 (= e!3188606 (>= (size!39464 knownP!20) (size!39464 testedP!265)))))

(declare-fun b!5112502 () Bool)

(declare-fun e!3188608 () Bool)

(assert (=> b!5112502 (= e!3188608 (isPrefix!5563 (tail!10027 testedP!265) (tail!10027 knownP!20)))))

(declare-fun d!1652217 () Bool)

(assert (=> d!1652217 e!3188606))

(declare-fun res!2176245 () Bool)

(assert (=> d!1652217 (=> res!2176245 e!3188606)))

(declare-fun lt!2105755 () Bool)

(assert (=> d!1652217 (= res!2176245 (not lt!2105755))))

(declare-fun e!3188607 () Bool)

(assert (=> d!1652217 (= lt!2105755 e!3188607)))

(declare-fun res!2176247 () Bool)

(assert (=> d!1652217 (=> res!2176247 e!3188607)))

(assert (=> d!1652217 (= res!2176247 (is-Nil!59079 testedP!265))))

(assert (=> d!1652217 (= (isPrefix!5563 testedP!265 knownP!20) lt!2105755)))

(declare-fun b!5112501 () Bool)

(declare-fun res!2176246 () Bool)

(assert (=> b!5112501 (=> (not res!2176246) (not e!3188608))))

(assert (=> b!5112501 (= res!2176246 (= (head!10886 testedP!265) (head!10886 knownP!20)))))

(declare-fun b!5112500 () Bool)

(assert (=> b!5112500 (= e!3188607 e!3188608)))

(declare-fun res!2176248 () Bool)

(assert (=> b!5112500 (=> (not res!2176248) (not e!3188608))))

(assert (=> b!5112500 (= res!2176248 (not (is-Nil!59079 knownP!20)))))

(assert (= (and d!1652217 (not res!2176247)) b!5112500))

(assert (= (and b!5112500 res!2176248) b!5112501))

(assert (= (and b!5112501 res!2176246) b!5112502))

(assert (= (and d!1652217 (not res!2176245)) b!5112503))

(assert (=> b!5112503 m!6170104))

(assert (=> b!5112503 m!6170102))

(assert (=> b!5112502 m!6170366))

(assert (=> b!5112502 m!6170278))

(assert (=> b!5112502 m!6170366))

(assert (=> b!5112502 m!6170278))

(declare-fun m!6170388 () Bool)

(assert (=> b!5112502 m!6170388))

(assert (=> b!5112501 m!6170370))

(assert (=> b!5112501 m!6170284))

(assert (=> b!5112311 d!1652217))

(declare-fun d!1652219 () Bool)

(assert (=> d!1652219 (isPrefix!5563 testedP!265 knownP!20)))

(declare-fun lt!2105756 () Unit!150187)

(assert (=> d!1652219 (= lt!2105756 (choose!37490 knownP!20 testedP!265 input!5745))))

(assert (=> d!1652219 (isPrefix!5563 knownP!20 input!5745)))

(assert (=> d!1652219 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!700 knownP!20 testedP!265 input!5745) lt!2105756)))

(declare-fun bs!1192138 () Bool)

(assert (= bs!1192138 d!1652219))

(assert (=> bs!1192138 m!6170094))

(declare-fun m!6170390 () Bool)

(assert (=> bs!1192138 m!6170390))

(assert (=> bs!1192138 m!6170098))

(assert (=> b!5112311 d!1652219))

(declare-fun d!1652221 () Bool)

(declare-fun c!878347 () Bool)

(assert (=> d!1652221 (= c!878347 (isEmpty!31871 knownP!20))))

(declare-fun e!3188609 () Bool)

(assert (=> d!1652221 (= (matchZipper!826 baseZ!46 knownP!20) e!3188609)))

(declare-fun b!5112504 () Bool)

(assert (=> b!5112504 (= e!3188609 (nullableZipper!995 baseZ!46))))

(declare-fun b!5112505 () Bool)

(assert (=> b!5112505 (= e!3188609 (matchZipper!826 (derivationStepZipper!793 baseZ!46 (head!10886 knownP!20)) (tail!10027 knownP!20)))))

(assert (= (and d!1652221 c!878347) b!5112504))

(assert (= (and d!1652221 (not c!878347)) b!5112505))

(declare-fun m!6170392 () Bool)

(assert (=> d!1652221 m!6170392))

(declare-fun m!6170394 () Bool)

(assert (=> b!5112504 m!6170394))

(assert (=> b!5112505 m!6170284))

(assert (=> b!5112505 m!6170284))

(declare-fun m!6170396 () Bool)

(assert (=> b!5112505 m!6170396))

(assert (=> b!5112505 m!6170278))

(assert (=> b!5112505 m!6170396))

(assert (=> b!5112505 m!6170278))

(declare-fun m!6170398 () Bool)

(assert (=> b!5112505 m!6170398))

(assert (=> b!5112304 d!1652221))

(declare-fun condSetEmpty!29865 () Bool)

(assert (=> setNonEmpty!29856 (= condSetEmpty!29865 (= setRest!29855 (as set.empty (Set Context!7084))))))

(declare-fun setRes!29865 () Bool)

(assert (=> setNonEmpty!29856 (= tp!1426446 setRes!29865)))

(declare-fun setIsEmpty!29865 () Bool)

(assert (=> setIsEmpty!29865 setRes!29865))

(declare-fun setNonEmpty!29865 () Bool)

(declare-fun setElem!29865 () Context!7084)

(declare-fun e!3188612 () Bool)

(declare-fun tp!1426479 () Bool)

(assert (=> setNonEmpty!29865 (= setRes!29865 (and tp!1426479 (inv!78577 setElem!29865) e!3188612))))

(declare-fun setRest!29865 () (Set Context!7084))

(assert (=> setNonEmpty!29865 (= setRest!29855 (set.union (set.insert setElem!29865 (as set.empty (Set Context!7084))) setRest!29865))))

(declare-fun b!5112510 () Bool)

(declare-fun tp!1426478 () Bool)

(assert (=> b!5112510 (= e!3188612 tp!1426478)))

(assert (= (and setNonEmpty!29856 condSetEmpty!29865) setIsEmpty!29865))

(assert (= (and setNonEmpty!29856 (not condSetEmpty!29865)) setNonEmpty!29865))

(assert (= setNonEmpty!29865 b!5112510))

(declare-fun m!6170400 () Bool)

(assert (=> setNonEmpty!29865 m!6170400))

(declare-fun b!5112515 () Bool)

(declare-fun e!3188615 () Bool)

(declare-fun tp!1426482 () Bool)

(assert (=> b!5112515 (= e!3188615 (and tp_is_empty!37589 tp!1426482))))

(assert (=> b!5112298 (= tp!1426448 e!3188615)))

(assert (= (and b!5112298 (is-Cons!59079 (t!372204 input!5745))) b!5112515))

(declare-fun b!5112516 () Bool)

(declare-fun e!3188616 () Bool)

(declare-fun tp!1426483 () Bool)

(assert (=> b!5112516 (= e!3188616 (and tp_is_empty!37589 tp!1426483))))

(assert (=> b!5112312 (= tp!1426449 e!3188616)))

(assert (= (and b!5112312 (is-Cons!59079 (t!372204 knownP!20))) b!5112516))

(declare-fun b!5112517 () Bool)

(declare-fun e!3188617 () Bool)

(declare-fun tp!1426484 () Bool)

(assert (=> b!5112517 (= e!3188617 (and tp_is_empty!37589 tp!1426484))))

(assert (=> b!5112300 (= tp!1426452 e!3188617)))

(assert (= (and b!5112300 (is-Cons!59079 (t!372204 testedP!265))) b!5112517))

(declare-fun b!5112522 () Bool)

(declare-fun e!3188620 () Bool)

(declare-fun tp!1426489 () Bool)

(declare-fun tp!1426490 () Bool)

(assert (=> b!5112522 (= e!3188620 (and tp!1426489 tp!1426490))))

(assert (=> b!5112296 (= tp!1426450 e!3188620)))

(assert (= (and b!5112296 (is-Cons!59080 (exprs!4042 setElem!29855))) b!5112522))

(declare-fun b!5112523 () Bool)

(declare-fun e!3188621 () Bool)

(declare-fun tp!1426491 () Bool)

(declare-fun tp!1426492 () Bool)

(assert (=> b!5112523 (= e!3188621 (and tp!1426491 tp!1426492))))

(assert (=> b!5112313 (= tp!1426447 e!3188621)))

(assert (= (and b!5112313 (is-Cons!59080 (exprs!4042 setElem!29856))) b!5112523))

(declare-fun condSetEmpty!29866 () Bool)

(assert (=> setNonEmpty!29855 (= condSetEmpty!29866 (= setRest!29856 (as set.empty (Set Context!7084))))))

(declare-fun setRes!29866 () Bool)

(assert (=> setNonEmpty!29855 (= tp!1426451 setRes!29866)))

(declare-fun setIsEmpty!29866 () Bool)

(assert (=> setIsEmpty!29866 setRes!29866))

(declare-fun e!3188622 () Bool)

(declare-fun tp!1426494 () Bool)

(declare-fun setElem!29866 () Context!7084)

(declare-fun setNonEmpty!29866 () Bool)

(assert (=> setNonEmpty!29866 (= setRes!29866 (and tp!1426494 (inv!78577 setElem!29866) e!3188622))))

(declare-fun setRest!29866 () (Set Context!7084))

(assert (=> setNonEmpty!29866 (= setRest!29856 (set.union (set.insert setElem!29866 (as set.empty (Set Context!7084))) setRest!29866))))

(declare-fun b!5112524 () Bool)

(declare-fun tp!1426493 () Bool)

(assert (=> b!5112524 (= e!3188622 tp!1426493)))

(assert (= (and setNonEmpty!29855 condSetEmpty!29866) setIsEmpty!29866))

(assert (= (and setNonEmpty!29855 (not condSetEmpty!29866)) setNonEmpty!29866))

(assert (= setNonEmpty!29866 b!5112524))

(declare-fun m!6170402 () Bool)

(assert (=> setNonEmpty!29866 m!6170402))

(push 1)

(assert (not b!5112408))

(assert (not b!5112433))

(assert (not b!5112501))

(assert (not d!1652193))

(assert (not b!5112451))

(assert (not d!1652207))

(assert (not d!1652175))

(assert (not b!5112477))

(assert (not d!1652183))

(assert (not b!5112502))

(assert (not d!1652157))

(assert (not b!5112504))

(assert (not b!5112481))

(assert (not b!5112476))

(assert (not setNonEmpty!29865))

(assert (not b!5112449))

(assert (not b!5112496))

(assert (not b!5112515))

(assert (not b!5112468))

(assert (not setNonEmpty!29866))

(assert (not b!5112510))

(assert (not d!1652219))

(assert (not b!5112466))

(assert (not d!1652199))

(assert (not b!5112457))

(assert (not b!5112497))

(assert (not bm!356414))

(assert (not d!1652171))

(assert (not b!5112472))

(assert (not b!5112425))

(assert (not b!5112523))

(assert (not d!1652159))

(assert (not d!1652195))

(assert (not b!5112486))

(assert (not b!5112482))

(assert (not bm!356413))

(assert (not b!5112465))

(assert (not b!5112411))

(assert (not d!1652205))

(assert (not b!5112498))

(assert (not b!5112491))

(assert (not b!5112415))

(assert (not d!1652155))

(assert (not d!1652221))

(assert (not d!1652187))

(assert (not b!5112462))

(assert (not d!1652161))

(assert (not d!1652203))

(assert tp_is_empty!37589)

(assert (not b!5112423))

(assert (not b!5112489))

(assert (not b!5112503))

(assert (not b!5112467))

(assert (not b!5112438))

(assert (not b!5112490))

(assert (not b!5112450))

(assert (not d!1652209))

(assert (not b!5112485))

(assert (not b!5112470))

(assert (not b!5112437))

(assert (not d!1652179))

(assert (not d!1652181))

(assert (not b!5112430))

(assert (not b!5112407))

(assert (not b!5112416))

(assert (not b!5112517))

(assert (not b!5112412))

(assert (not d!1652173))

(assert (not b!5112516))

(assert (not b!5112522))

(assert (not d!1652197))

(assert (not b!5112505))

(assert (not d!1652215))

(assert (not b!5112389))

(assert (not b!5112475))

(assert (not d!1652213))

(assert (not b!5112434))

(assert (not b!5112456))

(assert (not b!5112524))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

