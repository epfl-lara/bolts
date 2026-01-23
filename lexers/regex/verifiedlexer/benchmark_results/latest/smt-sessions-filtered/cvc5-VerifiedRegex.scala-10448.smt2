; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!539798 () Bool)

(assert start!539798)

(declare-fun b!5116246 () Bool)

(declare-fun res!2178296 () Bool)

(declare-fun e!3190921 () Bool)

(assert (=> b!5116246 (=> (not res!2178296) (not e!3190921))))

(declare-datatypes ((C!28638 0))(
  ( (C!28639 (val!23971 Int)) )
))
(declare-datatypes ((List!59275 0))(
  ( (Nil!59151) (Cons!59151 (h!65599 C!28638) (t!372286 List!59275)) )
))
(declare-fun knownP!20 () List!59275)

(declare-fun input!5745 () List!59275)

(declare-fun isPrefix!5591 (List!59275 List!59275) Bool)

(assert (=> b!5116246 (= res!2178296 (isPrefix!5591 knownP!20 input!5745))))

(declare-fun res!2178298 () Bool)

(assert (=> start!539798 (=> (not res!2178298) (not e!3190921))))

(declare-fun testedP!265 () List!59275)

(assert (=> start!539798 (= res!2178298 (isPrefix!5591 testedP!265 input!5745))))

(assert (=> start!539798 e!3190921))

(declare-fun e!3190919 () Bool)

(assert (=> start!539798 e!3190919))

(declare-fun condSetEmpty!30087 () Bool)

(declare-datatypes ((Regex!14186 0))(
  ( (ElementMatch!14186 (c!879020 C!28638)) (Concat!23031 (regOne!28884 Regex!14186) (regTwo!28884 Regex!14186)) (EmptyExpr!14186) (Star!14186 (reg!14515 Regex!14186)) (EmptyLang!14186) (Union!14186 (regOne!28885 Regex!14186) (regTwo!28885 Regex!14186)) )
))
(declare-datatypes ((List!59276 0))(
  ( (Nil!59152) (Cons!59152 (h!65600 Regex!14186) (t!372287 List!59276)) )
))
(declare-datatypes ((Context!7140 0))(
  ( (Context!7141 (exprs!4070 List!59276)) )
))
(declare-fun z!4463 () (Set Context!7140))

(assert (=> start!539798 (= condSetEmpty!30087 (= z!4463 (as set.empty (Set Context!7140))))))

(declare-fun setRes!30088 () Bool)

(assert (=> start!539798 setRes!30088))

(declare-fun e!3190924 () Bool)

(assert (=> start!539798 e!3190924))

(declare-fun condSetEmpty!30088 () Bool)

(declare-fun baseZ!46 () (Set Context!7140))

(assert (=> start!539798 (= condSetEmpty!30088 (= baseZ!46 (as set.empty (Set Context!7140))))))

(declare-fun setRes!30087 () Bool)

(assert (=> start!539798 setRes!30087))

(declare-fun e!3190925 () Bool)

(assert (=> start!539798 e!3190925))

(declare-fun b!5116247 () Bool)

(declare-fun e!3190922 () Bool)

(declare-fun tp!1427372 () Bool)

(assert (=> b!5116247 (= e!3190922 tp!1427372)))

(declare-fun setIsEmpty!30087 () Bool)

(assert (=> setIsEmpty!30087 setRes!30087))

(declare-fun b!5116248 () Bool)

(declare-fun e!3190918 () Bool)

(declare-fun lt!2108559 () List!59275)

(declare-fun ++!13011 (List!59275 List!59275) List!59275)

(assert (=> b!5116248 (= e!3190918 (= (++!13011 testedP!265 lt!2108559) knownP!20))))

(declare-fun lt!2108557 () (Set Context!7140))

(declare-fun matchZipper!854 ((Set Context!7140) List!59275) Bool)

(assert (=> b!5116248 (= (matchZipper!854 baseZ!46 testedP!265) (matchZipper!854 lt!2108557 Nil!59151))))

(declare-datatypes ((Unit!150275 0))(
  ( (Unit!150276) )
))
(declare-fun lt!2108560 () Unit!150275)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!7 ((Set Context!7140) List!59275) Unit!150275)

(assert (=> b!5116248 (= lt!2108560 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!7 baseZ!46 testedP!265))))

(declare-fun b!5116249 () Bool)

(declare-fun tp_is_empty!37645 () Bool)

(declare-fun tp!1427373 () Bool)

(assert (=> b!5116249 (= e!3190924 (and tp_is_empty!37645 tp!1427373))))

(declare-fun b!5116250 () Bool)

(declare-fun e!3190923 () Bool)

(assert (=> b!5116250 (= e!3190923 e!3190918)))

(declare-fun res!2178299 () Bool)

(assert (=> b!5116250 (=> res!2178299 e!3190918)))

(assert (=> b!5116250 (= res!2178299 (not (= lt!2108557 z!4463)))))

(declare-fun derivationZipper!85 ((Set Context!7140) List!59275) (Set Context!7140))

(assert (=> b!5116250 (= lt!2108557 (derivationZipper!85 baseZ!46 testedP!265))))

(declare-fun b!5116251 () Bool)

(declare-fun res!2178295 () Bool)

(assert (=> b!5116251 (=> (not res!2178295) (not e!3190921))))

(declare-fun size!39492 (List!59275) Int)

(assert (=> b!5116251 (= res!2178295 (>= (size!39492 knownP!20) (size!39492 testedP!265)))))

(declare-fun b!5116252 () Bool)

(declare-fun tp!1427376 () Bool)

(assert (=> b!5116252 (= e!3190919 (and tp_is_empty!37645 tp!1427376))))

(declare-fun setIsEmpty!30088 () Bool)

(assert (=> setIsEmpty!30088 setRes!30088))

(declare-fun b!5116253 () Bool)

(assert (=> b!5116253 (= e!3190921 (not e!3190923))))

(declare-fun res!2178297 () Bool)

(assert (=> b!5116253 (=> res!2178297 e!3190923)))

(assert (=> b!5116253 (= res!2178297 (not (matchZipper!854 z!4463 lt!2108559)))))

(declare-fun getSuffix!3265 (List!59275 List!59275) List!59275)

