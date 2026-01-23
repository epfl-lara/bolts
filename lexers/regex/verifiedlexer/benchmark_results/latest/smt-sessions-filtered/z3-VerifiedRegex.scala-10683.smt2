; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!547208 () Bool)

(assert start!547208)

(declare-fun b!5170181 () Bool)

(declare-fun e!3221504 () Bool)

(declare-fun e!3221501 () Bool)

(assert (=> b!5170181 (= e!3221504 e!3221501)))

(declare-fun res!2197552 () Bool)

(assert (=> b!5170181 (=> (not res!2197552) (not e!3221501))))

(declare-datatypes ((C!29496 0))(
  ( (C!29497 (val!24450 Int)) )
))
(declare-datatypes ((List!60189 0))(
  ( (Nil!60065) (Cons!60065 (h!66513 C!29496) (t!373342 List!60189)) )
))
(declare-fun input!5817 () List!60189)

(declare-fun lt!2127874 () List!60189)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14613 0))(
  ( (ElementMatch!14613 (c!889882 C!29496)) (Concat!23458 (regOne!29738 Regex!14613) (regTwo!29738 Regex!14613)) (EmptyExpr!14613) (Star!14613 (reg!14942 Regex!14613)) (EmptyLang!14613) (Union!14613 (regOne!29739 Regex!14613) (regTwo!29739 Regex!14613)) )
))
(declare-datatypes ((List!60190 0))(
  ( (Nil!60066) (Cons!60066 (h!66514 Regex!14613) (t!373343 List!60190)) )
))
(declare-datatypes ((Context!7994 0))(
  ( (Context!7995 (exprs!4497 List!60190)) )
))
(declare-fun z!4581 () (InoxSet Context!7994))

(declare-fun testedP!294 () List!60189)

(declare-fun lt!2127870 () Int)

(declare-fun lt!2127880 () Int)

(declare-fun isEmpty!32159 (List!60189) Bool)

(declare-datatypes ((tuple2!63780 0))(
  ( (tuple2!63781 (_1!35193 List!60189) (_2!35193 List!60189)) )
))
(declare-fun findLongestMatchInnerZipper!271 ((InoxSet Context!7994) List!60189 Int List!60189 List!60189 Int) tuple2!63780)

(assert (=> b!5170181 (= res!2197552 (not (isEmpty!32159 (_1!35193 (findLongestMatchInnerZipper!271 z!4581 testedP!294 lt!2127880 lt!2127874 input!5817 lt!2127870)))))))

(declare-fun size!39649 (List!60189) Int)

(assert (=> b!5170181 (= lt!2127870 (size!39649 input!5817))))

(declare-fun getSuffix!3396 (List!60189 List!60189) List!60189)

(assert (=> b!5170181 (= lt!2127874 (getSuffix!3396 input!5817 testedP!294))))

(assert (=> b!5170181 (= lt!2127880 (size!39649 testedP!294))))

(declare-fun res!2197548 () Bool)

(assert (=> start!547208 (=> (not res!2197548) (not e!3221504))))

(declare-fun isPrefix!5746 (List!60189 List!60189) Bool)

(assert (=> start!547208 (= res!2197548 (isPrefix!5746 testedP!294 input!5817))))

(assert (=> start!547208 e!3221504))

(declare-fun e!3221499 () Bool)

(assert (=> start!547208 e!3221499))

(declare-fun e!3221506 () Bool)

(assert (=> start!547208 e!3221506))

(declare-fun condSetEmpty!31960 () Bool)

(declare-fun baseZ!62 () (InoxSet Context!7994))

(assert (=> start!547208 (= condSetEmpty!31960 (= baseZ!62 ((as const (Array Context!7994 Bool)) false)))))

(declare-fun setRes!31959 () Bool)

(assert (=> start!547208 setRes!31959))

(declare-fun condSetEmpty!31959 () Bool)

(assert (=> start!547208 (= condSetEmpty!31959 (= z!4581 ((as const (Array Context!7994 Bool)) false)))))

(declare-fun setRes!31960 () Bool)

(assert (=> start!547208 setRes!31960))

(declare-fun b!5170182 () Bool)

(declare-fun tp_is_empty!38479 () Bool)

(declare-fun tp!1450477 () Bool)

(assert (=> b!5170182 (= e!3221499 (and tp_is_empty!38479 tp!1450477))))

(declare-fun b!5170183 () Bool)

(declare-fun e!3221502 () Bool)

(assert (=> b!5170183 (= e!3221502 (not (= lt!2127874 Nil!60065)))))

(declare-fun lt!2127879 () List!60189)

(declare-fun lt!2127871 () (InoxSet Context!7994))

(declare-fun derivationZipper!236 ((InoxSet Context!7994) List!60189) (InoxSet Context!7994))

(assert (=> b!5170183 (= (derivationZipper!236 baseZ!62 lt!2127879) lt!2127871)))

(declare-datatypes ((Unit!151666 0))(
  ( (Unit!151667) )
))
(declare-fun lt!2127872 () Unit!151666)

(declare-fun lt!2127877 () C!29496)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!87 ((InoxSet Context!7994) (InoxSet Context!7994) List!60189 C!29496) Unit!151666)

(assert (=> b!5170183 (= lt!2127872 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!87 baseZ!62 z!4581 testedP!294 lt!2127877))))

(declare-fun setIsEmpty!31959 () Bool)

(assert (=> setIsEmpty!31959 setRes!31960))

(declare-fun b!5170184 () Bool)

(declare-fun e!3221500 () Bool)

(declare-fun tp!1450474 () Bool)

(assert (=> b!5170184 (= e!3221500 tp!1450474)))

(declare-fun b!5170185 () Bool)

(declare-fun tp!1450475 () Bool)

(assert (=> b!5170185 (= e!3221506 (and tp_is_empty!38479 tp!1450475))))

(declare-fun b!5170186 () Bool)

(declare-fun e!3221503 () Unit!151666)

(declare-fun Unit!151668 () Unit!151666)

(assert (=> b!5170186 (= e!3221503 Unit!151668)))

(declare-fun b!5170187 () Bool)

(declare-fun e!3221498 () Bool)

(assert (=> b!5170187 (= e!3221501 (not e!3221498))))

(declare-fun res!2197550 () Bool)

(assert (=> b!5170187 (=> res!2197550 e!3221498)))

(assert (=> b!5170187 (= res!2197550 (>= lt!2127880 lt!2127870))))

(declare-fun lt!2127876 () Unit!151666)

(assert (=> b!5170187 (= lt!2127876 e!3221503)))

(declare-fun c!889881 () Bool)

(assert (=> b!5170187 (= c!889881 (= lt!2127880 lt!2127870))))

(assert (=> b!5170187 (<= lt!2127880 lt!2127870)))

(declare-fun lt!2127878 () Unit!151666)

(declare-fun lemmaIsPrefixThenSmallerEqSize!909 (List!60189 List!60189) Unit!151666)

(assert (=> b!5170187 (= lt!2127878 (lemmaIsPrefixThenSmallerEqSize!909 testedP!294 input!5817))))

(declare-fun b!5170188 () Bool)

(declare-fun e!3221505 () Bool)

(assert (=> b!5170188 (= e!3221498 e!3221505)))

(declare-fun res!2197553 () Bool)

(assert (=> b!5170188 (=> res!2197553 e!3221505)))

(declare-fun nullableZipper!1159 ((InoxSet Context!7994)) Bool)

(assert (=> b!5170188 (= res!2197553 (not (nullableZipper!1159 z!4581)))))

(assert (=> b!5170188 (isPrefix!5746 lt!2127879 input!5817)))

(declare-fun lt!2127875 () Unit!151666)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1059 (List!60189 List!60189) Unit!151666)

(assert (=> b!5170188 (= lt!2127875 (lemmaAddHeadSuffixToPrefixStillPrefix!1059 testedP!294 input!5817))))

(declare-fun ++!13137 (List!60189 List!60189) List!60189)

(assert (=> b!5170188 (= lt!2127879 (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065)))))

(declare-fun head!11037 (List!60189) C!29496)

(assert (=> b!5170188 (= lt!2127877 (head!11037 lt!2127874))))

(declare-fun b!5170189 () Bool)

(declare-fun res!2197554 () Bool)

(assert (=> b!5170189 (=> (not res!2197554) (not e!3221501))))

(assert (=> b!5170189 (= res!2197554 (not (= testedP!294 input!5817)))))

(declare-fun b!5170190 () Bool)

(declare-fun e!3221497 () Bool)

(declare-fun tp!1450479 () Bool)

(assert (=> b!5170190 (= e!3221497 tp!1450479)))

(declare-fun setElem!31960 () Context!7994)

(declare-fun setNonEmpty!31959 () Bool)

(declare-fun tp!1450478 () Bool)

(declare-fun inv!79779 (Context!7994) Bool)

(assert (=> setNonEmpty!31959 (= setRes!31959 (and tp!1450478 (inv!79779 setElem!31960) e!3221497))))

(declare-fun setRest!31959 () (InoxSet Context!7994))

(assert (=> setNonEmpty!31959 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7994 Bool)) false) setElem!31960 true) setRest!31959))))

(declare-fun b!5170191 () Bool)

(assert (=> b!5170191 (= e!3221505 e!3221502)))

(declare-fun res!2197551 () Bool)

(assert (=> b!5170191 (=> res!2197551 e!3221502)))

(declare-fun tail!10146 (List!60189) List!60189)

(assert (=> b!5170191 (= res!2197551 (isEmpty!32159 (_1!35193 (findLongestMatchInnerZipper!271 lt!2127871 lt!2127879 (+ 1 lt!2127880) (tail!10146 lt!2127874) input!5817 lt!2127870))))))

(declare-fun derivationStepZipper!967 ((InoxSet Context!7994) C!29496) (InoxSet Context!7994))

(assert (=> b!5170191 (= lt!2127871 (derivationStepZipper!967 z!4581 lt!2127877))))

(declare-fun b!5170192 () Bool)

(declare-fun res!2197549 () Bool)

(assert (=> b!5170192 (=> (not res!2197549) (not e!3221504))))

(assert (=> b!5170192 (= res!2197549 (= (derivationZipper!236 baseZ!62 testedP!294) z!4581))))

(declare-fun setElem!31959 () Context!7994)

(declare-fun setNonEmpty!31960 () Bool)

(declare-fun tp!1450476 () Bool)

(assert (=> setNonEmpty!31960 (= setRes!31960 (and tp!1450476 (inv!79779 setElem!31959) e!3221500))))

(declare-fun setRest!31960 () (InoxSet Context!7994))

(assert (=> setNonEmpty!31960 (= z!4581 ((_ map or) (store ((as const (Array Context!7994 Bool)) false) setElem!31959 true) setRest!31960))))

(declare-fun b!5170193 () Bool)

(declare-fun Unit!151669 () Unit!151666)

(assert (=> b!5170193 (= e!3221503 Unit!151669)))

(declare-fun lt!2127873 () Unit!151666)

(declare-fun lemmaIsPrefixRefl!3753 (List!60189 List!60189) Unit!151666)

(assert (=> b!5170193 (= lt!2127873 (lemmaIsPrefixRefl!3753 input!5817 input!5817))))

(assert (=> b!5170193 (isPrefix!5746 input!5817 input!5817)))

(declare-fun lt!2127869 () Unit!151666)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1395 (List!60189 List!60189 List!60189) Unit!151666)

(assert (=> b!5170193 (= lt!2127869 (lemmaIsPrefixSameLengthThenSameList!1395 input!5817 testedP!294 input!5817))))

(assert (=> b!5170193 false))

(declare-fun setIsEmpty!31960 () Bool)

(assert (=> setIsEmpty!31960 setRes!31959))

(assert (= (and start!547208 res!2197548) b!5170192))

(assert (= (and b!5170192 res!2197549) b!5170181))

(assert (= (and b!5170181 res!2197552) b!5170189))

(assert (= (and b!5170189 res!2197554) b!5170187))

(assert (= (and b!5170187 c!889881) b!5170193))

(assert (= (and b!5170187 (not c!889881)) b!5170186))

(assert (= (and b!5170187 (not res!2197550)) b!5170188))

(assert (= (and b!5170188 (not res!2197553)) b!5170191))

(assert (= (and b!5170191 (not res!2197551)) b!5170183))

(get-info :version)

(assert (= (and start!547208 ((_ is Cons!60065) testedP!294)) b!5170182))

(assert (= (and start!547208 ((_ is Cons!60065) input!5817)) b!5170185))

(assert (= (and start!547208 condSetEmpty!31960) setIsEmpty!31960))

(assert (= (and start!547208 (not condSetEmpty!31960)) setNonEmpty!31959))

(assert (= setNonEmpty!31959 b!5170190))

(assert (= (and start!547208 condSetEmpty!31959) setIsEmpty!31959))

(assert (= (and start!547208 (not condSetEmpty!31959)) setNonEmpty!31960))

(assert (= setNonEmpty!31960 b!5170184))

(declare-fun m!6222320 () Bool)

(assert (=> b!5170191 m!6222320))

(assert (=> b!5170191 m!6222320))

(declare-fun m!6222322 () Bool)

(assert (=> b!5170191 m!6222322))

(declare-fun m!6222324 () Bool)

(assert (=> b!5170191 m!6222324))

(declare-fun m!6222326 () Bool)

(assert (=> b!5170191 m!6222326))

(declare-fun m!6222328 () Bool)

(assert (=> b!5170187 m!6222328))

(declare-fun m!6222330 () Bool)

(assert (=> b!5170181 m!6222330))

(declare-fun m!6222332 () Bool)

(assert (=> b!5170181 m!6222332))

(declare-fun m!6222334 () Bool)

(assert (=> b!5170181 m!6222334))

(declare-fun m!6222336 () Bool)

(assert (=> b!5170181 m!6222336))

(declare-fun m!6222338 () Bool)

(assert (=> b!5170181 m!6222338))

(declare-fun m!6222340 () Bool)

(assert (=> b!5170192 m!6222340))

(declare-fun m!6222342 () Bool)

(assert (=> setNonEmpty!31960 m!6222342))

(declare-fun m!6222344 () Bool)

(assert (=> start!547208 m!6222344))

(declare-fun m!6222346 () Bool)

(assert (=> b!5170193 m!6222346))

(declare-fun m!6222348 () Bool)

(assert (=> b!5170193 m!6222348))

(declare-fun m!6222350 () Bool)

(assert (=> b!5170193 m!6222350))

(declare-fun m!6222352 () Bool)

(assert (=> b!5170188 m!6222352))

(declare-fun m!6222354 () Bool)

(assert (=> b!5170188 m!6222354))

(declare-fun m!6222356 () Bool)

(assert (=> b!5170188 m!6222356))

(declare-fun m!6222358 () Bool)

(assert (=> b!5170188 m!6222358))

(declare-fun m!6222360 () Bool)

(assert (=> b!5170188 m!6222360))

(declare-fun m!6222362 () Bool)

(assert (=> setNonEmpty!31959 m!6222362))

(declare-fun m!6222364 () Bool)

(assert (=> b!5170183 m!6222364))

(declare-fun m!6222366 () Bool)

(assert (=> b!5170183 m!6222366))

(check-sat (not b!5170181) (not setNonEmpty!31960) (not b!5170183) (not b!5170190) tp_is_empty!38479 (not b!5170191) (not b!5170192) (not b!5170182) (not setNonEmpty!31959) (not start!547208) (not b!5170185) (not b!5170184) (not b!5170187) (not b!5170188) (not b!5170193))
(check-sat)
(get-model)

(declare-fun b!5170202 () Bool)

(declare-fun e!3221515 () Bool)

(declare-fun e!3221513 () Bool)

(assert (=> b!5170202 (= e!3221515 e!3221513)))

(declare-fun res!2197566 () Bool)

(assert (=> b!5170202 (=> (not res!2197566) (not e!3221513))))

(assert (=> b!5170202 (= res!2197566 (not ((_ is Nil!60065) input!5817)))))

(declare-fun b!5170203 () Bool)

(declare-fun res!2197564 () Bool)

(assert (=> b!5170203 (=> (not res!2197564) (not e!3221513))))

(assert (=> b!5170203 (= res!2197564 (= (head!11037 lt!2127879) (head!11037 input!5817)))))

(declare-fun d!1668440 () Bool)

(declare-fun e!3221514 () Bool)

(assert (=> d!1668440 e!3221514))

(declare-fun res!2197565 () Bool)

(assert (=> d!1668440 (=> res!2197565 e!3221514)))

(declare-fun lt!2127883 () Bool)

(assert (=> d!1668440 (= res!2197565 (not lt!2127883))))

(assert (=> d!1668440 (= lt!2127883 e!3221515)))

(declare-fun res!2197563 () Bool)

(assert (=> d!1668440 (=> res!2197563 e!3221515)))

(assert (=> d!1668440 (= res!2197563 ((_ is Nil!60065) lt!2127879))))

(assert (=> d!1668440 (= (isPrefix!5746 lt!2127879 input!5817) lt!2127883)))

(declare-fun b!5170205 () Bool)

(assert (=> b!5170205 (= e!3221514 (>= (size!39649 input!5817) (size!39649 lt!2127879)))))

(declare-fun b!5170204 () Bool)

(assert (=> b!5170204 (= e!3221513 (isPrefix!5746 (tail!10146 lt!2127879) (tail!10146 input!5817)))))

(assert (= (and d!1668440 (not res!2197563)) b!5170202))

(assert (= (and b!5170202 res!2197566) b!5170203))

(assert (= (and b!5170203 res!2197564) b!5170204))

(assert (= (and d!1668440 (not res!2197565)) b!5170205))

(declare-fun m!6222368 () Bool)

(assert (=> b!5170203 m!6222368))

(declare-fun m!6222370 () Bool)

(assert (=> b!5170203 m!6222370))

(assert (=> b!5170205 m!6222336))

(declare-fun m!6222372 () Bool)

(assert (=> b!5170205 m!6222372))

(declare-fun m!6222374 () Bool)

(assert (=> b!5170204 m!6222374))

(declare-fun m!6222376 () Bool)

(assert (=> b!5170204 m!6222376))

(assert (=> b!5170204 m!6222374))

(assert (=> b!5170204 m!6222376))

(declare-fun m!6222378 () Bool)

(assert (=> b!5170204 m!6222378))

(assert (=> b!5170188 d!1668440))

(declare-fun b!5170217 () Bool)

(declare-fun e!3221521 () Bool)

(declare-fun lt!2127886 () List!60189)

(assert (=> b!5170217 (= e!3221521 (or (not (= (Cons!60065 lt!2127877 Nil!60065) Nil!60065)) (= lt!2127886 testedP!294)))))

(declare-fun d!1668442 () Bool)

(assert (=> d!1668442 e!3221521))

(declare-fun res!2197572 () Bool)

(assert (=> d!1668442 (=> (not res!2197572) (not e!3221521))))

(declare-fun content!10644 (List!60189) (InoxSet C!29496))

(assert (=> d!1668442 (= res!2197572 (= (content!10644 lt!2127886) ((_ map or) (content!10644 testedP!294) (content!10644 (Cons!60065 lt!2127877 Nil!60065)))))))

(declare-fun e!3221520 () List!60189)

(assert (=> d!1668442 (= lt!2127886 e!3221520)))

(declare-fun c!889885 () Bool)

(assert (=> d!1668442 (= c!889885 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668442 (= (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065)) lt!2127886)))

(declare-fun b!5170214 () Bool)

(assert (=> b!5170214 (= e!3221520 (Cons!60065 lt!2127877 Nil!60065))))

(declare-fun b!5170216 () Bool)

(declare-fun res!2197571 () Bool)

(assert (=> b!5170216 (=> (not res!2197571) (not e!3221521))))

(assert (=> b!5170216 (= res!2197571 (= (size!39649 lt!2127886) (+ (size!39649 testedP!294) (size!39649 (Cons!60065 lt!2127877 Nil!60065)))))))

(declare-fun b!5170215 () Bool)

(assert (=> b!5170215 (= e!3221520 (Cons!60065 (h!66513 testedP!294) (++!13137 (t!373342 testedP!294) (Cons!60065 lt!2127877 Nil!60065))))))

(assert (= (and d!1668442 c!889885) b!5170214))

(assert (= (and d!1668442 (not c!889885)) b!5170215))

(assert (= (and d!1668442 res!2197572) b!5170216))

(assert (= (and b!5170216 res!2197571) b!5170217))

(declare-fun m!6222380 () Bool)

(assert (=> d!1668442 m!6222380))

(declare-fun m!6222382 () Bool)

(assert (=> d!1668442 m!6222382))

(declare-fun m!6222384 () Bool)

(assert (=> d!1668442 m!6222384))

(declare-fun m!6222386 () Bool)

(assert (=> b!5170216 m!6222386))

(assert (=> b!5170216 m!6222330))

(declare-fun m!6222388 () Bool)

(assert (=> b!5170216 m!6222388))

(declare-fun m!6222390 () Bool)

(assert (=> b!5170215 m!6222390))

(assert (=> b!5170188 d!1668442))

(declare-fun d!1668444 () Bool)

(assert (=> d!1668444 (= (head!11037 lt!2127874) (h!66513 lt!2127874))))

(assert (=> b!5170188 d!1668444))

(declare-fun d!1668446 () Bool)

(assert (=> d!1668446 (isPrefix!5746 (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)) input!5817)))

(declare-fun lt!2127889 () Unit!151666)

(declare-fun choose!38298 (List!60189 List!60189) Unit!151666)

(assert (=> d!1668446 (= lt!2127889 (choose!38298 testedP!294 input!5817))))

(assert (=> d!1668446 (isPrefix!5746 testedP!294 input!5817)))

(assert (=> d!1668446 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1059 testedP!294 input!5817) lt!2127889)))

(declare-fun bs!1203432 () Bool)

(assert (= bs!1203432 d!1668446))

(assert (=> bs!1203432 m!6222334))

(declare-fun m!6222392 () Bool)

(assert (=> bs!1203432 m!6222392))

(assert (=> bs!1203432 m!6222334))

(declare-fun m!6222394 () Bool)

(assert (=> bs!1203432 m!6222394))

(declare-fun m!6222396 () Bool)

(assert (=> bs!1203432 m!6222396))

(assert (=> bs!1203432 m!6222396))

(declare-fun m!6222398 () Bool)

(assert (=> bs!1203432 m!6222398))

(assert (=> bs!1203432 m!6222344))

(assert (=> b!5170188 d!1668446))

(declare-fun d!1668448 () Bool)

(declare-fun lambda!258109 () Int)

(declare-fun exists!1911 ((InoxSet Context!7994) Int) Bool)

(assert (=> d!1668448 (= (nullableZipper!1159 z!4581) (exists!1911 z!4581 lambda!258109))))

(declare-fun bs!1203437 () Bool)

(assert (= bs!1203437 d!1668448))

(declare-fun m!6222462 () Bool)

(assert (=> bs!1203437 m!6222462))

(assert (=> b!5170188 d!1668448))

(declare-fun d!1668474 () Bool)

(declare-fun lambda!258112 () Int)

(declare-fun forall!14129 (List!60190 Int) Bool)

(assert (=> d!1668474 (= (inv!79779 setElem!31959) (forall!14129 (exprs!4497 setElem!31959) lambda!258112))))

(declare-fun bs!1203438 () Bool)

(assert (= bs!1203438 d!1668474))

(declare-fun m!6222516 () Bool)

(assert (=> bs!1203438 m!6222516))

(assert (=> setNonEmpty!31960 d!1668474))

(declare-fun d!1668480 () Bool)

(assert (=> d!1668480 (= (isEmpty!32159 (_1!35193 (findLongestMatchInnerZipper!271 lt!2127871 lt!2127879 (+ 1 lt!2127880) (tail!10146 lt!2127874) input!5817 lt!2127870))) ((_ is Nil!60065) (_1!35193 (findLongestMatchInnerZipper!271 lt!2127871 lt!2127879 (+ 1 lt!2127880) (tail!10146 lt!2127874) input!5817 lt!2127870))))))

(assert (=> b!5170191 d!1668480))

(declare-fun bm!362919 () Bool)

(declare-fun call!362928 () C!29496)

(assert (=> bm!362919 (= call!362928 (head!11037 (tail!10146 lt!2127874)))))

(declare-fun bm!362920 () Bool)

(declare-fun call!362929 () Bool)

(assert (=> bm!362920 (= call!362929 (nullableZipper!1159 lt!2127871))))

(declare-fun b!5170376 () Bool)

(declare-fun e!3221616 () tuple2!63780)

