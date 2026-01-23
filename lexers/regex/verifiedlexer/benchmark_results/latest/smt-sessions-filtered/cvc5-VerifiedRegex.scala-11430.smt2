; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!615728 () Bool)

(assert start!615728)

(declare-fun b!6164365 () Bool)

(assert (=> b!6164365 true))

(assert (=> b!6164365 true))

(declare-fun lambda!336461 () Int)

(declare-fun lambda!336460 () Int)

(assert (=> b!6164365 (not (= lambda!336461 lambda!336460))))

(assert (=> b!6164365 true))

(assert (=> b!6164365 true))

(declare-fun b!6164389 () Bool)

(assert (=> b!6164389 true))

(declare-fun b!6164355 () Bool)

(declare-fun e!3755553 () Bool)

(declare-fun tp!1721072 () Bool)

(declare-fun tp!1721063 () Bool)

(assert (=> b!6164355 (= e!3755553 (and tp!1721072 tp!1721063))))

(declare-fun b!6164356 () Bool)

(declare-fun e!3755569 () Bool)

(declare-fun e!3755573 () Bool)

(assert (=> b!6164356 (= e!3755569 e!3755573)))

(declare-fun res!2552433 () Bool)

(assert (=> b!6164356 (=> res!2552433 e!3755573)))

(declare-fun e!3755552 () Bool)

(assert (=> b!6164356 (= res!2552433 e!3755552)))

(declare-fun res!2552445 () Bool)

(assert (=> b!6164356 (=> (not res!2552445) (not e!3755552))))

(declare-datatypes ((C!32482 0))(
  ( (C!32483 (val!25943 Int)) )
))
(declare-datatypes ((List!64617 0))(
  ( (Nil!64493) (Cons!64493 (h!70941 C!32482) (t!378117 List!64617)) )
))
(declare-fun s!2326 () List!64617)

(declare-fun lt!2336358 () Bool)

(declare-datatypes ((Regex!16106 0))(
  ( (ElementMatch!16106 (c!1110429 C!32482)) (Concat!24951 (regOne!32724 Regex!16106) (regTwo!32724 Regex!16106)) (EmptyExpr!16106) (Star!16106 (reg!16435 Regex!16106)) (EmptyLang!16106) (Union!16106 (regOne!32725 Regex!16106) (regTwo!32725 Regex!16106)) )
))
(declare-datatypes ((List!64618 0))(
  ( (Nil!64494) (Cons!64494 (h!70942 Regex!16106) (t!378118 List!64618)) )
))
(declare-datatypes ((Context!10980 0))(
  ( (Context!10981 (exprs!5990 List!64618)) )
))
(declare-fun lt!2336359 () (Set Context!10980))

(declare-fun matchZipper!2118 ((Set Context!10980) List!64617) Bool)

(assert (=> b!6164356 (= res!2552445 (not (= (matchZipper!2118 lt!2336359 (t!378117 s!2326)) lt!2336358)))))

(declare-fun lt!2336369 () (Set Context!10980))

(declare-fun e!3755566 () Bool)

(assert (=> b!6164356 (= (matchZipper!2118 lt!2336369 (t!378117 s!2326)) e!3755566)))

(declare-fun res!2552451 () Bool)

(assert (=> b!6164356 (=> res!2552451 e!3755566)))

(assert (=> b!6164356 (= res!2552451 lt!2336358)))

(declare-fun lt!2336383 () (Set Context!10980))

(assert (=> b!6164356 (= lt!2336358 (matchZipper!2118 lt!2336383 (t!378117 s!2326)))))

(declare-datatypes ((Unit!157627 0))(
  ( (Unit!157628) )
))
(declare-fun lt!2336373 () Unit!157627)

(declare-fun lt!2336370 () (Set Context!10980))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!937 ((Set Context!10980) (Set Context!10980) List!64617) Unit!157627)

(assert (=> b!6164356 (= lt!2336373 (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336383 lt!2336370 (t!378117 s!2326)))))

(declare-fun b!6164357 () Bool)

(declare-fun e!3755572 () Unit!157627)

(declare-fun Unit!157629 () Unit!157627)

(assert (=> b!6164357 (= e!3755572 Unit!157629)))

(declare-fun b!6164358 () Bool)

(declare-fun e!3755563 () Unit!157627)

(declare-fun Unit!157630 () Unit!157627)

(assert (=> b!6164358 (= e!3755563 Unit!157630)))

(declare-fun b!6164359 () Bool)

(declare-fun e!3755559 () Unit!157627)

(declare-fun Unit!157631 () Unit!157627)

(assert (=> b!6164359 (= e!3755559 Unit!157631)))

(declare-fun b!6164360 () Bool)

(declare-fun e!3755555 () Bool)

(declare-fun lt!2336374 () (Set Context!10980))

(assert (=> b!6164360 (= e!3755555 (matchZipper!2118 lt!2336374 (t!378117 s!2326)))))

(declare-fun b!6164361 () Bool)

(declare-fun res!2552444 () Bool)

(declare-fun e!3755557 () Bool)

(assert (=> b!6164361 (=> (not res!2552444) (not e!3755557))))

(declare-fun z!1189 () (Set Context!10980))

(declare-datatypes ((List!64619 0))(
  ( (Nil!64495) (Cons!64495 (h!70943 Context!10980) (t!378119 List!64619)) )
))
(declare-fun zl!343 () List!64619)

(declare-fun toList!9890 ((Set Context!10980)) List!64619)

(assert (=> b!6164361 (= res!2552444 (= (toList!9890 z!1189) zl!343))))

(declare-fun b!6164362 () Bool)

(declare-fun res!2552434 () Bool)

(declare-fun e!3755574 () Bool)

(assert (=> b!6164362 (=> res!2552434 e!3755574)))

(declare-fun r!7292 () Regex!16106)

(declare-fun generalisedConcat!1703 (List!64618) Regex!16106)

(assert (=> b!6164362 (= res!2552434 (not (= r!7292 (generalisedConcat!1703 (exprs!5990 (h!70943 zl!343))))))))

(declare-fun res!2552440 () Bool)

(assert (=> start!615728 (=> (not res!2552440) (not e!3755557))))

(declare-fun validRegex!7842 (Regex!16106) Bool)

(assert (=> start!615728 (= res!2552440 (validRegex!7842 r!7292))))

(assert (=> start!615728 e!3755557))

(assert (=> start!615728 e!3755553))

(declare-fun condSetEmpty!41787 () Bool)

(assert (=> start!615728 (= condSetEmpty!41787 (= z!1189 (as set.empty (Set Context!10980))))))

(declare-fun setRes!41787 () Bool)

(assert (=> start!615728 setRes!41787))

(declare-fun e!3755570 () Bool)

(assert (=> start!615728 e!3755570))

(declare-fun e!3755554 () Bool)

(assert (=> start!615728 e!3755554))

(declare-fun b!6164363 () Bool)

(declare-fun e!3755560 () Bool)

(declare-fun lt!2336382 () (Set Context!10980))

(assert (=> b!6164363 (= e!3755560 (matchZipper!2118 lt!2336382 s!2326))))

(declare-fun b!6164364 () Bool)

(declare-fun tp_is_empty!41465 () Bool)

(declare-fun tp!1721064 () Bool)

(assert (=> b!6164364 (= e!3755554 (and tp_is_empty!41465 tp!1721064))))

(declare-fun e!3755561 () Bool)

(assert (=> b!6164365 (= e!3755574 e!3755561)))

(declare-fun res!2552439 () Bool)

(assert (=> b!6164365 (=> res!2552439 e!3755561)))

(declare-fun lt!2336361 () Bool)

(declare-fun lt!2336381 () Bool)

(assert (=> b!6164365 (= res!2552439 (or (not (= lt!2336381 lt!2336361)) (is-Nil!64493 s!2326)))))

(declare-fun Exists!3176 (Int) Bool)

(assert (=> b!6164365 (= (Exists!3176 lambda!336460) (Exists!3176 lambda!336461))))

(declare-fun lt!2336375 () Unit!157627)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1713 (Regex!16106 Regex!16106 List!64617) Unit!157627)

(assert (=> b!6164365 (= lt!2336375 (lemmaExistCutMatchRandMatchRSpecEquivalent!1713 (regOne!32724 r!7292) (regTwo!32724 r!7292) s!2326))))

(assert (=> b!6164365 (= lt!2336361 (Exists!3176 lambda!336460))))

(declare-datatypes ((tuple2!66170 0))(
  ( (tuple2!66171 (_1!36388 List!64617) (_2!36388 List!64617)) )
))
(declare-datatypes ((Option!15997 0))(
  ( (None!15996) (Some!15996 (v!52135 tuple2!66170)) )
))
(declare-fun isDefined!12700 (Option!15997) Bool)

(declare-fun findConcatSeparation!2411 (Regex!16106 Regex!16106 List!64617 List!64617 List!64617) Option!15997)

(assert (=> b!6164365 (= lt!2336361 (isDefined!12700 (findConcatSeparation!2411 (regOne!32724 r!7292) (regTwo!32724 r!7292) Nil!64493 s!2326 s!2326)))))

(declare-fun lt!2336357 () Unit!157627)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2175 (Regex!16106 Regex!16106 List!64617) Unit!157627)

(assert (=> b!6164365 (= lt!2336357 (lemmaFindConcatSeparationEquivalentToExists!2175 (regOne!32724 r!7292) (regTwo!32724 r!7292) s!2326))))

(declare-fun b!6164366 () Bool)

(declare-fun e!3755562 () Bool)

(declare-fun tp!1721065 () Bool)

(assert (=> b!6164366 (= e!3755562 tp!1721065)))

(declare-fun b!6164367 () Bool)

(declare-fun res!2552441 () Bool)

(declare-fun e!3755571 () Bool)

(assert (=> b!6164367 (=> res!2552441 e!3755571)))

(declare-fun lt!2336379 () Regex!16106)

(assert (=> b!6164367 (= res!2552441 (or (not (= lt!2336379 r!7292)) (not (= (exprs!5990 (h!70943 zl!343)) (Cons!64494 (regOne!32724 r!7292) (t!378118 (exprs!5990 (h!70943 zl!343))))))))))

(declare-fun b!6164368 () Bool)

(declare-fun Unit!157632 () Unit!157627)

(assert (=> b!6164368 (= e!3755563 Unit!157632)))

(declare-fun lt!2336366 () Unit!157627)

(assert (=> b!6164368 (= lt!2336366 (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336359 lt!2336374 (t!378117 s!2326)))))

(declare-fun res!2552438 () Bool)

(assert (=> b!6164368 (= res!2552438 (matchZipper!2118 lt!2336359 (t!378117 s!2326)))))

(assert (=> b!6164368 (=> res!2552438 e!3755555)))

(assert (=> b!6164368 (= (matchZipper!2118 (set.union lt!2336359 lt!2336374) (t!378117 s!2326)) e!3755555)))

(declare-fun b!6164369 () Bool)

(declare-fun e!3755567 () Bool)

(assert (=> b!6164369 (= e!3755567 (matchZipper!2118 lt!2336374 (t!378117 s!2326)))))

(declare-fun b!6164370 () Bool)

(declare-fun res!2552431 () Bool)

(declare-fun e!3755564 () Bool)

(assert (=> b!6164370 (=> res!2552431 e!3755564)))

(declare-fun lt!2336376 () Context!10980)

(declare-fun lt!2336368 () Int)

(declare-fun zipperDepthTotal!289 (List!64619) Int)

(assert (=> b!6164370 (= res!2552431 (>= (zipperDepthTotal!289 (Cons!64495 lt!2336376 Nil!64495)) lt!2336368))))

(declare-fun b!6164371 () Bool)

(declare-fun e!3755565 () Bool)

(declare-fun tp!1721070 () Bool)

(assert (=> b!6164371 (= e!3755565 tp!1721070)))

(declare-fun b!6164372 () Bool)

(declare-fun res!2552442 () Bool)

(assert (=> b!6164372 (=> res!2552442 e!3755574)))

(assert (=> b!6164372 (= res!2552442 (or (is-EmptyExpr!16106 r!7292) (is-EmptyLang!16106 r!7292) (is-ElementMatch!16106 r!7292) (is-Union!16106 r!7292) (not (is-Concat!24951 r!7292))))))

(declare-fun b!6164373 () Bool)

(declare-fun Unit!157633 () Unit!157627)

(assert (=> b!6164373 (= e!3755572 Unit!157633)))

(declare-fun lt!2336372 () Unit!157627)

(assert (=> b!6164373 (= lt!2336372 (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336383 lt!2336374 (t!378117 s!2326)))))

(declare-fun res!2552450 () Bool)

(assert (=> b!6164373 (= res!2552450 lt!2336358)))

(declare-fun e!3755556 () Bool)

(assert (=> b!6164373 (=> res!2552450 e!3755556)))

(assert (=> b!6164373 (= (matchZipper!2118 (set.union lt!2336383 lt!2336374) (t!378117 s!2326)) e!3755556)))

(declare-fun b!6164374 () Bool)

(assert (=> b!6164374 (= e!3755553 tp_is_empty!41465)))

(declare-fun b!6164375 () Bool)

(declare-fun e!3755568 () Bool)

(assert (=> b!6164375 (= e!3755557 e!3755568)))

(declare-fun res!2552432 () Bool)

(assert (=> b!6164375 (=> (not res!2552432) (not e!3755568))))

(assert (=> b!6164375 (= res!2552432 (= r!7292 lt!2336379))))

(declare-fun unfocusZipper!1848 (List!64619) Regex!16106)

(assert (=> b!6164375 (= lt!2336379 (unfocusZipper!1848 zl!343))))

(declare-fun b!6164376 () Bool)

(assert (=> b!6164376 (= e!3755566 (matchZipper!2118 lt!2336370 (t!378117 s!2326)))))

(declare-fun b!6164377 () Bool)

(assert (=> b!6164377 (= e!3755568 (not e!3755574))))

(declare-fun res!2552435 () Bool)

(assert (=> b!6164377 (=> res!2552435 e!3755574)))

(assert (=> b!6164377 (= res!2552435 (not (is-Cons!64495 zl!343)))))

(declare-fun matchRSpec!3207 (Regex!16106 List!64617) Bool)

(assert (=> b!6164377 (= lt!2336381 (matchRSpec!3207 r!7292 s!2326))))

(declare-fun matchR!8289 (Regex!16106 List!64617) Bool)

(assert (=> b!6164377 (= lt!2336381 (matchR!8289 r!7292 s!2326))))

(declare-fun lt!2336380 () Unit!157627)

(declare-fun mainMatchTheorem!3207 (Regex!16106 List!64617) Unit!157627)

(assert (=> b!6164377 (= lt!2336380 (mainMatchTheorem!3207 r!7292 s!2326))))

(declare-fun b!6164378 () Bool)

(declare-fun res!2552443 () Bool)

(assert (=> b!6164378 (=> res!2552443 e!3755574)))