(assert (=> b!5116253 (= lt!2108559 (getSuffix!3265 knownP!20 testedP!265))))

(assert (=> b!5116253 (isPrefix!5591 testedP!265 knownP!20)))

(declare-fun lt!2108558 () Unit!150275)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!728 (List!59275 List!59275 List!59275) Unit!150275)

(assert (=> b!5116253 (= lt!2108558 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!728 knownP!20 testedP!265 input!5745))))

(declare-fun setElem!30087 () Context!7140)

(declare-fun tp!1427370 () Bool)

(declare-fun setNonEmpty!30087 () Bool)

(declare-fun inv!78647 (Context!7140) Bool)

(assert (=> setNonEmpty!30087 (= setRes!30087 (and tp!1427370 (inv!78647 setElem!30087) e!3190922))))

(declare-fun setRest!30088 () (Set Context!7140))

(assert (=> setNonEmpty!30087 (= baseZ!46 (set.union (set.insert setElem!30087 (as set.empty (Set Context!7140))) setRest!30088))))

(declare-fun b!5116254 () Bool)

(declare-fun e!3190920 () Bool)

(declare-fun tp!1427374 () Bool)

(assert (=> b!5116254 (= e!3190920 tp!1427374)))

(declare-fun b!5116255 () Bool)

(declare-fun res!2178294 () Bool)

(assert (=> b!5116255 (=> res!2178294 e!3190918)))

(declare-fun lostCauseZipper!1072 ((Set Context!7140)) Bool)

(assert (=> b!5116255 (= res!2178294 (not (lostCauseZipper!1072 z!4463)))))

(declare-fun b!5116256 () Bool)

(declare-fun res!2178293 () Bool)

(assert (=> b!5116256 (=> (not res!2178293) (not e!3190921))))

(assert (=> b!5116256 (= res!2178293 (matchZipper!854 baseZ!46 knownP!20))))

(declare-fun b!5116257 () Bool)

(declare-fun tp!1427375 () Bool)

(assert (=> b!5116257 (= e!3190925 (and tp_is_empty!37645 tp!1427375))))

(declare-fun tp!1427371 () Bool)

(declare-fun setElem!30088 () Context!7140)

(declare-fun setNonEmpty!30088 () Bool)

(assert (=> setNonEmpty!30088 (= setRes!30088 (and tp!1427371 (inv!78647 setElem!30088) e!3190920))))

(declare-fun setRest!30087 () (Set Context!7140))

(assert (=> setNonEmpty!30088 (= z!4463 (set.union (set.insert setElem!30088 (as set.empty (Set Context!7140))) setRest!30087))))

(assert (= (and start!539798 res!2178298) b!5116246))

(assert (= (and b!5116246 res!2178296) b!5116251))

(assert (= (and b!5116251 res!2178295) b!5116256))

(assert (= (and b!5116256 res!2178293) b!5116253))

(assert (= (and b!5116253 (not res!2178297)) b!5116250))

(assert (= (and b!5116250 (not res!2178299)) b!5116255))

(assert (= (and b!5116255 (not res!2178294)) b!5116248))

(assert (= (and start!539798 (is-Cons!59151 input!5745)) b!5116252))

(assert (= (and start!539798 condSetEmpty!30087) setIsEmpty!30088))

(assert (= (and start!539798 (not condSetEmpty!30087)) setNonEmpty!30088))

(assert (= setNonEmpty!30088 b!5116254))

(assert (= (and start!539798 (is-Cons!59151 testedP!265)) b!5116249))

(assert (= (and start!539798 condSetEmpty!30088) setIsEmpty!30087))

(assert (= (and start!539798 (not condSetEmpty!30088)) setNonEmpty!30087))

(assert (= setNonEmpty!30087 b!5116247))

(assert (= (and start!539798 (is-Cons!59151 knownP!20)) b!5116257))

(declare-fun m!6175682 () Bool)

(assert (=> b!5116248 m!6175682))

(declare-fun m!6175684 () Bool)

(assert (=> b!5116248 m!6175684))

(declare-fun m!6175686 () Bool)

(assert (=> b!5116248 m!6175686))

(declare-fun m!6175688 () Bool)

(assert (=> b!5116248 m!6175688))

(declare-fun m!6175690 () Bool)

(assert (=> b!5116246 m!6175690))

(declare-fun m!6175692 () Bool)

(assert (=> b!5116256 m!6175692))

(declare-fun m!6175694 () Bool)

(assert (=> start!539798 m!6175694))

(declare-fun m!6175696 () Bool)

(assert (=> b!5116255 m!6175696))

(declare-fun m!6175698 () Bool)

(assert (=> b!5116251 m!6175698))

(declare-fun m!6175700 () Bool)

(assert (=> b!5116251 m!6175700))

(declare-fun m!6175702 () Bool)

(assert (=> setNonEmpty!30087 m!6175702))

(declare-fun m!6175704 () Bool)

(assert (=> setNonEmpty!30088 m!6175704))

(declare-fun m!6175706 () Bool)

(assert (=> b!5116250 m!6175706))

(declare-fun m!6175708 () Bool)

(assert (=> b!5116253 m!6175708))

(declare-fun m!6175710 () Bool)

(assert (=> b!5116253 m!6175710))

(declare-fun m!6175712 () Bool)

(assert (=> b!5116253 m!6175712))

(declare-fun m!6175714 () Bool)

(assert (=> b!5116253 m!6175714))

(push 1)

(assert (not start!539798))

(assert (not b!5116254))

(assert (not b!5116255))

(assert (not b!5116246))

(assert (not b!5116252))

(assert (not b!5116251))

(assert (not b!5116248))

(assert (not b!5116256))

(assert (not setNonEmpty!30088))

(assert (not b!5116249))

(assert (not setNonEmpty!30087))

(assert tp_is_empty!37645)

(assert (not b!5116250))

(assert (not b!5116253))

(assert (not b!5116247))