(assert (=> b!5170376 (= e!3221616 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun b!5170377 () Bool)

(declare-fun c!889944 () Bool)

(assert (=> b!5170377 (= c!889944 call!362929)))

(declare-fun lt!2128084 () Unit!151666)

(declare-fun lt!2128095 () Unit!151666)

(assert (=> b!5170377 (= lt!2128084 lt!2128095)))

(declare-fun lt!2128089 () C!29496)

(declare-fun lt!2128093 () List!60189)

(assert (=> b!5170377 (= (++!13137 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065)) lt!2128093) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1574 (List!60189 C!29496 List!60189 List!60189) Unit!151666)

(assert (=> b!5170377 (= lt!2128095 (lemmaMoveElementToOtherListKeepsConcatEq!1574 lt!2127879 lt!2128089 lt!2128093 input!5817))))

(assert (=> b!5170377 (= lt!2128093 (tail!10146 (tail!10146 lt!2127874)))))

(assert (=> b!5170377 (= lt!2128089 (head!11037 (tail!10146 lt!2127874)))))

(declare-fun lt!2128085 () Unit!151666)

(declare-fun lt!2128091 () Unit!151666)

(assert (=> b!5170377 (= lt!2128085 lt!2128091)))

(assert (=> b!5170377 (isPrefix!5746 (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065)) input!5817)))

(assert (=> b!5170377 (= lt!2128091 (lemmaAddHeadSuffixToPrefixStillPrefix!1059 lt!2127879 input!5817))))

(declare-fun lt!2128082 () List!60189)

(assert (=> b!5170377 (= lt!2128082 (++!13137 lt!2127879 (Cons!60065 (head!11037 (tail!10146 lt!2127874)) Nil!60065)))))

(declare-fun lt!2128098 () Unit!151666)

(declare-fun e!3221619 () Unit!151666)

(assert (=> b!5170377 (= lt!2128098 e!3221619)))

(declare-fun c!889947 () Bool)

(assert (=> b!5170377 (= c!889947 (= (size!39649 lt!2127879) (size!39649 input!5817)))))

(declare-fun lt!2128078 () Unit!151666)

(declare-fun lt!2128100 () Unit!151666)

(assert (=> b!5170377 (= lt!2128078 lt!2128100)))

(assert (=> b!5170377 (<= (size!39649 lt!2127879) (size!39649 input!5817))))

(assert (=> b!5170377 (= lt!2128100 (lemmaIsPrefixThenSmallerEqSize!909 lt!2127879 input!5817))))

(declare-fun e!3221614 () tuple2!63780)

(declare-fun e!3221618 () tuple2!63780)

(assert (=> b!5170377 (= e!3221614 e!3221618)))

(declare-fun b!5170378 () Bool)

(declare-fun Unit!151676 () Unit!151666)

(assert (=> b!5170378 (= e!3221619 Unit!151676)))

(declare-fun lt!2128096 () Unit!151666)

(declare-fun call!362924 () Unit!151666)

(assert (=> b!5170378 (= lt!2128096 call!362924)))

(declare-fun call!362930 () Bool)

(assert (=> b!5170378 call!362930))

(declare-fun lt!2128101 () Unit!151666)

(assert (=> b!5170378 (= lt!2128101 lt!2128096)))

(declare-fun lt!2128094 () Unit!151666)

(declare-fun call!362931 () Unit!151666)

(assert (=> b!5170378 (= lt!2128094 call!362931)))

(assert (=> b!5170378 (= input!5817 lt!2127879)))

(declare-fun lt!2128083 () Unit!151666)

(assert (=> b!5170378 (= lt!2128083 lt!2128094)))

(assert (=> b!5170378 false))

(declare-fun bm!362921 () Bool)

(declare-fun call!362927 () List!60189)

(assert (=> bm!362921 (= call!362927 (tail!10146 (tail!10146 lt!2127874)))))

(declare-fun d!1668482 () Bool)

(declare-fun e!3221620 () Bool)

(assert (=> d!1668482 e!3221620))

(declare-fun res!2197611 () Bool)

(assert (=> d!1668482 (=> (not res!2197611) (not e!3221620))))

(declare-fun lt!2128079 () tuple2!63780)

(assert (=> d!1668482 (= res!2197611 (= (++!13137 (_1!35193 lt!2128079) (_2!35193 lt!2128079)) input!5817))))

(declare-fun e!3221617 () tuple2!63780)

(assert (=> d!1668482 (= lt!2128079 e!3221617)))

(declare-fun c!889943 () Bool)

(declare-fun lostCauseZipper!1326 ((InoxSet Context!7994)) Bool)

(assert (=> d!1668482 (= c!889943 (lostCauseZipper!1326 lt!2127871))))

(declare-fun lt!2128077 () Unit!151666)

(declare-fun Unit!151677 () Unit!151666)

(assert (=> d!1668482 (= lt!2128077 Unit!151677)))

(assert (=> d!1668482 (= (getSuffix!3396 input!5817 lt!2127879) (tail!10146 lt!2127874))))

(declare-fun lt!2128081 () Unit!151666)

(declare-fun lt!2128092 () Unit!151666)

(assert (=> d!1668482 (= lt!2128081 lt!2128092)))

(declare-fun lt!2128090 () List!60189)

(assert (=> d!1668482 (= (tail!10146 lt!2127874) lt!2128090)))

(declare-fun lemmaSamePrefixThenSameSuffix!2693 (List!60189 List!60189 List!60189 List!60189 List!60189) Unit!151666)

(assert (=> d!1668482 (= lt!2128092 (lemmaSamePrefixThenSameSuffix!2693 lt!2127879 (tail!10146 lt!2127874) lt!2127879 lt!2128090 input!5817))))

(assert (=> d!1668482 (= lt!2128090 (getSuffix!3396 input!5817 lt!2127879))))

(declare-fun lt!2128099 () Unit!151666)

(declare-fun lt!2128080 () Unit!151666)

(assert (=> d!1668482 (= lt!2128099 lt!2128080)))

(assert (=> d!1668482 (isPrefix!5746 lt!2127879 (++!13137 lt!2127879 (tail!10146 lt!2127874)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3587 (List!60189 List!60189) Unit!151666)

(assert (=> d!1668482 (= lt!2128080 (lemmaConcatTwoListThenFirstIsPrefix!3587 lt!2127879 (tail!10146 lt!2127874)))))

(assert (=> d!1668482 (= (++!13137 lt!2127879 (tail!10146 lt!2127874)) input!5817)))

(assert (=> d!1668482 (= (findLongestMatchInnerZipper!271 lt!2127871 lt!2127879 (+ 1 lt!2127880) (tail!10146 lt!2127874) input!5817 lt!2127870) lt!2128079)))

(declare-fun b!5170379 () Bool)

(declare-fun Unit!151678 () Unit!151666)

(assert (=> b!5170379 (= e!3221619 Unit!151678)))

(declare-fun b!5170380 () Bool)

(assert (=> b!5170380 (= e!3221617 e!3221614)))

(declare-fun c!889945 () Bool)

(assert (=> b!5170380 (= c!889945 (= (+ 1 lt!2127880) lt!2127870))))

(declare-fun b!5170381 () Bool)

(declare-fun e!3221615 () tuple2!63780)

(assert (=> b!5170381 (= e!3221618 e!3221615)))

(declare-fun lt!2128097 () tuple2!63780)

(declare-fun call!362925 () tuple2!63780)

(assert (=> b!5170381 (= lt!2128097 call!362925)))

(declare-fun c!889948 () Bool)

(assert (=> b!5170381 (= c!889948 (isEmpty!32159 (_1!35193 lt!2128097)))))

(declare-fun b!5170382 () Bool)

(declare-fun c!889946 () Bool)

(assert (=> b!5170382 (= c!889946 call!362929)))

(declare-fun lt!2128087 () Unit!151666)

(declare-fun lt!2128086 () Unit!151666)

(assert (=> b!5170382 (= lt!2128087 lt!2128086)))

(assert (=> b!5170382 (= input!5817 lt!2127879)))

(assert (=> b!5170382 (= lt!2128086 call!362931)))

(declare-fun lt!2128076 () Unit!151666)

(declare-fun lt!2128088 () Unit!151666)

(assert (=> b!5170382 (= lt!2128076 lt!2128088)))

(assert (=> b!5170382 call!362930))

(assert (=> b!5170382 (= lt!2128088 call!362924)))

(assert (=> b!5170382 (= e!3221614 e!3221616)))

(declare-fun b!5170383 () Bool)

(assert (=> b!5170383 (= e!3221618 call!362925)))

(declare-fun bm!362922 () Bool)

(declare-fun call!362926 () (InoxSet Context!7994))

(assert (=> bm!362922 (= call!362926 (derivationStepZipper!967 lt!2127871 call!362928))))

(declare-fun bm!362923 () Bool)

(assert (=> bm!362923 (= call!362925 (findLongestMatchInnerZipper!271 call!362926 lt!2128082 (+ 1 lt!2127880 1) call!362927 input!5817 lt!2127870))))

(declare-fun b!5170384 () Bool)

(assert (=> b!5170384 (= e!3221615 lt!2128097)))

(declare-fun b!5170385 () Bool)

(declare-fun e!3221621 () Bool)

(assert (=> b!5170385 (= e!3221620 e!3221621)))

(declare-fun res!2197612 () Bool)

(assert (=> b!5170385 (=> res!2197612 e!3221621)))

(assert (=> b!5170385 (= res!2197612 (isEmpty!32159 (_1!35193 lt!2128079)))))

(declare-fun b!5170386 () Bool)

(assert (=> b!5170386 (= e!3221615 (tuple2!63781 lt!2127879 (tail!10146 lt!2127874)))))

(declare-fun bm!362924 () Bool)

(assert (=> bm!362924 (= call!362924 (lemmaIsPrefixRefl!3753 input!5817 input!5817))))

(declare-fun bm!362925 () Bool)

(assert (=> bm!362925 (= call!362931 (lemmaIsPrefixSameLengthThenSameList!1395 input!5817 lt!2127879 input!5817))))

(declare-fun b!5170387 () Bool)

(assert (=> b!5170387 (= e!3221617 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun bm!362926 () Bool)

(assert (=> bm!362926 (= call!362930 (isPrefix!5746 input!5817 input!5817))))

(declare-fun b!5170388 () Bool)

(assert (=> b!5170388 (= e!3221621 (>= (size!39649 (_1!35193 lt!2128079)) (size!39649 lt!2127879)))))

(declare-fun b!5170389 () Bool)

(assert (=> b!5170389 (= e!3221616 (tuple2!63781 lt!2127879 Nil!60065))))

(assert (= (and d!1668482 c!889943) b!5170387))

(assert (= (and d!1668482 (not c!889943)) b!5170380))

(assert (= (and b!5170380 c!889945) b!5170382))

(assert (= (and b!5170380 (not c!889945)) b!5170377))

(assert (= (and b!5170382 c!889946) b!5170389))

(assert (= (and b!5170382 (not c!889946)) b!5170376))

(assert (= (and b!5170377 c!889947) b!5170378))

(assert (= (and b!5170377 (not c!889947)) b!5170379))

(assert (= (and b!5170377 c!889944) b!5170381))

(assert (= (and b!5170377 (not c!889944)) b!5170383))

(assert (= (and b!5170381 c!889948) b!5170386))

(assert (= (and b!5170381 (not c!889948)) b!5170384))

(assert (= (or b!5170381 b!5170383) bm!362921))

(assert (= (or b!5170381 b!5170383) bm!362919))

(assert (= (or b!5170381 b!5170383) bm!362922))

(assert (= (or b!5170381 b!5170383) bm!362923))

(assert (= (or b!5170382 b!5170378) bm!362924))

(assert (= (or b!5170382 b!5170377) bm!362920))

(assert (= (or b!5170382 b!5170378) bm!362926))

(assert (= (or b!5170382 b!5170378) bm!362925))

(assert (= (and d!1668482 res!2197611) b!5170385))

(assert (= (and b!5170385 (not res!2197612)) b!5170388))

(assert (=> bm!362926 m!6222348))

(declare-fun m!6222562 () Bool)

(assert (=> bm!362923 m!6222562))

(assert (=> bm!362919 m!6222320))

(declare-fun m!6222564 () Bool)

(assert (=> bm!362919 m!6222564))

(assert (=> bm!362924 m!6222346))

(declare-fun m!6222566 () Bool)

(assert (=> b!5170381 m!6222566))

(declare-fun m!6222568 () Bool)

(assert (=> d!1668482 m!6222568))

(declare-fun m!6222570 () Bool)

(assert (=> d!1668482 m!6222570))

(declare-fun m!6222572 () Bool)

(assert (=> d!1668482 m!6222572))

(assert (=> d!1668482 m!6222320))

(declare-fun m!6222574 () Bool)

(assert (=> d!1668482 m!6222574))

(assert (=> d!1668482 m!6222320))

(declare-fun m!6222576 () Bool)

(assert (=> d!1668482 m!6222576))

(assert (=> d!1668482 m!6222320))

(declare-fun m!6222578 () Bool)

(assert (=> d!1668482 m!6222578))

(assert (=> d!1668482 m!6222576))

(declare-fun m!6222580 () Bool)

(assert (=> d!1668482 m!6222580))

(declare-fun m!6222582 () Bool)

(assert (=> b!5170388 m!6222582))

(assert (=> b!5170388 m!6222372))

(declare-fun m!6222584 () Bool)

(assert (=> b!5170385 m!6222584))

(declare-fun m!6222586 () Bool)

(assert (=> bm!362922 m!6222586))

(declare-fun m!6222588 () Bool)

(assert (=> b!5170377 m!6222588))

(assert (=> b!5170377 m!6222572))

(declare-fun m!6222590 () Bool)

(assert (=> b!5170377 m!6222590))

(assert (=> b!5170377 m!6222572))

(assert (=> b!5170377 m!6222336))

(assert (=> b!5170377 m!6222320))

(assert (=> b!5170377 m!6222564))

(declare-fun m!6222592 () Bool)

(assert (=> b!5170377 m!6222592))

(declare-fun m!6222594 () Bool)

(assert (=> b!5170377 m!6222594))

(declare-fun m!6222596 () Bool)

(assert (=> b!5170377 m!6222596))

(declare-fun m!6222598 () Bool)

(assert (=> b!5170377 m!6222598))

(assert (=> b!5170377 m!6222320))

(declare-fun m!6222600 () Bool)

(assert (=> b!5170377 m!6222600))

(assert (=> b!5170377 m!6222592))

(assert (=> b!5170377 m!6222372))

(assert (=> b!5170377 m!6222596))

(declare-fun m!6222602 () Bool)

(assert (=> b!5170377 m!6222602))

(declare-fun m!6222604 () Bool)

(assert (=> b!5170377 m!6222604))

(declare-fun m!6222606 () Bool)

(assert (=> b!5170377 m!6222606))

(assert (=> bm!362921 m!6222320))

(assert (=> bm!362921 m!6222600))

(declare-fun m!6222608 () Bool)

(assert (=> bm!362920 m!6222608))

(declare-fun m!6222610 () Bool)

(assert (=> bm!362925 m!6222610))

(assert (=> b!5170191 d!1668482))

(declare-fun d!1668502 () Bool)

(assert (=> d!1668502 (= (tail!10146 lt!2127874) (t!373342 lt!2127874))))

(assert (=> b!5170191 d!1668502))

(declare-fun d!1668504 () Bool)

(assert (=> d!1668504 true))

(declare-fun lambda!258122 () Int)

(declare-fun flatMap!444 ((InoxSet Context!7994) Int) (InoxSet Context!7994))

(assert (=> d!1668504 (= (derivationStepZipper!967 z!4581 lt!2127877) (flatMap!444 z!4581 lambda!258122))))

(declare-fun bs!1203445 () Bool)

(assert (= bs!1203445 d!1668504))

(declare-fun m!6222612 () Bool)

(assert (=> bs!1203445 m!6222612))

(assert (=> b!5170191 d!1668504))

(declare-fun d!1668506 () Bool)

(assert (=> d!1668506 (<= (size!39649 testedP!294) (size!39649 input!5817))))

(declare-fun lt!2128104 () Unit!151666)

(declare-fun choose!38301 (List!60189 List!60189) Unit!151666)

(assert (=> d!1668506 (= lt!2128104 (choose!38301 testedP!294 input!5817))))

(assert (=> d!1668506 (isPrefix!5746 testedP!294 input!5817)))

(assert (=> d!1668506 (= (lemmaIsPrefixThenSmallerEqSize!909 testedP!294 input!5817) lt!2128104)))

(declare-fun bs!1203446 () Bool)

(assert (= bs!1203446 d!1668506))

(assert (=> bs!1203446 m!6222330))

(assert (=> bs!1203446 m!6222336))

(declare-fun m!6222614 () Bool)

(assert (=> bs!1203446 m!6222614))

(assert (=> bs!1203446 m!6222344))

(assert (=> b!5170187 d!1668506))

(declare-fun b!5170392 () Bool)

(declare-fun e!3221624 () Bool)

(declare-fun e!3221622 () Bool)

(assert (=> b!5170392 (= e!3221624 e!3221622)))

(declare-fun res!2197616 () Bool)

(assert (=> b!5170392 (=> (not res!2197616) (not e!3221622))))

(assert (=> b!5170392 (= res!2197616 (not ((_ is Nil!60065) input!5817)))))

(declare-fun b!5170393 () Bool)

(declare-fun res!2197614 () Bool)

(assert (=> b!5170393 (=> (not res!2197614) (not e!3221622))))

(assert (=> b!5170393 (= res!2197614 (= (head!11037 testedP!294) (head!11037 input!5817)))))

(declare-fun d!1668508 () Bool)

(declare-fun e!3221623 () Bool)

(assert (=> d!1668508 e!3221623))

(declare-fun res!2197615 () Bool)

(assert (=> d!1668508 (=> res!2197615 e!3221623)))

(declare-fun lt!2128105 () Bool)

(assert (=> d!1668508 (= res!2197615 (not lt!2128105))))

(assert (=> d!1668508 (= lt!2128105 e!3221624)))

(declare-fun res!2197613 () Bool)

(assert (=> d!1668508 (=> res!2197613 e!3221624)))

(assert (=> d!1668508 (= res!2197613 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668508 (= (isPrefix!5746 testedP!294 input!5817) lt!2128105)))

(declare-fun b!5170395 () Bool)

(assert (=> b!5170395 (= e!3221623 (>= (size!39649 input!5817) (size!39649 testedP!294)))))

(declare-fun b!5170394 () Bool)

(assert (=> b!5170394 (= e!3221622 (isPrefix!5746 (tail!10146 testedP!294) (tail!10146 input!5817)))))

(assert (= (and d!1668508 (not res!2197613)) b!5170392))

(assert (= (and b!5170392 res!2197616) b!5170393))

(assert (= (and b!5170393 res!2197614) b!5170394))

(assert (= (and d!1668508 (not res!2197615)) b!5170395))

(declare-fun m!6222616 () Bool)

(assert (=> b!5170393 m!6222616))

(assert (=> b!5170393 m!6222370))

(assert (=> b!5170395 m!6222336))

(assert (=> b!5170395 m!6222330))

(declare-fun m!6222618 () Bool)

(assert (=> b!5170394 m!6222618))

(assert (=> b!5170394 m!6222376))

(assert (=> b!5170394 m!6222618))

(assert (=> b!5170394 m!6222376))

(declare-fun m!6222620 () Bool)

(assert (=> b!5170394 m!6222620))

(assert (=> start!547208 d!1668508))

(declare-fun d!1668510 () Bool)

(declare-fun c!889953 () Bool)

(assert (=> d!1668510 (= c!889953 ((_ is Cons!60065) lt!2127879))))

(declare-fun e!3221627 () (InoxSet Context!7994))

(assert (=> d!1668510 (= (derivationZipper!236 baseZ!62 lt!2127879) e!3221627)))

(declare-fun b!5170400 () Bool)

(assert (=> b!5170400 (= e!3221627 (derivationZipper!236 (derivationStepZipper!967 baseZ!62 (h!66513 lt!2127879)) (t!373342 lt!2127879)))))

(declare-fun b!5170401 () Bool)

(assert (=> b!5170401 (= e!3221627 baseZ!62)))

(assert (= (and d!1668510 c!889953) b!5170400))

(assert (= (and d!1668510 (not c!889953)) b!5170401))

(declare-fun m!6222622 () Bool)

(assert (=> b!5170400 m!6222622))

(assert (=> b!5170400 m!6222622))

(declare-fun m!6222624 () Bool)

(assert (=> b!5170400 m!6222624))

(assert (=> b!5170183 d!1668510))

(declare-fun d!1668512 () Bool)

(assert (=> d!1668512 (= (derivationZipper!236 baseZ!62 (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065))) (derivationStepZipper!967 z!4581 lt!2127877))))

(declare-fun lt!2128108 () Unit!151666)

(declare-fun choose!38302 ((InoxSet Context!7994) (InoxSet Context!7994) List!60189 C!29496) Unit!151666)

(assert (=> d!1668512 (= lt!2128108 (choose!38302 baseZ!62 z!4581 testedP!294 lt!2127877))))

(assert (=> d!1668512 (= (derivationZipper!236 baseZ!62 testedP!294) z!4581)))

(assert (=> d!1668512 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!87 baseZ!62 z!4581 testedP!294 lt!2127877) lt!2128108)))

(declare-fun bs!1203447 () Bool)

(assert (= bs!1203447 d!1668512))

(assert (=> bs!1203447 m!6222340))

(declare-fun m!6222626 () Bool)

(assert (=> bs!1203447 m!6222626))

(assert (=> bs!1203447 m!6222354))

(assert (=> bs!1203447 m!6222326))

(assert (=> bs!1203447 m!6222354))

(declare-fun m!6222628 () Bool)

(assert (=> bs!1203447 m!6222628))

(assert (=> b!5170183 d!1668512))

(declare-fun d!1668514 () Bool)

(declare-fun c!889955 () Bool)

(assert (=> d!1668514 (= c!889955 ((_ is Cons!60065) testedP!294))))

(declare-fun e!3221628 () (InoxSet Context!7994))

(assert (=> d!1668514 (= (derivationZipper!236 baseZ!62 testedP!294) e!3221628)))

(declare-fun b!5170402 () Bool)

(assert (=> b!5170402 (= e!3221628 (derivationZipper!236 (derivationStepZipper!967 baseZ!62 (h!66513 testedP!294)) (t!373342 testedP!294)))))

(declare-fun b!5170403 () Bool)

(assert (=> b!5170403 (= e!3221628 baseZ!62)))

(assert (= (and d!1668514 c!889955) b!5170402))

(assert (= (and d!1668514 (not c!889955)) b!5170403))

(declare-fun m!6222630 () Bool)

(assert (=> b!5170402 m!6222630))

(assert (=> b!5170402 m!6222630))

(declare-fun m!6222632 () Bool)

(assert (=> b!5170402 m!6222632))

(assert (=> b!5170192 d!1668514))

(declare-fun d!1668516 () Bool)

(declare-fun lt!2128111 () Int)

(assert (=> d!1668516 (>= lt!2128111 0)))

(declare-fun e!3221631 () Int)

(assert (=> d!1668516 (= lt!2128111 e!3221631)))

(declare-fun c!889958 () Bool)

(assert (=> d!1668516 (= c!889958 ((_ is Nil!60065) input!5817))))

(assert (=> d!1668516 (= (size!39649 input!5817) lt!2128111)))

(declare-fun b!5170408 () Bool)

(assert (=> b!5170408 (= e!3221631 0)))

(declare-fun b!5170409 () Bool)

(assert (=> b!5170409 (= e!3221631 (+ 1 (size!39649 (t!373342 input!5817))))))

(assert (= (and d!1668516 c!889958) b!5170408))

(assert (= (and d!1668516 (not c!889958)) b!5170409))

(declare-fun m!6222634 () Bool)

(assert (=> b!5170409 m!6222634))

(assert (=> b!5170181 d!1668516))

(declare-fun bm!362927 () Bool)

(declare-fun call!362936 () C!29496)

(assert (=> bm!362927 (= call!362936 (head!11037 lt!2127874))))

(declare-fun bm!362928 () Bool)

(declare-fun call!362937 () Bool)

(assert (=> bm!362928 (= call!362937 (nullableZipper!1159 z!4581))))

(declare-fun b!5170410 () Bool)

(declare-fun e!3221634 () tuple2!63780)

(assert (=> b!5170410 (= e!3221634 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun b!5170411 () Bool)

(declare-fun c!889960 () Bool)

(assert (=> b!5170411 (= c!889960 call!362937)))

(declare-fun lt!2128120 () Unit!151666)

(declare-fun lt!2128131 () Unit!151666)

(assert (=> b!5170411 (= lt!2128120 lt!2128131)))

(declare-fun lt!2128129 () List!60189)

(declare-fun lt!2128125 () C!29496)

(assert (=> b!5170411 (= (++!13137 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065)) lt!2128129) input!5817)))

(assert (=> b!5170411 (= lt!2128131 (lemmaMoveElementToOtherListKeepsConcatEq!1574 testedP!294 lt!2128125 lt!2128129 input!5817))))

(assert (=> b!5170411 (= lt!2128129 (tail!10146 lt!2127874))))

(assert (=> b!5170411 (= lt!2128125 (head!11037 lt!2127874))))

(declare-fun lt!2128121 () Unit!151666)

(declare-fun lt!2128127 () Unit!151666)

(assert (=> b!5170411 (= lt!2128121 lt!2128127)))

(assert (=> b!5170411 (isPrefix!5746 (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)) input!5817)))

(assert (=> b!5170411 (= lt!2128127 (lemmaAddHeadSuffixToPrefixStillPrefix!1059 testedP!294 input!5817))))

(declare-fun lt!2128118 () List!60189)

(assert (=> b!5170411 (= lt!2128118 (++!13137 testedP!294 (Cons!60065 (head!11037 lt!2127874) Nil!60065)))))

(declare-fun lt!2128134 () Unit!151666)

(declare-fun e!3221637 () Unit!151666)

(assert (=> b!5170411 (= lt!2128134 e!3221637)))

(declare-fun c!889963 () Bool)

(assert (=> b!5170411 (= c!889963 (= (size!39649 testedP!294) (size!39649 input!5817)))))

(declare-fun lt!2128114 () Unit!151666)

(declare-fun lt!2128136 () Unit!151666)

(assert (=> b!5170411 (= lt!2128114 lt!2128136)))

(assert (=> b!5170411 (<= (size!39649 testedP!294) (size!39649 input!5817))))

(assert (=> b!5170411 (= lt!2128136 (lemmaIsPrefixThenSmallerEqSize!909 testedP!294 input!5817))))

(declare-fun e!3221632 () tuple2!63780)

(declare-fun e!3221636 () tuple2!63780)

(assert (=> b!5170411 (= e!3221632 e!3221636)))

(declare-fun b!5170412 () Bool)

(declare-fun Unit!151679 () Unit!151666)

(assert (=> b!5170412 (= e!3221637 Unit!151679)))

(declare-fun lt!2128132 () Unit!151666)

(declare-fun call!362932 () Unit!151666)

(assert (=> b!5170412 (= lt!2128132 call!362932)))

(declare-fun call!362938 () Bool)

(assert (=> b!5170412 call!362938))

(declare-fun lt!2128137 () Unit!151666)

(assert (=> b!5170412 (= lt!2128137 lt!2128132)))

(declare-fun lt!2128130 () Unit!151666)

(declare-fun call!362939 () Unit!151666)

(assert (=> b!5170412 (= lt!2128130 call!362939)))

(assert (=> b!5170412 (= input!5817 testedP!294)))

(declare-fun lt!2128119 () Unit!151666)

(assert (=> b!5170412 (= lt!2128119 lt!2128130)))

(assert (=> b!5170412 false))

(declare-fun bm!362929 () Bool)

(declare-fun call!362935 () List!60189)

(assert (=> bm!362929 (= call!362935 (tail!10146 lt!2127874))))

(declare-fun d!1668518 () Bool)

(declare-fun e!3221638 () Bool)

(assert (=> d!1668518 e!3221638))

(declare-fun res!2197617 () Bool)

(assert (=> d!1668518 (=> (not res!2197617) (not e!3221638))))

(declare-fun lt!2128115 () tuple2!63780)

(assert (=> d!1668518 (= res!2197617 (= (++!13137 (_1!35193 lt!2128115) (_2!35193 lt!2128115)) input!5817))))

(declare-fun e!3221635 () tuple2!63780)

(assert (=> d!1668518 (= lt!2128115 e!3221635)))

(declare-fun c!889959 () Bool)

(assert (=> d!1668518 (= c!889959 (lostCauseZipper!1326 z!4581))))

(declare-fun lt!2128113 () Unit!151666)

(declare-fun Unit!151680 () Unit!151666)

(assert (=> d!1668518 (= lt!2128113 Unit!151680)))

(assert (=> d!1668518 (= (getSuffix!3396 input!5817 testedP!294) lt!2127874)))

(declare-fun lt!2128117 () Unit!151666)

(declare-fun lt!2128128 () Unit!151666)

(assert (=> d!1668518 (= lt!2128117 lt!2128128)))

(declare-fun lt!2128126 () List!60189)

(assert (=> d!1668518 (= lt!2127874 lt!2128126)))

(assert (=> d!1668518 (= lt!2128128 (lemmaSamePrefixThenSameSuffix!2693 testedP!294 lt!2127874 testedP!294 lt!2128126 input!5817))))

(assert (=> d!1668518 (= lt!2128126 (getSuffix!3396 input!5817 testedP!294))))

(declare-fun lt!2128135 () Unit!151666)

(declare-fun lt!2128116 () Unit!151666)

(assert (=> d!1668518 (= lt!2128135 lt!2128116)))

(assert (=> d!1668518 (isPrefix!5746 testedP!294 (++!13137 testedP!294 lt!2127874))))

(assert (=> d!1668518 (= lt!2128116 (lemmaConcatTwoListThenFirstIsPrefix!3587 testedP!294 lt!2127874))))

(assert (=> d!1668518 (= (++!13137 testedP!294 lt!2127874) input!5817)))

(assert (=> d!1668518 (= (findLongestMatchInnerZipper!271 z!4581 testedP!294 lt!2127880 lt!2127874 input!5817 lt!2127870) lt!2128115)))

(declare-fun b!5170413 () Bool)

(declare-fun Unit!151681 () Unit!151666)

(assert (=> b!5170413 (= e!3221637 Unit!151681)))

(declare-fun b!5170414 () Bool)

(assert (=> b!5170414 (= e!3221635 e!3221632)))

(declare-fun c!889961 () Bool)

(assert (=> b!5170414 (= c!889961 (= lt!2127880 lt!2127870))))

(declare-fun b!5170415 () Bool)

(declare-fun e!3221633 () tuple2!63780)

(assert (=> b!5170415 (= e!3221636 e!3221633)))

(declare-fun lt!2128133 () tuple2!63780)

(declare-fun call!362933 () tuple2!63780)

(assert (=> b!5170415 (= lt!2128133 call!362933)))

(declare-fun c!889964 () Bool)

(assert (=> b!5170415 (= c!889964 (isEmpty!32159 (_1!35193 lt!2128133)))))

(declare-fun b!5170416 () Bool)

(declare-fun c!889962 () Bool)

(assert (=> b!5170416 (= c!889962 call!362937)))

(declare-fun lt!2128123 () Unit!151666)

(declare-fun lt!2128122 () Unit!151666)

(assert (=> b!5170416 (= lt!2128123 lt!2128122)))

(assert (=> b!5170416 (= input!5817 testedP!294)))

(assert (=> b!5170416 (= lt!2128122 call!362939)))

(declare-fun lt!2128112 () Unit!151666)

(declare-fun lt!2128124 () Unit!151666)

(assert (=> b!5170416 (= lt!2128112 lt!2128124)))

(assert (=> b!5170416 call!362938))

(assert (=> b!5170416 (= lt!2128124 call!362932)))

(assert (=> b!5170416 (= e!3221632 e!3221634)))

(declare-fun b!5170417 () Bool)

(assert (=> b!5170417 (= e!3221636 call!362933)))

(declare-fun bm!362930 () Bool)

(declare-fun call!362934 () (InoxSet Context!7994))

(assert (=> bm!362930 (= call!362934 (derivationStepZipper!967 z!4581 call!362936))))

(declare-fun bm!362931 () Bool)

(assert (=> bm!362931 (= call!362933 (findLongestMatchInnerZipper!271 call!362934 lt!2128118 (+ lt!2127880 1) call!362935 input!5817 lt!2127870))))

(declare-fun b!5170418 () Bool)

(assert (=> b!5170418 (= e!3221633 lt!2128133)))

(declare-fun b!5170419 () Bool)

(declare-fun e!3221639 () Bool)

(assert (=> b!5170419 (= e!3221638 e!3221639)))

(declare-fun res!2197618 () Bool)

(assert (=> b!5170419 (=> res!2197618 e!3221639)))

(assert (=> b!5170419 (= res!2197618 (isEmpty!32159 (_1!35193 lt!2128115)))))

(declare-fun b!5170420 () Bool)

(assert (=> b!5170420 (= e!3221633 (tuple2!63781 testedP!294 lt!2127874))))

(declare-fun bm!362932 () Bool)

(assert (=> bm!362932 (= call!362932 (lemmaIsPrefixRefl!3753 input!5817 input!5817))))

(declare-fun bm!362933 () Bool)

(assert (=> bm!362933 (= call!362939 (lemmaIsPrefixSameLengthThenSameList!1395 input!5817 testedP!294 input!5817))))

(declare-fun b!5170421 () Bool)

(assert (=> b!5170421 (= e!3221635 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun bm!362934 () Bool)

(assert (=> bm!362934 (= call!362938 (isPrefix!5746 input!5817 input!5817))))

(declare-fun b!5170422 () Bool)

(assert (=> b!5170422 (= e!3221639 (>= (size!39649 (_1!35193 lt!2128115)) (size!39649 testedP!294)))))

(declare-fun b!5170423 () Bool)

(assert (=> b!5170423 (= e!3221634 (tuple2!63781 testedP!294 Nil!60065))))

(assert (= (and d!1668518 c!889959) b!5170421))

(assert (= (and d!1668518 (not c!889959)) b!5170414))

(assert (= (and b!5170414 c!889961) b!5170416))

(assert (= (and b!5170414 (not c!889961)) b!5170411))

(assert (= (and b!5170416 c!889962) b!5170423))

(assert (= (and b!5170416 (not c!889962)) b!5170410))

(assert (= (and b!5170411 c!889963) b!5170412))

(assert (= (and b!5170411 (not c!889963)) b!5170413))

(assert (= (and b!5170411 c!889960) b!5170415))

(assert (= (and b!5170411 (not c!889960)) b!5170417))

(assert (= (and b!5170415 c!889964) b!5170420))

(assert (= (and b!5170415 (not c!889964)) b!5170418))

(assert (= (or b!5170415 b!5170417) bm!362929))

(assert (= (or b!5170415 b!5170417) bm!362927))

(assert (= (or b!5170415 b!5170417) bm!362930))

(assert (= (or b!5170415 b!5170417) bm!362931))

(assert (= (or b!5170416 b!5170412) bm!362932))

(assert (= (or b!5170416 b!5170411) bm!362928))

(assert (= (or b!5170416 b!5170412) bm!362934))

(assert (= (or b!5170416 b!5170412) bm!362933))

(assert (= (and d!1668518 res!2197617) b!5170419))

(assert (= (and b!5170419 (not res!2197618)) b!5170422))

(assert (=> bm!362934 m!6222348))

(declare-fun m!6222636 () Bool)

(assert (=> bm!362931 m!6222636))

(assert (=> bm!362927 m!6222358))

(assert (=> bm!362932 m!6222346))

(declare-fun m!6222638 () Bool)

(assert (=> b!5170415 m!6222638))

(declare-fun m!6222640 () Bool)

(assert (=> d!1668518 m!6222640))

(declare-fun m!6222642 () Bool)

(assert (=> d!1668518 m!6222642))

(assert (=> d!1668518 m!6222334))

(declare-fun m!6222644 () Bool)

(assert (=> d!1668518 m!6222644))

(declare-fun m!6222646 () Bool)

(assert (=> d!1668518 m!6222646))

(declare-fun m!6222648 () Bool)

(assert (=> d!1668518 m!6222648))

(assert (=> d!1668518 m!6222646))

(declare-fun m!6222650 () Bool)

(assert (=> d!1668518 m!6222650))

(declare-fun m!6222652 () Bool)

(assert (=> b!5170422 m!6222652))

(assert (=> b!5170422 m!6222330))

(declare-fun m!6222654 () Bool)

(assert (=> b!5170419 m!6222654))

(declare-fun m!6222656 () Bool)

(assert (=> bm!362930 m!6222656))

(declare-fun m!6222658 () Bool)

(assert (=> b!5170411 m!6222658))

(assert (=> b!5170411 m!6222334))

(assert (=> b!5170411 m!6222392))

(assert (=> b!5170411 m!6222334))

(assert (=> b!5170411 m!6222336))

(assert (=> b!5170411 m!6222358))

(declare-fun m!6222660 () Bool)

(assert (=> b!5170411 m!6222660))

(declare-fun m!6222662 () Bool)

(assert (=> b!5170411 m!6222662))

(assert (=> b!5170411 m!6222396))

(assert (=> b!5170411 m!6222360))

(assert (=> b!5170411 m!6222320))

(assert (=> b!5170411 m!6222660))

(assert (=> b!5170411 m!6222330))

(assert (=> b!5170411 m!6222396))

(assert (=> b!5170411 m!6222398))

(declare-fun m!6222664 () Bool)

(assert (=> b!5170411 m!6222664))

(assert (=> b!5170411 m!6222328))

(assert (=> bm!362929 m!6222320))

(assert (=> bm!362928 m!6222356))

(assert (=> bm!362933 m!6222350))

(assert (=> b!5170181 d!1668518))

(declare-fun d!1668520 () Bool)

(assert (=> d!1668520 (= (isEmpty!32159 (_1!35193 (findLongestMatchInnerZipper!271 z!4581 testedP!294 lt!2127880 lt!2127874 input!5817 lt!2127870))) ((_ is Nil!60065) (_1!35193 (findLongestMatchInnerZipper!271 z!4581 testedP!294 lt!2127880 lt!2127874 input!5817 lt!2127870))))))

(assert (=> b!5170181 d!1668520))

(declare-fun d!1668522 () Bool)

(declare-fun lt!2128140 () List!60189)

(assert (=> d!1668522 (= (++!13137 testedP!294 lt!2128140) input!5817)))

(declare-fun e!3221642 () List!60189)

(assert (=> d!1668522 (= lt!2128140 e!3221642)))

(declare-fun c!889967 () Bool)

(assert (=> d!1668522 (= c!889967 ((_ is Cons!60065) testedP!294))))

(assert (=> d!1668522 (>= (size!39649 input!5817) (size!39649 testedP!294))))

(assert (=> d!1668522 (= (getSuffix!3396 input!5817 testedP!294) lt!2128140)))

(declare-fun b!5170428 () Bool)

(assert (=> b!5170428 (= e!3221642 (getSuffix!3396 (tail!10146 input!5817) (t!373342 testedP!294)))))

(declare-fun b!5170429 () Bool)

(assert (=> b!5170429 (= e!3221642 input!5817)))

(assert (= (and d!1668522 c!889967) b!5170428))

(assert (= (and d!1668522 (not c!889967)) b!5170429))

(declare-fun m!6222666 () Bool)

(assert (=> d!1668522 m!6222666))

(assert (=> d!1668522 m!6222336))

(assert (=> d!1668522 m!6222330))

(assert (=> b!5170428 m!6222376))

(assert (=> b!5170428 m!6222376))

(declare-fun m!6222668 () Bool)

(assert (=> b!5170428 m!6222668))

(assert (=> b!5170181 d!1668522))

(declare-fun d!1668524 () Bool)

(declare-fun lt!2128141 () Int)

(assert (=> d!1668524 (>= lt!2128141 0)))

(declare-fun e!3221643 () Int)

(assert (=> d!1668524 (= lt!2128141 e!3221643)))

(declare-fun c!889968 () Bool)

(assert (=> d!1668524 (= c!889968 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668524 (= (size!39649 testedP!294) lt!2128141)))

(declare-fun b!5170430 () Bool)

(assert (=> b!5170430 (= e!3221643 0)))

(declare-fun b!5170431 () Bool)

(assert (=> b!5170431 (= e!3221643 (+ 1 (size!39649 (t!373342 testedP!294))))))

(assert (= (and d!1668524 c!889968) b!5170430))

(assert (= (and d!1668524 (not c!889968)) b!5170431))

(declare-fun m!6222670 () Bool)

(assert (=> b!5170431 m!6222670))

(assert (=> b!5170181 d!1668524))

(declare-fun bs!1203448 () Bool)

(declare-fun d!1668526 () Bool)

(assert (= bs!1203448 (and d!1668526 d!1668474)))

(declare-fun lambda!258123 () Int)

(assert (=> bs!1203448 (= lambda!258123 lambda!258112)))

(assert (=> d!1668526 (= (inv!79779 setElem!31960) (forall!14129 (exprs!4497 setElem!31960) lambda!258123))))

(declare-fun bs!1203449 () Bool)

(assert (= bs!1203449 d!1668526))

(declare-fun m!6222672 () Bool)

(assert (=> bs!1203449 m!6222672))

(assert (=> setNonEmpty!31959 d!1668526))

(declare-fun d!1668528 () Bool)

(assert (=> d!1668528 (isPrefix!5746 input!5817 input!5817)))

(declare-fun lt!2128144 () Unit!151666)

(declare-fun choose!38303 (List!60189 List!60189) Unit!151666)

(assert (=> d!1668528 (= lt!2128144 (choose!38303 input!5817 input!5817))))

(assert (=> d!1668528 (= (lemmaIsPrefixRefl!3753 input!5817 input!5817) lt!2128144)))

(declare-fun bs!1203450 () Bool)

(assert (= bs!1203450 d!1668528))

(assert (=> bs!1203450 m!6222348))

(declare-fun m!6222674 () Bool)

(assert (=> bs!1203450 m!6222674))

(assert (=> b!5170193 d!1668528))

(declare-fun b!5170432 () Bool)

(declare-fun e!3221646 () Bool)

(declare-fun e!3221644 () Bool)

(assert (=> b!5170432 (= e!3221646 e!3221644)))

(declare-fun res!2197622 () Bool)

(assert (=> b!5170432 (=> (not res!2197622) (not e!3221644))))

(assert (=> b!5170432 (= res!2197622 (not ((_ is Nil!60065) input!5817)))))

(declare-fun b!5170433 () Bool)

(declare-fun res!2197620 () Bool)

(assert (=> b!5170433 (=> (not res!2197620) (not e!3221644))))

(assert (=> b!5170433 (= res!2197620 (= (head!11037 input!5817) (head!11037 input!5817)))))

(declare-fun d!1668530 () Bool)

(declare-fun e!3221645 () Bool)

(assert (=> d!1668530 e!3221645))

(declare-fun res!2197621 () Bool)

(assert (=> d!1668530 (=> res!2197621 e!3221645)))

(declare-fun lt!2128145 () Bool)

(assert (=> d!1668530 (= res!2197621 (not lt!2128145))))

(assert (=> d!1668530 (= lt!2128145 e!3221646)))

(declare-fun res!2197619 () Bool)

(assert (=> d!1668530 (=> res!2197619 e!3221646)))

(assert (=> d!1668530 (= res!2197619 ((_ is Nil!60065) input!5817))))

(assert (=> d!1668530 (= (isPrefix!5746 input!5817 input!5817) lt!2128145)))

(declare-fun b!5170435 () Bool)

(assert (=> b!5170435 (= e!3221645 (>= (size!39649 input!5817) (size!39649 input!5817)))))

(declare-fun b!5170434 () Bool)

(assert (=> b!5170434 (= e!3221644 (isPrefix!5746 (tail!10146 input!5817) (tail!10146 input!5817)))))

(assert (= (and d!1668530 (not res!2197619)) b!5170432))

(assert (= (and b!5170432 res!2197622) b!5170433))

(assert (= (and b!5170433 res!2197620) b!5170434))

(assert (= (and d!1668530 (not res!2197621)) b!5170435))

(assert (=> b!5170433 m!6222370))

(assert (=> b!5170433 m!6222370))

(assert (=> b!5170435 m!6222336))

(assert (=> b!5170435 m!6222336))

(assert (=> b!5170434 m!6222376))

(assert (=> b!5170434 m!6222376))

(assert (=> b!5170434 m!6222376))

(assert (=> b!5170434 m!6222376))

(declare-fun m!6222676 () Bool)

(assert (=> b!5170434 m!6222676))

(assert (=> b!5170193 d!1668530))

(declare-fun d!1668532 () Bool)

(assert (=> d!1668532 (= input!5817 testedP!294)))

(declare-fun lt!2128148 () Unit!151666)

(declare-fun choose!38304 (List!60189 List!60189 List!60189) Unit!151666)

(assert (=> d!1668532 (= lt!2128148 (choose!38304 input!5817 testedP!294 input!5817))))

(assert (=> d!1668532 (isPrefix!5746 input!5817 input!5817)))

(assert (=> d!1668532 (= (lemmaIsPrefixSameLengthThenSameList!1395 input!5817 testedP!294 input!5817) lt!2128148)))

(declare-fun bs!1203451 () Bool)

(assert (= bs!1203451 d!1668532))

(declare-fun m!6222678 () Bool)

(assert (=> bs!1203451 m!6222678))

(assert (=> bs!1203451 m!6222348))

(assert (=> b!5170193 d!1668532))

(declare-fun condSetEmpty!31967 () Bool)

(assert (=> setNonEmpty!31960 (= condSetEmpty!31967 (= setRest!31960 ((as const (Array Context!7994 Bool)) false)))))

(declare-fun setRes!31967 () Bool)

(assert (=> setNonEmpty!31960 (= tp!1450476 setRes!31967)))

(declare-fun setIsEmpty!31967 () Bool)

(assert (=> setIsEmpty!31967 setRes!31967))

(declare-fun setNonEmpty!31967 () Bool)

(declare-fun setElem!31967 () Context!7994)

(declare-fun e!3221649 () Bool)

(declare-fun tp!1450504 () Bool)

(assert (=> setNonEmpty!31967 (= setRes!31967 (and tp!1450504 (inv!79779 setElem!31967) e!3221649))))

(declare-fun setRest!31967 () (InoxSet Context!7994))

(assert (=> setNonEmpty!31967 (= setRest!31960 ((_ map or) (store ((as const (Array Context!7994 Bool)) false) setElem!31967 true) setRest!31967))))

(declare-fun b!5170440 () Bool)

(declare-fun tp!1450505 () Bool)

(assert (=> b!5170440 (= e!3221649 tp!1450505)))

(assert (= (and setNonEmpty!31960 condSetEmpty!31967) setIsEmpty!31967))

(assert (= (and setNonEmpty!31960 (not condSetEmpty!31967)) setNonEmpty!31967))

(assert (= setNonEmpty!31967 b!5170440))

(declare-fun m!6222680 () Bool)

(assert (=> setNonEmpty!31967 m!6222680))

(declare-fun condSetEmpty!31968 () Bool)

(assert (=> setNonEmpty!31959 (= condSetEmpty!31968 (= setRest!31959 ((as const (Array Context!7994 Bool)) false)))))

(declare-fun setRes!31968 () Bool)

(assert (=> setNonEmpty!31959 (= tp!1450478 setRes!31968)))

(declare-fun setIsEmpty!31968 () Bool)

(assert (=> setIsEmpty!31968 setRes!31968))

(declare-fun e!3221650 () Bool)

(declare-fun tp!1450506 () Bool)

(declare-fun setNonEmpty!31968 () Bool)

(declare-fun setElem!31968 () Context!7994)

(assert (=> setNonEmpty!31968 (= setRes!31968 (and tp!1450506 (inv!79779 setElem!31968) e!3221650))))

(declare-fun setRest!31968 () (InoxSet Context!7994))

(assert (=> setNonEmpty!31968 (= setRest!31959 ((_ map or) (store ((as const (Array Context!7994 Bool)) false) setElem!31968 true) setRest!31968))))

(declare-fun b!5170441 () Bool)

(declare-fun tp!1450507 () Bool)

(assert (=> b!5170441 (= e!3221650 tp!1450507)))

(assert (= (and setNonEmpty!31959 condSetEmpty!31968) setIsEmpty!31968))

(assert (= (and setNonEmpty!31959 (not condSetEmpty!31968)) setNonEmpty!31968))

(assert (= setNonEmpty!31968 b!5170441))

(declare-fun m!6222682 () Bool)

(assert (=> setNonEmpty!31968 m!6222682))

(declare-fun b!5170446 () Bool)

(declare-fun e!3221653 () Bool)

(declare-fun tp!1450510 () Bool)

(assert (=> b!5170446 (= e!3221653 (and tp_is_empty!38479 tp!1450510))))

(assert (=> b!5170182 (= tp!1450477 e!3221653)))

(assert (= (and b!5170182 ((_ is Cons!60065) (t!373342 testedP!294))) b!5170446))

(declare-fun b!5170451 () Bool)

(declare-fun e!3221656 () Bool)

(declare-fun tp!1450515 () Bool)

(declare-fun tp!1450516 () Bool)

(assert (=> b!5170451 (= e!3221656 (and tp!1450515 tp!1450516))))

(assert (=> b!5170184 (= tp!1450474 e!3221656)))

(assert (= (and b!5170184 ((_ is Cons!60066) (exprs!4497 setElem!31959))) b!5170451))

(declare-fun b!5170452 () Bool)

(declare-fun e!3221657 () Bool)

(declare-fun tp!1450517 () Bool)

(declare-fun tp!1450518 () Bool)

(assert (=> b!5170452 (= e!3221657 (and tp!1450517 tp!1450518))))

(assert (=> b!5170190 (= tp!1450479 e!3221657)))

(assert (= (and b!5170190 ((_ is Cons!60066) (exprs!4497 setElem!31960))) b!5170452))

(declare-fun b!5170453 () Bool)

(declare-fun e!3221658 () Bool)

(declare-fun tp!1450519 () Bool)

(assert (=> b!5170453 (= e!3221658 (and tp_is_empty!38479 tp!1450519))))

(assert (=> b!5170185 (= tp!1450475 e!3221658)))

(assert (= (and b!5170185 ((_ is Cons!60065) (t!373342 input!5817))) b!5170453))

(check-sat (not b!5170411) (not b!5170422) (not b!5170446) (not setNonEmpty!31968) (not setNonEmpty!31967) (not b!5170388) (not bm!362919) (not bm!362928) (not b!5170451) (not b!5170203) (not d!1668446) (not bm!362930) (not bm!362927) (not b!5170393) (not bm!362932) (not b!5170215) (not bm!362933) (not d!1668448) (not b!5170400) (not b!5170377) tp_is_empty!38479 (not d!1668528) (not b!5170428) (not b!5170409) (not b!5170216) (not d!1668512) (not d!1668526) (not d!1668522) (not d!1668506) (not bm!362920) (not d!1668482) (not b!5170431) (not bm!362934) (not bm!362923) (not bm!362929) (not b!5170453) (not b!5170402) (not b!5170434) (not b!5170415) (not d!1668504) (not b!5170381) (not bm!362925) (not b!5170394) (not bm!362931) (not b!5170419) (not d!1668474) (not b!5170395) (not b!5170205) (not bm!362921) (not b!5170441) (not bm!362926) (not b!5170435) (not d!1668518) (not b!5170204) (not bm!362922) (not d!1668442) (not bm!362924) (not b!5170385) (not b!5170433) (not b!5170440) (not b!5170452) (not d!1668532))
(check-sat)
(get-model)

(declare-fun d!1668608 () Bool)

(assert (=> d!1668608 (= (isEmpty!32159 (_1!35193 lt!2128097)) ((_ is Nil!60065) (_1!35193 lt!2128097)))))

(assert (=> b!5170381 d!1668608))

(assert (=> bm!362928 d!1668448))

(declare-fun bs!1203475 () Bool)

(declare-fun d!1668610 () Bool)

(assert (= bs!1203475 (and d!1668610 d!1668474)))

(declare-fun lambda!258143 () Int)

(assert (=> bs!1203475 (= lambda!258143 lambda!258112)))

(declare-fun bs!1203476 () Bool)

(assert (= bs!1203476 (and d!1668610 d!1668526)))

(assert (=> bs!1203476 (= lambda!258143 lambda!258123)))

(assert (=> d!1668610 (= (inv!79779 setElem!31967) (forall!14129 (exprs!4497 setElem!31967) lambda!258143))))

(declare-fun bs!1203478 () Bool)

(assert (= bs!1203478 d!1668610))

(declare-fun m!6222898 () Bool)

(assert (=> bs!1203478 m!6222898))

(assert (=> setNonEmpty!31967 d!1668610))

(declare-fun d!1668614 () Bool)

(declare-fun res!2197663 () Bool)

(declare-fun e!3221721 () Bool)

(assert (=> d!1668614 (=> res!2197663 e!3221721)))

(assert (=> d!1668614 (= res!2197663 ((_ is Nil!60066) (exprs!4497 setElem!31960)))))

(assert (=> d!1668614 (= (forall!14129 (exprs!4497 setElem!31960) lambda!258123) e!3221721)))

(declare-fun b!5170552 () Bool)

(declare-fun e!3221722 () Bool)

(assert (=> b!5170552 (= e!3221721 e!3221722)))

(declare-fun res!2197664 () Bool)

(assert (=> b!5170552 (=> (not res!2197664) (not e!3221722))))

(declare-fun dynLambda!23869 (Int Regex!14613) Bool)

(assert (=> b!5170552 (= res!2197664 (dynLambda!23869 lambda!258123 (h!66514 (exprs!4497 setElem!31960))))))

(declare-fun b!5170553 () Bool)

(assert (=> b!5170553 (= e!3221722 (forall!14129 (t!373343 (exprs!4497 setElem!31960)) lambda!258123))))

(assert (= (and d!1668614 (not res!2197663)) b!5170552))

(assert (= (and b!5170552 res!2197664) b!5170553))

(declare-fun b_lambda!200867 () Bool)

(assert (=> (not b_lambda!200867) (not b!5170552)))

(declare-fun m!6222926 () Bool)

(assert (=> b!5170552 m!6222926))

(declare-fun m!6222928 () Bool)

(assert (=> b!5170553 m!6222928))

(assert (=> d!1668526 d!1668614))

(assert (=> b!5170411 d!1668516))

(assert (=> b!5170411 d!1668506))

(assert (=> b!5170411 d!1668522))

(declare-fun lt!2128226 () List!60189)

(declare-fun b!5170557 () Bool)

(declare-fun e!3221724 () Bool)

(assert (=> b!5170557 (= e!3221724 (or (not (= (Cons!60065 lt!2128125 Nil!60065) Nil!60065)) (= lt!2128226 testedP!294)))))

(declare-fun d!1668634 () Bool)

(assert (=> d!1668634 e!3221724))

(declare-fun res!2197666 () Bool)

(assert (=> d!1668634 (=> (not res!2197666) (not e!3221724))))

(assert (=> d!1668634 (= res!2197666 (= (content!10644 lt!2128226) ((_ map or) (content!10644 testedP!294) (content!10644 (Cons!60065 lt!2128125 Nil!60065)))))))

(declare-fun e!3221723 () List!60189)

(assert (=> d!1668634 (= lt!2128226 e!3221723)))

(declare-fun c!890007 () Bool)

(assert (=> d!1668634 (= c!890007 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668634 (= (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065)) lt!2128226)))

(declare-fun b!5170554 () Bool)

(assert (=> b!5170554 (= e!3221723 (Cons!60065 lt!2128125 Nil!60065))))

(declare-fun b!5170556 () Bool)

(declare-fun res!2197665 () Bool)

(assert (=> b!5170556 (=> (not res!2197665) (not e!3221724))))

(assert (=> b!5170556 (= res!2197665 (= (size!39649 lt!2128226) (+ (size!39649 testedP!294) (size!39649 (Cons!60065 lt!2128125 Nil!60065)))))))

(declare-fun b!5170555 () Bool)

(assert (=> b!5170555 (= e!3221723 (Cons!60065 (h!66513 testedP!294) (++!13137 (t!373342 testedP!294) (Cons!60065 lt!2128125 Nil!60065))))))

(assert (= (and d!1668634 c!890007) b!5170554))

(assert (= (and d!1668634 (not c!890007)) b!5170555))

(assert (= (and d!1668634 res!2197666) b!5170556))

(assert (= (and b!5170556 res!2197665) b!5170557))

(declare-fun m!6222930 () Bool)

(assert (=> d!1668634 m!6222930))

(assert (=> d!1668634 m!6222382))

(declare-fun m!6222932 () Bool)

(assert (=> d!1668634 m!6222932))

(declare-fun m!6222936 () Bool)

(assert (=> b!5170556 m!6222936))

(assert (=> b!5170556 m!6222330))

(declare-fun m!6222940 () Bool)

(assert (=> b!5170556 m!6222940))

(declare-fun m!6222942 () Bool)

(assert (=> b!5170555 m!6222942))

(assert (=> b!5170411 d!1668634))

(declare-fun d!1668638 () Bool)

(assert (=> d!1668638 (= (head!11037 (getSuffix!3396 input!5817 testedP!294)) (h!66513 (getSuffix!3396 input!5817 testedP!294)))))

(assert (=> b!5170411 d!1668638))

(assert (=> b!5170411 d!1668502))

(assert (=> b!5170411 d!1668524))

(assert (=> b!5170411 d!1668446))

(declare-fun b!5170561 () Bool)

(declare-fun lt!2128228 () List!60189)

(declare-fun e!3221726 () Bool)

(assert (=> b!5170561 (= e!3221726 (or (not (= lt!2128129 Nil!60065)) (= lt!2128228 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065)))))))

(declare-fun d!1668640 () Bool)

(assert (=> d!1668640 e!3221726))

(declare-fun res!2197668 () Bool)

(assert (=> d!1668640 (=> (not res!2197668) (not e!3221726))))

(assert (=> d!1668640 (= res!2197668 (= (content!10644 lt!2128228) ((_ map or) (content!10644 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065))) (content!10644 lt!2128129))))))

(declare-fun e!3221725 () List!60189)

(assert (=> d!1668640 (= lt!2128228 e!3221725)))

(declare-fun c!890008 () Bool)

(assert (=> d!1668640 (= c!890008 ((_ is Nil!60065) (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065))))))

(assert (=> d!1668640 (= (++!13137 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065)) lt!2128129) lt!2128228)))

