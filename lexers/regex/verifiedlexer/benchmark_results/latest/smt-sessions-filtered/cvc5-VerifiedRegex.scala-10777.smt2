; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!551284 () Bool)

(assert start!551284)

(declare-fun b!5211487 () Bool)

(assert (=> b!5211487 true))

(assert (=> b!5211487 true))

(declare-fun lambda!261331 () Int)

(declare-fun lambda!261330 () Int)

(assert (=> b!5211487 (not (= lambda!261331 lambda!261330))))

(assert (=> b!5211487 true))

(assert (=> b!5211487 true))

(declare-fun b!5211489 () Bool)

(assert (=> b!5211489 true))

(declare-fun b!5211468 () Bool)

(declare-fun res!2213530 () Bool)

(declare-fun e!3244372 () Bool)

(assert (=> b!5211468 (=> res!2213530 e!3244372)))

(declare-datatypes ((C!29870 0))(
  ( (C!29871 (val!24637 Int)) )
))
(declare-datatypes ((Regex!14800 0))(
  ( (ElementMatch!14800 (c!898691 C!29870)) (Concat!23645 (regOne!30112 Regex!14800) (regTwo!30112 Regex!14800)) (EmptyExpr!14800) (Star!14800 (reg!15129 Regex!14800)) (EmptyLang!14800) (Union!14800 (regOne!30113 Regex!14800) (regTwo!30113 Regex!14800)) )
))
(declare-datatypes ((List!60699 0))(
  ( (Nil!60575) (Cons!60575 (h!67023 Regex!14800) (t!373862 List!60699)) )
))
(declare-datatypes ((Context!8368 0))(
  ( (Context!8369 (exprs!4684 List!60699)) )
))
(declare-datatypes ((List!60700 0))(
  ( (Nil!60576) (Cons!60576 (h!67024 Context!8368) (t!373863 List!60700)) )
))
(declare-fun zl!343 () List!60700)

(assert (=> b!5211468 (= res!2213530 (not (is-Cons!60575 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun res!2213528 () Bool)

(declare-fun e!3244380 () Bool)

(assert (=> start!551284 (=> (not res!2213528) (not e!3244380))))

(declare-fun r!7292 () Regex!14800)

(declare-fun validRegex!6536 (Regex!14800) Bool)

(assert (=> start!551284 (= res!2213528 (validRegex!6536 r!7292))))

(assert (=> start!551284 e!3244380))

(declare-fun e!3244378 () Bool)

(assert (=> start!551284 e!3244378))

(declare-fun condSetEmpty!33107 () Bool)

(declare-fun z!1189 () (Set Context!8368))

(assert (=> start!551284 (= condSetEmpty!33107 (= z!1189 (as set.empty (Set Context!8368))))))

(declare-fun setRes!33107 () Bool)

(assert (=> start!551284 setRes!33107))

(declare-fun e!3244381 () Bool)

(assert (=> start!551284 e!3244381))

(declare-fun e!3244379 () Bool)

(assert (=> start!551284 e!3244379))

(declare-fun b!5211469 () Bool)

(declare-fun tp!1461530 () Bool)

(assert (=> b!5211469 (= e!3244378 tp!1461530)))

(declare-fun e!3244385 () Bool)

(declare-fun tp!1461534 () Bool)

(declare-fun b!5211470 () Bool)

(declare-fun inv!80248 (Context!8368) Bool)

(assert (=> b!5211470 (= e!3244381 (and (inv!80248 (h!67024 zl!343)) e!3244385 tp!1461534))))

(declare-fun b!5211471 () Bool)

(declare-fun tp!1461533 () Bool)

(declare-fun tp!1461535 () Bool)

(assert (=> b!5211471 (= e!3244378 (and tp!1461533 tp!1461535))))

(declare-fun b!5211472 () Bool)

(declare-fun tp_is_empty!38853 () Bool)

(assert (=> b!5211472 (= e!3244378 tp_is_empty!38853)))

(declare-fun b!5211473 () Bool)

(declare-fun res!2213519 () Bool)

(assert (=> b!5211473 (=> (not res!2213519) (not e!3244380))))

(declare-fun toList!8584 ((Set Context!8368)) List!60700)

(assert (=> b!5211473 (= res!2213519 (= (toList!8584 z!1189) zl!343))))

(declare-fun b!5211474 () Bool)

(declare-fun tp!1461532 () Bool)

(assert (=> b!5211474 (= e!3244385 tp!1461532)))

(declare-fun b!5211475 () Bool)

(declare-fun tp!1461528 () Bool)

(assert (=> b!5211475 (= e!3244379 (and tp_is_empty!38853 tp!1461528))))

(declare-fun b!5211476 () Bool)

(declare-fun e!3244377 () Bool)

(declare-fun tp!1461529 () Bool)

(assert (=> b!5211476 (= e!3244377 tp!1461529)))

(declare-fun b!5211477 () Bool)

(declare-fun res!2213515 () Bool)

(declare-fun e!3244384 () Bool)

(assert (=> b!5211477 (=> res!2213515 e!3244384)))

(declare-fun isEmpty!32487 (List!60699) Bool)

(assert (=> b!5211477 (= res!2213515 (isEmpty!32487 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5211478 () Bool)

(declare-fun e!3244383 () Bool)

(declare-fun e!3244373 () Bool)

(assert (=> b!5211478 (= e!3244383 e!3244373)))

(declare-fun res!2213525 () Bool)

(assert (=> b!5211478 (=> res!2213525 e!3244373)))

(declare-fun nullable!4969 (Regex!14800) Bool)

(assert (=> b!5211478 (= res!2213525 (not (nullable!4969 (regOne!30113 (regOne!30112 r!7292)))))))

(declare-fun lt!2142238 () Context!8368)

(declare-datatypes ((List!60701 0))(
  ( (Nil!60577) (Cons!60577 (h!67025 C!29870) (t!373864 List!60701)) )
))
(declare-fun s!2326 () List!60701)

(declare-fun lt!2142239 () (Set Context!8368))

(declare-fun lambda!261332 () Int)

(declare-fun flatMap!527 ((Set Context!8368) Int) (Set Context!8368))

(declare-fun derivationStepZipperUp!172 (Context!8368 C!29870) (Set Context!8368))

(assert (=> b!5211478 (= (flatMap!527 lt!2142239 lambda!261332) (derivationStepZipperUp!172 lt!2142238 (h!67025 s!2326)))))

(declare-datatypes ((Unit!152466 0))(
  ( (Unit!152467) )
))
(declare-fun lt!2142229 () Unit!152466)

(declare-fun lemmaFlatMapOnSingletonSet!59 ((Set Context!8368) Context!8368 Int) Unit!152466)

(assert (=> b!5211478 (= lt!2142229 (lemmaFlatMapOnSingletonSet!59 lt!2142239 lt!2142238 lambda!261332))))

(declare-fun lt!2142230 () (Set Context!8368))

(assert (=> b!5211478 (= lt!2142230 (derivationStepZipperUp!172 lt!2142238 (h!67025 s!2326)))))

(assert (=> b!5211478 (= lt!2142239 (set.insert lt!2142238 (as set.empty (Set Context!8368))))))

(assert (=> b!5211478 (= lt!2142238 (Context!8369 (Cons!60575 (regOne!30113 (regOne!30112 r!7292)) (t!373862 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun b!5211479 () Bool)

(declare-fun e!3244386 () Bool)

(declare-fun e!3244374 () Bool)

(assert (=> b!5211479 (= e!3244386 e!3244374)))

(declare-fun res!2213520 () Bool)

(assert (=> b!5211479 (=> res!2213520 e!3244374)))

(declare-fun lt!2142225 () (Set Context!8368))

(declare-fun lt!2142237 () (Set Context!8368))

(assert (=> b!5211479 (= res!2213520 (not (= lt!2142225 lt!2142237)))))

(declare-fun lt!2142241 () (Set Context!8368))

(declare-fun lt!2142236 () (Set Context!8368))

(assert (=> b!5211479 (= lt!2142237 (set.union lt!2142241 lt!2142236))))

(declare-fun lt!2142235 () Context!8368)

(declare-fun derivationStepZipperDown!248 (Regex!14800 Context!8368 C!29870) (Set Context!8368))

(assert (=> b!5211479 (= lt!2142236 (derivationStepZipperDown!248 (regTwo!30113 (regOne!30112 r!7292)) lt!2142235 (h!67025 s!2326)))))

(assert (=> b!5211479 (= lt!2142241 (derivationStepZipperDown!248 (regOne!30113 (regOne!30112 r!7292)) lt!2142235 (h!67025 s!2326)))))

(declare-fun b!5211480 () Bool)

(declare-fun res!2213532 () Bool)

(assert (=> b!5211480 (=> res!2213532 e!3244372)))

(declare-fun isEmpty!32488 (List!60700) Bool)

(assert (=> b!5211480 (= res!2213532 (not (isEmpty!32488 (t!373863 zl!343))))))

(declare-fun b!5211481 () Bool)

(declare-fun e!3244376 () Bool)

(declare-fun lt!2142223 () (Set Context!8368))

(declare-fun matchZipper!1044 ((Set Context!8368) List!60701) Bool)

(assert (=> b!5211481 (= e!3244376 (matchZipper!1044 lt!2142223 (t!373864 s!2326)))))

(declare-fun b!5211482 () Bool)

(declare-fun res!2213529 () Bool)

(assert (=> b!5211482 (=> res!2213529 e!3244372)))

(declare-fun generalisedConcat!469 (List!60699) Regex!14800)

(assert (=> b!5211482 (= res!2213529 (not (= r!7292 (generalisedConcat!469 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun setIsEmpty!33107 () Bool)

(assert (=> setIsEmpty!33107 setRes!33107))

(declare-fun b!5211483 () Bool)

(declare-fun e!3244387 () Unit!152466)

(declare-fun Unit!152468 () Unit!152466)

(assert (=> b!5211483 (= e!3244387 Unit!152468)))

(declare-fun lt!2142226 () Unit!152466)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!37 ((Set Context!8368) (Set Context!8368) List!60701) Unit!152466)

(assert (=> b!5211483 (= lt!2142226 (lemmaZipperConcatMatchesSameAsBothZippers!37 lt!2142225 lt!2142223 (t!373864 s!2326)))))

(declare-fun res!2213517 () Bool)

(assert (=> b!5211483 (= res!2213517 (matchZipper!1044 lt!2142225 (t!373864 s!2326)))))

(assert (=> b!5211483 (=> res!2213517 e!3244376)))

(assert (=> b!5211483 (= (matchZipper!1044 (set.union lt!2142225 lt!2142223) (t!373864 s!2326)) e!3244376)))

(declare-fun b!5211484 () Bool)

(declare-fun tp!1461527 () Bool)

(declare-fun tp!1461526 () Bool)

(assert (=> b!5211484 (= e!3244378 (and tp!1461527 tp!1461526))))

(declare-fun b!5211485 () Bool)

(assert (=> b!5211485 (= e!3244374 e!3244383)))

(declare-fun res!2213524 () Bool)

(assert (=> b!5211485 (=> res!2213524 e!3244383)))

(declare-fun e!3244382 () Bool)

(assert (=> b!5211485 (= res!2213524 e!3244382)))

(declare-fun res!2213518 () Bool)

(assert (=> b!5211485 (=> (not res!2213518) (not e!3244382))))

(declare-fun lt!2142231 () Bool)

(assert (=> b!5211485 (= res!2213518 (not (= (matchZipper!1044 lt!2142225 (t!373864 s!2326)) lt!2142231)))))

(declare-fun e!3244375 () Bool)

(assert (=> b!5211485 (= (matchZipper!1044 lt!2142237 (t!373864 s!2326)) e!3244375)))

(declare-fun res!2213523 () Bool)

(assert (=> b!5211485 (=> res!2213523 e!3244375)))

(assert (=> b!5211485 (= res!2213523 lt!2142231)))

(assert (=> b!5211485 (= lt!2142231 (matchZipper!1044 lt!2142241 (t!373864 s!2326)))))

(declare-fun lt!2142242 () Unit!152466)

(assert (=> b!5211485 (= lt!2142242 (lemmaZipperConcatMatchesSameAsBothZippers!37 lt!2142241 lt!2142236 (t!373864 s!2326)))))

(declare-fun b!5211486 () Bool)

(assert (=> b!5211486 (= e!3244382 (not (matchZipper!1044 lt!2142236 (t!373864 s!2326))))))

(assert (=> b!5211487 (= e!3244372 e!3244384)))

(declare-fun res!2213531 () Bool)

(assert (=> b!5211487 (=> res!2213531 e!3244384)))

(declare-fun lt!2142222 () Bool)

(declare-fun lt!2142224 () Bool)

(assert (=> b!5211487 (= res!2213531 (or (not (= lt!2142224 lt!2142222)) (is-Nil!60577 s!2326)))))

(declare-fun Exists!1981 (Int) Bool)

(assert (=> b!5211487 (= (Exists!1981 lambda!261330) (Exists!1981 lambda!261331))))

(declare-fun lt!2142240 () Unit!152466)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!635 (Regex!14800 Regex!14800 List!60701) Unit!152466)

(assert (=> b!5211487 (= lt!2142240 (lemmaExistCutMatchRandMatchRSpecEquivalent!635 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326))))

(assert (=> b!5211487 (= lt!2142222 (Exists!1981 lambda!261330))))

(declare-datatypes ((tuple2!63998 0))(
  ( (tuple2!63999 (_1!35302 List!60701) (_2!35302 List!60701)) )
))
(declare-datatypes ((Option!14911 0))(
  ( (None!14910) (Some!14910 (v!50939 tuple2!63998)) )
))
(declare-fun isDefined!11614 (Option!14911) Bool)

(declare-fun findConcatSeparation!1325 (Regex!14800 Regex!14800 List!60701 List!60701 List!60701) Option!14911)

(assert (=> b!5211487 (= lt!2142222 (isDefined!11614 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326)))))

(declare-fun lt!2142227 () Unit!152466)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1089 (Regex!14800 Regex!14800 List!60701) Unit!152466)

(assert (=> b!5211487 (= lt!2142227 (lemmaFindConcatSeparationEquivalentToExists!1089 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326))))

(declare-fun b!5211488 () Bool)

(declare-fun Unit!152469 () Unit!152466)

(assert (=> b!5211488 (= e!3244387 Unit!152469)))

(assert (=> b!5211489 (= e!3244384 e!3244386)))

(declare-fun res!2213527 () Bool)

(assert (=> b!5211489 (=> res!2213527 e!3244386)))

(assert (=> b!5211489 (= res!2213527 (or (and (is-ElementMatch!14800 (regOne!30112 r!7292)) (= (c!898691 (regOne!30112 r!7292)) (h!67025 s!2326))) (not (is-Union!14800 (regOne!30112 r!7292)))))))

(declare-fun lt!2142232 () Unit!152466)

(assert (=> b!5211489 (= lt!2142232 e!3244387)))

(declare-fun c!898690 () Bool)

(assert (=> b!5211489 (= c!898690 (nullable!4969 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> b!5211489 (= (flatMap!527 z!1189 lambda!261332) (derivationStepZipperUp!172 (h!67024 zl!343) (h!67025 s!2326)))))

(declare-fun lt!2142233 () Unit!152466)

(assert (=> b!5211489 (= lt!2142233 (lemmaFlatMapOnSingletonSet!59 z!1189 (h!67024 zl!343) lambda!261332))))

(assert (=> b!5211489 (= lt!2142223 (derivationStepZipperUp!172 lt!2142235 (h!67025 s!2326)))))

(assert (=> b!5211489 (= lt!2142225 (derivationStepZipperDown!248 (h!67023 (exprs!4684 (h!67024 zl!343))) lt!2142235 (h!67025 s!2326)))))

(assert (=> b!5211489 (= lt!2142235 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun lt!2142234 () (Set Context!8368))

(assert (=> b!5211489 (= lt!2142234 (derivationStepZipperUp!172 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))) (h!67025 s!2326)))))

(declare-fun b!5211490 () Bool)

(declare-fun res!2213516 () Bool)

(assert (=> b!5211490 (=> (not res!2213516) (not e!3244380))))

(declare-fun unfocusZipper!542 (List!60700) Regex!14800)

(assert (=> b!5211490 (= res!2213516 (= r!7292 (unfocusZipper!542 zl!343)))))

(declare-fun setNonEmpty!33107 () Bool)

(declare-fun tp!1461531 () Bool)

(declare-fun setElem!33107 () Context!8368)

(assert (=> setNonEmpty!33107 (= setRes!33107 (and tp!1461531 (inv!80248 setElem!33107) e!3244377))))

(declare-fun setRest!33107 () (Set Context!8368))

(assert (=> setNonEmpty!33107 (= z!1189 (set.union (set.insert setElem!33107 (as set.empty (Set Context!8368))) setRest!33107))))

(declare-fun b!5211491 () Bool)

(declare-fun res!2213521 () Bool)

(assert (=> b!5211491 (=> res!2213521 e!3244372)))

(assert (=> b!5211491 (= res!2213521 (or (is-EmptyExpr!14800 r!7292) (is-EmptyLang!14800 r!7292) (is-ElementMatch!14800 r!7292) (is-Union!14800 r!7292) (not (is-Concat!23645 r!7292))))))

(declare-fun b!5211492 () Bool)

(declare-fun res!2213522 () Bool)

(assert (=> b!5211492 (=> res!2213522 e!3244372)))

(declare-fun generalisedUnion!729 (List!60699) Regex!14800)

(declare-fun unfocusZipperList!242 (List!60700) List!60699)

(assert (=> b!5211492 (= res!2213522 (not (= r!7292 (generalisedUnion!729 (unfocusZipperList!242 zl!343)))))))

(declare-fun b!5211493 () Bool)

(assert (=> b!5211493 (= e!3244375 (matchZipper!1044 lt!2142236 (t!373864 s!2326)))))

(declare-fun b!5211494 () Bool)

(assert (=> b!5211494 (= e!3244380 (not e!3244372))))

(declare-fun res!2213526 () Bool)

(assert (=> b!5211494 (=> res!2213526 e!3244372)))

(assert (=> b!5211494 (= res!2213526 (not (is-Cons!60576 zl!343)))))

(declare-fun matchRSpec!1903 (Regex!14800 List!60701) Bool)

(assert (=> b!5211494 (= lt!2142224 (matchRSpec!1903 r!7292 s!2326))))

(declare-fun matchR!6985 (Regex!14800 List!60701) Bool)

(assert (=> b!5211494 (= lt!2142224 (matchR!6985 r!7292 s!2326))))

(declare-fun lt!2142228 () Unit!152466)

(declare-fun mainMatchTheorem!1903 (Regex!14800 List!60701) Unit!152466)

(assert (=> b!5211494 (= lt!2142228 (mainMatchTheorem!1903 r!7292 s!2326))))

(declare-fun b!5211495 () Bool)

(assert (=> b!5211495 (= e!3244373 (validRegex!6536 (regOne!30113 (regOne!30112 r!7292))))))

(assert (= (and start!551284 res!2213528) b!5211473))

(assert (= (and b!5211473 res!2213519) b!5211490))

(assert (= (and b!5211490 res!2213516) b!5211494))

(assert (= (and b!5211494 (not res!2213526)) b!5211480))

(assert (= (and b!5211480 (not res!2213532)) b!5211482))

(assert (= (and b!5211482 (not res!2213529)) b!5211468))

(assert (= (and b!5211468 (not res!2213530)) b!5211492))

(assert (= (and b!5211492 (not res!2213522)) b!5211491))

(assert (= (and b!5211491 (not res!2213521)) b!5211487))

(assert (= (and b!5211487 (not res!2213531)) b!5211477))

(assert (= (and b!5211477 (not res!2213515)) b!5211489))

(assert (= (and b!5211489 c!898690) b!5211483))

(assert (= (and b!5211489 (not c!898690)) b!5211488))

(assert (= (and b!5211483 (not res!2213517)) b!5211481))

(assert (= (and b!5211489 (not res!2213527)) b!5211479))

(assert (= (and b!5211479 (not res!2213520)) b!5211485))

(assert (= (and b!5211485 (not res!2213523)) b!5211493))

(assert (= (and b!5211485 res!2213518) b!5211486))

(assert (= (and b!5211485 (not res!2213524)) b!5211478))

(assert (= (and b!5211478 (not res!2213525)) b!5211495))

(assert (= (and start!551284 (is-ElementMatch!14800 r!7292)) b!5211472))

(assert (= (and start!551284 (is-Concat!23645 r!7292)) b!5211484))

(assert (= (and start!551284 (is-Star!14800 r!7292)) b!5211469))

(assert (= (and start!551284 (is-Union!14800 r!7292)) b!5211471))

(assert (= (and start!551284 condSetEmpty!33107) setIsEmpty!33107))

(assert (= (and start!551284 (not condSetEmpty!33107)) setNonEmpty!33107))

(assert (= setNonEmpty!33107 b!5211476))

(assert (= b!5211470 b!5211474))

(assert (= (and start!551284 (is-Cons!60576 zl!343)) b!5211470))

(assert (= (and start!551284 (is-Cons!60577 s!2326)) b!5211475))

(declare-fun m!6261014 () Bool)

(assert (=> b!5211486 m!6261014))

(declare-fun m!6261016 () Bool)

(assert (=> b!5211490 m!6261016))

(declare-fun m!6261018 () Bool)

(assert (=> b!5211495 m!6261018))

(declare-fun m!6261020 () Bool)

(assert (=> b!5211481 m!6261020))

(declare-fun m!6261022 () Bool)

(assert (=> b!5211489 m!6261022))

(declare-fun m!6261024 () Bool)

(assert (=> b!5211489 m!6261024))

(declare-fun m!6261026 () Bool)

(assert (=> b!5211489 m!6261026))

(declare-fun m!6261028 () Bool)

(assert (=> b!5211489 m!6261028))

(declare-fun m!6261030 () Bool)

(assert (=> b!5211489 m!6261030))

(declare-fun m!6261032 () Bool)

(assert (=> b!5211489 m!6261032))

(declare-fun m!6261034 () Bool)

(assert (=> b!5211489 m!6261034))

(declare-fun m!6261036 () Bool)

(assert (=> b!5211473 m!6261036))

(declare-fun m!6261038 () Bool)

(assert (=> start!551284 m!6261038))

(declare-fun m!6261040 () Bool)

(assert (=> b!5211479 m!6261040))

(declare-fun m!6261042 () Bool)

(assert (=> b!5211479 m!6261042))

(declare-fun m!6261044 () Bool)

(assert (=> b!5211483 m!6261044))

(declare-fun m!6261046 () Bool)

(assert (=> b!5211483 m!6261046))

(declare-fun m!6261048 () Bool)

(assert (=> b!5211483 m!6261048))

(declare-fun m!6261050 () Bool)

(assert (=> b!5211492 m!6261050))

(assert (=> b!5211492 m!6261050))

(declare-fun m!6261052 () Bool)

(assert (=> b!5211492 m!6261052))

(declare-fun m!6261054 () Bool)

(assert (=> b!5211480 m!6261054))

(declare-fun m!6261056 () Bool)

(assert (=> b!5211470 m!6261056))

(declare-fun m!6261058 () Bool)

(assert (=> b!5211477 m!6261058))

(declare-fun m!6261060 () Bool)

(assert (=> setNonEmpty!33107 m!6261060))

(declare-fun m!6261062 () Bool)

(assert (=> b!5211494 m!6261062))

(declare-fun m!6261064 () Bool)

(assert (=> b!5211494 m!6261064))

(declare-fun m!6261066 () Bool)

(assert (=> b!5211494 m!6261066))

(assert (=> b!5211485 m!6261046))

(declare-fun m!6261068 () Bool)

(assert (=> b!5211485 m!6261068))

(declare-fun m!6261070 () Bool)

(assert (=> b!5211485 m!6261070))

(declare-fun m!6261072 () Bool)

(assert (=> b!5211485 m!6261072))

(assert (=> b!5211493 m!6261014))

(declare-fun m!6261074 () Bool)

(assert (=> b!5211482 m!6261074))

(declare-fun m!6261076 () Bool)

(assert (=> b!5211487 m!6261076))

(declare-fun m!6261078 () Bool)

(assert (=> b!5211487 m!6261078))

(declare-fun m!6261080 () Bool)

(assert (=> b!5211487 m!6261080))

(declare-fun m!6261082 () Bool)

(assert (=> b!5211487 m!6261082))

(assert (=> b!5211487 m!6261082))

(declare-fun m!6261084 () Bool)

(assert (=> b!5211487 m!6261084))

(assert (=> b!5211487 m!6261078))

(declare-fun m!6261086 () Bool)

(assert (=> b!5211487 m!6261086))

(declare-fun m!6261088 () Bool)

(assert (=> b!5211478 m!6261088))

(declare-fun m!6261090 () Bool)

(assert (=> b!5211478 m!6261090))

(declare-fun m!6261092 () Bool)

(assert (=> b!5211478 m!6261092))

(declare-fun m!6261094 () Bool)

(assert (=> b!5211478 m!6261094))

(declare-fun m!6261096 () Bool)

(assert (=> b!5211478 m!6261096))

(push 1)

(assert (not b!5211480))

(assert (not b!5211473))

(assert (not b!5211489))

(assert (not b!5211494))

(assert (not b!5211495))

(assert (not b!5211487))

(assert (not start!551284))

(assert (not b!5211484))

(assert (not b!5211475))

(assert (not b!5211471))

(assert (not b!5211477))

(assert (not b!5211483))

(assert (not b!5211490))

(assert (not b!5211486))

(assert (not b!5211492))

(assert (not b!5211470))

(assert (not b!5211481))

(assert (not b!5211482))

(assert (not b!5211469))

(assert (not b!5211479))

(assert (not b!5211493))

(assert tp_is_empty!38853)

(assert (not b!5211474))

(assert (not b!5211485))

(assert (not b!5211478))

(assert (not b!5211476))

(assert (not setNonEmpty!33107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1680424 () Bool)

(declare-fun e!3244444 () Bool)

(assert (=> d!1680424 e!3244444))

(declare-fun res!2213601 () Bool)

(assert (=> d!1680424 (=> (not res!2213601) (not e!3244444))))

(declare-fun lt!2142308 () List!60700)

(declare-fun noDuplicate!1182 (List!60700) Bool)

(assert (=> d!1680424 (= res!2213601 (noDuplicate!1182 lt!2142308))))

(declare-fun choose!38741 ((Set Context!8368)) List!60700)

(assert (=> d!1680424 (= lt!2142308 (choose!38741 z!1189))))

(assert (=> d!1680424 (= (toList!8584 z!1189) lt!2142308)))

(declare-fun b!5211606 () Bool)

(declare-fun content!10730 (List!60700) (Set Context!8368))

(assert (=> b!5211606 (= e!3244444 (= (content!10730 lt!2142308) z!1189))))

(assert (= (and d!1680424 res!2213601) b!5211606))

(declare-fun m!6261182 () Bool)

(assert (=> d!1680424 m!6261182))

(declare-fun m!6261184 () Bool)

(assert (=> d!1680424 m!6261184))

(declare-fun m!6261186 () Bool)

(assert (=> b!5211606 m!6261186))

(assert (=> b!5211473 d!1680424))

(declare-fun b!5211628 () Bool)

(declare-fun e!3244460 () Regex!14800)

(assert (=> b!5211628 (= e!3244460 (h!67023 (unfocusZipperList!242 zl!343)))))

(declare-fun b!5211629 () Bool)

(declare-fun e!3244459 () Regex!14800)

(assert (=> b!5211629 (= e!3244459 (Union!14800 (h!67023 (unfocusZipperList!242 zl!343)) (generalisedUnion!729 (t!373862 (unfocusZipperList!242 zl!343)))))))

(declare-fun b!5211630 () Bool)

(declare-fun e!3244462 () Bool)

(declare-fun e!3244457 () Bool)

(assert (=> b!5211630 (= e!3244462 e!3244457)))

(declare-fun c!898710 () Bool)

(declare-fun tail!10268 (List!60699) List!60699)

(assert (=> b!5211630 (= c!898710 (isEmpty!32487 (tail!10268 (unfocusZipperList!242 zl!343))))))

(declare-fun b!5211631 () Bool)

(declare-fun lt!2142311 () Regex!14800)

(declare-fun isUnion!203 (Regex!14800) Bool)

(assert (=> b!5211631 (= e!3244457 (isUnion!203 lt!2142311))))

(declare-fun b!5211632 () Bool)

(assert (=> b!5211632 (= e!3244459 EmptyLang!14800)))

(declare-fun b!5211633 () Bool)

(declare-fun head!11171 (List!60699) Regex!14800)

(assert (=> b!5211633 (= e!3244457 (= lt!2142311 (head!11171 (unfocusZipperList!242 zl!343))))))

(declare-fun b!5211634 () Bool)

(declare-fun e!3244461 () Bool)

(assert (=> b!5211634 (= e!3244461 (isEmpty!32487 (t!373862 (unfocusZipperList!242 zl!343))))))

(declare-fun b!5211635 () Bool)

(declare-fun isEmptyLang!771 (Regex!14800) Bool)

(assert (=> b!5211635 (= e!3244462 (isEmptyLang!771 lt!2142311))))

(declare-fun b!5211636 () Bool)

(declare-fun e!3244458 () Bool)

(assert (=> b!5211636 (= e!3244458 e!3244462)))

(declare-fun c!898711 () Bool)

(assert (=> b!5211636 (= c!898711 (isEmpty!32487 (unfocusZipperList!242 zl!343)))))

(declare-fun b!5211627 () Bool)

(assert (=> b!5211627 (= e!3244460 e!3244459)))

(declare-fun c!898709 () Bool)

(assert (=> b!5211627 (= c!898709 (is-Cons!60575 (unfocusZipperList!242 zl!343)))))

(declare-fun d!1680426 () Bool)

(assert (=> d!1680426 e!3244458))

(declare-fun res!2213607 () Bool)

(assert (=> d!1680426 (=> (not res!2213607) (not e!3244458))))

(assert (=> d!1680426 (= res!2213607 (validRegex!6536 lt!2142311))))

(assert (=> d!1680426 (= lt!2142311 e!3244460)))

(declare-fun c!898712 () Bool)

(assert (=> d!1680426 (= c!898712 e!3244461)))

(declare-fun res!2213606 () Bool)

(assert (=> d!1680426 (=> (not res!2213606) (not e!3244461))))

(assert (=> d!1680426 (= res!2213606 (is-Cons!60575 (unfocusZipperList!242 zl!343)))))

(declare-fun lambda!261348 () Int)

(declare-fun forall!14234 (List!60699 Int) Bool)

(assert (=> d!1680426 (forall!14234 (unfocusZipperList!242 zl!343) lambda!261348)))

(assert (=> d!1680426 (= (generalisedUnion!729 (unfocusZipperList!242 zl!343)) lt!2142311)))

(assert (= (and d!1680426 res!2213606) b!5211634))

(assert (= (and d!1680426 c!898712) b!5211628))

(assert (= (and d!1680426 (not c!898712)) b!5211627))

(assert (= (and b!5211627 c!898709) b!5211629))

(assert (= (and b!5211627 (not c!898709)) b!5211632))

(assert (= (and d!1680426 res!2213607) b!5211636))

(assert (= (and b!5211636 c!898711) b!5211635))

(assert (= (and b!5211636 (not c!898711)) b!5211630))

(assert (= (and b!5211630 c!898710) b!5211633))

(assert (= (and b!5211630 (not c!898710)) b!5211631))

(declare-fun m!6261188 () Bool)

(assert (=> b!5211631 m!6261188))

(assert (=> b!5211636 m!6261050))

(declare-fun m!6261190 () Bool)

(assert (=> b!5211636 m!6261190))

(declare-fun m!6261192 () Bool)

(assert (=> d!1680426 m!6261192))

(assert (=> d!1680426 m!6261050))

(declare-fun m!6261194 () Bool)

(assert (=> d!1680426 m!6261194))

(declare-fun m!6261196 () Bool)

(assert (=> b!5211635 m!6261196))

(assert (=> b!5211630 m!6261050))

(declare-fun m!6261198 () Bool)

(assert (=> b!5211630 m!6261198))

(assert (=> b!5211630 m!6261198))

(declare-fun m!6261200 () Bool)

(assert (=> b!5211630 m!6261200))

(declare-fun m!6261202 () Bool)

(assert (=> b!5211629 m!6261202))

(assert (=> b!5211633 m!6261050))

(declare-fun m!6261204 () Bool)

(assert (=> b!5211633 m!6261204))

(declare-fun m!6261206 () Bool)

(assert (=> b!5211634 m!6261206))

(assert (=> b!5211492 d!1680426))

(declare-fun bs!1210814 () Bool)

(declare-fun d!1680428 () Bool)

(assert (= bs!1210814 (and d!1680428 d!1680426)))

(declare-fun lambda!261351 () Int)

(assert (=> bs!1210814 (= lambda!261351 lambda!261348)))

(declare-fun lt!2142314 () List!60699)

(assert (=> d!1680428 (forall!14234 lt!2142314 lambda!261351)))

(declare-fun e!3244465 () List!60699)

(assert (=> d!1680428 (= lt!2142314 e!3244465)))

(declare-fun c!898715 () Bool)

(assert (=> d!1680428 (= c!898715 (is-Cons!60576 zl!343))))

(assert (=> d!1680428 (= (unfocusZipperList!242 zl!343) lt!2142314)))

(declare-fun b!5211641 () Bool)

(assert (=> b!5211641 (= e!3244465 (Cons!60575 (generalisedConcat!469 (exprs!4684 (h!67024 zl!343))) (unfocusZipperList!242 (t!373863 zl!343))))))

(declare-fun b!5211642 () Bool)

(assert (=> b!5211642 (= e!3244465 Nil!60575)))

(assert (= (and d!1680428 c!898715) b!5211641))

(assert (= (and d!1680428 (not c!898715)) b!5211642))

(declare-fun m!6261208 () Bool)

(assert (=> d!1680428 m!6261208))

(assert (=> b!5211641 m!6261074))

(declare-fun m!6261210 () Bool)

(assert (=> b!5211641 m!6261210))

(assert (=> b!5211492 d!1680428))

(declare-fun bs!1210815 () Bool)

(declare-fun d!1680430 () Bool)

(assert (= bs!1210815 (and d!1680430 d!1680426)))

(declare-fun lambda!261354 () Int)

(assert (=> bs!1210815 (= lambda!261354 lambda!261348)))

(declare-fun bs!1210816 () Bool)

(assert (= bs!1210816 (and d!1680430 d!1680428)))

(assert (=> bs!1210816 (= lambda!261354 lambda!261351)))

(declare-fun b!5211663 () Bool)

(declare-fun e!3244479 () Bool)

(declare-fun lt!2142317 () Regex!14800)

(assert (=> b!5211663 (= e!3244479 (= lt!2142317 (head!11171 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5211664 () Bool)

(declare-fun e!3244478 () Bool)

(assert (=> b!5211664 (= e!3244478 (isEmpty!32487 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5211665 () Bool)

(declare-fun e!3244482 () Bool)

(assert (=> b!5211665 (= e!3244482 e!3244479)))

(declare-fun c!898725 () Bool)

(assert (=> b!5211665 (= c!898725 (isEmpty!32487 (tail!10268 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5211667 () Bool)

(declare-fun e!3244483 () Bool)

(assert (=> b!5211667 (= e!3244483 e!3244482)))

(declare-fun c!898726 () Bool)

(assert (=> b!5211667 (= c!898726 (isEmpty!32487 (exprs!4684 (h!67024 zl!343))))))

(declare-fun b!5211668 () Bool)

(declare-fun isConcat!285 (Regex!14800) Bool)

(assert (=> b!5211668 (= e!3244479 (isConcat!285 lt!2142317))))

(declare-fun b!5211669 () Bool)

(declare-fun e!3244481 () Regex!14800)

(assert (=> b!5211669 (= e!3244481 (h!67023 (exprs!4684 (h!67024 zl!343))))))

(declare-fun b!5211670 () Bool)

(declare-fun isEmptyExpr!762 (Regex!14800) Bool)

(assert (=> b!5211670 (= e!3244482 (isEmptyExpr!762 lt!2142317))))

(declare-fun b!5211671 () Bool)

(declare-fun e!3244480 () Regex!14800)

(assert (=> b!5211671 (= e!3244480 EmptyExpr!14800)))

(declare-fun b!5211672 () Bool)

(assert (=> b!5211672 (= e!3244480 (Concat!23645 (h!67023 (exprs!4684 (h!67024 zl!343))) (generalisedConcat!469 (t!373862 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun b!5211666 () Bool)

(assert (=> b!5211666 (= e!3244481 e!3244480)))

(declare-fun c!898724 () Bool)

(assert (=> b!5211666 (= c!898724 (is-Cons!60575 (exprs!4684 (h!67024 zl!343))))))

(assert (=> d!1680430 e!3244483))

(declare-fun res!2213613 () Bool)

(assert (=> d!1680430 (=> (not res!2213613) (not e!3244483))))

(assert (=> d!1680430 (= res!2213613 (validRegex!6536 lt!2142317))))

(assert (=> d!1680430 (= lt!2142317 e!3244481)))

(declare-fun c!898727 () Bool)

(assert (=> d!1680430 (= c!898727 e!3244478)))

(declare-fun res!2213612 () Bool)

(assert (=> d!1680430 (=> (not res!2213612) (not e!3244478))))

(assert (=> d!1680430 (= res!2213612 (is-Cons!60575 (exprs!4684 (h!67024 zl!343))))))

(assert (=> d!1680430 (forall!14234 (exprs!4684 (h!67024 zl!343)) lambda!261354)))

(assert (=> d!1680430 (= (generalisedConcat!469 (exprs!4684 (h!67024 zl!343))) lt!2142317)))

(assert (= (and d!1680430 res!2213612) b!5211664))

(assert (= (and d!1680430 c!898727) b!5211669))

(assert (= (and d!1680430 (not c!898727)) b!5211666))

(assert (= (and b!5211666 c!898724) b!5211672))

(assert (= (and b!5211666 (not c!898724)) b!5211671))

(assert (= (and d!1680430 res!2213613) b!5211667))

(assert (= (and b!5211667 c!898726) b!5211670))

(assert (= (and b!5211667 (not c!898726)) b!5211665))

(assert (= (and b!5211665 c!898725) b!5211663))

(assert (= (and b!5211665 (not c!898725)) b!5211668))

(declare-fun m!6261212 () Bool)

(assert (=> b!5211667 m!6261212))

(assert (=> b!5211664 m!6261058))

(declare-fun m!6261214 () Bool)

(assert (=> b!5211672 m!6261214))

(declare-fun m!6261216 () Bool)

(assert (=> b!5211663 m!6261216))

(declare-fun m!6261218 () Bool)

(assert (=> b!5211668 m!6261218))

(declare-fun m!6261220 () Bool)

(assert (=> d!1680430 m!6261220))

(declare-fun m!6261222 () Bool)

(assert (=> d!1680430 m!6261222))

(declare-fun m!6261224 () Bool)

(assert (=> b!5211665 m!6261224))

(assert (=> b!5211665 m!6261224))

(declare-fun m!6261226 () Bool)

(assert (=> b!5211665 m!6261226))

(declare-fun m!6261228 () Bool)

(assert (=> b!5211670 m!6261228))

(assert (=> b!5211482 d!1680430))

(declare-fun bs!1210817 () Bool)

(declare-fun d!1680432 () Bool)

(assert (= bs!1210817 (and d!1680432 d!1680426)))

(declare-fun lambda!261357 () Int)

(assert (=> bs!1210817 (= lambda!261357 lambda!261348)))

(declare-fun bs!1210818 () Bool)

(assert (= bs!1210818 (and d!1680432 d!1680428)))

(assert (=> bs!1210818 (= lambda!261357 lambda!261351)))

(declare-fun bs!1210819 () Bool)

(assert (= bs!1210819 (and d!1680432 d!1680430)))

(assert (=> bs!1210819 (= lambda!261357 lambda!261354)))

(assert (=> d!1680432 (= (inv!80248 setElem!33107) (forall!14234 (exprs!4684 setElem!33107) lambda!261357))))

(declare-fun bs!1210820 () Bool)

(assert (= bs!1210820 d!1680432))

(declare-fun m!6261230 () Bool)

(assert (=> bs!1210820 m!6261230))

(assert (=> setNonEmpty!33107 d!1680432))

(declare-fun d!1680434 () Bool)

(declare-fun c!898730 () Bool)

(declare-fun isEmpty!32491 (List!60701) Bool)

(assert (=> d!1680434 (= c!898730 (isEmpty!32491 (t!373864 s!2326)))))

(declare-fun e!3244486 () Bool)

(assert (=> d!1680434 (= (matchZipper!1044 lt!2142223 (t!373864 s!2326)) e!3244486)))

(declare-fun b!5211677 () Bool)

(declare-fun nullableZipper!1226 ((Set Context!8368)) Bool)

(assert (=> b!5211677 (= e!3244486 (nullableZipper!1226 lt!2142223))))

(declare-fun b!5211678 () Bool)

(declare-fun derivationStepZipper!1070 ((Set Context!8368) C!29870) (Set Context!8368))

(declare-fun head!11172 (List!60701) C!29870)

(declare-fun tail!10269 (List!60701) List!60701)

(assert (=> b!5211678 (= e!3244486 (matchZipper!1044 (derivationStepZipper!1070 lt!2142223 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))))))

(assert (= (and d!1680434 c!898730) b!5211677))

(assert (= (and d!1680434 (not c!898730)) b!5211678))

(declare-fun m!6261232 () Bool)

(assert (=> d!1680434 m!6261232))

(declare-fun m!6261234 () Bool)

(assert (=> b!5211677 m!6261234))

(declare-fun m!6261236 () Bool)

(assert (=> b!5211678 m!6261236))

(assert (=> b!5211678 m!6261236))

(declare-fun m!6261238 () Bool)

(assert (=> b!5211678 m!6261238))

(declare-fun m!6261240 () Bool)

(assert (=> b!5211678 m!6261240))

(assert (=> b!5211678 m!6261238))

(assert (=> b!5211678 m!6261240))

(declare-fun m!6261242 () Bool)

(assert (=> b!5211678 m!6261242))

(assert (=> b!5211481 d!1680434))

(declare-fun bs!1210821 () Bool)

(declare-fun d!1680436 () Bool)

(assert (= bs!1210821 (and d!1680436 d!1680426)))

(declare-fun lambda!261358 () Int)

(assert (=> bs!1210821 (= lambda!261358 lambda!261348)))

(declare-fun bs!1210822 () Bool)

(assert (= bs!1210822 (and d!1680436 d!1680428)))

(assert (=> bs!1210822 (= lambda!261358 lambda!261351)))

(declare-fun bs!1210823 () Bool)

(assert (= bs!1210823 (and d!1680436 d!1680430)))

(assert (=> bs!1210823 (= lambda!261358 lambda!261354)))

(declare-fun bs!1210824 () Bool)

(assert (= bs!1210824 (and d!1680436 d!1680432)))

(assert (=> bs!1210824 (= lambda!261358 lambda!261357)))

(assert (=> d!1680436 (= (inv!80248 (h!67024 zl!343)) (forall!14234 (exprs!4684 (h!67024 zl!343)) lambda!261358))))

(declare-fun bs!1210825 () Bool)

(assert (= bs!1210825 d!1680436))

(declare-fun m!6261244 () Bool)

(assert (=> bs!1210825 m!6261244))

(assert (=> b!5211470 d!1680436))

(declare-fun d!1680438 () Bool)

(declare-fun lt!2142320 () Regex!14800)

(assert (=> d!1680438 (validRegex!6536 lt!2142320)))

(assert (=> d!1680438 (= lt!2142320 (generalisedUnion!729 (unfocusZipperList!242 zl!343)))))

(assert (=> d!1680438 (= (unfocusZipper!542 zl!343) lt!2142320)))

(declare-fun bs!1210826 () Bool)

(assert (= bs!1210826 d!1680438))

(declare-fun m!6261246 () Bool)

(assert (=> bs!1210826 m!6261246))

(assert (=> bs!1210826 m!6261050))

(assert (=> bs!1210826 m!6261050))

(assert (=> bs!1210826 m!6261052))

(assert (=> b!5211490 d!1680438))

(declare-fun c!898735 () Bool)

(declare-fun bm!366999 () Bool)

(declare-fun call!367004 () Bool)

(declare-fun c!898736 () Bool)

(assert (=> bm!366999 (= call!367004 (validRegex!6536 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))))))

(declare-fun b!5211698 () Bool)

(declare-fun e!3244506 () Bool)

(declare-fun e!3244504 () Bool)

(assert (=> b!5211698 (= e!3244506 e!3244504)))

(assert (=> b!5211698 (= c!898735 (is-Star!14800 r!7292))))

(declare-fun b!5211699 () Bool)

(declare-fun e!3244501 () Bool)

(declare-fun call!367005 () Bool)

(assert (=> b!5211699 (= e!3244501 call!367005)))

(declare-fun b!5211700 () Bool)

(declare-fun e!3244503 () Bool)

(assert (=> b!5211700 (= e!3244503 e!3244501)))

(declare-fun res!2213626 () Bool)

(assert (=> b!5211700 (=> (not res!2213626) (not e!3244501))))

(declare-fun call!367006 () Bool)

(assert (=> b!5211700 (= res!2213626 call!367006)))

(declare-fun bm!367000 () Bool)

(assert (=> bm!367000 (= call!367006 call!367004)))

(declare-fun b!5211701 () Bool)

(declare-fun e!3244505 () Bool)

(assert (=> b!5211701 (= e!3244504 e!3244505)))

(assert (=> b!5211701 (= c!898736 (is-Union!14800 r!7292))))

(declare-fun b!5211697 () Bool)

(declare-fun e!3244507 () Bool)

(assert (=> b!5211697 (= e!3244504 e!3244507)))

(declare-fun res!2213624 () Bool)

(assert (=> b!5211697 (= res!2213624 (not (nullable!4969 (reg!15129 r!7292))))))

(assert (=> b!5211697 (=> (not res!2213624) (not e!3244507))))

(declare-fun d!1680440 () Bool)

(declare-fun res!2213625 () Bool)

(assert (=> d!1680440 (=> res!2213625 e!3244506)))

(assert (=> d!1680440 (= res!2213625 (is-ElementMatch!14800 r!7292))))

(assert (=> d!1680440 (= (validRegex!6536 r!7292) e!3244506)))

(declare-fun b!5211702 () Bool)

(declare-fun e!3244502 () Bool)

(assert (=> b!5211702 (= e!3244502 call!367005)))

(declare-fun b!5211703 () Bool)

(declare-fun res!2213627 () Bool)

(assert (=> b!5211703 (=> (not res!2213627) (not e!3244502))))

(assert (=> b!5211703 (= res!2213627 call!367006)))

(assert (=> b!5211703 (= e!3244505 e!3244502)))

(declare-fun b!5211704 () Bool)

(declare-fun res!2213628 () Bool)

(assert (=> b!5211704 (=> res!2213628 e!3244503)))

(assert (=> b!5211704 (= res!2213628 (not (is-Concat!23645 r!7292)))))

(assert (=> b!5211704 (= e!3244505 e!3244503)))

(declare-fun b!5211705 () Bool)

(assert (=> b!5211705 (= e!3244507 call!367004)))

(declare-fun bm!367001 () Bool)

(assert (=> bm!367001 (= call!367005 (validRegex!6536 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))))))

(assert (= (and d!1680440 (not res!2213625)) b!5211698))

(assert (= (and b!5211698 c!898735) b!5211697))

(assert (= (and b!5211698 (not c!898735)) b!5211701))

(assert (= (and b!5211697 res!2213624) b!5211705))

(assert (= (and b!5211701 c!898736) b!5211703))

(assert (= (and b!5211701 (not c!898736)) b!5211704))

(assert (= (and b!5211703 res!2213627) b!5211702))

(assert (= (and b!5211704 (not res!2213628)) b!5211700))

(assert (= (and b!5211700 res!2213626) b!5211699))

(assert (= (or b!5211702 b!5211699) bm!367001))

(assert (= (or b!5211703 b!5211700) bm!367000))

(assert (= (or b!5211705 bm!367000) bm!366999))

(declare-fun m!6261248 () Bool)

(assert (=> bm!366999 m!6261248))

(declare-fun m!6261250 () Bool)

(assert (=> b!5211697 m!6261250))

(declare-fun m!6261252 () Bool)

(assert (=> bm!367001 m!6261252))

(assert (=> start!551284 d!1680440))

(declare-fun d!1680442 () Bool)

(assert (=> d!1680442 (= (isEmpty!32488 (t!373863 zl!343)) (is-Nil!60576 (t!373863 zl!343)))))

(assert (=> b!5211480 d!1680442))

(declare-fun d!1680444 () Bool)

(declare-fun dynLambda!23930 (Int Context!8368) (Set Context!8368))

(assert (=> d!1680444 (= (flatMap!527 z!1189 lambda!261332) (dynLambda!23930 lambda!261332 (h!67024 zl!343)))))

(declare-fun lt!2142323 () Unit!152466)

(declare-fun choose!38742 ((Set Context!8368) Context!8368 Int) Unit!152466)

(assert (=> d!1680444 (= lt!2142323 (choose!38742 z!1189 (h!67024 zl!343) lambda!261332))))

(assert (=> d!1680444 (= z!1189 (set.insert (h!67024 zl!343) (as set.empty (Set Context!8368))))))

(assert (=> d!1680444 (= (lemmaFlatMapOnSingletonSet!59 z!1189 (h!67024 zl!343) lambda!261332) lt!2142323)))

(declare-fun b_lambda!201581 () Bool)

(assert (=> (not b_lambda!201581) (not d!1680444)))

(declare-fun bs!1210827 () Bool)

(assert (= bs!1210827 d!1680444))

(assert (=> bs!1210827 m!6261028))

(declare-fun m!6261254 () Bool)

(assert (=> bs!1210827 m!6261254))

(declare-fun m!6261256 () Bool)

(assert (=> bs!1210827 m!6261256))

(declare-fun m!6261258 () Bool)

(assert (=> bs!1210827 m!6261258))

(assert (=> b!5211489 d!1680444))

(declare-fun d!1680446 () Bool)

(declare-fun choose!38743 ((Set Context!8368) Int) (Set Context!8368))

(assert (=> d!1680446 (= (flatMap!527 z!1189 lambda!261332) (choose!38743 z!1189 lambda!261332))))

(declare-fun bs!1210828 () Bool)

(assert (= bs!1210828 d!1680446))

(declare-fun m!6261260 () Bool)

(assert (=> bs!1210828 m!6261260))

(assert (=> b!5211489 d!1680446))

(declare-fun d!1680448 () Bool)

(declare-fun nullableFct!1378 (Regex!14800) Bool)

(assert (=> d!1680448 (= (nullable!4969 (h!67023 (exprs!4684 (h!67024 zl!343)))) (nullableFct!1378 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun bs!1210829 () Bool)

(assert (= bs!1210829 d!1680448))

(declare-fun m!6261262 () Bool)

(assert (=> bs!1210829 m!6261262))

(assert (=> b!5211489 d!1680448))

(declare-fun b!5211716 () Bool)

(declare-fun e!3244514 () (Set Context!8368))

(declare-fun e!3244516 () (Set Context!8368))

(assert (=> b!5211716 (= e!3244514 e!3244516)))

(declare-fun c!898741 () Bool)

(assert (=> b!5211716 (= c!898741 (is-Cons!60575 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))

(declare-fun b!5211717 () Bool)

(declare-fun e!3244515 () Bool)

(assert (=> b!5211717 (= e!3244515 (nullable!4969 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun b!5211718 () Bool)

(declare-fun call!367009 () (Set Context!8368))

(assert (=> b!5211718 (= e!3244514 (set.union call!367009 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (h!67025 s!2326))))))

(declare-fun b!5211719 () Bool)

(assert (=> b!5211719 (= e!3244516 (as set.empty (Set Context!8368)))))

(declare-fun bm!367004 () Bool)

(assert (=> bm!367004 (= call!367009 (derivationStepZipperDown!248 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))) (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (h!67025 s!2326)))))

(declare-fun d!1680450 () Bool)

(declare-fun c!898742 () Bool)

(assert (=> d!1680450 (= c!898742 e!3244515)))

(declare-fun res!2213631 () Bool)

(assert (=> d!1680450 (=> (not res!2213631) (not e!3244515))))

(assert (=> d!1680450 (= res!2213631 (is-Cons!60575 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))

(assert (=> d!1680450 (= (derivationStepZipperUp!172 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))) (h!67025 s!2326)) e!3244514)))

(declare-fun b!5211720 () Bool)

(assert (=> b!5211720 (= e!3244516 call!367009)))

(assert (= (and d!1680450 res!2213631) b!5211717))

(assert (= (and d!1680450 c!898742) b!5211718))

(assert (= (and d!1680450 (not c!898742)) b!5211716))

(assert (= (and b!5211716 c!898741) b!5211720))

(assert (= (and b!5211716 (not c!898741)) b!5211719))

(assert (= (or b!5211718 b!5211720) bm!367004))

(declare-fun m!6261264 () Bool)

(assert (=> b!5211717 m!6261264))

(declare-fun m!6261266 () Bool)

(assert (=> b!5211718 m!6261266))

(declare-fun m!6261268 () Bool)

(assert (=> bm!367004 m!6261268))

(assert (=> b!5211489 d!1680450))

(declare-fun b!5211721 () Bool)

(declare-fun e!3244517 () (Set Context!8368))

(declare-fun e!3244519 () (Set Context!8368))

(assert (=> b!5211721 (= e!3244517 e!3244519)))

(declare-fun c!898743 () Bool)

(assert (=> b!5211721 (= c!898743 (is-Cons!60575 (exprs!4684 lt!2142235)))))

(declare-fun b!5211722 () Bool)

(declare-fun e!3244518 () Bool)

(assert (=> b!5211722 (= e!3244518 (nullable!4969 (h!67023 (exprs!4684 lt!2142235))))))

(declare-fun b!5211723 () Bool)

(declare-fun call!367010 () (Set Context!8368))

(assert (=> b!5211723 (= e!3244517 (set.union call!367010 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 lt!2142235))) (h!67025 s!2326))))))

(declare-fun b!5211724 () Bool)

(assert (=> b!5211724 (= e!3244519 (as set.empty (Set Context!8368)))))

(declare-fun bm!367005 () Bool)

(assert (=> bm!367005 (= call!367010 (derivationStepZipperDown!248 (h!67023 (exprs!4684 lt!2142235)) (Context!8369 (t!373862 (exprs!4684 lt!2142235))) (h!67025 s!2326)))))

(declare-fun d!1680452 () Bool)

(declare-fun c!898744 () Bool)

(assert (=> d!1680452 (= c!898744 e!3244518)))

(declare-fun res!2213632 () Bool)

(assert (=> d!1680452 (=> (not res!2213632) (not e!3244518))))

(assert (=> d!1680452 (= res!2213632 (is-Cons!60575 (exprs!4684 lt!2142235)))))

(assert (=> d!1680452 (= (derivationStepZipperUp!172 lt!2142235 (h!67025 s!2326)) e!3244517)))

(declare-fun b!5211725 () Bool)

(assert (=> b!5211725 (= e!3244519 call!367010)))

(assert (= (and d!1680452 res!2213632) b!5211722))

(assert (= (and d!1680452 c!898744) b!5211723))

(assert (= (and d!1680452 (not c!898744)) b!5211721))

(assert (= (and b!5211721 c!898743) b!5211725))

(assert (= (and b!5211721 (not c!898743)) b!5211724))

(assert (= (or b!5211723 b!5211725) bm!367005))

(declare-fun m!6261270 () Bool)

(assert (=> b!5211722 m!6261270))

(declare-fun m!6261272 () Bool)

(assert (=> b!5211723 m!6261272))

(declare-fun m!6261274 () Bool)

(assert (=> bm!367005 m!6261274))

(assert (=> b!5211489 d!1680452))

(declare-fun b!5211748 () Bool)

(declare-fun e!3244533 () (Set Context!8368))

(declare-fun call!367023 () (Set Context!8368))

(assert (=> b!5211748 (= e!3244533 call!367023)))

(declare-fun bm!367018 () Bool)

(declare-fun call!367027 () (Set Context!8368))

(declare-fun call!367028 () (Set Context!8368))

(assert (=> bm!367018 (= call!367027 call!367028)))

(declare-fun d!1680454 () Bool)

(declare-fun c!898755 () Bool)

(assert (=> d!1680454 (= c!898755 (and (is-ElementMatch!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))) (= (c!898691 (h!67023 (exprs!4684 (h!67024 zl!343)))) (h!67025 s!2326))))))

(declare-fun e!3244536 () (Set Context!8368))

(assert (=> d!1680454 (= (derivationStepZipperDown!248 (h!67023 (exprs!4684 (h!67024 zl!343))) lt!2142235 (h!67025 s!2326)) e!3244536)))

(declare-fun b!5211749 () Bool)

(declare-fun e!3244532 () (Set Context!8368))

(declare-fun call!367026 () (Set Context!8368))

(assert (=> b!5211749 (= e!3244532 (set.union call!367026 call!367027))))

(declare-fun bm!367019 () Bool)

(assert (=> bm!367019 (= call!367023 call!367027)))

(declare-fun bm!367020 () Bool)

(declare-fun call!367025 () List!60699)

(declare-fun call!367024 () List!60699)

(assert (=> bm!367020 (= call!367025 call!367024)))

(declare-fun b!5211750 () Bool)

(declare-fun e!3244535 () (Set Context!8368))

(assert (=> b!5211750 (= e!3244535 call!367023)))

(declare-fun bm!367021 () Bool)

(declare-fun c!898759 () Bool)

(assert (=> bm!367021 (= call!367026 (derivationStepZipperDown!248 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))) (ite c!898759 lt!2142235 (Context!8369 call!367024)) (h!67025 s!2326)))))

(declare-fun bm!367022 () Bool)

(declare-fun c!898757 () Bool)

(declare-fun c!898758 () Bool)

(assert (=> bm!367022 (= call!367028 (derivationStepZipperDown!248 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343))))))) (ite (or c!898759 c!898757) lt!2142235 (Context!8369 call!367025)) (h!67025 s!2326)))))

(declare-fun b!5211751 () Bool)

(declare-fun c!898756 () Bool)

(assert (=> b!5211751 (= c!898756 (is-Star!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> b!5211751 (= e!3244533 e!3244535)))

(declare-fun b!5211752 () Bool)

(assert (=> b!5211752 (= e!3244532 e!3244533)))

(assert (=> b!5211752 (= c!898758 (is-Concat!23645 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5211753 () Bool)

(declare-fun e!3244534 () Bool)

(assert (=> b!5211753 (= e!3244534 (nullable!4969 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun bm!367023 () Bool)

(declare-fun $colon$colon!1276 (List!60699 Regex!14800) List!60699)

(assert (=> bm!367023 (= call!367024 ($colon$colon!1276 (exprs!4684 lt!2142235) (ite (or c!898757 c!898758) (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (h!67023 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun b!5211754 () Bool)

(assert (=> b!5211754 (= c!898757 e!3244534)))

(declare-fun res!2213635 () Bool)

(assert (=> b!5211754 (=> (not res!2213635) (not e!3244534))))

(assert (=> b!5211754 (= res!2213635 (is-Concat!23645 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun e!3244537 () (Set Context!8368))

(assert (=> b!5211754 (= e!3244537 e!3244532)))

(declare-fun b!5211755 () Bool)

(assert (=> b!5211755 (= e!3244536 e!3244537)))

(assert (=> b!5211755 (= c!898759 (is-Union!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5211756 () Bool)

(assert (=> b!5211756 (= e!3244535 (as set.empty (Set Context!8368)))))

(declare-fun b!5211757 () Bool)

(assert (=> b!5211757 (= e!3244537 (set.union call!367028 call!367026))))

(declare-fun b!5211758 () Bool)

(assert (=> b!5211758 (= e!3244536 (set.insert lt!2142235 (as set.empty (Set Context!8368))))))

(assert (= (and d!1680454 c!898755) b!5211758))

(assert (= (and d!1680454 (not c!898755)) b!5211755))

(assert (= (and b!5211755 c!898759) b!5211757))

(assert (= (and b!5211755 (not c!898759)) b!5211754))

(assert (= (and b!5211754 res!2213635) b!5211753))

(assert (= (and b!5211754 c!898757) b!5211749))

(assert (= (and b!5211754 (not c!898757)) b!5211752))

(assert (= (and b!5211752 c!898758) b!5211748))

(assert (= (and b!5211752 (not c!898758)) b!5211751))

(assert (= (and b!5211751 c!898756) b!5211750))

(assert (= (and b!5211751 (not c!898756)) b!5211756))

(assert (= (or b!5211748 b!5211750) bm!367020))

(assert (= (or b!5211748 b!5211750) bm!367019))

(assert (= (or b!5211749 bm!367020) bm!367023))

(assert (= (or b!5211749 bm!367019) bm!367018))

(assert (= (or b!5211757 b!5211749) bm!367021))

(assert (= (or b!5211757 bm!367018) bm!367022))

(declare-fun m!6261276 () Bool)

(assert (=> bm!367021 m!6261276))

(declare-fun m!6261278 () Bool)

(assert (=> bm!367022 m!6261278))

(declare-fun m!6261280 () Bool)

(assert (=> b!5211753 m!6261280))

(declare-fun m!6261282 () Bool)

(assert (=> bm!367023 m!6261282))

(declare-fun m!6261284 () Bool)

(assert (=> b!5211758 m!6261284))

(assert (=> b!5211489 d!1680454))

(declare-fun b!5211759 () Bool)

(declare-fun e!3244538 () (Set Context!8368))

(declare-fun e!3244540 () (Set Context!8368))

(assert (=> b!5211759 (= e!3244538 e!3244540)))

(declare-fun c!898760 () Bool)

(assert (=> b!5211759 (= c!898760 (is-Cons!60575 (exprs!4684 (h!67024 zl!343))))))

(declare-fun b!5211760 () Bool)

(declare-fun e!3244539 () Bool)

(assert (=> b!5211760 (= e!3244539 (nullable!4969 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun call!367029 () (Set Context!8368))

(declare-fun b!5211761 () Bool)

(assert (=> b!5211761 (= e!3244538 (set.union call!367029 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))) (h!67025 s!2326))))))

(declare-fun b!5211762 () Bool)

(assert (=> b!5211762 (= e!3244540 (as set.empty (Set Context!8368)))))

(declare-fun bm!367024 () Bool)

(assert (=> bm!367024 (= call!367029 (derivationStepZipperDown!248 (h!67023 (exprs!4684 (h!67024 zl!343))) (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))) (h!67025 s!2326)))))

(declare-fun d!1680456 () Bool)

(declare-fun c!898761 () Bool)

(assert (=> d!1680456 (= c!898761 e!3244539)))

(declare-fun res!2213636 () Bool)

(assert (=> d!1680456 (=> (not res!2213636) (not e!3244539))))

(assert (=> d!1680456 (= res!2213636 (is-Cons!60575 (exprs!4684 (h!67024 zl!343))))))

(assert (=> d!1680456 (= (derivationStepZipperUp!172 (h!67024 zl!343) (h!67025 s!2326)) e!3244538)))

(declare-fun b!5211763 () Bool)

(assert (=> b!5211763 (= e!3244540 call!367029)))

(assert (= (and d!1680456 res!2213636) b!5211760))

(assert (= (and d!1680456 c!898761) b!5211761))

(assert (= (and d!1680456 (not c!898761)) b!5211759))

(assert (= (and b!5211759 c!898760) b!5211763))

(assert (= (and b!5211759 (not c!898760)) b!5211762))

(assert (= (or b!5211761 b!5211763) bm!367024))

(assert (=> b!5211760 m!6261026))

(declare-fun m!6261286 () Bool)

(assert (=> b!5211761 m!6261286))

(declare-fun m!6261288 () Bool)

(assert (=> bm!367024 m!6261288))

(assert (=> b!5211489 d!1680456))

(declare-fun b!5211764 () Bool)

(declare-fun e!3244542 () (Set Context!8368))

(declare-fun call!367030 () (Set Context!8368))

(assert (=> b!5211764 (= e!3244542 call!367030)))

(declare-fun bm!367025 () Bool)

(declare-fun call!367034 () (Set Context!8368))

(declare-fun call!367035 () (Set Context!8368))

(assert (=> bm!367025 (= call!367034 call!367035)))

(declare-fun d!1680458 () Bool)

(declare-fun c!898762 () Bool)

(assert (=> d!1680458 (= c!898762 (and (is-ElementMatch!14800 (regTwo!30113 (regOne!30112 r!7292))) (= (c!898691 (regTwo!30113 (regOne!30112 r!7292))) (h!67025 s!2326))))))

(declare-fun e!3244545 () (Set Context!8368))

(assert (=> d!1680458 (= (derivationStepZipperDown!248 (regTwo!30113 (regOne!30112 r!7292)) lt!2142235 (h!67025 s!2326)) e!3244545)))

(declare-fun b!5211765 () Bool)

(declare-fun e!3244541 () (Set Context!8368))

(declare-fun call!367033 () (Set Context!8368))

(assert (=> b!5211765 (= e!3244541 (set.union call!367033 call!367034))))

(declare-fun bm!367026 () Bool)

(assert (=> bm!367026 (= call!367030 call!367034)))

(declare-fun bm!367027 () Bool)

(declare-fun call!367032 () List!60699)

(declare-fun call!367031 () List!60699)

(assert (=> bm!367027 (= call!367032 call!367031)))

(declare-fun b!5211766 () Bool)

(declare-fun e!3244544 () (Set Context!8368))

(assert (=> b!5211766 (= e!3244544 call!367030)))

(declare-fun c!898766 () Bool)

(declare-fun bm!367028 () Bool)

(assert (=> bm!367028 (= call!367033 (derivationStepZipperDown!248 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))) (ite c!898766 lt!2142235 (Context!8369 call!367031)) (h!67025 s!2326)))))

(declare-fun c!898765 () Bool)

(declare-fun c!898764 () Bool)

(declare-fun bm!367029 () Bool)

(assert (=> bm!367029 (= call!367035 (derivationStepZipperDown!248 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292)))))) (ite (or c!898766 c!898764) lt!2142235 (Context!8369 call!367032)) (h!67025 s!2326)))))

(declare-fun b!5211767 () Bool)

(declare-fun c!898763 () Bool)

(assert (=> b!5211767 (= c!898763 (is-Star!14800 (regTwo!30113 (regOne!30112 r!7292))))))

(assert (=> b!5211767 (= e!3244542 e!3244544)))

(declare-fun b!5211768 () Bool)

(assert (=> b!5211768 (= e!3244541 e!3244542)))

(assert (=> b!5211768 (= c!898765 (is-Concat!23645 (regTwo!30113 (regOne!30112 r!7292))))))

(declare-fun b!5211769 () Bool)

(declare-fun e!3244543 () Bool)

(assert (=> b!5211769 (= e!3244543 (nullable!4969 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))))))

(declare-fun bm!367030 () Bool)

(assert (=> bm!367030 (= call!367031 ($colon$colon!1276 (exprs!4684 lt!2142235) (ite (or c!898764 c!898765) (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (regTwo!30113 (regOne!30112 r!7292)))))))

(declare-fun b!5211770 () Bool)

(assert (=> b!5211770 (= c!898764 e!3244543)))

(declare-fun res!2213637 () Bool)

(assert (=> b!5211770 (=> (not res!2213637) (not e!3244543))))

(assert (=> b!5211770 (= res!2213637 (is-Concat!23645 (regTwo!30113 (regOne!30112 r!7292))))))

(declare-fun e!3244546 () (Set Context!8368))

(assert (=> b!5211770 (= e!3244546 e!3244541)))

(declare-fun b!5211771 () Bool)

(assert (=> b!5211771 (= e!3244545 e!3244546)))

(assert (=> b!5211771 (= c!898766 (is-Union!14800 (regTwo!30113 (regOne!30112 r!7292))))))

(declare-fun b!5211772 () Bool)

(assert (=> b!5211772 (= e!3244544 (as set.empty (Set Context!8368)))))

(declare-fun b!5211773 () Bool)

(assert (=> b!5211773 (= e!3244546 (set.union call!367035 call!367033))))

(declare-fun b!5211774 () Bool)

(assert (=> b!5211774 (= e!3244545 (set.insert lt!2142235 (as set.empty (Set Context!8368))))))

(assert (= (and d!1680458 c!898762) b!5211774))

(assert (= (and d!1680458 (not c!898762)) b!5211771))

(assert (= (and b!5211771 c!898766) b!5211773))

(assert (= (and b!5211771 (not c!898766)) b!5211770))

(assert (= (and b!5211770 res!2213637) b!5211769))

(assert (= (and b!5211770 c!898764) b!5211765))

(assert (= (and b!5211770 (not c!898764)) b!5211768))

(assert (= (and b!5211768 c!898765) b!5211764))

(assert (= (and b!5211768 (not c!898765)) b!5211767))

(assert (= (and b!5211767 c!898763) b!5211766))

(assert (= (and b!5211767 (not c!898763)) b!5211772))

(assert (= (or b!5211764 b!5211766) bm!367027))

(assert (= (or b!5211764 b!5211766) bm!367026))

(assert (= (or b!5211765 bm!367027) bm!367030))

(assert (= (or b!5211765 bm!367026) bm!367025))

(assert (= (or b!5211773 b!5211765) bm!367028))

(assert (= (or b!5211773 bm!367025) bm!367029))

(declare-fun m!6261290 () Bool)

(assert (=> bm!367028 m!6261290))

(declare-fun m!6261292 () Bool)

(assert (=> bm!367029 m!6261292))

(declare-fun m!6261294 () Bool)

(assert (=> b!5211769 m!6261294))

(declare-fun m!6261296 () Bool)

(assert (=> bm!367030 m!6261296))

(assert (=> b!5211774 m!6261284))

(assert (=> b!5211479 d!1680458))

(declare-fun b!5211775 () Bool)

(declare-fun e!3244548 () (Set Context!8368))

(declare-fun call!367036 () (Set Context!8368))

(assert (=> b!5211775 (= e!3244548 call!367036)))

(declare-fun bm!367031 () Bool)

(declare-fun call!367040 () (Set Context!8368))

(declare-fun call!367041 () (Set Context!8368))

(assert (=> bm!367031 (= call!367040 call!367041)))

(declare-fun d!1680460 () Bool)

(declare-fun c!898767 () Bool)

(assert (=> d!1680460 (= c!898767 (and (is-ElementMatch!14800 (regOne!30113 (regOne!30112 r!7292))) (= (c!898691 (regOne!30113 (regOne!30112 r!7292))) (h!67025 s!2326))))))

(declare-fun e!3244551 () (Set Context!8368))

(assert (=> d!1680460 (= (derivationStepZipperDown!248 (regOne!30113 (regOne!30112 r!7292)) lt!2142235 (h!67025 s!2326)) e!3244551)))

(declare-fun b!5211776 () Bool)

(declare-fun e!3244547 () (Set Context!8368))

(declare-fun call!367039 () (Set Context!8368))

(assert (=> b!5211776 (= e!3244547 (set.union call!367039 call!367040))))

(declare-fun bm!367032 () Bool)

(assert (=> bm!367032 (= call!367036 call!367040)))

(declare-fun bm!367033 () Bool)

(declare-fun call!367038 () List!60699)

(declare-fun call!367037 () List!60699)

(assert (=> bm!367033 (= call!367038 call!367037)))

(declare-fun b!5211777 () Bool)

(declare-fun e!3244550 () (Set Context!8368))

(assert (=> b!5211777 (= e!3244550 call!367036)))

(declare-fun c!898771 () Bool)

(declare-fun bm!367034 () Bool)

(assert (=> bm!367034 (= call!367039 (derivationStepZipperDown!248 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))) (ite c!898771 lt!2142235 (Context!8369 call!367037)) (h!67025 s!2326)))))

(declare-fun c!898769 () Bool)

(declare-fun bm!367035 () Bool)

(declare-fun c!898770 () Bool)

(assert (=> bm!367035 (= call!367041 (derivationStepZipperDown!248 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292)))))) (ite (or c!898771 c!898769) lt!2142235 (Context!8369 call!367038)) (h!67025 s!2326)))))

(declare-fun b!5211778 () Bool)

(declare-fun c!898768 () Bool)

(assert (=> b!5211778 (= c!898768 (is-Star!14800 (regOne!30113 (regOne!30112 r!7292))))))

(assert (=> b!5211778 (= e!3244548 e!3244550)))

(declare-fun b!5211779 () Bool)

(assert (=> b!5211779 (= e!3244547 e!3244548)))

(assert (=> b!5211779 (= c!898770 (is-Concat!23645 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun b!5211780 () Bool)

(declare-fun e!3244549 () Bool)

(assert (=> b!5211780 (= e!3244549 (nullable!4969 (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))

(declare-fun bm!367036 () Bool)

(assert (=> bm!367036 (= call!367037 ($colon$colon!1276 (exprs!4684 lt!2142235) (ite (or c!898769 c!898770) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (regOne!30113 (regOne!30112 r!7292)))))))

(declare-fun b!5211781 () Bool)

(assert (=> b!5211781 (= c!898769 e!3244549)))

(declare-fun res!2213638 () Bool)

(assert (=> b!5211781 (=> (not res!2213638) (not e!3244549))))

(assert (=> b!5211781 (= res!2213638 (is-Concat!23645 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun e!3244552 () (Set Context!8368))

(assert (=> b!5211781 (= e!3244552 e!3244547)))

(declare-fun b!5211782 () Bool)

(assert (=> b!5211782 (= e!3244551 e!3244552)))

(assert (=> b!5211782 (= c!898771 (is-Union!14800 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun b!5211783 () Bool)

(assert (=> b!5211783 (= e!3244550 (as set.empty (Set Context!8368)))))

(declare-fun b!5211784 () Bool)

(assert (=> b!5211784 (= e!3244552 (set.union call!367041 call!367039))))

(declare-fun b!5211785 () Bool)

(assert (=> b!5211785 (= e!3244551 (set.insert lt!2142235 (as set.empty (Set Context!8368))))))

(assert (= (and d!1680460 c!898767) b!5211785))

(assert (= (and d!1680460 (not c!898767)) b!5211782))

(assert (= (and b!5211782 c!898771) b!5211784))

(assert (= (and b!5211782 (not c!898771)) b!5211781))

(assert (= (and b!5211781 res!2213638) b!5211780))

(assert (= (and b!5211781 c!898769) b!5211776))

(assert (= (and b!5211781 (not c!898769)) b!5211779))

(assert (= (and b!5211779 c!898770) b!5211775))

(assert (= (and b!5211779 (not c!898770)) b!5211778))

(assert (= (and b!5211778 c!898768) b!5211777))

(assert (= (and b!5211778 (not c!898768)) b!5211783))

(assert (= (or b!5211775 b!5211777) bm!367033))

(assert (= (or b!5211775 b!5211777) bm!367032))

(assert (= (or b!5211776 bm!367033) bm!367036))

(assert (= (or b!5211776 bm!367032) bm!367031))

(assert (= (or b!5211784 b!5211776) bm!367034))

(assert (= (or b!5211784 bm!367031) bm!367035))

(declare-fun m!6261298 () Bool)

(assert (=> bm!367034 m!6261298))

(declare-fun m!6261300 () Bool)

(assert (=> bm!367035 m!6261300))

(declare-fun m!6261302 () Bool)

(assert (=> b!5211780 m!6261302))

(declare-fun m!6261304 () Bool)

(assert (=> bm!367036 m!6261304))

(assert (=> b!5211785 m!6261284))

(assert (=> b!5211479 d!1680460))

(declare-fun d!1680462 () Bool)

(assert (=> d!1680462 (= (nullable!4969 (regOne!30113 (regOne!30112 r!7292))) (nullableFct!1378 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun bs!1210830 () Bool)

(assert (= bs!1210830 d!1680462))

(declare-fun m!6261306 () Bool)

(assert (=> bs!1210830 m!6261306))

(assert (=> b!5211478 d!1680462))

(declare-fun d!1680464 () Bool)

(assert (=> d!1680464 (= (flatMap!527 lt!2142239 lambda!261332) (choose!38743 lt!2142239 lambda!261332))))

(declare-fun bs!1210831 () Bool)

(assert (= bs!1210831 d!1680464))

(declare-fun m!6261308 () Bool)

(assert (=> bs!1210831 m!6261308))

(assert (=> b!5211478 d!1680464))

(declare-fun b!5211786 () Bool)

(declare-fun e!3244553 () (Set Context!8368))

(declare-fun e!3244555 () (Set Context!8368))

(assert (=> b!5211786 (= e!3244553 e!3244555)))

(declare-fun c!898772 () Bool)

(assert (=> b!5211786 (= c!898772 (is-Cons!60575 (exprs!4684 lt!2142238)))))

(declare-fun b!5211787 () Bool)

(declare-fun e!3244554 () Bool)

(assert (=> b!5211787 (= e!3244554 (nullable!4969 (h!67023 (exprs!4684 lt!2142238))))))

(declare-fun call!367042 () (Set Context!8368))

(declare-fun b!5211788 () Bool)

(assert (=> b!5211788 (= e!3244553 (set.union call!367042 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 lt!2142238))) (h!67025 s!2326))))))

(declare-fun b!5211789 () Bool)

(assert (=> b!5211789 (= e!3244555 (as set.empty (Set Context!8368)))))

(declare-fun bm!367037 () Bool)

(assert (=> bm!367037 (= call!367042 (derivationStepZipperDown!248 (h!67023 (exprs!4684 lt!2142238)) (Context!8369 (t!373862 (exprs!4684 lt!2142238))) (h!67025 s!2326)))))

(declare-fun d!1680466 () Bool)

(declare-fun c!898773 () Bool)

(assert (=> d!1680466 (= c!898773 e!3244554)))

(declare-fun res!2213639 () Bool)

(assert (=> d!1680466 (=> (not res!2213639) (not e!3244554))))

(assert (=> d!1680466 (= res!2213639 (is-Cons!60575 (exprs!4684 lt!2142238)))))

(assert (=> d!1680466 (= (derivationStepZipperUp!172 lt!2142238 (h!67025 s!2326)) e!3244553)))

(declare-fun b!5211790 () Bool)

(assert (=> b!5211790 (= e!3244555 call!367042)))

(assert (= (and d!1680466 res!2213639) b!5211787))

(assert (= (and d!1680466 c!898773) b!5211788))

(assert (= (and d!1680466 (not c!898773)) b!5211786))

(assert (= (and b!5211786 c!898772) b!5211790))

(assert (= (and b!5211786 (not c!898772)) b!5211789))

(assert (= (or b!5211788 b!5211790) bm!367037))

(declare-fun m!6261310 () Bool)

(assert (=> b!5211787 m!6261310))

(declare-fun m!6261312 () Bool)

(assert (=> b!5211788 m!6261312))

(declare-fun m!6261314 () Bool)

(assert (=> bm!367037 m!6261314))

(assert (=> b!5211478 d!1680466))

(declare-fun d!1680468 () Bool)

(assert (=> d!1680468 (= (flatMap!527 lt!2142239 lambda!261332) (dynLambda!23930 lambda!261332 lt!2142238))))

(declare-fun lt!2142324 () Unit!152466)

(assert (=> d!1680468 (= lt!2142324 (choose!38742 lt!2142239 lt!2142238 lambda!261332))))

(assert (=> d!1680468 (= lt!2142239 (set.insert lt!2142238 (as set.empty (Set Context!8368))))))

(assert (=> d!1680468 (= (lemmaFlatMapOnSingletonSet!59 lt!2142239 lt!2142238 lambda!261332) lt!2142324)))

(declare-fun b_lambda!201583 () Bool)

(assert (=> (not b_lambda!201583) (not d!1680468)))

(declare-fun bs!1210832 () Bool)

(assert (= bs!1210832 d!1680468))

(assert (=> bs!1210832 m!6261092))

(declare-fun m!6261316 () Bool)

(assert (=> bs!1210832 m!6261316))

(declare-fun m!6261318 () Bool)

(assert (=> bs!1210832 m!6261318))

(assert (=> bs!1210832 m!6261094))

(assert (=> b!5211478 d!1680468))

(declare-fun b!5211809 () Bool)

(declare-fun e!3244567 () Bool)

(declare-fun lt!2142331 () Option!14911)

(assert (=> b!5211809 (= e!3244567 (not (isDefined!11614 lt!2142331)))))

(declare-fun b!5211810 () Bool)

(declare-fun e!3244566 () Option!14911)

(assert (=> b!5211810 (= e!3244566 (Some!14910 (tuple2!63999 Nil!60577 s!2326)))))

(declare-fun b!5211811 () Bool)

(declare-fun res!2213654 () Bool)

(declare-fun e!3244568 () Bool)

(assert (=> b!5211811 (=> (not res!2213654) (not e!3244568))))

(declare-fun get!20812 (Option!14911) tuple2!63998)

(assert (=> b!5211811 (= res!2213654 (matchR!6985 (regOne!30112 r!7292) (_1!35302 (get!20812 lt!2142331))))))

(declare-fun b!5211812 () Bool)

(declare-fun e!3244570 () Option!14911)

(assert (=> b!5211812 (= e!3244566 e!3244570)))

(declare-fun c!898779 () Bool)

(assert (=> b!5211812 (= c!898779 (is-Nil!60577 s!2326))))

(declare-fun b!5211814 () Bool)

(declare-fun res!2213650 () Bool)

(assert (=> b!5211814 (=> (not res!2213650) (not e!3244568))))

(assert (=> b!5211814 (= res!2213650 (matchR!6985 (regTwo!30112 r!7292) (_2!35302 (get!20812 lt!2142331))))))

(declare-fun b!5211815 () Bool)

(declare-fun ++!13206 (List!60701 List!60701) List!60701)

(assert (=> b!5211815 (= e!3244568 (= (++!13206 (_1!35302 (get!20812 lt!2142331)) (_2!35302 (get!20812 lt!2142331))) s!2326))))

(declare-fun b!5211816 () Bool)

(assert (=> b!5211816 (= e!3244570 None!14910)))

(declare-fun b!5211817 () Bool)

(declare-fun e!3244569 () Bool)

(assert (=> b!5211817 (= e!3244569 (matchR!6985 (regTwo!30112 r!7292) s!2326))))

(declare-fun d!1680470 () Bool)

(assert (=> d!1680470 e!3244567))

(declare-fun res!2213651 () Bool)

(assert (=> d!1680470 (=> res!2213651 e!3244567)))

(assert (=> d!1680470 (= res!2213651 e!3244568)))

(declare-fun res!2213652 () Bool)

(assert (=> d!1680470 (=> (not res!2213652) (not e!3244568))))

(assert (=> d!1680470 (= res!2213652 (isDefined!11614 lt!2142331))))

(assert (=> d!1680470 (= lt!2142331 e!3244566)))

(declare-fun c!898778 () Bool)

(assert (=> d!1680470 (= c!898778 e!3244569)))

(declare-fun res!2213653 () Bool)

(assert (=> d!1680470 (=> (not res!2213653) (not e!3244569))))

(assert (=> d!1680470 (= res!2213653 (matchR!6985 (regOne!30112 r!7292) Nil!60577))))

(assert (=> d!1680470 (validRegex!6536 (regOne!30112 r!7292))))

(assert (=> d!1680470 (= (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326) lt!2142331)))

(declare-fun b!5211813 () Bool)

(declare-fun lt!2142333 () Unit!152466)

(declare-fun lt!2142332 () Unit!152466)

(assert (=> b!5211813 (= lt!2142333 lt!2142332)))

(assert (=> b!5211813 (= (++!13206 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (t!373864 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1621 (List!60701 C!29870 List!60701 List!60701) Unit!152466)

(assert (=> b!5211813 (= lt!2142332 (lemmaMoveElementToOtherListKeepsConcatEq!1621 Nil!60577 (h!67025 s!2326) (t!373864 s!2326) s!2326))))

(assert (=> b!5211813 (= e!3244570 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (t!373864 s!2326) s!2326))))

(assert (= (and d!1680470 res!2213653) b!5211817))

(assert (= (and d!1680470 c!898778) b!5211810))

(assert (= (and d!1680470 (not c!898778)) b!5211812))

(assert (= (and b!5211812 c!898779) b!5211816))

(assert (= (and b!5211812 (not c!898779)) b!5211813))

(assert (= (and d!1680470 res!2213652) b!5211811))

(assert (= (and b!5211811 res!2213654) b!5211814))

(assert (= (and b!5211814 res!2213650) b!5211815))

(assert (= (and d!1680470 (not res!2213651)) b!5211809))

(declare-fun m!6261320 () Bool)

(assert (=> b!5211814 m!6261320))

(declare-fun m!6261322 () Bool)

(assert (=> b!5211814 m!6261322))

(assert (=> b!5211815 m!6261320))

(declare-fun m!6261324 () Bool)

(assert (=> b!5211815 m!6261324))

(declare-fun m!6261326 () Bool)

(assert (=> d!1680470 m!6261326))

(declare-fun m!6261328 () Bool)

(assert (=> d!1680470 m!6261328))

(declare-fun m!6261330 () Bool)

(assert (=> d!1680470 m!6261330))

(assert (=> b!5211811 m!6261320))

(declare-fun m!6261332 () Bool)

(assert (=> b!5211811 m!6261332))

(declare-fun m!6261334 () Bool)

(assert (=> b!5211813 m!6261334))

(assert (=> b!5211813 m!6261334))

(declare-fun m!6261336 () Bool)

(assert (=> b!5211813 m!6261336))

(declare-fun m!6261338 () Bool)

(assert (=> b!5211813 m!6261338))

(assert (=> b!5211813 m!6261334))

(declare-fun m!6261340 () Bool)

(assert (=> b!5211813 m!6261340))

(declare-fun m!6261342 () Bool)

(assert (=> b!5211817 m!6261342))

(assert (=> b!5211809 m!6261326))

(assert (=> b!5211487 d!1680470))

(declare-fun d!1680472 () Bool)

(declare-fun choose!38744 (Int) Bool)

(assert (=> d!1680472 (= (Exists!1981 lambda!261330) (choose!38744 lambda!261330))))

(declare-fun bs!1210833 () Bool)

(assert (= bs!1210833 d!1680472))

(declare-fun m!6261344 () Bool)

(assert (=> bs!1210833 m!6261344))

(assert (=> b!5211487 d!1680472))

(declare-fun d!1680474 () Bool)

(assert (=> d!1680474 (= (Exists!1981 lambda!261331) (choose!38744 lambda!261331))))

(declare-fun bs!1210834 () Bool)

(assert (= bs!1210834 d!1680474))

(declare-fun m!6261346 () Bool)

(assert (=> bs!1210834 m!6261346))

(assert (=> b!5211487 d!1680474))

(declare-fun bs!1210835 () Bool)

(declare-fun d!1680476 () Bool)

(assert (= bs!1210835 (and d!1680476 b!5211487)))

(declare-fun lambda!261361 () Int)

(assert (=> bs!1210835 (= lambda!261361 lambda!261330)))

(assert (=> bs!1210835 (not (= lambda!261361 lambda!261331))))

(assert (=> d!1680476 true))

(assert (=> d!1680476 true))

(assert (=> d!1680476 true))

(assert (=> d!1680476 (= (isDefined!11614 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326)) (Exists!1981 lambda!261361))))

(declare-fun lt!2142336 () Unit!152466)

(declare-fun choose!38745 (Regex!14800 Regex!14800 List!60701) Unit!152466)

(assert (=> d!1680476 (= lt!2142336 (choose!38745 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326))))

(assert (=> d!1680476 (validRegex!6536 (regOne!30112 r!7292))))

(assert (=> d!1680476 (= (lemmaFindConcatSeparationEquivalentToExists!1089 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326) lt!2142336)))

(declare-fun bs!1210836 () Bool)

(assert (= bs!1210836 d!1680476))

(declare-fun m!6261348 () Bool)

(assert (=> bs!1210836 m!6261348))

(assert (=> bs!1210836 m!6261078))

(assert (=> bs!1210836 m!6261080))

(declare-fun m!6261350 () Bool)

(assert (=> bs!1210836 m!6261350))

(assert (=> bs!1210836 m!6261078))

(assert (=> bs!1210836 m!6261330))

(assert (=> b!5211487 d!1680476))

(declare-fun bs!1210837 () Bool)

(declare-fun d!1680478 () Bool)

(assert (= bs!1210837 (and d!1680478 b!5211487)))

(declare-fun lambda!261366 () Int)

(assert (=> bs!1210837 (= lambda!261366 lambda!261330)))

(assert (=> bs!1210837 (not (= lambda!261366 lambda!261331))))

(declare-fun bs!1210838 () Bool)

(assert (= bs!1210838 (and d!1680478 d!1680476)))

(assert (=> bs!1210838 (= lambda!261366 lambda!261361)))

(assert (=> d!1680478 true))

(assert (=> d!1680478 true))

(assert (=> d!1680478 true))

(declare-fun lambda!261367 () Int)

(assert (=> bs!1210837 (not (= lambda!261367 lambda!261330))))

(assert (=> bs!1210837 (= lambda!261367 lambda!261331)))

(assert (=> bs!1210838 (not (= lambda!261367 lambda!261361))))

(declare-fun bs!1210839 () Bool)

(assert (= bs!1210839 d!1680478))

(assert (=> bs!1210839 (not (= lambda!261367 lambda!261366))))

(assert (=> d!1680478 true))

(assert (=> d!1680478 true))

(assert (=> d!1680478 true))

(assert (=> d!1680478 (= (Exists!1981 lambda!261366) (Exists!1981 lambda!261367))))

(declare-fun lt!2142339 () Unit!152466)

(declare-fun choose!38746 (Regex!14800 Regex!14800 List!60701) Unit!152466)

(assert (=> d!1680478 (= lt!2142339 (choose!38746 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326))))

(assert (=> d!1680478 (validRegex!6536 (regOne!30112 r!7292))))

(assert (=> d!1680478 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!635 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326) lt!2142339)))

(declare-fun m!6261352 () Bool)

(assert (=> bs!1210839 m!6261352))

(declare-fun m!6261354 () Bool)

(assert (=> bs!1210839 m!6261354))

(declare-fun m!6261356 () Bool)

(assert (=> bs!1210839 m!6261356))

(assert (=> bs!1210839 m!6261330))

(assert (=> b!5211487 d!1680478))

(declare-fun d!1680480 () Bool)

(declare-fun isEmpty!32492 (Option!14911) Bool)

(assert (=> d!1680480 (= (isDefined!11614 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326)) (not (isEmpty!32492 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326))))))

(declare-fun bs!1210840 () Bool)

(assert (= bs!1210840 d!1680480))

(assert (=> bs!1210840 m!6261078))

(declare-fun m!6261358 () Bool)

(assert (=> bs!1210840 m!6261358))

(assert (=> b!5211487 d!1680480))

(declare-fun d!1680482 () Bool)

(assert (=> d!1680482 (= (isEmpty!32487 (t!373862 (exprs!4684 (h!67024 zl!343)))) (is-Nil!60575 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> b!5211477 d!1680482))

(declare-fun d!1680484 () Bool)

(declare-fun c!898780 () Bool)

(assert (=> d!1680484 (= c!898780 (isEmpty!32491 (t!373864 s!2326)))))

(declare-fun e!3244577 () Bool)

(assert (=> d!1680484 (= (matchZipper!1044 lt!2142236 (t!373864 s!2326)) e!3244577)))

(declare-fun b!5211830 () Bool)

(assert (=> b!5211830 (= e!3244577 (nullableZipper!1226 lt!2142236))))

(declare-fun b!5211831 () Bool)

(assert (=> b!5211831 (= e!3244577 (matchZipper!1044 (derivationStepZipper!1070 lt!2142236 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))))))

(assert (= (and d!1680484 c!898780) b!5211830))

(assert (= (and d!1680484 (not c!898780)) b!5211831))

(assert (=> d!1680484 m!6261232))

(declare-fun m!6261360 () Bool)

(assert (=> b!5211830 m!6261360))

(assert (=> b!5211831 m!6261236))

(assert (=> b!5211831 m!6261236))

(declare-fun m!6261362 () Bool)

(assert (=> b!5211831 m!6261362))

(assert (=> b!5211831 m!6261240))

(assert (=> b!5211831 m!6261362))

(assert (=> b!5211831 m!6261240))

(declare-fun m!6261364 () Bool)

(assert (=> b!5211831 m!6261364))

(assert (=> b!5211486 d!1680484))

(declare-fun c!898781 () Bool)

(declare-fun c!898782 () Bool)

(declare-fun bm!367038 () Bool)

(declare-fun call!367043 () Bool)

(assert (=> bm!367038 (= call!367043 (validRegex!6536 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))

(declare-fun b!5211833 () Bool)

(declare-fun e!3244583 () Bool)

(declare-fun e!3244581 () Bool)

(assert (=> b!5211833 (= e!3244583 e!3244581)))

(assert (=> b!5211833 (= c!898781 (is-Star!14800 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun b!5211834 () Bool)

(declare-fun e!3244578 () Bool)

(declare-fun call!367044 () Bool)

(assert (=> b!5211834 (= e!3244578 call!367044)))

(declare-fun b!5211835 () Bool)

(declare-fun e!3244580 () Bool)

(assert (=> b!5211835 (= e!3244580 e!3244578)))

(declare-fun res!2213669 () Bool)

(assert (=> b!5211835 (=> (not res!2213669) (not e!3244578))))

(declare-fun call!367045 () Bool)

(assert (=> b!5211835 (= res!2213669 call!367045)))

(declare-fun bm!367039 () Bool)

(assert (=> bm!367039 (= call!367045 call!367043)))

(declare-fun b!5211836 () Bool)

(declare-fun e!3244582 () Bool)

(assert (=> b!5211836 (= e!3244581 e!3244582)))

(assert (=> b!5211836 (= c!898782 (is-Union!14800 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun b!5211832 () Bool)

(declare-fun e!3244584 () Bool)

(assert (=> b!5211832 (= e!3244581 e!3244584)))

(declare-fun res!2213667 () Bool)

(assert (=> b!5211832 (= res!2213667 (not (nullable!4969 (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))))

(assert (=> b!5211832 (=> (not res!2213667) (not e!3244584))))

(declare-fun d!1680486 () Bool)

(declare-fun res!2213668 () Bool)

(assert (=> d!1680486 (=> res!2213668 e!3244583)))

(assert (=> d!1680486 (= res!2213668 (is-ElementMatch!14800 (regOne!30113 (regOne!30112 r!7292))))))

(assert (=> d!1680486 (= (validRegex!6536 (regOne!30113 (regOne!30112 r!7292))) e!3244583)))

(declare-fun b!5211837 () Bool)

(declare-fun e!3244579 () Bool)

(assert (=> b!5211837 (= e!3244579 call!367044)))

(declare-fun b!5211838 () Bool)

(declare-fun res!2213670 () Bool)

(assert (=> b!5211838 (=> (not res!2213670) (not e!3244579))))

(assert (=> b!5211838 (= res!2213670 call!367045)))

(assert (=> b!5211838 (= e!3244582 e!3244579)))

(declare-fun b!5211839 () Bool)

(declare-fun res!2213671 () Bool)

(assert (=> b!5211839 (=> res!2213671 e!3244580)))

(assert (=> b!5211839 (= res!2213671 (not (is-Concat!23645 (regOne!30113 (regOne!30112 r!7292)))))))

(assert (=> b!5211839 (= e!3244582 e!3244580)))

(declare-fun b!5211840 () Bool)

(assert (=> b!5211840 (= e!3244584 call!367043)))

(declare-fun bm!367040 () Bool)

(assert (=> bm!367040 (= call!367044 (validRegex!6536 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(assert (= (and d!1680486 (not res!2213668)) b!5211833))

(assert (= (and b!5211833 c!898781) b!5211832))

(assert (= (and b!5211833 (not c!898781)) b!5211836))

(assert (= (and b!5211832 res!2213667) b!5211840))

(assert (= (and b!5211836 c!898782) b!5211838))

(assert (= (and b!5211836 (not c!898782)) b!5211839))

(assert (= (and b!5211838 res!2213670) b!5211837))

(assert (= (and b!5211839 (not res!2213671)) b!5211835))

(assert (= (and b!5211835 res!2213669) b!5211834))

(assert (= (or b!5211837 b!5211834) bm!367040))

(assert (= (or b!5211838 b!5211835) bm!367039))

(assert (= (or b!5211840 bm!367039) bm!367038))

(declare-fun m!6261366 () Bool)

(assert (=> bm!367038 m!6261366))

(declare-fun m!6261368 () Bool)

(assert (=> b!5211832 m!6261368))

(declare-fun m!6261370 () Bool)

(assert (=> bm!367040 m!6261370))

(assert (=> b!5211495 d!1680486))

(declare-fun d!1680488 () Bool)

(declare-fun c!898783 () Bool)

(assert (=> d!1680488 (= c!898783 (isEmpty!32491 (t!373864 s!2326)))))

(declare-fun e!3244585 () Bool)

(assert (=> d!1680488 (= (matchZipper!1044 lt!2142225 (t!373864 s!2326)) e!3244585)))

(declare-fun b!5211841 () Bool)

(assert (=> b!5211841 (= e!3244585 (nullableZipper!1226 lt!2142225))))

(declare-fun b!5211842 () Bool)

(assert (=> b!5211842 (= e!3244585 (matchZipper!1044 (derivationStepZipper!1070 lt!2142225 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))))))

(assert (= (and d!1680488 c!898783) b!5211841))

(assert (= (and d!1680488 (not c!898783)) b!5211842))

(assert (=> d!1680488 m!6261232))

(declare-fun m!6261372 () Bool)

(assert (=> b!5211841 m!6261372))

(assert (=> b!5211842 m!6261236))

(assert (=> b!5211842 m!6261236))

(declare-fun m!6261374 () Bool)

(assert (=> b!5211842 m!6261374))

(assert (=> b!5211842 m!6261240))

(assert (=> b!5211842 m!6261374))

(assert (=> b!5211842 m!6261240))

(declare-fun m!6261376 () Bool)

(assert (=> b!5211842 m!6261376))

(assert (=> b!5211485 d!1680488))

(declare-fun d!1680490 () Bool)

(declare-fun c!898784 () Bool)

(assert (=> d!1680490 (= c!898784 (isEmpty!32491 (t!373864 s!2326)))))

(declare-fun e!3244586 () Bool)

(assert (=> d!1680490 (= (matchZipper!1044 lt!2142237 (t!373864 s!2326)) e!3244586)))

(declare-fun b!5211843 () Bool)

(assert (=> b!5211843 (= e!3244586 (nullableZipper!1226 lt!2142237))))

(declare-fun b!5211844 () Bool)

(assert (=> b!5211844 (= e!3244586 (matchZipper!1044 (derivationStepZipper!1070 lt!2142237 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))))))

(assert (= (and d!1680490 c!898784) b!5211843))

(assert (= (and d!1680490 (not c!898784)) b!5211844))

(assert (=> d!1680490 m!6261232))

(declare-fun m!6261378 () Bool)

(assert (=> b!5211843 m!6261378))

(assert (=> b!5211844 m!6261236))

(assert (=> b!5211844 m!6261236))

(declare-fun m!6261380 () Bool)

(assert (=> b!5211844 m!6261380))

(assert (=> b!5211844 m!6261240))

(assert (=> b!5211844 m!6261380))

(assert (=> b!5211844 m!6261240))

(declare-fun m!6261382 () Bool)

(assert (=> b!5211844 m!6261382))

(assert (=> b!5211485 d!1680490))

(declare-fun d!1680492 () Bool)

(declare-fun c!898785 () Bool)

(assert (=> d!1680492 (= c!898785 (isEmpty!32491 (t!373864 s!2326)))))

(declare-fun e!3244587 () Bool)

(assert (=> d!1680492 (= (matchZipper!1044 lt!2142241 (t!373864 s!2326)) e!3244587)))

(declare-fun b!5211845 () Bool)

(assert (=> b!5211845 (= e!3244587 (nullableZipper!1226 lt!2142241))))

(declare-fun b!5211846 () Bool)

(assert (=> b!5211846 (= e!3244587 (matchZipper!1044 (derivationStepZipper!1070 lt!2142241 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))))))

(assert (= (and d!1680492 c!898785) b!5211845))

(assert (= (and d!1680492 (not c!898785)) b!5211846))

(assert (=> d!1680492 m!6261232))

(declare-fun m!6261384 () Bool)

(assert (=> b!5211845 m!6261384))

(assert (=> b!5211846 m!6261236))

(assert (=> b!5211846 m!6261236))

(declare-fun m!6261386 () Bool)

(assert (=> b!5211846 m!6261386))

(assert (=> b!5211846 m!6261240))

(assert (=> b!5211846 m!6261386))

(assert (=> b!5211846 m!6261240))

(declare-fun m!6261388 () Bool)

(assert (=> b!5211846 m!6261388))

(assert (=> b!5211485 d!1680492))

(declare-fun d!1680494 () Bool)

(declare-fun e!3244590 () Bool)

(assert (=> d!1680494 (= (matchZipper!1044 (set.union lt!2142241 lt!2142236) (t!373864 s!2326)) e!3244590)))

(declare-fun res!2213674 () Bool)

(assert (=> d!1680494 (=> res!2213674 e!3244590)))

(assert (=> d!1680494 (= res!2213674 (matchZipper!1044 lt!2142241 (t!373864 s!2326)))))

(declare-fun lt!2142342 () Unit!152466)

(declare-fun choose!38747 ((Set Context!8368) (Set Context!8368) List!60701) Unit!152466)

(assert (=> d!1680494 (= lt!2142342 (choose!38747 lt!2142241 lt!2142236 (t!373864 s!2326)))))

(assert (=> d!1680494 (= (lemmaZipperConcatMatchesSameAsBothZippers!37 lt!2142241 lt!2142236 (t!373864 s!2326)) lt!2142342)))

(declare-fun b!5211849 () Bool)

(assert (=> b!5211849 (= e!3244590 (matchZipper!1044 lt!2142236 (t!373864 s!2326)))))

(assert (= (and d!1680494 (not res!2213674)) b!5211849))

(declare-fun m!6261390 () Bool)

(assert (=> d!1680494 m!6261390))

(assert (=> d!1680494 m!6261070))

(declare-fun m!6261392 () Bool)

(assert (=> d!1680494 m!6261392))

(assert (=> b!5211849 m!6261014))

(assert (=> b!5211485 d!1680494))

(declare-fun bs!1210841 () Bool)

(declare-fun b!5211886 () Bool)

(assert (= bs!1210841 (and b!5211886 d!1680478)))

(declare-fun lambda!261372 () Int)

(assert (=> bs!1210841 (not (= lambda!261372 lambda!261367))))

(declare-fun bs!1210842 () Bool)

(assert (= bs!1210842 (and b!5211886 b!5211487)))

(assert (=> bs!1210842 (not (= lambda!261372 lambda!261330))))

(assert (=> bs!1210842 (not (= lambda!261372 lambda!261331))))

(assert (=> bs!1210841 (not (= lambda!261372 lambda!261366))))

(declare-fun bs!1210843 () Bool)

(assert (= bs!1210843 (and b!5211886 d!1680476)))

(assert (=> bs!1210843 (not (= lambda!261372 lambda!261361))))

(assert (=> b!5211886 true))

(assert (=> b!5211886 true))

(declare-fun bs!1210844 () Bool)

(declare-fun b!5211884 () Bool)

(assert (= bs!1210844 (and b!5211884 b!5211886)))

(declare-fun lambda!261373 () Int)

(assert (=> bs!1210844 (not (= lambda!261373 lambda!261372))))

(declare-fun bs!1210845 () Bool)

(assert (= bs!1210845 (and b!5211884 d!1680478)))

(assert (=> bs!1210845 (= lambda!261373 lambda!261367)))

(declare-fun bs!1210846 () Bool)

(assert (= bs!1210846 (and b!5211884 b!5211487)))

(assert (=> bs!1210846 (not (= lambda!261373 lambda!261330))))

(assert (=> bs!1210846 (= lambda!261373 lambda!261331)))

(assert (=> bs!1210845 (not (= lambda!261373 lambda!261366))))

(declare-fun bs!1210847 () Bool)

(assert (= bs!1210847 (and b!5211884 d!1680476)))

(assert (=> bs!1210847 (not (= lambda!261373 lambda!261361))))

(assert (=> b!5211884 true))

(assert (=> b!5211884 true))

(declare-fun d!1680496 () Bool)

(declare-fun c!898794 () Bool)

(assert (=> d!1680496 (= c!898794 (is-EmptyExpr!14800 r!7292))))

(declare-fun e!3244613 () Bool)

(assert (=> d!1680496 (= (matchRSpec!1903 r!7292 s!2326) e!3244613)))

(declare-fun b!5211882 () Bool)

(declare-fun c!898795 () Bool)

(assert (=> b!5211882 (= c!898795 (is-Union!14800 r!7292))))

(declare-fun e!3244610 () Bool)

(declare-fun e!3244611 () Bool)

(assert (=> b!5211882 (= e!3244610 e!3244611)))

(declare-fun b!5211883 () Bool)

(declare-fun call!367050 () Bool)

(assert (=> b!5211883 (= e!3244613 call!367050)))

(declare-fun e!3244612 () Bool)

(declare-fun call!367051 () Bool)

(assert (=> b!5211884 (= e!3244612 call!367051)))

(declare-fun b!5211885 () Bool)

(assert (=> b!5211885 (= e!3244610 (= s!2326 (Cons!60577 (c!898691 r!7292) Nil!60577)))))

(declare-fun e!3244609 () Bool)

(assert (=> b!5211886 (= e!3244609 call!367051)))

(declare-fun b!5211887 () Bool)

(declare-fun res!2213692 () Bool)

(assert (=> b!5211887 (=> res!2213692 e!3244609)))

(assert (=> b!5211887 (= res!2213692 call!367050)))

(assert (=> b!5211887 (= e!3244612 e!3244609)))

(declare-fun b!5211888 () Bool)

(declare-fun e!3244614 () Bool)

(assert (=> b!5211888 (= e!3244611 e!3244614)))

(declare-fun res!2213691 () Bool)

(assert (=> b!5211888 (= res!2213691 (matchRSpec!1903 (regOne!30113 r!7292) s!2326))))

(assert (=> b!5211888 (=> res!2213691 e!3244614)))

(declare-fun b!5211889 () Bool)

(assert (=> b!5211889 (= e!3244611 e!3244612)))

(declare-fun c!898796 () Bool)

(assert (=> b!5211889 (= c!898796 (is-Star!14800 r!7292))))

(declare-fun bm!367045 () Bool)

(assert (=> bm!367045 (= call!367050 (isEmpty!32491 s!2326))))

(declare-fun b!5211890 () Bool)

(assert (=> b!5211890 (= e!3244614 (matchRSpec!1903 (regTwo!30113 r!7292) s!2326))))

(declare-fun b!5211891 () Bool)

(declare-fun e!3244615 () Bool)

(assert (=> b!5211891 (= e!3244613 e!3244615)))

(declare-fun res!2213693 () Bool)

(assert (=> b!5211891 (= res!2213693 (not (is-EmptyLang!14800 r!7292)))))

(assert (=> b!5211891 (=> (not res!2213693) (not e!3244615))))

(declare-fun bm!367046 () Bool)

(assert (=> bm!367046 (= call!367051 (Exists!1981 (ite c!898796 lambda!261372 lambda!261373)))))

(declare-fun b!5211892 () Bool)

(declare-fun c!898797 () Bool)

(assert (=> b!5211892 (= c!898797 (is-ElementMatch!14800 r!7292))))

(assert (=> b!5211892 (= e!3244615 e!3244610)))

(assert (= (and d!1680496 c!898794) b!5211883))

(assert (= (and d!1680496 (not c!898794)) b!5211891))

(assert (= (and b!5211891 res!2213693) b!5211892))

(assert (= (and b!5211892 c!898797) b!5211885))

(assert (= (and b!5211892 (not c!898797)) b!5211882))

(assert (= (and b!5211882 c!898795) b!5211888))

(assert (= (and b!5211882 (not c!898795)) b!5211889))

(assert (= (and b!5211888 (not res!2213691)) b!5211890))

(assert (= (and b!5211889 c!898796) b!5211887))

(assert (= (and b!5211889 (not c!898796)) b!5211884))

(assert (= (and b!5211887 (not res!2213692)) b!5211886))

(assert (= (or b!5211886 b!5211884) bm!367046))

(assert (= (or b!5211883 b!5211887) bm!367045))

(declare-fun m!6261394 () Bool)

(assert (=> b!5211888 m!6261394))

(declare-fun m!6261396 () Bool)

(assert (=> bm!367045 m!6261396))

(declare-fun m!6261398 () Bool)

(assert (=> b!5211890 m!6261398))

(declare-fun m!6261400 () Bool)

(assert (=> bm!367046 m!6261400))

(assert (=> b!5211494 d!1680496))

(declare-fun b!5211921 () Bool)

(declare-fun res!2213717 () Bool)

(declare-fun e!3244631 () Bool)

(assert (=> b!5211921 (=> (not res!2213717) (not e!3244631))))

(declare-fun call!367054 () Bool)

(assert (=> b!5211921 (= res!2213717 (not call!367054))))

(declare-fun b!5211922 () Bool)

(assert (=> b!5211922 (= e!3244631 (= (head!11172 s!2326) (c!898691 r!7292)))))

(declare-fun b!5211923 () Bool)

(declare-fun e!3244632 () Bool)

(declare-fun e!3244635 () Bool)

(assert (=> b!5211923 (= e!3244632 e!3244635)))

(declare-fun res!2213714 () Bool)

(assert (=> b!5211923 (=> (not res!2213714) (not e!3244635))))

(declare-fun lt!2142345 () Bool)

(assert (=> b!5211923 (= res!2213714 (not lt!2142345))))

(declare-fun b!5211924 () Bool)

(declare-fun e!3244636 () Bool)

(assert (=> b!5211924 (= e!3244635 e!3244636)))

(declare-fun res!2213710 () Bool)

(assert (=> b!5211924 (=> res!2213710 e!3244636)))

(assert (=> b!5211924 (= res!2213710 call!367054)))

(declare-fun b!5211925 () Bool)

(assert (=> b!5211925 (= e!3244636 (not (= (head!11172 s!2326) (c!898691 r!7292))))))

(declare-fun b!5211926 () Bool)

(declare-fun e!3244634 () Bool)

(assert (=> b!5211926 (= e!3244634 (= lt!2142345 call!367054))))

(declare-fun b!5211927 () Bool)

(declare-fun res!2213712 () Bool)

(assert (=> b!5211927 (=> res!2213712 e!3244632)))

(assert (=> b!5211927 (= res!2213712 (not (is-ElementMatch!14800 r!7292)))))

(declare-fun e!3244633 () Bool)

(assert (=> b!5211927 (= e!3244633 e!3244632)))

(declare-fun b!5211928 () Bool)

(declare-fun e!3244630 () Bool)

(assert (=> b!5211928 (= e!3244630 (nullable!4969 r!7292))))

(declare-fun b!5211930 () Bool)

(declare-fun res!2213715 () Bool)

(assert (=> b!5211930 (=> res!2213715 e!3244632)))

(assert (=> b!5211930 (= res!2213715 e!3244631)))

(declare-fun res!2213713 () Bool)

(assert (=> b!5211930 (=> (not res!2213713) (not e!3244631))))

(assert (=> b!5211930 (= res!2213713 lt!2142345)))

(declare-fun b!5211931 () Bool)

(declare-fun res!2213716 () Bool)

(assert (=> b!5211931 (=> res!2213716 e!3244636)))

(assert (=> b!5211931 (= res!2213716 (not (isEmpty!32491 (tail!10269 s!2326))))))

(declare-fun b!5211932 () Bool)

(declare-fun res!2213711 () Bool)

(assert (=> b!5211932 (=> (not res!2213711) (not e!3244631))))

(assert (=> b!5211932 (= res!2213711 (isEmpty!32491 (tail!10269 s!2326)))))

(declare-fun b!5211933 () Bool)

(assert (=> b!5211933 (= e!3244633 (not lt!2142345))))

(declare-fun b!5211934 () Bool)

(declare-fun derivativeStep!4048 (Regex!14800 C!29870) Regex!14800)

(assert (=> b!5211934 (= e!3244630 (matchR!6985 (derivativeStep!4048 r!7292 (head!11172 s!2326)) (tail!10269 s!2326)))))

(declare-fun bm!367049 () Bool)

(assert (=> bm!367049 (= call!367054 (isEmpty!32491 s!2326))))

(declare-fun d!1680498 () Bool)

(assert (=> d!1680498 e!3244634))

(declare-fun c!898806 () Bool)

(assert (=> d!1680498 (= c!898806 (is-EmptyExpr!14800 r!7292))))

(assert (=> d!1680498 (= lt!2142345 e!3244630)))

(declare-fun c!898804 () Bool)

(assert (=> d!1680498 (= c!898804 (isEmpty!32491 s!2326))))

(assert (=> d!1680498 (validRegex!6536 r!7292)))

(assert (=> d!1680498 (= (matchR!6985 r!7292 s!2326) lt!2142345)))

(declare-fun b!5211929 () Bool)

(assert (=> b!5211929 (= e!3244634 e!3244633)))

(declare-fun c!898805 () Bool)

(assert (=> b!5211929 (= c!898805 (is-EmptyLang!14800 r!7292))))

(assert (= (and d!1680498 c!898804) b!5211928))

(assert (= (and d!1680498 (not c!898804)) b!5211934))

(assert (= (and d!1680498 c!898806) b!5211926))

(assert (= (and d!1680498 (not c!898806)) b!5211929))

(assert (= (and b!5211929 c!898805) b!5211933))

(assert (= (and b!5211929 (not c!898805)) b!5211927))

(assert (= (and b!5211927 (not res!2213712)) b!5211930))

(assert (= (and b!5211930 res!2213713) b!5211921))

(assert (= (and b!5211921 res!2213717) b!5211932))

(assert (= (and b!5211932 res!2213711) b!5211922))

(assert (= (and b!5211930 (not res!2213715)) b!5211923))

(assert (= (and b!5211923 res!2213714) b!5211924))

(assert (= (and b!5211924 (not res!2213710)) b!5211931))

(assert (= (and b!5211931 (not res!2213716)) b!5211925))

(assert (= (or b!5211926 b!5211921 b!5211924) bm!367049))

(assert (=> d!1680498 m!6261396))

(assert (=> d!1680498 m!6261038))

(declare-fun m!6261402 () Bool)

(assert (=> b!5211931 m!6261402))

(assert (=> b!5211931 m!6261402))

(declare-fun m!6261404 () Bool)

(assert (=> b!5211931 m!6261404))

(declare-fun m!6261406 () Bool)

(assert (=> b!5211928 m!6261406))

(assert (=> b!5211932 m!6261402))

(assert (=> b!5211932 m!6261402))

(assert (=> b!5211932 m!6261404))

(declare-fun m!6261408 () Bool)

(assert (=> b!5211925 m!6261408))

(assert (=> b!5211922 m!6261408))

(assert (=> b!5211934 m!6261408))

(assert (=> b!5211934 m!6261408))

(declare-fun m!6261410 () Bool)

(assert (=> b!5211934 m!6261410))

(assert (=> b!5211934 m!6261402))

(assert (=> b!5211934 m!6261410))

(assert (=> b!5211934 m!6261402))

(declare-fun m!6261412 () Bool)

(assert (=> b!5211934 m!6261412))

(assert (=> bm!367049 m!6261396))

(assert (=> b!5211494 d!1680498))

(declare-fun d!1680500 () Bool)

(assert (=> d!1680500 (= (matchR!6985 r!7292 s!2326) (matchRSpec!1903 r!7292 s!2326))))

(declare-fun lt!2142348 () Unit!152466)

(declare-fun choose!38748 (Regex!14800 List!60701) Unit!152466)

(assert (=> d!1680500 (= lt!2142348 (choose!38748 r!7292 s!2326))))

(assert (=> d!1680500 (validRegex!6536 r!7292)))

(assert (=> d!1680500 (= (mainMatchTheorem!1903 r!7292 s!2326) lt!2142348)))

(declare-fun bs!1210848 () Bool)

(assert (= bs!1210848 d!1680500))

(assert (=> bs!1210848 m!6261064))

(assert (=> bs!1210848 m!6261062))

(declare-fun m!6261414 () Bool)

(assert (=> bs!1210848 m!6261414))

(assert (=> bs!1210848 m!6261038))

(assert (=> b!5211494 d!1680500))

(assert (=> b!5211493 d!1680484))

(declare-fun d!1680502 () Bool)

(declare-fun e!3244637 () Bool)

(assert (=> d!1680502 (= (matchZipper!1044 (set.union lt!2142225 lt!2142223) (t!373864 s!2326)) e!3244637)))

(declare-fun res!2213718 () Bool)

(assert (=> d!1680502 (=> res!2213718 e!3244637)))

(assert (=> d!1680502 (= res!2213718 (matchZipper!1044 lt!2142225 (t!373864 s!2326)))))

(declare-fun lt!2142349 () Unit!152466)

(assert (=> d!1680502 (= lt!2142349 (choose!38747 lt!2142225 lt!2142223 (t!373864 s!2326)))))

(assert (=> d!1680502 (= (lemmaZipperConcatMatchesSameAsBothZippers!37 lt!2142225 lt!2142223 (t!373864 s!2326)) lt!2142349)))

(declare-fun b!5211935 () Bool)

(assert (=> b!5211935 (= e!3244637 (matchZipper!1044 lt!2142223 (t!373864 s!2326)))))

(assert (= (and d!1680502 (not res!2213718)) b!5211935))

(assert (=> d!1680502 m!6261048))

(assert (=> d!1680502 m!6261046))

(declare-fun m!6261416 () Bool)

(assert (=> d!1680502 m!6261416))

(assert (=> b!5211935 m!6261020))

(assert (=> b!5211483 d!1680502))

(assert (=> b!5211483 d!1680488))

(declare-fun d!1680504 () Bool)

(declare-fun c!898807 () Bool)

(assert (=> d!1680504 (= c!898807 (isEmpty!32491 (t!373864 s!2326)))))

(declare-fun e!3244638 () Bool)

(assert (=> d!1680504 (= (matchZipper!1044 (set.union lt!2142225 lt!2142223) (t!373864 s!2326)) e!3244638)))

(declare-fun b!5211936 () Bool)

(assert (=> b!5211936 (= e!3244638 (nullableZipper!1226 (set.union lt!2142225 lt!2142223)))))

(declare-fun b!5211937 () Bool)

(assert (=> b!5211937 (= e!3244638 (matchZipper!1044 (derivationStepZipper!1070 (set.union lt!2142225 lt!2142223) (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))))))

(assert (= (and d!1680504 c!898807) b!5211936))

(assert (= (and d!1680504 (not c!898807)) b!5211937))

(assert (=> d!1680504 m!6261232))

(declare-fun m!6261418 () Bool)

(assert (=> b!5211936 m!6261418))

(assert (=> b!5211937 m!6261236))

(assert (=> b!5211937 m!6261236))

(declare-fun m!6261420 () Bool)

(assert (=> b!5211937 m!6261420))

(assert (=> b!5211937 m!6261240))

(assert (=> b!5211937 m!6261420))

(assert (=> b!5211937 m!6261240))

(declare-fun m!6261422 () Bool)

(assert (=> b!5211937 m!6261422))

(assert (=> b!5211483 d!1680504))

(declare-fun e!3244641 () Bool)

(assert (=> b!5211471 (= tp!1461533 e!3244641)))

(declare-fun b!5211951 () Bool)

(declare-fun tp!1461577 () Bool)

(declare-fun tp!1461576 () Bool)

(assert (=> b!5211951 (= e!3244641 (and tp!1461577 tp!1461576))))

(declare-fun b!5211949 () Bool)

(declare-fun tp!1461579 () Bool)

(declare-fun tp!1461580 () Bool)

(assert (=> b!5211949 (= e!3244641 (and tp!1461579 tp!1461580))))

(declare-fun b!5211950 () Bool)

(declare-fun tp!1461578 () Bool)

(assert (=> b!5211950 (= e!3244641 tp!1461578)))

(declare-fun b!5211948 () Bool)

(assert (=> b!5211948 (= e!3244641 tp_is_empty!38853)))

(assert (= (and b!5211471 (is-ElementMatch!14800 (regOne!30113 r!7292))) b!5211948))

(assert (= (and b!5211471 (is-Concat!23645 (regOne!30113 r!7292))) b!5211949))

(assert (= (and b!5211471 (is-Star!14800 (regOne!30113 r!7292))) b!5211950))

(assert (= (and b!5211471 (is-Union!14800 (regOne!30113 r!7292))) b!5211951))

(declare-fun e!3244642 () Bool)

(assert (=> b!5211471 (= tp!1461535 e!3244642)))

(declare-fun b!5211955 () Bool)

(declare-fun tp!1461582 () Bool)

(declare-fun tp!1461581 () Bool)

(assert (=> b!5211955 (= e!3244642 (and tp!1461582 tp!1461581))))

(declare-fun b!5211953 () Bool)

(declare-fun tp!1461584 () Bool)

(declare-fun tp!1461585 () Bool)

(assert (=> b!5211953 (= e!3244642 (and tp!1461584 tp!1461585))))

(declare-fun b!5211954 () Bool)

(declare-fun tp!1461583 () Bool)

(assert (=> b!5211954 (= e!3244642 tp!1461583)))

(declare-fun b!5211952 () Bool)

(assert (=> b!5211952 (= e!3244642 tp_is_empty!38853)))

(assert (= (and b!5211471 (is-ElementMatch!14800 (regTwo!30113 r!7292))) b!5211952))

(assert (= (and b!5211471 (is-Concat!23645 (regTwo!30113 r!7292))) b!5211953))

(assert (= (and b!5211471 (is-Star!14800 (regTwo!30113 r!7292))) b!5211954))

(assert (= (and b!5211471 (is-Union!14800 (regTwo!30113 r!7292))) b!5211955))

(declare-fun b!5211960 () Bool)

(declare-fun e!3244645 () Bool)

(declare-fun tp!1461590 () Bool)

(declare-fun tp!1461591 () Bool)

(assert (=> b!5211960 (= e!3244645 (and tp!1461590 tp!1461591))))

(assert (=> b!5211476 (= tp!1461529 e!3244645)))

(assert (= (and b!5211476 (is-Cons!60575 (exprs!4684 setElem!33107))) b!5211960))

(declare-fun condSetEmpty!33113 () Bool)

(assert (=> setNonEmpty!33107 (= condSetEmpty!33113 (= setRest!33107 (as set.empty (Set Context!8368))))))

(declare-fun setRes!33113 () Bool)

(assert (=> setNonEmpty!33107 (= tp!1461531 setRes!33113)))

(declare-fun setIsEmpty!33113 () Bool)

(assert (=> setIsEmpty!33113 setRes!33113))

(declare-fun setElem!33113 () Context!8368)

(declare-fun tp!1461596 () Bool)

(declare-fun setNonEmpty!33113 () Bool)

(declare-fun e!3244648 () Bool)

(assert (=> setNonEmpty!33113 (= setRes!33113 (and tp!1461596 (inv!80248 setElem!33113) e!3244648))))

(declare-fun setRest!33113 () (Set Context!8368))

(assert (=> setNonEmpty!33113 (= setRest!33107 (set.union (set.insert setElem!33113 (as set.empty (Set Context!8368))) setRest!33113))))

(declare-fun b!5211965 () Bool)

(declare-fun tp!1461597 () Bool)

(assert (=> b!5211965 (= e!3244648 tp!1461597)))

(assert (= (and setNonEmpty!33107 condSetEmpty!33113) setIsEmpty!33113))

(assert (= (and setNonEmpty!33107 (not condSetEmpty!33113)) setNonEmpty!33113))

(assert (= setNonEmpty!33113 b!5211965))

(declare-fun m!6261424 () Bool)

(assert (=> setNonEmpty!33113 m!6261424))

(declare-fun b!5211973 () Bool)

(declare-fun e!3244654 () Bool)

(declare-fun tp!1461602 () Bool)

(assert (=> b!5211973 (= e!3244654 tp!1461602)))

(declare-fun b!5211972 () Bool)

(declare-fun e!3244653 () Bool)

(declare-fun tp!1461603 () Bool)

(assert (=> b!5211972 (= e!3244653 (and (inv!80248 (h!67024 (t!373863 zl!343))) e!3244654 tp!1461603))))

(assert (=> b!5211470 (= tp!1461534 e!3244653)))

(assert (= b!5211972 b!5211973))

(assert (= (and b!5211470 (is-Cons!60576 (t!373863 zl!343))) b!5211972))

(declare-fun m!6261426 () Bool)

(assert (=> b!5211972 m!6261426))

(declare-fun b!5211978 () Bool)

(declare-fun e!3244657 () Bool)

(declare-fun tp!1461606 () Bool)

(assert (=> b!5211978 (= e!3244657 (and tp_is_empty!38853 tp!1461606))))

(assert (=> b!5211475 (= tp!1461528 e!3244657)))

(assert (= (and b!5211475 (is-Cons!60577 (t!373864 s!2326))) b!5211978))

(declare-fun e!3244658 () Bool)

(assert (=> b!5211484 (= tp!1461527 e!3244658)))

(declare-fun b!5211982 () Bool)

(declare-fun tp!1461608 () Bool)

(declare-fun tp!1461607 () Bool)

(assert (=> b!5211982 (= e!3244658 (and tp!1461608 tp!1461607))))

(declare-fun b!5211980 () Bool)

(declare-fun tp!1461610 () Bool)

(declare-fun tp!1461611 () Bool)

(assert (=> b!5211980 (= e!3244658 (and tp!1461610 tp!1461611))))

(declare-fun b!5211981 () Bool)

(declare-fun tp!1461609 () Bool)

(assert (=> b!5211981 (= e!3244658 tp!1461609)))

(declare-fun b!5211979 () Bool)

(assert (=> b!5211979 (= e!3244658 tp_is_empty!38853)))

(assert (= (and b!5211484 (is-ElementMatch!14800 (regOne!30112 r!7292))) b!5211979))

(assert (= (and b!5211484 (is-Concat!23645 (regOne!30112 r!7292))) b!5211980))

(assert (= (and b!5211484 (is-Star!14800 (regOne!30112 r!7292))) b!5211981))

(assert (= (and b!5211484 (is-Union!14800 (regOne!30112 r!7292))) b!5211982))

(declare-fun e!3244659 () Bool)

(assert (=> b!5211484 (= tp!1461526 e!3244659)))

(declare-fun b!5211986 () Bool)

(declare-fun tp!1461613 () Bool)

(declare-fun tp!1461612 () Bool)

(assert (=> b!5211986 (= e!3244659 (and tp!1461613 tp!1461612))))

(declare-fun b!5211984 () Bool)

(declare-fun tp!1461615 () Bool)

(declare-fun tp!1461616 () Bool)

(assert (=> b!5211984 (= e!3244659 (and tp!1461615 tp!1461616))))

(declare-fun b!5211985 () Bool)

(declare-fun tp!1461614 () Bool)

(assert (=> b!5211985 (= e!3244659 tp!1461614)))

(declare-fun b!5211983 () Bool)

(assert (=> b!5211983 (= e!3244659 tp_is_empty!38853)))

(assert (= (and b!5211484 (is-ElementMatch!14800 (regTwo!30112 r!7292))) b!5211983))

(assert (= (and b!5211484 (is-Concat!23645 (regTwo!30112 r!7292))) b!5211984))

(assert (= (and b!5211484 (is-Star!14800 (regTwo!30112 r!7292))) b!5211985))

(assert (= (and b!5211484 (is-Union!14800 (regTwo!30112 r!7292))) b!5211986))

(declare-fun e!3244660 () Bool)

(assert (=> b!5211469 (= tp!1461530 e!3244660)))

(declare-fun b!5211990 () Bool)

(declare-fun tp!1461618 () Bool)

(declare-fun tp!1461617 () Bool)

(assert (=> b!5211990 (= e!3244660 (and tp!1461618 tp!1461617))))

(declare-fun b!5211988 () Bool)

(declare-fun tp!1461620 () Bool)

(declare-fun tp!1461621 () Bool)

(assert (=> b!5211988 (= e!3244660 (and tp!1461620 tp!1461621))))

(declare-fun b!5211989 () Bool)

(declare-fun tp!1461619 () Bool)

(assert (=> b!5211989 (= e!3244660 tp!1461619)))

(declare-fun b!5211987 () Bool)

(assert (=> b!5211987 (= e!3244660 tp_is_empty!38853)))

(assert (= (and b!5211469 (is-ElementMatch!14800 (reg!15129 r!7292))) b!5211987))

(assert (= (and b!5211469 (is-Concat!23645 (reg!15129 r!7292))) b!5211988))

(assert (= (and b!5211469 (is-Star!14800 (reg!15129 r!7292))) b!5211989))

(assert (= (and b!5211469 (is-Union!14800 (reg!15129 r!7292))) b!5211990))

(declare-fun b!5211991 () Bool)

(declare-fun e!3244661 () Bool)

(declare-fun tp!1461622 () Bool)

(declare-fun tp!1461623 () Bool)

(assert (=> b!5211991 (= e!3244661 (and tp!1461622 tp!1461623))))

(assert (=> b!5211474 (= tp!1461532 e!3244661)))

(assert (= (and b!5211474 (is-Cons!60575 (exprs!4684 (h!67024 zl!343)))) b!5211991))

(declare-fun b_lambda!201585 () Bool)

(assert (= b_lambda!201583 (or b!5211489 b_lambda!201585)))

(declare-fun bs!1210849 () Bool)

(declare-fun d!1680506 () Bool)

(assert (= bs!1210849 (and d!1680506 b!5211489)))

(assert (=> bs!1210849 (= (dynLambda!23930 lambda!261332 lt!2142238) (derivationStepZipperUp!172 lt!2142238 (h!67025 s!2326)))))

(assert (=> bs!1210849 m!6261096))

(assert (=> d!1680468 d!1680506))

(declare-fun b_lambda!201587 () Bool)

(assert (= b_lambda!201581 (or b!5211489 b_lambda!201587)))

(declare-fun bs!1210850 () Bool)

(declare-fun d!1680508 () Bool)

(assert (= bs!1210850 (and d!1680508 b!5211489)))

(assert (=> bs!1210850 (= (dynLambda!23930 lambda!261332 (h!67024 zl!343)) (derivationStepZipperUp!172 (h!67024 zl!343) (h!67025 s!2326)))))

(assert (=> bs!1210850 m!6261022))

(assert (=> d!1680444 d!1680508))

(push 1)

(assert (not b!5211641))

(assert tp_is_empty!38853)

(assert (not b!5211984))

(assert (not b!5211817))

(assert (not d!1680490))

(assert (not b!5211717))

(assert (not b!5211718))

(assert (not b!5211633))

(assert (not bm!367005))

(assert (not b!5211831))

(assert (not b!5211788))

(assert (not d!1680504))

(assert (not bm!367022))

(assert (not setNonEmpty!33113))

(assert (not b!5211844))

(assert (not b!5211846))

(assert (not b!5211932))

(assert (not b!5211769))

(assert (not b!5211965))

(assert (not b!5211814))

(assert (not d!1680472))

(assert (not b!5211843))

(assert (not b!5211888))

(assert (not b!5211787))

(assert (not b!5211951))

(assert (not d!1680436))

(assert (not d!1680488))

(assert (not b!5211667))

(assert (not bm!367036))

(assert (not b!5211928))

(assert (not bm!367004))

(assert (not bm!367049))

(assert (not d!1680434))

(assert (not bm!367034))

(assert (not b!5211949))

(assert (not d!1680426))

(assert (not b!5211678))

(assert (not d!1680498))

(assert (not d!1680502))

(assert (not d!1680494))

(assert (not b!5211670))

(assert (not b!5211960))

(assert (not b!5211631))

(assert (not b!5211665))

(assert (not b!5211753))

(assert (not b!5211849))

(assert (not b!5211630))

(assert (not b!5211813))

(assert (not b!5211985))

(assert (not b!5211635))

(assert (not b!5211672))

(assert (not d!1680474))

(assert (not b!5211982))

(assert (not b!5211953))

(assert (not d!1680478))

(assert (not d!1680432))

(assert (not b!5211723))

(assert (not b!5211991))

(assert (not d!1680446))

(assert (not d!1680424))

(assert (not b!5211990))

(assert (not bm!367028))

(assert (not b_lambda!201587))

(assert (not b!5211925))

(assert (not d!1680448))

(assert (not b!5211934))

(assert (not b!5211811))

(assert (not d!1680484))

(assert (not b!5211988))

(assert (not b!5211815))

(assert (not b!5211664))

(assert (not b!5211634))

(assert (not bm!367045))

(assert (not b!5211697))

(assert (not b!5211663))

(assert (not d!1680428))

(assert (not b_lambda!201585))

(assert (not b!5211890))

(assert (not d!1680476))

(assert (not bm!367037))

(assert (not d!1680492))

(assert (not bm!367029))

(assert (not bm!367021))

(assert (not b!5211809))

(assert (not bm!367001))

(assert (not bm!367030))

(assert (not d!1680468))

(assert (not bs!1210850))

(assert (not b!5211972))

(assert (not b!5211841))

(assert (not b!5211830))

(assert (not b!5211842))

(assert (not b!5211935))

(assert (not b!5211981))

(assert (not bs!1210849))

(assert (not b!5211989))

(assert (not b!5211955))

(assert (not b!5211668))

(assert (not bm!367035))

(assert (not b!5211780))

(assert (not b!5211931))

(assert (not d!1680500))

(assert (not b!5211986))

(assert (not b!5211760))

(assert (not bm!367023))

(assert (not b!5211954))

(assert (not b!5211922))

(assert (not b!5211845))

(assert (not b!5211978))

(assert (not d!1680430))

(assert (not b!5211937))

(assert (not b!5211636))

(assert (not d!1680462))

(assert (not b!5211629))

(assert (not b!5211722))

(assert (not b!5211973))

(assert (not bm!367046))

(assert (not b!5211936))

(assert (not d!1680438))

(assert (not d!1680464))

(assert (not b!5211832))

(assert (not b!5211761))

(assert (not d!1680480))

(assert (not d!1680444))

(assert (not b!5211950))

(assert (not bm!367038))

(assert (not bm!367024))

(assert (not bm!367040))

(assert (not d!1680470))

(assert (not b!5211980))

(assert (not b!5211677))

(assert (not b!5211606))

(assert (not bm!366999))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1210888 () Bool)

(declare-fun d!1680596 () Bool)

(assert (= bs!1210888 (and d!1680596 d!1680432)))

(declare-fun lambda!261402 () Int)

(assert (=> bs!1210888 (= lambda!261402 lambda!261357)))

(declare-fun bs!1210889 () Bool)

(assert (= bs!1210889 (and d!1680596 d!1680436)))

(assert (=> bs!1210889 (= lambda!261402 lambda!261358)))

(declare-fun bs!1210890 () Bool)

(assert (= bs!1210890 (and d!1680596 d!1680430)))

(assert (=> bs!1210890 (= lambda!261402 lambda!261354)))

(declare-fun bs!1210891 () Bool)

(assert (= bs!1210891 (and d!1680596 d!1680428)))

(assert (=> bs!1210891 (= lambda!261402 lambda!261351)))

(declare-fun bs!1210892 () Bool)

(assert (= bs!1210892 (and d!1680596 d!1680426)))

(assert (=> bs!1210892 (= lambda!261402 lambda!261348)))

(declare-fun b!5212380 () Bool)

(declare-fun e!3244883 () Bool)

(declare-fun lt!2142394 () Regex!14800)

(assert (=> b!5212380 (= e!3244883 (= lt!2142394 (head!11171 (t!373862 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun b!5212381 () Bool)

(declare-fun e!3244882 () Bool)

(assert (=> b!5212381 (= e!3244882 (isEmpty!32487 (t!373862 (t!373862 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun b!5212382 () Bool)

(declare-fun e!3244886 () Bool)

(assert (=> b!5212382 (= e!3244886 e!3244883)))

(declare-fun c!898916 () Bool)

(assert (=> b!5212382 (= c!898916 (isEmpty!32487 (tail!10268 (t!373862 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun b!5212384 () Bool)

(declare-fun e!3244887 () Bool)

(assert (=> b!5212384 (= e!3244887 e!3244886)))

(declare-fun c!898917 () Bool)

(assert (=> b!5212384 (= c!898917 (isEmpty!32487 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5212385 () Bool)

(assert (=> b!5212385 (= e!3244883 (isConcat!285 lt!2142394))))

(declare-fun b!5212386 () Bool)

(declare-fun e!3244885 () Regex!14800)

(assert (=> b!5212386 (= e!3244885 (h!67023 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5212387 () Bool)

(assert (=> b!5212387 (= e!3244886 (isEmptyExpr!762 lt!2142394))))

(declare-fun b!5212388 () Bool)

(declare-fun e!3244884 () Regex!14800)

(assert (=> b!5212388 (= e!3244884 EmptyExpr!14800)))

(declare-fun b!5212389 () Bool)

(assert (=> b!5212389 (= e!3244884 (Concat!23645 (h!67023 (t!373862 (exprs!4684 (h!67024 zl!343)))) (generalisedConcat!469 (t!373862 (t!373862 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun b!5212383 () Bool)

(assert (=> b!5212383 (= e!3244885 e!3244884)))

(declare-fun c!898915 () Bool)

(assert (=> b!5212383 (= c!898915 (is-Cons!60575 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> d!1680596 e!3244887))

(declare-fun res!2213840 () Bool)

(assert (=> d!1680596 (=> (not res!2213840) (not e!3244887))))

(assert (=> d!1680596 (= res!2213840 (validRegex!6536 lt!2142394))))

(assert (=> d!1680596 (= lt!2142394 e!3244885)))

(declare-fun c!898918 () Bool)

(assert (=> d!1680596 (= c!898918 e!3244882)))

(declare-fun res!2213839 () Bool)

(assert (=> d!1680596 (=> (not res!2213839) (not e!3244882))))

(assert (=> d!1680596 (= res!2213839 (is-Cons!60575 (t!373862 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> d!1680596 (forall!14234 (t!373862 (exprs!4684 (h!67024 zl!343))) lambda!261402)))

(assert (=> d!1680596 (= (generalisedConcat!469 (t!373862 (exprs!4684 (h!67024 zl!343)))) lt!2142394)))

(assert (= (and d!1680596 res!2213839) b!5212381))

(assert (= (and d!1680596 c!898918) b!5212386))

(assert (= (and d!1680596 (not c!898918)) b!5212383))

(assert (= (and b!5212383 c!898915) b!5212389))

(assert (= (and b!5212383 (not c!898915)) b!5212388))

(assert (= (and d!1680596 res!2213840) b!5212384))

(assert (= (and b!5212384 c!898917) b!5212387))

(assert (= (and b!5212384 (not c!898917)) b!5212382))

(assert (= (and b!5212382 c!898916) b!5212380))

(assert (= (and b!5212382 (not c!898916)) b!5212385))

(assert (=> b!5212384 m!6261058))

(declare-fun m!6261674 () Bool)

(assert (=> b!5212381 m!6261674))

(declare-fun m!6261676 () Bool)

(assert (=> b!5212389 m!6261676))

(declare-fun m!6261678 () Bool)

(assert (=> b!5212380 m!6261678))

(declare-fun m!6261680 () Bool)

(assert (=> b!5212385 m!6261680))

(declare-fun m!6261682 () Bool)

(assert (=> d!1680596 m!6261682))

(declare-fun m!6261684 () Bool)

(assert (=> d!1680596 m!6261684))

(declare-fun m!6261686 () Bool)

(assert (=> b!5212382 m!6261686))

(assert (=> b!5212382 m!6261686))

(declare-fun m!6261688 () Bool)

(assert (=> b!5212382 m!6261688))

(declare-fun m!6261690 () Bool)

(assert (=> b!5212387 m!6261690))

(assert (=> b!5211672 d!1680596))

(declare-fun b!5212390 () Bool)

(declare-fun e!3244889 () (Set Context!8368))

(declare-fun call!367112 () (Set Context!8368))

(assert (=> b!5212390 (= e!3244889 call!367112)))

(declare-fun bm!367107 () Bool)

(declare-fun call!367116 () (Set Context!8368))

(declare-fun call!367117 () (Set Context!8368))

(assert (=> bm!367107 (= call!367116 call!367117)))

(declare-fun d!1680598 () Bool)

(declare-fun c!898919 () Bool)

(assert (=> d!1680598 (= c!898919 (and (is-ElementMatch!14800 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))) (= (c!898691 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))) (h!67025 s!2326))))))

(declare-fun e!3244892 () (Set Context!8368))

(assert (=> d!1680598 (= (derivationStepZipperDown!248 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))) (ite c!898771 lt!2142235 (Context!8369 call!367037)) (h!67025 s!2326)) e!3244892)))

(declare-fun b!5212391 () Bool)

(declare-fun e!3244888 () (Set Context!8368))

(declare-fun call!367115 () (Set Context!8368))

(assert (=> b!5212391 (= e!3244888 (set.union call!367115 call!367116))))

(declare-fun bm!367108 () Bool)

(assert (=> bm!367108 (= call!367112 call!367116)))

(declare-fun bm!367109 () Bool)

(declare-fun call!367114 () List!60699)

(declare-fun call!367113 () List!60699)

(assert (=> bm!367109 (= call!367114 call!367113)))

(declare-fun b!5212392 () Bool)

(declare-fun e!3244891 () (Set Context!8368))

(assert (=> b!5212392 (= e!3244891 call!367112)))

(declare-fun c!898923 () Bool)

(declare-fun bm!367110 () Bool)

(assert (=> bm!367110 (= call!367115 (derivationStepZipperDown!248 (ite c!898923 (regTwo!30113 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))) (regOne!30112 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))) (ite c!898923 (ite c!898771 lt!2142235 (Context!8369 call!367037)) (Context!8369 call!367113)) (h!67025 s!2326)))))

(declare-fun c!898921 () Bool)

(declare-fun bm!367111 () Bool)

(declare-fun c!898922 () Bool)

(assert (=> bm!367111 (= call!367117 (derivationStepZipperDown!248 (ite c!898923 (regOne!30113 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))) (ite c!898921 (regTwo!30112 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))) (ite c!898922 (regOne!30112 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))) (reg!15129 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))) (ite (or c!898923 c!898921) (ite c!898771 lt!2142235 (Context!8369 call!367037)) (Context!8369 call!367114)) (h!67025 s!2326)))))

(declare-fun b!5212393 () Bool)

(declare-fun c!898920 () Bool)

(assert (=> b!5212393 (= c!898920 (is-Star!14800 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(assert (=> b!5212393 (= e!3244889 e!3244891)))

(declare-fun b!5212394 () Bool)

(assert (=> b!5212394 (= e!3244888 e!3244889)))

(assert (=> b!5212394 (= c!898922 (is-Concat!23645 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212395 () Bool)

(declare-fun e!3244890 () Bool)

(assert (=> b!5212395 (= e!3244890 (nullable!4969 (regOne!30112 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))

(declare-fun bm!367112 () Bool)

(assert (=> bm!367112 (= call!367113 ($colon$colon!1276 (exprs!4684 (ite c!898771 lt!2142235 (Context!8369 call!367037))) (ite (or c!898921 c!898922) (regTwo!30112 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))) (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))

(declare-fun b!5212396 () Bool)

(assert (=> b!5212396 (= c!898921 e!3244890)))

(declare-fun res!2213841 () Bool)

(assert (=> b!5212396 (=> (not res!2213841) (not e!3244890))))

(assert (=> b!5212396 (= res!2213841 (is-Concat!23645 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun e!3244893 () (Set Context!8368))

(assert (=> b!5212396 (= e!3244893 e!3244888)))

(declare-fun b!5212397 () Bool)

(assert (=> b!5212397 (= e!3244892 e!3244893)))

(assert (=> b!5212397 (= c!898923 (is-Union!14800 (ite c!898771 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212398 () Bool)

(assert (=> b!5212398 (= e!3244891 (as set.empty (Set Context!8368)))))

(declare-fun b!5212399 () Bool)

(assert (=> b!5212399 (= e!3244893 (set.union call!367117 call!367115))))

(declare-fun b!5212400 () Bool)

(assert (=> b!5212400 (= e!3244892 (set.insert (ite c!898771 lt!2142235 (Context!8369 call!367037)) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680598 c!898919) b!5212400))

(assert (= (and d!1680598 (not c!898919)) b!5212397))

(assert (= (and b!5212397 c!898923) b!5212399))

(assert (= (and b!5212397 (not c!898923)) b!5212396))

(assert (= (and b!5212396 res!2213841) b!5212395))

(assert (= (and b!5212396 c!898921) b!5212391))

(assert (= (and b!5212396 (not c!898921)) b!5212394))

(assert (= (and b!5212394 c!898922) b!5212390))

(assert (= (and b!5212394 (not c!898922)) b!5212393))

(assert (= (and b!5212393 c!898920) b!5212392))

(assert (= (and b!5212393 (not c!898920)) b!5212398))

(assert (= (or b!5212390 b!5212392) bm!367109))

(assert (= (or b!5212390 b!5212392) bm!367108))

(assert (= (or b!5212391 bm!367109) bm!367112))

(assert (= (or b!5212391 bm!367108) bm!367107))

(assert (= (or b!5212399 b!5212391) bm!367110))

(assert (= (or b!5212399 bm!367107) bm!367111))

(declare-fun m!6261692 () Bool)

(assert (=> bm!367110 m!6261692))

(declare-fun m!6261694 () Bool)

(assert (=> bm!367111 m!6261694))

(declare-fun m!6261696 () Bool)

(assert (=> b!5212395 m!6261696))

(declare-fun m!6261698 () Bool)

(assert (=> bm!367112 m!6261698))

(declare-fun m!6261700 () Bool)

(assert (=> b!5212400 m!6261700))

(assert (=> bm!367034 d!1680598))

(declare-fun d!1680600 () Bool)

(declare-fun lambda!261405 () Int)

(declare-fun exists!1963 ((Set Context!8368) Int) Bool)

(assert (=> d!1680600 (= (nullableZipper!1226 lt!2142236) (exists!1963 lt!2142236 lambda!261405))))

(declare-fun bs!1210893 () Bool)

(assert (= bs!1210893 d!1680600))

(declare-fun m!6261702 () Bool)

(assert (=> bs!1210893 m!6261702))

(assert (=> b!5211830 d!1680600))

(declare-fun d!1680602 () Bool)

(assert (=> d!1680602 (= (isEmptyLang!771 lt!2142311) (is-EmptyLang!14800 lt!2142311))))

(assert (=> b!5211635 d!1680602))

(declare-fun b!5212401 () Bool)

(declare-fun res!2213849 () Bool)

(declare-fun e!3244895 () Bool)

(assert (=> b!5212401 (=> (not res!2213849) (not e!3244895))))

(declare-fun call!367118 () Bool)

(assert (=> b!5212401 (= res!2213849 (not call!367118))))

(declare-fun b!5212402 () Bool)

(assert (=> b!5212402 (= e!3244895 (= (head!11172 (tail!10269 s!2326)) (c!898691 (derivativeStep!4048 r!7292 (head!11172 s!2326)))))))

(declare-fun b!5212403 () Bool)

(declare-fun e!3244896 () Bool)

(declare-fun e!3244899 () Bool)

(assert (=> b!5212403 (= e!3244896 e!3244899)))

(declare-fun res!2213846 () Bool)

(assert (=> b!5212403 (=> (not res!2213846) (not e!3244899))))

(declare-fun lt!2142395 () Bool)

(assert (=> b!5212403 (= res!2213846 (not lt!2142395))))

(declare-fun b!5212404 () Bool)

(declare-fun e!3244900 () Bool)

(assert (=> b!5212404 (= e!3244899 e!3244900)))

(declare-fun res!2213842 () Bool)

(assert (=> b!5212404 (=> res!2213842 e!3244900)))

(assert (=> b!5212404 (= res!2213842 call!367118)))

(declare-fun b!5212405 () Bool)

(assert (=> b!5212405 (= e!3244900 (not (= (head!11172 (tail!10269 s!2326)) (c!898691 (derivativeStep!4048 r!7292 (head!11172 s!2326))))))))

(declare-fun b!5212406 () Bool)

(declare-fun e!3244898 () Bool)

(assert (=> b!5212406 (= e!3244898 (= lt!2142395 call!367118))))

(declare-fun b!5212407 () Bool)

(declare-fun res!2213844 () Bool)

(assert (=> b!5212407 (=> res!2213844 e!3244896)))

(assert (=> b!5212407 (= res!2213844 (not (is-ElementMatch!14800 (derivativeStep!4048 r!7292 (head!11172 s!2326)))))))

(declare-fun e!3244897 () Bool)

(assert (=> b!5212407 (= e!3244897 e!3244896)))

(declare-fun b!5212408 () Bool)

(declare-fun e!3244894 () Bool)

(assert (=> b!5212408 (= e!3244894 (nullable!4969 (derivativeStep!4048 r!7292 (head!11172 s!2326))))))

(declare-fun b!5212410 () Bool)

(declare-fun res!2213847 () Bool)

(assert (=> b!5212410 (=> res!2213847 e!3244896)))

(assert (=> b!5212410 (= res!2213847 e!3244895)))

(declare-fun res!2213845 () Bool)

(assert (=> b!5212410 (=> (not res!2213845) (not e!3244895))))

(assert (=> b!5212410 (= res!2213845 lt!2142395)))

(declare-fun b!5212411 () Bool)

(declare-fun res!2213848 () Bool)

(assert (=> b!5212411 (=> res!2213848 e!3244900)))

(assert (=> b!5212411 (= res!2213848 (not (isEmpty!32491 (tail!10269 (tail!10269 s!2326)))))))

(declare-fun b!5212412 () Bool)

(declare-fun res!2213843 () Bool)

(assert (=> b!5212412 (=> (not res!2213843) (not e!3244895))))

(assert (=> b!5212412 (= res!2213843 (isEmpty!32491 (tail!10269 (tail!10269 s!2326))))))

(declare-fun b!5212413 () Bool)

(assert (=> b!5212413 (= e!3244897 (not lt!2142395))))

(declare-fun b!5212414 () Bool)

(assert (=> b!5212414 (= e!3244894 (matchR!6985 (derivativeStep!4048 (derivativeStep!4048 r!7292 (head!11172 s!2326)) (head!11172 (tail!10269 s!2326))) (tail!10269 (tail!10269 s!2326))))))

(declare-fun bm!367113 () Bool)

(assert (=> bm!367113 (= call!367118 (isEmpty!32491 (tail!10269 s!2326)))))

(declare-fun d!1680604 () Bool)

(assert (=> d!1680604 e!3244898))

(declare-fun c!898928 () Bool)

(assert (=> d!1680604 (= c!898928 (is-EmptyExpr!14800 (derivativeStep!4048 r!7292 (head!11172 s!2326))))))

(assert (=> d!1680604 (= lt!2142395 e!3244894)))

(declare-fun c!898926 () Bool)

(assert (=> d!1680604 (= c!898926 (isEmpty!32491 (tail!10269 s!2326)))))

(assert (=> d!1680604 (validRegex!6536 (derivativeStep!4048 r!7292 (head!11172 s!2326)))))

(assert (=> d!1680604 (= (matchR!6985 (derivativeStep!4048 r!7292 (head!11172 s!2326)) (tail!10269 s!2326)) lt!2142395)))

(declare-fun b!5212409 () Bool)

(assert (=> b!5212409 (= e!3244898 e!3244897)))

(declare-fun c!898927 () Bool)

(assert (=> b!5212409 (= c!898927 (is-EmptyLang!14800 (derivativeStep!4048 r!7292 (head!11172 s!2326))))))

(assert (= (and d!1680604 c!898926) b!5212408))

(assert (= (and d!1680604 (not c!898926)) b!5212414))

(assert (= (and d!1680604 c!898928) b!5212406))

(assert (= (and d!1680604 (not c!898928)) b!5212409))

(assert (= (and b!5212409 c!898927) b!5212413))

(assert (= (and b!5212409 (not c!898927)) b!5212407))

(assert (= (and b!5212407 (not res!2213844)) b!5212410))

(assert (= (and b!5212410 res!2213845) b!5212401))

(assert (= (and b!5212401 res!2213849) b!5212412))

(assert (= (and b!5212412 res!2213843) b!5212402))

(assert (= (and b!5212410 (not res!2213847)) b!5212403))

(assert (= (and b!5212403 res!2213846) b!5212404))

(assert (= (and b!5212404 (not res!2213842)) b!5212411))

(assert (= (and b!5212411 (not res!2213848)) b!5212405))

(assert (= (or b!5212406 b!5212401 b!5212404) bm!367113))

(assert (=> d!1680604 m!6261402))

(assert (=> d!1680604 m!6261404))

(assert (=> d!1680604 m!6261410))

(declare-fun m!6261704 () Bool)

(assert (=> d!1680604 m!6261704))

(assert (=> b!5212411 m!6261402))

(declare-fun m!6261706 () Bool)

(assert (=> b!5212411 m!6261706))

(assert (=> b!5212411 m!6261706))

(declare-fun m!6261708 () Bool)

(assert (=> b!5212411 m!6261708))

(assert (=> b!5212408 m!6261410))

(declare-fun m!6261710 () Bool)

(assert (=> b!5212408 m!6261710))

(assert (=> b!5212412 m!6261402))

(assert (=> b!5212412 m!6261706))

(assert (=> b!5212412 m!6261706))

(assert (=> b!5212412 m!6261708))

(assert (=> b!5212405 m!6261402))

(declare-fun m!6261712 () Bool)

(assert (=> b!5212405 m!6261712))

(assert (=> b!5212402 m!6261402))

(assert (=> b!5212402 m!6261712))

(assert (=> b!5212414 m!6261402))

(assert (=> b!5212414 m!6261712))

(assert (=> b!5212414 m!6261410))

(assert (=> b!5212414 m!6261712))

(declare-fun m!6261714 () Bool)

(assert (=> b!5212414 m!6261714))

(assert (=> b!5212414 m!6261402))

(assert (=> b!5212414 m!6261706))

(assert (=> b!5212414 m!6261714))

(assert (=> b!5212414 m!6261706))

(declare-fun m!6261716 () Bool)

(assert (=> b!5212414 m!6261716))

(assert (=> bm!367113 m!6261402))

(assert (=> bm!367113 m!6261404))

(assert (=> b!5211934 d!1680604))

(declare-fun c!898943 () Bool)

(declare-fun c!898941 () Bool)

(declare-fun bm!367122 () Bool)

(declare-fun call!367129 () Regex!14800)

(assert (=> bm!367122 (= call!367129 (derivativeStep!4048 (ite c!898941 (regTwo!30113 r!7292) (ite c!898943 (reg!15129 r!7292) (regOne!30112 r!7292))) (head!11172 s!2326)))))

(declare-fun b!5212435 () Bool)

(declare-fun e!3244913 () Regex!14800)

(declare-fun call!367128 () Regex!14800)

(assert (=> b!5212435 (= e!3244913 (Union!14800 (Concat!23645 call!367128 (regTwo!30112 r!7292)) EmptyLang!14800))))

(declare-fun d!1680606 () Bool)

(declare-fun lt!2142398 () Regex!14800)

(assert (=> d!1680606 (validRegex!6536 lt!2142398)))

(declare-fun e!3244911 () Regex!14800)

(assert (=> d!1680606 (= lt!2142398 e!3244911)))

(declare-fun c!898940 () Bool)

(assert (=> d!1680606 (= c!898940 (or (is-EmptyExpr!14800 r!7292) (is-EmptyLang!14800 r!7292)))))

(assert (=> d!1680606 (validRegex!6536 r!7292)))

(assert (=> d!1680606 (= (derivativeStep!4048 r!7292 (head!11172 s!2326)) lt!2142398)))

(declare-fun b!5212436 () Bool)

(declare-fun e!3244915 () Regex!14800)

(declare-fun call!367127 () Regex!14800)

(assert (=> b!5212436 (= e!3244915 (Union!14800 call!367127 call!367129))))

(declare-fun b!5212437 () Bool)

(declare-fun e!3244912 () Regex!14800)

(assert (=> b!5212437 (= e!3244911 e!3244912)))

(declare-fun c!898939 () Bool)

(assert (=> b!5212437 (= c!898939 (is-ElementMatch!14800 r!7292))))

(declare-fun bm!367123 () Bool)

(declare-fun call!367130 () Regex!14800)

(assert (=> bm!367123 (= call!367130 call!367129)))

(declare-fun bm!367124 () Bool)

(assert (=> bm!367124 (= call!367128 call!367127)))

(declare-fun c!898942 () Bool)

(declare-fun bm!367125 () Bool)

(assert (=> bm!367125 (= call!367127 (derivativeStep!4048 (ite c!898941 (regOne!30113 r!7292) (ite c!898942 (regTwo!30112 r!7292) (regOne!30112 r!7292))) (head!11172 s!2326)))))

(declare-fun b!5212438 () Bool)

(declare-fun e!3244914 () Regex!14800)

(assert (=> b!5212438 (= e!3244914 (Concat!23645 call!367130 r!7292))))

(declare-fun b!5212439 () Bool)

(assert (=> b!5212439 (= c!898942 (nullable!4969 (regOne!30112 r!7292)))))

(assert (=> b!5212439 (= e!3244914 e!3244913)))

(declare-fun b!5212440 () Bool)

(assert (=> b!5212440 (= e!3244915 e!3244914)))

(assert (=> b!5212440 (= c!898943 (is-Star!14800 r!7292))))

(declare-fun b!5212441 () Bool)

(assert (=> b!5212441 (= e!3244911 EmptyLang!14800)))

(declare-fun b!5212442 () Bool)

(assert (=> b!5212442 (= c!898941 (is-Union!14800 r!7292))))

(assert (=> b!5212442 (= e!3244912 e!3244915)))

(declare-fun b!5212443 () Bool)

(assert (=> b!5212443 (= e!3244913 (Union!14800 (Concat!23645 call!367130 (regTwo!30112 r!7292)) call!367128))))

(declare-fun b!5212444 () Bool)

(assert (=> b!5212444 (= e!3244912 (ite (= (head!11172 s!2326) (c!898691 r!7292)) EmptyExpr!14800 EmptyLang!14800))))

(assert (= (and d!1680606 c!898940) b!5212441))

(assert (= (and d!1680606 (not c!898940)) b!5212437))

(assert (= (and b!5212437 c!898939) b!5212444))

(assert (= (and b!5212437 (not c!898939)) b!5212442))

(assert (= (and b!5212442 c!898941) b!5212436))

(assert (= (and b!5212442 (not c!898941)) b!5212440))

(assert (= (and b!5212440 c!898943) b!5212438))

(assert (= (and b!5212440 (not c!898943)) b!5212439))

(assert (= (and b!5212439 c!898942) b!5212443))

(assert (= (and b!5212439 (not c!898942)) b!5212435))

(assert (= (or b!5212443 b!5212435) bm!367124))

(assert (= (or b!5212438 b!5212443) bm!367123))

(assert (= (or b!5212436 bm!367123) bm!367122))

(assert (= (or b!5212436 bm!367124) bm!367125))

(assert (=> bm!367122 m!6261408))

(declare-fun m!6261718 () Bool)

(assert (=> bm!367122 m!6261718))

(declare-fun m!6261720 () Bool)

(assert (=> d!1680606 m!6261720))

(assert (=> d!1680606 m!6261038))

(assert (=> bm!367125 m!6261408))

(declare-fun m!6261722 () Bool)

(assert (=> bm!367125 m!6261722))

(declare-fun m!6261724 () Bool)

(assert (=> b!5212439 m!6261724))

(assert (=> b!5211934 d!1680606))

(declare-fun d!1680608 () Bool)

(assert (=> d!1680608 (= (head!11172 s!2326) (h!67025 s!2326))))

(assert (=> b!5211934 d!1680608))

(declare-fun d!1680610 () Bool)

(assert (=> d!1680610 (= (tail!10269 s!2326) (t!373864 s!2326))))

(assert (=> b!5211934 d!1680610))

(declare-fun bs!1210894 () Bool)

(declare-fun b!5212449 () Bool)

(assert (= bs!1210894 (and b!5212449 b!5211886)))

(declare-fun lambda!261406 () Int)

(assert (=> bs!1210894 (= (and (= (reg!15129 (regTwo!30113 r!7292)) (reg!15129 r!7292)) (= (regTwo!30113 r!7292) r!7292)) (= lambda!261406 lambda!261372))))

(declare-fun bs!1210895 () Bool)

(assert (= bs!1210895 (and b!5212449 b!5211884)))

(assert (=> bs!1210895 (not (= lambda!261406 lambda!261373))))

(declare-fun bs!1210896 () Bool)

(assert (= bs!1210896 (and b!5212449 d!1680478)))

(assert (=> bs!1210896 (not (= lambda!261406 lambda!261367))))

(declare-fun bs!1210897 () Bool)

(assert (= bs!1210897 (and b!5212449 b!5211487)))

(assert (=> bs!1210897 (not (= lambda!261406 lambda!261330))))

(assert (=> bs!1210897 (not (= lambda!261406 lambda!261331))))

(assert (=> bs!1210896 (not (= lambda!261406 lambda!261366))))

(declare-fun bs!1210898 () Bool)

(assert (= bs!1210898 (and b!5212449 d!1680476)))

(assert (=> bs!1210898 (not (= lambda!261406 lambda!261361))))

(assert (=> b!5212449 true))

(assert (=> b!5212449 true))

(declare-fun bs!1210899 () Bool)

(declare-fun b!5212447 () Bool)

(assert (= bs!1210899 (and b!5212447 b!5211886)))

(declare-fun lambda!261407 () Int)

(assert (=> bs!1210899 (not (= lambda!261407 lambda!261372))))

(declare-fun bs!1210900 () Bool)

(assert (= bs!1210900 (and b!5212447 b!5211884)))

(assert (=> bs!1210900 (= (and (= (regOne!30112 (regTwo!30113 r!7292)) (regOne!30112 r!7292)) (= (regTwo!30112 (regTwo!30113 r!7292)) (regTwo!30112 r!7292))) (= lambda!261407 lambda!261373))))

(declare-fun bs!1210901 () Bool)

(assert (= bs!1210901 (and b!5212447 b!5212449)))

(assert (=> bs!1210901 (not (= lambda!261407 lambda!261406))))

(declare-fun bs!1210902 () Bool)

(assert (= bs!1210902 (and b!5212447 d!1680478)))

(assert (=> bs!1210902 (= (and (= (regOne!30112 (regTwo!30113 r!7292)) (regOne!30112 r!7292)) (= (regTwo!30112 (regTwo!30113 r!7292)) (regTwo!30112 r!7292))) (= lambda!261407 lambda!261367))))

(declare-fun bs!1210903 () Bool)

(assert (= bs!1210903 (and b!5212447 b!5211487)))

(assert (=> bs!1210903 (not (= lambda!261407 lambda!261330))))

(assert (=> bs!1210903 (= (and (= (regOne!30112 (regTwo!30113 r!7292)) (regOne!30112 r!7292)) (= (regTwo!30112 (regTwo!30113 r!7292)) (regTwo!30112 r!7292))) (= lambda!261407 lambda!261331))))

(assert (=> bs!1210902 (not (= lambda!261407 lambda!261366))))

(declare-fun bs!1210904 () Bool)

(assert (= bs!1210904 (and b!5212447 d!1680476)))

(assert (=> bs!1210904 (not (= lambda!261407 lambda!261361))))

(assert (=> b!5212447 true))

(assert (=> b!5212447 true))

(declare-fun d!1680612 () Bool)

(declare-fun c!898944 () Bool)

(assert (=> d!1680612 (= c!898944 (is-EmptyExpr!14800 (regTwo!30113 r!7292)))))

(declare-fun e!3244920 () Bool)

(assert (=> d!1680612 (= (matchRSpec!1903 (regTwo!30113 r!7292) s!2326) e!3244920)))

(declare-fun b!5212445 () Bool)

(declare-fun c!898945 () Bool)

(assert (=> b!5212445 (= c!898945 (is-Union!14800 (regTwo!30113 r!7292)))))

(declare-fun e!3244917 () Bool)

(declare-fun e!3244918 () Bool)

(assert (=> b!5212445 (= e!3244917 e!3244918)))

(declare-fun b!5212446 () Bool)

(declare-fun call!367131 () Bool)

(assert (=> b!5212446 (= e!3244920 call!367131)))

(declare-fun e!3244919 () Bool)

(declare-fun call!367132 () Bool)

(assert (=> b!5212447 (= e!3244919 call!367132)))

(declare-fun b!5212448 () Bool)

(assert (=> b!5212448 (= e!3244917 (= s!2326 (Cons!60577 (c!898691 (regTwo!30113 r!7292)) Nil!60577)))))

(declare-fun e!3244916 () Bool)

(assert (=> b!5212449 (= e!3244916 call!367132)))

(declare-fun b!5212450 () Bool)

(declare-fun res!2213851 () Bool)

(assert (=> b!5212450 (=> res!2213851 e!3244916)))

(assert (=> b!5212450 (= res!2213851 call!367131)))

(assert (=> b!5212450 (= e!3244919 e!3244916)))

(declare-fun b!5212451 () Bool)

(declare-fun e!3244921 () Bool)

(assert (=> b!5212451 (= e!3244918 e!3244921)))

(declare-fun res!2213850 () Bool)

(assert (=> b!5212451 (= res!2213850 (matchRSpec!1903 (regOne!30113 (regTwo!30113 r!7292)) s!2326))))

(assert (=> b!5212451 (=> res!2213850 e!3244921)))

(declare-fun b!5212452 () Bool)

(assert (=> b!5212452 (= e!3244918 e!3244919)))

(declare-fun c!898946 () Bool)

(assert (=> b!5212452 (= c!898946 (is-Star!14800 (regTwo!30113 r!7292)))))

(declare-fun bm!367126 () Bool)

(assert (=> bm!367126 (= call!367131 (isEmpty!32491 s!2326))))

(declare-fun b!5212453 () Bool)

(assert (=> b!5212453 (= e!3244921 (matchRSpec!1903 (regTwo!30113 (regTwo!30113 r!7292)) s!2326))))

(declare-fun b!5212454 () Bool)

(declare-fun e!3244922 () Bool)

(assert (=> b!5212454 (= e!3244920 e!3244922)))

(declare-fun res!2213852 () Bool)

(assert (=> b!5212454 (= res!2213852 (not (is-EmptyLang!14800 (regTwo!30113 r!7292))))))

(assert (=> b!5212454 (=> (not res!2213852) (not e!3244922))))

(declare-fun bm!367127 () Bool)

(assert (=> bm!367127 (= call!367132 (Exists!1981 (ite c!898946 lambda!261406 lambda!261407)))))

(declare-fun b!5212455 () Bool)

(declare-fun c!898947 () Bool)

(assert (=> b!5212455 (= c!898947 (is-ElementMatch!14800 (regTwo!30113 r!7292)))))

(assert (=> b!5212455 (= e!3244922 e!3244917)))

(assert (= (and d!1680612 c!898944) b!5212446))

(assert (= (and d!1680612 (not c!898944)) b!5212454))

(assert (= (and b!5212454 res!2213852) b!5212455))

(assert (= (and b!5212455 c!898947) b!5212448))

(assert (= (and b!5212455 (not c!898947)) b!5212445))

(assert (= (and b!5212445 c!898945) b!5212451))

(assert (= (and b!5212445 (not c!898945)) b!5212452))

(assert (= (and b!5212451 (not res!2213850)) b!5212453))

(assert (= (and b!5212452 c!898946) b!5212450))

(assert (= (and b!5212452 (not c!898946)) b!5212447))

(assert (= (and b!5212450 (not res!2213851)) b!5212449))

(assert (= (or b!5212449 b!5212447) bm!367127))

(assert (= (or b!5212446 b!5212450) bm!367126))

(declare-fun m!6261726 () Bool)

(assert (=> b!5212451 m!6261726))

(assert (=> bm!367126 m!6261396))

(declare-fun m!6261728 () Bool)

(assert (=> b!5212453 m!6261728))

(declare-fun m!6261730 () Bool)

(assert (=> bm!367127 m!6261730))

(assert (=> b!5211890 d!1680612))

(declare-fun d!1680614 () Bool)

(assert (=> d!1680614 (= (isConcat!285 lt!2142317) (is-Concat!23645 lt!2142317))))

(assert (=> b!5211668 d!1680614))

(declare-fun c!898949 () Bool)

(declare-fun c!898948 () Bool)

(declare-fun call!367133 () Bool)

(declare-fun bm!367128 () Bool)

(assert (=> bm!367128 (= call!367133 (validRegex!6536 (ite c!898948 (reg!15129 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))) (ite c!898949 (regOne!30113 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))) (regOne!30112 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292)))))))))))

(declare-fun b!5212457 () Bool)

(declare-fun e!3244928 () Bool)

(declare-fun e!3244926 () Bool)

(assert (=> b!5212457 (= e!3244928 e!3244926)))

(assert (=> b!5212457 (= c!898948 (is-Star!14800 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212458 () Bool)

(declare-fun e!3244923 () Bool)

(declare-fun call!367134 () Bool)

(assert (=> b!5212458 (= e!3244923 call!367134)))

(declare-fun b!5212459 () Bool)

(declare-fun e!3244925 () Bool)

(assert (=> b!5212459 (= e!3244925 e!3244923)))

(declare-fun res!2213855 () Bool)

(assert (=> b!5212459 (=> (not res!2213855) (not e!3244923))))

(declare-fun call!367135 () Bool)

(assert (=> b!5212459 (= res!2213855 call!367135)))

(declare-fun bm!367129 () Bool)

(assert (=> bm!367129 (= call!367135 call!367133)))

(declare-fun b!5212460 () Bool)

(declare-fun e!3244927 () Bool)

(assert (=> b!5212460 (= e!3244926 e!3244927)))

(assert (=> b!5212460 (= c!898949 (is-Union!14800 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212456 () Bool)

(declare-fun e!3244929 () Bool)

(assert (=> b!5212456 (= e!3244926 e!3244929)))

(declare-fun res!2213853 () Bool)

(assert (=> b!5212456 (= res!2213853 (not (nullable!4969 (reg!15129 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))))))))

(assert (=> b!5212456 (=> (not res!2213853) (not e!3244929))))

(declare-fun d!1680616 () Bool)

(declare-fun res!2213854 () Bool)

(assert (=> d!1680616 (=> res!2213854 e!3244928)))

(assert (=> d!1680616 (= res!2213854 (is-ElementMatch!14800 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(assert (=> d!1680616 (= (validRegex!6536 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))) e!3244928)))

(declare-fun b!5212461 () Bool)

(declare-fun e!3244924 () Bool)

(assert (=> b!5212461 (= e!3244924 call!367134)))

(declare-fun b!5212462 () Bool)

(declare-fun res!2213856 () Bool)

(assert (=> b!5212462 (=> (not res!2213856) (not e!3244924))))

(assert (=> b!5212462 (= res!2213856 call!367135)))

(assert (=> b!5212462 (= e!3244927 e!3244924)))

(declare-fun b!5212463 () Bool)

(declare-fun res!2213857 () Bool)

(assert (=> b!5212463 (=> res!2213857 e!3244925)))

(assert (=> b!5212463 (= res!2213857 (not (is-Concat!23645 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292)))))))))

(assert (=> b!5212463 (= e!3244927 e!3244925)))

(declare-fun b!5212464 () Bool)

(assert (=> b!5212464 (= e!3244929 call!367133)))

(declare-fun bm!367130 () Bool)

(assert (=> bm!367130 (= call!367134 (validRegex!6536 (ite c!898949 (regTwo!30113 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))) (regTwo!30112 (ite c!898782 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))))))))

(assert (= (and d!1680616 (not res!2213854)) b!5212457))

(assert (= (and b!5212457 c!898948) b!5212456))

(assert (= (and b!5212457 (not c!898948)) b!5212460))

(assert (= (and b!5212456 res!2213853) b!5212464))

(assert (= (and b!5212460 c!898949) b!5212462))

(assert (= (and b!5212460 (not c!898949)) b!5212463))

(assert (= (and b!5212462 res!2213856) b!5212461))

(assert (= (and b!5212463 (not res!2213857)) b!5212459))

(assert (= (and b!5212459 res!2213855) b!5212458))

(assert (= (or b!5212461 b!5212458) bm!367130))

(assert (= (or b!5212462 b!5212459) bm!367129))

(assert (= (or b!5212464 bm!367129) bm!367128))

(declare-fun m!6261732 () Bool)

(assert (=> bm!367128 m!6261732))

(declare-fun m!6261734 () Bool)

(assert (=> b!5212456 m!6261734))

(declare-fun m!6261736 () Bool)

(assert (=> bm!367130 m!6261736))

(assert (=> bm!367040 d!1680616))

(declare-fun d!1680618 () Bool)

(assert (=> d!1680618 (= (isUnion!203 lt!2142311) (is-Union!14800 lt!2142311))))

(assert (=> b!5211631 d!1680618))

(declare-fun bs!1210905 () Bool)

(declare-fun d!1680620 () Bool)

(assert (= bs!1210905 (and d!1680620 d!1680600)))

(declare-fun lambda!261408 () Int)

(assert (=> bs!1210905 (= lambda!261408 lambda!261405)))

(assert (=> d!1680620 (= (nullableZipper!1226 (set.union lt!2142225 lt!2142223)) (exists!1963 (set.union lt!2142225 lt!2142223) lambda!261408))))

(declare-fun bs!1210906 () Bool)

(assert (= bs!1210906 d!1680620))

(declare-fun m!6261738 () Bool)

(assert (=> bs!1210906 m!6261738))

(assert (=> b!5211936 d!1680620))

(declare-fun b!5212465 () Bool)

(declare-fun e!3244930 () (Set Context!8368))

(declare-fun e!3244932 () (Set Context!8368))

(assert (=> b!5212465 (= e!3244930 e!3244932)))

(declare-fun c!898950 () Bool)

(assert (=> b!5212465 (= c!898950 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))))

(declare-fun b!5212466 () Bool)

(declare-fun e!3244931 () Bool)

(assert (=> b!5212466 (= e!3244931 (nullable!4969 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))))))

(declare-fun b!5212467 () Bool)

(declare-fun call!367136 () (Set Context!8368))

(assert (=> b!5212467 (= e!3244930 (set.union call!367136 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))) (h!67025 s!2326))))))

(declare-fun b!5212468 () Bool)

(assert (=> b!5212468 (= e!3244932 (as set.empty (Set Context!8368)))))

(declare-fun bm!367131 () Bool)

(assert (=> bm!367131 (= call!367136 (derivationStepZipperDown!248 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))) (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))) (h!67025 s!2326)))))

(declare-fun d!1680622 () Bool)

(declare-fun c!898951 () Bool)

(assert (=> d!1680622 (= c!898951 e!3244931)))

(declare-fun res!2213858 () Bool)

(assert (=> d!1680622 (=> (not res!2213858) (not e!3244931))))

(assert (=> d!1680622 (= res!2213858 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))))

(assert (=> d!1680622 (= (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (h!67025 s!2326)) e!3244930)))

(declare-fun b!5212469 () Bool)

(assert (=> b!5212469 (= e!3244932 call!367136)))

(assert (= (and d!1680622 res!2213858) b!5212466))

(assert (= (and d!1680622 c!898951) b!5212467))

(assert (= (and d!1680622 (not c!898951)) b!5212465))

(assert (= (and b!5212465 c!898950) b!5212469))

(assert (= (and b!5212465 (not c!898950)) b!5212468))

(assert (= (or b!5212467 b!5212469) bm!367131))

(declare-fun m!6261740 () Bool)

(assert (=> b!5212466 m!6261740))

(declare-fun m!6261742 () Bool)

(assert (=> b!5212467 m!6261742))

(declare-fun m!6261744 () Bool)

(assert (=> bm!367131 m!6261744))

(assert (=> b!5211718 d!1680622))

(assert (=> b!5211664 d!1680482))

(declare-fun d!1680624 () Bool)

(declare-fun c!898952 () Bool)

(assert (=> d!1680624 (= c!898952 (isEmpty!32491 (tail!10269 (t!373864 s!2326))))))

(declare-fun e!3244933 () Bool)

(assert (=> d!1680624 (= (matchZipper!1044 (derivationStepZipper!1070 lt!2142223 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))) e!3244933)))

(declare-fun b!5212470 () Bool)

(assert (=> b!5212470 (= e!3244933 (nullableZipper!1226 (derivationStepZipper!1070 lt!2142223 (head!11172 (t!373864 s!2326)))))))

(declare-fun b!5212471 () Bool)

(assert (=> b!5212471 (= e!3244933 (matchZipper!1044 (derivationStepZipper!1070 (derivationStepZipper!1070 lt!2142223 (head!11172 (t!373864 s!2326))) (head!11172 (tail!10269 (t!373864 s!2326)))) (tail!10269 (tail!10269 (t!373864 s!2326)))))))

(assert (= (and d!1680624 c!898952) b!5212470))

(assert (= (and d!1680624 (not c!898952)) b!5212471))

(assert (=> d!1680624 m!6261240))

(declare-fun m!6261746 () Bool)

(assert (=> d!1680624 m!6261746))

(assert (=> b!5212470 m!6261238))

(declare-fun m!6261748 () Bool)

(assert (=> b!5212470 m!6261748))

(assert (=> b!5212471 m!6261240))

(declare-fun m!6261750 () Bool)

(assert (=> b!5212471 m!6261750))

(assert (=> b!5212471 m!6261238))

(assert (=> b!5212471 m!6261750))

(declare-fun m!6261752 () Bool)

(assert (=> b!5212471 m!6261752))

(assert (=> b!5212471 m!6261240))

(declare-fun m!6261754 () Bool)

(assert (=> b!5212471 m!6261754))

(assert (=> b!5212471 m!6261752))

(assert (=> b!5212471 m!6261754))

(declare-fun m!6261756 () Bool)

(assert (=> b!5212471 m!6261756))

(assert (=> b!5211678 d!1680624))

(declare-fun bs!1210907 () Bool)

(declare-fun d!1680626 () Bool)

(assert (= bs!1210907 (and d!1680626 b!5211489)))

(declare-fun lambda!261411 () Int)

(assert (=> bs!1210907 (= (= (head!11172 (t!373864 s!2326)) (h!67025 s!2326)) (= lambda!261411 lambda!261332))))

(assert (=> d!1680626 true))

(assert (=> d!1680626 (= (derivationStepZipper!1070 lt!2142223 (head!11172 (t!373864 s!2326))) (flatMap!527 lt!2142223 lambda!261411))))

(declare-fun bs!1210908 () Bool)

(assert (= bs!1210908 d!1680626))

(declare-fun m!6261758 () Bool)

(assert (=> bs!1210908 m!6261758))

(assert (=> b!5211678 d!1680626))

(declare-fun d!1680628 () Bool)

(assert (=> d!1680628 (= (head!11172 (t!373864 s!2326)) (h!67025 (t!373864 s!2326)))))

(assert (=> b!5211678 d!1680628))

(declare-fun d!1680630 () Bool)

(assert (=> d!1680630 (= (tail!10269 (t!373864 s!2326)) (t!373864 (t!373864 s!2326)))))

(assert (=> b!5211678 d!1680630))

(declare-fun b!5212474 () Bool)

(declare-fun e!3244934 () (Set Context!8368))

(declare-fun e!3244936 () (Set Context!8368))

(assert (=> b!5212474 (= e!3244934 e!3244936)))

(declare-fun c!898955 () Bool)

(assert (=> b!5212474 (= c!898955 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142235))))))))

(declare-fun b!5212475 () Bool)

(declare-fun e!3244935 () Bool)

(assert (=> b!5212475 (= e!3244935 (nullable!4969 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142235)))))))))

(declare-fun call!367137 () (Set Context!8368))

(declare-fun b!5212476 () Bool)

(assert (=> b!5212476 (= e!3244934 (set.union call!367137 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142235)))))) (h!67025 s!2326))))))

(declare-fun b!5212477 () Bool)

(assert (=> b!5212477 (= e!3244936 (as set.empty (Set Context!8368)))))

(declare-fun bm!367132 () Bool)

(assert (=> bm!367132 (= call!367137 (derivationStepZipperDown!248 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142235))))) (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142235)))))) (h!67025 s!2326)))))

(declare-fun d!1680632 () Bool)

(declare-fun c!898956 () Bool)

(assert (=> d!1680632 (= c!898956 e!3244935)))

(declare-fun res!2213859 () Bool)

(assert (=> d!1680632 (=> (not res!2213859) (not e!3244935))))

(assert (=> d!1680632 (= res!2213859 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142235))))))))

(assert (=> d!1680632 (= (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 lt!2142235))) (h!67025 s!2326)) e!3244934)))

(declare-fun b!5212478 () Bool)

(assert (=> b!5212478 (= e!3244936 call!367137)))

(assert (= (and d!1680632 res!2213859) b!5212475))

(assert (= (and d!1680632 c!898956) b!5212476))

(assert (= (and d!1680632 (not c!898956)) b!5212474))

(assert (= (and b!5212474 c!898955) b!5212478))

(assert (= (and b!5212474 (not c!898955)) b!5212477))

(assert (= (or b!5212476 b!5212478) bm!367132))

(declare-fun m!6261760 () Bool)

(assert (=> b!5212475 m!6261760))

(declare-fun m!6261762 () Bool)

(assert (=> b!5212476 m!6261762))

(declare-fun m!6261764 () Bool)

(assert (=> bm!367132 m!6261764))

(assert (=> b!5211723 d!1680632))

(declare-fun bs!1210909 () Bool)

(declare-fun d!1680634 () Bool)

(assert (= bs!1210909 (and d!1680634 d!1680600)))

(declare-fun lambda!261412 () Int)

(assert (=> bs!1210909 (= lambda!261412 lambda!261405)))

(declare-fun bs!1210910 () Bool)

(assert (= bs!1210910 (and d!1680634 d!1680620)))

(assert (=> bs!1210910 (= lambda!261412 lambda!261408)))

(assert (=> d!1680634 (= (nullableZipper!1226 lt!2142223) (exists!1963 lt!2142223 lambda!261412))))

(declare-fun bs!1210911 () Bool)

(assert (= bs!1210911 d!1680634))

(declare-fun m!6261766 () Bool)

(assert (=> bs!1210911 m!6261766))

(assert (=> b!5211677 d!1680634))

(declare-fun b!5212479 () Bool)

(declare-fun res!2213867 () Bool)

(declare-fun e!3244938 () Bool)

(assert (=> b!5212479 (=> (not res!2213867) (not e!3244938))))

(declare-fun call!367138 () Bool)

(assert (=> b!5212479 (= res!2213867 (not call!367138))))

(declare-fun b!5212480 () Bool)

(assert (=> b!5212480 (= e!3244938 (= (head!11172 (_2!35302 (get!20812 lt!2142331))) (c!898691 (regTwo!30112 r!7292))))))

(declare-fun b!5212481 () Bool)

(declare-fun e!3244939 () Bool)

(declare-fun e!3244942 () Bool)

(assert (=> b!5212481 (= e!3244939 e!3244942)))

(declare-fun res!2213864 () Bool)

(assert (=> b!5212481 (=> (not res!2213864) (not e!3244942))))

(declare-fun lt!2142399 () Bool)

(assert (=> b!5212481 (= res!2213864 (not lt!2142399))))

(declare-fun b!5212482 () Bool)

(declare-fun e!3244943 () Bool)

(assert (=> b!5212482 (= e!3244942 e!3244943)))

(declare-fun res!2213860 () Bool)

(assert (=> b!5212482 (=> res!2213860 e!3244943)))

(assert (=> b!5212482 (= res!2213860 call!367138)))

(declare-fun b!5212483 () Bool)

(assert (=> b!5212483 (= e!3244943 (not (= (head!11172 (_2!35302 (get!20812 lt!2142331))) (c!898691 (regTwo!30112 r!7292)))))))

(declare-fun b!5212484 () Bool)

(declare-fun e!3244941 () Bool)

(assert (=> b!5212484 (= e!3244941 (= lt!2142399 call!367138))))

(declare-fun b!5212485 () Bool)

(declare-fun res!2213862 () Bool)

(assert (=> b!5212485 (=> res!2213862 e!3244939)))

(assert (=> b!5212485 (= res!2213862 (not (is-ElementMatch!14800 (regTwo!30112 r!7292))))))

(declare-fun e!3244940 () Bool)

(assert (=> b!5212485 (= e!3244940 e!3244939)))

(declare-fun b!5212486 () Bool)

(declare-fun e!3244937 () Bool)

(assert (=> b!5212486 (= e!3244937 (nullable!4969 (regTwo!30112 r!7292)))))

(declare-fun b!5212488 () Bool)

(declare-fun res!2213865 () Bool)

(assert (=> b!5212488 (=> res!2213865 e!3244939)))

(assert (=> b!5212488 (= res!2213865 e!3244938)))

(declare-fun res!2213863 () Bool)

(assert (=> b!5212488 (=> (not res!2213863) (not e!3244938))))

(assert (=> b!5212488 (= res!2213863 lt!2142399)))

(declare-fun b!5212489 () Bool)

(declare-fun res!2213866 () Bool)

(assert (=> b!5212489 (=> res!2213866 e!3244943)))

(assert (=> b!5212489 (= res!2213866 (not (isEmpty!32491 (tail!10269 (_2!35302 (get!20812 lt!2142331))))))))

(declare-fun b!5212490 () Bool)

(declare-fun res!2213861 () Bool)

(assert (=> b!5212490 (=> (not res!2213861) (not e!3244938))))

(assert (=> b!5212490 (= res!2213861 (isEmpty!32491 (tail!10269 (_2!35302 (get!20812 lt!2142331)))))))

(declare-fun b!5212491 () Bool)

(assert (=> b!5212491 (= e!3244940 (not lt!2142399))))

(declare-fun b!5212492 () Bool)

(assert (=> b!5212492 (= e!3244937 (matchR!6985 (derivativeStep!4048 (regTwo!30112 r!7292) (head!11172 (_2!35302 (get!20812 lt!2142331)))) (tail!10269 (_2!35302 (get!20812 lt!2142331)))))))

(declare-fun bm!367133 () Bool)

(assert (=> bm!367133 (= call!367138 (isEmpty!32491 (_2!35302 (get!20812 lt!2142331))))))

(declare-fun d!1680636 () Bool)

(assert (=> d!1680636 e!3244941))

(declare-fun c!898959 () Bool)

(assert (=> d!1680636 (= c!898959 (is-EmptyExpr!14800 (regTwo!30112 r!7292)))))

(assert (=> d!1680636 (= lt!2142399 e!3244937)))

(declare-fun c!898957 () Bool)

(assert (=> d!1680636 (= c!898957 (isEmpty!32491 (_2!35302 (get!20812 lt!2142331))))))

(assert (=> d!1680636 (validRegex!6536 (regTwo!30112 r!7292))))

(assert (=> d!1680636 (= (matchR!6985 (regTwo!30112 r!7292) (_2!35302 (get!20812 lt!2142331))) lt!2142399)))

(declare-fun b!5212487 () Bool)

(assert (=> b!5212487 (= e!3244941 e!3244940)))

(declare-fun c!898958 () Bool)

(assert (=> b!5212487 (= c!898958 (is-EmptyLang!14800 (regTwo!30112 r!7292)))))

(assert (= (and d!1680636 c!898957) b!5212486))

(assert (= (and d!1680636 (not c!898957)) b!5212492))

(assert (= (and d!1680636 c!898959) b!5212484))

(assert (= (and d!1680636 (not c!898959)) b!5212487))

(assert (= (and b!5212487 c!898958) b!5212491))

(assert (= (and b!5212487 (not c!898958)) b!5212485))

(assert (= (and b!5212485 (not res!2213862)) b!5212488))

(assert (= (and b!5212488 res!2213863) b!5212479))

(assert (= (and b!5212479 res!2213867) b!5212490))

(assert (= (and b!5212490 res!2213861) b!5212480))

(assert (= (and b!5212488 (not res!2213865)) b!5212481))

(assert (= (and b!5212481 res!2213864) b!5212482))

(assert (= (and b!5212482 (not res!2213860)) b!5212489))

(assert (= (and b!5212489 (not res!2213866)) b!5212483))

(assert (= (or b!5212484 b!5212479 b!5212482) bm!367133))

(declare-fun m!6261768 () Bool)

(assert (=> d!1680636 m!6261768))

(declare-fun m!6261770 () Bool)

(assert (=> d!1680636 m!6261770))

(declare-fun m!6261772 () Bool)

(assert (=> b!5212489 m!6261772))

(assert (=> b!5212489 m!6261772))

(declare-fun m!6261774 () Bool)

(assert (=> b!5212489 m!6261774))

(declare-fun m!6261776 () Bool)

(assert (=> b!5212486 m!6261776))

(assert (=> b!5212490 m!6261772))

(assert (=> b!5212490 m!6261772))

(assert (=> b!5212490 m!6261774))

(declare-fun m!6261778 () Bool)

(assert (=> b!5212483 m!6261778))

(assert (=> b!5212480 m!6261778))

(assert (=> b!5212492 m!6261778))

(assert (=> b!5212492 m!6261778))

(declare-fun m!6261780 () Bool)

(assert (=> b!5212492 m!6261780))

(assert (=> b!5212492 m!6261772))

(assert (=> b!5212492 m!6261780))

(assert (=> b!5212492 m!6261772))

(declare-fun m!6261782 () Bool)

(assert (=> b!5212492 m!6261782))

(assert (=> bm!367133 m!6261768))

(assert (=> b!5211814 d!1680636))

(declare-fun d!1680638 () Bool)

(assert (=> d!1680638 (= (get!20812 lt!2142331) (v!50939 lt!2142331))))

(assert (=> b!5211814 d!1680638))

(assert (=> b!5211925 d!1680608))

(declare-fun c!898960 () Bool)

(declare-fun call!367139 () Bool)

(declare-fun bm!367134 () Bool)

(declare-fun c!898961 () Bool)

(assert (=> bm!367134 (= call!367139 (validRegex!6536 (ite c!898960 (reg!15129 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))) (ite c!898961 (regOne!30113 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))) (regOne!30112 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292)))))))))

(declare-fun b!5212494 () Bool)

(declare-fun e!3244949 () Bool)

(declare-fun e!3244947 () Bool)

(assert (=> b!5212494 (= e!3244949 e!3244947)))

(assert (=> b!5212494 (= c!898960 (is-Star!14800 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))))))

(declare-fun b!5212495 () Bool)

(declare-fun e!3244944 () Bool)

(declare-fun call!367140 () Bool)

(assert (=> b!5212495 (= e!3244944 call!367140)))

(declare-fun b!5212496 () Bool)

(declare-fun e!3244946 () Bool)

(assert (=> b!5212496 (= e!3244946 e!3244944)))

(declare-fun res!2213870 () Bool)

(assert (=> b!5212496 (=> (not res!2213870) (not e!3244944))))

(declare-fun call!367141 () Bool)

(assert (=> b!5212496 (= res!2213870 call!367141)))

(declare-fun bm!367135 () Bool)

(assert (=> bm!367135 (= call!367141 call!367139)))

(declare-fun b!5212497 () Bool)

(declare-fun e!3244948 () Bool)

(assert (=> b!5212497 (= e!3244947 e!3244948)))

(assert (=> b!5212497 (= c!898961 (is-Union!14800 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))))))

(declare-fun b!5212493 () Bool)

(declare-fun e!3244950 () Bool)

(assert (=> b!5212493 (= e!3244947 e!3244950)))

(declare-fun res!2213868 () Bool)

(assert (=> b!5212493 (= res!2213868 (not (nullable!4969 (reg!15129 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))))))))

(assert (=> b!5212493 (=> (not res!2213868) (not e!3244950))))

(declare-fun d!1680640 () Bool)

(declare-fun res!2213869 () Bool)

(assert (=> d!1680640 (=> res!2213869 e!3244949)))

(assert (=> d!1680640 (= res!2213869 (is-ElementMatch!14800 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))))))

(assert (=> d!1680640 (= (validRegex!6536 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))) e!3244949)))

(declare-fun b!5212498 () Bool)

(declare-fun e!3244945 () Bool)

(assert (=> b!5212498 (= e!3244945 call!367140)))

(declare-fun b!5212499 () Bool)

(declare-fun res!2213871 () Bool)

(assert (=> b!5212499 (=> (not res!2213871) (not e!3244945))))

(assert (=> b!5212499 (= res!2213871 call!367141)))

(assert (=> b!5212499 (= e!3244948 e!3244945)))

(declare-fun b!5212500 () Bool)

(declare-fun res!2213872 () Bool)

(assert (=> b!5212500 (=> res!2213872 e!3244946)))

(assert (=> b!5212500 (= res!2213872 (not (is-Concat!23645 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292)))))))

(assert (=> b!5212500 (= e!3244948 e!3244946)))

(declare-fun b!5212501 () Bool)

(assert (=> b!5212501 (= e!3244950 call!367139)))

(declare-fun bm!367136 () Bool)

(assert (=> bm!367136 (= call!367140 (validRegex!6536 (ite c!898961 (regTwo!30113 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))) (regTwo!30112 (ite c!898736 (regTwo!30113 r!7292) (regTwo!30112 r!7292))))))))

(assert (= (and d!1680640 (not res!2213869)) b!5212494))

(assert (= (and b!5212494 c!898960) b!5212493))

(assert (= (and b!5212494 (not c!898960)) b!5212497))

(assert (= (and b!5212493 res!2213868) b!5212501))

(assert (= (and b!5212497 c!898961) b!5212499))

(assert (= (and b!5212497 (not c!898961)) b!5212500))

(assert (= (and b!5212499 res!2213871) b!5212498))

(assert (= (and b!5212500 (not res!2213872)) b!5212496))

(assert (= (and b!5212496 res!2213870) b!5212495))

(assert (= (or b!5212498 b!5212495) bm!367136))

(assert (= (or b!5212499 b!5212496) bm!367135))

(assert (= (or b!5212501 bm!367135) bm!367134))

(declare-fun m!6261784 () Bool)

(assert (=> bm!367134 m!6261784))

(declare-fun m!6261786 () Bool)

(assert (=> b!5212493 m!6261786))

(declare-fun m!6261788 () Bool)

(assert (=> bm!367136 m!6261788))

(assert (=> bm!367001 d!1680640))

(declare-fun c!898962 () Bool)

(declare-fun call!367142 () Bool)

(declare-fun bm!367137 () Bool)

(declare-fun c!898963 () Bool)

(assert (=> bm!367137 (= call!367142 (validRegex!6536 (ite c!898962 (reg!15129 lt!2142317) (ite c!898963 (regOne!30113 lt!2142317) (regOne!30112 lt!2142317)))))))

(declare-fun b!5212503 () Bool)

(declare-fun e!3244956 () Bool)

(declare-fun e!3244954 () Bool)

(assert (=> b!5212503 (= e!3244956 e!3244954)))

(assert (=> b!5212503 (= c!898962 (is-Star!14800 lt!2142317))))

(declare-fun b!5212504 () Bool)

(declare-fun e!3244951 () Bool)

(declare-fun call!367143 () Bool)

(assert (=> b!5212504 (= e!3244951 call!367143)))

(declare-fun b!5212505 () Bool)

(declare-fun e!3244953 () Bool)

(assert (=> b!5212505 (= e!3244953 e!3244951)))

(declare-fun res!2213875 () Bool)

(assert (=> b!5212505 (=> (not res!2213875) (not e!3244951))))

(declare-fun call!367144 () Bool)

(assert (=> b!5212505 (= res!2213875 call!367144)))

(declare-fun bm!367138 () Bool)

(assert (=> bm!367138 (= call!367144 call!367142)))

(declare-fun b!5212506 () Bool)

(declare-fun e!3244955 () Bool)

(assert (=> b!5212506 (= e!3244954 e!3244955)))

(assert (=> b!5212506 (= c!898963 (is-Union!14800 lt!2142317))))

(declare-fun b!5212502 () Bool)

(declare-fun e!3244957 () Bool)

(assert (=> b!5212502 (= e!3244954 e!3244957)))

(declare-fun res!2213873 () Bool)

(assert (=> b!5212502 (= res!2213873 (not (nullable!4969 (reg!15129 lt!2142317))))))

(assert (=> b!5212502 (=> (not res!2213873) (not e!3244957))))

(declare-fun d!1680642 () Bool)

(declare-fun res!2213874 () Bool)

(assert (=> d!1680642 (=> res!2213874 e!3244956)))

(assert (=> d!1680642 (= res!2213874 (is-ElementMatch!14800 lt!2142317))))

(assert (=> d!1680642 (= (validRegex!6536 lt!2142317) e!3244956)))

(declare-fun b!5212507 () Bool)

(declare-fun e!3244952 () Bool)

(assert (=> b!5212507 (= e!3244952 call!367143)))

(declare-fun b!5212508 () Bool)

(declare-fun res!2213876 () Bool)

(assert (=> b!5212508 (=> (not res!2213876) (not e!3244952))))

(assert (=> b!5212508 (= res!2213876 call!367144)))

(assert (=> b!5212508 (= e!3244955 e!3244952)))

(declare-fun b!5212509 () Bool)

(declare-fun res!2213877 () Bool)

(assert (=> b!5212509 (=> res!2213877 e!3244953)))

(assert (=> b!5212509 (= res!2213877 (not (is-Concat!23645 lt!2142317)))))

(assert (=> b!5212509 (= e!3244955 e!3244953)))

(declare-fun b!5212510 () Bool)

(assert (=> b!5212510 (= e!3244957 call!367142)))

(declare-fun bm!367139 () Bool)

(assert (=> bm!367139 (= call!367143 (validRegex!6536 (ite c!898963 (regTwo!30113 lt!2142317) (regTwo!30112 lt!2142317))))))

(assert (= (and d!1680642 (not res!2213874)) b!5212503))

(assert (= (and b!5212503 c!898962) b!5212502))

(assert (= (and b!5212503 (not c!898962)) b!5212506))

(assert (= (and b!5212502 res!2213873) b!5212510))

(assert (= (and b!5212506 c!898963) b!5212508))

(assert (= (and b!5212506 (not c!898963)) b!5212509))

(assert (= (and b!5212508 res!2213876) b!5212507))

(assert (= (and b!5212509 (not res!2213877)) b!5212505))

(assert (= (and b!5212505 res!2213875) b!5212504))

(assert (= (or b!5212507 b!5212504) bm!367139))

(assert (= (or b!5212508 b!5212505) bm!367138))

(assert (= (or b!5212510 bm!367138) bm!367137))

(declare-fun m!6261790 () Bool)

(assert (=> bm!367137 m!6261790))

(declare-fun m!6261792 () Bool)

(assert (=> b!5212502 m!6261792))

(declare-fun m!6261794 () Bool)

(assert (=> bm!367139 m!6261794))

(assert (=> d!1680430 d!1680642))

(declare-fun d!1680644 () Bool)

(declare-fun res!2213882 () Bool)

(declare-fun e!3244962 () Bool)

(assert (=> d!1680644 (=> res!2213882 e!3244962)))

(assert (=> d!1680644 (= res!2213882 (is-Nil!60575 (exprs!4684 (h!67024 zl!343))))))

(assert (=> d!1680644 (= (forall!14234 (exprs!4684 (h!67024 zl!343)) lambda!261354) e!3244962)))

(declare-fun b!5212515 () Bool)

(declare-fun e!3244963 () Bool)

(assert (=> b!5212515 (= e!3244962 e!3244963)))

(declare-fun res!2213883 () Bool)

(assert (=> b!5212515 (=> (not res!2213883) (not e!3244963))))

(declare-fun dynLambda!23932 (Int Regex!14800) Bool)

(assert (=> b!5212515 (= res!2213883 (dynLambda!23932 lambda!261354 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5212516 () Bool)

(assert (=> b!5212516 (= e!3244963 (forall!14234 (t!373862 (exprs!4684 (h!67024 zl!343))) lambda!261354))))

(assert (= (and d!1680644 (not res!2213882)) b!5212515))

(assert (= (and b!5212515 res!2213883) b!5212516))

(declare-fun b_lambda!201597 () Bool)

(assert (=> (not b_lambda!201597) (not b!5212515)))

(declare-fun m!6261796 () Bool)

(assert (=> b!5212515 m!6261796))

(declare-fun m!6261798 () Bool)

(assert (=> b!5212516 m!6261798))

(assert (=> d!1680430 d!1680644))

(assert (=> d!1680476 d!1680470))

(declare-fun bm!367140 () Bool)

(declare-fun call!367145 () Bool)

(declare-fun c!898965 () Bool)

(declare-fun c!898964 () Bool)

(assert (=> bm!367140 (= call!367145 (validRegex!6536 (ite c!898964 (reg!15129 (regOne!30112 r!7292)) (ite c!898965 (regOne!30113 (regOne!30112 r!7292)) (regOne!30112 (regOne!30112 r!7292))))))))

(declare-fun b!5212518 () Bool)

(declare-fun e!3244969 () Bool)

(declare-fun e!3244967 () Bool)

(assert (=> b!5212518 (= e!3244969 e!3244967)))

(assert (=> b!5212518 (= c!898964 (is-Star!14800 (regOne!30112 r!7292)))))

(declare-fun b!5212519 () Bool)

(declare-fun e!3244964 () Bool)

(declare-fun call!367146 () Bool)

(assert (=> b!5212519 (= e!3244964 call!367146)))

(declare-fun b!5212520 () Bool)

(declare-fun e!3244966 () Bool)

(assert (=> b!5212520 (= e!3244966 e!3244964)))

(declare-fun res!2213886 () Bool)

(assert (=> b!5212520 (=> (not res!2213886) (not e!3244964))))

(declare-fun call!367147 () Bool)

(assert (=> b!5212520 (= res!2213886 call!367147)))

(declare-fun bm!367141 () Bool)

(assert (=> bm!367141 (= call!367147 call!367145)))

(declare-fun b!5212521 () Bool)

(declare-fun e!3244968 () Bool)

(assert (=> b!5212521 (= e!3244967 e!3244968)))

(assert (=> b!5212521 (= c!898965 (is-Union!14800 (regOne!30112 r!7292)))))

(declare-fun b!5212517 () Bool)

(declare-fun e!3244970 () Bool)

(assert (=> b!5212517 (= e!3244967 e!3244970)))

(declare-fun res!2213884 () Bool)

(assert (=> b!5212517 (= res!2213884 (not (nullable!4969 (reg!15129 (regOne!30112 r!7292)))))))

(assert (=> b!5212517 (=> (not res!2213884) (not e!3244970))))

(declare-fun d!1680646 () Bool)

(declare-fun res!2213885 () Bool)

(assert (=> d!1680646 (=> res!2213885 e!3244969)))

(assert (=> d!1680646 (= res!2213885 (is-ElementMatch!14800 (regOne!30112 r!7292)))))

(assert (=> d!1680646 (= (validRegex!6536 (regOne!30112 r!7292)) e!3244969)))

(declare-fun b!5212522 () Bool)

(declare-fun e!3244965 () Bool)

(assert (=> b!5212522 (= e!3244965 call!367146)))

(declare-fun b!5212523 () Bool)

(declare-fun res!2213887 () Bool)

(assert (=> b!5212523 (=> (not res!2213887) (not e!3244965))))

(assert (=> b!5212523 (= res!2213887 call!367147)))

(assert (=> b!5212523 (= e!3244968 e!3244965)))

(declare-fun b!5212524 () Bool)

(declare-fun res!2213888 () Bool)

(assert (=> b!5212524 (=> res!2213888 e!3244966)))

(assert (=> b!5212524 (= res!2213888 (not (is-Concat!23645 (regOne!30112 r!7292))))))

(assert (=> b!5212524 (= e!3244968 e!3244966)))

(declare-fun b!5212525 () Bool)

(assert (=> b!5212525 (= e!3244970 call!367145)))

(declare-fun bm!367142 () Bool)

(assert (=> bm!367142 (= call!367146 (validRegex!6536 (ite c!898965 (regTwo!30113 (regOne!30112 r!7292)) (regTwo!30112 (regOne!30112 r!7292)))))))

(assert (= (and d!1680646 (not res!2213885)) b!5212518))

(assert (= (and b!5212518 c!898964) b!5212517))

(assert (= (and b!5212518 (not c!898964)) b!5212521))

(assert (= (and b!5212517 res!2213884) b!5212525))

(assert (= (and b!5212521 c!898965) b!5212523))

(assert (= (and b!5212521 (not c!898965)) b!5212524))

(assert (= (and b!5212523 res!2213887) b!5212522))

(assert (= (and b!5212524 (not res!2213888)) b!5212520))

(assert (= (and b!5212520 res!2213886) b!5212519))

(assert (= (or b!5212522 b!5212519) bm!367142))

(assert (= (or b!5212523 b!5212520) bm!367141))

(assert (= (or b!5212525 bm!367141) bm!367140))

(declare-fun m!6261800 () Bool)

(assert (=> bm!367140 m!6261800))

(declare-fun m!6261802 () Bool)

(assert (=> b!5212517 m!6261802))

(declare-fun m!6261804 () Bool)

(assert (=> bm!367142 m!6261804))

(assert (=> d!1680476 d!1680646))

(assert (=> d!1680476 d!1680480))

(declare-fun d!1680648 () Bool)

(assert (=> d!1680648 (= (Exists!1981 lambda!261361) (choose!38744 lambda!261361))))

(declare-fun bs!1210912 () Bool)

(assert (= bs!1210912 d!1680648))

(declare-fun m!6261806 () Bool)

(assert (=> bs!1210912 m!6261806))

(assert (=> d!1680476 d!1680648))

(declare-fun bs!1210913 () Bool)

(declare-fun d!1680650 () Bool)

(assert (= bs!1210913 (and d!1680650 b!5212447)))

(declare-fun lambda!261415 () Int)

(assert (=> bs!1210913 (not (= lambda!261415 lambda!261407))))

(declare-fun bs!1210914 () Bool)

(assert (= bs!1210914 (and d!1680650 b!5211886)))

(assert (=> bs!1210914 (not (= lambda!261415 lambda!261372))))

(declare-fun bs!1210915 () Bool)

(assert (= bs!1210915 (and d!1680650 b!5211884)))

(assert (=> bs!1210915 (not (= lambda!261415 lambda!261373))))

(declare-fun bs!1210916 () Bool)

(assert (= bs!1210916 (and d!1680650 b!5212449)))

(assert (=> bs!1210916 (not (= lambda!261415 lambda!261406))))

(declare-fun bs!1210917 () Bool)

(assert (= bs!1210917 (and d!1680650 d!1680478)))

(assert (=> bs!1210917 (not (= lambda!261415 lambda!261367))))

(declare-fun bs!1210918 () Bool)

(assert (= bs!1210918 (and d!1680650 b!5211487)))

(assert (=> bs!1210918 (= lambda!261415 lambda!261330)))

(assert (=> bs!1210918 (not (= lambda!261415 lambda!261331))))

(assert (=> bs!1210917 (= lambda!261415 lambda!261366)))

(declare-fun bs!1210919 () Bool)

(assert (= bs!1210919 (and d!1680650 d!1680476)))

(assert (=> bs!1210919 (= lambda!261415 lambda!261361)))

(assert (=> d!1680650 true))

(assert (=> d!1680650 true))

(assert (=> d!1680650 true))

(assert (=> d!1680650 (= (isDefined!11614 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326)) (Exists!1981 lambda!261415))))

(assert (=> d!1680650 true))

(declare-fun _$89!1373 () Unit!152466)

(assert (=> d!1680650 (= (choose!38745 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326) _$89!1373)))

(declare-fun bs!1210920 () Bool)

(assert (= bs!1210920 d!1680650))

(assert (=> bs!1210920 m!6261078))

(assert (=> bs!1210920 m!6261078))

(assert (=> bs!1210920 m!6261080))

(declare-fun m!6261808 () Bool)

(assert (=> bs!1210920 m!6261808))

(assert (=> d!1680476 d!1680650))

(declare-fun b!5212530 () Bool)

(declare-fun e!3244974 () (Set Context!8368))

(declare-fun call!367148 () (Set Context!8368))

(assert (=> b!5212530 (= e!3244974 call!367148)))

(declare-fun bm!367143 () Bool)

(declare-fun call!367152 () (Set Context!8368))

(declare-fun call!367153 () (Set Context!8368))

(assert (=> bm!367143 (= call!367152 call!367153)))

(declare-fun d!1680652 () Bool)

(declare-fun c!898966 () Bool)

(assert (=> d!1680652 (= c!898966 (and (is-ElementMatch!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))) (= (c!898691 (h!67023 (exprs!4684 (h!67024 zl!343)))) (h!67025 s!2326))))))

(declare-fun e!3244977 () (Set Context!8368))

(assert (=> d!1680652 (= (derivationStepZipperDown!248 (h!67023 (exprs!4684 (h!67024 zl!343))) (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))) (h!67025 s!2326)) e!3244977)))

(declare-fun b!5212531 () Bool)

(declare-fun e!3244973 () (Set Context!8368))

(declare-fun call!367151 () (Set Context!8368))

(assert (=> b!5212531 (= e!3244973 (set.union call!367151 call!367152))))

(declare-fun bm!367144 () Bool)

(assert (=> bm!367144 (= call!367148 call!367152)))

(declare-fun bm!367145 () Bool)

(declare-fun call!367150 () List!60699)

(declare-fun call!367149 () List!60699)

(assert (=> bm!367145 (= call!367150 call!367149)))

(declare-fun b!5212532 () Bool)

(declare-fun e!3244976 () (Set Context!8368))

(assert (=> b!5212532 (= e!3244976 call!367148)))

(declare-fun bm!367146 () Bool)

(declare-fun c!898970 () Bool)

(assert (=> bm!367146 (= call!367151 (derivationStepZipperDown!248 (ite c!898970 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))) (ite c!898970 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))) (Context!8369 call!367149)) (h!67025 s!2326)))))

(declare-fun c!898968 () Bool)

(declare-fun bm!367147 () Bool)

(declare-fun c!898969 () Bool)

(assert (=> bm!367147 (= call!367153 (derivationStepZipperDown!248 (ite c!898970 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898968 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898969 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343))))))) (ite (or c!898970 c!898968) (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))) (Context!8369 call!367150)) (h!67025 s!2326)))))

(declare-fun b!5212533 () Bool)

(declare-fun c!898967 () Bool)

(assert (=> b!5212533 (= c!898967 (is-Star!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> b!5212533 (= e!3244974 e!3244976)))

(declare-fun b!5212534 () Bool)

(assert (=> b!5212534 (= e!3244973 e!3244974)))

(assert (=> b!5212534 (= c!898969 (is-Concat!23645 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5212535 () Bool)

(declare-fun e!3244975 () Bool)

(assert (=> b!5212535 (= e!3244975 (nullable!4969 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun bm!367148 () Bool)

(assert (=> bm!367148 (= call!367149 ($colon$colon!1276 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343))))) (ite (or c!898968 c!898969) (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (h!67023 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun b!5212536 () Bool)

(assert (=> b!5212536 (= c!898968 e!3244975)))

(declare-fun res!2213893 () Bool)

(assert (=> b!5212536 (=> (not res!2213893) (not e!3244975))))

(assert (=> b!5212536 (= res!2213893 (is-Concat!23645 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun e!3244978 () (Set Context!8368))

(assert (=> b!5212536 (= e!3244978 e!3244973)))

(declare-fun b!5212537 () Bool)

(assert (=> b!5212537 (= e!3244977 e!3244978)))

(assert (=> b!5212537 (= c!898970 (is-Union!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5212538 () Bool)

(assert (=> b!5212538 (= e!3244976 (as set.empty (Set Context!8368)))))

(declare-fun b!5212539 () Bool)

(assert (=> b!5212539 (= e!3244978 (set.union call!367153 call!367151))))

(declare-fun b!5212540 () Bool)

(assert (=> b!5212540 (= e!3244977 (set.insert (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680652 c!898966) b!5212540))

(assert (= (and d!1680652 (not c!898966)) b!5212537))

(assert (= (and b!5212537 c!898970) b!5212539))

(assert (= (and b!5212537 (not c!898970)) b!5212536))

(assert (= (and b!5212536 res!2213893) b!5212535))

(assert (= (and b!5212536 c!898968) b!5212531))

(assert (= (and b!5212536 (not c!898968)) b!5212534))

(assert (= (and b!5212534 c!898969) b!5212530))

(assert (= (and b!5212534 (not c!898969)) b!5212533))

(assert (= (and b!5212533 c!898967) b!5212532))

(assert (= (and b!5212533 (not c!898967)) b!5212538))

(assert (= (or b!5212530 b!5212532) bm!367145))

(assert (= (or b!5212530 b!5212532) bm!367144))

(assert (= (or b!5212531 bm!367145) bm!367148))

(assert (= (or b!5212531 bm!367144) bm!367143))

(assert (= (or b!5212539 b!5212531) bm!367146))

(assert (= (or b!5212539 bm!367143) bm!367147))

(declare-fun m!6261810 () Bool)

(assert (=> bm!367146 m!6261810))

(declare-fun m!6261812 () Bool)

(assert (=> bm!367147 m!6261812))

(assert (=> b!5212535 m!6261280))

(declare-fun m!6261814 () Bool)

(assert (=> bm!367148 m!6261814))

(declare-fun m!6261816 () Bool)

(assert (=> b!5212540 m!6261816))

(assert (=> bm!367024 d!1680652))

(declare-fun d!1680654 () Bool)

(declare-fun c!898971 () Bool)

(assert (=> d!1680654 (= c!898971 (isEmpty!32491 (tail!10269 (t!373864 s!2326))))))

(declare-fun e!3244979 () Bool)

(assert (=> d!1680654 (= (matchZipper!1044 (derivationStepZipper!1070 lt!2142225 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))) e!3244979)))

(declare-fun b!5212541 () Bool)

(assert (=> b!5212541 (= e!3244979 (nullableZipper!1226 (derivationStepZipper!1070 lt!2142225 (head!11172 (t!373864 s!2326)))))))

(declare-fun b!5212542 () Bool)

(assert (=> b!5212542 (= e!3244979 (matchZipper!1044 (derivationStepZipper!1070 (derivationStepZipper!1070 lt!2142225 (head!11172 (t!373864 s!2326))) (head!11172 (tail!10269 (t!373864 s!2326)))) (tail!10269 (tail!10269 (t!373864 s!2326)))))))

(assert (= (and d!1680654 c!898971) b!5212541))

(assert (= (and d!1680654 (not c!898971)) b!5212542))

(assert (=> d!1680654 m!6261240))

(assert (=> d!1680654 m!6261746))

(assert (=> b!5212541 m!6261374))

(declare-fun m!6261818 () Bool)

(assert (=> b!5212541 m!6261818))

(assert (=> b!5212542 m!6261240))

(assert (=> b!5212542 m!6261750))

(assert (=> b!5212542 m!6261374))

(assert (=> b!5212542 m!6261750))

(declare-fun m!6261820 () Bool)

(assert (=> b!5212542 m!6261820))

(assert (=> b!5212542 m!6261240))

(assert (=> b!5212542 m!6261754))

(assert (=> b!5212542 m!6261820))

(assert (=> b!5212542 m!6261754))

(declare-fun m!6261822 () Bool)

(assert (=> b!5212542 m!6261822))

(assert (=> b!5211842 d!1680654))

(declare-fun bs!1210921 () Bool)

(declare-fun d!1680656 () Bool)

(assert (= bs!1210921 (and d!1680656 b!5211489)))

(declare-fun lambda!261416 () Int)

(assert (=> bs!1210921 (= (= (head!11172 (t!373864 s!2326)) (h!67025 s!2326)) (= lambda!261416 lambda!261332))))

(declare-fun bs!1210922 () Bool)

(assert (= bs!1210922 (and d!1680656 d!1680626)))

(assert (=> bs!1210922 (= lambda!261416 lambda!261411)))

(assert (=> d!1680656 true))

(assert (=> d!1680656 (= (derivationStepZipper!1070 lt!2142225 (head!11172 (t!373864 s!2326))) (flatMap!527 lt!2142225 lambda!261416))))

(declare-fun bs!1210923 () Bool)

(assert (= bs!1210923 d!1680656))

(declare-fun m!6261824 () Bool)

(assert (=> bs!1210923 m!6261824))

(assert (=> b!5211842 d!1680656))

(assert (=> b!5211842 d!1680628))

(assert (=> b!5211842 d!1680630))

(assert (=> b!5211760 d!1680448))

(declare-fun d!1680658 () Bool)

(assert (=> d!1680658 true))

(declare-fun setRes!33119 () Bool)

(assert (=> d!1680658 setRes!33119))

(declare-fun condSetEmpty!33119 () Bool)

(declare-fun res!2213896 () (Set Context!8368))

(assert (=> d!1680658 (= condSetEmpty!33119 (= res!2213896 (as set.empty (Set Context!8368))))))

(assert (=> d!1680658 (= (choose!38743 lt!2142239 lambda!261332) res!2213896)))

(declare-fun setIsEmpty!33119 () Bool)

(assert (=> setIsEmpty!33119 setRes!33119))

(declare-fun setElem!33119 () Context!8368)

(declare-fun tp!1461687 () Bool)

(declare-fun setNonEmpty!33119 () Bool)

(declare-fun e!3244982 () Bool)

(assert (=> setNonEmpty!33119 (= setRes!33119 (and tp!1461687 (inv!80248 setElem!33119) e!3244982))))

(declare-fun setRest!33119 () (Set Context!8368))

(assert (=> setNonEmpty!33119 (= res!2213896 (set.union (set.insert setElem!33119 (as set.empty (Set Context!8368))) setRest!33119))))

(declare-fun b!5212545 () Bool)

(declare-fun tp!1461686 () Bool)

(assert (=> b!5212545 (= e!3244982 tp!1461686)))

(assert (= (and d!1680658 condSetEmpty!33119) setIsEmpty!33119))

(assert (= (and d!1680658 (not condSetEmpty!33119)) setNonEmpty!33119))

(assert (= setNonEmpty!33119 b!5212545))

(declare-fun m!6261826 () Bool)

(assert (=> setNonEmpty!33119 m!6261826))

(assert (=> d!1680464 d!1680658))

(declare-fun d!1680660 () Bool)

(assert (=> d!1680660 (= (nullable!4969 (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))) (nullableFct!1378 (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))

(declare-fun bs!1210924 () Bool)

(assert (= bs!1210924 d!1680660))

(declare-fun m!6261828 () Bool)

(assert (=> bs!1210924 m!6261828))

(assert (=> b!5211780 d!1680660))

(declare-fun d!1680662 () Bool)

(assert (=> d!1680662 (= (isEmpty!32491 (t!373864 s!2326)) (is-Nil!60577 (t!373864 s!2326)))))

(assert (=> d!1680488 d!1680662))

(assert (=> d!1680444 d!1680446))

(declare-fun d!1680664 () Bool)

(assert (=> d!1680664 (= (flatMap!527 z!1189 lambda!261332) (dynLambda!23930 lambda!261332 (h!67024 zl!343)))))

(assert (=> d!1680664 true))

(declare-fun _$13!1690 () Unit!152466)

(assert (=> d!1680664 (= (choose!38742 z!1189 (h!67024 zl!343) lambda!261332) _$13!1690)))

(declare-fun b_lambda!201599 () Bool)

(assert (=> (not b_lambda!201599) (not d!1680664)))

(declare-fun bs!1210925 () Bool)

(assert (= bs!1210925 d!1680664))

(assert (=> bs!1210925 m!6261028))

(assert (=> bs!1210925 m!6261254))

(assert (=> d!1680444 d!1680664))

(declare-fun d!1680666 () Bool)

(declare-fun c!898972 () Bool)

(assert (=> d!1680666 (= c!898972 (isEmpty!32491 (tail!10269 (t!373864 s!2326))))))

(declare-fun e!3244983 () Bool)

(assert (=> d!1680666 (= (matchZipper!1044 (derivationStepZipper!1070 lt!2142236 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))) e!3244983)))

(declare-fun b!5212546 () Bool)

(assert (=> b!5212546 (= e!3244983 (nullableZipper!1226 (derivationStepZipper!1070 lt!2142236 (head!11172 (t!373864 s!2326)))))))

(declare-fun b!5212547 () Bool)

(assert (=> b!5212547 (= e!3244983 (matchZipper!1044 (derivationStepZipper!1070 (derivationStepZipper!1070 lt!2142236 (head!11172 (t!373864 s!2326))) (head!11172 (tail!10269 (t!373864 s!2326)))) (tail!10269 (tail!10269 (t!373864 s!2326)))))))

(assert (= (and d!1680666 c!898972) b!5212546))

(assert (= (and d!1680666 (not c!898972)) b!5212547))

(assert (=> d!1680666 m!6261240))

(assert (=> d!1680666 m!6261746))

(assert (=> b!5212546 m!6261362))

(declare-fun m!6261830 () Bool)

(assert (=> b!5212546 m!6261830))

(assert (=> b!5212547 m!6261240))

(assert (=> b!5212547 m!6261750))

(assert (=> b!5212547 m!6261362))

(assert (=> b!5212547 m!6261750))

(declare-fun m!6261832 () Bool)

(assert (=> b!5212547 m!6261832))

(assert (=> b!5212547 m!6261240))

(assert (=> b!5212547 m!6261754))

(assert (=> b!5212547 m!6261832))

(assert (=> b!5212547 m!6261754))

(declare-fun m!6261834 () Bool)

(assert (=> b!5212547 m!6261834))

(assert (=> b!5211831 d!1680666))

(declare-fun bs!1210926 () Bool)

(declare-fun d!1680668 () Bool)

(assert (= bs!1210926 (and d!1680668 b!5211489)))

(declare-fun lambda!261417 () Int)

(assert (=> bs!1210926 (= (= (head!11172 (t!373864 s!2326)) (h!67025 s!2326)) (= lambda!261417 lambda!261332))))

(declare-fun bs!1210927 () Bool)

(assert (= bs!1210927 (and d!1680668 d!1680626)))

(assert (=> bs!1210927 (= lambda!261417 lambda!261411)))

(declare-fun bs!1210928 () Bool)

(assert (= bs!1210928 (and d!1680668 d!1680656)))

(assert (=> bs!1210928 (= lambda!261417 lambda!261416)))

(assert (=> d!1680668 true))

(assert (=> d!1680668 (= (derivationStepZipper!1070 lt!2142236 (head!11172 (t!373864 s!2326))) (flatMap!527 lt!2142236 lambda!261417))))

(declare-fun bs!1210929 () Bool)

(assert (= bs!1210929 d!1680668))

(declare-fun m!6261836 () Bool)

(assert (=> bs!1210929 m!6261836))

(assert (=> b!5211831 d!1680668))

(assert (=> b!5211831 d!1680628))

(assert (=> b!5211831 d!1680630))

(declare-fun b!5212548 () Bool)

(declare-fun e!3244985 () (Set Context!8368))

(declare-fun call!367154 () (Set Context!8368))

(assert (=> b!5212548 (= e!3244985 call!367154)))

(declare-fun bm!367149 () Bool)

(declare-fun call!367158 () (Set Context!8368))

(declare-fun call!367159 () (Set Context!8368))

(assert (=> bm!367149 (= call!367158 call!367159)))

(declare-fun d!1680670 () Bool)

(declare-fun c!898973 () Bool)

(assert (=> d!1680670 (= c!898973 (and (is-ElementMatch!14800 (h!67023 (exprs!4684 lt!2142238))) (= (c!898691 (h!67023 (exprs!4684 lt!2142238))) (h!67025 s!2326))))))

(declare-fun e!3244988 () (Set Context!8368))

(assert (=> d!1680670 (= (derivationStepZipperDown!248 (h!67023 (exprs!4684 lt!2142238)) (Context!8369 (t!373862 (exprs!4684 lt!2142238))) (h!67025 s!2326)) e!3244988)))

(declare-fun b!5212549 () Bool)

(declare-fun e!3244984 () (Set Context!8368))

(declare-fun call!367157 () (Set Context!8368))

(assert (=> b!5212549 (= e!3244984 (set.union call!367157 call!367158))))

(declare-fun bm!367150 () Bool)

(assert (=> bm!367150 (= call!367154 call!367158)))

(declare-fun bm!367151 () Bool)

(declare-fun call!367156 () List!60699)

(declare-fun call!367155 () List!60699)

(assert (=> bm!367151 (= call!367156 call!367155)))

(declare-fun b!5212550 () Bool)

(declare-fun e!3244987 () (Set Context!8368))

(assert (=> b!5212550 (= e!3244987 call!367154)))

(declare-fun c!898977 () Bool)

(declare-fun bm!367152 () Bool)

(assert (=> bm!367152 (= call!367157 (derivationStepZipperDown!248 (ite c!898977 (regTwo!30113 (h!67023 (exprs!4684 lt!2142238))) (regOne!30112 (h!67023 (exprs!4684 lt!2142238)))) (ite c!898977 (Context!8369 (t!373862 (exprs!4684 lt!2142238))) (Context!8369 call!367155)) (h!67025 s!2326)))))

(declare-fun c!898976 () Bool)

(declare-fun bm!367153 () Bool)

(declare-fun c!898975 () Bool)

(assert (=> bm!367153 (= call!367159 (derivationStepZipperDown!248 (ite c!898977 (regOne!30113 (h!67023 (exprs!4684 lt!2142238))) (ite c!898975 (regTwo!30112 (h!67023 (exprs!4684 lt!2142238))) (ite c!898976 (regOne!30112 (h!67023 (exprs!4684 lt!2142238))) (reg!15129 (h!67023 (exprs!4684 lt!2142238)))))) (ite (or c!898977 c!898975) (Context!8369 (t!373862 (exprs!4684 lt!2142238))) (Context!8369 call!367156)) (h!67025 s!2326)))))

(declare-fun b!5212551 () Bool)

(declare-fun c!898974 () Bool)

(assert (=> b!5212551 (= c!898974 (is-Star!14800 (h!67023 (exprs!4684 lt!2142238))))))

(assert (=> b!5212551 (= e!3244985 e!3244987)))

(declare-fun b!5212552 () Bool)

(assert (=> b!5212552 (= e!3244984 e!3244985)))

(assert (=> b!5212552 (= c!898976 (is-Concat!23645 (h!67023 (exprs!4684 lt!2142238))))))

(declare-fun b!5212553 () Bool)

(declare-fun e!3244986 () Bool)

(assert (=> b!5212553 (= e!3244986 (nullable!4969 (regOne!30112 (h!67023 (exprs!4684 lt!2142238)))))))

(declare-fun bm!367154 () Bool)

(assert (=> bm!367154 (= call!367155 ($colon$colon!1276 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142238)))) (ite (or c!898975 c!898976) (regTwo!30112 (h!67023 (exprs!4684 lt!2142238))) (h!67023 (exprs!4684 lt!2142238)))))))

(declare-fun b!5212554 () Bool)

(assert (=> b!5212554 (= c!898975 e!3244986)))

(declare-fun res!2213897 () Bool)

(assert (=> b!5212554 (=> (not res!2213897) (not e!3244986))))

(assert (=> b!5212554 (= res!2213897 (is-Concat!23645 (h!67023 (exprs!4684 lt!2142238))))))

(declare-fun e!3244989 () (Set Context!8368))

(assert (=> b!5212554 (= e!3244989 e!3244984)))

(declare-fun b!5212555 () Bool)

(assert (=> b!5212555 (= e!3244988 e!3244989)))

(assert (=> b!5212555 (= c!898977 (is-Union!14800 (h!67023 (exprs!4684 lt!2142238))))))

(declare-fun b!5212556 () Bool)

(assert (=> b!5212556 (= e!3244987 (as set.empty (Set Context!8368)))))

(declare-fun b!5212557 () Bool)

(assert (=> b!5212557 (= e!3244989 (set.union call!367159 call!367157))))

(declare-fun b!5212558 () Bool)

(assert (=> b!5212558 (= e!3244988 (set.insert (Context!8369 (t!373862 (exprs!4684 lt!2142238))) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680670 c!898973) b!5212558))

(assert (= (and d!1680670 (not c!898973)) b!5212555))

(assert (= (and b!5212555 c!898977) b!5212557))

(assert (= (and b!5212555 (not c!898977)) b!5212554))

(assert (= (and b!5212554 res!2213897) b!5212553))

(assert (= (and b!5212554 c!898975) b!5212549))

(assert (= (and b!5212554 (not c!898975)) b!5212552))

(assert (= (and b!5212552 c!898976) b!5212548))

(assert (= (and b!5212552 (not c!898976)) b!5212551))

(assert (= (and b!5212551 c!898974) b!5212550))

(assert (= (and b!5212551 (not c!898974)) b!5212556))

(assert (= (or b!5212548 b!5212550) bm!367151))

(assert (= (or b!5212548 b!5212550) bm!367150))

(assert (= (or b!5212549 bm!367151) bm!367154))

(assert (= (or b!5212549 bm!367150) bm!367149))

(assert (= (or b!5212557 b!5212549) bm!367152))

(assert (= (or b!5212557 bm!367149) bm!367153))

(declare-fun m!6261838 () Bool)

(assert (=> bm!367152 m!6261838))

(declare-fun m!6261840 () Bool)

(assert (=> bm!367153 m!6261840))

(declare-fun m!6261842 () Bool)

(assert (=> b!5212553 m!6261842))

(declare-fun m!6261844 () Bool)

(assert (=> bm!367154 m!6261844))

(declare-fun m!6261846 () Bool)

(assert (=> b!5212558 m!6261846))

(assert (=> bm!367037 d!1680670))

(declare-fun d!1680672 () Bool)

(assert (=> d!1680672 (= (isEmpty!32487 (unfocusZipperList!242 zl!343)) (is-Nil!60575 (unfocusZipperList!242 zl!343)))))

(assert (=> b!5211636 d!1680672))

(declare-fun d!1680674 () Bool)

(assert (=> d!1680674 (= (isEmpty!32491 s!2326) (is-Nil!60577 s!2326))))

(assert (=> bm!367049 d!1680674))

(declare-fun bm!367155 () Bool)

(declare-fun c!898979 () Bool)

(declare-fun call!367160 () Bool)

(declare-fun c!898978 () Bool)

(assert (=> bm!367155 (= call!367160 (validRegex!6536 (ite c!898978 (reg!15129 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))) (ite c!898979 (regOne!30113 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))) (regOne!30112 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292))))))))))

(declare-fun b!5212560 () Bool)

(declare-fun e!3244995 () Bool)

(declare-fun e!3244993 () Bool)

(assert (=> b!5212560 (= e!3244995 e!3244993)))

(assert (=> b!5212560 (= c!898978 (is-Star!14800 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))))))

(declare-fun b!5212561 () Bool)

(declare-fun e!3244990 () Bool)

(declare-fun call!367161 () Bool)

(assert (=> b!5212561 (= e!3244990 call!367161)))

(declare-fun b!5212562 () Bool)

(declare-fun e!3244992 () Bool)

(assert (=> b!5212562 (= e!3244992 e!3244990)))

(declare-fun res!2213900 () Bool)

(assert (=> b!5212562 (=> (not res!2213900) (not e!3244990))))

(declare-fun call!367162 () Bool)

(assert (=> b!5212562 (= res!2213900 call!367162)))

(declare-fun bm!367156 () Bool)

(assert (=> bm!367156 (= call!367162 call!367160)))

(declare-fun b!5212563 () Bool)

(declare-fun e!3244994 () Bool)

(assert (=> b!5212563 (= e!3244993 e!3244994)))

(assert (=> b!5212563 (= c!898979 (is-Union!14800 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))))))

(declare-fun b!5212559 () Bool)

(declare-fun e!3244996 () Bool)

(assert (=> b!5212559 (= e!3244993 e!3244996)))

(declare-fun res!2213898 () Bool)

(assert (=> b!5212559 (= res!2213898 (not (nullable!4969 (reg!15129 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))))))))

(assert (=> b!5212559 (=> (not res!2213898) (not e!3244996))))

(declare-fun d!1680676 () Bool)

(declare-fun res!2213899 () Bool)

(assert (=> d!1680676 (=> res!2213899 e!3244995)))

(assert (=> d!1680676 (= res!2213899 (is-ElementMatch!14800 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))))))

(assert (=> d!1680676 (= (validRegex!6536 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))) e!3244995)))

(declare-fun b!5212564 () Bool)

(declare-fun e!3244991 () Bool)

(assert (=> b!5212564 (= e!3244991 call!367161)))

(declare-fun b!5212565 () Bool)

(declare-fun res!2213901 () Bool)

(assert (=> b!5212565 (=> (not res!2213901) (not e!3244991))))

(assert (=> b!5212565 (= res!2213901 call!367162)))

(assert (=> b!5212565 (= e!3244994 e!3244991)))

(declare-fun b!5212566 () Bool)

(declare-fun res!2213902 () Bool)

(assert (=> b!5212566 (=> res!2213902 e!3244992)))

(assert (=> b!5212566 (= res!2213902 (not (is-Concat!23645 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292))))))))

(assert (=> b!5212566 (= e!3244994 e!3244992)))

(declare-fun b!5212567 () Bool)

(assert (=> b!5212567 (= e!3244996 call!367160)))

(declare-fun bm!367157 () Bool)

(assert (=> bm!367157 (= call!367161 (validRegex!6536 (ite c!898979 (regTwo!30113 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))) (regTwo!30112 (ite c!898735 (reg!15129 r!7292) (ite c!898736 (regOne!30113 r!7292) (regOne!30112 r!7292)))))))))

(assert (= (and d!1680676 (not res!2213899)) b!5212560))

(assert (= (and b!5212560 c!898978) b!5212559))

(assert (= (and b!5212560 (not c!898978)) b!5212563))

(assert (= (and b!5212559 res!2213898) b!5212567))

(assert (= (and b!5212563 c!898979) b!5212565))

(assert (= (and b!5212563 (not c!898979)) b!5212566))

(assert (= (and b!5212565 res!2213901) b!5212564))

(assert (= (and b!5212566 (not res!2213902)) b!5212562))

(assert (= (and b!5212562 res!2213900) b!5212561))

(assert (= (or b!5212564 b!5212561) bm!367157))

(assert (= (or b!5212565 b!5212562) bm!367156))

(assert (= (or b!5212567 bm!367156) bm!367155))

(declare-fun m!6261848 () Bool)

(assert (=> bm!367155 m!6261848))

(declare-fun m!6261850 () Bool)

(assert (=> b!5212559 m!6261850))

(declare-fun m!6261852 () Bool)

(assert (=> bm!367157 m!6261852))

(assert (=> bm!366999 d!1680676))

(declare-fun b!5212568 () Bool)

(declare-fun e!3244998 () (Set Context!8368))

(declare-fun call!367163 () (Set Context!8368))

(assert (=> b!5212568 (= e!3244998 call!367163)))

(declare-fun bm!367158 () Bool)

(declare-fun call!367167 () (Set Context!8368))

(declare-fun call!367168 () (Set Context!8368))

(assert (=> bm!367158 (= call!367167 call!367168)))

(declare-fun c!898980 () Bool)

(declare-fun d!1680678 () Bool)

(assert (=> d!1680678 (= c!898980 (and (is-ElementMatch!14800 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))) (= (c!898691 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))) (h!67025 s!2326))))))

(declare-fun e!3245001 () (Set Context!8368))

(assert (=> d!1680678 (= (derivationStepZipperDown!248 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))) (ite c!898766 lt!2142235 (Context!8369 call!367031)) (h!67025 s!2326)) e!3245001)))

(declare-fun b!5212569 () Bool)

(declare-fun e!3244997 () (Set Context!8368))

(declare-fun call!367166 () (Set Context!8368))

(assert (=> b!5212569 (= e!3244997 (set.union call!367166 call!367167))))

(declare-fun bm!367159 () Bool)

(assert (=> bm!367159 (= call!367163 call!367167)))

(declare-fun bm!367160 () Bool)

(declare-fun call!367165 () List!60699)

(declare-fun call!367164 () List!60699)

(assert (=> bm!367160 (= call!367165 call!367164)))

(declare-fun b!5212570 () Bool)

(declare-fun e!3245000 () (Set Context!8368))

(assert (=> b!5212570 (= e!3245000 call!367163)))

(declare-fun bm!367161 () Bool)

(declare-fun c!898984 () Bool)

(assert (=> bm!367161 (= call!367166 (derivationStepZipperDown!248 (ite c!898984 (regTwo!30113 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))) (regOne!30112 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))))) (ite c!898984 (ite c!898766 lt!2142235 (Context!8369 call!367031)) (Context!8369 call!367164)) (h!67025 s!2326)))))

(declare-fun c!898983 () Bool)

(declare-fun c!898982 () Bool)

(declare-fun bm!367162 () Bool)

(assert (=> bm!367162 (= call!367168 (derivationStepZipperDown!248 (ite c!898984 (regOne!30113 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))) (ite c!898982 (regTwo!30112 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))) (ite c!898983 (regOne!30112 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))) (reg!15129 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))))))) (ite (or c!898984 c!898982) (ite c!898766 lt!2142235 (Context!8369 call!367031)) (Context!8369 call!367165)) (h!67025 s!2326)))))

(declare-fun b!5212571 () Bool)

(declare-fun c!898981 () Bool)

(assert (=> b!5212571 (= c!898981 (is-Star!14800 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))))))

(assert (=> b!5212571 (= e!3244998 e!3245000)))

(declare-fun b!5212572 () Bool)

(assert (=> b!5212572 (= e!3244997 e!3244998)))

(assert (=> b!5212572 (= c!898983 (is-Concat!23645 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212573 () Bool)

(declare-fun e!3244999 () Bool)

(assert (=> b!5212573 (= e!3244999 (nullable!4969 (regOne!30112 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))))))))

(declare-fun bm!367163 () Bool)

(assert (=> bm!367163 (= call!367164 ($colon$colon!1276 (exprs!4684 (ite c!898766 lt!2142235 (Context!8369 call!367031))) (ite (or c!898982 c!898983) (regTwo!30112 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))) (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))))))))

(declare-fun b!5212574 () Bool)

(assert (=> b!5212574 (= c!898982 e!3244999)))

(declare-fun res!2213903 () Bool)

(assert (=> b!5212574 (=> (not res!2213903) (not e!3244999))))

(assert (=> b!5212574 (= res!2213903 (is-Concat!23645 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))))))

(declare-fun e!3245002 () (Set Context!8368))

(assert (=> b!5212574 (= e!3245002 e!3244997)))

(declare-fun b!5212575 () Bool)

(assert (=> b!5212575 (= e!3245001 e!3245002)))

(assert (=> b!5212575 (= c!898984 (is-Union!14800 (ite c!898766 (regTwo!30113 (regTwo!30113 (regOne!30112 r!7292))) (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212576 () Bool)

(assert (=> b!5212576 (= e!3245000 (as set.empty (Set Context!8368)))))

(declare-fun b!5212577 () Bool)

(assert (=> b!5212577 (= e!3245002 (set.union call!367168 call!367166))))

(declare-fun b!5212578 () Bool)

(assert (=> b!5212578 (= e!3245001 (set.insert (ite c!898766 lt!2142235 (Context!8369 call!367031)) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680678 c!898980) b!5212578))

(assert (= (and d!1680678 (not c!898980)) b!5212575))

(assert (= (and b!5212575 c!898984) b!5212577))

(assert (= (and b!5212575 (not c!898984)) b!5212574))

(assert (= (and b!5212574 res!2213903) b!5212573))

(assert (= (and b!5212574 c!898982) b!5212569))

(assert (= (and b!5212574 (not c!898982)) b!5212572))

(assert (= (and b!5212572 c!898983) b!5212568))

(assert (= (and b!5212572 (not c!898983)) b!5212571))

(assert (= (and b!5212571 c!898981) b!5212570))

(assert (= (and b!5212571 (not c!898981)) b!5212576))

(assert (= (or b!5212568 b!5212570) bm!367160))

(assert (= (or b!5212568 b!5212570) bm!367159))

(assert (= (or b!5212569 bm!367160) bm!367163))

(assert (= (or b!5212569 bm!367159) bm!367158))

(assert (= (or b!5212577 b!5212569) bm!367161))

(assert (= (or b!5212577 bm!367158) bm!367162))

(declare-fun m!6261854 () Bool)

(assert (=> bm!367161 m!6261854))

(declare-fun m!6261856 () Bool)

(assert (=> bm!367162 m!6261856))

(declare-fun m!6261858 () Bool)

(assert (=> b!5212573 m!6261858))

(declare-fun m!6261860 () Bool)

(assert (=> bm!367163 m!6261860))

(declare-fun m!6261862 () Bool)

(assert (=> b!5212578 m!6261862))

(assert (=> bm!367028 d!1680678))

(assert (=> d!1680434 d!1680662))

(declare-fun d!1680680 () Bool)

(declare-fun c!898987 () Bool)

(assert (=> d!1680680 (= c!898987 (is-Nil!60576 lt!2142308))))

(declare-fun e!3245005 () (Set Context!8368))

(assert (=> d!1680680 (= (content!10730 lt!2142308) e!3245005)))

(declare-fun b!5212583 () Bool)

(assert (=> b!5212583 (= e!3245005 (as set.empty (Set Context!8368)))))

(declare-fun b!5212584 () Bool)

(assert (=> b!5212584 (= e!3245005 (set.union (set.insert (h!67024 lt!2142308) (as set.empty (Set Context!8368))) (content!10730 (t!373863 lt!2142308))))))

(assert (= (and d!1680680 c!898987) b!5212583))

(assert (= (and d!1680680 (not c!898987)) b!5212584))

(declare-fun m!6261864 () Bool)

(assert (=> b!5212584 m!6261864))

(declare-fun m!6261866 () Bool)

(assert (=> b!5212584 m!6261866))

(assert (=> b!5211606 d!1680680))

(assert (=> d!1680484 d!1680662))

(declare-fun d!1680682 () Bool)

(assert (=> d!1680682 (= (nullable!4969 (h!67023 (exprs!4684 lt!2142238))) (nullableFct!1378 (h!67023 (exprs!4684 lt!2142238))))))

(declare-fun bs!1210930 () Bool)

(assert (= bs!1210930 d!1680682))

(declare-fun m!6261868 () Bool)

(assert (=> bs!1210930 m!6261868))

(assert (=> b!5211787 d!1680682))

(assert (=> d!1680498 d!1680674))

(assert (=> d!1680498 d!1680440))

(declare-fun d!1680684 () Bool)

(assert (=> d!1680684 (= (isEmpty!32491 (tail!10269 s!2326)) (is-Nil!60577 (tail!10269 s!2326)))))

(assert (=> b!5211931 d!1680684))

(assert (=> b!5211931 d!1680610))

(assert (=> bs!1210850 d!1680456))

(declare-fun d!1680686 () Bool)

(assert (=> d!1680686 (= (isEmpty!32487 (tail!10268 (exprs!4684 (h!67024 zl!343)))) (is-Nil!60575 (tail!10268 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> b!5211665 d!1680686))

(declare-fun d!1680688 () Bool)

(assert (=> d!1680688 (= (tail!10268 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))

(assert (=> b!5211665 d!1680688))

(declare-fun d!1680690 () Bool)

(declare-fun c!898988 () Bool)

(assert (=> d!1680690 (= c!898988 (isEmpty!32491 (tail!10269 (t!373864 s!2326))))))

(declare-fun e!3245006 () Bool)

(assert (=> d!1680690 (= (matchZipper!1044 (derivationStepZipper!1070 (set.union lt!2142225 lt!2142223) (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))) e!3245006)))

(declare-fun b!5212585 () Bool)

(assert (=> b!5212585 (= e!3245006 (nullableZipper!1226 (derivationStepZipper!1070 (set.union lt!2142225 lt!2142223) (head!11172 (t!373864 s!2326)))))))

(declare-fun b!5212586 () Bool)

(assert (=> b!5212586 (= e!3245006 (matchZipper!1044 (derivationStepZipper!1070 (derivationStepZipper!1070 (set.union lt!2142225 lt!2142223) (head!11172 (t!373864 s!2326))) (head!11172 (tail!10269 (t!373864 s!2326)))) (tail!10269 (tail!10269 (t!373864 s!2326)))))))

(assert (= (and d!1680690 c!898988) b!5212585))

(assert (= (and d!1680690 (not c!898988)) b!5212586))

(assert (=> d!1680690 m!6261240))

(assert (=> d!1680690 m!6261746))

(assert (=> b!5212585 m!6261420))

(declare-fun m!6261870 () Bool)

(assert (=> b!5212585 m!6261870))

(assert (=> b!5212586 m!6261240))

(assert (=> b!5212586 m!6261750))

(assert (=> b!5212586 m!6261420))

(assert (=> b!5212586 m!6261750))

(declare-fun m!6261872 () Bool)

(assert (=> b!5212586 m!6261872))

(assert (=> b!5212586 m!6261240))

(assert (=> b!5212586 m!6261754))

(assert (=> b!5212586 m!6261872))

(assert (=> b!5212586 m!6261754))

(declare-fun m!6261874 () Bool)

(assert (=> b!5212586 m!6261874))

(assert (=> b!5211937 d!1680690))

(declare-fun bs!1210931 () Bool)

(declare-fun d!1680692 () Bool)

(assert (= bs!1210931 (and d!1680692 b!5211489)))

(declare-fun lambda!261418 () Int)

(assert (=> bs!1210931 (= (= (head!11172 (t!373864 s!2326)) (h!67025 s!2326)) (= lambda!261418 lambda!261332))))

(declare-fun bs!1210932 () Bool)

(assert (= bs!1210932 (and d!1680692 d!1680626)))

(assert (=> bs!1210932 (= lambda!261418 lambda!261411)))

(declare-fun bs!1210933 () Bool)

(assert (= bs!1210933 (and d!1680692 d!1680656)))

(assert (=> bs!1210933 (= lambda!261418 lambda!261416)))

(declare-fun bs!1210934 () Bool)

(assert (= bs!1210934 (and d!1680692 d!1680668)))

(assert (=> bs!1210934 (= lambda!261418 lambda!261417)))

(assert (=> d!1680692 true))

(assert (=> d!1680692 (= (derivationStepZipper!1070 (set.union lt!2142225 lt!2142223) (head!11172 (t!373864 s!2326))) (flatMap!527 (set.union lt!2142225 lt!2142223) lambda!261418))))

(declare-fun bs!1210935 () Bool)

(assert (= bs!1210935 d!1680692))

(declare-fun m!6261876 () Bool)

(assert (=> bs!1210935 m!6261876))

(assert (=> b!5211937 d!1680692))

(assert (=> b!5211937 d!1680628))

(assert (=> b!5211937 d!1680630))

(declare-fun bs!1210936 () Bool)

(declare-fun b!5212591 () Bool)

(assert (= bs!1210936 (and b!5212591 b!5212447)))

(declare-fun lambda!261419 () Int)

(assert (=> bs!1210936 (not (= lambda!261419 lambda!261407))))

(declare-fun bs!1210937 () Bool)

(assert (= bs!1210937 (and b!5212591 b!5211886)))

(assert (=> bs!1210937 (= (and (= (reg!15129 (regOne!30113 r!7292)) (reg!15129 r!7292)) (= (regOne!30113 r!7292) r!7292)) (= lambda!261419 lambda!261372))))

(declare-fun bs!1210938 () Bool)

(assert (= bs!1210938 (and b!5212591 b!5211884)))

(assert (=> bs!1210938 (not (= lambda!261419 lambda!261373))))

(declare-fun bs!1210939 () Bool)

(assert (= bs!1210939 (and b!5212591 b!5212449)))

(assert (=> bs!1210939 (= (and (= (reg!15129 (regOne!30113 r!7292)) (reg!15129 (regTwo!30113 r!7292))) (= (regOne!30113 r!7292) (regTwo!30113 r!7292))) (= lambda!261419 lambda!261406))))

(declare-fun bs!1210940 () Bool)

(assert (= bs!1210940 (and b!5212591 d!1680650)))

(assert (=> bs!1210940 (not (= lambda!261419 lambda!261415))))

(declare-fun bs!1210941 () Bool)

(assert (= bs!1210941 (and b!5212591 d!1680478)))

(assert (=> bs!1210941 (not (= lambda!261419 lambda!261367))))

(declare-fun bs!1210942 () Bool)

(assert (= bs!1210942 (and b!5212591 b!5211487)))

(assert (=> bs!1210942 (not (= lambda!261419 lambda!261330))))

(assert (=> bs!1210942 (not (= lambda!261419 lambda!261331))))

(assert (=> bs!1210941 (not (= lambda!261419 lambda!261366))))

(declare-fun bs!1210943 () Bool)

(assert (= bs!1210943 (and b!5212591 d!1680476)))

(assert (=> bs!1210943 (not (= lambda!261419 lambda!261361))))

(assert (=> b!5212591 true))

(assert (=> b!5212591 true))

(declare-fun bs!1210944 () Bool)

(declare-fun b!5212589 () Bool)

(assert (= bs!1210944 (and b!5212589 b!5212591)))

(declare-fun lambda!261420 () Int)

(assert (=> bs!1210944 (not (= lambda!261420 lambda!261419))))

(declare-fun bs!1210945 () Bool)

(assert (= bs!1210945 (and b!5212589 b!5212447)))

(assert (=> bs!1210945 (= (and (= (regOne!30112 (regOne!30113 r!7292)) (regOne!30112 (regTwo!30113 r!7292))) (= (regTwo!30112 (regOne!30113 r!7292)) (regTwo!30112 (regTwo!30113 r!7292)))) (= lambda!261420 lambda!261407))))

(declare-fun bs!1210946 () Bool)

(assert (= bs!1210946 (and b!5212589 b!5211886)))

(assert (=> bs!1210946 (not (= lambda!261420 lambda!261372))))

(declare-fun bs!1210947 () Bool)

(assert (= bs!1210947 (and b!5212589 b!5211884)))

(assert (=> bs!1210947 (= (and (= (regOne!30112 (regOne!30113 r!7292)) (regOne!30112 r!7292)) (= (regTwo!30112 (regOne!30113 r!7292)) (regTwo!30112 r!7292))) (= lambda!261420 lambda!261373))))

(declare-fun bs!1210948 () Bool)

(assert (= bs!1210948 (and b!5212589 b!5212449)))

(assert (=> bs!1210948 (not (= lambda!261420 lambda!261406))))

(declare-fun bs!1210949 () Bool)

(assert (= bs!1210949 (and b!5212589 d!1680650)))

(assert (=> bs!1210949 (not (= lambda!261420 lambda!261415))))

(declare-fun bs!1210950 () Bool)

(assert (= bs!1210950 (and b!5212589 d!1680478)))

(assert (=> bs!1210950 (= (and (= (regOne!30112 (regOne!30113 r!7292)) (regOne!30112 r!7292)) (= (regTwo!30112 (regOne!30113 r!7292)) (regTwo!30112 r!7292))) (= lambda!261420 lambda!261367))))

(declare-fun bs!1210951 () Bool)

(assert (= bs!1210951 (and b!5212589 b!5211487)))

(assert (=> bs!1210951 (not (= lambda!261420 lambda!261330))))

(assert (=> bs!1210951 (= (and (= (regOne!30112 (regOne!30113 r!7292)) (regOne!30112 r!7292)) (= (regTwo!30112 (regOne!30113 r!7292)) (regTwo!30112 r!7292))) (= lambda!261420 lambda!261331))))

(assert (=> bs!1210950 (not (= lambda!261420 lambda!261366))))

(declare-fun bs!1210952 () Bool)

(assert (= bs!1210952 (and b!5212589 d!1680476)))

(assert (=> bs!1210952 (not (= lambda!261420 lambda!261361))))

(assert (=> b!5212589 true))

(assert (=> b!5212589 true))

(declare-fun d!1680694 () Bool)

(declare-fun c!898989 () Bool)

(assert (=> d!1680694 (= c!898989 (is-EmptyExpr!14800 (regOne!30113 r!7292)))))

(declare-fun e!3245011 () Bool)

(assert (=> d!1680694 (= (matchRSpec!1903 (regOne!30113 r!7292) s!2326) e!3245011)))

(declare-fun b!5212587 () Bool)

(declare-fun c!898990 () Bool)

(assert (=> b!5212587 (= c!898990 (is-Union!14800 (regOne!30113 r!7292)))))

(declare-fun e!3245008 () Bool)

(declare-fun e!3245009 () Bool)

(assert (=> b!5212587 (= e!3245008 e!3245009)))

(declare-fun b!5212588 () Bool)

(declare-fun call!367169 () Bool)

(assert (=> b!5212588 (= e!3245011 call!367169)))

(declare-fun e!3245010 () Bool)

(declare-fun call!367170 () Bool)

(assert (=> b!5212589 (= e!3245010 call!367170)))

(declare-fun b!5212590 () Bool)

(assert (=> b!5212590 (= e!3245008 (= s!2326 (Cons!60577 (c!898691 (regOne!30113 r!7292)) Nil!60577)))))

(declare-fun e!3245007 () Bool)

(assert (=> b!5212591 (= e!3245007 call!367170)))

(declare-fun b!5212592 () Bool)

(declare-fun res!2213905 () Bool)

(assert (=> b!5212592 (=> res!2213905 e!3245007)))

(assert (=> b!5212592 (= res!2213905 call!367169)))

(assert (=> b!5212592 (= e!3245010 e!3245007)))

(declare-fun b!5212593 () Bool)

(declare-fun e!3245012 () Bool)

(assert (=> b!5212593 (= e!3245009 e!3245012)))

(declare-fun res!2213904 () Bool)

(assert (=> b!5212593 (= res!2213904 (matchRSpec!1903 (regOne!30113 (regOne!30113 r!7292)) s!2326))))

(assert (=> b!5212593 (=> res!2213904 e!3245012)))

(declare-fun b!5212594 () Bool)

(assert (=> b!5212594 (= e!3245009 e!3245010)))

(declare-fun c!898991 () Bool)

(assert (=> b!5212594 (= c!898991 (is-Star!14800 (regOne!30113 r!7292)))))

(declare-fun bm!367164 () Bool)

(assert (=> bm!367164 (= call!367169 (isEmpty!32491 s!2326))))

(declare-fun b!5212595 () Bool)

(assert (=> b!5212595 (= e!3245012 (matchRSpec!1903 (regTwo!30113 (regOne!30113 r!7292)) s!2326))))

(declare-fun b!5212596 () Bool)

(declare-fun e!3245013 () Bool)

(assert (=> b!5212596 (= e!3245011 e!3245013)))

(declare-fun res!2213906 () Bool)

(assert (=> b!5212596 (= res!2213906 (not (is-EmptyLang!14800 (regOne!30113 r!7292))))))

(assert (=> b!5212596 (=> (not res!2213906) (not e!3245013))))

(declare-fun bm!367165 () Bool)

(assert (=> bm!367165 (= call!367170 (Exists!1981 (ite c!898991 lambda!261419 lambda!261420)))))

(declare-fun b!5212597 () Bool)

(declare-fun c!898992 () Bool)

(assert (=> b!5212597 (= c!898992 (is-ElementMatch!14800 (regOne!30113 r!7292)))))

(assert (=> b!5212597 (= e!3245013 e!3245008)))

(assert (= (and d!1680694 c!898989) b!5212588))

(assert (= (and d!1680694 (not c!898989)) b!5212596))

(assert (= (and b!5212596 res!2213906) b!5212597))

(assert (= (and b!5212597 c!898992) b!5212590))

(assert (= (and b!5212597 (not c!898992)) b!5212587))

(assert (= (and b!5212587 c!898990) b!5212593))

(assert (= (and b!5212587 (not c!898990)) b!5212594))

(assert (= (and b!5212593 (not res!2213904)) b!5212595))

(assert (= (and b!5212594 c!898991) b!5212592))

(assert (= (and b!5212594 (not c!898991)) b!5212589))

(assert (= (and b!5212592 (not res!2213905)) b!5212591))

(assert (= (or b!5212591 b!5212589) bm!367165))

(assert (= (or b!5212588 b!5212592) bm!367164))

(declare-fun m!6261878 () Bool)

(assert (=> b!5212593 m!6261878))

(assert (=> bm!367164 m!6261396))

(declare-fun m!6261880 () Bool)

(assert (=> b!5212595 m!6261880))

(declare-fun m!6261882 () Bool)

(assert (=> bm!367165 m!6261882))

(assert (=> b!5211888 d!1680694))

(declare-fun bs!1210953 () Bool)

(declare-fun d!1680696 () Bool)

(assert (= bs!1210953 (and d!1680696 d!1680432)))

(declare-fun lambda!261421 () Int)

(assert (=> bs!1210953 (= lambda!261421 lambda!261357)))

(declare-fun bs!1210954 () Bool)

(assert (= bs!1210954 (and d!1680696 d!1680436)))

(assert (=> bs!1210954 (= lambda!261421 lambda!261358)))

(declare-fun bs!1210955 () Bool)

(assert (= bs!1210955 (and d!1680696 d!1680430)))

(assert (=> bs!1210955 (= lambda!261421 lambda!261354)))

(declare-fun bs!1210956 () Bool)

(assert (= bs!1210956 (and d!1680696 d!1680428)))

(assert (=> bs!1210956 (= lambda!261421 lambda!261351)))

(declare-fun bs!1210957 () Bool)

(assert (= bs!1210957 (and d!1680696 d!1680426)))

(assert (=> bs!1210957 (= lambda!261421 lambda!261348)))

(declare-fun bs!1210958 () Bool)

(assert (= bs!1210958 (and d!1680696 d!1680596)))

(assert (=> bs!1210958 (= lambda!261421 lambda!261402)))

(assert (=> d!1680696 (= (inv!80248 setElem!33113) (forall!14234 (exprs!4684 setElem!33113) lambda!261421))))

(declare-fun bs!1210959 () Bool)

(assert (= bs!1210959 d!1680696))

(declare-fun m!6261884 () Bool)

(assert (=> bs!1210959 m!6261884))

(assert (=> setNonEmpty!33113 d!1680696))

(declare-fun b!5212609 () Bool)

(declare-fun e!3245019 () Bool)

(declare-fun lt!2142402 () List!60701)

(assert (=> b!5212609 (= e!3245019 (or (not (= (_2!35302 (get!20812 lt!2142331)) Nil!60577)) (= lt!2142402 (_1!35302 (get!20812 lt!2142331)))))))

(declare-fun d!1680698 () Bool)

(assert (=> d!1680698 e!3245019))

(declare-fun res!2213912 () Bool)

(assert (=> d!1680698 (=> (not res!2213912) (not e!3245019))))

(declare-fun content!10732 (List!60701) (Set C!29870))

(assert (=> d!1680698 (= res!2213912 (= (content!10732 lt!2142402) (set.union (content!10732 (_1!35302 (get!20812 lt!2142331))) (content!10732 (_2!35302 (get!20812 lt!2142331))))))))

(declare-fun e!3245018 () List!60701)

(assert (=> d!1680698 (= lt!2142402 e!3245018)))

(declare-fun c!898995 () Bool)

(assert (=> d!1680698 (= c!898995 (is-Nil!60577 (_1!35302 (get!20812 lt!2142331))))))

(assert (=> d!1680698 (= (++!13206 (_1!35302 (get!20812 lt!2142331)) (_2!35302 (get!20812 lt!2142331))) lt!2142402)))

(declare-fun b!5212607 () Bool)

(assert (=> b!5212607 (= e!3245018 (Cons!60577 (h!67025 (_1!35302 (get!20812 lt!2142331))) (++!13206 (t!373864 (_1!35302 (get!20812 lt!2142331))) (_2!35302 (get!20812 lt!2142331)))))))

(declare-fun b!5212606 () Bool)

(assert (=> b!5212606 (= e!3245018 (_2!35302 (get!20812 lt!2142331)))))

(declare-fun b!5212608 () Bool)

(declare-fun res!2213911 () Bool)

(assert (=> b!5212608 (=> (not res!2213911) (not e!3245019))))

(declare-fun size!39718 (List!60701) Int)

(assert (=> b!5212608 (= res!2213911 (= (size!39718 lt!2142402) (+ (size!39718 (_1!35302 (get!20812 lt!2142331))) (size!39718 (_2!35302 (get!20812 lt!2142331))))))))

(assert (= (and d!1680698 c!898995) b!5212606))

(assert (= (and d!1680698 (not c!898995)) b!5212607))

(assert (= (and d!1680698 res!2213912) b!5212608))

(assert (= (and b!5212608 res!2213911) b!5212609))

(declare-fun m!6261886 () Bool)

(assert (=> d!1680698 m!6261886))

(declare-fun m!6261888 () Bool)

(assert (=> d!1680698 m!6261888))

(declare-fun m!6261890 () Bool)

(assert (=> d!1680698 m!6261890))

(declare-fun m!6261892 () Bool)

(assert (=> b!5212607 m!6261892))

(declare-fun m!6261894 () Bool)

(assert (=> b!5212608 m!6261894))

(declare-fun m!6261896 () Bool)

(assert (=> b!5212608 m!6261896))

(declare-fun m!6261898 () Bool)

(assert (=> b!5212608 m!6261898))

(assert (=> b!5211815 d!1680698))

(assert (=> b!5211815 d!1680638))

(assert (=> d!1680468 d!1680464))

(declare-fun d!1680700 () Bool)

(assert (=> d!1680700 (= (flatMap!527 lt!2142239 lambda!261332) (dynLambda!23930 lambda!261332 lt!2142238))))

(assert (=> d!1680700 true))

(declare-fun _$13!1691 () Unit!152466)

(assert (=> d!1680700 (= (choose!38742 lt!2142239 lt!2142238 lambda!261332) _$13!1691)))

(declare-fun b_lambda!201601 () Bool)

(assert (=> (not b_lambda!201601) (not d!1680700)))

(declare-fun bs!1210960 () Bool)

(assert (= bs!1210960 d!1680700))

(assert (=> bs!1210960 m!6261092))

(assert (=> bs!1210960 m!6261316))

(assert (=> d!1680468 d!1680700))

(declare-fun b!5212610 () Bool)

(declare-fun res!2213920 () Bool)

(declare-fun e!3245021 () Bool)

(assert (=> b!5212610 (=> (not res!2213920) (not e!3245021))))

(declare-fun call!367171 () Bool)

(assert (=> b!5212610 (= res!2213920 (not call!367171))))

(declare-fun b!5212611 () Bool)

(assert (=> b!5212611 (= e!3245021 (= (head!11172 (_1!35302 (get!20812 lt!2142331))) (c!898691 (regOne!30112 r!7292))))))

(declare-fun b!5212612 () Bool)

(declare-fun e!3245022 () Bool)

(declare-fun e!3245025 () Bool)

(assert (=> b!5212612 (= e!3245022 e!3245025)))

(declare-fun res!2213917 () Bool)

(assert (=> b!5212612 (=> (not res!2213917) (not e!3245025))))

(declare-fun lt!2142403 () Bool)

(assert (=> b!5212612 (= res!2213917 (not lt!2142403))))

(declare-fun b!5212613 () Bool)

(declare-fun e!3245026 () Bool)

(assert (=> b!5212613 (= e!3245025 e!3245026)))

(declare-fun res!2213913 () Bool)

(assert (=> b!5212613 (=> res!2213913 e!3245026)))

(assert (=> b!5212613 (= res!2213913 call!367171)))

(declare-fun b!5212614 () Bool)

(assert (=> b!5212614 (= e!3245026 (not (= (head!11172 (_1!35302 (get!20812 lt!2142331))) (c!898691 (regOne!30112 r!7292)))))))

(declare-fun b!5212615 () Bool)

(declare-fun e!3245024 () Bool)

(assert (=> b!5212615 (= e!3245024 (= lt!2142403 call!367171))))

(declare-fun b!5212616 () Bool)

(declare-fun res!2213915 () Bool)

(assert (=> b!5212616 (=> res!2213915 e!3245022)))

(assert (=> b!5212616 (= res!2213915 (not (is-ElementMatch!14800 (regOne!30112 r!7292))))))

(declare-fun e!3245023 () Bool)

(assert (=> b!5212616 (= e!3245023 e!3245022)))

(declare-fun b!5212617 () Bool)

(declare-fun e!3245020 () Bool)

(assert (=> b!5212617 (= e!3245020 (nullable!4969 (regOne!30112 r!7292)))))

(declare-fun b!5212619 () Bool)

(declare-fun res!2213918 () Bool)

(assert (=> b!5212619 (=> res!2213918 e!3245022)))

(assert (=> b!5212619 (= res!2213918 e!3245021)))

(declare-fun res!2213916 () Bool)

(assert (=> b!5212619 (=> (not res!2213916) (not e!3245021))))

(assert (=> b!5212619 (= res!2213916 lt!2142403)))

(declare-fun b!5212620 () Bool)

(declare-fun res!2213919 () Bool)

(assert (=> b!5212620 (=> res!2213919 e!3245026)))

(assert (=> b!5212620 (= res!2213919 (not (isEmpty!32491 (tail!10269 (_1!35302 (get!20812 lt!2142331))))))))

(declare-fun b!5212621 () Bool)

(declare-fun res!2213914 () Bool)

(assert (=> b!5212621 (=> (not res!2213914) (not e!3245021))))

(assert (=> b!5212621 (= res!2213914 (isEmpty!32491 (tail!10269 (_1!35302 (get!20812 lt!2142331)))))))

(declare-fun b!5212622 () Bool)

(assert (=> b!5212622 (= e!3245023 (not lt!2142403))))

(declare-fun b!5212623 () Bool)

(assert (=> b!5212623 (= e!3245020 (matchR!6985 (derivativeStep!4048 (regOne!30112 r!7292) (head!11172 (_1!35302 (get!20812 lt!2142331)))) (tail!10269 (_1!35302 (get!20812 lt!2142331)))))))

(declare-fun bm!367166 () Bool)

(assert (=> bm!367166 (= call!367171 (isEmpty!32491 (_1!35302 (get!20812 lt!2142331))))))

(declare-fun d!1680702 () Bool)

(assert (=> d!1680702 e!3245024))

(declare-fun c!898998 () Bool)

(assert (=> d!1680702 (= c!898998 (is-EmptyExpr!14800 (regOne!30112 r!7292)))))

(assert (=> d!1680702 (= lt!2142403 e!3245020)))

(declare-fun c!898996 () Bool)

(assert (=> d!1680702 (= c!898996 (isEmpty!32491 (_1!35302 (get!20812 lt!2142331))))))

(assert (=> d!1680702 (validRegex!6536 (regOne!30112 r!7292))))

(assert (=> d!1680702 (= (matchR!6985 (regOne!30112 r!7292) (_1!35302 (get!20812 lt!2142331))) lt!2142403)))

(declare-fun b!5212618 () Bool)

(assert (=> b!5212618 (= e!3245024 e!3245023)))

(declare-fun c!898997 () Bool)

(assert (=> b!5212618 (= c!898997 (is-EmptyLang!14800 (regOne!30112 r!7292)))))

(assert (= (and d!1680702 c!898996) b!5212617))

(assert (= (and d!1680702 (not c!898996)) b!5212623))

(assert (= (and d!1680702 c!898998) b!5212615))

(assert (= (and d!1680702 (not c!898998)) b!5212618))

(assert (= (and b!5212618 c!898997) b!5212622))

(assert (= (and b!5212618 (not c!898997)) b!5212616))

(assert (= (and b!5212616 (not res!2213915)) b!5212619))

(assert (= (and b!5212619 res!2213916) b!5212610))

(assert (= (and b!5212610 res!2213920) b!5212621))

(assert (= (and b!5212621 res!2213914) b!5212611))

(assert (= (and b!5212619 (not res!2213918)) b!5212612))

(assert (= (and b!5212612 res!2213917) b!5212613))

(assert (= (and b!5212613 (not res!2213913)) b!5212620))

(assert (= (and b!5212620 (not res!2213919)) b!5212614))

(assert (= (or b!5212615 b!5212610 b!5212613) bm!367166))

(declare-fun m!6261900 () Bool)

(assert (=> d!1680702 m!6261900))

(assert (=> d!1680702 m!6261330))

(declare-fun m!6261902 () Bool)

(assert (=> b!5212620 m!6261902))

(assert (=> b!5212620 m!6261902))

(declare-fun m!6261904 () Bool)

(assert (=> b!5212620 m!6261904))

(assert (=> b!5212617 m!6261724))

(assert (=> b!5212621 m!6261902))

(assert (=> b!5212621 m!6261902))

(assert (=> b!5212621 m!6261904))

(declare-fun m!6261906 () Bool)

(assert (=> b!5212614 m!6261906))

(assert (=> b!5212611 m!6261906))

(assert (=> b!5212623 m!6261906))

(assert (=> b!5212623 m!6261906))

(declare-fun m!6261908 () Bool)

(assert (=> b!5212623 m!6261908))

(assert (=> b!5212623 m!6261902))

(assert (=> b!5212623 m!6261908))

(assert (=> b!5212623 m!6261902))

(declare-fun m!6261910 () Bool)

(assert (=> b!5212623 m!6261910))

(assert (=> bm!367166 m!6261900))

(assert (=> b!5211811 d!1680702))

(assert (=> b!5211811 d!1680638))

(declare-fun b!5212624 () Bool)

(declare-fun e!3245027 () (Set Context!8368))

(declare-fun e!3245029 () (Set Context!8368))

(assert (=> b!5212624 (= e!3245027 e!3245029)))

(declare-fun c!898999 () Bool)

(assert (=> b!5212624 (= c!898999 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun b!5212625 () Bool)

(declare-fun e!3245028 () Bool)

(assert (=> b!5212625 (= e!3245028 (nullable!4969 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343))))))))))

(declare-fun call!367172 () (Set Context!8368))

(declare-fun b!5212626 () Bool)

(assert (=> b!5212626 (= e!3245027 (set.union call!367172 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343))))))) (h!67025 s!2326))))))

(declare-fun b!5212627 () Bool)

(assert (=> b!5212627 (= e!3245029 (as set.empty (Set Context!8368)))))

(declare-fun bm!367167 () Bool)

(assert (=> bm!367167 (= call!367172 (derivationStepZipperDown!248 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))))) (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343))))))) (h!67025 s!2326)))))

(declare-fun d!1680704 () Bool)

(declare-fun c!899000 () Bool)

(assert (=> d!1680704 (= c!899000 e!3245028)))

(declare-fun res!2213921 () Bool)

(assert (=> d!1680704 (=> (not res!2213921) (not e!3245028))))

(assert (=> d!1680704 (= res!2213921 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))))))))

(assert (=> d!1680704 (= (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (h!67024 zl!343)))) (h!67025 s!2326)) e!3245027)))

(declare-fun b!5212628 () Bool)

(assert (=> b!5212628 (= e!3245029 call!367172)))

(assert (= (and d!1680704 res!2213921) b!5212625))

(assert (= (and d!1680704 c!899000) b!5212626))

(assert (= (and d!1680704 (not c!899000)) b!5212624))

(assert (= (and b!5212624 c!898999) b!5212628))

(assert (= (and b!5212624 (not c!898999)) b!5212627))

(assert (= (or b!5212626 b!5212628) bm!367167))

(declare-fun m!6261912 () Bool)

(assert (=> b!5212625 m!6261912))

(declare-fun m!6261914 () Bool)

(assert (=> b!5212626 m!6261914))

(declare-fun m!6261916 () Bool)

(assert (=> bm!367167 m!6261916))

(assert (=> b!5211761 d!1680704))

(assert (=> b!5211922 d!1680608))

(declare-fun d!1680706 () Bool)

(assert (=> d!1680706 (= (Exists!1981 lambda!261366) (choose!38744 lambda!261366))))

(declare-fun bs!1210961 () Bool)

(assert (= bs!1210961 d!1680706))

(declare-fun m!6261918 () Bool)

(assert (=> bs!1210961 m!6261918))

(assert (=> d!1680478 d!1680706))

(declare-fun d!1680708 () Bool)

(assert (=> d!1680708 (= (Exists!1981 lambda!261367) (choose!38744 lambda!261367))))

(declare-fun bs!1210962 () Bool)

(assert (= bs!1210962 d!1680708))

(declare-fun m!6261920 () Bool)

(assert (=> bs!1210962 m!6261920))

(assert (=> d!1680478 d!1680708))

(declare-fun bs!1210963 () Bool)

(declare-fun d!1680710 () Bool)

(assert (= bs!1210963 (and d!1680710 b!5212591)))

(declare-fun lambda!261426 () Int)

(assert (=> bs!1210963 (not (= lambda!261426 lambda!261419))))

(declare-fun bs!1210964 () Bool)

(assert (= bs!1210964 (and d!1680710 b!5212447)))

(assert (=> bs!1210964 (not (= lambda!261426 lambda!261407))))

(declare-fun bs!1210965 () Bool)

(assert (= bs!1210965 (and d!1680710 b!5211886)))

(assert (=> bs!1210965 (not (= lambda!261426 lambda!261372))))

(declare-fun bs!1210966 () Bool)

(assert (= bs!1210966 (and d!1680710 b!5211884)))

(assert (=> bs!1210966 (not (= lambda!261426 lambda!261373))))

(declare-fun bs!1210967 () Bool)

(assert (= bs!1210967 (and d!1680710 b!5212589)))

(assert (=> bs!1210967 (not (= lambda!261426 lambda!261420))))

(declare-fun bs!1210968 () Bool)

(assert (= bs!1210968 (and d!1680710 b!5212449)))

(assert (=> bs!1210968 (not (= lambda!261426 lambda!261406))))

(declare-fun bs!1210969 () Bool)

(assert (= bs!1210969 (and d!1680710 d!1680650)))

(assert (=> bs!1210969 (= lambda!261426 lambda!261415)))

(declare-fun bs!1210970 () Bool)

(assert (= bs!1210970 (and d!1680710 d!1680478)))

(assert (=> bs!1210970 (not (= lambda!261426 lambda!261367))))

(declare-fun bs!1210971 () Bool)

(assert (= bs!1210971 (and d!1680710 b!5211487)))

(assert (=> bs!1210971 (= lambda!261426 lambda!261330)))

(assert (=> bs!1210971 (not (= lambda!261426 lambda!261331))))

(assert (=> bs!1210970 (= lambda!261426 lambda!261366)))

(declare-fun bs!1210972 () Bool)

(assert (= bs!1210972 (and d!1680710 d!1680476)))

(assert (=> bs!1210972 (= lambda!261426 lambda!261361)))

(assert (=> d!1680710 true))

(assert (=> d!1680710 true))

(assert (=> d!1680710 true))

(declare-fun lambda!261427 () Int)

(assert (=> bs!1210963 (not (= lambda!261427 lambda!261419))))

(declare-fun bs!1210973 () Bool)

(assert (= bs!1210973 d!1680710))

(assert (=> bs!1210973 (not (= lambda!261427 lambda!261426))))

(assert (=> bs!1210964 (= (and (= (regOne!30112 r!7292) (regOne!30112 (regTwo!30113 r!7292))) (= (regTwo!30112 r!7292) (regTwo!30112 (regTwo!30113 r!7292)))) (= lambda!261427 lambda!261407))))

(assert (=> bs!1210965 (not (= lambda!261427 lambda!261372))))

(assert (=> bs!1210966 (= lambda!261427 lambda!261373)))

(assert (=> bs!1210967 (= (and (= (regOne!30112 r!7292) (regOne!30112 (regOne!30113 r!7292))) (= (regTwo!30112 r!7292) (regTwo!30112 (regOne!30113 r!7292)))) (= lambda!261427 lambda!261420))))

(assert (=> bs!1210968 (not (= lambda!261427 lambda!261406))))

(assert (=> bs!1210969 (not (= lambda!261427 lambda!261415))))

(assert (=> bs!1210970 (= lambda!261427 lambda!261367)))

(assert (=> bs!1210971 (not (= lambda!261427 lambda!261330))))

(assert (=> bs!1210971 (= lambda!261427 lambda!261331)))

(assert (=> bs!1210970 (not (= lambda!261427 lambda!261366))))

(assert (=> bs!1210972 (not (= lambda!261427 lambda!261361))))

(assert (=> d!1680710 true))

(assert (=> d!1680710 true))

(assert (=> d!1680710 true))

(assert (=> d!1680710 (= (Exists!1981 lambda!261426) (Exists!1981 lambda!261427))))

(assert (=> d!1680710 true))

(declare-fun _$90!997 () Unit!152466)

(assert (=> d!1680710 (= (choose!38746 (regOne!30112 r!7292) (regTwo!30112 r!7292) s!2326) _$90!997)))

(declare-fun m!6261922 () Bool)

(assert (=> bs!1210973 m!6261922))

(declare-fun m!6261924 () Bool)

(assert (=> bs!1210973 m!6261924))

(assert (=> d!1680478 d!1680710))

(assert (=> d!1680478 d!1680646))

(declare-fun d!1680712 () Bool)

(assert (=> d!1680712 (= ($colon$colon!1276 (exprs!4684 lt!2142235) (ite (or c!898769 c!898770) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (regOne!30113 (regOne!30112 r!7292)))) (Cons!60575 (ite (or c!898769 c!898770) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (regOne!30113 (regOne!30112 r!7292))) (exprs!4684 lt!2142235)))))

(assert (=> bm!367036 d!1680712))

(declare-fun call!367173 () Bool)

(declare-fun c!899002 () Bool)

(declare-fun c!899001 () Bool)

(declare-fun bm!367168 () Bool)

(assert (=> bm!367168 (= call!367173 (validRegex!6536 (ite c!899001 (reg!15129 lt!2142311) (ite c!899002 (regOne!30113 lt!2142311) (regOne!30112 lt!2142311)))))))

(declare-fun b!5212638 () Bool)

(declare-fun e!3245039 () Bool)

(declare-fun e!3245037 () Bool)

(assert (=> b!5212638 (= e!3245039 e!3245037)))

(assert (=> b!5212638 (= c!899001 (is-Star!14800 lt!2142311))))

(declare-fun b!5212639 () Bool)

(declare-fun e!3245034 () Bool)

(declare-fun call!367174 () Bool)

(assert (=> b!5212639 (= e!3245034 call!367174)))

(declare-fun b!5212640 () Bool)

(declare-fun e!3245036 () Bool)

(assert (=> b!5212640 (= e!3245036 e!3245034)))

(declare-fun res!2213932 () Bool)

(assert (=> b!5212640 (=> (not res!2213932) (not e!3245034))))

(declare-fun call!367175 () Bool)

(assert (=> b!5212640 (= res!2213932 call!367175)))

(declare-fun bm!367169 () Bool)

(assert (=> bm!367169 (= call!367175 call!367173)))

(declare-fun b!5212641 () Bool)

(declare-fun e!3245038 () Bool)

(assert (=> b!5212641 (= e!3245037 e!3245038)))

(assert (=> b!5212641 (= c!899002 (is-Union!14800 lt!2142311))))

(declare-fun b!5212637 () Bool)

(declare-fun e!3245040 () Bool)

(assert (=> b!5212637 (= e!3245037 e!3245040)))

(declare-fun res!2213930 () Bool)

(assert (=> b!5212637 (= res!2213930 (not (nullable!4969 (reg!15129 lt!2142311))))))

(assert (=> b!5212637 (=> (not res!2213930) (not e!3245040))))

(declare-fun d!1680714 () Bool)

(declare-fun res!2213931 () Bool)

(assert (=> d!1680714 (=> res!2213931 e!3245039)))

(assert (=> d!1680714 (= res!2213931 (is-ElementMatch!14800 lt!2142311))))

(assert (=> d!1680714 (= (validRegex!6536 lt!2142311) e!3245039)))

(declare-fun b!5212642 () Bool)

(declare-fun e!3245035 () Bool)

(assert (=> b!5212642 (= e!3245035 call!367174)))

(declare-fun b!5212643 () Bool)

(declare-fun res!2213933 () Bool)

(assert (=> b!5212643 (=> (not res!2213933) (not e!3245035))))

(assert (=> b!5212643 (= res!2213933 call!367175)))

(assert (=> b!5212643 (= e!3245038 e!3245035)))

(declare-fun b!5212644 () Bool)

(declare-fun res!2213934 () Bool)

(assert (=> b!5212644 (=> res!2213934 e!3245036)))

(assert (=> b!5212644 (= res!2213934 (not (is-Concat!23645 lt!2142311)))))

(assert (=> b!5212644 (= e!3245038 e!3245036)))

(declare-fun b!5212645 () Bool)

(assert (=> b!5212645 (= e!3245040 call!367173)))

(declare-fun bm!367170 () Bool)

(assert (=> bm!367170 (= call!367174 (validRegex!6536 (ite c!899002 (regTwo!30113 lt!2142311) (regTwo!30112 lt!2142311))))))

(assert (= (and d!1680714 (not res!2213931)) b!5212638))

(assert (= (and b!5212638 c!899001) b!5212637))

(assert (= (and b!5212638 (not c!899001)) b!5212641))

(assert (= (and b!5212637 res!2213930) b!5212645))

(assert (= (and b!5212641 c!899002) b!5212643))

(assert (= (and b!5212641 (not c!899002)) b!5212644))

(assert (= (and b!5212643 res!2213933) b!5212642))

(assert (= (and b!5212644 (not res!2213934)) b!5212640))

(assert (= (and b!5212640 res!2213932) b!5212639))

(assert (= (or b!5212642 b!5212639) bm!367170))

(assert (= (or b!5212643 b!5212640) bm!367169))

(assert (= (or b!5212645 bm!367169) bm!367168))

(declare-fun m!6261926 () Bool)

(assert (=> bm!367168 m!6261926))

(declare-fun m!6261928 () Bool)

(assert (=> b!5212637 m!6261928))

(declare-fun m!6261930 () Bool)

(assert (=> bm!367170 m!6261930))

(assert (=> d!1680426 d!1680714))

(declare-fun d!1680716 () Bool)

(declare-fun res!2213935 () Bool)

(declare-fun e!3245041 () Bool)

(assert (=> d!1680716 (=> res!2213935 e!3245041)))

(assert (=> d!1680716 (= res!2213935 (is-Nil!60575 (unfocusZipperList!242 zl!343)))))

(assert (=> d!1680716 (= (forall!14234 (unfocusZipperList!242 zl!343) lambda!261348) e!3245041)))

(declare-fun b!5212646 () Bool)

(declare-fun e!3245042 () Bool)

(assert (=> b!5212646 (= e!3245041 e!3245042)))

(declare-fun res!2213936 () Bool)

(assert (=> b!5212646 (=> (not res!2213936) (not e!3245042))))

(assert (=> b!5212646 (= res!2213936 (dynLambda!23932 lambda!261348 (h!67023 (unfocusZipperList!242 zl!343))))))

(declare-fun b!5212647 () Bool)

(assert (=> b!5212647 (= e!3245042 (forall!14234 (t!373862 (unfocusZipperList!242 zl!343)) lambda!261348))))

(assert (= (and d!1680716 (not res!2213935)) b!5212646))

(assert (= (and b!5212646 res!2213936) b!5212647))

(declare-fun b_lambda!201603 () Bool)

(assert (=> (not b_lambda!201603) (not b!5212646)))

(declare-fun m!6261932 () Bool)

(assert (=> b!5212646 m!6261932))

(declare-fun m!6261934 () Bool)

(assert (=> b!5212647 m!6261934))

(assert (=> d!1680426 d!1680716))

(declare-fun d!1680718 () Bool)

(assert (=> d!1680718 (= (isEmpty!32492 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326)) (not (is-Some!14910 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) Nil!60577 s!2326 s!2326))))))

(assert (=> d!1680480 d!1680718))

(declare-fun d!1680720 () Bool)

(assert (=> d!1680720 (= (nullable!4969 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))) (nullableFct!1378 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292)))))))

(declare-fun bs!1210974 () Bool)

(assert (= bs!1210974 d!1680720))

(declare-fun m!6261936 () Bool)

(assert (=> bs!1210974 m!6261936))

(assert (=> b!5211769 d!1680720))

(declare-fun b!5212648 () Bool)

(declare-fun e!3245044 () (Set Context!8368))

(declare-fun call!367176 () (Set Context!8368))

(assert (=> b!5212648 (= e!3245044 call!367176)))

(declare-fun bm!367171 () Bool)

(declare-fun call!367180 () (Set Context!8368))

(declare-fun call!367181 () (Set Context!8368))

(assert (=> bm!367171 (= call!367180 call!367181)))

(declare-fun c!899003 () Bool)

(declare-fun d!1680722 () Bool)

(assert (=> d!1680722 (= c!899003 (and (is-ElementMatch!14800 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))) (= (c!898691 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))) (h!67025 s!2326))))))

(declare-fun e!3245047 () (Set Context!8368))

(assert (=> d!1680722 (= (derivationStepZipperDown!248 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292)))))) (ite (or c!898771 c!898769) lt!2142235 (Context!8369 call!367038)) (h!67025 s!2326)) e!3245047)))

(declare-fun b!5212649 () Bool)

(declare-fun e!3245043 () (Set Context!8368))

(declare-fun call!367179 () (Set Context!8368))

(assert (=> b!5212649 (= e!3245043 (set.union call!367179 call!367180))))

(declare-fun bm!367172 () Bool)

(assert (=> bm!367172 (= call!367176 call!367180)))

(declare-fun bm!367173 () Bool)

(declare-fun call!367178 () List!60699)

(declare-fun call!367177 () List!60699)

(assert (=> bm!367173 (= call!367178 call!367177)))

(declare-fun b!5212650 () Bool)

(declare-fun e!3245046 () (Set Context!8368))

(assert (=> b!5212650 (= e!3245046 call!367176)))

(declare-fun c!899007 () Bool)

(declare-fun bm!367174 () Bool)

(assert (=> bm!367174 (= call!367179 (derivationStepZipperDown!248 (ite c!899007 (regTwo!30113 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))) (regOne!30112 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292)))))))) (ite c!899007 (ite (or c!898771 c!898769) lt!2142235 (Context!8369 call!367038)) (Context!8369 call!367177)) (h!67025 s!2326)))))

(declare-fun c!899005 () Bool)

(declare-fun c!899006 () Bool)

(declare-fun bm!367175 () Bool)

(assert (=> bm!367175 (= call!367181 (derivationStepZipperDown!248 (ite c!899007 (regOne!30113 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))) (ite c!899005 (regTwo!30112 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))) (ite c!899006 (regOne!30112 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))) (reg!15129 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292)))))))))) (ite (or c!899007 c!899005) (ite (or c!898771 c!898769) lt!2142235 (Context!8369 call!367038)) (Context!8369 call!367178)) (h!67025 s!2326)))))

(declare-fun b!5212651 () Bool)

(declare-fun c!899004 () Bool)

(assert (=> b!5212651 (= c!899004 (is-Star!14800 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))))))

(assert (=> b!5212651 (= e!3245044 e!3245046)))

(declare-fun b!5212652 () Bool)

(assert (=> b!5212652 (= e!3245043 e!3245044)))

(assert (=> b!5212652 (= c!899006 (is-Concat!23645 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))))))

(declare-fun b!5212653 () Bool)

(declare-fun e!3245045 () Bool)

(assert (=> b!5212653 (= e!3245045 (nullable!4969 (regOne!30112 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292)))))))))))

(declare-fun bm!367176 () Bool)

(assert (=> bm!367176 (= call!367177 ($colon$colon!1276 (exprs!4684 (ite (or c!898771 c!898769) lt!2142235 (Context!8369 call!367038))) (ite (or c!899005 c!899006) (regTwo!30112 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))) (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292)))))))))))

(declare-fun b!5212654 () Bool)

(assert (=> b!5212654 (= c!899005 e!3245045)))

(declare-fun res!2213937 () Bool)

(assert (=> b!5212654 (=> (not res!2213937) (not e!3245045))))

(assert (=> b!5212654 (= res!2213937 (is-Concat!23645 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))))))

(declare-fun e!3245048 () (Set Context!8368))

(assert (=> b!5212654 (= e!3245048 e!3245043)))

(declare-fun b!5212655 () Bool)

(assert (=> b!5212655 (= e!3245047 e!3245048)))

(assert (=> b!5212655 (= c!899007 (is-Union!14800 (ite c!898771 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (ite c!898769 (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))) (ite c!898770 (regOne!30112 (regOne!30113 (regOne!30112 r!7292))) (reg!15129 (regOne!30113 (regOne!30112 r!7292))))))))))

(declare-fun b!5212656 () Bool)

(assert (=> b!5212656 (= e!3245046 (as set.empty (Set Context!8368)))))

(declare-fun b!5212657 () Bool)

(assert (=> b!5212657 (= e!3245048 (set.union call!367181 call!367179))))

(declare-fun b!5212658 () Bool)

(assert (=> b!5212658 (= e!3245047 (set.insert (ite (or c!898771 c!898769) lt!2142235 (Context!8369 call!367038)) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680722 c!899003) b!5212658))

(assert (= (and d!1680722 (not c!899003)) b!5212655))

(assert (= (and b!5212655 c!899007) b!5212657))

(assert (= (and b!5212655 (not c!899007)) b!5212654))

(assert (= (and b!5212654 res!2213937) b!5212653))

(assert (= (and b!5212654 c!899005) b!5212649))

(assert (= (and b!5212654 (not c!899005)) b!5212652))

(assert (= (and b!5212652 c!899006) b!5212648))

(assert (= (and b!5212652 (not c!899006)) b!5212651))

(assert (= (and b!5212651 c!899004) b!5212650))

(assert (= (and b!5212651 (not c!899004)) b!5212656))

(assert (= (or b!5212648 b!5212650) bm!367173))

(assert (= (or b!5212648 b!5212650) bm!367172))

(assert (= (or b!5212649 bm!367173) bm!367176))

(assert (= (or b!5212649 bm!367172) bm!367171))

(assert (= (or b!5212657 b!5212649) bm!367174))

(assert (= (or b!5212657 bm!367171) bm!367175))

(declare-fun m!6261938 () Bool)

(assert (=> bm!367174 m!6261938))

(declare-fun m!6261940 () Bool)

(assert (=> bm!367175 m!6261940))

(declare-fun m!6261942 () Bool)

(assert (=> b!5212653 m!6261942))

(declare-fun m!6261944 () Bool)

(assert (=> bm!367176 m!6261944))

(declare-fun m!6261946 () Bool)

(assert (=> b!5212658 m!6261946))

(assert (=> bm!367035 d!1680722))

(declare-fun d!1680724 () Bool)

(assert (=> d!1680724 (= (nullable!4969 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))) (nullableFct!1378 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))))))

(declare-fun bs!1210975 () Bool)

(assert (= bs!1210975 d!1680724))

(declare-fun m!6261948 () Bool)

(assert (=> bs!1210975 m!6261948))

(assert (=> b!5211753 d!1680724))

(declare-fun d!1680726 () Bool)

(assert (=> d!1680726 (= (nullable!4969 (reg!15129 r!7292)) (nullableFct!1378 (reg!15129 r!7292)))))

(declare-fun bs!1210976 () Bool)

(assert (= bs!1210976 d!1680726))

(declare-fun m!6261950 () Bool)

(assert (=> bs!1210976 m!6261950))

(assert (=> b!5211697 d!1680726))

(declare-fun d!1680728 () Bool)

(assert (=> d!1680728 true))

(declare-fun setRes!33120 () Bool)

(assert (=> d!1680728 setRes!33120))

(declare-fun condSetEmpty!33120 () Bool)

(declare-fun res!2213938 () (Set Context!8368))

(assert (=> d!1680728 (= condSetEmpty!33120 (= res!2213938 (as set.empty (Set Context!8368))))))

(assert (=> d!1680728 (= (choose!38743 z!1189 lambda!261332) res!2213938)))

(declare-fun setIsEmpty!33120 () Bool)

(assert (=> setIsEmpty!33120 setRes!33120))

(declare-fun tp!1461689 () Bool)

(declare-fun setElem!33120 () Context!8368)

(declare-fun e!3245049 () Bool)

(declare-fun setNonEmpty!33120 () Bool)

(assert (=> setNonEmpty!33120 (= setRes!33120 (and tp!1461689 (inv!80248 setElem!33120) e!3245049))))

(declare-fun setRest!33120 () (Set Context!8368))

(assert (=> setNonEmpty!33120 (= res!2213938 (set.union (set.insert setElem!33120 (as set.empty (Set Context!8368))) setRest!33120))))

(declare-fun b!5212659 () Bool)

(declare-fun tp!1461688 () Bool)

(assert (=> b!5212659 (= e!3245049 tp!1461688)))

(assert (= (and d!1680728 condSetEmpty!33120) setIsEmpty!33120))

(assert (= (and d!1680728 (not condSetEmpty!33120)) setNonEmpty!33120))

(assert (= setNonEmpty!33120 b!5212659))

(declare-fun m!6261952 () Bool)

(assert (=> setNonEmpty!33120 m!6261952))

(assert (=> d!1680446 d!1680728))

(declare-fun b!5212660 () Bool)

(declare-fun e!3245051 () (Set Context!8368))

(declare-fun call!367182 () (Set Context!8368))

(assert (=> b!5212660 (= e!3245051 call!367182)))

(declare-fun bm!367177 () Bool)

(declare-fun call!367186 () (Set Context!8368))

(declare-fun call!367187 () (Set Context!8368))

(assert (=> bm!367177 (= call!367186 call!367187)))

(declare-fun c!899008 () Bool)

(declare-fun d!1680730 () Bool)

(assert (=> d!1680730 (= c!899008 (and (is-ElementMatch!14800 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))) (= (c!898691 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))) (h!67025 s!2326))))))

(declare-fun e!3245054 () (Set Context!8368))

(assert (=> d!1680730 (= (derivationStepZipperDown!248 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292)))))) (ite (or c!898766 c!898764) lt!2142235 (Context!8369 call!367032)) (h!67025 s!2326)) e!3245054)))

(declare-fun b!5212661 () Bool)

(declare-fun e!3245050 () (Set Context!8368))

(declare-fun call!367185 () (Set Context!8368))

(assert (=> b!5212661 (= e!3245050 (set.union call!367185 call!367186))))

(declare-fun bm!367178 () Bool)

(assert (=> bm!367178 (= call!367182 call!367186)))

(declare-fun bm!367179 () Bool)

(declare-fun call!367184 () List!60699)

(declare-fun call!367183 () List!60699)

(assert (=> bm!367179 (= call!367184 call!367183)))

(declare-fun b!5212662 () Bool)

(declare-fun e!3245053 () (Set Context!8368))

(assert (=> b!5212662 (= e!3245053 call!367182)))

(declare-fun bm!367180 () Bool)

(declare-fun c!899012 () Bool)

(assert (=> bm!367180 (= call!367185 (derivationStepZipperDown!248 (ite c!899012 (regTwo!30113 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))) (regOne!30112 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292)))))))) (ite c!899012 (ite (or c!898766 c!898764) lt!2142235 (Context!8369 call!367032)) (Context!8369 call!367183)) (h!67025 s!2326)))))

(declare-fun c!899011 () Bool)

(declare-fun bm!367181 () Bool)

(declare-fun c!899010 () Bool)

(assert (=> bm!367181 (= call!367187 (derivationStepZipperDown!248 (ite c!899012 (regOne!30113 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))) (ite c!899010 (regTwo!30112 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))) (ite c!899011 (regOne!30112 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))) (reg!15129 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292)))))))))) (ite (or c!899012 c!899010) (ite (or c!898766 c!898764) lt!2142235 (Context!8369 call!367032)) (Context!8369 call!367184)) (h!67025 s!2326)))))

(declare-fun c!899009 () Bool)

(declare-fun b!5212663 () Bool)

(assert (=> b!5212663 (= c!899009 (is-Star!14800 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))))))

(assert (=> b!5212663 (= e!3245051 e!3245053)))

(declare-fun b!5212664 () Bool)

(assert (=> b!5212664 (= e!3245050 e!3245051)))

(assert (=> b!5212664 (= c!899011 (is-Concat!23645 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))))))

(declare-fun b!5212665 () Bool)

(declare-fun e!3245052 () Bool)

(assert (=> b!5212665 (= e!3245052 (nullable!4969 (regOne!30112 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292)))))))))))

(declare-fun bm!367182 () Bool)

(assert (=> bm!367182 (= call!367183 ($colon$colon!1276 (exprs!4684 (ite (or c!898766 c!898764) lt!2142235 (Context!8369 call!367032))) (ite (or c!899010 c!899011) (regTwo!30112 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))) (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292)))))))))))

(declare-fun b!5212666 () Bool)

(assert (=> b!5212666 (= c!899010 e!3245052)))

(declare-fun res!2213939 () Bool)

(assert (=> b!5212666 (=> (not res!2213939) (not e!3245052))))

(assert (=> b!5212666 (= res!2213939 (is-Concat!23645 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))))))

(declare-fun e!3245055 () (Set Context!8368))

(assert (=> b!5212666 (= e!3245055 e!3245050)))

(declare-fun b!5212667 () Bool)

(assert (=> b!5212667 (= e!3245054 e!3245055)))

(assert (=> b!5212667 (= c!899012 (is-Union!14800 (ite c!898766 (regOne!30113 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898764 (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (ite c!898765 (regOne!30112 (regTwo!30113 (regOne!30112 r!7292))) (reg!15129 (regTwo!30113 (regOne!30112 r!7292))))))))))

(declare-fun b!5212668 () Bool)

(assert (=> b!5212668 (= e!3245053 (as set.empty (Set Context!8368)))))

(declare-fun b!5212669 () Bool)

(assert (=> b!5212669 (= e!3245055 (set.union call!367187 call!367185))))

(declare-fun b!5212670 () Bool)

(assert (=> b!5212670 (= e!3245054 (set.insert (ite (or c!898766 c!898764) lt!2142235 (Context!8369 call!367032)) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680730 c!899008) b!5212670))

(assert (= (and d!1680730 (not c!899008)) b!5212667))

(assert (= (and b!5212667 c!899012) b!5212669))

(assert (= (and b!5212667 (not c!899012)) b!5212666))

(assert (= (and b!5212666 res!2213939) b!5212665))

(assert (= (and b!5212666 c!899010) b!5212661))

(assert (= (and b!5212666 (not c!899010)) b!5212664))

(assert (= (and b!5212664 c!899011) b!5212660))

(assert (= (and b!5212664 (not c!899011)) b!5212663))

(assert (= (and b!5212663 c!899009) b!5212662))

(assert (= (and b!5212663 (not c!899009)) b!5212668))

(assert (= (or b!5212660 b!5212662) bm!367179))

(assert (= (or b!5212660 b!5212662) bm!367178))

(assert (= (or b!5212661 bm!367179) bm!367182))

(assert (= (or b!5212661 bm!367178) bm!367177))

(assert (= (or b!5212669 b!5212661) bm!367180))

(assert (= (or b!5212669 bm!367177) bm!367181))

(declare-fun m!6261954 () Bool)

(assert (=> bm!367180 m!6261954))

(declare-fun m!6261956 () Bool)

(assert (=> bm!367181 m!6261956))

(declare-fun m!6261958 () Bool)

(assert (=> b!5212665 m!6261958))

(declare-fun m!6261960 () Bool)

(assert (=> bm!367182 m!6261960))

(declare-fun m!6261962 () Bool)

(assert (=> b!5212670 m!6261962))

(assert (=> bm!367029 d!1680730))

(declare-fun d!1680732 () Bool)

(assert (=> d!1680732 (= (isEmptyExpr!762 lt!2142317) (is-EmptyExpr!14800 lt!2142317))))

(assert (=> b!5211670 d!1680732))

(declare-fun bs!1210977 () Bool)

(declare-fun d!1680734 () Bool)

(assert (= bs!1210977 (and d!1680734 d!1680432)))

(declare-fun lambda!261428 () Int)

(assert (=> bs!1210977 (= lambda!261428 lambda!261357)))

(declare-fun bs!1210978 () Bool)

(assert (= bs!1210978 (and d!1680734 d!1680436)))

(assert (=> bs!1210978 (= lambda!261428 lambda!261358)))

(declare-fun bs!1210979 () Bool)

(assert (= bs!1210979 (and d!1680734 d!1680430)))

(assert (=> bs!1210979 (= lambda!261428 lambda!261354)))

(declare-fun bs!1210980 () Bool)

(assert (= bs!1210980 (and d!1680734 d!1680428)))

(assert (=> bs!1210980 (= lambda!261428 lambda!261351)))

(declare-fun bs!1210981 () Bool)

(assert (= bs!1210981 (and d!1680734 d!1680696)))

(assert (=> bs!1210981 (= lambda!261428 lambda!261421)))

(declare-fun bs!1210982 () Bool)

(assert (= bs!1210982 (and d!1680734 d!1680426)))

(assert (=> bs!1210982 (= lambda!261428 lambda!261348)))

(declare-fun bs!1210983 () Bool)

(assert (= bs!1210983 (and d!1680734 d!1680596)))

(assert (=> bs!1210983 (= lambda!261428 lambda!261402)))

(assert (=> d!1680734 (= (inv!80248 (h!67024 (t!373863 zl!343))) (forall!14234 (exprs!4684 (h!67024 (t!373863 zl!343))) lambda!261428))))

(declare-fun bs!1210984 () Bool)

(assert (= bs!1210984 d!1680734))

(declare-fun m!6261964 () Bool)

(assert (=> bs!1210984 m!6261964))

(assert (=> b!5211972 d!1680734))

(declare-fun d!1680736 () Bool)

(assert (=> d!1680736 (= (isDefined!11614 lt!2142331) (not (isEmpty!32492 lt!2142331)))))

(declare-fun bs!1210985 () Bool)

(assert (= bs!1210985 d!1680736))

(declare-fun m!6261966 () Bool)

(assert (=> bs!1210985 m!6261966))

(assert (=> d!1680470 d!1680736))

(declare-fun b!5212671 () Bool)

(declare-fun res!2213947 () Bool)

(declare-fun e!3245057 () Bool)

(assert (=> b!5212671 (=> (not res!2213947) (not e!3245057))))

(declare-fun call!367188 () Bool)

(assert (=> b!5212671 (= res!2213947 (not call!367188))))

(declare-fun b!5212672 () Bool)

(assert (=> b!5212672 (= e!3245057 (= (head!11172 Nil!60577) (c!898691 (regOne!30112 r!7292))))))

(declare-fun b!5212673 () Bool)

(declare-fun e!3245058 () Bool)

(declare-fun e!3245061 () Bool)

(assert (=> b!5212673 (= e!3245058 e!3245061)))

(declare-fun res!2213944 () Bool)

(assert (=> b!5212673 (=> (not res!2213944) (not e!3245061))))

(declare-fun lt!2142404 () Bool)

(assert (=> b!5212673 (= res!2213944 (not lt!2142404))))

(declare-fun b!5212674 () Bool)

(declare-fun e!3245062 () Bool)

(assert (=> b!5212674 (= e!3245061 e!3245062)))

(declare-fun res!2213940 () Bool)

(assert (=> b!5212674 (=> res!2213940 e!3245062)))

(assert (=> b!5212674 (= res!2213940 call!367188)))

(declare-fun b!5212675 () Bool)

(assert (=> b!5212675 (= e!3245062 (not (= (head!11172 Nil!60577) (c!898691 (regOne!30112 r!7292)))))))

(declare-fun b!5212676 () Bool)

(declare-fun e!3245060 () Bool)

(assert (=> b!5212676 (= e!3245060 (= lt!2142404 call!367188))))

(declare-fun b!5212677 () Bool)

(declare-fun res!2213942 () Bool)

(assert (=> b!5212677 (=> res!2213942 e!3245058)))

(assert (=> b!5212677 (= res!2213942 (not (is-ElementMatch!14800 (regOne!30112 r!7292))))))

(declare-fun e!3245059 () Bool)

(assert (=> b!5212677 (= e!3245059 e!3245058)))

(declare-fun b!5212678 () Bool)

(declare-fun e!3245056 () Bool)

(assert (=> b!5212678 (= e!3245056 (nullable!4969 (regOne!30112 r!7292)))))

(declare-fun b!5212680 () Bool)

(declare-fun res!2213945 () Bool)

(assert (=> b!5212680 (=> res!2213945 e!3245058)))

(assert (=> b!5212680 (= res!2213945 e!3245057)))

(declare-fun res!2213943 () Bool)

(assert (=> b!5212680 (=> (not res!2213943) (not e!3245057))))

(assert (=> b!5212680 (= res!2213943 lt!2142404)))

(declare-fun b!5212681 () Bool)

(declare-fun res!2213946 () Bool)

(assert (=> b!5212681 (=> res!2213946 e!3245062)))

(assert (=> b!5212681 (= res!2213946 (not (isEmpty!32491 (tail!10269 Nil!60577))))))

(declare-fun b!5212682 () Bool)

(declare-fun res!2213941 () Bool)

(assert (=> b!5212682 (=> (not res!2213941) (not e!3245057))))

(assert (=> b!5212682 (= res!2213941 (isEmpty!32491 (tail!10269 Nil!60577)))))

(declare-fun b!5212683 () Bool)

(assert (=> b!5212683 (= e!3245059 (not lt!2142404))))

(declare-fun b!5212684 () Bool)

(assert (=> b!5212684 (= e!3245056 (matchR!6985 (derivativeStep!4048 (regOne!30112 r!7292) (head!11172 Nil!60577)) (tail!10269 Nil!60577)))))

(declare-fun bm!367183 () Bool)

(assert (=> bm!367183 (= call!367188 (isEmpty!32491 Nil!60577))))

(declare-fun d!1680738 () Bool)

(assert (=> d!1680738 e!3245060))

(declare-fun c!899015 () Bool)

(assert (=> d!1680738 (= c!899015 (is-EmptyExpr!14800 (regOne!30112 r!7292)))))

(assert (=> d!1680738 (= lt!2142404 e!3245056)))

(declare-fun c!899013 () Bool)

(assert (=> d!1680738 (= c!899013 (isEmpty!32491 Nil!60577))))

(assert (=> d!1680738 (validRegex!6536 (regOne!30112 r!7292))))

(assert (=> d!1680738 (= (matchR!6985 (regOne!30112 r!7292) Nil!60577) lt!2142404)))

(declare-fun b!5212679 () Bool)

(assert (=> b!5212679 (= e!3245060 e!3245059)))

(declare-fun c!899014 () Bool)

(assert (=> b!5212679 (= c!899014 (is-EmptyLang!14800 (regOne!30112 r!7292)))))

(assert (= (and d!1680738 c!899013) b!5212678))

(assert (= (and d!1680738 (not c!899013)) b!5212684))

(assert (= (and d!1680738 c!899015) b!5212676))

(assert (= (and d!1680738 (not c!899015)) b!5212679))

(assert (= (and b!5212679 c!899014) b!5212683))

(assert (= (and b!5212679 (not c!899014)) b!5212677))

(assert (= (and b!5212677 (not res!2213942)) b!5212680))

(assert (= (and b!5212680 res!2213943) b!5212671))

(assert (= (and b!5212671 res!2213947) b!5212682))

(assert (= (and b!5212682 res!2213941) b!5212672))

(assert (= (and b!5212680 (not res!2213945)) b!5212673))

(assert (= (and b!5212673 res!2213944) b!5212674))

(assert (= (and b!5212674 (not res!2213940)) b!5212681))

(assert (= (and b!5212681 (not res!2213946)) b!5212675))

(assert (= (or b!5212676 b!5212671 b!5212674) bm!367183))

(declare-fun m!6261968 () Bool)

(assert (=> d!1680738 m!6261968))

(assert (=> d!1680738 m!6261330))

(declare-fun m!6261970 () Bool)

(assert (=> b!5212681 m!6261970))

(assert (=> b!5212681 m!6261970))

(declare-fun m!6261972 () Bool)

(assert (=> b!5212681 m!6261972))

(assert (=> b!5212678 m!6261724))

(assert (=> b!5212682 m!6261970))

(assert (=> b!5212682 m!6261970))

(assert (=> b!5212682 m!6261972))

(declare-fun m!6261974 () Bool)

(assert (=> b!5212675 m!6261974))

(assert (=> b!5212672 m!6261974))

(assert (=> b!5212684 m!6261974))

(assert (=> b!5212684 m!6261974))

(declare-fun m!6261976 () Bool)

(assert (=> b!5212684 m!6261976))

(assert (=> b!5212684 m!6261970))

(assert (=> b!5212684 m!6261976))

(assert (=> b!5212684 m!6261970))

(declare-fun m!6261978 () Bool)

(assert (=> b!5212684 m!6261978))

(assert (=> bm!367183 m!6261968))

(assert (=> d!1680470 d!1680738))

(assert (=> d!1680470 d!1680646))

(declare-fun b!5212685 () Bool)

(declare-fun e!3245063 () (Set Context!8368))

(declare-fun e!3245065 () (Set Context!8368))

(assert (=> b!5212685 (= e!3245063 e!3245065)))

(declare-fun c!899016 () Bool)

(assert (=> b!5212685 (= c!899016 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142238))))))))

(declare-fun b!5212686 () Bool)

(declare-fun e!3245064 () Bool)

(assert (=> b!5212686 (= e!3245064 (nullable!4969 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142238)))))))))

(declare-fun call!367189 () (Set Context!8368))

(declare-fun b!5212687 () Bool)

(assert (=> b!5212687 (= e!3245063 (set.union call!367189 (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142238)))))) (h!67025 s!2326))))))

(declare-fun b!5212688 () Bool)

(assert (=> b!5212688 (= e!3245065 (as set.empty (Set Context!8368)))))

(declare-fun bm!367184 () Bool)

(assert (=> bm!367184 (= call!367189 (derivationStepZipperDown!248 (h!67023 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142238))))) (Context!8369 (t!373862 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142238)))))) (h!67025 s!2326)))))

(declare-fun d!1680740 () Bool)

(declare-fun c!899017 () Bool)

(assert (=> d!1680740 (= c!899017 e!3245064)))

(declare-fun res!2213948 () Bool)

(assert (=> d!1680740 (=> (not res!2213948) (not e!3245064))))

(assert (=> d!1680740 (= res!2213948 (is-Cons!60575 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142238))))))))

(assert (=> d!1680740 (= (derivationStepZipperUp!172 (Context!8369 (t!373862 (exprs!4684 lt!2142238))) (h!67025 s!2326)) e!3245063)))

(declare-fun b!5212689 () Bool)

(assert (=> b!5212689 (= e!3245065 call!367189)))

(assert (= (and d!1680740 res!2213948) b!5212686))

(assert (= (and d!1680740 c!899017) b!5212687))

(assert (= (and d!1680740 (not c!899017)) b!5212685))

(assert (= (and b!5212685 c!899016) b!5212689))

(assert (= (and b!5212685 (not c!899016)) b!5212688))

(assert (= (or b!5212687 b!5212689) bm!367184))

(declare-fun m!6261980 () Bool)

(assert (=> b!5212686 m!6261980))

(declare-fun m!6261982 () Bool)

(assert (=> b!5212687 m!6261982))

(declare-fun m!6261984 () Bool)

(assert (=> bm!367184 m!6261984))

(assert (=> b!5211788 d!1680740))

(declare-fun d!1680742 () Bool)

(assert (=> d!1680742 (= (Exists!1981 (ite c!898796 lambda!261372 lambda!261373)) (choose!38744 (ite c!898796 lambda!261372 lambda!261373)))))

(declare-fun bs!1210986 () Bool)

(assert (= bs!1210986 d!1680742))

(declare-fun m!6261986 () Bool)

(assert (=> bs!1210986 m!6261986))

(assert (=> bm!367046 d!1680742))

(declare-fun d!1680744 () Bool)

(declare-fun c!899018 () Bool)

(assert (=> d!1680744 (= c!899018 (isEmpty!32491 (t!373864 s!2326)))))

(declare-fun e!3245066 () Bool)

(assert (=> d!1680744 (= (matchZipper!1044 (set.union lt!2142241 lt!2142236) (t!373864 s!2326)) e!3245066)))

(declare-fun b!5212690 () Bool)

(assert (=> b!5212690 (= e!3245066 (nullableZipper!1226 (set.union lt!2142241 lt!2142236)))))

(declare-fun b!5212691 () Bool)

(assert (=> b!5212691 (= e!3245066 (matchZipper!1044 (derivationStepZipper!1070 (set.union lt!2142241 lt!2142236) (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))))))

(assert (= (and d!1680744 c!899018) b!5212690))

(assert (= (and d!1680744 (not c!899018)) b!5212691))

(assert (=> d!1680744 m!6261232))

(declare-fun m!6261988 () Bool)

(assert (=> b!5212690 m!6261988))

(assert (=> b!5212691 m!6261236))

(assert (=> b!5212691 m!6261236))

(declare-fun m!6261990 () Bool)

(assert (=> b!5212691 m!6261990))

(assert (=> b!5212691 m!6261240))

(assert (=> b!5212691 m!6261990))

(assert (=> b!5212691 m!6261240))

(declare-fun m!6261992 () Bool)

(assert (=> b!5212691 m!6261992))

(assert (=> d!1680494 d!1680744))

(assert (=> d!1680494 d!1680492))

(declare-fun d!1680746 () Bool)

(declare-fun e!3245069 () Bool)

(assert (=> d!1680746 (= (matchZipper!1044 (set.union lt!2142241 lt!2142236) (t!373864 s!2326)) e!3245069)))

(declare-fun res!2213951 () Bool)

(assert (=> d!1680746 (=> res!2213951 e!3245069)))

(assert (=> d!1680746 (= res!2213951 (matchZipper!1044 lt!2142241 (t!373864 s!2326)))))

(assert (=> d!1680746 true))

(declare-fun _$48!799 () Unit!152466)

(assert (=> d!1680746 (= (choose!38747 lt!2142241 lt!2142236 (t!373864 s!2326)) _$48!799)))

(declare-fun b!5212694 () Bool)

(assert (=> b!5212694 (= e!3245069 (matchZipper!1044 lt!2142236 (t!373864 s!2326)))))

(assert (= (and d!1680746 (not res!2213951)) b!5212694))

(assert (=> d!1680746 m!6261390))

(assert (=> d!1680746 m!6261070))

(assert (=> b!5212694 m!6261014))

(assert (=> d!1680494 d!1680746))

(assert (=> b!5211932 d!1680684))

(assert (=> b!5211932 d!1680610))

(declare-fun b!5212695 () Bool)

(declare-fun e!3245071 () (Set Context!8368))

(declare-fun call!367190 () (Set Context!8368))

(assert (=> b!5212695 (= e!3245071 call!367190)))

(declare-fun bm!367185 () Bool)

(declare-fun call!367194 () (Set Context!8368))

(declare-fun call!367195 () (Set Context!8368))

(assert (=> bm!367185 (= call!367194 call!367195)))

(declare-fun d!1680748 () Bool)

(declare-fun c!899019 () Bool)

(assert (=> d!1680748 (= c!899019 (and (is-ElementMatch!14800 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))) (= (c!898691 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))) (h!67025 s!2326))))))

(declare-fun e!3245074 () (Set Context!8368))

(assert (=> d!1680748 (= (derivationStepZipperDown!248 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))) (ite c!898759 lt!2142235 (Context!8369 call!367024)) (h!67025 s!2326)) e!3245074)))

(declare-fun b!5212696 () Bool)

(declare-fun e!3245070 () (Set Context!8368))

(declare-fun call!367193 () (Set Context!8368))

(assert (=> b!5212696 (= e!3245070 (set.union call!367193 call!367194))))

(declare-fun bm!367186 () Bool)

(assert (=> bm!367186 (= call!367190 call!367194)))

(declare-fun bm!367187 () Bool)

(declare-fun call!367192 () List!60699)

(declare-fun call!367191 () List!60699)

(assert (=> bm!367187 (= call!367192 call!367191)))

(declare-fun b!5212697 () Bool)

(declare-fun e!3245073 () (Set Context!8368))

(assert (=> b!5212697 (= e!3245073 call!367190)))

(declare-fun c!899023 () Bool)

(declare-fun bm!367188 () Bool)

(assert (=> bm!367188 (= call!367193 (derivationStepZipperDown!248 (ite c!899023 (regTwo!30113 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))) (regOne!30112 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))))) (ite c!899023 (ite c!898759 lt!2142235 (Context!8369 call!367024)) (Context!8369 call!367191)) (h!67025 s!2326)))))

(declare-fun c!899021 () Bool)

(declare-fun bm!367189 () Bool)

(declare-fun c!899022 () Bool)

(assert (=> bm!367189 (= call!367195 (derivationStepZipperDown!248 (ite c!899023 (regOne!30113 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))) (ite c!899021 (regTwo!30112 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))) (ite c!899022 (regOne!30112 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))) (reg!15129 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))))))) (ite (or c!899023 c!899021) (ite c!898759 lt!2142235 (Context!8369 call!367024)) (Context!8369 call!367192)) (h!67025 s!2326)))))

(declare-fun b!5212698 () Bool)

(declare-fun c!899020 () Bool)

(assert (=> b!5212698 (= c!899020 (is-Star!14800 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))

(assert (=> b!5212698 (= e!3245071 e!3245073)))

(declare-fun b!5212699 () Bool)

(assert (=> b!5212699 (= e!3245070 e!3245071)))

(assert (=> b!5212699 (= c!899022 (is-Concat!23645 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun b!5212700 () Bool)

(declare-fun e!3245072 () Bool)

(assert (=> b!5212700 (= e!3245072 (nullable!4969 (regOne!30112 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))))))))

(declare-fun bm!367190 () Bool)

(assert (=> bm!367190 (= call!367191 ($colon$colon!1276 (exprs!4684 (ite c!898759 lt!2142235 (Context!8369 call!367024))) (ite (or c!899021 c!899022) (regTwo!30112 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))) (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343))))))))))

(declare-fun b!5212701 () Bool)

(assert (=> b!5212701 (= c!899021 e!3245072)))

(declare-fun res!2213952 () Bool)

(assert (=> b!5212701 (=> (not res!2213952) (not e!3245072))))

(assert (=> b!5212701 (= res!2213952 (is-Concat!23645 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun e!3245075 () (Set Context!8368))

(assert (=> b!5212701 (= e!3245075 e!3245070)))

(declare-fun b!5212702 () Bool)

(assert (=> b!5212702 (= e!3245074 e!3245075)))

(assert (=> b!5212702 (= c!899023 (is-Union!14800 (ite c!898759 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun b!5212703 () Bool)

(assert (=> b!5212703 (= e!3245073 (as set.empty (Set Context!8368)))))

(declare-fun b!5212704 () Bool)

(assert (=> b!5212704 (= e!3245075 (set.union call!367195 call!367193))))

(declare-fun b!5212705 () Bool)

(assert (=> b!5212705 (= e!3245074 (set.insert (ite c!898759 lt!2142235 (Context!8369 call!367024)) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680748 c!899019) b!5212705))

(assert (= (and d!1680748 (not c!899019)) b!5212702))

(assert (= (and b!5212702 c!899023) b!5212704))

(assert (= (and b!5212702 (not c!899023)) b!5212701))

(assert (= (and b!5212701 res!2213952) b!5212700))

(assert (= (and b!5212701 c!899021) b!5212696))

(assert (= (and b!5212701 (not c!899021)) b!5212699))

(assert (= (and b!5212699 c!899022) b!5212695))

(assert (= (and b!5212699 (not c!899022)) b!5212698))

(assert (= (and b!5212698 c!899020) b!5212697))

(assert (= (and b!5212698 (not c!899020)) b!5212703))

(assert (= (or b!5212695 b!5212697) bm!367187))

(assert (= (or b!5212695 b!5212697) bm!367186))

(assert (= (or b!5212696 bm!367187) bm!367190))

(assert (= (or b!5212696 bm!367186) bm!367185))

(assert (= (or b!5212704 b!5212696) bm!367188))

(assert (= (or b!5212704 bm!367185) bm!367189))

(declare-fun m!6261994 () Bool)

(assert (=> bm!367188 m!6261994))

(declare-fun m!6261996 () Bool)

(assert (=> bm!367189 m!6261996))

(declare-fun m!6261998 () Bool)

(assert (=> b!5212700 m!6261998))

(declare-fun m!6262000 () Bool)

(assert (=> bm!367190 m!6262000))

(declare-fun m!6262002 () Bool)

(assert (=> b!5212705 m!6262002))

(assert (=> bm!367021 d!1680748))

(declare-fun d!1680750 () Bool)

(assert (=> d!1680750 (= (head!11171 (unfocusZipperList!242 zl!343)) (h!67023 (unfocusZipperList!242 zl!343)))))

(assert (=> b!5211633 d!1680750))

(declare-fun bs!1210987 () Bool)

(declare-fun d!1680752 () Bool)

(assert (= bs!1210987 (and d!1680752 d!1680600)))

(declare-fun lambda!261429 () Int)

(assert (=> bs!1210987 (= lambda!261429 lambda!261405)))

(declare-fun bs!1210988 () Bool)

(assert (= bs!1210988 (and d!1680752 d!1680620)))

(assert (=> bs!1210988 (= lambda!261429 lambda!261408)))

(declare-fun bs!1210989 () Bool)

(assert (= bs!1210989 (and d!1680752 d!1680634)))

(assert (=> bs!1210989 (= lambda!261429 lambda!261412)))

(assert (=> d!1680752 (= (nullableZipper!1226 lt!2142237) (exists!1963 lt!2142237 lambda!261429))))

(declare-fun bs!1210990 () Bool)

(assert (= bs!1210990 d!1680752))

(declare-fun m!6262004 () Bool)

(assert (=> bs!1210990 m!6262004))

(assert (=> b!5211843 d!1680752))

(assert (=> bs!1210849 d!1680466))

(declare-fun d!1680754 () Bool)

(assert (=> d!1680754 (= (nullable!4969 r!7292) (nullableFct!1378 r!7292))))

(declare-fun bs!1210991 () Bool)

(assert (= bs!1210991 d!1680754))

(declare-fun m!6262006 () Bool)

(assert (=> bs!1210991 m!6262006))

(assert (=> b!5211928 d!1680754))

(assert (=> b!5211849 d!1680484))

(declare-fun b!5212706 () Bool)

(declare-fun res!2213960 () Bool)

(declare-fun e!3245077 () Bool)

(assert (=> b!5212706 (=> (not res!2213960) (not e!3245077))))

(declare-fun call!367196 () Bool)

(assert (=> b!5212706 (= res!2213960 (not call!367196))))

(declare-fun b!5212707 () Bool)

(assert (=> b!5212707 (= e!3245077 (= (head!11172 s!2326) (c!898691 (regTwo!30112 r!7292))))))

(declare-fun b!5212708 () Bool)

(declare-fun e!3245078 () Bool)

(declare-fun e!3245081 () Bool)

(assert (=> b!5212708 (= e!3245078 e!3245081)))

(declare-fun res!2213957 () Bool)

(assert (=> b!5212708 (=> (not res!2213957) (not e!3245081))))

(declare-fun lt!2142405 () Bool)

(assert (=> b!5212708 (= res!2213957 (not lt!2142405))))

(declare-fun b!5212709 () Bool)

(declare-fun e!3245082 () Bool)

(assert (=> b!5212709 (= e!3245081 e!3245082)))

(declare-fun res!2213953 () Bool)

(assert (=> b!5212709 (=> res!2213953 e!3245082)))

(assert (=> b!5212709 (= res!2213953 call!367196)))

(declare-fun b!5212710 () Bool)

(assert (=> b!5212710 (= e!3245082 (not (= (head!11172 s!2326) (c!898691 (regTwo!30112 r!7292)))))))

(declare-fun b!5212711 () Bool)

(declare-fun e!3245080 () Bool)

(assert (=> b!5212711 (= e!3245080 (= lt!2142405 call!367196))))

(declare-fun b!5212712 () Bool)

(declare-fun res!2213955 () Bool)

(assert (=> b!5212712 (=> res!2213955 e!3245078)))

(assert (=> b!5212712 (= res!2213955 (not (is-ElementMatch!14800 (regTwo!30112 r!7292))))))

(declare-fun e!3245079 () Bool)

(assert (=> b!5212712 (= e!3245079 e!3245078)))

(declare-fun b!5212713 () Bool)

(declare-fun e!3245076 () Bool)

(assert (=> b!5212713 (= e!3245076 (nullable!4969 (regTwo!30112 r!7292)))))

(declare-fun b!5212715 () Bool)

(declare-fun res!2213958 () Bool)

(assert (=> b!5212715 (=> res!2213958 e!3245078)))

(assert (=> b!5212715 (= res!2213958 e!3245077)))

(declare-fun res!2213956 () Bool)

(assert (=> b!5212715 (=> (not res!2213956) (not e!3245077))))

(assert (=> b!5212715 (= res!2213956 lt!2142405)))

(declare-fun b!5212716 () Bool)

(declare-fun res!2213959 () Bool)

(assert (=> b!5212716 (=> res!2213959 e!3245082)))

(assert (=> b!5212716 (= res!2213959 (not (isEmpty!32491 (tail!10269 s!2326))))))

(declare-fun b!5212717 () Bool)

(declare-fun res!2213954 () Bool)

(assert (=> b!5212717 (=> (not res!2213954) (not e!3245077))))

(assert (=> b!5212717 (= res!2213954 (isEmpty!32491 (tail!10269 s!2326)))))

(declare-fun b!5212718 () Bool)

(assert (=> b!5212718 (= e!3245079 (not lt!2142405))))

(declare-fun b!5212719 () Bool)

(assert (=> b!5212719 (= e!3245076 (matchR!6985 (derivativeStep!4048 (regTwo!30112 r!7292) (head!11172 s!2326)) (tail!10269 s!2326)))))

(declare-fun bm!367191 () Bool)

(assert (=> bm!367191 (= call!367196 (isEmpty!32491 s!2326))))

(declare-fun d!1680756 () Bool)

(assert (=> d!1680756 e!3245080))

(declare-fun c!899026 () Bool)

(assert (=> d!1680756 (= c!899026 (is-EmptyExpr!14800 (regTwo!30112 r!7292)))))

(assert (=> d!1680756 (= lt!2142405 e!3245076)))

(declare-fun c!899024 () Bool)

(assert (=> d!1680756 (= c!899024 (isEmpty!32491 s!2326))))

(assert (=> d!1680756 (validRegex!6536 (regTwo!30112 r!7292))))

(assert (=> d!1680756 (= (matchR!6985 (regTwo!30112 r!7292) s!2326) lt!2142405)))

(declare-fun b!5212714 () Bool)

(assert (=> b!5212714 (= e!3245080 e!3245079)))

(declare-fun c!899025 () Bool)

(assert (=> b!5212714 (= c!899025 (is-EmptyLang!14800 (regTwo!30112 r!7292)))))

(assert (= (and d!1680756 c!899024) b!5212713))

(assert (= (and d!1680756 (not c!899024)) b!5212719))

(assert (= (and d!1680756 c!899026) b!5212711))

(assert (= (and d!1680756 (not c!899026)) b!5212714))

(assert (= (and b!5212714 c!899025) b!5212718))

(assert (= (and b!5212714 (not c!899025)) b!5212712))

(assert (= (and b!5212712 (not res!2213955)) b!5212715))

(assert (= (and b!5212715 res!2213956) b!5212706))

(assert (= (and b!5212706 res!2213960) b!5212717))

(assert (= (and b!5212717 res!2213954) b!5212707))

(assert (= (and b!5212715 (not res!2213958)) b!5212708))

(assert (= (and b!5212708 res!2213957) b!5212709))

(assert (= (and b!5212709 (not res!2213953)) b!5212716))

(assert (= (and b!5212716 (not res!2213959)) b!5212710))

(assert (= (or b!5212711 b!5212706 b!5212709) bm!367191))

(assert (=> d!1680756 m!6261396))

(assert (=> d!1680756 m!6261770))

(assert (=> b!5212716 m!6261402))

(assert (=> b!5212716 m!6261402))

(assert (=> b!5212716 m!6261404))

(assert (=> b!5212713 m!6261776))

(assert (=> b!5212717 m!6261402))

(assert (=> b!5212717 m!6261402))

(assert (=> b!5212717 m!6261404))

(assert (=> b!5212710 m!6261408))

(assert (=> b!5212707 m!6261408))

(assert (=> b!5212719 m!6261408))

(assert (=> b!5212719 m!6261408))

(declare-fun m!6262008 () Bool)

(assert (=> b!5212719 m!6262008))

(assert (=> b!5212719 m!6261402))

(assert (=> b!5212719 m!6262008))

(assert (=> b!5212719 m!6261402))

(declare-fun m!6262010 () Bool)

(assert (=> b!5212719 m!6262010))

(assert (=> bm!367191 m!6261396))

(assert (=> b!5211817 d!1680756))

(declare-fun bs!1210992 () Bool)

(declare-fun d!1680758 () Bool)

(assert (= bs!1210992 (and d!1680758 d!1680432)))

(declare-fun lambda!261430 () Int)

(assert (=> bs!1210992 (= lambda!261430 lambda!261357)))

(declare-fun bs!1210993 () Bool)

(assert (= bs!1210993 (and d!1680758 d!1680436)))

(assert (=> bs!1210993 (= lambda!261430 lambda!261358)))

(declare-fun bs!1210994 () Bool)

(assert (= bs!1210994 (and d!1680758 d!1680430)))

(assert (=> bs!1210994 (= lambda!261430 lambda!261354)))

(declare-fun bs!1210995 () Bool)

(assert (= bs!1210995 (and d!1680758 d!1680428)))

(assert (=> bs!1210995 (= lambda!261430 lambda!261351)))

(declare-fun bs!1210996 () Bool)

(assert (= bs!1210996 (and d!1680758 d!1680696)))

(assert (=> bs!1210996 (= lambda!261430 lambda!261421)))

(declare-fun bs!1210997 () Bool)

(assert (= bs!1210997 (and d!1680758 d!1680426)))

(assert (=> bs!1210997 (= lambda!261430 lambda!261348)))

(declare-fun bs!1210998 () Bool)

(assert (= bs!1210998 (and d!1680758 d!1680596)))

(assert (=> bs!1210998 (= lambda!261430 lambda!261402)))

(declare-fun bs!1210999 () Bool)

(assert (= bs!1210999 (and d!1680758 d!1680734)))

(assert (=> bs!1210999 (= lambda!261430 lambda!261428)))

(declare-fun b!5212721 () Bool)

(declare-fun e!3245086 () Regex!14800)

(assert (=> b!5212721 (= e!3245086 (h!67023 (t!373862 (unfocusZipperList!242 zl!343))))))

(declare-fun b!5212722 () Bool)

(declare-fun e!3245085 () Regex!14800)

(assert (=> b!5212722 (= e!3245085 (Union!14800 (h!67023 (t!373862 (unfocusZipperList!242 zl!343))) (generalisedUnion!729 (t!373862 (t!373862 (unfocusZipperList!242 zl!343))))))))

(declare-fun b!5212723 () Bool)

(declare-fun e!3245088 () Bool)

(declare-fun e!3245083 () Bool)

(assert (=> b!5212723 (= e!3245088 e!3245083)))

(declare-fun c!899028 () Bool)

(assert (=> b!5212723 (= c!899028 (isEmpty!32487 (tail!10268 (t!373862 (unfocusZipperList!242 zl!343)))))))

(declare-fun b!5212724 () Bool)

(declare-fun lt!2142406 () Regex!14800)

(assert (=> b!5212724 (= e!3245083 (isUnion!203 lt!2142406))))

(declare-fun b!5212725 () Bool)

(assert (=> b!5212725 (= e!3245085 EmptyLang!14800)))

(declare-fun b!5212726 () Bool)

(assert (=> b!5212726 (= e!3245083 (= lt!2142406 (head!11171 (t!373862 (unfocusZipperList!242 zl!343)))))))

(declare-fun b!5212727 () Bool)

(declare-fun e!3245087 () Bool)

(assert (=> b!5212727 (= e!3245087 (isEmpty!32487 (t!373862 (t!373862 (unfocusZipperList!242 zl!343)))))))

(declare-fun b!5212728 () Bool)

(assert (=> b!5212728 (= e!3245088 (isEmptyLang!771 lt!2142406))))

(declare-fun b!5212729 () Bool)

(declare-fun e!3245084 () Bool)

(assert (=> b!5212729 (= e!3245084 e!3245088)))

(declare-fun c!899029 () Bool)

(assert (=> b!5212729 (= c!899029 (isEmpty!32487 (t!373862 (unfocusZipperList!242 zl!343))))))

(declare-fun b!5212720 () Bool)

(assert (=> b!5212720 (= e!3245086 e!3245085)))

(declare-fun c!899027 () Bool)

(assert (=> b!5212720 (= c!899027 (is-Cons!60575 (t!373862 (unfocusZipperList!242 zl!343))))))

(assert (=> d!1680758 e!3245084))

(declare-fun res!2213962 () Bool)

(assert (=> d!1680758 (=> (not res!2213962) (not e!3245084))))

(assert (=> d!1680758 (= res!2213962 (validRegex!6536 lt!2142406))))

(assert (=> d!1680758 (= lt!2142406 e!3245086)))

(declare-fun c!899030 () Bool)

(assert (=> d!1680758 (= c!899030 e!3245087)))

(declare-fun res!2213961 () Bool)

(assert (=> d!1680758 (=> (not res!2213961) (not e!3245087))))

(assert (=> d!1680758 (= res!2213961 (is-Cons!60575 (t!373862 (unfocusZipperList!242 zl!343))))))

(assert (=> d!1680758 (forall!14234 (t!373862 (unfocusZipperList!242 zl!343)) lambda!261430)))

(assert (=> d!1680758 (= (generalisedUnion!729 (t!373862 (unfocusZipperList!242 zl!343))) lt!2142406)))

(assert (= (and d!1680758 res!2213961) b!5212727))

(assert (= (and d!1680758 c!899030) b!5212721))

(assert (= (and d!1680758 (not c!899030)) b!5212720))

(assert (= (and b!5212720 c!899027) b!5212722))

(assert (= (and b!5212720 (not c!899027)) b!5212725))

(assert (= (and d!1680758 res!2213962) b!5212729))

(assert (= (and b!5212729 c!899029) b!5212728))

(assert (= (and b!5212729 (not c!899029)) b!5212723))

(assert (= (and b!5212723 c!899028) b!5212726))

(assert (= (and b!5212723 (not c!899028)) b!5212724))

(declare-fun m!6262012 () Bool)

(assert (=> b!5212724 m!6262012))

(assert (=> b!5212729 m!6261206))

(declare-fun m!6262014 () Bool)

(assert (=> d!1680758 m!6262014))

(declare-fun m!6262016 () Bool)

(assert (=> d!1680758 m!6262016))

(declare-fun m!6262018 () Bool)

(assert (=> b!5212728 m!6262018))

(declare-fun m!6262020 () Bool)

(assert (=> b!5212723 m!6262020))

(assert (=> b!5212723 m!6262020))

(declare-fun m!6262022 () Bool)

(assert (=> b!5212723 m!6262022))

(declare-fun m!6262024 () Bool)

(assert (=> b!5212722 m!6262024))

(declare-fun m!6262026 () Bool)

(assert (=> b!5212726 m!6262026))

(declare-fun m!6262028 () Bool)

(assert (=> b!5212727 m!6262028))

(assert (=> b!5211629 d!1680758))

(assert (=> d!1680500 d!1680498))

(assert (=> d!1680500 d!1680496))

(declare-fun d!1680760 () Bool)

(assert (=> d!1680760 (= (matchR!6985 r!7292 s!2326) (matchRSpec!1903 r!7292 s!2326))))

(assert (=> d!1680760 true))

(declare-fun _$88!3465 () Unit!152466)

(assert (=> d!1680760 (= (choose!38748 r!7292 s!2326) _$88!3465)))

(declare-fun bs!1211000 () Bool)

(assert (= bs!1211000 d!1680760))

(assert (=> bs!1211000 m!6261064))

(assert (=> bs!1211000 m!6261062))

(assert (=> d!1680500 d!1680760))

(assert (=> d!1680500 d!1680440))

(assert (=> d!1680504 d!1680662))

(declare-fun bs!1211001 () Bool)

(declare-fun d!1680762 () Bool)

(assert (= bs!1211001 (and d!1680762 d!1680600)))

(declare-fun lambda!261431 () Int)

(assert (=> bs!1211001 (= lambda!261431 lambda!261405)))

(declare-fun bs!1211002 () Bool)

(assert (= bs!1211002 (and d!1680762 d!1680620)))

(assert (=> bs!1211002 (= lambda!261431 lambda!261408)))

(declare-fun bs!1211003 () Bool)

(assert (= bs!1211003 (and d!1680762 d!1680634)))

(assert (=> bs!1211003 (= lambda!261431 lambda!261412)))

(declare-fun bs!1211004 () Bool)

(assert (= bs!1211004 (and d!1680762 d!1680752)))

(assert (=> bs!1211004 (= lambda!261431 lambda!261429)))

(assert (=> d!1680762 (= (nullableZipper!1226 lt!2142241) (exists!1963 lt!2142241 lambda!261431))))

(declare-fun bs!1211005 () Bool)

(assert (= bs!1211005 d!1680762))

(declare-fun m!6262030 () Bool)

(assert (=> bs!1211005 m!6262030))

(assert (=> b!5211845 d!1680762))

(assert (=> b!5211935 d!1680434))

(declare-fun call!367197 () Bool)

(declare-fun c!899031 () Bool)

(declare-fun bm!367192 () Bool)

(declare-fun c!899032 () Bool)

(assert (=> bm!367192 (= call!367197 (validRegex!6536 (ite c!899031 (reg!15129 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))) (ite c!899032 (regOne!30113 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))) (regOne!30112 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))))))))))

(declare-fun b!5212731 () Bool)

(declare-fun e!3245094 () Bool)

(declare-fun e!3245092 () Bool)

(assert (=> b!5212731 (= e!3245094 e!3245092)))

(assert (=> b!5212731 (= c!899031 (is-Star!14800 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))

(declare-fun b!5212732 () Bool)

(declare-fun e!3245089 () Bool)

(declare-fun call!367198 () Bool)

(assert (=> b!5212732 (= e!3245089 call!367198)))

(declare-fun b!5212733 () Bool)

(declare-fun e!3245091 () Bool)

(assert (=> b!5212733 (= e!3245091 e!3245089)))

(declare-fun res!2213965 () Bool)

(assert (=> b!5212733 (=> (not res!2213965) (not e!3245089))))

(declare-fun call!367199 () Bool)

(assert (=> b!5212733 (= res!2213965 call!367199)))

(declare-fun bm!367193 () Bool)

(assert (=> bm!367193 (= call!367199 call!367197)))

(declare-fun b!5212734 () Bool)

(declare-fun e!3245093 () Bool)

(assert (=> b!5212734 (= e!3245092 e!3245093)))

(assert (=> b!5212734 (= c!899032 (is-Union!14800 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))

(declare-fun b!5212730 () Bool)

(declare-fun e!3245095 () Bool)

(assert (=> b!5212730 (= e!3245092 e!3245095)))

(declare-fun res!2213963 () Bool)

(assert (=> b!5212730 (= res!2213963 (not (nullable!4969 (reg!15129 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))))

(assert (=> b!5212730 (=> (not res!2213963) (not e!3245095))))

(declare-fun d!1680764 () Bool)

(declare-fun res!2213964 () Bool)

(assert (=> d!1680764 (=> res!2213964 e!3245094)))

(assert (=> d!1680764 (= res!2213964 (is-ElementMatch!14800 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))

(assert (=> d!1680764 (= (validRegex!6536 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))) e!3245094)))

(declare-fun b!5212735 () Bool)

(declare-fun e!3245090 () Bool)

(assert (=> b!5212735 (= e!3245090 call!367198)))

(declare-fun b!5212736 () Bool)

(declare-fun res!2213966 () Bool)

(assert (=> b!5212736 (=> (not res!2213966) (not e!3245090))))

(assert (=> b!5212736 (= res!2213966 call!367199)))

(assert (=> b!5212736 (= e!3245093 e!3245090)))

(declare-fun b!5212737 () Bool)

(declare-fun res!2213967 () Bool)

(assert (=> b!5212737 (=> res!2213967 e!3245091)))

(assert (=> b!5212737 (= res!2213967 (not (is-Concat!23645 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))))))))

(assert (=> b!5212737 (= e!3245093 e!3245091)))

(declare-fun b!5212738 () Bool)

(assert (=> b!5212738 (= e!3245095 call!367197)))

(declare-fun bm!367194 () Bool)

(assert (=> bm!367194 (= call!367198 (validRegex!6536 (ite c!899032 (regTwo!30113 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))) (regTwo!30112 (ite c!898781 (reg!15129 (regOne!30113 (regOne!30112 r!7292))) (ite c!898782 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292)))))))))))

(assert (= (and d!1680764 (not res!2213964)) b!5212731))

(assert (= (and b!5212731 c!899031) b!5212730))

(assert (= (and b!5212731 (not c!899031)) b!5212734))

(assert (= (and b!5212730 res!2213963) b!5212738))

(assert (= (and b!5212734 c!899032) b!5212736))

(assert (= (and b!5212734 (not c!899032)) b!5212737))

(assert (= (and b!5212736 res!2213966) b!5212735))

(assert (= (and b!5212737 (not res!2213967)) b!5212733))

(assert (= (and b!5212733 res!2213965) b!5212732))

(assert (= (or b!5212735 b!5212732) bm!367194))

(assert (= (or b!5212736 b!5212733) bm!367193))

(assert (= (or b!5212738 bm!367193) bm!367192))

(declare-fun m!6262032 () Bool)

(assert (=> bm!367192 m!6262032))

(declare-fun m!6262034 () Bool)

(assert (=> b!5212730 m!6262034))

(declare-fun m!6262036 () Bool)

(assert (=> bm!367194 m!6262036))

(assert (=> bm!367038 d!1680764))

(declare-fun d!1680766 () Bool)

(declare-fun res!2213968 () Bool)

(declare-fun e!3245096 () Bool)

(assert (=> d!1680766 (=> res!2213968 e!3245096)))

(assert (=> d!1680766 (= res!2213968 (is-Nil!60575 (exprs!4684 (h!67024 zl!343))))))

(assert (=> d!1680766 (= (forall!14234 (exprs!4684 (h!67024 zl!343)) lambda!261358) e!3245096)))

(declare-fun b!5212739 () Bool)

(declare-fun e!3245097 () Bool)

(assert (=> b!5212739 (= e!3245096 e!3245097)))

(declare-fun res!2213969 () Bool)

(assert (=> b!5212739 (=> (not res!2213969) (not e!3245097))))

(assert (=> b!5212739 (= res!2213969 (dynLambda!23932 lambda!261358 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5212740 () Bool)

(assert (=> b!5212740 (= e!3245097 (forall!14234 (t!373862 (exprs!4684 (h!67024 zl!343))) lambda!261358))))

(assert (= (and d!1680766 (not res!2213968)) b!5212739))

(assert (= (and b!5212739 res!2213969) b!5212740))

(declare-fun b_lambda!201605 () Bool)

(assert (=> (not b_lambda!201605) (not b!5212739)))

(declare-fun m!6262038 () Bool)

(assert (=> b!5212739 m!6262038))

(declare-fun m!6262040 () Bool)

(assert (=> b!5212740 m!6262040))

(assert (=> d!1680436 d!1680766))

(assert (=> d!1680502 d!1680504))

(assert (=> d!1680502 d!1680488))

(declare-fun d!1680768 () Bool)

(declare-fun e!3245098 () Bool)

(assert (=> d!1680768 (= (matchZipper!1044 (set.union lt!2142225 lt!2142223) (t!373864 s!2326)) e!3245098)))

(declare-fun res!2213970 () Bool)

(assert (=> d!1680768 (=> res!2213970 e!3245098)))

(assert (=> d!1680768 (= res!2213970 (matchZipper!1044 lt!2142225 (t!373864 s!2326)))))

(assert (=> d!1680768 true))

(declare-fun _$48!800 () Unit!152466)

(assert (=> d!1680768 (= (choose!38747 lt!2142225 lt!2142223 (t!373864 s!2326)) _$48!800)))

(declare-fun b!5212741 () Bool)

(assert (=> b!5212741 (= e!3245098 (matchZipper!1044 lt!2142223 (t!373864 s!2326)))))

(assert (= (and d!1680768 (not res!2213970)) b!5212741))

(assert (=> d!1680768 m!6261048))

(assert (=> d!1680768 m!6261046))

(assert (=> b!5212741 m!6261020))

(assert (=> d!1680502 d!1680768))

(declare-fun d!1680770 () Bool)

(assert (=> d!1680770 (= ($colon$colon!1276 (exprs!4684 lt!2142235) (ite (or c!898764 c!898765) (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (regTwo!30113 (regOne!30112 r!7292)))) (Cons!60575 (ite (or c!898764 c!898765) (regTwo!30112 (regTwo!30113 (regOne!30112 r!7292))) (regTwo!30113 (regOne!30112 r!7292))) (exprs!4684 lt!2142235)))))

(assert (=> bm!367030 d!1680770))

(declare-fun d!1680772 () Bool)

(declare-fun res!2213971 () Bool)

(declare-fun e!3245099 () Bool)

(assert (=> d!1680772 (=> res!2213971 e!3245099)))

(assert (=> d!1680772 (= res!2213971 (is-Nil!60575 (exprs!4684 setElem!33107)))))

(assert (=> d!1680772 (= (forall!14234 (exprs!4684 setElem!33107) lambda!261357) e!3245099)))

(declare-fun b!5212742 () Bool)

(declare-fun e!3245100 () Bool)

(assert (=> b!5212742 (= e!3245099 e!3245100)))

(declare-fun res!2213972 () Bool)

(assert (=> b!5212742 (=> (not res!2213972) (not e!3245100))))

(assert (=> b!5212742 (= res!2213972 (dynLambda!23932 lambda!261357 (h!67023 (exprs!4684 setElem!33107))))))

(declare-fun b!5212743 () Bool)

(assert (=> b!5212743 (= e!3245100 (forall!14234 (t!373862 (exprs!4684 setElem!33107)) lambda!261357))))

(assert (= (and d!1680772 (not res!2213971)) b!5212742))

(assert (= (and b!5212742 res!2213972) b!5212743))

(declare-fun b_lambda!201607 () Bool)

(assert (=> (not b_lambda!201607) (not b!5212742)))

(declare-fun m!6262042 () Bool)

(assert (=> b!5212742 m!6262042))

(declare-fun m!6262044 () Bool)

(assert (=> b!5212743 m!6262044))

(assert (=> d!1680432 d!1680772))

(assert (=> b!5211641 d!1680430))

(declare-fun bs!1211006 () Bool)

(declare-fun d!1680774 () Bool)

(assert (= bs!1211006 (and d!1680774 d!1680432)))

(declare-fun lambda!261432 () Int)

(assert (=> bs!1211006 (= lambda!261432 lambda!261357)))

(declare-fun bs!1211007 () Bool)

(assert (= bs!1211007 (and d!1680774 d!1680436)))

(assert (=> bs!1211007 (= lambda!261432 lambda!261358)))

(declare-fun bs!1211008 () Bool)

(assert (= bs!1211008 (and d!1680774 d!1680430)))

(assert (=> bs!1211008 (= lambda!261432 lambda!261354)))

(declare-fun bs!1211009 () Bool)

(assert (= bs!1211009 (and d!1680774 d!1680428)))

(assert (=> bs!1211009 (= lambda!261432 lambda!261351)))

(declare-fun bs!1211010 () Bool)

(assert (= bs!1211010 (and d!1680774 d!1680758)))

(assert (=> bs!1211010 (= lambda!261432 lambda!261430)))

(declare-fun bs!1211011 () Bool)

(assert (= bs!1211011 (and d!1680774 d!1680696)))

(assert (=> bs!1211011 (= lambda!261432 lambda!261421)))

(declare-fun bs!1211012 () Bool)

(assert (= bs!1211012 (and d!1680774 d!1680426)))

(assert (=> bs!1211012 (= lambda!261432 lambda!261348)))

(declare-fun bs!1211013 () Bool)

(assert (= bs!1211013 (and d!1680774 d!1680596)))

(assert (=> bs!1211013 (= lambda!261432 lambda!261402)))

(declare-fun bs!1211014 () Bool)

(assert (= bs!1211014 (and d!1680774 d!1680734)))

(assert (=> bs!1211014 (= lambda!261432 lambda!261428)))

(declare-fun lt!2142407 () List!60699)

(assert (=> d!1680774 (forall!14234 lt!2142407 lambda!261432)))

(declare-fun e!3245101 () List!60699)

(assert (=> d!1680774 (= lt!2142407 e!3245101)))

(declare-fun c!899033 () Bool)

(assert (=> d!1680774 (= c!899033 (is-Cons!60576 (t!373863 zl!343)))))

(assert (=> d!1680774 (= (unfocusZipperList!242 (t!373863 zl!343)) lt!2142407)))

(declare-fun b!5212744 () Bool)

(assert (=> b!5212744 (= e!3245101 (Cons!60575 (generalisedConcat!469 (exprs!4684 (h!67024 (t!373863 zl!343)))) (unfocusZipperList!242 (t!373863 (t!373863 zl!343)))))))

(declare-fun b!5212745 () Bool)

(assert (=> b!5212745 (= e!3245101 Nil!60575)))

(assert (= (and d!1680774 c!899033) b!5212744))

(assert (= (and d!1680774 (not c!899033)) b!5212745))

(declare-fun m!6262046 () Bool)

(assert (=> d!1680774 m!6262046))

(declare-fun m!6262048 () Bool)

(assert (=> b!5212744 m!6262048))

(declare-fun m!6262050 () Bool)

(assert (=> b!5212744 m!6262050))

(assert (=> b!5211641 d!1680774))

(declare-fun d!1680776 () Bool)

(declare-fun res!2213973 () Bool)

(declare-fun e!3245102 () Bool)

(assert (=> d!1680776 (=> res!2213973 e!3245102)))

(assert (=> d!1680776 (= res!2213973 (is-Nil!60575 lt!2142314))))

(assert (=> d!1680776 (= (forall!14234 lt!2142314 lambda!261351) e!3245102)))

(declare-fun b!5212746 () Bool)

(declare-fun e!3245103 () Bool)

(assert (=> b!5212746 (= e!3245102 e!3245103)))

(declare-fun res!2213974 () Bool)

(assert (=> b!5212746 (=> (not res!2213974) (not e!3245103))))

(assert (=> b!5212746 (= res!2213974 (dynLambda!23932 lambda!261351 (h!67023 lt!2142314)))))

(declare-fun b!5212747 () Bool)

(assert (=> b!5212747 (= e!3245103 (forall!14234 (t!373862 lt!2142314) lambda!261351))))

(assert (= (and d!1680776 (not res!2213973)) b!5212746))

(assert (= (and b!5212746 res!2213974) b!5212747))

(declare-fun b_lambda!201609 () Bool)

(assert (=> (not b_lambda!201609) (not b!5212746)))

(declare-fun m!6262052 () Bool)

(assert (=> b!5212746 m!6262052))

(declare-fun m!6262054 () Bool)

(assert (=> b!5212747 m!6262054))

(assert (=> d!1680428 d!1680776))

(declare-fun d!1680778 () Bool)

(assert (=> d!1680778 (= ($colon$colon!1276 (exprs!4684 lt!2142235) (ite (or c!898757 c!898758) (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (h!67023 (exprs!4684 (h!67024 zl!343))))) (Cons!60575 (ite (or c!898757 c!898758) (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (h!67023 (exprs!4684 (h!67024 zl!343)))) (exprs!4684 lt!2142235)))))

(assert (=> bm!367023 d!1680778))

(declare-fun bm!367199 () Bool)

(declare-fun call!367204 () Bool)

(declare-fun c!899036 () Bool)

(assert (=> bm!367199 (= call!367204 (nullable!4969 (ite c!899036 (regTwo!30113 (regOne!30113 (regOne!30112 r!7292))) (regTwo!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212762 () Bool)

(declare-fun e!3245119 () Bool)

(declare-fun e!3245121 () Bool)

(assert (=> b!5212762 (= e!3245119 e!3245121)))

(assert (=> b!5212762 (= c!899036 (is-Union!14800 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun b!5212763 () Bool)

(declare-fun e!3245117 () Bool)

(assert (=> b!5212763 (= e!3245117 call!367204)))

(declare-fun d!1680780 () Bool)

(declare-fun res!2213987 () Bool)

(declare-fun e!3245120 () Bool)

(assert (=> d!1680780 (=> res!2213987 e!3245120)))

(assert (=> d!1680780 (= res!2213987 (is-EmptyExpr!14800 (regOne!30113 (regOne!30112 r!7292))))))

(assert (=> d!1680780 (= (nullableFct!1378 (regOne!30113 (regOne!30112 r!7292))) e!3245120)))

(declare-fun b!5212764 () Bool)

(declare-fun e!3245118 () Bool)

(assert (=> b!5212764 (= e!3245118 e!3245119)))

(declare-fun res!2213988 () Bool)

(assert (=> b!5212764 (=> res!2213988 e!3245119)))

(assert (=> b!5212764 (= res!2213988 (is-Star!14800 (regOne!30113 (regOne!30112 r!7292))))))

(declare-fun bm!367200 () Bool)

(declare-fun call!367205 () Bool)

(assert (=> bm!367200 (= call!367205 (nullable!4969 (ite c!899036 (regOne!30113 (regOne!30113 (regOne!30112 r!7292))) (regOne!30112 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212765 () Bool)

(declare-fun e!3245116 () Bool)

(assert (=> b!5212765 (= e!3245121 e!3245116)))

(declare-fun res!2213989 () Bool)

(assert (=> b!5212765 (= res!2213989 call!367205)))

(assert (=> b!5212765 (=> (not res!2213989) (not e!3245116))))

(declare-fun b!5212766 () Bool)

(assert (=> b!5212766 (= e!3245120 e!3245118)))

(declare-fun res!2213986 () Bool)

(assert (=> b!5212766 (=> (not res!2213986) (not e!3245118))))

(assert (=> b!5212766 (= res!2213986 (and (not (is-EmptyLang!14800 (regOne!30113 (regOne!30112 r!7292)))) (not (is-ElementMatch!14800 (regOne!30113 (regOne!30112 r!7292))))))))

(declare-fun b!5212767 () Bool)

(assert (=> b!5212767 (= e!3245116 call!367204)))

(declare-fun b!5212768 () Bool)

(assert (=> b!5212768 (= e!3245121 e!3245117)))

(declare-fun res!2213985 () Bool)

(assert (=> b!5212768 (= res!2213985 call!367205)))

(assert (=> b!5212768 (=> res!2213985 e!3245117)))

(assert (= (and d!1680780 (not res!2213987)) b!5212766))

(assert (= (and b!5212766 res!2213986) b!5212764))

(assert (= (and b!5212764 (not res!2213988)) b!5212762))

(assert (= (and b!5212762 c!899036) b!5212768))

(assert (= (and b!5212762 (not c!899036)) b!5212765))

(assert (= (and b!5212768 (not res!2213985)) b!5212763))

(assert (= (and b!5212765 res!2213989) b!5212767))

(assert (= (or b!5212763 b!5212767) bm!367199))

(assert (= (or b!5212768 b!5212765) bm!367200))

(declare-fun m!6262056 () Bool)

(assert (=> bm!367199 m!6262056))

(declare-fun m!6262058 () Bool)

(assert (=> bm!367200 m!6262058))

(assert (=> d!1680462 d!1680780))

(declare-fun d!1680782 () Bool)

(declare-fun c!899037 () Bool)

(assert (=> d!1680782 (= c!899037 (isEmpty!32491 (tail!10269 (t!373864 s!2326))))))

(declare-fun e!3245122 () Bool)

(assert (=> d!1680782 (= (matchZipper!1044 (derivationStepZipper!1070 lt!2142237 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))) e!3245122)))

(declare-fun b!5212769 () Bool)

(assert (=> b!5212769 (= e!3245122 (nullableZipper!1226 (derivationStepZipper!1070 lt!2142237 (head!11172 (t!373864 s!2326)))))))

(declare-fun b!5212770 () Bool)

(assert (=> b!5212770 (= e!3245122 (matchZipper!1044 (derivationStepZipper!1070 (derivationStepZipper!1070 lt!2142237 (head!11172 (t!373864 s!2326))) (head!11172 (tail!10269 (t!373864 s!2326)))) (tail!10269 (tail!10269 (t!373864 s!2326)))))))

(assert (= (and d!1680782 c!899037) b!5212769))

(assert (= (and d!1680782 (not c!899037)) b!5212770))

(assert (=> d!1680782 m!6261240))

(assert (=> d!1680782 m!6261746))

(assert (=> b!5212769 m!6261380))

(declare-fun m!6262060 () Bool)

(assert (=> b!5212769 m!6262060))

(assert (=> b!5212770 m!6261240))

(assert (=> b!5212770 m!6261750))

(assert (=> b!5212770 m!6261380))

(assert (=> b!5212770 m!6261750))

(declare-fun m!6262062 () Bool)

(assert (=> b!5212770 m!6262062))

(assert (=> b!5212770 m!6261240))

(assert (=> b!5212770 m!6261754))

(assert (=> b!5212770 m!6262062))

(assert (=> b!5212770 m!6261754))

(declare-fun m!6262064 () Bool)

(assert (=> b!5212770 m!6262064))

(assert (=> b!5211844 d!1680782))

(declare-fun bs!1211015 () Bool)

(declare-fun d!1680784 () Bool)

(assert (= bs!1211015 (and d!1680784 b!5211489)))

(declare-fun lambda!261433 () Int)

(assert (=> bs!1211015 (= (= (head!11172 (t!373864 s!2326)) (h!67025 s!2326)) (= lambda!261433 lambda!261332))))

(declare-fun bs!1211016 () Bool)

(assert (= bs!1211016 (and d!1680784 d!1680626)))

(assert (=> bs!1211016 (= lambda!261433 lambda!261411)))

(declare-fun bs!1211017 () Bool)

(assert (= bs!1211017 (and d!1680784 d!1680656)))

(assert (=> bs!1211017 (= lambda!261433 lambda!261416)))

(declare-fun bs!1211018 () Bool)

(assert (= bs!1211018 (and d!1680784 d!1680692)))

(assert (=> bs!1211018 (= lambda!261433 lambda!261418)))

(declare-fun bs!1211019 () Bool)

(assert (= bs!1211019 (and d!1680784 d!1680668)))

(assert (=> bs!1211019 (= lambda!261433 lambda!261417)))

(assert (=> d!1680784 true))

(assert (=> d!1680784 (= (derivationStepZipper!1070 lt!2142237 (head!11172 (t!373864 s!2326))) (flatMap!527 lt!2142237 lambda!261433))))

(declare-fun bs!1211020 () Bool)

(assert (= bs!1211020 d!1680784))

(declare-fun m!6262066 () Bool)

(assert (=> bs!1211020 m!6262066))

(assert (=> b!5211844 d!1680784))

(assert (=> b!5211844 d!1680628))

(assert (=> b!5211844 d!1680630))

(declare-fun d!1680786 () Bool)

(assert (=> d!1680786 (= (isEmpty!32487 (t!373862 (unfocusZipperList!242 zl!343))) (is-Nil!60575 (t!373862 (unfocusZipperList!242 zl!343))))))

(assert (=> b!5211634 d!1680786))

(declare-fun d!1680788 () Bool)

(assert (=> d!1680788 true))

(assert (=> d!1680788 true))

(declare-fun res!2213992 () Bool)

(assert (=> d!1680788 (= (choose!38744 lambda!261330) res!2213992)))

(assert (=> d!1680472 d!1680788))

(declare-fun b!5212771 () Bool)

(declare-fun e!3245124 () (Set Context!8368))

(declare-fun call!367206 () (Set Context!8368))

(assert (=> b!5212771 (= e!3245124 call!367206)))

(declare-fun bm!367201 () Bool)

(declare-fun call!367210 () (Set Context!8368))

(declare-fun call!367211 () (Set Context!8368))

(assert (=> bm!367201 (= call!367210 call!367211)))

(declare-fun d!1680790 () Bool)

(declare-fun c!899038 () Bool)

(assert (=> d!1680790 (= c!899038 (and (is-ElementMatch!14800 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))) (= (c!898691 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))) (h!67025 s!2326))))))

(declare-fun e!3245127 () (Set Context!8368))

(assert (=> d!1680790 (= (derivationStepZipperDown!248 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343))))))) (ite (or c!898759 c!898757) lt!2142235 (Context!8369 call!367025)) (h!67025 s!2326)) e!3245127)))

(declare-fun b!5212772 () Bool)

(declare-fun e!3245123 () (Set Context!8368))

(declare-fun call!367209 () (Set Context!8368))

(assert (=> b!5212772 (= e!3245123 (set.union call!367209 call!367210))))

(declare-fun bm!367202 () Bool)

(assert (=> bm!367202 (= call!367206 call!367210)))

(declare-fun bm!367203 () Bool)

(declare-fun call!367208 () List!60699)

(declare-fun call!367207 () List!60699)

(assert (=> bm!367203 (= call!367208 call!367207)))

(declare-fun b!5212773 () Bool)

(declare-fun e!3245126 () (Set Context!8368))

(assert (=> b!5212773 (= e!3245126 call!367206)))

(declare-fun bm!367204 () Bool)

(declare-fun c!899042 () Bool)

(assert (=> bm!367204 (= call!367209 (derivationStepZipperDown!248 (ite c!899042 (regTwo!30113 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))) (regOne!30112 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343))))))))) (ite c!899042 (ite (or c!898759 c!898757) lt!2142235 (Context!8369 call!367025)) (Context!8369 call!367207)) (h!67025 s!2326)))))

(declare-fun bm!367205 () Bool)

(declare-fun c!899040 () Bool)

(declare-fun c!899041 () Bool)

(assert (=> bm!367205 (= call!367211 (derivationStepZipperDown!248 (ite c!899042 (regOne!30113 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))) (ite c!899040 (regTwo!30112 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))) (ite c!899041 (regOne!30112 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))) (reg!15129 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343))))))))))) (ite (or c!899042 c!899040) (ite (or c!898759 c!898757) lt!2142235 (Context!8369 call!367025)) (Context!8369 call!367208)) (h!67025 s!2326)))))

(declare-fun b!5212774 () Bool)

(declare-fun c!899039 () Bool)

(assert (=> b!5212774 (= c!899039 (is-Star!14800 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))))

(assert (=> b!5212774 (= e!3245124 e!3245126)))

(declare-fun b!5212775 () Bool)

(assert (=> b!5212775 (= e!3245123 e!3245124)))

(assert (=> b!5212775 (= c!899041 (is-Concat!23645 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun b!5212776 () Bool)

(declare-fun e!3245125 () Bool)

(assert (=> b!5212776 (= e!3245125 (nullable!4969 (regOne!30112 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343))))))))))))

(declare-fun bm!367206 () Bool)

(assert (=> bm!367206 (= call!367207 ($colon$colon!1276 (exprs!4684 (ite (or c!898759 c!898757) lt!2142235 (Context!8369 call!367025))) (ite (or c!899040 c!899041) (regTwo!30112 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))) (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343))))))))))))

(declare-fun b!5212777 () Bool)

(assert (=> b!5212777 (= c!899040 e!3245125)))

(declare-fun res!2213993 () Bool)

(assert (=> b!5212777 (=> (not res!2213993) (not e!3245125))))

(assert (=> b!5212777 (= res!2213993 (is-Concat!23645 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun e!3245128 () (Set Context!8368))

(assert (=> b!5212777 (= e!3245128 e!3245123)))

(declare-fun b!5212778 () Bool)

(assert (=> b!5212778 (= e!3245127 e!3245128)))

(assert (=> b!5212778 (= c!899042 (is-Union!14800 (ite c!898759 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898757 (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (ite c!898758 (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))) (reg!15129 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun b!5212779 () Bool)

(assert (=> b!5212779 (= e!3245126 (as set.empty (Set Context!8368)))))

(declare-fun b!5212780 () Bool)

(assert (=> b!5212780 (= e!3245128 (set.union call!367211 call!367209))))

(declare-fun b!5212781 () Bool)

(assert (=> b!5212781 (= e!3245127 (set.insert (ite (or c!898759 c!898757) lt!2142235 (Context!8369 call!367025)) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680790 c!899038) b!5212781))

(assert (= (and d!1680790 (not c!899038)) b!5212778))

(assert (= (and b!5212778 c!899042) b!5212780))

(assert (= (and b!5212778 (not c!899042)) b!5212777))

(assert (= (and b!5212777 res!2213993) b!5212776))

(assert (= (and b!5212777 c!899040) b!5212772))

(assert (= (and b!5212777 (not c!899040)) b!5212775))

(assert (= (and b!5212775 c!899041) b!5212771))

(assert (= (and b!5212775 (not c!899041)) b!5212774))

(assert (= (and b!5212774 c!899039) b!5212773))

(assert (= (and b!5212774 (not c!899039)) b!5212779))

(assert (= (or b!5212771 b!5212773) bm!367203))

(assert (= (or b!5212771 b!5212773) bm!367202))

(assert (= (or b!5212772 bm!367203) bm!367206))

(assert (= (or b!5212772 bm!367202) bm!367201))

(assert (= (or b!5212780 b!5212772) bm!367204))

(assert (= (or b!5212780 bm!367201) bm!367205))

(declare-fun m!6262068 () Bool)

(assert (=> bm!367204 m!6262068))

(declare-fun m!6262070 () Bool)

(assert (=> bm!367205 m!6262070))

(declare-fun m!6262072 () Bool)

(assert (=> b!5212776 m!6262072))

(declare-fun m!6262074 () Bool)

(assert (=> bm!367206 m!6262074))

(declare-fun m!6262076 () Bool)

(assert (=> b!5212781 m!6262076))

(assert (=> bm!367022 d!1680790))

(declare-fun d!1680792 () Bool)

(assert (=> d!1680792 (= (isEmpty!32487 (exprs!4684 (h!67024 zl!343))) (is-Nil!60575 (exprs!4684 (h!67024 zl!343))))))

(assert (=> b!5211667 d!1680792))

(assert (=> bm!367045 d!1680674))

(declare-fun b!5212782 () Bool)

(declare-fun e!3245130 () (Set Context!8368))

(declare-fun call!367212 () (Set Context!8368))

(assert (=> b!5212782 (= e!3245130 call!367212)))

(declare-fun bm!367207 () Bool)

(declare-fun call!367216 () (Set Context!8368))

(declare-fun call!367217 () (Set Context!8368))

(assert (=> bm!367207 (= call!367216 call!367217)))

(declare-fun d!1680794 () Bool)

(declare-fun c!899043 () Bool)

(assert (=> d!1680794 (= c!899043 (and (is-ElementMatch!14800 (h!67023 (exprs!4684 lt!2142235))) (= (c!898691 (h!67023 (exprs!4684 lt!2142235))) (h!67025 s!2326))))))

(declare-fun e!3245133 () (Set Context!8368))

(assert (=> d!1680794 (= (derivationStepZipperDown!248 (h!67023 (exprs!4684 lt!2142235)) (Context!8369 (t!373862 (exprs!4684 lt!2142235))) (h!67025 s!2326)) e!3245133)))

(declare-fun b!5212783 () Bool)

(declare-fun e!3245129 () (Set Context!8368))

(declare-fun call!367215 () (Set Context!8368))

(assert (=> b!5212783 (= e!3245129 (set.union call!367215 call!367216))))

(declare-fun bm!367208 () Bool)

(assert (=> bm!367208 (= call!367212 call!367216)))

(declare-fun bm!367209 () Bool)

(declare-fun call!367214 () List!60699)

(declare-fun call!367213 () List!60699)

(assert (=> bm!367209 (= call!367214 call!367213)))

(declare-fun b!5212784 () Bool)

(declare-fun e!3245132 () (Set Context!8368))

(assert (=> b!5212784 (= e!3245132 call!367212)))

(declare-fun bm!367210 () Bool)

(declare-fun c!899047 () Bool)

(assert (=> bm!367210 (= call!367215 (derivationStepZipperDown!248 (ite c!899047 (regTwo!30113 (h!67023 (exprs!4684 lt!2142235))) (regOne!30112 (h!67023 (exprs!4684 lt!2142235)))) (ite c!899047 (Context!8369 (t!373862 (exprs!4684 lt!2142235))) (Context!8369 call!367213)) (h!67025 s!2326)))))

(declare-fun c!899045 () Bool)

(declare-fun c!899046 () Bool)

(declare-fun bm!367211 () Bool)

(assert (=> bm!367211 (= call!367217 (derivationStepZipperDown!248 (ite c!899047 (regOne!30113 (h!67023 (exprs!4684 lt!2142235))) (ite c!899045 (regTwo!30112 (h!67023 (exprs!4684 lt!2142235))) (ite c!899046 (regOne!30112 (h!67023 (exprs!4684 lt!2142235))) (reg!15129 (h!67023 (exprs!4684 lt!2142235)))))) (ite (or c!899047 c!899045) (Context!8369 (t!373862 (exprs!4684 lt!2142235))) (Context!8369 call!367214)) (h!67025 s!2326)))))

(declare-fun b!5212785 () Bool)

(declare-fun c!899044 () Bool)

(assert (=> b!5212785 (= c!899044 (is-Star!14800 (h!67023 (exprs!4684 lt!2142235))))))

(assert (=> b!5212785 (= e!3245130 e!3245132)))

(declare-fun b!5212786 () Bool)

(assert (=> b!5212786 (= e!3245129 e!3245130)))

(assert (=> b!5212786 (= c!899046 (is-Concat!23645 (h!67023 (exprs!4684 lt!2142235))))))

(declare-fun b!5212787 () Bool)

(declare-fun e!3245131 () Bool)

(assert (=> b!5212787 (= e!3245131 (nullable!4969 (regOne!30112 (h!67023 (exprs!4684 lt!2142235)))))))

(declare-fun bm!367212 () Bool)

(assert (=> bm!367212 (= call!367213 ($colon$colon!1276 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 lt!2142235)))) (ite (or c!899045 c!899046) (regTwo!30112 (h!67023 (exprs!4684 lt!2142235))) (h!67023 (exprs!4684 lt!2142235)))))))

(declare-fun b!5212788 () Bool)

(assert (=> b!5212788 (= c!899045 e!3245131)))

(declare-fun res!2213994 () Bool)

(assert (=> b!5212788 (=> (not res!2213994) (not e!3245131))))

(assert (=> b!5212788 (= res!2213994 (is-Concat!23645 (h!67023 (exprs!4684 lt!2142235))))))

(declare-fun e!3245134 () (Set Context!8368))

(assert (=> b!5212788 (= e!3245134 e!3245129)))

(declare-fun b!5212789 () Bool)

(assert (=> b!5212789 (= e!3245133 e!3245134)))

(assert (=> b!5212789 (= c!899047 (is-Union!14800 (h!67023 (exprs!4684 lt!2142235))))))

(declare-fun b!5212790 () Bool)

(assert (=> b!5212790 (= e!3245132 (as set.empty (Set Context!8368)))))

(declare-fun b!5212791 () Bool)

(assert (=> b!5212791 (= e!3245134 (set.union call!367217 call!367215))))

(declare-fun b!5212792 () Bool)

(assert (=> b!5212792 (= e!3245133 (set.insert (Context!8369 (t!373862 (exprs!4684 lt!2142235))) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680794 c!899043) b!5212792))

(assert (= (and d!1680794 (not c!899043)) b!5212789))

(assert (= (and b!5212789 c!899047) b!5212791))

(assert (= (and b!5212789 (not c!899047)) b!5212788))

(assert (= (and b!5212788 res!2213994) b!5212787))

(assert (= (and b!5212788 c!899045) b!5212783))

(assert (= (and b!5212788 (not c!899045)) b!5212786))

(assert (= (and b!5212786 c!899046) b!5212782))

(assert (= (and b!5212786 (not c!899046)) b!5212785))

(assert (= (and b!5212785 c!899044) b!5212784))

(assert (= (and b!5212785 (not c!899044)) b!5212790))

(assert (= (or b!5212782 b!5212784) bm!367209))

(assert (= (or b!5212782 b!5212784) bm!367208))

(assert (= (or b!5212783 bm!367209) bm!367212))

(assert (= (or b!5212783 bm!367208) bm!367207))

(assert (= (or b!5212791 b!5212783) bm!367210))

(assert (= (or b!5212791 bm!367207) bm!367211))

(declare-fun m!6262078 () Bool)

(assert (=> bm!367210 m!6262078))

(declare-fun m!6262080 () Bool)

(assert (=> bm!367211 m!6262080))

(declare-fun m!6262082 () Bool)

(assert (=> b!5212787 m!6262082))

(declare-fun m!6262084 () Bool)

(assert (=> bm!367212 m!6262084))

(declare-fun m!6262086 () Bool)

(assert (=> b!5212792 m!6262086))

(assert (=> bm!367005 d!1680794))

(declare-fun b!5212793 () Bool)

(declare-fun e!3245136 () (Set Context!8368))

(declare-fun call!367218 () (Set Context!8368))

(assert (=> b!5212793 (= e!3245136 call!367218)))

(declare-fun bm!367213 () Bool)

(declare-fun call!367222 () (Set Context!8368))

(declare-fun call!367223 () (Set Context!8368))

(assert (=> bm!367213 (= call!367222 call!367223)))

(declare-fun d!1680796 () Bool)

(declare-fun c!899048 () Bool)

(assert (=> d!1680796 (= c!899048 (and (is-ElementMatch!14800 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (= (c!898691 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (h!67025 s!2326))))))

(declare-fun e!3245139 () (Set Context!8368))

(assert (=> d!1680796 (= (derivationStepZipperDown!248 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))) (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (h!67025 s!2326)) e!3245139)))

(declare-fun b!5212794 () Bool)

(declare-fun e!3245135 () (Set Context!8368))

(declare-fun call!367221 () (Set Context!8368))

(assert (=> b!5212794 (= e!3245135 (set.union call!367221 call!367222))))

(declare-fun bm!367214 () Bool)

(assert (=> bm!367214 (= call!367218 call!367222)))

(declare-fun bm!367215 () Bool)

(declare-fun call!367220 () List!60699)

(declare-fun call!367219 () List!60699)

(assert (=> bm!367215 (= call!367220 call!367219)))

(declare-fun b!5212795 () Bool)

(declare-fun e!3245138 () (Set Context!8368))

(assert (=> b!5212795 (= e!3245138 call!367218)))

(declare-fun bm!367216 () Bool)

(declare-fun c!899052 () Bool)

(assert (=> bm!367216 (= call!367221 (derivationStepZipperDown!248 (ite c!899052 (regTwo!30113 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (regOne!30112 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))) (ite c!899052 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (Context!8369 call!367219)) (h!67025 s!2326)))))

(declare-fun bm!367217 () Bool)

(declare-fun c!899051 () Bool)

(declare-fun c!899050 () Bool)

(assert (=> bm!367217 (= call!367223 (derivationStepZipperDown!248 (ite c!899052 (regOne!30113 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (ite c!899050 (regTwo!30112 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (ite c!899051 (regOne!30112 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (reg!15129 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))) (ite (or c!899052 c!899050) (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (Context!8369 call!367220)) (h!67025 s!2326)))))

(declare-fun b!5212796 () Bool)

(declare-fun c!899049 () Bool)

(assert (=> b!5212796 (= c!899049 (is-Star!14800 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))

(assert (=> b!5212796 (= e!3245136 e!3245138)))

(declare-fun b!5212797 () Bool)

(assert (=> b!5212797 (= e!3245135 e!3245136)))

(assert (=> b!5212797 (= c!899051 (is-Concat!23645 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun b!5212798 () Bool)

(declare-fun e!3245137 () Bool)

(assert (=> b!5212798 (= e!3245137 (nullable!4969 (regOne!30112 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))))

(declare-fun bm!367218 () Bool)

(assert (=> bm!367218 (= call!367219 ($colon$colon!1276 (exprs!4684 (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))) (ite (or c!899050 c!899051) (regTwo!30112 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343))))))))))))

(declare-fun b!5212799 () Bool)

(assert (=> b!5212799 (= c!899050 e!3245137)))

(declare-fun res!2213995 () Bool)

(assert (=> b!5212799 (=> (not res!2213995) (not e!3245137))))

(assert (=> b!5212799 (= res!2213995 (is-Concat!23645 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun e!3245140 () (Set Context!8368))

(assert (=> b!5212799 (= e!3245140 e!3245135)))

(declare-fun b!5212800 () Bool)

(assert (=> b!5212800 (= e!3245139 e!3245140)))

(assert (=> b!5212800 (= c!899052 (is-Union!14800 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun b!5212801 () Bool)

(assert (=> b!5212801 (= e!3245138 (as set.empty (Set Context!8368)))))

(declare-fun b!5212802 () Bool)

(assert (=> b!5212802 (= e!3245140 (set.union call!367223 call!367221))))

(declare-fun b!5212803 () Bool)

(assert (=> b!5212803 (= e!3245139 (set.insert (Context!8369 (t!373862 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (as set.empty (Set Context!8368))))))

(assert (= (and d!1680796 c!899048) b!5212803))

(assert (= (and d!1680796 (not c!899048)) b!5212800))

(assert (= (and b!5212800 c!899052) b!5212802))

(assert (= (and b!5212800 (not c!899052)) b!5212799))

(assert (= (and b!5212799 res!2213995) b!5212798))

(assert (= (and b!5212799 c!899050) b!5212794))

(assert (= (and b!5212799 (not c!899050)) b!5212797))

(assert (= (and b!5212797 c!899051) b!5212793))

(assert (= (and b!5212797 (not c!899051)) b!5212796))

(assert (= (and b!5212796 c!899049) b!5212795))

(assert (= (and b!5212796 (not c!899049)) b!5212801))

(assert (= (or b!5212793 b!5212795) bm!367215))

(assert (= (or b!5212793 b!5212795) bm!367214))

(assert (= (or b!5212794 bm!367215) bm!367218))

(assert (= (or b!5212794 bm!367214) bm!367213))

(assert (= (or b!5212802 b!5212794) bm!367216))

(assert (= (or b!5212802 bm!367213) bm!367217))

(declare-fun m!6262088 () Bool)

(assert (=> bm!367216 m!6262088))

(declare-fun m!6262090 () Bool)

(assert (=> bm!367217 m!6262090))

(declare-fun m!6262092 () Bool)

(assert (=> b!5212798 m!6262092))

(declare-fun m!6262094 () Bool)

(assert (=> bm!367218 m!6262094))

(declare-fun m!6262096 () Bool)

(assert (=> b!5212803 m!6262096))

(assert (=> bm!367004 d!1680796))

(declare-fun call!367224 () Bool)

(declare-fun c!899053 () Bool)

(declare-fun bm!367219 () Bool)

(declare-fun c!899054 () Bool)

(assert (=> bm!367219 (= call!367224 (validRegex!6536 (ite c!899053 (reg!15129 lt!2142320) (ite c!899054 (regOne!30113 lt!2142320) (regOne!30112 lt!2142320)))))))

(declare-fun b!5212805 () Bool)

(declare-fun e!3245146 () Bool)

(declare-fun e!3245144 () Bool)

(assert (=> b!5212805 (= e!3245146 e!3245144)))

(assert (=> b!5212805 (= c!899053 (is-Star!14800 lt!2142320))))

(declare-fun b!5212806 () Bool)

(declare-fun e!3245141 () Bool)

(declare-fun call!367225 () Bool)

(assert (=> b!5212806 (= e!3245141 call!367225)))

(declare-fun b!5212807 () Bool)

(declare-fun e!3245143 () Bool)

(assert (=> b!5212807 (= e!3245143 e!3245141)))

(declare-fun res!2213998 () Bool)

(assert (=> b!5212807 (=> (not res!2213998) (not e!3245141))))

(declare-fun call!367226 () Bool)

(assert (=> b!5212807 (= res!2213998 call!367226)))

(declare-fun bm!367220 () Bool)

(assert (=> bm!367220 (= call!367226 call!367224)))

(declare-fun b!5212808 () Bool)

(declare-fun e!3245145 () Bool)

(assert (=> b!5212808 (= e!3245144 e!3245145)))

(assert (=> b!5212808 (= c!899054 (is-Union!14800 lt!2142320))))

(declare-fun b!5212804 () Bool)

(declare-fun e!3245147 () Bool)

(assert (=> b!5212804 (= e!3245144 e!3245147)))

(declare-fun res!2213996 () Bool)

(assert (=> b!5212804 (= res!2213996 (not (nullable!4969 (reg!15129 lt!2142320))))))

(assert (=> b!5212804 (=> (not res!2213996) (not e!3245147))))

(declare-fun d!1680798 () Bool)

(declare-fun res!2213997 () Bool)

(assert (=> d!1680798 (=> res!2213997 e!3245146)))

(assert (=> d!1680798 (= res!2213997 (is-ElementMatch!14800 lt!2142320))))

(assert (=> d!1680798 (= (validRegex!6536 lt!2142320) e!3245146)))

(declare-fun b!5212809 () Bool)

(declare-fun e!3245142 () Bool)

(assert (=> b!5212809 (= e!3245142 call!367225)))

(declare-fun b!5212810 () Bool)

(declare-fun res!2213999 () Bool)

(assert (=> b!5212810 (=> (not res!2213999) (not e!3245142))))

(assert (=> b!5212810 (= res!2213999 call!367226)))

(assert (=> b!5212810 (= e!3245145 e!3245142)))

(declare-fun b!5212811 () Bool)

(declare-fun res!2214000 () Bool)

(assert (=> b!5212811 (=> res!2214000 e!3245143)))

(assert (=> b!5212811 (= res!2214000 (not (is-Concat!23645 lt!2142320)))))

(assert (=> b!5212811 (= e!3245145 e!3245143)))

(declare-fun b!5212812 () Bool)

(assert (=> b!5212812 (= e!3245147 call!367224)))

(declare-fun bm!367221 () Bool)

(assert (=> bm!367221 (= call!367225 (validRegex!6536 (ite c!899054 (regTwo!30113 lt!2142320) (regTwo!30112 lt!2142320))))))

(assert (= (and d!1680798 (not res!2213997)) b!5212805))

(assert (= (and b!5212805 c!899053) b!5212804))

(assert (= (and b!5212805 (not c!899053)) b!5212808))

(assert (= (and b!5212804 res!2213996) b!5212812))

(assert (= (and b!5212808 c!899054) b!5212810))

(assert (= (and b!5212808 (not c!899054)) b!5212811))

(assert (= (and b!5212810 res!2213999) b!5212809))

(assert (= (and b!5212811 (not res!2214000)) b!5212807))

(assert (= (and b!5212807 res!2213998) b!5212806))

(assert (= (or b!5212809 b!5212806) bm!367221))

(assert (= (or b!5212810 b!5212807) bm!367220))

(assert (= (or b!5212812 bm!367220) bm!367219))

(declare-fun m!6262098 () Bool)

(assert (=> bm!367219 m!6262098))

(declare-fun m!6262100 () Bool)

(assert (=> b!5212804 m!6262100))

(declare-fun m!6262102 () Bool)

(assert (=> bm!367221 m!6262102))

(assert (=> d!1680438 d!1680798))

(assert (=> d!1680438 d!1680426))

(assert (=> d!1680438 d!1680428))

(assert (=> d!1680490 d!1680662))

(declare-fun d!1680800 () Bool)

(assert (=> d!1680800 (= (isEmpty!32487 (tail!10268 (unfocusZipperList!242 zl!343))) (is-Nil!60575 (tail!10268 (unfocusZipperList!242 zl!343))))))

(assert (=> b!5211630 d!1680800))

(declare-fun d!1680802 () Bool)

(assert (=> d!1680802 (= (tail!10268 (unfocusZipperList!242 zl!343)) (t!373862 (unfocusZipperList!242 zl!343)))))

(assert (=> b!5211630 d!1680802))

(declare-fun d!1680804 () Bool)

(assert (=> d!1680804 (= (head!11171 (exprs!4684 (h!67024 zl!343))) (h!67023 (exprs!4684 (h!67024 zl!343))))))

(assert (=> b!5211663 d!1680804))

(declare-fun d!1680806 () Bool)

(assert (=> d!1680806 (= (nullable!4969 (h!67023 (exprs!4684 lt!2142235))) (nullableFct!1378 (h!67023 (exprs!4684 lt!2142235))))))

(declare-fun bs!1211021 () Bool)

(assert (= bs!1211021 d!1680806))

(declare-fun m!6262104 () Bool)

(assert (=> bs!1211021 m!6262104))

(assert (=> b!5211722 d!1680806))

(declare-fun d!1680808 () Bool)

(assert (=> d!1680808 (= (nullable!4969 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))) (nullableFct!1378 (h!67023 (exprs!4684 (Context!8369 (Cons!60575 (h!67023 (exprs!4684 (h!67024 zl!343))) (t!373862 (exprs!4684 (h!67024 zl!343)))))))))))

(declare-fun bs!1211022 () Bool)

(assert (= bs!1211022 d!1680808))

(declare-fun m!6262106 () Bool)

(assert (=> bs!1211022 m!6262106))

(assert (=> b!5211717 d!1680808))

(declare-fun d!1680810 () Bool)

(declare-fun c!899055 () Bool)

(assert (=> d!1680810 (= c!899055 (isEmpty!32491 (tail!10269 (t!373864 s!2326))))))

(declare-fun e!3245148 () Bool)

(assert (=> d!1680810 (= (matchZipper!1044 (derivationStepZipper!1070 lt!2142241 (head!11172 (t!373864 s!2326))) (tail!10269 (t!373864 s!2326))) e!3245148)))

(declare-fun b!5212813 () Bool)

(assert (=> b!5212813 (= e!3245148 (nullableZipper!1226 (derivationStepZipper!1070 lt!2142241 (head!11172 (t!373864 s!2326)))))))

(declare-fun b!5212814 () Bool)

(assert (=> b!5212814 (= e!3245148 (matchZipper!1044 (derivationStepZipper!1070 (derivationStepZipper!1070 lt!2142241 (head!11172 (t!373864 s!2326))) (head!11172 (tail!10269 (t!373864 s!2326)))) (tail!10269 (tail!10269 (t!373864 s!2326)))))))

(assert (= (and d!1680810 c!899055) b!5212813))

(assert (= (and d!1680810 (not c!899055)) b!5212814))

(assert (=> d!1680810 m!6261240))

(assert (=> d!1680810 m!6261746))

(assert (=> b!5212813 m!6261386))

(declare-fun m!6262108 () Bool)

(assert (=> b!5212813 m!6262108))

(assert (=> b!5212814 m!6261240))

(assert (=> b!5212814 m!6261750))

(assert (=> b!5212814 m!6261386))

(assert (=> b!5212814 m!6261750))

(declare-fun m!6262110 () Bool)

(assert (=> b!5212814 m!6262110))

(assert (=> b!5212814 m!6261240))

(assert (=> b!5212814 m!6261754))

(assert (=> b!5212814 m!6262110))

(assert (=> b!5212814 m!6261754))

(declare-fun m!6262112 () Bool)

(assert (=> b!5212814 m!6262112))

(assert (=> b!5211846 d!1680810))

(declare-fun bs!1211023 () Bool)

(declare-fun d!1680812 () Bool)

(assert (= bs!1211023 (and d!1680812 b!5211489)))

(declare-fun lambda!261434 () Int)

(assert (=> bs!1211023 (= (= (head!11172 (t!373864 s!2326)) (h!67025 s!2326)) (= lambda!261434 lambda!261332))))

(declare-fun bs!1211024 () Bool)

(assert (= bs!1211024 (and d!1680812 d!1680784)))

(assert (=> bs!1211024 (= lambda!261434 lambda!261433)))

(declare-fun bs!1211025 () Bool)

(assert (= bs!1211025 (and d!1680812 d!1680626)))

(assert (=> bs!1211025 (= lambda!261434 lambda!261411)))

(declare-fun bs!1211026 () Bool)

(assert (= bs!1211026 (and d!1680812 d!1680656)))

(assert (=> bs!1211026 (= lambda!261434 lambda!261416)))

(declare-fun bs!1211027 () Bool)

(assert (= bs!1211027 (and d!1680812 d!1680692)))

(assert (=> bs!1211027 (= lambda!261434 lambda!261418)))

(declare-fun bs!1211028 () Bool)

(assert (= bs!1211028 (and d!1680812 d!1680668)))

(assert (=> bs!1211028 (= lambda!261434 lambda!261417)))

(assert (=> d!1680812 true))

(assert (=> d!1680812 (= (derivationStepZipper!1070 lt!2142241 (head!11172 (t!373864 s!2326))) (flatMap!527 lt!2142241 lambda!261434))))

(declare-fun bs!1211029 () Bool)

(assert (= bs!1211029 d!1680812))

(declare-fun m!6262114 () Bool)

(assert (=> bs!1211029 m!6262114))

(assert (=> b!5211846 d!1680812))

(assert (=> b!5211846 d!1680628))

(assert (=> b!5211846 d!1680630))

(declare-fun b!5212818 () Bool)

(declare-fun e!3245150 () Bool)

(declare-fun lt!2142408 () List!60701)

(assert (=> b!5212818 (= e!3245150 (or (not (= (t!373864 s!2326) Nil!60577)) (= lt!2142408 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)))))))

(declare-fun d!1680814 () Bool)

(assert (=> d!1680814 e!3245150))

(declare-fun res!2214002 () Bool)

(assert (=> d!1680814 (=> (not res!2214002) (not e!3245150))))

(assert (=> d!1680814 (= res!2214002 (= (content!10732 lt!2142408) (set.union (content!10732 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577))) (content!10732 (t!373864 s!2326)))))))

(declare-fun e!3245149 () List!60701)

(assert (=> d!1680814 (= lt!2142408 e!3245149)))

(declare-fun c!899056 () Bool)

(assert (=> d!1680814 (= c!899056 (is-Nil!60577 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577))))))

(assert (=> d!1680814 (= (++!13206 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (t!373864 s!2326)) lt!2142408)))

(declare-fun b!5212816 () Bool)

(assert (=> b!5212816 (= e!3245149 (Cons!60577 (h!67025 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577))) (++!13206 (t!373864 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577))) (t!373864 s!2326))))))

(declare-fun b!5212815 () Bool)

(assert (=> b!5212815 (= e!3245149 (t!373864 s!2326))))

(declare-fun b!5212817 () Bool)

(declare-fun res!2214001 () Bool)

(assert (=> b!5212817 (=> (not res!2214001) (not e!3245150))))

(assert (=> b!5212817 (= res!2214001 (= (size!39718 lt!2142408) (+ (size!39718 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577))) (size!39718 (t!373864 s!2326)))))))

(assert (= (and d!1680814 c!899056) b!5212815))

(assert (= (and d!1680814 (not c!899056)) b!5212816))

(assert (= (and d!1680814 res!2214002) b!5212817))

(assert (= (and b!5212817 res!2214001) b!5212818))

(declare-fun m!6262116 () Bool)

(assert (=> d!1680814 m!6262116))

(assert (=> d!1680814 m!6261334))

(declare-fun m!6262118 () Bool)

(assert (=> d!1680814 m!6262118))

(declare-fun m!6262120 () Bool)

(assert (=> d!1680814 m!6262120))

(declare-fun m!6262122 () Bool)

(assert (=> b!5212816 m!6262122))

(declare-fun m!6262124 () Bool)

(assert (=> b!5212817 m!6262124))

(assert (=> b!5212817 m!6261334))

(declare-fun m!6262126 () Bool)

(assert (=> b!5212817 m!6262126))

(declare-fun m!6262128 () Bool)

(assert (=> b!5212817 m!6262128))

(assert (=> b!5211813 d!1680814))

(declare-fun b!5212822 () Bool)

(declare-fun e!3245152 () Bool)

(declare-fun lt!2142409 () List!60701)

(assert (=> b!5212822 (= e!3245152 (or (not (= (Cons!60577 (h!67025 s!2326) Nil!60577) Nil!60577)) (= lt!2142409 Nil!60577)))))

(declare-fun d!1680816 () Bool)

(assert (=> d!1680816 e!3245152))

(declare-fun res!2214004 () Bool)

(assert (=> d!1680816 (=> (not res!2214004) (not e!3245152))))

(assert (=> d!1680816 (= res!2214004 (= (content!10732 lt!2142409) (set.union (content!10732 Nil!60577) (content!10732 (Cons!60577 (h!67025 s!2326) Nil!60577)))))))

(declare-fun e!3245151 () List!60701)

(assert (=> d!1680816 (= lt!2142409 e!3245151)))

(declare-fun c!899057 () Bool)

(assert (=> d!1680816 (= c!899057 (is-Nil!60577 Nil!60577))))

(assert (=> d!1680816 (= (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) lt!2142409)))

(declare-fun b!5212820 () Bool)

(assert (=> b!5212820 (= e!3245151 (Cons!60577 (h!67025 Nil!60577) (++!13206 (t!373864 Nil!60577) (Cons!60577 (h!67025 s!2326) Nil!60577))))))

(declare-fun b!5212819 () Bool)

(assert (=> b!5212819 (= e!3245151 (Cons!60577 (h!67025 s!2326) Nil!60577))))

(declare-fun b!5212821 () Bool)

(declare-fun res!2214003 () Bool)

(assert (=> b!5212821 (=> (not res!2214003) (not e!3245152))))

(assert (=> b!5212821 (= res!2214003 (= (size!39718 lt!2142409) (+ (size!39718 Nil!60577) (size!39718 (Cons!60577 (h!67025 s!2326) Nil!60577)))))))

(assert (= (and d!1680816 c!899057) b!5212819))

(assert (= (and d!1680816 (not c!899057)) b!5212820))

(assert (= (and d!1680816 res!2214004) b!5212821))

(assert (= (and b!5212821 res!2214003) b!5212822))

(declare-fun m!6262130 () Bool)

(assert (=> d!1680816 m!6262130))

(declare-fun m!6262132 () Bool)

(assert (=> d!1680816 m!6262132))

(declare-fun m!6262134 () Bool)

(assert (=> d!1680816 m!6262134))

(declare-fun m!6262136 () Bool)

(assert (=> b!5212820 m!6262136))

(declare-fun m!6262138 () Bool)

(assert (=> b!5212821 m!6262138))

(declare-fun m!6262140 () Bool)

(assert (=> b!5212821 m!6262140))

(declare-fun m!6262142 () Bool)

(assert (=> b!5212821 m!6262142))

(assert (=> b!5211813 d!1680816))

(declare-fun d!1680818 () Bool)

(assert (=> d!1680818 (= (++!13206 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (t!373864 s!2326)) s!2326)))

(declare-fun lt!2142412 () Unit!152466)

(declare-fun choose!38757 (List!60701 C!29870 List!60701 List!60701) Unit!152466)

(assert (=> d!1680818 (= lt!2142412 (choose!38757 Nil!60577 (h!67025 s!2326) (t!373864 s!2326) s!2326))))

(assert (=> d!1680818 (= (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) (t!373864 s!2326))) s!2326)))

(assert (=> d!1680818 (= (lemmaMoveElementToOtherListKeepsConcatEq!1621 Nil!60577 (h!67025 s!2326) (t!373864 s!2326) s!2326) lt!2142412)))

(declare-fun bs!1211030 () Bool)

(assert (= bs!1211030 d!1680818))

(assert (=> bs!1211030 m!6261334))

(assert (=> bs!1211030 m!6261334))

(assert (=> bs!1211030 m!6261336))

(declare-fun m!6262144 () Bool)

(assert (=> bs!1211030 m!6262144))

(declare-fun m!6262146 () Bool)

(assert (=> bs!1211030 m!6262146))

(assert (=> b!5211813 d!1680818))

(declare-fun b!5212823 () Bool)

(declare-fun e!3245154 () Bool)

(declare-fun lt!2142413 () Option!14911)

(assert (=> b!5212823 (= e!3245154 (not (isDefined!11614 lt!2142413)))))

(declare-fun b!5212824 () Bool)

(declare-fun e!3245153 () Option!14911)

(assert (=> b!5212824 (= e!3245153 (Some!14910 (tuple2!63999 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (t!373864 s!2326))))))

(declare-fun b!5212825 () Bool)

(declare-fun res!2214009 () Bool)

(declare-fun e!3245155 () Bool)

(assert (=> b!5212825 (=> (not res!2214009) (not e!3245155))))

(assert (=> b!5212825 (= res!2214009 (matchR!6985 (regOne!30112 r!7292) (_1!35302 (get!20812 lt!2142413))))))

(declare-fun b!5212826 () Bool)

(declare-fun e!3245157 () Option!14911)

(assert (=> b!5212826 (= e!3245153 e!3245157)))

(declare-fun c!899059 () Bool)

(assert (=> b!5212826 (= c!899059 (is-Nil!60577 (t!373864 s!2326)))))

(declare-fun b!5212828 () Bool)

(declare-fun res!2214005 () Bool)

(assert (=> b!5212828 (=> (not res!2214005) (not e!3245155))))

(assert (=> b!5212828 (= res!2214005 (matchR!6985 (regTwo!30112 r!7292) (_2!35302 (get!20812 lt!2142413))))))

(declare-fun b!5212829 () Bool)

(assert (=> b!5212829 (= e!3245155 (= (++!13206 (_1!35302 (get!20812 lt!2142413)) (_2!35302 (get!20812 lt!2142413))) s!2326))))

(declare-fun b!5212830 () Bool)

(assert (=> b!5212830 (= e!3245157 None!14910)))

(declare-fun b!5212831 () Bool)

(declare-fun e!3245156 () Bool)

(assert (=> b!5212831 (= e!3245156 (matchR!6985 (regTwo!30112 r!7292) (t!373864 s!2326)))))

(declare-fun d!1680820 () Bool)

(assert (=> d!1680820 e!3245154))

(declare-fun res!2214006 () Bool)

(assert (=> d!1680820 (=> res!2214006 e!3245154)))

(assert (=> d!1680820 (= res!2214006 e!3245155)))

(declare-fun res!2214007 () Bool)

(assert (=> d!1680820 (=> (not res!2214007) (not e!3245155))))

(assert (=> d!1680820 (= res!2214007 (isDefined!11614 lt!2142413))))

(assert (=> d!1680820 (= lt!2142413 e!3245153)))

(declare-fun c!899058 () Bool)

(assert (=> d!1680820 (= c!899058 e!3245156)))

(declare-fun res!2214008 () Bool)

(assert (=> d!1680820 (=> (not res!2214008) (not e!3245156))))

(assert (=> d!1680820 (= res!2214008 (matchR!6985 (regOne!30112 r!7292) (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577))))))

(assert (=> d!1680820 (validRegex!6536 (regOne!30112 r!7292))))

(assert (=> d!1680820 (= (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (t!373864 s!2326) s!2326) lt!2142413)))

(declare-fun b!5212827 () Bool)

(declare-fun lt!2142415 () Unit!152466)

(declare-fun lt!2142414 () Unit!152466)

(assert (=> b!5212827 (= lt!2142415 lt!2142414)))

(assert (=> b!5212827 (= (++!13206 (++!13206 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (Cons!60577 (h!67025 (t!373864 s!2326)) Nil!60577)) (t!373864 (t!373864 s!2326))) s!2326)))

(assert (=> b!5212827 (= lt!2142414 (lemmaMoveElementToOtherListKeepsConcatEq!1621 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (h!67025 (t!373864 s!2326)) (t!373864 (t!373864 s!2326)) s!2326))))

(assert (=> b!5212827 (= e!3245157 (findConcatSeparation!1325 (regOne!30112 r!7292) (regTwo!30112 r!7292) (++!13206 (++!13206 Nil!60577 (Cons!60577 (h!67025 s!2326) Nil!60577)) (Cons!60577 (h!67025 (t!373864 s!2326)) Nil!60577)) (t!373864 (t!373864 s!2326)) s!2326))))

(assert (= (and d!1680820 res!2214008) b!5212831))

(assert (= (and d!1680820 c!899058) b!5212824))

(assert (= (and d!1680820 (not c!899058)) b!5212826))

(assert (= (and b!5212826 c!899059) b!5212830))

(assert (= (and b!5212826 (not c!899059)) b!5212827))

(assert (= (and d!1680820 res!2214007) b!5212825))

(assert (= (and b!5212825 res!2214009) b!5212828))

(assert (= (and b!5212828 res!2214005) b!5212829))

(assert (= (and d!1680820 (not res!2214006)) b!5212823))

(declare-fun m!6262148 () Bool)

(assert (=> b!5212828 m!6262148))

(declare-fun m!6262150 () Bool)

(assert (=> b!5212828 m!6262150))

(assert (=> b!5212829 m!6262148))

(declare-fun m!6262152 () Bool)

(assert (=> b!5212829 m!6262152))

(declare-fun m!6262154 () Bool)

(assert (=> d!1680820 m!6262154))

(assert (=> d!1680820 m!6261334))

(declare-fun m!6262156 () Bool)

(assert (=> d!1680820 m!6262156))

(assert (=> d!1680820 m!6261330))

(assert (=> b!5212825 m!6262148))

(declare-fun m!6262158 () Bool)

(assert (=> b!5212825 m!6262158))

(assert (=> b!5212827 m!6261334))

(declare-fun m!6262160 () Bool)

(assert (=> b!5212827 m!6262160))

(assert (=> b!5212827 m!6262160))

(declare-fun m!6262162 () Bool)

(assert (=> b!5212827 m!6262162))

(assert (=> b!5212827 m!6261334))

(declare-fun m!6262164 () Bool)

(assert (=> b!5212827 m!6262164))

(assert (=> b!5212827 m!6262160))

(declare-fun m!6262166 () Bool)

(assert (=> b!5212827 m!6262166))

(declare-fun m!6262168 () Bool)

(assert (=> b!5212831 m!6262168))

(assert (=> b!5212823 m!6262154))

(assert (=> b!5211813 d!1680820))

(declare-fun bm!367222 () Bool)

(declare-fun call!367227 () Bool)

(declare-fun c!899060 () Bool)

(assert (=> bm!367222 (= call!367227 (nullable!4969 (ite c!899060 (regTwo!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regTwo!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun b!5212832 () Bool)

(declare-fun e!3245161 () Bool)

(declare-fun e!3245163 () Bool)

(assert (=> b!5212832 (= e!3245161 e!3245163)))

(assert (=> b!5212832 (= c!899060 (is-Union!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun b!5212833 () Bool)

(declare-fun e!3245159 () Bool)

(assert (=> b!5212833 (= e!3245159 call!367227)))

(declare-fun d!1680822 () Bool)

(declare-fun res!2214012 () Bool)

(declare-fun e!3245162 () Bool)

(assert (=> d!1680822 (=> res!2214012 e!3245162)))

(assert (=> d!1680822 (= res!2214012 (is-EmptyExpr!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> d!1680822 (= (nullableFct!1378 (h!67023 (exprs!4684 (h!67024 zl!343)))) e!3245162)))

(declare-fun b!5212834 () Bool)

(declare-fun e!3245160 () Bool)

(assert (=> b!5212834 (= e!3245160 e!3245161)))

(declare-fun res!2214013 () Bool)

(assert (=> b!5212834 (=> res!2214013 e!3245161)))

(assert (=> b!5212834 (= res!2214013 (is-Star!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun bm!367223 () Bool)

(declare-fun call!367228 () Bool)

(assert (=> bm!367223 (= call!367228 (nullable!4969 (ite c!899060 (regOne!30113 (h!67023 (exprs!4684 (h!67024 zl!343)))) (regOne!30112 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun b!5212835 () Bool)

(declare-fun e!3245158 () Bool)

(assert (=> b!5212835 (= e!3245163 e!3245158)))

(declare-fun res!2214014 () Bool)

(assert (=> b!5212835 (= res!2214014 call!367228)))

(assert (=> b!5212835 (=> (not res!2214014) (not e!3245158))))

(declare-fun b!5212836 () Bool)

(assert (=> b!5212836 (= e!3245162 e!3245160)))

(declare-fun res!2214011 () Bool)

(assert (=> b!5212836 (=> (not res!2214011) (not e!3245160))))

(assert (=> b!5212836 (= res!2214011 (and (not (is-EmptyLang!14800 (h!67023 (exprs!4684 (h!67024 zl!343))))) (not (is-ElementMatch!14800 (h!67023 (exprs!4684 (h!67024 zl!343)))))))))

(declare-fun b!5212837 () Bool)

(assert (=> b!5212837 (= e!3245158 call!367227)))

(declare-fun b!5212838 () Bool)

(assert (=> b!5212838 (= e!3245163 e!3245159)))

(declare-fun res!2214010 () Bool)

(assert (=> b!5212838 (= res!2214010 call!367228)))

(assert (=> b!5212838 (=> res!2214010 e!3245159)))

(assert (= (and d!1680822 (not res!2214012)) b!5212836))

(assert (= (and b!5212836 res!2214011) b!5212834))

(assert (= (and b!5212834 (not res!2214013)) b!5212832))

(assert (= (and b!5212832 c!899060) b!5212838))

(assert (= (and b!5212832 (not c!899060)) b!5212835))

(assert (= (and b!5212838 (not res!2214010)) b!5212833))

(assert (= (and b!5212835 res!2214014) b!5212837))

(assert (= (or b!5212833 b!5212837) bm!367222))

(assert (= (or b!5212838 b!5212835) bm!367223))

(declare-fun m!6262170 () Bool)

(assert (=> bm!367222 m!6262170))

(declare-fun m!6262172 () Bool)

(assert (=> bm!367223 m!6262172))

(assert (=> d!1680448 d!1680822))

(assert (=> d!1680492 d!1680662))

(assert (=> b!5211809 d!1680736))

(declare-fun d!1680824 () Bool)

(assert (=> d!1680824 (= (nullable!4969 (reg!15129 (regOne!30113 (regOne!30112 r!7292)))) (nullableFct!1378 (reg!15129 (regOne!30113 (regOne!30112 r!7292)))))))

(declare-fun bs!1211031 () Bool)

(assert (= bs!1211031 d!1680824))

(declare-fun m!6262174 () Bool)

(assert (=> bs!1211031 m!6262174))

(assert (=> b!5211832 d!1680824))

(declare-fun bs!1211032 () Bool)

(declare-fun d!1680826 () Bool)

(assert (= bs!1211032 (and d!1680826 d!1680620)))

(declare-fun lambda!261435 () Int)

(assert (=> bs!1211032 (= lambda!261435 lambda!261408)))

(declare-fun bs!1211033 () Bool)

(assert (= bs!1211033 (and d!1680826 d!1680752)))

(assert (=> bs!1211033 (= lambda!261435 lambda!261429)))

(declare-fun bs!1211034 () Bool)

(assert (= bs!1211034 (and d!1680826 d!1680762)))

(assert (=> bs!1211034 (= lambda!261435 lambda!261431)))

(declare-fun bs!1211035 () Bool)

(assert (= bs!1211035 (and d!1680826 d!1680634)))

(assert (=> bs!1211035 (= lambda!261435 lambda!261412)))

(declare-fun bs!1211036 () Bool)

(assert (= bs!1211036 (and d!1680826 d!1680600)))

(assert (=> bs!1211036 (= lambda!261435 lambda!261405)))

(assert (=> d!1680826 (= (nullableZipper!1226 lt!2142225) (exists!1963 lt!2142225 lambda!261435))))

(declare-fun bs!1211037 () Bool)

(assert (= bs!1211037 d!1680826))

(declare-fun m!6262176 () Bool)

(assert (=> bs!1211037 m!6262176))

(assert (=> b!5211841 d!1680826))

(declare-fun d!1680828 () Bool)

(assert (=> d!1680828 true))

(assert (=> d!1680828 true))

(declare-fun res!2214015 () Bool)

(assert (=> d!1680828 (= (choose!38744 lambda!261331) res!2214015)))

(assert (=> d!1680474 d!1680828))

(declare-fun d!1680830 () Bool)

(declare-fun res!2214020 () Bool)

(declare-fun e!3245168 () Bool)

(assert (=> d!1680830 (=> res!2214020 e!3245168)))

(assert (=> d!1680830 (= res!2214020 (is-Nil!60576 lt!2142308))))

(assert (=> d!1680830 (= (noDuplicate!1182 lt!2142308) e!3245168)))

(declare-fun b!5212843 () Bool)

(declare-fun e!3245169 () Bool)

(assert (=> b!5212843 (= e!3245168 e!3245169)))

(declare-fun res!2214021 () Bool)

(assert (=> b!5212843 (=> (not res!2214021) (not e!3245169))))

(declare-fun contains!19665 (List!60700 Context!8368) Bool)

(assert (=> b!5212843 (= res!2214021 (not (contains!19665 (t!373863 lt!2142308) (h!67024 lt!2142308))))))

(declare-fun b!5212844 () Bool)

(assert (=> b!5212844 (= e!3245169 (noDuplicate!1182 (t!373863 lt!2142308)))))

(assert (= (and d!1680830 (not res!2214020)) b!5212843))

(assert (= (and b!5212843 res!2214021) b!5212844))

(declare-fun m!6262178 () Bool)

(assert (=> b!5212843 m!6262178))

(declare-fun m!6262180 () Bool)

(assert (=> b!5212844 m!6262180))

(assert (=> d!1680424 d!1680830))

(declare-fun d!1680832 () Bool)

(declare-fun e!3245176 () Bool)

(assert (=> d!1680832 e!3245176))

(declare-fun res!2214026 () Bool)

(assert (=> d!1680832 (=> (not res!2214026) (not e!3245176))))

(declare-fun res!2214027 () List!60700)

(assert (=> d!1680832 (= res!2214026 (noDuplicate!1182 res!2214027))))

(declare-fun e!3245178 () Bool)

(assert (=> d!1680832 e!3245178))

(assert (=> d!1680832 (= (choose!38741 z!1189) res!2214027)))

(declare-fun b!5212852 () Bool)

(declare-fun e!3245177 () Bool)

(declare-fun tp!1461695 () Bool)

(assert (=> b!5212852 (= e!3245177 tp!1461695)))

(declare-fun b!5212851 () Bool)

(declare-fun tp!1461694 () Bool)

(assert (=> b!5212851 (= e!3245178 (and (inv!80248 (h!67024 res!2214027)) e!3245177 tp!1461694))))

(declare-fun b!5212853 () Bool)

(assert (=> b!5212853 (= e!3245176 (= (content!10730 res!2214027) z!1189))))

(assert (= b!5212851 b!5212852))

(assert (= (and d!1680832 (is-Cons!60576 res!2214027)) b!5212851))

(assert (= (and d!1680832 res!2214026) b!5212853))

(declare-fun m!6262182 () Bool)

(assert (=> d!1680832 m!6262182))

(declare-fun m!6262184 () Bool)

(assert (=> b!5212851 m!6262184))

(declare-fun m!6262186 () Bool)

(assert (=> b!5212853 m!6262186))

(assert (=> d!1680424 d!1680832))

(declare-fun e!3245179 () Bool)

(assert (=> b!5211960 (= tp!1461590 e!3245179)))

(declare-fun b!5212857 () Bool)

(declare-fun tp!1461697 () Bool)

(declare-fun tp!1461696 () Bool)

(assert (=> b!5212857 (= e!3245179 (and tp!1461697 tp!1461696))))

(declare-fun b!5212855 () Bool)

(declare-fun tp!1461699 () Bool)

(declare-fun tp!1461700 () Bool)

(assert (=> b!5212855 (= e!3245179 (and tp!1461699 tp!1461700))))

(declare-fun b!5212856 () Bool)

(declare-fun tp!1461698 () Bool)

(assert (=> b!5212856 (= e!3245179 tp!1461698)))

(declare-fun b!5212854 () Bool)

(assert (=> b!5212854 (= e!3245179 tp_is_empty!38853)))

(assert (= (and b!5211960 (is-ElementMatch!14800 (h!67023 (exprs!4684 setElem!33107)))) b!5212854))

(assert (= (and b!5211960 (is-Concat!23645 (h!67023 (exprs!4684 setElem!33107)))) b!5212855))

(assert (= (and b!5211960 (is-Star!14800 (h!67023 (exprs!4684 setElem!33107)))) b!5212856))

(assert (= (and b!5211960 (is-Union!14800 (h!67023 (exprs!4684 setElem!33107)))) b!5212857))

(declare-fun b!5212858 () Bool)

(declare-fun e!3245180 () Bool)

(declare-fun tp!1461701 () Bool)

(declare-fun tp!1461702 () Bool)

(assert (=> b!5212858 (= e!3245180 (and tp!1461701 tp!1461702))))

(assert (=> b!5211960 (= tp!1461591 e!3245180)))

(assert (= (and b!5211960 (is-Cons!60575 (t!373862 (exprs!4684 setElem!33107)))) b!5212858))

(declare-fun e!3245181 () Bool)

(assert (=> b!5211988 (= tp!1461620 e!3245181)))

(declare-fun b!5212862 () Bool)

(declare-fun tp!1461704 () Bool)

(declare-fun tp!1461703 () Bool)

(assert (=> b!5212862 (= e!3245181 (and tp!1461704 tp!1461703))))

(declare-fun b!5212860 () Bool)

(declare-fun tp!1461706 () Bool)

(declare-fun tp!1461707 () Bool)

(assert (=> b!5212860 (= e!3245181 (and tp!1461706 tp!1461707))))

(declare-fun b!5212861 () Bool)

(declare-fun tp!1461705 () Bool)

(assert (=> b!5212861 (= e!3245181 tp!1461705)))

(declare-fun b!5212859 () Bool)

(assert (=> b!5212859 (= e!3245181 tp_is_empty!38853)))

(assert (= (and b!5211988 (is-ElementMatch!14800 (regOne!30112 (reg!15129 r!7292)))) b!5212859))

(assert (= (and b!5211988 (is-Concat!23645 (regOne!30112 (reg!15129 r!7292)))) b!5212860))

(assert (= (and b!5211988 (is-Star!14800 (regOne!30112 (reg!15129 r!7292)))) b!5212861))

(assert (= (and b!5211988 (is-Union!14800 (regOne!30112 (reg!15129 r!7292)))) b!5212862))

(declare-fun e!3245182 () Bool)

(assert (=> b!5211988 (= tp!1461621 e!3245182)))

(declare-fun b!5212866 () Bool)

(declare-fun tp!1461709 () Bool)

(declare-fun tp!1461708 () Bool)

(assert (=> b!5212866 (= e!3245182 (and tp!1461709 tp!1461708))))

(declare-fun b!5212864 () Bool)

(declare-fun tp!1461711 () Bool)

(declare-fun tp!1461712 () Bool)

(assert (=> b!5212864 (= e!3245182 (and tp!1461711 tp!1461712))))

(declare-fun b!5212865 () Bool)

(declare-fun tp!1461710 () Bool)

(assert (=> b!5212865 (= e!3245182 tp!1461710)))

(declare-fun b!5212863 () Bool)

(assert (=> b!5212863 (= e!3245182 tp_is_empty!38853)))

(assert (= (and b!5211988 (is-ElementMatch!14800 (regTwo!30112 (reg!15129 r!7292)))) b!5212863))

(assert (= (and b!5211988 (is-Concat!23645 (regTwo!30112 (reg!15129 r!7292)))) b!5212864))

(assert (= (and b!5211988 (is-Star!14800 (regTwo!30112 (reg!15129 r!7292)))) b!5212865))

(assert (= (and b!5211988 (is-Union!14800 (regTwo!30112 (reg!15129 r!7292)))) b!5212866))

(declare-fun b!5212868 () Bool)

(declare-fun e!3245184 () Bool)

(declare-fun tp!1461713 () Bool)

(assert (=> b!5212868 (= e!3245184 tp!1461713)))

(declare-fun tp!1461714 () Bool)

(declare-fun e!3245183 () Bool)

(declare-fun b!5212867 () Bool)

(assert (=> b!5212867 (= e!3245183 (and (inv!80248 (h!67024 (t!373863 (t!373863 zl!343)))) e!3245184 tp!1461714))))

(assert (=> b!5211972 (= tp!1461603 e!3245183)))

(assert (= b!5212867 b!5212868))

(assert (= (and b!5211972 (is-Cons!60576 (t!373863 (t!373863 zl!343)))) b!5212867))

(declare-fun m!6262188 () Bool)

(assert (=> b!5212867 m!6262188))

(declare-fun b!5212869 () Bool)

(declare-fun e!3245185 () Bool)

(declare-fun tp!1461715 () Bool)

(declare-fun tp!1461716 () Bool)

(assert (=> b!5212869 (= e!3245185 (and tp!1461715 tp!1461716))))

(assert (=> b!5211973 (= tp!1461602 e!3245185)))

(assert (= (and b!5211973 (is-Cons!60575 (exprs!4684 (h!67024 (t!373863 zl!343))))) b!5212869))

(declare-fun e!3245186 () Bool)

(assert (=> b!5211951 (= tp!1461577 e!3245186)))

(declare-fun b!5212873 () Bool)

(declare-fun tp!1461718 () Bool)

(declare-fun tp!1461717 () Bool)

(assert (=> b!5212873 (= e!3245186 (and tp!1461718 tp!1461717))))

(declare-fun b!5212871 () Bool)

(declare-fun tp!1461720 () Bool)

(declare-fun tp!1461721 () Bool)

(assert (=> b!5212871 (= e!3245186 (and tp!1461720 tp!1461721))))

(declare-fun b!5212872 () Bool)

(declare-fun tp!1461719 () Bool)

(assert (=> b!5212872 (= e!3245186 tp!1461719)))

(declare-fun b!5212870 () Bool)

(assert (=> b!5212870 (= e!3245186 tp_is_empty!38853)))

(assert (= (and b!5211951 (is-ElementMatch!14800 (regOne!30113 (regOne!30113 r!7292)))) b!5212870))

(assert (= (and b!5211951 (is-Concat!23645 (regOne!30113 (regOne!30113 r!7292)))) b!5212871))

(assert (= (and b!5211951 (is-Star!14800 (regOne!30113 (regOne!30113 r!7292)))) b!5212872))

(assert (= (and b!5211951 (is-Union!14800 (regOne!30113 (regOne!30113 r!7292)))) b!5212873))

(declare-fun e!3245187 () Bool)

(assert (=> b!5211951 (= tp!1461576 e!3245187)))

(declare-fun b!5212877 () Bool)

(declare-fun tp!1461723 () Bool)

(declare-fun tp!1461722 () Bool)

(assert (=> b!5212877 (= e!3245187 (and tp!1461723 tp!1461722))))

(declare-fun b!5212875 () Bool)

(declare-fun tp!1461725 () Bool)

(declare-fun tp!1461726 () Bool)

(assert (=> b!5212875 (= e!3245187 (and tp!1461725 tp!1461726))))

(declare-fun b!5212876 () Bool)

(declare-fun tp!1461724 () Bool)

(assert (=> b!5212876 (= e!3245187 tp!1461724)))

(declare-fun b!5212874 () Bool)

(assert (=> b!5212874 (= e!3245187 tp_is_empty!38853)))

(assert (= (and b!5211951 (is-ElementMatch!14800 (regTwo!30113 (regOne!30113 r!7292)))) b!5212874))

(assert (= (and b!5211951 (is-Concat!23645 (regTwo!30113 (regOne!30113 r!7292)))) b!5212875))

(assert (= (and b!5211951 (is-Star!14800 (regTwo!30113 (regOne!30113 r!7292)))) b!5212876))

(assert (= (and b!5211951 (is-Union!14800 (regTwo!30113 (regOne!30113 r!7292)))) b!5212877))

(declare-fun b!5212878 () Bool)

(declare-fun e!3245188 () Bool)

(declare-fun tp!1461727 () Bool)

(declare-fun tp!1461728 () Bool)

(assert (=> b!5212878 (= e!3245188 (and tp!1461727 tp!1461728))))

(assert (=> b!5211965 (= tp!1461597 e!3245188)))

(assert (= (and b!5211965 (is-Cons!60575 (exprs!4684 setElem!33113))) b!5212878))

(declare-fun b!5212879 () Bool)

(declare-fun e!3245189 () Bool)

(declare-fun tp!1461729 () Bool)

(assert (=> b!5212879 (= e!3245189 (and tp_is_empty!38853 tp!1461729))))

(assert (=> b!5211978 (= tp!1461606 e!3245189)))

(assert (= (and b!5211978 (is-Cons!60577 (t!373864 (t!373864 s!2326)))) b!5212879))

(declare-fun e!3245190 () Bool)

(assert (=> b!5211950 (= tp!1461578 e!3245190)))

(declare-fun b!5212883 () Bool)

(declare-fun tp!1461731 () Bool)

(declare-fun tp!1461730 () Bool)

(assert (=> b!5212883 (= e!3245190 (and tp!1461731 tp!1461730))))

(declare-fun b!5212881 () Bool)

(declare-fun tp!1461733 () Bool)

(declare-fun tp!1461734 () Bool)

(assert (=> b!5212881 (= e!3245190 (and tp!1461733 tp!1461734))))

(declare-fun b!5212882 () Bool)

(declare-fun tp!1461732 () Bool)

(assert (=> b!5212882 (= e!3245190 tp!1461732)))

(declare-fun b!5212880 () Bool)

(assert (=> b!5212880 (= e!3245190 tp_is_empty!38853)))

(assert (= (and b!5211950 (is-ElementMatch!14800 (reg!15129 (regOne!30113 r!7292)))) b!5212880))

(assert (= (and b!5211950 (is-Concat!23645 (reg!15129 (regOne!30113 r!7292)))) b!5212881))

(assert (= (and b!5211950 (is-Star!14800 (reg!15129 (regOne!30113 r!7292)))) b!5212882))

(assert (= (and b!5211950 (is-Union!14800 (reg!15129 (regOne!30113 r!7292)))) b!5212883))

(declare-fun condSetEmpty!33121 () Bool)

(assert (=> setNonEmpty!33113 (= condSetEmpty!33121 (= setRest!33113 (as set.empty (Set Context!8368))))))

(declare-fun setRes!33121 () Bool)

(assert (=> setNonEmpty!33113 (= tp!1461596 setRes!33121)))

(declare-fun setIsEmpty!33121 () Bool)

(assert (=> setIsEmpty!33121 setRes!33121))

(declare-fun tp!1461735 () Bool)

(declare-fun setNonEmpty!33121 () Bool)

(declare-fun setElem!33121 () Context!8368)

(declare-fun e!3245191 () Bool)

(assert (=> setNonEmpty!33121 (= setRes!33121 (and tp!1461735 (inv!80248 setElem!33121) e!3245191))))

(declare-fun setRest!33121 () (Set Context!8368))

(assert (=> setNonEmpty!33121 (= setRest!33113 (set.union (set.insert setElem!33121 (as set.empty (Set Context!8368))) setRest!33121))))

(declare-fun b!5212884 () Bool)

(declare-fun tp!1461736 () Bool)

(assert (=> b!5212884 (= e!3245191 tp!1461736)))

(assert (= (and setNonEmpty!33113 condSetEmpty!33121) setIsEmpty!33121))

(assert (= (and setNonEmpty!33113 (not condSetEmpty!33121)) setNonEmpty!33121))

(assert (= setNonEmpty!33121 b!5212884))

(declare-fun m!6262190 () Bool)

(assert (=> setNonEmpty!33121 m!6262190))

(declare-fun e!3245192 () Bool)

(assert (=> b!5211986 (= tp!1461613 e!3245192)))

(declare-fun b!5212888 () Bool)

(declare-fun tp!1461738 () Bool)

(declare-fun tp!1461737 () Bool)

(assert (=> b!5212888 (= e!3245192 (and tp!1461738 tp!1461737))))

(declare-fun b!5212886 () Bool)

(declare-fun tp!1461740 () Bool)

(declare-fun tp!1461741 () Bool)

(assert (=> b!5212886 (= e!3245192 (and tp!1461740 tp!1461741))))

(declare-fun b!5212887 () Bool)

(declare-fun tp!1461739 () Bool)

(assert (=> b!5212887 (= e!3245192 tp!1461739)))

(declare-fun b!5212885 () Bool)

(assert (=> b!5212885 (= e!3245192 tp_is_empty!38853)))

(assert (= (and b!5211986 (is-ElementMatch!14800 (regOne!30113 (regTwo!30112 r!7292)))) b!5212885))

(assert (= (and b!5211986 (is-Concat!23645 (regOne!30113 (regTwo!30112 r!7292)))) b!5212886))

(assert (= (and b!5211986 (is-Star!14800 (regOne!30113 (regTwo!30112 r!7292)))) b!5212887))

(assert (= (and b!5211986 (is-Union!14800 (regOne!30113 (regTwo!30112 r!7292)))) b!5212888))

(declare-fun e!3245193 () Bool)

(assert (=> b!5211986 (= tp!1461612 e!3245193)))

(declare-fun b!5212892 () Bool)

(declare-fun tp!1461743 () Bool)

(declare-fun tp!1461742 () Bool)

(assert (=> b!5212892 (= e!3245193 (and tp!1461743 tp!1461742))))

(declare-fun b!5212890 () Bool)

(declare-fun tp!1461745 () Bool)

(declare-fun tp!1461746 () Bool)

(assert (=> b!5212890 (= e!3245193 (and tp!1461745 tp!1461746))))

(declare-fun b!5212891 () Bool)

(declare-fun tp!1461744 () Bool)

(assert (=> b!5212891 (= e!3245193 tp!1461744)))

(declare-fun b!5212889 () Bool)

(assert (=> b!5212889 (= e!3245193 tp_is_empty!38853)))

(assert (= (and b!5211986 (is-ElementMatch!14800 (regTwo!30113 (regTwo!30112 r!7292)))) b!5212889))

(assert (= (and b!5211986 (is-Concat!23645 (regTwo!30113 (regTwo!30112 r!7292)))) b!5212890))

(assert (= (and b!5211986 (is-Star!14800 (regTwo!30113 (regTwo!30112 r!7292)))) b!5212891))

(assert (= (and b!5211986 (is-Union!14800 (regTwo!30113 (regTwo!30112 r!7292)))) b!5212892))

(declare-fun e!3245194 () Bool)

(assert (=> b!5211984 (= tp!1461615 e!3245194)))

(declare-fun b!5212896 () Bool)

(declare-fun tp!1461748 () Bool)

(declare-fun tp!1461747 () Bool)

(assert (=> b!5212896 (= e!3245194 (and tp!1461748 tp!1461747))))

(declare-fun b!5212894 () Bool)

(declare-fun tp!1461750 () Bool)

(declare-fun tp!1461751 () Bool)

(assert (=> b!5212894 (= e!3245194 (and tp!1461750 tp!1461751))))

(declare-fun b!5212895 () Bool)

(declare-fun tp!1461749 () Bool)

(assert (=> b!5212895 (= e!3245194 tp!1461749)))

(declare-fun b!5212893 () Bool)

(assert (=> b!5212893 (= e!3245194 tp_is_empty!38853)))

(assert (= (and b!5211984 (is-ElementMatch!14800 (regOne!30112 (regTwo!30112 r!7292)))) b!5212893))

(assert (= (and b!5211984 (is-Concat!23645 (regOne!30112 (regTwo!30112 r!7292)))) b!5212894))

(assert (= (and b!5211984 (is-Star!14800 (regOne!30112 (regTwo!30112 r!7292)))) b!5212895))

(assert (= (and b!5211984 (is-Union!14800 (regOne!30112 (regTwo!30112 r!7292)))) b!5212896))

(declare-fun e!3245195 () Bool)

(assert (=> b!5211984 (= tp!1461616 e!3245195)))

(declare-fun b!5212900 () Bool)

(declare-fun tp!1461753 () Bool)

(declare-fun tp!1461752 () Bool)

(assert (=> b!5212900 (= e!3245195 (and tp!1461753 tp!1461752))))

(declare-fun b!5212898 () Bool)

(declare-fun tp!1461755 () Bool)

(declare-fun tp!1461756 () Bool)

(assert (=> b!5212898 (= e!3245195 (and tp!1461755 tp!1461756))))

(declare-fun b!5212899 () Bool)

(declare-fun tp!1461754 () Bool)

(assert (=> b!5212899 (= e!3245195 tp!1461754)))

(declare-fun b!5212897 () Bool)

(assert (=> b!5212897 (= e!3245195 tp_is_empty!38853)))

(assert (= (and b!5211984 (is-ElementMatch!14800 (regTwo!30112 (regTwo!30112 r!7292)))) b!5212897))

(assert (= (and b!5211984 (is-Concat!23645 (regTwo!30112 (regTwo!30112 r!7292)))) b!5212898))

(assert (= (and b!5211984 (is-Star!14800 (regTwo!30112 (regTwo!30112 r!7292)))) b!5212899))

(assert (= (and b!5211984 (is-Union!14800 (regTwo!30112 (regTwo!30112 r!7292)))) b!5212900))

(declare-fun e!3245196 () Bool)

(assert (=> b!5211949 (= tp!1461579 e!3245196)))

(declare-fun b!5212904 () Bool)

(declare-fun tp!1461758 () Bool)

(declare-fun tp!1461757 () Bool)

(assert (=> b!5212904 (= e!3245196 (and tp!1461758 tp!1461757))))

(declare-fun b!5212902 () Bool)

(declare-fun tp!1461760 () Bool)

(declare-fun tp!1461761 () Bool)

(assert (=> b!5212902 (= e!3245196 (and tp!1461760 tp!1461761))))

(declare-fun b!5212903 () Bool)

(declare-fun tp!1461759 () Bool)

(assert (=> b!5212903 (= e!3245196 tp!1461759)))

(declare-fun b!5212901 () Bool)

(assert (=> b!5212901 (= e!3245196 tp_is_empty!38853)))

(assert (= (and b!5211949 (is-ElementMatch!14800 (regOne!30112 (regOne!30113 r!7292)))) b!5212901))

(assert (= (and b!5211949 (is-Concat!23645 (regOne!30112 (regOne!30113 r!7292)))) b!5212902))

(assert (= (and b!5211949 (is-Star!14800 (regOne!30112 (regOne!30113 r!7292)))) b!5212903))

(assert (= (and b!5211949 (is-Union!14800 (regOne!30112 (regOne!30113 r!7292)))) b!5212904))

(declare-fun e!3245197 () Bool)

(assert (=> b!5211949 (= tp!1461580 e!3245197)))

(declare-fun b!5212908 () Bool)

(declare-fun tp!1461763 () Bool)

(declare-fun tp!1461762 () Bool)

(assert (=> b!5212908 (= e!3245197 (and tp!1461763 tp!1461762))))

(declare-fun b!5212906 () Bool)

(declare-fun tp!1461765 () Bool)

(declare-fun tp!1461766 () Bool)

(assert (=> b!5212906 (= e!3245197 (and tp!1461765 tp!1461766))))

(declare-fun b!5212907 () Bool)

(declare-fun tp!1461764 () Bool)

(assert (=> b!5212907 (= e!3245197 tp!1461764)))

(declare-fun b!5212905 () Bool)

(assert (=> b!5212905 (= e!3245197 tp_is_empty!38853)))

(assert (= (and b!5211949 (is-ElementMatch!14800 (regTwo!30112 (regOne!30113 r!7292)))) b!5212905))

(assert (= (and b!5211949 (is-Concat!23645 (regTwo!30112 (regOne!30113 r!7292)))) b!5212906))

(assert (= (and b!5211949 (is-Star!14800 (regTwo!30112 (regOne!30113 r!7292)))) b!5212907))

(assert (= (and b!5211949 (is-Union!14800 (regTwo!30112 (regOne!30113 r!7292)))) b!5212908))

(declare-fun e!3245198 () Bool)

(assert (=> b!5211985 (= tp!1461614 e!3245198)))

(declare-fun b!5212912 () Bool)

(declare-fun tp!1461768 () Bool)

(declare-fun tp!1461767 () Bool)

(assert (=> b!5212912 (= e!3245198 (and tp!1461768 tp!1461767))))

(declare-fun b!5212910 () Bool)

(declare-fun tp!1461770 () Bool)

(declare-fun tp!1461771 () Bool)

(assert (=> b!5212910 (= e!3245198 (and tp!1461770 tp!1461771))))

(declare-fun b!5212911 () Bool)

(declare-fun tp!1461769 () Bool)

(assert (=> b!5212911 (= e!3245198 tp!1461769)))

(declare-fun b!5212909 () Bool)

(assert (=> b!5212909 (= e!3245198 tp_is_empty!38853)))

(assert (= (and b!5211985 (is-ElementMatch!14800 (reg!15129 (regTwo!30112 r!7292)))) b!5212909))

(assert (= (and b!5211985 (is-Concat!23645 (reg!15129 (regTwo!30112 r!7292)))) b!5212910))

(assert (= (and b!5211985 (is-Star!14800 (reg!15129 (regTwo!30112 r!7292)))) b!5212911))

(assert (= (and b!5211985 (is-Union!14800 (reg!15129 (regTwo!30112 r!7292)))) b!5212912))

(declare-fun e!3245199 () Bool)

(assert (=> b!5211991 (= tp!1461622 e!3245199)))

(declare-fun b!5212916 () Bool)

(declare-fun tp!1461773 () Bool)

(declare-fun tp!1461772 () Bool)

(assert (=> b!5212916 (= e!3245199 (and tp!1461773 tp!1461772))))

(declare-fun b!5212914 () Bool)

(declare-fun tp!1461775 () Bool)

(declare-fun tp!1461776 () Bool)

(assert (=> b!5212914 (= e!3245199 (and tp!1461775 tp!1461776))))

(declare-fun b!5212915 () Bool)

(declare-fun tp!1461774 () Bool)

(assert (=> b!5212915 (= e!3245199 tp!1461774)))

(declare-fun b!5212913 () Bool)

(assert (=> b!5212913 (= e!3245199 tp_is_empty!38853)))

(assert (= (and b!5211991 (is-ElementMatch!14800 (h!67023 (exprs!4684 (h!67024 zl!343))))) b!5212913))

(assert (= (and b!5211991 (is-Concat!23645 (h!67023 (exprs!4684 (h!67024 zl!343))))) b!5212914))

(assert (= (and b!5211991 (is-Star!14800 (h!67023 (exprs!4684 (h!67024 zl!343))))) b!5212915))

(assert (= (and b!5211991 (is-Union!14800 (h!67023 (exprs!4684 (h!67024 zl!343))))) b!5212916))

(declare-fun b!5212917 () Bool)

(declare-fun e!3245200 () Bool)

(declare-fun tp!1461777 () Bool)

(declare-fun tp!1461778 () Bool)

(assert (=> b!5212917 (= e!3245200 (and tp!1461777 tp!1461778))))

(assert (=> b!5211991 (= tp!1461623 e!3245200)))

(assert (= (and b!5211991 (is-Cons!60575 (t!373862 (exprs!4684 (h!67024 zl!343))))) b!5212917))

(declare-fun e!3245201 () Bool)

(assert (=> b!5211982 (= tp!1461608 e!3245201)))

(declare-fun b!5212921 () Bool)

(declare-fun tp!1461780 () Bool)

(declare-fun tp!1461779 () Bool)

(assert (=> b!5212921 (= e!3245201 (and tp!1461780 tp!1461779))))

(declare-fun b!5212919 () Bool)

(declare-fun tp!1461782 () Bool)

(declare-fun tp!1461783 () Bool)

(assert (=> b!5212919 (= e!3245201 (and tp!1461782 tp!1461783))))

(declare-fun b!5212920 () Bool)

(declare-fun tp!1461781 () Bool)

(assert (=> b!5212920 (= e!3245201 tp!1461781)))

(declare-fun b!5212918 () Bool)

(assert (=> b!5212918 (= e!3245201 tp_is_empty!38853)))

(assert (= (and b!5211982 (is-ElementMatch!14800 (regOne!30113 (regOne!30112 r!7292)))) b!5212918))

(assert (= (and b!5211982 (is-Concat!23645 (regOne!30113 (regOne!30112 r!7292)))) b!5212919))

(assert (= (and b!5211982 (is-Star!14800 (regOne!30113 (regOne!30112 r!7292)))) b!5212920))

(assert (= (and b!5211982 (is-Union!14800 (regOne!30113 (regOne!30112 r!7292)))) b!5212921))

(declare-fun e!3245202 () Bool)

(assert (=> b!5211982 (= tp!1461607 e!3245202)))

(declare-fun b!5212925 () Bool)

(declare-fun tp!1461785 () Bool)

(declare-fun tp!1461784 () Bool)

(assert (=> b!5212925 (= e!3245202 (and tp!1461785 tp!1461784))))

(declare-fun b!5212923 () Bool)

(declare-fun tp!1461787 () Bool)

(declare-fun tp!1461788 () Bool)

(assert (=> b!5212923 (= e!3245202 (and tp!1461787 tp!1461788))))

(declare-fun b!5212924 () Bool)

(declare-fun tp!1461786 () Bool)

(assert (=> b!5212924 (= e!3245202 tp!1461786)))

(declare-fun b!5212922 () Bool)

(assert (=> b!5212922 (= e!3245202 tp_is_empty!38853)))

(assert (= (and b!5211982 (is-ElementMatch!14800 (regTwo!30113 (regOne!30112 r!7292)))) b!5212922))

(assert (= (and b!5211982 (is-Concat!23645 (regTwo!30113 (regOne!30112 r!7292)))) b!5212923))

(assert (= (and b!5211982 (is-Star!14800 (regTwo!30113 (regOne!30112 r!7292)))) b!5212924))

(assert (= (and b!5211982 (is-Union!14800 (regTwo!30113 (regOne!30112 r!7292)))) b!5212925))

(declare-fun e!3245203 () Bool)

(assert (=> b!5211981 (= tp!1461609 e!3245203)))

(declare-fun b!5212929 () Bool)

(declare-fun tp!1461790 () Bool)

(declare-fun tp!1461789 () Bool)

(assert (=> b!5212929 (= e!3245203 (and tp!1461790 tp!1461789))))

(declare-fun b!5212927 () Bool)

(declare-fun tp!1461792 () Bool)

(declare-fun tp!1461793 () Bool)

(assert (=> b!5212927 (= e!3245203 (and tp!1461792 tp!1461793))))

(declare-fun b!5212928 () Bool)

(declare-fun tp!1461791 () Bool)

(assert (=> b!5212928 (= e!3245203 tp!1461791)))

(declare-fun b!5212926 () Bool)

(assert (=> b!5212926 (= e!3245203 tp_is_empty!38853)))

(assert (= (and b!5211981 (is-ElementMatch!14800 (reg!15129 (regOne!30112 r!7292)))) b!5212926))

(assert (= (and b!5211981 (is-Concat!23645 (reg!15129 (regOne!30112 r!7292)))) b!5212927))

(assert (= (and b!5211981 (is-Star!14800 (reg!15129 (regOne!30112 r!7292)))) b!5212928))

(assert (= (and b!5211981 (is-Union!14800 (reg!15129 (regOne!30112 r!7292)))) b!5212929))

(declare-fun e!3245204 () Bool)

(assert (=> b!5211954 (= tp!1461583 e!3245204)))

(declare-fun b!5212933 () Bool)

(declare-fun tp!1461795 () Bool)

(declare-fun tp!1461794 () Bool)

(assert (=> b!5212933 (= e!3245204 (and tp!1461795 tp!1461794))))

(declare-fun b!5212931 () Bool)

(declare-fun tp!1461797 () Bool)

(declare-fun tp!1461798 () Bool)

(assert (=> b!5212931 (= e!3245204 (and tp!1461797 tp!1461798))))

(declare-fun b!5212932 () Bool)

(declare-fun tp!1461796 () Bool)

(assert (=> b!5212932 (= e!3245204 tp!1461796)))

(declare-fun b!5212930 () Bool)

(assert (=> b!5212930 (= e!3245204 tp_is_empty!38853)))

(assert (= (and b!5211954 (is-ElementMatch!14800 (reg!15129 (regTwo!30113 r!7292)))) b!5212930))

(assert (= (and b!5211954 (is-Concat!23645 (reg!15129 (regTwo!30113 r!7292)))) b!5212931))

(assert (= (and b!5211954 (is-Star!14800 (reg!15129 (regTwo!30113 r!7292)))) b!5212932))

(assert (= (and b!5211954 (is-Union!14800 (reg!15129 (regTwo!30113 r!7292)))) b!5212933))

(declare-fun e!3245205 () Bool)

(assert (=> b!5211990 (= tp!1461618 e!3245205)))

(declare-fun b!5212937 () Bool)

(declare-fun tp!1461800 () Bool)

(declare-fun tp!1461799 () Bool)

(assert (=> b!5212937 (= e!3245205 (and tp!1461800 tp!1461799))))

(declare-fun b!5212935 () Bool)

(declare-fun tp!1461802 () Bool)

(declare-fun tp!1461803 () Bool)

(assert (=> b!5212935 (= e!3245205 (and tp!1461802 tp!1461803))))

(declare-fun b!5212936 () Bool)

(declare-fun tp!1461801 () Bool)

(assert (=> b!5212936 (= e!3245205 tp!1461801)))

(declare-fun b!5212934 () Bool)

(assert (=> b!5212934 (= e!3245205 tp_is_empty!38853)))

(assert (= (and b!5211990 (is-ElementMatch!14800 (regOne!30113 (reg!15129 r!7292)))) b!5212934))

(assert (= (and b!5211990 (is-Concat!23645 (regOne!30113 (reg!15129 r!7292)))) b!5212935))

(assert (= (and b!5211990 (is-Star!14800 (regOne!30113 (reg!15129 r!7292)))) b!5212936))

(assert (= (and b!5211990 (is-Union!14800 (regOne!30113 (reg!15129 r!7292)))) b!5212937))

(declare-fun e!3245206 () Bool)

(assert (=> b!5211990 (= tp!1461617 e!3245206)))

(declare-fun b!5212941 () Bool)

(declare-fun tp!1461805 () Bool)

(declare-fun tp!1461804 () Bool)

(assert (=> b!5212941 (= e!3245206 (and tp!1461805 tp!1461804))))

(declare-fun b!5212939 () Bool)

(declare-fun tp!1461807 () Bool)

(declare-fun tp!1461808 () Bool)

(assert (=> b!5212939 (= e!3245206 (and tp!1461807 tp!1461808))))

(declare-fun b!5212940 () Bool)

(declare-fun tp!1461806 () Bool)

(assert (=> b!5212940 (= e!3245206 tp!1461806)))

(declare-fun b!5212938 () Bool)

(assert (=> b!5212938 (= e!3245206 tp_is_empty!38853)))

(assert (= (and b!5211990 (is-ElementMatch!14800 (regTwo!30113 (reg!15129 r!7292)))) b!5212938))

(assert (= (and b!5211990 (is-Concat!23645 (regTwo!30113 (reg!15129 r!7292)))) b!5212939))

(assert (= (and b!5211990 (is-Star!14800 (regTwo!30113 (reg!15129 r!7292)))) b!5212940))

(assert (= (and b!5211990 (is-Union!14800 (regTwo!30113 (reg!15129 r!7292)))) b!5212941))

(declare-fun e!3245207 () Bool)

(assert (=> b!5211955 (= tp!1461582 e!3245207)))

(declare-fun b!5212945 () Bool)

(declare-fun tp!1461810 () Bool)

(declare-fun tp!1461809 () Bool)

(assert (=> b!5212945 (= e!3245207 (and tp!1461810 tp!1461809))))

(declare-fun b!5212943 () Bool)

(declare-fun tp!1461812 () Bool)

(declare-fun tp!1461813 () Bool)

(assert (=> b!5212943 (= e!3245207 (and tp!1461812 tp!1461813))))

(declare-fun b!5212944 () Bool)

(declare-fun tp!1461811 () Bool)

(assert (=> b!5212944 (= e!3245207 tp!1461811)))

(declare-fun b!5212942 () Bool)

(assert (=> b!5212942 (= e!3245207 tp_is_empty!38853)))

(assert (= (and b!5211955 (is-ElementMatch!14800 (regOne!30113 (regTwo!30113 r!7292)))) b!5212942))

(assert (= (and b!5211955 (is-Concat!23645 (regOne!30113 (regTwo!30113 r!7292)))) b!5212943))

(assert (= (and b!5211955 (is-Star!14800 (regOne!30113 (regTwo!30113 r!7292)))) b!5212944))

(assert (= (and b!5211955 (is-Union!14800 (regOne!30113 (regTwo!30113 r!7292)))) b!5212945))

(declare-fun e!3245208 () Bool)

(assert (=> b!5211955 (= tp!1461581 e!3245208)))

(declare-fun b!5212949 () Bool)

(declare-fun tp!1461815 () Bool)

(declare-fun tp!1461814 () Bool)

(assert (=> b!5212949 (= e!3245208 (and tp!1461815 tp!1461814))))

(declare-fun b!5212947 () Bool)

(declare-fun tp!1461817 () Bool)

(declare-fun tp!1461818 () Bool)

(assert (=> b!5212947 (= e!3245208 (and tp!1461817 tp!1461818))))

(declare-fun b!5212948 () Bool)

(declare-fun tp!1461816 () Bool)

(assert (=> b!5212948 (= e!3245208 tp!1461816)))

(declare-fun b!5212946 () Bool)

(assert (=> b!5212946 (= e!3245208 tp_is_empty!38853)))

(assert (= (and b!5211955 (is-ElementMatch!14800 (regTwo!30113 (regTwo!30113 r!7292)))) b!5212946))

(assert (= (and b!5211955 (is-Concat!23645 (regTwo!30113 (regTwo!30113 r!7292)))) b!5212947))

(assert (= (and b!5211955 (is-Star!14800 (regTwo!30113 (regTwo!30113 r!7292)))) b!5212948))

(assert (= (and b!5211955 (is-Union!14800 (regTwo!30113 (regTwo!30113 r!7292)))) b!5212949))

(declare-fun e!3245209 () Bool)

(assert (=> b!5211953 (= tp!1461584 e!3245209)))

(declare-fun b!5212953 () Bool)

(declare-fun tp!1461820 () Bool)

(declare-fun tp!1461819 () Bool)

(assert (=> b!5212953 (= e!3245209 (and tp!1461820 tp!1461819))))

(declare-fun b!5212951 () Bool)

(declare-fun tp!1461822 () Bool)

(declare-fun tp!1461823 () Bool)

(assert (=> b!5212951 (= e!3245209 (and tp!1461822 tp!1461823))))

(declare-fun b!5212952 () Bool)

(declare-fun tp!1461821 () Bool)

(assert (=> b!5212952 (= e!3245209 tp!1461821)))

(declare-fun b!5212950 () Bool)

(assert (=> b!5212950 (= e!3245209 tp_is_empty!38853)))

(assert (= (and b!5211953 (is-ElementMatch!14800 (regOne!30112 (regTwo!30113 r!7292)))) b!5212950))

(assert (= (and b!5211953 (is-Concat!23645 (regOne!30112 (regTwo!30113 r!7292)))) b!5212951))

(assert (= (and b!5211953 (is-Star!14800 (regOne!30112 (regTwo!30113 r!7292)))) b!5212952))

(assert (= (and b!5211953 (is-Union!14800 (regOne!30112 (regTwo!30113 r!7292)))) b!5212953))

(declare-fun e!3245210 () Bool)

(assert (=> b!5211953 (= tp!1461585 e!3245210)))

(declare-fun b!5212957 () Bool)

(declare-fun tp!1461825 () Bool)

(declare-fun tp!1461824 () Bool)

(assert (=> b!5212957 (= e!3245210 (and tp!1461825 tp!1461824))))

(declare-fun b!5212955 () Bool)

(declare-fun tp!1461827 () Bool)

(declare-fun tp!1461828 () Bool)

(assert (=> b!5212955 (= e!3245210 (and tp!1461827 tp!1461828))))

(declare-fun b!5212956 () Bool)

(declare-fun tp!1461826 () Bool)

(assert (=> b!5212956 (= e!3245210 tp!1461826)))

(declare-fun b!5212954 () Bool)

(assert (=> b!5212954 (= e!3245210 tp_is_empty!38853)))

(assert (= (and b!5211953 (is-ElementMatch!14800 (regTwo!30112 (regTwo!30113 r!7292)))) b!5212954))

(assert (= (and b!5211953 (is-Concat!23645 (regTwo!30112 (regTwo!30113 r!7292)))) b!5212955))

(assert (= (and b!5211953 (is-Star!14800 (regTwo!30112 (regTwo!30113 r!7292)))) b!5212956))

(assert (= (and b!5211953 (is-Union!14800 (regTwo!30112 (regTwo!30113 r!7292)))) b!5212957))

(declare-fun e!3245211 () Bool)

(assert (=> b!5211989 (= tp!1461619 e!3245211)))

(declare-fun b!5212961 () Bool)

(declare-fun tp!1461830 () Bool)

(declare-fun tp!1461829 () Bool)

(assert (=> b!5212961 (= e!3245211 (and tp!1461830 tp!1461829))))

(declare-fun b!5212959 () Bool)

(declare-fun tp!1461832 () Bool)

(declare-fun tp!1461833 () Bool)

(assert (=> b!5212959 (= e!3245211 (and tp!1461832 tp!1461833))))

(declare-fun b!5212960 () Bool)

(declare-fun tp!1461831 () Bool)

(assert (=> b!5212960 (= e!3245211 tp!1461831)))

(declare-fun b!5212958 () Bool)

(assert (=> b!5212958 (= e!3245211 tp_is_empty!38853)))

(assert (= (and b!5211989 (is-ElementMatch!14800 (reg!15129 (reg!15129 r!7292)))) b!5212958))

(assert (= (and b!5211989 (is-Concat!23645 (reg!15129 (reg!15129 r!7292)))) b!5212959))

(assert (= (and b!5211989 (is-Star!14800 (reg!15129 (reg!15129 r!7292)))) b!5212960))

(assert (= (and b!5211989 (is-Union!14800 (reg!15129 (reg!15129 r!7292)))) b!5212961))

(declare-fun e!3245212 () Bool)

(assert (=> b!5211980 (= tp!1461610 e!3245212)))

(declare-fun b!5212965 () Bool)

(declare-fun tp!1461835 () Bool)

(declare-fun tp!1461834 () Bool)

(assert (=> b!5212965 (= e!3245212 (and tp!1461835 tp!1461834))))

(declare-fun b!5212963 () Bool)

(declare-fun tp!1461837 () Bool)

(declare-fun tp!1461838 () Bool)

(assert (=> b!5212963 (= e!3245212 (and tp!1461837 tp!1461838))))

(declare-fun b!5212964 () Bool)

(declare-fun tp!1461836 () Bool)

(assert (=> b!5212964 (= e!3245212 tp!1461836)))

(declare-fun b!5212962 () Bool)

(assert (=> b!5212962 (= e!3245212 tp_is_empty!38853)))

(assert (= (and b!5211980 (is-ElementMatch!14800 (regOne!30112 (regOne!30112 r!7292)))) b!5212962))

(assert (= (and b!5211980 (is-Concat!23645 (regOne!30112 (regOne!30112 r!7292)))) b!5212963))

(assert (= (and b!5211980 (is-Star!14800 (regOne!30112 (regOne!30112 r!7292)))) b!5212964))

(assert (= (and b!5211980 (is-Union!14800 (regOne!30112 (regOne!30112 r!7292)))) b!5212965))

(declare-fun e!3245213 () Bool)

(assert (=> b!5211980 (= tp!1461611 e!3245213)))

(declare-fun b!5212969 () Bool)

(declare-fun tp!1461840 () Bool)

(declare-fun tp!1461839 () Bool)

(assert (=> b!5212969 (= e!3245213 (and tp!1461840 tp!1461839))))

(declare-fun b!5212967 () Bool)

(declare-fun tp!1461842 () Bool)

(declare-fun tp!1461843 () Bool)

(assert (=> b!5212967 (= e!3245213 (and tp!1461842 tp!1461843))))

(declare-fun b!5212968 () Bool)

(declare-fun tp!1461841 () Bool)

(assert (=> b!5212968 (= e!3245213 tp!1461841)))

(declare-fun b!5212966 () Bool)

(assert (=> b!5212966 (= e!3245213 tp_is_empty!38853)))

(assert (= (and b!5211980 (is-ElementMatch!14800 (regTwo!30112 (regOne!30112 r!7292)))) b!5212966))

(assert (= (and b!5211980 (is-Concat!23645 (regTwo!30112 (regOne!30112 r!7292)))) b!5212967))

(assert (= (and b!5211980 (is-Star!14800 (regTwo!30112 (regOne!30112 r!7292)))) b!5212968))

(assert (= (and b!5211980 (is-Union!14800 (regTwo!30112 (regOne!30112 r!7292)))) b!5212969))

(declare-fun b_lambda!201611 () Bool)

(assert (= b_lambda!201605 (or d!1680436 b_lambda!201611)))

(declare-fun bs!1211038 () Bool)

(declare-fun d!1680834 () Bool)

(assert (= bs!1211038 (and d!1680834 d!1680436)))

(assert (=> bs!1211038 (= (dynLambda!23932 lambda!261358 (h!67023 (exprs!4684 (h!67024 zl!343)))) (validRegex!6536 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(declare-fun m!6262192 () Bool)

(assert (=> bs!1211038 m!6262192))

(assert (=> b!5212739 d!1680834))

(declare-fun b_lambda!201613 () Bool)

(assert (= b_lambda!201599 (or b!5211489 b_lambda!201613)))

(assert (=> d!1680664 d!1680508))

(declare-fun b_lambda!201615 () Bool)

(assert (= b_lambda!201609 (or d!1680428 b_lambda!201615)))

(declare-fun bs!1211039 () Bool)

(declare-fun d!1680836 () Bool)

(assert (= bs!1211039 (and d!1680836 d!1680428)))

(assert (=> bs!1211039 (= (dynLambda!23932 lambda!261351 (h!67023 lt!2142314)) (validRegex!6536 (h!67023 lt!2142314)))))

(declare-fun m!6262194 () Bool)

(assert (=> bs!1211039 m!6262194))

(assert (=> b!5212746 d!1680836))

(declare-fun b_lambda!201617 () Bool)

(assert (= b_lambda!201601 (or b!5211489 b_lambda!201617)))

(assert (=> d!1680700 d!1680506))

(declare-fun b_lambda!201619 () Bool)

(assert (= b_lambda!201597 (or d!1680430 b_lambda!201619)))

(declare-fun bs!1211040 () Bool)

(declare-fun d!1680838 () Bool)

(assert (= bs!1211040 (and d!1680838 d!1680430)))

(assert (=> bs!1211040 (= (dynLambda!23932 lambda!261354 (h!67023 (exprs!4684 (h!67024 zl!343)))) (validRegex!6536 (h!67023 (exprs!4684 (h!67024 zl!343)))))))

(assert (=> bs!1211040 m!6262192))

(assert (=> b!5212515 d!1680838))

(declare-fun b_lambda!201621 () Bool)

(assert (= b_lambda!201607 (or d!1680432 b_lambda!201621)))

(declare-fun bs!1211041 () Bool)

(declare-fun d!1680840 () Bool)

(assert (= bs!1211041 (and d!1680840 d!1680432)))

(assert (=> bs!1211041 (= (dynLambda!23932 lambda!261357 (h!67023 (exprs!4684 setElem!33107))) (validRegex!6536 (h!67023 (exprs!4684 setElem!33107))))))

(declare-fun m!6262196 () Bool)

(assert (=> bs!1211041 m!6262196))

(assert (=> b!5212742 d!1680840))

(declare-fun b_lambda!201623 () Bool)

(assert (= b_lambda!201603 (or d!1680426 b_lambda!201623)))

(declare-fun bs!1211042 () Bool)

(declare-fun d!1680842 () Bool)

(assert (= bs!1211042 (and d!1680842 d!1680426)))

(assert (=> bs!1211042 (= (dynLambda!23932 lambda!261348 (h!67023 (unfocusZipperList!242 zl!343))) (validRegex!6536 (h!67023 (unfocusZipperList!242 zl!343))))))

(declare-fun m!6262198 () Bool)

(assert (=> bs!1211042 m!6262198))

(assert (=> b!5212646 d!1680842))

(push 1)

(assert (not b!5212925))

(assert (not b!5212964))

(assert (not b!5212414))

(assert (not b!5212675))

(assert (not b!5212492))

(assert (not b!5212573))

(assert (not b!5212700))

(assert (not bm!367167))

(assert (not d!1680690))

(assert (not b!5212908))

(assert (not b!5212910))

(assert (not bs!1211038))

(assert (not bm!367212))

(assert (not b!5212490))

(assert (not b!5212385))

(assert (not b!5212467))

(assert (not b!5212861))

(assert (not b!5212408))

(assert (not d!1680734))

(assert (not b!5212900))

(assert (not d!1680720))

(assert (not d!1680814))

(assert (not bm!367223))

(assert (not bm!367194))

(assert (not d!1680708))

(assert (not d!1680752))

(assert (not d!1680698))

(assert (not b!5212937))

(assert (not b_lambda!201615))

(assert (not bm!367126))

(assert (not d!1680696))

(assert (not bm!367211))

(assert (not b!5212955))

(assert (not d!1680774))

(assert (not bs!1211040))

(assert (not b!5212471))

(assert (not b!5212927))

(assert (not b!5212851))

(assert (not bm!367221))

(assert (not bm!367152))

(assert (not d!1680762))

(assert (not b!5212932))

(assert (not b!5212878))

(assert (not bs!1211039))

(assert (not b!5212547))

(assert (not b!5212439))

(assert (not bm!367146))

(assert (not b!5212921))

(assert (not bm!367142))

(assert (not b!5212623))

(assert (not b!5212412))

(assert (not b!5212804))

(assert (not d!1680668))

(assert (not b!5212611))

(assert (not d!1680806))

(assert (not b!5212920))

(assert (not bm!367154))

(assert (not b!5212879))

(assert (not b!5212876))

(assert (not bm!367130))

(assert (not b!5212405))

(assert (not d!1680650))

(assert (not b!5212948))

(assert (not bm!367176))

(assert (not b!5212960))

(assert (not b!5212681))

(assert (not bm!367175))

(assert (not b!5212480))

(assert (not bm!367140))

(assert (not b!5212717))

(assert (not b!5212917))

(assert (not bm!367174))

(assert (not b!5212740))

(assert (not b!5212931))

(assert (not d!1680648))

(assert (not bm!367148))

(assert (not d!1680824))

(assert (not b!5212873))

(assert (not bm!367188))

(assert (not bs!1211042))

(assert (not b!5212895))

(assert (not b!5212626))

(assert (not b_lambda!201623))

(assert (not d!1680738))

(assert (not b!5212678))

(assert (not d!1680818))

(assert (not b!5212852))

(assert (not b!5212881))

(assert (not bs!1211041))

(assert (not b!5212902))

(assert (not bm!367161))

(assert (not b!5212672))

(assert (not bm!367113))

(assert (not b!5212387))

(assert (not b!5212823))

(assert (not b!5212949))

(assert (not bm!367189))

(assert (not b!5212883))

(assert (not b!5212911))

(assert (not b!5212961))

(assert (not b!5212647))

(assert (not d!1680700))

(assert (not b!5212865))

(assert (not b!5212820))

(assert (not bm!367183))

(assert (not b!5212747))

(assert (not b!5212935))

(assert (not d!1680692))

(assert (not bm!367125))

(assert (not setNonEmpty!33120))

(assert (not b!5212903))

(assert (not b!5212545))

(assert (not d!1680754))

(assert (not d!1680626))

(assert (not b!5212608))

(assert (not bm!367200))

(assert (not b!5212516))

(assert (not bm!367157))

(assert (not bm!367217))

(assert (not b!5212940))

(assert (not b!5212957))

(assert (not b!5212798))

(assert (not b!5212858))

(assert (not d!1680654))

(assert (not b!5212864))

(assert (not b!5212535))

(assert (not b!5212969))

(assert (not d!1680812))

(assert (not b!5212716))

(assert (not b!5212906))

(assert (not b!5212617))

(assert (not b!5212586))

(assert (not b_lambda!201587))

(assert (not b!5212684))

(assert (not b!5212898))

(assert (not b!5212923))

(assert (not d!1680710))

(assert (not bm!367166))

(assert (not b!5212919))

(assert (not bm!367112))

(assert (not b!5212860))

(assert (not d!1680600))

(assert (not b!5212517))

(assert (not b!5212857))

(assert (not b!5212395))

(assert (not b!5212967))

(assert (not b!5212951))

(assert (not bm!367162))

(assert (not d!1680736))

(assert (not bm!367190))

(assert (not bm!367165))

(assert (not b!5212882))

(assert (not b!5212869))

(assert (not b!5212726))

(assert (not b!5212502))

(assert (not b!5212904))

(assert (not b!5212928))

(assert (not b!5212776))

(assert (not b!5212553))

(assert (not b!5212727))

(assert (not b!5212559))

(assert (not b!5212691))

(assert (not b_lambda!201617))

(assert (not b!5212821))

(assert (not bm!367164))

(assert (not bm!367111))

(assert (not b!5212722))

(assert (not bm!367132))

(assert (not b!5212728))

(assert (not d!1680664))

(assert (not b!5212729))

(assert (not b!5212380))

(assert (not bm!367122))

(assert (not b_lambda!201619))

(assert (not b!5212843))

(assert (not bm!367163))

(assert (not bm!367136))

(assert (not b!5212844))

(assert (not b!5212584))

(assert (not bm!367191))

(assert (not b!5212891))

(assert (not b!5212941))

(assert (not b!5212621))

(assert (not bm!367210))

(assert (not b!5212620))

(assert (not b!5212614))

(assert (not b!5212866))

(assert (not b!5212411))

(assert (not bm!367204))

(assert (not b!5212493))

(assert (not b!5212924))

(assert (not bm!367192))

(assert (not b!5212963))

(assert (not bm!367168))

(assert (not b_lambda!201585))

(assert (not b!5212453))

(assert (not d!1680826))

(assert (not d!1680744))

(assert (not b!5212585))

(assert (not b!5212953))

(assert (not b!5212475))

(assert (not b!5212489))

(assert (not b!5212896))

(assert (not bm!367137))

(assert (not b!5212915))

(assert (not b_lambda!201621))

(assert (not b!5212914))

(assert (not b!5212389))

(assert (not d!1680746))

(assert (not bm!367134))

(assert (not b!5212707))

(assert (not bm!367170))

(assert (not d!1680624))

(assert (not bm!367181))

(assert (not b!5212476))

(assert (not b!5212943))

(assert (not b!5212770))

(assert (not d!1680808))

(assert (not b!5212541))

(assert (not b!5212710))

(assert (not b!5212827))

(assert (not b!5212929))

(assert (not b!5212542))

(assert (not d!1680742))

(assert (not bm!367205))

(assert (not b!5212486))

(assert (not bm!367218))

(assert (not b!5212952))

(assert (not d!1680756))

(assert (not d!1680782))

(assert (not b!5212659))

(assert (not b!5212690))

(assert (not b!5212855))

(assert (not b!5212965))

(assert (not d!1680596))

(assert (not b!5212402))

(assert (not bm!367147))

(assert (not d!1680820))

(assert (not setNonEmpty!33121))

(assert (not d!1680816))

(assert (not b!5212907))

(assert (not bm!367110))

(assert (not b_lambda!201613))

(assert (not b!5212546))

(assert (not d!1680758))

(assert (not d!1680810))

(assert (not d!1680660))

(assert (not bm!367206))

(assert (not b!5212686))

(assert (not b!5212713))

(assert (not b!5212899))

(assert (not bm!367216))

(assert (not b!5212769))

(assert (not bm!367139))

(assert (not b!5212593))

(assert (not b!5212813))

(assert (not d!1680784))

(assert (not b!5212887))

(assert (not b!5212466))

(assert (not b!5212936))

(assert (not d!1680682))

(assert tp_is_empty!38853)

(assert (not b!5212829))

(assert (not b!5212483))

(assert (not setNonEmpty!33119))

(assert (not d!1680604))

(assert (not b!5212872))

(assert (not d!1680706))

(assert (not b!5212886))

(assert (not b!5212884))

(assert (not b!5212868))

(assert (not b!5212816))

(assert (not b!5212595))

(assert (not bm!367127))

(assert (not d!1680606))

(assert (not b!5212944))

(assert (not b!5212959))

(assert (not b!5212451))

(assert (not b!5212743))

(assert (not b!5212968))

(assert (not b!5212945))

(assert (not b!5212871))

(assert (not b!5212875))

(assert (not d!1680702))

(assert (not bm!367180))

(assert (not b!5212381))

(assert (not b!5212682))

(assert (not b!5212694))

(assert (not b!5212856))

(assert (not b!5212947))

(assert (not b!5212787))

(assert (not b!5212877))

(assert (not b!5212653))

(assert (not d!1680768))

(assert (not b!5212456))

(assert (not b!5212607))

(assert (not bm!367153))

(assert (not b!5212814))

(assert (not b!5212724))

(assert (not b!5212625))

(assert (not bm!367222))

(assert (not b!5212939))

(assert (not bm!367131))

(assert (not d!1680634))

(assert (not b!5212867))

(assert (not b!5212828))

(assert (not b!5212741))

(assert (not d!1680832))

(assert (not bm!367133))

(assert (not b!5212892))

(assert (not b!5212862))

(assert (not d!1680666))

(assert (not b!5212825))

(assert (not bm!367182))

(assert (not d!1680636))

(assert (not bm!367199))

(assert (not b!5212894))

(assert (not b!5212916))

(assert (not b!5212956))

(assert (not b!5212730))

(assert (not d!1680656))

(assert (not d!1680620))

(assert (not bm!367155))

(assert (not b!5212665))

(assert (not d!1680760))

(assert (not b!5212723))

(assert (not b!5212637))

(assert (not bm!367219))

(assert (not b!5212384))

(assert (not b!5212831))

(assert (not b!5212817))

(assert (not b!5212912))

(assert (not b!5212687))

(assert (not bm!367184))

(assert (not b!5212744))

(assert (not b!5212933))

(assert (not d!1680724))

(assert (not b!5212382))

(assert (not d!1680726))

(assert (not b!5212890))

(assert (not b!5212888))

(assert (not bm!367128))

(assert (not b!5212853))

(assert (not b_lambda!201611))

(assert (not b!5212719))

(assert (not b!5212470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

