; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540264 () Bool)

(assert start!540264)

(declare-fun b!5119095 () Bool)

(declare-fun e!3192661 () Bool)

(declare-fun tp_is_empty!37687 () Bool)

(declare-fun tp!1428152 () Bool)

(assert (=> b!5119095 (= e!3192661 (and tp_is_empty!37687 tp!1428152))))

(declare-fun b!5119096 () Bool)

(declare-fun e!3192666 () Bool)

(declare-fun tp!1428149 () Bool)

(assert (=> b!5119096 (= e!3192666 tp!1428149)))

(declare-fun b!5119097 () Bool)

(declare-fun e!3192663 () Bool)

(declare-fun e!3192671 () Bool)

(assert (=> b!5119097 (= e!3192663 e!3192671)))

(declare-fun res!2179635 () Bool)

(assert (=> b!5119097 (=> (not res!2179635) (not e!3192671))))

(declare-fun lt!2110299 () Int)

(declare-fun lt!2110302 () Int)

(assert (=> b!5119097 (= res!2179635 (>= lt!2110299 lt!2110302))))

(declare-datatypes ((C!28680 0))(
  ( (C!28681 (val!23992 Int)) )
))
(declare-datatypes ((List!59331 0))(
  ( (Nil!59207) (Cons!59207 (h!65655 C!28680) (t!372346 List!59331)) )
))
(declare-fun testedP!265 () List!59331)

(declare-fun size!39513 (List!59331) Int)

(assert (=> b!5119097 (= lt!2110302 (size!39513 testedP!265))))

(declare-fun knownP!20 () List!59331)

(assert (=> b!5119097 (= lt!2110299 (size!39513 knownP!20))))

(declare-fun b!5119098 () Bool)

(declare-fun res!2179638 () Bool)

(declare-fun e!3192665 () Bool)

(assert (=> b!5119098 (=> res!2179638 e!3192665)))

(declare-fun input!5745 () List!59331)

(declare-fun lt!2110307 () List!59331)

(declare-fun ++!13032 (List!59331 List!59331) List!59331)

(assert (=> b!5119098 (= res!2179638 (not (= (++!13032 testedP!265 lt!2110307) input!5745)))))

(declare-fun b!5119099 () Bool)

(declare-fun e!3192669 () Bool)

(declare-fun tp!1428147 () Bool)

(assert (=> b!5119099 (= e!3192669 (and tp_is_empty!37687 tp!1428147))))

(declare-fun b!5119100 () Bool)

(declare-fun res!2179648 () Bool)

(declare-fun e!3192668 () Bool)

(assert (=> b!5119100 (=> res!2179648 e!3192668)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14207 0))(
  ( (ElementMatch!14207 (c!879637 C!28680)) (Concat!23052 (regOne!28926 Regex!14207) (regTwo!28926 Regex!14207)) (EmptyExpr!14207) (Star!14207 (reg!14536 Regex!14207)) (EmptyLang!14207) (Union!14207 (regOne!28927 Regex!14207) (regTwo!28927 Regex!14207)) )
))
(declare-datatypes ((List!59332 0))(
  ( (Nil!59208) (Cons!59208 (h!65656 Regex!14207) (t!372347 List!59332)) )
))
(declare-datatypes ((Context!7182 0))(
  ( (Context!7183 (exprs!4091 List!59332)) )
))
(declare-fun z!4463 () (InoxSet Context!7182))

(declare-fun baseZ!46 () (InoxSet Context!7182))

(declare-fun derivationZipper!106 ((InoxSet Context!7182) List!59331) (InoxSet Context!7182))

(assert (=> b!5119100 (= res!2179648 (not (= (derivationZipper!106 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5119101 () Bool)

(declare-fun e!3192664 () Bool)

(assert (=> b!5119101 (= e!3192665 e!3192664)))

(declare-fun res!2179639 () Bool)

(assert (=> b!5119101 (=> res!2179639 e!3192664)))

(declare-fun lt!2110312 () List!59331)

(assert (=> b!5119101 (= res!2179639 (not (= lt!2110312 input!5745)))))

(declare-fun lt!2110306 () List!59331)

(assert (=> b!5119101 (= lt!2110306 lt!2110312)))

(declare-fun lt!2110304 () List!59331)

(assert (=> b!5119101 (= lt!2110312 (++!13032 testedP!265 lt!2110304))))

(declare-fun lt!2110311 () List!59331)

(declare-fun lt!2110308 () List!59331)

(assert (=> b!5119101 (= lt!2110304 (++!13032 lt!2110311 lt!2110308))))

(declare-datatypes ((Unit!150345 0))(
  ( (Unit!150346) )
))
(declare-fun lt!2110300 () Unit!150345)

(declare-fun lemmaConcatAssociativity!2780 (List!59331 List!59331 List!59331) Unit!150345)

(assert (=> b!5119101 (= lt!2110300 (lemmaConcatAssociativity!2780 testedP!265 lt!2110311 lt!2110308))))

(declare-fun b!5119102 () Bool)

(declare-fun res!2179646 () Bool)

(assert (=> b!5119102 (=> res!2179646 e!3192668)))

(assert (=> b!5119102 (= res!2179646 (>= lt!2110302 (size!39513 input!5745)))))

(declare-fun b!5119103 () Bool)

(declare-fun res!2179650 () Bool)

(assert (=> b!5119103 (=> res!2179650 e!3192668)))

(declare-fun lostCauseZipper!1093 ((InoxSet Context!7182)) Bool)

(assert (=> b!5119103 (= res!2179650 (lostCauseZipper!1093 z!4463))))

(declare-fun b!5119104 () Bool)

(declare-fun res!2179649 () Bool)

(assert (=> b!5119104 (=> (not res!2179649) (not e!3192671))))

(declare-fun matchZipper!875 ((InoxSet Context!7182) List!59331) Bool)

(assert (=> b!5119104 (= res!2179649 (matchZipper!875 baseZ!46 knownP!20))))

(declare-fun lt!2110298 () List!59331)

(declare-fun b!5119105 () Bool)

(declare-fun e!3192670 () Bool)

(declare-fun lt!2110296 () List!59331)

(assert (=> b!5119105 (= e!3192670 (= (++!13032 lt!2110296 lt!2110298) knownP!20))))

(declare-fun b!5119106 () Bool)

(declare-fun res!2179644 () Bool)

(assert (=> b!5119106 (=> res!2179644 e!3192670)))

(declare-fun lt!2110305 () List!59331)

(assert (=> b!5119106 (= res!2179644 (not (= lt!2110305 knownP!20)))))

(declare-fun b!5119107 () Bool)

(declare-fun e!3192662 () Bool)

(assert (=> b!5119107 (= e!3192662 e!3192665)))

(declare-fun res!2179636 () Bool)

(assert (=> b!5119107 (=> res!2179636 e!3192665)))

(assert (=> b!5119107 (= res!2179636 (not (= lt!2110306 input!5745)))))

(assert (=> b!5119107 (= lt!2110306 (++!13032 lt!2110305 lt!2110308))))

(assert (=> b!5119107 (= lt!2110305 (++!13032 testedP!265 lt!2110311))))

(declare-fun b!5119108 () Bool)

(assert (=> b!5119108 (= e!3192664 e!3192670)))

(declare-fun res!2179637 () Bool)

(assert (=> b!5119108 (=> res!2179637 e!3192670)))

(declare-fun lt!2110301 () C!28680)

(declare-fun head!10935 (List!59331) C!28680)

(assert (=> b!5119108 (= res!2179637 (not (= (head!10935 lt!2110311) lt!2110301)))))

(assert (=> b!5119108 (= lt!2110304 lt!2110307)))

(declare-fun lt!2110297 () Unit!150345)

(declare-fun lemmaSamePrefixThenSameSuffix!2646 (List!59331 List!59331 List!59331 List!59331 List!59331) Unit!150345)

(assert (=> b!5119108 (= lt!2110297 (lemmaSamePrefixThenSameSuffix!2646 testedP!265 lt!2110304 testedP!265 lt!2110307 input!5745))))

(declare-fun b!5119109 () Bool)

(declare-fun res!2179647 () Bool)

(assert (=> b!5119109 (=> (not res!2179647) (not e!3192663))))

(declare-fun isPrefix!5612 (List!59331 List!59331) Bool)

(assert (=> b!5119109 (= res!2179647 (isPrefix!5612 knownP!20 input!5745))))

(declare-fun b!5119110 () Bool)

(assert (=> b!5119110 (= e!3192671 (not e!3192668))))

(declare-fun res!2179642 () Bool)

(assert (=> b!5119110 (=> res!2179642 e!3192668)))

(assert (=> b!5119110 (= res!2179642 (not (matchZipper!875 z!4463 lt!2110311)))))

(declare-fun getSuffix!3286 (List!59331 List!59331) List!59331)

(assert (=> b!5119110 (= lt!2110311 (getSuffix!3286 knownP!20 testedP!265))))

(assert (=> b!5119110 (isPrefix!5612 testedP!265 knownP!20)))

(declare-fun lt!2110310 () Unit!150345)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!749 (List!59331 List!59331 List!59331) Unit!150345)

(assert (=> b!5119110 (= lt!2110310 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!749 knownP!20 testedP!265 input!5745))))

(declare-fun b!5119111 () Bool)

(assert (=> b!5119111 (= e!3192668 e!3192662)))

(declare-fun res!2179641 () Bool)

(assert (=> b!5119111 (=> res!2179641 e!3192662)))

(assert (=> b!5119111 (= res!2179641 (not (= (++!13032 knownP!20 lt!2110308) input!5745)))))

(assert (=> b!5119111 (= lt!2110308 (getSuffix!3286 input!5745 knownP!20))))

(assert (=> b!5119111 (= lt!2110298 (getSuffix!3286 knownP!20 lt!2110296))))

(assert (=> b!5119111 (isPrefix!5612 lt!2110296 knownP!20)))

(declare-fun lt!2110295 () Unit!150345)

(assert (=> b!5119111 (= lt!2110295 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!749 knownP!20 lt!2110296 input!5745))))

(declare-fun derivationStepZipper!842 ((InoxSet Context!7182) C!28680) (InoxSet Context!7182))

(assert (=> b!5119111 (= (derivationZipper!106 baseZ!46 lt!2110296) (derivationStepZipper!842 z!4463 lt!2110301))))

(declare-fun lt!2110309 () Unit!150345)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!63 ((InoxSet Context!7182) (InoxSet Context!7182) List!59331 C!28680) Unit!150345)

(assert (=> b!5119111 (= lt!2110309 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!63 baseZ!46 z!4463 testedP!265 lt!2110301))))

(assert (=> b!5119111 (isPrefix!5612 lt!2110296 input!5745)))

(declare-fun lt!2110303 () Unit!150345)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!998 (List!59331 List!59331) Unit!150345)

(assert (=> b!5119111 (= lt!2110303 (lemmaAddHeadSuffixToPrefixStillPrefix!998 testedP!265 input!5745))))

(assert (=> b!5119111 (= lt!2110296 (++!13032 testedP!265 (Cons!59207 lt!2110301 Nil!59207)))))

(assert (=> b!5119111 (= lt!2110301 (head!10935 lt!2110307))))

(assert (=> b!5119111 (= lt!2110307 (getSuffix!3286 input!5745 testedP!265))))

(declare-fun b!5119112 () Bool)

(declare-fun res!2179640 () Bool)