(assert (not b!5116257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5116320 () Bool)

(declare-fun e!3190970 () Bool)

(declare-fun tail!10055 (List!59275) List!59275)

(assert (=> b!5116320 (= e!3190970 (isPrefix!5591 (tail!10055 testedP!265) (tail!10055 input!5745)))))

(declare-fun b!5116321 () Bool)

(declare-fun e!3190968 () Bool)

(assert (=> b!5116321 (= e!3190968 (>= (size!39492 input!5745) (size!39492 testedP!265)))))

(declare-fun b!5116318 () Bool)

(declare-fun e!3190969 () Bool)

(assert (=> b!5116318 (= e!3190969 e!3190970)))

(declare-fun res!2178348 () Bool)

(assert (=> b!5116318 (=> (not res!2178348) (not e!3190970))))

(assert (=> b!5116318 (= res!2178348 (not (is-Nil!59151 input!5745)))))

(declare-fun b!5116319 () Bool)

(declare-fun res!2178347 () Bool)

(assert (=> b!5116319 (=> (not res!2178347) (not e!3190970))))

(declare-fun head!10914 (List!59275) C!28638)

(assert (=> b!5116319 (= res!2178347 (= (head!10914 testedP!265) (head!10914 input!5745)))))

(declare-fun d!1653381 () Bool)

(assert (=> d!1653381 e!3190968))

(declare-fun res!2178345 () Bool)

(assert (=> d!1653381 (=> res!2178345 e!3190968)))

(declare-fun lt!2108579 () Bool)

(assert (=> d!1653381 (= res!2178345 (not lt!2108579))))

(assert (=> d!1653381 (= lt!2108579 e!3190969)))

(declare-fun res!2178346 () Bool)

(assert (=> d!1653381 (=> res!2178346 e!3190969)))

(assert (=> d!1653381 (= res!2178346 (is-Nil!59151 testedP!265))))

(assert (=> d!1653381 (= (isPrefix!5591 testedP!265 input!5745) lt!2108579)))

(assert (= (and d!1653381 (not res!2178346)) b!5116318))

(assert (= (and b!5116318 res!2178348) b!5116319))

(assert (= (and b!5116319 res!2178347) b!5116320))

(assert (= (and d!1653381 (not res!2178345)) b!5116321))

(declare-fun m!6175768 () Bool)

(assert (=> b!5116320 m!6175768))

(declare-fun m!6175770 () Bool)

(assert (=> b!5116320 m!6175770))

(assert (=> b!5116320 m!6175768))

(assert (=> b!5116320 m!6175770))

(declare-fun m!6175772 () Bool)

(assert (=> b!5116320 m!6175772))

(declare-fun m!6175774 () Bool)

(assert (=> b!5116321 m!6175774))

(assert (=> b!5116321 m!6175700))

(declare-fun m!6175776 () Bool)

(assert (=> b!5116319 m!6175776))

(declare-fun m!6175778 () Bool)

(assert (=> b!5116319 m!6175778))

(assert (=> start!539798 d!1653381))

(declare-fun bs!1192372 () Bool)

(declare-fun b!5116326 () Bool)

(declare-fun d!1653385 () Bool)

(assert (= bs!1192372 (and b!5116326 d!1653385)))

(declare-fun lambda!250848 () Int)

(declare-fun lambda!250847 () Int)

(assert (=> bs!1192372 (not (= lambda!250848 lambda!250847))))

(declare-fun bs!1192373 () Bool)

(declare-fun b!5116327 () Bool)

(assert (= bs!1192373 (and b!5116327 d!1653385)))

(declare-fun lambda!250849 () Int)

(assert (=> bs!1192373 (not (= lambda!250849 lambda!250847))))

(declare-fun bs!1192374 () Bool)

(assert (= bs!1192374 (and b!5116327 b!5116326)))

(assert (=> bs!1192374 (= lambda!250849 lambda!250848)))

(declare-fun bm!356509 () Bool)

(declare-datatypes ((List!59279 0))(
  ( (Nil!59155) (Cons!59155 (h!65603 Context!7140) (t!372290 List!59279)) )
))
(declare-fun call!356515 () List!59279)

(declare-fun toList!8247 ((Set Context!7140)) List!59279)

(assert (=> bm!356509 (= call!356515 (toList!8247 z!4463))))

(declare-fun e!3190977 () Unit!150275)

(declare-fun Unit!150279 () Unit!150275)

(assert (=> b!5116327 (= e!3190977 Unit!150279)))

(declare-fun lt!2108603 () List!59279)

(assert (=> b!5116327 (= lt!2108603 call!356515)))

(declare-fun lt!2108598 () Unit!150275)

(declare-fun lemmaForallThenNotExists!304 (List!59279 Int) Unit!150275)

(assert (=> b!5116327 (= lt!2108598 (lemmaForallThenNotExists!304 lt!2108603 lambda!250847))))

(declare-fun call!356514 () Bool)

(assert (=> b!5116327 (not call!356514)))

(declare-fun lt!2108596 () Unit!150275)

(assert (=> b!5116327 (= lt!2108596 lt!2108598)))

(declare-fun Unit!150280 () Unit!150275)

(assert (=> b!5116326 (= e!3190977 Unit!150280)))

(declare-fun lt!2108599 () List!59279)

(assert (=> b!5116326 (= lt!2108599 call!356515)))

(declare-fun lt!2108602 () Unit!150275)

(declare-fun lemmaNotForallThenExists!321 (List!59279 Int) Unit!150275)

(assert (=> b!5116326 (= lt!2108602 (lemmaNotForallThenExists!321 lt!2108599 lambda!250847))))

(assert (=> b!5116326 call!356514))

(declare-fun lt!2108597 () Unit!150275)

(assert (=> b!5116326 (= lt!2108597 lt!2108602)))

(declare-fun bm!356510 () Bool)

(declare-fun c!879032 () Bool)

(declare-fun exists!1458 (List!59279 Int) Bool)

(assert (=> bm!356510 (= call!356514 (exists!1458 (ite c!879032 lt!2108599 lt!2108603) (ite c!879032 lambda!250848 lambda!250849)))))

(declare-fun lt!2108601 () Bool)

(declare-datatypes ((Option!14681 0))(
  ( (None!14680) (Some!14680 (v!50693 List!59275)) )
))
(declare-fun isEmpty!31902 (Option!14681) Bool)

(declare-fun getLanguageWitness!798 ((Set Context!7140)) Option!14681)

(assert (=> d!1653385 (= lt!2108601 (isEmpty!31902 (getLanguageWitness!798 z!4463)))))

(declare-fun forall!13577 ((Set Context!7140) Int) Bool)

(assert (=> d!1653385 (= lt!2108601 (forall!13577 z!4463 lambda!250847))))

(declare-fun lt!2108600 () Unit!150275)

(assert (=> d!1653385 (= lt!2108600 e!3190977)))

(assert (=> d!1653385 (= c!879032 (not (forall!13577 z!4463 lambda!250847)))))

(assert (=> d!1653385 (= (lostCauseZipper!1072 z!4463) lt!2108601)))

(assert (= (and d!1653385 c!879032) b!5116326))

(assert (= (and d!1653385 (not c!879032)) b!5116327))

(assert (= (or b!5116326 b!5116327) bm!356509))

(assert (= (or b!5116326 b!5116327) bm!356510))

(declare-fun m!6175780 () Bool)

(assert (=> bm!356510 m!6175780))

(declare-fun m!6175782 () Bool)

(assert (=> b!5116327 m!6175782))

(declare-fun m!6175784 () Bool)

(assert (=> b!5116326 m!6175784))

(declare-fun m!6175786 () Bool)

(assert (=> d!1653385 m!6175786))

(assert (=> d!1653385 m!6175786))

(declare-fun m!6175788 () Bool)

(assert (=> d!1653385 m!6175788))

(declare-fun m!6175790 () Bool)

(assert (=> d!1653385 m!6175790))

(assert (=> d!1653385 m!6175790))

(declare-fun m!6175792 () Bool)

(assert (=> bm!356509 m!6175792))

(assert (=> b!5116255 d!1653385))

(declare-fun d!1653387 () Bool)

(declare-fun c!879035 () Bool)

(declare-fun isEmpty!31903 (List!59275) Bool)

(assert (=> d!1653387 (= c!879035 (isEmpty!31903 knownP!20))))

(declare-fun e!3190980 () Bool)

(assert (=> d!1653387 (= (matchZipper!854 baseZ!46 knownP!20) e!3190980)))

(declare-fun b!5116332 () Bool)

(declare-fun nullableZipper!1011 ((Set Context!7140)) Bool)

(assert (=> b!5116332 (= e!3190980 (nullableZipper!1011 baseZ!46))))

(declare-fun b!5116333 () Bool)

(declare-fun derivationStepZipper!821 ((Set Context!7140) C!28638) (Set Context!7140))

(assert (=> b!5116333 (= e!3190980 (matchZipper!854 (derivationStepZipper!821 baseZ!46 (head!10914 knownP!20)) (tail!10055 knownP!20)))))

(assert (= (and d!1653387 c!879035) b!5116332))

(assert (= (and d!1653387 (not c!879035)) b!5116333))

(declare-fun m!6175794 () Bool)

(assert (=> d!1653387 m!6175794))

(declare-fun m!6175796 () Bool)

(assert (=> b!5116332 m!6175796))

(declare-fun m!6175798 () Bool)

(assert (=> b!5116333 m!6175798))

(assert (=> b!5116333 m!6175798))

(declare-fun m!6175800 () Bool)

(assert (=> b!5116333 m!6175800))

(declare-fun m!6175802 () Bool)

(assert (=> b!5116333 m!6175802))

(assert (=> b!5116333 m!6175800))

(assert (=> b!5116333 m!6175802))

(declare-fun m!6175804 () Bool)

(assert (=> b!5116333 m!6175804))

(assert (=> b!5116256 d!1653387))

(declare-fun b!5116344 () Bool)

(declare-fun res!2178354 () Bool)

(declare-fun e!3190986 () Bool)

(assert (=> b!5116344 (=> (not res!2178354) (not e!3190986))))

(declare-fun lt!2108606 () List!59275)

(assert (=> b!5116344 (= res!2178354 (= (size!39492 lt!2108606) (+ (size!39492 testedP!265) (size!39492 lt!2108559))))))

(declare-fun b!5116345 () Bool)

(assert (=> b!5116345 (= e!3190986 (or (not (= lt!2108559 Nil!59151)) (= lt!2108606 testedP!265)))))

(declare-fun b!5116342 () Bool)

(declare-fun e!3190985 () List!59275)

(assert (=> b!5116342 (= e!3190985 lt!2108559)))

(declare-fun d!1653389 () Bool)

(assert (=> d!1653389 e!3190986))

(declare-fun res!2178353 () Bool)

(assert (=> d!1653389 (=> (not res!2178353) (not e!3190986))))

(declare-fun content!10514 (List!59275) (Set C!28638))

(assert (=> d!1653389 (= res!2178353 (= (content!10514 lt!2108606) (set.union (content!10514 testedP!265) (content!10514 lt!2108559))))))

(assert (=> d!1653389 (= lt!2108606 e!3190985)))

(declare-fun c!879038 () Bool)

(assert (=> d!1653389 (= c!879038 (is-Nil!59151 testedP!265))))

(assert (=> d!1653389 (= (++!13011 testedP!265 lt!2108559) lt!2108606)))

(declare-fun b!5116343 () Bool)

(assert (=> b!5116343 (= e!3190985 (Cons!59151 (h!65599 testedP!265) (++!13011 (t!372286 testedP!265) lt!2108559)))))

(assert (= (and d!1653389 c!879038) b!5116342))

(assert (= (and d!1653389 (not c!879038)) b!5116343))

(assert (= (and d!1653389 res!2178353) b!5116344))

(assert (= (and b!5116344 res!2178354) b!5116345))

(declare-fun m!6175806 () Bool)

(assert (=> b!5116344 m!6175806))

(assert (=> b!5116344 m!6175700))

(declare-fun m!6175808 () Bool)

(assert (=> b!5116344 m!6175808))

(declare-fun m!6175810 () Bool)

(assert (=> d!1653389 m!6175810))

(declare-fun m!6175812 () Bool)

(assert (=> d!1653389 m!6175812))

(declare-fun m!6175814 () Bool)

(assert (=> d!1653389 m!6175814))

(declare-fun m!6175816 () Bool)

(assert (=> b!5116343 m!6175816))

(assert (=> b!5116248 d!1653389))

(declare-fun d!1653391 () Bool)

(declare-fun c!879039 () Bool)

(assert (=> d!1653391 (= c!879039 (isEmpty!31903 testedP!265))))

(declare-fun e!3190987 () Bool)

(assert (=> d!1653391 (= (matchZipper!854 baseZ!46 testedP!265) e!3190987)))

(declare-fun b!5116346 () Bool)

(assert (=> b!5116346 (= e!3190987 (nullableZipper!1011 baseZ!46))))

(declare-fun b!5116347 () Bool)

(assert (=> b!5116347 (= e!3190987 (matchZipper!854 (derivationStepZipper!821 baseZ!46 (head!10914 testedP!265)) (tail!10055 testedP!265)))))

(assert (= (and d!1653391 c!879039) b!5116346))

(assert (= (and d!1653391 (not c!879039)) b!5116347))

(declare-fun m!6175818 () Bool)

(assert (=> d!1653391 m!6175818))

(assert (=> b!5116346 m!6175796))

(assert (=> b!5116347 m!6175776))

(assert (=> b!5116347 m!6175776))

(declare-fun m!6175820 () Bool)

(assert (=> b!5116347 m!6175820))

(assert (=> b!5116347 m!6175768))

(assert (=> b!5116347 m!6175820))

(assert (=> b!5116347 m!6175768))

(declare-fun m!6175822 () Bool)

(assert (=> b!5116347 m!6175822))

(assert (=> b!5116248 d!1653391))

(declare-fun d!1653393 () Bool)

(declare-fun c!879040 () Bool)

(assert (=> d!1653393 (= c!879040 (isEmpty!31903 Nil!59151))))

(declare-fun e!3190988 () Bool)

(assert (=> d!1653393 (= (matchZipper!854 lt!2108557 Nil!59151) e!3190988)))

(declare-fun b!5116348 () Bool)

(assert (=> b!5116348 (= e!3190988 (nullableZipper!1011 lt!2108557))))

(declare-fun b!5116349 () Bool)

(assert (=> b!5116349 (= e!3190988 (matchZipper!854 (derivationStepZipper!821 lt!2108557 (head!10914 Nil!59151)) (tail!10055 Nil!59151)))))

(assert (= (and d!1653393 c!879040) b!5116348))

(assert (= (and d!1653393 (not c!879040)) b!5116349))

(declare-fun m!6175824 () Bool)

(assert (=> d!1653393 m!6175824))

(declare-fun m!6175826 () Bool)

(assert (=> b!5116348 m!6175826))

(declare-fun m!6175828 () Bool)

(assert (=> b!5116349 m!6175828))

(assert (=> b!5116349 m!6175828))

(declare-fun m!6175830 () Bool)

(assert (=> b!5116349 m!6175830))

(declare-fun m!6175832 () Bool)

(assert (=> b!5116349 m!6175832))

(assert (=> b!5116349 m!6175830))

(assert (=> b!5116349 m!6175832))

(declare-fun m!6175834 () Bool)

(assert (=> b!5116349 m!6175834))

(assert (=> b!5116248 d!1653393))

(declare-fun d!1653395 () Bool)

(assert (=> d!1653395 (= (matchZipper!854 baseZ!46 testedP!265) (matchZipper!854 (derivationZipper!85 baseZ!46 testedP!265) Nil!59151))))

(declare-fun lt!2108609 () Unit!150275)

(declare-fun choose!37567 ((Set Context!7140) List!59275) Unit!150275)

(assert (=> d!1653395 (= lt!2108609 (choose!37567 baseZ!46 testedP!265))))

(assert (=> d!1653395 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!7 baseZ!46 testedP!265) lt!2108609)))