(declare-fun b!5170558 () Bool)

(assert (=> b!5170558 (= e!3221725 lt!2128129)))

(declare-fun b!5170560 () Bool)

(declare-fun res!2197667 () Bool)

(assert (=> b!5170560 (=> (not res!2197667) (not e!3221726))))

(assert (=> b!5170560 (= res!2197667 (= (size!39649 lt!2128228) (+ (size!39649 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065))) (size!39649 lt!2128129))))))

(declare-fun b!5170559 () Bool)

(assert (=> b!5170559 (= e!3221725 (Cons!60065 (h!66513 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065))) (++!13137 (t!373342 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065))) lt!2128129)))))

(assert (= (and d!1668640 c!890008) b!5170558))

(assert (= (and d!1668640 (not c!890008)) b!5170559))

(assert (= (and d!1668640 res!2197668) b!5170560))

(assert (= (and b!5170560 res!2197667) b!5170561))

(declare-fun m!6222944 () Bool)

(assert (=> d!1668640 m!6222944))

(assert (=> d!1668640 m!6222660))

(declare-fun m!6222946 () Bool)

(assert (=> d!1668640 m!6222946))

(declare-fun m!6222948 () Bool)

(assert (=> d!1668640 m!6222948))

(declare-fun m!6222950 () Bool)

(assert (=> b!5170560 m!6222950))

(assert (=> b!5170560 m!6222660))

(declare-fun m!6222952 () Bool)

(assert (=> b!5170560 m!6222952))

(declare-fun m!6222954 () Bool)

(assert (=> b!5170560 m!6222954))

(declare-fun m!6222956 () Bool)

(assert (=> b!5170559 m!6222956))

(assert (=> b!5170411 d!1668640))

(declare-fun lt!2128229 () List!60189)

(declare-fun b!5170565 () Bool)

(declare-fun e!3221728 () Bool)

(assert (=> b!5170565 (= e!3221728 (or (not (= (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065) Nil!60065)) (= lt!2128229 testedP!294)))))

(declare-fun d!1668642 () Bool)

(assert (=> d!1668642 e!3221728))

(declare-fun res!2197670 () Bool)

(assert (=> d!1668642 (=> (not res!2197670) (not e!3221728))))

(assert (=> d!1668642 (= res!2197670 (= (content!10644 lt!2128229) ((_ map or) (content!10644 testedP!294) (content!10644 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)))))))

(declare-fun e!3221727 () List!60189)

(assert (=> d!1668642 (= lt!2128229 e!3221727)))

(declare-fun c!890009 () Bool)

(assert (=> d!1668642 (= c!890009 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668642 (= (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)) lt!2128229)))

(declare-fun b!5170562 () Bool)

(assert (=> b!5170562 (= e!3221727 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065))))

(declare-fun b!5170564 () Bool)

(declare-fun res!2197669 () Bool)

(assert (=> b!5170564 (=> (not res!2197669) (not e!3221728))))

(assert (=> b!5170564 (= res!2197669 (= (size!39649 lt!2128229) (+ (size!39649 testedP!294) (size!39649 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)))))))

(declare-fun b!5170563 () Bool)

(assert (=> b!5170563 (= e!3221727 (Cons!60065 (h!66513 testedP!294) (++!13137 (t!373342 testedP!294) (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065))))))

(assert (= (and d!1668642 c!890009) b!5170562))

(assert (= (and d!1668642 (not c!890009)) b!5170563))

(assert (= (and d!1668642 res!2197670) b!5170564))

(assert (= (and b!5170564 res!2197669) b!5170565))

(declare-fun m!6222958 () Bool)

(assert (=> d!1668642 m!6222958))

(assert (=> d!1668642 m!6222382))

(declare-fun m!6222962 () Bool)

(assert (=> d!1668642 m!6222962))

(declare-fun m!6222964 () Bool)

(assert (=> b!5170564 m!6222964))

(assert (=> b!5170564 m!6222330))

(declare-fun m!6222966 () Bool)

(assert (=> b!5170564 m!6222966))

(declare-fun m!6222968 () Bool)

(assert (=> b!5170563 m!6222968))

(assert (=> b!5170411 d!1668642))

(declare-fun lt!2128231 () List!60189)

(declare-fun e!3221731 () Bool)

(declare-fun b!5170571 () Bool)

(assert (=> b!5170571 (= e!3221731 (or (not (= (Cons!60065 (head!11037 lt!2127874) Nil!60065) Nil!60065)) (= lt!2128231 testedP!294)))))

(declare-fun d!1668648 () Bool)

(assert (=> d!1668648 e!3221731))

(declare-fun res!2197672 () Bool)

(assert (=> d!1668648 (=> (not res!2197672) (not e!3221731))))

(assert (=> d!1668648 (= res!2197672 (= (content!10644 lt!2128231) ((_ map or) (content!10644 testedP!294) (content!10644 (Cons!60065 (head!11037 lt!2127874) Nil!60065)))))))

(declare-fun e!3221730 () List!60189)

(assert (=> d!1668648 (= lt!2128231 e!3221730)))

(declare-fun c!890011 () Bool)

