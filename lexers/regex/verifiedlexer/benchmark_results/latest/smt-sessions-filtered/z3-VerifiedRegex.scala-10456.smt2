; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540120 () Bool)

(assert start!540120)

(declare-fun b!5118335 () Bool)

(declare-fun res!2179276 () Bool)

(declare-fun e!3192209 () Bool)

(assert (=> b!5118335 (=> res!2179276 e!3192209)))

(declare-fun lt!2109821 () Int)

(declare-fun lt!2109818 () Int)

(assert (=> b!5118335 (= res!2179276 (= lt!2109821 lt!2109818))))

(declare-fun res!2179273 () Bool)

(declare-fun e!3192213 () Bool)

(assert (=> start!540120 (=> (not res!2179273) (not e!3192213))))

(declare-datatypes ((C!28672 0))(
  ( (C!28673 (val!23988 Int)) )
))
(declare-datatypes ((List!59319 0))(
  ( (Nil!59195) (Cons!59195 (h!65643 C!28672) (t!372330 List!59319)) )
))
(declare-fun testedP!265 () List!59319)

(declare-fun input!5745 () List!59319)

(declare-fun isPrefix!5608 (List!59319 List!59319) Bool)

(assert (=> start!540120 (= res!2179273 (isPrefix!5608 testedP!265 input!5745))))

(assert (=> start!540120 e!3192213))

(declare-fun e!3192206 () Bool)

(assert (=> start!540120 e!3192206))

(declare-fun condSetEmpty!30238 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14203 0))(
  ( (ElementMatch!14203 (c!879465 C!28672)) (Concat!23048 (regOne!28918 Regex!14203) (regTwo!28918 Regex!14203)) (EmptyExpr!14203) (Star!14203 (reg!14532 Regex!14203)) (EmptyLang!14203) (Union!14203 (regOne!28919 Regex!14203) (regTwo!28919 Regex!14203)) )
))
(declare-datatypes ((List!59320 0))(
  ( (Nil!59196) (Cons!59196 (h!65644 Regex!14203) (t!372331 List!59320)) )
))
(declare-datatypes ((Context!7174 0))(
  ( (Context!7175 (exprs!4087 List!59320)) )
))
(declare-fun z!4463 () (InoxSet Context!7174))

(assert (=> start!540120 (= condSetEmpty!30238 (= z!4463 ((as const (Array Context!7174 Bool)) false)))))

(declare-fun setRes!30238 () Bool)

(assert (=> start!540120 setRes!30238))

(declare-fun e!3192211 () Bool)

(assert (=> start!540120 e!3192211))

(declare-fun condSetEmpty!30237 () Bool)

(declare-fun baseZ!46 () (InoxSet Context!7174))

(assert (=> start!540120 (= condSetEmpty!30237 (= baseZ!46 ((as const (Array Context!7174 Bool)) false)))))

(declare-fun setRes!30237 () Bool)

(assert (=> start!540120 setRes!30237))

(declare-fun e!3192215 () Bool)

(assert (=> start!540120 e!3192215))

(declare-fun setIsEmpty!30237 () Bool)

(assert (=> setIsEmpty!30237 setRes!30237))

(declare-fun b!5118336 () Bool)

(declare-fun tp_is_empty!37679 () Bool)

(declare-fun tp!1427981 () Bool)

(assert (=> b!5118336 (= e!3192206 (and tp_is_empty!37679 tp!1427981))))

(declare-fun b!5118337 () Bool)

(declare-fun res!2179280 () Bool)

(assert (=> b!5118337 (=> res!2179280 e!3192209)))

(declare-fun lostCauseZipper!1089 ((InoxSet Context!7174)) Bool)

(assert (=> b!5118337 (= res!2179280 (lostCauseZipper!1089 z!4463))))

(declare-fun b!5118338 () Bool)

(declare-fun res!2179272 () Bool)

(assert (=> b!5118338 (=> res!2179272 e!3192209)))

(declare-fun derivationZipper!102 ((InoxSet Context!7174) List!59319) (InoxSet Context!7174))

(assert (=> b!5118338 (= res!2179272 (not (= (derivationZipper!102 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5118339 () Bool)

(declare-fun res!2179267 () Bool)

(declare-fun e!3192210 () Bool)

(assert (=> b!5118339 (=> res!2179267 e!3192210)))

(declare-fun lt!2109814 () List!59319)

(declare-fun ++!13028 (List!59319 List!59319) List!59319)

(assert (=> b!5118339 (= res!2179267 (not (= (++!13028 testedP!265 lt!2109814) input!5745)))))

(declare-fun b!5118340 () Bool)

(declare-fun res!2179274 () Bool)

(assert (=> b!5118340 (=> res!2179274 e!3192209)))

(declare-fun size!39509 (List!59319) Int)

(assert (=> b!5118340 (= res!2179274 (>= lt!2109821 (size!39509 input!5745)))))

(declare-fun b!5118341 () Bool)

(declare-fun e!3192207 () Bool)

(assert (=> b!5118341 (= e!3192207 (not e!3192209))))

(declare-fun res!2179268 () Bool)

(assert (=> b!5118341 (=> res!2179268 e!3192209)))

(declare-fun lt!2109822 () List!59319)

(declare-fun matchZipper!871 ((InoxSet Context!7174) List!59319) Bool)

(assert (=> b!5118341 (= res!2179268 (not (matchZipper!871 z!4463 lt!2109822)))))

(declare-fun knownP!20 () List!59319)

(declare-fun getSuffix!3282 (List!59319 List!59319) List!59319)

(assert (=> b!5118341 (= lt!2109822 (getSuffix!3282 knownP!20 testedP!265))))

(assert (=> b!5118341 (isPrefix!5608 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150329 0))(
  ( (Unit!150330) )
))
(declare-fun lt!2109815 () Unit!150329)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!745 (List!59319 List!59319 List!59319) Unit!150329)

(assert (=> b!5118341 (= lt!2109815 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!745 knownP!20 testedP!265 input!5745))))

(declare-fun b!5118342 () Bool)

(assert (=> b!5118342 (= e!3192213 e!3192207)))

(declare-fun res!2179277 () Bool)

(assert (=> b!5118342 (=> (not res!2179277) (not e!3192207))))

(assert (=> b!5118342 (= res!2179277 (>= lt!2109818 lt!2109821))))

(assert (=> b!5118342 (= lt!2109821 (size!39509 testedP!265))))

(assert (=> b!5118342 (= lt!2109818 (size!39509 knownP!20))))

(declare-fun b!5118343 () Bool)

(declare-fun tp!1427983 () Bool)

(assert (=> b!5118343 (= e!3192211 (and tp_is_empty!37679 tp!1427983))))

(declare-fun b!5118344 () Bool)

(declare-fun e!3192212 () Bool)

(declare-fun e!3192214 () Bool)

(assert (=> b!5118344 (= e!3192212 e!3192214)))

(declare-fun res!2179275 () Bool)

(assert (=> b!5118344 (=> res!2179275 e!3192214)))

(declare-fun lt!2109820 () C!28672)

(declare-fun head!10931 (List!59319) C!28672)

(assert (=> b!5118344 (= res!2179275 (not (= (head!10931 lt!2109822) lt!2109820)))))

(declare-fun lt!2109813 () List!59319)

(assert (=> b!5118344 (= lt!2109813 lt!2109814)))

(declare-fun lt!2109828 () Unit!150329)

(declare-fun lemmaSamePrefixThenSameSuffix!2642 (List!59319 List!59319 List!59319 List!59319 List!59319) Unit!150329)

(assert (=> b!5118344 (= lt!2109828 (lemmaSamePrefixThenSameSuffix!2642 testedP!265 lt!2109813 testedP!265 lt!2109814 input!5745))))

(declare-fun b!5118345 () Bool)

(declare-fun e!3192208 () Bool)

(assert (=> b!5118345 (= e!3192209 e!3192208)))

(declare-fun res!2179278 () Bool)

(assert (=> b!5118345 (=> res!2179278 e!3192208)))

(declare-fun lt!2109817 () List!59319)

(assert (=> b!5118345 (= res!2179278 (not (= (++!13028 knownP!20 lt!2109817) input!5745)))))

(assert (=> b!5118345 (= lt!2109817 (getSuffix!3282 input!5745 knownP!20))))

(declare-fun lt!2109825 () List!59319)

(declare-fun lt!2109826 () List!59319)

(assert (=> b!5118345 (= lt!2109825 (getSuffix!3282 knownP!20 lt!2109826))))

(assert (=> b!5118345 (isPrefix!5608 lt!2109826 knownP!20)))

(declare-fun lt!2109823 () Unit!150329)

(assert (=> b!5118345 (= lt!2109823 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!745 knownP!20 lt!2109826 input!5745))))

(declare-fun derivationStepZipper!838 ((InoxSet Context!7174) C!28672) (InoxSet Context!7174))

(assert (=> b!5118345 (= (derivationZipper!102 baseZ!46 lt!2109826) (derivationStepZipper!838 z!4463 lt!2109820))))

(declare-fun lt!2109816 () Unit!150329)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!59 ((InoxSet Context!7174) (InoxSet Context!7174) List!59319 C!28672) Unit!150329)

(assert (=> b!5118345 (= lt!2109816 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!59 baseZ!46 z!4463 testedP!265 lt!2109820))))

(assert (=> b!5118345 (isPrefix!5608 lt!2109826 input!5745)))

(declare-fun lt!2109819 () Unit!150329)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!994 (List!59319 List!59319) Unit!150329)

(assert (=> b!5118345 (= lt!2109819 (lemmaAddHeadSuffixToPrefixStillPrefix!994 testedP!265 input!5745))))

(assert (=> b!5118345 (= lt!2109826 (++!13028 testedP!265 (Cons!59195 lt!2109820 Nil!59195)))))

(assert (=> b!5118345 (= lt!2109820 (head!10931 lt!2109814))))

(assert (=> b!5118345 (= lt!2109814 (getSuffix!3282 input!5745 testedP!265))))

(declare-fun b!5118346 () Bool)

(declare-fun e!3192205 () Bool)

(declare-fun tp!1427982 () Bool)

(assert (=> b!5118346 (= e!3192205 tp!1427982)))

(declare-fun setIsEmpty!30238 () Bool)

(assert (=> setIsEmpty!30238 setRes!30238))

(declare-fun setElem!30238 () Context!7174)

(declare-fun setNonEmpty!30237 () Bool)

(declare-fun tp!1427985 () Bool)

(declare-fun inv!78688 (Context!7174) Bool)

(assert (=> setNonEmpty!30237 (= setRes!30238 (and tp!1427985 (inv!78688 setElem!30238) e!3192205))))

(declare-fun setRest!30237 () (InoxSet Context!7174))

(assert (=> setNonEmpty!30237 (= z!4463 ((_ map or) (store ((as const (Array Context!7174 Bool)) false) setElem!30238 true) setRest!30237))))

(declare-fun b!5118347 () Bool)

(declare-fun res!2179279 () Bool)