(declare-fun bs!1192375 () Bool)

(assert (= bs!1192375 d!1653395))

(assert (=> bs!1192375 m!6175684))

(assert (=> bs!1192375 m!6175706))

(assert (=> bs!1192375 m!6175706))

(declare-fun m!6175836 () Bool)

(assert (=> bs!1192375 m!6175836))

(declare-fun m!6175838 () Bool)

(assert (=> bs!1192375 m!6175838))

(assert (=> b!5116248 d!1653395))

(declare-fun d!1653397 () Bool)

(declare-fun c!879041 () Bool)

(assert (=> d!1653397 (= c!879041 (isEmpty!31903 lt!2108559))))

(declare-fun e!3190989 () Bool)

(assert (=> d!1653397 (= (matchZipper!854 z!4463 lt!2108559) e!3190989)))

(declare-fun b!5116350 () Bool)

(assert (=> b!5116350 (= e!3190989 (nullableZipper!1011 z!4463))))

(declare-fun b!5116351 () Bool)

(assert (=> b!5116351 (= e!3190989 (matchZipper!854 (derivationStepZipper!821 z!4463 (head!10914 lt!2108559)) (tail!10055 lt!2108559)))))

(assert (= (and d!1653397 c!879041) b!5116350))

(assert (= (and d!1653397 (not c!879041)) b!5116351))