(assert (=> b!5119112 (=> res!2179640 e!3192668)))

(assert (=> b!5119112 (= res!2179640 (= lt!2110302 lt!2110299))))

(declare-fun e!3192660 () Bool)

(declare-fun tp!1428151 () Bool)

(declare-fun setElem!30277 () Context!7182)

(declare-fun setNonEmpty!30277 () Bool)

(declare-fun setRes!30277 () Bool)

(declare-fun inv!78698 (Context!7182) Bool)

(assert (=> setNonEmpty!30277 (= setRes!30277 (and tp!1428151 (inv!78698 setElem!30277) e!3192660))))

(declare-fun setRest!30277 () (InoxSet Context!7182))

(assert (=> setNonEmpty!30277 (= z!4463 ((_ map or) (store ((as const (Array Context!7182 Bool)) false) setElem!30277 true) setRest!30277))))

(declare-fun b!5119113 () Bool)

(declare-fun res!2179645 () Bool)

(assert (=> b!5119113 (=> res!2179645 e!3192670)))

(declare-fun $colon$colon!1137 (List!59331 C!28680) List!59331)

(declare-fun tail!10072 (List!59331) List!59331)

(assert (=> b!5119113 (= res!2179645 (not (= lt!2110311 ($colon$colon!1137 (tail!10072 lt!2110311) lt!2110301))))))

(declare-fun setNonEmpty!30278 () Bool)

(declare-fun tp!1428150 () Bool)

(declare-fun setElem!30278 () Context!7182)

(declare-fun setRes!30278 () Bool)

(assert (=> setNonEmpty!30278 (= setRes!30278 (and tp!1428150 (inv!78698 setElem!30278) e!3192666))))

(declare-fun setRest!30278 () (InoxSet Context!7182))

(assert (=> setNonEmpty!30278 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7182 Bool)) false) setElem!30278 true) setRest!30278))))

(declare-fun res!2179643 () Bool)

(assert (=> start!540264 (=> (not res!2179643) (not e!3192663))))

(assert (=> start!540264 (= res!2179643 (isPrefix!5612 testedP!265 input!5745))))

(assert (=> start!540264 e!3192663))

(declare-fun e!3192667 () Bool)

(assert (=> start!540264 e!3192667))

(declare-fun condSetEmpty!30278 () Bool)

(assert (=> start!540264 (= condSetEmpty!30278 (= z!4463 ((as const (Array Context!7182 Bool)) false)))))

(assert (=> start!540264 setRes!30277))

(assert (=> start!540264 e!3192661))

(declare-fun condSetEmpty!30277 () Bool)

(assert (=> start!540264 (= condSetEmpty!30277 (= baseZ!46 ((as const (Array Context!7182 Bool)) false)))))

(assert (=> start!540264 setRes!30278))

(assert (=> start!540264 e!3192669))

(declare-fun setIsEmpty!30277 () Bool)

(assert (=> setIsEmpty!30277 setRes!30278))

(declare-fun b!5119114 () Bool)

(declare-fun tp!1428148 () Bool)

(assert (=> b!5119114 (= e!3192660 tp!1428148)))

(declare-fun setIsEmpty!30278 () Bool)

(assert (=> setIsEmpty!30278 setRes!30277))

(declare-fun b!5119115 () Bool)

(declare-fun tp!1428153 () Bool)

(assert (=> b!5119115 (= e!3192667 (and tp_is_empty!37687 tp!1428153))))

(assert (= (and start!540264 res!2179643) b!5119109))

(assert (= (and b!5119109 res!2179647) b!5119097))

(assert (= (and b!5119097 res!2179635) b!5119104))

(assert (= (and b!5119104 res!2179649) b!5119110))

(assert (= (and b!5119110 (not res!2179642)) b!5119100))

(assert (= (and b!5119100 (not res!2179648)) b!5119103))

(assert (= (and b!5119103 (not res!2179650)) b!5119112))

(assert (= (and b!5119112 (not res!2179640)) b!5119102))

(assert (= (and b!5119102 (not res!2179646)) b!5119111))

(assert (= (and b!5119111 (not res!2179641)) b!5119107))

(assert (= (and b!5119107 (not res!2179636)) b!5119098))

(assert (= (and b!5119098 (not res!2179638)) b!5119101))

(assert (= (and b!5119101 (not res!2179639)) b!5119108))

(assert (= (and b!5119108 (not res!2179637)) b!5119113))

(assert (= (and b!5119113 (not res!2179645)) b!5119106))

(assert (= (and b!5119106 (not res!2179644)) b!5119105))

(get-info :version)

(assert (= (and start!540264 ((_ is Cons!59207) input!5745)) b!5119115))

(assert (= (and start!540264 condSetEmpty!30278) setIsEmpty!30278))

(assert (= (and start!540264 (not condSetEmpty!30278)) setNonEmpty!30277))

(assert (= setNonEmpty!30277 b!5119114))

(assert (= (and start!540264 ((_ is Cons!59207) testedP!265)) b!5119095))

(assert (= (and start!540264 condSetEmpty!30277) setIsEmpty!30277))

(assert (= (and start!540264 (not condSetEmpty!30277)) setNonEmpty!30278))

(assert (= setNonEmpty!30278 b!5119096))

(assert (= (and start!540264 ((_ is Cons!59207) knownP!20)) b!5119099))

(declare-fun m!6179394 () Bool)

(assert (=> b!5119104 m!6179394))

(declare-fun m!6179396 () Bool)

(assert (=> b!5119110 m!6179396))

(declare-fun m!6179398 () Bool)

(assert (=> b!5119110 m!6179398))

(declare-fun m!6179400 () Bool)

(assert (=> b!5119110 m!6179400))

(declare-fun m!6179402 () Bool)

(assert (=> b!5119110 m!6179402))

(declare-fun m!6179404 () Bool)

(assert (=> b!5119101 m!6179404))

(declare-fun m!6179406 () Bool)

(assert (=> b!5119101 m!6179406))

(declare-fun m!6179408 () Bool)

(assert (=> b!5119101 m!6179408))

(declare-fun m!6179410 () Bool)

(assert (=> setNonEmpty!30277 m!6179410))

(declare-fun m!6179412 () Bool)

(assert (=> setNonEmpty!30278 m!6179412))

(declare-fun m!6179414 () Bool)

(assert (=> b!5119111 m!6179414))

(declare-fun m!6179416 () Bool)

(assert (=> b!5119111 m!6179416))

(declare-fun m!6179418 () Bool)

(assert (=> b!5119111 m!6179418))

(declare-fun m!6179420 () Bool)

(assert (=> b!5119111 m!6179420))

(declare-fun m!6179422 () Bool)

(assert (=> b!5119111 m!6179422))

(declare-fun m!6179424 () Bool)

(assert (=> b!5119111 m!6179424))

(declare-fun m!6179426 () Bool)

(assert (=> b!5119111 m!6179426))

(declare-fun m!6179428 () Bool)

(assert (=> b!5119111 m!6179428))

(declare-fun m!6179430 () Bool)

(assert (=> b!5119111 m!6179430))

(declare-fun m!6179432 () Bool)

(assert (=> b!5119111 m!6179432))

(declare-fun m!6179434 () Bool)

(assert (=> b!5119111 m!6179434))

(declare-fun m!6179436 () Bool)

(assert (=> b!5119111 m!6179436))

(declare-fun m!6179438 () Bool)

(assert (=> b!5119111 m!6179438))

(declare-fun m!6179440 () Bool)

(assert (=> b!5119105 m!6179440))

(declare-fun m!6179442 () Bool)

(assert (=> b!5119102 m!6179442))

(declare-fun m!6179444 () Bool)

(assert (=> start!540264 m!6179444))

(declare-fun m!6179446 () Bool)

(assert (=> b!5119109 m!6179446))

(declare-fun m!6179448 () Bool)

(assert (=> b!5119113 m!6179448))

(assert (=> b!5119113 m!6179448))

(declare-fun m!6179450 () Bool)

(assert (=> b!5119113 m!6179450))

(declare-fun m!6179452 () Bool)

(assert (=> b!5119107 m!6179452))

(declare-fun m!6179454 () Bool)

(assert (=> b!5119107 m!6179454))

(declare-fun m!6179456 () Bool)

(assert (=> b!5119103 m!6179456))

(declare-fun m!6179458 () Bool)

(assert (=> b!5119100 m!6179458))

(declare-fun m!6179460 () Bool)

(assert (=> b!5119097 m!6179460))

(declare-fun m!6179462 () Bool)

(assert (=> b!5119097 m!6179462))

(declare-fun m!6179464 () Bool)

(assert (=> b!5119098 m!6179464))

(declare-fun m!6179466 () Bool)

(assert (=> b!5119108 m!6179466))

(declare-fun m!6179468 () Bool)

(assert (=> b!5119108 m!6179468))

(check-sat (not b!5119095) (not b!5119098) (not b!5119100) (not setNonEmpty!30278) (not b!5119102) (not b!5119114) (not b!5119103) (not b!5119110) (not b!5119101) (not b!5119097) (not b!5119105) (not b!5119108) (not setNonEmpty!30277) tp_is_empty!37687 (not b!5119109) (not b!5119096) (not b!5119113) (not b!5119107) (not start!540264) (not b!5119099) (not b!5119111) (not b!5119104) (not b!5119115))
(check-sat)
(get-model)

(declare-fun d!1654291 () Bool)

(declare-fun c!879640 () Bool)

(declare-fun isEmpty!31932 (List!59331) Bool)

(assert (=> d!1654291 (= c!879640 (isEmpty!31932 lt!2110311))))

(declare-fun e!3192674 () Bool)

(assert (=> d!1654291 (= (matchZipper!875 z!4463 lt!2110311) e!3192674)))

(declare-fun b!5119120 () Bool)

(declare-fun nullableZipper!1026 ((InoxSet Context!7182)) Bool)

(assert (=> b!5119120 (= e!3192674 (nullableZipper!1026 z!4463))))

(declare-fun b!5119121 () Bool)

(assert (=> b!5119121 (= e!3192674 (matchZipper!875 (derivationStepZipper!842 z!4463 (head!10935 lt!2110311)) (tail!10072 lt!2110311)))))

(assert (= (and d!1654291 c!879640) b!5119120))

(assert (= (and d!1654291 (not c!879640)) b!5119121))

(declare-fun m!6179470 () Bool)

(assert (=> d!1654291 m!6179470))

(declare-fun m!6179472 () Bool)

(assert (=> b!5119120 m!6179472))

(assert (=> b!5119121 m!6179466))

(assert (=> b!5119121 m!6179466))

(declare-fun m!6179474 () Bool)

(assert (=> b!5119121 m!6179474))

(assert (=> b!5119121 m!6179448))

(assert (=> b!5119121 m!6179474))

(assert (=> b!5119121 m!6179448))

(declare-fun m!6179476 () Bool)

(assert (=> b!5119121 m!6179476))

(assert (=> b!5119110 d!1654291))

(declare-fun d!1654293 () Bool)

(declare-fun lt!2110315 () List!59331)

(assert (=> d!1654293 (= (++!13032 testedP!265 lt!2110315) knownP!20)))

(declare-fun e!3192677 () List!59331)

(assert (=> d!1654293 (= lt!2110315 e!3192677)))

(declare-fun c!879643 () Bool)

(assert (=> d!1654293 (= c!879643 ((_ is Cons!59207) testedP!265))))

