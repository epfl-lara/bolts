; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547936 () Bool)

(assert start!547936)

(declare-fun b!5174547 () Bool)

(declare-fun e!3224325 () Bool)

(declare-fun tp_is_empty!38559 () Bool)

(declare-fun tp!1451789 () Bool)

(assert (=> b!5174547 (= e!3224325 (and tp_is_empty!38559 tp!1451789))))

(declare-fun b!5174548 () Bool)

(declare-datatypes ((Unit!151918 0))(
  ( (Unit!151919) )
))
(declare-fun e!3224323 () Unit!151918)

(declare-fun Unit!151920 () Unit!151918)

(assert (=> b!5174548 (= e!3224323 Unit!151920)))

(declare-fun b!5174549 () Bool)

(declare-fun e!3224326 () Bool)

(declare-fun e!3224324 () Bool)

(assert (=> b!5174549 (= e!3224326 (not e!3224324))))

(declare-fun res!2199144 () Bool)

(assert (=> b!5174549 (=> res!2199144 e!3224324)))

(declare-fun lt!2131530 () Int)

(declare-fun lt!2131531 () Int)

(assert (=> b!5174549 (= res!2199144 (>= lt!2131530 lt!2131531))))

(declare-fun lt!2131536 () Unit!151918)

(assert (=> b!5174549 (= lt!2131536 e!3224323)))

(declare-fun c!890937 () Bool)

(assert (=> b!5174549 (= c!890937 (= lt!2131530 lt!2131531))))

(assert (=> b!5174549 (<= lt!2131530 lt!2131531)))

(declare-fun lt!2131533 () Unit!151918)

(declare-datatypes ((C!29576 0))(
  ( (C!29577 (val!24490 Int)) )
))
(declare-datatypes ((List!60277 0))(
  ( (Nil!60153) (Cons!60153 (h!66601 C!29576) (t!373430 List!60277)) )
))
(declare-fun testedP!294 () List!60277)

(declare-fun input!5817 () List!60277)

(declare-fun lemmaIsPrefixThenSmallerEqSize!947 (List!60277 List!60277) Unit!151918)

(assert (=> b!5174549 (= lt!2131533 (lemmaIsPrefixThenSmallerEqSize!947 testedP!294 input!5817))))

(declare-fun b!5174550 () Bool)

(declare-fun e!3224320 () Bool)

(assert (=> b!5174550 (= e!3224324 e!3224320)))

(declare-fun res!2199143 () Bool)

(assert (=> b!5174550 (=> res!2199143 e!3224320)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14653 0))(
  ( (ElementMatch!14653 (c!890938 C!29576)) (Concat!23498 (regOne!29818 Regex!14653) (regTwo!29818 Regex!14653)) (EmptyExpr!14653) (Star!14653 (reg!14982 Regex!14653)) (EmptyLang!14653) (Union!14653 (regOne!29819 Regex!14653) (regTwo!29819 Regex!14653)) )
))
(declare-datatypes ((List!60278 0))(
  ( (Nil!60154) (Cons!60154 (h!66602 Regex!14653) (t!373431 List!60278)) )
))
(declare-datatypes ((Context!8074 0))(
  ( (Context!8075 (exprs!4537 List!60278)) )
))
(declare-fun z!4581 () (InoxSet Context!8074))

(declare-fun nullableZipper!1191 ((InoxSet Context!8074)) Bool)

(assert (=> b!5174550 (= res!2199143 (not (nullableZipper!1191 z!4581)))))

(declare-fun lt!2131529 () List!60277)

(declare-fun isPrefix!5786 (List!60277 List!60277) Bool)

(assert (=> b!5174550 (isPrefix!5786 lt!2131529 input!5817)))

(declare-fun lt!2131528 () Unit!151918)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1091 (List!60277 List!60277) Unit!151918)

(assert (=> b!5174550 (= lt!2131528 (lemmaAddHeadSuffixToPrefixStillPrefix!1091 testedP!294 input!5817))))

(declare-fun lt!2131532 () C!29576)

(declare-fun ++!13169 (List!60277 List!60277) List!60277)

(assert (=> b!5174550 (= lt!2131529 (++!13169 testedP!294 (Cons!60153 lt!2131532 Nil!60153)))))

(declare-fun lt!2131535 () List!60277)

(declare-fun head!11071 (List!60277) C!29576)

(assert (=> b!5174550 (= lt!2131532 (head!11071 lt!2131535))))

(declare-fun setIsEmpty!32279 () Bool)

(declare-fun setRes!32280 () Bool)

(assert (=> setIsEmpty!32279 setRes!32280))

(declare-fun setRes!32279 () Bool)

(declare-fun e!3224321 () Bool)

(declare-fun setElem!32280 () Context!8074)

(declare-fun tp!1451788 () Bool)

(declare-fun setNonEmpty!32279 () Bool)

(declare-fun inv!79879 (Context!8074) Bool)

(assert (=> setNonEmpty!32279 (= setRes!32279 (and tp!1451788 (inv!79879 setElem!32280) e!3224321))))

(declare-fun baseZ!62 () (InoxSet Context!8074))

(declare-fun setRest!32279 () (InoxSet Context!8074))

(assert (=> setNonEmpty!32279 (= baseZ!62 ((_ map or) (store ((as const (Array Context!8074 Bool)) false) setElem!32280 true) setRest!32279))))

(declare-fun b!5174551 () Bool)

(declare-datatypes ((tuple2!63856 0))(
  ( (tuple2!63857 (_1!35231 List!60277) (_2!35231 List!60277)) )
))
(declare-fun lt!2131538 () tuple2!63856)

(declare-fun matchZipper!985 ((InoxSet Context!8074) List!60277) Bool)

(assert (=> b!5174551 (= e!3224320 (matchZipper!985 baseZ!62 (_1!35231 lt!2131538)))))

(declare-fun lt!2131537 () (InoxSet Context!8074))

(assert (=> b!5174551 (= (matchZipper!985 baseZ!62 testedP!294) (matchZipper!985 lt!2131537 Nil!60153))))

(declare-fun lt!2131534 () Unit!151918)

(declare-fun lemmaMatchZipperIsSameAsWholeDerivativeAndNil!48 ((InoxSet Context!8074) List!60277) Unit!151918)

(assert (=> b!5174551 (= lt!2131534 (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!48 baseZ!62 testedP!294))))

(declare-fun b!5174552 () Bool)

(declare-fun Unit!151921 () Unit!151918)

(assert (=> b!5174552 (= e!3224323 Unit!151921)))

(declare-fun lt!2131539 () Unit!151918)

(declare-fun lemmaIsPrefixRefl!3791 (List!60277 List!60277) Unit!151918)

(assert (=> b!5174552 (= lt!2131539 (lemmaIsPrefixRefl!3791 input!5817 input!5817))))

(assert (=> b!5174552 (isPrefix!5786 input!5817 input!5817)))

(declare-fun lt!2131540 () Unit!151918)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1431 (List!60277 List!60277 List!60277) Unit!151918)

(assert (=> b!5174552 (= lt!2131540 (lemmaIsPrefixSameLengthThenSameList!1431 input!5817 testedP!294 input!5817))))

(assert (=> b!5174552 false))

(declare-fun e!3224319 () Bool)

(declare-fun tp!1451787 () Bool)

(declare-fun setElem!32279 () Context!8074)

(declare-fun setNonEmpty!32280 () Bool)

(assert (=> setNonEmpty!32280 (= setRes!32280 (and tp!1451787 (inv!79879 setElem!32279) e!3224319))))

(declare-fun setRest!32280 () (InoxSet Context!8074))

(assert (=> setNonEmpty!32280 (= z!4581 ((_ map or) (store ((as const (Array Context!8074 Bool)) false) setElem!32279 true) setRest!32280))))

(declare-fun res!2199138 () Bool)

(declare-fun e!3224322 () Bool)

(assert (=> start!547936 (=> (not res!2199138) (not e!3224322))))

(assert (=> start!547936 (= res!2199138 (isPrefix!5786 testedP!294 input!5817))))

(assert (=> start!547936 e!3224322))

(assert (=> start!547936 e!3224325))

(declare-fun e!3224318 () Bool)

(assert (=> start!547936 e!3224318))

(declare-fun condSetEmpty!32279 () Bool)

(assert (=> start!547936 (= condSetEmpty!32279 (= z!4581 ((as const (Array Context!8074 Bool)) false)))))

(assert (=> start!547936 setRes!32280))

(declare-fun condSetEmpty!32280 () Bool)

(assert (=> start!547936 (= condSetEmpty!32280 (= baseZ!62 ((as const (Array Context!8074 Bool)) false)))))

(assert (=> start!547936 setRes!32279))

(declare-fun b!5174553 () Bool)

(declare-fun tp!1451786 () Bool)

(assert (=> b!5174553 (= e!3224318 (and tp_is_empty!38559 tp!1451786))))

(declare-fun b!5174554 () Bool)

(declare-fun e!3224317 () Bool)

(assert (=> b!5174554 (= e!3224322 e!3224317)))

(declare-fun res!2199141 () Bool)

(assert (=> b!5174554 (=> (not res!2199141) (not e!3224317))))

(assert (=> b!5174554 (= res!2199141 (= lt!2131537 z!4581))))

(declare-fun derivationZipper!276 ((InoxSet Context!8074) List!60277) (InoxSet Context!8074))

(assert (=> b!5174554 (= lt!2131537 (derivationZipper!276 baseZ!62 testedP!294))))

(declare-fun setIsEmpty!32280 () Bool)

(assert (=> setIsEmpty!32280 setRes!32279))

(declare-fun b!5174555 () Bool)

(assert (=> b!5174555 (= e!3224317 e!3224326)))

(declare-fun res!2199139 () Bool)

(assert (=> b!5174555 (=> (not res!2199139) (not e!3224326))))

(declare-fun isEmpty!32205 (List!60277) Bool)

(assert (=> b!5174555 (= res!2199139 (not (isEmpty!32205 (_1!35231 lt!2131538))))))

(declare-fun findLongestMatchInnerZipper!309 ((InoxSet Context!8074) List!60277 Int List!60277 List!60277 Int) tuple2!63856)

(assert (=> b!5174555 (= lt!2131538 (findLongestMatchInnerZipper!309 z!4581 testedP!294 lt!2131530 lt!2131535 input!5817 lt!2131531))))