(declare-fun m!6175840 () Bool)

(assert (=> d!1653397 m!6175840))

(declare-fun m!6175842 () Bool)

(assert (=> b!5116350 m!6175842))

(declare-fun m!6175844 () Bool)

(assert (=> b!5116351 m!6175844))

(assert (=> b!5116351 m!6175844))

(declare-fun m!6175846 () Bool)

(assert (=> b!5116351 m!6175846))

(declare-fun m!6175848 () Bool)

(assert (=> b!5116351 m!6175848))

(assert (=> b!5116351 m!6175846))

(assert (=> b!5116351 m!6175848))

(declare-fun m!6175850 () Bool)

(assert (=> b!5116351 m!6175850))

(assert (=> b!5116253 d!1653397))

(declare-fun d!1653399 () Bool)

(declare-fun lt!2108612 () List!59275)

(assert (=> d!1653399 (= (++!13011 testedP!265 lt!2108612) knownP!20)))

(declare-fun e!3190992 () List!59275)

(assert (=> d!1653399 (= lt!2108612 e!3190992)))

(declare-fun c!879044 () Bool)

(assert (=> d!1653399 (= c!879044 (is-Cons!59151 testedP!265))))

(assert (=> d!1653399 (>= (size!39492 knownP!20) (size!39492 testedP!265))))