(assert (=> d!1654293 (>= (size!39513 knownP!20) (size!39513 testedP!265))))

(assert (=> d!1654293 (= (getSuffix!3286 knownP!20 testedP!265) lt!2110315)))

(declare-fun b!5119126 () Bool)

(assert (=> b!5119126 (= e!3192677 (getSuffix!3286 (tail!10072 knownP!20) (t!372346 testedP!265)))))

(declare-fun b!5119127 () Bool)

(assert (=> b!5119127 (= e!3192677 knownP!20)))

(assert (= (and d!1654293 c!879643) b!5119126))

(assert (= (and d!1654293 (not c!879643)) b!5119127))

(declare-fun m!6179478 () Bool)

(assert (=> d!1654293 m!6179478))

(assert (=> d!1654293 m!6179462))

(assert (=> d!1654293 m!6179460))

(declare-fun m!6179480 () Bool)

(assert (=> b!5119126 m!6179480))

(assert (=> b!5119126 m!6179480))

(declare-fun m!6179482 () Bool)

(assert (=> b!5119126 m!6179482))

(assert (=> b!5119110 d!1654293))

(declare-fun b!5119148 () Bool)

(declare-fun e!3192691 () Bool)

(declare-fun e!3192690 () Bool)

(assert (=> b!5119148 (= e!3192691 e!3192690)))

(declare-fun res!2179667 () Bool)

(assert (=> b!5119148 (=> (not res!2179667) (not e!3192690))))

(assert (=> b!5119148 (= res!2179667 (not ((_ is Nil!59207) knownP!20)))))

(declare-fun b!5119151 () Bool)

(declare-fun e!3192692 () Bool)

(assert (=> b!5119151 (= e!3192692 (>= (size!39513 knownP!20) (size!39513 testedP!265)))))

(declare-fun b!5119150 () Bool)

(assert (=> b!5119150 (= e!3192690 (isPrefix!5612 (tail!10072 testedP!265) (tail!10072 knownP!20)))))

(declare-fun b!5119149 () Bool)

(declare-fun res!2179665 () Bool)

(assert (=> b!5119149 (=> (not res!2179665) (not e!3192690))))

(assert (=> b!5119149 (= res!2179665 (= (head!10935 testedP!265) (head!10935 knownP!20)))))

(declare-fun d!1654297 () Bool)

(assert (=> d!1654297 e!3192692))

(declare-fun res!2179666 () Bool)

(assert (=> d!1654297 (=> res!2179666 e!3192692)))

(declare-fun lt!2110321 () Bool)

(assert (=> d!1654297 (= res!2179666 (not lt!2110321))))

(assert (=> d!1654297 (= lt!2110321 e!3192691)))

(declare-fun res!2179668 () Bool)

(assert (=> d!1654297 (=> res!2179668 e!3192691)))

(assert (=> d!1654297 (= res!2179668 ((_ is Nil!59207) testedP!265))))

(assert (=> d!1654297 (= (isPrefix!5612 testedP!265 knownP!20) lt!2110321)))

(assert (= (and d!1654297 (not res!2179668)) b!5119148))

(assert (= (and b!5119148 res!2179667) b!5119149))

(assert (= (and b!5119149 res!2179665) b!5119150))

(assert (= (and d!1654297 (not res!2179666)) b!5119151))

(assert (=> b!5119151 m!6179462))

(assert (=> b!5119151 m!6179460))

(declare-fun m!6179496 () Bool)

(assert (=> b!5119150 m!6179496))

(assert (=> b!5119150 m!6179480))

(assert (=> b!5119150 m!6179496))

(assert (=> b!5119150 m!6179480))

(declare-fun m!6179498 () Bool)

(assert (=> b!5119150 m!6179498))

(declare-fun m!6179500 () Bool)

(assert (=> b!5119149 m!6179500))

(declare-fun m!6179502 () Bool)

(assert (=> b!5119149 m!6179502))

(assert (=> b!5119110 d!1654297))

(declare-fun d!1654301 () Bool)

(assert (=> d!1654301 (isPrefix!5612 testedP!265 knownP!20)))

(declare-fun lt!2110330 () Unit!150345)

(declare-fun choose!37618 (List!59331 List!59331 List!59331) Unit!150345)

(assert (=> d!1654301 (= lt!2110330 (choose!37618 knownP!20 testedP!265 input!5745))))

(assert (=> d!1654301 (isPrefix!5612 knownP!20 input!5745)))

(assert (=> d!1654301 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!749 knownP!20 testedP!265 input!5745) lt!2110330)))

(declare-fun bs!1192566 () Bool)

(assert (= bs!1192566 d!1654301))

(assert (=> bs!1192566 m!6179400))

(declare-fun m!6179532 () Bool)

(assert (=> bs!1192566 m!6179532))

(assert (=> bs!1192566 m!6179446))

(assert (=> b!5119110 d!1654301))

(declare-fun b!5119168 () Bool)

(declare-fun e!3192702 () Bool)

(declare-fun e!3192701 () Bool)

(assert (=> b!5119168 (= e!3192702 e!3192701)))

(declare-fun res!2179675 () Bool)

(assert (=> b!5119168 (=> (not res!2179675) (not e!3192701))))

(assert (=> b!5119168 (= res!2179675 (not ((_ is Nil!59207) input!5745)))))

(declare-fun b!5119171 () Bool)

(declare-fun e!3192703 () Bool)

(assert (=> b!5119171 (= e!3192703 (>= (size!39513 input!5745) (size!39513 knownP!20)))))

(declare-fun b!5119170 () Bool)

(assert (=> b!5119170 (= e!3192701 (isPrefix!5612 (tail!10072 knownP!20) (tail!10072 input!5745)))))

(declare-fun b!5119169 () Bool)

(declare-fun res!2179673 () Bool)

(assert (=> b!5119169 (=> (not res!2179673) (not e!3192701))))

(assert (=> b!5119169 (= res!2179673 (= (head!10935 knownP!20) (head!10935 input!5745)))))

(declare-fun d!1654311 () Bool)

(assert (=> d!1654311 e!3192703))

(declare-fun res!2179674 () Bool)

(assert (=> d!1654311 (=> res!2179674 e!3192703)))

(declare-fun lt!2110331 () Bool)

(assert (=> d!1654311 (= res!2179674 (not lt!2110331))))

(assert (=> d!1654311 (= lt!2110331 e!3192702)))

(declare-fun res!2179676 () Bool)

(assert (=> d!1654311 (=> res!2179676 e!3192702)))

(assert (=> d!1654311 (= res!2179676 ((_ is Nil!59207) knownP!20))))

(assert (=> d!1654311 (= (isPrefix!5612 knownP!20 input!5745) lt!2110331)))

(assert (= (and d!1654311 (not res!2179676)) b!5119168))

(assert (= (and b!5119168 res!2179675) b!5119169))

(assert (= (and b!5119169 res!2179673) b!5119170))

(assert (= (and d!1654311 (not res!2179674)) b!5119171))

(assert (=> b!5119171 m!6179442))

(assert (=> b!5119171 m!6179462))

(assert (=> b!5119170 m!6179480))

(declare-fun m!6179534 () Bool)

(assert (=> b!5119170 m!6179534))

(assert (=> b!5119170 m!6179480))

(assert (=> b!5119170 m!6179534))

(declare-fun m!6179536 () Bool)

(assert (=> b!5119170 m!6179536))

(assert (=> b!5119169 m!6179502))

(declare-fun m!6179538 () Bool)

(assert (=> b!5119169 m!6179538))

(assert (=> b!5119109 d!1654311))

(declare-fun b!5119194 () Bool)

(declare-fun res!2179693 () Bool)

(declare-fun e!3192718 () Bool)

(assert (=> b!5119194 (=> (not res!2179693) (not e!3192718))))

(declare-fun lt!2110337 () List!59331)

(assert (=> b!5119194 (= res!2179693 (= (size!39513 lt!2110337) (+ (size!39513 testedP!265) (size!39513 lt!2110307))))))

(declare-fun b!5119195 () Bool)

(assert (=> b!5119195 (= e!3192718 (or (not (= lt!2110307 Nil!59207)) (= lt!2110337 testedP!265)))))

(declare-fun b!5119192 () Bool)

(declare-fun e!3192717 () List!59331)

(assert (=> b!5119192 (= e!3192717 lt!2110307)))

(declare-fun b!5119193 () Bool)

(assert (=> b!5119193 (= e!3192717 (Cons!59207 (h!65655 testedP!265) (++!13032 (t!372346 testedP!265) lt!2110307)))))

(declare-fun d!1654313 () Bool)

(assert (=> d!1654313 e!3192718))

(declare-fun res!2179694 () Bool)

(assert (=> d!1654313 (=> (not res!2179694) (not e!3192718))))

(declare-fun content!10529 (List!59331) (InoxSet C!28680))

(assert (=> d!1654313 (= res!2179694 (= (content!10529 lt!2110337) ((_ map or) (content!10529 testedP!265) (content!10529 lt!2110307))))))

(assert (=> d!1654313 (= lt!2110337 e!3192717)))

(declare-fun c!879655 () Bool)

(assert (=> d!1654313 (= c!879655 ((_ is Nil!59207) testedP!265))))

(assert (=> d!1654313 (= (++!13032 testedP!265 lt!2110307) lt!2110337)))

(assert (= (and d!1654313 c!879655) b!5119192))

(assert (= (and d!1654313 (not c!879655)) b!5119193))

(assert (= (and d!1654313 res!2179694) b!5119194))

(assert (= (and b!5119194 res!2179693) b!5119195))

(declare-fun m!6179550 () Bool)

(assert (=> b!5119194 m!6179550))

(assert (=> b!5119194 m!6179460))

(declare-fun m!6179552 () Bool)

(assert (=> b!5119194 m!6179552))

(declare-fun m!6179554 () Bool)

(assert (=> b!5119193 m!6179554))

(declare-fun m!6179556 () Bool)

(assert (=> d!1654313 m!6179556))

(declare-fun m!6179558 () Bool)

(assert (=> d!1654313 m!6179558))

(declare-fun m!6179560 () Bool)

(assert (=> d!1654313 m!6179560))

(assert (=> b!5119098 d!1654313))

(declare-fun d!1654317 () Bool)

(assert (=> d!1654317 (= (head!10935 lt!2110311) (h!65655 lt!2110311))))

(assert (=> b!5119108 d!1654317))

(declare-fun d!1654319 () Bool)

(assert (=> d!1654319 (= lt!2110304 lt!2110307)))

(declare-fun lt!2110340 () Unit!150345)

(declare-fun choose!37621 (List!59331 List!59331 List!59331 List!59331 List!59331) Unit!150345)

(assert (=> d!1654319 (= lt!2110340 (choose!37621 testedP!265 lt!2110304 testedP!265 lt!2110307 input!5745))))

(assert (=> d!1654319 (isPrefix!5612 testedP!265 input!5745)))

(assert (=> d!1654319 (= (lemmaSamePrefixThenSameSuffix!2646 testedP!265 lt!2110304 testedP!265 lt!2110307 input!5745) lt!2110340)))

(declare-fun bs!1192567 () Bool)

(assert (= bs!1192567 d!1654319))

(declare-fun m!6179562 () Bool)

(assert (=> bs!1192567 m!6179562))

(assert (=> bs!1192567 m!6179444))

(assert (=> b!5119108 d!1654319))

(declare-fun d!1654321 () Bool)

