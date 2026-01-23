; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694600 () Bool)

(assert start!694600)

(declare-fun b!7130603 () Bool)

(declare-fun e!4285180 () Bool)

(declare-fun tp_is_empty!45727 () Bool)

(declare-fun tp!1965064 () Bool)

(assert (=> b!7130603 (= e!4285180 (and tp_is_empty!45727 tp!1965064))))

(declare-fun setIsEmpty!52014 () Bool)

(declare-fun setRes!52014 () Bool)

(assert (=> setIsEmpty!52014 setRes!52014))

(declare-fun b!7130604 () Bool)

(declare-datatypes ((Unit!162995 0))(
  ( (Unit!162996) )
))
(declare-fun e!4285186 () Unit!162995)

(declare-fun Unit!162997 () Unit!162995)

(assert (=> b!7130604 (= e!4285186 Unit!162997)))

(declare-fun b!7130605 () Bool)

(declare-fun e!4285187 () Bool)

(declare-fun tp!1965071 () Bool)

(assert (=> b!7130605 (= e!4285187 (and tp_is_empty!45727 tp!1965071))))

(declare-fun b!7130606 () Bool)

(declare-fun e!4285176 () Unit!162995)

(declare-fun Unit!162998 () Unit!162995)

(assert (=> b!7130606 (= e!4285176 Unit!162998)))

(declare-fun setNonEmpty!52014 () Bool)

(declare-fun setRes!52015 () Bool)

(declare-fun tp!1965068 () Bool)

(declare-fun e!4285178 () Bool)

(declare-datatypes ((C!36396 0))(
  ( (C!36397 (val!28124 Int)) )
))
(declare-datatypes ((Regex!18063 0))(
  ( (ElementMatch!18063 (c!1330039 C!36396)) (Concat!26908 (regOne!36638 Regex!18063) (regTwo!36638 Regex!18063)) (EmptyExpr!18063) (Star!18063 (reg!18392 Regex!18063)) (EmptyLang!18063) (Union!18063 (regOne!36639 Regex!18063) (regTwo!36639 Regex!18063)) )
))
(declare-datatypes ((List!69180 0))(
  ( (Nil!69056) (Cons!69056 (h!75504 Regex!18063) (t!383157 List!69180)) )
))
(declare-datatypes ((Context!14114 0))(
  ( (Context!14115 (exprs!7557 List!69180)) )
))
(declare-fun setElem!52014 () Context!14114)

(declare-fun inv!88185 (Context!14114) Bool)

(assert (=> setNonEmpty!52014 (= setRes!52015 (and tp!1965068 (inv!88185 setElem!52014) e!4285178))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z2!471 () (InoxSet Context!14114))

(declare-fun setRest!52014 () (InoxSet Context!14114))

(assert (=> setNonEmpty!52014 (= z2!471 ((_ map or) (store ((as const (Array Context!14114 Bool)) false) setElem!52014 true) setRest!52014))))

(declare-fun b!7130607 () Bool)

(declare-fun e!4285181 () Bool)

(declare-datatypes ((List!69181 0))(
  ( (Nil!69057) (Cons!69057 (h!75505 C!36396) (t!383158 List!69181)) )
))
(declare-fun s2Rec!140 () List!69181)

(declare-fun matchZipper!3319 ((InoxSet Context!14114) List!69181) Bool)

(assert (=> b!7130607 (= e!4285181 (not (matchZipper!3319 z2!471 s2Rec!140)))))

(declare-fun b!7130608 () Bool)

(declare-fun res!2909473 () Bool)

(declare-fun e!4285179 () Bool)

(assert (=> b!7130608 (=> (not res!2909473) (not e!4285179))))

(get-info :version)

(assert (=> b!7130608 (= res!2909473 (not ((_ is Nil!69057) s2Rec!140)))))

(declare-fun b!7130609 () Bool)

(declare-fun Unit!162999 () Unit!162995)

(assert (=> b!7130609 (= e!4285176 Unit!162999)))

(declare-fun s1Rec!140 () List!69181)

(declare-fun lt!2564433 () Unit!162995)

(declare-fun s1!1688 () List!69181)

(declare-fun s!7390 () List!69181)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1453 (List!69181 List!69181 List!69181) Unit!162995)

(assert (=> b!7130609 (= lt!2564433 (lemmaIsPrefixSameLengthThenSameList!1453 s1!1688 s1Rec!140 s!7390))))

(assert (=> b!7130609 false))

(declare-fun b!7130610 () Bool)

(declare-fun tp!1965067 () Bool)

(assert (=> b!7130610 (= e!4285178 tp!1965067)))

(declare-fun b!7130611 () Bool)

(declare-fun e!4285177 () Bool)

(declare-fun tp!1965070 () Bool)

(assert (=> b!7130611 (= e!4285177 (and tp_is_empty!45727 tp!1965070))))

(declare-fun b!7130612 () Bool)

(declare-fun Unit!163000 () Unit!162995)

(assert (=> b!7130612 (= e!4285186 Unit!163000)))

(declare-fun lt!2564430 () Unit!162995)

(declare-fun s2!1620 () List!69181)

(declare-fun lemmaSamePrefixThenSameSuffix!2743 (List!69181 List!69181 List!69181 List!69181 List!69181) Unit!162995)