(assert (=> d!1653399 (= (getSuffix!3265 knownP!20 testedP!265) lt!2108612)))

(declare-fun b!5116356 () Bool)

(assert (=> b!5116356 (= e!3190992 (getSuffix!3265 (tail!10055 knownP!20) (t!372286 testedP!265)))))

(declare-fun b!5116357 () Bool)

(assert (=> b!5116357 (= e!3190992 knownP!20)))

(assert (= (and d!1653399 c!879044) b!5116356))

(assert (= (and d!1653399 (not c!879044)) b!5116357))

(declare-fun m!6175852 () Bool)

(assert (=> d!1653399 m!6175852))

(assert (=> d!1653399 m!6175698))

(assert (=> d!1653399 m!6175700))

(assert (=> b!5116356 m!6175802))

(assert (=> b!5116356 m!6175802))

(declare-fun m!6175854 () Bool)

(assert (=> b!5116356 m!6175854))

(assert (=> b!5116253 d!1653399))

(declare-fun b!5116360 () Bool)

(declare-fun e!3190995 () Bool)

(assert (=> b!5116360 (= e!3190995 (isPrefix!5591 (tail!10055 testedP!265) (tail!10055 knownP!20)))))

(declare-fun b!5116361 () Bool)

(declare-fun e!3190993 () Bool)

(assert (=> b!5116361 (= e!3190993 (>= (size!39492 knownP!20) (size!39492 testedP!265)))))

(declare-fun b!5116358 () Bool)

(declare-fun e!3190994 () Bool)

(assert (=> b!5116358 (= e!3190994 e!3190995)))

(declare-fun res!2178358 () Bool)

(assert (=> b!5116358 (=> (not res!2178358) (not e!3190995))))

(assert (=> b!5116358 (= res!2178358 (not (is-Nil!59151 knownP!20)))))

(declare-fun b!5116359 () Bool)

(declare-fun res!2178357 () Bool)

(assert (=> b!5116359 (=> (not res!2178357) (not e!3190995))))

(assert (=> b!5116359 (= res!2178357 (= (head!10914 testedP!265) (head!10914 knownP!20)))))

(declare-fun d!1653401 () Bool)

(assert (=> d!1653401 e!3190993))

(declare-fun res!2178355 () Bool)

(assert (=> d!1653401 (=> res!2178355 e!3190993)))

(declare-fun lt!2108613 () Bool)

(assert (=> d!1653401 (= res!2178355 (not lt!2108613))))

(assert (=> d!1653401 (= lt!2108613 e!3190994)))

(declare-fun res!2178356 () Bool)

(assert (=> d!1653401 (=> res!2178356 e!3190994)))

(assert (=> d!1653401 (= res!2178356 (is-Nil!59151 testedP!265))))

(assert (=> d!1653401 (= (isPrefix!5591 testedP!265 knownP!20) lt!2108613)))

(assert (= (and d!1653401 (not res!2178356)) b!5116358))

(assert (= (and b!5116358 res!2178358) b!5116359))

(assert (= (and b!5116359 res!2178357) b!5116360))

(assert (= (and d!1653401 (not res!2178355)) b!5116361))

(assert (=> b!5116360 m!6175768))

(assert (=> b!5116360 m!6175802))

(assert (=> b!5116360 m!6175768))

(assert (=> b!5116360 m!6175802))

(declare-fun m!6175856 () Bool)

(assert (=> b!5116360 m!6175856))

(assert (=> b!5116361 m!6175698))

(assert (=> b!5116361 m!6175700))

(assert (=> b!5116359 m!6175776))

(assert (=> b!5116359 m!6175798))

(assert (=> b!5116253 d!1653401))

(declare-fun d!1653403 () Bool)

(assert (=> d!1653403 (isPrefix!5591 testedP!265 knownP!20)))

(declare-fun lt!2108616 () Unit!150275)

(declare-fun choose!37568 (List!59275 List!59275 List!59275) Unit!150275)

(assert (=> d!1653403 (= lt!2108616 (choose!37568 knownP!20 testedP!265 input!5745))))

(assert (=> d!1653403 (isPrefix!5591 knownP!20 input!5745)))

(assert (=> d!1653403 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!728 knownP!20 testedP!265 input!5745) lt!2108616)))

(declare-fun bs!1192376 () Bool)

(assert (= bs!1192376 d!1653403))

(assert (=> bs!1192376 m!6175712))

(declare-fun m!6175858 () Bool)

(assert (=> bs!1192376 m!6175858))

(assert (=> bs!1192376 m!6175690))

(assert (=> b!5116253 d!1653403))

(declare-fun d!1653405 () Bool)

(declare-fun lambda!250852 () Int)

(declare-fun forall!13578 (List!59276 Int) Bool)

(assert (=> d!1653405 (= (inv!78647 setElem!30088) (forall!13578 (exprs!4070 setElem!30088) lambda!250852))))

(declare-fun bs!1192377 () Bool)

(assert (= bs!1192377 d!1653405))

(declare-fun m!6175860 () Bool)

(assert (=> bs!1192377 m!6175860))

(assert (=> setNonEmpty!30088 d!1653405))

(declare-fun d!1653407 () Bool)

(declare-fun c!879047 () Bool)

(assert (=> d!1653407 (= c!879047 (is-Cons!59151 testedP!265))))

(declare-fun e!3190998 () (Set Context!7140))

(assert (=> d!1653407 (= (derivationZipper!85 baseZ!46 testedP!265) e!3190998)))

(declare-fun b!5116366 () Bool)

(assert (=> b!5116366 (= e!3190998 (derivationZipper!85 (derivationStepZipper!821 baseZ!46 (h!65599 testedP!265)) (t!372286 testedP!265)))))

(declare-fun b!5116367 () Bool)

(assert (=> b!5116367 (= e!3190998 baseZ!46)))

(assert (= (and d!1653407 c!879047) b!5116366))

(assert (= (and d!1653407 (not c!879047)) b!5116367))

(declare-fun m!6175862 () Bool)

(assert (=> b!5116366 m!6175862))