(declare-fun lambda!251199 () Int)

(declare-fun forall!13607 (List!59332 Int) Bool)

(assert (=> d!1654321 (= (inv!78698 setElem!30277) (forall!13607 (exprs!4091 setElem!30277) lambda!251199))))

(declare-fun bs!1192581 () Bool)

(assert (= bs!1192581 d!1654321))

(declare-fun m!6179718 () Bool)

(assert (=> bs!1192581 m!6179718))

(assert (=> setNonEmpty!30277 d!1654321))

(declare-fun d!1654385 () Bool)

(declare-fun lt!2110399 () Int)

(assert (=> d!1654385 (>= lt!2110399 0)))

(declare-fun e!3192778 () Int)

(assert (=> d!1654385 (= lt!2110399 e!3192778)))

(declare-fun c!879692 () Bool)

(assert (=> d!1654385 (= c!879692 ((_ is Nil!59207) input!5745))))

(assert (=> d!1654385 (= (size!39513 input!5745) lt!2110399)))

(declare-fun b!5119293 () Bool)

(assert (=> b!5119293 (= e!3192778 0)))

(declare-fun b!5119294 () Bool)

(assert (=> b!5119294 (= e!3192778 (+ 1 (size!39513 (t!372346 input!5745))))))

(assert (= (and d!1654385 c!879692) b!5119293))

(assert (= (and d!1654385 (not c!879692)) b!5119294))

(declare-fun m!6179720 () Bool)

(assert (=> b!5119294 m!6179720))

(assert (=> b!5119102 d!1654385))

(declare-fun b!5119297 () Bool)

(declare-fun res!2179721 () Bool)

(declare-fun e!3192780 () Bool)

(assert (=> b!5119297 (=> (not res!2179721) (not e!3192780))))

(declare-fun lt!2110400 () List!59331)

(assert (=> b!5119297 (= res!2179721 (= (size!39513 lt!2110400) (+ (size!39513 testedP!265) (size!39513 lt!2110304))))))

(declare-fun b!5119298 () Bool)

(assert (=> b!5119298 (= e!3192780 (or (not (= lt!2110304 Nil!59207)) (= lt!2110400 testedP!265)))))

(declare-fun b!5119295 () Bool)

(declare-fun e!3192779 () List!59331)

(assert (=> b!5119295 (= e!3192779 lt!2110304)))

(declare-fun b!5119296 () Bool)

(assert (=> b!5119296 (= e!3192779 (Cons!59207 (h!65655 testedP!265) (++!13032 (t!372346 testedP!265) lt!2110304)))))

(declare-fun d!1654387 () Bool)

(assert (=> d!1654387 e!3192780))

(declare-fun res!2179722 () Bool)

(assert (=> d!1654387 (=> (not res!2179722) (not e!3192780))))

(assert (=> d!1654387 (= res!2179722 (= (content!10529 lt!2110400) ((_ map or) (content!10529 testedP!265) (content!10529 lt!2110304))))))

(assert (=> d!1654387 (= lt!2110400 e!3192779)))

(declare-fun c!879693 () Bool)

(assert (=> d!1654387 (= c!879693 ((_ is Nil!59207) testedP!265))))

(assert (=> d!1654387 (= (++!13032 testedP!265 lt!2110304) lt!2110400)))

(assert (= (and d!1654387 c!879693) b!5119295))

(assert (= (and d!1654387 (not c!879693)) b!5119296))

(assert (= (and d!1654387 res!2179722) b!5119297))

(assert (= (and b!5119297 res!2179721) b!5119298))

(declare-fun m!6179722 () Bool)

(assert (=> b!5119297 m!6179722))

(assert (=> b!5119297 m!6179460))

(declare-fun m!6179724 () Bool)

(assert (=> b!5119297 m!6179724))

(declare-fun m!6179726 () Bool)

(assert (=> b!5119296 m!6179726))

(declare-fun m!6179728 () Bool)

(assert (=> d!1654387 m!6179728))

(assert (=> d!1654387 m!6179558))

(declare-fun m!6179730 () Bool)

(assert (=> d!1654387 m!6179730))

(assert (=> b!5119101 d!1654387))

(declare-fun b!5119301 () Bool)

(declare-fun res!2179723 () Bool)

(declare-fun e!3192782 () Bool)

(assert (=> b!5119301 (=> (not res!2179723) (not e!3192782))))

(declare-fun lt!2110401 () List!59331)

(assert (=> b!5119301 (= res!2179723 (= (size!39513 lt!2110401) (+ (size!39513 lt!2110311) (size!39513 lt!2110308))))))

(declare-fun b!5119302 () Bool)

(assert (=> b!5119302 (= e!3192782 (or (not (= lt!2110308 Nil!59207)) (= lt!2110401 lt!2110311)))))

(declare-fun b!5119299 () Bool)

(declare-fun e!3192781 () List!59331)

(assert (=> b!5119299 (= e!3192781 lt!2110308)))

(declare-fun b!5119300 () Bool)

(assert (=> b!5119300 (= e!3192781 (Cons!59207 (h!65655 lt!2110311) (++!13032 (t!372346 lt!2110311) lt!2110308)))))

(declare-fun d!1654389 () Bool)

(assert (=> d!1654389 e!3192782))

(declare-fun res!2179724 () Bool)

(assert (=> d!1654389 (=> (not res!2179724) (not e!3192782))))

(assert (=> d!1654389 (= res!2179724 (= (content!10529 lt!2110401) ((_ map or) (content!10529 lt!2110311) (content!10529 lt!2110308))))))

(assert (=> d!1654389 (= lt!2110401 e!3192781)))

(declare-fun c!879694 () Bool)

(assert (=> d!1654389 (= c!879694 ((_ is Nil!59207) lt!2110311))))

(assert (=> d!1654389 (= (++!13032 lt!2110311 lt!2110308) lt!2110401)))

(assert (= (and d!1654389 c!879694) b!5119299))

(assert (= (and d!1654389 (not c!879694)) b!5119300))

(assert (= (and d!1654389 res!2179724) b!5119301))

(assert (= (and b!5119301 res!2179723) b!5119302))

(declare-fun m!6179732 () Bool)

(assert (=> b!5119301 m!6179732))

(declare-fun m!6179734 () Bool)

(assert (=> b!5119301 m!6179734))

(declare-fun m!6179736 () Bool)

(assert (=> b!5119301 m!6179736))

(declare-fun m!6179738 () Bool)

(assert (=> b!5119300 m!6179738))

(declare-fun m!6179740 () Bool)

(assert (=> d!1654389 m!6179740))

(declare-fun m!6179742 () Bool)

(assert (=> d!1654389 m!6179742))

(declare-fun m!6179744 () Bool)

(assert (=> d!1654389 m!6179744))

(assert (=> b!5119101 d!1654389))

(declare-fun d!1654391 () Bool)

(assert (=> d!1654391 (= (++!13032 (++!13032 testedP!265 lt!2110311) lt!2110308) (++!13032 testedP!265 (++!13032 lt!2110311 lt!2110308)))))

(declare-fun lt!2110404 () Unit!150345)

(declare-fun choose!37623 (List!59331 List!59331 List!59331) Unit!150345)

(assert (=> d!1654391 (= lt!2110404 (choose!37623 testedP!265 lt!2110311 lt!2110308))))

(assert (=> d!1654391 (= (lemmaConcatAssociativity!2780 testedP!265 lt!2110311 lt!2110308) lt!2110404)))

(declare-fun bs!1192582 () Bool)

(assert (= bs!1192582 d!1654391))

(assert (=> bs!1192582 m!6179454))

(declare-fun m!6179746 () Bool)

(assert (=> bs!1192582 m!6179746))

(assert (=> bs!1192582 m!6179406))

(declare-fun m!6179748 () Bool)

(assert (=> bs!1192582 m!6179748))

(assert (=> bs!1192582 m!6179454))

(assert (=> bs!1192582 m!6179406))

(declare-fun m!6179750 () Bool)

(assert (=> bs!1192582 m!6179750))

(assert (=> b!5119101 d!1654391))

(declare-fun d!1654393 () Bool)

(declare-fun lt!2110405 () List!59331)

(assert (=> d!1654393 (= (++!13032 testedP!265 lt!2110405) input!5745)))

(declare-fun e!3192783 () List!59331)

(assert (=> d!1654393 (= lt!2110405 e!3192783)))

(declare-fun c!879695 () Bool)

(assert (=> d!1654393 (= c!879695 ((_ is Cons!59207) testedP!265))))

(assert (=> d!1654393 (>= (size!39513 input!5745) (size!39513 testedP!265))))

(assert (=> d!1654393 (= (getSuffix!3286 input!5745 testedP!265) lt!2110405)))

(declare-fun b!5119303 () Bool)

(assert (=> b!5119303 (= e!3192783 (getSuffix!3286 (tail!10072 input!5745) (t!372346 testedP!265)))))

(declare-fun b!5119304 () Bool)

(assert (=> b!5119304 (= e!3192783 input!5745)))

(assert (= (and d!1654393 c!879695) b!5119303))

(assert (= (and d!1654393 (not c!879695)) b!5119304))

(declare-fun m!6179752 () Bool)

(assert (=> d!1654393 m!6179752))

(assert (=> d!1654393 m!6179442))

(assert (=> d!1654393 m!6179460))

(assert (=> b!5119303 m!6179534))

(assert (=> b!5119303 m!6179534))

(declare-fun m!6179754 () Bool)

(assert (=> b!5119303 m!6179754))

(assert (=> b!5119111 d!1654393))

(declare-fun b!5119305 () Bool)

(declare-fun e!3192785 () Bool)

(declare-fun e!3192784 () Bool)

(assert (=> b!5119305 (= e!3192785 e!3192784)))

(declare-fun res!2179727 () Bool)

(assert (=> b!5119305 (=> (not res!2179727) (not e!3192784))))

(assert (=> b!5119305 (= res!2179727 (not ((_ is Nil!59207) knownP!20)))))

(declare-fun b!5119308 () Bool)

(declare-fun e!3192786 () Bool)

(assert (=> b!5119308 (= e!3192786 (>= (size!39513 knownP!20) (size!39513 lt!2110296)))))

(declare-fun b!5119307 () Bool)

(assert (=> b!5119307 (= e!3192784 (isPrefix!5612 (tail!10072 lt!2110296) (tail!10072 knownP!20)))))

(declare-fun b!5119306 () Bool)

(declare-fun res!2179725 () Bool)

(assert (=> b!5119306 (=> (not res!2179725) (not e!3192784))))

(assert (=> b!5119306 (= res!2179725 (= (head!10935 lt!2110296) (head!10935 knownP!20)))))

(declare-fun d!1654395 () Bool)

(assert (=> d!1654395 e!3192786))

(declare-fun res!2179726 () Bool)

(assert (=> d!1654395 (=> res!2179726 e!3192786)))

(declare-fun lt!2110406 () Bool)

(assert (=> d!1654395 (= res!2179726 (not lt!2110406))))

(assert (=> d!1654395 (= lt!2110406 e!3192785)))

(declare-fun res!2179728 () Bool)

(assert (=> d!1654395 (=> res!2179728 e!3192785)))

(assert (=> d!1654395 (= res!2179728 ((_ is Nil!59207) lt!2110296))))

(assert (=> d!1654395 (= (isPrefix!5612 lt!2110296 knownP!20) lt!2110406)))