(assert (=> b!5118347 (=> (not res!2179279) (not e!3192207))))

(assert (=> b!5118347 (= res!2179279 (matchZipper!871 baseZ!46 knownP!20))))

(declare-fun b!5118348 () Bool)

(assert (=> b!5118348 (= e!3192210 e!3192212)))

(declare-fun res!2179271 () Bool)

(assert (=> b!5118348 (=> res!2179271 e!3192212)))

(declare-fun lt!2109824 () List!59319)

(assert (=> b!5118348 (= res!2179271 (not (= lt!2109824 input!5745)))))

(declare-fun lt!2109827 () List!59319)

(assert (=> b!5118348 (= lt!2109827 lt!2109824)))

(assert (=> b!5118348 (= lt!2109824 (++!13028 testedP!265 lt!2109813))))

(assert (=> b!5118348 (= lt!2109813 (++!13028 lt!2109822 lt!2109817))))

(declare-fun lt!2109812 () Unit!150329)

(declare-fun lemmaConcatAssociativity!2776 (List!59319 List!59319 List!59319) Unit!150329)

(assert (=> b!5118348 (= lt!2109812 (lemmaConcatAssociativity!2776 testedP!265 lt!2109822 lt!2109817))))

(declare-fun b!5118349 () Bool)

(assert (=> b!5118349 (= e!3192208 e!3192210)))

(declare-fun res!2179270 () Bool)

(assert (=> b!5118349 (=> res!2179270 e!3192210)))

(assert (=> b!5118349 (= res!2179270 (not (= lt!2109827 input!5745)))))

(assert (=> b!5118349 (= lt!2109827 (++!13028 (++!13028 testedP!265 lt!2109822) lt!2109817))))

(declare-fun b!5118350 () Bool)

(declare-fun tp!1427984 () Bool)

(assert (=> b!5118350 (= e!3192215 (and tp_is_empty!37679 tp!1427984))))

(declare-fun b!5118351 () Bool)

(declare-fun e!3192204 () Bool)

(declare-fun tp!1427980 () Bool)

(assert (=> b!5118351 (= e!3192204 tp!1427980)))

(declare-fun b!5118352 () Bool)

(declare-fun $colon$colon!1133 (List!59319 C!28672) List!59319)

(declare-fun tail!10068 (List!59319) List!59319)

(assert (=> b!5118352 (= e!3192214 (= lt!2109822 ($colon$colon!1133 (tail!10068 lt!2109822) lt!2109820)))))

(declare-fun tp!1427979 () Bool)

(declare-fun setElem!30237 () Context!7174)

(declare-fun setNonEmpty!30238 () Bool)

(assert (=> setNonEmpty!30238 (= setRes!30237 (and tp!1427979 (inv!78688 setElem!30237) e!3192204))))

(declare-fun setRest!30238 () (InoxSet Context!7174))

(assert (=> setNonEmpty!30238 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7174 Bool)) false) setElem!30237 true) setRest!30238))))

(declare-fun b!5118353 () Bool)

(declare-fun res!2179269 () Bool)

(assert (=> b!5118353 (=> (not res!2179269) (not e!3192213))))

(assert (=> b!5118353 (= res!2179269 (isPrefix!5608 knownP!20 input!5745))))

(assert (= (and start!540120 res!2179273) b!5118353))

(assert (= (and b!5118353 res!2179269) b!5118342))

(assert (= (and b!5118342 res!2179277) b!5118347))

(assert (= (and b!5118347 res!2179279) b!5118341))

(assert (= (and b!5118341 (not res!2179268)) b!5118338))

(assert (= (and b!5118338 (not res!2179272)) b!5118337))

(assert (= (and b!5118337 (not res!2179280)) b!5118335))

(assert (= (and b!5118335 (not res!2179276)) b!5118340))

(assert (= (and b!5118340 (not res!2179274)) b!5118345))

(assert (= (and b!5118345 (not res!2179278)) b!5118349))

(assert (= (and b!5118349 (not res!2179270)) b!5118339))

(assert (= (and b!5118339 (not res!2179267)) b!5118348))

(assert (= (and b!5118348 (not res!2179271)) b!5118344))

(assert (= (and b!5118344 (not res!2179275)) b!5118352))

(get-info :version)

(assert (= (and start!540120 ((_ is Cons!59195) input!5745)) b!5118336))

(assert (= (and start!540120 condSetEmpty!30238) setIsEmpty!30238))

(assert (= (and start!540120 (not condSetEmpty!30238)) setNonEmpty!30237))

(assert (= setNonEmpty!30237 b!5118346))

(assert (= (and start!540120 ((_ is Cons!59195) testedP!265)) b!5118343))

(assert (= (and start!540120 condSetEmpty!30237) setIsEmpty!30237))

(assert (= (and start!540120 (not condSetEmpty!30237)) setNonEmpty!30238))

(assert (= setNonEmpty!30238 b!5118351))

(assert (= (and start!540120 ((_ is Cons!59195) knownP!20)) b!5118350))

(declare-fun m!6178332 () Bool)

(assert (=> b!5118340 m!6178332))

(declare-fun m!6178334 () Bool)

(assert (=> start!540120 m!6178334))

(declare-fun m!6178336 () Bool)

(assert (=> b!5118347 m!6178336))

(declare-fun m!6178338 () Bool)

(assert (=> b!5118344 m!6178338))

(declare-fun m!6178340 () Bool)

(assert (=> b!5118344 m!6178340))

(declare-fun m!6178342 () Bool)

(assert (=> b!5118348 m!6178342))

(declare-fun m!6178344 () Bool)

(assert (=> b!5118348 m!6178344))

(declare-fun m!6178346 () Bool)

(assert (=> b!5118348 m!6178346))

(declare-fun m!6178348 () Bool)

(assert (=> b!5118342 m!6178348))

(declare-fun m!6178350 () Bool)

(assert (=> b!5118342 m!6178350))

(declare-fun m!6178352 () Bool)

(assert (=> b!5118352 m!6178352))

(assert (=> b!5118352 m!6178352))

(declare-fun m!6178354 () Bool)

(assert (=> b!5118352 m!6178354))

(declare-fun m!6178356 () Bool)

(assert (=> b!5118345 m!6178356))

(declare-fun m!6178358 () Bool)

(assert (=> b!5118345 m!6178358))

(declare-fun m!6178360 () Bool)

(assert (=> b!5118345 m!6178360))

(declare-fun m!6178362 () Bool)

(assert (=> b!5118345 m!6178362))

(declare-fun m!6178364 () Bool)

(assert (=> b!5118345 m!6178364))

(declare-fun m!6178366 () Bool)

(assert (=> b!5118345 m!6178366))

(declare-fun m!6178368 () Bool)

(assert (=> b!5118345 m!6178368))

(declare-fun m!6178370 () Bool)

(assert (=> b!5118345 m!6178370))

(declare-fun m!6178372 () Bool)

(assert (=> b!5118345 m!6178372))

(declare-fun m!6178374 () Bool)

(assert (=> b!5118345 m!6178374))

(declare-fun m!6178376 () Bool)

(assert (=> b!5118345 m!6178376))

(declare-fun m!6178378 () Bool)

(assert (=> b!5118345 m!6178378))

(declare-fun m!6178380 () Bool)

(assert (=> b!5118345 m!6178380))

(declare-fun m!6178382 () Bool)

(assert (=> b!5118338 m!6178382))

(declare-fun m!6178384 () Bool)

(assert (=> setNonEmpty!30237 m!6178384))

(declare-fun m!6178386 () Bool)

(assert (=> b!5118349 m!6178386))

(assert (=> b!5118349 m!6178386))

(declare-fun m!6178388 () Bool)

(assert (=> b!5118349 m!6178388))

(declare-fun m!6178390 () Bool)

(assert (=> b!5118353 m!6178390))

(declare-fun m!6178392 () Bool)

(assert (=> b!5118341 m!6178392))

(declare-fun m!6178394 () Bool)

(assert (=> b!5118341 m!6178394))

(declare-fun m!6178396 () Bool)

(assert (=> b!5118341 m!6178396))

(declare-fun m!6178398 () Bool)

(assert (=> b!5118341 m!6178398))

(declare-fun m!6178400 () Bool)

(assert (=> setNonEmpty!30238 m!6178400))

(declare-fun m!6178402 () Bool)

(assert (=> b!5118337 m!6178402))

(declare-fun m!6178404 () Bool)

(assert (=> b!5118339 m!6178404))

(check-sat (not b!5118349) (not b!5118343) (not b!5118351) (not b!5118341) (not b!5118345) (not b!5118353) (not b!5118339) (not b!5118347) (not b!5118344) (not b!5118336) (not b!5118342) (not b!5118350) tp_is_empty!37679 (not setNonEmpty!30237) (not setNonEmpty!30238) (not b!5118346) (not b!5118340) (not b!5118352) (not b!5118348) (not b!5118337) (not b!5118338) (not start!540120))
(check-sat)
(get-model)

(declare-fun b!5118365 () Bool)

(declare-fun e!3192224 () Bool)

(assert (=> b!5118365 (= e!3192224 (>= (size!39509 input!5745) (size!39509 knownP!20)))))

(declare-fun b!5118362 () Bool)

(declare-fun e!3192223 () Bool)

(declare-fun e!3192222 () Bool)

(assert (=> b!5118362 (= e!3192223 e!3192222)))

(declare-fun res!2179290 () Bool)

(assert (=> b!5118362 (=> (not res!2179290) (not e!3192222))))

(assert (=> b!5118362 (= res!2179290 (not ((_ is Nil!59195) input!5745)))))

(declare-fun d!1653993 () Bool)

(assert (=> d!1653993 e!3192224))

(declare-fun res!2179291 () Bool)

(assert (=> d!1653993 (=> res!2179291 e!3192224)))

(declare-fun lt!2109831 () Bool)

(assert (=> d!1653993 (= res!2179291 (not lt!2109831))))

(assert (=> d!1653993 (= lt!2109831 e!3192223)))

(declare-fun res!2179289 () Bool)

(assert (=> d!1653993 (=> res!2179289 e!3192223)))

(assert (=> d!1653993 (= res!2179289 ((_ is Nil!59195) knownP!20))))

(assert (=> d!1653993 (= (isPrefix!5608 knownP!20 input!5745) lt!2109831)))

(declare-fun b!5118363 () Bool)

(declare-fun res!2179292 () Bool)

(assert (=> b!5118363 (=> (not res!2179292) (not e!3192222))))

(assert (=> b!5118363 (= res!2179292 (= (head!10931 knownP!20) (head!10931 input!5745)))))

(declare-fun b!5118364 () Bool)

(assert (=> b!5118364 (= e!3192222 (isPrefix!5608 (tail!10068 knownP!20) (tail!10068 input!5745)))))

(assert (= (and d!1653993 (not res!2179289)) b!5118362))

(assert (= (and b!5118362 res!2179290) b!5118363))

(assert (= (and b!5118363 res!2179292) b!5118364))

(assert (= (and d!1653993 (not res!2179291)) b!5118365))