(assert (=> b!5116366 m!6175862))

(declare-fun m!6175864 () Bool)

(assert (=> b!5116366 m!6175864))

(assert (=> b!5116250 d!1653407))

(declare-fun bs!1192378 () Bool)

(declare-fun d!1653409 () Bool)

(assert (= bs!1192378 (and d!1653409 d!1653405)))

(declare-fun lambda!250853 () Int)

(assert (=> bs!1192378 (= lambda!250853 lambda!250852)))

(assert (=> d!1653409 (= (inv!78647 setElem!30087) (forall!13578 (exprs!4070 setElem!30087) lambda!250853))))

(declare-fun bs!1192379 () Bool)

(assert (= bs!1192379 d!1653409))

(declare-fun m!6175866 () Bool)

(assert (=> bs!1192379 m!6175866))

(assert (=> setNonEmpty!30087 d!1653409))

(declare-fun b!5116370 () Bool)

(declare-fun e!3191001 () Bool)

(assert (=> b!5116370 (= e!3191001 (isPrefix!5591 (tail!10055 knownP!20) (tail!10055 input!5745)))))

(declare-fun b!5116371 () Bool)

(declare-fun e!3190999 () Bool)

(assert (=> b!5116371 (= e!3190999 (>= (size!39492 input!5745) (size!39492 knownP!20)))))

(declare-fun b!5116368 () Bool)

(declare-fun e!3191000 () Bool)

(assert (=> b!5116368 (= e!3191000 e!3191001)))

(declare-fun res!2178362 () Bool)

(assert (=> b!5116368 (=> (not res!2178362) (not e!3191001))))

(assert (=> b!5116368 (= res!2178362 (not (is-Nil!59151 input!5745)))))

(declare-fun b!5116369 () Bool)

(declare-fun res!2178361 () Bool)

(assert (=> b!5116369 (=> (not res!2178361) (not e!3191001))))

(assert (=> b!5116369 (= res!2178361 (= (head!10914 knownP!20) (head!10914 input!5745)))))

(declare-fun d!1653411 () Bool)

(assert (=> d!1653411 e!3190999))

(declare-fun res!2178359 () Bool)

(assert (=> d!1653411 (=> res!2178359 e!3190999)))

(declare-fun lt!2108617 () Bool)

(assert (=> d!1653411 (= res!2178359 (not lt!2108617))))

(assert (=> d!1653411 (= lt!2108617 e!3191000)))

(declare-fun res!2178360 () Bool)

(assert (=> d!1653411 (=> res!2178360 e!3191000)))

(assert (=> d!1653411 (= res!2178360 (is-Nil!59151 knownP!20))))

(assert (=> d!1653411 (= (isPrefix!5591 knownP!20 input!5745) lt!2108617)))

(assert (= (and d!1653411 (not res!2178360)) b!5116368))

(assert (= (and b!5116368 res!2178362) b!5116369))

(assert (= (and b!5116369 res!2178361) b!5116370))

(assert (= (and d!1653411 (not res!2178359)) b!5116371))

(assert (=> b!5116370 m!6175802))

(assert (=> b!5116370 m!6175770))

(assert (=> b!5116370 m!6175802))

(assert (=> b!5116370 m!6175770))

(declare-fun m!6175868 () Bool)

(assert (=> b!5116370 m!6175868))

(assert (=> b!5116371 m!6175774))

(assert (=> b!5116371 m!6175698))

(assert (=> b!5116369 m!6175798))

(assert (=> b!5116369 m!6175778))

(assert (=> b!5116246 d!1653411))

(declare-fun d!1653413 () Bool)

(declare-fun lt!2108620 () Int)

(assert (=> d!1653413 (>= lt!2108620 0)))

(declare-fun e!3191004 () Int)

(assert (=> d!1653413 (= lt!2108620 e!3191004)))

(declare-fun c!879050 () Bool)

(assert (=> d!1653413 (= c!879050 (is-Nil!59151 knownP!20))))

(assert (=> d!1653413 (= (size!39492 knownP!20) lt!2108620)))

(declare-fun b!5116376 () Bool)

(assert (=> b!5116376 (= e!3191004 0)))

(declare-fun b!5116377 () Bool)

(assert (=> b!5116377 (= e!3191004 (+ 1 (size!39492 (t!372286 knownP!20))))))

(assert (= (and d!1653413 c!879050) b!5116376))

(assert (= (and d!1653413 (not c!879050)) b!5116377))

(declare-fun m!6175870 () Bool)

(assert (=> b!5116377 m!6175870))

(assert (=> b!5116251 d!1653413))

(declare-fun d!1653415 () Bool)

(declare-fun lt!2108621 () Int)

(assert (=> d!1653415 (>= lt!2108621 0)))

(declare-fun e!3191005 () Int)

(assert (=> d!1653415 (= lt!2108621 e!3191005)))

(declare-fun c!879051 () Bool)

(assert (=> d!1653415 (= c!879051 (is-Nil!59151 testedP!265))))

(assert (=> d!1653415 (= (size!39492 testedP!265) lt!2108621)))

(declare-fun b!5116378 () Bool)

(assert (=> b!5116378 (= e!3191005 0)))

(declare-fun b!5116379 () Bool)

(assert (=> b!5116379 (= e!3191005 (+ 1 (size!39492 (t!372286 testedP!265))))))

(assert (= (and d!1653415 c!879051) b!5116378))

(assert (= (and d!1653415 (not c!879051)) b!5116379))

(declare-fun m!6175872 () Bool)

(assert (=> b!5116379 m!6175872))

(assert (=> b!5116251 d!1653415))

(declare-fun b!5116384 () Bool)

(declare-fun e!3191008 () Bool)

(declare-fun tp!1427400 () Bool)

(assert (=> b!5116384 (= e!3191008 (and tp_is_empty!37645 tp!1427400))))

(assert (=> b!5116252 (= tp!1427376 e!3191008)))

(assert (= (and b!5116252 (is-Cons!59151 (t!372286 input!5745))) b!5116384))

(declare-fun b!5116385 () Bool)

(declare-fun e!3191009 () Bool)

(declare-fun tp!1427401 () Bool)

(assert (=> b!5116385 (= e!3191009 (and tp_is_empty!37645 tp!1427401))))