(assert (= (and d!1654395 (not res!2179728)) b!5119305))

(assert (= (and b!5119305 res!2179727) b!5119306))

(assert (= (and b!5119306 res!2179725) b!5119307))

(assert (= (and d!1654395 (not res!2179726)) b!5119308))

(assert (=> b!5119308 m!6179462))

(declare-fun m!6179756 () Bool)

(assert (=> b!5119308 m!6179756))

(declare-fun m!6179758 () Bool)

(assert (=> b!5119307 m!6179758))

(assert (=> b!5119307 m!6179480))

(assert (=> b!5119307 m!6179758))

(assert (=> b!5119307 m!6179480))

(declare-fun m!6179760 () Bool)

(assert (=> b!5119307 m!6179760))

(declare-fun m!6179762 () Bool)

(assert (=> b!5119306 m!6179762))

(assert (=> b!5119306 m!6179502))

(assert (=> b!5119111 d!1654395))

(declare-fun d!1654397 () Bool)

(assert (=> d!1654397 true))

(declare-fun lambda!251202 () Int)

(declare-fun flatMap!356 ((InoxSet Context!7182) Int) (InoxSet Context!7182))

(assert (=> d!1654397 (= (derivationStepZipper!842 z!4463 lt!2110301) (flatMap!356 z!4463 lambda!251202))))

(declare-fun bs!1192583 () Bool)

(assert (= bs!1192583 d!1654397))

(declare-fun m!6179764 () Bool)

(assert (=> bs!1192583 m!6179764))

(assert (=> b!5119111 d!1654397))

(declare-fun d!1654399 () Bool)

(declare-fun c!879700 () Bool)

(assert (=> d!1654399 (= c!879700 ((_ is Cons!59207) lt!2110296))))

(declare-fun e!3192789 () (InoxSet Context!7182))

(assert (=> d!1654399 (= (derivationZipper!106 baseZ!46 lt!2110296) e!3192789)))

(declare-fun b!5119315 () Bool)

(assert (=> b!5119315 (= e!3192789 (derivationZipper!106 (derivationStepZipper!842 baseZ!46 (h!65655 lt!2110296)) (t!372346 lt!2110296)))))

(declare-fun b!5119316 () Bool)

(assert (=> b!5119316 (= e!3192789 baseZ!46)))

(assert (= (and d!1654399 c!879700) b!5119315))

(assert (= (and d!1654399 (not c!879700)) b!5119316))

(declare-fun m!6179766 () Bool)

(assert (=> b!5119315 m!6179766))

(assert (=> b!5119315 m!6179766))

(declare-fun m!6179768 () Bool)

(assert (=> b!5119315 m!6179768))

(assert (=> b!5119111 d!1654399))

(declare-fun b!5119319 () Bool)

(declare-fun res!2179729 () Bool)

(declare-fun e!3192791 () Bool)

(assert (=> b!5119319 (=> (not res!2179729) (not e!3192791))))

(declare-fun lt!2110407 () List!59331)

(assert (=> b!5119319 (= res!2179729 (= (size!39513 lt!2110407) (+ (size!39513 testedP!265) (size!39513 (Cons!59207 lt!2110301 Nil!59207)))))))

(declare-fun b!5119320 () Bool)

(assert (=> b!5119320 (= e!3192791 (or (not (= (Cons!59207 lt!2110301 Nil!59207) Nil!59207)) (= lt!2110407 testedP!265)))))

(declare-fun b!5119317 () Bool)

(declare-fun e!3192790 () List!59331)

(assert (=> b!5119317 (= e!3192790 (Cons!59207 lt!2110301 Nil!59207))))

(declare-fun b!5119318 () Bool)

(assert (=> b!5119318 (= e!3192790 (Cons!59207 (h!65655 testedP!265) (++!13032 (t!372346 testedP!265) (Cons!59207 lt!2110301 Nil!59207))))))

(declare-fun d!1654401 () Bool)

(assert (=> d!1654401 e!3192791))

(declare-fun res!2179730 () Bool)

(assert (=> d!1654401 (=> (not res!2179730) (not e!3192791))))

(assert (=> d!1654401 (= res!2179730 (= (content!10529 lt!2110407) ((_ map or) (content!10529 testedP!265) (content!10529 (Cons!59207 lt!2110301 Nil!59207)))))))

(assert (=> d!1654401 (= lt!2110407 e!3192790)))

(declare-fun c!879701 () Bool)

(assert (=> d!1654401 (= c!879701 ((_ is Nil!59207) testedP!265))))

(assert (=> d!1654401 (= (++!13032 testedP!265 (Cons!59207 lt!2110301 Nil!59207)) lt!2110407)))

(assert (= (and d!1654401 c!879701) b!5119317))

(assert (= (and d!1654401 (not c!879701)) b!5119318))

(assert (= (and d!1654401 res!2179730) b!5119319))

(assert (= (and b!5119319 res!2179729) b!5119320))

(declare-fun m!6179770 () Bool)

(assert (=> b!5119319 m!6179770))

(assert (=> b!5119319 m!6179460))

(declare-fun m!6179772 () Bool)

(assert (=> b!5119319 m!6179772))

(declare-fun m!6179774 () Bool)

(assert (=> b!5119318 m!6179774))

(declare-fun m!6179776 () Bool)

(assert (=> d!1654401 m!6179776))

(assert (=> d!1654401 m!6179558))

(declare-fun m!6179778 () Bool)

(assert (=> d!1654401 m!6179778))

(assert (=> b!5119111 d!1654401))

(declare-fun b!5119323 () Bool)

(declare-fun res!2179731 () Bool)

(declare-fun e!3192793 () Bool)

(assert (=> b!5119323 (=> (not res!2179731) (not e!3192793))))

(declare-fun lt!2110408 () List!59331)

(assert (=> b!5119323 (= res!2179731 (= (size!39513 lt!2110408) (+ (size!39513 knownP!20) (size!39513 lt!2110308))))))

(declare-fun b!5119324 () Bool)

(assert (=> b!5119324 (= e!3192793 (or (not (= lt!2110308 Nil!59207)) (= lt!2110408 knownP!20)))))

(declare-fun b!5119321 () Bool)

(declare-fun e!3192792 () List!59331)

(assert (=> b!5119321 (= e!3192792 lt!2110308)))

(declare-fun b!5119322 () Bool)

(assert (=> b!5119322 (= e!3192792 (Cons!59207 (h!65655 knownP!20) (++!13032 (t!372346 knownP!20) lt!2110308)))))

(declare-fun d!1654403 () Bool)

(assert (=> d!1654403 e!3192793))

(declare-fun res!2179732 () Bool)

(assert (=> d!1654403 (=> (not res!2179732) (not e!3192793))))

(assert (=> d!1654403 (= res!2179732 (= (content!10529 lt!2110408) ((_ map or) (content!10529 knownP!20) (content!10529 lt!2110308))))))

(assert (=> d!1654403 (= lt!2110408 e!3192792)))

(declare-fun c!879702 () Bool)

(assert (=> d!1654403 (= c!879702 ((_ is Nil!59207) knownP!20))))

(assert (=> d!1654403 (= (++!13032 knownP!20 lt!2110308) lt!2110408)))

(assert (= (and d!1654403 c!879702) b!5119321))

(assert (= (and d!1654403 (not c!879702)) b!5119322))

(assert (= (and d!1654403 res!2179732) b!5119323))

(assert (= (and b!5119323 res!2179731) b!5119324))

(declare-fun m!6179780 () Bool)

(assert (=> b!5119323 m!6179780))

(assert (=> b!5119323 m!6179462))

(assert (=> b!5119323 m!6179736))

(declare-fun m!6179782 () Bool)

(assert (=> b!5119322 m!6179782))

(declare-fun m!6179784 () Bool)

(assert (=> d!1654403 m!6179784))

(declare-fun m!6179786 () Bool)

(assert (=> d!1654403 m!6179786))

(assert (=> d!1654403 m!6179744))

(assert (=> b!5119111 d!1654403))

(declare-fun b!5119325 () Bool)

(declare-fun e!3192795 () Bool)

(declare-fun e!3192794 () Bool)

(assert (=> b!5119325 (= e!3192795 e!3192794)))

(declare-fun res!2179735 () Bool)

(assert (=> b!5119325 (=> (not res!2179735) (not e!3192794))))

(assert (=> b!5119325 (= res!2179735 (not ((_ is Nil!59207) input!5745)))))

(declare-fun b!5119328 () Bool)

(declare-fun e!3192796 () Bool)

(assert (=> b!5119328 (= e!3192796 (>= (size!39513 input!5745) (size!39513 lt!2110296)))))

(declare-fun b!5119327 () Bool)

(assert (=> b!5119327 (= e!3192794 (isPrefix!5612 (tail!10072 lt!2110296) (tail!10072 input!5745)))))

(declare-fun b!5119326 () Bool)

(declare-fun res!2179733 () Bool)

(assert (=> b!5119326 (=> (not res!2179733) (not e!3192794))))

(assert (=> b!5119326 (= res!2179733 (= (head!10935 lt!2110296) (head!10935 input!5745)))))

(declare-fun d!1654405 () Bool)

(assert (=> d!1654405 e!3192796))

(declare-fun res!2179734 () Bool)

(assert (=> d!1654405 (=> res!2179734 e!3192796)))

(declare-fun lt!2110409 () Bool)

(assert (=> d!1654405 (= res!2179734 (not lt!2110409))))

(assert (=> d!1654405 (= lt!2110409 e!3192795)))

(declare-fun res!2179736 () Bool)

(assert (=> d!1654405 (=> res!2179736 e!3192795)))

(assert (=> d!1654405 (= res!2179736 ((_ is Nil!59207) lt!2110296))))

(assert (=> d!1654405 (= (isPrefix!5612 lt!2110296 input!5745) lt!2110409)))

(assert (= (and d!1654405 (not res!2179736)) b!5119325))

(assert (= (and b!5119325 res!2179735) b!5119326))

(assert (= (and b!5119326 res!2179733) b!5119327))

(assert (= (and d!1654405 (not res!2179734)) b!5119328))

(assert (=> b!5119328 m!6179442))

(assert (=> b!5119328 m!6179756))

(assert (=> b!5119327 m!6179758))

(assert (=> b!5119327 m!6179534))

(assert (=> b!5119327 m!6179758))

(assert (=> b!5119327 m!6179534))

(declare-fun m!6179788 () Bool)

(assert (=> b!5119327 m!6179788))

(assert (=> b!5119326 m!6179762))

(assert (=> b!5119326 m!6179538))

(assert (=> b!5119111 d!1654405))

(declare-fun d!1654407 () Bool)

(assert (=> d!1654407 (= (derivationZipper!106 baseZ!46 (++!13032 testedP!265 (Cons!59207 lt!2110301 Nil!59207))) (derivationStepZipper!842 z!4463 lt!2110301))))

(declare-fun lt!2110412 () Unit!150345)

(declare-fun choose!37624 ((InoxSet Context!7182) (InoxSet Context!7182) List!59331 C!28680) Unit!150345)

(assert (=> d!1654407 (= lt!2110412 (choose!37624 baseZ!46 z!4463 testedP!265 lt!2110301))))

(assert (=> d!1654407 (= (derivationZipper!106 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1654407 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!63 baseZ!46 z!4463 testedP!265 lt!2110301) lt!2110412)))

(declare-fun bs!1192584 () Bool)