(declare-fun size!39689 (List!60277) Int)

(assert (=> b!5174555 (= lt!2131531 (size!39689 input!5817))))

(declare-fun getSuffix!3434 (List!60277 List!60277) List!60277)

(assert (=> b!5174555 (= lt!2131535 (getSuffix!3434 input!5817 testedP!294))))

(assert (=> b!5174555 (= lt!2131530 (size!39689 testedP!294))))

(declare-fun b!5174556 () Bool)

(declare-fun res!2199142 () Bool)

(assert (=> b!5174556 (=> res!2199142 e!3224320)))

(declare-fun derivationStepZipper!999 ((InoxSet Context!8074) C!29576) (InoxSet Context!8074))

(declare-fun tail!10170 (List!60277) List!60277)

(assert (=> b!5174556 (= res!2199142 (not (isEmpty!32205 (_1!35231 (findLongestMatchInnerZipper!309 (derivationStepZipper!999 z!4581 lt!2131532) lt!2131529 (+ 1 lt!2131530) (tail!10170 lt!2131535) input!5817 lt!2131531)))))))

(declare-fun b!5174557 () Bool)

(declare-fun tp!1451790 () Bool)

(assert (=> b!5174557 (= e!3224319 tp!1451790)))

(declare-fun b!5174558 () Bool)

(declare-fun res!2199140 () Bool)

(assert (=> b!5174558 (=> (not res!2199140) (not e!3224326))))

(assert (=> b!5174558 (= res!2199140 (not (= testedP!294 input!5817)))))

(declare-fun b!5174559 () Bool)

(declare-fun tp!1451791 () Bool)

(assert (=> b!5174559 (= e!3224321 tp!1451791)))

(assert (= (and start!547936 res!2199138) b!5174554))

(assert (= (and b!5174554 res!2199141) b!5174555))

(assert (= (and b!5174555 res!2199139) b!5174558))

(assert (= (and b!5174558 res!2199140) b!5174549))

(assert (= (and b!5174549 c!890937) b!5174552))

(assert (= (and b!5174549 (not c!890937)) b!5174548))

(assert (= (and b!5174549 (not res!2199144)) b!5174550))

(assert (= (and b!5174550 (not res!2199143)) b!5174556))

(assert (= (and b!5174556 (not res!2199142)) b!5174551))

(get-info :version)

(assert (= (and start!547936 ((_ is Cons!60153) testedP!294)) b!5174547))

(assert (= (and start!547936 ((_ is Cons!60153) input!5817)) b!5174553))

(assert (= (and start!547936 condSetEmpty!32279) setIsEmpty!32279))

(assert (= (and start!547936 (not condSetEmpty!32279)) setNonEmpty!32280))

(assert (= setNonEmpty!32280 b!5174557))

(assert (= (and start!547936 condSetEmpty!32280) setIsEmpty!32280))

(assert (= (and start!547936 (not condSetEmpty!32280)) setNonEmpty!32279))

(assert (= setNonEmpty!32279 b!5174559))

(declare-fun m!6228436 () Bool)

(assert (=> b!5174549 m!6228436))

(declare-fun m!6228438 () Bool)

(assert (=> setNonEmpty!32279 m!6228438))

(declare-fun m!6228440 () Bool)

(assert (=> b!5174555 m!6228440))

(declare-fun m!6228442 () Bool)

(assert (=> b!5174555 m!6228442))

(declare-fun m!6228444 () Bool)

(assert (=> b!5174555 m!6228444))

(declare-fun m!6228446 () Bool)

(assert (=> b!5174555 m!6228446))

(declare-fun m!6228448 () Bool)

(assert (=> b!5174555 m!6228448))

(declare-fun m!6228450 () Bool)

(assert (=> b!5174554 m!6228450))

(declare-fun m!6228452 () Bool)

(assert (=> b!5174552 m!6228452))

(declare-fun m!6228454 () Bool)

(assert (=> b!5174552 m!6228454))

(declare-fun m!6228456 () Bool)

(assert (=> b!5174552 m!6228456))

(declare-fun m!6228458 () Bool)

(assert (=> b!5174550 m!6228458))

(declare-fun m!6228460 () Bool)

(assert (=> b!5174550 m!6228460))

(declare-fun m!6228462 () Bool)

(assert (=> b!5174550 m!6228462))

(declare-fun m!6228464 () Bool)

(assert (=> b!5174550 m!6228464))

(declare-fun m!6228466 () Bool)

(assert (=> b!5174550 m!6228466))

(declare-fun m!6228468 () Bool)

(assert (=> start!547936 m!6228468))

(declare-fun m!6228470 () Bool)

(assert (=> b!5174556 m!6228470))

(declare-fun m!6228472 () Bool)

(assert (=> b!5174556 m!6228472))

(assert (=> b!5174556 m!6228470))

(assert (=> b!5174556 m!6228472))

(declare-fun m!6228474 () Bool)

(assert (=> b!5174556 m!6228474))

(declare-fun m!6228476 () Bool)

(assert (=> b!5174556 m!6228476))

(declare-fun m!6228478 () Bool)

(assert (=> b!5174551 m!6228478))

(declare-fun m!6228480 () Bool)

(assert (=> b!5174551 m!6228480))

(declare-fun m!6228482 () Bool)

(assert (=> b!5174551 m!6228482))

(declare-fun m!6228484 () Bool)

(assert (=> b!5174551 m!6228484))

(declare-fun m!6228486 () Bool)

(assert (=> setNonEmpty!32280 m!6228486))

(check-sat (not b!5174550) (not setNonEmpty!32280) (not b!5174554) (not b!5174551) tp_is_empty!38559 (not b!5174547) (not b!5174552) (not start!547936) (not setNonEmpty!32279) (not b!5174557) (not b!5174556) (not b!5174553) (not b!5174555) (not b!5174559) (not b!5174549))
(check-sat)
(get-model)

(declare-fun d!1670054 () Bool)

(declare-fun c!890941 () Bool)

(assert (=> d!1670054 (= c!890941 ((_ is Cons!60153) testedP!294))))

(declare-fun e!3224329 () (InoxSet Context!8074))

(assert (=> d!1670054 (= (derivationZipper!276 baseZ!62 testedP!294) e!3224329)))

(declare-fun b!5174564 () Bool)

(assert (=> b!5174564 (= e!3224329 (derivationZipper!276 (derivationStepZipper!999 baseZ!62 (h!66601 testedP!294)) (t!373430 testedP!294)))))

(declare-fun b!5174565 () Bool)

(assert (=> b!5174565 (= e!3224329 baseZ!62)))

(assert (= (and d!1670054 c!890941) b!5174564))

(assert (= (and d!1670054 (not c!890941)) b!5174565))

(declare-fun m!6228488 () Bool)

(assert (=> b!5174564 m!6228488))

(assert (=> b!5174564 m!6228488))

(declare-fun m!6228490 () Bool)

(assert (=> b!5174564 m!6228490))

(assert (=> b!5174554 d!1670054))

(declare-fun d!1670058 () Bool)

(declare-fun lambda!258421 () Int)

(declare-fun forall!14153 (List!60278 Int) Bool)

(assert (=> d!1670058 (= (inv!79879 setElem!32280) (forall!14153 (exprs!4537 setElem!32280) lambda!258421))))

(declare-fun bs!1203935 () Bool)

(assert (= bs!1203935 d!1670058))

(declare-fun m!6228508 () Bool)

(assert (=> bs!1203935 m!6228508))

(assert (=> setNonEmpty!32279 d!1670058))

(declare-fun b!5174607 () Bool)

(declare-fun e!3224355 () Bool)

(assert (=> b!5174607 (= e!3224355 (>= (size!39689 input!5817) (size!39689 testedP!294)))))

(declare-fun b!5174606 () Bool)

(declare-fun e!3224357 () Bool)

(assert (=> b!5174606 (= e!3224357 (isPrefix!5786 (tail!10170 testedP!294) (tail!10170 input!5817)))))

(declare-fun b!5174605 () Bool)

(declare-fun res!2199176 () Bool)

(assert (=> b!5174605 (=> (not res!2199176) (not e!3224357))))

(assert (=> b!5174605 (= res!2199176 (= (head!11071 testedP!294) (head!11071 input!5817)))))

(declare-fun b!5174604 () Bool)

(declare-fun e!3224356 () Bool)

(assert (=> b!5174604 (= e!3224356 e!3224357)))

(declare-fun res!2199173 () Bool)

(assert (=> b!5174604 (=> (not res!2199173) (not e!3224357))))

(assert (=> b!5174604 (= res!2199173 (not ((_ is Nil!60153) input!5817)))))

(declare-fun d!1670070 () Bool)

(assert (=> d!1670070 e!3224355))

(declare-fun res!2199174 () Bool)

(assert (=> d!1670070 (=> res!2199174 e!3224355)))

(declare-fun lt!2131555 () Bool)

(assert (=> d!1670070 (= res!2199174 (not lt!2131555))))

(assert (=> d!1670070 (= lt!2131555 e!3224356)))

(declare-fun res!2199175 () Bool)

(assert (=> d!1670070 (=> res!2199175 e!3224356)))

(assert (=> d!1670070 (= res!2199175 ((_ is Nil!60153) testedP!294))))

(assert (=> d!1670070 (= (isPrefix!5786 testedP!294 input!5817) lt!2131555)))

(assert (= (and d!1670070 (not res!2199175)) b!5174604))

(assert (= (and b!5174604 res!2199173) b!5174605))

(assert (= (and b!5174605 res!2199176) b!5174606))

(assert (= (and d!1670070 (not res!2199174)) b!5174607))

(assert (=> b!5174607 m!6228446))

(assert (=> b!5174607 m!6228442))

(declare-fun m!6228518 () Bool)

(assert (=> b!5174606 m!6228518))

(declare-fun m!6228520 () Bool)

(assert (=> b!5174606 m!6228520))

(assert (=> b!5174606 m!6228518))

(assert (=> b!5174606 m!6228520))

(declare-fun m!6228522 () Bool)

(assert (=> b!5174606 m!6228522))

(declare-fun m!6228524 () Bool)

(assert (=> b!5174605 m!6228524))

(declare-fun m!6228526 () Bool)

(assert (=> b!5174605 m!6228526))

(assert (=> start!547936 d!1670070))

(declare-fun bs!1203936 () Bool)

(declare-fun d!1670076 () Bool)