(assert (=> b!5118365 m!6178332))

(assert (=> b!5118365 m!6178350))

(declare-fun m!6178406 () Bool)

(assert (=> b!5118363 m!6178406))

(declare-fun m!6178408 () Bool)

(assert (=> b!5118363 m!6178408))

(declare-fun m!6178410 () Bool)

(assert (=> b!5118364 m!6178410))

(declare-fun m!6178412 () Bool)

(assert (=> b!5118364 m!6178412))

(assert (=> b!5118364 m!6178410))

(assert (=> b!5118364 m!6178412))

(declare-fun m!6178414 () Bool)

(assert (=> b!5118364 m!6178414))

(assert (=> b!5118353 d!1653993))

(declare-fun b!5118369 () Bool)

(declare-fun e!3192227 () Bool)

(assert (=> b!5118369 (= e!3192227 (>= (size!39509 input!5745) (size!39509 testedP!265)))))

(declare-fun b!5118366 () Bool)

(declare-fun e!3192226 () Bool)

(declare-fun e!3192225 () Bool)

(assert (=> b!5118366 (= e!3192226 e!3192225)))

(declare-fun res!2179294 () Bool)

(assert (=> b!5118366 (=> (not res!2179294) (not e!3192225))))

(assert (=> b!5118366 (= res!2179294 (not ((_ is Nil!59195) input!5745)))))

(declare-fun d!1653997 () Bool)

(assert (=> d!1653997 e!3192227))

(declare-fun res!2179295 () Bool)

(assert (=> d!1653997 (=> res!2179295 e!3192227)))

(declare-fun lt!2109832 () Bool)

(assert (=> d!1653997 (= res!2179295 (not lt!2109832))))

(assert (=> d!1653997 (= lt!2109832 e!3192226)))

(declare-fun res!2179293 () Bool)

(assert (=> d!1653997 (=> res!2179293 e!3192226)))

(assert (=> d!1653997 (= res!2179293 ((_ is Nil!59195) testedP!265))))

(assert (=> d!1653997 (= (isPrefix!5608 testedP!265 input!5745) lt!2109832)))

(declare-fun b!5118367 () Bool)

(declare-fun res!2179296 () Bool)

(assert (=> b!5118367 (=> (not res!2179296) (not e!3192225))))

(assert (=> b!5118367 (= res!2179296 (= (head!10931 testedP!265) (head!10931 input!5745)))))

(declare-fun b!5118368 () Bool)

(assert (=> b!5118368 (= e!3192225 (isPrefix!5608 (tail!10068 testedP!265) (tail!10068 input!5745)))))

(assert (= (and d!1653997 (not res!2179293)) b!5118366))

(assert (= (and b!5118366 res!2179294) b!5118367))

(assert (= (and b!5118367 res!2179296) b!5118368))

(assert (= (and d!1653997 (not res!2179295)) b!5118369))

(assert (=> b!5118369 m!6178332))

(assert (=> b!5118369 m!6178348))

(declare-fun m!6178416 () Bool)

(assert (=> b!5118367 m!6178416))

(assert (=> b!5118367 m!6178408))

(declare-fun m!6178418 () Bool)

(assert (=> b!5118368 m!6178418))

(assert (=> b!5118368 m!6178412))

(assert (=> b!5118368 m!6178418))

(assert (=> b!5118368 m!6178412))

(declare-fun m!6178420 () Bool)

(assert (=> b!5118368 m!6178420))

(assert (=> start!540120 d!1653997))

(declare-fun d!1653999 () Bool)

(assert (=> d!1653999 (= (head!10931 lt!2109822) (h!65643 lt!2109822))))

(assert (=> b!5118344 d!1653999))

(declare-fun d!1654001 () Bool)

(assert (=> d!1654001 (= lt!2109813 lt!2109814)))

(declare-fun lt!2109835 () Unit!150329)

(declare-fun choose!37603 (List!59319 List!59319 List!59319 List!59319 List!59319) Unit!150329)

(assert (=> d!1654001 (= lt!2109835 (choose!37603 testedP!265 lt!2109813 testedP!265 lt!2109814 input!5745))))

(assert (=> d!1654001 (isPrefix!5608 testedP!265 input!5745)))

(assert (=> d!1654001 (= (lemmaSamePrefixThenSameSuffix!2642 testedP!265 lt!2109813 testedP!265 lt!2109814 input!5745) lt!2109835)))

(declare-fun bs!1192510 () Bool)

(assert (= bs!1192510 d!1654001))

(declare-fun m!6178422 () Bool)

(assert (=> bs!1192510 m!6178422))

(assert (=> bs!1192510 m!6178334))

(assert (=> b!5118344 d!1654001))

(declare-fun d!1654003 () Bool)

(declare-fun lambda!251111 () Int)

(declare-fun forall!13599 (List!59320 Int) Bool)

(assert (=> d!1654003 (= (inv!78688 setElem!30237) (forall!13599 (exprs!4087 setElem!30237) lambda!251111))))

(declare-fun bs!1192524 () Bool)

(assert (= bs!1192524 d!1654003))

(declare-fun m!6178614 () Bool)

(assert (=> bs!1192524 m!6178614))

(assert (=> setNonEmpty!30238 d!1654003))

(declare-fun b!5118502 () Bool)

(declare-fun e!3192308 () Bool)

(assert (=> b!5118502 (= e!3192308 (>= (size!39509 knownP!20) (size!39509 lt!2109826)))))

(declare-fun b!5118499 () Bool)

(declare-fun e!3192307 () Bool)

(declare-fun e!3192306 () Bool)

(assert (=> b!5118499 (= e!3192307 e!3192306)))

(declare-fun res!2179344 () Bool)

(assert (=> b!5118499 (=> (not res!2179344) (not e!3192306))))

(assert (=> b!5118499 (= res!2179344 (not ((_ is Nil!59195) knownP!20)))))

(declare-fun d!1654077 () Bool)

(assert (=> d!1654077 e!3192308))

(declare-fun res!2179345 () Bool)

(assert (=> d!1654077 (=> res!2179345 e!3192308)))

(declare-fun lt!2109903 () Bool)

(assert (=> d!1654077 (= res!2179345 (not lt!2109903))))

(assert (=> d!1654077 (= lt!2109903 e!3192307)))

(declare-fun res!2179343 () Bool)

(assert (=> d!1654077 (=> res!2179343 e!3192307)))

(assert (=> d!1654077 (= res!2179343 ((_ is Nil!59195) lt!2109826))))

(assert (=> d!1654077 (= (isPrefix!5608 lt!2109826 knownP!20) lt!2109903)))

(declare-fun b!5118500 () Bool)

(declare-fun res!2179346 () Bool)

(assert (=> b!5118500 (=> (not res!2179346) (not e!3192306))))

(assert (=> b!5118500 (= res!2179346 (= (head!10931 lt!2109826) (head!10931 knownP!20)))))

(declare-fun b!5118501 () Bool)

(assert (=> b!5118501 (= e!3192306 (isPrefix!5608 (tail!10068 lt!2109826) (tail!10068 knownP!20)))))

(assert (= (and d!1654077 (not res!2179343)) b!5118499))

(assert (= (and b!5118499 res!2179344) b!5118500))

(assert (= (and b!5118500 res!2179346) b!5118501))

(assert (= (and d!1654077 (not res!2179345)) b!5118502))

(assert (=> b!5118502 m!6178350))

(declare-fun m!6178616 () Bool)

(assert (=> b!5118502 m!6178616))

(declare-fun m!6178618 () Bool)

(assert (=> b!5118500 m!6178618))

(assert (=> b!5118500 m!6178406))

(declare-fun m!6178620 () Bool)

(assert (=> b!5118501 m!6178620))

(assert (=> b!5118501 m!6178410))

(assert (=> b!5118501 m!6178620))

(assert (=> b!5118501 m!6178410))

(declare-fun m!6178622 () Bool)

(assert (=> b!5118501 m!6178622))

(assert (=> b!5118345 d!1654077))

(declare-fun d!1654079 () Bool)

(assert (=> d!1654079 (= (head!10931 lt!2109814) (h!65643 lt!2109814))))

(assert (=> b!5118345 d!1654079))

(declare-fun d!1654081 () Bool)

(assert (=> d!1654081 (= (derivationZipper!102 baseZ!46 (++!13028 testedP!265 (Cons!59195 lt!2109820 Nil!59195))) (derivationStepZipper!838 z!4463 lt!2109820))))

(declare-fun lt!2109906 () Unit!150329)

(declare-fun choose!37604 ((InoxSet Context!7174) (InoxSet Context!7174) List!59319 C!28672) Unit!150329)

(assert (=> d!1654081 (= lt!2109906 (choose!37604 baseZ!46 z!4463 testedP!265 lt!2109820))))

(assert (=> d!1654081 (= (derivationZipper!102 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1654081 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!59 baseZ!46 z!4463 testedP!265 lt!2109820) lt!2109906)))

(declare-fun bs!1192525 () Bool)

(assert (= bs!1192525 d!1654081))

(assert (=> bs!1192525 m!6178382))

(assert (=> bs!1192525 m!6178372))

(assert (=> bs!1192525 m!6178372))

(declare-fun m!6178624 () Bool)

(assert (=> bs!1192525 m!6178624))

(declare-fun m!6178626 () Bool)

(assert (=> bs!1192525 m!6178626))

(assert (=> bs!1192525 m!6178380))

(assert (=> b!5118345 d!1654081))

(declare-fun b!5118513 () Bool)

(declare-fun res!2179351 () Bool)

(declare-fun e!3192314 () Bool)

(assert (=> b!5118513 (=> (not res!2179351) (not e!3192314))))

(declare-fun lt!2109909 () List!59319)

(assert (=> b!5118513 (= res!2179351 (= (size!39509 lt!2109909) (+ (size!39509 knownP!20) (size!39509 lt!2109817))))))

(declare-fun b!5118511 () Bool)

(declare-fun e!3192313 () List!59319)

(assert (=> b!5118511 (= e!3192313 lt!2109817)))

(declare-fun b!5118512 () Bool)

(assert (=> b!5118512 (= e!3192313 (Cons!59195 (h!65643 knownP!20) (++!13028 (t!372330 knownP!20) lt!2109817)))))

(declare-fun b!5118514 () Bool)

(assert (=> b!5118514 (= e!3192314 (or (not (= lt!2109817 Nil!59195)) (= lt!2109909 knownP!20)))))

(declare-fun d!1654083 () Bool)

(assert (=> d!1654083 e!3192314))

(declare-fun res!2179352 () Bool)

(assert (=> d!1654083 (=> (not res!2179352) (not e!3192314))))

(declare-fun content!10525 (List!59319) (InoxSet C!28672))

(assert (=> d!1654083 (= res!2179352 (= (content!10525 lt!2109909) ((_ map or) (content!10525 knownP!20) (content!10525 lt!2109817))))))

(assert (=> d!1654083 (= lt!2109909 e!3192313)))

(declare-fun c!879511 () Bool)