(assert (= bs!1192584 d!1654407))

(assert (=> bs!1192584 m!6179422))

(declare-fun m!6179790 () Bool)

(assert (=> bs!1192584 m!6179790))

(assert (=> bs!1192584 m!6179424))

(declare-fun m!6179792 () Bool)

(assert (=> bs!1192584 m!6179792))

(assert (=> bs!1192584 m!6179424))

(assert (=> bs!1192584 m!6179458))

(assert (=> b!5119111 d!1654407))

(declare-fun d!1654409 () Bool)

(assert (=> d!1654409 (isPrefix!5612 (++!13032 testedP!265 (Cons!59207 (head!10935 (getSuffix!3286 input!5745 testedP!265)) Nil!59207)) input!5745)))

(declare-fun lt!2110415 () Unit!150345)

(declare-fun choose!37625 (List!59331 List!59331) Unit!150345)

(assert (=> d!1654409 (= lt!2110415 (choose!37625 testedP!265 input!5745))))

(assert (=> d!1654409 (isPrefix!5612 testedP!265 input!5745)))

(assert (=> d!1654409 (= (lemmaAddHeadSuffixToPrefixStillPrefix!998 testedP!265 input!5745) lt!2110415)))

(declare-fun bs!1192585 () Bool)

(assert (= bs!1192585 d!1654409))

(assert (=> bs!1192585 m!6179414))

(declare-fun m!6179794 () Bool)

(assert (=> bs!1192585 m!6179794))

(assert (=> bs!1192585 m!6179444))

(declare-fun m!6179796 () Bool)

(assert (=> bs!1192585 m!6179796))

(declare-fun m!6179798 () Bool)

(assert (=> bs!1192585 m!6179798))

(declare-fun m!6179800 () Bool)

(assert (=> bs!1192585 m!6179800))

(assert (=> bs!1192585 m!6179414))

(assert (=> bs!1192585 m!6179796))

(assert (=> b!5119111 d!1654409))

(declare-fun d!1654411 () Bool)

(assert (=> d!1654411 (= (head!10935 lt!2110307) (h!65655 lt!2110307))))

(assert (=> b!5119111 d!1654411))

(declare-fun d!1654413 () Bool)

(declare-fun lt!2110416 () List!59331)

(assert (=> d!1654413 (= (++!13032 knownP!20 lt!2110416) input!5745)))

(declare-fun e!3192797 () List!59331)

(assert (=> d!1654413 (= lt!2110416 e!3192797)))

(declare-fun c!879704 () Bool)

(assert (=> d!1654413 (= c!879704 ((_ is Cons!59207) knownP!20))))

(assert (=> d!1654413 (>= (size!39513 input!5745) (size!39513 knownP!20))))

(assert (=> d!1654413 (= (getSuffix!3286 input!5745 knownP!20) lt!2110416)))

(declare-fun b!5119329 () Bool)

(assert (=> b!5119329 (= e!3192797 (getSuffix!3286 (tail!10072 input!5745) (t!372346 knownP!20)))))

(declare-fun b!5119330 () Bool)

(assert (=> b!5119330 (= e!3192797 input!5745)))

(assert (= (and d!1654413 c!879704) b!5119329))

(assert (= (and d!1654413 (not c!879704)) b!5119330))

(declare-fun m!6179802 () Bool)

(assert (=> d!1654413 m!6179802))

(assert (=> d!1654413 m!6179442))

(assert (=> d!1654413 m!6179462))

(assert (=> b!5119329 m!6179534))

(assert (=> b!5119329 m!6179534))

(declare-fun m!6179804 () Bool)

(assert (=> b!5119329 m!6179804))

(assert (=> b!5119111 d!1654413))

(declare-fun d!1654415 () Bool)

(assert (=> d!1654415 (isPrefix!5612 lt!2110296 knownP!20)))

(declare-fun lt!2110417 () Unit!150345)

(assert (=> d!1654415 (= lt!2110417 (choose!37618 knownP!20 lt!2110296 input!5745))))

(assert (=> d!1654415 (isPrefix!5612 knownP!20 input!5745)))

(assert (=> d!1654415 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!749 knownP!20 lt!2110296 input!5745) lt!2110417)))

(declare-fun bs!1192586 () Bool)

(assert (= bs!1192586 d!1654415))

(assert (=> bs!1192586 m!6179416))

(declare-fun m!6179806 () Bool)

(assert (=> bs!1192586 m!6179806))

(assert (=> bs!1192586 m!6179446))

(assert (=> b!5119111 d!1654415))

(declare-fun d!1654417 () Bool)

(declare-fun lt!2110418 () List!59331)

(assert (=> d!1654417 (= (++!13032 lt!2110296 lt!2110418) knownP!20)))

(declare-fun e!3192798 () List!59331)

(assert (=> d!1654417 (= lt!2110418 e!3192798)))

(declare-fun c!879705 () Bool)

(assert (=> d!1654417 (= c!879705 ((_ is Cons!59207) lt!2110296))))

(assert (=> d!1654417 (>= (size!39513 knownP!20) (size!39513 lt!2110296))))

(assert (=> d!1654417 (= (getSuffix!3286 knownP!20 lt!2110296) lt!2110418)))

(declare-fun b!5119331 () Bool)

(assert (=> b!5119331 (= e!3192798 (getSuffix!3286 (tail!10072 knownP!20) (t!372346 lt!2110296)))))

(declare-fun b!5119332 () Bool)

(assert (=> b!5119332 (= e!3192798 knownP!20)))

(assert (= (and d!1654417 c!879705) b!5119331))

(assert (= (and d!1654417 (not c!879705)) b!5119332))

(declare-fun m!6179808 () Bool)

(assert (=> d!1654417 m!6179808))

(assert (=> d!1654417 m!6179462))

(assert (=> d!1654417 m!6179756))

(assert (=> b!5119331 m!6179480))

(assert (=> b!5119331 m!6179480))

(declare-fun m!6179810 () Bool)

(assert (=> b!5119331 m!6179810))

(assert (=> b!5119111 d!1654417))

(declare-fun d!1654419 () Bool)

(declare-fun c!879706 () Bool)

(assert (=> d!1654419 (= c!879706 ((_ is Cons!59207) testedP!265))))

(declare-fun e!3192799 () (InoxSet Context!7182))

(assert (=> d!1654419 (= (derivationZipper!106 baseZ!46 testedP!265) e!3192799)))

(declare-fun b!5119333 () Bool)

(assert (=> b!5119333 (= e!3192799 (derivationZipper!106 (derivationStepZipper!842 baseZ!46 (h!65655 testedP!265)) (t!372346 testedP!265)))))

(declare-fun b!5119334 () Bool)

(assert (=> b!5119334 (= e!3192799 baseZ!46)))

(assert (= (and d!1654419 c!879706) b!5119333))

(assert (= (and d!1654419 (not c!879706)) b!5119334))

(declare-fun m!6179812 () Bool)

(assert (=> b!5119333 m!6179812))

(assert (=> b!5119333 m!6179812))

(declare-fun m!6179814 () Bool)

(assert (=> b!5119333 m!6179814))

(assert (=> b!5119100 d!1654419))

(declare-fun b!5119337 () Bool)

(declare-fun res!2179737 () Bool)

(declare-fun e!3192801 () Bool)

(assert (=> b!5119337 (=> (not res!2179737) (not e!3192801))))

(declare-fun lt!2110419 () List!59331)

(assert (=> b!5119337 (= res!2179737 (= (size!39513 lt!2110419) (+ (size!39513 lt!2110296) (size!39513 lt!2110298))))))

(declare-fun b!5119338 () Bool)

(assert (=> b!5119338 (= e!3192801 (or (not (= lt!2110298 Nil!59207)) (= lt!2110419 lt!2110296)))))

(declare-fun b!5119335 () Bool)

(declare-fun e!3192800 () List!59331)

(assert (=> b!5119335 (= e!3192800 lt!2110298)))

(declare-fun b!5119336 () Bool)

(assert (=> b!5119336 (= e!3192800 (Cons!59207 (h!65655 lt!2110296) (++!13032 (t!372346 lt!2110296) lt!2110298)))))

(declare-fun d!1654421 () Bool)

(assert (=> d!1654421 e!3192801))

(declare-fun res!2179738 () Bool)

(assert (=> d!1654421 (=> (not res!2179738) (not e!3192801))))

(assert (=> d!1654421 (= res!2179738 (= (content!10529 lt!2110419) ((_ map or) (content!10529 lt!2110296) (content!10529 lt!2110298))))))

(assert (=> d!1654421 (= lt!2110419 e!3192800)))

(declare-fun c!879707 () Bool)

(assert (=> d!1654421 (= c!879707 ((_ is Nil!59207) lt!2110296))))

(assert (=> d!1654421 (= (++!13032 lt!2110296 lt!2110298) lt!2110419)))

(assert (= (and d!1654421 c!879707) b!5119335))

(assert (= (and d!1654421 (not c!879707)) b!5119336))

(assert (= (and d!1654421 res!2179738) b!5119337))

(assert (= (and b!5119337 res!2179737) b!5119338))

(declare-fun m!6179816 () Bool)

(assert (=> b!5119337 m!6179816))

(assert (=> b!5119337 m!6179756))

(declare-fun m!6179818 () Bool)

(assert (=> b!5119337 m!6179818))

(declare-fun m!6179820 () Bool)

(assert (=> b!5119336 m!6179820))

(declare-fun m!6179822 () Bool)

(assert (=> d!1654421 m!6179822))

(declare-fun m!6179824 () Bool)

(assert (=> d!1654421 m!6179824))

(declare-fun m!6179826 () Bool)

(assert (=> d!1654421 m!6179826))

(assert (=> b!5119105 d!1654421))

(declare-fun bs!1192587 () Bool)

(declare-fun d!1654423 () Bool)

(assert (= bs!1192587 (and d!1654423 d!1654321)))

(declare-fun lambda!251203 () Int)

(assert (=> bs!1192587 (= lambda!251203 lambda!251199)))

(assert (=> d!1654423 (= (inv!78698 setElem!30278) (forall!13607 (exprs!4091 setElem!30278) lambda!251203))))

(declare-fun bs!1192588 () Bool)

(assert (= bs!1192588 d!1654423))

(declare-fun m!6179828 () Bool)

(assert (=> bs!1192588 m!6179828))

(assert (=> setNonEmpty!30278 d!1654423))

(declare-fun d!1654425 () Bool)

(declare-fun c!879708 () Bool)

(assert (=> d!1654425 (= c!879708 (isEmpty!31932 knownP!20))))

(declare-fun e!3192802 () Bool)

(assert (=> d!1654425 (= (matchZipper!875 baseZ!46 knownP!20) e!3192802)))

(declare-fun b!5119339 () Bool)

(assert (=> b!5119339 (= e!3192802 (nullableZipper!1026 baseZ!46))))

(declare-fun b!5119340 () Bool)

(assert (=> b!5119340 (= e!3192802 (matchZipper!875 (derivationStepZipper!842 baseZ!46 (head!10935 knownP!20)) (tail!10072 knownP!20)))))

(assert (= (and d!1654425 c!879708) b!5119339))

(assert (= (and d!1654425 (not c!879708)) b!5119340))

(declare-fun m!6179830 () Bool)

(assert (=> d!1654425 m!6179830))

(declare-fun m!6179832 () Bool)

(assert (=> b!5119339 m!6179832))