(assert (=> b!6164378 (= res!2552443 (not (is-Cons!64494 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun b!6164379 () Bool)

(declare-fun Unit!157634 () Unit!157627)

(assert (=> b!6164379 (= e!3755559 Unit!157634)))

(declare-fun lt!2336352 () Unit!157627)

(assert (=> b!6164379 (= lt!2336352 (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336370 lt!2336374 (t!378117 s!2326)))))

(declare-fun res!2552449 () Bool)

(assert (=> b!6164379 (= res!2552449 (matchZipper!2118 lt!2336370 (t!378117 s!2326)))))

(assert (=> b!6164379 (=> res!2552449 e!3755567)))

(assert (=> b!6164379 (= (matchZipper!2118 (set.union lt!2336370 lt!2336374) (t!378117 s!2326)) e!3755567)))

(declare-fun setNonEmpty!41787 () Bool)

(declare-fun setElem!41787 () Context!10980)

(declare-fun tp!1721066 () Bool)

(declare-fun inv!83513 (Context!10980) Bool)

(assert (=> setNonEmpty!41787 (= setRes!41787 (and tp!1721066 (inv!83513 setElem!41787) e!3755565))))

(declare-fun setRest!41787 () (Set Context!10980))

(assert (=> setNonEmpty!41787 (= z!1189 (set.union (set.insert setElem!41787 (as set.empty (Set Context!10980))) setRest!41787))))

(declare-fun b!6164380 () Bool)

(assert (=> b!6164380 (= e!3755552 (not (matchZipper!2118 lt!2336370 (t!378117 s!2326))))))

(declare-fun b!6164381 () Bool)

(assert (=> b!6164381 (= e!3755573 e!3755571)))

(declare-fun res!2552448 () Bool)

(assert (=> b!6164381 (=> res!2552448 e!3755571)))

(assert (=> b!6164381 (= res!2552448 (not (= (matchZipper!2118 z!1189 s!2326) e!3755560)))))

(declare-fun res!2552428 () Bool)

(assert (=> b!6164381 (=> res!2552428 e!3755560)))

(declare-fun lt!2336353 () (Set Context!10980))

(assert (=> b!6164381 (= res!2552428 (matchZipper!2118 lt!2336353 s!2326))))

(declare-fun lt!2336371 () Unit!157627)

(assert (=> b!6164381 (= lt!2336371 e!3755559)))

(declare-fun c!1110426 () Bool)

(declare-fun nullable!6099 (Regex!16106) Bool)

(assert (=> b!6164381 (= c!1110426 (nullable!6099 (regTwo!32725 (regOne!32724 r!7292))))))

(declare-fun lambda!336462 () Int)

(declare-fun flatMap!1611 ((Set Context!10980) Int) (Set Context!10980))

(declare-fun derivationStepZipperUp!1280 (Context!10980 C!32482) (Set Context!10980))

(assert (=> b!6164381 (= (flatMap!1611 lt!2336382 lambda!336462) (derivationStepZipperUp!1280 lt!2336376 (h!70941 s!2326)))))

(declare-fun lt!2336355 () Unit!157627)

(declare-fun lemmaFlatMapOnSingletonSet!1137 ((Set Context!10980) Context!10980 Int) Unit!157627)

(assert (=> b!6164381 (= lt!2336355 (lemmaFlatMapOnSingletonSet!1137 lt!2336382 lt!2336376 lambda!336462))))

(declare-fun lt!2336356 () (Set Context!10980))

(assert (=> b!6164381 (= lt!2336356 (derivationStepZipperUp!1280 lt!2336376 (h!70941 s!2326)))))

(declare-fun lt!2336363 () Unit!157627)

(assert (=> b!6164381 (= lt!2336363 e!3755572)))

(declare-fun c!1110427 () Bool)

(assert (=> b!6164381 (= c!1110427 (nullable!6099 (regOne!32725 (regOne!32724 r!7292))))))

(declare-fun lt!2336362 () Context!10980)

(assert (=> b!6164381 (= (flatMap!1611 lt!2336353 lambda!336462) (derivationStepZipperUp!1280 lt!2336362 (h!70941 s!2326)))))

(declare-fun lt!2336365 () Unit!157627)

(assert (=> b!6164381 (= lt!2336365 (lemmaFlatMapOnSingletonSet!1137 lt!2336353 lt!2336362 lambda!336462))))

(declare-fun lt!2336377 () (Set Context!10980))

(assert (=> b!6164381 (= lt!2336377 (derivationStepZipperUp!1280 lt!2336362 (h!70941 s!2326)))))

(assert (=> b!6164381 (= lt!2336382 (set.insert lt!2336376 (as set.empty (Set Context!10980))))))

(assert (=> b!6164381 (= lt!2336376 (Context!10981 (Cons!64494 (regTwo!32725 (regOne!32724 r!7292)) (t!378118 (exprs!5990 (h!70943 zl!343))))))))

(assert (=> b!6164381 (= lt!2336353 (set.insert lt!2336362 (as set.empty (Set Context!10980))))))

(declare-fun lt!2336378 () List!64618)

(assert (=> b!6164381 (= lt!2336362 (Context!10981 lt!2336378))))

(assert (=> b!6164381 (= lt!2336378 (Cons!64494 (regOne!32725 (regOne!32724 r!7292)) (t!378118 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun setIsEmpty!41787 () Bool)

(assert (=> setIsEmpty!41787 setRes!41787))

(declare-fun b!6164382 () Bool)

(assert (=> b!6164382 (= e!3755556 (matchZipper!2118 lt!2336374 (t!378117 s!2326)))))

(declare-fun b!6164383 () Bool)

(assert (=> b!6164383 (= e!3755564 (validRegex!7842 (generalisedConcat!1703 lt!2336378)))))

(declare-fun b!6164384 () Bool)

(declare-fun res!2552429 () Bool)

(assert (=> b!6164384 (=> res!2552429 e!3755561)))

(declare-fun isEmpty!36466 (List!64618) Bool)

(assert (=> b!6164384 (= res!2552429 (isEmpty!36466 (t!378118 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun b!6164385 () Bool)

(declare-fun tp!1721067 () Bool)

(assert (=> b!6164385 (= e!3755553 tp!1721067)))

(declare-fun b!6164386 () Bool)

(declare-fun tp!1721071 () Bool)

(declare-fun tp!1721069 () Bool)

(assert (=> b!6164386 (= e!3755553 (and tp!1721071 tp!1721069))))

(declare-fun b!6164387 () Bool)

(declare-fun res!2552437 () Bool)

(assert (=> b!6164387 (=> res!2552437 e!3755574)))

(declare-fun generalisedUnion!1950 (List!64618) Regex!16106)

(declare-fun unfocusZipperList!1527 (List!64619) List!64618)

(assert (=> b!6164387 (= res!2552437 (not (= r!7292 (generalisedUnion!1950 (unfocusZipperList!1527 zl!343)))))))

(declare-fun b!6164388 () Bool)

(assert (=> b!6164388 (= e!3755571 e!3755564)))

(declare-fun res!2552436 () Bool)

(assert (=> b!6164388 (=> res!2552436 e!3755564)))

(declare-fun lt!2336354 () Int)

(assert (=> b!6164388 (= res!2552436 (>= lt!2336354 lt!2336368))))

(assert (=> b!6164388 (= lt!2336368 (zipperDepthTotal!289 zl!343))))

(assert (=> b!6164388 (= lt!2336354 (zipperDepthTotal!289 (Cons!64495 lt!2336362 Nil!64495)))))

(declare-fun e!3755558 () Bool)

(assert (=> b!6164389 (= e!3755561 e!3755558)))

(declare-fun res!2552447 () Bool)

(assert (=> b!6164389 (=> res!2552447 e!3755558)))

(assert (=> b!6164389 (= res!2552447 (or (and (is-ElementMatch!16106 (regOne!32724 r!7292)) (= (c!1110429 (regOne!32724 r!7292)) (h!70941 s!2326))) (not (is-Union!16106 (regOne!32724 r!7292)))))))

(declare-fun lt!2336360 () Unit!157627)

(assert (=> b!6164389 (= lt!2336360 e!3755563)))

(declare-fun c!1110428 () Bool)

(assert (=> b!6164389 (= c!1110428 (nullable!6099 (h!70942 (exprs!5990 (h!70943 zl!343)))))))

(assert (=> b!6164389 (= (flatMap!1611 z!1189 lambda!336462) (derivationStepZipperUp!1280 (h!70943 zl!343) (h!70941 s!2326)))))

(declare-fun lt!2336351 () Unit!157627)

(assert (=> b!6164389 (= lt!2336351 (lemmaFlatMapOnSingletonSet!1137 z!1189 (h!70943 zl!343) lambda!336462))))

(declare-fun lt!2336364 () Context!10980)

(assert (=> b!6164389 (= lt!2336374 (derivationStepZipperUp!1280 lt!2336364 (h!70941 s!2326)))))

(declare-fun derivationStepZipperDown!1354 (Regex!16106 Context!10980 C!32482) (Set Context!10980))

(assert (=> b!6164389 (= lt!2336359 (derivationStepZipperDown!1354 (h!70942 (exprs!5990 (h!70943 zl!343))) lt!2336364 (h!70941 s!2326)))))

(assert (=> b!6164389 (= lt!2336364 (Context!10981 (t!378118 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun lt!2336367 () (Set Context!10980))

(assert (=> b!6164389 (= lt!2336367 (derivationStepZipperUp!1280 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343))))) (h!70941 s!2326)))))

(declare-fun b!6164390 () Bool)

(assert (=> b!6164390 (= e!3755558 e!3755569)))

(declare-fun res!2552430 () Bool)

(assert (=> b!6164390 (=> res!2552430 e!3755569)))

(assert (=> b!6164390 (= res!2552430 (not (= lt!2336359 lt!2336369)))))

(assert (=> b!6164390 (= lt!2336369 (set.union lt!2336383 lt!2336370))))

(assert (=> b!6164390 (= lt!2336370 (derivationStepZipperDown!1354 (regTwo!32725 (regOne!32724 r!7292)) lt!2336364 (h!70941 s!2326)))))

(assert (=> b!6164390 (= lt!2336383 (derivationStepZipperDown!1354 (regOne!32725 (regOne!32724 r!7292)) lt!2336364 (h!70941 s!2326)))))

(declare-fun b!6164391 () Bool)

(declare-fun res!2552446 () Bool)

(assert (=> b!6164391 (=> res!2552446 e!3755574)))

(declare-fun isEmpty!36467 (List!64619) Bool)

(assert (=> b!6164391 (= res!2552446 (not (isEmpty!36467 (t!378119 zl!343))))))

(declare-fun tp!1721068 () Bool)

(declare-fun b!6164392 () Bool)

(assert (=> b!6164392 (= e!3755570 (and (inv!83513 (h!70943 zl!343)) e!3755562 tp!1721068))))

(assert (= (and start!615728 res!2552440) b!6164361))

(assert (= (and b!6164361 res!2552444) b!6164375))

(assert (= (and b!6164375 res!2552432) b!6164377))

(assert (= (and b!6164377 (not res!2552435)) b!6164391))

(assert (= (and b!6164391 (not res!2552446)) b!6164362))

(assert (= (and b!6164362 (not res!2552434)) b!6164378))

(assert (= (and b!6164378 (not res!2552443)) b!6164387))

(assert (= (and b!6164387 (not res!2552437)) b!6164372))

(assert (= (and b!6164372 (not res!2552442)) b!6164365))

(assert (= (and b!6164365 (not res!2552439)) b!6164384))

(assert (= (and b!6164384 (not res!2552429)) b!6164389))

(assert (= (and b!6164389 c!1110428) b!6164368))

(assert (= (and b!6164389 (not c!1110428)) b!6164358))

(assert (= (and b!6164368 (not res!2552438)) b!6164360))

(assert (= (and b!6164389 (not res!2552447)) b!6164390))

(assert (= (and b!6164390 (not res!2552430)) b!6164356))

(assert (= (and b!6164356 (not res!2552451)) b!6164376))

(assert (= (and b!6164356 res!2552445) b!6164380))

(assert (= (and b!6164356 (not res!2552433)) b!6164381))

(assert (= (and b!6164381 c!1110427) b!6164373))

(assert (= (and b!6164381 (not c!1110427)) b!6164357))

(assert (= (and b!6164373 (not res!2552450)) b!6164382))

(assert (= (and b!6164381 c!1110426) b!6164379))

(assert (= (and b!6164381 (not c!1110426)) b!6164359))

(assert (= (and b!6164379 (not res!2552449)) b!6164369))

(assert (= (and b!6164381 (not res!2552428)) b!6164363))

(assert (= (and b!6164381 (not res!2552448)) b!6164367))

(assert (= (and b!6164367 (not res!2552441)) b!6164388))

(assert (= (and b!6164388 (not res!2552436)) b!6164370))

(assert (= (and b!6164370 (not res!2552431)) b!6164383))

(assert (= (and start!615728 (is-ElementMatch!16106 r!7292)) b!6164374))

(assert (= (and start!615728 (is-Concat!24951 r!7292)) b!6164355))

(assert (= (and start!615728 (is-Star!16106 r!7292)) b!6164385))

(assert (= (and start!615728 (is-Union!16106 r!7292)) b!6164386))

(assert (= (and start!615728 condSetEmpty!41787) setIsEmpty!41787))

(assert (= (and start!615728 (not condSetEmpty!41787)) setNonEmpty!41787))

(assert (= setNonEmpty!41787 b!6164371))

(assert (= b!6164392 b!6164366))

(assert (= (and start!615728 (is-Cons!64495 zl!343)) b!6164392))

(assert (= (and start!615728 (is-Cons!64493 s!2326)) b!6164364))

(declare-fun m!7001990 () Bool)

(assert (=> start!615728 m!7001990))

(declare-fun m!7001992 () Bool)

(assert (=> b!6164390 m!7001992))

(declare-fun m!7001994 () Bool)

(assert (=> b!6164390 m!7001994))

(declare-fun m!7001996 () Bool)

(assert (=> b!6164376 m!7001996))

(declare-fun m!7001998 () Bool)

(assert (=> b!6164365 m!7001998))

(declare-fun m!7002000 () Bool)

(assert (=> b!6164365 m!7002000))

(declare-fun m!7002002 () Bool)

(assert (=> b!6164365 m!7002002))

(declare-fun m!7002004 () Bool)

(assert (=> b!6164365 m!7002004))

(declare-fun m!7002006 () Bool)

(assert (=> b!6164365 m!7002006))

(assert (=> b!6164365 m!7001998))

(assert (=> b!6164365 m!7002002))

(declare-fun m!7002008 () Bool)

(assert (=> b!6164365 m!7002008))

(declare-fun m!7002010 () Bool)

(assert (=> b!6164387 m!7002010))

(assert (=> b!6164387 m!7002010))

(declare-fun m!7002012 () Bool)

(assert (=> b!6164387 m!7002012))

(declare-fun m!7002014 () Bool)

(assert (=> b!6164369 m!7002014))

(declare-fun m!7002016 () Bool)

(assert (=> b!6164381 m!7002016))

(declare-fun m!7002018 () Bool)

(assert (=> b!6164381 m!7002018))

(declare-fun m!7002020 () Bool)

(assert (=> b!6164381 m!7002020))

(declare-fun m!7002022 () Bool)

(assert (=> b!6164381 m!7002022))

(declare-fun m!7002024 () Bool)

(assert (=> b!6164381 m!7002024))

(declare-fun m!7002026 () Bool)

(assert (=> b!6164381 m!7002026))

(declare-fun m!7002028 () Bool)

(assert (=> b!6164381 m!7002028))

(declare-fun m!7002030 () Bool)

(assert (=> b!6164381 m!7002030))

(declare-fun m!7002032 () Bool)

(assert (=> b!6164381 m!7002032))

(declare-fun m!7002034 () Bool)

(assert (=> b!6164381 m!7002034))

(declare-fun m!7002036 () Bool)

(assert (=> b!6164381 m!7002036))

(declare-fun m!7002038 () Bool)

(assert (=> b!6164381 m!7002038))

(declare-fun m!7002040 () Bool)

(assert (=> b!6164370 m!7002040))

(declare-fun m!7002042 () Bool)

(assert (=> b!6164389 m!7002042))

(declare-fun m!7002044 () Bool)

(assert (=> b!6164389 m!7002044))

(declare-fun m!7002046 () Bool)

(assert (=> b!6164389 m!7002046))

(declare-fun m!7002048 () Bool)

(assert (=> b!6164389 m!7002048))

(declare-fun m!7002050 () Bool)

(assert (=> b!6164389 m!7002050))

(declare-fun m!7002052 () Bool)

(assert (=> b!6164389 m!7002052))

(declare-fun m!7002054 () Bool)

(assert (=> b!6164389 m!7002054))

(declare-fun m!7002056 () Bool)

(assert (=> b!6164368 m!7002056))

(declare-fun m!7002058 () Bool)

(assert (=> b!6164368 m!7002058))

(declare-fun m!7002060 () Bool)

(assert (=> b!6164368 m!7002060))

(assert (=> b!6164380 m!7001996))

(declare-fun m!7002062 () Bool)

(assert (=> b!6164379 m!7002062))

(assert (=> b!6164379 m!7001996))

(declare-fun m!7002064 () Bool)

(assert (=> b!6164379 m!7002064))

(declare-fun m!7002066 () Bool)

(assert (=> b!6164384 m!7002066))

(declare-fun m!7002068 () Bool)

(assert (=> b!6164375 m!7002068))

(declare-fun m!7002070 () Bool)

(assert (=> b!6164361 m!7002070))

(declare-fun m!7002072 () Bool)

(assert (=> b!6164383 m!7002072))

(assert (=> b!6164383 m!7002072))

(declare-fun m!7002074 () Bool)

(assert (=> b!6164383 m!7002074))

(declare-fun m!7002076 () Bool)

(assert (=> b!6164391 m!7002076))

(declare-fun m!7002078 () Bool)

(assert (=> b!6164373 m!7002078))

(declare-fun m!7002080 () Bool)

(assert (=> b!6164373 m!7002080))

(declare-fun m!7002082 () Bool)

(assert (=> b!6164362 m!7002082))

(assert (=> b!6164382 m!7002014))

(declare-fun m!7002084 () Bool)

(assert (=> b!6164392 m!7002084))

(assert (=> b!6164356 m!7002058))

(declare-fun m!7002086 () Bool)

(assert (=> b!6164356 m!7002086))

(declare-fun m!7002088 () Bool)

(assert (=> b!6164356 m!7002088))

(declare-fun m!7002090 () Bool)

(assert (=> b!6164356 m!7002090))

(declare-fun m!7002092 () Bool)

(assert (=> b!6164363 m!7002092))

(declare-fun m!7002094 () Bool)

(assert (=> b!6164377 m!7002094))

(declare-fun m!7002096 () Bool)

(assert (=> b!6164377 m!7002096))

(declare-fun m!7002098 () Bool)

(assert (=> b!6164377 m!7002098))

(declare-fun m!7002100 () Bool)

(assert (=> b!6164388 m!7002100))

(declare-fun m!7002102 () Bool)

(assert (=> b!6164388 m!7002102))

(assert (=> b!6164360 m!7002014))

(declare-fun m!7002104 () Bool)

(assert (=> setNonEmpty!41787 m!7002104))

(push 1)

(assert (not b!6164370))

(assert (not b!6164386))

(assert (not setNonEmpty!41787))

(assert (not b!6164360))

(assert (not b!6164391))

(assert (not b!6164377))

(assert (not b!6164364))

(assert (not b!6164379))

(assert (not b!6164362))

(assert tp_is_empty!41465)

(assert (not b!6164363))

(assert (not b!6164365))

(assert (not b!6164390))

(assert (not b!6164389))

(assert (not b!6164385))

(assert (not b!6164355))

(assert (not b!6164380))

(assert (not b!6164384))

(assert (not b!6164383))

(assert (not b!6164388))

(assert (not b!6164375))

(assert (not b!6164382))

(assert (not b!6164387))

(assert (not b!6164366))

(assert (not b!6164392))

(assert (not b!6164361))

(assert (not b!6164373))

(assert (not b!6164376))

(assert (not b!6164381))

(assert (not b!6164356))

(assert (not b!6164368))

(assert (not b!6164369))

(assert (not start!615728))

(assert (not b!6164371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1931861 () Bool)

(assert (=> d!1931861 (= (isEmpty!36466 (t!378118 (exprs!5990 (h!70943 zl!343)))) (is-Nil!64494 (t!378118 (exprs!5990 (h!70943 zl!343)))))))

(assert (=> b!6164384 d!1931861))

(declare-fun b!6164549 () Bool)

(declare-fun e!3755669 () Bool)

(declare-fun e!3755666 () Bool)

(assert (=> b!6164549 (= e!3755669 e!3755666)))

(declare-fun res!2552546 () Bool)

(assert (=> b!6164549 (=> (not res!2552546) (not e!3755666))))

(declare-fun call!513637 () Bool)

(assert (=> b!6164549 (= res!2552546 call!513637)))

(declare-fun b!6164550 () Bool)

(declare-fun res!2552550 () Bool)

(assert (=> b!6164550 (=> res!2552550 e!3755669)))

(assert (=> b!6164550 (= res!2552550 (not (is-Concat!24951 (generalisedConcat!1703 lt!2336378))))))

(declare-fun e!3755667 () Bool)

(assert (=> b!6164550 (= e!3755667 e!3755669)))

(declare-fun b!6164551 () Bool)

(declare-fun res!2552547 () Bool)

(declare-fun e!3755668 () Bool)

(assert (=> b!6164551 (=> (not res!2552547) (not e!3755668))))

(assert (=> b!6164551 (= res!2552547 call!513637)))

(assert (=> b!6164551 (= e!3755667 e!3755668)))

(declare-fun b!6164552 () Bool)

(declare-fun call!513635 () Bool)

(assert (=> b!6164552 (= e!3755666 call!513635)))

(declare-fun b!6164553 () Bool)

(declare-fun e!3755665 () Bool)

(declare-fun e!3755670 () Bool)

(assert (=> b!6164553 (= e!3755665 e!3755670)))

(declare-fun res!2552549 () Bool)

(assert (=> b!6164553 (= res!2552549 (not (nullable!6099 (reg!16435 (generalisedConcat!1703 lt!2336378)))))))

(assert (=> b!6164553 (=> (not res!2552549) (not e!3755670))))

(declare-fun b!6164554 () Bool)

(assert (=> b!6164554 (= e!3755668 call!513635)))

(declare-fun b!6164555 () Bool)

(assert (=> b!6164555 (= e!3755665 e!3755667)))

(declare-fun c!1110452 () Bool)

(assert (=> b!6164555 (= c!1110452 (is-Union!16106 (generalisedConcat!1703 lt!2336378)))))

(declare-fun bm!513630 () Bool)

(declare-fun call!513636 () Bool)

(declare-fun c!1110451 () Bool)

(assert (=> bm!513630 (= call!513636 (validRegex!7842 (ite c!1110451 (reg!16435 (generalisedConcat!1703 lt!2336378)) (ite c!1110452 (regOne!32725 (generalisedConcat!1703 lt!2336378)) (regOne!32724 (generalisedConcat!1703 lt!2336378))))))))

(declare-fun b!6164556 () Bool)

(declare-fun e!3755664 () Bool)

(assert (=> b!6164556 (= e!3755664 e!3755665)))

(assert (=> b!6164556 (= c!1110451 (is-Star!16106 (generalisedConcat!1703 lt!2336378)))))

(declare-fun bm!513632 () Bool)

(assert (=> bm!513632 (= call!513637 call!513636)))

(declare-fun b!6164557 () Bool)

(assert (=> b!6164557 (= e!3755670 call!513636)))

(declare-fun d!1931863 () Bool)

(declare-fun res!2552548 () Bool)

(assert (=> d!1931863 (=> res!2552548 e!3755664)))

(assert (=> d!1931863 (= res!2552548 (is-ElementMatch!16106 (generalisedConcat!1703 lt!2336378)))))

(assert (=> d!1931863 (= (validRegex!7842 (generalisedConcat!1703 lt!2336378)) e!3755664)))

(declare-fun bm!513631 () Bool)

(assert (=> bm!513631 (= call!513635 (validRegex!7842 (ite c!1110452 (regTwo!32725 (generalisedConcat!1703 lt!2336378)) (regTwo!32724 (generalisedConcat!1703 lt!2336378)))))))

(assert (= (and d!1931863 (not res!2552548)) b!6164556))

(assert (= (and b!6164556 c!1110451) b!6164553))

(assert (= (and b!6164556 (not c!1110451)) b!6164555))

(assert (= (and b!6164553 res!2552549) b!6164557))

(assert (= (and b!6164555 c!1110452) b!6164551))

(assert (= (and b!6164555 (not c!1110452)) b!6164550))

(assert (= (and b!6164551 res!2552547) b!6164554))

(assert (= (and b!6164550 (not res!2552550)) b!6164549))

(assert (= (and b!6164549 res!2552546) b!6164552))

(assert (= (or b!6164554 b!6164552) bm!513631))

(assert (= (or b!6164551 b!6164549) bm!513632))

(assert (= (or b!6164557 bm!513632) bm!513630))

(declare-fun m!7002222 () Bool)

(assert (=> b!6164553 m!7002222))

(declare-fun m!7002224 () Bool)

(assert (=> bm!513630 m!7002224))

(declare-fun m!7002226 () Bool)

(assert (=> bm!513631 m!7002226))

(assert (=> b!6164383 d!1931863))

(declare-fun b!6164578 () Bool)

(declare-fun e!3755683 () Bool)

(declare-fun e!3755688 () Bool)

(assert (=> b!6164578 (= e!3755683 e!3755688)))

(declare-fun c!1110464 () Bool)

(assert (=> b!6164578 (= c!1110464 (isEmpty!36466 lt!2336378))))

(declare-fun b!6164579 () Bool)

(declare-fun e!3755686 () Bool)

(assert (=> b!6164579 (= e!3755688 e!3755686)))

(declare-fun c!1110461 () Bool)

(declare-fun tail!11818 (List!64618) List!64618)

(assert (=> b!6164579 (= c!1110461 (isEmpty!36466 (tail!11818 lt!2336378)))))

(declare-fun b!6164580 () Bool)

(declare-fun lt!2336485 () Regex!16106)

(declare-fun head!12733 (List!64618) Regex!16106)

(assert (=> b!6164580 (= e!3755686 (= lt!2336485 (head!12733 lt!2336378)))))

(declare-fun b!6164581 () Bool)

(declare-fun isEmptyExpr!1523 (Regex!16106) Bool)

(assert (=> b!6164581 (= e!3755688 (isEmptyExpr!1523 lt!2336485))))

(declare-fun b!6164582 () Bool)

(declare-fun isConcat!1046 (Regex!16106) Bool)

(assert (=> b!6164582 (= e!3755686 (isConcat!1046 lt!2336485))))

(declare-fun b!6164583 () Bool)

(declare-fun e!3755687 () Regex!16106)

(assert (=> b!6164583 (= e!3755687 (Concat!24951 (h!70942 lt!2336378) (generalisedConcat!1703 (t!378118 lt!2336378))))))

(declare-fun b!6164584 () Bool)

(declare-fun e!3755685 () Bool)

(assert (=> b!6164584 (= e!3755685 (isEmpty!36466 (t!378118 lt!2336378)))))

(declare-fun b!6164585 () Bool)

(declare-fun e!3755684 () Regex!16106)

(assert (=> b!6164585 (= e!3755684 e!3755687)))

(declare-fun c!1110462 () Bool)

(assert (=> b!6164585 (= c!1110462 (is-Cons!64494 lt!2336378))))

(declare-fun d!1931865 () Bool)

(assert (=> d!1931865 e!3755683))

(declare-fun res!2552556 () Bool)

(assert (=> d!1931865 (=> (not res!2552556) (not e!3755683))))

(assert (=> d!1931865 (= res!2552556 (validRegex!7842 lt!2336485))))

(assert (=> d!1931865 (= lt!2336485 e!3755684)))

(declare-fun c!1110463 () Bool)

(assert (=> d!1931865 (= c!1110463 e!3755685)))

(declare-fun res!2552555 () Bool)

(assert (=> d!1931865 (=> (not res!2552555) (not e!3755685))))

(assert (=> d!1931865 (= res!2552555 (is-Cons!64494 lt!2336378))))

(declare-fun lambda!336480 () Int)

(declare-fun forall!15227 (List!64618 Int) Bool)

(assert (=> d!1931865 (forall!15227 lt!2336378 lambda!336480)))

(assert (=> d!1931865 (= (generalisedConcat!1703 lt!2336378) lt!2336485)))

(declare-fun b!6164586 () Bool)

(assert (=> b!6164586 (= e!3755687 EmptyExpr!16106)))

(declare-fun b!6164587 () Bool)

(assert (=> b!6164587 (= e!3755684 (h!70942 lt!2336378))))

(assert (= (and d!1931865 res!2552555) b!6164584))

(assert (= (and d!1931865 c!1110463) b!6164587))

(assert (= (and d!1931865 (not c!1110463)) b!6164585))

(assert (= (and b!6164585 c!1110462) b!6164583))

(assert (= (and b!6164585 (not c!1110462)) b!6164586))

(assert (= (and d!1931865 res!2552556) b!6164578))

(assert (= (and b!6164578 c!1110464) b!6164581))

(assert (= (and b!6164578 (not c!1110464)) b!6164579))

(assert (= (and b!6164579 c!1110461) b!6164580))

(assert (= (and b!6164579 (not c!1110461)) b!6164582))

(declare-fun m!7002228 () Bool)

(assert (=> d!1931865 m!7002228))

(declare-fun m!7002230 () Bool)

(assert (=> d!1931865 m!7002230))

(declare-fun m!7002232 () Bool)

(assert (=> b!6164579 m!7002232))

(assert (=> b!6164579 m!7002232))

(declare-fun m!7002234 () Bool)

(assert (=> b!6164579 m!7002234))

(declare-fun m!7002236 () Bool)

(assert (=> b!6164578 m!7002236))

(declare-fun m!7002238 () Bool)

(assert (=> b!6164584 m!7002238))

(declare-fun m!7002240 () Bool)

(assert (=> b!6164583 m!7002240))

(declare-fun m!7002242 () Bool)

(assert (=> b!6164582 m!7002242))

(declare-fun m!7002244 () Bool)

(assert (=> b!6164580 m!7002244))

(declare-fun m!7002246 () Bool)

(assert (=> b!6164581 m!7002246))

(assert (=> b!6164383 d!1931865))

(declare-fun d!1931867 () Bool)

(declare-fun c!1110467 () Bool)

(declare-fun isEmpty!36470 (List!64617) Bool)

(assert (=> d!1931867 (= c!1110467 (isEmpty!36470 s!2326))))

(declare-fun e!3755691 () Bool)

(assert (=> d!1931867 (= (matchZipper!2118 lt!2336382 s!2326) e!3755691)))

(declare-fun b!6164592 () Bool)

(declare-fun nullableZipper!1887 ((Set Context!10980)) Bool)

(assert (=> b!6164592 (= e!3755691 (nullableZipper!1887 lt!2336382))))

(declare-fun b!6164593 () Bool)

(declare-fun derivationStepZipper!2079 ((Set Context!10980) C!32482) (Set Context!10980))

(declare-fun head!12734 (List!64617) C!32482)

(declare-fun tail!11819 (List!64617) List!64617)

(assert (=> b!6164593 (= e!3755691 (matchZipper!2118 (derivationStepZipper!2079 lt!2336382 (head!12734 s!2326)) (tail!11819 s!2326)))))

(assert (= (and d!1931867 c!1110467) b!6164592))

(assert (= (and d!1931867 (not c!1110467)) b!6164593))

(declare-fun m!7002248 () Bool)

(assert (=> d!1931867 m!7002248))

(declare-fun m!7002250 () Bool)

(assert (=> b!6164592 m!7002250))

(declare-fun m!7002252 () Bool)

(assert (=> b!6164593 m!7002252))

(assert (=> b!6164593 m!7002252))

(declare-fun m!7002254 () Bool)

(assert (=> b!6164593 m!7002254))

(declare-fun m!7002256 () Bool)

(assert (=> b!6164593 m!7002256))

(assert (=> b!6164593 m!7002254))

(assert (=> b!6164593 m!7002256))

(declare-fun m!7002258 () Bool)

(assert (=> b!6164593 m!7002258))

(assert (=> b!6164363 d!1931867))

(declare-fun d!1931869 () Bool)

(declare-fun c!1110468 () Bool)

(assert (=> d!1931869 (= c!1110468 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755692 () Bool)

(assert (=> d!1931869 (= (matchZipper!2118 lt!2336374 (t!378117 s!2326)) e!3755692)))

(declare-fun b!6164594 () Bool)

(assert (=> b!6164594 (= e!3755692 (nullableZipper!1887 lt!2336374))))

(declare-fun b!6164595 () Bool)

(assert (=> b!6164595 (= e!3755692 (matchZipper!2118 (derivationStepZipper!2079 lt!2336374 (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931869 c!1110468) b!6164594))

(assert (= (and d!1931869 (not c!1110468)) b!6164595))

(declare-fun m!7002260 () Bool)

(assert (=> d!1931869 m!7002260))

(declare-fun m!7002262 () Bool)

(assert (=> b!6164594 m!7002262))

(declare-fun m!7002264 () Bool)

(assert (=> b!6164595 m!7002264))

(assert (=> b!6164595 m!7002264))

(declare-fun m!7002266 () Bool)

(assert (=> b!6164595 m!7002266))

(declare-fun m!7002268 () Bool)

(assert (=> b!6164595 m!7002268))

(assert (=> b!6164595 m!7002266))

(assert (=> b!6164595 m!7002268))

(declare-fun m!7002270 () Bool)

(assert (=> b!6164595 m!7002270))

(assert (=> b!6164382 d!1931869))

(declare-fun b!6164614 () Bool)

(declare-fun e!3755703 () Bool)

(assert (=> b!6164614 (= e!3755703 (matchR!8289 (regTwo!32724 r!7292) s!2326))))

(declare-fun b!6164615 () Bool)

(declare-fun lt!2336492 () Unit!157627)

(declare-fun lt!2336493 () Unit!157627)

(assert (=> b!6164615 (= lt!2336492 lt!2336493)))

(declare-fun ++!14192 (List!64617 List!64617) List!64617)

(assert (=> b!6164615 (= (++!14192 (++!14192 Nil!64493 (Cons!64493 (h!70941 s!2326) Nil!64493)) (t!378117 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2287 (List!64617 C!32482 List!64617 List!64617) Unit!157627)

(assert (=> b!6164615 (= lt!2336493 (lemmaMoveElementToOtherListKeepsConcatEq!2287 Nil!64493 (h!70941 s!2326) (t!378117 s!2326) s!2326))))

(declare-fun e!3755706 () Option!15997)

(assert (=> b!6164615 (= e!3755706 (findConcatSeparation!2411 (regOne!32724 r!7292) (regTwo!32724 r!7292) (++!14192 Nil!64493 (Cons!64493 (h!70941 s!2326) Nil!64493)) (t!378117 s!2326) s!2326))))

(declare-fun b!6164616 () Bool)

(declare-fun e!3755707 () Option!15997)

(assert (=> b!6164616 (= e!3755707 (Some!15996 (tuple2!66171 Nil!64493 s!2326)))))

(declare-fun b!6164617 () Bool)

(declare-fun res!2552567 () Bool)

(declare-fun e!3755705 () Bool)

(assert (=> b!6164617 (=> (not res!2552567) (not e!3755705))))

(declare-fun lt!2336494 () Option!15997)

(declare-fun get!22261 (Option!15997) tuple2!66170)

(assert (=> b!6164617 (= res!2552567 (matchR!8289 (regTwo!32724 r!7292) (_2!36388 (get!22261 lt!2336494))))))

(declare-fun b!6164618 () Bool)

(assert (=> b!6164618 (= e!3755705 (= (++!14192 (_1!36388 (get!22261 lt!2336494)) (_2!36388 (get!22261 lt!2336494))) s!2326))))

(declare-fun b!6164619 () Bool)

(declare-fun e!3755704 () Bool)

(assert (=> b!6164619 (= e!3755704 (not (isDefined!12700 lt!2336494)))))

(declare-fun b!6164620 () Bool)

(assert (=> b!6164620 (= e!3755707 e!3755706)))

(declare-fun c!1110474 () Bool)

(assert (=> b!6164620 (= c!1110474 (is-Nil!64493 s!2326))))

(declare-fun b!6164621 () Bool)

(declare-fun res!2552571 () Bool)

(assert (=> b!6164621 (=> (not res!2552571) (not e!3755705))))

(assert (=> b!6164621 (= res!2552571 (matchR!8289 (regOne!32724 r!7292) (_1!36388 (get!22261 lt!2336494))))))

(declare-fun d!1931871 () Bool)

(assert (=> d!1931871 e!3755704))

(declare-fun res!2552569 () Bool)

(assert (=> d!1931871 (=> res!2552569 e!3755704)))

(assert (=> d!1931871 (= res!2552569 e!3755705)))

(declare-fun res!2552568 () Bool)

(assert (=> d!1931871 (=> (not res!2552568) (not e!3755705))))

(assert (=> d!1931871 (= res!2552568 (isDefined!12700 lt!2336494))))

(assert (=> d!1931871 (= lt!2336494 e!3755707)))

(declare-fun c!1110473 () Bool)

(assert (=> d!1931871 (= c!1110473 e!3755703)))

(declare-fun res!2552570 () Bool)

(assert (=> d!1931871 (=> (not res!2552570) (not e!3755703))))

(assert (=> d!1931871 (= res!2552570 (matchR!8289 (regOne!32724 r!7292) Nil!64493))))

(assert (=> d!1931871 (validRegex!7842 (regOne!32724 r!7292))))

(assert (=> d!1931871 (= (findConcatSeparation!2411 (regOne!32724 r!7292) (regTwo!32724 r!7292) Nil!64493 s!2326 s!2326) lt!2336494)))

(declare-fun b!6164622 () Bool)

(assert (=> b!6164622 (= e!3755706 None!15996)))

(assert (= (and d!1931871 res!2552570) b!6164614))

(assert (= (and d!1931871 c!1110473) b!6164616))

(assert (= (and d!1931871 (not c!1110473)) b!6164620))

(assert (= (and b!6164620 c!1110474) b!6164622))

(assert (= (and b!6164620 (not c!1110474)) b!6164615))

(assert (= (and d!1931871 res!2552568) b!6164621))

(assert (= (and b!6164621 res!2552571) b!6164617))

(assert (= (and b!6164617 res!2552567) b!6164618))

(assert (= (and d!1931871 (not res!2552569)) b!6164619))

(declare-fun m!7002272 () Bool)

(assert (=> b!6164614 m!7002272))

(declare-fun m!7002274 () Bool)

(assert (=> d!1931871 m!7002274))

(declare-fun m!7002276 () Bool)

(assert (=> d!1931871 m!7002276))

(declare-fun m!7002278 () Bool)

(assert (=> d!1931871 m!7002278))

(declare-fun m!7002280 () Bool)

(assert (=> b!6164617 m!7002280))

(declare-fun m!7002282 () Bool)

(assert (=> b!6164617 m!7002282))

(declare-fun m!7002284 () Bool)

(assert (=> b!6164615 m!7002284))

(assert (=> b!6164615 m!7002284))

(declare-fun m!7002286 () Bool)

(assert (=> b!6164615 m!7002286))

(declare-fun m!7002288 () Bool)

(assert (=> b!6164615 m!7002288))

(assert (=> b!6164615 m!7002284))

(declare-fun m!7002290 () Bool)

(assert (=> b!6164615 m!7002290))

(assert (=> b!6164618 m!7002280))

(declare-fun m!7002292 () Bool)

(assert (=> b!6164618 m!7002292))

(assert (=> b!6164619 m!7002274))

(assert (=> b!6164621 m!7002280))

(declare-fun m!7002294 () Bool)

(assert (=> b!6164621 m!7002294))

(assert (=> b!6164365 d!1931871))

(declare-fun d!1931873 () Bool)

(declare-fun choose!45829 (Int) Bool)

(assert (=> d!1931873 (= (Exists!3176 lambda!336460) (choose!45829 lambda!336460))))

(declare-fun bs!1527984 () Bool)

(assert (= bs!1527984 d!1931873))

(declare-fun m!7002296 () Bool)

(assert (=> bs!1527984 m!7002296))

(assert (=> b!6164365 d!1931873))

(declare-fun d!1931875 () Bool)

(assert (=> d!1931875 (= (Exists!3176 lambda!336461) (choose!45829 lambda!336461))))

(declare-fun bs!1527985 () Bool)

(assert (= bs!1527985 d!1931875))

(declare-fun m!7002298 () Bool)

(assert (=> bs!1527985 m!7002298))

(assert (=> b!6164365 d!1931875))

(declare-fun bs!1527986 () Bool)

(declare-fun d!1931877 () Bool)

(assert (= bs!1527986 (and d!1931877 b!6164365)))

(declare-fun lambda!336483 () Int)

(assert (=> bs!1527986 (= lambda!336483 lambda!336460)))

(assert (=> bs!1527986 (not (= lambda!336483 lambda!336461))))

(assert (=> d!1931877 true))

(assert (=> d!1931877 true))

(assert (=> d!1931877 true))

(assert (=> d!1931877 (= (isDefined!12700 (findConcatSeparation!2411 (regOne!32724 r!7292) (regTwo!32724 r!7292) Nil!64493 s!2326 s!2326)) (Exists!3176 lambda!336483))))

(declare-fun lt!2336497 () Unit!157627)

(declare-fun choose!45830 (Regex!16106 Regex!16106 List!64617) Unit!157627)

(assert (=> d!1931877 (= lt!2336497 (choose!45830 (regOne!32724 r!7292) (regTwo!32724 r!7292) s!2326))))

(assert (=> d!1931877 (validRegex!7842 (regOne!32724 r!7292))))

(assert (=> d!1931877 (= (lemmaFindConcatSeparationEquivalentToExists!2175 (regOne!32724 r!7292) (regTwo!32724 r!7292) s!2326) lt!2336497)))

(declare-fun bs!1527987 () Bool)

(assert (= bs!1527987 d!1931877))

(declare-fun m!7002300 () Bool)

(assert (=> bs!1527987 m!7002300))

(assert (=> bs!1527987 m!7002278))

(assert (=> bs!1527987 m!7001998))

(declare-fun m!7002302 () Bool)

(assert (=> bs!1527987 m!7002302))

(assert (=> bs!1527987 m!7001998))

(assert (=> bs!1527987 m!7002000))

(assert (=> b!6164365 d!1931877))

(declare-fun bs!1527988 () Bool)

(declare-fun d!1931879 () Bool)

(assert (= bs!1527988 (and d!1931879 b!6164365)))

(declare-fun lambda!336488 () Int)

(assert (=> bs!1527988 (= lambda!336488 lambda!336460)))

(assert (=> bs!1527988 (not (= lambda!336488 lambda!336461))))

(declare-fun bs!1527989 () Bool)

(assert (= bs!1527989 (and d!1931879 d!1931877)))

(assert (=> bs!1527989 (= lambda!336488 lambda!336483)))

(assert (=> d!1931879 true))

(assert (=> d!1931879 true))

(assert (=> d!1931879 true))

(declare-fun lambda!336489 () Int)

(assert (=> bs!1527988 (not (= lambda!336489 lambda!336460))))

(assert (=> bs!1527988 (= lambda!336489 lambda!336461)))

(assert (=> bs!1527989 (not (= lambda!336489 lambda!336483))))

(declare-fun bs!1527990 () Bool)

(assert (= bs!1527990 d!1931879))

(assert (=> bs!1527990 (not (= lambda!336489 lambda!336488))))

(assert (=> d!1931879 true))

(assert (=> d!1931879 true))

(assert (=> d!1931879 true))

(assert (=> d!1931879 (= (Exists!3176 lambda!336488) (Exists!3176 lambda!336489))))

(declare-fun lt!2336500 () Unit!157627)

(declare-fun choose!45831 (Regex!16106 Regex!16106 List!64617) Unit!157627)

(assert (=> d!1931879 (= lt!2336500 (choose!45831 (regOne!32724 r!7292) (regTwo!32724 r!7292) s!2326))))

(assert (=> d!1931879 (validRegex!7842 (regOne!32724 r!7292))))

(assert (=> d!1931879 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1713 (regOne!32724 r!7292) (regTwo!32724 r!7292) s!2326) lt!2336500)))

(declare-fun m!7002304 () Bool)

(assert (=> bs!1527990 m!7002304))

(declare-fun m!7002306 () Bool)

(assert (=> bs!1527990 m!7002306))

(declare-fun m!7002308 () Bool)

(assert (=> bs!1527990 m!7002308))

(assert (=> bs!1527990 m!7002278))

(assert (=> b!6164365 d!1931879))

(declare-fun d!1931881 () Bool)

(declare-fun isEmpty!36471 (Option!15997) Bool)

(assert (=> d!1931881 (= (isDefined!12700 (findConcatSeparation!2411 (regOne!32724 r!7292) (regTwo!32724 r!7292) Nil!64493 s!2326 s!2326)) (not (isEmpty!36471 (findConcatSeparation!2411 (regOne!32724 r!7292) (regTwo!32724 r!7292) Nil!64493 s!2326 s!2326))))))

(declare-fun bs!1527991 () Bool)

(assert (= bs!1527991 d!1931881))

(assert (=> bs!1527991 m!7001998))

(declare-fun m!7002310 () Bool)

(assert (=> bs!1527991 m!7002310))

(assert (=> b!6164365 d!1931881))

(declare-fun d!1931883 () Bool)

(declare-fun lt!2336503 () Int)

(assert (=> d!1931883 (>= lt!2336503 0)))

(declare-fun e!3755716 () Int)

(assert (=> d!1931883 (= lt!2336503 e!3755716)))

(declare-fun c!1110477 () Bool)

(assert (=> d!1931883 (= c!1110477 (is-Cons!64495 (Cons!64495 lt!2336376 Nil!64495)))))

(assert (=> d!1931883 (= (zipperDepthTotal!289 (Cons!64495 lt!2336376 Nil!64495)) lt!2336503)))

(declare-fun b!6164639 () Bool)

(declare-fun contextDepthTotal!266 (Context!10980) Int)

(assert (=> b!6164639 (= e!3755716 (+ (contextDepthTotal!266 (h!70943 (Cons!64495 lt!2336376 Nil!64495))) (zipperDepthTotal!289 (t!378119 (Cons!64495 lt!2336376 Nil!64495)))))))

(declare-fun b!6164640 () Bool)

(assert (=> b!6164640 (= e!3755716 0)))

(assert (= (and d!1931883 c!1110477) b!6164639))

(assert (= (and d!1931883 (not c!1110477)) b!6164640))

(declare-fun m!7002312 () Bool)

(assert (=> b!6164639 m!7002312))

(declare-fun m!7002314 () Bool)

(assert (=> b!6164639 m!7002314))

(assert (=> b!6164370 d!1931883))

(declare-fun b!6164651 () Bool)

(declare-fun e!3755724 () (Set Context!10980))

(assert (=> b!6164651 (= e!3755724 (as set.empty (Set Context!10980)))))

(declare-fun d!1931885 () Bool)

(declare-fun c!1110482 () Bool)

(declare-fun e!3755723 () Bool)

(assert (=> d!1931885 (= c!1110482 e!3755723)))

(declare-fun res!2552586 () Bool)

(assert (=> d!1931885 (=> (not res!2552586) (not e!3755723))))

(assert (=> d!1931885 (= res!2552586 (is-Cons!64494 (exprs!5990 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343))))))))))

(declare-fun e!3755725 () (Set Context!10980))

(assert (=> d!1931885 (= (derivationStepZipperUp!1280 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343))))) (h!70941 s!2326)) e!3755725)))

(declare-fun b!6164652 () Bool)

(assert (=> b!6164652 (= e!3755723 (nullable!6099 (h!70942 (exprs!5990 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343)))))))))))

(declare-fun b!6164653 () Bool)

(assert (=> b!6164653 (= e!3755725 e!3755724)))

(declare-fun c!1110483 () Bool)

(assert (=> b!6164653 (= c!1110483 (is-Cons!64494 (exprs!5990 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343))))))))))