(assert (= bs!1203936 (and d!1670076 d!1670058)))

(declare-fun lambda!258422 () Int)

(assert (=> bs!1203936 (= lambda!258422 lambda!258421)))

(assert (=> d!1670076 (= (inv!79879 setElem!32279) (forall!14153 (exprs!4537 setElem!32279) lambda!258422))))

(declare-fun bs!1203937 () Bool)

(assert (= bs!1203937 d!1670076))

(declare-fun m!6228528 () Bool)

(assert (=> bs!1203937 m!6228528))

(assert (=> setNonEmpty!32280 d!1670076))

(declare-fun d!1670078 () Bool)

(assert (=> d!1670078 (= (head!11071 lt!2131535) (h!66601 lt!2131535))))

(assert (=> b!5174550 d!1670078))

(declare-fun b!5174621 () Bool)

(declare-fun e!3224365 () List!60277)

(assert (=> b!5174621 (= e!3224365 (Cons!60153 (h!66601 testedP!294) (++!13169 (t!373430 testedP!294) (Cons!60153 lt!2131532 Nil!60153))))))

(declare-fun b!5174622 () Bool)

(declare-fun res!2199184 () Bool)

(declare-fun e!3224364 () Bool)

(assert (=> b!5174622 (=> (not res!2199184) (not e!3224364))))

(declare-fun lt!2131562 () List!60277)

(assert (=> b!5174622 (= res!2199184 (= (size!39689 lt!2131562) (+ (size!39689 testedP!294) (size!39689 (Cons!60153 lt!2131532 Nil!60153)))))))

(declare-fun b!5174623 () Bool)

(assert (=> b!5174623 (= e!3224364 (or (not (= (Cons!60153 lt!2131532 Nil!60153) Nil!60153)) (= lt!2131562 testedP!294)))))

(declare-fun d!1670082 () Bool)

(assert (=> d!1670082 e!3224364))

(declare-fun res!2199183 () Bool)

(assert (=> d!1670082 (=> (not res!2199183) (not e!3224364))))

(declare-fun content!10656 (List!60277) (InoxSet C!29576))

(assert (=> d!1670082 (= res!2199183 (= (content!10656 lt!2131562) ((_ map or) (content!10656 testedP!294) (content!10656 (Cons!60153 lt!2131532 Nil!60153)))))))

(assert (=> d!1670082 (= lt!2131562 e!3224365)))

(declare-fun c!890950 () Bool)

(assert (=> d!1670082 (= c!890950 ((_ is Nil!60153) testedP!294))))

(assert (=> d!1670082 (= (++!13169 testedP!294 (Cons!60153 lt!2131532 Nil!60153)) lt!2131562)))

(declare-fun b!5174620 () Bool)

(assert (=> b!5174620 (= e!3224365 (Cons!60153 lt!2131532 Nil!60153))))

(assert (= (and d!1670082 c!890950) b!5174620))

(assert (= (and d!1670082 (not c!890950)) b!5174621))

(assert (= (and d!1670082 res!2199183) b!5174622))

(assert (= (and b!5174622 res!2199184) b!5174623))

(declare-fun m!6228550 () Bool)

(assert (=> b!5174621 m!6228550))

(declare-fun m!6228552 () Bool)

(assert (=> b!5174622 m!6228552))

(assert (=> b!5174622 m!6228442))

(declare-fun m!6228554 () Bool)

(assert (=> b!5174622 m!6228554))

(declare-fun m!6228556 () Bool)

(assert (=> d!1670082 m!6228556))

(declare-fun m!6228558 () Bool)

(assert (=> d!1670082 m!6228558))

(declare-fun m!6228560 () Bool)

(assert (=> d!1670082 m!6228560))

(assert (=> b!5174550 d!1670082))

(declare-fun d!1670086 () Bool)

(assert (=> d!1670086 (isPrefix!5786 (++!13169 testedP!294 (Cons!60153 (head!11071 (getSuffix!3434 input!5817 testedP!294)) Nil!60153)) input!5817)))

(declare-fun lt!2131568 () Unit!151918)

(declare-fun choose!38395 (List!60277 List!60277) Unit!151918)

(assert (=> d!1670086 (= lt!2131568 (choose!38395 testedP!294 input!5817))))

(assert (=> d!1670086 (isPrefix!5786 testedP!294 input!5817)))

(assert (=> d!1670086 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1091 testedP!294 input!5817) lt!2131568)))

(declare-fun bs!1203941 () Bool)

(assert (= bs!1203941 d!1670086))

(assert (=> bs!1203941 m!6228444))

(assert (=> bs!1203941 m!6228468))

(declare-fun m!6228566 () Bool)

(assert (=> bs!1203941 m!6228566))

(declare-fun m!6228568 () Bool)

(assert (=> bs!1203941 m!6228568))

(declare-fun m!6228570 () Bool)

(assert (=> bs!1203941 m!6228570))

(assert (=> bs!1203941 m!6228444))

(declare-fun m!6228572 () Bool)

(assert (=> bs!1203941 m!6228572))

(assert (=> bs!1203941 m!6228566))

(assert (=> b!5174550 d!1670086))

(declare-fun b!5174627 () Bool)

(declare-fun e!3224366 () Bool)

(assert (=> b!5174627 (= e!3224366 (>= (size!39689 input!5817) (size!39689 lt!2131529)))))

(declare-fun b!5174626 () Bool)

(declare-fun e!3224368 () Bool)

(assert (=> b!5174626 (= e!3224368 (isPrefix!5786 (tail!10170 lt!2131529) (tail!10170 input!5817)))))

(declare-fun b!5174625 () Bool)

(declare-fun res!2199188 () Bool)

(assert (=> b!5174625 (=> (not res!2199188) (not e!3224368))))

(assert (=> b!5174625 (= res!2199188 (= (head!11071 lt!2131529) (head!11071 input!5817)))))

(declare-fun b!5174624 () Bool)

(declare-fun e!3224367 () Bool)

(assert (=> b!5174624 (= e!3224367 e!3224368)))

(declare-fun res!2199185 () Bool)

(assert (=> b!5174624 (=> (not res!2199185) (not e!3224368))))

(assert (=> b!5174624 (= res!2199185 (not ((_ is Nil!60153) input!5817)))))

(declare-fun d!1670092 () Bool)

(assert (=> d!1670092 e!3224366))

(declare-fun res!2199186 () Bool)

(assert (=> d!1670092 (=> res!2199186 e!3224366)))

(declare-fun lt!2131569 () Bool)

(assert (=> d!1670092 (= res!2199186 (not lt!2131569))))

(assert (=> d!1670092 (= lt!2131569 e!3224367)))

(declare-fun res!2199187 () Bool)

(assert (=> d!1670092 (=> res!2199187 e!3224367)))

(assert (=> d!1670092 (= res!2199187 ((_ is Nil!60153) lt!2131529))))

(assert (=> d!1670092 (= (isPrefix!5786 lt!2131529 input!5817) lt!2131569)))

(assert (= (and d!1670092 (not res!2199187)) b!5174624))

(assert (= (and b!5174624 res!2199185) b!5174625))

(assert (= (and b!5174625 res!2199188) b!5174626))

(assert (= (and d!1670092 (not res!2199186)) b!5174627))

(assert (=> b!5174627 m!6228446))

(declare-fun m!6228574 () Bool)

(assert (=> b!5174627 m!6228574))

(declare-fun m!6228576 () Bool)

(assert (=> b!5174626 m!6228576))

(assert (=> b!5174626 m!6228520))

(assert (=> b!5174626 m!6228576))

(assert (=> b!5174626 m!6228520))

(declare-fun m!6228578 () Bool)

(assert (=> b!5174626 m!6228578))

(declare-fun m!6228580 () Bool)

(assert (=> b!5174625 m!6228580))

(assert (=> b!5174625 m!6228526))

(assert (=> b!5174550 d!1670092))

(declare-fun d!1670094 () Bool)

(declare-fun lambda!258428 () Int)

(declare-fun exists!1934 ((InoxSet Context!8074) Int) Bool)

(assert (=> d!1670094 (= (nullableZipper!1191 z!4581) (exists!1934 z!4581 lambda!258428))))

(declare-fun bs!1203942 () Bool)

(assert (= bs!1203942 d!1670094))

(declare-fun m!6228582 () Bool)

(assert (=> bs!1203942 m!6228582))

(assert (=> b!5174550 d!1670094))

(declare-fun d!1670096 () Bool)

(assert (=> d!1670096 (<= (size!39689 testedP!294) (size!39689 input!5817))))

(declare-fun lt!2131572 () Unit!151918)

(declare-fun choose!38397 (List!60277 List!60277) Unit!151918)

(assert (=> d!1670096 (= lt!2131572 (choose!38397 testedP!294 input!5817))))

(assert (=> d!1670096 (isPrefix!5786 testedP!294 input!5817)))

(assert (=> d!1670096 (= (lemmaIsPrefixThenSmallerEqSize!947 testedP!294 input!5817) lt!2131572)))

(declare-fun bs!1203943 () Bool)

(assert (= bs!1203943 d!1670096))

(assert (=> bs!1203943 m!6228442))

(assert (=> bs!1203943 m!6228446))

(declare-fun m!6228616 () Bool)

(assert (=> bs!1203943 m!6228616))

(assert (=> bs!1203943 m!6228468))

(assert (=> b!5174549 d!1670096))

(declare-fun d!1670104 () Bool)

(assert (=> d!1670104 (= (isEmpty!32205 (_1!35231 (findLongestMatchInnerZipper!309 (derivationStepZipper!999 z!4581 lt!2131532) lt!2131529 (+ 1 lt!2131530) (tail!10170 lt!2131535) input!5817 lt!2131531))) ((_ is Nil!60153) (_1!35231 (findLongestMatchInnerZipper!309 (derivationStepZipper!999 z!4581 lt!2131532) lt!2131529 (+ 1 lt!2131530) (tail!10170 lt!2131535) input!5817 lt!2131531))))))

(assert (=> b!5174556 d!1670104))

(declare-fun b!5174694 () Bool)

(declare-fun e!3224411 () Bool)

(declare-fun lt!2131705 () tuple2!63856)

(assert (=> b!5174694 (= e!3224411 (>= (size!39689 (_1!35231 lt!2131705)) (size!39689 lt!2131529)))))

(declare-fun b!5174695 () Bool)