(assert (=> b!7130612 (= lt!2564430 (lemmaSamePrefixThenSameSuffix!2743 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> b!7130612 false))

(declare-fun b!7130613 () Bool)

(declare-fun res!2909476 () Bool)

(declare-fun e!4285188 () Bool)

(assert (=> b!7130613 (=> res!2909476 e!4285188)))

(declare-fun lt!2564434 () List!69181)

(declare-fun isPrefix!5932 (List!69181 List!69181) Bool)

(assert (=> b!7130613 (= res!2909476 (not (isPrefix!5932 lt!2564434 s!7390)))))

(declare-fun setElem!52015 () Context!14114)

(declare-fun tp!1965065 () Bool)

(declare-fun e!4285184 () Bool)

(declare-fun setNonEmpty!52015 () Bool)

(assert (=> setNonEmpty!52015 (= setRes!52014 (and tp!1965065 (inv!88185 setElem!52015) e!4285184))))

(declare-fun z1!552 () (InoxSet Context!14114))

(declare-fun setRest!52015 () (InoxSet Context!14114))

(assert (=> setNonEmpty!52015 (= z1!552 ((_ map or) (store ((as const (Array Context!14114 Bool)) false) setElem!52015 true) setRest!52015))))

(declare-fun b!7130614 () Bool)

(declare-fun res!2909469 () Bool)

(assert (=> b!7130614 (=> (not res!2909469) (not e!4285179))))

(assert (=> b!7130614 (= res!2909469 e!4285181)))

(declare-fun res!2909472 () Bool)

(assert (=> b!7130614 (=> res!2909472 e!4285181)))

(assert (=> b!7130614 (= res!2909472 (not (matchZipper!3319 z1!552 s1Rec!140)))))

(declare-fun setIsEmpty!52015 () Bool)

(assert (=> setIsEmpty!52015 setRes!52015))

(declare-fun b!7130615 () Bool)

(declare-fun lt!2564429 () Int)

(declare-fun size!41488 (List!69181) Int)

(assert (=> b!7130615 (= e!4285188 (<= (size!41488 lt!2564434) lt!2564429))))

(declare-fun b!7130616 () Bool)

(declare-fun e!4285185 () Bool)

(assert (=> b!7130616 (= e!4285185 e!4285179)))

(declare-fun res!2909468 () Bool)

(assert (=> b!7130616 (=> (not res!2909468) (not e!4285179))))

(declare-fun lt!2564431 () List!69181)

(assert (=> b!7130616 (= res!2909468 (= lt!2564431 s!7390))))

(declare-fun ++!16201 (List!69181 List!69181) List!69181)

(assert (=> b!7130616 (= lt!2564431 (++!16201 s1Rec!140 s2Rec!140))))

(declare-fun b!7130617 () Bool)

(declare-fun res!2909471 () Bool)

(declare-fun e!4285183 () Bool)

(assert (=> b!7130617 (=> (not res!2909471) (not e!4285183))))

(assert (=> b!7130617 (= res!2909471 (matchZipper!3319 z2!471 s2!1620))))

(declare-fun res!2909474 () Bool)

(assert (=> start!694600 (=> (not res!2909474) (not e!4285183))))

(assert (=> start!694600 (= res!2909474 (matchZipper!3319 z1!552 s1!1688))))

(assert (=> start!694600 e!4285183))

(assert (=> start!694600 e!4285180))

(declare-fun condSetEmpty!52014 () Bool)

(assert (=> start!694600 (= condSetEmpty!52014 (= z1!552 ((as const (Array Context!14114 Bool)) false)))))

(assert (=> start!694600 setRes!52014))

(declare-fun e!4285189 () Bool)

(assert (=> start!694600 e!4285189))

(declare-fun condSetEmpty!52015 () Bool)

(assert (=> start!694600 (= condSetEmpty!52015 (= z2!471 ((as const (Array Context!14114 Bool)) false)))))

(assert (=> start!694600 setRes!52015))

(assert (=> start!694600 e!4285177))

(assert (=> start!694600 e!4285187))

(declare-fun e!4285182 () Bool)

(assert (=> start!694600 e!4285182))

(declare-fun b!7130618 () Bool)

(declare-fun tp!1965069 () Bool)

(assert (=> b!7130618 (= e!4285182 (and tp_is_empty!45727 tp!1965069))))

(declare-fun b!7130619 () Bool)

(declare-fun res!2909470 () Bool)

(assert (=> b!7130619 (=> (not res!2909470) (not e!4285185))))

(assert (=> b!7130619 (= res!2909470 (isPrefix!5932 s1Rec!140 s1!1688))))

(declare-fun b!7130620 () Bool)

(assert (=> b!7130620 (= e!4285179 (not e!4285188))))

(declare-fun res!2909475 () Bool)

(assert (=> b!7130620 (=> res!2909475 e!4285188)))

(assert (=> b!7130620 (= res!2909475 (not (isPrefix!5932 s1!1688 s!7390)))))

(declare-fun lt!2564439 () Unit!162995)

(assert (=> b!7130620 (= lt!2564439 e!4285176)))

(declare-fun c!1330038 () Bool)

(declare-fun lt!2564432 () Int)

(assert (=> b!7130620 (= c!1330038 (= lt!2564432 lt!2564429))))

(assert (=> b!7130620 (= lt!2564429 (size!41488 s1!1688))))

(assert (=> b!7130620 (= lt!2564432 (size!41488 s1Rec!140))))

(declare-fun lt!2564438 () List!69181)

(assert (=> b!7130620 (isPrefix!5932 lt!2564434 lt!2564438)))

(declare-fun lt!2564435 () Unit!162995)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3645 (List!69181 List!69181) Unit!162995)

(assert (=> b!7130620 (= lt!2564435 (lemmaConcatTwoListThenFirstIsPrefix!3645 lt!2564434 (t!383158 s2Rec!140)))))

(assert (=> b!7130620 (= lt!2564438 s!7390)))

(assert (=> b!7130620 (= lt!2564438 (++!16201 lt!2564434 (t!383158 s2Rec!140)))))

(assert (=> b!7130620 (= lt!2564434 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))

(declare-fun lt!2564436 () Unit!162995)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3023 (List!69181 C!36396 List!69181 List!69181) Unit!162995)

(assert (=> b!7130620 (= lt!2564436 (lemmaMoveElementToOtherListKeepsConcatEq!3023 s1Rec!140 (h!75505 s2Rec!140) (t!383158 s2Rec!140) s!7390))))

(declare-fun lt!2564440 () Unit!162995)

(assert (=> b!7130620 (= lt!2564440 e!4285186)))

(declare-fun c!1330037 () Bool)

(assert (=> b!7130620 (= c!1330037 (= s1Rec!140 s1!1688))))

(assert (=> b!7130620 (isPrefix!5932 s1Rec!140 lt!2564431)))

(declare-fun lt!2564441 () Unit!162995)

(assert (=> b!7130620 (= lt!2564441 (lemmaConcatTwoListThenFirstIsPrefix!3645 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564437 () List!69181)

(assert (=> b!7130620 (isPrefix!5932 s1!1688 lt!2564437)))

(declare-fun lt!2564442 () Unit!162995)

(assert (=> b!7130620 (= lt!2564442 (lemmaConcatTwoListThenFirstIsPrefix!3645 s1!1688 s2!1620))))

(declare-fun b!7130621 () Bool)

(declare-fun tp!1965066 () Bool)

(assert (=> b!7130621 (= e!4285189 (and tp_is_empty!45727 tp!1965066))))

(declare-fun b!7130622 () Bool)

(declare-fun tp!1965063 () Bool)

(assert (=> b!7130622 (= e!4285184 tp!1965063)))

(declare-fun b!7130623 () Bool)

(assert (=> b!7130623 (= e!4285183 e!4285185)))

(declare-fun res!2909477 () Bool)

(assert (=> b!7130623 (=> (not res!2909477) (not e!4285185))))

(assert (=> b!7130623 (= res!2909477 (= lt!2564437 s!7390))))

(assert (=> b!7130623 (= lt!2564437 (++!16201 s1!1688 s2!1620))))

(assert (= (and start!694600 res!2909474) b!7130617))

(assert (= (and b!7130617 res!2909471) b!7130623))

(assert (= (and b!7130623 res!2909477) b!7130619))

(assert (= (and b!7130619 res!2909470) b!7130616))

(assert (= (and b!7130616 res!2909468) b!7130614))

(assert (= (and b!7130614 (not res!2909472)) b!7130607))

(assert (= (and b!7130614 res!2909469) b!7130608))

(assert (= (and b!7130608 res!2909473) b!7130620))

(assert (= (and b!7130620 c!1330037) b!7130612))

(assert (= (and b!7130620 (not c!1330037)) b!7130604))

(assert (= (and b!7130620 c!1330038) b!7130609))

(assert (= (and b!7130620 (not c!1330038)) b!7130606))

(assert (= (and b!7130620 (not res!2909475)) b!7130613))

(assert (= (and b!7130613 (not res!2909476)) b!7130615))

(assert (= (and start!694600 ((_ is Cons!69057) s1Rec!140)) b!7130603))

(assert (= (and start!694600 condSetEmpty!52014) setIsEmpty!52014))

(assert (= (and start!694600 (not condSetEmpty!52014)) setNonEmpty!52015))

(assert (= setNonEmpty!52015 b!7130622))

(assert (= (and start!694600 ((_ is Cons!69057) s2Rec!140)) b!7130621))

(assert (= (and start!694600 condSetEmpty!52015) setIsEmpty!52015))

(assert (= (and start!694600 (not condSetEmpty!52015)) setNonEmpty!52014))

(assert (= setNonEmpty!52014 b!7130610))

(assert (= (and start!694600 ((_ is Cons!69057) s2!1620)) b!7130611))

(assert (= (and start!694600 ((_ is Cons!69057) s1!1688)) b!7130605))

(assert (= (and start!694600 ((_ is Cons!69057) s!7390)) b!7130618))

(declare-fun m!7847442 () Bool)

(assert (=> b!7130619 m!7847442))

(declare-fun m!7847444 () Bool)

(assert (=> b!7130614 m!7847444))

(declare-fun m!7847446 () Bool)

(assert (=> b!7130623 m!7847446))

(declare-fun m!7847448 () Bool)

(assert (=> start!694600 m!7847448))

(declare-fun m!7847450 () Bool)

(assert (=> b!7130612 m!7847450))

(declare-fun m!7847452 () Bool)

(assert (=> b!7130613 m!7847452))

(declare-fun m!7847454 () Bool)

(assert (=> b!7130615 m!7847454))

(declare-fun m!7847456 () Bool)

(assert (=> b!7130620 m!7847456))

(declare-fun m!7847458 () Bool)

(assert (=> b!7130620 m!7847458))

(declare-fun m!7847460 () Bool)

(assert (=> b!7130620 m!7847460))

(declare-fun m!7847462 () Bool)

(assert (=> b!7130620 m!7847462))

(declare-fun m!7847464 () Bool)

(assert (=> b!7130620 m!7847464))

(declare-fun m!7847466 () Bool)

(assert (=> b!7130620 m!7847466))

(declare-fun m!7847468 () Bool)

(assert (=> b!7130620 m!7847468))

(declare-fun m!7847470 () Bool)

(assert (=> b!7130620 m!7847470))

(declare-fun m!7847472 () Bool)

(assert (=> b!7130620 m!7847472))

(declare-fun m!7847474 () Bool)

(assert (=> b!7130620 m!7847474))

(declare-fun m!7847476 () Bool)

(assert (=> b!7130620 m!7847476))

(declare-fun m!7847478 () Bool)

(assert (=> b!7130620 m!7847478))

(declare-fun m!7847480 () Bool)

(assert (=> b!7130617 m!7847480))

(declare-fun m!7847482 () Bool)

(assert (=> setNonEmpty!52015 m!7847482))

(declare-fun m!7847484 () Bool)

(assert (=> b!7130607 m!7847484))

(declare-fun m!7847486 () Bool)

(assert (=> b!7130616 m!7847486))

(declare-fun m!7847488 () Bool)

(assert (=> setNonEmpty!52014 m!7847488))

(declare-fun m!7847490 () Bool)

(assert (=> b!7130609 m!7847490))

(check-sat (not b!7130611) (not b!7130620) (not b!7130617) (not b!7130616) (not b!7130607) (not b!7130613) (not b!7130623) (not b!7130610) (not b!7130622) (not setNonEmpty!52015) (not b!7130603) (not b!7130618) (not b!7130609) (not start!694600) (not b!7130612) tp_is_empty!45727 (not b!7130619) (not setNonEmpty!52014) (not b!7130615) (not b!7130621) (not b!7130605) (not b!7130614))
(check-sat)
(get-model)

(declare-fun d!2225094 () Bool)

(declare-fun c!1330042 () Bool)

(declare-fun isEmpty!40028 (List!69181) Bool)

(assert (=> d!2225094 (= c!1330042 (isEmpty!40028 s2Rec!140))))

(declare-fun e!4285192 () Bool)

(assert (=> d!2225094 (= (matchZipper!3319 z2!471 s2Rec!140) e!4285192)))

(declare-fun b!7130628 () Bool)

(declare-fun nullableZipper!2762 ((InoxSet Context!14114)) Bool)

(assert (=> b!7130628 (= e!4285192 (nullableZipper!2762 z2!471))))

(declare-fun b!7130629 () Bool)

(declare-fun derivationStepZipper!3174 ((InoxSet Context!14114) C!36396) (InoxSet Context!14114))

(declare-fun head!14471 (List!69181) C!36396)

(declare-fun tail!13943 (List!69181) List!69181)

(assert (=> b!7130629 (= e!4285192 (matchZipper!3319 (derivationStepZipper!3174 z2!471 (head!14471 s2Rec!140)) (tail!13943 s2Rec!140)))))

(assert (= (and d!2225094 c!1330042) b!7130628))

(assert (= (and d!2225094 (not c!1330042)) b!7130629))

(declare-fun m!7847492 () Bool)

(assert (=> d!2225094 m!7847492))

(declare-fun m!7847494 () Bool)

(assert (=> b!7130628 m!7847494))

(declare-fun m!7847496 () Bool)

(assert (=> b!7130629 m!7847496))

(assert (=> b!7130629 m!7847496))

(declare-fun m!7847498 () Bool)

(assert (=> b!7130629 m!7847498))

(declare-fun m!7847500 () Bool)

(assert (=> b!7130629 m!7847500))

(assert (=> b!7130629 m!7847498))

(assert (=> b!7130629 m!7847500))

(declare-fun m!7847502 () Bool)

(assert (=> b!7130629 m!7847502))

(assert (=> b!7130607 d!2225094))

(declare-fun b!7130639 () Bool)

(declare-fun e!4285197 () List!69181)

(assert (=> b!7130639 (= e!4285197 (Cons!69057 (h!75505 s1Rec!140) (++!16201 (t!383158 s1Rec!140) s2Rec!140)))))

(declare-fun d!2225096 () Bool)

(declare-fun e!4285198 () Bool)

(assert (=> d!2225096 e!4285198))

(declare-fun res!2909483 () Bool)

(assert (=> d!2225096 (=> (not res!2909483) (not e!4285198))))

(declare-fun lt!2564445 () List!69181)

(declare-fun content!14122 (List!69181) (InoxSet C!36396))

(assert (=> d!2225096 (= res!2909483 (= (content!14122 lt!2564445) ((_ map or) (content!14122 s1Rec!140) (content!14122 s2Rec!140))))))

(assert (=> d!2225096 (= lt!2564445 e!4285197)))

(declare-fun c!1330045 () Bool)

(assert (=> d!2225096 (= c!1330045 ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225096 (= (++!16201 s1Rec!140 s2Rec!140) lt!2564445)))

(declare-fun b!7130638 () Bool)

(assert (=> b!7130638 (= e!4285197 s2Rec!140)))

(declare-fun b!7130640 () Bool)

(declare-fun res!2909482 () Bool)

(assert (=> b!7130640 (=> (not res!2909482) (not e!4285198))))

(assert (=> b!7130640 (= res!2909482 (= (size!41488 lt!2564445) (+ (size!41488 s1Rec!140) (size!41488 s2Rec!140))))))

(declare-fun b!7130641 () Bool)

(assert (=> b!7130641 (= e!4285198 (or (not (= s2Rec!140 Nil!69057)) (= lt!2564445 s1Rec!140)))))

(assert (= (and d!2225096 c!1330045) b!7130638))

(assert (= (and d!2225096 (not c!1330045)) b!7130639))

(assert (= (and d!2225096 res!2909483) b!7130640))

(assert (= (and b!7130640 res!2909482) b!7130641))

(declare-fun m!7847504 () Bool)

(assert (=> b!7130639 m!7847504))

(declare-fun m!7847506 () Bool)

(assert (=> d!2225096 m!7847506))

(declare-fun m!7847508 () Bool)

(assert (=> d!2225096 m!7847508))

(declare-fun m!7847510 () Bool)

(assert (=> d!2225096 m!7847510))

(declare-fun m!7847512 () Bool)

(assert (=> b!7130640 m!7847512))

(assert (=> b!7130640 m!7847470))

(declare-fun m!7847514 () Bool)

(assert (=> b!7130640 m!7847514))

(assert (=> b!7130616 d!2225096))

(declare-fun d!2225098 () Bool)

(assert (=> d!2225098 (= s1!1688 s1Rec!140)))

(declare-fun lt!2564448 () Unit!162995)

(declare-fun choose!55098 (List!69181 List!69181 List!69181) Unit!162995)

(assert (=> d!2225098 (= lt!2564448 (choose!55098 s1!1688 s1Rec!140 s!7390))))

(assert (=> d!2225098 (isPrefix!5932 s1!1688 s!7390)))

(assert (=> d!2225098 (= (lemmaIsPrefixSameLengthThenSameList!1453 s1!1688 s1Rec!140 s!7390) lt!2564448)))

(declare-fun bs!1886860 () Bool)

(assert (= bs!1886860 d!2225098))

(declare-fun m!7847516 () Bool)

(assert (=> bs!1886860 m!7847516))

(assert (=> bs!1886860 m!7847464))

(assert (=> b!7130609 d!2225098))

(declare-fun d!2225100 () Bool)

(declare-fun c!1330046 () Bool)

(assert (=> d!2225100 (= c!1330046 (isEmpty!40028 s2!1620))))

(declare-fun e!4285199 () Bool)

(assert (=> d!2225100 (= (matchZipper!3319 z2!471 s2!1620) e!4285199)))

(declare-fun b!7130642 () Bool)

(assert (=> b!7130642 (= e!4285199 (nullableZipper!2762 z2!471))))

(declare-fun b!7130643 () Bool)

(assert (=> b!7130643 (= e!4285199 (matchZipper!3319 (derivationStepZipper!3174 z2!471 (head!14471 s2!1620)) (tail!13943 s2!1620)))))

(assert (= (and d!2225100 c!1330046) b!7130642))

(assert (= (and d!2225100 (not c!1330046)) b!7130643))

(declare-fun m!7847518 () Bool)

(assert (=> d!2225100 m!7847518))

(assert (=> b!7130642 m!7847494))

(declare-fun m!7847520 () Bool)

(assert (=> b!7130643 m!7847520))

(assert (=> b!7130643 m!7847520))

(declare-fun m!7847522 () Bool)

(assert (=> b!7130643 m!7847522))

(declare-fun m!7847524 () Bool)

(assert (=> b!7130643 m!7847524))

(assert (=> b!7130643 m!7847522))

(assert (=> b!7130643 m!7847524))

(declare-fun m!7847526 () Bool)

(assert (=> b!7130643 m!7847526))

(assert (=> b!7130617 d!2225100))

(declare-fun d!2225102 () Bool)

(declare-fun c!1330047 () Bool)

(assert (=> d!2225102 (= c!1330047 (isEmpty!40028 s1Rec!140))))

(declare-fun e!4285200 () Bool)

(assert (=> d!2225102 (= (matchZipper!3319 z1!552 s1Rec!140) e!4285200)))

(declare-fun b!7130644 () Bool)

(assert (=> b!7130644 (= e!4285200 (nullableZipper!2762 z1!552))))

(declare-fun b!7130645 () Bool)

(assert (=> b!7130645 (= e!4285200 (matchZipper!3319 (derivationStepZipper!3174 z1!552 (head!14471 s1Rec!140)) (tail!13943 s1Rec!140)))))

(assert (= (and d!2225102 c!1330047) b!7130644))

(assert (= (and d!2225102 (not c!1330047)) b!7130645))

(declare-fun m!7847528 () Bool)

(assert (=> d!2225102 m!7847528))

(declare-fun m!7847530 () Bool)

(assert (=> b!7130644 m!7847530))

(declare-fun m!7847532 () Bool)

(assert (=> b!7130645 m!7847532))

(assert (=> b!7130645 m!7847532))

(declare-fun m!7847534 () Bool)

(assert (=> b!7130645 m!7847534))

(declare-fun m!7847536 () Bool)

(assert (=> b!7130645 m!7847536))

(assert (=> b!7130645 m!7847534))

(assert (=> b!7130645 m!7847536))

(declare-fun m!7847538 () Bool)

(assert (=> b!7130645 m!7847538))

(assert (=> b!7130614 d!2225102))

(declare-fun d!2225104 () Bool)

(declare-fun lt!2564451 () Int)

(assert (=> d!2225104 (>= lt!2564451 0)))

(declare-fun e!4285203 () Int)

(assert (=> d!2225104 (= lt!2564451 e!4285203)))

(declare-fun c!1330050 () Bool)

(assert (=> d!2225104 (= c!1330050 ((_ is Nil!69057) lt!2564434))))

(assert (=> d!2225104 (= (size!41488 lt!2564434) lt!2564451)))

(declare-fun b!7130650 () Bool)

(assert (=> b!7130650 (= e!4285203 0)))

(declare-fun b!7130651 () Bool)

(assert (=> b!7130651 (= e!4285203 (+ 1 (size!41488 (t!383158 lt!2564434))))))

(assert (= (and d!2225104 c!1330050) b!7130650))

(assert (= (and d!2225104 (not c!1330050)) b!7130651))

(declare-fun m!7847540 () Bool)

(assert (=> b!7130651 m!7847540))

(assert (=> b!7130615 d!2225104))

(declare-fun d!2225106 () Bool)

(declare-fun lambda!433186 () Int)

(declare-fun forall!16922 (List!69180 Int) Bool)

(assert (=> d!2225106 (= (inv!88185 setElem!52014) (forall!16922 (exprs!7557 setElem!52014) lambda!433186))))

(declare-fun bs!1886861 () Bool)

(assert (= bs!1886861 d!2225106))

(declare-fun m!7847552 () Bool)

(assert (=> bs!1886861 m!7847552))

(assert (=> setNonEmpty!52014 d!2225106))

(declare-fun b!7130675 () Bool)

(declare-fun e!4285220 () Bool)

(assert (=> b!7130675 (= e!4285220 (>= (size!41488 s!7390) (size!41488 lt!2564434)))))

(declare-fun b!7130673 () Bool)

(declare-fun res!2909505 () Bool)

(declare-fun e!4285219 () Bool)

(assert (=> b!7130673 (=> (not res!2909505) (not e!4285219))))

(assert (=> b!7130673 (= res!2909505 (= (head!14471 lt!2564434) (head!14471 s!7390)))))

(declare-fun b!7130672 () Bool)

(declare-fun e!4285221 () Bool)

(assert (=> b!7130672 (= e!4285221 e!4285219)))

(declare-fun res!2909504 () Bool)

(assert (=> b!7130672 (=> (not res!2909504) (not e!4285219))))

(assert (=> b!7130672 (= res!2909504 (not ((_ is Nil!69057) s!7390)))))

(declare-fun d!2225112 () Bool)

(assert (=> d!2225112 e!4285220))

(declare-fun res!2909507 () Bool)

(assert (=> d!2225112 (=> res!2909507 e!4285220)))

(declare-fun lt!2564457 () Bool)

(assert (=> d!2225112 (= res!2909507 (not lt!2564457))))

(assert (=> d!2225112 (= lt!2564457 e!4285221)))

(declare-fun res!2909506 () Bool)

(assert (=> d!2225112 (=> res!2909506 e!4285221)))

(assert (=> d!2225112 (= res!2909506 ((_ is Nil!69057) lt!2564434))))

(assert (=> d!2225112 (= (isPrefix!5932 lt!2564434 s!7390) lt!2564457)))

(declare-fun b!7130674 () Bool)

(assert (=> b!7130674 (= e!4285219 (isPrefix!5932 (tail!13943 lt!2564434) (tail!13943 s!7390)))))

(assert (= (and d!2225112 (not res!2909506)) b!7130672))

(assert (= (and b!7130672 res!2909504) b!7130673))

(assert (= (and b!7130673 res!2909505) b!7130674))

(assert (= (and d!2225112 (not res!2909507)) b!7130675))

(declare-fun m!7847554 () Bool)

(assert (=> b!7130675 m!7847554))

(assert (=> b!7130675 m!7847454))

(declare-fun m!7847556 () Bool)

(assert (=> b!7130673 m!7847556))

(declare-fun m!7847558 () Bool)

(assert (=> b!7130673 m!7847558))

(declare-fun m!7847560 () Bool)

(assert (=> b!7130674 m!7847560))

(declare-fun m!7847562 () Bool)

(assert (=> b!7130674 m!7847562))

(assert (=> b!7130674 m!7847560))

(assert (=> b!7130674 m!7847562))

(declare-fun m!7847564 () Bool)

(assert (=> b!7130674 m!7847564))

(assert (=> b!7130613 d!2225112))

(declare-fun b!7130677 () Bool)

(declare-fun e!4285222 () List!69181)

(assert (=> b!7130677 (= e!4285222 (Cons!69057 (h!75505 s1!1688) (++!16201 (t!383158 s1!1688) s2!1620)))))

(declare-fun d!2225114 () Bool)

(declare-fun e!4285223 () Bool)

(assert (=> d!2225114 e!4285223))

(declare-fun res!2909509 () Bool)

(assert (=> d!2225114 (=> (not res!2909509) (not e!4285223))))

(declare-fun lt!2564458 () List!69181)

(assert (=> d!2225114 (= res!2909509 (= (content!14122 lt!2564458) ((_ map or) (content!14122 s1!1688) (content!14122 s2!1620))))))

(assert (=> d!2225114 (= lt!2564458 e!4285222)))

(declare-fun c!1330051 () Bool)

(assert (=> d!2225114 (= c!1330051 ((_ is Nil!69057) s1!1688))))

(assert (=> d!2225114 (= (++!16201 s1!1688 s2!1620) lt!2564458)))

(declare-fun b!7130676 () Bool)

(assert (=> b!7130676 (= e!4285222 s2!1620)))

(declare-fun b!7130678 () Bool)

(declare-fun res!2909508 () Bool)

(assert (=> b!7130678 (=> (not res!2909508) (not e!4285223))))

(assert (=> b!7130678 (= res!2909508 (= (size!41488 lt!2564458) (+ (size!41488 s1!1688) (size!41488 s2!1620))))))

(declare-fun b!7130679 () Bool)

(assert (=> b!7130679 (= e!4285223 (or (not (= s2!1620 Nil!69057)) (= lt!2564458 s1!1688)))))

(assert (= (and d!2225114 c!1330051) b!7130676))

(assert (= (and d!2225114 (not c!1330051)) b!7130677))

(assert (= (and d!2225114 res!2909509) b!7130678))

(assert (= (and b!7130678 res!2909508) b!7130679))

(declare-fun m!7847566 () Bool)

(assert (=> b!7130677 m!7847566))

(declare-fun m!7847568 () Bool)

(assert (=> d!2225114 m!7847568))

(declare-fun m!7847570 () Bool)

(assert (=> d!2225114 m!7847570))

(declare-fun m!7847572 () Bool)

(assert (=> d!2225114 m!7847572))

(declare-fun m!7847574 () Bool)

(assert (=> b!7130678 m!7847574))

(assert (=> b!7130678 m!7847468))

(declare-fun m!7847576 () Bool)

(assert (=> b!7130678 m!7847576))

(assert (=> b!7130623 d!2225114))

(declare-fun bs!1886862 () Bool)

(declare-fun d!2225116 () Bool)

(assert (= bs!1886862 (and d!2225116 d!2225106)))

(declare-fun lambda!433187 () Int)

(assert (=> bs!1886862 (= lambda!433187 lambda!433186)))

(assert (=> d!2225116 (= (inv!88185 setElem!52015) (forall!16922 (exprs!7557 setElem!52015) lambda!433187))))

(declare-fun bs!1886863 () Bool)

(assert (= bs!1886863 d!2225116))

(declare-fun m!7847578 () Bool)

(assert (=> bs!1886863 m!7847578))

(assert (=> setNonEmpty!52015 d!2225116))

(declare-fun b!7130683 () Bool)

(declare-fun e!4285225 () Bool)

(assert (=> b!7130683 (= e!4285225 (>= (size!41488 s1!1688) (size!41488 s1Rec!140)))))

(declare-fun b!7130681 () Bool)

(declare-fun res!2909511 () Bool)

(declare-fun e!4285224 () Bool)

(assert (=> b!7130681 (=> (not res!2909511) (not e!4285224))))

(assert (=> b!7130681 (= res!2909511 (= (head!14471 s1Rec!140) (head!14471 s1!1688)))))

(declare-fun b!7130680 () Bool)

(declare-fun e!4285226 () Bool)

(assert (=> b!7130680 (= e!4285226 e!4285224)))

(declare-fun res!2909510 () Bool)

(assert (=> b!7130680 (=> (not res!2909510) (not e!4285224))))

(assert (=> b!7130680 (= res!2909510 (not ((_ is Nil!69057) s1!1688)))))

(declare-fun d!2225118 () Bool)

(assert (=> d!2225118 e!4285225))

(declare-fun res!2909513 () Bool)

(assert (=> d!2225118 (=> res!2909513 e!4285225)))

(declare-fun lt!2564459 () Bool)

(assert (=> d!2225118 (= res!2909513 (not lt!2564459))))

(assert (=> d!2225118 (= lt!2564459 e!4285226)))

(declare-fun res!2909512 () Bool)

(assert (=> d!2225118 (=> res!2909512 e!4285226)))

(assert (=> d!2225118 (= res!2909512 ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225118 (= (isPrefix!5932 s1Rec!140 s1!1688) lt!2564459)))

(declare-fun b!7130682 () Bool)

(assert (=> b!7130682 (= e!4285224 (isPrefix!5932 (tail!13943 s1Rec!140) (tail!13943 s1!1688)))))

(assert (= (and d!2225118 (not res!2909512)) b!7130680))

(assert (= (and b!7130680 res!2909510) b!7130681))

(assert (= (and b!7130681 res!2909511) b!7130682))

(assert (= (and d!2225118 (not res!2909513)) b!7130683))

(assert (=> b!7130683 m!7847468))

(assert (=> b!7130683 m!7847470))

(assert (=> b!7130681 m!7847532))

(declare-fun m!7847580 () Bool)

(assert (=> b!7130681 m!7847580))

(assert (=> b!7130682 m!7847536))

(declare-fun m!7847582 () Bool)

(assert (=> b!7130682 m!7847582))

(assert (=> b!7130682 m!7847536))

(assert (=> b!7130682 m!7847582))

(declare-fun m!7847584 () Bool)

(assert (=> b!7130682 m!7847584))

(assert (=> b!7130619 d!2225118))

(declare-fun d!2225120 () Bool)

(declare-fun c!1330052 () Bool)

(assert (=> d!2225120 (= c!1330052 (isEmpty!40028 s1!1688))))

(declare-fun e!4285227 () Bool)

(assert (=> d!2225120 (= (matchZipper!3319 z1!552 s1!1688) e!4285227)))

(declare-fun b!7130684 () Bool)

(assert (=> b!7130684 (= e!4285227 (nullableZipper!2762 z1!552))))

(declare-fun b!7130685 () Bool)

(assert (=> b!7130685 (= e!4285227 (matchZipper!3319 (derivationStepZipper!3174 z1!552 (head!14471 s1!1688)) (tail!13943 s1!1688)))))

(assert (= (and d!2225120 c!1330052) b!7130684))

(assert (= (and d!2225120 (not c!1330052)) b!7130685))

(declare-fun m!7847586 () Bool)

(assert (=> d!2225120 m!7847586))

(assert (=> b!7130684 m!7847530))

(assert (=> b!7130685 m!7847580))

(assert (=> b!7130685 m!7847580))

(declare-fun m!7847588 () Bool)

(assert (=> b!7130685 m!7847588))

(assert (=> b!7130685 m!7847582))

(assert (=> b!7130685 m!7847588))

(assert (=> b!7130685 m!7847582))

(declare-fun m!7847590 () Bool)

(assert (=> b!7130685 m!7847590))

(assert (=> start!694600 d!2225120))

(declare-fun d!2225122 () Bool)

(assert (=> d!2225122 (= s2!1620 s2Rec!140)))

(declare-fun lt!2564462 () Unit!162995)

(declare-fun choose!55099 (List!69181 List!69181 List!69181 List!69181 List!69181) Unit!162995)

(assert (=> d!2225122 (= lt!2564462 (choose!55099 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390))))

(assert (=> d!2225122 (isPrefix!5932 s1!1688 s!7390)))

(assert (=> d!2225122 (= (lemmaSamePrefixThenSameSuffix!2743 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390) lt!2564462)))

(declare-fun bs!1886864 () Bool)

(assert (= bs!1886864 d!2225122))

(declare-fun m!7847592 () Bool)

(assert (=> bs!1886864 m!7847592))

(assert (=> bs!1886864 m!7847464))

(assert (=> b!7130612 d!2225122))

(declare-fun b!7130687 () Bool)

(declare-fun e!4285228 () List!69181)

(assert (=> b!7130687 (= e!4285228 (Cons!69057 (h!75505 s1Rec!140) (++!16201 (t!383158 s1Rec!140) (Cons!69057 (h!75505 s2Rec!140) Nil!69057))))))

(declare-fun d!2225124 () Bool)

(declare-fun e!4285229 () Bool)

(assert (=> d!2225124 e!4285229))

(declare-fun res!2909515 () Bool)

(assert (=> d!2225124 (=> (not res!2909515) (not e!4285229))))

(declare-fun lt!2564463 () List!69181)

(assert (=> d!2225124 (= res!2909515 (= (content!14122 lt!2564463) ((_ map or) (content!14122 s1Rec!140) (content!14122 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))))

(assert (=> d!2225124 (= lt!2564463 e!4285228)))

(declare-fun c!1330053 () Bool)

(assert (=> d!2225124 (= c!1330053 ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225124 (= (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) lt!2564463)))

(declare-fun b!7130686 () Bool)

(assert (=> b!7130686 (= e!4285228 (Cons!69057 (h!75505 s2Rec!140) Nil!69057))))

(declare-fun b!7130688 () Bool)

(declare-fun res!2909514 () Bool)

(assert (=> b!7130688 (=> (not res!2909514) (not e!4285229))))

(assert (=> b!7130688 (= res!2909514 (= (size!41488 lt!2564463) (+ (size!41488 s1Rec!140) (size!41488 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))))

(declare-fun b!7130689 () Bool)

(assert (=> b!7130689 (= e!4285229 (or (not (= (Cons!69057 (h!75505 s2Rec!140) Nil!69057) Nil!69057)) (= lt!2564463 s1Rec!140)))))

(assert (= (and d!2225124 c!1330053) b!7130686))

(assert (= (and d!2225124 (not c!1330053)) b!7130687))

(assert (= (and d!2225124 res!2909515) b!7130688))

(assert (= (and b!7130688 res!2909514) b!7130689))

(declare-fun m!7847594 () Bool)

(assert (=> b!7130687 m!7847594))

(declare-fun m!7847596 () Bool)

(assert (=> d!2225124 m!7847596))

(assert (=> d!2225124 m!7847508))

(declare-fun m!7847598 () Bool)

(assert (=> d!2225124 m!7847598))

(declare-fun m!7847600 () Bool)

(assert (=> b!7130688 m!7847600))

(assert (=> b!7130688 m!7847470))

(declare-fun m!7847602 () Bool)

(assert (=> b!7130688 m!7847602))

(assert (=> b!7130620 d!2225124))

(declare-fun b!7130693 () Bool)

(declare-fun e!4285231 () Bool)

(assert (=> b!7130693 (= e!4285231 (>= (size!41488 lt!2564437) (size!41488 s1!1688)))))

(declare-fun b!7130691 () Bool)

(declare-fun res!2909517 () Bool)

(declare-fun e!4285230 () Bool)

(assert (=> b!7130691 (=> (not res!2909517) (not e!4285230))))

(assert (=> b!7130691 (= res!2909517 (= (head!14471 s1!1688) (head!14471 lt!2564437)))))

(declare-fun b!7130690 () Bool)

(declare-fun e!4285232 () Bool)

(assert (=> b!7130690 (= e!4285232 e!4285230)))

(declare-fun res!2909516 () Bool)

(assert (=> b!7130690 (=> (not res!2909516) (not e!4285230))))

(assert (=> b!7130690 (= res!2909516 (not ((_ is Nil!69057) lt!2564437)))))

(declare-fun d!2225126 () Bool)

(assert (=> d!2225126 e!4285231))

(declare-fun res!2909519 () Bool)

(assert (=> d!2225126 (=> res!2909519 e!4285231)))

(declare-fun lt!2564464 () Bool)

(assert (=> d!2225126 (= res!2909519 (not lt!2564464))))

(assert (=> d!2225126 (= lt!2564464 e!4285232)))

(declare-fun res!2909518 () Bool)

(assert (=> d!2225126 (=> res!2909518 e!4285232)))

(assert (=> d!2225126 (= res!2909518 ((_ is Nil!69057) s1!1688))))

(assert (=> d!2225126 (= (isPrefix!5932 s1!1688 lt!2564437) lt!2564464)))

(declare-fun b!7130692 () Bool)

(assert (=> b!7130692 (= e!4285230 (isPrefix!5932 (tail!13943 s1!1688) (tail!13943 lt!2564437)))))

(assert (= (and d!2225126 (not res!2909518)) b!7130690))

(assert (= (and b!7130690 res!2909516) b!7130691))

(assert (= (and b!7130691 res!2909517) b!7130692))

(assert (= (and d!2225126 (not res!2909519)) b!7130693))

(declare-fun m!7847604 () Bool)

(assert (=> b!7130693 m!7847604))

(assert (=> b!7130693 m!7847468))

(assert (=> b!7130691 m!7847580))

(declare-fun m!7847606 () Bool)

(assert (=> b!7130691 m!7847606))

(assert (=> b!7130692 m!7847582))

(declare-fun m!7847608 () Bool)

(assert (=> b!7130692 m!7847608))

(assert (=> b!7130692 m!7847582))

(assert (=> b!7130692 m!7847608))

(declare-fun m!7847610 () Bool)

(assert (=> b!7130692 m!7847610))

(assert (=> b!7130620 d!2225126))

(declare-fun d!2225128 () Bool)

(assert (=> d!2225128 (= (++!16201 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) (t!383158 s2Rec!140)) s!7390)))

(declare-fun lt!2564467 () Unit!162995)

(declare-fun choose!55100 (List!69181 C!36396 List!69181 List!69181) Unit!162995)

(assert (=> d!2225128 (= lt!2564467 (choose!55100 s1Rec!140 (h!75505 s2Rec!140) (t!383158 s2Rec!140) s!7390))))

(assert (=> d!2225128 (= (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) (t!383158 s2Rec!140))) s!7390)))

(assert (=> d!2225128 (= (lemmaMoveElementToOtherListKeepsConcatEq!3023 s1Rec!140 (h!75505 s2Rec!140) (t!383158 s2Rec!140) s!7390) lt!2564467)))

(declare-fun bs!1886865 () Bool)

(assert (= bs!1886865 d!2225128))

(assert (=> bs!1886865 m!7847478))

(assert (=> bs!1886865 m!7847478))

(declare-fun m!7847612 () Bool)

(assert (=> bs!1886865 m!7847612))

(declare-fun m!7847614 () Bool)

(assert (=> bs!1886865 m!7847614))

(declare-fun m!7847616 () Bool)

(assert (=> bs!1886865 m!7847616))

(assert (=> b!7130620 d!2225128))

(declare-fun d!2225130 () Bool)

(assert (=> d!2225130 (isPrefix!5932 s1!1688 (++!16201 s1!1688 s2!1620))))

(declare-fun lt!2564470 () Unit!162995)

(declare-fun choose!55101 (List!69181 List!69181) Unit!162995)

(assert (=> d!2225130 (= lt!2564470 (choose!55101 s1!1688 s2!1620))))

(assert (=> d!2225130 (= (lemmaConcatTwoListThenFirstIsPrefix!3645 s1!1688 s2!1620) lt!2564470)))

(declare-fun bs!1886866 () Bool)

(assert (= bs!1886866 d!2225130))

(assert (=> bs!1886866 m!7847446))

(assert (=> bs!1886866 m!7847446))

(declare-fun m!7847618 () Bool)

(assert (=> bs!1886866 m!7847618))

(declare-fun m!7847620 () Bool)

(assert (=> bs!1886866 m!7847620))

(assert (=> b!7130620 d!2225130))

(declare-fun d!2225132 () Bool)

(assert (=> d!2225132 (isPrefix!5932 s1Rec!140 (++!16201 s1Rec!140 s2Rec!140))))

(declare-fun lt!2564471 () Unit!162995)

(assert (=> d!2225132 (= lt!2564471 (choose!55101 s1Rec!140 s2Rec!140))))

(assert (=> d!2225132 (= (lemmaConcatTwoListThenFirstIsPrefix!3645 s1Rec!140 s2Rec!140) lt!2564471)))

(declare-fun bs!1886867 () Bool)

(assert (= bs!1886867 d!2225132))

(assert (=> bs!1886867 m!7847486))

(assert (=> bs!1886867 m!7847486))

(declare-fun m!7847622 () Bool)

(assert (=> bs!1886867 m!7847622))

(declare-fun m!7847624 () Bool)

(assert (=> bs!1886867 m!7847624))

(assert (=> b!7130620 d!2225132))

(declare-fun b!7130697 () Bool)

(declare-fun e!4285234 () Bool)

(assert (=> b!7130697 (= e!4285234 (>= (size!41488 s!7390) (size!41488 s1!1688)))))

(declare-fun b!7130695 () Bool)

(declare-fun res!2909521 () Bool)

(declare-fun e!4285233 () Bool)

(assert (=> b!7130695 (=> (not res!2909521) (not e!4285233))))

(assert (=> b!7130695 (= res!2909521 (= (head!14471 s1!1688) (head!14471 s!7390)))))

(declare-fun b!7130694 () Bool)

(declare-fun e!4285235 () Bool)

(assert (=> b!7130694 (= e!4285235 e!4285233)))

(declare-fun res!2909520 () Bool)

(assert (=> b!7130694 (=> (not res!2909520) (not e!4285233))))

(assert (=> b!7130694 (= res!2909520 (not ((_ is Nil!69057) s!7390)))))

(declare-fun d!2225134 () Bool)

(assert (=> d!2225134 e!4285234))

(declare-fun res!2909523 () Bool)

(assert (=> d!2225134 (=> res!2909523 e!4285234)))

(declare-fun lt!2564472 () Bool)

(assert (=> d!2225134 (= res!2909523 (not lt!2564472))))

(assert (=> d!2225134 (= lt!2564472 e!4285235)))

(declare-fun res!2909522 () Bool)

(assert (=> d!2225134 (=> res!2909522 e!4285235)))

(assert (=> d!2225134 (= res!2909522 ((_ is Nil!69057) s1!1688))))

(assert (=> d!2225134 (= (isPrefix!5932 s1!1688 s!7390) lt!2564472)))

(declare-fun b!7130696 () Bool)

(assert (=> b!7130696 (= e!4285233 (isPrefix!5932 (tail!13943 s1!1688) (tail!13943 s!7390)))))

(assert (= (and d!2225134 (not res!2909522)) b!7130694))

(assert (= (and b!7130694 res!2909520) b!7130695))

(assert (= (and b!7130695 res!2909521) b!7130696))

(assert (= (and d!2225134 (not res!2909523)) b!7130697))

(assert (=> b!7130697 m!7847554))

(assert (=> b!7130697 m!7847468))

(assert (=> b!7130695 m!7847580))

(assert (=> b!7130695 m!7847558))

(assert (=> b!7130696 m!7847582))

(assert (=> b!7130696 m!7847562))

(assert (=> b!7130696 m!7847582))

(assert (=> b!7130696 m!7847562))

(declare-fun m!7847626 () Bool)

(assert (=> b!7130696 m!7847626))

(assert (=> b!7130620 d!2225134))

(declare-fun d!2225136 () Bool)

(assert (=> d!2225136 (isPrefix!5932 lt!2564434 (++!16201 lt!2564434 (t!383158 s2Rec!140)))))

(declare-fun lt!2564473 () Unit!162995)

(assert (=> d!2225136 (= lt!2564473 (choose!55101 lt!2564434 (t!383158 s2Rec!140)))))

(assert (=> d!2225136 (= (lemmaConcatTwoListThenFirstIsPrefix!3645 lt!2564434 (t!383158 s2Rec!140)) lt!2564473)))

(declare-fun bs!1886868 () Bool)

(assert (= bs!1886868 d!2225136))

(assert (=> bs!1886868 m!7847476))

(assert (=> bs!1886868 m!7847476))

(declare-fun m!7847628 () Bool)

(assert (=> bs!1886868 m!7847628))

(declare-fun m!7847630 () Bool)

(assert (=> bs!1886868 m!7847630))

(assert (=> b!7130620 d!2225136))

(declare-fun d!2225138 () Bool)

(declare-fun lt!2564474 () Int)

(assert (=> d!2225138 (>= lt!2564474 0)))

(declare-fun e!4285236 () Int)

(assert (=> d!2225138 (= lt!2564474 e!4285236)))

(declare-fun c!1330054 () Bool)

(assert (=> d!2225138 (= c!1330054 ((_ is Nil!69057) s1!1688))))

(assert (=> d!2225138 (= (size!41488 s1!1688) lt!2564474)))

(declare-fun b!7130698 () Bool)

(assert (=> b!7130698 (= e!4285236 0)))

(declare-fun b!7130699 () Bool)

(assert (=> b!7130699 (= e!4285236 (+ 1 (size!41488 (t!383158 s1!1688))))))

(assert (= (and d!2225138 c!1330054) b!7130698))

(assert (= (and d!2225138 (not c!1330054)) b!7130699))

(declare-fun m!7847632 () Bool)

(assert (=> b!7130699 m!7847632))

(assert (=> b!7130620 d!2225138))

(declare-fun b!7130703 () Bool)

(declare-fun e!4285238 () Bool)

(assert (=> b!7130703 (= e!4285238 (>= (size!41488 lt!2564431) (size!41488 s1Rec!140)))))

(declare-fun b!7130701 () Bool)

(declare-fun res!2909525 () Bool)

(declare-fun e!4285237 () Bool)

(assert (=> b!7130701 (=> (not res!2909525) (not e!4285237))))

(assert (=> b!7130701 (= res!2909525 (= (head!14471 s1Rec!140) (head!14471 lt!2564431)))))

(declare-fun b!7130700 () Bool)

(declare-fun e!4285239 () Bool)

(assert (=> b!7130700 (= e!4285239 e!4285237)))

(declare-fun res!2909524 () Bool)

(assert (=> b!7130700 (=> (not res!2909524) (not e!4285237))))

(assert (=> b!7130700 (= res!2909524 (not ((_ is Nil!69057) lt!2564431)))))

(declare-fun d!2225140 () Bool)

(assert (=> d!2225140 e!4285238))

(declare-fun res!2909527 () Bool)

(assert (=> d!2225140 (=> res!2909527 e!4285238)))

(declare-fun lt!2564475 () Bool)

(assert (=> d!2225140 (= res!2909527 (not lt!2564475))))

(assert (=> d!2225140 (= lt!2564475 e!4285239)))

(declare-fun res!2909526 () Bool)

(assert (=> d!2225140 (=> res!2909526 e!4285239)))

(assert (=> d!2225140 (= res!2909526 ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225140 (= (isPrefix!5932 s1Rec!140 lt!2564431) lt!2564475)))

(declare-fun b!7130702 () Bool)

(assert (=> b!7130702 (= e!4285237 (isPrefix!5932 (tail!13943 s1Rec!140) (tail!13943 lt!2564431)))))

(assert (= (and d!2225140 (not res!2909526)) b!7130700))

(assert (= (and b!7130700 res!2909524) b!7130701))

(assert (= (and b!7130701 res!2909525) b!7130702))

(assert (= (and d!2225140 (not res!2909527)) b!7130703))

(declare-fun m!7847634 () Bool)

(assert (=> b!7130703 m!7847634))

(assert (=> b!7130703 m!7847470))

(assert (=> b!7130701 m!7847532))

(declare-fun m!7847636 () Bool)

(assert (=> b!7130701 m!7847636))

(assert (=> b!7130702 m!7847536))

(declare-fun m!7847638 () Bool)

(assert (=> b!7130702 m!7847638))

(assert (=> b!7130702 m!7847536))

(assert (=> b!7130702 m!7847638))

(declare-fun m!7847640 () Bool)

(assert (=> b!7130702 m!7847640))

(assert (=> b!7130620 d!2225140))

(declare-fun d!2225142 () Bool)

(declare-fun lt!2564476 () Int)

(assert (=> d!2225142 (>= lt!2564476 0)))

(declare-fun e!4285240 () Int)

(assert (=> d!2225142 (= lt!2564476 e!4285240)))

(declare-fun c!1330055 () Bool)

(assert (=> d!2225142 (= c!1330055 ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225142 (= (size!41488 s1Rec!140) lt!2564476)))

(declare-fun b!7130704 () Bool)

(assert (=> b!7130704 (= e!4285240 0)))

(declare-fun b!7130705 () Bool)

(assert (=> b!7130705 (= e!4285240 (+ 1 (size!41488 (t!383158 s1Rec!140))))))

(assert (= (and d!2225142 c!1330055) b!7130704))

(assert (= (and d!2225142 (not c!1330055)) b!7130705))

(declare-fun m!7847642 () Bool)

(assert (=> b!7130705 m!7847642))

(assert (=> b!7130620 d!2225142))

(declare-fun b!7130707 () Bool)

(declare-fun e!4285241 () List!69181)

(assert (=> b!7130707 (= e!4285241 (Cons!69057 (h!75505 lt!2564434) (++!16201 (t!383158 lt!2564434) (t!383158 s2Rec!140))))))

(declare-fun d!2225144 () Bool)

(declare-fun e!4285242 () Bool)

(assert (=> d!2225144 e!4285242))

(declare-fun res!2909529 () Bool)

(assert (=> d!2225144 (=> (not res!2909529) (not e!4285242))))

(declare-fun lt!2564477 () List!69181)

(assert (=> d!2225144 (= res!2909529 (= (content!14122 lt!2564477) ((_ map or) (content!14122 lt!2564434) (content!14122 (t!383158 s2Rec!140)))))))

(assert (=> d!2225144 (= lt!2564477 e!4285241)))

(declare-fun c!1330056 () Bool)

(assert (=> d!2225144 (= c!1330056 ((_ is Nil!69057) lt!2564434))))

(assert (=> d!2225144 (= (++!16201 lt!2564434 (t!383158 s2Rec!140)) lt!2564477)))

(declare-fun b!7130706 () Bool)

(assert (=> b!7130706 (= e!4285241 (t!383158 s2Rec!140))))

(declare-fun b!7130708 () Bool)

(declare-fun res!2909528 () Bool)

(assert (=> b!7130708 (=> (not res!2909528) (not e!4285242))))

(assert (=> b!7130708 (= res!2909528 (= (size!41488 lt!2564477) (+ (size!41488 lt!2564434) (size!41488 (t!383158 s2Rec!140)))))))

(declare-fun b!7130709 () Bool)

(assert (=> b!7130709 (= e!4285242 (or (not (= (t!383158 s2Rec!140) Nil!69057)) (= lt!2564477 lt!2564434)))))

(assert (= (and d!2225144 c!1330056) b!7130706))

(assert (= (and d!2225144 (not c!1330056)) b!7130707))

(assert (= (and d!2225144 res!2909529) b!7130708))

(assert (= (and b!7130708 res!2909528) b!7130709))

(declare-fun m!7847644 () Bool)

(assert (=> b!7130707 m!7847644))

(declare-fun m!7847646 () Bool)

(assert (=> d!2225144 m!7847646))

(declare-fun m!7847648 () Bool)

(assert (=> d!2225144 m!7847648))

(declare-fun m!7847650 () Bool)

(assert (=> d!2225144 m!7847650))

(declare-fun m!7847652 () Bool)

(assert (=> b!7130708 m!7847652))

(assert (=> b!7130708 m!7847454))

(declare-fun m!7847654 () Bool)

(assert (=> b!7130708 m!7847654))

(assert (=> b!7130620 d!2225144))

(declare-fun b!7130713 () Bool)

(declare-fun e!4285244 () Bool)

(assert (=> b!7130713 (= e!4285244 (>= (size!41488 lt!2564438) (size!41488 lt!2564434)))))

(declare-fun b!7130711 () Bool)

(declare-fun res!2909531 () Bool)

(declare-fun e!4285243 () Bool)

(assert (=> b!7130711 (=> (not res!2909531) (not e!4285243))))

(assert (=> b!7130711 (= res!2909531 (= (head!14471 lt!2564434) (head!14471 lt!2564438)))))

(declare-fun b!7130710 () Bool)

(declare-fun e!4285245 () Bool)

(assert (=> b!7130710 (= e!4285245 e!4285243)))

(declare-fun res!2909530 () Bool)

(assert (=> b!7130710 (=> (not res!2909530) (not e!4285243))))

(assert (=> b!7130710 (= res!2909530 (not ((_ is Nil!69057) lt!2564438)))))

(declare-fun d!2225146 () Bool)

(assert (=> d!2225146 e!4285244))

(declare-fun res!2909533 () Bool)

(assert (=> d!2225146 (=> res!2909533 e!4285244)))

(declare-fun lt!2564478 () Bool)

(assert (=> d!2225146 (= res!2909533 (not lt!2564478))))

(assert (=> d!2225146 (= lt!2564478 e!4285245)))

(declare-fun res!2909532 () Bool)

(assert (=> d!2225146 (=> res!2909532 e!4285245)))

(assert (=> d!2225146 (= res!2909532 ((_ is Nil!69057) lt!2564434))))

(assert (=> d!2225146 (= (isPrefix!5932 lt!2564434 lt!2564438) lt!2564478)))

(declare-fun b!7130712 () Bool)

(assert (=> b!7130712 (= e!4285243 (isPrefix!5932 (tail!13943 lt!2564434) (tail!13943 lt!2564438)))))

(assert (= (and d!2225146 (not res!2909532)) b!7130710))

(assert (= (and b!7130710 res!2909530) b!7130711))

(assert (= (and b!7130711 res!2909531) b!7130712))

(assert (= (and d!2225146 (not res!2909533)) b!7130713))

(declare-fun m!7847656 () Bool)

(assert (=> b!7130713 m!7847656))

(assert (=> b!7130713 m!7847454))

(assert (=> b!7130711 m!7847556))

(declare-fun m!7847658 () Bool)

(assert (=> b!7130711 m!7847658))

(assert (=> b!7130712 m!7847560))

(declare-fun m!7847660 () Bool)

(assert (=> b!7130712 m!7847660))

(assert (=> b!7130712 m!7847560))

(assert (=> b!7130712 m!7847660))

(declare-fun m!7847662 () Bool)

(assert (=> b!7130712 m!7847662))

(assert (=> b!7130620 d!2225146))

(declare-fun b!7130718 () Bool)

(declare-fun e!4285248 () Bool)

(declare-fun tp!1965076 () Bool)

(declare-fun tp!1965077 () Bool)

(assert (=> b!7130718 (= e!4285248 (and tp!1965076 tp!1965077))))

(assert (=> b!7130622 (= tp!1965063 e!4285248)))

(assert (= (and b!7130622 ((_ is Cons!69056) (exprs!7557 setElem!52015))) b!7130718))

(declare-fun b!7130723 () Bool)

(declare-fun e!4285251 () Bool)

(declare-fun tp!1965080 () Bool)

(assert (=> b!7130723 (= e!4285251 (and tp_is_empty!45727 tp!1965080))))

(assert (=> b!7130621 (= tp!1965066 e!4285251)))

(assert (= (and b!7130621 ((_ is Cons!69057) (t!383158 s2Rec!140))) b!7130723))

(declare-fun b!7130724 () Bool)

(declare-fun e!4285252 () Bool)

(declare-fun tp!1965081 () Bool)

(assert (=> b!7130724 (= e!4285252 (and tp_is_empty!45727 tp!1965081))))

(assert (=> b!7130605 (= tp!1965071 e!4285252)))

(assert (= (and b!7130605 ((_ is Cons!69057) (t!383158 s1!1688))) b!7130724))

(declare-fun b!7130725 () Bool)

(declare-fun e!4285253 () Bool)

(declare-fun tp!1965082 () Bool)

(assert (=> b!7130725 (= e!4285253 (and tp_is_empty!45727 tp!1965082))))

(assert (=> b!7130618 (= tp!1965069 e!4285253)))

(assert (= (and b!7130618 ((_ is Cons!69057) (t!383158 s!7390))) b!7130725))

(declare-fun condSetEmpty!52018 () Bool)

(assert (=> setNonEmpty!52015 (= condSetEmpty!52018 (= setRest!52015 ((as const (Array Context!14114 Bool)) false)))))

(declare-fun setRes!52018 () Bool)

(assert (=> setNonEmpty!52015 (= tp!1965065 setRes!52018)))

(declare-fun setIsEmpty!52018 () Bool)

(assert (=> setIsEmpty!52018 setRes!52018))

(declare-fun tp!1965088 () Bool)

(declare-fun setElem!52018 () Context!14114)

(declare-fun setNonEmpty!52018 () Bool)

(declare-fun e!4285256 () Bool)

(assert (=> setNonEmpty!52018 (= setRes!52018 (and tp!1965088 (inv!88185 setElem!52018) e!4285256))))

(declare-fun setRest!52018 () (InoxSet Context!14114))

(assert (=> setNonEmpty!52018 (= setRest!52015 ((_ map or) (store ((as const (Array Context!14114 Bool)) false) setElem!52018 true) setRest!52018))))

(declare-fun b!7130730 () Bool)

(declare-fun tp!1965087 () Bool)

(assert (=> b!7130730 (= e!4285256 tp!1965087)))

(assert (= (and setNonEmpty!52015 condSetEmpty!52018) setIsEmpty!52018))

(assert (= (and setNonEmpty!52015 (not condSetEmpty!52018)) setNonEmpty!52018))

(assert (= setNonEmpty!52018 b!7130730))

(declare-fun m!7847664 () Bool)

(assert (=> setNonEmpty!52018 m!7847664))

(declare-fun b!7130731 () Bool)

(declare-fun e!4285257 () Bool)

(declare-fun tp!1965089 () Bool)

(declare-fun tp!1965090 () Bool)

(assert (=> b!7130731 (= e!4285257 (and tp!1965089 tp!1965090))))

(assert (=> b!7130610 (= tp!1965067 e!4285257)))

(assert (= (and b!7130610 ((_ is Cons!69056) (exprs!7557 setElem!52014))) b!7130731))

(declare-fun b!7130732 () Bool)

(declare-fun e!4285258 () Bool)

(declare-fun tp!1965091 () Bool)

(assert (=> b!7130732 (= e!4285258 (and tp_is_empty!45727 tp!1965091))))

(assert (=> b!7130603 (= tp!1965064 e!4285258)))

(assert (= (and b!7130603 ((_ is Cons!69057) (t!383158 s1Rec!140))) b!7130732))

(declare-fun b!7130733 () Bool)

(declare-fun e!4285259 () Bool)

(declare-fun tp!1965092 () Bool)

(assert (=> b!7130733 (= e!4285259 (and tp_is_empty!45727 tp!1965092))))

(assert (=> b!7130611 (= tp!1965070 e!4285259)))

(assert (= (and b!7130611 ((_ is Cons!69057) (t!383158 s2!1620))) b!7130733))

(declare-fun condSetEmpty!52019 () Bool)

(assert (=> setNonEmpty!52014 (= condSetEmpty!52019 (= setRest!52014 ((as const (Array Context!14114 Bool)) false)))))

(declare-fun setRes!52019 () Bool)

(assert (=> setNonEmpty!52014 (= tp!1965068 setRes!52019)))

(declare-fun setIsEmpty!52019 () Bool)

(assert (=> setIsEmpty!52019 setRes!52019))

(declare-fun setElem!52019 () Context!14114)

(declare-fun tp!1965094 () Bool)

(declare-fun e!4285260 () Bool)

(declare-fun setNonEmpty!52019 () Bool)

(assert (=> setNonEmpty!52019 (= setRes!52019 (and tp!1965094 (inv!88185 setElem!52019) e!4285260))))

(declare-fun setRest!52019 () (InoxSet Context!14114))

(assert (=> setNonEmpty!52019 (= setRest!52014 ((_ map or) (store ((as const (Array Context!14114 Bool)) false) setElem!52019 true) setRest!52019))))

(declare-fun b!7130734 () Bool)

(declare-fun tp!1965093 () Bool)

(assert (=> b!7130734 (= e!4285260 tp!1965093)))

(assert (= (and setNonEmpty!52014 condSetEmpty!52019) setIsEmpty!52019))

(assert (= (and setNonEmpty!52014 (not condSetEmpty!52019)) setNonEmpty!52019))

(assert (= setNonEmpty!52019 b!7130734))

(declare-fun m!7847666 () Bool)

(assert (=> setNonEmpty!52019 m!7847666))

(check-sat (not b!7130673) (not b!7130730) (not b!7130651) (not setNonEmpty!52018) (not b!7130684) (not b!7130697) (not b!7130705) (not b!7130629) (not b!7130712) (not b!7130691) (not d!2225098) (not b!7130696) (not d!2225122) (not b!7130644) (not d!2225120) (not d!2225128) (not d!2225094) (not b!7130702) (not d!2225144) (not d!2225124) (not b!7130642) (not b!7130643) (not b!7130733) (not b!7130628) (not b!7130693) (not b!7130675) (not b!7130685) (not b!7130695) (not b!7130703) (not b!7130699) (not b!7130725) (not b!7130645) (not d!2225116) (not d!2225114) (not d!2225132) (not setNonEmpty!52019) (not b!7130687) (not b!7130732) (not b!7130734) (not b!7130682) (not d!2225100) (not b!7130701) (not d!2225106) (not d!2225130) (not d!2225102) (not b!7130708) (not b!7130677) (not b!7130731) (not b!7130723) (not b!7130707) (not b!7130674) (not b!7130688) (not b!7130681) (not b!7130724) (not b!7130692) (not b!7130711) (not b!7130713) (not b!7130678) (not d!2225096) (not b!7130640) (not d!2225136) (not b!7130683) (not b!7130718) (not b!7130639) tp_is_empty!45727)
(check-sat)
(get-model)

(declare-fun d!2225194 () Bool)

(assert (=> d!2225194 (= (head!14471 lt!2564434) (h!75505 lt!2564434))))

(assert (=> b!7130711 d!2225194))

(declare-fun d!2225196 () Bool)

(assert (=> d!2225196 (= (head!14471 lt!2564438) (h!75505 lt!2564438))))

(assert (=> b!7130711 d!2225196))

(declare-fun d!2225198 () Bool)

(declare-fun c!1330074 () Bool)

(assert (=> d!2225198 (= c!1330074 (isEmpty!40028 (tail!13943 s1Rec!140)))))

(declare-fun e!4285314 () Bool)

(assert (=> d!2225198 (= (matchZipper!3319 (derivationStepZipper!3174 z1!552 (head!14471 s1Rec!140)) (tail!13943 s1Rec!140)) e!4285314)))

(declare-fun b!7130822 () Bool)

(assert (=> b!7130822 (= e!4285314 (nullableZipper!2762 (derivationStepZipper!3174 z1!552 (head!14471 s1Rec!140))))))

(declare-fun b!7130823 () Bool)

(assert (=> b!7130823 (= e!4285314 (matchZipper!3319 (derivationStepZipper!3174 (derivationStepZipper!3174 z1!552 (head!14471 s1Rec!140)) (head!14471 (tail!13943 s1Rec!140))) (tail!13943 (tail!13943 s1Rec!140))))))

(assert (= (and d!2225198 c!1330074) b!7130822))

(assert (= (and d!2225198 (not c!1330074)) b!7130823))

(assert (=> d!2225198 m!7847536))

(declare-fun m!7847824 () Bool)

(assert (=> d!2225198 m!7847824))

(assert (=> b!7130822 m!7847534))

(declare-fun m!7847826 () Bool)

(assert (=> b!7130822 m!7847826))

(assert (=> b!7130823 m!7847536))

(declare-fun m!7847828 () Bool)

(assert (=> b!7130823 m!7847828))

(assert (=> b!7130823 m!7847534))

(assert (=> b!7130823 m!7847828))

(declare-fun m!7847830 () Bool)

(assert (=> b!7130823 m!7847830))

(assert (=> b!7130823 m!7847536))

(declare-fun m!7847832 () Bool)

(assert (=> b!7130823 m!7847832))

(assert (=> b!7130823 m!7847830))

(assert (=> b!7130823 m!7847832))

(declare-fun m!7847834 () Bool)

(assert (=> b!7130823 m!7847834))

(assert (=> b!7130645 d!2225198))

(declare-fun d!2225200 () Bool)

(assert (=> d!2225200 true))

(declare-fun lambda!433194 () Int)

(declare-fun flatMap!2638 ((InoxSet Context!14114) Int) (InoxSet Context!14114))

(assert (=> d!2225200 (= (derivationStepZipper!3174 z1!552 (head!14471 s1Rec!140)) (flatMap!2638 z1!552 lambda!433194))))

(declare-fun bs!1886878 () Bool)

(assert (= bs!1886878 d!2225200))

(declare-fun m!7847836 () Bool)

(assert (=> bs!1886878 m!7847836))

(assert (=> b!7130645 d!2225200))

(declare-fun d!2225202 () Bool)

(assert (=> d!2225202 (= (head!14471 s1Rec!140) (h!75505 s1Rec!140))))

(assert (=> b!7130645 d!2225202))

(declare-fun d!2225204 () Bool)

(assert (=> d!2225204 (= (tail!13943 s1Rec!140) (t!383158 s1Rec!140))))

(assert (=> b!7130645 d!2225204))

(declare-fun b!7130829 () Bool)

(declare-fun e!4285316 () Bool)

(assert (=> b!7130829 (= e!4285316 (>= (size!41488 (tail!13943 lt!2564437)) (size!41488 (tail!13943 s1!1688))))))

(declare-fun b!7130827 () Bool)

(declare-fun res!2909567 () Bool)

(declare-fun e!4285315 () Bool)

(assert (=> b!7130827 (=> (not res!2909567) (not e!4285315))))

(assert (=> b!7130827 (= res!2909567 (= (head!14471 (tail!13943 s1!1688)) (head!14471 (tail!13943 lt!2564437))))))

(declare-fun b!7130826 () Bool)

(declare-fun e!4285317 () Bool)

(assert (=> b!7130826 (= e!4285317 e!4285315)))

(declare-fun res!2909566 () Bool)

(assert (=> b!7130826 (=> (not res!2909566) (not e!4285315))))

(assert (=> b!7130826 (= res!2909566 (not ((_ is Nil!69057) (tail!13943 lt!2564437))))))

(declare-fun d!2225206 () Bool)

(assert (=> d!2225206 e!4285316))

(declare-fun res!2909569 () Bool)

(assert (=> d!2225206 (=> res!2909569 e!4285316)))

(declare-fun lt!2564509 () Bool)

(assert (=> d!2225206 (= res!2909569 (not lt!2564509))))

(assert (=> d!2225206 (= lt!2564509 e!4285317)))

(declare-fun res!2909568 () Bool)

(assert (=> d!2225206 (=> res!2909568 e!4285317)))

(assert (=> d!2225206 (= res!2909568 ((_ is Nil!69057) (tail!13943 s1!1688)))))

(assert (=> d!2225206 (= (isPrefix!5932 (tail!13943 s1!1688) (tail!13943 lt!2564437)) lt!2564509)))

(declare-fun b!7130828 () Bool)

(assert (=> b!7130828 (= e!4285315 (isPrefix!5932 (tail!13943 (tail!13943 s1!1688)) (tail!13943 (tail!13943 lt!2564437))))))

(assert (= (and d!2225206 (not res!2909568)) b!7130826))

(assert (= (and b!7130826 res!2909566) b!7130827))

(assert (= (and b!7130827 res!2909567) b!7130828))

(assert (= (and d!2225206 (not res!2909569)) b!7130829))

(assert (=> b!7130829 m!7847608))

(declare-fun m!7847838 () Bool)

(assert (=> b!7130829 m!7847838))

(assert (=> b!7130829 m!7847582))

(declare-fun m!7847840 () Bool)

(assert (=> b!7130829 m!7847840))

(assert (=> b!7130827 m!7847582))

(declare-fun m!7847842 () Bool)

(assert (=> b!7130827 m!7847842))

(assert (=> b!7130827 m!7847608))

(declare-fun m!7847844 () Bool)

(assert (=> b!7130827 m!7847844))

(assert (=> b!7130828 m!7847582))

(declare-fun m!7847846 () Bool)

(assert (=> b!7130828 m!7847846))

(assert (=> b!7130828 m!7847608))

(declare-fun m!7847848 () Bool)

(assert (=> b!7130828 m!7847848))

(assert (=> b!7130828 m!7847846))

(assert (=> b!7130828 m!7847848))

(declare-fun m!7847850 () Bool)

(assert (=> b!7130828 m!7847850))

(assert (=> b!7130692 d!2225206))

(declare-fun d!2225208 () Bool)

(assert (=> d!2225208 (= (tail!13943 s1!1688) (t!383158 s1!1688))))

(assert (=> b!7130692 d!2225208))

(declare-fun d!2225210 () Bool)

(assert (=> d!2225210 (= (tail!13943 lt!2564437) (t!383158 lt!2564437))))

(assert (=> b!7130692 d!2225210))

(declare-fun d!2225212 () Bool)

(declare-fun lt!2564510 () Int)

(assert (=> d!2225212 (>= lt!2564510 0)))

(declare-fun e!4285318 () Int)

(assert (=> d!2225212 (= lt!2564510 e!4285318)))

(declare-fun c!1330077 () Bool)

(assert (=> d!2225212 (= c!1330077 ((_ is Nil!69057) lt!2564438))))

(assert (=> d!2225212 (= (size!41488 lt!2564438) lt!2564510)))

(declare-fun b!7130830 () Bool)

(assert (=> b!7130830 (= e!4285318 0)))

(declare-fun b!7130831 () Bool)

(assert (=> b!7130831 (= e!4285318 (+ 1 (size!41488 (t!383158 lt!2564438))))))

(assert (= (and d!2225212 c!1330077) b!7130830))

(assert (= (and d!2225212 (not c!1330077)) b!7130831))

(declare-fun m!7847852 () Bool)

(assert (=> b!7130831 m!7847852))

(assert (=> b!7130713 d!2225212))

(assert (=> b!7130713 d!2225104))

(declare-fun d!2225214 () Bool)

(assert (=> d!2225214 (= (head!14471 s1!1688) (h!75505 s1!1688))))

(assert (=> b!7130695 d!2225214))

(declare-fun d!2225216 () Bool)

(assert (=> d!2225216 (= (head!14471 s!7390) (h!75505 s!7390))))

(assert (=> b!7130695 d!2225216))

(declare-fun bs!1886879 () Bool)

(declare-fun d!2225218 () Bool)

(assert (= bs!1886879 (and d!2225218 d!2225106)))

(declare-fun lambda!433195 () Int)

(assert (=> bs!1886879 (= lambda!433195 lambda!433186)))

(declare-fun bs!1886880 () Bool)

(assert (= bs!1886880 (and d!2225218 d!2225116)))

(assert (=> bs!1886880 (= lambda!433195 lambda!433187)))

(assert (=> d!2225218 (= (inv!88185 setElem!52018) (forall!16922 (exprs!7557 setElem!52018) lambda!433195))))

(declare-fun bs!1886881 () Bool)

(assert (= bs!1886881 d!2225218))

(declare-fun m!7847854 () Bool)

(assert (=> bs!1886881 m!7847854))

(assert (=> setNonEmpty!52018 d!2225218))

(declare-fun d!2225220 () Bool)

(declare-fun lt!2564511 () Int)

(assert (=> d!2225220 (>= lt!2564511 0)))

(declare-fun e!4285319 () Int)

(assert (=> d!2225220 (= lt!2564511 e!4285319)))

(declare-fun c!1330078 () Bool)

(assert (=> d!2225220 (= c!1330078 ((_ is Nil!69057) s!7390))))

(assert (=> d!2225220 (= (size!41488 s!7390) lt!2564511)))

(declare-fun b!7130832 () Bool)

(assert (=> b!7130832 (= e!4285319 0)))

(declare-fun b!7130833 () Bool)

(assert (=> b!7130833 (= e!4285319 (+ 1 (size!41488 (t!383158 s!7390))))))

(assert (= (and d!2225220 c!1330078) b!7130832))

(assert (= (and d!2225220 (not c!1330078)) b!7130833))

(declare-fun m!7847856 () Bool)

(assert (=> b!7130833 m!7847856))

(assert (=> b!7130697 d!2225220))

(assert (=> b!7130697 d!2225138))

(declare-fun d!2225222 () Bool)

(declare-fun lambda!433198 () Int)

(declare-fun exists!3833 ((InoxSet Context!14114) Int) Bool)

(assert (=> d!2225222 (= (nullableZipper!2762 z2!471) (exists!3833 z2!471 lambda!433198))))

(declare-fun bs!1886882 () Bool)

(assert (= bs!1886882 d!2225222))

(declare-fun m!7847858 () Bool)

(assert (=> bs!1886882 m!7847858))

(assert (=> b!7130642 d!2225222))

(declare-fun bs!1886883 () Bool)

(declare-fun d!2225224 () Bool)

(assert (= bs!1886883 (and d!2225224 d!2225222)))

(declare-fun lambda!433199 () Int)

(assert (=> bs!1886883 (= lambda!433199 lambda!433198)))

(assert (=> d!2225224 (= (nullableZipper!2762 z1!552) (exists!3833 z1!552 lambda!433199))))

(declare-fun bs!1886884 () Bool)

(assert (= bs!1886884 d!2225224))

(declare-fun m!7847860 () Bool)

(assert (=> bs!1886884 m!7847860))

(assert (=> b!7130684 d!2225224))

(declare-fun b!7130837 () Bool)

(declare-fun e!4285321 () Bool)

(assert (=> b!7130837 (= e!4285321 (>= (size!41488 (tail!13943 s!7390)) (size!41488 (tail!13943 lt!2564434))))))

(declare-fun b!7130835 () Bool)

(declare-fun res!2909571 () Bool)

(declare-fun e!4285320 () Bool)

(assert (=> b!7130835 (=> (not res!2909571) (not e!4285320))))

(assert (=> b!7130835 (= res!2909571 (= (head!14471 (tail!13943 lt!2564434)) (head!14471 (tail!13943 s!7390))))))

(declare-fun b!7130834 () Bool)

(declare-fun e!4285322 () Bool)

(assert (=> b!7130834 (= e!4285322 e!4285320)))

(declare-fun res!2909570 () Bool)

(assert (=> b!7130834 (=> (not res!2909570) (not e!4285320))))

(assert (=> b!7130834 (= res!2909570 (not ((_ is Nil!69057) (tail!13943 s!7390))))))

(declare-fun d!2225226 () Bool)

(assert (=> d!2225226 e!4285321))

(declare-fun res!2909573 () Bool)

(assert (=> d!2225226 (=> res!2909573 e!4285321)))

(declare-fun lt!2564512 () Bool)

(assert (=> d!2225226 (= res!2909573 (not lt!2564512))))

(assert (=> d!2225226 (= lt!2564512 e!4285322)))

(declare-fun res!2909572 () Bool)

(assert (=> d!2225226 (=> res!2909572 e!4285322)))

(assert (=> d!2225226 (= res!2909572 ((_ is Nil!69057) (tail!13943 lt!2564434)))))

(assert (=> d!2225226 (= (isPrefix!5932 (tail!13943 lt!2564434) (tail!13943 s!7390)) lt!2564512)))

(declare-fun b!7130836 () Bool)

(assert (=> b!7130836 (= e!4285320 (isPrefix!5932 (tail!13943 (tail!13943 lt!2564434)) (tail!13943 (tail!13943 s!7390))))))

(assert (= (and d!2225226 (not res!2909572)) b!7130834))

(assert (= (and b!7130834 res!2909570) b!7130835))

(assert (= (and b!7130835 res!2909571) b!7130836))

(assert (= (and d!2225226 (not res!2909573)) b!7130837))

(assert (=> b!7130837 m!7847562))

(declare-fun m!7847862 () Bool)

(assert (=> b!7130837 m!7847862))

(assert (=> b!7130837 m!7847560))

(declare-fun m!7847864 () Bool)

(assert (=> b!7130837 m!7847864))

(assert (=> b!7130835 m!7847560))

(declare-fun m!7847866 () Bool)

(assert (=> b!7130835 m!7847866))

(assert (=> b!7130835 m!7847562))

(declare-fun m!7847868 () Bool)

(assert (=> b!7130835 m!7847868))

(assert (=> b!7130836 m!7847560))

(declare-fun m!7847870 () Bool)

(assert (=> b!7130836 m!7847870))

(assert (=> b!7130836 m!7847562))

(declare-fun m!7847872 () Bool)

(assert (=> b!7130836 m!7847872))

(assert (=> b!7130836 m!7847870))

(assert (=> b!7130836 m!7847872))

(declare-fun m!7847874 () Bool)

(assert (=> b!7130836 m!7847874))

(assert (=> b!7130674 d!2225226))

(declare-fun d!2225228 () Bool)

(assert (=> d!2225228 (= (tail!13943 lt!2564434) (t!383158 lt!2564434))))

(assert (=> b!7130674 d!2225228))

(declare-fun d!2225230 () Bool)

(assert (=> d!2225230 (= (tail!13943 s!7390) (t!383158 s!7390))))

(assert (=> b!7130674 d!2225230))

(declare-fun b!7130841 () Bool)

(declare-fun e!4285324 () Bool)

(assert (=> b!7130841 (= e!4285324 (>= (size!41488 (++!16201 lt!2564434 (t!383158 s2Rec!140))) (size!41488 lt!2564434)))))

(declare-fun b!7130839 () Bool)

(declare-fun res!2909575 () Bool)

(declare-fun e!4285323 () Bool)

(assert (=> b!7130839 (=> (not res!2909575) (not e!4285323))))

(assert (=> b!7130839 (= res!2909575 (= (head!14471 lt!2564434) (head!14471 (++!16201 lt!2564434 (t!383158 s2Rec!140)))))))

(declare-fun b!7130838 () Bool)

(declare-fun e!4285325 () Bool)

(assert (=> b!7130838 (= e!4285325 e!4285323)))

(declare-fun res!2909574 () Bool)

(assert (=> b!7130838 (=> (not res!2909574) (not e!4285323))))

(assert (=> b!7130838 (= res!2909574 (not ((_ is Nil!69057) (++!16201 lt!2564434 (t!383158 s2Rec!140)))))))

(declare-fun d!2225232 () Bool)

(assert (=> d!2225232 e!4285324))

(declare-fun res!2909577 () Bool)

(assert (=> d!2225232 (=> res!2909577 e!4285324)))

(declare-fun lt!2564513 () Bool)

(assert (=> d!2225232 (= res!2909577 (not lt!2564513))))

(assert (=> d!2225232 (= lt!2564513 e!4285325)))

(declare-fun res!2909576 () Bool)

(assert (=> d!2225232 (=> res!2909576 e!4285325)))

(assert (=> d!2225232 (= res!2909576 ((_ is Nil!69057) lt!2564434))))

(assert (=> d!2225232 (= (isPrefix!5932 lt!2564434 (++!16201 lt!2564434 (t!383158 s2Rec!140))) lt!2564513)))

(declare-fun b!7130840 () Bool)

(assert (=> b!7130840 (= e!4285323 (isPrefix!5932 (tail!13943 lt!2564434) (tail!13943 (++!16201 lt!2564434 (t!383158 s2Rec!140)))))))

(assert (= (and d!2225232 (not res!2909576)) b!7130838))

(assert (= (and b!7130838 res!2909574) b!7130839))

(assert (= (and b!7130839 res!2909575) b!7130840))

(assert (= (and d!2225232 (not res!2909577)) b!7130841))

(assert (=> b!7130841 m!7847476))

(declare-fun m!7847876 () Bool)

(assert (=> b!7130841 m!7847876))

(assert (=> b!7130841 m!7847454))

(assert (=> b!7130839 m!7847556))

(assert (=> b!7130839 m!7847476))

(declare-fun m!7847878 () Bool)

(assert (=> b!7130839 m!7847878))

(assert (=> b!7130840 m!7847560))

(assert (=> b!7130840 m!7847476))

(declare-fun m!7847880 () Bool)

(assert (=> b!7130840 m!7847880))

(assert (=> b!7130840 m!7847560))

(assert (=> b!7130840 m!7847880))

(declare-fun m!7847882 () Bool)

(assert (=> b!7130840 m!7847882))

(assert (=> d!2225136 d!2225232))

(assert (=> d!2225136 d!2225144))

(declare-fun d!2225234 () Bool)

(assert (=> d!2225234 (isPrefix!5932 lt!2564434 (++!16201 lt!2564434 (t!383158 s2Rec!140)))))

(assert (=> d!2225234 true))

(declare-fun _$46!2054 () Unit!162995)

(assert (=> d!2225234 (= (choose!55101 lt!2564434 (t!383158 s2Rec!140)) _$46!2054)))

(declare-fun bs!1886885 () Bool)

(assert (= bs!1886885 d!2225234))

(assert (=> bs!1886885 m!7847476))

(assert (=> bs!1886885 m!7847476))

(assert (=> bs!1886885 m!7847628))

(assert (=> d!2225136 d!2225234))

(declare-fun b!7130843 () Bool)

(declare-fun e!4285326 () List!69181)

(assert (=> b!7130843 (= e!4285326 (Cons!69057 (h!75505 (t!383158 s1!1688)) (++!16201 (t!383158 (t!383158 s1!1688)) s2!1620)))))

(declare-fun d!2225236 () Bool)

(declare-fun e!4285327 () Bool)

(assert (=> d!2225236 e!4285327))

(declare-fun res!2909579 () Bool)

(assert (=> d!2225236 (=> (not res!2909579) (not e!4285327))))

(declare-fun lt!2564514 () List!69181)

(assert (=> d!2225236 (= res!2909579 (= (content!14122 lt!2564514) ((_ map or) (content!14122 (t!383158 s1!1688)) (content!14122 s2!1620))))))

(assert (=> d!2225236 (= lt!2564514 e!4285326)))

(declare-fun c!1330081 () Bool)

(assert (=> d!2225236 (= c!1330081 ((_ is Nil!69057) (t!383158 s1!1688)))))

(assert (=> d!2225236 (= (++!16201 (t!383158 s1!1688) s2!1620) lt!2564514)))

(declare-fun b!7130842 () Bool)

(assert (=> b!7130842 (= e!4285326 s2!1620)))

(declare-fun b!7130844 () Bool)

(declare-fun res!2909578 () Bool)

(assert (=> b!7130844 (=> (not res!2909578) (not e!4285327))))

(assert (=> b!7130844 (= res!2909578 (= (size!41488 lt!2564514) (+ (size!41488 (t!383158 s1!1688)) (size!41488 s2!1620))))))

(declare-fun b!7130845 () Bool)

(assert (=> b!7130845 (= e!4285327 (or (not (= s2!1620 Nil!69057)) (= lt!2564514 (t!383158 s1!1688))))))

(assert (= (and d!2225236 c!1330081) b!7130842))

(assert (= (and d!2225236 (not c!1330081)) b!7130843))

(assert (= (and d!2225236 res!2909579) b!7130844))

(assert (= (and b!7130844 res!2909578) b!7130845))

(declare-fun m!7847884 () Bool)

(assert (=> b!7130843 m!7847884))

(declare-fun m!7847886 () Bool)

(assert (=> d!2225236 m!7847886))

(declare-fun m!7847888 () Bool)

(assert (=> d!2225236 m!7847888))

(assert (=> d!2225236 m!7847572))

(declare-fun m!7847890 () Bool)

(assert (=> b!7130844 m!7847890))

(assert (=> b!7130844 m!7847632))

(assert (=> b!7130844 m!7847576))

(assert (=> b!7130677 d!2225236))

(declare-fun d!2225238 () Bool)

(declare-fun lt!2564515 () Int)

(assert (=> d!2225238 (>= lt!2564515 0)))

(declare-fun e!4285328 () Int)

(assert (=> d!2225238 (= lt!2564515 e!4285328)))

(declare-fun c!1330082 () Bool)

(assert (=> d!2225238 (= c!1330082 ((_ is Nil!69057) (t!383158 s1Rec!140)))))

(assert (=> d!2225238 (= (size!41488 (t!383158 s1Rec!140)) lt!2564515)))

(declare-fun b!7130846 () Bool)

(assert (=> b!7130846 (= e!4285328 0)))

(declare-fun b!7130847 () Bool)

(assert (=> b!7130847 (= e!4285328 (+ 1 (size!41488 (t!383158 (t!383158 s1Rec!140)))))))

(assert (= (and d!2225238 c!1330082) b!7130846))

(assert (= (and d!2225238 (not c!1330082)) b!7130847))

(declare-fun m!7847892 () Bool)

(assert (=> b!7130847 m!7847892))

(assert (=> b!7130705 d!2225238))

(declare-fun d!2225240 () Bool)

(assert (=> d!2225240 (= s1!1688 s1Rec!140)))

(assert (=> d!2225240 true))

(declare-fun _$60!1189 () Unit!162995)

(assert (=> d!2225240 (= (choose!55098 s1!1688 s1Rec!140 s!7390) _$60!1189)))

(assert (=> d!2225098 d!2225240))

(assert (=> d!2225098 d!2225134))

(assert (=> b!7130628 d!2225222))

(declare-fun d!2225242 () Bool)

(declare-fun lt!2564516 () Int)

(assert (=> d!2225242 (>= lt!2564516 0)))

(declare-fun e!4285329 () Int)

(assert (=> d!2225242 (= lt!2564516 e!4285329)))

(declare-fun c!1330083 () Bool)

(assert (=> d!2225242 (= c!1330083 ((_ is Nil!69057) (t!383158 lt!2564434)))))

(assert (=> d!2225242 (= (size!41488 (t!383158 lt!2564434)) lt!2564516)))

(declare-fun b!7130848 () Bool)

(assert (=> b!7130848 (= e!4285329 0)))

(declare-fun b!7130849 () Bool)

(assert (=> b!7130849 (= e!4285329 (+ 1 (size!41488 (t!383158 (t!383158 lt!2564434)))))))

(assert (= (and d!2225242 c!1330083) b!7130848))

(assert (= (and d!2225242 (not c!1330083)) b!7130849))

(declare-fun m!7847894 () Bool)

(assert (=> b!7130849 m!7847894))

(assert (=> b!7130651 d!2225242))

(declare-fun b!7130851 () Bool)

(declare-fun e!4285330 () List!69181)

(assert (=> b!7130851 (= e!4285330 (Cons!69057 (h!75505 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057))) (++!16201 (t!383158 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057))) (t!383158 s2Rec!140))))))

(declare-fun d!2225244 () Bool)

(declare-fun e!4285331 () Bool)

(assert (=> d!2225244 e!4285331))

(declare-fun res!2909581 () Bool)

(assert (=> d!2225244 (=> (not res!2909581) (not e!4285331))))

(declare-fun lt!2564517 () List!69181)

(assert (=> d!2225244 (= res!2909581 (= (content!14122 lt!2564517) ((_ map or) (content!14122 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057))) (content!14122 (t!383158 s2Rec!140)))))))

(assert (=> d!2225244 (= lt!2564517 e!4285330)))

(declare-fun c!1330084 () Bool)

(assert (=> d!2225244 (= c!1330084 ((_ is Nil!69057) (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057))))))

(assert (=> d!2225244 (= (++!16201 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) (t!383158 s2Rec!140)) lt!2564517)))

(declare-fun b!7130850 () Bool)

(assert (=> b!7130850 (= e!4285330 (t!383158 s2Rec!140))))

(declare-fun b!7130852 () Bool)

(declare-fun res!2909580 () Bool)

(assert (=> b!7130852 (=> (not res!2909580) (not e!4285331))))

(assert (=> b!7130852 (= res!2909580 (= (size!41488 lt!2564517) (+ (size!41488 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057))) (size!41488 (t!383158 s2Rec!140)))))))