(declare-fun b!6164654 () Bool)

(declare-fun call!513640 () (Set Context!10980))

(assert (=> b!6164654 (= e!3755724 call!513640)))

(declare-fun b!6164655 () Bool)

(assert (=> b!6164655 (= e!3755725 (set.union call!513640 (derivationStepZipperUp!1280 (Context!10981 (t!378118 (exprs!5990 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343)))))))) (h!70941 s!2326))))))

(declare-fun bm!513635 () Bool)

(assert (=> bm!513635 (= call!513640 (derivationStepZipperDown!1354 (h!70942 (exprs!5990 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343))))))) (Context!10981 (t!378118 (exprs!5990 (Context!10981 (Cons!64494 (h!70942 (exprs!5990 (h!70943 zl!343))) (t!378118 (exprs!5990 (h!70943 zl!343)))))))) (h!70941 s!2326)))))

(assert (= (and d!1931885 res!2552586) b!6164652))

(assert (= (and d!1931885 c!1110482) b!6164655))

(assert (= (and d!1931885 (not c!1110482)) b!6164653))

(assert (= (and b!6164653 c!1110483) b!6164654))

(assert (= (and b!6164653 (not c!1110483)) b!6164651))

(assert (= (or b!6164655 b!6164654) bm!513635))

(declare-fun m!7002316 () Bool)

(assert (=> b!6164652 m!7002316))

(declare-fun m!7002318 () Bool)

(assert (=> b!6164655 m!7002318))

(declare-fun m!7002320 () Bool)

(assert (=> bm!513635 m!7002320))

(assert (=> b!6164389 d!1931885))

(declare-fun b!6164656 () Bool)

(declare-fun e!3755727 () (Set Context!10980))

(assert (=> b!6164656 (= e!3755727 (as set.empty (Set Context!10980)))))

(declare-fun d!1931887 () Bool)

(declare-fun c!1110484 () Bool)

(declare-fun e!3755726 () Bool)

(assert (=> d!1931887 (= c!1110484 e!3755726)))

(declare-fun res!2552587 () Bool)

(assert (=> d!1931887 (=> (not res!2552587) (not e!3755726))))

(assert (=> d!1931887 (= res!2552587 (is-Cons!64494 (exprs!5990 lt!2336364)))))

(declare-fun e!3755728 () (Set Context!10980))

(assert (=> d!1931887 (= (derivationStepZipperUp!1280 lt!2336364 (h!70941 s!2326)) e!3755728)))

(declare-fun b!6164657 () Bool)

(assert (=> b!6164657 (= e!3755726 (nullable!6099 (h!70942 (exprs!5990 lt!2336364))))))

(declare-fun b!6164658 () Bool)

(assert (=> b!6164658 (= e!3755728 e!3755727)))

(declare-fun c!1110485 () Bool)

(assert (=> b!6164658 (= c!1110485 (is-Cons!64494 (exprs!5990 lt!2336364)))))