(assert (=> d!1654083 (= c!879511 ((_ is Nil!59195) knownP!20))))

(assert (=> d!1654083 (= (++!13028 knownP!20 lt!2109817) lt!2109909)))

(assert (= (and d!1654083 c!879511) b!5118511))

(assert (= (and d!1654083 (not c!879511)) b!5118512))

(assert (= (and d!1654083 res!2179352) b!5118513))

(assert (= (and b!5118513 res!2179351) b!5118514))

(declare-fun m!6178628 () Bool)

(assert (=> b!5118513 m!6178628))

(assert (=> b!5118513 m!6178350))

(declare-fun m!6178630 () Bool)

(assert (=> b!5118513 m!6178630))

(declare-fun m!6178632 () Bool)

(assert (=> b!5118512 m!6178632))

(declare-fun m!6178634 () Bool)

(assert (=> d!1654083 m!6178634))

(declare-fun m!6178636 () Bool)

(assert (=> d!1654083 m!6178636))

(declare-fun m!6178638 () Bool)

(assert (=> d!1654083 m!6178638))

(assert (=> b!5118345 d!1654083))

(declare-fun b!5118517 () Bool)

(declare-fun res!2179353 () Bool)

(declare-fun e!3192316 () Bool)

(assert (=> b!5118517 (=> (not res!2179353) (not e!3192316))))

(declare-fun lt!2109910 () List!59319)

(assert (=> b!5118517 (= res!2179353 (= (size!39509 lt!2109910) (+ (size!39509 testedP!265) (size!39509 (Cons!59195 lt!2109820 Nil!59195)))))))

(declare-fun b!5118515 () Bool)

(declare-fun e!3192315 () List!59319)

(assert (=> b!5118515 (= e!3192315 (Cons!59195 lt!2109820 Nil!59195))))

(declare-fun b!5118516 () Bool)

(assert (=> b!5118516 (= e!3192315 (Cons!59195 (h!65643 testedP!265) (++!13028 (t!372330 testedP!265) (Cons!59195 lt!2109820 Nil!59195))))))

(declare-fun b!5118518 () Bool)

(assert (=> b!5118518 (= e!3192316 (or (not (= (Cons!59195 lt!2109820 Nil!59195) Nil!59195)) (= lt!2109910 testedP!265)))))

(declare-fun d!1654085 () Bool)

(assert (=> d!1654085 e!3192316))

(declare-fun res!2179354 () Bool)

(assert (=> d!1654085 (=> (not res!2179354) (not e!3192316))))

(assert (=> d!1654085 (= res!2179354 (= (content!10525 lt!2109910) ((_ map or) (content!10525 testedP!265) (content!10525 (Cons!59195 lt!2109820 Nil!59195)))))))

(assert (=> d!1654085 (= lt!2109910 e!3192315)))

(declare-fun c!879512 () Bool)

(assert (=> d!1654085 (= c!879512 ((_ is Nil!59195) testedP!265))))

(assert (=> d!1654085 (= (++!13028 testedP!265 (Cons!59195 lt!2109820 Nil!59195)) lt!2109910)))

(assert (= (and d!1654085 c!879512) b!5118515))

(assert (= (and d!1654085 (not c!879512)) b!5118516))

(assert (= (and d!1654085 res!2179354) b!5118517))

(assert (= (and b!5118517 res!2179353) b!5118518))

(declare-fun m!6178640 () Bool)

(assert (=> b!5118517 m!6178640))

(assert (=> b!5118517 m!6178348))

(declare-fun m!6178642 () Bool)

(assert (=> b!5118517 m!6178642))

(declare-fun m!6178644 () Bool)

(assert (=> b!5118516 m!6178644))

(declare-fun m!6178646 () Bool)

(assert (=> d!1654085 m!6178646))

(declare-fun m!6178648 () Bool)

(assert (=> d!1654085 m!6178648))

(declare-fun m!6178650 () Bool)

(assert (=> d!1654085 m!6178650))

(assert (=> b!5118345 d!1654085))

(declare-fun d!1654087 () Bool)

(assert (=> d!1654087 (isPrefix!5608 (++!13028 testedP!265 (Cons!59195 (head!10931 (getSuffix!3282 input!5745 testedP!265)) Nil!59195)) input!5745)))

(declare-fun lt!2109913 () Unit!150329)

(declare-fun choose!37605 (List!59319 List!59319) Unit!150329)

(assert (=> d!1654087 (= lt!2109913 (choose!37605 testedP!265 input!5745))))

(assert (=> d!1654087 (isPrefix!5608 testedP!265 input!5745)))

(assert (=> d!1654087 (= (lemmaAddHeadSuffixToPrefixStillPrefix!994 testedP!265 input!5745) lt!2109913)))

(declare-fun bs!1192526 () Bool)

(assert (= bs!1192526 d!1654087))

(assert (=> bs!1192526 m!6178356))

(declare-fun m!6178652 () Bool)

(assert (=> bs!1192526 m!6178652))

(assert (=> bs!1192526 m!6178356))

(assert (=> bs!1192526 m!6178334))

(declare-fun m!6178654 () Bool)

(assert (=> bs!1192526 m!6178654))

(declare-fun m!6178656 () Bool)

(assert (=> bs!1192526 m!6178656))

(declare-fun m!6178658 () Bool)

(assert (=> bs!1192526 m!6178658))

(assert (=> bs!1192526 m!6178656))

(assert (=> b!5118345 d!1654087))

(declare-fun d!1654089 () Bool)

(assert (=> d!1654089 (isPrefix!5608 lt!2109826 knownP!20)))

(declare-fun lt!2109916 () Unit!150329)

(declare-fun choose!37606 (List!59319 List!59319 List!59319) Unit!150329)

(assert (=> d!1654089 (= lt!2109916 (choose!37606 knownP!20 lt!2109826 input!5745))))

(assert (=> d!1654089 (isPrefix!5608 knownP!20 input!5745)))

(assert (=> d!1654089 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!745 knownP!20 lt!2109826 input!5745) lt!2109916)))

(declare-fun bs!1192527 () Bool)

(assert (= bs!1192527 d!1654089))

(assert (=> bs!1192527 m!6178366))

(declare-fun m!6178660 () Bool)

(assert (=> bs!1192527 m!6178660))

(assert (=> bs!1192527 m!6178390))

(assert (=> b!5118345 d!1654089))

(declare-fun d!1654091 () Bool)

(declare-fun c!879515 () Bool)

(assert (=> d!1654091 (= c!879515 ((_ is Cons!59195) lt!2109826))))

(declare-fun e!3192319 () (InoxSet Context!7174))

(assert (=> d!1654091 (= (derivationZipper!102 baseZ!46 lt!2109826) e!3192319)))

(declare-fun b!5118523 () Bool)

(assert (=> b!5118523 (= e!3192319 (derivationZipper!102 (derivationStepZipper!838 baseZ!46 (h!65643 lt!2109826)) (t!372330 lt!2109826)))))

(declare-fun b!5118524 () Bool)

(assert (=> b!5118524 (= e!3192319 baseZ!46)))

(assert (= (and d!1654091 c!879515) b!5118523))

(assert (= (and d!1654091 (not c!879515)) b!5118524))

(declare-fun m!6178662 () Bool)

(assert (=> b!5118523 m!6178662))

(assert (=> b!5118523 m!6178662))

(declare-fun m!6178664 () Bool)

(assert (=> b!5118523 m!6178664))

(assert (=> b!5118345 d!1654091))

(declare-fun d!1654093 () Bool)

(assert (=> d!1654093 true))

(declare-fun lambda!251114 () Int)

(declare-fun flatMap!353 ((InoxSet Context!7174) Int) (InoxSet Context!7174))

(assert (=> d!1654093 (= (derivationStepZipper!838 z!4463 lt!2109820) (flatMap!353 z!4463 lambda!251114))))

(declare-fun bs!1192528 () Bool)

(assert (= bs!1192528 d!1654093))

(declare-fun m!6178666 () Bool)

(assert (=> bs!1192528 m!6178666))

(assert (=> b!5118345 d!1654093))

(declare-fun d!1654095 () Bool)

(declare-fun lt!2109919 () List!59319)

(assert (=> d!1654095 (= (++!13028 testedP!265 lt!2109919) input!5745)))

(declare-fun e!3192322 () List!59319)

(assert (=> d!1654095 (= lt!2109919 e!3192322)))

(declare-fun c!879520 () Bool)

(assert (=> d!1654095 (= c!879520 ((_ is Cons!59195) testedP!265))))

(assert (=> d!1654095 (>= (size!39509 input!5745) (size!39509 testedP!265))))

(assert (=> d!1654095 (= (getSuffix!3282 input!5745 testedP!265) lt!2109919)))

(declare-fun b!5118531 () Bool)

(assert (=> b!5118531 (= e!3192322 (getSuffix!3282 (tail!10068 input!5745) (t!372330 testedP!265)))))

(declare-fun b!5118532 () Bool)

(assert (=> b!5118532 (= e!3192322 input!5745)))

(assert (= (and d!1654095 c!879520) b!5118531))

(assert (= (and d!1654095 (not c!879520)) b!5118532))

(declare-fun m!6178668 () Bool)

(assert (=> d!1654095 m!6178668))

(assert (=> d!1654095 m!6178332))

(assert (=> d!1654095 m!6178348))

(assert (=> b!5118531 m!6178412))

(assert (=> b!5118531 m!6178412))

(declare-fun m!6178670 () Bool)

(assert (=> b!5118531 m!6178670))

(assert (=> b!5118345 d!1654095))

(declare-fun d!1654097 () Bool)

(declare-fun lt!2109920 () List!59319)

(assert (=> d!1654097 (= (++!13028 lt!2109826 lt!2109920) knownP!20)))

(declare-fun e!3192323 () List!59319)

(assert (=> d!1654097 (= lt!2109920 e!3192323)))

(declare-fun c!879521 () Bool)

(assert (=> d!1654097 (= c!879521 ((_ is Cons!59195) lt!2109826))))

(assert (=> d!1654097 (>= (size!39509 knownP!20) (size!39509 lt!2109826))))

(assert (=> d!1654097 (= (getSuffix!3282 knownP!20 lt!2109826) lt!2109920)))

(declare-fun b!5118533 () Bool)

(assert (=> b!5118533 (= e!3192323 (getSuffix!3282 (tail!10068 knownP!20) (t!372330 lt!2109826)))))

(declare-fun b!5118534 () Bool)

(assert (=> b!5118534 (= e!3192323 knownP!20)))

(assert (= (and d!1654097 c!879521) b!5118533))

(assert (= (and d!1654097 (not c!879521)) b!5118534))

(declare-fun m!6178672 () Bool)

(assert (=> d!1654097 m!6178672))

(assert (=> d!1654097 m!6178350))

(assert (=> d!1654097 m!6178616))

(assert (=> b!5118533 m!6178410))

(assert (=> b!5118533 m!6178410))

(declare-fun m!6178674 () Bool)

(assert (=> b!5118533 m!6178674))