(assert (=> d!1668648 (= c!890011 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668648 (= (++!13137 testedP!294 (Cons!60065 (head!11037 lt!2127874) Nil!60065)) lt!2128231)))

(declare-fun b!5170568 () Bool)

(assert (=> b!5170568 (= e!3221730 (Cons!60065 (head!11037 lt!2127874) Nil!60065))))

(declare-fun b!5170570 () Bool)

(declare-fun res!2197671 () Bool)

(assert (=> b!5170570 (=> (not res!2197671) (not e!3221731))))

(assert (=> b!5170570 (= res!2197671 (= (size!39649 lt!2128231) (+ (size!39649 testedP!294) (size!39649 (Cons!60065 (head!11037 lt!2127874) Nil!60065)))))))

(declare-fun b!5170569 () Bool)

(assert (=> b!5170569 (= e!3221730 (Cons!60065 (h!66513 testedP!294) (++!13137 (t!373342 testedP!294) (Cons!60065 (head!11037 lt!2127874) Nil!60065))))))

(assert (= (and d!1668648 c!890011) b!5170568))

(assert (= (and d!1668648 (not c!890011)) b!5170569))

(assert (= (and d!1668648 res!2197672) b!5170570))

(assert (= (and b!5170570 res!2197671) b!5170571))

(declare-fun m!6222970 () Bool)

(assert (=> d!1668648 m!6222970))

(assert (=> d!1668648 m!6222382))

(declare-fun m!6222972 () Bool)

(assert (=> d!1668648 m!6222972))

(declare-fun m!6222974 () Bool)

(assert (=> b!5170570 m!6222974))

(assert (=> b!5170570 m!6222330))

(declare-fun m!6222976 () Bool)

(assert (=> b!5170570 m!6222976))

(declare-fun m!6222978 () Bool)

(assert (=> b!5170569 m!6222978))

(assert (=> b!5170411 d!1668648))

(assert (=> b!5170411 d!1668444))

(declare-fun b!5170574 () Bool)

(declare-fun e!3221735 () Bool)

(declare-fun e!3221733 () Bool)

(assert (=> b!5170574 (= e!3221735 e!3221733)))

(declare-fun res!2197676 () Bool)

(assert (=> b!5170574 (=> (not res!2197676) (not e!3221733))))

(assert (=> b!5170574 (= res!2197676 (not ((_ is Nil!60065) input!5817)))))

(declare-fun b!5170575 () Bool)

(declare-fun res!2197674 () Bool)

(assert (=> b!5170575 (=> (not res!2197674) (not e!3221733))))

(assert (=> b!5170575 (= res!2197674 (= (head!11037 (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065))) (head!11037 input!5817)))))

(declare-fun d!1668650 () Bool)

(declare-fun e!3221734 () Bool)

(assert (=> d!1668650 e!3221734))

(declare-fun res!2197675 () Bool)

(assert (=> d!1668650 (=> res!2197675 e!3221734)))

(declare-fun lt!2128233 () Bool)

(assert (=> d!1668650 (= res!2197675 (not lt!2128233))))

(assert (=> d!1668650 (= lt!2128233 e!3221735)))

(declare-fun res!2197673 () Bool)

(assert (=> d!1668650 (=> res!2197673 e!3221735)))

(assert (=> d!1668650 (= res!2197673 ((_ is Nil!60065) (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065))))))

(assert (=> d!1668650 (= (isPrefix!5746 (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)) input!5817) lt!2128233)))

(declare-fun b!5170577 () Bool)

(assert (=> b!5170577 (= e!3221734 (>= (size!39649 input!5817) (size!39649 (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)))))))

(declare-fun b!5170576 () Bool)

(assert (=> b!5170576 (= e!3221733 (isPrefix!5746 (tail!10146 (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065))) (tail!10146 input!5817)))))

(assert (= (and d!1668650 (not res!2197673)) b!5170574))

(assert (= (and b!5170574 res!2197676) b!5170575))

(assert (= (and b!5170575 res!2197674) b!5170576))

(assert (= (and d!1668650 (not res!2197675)) b!5170577))

(assert (=> b!5170575 m!6222396))

(declare-fun m!6222986 () Bool)

(assert (=> b!5170575 m!6222986))

(assert (=> b!5170575 m!6222370))

(assert (=> b!5170577 m!6222336))

(assert (=> b!5170577 m!6222396))

(declare-fun m!6222988 () Bool)

(assert (=> b!5170577 m!6222988))

(assert (=> b!5170576 m!6222396))

(declare-fun m!6222990 () Bool)

(assert (=> b!5170576 m!6222990))

(assert (=> b!5170576 m!6222376))

(assert (=> b!5170576 m!6222990))

(assert (=> b!5170576 m!6222376))

(declare-fun m!6222992 () Bool)

(assert (=> b!5170576 m!6222992))

(assert (=> b!5170411 d!1668650))

(declare-fun d!1668660 () Bool)

(assert (=> d!1668660 (= (++!13137 (++!13137 testedP!294 (Cons!60065 lt!2128125 Nil!60065)) lt!2128129) input!5817)))

(declare-fun lt!2128263 () Unit!151666)

(declare-fun choose!38308 (List!60189 C!29496 List!60189 List!60189) Unit!151666)

(assert (=> d!1668660 (= lt!2128263 (choose!38308 testedP!294 lt!2128125 lt!2128129 input!5817))))

(assert (=> d!1668660 (= (++!13137 testedP!294 (Cons!60065 lt!2128125 lt!2128129)) input!5817)))

(assert (=> d!1668660 (= (lemmaMoveElementToOtherListKeepsConcatEq!1574 testedP!294 lt!2128125 lt!2128129 input!5817) lt!2128263)))

(declare-fun bs!1203495 () Bool)

(assert (= bs!1203495 d!1668660))

(assert (=> bs!1203495 m!6222660))

(assert (=> bs!1203495 m!6222660))

(assert (=> bs!1203495 m!6222662))

(declare-fun m!6223046 () Bool)

(assert (=> bs!1203495 m!6223046))

(declare-fun m!6223048 () Bool)

(assert (=> bs!1203495 m!6223048))

(assert (=> b!5170411 d!1668660))

(declare-fun bm!362957 () Bool)

(declare-fun call!362966 () C!29496)

(assert (=> bm!362957 (= call!362966 (head!11037 call!362927))))

(declare-fun bm!362958 () Bool)

(declare-fun call!362967 () Bool)

(assert (=> bm!362958 (= call!362967 (nullableZipper!1159 call!362926))))

(declare-fun b!5170599 () Bool)

(declare-fun e!3221750 () tuple2!63780)

(assert (=> b!5170599 (= e!3221750 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun b!5170601 () Bool)

(declare-fun c!890021 () Bool)

(assert (=> b!5170601 (= c!890021 call!362967)))

(declare-fun lt!2128273 () Unit!151666)

(declare-fun lt!2128284 () Unit!151666)

(assert (=> b!5170601 (= lt!2128273 lt!2128284)))

(declare-fun lt!2128282 () List!60189)

(declare-fun lt!2128278 () C!29496)

(assert (=> b!5170601 (= (++!13137 (++!13137 lt!2128082 (Cons!60065 lt!2128278 Nil!60065)) lt!2128282) input!5817)))

(assert (=> b!5170601 (= lt!2128284 (lemmaMoveElementToOtherListKeepsConcatEq!1574 lt!2128082 lt!2128278 lt!2128282 input!5817))))

(assert (=> b!5170601 (= lt!2128282 (tail!10146 call!362927))))

(assert (=> b!5170601 (= lt!2128278 (head!11037 call!362927))))

(declare-fun lt!2128274 () Unit!151666)

(declare-fun lt!2128280 () Unit!151666)

(assert (=> b!5170601 (= lt!2128274 lt!2128280)))

(assert (=> b!5170601 (isPrefix!5746 (++!13137 lt!2128082 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2128082)) Nil!60065)) input!5817)))

(assert (=> b!5170601 (= lt!2128280 (lemmaAddHeadSuffixToPrefixStillPrefix!1059 lt!2128082 input!5817))))

(declare-fun lt!2128271 () List!60189)

(assert (=> b!5170601 (= lt!2128271 (++!13137 lt!2128082 (Cons!60065 (head!11037 call!362927) Nil!60065)))))

(declare-fun lt!2128291 () Unit!151666)

(declare-fun e!3221753 () Unit!151666)

(assert (=> b!5170601 (= lt!2128291 e!3221753)))

(declare-fun c!890024 () Bool)

(assert (=> b!5170601 (= c!890024 (= (size!39649 lt!2128082) (size!39649 input!5817)))))

(declare-fun lt!2128267 () Unit!151666)

(declare-fun lt!2128295 () Unit!151666)

(assert (=> b!5170601 (= lt!2128267 lt!2128295)))

(assert (=> b!5170601 (<= (size!39649 lt!2128082) (size!39649 input!5817))))

(assert (=> b!5170601 (= lt!2128295 (lemmaIsPrefixThenSmallerEqSize!909 lt!2128082 input!5817))))

(declare-fun e!3221748 () tuple2!63780)

(declare-fun e!3221752 () tuple2!63780)

(assert (=> b!5170601 (= e!3221748 e!3221752)))

(declare-fun b!5170602 () Bool)

(declare-fun Unit!151684 () Unit!151666)

(assert (=> b!5170602 (= e!3221753 Unit!151684)))

(declare-fun lt!2128286 () Unit!151666)

(declare-fun call!362962 () Unit!151666)

(assert (=> b!5170602 (= lt!2128286 call!362962)))

(declare-fun call!362968 () Bool)

(assert (=> b!5170602 call!362968))

(declare-fun lt!2128296 () Unit!151666)

(assert (=> b!5170602 (= lt!2128296 lt!2128286)))

(declare-fun lt!2128283 () Unit!151666)

(declare-fun call!362969 () Unit!151666)

(assert (=> b!5170602 (= lt!2128283 call!362969)))

(assert (=> b!5170602 (= input!5817 lt!2128082)))

(declare-fun lt!2128272 () Unit!151666)

(assert (=> b!5170602 (= lt!2128272 lt!2128283)))

(assert (=> b!5170602 false))

(declare-fun bm!362961 () Bool)

(declare-fun call!362965 () List!60189)

(assert (=> bm!362961 (= call!362965 (tail!10146 call!362927))))

(declare-fun d!1668664 () Bool)

(declare-fun e!3221754 () Bool)

(assert (=> d!1668664 e!3221754))

(declare-fun res!2197683 () Bool)

(assert (=> d!1668664 (=> (not res!2197683) (not e!3221754))))

(declare-fun lt!2128268 () tuple2!63780)

(assert (=> d!1668664 (= res!2197683 (= (++!13137 (_1!35193 lt!2128268) (_2!35193 lt!2128268)) input!5817))))

(declare-fun e!3221751 () tuple2!63780)

(assert (=> d!1668664 (= lt!2128268 e!3221751)))

(declare-fun c!890020 () Bool)

(assert (=> d!1668664 (= c!890020 (lostCauseZipper!1326 call!362926))))

(declare-fun lt!2128266 () Unit!151666)

(declare-fun Unit!151685 () Unit!151666)

(assert (=> d!1668664 (= lt!2128266 Unit!151685)))

(assert (=> d!1668664 (= (getSuffix!3396 input!5817 lt!2128082) call!362927)))

(declare-fun lt!2128270 () Unit!151666)

(declare-fun lt!2128281 () Unit!151666)

(assert (=> d!1668664 (= lt!2128270 lt!2128281)))

(declare-fun lt!2128279 () List!60189)

(assert (=> d!1668664 (= call!362927 lt!2128279)))

(assert (=> d!1668664 (= lt!2128281 (lemmaSamePrefixThenSameSuffix!2693 lt!2128082 call!362927 lt!2128082 lt!2128279 input!5817))))

(assert (=> d!1668664 (= lt!2128279 (getSuffix!3396 input!5817 lt!2128082))))

(declare-fun lt!2128293 () Unit!151666)

(declare-fun lt!2128269 () Unit!151666)

(assert (=> d!1668664 (= lt!2128293 lt!2128269)))

(assert (=> d!1668664 (isPrefix!5746 lt!2128082 (++!13137 lt!2128082 call!362927))))

(assert (=> d!1668664 (= lt!2128269 (lemmaConcatTwoListThenFirstIsPrefix!3587 lt!2128082 call!362927))))

(assert (=> d!1668664 (= (++!13137 lt!2128082 call!362927) input!5817)))

(assert (=> d!1668664 (= (findLongestMatchInnerZipper!271 call!362926 lt!2128082 (+ 1 lt!2127880 1) call!362927 input!5817 lt!2127870) lt!2128268)))

(declare-fun b!5170603 () Bool)

(declare-fun Unit!151686 () Unit!151666)

(assert (=> b!5170603 (= e!3221753 Unit!151686)))

(declare-fun b!5170604 () Bool)

(assert (=> b!5170604 (= e!3221751 e!3221748)))

(declare-fun c!890022 () Bool)

(assert (=> b!5170604 (= c!890022 (= (+ 1 lt!2127880 1) lt!2127870))))

(declare-fun b!5170605 () Bool)

(declare-fun e!3221749 () tuple2!63780)

(assert (=> b!5170605 (= e!3221752 e!3221749)))

(declare-fun lt!2128289 () tuple2!63780)

(declare-fun call!362963 () tuple2!63780)

(assert (=> b!5170605 (= lt!2128289 call!362963)))

(declare-fun c!890026 () Bool)

(assert (=> b!5170605 (= c!890026 (isEmpty!32159 (_1!35193 lt!2128289)))))

(declare-fun b!5170606 () Bool)

(declare-fun c!890023 () Bool)

(assert (=> b!5170606 (= c!890023 call!362967)))

(declare-fun lt!2128276 () Unit!151666)

(declare-fun lt!2128275 () Unit!151666)

(assert (=> b!5170606 (= lt!2128276 lt!2128275)))

(assert (=> b!5170606 (= input!5817 lt!2128082)))

(assert (=> b!5170606 (= lt!2128275 call!362969)))

(declare-fun lt!2128265 () Unit!151666)

(declare-fun lt!2128277 () Unit!151666)

(assert (=> b!5170606 (= lt!2128265 lt!2128277)))

(assert (=> b!5170606 call!362968))

(assert (=> b!5170606 (= lt!2128277 call!362962)))

(assert (=> b!5170606 (= e!3221748 e!3221750)))

(declare-fun b!5170607 () Bool)

(assert (=> b!5170607 (= e!3221752 call!362963)))

(declare-fun bm!362962 () Bool)

(declare-fun call!362964 () (InoxSet Context!7994))

(assert (=> bm!362962 (= call!362964 (derivationStepZipper!967 call!362926 call!362966))))

(declare-fun bm!362963 () Bool)

(assert (=> bm!362963 (= call!362963 (findLongestMatchInnerZipper!271 call!362964 lt!2128271 (+ 1 lt!2127880 1 1) call!362965 input!5817 lt!2127870))))

(declare-fun b!5170608 () Bool)

(assert (=> b!5170608 (= e!3221749 lt!2128289)))

(declare-fun b!5170609 () Bool)

(declare-fun e!3221755 () Bool)

(assert (=> b!5170609 (= e!3221754 e!3221755)))

(declare-fun res!2197684 () Bool)

(assert (=> b!5170609 (=> res!2197684 e!3221755)))

(assert (=> b!5170609 (= res!2197684 (isEmpty!32159 (_1!35193 lt!2128268)))))

(declare-fun b!5170610 () Bool)

(assert (=> b!5170610 (= e!3221749 (tuple2!63781 lt!2128082 call!362927))))

(declare-fun bm!362964 () Bool)

(assert (=> bm!362964 (= call!362962 (lemmaIsPrefixRefl!3753 input!5817 input!5817))))

(declare-fun bm!362965 () Bool)

(assert (=> bm!362965 (= call!362969 (lemmaIsPrefixSameLengthThenSameList!1395 input!5817 lt!2128082 input!5817))))

(declare-fun b!5170611 () Bool)