(assert (=> b!5119340 m!6179502))

(assert (=> b!5119340 m!6179502))

(declare-fun m!6179834 () Bool)

(assert (=> b!5119340 m!6179834))

(assert (=> b!5119340 m!6179480))

(assert (=> b!5119340 m!6179834))

(assert (=> b!5119340 m!6179480))

(declare-fun m!6179836 () Bool)

(assert (=> b!5119340 m!6179836))

(assert (=> b!5119104 d!1654425))

(declare-fun d!1654427 () Bool)

(assert (=> d!1654427 (= ($colon$colon!1137 (tail!10072 lt!2110311) lt!2110301) (Cons!59207 lt!2110301 (tail!10072 lt!2110311)))))

(assert (=> b!5119113 d!1654427))

(declare-fun d!1654429 () Bool)

(assert (=> d!1654429 (= (tail!10072 lt!2110311) (t!372346 lt!2110311))))

(assert (=> b!5119113 d!1654429))

(declare-fun bs!1192589 () Bool)

(declare-fun b!5119345 () Bool)

(declare-fun d!1654431 () Bool)

(assert (= bs!1192589 (and b!5119345 d!1654431)))

(declare-fun lambda!251217 () Int)

(declare-fun lambda!251216 () Int)

(assert (=> bs!1192589 (not (= lambda!251217 lambda!251216))))

(declare-fun bs!1192590 () Bool)

(declare-fun b!5119346 () Bool)

(assert (= bs!1192590 (and b!5119346 d!1654431)))

(declare-fun lambda!251218 () Int)

(assert (=> bs!1192590 (not (= lambda!251218 lambda!251216))))

(declare-fun bs!1192591 () Bool)

(assert (= bs!1192591 (and b!5119346 b!5119345)))

(assert (=> bs!1192591 (= lambda!251218 lambda!251217)))

(declare-fun e!3192809 () Unit!150345)

(declare-fun Unit!150349 () Unit!150345)

(assert (=> b!5119345 (= e!3192809 Unit!150349)))

(declare-datatypes ((List!59334 0))(
  ( (Nil!59210) (Cons!59210 (h!65658 Context!7182) (t!372351 List!59334)) )
))
(declare-fun lt!2110442 () List!59334)

(declare-fun call!356616 () List!59334)

(assert (=> b!5119345 (= lt!2110442 call!356616)))

(declare-fun lt!2110438 () Unit!150345)

(declare-fun lemmaNotForallThenExists!336 (List!59334 Int) Unit!150345)

(assert (=> b!5119345 (= lt!2110438 (lemmaNotForallThenExists!336 lt!2110442 lambda!251216))))

(declare-fun call!356617 () Bool)

(assert (=> b!5119345 call!356617))

(declare-fun lt!2110443 () Unit!150345)

(assert (=> b!5119345 (= lt!2110443 lt!2110438)))

(declare-fun bm!356611 () Bool)

(declare-fun toList!8262 ((InoxSet Context!7182)) List!59334)

(assert (=> bm!356611 (= call!356616 (toList!8262 z!4463))))

(declare-fun Unit!150350 () Unit!150345)

(assert (=> b!5119346 (= e!3192809 Unit!150350)))

(declare-fun lt!2110437 () List!59334)

(assert (=> b!5119346 (= lt!2110437 call!356616)))

(declare-fun lt!2110436 () Unit!150345)

(declare-fun lemmaForallThenNotExists!319 (List!59334 Int) Unit!150345)

(assert (=> b!5119346 (= lt!2110436 (lemmaForallThenNotExists!319 lt!2110437 lambda!251216))))

(assert (=> b!5119346 (not call!356617)))

(declare-fun lt!2110440 () Unit!150345)

(assert (=> b!5119346 (= lt!2110440 lt!2110436)))

(declare-fun lt!2110441 () Bool)

(declare-datatypes ((Option!14696 0))(
  ( (None!14695) (Some!14695 (v!50708 List!59331)) )
))
(declare-fun isEmpty!31933 (Option!14696) Bool)

(declare-fun getLanguageWitness!813 ((InoxSet Context!7182)) Option!14696)

(assert (=> d!1654431 (= lt!2110441 (isEmpty!31933 (getLanguageWitness!813 z!4463)))))

(declare-fun forall!13608 ((InoxSet Context!7182) Int) Bool)

(assert (=> d!1654431 (= lt!2110441 (forall!13608 z!4463 lambda!251216))))

(declare-fun lt!2110439 () Unit!150345)

(assert (=> d!1654431 (= lt!2110439 e!3192809)))

(declare-fun c!879719 () Bool)

(assert (=> d!1654431 (= c!879719 (not (forall!13608 z!4463 lambda!251216)))))

(assert (=> d!1654431 (= (lostCauseZipper!1093 z!4463) lt!2110441)))

(declare-fun bm!356612 () Bool)

(declare-fun exists!1473 (List!59334 Int) Bool)

(assert (=> bm!356612 (= call!356617 (exists!1473 (ite c!879719 lt!2110442 lt!2110437) (ite c!879719 lambda!251217 lambda!251218)))))

(assert (= (and d!1654431 c!879719) b!5119345))

(assert (= (and d!1654431 (not c!879719)) b!5119346))

(assert (= (or b!5119345 b!5119346) bm!356611))

(assert (= (or b!5119345 b!5119346) bm!356612))

(declare-fun m!6179838 () Bool)

(assert (=> d!1654431 m!6179838))

(assert (=> d!1654431 m!6179838))

(declare-fun m!6179840 () Bool)

(assert (=> d!1654431 m!6179840))

(declare-fun m!6179842 () Bool)

(assert (=> d!1654431 m!6179842))

(assert (=> d!1654431 m!6179842))

(declare-fun m!6179844 () Bool)

(assert (=> bm!356611 m!6179844))

(declare-fun m!6179846 () Bool)

(assert (=> bm!356612 m!6179846))

(declare-fun m!6179848 () Bool)

(assert (=> b!5119346 m!6179848))

(declare-fun m!6179850 () Bool)

(assert (=> b!5119345 m!6179850))

(assert (=> b!5119103 d!1654431))

(declare-fun d!1654433 () Bool)

(declare-fun lt!2110444 () Int)

(assert (=> d!1654433 (>= lt!2110444 0)))

(declare-fun e!3192810 () Int)

(assert (=> d!1654433 (= lt!2110444 e!3192810)))

(declare-fun c!879720 () Bool)

(assert (=> d!1654433 (= c!879720 ((_ is Nil!59207) testedP!265))))

(assert (=> d!1654433 (= (size!39513 testedP!265) lt!2110444)))

(declare-fun b!5119347 () Bool)

(assert (=> b!5119347 (= e!3192810 0)))

(declare-fun b!5119348 () Bool)

(assert (=> b!5119348 (= e!3192810 (+ 1 (size!39513 (t!372346 testedP!265))))))

(assert (= (and d!1654433 c!879720) b!5119347))

(assert (= (and d!1654433 (not c!879720)) b!5119348))

(declare-fun m!6179852 () Bool)

(assert (=> b!5119348 m!6179852))

(assert (=> b!5119097 d!1654433))

(declare-fun d!1654435 () Bool)

(declare-fun lt!2110445 () Int)

(assert (=> d!1654435 (>= lt!2110445 0)))

(declare-fun e!3192811 () Int)

(assert (=> d!1654435 (= lt!2110445 e!3192811)))

(declare-fun c!879721 () Bool)

(assert (=> d!1654435 (= c!879721 ((_ is Nil!59207) knownP!20))))

(assert (=> d!1654435 (= (size!39513 knownP!20) lt!2110445)))

(declare-fun b!5119349 () Bool)

(assert (=> b!5119349 (= e!3192811 0)))

(declare-fun b!5119350 () Bool)

(assert (=> b!5119350 (= e!3192811 (+ 1 (size!39513 (t!372346 knownP!20))))))

(assert (= (and d!1654435 c!879721) b!5119349))

(assert (= (and d!1654435 (not c!879721)) b!5119350))

(declare-fun m!6179854 () Bool)

(assert (=> b!5119350 m!6179854))

(assert (=> b!5119097 d!1654435))

(declare-fun b!5119353 () Bool)

(declare-fun res!2179739 () Bool)

(declare-fun e!3192813 () Bool)

(assert (=> b!5119353 (=> (not res!2179739) (not e!3192813))))

(declare-fun lt!2110446 () List!59331)

(assert (=> b!5119353 (= res!2179739 (= (size!39513 lt!2110446) (+ (size!39513 lt!2110305) (size!39513 lt!2110308))))))

(declare-fun b!5119354 () Bool)

(assert (=> b!5119354 (= e!3192813 (or (not (= lt!2110308 Nil!59207)) (= lt!2110446 lt!2110305)))))

(declare-fun b!5119351 () Bool)

(declare-fun e!3192812 () List!59331)

(assert (=> b!5119351 (= e!3192812 lt!2110308)))

(declare-fun b!5119352 () Bool)

(assert (=> b!5119352 (= e!3192812 (Cons!59207 (h!65655 lt!2110305) (++!13032 (t!372346 lt!2110305) lt!2110308)))))

(declare-fun d!1654437 () Bool)

(assert (=> d!1654437 e!3192813))

(declare-fun res!2179740 () Bool)

(assert (=> d!1654437 (=> (not res!2179740) (not e!3192813))))

(assert (=> d!1654437 (= res!2179740 (= (content!10529 lt!2110446) ((_ map or) (content!10529 lt!2110305) (content!10529 lt!2110308))))))

(assert (=> d!1654437 (= lt!2110446 e!3192812)))

(declare-fun c!879722 () Bool)

(assert (=> d!1654437 (= c!879722 ((_ is Nil!59207) lt!2110305))))

(assert (=> d!1654437 (= (++!13032 lt!2110305 lt!2110308) lt!2110446)))

(assert (= (and d!1654437 c!879722) b!5119351))

(assert (= (and d!1654437 (not c!879722)) b!5119352))

(assert (= (and d!1654437 res!2179740) b!5119353))

(assert (= (and b!5119353 res!2179739) b!5119354))

(declare-fun m!6179856 () Bool)

(assert (=> b!5119353 m!6179856))

(declare-fun m!6179858 () Bool)

(assert (=> b!5119353 m!6179858))

(assert (=> b!5119353 m!6179736))

(declare-fun m!6179860 () Bool)

(assert (=> b!5119352 m!6179860))

(declare-fun m!6179862 () Bool)

(assert (=> d!1654437 m!6179862))

(declare-fun m!6179864 () Bool)

(assert (=> d!1654437 m!6179864))

(assert (=> d!1654437 m!6179744))

(assert (=> b!5119107 d!1654437))

(declare-fun b!5119357 () Bool)

(declare-fun res!2179741 () Bool)

(declare-fun e!3192815 () Bool)

(assert (=> b!5119357 (=> (not res!2179741) (not e!3192815))))

(declare-fun lt!2110447 () List!59331)

(assert (=> b!5119357 (= res!2179741 (= (size!39513 lt!2110447) (+ (size!39513 testedP!265) (size!39513 lt!2110311))))))

(declare-fun b!5119358 () Bool)

(assert (=> b!5119358 (= e!3192815 (or (not (= lt!2110311 Nil!59207)) (= lt!2110447 testedP!265)))))

(declare-fun b!5119355 () Bool)

(declare-fun e!3192814 () List!59331)