(assert (=> b!5116257 (= tp!1427375 e!3191009)))

(assert (= (and b!5116257 (is-Cons!59151 (t!372286 knownP!20))) b!5116385))

(declare-fun condSetEmpty!30097 () Bool)

(assert (=> setNonEmpty!30088 (= condSetEmpty!30097 (= setRest!30087 (as set.empty (Set Context!7140))))))

(declare-fun setRes!30097 () Bool)

(assert (=> setNonEmpty!30088 (= tp!1427371 setRes!30097)))

(declare-fun setIsEmpty!30097 () Bool)

(assert (=> setIsEmpty!30097 setRes!30097))

(declare-fun tp!1427407 () Bool)

(declare-fun e!3191012 () Bool)

(declare-fun setNonEmpty!30097 () Bool)

(declare-fun setElem!30097 () Context!7140)

(assert (=> setNonEmpty!30097 (= setRes!30097 (and tp!1427407 (inv!78647 setElem!30097) e!3191012))))

(declare-fun setRest!30097 () (Set Context!7140))

(assert (=> setNonEmpty!30097 (= setRest!30087 (set.union (set.insert setElem!30097 (as set.empty (Set Context!7140))) setRest!30097))))

(declare-fun b!5116390 () Bool)

(declare-fun tp!1427406 () Bool)

(assert (=> b!5116390 (= e!3191012 tp!1427406)))

(assert (= (and setNonEmpty!30088 condSetEmpty!30097) setIsEmpty!30097))

(assert (= (and setNonEmpty!30088 (not condSetEmpty!30097)) setNonEmpty!30097))

(assert (= setNonEmpty!30097 b!5116390))

(declare-fun m!6175874 () Bool)

(assert (=> setNonEmpty!30097 m!6175874))

(declare-fun b!5116391 () Bool)

(declare-fun e!3191013 () Bool)

(declare-fun tp!1427408 () Bool)

(assert (=> b!5116391 (= e!3191013 (and tp_is_empty!37645 tp!1427408))))

(assert (=> b!5116249 (= tp!1427373 e!3191013)))

(assert (= (and b!5116249 (is-Cons!59151 (t!372286 testedP!265))) b!5116391))

(declare-fun condSetEmpty!30098 () Bool)

(assert (=> setNonEmpty!30087 (= condSetEmpty!30098 (= setRest!30088 (as set.empty (Set Context!7140))))))

(declare-fun setRes!30098 () Bool)

(assert (=> setNonEmpty!30087 (= tp!1427370 setRes!30098)))

(declare-fun setIsEmpty!30098 () Bool)

(assert (=> setIsEmpty!30098 setRes!30098))

(declare-fun setNonEmpty!30098 () Bool)

(declare-fun setElem!30098 () Context!7140)

(declare-fun e!3191014 () Bool)

(declare-fun tp!1427410 () Bool)

(assert (=> setNonEmpty!30098 (= setRes!30098 (and tp!1427410 (inv!78647 setElem!30098) e!3191014))))

(declare-fun setRest!30098 () (Set Context!7140))

(assert (=> setNonEmpty!30098 (= setRest!30088 (set.union (set.insert setElem!30098 (as set.empty (Set Context!7140))) setRest!30098))))

(declare-fun b!5116392 () Bool)

(declare-fun tp!1427409 () Bool)

(assert (=> b!5116392 (= e!3191014 tp!1427409)))

(assert (= (and setNonEmpty!30087 condSetEmpty!30098) setIsEmpty!30098))

(assert (= (and setNonEmpty!30087 (not condSetEmpty!30098)) setNonEmpty!30098))

(assert (= setNonEmpty!30098 b!5116392))

(declare-fun m!6175876 () Bool)

(assert (=> setNonEmpty!30098 m!6175876))

(declare-fun b!5116397 () Bool)

(declare-fun e!3191017 () Bool)

(declare-fun tp!1427415 () Bool)

(declare-fun tp!1427416 () Bool)

(assert (=> b!5116397 (= e!3191017 (and tp!1427415 tp!1427416))))

(assert (=> b!5116254 (= tp!1427374 e!3191017)))

(assert (= (and b!5116254 (is-Cons!59152 (exprs!4070 setElem!30088))) b!5116397))

(declare-fun b!5116398 () Bool)

(declare-fun e!3191018 () Bool)

(declare-fun tp!1427417 () Bool)

(declare-fun tp!1427418 () Bool)

(assert (=> b!5116398 (= e!3191018 (and tp!1427417 tp!1427418))))

(assert (=> b!5116247 (= tp!1427372 e!3191018)))

(assert (= (and b!5116247 (is-Cons!59152 (exprs!4070 setElem!30087))) b!5116398))

(push 1)

(assert (not b!5116349))

(assert (not b!5116366))

(assert (not b!5116360))

(assert (not b!5116347))

(assert (not b!5116326))

(assert (not b!5116327))

(assert (not setNonEmpty!30097))

(assert (not d!1653397))

(assert (not b!5116319))

(assert (not d!1653389))

(assert (not b!5116391))

(assert (not b!5116333))

(assert (not b!5116361))

(assert (not b!5116344))

(assert (not d!1653393))

(assert (not d!1653387))

(assert (not b!5116369))

(assert (not b!5116343))

(assert (not d!1653385))

(assert (not b!5116332))

(assert (not d!1653395))

(assert (not b!5116356))

(assert (not d!1653391))

(assert (not d!1653405))

(assert (not b!5116377))

(assert (not bm!356510))

(assert (not b!5116370))

(assert tp_is_empty!37645)

(assert (not b!5116346))

(assert (not b!5116351))

(assert (not b!5116371))

(assert (not b!5116385))

(assert (not d!1653409))

(assert (not b!5116348))

(assert (not b!5116350))

(assert (not b!5116397))

(assert (not b!5116392))

(assert (not b!5116379))

(assert (not bm!356509))

(assert (not d!1653403))

(assert (not b!5116384))

(assert (not b!5116390))

(assert (not b!5116320))

(assert (not b!5116321))

(assert (not b!5116359))

(assert (not b!5116398))

(assert (not d!1653399))

(assert (not setNonEmpty!30098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