(assert (=> b!5170611 (= e!3221751 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun bm!362966 () Bool)

(assert (=> bm!362966 (= call!362968 (isPrefix!5746 input!5817 input!5817))))

(declare-fun b!5170612 () Bool)

(assert (=> b!5170612 (= e!3221755 (>= (size!39649 (_1!35193 lt!2128268)) (size!39649 lt!2128082)))))

(declare-fun b!5170613 () Bool)

(assert (=> b!5170613 (= e!3221750 (tuple2!63781 lt!2128082 Nil!60065))))

(assert (= (and d!1668664 c!890020) b!5170611))

(assert (= (and d!1668664 (not c!890020)) b!5170604))

(assert (= (and b!5170604 c!890022) b!5170606))

(assert (= (and b!5170604 (not c!890022)) b!5170601))

(assert (= (and b!5170606 c!890023) b!5170613))

(assert (= (and b!5170606 (not c!890023)) b!5170599))

(assert (= (and b!5170601 c!890024) b!5170602))

(assert (= (and b!5170601 (not c!890024)) b!5170603))

(assert (= (and b!5170601 c!890021) b!5170605))

(assert (= (and b!5170601 (not c!890021)) b!5170607))

(assert (= (and b!5170605 c!890026) b!5170610))

(assert (= (and b!5170605 (not c!890026)) b!5170608))

(assert (= (or b!5170605 b!5170607) bm!362961))

(assert (= (or b!5170605 b!5170607) bm!362957))

(assert (= (or b!5170605 b!5170607) bm!362962))

(assert (= (or b!5170605 b!5170607) bm!362963))

(assert (= (or b!5170606 b!5170602) bm!362964))

(assert (= (or b!5170606 b!5170601) bm!362958))

(assert (= (or b!5170606 b!5170602) bm!362966))

(assert (= (or b!5170606 b!5170602) bm!362965))

(assert (= (and d!1668664 res!2197683) b!5170609))

(assert (= (and b!5170609 (not res!2197684)) b!5170612))

(assert (=> bm!362966 m!6222348))

(declare-fun m!6223058 () Bool)

(assert (=> bm!362963 m!6223058))

(declare-fun m!6223060 () Bool)

(assert (=> bm!362957 m!6223060))

(assert (=> bm!362964 m!6222346))

(declare-fun m!6223062 () Bool)

(assert (=> b!5170605 m!6223062))

(declare-fun m!6223064 () Bool)

(assert (=> d!1668664 m!6223064))

(declare-fun m!6223066 () Bool)

(assert (=> d!1668664 m!6223066))

(declare-fun m!6223068 () Bool)

(assert (=> d!1668664 m!6223068))

(declare-fun m!6223070 () Bool)

(assert (=> d!1668664 m!6223070))

(declare-fun m!6223072 () Bool)

(assert (=> d!1668664 m!6223072))

(declare-fun m!6223074 () Bool)

(assert (=> d!1668664 m!6223074))

(assert (=> d!1668664 m!6223072))

(declare-fun m!6223076 () Bool)

(assert (=> d!1668664 m!6223076))

(declare-fun m!6223078 () Bool)

(assert (=> b!5170612 m!6223078))

(declare-fun m!6223080 () Bool)

(assert (=> b!5170612 m!6223080))

(declare-fun m!6223082 () Bool)

(assert (=> b!5170609 m!6223082))

(declare-fun m!6223084 () Bool)

(assert (=> bm!362962 m!6223084))

(declare-fun m!6223086 () Bool)

(assert (=> b!5170601 m!6223086))

(assert (=> b!5170601 m!6223068))

(declare-fun m!6223088 () Bool)

(assert (=> b!5170601 m!6223088))

(assert (=> b!5170601 m!6223068))

(assert (=> b!5170601 m!6222336))

(assert (=> b!5170601 m!6223060))

(declare-fun m!6223090 () Bool)

(assert (=> b!5170601 m!6223090))

(declare-fun m!6223092 () Bool)

(assert (=> b!5170601 m!6223092))

(declare-fun m!6223094 () Bool)

(assert (=> b!5170601 m!6223094))

(declare-fun m!6223096 () Bool)

(assert (=> b!5170601 m!6223096))

(declare-fun m!6223098 () Bool)

(assert (=> b!5170601 m!6223098))

(assert (=> b!5170601 m!6223090))

(assert (=> b!5170601 m!6223080))

(assert (=> b!5170601 m!6223094))

(declare-fun m!6223108 () Bool)

(assert (=> b!5170601 m!6223108))

(declare-fun m!6223114 () Bool)

(assert (=> b!5170601 m!6223114))

(declare-fun m!6223116 () Bool)

(assert (=> b!5170601 m!6223116))

(assert (=> bm!362961 m!6223098))

(declare-fun m!6223120 () Bool)

(assert (=> bm!362958 m!6223120))

(declare-fun m!6223122 () Bool)

(assert (=> bm!362965 m!6223122))

(assert (=> bm!362923 d!1668664))

(assert (=> bm!362929 d!1668502))

(declare-fun d!1668670 () Bool)

(assert (=> d!1668670 (= (head!11037 lt!2127879) (h!66513 lt!2127879))))

(assert (=> b!5170203 d!1668670))

(declare-fun d!1668672 () Bool)

(assert (=> d!1668672 (= (head!11037 input!5817) (h!66513 input!5817))))

(assert (=> b!5170203 d!1668672))

(assert (=> d!1668506 d!1668524))

(assert (=> d!1668506 d!1668516))

(declare-fun d!1668674 () Bool)

(assert (=> d!1668674 (<= (size!39649 testedP!294) (size!39649 input!5817))))

(assert (=> d!1668674 true))

(declare-fun _$64!688 () Unit!151666)

(assert (=> d!1668674 (= (choose!38301 testedP!294 input!5817) _$64!688)))

(declare-fun bs!1203515 () Bool)

(assert (= bs!1203515 d!1668674))

(assert (=> bs!1203515 m!6222330))

(assert (=> bs!1203515 m!6222336))

(assert (=> d!1668506 d!1668674))

(assert (=> d!1668506 d!1668508))

(assert (=> bm!362932 d!1668528))

(declare-fun d!1668680 () Bool)

(assert (=> d!1668680 (= input!5817 testedP!294)))

(assert (=> d!1668680 true))

(declare-fun _$60!961 () Unit!151666)

(assert (=> d!1668680 (= (choose!38304 input!5817 testedP!294 input!5817) _$60!961)))

(assert (=> d!1668532 d!1668680))

(assert (=> d!1668532 d!1668530))

(declare-fun b!5170624 () Bool)

(declare-fun e!3221764 () Bool)

(declare-fun e!3221762 () Bool)

(assert (=> b!5170624 (= e!3221764 e!3221762)))

(declare-fun res!2197692 () Bool)

(assert (=> b!5170624 (=> (not res!2197692) (not e!3221762))))

(assert (=> b!5170624 (= res!2197692 (not ((_ is Nil!60065) (tail!10146 input!5817))))))

(declare-fun b!5170625 () Bool)

(declare-fun res!2197690 () Bool)

(assert (=> b!5170625 (=> (not res!2197690) (not e!3221762))))

(assert (=> b!5170625 (= res!2197690 (= (head!11037 (tail!10146 testedP!294)) (head!11037 (tail!10146 input!5817))))))

(declare-fun d!1668686 () Bool)

(declare-fun e!3221763 () Bool)

(assert (=> d!1668686 e!3221763))

(declare-fun res!2197691 () Bool)

(assert (=> d!1668686 (=> res!2197691 e!3221763)))

(declare-fun lt!2128304 () Bool)

(assert (=> d!1668686 (= res!2197691 (not lt!2128304))))

(assert (=> d!1668686 (= lt!2128304 e!3221764)))

(declare-fun res!2197689 () Bool)

(assert (=> d!1668686 (=> res!2197689 e!3221764)))

(assert (=> d!1668686 (= res!2197689 ((_ is Nil!60065) (tail!10146 testedP!294)))))

(assert (=> d!1668686 (= (isPrefix!5746 (tail!10146 testedP!294) (tail!10146 input!5817)) lt!2128304)))

(declare-fun b!5170627 () Bool)

(assert (=> b!5170627 (= e!3221763 (>= (size!39649 (tail!10146 input!5817)) (size!39649 (tail!10146 testedP!294))))))

(declare-fun b!5170626 () Bool)

(assert (=> b!5170626 (= e!3221762 (isPrefix!5746 (tail!10146 (tail!10146 testedP!294)) (tail!10146 (tail!10146 input!5817))))))

(assert (= (and d!1668686 (not res!2197689)) b!5170624))

(assert (= (and b!5170624 res!2197692) b!5170625))

(assert (= (and b!5170625 res!2197690) b!5170626))

(assert (= (and d!1668686 (not res!2197691)) b!5170627))

(assert (=> b!5170625 m!6222618))

(declare-fun m!6223156 () Bool)

(assert (=> b!5170625 m!6223156))

(assert (=> b!5170625 m!6222376))

(declare-fun m!6223158 () Bool)

(assert (=> b!5170625 m!6223158))

(assert (=> b!5170627 m!6222376))

(declare-fun m!6223160 () Bool)

(assert (=> b!5170627 m!6223160))

(assert (=> b!5170627 m!6222618))

(declare-fun m!6223162 () Bool)

(assert (=> b!5170627 m!6223162))

(assert (=> b!5170626 m!6222618))

(declare-fun m!6223164 () Bool)

(assert (=> b!5170626 m!6223164))

(assert (=> b!5170626 m!6222376))

(declare-fun m!6223166 () Bool)

(assert (=> b!5170626 m!6223166))

(assert (=> b!5170626 m!6223164))

(assert (=> b!5170626 m!6223166))

(declare-fun m!6223168 () Bool)

(assert (=> b!5170626 m!6223168))

(assert (=> b!5170394 d!1668686))

(declare-fun d!1668690 () Bool)

(assert (=> d!1668690 (= (tail!10146 testedP!294) (t!373342 testedP!294))))

(assert (=> b!5170394 d!1668690))

(declare-fun d!1668692 () Bool)

(assert (=> d!1668692 (= (tail!10146 input!5817) (t!373342 input!5817))))

(assert (=> b!5170394 d!1668692))

(declare-fun d!1668694 () Bool)

(declare-fun lt!2128306 () Int)

(assert (=> d!1668694 (>= lt!2128306 0)))

(declare-fun e!3221768 () Int)

(assert (=> d!1668694 (= lt!2128306 e!3221768)))

(declare-fun c!890030 () Bool)

(assert (=> d!1668694 (= c!890030 ((_ is Nil!60065) (t!373342 testedP!294)))))

(assert (=> d!1668694 (= (size!39649 (t!373342 testedP!294)) lt!2128306)))

(declare-fun b!5170632 () Bool)

(assert (=> b!5170632 (= e!3221768 0)))

(declare-fun b!5170633 () Bool)

(assert (=> b!5170633 (= e!3221768 (+ 1 (size!39649 (t!373342 (t!373342 testedP!294)))))))

(assert (= (and d!1668694 c!890030) b!5170632))

(assert (= (and d!1668694 (not c!890030)) b!5170633))

(declare-fun m!6223178 () Bool)

(assert (=> b!5170633 m!6223178))

(assert (=> b!5170431 d!1668694))

(declare-fun d!1668700 () Bool)

(declare-fun lt!2128308 () Int)

(assert (=> d!1668700 (>= lt!2128308 0)))

(declare-fun e!3221770 () Int)

(assert (=> d!1668700 (= lt!2128308 e!3221770)))

(declare-fun c!890032 () Bool)

(assert (=> d!1668700 (= c!890032 ((_ is Nil!60065) (_1!35193 lt!2128115)))))

(assert (=> d!1668700 (= (size!39649 (_1!35193 lt!2128115)) lt!2128308)))

(declare-fun b!5170636 () Bool)

(assert (=> b!5170636 (= e!3221770 0)))

(declare-fun b!5170637 () Bool)

(assert (=> b!5170637 (= e!3221770 (+ 1 (size!39649 (t!373342 (_1!35193 lt!2128115)))))))

(assert (= (and d!1668700 c!890032) b!5170636))

(assert (= (and d!1668700 (not c!890032)) b!5170637))

(declare-fun m!6223182 () Bool)

(assert (=> b!5170637 m!6223182))

(assert (=> b!5170422 d!1668700))

(assert (=> b!5170422 d!1668524))

(assert (=> d!1668528 d!1668530))

(declare-fun d!1668704 () Bool)

(assert (=> d!1668704 (isPrefix!5746 input!5817 input!5817)))

(assert (=> d!1668704 true))

(declare-fun _$45!2341 () Unit!151666)

(assert (=> d!1668704 (= (choose!38303 input!5817 input!5817) _$45!2341)))

(declare-fun bs!1203517 () Bool)

(assert (= bs!1203517 d!1668704))

(assert (=> bs!1203517 m!6222348))

(assert (=> d!1668528 d!1668704))

(declare-fun b!5170641 () Bool)

(declare-fun e!3221772 () Bool)

(declare-fun lt!2128309 () List!60189)

(assert (=> b!5170641 (= e!3221772 (or (not (= (_2!35193 lt!2128115) Nil!60065)) (= lt!2128309 (_1!35193 lt!2128115))))))

(declare-fun d!1668708 () Bool)

(assert (=> d!1668708 e!3221772))

(declare-fun res!2197698 () Bool)

(assert (=> d!1668708 (=> (not res!2197698) (not e!3221772))))

(assert (=> d!1668708 (= res!2197698 (= (content!10644 lt!2128309) ((_ map or) (content!10644 (_1!35193 lt!2128115)) (content!10644 (_2!35193 lt!2128115)))))))

(declare-fun e!3221771 () List!60189)

(assert (=> d!1668708 (= lt!2128309 e!3221771)))

(declare-fun c!890033 () Bool)

(assert (=> d!1668708 (= c!890033 ((_ is Nil!60065) (_1!35193 lt!2128115)))))

(assert (=> d!1668708 (= (++!13137 (_1!35193 lt!2128115) (_2!35193 lt!2128115)) lt!2128309)))

(declare-fun b!5170638 () Bool)

(assert (=> b!5170638 (= e!3221771 (_2!35193 lt!2128115))))

(declare-fun b!5170640 () Bool)

(declare-fun res!2197697 () Bool)

(assert (=> b!5170640 (=> (not res!2197697) (not e!3221772))))

(assert (=> b!5170640 (= res!2197697 (= (size!39649 lt!2128309) (+ (size!39649 (_1!35193 lt!2128115)) (size!39649 (_2!35193 lt!2128115)))))))

(declare-fun b!5170639 () Bool)

(assert (=> b!5170639 (= e!3221771 (Cons!60065 (h!66513 (_1!35193 lt!2128115)) (++!13137 (t!373342 (_1!35193 lt!2128115)) (_2!35193 lt!2128115))))))

(assert (= (and d!1668708 c!890033) b!5170638))

(assert (= (and d!1668708 (not c!890033)) b!5170639))

(assert (= (and d!1668708 res!2197698) b!5170640))

(assert (= (and b!5170640 res!2197697) b!5170641))

(declare-fun m!6223184 () Bool)

(assert (=> d!1668708 m!6223184))

(declare-fun m!6223186 () Bool)

(assert (=> d!1668708 m!6223186))

(declare-fun m!6223188 () Bool)

(assert (=> d!1668708 m!6223188))

(declare-fun m!6223190 () Bool)

(assert (=> b!5170640 m!6223190))

(assert (=> b!5170640 m!6222652))

(declare-fun m!6223192 () Bool)

(assert (=> b!5170640 m!6223192))

(declare-fun m!6223194 () Bool)

(assert (=> b!5170639 m!6223194))

(assert (=> d!1668518 d!1668708))

(declare-fun bs!1203525 () Bool)

(declare-fun d!1668712 () Bool)

(assert (= bs!1203525 (and d!1668712 d!1668448)))

(declare-fun lambda!258162 () Int)

(assert (=> bs!1203525 (not (= lambda!258162 lambda!258109))))

(declare-fun bs!1203526 () Bool)

(declare-fun b!5170698 () Bool)

(assert (= bs!1203526 (and b!5170698 d!1668448)))

(declare-fun lambda!258163 () Int)

(assert (=> bs!1203526 (not (= lambda!258163 lambda!258109))))

(declare-fun bs!1203527 () Bool)

(assert (= bs!1203527 (and b!5170698 d!1668712)))

(assert (=> bs!1203527 (not (= lambda!258163 lambda!258162))))

(declare-fun bs!1203528 () Bool)

(declare-fun b!5170699 () Bool)

(assert (= bs!1203528 (and b!5170699 d!1668448)))

(declare-fun lambda!258164 () Int)

(assert (=> bs!1203528 (not (= lambda!258164 lambda!258109))))

(declare-fun bs!1203529 () Bool)

(assert (= bs!1203529 (and b!5170699 d!1668712)))

(assert (=> bs!1203529 (not (= lambda!258164 lambda!258162))))

(declare-fun bs!1203530 () Bool)

(assert (= bs!1203530 (and b!5170699 b!5170698)))

(assert (=> bs!1203530 (= lambda!258164 lambda!258163)))

(declare-fun lt!2128339 () Bool)

(declare-datatypes ((Option!14834 0))(
  ( (None!14833) (Some!14833 (v!50862 List!60189)) )
))
(declare-fun isEmpty!32161 (Option!14834) Bool)

(declare-fun getLanguageWitness!1005 ((InoxSet Context!7994)) Option!14834)

(assert (=> d!1668712 (= lt!2128339 (isEmpty!32161 (getLanguageWitness!1005 z!4581)))))

(declare-fun forall!14131 ((InoxSet Context!7994) Int) Bool)

(assert (=> d!1668712 (= lt!2128339 (forall!14131 z!4581 lambda!258162))))

(declare-fun lt!2128342 () Unit!151666)

(declare-fun e!3221807 () Unit!151666)

(assert (=> d!1668712 (= lt!2128342 e!3221807)))

(declare-fun c!890048 () Bool)

(assert (=> d!1668712 (= c!890048 (not (forall!14131 z!4581 lambda!258162)))))

(assert (=> d!1668712 (= (lostCauseZipper!1326 z!4581) lt!2128339)))

(declare-fun bm!362971 () Bool)

(declare-datatypes ((List!60192 0))(
  ( (Nil!60068) (Cons!60068 (h!66516 Context!7994) (t!373345 List!60192)) )
))
(declare-fun call!362976 () List!60192)

(declare-fun toList!8449 ((InoxSet Context!7994)) List!60192)

(assert (=> bm!362971 (= call!362976 (toList!8449 z!4581))))

(declare-fun Unit!151690 () Unit!151666)

(assert (=> b!5170699 (= e!3221807 Unit!151690)))

(declare-fun lt!2128340 () List!60192)

(assert (=> b!5170699 (= lt!2128340 call!362976)))

(declare-fun lt!2128337 () Unit!151666)

(declare-fun lemmaForallThenNotExists!436 (List!60192 Int) Unit!151666)

(assert (=> b!5170699 (= lt!2128337 (lemmaForallThenNotExists!436 lt!2128340 lambda!258162))))

(declare-fun call!362977 () Bool)

(assert (=> b!5170699 (not call!362977)))

(declare-fun lt!2128341 () Unit!151666)

(assert (=> b!5170699 (= lt!2128341 lt!2128337)))

(declare-fun Unit!151691 () Unit!151666)

(assert (=> b!5170698 (= e!3221807 Unit!151691)))

(declare-fun lt!2128335 () List!60192)

(assert (=> b!5170698 (= lt!2128335 call!362976)))

(declare-fun lt!2128338 () Unit!151666)

(declare-fun lemmaNotForallThenExists!469 (List!60192 Int) Unit!151666)

(assert (=> b!5170698 (= lt!2128338 (lemmaNotForallThenExists!469 lt!2128335 lambda!258162))))

(assert (=> b!5170698 call!362977))

(declare-fun lt!2128336 () Unit!151666)

(assert (=> b!5170698 (= lt!2128336 lt!2128338)))

(declare-fun bm!362972 () Bool)

(declare-fun exists!1914 (List!60192 Int) Bool)

(assert (=> bm!362972 (= call!362977 (exists!1914 (ite c!890048 lt!2128335 lt!2128340) (ite c!890048 lambda!258163 lambda!258164)))))

(assert (= (and d!1668712 c!890048) b!5170698))

(assert (= (and d!1668712 (not c!890048)) b!5170699))

(assert (= (or b!5170698 b!5170699) bm!362971))

(assert (= (or b!5170698 b!5170699) bm!362972))

(declare-fun m!6223270 () Bool)

(assert (=> b!5170699 m!6223270))

(declare-fun m!6223272 () Bool)

(assert (=> bm!362971 m!6223272))

(declare-fun m!6223274 () Bool)

(assert (=> bm!362972 m!6223274))

(declare-fun m!6223276 () Bool)

(assert (=> d!1668712 m!6223276))

(assert (=> d!1668712 m!6223276))

(declare-fun m!6223278 () Bool)

(assert (=> d!1668712 m!6223278))

(declare-fun m!6223280 () Bool)

(assert (=> d!1668712 m!6223280))

(assert (=> d!1668712 m!6223280))

(declare-fun m!6223282 () Bool)

(assert (=> b!5170698 m!6223282))

(assert (=> d!1668518 d!1668712))

(declare-fun b!5170700 () Bool)

(declare-fun e!3221810 () Bool)

(declare-fun e!3221808 () Bool)

(assert (=> b!5170700 (= e!3221810 e!3221808)))

(declare-fun res!2197720 () Bool)

(assert (=> b!5170700 (=> (not res!2197720) (not e!3221808))))

(assert (=> b!5170700 (= res!2197720 (not ((_ is Nil!60065) (++!13137 testedP!294 lt!2127874))))))

(declare-fun b!5170701 () Bool)

(declare-fun res!2197718 () Bool)

(assert (=> b!5170701 (=> (not res!2197718) (not e!3221808))))

(assert (=> b!5170701 (= res!2197718 (= (head!11037 testedP!294) (head!11037 (++!13137 testedP!294 lt!2127874))))))

(declare-fun d!1668742 () Bool)

(declare-fun e!3221809 () Bool)

(assert (=> d!1668742 e!3221809))

(declare-fun res!2197719 () Bool)

(assert (=> d!1668742 (=> res!2197719 e!3221809)))

(declare-fun lt!2128343 () Bool)

(assert (=> d!1668742 (= res!2197719 (not lt!2128343))))

(assert (=> d!1668742 (= lt!2128343 e!3221810)))

(declare-fun res!2197717 () Bool)

(assert (=> d!1668742 (=> res!2197717 e!3221810)))

(assert (=> d!1668742 (= res!2197717 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668742 (= (isPrefix!5746 testedP!294 (++!13137 testedP!294 lt!2127874)) lt!2128343)))

(declare-fun b!5170703 () Bool)

(assert (=> b!5170703 (= e!3221809 (>= (size!39649 (++!13137 testedP!294 lt!2127874)) (size!39649 testedP!294)))))

(declare-fun b!5170702 () Bool)

(assert (=> b!5170702 (= e!3221808 (isPrefix!5746 (tail!10146 testedP!294) (tail!10146 (++!13137 testedP!294 lt!2127874))))))

(assert (= (and d!1668742 (not res!2197717)) b!5170700))

(assert (= (and b!5170700 res!2197720) b!5170701))

(assert (= (and b!5170701 res!2197718) b!5170702))

(assert (= (and d!1668742 (not res!2197719)) b!5170703))

(assert (=> b!5170701 m!6222616))

(assert (=> b!5170701 m!6222646))

(declare-fun m!6223284 () Bool)

(assert (=> b!5170701 m!6223284))

(assert (=> b!5170703 m!6222646))

(declare-fun m!6223286 () Bool)

(assert (=> b!5170703 m!6223286))

(assert (=> b!5170703 m!6222330))

(assert (=> b!5170702 m!6222618))

(assert (=> b!5170702 m!6222646))

(declare-fun m!6223288 () Bool)

(assert (=> b!5170702 m!6223288))

(assert (=> b!5170702 m!6222618))

(assert (=> b!5170702 m!6223288))

(declare-fun m!6223290 () Bool)

(assert (=> b!5170702 m!6223290))

(assert (=> d!1668518 d!1668742))

(declare-fun b!5170707 () Bool)

(declare-fun lt!2128344 () List!60189)

(declare-fun e!3221812 () Bool)

(assert (=> b!5170707 (= e!3221812 (or (not (= lt!2127874 Nil!60065)) (= lt!2128344 testedP!294)))))

(declare-fun d!1668744 () Bool)

(assert (=> d!1668744 e!3221812))

(declare-fun res!2197722 () Bool)

(assert (=> d!1668744 (=> (not res!2197722) (not e!3221812))))

(assert (=> d!1668744 (= res!2197722 (= (content!10644 lt!2128344) ((_ map or) (content!10644 testedP!294) (content!10644 lt!2127874))))))

(declare-fun e!3221811 () List!60189)

(assert (=> d!1668744 (= lt!2128344 e!3221811)))

(declare-fun c!890049 () Bool)

(assert (=> d!1668744 (= c!890049 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668744 (= (++!13137 testedP!294 lt!2127874) lt!2128344)))

(declare-fun b!5170704 () Bool)

(assert (=> b!5170704 (= e!3221811 lt!2127874)))

(declare-fun b!5170706 () Bool)

(declare-fun res!2197721 () Bool)

(assert (=> b!5170706 (=> (not res!2197721) (not e!3221812))))

(assert (=> b!5170706 (= res!2197721 (= (size!39649 lt!2128344) (+ (size!39649 testedP!294) (size!39649 lt!2127874))))))

(declare-fun b!5170705 () Bool)

(assert (=> b!5170705 (= e!3221811 (Cons!60065 (h!66513 testedP!294) (++!13137 (t!373342 testedP!294) lt!2127874)))))

(assert (= (and d!1668744 c!890049) b!5170704))

(assert (= (and d!1668744 (not c!890049)) b!5170705))

(assert (= (and d!1668744 res!2197722) b!5170706))

(assert (= (and b!5170706 res!2197721) b!5170707))

(declare-fun m!6223292 () Bool)

(assert (=> d!1668744 m!6223292))

(assert (=> d!1668744 m!6222382))

(declare-fun m!6223294 () Bool)

(assert (=> d!1668744 m!6223294))

(declare-fun m!6223296 () Bool)

(assert (=> b!5170706 m!6223296))

(assert (=> b!5170706 m!6222330))

(declare-fun m!6223298 () Bool)

(assert (=> b!5170706 m!6223298))

(declare-fun m!6223300 () Bool)

(assert (=> b!5170705 m!6223300))

(assert (=> d!1668518 d!1668744))

(declare-fun d!1668746 () Bool)

(assert (=> d!1668746 (isPrefix!5746 testedP!294 (++!13137 testedP!294 lt!2127874))))

(declare-fun lt!2128347 () Unit!151666)

(declare-fun choose!38309 (List!60189 List!60189) Unit!151666)

(assert (=> d!1668746 (= lt!2128347 (choose!38309 testedP!294 lt!2127874))))

(assert (=> d!1668746 (= (lemmaConcatTwoListThenFirstIsPrefix!3587 testedP!294 lt!2127874) lt!2128347)))

(declare-fun bs!1203531 () Bool)

(assert (= bs!1203531 d!1668746))

(assert (=> bs!1203531 m!6222646))

(assert (=> bs!1203531 m!6222646))

(assert (=> bs!1203531 m!6222650))

(declare-fun m!6223302 () Bool)

(assert (=> bs!1203531 m!6223302))

(assert (=> d!1668518 d!1668746))

(assert (=> d!1668518 d!1668522))

(declare-fun d!1668748 () Bool)

(assert (=> d!1668748 (= lt!2127874 lt!2128126)))

(declare-fun lt!2128350 () Unit!151666)

(declare-fun choose!38310 (List!60189 List!60189 List!60189 List!60189 List!60189) Unit!151666)

(assert (=> d!1668748 (= lt!2128350 (choose!38310 testedP!294 lt!2127874 testedP!294 lt!2128126 input!5817))))

(assert (=> d!1668748 (isPrefix!5746 testedP!294 input!5817)))

(assert (=> d!1668748 (= (lemmaSamePrefixThenSameSuffix!2693 testedP!294 lt!2127874 testedP!294 lt!2128126 input!5817) lt!2128350)))

(declare-fun bs!1203532 () Bool)

(assert (= bs!1203532 d!1668748))

(declare-fun m!6223304 () Bool)

(assert (=> bs!1203532 m!6223304))

(assert (=> bs!1203532 m!6222344))

(assert (=> d!1668518 d!1668748))

(assert (=> b!5170433 d!1668672))

(assert (=> bm!362926 d!1668530))

(declare-fun bm!362973 () Bool)

(declare-fun call!362982 () C!29496)

(assert (=> bm!362973 (= call!362982 (head!11037 call!362935))))

(declare-fun bm!362974 () Bool)

(declare-fun call!362983 () Bool)

(assert (=> bm!362974 (= call!362983 (nullableZipper!1159 call!362934))))

(declare-fun b!5170708 () Bool)

(declare-fun e!3221815 () tuple2!63780)

(assert (=> b!5170708 (= e!3221815 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun b!5170709 () Bool)

(declare-fun c!890051 () Bool)

(assert (=> b!5170709 (= c!890051 call!362983)))

(declare-fun lt!2128359 () Unit!151666)

(declare-fun lt!2128370 () Unit!151666)

(assert (=> b!5170709 (= lt!2128359 lt!2128370)))

(declare-fun lt!2128368 () List!60189)

(declare-fun lt!2128364 () C!29496)

(assert (=> b!5170709 (= (++!13137 (++!13137 lt!2128118 (Cons!60065 lt!2128364 Nil!60065)) lt!2128368) input!5817)))

(assert (=> b!5170709 (= lt!2128370 (lemmaMoveElementToOtherListKeepsConcatEq!1574 lt!2128118 lt!2128364 lt!2128368 input!5817))))

(assert (=> b!5170709 (= lt!2128368 (tail!10146 call!362935))))

(assert (=> b!5170709 (= lt!2128364 (head!11037 call!362935))))

(declare-fun lt!2128360 () Unit!151666)

(declare-fun lt!2128366 () Unit!151666)

(assert (=> b!5170709 (= lt!2128360 lt!2128366)))

(assert (=> b!5170709 (isPrefix!5746 (++!13137 lt!2128118 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2128118)) Nil!60065)) input!5817)))

(assert (=> b!5170709 (= lt!2128366 (lemmaAddHeadSuffixToPrefixStillPrefix!1059 lt!2128118 input!5817))))

(declare-fun lt!2128357 () List!60189)

(assert (=> b!5170709 (= lt!2128357 (++!13137 lt!2128118 (Cons!60065 (head!11037 call!362935) Nil!60065)))))

(declare-fun lt!2128373 () Unit!151666)

(declare-fun e!3221818 () Unit!151666)

(assert (=> b!5170709 (= lt!2128373 e!3221818)))

(declare-fun c!890054 () Bool)

(assert (=> b!5170709 (= c!890054 (= (size!39649 lt!2128118) (size!39649 input!5817)))))

(declare-fun lt!2128353 () Unit!151666)

(declare-fun lt!2128375 () Unit!151666)

(assert (=> b!5170709 (= lt!2128353 lt!2128375)))

(assert (=> b!5170709 (<= (size!39649 lt!2128118) (size!39649 input!5817))))

(assert (=> b!5170709 (= lt!2128375 (lemmaIsPrefixThenSmallerEqSize!909 lt!2128118 input!5817))))

(declare-fun e!3221813 () tuple2!63780)

(declare-fun e!3221817 () tuple2!63780)

(assert (=> b!5170709 (= e!3221813 e!3221817)))

(declare-fun b!5170710 () Bool)

(declare-fun Unit!151692 () Unit!151666)

(assert (=> b!5170710 (= e!3221818 Unit!151692)))

(declare-fun lt!2128371 () Unit!151666)

(declare-fun call!362978 () Unit!151666)

(assert (=> b!5170710 (= lt!2128371 call!362978)))

(declare-fun call!362984 () Bool)

(assert (=> b!5170710 call!362984))

(declare-fun lt!2128376 () Unit!151666)

(assert (=> b!5170710 (= lt!2128376 lt!2128371)))

(declare-fun lt!2128369 () Unit!151666)

(declare-fun call!362985 () Unit!151666)

(assert (=> b!5170710 (= lt!2128369 call!362985)))

(assert (=> b!5170710 (= input!5817 lt!2128118)))

(declare-fun lt!2128358 () Unit!151666)

(assert (=> b!5170710 (= lt!2128358 lt!2128369)))

(assert (=> b!5170710 false))

(declare-fun bm!362975 () Bool)

(declare-fun call!362981 () List!60189)

(assert (=> bm!362975 (= call!362981 (tail!10146 call!362935))))

(declare-fun d!1668750 () Bool)

(declare-fun e!3221819 () Bool)

(assert (=> d!1668750 e!3221819))

(declare-fun res!2197723 () Bool)

(assert (=> d!1668750 (=> (not res!2197723) (not e!3221819))))

(declare-fun lt!2128354 () tuple2!63780)

(assert (=> d!1668750 (= res!2197723 (= (++!13137 (_1!35193 lt!2128354) (_2!35193 lt!2128354)) input!5817))))

(declare-fun e!3221816 () tuple2!63780)

(assert (=> d!1668750 (= lt!2128354 e!3221816)))

(declare-fun c!890050 () Bool)

(assert (=> d!1668750 (= c!890050 (lostCauseZipper!1326 call!362934))))

(declare-fun lt!2128352 () Unit!151666)

(declare-fun Unit!151693 () Unit!151666)

(assert (=> d!1668750 (= lt!2128352 Unit!151693)))

(assert (=> d!1668750 (= (getSuffix!3396 input!5817 lt!2128118) call!362935)))

(declare-fun lt!2128356 () Unit!151666)

(declare-fun lt!2128367 () Unit!151666)

(assert (=> d!1668750 (= lt!2128356 lt!2128367)))

(declare-fun lt!2128365 () List!60189)

(assert (=> d!1668750 (= call!362935 lt!2128365)))

(assert (=> d!1668750 (= lt!2128367 (lemmaSamePrefixThenSameSuffix!2693 lt!2128118 call!362935 lt!2128118 lt!2128365 input!5817))))

(assert (=> d!1668750 (= lt!2128365 (getSuffix!3396 input!5817 lt!2128118))))

(declare-fun lt!2128374 () Unit!151666)

(declare-fun lt!2128355 () Unit!151666)

(assert (=> d!1668750 (= lt!2128374 lt!2128355)))

(assert (=> d!1668750 (isPrefix!5746 lt!2128118 (++!13137 lt!2128118 call!362935))))

(assert (=> d!1668750 (= lt!2128355 (lemmaConcatTwoListThenFirstIsPrefix!3587 lt!2128118 call!362935))))

(assert (=> d!1668750 (= (++!13137 lt!2128118 call!362935) input!5817)))

(assert (=> d!1668750 (= (findLongestMatchInnerZipper!271 call!362934 lt!2128118 (+ lt!2127880 1) call!362935 input!5817 lt!2127870) lt!2128354)))

(declare-fun b!5170711 () Bool)

(declare-fun Unit!151694 () Unit!151666)

(assert (=> b!5170711 (= e!3221818 Unit!151694)))

(declare-fun b!5170712 () Bool)

(assert (=> b!5170712 (= e!3221816 e!3221813)))

(declare-fun c!890052 () Bool)

(assert (=> b!5170712 (= c!890052 (= (+ lt!2127880 1) lt!2127870))))

(declare-fun b!5170713 () Bool)

(declare-fun e!3221814 () tuple2!63780)

(assert (=> b!5170713 (= e!3221817 e!3221814)))

(declare-fun lt!2128372 () tuple2!63780)

(declare-fun call!362979 () tuple2!63780)

(assert (=> b!5170713 (= lt!2128372 call!362979)))

(declare-fun c!890055 () Bool)

(assert (=> b!5170713 (= c!890055 (isEmpty!32159 (_1!35193 lt!2128372)))))

(declare-fun b!5170714 () Bool)

(declare-fun c!890053 () Bool)

(assert (=> b!5170714 (= c!890053 call!362983)))

(declare-fun lt!2128362 () Unit!151666)

(declare-fun lt!2128361 () Unit!151666)

(assert (=> b!5170714 (= lt!2128362 lt!2128361)))

(assert (=> b!5170714 (= input!5817 lt!2128118)))

(assert (=> b!5170714 (= lt!2128361 call!362985)))

(declare-fun lt!2128351 () Unit!151666)

(declare-fun lt!2128363 () Unit!151666)

(assert (=> b!5170714 (= lt!2128351 lt!2128363)))

(assert (=> b!5170714 call!362984))

(assert (=> b!5170714 (= lt!2128363 call!362978)))

(assert (=> b!5170714 (= e!3221813 e!3221815)))

(declare-fun b!5170715 () Bool)

(assert (=> b!5170715 (= e!3221817 call!362979)))

(declare-fun bm!362976 () Bool)

(declare-fun call!362980 () (InoxSet Context!7994))

(assert (=> bm!362976 (= call!362980 (derivationStepZipper!967 call!362934 call!362982))))

(declare-fun bm!362977 () Bool)

(assert (=> bm!362977 (= call!362979 (findLongestMatchInnerZipper!271 call!362980 lt!2128357 (+ lt!2127880 1 1) call!362981 input!5817 lt!2127870))))

(declare-fun b!5170716 () Bool)

(assert (=> b!5170716 (= e!3221814 lt!2128372)))

(declare-fun b!5170717 () Bool)

(declare-fun e!3221820 () Bool)

(assert (=> b!5170717 (= e!3221819 e!3221820)))

(declare-fun res!2197724 () Bool)

(assert (=> b!5170717 (=> res!2197724 e!3221820)))

(assert (=> b!5170717 (= res!2197724 (isEmpty!32159 (_1!35193 lt!2128354)))))

(declare-fun b!5170718 () Bool)

(assert (=> b!5170718 (= e!3221814 (tuple2!63781 lt!2128118 call!362935))))

(declare-fun bm!362978 () Bool)

(assert (=> bm!362978 (= call!362978 (lemmaIsPrefixRefl!3753 input!5817 input!5817))))

(declare-fun bm!362979 () Bool)

(assert (=> bm!362979 (= call!362985 (lemmaIsPrefixSameLengthThenSameList!1395 input!5817 lt!2128118 input!5817))))

(declare-fun b!5170719 () Bool)

(assert (=> b!5170719 (= e!3221816 (tuple2!63781 Nil!60065 input!5817))))

(declare-fun bm!362980 () Bool)

(assert (=> bm!362980 (= call!362984 (isPrefix!5746 input!5817 input!5817))))

(declare-fun b!5170720 () Bool)

(assert (=> b!5170720 (= e!3221820 (>= (size!39649 (_1!35193 lt!2128354)) (size!39649 lt!2128118)))))

(declare-fun b!5170721 () Bool)

(assert (=> b!5170721 (= e!3221815 (tuple2!63781 lt!2128118 Nil!60065))))

(assert (= (and d!1668750 c!890050) b!5170719))

(assert (= (and d!1668750 (not c!890050)) b!5170712))

(assert (= (and b!5170712 c!890052) b!5170714))

(assert (= (and b!5170712 (not c!890052)) b!5170709))

(assert (= (and b!5170714 c!890053) b!5170721))

(assert (= (and b!5170714 (not c!890053)) b!5170708))

(assert (= (and b!5170709 c!890054) b!5170710))

(assert (= (and b!5170709 (not c!890054)) b!5170711))

(assert (= (and b!5170709 c!890051) b!5170713))

(assert (= (and b!5170709 (not c!890051)) b!5170715))

(assert (= (and b!5170713 c!890055) b!5170718))

(assert (= (and b!5170713 (not c!890055)) b!5170716))

(assert (= (or b!5170713 b!5170715) bm!362975))

(assert (= (or b!5170713 b!5170715) bm!362973))

(assert (= (or b!5170713 b!5170715) bm!362976))

(assert (= (or b!5170713 b!5170715) bm!362977))

(assert (= (or b!5170714 b!5170710) bm!362978))

(assert (= (or b!5170714 b!5170709) bm!362974))

(assert (= (or b!5170714 b!5170710) bm!362980))

(assert (= (or b!5170714 b!5170710) bm!362979))

(assert (= (and d!1668750 res!2197723) b!5170717))

(assert (= (and b!5170717 (not res!2197724)) b!5170720))

(assert (=> bm!362980 m!6222348))

(declare-fun m!6223306 () Bool)

(assert (=> bm!362977 m!6223306))

(declare-fun m!6223308 () Bool)

(assert (=> bm!362973 m!6223308))

(assert (=> bm!362978 m!6222346))

(declare-fun m!6223310 () Bool)

(assert (=> b!5170713 m!6223310))

(declare-fun m!6223312 () Bool)

(assert (=> d!1668750 m!6223312))

(declare-fun m!6223314 () Bool)

(assert (=> d!1668750 m!6223314))

(declare-fun m!6223316 () Bool)

(assert (=> d!1668750 m!6223316))

(declare-fun m!6223318 () Bool)

(assert (=> d!1668750 m!6223318))

(declare-fun m!6223320 () Bool)

(assert (=> d!1668750 m!6223320))

(declare-fun m!6223322 () Bool)

(assert (=> d!1668750 m!6223322))

(assert (=> d!1668750 m!6223320))

(declare-fun m!6223324 () Bool)

(assert (=> d!1668750 m!6223324))

(declare-fun m!6223326 () Bool)

(assert (=> b!5170720 m!6223326))

(declare-fun m!6223328 () Bool)

(assert (=> b!5170720 m!6223328))

(declare-fun m!6223330 () Bool)

(assert (=> b!5170717 m!6223330))

(declare-fun m!6223332 () Bool)

(assert (=> bm!362976 m!6223332))

(declare-fun m!6223334 () Bool)

(assert (=> b!5170709 m!6223334))

(assert (=> b!5170709 m!6223316))

(declare-fun m!6223336 () Bool)

(assert (=> b!5170709 m!6223336))

(assert (=> b!5170709 m!6223316))

(assert (=> b!5170709 m!6222336))

(assert (=> b!5170709 m!6223308))

(declare-fun m!6223338 () Bool)

(assert (=> b!5170709 m!6223338))

(declare-fun m!6223340 () Bool)

(assert (=> b!5170709 m!6223340))

(declare-fun m!6223342 () Bool)

(assert (=> b!5170709 m!6223342))

(declare-fun m!6223344 () Bool)

(assert (=> b!5170709 m!6223344))

(declare-fun m!6223346 () Bool)

(assert (=> b!5170709 m!6223346))

(assert (=> b!5170709 m!6223338))

(assert (=> b!5170709 m!6223328))

(assert (=> b!5170709 m!6223342))

(declare-fun m!6223348 () Bool)

(assert (=> b!5170709 m!6223348))

(declare-fun m!6223350 () Bool)

(assert (=> b!5170709 m!6223350))

(declare-fun m!6223352 () Bool)

(assert (=> b!5170709 m!6223352))

(assert (=> bm!362975 m!6223346))

(declare-fun m!6223354 () Bool)

(assert (=> bm!362974 m!6223354))

(declare-fun m!6223356 () Bool)

(assert (=> bm!362979 m!6223356))

(assert (=> bm!362931 d!1668750))

(declare-fun d!1668752 () Bool)

(assert (=> d!1668752 (= (head!11037 (tail!10146 lt!2127874)) (h!66513 (tail!10146 lt!2127874)))))

(assert (=> bm!362919 d!1668752))

(assert (=> b!5170435 d!1668516))

(declare-fun d!1668754 () Bool)

(assert (=> d!1668754 (= (isEmpty!32159 (_1!35193 lt!2128115)) ((_ is Nil!60065) (_1!35193 lt!2128115)))))

(assert (=> b!5170419 d!1668754))

(declare-fun d!1668756 () Bool)

(declare-fun c!890056 () Bool)

(assert (=> d!1668756 (= c!890056 ((_ is Cons!60065) (t!373342 testedP!294)))))

(declare-fun e!3221821 () (InoxSet Context!7994))

(assert (=> d!1668756 (= (derivationZipper!236 (derivationStepZipper!967 baseZ!62 (h!66513 testedP!294)) (t!373342 testedP!294)) e!3221821)))

(declare-fun b!5170722 () Bool)

(assert (=> b!5170722 (= e!3221821 (derivationZipper!236 (derivationStepZipper!967 (derivationStepZipper!967 baseZ!62 (h!66513 testedP!294)) (h!66513 (t!373342 testedP!294))) (t!373342 (t!373342 testedP!294))))))

(declare-fun b!5170723 () Bool)

(assert (=> b!5170723 (= e!3221821 (derivationStepZipper!967 baseZ!62 (h!66513 testedP!294)))))

(assert (= (and d!1668756 c!890056) b!5170722))

(assert (= (and d!1668756 (not c!890056)) b!5170723))

(assert (=> b!5170722 m!6222630))

(declare-fun m!6223358 () Bool)

(assert (=> b!5170722 m!6223358))

(assert (=> b!5170722 m!6223358))

(declare-fun m!6223360 () Bool)

(assert (=> b!5170722 m!6223360))

(assert (=> b!5170402 d!1668756))

(declare-fun bs!1203533 () Bool)

(declare-fun d!1668758 () Bool)

(assert (= bs!1203533 (and d!1668758 d!1668504)))

(declare-fun lambda!258165 () Int)

(assert (=> bs!1203533 (= (= (h!66513 testedP!294) lt!2127877) (= lambda!258165 lambda!258122))))

(assert (=> d!1668758 true))

(assert (=> d!1668758 (= (derivationStepZipper!967 baseZ!62 (h!66513 testedP!294)) (flatMap!444 baseZ!62 lambda!258165))))

(declare-fun bs!1203534 () Bool)

(assert (= bs!1203534 d!1668758))

(declare-fun m!6223362 () Bool)

(assert (=> bs!1203534 m!6223362))

(assert (=> b!5170402 d!1668758))

(declare-fun d!1668760 () Bool)

(declare-fun lt!2128379 () Bool)

(assert (=> d!1668760 (= lt!2128379 (exists!1914 (toList!8449 z!4581) lambda!258109))))

(declare-fun choose!38313 ((InoxSet Context!7994) Int) Bool)

(assert (=> d!1668760 (= lt!2128379 (choose!38313 z!4581 lambda!258109))))

(assert (=> d!1668760 (= (exists!1911 z!4581 lambda!258109) lt!2128379)))

(declare-fun bs!1203535 () Bool)

(assert (= bs!1203535 d!1668760))

(assert (=> bs!1203535 m!6223272))

(assert (=> bs!1203535 m!6223272))

(declare-fun m!6223364 () Bool)

(assert (=> bs!1203535 m!6223364))

(declare-fun m!6223366 () Bool)

(assert (=> bs!1203535 m!6223366))

(assert (=> d!1668448 d!1668760))

(declare-fun d!1668762 () Bool)

(declare-fun lt!2128380 () List!60189)

(assert (=> d!1668762 (= (++!13137 (t!373342 testedP!294) lt!2128380) (tail!10146 input!5817))))

(declare-fun e!3221822 () List!60189)

(assert (=> d!1668762 (= lt!2128380 e!3221822)))

(declare-fun c!890057 () Bool)

(assert (=> d!1668762 (= c!890057 ((_ is Cons!60065) (t!373342 testedP!294)))))

(assert (=> d!1668762 (>= (size!39649 (tail!10146 input!5817)) (size!39649 (t!373342 testedP!294)))))

(assert (=> d!1668762 (= (getSuffix!3396 (tail!10146 input!5817) (t!373342 testedP!294)) lt!2128380)))

(declare-fun b!5170724 () Bool)

(assert (=> b!5170724 (= e!3221822 (getSuffix!3396 (tail!10146 (tail!10146 input!5817)) (t!373342 (t!373342 testedP!294))))))

(declare-fun b!5170725 () Bool)

(assert (=> b!5170725 (= e!3221822 (tail!10146 input!5817))))

(assert (= (and d!1668762 c!890057) b!5170724))

(assert (= (and d!1668762 (not c!890057)) b!5170725))

(declare-fun m!6223368 () Bool)

(assert (=> d!1668762 m!6223368))

(assert (=> d!1668762 m!6222376))

(assert (=> d!1668762 m!6223160))

(assert (=> d!1668762 m!6222670))

(assert (=> b!5170724 m!6222376))

(assert (=> b!5170724 m!6223166))

(assert (=> b!5170724 m!6223166))

(declare-fun m!6223370 () Bool)

(assert (=> b!5170724 m!6223370))

(assert (=> b!5170428 d!1668762))

(assert (=> b!5170428 d!1668692))

(declare-fun d!1668764 () Bool)

(declare-fun lt!2128381 () Int)

(assert (=> d!1668764 (>= lt!2128381 0)))

(declare-fun e!3221823 () Int)

(assert (=> d!1668764 (= lt!2128381 e!3221823)))

(declare-fun c!890058 () Bool)

(assert (=> d!1668764 (= c!890058 ((_ is Nil!60065) (t!373342 input!5817)))))

(assert (=> d!1668764 (= (size!39649 (t!373342 input!5817)) lt!2128381)))

(declare-fun b!5170726 () Bool)

(assert (=> b!5170726 (= e!3221823 0)))

(declare-fun b!5170727 () Bool)

(assert (=> b!5170727 (= e!3221823 (+ 1 (size!39649 (t!373342 (t!373342 input!5817)))))))

(assert (= (and d!1668764 c!890058) b!5170726))

(assert (= (and d!1668764 (not c!890058)) b!5170727))

(declare-fun m!6223372 () Bool)

(assert (=> b!5170727 m!6223372))

(assert (=> b!5170409 d!1668764))

(declare-fun d!1668766 () Bool)

(declare-fun lt!2128382 () Int)

(assert (=> d!1668766 (>= lt!2128382 0)))

(declare-fun e!3221824 () Int)

(assert (=> d!1668766 (= lt!2128382 e!3221824)))

(declare-fun c!890059 () Bool)

(assert (=> d!1668766 (= c!890059 ((_ is Nil!60065) lt!2127886))))

(assert (=> d!1668766 (= (size!39649 lt!2127886) lt!2128382)))

(declare-fun b!5170728 () Bool)

(assert (=> b!5170728 (= e!3221824 0)))

(declare-fun b!5170729 () Bool)

(assert (=> b!5170729 (= e!3221824 (+ 1 (size!39649 (t!373342 lt!2127886))))))

(assert (= (and d!1668766 c!890059) b!5170728))

(assert (= (and d!1668766 (not c!890059)) b!5170729))

(declare-fun m!6223374 () Bool)

(assert (=> b!5170729 m!6223374))

(assert (=> b!5170216 d!1668766))

(assert (=> b!5170216 d!1668524))

(declare-fun d!1668768 () Bool)

(declare-fun lt!2128383 () Int)

(assert (=> d!1668768 (>= lt!2128383 0)))

(declare-fun e!3221825 () Int)

(assert (=> d!1668768 (= lt!2128383 e!3221825)))

(declare-fun c!890060 () Bool)

(assert (=> d!1668768 (= c!890060 ((_ is Nil!60065) (Cons!60065 lt!2127877 Nil!60065)))))

(assert (=> d!1668768 (= (size!39649 (Cons!60065 lt!2127877 Nil!60065)) lt!2128383)))

(declare-fun b!5170730 () Bool)

(assert (=> b!5170730 (= e!3221825 0)))

(declare-fun b!5170731 () Bool)

(assert (=> b!5170731 (= e!3221825 (+ 1 (size!39649 (t!373342 (Cons!60065 lt!2127877 Nil!60065)))))))

(assert (= (and d!1668768 c!890060) b!5170730))

(assert (= (and d!1668768 (not c!890060)) b!5170731))

(declare-fun m!6223376 () Bool)

(assert (=> b!5170731 m!6223376))

(assert (=> b!5170216 d!1668768))

(declare-fun d!1668770 () Bool)

(assert (=> d!1668770 (= (isEmpty!32159 (_1!35193 lt!2128133)) ((_ is Nil!60065) (_1!35193 lt!2128133)))))

(assert (=> b!5170415 d!1668770))

(declare-fun d!1668772 () Bool)

(assert (=> d!1668772 (= input!5817 lt!2127879)))

(declare-fun lt!2128384 () Unit!151666)

(assert (=> d!1668772 (= lt!2128384 (choose!38304 input!5817 lt!2127879 input!5817))))

(assert (=> d!1668772 (isPrefix!5746 input!5817 input!5817)))

(assert (=> d!1668772 (= (lemmaIsPrefixSameLengthThenSameList!1395 input!5817 lt!2127879 input!5817) lt!2128384)))

(declare-fun bs!1203536 () Bool)

(assert (= bs!1203536 d!1668772))

(declare-fun m!6223378 () Bool)

(assert (=> bs!1203536 m!6223378))

(assert (=> bs!1203536 m!6222348))

(assert (=> bm!362925 d!1668772))

(assert (=> bm!362927 d!1668444))

(declare-fun b!5170732 () Bool)

(declare-fun e!3221828 () Bool)

(declare-fun e!3221826 () Bool)

(assert (=> b!5170732 (= e!3221828 e!3221826)))

(declare-fun res!2197728 () Bool)

(assert (=> b!5170732 (=> (not res!2197728) (not e!3221826))))

(assert (=> b!5170732 (= res!2197728 (not ((_ is Nil!60065) (tail!10146 input!5817))))))

(declare-fun b!5170733 () Bool)

(declare-fun res!2197726 () Bool)

(assert (=> b!5170733 (=> (not res!2197726) (not e!3221826))))

(assert (=> b!5170733 (= res!2197726 (= (head!11037 (tail!10146 lt!2127879)) (head!11037 (tail!10146 input!5817))))))

(declare-fun d!1668774 () Bool)

(declare-fun e!3221827 () Bool)

(assert (=> d!1668774 e!3221827))

(declare-fun res!2197727 () Bool)

(assert (=> d!1668774 (=> res!2197727 e!3221827)))

(declare-fun lt!2128385 () Bool)

(assert (=> d!1668774 (= res!2197727 (not lt!2128385))))

(assert (=> d!1668774 (= lt!2128385 e!3221828)))

(declare-fun res!2197725 () Bool)

(assert (=> d!1668774 (=> res!2197725 e!3221828)))

(assert (=> d!1668774 (= res!2197725 ((_ is Nil!60065) (tail!10146 lt!2127879)))))

(assert (=> d!1668774 (= (isPrefix!5746 (tail!10146 lt!2127879) (tail!10146 input!5817)) lt!2128385)))

(declare-fun b!5170735 () Bool)

(assert (=> b!5170735 (= e!3221827 (>= (size!39649 (tail!10146 input!5817)) (size!39649 (tail!10146 lt!2127879))))))

(declare-fun b!5170734 () Bool)

(assert (=> b!5170734 (= e!3221826 (isPrefix!5746 (tail!10146 (tail!10146 lt!2127879)) (tail!10146 (tail!10146 input!5817))))))

(assert (= (and d!1668774 (not res!2197725)) b!5170732))

(assert (= (and b!5170732 res!2197728) b!5170733))

(assert (= (and b!5170733 res!2197726) b!5170734))

(assert (= (and d!1668774 (not res!2197727)) b!5170735))

(assert (=> b!5170733 m!6222374))

(declare-fun m!6223380 () Bool)

(assert (=> b!5170733 m!6223380))

(assert (=> b!5170733 m!6222376))

(assert (=> b!5170733 m!6223158))

(assert (=> b!5170735 m!6222376))

(assert (=> b!5170735 m!6223160))

(assert (=> b!5170735 m!6222374))

(declare-fun m!6223382 () Bool)

(assert (=> b!5170735 m!6223382))

(assert (=> b!5170734 m!6222374))

(declare-fun m!6223384 () Bool)

(assert (=> b!5170734 m!6223384))

(assert (=> b!5170734 m!6222376))

(assert (=> b!5170734 m!6223166))

(assert (=> b!5170734 m!6223384))

(assert (=> b!5170734 m!6223166))

(declare-fun m!6223386 () Bool)

(assert (=> b!5170734 m!6223386))

(assert (=> b!5170204 d!1668774))

(declare-fun d!1668776 () Bool)

(assert (=> d!1668776 (= (tail!10146 lt!2127879) (t!373342 lt!2127879))))

(assert (=> b!5170204 d!1668776))

(assert (=> b!5170204 d!1668692))

(declare-fun bs!1203537 () Bool)

(declare-fun d!1668778 () Bool)

(assert (= bs!1203537 (and d!1668778 d!1668504)))

(declare-fun lambda!258166 () Int)

(assert (=> bs!1203537 (= (= call!362928 lt!2127877) (= lambda!258166 lambda!258122))))

(declare-fun bs!1203538 () Bool)

(assert (= bs!1203538 (and d!1668778 d!1668758)))

(assert (=> bs!1203538 (= (= call!362928 (h!66513 testedP!294)) (= lambda!258166 lambda!258165))))

(assert (=> d!1668778 true))

(assert (=> d!1668778 (= (derivationStepZipper!967 lt!2127871 call!362928) (flatMap!444 lt!2127871 lambda!258166))))

(declare-fun bs!1203539 () Bool)

(assert (= bs!1203539 d!1668778))

(declare-fun m!6223388 () Bool)

(assert (=> bs!1203539 m!6223388))

(assert (=> bm!362922 d!1668778))

(assert (=> bm!362933 d!1668532))

(assert (=> b!5170377 d!1668516))

(declare-fun d!1668780 () Bool)

(declare-fun lt!2128386 () List!60189)

(assert (=> d!1668780 (= (++!13137 lt!2127879 lt!2128386) input!5817)))

(declare-fun e!3221829 () List!60189)

(assert (=> d!1668780 (= lt!2128386 e!3221829)))

(declare-fun c!890061 () Bool)

(assert (=> d!1668780 (= c!890061 ((_ is Cons!60065) lt!2127879))))

(assert (=> d!1668780 (>= (size!39649 input!5817) (size!39649 lt!2127879))))

(assert (=> d!1668780 (= (getSuffix!3396 input!5817 lt!2127879) lt!2128386)))

(declare-fun b!5170736 () Bool)

(assert (=> b!5170736 (= e!3221829 (getSuffix!3396 (tail!10146 input!5817) (t!373342 lt!2127879)))))

(declare-fun b!5170737 () Bool)

(assert (=> b!5170737 (= e!3221829 input!5817)))

(assert (= (and d!1668780 c!890061) b!5170736))

(assert (= (and d!1668780 (not c!890061)) b!5170737))

(declare-fun m!6223390 () Bool)

(assert (=> d!1668780 m!6223390))

(assert (=> d!1668780 m!6222336))

(assert (=> d!1668780 m!6222372))

(assert (=> b!5170736 m!6222376))

(assert (=> b!5170736 m!6222376))

(declare-fun m!6223392 () Bool)

(assert (=> b!5170736 m!6223392))

(assert (=> b!5170377 d!1668780))

(declare-fun b!5170738 () Bool)

(declare-fun e!3221832 () Bool)

(declare-fun e!3221830 () Bool)

(assert (=> b!5170738 (= e!3221832 e!3221830)))

(declare-fun res!2197732 () Bool)

(assert (=> b!5170738 (=> (not res!2197732) (not e!3221830))))

(assert (=> b!5170738 (= res!2197732 (not ((_ is Nil!60065) input!5817)))))

(declare-fun b!5170739 () Bool)

(declare-fun res!2197730 () Bool)

(assert (=> b!5170739 (=> (not res!2197730) (not e!3221830))))

(assert (=> b!5170739 (= res!2197730 (= (head!11037 (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065))) (head!11037 input!5817)))))

(declare-fun d!1668782 () Bool)

(declare-fun e!3221831 () Bool)

(assert (=> d!1668782 e!3221831))

(declare-fun res!2197731 () Bool)

(assert (=> d!1668782 (=> res!2197731 e!3221831)))

(declare-fun lt!2128387 () Bool)

(assert (=> d!1668782 (= res!2197731 (not lt!2128387))))

(assert (=> d!1668782 (= lt!2128387 e!3221832)))

(declare-fun res!2197729 () Bool)

(assert (=> d!1668782 (=> res!2197729 e!3221832)))

(assert (=> d!1668782 (= res!2197729 ((_ is Nil!60065) (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065))))))

(assert (=> d!1668782 (= (isPrefix!5746 (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065)) input!5817) lt!2128387)))