(assert (=> b!5118345 d!1654097))

(declare-fun b!5118538 () Bool)

(declare-fun e!3192326 () Bool)

(assert (=> b!5118538 (= e!3192326 (>= (size!39509 input!5745) (size!39509 lt!2109826)))))

(declare-fun b!5118535 () Bool)

(declare-fun e!3192325 () Bool)

(declare-fun e!3192324 () Bool)

(assert (=> b!5118535 (= e!3192325 e!3192324)))

(declare-fun res!2179356 () Bool)

(assert (=> b!5118535 (=> (not res!2179356) (not e!3192324))))

(assert (=> b!5118535 (= res!2179356 (not ((_ is Nil!59195) input!5745)))))

(declare-fun d!1654099 () Bool)

(assert (=> d!1654099 e!3192326))

(declare-fun res!2179357 () Bool)

(assert (=> d!1654099 (=> res!2179357 e!3192326)))

(declare-fun lt!2109921 () Bool)

(assert (=> d!1654099 (= res!2179357 (not lt!2109921))))

(assert (=> d!1654099 (= lt!2109921 e!3192325)))

(declare-fun res!2179355 () Bool)

(assert (=> d!1654099 (=> res!2179355 e!3192325)))

(assert (=> d!1654099 (= res!2179355 ((_ is Nil!59195) lt!2109826))))

(assert (=> d!1654099 (= (isPrefix!5608 lt!2109826 input!5745) lt!2109921)))

(declare-fun b!5118536 () Bool)

(declare-fun res!2179358 () Bool)

(assert (=> b!5118536 (=> (not res!2179358) (not e!3192324))))

(assert (=> b!5118536 (= res!2179358 (= (head!10931 lt!2109826) (head!10931 input!5745)))))

(declare-fun b!5118537 () Bool)

(assert (=> b!5118537 (= e!3192324 (isPrefix!5608 (tail!10068 lt!2109826) (tail!10068 input!5745)))))

(assert (= (and d!1654099 (not res!2179355)) b!5118535))

(assert (= (and b!5118535 res!2179356) b!5118536))

(assert (= (and b!5118536 res!2179358) b!5118537))

(assert (= (and d!1654099 (not res!2179357)) b!5118538))

(assert (=> b!5118538 m!6178332))

(assert (=> b!5118538 m!6178616))

(assert (=> b!5118536 m!6178618))

(assert (=> b!5118536 m!6178408))

(assert (=> b!5118537 m!6178620))

(assert (=> b!5118537 m!6178412))

(assert (=> b!5118537 m!6178620))

(assert (=> b!5118537 m!6178412))

(declare-fun m!6178676 () Bool)

(assert (=> b!5118537 m!6178676))

(assert (=> b!5118345 d!1654099))

(declare-fun d!1654101 () Bool)

(declare-fun lt!2109922 () List!59319)

(assert (=> d!1654101 (= (++!13028 knownP!20 lt!2109922) input!5745)))

(declare-fun e!3192327 () List!59319)

(assert (=> d!1654101 (= lt!2109922 e!3192327)))

(declare-fun c!879522 () Bool)

(assert (=> d!1654101 (= c!879522 ((_ is Cons!59195) knownP!20))))

(assert (=> d!1654101 (>= (size!39509 input!5745) (size!39509 knownP!20))))

(assert (=> d!1654101 (= (getSuffix!3282 input!5745 knownP!20) lt!2109922)))

(declare-fun b!5118539 () Bool)

(assert (=> b!5118539 (= e!3192327 (getSuffix!3282 (tail!10068 input!5745) (t!372330 knownP!20)))))

(declare-fun b!5118540 () Bool)

(assert (=> b!5118540 (= e!3192327 input!5745)))

(assert (= (and d!1654101 c!879522) b!5118539))

(assert (= (and d!1654101 (not c!879522)) b!5118540))

(declare-fun m!6178678 () Bool)

(assert (=> d!1654101 m!6178678))

(assert (=> d!1654101 m!6178332))

(assert (=> d!1654101 m!6178350))

(assert (=> b!5118539 m!6178412))

(assert (=> b!5118539 m!6178412))

(declare-fun m!6178680 () Bool)

(assert (=> b!5118539 m!6178680))

(assert (=> b!5118345 d!1654101))

(declare-fun d!1654103 () Bool)

(assert (=> d!1654103 (= ($colon$colon!1133 (tail!10068 lt!2109822) lt!2109820) (Cons!59195 lt!2109820 (tail!10068 lt!2109822)))))

(assert (=> b!5118352 d!1654103))

(declare-fun d!1654105 () Bool)

(assert (=> d!1654105 (= (tail!10068 lt!2109822) (t!372330 lt!2109822))))

(assert (=> b!5118352 d!1654105))

(declare-fun d!1654107 () Bool)

(declare-fun lt!2109925 () Int)

(assert (=> d!1654107 (>= lt!2109925 0)))

(declare-fun e!3192330 () Int)

(assert (=> d!1654107 (= lt!2109925 e!3192330)))

(declare-fun c!879525 () Bool)

(assert (=> d!1654107 (= c!879525 ((_ is Nil!59195) testedP!265))))

(assert (=> d!1654107 (= (size!39509 testedP!265) lt!2109925)))

(declare-fun b!5118545 () Bool)

(assert (=> b!5118545 (= e!3192330 0)))

(declare-fun b!5118546 () Bool)

(assert (=> b!5118546 (= e!3192330 (+ 1 (size!39509 (t!372330 testedP!265))))))

(assert (= (and d!1654107 c!879525) b!5118545))

(assert (= (and d!1654107 (not c!879525)) b!5118546))

(declare-fun m!6178682 () Bool)

(assert (=> b!5118546 m!6178682))

(assert (=> b!5118342 d!1654107))

(declare-fun d!1654109 () Bool)

(declare-fun lt!2109926 () Int)

(assert (=> d!1654109 (>= lt!2109926 0)))

(declare-fun e!3192331 () Int)

(assert (=> d!1654109 (= lt!2109926 e!3192331)))

(declare-fun c!879526 () Bool)

(assert (=> d!1654109 (= c!879526 ((_ is Nil!59195) knownP!20))))

(assert (=> d!1654109 (= (size!39509 knownP!20) lt!2109926)))

(declare-fun b!5118547 () Bool)

(assert (=> b!5118547 (= e!3192331 0)))

(declare-fun b!5118548 () Bool)

(assert (=> b!5118548 (= e!3192331 (+ 1 (size!39509 (t!372330 knownP!20))))))

(assert (= (and d!1654109 c!879526) b!5118547))

(assert (= (and d!1654109 (not c!879526)) b!5118548))

(declare-fun m!6178684 () Bool)

(assert (=> b!5118548 m!6178684))

(assert (=> b!5118342 d!1654109))

(declare-fun d!1654111 () Bool)

(declare-fun lt!2109927 () Int)

(assert (=> d!1654111 (>= lt!2109927 0)))

(declare-fun e!3192332 () Int)

(assert (=> d!1654111 (= lt!2109927 e!3192332)))

(declare-fun c!879527 () Bool)

(assert (=> d!1654111 (= c!879527 ((_ is Nil!59195) input!5745))))

(assert (=> d!1654111 (= (size!39509 input!5745) lt!2109927)))

(declare-fun b!5118549 () Bool)

(assert (=> b!5118549 (= e!3192332 0)))

(declare-fun b!5118550 () Bool)

(assert (=> b!5118550 (= e!3192332 (+ 1 (size!39509 (t!372330 input!5745))))))

(assert (= (and d!1654111 c!879527) b!5118549))

(assert (= (and d!1654111 (not c!879527)) b!5118550))

(declare-fun m!6178686 () Bool)

(assert (=> b!5118550 m!6178686))

(assert (=> b!5118340 d!1654111))

(declare-fun b!5118553 () Bool)

(declare-fun res!2179359 () Bool)

(declare-fun e!3192334 () Bool)

(assert (=> b!5118553 (=> (not res!2179359) (not e!3192334))))

(declare-fun lt!2109928 () List!59319)

(assert (=> b!5118553 (= res!2179359 (= (size!39509 lt!2109928) (+ (size!39509 (++!13028 testedP!265 lt!2109822)) (size!39509 lt!2109817))))))

(declare-fun b!5118551 () Bool)

(declare-fun e!3192333 () List!59319)

(assert (=> b!5118551 (= e!3192333 lt!2109817)))

(declare-fun b!5118552 () Bool)

(assert (=> b!5118552 (= e!3192333 (Cons!59195 (h!65643 (++!13028 testedP!265 lt!2109822)) (++!13028 (t!372330 (++!13028 testedP!265 lt!2109822)) lt!2109817)))))

(declare-fun b!5118554 () Bool)

(assert (=> b!5118554 (= e!3192334 (or (not (= lt!2109817 Nil!59195)) (= lt!2109928 (++!13028 testedP!265 lt!2109822))))))

(declare-fun d!1654113 () Bool)

(assert (=> d!1654113 e!3192334))

(declare-fun res!2179360 () Bool)

(assert (=> d!1654113 (=> (not res!2179360) (not e!3192334))))

(assert (=> d!1654113 (= res!2179360 (= (content!10525 lt!2109928) ((_ map or) (content!10525 (++!13028 testedP!265 lt!2109822)) (content!10525 lt!2109817))))))

(assert (=> d!1654113 (= lt!2109928 e!3192333)))

(declare-fun c!879528 () Bool)

(assert (=> d!1654113 (= c!879528 ((_ is Nil!59195) (++!13028 testedP!265 lt!2109822)))))

(assert (=> d!1654113 (= (++!13028 (++!13028 testedP!265 lt!2109822) lt!2109817) lt!2109928)))

(assert (= (and d!1654113 c!879528) b!5118551))

(assert (= (and d!1654113 (not c!879528)) b!5118552))

(assert (= (and d!1654113 res!2179360) b!5118553))

(assert (= (and b!5118553 res!2179359) b!5118554))

(declare-fun m!6178688 () Bool)

(assert (=> b!5118553 m!6178688))

(assert (=> b!5118553 m!6178386))

(declare-fun m!6178690 () Bool)

(assert (=> b!5118553 m!6178690))

(assert (=> b!5118553 m!6178630))

(declare-fun m!6178692 () Bool)

(assert (=> b!5118552 m!6178692))

(declare-fun m!6178694 () Bool)

(assert (=> d!1654113 m!6178694))

(assert (=> d!1654113 m!6178386))

(declare-fun m!6178696 () Bool)

(assert (=> d!1654113 m!6178696))

(assert (=> d!1654113 m!6178638))

(assert (=> b!5118349 d!1654113))

(declare-fun b!5118557 () Bool)

(declare-fun res!2179361 () Bool)

(declare-fun e!3192336 () Bool)

(assert (=> b!5118557 (=> (not res!2179361) (not e!3192336))))

(declare-fun lt!2109929 () List!59319)

(assert (=> b!5118557 (= res!2179361 (= (size!39509 lt!2109929) (+ (size!39509 testedP!265) (size!39509 lt!2109822))))))