(declare-fun c!890985 () Bool)

(declare-fun call!363445 () Bool)

(assert (=> b!5174695 (= c!890985 call!363445)))

(declare-fun lt!2131702 () Unit!151918)

(declare-fun lt!2131687 () Unit!151918)

(assert (=> b!5174695 (= lt!2131702 lt!2131687)))

(declare-fun lt!2131693 () C!29576)

(declare-fun lt!2131685 () List!60277)

(assert (=> b!5174695 (= (++!13169 (++!13169 lt!2131529 (Cons!60153 lt!2131693 Nil!60153)) lt!2131685) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1587 (List!60277 C!29576 List!60277 List!60277) Unit!151918)

(assert (=> b!5174695 (= lt!2131687 (lemmaMoveElementToOtherListKeepsConcatEq!1587 lt!2131529 lt!2131693 lt!2131685 input!5817))))

(assert (=> b!5174695 (= lt!2131685 (tail!10170 (tail!10170 lt!2131535)))))

(assert (=> b!5174695 (= lt!2131693 (head!11071 (tail!10170 lt!2131535)))))

(declare-fun lt!2131691 () Unit!151918)

(declare-fun lt!2131701 () Unit!151918)

(assert (=> b!5174695 (= lt!2131691 lt!2131701)))

(assert (=> b!5174695 (isPrefix!5786 (++!13169 lt!2131529 (Cons!60153 (head!11071 (getSuffix!3434 input!5817 lt!2131529)) Nil!60153)) input!5817)))

(assert (=> b!5174695 (= lt!2131701 (lemmaAddHeadSuffixToPrefixStillPrefix!1091 lt!2131529 input!5817))))

(declare-fun lt!2131682 () List!60277)

(assert (=> b!5174695 (= lt!2131682 (++!13169 lt!2131529 (Cons!60153 (head!11071 (tail!10170 lt!2131535)) Nil!60153)))))

(declare-fun lt!2131692 () Unit!151918)

(declare-fun e!3224406 () Unit!151918)

(assert (=> b!5174695 (= lt!2131692 e!3224406)))

(declare-fun c!890988 () Bool)

(assert (=> b!5174695 (= c!890988 (= (size!39689 lt!2131529) (size!39689 input!5817)))))

(declare-fun lt!2131688 () Unit!151918)

(declare-fun lt!2131686 () Unit!151918)

(assert (=> b!5174695 (= lt!2131688 lt!2131686)))

(assert (=> b!5174695 (<= (size!39689 lt!2131529) (size!39689 input!5817))))

(assert (=> b!5174695 (= lt!2131686 (lemmaIsPrefixThenSmallerEqSize!947 lt!2131529 input!5817))))

(declare-fun e!3224410 () tuple2!63856)

(declare-fun e!3224409 () tuple2!63856)

(assert (=> b!5174695 (= e!3224410 e!3224409)))

(declare-fun b!5174696 () Bool)

(declare-fun e!3224407 () tuple2!63856)

(assert (=> b!5174696 (= e!3224407 e!3224410)))

(declare-fun c!890989 () Bool)

(assert (=> b!5174696 (= c!890989 (= (+ 1 lt!2131530) lt!2131531))))

(declare-fun bm!363435 () Bool)

(declare-fun call!363447 () C!29576)

(assert (=> bm!363435 (= call!363447 (head!11071 (tail!10170 lt!2131535)))))

(declare-fun d!1670106 () Bool)

(declare-fun e!3224413 () Bool)

(assert (=> d!1670106 e!3224413))

(declare-fun res!2199198 () Bool)

(assert (=> d!1670106 (=> (not res!2199198) (not e!3224413))))

(assert (=> d!1670106 (= res!2199198 (= (++!13169 (_1!35231 lt!2131705) (_2!35231 lt!2131705)) input!5817))))

(assert (=> d!1670106 (= lt!2131705 e!3224407)))

(declare-fun c!890984 () Bool)

(declare-fun lostCauseZipper!1339 ((InoxSet Context!8074)) Bool)

(assert (=> d!1670106 (= c!890984 (lostCauseZipper!1339 (derivationStepZipper!999 z!4581 lt!2131532)))))

(declare-fun lt!2131683 () Unit!151918)

(declare-fun Unit!151922 () Unit!151918)

(assert (=> d!1670106 (= lt!2131683 Unit!151922)))

(assert (=> d!1670106 (= (getSuffix!3434 input!5817 lt!2131529) (tail!10170 lt!2131535))))

(declare-fun lt!2131690 () Unit!151918)

(declare-fun lt!2131703 () Unit!151918)

(assert (=> d!1670106 (= lt!2131690 lt!2131703)))

(declare-fun lt!2131695 () List!60277)

(assert (=> d!1670106 (= (tail!10170 lt!2131535) lt!2131695)))

(declare-fun lemmaSamePrefixThenSameSuffix!2706 (List!60277 List!60277 List!60277 List!60277 List!60277) Unit!151918)

(assert (=> d!1670106 (= lt!2131703 (lemmaSamePrefixThenSameSuffix!2706 lt!2131529 (tail!10170 lt!2131535) lt!2131529 lt!2131695 input!5817))))

(assert (=> d!1670106 (= lt!2131695 (getSuffix!3434 input!5817 lt!2131529))))

(declare-fun lt!2131680 () Unit!151918)

(declare-fun lt!2131696 () Unit!151918)

(assert (=> d!1670106 (= lt!2131680 lt!2131696)))

(assert (=> d!1670106 (isPrefix!5786 lt!2131529 (++!13169 lt!2131529 (tail!10170 lt!2131535)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3600 (List!60277 List!60277) Unit!151918)

(assert (=> d!1670106 (= lt!2131696 (lemmaConcatTwoListThenFirstIsPrefix!3600 lt!2131529 (tail!10170 lt!2131535)))))

(assert (=> d!1670106 (= (++!13169 lt!2131529 (tail!10170 lt!2131535)) input!5817)))

(assert (=> d!1670106 (= (findLongestMatchInnerZipper!309 (derivationStepZipper!999 z!4581 lt!2131532) lt!2131529 (+ 1 lt!2131530) (tail!10170 lt!2131535) input!5817 lt!2131531) lt!2131705)))

(declare-fun bm!363436 () Bool)

(declare-fun call!363444 () (InoxSet Context!8074))

(assert (=> bm!363436 (= call!363444 (derivationStepZipper!999 (derivationStepZipper!999 z!4581 lt!2131532) call!363447))))

(declare-fun b!5174697 () Bool)

(declare-fun e!3224412 () tuple2!63856)

(assert (=> b!5174697 (= e!3224412 (tuple2!63857 lt!2131529 Nil!60153))))

(declare-fun bm!363437 () Bool)

(declare-fun call!363446 () Unit!151918)

(assert (=> bm!363437 (= call!363446 (lemmaIsPrefixRefl!3791 input!5817 input!5817))))

(declare-fun bm!363438 () Bool)

(declare-fun call!363443 () Bool)

(assert (=> bm!363438 (= call!363443 (isPrefix!5786 input!5817 input!5817))))

(declare-fun b!5174698 () Bool)

(declare-fun Unit!151923 () Unit!151918)

(assert (=> b!5174698 (= e!3224406 Unit!151923)))

(declare-fun lt!2131684 () Unit!151918)

(assert (=> b!5174698 (= lt!2131684 call!363446)))

(assert (=> b!5174698 call!363443))

(declare-fun lt!2131698 () Unit!151918)

(assert (=> b!5174698 (= lt!2131698 lt!2131684)))

(declare-fun lt!2131689 () Unit!151918)

(declare-fun call!363440 () Unit!151918)

(assert (=> b!5174698 (= lt!2131689 call!363440)))

(assert (=> b!5174698 (= input!5817 lt!2131529)))

(declare-fun lt!2131694 () Unit!151918)

(assert (=> b!5174698 (= lt!2131694 lt!2131689)))

(assert (=> b!5174698 false))

(declare-fun b!5174699 () Bool)

(declare-fun e!3224408 () tuple2!63856)

(assert (=> b!5174699 (= e!3224409 e!3224408)))

(declare-fun lt!2131697 () tuple2!63856)

(declare-fun call!363441 () tuple2!63856)

(assert (=> b!5174699 (= lt!2131697 call!363441)))

(declare-fun c!890987 () Bool)

(assert (=> b!5174699 (= c!890987 (isEmpty!32205 (_1!35231 lt!2131697)))))

(declare-fun call!363442 () List!60277)

(declare-fun bm!363439 () Bool)

(assert (=> bm!363439 (= call!363441 (findLongestMatchInnerZipper!309 call!363444 lt!2131682 (+ 1 lt!2131530 1) call!363442 input!5817 lt!2131531))))

(declare-fun bm!363440 () Bool)

(assert (=> bm!363440 (= call!363442 (tail!10170 (tail!10170 lt!2131535)))))

(declare-fun b!5174700 () Bool)

(declare-fun Unit!151924 () Unit!151918)

(assert (=> b!5174700 (= e!3224406 Unit!151924)))

(declare-fun b!5174701 () Bool)

(assert (=> b!5174701 (= e!3224413 e!3224411)))

(declare-fun res!2199197 () Bool)

(assert (=> b!5174701 (=> res!2199197 e!3224411)))

(assert (=> b!5174701 (= res!2199197 (isEmpty!32205 (_1!35231 lt!2131705)))))

(declare-fun b!5174702 () Bool)

(assert (=> b!5174702 (= e!3224408 (tuple2!63857 lt!2131529 (tail!10170 lt!2131535)))))

(declare-fun b!5174703 () Bool)

(assert (=> b!5174703 (= e!3224408 lt!2131697)))

(declare-fun b!5174704 () Bool)

(declare-fun c!890986 () Bool)

(assert (=> b!5174704 (= c!890986 call!363445)))

(declare-fun lt!2131681 () Unit!151918)

(declare-fun lt!2131700 () Unit!151918)

(assert (=> b!5174704 (= lt!2131681 lt!2131700)))

(assert (=> b!5174704 (= input!5817 lt!2131529)))

(assert (=> b!5174704 (= lt!2131700 call!363440)))

(declare-fun lt!2131699 () Unit!151918)

(declare-fun lt!2131704 () Unit!151918)

(assert (=> b!5174704 (= lt!2131699 lt!2131704)))

(assert (=> b!5174704 call!363443))

(assert (=> b!5174704 (= lt!2131704 call!363446)))

(assert (=> b!5174704 (= e!3224410 e!3224412)))

(declare-fun b!5174705 () Bool)

(assert (=> b!5174705 (= e!3224409 call!363441)))

(declare-fun bm!363441 () Bool)

(assert (=> bm!363441 (= call!363445 (nullableZipper!1191 (derivationStepZipper!999 z!4581 lt!2131532)))))

(declare-fun b!5174706 () Bool)

(assert (=> b!5174706 (= e!3224412 (tuple2!63857 Nil!60153 input!5817))))

(declare-fun b!5174707 () Bool)

(assert (=> b!5174707 (= e!3224407 (tuple2!63857 Nil!60153 input!5817))))

(declare-fun bm!363442 () Bool)

(assert (=> bm!363442 (= call!363440 (lemmaIsPrefixSameLengthThenSameList!1431 input!5817 lt!2131529 input!5817))))

(assert (= (and d!1670106 c!890984) b!5174707))

(assert (= (and d!1670106 (not c!890984)) b!5174696))

(assert (= (and b!5174696 c!890989) b!5174704))

(assert (= (and b!5174696 (not c!890989)) b!5174695))

(assert (= (and b!5174704 c!890986) b!5174697))

(assert (= (and b!5174704 (not c!890986)) b!5174706))

(assert (= (and b!5174695 c!890988) b!5174698))

(assert (= (and b!5174695 (not c!890988)) b!5174700))

(assert (= (and b!5174695 c!890985) b!5174699))

(assert (= (and b!5174695 (not c!890985)) b!5174705))

(assert (= (and b!5174699 c!890987) b!5174702))

(assert (= (and b!5174699 (not c!890987)) b!5174703))

(assert (= (or b!5174699 b!5174705) bm!363440))

(assert (= (or b!5174699 b!5174705) bm!363435))

(assert (= (or b!5174699 b!5174705) bm!363436))

(assert (= (or b!5174699 b!5174705) bm!363439))

(assert (= (or b!5174704 b!5174698) bm!363437))

(assert (= (or b!5174704 b!5174695) bm!363441))

(assert (= (or b!5174704 b!5174698) bm!363438))

(assert (= (or b!5174704 b!5174698) bm!363442))

(assert (= (and d!1670106 res!2199198) b!5174701))

(assert (= (and b!5174701 (not res!2199197)) b!5174694))

(assert (=> bm!363441 m!6228470))

(declare-fun m!6228622 () Bool)

(assert (=> bm!363441 m!6228622))

(assert (=> bm!363435 m!6228472))

(declare-fun m!6228624 () Bool)

(assert (=> bm!363435 m!6228624))

(assert (=> bm!363436 m!6228470))

(declare-fun m!6228626 () Bool)

(assert (=> bm!363436 m!6228626))

(declare-fun m!6228628 () Bool)

(assert (=> b!5174694 m!6228628))

(assert (=> b!5174694 m!6228574))

(declare-fun m!6228630 () Bool)

(assert (=> bm!363442 m!6228630))

(declare-fun m!6228632 () Bool)

(assert (=> bm!363439 m!6228632))

(declare-fun m!6228634 () Bool)

(assert (=> b!5174701 m!6228634))

(declare-fun m!6228636 () Bool)

(assert (=> b!5174699 m!6228636))

(assert (=> bm!363440 m!6228472))

(declare-fun m!6228638 () Bool)

(assert (=> bm!363440 m!6228638))

(assert (=> bm!363438 m!6228454))

(assert (=> bm!363437 m!6228452))

(assert (=> d!1670106 m!6228472))

(declare-fun m!6228640 () Bool)

(assert (=> d!1670106 m!6228640))

(assert (=> d!1670106 m!6228470))

(declare-fun m!6228642 () Bool)

(assert (=> d!1670106 m!6228642))

(assert (=> d!1670106 m!6228472))

(declare-fun m!6228644 () Bool)

(assert (=> d!1670106 m!6228644))

(assert (=> d!1670106 m!6228640))

(declare-fun m!6228646 () Bool)

(assert (=> d!1670106 m!6228646))

(declare-fun m!6228648 () Bool)

(assert (=> d!1670106 m!6228648))

(declare-fun m!6228650 () Bool)

(assert (=> d!1670106 m!6228650))

(assert (=> d!1670106 m!6228472))

(declare-fun m!6228652 () Bool)

(assert (=> d!1670106 m!6228652))

(assert (=> b!5174695 m!6228472))

(assert (=> b!5174695 m!6228638))

(declare-fun m!6228654 () Bool)

(assert (=> b!5174695 m!6228654))

(assert (=> b!5174695 m!6228446))

(declare-fun m!6228656 () Bool)

(assert (=> b!5174695 m!6228656))

(declare-fun m!6228658 () Bool)

(assert (=> b!5174695 m!6228658))

(assert (=> b!5174695 m!6228472))

(assert (=> b!5174695 m!6228624))

(assert (=> b!5174695 m!6228574))

(declare-fun m!6228660 () Bool)

(assert (=> b!5174695 m!6228660))

(declare-fun m!6228662 () Bool)

(assert (=> b!5174695 m!6228662))

(assert (=> b!5174695 m!6228648))

(declare-fun m!6228664 () Bool)

(assert (=> b!5174695 m!6228664))

(assert (=> b!5174695 m!6228648))

(declare-fun m!6228666 () Bool)

(assert (=> b!5174695 m!6228666))

(assert (=> b!5174695 m!6228658))

(declare-fun m!6228668 () Bool)

(assert (=> b!5174695 m!6228668))

(assert (=> b!5174695 m!6228656))

(declare-fun m!6228670 () Bool)

(assert (=> b!5174695 m!6228670))

(assert (=> b!5174556 d!1670106))

(declare-fun d!1670112 () Bool)

(assert (=> d!1670112 true))

(declare-fun lambda!258431 () Int)

(declare-fun flatMap!455 ((InoxSet Context!8074) Int) (InoxSet Context!8074))

(assert (=> d!1670112 (= (derivationStepZipper!999 z!4581 lt!2131532) (flatMap!455 z!4581 lambda!258431))))

(declare-fun bs!1203945 () Bool)

(assert (= bs!1203945 d!1670112))

(declare-fun m!6228722 () Bool)

(assert (=> bs!1203945 m!6228722))

(assert (=> b!5174556 d!1670112))

(declare-fun d!1670116 () Bool)

(assert (=> d!1670116 (= (tail!10170 lt!2131535) (t!373430 lt!2131535))))

(assert (=> b!5174556 d!1670116))

(declare-fun d!1670118 () Bool)

(declare-fun lt!2131734 () Int)

(assert (=> d!1670118 (>= lt!2131734 0)))

(declare-fun e!3224424 () Int)

(assert (=> d!1670118 (= lt!2131734 e!3224424)))

(declare-fun c!891002 () Bool)

(assert (=> d!1670118 (= c!891002 ((_ is Nil!60153) input!5817))))

(assert (=> d!1670118 (= (size!39689 input!5817) lt!2131734)))

(declare-fun b!5174730 () Bool)

(assert (=> b!5174730 (= e!3224424 0)))

(declare-fun b!5174731 () Bool)

(assert (=> b!5174731 (= e!3224424 (+ 1 (size!39689 (t!373430 input!5817))))))

(assert (= (and d!1670118 c!891002) b!5174730))

(assert (= (and d!1670118 (not c!891002)) b!5174731))

(declare-fun m!6228728 () Bool)

(assert (=> b!5174731 m!6228728))

(assert (=> b!5174555 d!1670118))

(declare-fun d!1670126 () Bool)

(declare-fun lt!2131762 () List!60277)

(assert (=> d!1670126 (= (++!13169 testedP!294 lt!2131762) input!5817)))

(declare-fun e!3224438 () List!60277)

(assert (=> d!1670126 (= lt!2131762 e!3224438)))

(declare-fun c!891014 () Bool)

(assert (=> d!1670126 (= c!891014 ((_ is Cons!60153) testedP!294))))

(assert (=> d!1670126 (>= (size!39689 input!5817) (size!39689 testedP!294))))

(assert (=> d!1670126 (= (getSuffix!3434 input!5817 testedP!294) lt!2131762)))

(declare-fun b!5174742 () Bool)

(assert (=> b!5174742 (= e!3224438 (getSuffix!3434 (tail!10170 input!5817) (t!373430 testedP!294)))))

(declare-fun b!5174743 () Bool)

(assert (=> b!5174743 (= e!3224438 input!5817)))

(assert (= (and d!1670126 c!891014) b!5174742))

(assert (= (and d!1670126 (not c!891014)) b!5174743))

(declare-fun m!6228734 () Bool)

(assert (=> d!1670126 m!6228734))

(assert (=> d!1670126 m!6228446))

(assert (=> d!1670126 m!6228442))

(assert (=> b!5174742 m!6228520))

(assert (=> b!5174742 m!6228520))

(declare-fun m!6228736 () Bool)

(assert (=> b!5174742 m!6228736))

(assert (=> b!5174555 d!1670126))

(declare-fun b!5174758 () Bool)

(declare-fun e!3224444 () Bool)

(declare-fun lt!2131792 () tuple2!63856)

(assert (=> b!5174758 (= e!3224444 (>= (size!39689 (_1!35231 lt!2131792)) (size!39689 testedP!294)))))

(declare-fun b!5174759 () Bool)

(declare-fun c!891016 () Bool)

(declare-fun call!363469 () Bool)

(assert (=> b!5174759 (= c!891016 call!363469)))

(declare-fun lt!2131789 () Unit!151918)

(declare-fun lt!2131774 () Unit!151918)

(assert (=> b!5174759 (= lt!2131789 lt!2131774)))

(declare-fun lt!2131772 () List!60277)

(declare-fun lt!2131780 () C!29576)

(assert (=> b!5174759 (= (++!13169 (++!13169 testedP!294 (Cons!60153 lt!2131780 Nil!60153)) lt!2131772) input!5817)))

(assert (=> b!5174759 (= lt!2131774 (lemmaMoveElementToOtherListKeepsConcatEq!1587 testedP!294 lt!2131780 lt!2131772 input!5817))))

(assert (=> b!5174759 (= lt!2131772 (tail!10170 lt!2131535))))

(assert (=> b!5174759 (= lt!2131780 (head!11071 lt!2131535))))

(declare-fun lt!2131778 () Unit!151918)

(declare-fun lt!2131788 () Unit!151918)

(assert (=> b!5174759 (= lt!2131778 lt!2131788)))

(assert (=> b!5174759 (isPrefix!5786 (++!13169 testedP!294 (Cons!60153 (head!11071 (getSuffix!3434 input!5817 testedP!294)) Nil!60153)) input!5817)))

(assert (=> b!5174759 (= lt!2131788 (lemmaAddHeadSuffixToPrefixStillPrefix!1091 testedP!294 input!5817))))

(declare-fun lt!2131769 () List!60277)

(assert (=> b!5174759 (= lt!2131769 (++!13169 testedP!294 (Cons!60153 (head!11071 lt!2131535) Nil!60153)))))

(declare-fun lt!2131779 () Unit!151918)

(declare-fun e!3224439 () Unit!151918)

(assert (=> b!5174759 (= lt!2131779 e!3224439)))

(declare-fun c!891019 () Bool)

(assert (=> b!5174759 (= c!891019 (= (size!39689 testedP!294) (size!39689 input!5817)))))

(declare-fun lt!2131775 () Unit!151918)

(declare-fun lt!2131773 () Unit!151918)

(assert (=> b!5174759 (= lt!2131775 lt!2131773)))

(assert (=> b!5174759 (<= (size!39689 testedP!294) (size!39689 input!5817))))

(assert (=> b!5174759 (= lt!2131773 (lemmaIsPrefixThenSmallerEqSize!947 testedP!294 input!5817))))

(declare-fun e!3224443 () tuple2!63856)

(declare-fun e!3224442 () tuple2!63856)

(assert (=> b!5174759 (= e!3224443 e!3224442)))

(declare-fun b!5174760 () Bool)

(declare-fun e!3224440 () tuple2!63856)

(assert (=> b!5174760 (= e!3224440 e!3224443)))

(declare-fun c!891020 () Bool)

(assert (=> b!5174760 (= c!891020 (= lt!2131530 lt!2131531))))

(declare-fun bm!363459 () Bool)

(declare-fun call!363471 () C!29576)

(assert (=> bm!363459 (= call!363471 (head!11071 lt!2131535))))

(declare-fun d!1670130 () Bool)

(declare-fun e!3224446 () Bool)

(assert (=> d!1670130 e!3224446))

(declare-fun res!2199204 () Bool)

(assert (=> d!1670130 (=> (not res!2199204) (not e!3224446))))

(assert (=> d!1670130 (= res!2199204 (= (++!13169 (_1!35231 lt!2131792) (_2!35231 lt!2131792)) input!5817))))

(assert (=> d!1670130 (= lt!2131792 e!3224440)))

(declare-fun c!891015 () Bool)

(assert (=> d!1670130 (= c!891015 (lostCauseZipper!1339 z!4581))))

(declare-fun lt!2131770 () Unit!151918)

(declare-fun Unit!151927 () Unit!151918)

(assert (=> d!1670130 (= lt!2131770 Unit!151927)))

(assert (=> d!1670130 (= (getSuffix!3434 input!5817 testedP!294) lt!2131535)))

(declare-fun lt!2131777 () Unit!151918)

(declare-fun lt!2131790 () Unit!151918)

(assert (=> d!1670130 (= lt!2131777 lt!2131790)))

(declare-fun lt!2131782 () List!60277)

(assert (=> d!1670130 (= lt!2131535 lt!2131782)))

(assert (=> d!1670130 (= lt!2131790 (lemmaSamePrefixThenSameSuffix!2706 testedP!294 lt!2131535 testedP!294 lt!2131782 input!5817))))

(assert (=> d!1670130 (= lt!2131782 (getSuffix!3434 input!5817 testedP!294))))

(declare-fun lt!2131767 () Unit!151918)

(declare-fun lt!2131783 () Unit!151918)

(assert (=> d!1670130 (= lt!2131767 lt!2131783)))

(assert (=> d!1670130 (isPrefix!5786 testedP!294 (++!13169 testedP!294 lt!2131535))))

(assert (=> d!1670130 (= lt!2131783 (lemmaConcatTwoListThenFirstIsPrefix!3600 testedP!294 lt!2131535))))

(assert (=> d!1670130 (= (++!13169 testedP!294 lt!2131535) input!5817)))

(assert (=> d!1670130 (= (findLongestMatchInnerZipper!309 z!4581 testedP!294 lt!2131530 lt!2131535 input!5817 lt!2131531) lt!2131792)))

(declare-fun bm!363460 () Bool)

(declare-fun call!363468 () (InoxSet Context!8074))

(assert (=> bm!363460 (= call!363468 (derivationStepZipper!999 z!4581 call!363471))))

(declare-fun b!5174761 () Bool)

(declare-fun e!3224445 () tuple2!63856)

(assert (=> b!5174761 (= e!3224445 (tuple2!63857 testedP!294 Nil!60153))))

(declare-fun bm!363461 () Bool)

(declare-fun call!363470 () Unit!151918)

(assert (=> bm!363461 (= call!363470 (lemmaIsPrefixRefl!3791 input!5817 input!5817))))

(declare-fun bm!363462 () Bool)

(declare-fun call!363467 () Bool)

(assert (=> bm!363462 (= call!363467 (isPrefix!5786 input!5817 input!5817))))

(declare-fun b!5174762 () Bool)

(declare-fun Unit!151929 () Unit!151918)

(assert (=> b!5174762 (= e!3224439 Unit!151929)))

(declare-fun lt!2131771 () Unit!151918)

(assert (=> b!5174762 (= lt!2131771 call!363470)))

(assert (=> b!5174762 call!363467))

(declare-fun lt!2131785 () Unit!151918)

(assert (=> b!5174762 (= lt!2131785 lt!2131771)))

(declare-fun lt!2131776 () Unit!151918)

(declare-fun call!363464 () Unit!151918)

(assert (=> b!5174762 (= lt!2131776 call!363464)))

(assert (=> b!5174762 (= input!5817 testedP!294)))

(declare-fun lt!2131781 () Unit!151918)

(assert (=> b!5174762 (= lt!2131781 lt!2131776)))

(assert (=> b!5174762 false))

(declare-fun b!5174763 () Bool)

(declare-fun e!3224441 () tuple2!63856)

(assert (=> b!5174763 (= e!3224442 e!3224441)))

(declare-fun lt!2131784 () tuple2!63856)

(declare-fun call!363465 () tuple2!63856)

(assert (=> b!5174763 (= lt!2131784 call!363465)))

(declare-fun c!891018 () Bool)

(assert (=> b!5174763 (= c!891018 (isEmpty!32205 (_1!35231 lt!2131784)))))

(declare-fun bm!363463 () Bool)

(declare-fun call!363466 () List!60277)

(assert (=> bm!363463 (= call!363465 (findLongestMatchInnerZipper!309 call!363468 lt!2131769 (+ lt!2131530 1) call!363466 input!5817 lt!2131531))))

(declare-fun bm!363464 () Bool)

(assert (=> bm!363464 (= call!363466 (tail!10170 lt!2131535))))

(declare-fun b!5174764 () Bool)

(declare-fun Unit!151930 () Unit!151918)

(assert (=> b!5174764 (= e!3224439 Unit!151930)))

(declare-fun b!5174765 () Bool)

(assert (=> b!5174765 (= e!3224446 e!3224444)))

(declare-fun res!2199203 () Bool)

(assert (=> b!5174765 (=> res!2199203 e!3224444)))

(assert (=> b!5174765 (= res!2199203 (isEmpty!32205 (_1!35231 lt!2131792)))))

(declare-fun b!5174766 () Bool)

(assert (=> b!5174766 (= e!3224441 (tuple2!63857 testedP!294 lt!2131535))))

(declare-fun b!5174767 () Bool)

(assert (=> b!5174767 (= e!3224441 lt!2131784)))

(declare-fun b!5174768 () Bool)

(declare-fun c!891017 () Bool)

(assert (=> b!5174768 (= c!891017 call!363469)))

(declare-fun lt!2131768 () Unit!151918)

(declare-fun lt!2131787 () Unit!151918)

(assert (=> b!5174768 (= lt!2131768 lt!2131787)))

(assert (=> b!5174768 (= input!5817 testedP!294)))

(assert (=> b!5174768 (= lt!2131787 call!363464)))

(declare-fun lt!2131786 () Unit!151918)

(declare-fun lt!2131791 () Unit!151918)

(assert (=> b!5174768 (= lt!2131786 lt!2131791)))

(assert (=> b!5174768 call!363467))

(assert (=> b!5174768 (= lt!2131791 call!363470)))

(assert (=> b!5174768 (= e!3224443 e!3224445)))

(declare-fun b!5174769 () Bool)

(assert (=> b!5174769 (= e!3224442 call!363465)))

(declare-fun bm!363465 () Bool)

(assert (=> bm!363465 (= call!363469 (nullableZipper!1191 z!4581))))

(declare-fun b!5174770 () Bool)

(assert (=> b!5174770 (= e!3224445 (tuple2!63857 Nil!60153 input!5817))))

(declare-fun b!5174771 () Bool)

(assert (=> b!5174771 (= e!3224440 (tuple2!63857 Nil!60153 input!5817))))

(declare-fun bm!363466 () Bool)

(assert (=> bm!363466 (= call!363464 (lemmaIsPrefixSameLengthThenSameList!1431 input!5817 testedP!294 input!5817))))

(assert (= (and d!1670130 c!891015) b!5174771))

(assert (= (and d!1670130 (not c!891015)) b!5174760))

(assert (= (and b!5174760 c!891020) b!5174768))

(assert (= (and b!5174760 (not c!891020)) b!5174759))

(assert (= (and b!5174768 c!891017) b!5174761))

(assert (= (and b!5174768 (not c!891017)) b!5174770))

(assert (= (and b!5174759 c!891019) b!5174762))

(assert (= (and b!5174759 (not c!891019)) b!5174764))

(assert (= (and b!5174759 c!891016) b!5174763))

(assert (= (and b!5174759 (not c!891016)) b!5174769))

(assert (= (and b!5174763 c!891018) b!5174766))

(assert (= (and b!5174763 (not c!891018)) b!5174767))

(assert (= (or b!5174763 b!5174769) bm!363464))

(assert (= (or b!5174763 b!5174769) bm!363459))

(assert (= (or b!5174763 b!5174769) bm!363460))

(assert (= (or b!5174763 b!5174769) bm!363463))

(assert (= (or b!5174768 b!5174762) bm!363461))

(assert (= (or b!5174768 b!5174759) bm!363465))

(assert (= (or b!5174768 b!5174762) bm!363462))

(assert (= (or b!5174768 b!5174762) bm!363466))

(assert (= (and d!1670130 res!2199204) b!5174765))

(assert (= (and b!5174765 (not res!2199203)) b!5174758))

(assert (=> bm!363465 m!6228466))

(assert (=> bm!363459 m!6228464))

(declare-fun m!6228766 () Bool)

(assert (=> bm!363460 m!6228766))

(declare-fun m!6228768 () Bool)

(assert (=> b!5174758 m!6228768))

(assert (=> b!5174758 m!6228442))

(assert (=> bm!363466 m!6228456))

(declare-fun m!6228772 () Bool)

(assert (=> bm!363463 m!6228772))

(declare-fun m!6228774 () Bool)

(assert (=> b!5174765 m!6228774))

(declare-fun m!6228776 () Bool)

(assert (=> b!5174763 m!6228776))

(assert (=> bm!363464 m!6228472))

(assert (=> bm!363462 m!6228454))

(assert (=> bm!363461 m!6228452))

(declare-fun m!6228778 () Bool)

(assert (=> d!1670130 m!6228778))

(declare-fun m!6228780 () Bool)

(assert (=> d!1670130 m!6228780))

(declare-fun m!6228782 () Bool)

(assert (=> d!1670130 m!6228782))

(assert (=> d!1670130 m!6228778))

(declare-fun m!6228784 () Bool)

(assert (=> d!1670130 m!6228784))

(assert (=> d!1670130 m!6228444))

(declare-fun m!6228786 () Bool)

(assert (=> d!1670130 m!6228786))

(declare-fun m!6228788 () Bool)

(assert (=> d!1670130 m!6228788))

(assert (=> b!5174759 m!6228472))

(declare-fun m!6228790 () Bool)

(assert (=> b!5174759 m!6228790))

(assert (=> b!5174759 m!6228446))

(assert (=> b!5174759 m!6228566))

(declare-fun m!6228792 () Bool)

(assert (=> b!5174759 m!6228792))

(assert (=> b!5174759 m!6228464))

(assert (=> b!5174759 m!6228442))

(assert (=> b!5174759 m!6228436))

(assert (=> b!5174759 m!6228458))

(assert (=> b!5174759 m!6228444))

(assert (=> b!5174759 m!6228572))

(assert (=> b!5174759 m!6228444))

(declare-fun m!6228794 () Bool)

(assert (=> b!5174759 m!6228794))

(assert (=> b!5174759 m!6228792))

(declare-fun m!6228796 () Bool)

(assert (=> b!5174759 m!6228796))

(assert (=> b!5174759 m!6228566))

(assert (=> b!5174759 m!6228568))

(assert (=> b!5174555 d!1670130))

(declare-fun d!1670134 () Bool)

(declare-fun lt!2131793 () Int)

(assert (=> d!1670134 (>= lt!2131793 0)))

(declare-fun e!3224447 () Int)

(assert (=> d!1670134 (= lt!2131793 e!3224447)))

(declare-fun c!891021 () Bool)

(assert (=> d!1670134 (= c!891021 ((_ is Nil!60153) testedP!294))))

(assert (=> d!1670134 (= (size!39689 testedP!294) lt!2131793)))

(declare-fun b!5174772 () Bool)

(assert (=> b!5174772 (= e!3224447 0)))

(declare-fun b!5174773 () Bool)

(assert (=> b!5174773 (= e!3224447 (+ 1 (size!39689 (t!373430 testedP!294))))))

(assert (= (and d!1670134 c!891021) b!5174772))

(assert (= (and d!1670134 (not c!891021)) b!5174773))

(declare-fun m!6228798 () Bool)

(assert (=> b!5174773 m!6228798))

(assert (=> b!5174555 d!1670134))

(declare-fun d!1670136 () Bool)

(assert (=> d!1670136 (= (isEmpty!32205 (_1!35231 lt!2131538)) ((_ is Nil!60153) (_1!35231 lt!2131538)))))

(assert (=> b!5174555 d!1670136))

(declare-fun d!1670138 () Bool)

(assert (=> d!1670138 (isPrefix!5786 input!5817 input!5817)))

(declare-fun lt!2131801 () Unit!151918)

(declare-fun choose!38400 (List!60277 List!60277) Unit!151918)

(assert (=> d!1670138 (= lt!2131801 (choose!38400 input!5817 input!5817))))

(assert (=> d!1670138 (= (lemmaIsPrefixRefl!3791 input!5817 input!5817) lt!2131801)))

(declare-fun bs!1203949 () Bool)

(assert (= bs!1203949 d!1670138))

(assert (=> bs!1203949 m!6228454))

(declare-fun m!6228806 () Bool)

(assert (=> bs!1203949 m!6228806))

(assert (=> b!5174552 d!1670138))

(declare-fun b!5174789 () Bool)

(declare-fun e!3224455 () Bool)

(assert (=> b!5174789 (= e!3224455 (>= (size!39689 input!5817) (size!39689 input!5817)))))

(declare-fun b!5174788 () Bool)

(declare-fun e!3224457 () Bool)

(assert (=> b!5174788 (= e!3224457 (isPrefix!5786 (tail!10170 input!5817) (tail!10170 input!5817)))))

(declare-fun b!5174787 () Bool)

(declare-fun res!2199212 () Bool)

(assert (=> b!5174787 (=> (not res!2199212) (not e!3224457))))

(assert (=> b!5174787 (= res!2199212 (= (head!11071 input!5817) (head!11071 input!5817)))))

(declare-fun b!5174786 () Bool)

(declare-fun e!3224456 () Bool)

(assert (=> b!5174786 (= e!3224456 e!3224457)))

(declare-fun res!2199209 () Bool)

(assert (=> b!5174786 (=> (not res!2199209) (not e!3224457))))

(assert (=> b!5174786 (= res!2199209 (not ((_ is Nil!60153) input!5817)))))

(declare-fun d!1670146 () Bool)

(assert (=> d!1670146 e!3224455))

(declare-fun res!2199210 () Bool)

(assert (=> d!1670146 (=> res!2199210 e!3224455)))

(declare-fun lt!2131802 () Bool)

(assert (=> d!1670146 (= res!2199210 (not lt!2131802))))

(assert (=> d!1670146 (= lt!2131802 e!3224456)))

(declare-fun res!2199211 () Bool)

(assert (=> d!1670146 (=> res!2199211 e!3224456)))

(assert (=> d!1670146 (= res!2199211 ((_ is Nil!60153) input!5817))))

(assert (=> d!1670146 (= (isPrefix!5786 input!5817 input!5817) lt!2131802)))

(assert (= (and d!1670146 (not res!2199211)) b!5174786))

(assert (= (and b!5174786 res!2199209) b!5174787))

(assert (= (and b!5174787 res!2199212) b!5174788))

(assert (= (and d!1670146 (not res!2199210)) b!5174789))

(assert (=> b!5174789 m!6228446))

(assert (=> b!5174789 m!6228446))

(assert (=> b!5174788 m!6228520))

(assert (=> b!5174788 m!6228520))

(assert (=> b!5174788 m!6228520))

(assert (=> b!5174788 m!6228520))

(declare-fun m!6228808 () Bool)

(assert (=> b!5174788 m!6228808))

(assert (=> b!5174787 m!6228526))

(assert (=> b!5174787 m!6228526))

(assert (=> b!5174552 d!1670146))

(declare-fun d!1670148 () Bool)

(assert (=> d!1670148 (= input!5817 testedP!294)))

(declare-fun lt!2131805 () Unit!151918)

(declare-fun choose!38401 (List!60277 List!60277 List!60277) Unit!151918)

(assert (=> d!1670148 (= lt!2131805 (choose!38401 input!5817 testedP!294 input!5817))))

(assert (=> d!1670148 (isPrefix!5786 input!5817 input!5817)))

(assert (=> d!1670148 (= (lemmaIsPrefixSameLengthThenSameList!1431 input!5817 testedP!294 input!5817) lt!2131805)))

(declare-fun bs!1203950 () Bool)

(assert (= bs!1203950 d!1670148))

(declare-fun m!6228810 () Bool)

(assert (=> bs!1203950 m!6228810))

(assert (=> bs!1203950 m!6228454))

(assert (=> b!5174552 d!1670148))

(declare-fun d!1670150 () Bool)

(declare-fun c!891028 () Bool)

(assert (=> d!1670150 (= c!891028 (isEmpty!32205 (_1!35231 lt!2131538)))))

(declare-fun e!3224472 () Bool)

(assert (=> d!1670150 (= (matchZipper!985 baseZ!62 (_1!35231 lt!2131538)) e!3224472)))

(declare-fun b!5174812 () Bool)

(assert (=> b!5174812 (= e!3224472 (nullableZipper!1191 baseZ!62))))

(declare-fun b!5174813 () Bool)

(assert (=> b!5174813 (= e!3224472 (matchZipper!985 (derivationStepZipper!999 baseZ!62 (head!11071 (_1!35231 lt!2131538))) (tail!10170 (_1!35231 lt!2131538))))))

(assert (= (and d!1670150 c!891028) b!5174812))

(assert (= (and d!1670150 (not c!891028)) b!5174813))

(assert (=> d!1670150 m!6228448))

(declare-fun m!6228816 () Bool)

(assert (=> b!5174812 m!6228816))

(declare-fun m!6228818 () Bool)

(assert (=> b!5174813 m!6228818))

(assert (=> b!5174813 m!6228818))

(declare-fun m!6228820 () Bool)

(assert (=> b!5174813 m!6228820))

(declare-fun m!6228822 () Bool)

(assert (=> b!5174813 m!6228822))

(assert (=> b!5174813 m!6228820))

(assert (=> b!5174813 m!6228822))

(declare-fun m!6228824 () Bool)

(assert (=> b!5174813 m!6228824))

(assert (=> b!5174551 d!1670150))

(declare-fun d!1670152 () Bool)

(declare-fun c!891029 () Bool)

(assert (=> d!1670152 (= c!891029 (isEmpty!32205 testedP!294))))

(declare-fun e!3224473 () Bool)

(assert (=> d!1670152 (= (matchZipper!985 baseZ!62 testedP!294) e!3224473)))

(declare-fun b!5174814 () Bool)

(assert (=> b!5174814 (= e!3224473 (nullableZipper!1191 baseZ!62))))

(declare-fun b!5174815 () Bool)

(assert (=> b!5174815 (= e!3224473 (matchZipper!985 (derivationStepZipper!999 baseZ!62 (head!11071 testedP!294)) (tail!10170 testedP!294)))))

(assert (= (and d!1670152 c!891029) b!5174814))

(assert (= (and d!1670152 (not c!891029)) b!5174815))

(declare-fun m!6228826 () Bool)

(assert (=> d!1670152 m!6228826))

(assert (=> b!5174814 m!6228816))

(assert (=> b!5174815 m!6228524))

(assert (=> b!5174815 m!6228524))

(declare-fun m!6228828 () Bool)

(assert (=> b!5174815 m!6228828))

(assert (=> b!5174815 m!6228518))

(assert (=> b!5174815 m!6228828))

(assert (=> b!5174815 m!6228518))

(declare-fun m!6228830 () Bool)

(assert (=> b!5174815 m!6228830))

(assert (=> b!5174551 d!1670152))

(declare-fun d!1670154 () Bool)

(declare-fun c!891030 () Bool)

(assert (=> d!1670154 (= c!891030 (isEmpty!32205 Nil!60153))))

(declare-fun e!3224474 () Bool)

(assert (=> d!1670154 (= (matchZipper!985 lt!2131537 Nil!60153) e!3224474)))

(declare-fun b!5174816 () Bool)

(assert (=> b!5174816 (= e!3224474 (nullableZipper!1191 lt!2131537))))

(declare-fun b!5174817 () Bool)

(assert (=> b!5174817 (= e!3224474 (matchZipper!985 (derivationStepZipper!999 lt!2131537 (head!11071 Nil!60153)) (tail!10170 Nil!60153)))))

(assert (= (and d!1670154 c!891030) b!5174816))

(assert (= (and d!1670154 (not c!891030)) b!5174817))

(declare-fun m!6228832 () Bool)

(assert (=> d!1670154 m!6228832))

(declare-fun m!6228834 () Bool)

(assert (=> b!5174816 m!6228834))

(declare-fun m!6228836 () Bool)

(assert (=> b!5174817 m!6228836))

(assert (=> b!5174817 m!6228836))

(declare-fun m!6228838 () Bool)

(assert (=> b!5174817 m!6228838))

(declare-fun m!6228840 () Bool)

(assert (=> b!5174817 m!6228840))

(assert (=> b!5174817 m!6228838))

(assert (=> b!5174817 m!6228840))

(declare-fun m!6228842 () Bool)

(assert (=> b!5174817 m!6228842))

(assert (=> b!5174551 d!1670154))

(declare-fun d!1670156 () Bool)

(assert (=> d!1670156 (= (matchZipper!985 baseZ!62 testedP!294) (matchZipper!985 (derivationZipper!276 baseZ!62 testedP!294) Nil!60153))))

(declare-fun lt!2131808 () Unit!151918)

(declare-fun choose!38402 ((InoxSet Context!8074) List!60277) Unit!151918)

(assert (=> d!1670156 (= lt!2131808 (choose!38402 baseZ!62 testedP!294))))

(assert (=> d!1670156 (= (lemmaMatchZipperIsSameAsWholeDerivativeAndNil!48 baseZ!62 testedP!294) lt!2131808)))

(declare-fun bs!1203951 () Bool)

(assert (= bs!1203951 d!1670156))

(assert (=> bs!1203951 m!6228480))

(assert (=> bs!1203951 m!6228450))

(assert (=> bs!1203951 m!6228450))

(declare-fun m!6228844 () Bool)

(assert (=> bs!1203951 m!6228844))

(declare-fun m!6228846 () Bool)

(assert (=> bs!1203951 m!6228846))

(assert (=> b!5174551 d!1670156))

(declare-fun condSetEmpty!32287 () Bool)

(assert (=> setNonEmpty!32279 (= condSetEmpty!32287 (= setRest!32279 ((as const (Array Context!8074 Bool)) false)))))

(declare-fun setRes!32287 () Bool)

(assert (=> setNonEmpty!32279 (= tp!1451788 setRes!32287)))

(declare-fun setIsEmpty!32287 () Bool)

(assert (=> setIsEmpty!32287 setRes!32287))

(declare-fun tp!1451817 () Bool)

(declare-fun setElem!32287 () Context!8074)

(declare-fun setNonEmpty!32287 () Bool)

(declare-fun e!3224477 () Bool)

(assert (=> setNonEmpty!32287 (= setRes!32287 (and tp!1451817 (inv!79879 setElem!32287) e!3224477))))

(declare-fun setRest!32287 () (InoxSet Context!8074))

(assert (=> setNonEmpty!32287 (= setRest!32279 ((_ map or) (store ((as const (Array Context!8074 Bool)) false) setElem!32287 true) setRest!32287))))

(declare-fun b!5174822 () Bool)

(declare-fun tp!1451816 () Bool)

(assert (=> b!5174822 (= e!3224477 tp!1451816)))

(assert (= (and setNonEmpty!32279 condSetEmpty!32287) setIsEmpty!32287))

(assert (= (and setNonEmpty!32279 (not condSetEmpty!32287)) setNonEmpty!32287))

(assert (= setNonEmpty!32287 b!5174822))

(declare-fun m!6228848 () Bool)

(assert (=> setNonEmpty!32287 m!6228848))

(declare-fun b!5174827 () Bool)

(declare-fun e!3224480 () Bool)

(declare-fun tp!1451822 () Bool)

(declare-fun tp!1451823 () Bool)

(assert (=> b!5174827 (= e!3224480 (and tp!1451822 tp!1451823))))

(assert (=> b!5174557 (= tp!1451790 e!3224480)))

(assert (= (and b!5174557 ((_ is Cons!60154) (exprs!4537 setElem!32279))) b!5174827))

(declare-fun b!5174832 () Bool)

(declare-fun e!3224483 () Bool)

(declare-fun tp!1451826 () Bool)

(assert (=> b!5174832 (= e!3224483 (and tp_is_empty!38559 tp!1451826))))

(assert (=> b!5174553 (= tp!1451786 e!3224483)))

(assert (= (and b!5174553 ((_ is Cons!60153) (t!373430 input!5817))) b!5174832))

(declare-fun condSetEmpty!32288 () Bool)

(assert (=> setNonEmpty!32280 (= condSetEmpty!32288 (= setRest!32280 ((as const (Array Context!8074 Bool)) false)))))

(declare-fun setRes!32288 () Bool)

(assert (=> setNonEmpty!32280 (= tp!1451787 setRes!32288)))

(declare-fun setIsEmpty!32288 () Bool)

(assert (=> setIsEmpty!32288 setRes!32288))

(declare-fun setElem!32288 () Context!8074)

(declare-fun setNonEmpty!32288 () Bool)

(declare-fun e!3224484 () Bool)

(declare-fun tp!1451828 () Bool)

(assert (=> setNonEmpty!32288 (= setRes!32288 (and tp!1451828 (inv!79879 setElem!32288) e!3224484))))

(declare-fun setRest!32288 () (InoxSet Context!8074))

(assert (=> setNonEmpty!32288 (= setRest!32280 ((_ map or) (store ((as const (Array Context!8074 Bool)) false) setElem!32288 true) setRest!32288))))

(declare-fun b!5174833 () Bool)

(declare-fun tp!1451827 () Bool)

(assert (=> b!5174833 (= e!3224484 tp!1451827)))

(assert (= (and setNonEmpty!32280 condSetEmpty!32288) setIsEmpty!32288))

(assert (= (and setNonEmpty!32280 (not condSetEmpty!32288)) setNonEmpty!32288))

(assert (= setNonEmpty!32288 b!5174833))

(declare-fun m!6228850 () Bool)

(assert (=> setNonEmpty!32288 m!6228850))

(declare-fun b!5174834 () Bool)

(declare-fun e!3224485 () Bool)

(declare-fun tp!1451829 () Bool)

(declare-fun tp!1451830 () Bool)

(assert (=> b!5174834 (= e!3224485 (and tp!1451829 tp!1451830))))

(assert (=> b!5174559 (= tp!1451791 e!3224485)))

(assert (= (and b!5174559 ((_ is Cons!60154) (exprs!4537 setElem!32280))) b!5174834))

(declare-fun b!5174835 () Bool)

(declare-fun e!3224486 () Bool)

(declare-fun tp!1451831 () Bool)

(assert (=> b!5174835 (= e!3224486 (and tp_is_empty!38559 tp!1451831))))

(assert (=> b!5174547 (= tp!1451789 e!3224486)))

(assert (= (and b!5174547 ((_ is Cons!60153) (t!373430 testedP!294))) b!5174835))

(check-sat (not bm!363466) (not setNonEmpty!32288) (not b!5174812) (not bm!363442) (not bm!363459) (not b!5174606) (not b!5174622) (not b!5174815) (not b!5174813) (not d!1670156) (not d!1670086) (not b!5174814) (not b!5174758) (not b!5174817) (not b!5174822) (not d!1670106) (not d!1670076) (not b!5174789) (not b!5174701) (not d!1670082) (not b!5174834) (not b!5174627) (not b!5174787) (not b!5174763) (not bm!363461) (not d!1670148) tp_is_empty!38559 (not bm!363438) (not d!1670094) (not d!1670154) (not d!1670138) (not bm!363465) (not b!5174626) (not b!5174816) (not bm!363460) (not bm!363463) (not b!5174835) (not bm!363435) (not bm!363439) (not b!5174765) (not b!5174773) (not b!5174695) (not b!5174694) (not b!5174607) (not bm!363464) (not bm!363441) (not b!5174699) (not b!5174742) (not bm!363440) (not d!1670150) (not d!1670130) (not b!5174788) (not b!5174827) (not d!1670126) (not b!5174832) (not d!1670096) (not b!5174833) (not b!5174605) (not b!5174564) (not b!5174625) (not d!1670112) (not b!5174759) (not b!5174731) (not bm!363462) (not d!1670058) (not bm!363436) (not setNonEmpty!32287) (not b!5174621) (not bm!363437) (not d!1670152))
(check-sat)