(declare-fun b!6164659 () Bool)

(declare-fun call!513641 () (Set Context!10980))

(assert (=> b!6164659 (= e!3755727 call!513641)))

(declare-fun b!6164660 () Bool)

(assert (=> b!6164660 (= e!3755728 (set.union call!513641 (derivationStepZipperUp!1280 (Context!10981 (t!378118 (exprs!5990 lt!2336364))) (h!70941 s!2326))))))

(declare-fun bm!513636 () Bool)

(assert (=> bm!513636 (= call!513641 (derivationStepZipperDown!1354 (h!70942 (exprs!5990 lt!2336364)) (Context!10981 (t!378118 (exprs!5990 lt!2336364))) (h!70941 s!2326)))))

(assert (= (and d!1931887 res!2552587) b!6164657))

(assert (= (and d!1931887 c!1110484) b!6164660))

(assert (= (and d!1931887 (not c!1110484)) b!6164658))

(assert (= (and b!6164658 c!1110485) b!6164659))

(assert (= (and b!6164658 (not c!1110485)) b!6164656))

(assert (= (or b!6164660 b!6164659) bm!513636))

(declare-fun m!7002322 () Bool)

(assert (=> b!6164657 m!7002322))

(declare-fun m!7002324 () Bool)

(assert (=> b!6164660 m!7002324))

(declare-fun m!7002326 () Bool)

(assert (=> bm!513636 m!7002326))

(assert (=> b!6164389 d!1931887))

(declare-fun d!1931889 () Bool)

(declare-fun choose!45832 ((Set Context!10980) Int) (Set Context!10980))

(assert (=> d!1931889 (= (flatMap!1611 z!1189 lambda!336462) (choose!45832 z!1189 lambda!336462))))

(declare-fun bs!1527992 () Bool)

(assert (= bs!1527992 d!1931889))

(declare-fun m!7002328 () Bool)

(assert (=> bs!1527992 m!7002328))

(assert (=> b!6164389 d!1931889))

(declare-fun b!6164661 () Bool)

(declare-fun e!3755730 () (Set Context!10980))

(assert (=> b!6164661 (= e!3755730 (as set.empty (Set Context!10980)))))

(declare-fun d!1931891 () Bool)

(declare-fun c!1110486 () Bool)

(declare-fun e!3755729 () Bool)

(assert (=> d!1931891 (= c!1110486 e!3755729)))

(declare-fun res!2552588 () Bool)

(assert (=> d!1931891 (=> (not res!2552588) (not e!3755729))))

(assert (=> d!1931891 (= res!2552588 (is-Cons!64494 (exprs!5990 (h!70943 zl!343))))))

(declare-fun e!3755731 () (Set Context!10980))

(assert (=> d!1931891 (= (derivationStepZipperUp!1280 (h!70943 zl!343) (h!70941 s!2326)) e!3755731)))

(declare-fun b!6164662 () Bool)