(declare-fun b!5118555 () Bool)

(declare-fun e!3192335 () List!59319)

(assert (=> b!5118555 (= e!3192335 lt!2109822)))

(declare-fun b!5118556 () Bool)

(assert (=> b!5118556 (= e!3192335 (Cons!59195 (h!65643 testedP!265) (++!13028 (t!372330 testedP!265) lt!2109822)))))

(declare-fun b!5118558 () Bool)

(assert (=> b!5118558 (= e!3192336 (or (not (= lt!2109822 Nil!59195)) (= lt!2109929 testedP!265)))))

(declare-fun d!1654115 () Bool)

(assert (=> d!1654115 e!3192336))

(declare-fun res!2179362 () Bool)

(assert (=> d!1654115 (=> (not res!2179362) (not e!3192336))))

(assert (=> d!1654115 (= res!2179362 (= (content!10525 lt!2109929) ((_ map or) (content!10525 testedP!265) (content!10525 lt!2109822))))))

(assert (=> d!1654115 (= lt!2109929 e!3192335)))

(declare-fun c!879529 () Bool)

(assert (=> d!1654115 (= c!879529 ((_ is Nil!59195) testedP!265))))

(assert (=> d!1654115 (= (++!13028 testedP!265 lt!2109822) lt!2109929)))

(assert (= (and d!1654115 c!879529) b!5118555))

(assert (= (and d!1654115 (not c!879529)) b!5118556))

(assert (= (and d!1654115 res!2179362) b!5118557))

(assert (= (and b!5118557 res!2179361) b!5118558))

(declare-fun m!6178698 () Bool)

(assert (=> b!5118557 m!6178698))

(assert (=> b!5118557 m!6178348))

(declare-fun m!6178700 () Bool)

(assert (=> b!5118557 m!6178700))

(declare-fun m!6178702 () Bool)

(assert (=> b!5118556 m!6178702))

(declare-fun m!6178704 () Bool)

(assert (=> d!1654115 m!6178704))

(assert (=> d!1654115 m!6178648))

(declare-fun m!6178706 () Bool)

(assert (=> d!1654115 m!6178706))

(assert (=> b!5118349 d!1654115))

(declare-fun d!1654117 () Bool)

(declare-fun c!879532 () Bool)

(declare-fun isEmpty!31924 (List!59319) Bool)

(assert (=> d!1654117 (= c!879532 (isEmpty!31924 lt!2109822))))

(declare-fun e!3192339 () Bool)

(assert (=> d!1654117 (= (matchZipper!871 z!4463 lt!2109822) e!3192339)))

(declare-fun b!5118563 () Bool)

(declare-fun nullableZipper!1022 ((InoxSet Context!7174)) Bool)

(assert (=> b!5118563 (= e!3192339 (nullableZipper!1022 z!4463))))

(declare-fun b!5118564 () Bool)

(assert (=> b!5118564 (= e!3192339 (matchZipper!871 (derivationStepZipper!838 z!4463 (head!10931 lt!2109822)) (tail!10068 lt!2109822)))))

(assert (= (and d!1654117 c!879532) b!5118563))

(assert (= (and d!1654117 (not c!879532)) b!5118564))

(declare-fun m!6178708 () Bool)

(assert (=> d!1654117 m!6178708))

(declare-fun m!6178710 () Bool)

(assert (=> b!5118563 m!6178710))

(assert (=> b!5118564 m!6178338))

(assert (=> b!5118564 m!6178338))

(declare-fun m!6178712 () Bool)

(assert (=> b!5118564 m!6178712))

(assert (=> b!5118564 m!6178352))

(assert (=> b!5118564 m!6178712))

(assert (=> b!5118564 m!6178352))

(declare-fun m!6178714 () Bool)

(assert (=> b!5118564 m!6178714))

(assert (=> b!5118341 d!1654117))

(declare-fun d!1654119 () Bool)

(declare-fun lt!2109930 () List!59319)

(assert (=> d!1654119 (= (++!13028 testedP!265 lt!2109930) knownP!20)))

(declare-fun e!3192340 () List!59319)

(assert (=> d!1654119 (= lt!2109930 e!3192340)))

(declare-fun c!879533 () Bool)

(assert (=> d!1654119 (= c!879533 ((_ is Cons!59195) testedP!265))))

(assert (=> d!1654119 (>= (size!39509 knownP!20) (size!39509 testedP!265))))

(assert (=> d!1654119 (= (getSuffix!3282 knownP!20 testedP!265) lt!2109930)))

(declare-fun b!5118565 () Bool)

(assert (=> b!5118565 (= e!3192340 (getSuffix!3282 (tail!10068 knownP!20) (t!372330 testedP!265)))))

(declare-fun b!5118566 () Bool)

(assert (=> b!5118566 (= e!3192340 knownP!20)))

(assert (= (and d!1654119 c!879533) b!5118565))

(assert (= (and d!1654119 (not c!879533)) b!5118566))

(declare-fun m!6178716 () Bool)

(assert (=> d!1654119 m!6178716))

(assert (=> d!1654119 m!6178350))

(assert (=> d!1654119 m!6178348))

(assert (=> b!5118565 m!6178410))

(assert (=> b!5118565 m!6178410))

(declare-fun m!6178718 () Bool)

(assert (=> b!5118565 m!6178718))

(assert (=> b!5118341 d!1654119))

(declare-fun b!5118570 () Bool)

(declare-fun e!3192343 () Bool)

(assert (=> b!5118570 (= e!3192343 (>= (size!39509 knownP!20) (size!39509 testedP!265)))))

(declare-fun b!5118567 () Bool)

(declare-fun e!3192342 () Bool)

(declare-fun e!3192341 () Bool)

(assert (=> b!5118567 (= e!3192342 e!3192341)))

(declare-fun res!2179364 () Bool)

(assert (=> b!5118567 (=> (not res!2179364) (not e!3192341))))

(assert (=> b!5118567 (= res!2179364 (not ((_ is Nil!59195) knownP!20)))))

(declare-fun d!1654121 () Bool)

(assert (=> d!1654121 e!3192343))

(declare-fun res!2179365 () Bool)

(assert (=> d!1654121 (=> res!2179365 e!3192343)))

(declare-fun lt!2109931 () Bool)

(assert (=> d!1654121 (= res!2179365 (not lt!2109931))))

(assert (=> d!1654121 (= lt!2109931 e!3192342)))

(declare-fun res!2179363 () Bool)

(assert (=> d!1654121 (=> res!2179363 e!3192342)))

(assert (=> d!1654121 (= res!2179363 ((_ is Nil!59195) testedP!265))))

(assert (=> d!1654121 (= (isPrefix!5608 testedP!265 knownP!20) lt!2109931)))

(declare-fun b!5118568 () Bool)

(declare-fun res!2179366 () Bool)

(assert (=> b!5118568 (=> (not res!2179366) (not e!3192341))))

(assert (=> b!5118568 (= res!2179366 (= (head!10931 testedP!265) (head!10931 knownP!20)))))

(declare-fun b!5118569 () Bool)

(assert (=> b!5118569 (= e!3192341 (isPrefix!5608 (tail!10068 testedP!265) (tail!10068 knownP!20)))))

(assert (= (and d!1654121 (not res!2179363)) b!5118567))

(assert (= (and b!5118567 res!2179364) b!5118568))

(assert (= (and b!5118568 res!2179366) b!5118569))

(assert (= (and d!1654121 (not res!2179365)) b!5118570))

(assert (=> b!5118570 m!6178350))

(assert (=> b!5118570 m!6178348))

(assert (=> b!5118568 m!6178416))

(assert (=> b!5118568 m!6178406))

(assert (=> b!5118569 m!6178418))

(assert (=> b!5118569 m!6178410))

(assert (=> b!5118569 m!6178418))

(assert (=> b!5118569 m!6178410))

(declare-fun m!6178720 () Bool)

(assert (=> b!5118569 m!6178720))

(assert (=> b!5118341 d!1654121))

(declare-fun d!1654123 () Bool)

(assert (=> d!1654123 (isPrefix!5608 testedP!265 knownP!20)))

(declare-fun lt!2109932 () Unit!150329)

(assert (=> d!1654123 (= lt!2109932 (choose!37606 knownP!20 testedP!265 input!5745))))

(assert (=> d!1654123 (isPrefix!5608 knownP!20 input!5745)))

(assert (=> d!1654123 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!745 knownP!20 testedP!265 input!5745) lt!2109932)))

(declare-fun bs!1192529 () Bool)

(assert (= bs!1192529 d!1654123))

(assert (=> bs!1192529 m!6178396))

(declare-fun m!6178722 () Bool)

(assert (=> bs!1192529 m!6178722))

(assert (=> bs!1192529 m!6178390))

(assert (=> b!5118341 d!1654123))

(declare-fun b!5118573 () Bool)

(declare-fun res!2179367 () Bool)

(declare-fun e!3192345 () Bool)

(assert (=> b!5118573 (=> (not res!2179367) (not e!3192345))))

(declare-fun lt!2109933 () List!59319)

(assert (=> b!5118573 (= res!2179367 (= (size!39509 lt!2109933) (+ (size!39509 testedP!265) (size!39509 lt!2109814))))))

(declare-fun b!5118571 () Bool)

(declare-fun e!3192344 () List!59319)

(assert (=> b!5118571 (= e!3192344 lt!2109814)))

(declare-fun b!5118572 () Bool)

(assert (=> b!5118572 (= e!3192344 (Cons!59195 (h!65643 testedP!265) (++!13028 (t!372330 testedP!265) lt!2109814)))))

(declare-fun b!5118574 () Bool)

(assert (=> b!5118574 (= e!3192345 (or (not (= lt!2109814 Nil!59195)) (= lt!2109933 testedP!265)))))

(declare-fun d!1654125 () Bool)

(assert (=> d!1654125 e!3192345))

(declare-fun res!2179368 () Bool)

(assert (=> d!1654125 (=> (not res!2179368) (not e!3192345))))

(assert (=> d!1654125 (= res!2179368 (= (content!10525 lt!2109933) ((_ map or) (content!10525 testedP!265) (content!10525 lt!2109814))))))

(assert (=> d!1654125 (= lt!2109933 e!3192344)))

(declare-fun c!879534 () Bool)

(assert (=> d!1654125 (= c!879534 ((_ is Nil!59195) testedP!265))))

(assert (=> d!1654125 (= (++!13028 testedP!265 lt!2109814) lt!2109933)))

(assert (= (and d!1654125 c!879534) b!5118571))

(assert (= (and d!1654125 (not c!879534)) b!5118572))

(assert (= (and d!1654125 res!2179368) b!5118573))

(assert (= (and b!5118573 res!2179367) b!5118574))

(declare-fun m!6178724 () Bool)

(assert (=> b!5118573 m!6178724))

(assert (=> b!5118573 m!6178348))

(declare-fun m!6178726 () Bool)

(assert (=> b!5118573 m!6178726))