(declare-fun b!5170741 () Bool)

(assert (=> b!5170741 (= e!3221831 (>= (size!39649 input!5817) (size!39649 (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065)))))))

(declare-fun b!5170740 () Bool)

(assert (=> b!5170740 (= e!3221830 (isPrefix!5746 (tail!10146 (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065))) (tail!10146 input!5817)))))

(assert (= (and d!1668782 (not res!2197729)) b!5170738))

(assert (= (and b!5170738 res!2197732) b!5170739))

(assert (= (and b!5170739 res!2197730) b!5170740))

(assert (= (and d!1668782 (not res!2197731)) b!5170741))

(assert (=> b!5170739 m!6222596))

(declare-fun m!6223394 () Bool)

(assert (=> b!5170739 m!6223394))

(assert (=> b!5170739 m!6222370))

(assert (=> b!5170741 m!6222336))

(assert (=> b!5170741 m!6222596))

(declare-fun m!6223396 () Bool)

(assert (=> b!5170741 m!6223396))

(assert (=> b!5170740 m!6222596))

(declare-fun m!6223398 () Bool)

(assert (=> b!5170740 m!6223398))

(assert (=> b!5170740 m!6222376))

(assert (=> b!5170740 m!6223398))

(assert (=> b!5170740 m!6222376))

(declare-fun m!6223400 () Bool)

(assert (=> b!5170740 m!6223400))

(assert (=> b!5170377 d!1668782))

(declare-fun d!1668784 () Bool)

(assert (=> d!1668784 (= (tail!10146 (tail!10146 lt!2127874)) (t!373342 (tail!10146 lt!2127874)))))

(assert (=> b!5170377 d!1668784))

(declare-fun b!5170745 () Bool)

(declare-fun lt!2128388 () List!60189)

(declare-fun e!3221834 () Bool)

(assert (=> b!5170745 (= e!3221834 (or (not (= (Cons!60065 lt!2128089 Nil!60065) Nil!60065)) (= lt!2128388 lt!2127879)))))

(declare-fun d!1668786 () Bool)

(assert (=> d!1668786 e!3221834))

(declare-fun res!2197734 () Bool)

(assert (=> d!1668786 (=> (not res!2197734) (not e!3221834))))

(assert (=> d!1668786 (= res!2197734 (= (content!10644 lt!2128388) ((_ map or) (content!10644 lt!2127879) (content!10644 (Cons!60065 lt!2128089 Nil!60065)))))))

(declare-fun e!3221833 () List!60189)

(assert (=> d!1668786 (= lt!2128388 e!3221833)))

(declare-fun c!890062 () Bool)

(assert (=> d!1668786 (= c!890062 ((_ is Nil!60065) lt!2127879))))

(assert (=> d!1668786 (= (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065)) lt!2128388)))

(declare-fun b!5170742 () Bool)

(assert (=> b!5170742 (= e!3221833 (Cons!60065 lt!2128089 Nil!60065))))

(declare-fun b!5170744 () Bool)

(declare-fun res!2197733 () Bool)

(assert (=> b!5170744 (=> (not res!2197733) (not e!3221834))))

(assert (=> b!5170744 (= res!2197733 (= (size!39649 lt!2128388) (+ (size!39649 lt!2127879) (size!39649 (Cons!60065 lt!2128089 Nil!60065)))))))

(declare-fun b!5170743 () Bool)

(assert (=> b!5170743 (= e!3221833 (Cons!60065 (h!66513 lt!2127879) (++!13137 (t!373342 lt!2127879) (Cons!60065 lt!2128089 Nil!60065))))))

(assert (= (and d!1668786 c!890062) b!5170742))

(assert (= (and d!1668786 (not c!890062)) b!5170743))

(assert (= (and d!1668786 res!2197734) b!5170744))

(assert (= (and b!5170744 res!2197733) b!5170745))

(declare-fun m!6223402 () Bool)

(assert (=> d!1668786 m!6223402))

(declare-fun m!6223404 () Bool)

(assert (=> d!1668786 m!6223404))

(declare-fun m!6223406 () Bool)

(assert (=> d!1668786 m!6223406))

(declare-fun m!6223408 () Bool)

(assert (=> b!5170744 m!6223408))

(assert (=> b!5170744 m!6222372))

(declare-fun m!6223410 () Bool)

(assert (=> b!5170744 m!6223410))

(declare-fun m!6223412 () Bool)

(assert (=> b!5170743 m!6223412))

(assert (=> b!5170377 d!1668786))

(declare-fun d!1668788 () Bool)

(assert (=> d!1668788 (= (++!13137 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065)) lt!2128093) input!5817)))

(declare-fun lt!2128389 () Unit!151666)

(assert (=> d!1668788 (= lt!2128389 (choose!38308 lt!2127879 lt!2128089 lt!2128093 input!5817))))

(assert (=> d!1668788 (= (++!13137 lt!2127879 (Cons!60065 lt!2128089 lt!2128093)) input!5817)))

(assert (=> d!1668788 (= (lemmaMoveElementToOtherListKeepsConcatEq!1574 lt!2127879 lt!2128089 lt!2128093 input!5817) lt!2128389)))

(declare-fun bs!1203540 () Bool)

(assert (= bs!1203540 d!1668788))

(assert (=> bs!1203540 m!6222592))

(assert (=> bs!1203540 m!6222592))

(assert (=> bs!1203540 m!6222594))

(declare-fun m!6223414 () Bool)

(assert (=> bs!1203540 m!6223414))

(declare-fun m!6223416 () Bool)

(assert (=> bs!1203540 m!6223416))

(assert (=> b!5170377 d!1668788))

(declare-fun lt!2128390 () List!60189)

(declare-fun e!3221836 () Bool)

(declare-fun b!5170749 () Bool)

(assert (=> b!5170749 (= e!3221836 (or (not (= (Cons!60065 (head!11037 (tail!10146 lt!2127874)) Nil!60065) Nil!60065)) (= lt!2128390 lt!2127879)))))

(declare-fun d!1668790 () Bool)

(assert (=> d!1668790 e!3221836))

(declare-fun res!2197736 () Bool)

(assert (=> d!1668790 (=> (not res!2197736) (not e!3221836))))

(assert (=> d!1668790 (= res!2197736 (= (content!10644 lt!2128390) ((_ map or) (content!10644 lt!2127879) (content!10644 (Cons!60065 (head!11037 (tail!10146 lt!2127874)) Nil!60065)))))))

(declare-fun e!3221835 () List!60189)

(assert (=> d!1668790 (= lt!2128390 e!3221835)))

(declare-fun c!890063 () Bool)

(assert (=> d!1668790 (= c!890063 ((_ is Nil!60065) lt!2127879))))

(assert (=> d!1668790 (= (++!13137 lt!2127879 (Cons!60065 (head!11037 (tail!10146 lt!2127874)) Nil!60065)) lt!2128390)))

(declare-fun b!5170746 () Bool)

(assert (=> b!5170746 (= e!3221835 (Cons!60065 (head!11037 (tail!10146 lt!2127874)) Nil!60065))))

(declare-fun b!5170748 () Bool)

(declare-fun res!2197735 () Bool)

(assert (=> b!5170748 (=> (not res!2197735) (not e!3221836))))

(assert (=> b!5170748 (= res!2197735 (= (size!39649 lt!2128390) (+ (size!39649 lt!2127879) (size!39649 (Cons!60065 (head!11037 (tail!10146 lt!2127874)) Nil!60065)))))))

(declare-fun b!5170747 () Bool)

(assert (=> b!5170747 (= e!3221835 (Cons!60065 (h!66513 lt!2127879) (++!13137 (t!373342 lt!2127879) (Cons!60065 (head!11037 (tail!10146 lt!2127874)) Nil!60065))))))

(assert (= (and d!1668790 c!890063) b!5170746))

(assert (= (and d!1668790 (not c!890063)) b!5170747))

(assert (= (and d!1668790 res!2197736) b!5170748))

(assert (= (and b!5170748 res!2197735) b!5170749))

(declare-fun m!6223418 () Bool)

(assert (=> d!1668790 m!6223418))

(assert (=> d!1668790 m!6223404))

(declare-fun m!6223420 () Bool)

(assert (=> d!1668790 m!6223420))

(declare-fun m!6223422 () Bool)

(assert (=> b!5170748 m!6223422))

(assert (=> b!5170748 m!6222372))

(declare-fun m!6223424 () Bool)

(assert (=> b!5170748 m!6223424))

(declare-fun m!6223426 () Bool)

(assert (=> b!5170747 m!6223426))

(assert (=> b!5170377 d!1668790))

(declare-fun d!1668792 () Bool)

(assert (=> d!1668792 (= (head!11037 (getSuffix!3396 input!5817 lt!2127879)) (h!66513 (getSuffix!3396 input!5817 lt!2127879)))))

(assert (=> b!5170377 d!1668792))

(assert (=> b!5170377 d!1668752))

(declare-fun e!3221838 () Bool)

(declare-fun lt!2128391 () List!60189)

(declare-fun b!5170753 () Bool)

(assert (=> b!5170753 (= e!3221838 (or (not (= (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065) Nil!60065)) (= lt!2128391 lt!2127879)))))

(declare-fun d!1668794 () Bool)

(assert (=> d!1668794 e!3221838))

(declare-fun res!2197738 () Bool)

(assert (=> d!1668794 (=> (not res!2197738) (not e!3221838))))

(assert (=> d!1668794 (= res!2197738 (= (content!10644 lt!2128391) ((_ map or) (content!10644 lt!2127879) (content!10644 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065)))))))

(declare-fun e!3221837 () List!60189)

(assert (=> d!1668794 (= lt!2128391 e!3221837)))

(declare-fun c!890064 () Bool)

(assert (=> d!1668794 (= c!890064 ((_ is Nil!60065) lt!2127879))))

(assert (=> d!1668794 (= (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065)) lt!2128391)))

(declare-fun b!5170750 () Bool)

(assert (=> b!5170750 (= e!3221837 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065))))

(declare-fun b!5170752 () Bool)

(declare-fun res!2197737 () Bool)

(assert (=> b!5170752 (=> (not res!2197737) (not e!3221838))))

(assert (=> b!5170752 (= res!2197737 (= (size!39649 lt!2128391) (+ (size!39649 lt!2127879) (size!39649 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065)))))))

(declare-fun b!5170751 () Bool)

(assert (=> b!5170751 (= e!3221837 (Cons!60065 (h!66513 lt!2127879) (++!13137 (t!373342 lt!2127879) (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065))))))

(assert (= (and d!1668794 c!890064) b!5170750))

(assert (= (and d!1668794 (not c!890064)) b!5170751))

(assert (= (and d!1668794 res!2197738) b!5170752))

(assert (= (and b!5170752 res!2197737) b!5170753))

(declare-fun m!6223428 () Bool)

(assert (=> d!1668794 m!6223428))

(assert (=> d!1668794 m!6223404))

(declare-fun m!6223430 () Bool)

(assert (=> d!1668794 m!6223430))

(declare-fun m!6223432 () Bool)

(assert (=> b!5170752 m!6223432))

(assert (=> b!5170752 m!6222372))

(declare-fun m!6223434 () Bool)

(assert (=> b!5170752 m!6223434))

(declare-fun m!6223436 () Bool)

(assert (=> b!5170751 m!6223436))

(assert (=> b!5170377 d!1668794))

(declare-fun b!5170757 () Bool)

(declare-fun lt!2128392 () List!60189)

(declare-fun e!3221840 () Bool)

(assert (=> b!5170757 (= e!3221840 (or (not (= lt!2128093 Nil!60065)) (= lt!2128392 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065)))))))

(declare-fun d!1668796 () Bool)

(assert (=> d!1668796 e!3221840))

(declare-fun res!2197740 () Bool)

(assert (=> d!1668796 (=> (not res!2197740) (not e!3221840))))

(assert (=> d!1668796 (= res!2197740 (= (content!10644 lt!2128392) ((_ map or) (content!10644 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065))) (content!10644 lt!2128093))))))

(declare-fun e!3221839 () List!60189)

(assert (=> d!1668796 (= lt!2128392 e!3221839)))

(declare-fun c!890065 () Bool)

(assert (=> d!1668796 (= c!890065 ((_ is Nil!60065) (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065))))))

(assert (=> d!1668796 (= (++!13137 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065)) lt!2128093) lt!2128392)))

(declare-fun b!5170754 () Bool)

(assert (=> b!5170754 (= e!3221839 lt!2128093)))

(declare-fun b!5170756 () Bool)

(declare-fun res!2197739 () Bool)

(assert (=> b!5170756 (=> (not res!2197739) (not e!3221840))))

(assert (=> b!5170756 (= res!2197739 (= (size!39649 lt!2128392) (+ (size!39649 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065))) (size!39649 lt!2128093))))))

(declare-fun b!5170755 () Bool)

(assert (=> b!5170755 (= e!3221839 (Cons!60065 (h!66513 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065))) (++!13137 (t!373342 (++!13137 lt!2127879 (Cons!60065 lt!2128089 Nil!60065))) lt!2128093)))))

(assert (= (and d!1668796 c!890065) b!5170754))

(assert (= (and d!1668796 (not c!890065)) b!5170755))

(assert (= (and d!1668796 res!2197740) b!5170756))

(assert (= (and b!5170756 res!2197739) b!5170757))

(declare-fun m!6223438 () Bool)

(assert (=> d!1668796 m!6223438))

(assert (=> d!1668796 m!6222592))

(declare-fun m!6223440 () Bool)

(assert (=> d!1668796 m!6223440))

(declare-fun m!6223442 () Bool)

(assert (=> d!1668796 m!6223442))

(declare-fun m!6223444 () Bool)

(assert (=> b!5170756 m!6223444))

(assert (=> b!5170756 m!6222592))

(declare-fun m!6223446 () Bool)

(assert (=> b!5170756 m!6223446))

(declare-fun m!6223448 () Bool)

(assert (=> b!5170756 m!6223448))

(declare-fun m!6223450 () Bool)

(assert (=> b!5170755 m!6223450))