(declare-fun b!7130853 () Bool)

(assert (=> b!7130853 (= e!4285331 (or (not (= (t!383158 s2Rec!140) Nil!69057)) (= lt!2564517 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))))

(assert (= (and d!2225244 c!1330084) b!7130850))

(assert (= (and d!2225244 (not c!1330084)) b!7130851))

(assert (= (and d!2225244 res!2909581) b!7130852))

(assert (= (and b!7130852 res!2909580) b!7130853))

(declare-fun m!7847896 () Bool)

(assert (=> b!7130851 m!7847896))

(declare-fun m!7847898 () Bool)

(assert (=> d!2225244 m!7847898))

(assert (=> d!2225244 m!7847478))

(declare-fun m!7847900 () Bool)

(assert (=> d!2225244 m!7847900))

(assert (=> d!2225244 m!7847650))

(declare-fun m!7847902 () Bool)

(assert (=> b!7130852 m!7847902))

(assert (=> b!7130852 m!7847478))

(declare-fun m!7847904 () Bool)

(assert (=> b!7130852 m!7847904))

(assert (=> b!7130852 m!7847654))

(assert (=> d!2225128 d!2225244))

(assert (=> d!2225128 d!2225124))

(declare-fun d!2225246 () Bool)

(assert (=> d!2225246 (= (++!16201 (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) (t!383158 s2Rec!140)) s!7390)))

(assert (=> d!2225246 true))

(declare-fun _$68!1366 () Unit!162995)

(assert (=> d!2225246 (= (choose!55100 s1Rec!140 (h!75505 s2Rec!140) (t!383158 s2Rec!140) s!7390) _$68!1366)))

(declare-fun bs!1886886 () Bool)

(assert (= bs!1886886 d!2225246))

(assert (=> bs!1886886 m!7847478))

(assert (=> bs!1886886 m!7847478))

(assert (=> bs!1886886 m!7847612))

(assert (=> d!2225128 d!2225246))

(declare-fun b!7130855 () Bool)

(declare-fun e!4285332 () List!69181)

(assert (=> b!7130855 (= e!4285332 (Cons!69057 (h!75505 s1Rec!140) (++!16201 (t!383158 s1Rec!140) (Cons!69057 (h!75505 s2Rec!140) (t!383158 s2Rec!140)))))))

(declare-fun d!2225248 () Bool)

(declare-fun e!4285333 () Bool)

(assert (=> d!2225248 e!4285333))

(declare-fun res!2909583 () Bool)

(assert (=> d!2225248 (=> (not res!2909583) (not e!4285333))))

(declare-fun lt!2564518 () List!69181)

(assert (=> d!2225248 (= res!2909583 (= (content!14122 lt!2564518) ((_ map or) (content!14122 s1Rec!140) (content!14122 (Cons!69057 (h!75505 s2Rec!140) (t!383158 s2Rec!140))))))))

(assert (=> d!2225248 (= lt!2564518 e!4285332)))

(declare-fun c!1330085 () Bool)

(assert (=> d!2225248 (= c!1330085 ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225248 (= (++!16201 s1Rec!140 (Cons!69057 (h!75505 s2Rec!140) (t!383158 s2Rec!140))) lt!2564518)))

(declare-fun b!7130854 () Bool)

(assert (=> b!7130854 (= e!4285332 (Cons!69057 (h!75505 s2Rec!140) (t!383158 s2Rec!140)))))

(declare-fun b!7130856 () Bool)

(declare-fun res!2909582 () Bool)

(assert (=> b!7130856 (=> (not res!2909582) (not e!4285333))))

(assert (=> b!7130856 (= res!2909582 (= (size!41488 lt!2564518) (+ (size!41488 s1Rec!140) (size!41488 (Cons!69057 (h!75505 s2Rec!140) (t!383158 s2Rec!140))))))))

(declare-fun b!7130857 () Bool)

(assert (=> b!7130857 (= e!4285333 (or (not (= (Cons!69057 (h!75505 s2Rec!140) (t!383158 s2Rec!140)) Nil!69057)) (= lt!2564518 s1Rec!140)))))

(assert (= (and d!2225248 c!1330085) b!7130854))

(assert (= (and d!2225248 (not c!1330085)) b!7130855))

(assert (= (and d!2225248 res!2909583) b!7130856))

(assert (= (and b!7130856 res!2909582) b!7130857))

(declare-fun m!7847906 () Bool)

(assert (=> b!7130855 m!7847906))

(declare-fun m!7847908 () Bool)

(assert (=> d!2225248 m!7847908))

(assert (=> d!2225248 m!7847508))

(declare-fun m!7847910 () Bool)

(assert (=> d!2225248 m!7847910))

(declare-fun m!7847912 () Bool)

(assert (=> b!7130856 m!7847912))

(assert (=> b!7130856 m!7847470))

(declare-fun m!7847914 () Bool)

(assert (=> b!7130856 m!7847914))

(assert (=> d!2225128 d!2225248))

(declare-fun d!2225250 () Bool)

(declare-fun c!1330086 () Bool)

(assert (=> d!2225250 (= c!1330086 (isEmpty!40028 (tail!13943 s1!1688)))))

(declare-fun e!4285334 () Bool)

(assert (=> d!2225250 (= (matchZipper!3319 (derivationStepZipper!3174 z1!552 (head!14471 s1!1688)) (tail!13943 s1!1688)) e!4285334)))

(declare-fun b!7130858 () Bool)

(assert (=> b!7130858 (= e!4285334 (nullableZipper!2762 (derivationStepZipper!3174 z1!552 (head!14471 s1!1688))))))

(declare-fun b!7130859 () Bool)

(assert (=> b!7130859 (= e!4285334 (matchZipper!3319 (derivationStepZipper!3174 (derivationStepZipper!3174 z1!552 (head!14471 s1!1688)) (head!14471 (tail!13943 s1!1688))) (tail!13943 (tail!13943 s1!1688))))))

(assert (= (and d!2225250 c!1330086) b!7130858))

(assert (= (and d!2225250 (not c!1330086)) b!7130859))

(assert (=> d!2225250 m!7847582))

(declare-fun m!7847916 () Bool)

(assert (=> d!2225250 m!7847916))

(assert (=> b!7130858 m!7847588))

(declare-fun m!7847918 () Bool)

(assert (=> b!7130858 m!7847918))

(assert (=> b!7130859 m!7847582))

(assert (=> b!7130859 m!7847842))

(assert (=> b!7130859 m!7847588))

(assert (=> b!7130859 m!7847842))

(declare-fun m!7847920 () Bool)

(assert (=> b!7130859 m!7847920))

(assert (=> b!7130859 m!7847582))

(assert (=> b!7130859 m!7847846))

(assert (=> b!7130859 m!7847920))

(assert (=> b!7130859 m!7847846))

(declare-fun m!7847922 () Bool)

(assert (=> b!7130859 m!7847922))

(assert (=> b!7130685 d!2225250))

(declare-fun bs!1886887 () Bool)

(declare-fun d!2225252 () Bool)

(assert (= bs!1886887 (and d!2225252 d!2225200)))

(declare-fun lambda!433200 () Int)

(assert (=> bs!1886887 (= (= (head!14471 s1!1688) (head!14471 s1Rec!140)) (= lambda!433200 lambda!433194))))

(assert (=> d!2225252 true))

(assert (=> d!2225252 (= (derivationStepZipper!3174 z1!552 (head!14471 s1!1688)) (flatMap!2638 z1!552 lambda!433200))))

(declare-fun bs!1886888 () Bool)

(assert (= bs!1886888 d!2225252))

(declare-fun m!7847924 () Bool)

(assert (=> bs!1886888 m!7847924))

(assert (=> b!7130685 d!2225252))

(assert (=> b!7130685 d!2225214))

(assert (=> b!7130685 d!2225208))

(declare-fun d!2225254 () Bool)

(declare-fun c!1330089 () Bool)

(assert (=> d!2225254 (= c!1330089 ((_ is Nil!69057) lt!2564463))))

(declare-fun e!4285337 () (InoxSet C!36396))

(assert (=> d!2225254 (= (content!14122 lt!2564463) e!4285337)))

(declare-fun b!7130864 () Bool)

(assert (=> b!7130864 (= e!4285337 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130865 () Bool)

(assert (=> b!7130865 (= e!4285337 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 lt!2564463) true) (content!14122 (t!383158 lt!2564463))))))

(assert (= (and d!2225254 c!1330089) b!7130864))

(assert (= (and d!2225254 (not c!1330089)) b!7130865))

(declare-fun m!7847926 () Bool)

(assert (=> b!7130865 m!7847926))

(declare-fun m!7847928 () Bool)

(assert (=> b!7130865 m!7847928))

(assert (=> d!2225124 d!2225254))

(declare-fun d!2225256 () Bool)

(declare-fun c!1330090 () Bool)

(assert (=> d!2225256 (= c!1330090 ((_ is Nil!69057) s1Rec!140))))

(declare-fun e!4285338 () (InoxSet C!36396))

(assert (=> d!2225256 (= (content!14122 s1Rec!140) e!4285338)))

(declare-fun b!7130866 () Bool)

(assert (=> b!7130866 (= e!4285338 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130867 () Bool)

(assert (=> b!7130867 (= e!4285338 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 s1Rec!140) true) (content!14122 (t!383158 s1Rec!140))))))