(declare-fun m!6178728 () Bool)

(assert (=> b!5118572 m!6178728))

(declare-fun m!6178730 () Bool)

(assert (=> d!1654125 m!6178730))

(assert (=> d!1654125 m!6178648))

(declare-fun m!6178732 () Bool)

(assert (=> d!1654125 m!6178732))

(assert (=> b!5118339 d!1654125))

(declare-fun b!5118577 () Bool)

(declare-fun res!2179369 () Bool)

(declare-fun e!3192347 () Bool)

(assert (=> b!5118577 (=> (not res!2179369) (not e!3192347))))

(declare-fun lt!2109934 () List!59319)

(assert (=> b!5118577 (= res!2179369 (= (size!39509 lt!2109934) (+ (size!39509 testedP!265) (size!39509 lt!2109813))))))

(declare-fun b!5118575 () Bool)

(declare-fun e!3192346 () List!59319)

(assert (=> b!5118575 (= e!3192346 lt!2109813)))

(declare-fun b!5118576 () Bool)

(assert (=> b!5118576 (= e!3192346 (Cons!59195 (h!65643 testedP!265) (++!13028 (t!372330 testedP!265) lt!2109813)))))

(declare-fun b!5118578 () Bool)

(assert (=> b!5118578 (= e!3192347 (or (not (= lt!2109813 Nil!59195)) (= lt!2109934 testedP!265)))))

(declare-fun d!1654127 () Bool)

(assert (=> d!1654127 e!3192347))

(declare-fun res!2179370 () Bool)

(assert (=> d!1654127 (=> (not res!2179370) (not e!3192347))))

(assert (=> d!1654127 (= res!2179370 (= (content!10525 lt!2109934) ((_ map or) (content!10525 testedP!265) (content!10525 lt!2109813))))))

(assert (=> d!1654127 (= lt!2109934 e!3192346)))

(declare-fun c!879535 () Bool)

(assert (=> d!1654127 (= c!879535 ((_ is Nil!59195) testedP!265))))

(assert (=> d!1654127 (= (++!13028 testedP!265 lt!2109813) lt!2109934)))

(assert (= (and d!1654127 c!879535) b!5118575))

(assert (= (and d!1654127 (not c!879535)) b!5118576))

(assert (= (and d!1654127 res!2179370) b!5118577))

(assert (= (and b!5118577 res!2179369) b!5118578))

(declare-fun m!6178734 () Bool)

(assert (=> b!5118577 m!6178734))

(assert (=> b!5118577 m!6178348))

(declare-fun m!6178736 () Bool)

(assert (=> b!5118577 m!6178736))

(declare-fun m!6178738 () Bool)

(assert (=> b!5118576 m!6178738))

(declare-fun m!6178740 () Bool)

(assert (=> d!1654127 m!6178740))

(assert (=> d!1654127 m!6178648))

(declare-fun m!6178742 () Bool)

(assert (=> d!1654127 m!6178742))

(assert (=> b!5118348 d!1654127))

(declare-fun b!5118581 () Bool)

(declare-fun res!2179371 () Bool)

(declare-fun e!3192349 () Bool)

(assert (=> b!5118581 (=> (not res!2179371) (not e!3192349))))

(declare-fun lt!2109935 () List!59319)

(assert (=> b!5118581 (= res!2179371 (= (size!39509 lt!2109935) (+ (size!39509 lt!2109822) (size!39509 lt!2109817))))))

(declare-fun b!5118579 () Bool)

(declare-fun e!3192348 () List!59319)

(assert (=> b!5118579 (= e!3192348 lt!2109817)))

(declare-fun b!5118580 () Bool)

(assert (=> b!5118580 (= e!3192348 (Cons!59195 (h!65643 lt!2109822) (++!13028 (t!372330 lt!2109822) lt!2109817)))))

(declare-fun b!5118582 () Bool)

(assert (=> b!5118582 (= e!3192349 (or (not (= lt!2109817 Nil!59195)) (= lt!2109935 lt!2109822)))))

(declare-fun d!1654129 () Bool)

(assert (=> d!1654129 e!3192349))

(declare-fun res!2179372 () Bool)

(assert (=> d!1654129 (=> (not res!2179372) (not e!3192349))))

(assert (=> d!1654129 (= res!2179372 (= (content!10525 lt!2109935) ((_ map or) (content!10525 lt!2109822) (content!10525 lt!2109817))))))

(assert (=> d!1654129 (= lt!2109935 e!3192348)))

(declare-fun c!879536 () Bool)

(assert (=> d!1654129 (= c!879536 ((_ is Nil!59195) lt!2109822))))

(assert (=> d!1654129 (= (++!13028 lt!2109822 lt!2109817) lt!2109935)))

(assert (= (and d!1654129 c!879536) b!5118579))

(assert (= (and d!1654129 (not c!879536)) b!5118580))

(assert (= (and d!1654129 res!2179372) b!5118581))

(assert (= (and b!5118581 res!2179371) b!5118582))

(declare-fun m!6178744 () Bool)

(assert (=> b!5118581 m!6178744))

(assert (=> b!5118581 m!6178700))

(assert (=> b!5118581 m!6178630))

(declare-fun m!6178746 () Bool)

(assert (=> b!5118580 m!6178746))

(declare-fun m!6178748 () Bool)

(assert (=> d!1654129 m!6178748))

(assert (=> d!1654129 m!6178706))

(assert (=> d!1654129 m!6178638))

(assert (=> b!5118348 d!1654129))

(declare-fun d!1654131 () Bool)

(assert (=> d!1654131 (= (++!13028 (++!13028 testedP!265 lt!2109822) lt!2109817) (++!13028 testedP!265 (++!13028 lt!2109822 lt!2109817)))))

(declare-fun lt!2109938 () Unit!150329)

(declare-fun choose!37607 (List!59319 List!59319 List!59319) Unit!150329)

(assert (=> d!1654131 (= lt!2109938 (choose!37607 testedP!265 lt!2109822 lt!2109817))))

(assert (=> d!1654131 (= (lemmaConcatAssociativity!2776 testedP!265 lt!2109822 lt!2109817) lt!2109938)))

(declare-fun bs!1192530 () Bool)

(assert (= bs!1192530 d!1654131))

(assert (=> bs!1192530 m!6178386))

(assert (=> bs!1192530 m!6178388))

(assert (=> bs!1192530 m!6178344))

(assert (=> bs!1192530 m!6178344))

(declare-fun m!6178750 () Bool)

(assert (=> bs!1192530 m!6178750))

(declare-fun m!6178752 () Bool)

(assert (=> bs!1192530 m!6178752))

(assert (=> bs!1192530 m!6178386))

(assert (=> b!5118348 d!1654131))

(declare-fun bs!1192531 () Bool)

(declare-fun d!1654133 () Bool)

(assert (= bs!1192531 (and d!1654133 d!1654003)))

(declare-fun lambda!251115 () Int)

(assert (=> bs!1192531 (= lambda!251115 lambda!251111)))

(assert (=> d!1654133 (= (inv!78688 setElem!30238) (forall!13599 (exprs!4087 setElem!30238) lambda!251115))))

(declare-fun bs!1192532 () Bool)

(assert (= bs!1192532 d!1654133))

(declare-fun m!6178754 () Bool)

(assert (=> bs!1192532 m!6178754))

(assert (=> setNonEmpty!30237 d!1654133))

(declare-fun d!1654135 () Bool)

(declare-fun c!879537 () Bool)

(assert (=> d!1654135 (= c!879537 ((_ is Cons!59195) testedP!265))))

(declare-fun e!3192350 () (InoxSet Context!7174))

(assert (=> d!1654135 (= (derivationZipper!102 baseZ!46 testedP!265) e!3192350)))

(declare-fun b!5118583 () Bool)

(assert (=> b!5118583 (= e!3192350 (derivationZipper!102 (derivationStepZipper!838 baseZ!46 (h!65643 testedP!265)) (t!372330 testedP!265)))))

(declare-fun b!5118584 () Bool)

(assert (=> b!5118584 (= e!3192350 baseZ!46)))

(assert (= (and d!1654135 c!879537) b!5118583))

(assert (= (and d!1654135 (not c!879537)) b!5118584))

(declare-fun m!6178756 () Bool)

(assert (=> b!5118583 m!6178756))

(assert (=> b!5118583 m!6178756))

(declare-fun m!6178758 () Bool)

(assert (=> b!5118583 m!6178758))

(assert (=> b!5118338 d!1654135))

(declare-fun d!1654137 () Bool)

(declare-fun c!879538 () Bool)

(assert (=> d!1654137 (= c!879538 (isEmpty!31924 knownP!20))))

(declare-fun e!3192351 () Bool)

(assert (=> d!1654137 (= (matchZipper!871 baseZ!46 knownP!20) e!3192351)))

(declare-fun b!5118585 () Bool)

(assert (=> b!5118585 (= e!3192351 (nullableZipper!1022 baseZ!46))))

(declare-fun b!5118586 () Bool)

(assert (=> b!5118586 (= e!3192351 (matchZipper!871 (derivationStepZipper!838 baseZ!46 (head!10931 knownP!20)) (tail!10068 knownP!20)))))

(assert (= (and d!1654137 c!879538) b!5118585))

(assert (= (and d!1654137 (not c!879538)) b!5118586))

(declare-fun m!6178760 () Bool)

(assert (=> d!1654137 m!6178760))

(declare-fun m!6178762 () Bool)

(assert (=> b!5118585 m!6178762))

(assert (=> b!5118586 m!6178406))

(assert (=> b!5118586 m!6178406))

(declare-fun m!6178764 () Bool)

(assert (=> b!5118586 m!6178764))

(assert (=> b!5118586 m!6178410))

(assert (=> b!5118586 m!6178764))

(assert (=> b!5118586 m!6178410))

(declare-fun m!6178766 () Bool)

(assert (=> b!5118586 m!6178766))

(assert (=> b!5118347 d!1654137))

(declare-fun bs!1192533 () Bool)

(declare-fun b!5118591 () Bool)

(declare-fun d!1654139 () Bool)

(assert (= bs!1192533 (and b!5118591 d!1654139)))

(declare-fun lambda!251129 () Int)

(declare-fun lambda!251128 () Int)

(assert (=> bs!1192533 (not (= lambda!251129 lambda!251128))))

(declare-fun bs!1192534 () Bool)

(declare-fun b!5118592 () Bool)

(assert (= bs!1192534 (and b!5118592 d!1654139)))

(declare-fun lambda!251130 () Int)

(assert (=> bs!1192534 (not (= lambda!251130 lambda!251128))))

(declare-fun bs!1192535 () Bool)

(assert (= bs!1192535 (and b!5118592 b!5118591)))

(assert (=> bs!1192535 (= lambda!251130 lambda!251129)))

(declare-fun bm!356587 () Bool)

(declare-datatypes ((List!59322 0))(
  ( (Nil!59198) (Cons!59198 (h!65646 Context!7174) (t!372335 List!59322)) )
))
(declare-fun call!356593 () List!59322)