(assert (=> b!5170377 d!1668796))

(declare-fun d!1668798 () Bool)

(assert (=> d!1668798 (isPrefix!5746 (++!13137 lt!2127879 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 lt!2127879)) Nil!60065)) input!5817)))

(declare-fun lt!2128393 () Unit!151666)

(assert (=> d!1668798 (= lt!2128393 (choose!38298 lt!2127879 input!5817))))

(assert (=> d!1668798 (isPrefix!5746 lt!2127879 input!5817)))

(assert (=> d!1668798 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1059 lt!2127879 input!5817) lt!2128393)))

(declare-fun bs!1203541 () Bool)

(assert (= bs!1203541 d!1668798))

(assert (=> bs!1203541 m!6222572))

(assert (=> bs!1203541 m!6222590))

(assert (=> bs!1203541 m!6222572))

(declare-fun m!6223452 () Bool)

(assert (=> bs!1203541 m!6223452))

(assert (=> bs!1203541 m!6222596))

(assert (=> bs!1203541 m!6222596))

(assert (=> bs!1203541 m!6222602))

(assert (=> bs!1203541 m!6222352))

(assert (=> b!5170377 d!1668798))

(declare-fun d!1668800 () Bool)

(declare-fun lt!2128394 () Int)

(assert (=> d!1668800 (>= lt!2128394 0)))

(declare-fun e!3221841 () Int)

(assert (=> d!1668800 (= lt!2128394 e!3221841)))

(declare-fun c!890066 () Bool)

(assert (=> d!1668800 (= c!890066 ((_ is Nil!60065) lt!2127879))))

(assert (=> d!1668800 (= (size!39649 lt!2127879) lt!2128394)))

(declare-fun b!5170758 () Bool)

(assert (=> b!5170758 (= e!3221841 0)))

(declare-fun b!5170759 () Bool)

(assert (=> b!5170759 (= e!3221841 (+ 1 (size!39649 (t!373342 lt!2127879))))))

(assert (= (and d!1668800 c!890066) b!5170758))

(assert (= (and d!1668800 (not c!890066)) b!5170759))

(declare-fun m!6223454 () Bool)

(assert (=> b!5170759 m!6223454))

(assert (=> b!5170377 d!1668800))

(declare-fun d!1668802 () Bool)

(assert (=> d!1668802 (<= (size!39649 lt!2127879) (size!39649 input!5817))))

(declare-fun lt!2128395 () Unit!151666)

(assert (=> d!1668802 (= lt!2128395 (choose!38301 lt!2127879 input!5817))))

(assert (=> d!1668802 (isPrefix!5746 lt!2127879 input!5817)))

(assert (=> d!1668802 (= (lemmaIsPrefixThenSmallerEqSize!909 lt!2127879 input!5817) lt!2128395)))

(declare-fun bs!1203542 () Bool)

(assert (= bs!1203542 d!1668802))

(assert (=> bs!1203542 m!6222372))

(assert (=> bs!1203542 m!6222336))

(declare-fun m!6223456 () Bool)

(assert (=> bs!1203542 m!6223456))

(assert (=> bs!1203542 m!6222352))

(assert (=> b!5170377 d!1668802))

(declare-fun d!1668804 () Bool)

(assert (=> d!1668804 (= (head!11037 testedP!294) (h!66513 testedP!294))))

(assert (=> b!5170393 d!1668804))

(assert (=> b!5170393 d!1668672))

(assert (=> bm!362921 d!1668784))

(assert (=> b!5170395 d!1668516))

(assert (=> b!5170395 d!1668524))

(assert (=> bm!362934 d!1668530))

(declare-fun d!1668806 () Bool)

(declare-fun c!890067 () Bool)

(assert (=> d!1668806 (= c!890067 ((_ is Cons!60065) (t!373342 lt!2127879)))))

(declare-fun e!3221842 () (InoxSet Context!7994))

(assert (=> d!1668806 (= (derivationZipper!236 (derivationStepZipper!967 baseZ!62 (h!66513 lt!2127879)) (t!373342 lt!2127879)) e!3221842)))

(declare-fun b!5170760 () Bool)

(assert (=> b!5170760 (= e!3221842 (derivationZipper!236 (derivationStepZipper!967 (derivationStepZipper!967 baseZ!62 (h!66513 lt!2127879)) (h!66513 (t!373342 lt!2127879))) (t!373342 (t!373342 lt!2127879))))))

(declare-fun b!5170761 () Bool)

(assert (=> b!5170761 (= e!3221842 (derivationStepZipper!967 baseZ!62 (h!66513 lt!2127879)))))

(assert (= (and d!1668806 c!890067) b!5170760))

(assert (= (and d!1668806 (not c!890067)) b!5170761))

(assert (=> b!5170760 m!6222622))

(declare-fun m!6223458 () Bool)

(assert (=> b!5170760 m!6223458))

(assert (=> b!5170760 m!6223458))

(declare-fun m!6223460 () Bool)

(assert (=> b!5170760 m!6223460))

(assert (=> b!5170400 d!1668806))

(declare-fun bs!1203543 () Bool)

(declare-fun d!1668808 () Bool)

(assert (= bs!1203543 (and d!1668808 d!1668504)))

(declare-fun lambda!258167 () Int)

(assert (=> bs!1203543 (= (= (h!66513 lt!2127879) lt!2127877) (= lambda!258167 lambda!258122))))

(declare-fun bs!1203544 () Bool)

(assert (= bs!1203544 (and d!1668808 d!1668758)))

(assert (=> bs!1203544 (= (= (h!66513 lt!2127879) (h!66513 testedP!294)) (= lambda!258167 lambda!258165))))

(declare-fun bs!1203545 () Bool)

(assert (= bs!1203545 (and d!1668808 d!1668778)))

(assert (=> bs!1203545 (= (= (h!66513 lt!2127879) call!362928) (= lambda!258167 lambda!258166))))

(assert (=> d!1668808 true))

(assert (=> d!1668808 (= (derivationStepZipper!967 baseZ!62 (h!66513 lt!2127879)) (flatMap!444 baseZ!62 lambda!258167))))

(declare-fun bs!1203546 () Bool)

(assert (= bs!1203546 d!1668808))

(declare-fun m!6223462 () Bool)

(assert (=> bs!1203546 m!6223462))

(assert (=> b!5170400 d!1668808))

(declare-fun d!1668810 () Bool)

(declare-fun c!890070 () Bool)

(assert (=> d!1668810 (= c!890070 ((_ is Nil!60065) lt!2127886))))

(declare-fun e!3221845 () (InoxSet C!29496))

(assert (=> d!1668810 (= (content!10644 lt!2127886) e!3221845)))

(declare-fun b!5170766 () Bool)

(assert (=> b!5170766 (= e!3221845 ((as const (Array C!29496 Bool)) false))))

(declare-fun b!5170767 () Bool)

(assert (=> b!5170767 (= e!3221845 ((_ map or) (store ((as const (Array C!29496 Bool)) false) (h!66513 lt!2127886) true) (content!10644 (t!373342 lt!2127886))))))

(assert (= (and d!1668810 c!890070) b!5170766))

(assert (= (and d!1668810 (not c!890070)) b!5170767))

(declare-fun m!6223464 () Bool)

(assert (=> b!5170767 m!6223464))

(declare-fun m!6223466 () Bool)

(assert (=> b!5170767 m!6223466))

(assert (=> d!1668442 d!1668810))

(declare-fun d!1668812 () Bool)

(declare-fun c!890071 () Bool)

(assert (=> d!1668812 (= c!890071 ((_ is Nil!60065) testedP!294))))

(declare-fun e!3221846 () (InoxSet C!29496))

(assert (=> d!1668812 (= (content!10644 testedP!294) e!3221846)))

(declare-fun b!5170768 () Bool)

(assert (=> b!5170768 (= e!3221846 ((as const (Array C!29496 Bool)) false))))

(declare-fun b!5170769 () Bool)

(assert (=> b!5170769 (= e!3221846 ((_ map or) (store ((as const (Array C!29496 Bool)) false) (h!66513 testedP!294) true) (content!10644 (t!373342 testedP!294))))))

(assert (= (and d!1668812 c!890071) b!5170768))

(assert (= (and d!1668812 (not c!890071)) b!5170769))

(declare-fun m!6223468 () Bool)

(assert (=> b!5170769 m!6223468))

(declare-fun m!6223470 () Bool)

(assert (=> b!5170769 m!6223470))

(assert (=> d!1668442 d!1668812))

(declare-fun d!1668814 () Bool)

(declare-fun c!890072 () Bool)

(assert (=> d!1668814 (= c!890072 ((_ is Nil!60065) (Cons!60065 lt!2127877 Nil!60065)))))

(declare-fun e!3221847 () (InoxSet C!29496))

(assert (=> d!1668814 (= (content!10644 (Cons!60065 lt!2127877 Nil!60065)) e!3221847)))

(declare-fun b!5170770 () Bool)

(assert (=> b!5170770 (= e!3221847 ((as const (Array C!29496 Bool)) false))))

(declare-fun b!5170771 () Bool)

(assert (=> b!5170771 (= e!3221847 ((_ map or) (store ((as const (Array C!29496 Bool)) false) (h!66513 (Cons!60065 lt!2127877 Nil!60065)) true) (content!10644 (t!373342 (Cons!60065 lt!2127877 Nil!60065)))))))

(assert (= (and d!1668814 c!890072) b!5170770))

(assert (= (and d!1668814 (not c!890072)) b!5170771))

(declare-fun m!6223472 () Bool)

(assert (=> b!5170771 m!6223472))

(declare-fun m!6223474 () Bool)

(assert (=> b!5170771 m!6223474))

(assert (=> d!1668442 d!1668814))

(declare-fun bs!1203547 () Bool)

(declare-fun d!1668816 () Bool)

(assert (= bs!1203547 (and d!1668816 d!1668504)))

(declare-fun lambda!258168 () Int)

(assert (=> bs!1203547 (= (= call!362936 lt!2127877) (= lambda!258168 lambda!258122))))

(declare-fun bs!1203548 () Bool)

(assert (= bs!1203548 (and d!1668816 d!1668758)))

(assert (=> bs!1203548 (= (= call!362936 (h!66513 testedP!294)) (= lambda!258168 lambda!258165))))

(declare-fun bs!1203549 () Bool)

(assert (= bs!1203549 (and d!1668816 d!1668778)))

(assert (=> bs!1203549 (= (= call!362936 call!362928) (= lambda!258168 lambda!258166))))

(declare-fun bs!1203550 () Bool)

(assert (= bs!1203550 (and d!1668816 d!1668808)))

(assert (=> bs!1203550 (= (= call!362936 (h!66513 lt!2127879)) (= lambda!258168 lambda!258167))))

(assert (=> d!1668816 true))

(assert (=> d!1668816 (= (derivationStepZipper!967 z!4581 call!362936) (flatMap!444 z!4581 lambda!258168))))

(declare-fun bs!1203551 () Bool)

(assert (= bs!1203551 d!1668816))

(declare-fun m!6223476 () Bool)

(assert (=> bs!1203551 m!6223476))

(assert (=> bm!362930 d!1668816))

(declare-fun d!1668818 () Bool)

(declare-fun lt!2128396 () Int)

(assert (=> d!1668818 (>= lt!2128396 0)))

(declare-fun e!3221848 () Int)

(assert (=> d!1668818 (= lt!2128396 e!3221848)))

(declare-fun c!890073 () Bool)

(assert (=> d!1668818 (= c!890073 ((_ is Nil!60065) (_1!35193 lt!2128079)))))

(assert (=> d!1668818 (= (size!39649 (_1!35193 lt!2128079)) lt!2128396)))

(declare-fun b!5170772 () Bool)

(assert (=> b!5170772 (= e!3221848 0)))

(declare-fun b!5170773 () Bool)

(assert (=> b!5170773 (= e!3221848 (+ 1 (size!39649 (t!373342 (_1!35193 lt!2128079)))))))

(assert (= (and d!1668818 c!890073) b!5170772))

(assert (= (and d!1668818 (not c!890073)) b!5170773))

(declare-fun m!6223478 () Bool)

(assert (=> b!5170773 m!6223478))

(assert (=> b!5170388 d!1668818))

(assert (=> b!5170388 d!1668800))

(declare-fun bs!1203552 () Bool)

(declare-fun d!1668820 () Bool)

(assert (= bs!1203552 (and d!1668820 d!1668474)))

(declare-fun lambda!258169 () Int)

(assert (=> bs!1203552 (= lambda!258169 lambda!258112)))

(declare-fun bs!1203553 () Bool)

(assert (= bs!1203553 (and d!1668820 d!1668526)))

(assert (=> bs!1203553 (= lambda!258169 lambda!258123)))

(declare-fun bs!1203554 () Bool)

(assert (= bs!1203554 (and d!1668820 d!1668610)))

(assert (=> bs!1203554 (= lambda!258169 lambda!258143)))

(assert (=> d!1668820 (= (inv!79779 setElem!31968) (forall!14129 (exprs!4497 setElem!31968) lambda!258169))))

(declare-fun bs!1203555 () Bool)

(assert (= bs!1203555 d!1668820))

(declare-fun m!6223480 () Bool)

(assert (=> bs!1203555 m!6223480))

(assert (=> setNonEmpty!31968 d!1668820))

(declare-fun e!3221850 () Bool)

(declare-fun b!5170777 () Bool)

(declare-fun lt!2128397 () List!60189)

(assert (=> b!5170777 (= e!3221850 (or (not (= lt!2128140 Nil!60065)) (= lt!2128397 testedP!294)))))

(declare-fun d!1668822 () Bool)

(assert (=> d!1668822 e!3221850))

(declare-fun res!2197742 () Bool)

(assert (=> d!1668822 (=> (not res!2197742) (not e!3221850))))

(assert (=> d!1668822 (= res!2197742 (= (content!10644 lt!2128397) ((_ map or) (content!10644 testedP!294) (content!10644 lt!2128140))))))

(declare-fun e!3221849 () List!60189)

(assert (=> d!1668822 (= lt!2128397 e!3221849)))

(declare-fun c!890074 () Bool)

(assert (=> d!1668822 (= c!890074 ((_ is Nil!60065) testedP!294))))

(assert (=> d!1668822 (= (++!13137 testedP!294 lt!2128140) lt!2128397)))

(declare-fun b!5170774 () Bool)

(assert (=> b!5170774 (= e!3221849 lt!2128140)))

(declare-fun b!5170776 () Bool)

(declare-fun res!2197741 () Bool)

(assert (=> b!5170776 (=> (not res!2197741) (not e!3221850))))

(assert (=> b!5170776 (= res!2197741 (= (size!39649 lt!2128397) (+ (size!39649 testedP!294) (size!39649 lt!2128140))))))

(declare-fun b!5170775 () Bool)

(assert (=> b!5170775 (= e!3221849 (Cons!60065 (h!66513 testedP!294) (++!13137 (t!373342 testedP!294) lt!2128140)))))

(assert (= (and d!1668822 c!890074) b!5170774))

(assert (= (and d!1668822 (not c!890074)) b!5170775))

(assert (= (and d!1668822 res!2197742) b!5170776))

(assert (= (and b!5170776 res!2197741) b!5170777))

(declare-fun m!6223482 () Bool)

(assert (=> d!1668822 m!6223482))

(assert (=> d!1668822 m!6222382))

(declare-fun m!6223484 () Bool)

(assert (=> d!1668822 m!6223484))

(declare-fun m!6223486 () Bool)

(assert (=> b!5170776 m!6223486))

(assert (=> b!5170776 m!6222330))

(declare-fun m!6223488 () Bool)

(assert (=> b!5170776 m!6223488))

(declare-fun m!6223490 () Bool)

(assert (=> b!5170775 m!6223490))

(assert (=> d!1668522 d!1668822))

(assert (=> d!1668522 d!1668516))

(assert (=> d!1668522 d!1668524))

(declare-fun b!5170778 () Bool)

(declare-fun e!3221853 () Bool)

(declare-fun e!3221851 () Bool)

(assert (=> b!5170778 (= e!3221853 e!3221851)))

(declare-fun res!2197746 () Bool)

(assert (=> b!5170778 (=> (not res!2197746) (not e!3221851))))

(assert (=> b!5170778 (= res!2197746 (not ((_ is Nil!60065) (tail!10146 input!5817))))))

(declare-fun b!5170779 () Bool)

(declare-fun res!2197744 () Bool)

(assert (=> b!5170779 (=> (not res!2197744) (not e!3221851))))

(assert (=> b!5170779 (= res!2197744 (= (head!11037 (tail!10146 input!5817)) (head!11037 (tail!10146 input!5817))))))

(declare-fun d!1668824 () Bool)

(declare-fun e!3221852 () Bool)

(assert (=> d!1668824 e!3221852))

(declare-fun res!2197745 () Bool)

(assert (=> d!1668824 (=> res!2197745 e!3221852)))

(declare-fun lt!2128398 () Bool)

(assert (=> d!1668824 (= res!2197745 (not lt!2128398))))

(assert (=> d!1668824 (= lt!2128398 e!3221853)))

(declare-fun res!2197743 () Bool)

(assert (=> d!1668824 (=> res!2197743 e!3221853)))

(assert (=> d!1668824 (= res!2197743 ((_ is Nil!60065) (tail!10146 input!5817)))))

(assert (=> d!1668824 (= (isPrefix!5746 (tail!10146 input!5817) (tail!10146 input!5817)) lt!2128398)))

(declare-fun b!5170781 () Bool)

(assert (=> b!5170781 (= e!3221852 (>= (size!39649 (tail!10146 input!5817)) (size!39649 (tail!10146 input!5817))))))

(declare-fun b!5170780 () Bool)

(assert (=> b!5170780 (= e!3221851 (isPrefix!5746 (tail!10146 (tail!10146 input!5817)) (tail!10146 (tail!10146 input!5817))))))

(assert (= (and d!1668824 (not res!2197743)) b!5170778))

(assert (= (and b!5170778 res!2197746) b!5170779))

(assert (= (and b!5170779 res!2197744) b!5170780))

(assert (= (and d!1668824 (not res!2197745)) b!5170781))

(assert (=> b!5170779 m!6222376))

(assert (=> b!5170779 m!6223158))

(assert (=> b!5170779 m!6222376))

(assert (=> b!5170779 m!6223158))

(assert (=> b!5170781 m!6222376))

(assert (=> b!5170781 m!6223160))

(assert (=> b!5170781 m!6222376))

(assert (=> b!5170781 m!6223160))

(assert (=> b!5170780 m!6222376))

(assert (=> b!5170780 m!6223166))

(assert (=> b!5170780 m!6222376))

(assert (=> b!5170780 m!6223166))

(assert (=> b!5170780 m!6223166))

(assert (=> b!5170780 m!6223166))

(declare-fun m!6223492 () Bool)

(assert (=> b!5170780 m!6223492))

(assert (=> b!5170434 d!1668824))

(assert (=> b!5170434 d!1668692))

(declare-fun bs!1203556 () Bool)

(declare-fun d!1668826 () Bool)

(assert (= bs!1203556 (and d!1668826 d!1668448)))

(declare-fun lambda!258170 () Int)

(assert (=> bs!1203556 (= lambda!258170 lambda!258109)))

(declare-fun bs!1203557 () Bool)

(assert (= bs!1203557 (and d!1668826 d!1668712)))

(assert (=> bs!1203557 (not (= lambda!258170 lambda!258162))))

(declare-fun bs!1203558 () Bool)

(assert (= bs!1203558 (and d!1668826 b!5170698)))

(assert (=> bs!1203558 (not (= lambda!258170 lambda!258163))))

(declare-fun bs!1203559 () Bool)

(assert (= bs!1203559 (and d!1668826 b!5170699)))

(assert (=> bs!1203559 (not (= lambda!258170 lambda!258164))))

(assert (=> d!1668826 (= (nullableZipper!1159 lt!2127871) (exists!1911 lt!2127871 lambda!258170))))

(declare-fun bs!1203560 () Bool)

(assert (= bs!1203560 d!1668826))

(declare-fun m!6223494 () Bool)

(assert (=> bs!1203560 m!6223494))

(assert (=> bm!362920 d!1668826))

(declare-fun d!1668828 () Bool)

(declare-fun res!2197747 () Bool)

(declare-fun e!3221854 () Bool)

(assert (=> d!1668828 (=> res!2197747 e!3221854)))

(assert (=> d!1668828 (= res!2197747 ((_ is Nil!60066) (exprs!4497 setElem!31959)))))

(assert (=> d!1668828 (= (forall!14129 (exprs!4497 setElem!31959) lambda!258112) e!3221854)))

(declare-fun b!5170782 () Bool)

(declare-fun e!3221855 () Bool)

(assert (=> b!5170782 (= e!3221854 e!3221855)))

(declare-fun res!2197748 () Bool)

(assert (=> b!5170782 (=> (not res!2197748) (not e!3221855))))

(assert (=> b!5170782 (= res!2197748 (dynLambda!23869 lambda!258112 (h!66514 (exprs!4497 setElem!31959))))))

(declare-fun b!5170783 () Bool)

(assert (=> b!5170783 (= e!3221855 (forall!14129 (t!373343 (exprs!4497 setElem!31959)) lambda!258112))))

(assert (= (and d!1668828 (not res!2197747)) b!5170782))

(assert (= (and b!5170782 res!2197748) b!5170783))

(declare-fun b_lambda!200875 () Bool)

(assert (=> (not b_lambda!200875) (not b!5170782)))

(declare-fun m!6223496 () Bool)

(assert (=> b!5170782 m!6223496))

(declare-fun m!6223498 () Bool)

(assert (=> b!5170783 m!6223498))

(assert (=> d!1668474 d!1668828))

(assert (=> b!5170205 d!1668516))

(assert (=> b!5170205 d!1668800))

(declare-fun d!1668830 () Bool)

(assert (=> d!1668830 (= (isEmpty!32159 (_1!35193 lt!2128079)) ((_ is Nil!60065) (_1!35193 lt!2128079)))))

(assert (=> b!5170385 d!1668830))

(declare-fun d!1668832 () Bool)

(declare-fun c!890075 () Bool)

(assert (=> d!1668832 (= c!890075 ((_ is Cons!60065) (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065))))))

(declare-fun e!3221856 () (InoxSet Context!7994))

(assert (=> d!1668832 (= (derivationZipper!236 baseZ!62 (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065))) e!3221856)))

(declare-fun b!5170784 () Bool)

(assert (=> b!5170784 (= e!3221856 (derivationZipper!236 (derivationStepZipper!967 baseZ!62 (h!66513 (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065)))) (t!373342 (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065)))))))

(declare-fun b!5170785 () Bool)

(assert (=> b!5170785 (= e!3221856 baseZ!62)))

(assert (= (and d!1668832 c!890075) b!5170784))

(assert (= (and d!1668832 (not c!890075)) b!5170785))

(declare-fun m!6223500 () Bool)

(assert (=> b!5170784 m!6223500))

(assert (=> b!5170784 m!6223500))

(declare-fun m!6223502 () Bool)

(assert (=> b!5170784 m!6223502))

(assert (=> d!1668512 d!1668832))

(declare-fun d!1668834 () Bool)

(assert (=> d!1668834 (= (derivationZipper!236 baseZ!62 (++!13137 testedP!294 (Cons!60065 lt!2127877 Nil!60065))) (derivationStepZipper!967 z!4581 lt!2127877))))

(assert (=> d!1668834 true))

(declare-fun _$83!266 () Unit!151666)

(assert (=> d!1668834 (= (choose!38302 baseZ!62 z!4581 testedP!294 lt!2127877) _$83!266)))

(declare-fun bs!1203561 () Bool)

(assert (= bs!1203561 d!1668834))

(assert (=> bs!1203561 m!6222354))

(assert (=> bs!1203561 m!6222354))

(assert (=> bs!1203561 m!6222628))

(assert (=> bs!1203561 m!6222326))

(assert (=> d!1668512 d!1668834))

(assert (=> d!1668512 d!1668442))

(assert (=> d!1668512 d!1668504))

(assert (=> d!1668512 d!1668514))

(assert (=> bm!362924 d!1668528))

(declare-fun d!1668836 () Bool)

(declare-fun choose!38314 ((InoxSet Context!7994) Int) (InoxSet Context!7994))

(assert (=> d!1668836 (= (flatMap!444 z!4581 lambda!258122) (choose!38314 z!4581 lambda!258122))))

(declare-fun bs!1203562 () Bool)

(assert (= bs!1203562 d!1668836))

(declare-fun m!6223504 () Bool)

(assert (=> bs!1203562 m!6223504))

(assert (=> d!1668504 d!1668836))

(assert (=> d!1668446 d!1668522))

(assert (=> d!1668446 d!1668638))

(assert (=> d!1668446 d!1668508))

(assert (=> d!1668446 d!1668650))

(declare-fun d!1668838 () Bool)

(assert (=> d!1668838 (isPrefix!5746 (++!13137 testedP!294 (Cons!60065 (head!11037 (getSuffix!3396 input!5817 testedP!294)) Nil!60065)) input!5817)))

(assert (=> d!1668838 true))

(declare-fun _$65!1808 () Unit!151666)

(assert (=> d!1668838 (= (choose!38298 testedP!294 input!5817) _$65!1808)))

(declare-fun bs!1203563 () Bool)

(assert (= bs!1203563 d!1668838))

(assert (=> bs!1203563 m!6222334))

(assert (=> bs!1203563 m!6222334))

(assert (=> bs!1203563 m!6222392))

(assert (=> bs!1203563 m!6222396))

(assert (=> bs!1203563 m!6222396))

(assert (=> bs!1203563 m!6222398))

(assert (=> d!1668446 d!1668838))

(assert (=> d!1668446 d!1668642))

(declare-fun b!5170789 () Bool)

(declare-fun e!3221858 () Bool)

(declare-fun lt!2128399 () List!60189)

(assert (=> b!5170789 (= e!3221858 (or (not (= (_2!35193 lt!2128079) Nil!60065)) (= lt!2128399 (_1!35193 lt!2128079))))))

(declare-fun d!1668840 () Bool)

(assert (=> d!1668840 e!3221858))

(declare-fun res!2197750 () Bool)

(assert (=> d!1668840 (=> (not res!2197750) (not e!3221858))))

(assert (=> d!1668840 (= res!2197750 (= (content!10644 lt!2128399) ((_ map or) (content!10644 (_1!35193 lt!2128079)) (content!10644 (_2!35193 lt!2128079)))))))

(declare-fun e!3221857 () List!60189)

(assert (=> d!1668840 (= lt!2128399 e!3221857)))

(declare-fun c!890077 () Bool)

(assert (=> d!1668840 (= c!890077 ((_ is Nil!60065) (_1!35193 lt!2128079)))))

(assert (=> d!1668840 (= (++!13137 (_1!35193 lt!2128079) (_2!35193 lt!2128079)) lt!2128399)))

(declare-fun b!5170786 () Bool)

(assert (=> b!5170786 (= e!3221857 (_2!35193 lt!2128079))))

(declare-fun b!5170788 () Bool)

(declare-fun res!2197749 () Bool)

(assert (=> b!5170788 (=> (not res!2197749) (not e!3221858))))

(assert (=> b!5170788 (= res!2197749 (= (size!39649 lt!2128399) (+ (size!39649 (_1!35193 lt!2128079)) (size!39649 (_2!35193 lt!2128079)))))))

(declare-fun b!5170787 () Bool)

(assert (=> b!5170787 (= e!3221857 (Cons!60065 (h!66513 (_1!35193 lt!2128079)) (++!13137 (t!373342 (_1!35193 lt!2128079)) (_2!35193 lt!2128079))))))

(assert (= (and d!1668840 c!890077) b!5170786))

(assert (= (and d!1668840 (not c!890077)) b!5170787))

(assert (= (and d!1668840 res!2197750) b!5170788))

(assert (= (and b!5170788 res!2197749) b!5170789))

(declare-fun m!6223506 () Bool)

(assert (=> d!1668840 m!6223506))

(declare-fun m!6223508 () Bool)

(assert (=> d!1668840 m!6223508))

(declare-fun m!6223510 () Bool)

(assert (=> d!1668840 m!6223510))

(declare-fun m!6223512 () Bool)

(assert (=> b!5170788 m!6223512))

(assert (=> b!5170788 m!6222582))

(declare-fun m!6223514 () Bool)

(assert (=> b!5170788 m!6223514))

(declare-fun m!6223516 () Bool)

(assert (=> b!5170787 m!6223516))

(assert (=> d!1668482 d!1668840))

(declare-fun b!5170790 () Bool)

(declare-fun e!3221861 () Bool)

(declare-fun e!3221859 () Bool)

(assert (=> b!5170790 (= e!3221861 e!3221859)))

(declare-fun res!2197754 () Bool)

(assert (=> b!5170790 (=> (not res!2197754) (not e!3221859))))

(assert (=> b!5170790 (= res!2197754 (not ((_ is Nil!60065) (++!13137 lt!2127879 (tail!10146 lt!2127874)))))))

(declare-fun b!5170791 () Bool)

(declare-fun res!2197752 () Bool)

(assert (=> b!5170791 (=> (not res!2197752) (not e!3221859))))

(assert (=> b!5170791 (= res!2197752 (= (head!11037 lt!2127879) (head!11037 (++!13137 lt!2127879 (tail!10146 lt!2127874)))))))

(declare-fun d!1668842 () Bool)

(declare-fun e!3221860 () Bool)

(assert (=> d!1668842 e!3221860))

(declare-fun res!2197753 () Bool)

(assert (=> d!1668842 (=> res!2197753 e!3221860)))

(declare-fun lt!2128400 () Bool)

(assert (=> d!1668842 (= res!2197753 (not lt!2128400))))

(assert (=> d!1668842 (= lt!2128400 e!3221861)))