(assert (=> b!5119355 (= e!3192814 lt!2110311)))

(declare-fun b!5119356 () Bool)

(assert (=> b!5119356 (= e!3192814 (Cons!59207 (h!65655 testedP!265) (++!13032 (t!372346 testedP!265) lt!2110311)))))

(declare-fun d!1654439 () Bool)

(assert (=> d!1654439 e!3192815))

(declare-fun res!2179742 () Bool)

(assert (=> d!1654439 (=> (not res!2179742) (not e!3192815))))

(assert (=> d!1654439 (= res!2179742 (= (content!10529 lt!2110447) ((_ map or) (content!10529 testedP!265) (content!10529 lt!2110311))))))

(assert (=> d!1654439 (= lt!2110447 e!3192814)))

(declare-fun c!879723 () Bool)

(assert (=> d!1654439 (= c!879723 ((_ is Nil!59207) testedP!265))))

(assert (=> d!1654439 (= (++!13032 testedP!265 lt!2110311) lt!2110447)))

(assert (= (and d!1654439 c!879723) b!5119355))

(assert (= (and d!1654439 (not c!879723)) b!5119356))

(assert (= (and d!1654439 res!2179742) b!5119357))

(assert (= (and b!5119357 res!2179741) b!5119358))

(declare-fun m!6179866 () Bool)

(assert (=> b!5119357 m!6179866))

(assert (=> b!5119357 m!6179460))

(assert (=> b!5119357 m!6179734))

(declare-fun m!6179868 () Bool)

(assert (=> b!5119356 m!6179868))

(declare-fun m!6179870 () Bool)

(assert (=> d!1654439 m!6179870))

(assert (=> d!1654439 m!6179558))

(assert (=> d!1654439 m!6179742))

(assert (=> b!5119107 d!1654439))

(declare-fun b!5119359 () Bool)

(declare-fun e!3192817 () Bool)

(declare-fun e!3192816 () Bool)

(assert (=> b!5119359 (= e!3192817 e!3192816)))

(declare-fun res!2179745 () Bool)

(assert (=> b!5119359 (=> (not res!2179745) (not e!3192816))))

(assert (=> b!5119359 (= res!2179745 (not ((_ is Nil!59207) input!5745)))))

(declare-fun b!5119362 () Bool)

(declare-fun e!3192818 () Bool)

(assert (=> b!5119362 (= e!3192818 (>= (size!39513 input!5745) (size!39513 testedP!265)))))

(declare-fun b!5119361 () Bool)

(assert (=> b!5119361 (= e!3192816 (isPrefix!5612 (tail!10072 testedP!265) (tail!10072 input!5745)))))

(declare-fun b!5119360 () Bool)

(declare-fun res!2179743 () Bool)

(assert (=> b!5119360 (=> (not res!2179743) (not e!3192816))))

(assert (=> b!5119360 (= res!2179743 (= (head!10935 testedP!265) (head!10935 input!5745)))))

(declare-fun d!1654441 () Bool)

(assert (=> d!1654441 e!3192818))

(declare-fun res!2179744 () Bool)

(assert (=> d!1654441 (=> res!2179744 e!3192818)))

(declare-fun lt!2110448 () Bool)

(assert (=> d!1654441 (= res!2179744 (not lt!2110448))))

(assert (=> d!1654441 (= lt!2110448 e!3192817)))

(declare-fun res!2179746 () Bool)

(assert (=> d!1654441 (=> res!2179746 e!3192817)))

(assert (=> d!1654441 (= res!2179746 ((_ is Nil!59207) testedP!265))))

(assert (=> d!1654441 (= (isPrefix!5612 testedP!265 input!5745) lt!2110448)))

(assert (= (and d!1654441 (not res!2179746)) b!5119359))

(assert (= (and b!5119359 res!2179745) b!5119360))

(assert (= (and b!5119360 res!2179743) b!5119361))

(assert (= (and d!1654441 (not res!2179744)) b!5119362))

(assert (=> b!5119362 m!6179442))

(assert (=> b!5119362 m!6179460))

(assert (=> b!5119361 m!6179496))

(assert (=> b!5119361 m!6179534))

(assert (=> b!5119361 m!6179496))

(assert (=> b!5119361 m!6179534))

(declare-fun m!6179872 () Bool)

(assert (=> b!5119361 m!6179872))

(assert (=> b!5119360 m!6179500))

(assert (=> b!5119360 m!6179538))

(assert (=> start!540264 d!1654441))

(declare-fun b!5119367 () Bool)

(declare-fun e!3192821 () Bool)

(declare-fun tp!1428177 () Bool)

(assert (=> b!5119367 (= e!3192821 (and tp_is_empty!37687 tp!1428177))))

(assert (=> b!5119099 (= tp!1428147 e!3192821)))

(assert (= (and b!5119099 ((_ is Cons!59207) (t!372346 knownP!20))) b!5119367))

(declare-fun condSetEmpty!30285 () Bool)

(assert (=> setNonEmpty!30278 (= condSetEmpty!30285 (= setRest!30278 ((as const (Array Context!7182 Bool)) false)))))

(declare-fun setRes!30285 () Bool)

(assert (=> setNonEmpty!30278 (= tp!1428150 setRes!30285)))

(declare-fun setIsEmpty!30285 () Bool)

(assert (=> setIsEmpty!30285 setRes!30285))

(declare-fun tp!1428183 () Bool)

(declare-fun e!3192824 () Bool)

(declare-fun setElem!30285 () Context!7182)

(declare-fun setNonEmpty!30285 () Bool)

(assert (=> setNonEmpty!30285 (= setRes!30285 (and tp!1428183 (inv!78698 setElem!30285) e!3192824))))

(declare-fun setRest!30285 () (InoxSet Context!7182))

(assert (=> setNonEmpty!30285 (= setRest!30278 ((_ map or) (store ((as const (Array Context!7182 Bool)) false) setElem!30285 true) setRest!30285))))

(declare-fun b!5119372 () Bool)

(declare-fun tp!1428182 () Bool)

(assert (=> b!5119372 (= e!3192824 tp!1428182)))

(assert (= (and setNonEmpty!30278 condSetEmpty!30285) setIsEmpty!30285))

(assert (= (and setNonEmpty!30278 (not condSetEmpty!30285)) setNonEmpty!30285))

(assert (= setNonEmpty!30285 b!5119372))

(declare-fun m!6179874 () Bool)

(assert (=> setNonEmpty!30285 m!6179874))

(declare-fun b!5119373 () Bool)

(declare-fun e!3192825 () Bool)

(declare-fun tp!1428184 () Bool)

(assert (=> b!5119373 (= e!3192825 (and tp_is_empty!37687 tp!1428184))))

(assert (=> b!5119115 (= tp!1428153 e!3192825)))

(assert (= (and b!5119115 ((_ is Cons!59207) (t!372346 input!5745))) b!5119373))

(declare-fun condSetEmpty!30286 () Bool)

(assert (=> setNonEmpty!30277 (= condSetEmpty!30286 (= setRest!30277 ((as const (Array Context!7182 Bool)) false)))))

(declare-fun setRes!30286 () Bool)

(assert (=> setNonEmpty!30277 (= tp!1428151 setRes!30286)))

(declare-fun setIsEmpty!30286 () Bool)

(assert (=> setIsEmpty!30286 setRes!30286))

(declare-fun setNonEmpty!30286 () Bool)

(declare-fun tp!1428186 () Bool)

(declare-fun setElem!30286 () Context!7182)

(declare-fun e!3192826 () Bool)

(assert (=> setNonEmpty!30286 (= setRes!30286 (and tp!1428186 (inv!78698 setElem!30286) e!3192826))))

(declare-fun setRest!30286 () (InoxSet Context!7182))

(assert (=> setNonEmpty!30286 (= setRest!30277 ((_ map or) (store ((as const (Array Context!7182 Bool)) false) setElem!30286 true) setRest!30286))))

(declare-fun b!5119374 () Bool)

(declare-fun tp!1428185 () Bool)

(assert (=> b!5119374 (= e!3192826 tp!1428185)))

(assert (= (and setNonEmpty!30277 condSetEmpty!30286) setIsEmpty!30286))

(assert (= (and setNonEmpty!30277 (not condSetEmpty!30286)) setNonEmpty!30286))

(assert (= setNonEmpty!30286 b!5119374))

(declare-fun m!6179876 () Bool)

(assert (=> setNonEmpty!30286 m!6179876))

(declare-fun b!5119379 () Bool)

(declare-fun e!3192829 () Bool)

(declare-fun tp!1428191 () Bool)

(declare-fun tp!1428192 () Bool)

(assert (=> b!5119379 (= e!3192829 (and tp!1428191 tp!1428192))))

(assert (=> b!5119096 (= tp!1428149 e!3192829)))

(assert (= (and b!5119096 ((_ is Cons!59208) (exprs!4091 setElem!30278))) b!5119379))

(declare-fun b!5119380 () Bool)

(declare-fun e!3192830 () Bool)

(declare-fun tp!1428193 () Bool)

(declare-fun tp!1428194 () Bool)

(assert (=> b!5119380 (= e!3192830 (and tp!1428193 tp!1428194))))

(assert (=> b!5119114 (= tp!1428148 e!3192830)))

(assert (= (and b!5119114 ((_ is Cons!59208) (exprs!4091 setElem!30277))) b!5119380))

(declare-fun b!5119381 () Bool)

(declare-fun e!3192831 () Bool)

(declare-fun tp!1428195 () Bool)

(assert (=> b!5119381 (= e!3192831 (and tp_is_empty!37687 tp!1428195))))

(assert (=> b!5119095 (= tp!1428152 e!3192831)))

(assert (= (and b!5119095 ((_ is Cons!59207) (t!372346 testedP!265))) b!5119381))

(check-sat (not b!5119193) (not b!5119300) (not d!1654415) (not d!1654413) (not b!5119294) (not bm!356611) (not b!5119379) (not b!5119296) (not d!1654425) (not b!5119194) (not b!5119315) (not b!5119381) (not b!5119373) (not b!5119374) (not b!5119171) (not b!5119126) (not b!5119333) (not b!5119308) (not b!5119149) (not d!1654417) (not b!5119170) (not b!5119301) (not b!5119356) (not b!5119345) (not b!5119151) (not d!1654409) (not setNonEmpty!30285) (not b!5119323) (not d!1654301) (not bm!356612) (not b!5119322) (not b!5119357) (not b!5119328) (not b!5119121) (not b!5119150) (not d!1654393) (not d!1654423) (not b!5119327) tp_is_empty!37687 (not b!5119306) (not d!1654421) (not b!5119297) (not b!5119337) (not d!1654291) (not d!1654313) (not b!5119331) (not d!1654437) (not d!1654439) (not b!5119380) (not b!5119307) (not b!5119336) (not b!5119348) (not b!5119329) (not b!5119361) (not b!5119326) (not setNonEmpty!30286) (not b!5119169) (not b!5119360) (not d!1654407) (not b!5119362) (not d!1654431) (not d!1654391) (not b!5119120) (not b!5119352) (not b!5119303) (not b!5119367) (not d!1654321) (not d!1654397) (not d!1654389) (not b!5119353) (not b!5119318) (not b!5119372) (not d!1654387) (not d!1654319) (not d!1654403) (not b!5119339) (not b!5119350) (not b!5119346) (not b!5119319) (not d!1654293) (not d!1654401) (not b!5119340))
(check-sat)