(assert (= (and d!2225256 c!1330090) b!7130866))

(assert (= (and d!2225256 (not c!1330090)) b!7130867))

(declare-fun m!7847930 () Bool)

(assert (=> b!7130867 m!7847930))

(declare-fun m!7847932 () Bool)

(assert (=> b!7130867 m!7847932))

(assert (=> d!2225124 d!2225256))

(declare-fun d!2225258 () Bool)

(declare-fun c!1330091 () Bool)

(assert (=> d!2225258 (= c!1330091 ((_ is Nil!69057) (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))

(declare-fun e!4285339 () (InoxSet C!36396))

(assert (=> d!2225258 (= (content!14122 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) e!4285339)))

(declare-fun b!7130868 () Bool)

(assert (=> b!7130868 (= e!4285339 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130869 () Bool)

(assert (=> b!7130869 (= e!4285339 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) true) (content!14122 (t!383158 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))))

(assert (= (and d!2225258 c!1330091) b!7130868))

(assert (= (and d!2225258 (not c!1330091)) b!7130869))

(declare-fun m!7847934 () Bool)

(assert (=> b!7130869 m!7847934))

(declare-fun m!7847936 () Bool)

(assert (=> b!7130869 m!7847936))

(assert (=> d!2225124 d!2225258))

(declare-fun b!7130873 () Bool)

(declare-fun e!4285341 () Bool)

(assert (=> b!7130873 (= e!4285341 (>= (size!41488 (tail!13943 lt!2564431)) (size!41488 (tail!13943 s1Rec!140))))))

(declare-fun b!7130871 () Bool)

(declare-fun res!2909585 () Bool)

(declare-fun e!4285340 () Bool)

(assert (=> b!7130871 (=> (not res!2909585) (not e!4285340))))

(assert (=> b!7130871 (= res!2909585 (= (head!14471 (tail!13943 s1Rec!140)) (head!14471 (tail!13943 lt!2564431))))))

(declare-fun b!7130870 () Bool)

(declare-fun e!4285342 () Bool)

(assert (=> b!7130870 (= e!4285342 e!4285340)))

(declare-fun res!2909584 () Bool)

(assert (=> b!7130870 (=> (not res!2909584) (not e!4285340))))

(assert (=> b!7130870 (= res!2909584 (not ((_ is Nil!69057) (tail!13943 lt!2564431))))))

(declare-fun d!2225260 () Bool)

(assert (=> d!2225260 e!4285341))

(declare-fun res!2909587 () Bool)

(assert (=> d!2225260 (=> res!2909587 e!4285341)))

(declare-fun lt!2564519 () Bool)

(assert (=> d!2225260 (= res!2909587 (not lt!2564519))))

(assert (=> d!2225260 (= lt!2564519 e!4285342)))

(declare-fun res!2909586 () Bool)

(assert (=> d!2225260 (=> res!2909586 e!4285342)))

(assert (=> d!2225260 (= res!2909586 ((_ is Nil!69057) (tail!13943 s1Rec!140)))))

(assert (=> d!2225260 (= (isPrefix!5932 (tail!13943 s1Rec!140) (tail!13943 lt!2564431)) lt!2564519)))

(declare-fun b!7130872 () Bool)

(assert (=> b!7130872 (= e!4285340 (isPrefix!5932 (tail!13943 (tail!13943 s1Rec!140)) (tail!13943 (tail!13943 lt!2564431))))))

(assert (= (and d!2225260 (not res!2909586)) b!7130870))

(assert (= (and b!7130870 res!2909584) b!7130871))

(assert (= (and b!7130871 res!2909585) b!7130872))

(assert (= (and d!2225260 (not res!2909587)) b!7130873))

(assert (=> b!7130873 m!7847638))

(declare-fun m!7847938 () Bool)

(assert (=> b!7130873 m!7847938))

(assert (=> b!7130873 m!7847536))

(declare-fun m!7847940 () Bool)

(assert (=> b!7130873 m!7847940))

(assert (=> b!7130871 m!7847536))

(assert (=> b!7130871 m!7847828))

(assert (=> b!7130871 m!7847638))

(declare-fun m!7847942 () Bool)

(assert (=> b!7130871 m!7847942))

(assert (=> b!7130872 m!7847536))

(assert (=> b!7130872 m!7847832))

(assert (=> b!7130872 m!7847638))

(declare-fun m!7847944 () Bool)

(assert (=> b!7130872 m!7847944))

(assert (=> b!7130872 m!7847832))

(assert (=> b!7130872 m!7847944))

(declare-fun m!7847946 () Bool)

(assert (=> b!7130872 m!7847946))

(assert (=> b!7130702 d!2225260))

(assert (=> b!7130702 d!2225204))

(declare-fun d!2225262 () Bool)

(assert (=> d!2225262 (= (tail!13943 lt!2564431) (t!383158 lt!2564431))))

(assert (=> b!7130702 d!2225262))

(declare-fun d!2225264 () Bool)

(declare-fun lt!2564520 () Int)

(assert (=> d!2225264 (>= lt!2564520 0)))

(declare-fun e!4285343 () Int)

(assert (=> d!2225264 (= lt!2564520 e!4285343)))

(declare-fun c!1330092 () Bool)

(assert (=> d!2225264 (= c!1330092 ((_ is Nil!69057) lt!2564445))))

(assert (=> d!2225264 (= (size!41488 lt!2564445) lt!2564520)))

(declare-fun b!7130874 () Bool)

(assert (=> b!7130874 (= e!4285343 0)))

(declare-fun b!7130875 () Bool)

(assert (=> b!7130875 (= e!4285343 (+ 1 (size!41488 (t!383158 lt!2564445))))))

(assert (= (and d!2225264 c!1330092) b!7130874))

(assert (= (and d!2225264 (not c!1330092)) b!7130875))

(declare-fun m!7847948 () Bool)

(assert (=> b!7130875 m!7847948))

(assert (=> b!7130640 d!2225264))

(assert (=> b!7130640 d!2225142))

(declare-fun d!2225266 () Bool)

(declare-fun lt!2564521 () Int)

(assert (=> d!2225266 (>= lt!2564521 0)))

(declare-fun e!4285344 () Int)

(assert (=> d!2225266 (= lt!2564521 e!4285344)))

(declare-fun c!1330093 () Bool)

(assert (=> d!2225266 (= c!1330093 ((_ is Nil!69057) s2Rec!140))))

(assert (=> d!2225266 (= (size!41488 s2Rec!140) lt!2564521)))

(declare-fun b!7130876 () Bool)

(assert (=> b!7130876 (= e!4285344 0)))

(declare-fun b!7130877 () Bool)

(assert (=> b!7130877 (= e!4285344 (+ 1 (size!41488 (t!383158 s2Rec!140))))))

(assert (= (and d!2225266 c!1330093) b!7130876))

(assert (= (and d!2225266 (not c!1330093)) b!7130877))

(assert (=> b!7130877 m!7847654))

(assert (=> b!7130640 d!2225266))

(declare-fun b!7130881 () Bool)

(declare-fun e!4285346 () Bool)

(assert (=> b!7130881 (= e!4285346 (>= (size!41488 (tail!13943 s1!1688)) (size!41488 (tail!13943 s1Rec!140))))))

(declare-fun b!7130879 () Bool)

(declare-fun res!2909589 () Bool)

(declare-fun e!4285345 () Bool)

(assert (=> b!7130879 (=> (not res!2909589) (not e!4285345))))

(assert (=> b!7130879 (= res!2909589 (= (head!14471 (tail!13943 s1Rec!140)) (head!14471 (tail!13943 s1!1688))))))

(declare-fun b!7130878 () Bool)

(declare-fun e!4285347 () Bool)

(assert (=> b!7130878 (= e!4285347 e!4285345)))

(declare-fun res!2909588 () Bool)

(assert (=> b!7130878 (=> (not res!2909588) (not e!4285345))))

(assert (=> b!7130878 (= res!2909588 (not ((_ is Nil!69057) (tail!13943 s1!1688))))))

(declare-fun d!2225268 () Bool)

(assert (=> d!2225268 e!4285346))

(declare-fun res!2909591 () Bool)

(assert (=> d!2225268 (=> res!2909591 e!4285346)))

(declare-fun lt!2564522 () Bool)

(assert (=> d!2225268 (= res!2909591 (not lt!2564522))))

(assert (=> d!2225268 (= lt!2564522 e!4285347)))

(declare-fun res!2909590 () Bool)

(assert (=> d!2225268 (=> res!2909590 e!4285347)))

(assert (=> d!2225268 (= res!2909590 ((_ is Nil!69057) (tail!13943 s1Rec!140)))))

(assert (=> d!2225268 (= (isPrefix!5932 (tail!13943 s1Rec!140) (tail!13943 s1!1688)) lt!2564522)))

(declare-fun b!7130880 () Bool)

(assert (=> b!7130880 (= e!4285345 (isPrefix!5932 (tail!13943 (tail!13943 s1Rec!140)) (tail!13943 (tail!13943 s1!1688))))))

(assert (= (and d!2225268 (not res!2909590)) b!7130878))

(assert (= (and b!7130878 res!2909588) b!7130879))

(assert (= (and b!7130879 res!2909589) b!7130880))

(assert (= (and d!2225268 (not res!2909591)) b!7130881))

(assert (=> b!7130881 m!7847582))

(assert (=> b!7130881 m!7847840))

(assert (=> b!7130881 m!7847536))

(assert (=> b!7130881 m!7847940))

(assert (=> b!7130879 m!7847536))

(assert (=> b!7130879 m!7847828))

(assert (=> b!7130879 m!7847582))

(assert (=> b!7130879 m!7847842))

(assert (=> b!7130880 m!7847536))

(assert (=> b!7130880 m!7847832))

(assert (=> b!7130880 m!7847582))

(assert (=> b!7130880 m!7847846))

(assert (=> b!7130880 m!7847832))

(assert (=> b!7130880 m!7847846))

(declare-fun m!7847950 () Bool)

(assert (=> b!7130880 m!7847950))

(assert (=> b!7130682 d!2225268))

(assert (=> b!7130682 d!2225204))

(assert (=> b!7130682 d!2225208))

(declare-fun d!2225270 () Bool)

(assert (=> d!2225270 (= s2!1620 s2Rec!140)))

(assert (=> d!2225270 true))

(declare-fun _$63!1322 () Unit!162995)

(assert (=> d!2225270 (= (choose!55099 s1!1688 s2!1620 s1Rec!140 s2Rec!140 s!7390) _$63!1322)))

(assert (=> d!2225122 d!2225270))

(assert (=> d!2225122 d!2225134))

(declare-fun d!2225272 () Bool)

(declare-fun lt!2564523 () Int)

(assert (=> d!2225272 (>= lt!2564523 0)))

(declare-fun e!4285348 () Int)

(assert (=> d!2225272 (= lt!2564523 e!4285348)))

(declare-fun c!1330094 () Bool)

(assert (=> d!2225272 (= c!1330094 ((_ is Nil!69057) (t!383158 s1!1688)))))

(assert (=> d!2225272 (= (size!41488 (t!383158 s1!1688)) lt!2564523)))

(declare-fun b!7130882 () Bool)

(assert (=> b!7130882 (= e!4285348 0)))

(declare-fun b!7130883 () Bool)

(assert (=> b!7130883 (= e!4285348 (+ 1 (size!41488 (t!383158 (t!383158 s1!1688)))))))

(assert (= (and d!2225272 c!1330094) b!7130882))

(assert (= (and d!2225272 (not c!1330094)) b!7130883))

(declare-fun m!7847952 () Bool)

(assert (=> b!7130883 m!7847952))

(assert (=> b!7130699 d!2225272))

(declare-fun d!2225274 () Bool)

(declare-fun c!1330095 () Bool)

(assert (=> d!2225274 (= c!1330095 ((_ is Nil!69057) lt!2564458))))

(declare-fun e!4285349 () (InoxSet C!36396))

(assert (=> d!2225274 (= (content!14122 lt!2564458) e!4285349)))

(declare-fun b!7130884 () Bool)

(assert (=> b!7130884 (= e!4285349 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130885 () Bool)

(assert (=> b!7130885 (= e!4285349 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 lt!2564458) true) (content!14122 (t!383158 lt!2564458))))))

(assert (= (and d!2225274 c!1330095) b!7130884))

(assert (= (and d!2225274 (not c!1330095)) b!7130885))

(declare-fun m!7847954 () Bool)

(assert (=> b!7130885 m!7847954))

(declare-fun m!7847956 () Bool)

(assert (=> b!7130885 m!7847956))

(assert (=> d!2225114 d!2225274))

(declare-fun d!2225276 () Bool)

(declare-fun c!1330096 () Bool)

(assert (=> d!2225276 (= c!1330096 ((_ is Nil!69057) s1!1688))))

(declare-fun e!4285350 () (InoxSet C!36396))

(assert (=> d!2225276 (= (content!14122 s1!1688) e!4285350)))

(declare-fun b!7130886 () Bool)

(assert (=> b!7130886 (= e!4285350 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130887 () Bool)

(assert (=> b!7130887 (= e!4285350 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 s1!1688) true) (content!14122 (t!383158 s1!1688))))))

(assert (= (and d!2225276 c!1330096) b!7130886))

(assert (= (and d!2225276 (not c!1330096)) b!7130887))

(declare-fun m!7847958 () Bool)

(assert (=> b!7130887 m!7847958))

(assert (=> b!7130887 m!7847888))

(assert (=> d!2225114 d!2225276))

(declare-fun d!2225278 () Bool)

(declare-fun c!1330097 () Bool)

(assert (=> d!2225278 (= c!1330097 ((_ is Nil!69057) s2!1620))))

(declare-fun e!4285351 () (InoxSet C!36396))

(assert (=> d!2225278 (= (content!14122 s2!1620) e!4285351)))

(declare-fun b!7130888 () Bool)

(assert (=> b!7130888 (= e!4285351 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130889 () Bool)

(assert (=> b!7130889 (= e!4285351 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 s2!1620) true) (content!14122 (t!383158 s2!1620))))))

(assert (= (and d!2225278 c!1330097) b!7130888))

(assert (= (and d!2225278 (not c!1330097)) b!7130889))

(declare-fun m!7847960 () Bool)

(assert (=> b!7130889 m!7847960))

(declare-fun m!7847962 () Bool)

(assert (=> b!7130889 m!7847962))

(assert (=> d!2225114 d!2225278))

(declare-fun d!2225280 () Bool)

(assert (=> d!2225280 (= (isEmpty!40028 s1Rec!140) ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225102 d!2225280))

(declare-fun b!7130891 () Bool)

(declare-fun e!4285352 () List!69181)

(assert (=> b!7130891 (= e!4285352 (Cons!69057 (h!75505 (t!383158 s1Rec!140)) (++!16201 (t!383158 (t!383158 s1Rec!140)) (Cons!69057 (h!75505 s2Rec!140) Nil!69057))))))

(declare-fun d!2225282 () Bool)

(declare-fun e!4285353 () Bool)

(assert (=> d!2225282 e!4285353))

(declare-fun res!2909593 () Bool)

(assert (=> d!2225282 (=> (not res!2909593) (not e!4285353))))

(declare-fun lt!2564524 () List!69181)

(assert (=> d!2225282 (= res!2909593 (= (content!14122 lt!2564524) ((_ map or) (content!14122 (t!383158 s1Rec!140)) (content!14122 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))))

(assert (=> d!2225282 (= lt!2564524 e!4285352)))

(declare-fun c!1330098 () Bool)

(assert (=> d!2225282 (= c!1330098 ((_ is Nil!69057) (t!383158 s1Rec!140)))))

(assert (=> d!2225282 (= (++!16201 (t!383158 s1Rec!140) (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) lt!2564524)))

(declare-fun b!7130890 () Bool)

(assert (=> b!7130890 (= e!4285352 (Cons!69057 (h!75505 s2Rec!140) Nil!69057))))

(declare-fun b!7130892 () Bool)

(declare-fun res!2909592 () Bool)

(assert (=> b!7130892 (=> (not res!2909592) (not e!4285353))))

(assert (=> b!7130892 (= res!2909592 (= (size!41488 lt!2564524) (+ (size!41488 (t!383158 s1Rec!140)) (size!41488 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))))

(declare-fun b!7130893 () Bool)

(assert (=> b!7130893 (= e!4285353 (or (not (= (Cons!69057 (h!75505 s2Rec!140) Nil!69057) Nil!69057)) (= lt!2564524 (t!383158 s1Rec!140))))))

(assert (= (and d!2225282 c!1330098) b!7130890))

(assert (= (and d!2225282 (not c!1330098)) b!7130891))

(assert (= (and d!2225282 res!2909593) b!7130892))

(assert (= (and b!7130892 res!2909592) b!7130893))

(declare-fun m!7847964 () Bool)

(assert (=> b!7130891 m!7847964))

(declare-fun m!7847966 () Bool)

(assert (=> d!2225282 m!7847966))

(assert (=> d!2225282 m!7847932))

(assert (=> d!2225282 m!7847598))

(declare-fun m!7847968 () Bool)

(assert (=> b!7130892 m!7847968))

(assert (=> b!7130892 m!7847642))

(assert (=> b!7130892 m!7847602))

(assert (=> b!7130687 d!2225282))

(declare-fun d!2225284 () Bool)

(assert (=> d!2225284 (= (isEmpty!40028 s2Rec!140) ((_ is Nil!69057) s2Rec!140))))

(assert (=> d!2225094 d!2225284))

(declare-fun d!2225286 () Bool)

(declare-fun lt!2564525 () Int)

(assert (=> d!2225286 (>= lt!2564525 0)))

(declare-fun e!4285354 () Int)

(assert (=> d!2225286 (= lt!2564525 e!4285354)))

(declare-fun c!1330099 () Bool)

(assert (=> d!2225286 (= c!1330099 ((_ is Nil!69057) lt!2564477))))

(assert (=> d!2225286 (= (size!41488 lt!2564477) lt!2564525)))

(declare-fun b!7130894 () Bool)

(assert (=> b!7130894 (= e!4285354 0)))

(declare-fun b!7130895 () Bool)

(assert (=> b!7130895 (= e!4285354 (+ 1 (size!41488 (t!383158 lt!2564477))))))

(assert (= (and d!2225286 c!1330099) b!7130894))

(assert (= (and d!2225286 (not c!1330099)) b!7130895))

(declare-fun m!7847970 () Bool)

(assert (=> b!7130895 m!7847970))

(assert (=> b!7130708 d!2225286))

(assert (=> b!7130708 d!2225104))

(declare-fun d!2225288 () Bool)

(declare-fun lt!2564526 () Int)

(assert (=> d!2225288 (>= lt!2564526 0)))

(declare-fun e!4285355 () Int)

(assert (=> d!2225288 (= lt!2564526 e!4285355)))

(declare-fun c!1330100 () Bool)

(assert (=> d!2225288 (= c!1330100 ((_ is Nil!69057) (t!383158 s2Rec!140)))))

(assert (=> d!2225288 (= (size!41488 (t!383158 s2Rec!140)) lt!2564526)))

(declare-fun b!7130896 () Bool)

(assert (=> b!7130896 (= e!4285355 0)))

(declare-fun b!7130897 () Bool)

(assert (=> b!7130897 (= e!4285355 (+ 1 (size!41488 (t!383158 (t!383158 s2Rec!140)))))))

(assert (= (and d!2225288 c!1330100) b!7130896))

(assert (= (and d!2225288 (not c!1330100)) b!7130897))

(declare-fun m!7847972 () Bool)

(assert (=> b!7130897 m!7847972))

(assert (=> b!7130708 d!2225288))

(declare-fun d!2225290 () Bool)

(declare-fun res!2909598 () Bool)

(declare-fun e!4285360 () Bool)

(assert (=> d!2225290 (=> res!2909598 e!4285360)))

(assert (=> d!2225290 (= res!2909598 ((_ is Nil!69056) (exprs!7557 setElem!52014)))))

(assert (=> d!2225290 (= (forall!16922 (exprs!7557 setElem!52014) lambda!433186) e!4285360)))

(declare-fun b!7130902 () Bool)

(declare-fun e!4285361 () Bool)

(assert (=> b!7130902 (= e!4285360 e!4285361)))

(declare-fun res!2909599 () Bool)

(assert (=> b!7130902 (=> (not res!2909599) (not e!4285361))))

(declare-fun dynLambda!28116 (Int Regex!18063) Bool)

(assert (=> b!7130902 (= res!2909599 (dynLambda!28116 lambda!433186 (h!75504 (exprs!7557 setElem!52014))))))

(declare-fun b!7130903 () Bool)

(assert (=> b!7130903 (= e!4285361 (forall!16922 (t!383157 (exprs!7557 setElem!52014)) lambda!433186))))

(assert (= (and d!2225290 (not res!2909598)) b!7130902))

(assert (= (and b!7130902 res!2909599) b!7130903))

(declare-fun b_lambda!272077 () Bool)

(assert (=> (not b_lambda!272077) (not b!7130902)))

(declare-fun m!7847974 () Bool)

(assert (=> b!7130902 m!7847974))

(declare-fun m!7847976 () Bool)

(assert (=> b!7130903 m!7847976))

(assert (=> d!2225106 d!2225290))

(assert (=> b!7130644 d!2225224))

(declare-fun b!7130907 () Bool)

(declare-fun e!4285363 () Bool)

(assert (=> b!7130907 (= e!4285363 (>= (size!41488 (++!16201 s1Rec!140 s2Rec!140)) (size!41488 s1Rec!140)))))

(declare-fun b!7130905 () Bool)

(declare-fun res!2909601 () Bool)

(declare-fun e!4285362 () Bool)

(assert (=> b!7130905 (=> (not res!2909601) (not e!4285362))))

(assert (=> b!7130905 (= res!2909601 (= (head!14471 s1Rec!140) (head!14471 (++!16201 s1Rec!140 s2Rec!140))))))

(declare-fun b!7130904 () Bool)

(declare-fun e!4285364 () Bool)

(assert (=> b!7130904 (= e!4285364 e!4285362)))

(declare-fun res!2909600 () Bool)

(assert (=> b!7130904 (=> (not res!2909600) (not e!4285362))))

(assert (=> b!7130904 (= res!2909600 (not ((_ is Nil!69057) (++!16201 s1Rec!140 s2Rec!140))))))

(declare-fun d!2225292 () Bool)

(assert (=> d!2225292 e!4285363))

(declare-fun res!2909603 () Bool)

(assert (=> d!2225292 (=> res!2909603 e!4285363)))

(declare-fun lt!2564527 () Bool)

(assert (=> d!2225292 (= res!2909603 (not lt!2564527))))

(assert (=> d!2225292 (= lt!2564527 e!4285364)))

(declare-fun res!2909602 () Bool)

(assert (=> d!2225292 (=> res!2909602 e!4285364)))

(assert (=> d!2225292 (= res!2909602 ((_ is Nil!69057) s1Rec!140))))

(assert (=> d!2225292 (= (isPrefix!5932 s1Rec!140 (++!16201 s1Rec!140 s2Rec!140)) lt!2564527)))

(declare-fun b!7130906 () Bool)

(assert (=> b!7130906 (= e!4285362 (isPrefix!5932 (tail!13943 s1Rec!140) (tail!13943 (++!16201 s1Rec!140 s2Rec!140))))))

(assert (= (and d!2225292 (not res!2909602)) b!7130904))

(assert (= (and b!7130904 res!2909600) b!7130905))

(assert (= (and b!7130905 res!2909601) b!7130906))

(assert (= (and d!2225292 (not res!2909603)) b!7130907))

(assert (=> b!7130907 m!7847486))

(declare-fun m!7847978 () Bool)

(assert (=> b!7130907 m!7847978))

(assert (=> b!7130907 m!7847470))

(assert (=> b!7130905 m!7847532))

(assert (=> b!7130905 m!7847486))

(declare-fun m!7847980 () Bool)

(assert (=> b!7130905 m!7847980))

(assert (=> b!7130906 m!7847536))

(assert (=> b!7130906 m!7847486))

(declare-fun m!7847982 () Bool)

(assert (=> b!7130906 m!7847982))

(assert (=> b!7130906 m!7847536))

(assert (=> b!7130906 m!7847982))

(declare-fun m!7847984 () Bool)

(assert (=> b!7130906 m!7847984))

(assert (=> d!2225132 d!2225292))

(assert (=> d!2225132 d!2225096))

(declare-fun d!2225294 () Bool)

(assert (=> d!2225294 (isPrefix!5932 s1Rec!140 (++!16201 s1Rec!140 s2Rec!140))))

(assert (=> d!2225294 true))

(declare-fun _$46!2055 () Unit!162995)

(assert (=> d!2225294 (= (choose!55101 s1Rec!140 s2Rec!140) _$46!2055)))

(declare-fun bs!1886889 () Bool)

(assert (= bs!1886889 d!2225294))

(assert (=> bs!1886889 m!7847486))

(assert (=> bs!1886889 m!7847486))

(assert (=> bs!1886889 m!7847622))

(assert (=> d!2225132 d!2225294))

(assert (=> b!7130673 d!2225194))

(assert (=> b!7130673 d!2225216))

(declare-fun d!2225296 () Bool)

(declare-fun lt!2564528 () Int)

(assert (=> d!2225296 (>= lt!2564528 0)))

(declare-fun e!4285365 () Int)

(assert (=> d!2225296 (= lt!2564528 e!4285365)))

(declare-fun c!1330101 () Bool)

(assert (=> d!2225296 (= c!1330101 ((_ is Nil!69057) lt!2564437))))

(assert (=> d!2225296 (= (size!41488 lt!2564437) lt!2564528)))

(declare-fun b!7130908 () Bool)

(assert (=> b!7130908 (= e!4285365 0)))

(declare-fun b!7130909 () Bool)

(assert (=> b!7130909 (= e!4285365 (+ 1 (size!41488 (t!383158 lt!2564437))))))

(assert (= (and d!2225296 c!1330101) b!7130908))

(assert (= (and d!2225296 (not c!1330101)) b!7130909))

(declare-fun m!7847986 () Bool)

(assert (=> b!7130909 m!7847986))

(assert (=> b!7130693 d!2225296))

(assert (=> b!7130693 d!2225138))

(declare-fun b!7130913 () Bool)

(declare-fun e!4285367 () Bool)

(assert (=> b!7130913 (= e!4285367 (>= (size!41488 (tail!13943 lt!2564438)) (size!41488 (tail!13943 lt!2564434))))))

(declare-fun b!7130911 () Bool)

(declare-fun res!2909605 () Bool)

(declare-fun e!4285366 () Bool)

(assert (=> b!7130911 (=> (not res!2909605) (not e!4285366))))

(assert (=> b!7130911 (= res!2909605 (= (head!14471 (tail!13943 lt!2564434)) (head!14471 (tail!13943 lt!2564438))))))

(declare-fun b!7130910 () Bool)

(declare-fun e!4285368 () Bool)

(assert (=> b!7130910 (= e!4285368 e!4285366)))

(declare-fun res!2909604 () Bool)

(assert (=> b!7130910 (=> (not res!2909604) (not e!4285366))))

(assert (=> b!7130910 (= res!2909604 (not ((_ is Nil!69057) (tail!13943 lt!2564438))))))

(declare-fun d!2225298 () Bool)

(assert (=> d!2225298 e!4285367))

(declare-fun res!2909607 () Bool)

(assert (=> d!2225298 (=> res!2909607 e!4285367)))

(declare-fun lt!2564529 () Bool)

(assert (=> d!2225298 (= res!2909607 (not lt!2564529))))

(assert (=> d!2225298 (= lt!2564529 e!4285368)))

(declare-fun res!2909606 () Bool)

(assert (=> d!2225298 (=> res!2909606 e!4285368)))

(assert (=> d!2225298 (= res!2909606 ((_ is Nil!69057) (tail!13943 lt!2564434)))))

(assert (=> d!2225298 (= (isPrefix!5932 (tail!13943 lt!2564434) (tail!13943 lt!2564438)) lt!2564529)))

(declare-fun b!7130912 () Bool)

(assert (=> b!7130912 (= e!4285366 (isPrefix!5932 (tail!13943 (tail!13943 lt!2564434)) (tail!13943 (tail!13943 lt!2564438))))))

(assert (= (and d!2225298 (not res!2909606)) b!7130910))

(assert (= (and b!7130910 res!2909604) b!7130911))

(assert (= (and b!7130911 res!2909605) b!7130912))

(assert (= (and d!2225298 (not res!2909607)) b!7130913))

(assert (=> b!7130913 m!7847660))

(declare-fun m!7847988 () Bool)

(assert (=> b!7130913 m!7847988))

(assert (=> b!7130913 m!7847560))

(assert (=> b!7130913 m!7847864))

(assert (=> b!7130911 m!7847560))

(assert (=> b!7130911 m!7847866))

(assert (=> b!7130911 m!7847660))

(declare-fun m!7847990 () Bool)

(assert (=> b!7130911 m!7847990))

(assert (=> b!7130912 m!7847560))

(assert (=> b!7130912 m!7847870))

(assert (=> b!7130912 m!7847660))

(declare-fun m!7847992 () Bool)

(assert (=> b!7130912 m!7847992))

(assert (=> b!7130912 m!7847870))

(assert (=> b!7130912 m!7847992))

(declare-fun m!7847994 () Bool)

(assert (=> b!7130912 m!7847994))

(assert (=> b!7130712 d!2225298))

(assert (=> b!7130712 d!2225228))

(declare-fun d!2225300 () Bool)

(assert (=> d!2225300 (= (tail!13943 lt!2564438) (t!383158 lt!2564438))))

(assert (=> b!7130712 d!2225300))

(declare-fun d!2225302 () Bool)

(assert (=> d!2225302 (= (isEmpty!40028 s2!1620) ((_ is Nil!69057) s2!1620))))

(assert (=> d!2225100 d!2225302))

(declare-fun d!2225304 () Bool)

(declare-fun lt!2564530 () Int)

(assert (=> d!2225304 (>= lt!2564530 0)))

(declare-fun e!4285369 () Int)

(assert (=> d!2225304 (= lt!2564530 e!4285369)))

(declare-fun c!1330102 () Bool)

(assert (=> d!2225304 (= c!1330102 ((_ is Nil!69057) lt!2564463))))

(assert (=> d!2225304 (= (size!41488 lt!2564463) lt!2564530)))

(declare-fun b!7130914 () Bool)

(assert (=> b!7130914 (= e!4285369 0)))

(declare-fun b!7130915 () Bool)

(assert (=> b!7130915 (= e!4285369 (+ 1 (size!41488 (t!383158 lt!2564463))))))

(assert (= (and d!2225304 c!1330102) b!7130914))

(assert (= (and d!2225304 (not c!1330102)) b!7130915))

(declare-fun m!7847996 () Bool)

(assert (=> b!7130915 m!7847996))

(assert (=> b!7130688 d!2225304))

(assert (=> b!7130688 d!2225142))

(declare-fun d!2225306 () Bool)

(declare-fun lt!2564531 () Int)

(assert (=> d!2225306 (>= lt!2564531 0)))

(declare-fun e!4285370 () Int)

(assert (=> d!2225306 (= lt!2564531 e!4285370)))

(declare-fun c!1330103 () Bool)

(assert (=> d!2225306 (= c!1330103 ((_ is Nil!69057) (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))

(assert (=> d!2225306 (= (size!41488 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)) lt!2564531)))

(declare-fun b!7130916 () Bool)

(assert (=> b!7130916 (= e!4285370 0)))

(declare-fun b!7130917 () Bool)

(assert (=> b!7130917 (= e!4285370 (+ 1 (size!41488 (t!383158 (Cons!69057 (h!75505 s2Rec!140) Nil!69057)))))))

(assert (= (and d!2225306 c!1330103) b!7130916))

(assert (= (and d!2225306 (not c!1330103)) b!7130917))

(declare-fun m!7847998 () Bool)

(assert (=> b!7130917 m!7847998))

(assert (=> b!7130688 d!2225306))

(declare-fun d!2225308 () Bool)

(declare-fun res!2909608 () Bool)

(declare-fun e!4285371 () Bool)

(assert (=> d!2225308 (=> res!2909608 e!4285371)))

(assert (=> d!2225308 (= res!2909608 ((_ is Nil!69056) (exprs!7557 setElem!52015)))))

(assert (=> d!2225308 (= (forall!16922 (exprs!7557 setElem!52015) lambda!433187) e!4285371)))

(declare-fun b!7130918 () Bool)

(declare-fun e!4285372 () Bool)

(assert (=> b!7130918 (= e!4285371 e!4285372)))

(declare-fun res!2909609 () Bool)

(assert (=> b!7130918 (=> (not res!2909609) (not e!4285372))))

(assert (=> b!7130918 (= res!2909609 (dynLambda!28116 lambda!433187 (h!75504 (exprs!7557 setElem!52015))))))

(declare-fun b!7130919 () Bool)

(assert (=> b!7130919 (= e!4285372 (forall!16922 (t!383157 (exprs!7557 setElem!52015)) lambda!433187))))

(assert (= (and d!2225308 (not res!2909608)) b!7130918))

(assert (= (and b!7130918 res!2909609) b!7130919))

(declare-fun b_lambda!272079 () Bool)

(assert (=> (not b_lambda!272079) (not b!7130918)))

(declare-fun m!7848000 () Bool)

(assert (=> b!7130918 m!7848000))

(declare-fun m!7848002 () Bool)

(assert (=> b!7130919 m!7848002))

(assert (=> d!2225116 d!2225308))

(declare-fun b!7130923 () Bool)

(declare-fun e!4285374 () Bool)

(assert (=> b!7130923 (= e!4285374 (>= (size!41488 (tail!13943 s!7390)) (size!41488 (tail!13943 s1!1688))))))

(declare-fun b!7130921 () Bool)

(declare-fun res!2909611 () Bool)

(declare-fun e!4285373 () Bool)

(assert (=> b!7130921 (=> (not res!2909611) (not e!4285373))))

(assert (=> b!7130921 (= res!2909611 (= (head!14471 (tail!13943 s1!1688)) (head!14471 (tail!13943 s!7390))))))

(declare-fun b!7130920 () Bool)

(declare-fun e!4285375 () Bool)

(assert (=> b!7130920 (= e!4285375 e!4285373)))

(declare-fun res!2909610 () Bool)

(assert (=> b!7130920 (=> (not res!2909610) (not e!4285373))))

(assert (=> b!7130920 (= res!2909610 (not ((_ is Nil!69057) (tail!13943 s!7390))))))

(declare-fun d!2225310 () Bool)

(assert (=> d!2225310 e!4285374))

(declare-fun res!2909613 () Bool)

(assert (=> d!2225310 (=> res!2909613 e!4285374)))

(declare-fun lt!2564532 () Bool)

(assert (=> d!2225310 (= res!2909613 (not lt!2564532))))

(assert (=> d!2225310 (= lt!2564532 e!4285375)))

(declare-fun res!2909612 () Bool)

(assert (=> d!2225310 (=> res!2909612 e!4285375)))

(assert (=> d!2225310 (= res!2909612 ((_ is Nil!69057) (tail!13943 s1!1688)))))

(assert (=> d!2225310 (= (isPrefix!5932 (tail!13943 s1!1688) (tail!13943 s!7390)) lt!2564532)))

(declare-fun b!7130922 () Bool)

(assert (=> b!7130922 (= e!4285373 (isPrefix!5932 (tail!13943 (tail!13943 s1!1688)) (tail!13943 (tail!13943 s!7390))))))

(assert (= (and d!2225310 (not res!2909612)) b!7130920))

(assert (= (and b!7130920 res!2909610) b!7130921))

(assert (= (and b!7130921 res!2909611) b!7130922))

(assert (= (and d!2225310 (not res!2909613)) b!7130923))

(assert (=> b!7130923 m!7847562))

(assert (=> b!7130923 m!7847862))

(assert (=> b!7130923 m!7847582))

(assert (=> b!7130923 m!7847840))

(assert (=> b!7130921 m!7847582))

(assert (=> b!7130921 m!7847842))

(assert (=> b!7130921 m!7847562))

(assert (=> b!7130921 m!7847868))

(assert (=> b!7130922 m!7847582))

(assert (=> b!7130922 m!7847846))

(assert (=> b!7130922 m!7847562))

(assert (=> b!7130922 m!7847872))

(assert (=> b!7130922 m!7847846))

(assert (=> b!7130922 m!7847872))

(declare-fun m!7848004 () Bool)

(assert (=> b!7130922 m!7848004))

(assert (=> b!7130696 d!2225310))

(assert (=> b!7130696 d!2225208))

(assert (=> b!7130696 d!2225230))

(declare-fun bs!1886890 () Bool)

(declare-fun d!2225312 () Bool)

(assert (= bs!1886890 (and d!2225312 d!2225106)))

(declare-fun lambda!433201 () Int)

(assert (=> bs!1886890 (= lambda!433201 lambda!433186)))

(declare-fun bs!1886891 () Bool)

(assert (= bs!1886891 (and d!2225312 d!2225116)))

(assert (=> bs!1886891 (= lambda!433201 lambda!433187)))

(declare-fun bs!1886892 () Bool)

(assert (= bs!1886892 (and d!2225312 d!2225218)))

(assert (=> bs!1886892 (= lambda!433201 lambda!433195)))

(assert (=> d!2225312 (= (inv!88185 setElem!52019) (forall!16922 (exprs!7557 setElem!52019) lambda!433201))))

(declare-fun bs!1886893 () Bool)

(assert (= bs!1886893 d!2225312))

(declare-fun m!7848006 () Bool)

(assert (=> bs!1886893 m!7848006))

(assert (=> setNonEmpty!52019 d!2225312))

(assert (=> b!7130691 d!2225214))

(declare-fun d!2225314 () Bool)

(assert (=> d!2225314 (= (head!14471 lt!2564437) (h!75505 lt!2564437))))

(assert (=> b!7130691 d!2225314))

(declare-fun d!2225316 () Bool)

(declare-fun c!1330104 () Bool)

(assert (=> d!2225316 (= c!1330104 ((_ is Nil!69057) lt!2564445))))

(declare-fun e!4285376 () (InoxSet C!36396))

(assert (=> d!2225316 (= (content!14122 lt!2564445) e!4285376)))

(declare-fun b!7130924 () Bool)

(assert (=> b!7130924 (= e!4285376 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130925 () Bool)

(assert (=> b!7130925 (= e!4285376 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 lt!2564445) true) (content!14122 (t!383158 lt!2564445))))))

(assert (= (and d!2225316 c!1330104) b!7130924))

(assert (= (and d!2225316 (not c!1330104)) b!7130925))

(declare-fun m!7848008 () Bool)

(assert (=> b!7130925 m!7848008))

(declare-fun m!7848010 () Bool)

(assert (=> b!7130925 m!7848010))

(assert (=> d!2225096 d!2225316))

(assert (=> d!2225096 d!2225256))

(declare-fun d!2225318 () Bool)

(declare-fun c!1330105 () Bool)

(assert (=> d!2225318 (= c!1330105 ((_ is Nil!69057) s2Rec!140))))

(declare-fun e!4285377 () (InoxSet C!36396))

(assert (=> d!2225318 (= (content!14122 s2Rec!140) e!4285377)))

(declare-fun b!7130926 () Bool)

(assert (=> b!7130926 (= e!4285377 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130927 () Bool)

(assert (=> b!7130927 (= e!4285377 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 s2Rec!140) true) (content!14122 (t!383158 s2Rec!140))))))

(assert (= (and d!2225318 c!1330105) b!7130926))

(assert (= (and d!2225318 (not c!1330105)) b!7130927))

(declare-fun m!7848012 () Bool)

(assert (=> b!7130927 m!7848012))

(assert (=> b!7130927 m!7847650))

(assert (=> d!2225096 d!2225318))

(declare-fun d!2225320 () Bool)

(declare-fun lt!2564533 () Int)

(assert (=> d!2225320 (>= lt!2564533 0)))

(declare-fun e!4285378 () Int)

(assert (=> d!2225320 (= lt!2564533 e!4285378)))

(declare-fun c!1330106 () Bool)

(assert (=> d!2225320 (= c!1330106 ((_ is Nil!69057) lt!2564458))))

(assert (=> d!2225320 (= (size!41488 lt!2564458) lt!2564533)))

(declare-fun b!7130928 () Bool)

(assert (=> b!7130928 (= e!4285378 0)))

(declare-fun b!7130929 () Bool)

(assert (=> b!7130929 (= e!4285378 (+ 1 (size!41488 (t!383158 lt!2564458))))))

(assert (= (and d!2225320 c!1330106) b!7130928))

(assert (= (and d!2225320 (not c!1330106)) b!7130929))

(declare-fun m!7848014 () Bool)

(assert (=> b!7130929 m!7848014))

(assert (=> b!7130678 d!2225320))

(assert (=> b!7130678 d!2225138))

(declare-fun d!2225322 () Bool)

(declare-fun lt!2564534 () Int)

(assert (=> d!2225322 (>= lt!2564534 0)))

(declare-fun e!4285379 () Int)

(assert (=> d!2225322 (= lt!2564534 e!4285379)))

(declare-fun c!1330107 () Bool)

(assert (=> d!2225322 (= c!1330107 ((_ is Nil!69057) s2!1620))))

(assert (=> d!2225322 (= (size!41488 s2!1620) lt!2564534)))

(declare-fun b!7130930 () Bool)

(assert (=> b!7130930 (= e!4285379 0)))

(declare-fun b!7130931 () Bool)

(assert (=> b!7130931 (= e!4285379 (+ 1 (size!41488 (t!383158 s2!1620))))))

(assert (= (and d!2225322 c!1330107) b!7130930))

(assert (= (and d!2225322 (not c!1330107)) b!7130931))

(declare-fun m!7848016 () Bool)

(assert (=> b!7130931 m!7848016))

(assert (=> b!7130678 d!2225322))

(declare-fun d!2225324 () Bool)

(declare-fun c!1330108 () Bool)

(assert (=> d!2225324 (= c!1330108 (isEmpty!40028 (tail!13943 s2!1620)))))

(declare-fun e!4285380 () Bool)

(assert (=> d!2225324 (= (matchZipper!3319 (derivationStepZipper!3174 z2!471 (head!14471 s2!1620)) (tail!13943 s2!1620)) e!4285380)))

(declare-fun b!7130932 () Bool)

(assert (=> b!7130932 (= e!4285380 (nullableZipper!2762 (derivationStepZipper!3174 z2!471 (head!14471 s2!1620))))))

(declare-fun b!7130933 () Bool)

(assert (=> b!7130933 (= e!4285380 (matchZipper!3319 (derivationStepZipper!3174 (derivationStepZipper!3174 z2!471 (head!14471 s2!1620)) (head!14471 (tail!13943 s2!1620))) (tail!13943 (tail!13943 s2!1620))))))

(assert (= (and d!2225324 c!1330108) b!7130932))

(assert (= (and d!2225324 (not c!1330108)) b!7130933))

(assert (=> d!2225324 m!7847524))

(declare-fun m!7848018 () Bool)

(assert (=> d!2225324 m!7848018))

(assert (=> b!7130932 m!7847522))

(declare-fun m!7848020 () Bool)

(assert (=> b!7130932 m!7848020))

(assert (=> b!7130933 m!7847524))

(declare-fun m!7848022 () Bool)

(assert (=> b!7130933 m!7848022))

(assert (=> b!7130933 m!7847522))

(assert (=> b!7130933 m!7848022))

(declare-fun m!7848024 () Bool)

(assert (=> b!7130933 m!7848024))

(assert (=> b!7130933 m!7847524))

(declare-fun m!7848026 () Bool)

(assert (=> b!7130933 m!7848026))

(assert (=> b!7130933 m!7848024))

(assert (=> b!7130933 m!7848026))

(declare-fun m!7848028 () Bool)

(assert (=> b!7130933 m!7848028))

(assert (=> b!7130643 d!2225324))

(declare-fun bs!1886894 () Bool)

(declare-fun d!2225326 () Bool)

(assert (= bs!1886894 (and d!2225326 d!2225200)))

(declare-fun lambda!433202 () Int)

(assert (=> bs!1886894 (= (= (head!14471 s2!1620) (head!14471 s1Rec!140)) (= lambda!433202 lambda!433194))))

(declare-fun bs!1886895 () Bool)

(assert (= bs!1886895 (and d!2225326 d!2225252)))

(assert (=> bs!1886895 (= (= (head!14471 s2!1620) (head!14471 s1!1688)) (= lambda!433202 lambda!433200))))

(assert (=> d!2225326 true))

(assert (=> d!2225326 (= (derivationStepZipper!3174 z2!471 (head!14471 s2!1620)) (flatMap!2638 z2!471 lambda!433202))))

(declare-fun bs!1886896 () Bool)

(assert (= bs!1886896 d!2225326))

(declare-fun m!7848030 () Bool)

(assert (=> bs!1886896 m!7848030))

(assert (=> b!7130643 d!2225326))

(declare-fun d!2225328 () Bool)

(assert (=> d!2225328 (= (head!14471 s2!1620) (h!75505 s2!1620))))

(assert (=> b!7130643 d!2225328))

(declare-fun d!2225330 () Bool)

(assert (=> d!2225330 (= (tail!13943 s2!1620) (t!383158 s2!1620))))

(assert (=> b!7130643 d!2225330))

(assert (=> b!7130675 d!2225220))

(assert (=> b!7130675 d!2225104))

(declare-fun d!2225332 () Bool)

(assert (=> d!2225332 (= (isEmpty!40028 s1!1688) ((_ is Nil!69057) s1!1688))))

(assert (=> d!2225120 d!2225332))

(declare-fun d!2225334 () Bool)

(declare-fun lt!2564535 () Int)

(assert (=> d!2225334 (>= lt!2564535 0)))

(declare-fun e!4285381 () Int)

(assert (=> d!2225334 (= lt!2564535 e!4285381)))

(declare-fun c!1330109 () Bool)

(assert (=> d!2225334 (= c!1330109 ((_ is Nil!69057) lt!2564431))))

(assert (=> d!2225334 (= (size!41488 lt!2564431) lt!2564535)))

(declare-fun b!7130934 () Bool)

(assert (=> b!7130934 (= e!4285381 0)))

(declare-fun b!7130935 () Bool)

(assert (=> b!7130935 (= e!4285381 (+ 1 (size!41488 (t!383158 lt!2564431))))))

(assert (= (and d!2225334 c!1330109) b!7130934))

(assert (= (and d!2225334 (not c!1330109)) b!7130935))

(declare-fun m!7848032 () Bool)

(assert (=> b!7130935 m!7848032))

(assert (=> b!7130703 d!2225334))

(assert (=> b!7130703 d!2225142))

(declare-fun d!2225336 () Bool)

(declare-fun c!1330110 () Bool)

(assert (=> d!2225336 (= c!1330110 (isEmpty!40028 (tail!13943 s2Rec!140)))))

(declare-fun e!4285382 () Bool)

(assert (=> d!2225336 (= (matchZipper!3319 (derivationStepZipper!3174 z2!471 (head!14471 s2Rec!140)) (tail!13943 s2Rec!140)) e!4285382)))

(declare-fun b!7130936 () Bool)

(assert (=> b!7130936 (= e!4285382 (nullableZipper!2762 (derivationStepZipper!3174 z2!471 (head!14471 s2Rec!140))))))

(declare-fun b!7130937 () Bool)

(assert (=> b!7130937 (= e!4285382 (matchZipper!3319 (derivationStepZipper!3174 (derivationStepZipper!3174 z2!471 (head!14471 s2Rec!140)) (head!14471 (tail!13943 s2Rec!140))) (tail!13943 (tail!13943 s2Rec!140))))))

(assert (= (and d!2225336 c!1330110) b!7130936))

(assert (= (and d!2225336 (not c!1330110)) b!7130937))

(assert (=> d!2225336 m!7847500))

(declare-fun m!7848034 () Bool)

(assert (=> d!2225336 m!7848034))

(assert (=> b!7130936 m!7847498))

(declare-fun m!7848036 () Bool)

(assert (=> b!7130936 m!7848036))

(assert (=> b!7130937 m!7847500))

(declare-fun m!7848038 () Bool)

(assert (=> b!7130937 m!7848038))

(assert (=> b!7130937 m!7847498))

(assert (=> b!7130937 m!7848038))

(declare-fun m!7848040 () Bool)

(assert (=> b!7130937 m!7848040))

(assert (=> b!7130937 m!7847500))

(declare-fun m!7848042 () Bool)

(assert (=> b!7130937 m!7848042))

(assert (=> b!7130937 m!7848040))

(assert (=> b!7130937 m!7848042))

(declare-fun m!7848044 () Bool)

(assert (=> b!7130937 m!7848044))

(assert (=> b!7130629 d!2225336))

(declare-fun bs!1886897 () Bool)

(declare-fun d!2225338 () Bool)

(assert (= bs!1886897 (and d!2225338 d!2225200)))

(declare-fun lambda!433203 () Int)

(assert (=> bs!1886897 (= (= (head!14471 s2Rec!140) (head!14471 s1Rec!140)) (= lambda!433203 lambda!433194))))

(declare-fun bs!1886898 () Bool)

(assert (= bs!1886898 (and d!2225338 d!2225252)))

(assert (=> bs!1886898 (= (= (head!14471 s2Rec!140) (head!14471 s1!1688)) (= lambda!433203 lambda!433200))))

(declare-fun bs!1886899 () Bool)

(assert (= bs!1886899 (and d!2225338 d!2225326)))

(assert (=> bs!1886899 (= (= (head!14471 s2Rec!140) (head!14471 s2!1620)) (= lambda!433203 lambda!433202))))

(assert (=> d!2225338 true))

(assert (=> d!2225338 (= (derivationStepZipper!3174 z2!471 (head!14471 s2Rec!140)) (flatMap!2638 z2!471 lambda!433203))))

(declare-fun bs!1886900 () Bool)

(assert (= bs!1886900 d!2225338))

(declare-fun m!7848046 () Bool)

(assert (=> bs!1886900 m!7848046))

(assert (=> b!7130629 d!2225338))

(declare-fun d!2225340 () Bool)

(assert (=> d!2225340 (= (head!14471 s2Rec!140) (h!75505 s2Rec!140))))

(assert (=> b!7130629 d!2225340))

(declare-fun d!2225342 () Bool)

(assert (=> d!2225342 (= (tail!13943 s2Rec!140) (t!383158 s2Rec!140))))

(assert (=> b!7130629 d!2225342))

(declare-fun b!7130941 () Bool)

(declare-fun e!4285384 () Bool)

(assert (=> b!7130941 (= e!4285384 (>= (size!41488 (++!16201 s1!1688 s2!1620)) (size!41488 s1!1688)))))

(declare-fun b!7130939 () Bool)

(declare-fun res!2909615 () Bool)

(declare-fun e!4285383 () Bool)

(assert (=> b!7130939 (=> (not res!2909615) (not e!4285383))))

(assert (=> b!7130939 (= res!2909615 (= (head!14471 s1!1688) (head!14471 (++!16201 s1!1688 s2!1620))))))

(declare-fun b!7130938 () Bool)

(declare-fun e!4285385 () Bool)

(assert (=> b!7130938 (= e!4285385 e!4285383)))

(declare-fun res!2909614 () Bool)

(assert (=> b!7130938 (=> (not res!2909614) (not e!4285383))))

(assert (=> b!7130938 (= res!2909614 (not ((_ is Nil!69057) (++!16201 s1!1688 s2!1620))))))

(declare-fun d!2225344 () Bool)

(assert (=> d!2225344 e!4285384))

(declare-fun res!2909617 () Bool)

(assert (=> d!2225344 (=> res!2909617 e!4285384)))

(declare-fun lt!2564536 () Bool)

(assert (=> d!2225344 (= res!2909617 (not lt!2564536))))

(assert (=> d!2225344 (= lt!2564536 e!4285385)))

(declare-fun res!2909616 () Bool)

(assert (=> d!2225344 (=> res!2909616 e!4285385)))

(assert (=> d!2225344 (= res!2909616 ((_ is Nil!69057) s1!1688))))

(assert (=> d!2225344 (= (isPrefix!5932 s1!1688 (++!16201 s1!1688 s2!1620)) lt!2564536)))

(declare-fun b!7130940 () Bool)

(assert (=> b!7130940 (= e!4285383 (isPrefix!5932 (tail!13943 s1!1688) (tail!13943 (++!16201 s1!1688 s2!1620))))))

(assert (= (and d!2225344 (not res!2909616)) b!7130938))

(assert (= (and b!7130938 res!2909614) b!7130939))

(assert (= (and b!7130939 res!2909615) b!7130940))

(assert (= (and d!2225344 (not res!2909617)) b!7130941))

(assert (=> b!7130941 m!7847446))

(declare-fun m!7848048 () Bool)

(assert (=> b!7130941 m!7848048))

(assert (=> b!7130941 m!7847468))

(assert (=> b!7130939 m!7847580))

(assert (=> b!7130939 m!7847446))

(declare-fun m!7848050 () Bool)

(assert (=> b!7130939 m!7848050))

(assert (=> b!7130940 m!7847582))

(assert (=> b!7130940 m!7847446))

(declare-fun m!7848052 () Bool)

(assert (=> b!7130940 m!7848052))

(assert (=> b!7130940 m!7847582))

(assert (=> b!7130940 m!7848052))

(declare-fun m!7848054 () Bool)

(assert (=> b!7130940 m!7848054))

(assert (=> d!2225130 d!2225344))

(assert (=> d!2225130 d!2225114))

(declare-fun d!2225346 () Bool)

(assert (=> d!2225346 (isPrefix!5932 s1!1688 (++!16201 s1!1688 s2!1620))))

(assert (=> d!2225346 true))

(declare-fun _$46!2056 () Unit!162995)

(assert (=> d!2225346 (= (choose!55101 s1!1688 s2!1620) _$46!2056)))

(declare-fun bs!1886901 () Bool)

(assert (= bs!1886901 d!2225346))

(assert (=> bs!1886901 m!7847446))

(assert (=> bs!1886901 m!7847446))

(assert (=> bs!1886901 m!7847618))

(assert (=> d!2225130 d!2225346))

(declare-fun d!2225348 () Bool)

(declare-fun c!1330111 () Bool)

(assert (=> d!2225348 (= c!1330111 ((_ is Nil!69057) lt!2564477))))

(declare-fun e!4285386 () (InoxSet C!36396))

(assert (=> d!2225348 (= (content!14122 lt!2564477) e!4285386)))

(declare-fun b!7130942 () Bool)

(assert (=> b!7130942 (= e!4285386 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130943 () Bool)

(assert (=> b!7130943 (= e!4285386 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 lt!2564477) true) (content!14122 (t!383158 lt!2564477))))))

(assert (= (and d!2225348 c!1330111) b!7130942))

(assert (= (and d!2225348 (not c!1330111)) b!7130943))

(declare-fun m!7848056 () Bool)

(assert (=> b!7130943 m!7848056))

(declare-fun m!7848058 () Bool)

(assert (=> b!7130943 m!7848058))

(assert (=> d!2225144 d!2225348))

(declare-fun d!2225350 () Bool)

(declare-fun c!1330112 () Bool)

(assert (=> d!2225350 (= c!1330112 ((_ is Nil!69057) lt!2564434))))

(declare-fun e!4285387 () (InoxSet C!36396))

(assert (=> d!2225350 (= (content!14122 lt!2564434) e!4285387)))

(declare-fun b!7130944 () Bool)

(assert (=> b!7130944 (= e!4285387 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130945 () Bool)

(assert (=> b!7130945 (= e!4285387 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 lt!2564434) true) (content!14122 (t!383158 lt!2564434))))))

(assert (= (and d!2225350 c!1330112) b!7130944))

(assert (= (and d!2225350 (not c!1330112)) b!7130945))

(declare-fun m!7848060 () Bool)

(assert (=> b!7130945 m!7848060))

(declare-fun m!7848062 () Bool)

(assert (=> b!7130945 m!7848062))

(assert (=> d!2225144 d!2225350))

(declare-fun d!2225352 () Bool)

(declare-fun c!1330113 () Bool)

(assert (=> d!2225352 (= c!1330113 ((_ is Nil!69057) (t!383158 s2Rec!140)))))

(declare-fun e!4285388 () (InoxSet C!36396))

(assert (=> d!2225352 (= (content!14122 (t!383158 s2Rec!140)) e!4285388)))

(declare-fun b!7130946 () Bool)

(assert (=> b!7130946 (= e!4285388 ((as const (Array C!36396 Bool)) false))))

(declare-fun b!7130947 () Bool)

(assert (=> b!7130947 (= e!4285388 ((_ map or) (store ((as const (Array C!36396 Bool)) false) (h!75505 (t!383158 s2Rec!140)) true) (content!14122 (t!383158 (t!383158 s2Rec!140)))))))

(assert (= (and d!2225352 c!1330113) b!7130946))

(assert (= (and d!2225352 (not c!1330113)) b!7130947))

(declare-fun m!7848064 () Bool)

(assert (=> b!7130947 m!7848064))

(declare-fun m!7848066 () Bool)

(assert (=> b!7130947 m!7848066))

(assert (=> d!2225144 d!2225352))

(assert (=> b!7130701 d!2225202))

(declare-fun d!2225354 () Bool)

(assert (=> d!2225354 (= (head!14471 lt!2564431) (h!75505 lt!2564431))))

(assert (=> b!7130701 d!2225354))

(declare-fun b!7130949 () Bool)

(declare-fun e!4285389 () List!69181)

(assert (=> b!7130949 (= e!4285389 (Cons!69057 (h!75505 (t!383158 s1Rec!140)) (++!16201 (t!383158 (t!383158 s1Rec!140)) s2Rec!140)))))

(declare-fun d!2225356 () Bool)

(declare-fun e!4285390 () Bool)

(assert (=> d!2225356 e!4285390))

(declare-fun res!2909619 () Bool)

(assert (=> d!2225356 (=> (not res!2909619) (not e!4285390))))

(declare-fun lt!2564537 () List!69181)

(assert (=> d!2225356 (= res!2909619 (= (content!14122 lt!2564537) ((_ map or) (content!14122 (t!383158 s1Rec!140)) (content!14122 s2Rec!140))))))

(assert (=> d!2225356 (= lt!2564537 e!4285389)))

(declare-fun c!1330114 () Bool)

(assert (=> d!2225356 (= c!1330114 ((_ is Nil!69057) (t!383158 s1Rec!140)))))

(assert (=> d!2225356 (= (++!16201 (t!383158 s1Rec!140) s2Rec!140) lt!2564537)))

(declare-fun b!7130948 () Bool)

(assert (=> b!7130948 (= e!4285389 s2Rec!140)))

(declare-fun b!7130950 () Bool)

(declare-fun res!2909618 () Bool)

(assert (=> b!7130950 (=> (not res!2909618) (not e!4285390))))

(assert (=> b!7130950 (= res!2909618 (= (size!41488 lt!2564537) (+ (size!41488 (t!383158 s1Rec!140)) (size!41488 s2Rec!140))))))

(declare-fun b!7130951 () Bool)

(assert (=> b!7130951 (= e!4285390 (or (not (= s2Rec!140 Nil!69057)) (= lt!2564537 (t!383158 s1Rec!140))))))

(assert (= (and d!2225356 c!1330114) b!7130948))

(assert (= (and d!2225356 (not c!1330114)) b!7130949))

(assert (= (and d!2225356 res!2909619) b!7130950))

(assert (= (and b!7130950 res!2909618) b!7130951))

(declare-fun m!7848068 () Bool)

(assert (=> b!7130949 m!7848068))

(declare-fun m!7848070 () Bool)

(assert (=> d!2225356 m!7848070))

(assert (=> d!2225356 m!7847932))

(assert (=> d!2225356 m!7847510))

(declare-fun m!7848072 () Bool)

(assert (=> b!7130950 m!7848072))

(assert (=> b!7130950 m!7847642))

(assert (=> b!7130950 m!7847514))

(assert (=> b!7130639 d!2225356))

(assert (=> b!7130681 d!2225202))

(assert (=> b!7130681 d!2225214))

(declare-fun b!7130953 () Bool)

(declare-fun e!4285391 () List!69181)

(assert (=> b!7130953 (= e!4285391 (Cons!69057 (h!75505 (t!383158 lt!2564434)) (++!16201 (t!383158 (t!383158 lt!2564434)) (t!383158 s2Rec!140))))))

(declare-fun d!2225358 () Bool)

(declare-fun e!4285392 () Bool)

(assert (=> d!2225358 e!4285392))

(declare-fun res!2909621 () Bool)

(assert (=> d!2225358 (=> (not res!2909621) (not e!4285392))))

(declare-fun lt!2564538 () List!69181)

(assert (=> d!2225358 (= res!2909621 (= (content!14122 lt!2564538) ((_ map or) (content!14122 (t!383158 lt!2564434)) (content!14122 (t!383158 s2Rec!140)))))))

(assert (=> d!2225358 (= lt!2564538 e!4285391)))

(declare-fun c!1330115 () Bool)

(assert (=> d!2225358 (= c!1330115 ((_ is Nil!69057) (t!383158 lt!2564434)))))

(assert (=> d!2225358 (= (++!16201 (t!383158 lt!2564434) (t!383158 s2Rec!140)) lt!2564538)))

(declare-fun b!7130952 () Bool)

(assert (=> b!7130952 (= e!4285391 (t!383158 s2Rec!140))))

(declare-fun b!7130954 () Bool)

(declare-fun res!2909620 () Bool)

(assert (=> b!7130954 (=> (not res!2909620) (not e!4285392))))

(assert (=> b!7130954 (= res!2909620 (= (size!41488 lt!2564538) (+ (size!41488 (t!383158 lt!2564434)) (size!41488 (t!383158 s2Rec!140)))))))

(declare-fun b!7130955 () Bool)

(assert (=> b!7130955 (= e!4285392 (or (not (= (t!383158 s2Rec!140) Nil!69057)) (= lt!2564538 (t!383158 lt!2564434))))))

(assert (= (and d!2225358 c!1330115) b!7130952))

(assert (= (and d!2225358 (not c!1330115)) b!7130953))

(assert (= (and d!2225358 res!2909621) b!7130954))

(assert (= (and b!7130954 res!2909620) b!7130955))

(declare-fun m!7848074 () Bool)

(assert (=> b!7130953 m!7848074))

(declare-fun m!7848076 () Bool)

(assert (=> d!2225358 m!7848076))

(assert (=> d!2225358 m!7848062))

(assert (=> d!2225358 m!7847650))

(declare-fun m!7848078 () Bool)

(assert (=> b!7130954 m!7848078))

(assert (=> b!7130954 m!7847540))

(assert (=> b!7130954 m!7847654))

(assert (=> b!7130707 d!2225358))

(assert (=> b!7130683 d!2225138))

(assert (=> b!7130683 d!2225142))

(declare-fun b!7130956 () Bool)

(declare-fun e!4285393 () Bool)

(declare-fun tp!1965118 () Bool)

(declare-fun tp!1965119 () Bool)

(assert (=> b!7130956 (= e!4285393 (and tp!1965118 tp!1965119))))

(assert (=> b!7130730 (= tp!1965087 e!4285393)))

(assert (= (and b!7130730 ((_ is Cons!69056) (exprs!7557 setElem!52018))) b!7130956))

(declare-fun b!7130957 () Bool)

(declare-fun e!4285394 () Bool)

(declare-fun tp!1965120 () Bool)

(assert (=> b!7130957 (= e!4285394 (and tp_is_empty!45727 tp!1965120))))

(assert (=> b!7130723 (= tp!1965080 e!4285394)))

(assert (= (and b!7130723 ((_ is Cons!69057) (t!383158 (t!383158 s2Rec!140)))) b!7130957))

(declare-fun b!7130969 () Bool)

(declare-fun e!4285397 () Bool)

(declare-fun tp!1965133 () Bool)

(declare-fun tp!1965132 () Bool)

(assert (=> b!7130969 (= e!4285397 (and tp!1965133 tp!1965132))))

(declare-fun b!7130971 () Bool)

(declare-fun tp!1965135 () Bool)

(declare-fun tp!1965134 () Bool)

(assert (=> b!7130971 (= e!4285397 (and tp!1965135 tp!1965134))))

(declare-fun b!7130968 () Bool)

(assert (=> b!7130968 (= e!4285397 tp_is_empty!45727)))

(declare-fun b!7130970 () Bool)

(declare-fun tp!1965131 () Bool)

(assert (=> b!7130970 (= e!4285397 tp!1965131)))

(assert (=> b!7130731 (= tp!1965089 e!4285397)))

(assert (= (and b!7130731 ((_ is ElementMatch!18063) (h!75504 (exprs!7557 setElem!52014)))) b!7130968))

(assert (= (and b!7130731 ((_ is Concat!26908) (h!75504 (exprs!7557 setElem!52014)))) b!7130969))

(assert (= (and b!7130731 ((_ is Star!18063) (h!75504 (exprs!7557 setElem!52014)))) b!7130970))

(assert (= (and b!7130731 ((_ is Union!18063) (h!75504 (exprs!7557 setElem!52014)))) b!7130971))

(declare-fun b!7130972 () Bool)

(declare-fun e!4285398 () Bool)

(declare-fun tp!1965136 () Bool)

(declare-fun tp!1965137 () Bool)

(assert (=> b!7130972 (= e!4285398 (and tp!1965136 tp!1965137))))

(assert (=> b!7130731 (= tp!1965090 e!4285398)))

(assert (= (and b!7130731 ((_ is Cons!69056) (t!383157 (exprs!7557 setElem!52014)))) b!7130972))

(declare-fun b!7130973 () Bool)

(declare-fun e!4285399 () Bool)

(declare-fun tp!1965138 () Bool)

(declare-fun tp!1965139 () Bool)

(assert (=> b!7130973 (= e!4285399 (and tp!1965138 tp!1965139))))

(assert (=> b!7130734 (= tp!1965093 e!4285399)))

(assert (= (and b!7130734 ((_ is Cons!69056) (exprs!7557 setElem!52019))) b!7130973))

(declare-fun b!7130975 () Bool)

(declare-fun e!4285400 () Bool)

(declare-fun tp!1965142 () Bool)

(declare-fun tp!1965141 () Bool)

(assert (=> b!7130975 (= e!4285400 (and tp!1965142 tp!1965141))))

(declare-fun b!7130977 () Bool)

(declare-fun tp!1965144 () Bool)

(declare-fun tp!1965143 () Bool)

(assert (=> b!7130977 (= e!4285400 (and tp!1965144 tp!1965143))))

(declare-fun b!7130974 () Bool)

(assert (=> b!7130974 (= e!4285400 tp_is_empty!45727)))

(declare-fun b!7130976 () Bool)

(declare-fun tp!1965140 () Bool)

(assert (=> b!7130976 (= e!4285400 tp!1965140)))

(assert (=> b!7130718 (= tp!1965076 e!4285400)))

(assert (= (and b!7130718 ((_ is ElementMatch!18063) (h!75504 (exprs!7557 setElem!52015)))) b!7130974))

(assert (= (and b!7130718 ((_ is Concat!26908) (h!75504 (exprs!7557 setElem!52015)))) b!7130975))

(assert (= (and b!7130718 ((_ is Star!18063) (h!75504 (exprs!7557 setElem!52015)))) b!7130976))

(assert (= (and b!7130718 ((_ is Union!18063) (h!75504 (exprs!7557 setElem!52015)))) b!7130977))

(declare-fun b!7130978 () Bool)

(declare-fun e!4285401 () Bool)

(declare-fun tp!1965145 () Bool)

(declare-fun tp!1965146 () Bool)

(assert (=> b!7130978 (= e!4285401 (and tp!1965145 tp!1965146))))

(assert (=> b!7130718 (= tp!1965077 e!4285401)))

(assert (= (and b!7130718 ((_ is Cons!69056) (t!383157 (exprs!7557 setElem!52015)))) b!7130978))

(declare-fun b!7130979 () Bool)

(declare-fun e!4285402 () Bool)

(declare-fun tp!1965147 () Bool)

(assert (=> b!7130979 (= e!4285402 (and tp_is_empty!45727 tp!1965147))))

(assert (=> b!7130725 (= tp!1965082 e!4285402)))

(assert (= (and b!7130725 ((_ is Cons!69057) (t!383158 (t!383158 s!7390)))) b!7130979))

(declare-fun b!7130980 () Bool)

(declare-fun e!4285403 () Bool)

(declare-fun tp!1965148 () Bool)

(assert (=> b!7130980 (= e!4285403 (and tp_is_empty!45727 tp!1965148))))

(assert (=> b!7130733 (= tp!1965092 e!4285403)))

(assert (= (and b!7130733 ((_ is Cons!69057) (t!383158 (t!383158 s2!1620)))) b!7130980))

(declare-fun b!7130981 () Bool)

(declare-fun e!4285404 () Bool)

(declare-fun tp!1965149 () Bool)

(assert (=> b!7130981 (= e!4285404 (and tp_is_empty!45727 tp!1965149))))

(assert (=> b!7130724 (= tp!1965081 e!4285404)))

(assert (= (and b!7130724 ((_ is Cons!69057) (t!383158 (t!383158 s1!1688)))) b!7130981))

(declare-fun b!7130982 () Bool)

(declare-fun e!4285405 () Bool)

(declare-fun tp!1965150 () Bool)

(assert (=> b!7130982 (= e!4285405 (and tp_is_empty!45727 tp!1965150))))

(assert (=> b!7130732 (= tp!1965091 e!4285405)))

(assert (= (and b!7130732 ((_ is Cons!69057) (t!383158 (t!383158 s1Rec!140)))) b!7130982))

(declare-fun condSetEmpty!52024 () Bool)

(assert (=> setNonEmpty!52018 (= condSetEmpty!52024 (= setRest!52018 ((as const (Array Context!14114 Bool)) false)))))

(declare-fun setRes!52024 () Bool)

(assert (=> setNonEmpty!52018 (= tp!1965088 setRes!52024)))

(declare-fun setIsEmpty!52024 () Bool)

(assert (=> setIsEmpty!52024 setRes!52024))

(declare-fun tp!1965152 () Bool)

(declare-fun setElem!52024 () Context!14114)

(declare-fun setNonEmpty!52024 () Bool)

(declare-fun e!4285406 () Bool)

(assert (=> setNonEmpty!52024 (= setRes!52024 (and tp!1965152 (inv!88185 setElem!52024) e!4285406))))

(declare-fun setRest!52024 () (InoxSet Context!14114))

(assert (=> setNonEmpty!52024 (= setRest!52018 ((_ map or) (store ((as const (Array Context!14114 Bool)) false) setElem!52024 true) setRest!52024))))

(declare-fun b!7130983 () Bool)

(declare-fun tp!1965151 () Bool)

(assert (=> b!7130983 (= e!4285406 tp!1965151)))

(assert (= (and setNonEmpty!52018 condSetEmpty!52024) setIsEmpty!52024))

(assert (= (and setNonEmpty!52018 (not condSetEmpty!52024)) setNonEmpty!52024))

(assert (= setNonEmpty!52024 b!7130983))

(declare-fun m!7848080 () Bool)

(assert (=> setNonEmpty!52024 m!7848080))

(declare-fun condSetEmpty!52025 () Bool)

(assert (=> setNonEmpty!52019 (= condSetEmpty!52025 (= setRest!52019 ((as const (Array Context!14114 Bool)) false)))))

(declare-fun setRes!52025 () Bool)

(assert (=> setNonEmpty!52019 (= tp!1965094 setRes!52025)))

(declare-fun setIsEmpty!52025 () Bool)

(assert (=> setIsEmpty!52025 setRes!52025))

(declare-fun tp!1965154 () Bool)

(declare-fun setNonEmpty!52025 () Bool)

(declare-fun setElem!52025 () Context!14114)

(declare-fun e!4285407 () Bool)

(assert (=> setNonEmpty!52025 (= setRes!52025 (and tp!1965154 (inv!88185 setElem!52025) e!4285407))))

(declare-fun setRest!52025 () (InoxSet Context!14114))

(assert (=> setNonEmpty!52025 (= setRest!52019 ((_ map or) (store ((as const (Array Context!14114 Bool)) false) setElem!52025 true) setRest!52025))))

(declare-fun b!7130984 () Bool)

(declare-fun tp!1965153 () Bool)

(assert (=> b!7130984 (= e!4285407 tp!1965153)))

(assert (= (and setNonEmpty!52019 condSetEmpty!52025) setIsEmpty!52025))

(assert (= (and setNonEmpty!52019 (not condSetEmpty!52025)) setNonEmpty!52025))

(assert (= setNonEmpty!52025 b!7130984))

(declare-fun m!7848082 () Bool)

(assert (=> setNonEmpty!52025 m!7848082))

(declare-fun b_lambda!272081 () Bool)

(assert (= b_lambda!272077 (or d!2225106 b_lambda!272081)))

(declare-fun bs!1886902 () Bool)

(declare-fun d!2225360 () Bool)

(assert (= bs!1886902 (and d!2225360 d!2225106)))

(declare-fun validRegex!9272 (Regex!18063) Bool)

(assert (=> bs!1886902 (= (dynLambda!28116 lambda!433186 (h!75504 (exprs!7557 setElem!52014))) (validRegex!9272 (h!75504 (exprs!7557 setElem!52014))))))

(declare-fun m!7848084 () Bool)

(assert (=> bs!1886902 m!7848084))

(assert (=> b!7130902 d!2225360))

(declare-fun b_lambda!272083 () Bool)

(assert (= b_lambda!272079 (or d!2225116 b_lambda!272083)))

(declare-fun bs!1886903 () Bool)

(declare-fun d!2225362 () Bool)

(assert (= bs!1886903 (and d!2225362 d!2225116)))

(assert (=> bs!1886903 (= (dynLambda!28116 lambda!433187 (h!75504 (exprs!7557 setElem!52015))) (validRegex!9272 (h!75504 (exprs!7557 setElem!52015))))))

(declare-fun m!7848086 () Bool)

(assert (=> bs!1886903 m!7848086))

(assert (=> b!7130918 d!2225362))

(check-sat (not d!2225222) (not b!7130849) (not b!7130851) (not b!7130935) (not b!7130970) (not b!7130880) (not d!2225234) (not d!2225358) (not b!7130829) (not b!7130931) (not b!7130823) (not b!7130906) (not d!2225356) (not b!7130909) (not b!7130879) (not b!7130881) (not b!7130973) (not b!7130858) (not d!2225336) (not b!7130975) (not b!7130828) (not d!2225244) (not d!2225248) (not b!7130903) (not b!7130827) (not d!2225246) (not b!7130912) (not b_lambda!272083) (not b!7130940) (not b!7130877) (not b!7130953) (not b!7130897) (not b!7130925) (not b!7130927) (not b!7130867) (not b!7130943) (not b!7130978) (not b!7130833) (not b!7130932) (not b!7130939) (not b!7130976) (not b!7130969) (not d!2225326) (not b!7130907) (not b!7130895) (not b!7130887) (not d!2225338) (not b!7130922) (not b!7130856) (not d!2225312) (not setNonEmpty!52025) (not b!7130883) (not b!7130875) (not b!7130979) (not b!7130843) (not d!2225294) (not b!7130937) (not b!7130933) (not b!7130831) (not b!7130977) (not d!2225198) (not b!7130852) (not b!7130841) (not b!7130839) (not b!7130983) (not d!2225282) (not b!7130919) (not b!7130836) (not b!7130855) (not b!7130911) (not b!7130905) (not b!7130929) (not b!7130837) (not b!7130844) (not b!7130871) (not bs!1886902) (not b!7130913) (not b!7130872) (not b!7130941) (not b!7130892) (not b!7130885) (not d!2225200) (not d!2225250) (not b!7130945) (not d!2225224) (not b!7130949) (not b!7130981) (not b!7130915) (not b!7130840) (not b!7130869) (not b!7130972) (not b!7130921) (not b!7130835) (not b!7130859) (not b!7130954) (not b!7130957) (not b!7130936) (not b!7130947) (not b!7130950) (not b!7130923) (not d!2225324) (not d!2225236) (not d!2225218) (not b!7130865) (not b!7130917) (not b_lambda!272081) (not b!7130980) (not b!7130982) (not d!2225252) (not b!7130889) (not b!7130971) (not b!7130873) (not setNonEmpty!52024) (not bs!1886903) (not b!7130847) (not d!2225346) (not b!7130822) (not b!7130984) (not b!7130891) (not b!7130956) tp_is_empty!45727)
(check-sat)