(declare-fun toList!8258 ((InoxSet Context!7174)) List!59322)

(assert (=> bm!356587 (= call!356593 (toList!8258 z!4463))))

(declare-fun e!3192358 () Unit!150329)

(declare-fun Unit!150333 () Unit!150329)

(assert (=> b!5118591 (= e!3192358 Unit!150333)))

(declare-fun lt!2109961 () List!59322)

(assert (=> b!5118591 (= lt!2109961 call!356593)))

(declare-fun lt!2109962 () Unit!150329)

(declare-fun lemmaNotForallThenExists!332 (List!59322 Int) Unit!150329)

(assert (=> b!5118591 (= lt!2109962 (lemmaNotForallThenExists!332 lt!2109961 lambda!251128))))

(declare-fun call!356592 () Bool)

(assert (=> b!5118591 call!356592))

(declare-fun lt!2109955 () Unit!150329)

(assert (=> b!5118591 (= lt!2109955 lt!2109962)))

(declare-fun lt!2109959 () Bool)

(declare-datatypes ((Option!14692 0))(
  ( (None!14691) (Some!14691 (v!50704 List!59319)) )
))
(declare-fun isEmpty!31925 (Option!14692) Bool)

(declare-fun getLanguageWitness!809 ((InoxSet Context!7174)) Option!14692)

(assert (=> d!1654139 (= lt!2109959 (isEmpty!31925 (getLanguageWitness!809 z!4463)))))

(declare-fun forall!13600 ((InoxSet Context!7174) Int) Bool)

(assert (=> d!1654139 (= lt!2109959 (forall!13600 z!4463 lambda!251128))))

(declare-fun lt!2109956 () Unit!150329)

(assert (=> d!1654139 (= lt!2109956 e!3192358)))

(declare-fun c!879549 () Bool)

(assert (=> d!1654139 (= c!879549 (not (forall!13600 z!4463 lambda!251128)))))

(assert (=> d!1654139 (= (lostCauseZipper!1089 z!4463) lt!2109959)))

(declare-fun bm!356588 () Bool)

(declare-fun lt!2109960 () List!59322)

(declare-fun exists!1469 (List!59322 Int) Bool)

(assert (=> bm!356588 (= call!356592 (exists!1469 (ite c!879549 lt!2109961 lt!2109960) (ite c!879549 lambda!251129 lambda!251130)))))

(declare-fun Unit!150334 () Unit!150329)

(assert (=> b!5118592 (= e!3192358 Unit!150334)))

(assert (=> b!5118592 (= lt!2109960 call!356593)))

(declare-fun lt!2109958 () Unit!150329)

(declare-fun lemmaForallThenNotExists!315 (List!59322 Int) Unit!150329)

(assert (=> b!5118592 (= lt!2109958 (lemmaForallThenNotExists!315 lt!2109960 lambda!251128))))

(assert (=> b!5118592 (not call!356592)))

(declare-fun lt!2109957 () Unit!150329)

(assert (=> b!5118592 (= lt!2109957 lt!2109958)))

(assert (= (and d!1654139 c!879549) b!5118591))

(assert (= (and d!1654139 (not c!879549)) b!5118592))

(assert (= (or b!5118591 b!5118592) bm!356587))

(assert (= (or b!5118591 b!5118592) bm!356588))

(declare-fun m!6178768 () Bool)

(assert (=> b!5118592 m!6178768))

(declare-fun m!6178770 () Bool)

(assert (=> b!5118591 m!6178770))

(declare-fun m!6178772 () Bool)

(assert (=> bm!356588 m!6178772))

(declare-fun m!6178774 () Bool)

(assert (=> d!1654139 m!6178774))

(assert (=> d!1654139 m!6178774))

(declare-fun m!6178776 () Bool)

(assert (=> d!1654139 m!6178776))

(declare-fun m!6178778 () Bool)

(assert (=> d!1654139 m!6178778))

(assert (=> d!1654139 m!6178778))

(declare-fun m!6178780 () Bool)

(assert (=> bm!356587 m!6178780))

(assert (=> b!5118337 d!1654139))

(declare-fun b!5118597 () Bool)

(declare-fun e!3192361 () Bool)

(declare-fun tp!1428011 () Bool)

(declare-fun tp!1428012 () Bool)

(assert (=> b!5118597 (= e!3192361 (and tp!1428011 tp!1428012))))

(assert (=> b!5118346 (= tp!1427982 e!3192361)))

(assert (= (and b!5118346 ((_ is Cons!59196) (exprs!4087 setElem!30238))) b!5118597))

(declare-fun condSetEmpty!30245 () Bool)

(assert (=> setNonEmpty!30238 (= condSetEmpty!30245 (= setRest!30238 ((as const (Array Context!7174 Bool)) false)))))

(declare-fun setRes!30245 () Bool)

(assert (=> setNonEmpty!30238 (= tp!1427979 setRes!30245)))

(declare-fun setIsEmpty!30245 () Bool)

(assert (=> setIsEmpty!30245 setRes!30245))

(declare-fun setElem!30245 () Context!7174)

(declare-fun e!3192364 () Bool)

(declare-fun tp!1428018 () Bool)

(declare-fun setNonEmpty!30245 () Bool)

(assert (=> setNonEmpty!30245 (= setRes!30245 (and tp!1428018 (inv!78688 setElem!30245) e!3192364))))

(declare-fun setRest!30245 () (InoxSet Context!7174))

(assert (=> setNonEmpty!30245 (= setRest!30238 ((_ map or) (store ((as const (Array Context!7174 Bool)) false) setElem!30245 true) setRest!30245))))

(declare-fun b!5118602 () Bool)

(declare-fun tp!1428017 () Bool)

(assert (=> b!5118602 (= e!3192364 tp!1428017)))

(assert (= (and setNonEmpty!30238 condSetEmpty!30245) setIsEmpty!30245))

(assert (= (and setNonEmpty!30238 (not condSetEmpty!30245)) setNonEmpty!30245))

(assert (= setNonEmpty!30245 b!5118602))

(declare-fun m!6178782 () Bool)

(assert (=> setNonEmpty!30245 m!6178782))

(declare-fun condSetEmpty!30246 () Bool)

(assert (=> setNonEmpty!30237 (= condSetEmpty!30246 (= setRest!30237 ((as const (Array Context!7174 Bool)) false)))))

(declare-fun setRes!30246 () Bool)

(assert (=> setNonEmpty!30237 (= tp!1427985 setRes!30246)))

(declare-fun setIsEmpty!30246 () Bool)

(assert (=> setIsEmpty!30246 setRes!30246))

(declare-fun setElem!30246 () Context!7174)

(declare-fun setNonEmpty!30246 () Bool)

(declare-fun tp!1428020 () Bool)

(declare-fun e!3192365 () Bool)

(assert (=> setNonEmpty!30246 (= setRes!30246 (and tp!1428020 (inv!78688 setElem!30246) e!3192365))))

(declare-fun setRest!30246 () (InoxSet Context!7174))

(assert (=> setNonEmpty!30246 (= setRest!30237 ((_ map or) (store ((as const (Array Context!7174 Bool)) false) setElem!30246 true) setRest!30246))))

(declare-fun b!5118603 () Bool)

(declare-fun tp!1428019 () Bool)

(assert (=> b!5118603 (= e!3192365 tp!1428019)))

(assert (= (and setNonEmpty!30237 condSetEmpty!30246) setIsEmpty!30246))

(assert (= (and setNonEmpty!30237 (not condSetEmpty!30246)) setNonEmpty!30246))

(assert (= setNonEmpty!30246 b!5118603))

(declare-fun m!6178784 () Bool)

(assert (=> setNonEmpty!30246 m!6178784))

(declare-fun b!5118608 () Bool)

(declare-fun e!3192368 () Bool)

(declare-fun tp!1428023 () Bool)

(assert (=> b!5118608 (= e!3192368 (and tp_is_empty!37679 tp!1428023))))

(assert (=> b!5118343 (= tp!1427983 e!3192368)))

(assert (= (and b!5118343 ((_ is Cons!59195) (t!372330 testedP!265))) b!5118608))

(declare-fun b!5118609 () Bool)

(declare-fun e!3192369 () Bool)

(declare-fun tp!1428024 () Bool)

(assert (=> b!5118609 (= e!3192369 (and tp_is_empty!37679 tp!1428024))))

(assert (=> b!5118336 (= tp!1427981 e!3192369)))

(assert (= (and b!5118336 ((_ is Cons!59195) (t!372330 input!5745))) b!5118609))

(declare-fun b!5118610 () Bool)

(declare-fun e!3192370 () Bool)

(declare-fun tp!1428025 () Bool)

(assert (=> b!5118610 (= e!3192370 (and tp_is_empty!37679 tp!1428025))))

(assert (=> b!5118350 (= tp!1427984 e!3192370)))

(assert (= (and b!5118350 ((_ is Cons!59195) (t!372330 knownP!20))) b!5118610))

(declare-fun b!5118611 () Bool)

(declare-fun e!3192371 () Bool)

(declare-fun tp!1428026 () Bool)

(declare-fun tp!1428027 () Bool)

(assert (=> b!5118611 (= e!3192371 (and tp!1428026 tp!1428027))))

(assert (=> b!5118351 (= tp!1427980 e!3192371)))

(assert (= (and b!5118351 ((_ is Cons!59196) (exprs!4087 setElem!30237))) b!5118611))

(check-sat (not d!1654129) (not b!5118591) (not b!5118552) (not d!1654139) (not b!5118568) (not b!5118563) (not b!5118565) (not d!1654081) (not b!5118577) (not d!1654001) (not b!5118369) (not b!5118592) (not d!1654127) (not d!1654131) (not b!5118611) (not b!5118501) (not b!5118564) (not b!5118609) (not d!1654085) (not bm!356587) (not b!5118586) (not b!5118580) (not b!5118517) (not setNonEmpty!30246) (not d!1654113) (not b!5118531) (not b!5118516) tp_is_empty!37679 (not b!5118546) (not d!1654133) (not d!1654095) (not b!5118570) (not b!5118569) (not b!5118500) (not b!5118548) (not b!5118556) (not bm!356588) (not b!5118597) (not b!5118364) (not b!5118368) (not b!5118363) (not b!5118538) (not b!5118550) (not d!1654003) (not b!5118572) (not b!5118365) (not d!1654137) (not d!1654097) (not b!5118523) (not b!5118513) (not d!1654125) (not b!5118610) (not b!5118583) (not b!5118581) (not b!5118608) (not d!1654115) (not d!1654117) (not b!5118539) (not b!5118502) (not d!1654089) (not b!5118603) (not b!5118537) (not d!1654083) (not b!5118553) (not setNonEmpty!30245) (not b!5118573) (not d!1654101) (not d!1654123) (not b!5118533) (not d!1654087) (not b!5118602) (not b!5118367) (not b!5118536) (not b!5118512) (not d!1654093) (not b!5118576) (not d!1654119) (not b!5118585) (not b!5118557))
(check-sat)