(declare-fun res!2197751 () Bool)

(assert (=> d!1668842 (=> res!2197751 e!3221861)))

(assert (=> d!1668842 (= res!2197751 ((_ is Nil!60065) lt!2127879))))

(assert (=> d!1668842 (= (isPrefix!5746 lt!2127879 (++!13137 lt!2127879 (tail!10146 lt!2127874))) lt!2128400)))

(declare-fun b!5170793 () Bool)

(assert (=> b!5170793 (= e!3221860 (>= (size!39649 (++!13137 lt!2127879 (tail!10146 lt!2127874))) (size!39649 lt!2127879)))))

(declare-fun b!5170792 () Bool)

(assert (=> b!5170792 (= e!3221859 (isPrefix!5746 (tail!10146 lt!2127879) (tail!10146 (++!13137 lt!2127879 (tail!10146 lt!2127874)))))))

(assert (= (and d!1668842 (not res!2197751)) b!5170790))

(assert (= (and b!5170790 res!2197754) b!5170791))

(assert (= (and b!5170791 res!2197752) b!5170792))

(assert (= (and d!1668842 (not res!2197753)) b!5170793))

(assert (=> b!5170791 m!6222368))

(assert (=> b!5170791 m!6222576))

(declare-fun m!6223518 () Bool)

(assert (=> b!5170791 m!6223518))

(assert (=> b!5170793 m!6222576))

(declare-fun m!6223520 () Bool)

(assert (=> b!5170793 m!6223520))

(assert (=> b!5170793 m!6222372))

(assert (=> b!5170792 m!6222374))

(assert (=> b!5170792 m!6222576))

(declare-fun m!6223522 () Bool)

(assert (=> b!5170792 m!6223522))

(assert (=> b!5170792 m!6222374))

(assert (=> b!5170792 m!6223522))

(declare-fun m!6223524 () Bool)

(assert (=> b!5170792 m!6223524))

(assert (=> d!1668482 d!1668842))

(declare-fun d!1668844 () Bool)

(assert (=> d!1668844 (= (tail!10146 lt!2127874) lt!2128090)))

(declare-fun lt!2128401 () Unit!151666)

(assert (=> d!1668844 (= lt!2128401 (choose!38310 lt!2127879 (tail!10146 lt!2127874) lt!2127879 lt!2128090 input!5817))))

(assert (=> d!1668844 (isPrefix!5746 lt!2127879 input!5817)))

(assert (=> d!1668844 (= (lemmaSamePrefixThenSameSuffix!2693 lt!2127879 (tail!10146 lt!2127874) lt!2127879 lt!2128090 input!5817) lt!2128401)))

(declare-fun bs!1203564 () Bool)

(assert (= bs!1203564 d!1668844))

(assert (=> bs!1203564 m!6222320))

(declare-fun m!6223526 () Bool)

(assert (=> bs!1203564 m!6223526))

(assert (=> bs!1203564 m!6222352))

(assert (=> d!1668482 d!1668844))

(declare-fun bs!1203565 () Bool)

(declare-fun d!1668846 () Bool)

(assert (= bs!1203565 (and d!1668846 d!1668448)))

(declare-fun lambda!258171 () Int)

(assert (=> bs!1203565 (not (= lambda!258171 lambda!258109))))

(declare-fun bs!1203566 () Bool)

(assert (= bs!1203566 (and d!1668846 b!5170698)))

(assert (=> bs!1203566 (not (= lambda!258171 lambda!258163))))

(declare-fun bs!1203567 () Bool)

(assert (= bs!1203567 (and d!1668846 d!1668712)))

(assert (=> bs!1203567 (= lambda!258171 lambda!258162)))

(declare-fun bs!1203568 () Bool)

(assert (= bs!1203568 (and d!1668846 d!1668826)))

(assert (=> bs!1203568 (not (= lambda!258171 lambda!258170))))

(declare-fun bs!1203569 () Bool)

(assert (= bs!1203569 (and d!1668846 b!5170699)))

(assert (=> bs!1203569 (not (= lambda!258171 lambda!258164))))

(declare-fun bs!1203570 () Bool)

(declare-fun b!5170794 () Bool)

(assert (= bs!1203570 (and b!5170794 d!1668448)))

(declare-fun lambda!258172 () Int)

(assert (=> bs!1203570 (not (= lambda!258172 lambda!258109))))

(declare-fun bs!1203571 () Bool)

(assert (= bs!1203571 (and b!5170794 b!5170698)))

(assert (=> bs!1203571 (= lambda!258172 lambda!258163)))

(declare-fun bs!1203572 () Bool)

(assert (= bs!1203572 (and b!5170794 d!1668712)))

(assert (=> bs!1203572 (not (= lambda!258172 lambda!258162))))

(declare-fun bs!1203573 () Bool)

(assert (= bs!1203573 (and b!5170794 d!1668826)))

(assert (=> bs!1203573 (not (= lambda!258172 lambda!258170))))

(declare-fun bs!1203574 () Bool)

(assert (= bs!1203574 (and b!5170794 d!1668846)))

(assert (=> bs!1203574 (not (= lambda!258172 lambda!258171))))

(declare-fun bs!1203575 () Bool)

(assert (= bs!1203575 (and b!5170794 b!5170699)))

(assert (=> bs!1203575 (= lambda!258172 lambda!258164)))

(declare-fun bs!1203576 () Bool)

(declare-fun b!5170795 () Bool)

(assert (= bs!1203576 (and b!5170795 d!1668448)))

(declare-fun lambda!258173 () Int)

(assert (=> bs!1203576 (not (= lambda!258173 lambda!258109))))

(declare-fun bs!1203577 () Bool)

(assert (= bs!1203577 (and b!5170795 b!5170794)))

(assert (=> bs!1203577 (= lambda!258173 lambda!258172)))

(declare-fun bs!1203578 () Bool)

(assert (= bs!1203578 (and b!5170795 b!5170698)))

(assert (=> bs!1203578 (= lambda!258173 lambda!258163)))

(declare-fun bs!1203579 () Bool)

(assert (= bs!1203579 (and b!5170795 d!1668712)))

(assert (=> bs!1203579 (not (= lambda!258173 lambda!258162))))

(declare-fun bs!1203580 () Bool)

(assert (= bs!1203580 (and b!5170795 d!1668826)))

(assert (=> bs!1203580 (not (= lambda!258173 lambda!258170))))

(declare-fun bs!1203581 () Bool)

(assert (= bs!1203581 (and b!5170795 d!1668846)))

(assert (=> bs!1203581 (not (= lambda!258173 lambda!258171))))

(declare-fun bs!1203582 () Bool)

(assert (= bs!1203582 (and b!5170795 b!5170699)))

(assert (=> bs!1203582 (= lambda!258173 lambda!258164)))

(declare-fun lt!2128406 () Bool)

(assert (=> d!1668846 (= lt!2128406 (isEmpty!32161 (getLanguageWitness!1005 lt!2127871)))))

(assert (=> d!1668846 (= lt!2128406 (forall!14131 lt!2127871 lambda!258171))))

(declare-fun lt!2128409 () Unit!151666)

(declare-fun e!3221862 () Unit!151666)

(assert (=> d!1668846 (= lt!2128409 e!3221862)))

(declare-fun c!890078 () Bool)

(assert (=> d!1668846 (= c!890078 (not (forall!14131 lt!2127871 lambda!258171)))))

(assert (=> d!1668846 (= (lostCauseZipper!1326 lt!2127871) lt!2128406)))

(declare-fun bm!362981 () Bool)

(declare-fun call!362986 () List!60192)

(assert (=> bm!362981 (= call!362986 (toList!8449 lt!2127871))))

(declare-fun Unit!151700 () Unit!151666)

(assert (=> b!5170795 (= e!3221862 Unit!151700)))

(declare-fun lt!2128407 () List!60192)

(assert (=> b!5170795 (= lt!2128407 call!362986)))

(declare-fun lt!2128404 () Unit!151666)

(assert (=> b!5170795 (= lt!2128404 (lemmaForallThenNotExists!436 lt!2128407 lambda!258171))))

(declare-fun call!362987 () Bool)

(assert (=> b!5170795 (not call!362987)))

(declare-fun lt!2128408 () Unit!151666)

(assert (=> b!5170795 (= lt!2128408 lt!2128404)))

(declare-fun Unit!151701 () Unit!151666)

(assert (=> b!5170794 (= e!3221862 Unit!151701)))

(declare-fun lt!2128402 () List!60192)

(assert (=> b!5170794 (= lt!2128402 call!362986)))

(declare-fun lt!2128405 () Unit!151666)

(assert (=> b!5170794 (= lt!2128405 (lemmaNotForallThenExists!469 lt!2128402 lambda!258171))))

(assert (=> b!5170794 call!362987))

(declare-fun lt!2128403 () Unit!151666)

(assert (=> b!5170794 (= lt!2128403 lt!2128405)))

(declare-fun bm!362982 () Bool)

(assert (=> bm!362982 (= call!362987 (exists!1914 (ite c!890078 lt!2128402 lt!2128407) (ite c!890078 lambda!258172 lambda!258173)))))

(assert (= (and d!1668846 c!890078) b!5170794))

(assert (= (and d!1668846 (not c!890078)) b!5170795))

(assert (= (or b!5170794 b!5170795) bm!362981))

(assert (= (or b!5170794 b!5170795) bm!362982))

(declare-fun m!6223528 () Bool)

(assert (=> b!5170795 m!6223528))

(declare-fun m!6223530 () Bool)

(assert (=> bm!362981 m!6223530))

(declare-fun m!6223532 () Bool)

(assert (=> bm!362982 m!6223532))

(declare-fun m!6223534 () Bool)

(assert (=> d!1668846 m!6223534))

(assert (=> d!1668846 m!6223534))

(declare-fun m!6223536 () Bool)

(assert (=> d!1668846 m!6223536))

(declare-fun m!6223538 () Bool)

(assert (=> d!1668846 m!6223538))

(assert (=> d!1668846 m!6223538))

(declare-fun m!6223540 () Bool)

(assert (=> b!5170794 m!6223540))

(assert (=> d!1668482 d!1668846))

(assert (=> d!1668482 d!1668780))

(declare-fun d!1668848 () Bool)

(assert (=> d!1668848 (isPrefix!5746 lt!2127879 (++!13137 lt!2127879 (tail!10146 lt!2127874)))))

(declare-fun lt!2128410 () Unit!151666)

(assert (=> d!1668848 (= lt!2128410 (choose!38309 lt!2127879 (tail!10146 lt!2127874)))))

(assert (=> d!1668848 (= (lemmaConcatTwoListThenFirstIsPrefix!3587 lt!2127879 (tail!10146 lt!2127874)) lt!2128410)))

(declare-fun bs!1203583 () Bool)

(assert (= bs!1203583 d!1668848))

(assert (=> bs!1203583 m!6222320))

(assert (=> bs!1203583 m!6222576))

(assert (=> bs!1203583 m!6222576))

(assert (=> bs!1203583 m!6222580))

(assert (=> bs!1203583 m!6222320))

(declare-fun m!6223542 () Bool)

(assert (=> bs!1203583 m!6223542))

(assert (=> d!1668482 d!1668848))

(declare-fun lt!2128411 () List!60189)

(declare-fun b!5170799 () Bool)

(declare-fun e!3221864 () Bool)

(assert (=> b!5170799 (= e!3221864 (or (not (= (tail!10146 lt!2127874) Nil!60065)) (= lt!2128411 lt!2127879)))))

(declare-fun d!1668850 () Bool)

(assert (=> d!1668850 e!3221864))

(declare-fun res!2197756 () Bool)

(assert (=> d!1668850 (=> (not res!2197756) (not e!3221864))))

(assert (=> d!1668850 (= res!2197756 (= (content!10644 lt!2128411) ((_ map or) (content!10644 lt!2127879) (content!10644 (tail!10146 lt!2127874)))))))

(declare-fun e!3221863 () List!60189)

(assert (=> d!1668850 (= lt!2128411 e!3221863)))

(declare-fun c!890079 () Bool)

(assert (=> d!1668850 (= c!890079 ((_ is Nil!60065) lt!2127879))))

(assert (=> d!1668850 (= (++!13137 lt!2127879 (tail!10146 lt!2127874)) lt!2128411)))

(declare-fun b!5170796 () Bool)

(assert (=> b!5170796 (= e!3221863 (tail!10146 lt!2127874))))

(declare-fun b!5170798 () Bool)

(declare-fun res!2197755 () Bool)

(assert (=> b!5170798 (=> (not res!2197755) (not e!3221864))))

(assert (=> b!5170798 (= res!2197755 (= (size!39649 lt!2128411) (+ (size!39649 lt!2127879) (size!39649 (tail!10146 lt!2127874)))))))

(declare-fun b!5170797 () Bool)

(assert (=> b!5170797 (= e!3221863 (Cons!60065 (h!66513 lt!2127879) (++!13137 (t!373342 lt!2127879) (tail!10146 lt!2127874))))))

(assert (= (and d!1668850 c!890079) b!5170796))

(assert (= (and d!1668850 (not c!890079)) b!5170797))

(assert (= (and d!1668850 res!2197756) b!5170798))

(assert (= (and b!5170798 res!2197755) b!5170799))

(declare-fun m!6223544 () Bool)

(assert (=> d!1668850 m!6223544))

(assert (=> d!1668850 m!6223404))

(assert (=> d!1668850 m!6222320))

(declare-fun m!6223546 () Bool)

(assert (=> d!1668850 m!6223546))

(declare-fun m!6223548 () Bool)

(assert (=> b!5170798 m!6223548))

(assert (=> b!5170798 m!6222372))

(assert (=> b!5170798 m!6222320))

(declare-fun m!6223550 () Bool)

(assert (=> b!5170798 m!6223550))

(assert (=> b!5170797 m!6222320))

(declare-fun m!6223552 () Bool)

(assert (=> b!5170797 m!6223552))

(assert (=> d!1668482 d!1668850))

(declare-fun b!5170803 () Bool)

(declare-fun lt!2128412 () List!60189)

(declare-fun e!3221866 () Bool)

(assert (=> b!5170803 (= e!3221866 (or (not (= (Cons!60065 lt!2127877 Nil!60065) Nil!60065)) (= lt!2128412 (t!373342 testedP!294))))))

(declare-fun d!1668852 () Bool)

(assert (=> d!1668852 e!3221866))

(declare-fun res!2197758 () Bool)

(assert (=> d!1668852 (=> (not res!2197758) (not e!3221866))))

(assert (=> d!1668852 (= res!2197758 (= (content!10644 lt!2128412) ((_ map or) (content!10644 (t!373342 testedP!294)) (content!10644 (Cons!60065 lt!2127877 Nil!60065)))))))

(declare-fun e!3221865 () List!60189)

(assert (=> d!1668852 (= lt!2128412 e!3221865)))

(declare-fun c!890080 () Bool)

(assert (=> d!1668852 (= c!890080 ((_ is Nil!60065) (t!373342 testedP!294)))))

(assert (=> d!1668852 (= (++!13137 (t!373342 testedP!294) (Cons!60065 lt!2127877 Nil!60065)) lt!2128412)))

(declare-fun b!5170800 () Bool)

(assert (=> b!5170800 (= e!3221865 (Cons!60065 lt!2127877 Nil!60065))))

(declare-fun b!5170802 () Bool)

(declare-fun res!2197757 () Bool)

(assert (=> b!5170802 (=> (not res!2197757) (not e!3221866))))

(assert (=> b!5170802 (= res!2197757 (= (size!39649 lt!2128412) (+ (size!39649 (t!373342 testedP!294)) (size!39649 (Cons!60065 lt!2127877 Nil!60065)))))))

(declare-fun b!5170801 () Bool)

(assert (=> b!5170801 (= e!3221865 (Cons!60065 (h!66513 (t!373342 testedP!294)) (++!13137 (t!373342 (t!373342 testedP!294)) (Cons!60065 lt!2127877 Nil!60065))))))

(assert (= (and d!1668852 c!890080) b!5170800))

(assert (= (and d!1668852 (not c!890080)) b!5170801))

(assert (= (and d!1668852 res!2197758) b!5170802))

(assert (= (and b!5170802 res!2197757) b!5170803))

(declare-fun m!6223554 () Bool)

(assert (=> d!1668852 m!6223554))

(assert (=> d!1668852 m!6223470))

(assert (=> d!1668852 m!6222384))

(declare-fun m!6223556 () Bool)

(assert (=> b!5170802 m!6223556))

(assert (=> b!5170802 m!6222670))

(assert (=> b!5170802 m!6222388))

(declare-fun m!6223558 () Bool)

(assert (=> b!5170801 m!6223558))

(assert (=> b!5170215 d!1668852))

(declare-fun condSetEmpty!31971 () Bool)

(assert (=> setNonEmpty!31967 (= condSetEmpty!31971 (= setRest!31967 ((as const (Array Context!7994 Bool)) false)))))

(declare-fun setRes!31971 () Bool)

(assert (=> setNonEmpty!31967 (= tp!1450504 setRes!31971)))

(declare-fun setIsEmpty!31971 () Bool)

(assert (=> setIsEmpty!31971 setRes!31971))

(declare-fun setElem!31971 () Context!7994)

(declare-fun setNonEmpty!31971 () Bool)

(declare-fun e!3221867 () Bool)

(declare-fun tp!1450554 () Bool)

(assert (=> setNonEmpty!31971 (= setRes!31971 (and tp!1450554 (inv!79779 setElem!31971) e!3221867))))

(declare-fun setRest!31971 () (InoxSet Context!7994))

(assert (=> setNonEmpty!31971 (= setRest!31967 ((_ map or) (store ((as const (Array Context!7994 Bool)) false) setElem!31971 true) setRest!31971))))

(declare-fun b!5170804 () Bool)

(declare-fun tp!1450555 () Bool)

(assert (=> b!5170804 (= e!3221867 tp!1450555)))

(assert (= (and setNonEmpty!31967 condSetEmpty!31971) setIsEmpty!31971))

(assert (= (and setNonEmpty!31967 (not condSetEmpty!31971)) setNonEmpty!31971))

(assert (= setNonEmpty!31971 b!5170804))

(declare-fun m!6223560 () Bool)

(assert (=> setNonEmpty!31971 m!6223560))

(declare-fun b!5170815 () Bool)

(declare-fun e!3221870 () Bool)

(assert (=> b!5170815 (= e!3221870 tp_is_empty!38479)))

(declare-fun b!5170818 () Bool)

(declare-fun tp!1450567 () Bool)

(declare-fun tp!1450568 () Bool)

(assert (=> b!5170818 (= e!3221870 (and tp!1450567 tp!1450568))))

(assert (=> b!5170451 (= tp!1450515 e!3221870)))

(declare-fun b!5170817 () Bool)

(declare-fun tp!1450569 () Bool)

(assert (=> b!5170817 (= e!3221870 tp!1450569)))

(declare-fun b!5170816 () Bool)

(declare-fun tp!1450566 () Bool)

(declare-fun tp!1450570 () Bool)

(assert (=> b!5170816 (= e!3221870 (and tp!1450566 tp!1450570))))

(assert (= (and b!5170451 ((_ is ElementMatch!14613) (h!66514 (exprs!4497 setElem!31959)))) b!5170815))

(assert (= (and b!5170451 ((_ is Concat!23458) (h!66514 (exprs!4497 setElem!31959)))) b!5170816))

(assert (= (and b!5170451 ((_ is Star!14613) (h!66514 (exprs!4497 setElem!31959)))) b!5170817))

(assert (= (and b!5170451 ((_ is Union!14613) (h!66514 (exprs!4497 setElem!31959)))) b!5170818))

(declare-fun b!5170819 () Bool)

(declare-fun e!3221871 () Bool)

(declare-fun tp!1450571 () Bool)

(declare-fun tp!1450572 () Bool)

(assert (=> b!5170819 (= e!3221871 (and tp!1450571 tp!1450572))))

(assert (=> b!5170451 (= tp!1450516 e!3221871)))

(assert (= (and b!5170451 ((_ is Cons!60066) (t!373343 (exprs!4497 setElem!31959)))) b!5170819))

(declare-fun b!5170820 () Bool)

(declare-fun e!3221872 () Bool)

(declare-fun tp!1450573 () Bool)

(assert (=> b!5170820 (= e!3221872 (and tp_is_empty!38479 tp!1450573))))

(assert (=> b!5170453 (= tp!1450519 e!3221872)))

(assert (= (and b!5170453 ((_ is Cons!60065) (t!373342 (t!373342 input!5817)))) b!5170820))

(declare-fun condSetEmpty!31972 () Bool)

(assert (=> setNonEmpty!31968 (= condSetEmpty!31972 (= setRest!31968 ((as const (Array Context!7994 Bool)) false)))))

(declare-fun setRes!31972 () Bool)

(assert (=> setNonEmpty!31968 (= tp!1450506 setRes!31972)))

(declare-fun setIsEmpty!31972 () Bool)

(assert (=> setIsEmpty!31972 setRes!31972))

(declare-fun setNonEmpty!31972 () Bool)

(declare-fun setElem!31972 () Context!7994)

(declare-fun tp!1450574 () Bool)

(declare-fun e!3221873 () Bool)

(assert (=> setNonEmpty!31972 (= setRes!31972 (and tp!1450574 (inv!79779 setElem!31972) e!3221873))))

(declare-fun setRest!31972 () (InoxSet Context!7994))

(assert (=> setNonEmpty!31972 (= setRest!31968 ((_ map or) (store ((as const (Array Context!7994 Bool)) false) setElem!31972 true) setRest!31972))))

(declare-fun b!5170821 () Bool)

(declare-fun tp!1450575 () Bool)

(assert (=> b!5170821 (= e!3221873 tp!1450575)))

(assert (= (and setNonEmpty!31968 condSetEmpty!31972) setIsEmpty!31972))

(assert (= (and setNonEmpty!31968 (not condSetEmpty!31972)) setNonEmpty!31972))

(assert (= setNonEmpty!31972 b!5170821))

(declare-fun m!6223562 () Bool)

(assert (=> setNonEmpty!31972 m!6223562))

(declare-fun b!5170822 () Bool)

(declare-fun e!3221874 () Bool)

(declare-fun tp!1450576 () Bool)

(declare-fun tp!1450577 () Bool)

(assert (=> b!5170822 (= e!3221874 (and tp!1450576 tp!1450577))))

(assert (=> b!5170440 (= tp!1450505 e!3221874)))

(assert (= (and b!5170440 ((_ is Cons!60066) (exprs!4497 setElem!31967))) b!5170822))

(declare-fun b!5170823 () Bool)

(declare-fun e!3221875 () Bool)

(declare-fun tp!1450578 () Bool)

(assert (=> b!5170823 (= e!3221875 (and tp_is_empty!38479 tp!1450578))))

(assert (=> b!5170446 (= tp!1450510 e!3221875)))

(assert (= (and b!5170446 ((_ is Cons!60065) (t!373342 (t!373342 testedP!294)))) b!5170823))

(declare-fun b!5170824 () Bool)

(declare-fun e!3221876 () Bool)

(declare-fun tp!1450579 () Bool)

(declare-fun tp!1450580 () Bool)

(assert (=> b!5170824 (= e!3221876 (and tp!1450579 tp!1450580))))

(assert (=> b!5170441 (= tp!1450507 e!3221876)))

(assert (= (and b!5170441 ((_ is Cons!60066) (exprs!4497 setElem!31968))) b!5170824))

(declare-fun b!5170825 () Bool)

(declare-fun e!3221877 () Bool)

(assert (=> b!5170825 (= e!3221877 tp_is_empty!38479)))

(declare-fun b!5170828 () Bool)

(declare-fun tp!1450582 () Bool)

(declare-fun tp!1450583 () Bool)

(assert (=> b!5170828 (= e!3221877 (and tp!1450582 tp!1450583))))

(assert (=> b!5170452 (= tp!1450517 e!3221877)))

(declare-fun b!5170827 () Bool)

(declare-fun tp!1450584 () Bool)

(assert (=> b!5170827 (= e!3221877 tp!1450584)))

(declare-fun b!5170826 () Bool)

(declare-fun tp!1450581 () Bool)

(declare-fun tp!1450585 () Bool)

(assert (=> b!5170826 (= e!3221877 (and tp!1450581 tp!1450585))))

(assert (= (and b!5170452 ((_ is ElementMatch!14613) (h!66514 (exprs!4497 setElem!31960)))) b!5170825))

(assert (= (and b!5170452 ((_ is Concat!23458) (h!66514 (exprs!4497 setElem!31960)))) b!5170826))

(assert (= (and b!5170452 ((_ is Star!14613) (h!66514 (exprs!4497 setElem!31960)))) b!5170827))

(assert (= (and b!5170452 ((_ is Union!14613) (h!66514 (exprs!4497 setElem!31960)))) b!5170828))

(declare-fun b!5170829 () Bool)

(declare-fun e!3221878 () Bool)

(declare-fun tp!1450586 () Bool)

(declare-fun tp!1450587 () Bool)

(assert (=> b!5170829 (= e!3221878 (and tp!1450586 tp!1450587))))

(assert (=> b!5170452 (= tp!1450518 e!3221878)))

(assert (= (and b!5170452 ((_ is Cons!60066) (t!373343 (exprs!4497 setElem!31960)))) b!5170829))

(declare-fun b_lambda!200877 () Bool)

(assert (= b_lambda!200875 (or d!1668474 b_lambda!200877)))

(declare-fun bs!1203584 () Bool)

(declare-fun d!1668854 () Bool)

(assert (= bs!1203584 (and d!1668854 d!1668474)))

(declare-fun validRegex!6398 (Regex!14613) Bool)

(assert (=> bs!1203584 (= (dynLambda!23869 lambda!258112 (h!66514 (exprs!4497 setElem!31959))) (validRegex!6398 (h!66514 (exprs!4497 setElem!31959))))))

(declare-fun m!6223564 () Bool)

(assert (=> bs!1203584 m!6223564))

(assert (=> b!5170782 d!1668854))

(declare-fun b_lambda!200879 () Bool)

(assert (= b_lambda!200867 (or d!1668526 b_lambda!200879)))

(declare-fun bs!1203585 () Bool)

(declare-fun d!1668856 () Bool)

(assert (= bs!1203585 (and d!1668856 d!1668526)))

(assert (=> bs!1203585 (= (dynLambda!23869 lambda!258123 (h!66514 (exprs!4497 setElem!31960))) (validRegex!6398 (h!66514 (exprs!4497 setElem!31960))))))

(declare-fun m!6223566 () Bool)

(assert (=> bs!1203585 m!6223566))

(assert (=> b!5170552 d!1668856))

(check-sat (not b!5170748) (not b!5170627) (not b!5170626) (not d!1668746) (not b!5170729) (not bm!362962) (not bm!362964) (not d!1668748) (not bs!1203584) (not b!5170609) (not b!5170769) (not b!5170625) (not b!5170722) (not b!5170793) (not bm!362974) (not b!5170821) (not d!1668786) (not b!5170767) (not b!5170740) (not b!5170612) (not b!5170713) (not d!1668850) (not d!1668780) (not b!5170553) (not b!5170817) (not b!5170556) (not d!1668758) (not b!5170731) (not b!5170709) (not d!1668642) (not d!1668826) (not d!1668836) (not b!5170751) (not b!5170771) (not b!5170569) (not b!5170792) (not b!5170760) (not d!1668816) (not b!5170756) (not b!5170699) (not d!1668808) (not d!1668744) (not b!5170703) (not b!5170802) (not b!5170705) (not d!1668794) (not bm!362973) (not d!1668708) (not d!1668610) (not b!5170560) (not b!5170564) (not b!5170804) (not b!5170827) (not d!1668660) (not d!1668852) (not bm!362975) (not b!5170828) (not b!5170637) (not bm!362982) (not bm!362963) (not d!1668820) (not b!5170829) (not b!5170773) (not b!5170639) (not d!1668704) (not bs!1203585) (not b!5170784) (not bm!362981) (not b!5170823) (not b!5170826) (not b!5170724) (not bm!362978) (not b_lambda!200879) (not d!1668848) (not b!5170798) (not bm!362972) (not b!5170577) (not b!5170735) (not b!5170605) (not b!5170759) tp_is_empty!38479 (not d!1668796) (not b!5170734) (not d!1668674) (not b!5170788) (not d!1668802) (not d!1668640) (not b!5170702) (not b!5170816) (not d!1668772) (not b!5170720) (not d!1668840) (not bm!362971) (not b!5170787) (not b!5170780) (not b!5170801) (not d!1668634) (not bm!362958) (not b!5170633) (not b!5170755) (not b!5170822) (not b!5170640) (not b!5170727) (not d!1668778) (not b!5170797) (not b!5170575) (not d!1668750) (not bm!362965) (not d!1668846) (not b!5170794) (not b!5170779) (not d!1668838) (not b!5170818) (not b!5170776) (not b!5170791) (not b!5170741) (not d!1668788) (not b!5170717) (not bm!362977) (not d!1668822) (not b!5170795) (not b_lambda!200877) (not b!5170563) (not d!1668844) (not bm!362980) (not b!5170747) (not b!5170775) (not b!5170824) (not b!5170783) (not b!5170559) (not b!5170701) (not d!1668664) (not b!5170576) (not d!1668790) (not d!1668834) (not b!5170743) (not b!5170698) (not bm!362957) (not d!1668762) (not bm!362961) (not d!1668712) (not b!5170820) (not b!5170739) (not d!1668648) (not bm!362976) (not b!5170733) (not b!5170736) (not setNonEmpty!31971) (not d!1668798) (not b!5170744) (not b!5170752) (not d!1668760) (not b!5170781) (not b!5170819) (not bm!362966) (not setNonEmpty!31972) (not b!5170555) (not b!5170706) (not bm!362979) (not b!5170570) (not b!5170601))
(check-sat)