(assert (=> b!6164662 (= e!3755729 (nullable!6099 (h!70942 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun b!6164663 () Bool)

(assert (=> b!6164663 (= e!3755731 e!3755730)))

(declare-fun c!1110487 () Bool)

(assert (=> b!6164663 (= c!1110487 (is-Cons!64494 (exprs!5990 (h!70943 zl!343))))))

(declare-fun b!6164664 () Bool)

(declare-fun call!513642 () (Set Context!10980))

(assert (=> b!6164664 (= e!3755730 call!513642)))

(declare-fun b!6164665 () Bool)

(assert (=> b!6164665 (= e!3755731 (set.union call!513642 (derivationStepZipperUp!1280 (Context!10981 (t!378118 (exprs!5990 (h!70943 zl!343)))) (h!70941 s!2326))))))

(declare-fun bm!513637 () Bool)

(assert (=> bm!513637 (= call!513642 (derivationStepZipperDown!1354 (h!70942 (exprs!5990 (h!70943 zl!343))) (Context!10981 (t!378118 (exprs!5990 (h!70943 zl!343)))) (h!70941 s!2326)))))

(assert (= (and d!1931891 res!2552588) b!6164662))

(assert (= (and d!1931891 c!1110486) b!6164665))

(assert (= (and d!1931891 (not c!1110486)) b!6164663))

(assert (= (and b!6164663 c!1110487) b!6164664))

(assert (= (and b!6164663 (not c!1110487)) b!6164661))

(assert (= (or b!6164665 b!6164664) bm!513637))

(assert (=> b!6164662 m!7002046))

(declare-fun m!7002330 () Bool)

(assert (=> b!6164665 m!7002330))

(declare-fun m!7002332 () Bool)

(assert (=> bm!513637 m!7002332))

(assert (=> b!6164389 d!1931891))

(declare-fun d!1931893 () Bool)

(declare-fun dynLambda!25432 (Int Context!10980) (Set Context!10980))

(assert (=> d!1931893 (= (flatMap!1611 z!1189 lambda!336462) (dynLambda!25432 lambda!336462 (h!70943 zl!343)))))

(declare-fun lt!2336506 () Unit!157627)

(declare-fun choose!45833 ((Set Context!10980) Context!10980 Int) Unit!157627)

(assert (=> d!1931893 (= lt!2336506 (choose!45833 z!1189 (h!70943 zl!343) lambda!336462))))

(assert (=> d!1931893 (= z!1189 (set.insert (h!70943 zl!343) (as set.empty (Set Context!10980))))))

(assert (=> d!1931893 (= (lemmaFlatMapOnSingletonSet!1137 z!1189 (h!70943 zl!343) lambda!336462) lt!2336506)))

(declare-fun b_lambda!234685 () Bool)

(assert (=> (not b_lambda!234685) (not d!1931893)))

(declare-fun bs!1527993 () Bool)

(assert (= bs!1527993 d!1931893))

(assert (=> bs!1527993 m!7002050))

(declare-fun m!7002334 () Bool)

(assert (=> bs!1527993 m!7002334))

(declare-fun m!7002336 () Bool)

(assert (=> bs!1527993 m!7002336))

(declare-fun m!7002338 () Bool)

(assert (=> bs!1527993 m!7002338))

(assert (=> b!6164389 d!1931893))

(declare-fun d!1931895 () Bool)

(declare-fun nullableFct!2063 (Regex!16106) Bool)

(assert (=> d!1931895 (= (nullable!6099 (h!70942 (exprs!5990 (h!70943 zl!343)))) (nullableFct!2063 (h!70942 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun bs!1527994 () Bool)

(assert (= bs!1527994 d!1931895))

(declare-fun m!7002340 () Bool)

(assert (=> bs!1527994 m!7002340))

(assert (=> b!6164389 d!1931895))

(declare-fun b!6164688 () Bool)

(declare-fun e!3755747 () (Set Context!10980))

(declare-fun e!3755749 () (Set Context!10980))

(assert (=> b!6164688 (= e!3755747 e!3755749)))

(declare-fun c!1110502 () Bool)

(assert (=> b!6164688 (= c!1110502 (is-Union!16106 (h!70942 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun c!1110500 () Bool)

(declare-fun call!513656 () List!64618)

(declare-fun call!513659 () (Set Context!10980))

(declare-fun bm!513650 () Bool)

(declare-fun c!1110499 () Bool)

(assert (=> bm!513650 (= call!513659 (derivationStepZipperDown!1354 (ite c!1110502 (regOne!32725 (h!70942 (exprs!5990 (h!70943 zl!343)))) (ite c!1110500 (regTwo!32724 (h!70942 (exprs!5990 (h!70943 zl!343)))) (ite c!1110499 (regOne!32724 (h!70942 (exprs!5990 (h!70943 zl!343)))) (reg!16435 (h!70942 (exprs!5990 (h!70943 zl!343))))))) (ite (or c!1110502 c!1110500) lt!2336364 (Context!10981 call!513656)) (h!70941 s!2326)))))

(declare-fun b!6164689 () Bool)

(declare-fun e!3755746 () (Set Context!10980))

(declare-fun call!513657 () (Set Context!10980))

(assert (=> b!6164689 (= e!3755746 call!513657)))

(declare-fun b!6164690 () Bool)

(declare-fun c!1110498 () Bool)

(assert (=> b!6164690 (= c!1110498 (is-Star!16106 (h!70942 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun e!3755745 () (Set Context!10980))

(assert (=> b!6164690 (= e!3755745 e!3755746)))

(declare-fun bm!513651 () Bool)

(declare-fun call!513658 () (Set Context!10980))

(declare-fun call!513655 () List!64618)

(assert (=> bm!513651 (= call!513658 (derivationStepZipperDown!1354 (ite c!1110502 (regTwo!32725 (h!70942 (exprs!5990 (h!70943 zl!343)))) (regOne!32724 (h!70942 (exprs!5990 (h!70943 zl!343))))) (ite c!1110502 lt!2336364 (Context!10981 call!513655)) (h!70941 s!2326)))))

(declare-fun b!6164691 () Bool)

(assert (=> b!6164691 (= e!3755749 (set.union call!513659 call!513658))))

(declare-fun bm!513652 () Bool)

(declare-fun call!513660 () (Set Context!10980))

(assert (=> bm!513652 (= call!513660 call!513659)))

(declare-fun bm!513653 () Bool)

(assert (=> bm!513653 (= call!513656 call!513655)))

(declare-fun b!6164693 () Bool)

(declare-fun e!3755748 () Bool)

(assert (=> b!6164693 (= e!3755748 (nullable!6099 (regOne!32724 (h!70942 (exprs!5990 (h!70943 zl!343))))))))

(declare-fun bm!513654 () Bool)

(assert (=> bm!513654 (= call!513657 call!513660)))

(declare-fun b!6164694 () Bool)

(assert (=> b!6164694 (= e!3755746 (as set.empty (Set Context!10980)))))

(declare-fun bm!513655 () Bool)

(declare-fun $colon$colon!1983 (List!64618 Regex!16106) List!64618)

(assert (=> bm!513655 (= call!513655 ($colon$colon!1983 (exprs!5990 lt!2336364) (ite (or c!1110500 c!1110499) (regTwo!32724 (h!70942 (exprs!5990 (h!70943 zl!343)))) (h!70942 (exprs!5990 (h!70943 zl!343))))))))

(declare-fun b!6164695 () Bool)

(assert (=> b!6164695 (= e!3755745 call!513657)))

(declare-fun b!6164696 () Bool)

(assert (=> b!6164696 (= c!1110500 e!3755748)))

(declare-fun res!2552591 () Bool)

(assert (=> b!6164696 (=> (not res!2552591) (not e!3755748))))

(assert (=> b!6164696 (= res!2552591 (is-Concat!24951 (h!70942 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun e!3755744 () (Set Context!10980))

(assert (=> b!6164696 (= e!3755749 e!3755744)))

(declare-fun b!6164697 () Bool)

(assert (=> b!6164697 (= e!3755744 (set.union call!513658 call!513660))))

(declare-fun b!6164698 () Bool)

(assert (=> b!6164698 (= e!3755744 e!3755745)))

(assert (=> b!6164698 (= c!1110499 (is-Concat!24951 (h!70942 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun b!6164692 () Bool)

(assert (=> b!6164692 (= e!3755747 (set.insert lt!2336364 (as set.empty (Set Context!10980))))))

(declare-fun d!1931897 () Bool)

(declare-fun c!1110501 () Bool)

(assert (=> d!1931897 (= c!1110501 (and (is-ElementMatch!16106 (h!70942 (exprs!5990 (h!70943 zl!343)))) (= (c!1110429 (h!70942 (exprs!5990 (h!70943 zl!343)))) (h!70941 s!2326))))))

(assert (=> d!1931897 (= (derivationStepZipperDown!1354 (h!70942 (exprs!5990 (h!70943 zl!343))) lt!2336364 (h!70941 s!2326)) e!3755747)))

(assert (= (and d!1931897 c!1110501) b!6164692))

(assert (= (and d!1931897 (not c!1110501)) b!6164688))

(assert (= (and b!6164688 c!1110502) b!6164691))

(assert (= (and b!6164688 (not c!1110502)) b!6164696))

(assert (= (and b!6164696 res!2552591) b!6164693))

(assert (= (and b!6164696 c!1110500) b!6164697))

(assert (= (and b!6164696 (not c!1110500)) b!6164698))

(assert (= (and b!6164698 c!1110499) b!6164695))

(assert (= (and b!6164698 (not c!1110499)) b!6164690))

(assert (= (and b!6164690 c!1110498) b!6164689))

(assert (= (and b!6164690 (not c!1110498)) b!6164694))

(assert (= (or b!6164695 b!6164689) bm!513653))

(assert (= (or b!6164695 b!6164689) bm!513654))

(assert (= (or b!6164697 bm!513653) bm!513655))

(assert (= (or b!6164697 bm!513654) bm!513652))

(assert (= (or b!6164691 b!6164697) bm!513651))

(assert (= (or b!6164691 bm!513652) bm!513650))

(declare-fun m!7002342 () Bool)

(assert (=> bm!513655 m!7002342))

(declare-fun m!7002344 () Bool)

(assert (=> b!6164693 m!7002344))

(declare-fun m!7002346 () Bool)

(assert (=> bm!513651 m!7002346))

(declare-fun m!7002348 () Bool)

(assert (=> bm!513650 m!7002348))

(declare-fun m!7002350 () Bool)

(assert (=> b!6164692 m!7002350))

(assert (=> b!6164389 d!1931897))

(assert (=> b!6164369 d!1931869))

(declare-fun d!1931899 () Bool)

(declare-fun lt!2336507 () Int)

(assert (=> d!1931899 (>= lt!2336507 0)))

(declare-fun e!3755750 () Int)

(assert (=> d!1931899 (= lt!2336507 e!3755750)))

(declare-fun c!1110503 () Bool)

(assert (=> d!1931899 (= c!1110503 (is-Cons!64495 zl!343))))

(assert (=> d!1931899 (= (zipperDepthTotal!289 zl!343) lt!2336507)))

(declare-fun b!6164699 () Bool)

(assert (=> b!6164699 (= e!3755750 (+ (contextDepthTotal!266 (h!70943 zl!343)) (zipperDepthTotal!289 (t!378119 zl!343))))))

(declare-fun b!6164700 () Bool)

(assert (=> b!6164700 (= e!3755750 0)))

(assert (= (and d!1931899 c!1110503) b!6164699))

(assert (= (and d!1931899 (not c!1110503)) b!6164700))

(declare-fun m!7002352 () Bool)

(assert (=> b!6164699 m!7002352))

(declare-fun m!7002354 () Bool)

(assert (=> b!6164699 m!7002354))

(assert (=> b!6164388 d!1931899))

(declare-fun d!1931901 () Bool)

(declare-fun lt!2336508 () Int)

(assert (=> d!1931901 (>= lt!2336508 0)))

(declare-fun e!3755751 () Int)

(assert (=> d!1931901 (= lt!2336508 e!3755751)))

(declare-fun c!1110504 () Bool)

(assert (=> d!1931901 (= c!1110504 (is-Cons!64495 (Cons!64495 lt!2336362 Nil!64495)))))

(assert (=> d!1931901 (= (zipperDepthTotal!289 (Cons!64495 lt!2336362 Nil!64495)) lt!2336508)))

(declare-fun b!6164701 () Bool)

(assert (=> b!6164701 (= e!3755751 (+ (contextDepthTotal!266 (h!70943 (Cons!64495 lt!2336362 Nil!64495))) (zipperDepthTotal!289 (t!378119 (Cons!64495 lt!2336362 Nil!64495)))))))

(declare-fun b!6164702 () Bool)

(assert (=> b!6164702 (= e!3755751 0)))

(assert (= (and d!1931901 c!1110504) b!6164701))

(assert (= (and d!1931901 (not c!1110504)) b!6164702))

(declare-fun m!7002356 () Bool)

(assert (=> b!6164701 m!7002356))

(declare-fun m!7002358 () Bool)

(assert (=> b!6164701 m!7002358))

(assert (=> b!6164388 d!1931901))

(declare-fun e!3755754 () Bool)

(declare-fun d!1931903 () Bool)

(assert (=> d!1931903 (= (matchZipper!2118 (set.union lt!2336359 lt!2336374) (t!378117 s!2326)) e!3755754)))

(declare-fun res!2552594 () Bool)

(assert (=> d!1931903 (=> res!2552594 e!3755754)))

(assert (=> d!1931903 (= res!2552594 (matchZipper!2118 lt!2336359 (t!378117 s!2326)))))

(declare-fun lt!2336511 () Unit!157627)

(declare-fun choose!45834 ((Set Context!10980) (Set Context!10980) List!64617) Unit!157627)

(assert (=> d!1931903 (= lt!2336511 (choose!45834 lt!2336359 lt!2336374 (t!378117 s!2326)))))

(assert (=> d!1931903 (= (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336359 lt!2336374 (t!378117 s!2326)) lt!2336511)))

(declare-fun b!6164705 () Bool)

(assert (=> b!6164705 (= e!3755754 (matchZipper!2118 lt!2336374 (t!378117 s!2326)))))

(assert (= (and d!1931903 (not res!2552594)) b!6164705))

(assert (=> d!1931903 m!7002060))

(assert (=> d!1931903 m!7002058))

(declare-fun m!7002360 () Bool)

(assert (=> d!1931903 m!7002360))

(assert (=> b!6164705 m!7002014))

(assert (=> b!6164368 d!1931903))

(declare-fun d!1931905 () Bool)

(declare-fun c!1110505 () Bool)

(assert (=> d!1931905 (= c!1110505 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755755 () Bool)

(assert (=> d!1931905 (= (matchZipper!2118 lt!2336359 (t!378117 s!2326)) e!3755755)))

(declare-fun b!6164706 () Bool)

(assert (=> b!6164706 (= e!3755755 (nullableZipper!1887 lt!2336359))))

(declare-fun b!6164707 () Bool)

(assert (=> b!6164707 (= e!3755755 (matchZipper!2118 (derivationStepZipper!2079 lt!2336359 (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931905 c!1110505) b!6164706))

(assert (= (and d!1931905 (not c!1110505)) b!6164707))

(assert (=> d!1931905 m!7002260))

(declare-fun m!7002362 () Bool)

(assert (=> b!6164706 m!7002362))

(assert (=> b!6164707 m!7002264))

(assert (=> b!6164707 m!7002264))

(declare-fun m!7002364 () Bool)

(assert (=> b!6164707 m!7002364))

(assert (=> b!6164707 m!7002268))

(assert (=> b!6164707 m!7002364))

(assert (=> b!6164707 m!7002268))

(declare-fun m!7002366 () Bool)

(assert (=> b!6164707 m!7002366))

(assert (=> b!6164368 d!1931905))

(declare-fun d!1931907 () Bool)

(declare-fun c!1110506 () Bool)

(assert (=> d!1931907 (= c!1110506 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755756 () Bool)

(assert (=> d!1931907 (= (matchZipper!2118 (set.union lt!2336359 lt!2336374) (t!378117 s!2326)) e!3755756)))

(declare-fun b!6164708 () Bool)

(assert (=> b!6164708 (= e!3755756 (nullableZipper!1887 (set.union lt!2336359 lt!2336374)))))

(declare-fun b!6164709 () Bool)

(assert (=> b!6164709 (= e!3755756 (matchZipper!2118 (derivationStepZipper!2079 (set.union lt!2336359 lt!2336374) (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931907 c!1110506) b!6164708))

(assert (= (and d!1931907 (not c!1110506)) b!6164709))

(assert (=> d!1931907 m!7002260))

(declare-fun m!7002368 () Bool)

(assert (=> b!6164708 m!7002368))

(assert (=> b!6164709 m!7002264))

(assert (=> b!6164709 m!7002264))

(declare-fun m!7002370 () Bool)

(assert (=> b!6164709 m!7002370))

(assert (=> b!6164709 m!7002268))

(assert (=> b!6164709 m!7002370))

(assert (=> b!6164709 m!7002268))

(declare-fun m!7002372 () Bool)

(assert (=> b!6164709 m!7002372))

(assert (=> b!6164368 d!1931907))

(declare-fun bs!1527995 () Bool)

(declare-fun d!1931909 () Bool)

(assert (= bs!1527995 (and d!1931909 d!1931865)))

(declare-fun lambda!336492 () Int)

(assert (=> bs!1527995 (= lambda!336492 lambda!336480)))

(declare-fun b!6164730 () Bool)

(declare-fun e!3755773 () Regex!16106)

(assert (=> b!6164730 (= e!3755773 (h!70942 (unfocusZipperList!1527 zl!343)))))

(declare-fun b!6164731 () Bool)

(declare-fun e!3755771 () Regex!16106)

(assert (=> b!6164731 (= e!3755773 e!3755771)))

(declare-fun c!1110516 () Bool)

(assert (=> b!6164731 (= c!1110516 (is-Cons!64494 (unfocusZipperList!1527 zl!343)))))

(declare-fun b!6164732 () Bool)

(assert (=> b!6164732 (= e!3755771 (Union!16106 (h!70942 (unfocusZipperList!1527 zl!343)) (generalisedUnion!1950 (t!378118 (unfocusZipperList!1527 zl!343)))))))

(declare-fun b!6164733 () Bool)

(declare-fun e!3755769 () Bool)

(declare-fun e!3755774 () Bool)

(assert (=> b!6164733 (= e!3755769 e!3755774)))

(declare-fun c!1110518 () Bool)

(assert (=> b!6164733 (= c!1110518 (isEmpty!36466 (tail!11818 (unfocusZipperList!1527 zl!343))))))

(declare-fun e!3755770 () Bool)

(assert (=> d!1931909 e!3755770))

(declare-fun res!2552599 () Bool)

(assert (=> d!1931909 (=> (not res!2552599) (not e!3755770))))

(declare-fun lt!2336514 () Regex!16106)

(assert (=> d!1931909 (= res!2552599 (validRegex!7842 lt!2336514))))

(assert (=> d!1931909 (= lt!2336514 e!3755773)))

(declare-fun c!1110515 () Bool)

(declare-fun e!3755772 () Bool)

(assert (=> d!1931909 (= c!1110515 e!3755772)))

(declare-fun res!2552600 () Bool)

(assert (=> d!1931909 (=> (not res!2552600) (not e!3755772))))

(assert (=> d!1931909 (= res!2552600 (is-Cons!64494 (unfocusZipperList!1527 zl!343)))))

(assert (=> d!1931909 (forall!15227 (unfocusZipperList!1527 zl!343) lambda!336492)))

(assert (=> d!1931909 (= (generalisedUnion!1950 (unfocusZipperList!1527 zl!343)) lt!2336514)))

(declare-fun b!6164734 () Bool)

(declare-fun isUnion!963 (Regex!16106) Bool)

(assert (=> b!6164734 (= e!3755774 (isUnion!963 lt!2336514))))

(declare-fun b!6164735 () Bool)

(assert (=> b!6164735 (= e!3755770 e!3755769)))

(declare-fun c!1110517 () Bool)

(assert (=> b!6164735 (= c!1110517 (isEmpty!36466 (unfocusZipperList!1527 zl!343)))))

(declare-fun b!6164736 () Bool)

(assert (=> b!6164736 (= e!3755772 (isEmpty!36466 (t!378118 (unfocusZipperList!1527 zl!343))))))

(declare-fun b!6164737 () Bool)

(assert (=> b!6164737 (= e!3755774 (= lt!2336514 (head!12733 (unfocusZipperList!1527 zl!343))))))

(declare-fun b!6164738 () Bool)

(assert (=> b!6164738 (= e!3755771 EmptyLang!16106)))

(declare-fun b!6164739 () Bool)

(declare-fun isEmptyLang!1533 (Regex!16106) Bool)

(assert (=> b!6164739 (= e!3755769 (isEmptyLang!1533 lt!2336514))))

(assert (= (and d!1931909 res!2552600) b!6164736))

(assert (= (and d!1931909 c!1110515) b!6164730))

(assert (= (and d!1931909 (not c!1110515)) b!6164731))

(assert (= (and b!6164731 c!1110516) b!6164732))

(assert (= (and b!6164731 (not c!1110516)) b!6164738))

(assert (= (and d!1931909 res!2552599) b!6164735))

(assert (= (and b!6164735 c!1110517) b!6164739))

(assert (= (and b!6164735 (not c!1110517)) b!6164733))

(assert (= (and b!6164733 c!1110518) b!6164737))

(assert (= (and b!6164733 (not c!1110518)) b!6164734))

(declare-fun m!7002374 () Bool)

(assert (=> b!6164734 m!7002374))

(assert (=> b!6164737 m!7002010))

(declare-fun m!7002376 () Bool)

(assert (=> b!6164737 m!7002376))

(declare-fun m!7002378 () Bool)

(assert (=> b!6164732 m!7002378))

(assert (=> b!6164735 m!7002010))

(declare-fun m!7002380 () Bool)

(assert (=> b!6164735 m!7002380))

(declare-fun m!7002382 () Bool)

(assert (=> b!6164739 m!7002382))

(declare-fun m!7002384 () Bool)

(assert (=> d!1931909 m!7002384))

(assert (=> d!1931909 m!7002010))

(declare-fun m!7002386 () Bool)

(assert (=> d!1931909 m!7002386))

(assert (=> b!6164733 m!7002010))

(declare-fun m!7002388 () Bool)

(assert (=> b!6164733 m!7002388))

(assert (=> b!6164733 m!7002388))

(declare-fun m!7002390 () Bool)

(assert (=> b!6164733 m!7002390))

(declare-fun m!7002392 () Bool)

(assert (=> b!6164736 m!7002392))

(assert (=> b!6164387 d!1931909))

(declare-fun bs!1527996 () Bool)

(declare-fun d!1931913 () Bool)

(assert (= bs!1527996 (and d!1931913 d!1931865)))

(declare-fun lambda!336495 () Int)

(assert (=> bs!1527996 (= lambda!336495 lambda!336480)))

(declare-fun bs!1527997 () Bool)

(assert (= bs!1527997 (and d!1931913 d!1931909)))

(assert (=> bs!1527997 (= lambda!336495 lambda!336492)))

(declare-fun lt!2336517 () List!64618)

(assert (=> d!1931913 (forall!15227 lt!2336517 lambda!336495)))

(declare-fun e!3755779 () List!64618)

(assert (=> d!1931913 (= lt!2336517 e!3755779)))

(declare-fun c!1110523 () Bool)

(assert (=> d!1931913 (= c!1110523 (is-Cons!64495 zl!343))))

(assert (=> d!1931913 (= (unfocusZipperList!1527 zl!343) lt!2336517)))

(declare-fun b!6164748 () Bool)

(assert (=> b!6164748 (= e!3755779 (Cons!64494 (generalisedConcat!1703 (exprs!5990 (h!70943 zl!343))) (unfocusZipperList!1527 (t!378119 zl!343))))))

(declare-fun b!6164749 () Bool)

(assert (=> b!6164749 (= e!3755779 Nil!64494)))

(assert (= (and d!1931913 c!1110523) b!6164748))

(assert (= (and d!1931913 (not c!1110523)) b!6164749))

(declare-fun m!7002394 () Bool)

(assert (=> d!1931913 m!7002394))

(assert (=> b!6164748 m!7002082))

(declare-fun m!7002396 () Bool)

(assert (=> b!6164748 m!7002396))

(assert (=> b!6164387 d!1931913))

(declare-fun bs!1527998 () Bool)

(declare-fun d!1931915 () Bool)

(assert (= bs!1527998 (and d!1931915 d!1931865)))

(declare-fun lambda!336498 () Int)

(assert (=> bs!1527998 (= lambda!336498 lambda!336480)))

(declare-fun bs!1527999 () Bool)

(assert (= bs!1527999 (and d!1931915 d!1931909)))

(assert (=> bs!1527999 (= lambda!336498 lambda!336492)))

(declare-fun bs!1528000 () Bool)

(assert (= bs!1528000 (and d!1931915 d!1931913)))

(assert (=> bs!1528000 (= lambda!336498 lambda!336495)))

(assert (=> d!1931915 (= (inv!83513 (h!70943 zl!343)) (forall!15227 (exprs!5990 (h!70943 zl!343)) lambda!336498))))

(declare-fun bs!1528001 () Bool)

(assert (= bs!1528001 d!1931915))

(declare-fun m!7002398 () Bool)

(assert (=> bs!1528001 m!7002398))

(assert (=> b!6164392 d!1931915))

(declare-fun d!1931917 () Bool)

(assert (=> d!1931917 (= (isEmpty!36467 (t!378119 zl!343)) (is-Nil!64495 (t!378119 zl!343)))))

(assert (=> b!6164391 d!1931917))

(declare-fun b!6164752 () Bool)

(declare-fun e!3755784 () (Set Context!10980))

(declare-fun e!3755786 () (Set Context!10980))

(assert (=> b!6164752 (= e!3755784 e!3755786)))

(declare-fun c!1110529 () Bool)

(assert (=> b!6164752 (= c!1110529 (is-Union!16106 (regTwo!32725 (regOne!32724 r!7292))))))

(declare-fun bm!513656 () Bool)

(declare-fun call!513662 () List!64618)

(declare-fun c!1110527 () Bool)

(declare-fun call!513665 () (Set Context!10980))

(declare-fun c!1110526 () Bool)

(assert (=> bm!513656 (= call!513665 (derivationStepZipperDown!1354 (ite c!1110529 (regOne!32725 (regTwo!32725 (regOne!32724 r!7292))) (ite c!1110527 (regTwo!32724 (regTwo!32725 (regOne!32724 r!7292))) (ite c!1110526 (regOne!32724 (regTwo!32725 (regOne!32724 r!7292))) (reg!16435 (regTwo!32725 (regOne!32724 r!7292)))))) (ite (or c!1110529 c!1110527) lt!2336364 (Context!10981 call!513662)) (h!70941 s!2326)))))

(declare-fun b!6164753 () Bool)

(declare-fun e!3755783 () (Set Context!10980))

(declare-fun call!513663 () (Set Context!10980))

(assert (=> b!6164753 (= e!3755783 call!513663)))

(declare-fun b!6164754 () Bool)

(declare-fun c!1110525 () Bool)

(assert (=> b!6164754 (= c!1110525 (is-Star!16106 (regTwo!32725 (regOne!32724 r!7292))))))

(declare-fun e!3755782 () (Set Context!10980))

(assert (=> b!6164754 (= e!3755782 e!3755783)))

(declare-fun bm!513657 () Bool)

(declare-fun call!513661 () List!64618)

(declare-fun call!513664 () (Set Context!10980))

(assert (=> bm!513657 (= call!513664 (derivationStepZipperDown!1354 (ite c!1110529 (regTwo!32725 (regTwo!32725 (regOne!32724 r!7292))) (regOne!32724 (regTwo!32725 (regOne!32724 r!7292)))) (ite c!1110529 lt!2336364 (Context!10981 call!513661)) (h!70941 s!2326)))))

(declare-fun b!6164755 () Bool)

(assert (=> b!6164755 (= e!3755786 (set.union call!513665 call!513664))))

(declare-fun bm!513658 () Bool)

(declare-fun call!513666 () (Set Context!10980))

(assert (=> bm!513658 (= call!513666 call!513665)))

(declare-fun bm!513659 () Bool)

(assert (=> bm!513659 (= call!513662 call!513661)))

(declare-fun b!6164757 () Bool)

(declare-fun e!3755785 () Bool)

(assert (=> b!6164757 (= e!3755785 (nullable!6099 (regOne!32724 (regTwo!32725 (regOne!32724 r!7292)))))))

(declare-fun bm!513660 () Bool)

(assert (=> bm!513660 (= call!513663 call!513666)))

(declare-fun b!6164758 () Bool)

(assert (=> b!6164758 (= e!3755783 (as set.empty (Set Context!10980)))))

(declare-fun bm!513661 () Bool)

(assert (=> bm!513661 (= call!513661 ($colon$colon!1983 (exprs!5990 lt!2336364) (ite (or c!1110527 c!1110526) (regTwo!32724 (regTwo!32725 (regOne!32724 r!7292))) (regTwo!32725 (regOne!32724 r!7292)))))))

(declare-fun b!6164759 () Bool)

(assert (=> b!6164759 (= e!3755782 call!513663)))

(declare-fun b!6164760 () Bool)

(assert (=> b!6164760 (= c!1110527 e!3755785)))

(declare-fun res!2552601 () Bool)

(assert (=> b!6164760 (=> (not res!2552601) (not e!3755785))))

(assert (=> b!6164760 (= res!2552601 (is-Concat!24951 (regTwo!32725 (regOne!32724 r!7292))))))

(declare-fun e!3755781 () (Set Context!10980))

(assert (=> b!6164760 (= e!3755786 e!3755781)))

(declare-fun b!6164761 () Bool)

(assert (=> b!6164761 (= e!3755781 (set.union call!513664 call!513666))))

(declare-fun b!6164762 () Bool)

(assert (=> b!6164762 (= e!3755781 e!3755782)))

(assert (=> b!6164762 (= c!1110526 (is-Concat!24951 (regTwo!32725 (regOne!32724 r!7292))))))

(declare-fun b!6164756 () Bool)

(assert (=> b!6164756 (= e!3755784 (set.insert lt!2336364 (as set.empty (Set Context!10980))))))

(declare-fun d!1931919 () Bool)

(declare-fun c!1110528 () Bool)

(assert (=> d!1931919 (= c!1110528 (and (is-ElementMatch!16106 (regTwo!32725 (regOne!32724 r!7292))) (= (c!1110429 (regTwo!32725 (regOne!32724 r!7292))) (h!70941 s!2326))))))

(assert (=> d!1931919 (= (derivationStepZipperDown!1354 (regTwo!32725 (regOne!32724 r!7292)) lt!2336364 (h!70941 s!2326)) e!3755784)))

(assert (= (and d!1931919 c!1110528) b!6164756))

(assert (= (and d!1931919 (not c!1110528)) b!6164752))

(assert (= (and b!6164752 c!1110529) b!6164755))

(assert (= (and b!6164752 (not c!1110529)) b!6164760))

(assert (= (and b!6164760 res!2552601) b!6164757))

(assert (= (and b!6164760 c!1110527) b!6164761))

(assert (= (and b!6164760 (not c!1110527)) b!6164762))

(assert (= (and b!6164762 c!1110526) b!6164759))

(assert (= (and b!6164762 (not c!1110526)) b!6164754))

(assert (= (and b!6164754 c!1110525) b!6164753))

(assert (= (and b!6164754 (not c!1110525)) b!6164758))

(assert (= (or b!6164759 b!6164753) bm!513659))

(assert (= (or b!6164759 b!6164753) bm!513660))

(assert (= (or b!6164761 bm!513659) bm!513661))

(assert (= (or b!6164761 bm!513660) bm!513658))

(assert (= (or b!6164755 b!6164761) bm!513657))

(assert (= (or b!6164755 bm!513658) bm!513656))

(declare-fun m!7002412 () Bool)

(assert (=> bm!513661 m!7002412))

(declare-fun m!7002416 () Bool)

(assert (=> b!6164757 m!7002416))

(declare-fun m!7002418 () Bool)

(assert (=> bm!513657 m!7002418))

(declare-fun m!7002422 () Bool)

(assert (=> bm!513656 m!7002422))

(assert (=> b!6164756 m!7002350))

(assert (=> b!6164390 d!1931919))

(declare-fun b!6164765 () Bool)

(declare-fun e!3755791 () (Set Context!10980))

(declare-fun e!3755793 () (Set Context!10980))

(assert (=> b!6164765 (= e!3755791 e!3755793)))

(declare-fun c!1110535 () Bool)

(assert (=> b!6164765 (= c!1110535 (is-Union!16106 (regOne!32725 (regOne!32724 r!7292))))))

(declare-fun call!513671 () (Set Context!10980))

(declare-fun call!513668 () List!64618)

(declare-fun c!1110533 () Bool)

(declare-fun bm!513662 () Bool)

(declare-fun c!1110532 () Bool)

(assert (=> bm!513662 (= call!513671 (derivationStepZipperDown!1354 (ite c!1110535 (regOne!32725 (regOne!32725 (regOne!32724 r!7292))) (ite c!1110533 (regTwo!32724 (regOne!32725 (regOne!32724 r!7292))) (ite c!1110532 (regOne!32724 (regOne!32725 (regOne!32724 r!7292))) (reg!16435 (regOne!32725 (regOne!32724 r!7292)))))) (ite (or c!1110535 c!1110533) lt!2336364 (Context!10981 call!513668)) (h!70941 s!2326)))))

(declare-fun b!6164766 () Bool)

(declare-fun e!3755790 () (Set Context!10980))

(declare-fun call!513669 () (Set Context!10980))

(assert (=> b!6164766 (= e!3755790 call!513669)))

(declare-fun b!6164767 () Bool)

(declare-fun c!1110531 () Bool)

(assert (=> b!6164767 (= c!1110531 (is-Star!16106 (regOne!32725 (regOne!32724 r!7292))))))

(declare-fun e!3755789 () (Set Context!10980))

(assert (=> b!6164767 (= e!3755789 e!3755790)))

(declare-fun call!513670 () (Set Context!10980))

(declare-fun call!513667 () List!64618)

(declare-fun bm!513663 () Bool)

(assert (=> bm!513663 (= call!513670 (derivationStepZipperDown!1354 (ite c!1110535 (regTwo!32725 (regOne!32725 (regOne!32724 r!7292))) (regOne!32724 (regOne!32725 (regOne!32724 r!7292)))) (ite c!1110535 lt!2336364 (Context!10981 call!513667)) (h!70941 s!2326)))))

(declare-fun b!6164768 () Bool)

(assert (=> b!6164768 (= e!3755793 (set.union call!513671 call!513670))))

(declare-fun bm!513664 () Bool)

(declare-fun call!513672 () (Set Context!10980))

(assert (=> bm!513664 (= call!513672 call!513671)))

(declare-fun bm!513665 () Bool)

(assert (=> bm!513665 (= call!513668 call!513667)))

(declare-fun b!6164770 () Bool)

(declare-fun e!3755792 () Bool)

(assert (=> b!6164770 (= e!3755792 (nullable!6099 (regOne!32724 (regOne!32725 (regOne!32724 r!7292)))))))

(declare-fun bm!513666 () Bool)

(assert (=> bm!513666 (= call!513669 call!513672)))

(declare-fun b!6164771 () Bool)

(assert (=> b!6164771 (= e!3755790 (as set.empty (Set Context!10980)))))

(declare-fun bm!513667 () Bool)

(assert (=> bm!513667 (= call!513667 ($colon$colon!1983 (exprs!5990 lt!2336364) (ite (or c!1110533 c!1110532) (regTwo!32724 (regOne!32725 (regOne!32724 r!7292))) (regOne!32725 (regOne!32724 r!7292)))))))

(declare-fun b!6164772 () Bool)

(assert (=> b!6164772 (= e!3755789 call!513669)))

(declare-fun b!6164773 () Bool)

(assert (=> b!6164773 (= c!1110533 e!3755792)))

(declare-fun res!2552602 () Bool)

(assert (=> b!6164773 (=> (not res!2552602) (not e!3755792))))

(assert (=> b!6164773 (= res!2552602 (is-Concat!24951 (regOne!32725 (regOne!32724 r!7292))))))

(declare-fun e!3755788 () (Set Context!10980))

(assert (=> b!6164773 (= e!3755793 e!3755788)))

(declare-fun b!6164774 () Bool)

(assert (=> b!6164774 (= e!3755788 (set.union call!513670 call!513672))))

(declare-fun b!6164775 () Bool)

(assert (=> b!6164775 (= e!3755788 e!3755789)))

(assert (=> b!6164775 (= c!1110532 (is-Concat!24951 (regOne!32725 (regOne!32724 r!7292))))))

(declare-fun b!6164769 () Bool)

(assert (=> b!6164769 (= e!3755791 (set.insert lt!2336364 (as set.empty (Set Context!10980))))))

(declare-fun d!1931923 () Bool)

(declare-fun c!1110534 () Bool)

(assert (=> d!1931923 (= c!1110534 (and (is-ElementMatch!16106 (regOne!32725 (regOne!32724 r!7292))) (= (c!1110429 (regOne!32725 (regOne!32724 r!7292))) (h!70941 s!2326))))))

(assert (=> d!1931923 (= (derivationStepZipperDown!1354 (regOne!32725 (regOne!32724 r!7292)) lt!2336364 (h!70941 s!2326)) e!3755791)))

(assert (= (and d!1931923 c!1110534) b!6164769))

(assert (= (and d!1931923 (not c!1110534)) b!6164765))

(assert (= (and b!6164765 c!1110535) b!6164768))

(assert (= (and b!6164765 (not c!1110535)) b!6164773))

(assert (= (and b!6164773 res!2552602) b!6164770))

(assert (= (and b!6164773 c!1110533) b!6164774))

(assert (= (and b!6164773 (not c!1110533)) b!6164775))

(assert (= (and b!6164775 c!1110532) b!6164772))

(assert (= (and b!6164775 (not c!1110532)) b!6164767))

(assert (= (and b!6164767 c!1110531) b!6164766))

(assert (= (and b!6164767 (not c!1110531)) b!6164771))

(assert (= (or b!6164772 b!6164766) bm!513665))

(assert (= (or b!6164772 b!6164766) bm!513666))

(assert (= (or b!6164774 bm!513665) bm!513667))

(assert (= (or b!6164774 bm!513666) bm!513664))

(assert (= (or b!6164768 b!6164774) bm!513663))

(assert (= (or b!6164768 bm!513664) bm!513662))

(declare-fun m!7002426 () Bool)

(assert (=> bm!513667 m!7002426))

(declare-fun m!7002428 () Bool)

(assert (=> b!6164770 m!7002428))

(declare-fun m!7002430 () Bool)

(assert (=> bm!513663 m!7002430))

(declare-fun m!7002432 () Bool)

(assert (=> bm!513662 m!7002432))

(assert (=> b!6164769 m!7002350))

(assert (=> b!6164390 d!1931923))

(declare-fun b!6164776 () Bool)

(declare-fun e!3755799 () Bool)

(declare-fun e!3755796 () Bool)

(assert (=> b!6164776 (= e!3755799 e!3755796)))

(declare-fun res!2552603 () Bool)

(assert (=> b!6164776 (=> (not res!2552603) (not e!3755796))))

(declare-fun call!513675 () Bool)

(assert (=> b!6164776 (= res!2552603 call!513675)))

(declare-fun b!6164777 () Bool)

(declare-fun res!2552607 () Bool)

(assert (=> b!6164777 (=> res!2552607 e!3755799)))

(assert (=> b!6164777 (= res!2552607 (not (is-Concat!24951 r!7292)))))

(declare-fun e!3755797 () Bool)

(assert (=> b!6164777 (= e!3755797 e!3755799)))

(declare-fun b!6164778 () Bool)

(declare-fun res!2552604 () Bool)

(declare-fun e!3755798 () Bool)

(assert (=> b!6164778 (=> (not res!2552604) (not e!3755798))))

(assert (=> b!6164778 (= res!2552604 call!513675)))

(assert (=> b!6164778 (= e!3755797 e!3755798)))

(declare-fun b!6164779 () Bool)

(declare-fun call!513673 () Bool)

(assert (=> b!6164779 (= e!3755796 call!513673)))

(declare-fun b!6164780 () Bool)

(declare-fun e!3755795 () Bool)

(declare-fun e!3755800 () Bool)

(assert (=> b!6164780 (= e!3755795 e!3755800)))

(declare-fun res!2552606 () Bool)

(assert (=> b!6164780 (= res!2552606 (not (nullable!6099 (reg!16435 r!7292))))))

(assert (=> b!6164780 (=> (not res!2552606) (not e!3755800))))

(declare-fun b!6164781 () Bool)

(assert (=> b!6164781 (= e!3755798 call!513673)))

(declare-fun b!6164782 () Bool)

(assert (=> b!6164782 (= e!3755795 e!3755797)))

(declare-fun c!1110537 () Bool)

(assert (=> b!6164782 (= c!1110537 (is-Union!16106 r!7292))))

(declare-fun c!1110536 () Bool)

(declare-fun call!513674 () Bool)

(declare-fun bm!513668 () Bool)

(assert (=> bm!513668 (= call!513674 (validRegex!7842 (ite c!1110536 (reg!16435 r!7292) (ite c!1110537 (regOne!32725 r!7292) (regOne!32724 r!7292)))))))

(declare-fun b!6164783 () Bool)

(declare-fun e!3755794 () Bool)

(assert (=> b!6164783 (= e!3755794 e!3755795)))

(assert (=> b!6164783 (= c!1110536 (is-Star!16106 r!7292))))

(declare-fun bm!513670 () Bool)

(assert (=> bm!513670 (= call!513675 call!513674)))

(declare-fun b!6164784 () Bool)

(assert (=> b!6164784 (= e!3755800 call!513674)))

(declare-fun d!1931927 () Bool)

(declare-fun res!2552605 () Bool)

(assert (=> d!1931927 (=> res!2552605 e!3755794)))

(assert (=> d!1931927 (= res!2552605 (is-ElementMatch!16106 r!7292))))

(assert (=> d!1931927 (= (validRegex!7842 r!7292) e!3755794)))

(declare-fun bm!513669 () Bool)

(assert (=> bm!513669 (= call!513673 (validRegex!7842 (ite c!1110537 (regTwo!32725 r!7292) (regTwo!32724 r!7292))))))

(assert (= (and d!1931927 (not res!2552605)) b!6164783))

(assert (= (and b!6164783 c!1110536) b!6164780))

(assert (= (and b!6164783 (not c!1110536)) b!6164782))

(assert (= (and b!6164780 res!2552606) b!6164784))

(assert (= (and b!6164782 c!1110537) b!6164778))

(assert (= (and b!6164782 (not c!1110537)) b!6164777))

(assert (= (and b!6164778 res!2552604) b!6164781))

(assert (= (and b!6164777 (not res!2552607)) b!6164776))

(assert (= (and b!6164776 res!2552603) b!6164779))

(assert (= (or b!6164781 b!6164779) bm!513669))

(assert (= (or b!6164778 b!6164776) bm!513670))

(assert (= (or b!6164784 bm!513670) bm!513668))

(declare-fun m!7002434 () Bool)

(assert (=> b!6164780 m!7002434))

(declare-fun m!7002436 () Bool)

(assert (=> bm!513668 m!7002436))

(declare-fun m!7002438 () Bool)

(assert (=> bm!513669 m!7002438))

(assert (=> start!615728 d!1931927))

(declare-fun d!1931931 () Bool)

(declare-fun lt!2336520 () Regex!16106)

(assert (=> d!1931931 (validRegex!7842 lt!2336520)))

(assert (=> d!1931931 (= lt!2336520 (generalisedUnion!1950 (unfocusZipperList!1527 zl!343)))))

(assert (=> d!1931931 (= (unfocusZipper!1848 zl!343) lt!2336520)))

(declare-fun bs!1528002 () Bool)

(assert (= bs!1528002 d!1931931))

(declare-fun m!7002440 () Bool)

(assert (=> bs!1528002 m!7002440))

(assert (=> bs!1528002 m!7002010))

(assert (=> bs!1528002 m!7002010))

(assert (=> bs!1528002 m!7002012))

(assert (=> b!6164375 d!1931931))

(declare-fun d!1931933 () Bool)

(declare-fun e!3755801 () Bool)

(assert (=> d!1931933 (= (matchZipper!2118 (set.union lt!2336383 lt!2336374) (t!378117 s!2326)) e!3755801)))

(declare-fun res!2552608 () Bool)

(assert (=> d!1931933 (=> res!2552608 e!3755801)))

(assert (=> d!1931933 (= res!2552608 (matchZipper!2118 lt!2336383 (t!378117 s!2326)))))

(declare-fun lt!2336521 () Unit!157627)

(assert (=> d!1931933 (= lt!2336521 (choose!45834 lt!2336383 lt!2336374 (t!378117 s!2326)))))

(assert (=> d!1931933 (= (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336383 lt!2336374 (t!378117 s!2326)) lt!2336521)))

(declare-fun b!6164785 () Bool)

(assert (=> b!6164785 (= e!3755801 (matchZipper!2118 lt!2336374 (t!378117 s!2326)))))

(assert (= (and d!1931933 (not res!2552608)) b!6164785))

(assert (=> d!1931933 m!7002080))

(assert (=> d!1931933 m!7002088))

(declare-fun m!7002442 () Bool)

(assert (=> d!1931933 m!7002442))

(assert (=> b!6164785 m!7002014))

(assert (=> b!6164373 d!1931933))

(declare-fun d!1931935 () Bool)

(declare-fun c!1110538 () Bool)

(assert (=> d!1931935 (= c!1110538 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755802 () Bool)

(assert (=> d!1931935 (= (matchZipper!2118 (set.union lt!2336383 lt!2336374) (t!378117 s!2326)) e!3755802)))

(declare-fun b!6164786 () Bool)

(assert (=> b!6164786 (= e!3755802 (nullableZipper!1887 (set.union lt!2336383 lt!2336374)))))

(declare-fun b!6164787 () Bool)

(assert (=> b!6164787 (= e!3755802 (matchZipper!2118 (derivationStepZipper!2079 (set.union lt!2336383 lt!2336374) (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931935 c!1110538) b!6164786))

(assert (= (and d!1931935 (not c!1110538)) b!6164787))

(assert (=> d!1931935 m!7002260))

(declare-fun m!7002444 () Bool)

(assert (=> b!6164786 m!7002444))

(assert (=> b!6164787 m!7002264))

(assert (=> b!6164787 m!7002264))

(declare-fun m!7002446 () Bool)

(assert (=> b!6164787 m!7002446))

(assert (=> b!6164787 m!7002268))

(assert (=> b!6164787 m!7002446))

(assert (=> b!6164787 m!7002268))

(declare-fun m!7002448 () Bool)

(assert (=> b!6164787 m!7002448))

(assert (=> b!6164373 d!1931935))

(assert (=> b!6164356 d!1931905))

(declare-fun d!1931937 () Bool)

(declare-fun c!1110539 () Bool)

(assert (=> d!1931937 (= c!1110539 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755803 () Bool)

(assert (=> d!1931937 (= (matchZipper!2118 lt!2336369 (t!378117 s!2326)) e!3755803)))

(declare-fun b!6164788 () Bool)

(assert (=> b!6164788 (= e!3755803 (nullableZipper!1887 lt!2336369))))

(declare-fun b!6164789 () Bool)

(assert (=> b!6164789 (= e!3755803 (matchZipper!2118 (derivationStepZipper!2079 lt!2336369 (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931937 c!1110539) b!6164788))

(assert (= (and d!1931937 (not c!1110539)) b!6164789))

(assert (=> d!1931937 m!7002260))

(declare-fun m!7002450 () Bool)

(assert (=> b!6164788 m!7002450))

(assert (=> b!6164789 m!7002264))

(assert (=> b!6164789 m!7002264))

(declare-fun m!7002452 () Bool)

(assert (=> b!6164789 m!7002452))

(assert (=> b!6164789 m!7002268))

(assert (=> b!6164789 m!7002452))

(assert (=> b!6164789 m!7002268))

(declare-fun m!7002454 () Bool)

(assert (=> b!6164789 m!7002454))

(assert (=> b!6164356 d!1931937))

(declare-fun d!1931939 () Bool)

(declare-fun c!1110540 () Bool)

(assert (=> d!1931939 (= c!1110540 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755804 () Bool)

(assert (=> d!1931939 (= (matchZipper!2118 lt!2336383 (t!378117 s!2326)) e!3755804)))

(declare-fun b!6164790 () Bool)

(assert (=> b!6164790 (= e!3755804 (nullableZipper!1887 lt!2336383))))

(declare-fun b!6164791 () Bool)

(assert (=> b!6164791 (= e!3755804 (matchZipper!2118 (derivationStepZipper!2079 lt!2336383 (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931939 c!1110540) b!6164790))

(assert (= (and d!1931939 (not c!1110540)) b!6164791))

(assert (=> d!1931939 m!7002260))

(declare-fun m!7002456 () Bool)

(assert (=> b!6164790 m!7002456))

(assert (=> b!6164791 m!7002264))

(assert (=> b!6164791 m!7002264))

(declare-fun m!7002458 () Bool)

(assert (=> b!6164791 m!7002458))

(assert (=> b!6164791 m!7002268))

(assert (=> b!6164791 m!7002458))

(assert (=> b!6164791 m!7002268))

(declare-fun m!7002460 () Bool)

(assert (=> b!6164791 m!7002460))

(assert (=> b!6164356 d!1931939))

(declare-fun e!3755805 () Bool)

(declare-fun d!1931941 () Bool)

(assert (=> d!1931941 (= (matchZipper!2118 (set.union lt!2336383 lt!2336370) (t!378117 s!2326)) e!3755805)))

(declare-fun res!2552609 () Bool)

(assert (=> d!1931941 (=> res!2552609 e!3755805)))

(assert (=> d!1931941 (= res!2552609 (matchZipper!2118 lt!2336383 (t!378117 s!2326)))))

(declare-fun lt!2336522 () Unit!157627)

(assert (=> d!1931941 (= lt!2336522 (choose!45834 lt!2336383 lt!2336370 (t!378117 s!2326)))))

(assert (=> d!1931941 (= (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336383 lt!2336370 (t!378117 s!2326)) lt!2336522)))

(declare-fun b!6164792 () Bool)

(assert (=> b!6164792 (= e!3755805 (matchZipper!2118 lt!2336370 (t!378117 s!2326)))))

(assert (= (and d!1931941 (not res!2552609)) b!6164792))

(declare-fun m!7002462 () Bool)

(assert (=> d!1931941 m!7002462))

(assert (=> d!1931941 m!7002088))

(declare-fun m!7002464 () Bool)

(assert (=> d!1931941 m!7002464))

(assert (=> b!6164792 m!7001996))

(assert (=> b!6164356 d!1931941))

(declare-fun bs!1528003 () Bool)

(declare-fun b!6164838 () Bool)

(assert (= bs!1528003 (and b!6164838 b!6164365)))

(declare-fun lambda!336503 () Int)

(assert (=> bs!1528003 (not (= lambda!336503 lambda!336461))))

(declare-fun bs!1528004 () Bool)

(assert (= bs!1528004 (and b!6164838 d!1931877)))

(assert (=> bs!1528004 (not (= lambda!336503 lambda!336483))))

(declare-fun bs!1528005 () Bool)

(assert (= bs!1528005 (and b!6164838 d!1931879)))

(assert (=> bs!1528005 (not (= lambda!336503 lambda!336489))))

(assert (=> bs!1528003 (not (= lambda!336503 lambda!336460))))

(assert (=> bs!1528005 (not (= lambda!336503 lambda!336488))))

(assert (=> b!6164838 true))

(assert (=> b!6164838 true))

(declare-fun bs!1528006 () Bool)

(declare-fun b!6164832 () Bool)

(assert (= bs!1528006 (and b!6164832 b!6164365)))

(declare-fun lambda!336504 () Int)

(assert (=> bs!1528006 (= lambda!336504 lambda!336461)))

(declare-fun bs!1528007 () Bool)

(assert (= bs!1528007 (and b!6164832 d!1931877)))

(assert (=> bs!1528007 (not (= lambda!336504 lambda!336483))))

(declare-fun bs!1528008 () Bool)

(assert (= bs!1528008 (and b!6164832 d!1931879)))

(assert (=> bs!1528008 (= lambda!336504 lambda!336489)))

(assert (=> bs!1528006 (not (= lambda!336504 lambda!336460))))

(assert (=> bs!1528008 (not (= lambda!336504 lambda!336488))))

(declare-fun bs!1528009 () Bool)

(assert (= bs!1528009 (and b!6164832 b!6164838)))

(assert (=> bs!1528009 (not (= lambda!336504 lambda!336503))))

(assert (=> b!6164832 true))

(assert (=> b!6164832 true))

(declare-fun d!1931943 () Bool)

(declare-fun c!1110551 () Bool)

(assert (=> d!1931943 (= c!1110551 (is-EmptyExpr!16106 r!7292))))

(declare-fun e!3755829 () Bool)

(assert (=> d!1931943 (= (matchRSpec!3207 r!7292 s!2326) e!3755829)))

(declare-fun e!3755834 () Bool)

(declare-fun call!513680 () Bool)

(assert (=> b!6164832 (= e!3755834 call!513680)))

(declare-fun b!6164833 () Bool)

(declare-fun e!3755835 () Bool)

(assert (=> b!6164833 (= e!3755835 (= s!2326 (Cons!64493 (c!1110429 r!7292) Nil!64493)))))

(declare-fun b!6164834 () Bool)

(declare-fun c!1110553 () Bool)

(assert (=> b!6164834 (= c!1110553 (is-Union!16106 r!7292))))

(declare-fun e!3755833 () Bool)

(assert (=> b!6164834 (= e!3755835 e!3755833)))

(declare-fun b!6164835 () Bool)

(assert (=> b!6164835 (= e!3755833 e!3755834)))

(declare-fun c!1110554 () Bool)

(assert (=> b!6164835 (= c!1110554 (is-Star!16106 r!7292))))

(declare-fun b!6164836 () Bool)

(declare-fun call!513681 () Bool)

(assert (=> b!6164836 (= e!3755829 call!513681)))

(declare-fun bm!513675 () Bool)

(assert (=> bm!513675 (= call!513680 (Exists!3176 (ite c!1110554 lambda!336503 lambda!336504)))))

(declare-fun b!6164837 () Bool)

(declare-fun c!1110552 () Bool)

(assert (=> b!6164837 (= c!1110552 (is-ElementMatch!16106 r!7292))))

(declare-fun e!3755831 () Bool)

(assert (=> b!6164837 (= e!3755831 e!3755835)))

(declare-fun e!3755830 () Bool)

(assert (=> b!6164838 (= e!3755830 call!513680)))

(declare-fun b!6164839 () Bool)

(declare-fun res!2552629 () Bool)

(assert (=> b!6164839 (=> res!2552629 e!3755830)))

(assert (=> b!6164839 (= res!2552629 call!513681)))

(assert (=> b!6164839 (= e!3755834 e!3755830)))

(declare-fun b!6164840 () Bool)

(declare-fun e!3755832 () Bool)

(assert (=> b!6164840 (= e!3755833 e!3755832)))

(declare-fun res!2552630 () Bool)

(assert (=> b!6164840 (= res!2552630 (matchRSpec!3207 (regOne!32725 r!7292) s!2326))))

(assert (=> b!6164840 (=> res!2552630 e!3755832)))

(declare-fun b!6164841 () Bool)

(assert (=> b!6164841 (= e!3755829 e!3755831)))

(declare-fun res!2552631 () Bool)

(assert (=> b!6164841 (= res!2552631 (not (is-EmptyLang!16106 r!7292)))))

(assert (=> b!6164841 (=> (not res!2552631) (not e!3755831))))

(declare-fun b!6164842 () Bool)

(assert (=> b!6164842 (= e!3755832 (matchRSpec!3207 (regTwo!32725 r!7292) s!2326))))

(declare-fun bm!513676 () Bool)

(assert (=> bm!513676 (= call!513681 (isEmpty!36470 s!2326))))

(assert (= (and d!1931943 c!1110551) b!6164836))

(assert (= (and d!1931943 (not c!1110551)) b!6164841))

(assert (= (and b!6164841 res!2552631) b!6164837))

(assert (= (and b!6164837 c!1110552) b!6164833))

(assert (= (and b!6164837 (not c!1110552)) b!6164834))

(assert (= (and b!6164834 c!1110553) b!6164840))

(assert (= (and b!6164834 (not c!1110553)) b!6164835))

(assert (= (and b!6164840 (not res!2552630)) b!6164842))

(assert (= (and b!6164835 c!1110554) b!6164839))

(assert (= (and b!6164835 (not c!1110554)) b!6164832))

(assert (= (and b!6164839 (not res!2552629)) b!6164838))

(assert (= (or b!6164838 b!6164832) bm!513675))

(assert (= (or b!6164836 b!6164839) bm!513676))

(declare-fun m!7002480 () Bool)

(assert (=> bm!513675 m!7002480))

(declare-fun m!7002482 () Bool)

(assert (=> b!6164840 m!7002482))

(declare-fun m!7002484 () Bool)

(assert (=> b!6164842 m!7002484))

(assert (=> bm!513676 m!7002248))

(assert (=> b!6164377 d!1931943))

(declare-fun b!6164901 () Bool)

(declare-fun e!3755868 () Bool)

(declare-fun e!3755874 () Bool)

(assert (=> b!6164901 (= e!3755868 e!3755874)))

(declare-fun c!1110573 () Bool)

(assert (=> b!6164901 (= c!1110573 (is-EmptyLang!16106 r!7292))))

(declare-fun b!6164902 () Bool)

(declare-fun e!3755873 () Bool)

(assert (=> b!6164902 (= e!3755873 (not (= (head!12734 s!2326) (c!1110429 r!7292))))))

(declare-fun b!6164903 () Bool)

(declare-fun res!2552654 () Bool)

(declare-fun e!3755869 () Bool)

(assert (=> b!6164903 (=> (not res!2552654) (not e!3755869))))

(declare-fun call!513684 () Bool)

(assert (=> b!6164903 (= res!2552654 (not call!513684))))

(declare-fun b!6164904 () Bool)

(declare-fun e!3755871 () Bool)

(declare-fun e!3755870 () Bool)

(assert (=> b!6164904 (= e!3755871 e!3755870)))

(declare-fun res!2552657 () Bool)

(assert (=> b!6164904 (=> (not res!2552657) (not e!3755870))))

(declare-fun lt!2336531 () Bool)

(assert (=> b!6164904 (= res!2552657 (not lt!2336531))))

(declare-fun b!6164905 () Bool)

(declare-fun res!2552659 () Bool)

(assert (=> b!6164905 (=> res!2552659 e!3755873)))

(assert (=> b!6164905 (= res!2552659 (not (isEmpty!36470 (tail!11819 s!2326))))))

(declare-fun b!6164906 () Bool)

(declare-fun res!2552661 () Bool)

(assert (=> b!6164906 (=> res!2552661 e!3755871)))

(assert (=> b!6164906 (= res!2552661 (not (is-ElementMatch!16106 r!7292)))))

(assert (=> b!6164906 (= e!3755874 e!3755871)))

(declare-fun b!6164907 () Bool)

(declare-fun e!3755872 () Bool)

(declare-fun derivativeStep!4826 (Regex!16106 C!32482) Regex!16106)

(assert (=> b!6164907 (= e!3755872 (matchR!8289 (derivativeStep!4826 r!7292 (head!12734 s!2326)) (tail!11819 s!2326)))))

(declare-fun b!6164908 () Bool)

(assert (=> b!6164908 (= e!3755870 e!3755873)))

(declare-fun res!2552660 () Bool)

(assert (=> b!6164908 (=> res!2552660 e!3755873)))

(assert (=> b!6164908 (= res!2552660 call!513684)))

(declare-fun b!6164909 () Bool)

(assert (=> b!6164909 (= e!3755874 (not lt!2336531))))

(declare-fun b!6164910 () Bool)

(assert (=> b!6164910 (= e!3755869 (= (head!12734 s!2326) (c!1110429 r!7292)))))

(declare-fun bm!513679 () Bool)

(assert (=> bm!513679 (= call!513684 (isEmpty!36470 s!2326))))

(declare-fun b!6164912 () Bool)

(assert (=> b!6164912 (= e!3755872 (nullable!6099 r!7292))))

(declare-fun b!6164913 () Bool)

(declare-fun res!2552655 () Bool)

(assert (=> b!6164913 (=> res!2552655 e!3755871)))

(assert (=> b!6164913 (= res!2552655 e!3755869)))

(declare-fun res!2552658 () Bool)

(assert (=> b!6164913 (=> (not res!2552658) (not e!3755869))))

(assert (=> b!6164913 (= res!2552658 lt!2336531)))

(declare-fun b!6164914 () Bool)

(declare-fun res!2552656 () Bool)

(assert (=> b!6164914 (=> (not res!2552656) (not e!3755869))))

(assert (=> b!6164914 (= res!2552656 (isEmpty!36470 (tail!11819 s!2326)))))

(declare-fun d!1931951 () Bool)

(assert (=> d!1931951 e!3755868))

(declare-fun c!1110574 () Bool)

(assert (=> d!1931951 (= c!1110574 (is-EmptyExpr!16106 r!7292))))

(assert (=> d!1931951 (= lt!2336531 e!3755872)))

(declare-fun c!1110575 () Bool)

(assert (=> d!1931951 (= c!1110575 (isEmpty!36470 s!2326))))

(assert (=> d!1931951 (validRegex!7842 r!7292)))

(assert (=> d!1931951 (= (matchR!8289 r!7292 s!2326) lt!2336531)))

(declare-fun b!6164911 () Bool)

(assert (=> b!6164911 (= e!3755868 (= lt!2336531 call!513684))))

(assert (= (and d!1931951 c!1110575) b!6164912))

(assert (= (and d!1931951 (not c!1110575)) b!6164907))

(assert (= (and d!1931951 c!1110574) b!6164911))

(assert (= (and d!1931951 (not c!1110574)) b!6164901))

(assert (= (and b!6164901 c!1110573) b!6164909))

(assert (= (and b!6164901 (not c!1110573)) b!6164906))

(assert (= (and b!6164906 (not res!2552661)) b!6164913))

(assert (= (and b!6164913 res!2552658) b!6164903))

(assert (= (and b!6164903 res!2552654) b!6164914))

(assert (= (and b!6164914 res!2552656) b!6164910))

(assert (= (and b!6164913 (not res!2552655)) b!6164904))

(assert (= (and b!6164904 res!2552657) b!6164908))

(assert (= (and b!6164908 (not res!2552660)) b!6164905))

(assert (= (and b!6164905 (not res!2552659)) b!6164902))

(assert (= (or b!6164911 b!6164903 b!6164908) bm!513679))

(declare-fun m!7002486 () Bool)

(assert (=> b!6164912 m!7002486))

(assert (=> d!1931951 m!7002248))

(assert (=> d!1931951 m!7001990))

(assert (=> b!6164914 m!7002256))

(assert (=> b!6164914 m!7002256))

(declare-fun m!7002488 () Bool)

(assert (=> b!6164914 m!7002488))

(assert (=> b!6164902 m!7002252))

(assert (=> b!6164907 m!7002252))

(assert (=> b!6164907 m!7002252))

(declare-fun m!7002490 () Bool)

(assert (=> b!6164907 m!7002490))

(assert (=> b!6164907 m!7002256))

(assert (=> b!6164907 m!7002490))

(assert (=> b!6164907 m!7002256))

(declare-fun m!7002492 () Bool)

(assert (=> b!6164907 m!7002492))

(assert (=> b!6164905 m!7002256))

(assert (=> b!6164905 m!7002256))

(assert (=> b!6164905 m!7002488))

(assert (=> b!6164910 m!7002252))

(assert (=> bm!513679 m!7002248))

(assert (=> b!6164377 d!1931951))

(declare-fun d!1931953 () Bool)

(assert (=> d!1931953 (= (matchR!8289 r!7292 s!2326) (matchRSpec!3207 r!7292 s!2326))))

(declare-fun lt!2336534 () Unit!157627)

(declare-fun choose!45835 (Regex!16106 List!64617) Unit!157627)

(assert (=> d!1931953 (= lt!2336534 (choose!45835 r!7292 s!2326))))

(assert (=> d!1931953 (validRegex!7842 r!7292)))

(assert (=> d!1931953 (= (mainMatchTheorem!3207 r!7292 s!2326) lt!2336534)))

(declare-fun bs!1528010 () Bool)

(assert (= bs!1528010 d!1931953))

(assert (=> bs!1528010 m!7002096))

(assert (=> bs!1528010 m!7002094))

(declare-fun m!7002514 () Bool)

(assert (=> bs!1528010 m!7002514))

(assert (=> bs!1528010 m!7001990))

(assert (=> b!6164377 d!1931953))

(declare-fun d!1931957 () Bool)

(declare-fun c!1110576 () Bool)

(assert (=> d!1931957 (= c!1110576 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755875 () Bool)

(assert (=> d!1931957 (= (matchZipper!2118 lt!2336370 (t!378117 s!2326)) e!3755875)))

(declare-fun b!6164915 () Bool)

(assert (=> b!6164915 (= e!3755875 (nullableZipper!1887 lt!2336370))))

(declare-fun b!6164916 () Bool)

(assert (=> b!6164916 (= e!3755875 (matchZipper!2118 (derivationStepZipper!2079 lt!2336370 (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931957 c!1110576) b!6164915))

(assert (= (and d!1931957 (not c!1110576)) b!6164916))

(assert (=> d!1931957 m!7002260))

(declare-fun m!7002516 () Bool)

(assert (=> b!6164915 m!7002516))

(assert (=> b!6164916 m!7002264))

(assert (=> b!6164916 m!7002264))

(declare-fun m!7002518 () Bool)

(assert (=> b!6164916 m!7002518))

(assert (=> b!6164916 m!7002268))

(assert (=> b!6164916 m!7002518))

(assert (=> b!6164916 m!7002268))

(declare-fun m!7002520 () Bool)

(assert (=> b!6164916 m!7002520))

(assert (=> b!6164376 d!1931957))

(declare-fun bs!1528011 () Bool)

(declare-fun d!1931959 () Bool)

(assert (= bs!1528011 (and d!1931959 d!1931865)))

(declare-fun lambda!336508 () Int)

(assert (=> bs!1528011 (= lambda!336508 lambda!336480)))

(declare-fun bs!1528012 () Bool)

(assert (= bs!1528012 (and d!1931959 d!1931909)))

(assert (=> bs!1528012 (= lambda!336508 lambda!336492)))

(declare-fun bs!1528013 () Bool)

(assert (= bs!1528013 (and d!1931959 d!1931913)))

(assert (=> bs!1528013 (= lambda!336508 lambda!336495)))

(declare-fun bs!1528014 () Bool)

(assert (= bs!1528014 (and d!1931959 d!1931915)))

(assert (=> bs!1528014 (= lambda!336508 lambda!336498)))

(assert (=> d!1931959 (= (inv!83513 setElem!41787) (forall!15227 (exprs!5990 setElem!41787) lambda!336508))))

(declare-fun bs!1528015 () Bool)

(assert (= bs!1528015 d!1931959))

(declare-fun m!7002522 () Bool)

(assert (=> bs!1528015 m!7002522))

(assert (=> setNonEmpty!41787 d!1931959))

(declare-fun e!3755876 () Bool)

(declare-fun d!1931961 () Bool)

(assert (=> d!1931961 (= (matchZipper!2118 (set.union lt!2336370 lt!2336374) (t!378117 s!2326)) e!3755876)))

(declare-fun res!2552662 () Bool)

(assert (=> d!1931961 (=> res!2552662 e!3755876)))

(assert (=> d!1931961 (= res!2552662 (matchZipper!2118 lt!2336370 (t!378117 s!2326)))))

(declare-fun lt!2336535 () Unit!157627)

(assert (=> d!1931961 (= lt!2336535 (choose!45834 lt!2336370 lt!2336374 (t!378117 s!2326)))))

(assert (=> d!1931961 (= (lemmaZipperConcatMatchesSameAsBothZippers!937 lt!2336370 lt!2336374 (t!378117 s!2326)) lt!2336535)))

(declare-fun b!6164917 () Bool)

(assert (=> b!6164917 (= e!3755876 (matchZipper!2118 lt!2336374 (t!378117 s!2326)))))

(assert (= (and d!1931961 (not res!2552662)) b!6164917))

(assert (=> d!1931961 m!7002064))

(assert (=> d!1931961 m!7001996))

(declare-fun m!7002524 () Bool)

(assert (=> d!1931961 m!7002524))

(assert (=> b!6164917 m!7002014))

(assert (=> b!6164379 d!1931961))

(assert (=> b!6164379 d!1931957))

(declare-fun d!1931963 () Bool)

(declare-fun c!1110577 () Bool)

(assert (=> d!1931963 (= c!1110577 (isEmpty!36470 (t!378117 s!2326)))))

(declare-fun e!3755877 () Bool)

(assert (=> d!1931963 (= (matchZipper!2118 (set.union lt!2336370 lt!2336374) (t!378117 s!2326)) e!3755877)))

(declare-fun b!6164918 () Bool)

(assert (=> b!6164918 (= e!3755877 (nullableZipper!1887 (set.union lt!2336370 lt!2336374)))))

(declare-fun b!6164919 () Bool)

(assert (=> b!6164919 (= e!3755877 (matchZipper!2118 (derivationStepZipper!2079 (set.union lt!2336370 lt!2336374) (head!12734 (t!378117 s!2326))) (tail!11819 (t!378117 s!2326))))))

(assert (= (and d!1931963 c!1110577) b!6164918))

(assert (= (and d!1931963 (not c!1110577)) b!6164919))

(assert (=> d!1931963 m!7002260))

(declare-fun m!7002526 () Bool)

(assert (=> b!6164918 m!7002526))

(assert (=> b!6164919 m!7002264))

(assert (=> b!6164919 m!7002264))

(declare-fun m!7002528 () Bool)

(assert (=> b!6164919 m!7002528))

(assert (=> b!6164919 m!7002268))

(assert (=> b!6164919 m!7002528))

(assert (=> b!6164919 m!7002268))

(declare-fun m!7002530 () Bool)

(assert (=> b!6164919 m!7002530))

(assert (=> b!6164379 d!1931963))

(declare-fun bs!1528016 () Bool)

(declare-fun d!1931965 () Bool)

(assert (= bs!1528016 (and d!1931965 d!1931913)))

(declare-fun lambda!336509 () Int)

(assert (=> bs!1528016 (= lambda!336509 lambda!336495)))

(declare-fun bs!1528017 () Bool)

(assert (= bs!1528017 (and d!1931965 d!1931915)))

(assert (=> bs!1528017 (= lambda!336509 lambda!336498)))

(declare-fun bs!1528018 () Bool)

(assert (= bs!1528018 (and d!1931965 d!1931909)))

(assert (=> bs!1528018 (= lambda!336509 lambda!336492)))

(declare-fun bs!1528019 () Bool)

(assert (= bs!1528019 (and d!1931965 d!1931959)))

(assert (=> bs!1528019 (= lambda!336509 lambda!336508)))

(declare-fun bs!1528020 () Bool)

(assert (= bs!1528020 (and d!1931965 d!1931865)))

(assert (=> bs!1528020 (= lambda!336509 lambda!336480)))

(declare-fun b!6164920 () Bool)

(declare-fun e!3755878 () Bool)

(declare-fun e!3755883 () Bool)

(assert (=> b!6164920 (= e!3755878 e!3755883)))

(declare-fun c!1110581 () Bool)

(assert (=> b!6164920 (= c!1110581 (isEmpty!36466 (exprs!5990 (h!70943 zl!343))))))

(declare-fun b!6164921 () Bool)

(declare-fun e!3755881 () Bool)

(assert (=> b!6164921 (= e!3755883 e!3755881)))

(declare-fun c!1110578 () Bool)

(assert (=> b!6164921 (= c!1110578 (isEmpty!36466 (tail!11818 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun b!6164922 () Bool)

(declare-fun lt!2336536 () Regex!16106)

(assert (=> b!6164922 (= e!3755881 (= lt!2336536 (head!12733 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun b!6164923 () Bool)

(assert (=> b!6164923 (= e!3755883 (isEmptyExpr!1523 lt!2336536))))

(declare-fun b!6164924 () Bool)

(assert (=> b!6164924 (= e!3755881 (isConcat!1046 lt!2336536))))

(declare-fun b!6164925 () Bool)

(declare-fun e!3755882 () Regex!16106)

(assert (=> b!6164925 (= e!3755882 (Concat!24951 (h!70942 (exprs!5990 (h!70943 zl!343))) (generalisedConcat!1703 (t!378118 (exprs!5990 (h!70943 zl!343))))))))

(declare-fun b!6164926 () Bool)

(declare-fun e!3755880 () Bool)

(assert (=> b!6164926 (= e!3755880 (isEmpty!36466 (t!378118 (exprs!5990 (h!70943 zl!343)))))))

(declare-fun b!6164927 () Bool)

(declare-fun e!3755879 () Regex!16106)

(assert (=> b!6164927 (= e!3755879 e!3755882)))

(declare-fun c!1110579 () Bool)

(assert (=> b!6164927 (= c!1110579 (is-Cons!64494 (exprs!5990 (h!70943 zl!343))))))

(assert (=> d!1931965 e!3755878))

(declare-fun res!2552664 () Bool)

(assert (=> d!1931965 (=> (not res!2552664) (not e!3755878))))

(assert (=> d!1931965 (= res!2552664 (validRegex!7842 lt!2336536))))

(assert (=> d!1931965 (= lt!2336536 e!3755879)))

(declare-fun c!1110580 () Bool)

(assert (=> d!1931965 (= c!1110580 e!3755880)))

(declare-fun res!2552663 () Bool)

(assert (=> d!1931965 (=> (not res!2552663) (not e!3755880))))

(assert (=> d!1931965 (= res!2552663 (is-Cons!64494 (exprs!5990 (h!70943 zl!343))))))

(assert (=> d!1931965 (forall!15227 (exprs!5990 (h!70943 zl!343)) lambda!336509)))

(assert (=> d!1931965 (= (generalisedConcat!1703 (exprs!5990 (h!70943 zl!343))) lt!2336536)))

(declare-fun b!6164928 () Bool)

(assert (=> b!6164928 (= e!3755882 EmptyExpr!16106)))

(declare-fun b!6164929 () Bool)

(assert (=> b!6164929 (= e!3755879 (h!70942 (exprs!5990 (h!70943 zl!343))))))

(assert (= (and d!1931965 res!2552663) b!6164926))

(assert (= (and d!1931965 c!1110580) b!6164929))

(assert (= (and d!1931965 (not c!1110580)) b!6164927))

(assert (= (and b!6164927 c!1110579) b!6164925))

(assert (= (and b!6164927 (not c!1110579)) b!6164928))

(assert (= (and d!1931965 res!2552664) b!6164920))

(assert (= (and b!6164920 c!1110581) b!6164923))

(assert (= (and b!6164920 (not c!1110581)) b!6164921))

(assert (= (and b!6164921 c!1110578) b!6164922))

(assert (= (and b!6164921 (not c!1110578)) b!6164924))

(declare-fun m!7002532 () Bool)

(assert (=> d!1931965 m!7002532))

(declare-fun m!7002534 () Bool)

(assert (=> d!1931965 m!7002534))

(declare-fun m!7002536 () Bool)

(assert (=> b!6164921 m!7002536))

(assert (=> b!6164921 m!7002536))

(declare-fun m!7002538 () Bool)

(assert (=> b!6164921 m!7002538))

(declare-fun m!7002540 () Bool)

(assert (=> b!6164920 m!7002540))

(assert (=> b!6164926 m!7002066))

(declare-fun m!7002542 () Bool)

(assert (=> b!6164925 m!7002542))

(declare-fun m!7002544 () Bool)

(assert (=> b!6164924 m!7002544))

(declare-fun m!7002546 () Bool)

(assert (=> b!6164922 m!7002546))

(declare-fun m!7002548 () Bool)

(assert (=> b!6164923 m!7002548))

(assert (=> b!6164362 d!1931965))

(declare-fun d!1931967 () Bool)

(declare-fun e!3755888 () Bool)

(assert (=> d!1931967 e!3755888))

(declare-fun res!2552667 () Bool)

(assert (=> d!1931967 (=> (not res!2552667) (not e!3755888))))

(declare-fun lt!2336541 () List!64619)

(declare-fun noDuplicate!1953 (List!64619) Bool)

(assert (=> d!1931967 (= res!2552667 (noDuplicate!1953 lt!2336541))))

(declare-fun choose!45836 ((Set Context!10980)) List!64619)

(assert (=> d!1931967 (= lt!2336541 (choose!45836 z!1189))))

(assert (=> d!1931967 (= (toList!9890 z!1189) lt!2336541)))

(declare-fun b!6164936 () Bool)

(declare-fun content!12034 (List!64619) (Set Context!10980))

(assert (=> b!6164936 (= e!3755888 (= (content!12034 lt!2336541) z!1189))))

(assert (= (and d!1931967 res!2552667) b!6164936))

(declare-fun m!7002550 () Bool)

(assert (=> d!1931967 m!7002550))

(declare-fun m!7002552 () Bool)

(assert (=> d!1931967 m!7002552))

(declare-fun m!7002554 () Bool)

(assert (=> b!6164936 m!7002554))

(assert (=> b!6164361 d!1931967))

(declare-fun d!1931969 () Bool)

(assert (=> d!1931969 (= (flatMap!1611 lt!2336382 lambda!336462) (choose!45832 lt!2336382 lambda!336462))))

(declare-fun bs!1528021 () Bool)

(assert (= bs!1528021 d!1931969))

(declare-fun m!7002556 () Bool)

(assert (=> bs!1528021 m!7002556))

(assert (=> b!6164381 d!1931969))

(declare-fun d!1931971 () Bool)

(declare-fun c!1110584 () Bool)

(assert (=> d!1931971 (= c!1110584 (isEmpty!36470 s!2326))))

(declare-fun e!3755889 () Bool)

(assert (=> d!1931971 (= (matchZipper!2118 z!1189 s!2326) e!3755889)))

(declare-fun b!6164937 () Bool)

(assert (=> b!6164937 (= e!3755889 (nullableZipper!1887 z!1189))))

(declare-fun b!6164938 () Bool)

(assert (=> b!6164938 (= e!3755889 (matchZipper!2118 (derivationStepZipper!2079 z!1189 (head!12734 s!2326)) (tail!11819 s!2326)))))

(assert (= (and d!1931971 c!1110584) b!6164937))

(assert (= (and d!1931971 (not c!1110584)) b!6164938))

(assert (=> d!1931971 m!7002248))

(declare-fun m!7002558 () Bool)

(assert (=> b!6164937 m!7002558))

(assert (=> b!6164938 m!7002252))

(assert (=> b!6164938 m!7002252))

(declare-fun m!7002560 () Bool)

(assert (=> b!6164938 m!7002560))

(assert (=> b!6164938 m!7002256))

(assert (=> b!6164938 m!7002560))

(assert (=> b!6164938 m!7002256))

(declare-fun m!7002562 () Bool)

(assert (=> b!6164938 m!7002562))

(assert (=> b!6164381 d!1931971))

(declare-fun d!1931973 () Bool)

(assert (=> d!1931973 (= (flatMap!1611 lt!2336353 lambda!336462) (dynLambda!25432 lambda!336462 lt!2336362))))

(declare-fun lt!2336542 () Unit!157627)

(assert (=> d!1931973 (= lt!2336542 (choose!45833 lt!2336353 lt!2336362 lambda!336462))))

(assert (=> d!1931973 (= lt!2336353 (set.insert lt!2336362 (as set.empty (Set Context!10980))))))

(assert (=> d!1931973 (= (lemmaFlatMapOnSingletonSet!1137 lt!2336353 lt!2336362 lambda!336462) lt!2336542)))

(declare-fun b_lambda!234687 () Bool)

(assert (=> (not b_lambda!234687) (not d!1931973)))

(declare-fun bs!1528022 () Bool)

(assert (= bs!1528022 d!1931973))

(assert (=> bs!1528022 m!7002036))

(declare-fun m!7002564 () Bool)

(assert (=> bs!1528022 m!7002564))

(declare-fun m!7002566 () Bool)

(assert (=> bs!1528022 m!7002566))

(assert (=> bs!1528022 m!7002018))

(assert (=> b!6164381 d!1931973))

(declare-fun b!6164939 () Bool)

(declare-fun e!3755891 () (Set Context!10980))

(assert (=> b!6164939 (= e!3755891 (as set.empty (Set Context!10980)))))

(declare-fun d!1931975 () Bool)

(declare-fun c!1110585 () Bool)

(declare-fun e!3755890 () Bool)

(assert (=> d!1931975 (= c!1110585 e!3755890)))

(declare-fun res!2552668 () Bool)

(assert (=> d!1931975 (=> (not res!2552668) (not e!3755890))))

(assert (=> d!1931975 (= res!2552668 (is-Cons!64494 (exprs!5990 lt!2336376)))))

(declare-fun e!3755892 () (Set Context!10980))

(assert (=> d!1931975 (= (derivationStepZipperUp!1280 lt!2336376 (h!70941 s!2326)) e!3755892)))

(declare-fun b!6164940 () Bool)

(assert (=> b!6164940 (= e!3755890 (nullable!6099 (h!70942 (exprs!5990 lt!2336376))))))

(declare-fun b!6164941 () Bool)

(assert (=> b!6164941 (= e!3755892 e!3755891)))

(declare-fun c!1110586 () Bool)

(assert (=> b!6164941 (= c!1110586 (is-Cons!64494 (exprs!5990 lt!2336376)))))

(declare-fun b!6164942 () Bool)

(declare-fun call!513685 () (Set Context!10980))

(assert (=> b!6164942 (= e!3755891 call!513685)))

(declare-fun b!6164943 () Bool)

(assert (=> b!6164943 (= e!3755892 (set.union call!513685 (derivationStepZipperUp!1280 (Context!10981 (t!378118 (exprs!5990 lt!2336376))) (h!70941 s!2326))))))

(declare-fun bm!513680 () Bool)

(assert (=> bm!513680 (= call!513685 (derivationStepZipperDown!1354 (h!70942 (exprs!5990 lt!2336376)) (Context!10981 (t!378118 (exprs!5990 lt!2336376))) (h!70941 s!2326)))))

(assert (= (and d!1931975 res!2552668) b!6164940))

(assert (= (and d!1931975 c!1110585) b!6164943))

(assert (= (and d!1931975 (not c!1110585)) b!6164941))

(assert (= (and b!6164941 c!1110586) b!6164942))

(assert (= (and b!6164941 (not c!1110586)) b!6164939))

(assert (= (or b!6164943 b!6164942) bm!513680))

(declare-fun m!7002568 () Bool)

(assert (=> b!6164940 m!7002568))

(declare-fun m!7002570 () Bool)

(assert (=> b!6164943 m!7002570))

(declare-fun m!7002572 () Bool)

(assert (=> bm!513680 m!7002572))

(assert (=> b!6164381 d!1931975))

(declare-fun d!1931977 () Bool)

(assert (=> d!1931977 (= (flatMap!1611 lt!2336353 lambda!336462) (choose!45832 lt!2336353 lambda!336462))))

(declare-fun bs!1528024 () Bool)

(assert (= bs!1528024 d!1931977))

(declare-fun m!7002574 () Bool)

(assert (=> bs!1528024 m!7002574))

(assert (=> b!6164381 d!1931977))

(declare-fun b!6164946 () Bool)

(declare-fun e!3755895 () (Set Context!10980))

(assert (=> b!6164946 (= e!3755895 (as set.empty (Set Context!10980)))))

(declare-fun d!1931979 () Bool)

(declare-fun c!1110588 () Bool)

(declare-fun e!3755894 () Bool)

(assert (=> d!1931979 (= c!1110588 e!3755894)))

(declare-fun res!2552669 () Bool)

(assert (=> d!1931979 (=> (not res!2552669) (not e!3755894))))

(assert (=> d!1931979 (= res!2552669 (is-Cons!64494 (exprs!5990 lt!2336362)))))

(declare-fun e!3755896 () (Set Context!10980))

(assert (=> d!1931979 (= (derivationStepZipperUp!1280 lt!2336362 (h!70941 s!2326)) e!3755896)))

(declare-fun b!6164947 () Bool)

(assert (=> b!6164947 (= e!3755894 (nullable!6099 (h!70942 (exprs!5990 lt!2336362))))))

(declare-fun b!6164948 () Bool)

(assert (=> b!6164948 (= e!3755896 e!3755895)))

(declare-fun c!1110589 () Bool)

(assert (=> b!6164948 (= c!1110589 (is-Cons!64494 (exprs!5990 lt!2336362)))))

(declare-fun b!6164949 () Bool)

(declare-fun call!513686 () (Set Context!10980))

(assert (=> b!6164949 (= e!3755895 call!513686)))

(declare-fun b!6164950 () Bool)

(assert (=> b!6164950 (= e!3755896 (set.union call!513686 (derivationStepZipperUp!1280 (Context!10981 (t!378118 (exprs!5990 lt!2336362))) (h!70941 s!2326))))))

(declare-fun bm!513681 () Bool)

(assert (=> bm!513681 (= call!513686 (derivationStepZipperDown!1354 (h!70942 (exprs!5990 lt!2336362)) (Context!10981 (t!378118 (exprs!5990 lt!2336362))) (h!70941 s!2326)))))

(assert (= (and d!1931979 res!2552669) b!6164947))

(assert (= (and d!1931979 c!1110588) b!6164950))

(assert (= (and d!1931979 (not c!1110588)) b!6164948))

(assert (= (and b!6164948 c!1110589) b!6164949))

(assert (= (and b!6164948 (not c!1110589)) b!6164946))

(assert (= (or b!6164950 b!6164949) bm!513681))

(declare-fun m!7002576 () Bool)

(assert (=> b!6164947 m!7002576))

(declare-fun m!7002578 () Bool)

(assert (=> b!6164950 m!7002578))

(declare-fun m!7002580 () Bool)

(assert (=> bm!513681 m!7002580))

(assert (=> b!6164381 d!1931979))

(declare-fun d!1931981 () Bool)

(assert (=> d!1931981 (= (nullable!6099 (regOne!32725 (regOne!32724 r!7292))) (nullableFct!2063 (regOne!32725 (regOne!32724 r!7292))))))

(declare-fun bs!1528025 () Bool)

(assert (= bs!1528025 d!1931981))

(declare-fun m!7002582 () Bool)

(assert (=> bs!1528025 m!7002582))

(assert (=> b!6164381 d!1931981))

(declare-fun d!1931983 () Bool)

(assert (=> d!1931983 (= (flatMap!1611 lt!2336382 lambda!336462) (dynLambda!25432 lambda!336462 lt!2336376))))

(declare-fun lt!2336544 () Unit!157627)

(assert (=> d!1931983 (= lt!2336544 (choose!45833 lt!2336382 lt!2336376 lambda!336462))))

(assert (=> d!1931983 (= lt!2336382 (set.insert lt!2336376 (as set.empty (Set Context!10980))))))

(assert (=> d!1931983 (= (lemmaFlatMapOnSingletonSet!1137 lt!2336382 lt!2336376 lambda!336462) lt!2336544)))

(declare-fun b_lambda!234689 () Bool)

(assert (=> (not b_lambda!234689) (not d!1931983)))

(declare-fun bs!1528026 () Bool)

(assert (= bs!1528026 d!1931983))

(assert (=> bs!1528026 m!7002022))

(declare-fun m!7002588 () Bool)

(assert (=> bs!1528026 m!7002588))

(declare-fun m!7002590 () Bool)

(assert (=> bs!1528026 m!7002590))

(assert (=> bs!1528026 m!7002020))

(assert (=> b!6164381 d!1931983))

(declare-fun d!1931987 () Bool)

(assert (=> d!1931987 (= (nullable!6099 (regTwo!32725 (regOne!32724 r!7292))) (nullableFct!2063 (regTwo!32725 (regOne!32724 r!7292))))))

(declare-fun bs!1528027 () Bool)

(assert (= bs!1528027 d!1931987))

(declare-fun m!7002592 () Bool)

(assert (=> bs!1528027 m!7002592))

(assert (=> b!6164381 d!1931987))

(declare-fun d!1931989 () Bool)

(declare-fun c!1110590 () Bool)

(assert (=> d!1931989 (= c!1110590 (isEmpty!36470 s!2326))))

(declare-fun e!3755897 () Bool)

(assert (=> d!1931989 (= (matchZipper!2118 lt!2336353 s!2326) e!3755897)))

(declare-fun b!6164951 () Bool)

(assert (=> b!6164951 (= e!3755897 (nullableZipper!1887 lt!2336353))))

(declare-fun b!6164952 () Bool)

(assert (=> b!6164952 (= e!3755897 (matchZipper!2118 (derivationStepZipper!2079 lt!2336353 (head!12734 s!2326)) (tail!11819 s!2326)))))

(assert (= (and d!1931989 c!1110590) b!6164951))

(assert (= (and d!1931989 (not c!1110590)) b!6164952))

(assert (=> d!1931989 m!7002248))

(declare-fun m!7002594 () Bool)

(assert (=> b!6164951 m!7002594))

(assert (=> b!6164952 m!7002252))

(assert (=> b!6164952 m!7002252))

(declare-fun m!7002596 () Bool)

(assert (=> b!6164952 m!7002596))

(assert (=> b!6164952 m!7002256))

(assert (=> b!6164952 m!7002596))

(assert (=> b!6164952 m!7002256))

(declare-fun m!7002598 () Bool)

(assert (=> b!6164952 m!7002598))

(assert (=> b!6164381 d!1931989))

(assert (=> b!6164360 d!1931869))

(assert (=> b!6164380 d!1931957))

(declare-fun condSetEmpty!41793 () Bool)

(assert (=> setNonEmpty!41787 (= condSetEmpty!41793 (= setRest!41787 (as set.empty (Set Context!10980))))))

(declare-fun setRes!41793 () Bool)

(assert (=> setNonEmpty!41787 (= tp!1721066 setRes!41793)))

(declare-fun setIsEmpty!41793 () Bool)

(assert (=> setIsEmpty!41793 setRes!41793))

(declare-fun tp!1721108 () Bool)

(declare-fun setElem!41793 () Context!10980)

(declare-fun e!3755900 () Bool)

(declare-fun setNonEmpty!41793 () Bool)

(assert (=> setNonEmpty!41793 (= setRes!41793 (and tp!1721108 (inv!83513 setElem!41793) e!3755900))))

(declare-fun setRest!41793 () (Set Context!10980))

(assert (=> setNonEmpty!41793 (= setRest!41787 (set.union (set.insert setElem!41793 (as set.empty (Set Context!10980))) setRest!41793))))

(declare-fun b!6164957 () Bool)

(declare-fun tp!1721107 () Bool)

(assert (=> b!6164957 (= e!3755900 tp!1721107)))

(assert (= (and setNonEmpty!41787 condSetEmpty!41793) setIsEmpty!41793))

(assert (= (and setNonEmpty!41787 (not condSetEmpty!41793)) setNonEmpty!41793))

(assert (= setNonEmpty!41793 b!6164957))

(declare-fun m!7002600 () Bool)

(assert (=> setNonEmpty!41793 m!7002600))

(declare-fun b!6164962 () Bool)

(declare-fun e!3755903 () Bool)

(declare-fun tp!1721111 () Bool)

(assert (=> b!6164962 (= e!3755903 (and tp_is_empty!41465 tp!1721111))))

(assert (=> b!6164364 (= tp!1721064 e!3755903)))

(assert (= (and b!6164364 (is-Cons!64493 (t!378117 s!2326))) b!6164962))

(declare-fun b!6164970 () Bool)

(declare-fun e!3755909 () Bool)

(declare-fun tp!1721116 () Bool)

(assert (=> b!6164970 (= e!3755909 tp!1721116)))

(declare-fun b!6164969 () Bool)

(declare-fun e!3755908 () Bool)

(declare-fun tp!1721117 () Bool)

(assert (=> b!6164969 (= e!3755908 (and (inv!83513 (h!70943 (t!378119 zl!343))) e!3755909 tp!1721117))))

(assert (=> b!6164392 (= tp!1721068 e!3755908)))

(assert (= b!6164969 b!6164970))

(assert (= (and b!6164392 (is-Cons!64495 (t!378119 zl!343))) b!6164969))

(declare-fun m!7002602 () Bool)

(assert (=> b!6164969 m!7002602))

(declare-fun b!6164981 () Bool)

(declare-fun e!3755912 () Bool)

(assert (=> b!6164981 (= e!3755912 tp_is_empty!41465)))

(declare-fun b!6164983 () Bool)

(declare-fun tp!1721132 () Bool)

(assert (=> b!6164983 (= e!3755912 tp!1721132)))

(declare-fun b!6164984 () Bool)

(declare-fun tp!1721128 () Bool)

(declare-fun tp!1721129 () Bool)

(assert (=> b!6164984 (= e!3755912 (and tp!1721128 tp!1721129))))

(assert (=> b!6164386 (= tp!1721071 e!3755912)))

(declare-fun b!6164982 () Bool)

(declare-fun tp!1721130 () Bool)

(declare-fun tp!1721131 () Bool)

(assert (=> b!6164982 (= e!3755912 (and tp!1721130 tp!1721131))))

(assert (= (and b!6164386 (is-ElementMatch!16106 (regOne!32725 r!7292))) b!6164981))

(assert (= (and b!6164386 (is-Concat!24951 (regOne!32725 r!7292))) b!6164982))

(assert (= (and b!6164386 (is-Star!16106 (regOne!32725 r!7292))) b!6164983))

(assert (= (and b!6164386 (is-Union!16106 (regOne!32725 r!7292))) b!6164984))

(declare-fun b!6164985 () Bool)

(declare-fun e!3755913 () Bool)

(assert (=> b!6164985 (= e!3755913 tp_is_empty!41465)))

(declare-fun b!6164987 () Bool)

(declare-fun tp!1721137 () Bool)

(assert (=> b!6164987 (= e!3755913 tp!1721137)))

(declare-fun b!6164988 () Bool)

(declare-fun tp!1721133 () Bool)

(declare-fun tp!1721134 () Bool)

(assert (=> b!6164988 (= e!3755913 (and tp!1721133 tp!1721134))))

(assert (=> b!6164386 (= tp!1721069 e!3755913)))

(declare-fun b!6164986 () Bool)

(declare-fun tp!1721135 () Bool)

(declare-fun tp!1721136 () Bool)

(assert (=> b!6164986 (= e!3755913 (and tp!1721135 tp!1721136))))

(assert (= (and b!6164386 (is-ElementMatch!16106 (regTwo!32725 r!7292))) b!6164985))

(assert (= (and b!6164386 (is-Concat!24951 (regTwo!32725 r!7292))) b!6164986))

(assert (= (and b!6164386 (is-Star!16106 (regTwo!32725 r!7292))) b!6164987))

(assert (= (and b!6164386 (is-Union!16106 (regTwo!32725 r!7292))) b!6164988))

(declare-fun b!6164993 () Bool)

(declare-fun e!3755916 () Bool)

(declare-fun tp!1721142 () Bool)

(declare-fun tp!1721143 () Bool)

(assert (=> b!6164993 (= e!3755916 (and tp!1721142 tp!1721143))))

(assert (=> b!6164366 (= tp!1721065 e!3755916)))

(assert (= (and b!6164366 (is-Cons!64494 (exprs!5990 (h!70943 zl!343)))) b!6164993))

(declare-fun b!6164994 () Bool)

(declare-fun e!3755917 () Bool)

(assert (=> b!6164994 (= e!3755917 tp_is_empty!41465)))

(declare-fun b!6164996 () Bool)

(declare-fun tp!1721148 () Bool)

(assert (=> b!6164996 (= e!3755917 tp!1721148)))

(declare-fun b!6164997 () Bool)

(declare-fun tp!1721144 () Bool)

(declare-fun tp!1721145 () Bool)

(assert (=> b!6164997 (= e!3755917 (and tp!1721144 tp!1721145))))

(assert (=> b!6164385 (= tp!1721067 e!3755917)))

(declare-fun b!6164995 () Bool)

(declare-fun tp!1721146 () Bool)

(declare-fun tp!1721147 () Bool)

(assert (=> b!6164995 (= e!3755917 (and tp!1721146 tp!1721147))))

(assert (= (and b!6164385 (is-ElementMatch!16106 (reg!16435 r!7292))) b!6164994))

(assert (= (and b!6164385 (is-Concat!24951 (reg!16435 r!7292))) b!6164995))

(assert (= (and b!6164385 (is-Star!16106 (reg!16435 r!7292))) b!6164996))

(assert (= (and b!6164385 (is-Union!16106 (reg!16435 r!7292))) b!6164997))

(declare-fun b!6164998 () Bool)

(declare-fun e!3755918 () Bool)

(assert (=> b!6164998 (= e!3755918 tp_is_empty!41465)))

(declare-fun b!6165000 () Bool)

(declare-fun tp!1721153 () Bool)

(assert (=> b!6165000 (= e!3755918 tp!1721153)))

(declare-fun b!6165001 () Bool)

(declare-fun tp!1721149 () Bool)

(declare-fun tp!1721150 () Bool)

(assert (=> b!6165001 (= e!3755918 (and tp!1721149 tp!1721150))))

(assert (=> b!6164355 (= tp!1721072 e!3755918)))

(declare-fun b!6164999 () Bool)

(declare-fun tp!1721151 () Bool)

(declare-fun tp!1721152 () Bool)

(assert (=> b!6164999 (= e!3755918 (and tp!1721151 tp!1721152))))

(assert (= (and b!6164355 (is-ElementMatch!16106 (regOne!32724 r!7292))) b!6164998))

(assert (= (and b!6164355 (is-Concat!24951 (regOne!32724 r!7292))) b!6164999))

(assert (= (and b!6164355 (is-Star!16106 (regOne!32724 r!7292))) b!6165000))

(assert (= (and b!6164355 (is-Union!16106 (regOne!32724 r!7292))) b!6165001))

(declare-fun b!6165002 () Bool)

(declare-fun e!3755919 () Bool)

(assert (=> b!6165002 (= e!3755919 tp_is_empty!41465)))

(declare-fun b!6165004 () Bool)

(declare-fun tp!1721158 () Bool)

(assert (=> b!6165004 (= e!3755919 tp!1721158)))

(declare-fun b!6165005 () Bool)

(declare-fun tp!1721154 () Bool)

(declare-fun tp!1721155 () Bool)

(assert (=> b!6165005 (= e!3755919 (and tp!1721154 tp!1721155))))

(assert (=> b!6164355 (= tp!1721063 e!3755919)))

(declare-fun b!6165003 () Bool)

(declare-fun tp!1721156 () Bool)

(declare-fun tp!1721157 () Bool)

(assert (=> b!6165003 (= e!3755919 (and tp!1721156 tp!1721157))))

(assert (= (and b!6164355 (is-ElementMatch!16106 (regTwo!32724 r!7292))) b!6165002))

(assert (= (and b!6164355 (is-Concat!24951 (regTwo!32724 r!7292))) b!6165003))

(assert (= (and b!6164355 (is-Star!16106 (regTwo!32724 r!7292))) b!6165004))

(assert (= (and b!6164355 (is-Union!16106 (regTwo!32724 r!7292))) b!6165005))

(declare-fun b!6165006 () Bool)

(declare-fun e!3755920 () Bool)

(declare-fun tp!1721159 () Bool)

(declare-fun tp!1721160 () Bool)

(assert (=> b!6165006 (= e!3755920 (and tp!1721159 tp!1721160))))

(assert (=> b!6164371 (= tp!1721070 e!3755920)))

(assert (= (and b!6164371 (is-Cons!64494 (exprs!5990 setElem!41787))) b!6165006))

(declare-fun b_lambda!234691 () Bool)

(assert (= b_lambda!234687 (or b!6164389 b_lambda!234691)))

(declare-fun bs!1528028 () Bool)

(declare-fun d!1931991 () Bool)

(assert (= bs!1528028 (and d!1931991 b!6164389)))

(assert (=> bs!1528028 (= (dynLambda!25432 lambda!336462 lt!2336362) (derivationStepZipperUp!1280 lt!2336362 (h!70941 s!2326)))))

(assert (=> bs!1528028 m!7002028))

(assert (=> d!1931973 d!1931991))

(declare-fun b_lambda!234693 () Bool)

(assert (= b_lambda!234685 (or b!6164389 b_lambda!234693)))

(declare-fun bs!1528029 () Bool)

(declare-fun d!1931993 () Bool)

(assert (= bs!1528029 (and d!1931993 b!6164389)))

(assert (=> bs!1528029 (= (dynLambda!25432 lambda!336462 (h!70943 zl!343)) (derivationStepZipperUp!1280 (h!70943 zl!343) (h!70941 s!2326)))))

(assert (=> bs!1528029 m!7002044))

(assert (=> d!1931893 d!1931993))

(declare-fun b_lambda!234695 () Bool)

(assert (= b_lambda!234689 (or b!6164389 b_lambda!234695)))

(declare-fun bs!1528030 () Bool)

(declare-fun d!1931995 () Bool)

(assert (= bs!1528030 (and d!1931995 b!6164389)))

(assert (=> bs!1528030 (= (dynLambda!25432 lambda!336462 lt!2336376) (derivationStepZipperUp!1280 lt!2336376 (h!70941 s!2326)))))

(assert (=> bs!1528030 m!7002032))

(assert (=> d!1931983 d!1931995))

(push 1)

(assert (not b!6165000))

(assert (not bm!513662))

(assert (not bm!513668))

(assert (not bm!513676))

(assert (not b!6164937))

(assert (not d!1931969))

(assert (not b!6164662))

(assert (not d!1931931))

(assert (not bm!513630))

(assert (not d!1931867))

(assert (not bm!513663))

(assert (not b!6164952))

(assert (not b!6164950))

(assert (not b!6164660))

(assert (not d!1931953))

(assert (not b!6164708))

(assert (not b!6164905))

(assert (not b!6164923))

(assert (not b!6164914))

(assert (not b_lambda!234691))

(assert (not b!6164735))

(assert (not b!6164920))

(assert (not b!6164947))

(assert (not bm!513637))

(assert (not bm!513680))

(assert (not d!1931933))

(assert (not b!6164988))

(assert (not bm!513631))

(assert (not b!6164578))

(assert (not bm!513655))

(assert (not setNonEmpty!41793))

(assert (not d!1931877))

(assert (not d!1931905))

(assert (not b!6164652))

(assert (not d!1931879))

(assert (not b!6164938))

(assert (not d!1931907))

(assert (not b!6164789))

(assert (not bm!513635))

(assert (not d!1931889))

(assert (not b!6164657))

(assert (not b!6164916))

(assert (not b!6164917))

(assert (not d!1931909))

(assert (not d!1931873))

(assert (not b!6164739))

(assert (not b!6164699))

(assert (not b!6164786))

(assert (not bm!513681))

(assert (not b!6164987))

(assert (not d!1931881))

(assert (not d!1931989))

(assert (not b!6164621))

(assert (not b!6164709))

(assert (not bs!1528029))

(assert (not b!6164693))

(assert (not b!6164705))

(assert (not d!1931971))

(assert (not b!6164639))

(assert (not b!6164732))

(assert (not d!1931959))

(assert (not d!1931915))

(assert (not b_lambda!234695))

(assert (not b!6164791))

(assert (not b!6164999))

(assert (not b!6164986))

(assert (not b!6164733))

(assert (not bm!513651))

(assert (not d!1931941))

(assert (not b!6164910))

(assert (not b!6164614))

(assert (not b!6164583))

(assert (not b!6164785))

(assert (not b!6164617))

(assert (not b!6164592))

(assert (not b!6164757))

(assert (not b!6164840))

(assert (not b!6164983))

(assert (not b!6164902))

(assert (not b!6164922))

(assert (not b!6164615))

(assert (not bm!513650))

(assert (not bm!513679))

(assert (not b!6164582))

(assert (not d!1931965))

(assert (not d!1931981))

(assert (not d!1931977))

(assert (not d!1931987))

(assert (not b!6164594))

(assert (not b!6164915))

(assert (not b!6164584))

(assert (not b!6164701))

(assert (not d!1931967))

(assert (not d!1931903))

(assert (not b!6164970))

(assert (not b!6164907))

(assert (not d!1931895))

(assert (not b!6164787))

(assert (not b!6164737))

(assert (not b!6164790))

(assert (not bm!513669))

(assert (not b!6164619))

(assert (not b!6164951))

(assert (not b!6164595))

(assert (not b!6164940))

(assert (not b!6164842))

(assert (not b!6165003))

(assert (not bm!513661))

(assert (not b!6164921))

(assert (not bm!513656))

(assert (not b!6165001))

(assert (not b!6164924))

(assert (not b!6164618))

(assert (not bm!513636))

(assert (not d!1931865))

(assert (not b!6164969))

(assert (not d!1931869))

(assert (not d!1931957))

(assert (not b!6164936))

(assert (not b!6164912))

(assert (not d!1931983))

(assert (not b!6164995))

(assert (not b!6164734))

(assert (not b!6164706))

(assert (not b!6164925))

(assert (not b!6164918))

(assert (not d!1931893))

(assert (not b!6164996))

(assert (not bm!513657))

(assert (not b!6164665))

(assert (not b!6164736))

(assert (not b!6164919))

(assert (not d!1931961))

(assert (not b!6164993))

(assert (not d!1931871))

(assert (not b!6164957))

(assert (not d!1931963))

(assert (not bs!1528028))

(assert (not b!6164593))

(assert (not b!6164962))

(assert (not b!6164748))

(assert (not b!6164581))

(assert (not bs!1528030))

(assert (not b!6164580))

(assert (not b!6164943))

(assert (not d!1931951))

(assert (not bm!513675))

(assert (not b!6164707))

(assert (not b!6165005))

(assert (not b!6164984))

(assert (not d!1931913))

(assert (not b!6164579))

(assert (not bm!513667))

(assert (not b!6164792))

(assert (not d!1931939))

(assert (not d!1931973))

(assert (not b!6164770))

(assert (not b!6164997))

(assert (not b!6164780))

(assert (not b!6164926))

(assert tp_is_empty!41465)

(assert (not b!6164982))

(assert (not d!1931935))

(assert (not d!1931937))

(assert (not b!6165006))

(assert (not b!6165004))

(assert (not b_lambda!234693))

(assert (not b!6164655))

(assert (not d!1931875))

(assert (not b!6164553))

(assert (not b!6164788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

