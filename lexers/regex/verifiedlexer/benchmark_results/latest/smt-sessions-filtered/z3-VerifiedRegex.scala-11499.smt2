; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!628234 () Bool)

(assert start!628234)

(declare-fun b!6340627 () Bool)

(assert (=> b!6340627 true))

(assert (=> b!6340627 true))

(declare-fun lambda!348314 () Int)

(declare-fun lambda!348313 () Int)

(assert (=> b!6340627 (not (= lambda!348314 lambda!348313))))

(assert (=> b!6340627 true))

(assert (=> b!6340627 true))

(declare-fun b!6340632 () Bool)

(assert (=> b!6340632 true))

(declare-fun b!6340626 () Bool)

(declare-fun e!3851314 () Bool)

(declare-fun tp!1768292 () Bool)

(declare-fun tp!1768293 () Bool)

(assert (=> b!6340626 (= e!3851314 (and tp!1768292 tp!1768293))))

(declare-fun e!3851304 () Bool)

(declare-fun e!3851312 () Bool)

(assert (=> b!6340627 (= e!3851304 e!3851312)))

(declare-fun res!2609375 () Bool)

(assert (=> b!6340627 (=> res!2609375 e!3851312)))

(declare-fun lt!2362426 () Bool)

(declare-fun lt!2362412 () Bool)

(declare-datatypes ((C!32760 0))(
  ( (C!32761 (val!26082 Int)) )
))
(declare-datatypes ((List!65034 0))(
  ( (Nil!64910) (Cons!64910 (h!71358 C!32760) (t!378620 List!65034)) )
))
(declare-fun s!2326 () List!65034)

(get-info :version)

(assert (=> b!6340627 (= res!2609375 (or (not (= lt!2362426 lt!2362412)) ((_ is Nil!64910) s!2326)))))

(declare-fun Exists!3315 (Int) Bool)

(assert (=> b!6340627 (= (Exists!3315 lambda!348313) (Exists!3315 lambda!348314))))

(declare-datatypes ((Unit!158311 0))(
  ( (Unit!158312) )
))
(declare-fun lt!2362421 () Unit!158311)

(declare-datatypes ((Regex!16245 0))(
  ( (ElementMatch!16245 (c!1152752 C!32760)) (Concat!25090 (regOne!33002 Regex!16245) (regTwo!33002 Regex!16245)) (EmptyExpr!16245) (Star!16245 (reg!16574 Regex!16245)) (EmptyLang!16245) (Union!16245 (regOne!33003 Regex!16245) (regTwo!33003 Regex!16245)) )
))
(declare-fun r!7292 () Regex!16245)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1852 (Regex!16245 Regex!16245 List!65034) Unit!158311)

(assert (=> b!6340627 (= lt!2362421 (lemmaExistCutMatchRandMatchRSpecEquivalent!1852 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326))))

(assert (=> b!6340627 (= lt!2362412 (Exists!3315 lambda!348313))))

(declare-datatypes ((tuple2!66448 0))(
  ( (tuple2!66449 (_1!36527 List!65034) (_2!36527 List!65034)) )
))
(declare-datatypes ((Option!16136 0))(
  ( (None!16135) (Some!16135 (v!52304 tuple2!66448)) )
))
(declare-fun isDefined!12839 (Option!16136) Bool)

(declare-fun findConcatSeparation!2550 (Regex!16245 Regex!16245 List!65034 List!65034 List!65034) Option!16136)

(assert (=> b!6340627 (= lt!2362412 (isDefined!12839 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326)))))

(declare-fun lt!2362433 () Unit!158311)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2314 (Regex!16245 Regex!16245 List!65034) Unit!158311)

(assert (=> b!6340627 (= lt!2362433 (lemmaFindConcatSeparationEquivalentToExists!2314 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326))))

(declare-fun b!6340628 () Bool)

(declare-fun e!3851310 () Bool)

(assert (=> b!6340628 (= e!3851310 (not e!3851304))))

(declare-fun res!2609367 () Bool)

(assert (=> b!6340628 (=> res!2609367 e!3851304)))

(declare-datatypes ((List!65035 0))(
  ( (Nil!64911) (Cons!64911 (h!71359 Regex!16245) (t!378621 List!65035)) )
))
(declare-datatypes ((Context!11258 0))(
  ( (Context!11259 (exprs!6129 List!65035)) )
))
(declare-datatypes ((List!65036 0))(
  ( (Nil!64912) (Cons!64912 (h!71360 Context!11258) (t!378622 List!65036)) )
))
(declare-fun zl!343 () List!65036)

(assert (=> b!6340628 (= res!2609367 (not ((_ is Cons!64912) zl!343)))))

(declare-fun matchRSpec!3346 (Regex!16245 List!65034) Bool)

(assert (=> b!6340628 (= lt!2362426 (matchRSpec!3346 r!7292 s!2326))))

(declare-fun matchR!8428 (Regex!16245 List!65034) Bool)

(assert (=> b!6340628 (= lt!2362426 (matchR!8428 r!7292 s!2326))))

(declare-fun lt!2362428 () Unit!158311)

(declare-fun mainMatchTheorem!3346 (Regex!16245 List!65034) Unit!158311)

(assert (=> b!6340628 (= lt!2362428 (mainMatchTheorem!3346 r!7292 s!2326))))

(declare-fun b!6340629 () Bool)

(declare-fun e!3851318 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2362436 () (InoxSet Context!11258))

(declare-fun matchZipper!2257 ((InoxSet Context!11258) List!65034) Bool)

(assert (=> b!6340629 (= e!3851318 (matchZipper!2257 lt!2362436 (t!378620 s!2326)))))

(declare-fun b!6340630 () Bool)

(declare-fun e!3851315 () Bool)

(declare-fun validRegex!7981 (Regex!16245) Bool)

(assert (=> b!6340630 (= e!3851315 (validRegex!7981 (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun lt!2362414 () Regex!16245)

(declare-fun lt!2362429 () List!65035)

(declare-fun generalisedConcat!1842 (List!65035) Regex!16245)

(assert (=> b!6340630 (= lt!2362414 (generalisedConcat!1842 lt!2362429))))

(declare-fun lt!2362410 () Bool)

(declare-fun lt!2362424 () Regex!16245)

(assert (=> b!6340630 (= lt!2362410 (matchRSpec!3346 lt!2362424 s!2326))))

(declare-fun lt!2362425 () Unit!158311)

(assert (=> b!6340630 (= lt!2362425 (mainMatchTheorem!3346 lt!2362424 s!2326))))

(declare-fun lt!2362411 () (InoxSet Context!11258))

(assert (=> b!6340630 (= lt!2362410 (matchZipper!2257 lt!2362411 s!2326))))

(assert (=> b!6340630 (= lt!2362410 (matchR!8428 lt!2362424 s!2326))))

(declare-fun lt!2362432 () List!65036)

(declare-fun lt!2362420 () Unit!158311)

(declare-fun theoremZipperRegexEquiv!787 ((InoxSet Context!11258) List!65036 Regex!16245 List!65034) Unit!158311)

(assert (=> b!6340630 (= lt!2362420 (theoremZipperRegexEquiv!787 lt!2362411 lt!2362432 lt!2362424 s!2326))))

(declare-fun lt!2362431 () List!65035)

(assert (=> b!6340630 (= lt!2362424 (generalisedConcat!1842 lt!2362431))))

(declare-fun e!3851306 () Bool)

(assert (=> b!6340632 (= e!3851312 e!3851306)))

(declare-fun res!2609366 () Bool)

(assert (=> b!6340632 (=> res!2609366 e!3851306)))

(assert (=> b!6340632 (= res!2609366 (or (and ((_ is ElementMatch!16245) (regOne!33002 r!7292)) (= (c!1152752 (regOne!33002 r!7292)) (h!71358 s!2326))) ((_ is Union!16245) (regOne!33002 r!7292))))))

(declare-fun lt!2362422 () Unit!158311)

(declare-fun e!3851311 () Unit!158311)

(assert (=> b!6340632 (= lt!2362422 e!3851311)))

(declare-fun c!1152751 () Bool)

(declare-fun nullable!6238 (Regex!16245) Bool)

(assert (=> b!6340632 (= c!1152751 (nullable!6238 (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun lambda!348315 () Int)

(declare-fun z!1189 () (InoxSet Context!11258))

(declare-fun flatMap!1750 ((InoxSet Context!11258) Int) (InoxSet Context!11258))

(declare-fun derivationStepZipperUp!1419 (Context!11258 C!32760) (InoxSet Context!11258))

(assert (=> b!6340632 (= (flatMap!1750 z!1189 lambda!348315) (derivationStepZipperUp!1419 (h!71360 zl!343) (h!71358 s!2326)))))

(declare-fun lt!2362423 () Unit!158311)

(declare-fun lemmaFlatMapOnSingletonSet!1276 ((InoxSet Context!11258) Context!11258 Int) Unit!158311)

(assert (=> b!6340632 (= lt!2362423 (lemmaFlatMapOnSingletonSet!1276 z!1189 (h!71360 zl!343) lambda!348315))))

(declare-fun lt!2362427 () Context!11258)

(assert (=> b!6340632 (= lt!2362436 (derivationStepZipperUp!1419 lt!2362427 (h!71358 s!2326)))))

(declare-fun lt!2362434 () (InoxSet Context!11258))

(declare-fun derivationStepZipperDown!1493 (Regex!16245 Context!11258 C!32760) (InoxSet Context!11258))

(assert (=> b!6340632 (= lt!2362434 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (h!71360 zl!343))) lt!2362427 (h!71358 s!2326)))))

(assert (=> b!6340632 (= lt!2362427 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun lt!2362415 () (InoxSet Context!11258))

(assert (=> b!6340632 (= lt!2362415 (derivationStepZipperUp!1419 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))) (h!71358 s!2326)))))

(declare-fun b!6340633 () Bool)

(declare-fun res!2609365 () Bool)

(assert (=> b!6340633 (=> res!2609365 e!3851306)))

(declare-fun e!3851305 () Bool)

(assert (=> b!6340633 (= res!2609365 e!3851305)))

(declare-fun res!2609378 () Bool)

(assert (=> b!6340633 (=> (not res!2609378) (not e!3851305))))

(assert (=> b!6340633 (= res!2609378 ((_ is Concat!25090) (regOne!33002 r!7292)))))

(declare-fun b!6340634 () Bool)

(declare-fun res!2609386 () Bool)

(assert (=> b!6340634 (=> res!2609386 e!3851304)))

(assert (=> b!6340634 (= res!2609386 (or ((_ is EmptyExpr!16245) r!7292) ((_ is EmptyLang!16245) r!7292) ((_ is ElementMatch!16245) r!7292) ((_ is Union!16245) r!7292) (not ((_ is Concat!25090) r!7292))))))

(declare-fun b!6340635 () Bool)

(declare-fun res!2609382 () Bool)

(declare-fun e!3851313 () Bool)

(assert (=> b!6340635 (=> res!2609382 e!3851313)))

(declare-fun lt!2362435 () Bool)

(declare-fun lt!2362417 () (InoxSet Context!11258))

(assert (=> b!6340635 (= res!2609382 (not (= lt!2362435 (matchZipper!2257 lt!2362417 (t!378620 s!2326)))))))

(declare-fun b!6340636 () Bool)

(declare-fun res!2609370 () Bool)

(assert (=> b!6340636 (=> res!2609370 e!3851306)))

(assert (=> b!6340636 (= res!2609370 (not ((_ is Concat!25090) (regOne!33002 r!7292))))))

(declare-fun b!6340637 () Bool)

(declare-fun res!2609369 () Bool)

(assert (=> b!6340637 (=> res!2609369 e!3851313)))

(assert (=> b!6340637 (= res!2609369 (not (= (exprs!6129 (h!71360 zl!343)) (Cons!64911 (Concat!25090 (regOne!33002 (regOne!33002 r!7292)) (regTwo!33002 (regOne!33002 r!7292))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun b!6340638 () Bool)

(assert (=> b!6340638 (= e!3851305 (nullable!6238 (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun b!6340639 () Bool)

(declare-fun Unit!158313 () Unit!158311)

(assert (=> b!6340639 (= e!3851311 Unit!158313)))

(declare-fun lt!2362419 () Unit!158311)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1076 ((InoxSet Context!11258) (InoxSet Context!11258) List!65034) Unit!158311)

(assert (=> b!6340639 (= lt!2362419 (lemmaZipperConcatMatchesSameAsBothZippers!1076 lt!2362434 lt!2362436 (t!378620 s!2326)))))

(declare-fun res!2609374 () Bool)

(assert (=> b!6340639 (= res!2609374 (matchZipper!2257 lt!2362434 (t!378620 s!2326)))))

(assert (=> b!6340639 (=> res!2609374 e!3851318)))

(assert (=> b!6340639 (= (matchZipper!2257 ((_ map or) lt!2362434 lt!2362436) (t!378620 s!2326)) e!3851318)))

(declare-fun b!6340640 () Bool)

(declare-fun e!3851308 () Bool)

(declare-fun tp!1768294 () Bool)

(assert (=> b!6340640 (= e!3851308 tp!1768294)))

(declare-fun b!6340641 () Bool)

(declare-fun res!2609376 () Bool)

(assert (=> b!6340641 (=> res!2609376 e!3851304)))

(assert (=> b!6340641 (= res!2609376 (not (= r!7292 (generalisedConcat!1842 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6340642 () Bool)

(declare-fun res!2609379 () Bool)

(assert (=> b!6340642 (=> (not res!2609379) (not e!3851310))))

(declare-fun toList!10029 ((InoxSet Context!11258)) List!65036)

(assert (=> b!6340642 (= res!2609379 (= (toList!10029 z!1189) zl!343))))

(declare-fun b!6340643 () Bool)

(declare-fun e!3851303 () Bool)

(assert (=> b!6340643 (= e!3851303 e!3851313)))

(declare-fun res!2609384 () Bool)

(assert (=> b!6340643 (=> res!2609384 e!3851313)))

(declare-fun lt!2362430 () (InoxSet Context!11258))

(assert (=> b!6340643 (= res!2609384 (not (= lt!2362417 lt!2362430)))))

(declare-fun lt!2362418 () Context!11258)

(assert (=> b!6340643 (= (flatMap!1750 lt!2362411 lambda!348315) (derivationStepZipperUp!1419 lt!2362418 (h!71358 s!2326)))))

(declare-fun lt!2362413 () Unit!158311)

(assert (=> b!6340643 (= lt!2362413 (lemmaFlatMapOnSingletonSet!1276 lt!2362411 lt!2362418 lambda!348315))))

(declare-fun lt!2362416 () (InoxSet Context!11258))

(assert (=> b!6340643 (= lt!2362416 (derivationStepZipperUp!1419 lt!2362418 (h!71358 s!2326)))))

(declare-fun derivationStepZipper!2211 ((InoxSet Context!11258) C!32760) (InoxSet Context!11258))

(assert (=> b!6340643 (= lt!2362417 (derivationStepZipper!2211 lt!2362411 (h!71358 s!2326)))))

(assert (=> b!6340643 (= lt!2362411 (store ((as const (Array Context!11258 Bool)) false) lt!2362418 true))))

(assert (=> b!6340643 (= lt!2362418 (Context!11259 lt!2362431))))

(assert (=> b!6340643 (= lt!2362431 (Cons!64911 (regOne!33002 (regOne!33002 r!7292)) lt!2362429))))

(declare-fun b!6340631 () Bool)

(declare-fun e!3851307 () Bool)

(assert (=> b!6340631 (= e!3851307 e!3851303)))

(declare-fun res!2609381 () Bool)

(assert (=> b!6340631 (=> res!2609381 e!3851303)))

(assert (=> b!6340631 (= res!2609381 (not (= lt!2362435 (matchZipper!2257 lt!2362430 (t!378620 s!2326)))))))

(assert (=> b!6340631 (= lt!2362435 (matchZipper!2257 lt!2362434 (t!378620 s!2326)))))

(declare-fun res!2609385 () Bool)

(assert (=> start!628234 (=> (not res!2609385) (not e!3851310))))

(assert (=> start!628234 (= res!2609385 (validRegex!7981 r!7292))))

(assert (=> start!628234 e!3851310))

(assert (=> start!628234 e!3851314))

(declare-fun condSetEmpty!43154 () Bool)

(assert (=> start!628234 (= condSetEmpty!43154 (= z!1189 ((as const (Array Context!11258 Bool)) false)))))

(declare-fun setRes!43154 () Bool)

(assert (=> start!628234 setRes!43154))

(declare-fun e!3851309 () Bool)

(assert (=> start!628234 e!3851309))

(declare-fun e!3851316 () Bool)

(assert (=> start!628234 e!3851316))

(declare-fun b!6340644 () Bool)

(declare-fun tp!1768290 () Bool)

(assert (=> b!6340644 (= e!3851314 tp!1768290)))

(declare-fun setElem!43154 () Context!11258)

(declare-fun setNonEmpty!43154 () Bool)

(declare-fun tp!1768296 () Bool)

(declare-fun inv!83859 (Context!11258) Bool)

(assert (=> setNonEmpty!43154 (= setRes!43154 (and tp!1768296 (inv!83859 setElem!43154) e!3851308))))

(declare-fun setRest!43154 () (InoxSet Context!11258))

(assert (=> setNonEmpty!43154 (= z!1189 ((_ map or) (store ((as const (Array Context!11258 Bool)) false) setElem!43154 true) setRest!43154))))

(declare-fun b!6340645 () Bool)

(declare-fun tp_is_empty!41743 () Bool)

(assert (=> b!6340645 (= e!3851314 tp_is_empty!41743)))

(declare-fun b!6340646 () Bool)

(declare-fun res!2609373 () Bool)

(assert (=> b!6340646 (=> res!2609373 e!3851312)))

(declare-fun isEmpty!36989 (List!65035) Bool)

(assert (=> b!6340646 (= res!2609373 (isEmpty!36989 (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6340647 () Bool)

(declare-fun res!2609363 () Bool)

(assert (=> b!6340647 (=> res!2609363 e!3851313)))

(declare-fun contextDepthTotal!354 (Context!11258) Int)

(assert (=> b!6340647 (= res!2609363 (>= (contextDepthTotal!354 lt!2362418) (contextDepthTotal!354 (h!71360 zl!343))))))

(declare-fun b!6340648 () Bool)

(declare-fun tp!1768297 () Bool)

(assert (=> b!6340648 (= e!3851316 (and tp_is_empty!41743 tp!1768297))))

(declare-fun b!6340649 () Bool)

(declare-fun res!2609371 () Bool)

(assert (=> b!6340649 (=> res!2609371 e!3851304)))

(declare-fun generalisedUnion!2089 (List!65035) Regex!16245)

(declare-fun unfocusZipperList!1666 (List!65036) List!65035)

(assert (=> b!6340649 (= res!2609371 (not (= r!7292 (generalisedUnion!2089 (unfocusZipperList!1666 zl!343)))))))

(declare-fun b!6340650 () Bool)

(declare-fun e!3851317 () Bool)

(declare-fun tp!1768289 () Bool)

(assert (=> b!6340650 (= e!3851317 tp!1768289)))

(declare-fun b!6340651 () Bool)

(declare-fun Unit!158314 () Unit!158311)

(assert (=> b!6340651 (= e!3851311 Unit!158314)))

(declare-fun b!6340652 () Bool)

(assert (=> b!6340652 (= e!3851313 e!3851315)))

(declare-fun res!2609380 () Bool)

(assert (=> b!6340652 (=> res!2609380 e!3851315)))

(declare-fun zipperDepthTotal!382 (List!65036) Int)

(assert (=> b!6340652 (= res!2609380 (>= (zipperDepthTotal!382 lt!2362432) (zipperDepthTotal!382 zl!343)))))

(assert (=> b!6340652 (= lt!2362432 (Cons!64912 lt!2362418 Nil!64912))))

(declare-fun b!6340653 () Bool)

(declare-fun res!2609364 () Bool)

(assert (=> b!6340653 (=> res!2609364 e!3851304)))

(declare-fun isEmpty!36990 (List!65036) Bool)

(assert (=> b!6340653 (= res!2609364 (not (isEmpty!36990 (t!378622 zl!343))))))

(declare-fun b!6340654 () Bool)

(declare-fun res!2609368 () Bool)

(assert (=> b!6340654 (=> res!2609368 e!3851304)))

(assert (=> b!6340654 (= res!2609368 (not ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343)))))))

(declare-fun tp!1768295 () Bool)

(declare-fun b!6340655 () Bool)

(assert (=> b!6340655 (= e!3851309 (and (inv!83859 (h!71360 zl!343)) e!3851317 tp!1768295))))

(declare-fun b!6340656 () Bool)

(declare-fun res!2609377 () Bool)

(assert (=> b!6340656 (=> res!2609377 e!3851315)))

(declare-fun zipperDepth!352 (List!65036) Int)

(assert (=> b!6340656 (= res!2609377 (> (zipperDepth!352 lt!2362432) (zipperDepth!352 zl!343)))))

(declare-fun b!6340657 () Bool)

(assert (=> b!6340657 (= e!3851306 e!3851307)))

(declare-fun res!2609372 () Bool)

(assert (=> b!6340657 (=> res!2609372 e!3851307)))

(assert (=> b!6340657 (= res!2609372 (not (= lt!2362434 lt!2362430)))))

(assert (=> b!6340657 (= lt!2362430 (derivationStepZipperDown!1493 (regOne!33002 (regOne!33002 r!7292)) (Context!11259 lt!2362429) (h!71358 s!2326)))))

(assert (=> b!6340657 (= lt!2362429 (Cons!64911 (regTwo!33002 (regOne!33002 r!7292)) (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6340658 () Bool)

(declare-fun res!2609383 () Bool)

(assert (=> b!6340658 (=> (not res!2609383) (not e!3851310))))

(declare-fun unfocusZipper!1987 (List!65036) Regex!16245)

(assert (=> b!6340658 (= res!2609383 (= r!7292 (unfocusZipper!1987 zl!343)))))

(declare-fun b!6340659 () Bool)

(declare-fun tp!1768298 () Bool)

(declare-fun tp!1768291 () Bool)

(assert (=> b!6340659 (= e!3851314 (and tp!1768298 tp!1768291))))

(declare-fun setIsEmpty!43154 () Bool)

(assert (=> setIsEmpty!43154 setRes!43154))

(assert (= (and start!628234 res!2609385) b!6340642))

(assert (= (and b!6340642 res!2609379) b!6340658))

(assert (= (and b!6340658 res!2609383) b!6340628))

(assert (= (and b!6340628 (not res!2609367)) b!6340653))

(assert (= (and b!6340653 (not res!2609364)) b!6340641))

(assert (= (and b!6340641 (not res!2609376)) b!6340654))

(assert (= (and b!6340654 (not res!2609368)) b!6340649))

(assert (= (and b!6340649 (not res!2609371)) b!6340634))

(assert (= (and b!6340634 (not res!2609386)) b!6340627))

(assert (= (and b!6340627 (not res!2609375)) b!6340646))

(assert (= (and b!6340646 (not res!2609373)) b!6340632))

(assert (= (and b!6340632 c!1152751) b!6340639))

(assert (= (and b!6340632 (not c!1152751)) b!6340651))

(assert (= (and b!6340639 (not res!2609374)) b!6340629))

(assert (= (and b!6340632 (not res!2609366)) b!6340633))

(assert (= (and b!6340633 res!2609378) b!6340638))

(assert (= (and b!6340633 (not res!2609365)) b!6340636))

(assert (= (and b!6340636 (not res!2609370)) b!6340657))

(assert (= (and b!6340657 (not res!2609372)) b!6340631))

(assert (= (and b!6340631 (not res!2609381)) b!6340643))

(assert (= (and b!6340643 (not res!2609384)) b!6340635))

(assert (= (and b!6340635 (not res!2609382)) b!6340637))

(assert (= (and b!6340637 (not res!2609369)) b!6340647))

(assert (= (and b!6340647 (not res!2609363)) b!6340652))

(assert (= (and b!6340652 (not res!2609380)) b!6340656))

(assert (= (and b!6340656 (not res!2609377)) b!6340630))

(assert (= (and start!628234 ((_ is ElementMatch!16245) r!7292)) b!6340645))

(assert (= (and start!628234 ((_ is Concat!25090) r!7292)) b!6340659))

(assert (= (and start!628234 ((_ is Star!16245) r!7292)) b!6340644))

(assert (= (and start!628234 ((_ is Union!16245) r!7292)) b!6340626))

(assert (= (and start!628234 condSetEmpty!43154) setIsEmpty!43154))

(assert (= (and start!628234 (not condSetEmpty!43154)) setNonEmpty!43154))

(assert (= setNonEmpty!43154 b!6340640))

(assert (= b!6340655 b!6340650))

(assert (= (and start!628234 ((_ is Cons!64912) zl!343)) b!6340655))

(assert (= (and start!628234 ((_ is Cons!64910) s!2326)) b!6340648))

(declare-fun m!7149186 () Bool)

(assert (=> b!6340642 m!7149186))

(declare-fun m!7149188 () Bool)

(assert (=> b!6340641 m!7149188))

(declare-fun m!7149190 () Bool)

(assert (=> b!6340656 m!7149190))

(declare-fun m!7149192 () Bool)

(assert (=> b!6340656 m!7149192))

(declare-fun m!7149194 () Bool)

(assert (=> b!6340652 m!7149194))

(declare-fun m!7149196 () Bool)

(assert (=> b!6340652 m!7149196))

(declare-fun m!7149198 () Bool)

(assert (=> b!6340647 m!7149198))

(declare-fun m!7149200 () Bool)

(assert (=> b!6340647 m!7149200))

(declare-fun m!7149202 () Bool)

(assert (=> b!6340632 m!7149202))

(declare-fun m!7149204 () Bool)

(assert (=> b!6340632 m!7149204))

(declare-fun m!7149206 () Bool)

(assert (=> b!6340632 m!7149206))

(declare-fun m!7149208 () Bool)

(assert (=> b!6340632 m!7149208))

(declare-fun m!7149210 () Bool)

(assert (=> b!6340632 m!7149210))

(declare-fun m!7149212 () Bool)

(assert (=> b!6340632 m!7149212))

(declare-fun m!7149214 () Bool)

(assert (=> b!6340632 m!7149214))

(declare-fun m!7149216 () Bool)

(assert (=> b!6340639 m!7149216))

(declare-fun m!7149218 () Bool)

(assert (=> b!6340639 m!7149218))

(declare-fun m!7149220 () Bool)

(assert (=> b!6340639 m!7149220))

(declare-fun m!7149222 () Bool)

(assert (=> setNonEmpty!43154 m!7149222))

(declare-fun m!7149224 () Bool)

(assert (=> b!6340655 m!7149224))

(declare-fun m!7149226 () Bool)

(assert (=> b!6340631 m!7149226))

(assert (=> b!6340631 m!7149218))

(declare-fun m!7149228 () Bool)

(assert (=> b!6340649 m!7149228))

(assert (=> b!6340649 m!7149228))

(declare-fun m!7149230 () Bool)

(assert (=> b!6340649 m!7149230))

(declare-fun m!7149232 () Bool)

(assert (=> b!6340643 m!7149232))

(declare-fun m!7149234 () Bool)

(assert (=> b!6340643 m!7149234))

(declare-fun m!7149236 () Bool)

(assert (=> b!6340643 m!7149236))

(declare-fun m!7149238 () Bool)

(assert (=> b!6340643 m!7149238))

(declare-fun m!7149240 () Bool)

(assert (=> b!6340643 m!7149240))

(declare-fun m!7149242 () Bool)

(assert (=> b!6340635 m!7149242))

(declare-fun m!7149244 () Bool)

(assert (=> b!6340653 m!7149244))

(declare-fun m!7149246 () Bool)

(assert (=> b!6340630 m!7149246))

(declare-fun m!7149248 () Bool)

(assert (=> b!6340630 m!7149248))

(declare-fun m!7149250 () Bool)

(assert (=> b!6340630 m!7149250))

(declare-fun m!7149252 () Bool)

(assert (=> b!6340630 m!7149252))

(declare-fun m!7149254 () Bool)

(assert (=> b!6340630 m!7149254))

(declare-fun m!7149256 () Bool)

(assert (=> b!6340630 m!7149256))

(declare-fun m!7149258 () Bool)

(assert (=> b!6340630 m!7149258))

(declare-fun m!7149260 () Bool)

(assert (=> b!6340630 m!7149260))

(declare-fun m!7149262 () Bool)

(assert (=> b!6340646 m!7149262))

(declare-fun m!7149264 () Bool)

(assert (=> b!6340629 m!7149264))

(declare-fun m!7149266 () Bool)

(assert (=> b!6340628 m!7149266))

(declare-fun m!7149268 () Bool)

(assert (=> b!6340628 m!7149268))

(declare-fun m!7149270 () Bool)

(assert (=> b!6340628 m!7149270))

(declare-fun m!7149272 () Bool)

(assert (=> b!6340657 m!7149272))

(declare-fun m!7149274 () Bool)

(assert (=> b!6340627 m!7149274))

(declare-fun m!7149276 () Bool)

(assert (=> b!6340627 m!7149276))

(declare-fun m!7149278 () Bool)

(assert (=> b!6340627 m!7149278))

(declare-fun m!7149280 () Bool)

(assert (=> b!6340627 m!7149280))

(declare-fun m!7149282 () Bool)

(assert (=> b!6340627 m!7149282))

(assert (=> b!6340627 m!7149280))

(assert (=> b!6340627 m!7149276))

(declare-fun m!7149284 () Bool)

(assert (=> b!6340627 m!7149284))

(declare-fun m!7149286 () Bool)

(assert (=> start!628234 m!7149286))

(declare-fun m!7149288 () Bool)

(assert (=> b!6340638 m!7149288))

(declare-fun m!7149290 () Bool)

(assert (=> b!6340658 m!7149290))

(check-sat (not b!6340647) (not b!6340641) (not b!6340652) tp_is_empty!41743 (not b!6340626) (not b!6340653) (not start!628234) (not b!6340639) (not b!6340627) (not b!6340630) (not b!6340638) (not b!6340658) (not b!6340650) (not b!6340642) (not b!6340644) (not b!6340659) (not b!6340632) (not b!6340640) (not b!6340635) (not b!6340648) (not setNonEmpty!43154) (not b!6340655) (not b!6340629) (not b!6340646) (not b!6340657) (not b!6340628) (not b!6340649) (not b!6340643) (not b!6340656) (not b!6340631))
(check-sat)
(get-model)

(declare-fun d!1989984 () Bool)

(declare-fun lambda!348318 () Int)

(declare-fun forall!15401 (List!65035 Int) Bool)

(assert (=> d!1989984 (= (inv!83859 (h!71360 zl!343)) (forall!15401 (exprs!6129 (h!71360 zl!343)) lambda!348318))))

(declare-fun bs!1587545 () Bool)

(assert (= bs!1587545 d!1989984))

(declare-fun m!7149294 () Bool)

(assert (=> bs!1587545 m!7149294))

(assert (=> b!6340655 d!1989984))

(declare-fun bs!1587546 () Bool)

(declare-fun d!1989990 () Bool)

(assert (= bs!1587546 (and d!1989990 d!1989984)))

(declare-fun lambda!348319 () Int)

(assert (=> bs!1587546 (= lambda!348319 lambda!348318)))

(assert (=> d!1989990 (= (inv!83859 setElem!43154) (forall!15401 (exprs!6129 setElem!43154) lambda!348319))))

(declare-fun bs!1587547 () Bool)

(assert (= bs!1587547 d!1989990))

(declare-fun m!7149308 () Bool)

(assert (=> bs!1587547 m!7149308))

(assert (=> setNonEmpty!43154 d!1989990))

(declare-fun d!1989994 () Bool)

(declare-fun c!1152766 () Bool)

(declare-fun isEmpty!36992 (List!65034) Bool)

(assert (=> d!1989994 (= c!1152766 (isEmpty!36992 (t!378620 s!2326)))))

(declare-fun e!3851347 () Bool)

(assert (=> d!1989994 (= (matchZipper!2257 lt!2362417 (t!378620 s!2326)) e!3851347)))

(declare-fun b!6340707 () Bool)

(declare-fun nullableZipper!2011 ((InoxSet Context!11258)) Bool)

(assert (=> b!6340707 (= e!3851347 (nullableZipper!2011 lt!2362417))))

(declare-fun b!6340708 () Bool)

(declare-fun head!12981 (List!65034) C!32760)

(declare-fun tail!12067 (List!65034) List!65034)

(assert (=> b!6340708 (= e!3851347 (matchZipper!2257 (derivationStepZipper!2211 lt!2362417 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))))))

(assert (= (and d!1989994 c!1152766) b!6340707))

(assert (= (and d!1989994 (not c!1152766)) b!6340708))

(declare-fun m!7149328 () Bool)

(assert (=> d!1989994 m!7149328))

(declare-fun m!7149330 () Bool)

(assert (=> b!6340707 m!7149330))

(declare-fun m!7149334 () Bool)

(assert (=> b!6340708 m!7149334))

(assert (=> b!6340708 m!7149334))

(declare-fun m!7149336 () Bool)

(assert (=> b!6340708 m!7149336))

(declare-fun m!7149338 () Bool)

(assert (=> b!6340708 m!7149338))

(assert (=> b!6340708 m!7149336))

(assert (=> b!6340708 m!7149338))

(declare-fun m!7149340 () Bool)

(assert (=> b!6340708 m!7149340))

(assert (=> b!6340635 d!1989994))

(declare-fun b!6340737 () Bool)

(assert (=> b!6340737 true))

(declare-fun bs!1587556 () Bool)

(declare-fun b!6340739 () Bool)

(assert (= bs!1587556 (and b!6340739 b!6340737)))

(declare-fun lt!2362473 () Int)

(declare-fun lambda!348339 () Int)

(declare-fun lambda!348340 () Int)

(declare-fun lt!2362471 () Int)

(assert (=> bs!1587556 (= (= lt!2362473 lt!2362471) (= lambda!348340 lambda!348339))))

(assert (=> b!6340739 true))

(declare-fun d!1990004 () Bool)

(declare-fun e!3851365 () Bool)

(assert (=> d!1990004 e!3851365))

(declare-fun res!2609408 () Bool)

(assert (=> d!1990004 (=> (not res!2609408) (not e!3851365))))

(assert (=> d!1990004 (= res!2609408 (>= lt!2362473 0))))

(declare-fun e!3851364 () Int)

(assert (=> d!1990004 (= lt!2362473 e!3851364)))

(declare-fun c!1152790 () Bool)

(assert (=> d!1990004 (= c!1152790 ((_ is Cons!64912) lt!2362432))))

(assert (=> d!1990004 (= (zipperDepth!352 lt!2362432) lt!2362473)))

(assert (=> b!6340737 (= e!3851364 lt!2362471)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!241 (Context!11258) Int)

(assert (=> b!6340737 (= lt!2362471 (maxBigInt!0 (contextDepth!241 (h!71360 lt!2362432)) (zipperDepth!352 (t!378622 lt!2362432))))))

(declare-fun lambda!348338 () Int)

(declare-fun lt!2362474 () Unit!158311)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!225 (List!65036 Int Int Int) Unit!158311)

(assert (=> b!6340737 (= lt!2362474 (lemmaForallContextDepthBiggerThanTransitive!225 (t!378622 lt!2362432) lt!2362471 (zipperDepth!352 (t!378622 lt!2362432)) lambda!348338))))

(declare-fun forall!15403 (List!65036 Int) Bool)

(assert (=> b!6340737 (forall!15403 (t!378622 lt!2362432) lambda!348339)))

(declare-fun lt!2362472 () Unit!158311)

(assert (=> b!6340737 (= lt!2362472 lt!2362474)))

(declare-fun b!6340738 () Bool)

(assert (=> b!6340738 (= e!3851364 0)))

(assert (=> b!6340739 (= e!3851365 (forall!15403 lt!2362432 lambda!348340))))

(assert (= (and d!1990004 c!1152790) b!6340737))

(assert (= (and d!1990004 (not c!1152790)) b!6340738))

(assert (= (and d!1990004 res!2609408) b!6340739))

(declare-fun m!7149378 () Bool)

(assert (=> b!6340737 m!7149378))

(declare-fun m!7149380 () Bool)

(assert (=> b!6340737 m!7149380))

(declare-fun m!7149382 () Bool)

(assert (=> b!6340737 m!7149382))

(assert (=> b!6340737 m!7149378))

(declare-fun m!7149384 () Bool)

(assert (=> b!6340737 m!7149384))

(assert (=> b!6340737 m!7149378))

(declare-fun m!7149386 () Bool)

(assert (=> b!6340737 m!7149386))

(assert (=> b!6340737 m!7149384))

(declare-fun m!7149388 () Bool)

(assert (=> b!6340739 m!7149388))

(assert (=> b!6340656 d!1990004))

(declare-fun bs!1587557 () Bool)

(declare-fun b!6340742 () Bool)

(assert (= bs!1587557 (and b!6340742 b!6340737)))

(declare-fun lambda!348341 () Int)

(assert (=> bs!1587557 (= lambda!348341 lambda!348338)))

(declare-fun lambda!348342 () Int)

(declare-fun lt!2362475 () Int)

(assert (=> bs!1587557 (= (= lt!2362475 lt!2362471) (= lambda!348342 lambda!348339))))

(declare-fun bs!1587558 () Bool)

(assert (= bs!1587558 (and b!6340742 b!6340739)))

(assert (=> bs!1587558 (= (= lt!2362475 lt!2362473) (= lambda!348342 lambda!348340))))

(assert (=> b!6340742 true))

(declare-fun bs!1587559 () Bool)

(declare-fun b!6340744 () Bool)

(assert (= bs!1587559 (and b!6340744 b!6340737)))

(declare-fun lambda!348343 () Int)

(declare-fun lt!2362477 () Int)

(assert (=> bs!1587559 (= (= lt!2362477 lt!2362471) (= lambda!348343 lambda!348339))))

(declare-fun bs!1587560 () Bool)

(assert (= bs!1587560 (and b!6340744 b!6340739)))

(assert (=> bs!1587560 (= (= lt!2362477 lt!2362473) (= lambda!348343 lambda!348340))))

(declare-fun bs!1587561 () Bool)

(assert (= bs!1587561 (and b!6340744 b!6340742)))

(assert (=> bs!1587561 (= (= lt!2362477 lt!2362475) (= lambda!348343 lambda!348342))))

(assert (=> b!6340744 true))

(declare-fun d!1990016 () Bool)

(declare-fun e!3851367 () Bool)

(assert (=> d!1990016 e!3851367))

(declare-fun res!2609409 () Bool)

(assert (=> d!1990016 (=> (not res!2609409) (not e!3851367))))

(assert (=> d!1990016 (= res!2609409 (>= lt!2362477 0))))

(declare-fun e!3851366 () Int)

(assert (=> d!1990016 (= lt!2362477 e!3851366)))

(declare-fun c!1152791 () Bool)

(assert (=> d!1990016 (= c!1152791 ((_ is Cons!64912) zl!343))))

(assert (=> d!1990016 (= (zipperDepth!352 zl!343) lt!2362477)))

(assert (=> b!6340742 (= e!3851366 lt!2362475)))

(assert (=> b!6340742 (= lt!2362475 (maxBigInt!0 (contextDepth!241 (h!71360 zl!343)) (zipperDepth!352 (t!378622 zl!343))))))

(declare-fun lt!2362478 () Unit!158311)

(assert (=> b!6340742 (= lt!2362478 (lemmaForallContextDepthBiggerThanTransitive!225 (t!378622 zl!343) lt!2362475 (zipperDepth!352 (t!378622 zl!343)) lambda!348341))))

(assert (=> b!6340742 (forall!15403 (t!378622 zl!343) lambda!348342)))

(declare-fun lt!2362476 () Unit!158311)

(assert (=> b!6340742 (= lt!2362476 lt!2362478)))

(declare-fun b!6340743 () Bool)

(assert (=> b!6340743 (= e!3851366 0)))

(assert (=> b!6340744 (= e!3851367 (forall!15403 zl!343 lambda!348343))))

(assert (= (and d!1990016 c!1152791) b!6340742))

(assert (= (and d!1990016 (not c!1152791)) b!6340743))

(assert (= (and d!1990016 res!2609409) b!6340744))

(declare-fun m!7149390 () Bool)

(assert (=> b!6340742 m!7149390))

(declare-fun m!7149392 () Bool)

(assert (=> b!6340742 m!7149392))

(declare-fun m!7149394 () Bool)

(assert (=> b!6340742 m!7149394))

(assert (=> b!6340742 m!7149390))

(declare-fun m!7149396 () Bool)

(assert (=> b!6340742 m!7149396))

(assert (=> b!6340742 m!7149390))

(declare-fun m!7149398 () Bool)

(assert (=> b!6340742 m!7149398))

(assert (=> b!6340742 m!7149396))

(declare-fun m!7149400 () Bool)

(assert (=> b!6340744 m!7149400))

(assert (=> b!6340656 d!1990016))

(declare-fun call!540349 () List!65035)

(declare-fun c!1152827 () Bool)

(declare-fun c!1152828 () Bool)

(declare-fun bm!540343 () Bool)

(declare-fun $colon$colon!2105 (List!65035 Regex!16245) List!65035)

(assert (=> bm!540343 (= call!540349 ($colon$colon!2105 (exprs!6129 (Context!11259 lt!2362429)) (ite (or c!1152828 c!1152827) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 r!7292)))))))

(declare-fun b!6340861 () Bool)

(declare-fun e!3851438 () (InoxSet Context!11258))

(declare-fun call!540351 () (InoxSet Context!11258))

(declare-fun call!540353 () (InoxSet Context!11258))

(assert (=> b!6340861 (= e!3851438 ((_ map or) call!540351 call!540353))))

(declare-fun b!6340862 () Bool)

(declare-fun e!3851434 () (InoxSet Context!11258))

(assert (=> b!6340862 (= e!3851438 e!3851434)))

(assert (=> b!6340862 (= c!1152827 ((_ is Concat!25090) (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun bm!540344 () Bool)

(declare-fun call!540348 () (InoxSet Context!11258))

(declare-fun c!1152829 () Bool)

(declare-fun call!540352 () List!65035)

(assert (=> bm!540344 (= call!540348 (derivationStepZipperDown!1493 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292)))))) (ite (or c!1152829 c!1152828) (Context!11259 lt!2362429) (Context!11259 call!540352)) (h!71358 s!2326)))))

(declare-fun bm!540345 () Bool)

(assert (=> bm!540345 (= call!540353 call!540348)))

(declare-fun bm!540346 () Bool)

(assert (=> bm!540346 (= call!540351 (derivationStepZipperDown!1493 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))) (ite c!1152829 (Context!11259 lt!2362429) (Context!11259 call!540349)) (h!71358 s!2326)))))

(declare-fun bm!540347 () Bool)

(assert (=> bm!540347 (= call!540352 call!540349)))

(declare-fun b!6340864 () Bool)

(declare-fun call!540350 () (InoxSet Context!11258))

(assert (=> b!6340864 (= e!3851434 call!540350)))

(declare-fun b!6340865 () Bool)

(declare-fun e!3851433 () (InoxSet Context!11258))

(assert (=> b!6340865 (= e!3851433 (store ((as const (Array Context!11258 Bool)) false) (Context!11259 lt!2362429) true))))

(declare-fun b!6340866 () Bool)

(declare-fun e!3851435 () (InoxSet Context!11258))

(assert (=> b!6340866 (= e!3851435 call!540350)))

(declare-fun b!6340867 () Bool)

(declare-fun c!1152826 () Bool)

(assert (=> b!6340867 (= c!1152826 ((_ is Star!16245) (regOne!33002 (regOne!33002 r!7292))))))

(assert (=> b!6340867 (= e!3851434 e!3851435)))

(declare-fun b!6340868 () Bool)

(declare-fun e!3851437 () Bool)

(assert (=> b!6340868 (= e!3851437 (nullable!6238 (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))))

(declare-fun b!6340863 () Bool)

(declare-fun e!3851436 () (InoxSet Context!11258))

(assert (=> b!6340863 (= e!3851433 e!3851436)))

(assert (=> b!6340863 (= c!1152829 ((_ is Union!16245) (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun d!1990018 () Bool)

(declare-fun c!1152825 () Bool)

(assert (=> d!1990018 (= c!1152825 (and ((_ is ElementMatch!16245) (regOne!33002 (regOne!33002 r!7292))) (= (c!1152752 (regOne!33002 (regOne!33002 r!7292))) (h!71358 s!2326))))))

(assert (=> d!1990018 (= (derivationStepZipperDown!1493 (regOne!33002 (regOne!33002 r!7292)) (Context!11259 lt!2362429) (h!71358 s!2326)) e!3851433)))

(declare-fun b!6340869 () Bool)

(assert (=> b!6340869 (= e!3851435 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6340870 () Bool)

(assert (=> b!6340870 (= e!3851436 ((_ map or) call!540351 call!540348))))

(declare-fun bm!540348 () Bool)

(assert (=> bm!540348 (= call!540350 call!540353)))

(declare-fun b!6340871 () Bool)

(assert (=> b!6340871 (= c!1152828 e!3851437)))

(declare-fun res!2609460 () Bool)

(assert (=> b!6340871 (=> (not res!2609460) (not e!3851437))))

(assert (=> b!6340871 (= res!2609460 ((_ is Concat!25090) (regOne!33002 (regOne!33002 r!7292))))))

(assert (=> b!6340871 (= e!3851436 e!3851438)))

(assert (= (and d!1990018 c!1152825) b!6340865))

(assert (= (and d!1990018 (not c!1152825)) b!6340863))

(assert (= (and b!6340863 c!1152829) b!6340870))

(assert (= (and b!6340863 (not c!1152829)) b!6340871))

(assert (= (and b!6340871 res!2609460) b!6340868))

(assert (= (and b!6340871 c!1152828) b!6340861))

(assert (= (and b!6340871 (not c!1152828)) b!6340862))

(assert (= (and b!6340862 c!1152827) b!6340864))

(assert (= (and b!6340862 (not c!1152827)) b!6340867))

(assert (= (and b!6340867 c!1152826) b!6340866))

(assert (= (and b!6340867 (not c!1152826)) b!6340869))

(assert (= (or b!6340864 b!6340866) bm!540347))

(assert (= (or b!6340864 b!6340866) bm!540348))

(assert (= (or b!6340861 bm!540347) bm!540343))

(assert (= (or b!6340861 bm!540348) bm!540345))

(assert (= (or b!6340870 bm!540345) bm!540344))

(assert (= (or b!6340870 b!6340861) bm!540346))

(declare-fun m!7149428 () Bool)

(assert (=> bm!540344 m!7149428))

(declare-fun m!7149430 () Bool)

(assert (=> bm!540343 m!7149430))

(declare-fun m!7149432 () Bool)

(assert (=> b!6340868 m!7149432))

(declare-fun m!7149434 () Bool)

(assert (=> b!6340865 m!7149434))

(declare-fun m!7149436 () Bool)

(assert (=> bm!540346 m!7149436))

(assert (=> b!6340657 d!1990018))

(declare-fun d!1990026 () Bool)

(assert (=> d!1990026 (= (isEmpty!36989 (t!378621 (exprs!6129 (h!71360 zl!343)))) ((_ is Nil!64911) (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> b!6340646 d!1990026))

(declare-fun d!1990028 () Bool)

(declare-fun lt!2362491 () Int)

(assert (=> d!1990028 (>= lt!2362491 0)))

(declare-fun e!3851466 () Int)

(assert (=> d!1990028 (= lt!2362491 e!3851466)))

(declare-fun c!1152850 () Bool)

(assert (=> d!1990028 (= c!1152850 ((_ is Cons!64911) (exprs!6129 lt!2362418)))))

(assert (=> d!1990028 (= (contextDepthTotal!354 lt!2362418) lt!2362491)))

(declare-fun b!6340918 () Bool)

(declare-fun regexDepthTotal!203 (Regex!16245) Int)

(assert (=> b!6340918 (= e!3851466 (+ (regexDepthTotal!203 (h!71359 (exprs!6129 lt!2362418))) (contextDepthTotal!354 (Context!11259 (t!378621 (exprs!6129 lt!2362418))))))))

(declare-fun b!6340919 () Bool)

(assert (=> b!6340919 (= e!3851466 1)))

(assert (= (and d!1990028 c!1152850) b!6340918))

(assert (= (and d!1990028 (not c!1152850)) b!6340919))

(declare-fun m!7149486 () Bool)

(assert (=> b!6340918 m!7149486))

(declare-fun m!7149488 () Bool)

(assert (=> b!6340918 m!7149488))

(assert (=> b!6340647 d!1990028))

(declare-fun d!1990038 () Bool)

(declare-fun lt!2362492 () Int)

(assert (=> d!1990038 (>= lt!2362492 0)))

(declare-fun e!3851467 () Int)

(assert (=> d!1990038 (= lt!2362492 e!3851467)))

(declare-fun c!1152851 () Bool)

(assert (=> d!1990038 (= c!1152851 ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343))))))

(assert (=> d!1990038 (= (contextDepthTotal!354 (h!71360 zl!343)) lt!2362492)))

(declare-fun b!6340920 () Bool)

(assert (=> b!6340920 (= e!3851467 (+ (regexDepthTotal!203 (h!71359 (exprs!6129 (h!71360 zl!343)))) (contextDepthTotal!354 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun b!6340921 () Bool)

(assert (=> b!6340921 (= e!3851467 1)))

(assert (= (and d!1990038 c!1152851) b!6340920))

(assert (= (and d!1990038 (not c!1152851)) b!6340921))

(declare-fun m!7149490 () Bool)

(assert (=> b!6340920 m!7149490))

(declare-fun m!7149492 () Bool)

(assert (=> b!6340920 m!7149492))

(assert (=> b!6340647 d!1990038))

(declare-fun d!1990040 () Bool)

(declare-fun nullableFct!2185 (Regex!16245) Bool)

(assert (=> d!1990040 (= (nullable!6238 (regOne!33002 (regOne!33002 r!7292))) (nullableFct!2185 (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun bs!1587570 () Bool)

(assert (= bs!1587570 d!1990040))

(declare-fun m!7149496 () Bool)

(assert (=> bs!1587570 m!7149496))

(assert (=> b!6340638 d!1990040))

(declare-fun d!1990044 () Bool)

(declare-fun lt!2362495 () Regex!16245)

(assert (=> d!1990044 (validRegex!7981 lt!2362495)))

(assert (=> d!1990044 (= lt!2362495 (generalisedUnion!2089 (unfocusZipperList!1666 zl!343)))))

(assert (=> d!1990044 (= (unfocusZipper!1987 zl!343) lt!2362495)))

(declare-fun bs!1587571 () Bool)

(assert (= bs!1587571 d!1990044))

(declare-fun m!7149498 () Bool)

(assert (=> bs!1587571 m!7149498))

(assert (=> bs!1587571 m!7149228))

(assert (=> bs!1587571 m!7149228))

(assert (=> bs!1587571 m!7149230))

(assert (=> b!6340658 d!1990044))

(declare-fun b!6341031 () Bool)

(declare-fun res!2609494 () Bool)

(declare-fun e!3851530 () Bool)

(assert (=> b!6341031 (=> (not res!2609494) (not e!3851530))))

(declare-fun lt!2362511 () Option!16136)

(declare-fun get!22451 (Option!16136) tuple2!66448)

(assert (=> b!6341031 (= res!2609494 (matchR!8428 (regTwo!33002 r!7292) (_2!36527 (get!22451 lt!2362511))))))

(declare-fun b!6341032 () Bool)

(declare-fun e!3851531 () Bool)

(assert (=> b!6341032 (= e!3851531 (matchR!8428 (regTwo!33002 r!7292) s!2326))))

(declare-fun d!1990046 () Bool)

(declare-fun e!3851532 () Bool)

(assert (=> d!1990046 e!3851532))

(declare-fun res!2609495 () Bool)

(assert (=> d!1990046 (=> res!2609495 e!3851532)))

(assert (=> d!1990046 (= res!2609495 e!3851530)))

(declare-fun res!2609496 () Bool)

(assert (=> d!1990046 (=> (not res!2609496) (not e!3851530))))

(assert (=> d!1990046 (= res!2609496 (isDefined!12839 lt!2362511))))

(declare-fun e!3851534 () Option!16136)

(assert (=> d!1990046 (= lt!2362511 e!3851534)))

(declare-fun c!1152895 () Bool)

(assert (=> d!1990046 (= c!1152895 e!3851531)))

(declare-fun res!2609493 () Bool)

(assert (=> d!1990046 (=> (not res!2609493) (not e!3851531))))

(assert (=> d!1990046 (= res!2609493 (matchR!8428 (regOne!33002 r!7292) Nil!64910))))

(assert (=> d!1990046 (validRegex!7981 (regOne!33002 r!7292))))

(assert (=> d!1990046 (= (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326) lt!2362511)))

(declare-fun b!6341033 () Bool)

(declare-fun ++!14313 (List!65034 List!65034) List!65034)

(assert (=> b!6341033 (= e!3851530 (= (++!14313 (_1!36527 (get!22451 lt!2362511)) (_2!36527 (get!22451 lt!2362511))) s!2326))))

(declare-fun b!6341034 () Bool)

(assert (=> b!6341034 (= e!3851534 (Some!16135 (tuple2!66449 Nil!64910 s!2326)))))

(declare-fun b!6341035 () Bool)

(declare-fun res!2609492 () Bool)

(assert (=> b!6341035 (=> (not res!2609492) (not e!3851530))))

(assert (=> b!6341035 (= res!2609492 (matchR!8428 (regOne!33002 r!7292) (_1!36527 (get!22451 lt!2362511))))))

(declare-fun b!6341036 () Bool)

(declare-fun e!3851533 () Option!16136)

(assert (=> b!6341036 (= e!3851533 None!16135)))

(declare-fun b!6341037 () Bool)

(assert (=> b!6341037 (= e!3851534 e!3851533)))

(declare-fun c!1152896 () Bool)

(assert (=> b!6341037 (= c!1152896 ((_ is Nil!64910) s!2326))))

(declare-fun b!6341038 () Bool)

(assert (=> b!6341038 (= e!3851532 (not (isDefined!12839 lt!2362511)))))

(declare-fun b!6341039 () Bool)

(declare-fun lt!2362509 () Unit!158311)

(declare-fun lt!2362510 () Unit!158311)

(assert (=> b!6341039 (= lt!2362509 lt!2362510)))

(assert (=> b!6341039 (= (++!14313 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (t!378620 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2408 (List!65034 C!32760 List!65034 List!65034) Unit!158311)

(assert (=> b!6341039 (= lt!2362510 (lemmaMoveElementToOtherListKeepsConcatEq!2408 Nil!64910 (h!71358 s!2326) (t!378620 s!2326) s!2326))))

(assert (=> b!6341039 (= e!3851533 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (t!378620 s!2326) s!2326))))

(assert (= (and d!1990046 res!2609493) b!6341032))

(assert (= (and d!1990046 c!1152895) b!6341034))

(assert (= (and d!1990046 (not c!1152895)) b!6341037))

(assert (= (and b!6341037 c!1152896) b!6341036))

(assert (= (and b!6341037 (not c!1152896)) b!6341039))

(assert (= (and d!1990046 res!2609496) b!6341035))

(assert (= (and b!6341035 res!2609492) b!6341031))

(assert (= (and b!6341031 res!2609494) b!6341033))

(assert (= (and d!1990046 (not res!2609495)) b!6341038))

(declare-fun m!7149560 () Bool)

(assert (=> b!6341032 m!7149560))

(declare-fun m!7149562 () Bool)

(assert (=> b!6341033 m!7149562))

(declare-fun m!7149564 () Bool)

(assert (=> b!6341033 m!7149564))

(assert (=> b!6341031 m!7149562))

(declare-fun m!7149566 () Bool)

(assert (=> b!6341031 m!7149566))

(declare-fun m!7149568 () Bool)

(assert (=> b!6341039 m!7149568))

(assert (=> b!6341039 m!7149568))

(declare-fun m!7149570 () Bool)

(assert (=> b!6341039 m!7149570))

(declare-fun m!7149572 () Bool)

(assert (=> b!6341039 m!7149572))

(assert (=> b!6341039 m!7149568))

(declare-fun m!7149580 () Bool)

(assert (=> b!6341039 m!7149580))

(declare-fun m!7149582 () Bool)

(assert (=> d!1990046 m!7149582))

(declare-fun m!7149584 () Bool)

(assert (=> d!1990046 m!7149584))

(declare-fun m!7149586 () Bool)

(assert (=> d!1990046 m!7149586))

(assert (=> b!6341035 m!7149562))

(declare-fun m!7149588 () Bool)

(assert (=> b!6341035 m!7149588))

(assert (=> b!6341038 m!7149582))

(assert (=> b!6340627 d!1990046))

(declare-fun d!1990064 () Bool)

(declare-fun choose!47010 (Int) Bool)

(assert (=> d!1990064 (= (Exists!3315 lambda!348313) (choose!47010 lambda!348313))))

(declare-fun bs!1587585 () Bool)

(assert (= bs!1587585 d!1990064))

(declare-fun m!7149590 () Bool)

(assert (=> bs!1587585 m!7149590))

(assert (=> b!6340627 d!1990064))

(declare-fun d!1990066 () Bool)

(assert (=> d!1990066 (= (Exists!3315 lambda!348314) (choose!47010 lambda!348314))))

(declare-fun bs!1587586 () Bool)

(assert (= bs!1587586 d!1990066))

(declare-fun m!7149592 () Bool)

(assert (=> bs!1587586 m!7149592))

(assert (=> b!6340627 d!1990066))

(declare-fun bs!1587597 () Bool)

(declare-fun d!1990068 () Bool)

(assert (= bs!1587597 (and d!1990068 b!6340627)))

(declare-fun lambda!348370 () Int)

(assert (=> bs!1587597 (= lambda!348370 lambda!348313)))

(assert (=> bs!1587597 (not (= lambda!348370 lambda!348314))))

(assert (=> d!1990068 true))

(assert (=> d!1990068 true))

(assert (=> d!1990068 true))

(assert (=> d!1990068 (= (isDefined!12839 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326)) (Exists!3315 lambda!348370))))

(declare-fun lt!2362524 () Unit!158311)

(declare-fun choose!47011 (Regex!16245 Regex!16245 List!65034) Unit!158311)

(assert (=> d!1990068 (= lt!2362524 (choose!47011 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326))))

(assert (=> d!1990068 (validRegex!7981 (regOne!33002 r!7292))))

(assert (=> d!1990068 (= (lemmaFindConcatSeparationEquivalentToExists!2314 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326) lt!2362524)))

(declare-fun bs!1587598 () Bool)

(assert (= bs!1587598 d!1990068))

(declare-fun m!7149614 () Bool)

(assert (=> bs!1587598 m!7149614))

(assert (=> bs!1587598 m!7149276))

(assert (=> bs!1587598 m!7149278))

(assert (=> bs!1587598 m!7149586))

(assert (=> bs!1587598 m!7149276))

(declare-fun m!7149616 () Bool)

(assert (=> bs!1587598 m!7149616))

(assert (=> b!6340627 d!1990068))

(declare-fun bs!1587601 () Bool)

(declare-fun d!1990084 () Bool)

(assert (= bs!1587601 (and d!1990084 b!6340627)))

(declare-fun lambda!348375 () Int)

(assert (=> bs!1587601 (= lambda!348375 lambda!348313)))

(assert (=> bs!1587601 (not (= lambda!348375 lambda!348314))))

(declare-fun bs!1587602 () Bool)

(assert (= bs!1587602 (and d!1990084 d!1990068)))

(assert (=> bs!1587602 (= lambda!348375 lambda!348370)))

(assert (=> d!1990084 true))

(assert (=> d!1990084 true))

(assert (=> d!1990084 true))

(declare-fun lambda!348376 () Int)

(assert (=> bs!1587601 (not (= lambda!348376 lambda!348313))))

(assert (=> bs!1587601 (= lambda!348376 lambda!348314)))

(assert (=> bs!1587602 (not (= lambda!348376 lambda!348370))))

(declare-fun bs!1587603 () Bool)

(assert (= bs!1587603 d!1990084))

(assert (=> bs!1587603 (not (= lambda!348376 lambda!348375))))

(assert (=> d!1990084 true))

(assert (=> d!1990084 true))

(assert (=> d!1990084 true))

(assert (=> d!1990084 (= (Exists!3315 lambda!348375) (Exists!3315 lambda!348376))))

(declare-fun lt!2362536 () Unit!158311)

(declare-fun choose!47012 (Regex!16245 Regex!16245 List!65034) Unit!158311)

(assert (=> d!1990084 (= lt!2362536 (choose!47012 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326))))

(assert (=> d!1990084 (validRegex!7981 (regOne!33002 r!7292))))

(assert (=> d!1990084 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1852 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326) lt!2362536)))

(declare-fun m!7149646 () Bool)

(assert (=> bs!1587603 m!7149646))

(declare-fun m!7149648 () Bool)

(assert (=> bs!1587603 m!7149648))

(declare-fun m!7149650 () Bool)

(assert (=> bs!1587603 m!7149650))

(assert (=> bs!1587603 m!7149586))

(assert (=> b!6340627 d!1990084))

(declare-fun d!1990092 () Bool)

(declare-fun isEmpty!36993 (Option!16136) Bool)

(assert (=> d!1990092 (= (isDefined!12839 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326)) (not (isEmpty!36993 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326))))))

(declare-fun bs!1587614 () Bool)

(assert (= bs!1587614 d!1990092))

(assert (=> bs!1587614 m!7149276))

(declare-fun m!7149664 () Bool)

(assert (=> bs!1587614 m!7149664))

(assert (=> b!6340627 d!1990092))

(declare-fun bs!1587630 () Bool)

(declare-fun b!6341243 () Bool)

(assert (= bs!1587630 (and b!6341243 d!1990084)))

(declare-fun lambda!348392 () Int)

(assert (=> bs!1587630 (not (= lambda!348392 lambda!348375))))

(assert (=> bs!1587630 (not (= lambda!348392 lambda!348376))))

(declare-fun bs!1587631 () Bool)

(assert (= bs!1587631 (and b!6341243 b!6340627)))

(assert (=> bs!1587631 (not (= lambda!348392 lambda!348314))))

(declare-fun bs!1587633 () Bool)

(assert (= bs!1587633 (and b!6341243 d!1990068)))

(assert (=> bs!1587633 (not (= lambda!348392 lambda!348370))))

(assert (=> bs!1587631 (not (= lambda!348392 lambda!348313))))

(assert (=> b!6341243 true))

(assert (=> b!6341243 true))

(declare-fun bs!1587635 () Bool)

(declare-fun b!6341245 () Bool)

(assert (= bs!1587635 (and b!6341245 d!1990084)))

(declare-fun lambda!348393 () Int)

(assert (=> bs!1587635 (not (= lambda!348393 lambda!348375))))

(declare-fun bs!1587636 () Bool)

(assert (= bs!1587636 (and b!6341245 b!6341243)))

(assert (=> bs!1587636 (not (= lambda!348393 lambda!348392))))

(assert (=> bs!1587635 (= lambda!348393 lambda!348376)))

(declare-fun bs!1587637 () Bool)

(assert (= bs!1587637 (and b!6341245 b!6340627)))

(assert (=> bs!1587637 (= lambda!348393 lambda!348314)))

(declare-fun bs!1587638 () Bool)

(assert (= bs!1587638 (and b!6341245 d!1990068)))

(assert (=> bs!1587638 (not (= lambda!348393 lambda!348370))))

(assert (=> bs!1587637 (not (= lambda!348393 lambda!348313))))

(assert (=> b!6341245 true))

(assert (=> b!6341245 true))

(declare-fun b!6341237 () Bool)

(declare-fun c!1152941 () Bool)

(assert (=> b!6341237 (= c!1152941 ((_ is Union!16245) r!7292))))

(declare-fun e!3851646 () Bool)

(declare-fun e!3851643 () Bool)

(assert (=> b!6341237 (= e!3851646 e!3851643)))

(declare-fun b!6341238 () Bool)

(declare-fun e!3851645 () Bool)

(assert (=> b!6341238 (= e!3851643 e!3851645)))

(declare-fun c!1152938 () Bool)

(assert (=> b!6341238 (= c!1152938 ((_ is Star!16245) r!7292))))

(declare-fun b!6341239 () Bool)

(declare-fun c!1152939 () Bool)

(assert (=> b!6341239 (= c!1152939 ((_ is ElementMatch!16245) r!7292))))

(declare-fun e!3851639 () Bool)

(assert (=> b!6341239 (= e!3851639 e!3851646)))

(declare-fun b!6341240 () Bool)

(declare-fun e!3851644 () Bool)

(assert (=> b!6341240 (= e!3851644 e!3851639)))

(declare-fun res!2609574 () Bool)

(assert (=> b!6341240 (= res!2609574 (not ((_ is EmptyLang!16245) r!7292)))))

(assert (=> b!6341240 (=> (not res!2609574) (not e!3851639))))

(declare-fun b!6341241 () Bool)

(declare-fun res!2609575 () Bool)

(declare-fun e!3851640 () Bool)

(assert (=> b!6341241 (=> res!2609575 e!3851640)))

(declare-fun call!540392 () Bool)

(assert (=> b!6341241 (= res!2609575 call!540392)))

(assert (=> b!6341241 (= e!3851645 e!3851640)))

(declare-fun d!1990100 () Bool)

(declare-fun c!1152940 () Bool)

(assert (=> d!1990100 (= c!1152940 ((_ is EmptyExpr!16245) r!7292))))

(assert (=> d!1990100 (= (matchRSpec!3346 r!7292 s!2326) e!3851644)))

(declare-fun b!6341242 () Bool)

(assert (=> b!6341242 (= e!3851646 (= s!2326 (Cons!64910 (c!1152752 r!7292) Nil!64910)))))

(declare-fun bm!540386 () Bool)

(declare-fun call!540391 () Bool)

(assert (=> bm!540386 (= call!540391 (Exists!3315 (ite c!1152938 lambda!348392 lambda!348393)))))

(assert (=> b!6341243 (= e!3851640 call!540391)))

(declare-fun b!6341244 () Bool)

(declare-fun e!3851642 () Bool)

(assert (=> b!6341244 (= e!3851643 e!3851642)))

(declare-fun res!2609576 () Bool)

(assert (=> b!6341244 (= res!2609576 (matchRSpec!3346 (regOne!33003 r!7292) s!2326))))

(assert (=> b!6341244 (=> res!2609576 e!3851642)))

(assert (=> b!6341245 (= e!3851645 call!540391)))

(declare-fun b!6341246 () Bool)

(assert (=> b!6341246 (= e!3851644 call!540392)))

(declare-fun b!6341247 () Bool)

(assert (=> b!6341247 (= e!3851642 (matchRSpec!3346 (regTwo!33003 r!7292) s!2326))))

(declare-fun bm!540387 () Bool)

(assert (=> bm!540387 (= call!540392 (isEmpty!36992 s!2326))))

(assert (= (and d!1990100 c!1152940) b!6341246))

(assert (= (and d!1990100 (not c!1152940)) b!6341240))

(assert (= (and b!6341240 res!2609574) b!6341239))

(assert (= (and b!6341239 c!1152939) b!6341242))

(assert (= (and b!6341239 (not c!1152939)) b!6341237))

(assert (= (and b!6341237 c!1152941) b!6341244))

(assert (= (and b!6341237 (not c!1152941)) b!6341238))

(assert (= (and b!6341244 (not res!2609576)) b!6341247))

(assert (= (and b!6341238 c!1152938) b!6341241))

(assert (= (and b!6341238 (not c!1152938)) b!6341245))

(assert (= (and b!6341241 (not res!2609575)) b!6341243))

(assert (= (or b!6341243 b!6341245) bm!540386))

(assert (= (or b!6341246 b!6341241) bm!540387))

(declare-fun m!7149728 () Bool)

(assert (=> bm!540386 m!7149728))

(declare-fun m!7149730 () Bool)

(assert (=> b!6341244 m!7149730))

(declare-fun m!7149732 () Bool)

(assert (=> b!6341247 m!7149732))

(declare-fun m!7149734 () Bool)

(assert (=> bm!540387 m!7149734))

(assert (=> b!6340628 d!1990100))

(declare-fun b!6341290 () Bool)

(declare-fun e!3851670 () Bool)

(assert (=> b!6341290 (= e!3851670 (not (= (head!12981 s!2326) (c!1152752 r!7292))))))

(declare-fun b!6341291 () Bool)

(declare-fun e!3851672 () Bool)

(declare-fun e!3851673 () Bool)

(assert (=> b!6341291 (= e!3851672 e!3851673)))

(declare-fun c!1152949 () Bool)

(assert (=> b!6341291 (= c!1152949 ((_ is EmptyLang!16245) r!7292))))

(declare-fun b!6341292 () Bool)

(declare-fun e!3851668 () Bool)

(declare-fun e!3851671 () Bool)

(assert (=> b!6341292 (= e!3851668 e!3851671)))

(declare-fun res!2609596 () Bool)

(assert (=> b!6341292 (=> (not res!2609596) (not e!3851671))))

(declare-fun lt!2362551 () Bool)

(assert (=> b!6341292 (= res!2609596 (not lt!2362551))))

(declare-fun b!6341293 () Bool)

(declare-fun e!3851669 () Bool)

(assert (=> b!6341293 (= e!3851669 (nullable!6238 r!7292))))

(declare-fun b!6341294 () Bool)

(declare-fun res!2609597 () Bool)

(declare-fun e!3851667 () Bool)

(assert (=> b!6341294 (=> (not res!2609597) (not e!3851667))))

(assert (=> b!6341294 (= res!2609597 (isEmpty!36992 (tail!12067 s!2326)))))

(declare-fun d!1990128 () Bool)

(assert (=> d!1990128 e!3851672))

(declare-fun c!1152948 () Bool)

(assert (=> d!1990128 (= c!1152948 ((_ is EmptyExpr!16245) r!7292))))

(assert (=> d!1990128 (= lt!2362551 e!3851669)))

(declare-fun c!1152950 () Bool)

(assert (=> d!1990128 (= c!1152950 (isEmpty!36992 s!2326))))

(assert (=> d!1990128 (validRegex!7981 r!7292)))

(assert (=> d!1990128 (= (matchR!8428 r!7292 s!2326) lt!2362551)))

(declare-fun b!6341295 () Bool)

(declare-fun call!540395 () Bool)

(assert (=> b!6341295 (= e!3851672 (= lt!2362551 call!540395))))

(declare-fun b!6341296 () Bool)

(declare-fun res!2609600 () Bool)

(assert (=> b!6341296 (=> (not res!2609600) (not e!3851667))))

(assert (=> b!6341296 (= res!2609600 (not call!540395))))

(declare-fun b!6341297 () Bool)

(declare-fun res!2609593 () Bool)

(assert (=> b!6341297 (=> res!2609593 e!3851668)))

(assert (=> b!6341297 (= res!2609593 (not ((_ is ElementMatch!16245) r!7292)))))

(assert (=> b!6341297 (= e!3851673 e!3851668)))

(declare-fun b!6341298 () Bool)

(declare-fun res!2609594 () Bool)

(assert (=> b!6341298 (=> res!2609594 e!3851670)))

(assert (=> b!6341298 (= res!2609594 (not (isEmpty!36992 (tail!12067 s!2326))))))

(declare-fun b!6341299 () Bool)

(assert (=> b!6341299 (= e!3851667 (= (head!12981 s!2326) (c!1152752 r!7292)))))

(declare-fun b!6341300 () Bool)

(declare-fun derivativeStep!4950 (Regex!16245 C!32760) Regex!16245)

(assert (=> b!6341300 (= e!3851669 (matchR!8428 (derivativeStep!4950 r!7292 (head!12981 s!2326)) (tail!12067 s!2326)))))

(declare-fun b!6341301 () Bool)

(assert (=> b!6341301 (= e!3851671 e!3851670)))

(declare-fun res!2609595 () Bool)

(assert (=> b!6341301 (=> res!2609595 e!3851670)))

(assert (=> b!6341301 (= res!2609595 call!540395)))

(declare-fun bm!540390 () Bool)

(assert (=> bm!540390 (= call!540395 (isEmpty!36992 s!2326))))

(declare-fun b!6341302 () Bool)

(declare-fun res!2609599 () Bool)

(assert (=> b!6341302 (=> res!2609599 e!3851668)))

(assert (=> b!6341302 (= res!2609599 e!3851667)))

(declare-fun res!2609598 () Bool)

(assert (=> b!6341302 (=> (not res!2609598) (not e!3851667))))

(assert (=> b!6341302 (= res!2609598 lt!2362551)))

(declare-fun b!6341303 () Bool)

(assert (=> b!6341303 (= e!3851673 (not lt!2362551))))

(assert (= (and d!1990128 c!1152950) b!6341293))

(assert (= (and d!1990128 (not c!1152950)) b!6341300))

(assert (= (and d!1990128 c!1152948) b!6341295))

(assert (= (and d!1990128 (not c!1152948)) b!6341291))

(assert (= (and b!6341291 c!1152949) b!6341303))

(assert (= (and b!6341291 (not c!1152949)) b!6341297))

(assert (= (and b!6341297 (not res!2609593)) b!6341302))

(assert (= (and b!6341302 res!2609598) b!6341296))

(assert (= (and b!6341296 res!2609600) b!6341294))

(assert (= (and b!6341294 res!2609597) b!6341299))

(assert (= (and b!6341302 (not res!2609599)) b!6341292))

(assert (= (and b!6341292 res!2609596) b!6341301))

(assert (= (and b!6341301 (not res!2609595)) b!6341298))

(assert (= (and b!6341298 (not res!2609594)) b!6341290))

(assert (= (or b!6341295 b!6341296 b!6341301) bm!540390))

(assert (=> bm!540390 m!7149734))

(declare-fun m!7149736 () Bool)

(assert (=> b!6341294 m!7149736))

(assert (=> b!6341294 m!7149736))

(declare-fun m!7149738 () Bool)

(assert (=> b!6341294 m!7149738))

(declare-fun m!7149740 () Bool)

(assert (=> b!6341293 m!7149740))

(declare-fun m!7149742 () Bool)

(assert (=> b!6341299 m!7149742))

(assert (=> b!6341290 m!7149742))

(assert (=> b!6341298 m!7149736))

(assert (=> b!6341298 m!7149736))

(assert (=> b!6341298 m!7149738))

(assert (=> b!6341300 m!7149742))

(assert (=> b!6341300 m!7149742))

(declare-fun m!7149744 () Bool)

(assert (=> b!6341300 m!7149744))

(assert (=> b!6341300 m!7149736))

(assert (=> b!6341300 m!7149744))

(assert (=> b!6341300 m!7149736))

(declare-fun m!7149746 () Bool)

(assert (=> b!6341300 m!7149746))

(assert (=> d!1990128 m!7149734))

(assert (=> d!1990128 m!7149286))

(assert (=> b!6340628 d!1990128))

(declare-fun d!1990130 () Bool)

(assert (=> d!1990130 (= (matchR!8428 r!7292 s!2326) (matchRSpec!3346 r!7292 s!2326))))

(declare-fun lt!2362554 () Unit!158311)

(declare-fun choose!47013 (Regex!16245 List!65034) Unit!158311)

(assert (=> d!1990130 (= lt!2362554 (choose!47013 r!7292 s!2326))))

(assert (=> d!1990130 (validRegex!7981 r!7292)))

(assert (=> d!1990130 (= (mainMatchTheorem!3346 r!7292 s!2326) lt!2362554)))

(declare-fun bs!1587639 () Bool)

(assert (= bs!1587639 d!1990130))

(assert (=> bs!1587639 m!7149268))

(assert (=> bs!1587639 m!7149266))

(declare-fun m!7149748 () Bool)

(assert (=> bs!1587639 m!7149748))

(assert (=> bs!1587639 m!7149286))

(assert (=> b!6340628 d!1990130))

(declare-fun bs!1587640 () Bool)

(declare-fun d!1990132 () Bool)

(assert (= bs!1587640 (and d!1990132 d!1989984)))

(declare-fun lambda!348396 () Int)

(assert (=> bs!1587640 (= lambda!348396 lambda!348318)))

(declare-fun bs!1587641 () Bool)

(assert (= bs!1587641 (and d!1990132 d!1989990)))

(assert (=> bs!1587641 (= lambda!348396 lambda!348319)))

(declare-fun b!6341324 () Bool)

(declare-fun e!3851691 () Regex!16245)

(declare-fun e!3851688 () Regex!16245)

(assert (=> b!6341324 (= e!3851691 e!3851688)))

(declare-fun c!1152962 () Bool)

(assert (=> b!6341324 (= c!1152962 ((_ is Cons!64911) (unfocusZipperList!1666 zl!343)))))

(declare-fun b!6341325 () Bool)

(declare-fun e!3851687 () Bool)

(declare-fun e!3851686 () Bool)

(assert (=> b!6341325 (= e!3851687 e!3851686)))

(declare-fun c!1152959 () Bool)

(declare-fun tail!12068 (List!65035) List!65035)

(assert (=> b!6341325 (= c!1152959 (isEmpty!36989 (tail!12068 (unfocusZipperList!1666 zl!343))))))

(declare-fun e!3851690 () Bool)

(assert (=> d!1990132 e!3851690))

(declare-fun res!2609606 () Bool)

(assert (=> d!1990132 (=> (not res!2609606) (not e!3851690))))

(declare-fun lt!2362557 () Regex!16245)

(assert (=> d!1990132 (= res!2609606 (validRegex!7981 lt!2362557))))

(assert (=> d!1990132 (= lt!2362557 e!3851691)))

(declare-fun c!1152960 () Bool)

(declare-fun e!3851689 () Bool)

(assert (=> d!1990132 (= c!1152960 e!3851689)))

(declare-fun res!2609605 () Bool)

(assert (=> d!1990132 (=> (not res!2609605) (not e!3851689))))

(assert (=> d!1990132 (= res!2609605 ((_ is Cons!64911) (unfocusZipperList!1666 zl!343)))))

(assert (=> d!1990132 (forall!15401 (unfocusZipperList!1666 zl!343) lambda!348396)))

(assert (=> d!1990132 (= (generalisedUnion!2089 (unfocusZipperList!1666 zl!343)) lt!2362557)))

(declare-fun b!6341326 () Bool)

(assert (=> b!6341326 (= e!3851688 EmptyLang!16245)))

(declare-fun b!6341327 () Bool)

(assert (=> b!6341327 (= e!3851688 (Union!16245 (h!71359 (unfocusZipperList!1666 zl!343)) (generalisedUnion!2089 (t!378621 (unfocusZipperList!1666 zl!343)))))))

(declare-fun b!6341328 () Bool)

(assert (=> b!6341328 (= e!3851690 e!3851687)))

(declare-fun c!1152961 () Bool)

(assert (=> b!6341328 (= c!1152961 (isEmpty!36989 (unfocusZipperList!1666 zl!343)))))

(declare-fun b!6341329 () Bool)

(declare-fun head!12983 (List!65035) Regex!16245)

(assert (=> b!6341329 (= e!3851686 (= lt!2362557 (head!12983 (unfocusZipperList!1666 zl!343))))))

(declare-fun b!6341330 () Bool)

(declare-fun isUnion!1084 (Regex!16245) Bool)

(assert (=> b!6341330 (= e!3851686 (isUnion!1084 lt!2362557))))

(declare-fun b!6341331 () Bool)

(assert (=> b!6341331 (= e!3851689 (isEmpty!36989 (t!378621 (unfocusZipperList!1666 zl!343))))))

(declare-fun b!6341332 () Bool)

(assert (=> b!6341332 (= e!3851691 (h!71359 (unfocusZipperList!1666 zl!343)))))

(declare-fun b!6341333 () Bool)

(declare-fun isEmptyLang!1654 (Regex!16245) Bool)

(assert (=> b!6341333 (= e!3851687 (isEmptyLang!1654 lt!2362557))))

(assert (= (and d!1990132 res!2609605) b!6341331))

(assert (= (and d!1990132 c!1152960) b!6341332))

(assert (= (and d!1990132 (not c!1152960)) b!6341324))

(assert (= (and b!6341324 c!1152962) b!6341327))

(assert (= (and b!6341324 (not c!1152962)) b!6341326))

(assert (= (and d!1990132 res!2609606) b!6341328))

(assert (= (and b!6341328 c!1152961) b!6341333))

(assert (= (and b!6341328 (not c!1152961)) b!6341325))

(assert (= (and b!6341325 c!1152959) b!6341329))

(assert (= (and b!6341325 (not c!1152959)) b!6341330))

(assert (=> b!6341329 m!7149228))

(declare-fun m!7149750 () Bool)

(assert (=> b!6341329 m!7149750))

(assert (=> b!6341325 m!7149228))

(declare-fun m!7149752 () Bool)

(assert (=> b!6341325 m!7149752))

(assert (=> b!6341325 m!7149752))

(declare-fun m!7149754 () Bool)

(assert (=> b!6341325 m!7149754))

(assert (=> b!6341328 m!7149228))

(declare-fun m!7149756 () Bool)

(assert (=> b!6341328 m!7149756))

(declare-fun m!7149758 () Bool)

(assert (=> b!6341327 m!7149758))

(declare-fun m!7149760 () Bool)

(assert (=> d!1990132 m!7149760))

(assert (=> d!1990132 m!7149228))

(declare-fun m!7149762 () Bool)

(assert (=> d!1990132 m!7149762))

(declare-fun m!7149764 () Bool)

(assert (=> b!6341333 m!7149764))

(declare-fun m!7149766 () Bool)

(assert (=> b!6341330 m!7149766))

(declare-fun m!7149768 () Bool)

(assert (=> b!6341331 m!7149768))

(assert (=> b!6340649 d!1990132))

(declare-fun bs!1587642 () Bool)

(declare-fun d!1990134 () Bool)

(assert (= bs!1587642 (and d!1990134 d!1989984)))

(declare-fun lambda!348399 () Int)

(assert (=> bs!1587642 (= lambda!348399 lambda!348318)))

(declare-fun bs!1587643 () Bool)

(assert (= bs!1587643 (and d!1990134 d!1989990)))

(assert (=> bs!1587643 (= lambda!348399 lambda!348319)))

(declare-fun bs!1587644 () Bool)

(assert (= bs!1587644 (and d!1990134 d!1990132)))

(assert (=> bs!1587644 (= lambda!348399 lambda!348396)))

(declare-fun lt!2362560 () List!65035)

(assert (=> d!1990134 (forall!15401 lt!2362560 lambda!348399)))

(declare-fun e!3851694 () List!65035)

(assert (=> d!1990134 (= lt!2362560 e!3851694)))

(declare-fun c!1152965 () Bool)

(assert (=> d!1990134 (= c!1152965 ((_ is Cons!64912) zl!343))))

(assert (=> d!1990134 (= (unfocusZipperList!1666 zl!343) lt!2362560)))

(declare-fun b!6341338 () Bool)

(assert (=> b!6341338 (= e!3851694 (Cons!64911 (generalisedConcat!1842 (exprs!6129 (h!71360 zl!343))) (unfocusZipperList!1666 (t!378622 zl!343))))))

(declare-fun b!6341339 () Bool)

(assert (=> b!6341339 (= e!3851694 Nil!64911)))

(assert (= (and d!1990134 c!1152965) b!6341338))

(assert (= (and d!1990134 (not c!1152965)) b!6341339))

(declare-fun m!7149770 () Bool)

(assert (=> d!1990134 m!7149770))

(assert (=> b!6341338 m!7149188))

(declare-fun m!7149772 () Bool)

(assert (=> b!6341338 m!7149772))

(assert (=> b!6340649 d!1990134))

(declare-fun d!1990136 () Bool)

(declare-fun e!3851697 () Bool)

(assert (=> d!1990136 (= (matchZipper!2257 ((_ map or) lt!2362434 lt!2362436) (t!378620 s!2326)) e!3851697)))

(declare-fun res!2609609 () Bool)

(assert (=> d!1990136 (=> res!2609609 e!3851697)))

(assert (=> d!1990136 (= res!2609609 (matchZipper!2257 lt!2362434 (t!378620 s!2326)))))

(declare-fun lt!2362563 () Unit!158311)

(declare-fun choose!47015 ((InoxSet Context!11258) (InoxSet Context!11258) List!65034) Unit!158311)

(assert (=> d!1990136 (= lt!2362563 (choose!47015 lt!2362434 lt!2362436 (t!378620 s!2326)))))

(assert (=> d!1990136 (= (lemmaZipperConcatMatchesSameAsBothZippers!1076 lt!2362434 lt!2362436 (t!378620 s!2326)) lt!2362563)))

(declare-fun b!6341342 () Bool)

(assert (=> b!6341342 (= e!3851697 (matchZipper!2257 lt!2362436 (t!378620 s!2326)))))

(assert (= (and d!1990136 (not res!2609609)) b!6341342))

(assert (=> d!1990136 m!7149220))

(assert (=> d!1990136 m!7149218))

(declare-fun m!7149774 () Bool)

(assert (=> d!1990136 m!7149774))

(assert (=> b!6341342 m!7149264))

(assert (=> b!6340639 d!1990136))

(declare-fun d!1990138 () Bool)

(declare-fun c!1152966 () Bool)

(assert (=> d!1990138 (= c!1152966 (isEmpty!36992 (t!378620 s!2326)))))

(declare-fun e!3851698 () Bool)

(assert (=> d!1990138 (= (matchZipper!2257 lt!2362434 (t!378620 s!2326)) e!3851698)))

(declare-fun b!6341343 () Bool)

(assert (=> b!6341343 (= e!3851698 (nullableZipper!2011 lt!2362434))))

(declare-fun b!6341344 () Bool)

(assert (=> b!6341344 (= e!3851698 (matchZipper!2257 (derivationStepZipper!2211 lt!2362434 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))))))

(assert (= (and d!1990138 c!1152966) b!6341343))

(assert (= (and d!1990138 (not c!1152966)) b!6341344))

(assert (=> d!1990138 m!7149328))

(declare-fun m!7149776 () Bool)

(assert (=> b!6341343 m!7149776))

(assert (=> b!6341344 m!7149334))

(assert (=> b!6341344 m!7149334))

(declare-fun m!7149778 () Bool)

(assert (=> b!6341344 m!7149778))

(assert (=> b!6341344 m!7149338))

(assert (=> b!6341344 m!7149778))

(assert (=> b!6341344 m!7149338))

(declare-fun m!7149780 () Bool)

(assert (=> b!6341344 m!7149780))

(assert (=> b!6340639 d!1990138))

(declare-fun d!1990140 () Bool)

(declare-fun c!1152967 () Bool)

(assert (=> d!1990140 (= c!1152967 (isEmpty!36992 (t!378620 s!2326)))))

(declare-fun e!3851699 () Bool)

(assert (=> d!1990140 (= (matchZipper!2257 ((_ map or) lt!2362434 lt!2362436) (t!378620 s!2326)) e!3851699)))

(declare-fun b!6341345 () Bool)

(assert (=> b!6341345 (= e!3851699 (nullableZipper!2011 ((_ map or) lt!2362434 lt!2362436)))))

(declare-fun b!6341346 () Bool)

(assert (=> b!6341346 (= e!3851699 (matchZipper!2257 (derivationStepZipper!2211 ((_ map or) lt!2362434 lt!2362436) (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))))))

(assert (= (and d!1990140 c!1152967) b!6341345))

(assert (= (and d!1990140 (not c!1152967)) b!6341346))

(assert (=> d!1990140 m!7149328))

(declare-fun m!7149782 () Bool)

(assert (=> b!6341345 m!7149782))

(assert (=> b!6341346 m!7149334))

(assert (=> b!6341346 m!7149334))

(declare-fun m!7149784 () Bool)

(assert (=> b!6341346 m!7149784))

(assert (=> b!6341346 m!7149338))

(assert (=> b!6341346 m!7149784))

(assert (=> b!6341346 m!7149338))

(declare-fun m!7149786 () Bool)

(assert (=> b!6341346 m!7149786))

(assert (=> b!6340639 d!1990140))

(declare-fun d!1990142 () Bool)

(declare-fun c!1152968 () Bool)

(assert (=> d!1990142 (= c!1152968 (isEmpty!36992 (t!378620 s!2326)))))

(declare-fun e!3851700 () Bool)

(assert (=> d!1990142 (= (matchZipper!2257 lt!2362436 (t!378620 s!2326)) e!3851700)))

(declare-fun b!6341347 () Bool)

(assert (=> b!6341347 (= e!3851700 (nullableZipper!2011 lt!2362436))))

(declare-fun b!6341348 () Bool)

(assert (=> b!6341348 (= e!3851700 (matchZipper!2257 (derivationStepZipper!2211 lt!2362436 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))))))

(assert (= (and d!1990142 c!1152968) b!6341347))

(assert (= (and d!1990142 (not c!1152968)) b!6341348))

(assert (=> d!1990142 m!7149328))

(declare-fun m!7149788 () Bool)

(assert (=> b!6341347 m!7149788))

(assert (=> b!6341348 m!7149334))

(assert (=> b!6341348 m!7149334))

(declare-fun m!7149790 () Bool)

(assert (=> b!6341348 m!7149790))

(assert (=> b!6341348 m!7149338))

(assert (=> b!6341348 m!7149790))

(assert (=> b!6341348 m!7149338))

(declare-fun m!7149792 () Bool)

(assert (=> b!6341348 m!7149792))

(assert (=> b!6340629 d!1990142))

(declare-fun d!1990144 () Bool)

(assert (=> d!1990144 (= (matchR!8428 lt!2362424 s!2326) (matchRSpec!3346 lt!2362424 s!2326))))

(declare-fun lt!2362564 () Unit!158311)

(assert (=> d!1990144 (= lt!2362564 (choose!47013 lt!2362424 s!2326))))

(assert (=> d!1990144 (validRegex!7981 lt!2362424)))

(assert (=> d!1990144 (= (mainMatchTheorem!3346 lt!2362424 s!2326) lt!2362564)))

(declare-fun bs!1587645 () Bool)

(assert (= bs!1587645 d!1990144))

(assert (=> bs!1587645 m!7149246))

(assert (=> bs!1587645 m!7149250))

(declare-fun m!7149794 () Bool)

(assert (=> bs!1587645 m!7149794))

(declare-fun m!7149796 () Bool)

(assert (=> bs!1587645 m!7149796))

(assert (=> b!6340630 d!1990144))

(declare-fun bs!1587646 () Bool)

(declare-fun b!6341355 () Bool)

(assert (= bs!1587646 (and b!6341355 d!1990084)))

(declare-fun lambda!348400 () Int)

(assert (=> bs!1587646 (not (= lambda!348400 lambda!348375))))

(declare-fun bs!1587647 () Bool)

(assert (= bs!1587647 (and b!6341355 b!6341243)))

(assert (=> bs!1587647 (= (and (= (reg!16574 lt!2362424) (reg!16574 r!7292)) (= lt!2362424 r!7292)) (= lambda!348400 lambda!348392))))

(declare-fun bs!1587648 () Bool)

(assert (= bs!1587648 (and b!6341355 b!6341245)))

(assert (=> bs!1587648 (not (= lambda!348400 lambda!348393))))

(assert (=> bs!1587646 (not (= lambda!348400 lambda!348376))))

(declare-fun bs!1587649 () Bool)

(assert (= bs!1587649 (and b!6341355 b!6340627)))

(assert (=> bs!1587649 (not (= lambda!348400 lambda!348314))))

(declare-fun bs!1587650 () Bool)

(assert (= bs!1587650 (and b!6341355 d!1990068)))

(assert (=> bs!1587650 (not (= lambda!348400 lambda!348370))))

(assert (=> bs!1587649 (not (= lambda!348400 lambda!348313))))

(assert (=> b!6341355 true))

(assert (=> b!6341355 true))

(declare-fun bs!1587651 () Bool)

(declare-fun b!6341357 () Bool)

(assert (= bs!1587651 (and b!6341357 d!1990084)))

(declare-fun lambda!348401 () Int)

(assert (=> bs!1587651 (not (= lambda!348401 lambda!348375))))

(declare-fun bs!1587652 () Bool)

(assert (= bs!1587652 (and b!6341357 b!6341243)))

(assert (=> bs!1587652 (not (= lambda!348401 lambda!348392))))

(declare-fun bs!1587653 () Bool)

(assert (= bs!1587653 (and b!6341357 b!6341245)))

(assert (=> bs!1587653 (= (and (= (regOne!33002 lt!2362424) (regOne!33002 r!7292)) (= (regTwo!33002 lt!2362424) (regTwo!33002 r!7292))) (= lambda!348401 lambda!348393))))

(assert (=> bs!1587651 (= (and (= (regOne!33002 lt!2362424) (regOne!33002 r!7292)) (= (regTwo!33002 lt!2362424) (regTwo!33002 r!7292))) (= lambda!348401 lambda!348376))))

(declare-fun bs!1587654 () Bool)

(assert (= bs!1587654 (and b!6341357 b!6340627)))

(assert (=> bs!1587654 (= (and (= (regOne!33002 lt!2362424) (regOne!33002 r!7292)) (= (regTwo!33002 lt!2362424) (regTwo!33002 r!7292))) (= lambda!348401 lambda!348314))))

(declare-fun bs!1587655 () Bool)

(assert (= bs!1587655 (and b!6341357 b!6341355)))

(assert (=> bs!1587655 (not (= lambda!348401 lambda!348400))))

(declare-fun bs!1587656 () Bool)

(assert (= bs!1587656 (and b!6341357 d!1990068)))

(assert (=> bs!1587656 (not (= lambda!348401 lambda!348370))))

(assert (=> bs!1587654 (not (= lambda!348401 lambda!348313))))

(assert (=> b!6341357 true))

(assert (=> b!6341357 true))

(declare-fun b!6341349 () Bool)

(declare-fun c!1152972 () Bool)

(assert (=> b!6341349 (= c!1152972 ((_ is Union!16245) lt!2362424))))

(declare-fun e!3851707 () Bool)

(declare-fun e!3851704 () Bool)

(assert (=> b!6341349 (= e!3851707 e!3851704)))

(declare-fun b!6341350 () Bool)

(declare-fun e!3851706 () Bool)

(assert (=> b!6341350 (= e!3851704 e!3851706)))

(declare-fun c!1152969 () Bool)

(assert (=> b!6341350 (= c!1152969 ((_ is Star!16245) lt!2362424))))

(declare-fun b!6341351 () Bool)

(declare-fun c!1152970 () Bool)

(assert (=> b!6341351 (= c!1152970 ((_ is ElementMatch!16245) lt!2362424))))

(declare-fun e!3851701 () Bool)

(assert (=> b!6341351 (= e!3851701 e!3851707)))

(declare-fun b!6341352 () Bool)

(declare-fun e!3851705 () Bool)

(assert (=> b!6341352 (= e!3851705 e!3851701)))

(declare-fun res!2609610 () Bool)

(assert (=> b!6341352 (= res!2609610 (not ((_ is EmptyLang!16245) lt!2362424)))))

(assert (=> b!6341352 (=> (not res!2609610) (not e!3851701))))

(declare-fun b!6341353 () Bool)

(declare-fun res!2609611 () Bool)

(declare-fun e!3851702 () Bool)

(assert (=> b!6341353 (=> res!2609611 e!3851702)))

(declare-fun call!540397 () Bool)

(assert (=> b!6341353 (= res!2609611 call!540397)))

(assert (=> b!6341353 (= e!3851706 e!3851702)))

(declare-fun d!1990146 () Bool)

(declare-fun c!1152971 () Bool)

(assert (=> d!1990146 (= c!1152971 ((_ is EmptyExpr!16245) lt!2362424))))

(assert (=> d!1990146 (= (matchRSpec!3346 lt!2362424 s!2326) e!3851705)))

(declare-fun b!6341354 () Bool)

(assert (=> b!6341354 (= e!3851707 (= s!2326 (Cons!64910 (c!1152752 lt!2362424) Nil!64910)))))

(declare-fun bm!540391 () Bool)

(declare-fun call!540396 () Bool)

(assert (=> bm!540391 (= call!540396 (Exists!3315 (ite c!1152969 lambda!348400 lambda!348401)))))

(assert (=> b!6341355 (= e!3851702 call!540396)))

(declare-fun b!6341356 () Bool)

(declare-fun e!3851703 () Bool)

(assert (=> b!6341356 (= e!3851704 e!3851703)))

(declare-fun res!2609612 () Bool)

(assert (=> b!6341356 (= res!2609612 (matchRSpec!3346 (regOne!33003 lt!2362424) s!2326))))

(assert (=> b!6341356 (=> res!2609612 e!3851703)))

(assert (=> b!6341357 (= e!3851706 call!540396)))

(declare-fun b!6341358 () Bool)

(assert (=> b!6341358 (= e!3851705 call!540397)))

(declare-fun b!6341359 () Bool)

(assert (=> b!6341359 (= e!3851703 (matchRSpec!3346 (regTwo!33003 lt!2362424) s!2326))))

(declare-fun bm!540392 () Bool)

(assert (=> bm!540392 (= call!540397 (isEmpty!36992 s!2326))))

(assert (= (and d!1990146 c!1152971) b!6341358))

(assert (= (and d!1990146 (not c!1152971)) b!6341352))

(assert (= (and b!6341352 res!2609610) b!6341351))

(assert (= (and b!6341351 c!1152970) b!6341354))

(assert (= (and b!6341351 (not c!1152970)) b!6341349))

(assert (= (and b!6341349 c!1152972) b!6341356))

(assert (= (and b!6341349 (not c!1152972)) b!6341350))

(assert (= (and b!6341356 (not res!2609612)) b!6341359))

(assert (= (and b!6341350 c!1152969) b!6341353))

(assert (= (and b!6341350 (not c!1152969)) b!6341357))

(assert (= (and b!6341353 (not res!2609611)) b!6341355))

(assert (= (or b!6341355 b!6341357) bm!540391))

(assert (= (or b!6341358 b!6341353) bm!540392))

(declare-fun m!7149798 () Bool)

(assert (=> bm!540391 m!7149798))

(declare-fun m!7149800 () Bool)

(assert (=> b!6341356 m!7149800))

(declare-fun m!7149802 () Bool)

(assert (=> b!6341359 m!7149802))

(assert (=> bm!540392 m!7149734))

(assert (=> b!6340630 d!1990146))

(declare-fun bs!1587657 () Bool)

(declare-fun d!1990148 () Bool)

(assert (= bs!1587657 (and d!1990148 d!1989984)))

(declare-fun lambda!348404 () Int)

(assert (=> bs!1587657 (= lambda!348404 lambda!348318)))

(declare-fun bs!1587658 () Bool)

(assert (= bs!1587658 (and d!1990148 d!1989990)))

(assert (=> bs!1587658 (= lambda!348404 lambda!348319)))

(declare-fun bs!1587659 () Bool)

(assert (= bs!1587659 (and d!1990148 d!1990132)))

(assert (=> bs!1587659 (= lambda!348404 lambda!348396)))

(declare-fun bs!1587660 () Bool)

(assert (= bs!1587660 (and d!1990148 d!1990134)))

(assert (=> bs!1587660 (= lambda!348404 lambda!348399)))

(declare-fun b!6341380 () Bool)

(declare-fun e!3851722 () Bool)

(declare-fun lt!2362567 () Regex!16245)

(assert (=> b!6341380 (= e!3851722 (= lt!2362567 (head!12983 lt!2362431)))))

(declare-fun b!6341381 () Bool)

(declare-fun isConcat!1170 (Regex!16245) Bool)

(assert (=> b!6341381 (= e!3851722 (isConcat!1170 lt!2362567))))

(declare-fun b!6341382 () Bool)

(declare-fun e!3851721 () Regex!16245)

(assert (=> b!6341382 (= e!3851721 EmptyExpr!16245)))

(declare-fun b!6341383 () Bool)

(declare-fun e!3851724 () Regex!16245)

(assert (=> b!6341383 (= e!3851724 e!3851721)))

(declare-fun c!1152982 () Bool)

(assert (=> b!6341383 (= c!1152982 ((_ is Cons!64911) lt!2362431))))

(declare-fun b!6341384 () Bool)

(declare-fun e!3851723 () Bool)

(assert (=> b!6341384 (= e!3851723 (isEmpty!36989 (t!378621 lt!2362431)))))

(declare-fun b!6341386 () Bool)

(declare-fun e!3851720 () Bool)

(declare-fun e!3851725 () Bool)

(assert (=> b!6341386 (= e!3851720 e!3851725)))

(declare-fun c!1152983 () Bool)

(assert (=> b!6341386 (= c!1152983 (isEmpty!36989 lt!2362431))))

(declare-fun b!6341387 () Bool)

(declare-fun isEmptyExpr!1647 (Regex!16245) Bool)

(assert (=> b!6341387 (= e!3851725 (isEmptyExpr!1647 lt!2362567))))

(declare-fun b!6341388 () Bool)

(assert (=> b!6341388 (= e!3851721 (Concat!25090 (h!71359 lt!2362431) (generalisedConcat!1842 (t!378621 lt!2362431))))))

(declare-fun b!6341389 () Bool)

(assert (=> b!6341389 (= e!3851725 e!3851722)))

(declare-fun c!1152984 () Bool)

(assert (=> b!6341389 (= c!1152984 (isEmpty!36989 (tail!12068 lt!2362431)))))

(declare-fun b!6341385 () Bool)

(assert (=> b!6341385 (= e!3851724 (h!71359 lt!2362431))))

(assert (=> d!1990148 e!3851720))

(declare-fun res!2609617 () Bool)

(assert (=> d!1990148 (=> (not res!2609617) (not e!3851720))))

(assert (=> d!1990148 (= res!2609617 (validRegex!7981 lt!2362567))))

(assert (=> d!1990148 (= lt!2362567 e!3851724)))

(declare-fun c!1152981 () Bool)

(assert (=> d!1990148 (= c!1152981 e!3851723)))

(declare-fun res!2609618 () Bool)

(assert (=> d!1990148 (=> (not res!2609618) (not e!3851723))))

(assert (=> d!1990148 (= res!2609618 ((_ is Cons!64911) lt!2362431))))

(assert (=> d!1990148 (forall!15401 lt!2362431 lambda!348404)))

(assert (=> d!1990148 (= (generalisedConcat!1842 lt!2362431) lt!2362567)))

(assert (= (and d!1990148 res!2609618) b!6341384))

(assert (= (and d!1990148 c!1152981) b!6341385))

(assert (= (and d!1990148 (not c!1152981)) b!6341383))

(assert (= (and b!6341383 c!1152982) b!6341388))

(assert (= (and b!6341383 (not c!1152982)) b!6341382))

(assert (= (and d!1990148 res!2609617) b!6341386))

(assert (= (and b!6341386 c!1152983) b!6341387))

(assert (= (and b!6341386 (not c!1152983)) b!6341389))

(assert (= (and b!6341389 c!1152984) b!6341380))

(assert (= (and b!6341389 (not c!1152984)) b!6341381))

(declare-fun m!7149804 () Bool)

(assert (=> b!6341384 m!7149804))

(declare-fun m!7149806 () Bool)

(assert (=> b!6341389 m!7149806))

(assert (=> b!6341389 m!7149806))

(declare-fun m!7149808 () Bool)

(assert (=> b!6341389 m!7149808))

(declare-fun m!7149810 () Bool)

(assert (=> d!1990148 m!7149810))

(declare-fun m!7149812 () Bool)

(assert (=> d!1990148 m!7149812))

(declare-fun m!7149814 () Bool)

(assert (=> b!6341386 m!7149814))

(declare-fun m!7149816 () Bool)

(assert (=> b!6341380 m!7149816))

(declare-fun m!7149818 () Bool)

(assert (=> b!6341387 m!7149818))

(declare-fun m!7149820 () Bool)

(assert (=> b!6341381 m!7149820))

(declare-fun m!7149822 () Bool)

(assert (=> b!6341388 m!7149822))

(assert (=> b!6340630 d!1990148))

(declare-fun b!6341408 () Bool)

(declare-fun res!2609633 () Bool)

(declare-fun e!3851741 () Bool)

(assert (=> b!6341408 (=> (not res!2609633) (not e!3851741))))

(declare-fun call!540406 () Bool)

(assert (=> b!6341408 (= res!2609633 call!540406)))

(declare-fun e!3851740 () Bool)

(assert (=> b!6341408 (= e!3851740 e!3851741)))

(declare-fun b!6341409 () Bool)

(declare-fun e!3851742 () Bool)

(assert (=> b!6341409 (= e!3851742 e!3851740)))

(declare-fun c!1152989 () Bool)

(assert (=> b!6341409 (= c!1152989 ((_ is Union!16245) (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun b!6341410 () Bool)

(declare-fun e!3851746 () Bool)

(declare-fun call!540404 () Bool)

(assert (=> b!6341410 (= e!3851746 call!540404)))

(declare-fun b!6341411 () Bool)

(declare-fun res!2609632 () Bool)

(declare-fun e!3851743 () Bool)

(assert (=> b!6341411 (=> res!2609632 e!3851743)))

(assert (=> b!6341411 (= res!2609632 (not ((_ is Concat!25090) (regOne!33002 (regOne!33002 r!7292)))))))

(assert (=> b!6341411 (= e!3851740 e!3851743)))

(declare-fun b!6341412 () Bool)

(declare-fun e!3851744 () Bool)

(assert (=> b!6341412 (= e!3851742 e!3851744)))

(declare-fun res!2609630 () Bool)

(assert (=> b!6341412 (= res!2609630 (not (nullable!6238 (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))))

(assert (=> b!6341412 (=> (not res!2609630) (not e!3851744))))

(declare-fun b!6341413 () Bool)

(assert (=> b!6341413 (= e!3851743 e!3851746)))

(declare-fun res!2609631 () Bool)

(assert (=> b!6341413 (=> (not res!2609631) (not e!3851746))))

(assert (=> b!6341413 (= res!2609631 call!540406)))

(declare-fun d!1990150 () Bool)

(declare-fun res!2609629 () Bool)

(declare-fun e!3851745 () Bool)

(assert (=> d!1990150 (=> res!2609629 e!3851745)))

(assert (=> d!1990150 (= res!2609629 ((_ is ElementMatch!16245) (regOne!33002 (regOne!33002 r!7292))))))

(assert (=> d!1990150 (= (validRegex!7981 (regOne!33002 (regOne!33002 r!7292))) e!3851745)))

(declare-fun c!1152990 () Bool)

(declare-fun call!540405 () Bool)

(declare-fun bm!540399 () Bool)

(assert (=> bm!540399 (= call!540405 (validRegex!7981 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))))))

(declare-fun bm!540400 () Bool)

(assert (=> bm!540400 (= call!540404 call!540405)))

(declare-fun b!6341414 () Bool)

(assert (=> b!6341414 (= e!3851741 call!540404)))

(declare-fun bm!540401 () Bool)

(assert (=> bm!540401 (= call!540406 (validRegex!7981 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun b!6341415 () Bool)

(assert (=> b!6341415 (= e!3851745 e!3851742)))

(assert (=> b!6341415 (= c!1152990 ((_ is Star!16245) (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun b!6341416 () Bool)

(assert (=> b!6341416 (= e!3851744 call!540405)))

(assert (= (and d!1990150 (not res!2609629)) b!6341415))

(assert (= (and b!6341415 c!1152990) b!6341412))

(assert (= (and b!6341415 (not c!1152990)) b!6341409))

(assert (= (and b!6341412 res!2609630) b!6341416))

(assert (= (and b!6341409 c!1152989) b!6341408))

(assert (= (and b!6341409 (not c!1152989)) b!6341411))

(assert (= (and b!6341408 res!2609633) b!6341414))

(assert (= (and b!6341411 (not res!2609632)) b!6341413))

(assert (= (and b!6341413 res!2609631) b!6341410))

(assert (= (or b!6341414 b!6341410) bm!540400))

(assert (= (or b!6341408 b!6341413) bm!540401))

(assert (= (or b!6341416 bm!540400) bm!540399))

(declare-fun m!7149824 () Bool)

(assert (=> b!6341412 m!7149824))

(declare-fun m!7149826 () Bool)

(assert (=> bm!540399 m!7149826))

(declare-fun m!7149828 () Bool)

(assert (=> bm!540401 m!7149828))

(assert (=> b!6340630 d!1990150))

(declare-fun d!1990152 () Bool)

(declare-fun c!1152991 () Bool)

(assert (=> d!1990152 (= c!1152991 (isEmpty!36992 s!2326))))

(declare-fun e!3851747 () Bool)

(assert (=> d!1990152 (= (matchZipper!2257 lt!2362411 s!2326) e!3851747)))

(declare-fun b!6341417 () Bool)

(assert (=> b!6341417 (= e!3851747 (nullableZipper!2011 lt!2362411))))

(declare-fun b!6341418 () Bool)

(assert (=> b!6341418 (= e!3851747 (matchZipper!2257 (derivationStepZipper!2211 lt!2362411 (head!12981 s!2326)) (tail!12067 s!2326)))))

(assert (= (and d!1990152 c!1152991) b!6341417))

(assert (= (and d!1990152 (not c!1152991)) b!6341418))

(assert (=> d!1990152 m!7149734))

(declare-fun m!7149830 () Bool)

(assert (=> b!6341417 m!7149830))

(assert (=> b!6341418 m!7149742))

(assert (=> b!6341418 m!7149742))

(declare-fun m!7149832 () Bool)

(assert (=> b!6341418 m!7149832))

(assert (=> b!6341418 m!7149736))

(assert (=> b!6341418 m!7149832))

(assert (=> b!6341418 m!7149736))

(declare-fun m!7149834 () Bool)

(assert (=> b!6341418 m!7149834))

(assert (=> b!6340630 d!1990152))

(declare-fun bs!1587661 () Bool)

(declare-fun d!1990154 () Bool)

(assert (= bs!1587661 (and d!1990154 d!1989984)))

(declare-fun lambda!348405 () Int)

(assert (=> bs!1587661 (= lambda!348405 lambda!348318)))

(declare-fun bs!1587662 () Bool)

(assert (= bs!1587662 (and d!1990154 d!1990132)))

(assert (=> bs!1587662 (= lambda!348405 lambda!348396)))

(declare-fun bs!1587663 () Bool)

(assert (= bs!1587663 (and d!1990154 d!1990148)))

(assert (=> bs!1587663 (= lambda!348405 lambda!348404)))

(declare-fun bs!1587664 () Bool)

(assert (= bs!1587664 (and d!1990154 d!1990134)))

(assert (=> bs!1587664 (= lambda!348405 lambda!348399)))

(declare-fun bs!1587665 () Bool)

(assert (= bs!1587665 (and d!1990154 d!1989990)))

(assert (=> bs!1587665 (= lambda!348405 lambda!348319)))

(declare-fun b!6341419 () Bool)

(declare-fun e!3851750 () Bool)

(declare-fun lt!2362568 () Regex!16245)

(assert (=> b!6341419 (= e!3851750 (= lt!2362568 (head!12983 lt!2362429)))))

(declare-fun b!6341420 () Bool)

(assert (=> b!6341420 (= e!3851750 (isConcat!1170 lt!2362568))))

(declare-fun b!6341421 () Bool)

(declare-fun e!3851749 () Regex!16245)

(assert (=> b!6341421 (= e!3851749 EmptyExpr!16245)))

(declare-fun b!6341422 () Bool)

(declare-fun e!3851752 () Regex!16245)

(assert (=> b!6341422 (= e!3851752 e!3851749)))

(declare-fun c!1152993 () Bool)

(assert (=> b!6341422 (= c!1152993 ((_ is Cons!64911) lt!2362429))))

(declare-fun b!6341423 () Bool)

(declare-fun e!3851751 () Bool)

(assert (=> b!6341423 (= e!3851751 (isEmpty!36989 (t!378621 lt!2362429)))))

(declare-fun b!6341425 () Bool)

(declare-fun e!3851748 () Bool)

(declare-fun e!3851753 () Bool)

(assert (=> b!6341425 (= e!3851748 e!3851753)))

(declare-fun c!1152994 () Bool)

(assert (=> b!6341425 (= c!1152994 (isEmpty!36989 lt!2362429))))

(declare-fun b!6341426 () Bool)

(assert (=> b!6341426 (= e!3851753 (isEmptyExpr!1647 lt!2362568))))

(declare-fun b!6341427 () Bool)

(assert (=> b!6341427 (= e!3851749 (Concat!25090 (h!71359 lt!2362429) (generalisedConcat!1842 (t!378621 lt!2362429))))))

(declare-fun b!6341428 () Bool)

(assert (=> b!6341428 (= e!3851753 e!3851750)))

(declare-fun c!1152995 () Bool)

(assert (=> b!6341428 (= c!1152995 (isEmpty!36989 (tail!12068 lt!2362429)))))

(declare-fun b!6341424 () Bool)

(assert (=> b!6341424 (= e!3851752 (h!71359 lt!2362429))))

(assert (=> d!1990154 e!3851748))

(declare-fun res!2609634 () Bool)

(assert (=> d!1990154 (=> (not res!2609634) (not e!3851748))))

(assert (=> d!1990154 (= res!2609634 (validRegex!7981 lt!2362568))))

(assert (=> d!1990154 (= lt!2362568 e!3851752)))

(declare-fun c!1152992 () Bool)

(assert (=> d!1990154 (= c!1152992 e!3851751)))

(declare-fun res!2609635 () Bool)

(assert (=> d!1990154 (=> (not res!2609635) (not e!3851751))))

(assert (=> d!1990154 (= res!2609635 ((_ is Cons!64911) lt!2362429))))

(assert (=> d!1990154 (forall!15401 lt!2362429 lambda!348405)))

(assert (=> d!1990154 (= (generalisedConcat!1842 lt!2362429) lt!2362568)))

(assert (= (and d!1990154 res!2609635) b!6341423))

(assert (= (and d!1990154 c!1152992) b!6341424))

(assert (= (and d!1990154 (not c!1152992)) b!6341422))

(assert (= (and b!6341422 c!1152993) b!6341427))

(assert (= (and b!6341422 (not c!1152993)) b!6341421))

(assert (= (and d!1990154 res!2609634) b!6341425))

(assert (= (and b!6341425 c!1152994) b!6341426))

(assert (= (and b!6341425 (not c!1152994)) b!6341428))

(assert (= (and b!6341428 c!1152995) b!6341419))

(assert (= (and b!6341428 (not c!1152995)) b!6341420))

(declare-fun m!7149836 () Bool)

(assert (=> b!6341423 m!7149836))

(declare-fun m!7149838 () Bool)

(assert (=> b!6341428 m!7149838))

(assert (=> b!6341428 m!7149838))

(declare-fun m!7149840 () Bool)

(assert (=> b!6341428 m!7149840))

(declare-fun m!7149842 () Bool)

(assert (=> d!1990154 m!7149842))

(declare-fun m!7149844 () Bool)

(assert (=> d!1990154 m!7149844))

(declare-fun m!7149846 () Bool)

(assert (=> b!6341425 m!7149846))

(declare-fun m!7149848 () Bool)

(assert (=> b!6341419 m!7149848))

(declare-fun m!7149850 () Bool)

(assert (=> b!6341426 m!7149850))

(declare-fun m!7149852 () Bool)

(assert (=> b!6341420 m!7149852))

(declare-fun m!7149854 () Bool)

(assert (=> b!6341427 m!7149854))

(assert (=> b!6340630 d!1990154))

(declare-fun d!1990156 () Bool)

(assert (=> d!1990156 (= (matchR!8428 lt!2362424 s!2326) (matchZipper!2257 lt!2362411 s!2326))))

(declare-fun lt!2362571 () Unit!158311)

(declare-fun choose!47021 ((InoxSet Context!11258) List!65036 Regex!16245 List!65034) Unit!158311)

(assert (=> d!1990156 (= lt!2362571 (choose!47021 lt!2362411 lt!2362432 lt!2362424 s!2326))))

(assert (=> d!1990156 (validRegex!7981 lt!2362424)))

(assert (=> d!1990156 (= (theoremZipperRegexEquiv!787 lt!2362411 lt!2362432 lt!2362424 s!2326) lt!2362571)))

(declare-fun bs!1587666 () Bool)

(assert (= bs!1587666 d!1990156))

(assert (=> bs!1587666 m!7149246))

(assert (=> bs!1587666 m!7149258))

(declare-fun m!7149856 () Bool)

(assert (=> bs!1587666 m!7149856))

(assert (=> bs!1587666 m!7149796))

(assert (=> b!6340630 d!1990156))

(declare-fun b!6341429 () Bool)

(declare-fun e!3851757 () Bool)

(assert (=> b!6341429 (= e!3851757 (not (= (head!12981 s!2326) (c!1152752 lt!2362424))))))

(declare-fun b!6341430 () Bool)

(declare-fun e!3851759 () Bool)

(declare-fun e!3851760 () Bool)

(assert (=> b!6341430 (= e!3851759 e!3851760)))

(declare-fun c!1152997 () Bool)

(assert (=> b!6341430 (= c!1152997 ((_ is EmptyLang!16245) lt!2362424))))

(declare-fun b!6341431 () Bool)

(declare-fun e!3851755 () Bool)

(declare-fun e!3851758 () Bool)

(assert (=> b!6341431 (= e!3851755 e!3851758)))

(declare-fun res!2609639 () Bool)

(assert (=> b!6341431 (=> (not res!2609639) (not e!3851758))))

(declare-fun lt!2362572 () Bool)

(assert (=> b!6341431 (= res!2609639 (not lt!2362572))))

(declare-fun b!6341432 () Bool)

(declare-fun e!3851756 () Bool)

(assert (=> b!6341432 (= e!3851756 (nullable!6238 lt!2362424))))

(declare-fun b!6341433 () Bool)

(declare-fun res!2609640 () Bool)

(declare-fun e!3851754 () Bool)

(assert (=> b!6341433 (=> (not res!2609640) (not e!3851754))))

(assert (=> b!6341433 (= res!2609640 (isEmpty!36992 (tail!12067 s!2326)))))

(declare-fun d!1990158 () Bool)

(assert (=> d!1990158 e!3851759))

(declare-fun c!1152996 () Bool)

(assert (=> d!1990158 (= c!1152996 ((_ is EmptyExpr!16245) lt!2362424))))

(assert (=> d!1990158 (= lt!2362572 e!3851756)))

(declare-fun c!1152998 () Bool)

(assert (=> d!1990158 (= c!1152998 (isEmpty!36992 s!2326))))

(assert (=> d!1990158 (validRegex!7981 lt!2362424)))

(assert (=> d!1990158 (= (matchR!8428 lt!2362424 s!2326) lt!2362572)))

(declare-fun b!6341434 () Bool)

(declare-fun call!540407 () Bool)

(assert (=> b!6341434 (= e!3851759 (= lt!2362572 call!540407))))

(declare-fun b!6341435 () Bool)

(declare-fun res!2609643 () Bool)

(assert (=> b!6341435 (=> (not res!2609643) (not e!3851754))))

(assert (=> b!6341435 (= res!2609643 (not call!540407))))

(declare-fun b!6341436 () Bool)

(declare-fun res!2609636 () Bool)

(assert (=> b!6341436 (=> res!2609636 e!3851755)))

(assert (=> b!6341436 (= res!2609636 (not ((_ is ElementMatch!16245) lt!2362424)))))

(assert (=> b!6341436 (= e!3851760 e!3851755)))

(declare-fun b!6341437 () Bool)

(declare-fun res!2609637 () Bool)

(assert (=> b!6341437 (=> res!2609637 e!3851757)))

(assert (=> b!6341437 (= res!2609637 (not (isEmpty!36992 (tail!12067 s!2326))))))

(declare-fun b!6341438 () Bool)

(assert (=> b!6341438 (= e!3851754 (= (head!12981 s!2326) (c!1152752 lt!2362424)))))

(declare-fun b!6341439 () Bool)

(assert (=> b!6341439 (= e!3851756 (matchR!8428 (derivativeStep!4950 lt!2362424 (head!12981 s!2326)) (tail!12067 s!2326)))))

(declare-fun b!6341440 () Bool)

(assert (=> b!6341440 (= e!3851758 e!3851757)))

(declare-fun res!2609638 () Bool)

(assert (=> b!6341440 (=> res!2609638 e!3851757)))

(assert (=> b!6341440 (= res!2609638 call!540407)))

(declare-fun bm!540402 () Bool)

(assert (=> bm!540402 (= call!540407 (isEmpty!36992 s!2326))))

(declare-fun b!6341441 () Bool)

(declare-fun res!2609642 () Bool)

(assert (=> b!6341441 (=> res!2609642 e!3851755)))

(assert (=> b!6341441 (= res!2609642 e!3851754)))

(declare-fun res!2609641 () Bool)

(assert (=> b!6341441 (=> (not res!2609641) (not e!3851754))))

(assert (=> b!6341441 (= res!2609641 lt!2362572)))

(declare-fun b!6341442 () Bool)

(assert (=> b!6341442 (= e!3851760 (not lt!2362572))))

(assert (= (and d!1990158 c!1152998) b!6341432))

(assert (= (and d!1990158 (not c!1152998)) b!6341439))

(assert (= (and d!1990158 c!1152996) b!6341434))

(assert (= (and d!1990158 (not c!1152996)) b!6341430))

(assert (= (and b!6341430 c!1152997) b!6341442))

(assert (= (and b!6341430 (not c!1152997)) b!6341436))

(assert (= (and b!6341436 (not res!2609636)) b!6341441))

(assert (= (and b!6341441 res!2609641) b!6341435))

(assert (= (and b!6341435 res!2609643) b!6341433))

(assert (= (and b!6341433 res!2609640) b!6341438))

(assert (= (and b!6341441 (not res!2609642)) b!6341431))

(assert (= (and b!6341431 res!2609639) b!6341440))

(assert (= (and b!6341440 (not res!2609638)) b!6341437))

(assert (= (and b!6341437 (not res!2609637)) b!6341429))

(assert (= (or b!6341434 b!6341435 b!6341440) bm!540402))

(assert (=> bm!540402 m!7149734))

(assert (=> b!6341433 m!7149736))

(assert (=> b!6341433 m!7149736))

(assert (=> b!6341433 m!7149738))

(declare-fun m!7149858 () Bool)

(assert (=> b!6341432 m!7149858))

(assert (=> b!6341438 m!7149742))

(assert (=> b!6341429 m!7149742))

(assert (=> b!6341437 m!7149736))

(assert (=> b!6341437 m!7149736))

(assert (=> b!6341437 m!7149738))

(assert (=> b!6341439 m!7149742))

(assert (=> b!6341439 m!7149742))

(declare-fun m!7149860 () Bool)

(assert (=> b!6341439 m!7149860))

(assert (=> b!6341439 m!7149736))

(assert (=> b!6341439 m!7149860))

(assert (=> b!6341439 m!7149736))

(declare-fun m!7149862 () Bool)

(assert (=> b!6341439 m!7149862))

(assert (=> d!1990158 m!7149734))

(assert (=> d!1990158 m!7149796))

(assert (=> b!6340630 d!1990158))

(declare-fun b!6341443 () Bool)

(declare-fun res!2609648 () Bool)

(declare-fun e!3851762 () Bool)

(assert (=> b!6341443 (=> (not res!2609648) (not e!3851762))))

(declare-fun call!540410 () Bool)

(assert (=> b!6341443 (= res!2609648 call!540410)))

(declare-fun e!3851761 () Bool)

(assert (=> b!6341443 (= e!3851761 e!3851762)))

(declare-fun b!6341444 () Bool)

(declare-fun e!3851763 () Bool)

(assert (=> b!6341444 (= e!3851763 e!3851761)))

(declare-fun c!1152999 () Bool)

(assert (=> b!6341444 (= c!1152999 ((_ is Union!16245) r!7292))))

(declare-fun b!6341445 () Bool)

(declare-fun e!3851767 () Bool)

(declare-fun call!540408 () Bool)

(assert (=> b!6341445 (= e!3851767 call!540408)))

(declare-fun b!6341446 () Bool)

(declare-fun res!2609647 () Bool)

(declare-fun e!3851764 () Bool)

(assert (=> b!6341446 (=> res!2609647 e!3851764)))

(assert (=> b!6341446 (= res!2609647 (not ((_ is Concat!25090) r!7292)))))

(assert (=> b!6341446 (= e!3851761 e!3851764)))

(declare-fun b!6341447 () Bool)

(declare-fun e!3851765 () Bool)

(assert (=> b!6341447 (= e!3851763 e!3851765)))

(declare-fun res!2609645 () Bool)

(assert (=> b!6341447 (= res!2609645 (not (nullable!6238 (reg!16574 r!7292))))))

(assert (=> b!6341447 (=> (not res!2609645) (not e!3851765))))

(declare-fun b!6341448 () Bool)

(assert (=> b!6341448 (= e!3851764 e!3851767)))

(declare-fun res!2609646 () Bool)

(assert (=> b!6341448 (=> (not res!2609646) (not e!3851767))))

(assert (=> b!6341448 (= res!2609646 call!540410)))

(declare-fun d!1990160 () Bool)

(declare-fun res!2609644 () Bool)

(declare-fun e!3851766 () Bool)

(assert (=> d!1990160 (=> res!2609644 e!3851766)))

(assert (=> d!1990160 (= res!2609644 ((_ is ElementMatch!16245) r!7292))))

(assert (=> d!1990160 (= (validRegex!7981 r!7292) e!3851766)))

(declare-fun bm!540403 () Bool)

(declare-fun call!540409 () Bool)

(declare-fun c!1153000 () Bool)

(assert (=> bm!540403 (= call!540409 (validRegex!7981 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))))))

(declare-fun bm!540404 () Bool)

(assert (=> bm!540404 (= call!540408 call!540409)))

(declare-fun b!6341449 () Bool)

(assert (=> b!6341449 (= e!3851762 call!540408)))

(declare-fun bm!540405 () Bool)

(assert (=> bm!540405 (= call!540410 (validRegex!7981 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))))))

(declare-fun b!6341450 () Bool)

(assert (=> b!6341450 (= e!3851766 e!3851763)))

(assert (=> b!6341450 (= c!1153000 ((_ is Star!16245) r!7292))))

(declare-fun b!6341451 () Bool)

(assert (=> b!6341451 (= e!3851765 call!540409)))

(assert (= (and d!1990160 (not res!2609644)) b!6341450))

(assert (= (and b!6341450 c!1153000) b!6341447))

(assert (= (and b!6341450 (not c!1153000)) b!6341444))

(assert (= (and b!6341447 res!2609645) b!6341451))

(assert (= (and b!6341444 c!1152999) b!6341443))

(assert (= (and b!6341444 (not c!1152999)) b!6341446))

(assert (= (and b!6341443 res!2609648) b!6341449))

(assert (= (and b!6341446 (not res!2609647)) b!6341448))

(assert (= (and b!6341448 res!2609646) b!6341445))

(assert (= (or b!6341449 b!6341445) bm!540404))

(assert (= (or b!6341443 b!6341448) bm!540405))

(assert (= (or b!6341451 bm!540404) bm!540403))

(declare-fun m!7149864 () Bool)

(assert (=> b!6341447 m!7149864))

(declare-fun m!7149866 () Bool)

(assert (=> bm!540403 m!7149866))

(declare-fun m!7149868 () Bool)

(assert (=> bm!540405 m!7149868))

(assert (=> start!628234 d!1990160))

(declare-fun bs!1587667 () Bool)

(declare-fun d!1990162 () Bool)

(assert (= bs!1587667 (and d!1990162 d!1989984)))

(declare-fun lambda!348406 () Int)

(assert (=> bs!1587667 (= lambda!348406 lambda!348318)))

(declare-fun bs!1587668 () Bool)

(assert (= bs!1587668 (and d!1990162 d!1990132)))

(assert (=> bs!1587668 (= lambda!348406 lambda!348396)))

(declare-fun bs!1587669 () Bool)

(assert (= bs!1587669 (and d!1990162 d!1990148)))

(assert (=> bs!1587669 (= lambda!348406 lambda!348404)))

(declare-fun bs!1587670 () Bool)

(assert (= bs!1587670 (and d!1990162 d!1990134)))

(assert (=> bs!1587670 (= lambda!348406 lambda!348399)))

(declare-fun bs!1587671 () Bool)

(assert (= bs!1587671 (and d!1990162 d!1990154)))

(assert (=> bs!1587671 (= lambda!348406 lambda!348405)))

(declare-fun bs!1587672 () Bool)

(assert (= bs!1587672 (and d!1990162 d!1989990)))

(assert (=> bs!1587672 (= lambda!348406 lambda!348319)))

(declare-fun b!6341452 () Bool)

(declare-fun e!3851770 () Bool)

(declare-fun lt!2362573 () Regex!16245)

(assert (=> b!6341452 (= e!3851770 (= lt!2362573 (head!12983 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6341453 () Bool)

(assert (=> b!6341453 (= e!3851770 (isConcat!1170 lt!2362573))))

(declare-fun b!6341454 () Bool)

(declare-fun e!3851769 () Regex!16245)

(assert (=> b!6341454 (= e!3851769 EmptyExpr!16245)))

(declare-fun b!6341455 () Bool)

(declare-fun e!3851772 () Regex!16245)

(assert (=> b!6341455 (= e!3851772 e!3851769)))

(declare-fun c!1153002 () Bool)

(assert (=> b!6341455 (= c!1153002 ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343))))))

(declare-fun b!6341456 () Bool)

(declare-fun e!3851771 () Bool)

(assert (=> b!6341456 (= e!3851771 (isEmpty!36989 (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6341458 () Bool)

(declare-fun e!3851768 () Bool)

(declare-fun e!3851773 () Bool)

(assert (=> b!6341458 (= e!3851768 e!3851773)))

(declare-fun c!1153003 () Bool)

(assert (=> b!6341458 (= c!1153003 (isEmpty!36989 (exprs!6129 (h!71360 zl!343))))))

(declare-fun b!6341459 () Bool)

(assert (=> b!6341459 (= e!3851773 (isEmptyExpr!1647 lt!2362573))))

(declare-fun b!6341460 () Bool)

(assert (=> b!6341460 (= e!3851769 (Concat!25090 (h!71359 (exprs!6129 (h!71360 zl!343))) (generalisedConcat!1842 (t!378621 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6341461 () Bool)

(assert (=> b!6341461 (= e!3851773 e!3851770)))

(declare-fun c!1153004 () Bool)

(assert (=> b!6341461 (= c!1153004 (isEmpty!36989 (tail!12068 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6341457 () Bool)

(assert (=> b!6341457 (= e!3851772 (h!71359 (exprs!6129 (h!71360 zl!343))))))

(assert (=> d!1990162 e!3851768))

(declare-fun res!2609649 () Bool)

(assert (=> d!1990162 (=> (not res!2609649) (not e!3851768))))

(assert (=> d!1990162 (= res!2609649 (validRegex!7981 lt!2362573))))

(assert (=> d!1990162 (= lt!2362573 e!3851772)))

(declare-fun c!1153001 () Bool)

(assert (=> d!1990162 (= c!1153001 e!3851771)))

(declare-fun res!2609650 () Bool)

(assert (=> d!1990162 (=> (not res!2609650) (not e!3851771))))

(assert (=> d!1990162 (= res!2609650 ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343))))))

(assert (=> d!1990162 (forall!15401 (exprs!6129 (h!71360 zl!343)) lambda!348406)))

(assert (=> d!1990162 (= (generalisedConcat!1842 (exprs!6129 (h!71360 zl!343))) lt!2362573)))

(assert (= (and d!1990162 res!2609650) b!6341456))

(assert (= (and d!1990162 c!1153001) b!6341457))

(assert (= (and d!1990162 (not c!1153001)) b!6341455))

(assert (= (and b!6341455 c!1153002) b!6341460))

(assert (= (and b!6341455 (not c!1153002)) b!6341454))

(assert (= (and d!1990162 res!2609649) b!6341458))

(assert (= (and b!6341458 c!1153003) b!6341459))

(assert (= (and b!6341458 (not c!1153003)) b!6341461))

(assert (= (and b!6341461 c!1153004) b!6341452))

(assert (= (and b!6341461 (not c!1153004)) b!6341453))

(assert (=> b!6341456 m!7149262))

(declare-fun m!7149870 () Bool)

(assert (=> b!6341461 m!7149870))

(assert (=> b!6341461 m!7149870))

(declare-fun m!7149872 () Bool)

(assert (=> b!6341461 m!7149872))

(declare-fun m!7149874 () Bool)

(assert (=> d!1990162 m!7149874))

(declare-fun m!7149876 () Bool)

(assert (=> d!1990162 m!7149876))

(declare-fun m!7149878 () Bool)

(assert (=> b!6341458 m!7149878))

(declare-fun m!7149880 () Bool)

(assert (=> b!6341452 m!7149880))

(declare-fun m!7149882 () Bool)

(assert (=> b!6341459 m!7149882))

(declare-fun m!7149884 () Bool)

(assert (=> b!6341453 m!7149884))

(declare-fun m!7149886 () Bool)

(assert (=> b!6341460 m!7149886))

(assert (=> b!6340641 d!1990162))

(declare-fun d!1990164 () Bool)

(declare-fun e!3851776 () Bool)

(assert (=> d!1990164 e!3851776))

(declare-fun res!2609653 () Bool)

(assert (=> d!1990164 (=> (not res!2609653) (not e!3851776))))

(declare-fun lt!2362576 () List!65036)

(declare-fun noDuplicate!2075 (List!65036) Bool)

(assert (=> d!1990164 (= res!2609653 (noDuplicate!2075 lt!2362576))))

(declare-fun choose!47023 ((InoxSet Context!11258)) List!65036)

(assert (=> d!1990164 (= lt!2362576 (choose!47023 z!1189))))

(assert (=> d!1990164 (= (toList!10029 z!1189) lt!2362576)))

(declare-fun b!6341464 () Bool)

(declare-fun content!12242 (List!65036) (InoxSet Context!11258))

(assert (=> b!6341464 (= e!3851776 (= (content!12242 lt!2362576) z!1189))))

(assert (= (and d!1990164 res!2609653) b!6341464))

(declare-fun m!7149888 () Bool)

(assert (=> d!1990164 m!7149888))

(declare-fun m!7149890 () Bool)

(assert (=> d!1990164 m!7149890))

(declare-fun m!7149892 () Bool)

(assert (=> b!6341464 m!7149892))

(assert (=> b!6340642 d!1990164))

(declare-fun d!1990166 () Bool)

(declare-fun c!1153005 () Bool)

(assert (=> d!1990166 (= c!1153005 (isEmpty!36992 (t!378620 s!2326)))))

(declare-fun e!3851777 () Bool)

(assert (=> d!1990166 (= (matchZipper!2257 lt!2362430 (t!378620 s!2326)) e!3851777)))

(declare-fun b!6341465 () Bool)

(assert (=> b!6341465 (= e!3851777 (nullableZipper!2011 lt!2362430))))

(declare-fun b!6341466 () Bool)

(assert (=> b!6341466 (= e!3851777 (matchZipper!2257 (derivationStepZipper!2211 lt!2362430 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))))))

(assert (= (and d!1990166 c!1153005) b!6341465))

(assert (= (and d!1990166 (not c!1153005)) b!6341466))

(assert (=> d!1990166 m!7149328))

(declare-fun m!7149894 () Bool)

(assert (=> b!6341465 m!7149894))

(assert (=> b!6341466 m!7149334))

(assert (=> b!6341466 m!7149334))

(declare-fun m!7149896 () Bool)

(assert (=> b!6341466 m!7149896))

(assert (=> b!6341466 m!7149338))

(assert (=> b!6341466 m!7149896))

(assert (=> b!6341466 m!7149338))

(declare-fun m!7149898 () Bool)

(assert (=> b!6341466 m!7149898))

(assert (=> b!6340631 d!1990166))

(assert (=> b!6340631 d!1990138))

(declare-fun d!1990168 () Bool)

(assert (=> d!1990168 (= (nullable!6238 (h!71359 (exprs!6129 (h!71360 zl!343)))) (nullableFct!2185 (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun bs!1587673 () Bool)

(assert (= bs!1587673 d!1990168))

(declare-fun m!7149900 () Bool)

(assert (=> bs!1587673 m!7149900))

(assert (=> b!6340632 d!1990168))

(declare-fun b!6341477 () Bool)

(declare-fun e!3851784 () (InoxSet Context!11258))

(declare-fun call!540413 () (InoxSet Context!11258))

(assert (=> b!6341477 (= e!3851784 call!540413)))

(declare-fun b!6341478 () Bool)

(assert (=> b!6341478 (= e!3851784 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540408 () Bool)

(assert (=> bm!540408 (= call!540413 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (h!71358 s!2326)))))

(declare-fun b!6341479 () Bool)

(declare-fun e!3851785 () Bool)

(assert (=> b!6341479 (= e!3851785 (nullable!6238 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))

(declare-fun d!1990170 () Bool)

(declare-fun c!1153010 () Bool)

(assert (=> d!1990170 (= c!1153010 e!3851785)))

(declare-fun res!2609656 () Bool)

(assert (=> d!1990170 (=> (not res!2609656) (not e!3851785))))

(assert (=> d!1990170 (= res!2609656 ((_ is Cons!64911) (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))

(declare-fun e!3851786 () (InoxSet Context!11258))

(assert (=> d!1990170 (= (derivationStepZipperUp!1419 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))) (h!71358 s!2326)) e!3851786)))

(declare-fun b!6341480 () Bool)

(assert (=> b!6341480 (= e!3851786 ((_ map or) call!540413 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (h!71358 s!2326))))))

(declare-fun b!6341481 () Bool)

(assert (=> b!6341481 (= e!3851786 e!3851784)))

(declare-fun c!1153011 () Bool)

(assert (=> b!6341481 (= c!1153011 ((_ is Cons!64911) (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))

(assert (= (and d!1990170 res!2609656) b!6341479))

(assert (= (and d!1990170 c!1153010) b!6341480))

(assert (= (and d!1990170 (not c!1153010)) b!6341481))

(assert (= (and b!6341481 c!1153011) b!6341477))

(assert (= (and b!6341481 (not c!1153011)) b!6341478))

(assert (= (or b!6341480 b!6341477) bm!540408))

(declare-fun m!7149902 () Bool)

(assert (=> bm!540408 m!7149902))

(declare-fun m!7149904 () Bool)

(assert (=> b!6341479 m!7149904))

(declare-fun m!7149906 () Bool)

(assert (=> b!6341480 m!7149906))

(assert (=> b!6340632 d!1990170))

(declare-fun d!1990172 () Bool)

(declare-fun choose!47024 ((InoxSet Context!11258) Int) (InoxSet Context!11258))

(assert (=> d!1990172 (= (flatMap!1750 z!1189 lambda!348315) (choose!47024 z!1189 lambda!348315))))

(declare-fun bs!1587674 () Bool)

(assert (= bs!1587674 d!1990172))

(declare-fun m!7149908 () Bool)

(assert (=> bs!1587674 m!7149908))

(assert (=> b!6340632 d!1990172))

(declare-fun b!6341482 () Bool)

(declare-fun e!3851787 () (InoxSet Context!11258))

(declare-fun call!540414 () (InoxSet Context!11258))

(assert (=> b!6341482 (= e!3851787 call!540414)))

(declare-fun b!6341483 () Bool)

(assert (=> b!6341483 (= e!3851787 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540409 () Bool)

(assert (=> bm!540409 (= call!540414 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (h!71360 zl!343))) (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))) (h!71358 s!2326)))))

(declare-fun b!6341484 () Bool)

(declare-fun e!3851788 () Bool)

(assert (=> b!6341484 (= e!3851788 (nullable!6238 (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun d!1990174 () Bool)

(declare-fun c!1153012 () Bool)

(assert (=> d!1990174 (= c!1153012 e!3851788)))

(declare-fun res!2609657 () Bool)

(assert (=> d!1990174 (=> (not res!2609657) (not e!3851788))))

(assert (=> d!1990174 (= res!2609657 ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343))))))

(declare-fun e!3851789 () (InoxSet Context!11258))

(assert (=> d!1990174 (= (derivationStepZipperUp!1419 (h!71360 zl!343) (h!71358 s!2326)) e!3851789)))

(declare-fun b!6341485 () Bool)

(assert (=> b!6341485 (= e!3851789 ((_ map or) call!540414 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))) (h!71358 s!2326))))))

(declare-fun b!6341486 () Bool)

(assert (=> b!6341486 (= e!3851789 e!3851787)))

(declare-fun c!1153013 () Bool)

(assert (=> b!6341486 (= c!1153013 ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343))))))

(assert (= (and d!1990174 res!2609657) b!6341484))

(assert (= (and d!1990174 c!1153012) b!6341485))

(assert (= (and d!1990174 (not c!1153012)) b!6341486))

(assert (= (and b!6341486 c!1153013) b!6341482))

(assert (= (and b!6341486 (not c!1153013)) b!6341483))

(assert (= (or b!6341485 b!6341482) bm!540409))

(declare-fun m!7149910 () Bool)

(assert (=> bm!540409 m!7149910))

(assert (=> b!6341484 m!7149208))

(declare-fun m!7149912 () Bool)

(assert (=> b!6341485 m!7149912))

(assert (=> b!6340632 d!1990174))

(declare-fun d!1990176 () Bool)

(declare-fun dynLambda!25727 (Int Context!11258) (InoxSet Context!11258))

(assert (=> d!1990176 (= (flatMap!1750 z!1189 lambda!348315) (dynLambda!25727 lambda!348315 (h!71360 zl!343)))))

(declare-fun lt!2362579 () Unit!158311)

(declare-fun choose!47025 ((InoxSet Context!11258) Context!11258 Int) Unit!158311)

(assert (=> d!1990176 (= lt!2362579 (choose!47025 z!1189 (h!71360 zl!343) lambda!348315))))

(assert (=> d!1990176 (= z!1189 (store ((as const (Array Context!11258 Bool)) false) (h!71360 zl!343) true))))

(assert (=> d!1990176 (= (lemmaFlatMapOnSingletonSet!1276 z!1189 (h!71360 zl!343) lambda!348315) lt!2362579)))

(declare-fun b_lambda!241301 () Bool)

(assert (=> (not b_lambda!241301) (not d!1990176)))

(declare-fun bs!1587675 () Bool)

(assert (= bs!1587675 d!1990176))

(assert (=> bs!1587675 m!7149206))

(declare-fun m!7149914 () Bool)

(assert (=> bs!1587675 m!7149914))

(declare-fun m!7149916 () Bool)

(assert (=> bs!1587675 m!7149916))

(declare-fun m!7149918 () Bool)

(assert (=> bs!1587675 m!7149918))

(assert (=> b!6340632 d!1990176))

(declare-fun c!1153017 () Bool)

(declare-fun call!540416 () List!65035)

(declare-fun c!1153016 () Bool)

(declare-fun bm!540410 () Bool)

(assert (=> bm!540410 (= call!540416 ($colon$colon!2105 (exprs!6129 lt!2362427) (ite (or c!1153017 c!1153016) (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (h!71359 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6341487 () Bool)

(declare-fun e!3851795 () (InoxSet Context!11258))

(declare-fun call!540418 () (InoxSet Context!11258))

(declare-fun call!540420 () (InoxSet Context!11258))

(assert (=> b!6341487 (= e!3851795 ((_ map or) call!540418 call!540420))))

(declare-fun b!6341488 () Bool)

(declare-fun e!3851791 () (InoxSet Context!11258))

(assert (=> b!6341488 (= e!3851795 e!3851791)))

(assert (=> b!6341488 (= c!1153016 ((_ is Concat!25090) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun call!540419 () List!65035)

(declare-fun call!540415 () (InoxSet Context!11258))

(declare-fun c!1153018 () Bool)

(declare-fun bm!540411 () Bool)

(assert (=> bm!540411 (= call!540415 (derivationStepZipperDown!1493 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343))))))) (ite (or c!1153018 c!1153017) lt!2362427 (Context!11259 call!540419)) (h!71358 s!2326)))))

(declare-fun bm!540412 () Bool)

(assert (=> bm!540412 (= call!540420 call!540415)))

(declare-fun bm!540413 () Bool)

(assert (=> bm!540413 (= call!540418 (derivationStepZipperDown!1493 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))) (ite c!1153018 lt!2362427 (Context!11259 call!540416)) (h!71358 s!2326)))))

(declare-fun bm!540414 () Bool)

(assert (=> bm!540414 (= call!540419 call!540416)))

(declare-fun b!6341490 () Bool)

(declare-fun call!540417 () (InoxSet Context!11258))

(assert (=> b!6341490 (= e!3851791 call!540417)))

(declare-fun b!6341491 () Bool)

(declare-fun e!3851790 () (InoxSet Context!11258))

(assert (=> b!6341491 (= e!3851790 (store ((as const (Array Context!11258 Bool)) false) lt!2362427 true))))

(declare-fun b!6341492 () Bool)

(declare-fun e!3851792 () (InoxSet Context!11258))

(assert (=> b!6341492 (= e!3851792 call!540417)))

(declare-fun b!6341493 () Bool)

(declare-fun c!1153015 () Bool)

(assert (=> b!6341493 (= c!1153015 ((_ is Star!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> b!6341493 (= e!3851791 e!3851792)))

(declare-fun b!6341494 () Bool)

(declare-fun e!3851794 () Bool)

(assert (=> b!6341494 (= e!3851794 (nullable!6238 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6341489 () Bool)

(declare-fun e!3851793 () (InoxSet Context!11258))

(assert (=> b!6341489 (= e!3851790 e!3851793)))

(assert (=> b!6341489 (= c!1153018 ((_ is Union!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun d!1990178 () Bool)

(declare-fun c!1153014 () Bool)

(assert (=> d!1990178 (= c!1153014 (and ((_ is ElementMatch!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))) (= (c!1152752 (h!71359 (exprs!6129 (h!71360 zl!343)))) (h!71358 s!2326))))))

(assert (=> d!1990178 (= (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (h!71360 zl!343))) lt!2362427 (h!71358 s!2326)) e!3851790)))

(declare-fun b!6341495 () Bool)

(assert (=> b!6341495 (= e!3851792 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6341496 () Bool)

(assert (=> b!6341496 (= e!3851793 ((_ map or) call!540418 call!540415))))

(declare-fun bm!540415 () Bool)

(assert (=> bm!540415 (= call!540417 call!540420)))

(declare-fun b!6341497 () Bool)

(assert (=> b!6341497 (= c!1153017 e!3851794)))

(declare-fun res!2609658 () Bool)

(assert (=> b!6341497 (=> (not res!2609658) (not e!3851794))))

(assert (=> b!6341497 (= res!2609658 ((_ is Concat!25090) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> b!6341497 (= e!3851793 e!3851795)))

(assert (= (and d!1990178 c!1153014) b!6341491))

(assert (= (and d!1990178 (not c!1153014)) b!6341489))

(assert (= (and b!6341489 c!1153018) b!6341496))

(assert (= (and b!6341489 (not c!1153018)) b!6341497))

(assert (= (and b!6341497 res!2609658) b!6341494))

(assert (= (and b!6341497 c!1153017) b!6341487))

(assert (= (and b!6341497 (not c!1153017)) b!6341488))

(assert (= (and b!6341488 c!1153016) b!6341490))

(assert (= (and b!6341488 (not c!1153016)) b!6341493))

(assert (= (and b!6341493 c!1153015) b!6341492))

(assert (= (and b!6341493 (not c!1153015)) b!6341495))

(assert (= (or b!6341490 b!6341492) bm!540414))

(assert (= (or b!6341490 b!6341492) bm!540415))

(assert (= (or b!6341487 bm!540414) bm!540410))

(assert (= (or b!6341487 bm!540415) bm!540412))

(assert (= (or b!6341496 bm!540412) bm!540411))

(assert (= (or b!6341496 b!6341487) bm!540413))

(declare-fun m!7149920 () Bool)

(assert (=> bm!540411 m!7149920))

(declare-fun m!7149922 () Bool)

(assert (=> bm!540410 m!7149922))

(declare-fun m!7149924 () Bool)

(assert (=> b!6341494 m!7149924))

(declare-fun m!7149926 () Bool)

(assert (=> b!6341491 m!7149926))

(declare-fun m!7149928 () Bool)

(assert (=> bm!540413 m!7149928))

(assert (=> b!6340632 d!1990178))

(declare-fun b!6341498 () Bool)

(declare-fun e!3851796 () (InoxSet Context!11258))

(declare-fun call!540421 () (InoxSet Context!11258))

(assert (=> b!6341498 (= e!3851796 call!540421)))

(declare-fun b!6341499 () Bool)

(assert (=> b!6341499 (= e!3851796 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540416 () Bool)

(assert (=> bm!540416 (= call!540421 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 lt!2362427)) (Context!11259 (t!378621 (exprs!6129 lt!2362427))) (h!71358 s!2326)))))

(declare-fun b!6341500 () Bool)

(declare-fun e!3851797 () Bool)

(assert (=> b!6341500 (= e!3851797 (nullable!6238 (h!71359 (exprs!6129 lt!2362427))))))

(declare-fun d!1990180 () Bool)

(declare-fun c!1153019 () Bool)

(assert (=> d!1990180 (= c!1153019 e!3851797)))

(declare-fun res!2609659 () Bool)

(assert (=> d!1990180 (=> (not res!2609659) (not e!3851797))))

(assert (=> d!1990180 (= res!2609659 ((_ is Cons!64911) (exprs!6129 lt!2362427)))))

(declare-fun e!3851798 () (InoxSet Context!11258))

(assert (=> d!1990180 (= (derivationStepZipperUp!1419 lt!2362427 (h!71358 s!2326)) e!3851798)))

(declare-fun b!6341501 () Bool)

(assert (=> b!6341501 (= e!3851798 ((_ map or) call!540421 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 lt!2362427))) (h!71358 s!2326))))))

(declare-fun b!6341502 () Bool)

(assert (=> b!6341502 (= e!3851798 e!3851796)))

(declare-fun c!1153020 () Bool)

(assert (=> b!6341502 (= c!1153020 ((_ is Cons!64911) (exprs!6129 lt!2362427)))))

(assert (= (and d!1990180 res!2609659) b!6341500))

(assert (= (and d!1990180 c!1153019) b!6341501))

(assert (= (and d!1990180 (not c!1153019)) b!6341502))

(assert (= (and b!6341502 c!1153020) b!6341498))

(assert (= (and b!6341502 (not c!1153020)) b!6341499))

(assert (= (or b!6341501 b!6341498) bm!540416))

(declare-fun m!7149930 () Bool)

(assert (=> bm!540416 m!7149930))

(declare-fun m!7149932 () Bool)

(assert (=> b!6341500 m!7149932))

(declare-fun m!7149934 () Bool)

(assert (=> b!6341501 m!7149934))

(assert (=> b!6340632 d!1990180))

(declare-fun d!1990182 () Bool)

(declare-fun lt!2362582 () Int)

(assert (=> d!1990182 (>= lt!2362582 0)))

(declare-fun e!3851801 () Int)

(assert (=> d!1990182 (= lt!2362582 e!3851801)))

(declare-fun c!1153023 () Bool)

(assert (=> d!1990182 (= c!1153023 ((_ is Cons!64912) lt!2362432))))

(assert (=> d!1990182 (= (zipperDepthTotal!382 lt!2362432) lt!2362582)))

(declare-fun b!6341507 () Bool)

(assert (=> b!6341507 (= e!3851801 (+ (contextDepthTotal!354 (h!71360 lt!2362432)) (zipperDepthTotal!382 (t!378622 lt!2362432))))))

(declare-fun b!6341508 () Bool)

(assert (=> b!6341508 (= e!3851801 0)))

(assert (= (and d!1990182 c!1153023) b!6341507))

(assert (= (and d!1990182 (not c!1153023)) b!6341508))

(declare-fun m!7149936 () Bool)

(assert (=> b!6341507 m!7149936))

(declare-fun m!7149938 () Bool)

(assert (=> b!6341507 m!7149938))

(assert (=> b!6340652 d!1990182))

(declare-fun d!1990184 () Bool)

(declare-fun lt!2362583 () Int)

(assert (=> d!1990184 (>= lt!2362583 0)))

(declare-fun e!3851802 () Int)

(assert (=> d!1990184 (= lt!2362583 e!3851802)))

(declare-fun c!1153024 () Bool)

(assert (=> d!1990184 (= c!1153024 ((_ is Cons!64912) zl!343))))

(assert (=> d!1990184 (= (zipperDepthTotal!382 zl!343) lt!2362583)))

(declare-fun b!6341509 () Bool)

(assert (=> b!6341509 (= e!3851802 (+ (contextDepthTotal!354 (h!71360 zl!343)) (zipperDepthTotal!382 (t!378622 zl!343))))))

(declare-fun b!6341510 () Bool)

(assert (=> b!6341510 (= e!3851802 0)))

(assert (= (and d!1990184 c!1153024) b!6341509))

(assert (= (and d!1990184 (not c!1153024)) b!6341510))

(assert (=> b!6341509 m!7149200))

(declare-fun m!7149940 () Bool)

(assert (=> b!6341509 m!7149940))

(assert (=> b!6340652 d!1990184))

(declare-fun d!1990186 () Bool)

(assert (=> d!1990186 (= (isEmpty!36990 (t!378622 zl!343)) ((_ is Nil!64912) (t!378622 zl!343)))))

(assert (=> b!6340653 d!1990186))

(declare-fun d!1990188 () Bool)

(assert (=> d!1990188 (= (flatMap!1750 lt!2362411 lambda!348315) (choose!47024 lt!2362411 lambda!348315))))

(declare-fun bs!1587676 () Bool)

(assert (= bs!1587676 d!1990188))

(declare-fun m!7149942 () Bool)

(assert (=> bs!1587676 m!7149942))

(assert (=> b!6340643 d!1990188))

(declare-fun b!6341511 () Bool)

(declare-fun e!3851803 () (InoxSet Context!11258))

(declare-fun call!540422 () (InoxSet Context!11258))

(assert (=> b!6341511 (= e!3851803 call!540422)))

(declare-fun b!6341512 () Bool)

(assert (=> b!6341512 (= e!3851803 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540417 () Bool)

(assert (=> bm!540417 (= call!540422 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 lt!2362418)) (Context!11259 (t!378621 (exprs!6129 lt!2362418))) (h!71358 s!2326)))))

(declare-fun b!6341513 () Bool)

(declare-fun e!3851804 () Bool)

(assert (=> b!6341513 (= e!3851804 (nullable!6238 (h!71359 (exprs!6129 lt!2362418))))))

(declare-fun d!1990190 () Bool)

(declare-fun c!1153025 () Bool)

(assert (=> d!1990190 (= c!1153025 e!3851804)))

(declare-fun res!2609660 () Bool)

(assert (=> d!1990190 (=> (not res!2609660) (not e!3851804))))

(assert (=> d!1990190 (= res!2609660 ((_ is Cons!64911) (exprs!6129 lt!2362418)))))

(declare-fun e!3851805 () (InoxSet Context!11258))

(assert (=> d!1990190 (= (derivationStepZipperUp!1419 lt!2362418 (h!71358 s!2326)) e!3851805)))

(declare-fun b!6341514 () Bool)

(assert (=> b!6341514 (= e!3851805 ((_ map or) call!540422 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 lt!2362418))) (h!71358 s!2326))))))

(declare-fun b!6341515 () Bool)

(assert (=> b!6341515 (= e!3851805 e!3851803)))

(declare-fun c!1153026 () Bool)

(assert (=> b!6341515 (= c!1153026 ((_ is Cons!64911) (exprs!6129 lt!2362418)))))

(assert (= (and d!1990190 res!2609660) b!6341513))

(assert (= (and d!1990190 c!1153025) b!6341514))

(assert (= (and d!1990190 (not c!1153025)) b!6341515))

(assert (= (and b!6341515 c!1153026) b!6341511))

(assert (= (and b!6341515 (not c!1153026)) b!6341512))

(assert (= (or b!6341514 b!6341511) bm!540417))

(declare-fun m!7149944 () Bool)

(assert (=> bm!540417 m!7149944))

(declare-fun m!7149946 () Bool)

(assert (=> b!6341513 m!7149946))

(declare-fun m!7149948 () Bool)

(assert (=> b!6341514 m!7149948))

(assert (=> b!6340643 d!1990190))

(declare-fun d!1990192 () Bool)

(assert (=> d!1990192 (= (flatMap!1750 lt!2362411 lambda!348315) (dynLambda!25727 lambda!348315 lt!2362418))))

(declare-fun lt!2362584 () Unit!158311)

(assert (=> d!1990192 (= lt!2362584 (choose!47025 lt!2362411 lt!2362418 lambda!348315))))

(assert (=> d!1990192 (= lt!2362411 (store ((as const (Array Context!11258 Bool)) false) lt!2362418 true))))

(assert (=> d!1990192 (= (lemmaFlatMapOnSingletonSet!1276 lt!2362411 lt!2362418 lambda!348315) lt!2362584)))

(declare-fun b_lambda!241303 () Bool)

(assert (=> (not b_lambda!241303) (not d!1990192)))

(declare-fun bs!1587677 () Bool)

(assert (= bs!1587677 d!1990192))

(assert (=> bs!1587677 m!7149238))

(declare-fun m!7149950 () Bool)

(assert (=> bs!1587677 m!7149950))

(declare-fun m!7149952 () Bool)

(assert (=> bs!1587677 m!7149952))

(assert (=> bs!1587677 m!7149232))

(assert (=> b!6340643 d!1990192))

(declare-fun bs!1587678 () Bool)

(declare-fun d!1990194 () Bool)

(assert (= bs!1587678 (and d!1990194 b!6340632)))

(declare-fun lambda!348409 () Int)

(assert (=> bs!1587678 (= lambda!348409 lambda!348315)))

(assert (=> d!1990194 true))

(assert (=> d!1990194 (= (derivationStepZipper!2211 lt!2362411 (h!71358 s!2326)) (flatMap!1750 lt!2362411 lambda!348409))))

(declare-fun bs!1587679 () Bool)

(assert (= bs!1587679 d!1990194))

(declare-fun m!7149954 () Bool)

(assert (=> bs!1587679 m!7149954))

(assert (=> b!6340643 d!1990194))

(declare-fun b!6341522 () Bool)

(declare-fun e!3851808 () Bool)

(declare-fun tp!1768361 () Bool)

(declare-fun tp!1768362 () Bool)

(assert (=> b!6341522 (= e!3851808 (and tp!1768361 tp!1768362))))

(assert (=> b!6340640 (= tp!1768294 e!3851808)))

(assert (= (and b!6340640 ((_ is Cons!64911) (exprs!6129 setElem!43154))) b!6341522))

(declare-fun b!6341530 () Bool)

(declare-fun e!3851814 () Bool)

(declare-fun tp!1768367 () Bool)

(assert (=> b!6341530 (= e!3851814 tp!1768367)))

(declare-fun b!6341529 () Bool)

(declare-fun tp!1768368 () Bool)

(declare-fun e!3851813 () Bool)

(assert (=> b!6341529 (= e!3851813 (and (inv!83859 (h!71360 (t!378622 zl!343))) e!3851814 tp!1768368))))

(assert (=> b!6340655 (= tp!1768295 e!3851813)))

(assert (= b!6341529 b!6341530))

(assert (= (and b!6340655 ((_ is Cons!64912) (t!378622 zl!343))) b!6341529))

(declare-fun m!7149956 () Bool)

(assert (=> b!6341529 m!7149956))

(declare-fun condSetEmpty!43160 () Bool)

(assert (=> setNonEmpty!43154 (= condSetEmpty!43160 (= setRest!43154 ((as const (Array Context!11258 Bool)) false)))))

(declare-fun setRes!43160 () Bool)

(assert (=> setNonEmpty!43154 (= tp!1768296 setRes!43160)))

(declare-fun setIsEmpty!43160 () Bool)

(assert (=> setIsEmpty!43160 setRes!43160))

(declare-fun setNonEmpty!43160 () Bool)

(declare-fun tp!1768374 () Bool)

(declare-fun e!3851817 () Bool)

(declare-fun setElem!43160 () Context!11258)

(assert (=> setNonEmpty!43160 (= setRes!43160 (and tp!1768374 (inv!83859 setElem!43160) e!3851817))))

(declare-fun setRest!43160 () (InoxSet Context!11258))

(assert (=> setNonEmpty!43160 (= setRest!43154 ((_ map or) (store ((as const (Array Context!11258 Bool)) false) setElem!43160 true) setRest!43160))))

(declare-fun b!6341535 () Bool)

(declare-fun tp!1768373 () Bool)

(assert (=> b!6341535 (= e!3851817 tp!1768373)))

(assert (= (and setNonEmpty!43154 condSetEmpty!43160) setIsEmpty!43160))

(assert (= (and setNonEmpty!43154 (not condSetEmpty!43160)) setNonEmpty!43160))

(assert (= setNonEmpty!43160 b!6341535))

(declare-fun m!7149958 () Bool)

(assert (=> setNonEmpty!43160 m!7149958))

(declare-fun b!6341536 () Bool)

(declare-fun e!3851818 () Bool)

(declare-fun tp!1768375 () Bool)

(declare-fun tp!1768376 () Bool)

(assert (=> b!6341536 (= e!3851818 (and tp!1768375 tp!1768376))))

(assert (=> b!6340650 (= tp!1768289 e!3851818)))

(assert (= (and b!6340650 ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343)))) b!6341536))

(declare-fun b!6341548 () Bool)

(declare-fun e!3851821 () Bool)

(declare-fun tp!1768391 () Bool)

(declare-fun tp!1768390 () Bool)

(assert (=> b!6341548 (= e!3851821 (and tp!1768391 tp!1768390))))

(assert (=> b!6340626 (= tp!1768292 e!3851821)))

(declare-fun b!6341549 () Bool)

(declare-fun tp!1768389 () Bool)

(assert (=> b!6341549 (= e!3851821 tp!1768389)))

(declare-fun b!6341547 () Bool)

(assert (=> b!6341547 (= e!3851821 tp_is_empty!41743)))

(declare-fun b!6341550 () Bool)

(declare-fun tp!1768388 () Bool)

(declare-fun tp!1768387 () Bool)

(assert (=> b!6341550 (= e!3851821 (and tp!1768388 tp!1768387))))

(assert (= (and b!6340626 ((_ is ElementMatch!16245) (regOne!33003 r!7292))) b!6341547))

(assert (= (and b!6340626 ((_ is Concat!25090) (regOne!33003 r!7292))) b!6341548))

(assert (= (and b!6340626 ((_ is Star!16245) (regOne!33003 r!7292))) b!6341549))

(assert (= (and b!6340626 ((_ is Union!16245) (regOne!33003 r!7292))) b!6341550))

(declare-fun b!6341552 () Bool)

(declare-fun e!3851822 () Bool)

(declare-fun tp!1768396 () Bool)

(declare-fun tp!1768395 () Bool)

(assert (=> b!6341552 (= e!3851822 (and tp!1768396 tp!1768395))))

(assert (=> b!6340626 (= tp!1768293 e!3851822)))

(declare-fun b!6341553 () Bool)

(declare-fun tp!1768394 () Bool)

(assert (=> b!6341553 (= e!3851822 tp!1768394)))

(declare-fun b!6341551 () Bool)

(assert (=> b!6341551 (= e!3851822 tp_is_empty!41743)))

(declare-fun b!6341554 () Bool)

(declare-fun tp!1768393 () Bool)

(declare-fun tp!1768392 () Bool)

(assert (=> b!6341554 (= e!3851822 (and tp!1768393 tp!1768392))))

(assert (= (and b!6340626 ((_ is ElementMatch!16245) (regTwo!33003 r!7292))) b!6341551))

(assert (= (and b!6340626 ((_ is Concat!25090) (regTwo!33003 r!7292))) b!6341552))

(assert (= (and b!6340626 ((_ is Star!16245) (regTwo!33003 r!7292))) b!6341553))

(assert (= (and b!6340626 ((_ is Union!16245) (regTwo!33003 r!7292))) b!6341554))

(declare-fun b!6341556 () Bool)

(declare-fun e!3851823 () Bool)

(declare-fun tp!1768401 () Bool)

(declare-fun tp!1768400 () Bool)

(assert (=> b!6341556 (= e!3851823 (and tp!1768401 tp!1768400))))

(assert (=> b!6340644 (= tp!1768290 e!3851823)))

(declare-fun b!6341557 () Bool)

(declare-fun tp!1768399 () Bool)

(assert (=> b!6341557 (= e!3851823 tp!1768399)))

(declare-fun b!6341555 () Bool)

(assert (=> b!6341555 (= e!3851823 tp_is_empty!41743)))

(declare-fun b!6341558 () Bool)

(declare-fun tp!1768398 () Bool)

(declare-fun tp!1768397 () Bool)

(assert (=> b!6341558 (= e!3851823 (and tp!1768398 tp!1768397))))

(assert (= (and b!6340644 ((_ is ElementMatch!16245) (reg!16574 r!7292))) b!6341555))

(assert (= (and b!6340644 ((_ is Concat!25090) (reg!16574 r!7292))) b!6341556))

(assert (= (and b!6340644 ((_ is Star!16245) (reg!16574 r!7292))) b!6341557))

(assert (= (and b!6340644 ((_ is Union!16245) (reg!16574 r!7292))) b!6341558))

(declare-fun b!6341560 () Bool)

(declare-fun e!3851824 () Bool)

(declare-fun tp!1768406 () Bool)

(declare-fun tp!1768405 () Bool)

(assert (=> b!6341560 (= e!3851824 (and tp!1768406 tp!1768405))))

(assert (=> b!6340659 (= tp!1768298 e!3851824)))

(declare-fun b!6341561 () Bool)

(declare-fun tp!1768404 () Bool)

(assert (=> b!6341561 (= e!3851824 tp!1768404)))

(declare-fun b!6341559 () Bool)

(assert (=> b!6341559 (= e!3851824 tp_is_empty!41743)))

(declare-fun b!6341562 () Bool)

(declare-fun tp!1768403 () Bool)

(declare-fun tp!1768402 () Bool)

(assert (=> b!6341562 (= e!3851824 (and tp!1768403 tp!1768402))))

(assert (= (and b!6340659 ((_ is ElementMatch!16245) (regOne!33002 r!7292))) b!6341559))

(assert (= (and b!6340659 ((_ is Concat!25090) (regOne!33002 r!7292))) b!6341560))

(assert (= (and b!6340659 ((_ is Star!16245) (regOne!33002 r!7292))) b!6341561))

(assert (= (and b!6340659 ((_ is Union!16245) (regOne!33002 r!7292))) b!6341562))

(declare-fun b!6341564 () Bool)

(declare-fun e!3851825 () Bool)

(declare-fun tp!1768411 () Bool)

(declare-fun tp!1768410 () Bool)

(assert (=> b!6341564 (= e!3851825 (and tp!1768411 tp!1768410))))

(assert (=> b!6340659 (= tp!1768291 e!3851825)))

(declare-fun b!6341565 () Bool)

(declare-fun tp!1768409 () Bool)

(assert (=> b!6341565 (= e!3851825 tp!1768409)))

(declare-fun b!6341563 () Bool)

(assert (=> b!6341563 (= e!3851825 tp_is_empty!41743)))

(declare-fun b!6341566 () Bool)

(declare-fun tp!1768408 () Bool)

(declare-fun tp!1768407 () Bool)

(assert (=> b!6341566 (= e!3851825 (and tp!1768408 tp!1768407))))

(assert (= (and b!6340659 ((_ is ElementMatch!16245) (regTwo!33002 r!7292))) b!6341563))

(assert (= (and b!6340659 ((_ is Concat!25090) (regTwo!33002 r!7292))) b!6341564))

(assert (= (and b!6340659 ((_ is Star!16245) (regTwo!33002 r!7292))) b!6341565))

(assert (= (and b!6340659 ((_ is Union!16245) (regTwo!33002 r!7292))) b!6341566))

(declare-fun b!6341571 () Bool)

(declare-fun e!3851828 () Bool)

(declare-fun tp!1768414 () Bool)

(assert (=> b!6341571 (= e!3851828 (and tp_is_empty!41743 tp!1768414))))

(assert (=> b!6340648 (= tp!1768297 e!3851828)))

(assert (= (and b!6340648 ((_ is Cons!64910) (t!378620 s!2326))) b!6341571))

(declare-fun b_lambda!241305 () Bool)

(assert (= b_lambda!241303 (or b!6340632 b_lambda!241305)))

(declare-fun bs!1587680 () Bool)

(declare-fun d!1990196 () Bool)

(assert (= bs!1587680 (and d!1990196 b!6340632)))

(assert (=> bs!1587680 (= (dynLambda!25727 lambda!348315 lt!2362418) (derivationStepZipperUp!1419 lt!2362418 (h!71358 s!2326)))))

(assert (=> bs!1587680 m!7149236))

(assert (=> d!1990192 d!1990196))

(declare-fun b_lambda!241307 () Bool)

(assert (= b_lambda!241301 (or b!6340632 b_lambda!241307)))

(declare-fun bs!1587681 () Bool)

(declare-fun d!1990198 () Bool)

(assert (= bs!1587681 (and d!1990198 b!6340632)))

(assert (=> bs!1587681 (= (dynLambda!25727 lambda!348315 (h!71360 zl!343)) (derivationStepZipperUp!1419 (h!71360 zl!343) (h!71358 s!2326)))))

(assert (=> bs!1587681 m!7149214))

(assert (=> d!1990176 d!1990198))

(check-sat (not b!6341466) (not b!6341571) (not b!6341244) (not d!1990144) (not b!6341433) (not b!6341556) (not d!1990092) (not d!1990142) (not b!6341331) (not bm!540408) (not bm!540387) (not b!6341560) (not d!1990154) (not b_lambda!241307) (not b!6341420) (not b!6340918) (not d!1990084) (not b!6341479) (not b!6341557) (not d!1990040) (not b!6341565) (not b!6341345) (not b!6341342) (not bs!1587680) (not d!1990194) (not d!1990156) (not d!1990172) (not b!6341530) (not b!6341035) (not b!6341423) (not b!6341387) (not b!6341418) (not b!6341032) (not d!1990140) (not b!6341384) (not bm!540390) (not b_lambda!241305) (not d!1990044) (not b!6341299) (not d!1990046) (not b!6340920) (not bm!540417) (not b!6341298) (not b!6341549) (not b!6341338) (not b!6341419) (not b!6340707) (not b!6340742) (not b!6341554) (not b!6340744) (not b!6340739) (not b!6341514) (not b!6341038) (not d!1990130) (not d!1990132) (not b!6341437) (not b!6341564) (not b!6341429) (not b!6341325) (not d!1990128) (not b!6341558) (not bm!540392) (not d!1990192) (not b!6341033) (not b!6341348) tp_is_empty!41743 (not bm!540409) (not b!6341485) (not bm!540346) (not b!6341031) (not bm!540416) (not bm!540401) (not b!6341461) (not d!1990158) (not b!6341501) (not b!6341447) (not d!1990162) (not bm!540402) (not b!6341356) (not b!6341417) (not bm!540391) (not b!6341456) (not setNonEmpty!43160) (not b!6341381) (not b!6341294) (not d!1990064) (not bs!1587681) (not b!6341465) (not b!6341333) (not d!1990168) (not b!6341347) (not b!6341412) (not b!6341509) (not b!6341562) (not d!1989990) (not b!6341553) (not bm!540386) (not b!6341566) (not b!6341389) (not b!6341328) (not bm!540403) (not b!6341459) (not b!6341460) (not d!1990138) (not b!6341425) (not d!1990148) (not d!1990066) (not d!1990134) (not b!6341480) (not b!6340708) (not d!1990136) (not b!6341522) (not b!6341535) (not bm!540413) (not d!1990068) (not b!6341380) (not bm!540343) (not b!6341329) (not d!1990176) (not b!6341343) (not b!6341386) (not b!6341561) (not bm!540344) (not b!6341388) (not b!6341426) (not d!1990164) (not d!1989984) (not b!6341452) (not b!6341458) (not b!6341548) (not bm!540405) (not b!6341500) (not b!6341484) (not b!6341529) (not bm!540410) (not b!6341039) (not b!6341439) (not b!6341494) (not b!6341359) (not b!6341550) (not b!6341346) (not b!6341464) (not b!6340737) (not b!6341507) (not b!6341428) (not b!6341453) (not b!6341344) (not b!6341247) (not b!6341513) (not d!1989994) (not d!1990152) (not bm!540399) (not b!6341327) (not bm!540411) (not b!6341300) (not b!6341290) (not d!1990166) (not b!6341552) (not b!6341432) (not b!6341293) (not b!6340868) (not b!6341438) (not b!6341427) (not d!1990188) (not b!6341536) (not b!6341330))
(check-sat)
(get-model)

(declare-fun d!1990200 () Bool)

(assert (=> d!1990200 true))

(assert (=> d!1990200 true))

(declare-fun res!2609663 () Bool)

(assert (=> d!1990200 (= (choose!47010 lambda!348313) res!2609663)))

(assert (=> d!1990064 d!1990200))

(declare-fun b!6341572 () Bool)

(declare-fun res!2609668 () Bool)

(declare-fun e!3851830 () Bool)

(assert (=> b!6341572 (=> (not res!2609668) (not e!3851830))))

(declare-fun call!540425 () Bool)

(assert (=> b!6341572 (= res!2609668 call!540425)))

(declare-fun e!3851829 () Bool)

(assert (=> b!6341572 (= e!3851829 e!3851830)))

(declare-fun b!6341573 () Bool)

(declare-fun e!3851831 () Bool)

(assert (=> b!6341573 (= e!3851831 e!3851829)))

(declare-fun c!1153029 () Bool)

(assert (=> b!6341573 (= c!1153029 ((_ is Union!16245) (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun b!6341574 () Bool)

(declare-fun e!3851835 () Bool)

(declare-fun call!540423 () Bool)

(assert (=> b!6341574 (= e!3851835 call!540423)))

(declare-fun b!6341575 () Bool)

(declare-fun res!2609667 () Bool)

(declare-fun e!3851832 () Bool)

(assert (=> b!6341575 (=> res!2609667 e!3851832)))

(assert (=> b!6341575 (= res!2609667 (not ((_ is Concat!25090) (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))))))

(assert (=> b!6341575 (= e!3851829 e!3851832)))

(declare-fun b!6341576 () Bool)

(declare-fun e!3851833 () Bool)

(assert (=> b!6341576 (= e!3851831 e!3851833)))

(declare-fun res!2609665 () Bool)

(assert (=> b!6341576 (= res!2609665 (not (nullable!6238 (reg!16574 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))))

(assert (=> b!6341576 (=> (not res!2609665) (not e!3851833))))

(declare-fun b!6341577 () Bool)

(assert (=> b!6341577 (= e!3851832 e!3851835)))

(declare-fun res!2609666 () Bool)

(assert (=> b!6341577 (=> (not res!2609666) (not e!3851835))))

(assert (=> b!6341577 (= res!2609666 call!540425)))

(declare-fun d!1990202 () Bool)

(declare-fun res!2609664 () Bool)

(declare-fun e!3851834 () Bool)

(assert (=> d!1990202 (=> res!2609664 e!3851834)))

(assert (=> d!1990202 (= res!2609664 ((_ is ElementMatch!16245) (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(assert (=> d!1990202 (= (validRegex!7981 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) e!3851834)))

(declare-fun call!540424 () Bool)

(declare-fun c!1153030 () Bool)

(declare-fun bm!540418 () Bool)

(assert (=> bm!540418 (= call!540424 (validRegex!7981 (ite c!1153030 (reg!16574 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (ite c!1153029 (regTwo!33003 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (regTwo!33002 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))))))))

(declare-fun bm!540419 () Bool)

(assert (=> bm!540419 (= call!540423 call!540424)))

(declare-fun b!6341578 () Bool)

(assert (=> b!6341578 (= e!3851830 call!540423)))

(declare-fun bm!540420 () Bool)

(assert (=> bm!540420 (= call!540425 (validRegex!7981 (ite c!1153029 (regOne!33003 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (regOne!33002 (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))))

(declare-fun b!6341579 () Bool)

(assert (=> b!6341579 (= e!3851834 e!3851831)))

(assert (=> b!6341579 (= c!1153030 ((_ is Star!16245) (ite c!1152989 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun b!6341580 () Bool)

(assert (=> b!6341580 (= e!3851833 call!540424)))

(assert (= (and d!1990202 (not res!2609664)) b!6341579))

(assert (= (and b!6341579 c!1153030) b!6341576))

(assert (= (and b!6341579 (not c!1153030)) b!6341573))

(assert (= (and b!6341576 res!2609665) b!6341580))

(assert (= (and b!6341573 c!1153029) b!6341572))

(assert (= (and b!6341573 (not c!1153029)) b!6341575))

(assert (= (and b!6341572 res!2609668) b!6341578))

(assert (= (and b!6341575 (not res!2609667)) b!6341577))

(assert (= (and b!6341577 res!2609666) b!6341574))

(assert (= (or b!6341578 b!6341574) bm!540419))

(assert (= (or b!6341572 b!6341577) bm!540420))

(assert (= (or b!6341580 bm!540419) bm!540418))

(declare-fun m!7149960 () Bool)

(assert (=> b!6341576 m!7149960))

(declare-fun m!7149962 () Bool)

(assert (=> bm!540418 m!7149962))

(declare-fun m!7149964 () Bool)

(assert (=> bm!540420 m!7149964))

(assert (=> bm!540401 d!1990202))

(assert (=> bs!1587681 d!1990174))

(declare-fun d!1990204 () Bool)

(assert (=> d!1990204 (= (isEmpty!36992 (t!378620 s!2326)) ((_ is Nil!64910) (t!378620 s!2326)))))

(assert (=> d!1990140 d!1990204))

(declare-fun d!1990206 () Bool)

(assert (=> d!1990206 (= (isEmpty!36989 lt!2362429) ((_ is Nil!64911) lt!2362429))))

(assert (=> b!6341425 d!1990206))

(declare-fun d!1990208 () Bool)

(assert (=> d!1990208 (= (nullable!6238 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (nullableFct!2185 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))

(declare-fun bs!1587682 () Bool)

(assert (= bs!1587682 d!1990208))

(declare-fun m!7149966 () Bool)

(assert (=> bs!1587682 m!7149966))

(assert (=> b!6341479 d!1990208))

(declare-fun bs!1587683 () Bool)

(declare-fun d!1990210 () Bool)

(assert (= bs!1587683 (and d!1990210 b!6340737)))

(declare-fun lambda!348412 () Int)

(assert (=> bs!1587683 (not (= lambda!348412 lambda!348339))))

(declare-fun bs!1587684 () Bool)

(assert (= bs!1587684 (and d!1990210 b!6340739)))

(assert (=> bs!1587684 (not (= lambda!348412 lambda!348340))))

(declare-fun bs!1587685 () Bool)

(assert (= bs!1587685 (and d!1990210 b!6340742)))

(assert (=> bs!1587685 (not (= lambda!348412 lambda!348342))))

(declare-fun bs!1587686 () Bool)

(assert (= bs!1587686 (and d!1990210 b!6340744)))

(assert (=> bs!1587686 (not (= lambda!348412 lambda!348343))))

(declare-fun exists!2566 ((InoxSet Context!11258) Int) Bool)

(assert (=> d!1990210 (= (nullableZipper!2011 lt!2362417) (exists!2566 lt!2362417 lambda!348412))))

(declare-fun bs!1587687 () Bool)

(assert (= bs!1587687 d!1990210))

(declare-fun m!7149968 () Bool)

(assert (=> bs!1587687 m!7149968))

(assert (=> b!6340707 d!1990210))

(declare-fun b!6341597 () Bool)

(declare-fun e!3851846 () Int)

(assert (=> b!6341597 (= e!3851846 1)))

(declare-fun b!6341598 () Bool)

(declare-fun c!1153042 () Bool)

(assert (=> b!6341598 (= c!1153042 ((_ is Union!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun e!3851844 () Int)

(declare-fun e!3851847 () Int)

(assert (=> b!6341598 (= e!3851844 e!3851847)))

(declare-fun b!6341599 () Bool)

(declare-fun call!540433 () Int)

(declare-fun call!540432 () Int)

(assert (=> b!6341599 (= e!3851846 (+ 1 call!540433 call!540432))))

(declare-fun b!6341600 () Bool)

(assert (=> b!6341600 (= e!3851847 (+ 1 call!540433 call!540432))))

(declare-fun bm!540427 () Bool)

(assert (=> bm!540427 (= call!540432 (regexDepthTotal!203 (ite c!1153042 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun bm!540428 () Bool)

(declare-fun call!540434 () Int)

(assert (=> bm!540428 (= call!540433 call!540434)))

(declare-fun b!6341601 () Bool)

(assert (=> b!6341601 (= e!3851844 (+ 1 call!540434))))

(declare-fun d!1990212 () Bool)

(declare-fun lt!2362587 () Int)

(assert (=> d!1990212 (> lt!2362587 0)))

(declare-fun e!3851845 () Int)

(assert (=> d!1990212 (= lt!2362587 e!3851845)))

(declare-fun c!1153044 () Bool)

(assert (=> d!1990212 (= c!1153044 ((_ is ElementMatch!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> d!1990212 (= (regexDepthTotal!203 (h!71359 (exprs!6129 (h!71360 zl!343)))) lt!2362587)))

(declare-fun b!6341602 () Bool)

(assert (=> b!6341602 (= e!3851845 e!3851844)))

(declare-fun c!1153043 () Bool)

(assert (=> b!6341602 (= c!1153043 ((_ is Star!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun bm!540429 () Bool)

(assert (=> bm!540429 (= call!540434 (regexDepthTotal!203 (ite c!1153043 (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153042 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))))))

(declare-fun b!6341603 () Bool)

(assert (=> b!6341603 (= e!3851845 1)))

(declare-fun b!6341604 () Bool)

(assert (=> b!6341604 (= e!3851847 e!3851846)))

(declare-fun c!1153041 () Bool)

(assert (=> b!6341604 (= c!1153041 ((_ is Concat!25090) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (= (and d!1990212 c!1153044) b!6341603))

(assert (= (and d!1990212 (not c!1153044)) b!6341602))

(assert (= (and b!6341602 c!1153043) b!6341601))

(assert (= (and b!6341602 (not c!1153043)) b!6341598))

(assert (= (and b!6341598 c!1153042) b!6341600))

(assert (= (and b!6341598 (not c!1153042)) b!6341604))

(assert (= (and b!6341604 c!1153041) b!6341599))

(assert (= (and b!6341604 (not c!1153041)) b!6341597))

(assert (= (or b!6341600 b!6341599) bm!540427))

(assert (= (or b!6341600 b!6341599) bm!540428))

(assert (= (or b!6341601 bm!540428) bm!540429))

(declare-fun m!7149970 () Bool)

(assert (=> bm!540427 m!7149970))

(declare-fun m!7149972 () Bool)

(assert (=> bm!540429 m!7149972))

(assert (=> b!6340920 d!1990212))

(declare-fun d!1990214 () Bool)

(declare-fun lt!2362588 () Int)

(assert (=> d!1990214 (>= lt!2362588 0)))

(declare-fun e!3851848 () Int)

(assert (=> d!1990214 (= lt!2362588 e!3851848)))

(declare-fun c!1153045 () Bool)

(assert (=> d!1990214 (= c!1153045 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(assert (=> d!1990214 (= (contextDepthTotal!354 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343))))) lt!2362588)))

(declare-fun b!6341605 () Bool)

(assert (=> b!6341605 (= e!3851848 (+ (regexDepthTotal!203 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343))))))) (contextDepthTotal!354 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343))))))))))))

(declare-fun b!6341606 () Bool)

(assert (=> b!6341606 (= e!3851848 1)))

(assert (= (and d!1990214 c!1153045) b!6341605))

(assert (= (and d!1990214 (not c!1153045)) b!6341606))

(declare-fun m!7149974 () Bool)

(assert (=> b!6341605 m!7149974))

(declare-fun m!7149976 () Bool)

(assert (=> b!6341605 m!7149976))

(assert (=> b!6340920 d!1990214))

(declare-fun bs!1587688 () Bool)

(declare-fun d!1990216 () Bool)

(assert (= bs!1587688 (and d!1990216 d!1990162)))

(declare-fun lambda!348413 () Int)

(assert (=> bs!1587688 (= lambda!348413 lambda!348406)))

(declare-fun bs!1587689 () Bool)

(assert (= bs!1587689 (and d!1990216 d!1989984)))

(assert (=> bs!1587689 (= lambda!348413 lambda!348318)))

(declare-fun bs!1587690 () Bool)

(assert (= bs!1587690 (and d!1990216 d!1990132)))

(assert (=> bs!1587690 (= lambda!348413 lambda!348396)))

(declare-fun bs!1587691 () Bool)

(assert (= bs!1587691 (and d!1990216 d!1990148)))

(assert (=> bs!1587691 (= lambda!348413 lambda!348404)))

(declare-fun bs!1587692 () Bool)

(assert (= bs!1587692 (and d!1990216 d!1990134)))

(assert (=> bs!1587692 (= lambda!348413 lambda!348399)))

(declare-fun bs!1587693 () Bool)

(assert (= bs!1587693 (and d!1990216 d!1990154)))

(assert (=> bs!1587693 (= lambda!348413 lambda!348405)))

(declare-fun bs!1587694 () Bool)

(assert (= bs!1587694 (and d!1990216 d!1989990)))

(assert (=> bs!1587694 (= lambda!348413 lambda!348319)))

(declare-fun b!6341607 () Bool)

(declare-fun e!3851851 () Bool)

(declare-fun lt!2362589 () Regex!16245)

(assert (=> b!6341607 (= e!3851851 (= lt!2362589 (head!12983 (t!378621 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6341608 () Bool)

(assert (=> b!6341608 (= e!3851851 (isConcat!1170 lt!2362589))))

(declare-fun b!6341609 () Bool)

(declare-fun e!3851850 () Regex!16245)

(assert (=> b!6341609 (= e!3851850 EmptyExpr!16245)))

(declare-fun b!6341610 () Bool)

(declare-fun e!3851853 () Regex!16245)

(assert (=> b!6341610 (= e!3851853 e!3851850)))

(declare-fun c!1153047 () Bool)

(assert (=> b!6341610 (= c!1153047 ((_ is Cons!64911) (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6341611 () Bool)

(declare-fun e!3851852 () Bool)

(assert (=> b!6341611 (= e!3851852 (isEmpty!36989 (t!378621 (t!378621 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6341613 () Bool)

(declare-fun e!3851849 () Bool)

(declare-fun e!3851854 () Bool)

(assert (=> b!6341613 (= e!3851849 e!3851854)))

(declare-fun c!1153048 () Bool)

(assert (=> b!6341613 (= c!1153048 (isEmpty!36989 (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6341614 () Bool)

(assert (=> b!6341614 (= e!3851854 (isEmptyExpr!1647 lt!2362589))))

(declare-fun b!6341615 () Bool)

(assert (=> b!6341615 (= e!3851850 (Concat!25090 (h!71359 (t!378621 (exprs!6129 (h!71360 zl!343)))) (generalisedConcat!1842 (t!378621 (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun b!6341616 () Bool)

(assert (=> b!6341616 (= e!3851854 e!3851851)))

(declare-fun c!1153049 () Bool)

(assert (=> b!6341616 (= c!1153049 (isEmpty!36989 (tail!12068 (t!378621 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6341612 () Bool)

(assert (=> b!6341612 (= e!3851853 (h!71359 (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> d!1990216 e!3851849))

(declare-fun res!2609669 () Bool)

(assert (=> d!1990216 (=> (not res!2609669) (not e!3851849))))

(assert (=> d!1990216 (= res!2609669 (validRegex!7981 lt!2362589))))

(assert (=> d!1990216 (= lt!2362589 e!3851853)))

(declare-fun c!1153046 () Bool)

(assert (=> d!1990216 (= c!1153046 e!3851852)))

(declare-fun res!2609670 () Bool)

(assert (=> d!1990216 (=> (not res!2609670) (not e!3851852))))

(assert (=> d!1990216 (= res!2609670 ((_ is Cons!64911) (t!378621 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> d!1990216 (forall!15401 (t!378621 (exprs!6129 (h!71360 zl!343))) lambda!348413)))

(assert (=> d!1990216 (= (generalisedConcat!1842 (t!378621 (exprs!6129 (h!71360 zl!343)))) lt!2362589)))

(assert (= (and d!1990216 res!2609670) b!6341611))

(assert (= (and d!1990216 c!1153046) b!6341612))

(assert (= (and d!1990216 (not c!1153046)) b!6341610))

(assert (= (and b!6341610 c!1153047) b!6341615))

(assert (= (and b!6341610 (not c!1153047)) b!6341609))

(assert (= (and d!1990216 res!2609669) b!6341613))

(assert (= (and b!6341613 c!1153048) b!6341614))

(assert (= (and b!6341613 (not c!1153048)) b!6341616))

(assert (= (and b!6341616 c!1153049) b!6341607))

(assert (= (and b!6341616 (not c!1153049)) b!6341608))

(declare-fun m!7149978 () Bool)

(assert (=> b!6341611 m!7149978))

(declare-fun m!7149980 () Bool)

(assert (=> b!6341616 m!7149980))

(assert (=> b!6341616 m!7149980))

(declare-fun m!7149982 () Bool)

(assert (=> b!6341616 m!7149982))

(declare-fun m!7149984 () Bool)

(assert (=> d!1990216 m!7149984))

(declare-fun m!7149986 () Bool)

(assert (=> d!1990216 m!7149986))

(assert (=> b!6341613 m!7149262))

(declare-fun m!7149988 () Bool)

(assert (=> b!6341607 m!7149988))

(declare-fun m!7149990 () Bool)

(assert (=> b!6341614 m!7149990))

(declare-fun m!7149992 () Bool)

(assert (=> b!6341608 m!7149992))

(declare-fun m!7149994 () Bool)

(assert (=> b!6341615 m!7149994))

(assert (=> b!6341460 d!1990216))

(declare-fun b!6341631 () Bool)

(declare-fun e!3851869 () Bool)

(declare-fun call!540440 () Bool)

(assert (=> b!6341631 (= e!3851869 call!540440)))

(declare-fun bm!540434 () Bool)

(declare-fun call!540439 () Bool)

(declare-fun c!1153052 () Bool)

(assert (=> bm!540434 (= call!540439 (nullable!6238 (ite c!1153052 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun d!1990218 () Bool)

(declare-fun res!2609684 () Bool)

(declare-fun e!3851870 () Bool)

(assert (=> d!1990218 (=> res!2609684 e!3851870)))

(assert (=> d!1990218 (= res!2609684 ((_ is EmptyExpr!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> d!1990218 (= (nullableFct!2185 (h!71359 (exprs!6129 (h!71360 zl!343)))) e!3851870)))

(declare-fun bm!540435 () Bool)

(assert (=> bm!540435 (= call!540440 (nullable!6238 (ite c!1153052 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun b!6341632 () Bool)

(declare-fun e!3851872 () Bool)

(declare-fun e!3851871 () Bool)

(assert (=> b!6341632 (= e!3851872 e!3851871)))

(assert (=> b!6341632 (= c!1153052 ((_ is Union!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6341633 () Bool)

(declare-fun e!3851867 () Bool)

(assert (=> b!6341633 (= e!3851867 e!3851872)))

(declare-fun res!2609683 () Bool)

(assert (=> b!6341633 (=> res!2609683 e!3851872)))

(assert (=> b!6341633 (= res!2609683 ((_ is Star!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6341634 () Bool)

(declare-fun e!3851868 () Bool)

(assert (=> b!6341634 (= e!3851868 call!540440)))

(declare-fun b!6341635 () Bool)

(assert (=> b!6341635 (= e!3851871 e!3851869)))

(declare-fun res!2609681 () Bool)

(assert (=> b!6341635 (= res!2609681 call!540439)))

(assert (=> b!6341635 (=> (not res!2609681) (not e!3851869))))

(declare-fun b!6341636 () Bool)

(assert (=> b!6341636 (= e!3851870 e!3851867)))

(declare-fun res!2609685 () Bool)

(assert (=> b!6341636 (=> (not res!2609685) (not e!3851867))))

(assert (=> b!6341636 (= res!2609685 (and (not ((_ is EmptyLang!16245) (h!71359 (exprs!6129 (h!71360 zl!343))))) (not ((_ is ElementMatch!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun b!6341637 () Bool)

(assert (=> b!6341637 (= e!3851871 e!3851868)))

(declare-fun res!2609682 () Bool)

(assert (=> b!6341637 (= res!2609682 call!540439)))

(assert (=> b!6341637 (=> res!2609682 e!3851868)))

(assert (= (and d!1990218 (not res!2609684)) b!6341636))

(assert (= (and b!6341636 res!2609685) b!6341633))

(assert (= (and b!6341633 (not res!2609683)) b!6341632))

(assert (= (and b!6341632 c!1153052) b!6341637))

(assert (= (and b!6341632 (not c!1153052)) b!6341635))

(assert (= (and b!6341637 (not res!2609682)) b!6341634))

(assert (= (and b!6341635 res!2609681) b!6341631))

(assert (= (or b!6341634 b!6341631) bm!540435))

(assert (= (or b!6341637 b!6341635) bm!540434))

(declare-fun m!7149996 () Bool)

(assert (=> bm!540434 m!7149996))

(declare-fun m!7149998 () Bool)

(assert (=> bm!540435 m!7149998))

(assert (=> d!1990168 d!1990218))

(declare-fun b!6341638 () Bool)

(declare-fun e!3851876 () Bool)

(assert (=> b!6341638 (= e!3851876 (not (= (head!12981 (_2!36527 (get!22451 lt!2362511))) (c!1152752 (regTwo!33002 r!7292)))))))

(declare-fun b!6341639 () Bool)

(declare-fun e!3851878 () Bool)

(declare-fun e!3851879 () Bool)

(assert (=> b!6341639 (= e!3851878 e!3851879)))

(declare-fun c!1153054 () Bool)

(assert (=> b!6341639 (= c!1153054 ((_ is EmptyLang!16245) (regTwo!33002 r!7292)))))

(declare-fun b!6341640 () Bool)

(declare-fun e!3851874 () Bool)

(declare-fun e!3851877 () Bool)

(assert (=> b!6341640 (= e!3851874 e!3851877)))

(declare-fun res!2609689 () Bool)

(assert (=> b!6341640 (=> (not res!2609689) (not e!3851877))))

(declare-fun lt!2362590 () Bool)

(assert (=> b!6341640 (= res!2609689 (not lt!2362590))))

(declare-fun b!6341641 () Bool)

(declare-fun e!3851875 () Bool)

(assert (=> b!6341641 (= e!3851875 (nullable!6238 (regTwo!33002 r!7292)))))

(declare-fun b!6341642 () Bool)

(declare-fun res!2609690 () Bool)

(declare-fun e!3851873 () Bool)

(assert (=> b!6341642 (=> (not res!2609690) (not e!3851873))))

(assert (=> b!6341642 (= res!2609690 (isEmpty!36992 (tail!12067 (_2!36527 (get!22451 lt!2362511)))))))

(declare-fun d!1990220 () Bool)

(assert (=> d!1990220 e!3851878))

(declare-fun c!1153053 () Bool)

(assert (=> d!1990220 (= c!1153053 ((_ is EmptyExpr!16245) (regTwo!33002 r!7292)))))

(assert (=> d!1990220 (= lt!2362590 e!3851875)))

(declare-fun c!1153055 () Bool)

(assert (=> d!1990220 (= c!1153055 (isEmpty!36992 (_2!36527 (get!22451 lt!2362511))))))

(assert (=> d!1990220 (validRegex!7981 (regTwo!33002 r!7292))))

(assert (=> d!1990220 (= (matchR!8428 (regTwo!33002 r!7292) (_2!36527 (get!22451 lt!2362511))) lt!2362590)))

(declare-fun b!6341643 () Bool)

(declare-fun call!540441 () Bool)

(assert (=> b!6341643 (= e!3851878 (= lt!2362590 call!540441))))

(declare-fun b!6341644 () Bool)

(declare-fun res!2609693 () Bool)

(assert (=> b!6341644 (=> (not res!2609693) (not e!3851873))))

(assert (=> b!6341644 (= res!2609693 (not call!540441))))

(declare-fun b!6341645 () Bool)

(declare-fun res!2609686 () Bool)

(assert (=> b!6341645 (=> res!2609686 e!3851874)))

(assert (=> b!6341645 (= res!2609686 (not ((_ is ElementMatch!16245) (regTwo!33002 r!7292))))))

(assert (=> b!6341645 (= e!3851879 e!3851874)))

(declare-fun b!6341646 () Bool)

(declare-fun res!2609687 () Bool)

(assert (=> b!6341646 (=> res!2609687 e!3851876)))

(assert (=> b!6341646 (= res!2609687 (not (isEmpty!36992 (tail!12067 (_2!36527 (get!22451 lt!2362511))))))))

(declare-fun b!6341647 () Bool)

(assert (=> b!6341647 (= e!3851873 (= (head!12981 (_2!36527 (get!22451 lt!2362511))) (c!1152752 (regTwo!33002 r!7292))))))

(declare-fun b!6341648 () Bool)

(assert (=> b!6341648 (= e!3851875 (matchR!8428 (derivativeStep!4950 (regTwo!33002 r!7292) (head!12981 (_2!36527 (get!22451 lt!2362511)))) (tail!12067 (_2!36527 (get!22451 lt!2362511)))))))

(declare-fun b!6341649 () Bool)

(assert (=> b!6341649 (= e!3851877 e!3851876)))

(declare-fun res!2609688 () Bool)

(assert (=> b!6341649 (=> res!2609688 e!3851876)))

(assert (=> b!6341649 (= res!2609688 call!540441)))

(declare-fun bm!540436 () Bool)

(assert (=> bm!540436 (= call!540441 (isEmpty!36992 (_2!36527 (get!22451 lt!2362511))))))

(declare-fun b!6341650 () Bool)

(declare-fun res!2609692 () Bool)

(assert (=> b!6341650 (=> res!2609692 e!3851874)))

(assert (=> b!6341650 (= res!2609692 e!3851873)))

(declare-fun res!2609691 () Bool)

(assert (=> b!6341650 (=> (not res!2609691) (not e!3851873))))

(assert (=> b!6341650 (= res!2609691 lt!2362590)))

(declare-fun b!6341651 () Bool)

(assert (=> b!6341651 (= e!3851879 (not lt!2362590))))

(assert (= (and d!1990220 c!1153055) b!6341641))

(assert (= (and d!1990220 (not c!1153055)) b!6341648))

(assert (= (and d!1990220 c!1153053) b!6341643))

(assert (= (and d!1990220 (not c!1153053)) b!6341639))

(assert (= (and b!6341639 c!1153054) b!6341651))

(assert (= (and b!6341639 (not c!1153054)) b!6341645))

(assert (= (and b!6341645 (not res!2609686)) b!6341650))

(assert (= (and b!6341650 res!2609691) b!6341644))

(assert (= (and b!6341644 res!2609693) b!6341642))

(assert (= (and b!6341642 res!2609690) b!6341647))

(assert (= (and b!6341650 (not res!2609692)) b!6341640))

(assert (= (and b!6341640 res!2609689) b!6341649))

(assert (= (and b!6341649 (not res!2609688)) b!6341646))

(assert (= (and b!6341646 (not res!2609687)) b!6341638))

(assert (= (or b!6341643 b!6341644 b!6341649) bm!540436))

(declare-fun m!7150000 () Bool)

(assert (=> bm!540436 m!7150000))

(declare-fun m!7150002 () Bool)

(assert (=> b!6341642 m!7150002))

(assert (=> b!6341642 m!7150002))

(declare-fun m!7150004 () Bool)

(assert (=> b!6341642 m!7150004))

(declare-fun m!7150006 () Bool)

(assert (=> b!6341641 m!7150006))

(declare-fun m!7150008 () Bool)

(assert (=> b!6341647 m!7150008))

(assert (=> b!6341638 m!7150008))

(assert (=> b!6341646 m!7150002))

(assert (=> b!6341646 m!7150002))

(assert (=> b!6341646 m!7150004))

(assert (=> b!6341648 m!7150008))

(assert (=> b!6341648 m!7150008))

(declare-fun m!7150010 () Bool)

(assert (=> b!6341648 m!7150010))

(assert (=> b!6341648 m!7150002))

(assert (=> b!6341648 m!7150010))

(assert (=> b!6341648 m!7150002))

(declare-fun m!7150012 () Bool)

(assert (=> b!6341648 m!7150012))

(assert (=> d!1990220 m!7150000))

(declare-fun m!7150014 () Bool)

(assert (=> d!1990220 m!7150014))

(assert (=> b!6341031 d!1990220))

(declare-fun d!1990222 () Bool)

(assert (=> d!1990222 (= (get!22451 lt!2362511) (v!52304 lt!2362511))))

(assert (=> b!6341031 d!1990222))

(declare-fun b!6341652 () Bool)

(declare-fun e!3851883 () Bool)

(assert (=> b!6341652 (= e!3851883 (not (= (head!12981 (tail!12067 s!2326)) (c!1152752 (derivativeStep!4950 r!7292 (head!12981 s!2326))))))))

(declare-fun b!6341653 () Bool)

(declare-fun e!3851885 () Bool)

(declare-fun e!3851886 () Bool)

(assert (=> b!6341653 (= e!3851885 e!3851886)))

(declare-fun c!1153057 () Bool)

(assert (=> b!6341653 (= c!1153057 ((_ is EmptyLang!16245) (derivativeStep!4950 r!7292 (head!12981 s!2326))))))

(declare-fun b!6341654 () Bool)

(declare-fun e!3851881 () Bool)

(declare-fun e!3851884 () Bool)

(assert (=> b!6341654 (= e!3851881 e!3851884)))

(declare-fun res!2609697 () Bool)

(assert (=> b!6341654 (=> (not res!2609697) (not e!3851884))))

(declare-fun lt!2362591 () Bool)

(assert (=> b!6341654 (= res!2609697 (not lt!2362591))))

(declare-fun b!6341655 () Bool)

(declare-fun e!3851882 () Bool)

(assert (=> b!6341655 (= e!3851882 (nullable!6238 (derivativeStep!4950 r!7292 (head!12981 s!2326))))))

(declare-fun b!6341656 () Bool)

(declare-fun res!2609698 () Bool)

(declare-fun e!3851880 () Bool)

(assert (=> b!6341656 (=> (not res!2609698) (not e!3851880))))

(assert (=> b!6341656 (= res!2609698 (isEmpty!36992 (tail!12067 (tail!12067 s!2326))))))

(declare-fun d!1990224 () Bool)

(assert (=> d!1990224 e!3851885))

(declare-fun c!1153056 () Bool)

(assert (=> d!1990224 (= c!1153056 ((_ is EmptyExpr!16245) (derivativeStep!4950 r!7292 (head!12981 s!2326))))))

(assert (=> d!1990224 (= lt!2362591 e!3851882)))

(declare-fun c!1153058 () Bool)

(assert (=> d!1990224 (= c!1153058 (isEmpty!36992 (tail!12067 s!2326)))))

(assert (=> d!1990224 (validRegex!7981 (derivativeStep!4950 r!7292 (head!12981 s!2326)))))

(assert (=> d!1990224 (= (matchR!8428 (derivativeStep!4950 r!7292 (head!12981 s!2326)) (tail!12067 s!2326)) lt!2362591)))

(declare-fun b!6341657 () Bool)

(declare-fun call!540442 () Bool)

(assert (=> b!6341657 (= e!3851885 (= lt!2362591 call!540442))))

(declare-fun b!6341658 () Bool)

(declare-fun res!2609701 () Bool)

(assert (=> b!6341658 (=> (not res!2609701) (not e!3851880))))

(assert (=> b!6341658 (= res!2609701 (not call!540442))))

(declare-fun b!6341659 () Bool)

(declare-fun res!2609694 () Bool)

(assert (=> b!6341659 (=> res!2609694 e!3851881)))

(assert (=> b!6341659 (= res!2609694 (not ((_ is ElementMatch!16245) (derivativeStep!4950 r!7292 (head!12981 s!2326)))))))

(assert (=> b!6341659 (= e!3851886 e!3851881)))

(declare-fun b!6341660 () Bool)

(declare-fun res!2609695 () Bool)

(assert (=> b!6341660 (=> res!2609695 e!3851883)))

(assert (=> b!6341660 (= res!2609695 (not (isEmpty!36992 (tail!12067 (tail!12067 s!2326)))))))

(declare-fun b!6341661 () Bool)

(assert (=> b!6341661 (= e!3851880 (= (head!12981 (tail!12067 s!2326)) (c!1152752 (derivativeStep!4950 r!7292 (head!12981 s!2326)))))))

(declare-fun b!6341662 () Bool)

(assert (=> b!6341662 (= e!3851882 (matchR!8428 (derivativeStep!4950 (derivativeStep!4950 r!7292 (head!12981 s!2326)) (head!12981 (tail!12067 s!2326))) (tail!12067 (tail!12067 s!2326))))))

(declare-fun b!6341663 () Bool)

(assert (=> b!6341663 (= e!3851884 e!3851883)))

(declare-fun res!2609696 () Bool)

(assert (=> b!6341663 (=> res!2609696 e!3851883)))

(assert (=> b!6341663 (= res!2609696 call!540442)))

(declare-fun bm!540437 () Bool)

(assert (=> bm!540437 (= call!540442 (isEmpty!36992 (tail!12067 s!2326)))))

(declare-fun b!6341664 () Bool)

(declare-fun res!2609700 () Bool)

(assert (=> b!6341664 (=> res!2609700 e!3851881)))

(assert (=> b!6341664 (= res!2609700 e!3851880)))

(declare-fun res!2609699 () Bool)

(assert (=> b!6341664 (=> (not res!2609699) (not e!3851880))))

(assert (=> b!6341664 (= res!2609699 lt!2362591)))

(declare-fun b!6341665 () Bool)

(assert (=> b!6341665 (= e!3851886 (not lt!2362591))))

(assert (= (and d!1990224 c!1153058) b!6341655))

(assert (= (and d!1990224 (not c!1153058)) b!6341662))

(assert (= (and d!1990224 c!1153056) b!6341657))

(assert (= (and d!1990224 (not c!1153056)) b!6341653))

(assert (= (and b!6341653 c!1153057) b!6341665))

(assert (= (and b!6341653 (not c!1153057)) b!6341659))

(assert (= (and b!6341659 (not res!2609694)) b!6341664))

(assert (= (and b!6341664 res!2609699) b!6341658))

(assert (= (and b!6341658 res!2609701) b!6341656))

(assert (= (and b!6341656 res!2609698) b!6341661))

(assert (= (and b!6341664 (not res!2609700)) b!6341654))

(assert (= (and b!6341654 res!2609697) b!6341663))

(assert (= (and b!6341663 (not res!2609696)) b!6341660))

(assert (= (and b!6341660 (not res!2609695)) b!6341652))

(assert (= (or b!6341657 b!6341658 b!6341663) bm!540437))

(assert (=> bm!540437 m!7149736))

(assert (=> bm!540437 m!7149738))

(assert (=> b!6341656 m!7149736))

(declare-fun m!7150016 () Bool)

(assert (=> b!6341656 m!7150016))

(assert (=> b!6341656 m!7150016))

(declare-fun m!7150018 () Bool)

(assert (=> b!6341656 m!7150018))

(assert (=> b!6341655 m!7149744))

(declare-fun m!7150020 () Bool)

(assert (=> b!6341655 m!7150020))

(assert (=> b!6341661 m!7149736))

(declare-fun m!7150022 () Bool)

(assert (=> b!6341661 m!7150022))

(assert (=> b!6341652 m!7149736))

(assert (=> b!6341652 m!7150022))

(assert (=> b!6341660 m!7149736))

(assert (=> b!6341660 m!7150016))

(assert (=> b!6341660 m!7150016))

(assert (=> b!6341660 m!7150018))

(assert (=> b!6341662 m!7149736))

(assert (=> b!6341662 m!7150022))

(assert (=> b!6341662 m!7149744))

(assert (=> b!6341662 m!7150022))

(declare-fun m!7150024 () Bool)

(assert (=> b!6341662 m!7150024))

(assert (=> b!6341662 m!7149736))

(assert (=> b!6341662 m!7150016))

(assert (=> b!6341662 m!7150024))

(assert (=> b!6341662 m!7150016))

(declare-fun m!7150026 () Bool)

(assert (=> b!6341662 m!7150026))

(assert (=> d!1990224 m!7149736))

(assert (=> d!1990224 m!7149738))

(assert (=> d!1990224 m!7149744))

(declare-fun m!7150028 () Bool)

(assert (=> d!1990224 m!7150028))

(assert (=> b!6341300 d!1990224))

(declare-fun bm!540447 () Bool)

(declare-fun call!540454 () Regex!16245)

(declare-fun call!540451 () Regex!16245)

(assert (=> bm!540447 (= call!540454 call!540451)))

(declare-fun bm!540448 () Bool)

(declare-fun call!540453 () Regex!16245)

(assert (=> bm!540448 (= call!540451 call!540453)))

(declare-fun b!6341686 () Bool)

(declare-fun e!3851899 () Regex!16245)

(assert (=> b!6341686 (= e!3851899 (Union!16245 (Concat!25090 call!540454 (regTwo!33002 r!7292)) EmptyLang!16245))))

(declare-fun b!6341687 () Bool)

(declare-fun e!3851901 () Regex!16245)

(assert (=> b!6341687 (= e!3851901 EmptyLang!16245)))

(declare-fun b!6341688 () Bool)

(declare-fun e!3851900 () Regex!16245)

(assert (=> b!6341688 (= e!3851901 e!3851900)))

(declare-fun c!1153072 () Bool)

(assert (=> b!6341688 (= c!1153072 ((_ is ElementMatch!16245) r!7292))))

(declare-fun b!6341689 () Bool)

(declare-fun e!3851897 () Regex!16245)

(declare-fun e!3851898 () Regex!16245)

(assert (=> b!6341689 (= e!3851897 e!3851898)))

(declare-fun c!1153071 () Bool)

(assert (=> b!6341689 (= c!1153071 ((_ is Star!16245) r!7292))))

(declare-fun call!540452 () Regex!16245)

(declare-fun b!6341690 () Bool)

(assert (=> b!6341690 (= e!3851899 (Union!16245 (Concat!25090 call!540452 (regTwo!33002 r!7292)) call!540454))))

(declare-fun b!6341691 () Bool)

(declare-fun c!1153069 () Bool)

(assert (=> b!6341691 (= c!1153069 ((_ is Union!16245) r!7292))))

(assert (=> b!6341691 (= e!3851900 e!3851897)))

(declare-fun b!6341692 () Bool)

(assert (=> b!6341692 (= e!3851898 (Concat!25090 call!540451 r!7292))))

(declare-fun bm!540446 () Bool)

(assert (=> bm!540446 (= call!540452 (derivativeStep!4950 (ite c!1153069 (regOne!33003 r!7292) (regOne!33002 r!7292)) (head!12981 s!2326)))))

(declare-fun d!1990226 () Bool)

(declare-fun lt!2362594 () Regex!16245)

(assert (=> d!1990226 (validRegex!7981 lt!2362594)))

(assert (=> d!1990226 (= lt!2362594 e!3851901)))

(declare-fun c!1153070 () Bool)

(assert (=> d!1990226 (= c!1153070 (or ((_ is EmptyExpr!16245) r!7292) ((_ is EmptyLang!16245) r!7292)))))

(assert (=> d!1990226 (validRegex!7981 r!7292)))

(assert (=> d!1990226 (= (derivativeStep!4950 r!7292 (head!12981 s!2326)) lt!2362594)))

(declare-fun b!6341693 () Bool)

(assert (=> b!6341693 (= e!3851897 (Union!16245 call!540452 call!540453))))

(declare-fun c!1153073 () Bool)

(declare-fun bm!540449 () Bool)

(assert (=> bm!540449 (= call!540453 (derivativeStep!4950 (ite c!1153069 (regTwo!33003 r!7292) (ite c!1153071 (reg!16574 r!7292) (ite c!1153073 (regTwo!33002 r!7292) (regOne!33002 r!7292)))) (head!12981 s!2326)))))

(declare-fun b!6341694 () Bool)

(assert (=> b!6341694 (= c!1153073 (nullable!6238 (regOne!33002 r!7292)))))

(assert (=> b!6341694 (= e!3851898 e!3851899)))

(declare-fun b!6341695 () Bool)

(assert (=> b!6341695 (= e!3851900 (ite (= (head!12981 s!2326) (c!1152752 r!7292)) EmptyExpr!16245 EmptyLang!16245))))

(assert (= (and d!1990226 c!1153070) b!6341687))

(assert (= (and d!1990226 (not c!1153070)) b!6341688))

(assert (= (and b!6341688 c!1153072) b!6341695))

(assert (= (and b!6341688 (not c!1153072)) b!6341691))

(assert (= (and b!6341691 c!1153069) b!6341693))

(assert (= (and b!6341691 (not c!1153069)) b!6341689))

(assert (= (and b!6341689 c!1153071) b!6341692))

(assert (= (and b!6341689 (not c!1153071)) b!6341694))

(assert (= (and b!6341694 c!1153073) b!6341690))

(assert (= (and b!6341694 (not c!1153073)) b!6341686))

(assert (= (or b!6341690 b!6341686) bm!540447))

(assert (= (or b!6341692 bm!540447) bm!540448))

(assert (= (or b!6341693 bm!540448) bm!540449))

(assert (= (or b!6341693 b!6341690) bm!540446))

(assert (=> bm!540446 m!7149742))

(declare-fun m!7150030 () Bool)

(assert (=> bm!540446 m!7150030))

(declare-fun m!7150032 () Bool)

(assert (=> d!1990226 m!7150032))

(assert (=> d!1990226 m!7149286))

(assert (=> bm!540449 m!7149742))

(declare-fun m!7150034 () Bool)

(assert (=> bm!540449 m!7150034))

(declare-fun m!7150036 () Bool)

(assert (=> b!6341694 m!7150036))

(assert (=> b!6341300 d!1990226))

(declare-fun d!1990228 () Bool)

(assert (=> d!1990228 (= (head!12981 s!2326) (h!71358 s!2326))))

(assert (=> b!6341300 d!1990228))

(declare-fun d!1990230 () Bool)

(assert (=> d!1990230 (= (tail!12067 s!2326) (t!378620 s!2326))))

(assert (=> b!6341300 d!1990230))

(assert (=> d!1990176 d!1990172))

(declare-fun d!1990232 () Bool)

(assert (=> d!1990232 (= (flatMap!1750 z!1189 lambda!348315) (dynLambda!25727 lambda!348315 (h!71360 zl!343)))))

(assert (=> d!1990232 true))

(declare-fun _$13!3495 () Unit!158311)

(assert (=> d!1990232 (= (choose!47025 z!1189 (h!71360 zl!343) lambda!348315) _$13!3495)))

(declare-fun b_lambda!241309 () Bool)

(assert (=> (not b_lambda!241309) (not d!1990232)))

(declare-fun bs!1587695 () Bool)

(assert (= bs!1587695 d!1990232))

(assert (=> bs!1587695 m!7149206))

(assert (=> bs!1587695 m!7149914))

(assert (=> d!1990176 d!1990232))

(declare-fun d!1990234 () Bool)

(assert (=> d!1990234 (= (isEmpty!36992 s!2326) ((_ is Nil!64910) s!2326))))

(assert (=> d!1990128 d!1990234))

(assert (=> d!1990128 d!1990160))

(declare-fun d!1990236 () Bool)

(assert (=> d!1990236 true))

(declare-fun setRes!43163 () Bool)

(assert (=> d!1990236 setRes!43163))

(declare-fun condSetEmpty!43163 () Bool)

(declare-fun res!2609704 () (InoxSet Context!11258))

(assert (=> d!1990236 (= condSetEmpty!43163 (= res!2609704 ((as const (Array Context!11258 Bool)) false)))))

(assert (=> d!1990236 (= (choose!47024 lt!2362411 lambda!348315) res!2609704)))

(declare-fun setIsEmpty!43163 () Bool)

(assert (=> setIsEmpty!43163 setRes!43163))

(declare-fun tp!1768420 () Bool)

(declare-fun e!3851904 () Bool)

(declare-fun setNonEmpty!43163 () Bool)

(declare-fun setElem!43163 () Context!11258)

(assert (=> setNonEmpty!43163 (= setRes!43163 (and tp!1768420 (inv!83859 setElem!43163) e!3851904))))

(declare-fun setRest!43163 () (InoxSet Context!11258))

(assert (=> setNonEmpty!43163 (= res!2609704 ((_ map or) (store ((as const (Array Context!11258 Bool)) false) setElem!43163 true) setRest!43163))))

(declare-fun b!6341698 () Bool)

(declare-fun tp!1768419 () Bool)

(assert (=> b!6341698 (= e!3851904 tp!1768419)))

(assert (= (and d!1990236 condSetEmpty!43163) setIsEmpty!43163))

(assert (= (and d!1990236 (not condSetEmpty!43163)) setNonEmpty!43163))

(assert (= setNonEmpty!43163 b!6341698))

(declare-fun m!7150038 () Bool)

(assert (=> setNonEmpty!43163 m!7150038))

(assert (=> d!1990188 d!1990236))

(declare-fun d!1990238 () Bool)

(declare-fun lt!2362595 () Int)

(assert (=> d!1990238 (>= lt!2362595 0)))

(declare-fun e!3851905 () Int)

(assert (=> d!1990238 (= lt!2362595 e!3851905)))

(declare-fun c!1153074 () Bool)

(assert (=> d!1990238 (= c!1153074 ((_ is Cons!64911) (exprs!6129 (h!71360 lt!2362432))))))

(assert (=> d!1990238 (= (contextDepthTotal!354 (h!71360 lt!2362432)) lt!2362595)))

(declare-fun b!6341699 () Bool)

(assert (=> b!6341699 (= e!3851905 (+ (regexDepthTotal!203 (h!71359 (exprs!6129 (h!71360 lt!2362432)))) (contextDepthTotal!354 (Context!11259 (t!378621 (exprs!6129 (h!71360 lt!2362432)))))))))

(declare-fun b!6341700 () Bool)

(assert (=> b!6341700 (= e!3851905 1)))

(assert (= (and d!1990238 c!1153074) b!6341699))

(assert (= (and d!1990238 (not c!1153074)) b!6341700))

(declare-fun m!7150040 () Bool)

(assert (=> b!6341699 m!7150040))

(declare-fun m!7150042 () Bool)

(assert (=> b!6341699 m!7150042))

(assert (=> b!6341507 d!1990238))

(declare-fun d!1990240 () Bool)

(declare-fun lt!2362596 () Int)

(assert (=> d!1990240 (>= lt!2362596 0)))

(declare-fun e!3851906 () Int)

(assert (=> d!1990240 (= lt!2362596 e!3851906)))

(declare-fun c!1153075 () Bool)

(assert (=> d!1990240 (= c!1153075 ((_ is Cons!64912) (t!378622 lt!2362432)))))

(assert (=> d!1990240 (= (zipperDepthTotal!382 (t!378622 lt!2362432)) lt!2362596)))

(declare-fun b!6341701 () Bool)

(assert (=> b!6341701 (= e!3851906 (+ (contextDepthTotal!354 (h!71360 (t!378622 lt!2362432))) (zipperDepthTotal!382 (t!378622 (t!378622 lt!2362432)))))))

(declare-fun b!6341702 () Bool)

(assert (=> b!6341702 (= e!3851906 0)))

(assert (= (and d!1990240 c!1153075) b!6341701))

(assert (= (and d!1990240 (not c!1153075)) b!6341702))

(declare-fun m!7150044 () Bool)

(assert (=> b!6341701 m!7150044))

(declare-fun m!7150046 () Bool)

(assert (=> b!6341701 m!7150046))

(assert (=> b!6341507 d!1990240))

(assert (=> b!6341456 d!1990026))

(declare-fun b!6341703 () Bool)

(declare-fun e!3851910 () Bool)

(assert (=> b!6341703 (= e!3851910 (not (= (head!12981 (_1!36527 (get!22451 lt!2362511))) (c!1152752 (regOne!33002 r!7292)))))))

(declare-fun b!6341704 () Bool)

(declare-fun e!3851912 () Bool)

(declare-fun e!3851913 () Bool)

(assert (=> b!6341704 (= e!3851912 e!3851913)))

(declare-fun c!1153077 () Bool)

(assert (=> b!6341704 (= c!1153077 ((_ is EmptyLang!16245) (regOne!33002 r!7292)))))

(declare-fun b!6341705 () Bool)

(declare-fun e!3851908 () Bool)

(declare-fun e!3851911 () Bool)

(assert (=> b!6341705 (= e!3851908 e!3851911)))

(declare-fun res!2609708 () Bool)

(assert (=> b!6341705 (=> (not res!2609708) (not e!3851911))))

(declare-fun lt!2362597 () Bool)

(assert (=> b!6341705 (= res!2609708 (not lt!2362597))))

(declare-fun b!6341706 () Bool)

(declare-fun e!3851909 () Bool)

(assert (=> b!6341706 (= e!3851909 (nullable!6238 (regOne!33002 r!7292)))))

(declare-fun b!6341707 () Bool)

(declare-fun res!2609709 () Bool)

(declare-fun e!3851907 () Bool)

(assert (=> b!6341707 (=> (not res!2609709) (not e!3851907))))

(assert (=> b!6341707 (= res!2609709 (isEmpty!36992 (tail!12067 (_1!36527 (get!22451 lt!2362511)))))))

(declare-fun d!1990242 () Bool)

(assert (=> d!1990242 e!3851912))

(declare-fun c!1153076 () Bool)

(assert (=> d!1990242 (= c!1153076 ((_ is EmptyExpr!16245) (regOne!33002 r!7292)))))

(assert (=> d!1990242 (= lt!2362597 e!3851909)))

(declare-fun c!1153078 () Bool)

(assert (=> d!1990242 (= c!1153078 (isEmpty!36992 (_1!36527 (get!22451 lt!2362511))))))

(assert (=> d!1990242 (validRegex!7981 (regOne!33002 r!7292))))

(assert (=> d!1990242 (= (matchR!8428 (regOne!33002 r!7292) (_1!36527 (get!22451 lt!2362511))) lt!2362597)))

(declare-fun b!6341708 () Bool)

(declare-fun call!540455 () Bool)

(assert (=> b!6341708 (= e!3851912 (= lt!2362597 call!540455))))

(declare-fun b!6341709 () Bool)

(declare-fun res!2609712 () Bool)

(assert (=> b!6341709 (=> (not res!2609712) (not e!3851907))))

(assert (=> b!6341709 (= res!2609712 (not call!540455))))

(declare-fun b!6341710 () Bool)

(declare-fun res!2609705 () Bool)

(assert (=> b!6341710 (=> res!2609705 e!3851908)))

(assert (=> b!6341710 (= res!2609705 (not ((_ is ElementMatch!16245) (regOne!33002 r!7292))))))

(assert (=> b!6341710 (= e!3851913 e!3851908)))

(declare-fun b!6341711 () Bool)

(declare-fun res!2609706 () Bool)

(assert (=> b!6341711 (=> res!2609706 e!3851910)))

(assert (=> b!6341711 (= res!2609706 (not (isEmpty!36992 (tail!12067 (_1!36527 (get!22451 lt!2362511))))))))

(declare-fun b!6341712 () Bool)

(assert (=> b!6341712 (= e!3851907 (= (head!12981 (_1!36527 (get!22451 lt!2362511))) (c!1152752 (regOne!33002 r!7292))))))

(declare-fun b!6341713 () Bool)

(assert (=> b!6341713 (= e!3851909 (matchR!8428 (derivativeStep!4950 (regOne!33002 r!7292) (head!12981 (_1!36527 (get!22451 lt!2362511)))) (tail!12067 (_1!36527 (get!22451 lt!2362511)))))))

(declare-fun b!6341714 () Bool)

(assert (=> b!6341714 (= e!3851911 e!3851910)))

(declare-fun res!2609707 () Bool)

(assert (=> b!6341714 (=> res!2609707 e!3851910)))

(assert (=> b!6341714 (= res!2609707 call!540455)))

(declare-fun bm!540450 () Bool)

(assert (=> bm!540450 (= call!540455 (isEmpty!36992 (_1!36527 (get!22451 lt!2362511))))))

(declare-fun b!6341715 () Bool)

(declare-fun res!2609711 () Bool)

(assert (=> b!6341715 (=> res!2609711 e!3851908)))

(assert (=> b!6341715 (= res!2609711 e!3851907)))

(declare-fun res!2609710 () Bool)

(assert (=> b!6341715 (=> (not res!2609710) (not e!3851907))))

(assert (=> b!6341715 (= res!2609710 lt!2362597)))

(declare-fun b!6341716 () Bool)

(assert (=> b!6341716 (= e!3851913 (not lt!2362597))))

(assert (= (and d!1990242 c!1153078) b!6341706))

(assert (= (and d!1990242 (not c!1153078)) b!6341713))

(assert (= (and d!1990242 c!1153076) b!6341708))

(assert (= (and d!1990242 (not c!1153076)) b!6341704))

(assert (= (and b!6341704 c!1153077) b!6341716))

(assert (= (and b!6341704 (not c!1153077)) b!6341710))

(assert (= (and b!6341710 (not res!2609705)) b!6341715))

(assert (= (and b!6341715 res!2609710) b!6341709))

(assert (= (and b!6341709 res!2609712) b!6341707))

(assert (= (and b!6341707 res!2609709) b!6341712))

(assert (= (and b!6341715 (not res!2609711)) b!6341705))

(assert (= (and b!6341705 res!2609708) b!6341714))

(assert (= (and b!6341714 (not res!2609707)) b!6341711))

(assert (= (and b!6341711 (not res!2609706)) b!6341703))

(assert (= (or b!6341708 b!6341709 b!6341714) bm!540450))

(declare-fun m!7150048 () Bool)

(assert (=> bm!540450 m!7150048))

(declare-fun m!7150050 () Bool)

(assert (=> b!6341707 m!7150050))

(assert (=> b!6341707 m!7150050))

(declare-fun m!7150052 () Bool)

(assert (=> b!6341707 m!7150052))

(assert (=> b!6341706 m!7150036))

(declare-fun m!7150054 () Bool)

(assert (=> b!6341712 m!7150054))

(assert (=> b!6341703 m!7150054))

(assert (=> b!6341711 m!7150050))

(assert (=> b!6341711 m!7150050))

(assert (=> b!6341711 m!7150052))

(assert (=> b!6341713 m!7150054))

(assert (=> b!6341713 m!7150054))

(declare-fun m!7150056 () Bool)

(assert (=> b!6341713 m!7150056))

(assert (=> b!6341713 m!7150050))

(assert (=> b!6341713 m!7150056))

(assert (=> b!6341713 m!7150050))

(declare-fun m!7150058 () Bool)

(assert (=> b!6341713 m!7150058))

(assert (=> d!1990242 m!7150048))

(assert (=> d!1990242 m!7149586))

(assert (=> b!6341035 d!1990242))

(assert (=> b!6341035 d!1990222))

(declare-fun d!1990244 () Bool)

(assert (=> d!1990244 (= (isEmpty!36993 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326)) (not ((_ is Some!16135) (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326))))))

(assert (=> d!1990092 d!1990244))

(declare-fun d!1990246 () Bool)

(declare-fun c!1153079 () Bool)

(assert (=> d!1990246 (= c!1153079 (isEmpty!36992 (tail!12067 (t!378620 s!2326))))))

(declare-fun e!3851914 () Bool)

(assert (=> d!1990246 (= (matchZipper!2257 (derivationStepZipper!2211 lt!2362434 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))) e!3851914)))

(declare-fun b!6341717 () Bool)

(assert (=> b!6341717 (= e!3851914 (nullableZipper!2011 (derivationStepZipper!2211 lt!2362434 (head!12981 (t!378620 s!2326)))))))

(declare-fun b!6341718 () Bool)

(assert (=> b!6341718 (= e!3851914 (matchZipper!2257 (derivationStepZipper!2211 (derivationStepZipper!2211 lt!2362434 (head!12981 (t!378620 s!2326))) (head!12981 (tail!12067 (t!378620 s!2326)))) (tail!12067 (tail!12067 (t!378620 s!2326)))))))

(assert (= (and d!1990246 c!1153079) b!6341717))

(assert (= (and d!1990246 (not c!1153079)) b!6341718))

(assert (=> d!1990246 m!7149338))

(declare-fun m!7150060 () Bool)

(assert (=> d!1990246 m!7150060))

(assert (=> b!6341717 m!7149778))

(declare-fun m!7150062 () Bool)

(assert (=> b!6341717 m!7150062))

(assert (=> b!6341718 m!7149338))

(declare-fun m!7150064 () Bool)

(assert (=> b!6341718 m!7150064))

(assert (=> b!6341718 m!7149778))

(assert (=> b!6341718 m!7150064))

(declare-fun m!7150066 () Bool)

(assert (=> b!6341718 m!7150066))

(assert (=> b!6341718 m!7149338))

(declare-fun m!7150068 () Bool)

(assert (=> b!6341718 m!7150068))

(assert (=> b!6341718 m!7150066))

(assert (=> b!6341718 m!7150068))

(declare-fun m!7150070 () Bool)

(assert (=> b!6341718 m!7150070))

(assert (=> b!6341344 d!1990246))

(declare-fun bs!1587696 () Bool)

(declare-fun d!1990248 () Bool)

(assert (= bs!1587696 (and d!1990248 b!6340632)))

(declare-fun lambda!348414 () Int)

(assert (=> bs!1587696 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348414 lambda!348315))))

(declare-fun bs!1587697 () Bool)

(assert (= bs!1587697 (and d!1990248 d!1990194)))

(assert (=> bs!1587697 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348414 lambda!348409))))

(assert (=> d!1990248 true))

(assert (=> d!1990248 (= (derivationStepZipper!2211 lt!2362434 (head!12981 (t!378620 s!2326))) (flatMap!1750 lt!2362434 lambda!348414))))

(declare-fun bs!1587698 () Bool)

(assert (= bs!1587698 d!1990248))

(declare-fun m!7150072 () Bool)

(assert (=> bs!1587698 m!7150072))

(assert (=> b!6341344 d!1990248))

(declare-fun d!1990250 () Bool)

(assert (=> d!1990250 (= (head!12981 (t!378620 s!2326)) (h!71358 (t!378620 s!2326)))))

(assert (=> b!6341344 d!1990250))

(declare-fun d!1990252 () Bool)

(assert (=> d!1990252 (= (tail!12067 (t!378620 s!2326)) (t!378620 (t!378620 s!2326)))))

(assert (=> b!6341344 d!1990252))

(declare-fun bs!1587699 () Bool)

(declare-fun d!1990254 () Bool)

(assert (= bs!1587699 (and d!1990254 b!6340742)))

(declare-fun lambda!348415 () Int)

(assert (=> bs!1587699 (not (= lambda!348415 lambda!348342))))

(declare-fun bs!1587700 () Bool)

(assert (= bs!1587700 (and d!1990254 b!6340744)))

(assert (=> bs!1587700 (not (= lambda!348415 lambda!348343))))

(declare-fun bs!1587701 () Bool)

(assert (= bs!1587701 (and d!1990254 b!6340737)))

(assert (=> bs!1587701 (not (= lambda!348415 lambda!348339))))

(declare-fun bs!1587702 () Bool)

(assert (= bs!1587702 (and d!1990254 d!1990210)))

(assert (=> bs!1587702 (= lambda!348415 lambda!348412)))

(declare-fun bs!1587703 () Bool)

(assert (= bs!1587703 (and d!1990254 b!6340739)))

(assert (=> bs!1587703 (not (= lambda!348415 lambda!348340))))

(assert (=> d!1990254 (= (nullableZipper!2011 lt!2362411) (exists!2566 lt!2362411 lambda!348415))))

(declare-fun bs!1587704 () Bool)

(assert (= bs!1587704 d!1990254))

(declare-fun m!7150074 () Bool)

(assert (=> bs!1587704 m!7150074))

(assert (=> b!6341417 d!1990254))

(declare-fun d!1990256 () Bool)

(assert (=> d!1990256 (= ($colon$colon!2105 (exprs!6129 lt!2362427) (ite (or c!1153017 c!1153016) (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (h!71359 (exprs!6129 (h!71360 zl!343))))) (Cons!64911 (ite (or c!1153017 c!1153016) (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (h!71359 (exprs!6129 (h!71360 zl!343)))) (exprs!6129 lt!2362427)))))

(assert (=> bm!540410 d!1990256))

(declare-fun b!6341719 () Bool)

(declare-fun e!3851918 () Bool)

(assert (=> b!6341719 (= e!3851918 (not (= (head!12981 (tail!12067 s!2326)) (c!1152752 (derivativeStep!4950 lt!2362424 (head!12981 s!2326))))))))

(declare-fun b!6341720 () Bool)

(declare-fun e!3851920 () Bool)

(declare-fun e!3851921 () Bool)

(assert (=> b!6341720 (= e!3851920 e!3851921)))

(declare-fun c!1153081 () Bool)

(assert (=> b!6341720 (= c!1153081 ((_ is EmptyLang!16245) (derivativeStep!4950 lt!2362424 (head!12981 s!2326))))))

(declare-fun b!6341721 () Bool)

(declare-fun e!3851916 () Bool)

(declare-fun e!3851919 () Bool)

(assert (=> b!6341721 (= e!3851916 e!3851919)))

(declare-fun res!2609716 () Bool)

(assert (=> b!6341721 (=> (not res!2609716) (not e!3851919))))

(declare-fun lt!2362598 () Bool)

(assert (=> b!6341721 (= res!2609716 (not lt!2362598))))

(declare-fun b!6341722 () Bool)

(declare-fun e!3851917 () Bool)

(assert (=> b!6341722 (= e!3851917 (nullable!6238 (derivativeStep!4950 lt!2362424 (head!12981 s!2326))))))

(declare-fun b!6341723 () Bool)

(declare-fun res!2609717 () Bool)

(declare-fun e!3851915 () Bool)

(assert (=> b!6341723 (=> (not res!2609717) (not e!3851915))))

(assert (=> b!6341723 (= res!2609717 (isEmpty!36992 (tail!12067 (tail!12067 s!2326))))))

(declare-fun d!1990258 () Bool)

(assert (=> d!1990258 e!3851920))

(declare-fun c!1153080 () Bool)

(assert (=> d!1990258 (= c!1153080 ((_ is EmptyExpr!16245) (derivativeStep!4950 lt!2362424 (head!12981 s!2326))))))

(assert (=> d!1990258 (= lt!2362598 e!3851917)))

(declare-fun c!1153082 () Bool)

(assert (=> d!1990258 (= c!1153082 (isEmpty!36992 (tail!12067 s!2326)))))

(assert (=> d!1990258 (validRegex!7981 (derivativeStep!4950 lt!2362424 (head!12981 s!2326)))))

(assert (=> d!1990258 (= (matchR!8428 (derivativeStep!4950 lt!2362424 (head!12981 s!2326)) (tail!12067 s!2326)) lt!2362598)))

(declare-fun b!6341724 () Bool)

(declare-fun call!540456 () Bool)

(assert (=> b!6341724 (= e!3851920 (= lt!2362598 call!540456))))

(declare-fun b!6341725 () Bool)

(declare-fun res!2609720 () Bool)

(assert (=> b!6341725 (=> (not res!2609720) (not e!3851915))))

(assert (=> b!6341725 (= res!2609720 (not call!540456))))

(declare-fun b!6341726 () Bool)

(declare-fun res!2609713 () Bool)

(assert (=> b!6341726 (=> res!2609713 e!3851916)))

(assert (=> b!6341726 (= res!2609713 (not ((_ is ElementMatch!16245) (derivativeStep!4950 lt!2362424 (head!12981 s!2326)))))))

(assert (=> b!6341726 (= e!3851921 e!3851916)))

(declare-fun b!6341727 () Bool)

(declare-fun res!2609714 () Bool)

(assert (=> b!6341727 (=> res!2609714 e!3851918)))

(assert (=> b!6341727 (= res!2609714 (not (isEmpty!36992 (tail!12067 (tail!12067 s!2326)))))))

(declare-fun b!6341728 () Bool)

(assert (=> b!6341728 (= e!3851915 (= (head!12981 (tail!12067 s!2326)) (c!1152752 (derivativeStep!4950 lt!2362424 (head!12981 s!2326)))))))

(declare-fun b!6341729 () Bool)

(assert (=> b!6341729 (= e!3851917 (matchR!8428 (derivativeStep!4950 (derivativeStep!4950 lt!2362424 (head!12981 s!2326)) (head!12981 (tail!12067 s!2326))) (tail!12067 (tail!12067 s!2326))))))

(declare-fun b!6341730 () Bool)

(assert (=> b!6341730 (= e!3851919 e!3851918)))

(declare-fun res!2609715 () Bool)

(assert (=> b!6341730 (=> res!2609715 e!3851918)))

(assert (=> b!6341730 (= res!2609715 call!540456)))

(declare-fun bm!540451 () Bool)

(assert (=> bm!540451 (= call!540456 (isEmpty!36992 (tail!12067 s!2326)))))

(declare-fun b!6341731 () Bool)

(declare-fun res!2609719 () Bool)

(assert (=> b!6341731 (=> res!2609719 e!3851916)))

(assert (=> b!6341731 (= res!2609719 e!3851915)))

(declare-fun res!2609718 () Bool)

(assert (=> b!6341731 (=> (not res!2609718) (not e!3851915))))

(assert (=> b!6341731 (= res!2609718 lt!2362598)))

(declare-fun b!6341732 () Bool)

(assert (=> b!6341732 (= e!3851921 (not lt!2362598))))

(assert (= (and d!1990258 c!1153082) b!6341722))

(assert (= (and d!1990258 (not c!1153082)) b!6341729))

(assert (= (and d!1990258 c!1153080) b!6341724))

(assert (= (and d!1990258 (not c!1153080)) b!6341720))

(assert (= (and b!6341720 c!1153081) b!6341732))

(assert (= (and b!6341720 (not c!1153081)) b!6341726))

(assert (= (and b!6341726 (not res!2609713)) b!6341731))

(assert (= (and b!6341731 res!2609718) b!6341725))

(assert (= (and b!6341725 res!2609720) b!6341723))

(assert (= (and b!6341723 res!2609717) b!6341728))

(assert (= (and b!6341731 (not res!2609719)) b!6341721))

(assert (= (and b!6341721 res!2609716) b!6341730))

(assert (= (and b!6341730 (not res!2609715)) b!6341727))

(assert (= (and b!6341727 (not res!2609714)) b!6341719))

(assert (= (or b!6341724 b!6341725 b!6341730) bm!540451))

(assert (=> bm!540451 m!7149736))

(assert (=> bm!540451 m!7149738))

(assert (=> b!6341723 m!7149736))

(assert (=> b!6341723 m!7150016))

(assert (=> b!6341723 m!7150016))

(assert (=> b!6341723 m!7150018))

(assert (=> b!6341722 m!7149860))

(declare-fun m!7150076 () Bool)

(assert (=> b!6341722 m!7150076))

(assert (=> b!6341728 m!7149736))

(assert (=> b!6341728 m!7150022))

(assert (=> b!6341719 m!7149736))

(assert (=> b!6341719 m!7150022))

(assert (=> b!6341727 m!7149736))

(assert (=> b!6341727 m!7150016))

(assert (=> b!6341727 m!7150016))

(assert (=> b!6341727 m!7150018))

(assert (=> b!6341729 m!7149736))

(assert (=> b!6341729 m!7150022))

(assert (=> b!6341729 m!7149860))

(assert (=> b!6341729 m!7150022))

(declare-fun m!7150078 () Bool)

(assert (=> b!6341729 m!7150078))

(assert (=> b!6341729 m!7149736))

(assert (=> b!6341729 m!7150016))

(assert (=> b!6341729 m!7150078))

(assert (=> b!6341729 m!7150016))

(declare-fun m!7150080 () Bool)

(assert (=> b!6341729 m!7150080))

(assert (=> d!1990258 m!7149736))

(assert (=> d!1990258 m!7149738))

(assert (=> d!1990258 m!7149860))

(declare-fun m!7150082 () Bool)

(assert (=> d!1990258 m!7150082))

(assert (=> b!6341439 d!1990258))

(declare-fun bm!540453 () Bool)

(declare-fun call!540460 () Regex!16245)

(declare-fun call!540457 () Regex!16245)

(assert (=> bm!540453 (= call!540460 call!540457)))

(declare-fun bm!540454 () Bool)

(declare-fun call!540459 () Regex!16245)

(assert (=> bm!540454 (= call!540457 call!540459)))

(declare-fun b!6341733 () Bool)

(declare-fun e!3851924 () Regex!16245)

(assert (=> b!6341733 (= e!3851924 (Union!16245 (Concat!25090 call!540460 (regTwo!33002 lt!2362424)) EmptyLang!16245))))

(declare-fun b!6341734 () Bool)

(declare-fun e!3851926 () Regex!16245)

(assert (=> b!6341734 (= e!3851926 EmptyLang!16245)))

(declare-fun b!6341735 () Bool)

(declare-fun e!3851925 () Regex!16245)

(assert (=> b!6341735 (= e!3851926 e!3851925)))

(declare-fun c!1153086 () Bool)

(assert (=> b!6341735 (= c!1153086 ((_ is ElementMatch!16245) lt!2362424))))

(declare-fun b!6341736 () Bool)

(declare-fun e!3851922 () Regex!16245)

(declare-fun e!3851923 () Regex!16245)

(assert (=> b!6341736 (= e!3851922 e!3851923)))

(declare-fun c!1153085 () Bool)

(assert (=> b!6341736 (= c!1153085 ((_ is Star!16245) lt!2362424))))

(declare-fun call!540458 () Regex!16245)

(declare-fun b!6341737 () Bool)

(assert (=> b!6341737 (= e!3851924 (Union!16245 (Concat!25090 call!540458 (regTwo!33002 lt!2362424)) call!540460))))

(declare-fun b!6341738 () Bool)

(declare-fun c!1153083 () Bool)

(assert (=> b!6341738 (= c!1153083 ((_ is Union!16245) lt!2362424))))

(assert (=> b!6341738 (= e!3851925 e!3851922)))

(declare-fun b!6341739 () Bool)

(assert (=> b!6341739 (= e!3851923 (Concat!25090 call!540457 lt!2362424))))

(declare-fun bm!540452 () Bool)

(assert (=> bm!540452 (= call!540458 (derivativeStep!4950 (ite c!1153083 (regOne!33003 lt!2362424) (regOne!33002 lt!2362424)) (head!12981 s!2326)))))

(declare-fun d!1990260 () Bool)

(declare-fun lt!2362599 () Regex!16245)

(assert (=> d!1990260 (validRegex!7981 lt!2362599)))

(assert (=> d!1990260 (= lt!2362599 e!3851926)))

(declare-fun c!1153084 () Bool)

(assert (=> d!1990260 (= c!1153084 (or ((_ is EmptyExpr!16245) lt!2362424) ((_ is EmptyLang!16245) lt!2362424)))))

(assert (=> d!1990260 (validRegex!7981 lt!2362424)))

(assert (=> d!1990260 (= (derivativeStep!4950 lt!2362424 (head!12981 s!2326)) lt!2362599)))

(declare-fun b!6341740 () Bool)

(assert (=> b!6341740 (= e!3851922 (Union!16245 call!540458 call!540459))))

(declare-fun bm!540455 () Bool)

(declare-fun c!1153087 () Bool)

(assert (=> bm!540455 (= call!540459 (derivativeStep!4950 (ite c!1153083 (regTwo!33003 lt!2362424) (ite c!1153085 (reg!16574 lt!2362424) (ite c!1153087 (regTwo!33002 lt!2362424) (regOne!33002 lt!2362424)))) (head!12981 s!2326)))))

(declare-fun b!6341741 () Bool)

(assert (=> b!6341741 (= c!1153087 (nullable!6238 (regOne!33002 lt!2362424)))))

(assert (=> b!6341741 (= e!3851923 e!3851924)))

(declare-fun b!6341742 () Bool)

(assert (=> b!6341742 (= e!3851925 (ite (= (head!12981 s!2326) (c!1152752 lt!2362424)) EmptyExpr!16245 EmptyLang!16245))))

(assert (= (and d!1990260 c!1153084) b!6341734))

(assert (= (and d!1990260 (not c!1153084)) b!6341735))

(assert (= (and b!6341735 c!1153086) b!6341742))

(assert (= (and b!6341735 (not c!1153086)) b!6341738))

(assert (= (and b!6341738 c!1153083) b!6341740))

(assert (= (and b!6341738 (not c!1153083)) b!6341736))

(assert (= (and b!6341736 c!1153085) b!6341739))

(assert (= (and b!6341736 (not c!1153085)) b!6341741))

(assert (= (and b!6341741 c!1153087) b!6341737))

(assert (= (and b!6341741 (not c!1153087)) b!6341733))

(assert (= (or b!6341737 b!6341733) bm!540453))

(assert (= (or b!6341739 bm!540453) bm!540454))

(assert (= (or b!6341740 bm!540454) bm!540455))

(assert (= (or b!6341740 b!6341737) bm!540452))

(assert (=> bm!540452 m!7149742))

(declare-fun m!7150084 () Bool)

(assert (=> bm!540452 m!7150084))

(declare-fun m!7150086 () Bool)

(assert (=> d!1990260 m!7150086))

(assert (=> d!1990260 m!7149796))

(assert (=> bm!540455 m!7149742))

(declare-fun m!7150088 () Bool)

(assert (=> bm!540455 m!7150088))

(declare-fun m!7150090 () Bool)

(assert (=> b!6341741 m!7150090))

(assert (=> b!6341439 d!1990260))

(assert (=> b!6341439 d!1990228))

(assert (=> b!6341439 d!1990230))

(declare-fun d!1990262 () Bool)

(declare-fun res!2609725 () Bool)

(declare-fun e!3851931 () Bool)

(assert (=> d!1990262 (=> res!2609725 e!3851931)))

(assert (=> d!1990262 (= res!2609725 ((_ is Nil!64912) zl!343))))

(assert (=> d!1990262 (= (forall!15403 zl!343 lambda!348343) e!3851931)))

(declare-fun b!6341747 () Bool)

(declare-fun e!3851932 () Bool)

(assert (=> b!6341747 (= e!3851931 e!3851932)))

(declare-fun res!2609726 () Bool)

(assert (=> b!6341747 (=> (not res!2609726) (not e!3851932))))

(declare-fun dynLambda!25728 (Int Context!11258) Bool)

(assert (=> b!6341747 (= res!2609726 (dynLambda!25728 lambda!348343 (h!71360 zl!343)))))

(declare-fun b!6341748 () Bool)

(assert (=> b!6341748 (= e!3851932 (forall!15403 (t!378622 zl!343) lambda!348343))))

(assert (= (and d!1990262 (not res!2609725)) b!6341747))

(assert (= (and b!6341747 res!2609726) b!6341748))

(declare-fun b_lambda!241311 () Bool)

(assert (=> (not b_lambda!241311) (not b!6341747)))

(declare-fun m!7150092 () Bool)

(assert (=> b!6341747 m!7150092))

(declare-fun m!7150094 () Bool)

(assert (=> b!6341748 m!7150094))

(assert (=> b!6340744 d!1990262))

(declare-fun bs!1587705 () Bool)

(declare-fun d!1990264 () Bool)

(assert (= bs!1587705 (and d!1990264 d!1990162)))

(declare-fun lambda!348416 () Int)

(assert (=> bs!1587705 (= lambda!348416 lambda!348406)))

(declare-fun bs!1587706 () Bool)

(assert (= bs!1587706 (and d!1990264 d!1989984)))

(assert (=> bs!1587706 (= lambda!348416 lambda!348318)))

(declare-fun bs!1587707 () Bool)

(assert (= bs!1587707 (and d!1990264 d!1990132)))

(assert (=> bs!1587707 (= lambda!348416 lambda!348396)))

(declare-fun bs!1587708 () Bool)

(assert (= bs!1587708 (and d!1990264 d!1990148)))

(assert (=> bs!1587708 (= lambda!348416 lambda!348404)))

(declare-fun bs!1587709 () Bool)

(assert (= bs!1587709 (and d!1990264 d!1990134)))

(assert (=> bs!1587709 (= lambda!348416 lambda!348399)))

(declare-fun bs!1587710 () Bool)

(assert (= bs!1587710 (and d!1990264 d!1990216)))

(assert (=> bs!1587710 (= lambda!348416 lambda!348413)))

(declare-fun bs!1587711 () Bool)

(assert (= bs!1587711 (and d!1990264 d!1990154)))

(assert (=> bs!1587711 (= lambda!348416 lambda!348405)))

(declare-fun bs!1587712 () Bool)

(assert (= bs!1587712 (and d!1990264 d!1989990)))

(assert (=> bs!1587712 (= lambda!348416 lambda!348319)))

(declare-fun b!6341749 () Bool)

(declare-fun e!3851935 () Bool)

(declare-fun lt!2362600 () Regex!16245)

(assert (=> b!6341749 (= e!3851935 (= lt!2362600 (head!12983 (t!378621 lt!2362431))))))

(declare-fun b!6341750 () Bool)

(assert (=> b!6341750 (= e!3851935 (isConcat!1170 lt!2362600))))

(declare-fun b!6341751 () Bool)

(declare-fun e!3851934 () Regex!16245)

(assert (=> b!6341751 (= e!3851934 EmptyExpr!16245)))

(declare-fun b!6341752 () Bool)

(declare-fun e!3851937 () Regex!16245)

(assert (=> b!6341752 (= e!3851937 e!3851934)))

(declare-fun c!1153089 () Bool)

(assert (=> b!6341752 (= c!1153089 ((_ is Cons!64911) (t!378621 lt!2362431)))))

(declare-fun b!6341753 () Bool)

(declare-fun e!3851936 () Bool)

(assert (=> b!6341753 (= e!3851936 (isEmpty!36989 (t!378621 (t!378621 lt!2362431))))))

(declare-fun b!6341755 () Bool)

(declare-fun e!3851933 () Bool)

(declare-fun e!3851938 () Bool)

(assert (=> b!6341755 (= e!3851933 e!3851938)))

(declare-fun c!1153090 () Bool)

(assert (=> b!6341755 (= c!1153090 (isEmpty!36989 (t!378621 lt!2362431)))))

(declare-fun b!6341756 () Bool)

(assert (=> b!6341756 (= e!3851938 (isEmptyExpr!1647 lt!2362600))))

(declare-fun b!6341757 () Bool)

(assert (=> b!6341757 (= e!3851934 (Concat!25090 (h!71359 (t!378621 lt!2362431)) (generalisedConcat!1842 (t!378621 (t!378621 lt!2362431)))))))

(declare-fun b!6341758 () Bool)

(assert (=> b!6341758 (= e!3851938 e!3851935)))

(declare-fun c!1153091 () Bool)

(assert (=> b!6341758 (= c!1153091 (isEmpty!36989 (tail!12068 (t!378621 lt!2362431))))))

(declare-fun b!6341754 () Bool)

(assert (=> b!6341754 (= e!3851937 (h!71359 (t!378621 lt!2362431)))))

(assert (=> d!1990264 e!3851933))

(declare-fun res!2609727 () Bool)

(assert (=> d!1990264 (=> (not res!2609727) (not e!3851933))))

(assert (=> d!1990264 (= res!2609727 (validRegex!7981 lt!2362600))))

(assert (=> d!1990264 (= lt!2362600 e!3851937)))

(declare-fun c!1153088 () Bool)

(assert (=> d!1990264 (= c!1153088 e!3851936)))

(declare-fun res!2609728 () Bool)

(assert (=> d!1990264 (=> (not res!2609728) (not e!3851936))))

(assert (=> d!1990264 (= res!2609728 ((_ is Cons!64911) (t!378621 lt!2362431)))))

(assert (=> d!1990264 (forall!15401 (t!378621 lt!2362431) lambda!348416)))

(assert (=> d!1990264 (= (generalisedConcat!1842 (t!378621 lt!2362431)) lt!2362600)))

(assert (= (and d!1990264 res!2609728) b!6341753))

(assert (= (and d!1990264 c!1153088) b!6341754))

(assert (= (and d!1990264 (not c!1153088)) b!6341752))

(assert (= (and b!6341752 c!1153089) b!6341757))

(assert (= (and b!6341752 (not c!1153089)) b!6341751))

(assert (= (and d!1990264 res!2609727) b!6341755))

(assert (= (and b!6341755 c!1153090) b!6341756))

(assert (= (and b!6341755 (not c!1153090)) b!6341758))

(assert (= (and b!6341758 c!1153091) b!6341749))

(assert (= (and b!6341758 (not c!1153091)) b!6341750))

(declare-fun m!7150096 () Bool)

(assert (=> b!6341753 m!7150096))

(declare-fun m!7150098 () Bool)

(assert (=> b!6341758 m!7150098))

(assert (=> b!6341758 m!7150098))

(declare-fun m!7150100 () Bool)

(assert (=> b!6341758 m!7150100))

(declare-fun m!7150102 () Bool)

(assert (=> d!1990264 m!7150102))

(declare-fun m!7150104 () Bool)

(assert (=> d!1990264 m!7150104))

(assert (=> b!6341755 m!7149804))

(declare-fun m!7150106 () Bool)

(assert (=> b!6341749 m!7150106))

(declare-fun m!7150108 () Bool)

(assert (=> b!6341756 m!7150108))

(declare-fun m!7150110 () Bool)

(assert (=> b!6341750 m!7150110))

(declare-fun m!7150112 () Bool)

(assert (=> b!6341757 m!7150112))

(assert (=> b!6341388 d!1990264))

(declare-fun d!1990266 () Bool)

(assert (=> d!1990266 (= (isEmpty!36989 (unfocusZipperList!1666 zl!343)) ((_ is Nil!64911) (unfocusZipperList!1666 zl!343)))))

(assert (=> b!6341328 d!1990266))

(assert (=> d!1990136 d!1990140))

(assert (=> d!1990136 d!1990138))

(declare-fun d!1990268 () Bool)

(declare-fun e!3851941 () Bool)

(assert (=> d!1990268 (= (matchZipper!2257 ((_ map or) lt!2362434 lt!2362436) (t!378620 s!2326)) e!3851941)))

(declare-fun res!2609731 () Bool)

(assert (=> d!1990268 (=> res!2609731 e!3851941)))

(assert (=> d!1990268 (= res!2609731 (matchZipper!2257 lt!2362434 (t!378620 s!2326)))))

(assert (=> d!1990268 true))

(declare-fun _$48!2123 () Unit!158311)

(assert (=> d!1990268 (= (choose!47015 lt!2362434 lt!2362436 (t!378620 s!2326)) _$48!2123)))

(declare-fun b!6341761 () Bool)

(assert (=> b!6341761 (= e!3851941 (matchZipper!2257 lt!2362436 (t!378620 s!2326)))))

(assert (= (and d!1990268 (not res!2609731)) b!6341761))

(assert (=> d!1990268 m!7149220))

(assert (=> d!1990268 m!7149218))

(assert (=> b!6341761 m!7149264))

(assert (=> d!1990136 d!1990268))

(declare-fun d!1990270 () Bool)

(assert (=> d!1990270 (= (head!12983 (exprs!6129 (h!71360 zl!343))) (h!71359 (exprs!6129 (h!71360 zl!343))))))

(assert (=> b!6341452 d!1990270))

(declare-fun d!1990272 () Bool)

(declare-fun c!1153092 () Bool)

(assert (=> d!1990272 (= c!1153092 (isEmpty!36992 (tail!12067 (t!378620 s!2326))))))

(declare-fun e!3851942 () Bool)

(assert (=> d!1990272 (= (matchZipper!2257 (derivationStepZipper!2211 lt!2362430 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))) e!3851942)))

(declare-fun b!6341762 () Bool)

(assert (=> b!6341762 (= e!3851942 (nullableZipper!2011 (derivationStepZipper!2211 lt!2362430 (head!12981 (t!378620 s!2326)))))))

(declare-fun b!6341763 () Bool)

(assert (=> b!6341763 (= e!3851942 (matchZipper!2257 (derivationStepZipper!2211 (derivationStepZipper!2211 lt!2362430 (head!12981 (t!378620 s!2326))) (head!12981 (tail!12067 (t!378620 s!2326)))) (tail!12067 (tail!12067 (t!378620 s!2326)))))))

(assert (= (and d!1990272 c!1153092) b!6341762))

(assert (= (and d!1990272 (not c!1153092)) b!6341763))

(assert (=> d!1990272 m!7149338))

(assert (=> d!1990272 m!7150060))

(assert (=> b!6341762 m!7149896))

(declare-fun m!7150114 () Bool)

(assert (=> b!6341762 m!7150114))

(assert (=> b!6341763 m!7149338))

(assert (=> b!6341763 m!7150064))

(assert (=> b!6341763 m!7149896))

(assert (=> b!6341763 m!7150064))

(declare-fun m!7150116 () Bool)

(assert (=> b!6341763 m!7150116))

(assert (=> b!6341763 m!7149338))

(assert (=> b!6341763 m!7150068))

(assert (=> b!6341763 m!7150116))

(assert (=> b!6341763 m!7150068))

(declare-fun m!7150118 () Bool)

(assert (=> b!6341763 m!7150118))

(assert (=> b!6341466 d!1990272))

(declare-fun bs!1587713 () Bool)

(declare-fun d!1990274 () Bool)

(assert (= bs!1587713 (and d!1990274 b!6340632)))

(declare-fun lambda!348417 () Int)

(assert (=> bs!1587713 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348417 lambda!348315))))

(declare-fun bs!1587714 () Bool)

(assert (= bs!1587714 (and d!1990274 d!1990194)))

(assert (=> bs!1587714 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348417 lambda!348409))))

(declare-fun bs!1587715 () Bool)

(assert (= bs!1587715 (and d!1990274 d!1990248)))

(assert (=> bs!1587715 (= lambda!348417 lambda!348414)))

(assert (=> d!1990274 true))

(assert (=> d!1990274 (= (derivationStepZipper!2211 lt!2362430 (head!12981 (t!378620 s!2326))) (flatMap!1750 lt!2362430 lambda!348417))))

(declare-fun bs!1587716 () Bool)

(assert (= bs!1587716 d!1990274))

(declare-fun m!7150120 () Bool)

(assert (=> bs!1587716 m!7150120))

(assert (=> b!6341466 d!1990274))

(assert (=> b!6341466 d!1990250))

(assert (=> b!6341466 d!1990252))

(declare-fun b!6341773 () Bool)

(declare-fun e!3851948 () List!65034)

(assert (=> b!6341773 (= e!3851948 (Cons!64910 (h!71358 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910))) (++!14313 (t!378620 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910))) (t!378620 s!2326))))))

(declare-fun b!6341774 () Bool)

(declare-fun res!2609736 () Bool)

(declare-fun e!3851947 () Bool)

(assert (=> b!6341774 (=> (not res!2609736) (not e!3851947))))

(declare-fun lt!2362603 () List!65034)

(declare-fun size!40341 (List!65034) Int)

(assert (=> b!6341774 (= res!2609736 (= (size!40341 lt!2362603) (+ (size!40341 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910))) (size!40341 (t!378620 s!2326)))))))

(declare-fun b!6341775 () Bool)

(assert (=> b!6341775 (= e!3851947 (or (not (= (t!378620 s!2326) Nil!64910)) (= lt!2362603 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)))))))

(declare-fun d!1990276 () Bool)

(assert (=> d!1990276 e!3851947))

(declare-fun res!2609737 () Bool)

(assert (=> d!1990276 (=> (not res!2609737) (not e!3851947))))

(declare-fun content!12243 (List!65034) (InoxSet C!32760))

(assert (=> d!1990276 (= res!2609737 (= (content!12243 lt!2362603) ((_ map or) (content!12243 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910))) (content!12243 (t!378620 s!2326)))))))

(assert (=> d!1990276 (= lt!2362603 e!3851948)))

(declare-fun c!1153095 () Bool)

(assert (=> d!1990276 (= c!1153095 ((_ is Nil!64910) (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910))))))

(assert (=> d!1990276 (= (++!14313 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (t!378620 s!2326)) lt!2362603)))

(declare-fun b!6341772 () Bool)

(assert (=> b!6341772 (= e!3851948 (t!378620 s!2326))))

(assert (= (and d!1990276 c!1153095) b!6341772))

(assert (= (and d!1990276 (not c!1153095)) b!6341773))

(assert (= (and d!1990276 res!2609737) b!6341774))

(assert (= (and b!6341774 res!2609736) b!6341775))

(declare-fun m!7150122 () Bool)

(assert (=> b!6341773 m!7150122))

(declare-fun m!7150124 () Bool)

(assert (=> b!6341774 m!7150124))

(assert (=> b!6341774 m!7149568))

(declare-fun m!7150126 () Bool)

(assert (=> b!6341774 m!7150126))

(declare-fun m!7150128 () Bool)

(assert (=> b!6341774 m!7150128))

(declare-fun m!7150130 () Bool)

(assert (=> d!1990276 m!7150130))

(assert (=> d!1990276 m!7149568))

(declare-fun m!7150132 () Bool)

(assert (=> d!1990276 m!7150132))

(declare-fun m!7150134 () Bool)

(assert (=> d!1990276 m!7150134))

(assert (=> b!6341039 d!1990276))

(declare-fun b!6341777 () Bool)

(declare-fun e!3851950 () List!65034)

(assert (=> b!6341777 (= e!3851950 (Cons!64910 (h!71358 Nil!64910) (++!14313 (t!378620 Nil!64910) (Cons!64910 (h!71358 s!2326) Nil!64910))))))

(declare-fun b!6341778 () Bool)

(declare-fun res!2609738 () Bool)

(declare-fun e!3851949 () Bool)

(assert (=> b!6341778 (=> (not res!2609738) (not e!3851949))))

(declare-fun lt!2362604 () List!65034)

(assert (=> b!6341778 (= res!2609738 (= (size!40341 lt!2362604) (+ (size!40341 Nil!64910) (size!40341 (Cons!64910 (h!71358 s!2326) Nil!64910)))))))

(declare-fun b!6341779 () Bool)

(assert (=> b!6341779 (= e!3851949 (or (not (= (Cons!64910 (h!71358 s!2326) Nil!64910) Nil!64910)) (= lt!2362604 Nil!64910)))))

(declare-fun d!1990278 () Bool)

(assert (=> d!1990278 e!3851949))

(declare-fun res!2609739 () Bool)

(assert (=> d!1990278 (=> (not res!2609739) (not e!3851949))))

(assert (=> d!1990278 (= res!2609739 (= (content!12243 lt!2362604) ((_ map or) (content!12243 Nil!64910) (content!12243 (Cons!64910 (h!71358 s!2326) Nil!64910)))))))

(assert (=> d!1990278 (= lt!2362604 e!3851950)))

(declare-fun c!1153096 () Bool)

(assert (=> d!1990278 (= c!1153096 ((_ is Nil!64910) Nil!64910))))

(assert (=> d!1990278 (= (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) lt!2362604)))

(declare-fun b!6341776 () Bool)

(assert (=> b!6341776 (= e!3851950 (Cons!64910 (h!71358 s!2326) Nil!64910))))

(assert (= (and d!1990278 c!1153096) b!6341776))

(assert (= (and d!1990278 (not c!1153096)) b!6341777))

(assert (= (and d!1990278 res!2609739) b!6341778))

(assert (= (and b!6341778 res!2609738) b!6341779))

(declare-fun m!7150136 () Bool)

(assert (=> b!6341777 m!7150136))

(declare-fun m!7150138 () Bool)

(assert (=> b!6341778 m!7150138))

(declare-fun m!7150140 () Bool)

(assert (=> b!6341778 m!7150140))

(declare-fun m!7150142 () Bool)

(assert (=> b!6341778 m!7150142))

(declare-fun m!7150144 () Bool)

(assert (=> d!1990278 m!7150144))

(declare-fun m!7150146 () Bool)

(assert (=> d!1990278 m!7150146))

(declare-fun m!7150148 () Bool)

(assert (=> d!1990278 m!7150148))

(assert (=> b!6341039 d!1990278))

(declare-fun d!1990280 () Bool)

(assert (=> d!1990280 (= (++!14313 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (t!378620 s!2326)) s!2326)))

(declare-fun lt!2362607 () Unit!158311)

(declare-fun choose!47026 (List!65034 C!32760 List!65034 List!65034) Unit!158311)

(assert (=> d!1990280 (= lt!2362607 (choose!47026 Nil!64910 (h!71358 s!2326) (t!378620 s!2326) s!2326))))

(assert (=> d!1990280 (= (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) (t!378620 s!2326))) s!2326)))

(assert (=> d!1990280 (= (lemmaMoveElementToOtherListKeepsConcatEq!2408 Nil!64910 (h!71358 s!2326) (t!378620 s!2326) s!2326) lt!2362607)))

(declare-fun bs!1587717 () Bool)

(assert (= bs!1587717 d!1990280))

(assert (=> bs!1587717 m!7149568))

(assert (=> bs!1587717 m!7149568))

(assert (=> bs!1587717 m!7149570))

(declare-fun m!7150150 () Bool)

(assert (=> bs!1587717 m!7150150))

(declare-fun m!7150152 () Bool)

(assert (=> bs!1587717 m!7150152))

(assert (=> b!6341039 d!1990280))

(declare-fun b!6341780 () Bool)

(declare-fun res!2609742 () Bool)

(declare-fun e!3851951 () Bool)

(assert (=> b!6341780 (=> (not res!2609742) (not e!3851951))))

(declare-fun lt!2362610 () Option!16136)

(assert (=> b!6341780 (= res!2609742 (matchR!8428 (regTwo!33002 r!7292) (_2!36527 (get!22451 lt!2362610))))))

(declare-fun b!6341781 () Bool)

(declare-fun e!3851952 () Bool)

(assert (=> b!6341781 (= e!3851952 (matchR!8428 (regTwo!33002 r!7292) (t!378620 s!2326)))))

(declare-fun d!1990282 () Bool)

(declare-fun e!3851953 () Bool)

(assert (=> d!1990282 e!3851953))

(declare-fun res!2609743 () Bool)

(assert (=> d!1990282 (=> res!2609743 e!3851953)))

(assert (=> d!1990282 (= res!2609743 e!3851951)))

(declare-fun res!2609744 () Bool)

(assert (=> d!1990282 (=> (not res!2609744) (not e!3851951))))

(assert (=> d!1990282 (= res!2609744 (isDefined!12839 lt!2362610))))

(declare-fun e!3851955 () Option!16136)

(assert (=> d!1990282 (= lt!2362610 e!3851955)))

(declare-fun c!1153097 () Bool)

(assert (=> d!1990282 (= c!1153097 e!3851952)))

(declare-fun res!2609741 () Bool)

(assert (=> d!1990282 (=> (not res!2609741) (not e!3851952))))

(assert (=> d!1990282 (= res!2609741 (matchR!8428 (regOne!33002 r!7292) (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910))))))

(assert (=> d!1990282 (validRegex!7981 (regOne!33002 r!7292))))

(assert (=> d!1990282 (= (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (t!378620 s!2326) s!2326) lt!2362610)))

(declare-fun b!6341782 () Bool)

(assert (=> b!6341782 (= e!3851951 (= (++!14313 (_1!36527 (get!22451 lt!2362610)) (_2!36527 (get!22451 lt!2362610))) s!2326))))

(declare-fun b!6341783 () Bool)

(assert (=> b!6341783 (= e!3851955 (Some!16135 (tuple2!66449 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (t!378620 s!2326))))))

(declare-fun b!6341784 () Bool)

(declare-fun res!2609740 () Bool)

(assert (=> b!6341784 (=> (not res!2609740) (not e!3851951))))

(assert (=> b!6341784 (= res!2609740 (matchR!8428 (regOne!33002 r!7292) (_1!36527 (get!22451 lt!2362610))))))

(declare-fun b!6341785 () Bool)

(declare-fun e!3851954 () Option!16136)

(assert (=> b!6341785 (= e!3851954 None!16135)))

(declare-fun b!6341786 () Bool)

(assert (=> b!6341786 (= e!3851955 e!3851954)))

(declare-fun c!1153098 () Bool)

(assert (=> b!6341786 (= c!1153098 ((_ is Nil!64910) (t!378620 s!2326)))))

(declare-fun b!6341787 () Bool)

(assert (=> b!6341787 (= e!3851953 (not (isDefined!12839 lt!2362610)))))

(declare-fun b!6341788 () Bool)

(declare-fun lt!2362608 () Unit!158311)

(declare-fun lt!2362609 () Unit!158311)

(assert (=> b!6341788 (= lt!2362608 lt!2362609)))

(assert (=> b!6341788 (= (++!14313 (++!14313 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (Cons!64910 (h!71358 (t!378620 s!2326)) Nil!64910)) (t!378620 (t!378620 s!2326))) s!2326)))

(assert (=> b!6341788 (= lt!2362609 (lemmaMoveElementToOtherListKeepsConcatEq!2408 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (h!71358 (t!378620 s!2326)) (t!378620 (t!378620 s!2326)) s!2326))))

(assert (=> b!6341788 (= e!3851954 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) (++!14313 (++!14313 Nil!64910 (Cons!64910 (h!71358 s!2326) Nil!64910)) (Cons!64910 (h!71358 (t!378620 s!2326)) Nil!64910)) (t!378620 (t!378620 s!2326)) s!2326))))

(assert (= (and d!1990282 res!2609741) b!6341781))

(assert (= (and d!1990282 c!1153097) b!6341783))

(assert (= (and d!1990282 (not c!1153097)) b!6341786))

(assert (= (and b!6341786 c!1153098) b!6341785))

(assert (= (and b!6341786 (not c!1153098)) b!6341788))

(assert (= (and d!1990282 res!2609744) b!6341784))

(assert (= (and b!6341784 res!2609740) b!6341780))

(assert (= (and b!6341780 res!2609742) b!6341782))

(assert (= (and d!1990282 (not res!2609743)) b!6341787))

(declare-fun m!7150154 () Bool)

(assert (=> b!6341781 m!7150154))

(declare-fun m!7150156 () Bool)

(assert (=> b!6341782 m!7150156))

(declare-fun m!7150158 () Bool)

(assert (=> b!6341782 m!7150158))

(assert (=> b!6341780 m!7150156))

(declare-fun m!7150160 () Bool)

(assert (=> b!6341780 m!7150160))

(assert (=> b!6341788 m!7149568))

(declare-fun m!7150162 () Bool)

(assert (=> b!6341788 m!7150162))

(assert (=> b!6341788 m!7150162))

(declare-fun m!7150164 () Bool)

(assert (=> b!6341788 m!7150164))

(assert (=> b!6341788 m!7149568))

(declare-fun m!7150166 () Bool)

(assert (=> b!6341788 m!7150166))

(assert (=> b!6341788 m!7150162))

(declare-fun m!7150168 () Bool)

(assert (=> b!6341788 m!7150168))

(declare-fun m!7150170 () Bool)

(assert (=> d!1990282 m!7150170))

(assert (=> d!1990282 m!7149568))

(declare-fun m!7150172 () Bool)

(assert (=> d!1990282 m!7150172))

(assert (=> d!1990282 m!7149586))

(assert (=> b!6341784 m!7150156))

(declare-fun m!7150174 () Bool)

(assert (=> b!6341784 m!7150174))

(assert (=> b!6341787 m!7150170))

(assert (=> b!6341039 d!1990282))

(assert (=> d!1990138 d!1990204))

(declare-fun b!6341789 () Bool)

(declare-fun e!3851956 () (InoxSet Context!11258))

(declare-fun call!540461 () (InoxSet Context!11258))

(assert (=> b!6341789 (= e!3851956 call!540461)))

(declare-fun b!6341790 () Bool)

(assert (=> b!6341790 (= e!3851956 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540456 () Bool)

(assert (=> bm!540456 (= call!540461 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418))))) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418)))))) (h!71358 s!2326)))))

(declare-fun b!6341791 () Bool)

(declare-fun e!3851957 () Bool)

(assert (=> b!6341791 (= e!3851957 (nullable!6238 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418)))))))))

(declare-fun d!1990284 () Bool)

(declare-fun c!1153099 () Bool)

(assert (=> d!1990284 (= c!1153099 e!3851957)))

(declare-fun res!2609745 () Bool)

(assert (=> d!1990284 (=> (not res!2609745) (not e!3851957))))

(assert (=> d!1990284 (= res!2609745 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418))))))))

(declare-fun e!3851958 () (InoxSet Context!11258))

(assert (=> d!1990284 (= (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 lt!2362418))) (h!71358 s!2326)) e!3851958)))

(declare-fun b!6341792 () Bool)

(assert (=> b!6341792 (= e!3851958 ((_ map or) call!540461 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418)))))) (h!71358 s!2326))))))

(declare-fun b!6341793 () Bool)

(assert (=> b!6341793 (= e!3851958 e!3851956)))

(declare-fun c!1153100 () Bool)

(assert (=> b!6341793 (= c!1153100 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418))))))))

(assert (= (and d!1990284 res!2609745) b!6341791))

(assert (= (and d!1990284 c!1153099) b!6341792))

(assert (= (and d!1990284 (not c!1153099)) b!6341793))

(assert (= (and b!6341793 c!1153100) b!6341789))

(assert (= (and b!6341793 (not c!1153100)) b!6341790))

(assert (= (or b!6341792 b!6341789) bm!540456))

(declare-fun m!7150176 () Bool)

(assert (=> bm!540456 m!7150176))

(declare-fun m!7150178 () Bool)

(assert (=> b!6341791 m!7150178))

(declare-fun m!7150180 () Bool)

(assert (=> b!6341792 m!7150180))

(assert (=> b!6341514 d!1990284))

(assert (=> b!6341484 d!1990168))

(assert (=> bm!540387 d!1990234))

(declare-fun call!540463 () List!65035)

(declare-fun c!1153104 () Bool)

(declare-fun c!1153103 () Bool)

(declare-fun bm!540457 () Bool)

(assert (=> bm!540457 (= call!540463 ($colon$colon!2105 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362427)))) (ite (or c!1153104 c!1153103) (regTwo!33002 (h!71359 (exprs!6129 lt!2362427))) (h!71359 (exprs!6129 lt!2362427)))))))

(declare-fun b!6341794 () Bool)

(declare-fun e!3851964 () (InoxSet Context!11258))

(declare-fun call!540465 () (InoxSet Context!11258))

(declare-fun call!540467 () (InoxSet Context!11258))

(assert (=> b!6341794 (= e!3851964 ((_ map or) call!540465 call!540467))))

(declare-fun b!6341795 () Bool)

(declare-fun e!3851960 () (InoxSet Context!11258))

(assert (=> b!6341795 (= e!3851964 e!3851960)))

(assert (=> b!6341795 (= c!1153103 ((_ is Concat!25090) (h!71359 (exprs!6129 lt!2362427))))))

(declare-fun c!1153105 () Bool)

(declare-fun call!540466 () List!65035)

(declare-fun call!540462 () (InoxSet Context!11258))

(declare-fun bm!540458 () Bool)

(assert (=> bm!540458 (= call!540462 (derivationStepZipperDown!1493 (ite c!1153105 (regTwo!33003 (h!71359 (exprs!6129 lt!2362427))) (ite c!1153104 (regTwo!33002 (h!71359 (exprs!6129 lt!2362427))) (ite c!1153103 (regOne!33002 (h!71359 (exprs!6129 lt!2362427))) (reg!16574 (h!71359 (exprs!6129 lt!2362427)))))) (ite (or c!1153105 c!1153104) (Context!11259 (t!378621 (exprs!6129 lt!2362427))) (Context!11259 call!540466)) (h!71358 s!2326)))))

(declare-fun bm!540459 () Bool)

(assert (=> bm!540459 (= call!540467 call!540462)))

(declare-fun bm!540460 () Bool)

(assert (=> bm!540460 (= call!540465 (derivationStepZipperDown!1493 (ite c!1153105 (regOne!33003 (h!71359 (exprs!6129 lt!2362427))) (regOne!33002 (h!71359 (exprs!6129 lt!2362427)))) (ite c!1153105 (Context!11259 (t!378621 (exprs!6129 lt!2362427))) (Context!11259 call!540463)) (h!71358 s!2326)))))

(declare-fun bm!540461 () Bool)

(assert (=> bm!540461 (= call!540466 call!540463)))

(declare-fun b!6341797 () Bool)

(declare-fun call!540464 () (InoxSet Context!11258))

(assert (=> b!6341797 (= e!3851960 call!540464)))

(declare-fun b!6341798 () Bool)

(declare-fun e!3851959 () (InoxSet Context!11258))

(assert (=> b!6341798 (= e!3851959 (store ((as const (Array Context!11258 Bool)) false) (Context!11259 (t!378621 (exprs!6129 lt!2362427))) true))))

(declare-fun b!6341799 () Bool)

(declare-fun e!3851961 () (InoxSet Context!11258))

(assert (=> b!6341799 (= e!3851961 call!540464)))

(declare-fun b!6341800 () Bool)

(declare-fun c!1153102 () Bool)

(assert (=> b!6341800 (= c!1153102 ((_ is Star!16245) (h!71359 (exprs!6129 lt!2362427))))))

(assert (=> b!6341800 (= e!3851960 e!3851961)))

(declare-fun b!6341801 () Bool)

(declare-fun e!3851963 () Bool)

(assert (=> b!6341801 (= e!3851963 (nullable!6238 (regOne!33002 (h!71359 (exprs!6129 lt!2362427)))))))

(declare-fun b!6341796 () Bool)

(declare-fun e!3851962 () (InoxSet Context!11258))

(assert (=> b!6341796 (= e!3851959 e!3851962)))

(assert (=> b!6341796 (= c!1153105 ((_ is Union!16245) (h!71359 (exprs!6129 lt!2362427))))))

(declare-fun d!1990286 () Bool)

(declare-fun c!1153101 () Bool)

(assert (=> d!1990286 (= c!1153101 (and ((_ is ElementMatch!16245) (h!71359 (exprs!6129 lt!2362427))) (= (c!1152752 (h!71359 (exprs!6129 lt!2362427))) (h!71358 s!2326))))))

(assert (=> d!1990286 (= (derivationStepZipperDown!1493 (h!71359 (exprs!6129 lt!2362427)) (Context!11259 (t!378621 (exprs!6129 lt!2362427))) (h!71358 s!2326)) e!3851959)))

(declare-fun b!6341802 () Bool)

(assert (=> b!6341802 (= e!3851961 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6341803 () Bool)

(assert (=> b!6341803 (= e!3851962 ((_ map or) call!540465 call!540462))))

(declare-fun bm!540462 () Bool)

(assert (=> bm!540462 (= call!540464 call!540467)))

(declare-fun b!6341804 () Bool)

(assert (=> b!6341804 (= c!1153104 e!3851963)))

(declare-fun res!2609746 () Bool)

(assert (=> b!6341804 (=> (not res!2609746) (not e!3851963))))

(assert (=> b!6341804 (= res!2609746 ((_ is Concat!25090) (h!71359 (exprs!6129 lt!2362427))))))

(assert (=> b!6341804 (= e!3851962 e!3851964)))

(assert (= (and d!1990286 c!1153101) b!6341798))

(assert (= (and d!1990286 (not c!1153101)) b!6341796))

(assert (= (and b!6341796 c!1153105) b!6341803))

(assert (= (and b!6341796 (not c!1153105)) b!6341804))

(assert (= (and b!6341804 res!2609746) b!6341801))

(assert (= (and b!6341804 c!1153104) b!6341794))

(assert (= (and b!6341804 (not c!1153104)) b!6341795))

(assert (= (and b!6341795 c!1153103) b!6341797))

(assert (= (and b!6341795 (not c!1153103)) b!6341800))

(assert (= (and b!6341800 c!1153102) b!6341799))

(assert (= (and b!6341800 (not c!1153102)) b!6341802))

(assert (= (or b!6341797 b!6341799) bm!540461))

(assert (= (or b!6341797 b!6341799) bm!540462))

(assert (= (or b!6341794 bm!540461) bm!540457))

(assert (= (or b!6341794 bm!540462) bm!540459))

(assert (= (or b!6341803 bm!540459) bm!540458))

(assert (= (or b!6341803 b!6341794) bm!540460))

(declare-fun m!7150182 () Bool)

(assert (=> bm!540458 m!7150182))

(declare-fun m!7150184 () Bool)

(assert (=> bm!540457 m!7150184))

(declare-fun m!7150186 () Bool)

(assert (=> b!6341801 m!7150186))

(declare-fun m!7150188 () Bool)

(assert (=> b!6341798 m!7150188))

(declare-fun m!7150190 () Bool)

(assert (=> bm!540460 m!7150190))

(assert (=> bm!540416 d!1990286))

(declare-fun d!1990288 () Bool)

(assert (=> d!1990288 (= (isEmpty!36989 (t!378621 lt!2362431)) ((_ is Nil!64911) (t!378621 lt!2362431)))))

(assert (=> b!6341384 d!1990288))

(assert (=> d!1990166 d!1990204))

(assert (=> b!6341342 d!1990142))

(declare-fun b!6341805 () Bool)

(declare-fun res!2609751 () Bool)

(declare-fun e!3851966 () Bool)

(assert (=> b!6341805 (=> (not res!2609751) (not e!3851966))))

(declare-fun call!540470 () Bool)

(assert (=> b!6341805 (= res!2609751 call!540470)))

(declare-fun e!3851965 () Bool)

(assert (=> b!6341805 (= e!3851965 e!3851966)))

(declare-fun b!6341806 () Bool)

(declare-fun e!3851967 () Bool)

(assert (=> b!6341806 (= e!3851967 e!3851965)))

(declare-fun c!1153106 () Bool)

(assert (=> b!6341806 (= c!1153106 ((_ is Union!16245) lt!2362557))))

(declare-fun b!6341807 () Bool)

(declare-fun e!3851971 () Bool)

(declare-fun call!540468 () Bool)

(assert (=> b!6341807 (= e!3851971 call!540468)))

(declare-fun b!6341808 () Bool)

(declare-fun res!2609750 () Bool)

(declare-fun e!3851968 () Bool)

(assert (=> b!6341808 (=> res!2609750 e!3851968)))

(assert (=> b!6341808 (= res!2609750 (not ((_ is Concat!25090) lt!2362557)))))

(assert (=> b!6341808 (= e!3851965 e!3851968)))

(declare-fun b!6341809 () Bool)

(declare-fun e!3851969 () Bool)

(assert (=> b!6341809 (= e!3851967 e!3851969)))

(declare-fun res!2609748 () Bool)

(assert (=> b!6341809 (= res!2609748 (not (nullable!6238 (reg!16574 lt!2362557))))))

(assert (=> b!6341809 (=> (not res!2609748) (not e!3851969))))

(declare-fun b!6341810 () Bool)

(assert (=> b!6341810 (= e!3851968 e!3851971)))

(declare-fun res!2609749 () Bool)

(assert (=> b!6341810 (=> (not res!2609749) (not e!3851971))))

(assert (=> b!6341810 (= res!2609749 call!540470)))

(declare-fun d!1990290 () Bool)

(declare-fun res!2609747 () Bool)

(declare-fun e!3851970 () Bool)

(assert (=> d!1990290 (=> res!2609747 e!3851970)))

(assert (=> d!1990290 (= res!2609747 ((_ is ElementMatch!16245) lt!2362557))))

(assert (=> d!1990290 (= (validRegex!7981 lt!2362557) e!3851970)))

(declare-fun call!540469 () Bool)

(declare-fun bm!540463 () Bool)

(declare-fun c!1153107 () Bool)

(assert (=> bm!540463 (= call!540469 (validRegex!7981 (ite c!1153107 (reg!16574 lt!2362557) (ite c!1153106 (regTwo!33003 lt!2362557) (regTwo!33002 lt!2362557)))))))

(declare-fun bm!540464 () Bool)

(assert (=> bm!540464 (= call!540468 call!540469)))

(declare-fun b!6341811 () Bool)

(assert (=> b!6341811 (= e!3851966 call!540468)))

(declare-fun bm!540465 () Bool)

(assert (=> bm!540465 (= call!540470 (validRegex!7981 (ite c!1153106 (regOne!33003 lt!2362557) (regOne!33002 lt!2362557))))))

(declare-fun b!6341812 () Bool)

(assert (=> b!6341812 (= e!3851970 e!3851967)))

(assert (=> b!6341812 (= c!1153107 ((_ is Star!16245) lt!2362557))))

(declare-fun b!6341813 () Bool)

(assert (=> b!6341813 (= e!3851969 call!540469)))

(assert (= (and d!1990290 (not res!2609747)) b!6341812))

(assert (= (and b!6341812 c!1153107) b!6341809))

(assert (= (and b!6341812 (not c!1153107)) b!6341806))

(assert (= (and b!6341809 res!2609748) b!6341813))

(assert (= (and b!6341806 c!1153106) b!6341805))

(assert (= (and b!6341806 (not c!1153106)) b!6341808))

(assert (= (and b!6341805 res!2609751) b!6341811))

(assert (= (and b!6341808 (not res!2609750)) b!6341810))

(assert (= (and b!6341810 res!2609749) b!6341807))

(assert (= (or b!6341811 b!6341807) bm!540464))

(assert (= (or b!6341805 b!6341810) bm!540465))

(assert (= (or b!6341813 bm!540464) bm!540463))

(declare-fun m!7150192 () Bool)

(assert (=> b!6341809 m!7150192))

(declare-fun m!7150194 () Bool)

(assert (=> bm!540463 m!7150194))

(declare-fun m!7150196 () Bool)

(assert (=> bm!540465 m!7150196))

(assert (=> d!1990132 d!1990290))

(declare-fun d!1990292 () Bool)

(declare-fun res!2609756 () Bool)

(declare-fun e!3851976 () Bool)

(assert (=> d!1990292 (=> res!2609756 e!3851976)))

(assert (=> d!1990292 (= res!2609756 ((_ is Nil!64911) (unfocusZipperList!1666 zl!343)))))

(assert (=> d!1990292 (= (forall!15401 (unfocusZipperList!1666 zl!343) lambda!348396) e!3851976)))

(declare-fun b!6341818 () Bool)

(declare-fun e!3851977 () Bool)

(assert (=> b!6341818 (= e!3851976 e!3851977)))

(declare-fun res!2609757 () Bool)

(assert (=> b!6341818 (=> (not res!2609757) (not e!3851977))))

(declare-fun dynLambda!25729 (Int Regex!16245) Bool)

(assert (=> b!6341818 (= res!2609757 (dynLambda!25729 lambda!348396 (h!71359 (unfocusZipperList!1666 zl!343))))))

(declare-fun b!6341819 () Bool)

(assert (=> b!6341819 (= e!3851977 (forall!15401 (t!378621 (unfocusZipperList!1666 zl!343)) lambda!348396))))

(assert (= (and d!1990292 (not res!2609756)) b!6341818))

(assert (= (and b!6341818 res!2609757) b!6341819))

(declare-fun b_lambda!241313 () Bool)

(assert (=> (not b_lambda!241313) (not b!6341818)))

(declare-fun m!7150198 () Bool)

(assert (=> b!6341818 m!7150198))

(declare-fun m!7150200 () Bool)

(assert (=> b!6341819 m!7150200))

(assert (=> d!1990132 d!1990292))

(declare-fun bs!1587718 () Bool)

(declare-fun d!1990294 () Bool)

(assert (= bs!1587718 (and d!1990294 d!1990162)))

(declare-fun lambda!348418 () Int)

(assert (=> bs!1587718 (= lambda!348418 lambda!348406)))

(declare-fun bs!1587719 () Bool)

(assert (= bs!1587719 (and d!1990294 d!1989984)))

(assert (=> bs!1587719 (= lambda!348418 lambda!348318)))

(declare-fun bs!1587720 () Bool)

(assert (= bs!1587720 (and d!1990294 d!1990264)))

(assert (=> bs!1587720 (= lambda!348418 lambda!348416)))

(declare-fun bs!1587721 () Bool)

(assert (= bs!1587721 (and d!1990294 d!1990132)))

(assert (=> bs!1587721 (= lambda!348418 lambda!348396)))

(declare-fun bs!1587722 () Bool)

(assert (= bs!1587722 (and d!1990294 d!1990148)))

(assert (=> bs!1587722 (= lambda!348418 lambda!348404)))

(declare-fun bs!1587723 () Bool)

(assert (= bs!1587723 (and d!1990294 d!1990134)))

(assert (=> bs!1587723 (= lambda!348418 lambda!348399)))

(declare-fun bs!1587724 () Bool)

(assert (= bs!1587724 (and d!1990294 d!1990216)))

(assert (=> bs!1587724 (= lambda!348418 lambda!348413)))

(declare-fun bs!1587725 () Bool)

(assert (= bs!1587725 (and d!1990294 d!1990154)))

(assert (=> bs!1587725 (= lambda!348418 lambda!348405)))

(declare-fun bs!1587726 () Bool)

(assert (= bs!1587726 (and d!1990294 d!1989990)))

(assert (=> bs!1587726 (= lambda!348418 lambda!348319)))

(assert (=> d!1990294 (= (inv!83859 (h!71360 (t!378622 zl!343))) (forall!15401 (exprs!6129 (h!71360 (t!378622 zl!343))) lambda!348418))))

(declare-fun bs!1587727 () Bool)

(assert (= bs!1587727 d!1990294))

(declare-fun m!7150202 () Bool)

(assert (=> bs!1587727 m!7150202))

(assert (=> b!6341529 d!1990294))

(declare-fun bs!1587728 () Bool)

(declare-fun b!6341826 () Bool)

(assert (= bs!1587728 (and b!6341826 d!1990084)))

(declare-fun lambda!348419 () Int)

(assert (=> bs!1587728 (not (= lambda!348419 lambda!348375))))

(declare-fun bs!1587729 () Bool)

(assert (= bs!1587729 (and b!6341826 b!6341243)))

(assert (=> bs!1587729 (= (and (= (reg!16574 (regOne!33003 r!7292)) (reg!16574 r!7292)) (= (regOne!33003 r!7292) r!7292)) (= lambda!348419 lambda!348392))))

(declare-fun bs!1587730 () Bool)

(assert (= bs!1587730 (and b!6341826 b!6341357)))

(assert (=> bs!1587730 (not (= lambda!348419 lambda!348401))))

(declare-fun bs!1587731 () Bool)

(assert (= bs!1587731 (and b!6341826 b!6341245)))

(assert (=> bs!1587731 (not (= lambda!348419 lambda!348393))))

(assert (=> bs!1587728 (not (= lambda!348419 lambda!348376))))

(declare-fun bs!1587732 () Bool)

(assert (= bs!1587732 (and b!6341826 b!6340627)))

(assert (=> bs!1587732 (not (= lambda!348419 lambda!348314))))

(declare-fun bs!1587733 () Bool)

(assert (= bs!1587733 (and b!6341826 b!6341355)))

(assert (=> bs!1587733 (= (and (= (reg!16574 (regOne!33003 r!7292)) (reg!16574 lt!2362424)) (= (regOne!33003 r!7292) lt!2362424)) (= lambda!348419 lambda!348400))))

(declare-fun bs!1587734 () Bool)

(assert (= bs!1587734 (and b!6341826 d!1990068)))

(assert (=> bs!1587734 (not (= lambda!348419 lambda!348370))))

(assert (=> bs!1587732 (not (= lambda!348419 lambda!348313))))

(assert (=> b!6341826 true))

(assert (=> b!6341826 true))

(declare-fun bs!1587735 () Bool)

(declare-fun b!6341828 () Bool)

(assert (= bs!1587735 (and b!6341828 d!1990084)))

(declare-fun lambda!348420 () Int)

(assert (=> bs!1587735 (not (= lambda!348420 lambda!348375))))

(declare-fun bs!1587736 () Bool)

(assert (= bs!1587736 (and b!6341828 b!6341243)))

(assert (=> bs!1587736 (not (= lambda!348420 lambda!348392))))

(declare-fun bs!1587737 () Bool)

(assert (= bs!1587737 (and b!6341828 b!6341357)))

(assert (=> bs!1587737 (= (and (= (regOne!33002 (regOne!33003 r!7292)) (regOne!33002 lt!2362424)) (= (regTwo!33002 (regOne!33003 r!7292)) (regTwo!33002 lt!2362424))) (= lambda!348420 lambda!348401))))

(declare-fun bs!1587738 () Bool)

(assert (= bs!1587738 (and b!6341828 b!6341245)))

(assert (=> bs!1587738 (= (and (= (regOne!33002 (regOne!33003 r!7292)) (regOne!33002 r!7292)) (= (regTwo!33002 (regOne!33003 r!7292)) (regTwo!33002 r!7292))) (= lambda!348420 lambda!348393))))

(assert (=> bs!1587735 (= (and (= (regOne!33002 (regOne!33003 r!7292)) (regOne!33002 r!7292)) (= (regTwo!33002 (regOne!33003 r!7292)) (regTwo!33002 r!7292))) (= lambda!348420 lambda!348376))))

(declare-fun bs!1587739 () Bool)

(assert (= bs!1587739 (and b!6341828 b!6340627)))

(assert (=> bs!1587739 (= (and (= (regOne!33002 (regOne!33003 r!7292)) (regOne!33002 r!7292)) (= (regTwo!33002 (regOne!33003 r!7292)) (regTwo!33002 r!7292))) (= lambda!348420 lambda!348314))))

(declare-fun bs!1587740 () Bool)

(assert (= bs!1587740 (and b!6341828 b!6341355)))

(assert (=> bs!1587740 (not (= lambda!348420 lambda!348400))))

(declare-fun bs!1587741 () Bool)

(assert (= bs!1587741 (and b!6341828 d!1990068)))

(assert (=> bs!1587741 (not (= lambda!348420 lambda!348370))))

(assert (=> bs!1587739 (not (= lambda!348420 lambda!348313))))

(declare-fun bs!1587742 () Bool)

(assert (= bs!1587742 (and b!6341828 b!6341826)))

(assert (=> bs!1587742 (not (= lambda!348420 lambda!348419))))

(assert (=> b!6341828 true))

(assert (=> b!6341828 true))

(declare-fun b!6341820 () Bool)

(declare-fun c!1153111 () Bool)

(assert (=> b!6341820 (= c!1153111 ((_ is Union!16245) (regOne!33003 r!7292)))))

(declare-fun e!3851984 () Bool)

(declare-fun e!3851981 () Bool)

(assert (=> b!6341820 (= e!3851984 e!3851981)))

(declare-fun b!6341821 () Bool)

(declare-fun e!3851983 () Bool)

(assert (=> b!6341821 (= e!3851981 e!3851983)))

(declare-fun c!1153108 () Bool)

(assert (=> b!6341821 (= c!1153108 ((_ is Star!16245) (regOne!33003 r!7292)))))

(declare-fun b!6341822 () Bool)

(declare-fun c!1153109 () Bool)

(assert (=> b!6341822 (= c!1153109 ((_ is ElementMatch!16245) (regOne!33003 r!7292)))))

(declare-fun e!3851978 () Bool)

(assert (=> b!6341822 (= e!3851978 e!3851984)))

(declare-fun b!6341823 () Bool)

(declare-fun e!3851982 () Bool)

(assert (=> b!6341823 (= e!3851982 e!3851978)))

(declare-fun res!2609758 () Bool)

(assert (=> b!6341823 (= res!2609758 (not ((_ is EmptyLang!16245) (regOne!33003 r!7292))))))

(assert (=> b!6341823 (=> (not res!2609758) (not e!3851978))))

(declare-fun b!6341824 () Bool)

(declare-fun res!2609759 () Bool)

(declare-fun e!3851979 () Bool)

(assert (=> b!6341824 (=> res!2609759 e!3851979)))

(declare-fun call!540472 () Bool)

(assert (=> b!6341824 (= res!2609759 call!540472)))

(assert (=> b!6341824 (= e!3851983 e!3851979)))

(declare-fun d!1990296 () Bool)

(declare-fun c!1153110 () Bool)

(assert (=> d!1990296 (= c!1153110 ((_ is EmptyExpr!16245) (regOne!33003 r!7292)))))

(assert (=> d!1990296 (= (matchRSpec!3346 (regOne!33003 r!7292) s!2326) e!3851982)))

(declare-fun b!6341825 () Bool)

(assert (=> b!6341825 (= e!3851984 (= s!2326 (Cons!64910 (c!1152752 (regOne!33003 r!7292)) Nil!64910)))))

(declare-fun call!540471 () Bool)

(declare-fun bm!540466 () Bool)

(assert (=> bm!540466 (= call!540471 (Exists!3315 (ite c!1153108 lambda!348419 lambda!348420)))))

(assert (=> b!6341826 (= e!3851979 call!540471)))

(declare-fun b!6341827 () Bool)

(declare-fun e!3851980 () Bool)

(assert (=> b!6341827 (= e!3851981 e!3851980)))

(declare-fun res!2609760 () Bool)

(assert (=> b!6341827 (= res!2609760 (matchRSpec!3346 (regOne!33003 (regOne!33003 r!7292)) s!2326))))

(assert (=> b!6341827 (=> res!2609760 e!3851980)))

(assert (=> b!6341828 (= e!3851983 call!540471)))

(declare-fun b!6341829 () Bool)

(assert (=> b!6341829 (= e!3851982 call!540472)))

(declare-fun b!6341830 () Bool)

(assert (=> b!6341830 (= e!3851980 (matchRSpec!3346 (regTwo!33003 (regOne!33003 r!7292)) s!2326))))

(declare-fun bm!540467 () Bool)

(assert (=> bm!540467 (= call!540472 (isEmpty!36992 s!2326))))

(assert (= (and d!1990296 c!1153110) b!6341829))

(assert (= (and d!1990296 (not c!1153110)) b!6341823))

(assert (= (and b!6341823 res!2609758) b!6341822))

(assert (= (and b!6341822 c!1153109) b!6341825))

(assert (= (and b!6341822 (not c!1153109)) b!6341820))

(assert (= (and b!6341820 c!1153111) b!6341827))

(assert (= (and b!6341820 (not c!1153111)) b!6341821))

(assert (= (and b!6341827 (not res!2609760)) b!6341830))

(assert (= (and b!6341821 c!1153108) b!6341824))

(assert (= (and b!6341821 (not c!1153108)) b!6341828))

(assert (= (and b!6341824 (not res!2609759)) b!6341826))

(assert (= (or b!6341826 b!6341828) bm!540466))

(assert (= (or b!6341829 b!6341824) bm!540467))

(declare-fun m!7150204 () Bool)

(assert (=> bm!540466 m!7150204))

(declare-fun m!7150206 () Bool)

(assert (=> b!6341827 m!7150206))

(declare-fun m!7150208 () Bool)

(assert (=> b!6341830 m!7150208))

(assert (=> bm!540467 m!7149734))

(assert (=> b!6341244 d!1990296))

(declare-fun d!1990298 () Bool)

(assert (=> d!1990298 (= (nullable!6238 (reg!16574 r!7292)) (nullableFct!2185 (reg!16574 r!7292)))))

(declare-fun bs!1587743 () Bool)

(assert (= bs!1587743 d!1990298))

(declare-fun m!7150210 () Bool)

(assert (=> bs!1587743 m!7150210))

(assert (=> b!6341447 d!1990298))

(declare-fun d!1990300 () Bool)

(assert (=> d!1990300 (= (head!12983 lt!2362431) (h!71359 lt!2362431))))

(assert (=> b!6341380 d!1990300))

(assert (=> d!1990068 d!1990046))

(declare-fun d!1990302 () Bool)

(assert (=> d!1990302 (= (Exists!3315 lambda!348370) (choose!47010 lambda!348370))))

(declare-fun bs!1587744 () Bool)

(assert (= bs!1587744 d!1990302))

(declare-fun m!7150212 () Bool)

(assert (=> bs!1587744 m!7150212))

(assert (=> d!1990068 d!1990302))

(declare-fun b!6341831 () Bool)

(declare-fun res!2609765 () Bool)

(declare-fun e!3851986 () Bool)

(assert (=> b!6341831 (=> (not res!2609765) (not e!3851986))))

(declare-fun call!540475 () Bool)

(assert (=> b!6341831 (= res!2609765 call!540475)))

(declare-fun e!3851985 () Bool)

(assert (=> b!6341831 (= e!3851985 e!3851986)))

(declare-fun b!6341832 () Bool)

(declare-fun e!3851987 () Bool)

(assert (=> b!6341832 (= e!3851987 e!3851985)))

(declare-fun c!1153112 () Bool)

(assert (=> b!6341832 (= c!1153112 ((_ is Union!16245) (regOne!33002 r!7292)))))

(declare-fun b!6341833 () Bool)

(declare-fun e!3851991 () Bool)

(declare-fun call!540473 () Bool)

(assert (=> b!6341833 (= e!3851991 call!540473)))

(declare-fun b!6341834 () Bool)

(declare-fun res!2609764 () Bool)

(declare-fun e!3851988 () Bool)

(assert (=> b!6341834 (=> res!2609764 e!3851988)))

(assert (=> b!6341834 (= res!2609764 (not ((_ is Concat!25090) (regOne!33002 r!7292))))))

(assert (=> b!6341834 (= e!3851985 e!3851988)))

(declare-fun b!6341835 () Bool)

(declare-fun e!3851989 () Bool)

(assert (=> b!6341835 (= e!3851987 e!3851989)))

(declare-fun res!2609762 () Bool)

(assert (=> b!6341835 (= res!2609762 (not (nullable!6238 (reg!16574 (regOne!33002 r!7292)))))))

(assert (=> b!6341835 (=> (not res!2609762) (not e!3851989))))

(declare-fun b!6341836 () Bool)

(assert (=> b!6341836 (= e!3851988 e!3851991)))

(declare-fun res!2609763 () Bool)

(assert (=> b!6341836 (=> (not res!2609763) (not e!3851991))))

(assert (=> b!6341836 (= res!2609763 call!540475)))

(declare-fun d!1990304 () Bool)

(declare-fun res!2609761 () Bool)

(declare-fun e!3851990 () Bool)

(assert (=> d!1990304 (=> res!2609761 e!3851990)))

(assert (=> d!1990304 (= res!2609761 ((_ is ElementMatch!16245) (regOne!33002 r!7292)))))

(assert (=> d!1990304 (= (validRegex!7981 (regOne!33002 r!7292)) e!3851990)))

(declare-fun bm!540468 () Bool)

(declare-fun call!540474 () Bool)

(declare-fun c!1153113 () Bool)

(assert (=> bm!540468 (= call!540474 (validRegex!7981 (ite c!1153113 (reg!16574 (regOne!33002 r!7292)) (ite c!1153112 (regTwo!33003 (regOne!33002 r!7292)) (regTwo!33002 (regOne!33002 r!7292))))))))

(declare-fun bm!540469 () Bool)

(assert (=> bm!540469 (= call!540473 call!540474)))

(declare-fun b!6341837 () Bool)

(assert (=> b!6341837 (= e!3851986 call!540473)))

(declare-fun bm!540470 () Bool)

(assert (=> bm!540470 (= call!540475 (validRegex!7981 (ite c!1153112 (regOne!33003 (regOne!33002 r!7292)) (regOne!33002 (regOne!33002 r!7292)))))))

(declare-fun b!6341838 () Bool)

(assert (=> b!6341838 (= e!3851990 e!3851987)))

(assert (=> b!6341838 (= c!1153113 ((_ is Star!16245) (regOne!33002 r!7292)))))

(declare-fun b!6341839 () Bool)

(assert (=> b!6341839 (= e!3851989 call!540474)))

(assert (= (and d!1990304 (not res!2609761)) b!6341838))

(assert (= (and b!6341838 c!1153113) b!6341835))

(assert (= (and b!6341838 (not c!1153113)) b!6341832))

(assert (= (and b!6341835 res!2609762) b!6341839))

(assert (= (and b!6341832 c!1153112) b!6341831))

(assert (= (and b!6341832 (not c!1153112)) b!6341834))

(assert (= (and b!6341831 res!2609765) b!6341837))

(assert (= (and b!6341834 (not res!2609764)) b!6341836))

(assert (= (and b!6341836 res!2609763) b!6341833))

(assert (= (or b!6341837 b!6341833) bm!540469))

(assert (= (or b!6341831 b!6341836) bm!540470))

(assert (= (or b!6341839 bm!540469) bm!540468))

(declare-fun m!7150214 () Bool)

(assert (=> b!6341835 m!7150214))

(declare-fun m!7150216 () Bool)

(assert (=> bm!540468 m!7150216))

(declare-fun m!7150218 () Bool)

(assert (=> bm!540470 m!7150218))

(assert (=> d!1990068 d!1990304))

(assert (=> d!1990068 d!1990092))

(declare-fun bs!1587745 () Bool)

(declare-fun d!1990306 () Bool)

(assert (= bs!1587745 (and d!1990306 d!1990084)))

(declare-fun lambda!348423 () Int)

(assert (=> bs!1587745 (= lambda!348423 lambda!348375)))

(declare-fun bs!1587746 () Bool)

(assert (= bs!1587746 (and d!1990306 b!6341243)))

(assert (=> bs!1587746 (not (= lambda!348423 lambda!348392))))

(declare-fun bs!1587747 () Bool)

(assert (= bs!1587747 (and d!1990306 b!6341357)))

(assert (=> bs!1587747 (not (= lambda!348423 lambda!348401))))

(declare-fun bs!1587748 () Bool)

(assert (= bs!1587748 (and d!1990306 b!6341245)))

(assert (=> bs!1587748 (not (= lambda!348423 lambda!348393))))

(assert (=> bs!1587745 (not (= lambda!348423 lambda!348376))))

(declare-fun bs!1587749 () Bool)

(assert (= bs!1587749 (and d!1990306 b!6341828)))

(assert (=> bs!1587749 (not (= lambda!348423 lambda!348420))))

(declare-fun bs!1587750 () Bool)

(assert (= bs!1587750 (and d!1990306 b!6340627)))

(assert (=> bs!1587750 (not (= lambda!348423 lambda!348314))))

(declare-fun bs!1587751 () Bool)

(assert (= bs!1587751 (and d!1990306 b!6341355)))

(assert (=> bs!1587751 (not (= lambda!348423 lambda!348400))))

(declare-fun bs!1587752 () Bool)

(assert (= bs!1587752 (and d!1990306 d!1990068)))

(assert (=> bs!1587752 (= lambda!348423 lambda!348370)))

(assert (=> bs!1587750 (= lambda!348423 lambda!348313)))

(declare-fun bs!1587753 () Bool)

(assert (= bs!1587753 (and d!1990306 b!6341826)))

(assert (=> bs!1587753 (not (= lambda!348423 lambda!348419))))

(assert (=> d!1990306 true))

(assert (=> d!1990306 true))

(assert (=> d!1990306 true))

(assert (=> d!1990306 (= (isDefined!12839 (findConcatSeparation!2550 (regOne!33002 r!7292) (regTwo!33002 r!7292) Nil!64910 s!2326 s!2326)) (Exists!3315 lambda!348423))))

(assert (=> d!1990306 true))

(declare-fun _$89!2560 () Unit!158311)

(assert (=> d!1990306 (= (choose!47011 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326) _$89!2560)))

(declare-fun bs!1587754 () Bool)

(assert (= bs!1587754 d!1990306))

(assert (=> bs!1587754 m!7149276))

(assert (=> bs!1587754 m!7149276))

(assert (=> bs!1587754 m!7149278))

(declare-fun m!7150220 () Bool)

(assert (=> bs!1587754 m!7150220))

(assert (=> d!1990068 d!1990306))

(declare-fun b!6341844 () Bool)

(declare-fun res!2609774 () Bool)

(declare-fun e!3851995 () Bool)

(assert (=> b!6341844 (=> (not res!2609774) (not e!3851995))))

(declare-fun call!540478 () Bool)

(assert (=> b!6341844 (= res!2609774 call!540478)))

(declare-fun e!3851994 () Bool)

(assert (=> b!6341844 (= e!3851994 e!3851995)))

(declare-fun b!6341845 () Bool)

(declare-fun e!3851996 () Bool)

(assert (=> b!6341845 (= e!3851996 e!3851994)))

(declare-fun c!1153114 () Bool)

(assert (=> b!6341845 (= c!1153114 ((_ is Union!16245) lt!2362568))))

(declare-fun b!6341846 () Bool)

(declare-fun e!3852000 () Bool)

(declare-fun call!540476 () Bool)

(assert (=> b!6341846 (= e!3852000 call!540476)))

(declare-fun b!6341847 () Bool)

(declare-fun res!2609773 () Bool)

(declare-fun e!3851997 () Bool)

(assert (=> b!6341847 (=> res!2609773 e!3851997)))

(assert (=> b!6341847 (= res!2609773 (not ((_ is Concat!25090) lt!2362568)))))

(assert (=> b!6341847 (= e!3851994 e!3851997)))

(declare-fun b!6341848 () Bool)

(declare-fun e!3851998 () Bool)

(assert (=> b!6341848 (= e!3851996 e!3851998)))

(declare-fun res!2609771 () Bool)

(assert (=> b!6341848 (= res!2609771 (not (nullable!6238 (reg!16574 lt!2362568))))))

(assert (=> b!6341848 (=> (not res!2609771) (not e!3851998))))

(declare-fun b!6341849 () Bool)

(assert (=> b!6341849 (= e!3851997 e!3852000)))

(declare-fun res!2609772 () Bool)

(assert (=> b!6341849 (=> (not res!2609772) (not e!3852000))))

(assert (=> b!6341849 (= res!2609772 call!540478)))

(declare-fun d!1990308 () Bool)

(declare-fun res!2609770 () Bool)

(declare-fun e!3851999 () Bool)

(assert (=> d!1990308 (=> res!2609770 e!3851999)))

(assert (=> d!1990308 (= res!2609770 ((_ is ElementMatch!16245) lt!2362568))))

(assert (=> d!1990308 (= (validRegex!7981 lt!2362568) e!3851999)))

(declare-fun bm!540471 () Bool)

(declare-fun call!540477 () Bool)

(declare-fun c!1153115 () Bool)

(assert (=> bm!540471 (= call!540477 (validRegex!7981 (ite c!1153115 (reg!16574 lt!2362568) (ite c!1153114 (regTwo!33003 lt!2362568) (regTwo!33002 lt!2362568)))))))

(declare-fun bm!540472 () Bool)

(assert (=> bm!540472 (= call!540476 call!540477)))

(declare-fun b!6341850 () Bool)

(assert (=> b!6341850 (= e!3851995 call!540476)))

(declare-fun bm!540473 () Bool)

(assert (=> bm!540473 (= call!540478 (validRegex!7981 (ite c!1153114 (regOne!33003 lt!2362568) (regOne!33002 lt!2362568))))))

(declare-fun b!6341851 () Bool)

(assert (=> b!6341851 (= e!3851999 e!3851996)))

(assert (=> b!6341851 (= c!1153115 ((_ is Star!16245) lt!2362568))))

(declare-fun b!6341852 () Bool)

(assert (=> b!6341852 (= e!3851998 call!540477)))

(assert (= (and d!1990308 (not res!2609770)) b!6341851))

(assert (= (and b!6341851 c!1153115) b!6341848))

(assert (= (and b!6341851 (not c!1153115)) b!6341845))

(assert (= (and b!6341848 res!2609771) b!6341852))

(assert (= (and b!6341845 c!1153114) b!6341844))

(assert (= (and b!6341845 (not c!1153114)) b!6341847))

(assert (= (and b!6341844 res!2609774) b!6341850))

(assert (= (and b!6341847 (not res!2609773)) b!6341849))

(assert (= (and b!6341849 res!2609772) b!6341846))

(assert (= (or b!6341850 b!6341846) bm!540472))

(assert (= (or b!6341844 b!6341849) bm!540473))

(assert (= (or b!6341852 bm!540472) bm!540471))

(declare-fun m!7150222 () Bool)

(assert (=> b!6341848 m!7150222))

(declare-fun m!7150224 () Bool)

(assert (=> bm!540471 m!7150224))

(declare-fun m!7150226 () Bool)

(assert (=> bm!540473 m!7150226))

(assert (=> d!1990154 d!1990308))

(declare-fun d!1990310 () Bool)

(declare-fun res!2609775 () Bool)

(declare-fun e!3852001 () Bool)

(assert (=> d!1990310 (=> res!2609775 e!3852001)))

(assert (=> d!1990310 (= res!2609775 ((_ is Nil!64911) lt!2362429))))

(assert (=> d!1990310 (= (forall!15401 lt!2362429 lambda!348405) e!3852001)))

(declare-fun b!6341853 () Bool)

(declare-fun e!3852002 () Bool)

(assert (=> b!6341853 (= e!3852001 e!3852002)))

(declare-fun res!2609776 () Bool)

(assert (=> b!6341853 (=> (not res!2609776) (not e!3852002))))

(assert (=> b!6341853 (= res!2609776 (dynLambda!25729 lambda!348405 (h!71359 lt!2362429)))))

(declare-fun b!6341854 () Bool)

(assert (=> b!6341854 (= e!3852002 (forall!15401 (t!378621 lt!2362429) lambda!348405))))

(assert (= (and d!1990310 (not res!2609775)) b!6341853))

(assert (= (and b!6341853 res!2609776) b!6341854))

(declare-fun b_lambda!241315 () Bool)

(assert (=> (not b_lambda!241315) (not b!6341853)))

(declare-fun m!7150228 () Bool)

(assert (=> b!6341853 m!7150228))

(declare-fun m!7150230 () Bool)

(assert (=> b!6341854 m!7150230))

(assert (=> d!1990154 d!1990310))

(assert (=> d!1989994 d!1990204))

(declare-fun b!6341855 () Bool)

(declare-fun res!2609781 () Bool)

(declare-fun e!3852004 () Bool)

(assert (=> b!6341855 (=> (not res!2609781) (not e!3852004))))

(declare-fun call!540481 () Bool)

(assert (=> b!6341855 (= res!2609781 call!540481)))

(declare-fun e!3852003 () Bool)

(assert (=> b!6341855 (= e!3852003 e!3852004)))

(declare-fun b!6341856 () Bool)

(declare-fun e!3852005 () Bool)

(assert (=> b!6341856 (= e!3852005 e!3852003)))

(declare-fun c!1153116 () Bool)

(assert (=> b!6341856 (= c!1153116 ((_ is Union!16245) lt!2362567))))

(declare-fun b!6341857 () Bool)

(declare-fun e!3852009 () Bool)

(declare-fun call!540479 () Bool)

(assert (=> b!6341857 (= e!3852009 call!540479)))

(declare-fun b!6341858 () Bool)

(declare-fun res!2609780 () Bool)

(declare-fun e!3852006 () Bool)

(assert (=> b!6341858 (=> res!2609780 e!3852006)))

(assert (=> b!6341858 (= res!2609780 (not ((_ is Concat!25090) lt!2362567)))))

(assert (=> b!6341858 (= e!3852003 e!3852006)))

(declare-fun b!6341859 () Bool)

(declare-fun e!3852007 () Bool)

(assert (=> b!6341859 (= e!3852005 e!3852007)))

(declare-fun res!2609778 () Bool)

(assert (=> b!6341859 (= res!2609778 (not (nullable!6238 (reg!16574 lt!2362567))))))

(assert (=> b!6341859 (=> (not res!2609778) (not e!3852007))))

(declare-fun b!6341860 () Bool)

(assert (=> b!6341860 (= e!3852006 e!3852009)))

(declare-fun res!2609779 () Bool)

(assert (=> b!6341860 (=> (not res!2609779) (not e!3852009))))

(assert (=> b!6341860 (= res!2609779 call!540481)))

(declare-fun d!1990312 () Bool)

(declare-fun res!2609777 () Bool)

(declare-fun e!3852008 () Bool)

(assert (=> d!1990312 (=> res!2609777 e!3852008)))

(assert (=> d!1990312 (= res!2609777 ((_ is ElementMatch!16245) lt!2362567))))

(assert (=> d!1990312 (= (validRegex!7981 lt!2362567) e!3852008)))

(declare-fun call!540480 () Bool)

(declare-fun bm!540474 () Bool)

(declare-fun c!1153117 () Bool)

(assert (=> bm!540474 (= call!540480 (validRegex!7981 (ite c!1153117 (reg!16574 lt!2362567) (ite c!1153116 (regTwo!33003 lt!2362567) (regTwo!33002 lt!2362567)))))))

(declare-fun bm!540475 () Bool)

(assert (=> bm!540475 (= call!540479 call!540480)))

(declare-fun b!6341861 () Bool)

(assert (=> b!6341861 (= e!3852004 call!540479)))

(declare-fun bm!540476 () Bool)

(assert (=> bm!540476 (= call!540481 (validRegex!7981 (ite c!1153116 (regOne!33003 lt!2362567) (regOne!33002 lt!2362567))))))

(declare-fun b!6341862 () Bool)

(assert (=> b!6341862 (= e!3852008 e!3852005)))

(assert (=> b!6341862 (= c!1153117 ((_ is Star!16245) lt!2362567))))

(declare-fun b!6341863 () Bool)

(assert (=> b!6341863 (= e!3852007 call!540480)))

(assert (= (and d!1990312 (not res!2609777)) b!6341862))

(assert (= (and b!6341862 c!1153117) b!6341859))

(assert (= (and b!6341862 (not c!1153117)) b!6341856))

(assert (= (and b!6341859 res!2609778) b!6341863))

(assert (= (and b!6341856 c!1153116) b!6341855))

(assert (= (and b!6341856 (not c!1153116)) b!6341858))

(assert (= (and b!6341855 res!2609781) b!6341861))

(assert (= (and b!6341858 (not res!2609780)) b!6341860))

(assert (= (and b!6341860 res!2609779) b!6341857))

(assert (= (or b!6341861 b!6341857) bm!540475))

(assert (= (or b!6341855 b!6341860) bm!540476))

(assert (= (or b!6341863 bm!540475) bm!540474))

(declare-fun m!7150232 () Bool)

(assert (=> b!6341859 m!7150232))

(declare-fun m!7150234 () Bool)

(assert (=> bm!540474 m!7150234))

(declare-fun m!7150236 () Bool)

(assert (=> bm!540476 m!7150236))

(assert (=> d!1990148 d!1990312))

(declare-fun d!1990314 () Bool)

(declare-fun res!2609782 () Bool)

(declare-fun e!3852010 () Bool)

(assert (=> d!1990314 (=> res!2609782 e!3852010)))

(assert (=> d!1990314 (= res!2609782 ((_ is Nil!64911) lt!2362431))))

(assert (=> d!1990314 (= (forall!15401 lt!2362431 lambda!348404) e!3852010)))

(declare-fun b!6341864 () Bool)

(declare-fun e!3852011 () Bool)

(assert (=> b!6341864 (= e!3852010 e!3852011)))

(declare-fun res!2609783 () Bool)

(assert (=> b!6341864 (=> (not res!2609783) (not e!3852011))))

(assert (=> b!6341864 (= res!2609783 (dynLambda!25729 lambda!348404 (h!71359 lt!2362431)))))

(declare-fun b!6341865 () Bool)

(assert (=> b!6341865 (= e!3852011 (forall!15401 (t!378621 lt!2362431) lambda!348404))))

(assert (= (and d!1990314 (not res!2609782)) b!6341864))

(assert (= (and b!6341864 res!2609783) b!6341865))

(declare-fun b_lambda!241317 () Bool)

(assert (=> (not b_lambda!241317) (not b!6341864)))

(declare-fun m!7150238 () Bool)

(assert (=> b!6341864 m!7150238))

(declare-fun m!7150240 () Bool)

(assert (=> b!6341865 m!7150240))

(assert (=> d!1990148 d!1990314))

(declare-fun d!1990316 () Bool)

(assert (=> d!1990316 (= (isEmptyExpr!1647 lt!2362568) ((_ is EmptyExpr!16245) lt!2362568))))

(assert (=> b!6341426 d!1990316))

(declare-fun b!6341866 () Bool)

(declare-fun e!3852012 () (InoxSet Context!11258))

(declare-fun call!540482 () (InoxSet Context!11258))

(assert (=> b!6341866 (= e!3852012 call!540482)))

(declare-fun b!6341867 () Bool)

(assert (=> b!6341867 (= e!3852012 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540477 () Bool)

(assert (=> bm!540477 (= call!540482 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))) (h!71358 s!2326)))))

(declare-fun b!6341868 () Bool)

(declare-fun e!3852013 () Bool)

(assert (=> b!6341868 (= e!3852013 (nullable!6238 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))))))

(declare-fun d!1990318 () Bool)

(declare-fun c!1153118 () Bool)

(assert (=> d!1990318 (= c!1153118 e!3852013)))

(declare-fun res!2609784 () Bool)

(assert (=> d!1990318 (=> (not res!2609784) (not e!3852013))))

(assert (=> d!1990318 (= res!2609784 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))))

(declare-fun e!3852014 () (InoxSet Context!11258))

(assert (=> d!1990318 (= (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (h!71358 s!2326)) e!3852014)))

(declare-fun b!6341869 () Bool)

(assert (=> b!6341869 (= e!3852014 ((_ map or) call!540482 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))) (h!71358 s!2326))))))

(declare-fun b!6341870 () Bool)

(assert (=> b!6341870 (= e!3852014 e!3852012)))

(declare-fun c!1153119 () Bool)

(assert (=> b!6341870 (= c!1153119 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))))

(assert (= (and d!1990318 res!2609784) b!6341868))

(assert (= (and d!1990318 c!1153118) b!6341869))

(assert (= (and d!1990318 (not c!1153118)) b!6341870))

(assert (= (and b!6341870 c!1153119) b!6341866))

(assert (= (and b!6341870 (not c!1153119)) b!6341867))

(assert (= (or b!6341869 b!6341866) bm!540477))

(declare-fun m!7150242 () Bool)

(assert (=> bm!540477 m!7150242))

(declare-fun m!7150244 () Bool)

(assert (=> b!6341868 m!7150244))

(declare-fun m!7150246 () Bool)

(assert (=> b!6341869 m!7150246))

(assert (=> b!6341480 d!1990318))

(declare-fun bs!1587755 () Bool)

(declare-fun d!1990320 () Bool)

(assert (= bs!1587755 (and d!1990320 d!1990162)))

(declare-fun lambda!348424 () Int)

(assert (=> bs!1587755 (= lambda!348424 lambda!348406)))

(declare-fun bs!1587756 () Bool)

(assert (= bs!1587756 (and d!1990320 d!1990294)))

(assert (=> bs!1587756 (= lambda!348424 lambda!348418)))

(declare-fun bs!1587757 () Bool)

(assert (= bs!1587757 (and d!1990320 d!1989984)))

(assert (=> bs!1587757 (= lambda!348424 lambda!348318)))

(declare-fun bs!1587758 () Bool)

(assert (= bs!1587758 (and d!1990320 d!1990264)))

(assert (=> bs!1587758 (= lambda!348424 lambda!348416)))

(declare-fun bs!1587759 () Bool)

(assert (= bs!1587759 (and d!1990320 d!1990132)))

(assert (=> bs!1587759 (= lambda!348424 lambda!348396)))

(declare-fun bs!1587760 () Bool)

(assert (= bs!1587760 (and d!1990320 d!1990148)))

(assert (=> bs!1587760 (= lambda!348424 lambda!348404)))

(declare-fun bs!1587761 () Bool)

(assert (= bs!1587761 (and d!1990320 d!1990134)))

(assert (=> bs!1587761 (= lambda!348424 lambda!348399)))

(declare-fun bs!1587762 () Bool)

(assert (= bs!1587762 (and d!1990320 d!1990216)))

(assert (=> bs!1587762 (= lambda!348424 lambda!348413)))

(declare-fun bs!1587763 () Bool)

(assert (= bs!1587763 (and d!1990320 d!1990154)))

(assert (=> bs!1587763 (= lambda!348424 lambda!348405)))

(declare-fun bs!1587764 () Bool)

(assert (= bs!1587764 (and d!1990320 d!1989990)))

(assert (=> bs!1587764 (= lambda!348424 lambda!348319)))

(assert (=> d!1990320 (= (inv!83859 setElem!43160) (forall!15401 (exprs!6129 setElem!43160) lambda!348424))))

(declare-fun bs!1587765 () Bool)

(assert (= bs!1587765 d!1990320))

(declare-fun m!7150248 () Bool)

(assert (=> bs!1587765 m!7150248))

(assert (=> setNonEmpty!43160 d!1990320))

(declare-fun d!1990322 () Bool)

(assert (=> d!1990322 (= (isEmpty!36989 (tail!12068 (exprs!6129 (h!71360 zl!343)))) ((_ is Nil!64911) (tail!12068 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> b!6341461 d!1990322))

(declare-fun d!1990324 () Bool)

(assert (=> d!1990324 (= (tail!12068 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))

(assert (=> b!6341461 d!1990324))

(declare-fun d!1990326 () Bool)

(declare-fun res!2609785 () Bool)

(declare-fun e!3852015 () Bool)

(assert (=> d!1990326 (=> res!2609785 e!3852015)))

(assert (=> d!1990326 (= res!2609785 ((_ is Nil!64911) lt!2362560))))

(assert (=> d!1990326 (= (forall!15401 lt!2362560 lambda!348399) e!3852015)))

(declare-fun b!6341871 () Bool)

(declare-fun e!3852016 () Bool)

(assert (=> b!6341871 (= e!3852015 e!3852016)))

(declare-fun res!2609786 () Bool)

(assert (=> b!6341871 (=> (not res!2609786) (not e!3852016))))

(assert (=> b!6341871 (= res!2609786 (dynLambda!25729 lambda!348399 (h!71359 lt!2362560)))))

(declare-fun b!6341872 () Bool)

(assert (=> b!6341872 (= e!3852016 (forall!15401 (t!378621 lt!2362560) lambda!348399))))

(assert (= (and d!1990326 (not res!2609785)) b!6341871))

(assert (= (and b!6341871 res!2609786) b!6341872))

(declare-fun b_lambda!241319 () Bool)

(assert (=> (not b_lambda!241319) (not b!6341871)))

(declare-fun m!7150250 () Bool)

(assert (=> b!6341871 m!7150250))

(declare-fun m!7150252 () Bool)

(assert (=> b!6341872 m!7150252))

(assert (=> d!1990134 d!1990326))

(assert (=> d!1990192 d!1990188))

(declare-fun d!1990328 () Bool)

(assert (=> d!1990328 (= (flatMap!1750 lt!2362411 lambda!348315) (dynLambda!25727 lambda!348315 lt!2362418))))

(assert (=> d!1990328 true))

(declare-fun _$13!3496 () Unit!158311)

(assert (=> d!1990328 (= (choose!47025 lt!2362411 lt!2362418 lambda!348315) _$13!3496)))

(declare-fun b_lambda!241321 () Bool)

(assert (=> (not b_lambda!241321) (not d!1990328)))

(declare-fun bs!1587766 () Bool)

(assert (= bs!1587766 d!1990328))

(assert (=> bs!1587766 m!7149238))

(assert (=> bs!1587766 m!7149950))

(assert (=> d!1990192 d!1990328))

(declare-fun d!1990330 () Bool)

(declare-fun c!1153122 () Bool)

(assert (=> d!1990330 (= c!1153122 ((_ is Nil!64912) lt!2362576))))

(declare-fun e!3852019 () (InoxSet Context!11258))

(assert (=> d!1990330 (= (content!12242 lt!2362576) e!3852019)))

(declare-fun b!6341877 () Bool)

(assert (=> b!6341877 (= e!3852019 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6341878 () Bool)

(assert (=> b!6341878 (= e!3852019 ((_ map or) (store ((as const (Array Context!11258 Bool)) false) (h!71360 lt!2362576) true) (content!12242 (t!378622 lt!2362576))))))

(assert (= (and d!1990330 c!1153122) b!6341877))

(assert (= (and d!1990330 (not c!1153122)) b!6341878))

(declare-fun m!7150254 () Bool)

(assert (=> b!6341878 m!7150254))

(declare-fun m!7150256 () Bool)

(assert (=> b!6341878 m!7150256))

(assert (=> b!6341464 d!1990330))

(assert (=> bs!1587680 d!1990190))

(declare-fun b!6341879 () Bool)

(declare-fun res!2609791 () Bool)

(declare-fun e!3852021 () Bool)

(assert (=> b!6341879 (=> (not res!2609791) (not e!3852021))))

(declare-fun call!540485 () Bool)

(assert (=> b!6341879 (= res!2609791 call!540485)))

(declare-fun e!3852020 () Bool)

(assert (=> b!6341879 (= e!3852020 e!3852021)))

(declare-fun b!6341880 () Bool)

(declare-fun e!3852022 () Bool)

(assert (=> b!6341880 (= e!3852022 e!3852020)))

(declare-fun c!1153123 () Bool)

(assert (=> b!6341880 (= c!1153123 ((_ is Union!16245) (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))))))

(declare-fun b!6341881 () Bool)

(declare-fun e!3852026 () Bool)

(declare-fun call!540483 () Bool)

(assert (=> b!6341881 (= e!3852026 call!540483)))

(declare-fun b!6341882 () Bool)

(declare-fun res!2609790 () Bool)

(declare-fun e!3852023 () Bool)

(assert (=> b!6341882 (=> res!2609790 e!3852023)))

(assert (=> b!6341882 (= res!2609790 (not ((_ is Concat!25090) (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))))))))))

(assert (=> b!6341882 (= e!3852020 e!3852023)))

(declare-fun b!6341883 () Bool)

(declare-fun e!3852024 () Bool)

(assert (=> b!6341883 (= e!3852022 e!3852024)))

(declare-fun res!2609788 () Bool)

(assert (=> b!6341883 (= res!2609788 (not (nullable!6238 (reg!16574 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))))))))

(assert (=> b!6341883 (=> (not res!2609788) (not e!3852024))))

(declare-fun b!6341884 () Bool)

(assert (=> b!6341884 (= e!3852023 e!3852026)))

(declare-fun res!2609789 () Bool)

(assert (=> b!6341884 (=> (not res!2609789) (not e!3852026))))

(assert (=> b!6341884 (= res!2609789 call!540485)))

(declare-fun d!1990332 () Bool)

(declare-fun res!2609787 () Bool)

(declare-fun e!3852025 () Bool)

(assert (=> d!1990332 (=> res!2609787 e!3852025)))

(assert (=> d!1990332 (= res!2609787 ((_ is ElementMatch!16245) (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))))))

(assert (=> d!1990332 (= (validRegex!7981 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))) e!3852025)))

(declare-fun bm!540478 () Bool)

(declare-fun c!1153124 () Bool)

(declare-fun call!540484 () Bool)

(assert (=> bm!540478 (= call!540484 (validRegex!7981 (ite c!1153124 (reg!16574 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))) (ite c!1153123 (regTwo!33003 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))) (regTwo!33002 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))))))))))))

(declare-fun bm!540479 () Bool)

(assert (=> bm!540479 (= call!540483 call!540484)))

(declare-fun b!6341885 () Bool)

(assert (=> b!6341885 (= e!3852021 call!540483)))

(declare-fun bm!540480 () Bool)

(assert (=> bm!540480 (= call!540485 (validRegex!7981 (ite c!1153123 (regOne!33003 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))) (regOne!33002 (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))))))))

(declare-fun b!6341886 () Bool)

(assert (=> b!6341886 (= e!3852025 e!3852022)))

(assert (=> b!6341886 (= c!1153124 ((_ is Star!16245) (ite c!1152990 (reg!16574 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152989 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292)))))))))

(declare-fun b!6341887 () Bool)

(assert (=> b!6341887 (= e!3852024 call!540484)))

(assert (= (and d!1990332 (not res!2609787)) b!6341886))

(assert (= (and b!6341886 c!1153124) b!6341883))

(assert (= (and b!6341886 (not c!1153124)) b!6341880))

(assert (= (and b!6341883 res!2609788) b!6341887))

(assert (= (and b!6341880 c!1153123) b!6341879))

(assert (= (and b!6341880 (not c!1153123)) b!6341882))

(assert (= (and b!6341879 res!2609791) b!6341885))

(assert (= (and b!6341882 (not res!2609790)) b!6341884))

(assert (= (and b!6341884 res!2609789) b!6341881))

(assert (= (or b!6341885 b!6341881) bm!540479))

(assert (= (or b!6341879 b!6341884) bm!540480))

(assert (= (or b!6341887 bm!540479) bm!540478))

(declare-fun m!7150258 () Bool)

(assert (=> b!6341883 m!7150258))

(declare-fun m!7150260 () Bool)

(assert (=> bm!540478 m!7150260))

(declare-fun m!7150262 () Bool)

(assert (=> bm!540480 m!7150262))

(assert (=> bm!540399 d!1990332))

(declare-fun d!1990334 () Bool)

(assert (=> d!1990334 (= (isEmptyLang!1654 lt!2362557) ((_ is EmptyLang!16245) lt!2362557))))

(assert (=> b!6341333 d!1990334))

(declare-fun call!540487 () List!65035)

(declare-fun c!1153127 () Bool)

(declare-fun c!1153128 () Bool)

(declare-fun bm!540481 () Bool)

(assert (=> bm!540481 (= call!540487 ($colon$colon!2105 (exprs!6129 (ite c!1153018 lt!2362427 (Context!11259 call!540416))) (ite (or c!1153128 c!1153127) (regTwo!33002 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))) (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))))))

(declare-fun b!6341888 () Bool)

(declare-fun e!3852032 () (InoxSet Context!11258))

(declare-fun call!540489 () (InoxSet Context!11258))

(declare-fun call!540491 () (InoxSet Context!11258))

(assert (=> b!6341888 (= e!3852032 ((_ map or) call!540489 call!540491))))

(declare-fun b!6341889 () Bool)

(declare-fun e!3852028 () (InoxSet Context!11258))

(assert (=> b!6341889 (= e!3852032 e!3852028)))

(assert (=> b!6341889 (= c!1153127 ((_ is Concat!25090) (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun call!540486 () (InoxSet Context!11258))

(declare-fun call!540490 () List!65035)

(declare-fun c!1153129 () Bool)

(declare-fun bm!540482 () Bool)

(assert (=> bm!540482 (= call!540486 (derivationStepZipperDown!1493 (ite c!1153129 (regTwo!33003 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))) (ite c!1153128 (regTwo!33002 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))) (ite c!1153127 (regOne!33002 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))) (reg!16574 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))))) (ite (or c!1153129 c!1153128) (ite c!1153018 lt!2362427 (Context!11259 call!540416)) (Context!11259 call!540490)) (h!71358 s!2326)))))

(declare-fun bm!540483 () Bool)

(assert (=> bm!540483 (= call!540491 call!540486)))

(declare-fun bm!540484 () Bool)

(assert (=> bm!540484 (= call!540489 (derivationStepZipperDown!1493 (ite c!1153129 (regOne!33003 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))) (regOne!33002 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))) (ite c!1153129 (ite c!1153018 lt!2362427 (Context!11259 call!540416)) (Context!11259 call!540487)) (h!71358 s!2326)))))

(declare-fun bm!540485 () Bool)

(assert (=> bm!540485 (= call!540490 call!540487)))

(declare-fun b!6341891 () Bool)

(declare-fun call!540488 () (InoxSet Context!11258))

(assert (=> b!6341891 (= e!3852028 call!540488)))

(declare-fun e!3852027 () (InoxSet Context!11258))

(declare-fun b!6341892 () Bool)

(assert (=> b!6341892 (= e!3852027 (store ((as const (Array Context!11258 Bool)) false) (ite c!1153018 lt!2362427 (Context!11259 call!540416)) true))))

(declare-fun b!6341893 () Bool)

(declare-fun e!3852029 () (InoxSet Context!11258))

(assert (=> b!6341893 (= e!3852029 call!540488)))

(declare-fun b!6341894 () Bool)

(declare-fun c!1153126 () Bool)

(assert (=> b!6341894 (= c!1153126 ((_ is Star!16245) (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(assert (=> b!6341894 (= e!3852028 e!3852029)))

(declare-fun b!6341895 () Bool)

(declare-fun e!3852031 () Bool)

(assert (=> b!6341895 (= e!3852031 (nullable!6238 (regOne!33002 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))))))

(declare-fun b!6341890 () Bool)

(declare-fun e!3852030 () (InoxSet Context!11258))

(assert (=> b!6341890 (= e!3852027 e!3852030)))

(assert (=> b!6341890 (= c!1153129 ((_ is Union!16245) (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun d!1990336 () Bool)

(declare-fun c!1153125 () Bool)

(assert (=> d!1990336 (= c!1153125 (and ((_ is ElementMatch!16245) (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))) (= (c!1152752 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))) (h!71358 s!2326))))))

(assert (=> d!1990336 (= (derivationStepZipperDown!1493 (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))) (ite c!1153018 lt!2362427 (Context!11259 call!540416)) (h!71358 s!2326)) e!3852027)))

(declare-fun b!6341896 () Bool)

(assert (=> b!6341896 (= e!3852029 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6341897 () Bool)

(assert (=> b!6341897 (= e!3852030 ((_ map or) call!540489 call!540486))))

(declare-fun bm!540486 () Bool)

(assert (=> bm!540486 (= call!540488 call!540491)))

(declare-fun b!6341898 () Bool)

(assert (=> b!6341898 (= c!1153128 e!3852031)))

(declare-fun res!2609792 () Bool)

(assert (=> b!6341898 (=> (not res!2609792) (not e!3852031))))

(assert (=> b!6341898 (= res!2609792 ((_ is Concat!25090) (ite c!1153018 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))

(assert (=> b!6341898 (= e!3852030 e!3852032)))

(assert (= (and d!1990336 c!1153125) b!6341892))

(assert (= (and d!1990336 (not c!1153125)) b!6341890))

(assert (= (and b!6341890 c!1153129) b!6341897))

(assert (= (and b!6341890 (not c!1153129)) b!6341898))

(assert (= (and b!6341898 res!2609792) b!6341895))

(assert (= (and b!6341898 c!1153128) b!6341888))

(assert (= (and b!6341898 (not c!1153128)) b!6341889))

(assert (= (and b!6341889 c!1153127) b!6341891))

(assert (= (and b!6341889 (not c!1153127)) b!6341894))

(assert (= (and b!6341894 c!1153126) b!6341893))

(assert (= (and b!6341894 (not c!1153126)) b!6341896))

(assert (= (or b!6341891 b!6341893) bm!540485))

(assert (= (or b!6341891 b!6341893) bm!540486))

(assert (= (or b!6341888 bm!540485) bm!540481))

(assert (= (or b!6341888 bm!540486) bm!540483))

(assert (= (or b!6341897 bm!540483) bm!540482))

(assert (= (or b!6341897 b!6341888) bm!540484))

(declare-fun m!7150264 () Bool)

(assert (=> bm!540482 m!7150264))

(declare-fun m!7150266 () Bool)

(assert (=> bm!540481 m!7150266))

(declare-fun m!7150268 () Bool)

(assert (=> b!6341895 m!7150268))

(declare-fun m!7150270 () Bool)

(assert (=> b!6341892 m!7150270))

(declare-fun m!7150272 () Bool)

(assert (=> bm!540484 m!7150272))

(assert (=> bm!540413 d!1990336))

(declare-fun d!1990338 () Bool)

(declare-fun c!1153130 () Bool)

(assert (=> d!1990338 (= c!1153130 (isEmpty!36992 (tail!12067 s!2326)))))

(declare-fun e!3852033 () Bool)

(assert (=> d!1990338 (= (matchZipper!2257 (derivationStepZipper!2211 lt!2362411 (head!12981 s!2326)) (tail!12067 s!2326)) e!3852033)))

(declare-fun b!6341899 () Bool)

(assert (=> b!6341899 (= e!3852033 (nullableZipper!2011 (derivationStepZipper!2211 lt!2362411 (head!12981 s!2326))))))

(declare-fun b!6341900 () Bool)

(assert (=> b!6341900 (= e!3852033 (matchZipper!2257 (derivationStepZipper!2211 (derivationStepZipper!2211 lt!2362411 (head!12981 s!2326)) (head!12981 (tail!12067 s!2326))) (tail!12067 (tail!12067 s!2326))))))

(assert (= (and d!1990338 c!1153130) b!6341899))

(assert (= (and d!1990338 (not c!1153130)) b!6341900))

(assert (=> d!1990338 m!7149736))

(assert (=> d!1990338 m!7149738))

(assert (=> b!6341899 m!7149832))

(declare-fun m!7150274 () Bool)

(assert (=> b!6341899 m!7150274))

(assert (=> b!6341900 m!7149736))

(assert (=> b!6341900 m!7150022))

(assert (=> b!6341900 m!7149832))

(assert (=> b!6341900 m!7150022))

(declare-fun m!7150276 () Bool)

(assert (=> b!6341900 m!7150276))

(assert (=> b!6341900 m!7149736))

(assert (=> b!6341900 m!7150016))

(assert (=> b!6341900 m!7150276))

(assert (=> b!6341900 m!7150016))

(declare-fun m!7150278 () Bool)

(assert (=> b!6341900 m!7150278))

(assert (=> b!6341418 d!1990338))

(declare-fun bs!1587767 () Bool)

(declare-fun d!1990340 () Bool)

(assert (= bs!1587767 (and d!1990340 b!6340632)))

(declare-fun lambda!348425 () Int)

(assert (=> bs!1587767 (= (= (head!12981 s!2326) (h!71358 s!2326)) (= lambda!348425 lambda!348315))))

(declare-fun bs!1587768 () Bool)

(assert (= bs!1587768 (and d!1990340 d!1990194)))

(assert (=> bs!1587768 (= (= (head!12981 s!2326) (h!71358 s!2326)) (= lambda!348425 lambda!348409))))

(declare-fun bs!1587769 () Bool)

(assert (= bs!1587769 (and d!1990340 d!1990248)))

(assert (=> bs!1587769 (= (= (head!12981 s!2326) (head!12981 (t!378620 s!2326))) (= lambda!348425 lambda!348414))))

(declare-fun bs!1587770 () Bool)

(assert (= bs!1587770 (and d!1990340 d!1990274)))

(assert (=> bs!1587770 (= (= (head!12981 s!2326) (head!12981 (t!378620 s!2326))) (= lambda!348425 lambda!348417))))

(assert (=> d!1990340 true))

(assert (=> d!1990340 (= (derivationStepZipper!2211 lt!2362411 (head!12981 s!2326)) (flatMap!1750 lt!2362411 lambda!348425))))

(declare-fun bs!1587771 () Bool)

(assert (= bs!1587771 d!1990340))

(declare-fun m!7150280 () Bool)

(assert (=> bs!1587771 m!7150280))

(assert (=> b!6341418 d!1990340))

(assert (=> b!6341418 d!1990228))

(assert (=> b!6341418 d!1990230))

(assert (=> d!1990130 d!1990128))

(assert (=> d!1990130 d!1990100))

(declare-fun d!1990342 () Bool)

(assert (=> d!1990342 (= (matchR!8428 r!7292 s!2326) (matchRSpec!3346 r!7292 s!2326))))

(assert (=> d!1990342 true))

(declare-fun _$88!5010 () Unit!158311)

(assert (=> d!1990342 (= (choose!47013 r!7292 s!2326) _$88!5010)))

(declare-fun bs!1587772 () Bool)

(assert (= bs!1587772 d!1990342))

(assert (=> bs!1587772 m!7149268))

(assert (=> bs!1587772 m!7149266))

(assert (=> d!1990130 d!1990342))

(assert (=> d!1990130 d!1990160))

(declare-fun d!1990344 () Bool)

(assert (=> d!1990344 (= (Exists!3315 (ite c!1152969 lambda!348400 lambda!348401)) (choose!47010 (ite c!1152969 lambda!348400 lambda!348401)))))

(declare-fun bs!1587773 () Bool)

(assert (= bs!1587773 d!1990344))

(declare-fun m!7150282 () Bool)

(assert (=> bs!1587773 m!7150282))

(assert (=> bm!540391 d!1990344))

(declare-fun d!1990346 () Bool)

(assert (=> d!1990346 (= (isEmpty!36989 (tail!12068 lt!2362431)) ((_ is Nil!64911) (tail!12068 lt!2362431)))))

(assert (=> b!6341389 d!1990346))

(declare-fun d!1990348 () Bool)

(assert (=> d!1990348 (= (tail!12068 lt!2362431) (t!378621 lt!2362431))))

(assert (=> b!6341389 d!1990348))

(declare-fun d!1990350 () Bool)

(assert (=> d!1990350 (= (head!12983 (unfocusZipperList!1666 zl!343)) (h!71359 (unfocusZipperList!1666 zl!343)))))

(assert (=> b!6341329 d!1990350))

(declare-fun d!1990352 () Bool)

(assert (=> d!1990352 (= (isConcat!1170 lt!2362573) ((_ is Concat!25090) lt!2362573))))

(assert (=> b!6341453 d!1990352))

(declare-fun d!1990354 () Bool)

(assert (=> d!1990354 (= (isDefined!12839 lt!2362511) (not (isEmpty!36993 lt!2362511)))))

(declare-fun bs!1587774 () Bool)

(assert (= bs!1587774 d!1990354))

(declare-fun m!7150284 () Bool)

(assert (=> bs!1587774 m!7150284))

(assert (=> b!6341038 d!1990354))

(assert (=> d!1990152 d!1990234))

(declare-fun d!1990356 () Bool)

(assert (=> d!1990356 (= (nullable!6238 r!7292) (nullableFct!2185 r!7292))))

(declare-fun bs!1587775 () Bool)

(assert (= bs!1587775 d!1990356))

(declare-fun m!7150286 () Bool)

(assert (=> bs!1587775 m!7150286))

(assert (=> b!6341293 d!1990356))

(declare-fun d!1990358 () Bool)

(assert (=> d!1990358 true))

(declare-fun setRes!43164 () Bool)

(assert (=> d!1990358 setRes!43164))

(declare-fun condSetEmpty!43164 () Bool)

(declare-fun res!2609793 () (InoxSet Context!11258))

(assert (=> d!1990358 (= condSetEmpty!43164 (= res!2609793 ((as const (Array Context!11258 Bool)) false)))))

(assert (=> d!1990358 (= (choose!47024 z!1189 lambda!348315) res!2609793)))

(declare-fun setIsEmpty!43164 () Bool)

(assert (=> setIsEmpty!43164 setRes!43164))

(declare-fun setElem!43164 () Context!11258)

(declare-fun tp!1768422 () Bool)

(declare-fun e!3852034 () Bool)

(declare-fun setNonEmpty!43164 () Bool)

(assert (=> setNonEmpty!43164 (= setRes!43164 (and tp!1768422 (inv!83859 setElem!43164) e!3852034))))

(declare-fun setRest!43164 () (InoxSet Context!11258))

(assert (=> setNonEmpty!43164 (= res!2609793 ((_ map or) (store ((as const (Array Context!11258 Bool)) false) setElem!43164 true) setRest!43164))))

(declare-fun b!6341901 () Bool)

(declare-fun tp!1768421 () Bool)

(assert (=> b!6341901 (= e!3852034 tp!1768421)))

(assert (= (and d!1990358 condSetEmpty!43164) setIsEmpty!43164))

(assert (= (and d!1990358 (not condSetEmpty!43164)) setNonEmpty!43164))

(assert (= setNonEmpty!43164 b!6341901))

(declare-fun m!7150288 () Bool)

(assert (=> setNonEmpty!43164 m!7150288))

(assert (=> d!1990172 d!1990358))

(declare-fun b!6341902 () Bool)

(declare-fun e!3852035 () (InoxSet Context!11258))

(declare-fun call!540492 () (InoxSet Context!11258))

(assert (=> b!6341902 (= e!3852035 call!540492)))

(declare-fun b!6341903 () Bool)

(assert (=> b!6341903 (= e!3852035 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540487 () Bool)

(assert (=> bm!540487 (= call!540492 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343))))))) (h!71358 s!2326)))))

(declare-fun b!6341904 () Bool)

(declare-fun e!3852036 () Bool)

(assert (=> b!6341904 (= e!3852036 (nullable!6238 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343))))))))))

(declare-fun d!1990360 () Bool)

(declare-fun c!1153131 () Bool)

(assert (=> d!1990360 (= c!1153131 e!3852036)))

(declare-fun res!2609794 () Bool)

(assert (=> d!1990360 (=> (not res!2609794) (not e!3852036))))

(assert (=> d!1990360 (= res!2609794 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun e!3852037 () (InoxSet Context!11258))

(assert (=> d!1990360 (= (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))) (h!71358 s!2326)) e!3852037)))

(declare-fun b!6341905 () Bool)

(assert (=> b!6341905 (= e!3852037 ((_ map or) call!540492 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343))))))) (h!71358 s!2326))))))

(declare-fun b!6341906 () Bool)

(assert (=> b!6341906 (= e!3852037 e!3852035)))

(declare-fun c!1153132 () Bool)

(assert (=> b!6341906 (= c!1153132 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(assert (= (and d!1990360 res!2609794) b!6341904))

(assert (= (and d!1990360 c!1153131) b!6341905))

(assert (= (and d!1990360 (not c!1153131)) b!6341906))

(assert (= (and b!6341906 c!1153132) b!6341902))

(assert (= (and b!6341906 (not c!1153132)) b!6341903))

(assert (= (or b!6341905 b!6341902) bm!540487))

(declare-fun m!7150290 () Bool)

(assert (=> bm!540487 m!7150290))

(declare-fun m!7150292 () Bool)

(assert (=> b!6341904 m!7150292))

(declare-fun m!7150294 () Bool)

(assert (=> b!6341905 m!7150294))

(assert (=> b!6341485 d!1990360))

(assert (=> d!1990156 d!1990158))

(assert (=> d!1990156 d!1990152))

(declare-fun d!1990362 () Bool)

(assert (=> d!1990362 (= (matchR!8428 lt!2362424 s!2326) (matchZipper!2257 lt!2362411 s!2326))))

(assert (=> d!1990362 true))

(declare-fun _$44!1627 () Unit!158311)

(assert (=> d!1990362 (= (choose!47021 lt!2362411 lt!2362432 lt!2362424 s!2326) _$44!1627)))

(declare-fun bs!1587776 () Bool)

(assert (= bs!1587776 d!1990362))

(assert (=> bs!1587776 m!7149246))

(assert (=> bs!1587776 m!7149258))

(assert (=> d!1990156 d!1990362))

(declare-fun b!6341907 () Bool)

(declare-fun res!2609799 () Bool)

(declare-fun e!3852039 () Bool)

(assert (=> b!6341907 (=> (not res!2609799) (not e!3852039))))

(declare-fun call!540495 () Bool)

(assert (=> b!6341907 (= res!2609799 call!540495)))

(declare-fun e!3852038 () Bool)

(assert (=> b!6341907 (= e!3852038 e!3852039)))

(declare-fun b!6341908 () Bool)

(declare-fun e!3852040 () Bool)

(assert (=> b!6341908 (= e!3852040 e!3852038)))

(declare-fun c!1153133 () Bool)

(assert (=> b!6341908 (= c!1153133 ((_ is Union!16245) lt!2362424))))

(declare-fun b!6341909 () Bool)

(declare-fun e!3852044 () Bool)

(declare-fun call!540493 () Bool)

(assert (=> b!6341909 (= e!3852044 call!540493)))

(declare-fun b!6341910 () Bool)

(declare-fun res!2609798 () Bool)

(declare-fun e!3852041 () Bool)

(assert (=> b!6341910 (=> res!2609798 e!3852041)))

(assert (=> b!6341910 (= res!2609798 (not ((_ is Concat!25090) lt!2362424)))))

(assert (=> b!6341910 (= e!3852038 e!3852041)))

(declare-fun b!6341911 () Bool)

(declare-fun e!3852042 () Bool)

(assert (=> b!6341911 (= e!3852040 e!3852042)))

(declare-fun res!2609796 () Bool)

(assert (=> b!6341911 (= res!2609796 (not (nullable!6238 (reg!16574 lt!2362424))))))

(assert (=> b!6341911 (=> (not res!2609796) (not e!3852042))))

(declare-fun b!6341912 () Bool)

(assert (=> b!6341912 (= e!3852041 e!3852044)))

(declare-fun res!2609797 () Bool)

(assert (=> b!6341912 (=> (not res!2609797) (not e!3852044))))

(assert (=> b!6341912 (= res!2609797 call!540495)))

(declare-fun d!1990364 () Bool)

(declare-fun res!2609795 () Bool)

(declare-fun e!3852043 () Bool)

(assert (=> d!1990364 (=> res!2609795 e!3852043)))

(assert (=> d!1990364 (= res!2609795 ((_ is ElementMatch!16245) lt!2362424))))

(assert (=> d!1990364 (= (validRegex!7981 lt!2362424) e!3852043)))

(declare-fun c!1153134 () Bool)

(declare-fun call!540494 () Bool)

(declare-fun bm!540488 () Bool)

(assert (=> bm!540488 (= call!540494 (validRegex!7981 (ite c!1153134 (reg!16574 lt!2362424) (ite c!1153133 (regTwo!33003 lt!2362424) (regTwo!33002 lt!2362424)))))))

(declare-fun bm!540489 () Bool)

(assert (=> bm!540489 (= call!540493 call!540494)))

(declare-fun b!6341913 () Bool)

(assert (=> b!6341913 (= e!3852039 call!540493)))

(declare-fun bm!540490 () Bool)

(assert (=> bm!540490 (= call!540495 (validRegex!7981 (ite c!1153133 (regOne!33003 lt!2362424) (regOne!33002 lt!2362424))))))

(declare-fun b!6341914 () Bool)

(assert (=> b!6341914 (= e!3852043 e!3852040)))

(assert (=> b!6341914 (= c!1153134 ((_ is Star!16245) lt!2362424))))

(declare-fun b!6341915 () Bool)

(assert (=> b!6341915 (= e!3852042 call!540494)))

(assert (= (and d!1990364 (not res!2609795)) b!6341914))

(assert (= (and b!6341914 c!1153134) b!6341911))

(assert (= (and b!6341914 (not c!1153134)) b!6341908))

(assert (= (and b!6341911 res!2609796) b!6341915))

(assert (= (and b!6341908 c!1153133) b!6341907))

(assert (= (and b!6341908 (not c!1153133)) b!6341910))

(assert (= (and b!6341907 res!2609799) b!6341913))

(assert (= (and b!6341910 (not res!2609798)) b!6341912))

(assert (= (and b!6341912 res!2609797) b!6341909))

(assert (= (or b!6341913 b!6341909) bm!540489))

(assert (= (or b!6341907 b!6341912) bm!540490))

(assert (= (or b!6341915 bm!540489) bm!540488))

(declare-fun m!7150296 () Bool)

(assert (=> b!6341911 m!7150296))

(declare-fun m!7150298 () Bool)

(assert (=> bm!540488 m!7150298))

(declare-fun m!7150300 () Bool)

(assert (=> bm!540490 m!7150300))

(assert (=> d!1990156 d!1990364))

(declare-fun d!1990366 () Bool)

(assert (=> d!1990366 (= (isEmpty!36989 (tail!12068 (unfocusZipperList!1666 zl!343))) ((_ is Nil!64911) (tail!12068 (unfocusZipperList!1666 zl!343))))))

(assert (=> b!6341325 d!1990366))

(declare-fun d!1990368 () Bool)

(assert (=> d!1990368 (= (tail!12068 (unfocusZipperList!1666 zl!343)) (t!378621 (unfocusZipperList!1666 zl!343)))))

(assert (=> b!6341325 d!1990368))

(declare-fun c!1153137 () Bool)

(declare-fun call!540497 () List!65035)

(declare-fun bm!540491 () Bool)

(declare-fun c!1153138 () Bool)

(assert (=> bm!540491 (= call!540497 ($colon$colon!2105 (exprs!6129 (ite c!1152829 (Context!11259 lt!2362429) (Context!11259 call!540349))) (ite (or c!1153138 c!1153137) (regTwo!33002 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))))))

(declare-fun b!6341916 () Bool)

(declare-fun e!3852050 () (InoxSet Context!11258))

(declare-fun call!540499 () (InoxSet Context!11258))

(declare-fun call!540501 () (InoxSet Context!11258))

(assert (=> b!6341916 (= e!3852050 ((_ map or) call!540499 call!540501))))

(declare-fun b!6341917 () Bool)

(declare-fun e!3852046 () (InoxSet Context!11258))

(assert (=> b!6341917 (= e!3852050 e!3852046)))

(assert (=> b!6341917 (= c!1153137 ((_ is Concat!25090) (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun c!1153139 () Bool)

(declare-fun bm!540492 () Bool)

(declare-fun call!540500 () List!65035)

(declare-fun call!540496 () (InoxSet Context!11258))

(assert (=> bm!540492 (= call!540496 (derivationStepZipperDown!1493 (ite c!1153139 (regTwo!33003 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (ite c!1153138 (regTwo!33002 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (ite c!1153137 (regOne!33002 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (reg!16574 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))))) (ite (or c!1153139 c!1153138) (ite c!1152829 (Context!11259 lt!2362429) (Context!11259 call!540349)) (Context!11259 call!540500)) (h!71358 s!2326)))))

(declare-fun bm!540493 () Bool)

(assert (=> bm!540493 (= call!540501 call!540496)))

(declare-fun bm!540494 () Bool)

(assert (=> bm!540494 (= call!540499 (derivationStepZipperDown!1493 (ite c!1153139 (regOne!33003 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (regOne!33002 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))) (ite c!1153139 (ite c!1152829 (Context!11259 lt!2362429) (Context!11259 call!540349)) (Context!11259 call!540497)) (h!71358 s!2326)))))

(declare-fun bm!540495 () Bool)

(assert (=> bm!540495 (= call!540500 call!540497)))

(declare-fun b!6341919 () Bool)

(declare-fun call!540498 () (InoxSet Context!11258))

(assert (=> b!6341919 (= e!3852046 call!540498)))

(declare-fun e!3852045 () (InoxSet Context!11258))

(declare-fun b!6341920 () Bool)

(assert (=> b!6341920 (= e!3852045 (store ((as const (Array Context!11258 Bool)) false) (ite c!1152829 (Context!11259 lt!2362429) (Context!11259 call!540349)) true))))

(declare-fun b!6341921 () Bool)

(declare-fun e!3852047 () (InoxSet Context!11258))

(assert (=> b!6341921 (= e!3852047 call!540498)))

(declare-fun b!6341922 () Bool)

(declare-fun c!1153136 () Bool)

(assert (=> b!6341922 (= c!1153136 ((_ is Star!16245) (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(assert (=> b!6341922 (= e!3852046 e!3852047)))

(declare-fun b!6341923 () Bool)

(declare-fun e!3852049 () Bool)

(assert (=> b!6341923 (= e!3852049 (nullable!6238 (regOne!33002 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))))))

(declare-fun b!6341918 () Bool)

(declare-fun e!3852048 () (InoxSet Context!11258))

(assert (=> b!6341918 (= e!3852045 e!3852048)))

(assert (=> b!6341918 (= c!1153139 ((_ is Union!16245) (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun c!1153135 () Bool)

(declare-fun d!1990370 () Bool)

(assert (=> d!1990370 (= c!1153135 (and ((_ is ElementMatch!16245) (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (= (c!1152752 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))) (h!71358 s!2326))))))

(assert (=> d!1990370 (= (derivationStepZipperDown!1493 (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))) (ite c!1152829 (Context!11259 lt!2362429) (Context!11259 call!540349)) (h!71358 s!2326)) e!3852045)))

(declare-fun b!6341924 () Bool)

(assert (=> b!6341924 (= e!3852047 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6341925 () Bool)

(assert (=> b!6341925 (= e!3852048 ((_ map or) call!540499 call!540496))))

(declare-fun bm!540496 () Bool)

(assert (=> bm!540496 (= call!540498 call!540501)))

(declare-fun b!6341926 () Bool)

(assert (=> b!6341926 (= c!1153138 e!3852049)))

(declare-fun res!2609800 () Bool)

(assert (=> b!6341926 (=> (not res!2609800) (not e!3852049))))

(assert (=> b!6341926 (= res!2609800 ((_ is Concat!25090) (ite c!1152829 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(assert (=> b!6341926 (= e!3852048 e!3852050)))

(assert (= (and d!1990370 c!1153135) b!6341920))

(assert (= (and d!1990370 (not c!1153135)) b!6341918))

(assert (= (and b!6341918 c!1153139) b!6341925))

(assert (= (and b!6341918 (not c!1153139)) b!6341926))

(assert (= (and b!6341926 res!2609800) b!6341923))

(assert (= (and b!6341926 c!1153138) b!6341916))

(assert (= (and b!6341926 (not c!1153138)) b!6341917))

(assert (= (and b!6341917 c!1153137) b!6341919))

(assert (= (and b!6341917 (not c!1153137)) b!6341922))

(assert (= (and b!6341922 c!1153136) b!6341921))

(assert (= (and b!6341922 (not c!1153136)) b!6341924))

(assert (= (or b!6341919 b!6341921) bm!540495))

(assert (= (or b!6341919 b!6341921) bm!540496))

(assert (= (or b!6341916 bm!540495) bm!540491))

(assert (= (or b!6341916 bm!540496) bm!540493))

(assert (= (or b!6341925 bm!540493) bm!540492))

(assert (= (or b!6341925 b!6341916) bm!540494))

(declare-fun m!7150302 () Bool)

(assert (=> bm!540492 m!7150302))

(declare-fun m!7150304 () Bool)

(assert (=> bm!540491 m!7150304))

(declare-fun m!7150306 () Bool)

(assert (=> b!6341923 m!7150306))

(declare-fun m!7150308 () Bool)

(assert (=> b!6341920 m!7150308))

(declare-fun m!7150310 () Bool)

(assert (=> bm!540494 m!7150310))

(assert (=> bm!540346 d!1990370))

(declare-fun d!1990372 () Bool)

(assert (=> d!1990372 true))

(assert (=> d!1990372 true))

(declare-fun res!2609801 () Bool)

(assert (=> d!1990372 (= (choose!47010 lambda!348314) res!2609801)))

(assert (=> d!1990066 d!1990372))

(declare-fun d!1990374 () Bool)

(assert (=> d!1990374 (= (nullable!6238 (h!71359 (exprs!6129 lt!2362427))) (nullableFct!2185 (h!71359 (exprs!6129 lt!2362427))))))

(declare-fun bs!1587777 () Bool)

(assert (= bs!1587777 d!1990374))

(declare-fun m!7150312 () Bool)

(assert (=> bs!1587777 m!7150312))

(assert (=> b!6341500 d!1990374))

(declare-fun b!6341927 () Bool)

(declare-fun res!2609806 () Bool)

(declare-fun e!3852052 () Bool)

(assert (=> b!6341927 (=> (not res!2609806) (not e!3852052))))

(declare-fun call!540504 () Bool)

(assert (=> b!6341927 (= res!2609806 call!540504)))

(declare-fun e!3852051 () Bool)

(assert (=> b!6341927 (= e!3852051 e!3852052)))

(declare-fun b!6341928 () Bool)

(declare-fun e!3852053 () Bool)

(assert (=> b!6341928 (= e!3852053 e!3852051)))

(declare-fun c!1153140 () Bool)

(assert (=> b!6341928 (= c!1153140 ((_ is Union!16245) (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))))))

(declare-fun b!6341929 () Bool)

(declare-fun e!3852057 () Bool)

(declare-fun call!540502 () Bool)

(assert (=> b!6341929 (= e!3852057 call!540502)))

(declare-fun b!6341930 () Bool)

(declare-fun res!2609805 () Bool)

(declare-fun e!3852054 () Bool)

(assert (=> b!6341930 (=> res!2609805 e!3852054)))

(assert (=> b!6341930 (= res!2609805 (not ((_ is Concat!25090) (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292)))))))

(assert (=> b!6341930 (= e!3852051 e!3852054)))

(declare-fun b!6341931 () Bool)

(declare-fun e!3852055 () Bool)

(assert (=> b!6341931 (= e!3852053 e!3852055)))

(declare-fun res!2609803 () Bool)

(assert (=> b!6341931 (= res!2609803 (not (nullable!6238 (reg!16574 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))))))))

(assert (=> b!6341931 (=> (not res!2609803) (not e!3852055))))

(declare-fun b!6341932 () Bool)

(assert (=> b!6341932 (= e!3852054 e!3852057)))

(declare-fun res!2609804 () Bool)

(assert (=> b!6341932 (=> (not res!2609804) (not e!3852057))))

(assert (=> b!6341932 (= res!2609804 call!540504)))

(declare-fun d!1990376 () Bool)

(declare-fun res!2609802 () Bool)

(declare-fun e!3852056 () Bool)

(assert (=> d!1990376 (=> res!2609802 e!3852056)))

(assert (=> d!1990376 (= res!2609802 ((_ is ElementMatch!16245) (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))))))

(assert (=> d!1990376 (= (validRegex!7981 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))) e!3852056)))

(declare-fun c!1153141 () Bool)

(declare-fun bm!540497 () Bool)

(declare-fun call!540503 () Bool)

(assert (=> bm!540497 (= call!540503 (validRegex!7981 (ite c!1153141 (reg!16574 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))) (ite c!1153140 (regTwo!33003 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))) (regTwo!33002 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292)))))))))

(declare-fun bm!540498 () Bool)

(assert (=> bm!540498 (= call!540502 call!540503)))

(declare-fun b!6341933 () Bool)

(assert (=> b!6341933 (= e!3852052 call!540502)))

(declare-fun bm!540499 () Bool)

(assert (=> bm!540499 (= call!540504 (validRegex!7981 (ite c!1153140 (regOne!33003 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))) (regOne!33002 (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))))))))

(declare-fun b!6341934 () Bool)

(assert (=> b!6341934 (= e!3852056 e!3852053)))

(assert (=> b!6341934 (= c!1153141 ((_ is Star!16245) (ite c!1152999 (regOne!33003 r!7292) (regOne!33002 r!7292))))))

(declare-fun b!6341935 () Bool)

(assert (=> b!6341935 (= e!3852055 call!540503)))

(assert (= (and d!1990376 (not res!2609802)) b!6341934))

(assert (= (and b!6341934 c!1153141) b!6341931))

(assert (= (and b!6341934 (not c!1153141)) b!6341928))

(assert (= (and b!6341931 res!2609803) b!6341935))

(assert (= (and b!6341928 c!1153140) b!6341927))

(assert (= (and b!6341928 (not c!1153140)) b!6341930))

(assert (= (and b!6341927 res!2609806) b!6341933))

(assert (= (and b!6341930 (not res!2609805)) b!6341932))

(assert (= (and b!6341932 res!2609804) b!6341929))

(assert (= (or b!6341933 b!6341929) bm!540498))

(assert (= (or b!6341927 b!6341932) bm!540499))

(assert (= (or b!6341935 bm!540498) bm!540497))

(declare-fun m!7150314 () Bool)

(assert (=> b!6341931 m!7150314))

(declare-fun m!7150316 () Bool)

(assert (=> bm!540497 m!7150316))

(declare-fun m!7150318 () Bool)

(assert (=> bm!540499 m!7150318))

(assert (=> bm!540405 d!1990376))

(declare-fun d!1990378 () Bool)

(declare-fun res!2609807 () Bool)

(declare-fun e!3852058 () Bool)

(assert (=> d!1990378 (=> res!2609807 e!3852058)))

(assert (=> d!1990378 (= res!2609807 ((_ is Nil!64912) lt!2362432))))

(assert (=> d!1990378 (= (forall!15403 lt!2362432 lambda!348340) e!3852058)))

(declare-fun b!6341936 () Bool)

(declare-fun e!3852059 () Bool)

(assert (=> b!6341936 (= e!3852058 e!3852059)))

(declare-fun res!2609808 () Bool)

(assert (=> b!6341936 (=> (not res!2609808) (not e!3852059))))

(assert (=> b!6341936 (= res!2609808 (dynLambda!25728 lambda!348340 (h!71360 lt!2362432)))))

(declare-fun b!6341937 () Bool)

(assert (=> b!6341937 (= e!3852059 (forall!15403 (t!378622 lt!2362432) lambda!348340))))

(assert (= (and d!1990378 (not res!2609807)) b!6341936))

(assert (= (and b!6341936 res!2609808) b!6341937))

(declare-fun b_lambda!241323 () Bool)

(assert (=> (not b_lambda!241323) (not b!6341936)))

(declare-fun m!7150320 () Bool)

(assert (=> b!6341936 m!7150320))

(declare-fun m!7150322 () Bool)

(assert (=> b!6341937 m!7150322))

(assert (=> b!6340739 d!1990378))

(declare-fun d!1990380 () Bool)

(assert (=> d!1990380 (= (isConcat!1170 lt!2362567) ((_ is Concat!25090) lt!2362567))))

(assert (=> b!6341381 d!1990380))

(declare-fun d!1990382 () Bool)

(assert (=> d!1990382 (= (nullable!6238 lt!2362424) (nullableFct!2185 lt!2362424))))

(declare-fun bs!1587778 () Bool)

(assert (= bs!1587778 d!1990382))

(declare-fun m!7150324 () Bool)

(assert (=> bs!1587778 m!7150324))

(assert (=> b!6341432 d!1990382))

(declare-fun bs!1587779 () Bool)

(declare-fun d!1990384 () Bool)

(assert (= bs!1587779 (and d!1990384 d!1990162)))

(declare-fun lambda!348426 () Int)

(assert (=> bs!1587779 (= lambda!348426 lambda!348406)))

(declare-fun bs!1587780 () Bool)

(assert (= bs!1587780 (and d!1990384 d!1990294)))

(assert (=> bs!1587780 (= lambda!348426 lambda!348418)))

(declare-fun bs!1587781 () Bool)

(assert (= bs!1587781 (and d!1990384 d!1989984)))

(assert (=> bs!1587781 (= lambda!348426 lambda!348318)))

(declare-fun bs!1587782 () Bool)

(assert (= bs!1587782 (and d!1990384 d!1990264)))

(assert (=> bs!1587782 (= lambda!348426 lambda!348416)))

(declare-fun bs!1587783 () Bool)

(assert (= bs!1587783 (and d!1990384 d!1990132)))

(assert (=> bs!1587783 (= lambda!348426 lambda!348396)))

(declare-fun bs!1587784 () Bool)

(assert (= bs!1587784 (and d!1990384 d!1990148)))

(assert (=> bs!1587784 (= lambda!348426 lambda!348404)))

(declare-fun bs!1587785 () Bool)

(assert (= bs!1587785 (and d!1990384 d!1990320)))

(assert (=> bs!1587785 (= lambda!348426 lambda!348424)))

(declare-fun bs!1587786 () Bool)

(assert (= bs!1587786 (and d!1990384 d!1990134)))

(assert (=> bs!1587786 (= lambda!348426 lambda!348399)))

(declare-fun bs!1587787 () Bool)

(assert (= bs!1587787 (and d!1990384 d!1990216)))

(assert (=> bs!1587787 (= lambda!348426 lambda!348413)))

(declare-fun bs!1587788 () Bool)

(assert (= bs!1587788 (and d!1990384 d!1990154)))

(assert (=> bs!1587788 (= lambda!348426 lambda!348405)))

(declare-fun bs!1587789 () Bool)

(assert (= bs!1587789 (and d!1990384 d!1989990)))

(assert (=> bs!1587789 (= lambda!348426 lambda!348319)))

(declare-fun b!6341938 () Bool)

(declare-fun e!3852062 () Bool)

(declare-fun lt!2362611 () Regex!16245)

(assert (=> b!6341938 (= e!3852062 (= lt!2362611 (head!12983 (t!378621 lt!2362429))))))

(declare-fun b!6341939 () Bool)

(assert (=> b!6341939 (= e!3852062 (isConcat!1170 lt!2362611))))

(declare-fun b!6341940 () Bool)

(declare-fun e!3852061 () Regex!16245)

(assert (=> b!6341940 (= e!3852061 EmptyExpr!16245)))

(declare-fun b!6341941 () Bool)

(declare-fun e!3852064 () Regex!16245)

(assert (=> b!6341941 (= e!3852064 e!3852061)))

(declare-fun c!1153143 () Bool)

(assert (=> b!6341941 (= c!1153143 ((_ is Cons!64911) (t!378621 lt!2362429)))))

(declare-fun b!6341942 () Bool)

(declare-fun e!3852063 () Bool)

(assert (=> b!6341942 (= e!3852063 (isEmpty!36989 (t!378621 (t!378621 lt!2362429))))))

(declare-fun b!6341944 () Bool)

(declare-fun e!3852060 () Bool)

(declare-fun e!3852065 () Bool)

(assert (=> b!6341944 (= e!3852060 e!3852065)))

(declare-fun c!1153144 () Bool)

(assert (=> b!6341944 (= c!1153144 (isEmpty!36989 (t!378621 lt!2362429)))))

(declare-fun b!6341945 () Bool)

(assert (=> b!6341945 (= e!3852065 (isEmptyExpr!1647 lt!2362611))))

(declare-fun b!6341946 () Bool)

(assert (=> b!6341946 (= e!3852061 (Concat!25090 (h!71359 (t!378621 lt!2362429)) (generalisedConcat!1842 (t!378621 (t!378621 lt!2362429)))))))

(declare-fun b!6341947 () Bool)

(assert (=> b!6341947 (= e!3852065 e!3852062)))

(declare-fun c!1153145 () Bool)

(assert (=> b!6341947 (= c!1153145 (isEmpty!36989 (tail!12068 (t!378621 lt!2362429))))))

(declare-fun b!6341943 () Bool)

(assert (=> b!6341943 (= e!3852064 (h!71359 (t!378621 lt!2362429)))))

(assert (=> d!1990384 e!3852060))

(declare-fun res!2609809 () Bool)

(assert (=> d!1990384 (=> (not res!2609809) (not e!3852060))))

(assert (=> d!1990384 (= res!2609809 (validRegex!7981 lt!2362611))))

(assert (=> d!1990384 (= lt!2362611 e!3852064)))

(declare-fun c!1153142 () Bool)

(assert (=> d!1990384 (= c!1153142 e!3852063)))

(declare-fun res!2609810 () Bool)

(assert (=> d!1990384 (=> (not res!2609810) (not e!3852063))))

(assert (=> d!1990384 (= res!2609810 ((_ is Cons!64911) (t!378621 lt!2362429)))))

(assert (=> d!1990384 (forall!15401 (t!378621 lt!2362429) lambda!348426)))

(assert (=> d!1990384 (= (generalisedConcat!1842 (t!378621 lt!2362429)) lt!2362611)))

(assert (= (and d!1990384 res!2609810) b!6341942))

(assert (= (and d!1990384 c!1153142) b!6341943))

(assert (= (and d!1990384 (not c!1153142)) b!6341941))

(assert (= (and b!6341941 c!1153143) b!6341946))

(assert (= (and b!6341941 (not c!1153143)) b!6341940))

(assert (= (and d!1990384 res!2609809) b!6341944))

(assert (= (and b!6341944 c!1153144) b!6341945))

(assert (= (and b!6341944 (not c!1153144)) b!6341947))

(assert (= (and b!6341947 c!1153145) b!6341938))

(assert (= (and b!6341947 (not c!1153145)) b!6341939))

(declare-fun m!7150326 () Bool)

(assert (=> b!6341942 m!7150326))

(declare-fun m!7150328 () Bool)

(assert (=> b!6341947 m!7150328))

(assert (=> b!6341947 m!7150328))

(declare-fun m!7150330 () Bool)

(assert (=> b!6341947 m!7150330))

(declare-fun m!7150332 () Bool)

(assert (=> d!1990384 m!7150332))

(declare-fun m!7150334 () Bool)

(assert (=> d!1990384 m!7150334))

(assert (=> b!6341944 m!7149836))

(declare-fun m!7150336 () Bool)

(assert (=> b!6341938 m!7150336))

(declare-fun m!7150338 () Bool)

(assert (=> b!6341945 m!7150338))

(declare-fun m!7150340 () Bool)

(assert (=> b!6341939 m!7150340))

(declare-fun m!7150342 () Bool)

(assert (=> b!6341946 m!7150342))

(assert (=> b!6341427 d!1990384))

(assert (=> b!6341338 d!1990162))

(declare-fun bs!1587790 () Bool)

(declare-fun d!1990386 () Bool)

(assert (= bs!1587790 (and d!1990386 d!1990162)))

(declare-fun lambda!348427 () Int)

(assert (=> bs!1587790 (= lambda!348427 lambda!348406)))

(declare-fun bs!1587791 () Bool)

(assert (= bs!1587791 (and d!1990386 d!1990294)))

(assert (=> bs!1587791 (= lambda!348427 lambda!348418)))

(declare-fun bs!1587792 () Bool)

(assert (= bs!1587792 (and d!1990386 d!1989984)))

(assert (=> bs!1587792 (= lambda!348427 lambda!348318)))

(declare-fun bs!1587793 () Bool)

(assert (= bs!1587793 (and d!1990386 d!1990264)))

(assert (=> bs!1587793 (= lambda!348427 lambda!348416)))

(declare-fun bs!1587794 () Bool)

(assert (= bs!1587794 (and d!1990386 d!1990132)))

(assert (=> bs!1587794 (= lambda!348427 lambda!348396)))

(declare-fun bs!1587795 () Bool)

(assert (= bs!1587795 (and d!1990386 d!1990148)))

(assert (=> bs!1587795 (= lambda!348427 lambda!348404)))

(declare-fun bs!1587796 () Bool)

(assert (= bs!1587796 (and d!1990386 d!1990320)))

(assert (=> bs!1587796 (= lambda!348427 lambda!348424)))

(declare-fun bs!1587797 () Bool)

(assert (= bs!1587797 (and d!1990386 d!1990134)))

(assert (=> bs!1587797 (= lambda!348427 lambda!348399)))

(declare-fun bs!1587798 () Bool)

(assert (= bs!1587798 (and d!1990386 d!1990216)))

(assert (=> bs!1587798 (= lambda!348427 lambda!348413)))

(declare-fun bs!1587799 () Bool)

(assert (= bs!1587799 (and d!1990386 d!1990384)))

(assert (=> bs!1587799 (= lambda!348427 lambda!348426)))

(declare-fun bs!1587800 () Bool)

(assert (= bs!1587800 (and d!1990386 d!1990154)))

(assert (=> bs!1587800 (= lambda!348427 lambda!348405)))

(declare-fun bs!1587801 () Bool)

(assert (= bs!1587801 (and d!1990386 d!1989990)))

(assert (=> bs!1587801 (= lambda!348427 lambda!348319)))

(declare-fun lt!2362612 () List!65035)

(assert (=> d!1990386 (forall!15401 lt!2362612 lambda!348427)))

(declare-fun e!3852066 () List!65035)

(assert (=> d!1990386 (= lt!2362612 e!3852066)))

(declare-fun c!1153146 () Bool)

(assert (=> d!1990386 (= c!1153146 ((_ is Cons!64912) (t!378622 zl!343)))))

(assert (=> d!1990386 (= (unfocusZipperList!1666 (t!378622 zl!343)) lt!2362612)))

(declare-fun b!6341948 () Bool)

(assert (=> b!6341948 (= e!3852066 (Cons!64911 (generalisedConcat!1842 (exprs!6129 (h!71360 (t!378622 zl!343)))) (unfocusZipperList!1666 (t!378622 (t!378622 zl!343)))))))

(declare-fun b!6341949 () Bool)

(assert (=> b!6341949 (= e!3852066 Nil!64911)))

(assert (= (and d!1990386 c!1153146) b!6341948))

(assert (= (and d!1990386 (not c!1153146)) b!6341949))

(declare-fun m!7150344 () Bool)

(assert (=> d!1990386 m!7150344))

(declare-fun m!7150346 () Bool)

(assert (=> b!6341948 m!7150346))

(declare-fun m!7150348 () Bool)

(assert (=> b!6341948 m!7150348))

(assert (=> b!6341338 d!1990386))

(declare-fun d!1990388 () Bool)

(assert (=> d!1990388 (= (isEmpty!36989 (t!378621 lt!2362429)) ((_ is Nil!64911) (t!378621 lt!2362429)))))

(assert (=> b!6341423 d!1990388))

(declare-fun bs!1587802 () Bool)

(declare-fun b!6341956 () Bool)

(assert (= bs!1587802 (and b!6341956 d!1990084)))

(declare-fun lambda!348428 () Int)

(assert (=> bs!1587802 (not (= lambda!348428 lambda!348375))))

(declare-fun bs!1587803 () Bool)

(assert (= bs!1587803 (and b!6341956 d!1990306)))

(assert (=> bs!1587803 (not (= lambda!348428 lambda!348423))))

(declare-fun bs!1587804 () Bool)

(assert (= bs!1587804 (and b!6341956 b!6341243)))

(assert (=> bs!1587804 (= (and (= (reg!16574 (regTwo!33003 lt!2362424)) (reg!16574 r!7292)) (= (regTwo!33003 lt!2362424) r!7292)) (= lambda!348428 lambda!348392))))

(declare-fun bs!1587805 () Bool)

(assert (= bs!1587805 (and b!6341956 b!6341357)))

(assert (=> bs!1587805 (not (= lambda!348428 lambda!348401))))

(declare-fun bs!1587806 () Bool)

(assert (= bs!1587806 (and b!6341956 b!6341245)))

(assert (=> bs!1587806 (not (= lambda!348428 lambda!348393))))

(assert (=> bs!1587802 (not (= lambda!348428 lambda!348376))))

(declare-fun bs!1587807 () Bool)

(assert (= bs!1587807 (and b!6341956 b!6341828)))

(assert (=> bs!1587807 (not (= lambda!348428 lambda!348420))))

(declare-fun bs!1587808 () Bool)

(assert (= bs!1587808 (and b!6341956 b!6340627)))

(assert (=> bs!1587808 (not (= lambda!348428 lambda!348314))))

(declare-fun bs!1587809 () Bool)

(assert (= bs!1587809 (and b!6341956 b!6341355)))

(assert (=> bs!1587809 (= (and (= (reg!16574 (regTwo!33003 lt!2362424)) (reg!16574 lt!2362424)) (= (regTwo!33003 lt!2362424) lt!2362424)) (= lambda!348428 lambda!348400))))

(declare-fun bs!1587810 () Bool)

(assert (= bs!1587810 (and b!6341956 d!1990068)))

(assert (=> bs!1587810 (not (= lambda!348428 lambda!348370))))

(assert (=> bs!1587808 (not (= lambda!348428 lambda!348313))))

(declare-fun bs!1587811 () Bool)

(assert (= bs!1587811 (and b!6341956 b!6341826)))

(assert (=> bs!1587811 (= (and (= (reg!16574 (regTwo!33003 lt!2362424)) (reg!16574 (regOne!33003 r!7292))) (= (regTwo!33003 lt!2362424) (regOne!33003 r!7292))) (= lambda!348428 lambda!348419))))

(assert (=> b!6341956 true))

(assert (=> b!6341956 true))

(declare-fun bs!1587812 () Bool)

(declare-fun b!6341958 () Bool)

(assert (= bs!1587812 (and b!6341958 d!1990084)))

(declare-fun lambda!348429 () Int)

(assert (=> bs!1587812 (not (= lambda!348429 lambda!348375))))

(declare-fun bs!1587813 () Bool)

(assert (= bs!1587813 (and b!6341958 d!1990306)))

(assert (=> bs!1587813 (not (= lambda!348429 lambda!348423))))

(declare-fun bs!1587814 () Bool)

(assert (= bs!1587814 (and b!6341958 b!6341243)))

(assert (=> bs!1587814 (not (= lambda!348429 lambda!348392))))

(declare-fun bs!1587815 () Bool)

(assert (= bs!1587815 (and b!6341958 b!6341245)))

(assert (=> bs!1587815 (= (and (= (regOne!33002 (regTwo!33003 lt!2362424)) (regOne!33002 r!7292)) (= (regTwo!33002 (regTwo!33003 lt!2362424)) (regTwo!33002 r!7292))) (= lambda!348429 lambda!348393))))

(assert (=> bs!1587812 (= (and (= (regOne!33002 (regTwo!33003 lt!2362424)) (regOne!33002 r!7292)) (= (regTwo!33002 (regTwo!33003 lt!2362424)) (regTwo!33002 r!7292))) (= lambda!348429 lambda!348376))))

(declare-fun bs!1587816 () Bool)

(assert (= bs!1587816 (and b!6341958 b!6341828)))

(assert (=> bs!1587816 (= (and (= (regOne!33002 (regTwo!33003 lt!2362424)) (regOne!33002 (regOne!33003 r!7292))) (= (regTwo!33002 (regTwo!33003 lt!2362424)) (regTwo!33002 (regOne!33003 r!7292)))) (= lambda!348429 lambda!348420))))

(declare-fun bs!1587817 () Bool)

(assert (= bs!1587817 (and b!6341958 b!6340627)))

(assert (=> bs!1587817 (= (and (= (regOne!33002 (regTwo!33003 lt!2362424)) (regOne!33002 r!7292)) (= (regTwo!33002 (regTwo!33003 lt!2362424)) (regTwo!33002 r!7292))) (= lambda!348429 lambda!348314))))

(declare-fun bs!1587818 () Bool)

(assert (= bs!1587818 (and b!6341958 b!6341355)))

(assert (=> bs!1587818 (not (= lambda!348429 lambda!348400))))

(declare-fun bs!1587819 () Bool)

(assert (= bs!1587819 (and b!6341958 d!1990068)))

(assert (=> bs!1587819 (not (= lambda!348429 lambda!348370))))

(declare-fun bs!1587820 () Bool)

(assert (= bs!1587820 (and b!6341958 b!6341956)))

(assert (=> bs!1587820 (not (= lambda!348429 lambda!348428))))

(declare-fun bs!1587821 () Bool)

(assert (= bs!1587821 (and b!6341958 b!6341357)))

(assert (=> bs!1587821 (= (and (= (regOne!33002 (regTwo!33003 lt!2362424)) (regOne!33002 lt!2362424)) (= (regTwo!33002 (regTwo!33003 lt!2362424)) (regTwo!33002 lt!2362424))) (= lambda!348429 lambda!348401))))

(assert (=> bs!1587817 (not (= lambda!348429 lambda!348313))))

(declare-fun bs!1587822 () Bool)

(assert (= bs!1587822 (and b!6341958 b!6341826)))

(assert (=> bs!1587822 (not (= lambda!348429 lambda!348419))))

(assert (=> b!6341958 true))

(assert (=> b!6341958 true))

(declare-fun b!6341950 () Bool)

(declare-fun c!1153150 () Bool)

(assert (=> b!6341950 (= c!1153150 ((_ is Union!16245) (regTwo!33003 lt!2362424)))))

(declare-fun e!3852073 () Bool)

(declare-fun e!3852070 () Bool)

(assert (=> b!6341950 (= e!3852073 e!3852070)))

(declare-fun b!6341951 () Bool)

(declare-fun e!3852072 () Bool)

(assert (=> b!6341951 (= e!3852070 e!3852072)))

(declare-fun c!1153147 () Bool)

(assert (=> b!6341951 (= c!1153147 ((_ is Star!16245) (regTwo!33003 lt!2362424)))))

(declare-fun b!6341952 () Bool)

(declare-fun c!1153148 () Bool)

(assert (=> b!6341952 (= c!1153148 ((_ is ElementMatch!16245) (regTwo!33003 lt!2362424)))))

(declare-fun e!3852067 () Bool)

(assert (=> b!6341952 (= e!3852067 e!3852073)))

(declare-fun b!6341953 () Bool)

(declare-fun e!3852071 () Bool)

(assert (=> b!6341953 (= e!3852071 e!3852067)))

(declare-fun res!2609811 () Bool)

(assert (=> b!6341953 (= res!2609811 (not ((_ is EmptyLang!16245) (regTwo!33003 lt!2362424))))))

(assert (=> b!6341953 (=> (not res!2609811) (not e!3852067))))

(declare-fun b!6341954 () Bool)

(declare-fun res!2609812 () Bool)

(declare-fun e!3852068 () Bool)

(assert (=> b!6341954 (=> res!2609812 e!3852068)))

(declare-fun call!540506 () Bool)

(assert (=> b!6341954 (= res!2609812 call!540506)))

(assert (=> b!6341954 (= e!3852072 e!3852068)))

(declare-fun d!1990390 () Bool)

(declare-fun c!1153149 () Bool)

(assert (=> d!1990390 (= c!1153149 ((_ is EmptyExpr!16245) (regTwo!33003 lt!2362424)))))

(assert (=> d!1990390 (= (matchRSpec!3346 (regTwo!33003 lt!2362424) s!2326) e!3852071)))

(declare-fun b!6341955 () Bool)

(assert (=> b!6341955 (= e!3852073 (= s!2326 (Cons!64910 (c!1152752 (regTwo!33003 lt!2362424)) Nil!64910)))))

(declare-fun bm!540500 () Bool)

(declare-fun call!540505 () Bool)

(assert (=> bm!540500 (= call!540505 (Exists!3315 (ite c!1153147 lambda!348428 lambda!348429)))))

(assert (=> b!6341956 (= e!3852068 call!540505)))

(declare-fun b!6341957 () Bool)

(declare-fun e!3852069 () Bool)

(assert (=> b!6341957 (= e!3852070 e!3852069)))

(declare-fun res!2609813 () Bool)

(assert (=> b!6341957 (= res!2609813 (matchRSpec!3346 (regOne!33003 (regTwo!33003 lt!2362424)) s!2326))))

(assert (=> b!6341957 (=> res!2609813 e!3852069)))

(assert (=> b!6341958 (= e!3852072 call!540505)))

(declare-fun b!6341959 () Bool)

(assert (=> b!6341959 (= e!3852071 call!540506)))

(declare-fun b!6341960 () Bool)

(assert (=> b!6341960 (= e!3852069 (matchRSpec!3346 (regTwo!33003 (regTwo!33003 lt!2362424)) s!2326))))

(declare-fun bm!540501 () Bool)

(assert (=> bm!540501 (= call!540506 (isEmpty!36992 s!2326))))

(assert (= (and d!1990390 c!1153149) b!6341959))

(assert (= (and d!1990390 (not c!1153149)) b!6341953))

(assert (= (and b!6341953 res!2609811) b!6341952))

(assert (= (and b!6341952 c!1153148) b!6341955))

(assert (= (and b!6341952 (not c!1153148)) b!6341950))

(assert (= (and b!6341950 c!1153150) b!6341957))

(assert (= (and b!6341950 (not c!1153150)) b!6341951))

(assert (= (and b!6341957 (not res!2609813)) b!6341960))

(assert (= (and b!6341951 c!1153147) b!6341954))

(assert (= (and b!6341951 (not c!1153147)) b!6341958))

(assert (= (and b!6341954 (not res!2609812)) b!6341956))

(assert (= (or b!6341956 b!6341958) bm!540500))

(assert (= (or b!6341959 b!6341954) bm!540501))

(declare-fun m!7150350 () Bool)

(assert (=> bm!540500 m!7150350))

(declare-fun m!7150352 () Bool)

(assert (=> b!6341957 m!7150352))

(declare-fun m!7150354 () Bool)

(assert (=> b!6341960 m!7150354))

(assert (=> bm!540501 m!7149734))

(assert (=> b!6341359 d!1990390))

(assert (=> bm!540390 d!1990234))

(declare-fun d!1990392 () Bool)

(assert (=> d!1990392 (= (isEmpty!36989 (exprs!6129 (h!71360 zl!343))) ((_ is Nil!64911) (exprs!6129 (h!71360 zl!343))))))

(assert (=> b!6341458 d!1990392))

(declare-fun bs!1587823 () Bool)

(declare-fun d!1990394 () Bool)

(assert (= bs!1587823 (and d!1990394 b!6340742)))

(declare-fun lambda!348430 () Int)

(assert (=> bs!1587823 (not (= lambda!348430 lambda!348342))))

(declare-fun bs!1587824 () Bool)

(assert (= bs!1587824 (and d!1990394 d!1990254)))

(assert (=> bs!1587824 (= lambda!348430 lambda!348415)))

(declare-fun bs!1587825 () Bool)

(assert (= bs!1587825 (and d!1990394 b!6340744)))

(assert (=> bs!1587825 (not (= lambda!348430 lambda!348343))))

(declare-fun bs!1587826 () Bool)

(assert (= bs!1587826 (and d!1990394 b!6340737)))

(assert (=> bs!1587826 (not (= lambda!348430 lambda!348339))))

(declare-fun bs!1587827 () Bool)

(assert (= bs!1587827 (and d!1990394 d!1990210)))

(assert (=> bs!1587827 (= lambda!348430 lambda!348412)))

(declare-fun bs!1587828 () Bool)

(assert (= bs!1587828 (and d!1990394 b!6340739)))

(assert (=> bs!1587828 (not (= lambda!348430 lambda!348340))))

(assert (=> d!1990394 (= (nullableZipper!2011 lt!2362436) (exists!2566 lt!2362436 lambda!348430))))

(declare-fun bs!1587829 () Bool)

(assert (= bs!1587829 d!1990394))

(declare-fun m!7150356 () Bool)

(assert (=> bs!1587829 m!7150356))

(assert (=> b!6341347 d!1990394))

(declare-fun b!6341962 () Bool)

(declare-fun e!3852075 () List!65034)

(assert (=> b!6341962 (= e!3852075 (Cons!64910 (h!71358 (_1!36527 (get!22451 lt!2362511))) (++!14313 (t!378620 (_1!36527 (get!22451 lt!2362511))) (_2!36527 (get!22451 lt!2362511)))))))

(declare-fun b!6341963 () Bool)

(declare-fun res!2609814 () Bool)

(declare-fun e!3852074 () Bool)

(assert (=> b!6341963 (=> (not res!2609814) (not e!3852074))))

(declare-fun lt!2362613 () List!65034)

(assert (=> b!6341963 (= res!2609814 (= (size!40341 lt!2362613) (+ (size!40341 (_1!36527 (get!22451 lt!2362511))) (size!40341 (_2!36527 (get!22451 lt!2362511))))))))

(declare-fun b!6341964 () Bool)

(assert (=> b!6341964 (= e!3852074 (or (not (= (_2!36527 (get!22451 lt!2362511)) Nil!64910)) (= lt!2362613 (_1!36527 (get!22451 lt!2362511)))))))

(declare-fun d!1990396 () Bool)

(assert (=> d!1990396 e!3852074))

(declare-fun res!2609815 () Bool)

(assert (=> d!1990396 (=> (not res!2609815) (not e!3852074))))

(assert (=> d!1990396 (= res!2609815 (= (content!12243 lt!2362613) ((_ map or) (content!12243 (_1!36527 (get!22451 lt!2362511))) (content!12243 (_2!36527 (get!22451 lt!2362511))))))))

(assert (=> d!1990396 (= lt!2362613 e!3852075)))

(declare-fun c!1153151 () Bool)

(assert (=> d!1990396 (= c!1153151 ((_ is Nil!64910) (_1!36527 (get!22451 lt!2362511))))))

(assert (=> d!1990396 (= (++!14313 (_1!36527 (get!22451 lt!2362511)) (_2!36527 (get!22451 lt!2362511))) lt!2362613)))

(declare-fun b!6341961 () Bool)

(assert (=> b!6341961 (= e!3852075 (_2!36527 (get!22451 lt!2362511)))))

(assert (= (and d!1990396 c!1153151) b!6341961))

(assert (= (and d!1990396 (not c!1153151)) b!6341962))

(assert (= (and d!1990396 res!2609815) b!6341963))

(assert (= (and b!6341963 res!2609814) b!6341964))

(declare-fun m!7150358 () Bool)

(assert (=> b!6341962 m!7150358))

(declare-fun m!7150360 () Bool)

(assert (=> b!6341963 m!7150360))

(declare-fun m!7150362 () Bool)

(assert (=> b!6341963 m!7150362))

(declare-fun m!7150364 () Bool)

(assert (=> b!6341963 m!7150364))

(declare-fun m!7150366 () Bool)

(assert (=> d!1990396 m!7150366))

(declare-fun m!7150368 () Bool)

(assert (=> d!1990396 m!7150368))

(declare-fun m!7150370 () Bool)

(assert (=> d!1990396 m!7150370))

(assert (=> b!6341033 d!1990396))

(assert (=> b!6341033 d!1990222))

(declare-fun d!1990398 () Bool)

(assert (=> d!1990398 (= (head!12983 lt!2362429) (h!71359 lt!2362429))))

(assert (=> b!6341419 d!1990398))

(declare-fun d!1990400 () Bool)

(assert (=> d!1990400 (= (isEmpty!36992 (tail!12067 s!2326)) ((_ is Nil!64910) (tail!12067 s!2326)))))

(assert (=> b!6341298 d!1990400))

(assert (=> b!6341298 d!1990230))

(assert (=> bm!540402 d!1990234))

(declare-fun bs!1587830 () Bool)

(declare-fun b!6341971 () Bool)

(assert (= bs!1587830 (and b!6341971 d!1990162)))

(declare-fun lambda!348435 () Int)

(assert (=> bs!1587830 (not (= lambda!348435 lambda!348406))))

(declare-fun bs!1587831 () Bool)

(assert (= bs!1587831 (and b!6341971 d!1990294)))

(assert (=> bs!1587831 (not (= lambda!348435 lambda!348418))))

(declare-fun bs!1587832 () Bool)

(assert (= bs!1587832 (and b!6341971 d!1989984)))

(assert (=> bs!1587832 (not (= lambda!348435 lambda!348318))))

(declare-fun bs!1587833 () Bool)

(assert (= bs!1587833 (and b!6341971 d!1990386)))

(assert (=> bs!1587833 (not (= lambda!348435 lambda!348427))))

(declare-fun bs!1587834 () Bool)

(assert (= bs!1587834 (and b!6341971 d!1990264)))

(assert (=> bs!1587834 (not (= lambda!348435 lambda!348416))))

(declare-fun bs!1587835 () Bool)

(assert (= bs!1587835 (and b!6341971 d!1990132)))

(assert (=> bs!1587835 (not (= lambda!348435 lambda!348396))))

(declare-fun bs!1587836 () Bool)

(assert (= bs!1587836 (and b!6341971 d!1990148)))

(assert (=> bs!1587836 (not (= lambda!348435 lambda!348404))))

(declare-fun bs!1587837 () Bool)

(assert (= bs!1587837 (and b!6341971 d!1990320)))

(assert (=> bs!1587837 (not (= lambda!348435 lambda!348424))))

(declare-fun bs!1587838 () Bool)

(assert (= bs!1587838 (and b!6341971 d!1990134)))

(assert (=> bs!1587838 (not (= lambda!348435 lambda!348399))))

(declare-fun bs!1587839 () Bool)

(assert (= bs!1587839 (and b!6341971 d!1990216)))

(assert (=> bs!1587839 (not (= lambda!348435 lambda!348413))))

(declare-fun bs!1587840 () Bool)

(assert (= bs!1587840 (and b!6341971 d!1990384)))

(assert (=> bs!1587840 (not (= lambda!348435 lambda!348426))))

(declare-fun bs!1587841 () Bool)

(assert (= bs!1587841 (and b!6341971 d!1990154)))

(assert (=> bs!1587841 (not (= lambda!348435 lambda!348405))))

(declare-fun bs!1587842 () Bool)

(assert (= bs!1587842 (and b!6341971 d!1989990)))

(assert (=> bs!1587842 (not (= lambda!348435 lambda!348319))))

(assert (=> b!6341971 true))

(declare-fun bs!1587843 () Bool)

(declare-fun b!6341973 () Bool)

(assert (= bs!1587843 (and b!6341973 d!1990162)))

(declare-fun lambda!348436 () Int)

(assert (=> bs!1587843 (not (= lambda!348436 lambda!348406))))

(declare-fun bs!1587844 () Bool)

(assert (= bs!1587844 (and b!6341973 d!1990294)))

(assert (=> bs!1587844 (not (= lambda!348436 lambda!348418))))

(declare-fun bs!1587845 () Bool)

(assert (= bs!1587845 (and b!6341973 d!1989984)))

(assert (=> bs!1587845 (not (= lambda!348436 lambda!348318))))

(declare-fun bs!1587846 () Bool)

(assert (= bs!1587846 (and b!6341973 d!1990386)))

(assert (=> bs!1587846 (not (= lambda!348436 lambda!348427))))

(declare-fun bs!1587847 () Bool)

(assert (= bs!1587847 (and b!6341973 d!1990264)))

(assert (=> bs!1587847 (not (= lambda!348436 lambda!348416))))

(declare-fun bs!1587848 () Bool)

(assert (= bs!1587848 (and b!6341973 d!1990132)))

(assert (=> bs!1587848 (not (= lambda!348436 lambda!348396))))

(declare-fun bs!1587849 () Bool)

(assert (= bs!1587849 (and b!6341973 b!6341971)))

(declare-fun lt!2362624 () Int)

(declare-fun lt!2362625 () Int)

(assert (=> bs!1587849 (= (= lt!2362624 lt!2362625) (= lambda!348436 lambda!348435))))

(declare-fun bs!1587850 () Bool)

(assert (= bs!1587850 (and b!6341973 d!1990148)))

(assert (=> bs!1587850 (not (= lambda!348436 lambda!348404))))

(declare-fun bs!1587851 () Bool)

(assert (= bs!1587851 (and b!6341973 d!1990320)))

(assert (=> bs!1587851 (not (= lambda!348436 lambda!348424))))

(declare-fun bs!1587852 () Bool)

(assert (= bs!1587852 (and b!6341973 d!1990134)))

(assert (=> bs!1587852 (not (= lambda!348436 lambda!348399))))

(declare-fun bs!1587853 () Bool)

(assert (= bs!1587853 (and b!6341973 d!1990216)))

(assert (=> bs!1587853 (not (= lambda!348436 lambda!348413))))

(declare-fun bs!1587854 () Bool)

(assert (= bs!1587854 (and b!6341973 d!1990384)))

(assert (=> bs!1587854 (not (= lambda!348436 lambda!348426))))

(declare-fun bs!1587855 () Bool)

(assert (= bs!1587855 (and b!6341973 d!1990154)))

(assert (=> bs!1587855 (not (= lambda!348436 lambda!348405))))

(declare-fun bs!1587856 () Bool)

(assert (= bs!1587856 (and b!6341973 d!1989990)))

(assert (=> bs!1587856 (not (= lambda!348436 lambda!348319))))

(assert (=> b!6341973 true))

(declare-fun d!1990402 () Bool)

(declare-fun e!3852080 () Bool)

(assert (=> d!1990402 e!3852080))

(declare-fun res!2609818 () Bool)

(assert (=> d!1990402 (=> (not res!2609818) (not e!3852080))))

(assert (=> d!1990402 (= res!2609818 (>= lt!2362624 0))))

(declare-fun e!3852081 () Int)

(assert (=> d!1990402 (= lt!2362624 e!3852081)))

(declare-fun c!1153155 () Bool)

(assert (=> d!1990402 (= c!1153155 ((_ is Cons!64911) (exprs!6129 (h!71360 zl!343))))))

(assert (=> d!1990402 (= (contextDepth!241 (h!71360 zl!343)) lt!2362624)))

(assert (=> b!6341971 (= e!3852081 lt!2362625)))

(declare-fun regexDepth!324 (Regex!16245) Int)

(assert (=> b!6341971 (= lt!2362625 (maxBigInt!0 (regexDepth!324 (h!71359 (exprs!6129 (h!71360 zl!343)))) (contextDepth!241 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(declare-fun lt!2362622 () Unit!158311)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!114 (List!65035 Int Int) Unit!158311)

(assert (=> b!6341971 (= lt!2362622 (lemmaForallRegexDepthBiggerThanTransitive!114 (t!378621 (exprs!6129 (h!71360 zl!343))) lt!2362625 (contextDepth!241 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))))))))

(assert (=> b!6341971 (forall!15401 (t!378621 (exprs!6129 (h!71360 zl!343))) lambda!348435)))

(declare-fun lt!2362623 () Unit!158311)

(assert (=> b!6341971 (= lt!2362623 lt!2362622)))

(declare-fun b!6341972 () Bool)

(assert (=> b!6341972 (= e!3852081 0)))

(assert (=> b!6341973 (= e!3852080 (forall!15401 (exprs!6129 (h!71360 zl!343)) lambda!348436))))

(assert (= (and d!1990402 c!1153155) b!6341971))

(assert (= (and d!1990402 (not c!1153155)) b!6341972))

(assert (= (and d!1990402 res!2609818) b!6341973))

(declare-fun m!7150372 () Bool)

(assert (=> b!6341971 m!7150372))

(assert (=> b!6341971 m!7150372))

(declare-fun m!7150374 () Bool)

(assert (=> b!6341971 m!7150374))

(declare-fun m!7150376 () Bool)

(assert (=> b!6341971 m!7150376))

(assert (=> b!6341971 m!7150374))

(declare-fun m!7150378 () Bool)

(assert (=> b!6341971 m!7150378))

(assert (=> b!6341971 m!7150374))

(declare-fun m!7150380 () Bool)

(assert (=> b!6341971 m!7150380))

(declare-fun m!7150382 () Bool)

(assert (=> b!6341973 m!7150382))

(assert (=> b!6340742 d!1990402))

(declare-fun bs!1587857 () Bool)

(declare-fun d!1990404 () Bool)

(assert (= bs!1587857 (and d!1990404 b!6340742)))

(declare-fun lambda!348439 () Int)

(assert (=> bs!1587857 (not (= lambda!348439 lambda!348342))))

(declare-fun bs!1587858 () Bool)

(assert (= bs!1587858 (and d!1990404 d!1990254)))

(assert (=> bs!1587858 (not (= lambda!348439 lambda!348415))))

(declare-fun bs!1587859 () Bool)

(assert (= bs!1587859 (and d!1990404 b!6340744)))

(assert (=> bs!1587859 (not (= lambda!348439 lambda!348343))))

(declare-fun bs!1587860 () Bool)

(assert (= bs!1587860 (and d!1990404 d!1990394)))

(assert (=> bs!1587860 (not (= lambda!348439 lambda!348430))))

(declare-fun bs!1587861 () Bool)

(assert (= bs!1587861 (and d!1990404 b!6340737)))

(assert (=> bs!1587861 (not (= lambda!348439 lambda!348339))))

(declare-fun bs!1587862 () Bool)

(assert (= bs!1587862 (and d!1990404 d!1990210)))

(assert (=> bs!1587862 (not (= lambda!348439 lambda!348412))))

(declare-fun bs!1587863 () Bool)

(assert (= bs!1587863 (and d!1990404 b!6340739)))

(assert (=> bs!1587863 (not (= lambda!348439 lambda!348340))))

(assert (=> d!1990404 true))

(assert (=> d!1990404 true))

(declare-fun order!27511 () Int)

(declare-fun order!27509 () Int)

(declare-fun dynLambda!25733 (Int Int) Int)

(declare-fun dynLambda!25734 (Int Int) Int)

(assert (=> d!1990404 (< (dynLambda!25733 order!27509 lambda!348341) (dynLambda!25734 order!27511 lambda!348439))))

(assert (=> d!1990404 (forall!15403 (t!378622 zl!343) lambda!348439)))

(declare-fun lt!2362628 () Unit!158311)

(declare-fun choose!47028 (List!65036 Int Int Int) Unit!158311)

(assert (=> d!1990404 (= lt!2362628 (choose!47028 (t!378622 zl!343) lt!2362475 (zipperDepth!352 (t!378622 zl!343)) lambda!348341))))

(assert (=> d!1990404 (>= lt!2362475 (zipperDepth!352 (t!378622 zl!343)))))

(assert (=> d!1990404 (= (lemmaForallContextDepthBiggerThanTransitive!225 (t!378622 zl!343) lt!2362475 (zipperDepth!352 (t!378622 zl!343)) lambda!348341) lt!2362628)))

(declare-fun bs!1587864 () Bool)

(assert (= bs!1587864 d!1990404))

(declare-fun m!7150384 () Bool)

(assert (=> bs!1587864 m!7150384))

(assert (=> bs!1587864 m!7149390))

(declare-fun m!7150386 () Bool)

(assert (=> bs!1587864 m!7150386))

(assert (=> b!6340742 d!1990404))

(declare-fun bs!1587865 () Bool)

(declare-fun b!6341979 () Bool)

(assert (= bs!1587865 (and b!6341979 b!6340737)))

(declare-fun lambda!348440 () Int)

(assert (=> bs!1587865 (= lambda!348440 lambda!348338)))

(declare-fun bs!1587866 () Bool)

(assert (= bs!1587866 (and b!6341979 b!6340742)))

(assert (=> bs!1587866 (= lambda!348440 lambda!348341)))

(declare-fun lt!2362629 () Int)

(declare-fun lambda!348441 () Int)

(assert (=> bs!1587866 (= (= lt!2362629 lt!2362475) (= lambda!348441 lambda!348342))))

(declare-fun bs!1587867 () Bool)

(assert (= bs!1587867 (and b!6341979 d!1990254)))

(assert (=> bs!1587867 (not (= lambda!348441 lambda!348415))))

(declare-fun bs!1587868 () Bool)

(assert (= bs!1587868 (and b!6341979 b!6340744)))

(assert (=> bs!1587868 (= (= lt!2362629 lt!2362477) (= lambda!348441 lambda!348343))))

(declare-fun bs!1587869 () Bool)

(assert (= bs!1587869 (and b!6341979 d!1990394)))

(assert (=> bs!1587869 (not (= lambda!348441 lambda!348430))))

(assert (=> bs!1587865 (= (= lt!2362629 lt!2362471) (= lambda!348441 lambda!348339))))

(declare-fun bs!1587870 () Bool)

(assert (= bs!1587870 (and b!6341979 d!1990404)))

(assert (=> bs!1587870 (not (= lambda!348441 lambda!348439))))

(declare-fun bs!1587871 () Bool)

(assert (= bs!1587871 (and b!6341979 d!1990210)))

(assert (=> bs!1587871 (not (= lambda!348441 lambda!348412))))

(declare-fun bs!1587872 () Bool)

(assert (= bs!1587872 (and b!6341979 b!6340739)))

(assert (=> bs!1587872 (= (= lt!2362629 lt!2362473) (= lambda!348441 lambda!348340))))

(assert (=> b!6341979 true))

(declare-fun bs!1587873 () Bool)

(declare-fun b!6341981 () Bool)

(assert (= bs!1587873 (and b!6341981 b!6341979)))

(declare-fun lt!2362631 () Int)

(declare-fun lambda!348442 () Int)

(assert (=> bs!1587873 (= (= lt!2362631 lt!2362629) (= lambda!348442 lambda!348441))))

(declare-fun bs!1587874 () Bool)

(assert (= bs!1587874 (and b!6341981 b!6340742)))

(assert (=> bs!1587874 (= (= lt!2362631 lt!2362475) (= lambda!348442 lambda!348342))))

(declare-fun bs!1587875 () Bool)

(assert (= bs!1587875 (and b!6341981 d!1990254)))

(assert (=> bs!1587875 (not (= lambda!348442 lambda!348415))))

(declare-fun bs!1587876 () Bool)

(assert (= bs!1587876 (and b!6341981 b!6340744)))

(assert (=> bs!1587876 (= (= lt!2362631 lt!2362477) (= lambda!348442 lambda!348343))))

(declare-fun bs!1587877 () Bool)

(assert (= bs!1587877 (and b!6341981 d!1990394)))

(assert (=> bs!1587877 (not (= lambda!348442 lambda!348430))))

(declare-fun bs!1587878 () Bool)

(assert (= bs!1587878 (and b!6341981 b!6340737)))

(assert (=> bs!1587878 (= (= lt!2362631 lt!2362471) (= lambda!348442 lambda!348339))))

(declare-fun bs!1587879 () Bool)

(assert (= bs!1587879 (and b!6341981 d!1990404)))

(assert (=> bs!1587879 (not (= lambda!348442 lambda!348439))))

(declare-fun bs!1587880 () Bool)

(assert (= bs!1587880 (and b!6341981 d!1990210)))

(assert (=> bs!1587880 (not (= lambda!348442 lambda!348412))))

(declare-fun bs!1587881 () Bool)

(assert (= bs!1587881 (and b!6341981 b!6340739)))

(assert (=> bs!1587881 (= (= lt!2362631 lt!2362473) (= lambda!348442 lambda!348340))))

(assert (=> b!6341981 true))

(declare-fun d!1990406 () Bool)

(declare-fun e!3852083 () Bool)

(assert (=> d!1990406 e!3852083))

(declare-fun res!2609819 () Bool)

(assert (=> d!1990406 (=> (not res!2609819) (not e!3852083))))

(assert (=> d!1990406 (= res!2609819 (>= lt!2362631 0))))

(declare-fun e!3852082 () Int)

(assert (=> d!1990406 (= lt!2362631 e!3852082)))

(declare-fun c!1153158 () Bool)

(assert (=> d!1990406 (= c!1153158 ((_ is Cons!64912) (t!378622 zl!343)))))

(assert (=> d!1990406 (= (zipperDepth!352 (t!378622 zl!343)) lt!2362631)))

(assert (=> b!6341979 (= e!3852082 lt!2362629)))

(assert (=> b!6341979 (= lt!2362629 (maxBigInt!0 (contextDepth!241 (h!71360 (t!378622 zl!343))) (zipperDepth!352 (t!378622 (t!378622 zl!343)))))))

(declare-fun lt!2362632 () Unit!158311)

(assert (=> b!6341979 (= lt!2362632 (lemmaForallContextDepthBiggerThanTransitive!225 (t!378622 (t!378622 zl!343)) lt!2362629 (zipperDepth!352 (t!378622 (t!378622 zl!343))) lambda!348440))))

(assert (=> b!6341979 (forall!15403 (t!378622 (t!378622 zl!343)) lambda!348441)))

(declare-fun lt!2362630 () Unit!158311)

(assert (=> b!6341979 (= lt!2362630 lt!2362632)))

(declare-fun b!6341980 () Bool)

(assert (=> b!6341980 (= e!3852082 0)))

(assert (=> b!6341981 (= e!3852083 (forall!15403 (t!378622 zl!343) lambda!348442))))

(assert (= (and d!1990406 c!1153158) b!6341979))

(assert (= (and d!1990406 (not c!1153158)) b!6341980))

(assert (= (and d!1990406 res!2609819) b!6341981))

(declare-fun m!7150388 () Bool)

(assert (=> b!6341979 m!7150388))

(declare-fun m!7150390 () Bool)

(assert (=> b!6341979 m!7150390))

(declare-fun m!7150392 () Bool)

(assert (=> b!6341979 m!7150392))

(assert (=> b!6341979 m!7150388))

(declare-fun m!7150394 () Bool)

(assert (=> b!6341979 m!7150394))

(assert (=> b!6341979 m!7150388))

(declare-fun m!7150396 () Bool)

(assert (=> b!6341979 m!7150396))

(assert (=> b!6341979 m!7150394))

(declare-fun m!7150398 () Bool)

(assert (=> b!6341981 m!7150398))

(assert (=> b!6340742 d!1990406))

(declare-fun d!1990408 () Bool)

(declare-fun res!2609820 () Bool)

(declare-fun e!3852084 () Bool)

(assert (=> d!1990408 (=> res!2609820 e!3852084)))

(assert (=> d!1990408 (= res!2609820 ((_ is Nil!64912) (t!378622 zl!343)))))

(assert (=> d!1990408 (= (forall!15403 (t!378622 zl!343) lambda!348342) e!3852084)))

(declare-fun b!6341982 () Bool)

(declare-fun e!3852085 () Bool)

(assert (=> b!6341982 (= e!3852084 e!3852085)))

(declare-fun res!2609821 () Bool)

(assert (=> b!6341982 (=> (not res!2609821) (not e!3852085))))

(assert (=> b!6341982 (= res!2609821 (dynLambda!25728 lambda!348342 (h!71360 (t!378622 zl!343))))))

(declare-fun b!6341983 () Bool)

(assert (=> b!6341983 (= e!3852085 (forall!15403 (t!378622 (t!378622 zl!343)) lambda!348342))))

(assert (= (and d!1990408 (not res!2609820)) b!6341982))

(assert (= (and b!6341982 res!2609821) b!6341983))

(declare-fun b_lambda!241325 () Bool)

(assert (=> (not b_lambda!241325) (not b!6341982)))

(declare-fun m!7150400 () Bool)

(assert (=> b!6341982 m!7150400))

(declare-fun m!7150402 () Bool)

(assert (=> b!6341983 m!7150402))

(assert (=> b!6340742 d!1990408))

(declare-fun d!1990410 () Bool)

(assert (=> d!1990410 (= (maxBigInt!0 (contextDepth!241 (h!71360 zl!343)) (zipperDepth!352 (t!378622 zl!343))) (ite (>= (contextDepth!241 (h!71360 zl!343)) (zipperDepth!352 (t!378622 zl!343))) (contextDepth!241 (h!71360 zl!343)) (zipperDepth!352 (t!378622 zl!343))))))

(assert (=> b!6340742 d!1990410))

(assert (=> d!1990046 d!1990354))

(declare-fun b!6341985 () Bool)

(declare-fun e!3852089 () Bool)

(assert (=> b!6341985 (= e!3852089 (not (= (head!12981 Nil!64910) (c!1152752 (regOne!33002 r!7292)))))))

(declare-fun b!6341986 () Bool)

(declare-fun e!3852091 () Bool)

(declare-fun e!3852092 () Bool)

(assert (=> b!6341986 (= e!3852091 e!3852092)))

(declare-fun c!1153160 () Bool)

(assert (=> b!6341986 (= c!1153160 ((_ is EmptyLang!16245) (regOne!33002 r!7292)))))

(declare-fun b!6341987 () Bool)

(declare-fun e!3852087 () Bool)

(declare-fun e!3852090 () Bool)

(assert (=> b!6341987 (= e!3852087 e!3852090)))

(declare-fun res!2609825 () Bool)

(assert (=> b!6341987 (=> (not res!2609825) (not e!3852090))))

(declare-fun lt!2362633 () Bool)

(assert (=> b!6341987 (= res!2609825 (not lt!2362633))))

(declare-fun b!6341988 () Bool)

(declare-fun e!3852088 () Bool)

(assert (=> b!6341988 (= e!3852088 (nullable!6238 (regOne!33002 r!7292)))))

(declare-fun b!6341989 () Bool)

(declare-fun res!2609826 () Bool)

(declare-fun e!3852086 () Bool)

(assert (=> b!6341989 (=> (not res!2609826) (not e!3852086))))

(assert (=> b!6341989 (= res!2609826 (isEmpty!36992 (tail!12067 Nil!64910)))))

(declare-fun d!1990412 () Bool)

(assert (=> d!1990412 e!3852091))

(declare-fun c!1153159 () Bool)

(assert (=> d!1990412 (= c!1153159 ((_ is EmptyExpr!16245) (regOne!33002 r!7292)))))

(assert (=> d!1990412 (= lt!2362633 e!3852088)))

(declare-fun c!1153161 () Bool)

(assert (=> d!1990412 (= c!1153161 (isEmpty!36992 Nil!64910))))

(assert (=> d!1990412 (validRegex!7981 (regOne!33002 r!7292))))

(assert (=> d!1990412 (= (matchR!8428 (regOne!33002 r!7292) Nil!64910) lt!2362633)))

(declare-fun b!6341990 () Bool)

(declare-fun call!540507 () Bool)

(assert (=> b!6341990 (= e!3852091 (= lt!2362633 call!540507))))

(declare-fun b!6341991 () Bool)

(declare-fun res!2609829 () Bool)

(assert (=> b!6341991 (=> (not res!2609829) (not e!3852086))))

(assert (=> b!6341991 (= res!2609829 (not call!540507))))

(declare-fun b!6341992 () Bool)

(declare-fun res!2609822 () Bool)

(assert (=> b!6341992 (=> res!2609822 e!3852087)))

(assert (=> b!6341992 (= res!2609822 (not ((_ is ElementMatch!16245) (regOne!33002 r!7292))))))

(assert (=> b!6341992 (= e!3852092 e!3852087)))

(declare-fun b!6341993 () Bool)

(declare-fun res!2609823 () Bool)

(assert (=> b!6341993 (=> res!2609823 e!3852089)))

(assert (=> b!6341993 (= res!2609823 (not (isEmpty!36992 (tail!12067 Nil!64910))))))

(declare-fun b!6341994 () Bool)

(assert (=> b!6341994 (= e!3852086 (= (head!12981 Nil!64910) (c!1152752 (regOne!33002 r!7292))))))

(declare-fun b!6341995 () Bool)

(assert (=> b!6341995 (= e!3852088 (matchR!8428 (derivativeStep!4950 (regOne!33002 r!7292) (head!12981 Nil!64910)) (tail!12067 Nil!64910)))))

(declare-fun b!6341996 () Bool)

(assert (=> b!6341996 (= e!3852090 e!3852089)))

(declare-fun res!2609824 () Bool)

(assert (=> b!6341996 (=> res!2609824 e!3852089)))

(assert (=> b!6341996 (= res!2609824 call!540507)))

(declare-fun bm!540502 () Bool)

(assert (=> bm!540502 (= call!540507 (isEmpty!36992 Nil!64910))))

(declare-fun b!6341997 () Bool)

(declare-fun res!2609828 () Bool)

(assert (=> b!6341997 (=> res!2609828 e!3852087)))

(assert (=> b!6341997 (= res!2609828 e!3852086)))

(declare-fun res!2609827 () Bool)

(assert (=> b!6341997 (=> (not res!2609827) (not e!3852086))))

(assert (=> b!6341997 (= res!2609827 lt!2362633)))

(declare-fun b!6341998 () Bool)

(assert (=> b!6341998 (= e!3852092 (not lt!2362633))))

(assert (= (and d!1990412 c!1153161) b!6341988))

(assert (= (and d!1990412 (not c!1153161)) b!6341995))

(assert (= (and d!1990412 c!1153159) b!6341990))

(assert (= (and d!1990412 (not c!1153159)) b!6341986))

(assert (= (and b!6341986 c!1153160) b!6341998))

(assert (= (and b!6341986 (not c!1153160)) b!6341992))

(assert (= (and b!6341992 (not res!2609822)) b!6341997))

(assert (= (and b!6341997 res!2609827) b!6341991))

(assert (= (and b!6341991 res!2609829) b!6341989))

(assert (= (and b!6341989 res!2609826) b!6341994))

(assert (= (and b!6341997 (not res!2609828)) b!6341987))

(assert (= (and b!6341987 res!2609825) b!6341996))

(assert (= (and b!6341996 (not res!2609824)) b!6341993))

(assert (= (and b!6341993 (not res!2609823)) b!6341985))

(assert (= (or b!6341990 b!6341991 b!6341996) bm!540502))

(declare-fun m!7150404 () Bool)

(assert (=> bm!540502 m!7150404))

(declare-fun m!7150406 () Bool)

(assert (=> b!6341989 m!7150406))

(assert (=> b!6341989 m!7150406))

(declare-fun m!7150408 () Bool)

(assert (=> b!6341989 m!7150408))

(assert (=> b!6341988 m!7150036))

(declare-fun m!7150410 () Bool)

(assert (=> b!6341994 m!7150410))

(assert (=> b!6341985 m!7150410))

(assert (=> b!6341993 m!7150406))

(assert (=> b!6341993 m!7150406))

(assert (=> b!6341993 m!7150408))

(assert (=> b!6341995 m!7150410))

(assert (=> b!6341995 m!7150410))

(declare-fun m!7150412 () Bool)

(assert (=> b!6341995 m!7150412))

(assert (=> b!6341995 m!7150406))

(assert (=> b!6341995 m!7150412))

(assert (=> b!6341995 m!7150406))

(declare-fun m!7150414 () Bool)

(assert (=> b!6341995 m!7150414))

(assert (=> d!1990412 m!7150404))

(assert (=> d!1990412 m!7149586))

(assert (=> d!1990046 d!1990412))

(assert (=> d!1990046 d!1990304))

(declare-fun d!1990414 () Bool)

(assert (=> d!1990414 (= (isUnion!1084 lt!2362557) ((_ is Union!16245) lt!2362557))))

(assert (=> b!6341330 d!1990414))

(declare-fun d!1990416 () Bool)

(declare-fun res!2609830 () Bool)

(declare-fun e!3852093 () Bool)

(assert (=> d!1990416 (=> res!2609830 e!3852093)))

(assert (=> d!1990416 (= res!2609830 ((_ is Nil!64911) (exprs!6129 setElem!43154)))))

(assert (=> d!1990416 (= (forall!15401 (exprs!6129 setElem!43154) lambda!348319) e!3852093)))

(declare-fun b!6341999 () Bool)

(declare-fun e!3852094 () Bool)

(assert (=> b!6341999 (= e!3852093 e!3852094)))

(declare-fun res!2609831 () Bool)

(assert (=> b!6341999 (=> (not res!2609831) (not e!3852094))))

(assert (=> b!6341999 (= res!2609831 (dynLambda!25729 lambda!348319 (h!71359 (exprs!6129 setElem!43154))))))

(declare-fun b!6342000 () Bool)

(assert (=> b!6342000 (= e!3852094 (forall!15401 (t!378621 (exprs!6129 setElem!43154)) lambda!348319))))

(assert (= (and d!1990416 (not res!2609830)) b!6341999))

(assert (= (and b!6341999 res!2609831) b!6342000))

(declare-fun b_lambda!241327 () Bool)

(assert (=> (not b_lambda!241327) (not b!6341999)))

(declare-fun m!7150416 () Bool)

(assert (=> b!6341999 m!7150416))

(declare-fun m!7150418 () Bool)

(assert (=> b!6342000 m!7150418))

(assert (=> d!1989990 d!1990416))

(assert (=> b!6341294 d!1990400))

(assert (=> b!6341294 d!1990230))

(assert (=> b!6341437 d!1990400))

(assert (=> b!6341437 d!1990230))

(declare-fun b!6342001 () Bool)

(declare-fun e!3852095 () (InoxSet Context!11258))

(declare-fun call!540508 () (InoxSet Context!11258))

(assert (=> b!6342001 (= e!3852095 call!540508)))

(declare-fun b!6342002 () Bool)

(assert (=> b!6342002 (= e!3852095 ((as const (Array Context!11258 Bool)) false))))

(declare-fun bm!540503 () Bool)

(assert (=> bm!540503 (= call!540508 (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362427))))) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362427)))))) (h!71358 s!2326)))))

(declare-fun b!6342003 () Bool)

(declare-fun e!3852096 () Bool)

(assert (=> b!6342003 (= e!3852096 (nullable!6238 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362427)))))))))

(declare-fun d!1990418 () Bool)

(declare-fun c!1153162 () Bool)

(assert (=> d!1990418 (= c!1153162 e!3852096)))

(declare-fun res!2609832 () Bool)

(assert (=> d!1990418 (=> (not res!2609832) (not e!3852096))))

(assert (=> d!1990418 (= res!2609832 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362427))))))))

(declare-fun e!3852097 () (InoxSet Context!11258))

(assert (=> d!1990418 (= (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 lt!2362427))) (h!71358 s!2326)) e!3852097)))

(declare-fun b!6342004 () Bool)

(assert (=> b!6342004 (= e!3852097 ((_ map or) call!540508 (derivationStepZipperUp!1419 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362427)))))) (h!71358 s!2326))))))

(declare-fun b!6342005 () Bool)

(assert (=> b!6342005 (= e!3852097 e!3852095)))

(declare-fun c!1153163 () Bool)

(assert (=> b!6342005 (= c!1153163 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362427))))))))

(assert (= (and d!1990418 res!2609832) b!6342003))

(assert (= (and d!1990418 c!1153162) b!6342004))

(assert (= (and d!1990418 (not c!1153162)) b!6342005))

(assert (= (and b!6342005 c!1153163) b!6342001))

(assert (= (and b!6342005 (not c!1153163)) b!6342002))

(assert (= (or b!6342004 b!6342001) bm!540503))

(declare-fun m!7150420 () Bool)

(assert (=> bm!540503 m!7150420))

(declare-fun m!7150422 () Bool)

(assert (=> b!6342003 m!7150422))

(declare-fun m!7150424 () Bool)

(assert (=> b!6342004 m!7150424))

(assert (=> b!6341501 d!1990418))

(declare-fun d!1990420 () Bool)

(assert (=> d!1990420 (= (isEmpty!36989 lt!2362431) ((_ is Nil!64911) lt!2362431))))

(assert (=> b!6341386 d!1990420))

(declare-fun d!1990422 () Bool)

(assert (=> d!1990422 (= (flatMap!1750 lt!2362411 lambda!348409) (choose!47024 lt!2362411 lambda!348409))))

(declare-fun bs!1587882 () Bool)

(assert (= bs!1587882 d!1990422))

(declare-fun m!7150426 () Bool)

(assert (=> bs!1587882 m!7150426))

(assert (=> d!1990194 d!1990422))

(declare-fun c!1153166 () Bool)

(declare-fun c!1153167 () Bool)

(declare-fun bm!540504 () Bool)

(declare-fun call!540510 () List!65035)

(assert (=> bm!540504 (= call!540510 ($colon$colon!2105 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418)))) (ite (or c!1153167 c!1153166) (regTwo!33002 (h!71359 (exprs!6129 lt!2362418))) (h!71359 (exprs!6129 lt!2362418)))))))

(declare-fun b!6342006 () Bool)

(declare-fun e!3852103 () (InoxSet Context!11258))

(declare-fun call!540512 () (InoxSet Context!11258))

(declare-fun call!540514 () (InoxSet Context!11258))

(assert (=> b!6342006 (= e!3852103 ((_ map or) call!540512 call!540514))))

(declare-fun b!6342007 () Bool)

(declare-fun e!3852099 () (InoxSet Context!11258))

(assert (=> b!6342007 (= e!3852103 e!3852099)))

(assert (=> b!6342007 (= c!1153166 ((_ is Concat!25090) (h!71359 (exprs!6129 lt!2362418))))))

(declare-fun bm!540505 () Bool)

(declare-fun c!1153168 () Bool)

(declare-fun call!540509 () (InoxSet Context!11258))

(declare-fun call!540513 () List!65035)

(assert (=> bm!540505 (= call!540509 (derivationStepZipperDown!1493 (ite c!1153168 (regTwo!33003 (h!71359 (exprs!6129 lt!2362418))) (ite c!1153167 (regTwo!33002 (h!71359 (exprs!6129 lt!2362418))) (ite c!1153166 (regOne!33002 (h!71359 (exprs!6129 lt!2362418))) (reg!16574 (h!71359 (exprs!6129 lt!2362418)))))) (ite (or c!1153168 c!1153167) (Context!11259 (t!378621 (exprs!6129 lt!2362418))) (Context!11259 call!540513)) (h!71358 s!2326)))))

(declare-fun bm!540506 () Bool)

(assert (=> bm!540506 (= call!540514 call!540509)))

(declare-fun bm!540507 () Bool)

(assert (=> bm!540507 (= call!540512 (derivationStepZipperDown!1493 (ite c!1153168 (regOne!33003 (h!71359 (exprs!6129 lt!2362418))) (regOne!33002 (h!71359 (exprs!6129 lt!2362418)))) (ite c!1153168 (Context!11259 (t!378621 (exprs!6129 lt!2362418))) (Context!11259 call!540510)) (h!71358 s!2326)))))

(declare-fun bm!540508 () Bool)

(assert (=> bm!540508 (= call!540513 call!540510)))

(declare-fun b!6342009 () Bool)

(declare-fun call!540511 () (InoxSet Context!11258))

(assert (=> b!6342009 (= e!3852099 call!540511)))

(declare-fun b!6342010 () Bool)

(declare-fun e!3852098 () (InoxSet Context!11258))

(assert (=> b!6342010 (= e!3852098 (store ((as const (Array Context!11258 Bool)) false) (Context!11259 (t!378621 (exprs!6129 lt!2362418))) true))))

(declare-fun b!6342011 () Bool)

(declare-fun e!3852100 () (InoxSet Context!11258))

(assert (=> b!6342011 (= e!3852100 call!540511)))

(declare-fun b!6342012 () Bool)

(declare-fun c!1153165 () Bool)

(assert (=> b!6342012 (= c!1153165 ((_ is Star!16245) (h!71359 (exprs!6129 lt!2362418))))))

(assert (=> b!6342012 (= e!3852099 e!3852100)))

(declare-fun b!6342013 () Bool)

(declare-fun e!3852102 () Bool)

(assert (=> b!6342013 (= e!3852102 (nullable!6238 (regOne!33002 (h!71359 (exprs!6129 lt!2362418)))))))

(declare-fun b!6342008 () Bool)

(declare-fun e!3852101 () (InoxSet Context!11258))

(assert (=> b!6342008 (= e!3852098 e!3852101)))

(assert (=> b!6342008 (= c!1153168 ((_ is Union!16245) (h!71359 (exprs!6129 lt!2362418))))))

(declare-fun d!1990424 () Bool)

(declare-fun c!1153164 () Bool)

(assert (=> d!1990424 (= c!1153164 (and ((_ is ElementMatch!16245) (h!71359 (exprs!6129 lt!2362418))) (= (c!1152752 (h!71359 (exprs!6129 lt!2362418))) (h!71358 s!2326))))))

(assert (=> d!1990424 (= (derivationStepZipperDown!1493 (h!71359 (exprs!6129 lt!2362418)) (Context!11259 (t!378621 (exprs!6129 lt!2362418))) (h!71358 s!2326)) e!3852098)))

(declare-fun b!6342014 () Bool)

(assert (=> b!6342014 (= e!3852100 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6342015 () Bool)

(assert (=> b!6342015 (= e!3852101 ((_ map or) call!540512 call!540509))))

(declare-fun bm!540509 () Bool)

(assert (=> bm!540509 (= call!540511 call!540514)))

(declare-fun b!6342016 () Bool)

(assert (=> b!6342016 (= c!1153167 e!3852102)))

(declare-fun res!2609833 () Bool)

(assert (=> b!6342016 (=> (not res!2609833) (not e!3852102))))

(assert (=> b!6342016 (= res!2609833 ((_ is Concat!25090) (h!71359 (exprs!6129 lt!2362418))))))

(assert (=> b!6342016 (= e!3852101 e!3852103)))

(assert (= (and d!1990424 c!1153164) b!6342010))

(assert (= (and d!1990424 (not c!1153164)) b!6342008))

(assert (= (and b!6342008 c!1153168) b!6342015))

(assert (= (and b!6342008 (not c!1153168)) b!6342016))

(assert (= (and b!6342016 res!2609833) b!6342013))

(assert (= (and b!6342016 c!1153167) b!6342006))

(assert (= (and b!6342016 (not c!1153167)) b!6342007))

(assert (= (and b!6342007 c!1153166) b!6342009))

(assert (= (and b!6342007 (not c!1153166)) b!6342012))

(assert (= (and b!6342012 c!1153165) b!6342011))

(assert (= (and b!6342012 (not c!1153165)) b!6342014))

(assert (= (or b!6342009 b!6342011) bm!540508))

(assert (= (or b!6342009 b!6342011) bm!540509))

(assert (= (or b!6342006 bm!540508) bm!540504))

(assert (= (or b!6342006 bm!540509) bm!540506))

(assert (= (or b!6342015 bm!540506) bm!540505))

(assert (= (or b!6342015 b!6342006) bm!540507))

(declare-fun m!7150428 () Bool)

(assert (=> bm!540505 m!7150428))

(declare-fun m!7150430 () Bool)

(assert (=> bm!540504 m!7150430))

(declare-fun m!7150432 () Bool)

(assert (=> b!6342013 m!7150432))

(declare-fun m!7150434 () Bool)

(assert (=> b!6342010 m!7150434))

(declare-fun m!7150436 () Bool)

(assert (=> bm!540507 m!7150436))

(assert (=> bm!540417 d!1990424))

(assert (=> b!6341290 d!1990228))

(assert (=> b!6341433 d!1990400))

(assert (=> b!6341433 d!1990230))

(declare-fun b!6342017 () Bool)

(declare-fun res!2609838 () Bool)

(declare-fun e!3852105 () Bool)

(assert (=> b!6342017 (=> (not res!2609838) (not e!3852105))))

(declare-fun call!540517 () Bool)

(assert (=> b!6342017 (= res!2609838 call!540517)))

(declare-fun e!3852104 () Bool)

(assert (=> b!6342017 (= e!3852104 e!3852105)))

(declare-fun b!6342018 () Bool)

(declare-fun e!3852106 () Bool)

(assert (=> b!6342018 (= e!3852106 e!3852104)))

(declare-fun c!1153169 () Bool)

(assert (=> b!6342018 (= c!1153169 ((_ is Union!16245) (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))))))

(declare-fun b!6342019 () Bool)

(declare-fun e!3852110 () Bool)

(declare-fun call!540515 () Bool)

(assert (=> b!6342019 (= e!3852110 call!540515)))

(declare-fun b!6342020 () Bool)

(declare-fun res!2609837 () Bool)

(declare-fun e!3852107 () Bool)

(assert (=> b!6342020 (=> res!2609837 e!3852107)))

(assert (=> b!6342020 (= res!2609837 (not ((_ is Concat!25090) (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292))))))))

(assert (=> b!6342020 (= e!3852104 e!3852107)))

(declare-fun b!6342021 () Bool)

(declare-fun e!3852108 () Bool)

(assert (=> b!6342021 (= e!3852106 e!3852108)))

(declare-fun res!2609835 () Bool)

(assert (=> b!6342021 (= res!2609835 (not (nullable!6238 (reg!16574 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))))))))

(assert (=> b!6342021 (=> (not res!2609835) (not e!3852108))))

(declare-fun b!6342022 () Bool)

(assert (=> b!6342022 (= e!3852107 e!3852110)))

(declare-fun res!2609836 () Bool)

(assert (=> b!6342022 (=> (not res!2609836) (not e!3852110))))

(assert (=> b!6342022 (= res!2609836 call!540517)))

(declare-fun d!1990426 () Bool)

(declare-fun res!2609834 () Bool)

(declare-fun e!3852109 () Bool)

(assert (=> d!1990426 (=> res!2609834 e!3852109)))

(assert (=> d!1990426 (= res!2609834 ((_ is ElementMatch!16245) (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))))))

(assert (=> d!1990426 (= (validRegex!7981 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))) e!3852109)))

(declare-fun bm!540510 () Bool)

(declare-fun c!1153170 () Bool)

(declare-fun call!540516 () Bool)

(assert (=> bm!540510 (= call!540516 (validRegex!7981 (ite c!1153170 (reg!16574 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))) (ite c!1153169 (regTwo!33003 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))) (regTwo!33002 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292))))))))))

(declare-fun bm!540511 () Bool)

(assert (=> bm!540511 (= call!540515 call!540516)))

(declare-fun b!6342023 () Bool)

(assert (=> b!6342023 (= e!3852105 call!540515)))

(declare-fun bm!540512 () Bool)

(assert (=> bm!540512 (= call!540517 (validRegex!7981 (ite c!1153169 (regOne!33003 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))) (regOne!33002 (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))))))))

(declare-fun b!6342024 () Bool)

(assert (=> b!6342024 (= e!3852109 e!3852106)))

(assert (=> b!6342024 (= c!1153170 ((_ is Star!16245) (ite c!1153000 (reg!16574 r!7292) (ite c!1152999 (regTwo!33003 r!7292) (regTwo!33002 r!7292)))))))

(declare-fun b!6342025 () Bool)

(assert (=> b!6342025 (= e!3852108 call!540516)))

(assert (= (and d!1990426 (not res!2609834)) b!6342024))

(assert (= (and b!6342024 c!1153170) b!6342021))

(assert (= (and b!6342024 (not c!1153170)) b!6342018))

(assert (= (and b!6342021 res!2609835) b!6342025))

(assert (= (and b!6342018 c!1153169) b!6342017))

(assert (= (and b!6342018 (not c!1153169)) b!6342020))

(assert (= (and b!6342017 res!2609838) b!6342023))

(assert (= (and b!6342020 (not res!2609837)) b!6342022))

(assert (= (and b!6342022 res!2609836) b!6342019))

(assert (= (or b!6342023 b!6342019) bm!540511))

(assert (= (or b!6342017 b!6342022) bm!540512))

(assert (= (or b!6342025 bm!540511) bm!540510))

(declare-fun m!7150438 () Bool)

(assert (=> b!6342021 m!7150438))

(declare-fun m!7150440 () Bool)

(assert (=> bm!540510 m!7150440))

(declare-fun m!7150442 () Bool)

(assert (=> bm!540512 m!7150442))

(assert (=> bm!540403 d!1990426))

(assert (=> b!6341509 d!1990038))

(declare-fun d!1990428 () Bool)

(declare-fun lt!2362634 () Int)

(assert (=> d!1990428 (>= lt!2362634 0)))

(declare-fun e!3852111 () Int)

(assert (=> d!1990428 (= lt!2362634 e!3852111)))

(declare-fun c!1153171 () Bool)

(assert (=> d!1990428 (= c!1153171 ((_ is Cons!64912) (t!378622 zl!343)))))

(assert (=> d!1990428 (= (zipperDepthTotal!382 (t!378622 zl!343)) lt!2362634)))

(declare-fun b!6342026 () Bool)

(assert (=> b!6342026 (= e!3852111 (+ (contextDepthTotal!354 (h!71360 (t!378622 zl!343))) (zipperDepthTotal!382 (t!378622 (t!378622 zl!343)))))))

(declare-fun b!6342027 () Bool)

(assert (=> b!6342027 (= e!3852111 0)))

(assert (= (and d!1990428 c!1153171) b!6342026))

(assert (= (and d!1990428 (not c!1153171)) b!6342027))

(declare-fun m!7150444 () Bool)

(assert (=> b!6342026 m!7150444))

(declare-fun m!7150446 () Bool)

(assert (=> b!6342026 m!7150446))

(assert (=> b!6341509 d!1990428))

(declare-fun bs!1587883 () Bool)

(declare-fun d!1990430 () Bool)

(assert (= bs!1587883 (and d!1990430 b!6341979)))

(declare-fun lambda!348443 () Int)

(assert (=> bs!1587883 (not (= lambda!348443 lambda!348441))))

(declare-fun bs!1587884 () Bool)

(assert (= bs!1587884 (and d!1990430 b!6340742)))

(assert (=> bs!1587884 (not (= lambda!348443 lambda!348342))))

(declare-fun bs!1587885 () Bool)

(assert (= bs!1587885 (and d!1990430 d!1990254)))

(assert (=> bs!1587885 (= lambda!348443 lambda!348415)))

(declare-fun bs!1587886 () Bool)

(assert (= bs!1587886 (and d!1990430 b!6340744)))

(assert (=> bs!1587886 (not (= lambda!348443 lambda!348343))))

(declare-fun bs!1587887 () Bool)

(assert (= bs!1587887 (and d!1990430 d!1990394)))

(assert (=> bs!1587887 (= lambda!348443 lambda!348430)))

(declare-fun bs!1587888 () Bool)

(assert (= bs!1587888 (and d!1990430 b!6341981)))

(assert (=> bs!1587888 (not (= lambda!348443 lambda!348442))))

(declare-fun bs!1587889 () Bool)

(assert (= bs!1587889 (and d!1990430 b!6340737)))

(assert (=> bs!1587889 (not (= lambda!348443 lambda!348339))))

(declare-fun bs!1587890 () Bool)

(assert (= bs!1587890 (and d!1990430 d!1990404)))

(assert (=> bs!1587890 (not (= lambda!348443 lambda!348439))))

(declare-fun bs!1587891 () Bool)

(assert (= bs!1587891 (and d!1990430 d!1990210)))

(assert (=> bs!1587891 (= lambda!348443 lambda!348412)))

(declare-fun bs!1587892 () Bool)

(assert (= bs!1587892 (and d!1990430 b!6340739)))

(assert (=> bs!1587892 (not (= lambda!348443 lambda!348340))))

(assert (=> d!1990430 (= (nullableZipper!2011 ((_ map or) lt!2362434 lt!2362436)) (exists!2566 ((_ map or) lt!2362434 lt!2362436) lambda!348443))))

(declare-fun bs!1587893 () Bool)

(assert (= bs!1587893 d!1990430))

(declare-fun m!7150448 () Bool)

(assert (=> bs!1587893 m!7150448))

(assert (=> b!6341345 d!1990430))

(declare-fun d!1990432 () Bool)

(declare-fun res!2609843 () Bool)

(declare-fun e!3852116 () Bool)

(assert (=> d!1990432 (=> res!2609843 e!3852116)))

(assert (=> d!1990432 (= res!2609843 ((_ is Nil!64912) lt!2362576))))

(assert (=> d!1990432 (= (noDuplicate!2075 lt!2362576) e!3852116)))

(declare-fun b!6342032 () Bool)

(declare-fun e!3852117 () Bool)

(assert (=> b!6342032 (= e!3852116 e!3852117)))

(declare-fun res!2609844 () Bool)

(assert (=> b!6342032 (=> (not res!2609844) (not e!3852117))))

(declare-fun contains!20150 (List!65036 Context!11258) Bool)

(assert (=> b!6342032 (= res!2609844 (not (contains!20150 (t!378622 lt!2362576) (h!71360 lt!2362576))))))

(declare-fun b!6342033 () Bool)

(assert (=> b!6342033 (= e!3852117 (noDuplicate!2075 (t!378622 lt!2362576)))))

(assert (= (and d!1990432 (not res!2609843)) b!6342032))

(assert (= (and b!6342032 res!2609844) b!6342033))

(declare-fun m!7150450 () Bool)

(assert (=> b!6342032 m!7150450))

(declare-fun m!7150452 () Bool)

(assert (=> b!6342033 m!7150452))

(assert (=> d!1990164 d!1990432))

(declare-fun d!1990434 () Bool)

(declare-fun e!3852126 () Bool)

(assert (=> d!1990434 e!3852126))

(declare-fun res!2609850 () Bool)

(assert (=> d!1990434 (=> (not res!2609850) (not e!3852126))))

(declare-fun res!2609849 () List!65036)

(assert (=> d!1990434 (= res!2609850 (noDuplicate!2075 res!2609849))))

(declare-fun e!3852124 () Bool)

(assert (=> d!1990434 e!3852124))

(assert (=> d!1990434 (= (choose!47023 z!1189) res!2609849)))

(declare-fun b!6342041 () Bool)

(declare-fun e!3852125 () Bool)

(declare-fun tp!1768428 () Bool)

(assert (=> b!6342041 (= e!3852125 tp!1768428)))

(declare-fun tp!1768427 () Bool)

(declare-fun b!6342040 () Bool)

(assert (=> b!6342040 (= e!3852124 (and (inv!83859 (h!71360 res!2609849)) e!3852125 tp!1768427))))

(declare-fun b!6342042 () Bool)

(assert (=> b!6342042 (= e!3852126 (= (content!12242 res!2609849) z!1189))))

(assert (= b!6342040 b!6342041))

(assert (= (and d!1990434 ((_ is Cons!64912) res!2609849)) b!6342040))

(assert (= (and d!1990434 res!2609850) b!6342042))

(declare-fun m!7150454 () Bool)

(assert (=> d!1990434 m!7150454))

(declare-fun m!7150456 () Bool)

(assert (=> b!6342040 m!7150456))

(declare-fun m!7150458 () Bool)

(assert (=> b!6342042 m!7150458))

(assert (=> d!1990164 d!1990434))

(declare-fun d!1990436 () Bool)

(assert (=> d!1990436 (= (isEmpty!36989 (tail!12068 lt!2362429)) ((_ is Nil!64911) (tail!12068 lt!2362429)))))

(assert (=> b!6341428 d!1990436))

(declare-fun d!1990438 () Bool)

(assert (=> d!1990438 (= (tail!12068 lt!2362429) (t!378621 lt!2362429))))

(assert (=> b!6341428 d!1990438))

(assert (=> b!6341429 d!1990228))

(declare-fun d!1990440 () Bool)

(assert (=> d!1990440 (= (Exists!3315 (ite c!1152938 lambda!348392 lambda!348393)) (choose!47010 (ite c!1152938 lambda!348392 lambda!348393)))))

(declare-fun bs!1587894 () Bool)

(assert (= bs!1587894 d!1990440))

(declare-fun m!7150460 () Bool)

(assert (=> bs!1587894 m!7150460))

(assert (=> bm!540386 d!1990440))

(assert (=> d!1990158 d!1990234))

(assert (=> d!1990158 d!1990364))

(declare-fun d!1990442 () Bool)

(assert (=> d!1990442 (= (nullable!6238 (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))) (nullableFct!2185 (regOne!33002 (regOne!33002 (regOne!33002 r!7292)))))))

(declare-fun bs!1587895 () Bool)

(assert (= bs!1587895 d!1990442))

(declare-fun m!7150462 () Bool)

(assert (=> bs!1587895 m!7150462))

(assert (=> b!6340868 d!1990442))

(assert (=> bm!540392 d!1990234))

(declare-fun call!540519 () List!65035)

(declare-fun c!1153175 () Bool)

(declare-fun c!1153174 () Bool)

(declare-fun bm!540513 () Bool)

(assert (=> bm!540513 (= call!540519 ($colon$colon!2105 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))) (ite (or c!1153175 c!1153174) (regTwo!33002 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))))

(declare-fun b!6342043 () Bool)

(declare-fun e!3852132 () (InoxSet Context!11258))

(declare-fun call!540521 () (InoxSet Context!11258))

(declare-fun call!540523 () (InoxSet Context!11258))

(assert (=> b!6342043 (= e!3852132 ((_ map or) call!540521 call!540523))))

(declare-fun b!6342044 () Bool)

(declare-fun e!3852128 () (InoxSet Context!11258))

(assert (=> b!6342044 (= e!3852132 e!3852128)))

(assert (=> b!6342044 (= c!1153174 ((_ is Concat!25090) (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))

(declare-fun call!540522 () List!65035)

(declare-fun c!1153176 () Bool)

(declare-fun call!540518 () (InoxSet Context!11258))

(declare-fun bm!540514 () Bool)

(assert (=> bm!540514 (= call!540518 (derivationStepZipperDown!1493 (ite c!1153176 (regTwo!33003 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (ite c!1153175 (regTwo!33002 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (ite c!1153174 (regOne!33002 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (reg!16574 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))) (ite (or c!1153176 c!1153175) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (Context!11259 call!540522)) (h!71358 s!2326)))))

(declare-fun bm!540515 () Bool)

(assert (=> bm!540515 (= call!540523 call!540518)))

(declare-fun bm!540516 () Bool)

(assert (=> bm!540516 (= call!540521 (derivationStepZipperDown!1493 (ite c!1153176 (regOne!33003 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (regOne!33002 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))) (ite c!1153176 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (Context!11259 call!540519)) (h!71358 s!2326)))))

(declare-fun bm!540517 () Bool)

(assert (=> bm!540517 (= call!540522 call!540519)))

(declare-fun b!6342046 () Bool)

(declare-fun call!540520 () (InoxSet Context!11258))

(assert (=> b!6342046 (= e!3852128 call!540520)))

(declare-fun b!6342047 () Bool)

(declare-fun e!3852127 () (InoxSet Context!11258))

(assert (=> b!6342047 (= e!3852127 (store ((as const (Array Context!11258 Bool)) false) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) true))))

(declare-fun b!6342048 () Bool)

(declare-fun e!3852129 () (InoxSet Context!11258))

(assert (=> b!6342048 (= e!3852129 call!540520)))

(declare-fun b!6342049 () Bool)

(declare-fun c!1153173 () Bool)

(assert (=> b!6342049 (= c!1153173 ((_ is Star!16245) (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))

(assert (=> b!6342049 (= e!3852128 e!3852129)))

(declare-fun b!6342050 () Bool)

(declare-fun e!3852131 () Bool)

(assert (=> b!6342050 (= e!3852131 (nullable!6238 (regOne!33002 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))))))))

(declare-fun b!6342045 () Bool)

(declare-fun e!3852130 () (InoxSet Context!11258))

(assert (=> b!6342045 (= e!3852127 e!3852130)))

(assert (=> b!6342045 (= c!1153176 ((_ is Union!16245) (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))

(declare-fun d!1990444 () Bool)

(declare-fun c!1153172 () Bool)

(assert (=> d!1990444 (= c!1153172 (and ((_ is ElementMatch!16245) (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (= (c!1152752 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (h!71358 s!2326))))))

(assert (=> d!1990444 (= (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343))))))) (Context!11259 (t!378621 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))) (h!71358 s!2326)) e!3852127)))

(declare-fun b!6342051 () Bool)

(assert (=> b!6342051 (= e!3852129 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6342052 () Bool)

(assert (=> b!6342052 (= e!3852130 ((_ map or) call!540521 call!540518))))

(declare-fun bm!540518 () Bool)

(assert (=> bm!540518 (= call!540520 call!540523)))

(declare-fun b!6342053 () Bool)

(assert (=> b!6342053 (= c!1153175 e!3852131)))

(declare-fun res!2609851 () Bool)

(assert (=> b!6342053 (=> (not res!2609851) (not e!3852131))))

(assert (=> b!6342053 (= res!2609851 ((_ is Concat!25090) (h!71359 (exprs!6129 (Context!11259 (Cons!64911 (h!71359 (exprs!6129 (h!71360 zl!343))) (t!378621 (exprs!6129 (h!71360 zl!343)))))))))))

(assert (=> b!6342053 (= e!3852130 e!3852132)))

(assert (= (and d!1990444 c!1153172) b!6342047))

(assert (= (and d!1990444 (not c!1153172)) b!6342045))

(assert (= (and b!6342045 c!1153176) b!6342052))

(assert (= (and b!6342045 (not c!1153176)) b!6342053))

(assert (= (and b!6342053 res!2609851) b!6342050))

(assert (= (and b!6342053 c!1153175) b!6342043))

(assert (= (and b!6342053 (not c!1153175)) b!6342044))

(assert (= (and b!6342044 c!1153174) b!6342046))

(assert (= (and b!6342044 (not c!1153174)) b!6342049))

(assert (= (and b!6342049 c!1153173) b!6342048))

(assert (= (and b!6342049 (not c!1153173)) b!6342051))

(assert (= (or b!6342046 b!6342048) bm!540517))

(assert (= (or b!6342046 b!6342048) bm!540518))

(assert (= (or b!6342043 bm!540517) bm!540513))

(assert (= (or b!6342043 bm!540518) bm!540515))

(assert (= (or b!6342052 bm!540515) bm!540514))

(assert (= (or b!6342052 b!6342043) bm!540516))

(declare-fun m!7150464 () Bool)

(assert (=> bm!540514 m!7150464))

(declare-fun m!7150466 () Bool)

(assert (=> bm!540513 m!7150466))

(declare-fun m!7150468 () Bool)

(assert (=> b!6342050 m!7150468))

(declare-fun m!7150470 () Bool)

(assert (=> b!6342047 m!7150470))

(declare-fun m!7150472 () Bool)

(assert (=> bm!540516 m!7150472))

(assert (=> bm!540408 d!1990444))

(declare-fun d!1990446 () Bool)

(declare-fun c!1153177 () Bool)

(assert (=> d!1990446 (= c!1153177 (isEmpty!36992 (tail!12067 (t!378620 s!2326))))))

(declare-fun e!3852133 () Bool)

(assert (=> d!1990446 (= (matchZipper!2257 (derivationStepZipper!2211 lt!2362417 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))) e!3852133)))

(declare-fun b!6342054 () Bool)

(assert (=> b!6342054 (= e!3852133 (nullableZipper!2011 (derivationStepZipper!2211 lt!2362417 (head!12981 (t!378620 s!2326)))))))

(declare-fun b!6342055 () Bool)

(assert (=> b!6342055 (= e!3852133 (matchZipper!2257 (derivationStepZipper!2211 (derivationStepZipper!2211 lt!2362417 (head!12981 (t!378620 s!2326))) (head!12981 (tail!12067 (t!378620 s!2326)))) (tail!12067 (tail!12067 (t!378620 s!2326)))))))

(assert (= (and d!1990446 c!1153177) b!6342054))

(assert (= (and d!1990446 (not c!1153177)) b!6342055))

(assert (=> d!1990446 m!7149338))

(assert (=> d!1990446 m!7150060))

(assert (=> b!6342054 m!7149336))

(declare-fun m!7150474 () Bool)

(assert (=> b!6342054 m!7150474))

(assert (=> b!6342055 m!7149338))

(assert (=> b!6342055 m!7150064))

(assert (=> b!6342055 m!7149336))

(assert (=> b!6342055 m!7150064))

(declare-fun m!7150476 () Bool)

(assert (=> b!6342055 m!7150476))

(assert (=> b!6342055 m!7149338))

(assert (=> b!6342055 m!7150068))

(assert (=> b!6342055 m!7150476))

(assert (=> b!6342055 m!7150068))

(declare-fun m!7150478 () Bool)

(assert (=> b!6342055 m!7150478))

(assert (=> b!6340708 d!1990446))

(declare-fun bs!1587896 () Bool)

(declare-fun d!1990448 () Bool)

(assert (= bs!1587896 (and d!1990448 b!6340632)))

(declare-fun lambda!348444 () Int)

(assert (=> bs!1587896 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348444 lambda!348315))))

(declare-fun bs!1587897 () Bool)

(assert (= bs!1587897 (and d!1990448 d!1990274)))

(assert (=> bs!1587897 (= lambda!348444 lambda!348417)))

(declare-fun bs!1587898 () Bool)

(assert (= bs!1587898 (and d!1990448 d!1990194)))

(assert (=> bs!1587898 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348444 lambda!348409))))

(declare-fun bs!1587899 () Bool)

(assert (= bs!1587899 (and d!1990448 d!1990248)))

(assert (=> bs!1587899 (= lambda!348444 lambda!348414)))

(declare-fun bs!1587900 () Bool)

(assert (= bs!1587900 (and d!1990448 d!1990340)))

(assert (=> bs!1587900 (= (= (head!12981 (t!378620 s!2326)) (head!12981 s!2326)) (= lambda!348444 lambda!348425))))

(assert (=> d!1990448 true))

(assert (=> d!1990448 (= (derivationStepZipper!2211 lt!2362417 (head!12981 (t!378620 s!2326))) (flatMap!1750 lt!2362417 lambda!348444))))

(declare-fun bs!1587901 () Bool)

(assert (= bs!1587901 d!1990448))

(declare-fun m!7150480 () Bool)

(assert (=> bs!1587901 m!7150480))

(assert (=> b!6340708 d!1990448))

(assert (=> b!6340708 d!1990250))

(assert (=> b!6340708 d!1990252))

(declare-fun d!1990450 () Bool)

(assert (=> d!1990450 (= (isEmptyExpr!1647 lt!2362573) ((_ is EmptyExpr!16245) lt!2362573))))

(assert (=> b!6341459 d!1990450))

(declare-fun b!6342056 () Bool)

(declare-fun res!2609856 () Bool)

(declare-fun e!3852135 () Bool)

(assert (=> b!6342056 (=> (not res!2609856) (not e!3852135))))

(declare-fun call!540526 () Bool)

(assert (=> b!6342056 (= res!2609856 call!540526)))

(declare-fun e!3852134 () Bool)

(assert (=> b!6342056 (= e!3852134 e!3852135)))

(declare-fun b!6342057 () Bool)

(declare-fun e!3852136 () Bool)

(assert (=> b!6342057 (= e!3852136 e!3852134)))

(declare-fun c!1153178 () Bool)

(assert (=> b!6342057 (= c!1153178 ((_ is Union!16245) lt!2362573))))

(declare-fun b!6342058 () Bool)

(declare-fun e!3852140 () Bool)

(declare-fun call!540524 () Bool)

(assert (=> b!6342058 (= e!3852140 call!540524)))

(declare-fun b!6342059 () Bool)

(declare-fun res!2609855 () Bool)

(declare-fun e!3852137 () Bool)

(assert (=> b!6342059 (=> res!2609855 e!3852137)))

(assert (=> b!6342059 (= res!2609855 (not ((_ is Concat!25090) lt!2362573)))))

(assert (=> b!6342059 (= e!3852134 e!3852137)))

(declare-fun b!6342060 () Bool)

(declare-fun e!3852138 () Bool)

(assert (=> b!6342060 (= e!3852136 e!3852138)))

(declare-fun res!2609853 () Bool)

(assert (=> b!6342060 (= res!2609853 (not (nullable!6238 (reg!16574 lt!2362573))))))

(assert (=> b!6342060 (=> (not res!2609853) (not e!3852138))))

(declare-fun b!6342061 () Bool)

(assert (=> b!6342061 (= e!3852137 e!3852140)))

(declare-fun res!2609854 () Bool)

(assert (=> b!6342061 (=> (not res!2609854) (not e!3852140))))

(assert (=> b!6342061 (= res!2609854 call!540526)))

(declare-fun d!1990452 () Bool)

(declare-fun res!2609852 () Bool)

(declare-fun e!3852139 () Bool)

(assert (=> d!1990452 (=> res!2609852 e!3852139)))

(assert (=> d!1990452 (= res!2609852 ((_ is ElementMatch!16245) lt!2362573))))

(assert (=> d!1990452 (= (validRegex!7981 lt!2362573) e!3852139)))

(declare-fun bm!540519 () Bool)

(declare-fun c!1153179 () Bool)

(declare-fun call!540525 () Bool)

(assert (=> bm!540519 (= call!540525 (validRegex!7981 (ite c!1153179 (reg!16574 lt!2362573) (ite c!1153178 (regTwo!33003 lt!2362573) (regTwo!33002 lt!2362573)))))))

(declare-fun bm!540520 () Bool)

(assert (=> bm!540520 (= call!540524 call!540525)))

(declare-fun b!6342062 () Bool)

(assert (=> b!6342062 (= e!3852135 call!540524)))

(declare-fun bm!540521 () Bool)

(assert (=> bm!540521 (= call!540526 (validRegex!7981 (ite c!1153178 (regOne!33003 lt!2362573) (regOne!33002 lt!2362573))))))

(declare-fun b!6342063 () Bool)

(assert (=> b!6342063 (= e!3852139 e!3852136)))

(assert (=> b!6342063 (= c!1153179 ((_ is Star!16245) lt!2362573))))

(declare-fun b!6342064 () Bool)

(assert (=> b!6342064 (= e!3852138 call!540525)))

(assert (= (and d!1990452 (not res!2609852)) b!6342063))

(assert (= (and b!6342063 c!1153179) b!6342060))

(assert (= (and b!6342063 (not c!1153179)) b!6342057))

(assert (= (and b!6342060 res!2609853) b!6342064))

(assert (= (and b!6342057 c!1153178) b!6342056))

(assert (= (and b!6342057 (not c!1153178)) b!6342059))

(assert (= (and b!6342056 res!2609856) b!6342062))

(assert (= (and b!6342059 (not res!2609855)) b!6342061))

(assert (= (and b!6342061 res!2609854) b!6342058))

(assert (= (or b!6342062 b!6342058) bm!540520))

(assert (= (or b!6342056 b!6342061) bm!540521))

(assert (= (or b!6342064 bm!540520) bm!540519))

(declare-fun m!7150482 () Bool)

(assert (=> b!6342060 m!7150482))

(declare-fun m!7150484 () Bool)

(assert (=> bm!540519 m!7150484))

(declare-fun m!7150486 () Bool)

(assert (=> bm!540521 m!7150486))

(assert (=> d!1990162 d!1990452))

(declare-fun d!1990454 () Bool)

(declare-fun res!2609857 () Bool)

(declare-fun e!3852141 () Bool)

(assert (=> d!1990454 (=> res!2609857 e!3852141)))

(assert (=> d!1990454 (= res!2609857 ((_ is Nil!64911) (exprs!6129 (h!71360 zl!343))))))

(assert (=> d!1990454 (= (forall!15401 (exprs!6129 (h!71360 zl!343)) lambda!348406) e!3852141)))

(declare-fun b!6342065 () Bool)

(declare-fun e!3852142 () Bool)

(assert (=> b!6342065 (= e!3852141 e!3852142)))

(declare-fun res!2609858 () Bool)

(assert (=> b!6342065 (=> (not res!2609858) (not e!3852142))))

(assert (=> b!6342065 (= res!2609858 (dynLambda!25729 lambda!348406 (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6342066 () Bool)

(assert (=> b!6342066 (= e!3852142 (forall!15401 (t!378621 (exprs!6129 (h!71360 zl!343))) lambda!348406))))

(assert (= (and d!1990454 (not res!2609857)) b!6342065))

(assert (= (and b!6342065 res!2609858) b!6342066))

(declare-fun b_lambda!241329 () Bool)

(assert (=> (not b_lambda!241329) (not b!6342065)))

(declare-fun m!7150488 () Bool)

(assert (=> b!6342065 m!7150488))

(declare-fun m!7150490 () Bool)

(assert (=> b!6342066 m!7150490))

(assert (=> d!1990162 d!1990454))

(declare-fun b!6342067 () Bool)

(declare-fun e!3852146 () Bool)

(assert (=> b!6342067 (= e!3852146 (not (= (head!12981 s!2326) (c!1152752 (regTwo!33002 r!7292)))))))

(declare-fun b!6342068 () Bool)

(declare-fun e!3852148 () Bool)

(declare-fun e!3852149 () Bool)

(assert (=> b!6342068 (= e!3852148 e!3852149)))

(declare-fun c!1153181 () Bool)

(assert (=> b!6342068 (= c!1153181 ((_ is EmptyLang!16245) (regTwo!33002 r!7292)))))

(declare-fun b!6342069 () Bool)

(declare-fun e!3852144 () Bool)

(declare-fun e!3852147 () Bool)

(assert (=> b!6342069 (= e!3852144 e!3852147)))

(declare-fun res!2609862 () Bool)

(assert (=> b!6342069 (=> (not res!2609862) (not e!3852147))))

(declare-fun lt!2362635 () Bool)

(assert (=> b!6342069 (= res!2609862 (not lt!2362635))))

(declare-fun b!6342070 () Bool)

(declare-fun e!3852145 () Bool)

(assert (=> b!6342070 (= e!3852145 (nullable!6238 (regTwo!33002 r!7292)))))

(declare-fun b!6342071 () Bool)

(declare-fun res!2609863 () Bool)

(declare-fun e!3852143 () Bool)

(assert (=> b!6342071 (=> (not res!2609863) (not e!3852143))))

(assert (=> b!6342071 (= res!2609863 (isEmpty!36992 (tail!12067 s!2326)))))

(declare-fun d!1990456 () Bool)

(assert (=> d!1990456 e!3852148))

(declare-fun c!1153180 () Bool)

(assert (=> d!1990456 (= c!1153180 ((_ is EmptyExpr!16245) (regTwo!33002 r!7292)))))

(assert (=> d!1990456 (= lt!2362635 e!3852145)))

(declare-fun c!1153182 () Bool)

(assert (=> d!1990456 (= c!1153182 (isEmpty!36992 s!2326))))

(assert (=> d!1990456 (validRegex!7981 (regTwo!33002 r!7292))))

(assert (=> d!1990456 (= (matchR!8428 (regTwo!33002 r!7292) s!2326) lt!2362635)))

(declare-fun b!6342072 () Bool)

(declare-fun call!540527 () Bool)

(assert (=> b!6342072 (= e!3852148 (= lt!2362635 call!540527))))

(declare-fun b!6342073 () Bool)

(declare-fun res!2609866 () Bool)

(assert (=> b!6342073 (=> (not res!2609866) (not e!3852143))))

(assert (=> b!6342073 (= res!2609866 (not call!540527))))

(declare-fun b!6342074 () Bool)

(declare-fun res!2609859 () Bool)

(assert (=> b!6342074 (=> res!2609859 e!3852144)))

(assert (=> b!6342074 (= res!2609859 (not ((_ is ElementMatch!16245) (regTwo!33002 r!7292))))))

(assert (=> b!6342074 (= e!3852149 e!3852144)))

(declare-fun b!6342075 () Bool)

(declare-fun res!2609860 () Bool)

(assert (=> b!6342075 (=> res!2609860 e!3852146)))

(assert (=> b!6342075 (= res!2609860 (not (isEmpty!36992 (tail!12067 s!2326))))))

(declare-fun b!6342076 () Bool)

(assert (=> b!6342076 (= e!3852143 (= (head!12981 s!2326) (c!1152752 (regTwo!33002 r!7292))))))

(declare-fun b!6342077 () Bool)

(assert (=> b!6342077 (= e!3852145 (matchR!8428 (derivativeStep!4950 (regTwo!33002 r!7292) (head!12981 s!2326)) (tail!12067 s!2326)))))

(declare-fun b!6342078 () Bool)

(assert (=> b!6342078 (= e!3852147 e!3852146)))

(declare-fun res!2609861 () Bool)

(assert (=> b!6342078 (=> res!2609861 e!3852146)))

(assert (=> b!6342078 (= res!2609861 call!540527)))

(declare-fun bm!540522 () Bool)

(assert (=> bm!540522 (= call!540527 (isEmpty!36992 s!2326))))

(declare-fun b!6342079 () Bool)

(declare-fun res!2609865 () Bool)

(assert (=> b!6342079 (=> res!2609865 e!3852144)))

(assert (=> b!6342079 (= res!2609865 e!3852143)))

(declare-fun res!2609864 () Bool)

(assert (=> b!6342079 (=> (not res!2609864) (not e!3852143))))

(assert (=> b!6342079 (= res!2609864 lt!2362635)))

(declare-fun b!6342080 () Bool)

(assert (=> b!6342080 (= e!3852149 (not lt!2362635))))

(assert (= (and d!1990456 c!1153182) b!6342070))

(assert (= (and d!1990456 (not c!1153182)) b!6342077))

(assert (= (and d!1990456 c!1153180) b!6342072))

(assert (= (and d!1990456 (not c!1153180)) b!6342068))

(assert (= (and b!6342068 c!1153181) b!6342080))

(assert (= (and b!6342068 (not c!1153181)) b!6342074))

(assert (= (and b!6342074 (not res!2609859)) b!6342079))

(assert (= (and b!6342079 res!2609864) b!6342073))

(assert (= (and b!6342073 res!2609866) b!6342071))

(assert (= (and b!6342071 res!2609863) b!6342076))

(assert (= (and b!6342079 (not res!2609865)) b!6342069))

(assert (= (and b!6342069 res!2609862) b!6342078))

(assert (= (and b!6342078 (not res!2609861)) b!6342075))

(assert (= (and b!6342075 (not res!2609860)) b!6342067))

(assert (= (or b!6342072 b!6342073 b!6342078) bm!540522))

(assert (=> bm!540522 m!7149734))

(assert (=> b!6342071 m!7149736))

(assert (=> b!6342071 m!7149736))

(assert (=> b!6342071 m!7149738))

(assert (=> b!6342070 m!7150006))

(assert (=> b!6342076 m!7149742))

(assert (=> b!6342067 m!7149742))

(assert (=> b!6342075 m!7149736))

(assert (=> b!6342075 m!7149736))

(assert (=> b!6342075 m!7149738))

(assert (=> b!6342077 m!7149742))

(assert (=> b!6342077 m!7149742))

(declare-fun m!7150492 () Bool)

(assert (=> b!6342077 m!7150492))

(assert (=> b!6342077 m!7149736))

(assert (=> b!6342077 m!7150492))

(assert (=> b!6342077 m!7149736))

(declare-fun m!7150494 () Bool)

(assert (=> b!6342077 m!7150494))

(assert (=> d!1990456 m!7149734))

(assert (=> d!1990456 m!7150014))

(assert (=> b!6341032 d!1990456))

(declare-fun d!1990458 () Bool)

(assert (=> d!1990458 (= (nullable!6238 (reg!16574 (regOne!33002 (regOne!33002 r!7292)))) (nullableFct!2185 (reg!16574 (regOne!33002 (regOne!33002 r!7292)))))))

(declare-fun bs!1587902 () Bool)

(assert (= bs!1587902 d!1990458))

(declare-fun m!7150496 () Bool)

(assert (=> bs!1587902 m!7150496))

(assert (=> b!6341412 d!1990458))

(declare-fun d!1990460 () Bool)

(declare-fun c!1153183 () Bool)

(assert (=> d!1990460 (= c!1153183 (isEmpty!36992 (tail!12067 (t!378620 s!2326))))))

(declare-fun e!3852150 () Bool)

(assert (=> d!1990460 (= (matchZipper!2257 (derivationStepZipper!2211 lt!2362436 (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))) e!3852150)))

(declare-fun b!6342081 () Bool)

(assert (=> b!6342081 (= e!3852150 (nullableZipper!2011 (derivationStepZipper!2211 lt!2362436 (head!12981 (t!378620 s!2326)))))))

(declare-fun b!6342082 () Bool)

(assert (=> b!6342082 (= e!3852150 (matchZipper!2257 (derivationStepZipper!2211 (derivationStepZipper!2211 lt!2362436 (head!12981 (t!378620 s!2326))) (head!12981 (tail!12067 (t!378620 s!2326)))) (tail!12067 (tail!12067 (t!378620 s!2326)))))))

(assert (= (and d!1990460 c!1153183) b!6342081))

(assert (= (and d!1990460 (not c!1153183)) b!6342082))

(assert (=> d!1990460 m!7149338))

(assert (=> d!1990460 m!7150060))

(assert (=> b!6342081 m!7149790))

(declare-fun m!7150498 () Bool)

(assert (=> b!6342081 m!7150498))

(assert (=> b!6342082 m!7149338))

(assert (=> b!6342082 m!7150064))

(assert (=> b!6342082 m!7149790))

(assert (=> b!6342082 m!7150064))

(declare-fun m!7150500 () Bool)

(assert (=> b!6342082 m!7150500))

(assert (=> b!6342082 m!7149338))

(assert (=> b!6342082 m!7150068))

(assert (=> b!6342082 m!7150500))

(assert (=> b!6342082 m!7150068))

(declare-fun m!7150502 () Bool)

(assert (=> b!6342082 m!7150502))

(assert (=> b!6341348 d!1990460))

(declare-fun bs!1587903 () Bool)

(declare-fun d!1990462 () Bool)

(assert (= bs!1587903 (and d!1990462 b!6340632)))

(declare-fun lambda!348445 () Int)

(assert (=> bs!1587903 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348445 lambda!348315))))

(declare-fun bs!1587904 () Bool)

(assert (= bs!1587904 (and d!1990462 d!1990274)))

(assert (=> bs!1587904 (= lambda!348445 lambda!348417)))

(declare-fun bs!1587905 () Bool)

(assert (= bs!1587905 (and d!1990462 d!1990448)))

(assert (=> bs!1587905 (= lambda!348445 lambda!348444)))

(declare-fun bs!1587906 () Bool)

(assert (= bs!1587906 (and d!1990462 d!1990194)))

(assert (=> bs!1587906 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348445 lambda!348409))))

(declare-fun bs!1587907 () Bool)

(assert (= bs!1587907 (and d!1990462 d!1990248)))

(assert (=> bs!1587907 (= lambda!348445 lambda!348414)))

(declare-fun bs!1587908 () Bool)

(assert (= bs!1587908 (and d!1990462 d!1990340)))

(assert (=> bs!1587908 (= (= (head!12981 (t!378620 s!2326)) (head!12981 s!2326)) (= lambda!348445 lambda!348425))))

(assert (=> d!1990462 true))

(assert (=> d!1990462 (= (derivationStepZipper!2211 lt!2362436 (head!12981 (t!378620 s!2326))) (flatMap!1750 lt!2362436 lambda!348445))))

(declare-fun bs!1587909 () Bool)

(assert (= bs!1587909 d!1990462))

(declare-fun m!7150504 () Bool)

(assert (=> bs!1587909 m!7150504))

(assert (=> b!6341348 d!1990462))

(assert (=> b!6341348 d!1990250))

(assert (=> b!6341348 d!1990252))

(assert (=> b!6341299 d!1990228))

(declare-fun d!1990464 () Bool)

(assert (=> d!1990464 (= (isConcat!1170 lt!2362568) ((_ is Concat!25090) lt!2362568))))

(assert (=> b!6341420 d!1990464))

(declare-fun bs!1587910 () Bool)

(declare-fun b!6342089 () Bool)

(assert (= bs!1587910 (and b!6342089 d!1990084)))

(declare-fun lambda!348446 () Int)

(assert (=> bs!1587910 (not (= lambda!348446 lambda!348375))))

(declare-fun bs!1587911 () Bool)

(assert (= bs!1587911 (and b!6342089 d!1990306)))

(assert (=> bs!1587911 (not (= lambda!348446 lambda!348423))))

(declare-fun bs!1587912 () Bool)

(assert (= bs!1587912 (and b!6342089 b!6341243)))

(assert (=> bs!1587912 (= (and (= (reg!16574 (regOne!33003 lt!2362424)) (reg!16574 r!7292)) (= (regOne!33003 lt!2362424) r!7292)) (= lambda!348446 lambda!348392))))

(declare-fun bs!1587913 () Bool)

(assert (= bs!1587913 (and b!6342089 b!6341245)))

(assert (=> bs!1587913 (not (= lambda!348446 lambda!348393))))

(assert (=> bs!1587910 (not (= lambda!348446 lambda!348376))))

(declare-fun bs!1587914 () Bool)

(assert (= bs!1587914 (and b!6342089 b!6341828)))

(assert (=> bs!1587914 (not (= lambda!348446 lambda!348420))))

(declare-fun bs!1587915 () Bool)

(assert (= bs!1587915 (and b!6342089 b!6341355)))

(assert (=> bs!1587915 (= (and (= (reg!16574 (regOne!33003 lt!2362424)) (reg!16574 lt!2362424)) (= (regOne!33003 lt!2362424) lt!2362424)) (= lambda!348446 lambda!348400))))

(declare-fun bs!1587916 () Bool)

(assert (= bs!1587916 (and b!6342089 d!1990068)))

(assert (=> bs!1587916 (not (= lambda!348446 lambda!348370))))

(declare-fun bs!1587917 () Bool)

(assert (= bs!1587917 (and b!6342089 b!6341956)))

(assert (=> bs!1587917 (= (and (= (reg!16574 (regOne!33003 lt!2362424)) (reg!16574 (regTwo!33003 lt!2362424))) (= (regOne!33003 lt!2362424) (regTwo!33003 lt!2362424))) (= lambda!348446 lambda!348428))))

(declare-fun bs!1587918 () Bool)

(assert (= bs!1587918 (and b!6342089 b!6341357)))

(assert (=> bs!1587918 (not (= lambda!348446 lambda!348401))))

(declare-fun bs!1587919 () Bool)

(assert (= bs!1587919 (and b!6342089 b!6340627)))

(assert (=> bs!1587919 (not (= lambda!348446 lambda!348314))))

(declare-fun bs!1587920 () Bool)

(assert (= bs!1587920 (and b!6342089 b!6341958)))

(assert (=> bs!1587920 (not (= lambda!348446 lambda!348429))))

(assert (=> bs!1587919 (not (= lambda!348446 lambda!348313))))

(declare-fun bs!1587921 () Bool)

(assert (= bs!1587921 (and b!6342089 b!6341826)))

(assert (=> bs!1587921 (= (and (= (reg!16574 (regOne!33003 lt!2362424)) (reg!16574 (regOne!33003 r!7292))) (= (regOne!33003 lt!2362424) (regOne!33003 r!7292))) (= lambda!348446 lambda!348419))))

(assert (=> b!6342089 true))

(assert (=> b!6342089 true))

(declare-fun bs!1587922 () Bool)

(declare-fun b!6342091 () Bool)

(assert (= bs!1587922 (and b!6342091 d!1990084)))

(declare-fun lambda!348447 () Int)

(assert (=> bs!1587922 (not (= lambda!348447 lambda!348375))))

(declare-fun bs!1587923 () Bool)

(assert (= bs!1587923 (and b!6342091 d!1990306)))

(assert (=> bs!1587923 (not (= lambda!348447 lambda!348423))))

(declare-fun bs!1587924 () Bool)

(assert (= bs!1587924 (and b!6342091 b!6341243)))

(assert (=> bs!1587924 (not (= lambda!348447 lambda!348392))))

(declare-fun bs!1587925 () Bool)

(assert (= bs!1587925 (and b!6342091 b!6341245)))

(assert (=> bs!1587925 (= (and (= (regOne!33002 (regOne!33003 lt!2362424)) (regOne!33002 r!7292)) (= (regTwo!33002 (regOne!33003 lt!2362424)) (regTwo!33002 r!7292))) (= lambda!348447 lambda!348393))))

(declare-fun bs!1587926 () Bool)

(assert (= bs!1587926 (and b!6342091 b!6341828)))

(assert (=> bs!1587926 (= (and (= (regOne!33002 (regOne!33003 lt!2362424)) (regOne!33002 (regOne!33003 r!7292))) (= (regTwo!33002 (regOne!33003 lt!2362424)) (regTwo!33002 (regOne!33003 r!7292)))) (= lambda!348447 lambda!348420))))

(declare-fun bs!1587927 () Bool)

(assert (= bs!1587927 (and b!6342091 b!6341355)))

(assert (=> bs!1587927 (not (= lambda!348447 lambda!348400))))

(declare-fun bs!1587928 () Bool)

(assert (= bs!1587928 (and b!6342091 d!1990068)))

(assert (=> bs!1587928 (not (= lambda!348447 lambda!348370))))

(declare-fun bs!1587929 () Bool)

(assert (= bs!1587929 (and b!6342091 b!6341956)))

(assert (=> bs!1587929 (not (= lambda!348447 lambda!348428))))

(declare-fun bs!1587930 () Bool)

(assert (= bs!1587930 (and b!6342091 b!6341357)))

(assert (=> bs!1587930 (= (and (= (regOne!33002 (regOne!33003 lt!2362424)) (regOne!33002 lt!2362424)) (= (regTwo!33002 (regOne!33003 lt!2362424)) (regTwo!33002 lt!2362424))) (= lambda!348447 lambda!348401))))

(declare-fun bs!1587931 () Bool)

(assert (= bs!1587931 (and b!6342091 b!6342089)))

(assert (=> bs!1587931 (not (= lambda!348447 lambda!348446))))

(assert (=> bs!1587922 (= (and (= (regOne!33002 (regOne!33003 lt!2362424)) (regOne!33002 r!7292)) (= (regTwo!33002 (regOne!33003 lt!2362424)) (regTwo!33002 r!7292))) (= lambda!348447 lambda!348376))))

(declare-fun bs!1587932 () Bool)

(assert (= bs!1587932 (and b!6342091 b!6340627)))

(assert (=> bs!1587932 (= (and (= (regOne!33002 (regOne!33003 lt!2362424)) (regOne!33002 r!7292)) (= (regTwo!33002 (regOne!33003 lt!2362424)) (regTwo!33002 r!7292))) (= lambda!348447 lambda!348314))))

(declare-fun bs!1587933 () Bool)

(assert (= bs!1587933 (and b!6342091 b!6341958)))

(assert (=> bs!1587933 (= (and (= (regOne!33002 (regOne!33003 lt!2362424)) (regOne!33002 (regTwo!33003 lt!2362424))) (= (regTwo!33002 (regOne!33003 lt!2362424)) (regTwo!33002 (regTwo!33003 lt!2362424)))) (= lambda!348447 lambda!348429))))

(assert (=> bs!1587932 (not (= lambda!348447 lambda!348313))))

(declare-fun bs!1587934 () Bool)

(assert (= bs!1587934 (and b!6342091 b!6341826)))

(assert (=> bs!1587934 (not (= lambda!348447 lambda!348419))))

(assert (=> b!6342091 true))

(assert (=> b!6342091 true))

(declare-fun b!6342083 () Bool)

(declare-fun c!1153187 () Bool)

(assert (=> b!6342083 (= c!1153187 ((_ is Union!16245) (regOne!33003 lt!2362424)))))

(declare-fun e!3852157 () Bool)

(declare-fun e!3852154 () Bool)

(assert (=> b!6342083 (= e!3852157 e!3852154)))

(declare-fun b!6342084 () Bool)

(declare-fun e!3852156 () Bool)

(assert (=> b!6342084 (= e!3852154 e!3852156)))

(declare-fun c!1153184 () Bool)

(assert (=> b!6342084 (= c!1153184 ((_ is Star!16245) (regOne!33003 lt!2362424)))))

(declare-fun b!6342085 () Bool)

(declare-fun c!1153185 () Bool)

(assert (=> b!6342085 (= c!1153185 ((_ is ElementMatch!16245) (regOne!33003 lt!2362424)))))

(declare-fun e!3852151 () Bool)

(assert (=> b!6342085 (= e!3852151 e!3852157)))

(declare-fun b!6342086 () Bool)

(declare-fun e!3852155 () Bool)

(assert (=> b!6342086 (= e!3852155 e!3852151)))

(declare-fun res!2609867 () Bool)

(assert (=> b!6342086 (= res!2609867 (not ((_ is EmptyLang!16245) (regOne!33003 lt!2362424))))))

(assert (=> b!6342086 (=> (not res!2609867) (not e!3852151))))

(declare-fun b!6342087 () Bool)

(declare-fun res!2609868 () Bool)

(declare-fun e!3852152 () Bool)

(assert (=> b!6342087 (=> res!2609868 e!3852152)))

(declare-fun call!540529 () Bool)

(assert (=> b!6342087 (= res!2609868 call!540529)))

(assert (=> b!6342087 (= e!3852156 e!3852152)))

(declare-fun d!1990466 () Bool)

(declare-fun c!1153186 () Bool)

(assert (=> d!1990466 (= c!1153186 ((_ is EmptyExpr!16245) (regOne!33003 lt!2362424)))))

(assert (=> d!1990466 (= (matchRSpec!3346 (regOne!33003 lt!2362424) s!2326) e!3852155)))

(declare-fun b!6342088 () Bool)

(assert (=> b!6342088 (= e!3852157 (= s!2326 (Cons!64910 (c!1152752 (regOne!33003 lt!2362424)) Nil!64910)))))

(declare-fun bm!540523 () Bool)

(declare-fun call!540528 () Bool)

(assert (=> bm!540523 (= call!540528 (Exists!3315 (ite c!1153184 lambda!348446 lambda!348447)))))

(assert (=> b!6342089 (= e!3852152 call!540528)))

(declare-fun b!6342090 () Bool)

(declare-fun e!3852153 () Bool)

(assert (=> b!6342090 (= e!3852154 e!3852153)))

(declare-fun res!2609869 () Bool)

(assert (=> b!6342090 (= res!2609869 (matchRSpec!3346 (regOne!33003 (regOne!33003 lt!2362424)) s!2326))))

(assert (=> b!6342090 (=> res!2609869 e!3852153)))

(assert (=> b!6342091 (= e!3852156 call!540528)))

(declare-fun b!6342092 () Bool)

(assert (=> b!6342092 (= e!3852155 call!540529)))

(declare-fun b!6342093 () Bool)

(assert (=> b!6342093 (= e!3852153 (matchRSpec!3346 (regTwo!33003 (regOne!33003 lt!2362424)) s!2326))))

(declare-fun bm!540524 () Bool)

(assert (=> bm!540524 (= call!540529 (isEmpty!36992 s!2326))))

(assert (= (and d!1990466 c!1153186) b!6342092))

(assert (= (and d!1990466 (not c!1153186)) b!6342086))

(assert (= (and b!6342086 res!2609867) b!6342085))

(assert (= (and b!6342085 c!1153185) b!6342088))

(assert (= (and b!6342085 (not c!1153185)) b!6342083))

(assert (= (and b!6342083 c!1153187) b!6342090))

(assert (= (and b!6342083 (not c!1153187)) b!6342084))

(assert (= (and b!6342090 (not res!2609869)) b!6342093))

(assert (= (and b!6342084 c!1153184) b!6342087))

(assert (= (and b!6342084 (not c!1153184)) b!6342091))

(assert (= (and b!6342087 (not res!2609868)) b!6342089))

(assert (= (or b!6342089 b!6342091) bm!540523))

(assert (= (or b!6342092 b!6342087) bm!540524))

(declare-fun m!7150506 () Bool)

(assert (=> bm!540523 m!7150506))

(declare-fun m!7150508 () Bool)

(assert (=> b!6342090 m!7150508))

(declare-fun m!7150510 () Bool)

(assert (=> b!6342093 m!7150510))

(assert (=> bm!540524 m!7149734))

(assert (=> b!6341356 d!1990466))

(declare-fun d!1990468 () Bool)

(assert (=> d!1990468 (= (isEmpty!36989 (t!378621 (unfocusZipperList!1666 zl!343))) ((_ is Nil!64911) (t!378621 (unfocusZipperList!1666 zl!343))))))

(assert (=> b!6341331 d!1990468))

(declare-fun c!1153191 () Bool)

(declare-fun bm!540525 () Bool)

(declare-fun call!540531 () List!65035)

(declare-fun c!1153190 () Bool)

(assert (=> bm!540525 (= call!540531 ($colon$colon!2105 (exprs!6129 (ite (or c!1153018 c!1153017) lt!2362427 (Context!11259 call!540419))) (ite (or c!1153191 c!1153190) (regTwo!33002 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))) (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343))))))))))))

(declare-fun b!6342094 () Bool)

(declare-fun e!3852163 () (InoxSet Context!11258))

(declare-fun call!540533 () (InoxSet Context!11258))

(declare-fun call!540535 () (InoxSet Context!11258))

(assert (=> b!6342094 (= e!3852163 ((_ map or) call!540533 call!540535))))

(declare-fun b!6342095 () Bool)

(declare-fun e!3852159 () (InoxSet Context!11258))

(assert (=> b!6342095 (= e!3852163 e!3852159)))

(assert (=> b!6342095 (= c!1153190 ((_ is Concat!25090) (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))))

(declare-fun call!540534 () List!65035)

(declare-fun bm!540526 () Bool)

(declare-fun call!540530 () (InoxSet Context!11258))

(declare-fun c!1153192 () Bool)

(assert (=> bm!540526 (= call!540530 (derivationStepZipperDown!1493 (ite c!1153192 (regTwo!33003 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))) (ite c!1153191 (regTwo!33002 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))) (ite c!1153190 (regOne!33002 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))) (reg!16574 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343))))))))))) (ite (or c!1153192 c!1153191) (ite (or c!1153018 c!1153017) lt!2362427 (Context!11259 call!540419)) (Context!11259 call!540534)) (h!71358 s!2326)))))

(declare-fun bm!540527 () Bool)

(assert (=> bm!540527 (= call!540535 call!540530)))

(declare-fun bm!540528 () Bool)

(assert (=> bm!540528 (= call!540533 (derivationStepZipperDown!1493 (ite c!1153192 (regOne!33003 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))) (regOne!33002 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343))))))))) (ite c!1153192 (ite (or c!1153018 c!1153017) lt!2362427 (Context!11259 call!540419)) (Context!11259 call!540531)) (h!71358 s!2326)))))

(declare-fun bm!540529 () Bool)

(assert (=> bm!540529 (= call!540534 call!540531)))

(declare-fun b!6342097 () Bool)

(declare-fun call!540532 () (InoxSet Context!11258))

(assert (=> b!6342097 (= e!3852159 call!540532)))

(declare-fun b!6342098 () Bool)

(declare-fun e!3852158 () (InoxSet Context!11258))

(assert (=> b!6342098 (= e!3852158 (store ((as const (Array Context!11258 Bool)) false) (ite (or c!1153018 c!1153017) lt!2362427 (Context!11259 call!540419)) true))))

(declare-fun b!6342099 () Bool)

(declare-fun e!3852160 () (InoxSet Context!11258))

(assert (=> b!6342099 (= e!3852160 call!540532)))

(declare-fun b!6342100 () Bool)

(declare-fun c!1153189 () Bool)

(assert (=> b!6342100 (= c!1153189 ((_ is Star!16245) (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))))

(assert (=> b!6342100 (= e!3852159 e!3852160)))

(declare-fun e!3852162 () Bool)

(declare-fun b!6342101 () Bool)

(assert (=> b!6342101 (= e!3852162 (nullable!6238 (regOne!33002 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343))))))))))))

(declare-fun b!6342096 () Bool)

(declare-fun e!3852161 () (InoxSet Context!11258))

(assert (=> b!6342096 (= e!3852158 e!3852161)))

(assert (=> b!6342096 (= c!1153192 ((_ is Union!16245) (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))))

(declare-fun c!1153188 () Bool)

(declare-fun d!1990470 () Bool)

(assert (=> d!1990470 (= c!1153188 (and ((_ is ElementMatch!16245) (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))) (= (c!1152752 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))) (h!71358 s!2326))))))

(assert (=> d!1990470 (= (derivationStepZipperDown!1493 (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343))))))) (ite (or c!1153018 c!1153017) lt!2362427 (Context!11259 call!540419)) (h!71358 s!2326)) e!3852158)))

(declare-fun b!6342102 () Bool)

(assert (=> b!6342102 (= e!3852160 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6342103 () Bool)

(assert (=> b!6342103 (= e!3852161 ((_ map or) call!540533 call!540530))))

(declare-fun bm!540530 () Bool)

(assert (=> bm!540530 (= call!540532 call!540535)))

(declare-fun b!6342104 () Bool)

(assert (=> b!6342104 (= c!1153191 e!3852162)))

(declare-fun res!2609870 () Bool)

(assert (=> b!6342104 (=> (not res!2609870) (not e!3852162))))

(assert (=> b!6342104 (= res!2609870 ((_ is Concat!25090) (ite c!1153018 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153017 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153016 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343)))))))))))

(assert (=> b!6342104 (= e!3852161 e!3852163)))

(assert (= (and d!1990470 c!1153188) b!6342098))

(assert (= (and d!1990470 (not c!1153188)) b!6342096))

(assert (= (and b!6342096 c!1153192) b!6342103))

(assert (= (and b!6342096 (not c!1153192)) b!6342104))

(assert (= (and b!6342104 res!2609870) b!6342101))

(assert (= (and b!6342104 c!1153191) b!6342094))

(assert (= (and b!6342104 (not c!1153191)) b!6342095))

(assert (= (and b!6342095 c!1153190) b!6342097))

(assert (= (and b!6342095 (not c!1153190)) b!6342100))

(assert (= (and b!6342100 c!1153189) b!6342099))

(assert (= (and b!6342100 (not c!1153189)) b!6342102))

(assert (= (or b!6342097 b!6342099) bm!540529))

(assert (= (or b!6342097 b!6342099) bm!540530))

(assert (= (or b!6342094 bm!540529) bm!540525))

(assert (= (or b!6342094 bm!540530) bm!540527))

(assert (= (or b!6342103 bm!540527) bm!540526))

(assert (= (or b!6342103 b!6342094) bm!540528))

(declare-fun m!7150512 () Bool)

(assert (=> bm!540526 m!7150512))

(declare-fun m!7150514 () Bool)

(assert (=> bm!540525 m!7150514))

(declare-fun m!7150516 () Bool)

(assert (=> b!6342101 m!7150516))

(declare-fun m!7150518 () Bool)

(assert (=> b!6342098 m!7150518))

(declare-fun m!7150520 () Bool)

(assert (=> bm!540528 m!7150520))

(assert (=> bm!540411 d!1990470))

(declare-fun d!1990472 () Bool)

(assert (=> d!1990472 (= ($colon$colon!2105 (exprs!6129 (Context!11259 lt!2362429)) (ite (or c!1152828 c!1152827) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 r!7292)))) (Cons!64911 (ite (or c!1152828 c!1152827) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 r!7292))) (exprs!6129 (Context!11259 lt!2362429))))))

(assert (=> bm!540343 d!1990472))

(declare-fun bs!1587935 () Bool)

(declare-fun d!1990474 () Bool)

(assert (= bs!1587935 (and d!1990474 b!6341979)))

(declare-fun lambda!348448 () Int)

(assert (=> bs!1587935 (not (= lambda!348448 lambda!348441))))

(declare-fun bs!1587936 () Bool)

(assert (= bs!1587936 (and d!1990474 b!6340742)))

(assert (=> bs!1587936 (not (= lambda!348448 lambda!348342))))

(declare-fun bs!1587937 () Bool)

(assert (= bs!1587937 (and d!1990474 d!1990254)))

(assert (=> bs!1587937 (= lambda!348448 lambda!348415)))

(declare-fun bs!1587938 () Bool)

(assert (= bs!1587938 (and d!1990474 b!6340744)))

(assert (=> bs!1587938 (not (= lambda!348448 lambda!348343))))

(declare-fun bs!1587939 () Bool)

(assert (= bs!1587939 (and d!1990474 b!6341981)))

(assert (=> bs!1587939 (not (= lambda!348448 lambda!348442))))

(declare-fun bs!1587940 () Bool)

(assert (= bs!1587940 (and d!1990474 b!6340737)))

(assert (=> bs!1587940 (not (= lambda!348448 lambda!348339))))

(declare-fun bs!1587941 () Bool)

(assert (= bs!1587941 (and d!1990474 d!1990404)))

(assert (=> bs!1587941 (not (= lambda!348448 lambda!348439))))

(declare-fun bs!1587942 () Bool)

(assert (= bs!1587942 (and d!1990474 d!1990210)))

(assert (=> bs!1587942 (= lambda!348448 lambda!348412)))

(declare-fun bs!1587943 () Bool)

(assert (= bs!1587943 (and d!1990474 b!6340739)))

(assert (=> bs!1587943 (not (= lambda!348448 lambda!348340))))

(declare-fun bs!1587944 () Bool)

(assert (= bs!1587944 (and d!1990474 d!1990394)))

(assert (=> bs!1587944 (= lambda!348448 lambda!348430)))

(declare-fun bs!1587945 () Bool)

(assert (= bs!1587945 (and d!1990474 d!1990430)))

(assert (=> bs!1587945 (= lambda!348448 lambda!348443)))

(assert (=> d!1990474 (= (nullableZipper!2011 lt!2362434) (exists!2566 lt!2362434 lambda!348448))))

(declare-fun bs!1587946 () Bool)

(assert (= bs!1587946 d!1990474))

(declare-fun m!7150522 () Bool)

(assert (=> bs!1587946 m!7150522))

(assert (=> b!6341343 d!1990474))

(assert (=> d!1990142 d!1990204))

(declare-fun d!1990476 () Bool)

(assert (=> d!1990476 (= (Exists!3315 lambda!348375) (choose!47010 lambda!348375))))

(declare-fun bs!1587947 () Bool)

(assert (= bs!1587947 d!1990476))

(declare-fun m!7150524 () Bool)

(assert (=> bs!1587947 m!7150524))

(assert (=> d!1990084 d!1990476))

(declare-fun d!1990478 () Bool)

(assert (=> d!1990478 (= (Exists!3315 lambda!348376) (choose!47010 lambda!348376))))

(declare-fun bs!1587948 () Bool)

(assert (= bs!1587948 d!1990478))

(declare-fun m!7150526 () Bool)

(assert (=> bs!1587948 m!7150526))

(assert (=> d!1990084 d!1990478))

(declare-fun bs!1587949 () Bool)

(declare-fun d!1990480 () Bool)

(assert (= bs!1587949 (and d!1990480 d!1990084)))

(declare-fun lambda!348453 () Int)

(assert (=> bs!1587949 (= lambda!348453 lambda!348375)))

(declare-fun bs!1587950 () Bool)

(assert (= bs!1587950 (and d!1990480 b!6342091)))

(assert (=> bs!1587950 (not (= lambda!348453 lambda!348447))))

(declare-fun bs!1587951 () Bool)

(assert (= bs!1587951 (and d!1990480 d!1990306)))

(assert (=> bs!1587951 (= lambda!348453 lambda!348423)))

(declare-fun bs!1587952 () Bool)

(assert (= bs!1587952 (and d!1990480 b!6341243)))

(assert (=> bs!1587952 (not (= lambda!348453 lambda!348392))))

(declare-fun bs!1587953 () Bool)

(assert (= bs!1587953 (and d!1990480 b!6341245)))

(assert (=> bs!1587953 (not (= lambda!348453 lambda!348393))))

(declare-fun bs!1587954 () Bool)

(assert (= bs!1587954 (and d!1990480 b!6341828)))

(assert (=> bs!1587954 (not (= lambda!348453 lambda!348420))))

(declare-fun bs!1587955 () Bool)

(assert (= bs!1587955 (and d!1990480 b!6341355)))

(assert (=> bs!1587955 (not (= lambda!348453 lambda!348400))))

(declare-fun bs!1587956 () Bool)

(assert (= bs!1587956 (and d!1990480 d!1990068)))

(assert (=> bs!1587956 (= lambda!348453 lambda!348370)))

(declare-fun bs!1587957 () Bool)

(assert (= bs!1587957 (and d!1990480 b!6341956)))

(assert (=> bs!1587957 (not (= lambda!348453 lambda!348428))))

(declare-fun bs!1587958 () Bool)

(assert (= bs!1587958 (and d!1990480 b!6341357)))

(assert (=> bs!1587958 (not (= lambda!348453 lambda!348401))))

(declare-fun bs!1587959 () Bool)

(assert (= bs!1587959 (and d!1990480 b!6342089)))

(assert (=> bs!1587959 (not (= lambda!348453 lambda!348446))))

(assert (=> bs!1587949 (not (= lambda!348453 lambda!348376))))

(declare-fun bs!1587960 () Bool)

(assert (= bs!1587960 (and d!1990480 b!6340627)))

(assert (=> bs!1587960 (not (= lambda!348453 lambda!348314))))

(declare-fun bs!1587961 () Bool)

(assert (= bs!1587961 (and d!1990480 b!6341958)))

(assert (=> bs!1587961 (not (= lambda!348453 lambda!348429))))

(assert (=> bs!1587960 (= lambda!348453 lambda!348313)))

(declare-fun bs!1587962 () Bool)

(assert (= bs!1587962 (and d!1990480 b!6341826)))

(assert (=> bs!1587962 (not (= lambda!348453 lambda!348419))))

(assert (=> d!1990480 true))

(assert (=> d!1990480 true))

(assert (=> d!1990480 true))

(declare-fun lambda!348454 () Int)

(assert (=> bs!1587949 (not (= lambda!348454 lambda!348375))))

(assert (=> bs!1587950 (= (and (= (regOne!33002 r!7292) (regOne!33002 (regOne!33003 lt!2362424))) (= (regTwo!33002 r!7292) (regTwo!33002 (regOne!33003 lt!2362424)))) (= lambda!348454 lambda!348447))))

(assert (=> bs!1587951 (not (= lambda!348454 lambda!348423))))

(assert (=> bs!1587952 (not (= lambda!348454 lambda!348392))))

(assert (=> bs!1587953 (= lambda!348454 lambda!348393)))

(assert (=> bs!1587954 (= (and (= (regOne!33002 r!7292) (regOne!33002 (regOne!33003 r!7292))) (= (regTwo!33002 r!7292) (regTwo!33002 (regOne!33003 r!7292)))) (= lambda!348454 lambda!348420))))

(declare-fun bs!1587963 () Bool)

(assert (= bs!1587963 d!1990480))

(assert (=> bs!1587963 (not (= lambda!348454 lambda!348453))))

(assert (=> bs!1587955 (not (= lambda!348454 lambda!348400))))

(assert (=> bs!1587956 (not (= lambda!348454 lambda!348370))))

(assert (=> bs!1587957 (not (= lambda!348454 lambda!348428))))

(assert (=> bs!1587958 (= (and (= (regOne!33002 r!7292) (regOne!33002 lt!2362424)) (= (regTwo!33002 r!7292) (regTwo!33002 lt!2362424))) (= lambda!348454 lambda!348401))))

(assert (=> bs!1587959 (not (= lambda!348454 lambda!348446))))

(assert (=> bs!1587949 (= lambda!348454 lambda!348376)))

(assert (=> bs!1587960 (= lambda!348454 lambda!348314)))

(assert (=> bs!1587961 (= (and (= (regOne!33002 r!7292) (regOne!33002 (regTwo!33003 lt!2362424))) (= (regTwo!33002 r!7292) (regTwo!33002 (regTwo!33003 lt!2362424)))) (= lambda!348454 lambda!348429))))

(assert (=> bs!1587960 (not (= lambda!348454 lambda!348313))))

(assert (=> bs!1587962 (not (= lambda!348454 lambda!348419))))

(assert (=> d!1990480 true))

(assert (=> d!1990480 true))

(assert (=> d!1990480 true))

(assert (=> d!1990480 (= (Exists!3315 lambda!348453) (Exists!3315 lambda!348454))))

(assert (=> d!1990480 true))

(declare-fun _$90!2184 () Unit!158311)

(assert (=> d!1990480 (= (choose!47012 (regOne!33002 r!7292) (regTwo!33002 r!7292) s!2326) _$90!2184)))

(declare-fun m!7150528 () Bool)

(assert (=> bs!1587963 m!7150528))

(declare-fun m!7150530 () Bool)

(assert (=> bs!1587963 m!7150530))

(assert (=> d!1990084 d!1990480))

(assert (=> d!1990084 d!1990304))

(declare-fun d!1990482 () Bool)

(assert (=> d!1990482 (= (isEmptyExpr!1647 lt!2362567) ((_ is EmptyExpr!16245) lt!2362567))))

(assert (=> b!6341387 d!1990482))

(declare-fun bs!1587964 () Bool)

(declare-fun d!1990484 () Bool)

(assert (= bs!1587964 (and d!1990484 d!1990162)))

(declare-fun lambda!348455 () Int)

(assert (=> bs!1587964 (= lambda!348455 lambda!348406)))

(declare-fun bs!1587965 () Bool)

(assert (= bs!1587965 (and d!1990484 d!1990294)))

(assert (=> bs!1587965 (= lambda!348455 lambda!348418)))

(declare-fun bs!1587966 () Bool)

(assert (= bs!1587966 (and d!1990484 d!1989984)))

(assert (=> bs!1587966 (= lambda!348455 lambda!348318)))

(declare-fun bs!1587967 () Bool)

(assert (= bs!1587967 (and d!1990484 b!6341973)))

(assert (=> bs!1587967 (not (= lambda!348455 lambda!348436))))

(declare-fun bs!1587968 () Bool)

(assert (= bs!1587968 (and d!1990484 d!1990386)))

(assert (=> bs!1587968 (= lambda!348455 lambda!348427)))

(declare-fun bs!1587969 () Bool)

(assert (= bs!1587969 (and d!1990484 d!1990264)))

(assert (=> bs!1587969 (= lambda!348455 lambda!348416)))

(declare-fun bs!1587970 () Bool)

(assert (= bs!1587970 (and d!1990484 d!1990132)))

(assert (=> bs!1587970 (= lambda!348455 lambda!348396)))

(declare-fun bs!1587971 () Bool)

(assert (= bs!1587971 (and d!1990484 b!6341971)))

(assert (=> bs!1587971 (not (= lambda!348455 lambda!348435))))

(declare-fun bs!1587972 () Bool)

(assert (= bs!1587972 (and d!1990484 d!1990148)))

(assert (=> bs!1587972 (= lambda!348455 lambda!348404)))

(declare-fun bs!1587973 () Bool)

(assert (= bs!1587973 (and d!1990484 d!1990320)))

(assert (=> bs!1587973 (= lambda!348455 lambda!348424)))

(declare-fun bs!1587974 () Bool)

(assert (= bs!1587974 (and d!1990484 d!1990134)))

(assert (=> bs!1587974 (= lambda!348455 lambda!348399)))

(declare-fun bs!1587975 () Bool)

(assert (= bs!1587975 (and d!1990484 d!1990216)))

(assert (=> bs!1587975 (= lambda!348455 lambda!348413)))

(declare-fun bs!1587976 () Bool)

(assert (= bs!1587976 (and d!1990484 d!1990384)))

(assert (=> bs!1587976 (= lambda!348455 lambda!348426)))

(declare-fun bs!1587977 () Bool)

(assert (= bs!1587977 (and d!1990484 d!1990154)))

(assert (=> bs!1587977 (= lambda!348455 lambda!348405)))

(declare-fun bs!1587978 () Bool)

(assert (= bs!1587978 (and d!1990484 d!1989990)))

(assert (=> bs!1587978 (= lambda!348455 lambda!348319)))

(declare-fun b!6342113 () Bool)

(declare-fun e!3852173 () Regex!16245)

(declare-fun e!3852170 () Regex!16245)

(assert (=> b!6342113 (= e!3852173 e!3852170)))

(declare-fun c!1153196 () Bool)

(assert (=> b!6342113 (= c!1153196 ((_ is Cons!64911) (t!378621 (unfocusZipperList!1666 zl!343))))))

(declare-fun b!6342114 () Bool)

(declare-fun e!3852169 () Bool)

(declare-fun e!3852168 () Bool)

(assert (=> b!6342114 (= e!3852169 e!3852168)))

(declare-fun c!1153193 () Bool)

(assert (=> b!6342114 (= c!1153193 (isEmpty!36989 (tail!12068 (t!378621 (unfocusZipperList!1666 zl!343)))))))

(declare-fun e!3852172 () Bool)

(assert (=> d!1990484 e!3852172))

(declare-fun res!2609880 () Bool)

(assert (=> d!1990484 (=> (not res!2609880) (not e!3852172))))

(declare-fun lt!2362636 () Regex!16245)

(assert (=> d!1990484 (= res!2609880 (validRegex!7981 lt!2362636))))

(assert (=> d!1990484 (= lt!2362636 e!3852173)))

(declare-fun c!1153194 () Bool)

(declare-fun e!3852171 () Bool)

(assert (=> d!1990484 (= c!1153194 e!3852171)))

(declare-fun res!2609879 () Bool)

(assert (=> d!1990484 (=> (not res!2609879) (not e!3852171))))

(assert (=> d!1990484 (= res!2609879 ((_ is Cons!64911) (t!378621 (unfocusZipperList!1666 zl!343))))))

(assert (=> d!1990484 (forall!15401 (t!378621 (unfocusZipperList!1666 zl!343)) lambda!348455)))

(assert (=> d!1990484 (= (generalisedUnion!2089 (t!378621 (unfocusZipperList!1666 zl!343))) lt!2362636)))

(declare-fun b!6342115 () Bool)

(assert (=> b!6342115 (= e!3852170 EmptyLang!16245)))

(declare-fun b!6342116 () Bool)

(assert (=> b!6342116 (= e!3852170 (Union!16245 (h!71359 (t!378621 (unfocusZipperList!1666 zl!343))) (generalisedUnion!2089 (t!378621 (t!378621 (unfocusZipperList!1666 zl!343))))))))

(declare-fun b!6342117 () Bool)

(assert (=> b!6342117 (= e!3852172 e!3852169)))

(declare-fun c!1153195 () Bool)

(assert (=> b!6342117 (= c!1153195 (isEmpty!36989 (t!378621 (unfocusZipperList!1666 zl!343))))))

(declare-fun b!6342118 () Bool)

(assert (=> b!6342118 (= e!3852168 (= lt!2362636 (head!12983 (t!378621 (unfocusZipperList!1666 zl!343)))))))

(declare-fun b!6342119 () Bool)

(assert (=> b!6342119 (= e!3852168 (isUnion!1084 lt!2362636))))

(declare-fun b!6342120 () Bool)

(assert (=> b!6342120 (= e!3852171 (isEmpty!36989 (t!378621 (t!378621 (unfocusZipperList!1666 zl!343)))))))

(declare-fun b!6342121 () Bool)

(assert (=> b!6342121 (= e!3852173 (h!71359 (t!378621 (unfocusZipperList!1666 zl!343))))))

(declare-fun b!6342122 () Bool)

(assert (=> b!6342122 (= e!3852169 (isEmptyLang!1654 lt!2362636))))

(assert (= (and d!1990484 res!2609879) b!6342120))

(assert (= (and d!1990484 c!1153194) b!6342121))

(assert (= (and d!1990484 (not c!1153194)) b!6342113))

(assert (= (and b!6342113 c!1153196) b!6342116))

(assert (= (and b!6342113 (not c!1153196)) b!6342115))

(assert (= (and d!1990484 res!2609880) b!6342117))

(assert (= (and b!6342117 c!1153195) b!6342122))

(assert (= (and b!6342117 (not c!1153195)) b!6342114))

(assert (= (and b!6342114 c!1153193) b!6342118))

(assert (= (and b!6342114 (not c!1153193)) b!6342119))

(declare-fun m!7150532 () Bool)

(assert (=> b!6342118 m!7150532))

(declare-fun m!7150534 () Bool)

(assert (=> b!6342114 m!7150534))

(assert (=> b!6342114 m!7150534))

(declare-fun m!7150536 () Bool)

(assert (=> b!6342114 m!7150536))

(assert (=> b!6342117 m!7149768))

(declare-fun m!7150538 () Bool)

(assert (=> b!6342116 m!7150538))

(declare-fun m!7150540 () Bool)

(assert (=> d!1990484 m!7150540))

(declare-fun m!7150542 () Bool)

(assert (=> d!1990484 m!7150542))

(declare-fun m!7150544 () Bool)

(assert (=> b!6342122 m!7150544))

(declare-fun m!7150546 () Bool)

(assert (=> b!6342119 m!7150546))

(declare-fun m!7150548 () Bool)

(assert (=> b!6342120 m!7150548))

(assert (=> b!6341327 d!1990484))

(assert (=> b!6341438 d!1990228))

(declare-fun b!6342123 () Bool)

(declare-fun res!2609885 () Bool)

(declare-fun e!3852175 () Bool)

(assert (=> b!6342123 (=> (not res!2609885) (not e!3852175))))

(declare-fun call!540538 () Bool)

(assert (=> b!6342123 (= res!2609885 call!540538)))

(declare-fun e!3852174 () Bool)

(assert (=> b!6342123 (= e!3852174 e!3852175)))

(declare-fun b!6342124 () Bool)

(declare-fun e!3852176 () Bool)

(assert (=> b!6342124 (= e!3852176 e!3852174)))

(declare-fun c!1153197 () Bool)

(assert (=> b!6342124 (= c!1153197 ((_ is Union!16245) lt!2362495))))

(declare-fun b!6342125 () Bool)

(declare-fun e!3852180 () Bool)

(declare-fun call!540536 () Bool)

(assert (=> b!6342125 (= e!3852180 call!540536)))

(declare-fun b!6342126 () Bool)

(declare-fun res!2609884 () Bool)

(declare-fun e!3852177 () Bool)

(assert (=> b!6342126 (=> res!2609884 e!3852177)))

(assert (=> b!6342126 (= res!2609884 (not ((_ is Concat!25090) lt!2362495)))))

(assert (=> b!6342126 (= e!3852174 e!3852177)))

(declare-fun b!6342127 () Bool)

(declare-fun e!3852178 () Bool)

(assert (=> b!6342127 (= e!3852176 e!3852178)))

(declare-fun res!2609882 () Bool)

(assert (=> b!6342127 (= res!2609882 (not (nullable!6238 (reg!16574 lt!2362495))))))

(assert (=> b!6342127 (=> (not res!2609882) (not e!3852178))))

(declare-fun b!6342128 () Bool)

(assert (=> b!6342128 (= e!3852177 e!3852180)))

(declare-fun res!2609883 () Bool)

(assert (=> b!6342128 (=> (not res!2609883) (not e!3852180))))

(assert (=> b!6342128 (= res!2609883 call!540538)))

(declare-fun d!1990486 () Bool)

(declare-fun res!2609881 () Bool)

(declare-fun e!3852179 () Bool)

(assert (=> d!1990486 (=> res!2609881 e!3852179)))

(assert (=> d!1990486 (= res!2609881 ((_ is ElementMatch!16245) lt!2362495))))

(assert (=> d!1990486 (= (validRegex!7981 lt!2362495) e!3852179)))

(declare-fun bm!540531 () Bool)

(declare-fun call!540537 () Bool)

(declare-fun c!1153198 () Bool)

(assert (=> bm!540531 (= call!540537 (validRegex!7981 (ite c!1153198 (reg!16574 lt!2362495) (ite c!1153197 (regTwo!33003 lt!2362495) (regTwo!33002 lt!2362495)))))))

(declare-fun bm!540532 () Bool)

(assert (=> bm!540532 (= call!540536 call!540537)))

(declare-fun b!6342129 () Bool)

(assert (=> b!6342129 (= e!3852175 call!540536)))

(declare-fun bm!540533 () Bool)

(assert (=> bm!540533 (= call!540538 (validRegex!7981 (ite c!1153197 (regOne!33003 lt!2362495) (regOne!33002 lt!2362495))))))

(declare-fun b!6342130 () Bool)

(assert (=> b!6342130 (= e!3852179 e!3852176)))

(assert (=> b!6342130 (= c!1153198 ((_ is Star!16245) lt!2362495))))

(declare-fun b!6342131 () Bool)

(assert (=> b!6342131 (= e!3852178 call!540537)))

(assert (= (and d!1990486 (not res!2609881)) b!6342130))

(assert (= (and b!6342130 c!1153198) b!6342127))

(assert (= (and b!6342130 (not c!1153198)) b!6342124))

(assert (= (and b!6342127 res!2609882) b!6342131))

(assert (= (and b!6342124 c!1153197) b!6342123))

(assert (= (and b!6342124 (not c!1153197)) b!6342126))

(assert (= (and b!6342123 res!2609885) b!6342129))

(assert (= (and b!6342126 (not res!2609884)) b!6342128))

(assert (= (and b!6342128 res!2609883) b!6342125))

(assert (= (or b!6342129 b!6342125) bm!540532))

(assert (= (or b!6342123 b!6342128) bm!540533))

(assert (= (or b!6342131 bm!540532) bm!540531))

(declare-fun m!7150550 () Bool)

(assert (=> b!6342127 m!7150550))

(declare-fun m!7150552 () Bool)

(assert (=> bm!540531 m!7150552))

(declare-fun m!7150554 () Bool)

(assert (=> bm!540533 m!7150554))

(assert (=> d!1990044 d!1990486))

(assert (=> d!1990044 d!1990132))

(assert (=> d!1990044 d!1990134))

(declare-fun bm!540534 () Bool)

(declare-fun c!1153202 () Bool)

(declare-fun call!540540 () List!65035)

(declare-fun c!1153201 () Bool)

(assert (=> bm!540534 (= call!540540 ($colon$colon!2105 (exprs!6129 (ite (or c!1152829 c!1152828) (Context!11259 lt!2362429) (Context!11259 call!540352))) (ite (or c!1153202 c!1153201) (regTwo!33002 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))) (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292)))))))))))

(declare-fun b!6342132 () Bool)

(declare-fun e!3852186 () (InoxSet Context!11258))

(declare-fun call!540542 () (InoxSet Context!11258))

(declare-fun call!540544 () (InoxSet Context!11258))

(assert (=> b!6342132 (= e!3852186 ((_ map or) call!540542 call!540544))))

(declare-fun b!6342133 () Bool)

(declare-fun e!3852182 () (InoxSet Context!11258))

(assert (=> b!6342133 (= e!3852186 e!3852182)))

(assert (=> b!6342133 (= c!1153201 ((_ is Concat!25090) (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))))))

(declare-fun call!540539 () (InoxSet Context!11258))

(declare-fun bm!540535 () Bool)

(declare-fun call!540543 () List!65035)

(declare-fun c!1153203 () Bool)

(assert (=> bm!540535 (= call!540539 (derivationStepZipperDown!1493 (ite c!1153203 (regTwo!33003 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))) (ite c!1153202 (regTwo!33002 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))) (ite c!1153201 (regOne!33002 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))) (reg!16574 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292)))))))))) (ite (or c!1153203 c!1153202) (ite (or c!1152829 c!1152828) (Context!11259 lt!2362429) (Context!11259 call!540352)) (Context!11259 call!540543)) (h!71358 s!2326)))))

(declare-fun bm!540536 () Bool)

(assert (=> bm!540536 (= call!540544 call!540539)))

(declare-fun bm!540537 () Bool)

(assert (=> bm!540537 (= call!540542 (derivationStepZipperDown!1493 (ite c!1153203 (regOne!33003 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))) (regOne!33002 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292)))))))) (ite c!1153203 (ite (or c!1152829 c!1152828) (Context!11259 lt!2362429) (Context!11259 call!540352)) (Context!11259 call!540540)) (h!71358 s!2326)))))

(declare-fun bm!540538 () Bool)

(assert (=> bm!540538 (= call!540543 call!540540)))

(declare-fun b!6342135 () Bool)

(declare-fun call!540541 () (InoxSet Context!11258))

(assert (=> b!6342135 (= e!3852182 call!540541)))

(declare-fun b!6342136 () Bool)

(declare-fun e!3852181 () (InoxSet Context!11258))

(assert (=> b!6342136 (= e!3852181 (store ((as const (Array Context!11258 Bool)) false) (ite (or c!1152829 c!1152828) (Context!11259 lt!2362429) (Context!11259 call!540352)) true))))

(declare-fun b!6342137 () Bool)

(declare-fun e!3852183 () (InoxSet Context!11258))

(assert (=> b!6342137 (= e!3852183 call!540541)))

(declare-fun c!1153200 () Bool)

(declare-fun b!6342138 () Bool)

(assert (=> b!6342138 (= c!1153200 ((_ is Star!16245) (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))))))

(assert (=> b!6342138 (= e!3852182 e!3852183)))

(declare-fun b!6342139 () Bool)

(declare-fun e!3852185 () Bool)

(assert (=> b!6342139 (= e!3852185 (nullable!6238 (regOne!33002 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292)))))))))))

(declare-fun b!6342134 () Bool)

(declare-fun e!3852184 () (InoxSet Context!11258))

(assert (=> b!6342134 (= e!3852181 e!3852184)))

(assert (=> b!6342134 (= c!1153203 ((_ is Union!16245) (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))))))

(declare-fun d!1990488 () Bool)

(declare-fun c!1153199 () Bool)

(assert (=> d!1990488 (= c!1153199 (and ((_ is ElementMatch!16245) (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))) (= (c!1152752 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))) (h!71358 s!2326))))))

(assert (=> d!1990488 (= (derivationStepZipperDown!1493 (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292)))))) (ite (or c!1152829 c!1152828) (Context!11259 lt!2362429) (Context!11259 call!540352)) (h!71358 s!2326)) e!3852181)))

(declare-fun b!6342140 () Bool)

(assert (=> b!6342140 (= e!3852183 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6342141 () Bool)

(assert (=> b!6342141 (= e!3852184 ((_ map or) call!540542 call!540539))))

(declare-fun bm!540539 () Bool)

(assert (=> bm!540539 (= call!540541 call!540544)))

(declare-fun b!6342142 () Bool)

(assert (=> b!6342142 (= c!1153202 e!3852185)))

(declare-fun res!2609886 () Bool)

(assert (=> b!6342142 (=> (not res!2609886) (not e!3852185))))

(assert (=> b!6342142 (= res!2609886 ((_ is Concat!25090) (ite c!1152829 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152828 (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))) (ite c!1152827 (regOne!33002 (regOne!33002 (regOne!33002 r!7292))) (reg!16574 (regOne!33002 (regOne!33002 r!7292))))))))))

(assert (=> b!6342142 (= e!3852184 e!3852186)))

(assert (= (and d!1990488 c!1153199) b!6342136))

(assert (= (and d!1990488 (not c!1153199)) b!6342134))

(assert (= (and b!6342134 c!1153203) b!6342141))

(assert (= (and b!6342134 (not c!1153203)) b!6342142))

(assert (= (and b!6342142 res!2609886) b!6342139))

(assert (= (and b!6342142 c!1153202) b!6342132))

(assert (= (and b!6342142 (not c!1153202)) b!6342133))

(assert (= (and b!6342133 c!1153201) b!6342135))

(assert (= (and b!6342133 (not c!1153201)) b!6342138))

(assert (= (and b!6342138 c!1153200) b!6342137))

(assert (= (and b!6342138 (not c!1153200)) b!6342140))

(assert (= (or b!6342135 b!6342137) bm!540538))

(assert (= (or b!6342135 b!6342137) bm!540539))

(assert (= (or b!6342132 bm!540538) bm!540534))

(assert (= (or b!6342132 bm!540539) bm!540536))

(assert (= (or b!6342141 bm!540536) bm!540535))

(assert (= (or b!6342141 b!6342132) bm!540537))

(declare-fun m!7150556 () Bool)

(assert (=> bm!540535 m!7150556))

(declare-fun m!7150558 () Bool)

(assert (=> bm!540534 m!7150558))

(declare-fun m!7150560 () Bool)

(assert (=> b!6342139 m!7150560))

(declare-fun m!7150562 () Bool)

(assert (=> b!6342136 m!7150562))

(declare-fun m!7150564 () Bool)

(assert (=> bm!540537 m!7150564))

(assert (=> bm!540344 d!1990488))

(declare-fun d!1990490 () Bool)

(assert (=> d!1990490 (= (nullable!6238 (h!71359 (exprs!6129 lt!2362418))) (nullableFct!2185 (h!71359 (exprs!6129 lt!2362418))))))

(declare-fun bs!1587979 () Bool)

(assert (= bs!1587979 d!1990490))

(declare-fun m!7150566 () Bool)

(assert (=> bs!1587979 m!7150566))

(assert (=> b!6341513 d!1990490))

(declare-fun b!6342143 () Bool)

(declare-fun e!3852189 () Int)

(assert (=> b!6342143 (= e!3852189 1)))

(declare-fun b!6342144 () Bool)

(declare-fun c!1153205 () Bool)

(assert (=> b!6342144 (= c!1153205 ((_ is Union!16245) (h!71359 (exprs!6129 lt!2362418))))))

(declare-fun e!3852187 () Int)

(declare-fun e!3852190 () Int)

(assert (=> b!6342144 (= e!3852187 e!3852190)))

(declare-fun b!6342145 () Bool)

(declare-fun call!540546 () Int)

(declare-fun call!540545 () Int)

(assert (=> b!6342145 (= e!3852189 (+ 1 call!540546 call!540545))))

(declare-fun b!6342146 () Bool)

(assert (=> b!6342146 (= e!3852190 (+ 1 call!540546 call!540545))))

(declare-fun bm!540540 () Bool)

(assert (=> bm!540540 (= call!540545 (regexDepthTotal!203 (ite c!1153205 (regTwo!33003 (h!71359 (exprs!6129 lt!2362418))) (regTwo!33002 (h!71359 (exprs!6129 lt!2362418))))))))

(declare-fun bm!540541 () Bool)

(declare-fun call!540547 () Int)

(assert (=> bm!540541 (= call!540546 call!540547)))

(declare-fun b!6342147 () Bool)

(assert (=> b!6342147 (= e!3852187 (+ 1 call!540547))))

(declare-fun d!1990492 () Bool)

(declare-fun lt!2362637 () Int)

(assert (=> d!1990492 (> lt!2362637 0)))

(declare-fun e!3852188 () Int)

(assert (=> d!1990492 (= lt!2362637 e!3852188)))

(declare-fun c!1153207 () Bool)

(assert (=> d!1990492 (= c!1153207 ((_ is ElementMatch!16245) (h!71359 (exprs!6129 lt!2362418))))))

(assert (=> d!1990492 (= (regexDepthTotal!203 (h!71359 (exprs!6129 lt!2362418))) lt!2362637)))

(declare-fun b!6342148 () Bool)

(assert (=> b!6342148 (= e!3852188 e!3852187)))

(declare-fun c!1153206 () Bool)

(assert (=> b!6342148 (= c!1153206 ((_ is Star!16245) (h!71359 (exprs!6129 lt!2362418))))))

(declare-fun bm!540542 () Bool)

(assert (=> bm!540542 (= call!540547 (regexDepthTotal!203 (ite c!1153206 (reg!16574 (h!71359 (exprs!6129 lt!2362418))) (ite c!1153205 (regOne!33003 (h!71359 (exprs!6129 lt!2362418))) (regOne!33002 (h!71359 (exprs!6129 lt!2362418)))))))))

(declare-fun b!6342149 () Bool)

(assert (=> b!6342149 (= e!3852188 1)))

(declare-fun b!6342150 () Bool)

(assert (=> b!6342150 (= e!3852190 e!3852189)))

(declare-fun c!1153204 () Bool)

(assert (=> b!6342150 (= c!1153204 ((_ is Concat!25090) (h!71359 (exprs!6129 lt!2362418))))))

(assert (= (and d!1990492 c!1153207) b!6342149))

(assert (= (and d!1990492 (not c!1153207)) b!6342148))

(assert (= (and b!6342148 c!1153206) b!6342147))

(assert (= (and b!6342148 (not c!1153206)) b!6342144))

(assert (= (and b!6342144 c!1153205) b!6342146))

(assert (= (and b!6342144 (not c!1153205)) b!6342150))

(assert (= (and b!6342150 c!1153204) b!6342145))

(assert (= (and b!6342150 (not c!1153204)) b!6342143))

(assert (= (or b!6342146 b!6342145) bm!540540))

(assert (= (or b!6342146 b!6342145) bm!540541))

(assert (= (or b!6342147 bm!540541) bm!540542))

(declare-fun m!7150568 () Bool)

(assert (=> bm!540540 m!7150568))

(declare-fun m!7150570 () Bool)

(assert (=> bm!540542 m!7150570))

(assert (=> b!6340918 d!1990492))

(declare-fun d!1990494 () Bool)

(declare-fun lt!2362638 () Int)

(assert (=> d!1990494 (>= lt!2362638 0)))

(declare-fun e!3852191 () Int)

(assert (=> d!1990494 (= lt!2362638 e!3852191)))

(declare-fun c!1153208 () Bool)

(assert (=> d!1990494 (= c!1153208 ((_ is Cons!64911) (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418))))))))

(assert (=> d!1990494 (= (contextDepthTotal!354 (Context!11259 (t!378621 (exprs!6129 lt!2362418)))) lt!2362638)))

(declare-fun b!6342151 () Bool)

(assert (=> b!6342151 (= e!3852191 (+ (regexDepthTotal!203 (h!71359 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418)))))) (contextDepthTotal!354 (Context!11259 (t!378621 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 lt!2362418)))))))))))

(declare-fun b!6342152 () Bool)

(assert (=> b!6342152 (= e!3852191 1)))

(assert (= (and d!1990494 c!1153208) b!6342151))

(assert (= (and d!1990494 (not c!1153208)) b!6342152))

(declare-fun m!7150572 () Bool)

(assert (=> b!6342151 m!7150572))

(declare-fun m!7150574 () Bool)

(assert (=> b!6342151 m!7150574))

(assert (=> b!6340918 d!1990494))

(declare-fun bs!1587980 () Bool)

(declare-fun d!1990496 () Bool)

(assert (= bs!1587980 (and d!1990496 b!6341979)))

(declare-fun lambda!348456 () Int)

(assert (=> bs!1587980 (not (= lambda!348456 lambda!348441))))

(declare-fun bs!1587981 () Bool)

(assert (= bs!1587981 (and d!1990496 b!6340742)))

(assert (=> bs!1587981 (not (= lambda!348456 lambda!348342))))

(declare-fun bs!1587982 () Bool)

(assert (= bs!1587982 (and d!1990496 d!1990254)))

(assert (=> bs!1587982 (= lambda!348456 lambda!348415)))

(declare-fun bs!1587983 () Bool)

(assert (= bs!1587983 (and d!1990496 b!6340744)))

(assert (=> bs!1587983 (not (= lambda!348456 lambda!348343))))

(declare-fun bs!1587984 () Bool)

(assert (= bs!1587984 (and d!1990496 b!6341981)))

(assert (=> bs!1587984 (not (= lambda!348456 lambda!348442))))

(declare-fun bs!1587985 () Bool)

(assert (= bs!1587985 (and d!1990496 d!1990474)))

(assert (=> bs!1587985 (= lambda!348456 lambda!348448)))

(declare-fun bs!1587986 () Bool)

(assert (= bs!1587986 (and d!1990496 b!6340737)))

(assert (=> bs!1587986 (not (= lambda!348456 lambda!348339))))

(declare-fun bs!1587987 () Bool)

(assert (= bs!1587987 (and d!1990496 d!1990404)))

(assert (=> bs!1587987 (not (= lambda!348456 lambda!348439))))

(declare-fun bs!1587988 () Bool)

(assert (= bs!1587988 (and d!1990496 d!1990210)))

(assert (=> bs!1587988 (= lambda!348456 lambda!348412)))

(declare-fun bs!1587989 () Bool)

(assert (= bs!1587989 (and d!1990496 b!6340739)))

(assert (=> bs!1587989 (not (= lambda!348456 lambda!348340))))

(declare-fun bs!1587990 () Bool)

(assert (= bs!1587990 (and d!1990496 d!1990394)))

(assert (=> bs!1587990 (= lambda!348456 lambda!348430)))

(declare-fun bs!1587991 () Bool)

(assert (= bs!1587991 (and d!1990496 d!1990430)))

(assert (=> bs!1587991 (= lambda!348456 lambda!348443)))

(assert (=> d!1990496 (= (nullableZipper!2011 lt!2362430) (exists!2566 lt!2362430 lambda!348456))))

(declare-fun bs!1587992 () Bool)

(assert (= bs!1587992 d!1990496))

(declare-fun m!7150576 () Bool)

(assert (=> bs!1587992 m!7150576))

(assert (=> b!6341465 d!1990496))

(declare-fun d!1990498 () Bool)

(declare-fun res!2609887 () Bool)

(declare-fun e!3852192 () Bool)

(assert (=> d!1990498 (=> res!2609887 e!3852192)))

(assert (=> d!1990498 (= res!2609887 ((_ is Nil!64911) (exprs!6129 (h!71360 zl!343))))))

(assert (=> d!1990498 (= (forall!15401 (exprs!6129 (h!71360 zl!343)) lambda!348318) e!3852192)))

(declare-fun b!6342153 () Bool)

(declare-fun e!3852193 () Bool)

(assert (=> b!6342153 (= e!3852192 e!3852193)))

(declare-fun res!2609888 () Bool)

(assert (=> b!6342153 (=> (not res!2609888) (not e!3852193))))

(assert (=> b!6342153 (= res!2609888 (dynLambda!25729 lambda!348318 (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun b!6342154 () Bool)

(assert (=> b!6342154 (= e!3852193 (forall!15401 (t!378621 (exprs!6129 (h!71360 zl!343))) lambda!348318))))

(assert (= (and d!1990498 (not res!2609887)) b!6342153))

(assert (= (and b!6342153 res!2609888) b!6342154))

(declare-fun b_lambda!241331 () Bool)

(assert (=> (not b_lambda!241331) (not b!6342153)))

(declare-fun m!7150578 () Bool)

(assert (=> b!6342153 m!7150578))

(declare-fun m!7150580 () Bool)

(assert (=> b!6342154 m!7150580))

(assert (=> d!1989984 d!1990498))

(declare-fun call!540549 () List!65035)

(declare-fun bm!540543 () Bool)

(declare-fun c!1153212 () Bool)

(declare-fun c!1153211 () Bool)

(assert (=> bm!540543 (= call!540549 ($colon$colon!2105 (exprs!6129 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343))))) (ite (or c!1153212 c!1153211) (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (h!71359 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6342155 () Bool)

(declare-fun e!3852199 () (InoxSet Context!11258))

(declare-fun call!540551 () (InoxSet Context!11258))

(declare-fun call!540553 () (InoxSet Context!11258))

(assert (=> b!6342155 (= e!3852199 ((_ map or) call!540551 call!540553))))

(declare-fun b!6342156 () Bool)

(declare-fun e!3852195 () (InoxSet Context!11258))

(assert (=> b!6342156 (= e!3852199 e!3852195)))

(assert (=> b!6342156 (= c!1153211 ((_ is Concat!25090) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun bm!540544 () Bool)

(declare-fun call!540552 () List!65035)

(declare-fun c!1153213 () Bool)

(declare-fun call!540548 () (InoxSet Context!11258))

(assert (=> bm!540544 (= call!540548 (derivationStepZipperDown!1493 (ite c!1153213 (regTwo!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153212 (regTwo!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (ite c!1153211 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343)))) (reg!16574 (h!71359 (exprs!6129 (h!71360 zl!343))))))) (ite (or c!1153213 c!1153212) (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))) (Context!11259 call!540552)) (h!71358 s!2326)))))

(declare-fun bm!540545 () Bool)

(assert (=> bm!540545 (= call!540553 call!540548)))

(declare-fun bm!540546 () Bool)

(assert (=> bm!540546 (= call!540551 (derivationStepZipperDown!1493 (ite c!1153213 (regOne!33003 (h!71359 (exprs!6129 (h!71360 zl!343)))) (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))) (ite c!1153213 (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))) (Context!11259 call!540549)) (h!71358 s!2326)))))

(declare-fun bm!540547 () Bool)

(assert (=> bm!540547 (= call!540552 call!540549)))

(declare-fun b!6342158 () Bool)

(declare-fun call!540550 () (InoxSet Context!11258))

(assert (=> b!6342158 (= e!3852195 call!540550)))

(declare-fun b!6342159 () Bool)

(declare-fun e!3852194 () (InoxSet Context!11258))

(assert (=> b!6342159 (= e!3852194 (store ((as const (Array Context!11258 Bool)) false) (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))) true))))

(declare-fun b!6342160 () Bool)

(declare-fun e!3852196 () (InoxSet Context!11258))

(assert (=> b!6342160 (= e!3852196 call!540550)))

(declare-fun b!6342161 () Bool)

(declare-fun c!1153210 () Bool)

(assert (=> b!6342161 (= c!1153210 ((_ is Star!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> b!6342161 (= e!3852195 e!3852196)))

(declare-fun b!6342162 () Bool)

(declare-fun e!3852198 () Bool)

(assert (=> b!6342162 (= e!3852198 (nullable!6238 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun b!6342157 () Bool)

(declare-fun e!3852197 () (InoxSet Context!11258))

(assert (=> b!6342157 (= e!3852194 e!3852197)))

(assert (=> b!6342157 (= c!1153213 ((_ is Union!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun d!1990500 () Bool)

(declare-fun c!1153209 () Bool)

(assert (=> d!1990500 (= c!1153209 (and ((_ is ElementMatch!16245) (h!71359 (exprs!6129 (h!71360 zl!343)))) (= (c!1152752 (h!71359 (exprs!6129 (h!71360 zl!343)))) (h!71358 s!2326))))))

(assert (=> d!1990500 (= (derivationStepZipperDown!1493 (h!71359 (exprs!6129 (h!71360 zl!343))) (Context!11259 (t!378621 (exprs!6129 (h!71360 zl!343)))) (h!71358 s!2326)) e!3852194)))

(declare-fun b!6342163 () Bool)

(assert (=> b!6342163 (= e!3852196 ((as const (Array Context!11258 Bool)) false))))

(declare-fun b!6342164 () Bool)

(assert (=> b!6342164 (= e!3852197 ((_ map or) call!540551 call!540548))))

(declare-fun bm!540548 () Bool)

(assert (=> bm!540548 (= call!540550 call!540553)))

(declare-fun b!6342165 () Bool)

(assert (=> b!6342165 (= c!1153212 e!3852198)))

(declare-fun res!2609889 () Bool)

(assert (=> b!6342165 (=> (not res!2609889) (not e!3852198))))

(assert (=> b!6342165 (= res!2609889 ((_ is Concat!25090) (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> b!6342165 (= e!3852197 e!3852199)))

(assert (= (and d!1990500 c!1153209) b!6342159))

(assert (= (and d!1990500 (not c!1153209)) b!6342157))

(assert (= (and b!6342157 c!1153213) b!6342164))

(assert (= (and b!6342157 (not c!1153213)) b!6342165))

(assert (= (and b!6342165 res!2609889) b!6342162))

(assert (= (and b!6342165 c!1153212) b!6342155))

(assert (= (and b!6342165 (not c!1153212)) b!6342156))

(assert (= (and b!6342156 c!1153211) b!6342158))

(assert (= (and b!6342156 (not c!1153211)) b!6342161))

(assert (= (and b!6342161 c!1153210) b!6342160))

(assert (= (and b!6342161 (not c!1153210)) b!6342163))

(assert (= (or b!6342158 b!6342160) bm!540547))

(assert (= (or b!6342158 b!6342160) bm!540548))

(assert (= (or b!6342155 bm!540547) bm!540543))

(assert (= (or b!6342155 bm!540548) bm!540545))

(assert (= (or b!6342164 bm!540545) bm!540544))

(assert (= (or b!6342164 b!6342155) bm!540546))

(declare-fun m!7150582 () Bool)

(assert (=> bm!540544 m!7150582))

(declare-fun m!7150584 () Bool)

(assert (=> bm!540543 m!7150584))

(assert (=> b!6342162 m!7149924))

(declare-fun m!7150586 () Bool)

(assert (=> b!6342159 m!7150586))

(declare-fun m!7150588 () Bool)

(assert (=> bm!540546 m!7150588))

(assert (=> bm!540409 d!1990500))

(declare-fun bs!1587993 () Bool)

(declare-fun d!1990502 () Bool)

(assert (= bs!1587993 (and d!1990502 b!6341979)))

(declare-fun lambda!348457 () Int)

(assert (=> bs!1587993 (not (= lambda!348457 lambda!348441))))

(declare-fun bs!1587994 () Bool)

(assert (= bs!1587994 (and d!1990502 b!6340742)))

(assert (=> bs!1587994 (not (= lambda!348457 lambda!348342))))

(declare-fun bs!1587995 () Bool)

(assert (= bs!1587995 (and d!1990502 d!1990254)))

(assert (=> bs!1587995 (not (= lambda!348457 lambda!348415))))

(declare-fun bs!1587996 () Bool)

(assert (= bs!1587996 (and d!1990502 b!6340744)))

(assert (=> bs!1587996 (not (= lambda!348457 lambda!348343))))

(declare-fun bs!1587997 () Bool)

(assert (= bs!1587997 (and d!1990502 b!6341981)))

(assert (=> bs!1587997 (not (= lambda!348457 lambda!348442))))

(declare-fun bs!1587998 () Bool)

(assert (= bs!1587998 (and d!1990502 d!1990474)))

(assert (=> bs!1587998 (not (= lambda!348457 lambda!348448))))

(declare-fun bs!1587999 () Bool)

(assert (= bs!1587999 (and d!1990502 b!6340737)))

(assert (=> bs!1587999 (not (= lambda!348457 lambda!348339))))

(declare-fun bs!1588000 () Bool)

(assert (= bs!1588000 (and d!1990502 d!1990496)))

(assert (=> bs!1588000 (not (= lambda!348457 lambda!348456))))

(declare-fun bs!1588001 () Bool)

(assert (= bs!1588001 (and d!1990502 d!1990404)))

(assert (=> bs!1588001 (= (and (= lt!2362471 lt!2362475) (= lambda!348338 lambda!348341)) (= lambda!348457 lambda!348439))))

(declare-fun bs!1588002 () Bool)

(assert (= bs!1588002 (and d!1990502 d!1990210)))

(assert (=> bs!1588002 (not (= lambda!348457 lambda!348412))))

(declare-fun bs!1588003 () Bool)

(assert (= bs!1588003 (and d!1990502 b!6340739)))

(assert (=> bs!1588003 (not (= lambda!348457 lambda!348340))))

(declare-fun bs!1588004 () Bool)

(assert (= bs!1588004 (and d!1990502 d!1990394)))

(assert (=> bs!1588004 (not (= lambda!348457 lambda!348430))))

(declare-fun bs!1588005 () Bool)

(assert (= bs!1588005 (and d!1990502 d!1990430)))

(assert (=> bs!1588005 (not (= lambda!348457 lambda!348443))))

(assert (=> d!1990502 true))

(assert (=> d!1990502 true))

(assert (=> d!1990502 (< (dynLambda!25733 order!27509 lambda!348338) (dynLambda!25734 order!27511 lambda!348457))))

(assert (=> d!1990502 (forall!15403 (t!378622 lt!2362432) lambda!348457)))

(declare-fun lt!2362639 () Unit!158311)

(assert (=> d!1990502 (= lt!2362639 (choose!47028 (t!378622 lt!2362432) lt!2362471 (zipperDepth!352 (t!378622 lt!2362432)) lambda!348338))))

(assert (=> d!1990502 (>= lt!2362471 (zipperDepth!352 (t!378622 lt!2362432)))))

(assert (=> d!1990502 (= (lemmaForallContextDepthBiggerThanTransitive!225 (t!378622 lt!2362432) lt!2362471 (zipperDepth!352 (t!378622 lt!2362432)) lambda!348338) lt!2362639)))

(declare-fun bs!1588006 () Bool)

(assert (= bs!1588006 d!1990502))

(declare-fun m!7150590 () Bool)

(assert (=> bs!1588006 m!7150590))

(assert (=> bs!1588006 m!7149378))

(declare-fun m!7150592 () Bool)

(assert (=> bs!1588006 m!7150592))

(assert (=> b!6340737 d!1990502))

(declare-fun bs!1588007 () Bool)

(declare-fun b!6342166 () Bool)

(assert (= bs!1588007 (and b!6342166 b!6340737)))

(declare-fun lambda!348458 () Int)

(assert (=> bs!1588007 (= lambda!348458 lambda!348338)))

(declare-fun bs!1588008 () Bool)

(assert (= bs!1588008 (and b!6342166 b!6340742)))

(assert (=> bs!1588008 (= lambda!348458 lambda!348341)))

(declare-fun bs!1588009 () Bool)

(assert (= bs!1588009 (and b!6342166 b!6341979)))

(assert (=> bs!1588009 (= lambda!348458 lambda!348440)))

(declare-fun lambda!348459 () Int)

(declare-fun lt!2362640 () Int)

(assert (=> bs!1588009 (= (= lt!2362640 lt!2362629) (= lambda!348459 lambda!348441))))

(assert (=> bs!1588008 (= (= lt!2362640 lt!2362475) (= lambda!348459 lambda!348342))))

(declare-fun bs!1588010 () Bool)

(assert (= bs!1588010 (and b!6342166 d!1990254)))

(assert (=> bs!1588010 (not (= lambda!348459 lambda!348415))))

(declare-fun bs!1588011 () Bool)

(assert (= bs!1588011 (and b!6342166 b!6340744)))

(assert (=> bs!1588011 (= (= lt!2362640 lt!2362477) (= lambda!348459 lambda!348343))))

(declare-fun bs!1588012 () Bool)

(assert (= bs!1588012 (and b!6342166 b!6341981)))

(assert (=> bs!1588012 (= (= lt!2362640 lt!2362631) (= lambda!348459 lambda!348442))))

(declare-fun bs!1588013 () Bool)

(assert (= bs!1588013 (and b!6342166 d!1990474)))

(assert (=> bs!1588013 (not (= lambda!348459 lambda!348448))))

(assert (=> bs!1588007 (= (= lt!2362640 lt!2362471) (= lambda!348459 lambda!348339))))

(declare-fun bs!1588014 () Bool)

(assert (= bs!1588014 (and b!6342166 d!1990496)))

(assert (=> bs!1588014 (not (= lambda!348459 lambda!348456))))

(declare-fun bs!1588015 () Bool)

(assert (= bs!1588015 (and b!6342166 d!1990502)))

(assert (=> bs!1588015 (not (= lambda!348459 lambda!348457))))

(declare-fun bs!1588016 () Bool)

(assert (= bs!1588016 (and b!6342166 d!1990404)))

(assert (=> bs!1588016 (not (= lambda!348459 lambda!348439))))

(declare-fun bs!1588017 () Bool)

(assert (= bs!1588017 (and b!6342166 d!1990210)))

(assert (=> bs!1588017 (not (= lambda!348459 lambda!348412))))

(declare-fun bs!1588018 () Bool)

(assert (= bs!1588018 (and b!6342166 b!6340739)))

(assert (=> bs!1588018 (= (= lt!2362640 lt!2362473) (= lambda!348459 lambda!348340))))

(declare-fun bs!1588019 () Bool)

(assert (= bs!1588019 (and b!6342166 d!1990394)))

(assert (=> bs!1588019 (not (= lambda!348459 lambda!348430))))

(declare-fun bs!1588020 () Bool)

(assert (= bs!1588020 (and b!6342166 d!1990430)))

(assert (=> bs!1588020 (not (= lambda!348459 lambda!348443))))

(assert (=> b!6342166 true))

(declare-fun bs!1588021 () Bool)

(declare-fun b!6342168 () Bool)

(assert (= bs!1588021 (and b!6342168 b!6341979)))

(declare-fun lambda!348460 () Int)

(declare-fun lt!2362642 () Int)

(assert (=> bs!1588021 (= (= lt!2362642 lt!2362629) (= lambda!348460 lambda!348441))))

(declare-fun bs!1588022 () Bool)

(assert (= bs!1588022 (and b!6342168 b!6340742)))

(assert (=> bs!1588022 (= (= lt!2362642 lt!2362475) (= lambda!348460 lambda!348342))))

(declare-fun bs!1588023 () Bool)

(assert (= bs!1588023 (and b!6342168 d!1990254)))

(assert (=> bs!1588023 (not (= lambda!348460 lambda!348415))))

(declare-fun bs!1588024 () Bool)

(assert (= bs!1588024 (and b!6342168 b!6340744)))

(assert (=> bs!1588024 (= (= lt!2362642 lt!2362477) (= lambda!348460 lambda!348343))))

(declare-fun bs!1588025 () Bool)

(assert (= bs!1588025 (and b!6342168 b!6341981)))

(assert (=> bs!1588025 (= (= lt!2362642 lt!2362631) (= lambda!348460 lambda!348442))))

(declare-fun bs!1588026 () Bool)

(assert (= bs!1588026 (and b!6342168 d!1990474)))

(assert (=> bs!1588026 (not (= lambda!348460 lambda!348448))))

(declare-fun bs!1588027 () Bool)

(assert (= bs!1588027 (and b!6342168 b!6340737)))

(assert (=> bs!1588027 (= (= lt!2362642 lt!2362471) (= lambda!348460 lambda!348339))))

(declare-fun bs!1588028 () Bool)

(assert (= bs!1588028 (and b!6342168 d!1990496)))

(assert (=> bs!1588028 (not (= lambda!348460 lambda!348456))))

(declare-fun bs!1588029 () Bool)

(assert (= bs!1588029 (and b!6342168 d!1990502)))

(assert (=> bs!1588029 (not (= lambda!348460 lambda!348457))))

(declare-fun bs!1588030 () Bool)

(assert (= bs!1588030 (and b!6342168 d!1990404)))

(assert (=> bs!1588030 (not (= lambda!348460 lambda!348439))))

(declare-fun bs!1588031 () Bool)

(assert (= bs!1588031 (and b!6342168 d!1990210)))

(assert (=> bs!1588031 (not (= lambda!348460 lambda!348412))))

(declare-fun bs!1588032 () Bool)

(assert (= bs!1588032 (and b!6342168 b!6340739)))

(assert (=> bs!1588032 (= (= lt!2362642 lt!2362473) (= lambda!348460 lambda!348340))))

(declare-fun bs!1588033 () Bool)

(assert (= bs!1588033 (and b!6342168 b!6342166)))

(assert (=> bs!1588033 (= (= lt!2362642 lt!2362640) (= lambda!348460 lambda!348459))))

(declare-fun bs!1588034 () Bool)

(assert (= bs!1588034 (and b!6342168 d!1990394)))

(assert (=> bs!1588034 (not (= lambda!348460 lambda!348430))))

(declare-fun bs!1588035 () Bool)

(assert (= bs!1588035 (and b!6342168 d!1990430)))

(assert (=> bs!1588035 (not (= lambda!348460 lambda!348443))))

(assert (=> b!6342168 true))

(declare-fun d!1990504 () Bool)

(declare-fun e!3852201 () Bool)

(assert (=> d!1990504 e!3852201))

(declare-fun res!2609890 () Bool)

(assert (=> d!1990504 (=> (not res!2609890) (not e!3852201))))

(assert (=> d!1990504 (= res!2609890 (>= lt!2362642 0))))

(declare-fun e!3852200 () Int)

(assert (=> d!1990504 (= lt!2362642 e!3852200)))

(declare-fun c!1153214 () Bool)

(assert (=> d!1990504 (= c!1153214 ((_ is Cons!64912) (t!378622 lt!2362432)))))

(assert (=> d!1990504 (= (zipperDepth!352 (t!378622 lt!2362432)) lt!2362642)))

(assert (=> b!6342166 (= e!3852200 lt!2362640)))

(assert (=> b!6342166 (= lt!2362640 (maxBigInt!0 (contextDepth!241 (h!71360 (t!378622 lt!2362432))) (zipperDepth!352 (t!378622 (t!378622 lt!2362432)))))))

(declare-fun lt!2362643 () Unit!158311)

(assert (=> b!6342166 (= lt!2362643 (lemmaForallContextDepthBiggerThanTransitive!225 (t!378622 (t!378622 lt!2362432)) lt!2362640 (zipperDepth!352 (t!378622 (t!378622 lt!2362432))) lambda!348458))))

(assert (=> b!6342166 (forall!15403 (t!378622 (t!378622 lt!2362432)) lambda!348459)))

(declare-fun lt!2362641 () Unit!158311)

(assert (=> b!6342166 (= lt!2362641 lt!2362643)))

(declare-fun b!6342167 () Bool)

(assert (=> b!6342167 (= e!3852200 0)))

(assert (=> b!6342168 (= e!3852201 (forall!15403 (t!378622 lt!2362432) lambda!348460))))

(assert (= (and d!1990504 c!1153214) b!6342166))

(assert (= (and d!1990504 (not c!1153214)) b!6342167))

(assert (= (and d!1990504 res!2609890) b!6342168))

(declare-fun m!7150594 () Bool)

(assert (=> b!6342166 m!7150594))

(declare-fun m!7150596 () Bool)

(assert (=> b!6342166 m!7150596))

(declare-fun m!7150598 () Bool)

(assert (=> b!6342166 m!7150598))

(assert (=> b!6342166 m!7150594))

(declare-fun m!7150600 () Bool)

(assert (=> b!6342166 m!7150600))

(assert (=> b!6342166 m!7150594))

(declare-fun m!7150602 () Bool)

(assert (=> b!6342166 m!7150602))

(assert (=> b!6342166 m!7150600))

(declare-fun m!7150604 () Bool)

(assert (=> b!6342168 m!7150604))

(assert (=> b!6340737 d!1990504))

(declare-fun d!1990506 () Bool)

(declare-fun res!2609891 () Bool)

(declare-fun e!3852202 () Bool)

(assert (=> d!1990506 (=> res!2609891 e!3852202)))

(assert (=> d!1990506 (= res!2609891 ((_ is Nil!64912) (t!378622 lt!2362432)))))

(assert (=> d!1990506 (= (forall!15403 (t!378622 lt!2362432) lambda!348339) e!3852202)))

(declare-fun b!6342169 () Bool)

(declare-fun e!3852203 () Bool)

(assert (=> b!6342169 (= e!3852202 e!3852203)))

(declare-fun res!2609892 () Bool)

(assert (=> b!6342169 (=> (not res!2609892) (not e!3852203))))

(assert (=> b!6342169 (= res!2609892 (dynLambda!25728 lambda!348339 (h!71360 (t!378622 lt!2362432))))))

(declare-fun b!6342170 () Bool)

(assert (=> b!6342170 (= e!3852203 (forall!15403 (t!378622 (t!378622 lt!2362432)) lambda!348339))))

(assert (= (and d!1990506 (not res!2609891)) b!6342169))

(assert (= (and b!6342169 res!2609892) b!6342170))

(declare-fun b_lambda!241333 () Bool)

(assert (=> (not b_lambda!241333) (not b!6342169)))

(declare-fun m!7150606 () Bool)

(assert (=> b!6342169 m!7150606))

(declare-fun m!7150608 () Bool)

(assert (=> b!6342170 m!7150608))

(assert (=> b!6340737 d!1990506))

(declare-fun bs!1588036 () Bool)

(declare-fun b!6342171 () Bool)

(assert (= bs!1588036 (and b!6342171 d!1990162)))

(declare-fun lambda!348461 () Int)

(assert (=> bs!1588036 (not (= lambda!348461 lambda!348406))))

(declare-fun bs!1588037 () Bool)

(assert (= bs!1588037 (and b!6342171 d!1990294)))

(assert (=> bs!1588037 (not (= lambda!348461 lambda!348418))))

(declare-fun bs!1588038 () Bool)

(assert (= bs!1588038 (and b!6342171 d!1990484)))

(assert (=> bs!1588038 (not (= lambda!348461 lambda!348455))))

(declare-fun bs!1588039 () Bool)

(assert (= bs!1588039 (and b!6342171 d!1989984)))

(assert (=> bs!1588039 (not (= lambda!348461 lambda!348318))))

(declare-fun bs!1588040 () Bool)

(assert (= bs!1588040 (and b!6342171 b!6341973)))

(declare-fun lt!2362647 () Int)

(assert (=> bs!1588040 (= (= lt!2362647 lt!2362624) (= lambda!348461 lambda!348436))))

(declare-fun bs!1588041 () Bool)

(assert (= bs!1588041 (and b!6342171 d!1990386)))

(assert (=> bs!1588041 (not (= lambda!348461 lambda!348427))))

(declare-fun bs!1588042 () Bool)

(assert (= bs!1588042 (and b!6342171 d!1990264)))

(assert (=> bs!1588042 (not (= lambda!348461 lambda!348416))))

(declare-fun bs!1588043 () Bool)

(assert (= bs!1588043 (and b!6342171 d!1990132)))

(assert (=> bs!1588043 (not (= lambda!348461 lambda!348396))))

(declare-fun bs!1588044 () Bool)

(assert (= bs!1588044 (and b!6342171 b!6341971)))

(assert (=> bs!1588044 (= (= lt!2362647 lt!2362625) (= lambda!348461 lambda!348435))))

(declare-fun bs!1588045 () Bool)

(assert (= bs!1588045 (and b!6342171 d!1990148)))

(assert (=> bs!1588045 (not (= lambda!348461 lambda!348404))))

(declare-fun bs!1588046 () Bool)

(assert (= bs!1588046 (and b!6342171 d!1990320)))

(assert (=> bs!1588046 (not (= lambda!348461 lambda!348424))))

(declare-fun bs!1588047 () Bool)

(assert (= bs!1588047 (and b!6342171 d!1990134)))

(assert (=> bs!1588047 (not (= lambda!348461 lambda!348399))))

(declare-fun bs!1588048 () Bool)

(assert (= bs!1588048 (and b!6342171 d!1990216)))

(assert (=> bs!1588048 (not (= lambda!348461 lambda!348413))))

(declare-fun bs!1588049 () Bool)

(assert (= bs!1588049 (and b!6342171 d!1990384)))

(assert (=> bs!1588049 (not (= lambda!348461 lambda!348426))))

(declare-fun bs!1588050 () Bool)

(assert (= bs!1588050 (and b!6342171 d!1990154)))

(assert (=> bs!1588050 (not (= lambda!348461 lambda!348405))))

(declare-fun bs!1588051 () Bool)

(assert (= bs!1588051 (and b!6342171 d!1989990)))

(assert (=> bs!1588051 (not (= lambda!348461 lambda!348319))))

(assert (=> b!6342171 true))

(declare-fun bs!1588052 () Bool)

(declare-fun b!6342173 () Bool)

(assert (= bs!1588052 (and b!6342173 b!6342171)))

(declare-fun lt!2362646 () Int)

(declare-fun lambda!348462 () Int)

(assert (=> bs!1588052 (= (= lt!2362646 lt!2362647) (= lambda!348462 lambda!348461))))

(declare-fun bs!1588053 () Bool)

(assert (= bs!1588053 (and b!6342173 d!1990162)))

(assert (=> bs!1588053 (not (= lambda!348462 lambda!348406))))

(declare-fun bs!1588054 () Bool)

(assert (= bs!1588054 (and b!6342173 d!1990294)))

(assert (=> bs!1588054 (not (= lambda!348462 lambda!348418))))

(declare-fun bs!1588055 () Bool)

(assert (= bs!1588055 (and b!6342173 d!1990484)))

(assert (=> bs!1588055 (not (= lambda!348462 lambda!348455))))

(declare-fun bs!1588056 () Bool)

(assert (= bs!1588056 (and b!6342173 d!1989984)))

(assert (=> bs!1588056 (not (= lambda!348462 lambda!348318))))

(declare-fun bs!1588057 () Bool)

(assert (= bs!1588057 (and b!6342173 b!6341973)))

(assert (=> bs!1588057 (= (= lt!2362646 lt!2362624) (= lambda!348462 lambda!348436))))

(declare-fun bs!1588058 () Bool)

(assert (= bs!1588058 (and b!6342173 d!1990386)))

(assert (=> bs!1588058 (not (= lambda!348462 lambda!348427))))

(declare-fun bs!1588059 () Bool)

(assert (= bs!1588059 (and b!6342173 d!1990264)))

(assert (=> bs!1588059 (not (= lambda!348462 lambda!348416))))

(declare-fun bs!1588060 () Bool)

(assert (= bs!1588060 (and b!6342173 d!1990132)))

(assert (=> bs!1588060 (not (= lambda!348462 lambda!348396))))

(declare-fun bs!1588061 () Bool)

(assert (= bs!1588061 (and b!6342173 b!6341971)))

(assert (=> bs!1588061 (= (= lt!2362646 lt!2362625) (= lambda!348462 lambda!348435))))

(declare-fun bs!1588062 () Bool)

(assert (= bs!1588062 (and b!6342173 d!1990148)))

(assert (=> bs!1588062 (not (= lambda!348462 lambda!348404))))

(declare-fun bs!1588063 () Bool)

(assert (= bs!1588063 (and b!6342173 d!1990320)))

(assert (=> bs!1588063 (not (= lambda!348462 lambda!348424))))

(declare-fun bs!1588064 () Bool)

(assert (= bs!1588064 (and b!6342173 d!1990134)))

(assert (=> bs!1588064 (not (= lambda!348462 lambda!348399))))

(declare-fun bs!1588065 () Bool)

(assert (= bs!1588065 (and b!6342173 d!1990216)))

(assert (=> bs!1588065 (not (= lambda!348462 lambda!348413))))

(declare-fun bs!1588066 () Bool)

(assert (= bs!1588066 (and b!6342173 d!1990384)))

(assert (=> bs!1588066 (not (= lambda!348462 lambda!348426))))

(declare-fun bs!1588067 () Bool)

(assert (= bs!1588067 (and b!6342173 d!1990154)))

(assert (=> bs!1588067 (not (= lambda!348462 lambda!348405))))

(declare-fun bs!1588068 () Bool)

(assert (= bs!1588068 (and b!6342173 d!1989990)))

(assert (=> bs!1588068 (not (= lambda!348462 lambda!348319))))

(assert (=> b!6342173 true))

(declare-fun d!1990508 () Bool)

(declare-fun e!3852204 () Bool)

(assert (=> d!1990508 e!3852204))

(declare-fun res!2609893 () Bool)

(assert (=> d!1990508 (=> (not res!2609893) (not e!3852204))))

(assert (=> d!1990508 (= res!2609893 (>= lt!2362646 0))))

(declare-fun e!3852205 () Int)

(assert (=> d!1990508 (= lt!2362646 e!3852205)))

(declare-fun c!1153215 () Bool)

(assert (=> d!1990508 (= c!1153215 ((_ is Cons!64911) (exprs!6129 (h!71360 lt!2362432))))))

(assert (=> d!1990508 (= (contextDepth!241 (h!71360 lt!2362432)) lt!2362646)))

(assert (=> b!6342171 (= e!3852205 lt!2362647)))

(assert (=> b!6342171 (= lt!2362647 (maxBigInt!0 (regexDepth!324 (h!71359 (exprs!6129 (h!71360 lt!2362432)))) (contextDepth!241 (Context!11259 (t!378621 (exprs!6129 (h!71360 lt!2362432)))))))))

(declare-fun lt!2362644 () Unit!158311)

(assert (=> b!6342171 (= lt!2362644 (lemmaForallRegexDepthBiggerThanTransitive!114 (t!378621 (exprs!6129 (h!71360 lt!2362432))) lt!2362647 (contextDepth!241 (Context!11259 (t!378621 (exprs!6129 (h!71360 lt!2362432)))))))))

(assert (=> b!6342171 (forall!15401 (t!378621 (exprs!6129 (h!71360 lt!2362432))) lambda!348461)))

(declare-fun lt!2362645 () Unit!158311)

(assert (=> b!6342171 (= lt!2362645 lt!2362644)))

(declare-fun b!6342172 () Bool)

(assert (=> b!6342172 (= e!3852205 0)))

(assert (=> b!6342173 (= e!3852204 (forall!15401 (exprs!6129 (h!71360 lt!2362432)) lambda!348462))))

(assert (= (and d!1990508 c!1153215) b!6342171))

(assert (= (and d!1990508 (not c!1153215)) b!6342172))

(assert (= (and d!1990508 res!2609893) b!6342173))

(declare-fun m!7150610 () Bool)

(assert (=> b!6342171 m!7150610))

(assert (=> b!6342171 m!7150610))

(declare-fun m!7150612 () Bool)

(assert (=> b!6342171 m!7150612))

(declare-fun m!7150614 () Bool)

(assert (=> b!6342171 m!7150614))

(assert (=> b!6342171 m!7150612))

(declare-fun m!7150616 () Bool)

(assert (=> b!6342171 m!7150616))

(assert (=> b!6342171 m!7150612))

(declare-fun m!7150618 () Bool)

(assert (=> b!6342171 m!7150618))

(declare-fun m!7150620 () Bool)

(assert (=> b!6342173 m!7150620))

(assert (=> b!6340737 d!1990508))

(declare-fun d!1990510 () Bool)

(assert (=> d!1990510 (= (maxBigInt!0 (contextDepth!241 (h!71360 lt!2362432)) (zipperDepth!352 (t!378622 lt!2362432))) (ite (>= (contextDepth!241 (h!71360 lt!2362432)) (zipperDepth!352 (t!378622 lt!2362432))) (contextDepth!241 (h!71360 lt!2362432)) (zipperDepth!352 (t!378622 lt!2362432))))))

(assert (=> b!6340737 d!1990510))

(declare-fun bs!1588069 () Bool)

(declare-fun b!6342180 () Bool)

(assert (= bs!1588069 (and b!6342180 d!1990084)))

(declare-fun lambda!348463 () Int)

(assert (=> bs!1588069 (not (= lambda!348463 lambda!348375))))

(declare-fun bs!1588070 () Bool)

(assert (= bs!1588070 (and b!6342180 b!6342091)))

(assert (=> bs!1588070 (not (= lambda!348463 lambda!348447))))

(declare-fun bs!1588071 () Bool)

(assert (= bs!1588071 (and b!6342180 d!1990306)))

(assert (=> bs!1588071 (not (= lambda!348463 lambda!348423))))

(declare-fun bs!1588072 () Bool)

(assert (= bs!1588072 (and b!6342180 b!6341243)))

(assert (=> bs!1588072 (= (and (= (reg!16574 (regTwo!33003 r!7292)) (reg!16574 r!7292)) (= (regTwo!33003 r!7292) r!7292)) (= lambda!348463 lambda!348392))))

(declare-fun bs!1588073 () Bool)

(assert (= bs!1588073 (and b!6342180 b!6341245)))

(assert (=> bs!1588073 (not (= lambda!348463 lambda!348393))))

(declare-fun bs!1588074 () Bool)

(assert (= bs!1588074 (and b!6342180 d!1990480)))

(assert (=> bs!1588074 (not (= lambda!348463 lambda!348454))))

(declare-fun bs!1588075 () Bool)

(assert (= bs!1588075 (and b!6342180 b!6341828)))

(assert (=> bs!1588075 (not (= lambda!348463 lambda!348420))))

(assert (=> bs!1588074 (not (= lambda!348463 lambda!348453))))

(declare-fun bs!1588076 () Bool)

(assert (= bs!1588076 (and b!6342180 b!6341355)))

(assert (=> bs!1588076 (= (and (= (reg!16574 (regTwo!33003 r!7292)) (reg!16574 lt!2362424)) (= (regTwo!33003 r!7292) lt!2362424)) (= lambda!348463 lambda!348400))))

(declare-fun bs!1588077 () Bool)

(assert (= bs!1588077 (and b!6342180 d!1990068)))

(assert (=> bs!1588077 (not (= lambda!348463 lambda!348370))))

(declare-fun bs!1588078 () Bool)

(assert (= bs!1588078 (and b!6342180 b!6341956)))

(assert (=> bs!1588078 (= (and (= (reg!16574 (regTwo!33003 r!7292)) (reg!16574 (regTwo!33003 lt!2362424))) (= (regTwo!33003 r!7292) (regTwo!33003 lt!2362424))) (= lambda!348463 lambda!348428))))

(declare-fun bs!1588079 () Bool)

(assert (= bs!1588079 (and b!6342180 b!6341357)))

(assert (=> bs!1588079 (not (= lambda!348463 lambda!348401))))

(declare-fun bs!1588080 () Bool)

(assert (= bs!1588080 (and b!6342180 b!6342089)))

(assert (=> bs!1588080 (= (and (= (reg!16574 (regTwo!33003 r!7292)) (reg!16574 (regOne!33003 lt!2362424))) (= (regTwo!33003 r!7292) (regOne!33003 lt!2362424))) (= lambda!348463 lambda!348446))))

(assert (=> bs!1588069 (not (= lambda!348463 lambda!348376))))

(declare-fun bs!1588081 () Bool)

(assert (= bs!1588081 (and b!6342180 b!6340627)))

(assert (=> bs!1588081 (not (= lambda!348463 lambda!348314))))

(declare-fun bs!1588082 () Bool)

(assert (= bs!1588082 (and b!6342180 b!6341958)))

(assert (=> bs!1588082 (not (= lambda!348463 lambda!348429))))

(assert (=> bs!1588081 (not (= lambda!348463 lambda!348313))))

(declare-fun bs!1588083 () Bool)

(assert (= bs!1588083 (and b!6342180 b!6341826)))

(assert (=> bs!1588083 (= (and (= (reg!16574 (regTwo!33003 r!7292)) (reg!16574 (regOne!33003 r!7292))) (= (regTwo!33003 r!7292) (regOne!33003 r!7292))) (= lambda!348463 lambda!348419))))

(assert (=> b!6342180 true))

(assert (=> b!6342180 true))

(declare-fun bs!1588084 () Bool)

(declare-fun b!6342182 () Bool)

(assert (= bs!1588084 (and b!6342182 d!1990084)))

(declare-fun lambda!348464 () Int)

(assert (=> bs!1588084 (not (= lambda!348464 lambda!348375))))

(declare-fun bs!1588085 () Bool)

(assert (= bs!1588085 (and b!6342182 b!6342091)))

(assert (=> bs!1588085 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 (regOne!33003 lt!2362424))) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 (regOne!33003 lt!2362424)))) (= lambda!348464 lambda!348447))))

(declare-fun bs!1588086 () Bool)

(assert (= bs!1588086 (and b!6342182 d!1990306)))

(assert (=> bs!1588086 (not (= lambda!348464 lambda!348423))))

(declare-fun bs!1588087 () Bool)

(assert (= bs!1588087 (and b!6342182 b!6341243)))

(assert (=> bs!1588087 (not (= lambda!348464 lambda!348392))))

(declare-fun bs!1588088 () Bool)

(assert (= bs!1588088 (and b!6342182 b!6341245)))

(assert (=> bs!1588088 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 r!7292)) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 r!7292))) (= lambda!348464 lambda!348393))))

(declare-fun bs!1588089 () Bool)

(assert (= bs!1588089 (and b!6342182 d!1990480)))

(assert (=> bs!1588089 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 r!7292)) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 r!7292))) (= lambda!348464 lambda!348454))))

(declare-fun bs!1588090 () Bool)

(assert (= bs!1588090 (and b!6342182 b!6341828)))

(assert (=> bs!1588090 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 (regOne!33003 r!7292))) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 (regOne!33003 r!7292)))) (= lambda!348464 lambda!348420))))

(declare-fun bs!1588091 () Bool)

(assert (= bs!1588091 (and b!6342182 b!6341355)))

(assert (=> bs!1588091 (not (= lambda!348464 lambda!348400))))

(declare-fun bs!1588092 () Bool)

(assert (= bs!1588092 (and b!6342182 d!1990068)))

(assert (=> bs!1588092 (not (= lambda!348464 lambda!348370))))

(declare-fun bs!1588093 () Bool)

(assert (= bs!1588093 (and b!6342182 b!6341956)))

(assert (=> bs!1588093 (not (= lambda!348464 lambda!348428))))

(declare-fun bs!1588094 () Bool)

(assert (= bs!1588094 (and b!6342182 b!6341357)))

(assert (=> bs!1588094 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 lt!2362424)) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 lt!2362424))) (= lambda!348464 lambda!348401))))

(declare-fun bs!1588095 () Bool)

(assert (= bs!1588095 (and b!6342182 b!6342089)))

(assert (=> bs!1588095 (not (= lambda!348464 lambda!348446))))

(assert (=> bs!1588084 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 r!7292)) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 r!7292))) (= lambda!348464 lambda!348376))))

(declare-fun bs!1588096 () Bool)

(assert (= bs!1588096 (and b!6342182 b!6340627)))

(assert (=> bs!1588096 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 r!7292)) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 r!7292))) (= lambda!348464 lambda!348314))))

(declare-fun bs!1588097 () Bool)

(assert (= bs!1588097 (and b!6342182 b!6341958)))

(assert (=> bs!1588097 (= (and (= (regOne!33002 (regTwo!33003 r!7292)) (regOne!33002 (regTwo!33003 lt!2362424))) (= (regTwo!33002 (regTwo!33003 r!7292)) (regTwo!33002 (regTwo!33003 lt!2362424)))) (= lambda!348464 lambda!348429))))

(declare-fun bs!1588098 () Bool)

(assert (= bs!1588098 (and b!6342182 b!6342180)))

(assert (=> bs!1588098 (not (= lambda!348464 lambda!348463))))

(assert (=> bs!1588089 (not (= lambda!348464 lambda!348453))))

(assert (=> bs!1588096 (not (= lambda!348464 lambda!348313))))

(declare-fun bs!1588099 () Bool)

(assert (= bs!1588099 (and b!6342182 b!6341826)))

(assert (=> bs!1588099 (not (= lambda!348464 lambda!348419))))

(assert (=> b!6342182 true))

(assert (=> b!6342182 true))

(declare-fun b!6342174 () Bool)

(declare-fun c!1153219 () Bool)

(assert (=> b!6342174 (= c!1153219 ((_ is Union!16245) (regTwo!33003 r!7292)))))

(declare-fun e!3852212 () Bool)

(declare-fun e!3852209 () Bool)

(assert (=> b!6342174 (= e!3852212 e!3852209)))

(declare-fun b!6342175 () Bool)

(declare-fun e!3852211 () Bool)

(assert (=> b!6342175 (= e!3852209 e!3852211)))

(declare-fun c!1153216 () Bool)

(assert (=> b!6342175 (= c!1153216 ((_ is Star!16245) (regTwo!33003 r!7292)))))

(declare-fun b!6342176 () Bool)

(declare-fun c!1153217 () Bool)

(assert (=> b!6342176 (= c!1153217 ((_ is ElementMatch!16245) (regTwo!33003 r!7292)))))

(declare-fun e!3852206 () Bool)

(assert (=> b!6342176 (= e!3852206 e!3852212)))

(declare-fun b!6342177 () Bool)

(declare-fun e!3852210 () Bool)

(assert (=> b!6342177 (= e!3852210 e!3852206)))

(declare-fun res!2609894 () Bool)

(assert (=> b!6342177 (= res!2609894 (not ((_ is EmptyLang!16245) (regTwo!33003 r!7292))))))

(assert (=> b!6342177 (=> (not res!2609894) (not e!3852206))))

(declare-fun b!6342178 () Bool)

(declare-fun res!2609895 () Bool)

(declare-fun e!3852207 () Bool)

(assert (=> b!6342178 (=> res!2609895 e!3852207)))

(declare-fun call!540555 () Bool)

(assert (=> b!6342178 (= res!2609895 call!540555)))

(assert (=> b!6342178 (= e!3852211 e!3852207)))

(declare-fun d!1990512 () Bool)

(declare-fun c!1153218 () Bool)

(assert (=> d!1990512 (= c!1153218 ((_ is EmptyExpr!16245) (regTwo!33003 r!7292)))))

(assert (=> d!1990512 (= (matchRSpec!3346 (regTwo!33003 r!7292) s!2326) e!3852210)))

(declare-fun b!6342179 () Bool)

(assert (=> b!6342179 (= e!3852212 (= s!2326 (Cons!64910 (c!1152752 (regTwo!33003 r!7292)) Nil!64910)))))

(declare-fun bm!540549 () Bool)

(declare-fun call!540554 () Bool)

(assert (=> bm!540549 (= call!540554 (Exists!3315 (ite c!1153216 lambda!348463 lambda!348464)))))

(assert (=> b!6342180 (= e!3852207 call!540554)))

(declare-fun b!6342181 () Bool)

(declare-fun e!3852208 () Bool)

(assert (=> b!6342181 (= e!3852209 e!3852208)))

(declare-fun res!2609896 () Bool)

(assert (=> b!6342181 (= res!2609896 (matchRSpec!3346 (regOne!33003 (regTwo!33003 r!7292)) s!2326))))

(assert (=> b!6342181 (=> res!2609896 e!3852208)))

(assert (=> b!6342182 (= e!3852211 call!540554)))

(declare-fun b!6342183 () Bool)

(assert (=> b!6342183 (= e!3852210 call!540555)))

(declare-fun b!6342184 () Bool)

(assert (=> b!6342184 (= e!3852208 (matchRSpec!3346 (regTwo!33003 (regTwo!33003 r!7292)) s!2326))))

(declare-fun bm!540550 () Bool)

(assert (=> bm!540550 (= call!540555 (isEmpty!36992 s!2326))))

(assert (= (and d!1990512 c!1153218) b!6342183))

(assert (= (and d!1990512 (not c!1153218)) b!6342177))

(assert (= (and b!6342177 res!2609894) b!6342176))

(assert (= (and b!6342176 c!1153217) b!6342179))

(assert (= (and b!6342176 (not c!1153217)) b!6342174))

(assert (= (and b!6342174 c!1153219) b!6342181))

(assert (= (and b!6342174 (not c!1153219)) b!6342175))

(assert (= (and b!6342181 (not res!2609896)) b!6342184))

(assert (= (and b!6342175 c!1153216) b!6342178))

(assert (= (and b!6342175 (not c!1153216)) b!6342182))

(assert (= (and b!6342178 (not res!2609895)) b!6342180))

(assert (= (or b!6342180 b!6342182) bm!540549))

(assert (= (or b!6342183 b!6342178) bm!540550))

(declare-fun m!7150622 () Bool)

(assert (=> bm!540549 m!7150622))

(declare-fun m!7150624 () Bool)

(assert (=> b!6342181 m!7150624))

(declare-fun m!7150626 () Bool)

(assert (=> b!6342184 m!7150626))

(assert (=> bm!540550 m!7149734))

(assert (=> b!6341247 d!1990512))

(declare-fun b!6342185 () Bool)

(declare-fun e!3852215 () Bool)

(declare-fun call!540557 () Bool)

(assert (=> b!6342185 (= e!3852215 call!540557)))

(declare-fun bm!540551 () Bool)

(declare-fun call!540556 () Bool)

(declare-fun c!1153220 () Bool)

(assert (=> bm!540551 (= call!540556 (nullable!6238 (ite c!1153220 (regOne!33003 (regOne!33002 (regOne!33002 r!7292))) (regOne!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun d!1990514 () Bool)

(declare-fun res!2609900 () Bool)

(declare-fun e!3852216 () Bool)

(assert (=> d!1990514 (=> res!2609900 e!3852216)))

(assert (=> d!1990514 (= res!2609900 ((_ is EmptyExpr!16245) (regOne!33002 (regOne!33002 r!7292))))))

(assert (=> d!1990514 (= (nullableFct!2185 (regOne!33002 (regOne!33002 r!7292))) e!3852216)))

(declare-fun bm!540552 () Bool)

(assert (=> bm!540552 (= call!540557 (nullable!6238 (ite c!1153220 (regTwo!33003 (regOne!33002 (regOne!33002 r!7292))) (regTwo!33002 (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun b!6342186 () Bool)

(declare-fun e!3852218 () Bool)

(declare-fun e!3852217 () Bool)

(assert (=> b!6342186 (= e!3852218 e!3852217)))

(assert (=> b!6342186 (= c!1153220 ((_ is Union!16245) (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun b!6342187 () Bool)

(declare-fun e!3852213 () Bool)

(assert (=> b!6342187 (= e!3852213 e!3852218)))

(declare-fun res!2609899 () Bool)

(assert (=> b!6342187 (=> res!2609899 e!3852218)))

(assert (=> b!6342187 (= res!2609899 ((_ is Star!16245) (regOne!33002 (regOne!33002 r!7292))))))

(declare-fun b!6342188 () Bool)

(declare-fun e!3852214 () Bool)

(assert (=> b!6342188 (= e!3852214 call!540557)))

(declare-fun b!6342189 () Bool)

(assert (=> b!6342189 (= e!3852217 e!3852215)))

(declare-fun res!2609897 () Bool)

(assert (=> b!6342189 (= res!2609897 call!540556)))

(assert (=> b!6342189 (=> (not res!2609897) (not e!3852215))))

(declare-fun b!6342190 () Bool)

(assert (=> b!6342190 (= e!3852216 e!3852213)))

(declare-fun res!2609901 () Bool)

(assert (=> b!6342190 (=> (not res!2609901) (not e!3852213))))

(assert (=> b!6342190 (= res!2609901 (and (not ((_ is EmptyLang!16245) (regOne!33002 (regOne!33002 r!7292)))) (not ((_ is ElementMatch!16245) (regOne!33002 (regOne!33002 r!7292))))))))

(declare-fun b!6342191 () Bool)

(assert (=> b!6342191 (= e!3852217 e!3852214)))

(declare-fun res!2609898 () Bool)

(assert (=> b!6342191 (= res!2609898 call!540556)))

(assert (=> b!6342191 (=> res!2609898 e!3852214)))

(assert (= (and d!1990514 (not res!2609900)) b!6342190))

(assert (= (and b!6342190 res!2609901) b!6342187))

(assert (= (and b!6342187 (not res!2609899)) b!6342186))

(assert (= (and b!6342186 c!1153220) b!6342191))

(assert (= (and b!6342186 (not c!1153220)) b!6342189))

(assert (= (and b!6342191 (not res!2609898)) b!6342188))

(assert (= (and b!6342189 res!2609897) b!6342185))

(assert (= (or b!6342188 b!6342185) bm!540552))

(assert (= (or b!6342191 b!6342189) bm!540551))

(declare-fun m!7150628 () Bool)

(assert (=> bm!540551 m!7150628))

(declare-fun m!7150630 () Bool)

(assert (=> bm!540552 m!7150630))

(assert (=> d!1990040 d!1990514))

(assert (=> d!1990144 d!1990158))

(assert (=> d!1990144 d!1990146))

(declare-fun d!1990516 () Bool)

(assert (=> d!1990516 (= (matchR!8428 lt!2362424 s!2326) (matchRSpec!3346 lt!2362424 s!2326))))

(assert (=> d!1990516 true))

(declare-fun _$88!5011 () Unit!158311)

(assert (=> d!1990516 (= (choose!47013 lt!2362424 s!2326) _$88!5011)))

(declare-fun bs!1588100 () Bool)

(assert (= bs!1588100 d!1990516))

(assert (=> bs!1588100 m!7149246))

(assert (=> bs!1588100 m!7149250))

(assert (=> d!1990144 d!1990516))

(assert (=> d!1990144 d!1990364))

(declare-fun d!1990518 () Bool)

(declare-fun c!1153221 () Bool)

(assert (=> d!1990518 (= c!1153221 (isEmpty!36992 (tail!12067 (t!378620 s!2326))))))

(declare-fun e!3852219 () Bool)

(assert (=> d!1990518 (= (matchZipper!2257 (derivationStepZipper!2211 ((_ map or) lt!2362434 lt!2362436) (head!12981 (t!378620 s!2326))) (tail!12067 (t!378620 s!2326))) e!3852219)))

(declare-fun b!6342192 () Bool)

(assert (=> b!6342192 (= e!3852219 (nullableZipper!2011 (derivationStepZipper!2211 ((_ map or) lt!2362434 lt!2362436) (head!12981 (t!378620 s!2326)))))))

(declare-fun b!6342193 () Bool)

(assert (=> b!6342193 (= e!3852219 (matchZipper!2257 (derivationStepZipper!2211 (derivationStepZipper!2211 ((_ map or) lt!2362434 lt!2362436) (head!12981 (t!378620 s!2326))) (head!12981 (tail!12067 (t!378620 s!2326)))) (tail!12067 (tail!12067 (t!378620 s!2326)))))))

(assert (= (and d!1990518 c!1153221) b!6342192))

(assert (= (and d!1990518 (not c!1153221)) b!6342193))

(assert (=> d!1990518 m!7149338))

(assert (=> d!1990518 m!7150060))

(assert (=> b!6342192 m!7149784))

(declare-fun m!7150632 () Bool)

(assert (=> b!6342192 m!7150632))

(assert (=> b!6342193 m!7149338))

(assert (=> b!6342193 m!7150064))

(assert (=> b!6342193 m!7149784))

(assert (=> b!6342193 m!7150064))

(declare-fun m!7150634 () Bool)

(assert (=> b!6342193 m!7150634))

(assert (=> b!6342193 m!7149338))

(assert (=> b!6342193 m!7150068))

(assert (=> b!6342193 m!7150634))

(assert (=> b!6342193 m!7150068))

(declare-fun m!7150636 () Bool)

(assert (=> b!6342193 m!7150636))

(assert (=> b!6341346 d!1990518))

(declare-fun bs!1588101 () Bool)

(declare-fun d!1990520 () Bool)

(assert (= bs!1588101 (and d!1990520 b!6340632)))

(declare-fun lambda!348465 () Int)

(assert (=> bs!1588101 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348465 lambda!348315))))

(declare-fun bs!1588102 () Bool)

(assert (= bs!1588102 (and d!1990520 d!1990462)))

(assert (=> bs!1588102 (= lambda!348465 lambda!348445)))

(declare-fun bs!1588103 () Bool)

(assert (= bs!1588103 (and d!1990520 d!1990274)))

(assert (=> bs!1588103 (= lambda!348465 lambda!348417)))

(declare-fun bs!1588104 () Bool)

(assert (= bs!1588104 (and d!1990520 d!1990448)))

(assert (=> bs!1588104 (= lambda!348465 lambda!348444)))

(declare-fun bs!1588105 () Bool)

(assert (= bs!1588105 (and d!1990520 d!1990194)))

(assert (=> bs!1588105 (= (= (head!12981 (t!378620 s!2326)) (h!71358 s!2326)) (= lambda!348465 lambda!348409))))

(declare-fun bs!1588106 () Bool)

(assert (= bs!1588106 (and d!1990520 d!1990248)))

(assert (=> bs!1588106 (= lambda!348465 lambda!348414)))

(declare-fun bs!1588107 () Bool)

(assert (= bs!1588107 (and d!1990520 d!1990340)))

(assert (=> bs!1588107 (= (= (head!12981 (t!378620 s!2326)) (head!12981 s!2326)) (= lambda!348465 lambda!348425))))

(assert (=> d!1990520 true))

(assert (=> d!1990520 (= (derivationStepZipper!2211 ((_ map or) lt!2362434 lt!2362436) (head!12981 (t!378620 s!2326))) (flatMap!1750 ((_ map or) lt!2362434 lt!2362436) lambda!348465))))

(declare-fun bs!1588108 () Bool)

(assert (= bs!1588108 d!1990520))

(declare-fun m!7150638 () Bool)

(assert (=> bs!1588108 m!7150638))

(assert (=> b!6341346 d!1990520))

(assert (=> b!6341346 d!1990250))

(assert (=> b!6341346 d!1990252))

(declare-fun d!1990522 () Bool)

(assert (=> d!1990522 (= (nullable!6238 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))) (nullableFct!2185 (regOne!33002 (h!71359 (exprs!6129 (h!71360 zl!343))))))))

(declare-fun bs!1588109 () Bool)

(assert (= bs!1588109 d!1990522))

(declare-fun m!7150640 () Bool)

(assert (=> bs!1588109 m!7150640))

(assert (=> b!6341494 d!1990522))

(declare-fun b!6342194 () Bool)

(declare-fun e!3852220 () Bool)

(declare-fun tp!1768429 () Bool)

(declare-fun tp!1768430 () Bool)

(assert (=> b!6342194 (= e!3852220 (and tp!1768429 tp!1768430))))

(assert (=> b!6341535 (= tp!1768373 e!3852220)))

(assert (= (and b!6341535 ((_ is Cons!64911) (exprs!6129 setElem!43160))) b!6342194))

(declare-fun b!6342196 () Bool)

(declare-fun e!3852221 () Bool)

(declare-fun tp!1768435 () Bool)

(declare-fun tp!1768434 () Bool)

(assert (=> b!6342196 (= e!3852221 (and tp!1768435 tp!1768434))))

(assert (=> b!6341550 (= tp!1768388 e!3852221)))

(declare-fun b!6342197 () Bool)

(declare-fun tp!1768433 () Bool)

(assert (=> b!6342197 (= e!3852221 tp!1768433)))

(declare-fun b!6342195 () Bool)

(assert (=> b!6342195 (= e!3852221 tp_is_empty!41743)))

(declare-fun b!6342198 () Bool)

(declare-fun tp!1768432 () Bool)

(declare-fun tp!1768431 () Bool)

(assert (=> b!6342198 (= e!3852221 (and tp!1768432 tp!1768431))))

(assert (= (and b!6341550 ((_ is ElementMatch!16245) (regOne!33003 (regOne!33003 r!7292)))) b!6342195))

(assert (= (and b!6341550 ((_ is Concat!25090) (regOne!33003 (regOne!33003 r!7292)))) b!6342196))

(assert (= (and b!6341550 ((_ is Star!16245) (regOne!33003 (regOne!33003 r!7292)))) b!6342197))

(assert (= (and b!6341550 ((_ is Union!16245) (regOne!33003 (regOne!33003 r!7292)))) b!6342198))

(declare-fun b!6342200 () Bool)

(declare-fun e!3852222 () Bool)

(declare-fun tp!1768440 () Bool)

(declare-fun tp!1768439 () Bool)

(assert (=> b!6342200 (= e!3852222 (and tp!1768440 tp!1768439))))

(assert (=> b!6341550 (= tp!1768387 e!3852222)))

(declare-fun b!6342201 () Bool)

(declare-fun tp!1768438 () Bool)

(assert (=> b!6342201 (= e!3852222 tp!1768438)))

(declare-fun b!6342199 () Bool)

(assert (=> b!6342199 (= e!3852222 tp_is_empty!41743)))

(declare-fun b!6342202 () Bool)

(declare-fun tp!1768437 () Bool)

(declare-fun tp!1768436 () Bool)

(assert (=> b!6342202 (= e!3852222 (and tp!1768437 tp!1768436))))

(assert (= (and b!6341550 ((_ is ElementMatch!16245) (regTwo!33003 (regOne!33003 r!7292)))) b!6342199))

(assert (= (and b!6341550 ((_ is Concat!25090) (regTwo!33003 (regOne!33003 r!7292)))) b!6342200))

(assert (= (and b!6341550 ((_ is Star!16245) (regTwo!33003 (regOne!33003 r!7292)))) b!6342201))

(assert (= (and b!6341550 ((_ is Union!16245) (regTwo!33003 (regOne!33003 r!7292)))) b!6342202))

(declare-fun b!6342204 () Bool)

(declare-fun e!3852223 () Bool)

(declare-fun tp!1768445 () Bool)

(declare-fun tp!1768444 () Bool)

(assert (=> b!6342204 (= e!3852223 (and tp!1768445 tp!1768444))))

(assert (=> b!6341549 (= tp!1768389 e!3852223)))

(declare-fun b!6342205 () Bool)

(declare-fun tp!1768443 () Bool)

(assert (=> b!6342205 (= e!3852223 tp!1768443)))

(declare-fun b!6342203 () Bool)

(assert (=> b!6342203 (= e!3852223 tp_is_empty!41743)))

(declare-fun b!6342206 () Bool)

(declare-fun tp!1768442 () Bool)

(declare-fun tp!1768441 () Bool)

(assert (=> b!6342206 (= e!3852223 (and tp!1768442 tp!1768441))))

(assert (= (and b!6341549 ((_ is ElementMatch!16245) (reg!16574 (regOne!33003 r!7292)))) b!6342203))

(assert (= (and b!6341549 ((_ is Concat!25090) (reg!16574 (regOne!33003 r!7292)))) b!6342204))

(assert (= (and b!6341549 ((_ is Star!16245) (reg!16574 (regOne!33003 r!7292)))) b!6342205))

(assert (= (and b!6341549 ((_ is Union!16245) (reg!16574 (regOne!33003 r!7292)))) b!6342206))

(declare-fun condSetEmpty!43165 () Bool)

(assert (=> setNonEmpty!43160 (= condSetEmpty!43165 (= setRest!43160 ((as const (Array Context!11258 Bool)) false)))))

(declare-fun setRes!43165 () Bool)

(assert (=> setNonEmpty!43160 (= tp!1768374 setRes!43165)))

(declare-fun setIsEmpty!43165 () Bool)

(assert (=> setIsEmpty!43165 setRes!43165))

(declare-fun setElem!43165 () Context!11258)

(declare-fun tp!1768447 () Bool)

(declare-fun setNonEmpty!43165 () Bool)

(declare-fun e!3852224 () Bool)

(assert (=> setNonEmpty!43165 (= setRes!43165 (and tp!1768447 (inv!83859 setElem!43165) e!3852224))))

(declare-fun setRest!43165 () (InoxSet Context!11258))

(assert (=> setNonEmpty!43165 (= setRest!43160 ((_ map or) (store ((as const (Array Context!11258 Bool)) false) setElem!43165 true) setRest!43165))))

(declare-fun b!6342207 () Bool)

(declare-fun tp!1768446 () Bool)

(assert (=> b!6342207 (= e!3852224 tp!1768446)))

(assert (= (and setNonEmpty!43160 condSetEmpty!43165) setIsEmpty!43165))

(assert (= (and setNonEmpty!43160 (not condSetEmpty!43165)) setNonEmpty!43165))

(assert (= setNonEmpty!43165 b!6342207))

(declare-fun m!7150642 () Bool)

(assert (=> setNonEmpty!43165 m!7150642))

(declare-fun b!6342209 () Bool)

(declare-fun e!3852225 () Bool)

(declare-fun tp!1768452 () Bool)

(declare-fun tp!1768451 () Bool)

(assert (=> b!6342209 (= e!3852225 (and tp!1768452 tp!1768451))))

(assert (=> b!6341558 (= tp!1768398 e!3852225)))

(declare-fun b!6342210 () Bool)

(declare-fun tp!1768450 () Bool)

(assert (=> b!6342210 (= e!3852225 tp!1768450)))

(declare-fun b!6342208 () Bool)

(assert (=> b!6342208 (= e!3852225 tp_is_empty!41743)))

(declare-fun b!6342211 () Bool)

(declare-fun tp!1768449 () Bool)

(declare-fun tp!1768448 () Bool)

(assert (=> b!6342211 (= e!3852225 (and tp!1768449 tp!1768448))))

(assert (= (and b!6341558 ((_ is ElementMatch!16245) (regOne!33003 (reg!16574 r!7292)))) b!6342208))

(assert (= (and b!6341558 ((_ is Concat!25090) (regOne!33003 (reg!16574 r!7292)))) b!6342209))

(assert (= (and b!6341558 ((_ is Star!16245) (regOne!33003 (reg!16574 r!7292)))) b!6342210))

(assert (= (and b!6341558 ((_ is Union!16245) (regOne!33003 (reg!16574 r!7292)))) b!6342211))

(declare-fun b!6342213 () Bool)

(declare-fun e!3852226 () Bool)

(declare-fun tp!1768457 () Bool)

(declare-fun tp!1768456 () Bool)

(assert (=> b!6342213 (= e!3852226 (and tp!1768457 tp!1768456))))

(assert (=> b!6341558 (= tp!1768397 e!3852226)))

(declare-fun b!6342214 () Bool)

(declare-fun tp!1768455 () Bool)

(assert (=> b!6342214 (= e!3852226 tp!1768455)))

(declare-fun b!6342212 () Bool)

(assert (=> b!6342212 (= e!3852226 tp_is_empty!41743)))

(declare-fun b!6342215 () Bool)

(declare-fun tp!1768454 () Bool)

(declare-fun tp!1768453 () Bool)

(assert (=> b!6342215 (= e!3852226 (and tp!1768454 tp!1768453))))

(assert (= (and b!6341558 ((_ is ElementMatch!16245) (regTwo!33003 (reg!16574 r!7292)))) b!6342212))

(assert (= (and b!6341558 ((_ is Concat!25090) (regTwo!33003 (reg!16574 r!7292)))) b!6342213))

(assert (= (and b!6341558 ((_ is Star!16245) (regTwo!33003 (reg!16574 r!7292)))) b!6342214))

(assert (= (and b!6341558 ((_ is Union!16245) (regTwo!33003 (reg!16574 r!7292)))) b!6342215))

(declare-fun b!6342217 () Bool)

(declare-fun e!3852227 () Bool)

(declare-fun tp!1768462 () Bool)

(declare-fun tp!1768461 () Bool)

(assert (=> b!6342217 (= e!3852227 (and tp!1768462 tp!1768461))))

(assert (=> b!6341557 (= tp!1768399 e!3852227)))

(declare-fun b!6342218 () Bool)

(declare-fun tp!1768460 () Bool)

(assert (=> b!6342218 (= e!3852227 tp!1768460)))

(declare-fun b!6342216 () Bool)

(assert (=> b!6342216 (= e!3852227 tp_is_empty!41743)))

(declare-fun b!6342219 () Bool)

(declare-fun tp!1768459 () Bool)

(declare-fun tp!1768458 () Bool)

(assert (=> b!6342219 (= e!3852227 (and tp!1768459 tp!1768458))))

(assert (= (and b!6341557 ((_ is ElementMatch!16245) (reg!16574 (reg!16574 r!7292)))) b!6342216))

(assert (= (and b!6341557 ((_ is Concat!25090) (reg!16574 (reg!16574 r!7292)))) b!6342217))

(assert (= (and b!6341557 ((_ is Star!16245) (reg!16574 (reg!16574 r!7292)))) b!6342218))

(assert (= (and b!6341557 ((_ is Union!16245) (reg!16574 (reg!16574 r!7292)))) b!6342219))

(declare-fun b!6342221 () Bool)

(declare-fun e!3852228 () Bool)

(declare-fun tp!1768467 () Bool)

(declare-fun tp!1768466 () Bool)

(assert (=> b!6342221 (= e!3852228 (and tp!1768467 tp!1768466))))

(assert (=> b!6341566 (= tp!1768408 e!3852228)))

(declare-fun b!6342222 () Bool)

(declare-fun tp!1768465 () Bool)

(assert (=> b!6342222 (= e!3852228 tp!1768465)))

(declare-fun b!6342220 () Bool)

(assert (=> b!6342220 (= e!3852228 tp_is_empty!41743)))

(declare-fun b!6342223 () Bool)

(declare-fun tp!1768464 () Bool)

(declare-fun tp!1768463 () Bool)

(assert (=> b!6342223 (= e!3852228 (and tp!1768464 tp!1768463))))

(assert (= (and b!6341566 ((_ is ElementMatch!16245) (regOne!33003 (regTwo!33002 r!7292)))) b!6342220))

(assert (= (and b!6341566 ((_ is Concat!25090) (regOne!33003 (regTwo!33002 r!7292)))) b!6342221))

(assert (= (and b!6341566 ((_ is Star!16245) (regOne!33003 (regTwo!33002 r!7292)))) b!6342222))

(assert (= (and b!6341566 ((_ is Union!16245) (regOne!33003 (regTwo!33002 r!7292)))) b!6342223))

(declare-fun b!6342225 () Bool)

(declare-fun e!3852229 () Bool)

(declare-fun tp!1768472 () Bool)

(declare-fun tp!1768471 () Bool)

(assert (=> b!6342225 (= e!3852229 (and tp!1768472 tp!1768471))))

(assert (=> b!6341566 (= tp!1768407 e!3852229)))

(declare-fun b!6342226 () Bool)

(declare-fun tp!1768470 () Bool)

(assert (=> b!6342226 (= e!3852229 tp!1768470)))

(declare-fun b!6342224 () Bool)

(assert (=> b!6342224 (= e!3852229 tp_is_empty!41743)))

(declare-fun b!6342227 () Bool)

(declare-fun tp!1768469 () Bool)

(declare-fun tp!1768468 () Bool)

(assert (=> b!6342227 (= e!3852229 (and tp!1768469 tp!1768468))))

(assert (= (and b!6341566 ((_ is ElementMatch!16245) (regTwo!33003 (regTwo!33002 r!7292)))) b!6342224))

(assert (= (and b!6341566 ((_ is Concat!25090) (regTwo!33003 (regTwo!33002 r!7292)))) b!6342225))

(assert (= (and b!6341566 ((_ is Star!16245) (regTwo!33003 (regTwo!33002 r!7292)))) b!6342226))

(assert (= (and b!6341566 ((_ is Union!16245) (regTwo!33003 (regTwo!33002 r!7292)))) b!6342227))

(declare-fun b!6342229 () Bool)

(declare-fun e!3852230 () Bool)

(declare-fun tp!1768477 () Bool)

(declare-fun tp!1768476 () Bool)

(assert (=> b!6342229 (= e!3852230 (and tp!1768477 tp!1768476))))

(assert (=> b!6341548 (= tp!1768391 e!3852230)))

(declare-fun b!6342230 () Bool)

(declare-fun tp!1768475 () Bool)

(assert (=> b!6342230 (= e!3852230 tp!1768475)))

(declare-fun b!6342228 () Bool)

(assert (=> b!6342228 (= e!3852230 tp_is_empty!41743)))

(declare-fun b!6342231 () Bool)

(declare-fun tp!1768474 () Bool)

(declare-fun tp!1768473 () Bool)

(assert (=> b!6342231 (= e!3852230 (and tp!1768474 tp!1768473))))

(assert (= (and b!6341548 ((_ is ElementMatch!16245) (regOne!33002 (regOne!33003 r!7292)))) b!6342228))

(assert (= (and b!6341548 ((_ is Concat!25090) (regOne!33002 (regOne!33003 r!7292)))) b!6342229))

(assert (= (and b!6341548 ((_ is Star!16245) (regOne!33002 (regOne!33003 r!7292)))) b!6342230))

(assert (= (and b!6341548 ((_ is Union!16245) (regOne!33002 (regOne!33003 r!7292)))) b!6342231))

(declare-fun b!6342233 () Bool)

(declare-fun e!3852231 () Bool)

(declare-fun tp!1768482 () Bool)

(declare-fun tp!1768481 () Bool)

(assert (=> b!6342233 (= e!3852231 (and tp!1768482 tp!1768481))))

(assert (=> b!6341548 (= tp!1768390 e!3852231)))

(declare-fun b!6342234 () Bool)

(declare-fun tp!1768480 () Bool)

(assert (=> b!6342234 (= e!3852231 tp!1768480)))

(declare-fun b!6342232 () Bool)

(assert (=> b!6342232 (= e!3852231 tp_is_empty!41743)))

(declare-fun b!6342235 () Bool)

(declare-fun tp!1768479 () Bool)

(declare-fun tp!1768478 () Bool)

(assert (=> b!6342235 (= e!3852231 (and tp!1768479 tp!1768478))))

(assert (= (and b!6341548 ((_ is ElementMatch!16245) (regTwo!33002 (regOne!33003 r!7292)))) b!6342232))

(assert (= (and b!6341548 ((_ is Concat!25090) (regTwo!33002 (regOne!33003 r!7292)))) b!6342233))

(assert (= (and b!6341548 ((_ is Star!16245) (regTwo!33002 (regOne!33003 r!7292)))) b!6342234))

(assert (= (and b!6341548 ((_ is Union!16245) (regTwo!33002 (regOne!33003 r!7292)))) b!6342235))

(declare-fun b!6342237 () Bool)

(declare-fun e!3852232 () Bool)

(declare-fun tp!1768487 () Bool)

(declare-fun tp!1768486 () Bool)

(assert (=> b!6342237 (= e!3852232 (and tp!1768487 tp!1768486))))

(assert (=> b!6341565 (= tp!1768409 e!3852232)))

(declare-fun b!6342238 () Bool)

(declare-fun tp!1768485 () Bool)

(assert (=> b!6342238 (= e!3852232 tp!1768485)))

(declare-fun b!6342236 () Bool)

(assert (=> b!6342236 (= e!3852232 tp_is_empty!41743)))

(declare-fun b!6342239 () Bool)

(declare-fun tp!1768484 () Bool)

(declare-fun tp!1768483 () Bool)

(assert (=> b!6342239 (= e!3852232 (and tp!1768484 tp!1768483))))

(assert (= (and b!6341565 ((_ is ElementMatch!16245) (reg!16574 (regTwo!33002 r!7292)))) b!6342236))

(assert (= (and b!6341565 ((_ is Concat!25090) (reg!16574 (regTwo!33002 r!7292)))) b!6342237))

(assert (= (and b!6341565 ((_ is Star!16245) (reg!16574 (regTwo!33002 r!7292)))) b!6342238))

(assert (= (and b!6341565 ((_ is Union!16245) (reg!16574 (regTwo!33002 r!7292)))) b!6342239))

(declare-fun b!6342241 () Bool)

(declare-fun e!3852233 () Bool)

(declare-fun tp!1768492 () Bool)

(declare-fun tp!1768491 () Bool)

(assert (=> b!6342241 (= e!3852233 (and tp!1768492 tp!1768491))))

(assert (=> b!6341556 (= tp!1768401 e!3852233)))

(declare-fun b!6342242 () Bool)

(declare-fun tp!1768490 () Bool)

(assert (=> b!6342242 (= e!3852233 tp!1768490)))

(declare-fun b!6342240 () Bool)

(assert (=> b!6342240 (= e!3852233 tp_is_empty!41743)))

(declare-fun b!6342243 () Bool)

(declare-fun tp!1768489 () Bool)

(declare-fun tp!1768488 () Bool)

(assert (=> b!6342243 (= e!3852233 (and tp!1768489 tp!1768488))))

(assert (= (and b!6341556 ((_ is ElementMatch!16245) (regOne!33002 (reg!16574 r!7292)))) b!6342240))

(assert (= (and b!6341556 ((_ is Concat!25090) (regOne!33002 (reg!16574 r!7292)))) b!6342241))

(assert (= (and b!6341556 ((_ is Star!16245) (regOne!33002 (reg!16574 r!7292)))) b!6342242))

(assert (= (and b!6341556 ((_ is Union!16245) (regOne!33002 (reg!16574 r!7292)))) b!6342243))

(declare-fun b!6342245 () Bool)

(declare-fun e!3852234 () Bool)

(declare-fun tp!1768497 () Bool)

(declare-fun tp!1768496 () Bool)

(assert (=> b!6342245 (= e!3852234 (and tp!1768497 tp!1768496))))

(assert (=> b!6341556 (= tp!1768400 e!3852234)))

(declare-fun b!6342246 () Bool)

(declare-fun tp!1768495 () Bool)

(assert (=> b!6342246 (= e!3852234 tp!1768495)))

(declare-fun b!6342244 () Bool)

(assert (=> b!6342244 (= e!3852234 tp_is_empty!41743)))

(declare-fun b!6342247 () Bool)

(declare-fun tp!1768494 () Bool)

(declare-fun tp!1768493 () Bool)

(assert (=> b!6342247 (= e!3852234 (and tp!1768494 tp!1768493))))

(assert (= (and b!6341556 ((_ is ElementMatch!16245) (regTwo!33002 (reg!16574 r!7292)))) b!6342244))

(assert (= (and b!6341556 ((_ is Concat!25090) (regTwo!33002 (reg!16574 r!7292)))) b!6342245))

(assert (= (and b!6341556 ((_ is Star!16245) (regTwo!33002 (reg!16574 r!7292)))) b!6342246))

(assert (= (and b!6341556 ((_ is Union!16245) (regTwo!33002 (reg!16574 r!7292)))) b!6342247))

(declare-fun b!6342249 () Bool)

(declare-fun e!3852235 () Bool)

(declare-fun tp!1768502 () Bool)

(declare-fun tp!1768501 () Bool)

(assert (=> b!6342249 (= e!3852235 (and tp!1768502 tp!1768501))))

(assert (=> b!6341564 (= tp!1768411 e!3852235)))

(declare-fun b!6342250 () Bool)

(declare-fun tp!1768500 () Bool)

(assert (=> b!6342250 (= e!3852235 tp!1768500)))

(declare-fun b!6342248 () Bool)

(assert (=> b!6342248 (= e!3852235 tp_is_empty!41743)))

(declare-fun b!6342251 () Bool)

(declare-fun tp!1768499 () Bool)

(declare-fun tp!1768498 () Bool)

(assert (=> b!6342251 (= e!3852235 (and tp!1768499 tp!1768498))))

(assert (= (and b!6341564 ((_ is ElementMatch!16245) (regOne!33002 (regTwo!33002 r!7292)))) b!6342248))

(assert (= (and b!6341564 ((_ is Concat!25090) (regOne!33002 (regTwo!33002 r!7292)))) b!6342249))

(assert (= (and b!6341564 ((_ is Star!16245) (regOne!33002 (regTwo!33002 r!7292)))) b!6342250))

(assert (= (and b!6341564 ((_ is Union!16245) (regOne!33002 (regTwo!33002 r!7292)))) b!6342251))

(declare-fun b!6342253 () Bool)

(declare-fun e!3852236 () Bool)

(declare-fun tp!1768507 () Bool)

(declare-fun tp!1768506 () Bool)

(assert (=> b!6342253 (= e!3852236 (and tp!1768507 tp!1768506))))

(assert (=> b!6341564 (= tp!1768410 e!3852236)))

(declare-fun b!6342254 () Bool)

(declare-fun tp!1768505 () Bool)

(assert (=> b!6342254 (= e!3852236 tp!1768505)))

(declare-fun b!6342252 () Bool)

(assert (=> b!6342252 (= e!3852236 tp_is_empty!41743)))

(declare-fun b!6342255 () Bool)

(declare-fun tp!1768504 () Bool)

(declare-fun tp!1768503 () Bool)

(assert (=> b!6342255 (= e!3852236 (and tp!1768504 tp!1768503))))

(assert (= (and b!6341564 ((_ is ElementMatch!16245) (regTwo!33002 (regTwo!33002 r!7292)))) b!6342252))

(assert (= (and b!6341564 ((_ is Concat!25090) (regTwo!33002 (regTwo!33002 r!7292)))) b!6342253))

(assert (= (and b!6341564 ((_ is Star!16245) (regTwo!33002 (regTwo!33002 r!7292)))) b!6342254))

(assert (= (and b!6341564 ((_ is Union!16245) (regTwo!33002 (regTwo!33002 r!7292)))) b!6342255))

(declare-fun b!6342256 () Bool)

(declare-fun e!3852237 () Bool)

(declare-fun tp!1768508 () Bool)

(assert (=> b!6342256 (= e!3852237 (and tp_is_empty!41743 tp!1768508))))

(assert (=> b!6341571 (= tp!1768414 e!3852237)))

(assert (= (and b!6341571 ((_ is Cons!64910) (t!378620 (t!378620 s!2326)))) b!6342256))

(declare-fun b!6342258 () Bool)

(declare-fun e!3852238 () Bool)

(declare-fun tp!1768513 () Bool)

(declare-fun tp!1768512 () Bool)

(assert (=> b!6342258 (= e!3852238 (and tp!1768513 tp!1768512))))

(assert (=> b!6341554 (= tp!1768393 e!3852238)))

(declare-fun b!6342259 () Bool)

(declare-fun tp!1768511 () Bool)

(assert (=> b!6342259 (= e!3852238 tp!1768511)))

(declare-fun b!6342257 () Bool)

(assert (=> b!6342257 (= e!3852238 tp_is_empty!41743)))

(declare-fun b!6342260 () Bool)

(declare-fun tp!1768510 () Bool)

(declare-fun tp!1768509 () Bool)

(assert (=> b!6342260 (= e!3852238 (and tp!1768510 tp!1768509))))

(assert (= (and b!6341554 ((_ is ElementMatch!16245) (regOne!33003 (regTwo!33003 r!7292)))) b!6342257))

(assert (= (and b!6341554 ((_ is Concat!25090) (regOne!33003 (regTwo!33003 r!7292)))) b!6342258))

(assert (= (and b!6341554 ((_ is Star!16245) (regOne!33003 (regTwo!33003 r!7292)))) b!6342259))

(assert (= (and b!6341554 ((_ is Union!16245) (regOne!33003 (regTwo!33003 r!7292)))) b!6342260))

(declare-fun b!6342262 () Bool)

(declare-fun e!3852239 () Bool)

(declare-fun tp!1768518 () Bool)

(declare-fun tp!1768517 () Bool)

(assert (=> b!6342262 (= e!3852239 (and tp!1768518 tp!1768517))))

(assert (=> b!6341554 (= tp!1768392 e!3852239)))

(declare-fun b!6342263 () Bool)

(declare-fun tp!1768516 () Bool)

(assert (=> b!6342263 (= e!3852239 tp!1768516)))

(declare-fun b!6342261 () Bool)

(assert (=> b!6342261 (= e!3852239 tp_is_empty!41743)))

(declare-fun b!6342264 () Bool)

(declare-fun tp!1768515 () Bool)

(declare-fun tp!1768514 () Bool)

(assert (=> b!6342264 (= e!3852239 (and tp!1768515 tp!1768514))))

(assert (= (and b!6341554 ((_ is ElementMatch!16245) (regTwo!33003 (regTwo!33003 r!7292)))) b!6342261))

(assert (= (and b!6341554 ((_ is Concat!25090) (regTwo!33003 (regTwo!33003 r!7292)))) b!6342262))

(assert (= (and b!6341554 ((_ is Star!16245) (regTwo!33003 (regTwo!33003 r!7292)))) b!6342263))

(assert (= (and b!6341554 ((_ is Union!16245) (regTwo!33003 (regTwo!33003 r!7292)))) b!6342264))

(declare-fun b!6342266 () Bool)

(declare-fun e!3852240 () Bool)

(declare-fun tp!1768523 () Bool)

(declare-fun tp!1768522 () Bool)

(assert (=> b!6342266 (= e!3852240 (and tp!1768523 tp!1768522))))

(assert (=> b!6341552 (= tp!1768396 e!3852240)))

(declare-fun b!6342267 () Bool)

(declare-fun tp!1768521 () Bool)

(assert (=> b!6342267 (= e!3852240 tp!1768521)))

(declare-fun b!6342265 () Bool)

(assert (=> b!6342265 (= e!3852240 tp_is_empty!41743)))

(declare-fun b!6342268 () Bool)

(declare-fun tp!1768520 () Bool)

(declare-fun tp!1768519 () Bool)

(assert (=> b!6342268 (= e!3852240 (and tp!1768520 tp!1768519))))

(assert (= (and b!6341552 ((_ is ElementMatch!16245) (regOne!33002 (regTwo!33003 r!7292)))) b!6342265))

(assert (= (and b!6341552 ((_ is Concat!25090) (regOne!33002 (regTwo!33003 r!7292)))) b!6342266))

(assert (= (and b!6341552 ((_ is Star!16245) (regOne!33002 (regTwo!33003 r!7292)))) b!6342267))

(assert (= (and b!6341552 ((_ is Union!16245) (regOne!33002 (regTwo!33003 r!7292)))) b!6342268))

(declare-fun b!6342270 () Bool)

(declare-fun e!3852241 () Bool)

(declare-fun tp!1768528 () Bool)

(declare-fun tp!1768527 () Bool)

(assert (=> b!6342270 (= e!3852241 (and tp!1768528 tp!1768527))))

(assert (=> b!6341552 (= tp!1768395 e!3852241)))

(declare-fun b!6342271 () Bool)

(declare-fun tp!1768526 () Bool)

(assert (=> b!6342271 (= e!3852241 tp!1768526)))

(declare-fun b!6342269 () Bool)

(assert (=> b!6342269 (= e!3852241 tp_is_empty!41743)))

(declare-fun b!6342272 () Bool)

(declare-fun tp!1768525 () Bool)

(declare-fun tp!1768524 () Bool)

(assert (=> b!6342272 (= e!3852241 (and tp!1768525 tp!1768524))))

(assert (= (and b!6341552 ((_ is ElementMatch!16245) (regTwo!33002 (regTwo!33003 r!7292)))) b!6342269))

(assert (= (and b!6341552 ((_ is Concat!25090) (regTwo!33002 (regTwo!33003 r!7292)))) b!6342270))

(assert (= (and b!6341552 ((_ is Star!16245) (regTwo!33002 (regTwo!33003 r!7292)))) b!6342271))

(assert (= (and b!6341552 ((_ is Union!16245) (regTwo!33002 (regTwo!33003 r!7292)))) b!6342272))

(declare-fun b!6342274 () Bool)

(declare-fun e!3852242 () Bool)

(declare-fun tp!1768533 () Bool)

(declare-fun tp!1768532 () Bool)

(assert (=> b!6342274 (= e!3852242 (and tp!1768533 tp!1768532))))

(assert (=> b!6341553 (= tp!1768394 e!3852242)))

(declare-fun b!6342275 () Bool)

(declare-fun tp!1768531 () Bool)

(assert (=> b!6342275 (= e!3852242 tp!1768531)))

(declare-fun b!6342273 () Bool)

(assert (=> b!6342273 (= e!3852242 tp_is_empty!41743)))

(declare-fun b!6342276 () Bool)

(declare-fun tp!1768530 () Bool)

(declare-fun tp!1768529 () Bool)

(assert (=> b!6342276 (= e!3852242 (and tp!1768530 tp!1768529))))

(assert (= (and b!6341553 ((_ is ElementMatch!16245) (reg!16574 (regTwo!33003 r!7292)))) b!6342273))

(assert (= (and b!6341553 ((_ is Concat!25090) (reg!16574 (regTwo!33003 r!7292)))) b!6342274))

(assert (= (and b!6341553 ((_ is Star!16245) (reg!16574 (regTwo!33003 r!7292)))) b!6342275))

(assert (= (and b!6341553 ((_ is Union!16245) (reg!16574 (regTwo!33003 r!7292)))) b!6342276))

(declare-fun b!6342278 () Bool)

(declare-fun e!3852243 () Bool)

(declare-fun tp!1768538 () Bool)

(declare-fun tp!1768537 () Bool)

(assert (=> b!6342278 (= e!3852243 (and tp!1768538 tp!1768537))))

(assert (=> b!6341562 (= tp!1768403 e!3852243)))

(declare-fun b!6342279 () Bool)

(declare-fun tp!1768536 () Bool)

(assert (=> b!6342279 (= e!3852243 tp!1768536)))

(declare-fun b!6342277 () Bool)

(assert (=> b!6342277 (= e!3852243 tp_is_empty!41743)))

(declare-fun b!6342280 () Bool)

(declare-fun tp!1768535 () Bool)

(declare-fun tp!1768534 () Bool)

(assert (=> b!6342280 (= e!3852243 (and tp!1768535 tp!1768534))))

(assert (= (and b!6341562 ((_ is ElementMatch!16245) (regOne!33003 (regOne!33002 r!7292)))) b!6342277))

(assert (= (and b!6341562 ((_ is Concat!25090) (regOne!33003 (regOne!33002 r!7292)))) b!6342278))

(assert (= (and b!6341562 ((_ is Star!16245) (regOne!33003 (regOne!33002 r!7292)))) b!6342279))

(assert (= (and b!6341562 ((_ is Union!16245) (regOne!33003 (regOne!33002 r!7292)))) b!6342280))

(declare-fun b!6342282 () Bool)

(declare-fun e!3852244 () Bool)

(declare-fun tp!1768543 () Bool)

(declare-fun tp!1768542 () Bool)

(assert (=> b!6342282 (= e!3852244 (and tp!1768543 tp!1768542))))

(assert (=> b!6341562 (= tp!1768402 e!3852244)))

(declare-fun b!6342283 () Bool)

(declare-fun tp!1768541 () Bool)

(assert (=> b!6342283 (= e!3852244 tp!1768541)))

(declare-fun b!6342281 () Bool)

(assert (=> b!6342281 (= e!3852244 tp_is_empty!41743)))

(declare-fun b!6342284 () Bool)

(declare-fun tp!1768540 () Bool)

(declare-fun tp!1768539 () Bool)

(assert (=> b!6342284 (= e!3852244 (and tp!1768540 tp!1768539))))

(assert (= (and b!6341562 ((_ is ElementMatch!16245) (regTwo!33003 (regOne!33002 r!7292)))) b!6342281))

(assert (= (and b!6341562 ((_ is Concat!25090) (regTwo!33003 (regOne!33002 r!7292)))) b!6342282))

(assert (= (and b!6341562 ((_ is Star!16245) (regTwo!33003 (regOne!33002 r!7292)))) b!6342283))

(assert (= (and b!6341562 ((_ is Union!16245) (regTwo!33003 (regOne!33002 r!7292)))) b!6342284))

(declare-fun b!6342286 () Bool)

(declare-fun e!3852245 () Bool)

(declare-fun tp!1768548 () Bool)

(declare-fun tp!1768547 () Bool)

(assert (=> b!6342286 (= e!3852245 (and tp!1768548 tp!1768547))))

(assert (=> b!6341560 (= tp!1768406 e!3852245)))

(declare-fun b!6342287 () Bool)

(declare-fun tp!1768546 () Bool)

(assert (=> b!6342287 (= e!3852245 tp!1768546)))

(declare-fun b!6342285 () Bool)

(assert (=> b!6342285 (= e!3852245 tp_is_empty!41743)))

(declare-fun b!6342288 () Bool)

(declare-fun tp!1768545 () Bool)

(declare-fun tp!1768544 () Bool)

(assert (=> b!6342288 (= e!3852245 (and tp!1768545 tp!1768544))))

(assert (= (and b!6341560 ((_ is ElementMatch!16245) (regOne!33002 (regOne!33002 r!7292)))) b!6342285))

(assert (= (and b!6341560 ((_ is Concat!25090) (regOne!33002 (regOne!33002 r!7292)))) b!6342286))

(assert (= (and b!6341560 ((_ is Star!16245) (regOne!33002 (regOne!33002 r!7292)))) b!6342287))

(assert (= (and b!6341560 ((_ is Union!16245) (regOne!33002 (regOne!33002 r!7292)))) b!6342288))

(declare-fun b!6342290 () Bool)

(declare-fun e!3852246 () Bool)

(declare-fun tp!1768553 () Bool)

(declare-fun tp!1768552 () Bool)

(assert (=> b!6342290 (= e!3852246 (and tp!1768553 tp!1768552))))

(assert (=> b!6341560 (= tp!1768405 e!3852246)))

(declare-fun b!6342291 () Bool)

(declare-fun tp!1768551 () Bool)

(assert (=> b!6342291 (= e!3852246 tp!1768551)))

(declare-fun b!6342289 () Bool)

(assert (=> b!6342289 (= e!3852246 tp_is_empty!41743)))

(declare-fun b!6342292 () Bool)

(declare-fun tp!1768550 () Bool)

(declare-fun tp!1768549 () Bool)

(assert (=> b!6342292 (= e!3852246 (and tp!1768550 tp!1768549))))

(assert (= (and b!6341560 ((_ is ElementMatch!16245) (regTwo!33002 (regOne!33002 r!7292)))) b!6342289))

(assert (= (and b!6341560 ((_ is Concat!25090) (regTwo!33002 (regOne!33002 r!7292)))) b!6342290))

(assert (= (and b!6341560 ((_ is Star!16245) (regTwo!33002 (regOne!33002 r!7292)))) b!6342291))

(assert (= (and b!6341560 ((_ is Union!16245) (regTwo!33002 (regOne!33002 r!7292)))) b!6342292))

(declare-fun b!6342294 () Bool)

(declare-fun e!3852247 () Bool)

(declare-fun tp!1768558 () Bool)

(declare-fun tp!1768557 () Bool)

(assert (=> b!6342294 (= e!3852247 (and tp!1768558 tp!1768557))))

(assert (=> b!6341536 (= tp!1768375 e!3852247)))

(declare-fun b!6342295 () Bool)

(declare-fun tp!1768556 () Bool)

(assert (=> b!6342295 (= e!3852247 tp!1768556)))

(declare-fun b!6342293 () Bool)

(assert (=> b!6342293 (= e!3852247 tp_is_empty!41743)))

(declare-fun b!6342296 () Bool)

(declare-fun tp!1768555 () Bool)

(declare-fun tp!1768554 () Bool)

(assert (=> b!6342296 (= e!3852247 (and tp!1768555 tp!1768554))))

(assert (= (and b!6341536 ((_ is ElementMatch!16245) (h!71359 (exprs!6129 (h!71360 zl!343))))) b!6342293))

(assert (= (and b!6341536 ((_ is Concat!25090) (h!71359 (exprs!6129 (h!71360 zl!343))))) b!6342294))

(assert (= (and b!6341536 ((_ is Star!16245) (h!71359 (exprs!6129 (h!71360 zl!343))))) b!6342295))

(assert (= (and b!6341536 ((_ is Union!16245) (h!71359 (exprs!6129 (h!71360 zl!343))))) b!6342296))

(declare-fun b!6342297 () Bool)

(declare-fun e!3852248 () Bool)

(declare-fun tp!1768559 () Bool)

(declare-fun tp!1768560 () Bool)

(assert (=> b!6342297 (= e!3852248 (and tp!1768559 tp!1768560))))

(assert (=> b!6341536 (= tp!1768376 e!3852248)))

(assert (= (and b!6341536 ((_ is Cons!64911) (t!378621 (exprs!6129 (h!71360 zl!343))))) b!6342297))

(declare-fun b!6342299 () Bool)

(declare-fun e!3852249 () Bool)

(declare-fun tp!1768565 () Bool)

(declare-fun tp!1768564 () Bool)

(assert (=> b!6342299 (= e!3852249 (and tp!1768565 tp!1768564))))

(assert (=> b!6341561 (= tp!1768404 e!3852249)))

(declare-fun b!6342300 () Bool)

(declare-fun tp!1768563 () Bool)

(assert (=> b!6342300 (= e!3852249 tp!1768563)))

(declare-fun b!6342298 () Bool)

(assert (=> b!6342298 (= e!3852249 tp_is_empty!41743)))

(declare-fun b!6342301 () Bool)

(declare-fun tp!1768562 () Bool)

(declare-fun tp!1768561 () Bool)

(assert (=> b!6342301 (= e!3852249 (and tp!1768562 tp!1768561))))

(assert (= (and b!6341561 ((_ is ElementMatch!16245) (reg!16574 (regOne!33002 r!7292)))) b!6342298))

(assert (= (and b!6341561 ((_ is Concat!25090) (reg!16574 (regOne!33002 r!7292)))) b!6342299))

(assert (= (and b!6341561 ((_ is Star!16245) (reg!16574 (regOne!33002 r!7292)))) b!6342300))

(assert (= (and b!6341561 ((_ is Union!16245) (reg!16574 (regOne!33002 r!7292)))) b!6342301))

(declare-fun b!6342302 () Bool)

(declare-fun e!3852250 () Bool)

(declare-fun tp!1768566 () Bool)

(declare-fun tp!1768567 () Bool)

(assert (=> b!6342302 (= e!3852250 (and tp!1768566 tp!1768567))))

(assert (=> b!6341530 (= tp!1768367 e!3852250)))

(assert (= (and b!6341530 ((_ is Cons!64911) (exprs!6129 (h!71360 (t!378622 zl!343))))) b!6342302))

(declare-fun b!6342304 () Bool)

(declare-fun e!3852252 () Bool)

(declare-fun tp!1768568 () Bool)

(assert (=> b!6342304 (= e!3852252 tp!1768568)))

(declare-fun b!6342303 () Bool)

(declare-fun tp!1768569 () Bool)

(declare-fun e!3852251 () Bool)

(assert (=> b!6342303 (= e!3852251 (and (inv!83859 (h!71360 (t!378622 (t!378622 zl!343)))) e!3852252 tp!1768569))))

(assert (=> b!6341529 (= tp!1768368 e!3852251)))

(assert (= b!6342303 b!6342304))

(assert (= (and b!6341529 ((_ is Cons!64912) (t!378622 (t!378622 zl!343)))) b!6342303))

(declare-fun m!7150644 () Bool)

(assert (=> b!6342303 m!7150644))

(declare-fun b!6342306 () Bool)

(declare-fun e!3852253 () Bool)

(declare-fun tp!1768574 () Bool)

(declare-fun tp!1768573 () Bool)

(assert (=> b!6342306 (= e!3852253 (and tp!1768574 tp!1768573))))

(assert (=> b!6341522 (= tp!1768361 e!3852253)))

(declare-fun b!6342307 () Bool)

(declare-fun tp!1768572 () Bool)

(assert (=> b!6342307 (= e!3852253 tp!1768572)))

(declare-fun b!6342305 () Bool)

(assert (=> b!6342305 (= e!3852253 tp_is_empty!41743)))

(declare-fun b!6342308 () Bool)

(declare-fun tp!1768571 () Bool)

(declare-fun tp!1768570 () Bool)

(assert (=> b!6342308 (= e!3852253 (and tp!1768571 tp!1768570))))

(assert (= (and b!6341522 ((_ is ElementMatch!16245) (h!71359 (exprs!6129 setElem!43154)))) b!6342305))

(assert (= (and b!6341522 ((_ is Concat!25090) (h!71359 (exprs!6129 setElem!43154)))) b!6342306))

(assert (= (and b!6341522 ((_ is Star!16245) (h!71359 (exprs!6129 setElem!43154)))) b!6342307))

(assert (= (and b!6341522 ((_ is Union!16245) (h!71359 (exprs!6129 setElem!43154)))) b!6342308))

(declare-fun b!6342309 () Bool)

(declare-fun e!3852254 () Bool)

(declare-fun tp!1768575 () Bool)

(declare-fun tp!1768576 () Bool)

(assert (=> b!6342309 (= e!3852254 (and tp!1768575 tp!1768576))))

(assert (=> b!6341522 (= tp!1768362 e!3852254)))

(assert (= (and b!6341522 ((_ is Cons!64911) (t!378621 (exprs!6129 setElem!43154)))) b!6342309))

(declare-fun b_lambda!241335 () Bool)

(assert (= b_lambda!241319 (or d!1990134 b_lambda!241335)))

(declare-fun bs!1588110 () Bool)

(declare-fun d!1990524 () Bool)

(assert (= bs!1588110 (and d!1990524 d!1990134)))

(assert (=> bs!1588110 (= (dynLambda!25729 lambda!348399 (h!71359 lt!2362560)) (validRegex!7981 (h!71359 lt!2362560)))))

(declare-fun m!7150646 () Bool)

(assert (=> bs!1588110 m!7150646))

(assert (=> b!6341871 d!1990524))

(declare-fun b_lambda!241337 () Bool)

(assert (= b_lambda!241309 (or b!6340632 b_lambda!241337)))

(assert (=> d!1990232 d!1990198))

(declare-fun b_lambda!241339 () Bool)

(assert (= b_lambda!241313 (or d!1990132 b_lambda!241339)))

(declare-fun bs!1588111 () Bool)

(declare-fun d!1990526 () Bool)

(assert (= bs!1588111 (and d!1990526 d!1990132)))

(assert (=> bs!1588111 (= (dynLambda!25729 lambda!348396 (h!71359 (unfocusZipperList!1666 zl!343))) (validRegex!7981 (h!71359 (unfocusZipperList!1666 zl!343))))))

(declare-fun m!7150648 () Bool)

(assert (=> bs!1588111 m!7150648))

(assert (=> b!6341818 d!1990526))

(declare-fun b_lambda!241341 () Bool)

(assert (= b_lambda!241317 (or d!1990148 b_lambda!241341)))

(declare-fun bs!1588112 () Bool)

(declare-fun d!1990528 () Bool)

(assert (= bs!1588112 (and d!1990528 d!1990148)))

(assert (=> bs!1588112 (= (dynLambda!25729 lambda!348404 (h!71359 lt!2362431)) (validRegex!7981 (h!71359 lt!2362431)))))

(declare-fun m!7150650 () Bool)

(assert (=> bs!1588112 m!7150650))

(assert (=> b!6341864 d!1990528))

(declare-fun b_lambda!241343 () Bool)

(assert (= b_lambda!241325 (or b!6340742 b_lambda!241343)))

(declare-fun bs!1588113 () Bool)

(declare-fun d!1990530 () Bool)

(assert (= bs!1588113 (and d!1990530 b!6340742)))

(assert (=> bs!1588113 (= (dynLambda!25728 lambda!348342 (h!71360 (t!378622 zl!343))) (>= lt!2362475 (contextDepth!241 (h!71360 (t!378622 zl!343)))))))

(assert (=> bs!1588113 m!7150394))

(assert (=> b!6341982 d!1990530))

(declare-fun b_lambda!241345 () Bool)

(assert (= b_lambda!241315 (or d!1990154 b_lambda!241345)))

(declare-fun bs!1588114 () Bool)

(declare-fun d!1990532 () Bool)

(assert (= bs!1588114 (and d!1990532 d!1990154)))

(assert (=> bs!1588114 (= (dynLambda!25729 lambda!348405 (h!71359 lt!2362429)) (validRegex!7981 (h!71359 lt!2362429)))))

(declare-fun m!7150652 () Bool)

(assert (=> bs!1588114 m!7150652))

(assert (=> b!6341853 d!1990532))

(declare-fun b_lambda!241347 () Bool)

(assert (= b_lambda!241327 (or d!1989990 b_lambda!241347)))

(declare-fun bs!1588115 () Bool)

(declare-fun d!1990534 () Bool)

(assert (= bs!1588115 (and d!1990534 d!1989990)))

(assert (=> bs!1588115 (= (dynLambda!25729 lambda!348319 (h!71359 (exprs!6129 setElem!43154))) (validRegex!7981 (h!71359 (exprs!6129 setElem!43154))))))

(declare-fun m!7150654 () Bool)

(assert (=> bs!1588115 m!7150654))

(assert (=> b!6341999 d!1990534))

(declare-fun b_lambda!241349 () Bool)

(assert (= b_lambda!241311 (or b!6340744 b_lambda!241349)))

(declare-fun bs!1588116 () Bool)

(declare-fun d!1990536 () Bool)

(assert (= bs!1588116 (and d!1990536 b!6340744)))

(assert (=> bs!1588116 (= (dynLambda!25728 lambda!348343 (h!71360 zl!343)) (>= lt!2362477 (contextDepth!241 (h!71360 zl!343))))))

(assert (=> bs!1588116 m!7149396))

(assert (=> b!6341747 d!1990536))

(declare-fun b_lambda!241351 () Bool)

(assert (= b_lambda!241329 (or d!1990162 b_lambda!241351)))

(declare-fun bs!1588117 () Bool)

(declare-fun d!1990538 () Bool)

(assert (= bs!1588117 (and d!1990538 d!1990162)))

(assert (=> bs!1588117 (= (dynLambda!25729 lambda!348406 (h!71359 (exprs!6129 (h!71360 zl!343)))) (validRegex!7981 (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(declare-fun m!7150656 () Bool)

(assert (=> bs!1588117 m!7150656))

(assert (=> b!6342065 d!1990538))

(declare-fun b_lambda!241353 () Bool)

(assert (= b_lambda!241321 (or b!6340632 b_lambda!241353)))

(assert (=> d!1990328 d!1990196))

(declare-fun b_lambda!241355 () Bool)

(assert (= b_lambda!241323 (or b!6340739 b_lambda!241355)))

(declare-fun bs!1588118 () Bool)

(declare-fun d!1990540 () Bool)

(assert (= bs!1588118 (and d!1990540 b!6340739)))

(assert (=> bs!1588118 (= (dynLambda!25728 lambda!348340 (h!71360 lt!2362432)) (>= lt!2362473 (contextDepth!241 (h!71360 lt!2362432))))))

(assert (=> bs!1588118 m!7149384))

(assert (=> b!6341936 d!1990540))

(declare-fun b_lambda!241357 () Bool)

(assert (= b_lambda!241331 (or d!1989984 b_lambda!241357)))

(declare-fun bs!1588119 () Bool)

(declare-fun d!1990542 () Bool)

(assert (= bs!1588119 (and d!1990542 d!1989984)))

(assert (=> bs!1588119 (= (dynLambda!25729 lambda!348318 (h!71359 (exprs!6129 (h!71360 zl!343)))) (validRegex!7981 (h!71359 (exprs!6129 (h!71360 zl!343)))))))

(assert (=> bs!1588119 m!7150656))

(assert (=> b!6342153 d!1990542))

(declare-fun b_lambda!241359 () Bool)

(assert (= b_lambda!241333 (or b!6340737 b_lambda!241359)))

(declare-fun bs!1588120 () Bool)

(declare-fun d!1990544 () Bool)

(assert (= bs!1588120 (and d!1990544 b!6340737)))

(assert (=> bs!1588120 (= (dynLambda!25728 lambda!348339 (h!71360 (t!378622 lt!2362432))) (>= lt!2362471 (contextDepth!241 (h!71360 (t!378622 lt!2362432)))))))

(assert (=> bs!1588120 m!7150600))

(assert (=> b!6342169 d!1990544))

(check-sat (not b!6341701) (not b!6342071) (not b!6342237) (not d!1990306) (not b!6341931) (not bm!540525) (not d!1990298) (not b!6341728) (not bs!1588118) (not b!6342242) (not b!6342054) (not bm!540510) (not b!6342272) (not d!1990478) (not b!6341611) (not b!6341642) (not bm!540449) (not b!6341717) (not bm!540524) (not b!6342055) (not b!6342255) (not d!1990448) (not bs!1588111) (not b!6341963) (not b!6342211) (not b!6342168) (not b_lambda!241307) (not b!6341773) (not b!6342258) (not d!1990490) (not b!6342262) (not d!1990520) (not b!6342170) (not b!6342192) (not d!1990430) (not b!6342233) (not b!6342127) (not b!6342218) (not d!1990302) (not b!6342162) (not b!6342032) (not b!6342256) (not d!1990216) (not bm!540418) (not bm!540507) (not d!1990434) (not setNonEmpty!43164) (not b!6341750) (not bs!1588110) (not bm!540533) (not bm!540429) (not b!6342286) (not b!6342004) (not d!1990258) (not d!1990272) (not b!6342301) (not b!6341809) (not b!6342282) (not bm!540543) (not b!6341971) (not b!6341939) (not b!6341981) (not bm!540512) (not b!6342171) (not d!1990248) (not b!6341781) (not bm!540504) (not b!6342308) (not b!6341613) (not bm!540474) (not b!6341942) (not b!6341784) (not b!6342060) (not b!6341979) (not bm!540446) (not d!1990232) (not b!6342101) (not d!1990394) (not d!1990276) (not b!6342304) (not b!6341872) (not d!1990210) (not bm!540491) (not b!6341646) (not b!6342296) (not b!6342254) (not bm!540550) (not b!6341641) (not bm!540500) (not b_lambda!241305) (not b!6342249) (not b!6342154) (not bm!540427) (not bm!540528) (not bm!540526) (not bm!540534) (not b!6342000) (not b!6341656) (not bm!540537) (not b_lambda!241343) (not b!6341655) (not b!6342204) (not bm!540521) (not b!6341652) (not b!6342033) (not b!6341756) (not b!6341868) (not b!6341827) (not b!6341905) (not b!6341960) (not b!6342253) (not d!1990516) (not b!6341895) (not b!6342201) (not d!1990278) (not d!1990224) (not d!1990226) (not b!6341647) (not bm!540531) (not d!1990338) (not setNonEmpty!43165) (not b!6342026) (not b!6341947) (not b!6342300) (not d!1990440) (not bm!540535) (not b!6342226) (not b!6341859) (not d!1990344) (not b!6342263) (not d!1990220) (not b!6341729) (not b!6342271) (not b!6341835) (not b_lambda!241339) (not b!6341819) (not b!6342066) (not d!1990396) (not d!1990274) (not b!6342264) (not d!1990340) (not b!6342267) (not b!6341904) (not d!1990342) (not b!6342200) (not d!1990496) (not d!1990474) (not b!6342247) (not bm!540492) (not b!6341706) (not b!6342173) (not b!6341788) (not b!6342222) (not b!6341946) (not bm!540546) (not d!1990208) (not b!6341962) (not bs!1588115) (not bm!540516) (not bm!540434) (not b!6342196) (not b!6341608) (not b!6341703) (not b_lambda!241357) (not bm!540451) (not b!6342294) (not b!6342210) (not b!6341758) (not bm!540435) (not b!6342139) (not b!6342266) (not b!6341749) (not b!6342292) (not b_lambda!241341) (not bs!1588120) (not b!6341614) tp_is_empty!41743 (not b!6342229) (not b_lambda!241335) (not bm!540478) (not b!6341945) (not b!6341707) (not d!1990294) (not b!6341638) (not b!6342021) (not d!1990264) (not b!6342213) (not bm!540480) (not b!6341757) (not b!6341660) (not bm!540457) (not bm!540549) (not b!6341948) (not bm!540514) (not b!6341900) (not b!6342246) (not bs!1588119) (not bm!540551) (not b!6341727) (not bm!540470) (not b!6341748) (not b!6341761) (not b!6342221) (not bm!540456) (not b!6342215) (not d!1990354) (not b!6341753) (not d!1990404) (not bm!540476) (not d!1990246) (not d!1990384) (not b!6342227) (not d!1990260) (not b!6342041) (not b!6342245) (not b!6342122) (not b!6342295) (not b!6341787) (not b!6342214) (not b!6342303) (not b!6341607) (not b_lambda!241337) (not b!6342251) (not bm!540482) (not b_lambda!241345) (not b!6342290) (not b!6341723) (not bm!540467) (not b!6341938) (not b!6341661) (not b!6342082) (not bm!540458) (not bm!540468) (not b!6342235) (not b!6341774) (not b!6341576) (not b!6342234) (not b!6342239) (not b!6342151) (not b!6342206) (not b!6341755) (not b!6342081) (not b!6341973) (not b!6342231) (not b!6342209) (not bm!540522) (not b!6342287) (not b!6342202) (not b!6341957) (not bm!540455) (not d!1990502) (not b!6341662) (not bm!540436) (not b!6342260) (not bm!540544) (not bm!540513) (not b!6342114) (not d!1990460) (not b!6341792) (not b!6342040) (not bm!540503) (not bm!540487) (not b!6342241) (not b!6341830) (not d!1990328) (not d!1990382) (not b!6342243) (not bm!540481) (not b!6341762) (not d!1990280) (not b!6341901) (not b_lambda!241353) (not b!6341722) (not b!6342276) (not b!6342259) (not b!6341899) (not b!6342166) (not b!6341780) (not b!6342270) (not d!1990480) (not b!6342013) (not b!6342299) (not b!6341615) (not b!6342230) (not b!6341713) (not b_lambda!241349) (not b!6342067) (not bm!540519) (not b!6342117) (not bs!1588116) (not b!6341848) (not b!6342297) (not b!6342197) (not b!6341911) (not b!6341791) (not b!6342223) (not b!6342050) (not b!6342307) (not d!1990386) (not b!6341741) (not bm!540497) (not b!6342219) (not bm!540450) (not b!6342250) (not b!6342275) (not b!6341994) (not b!6341923) (not d!1990422) (not b!6342225) (not bs!1588112) (not bm!540477) (not bm!540465) (not b!6341778) (not b!6341993) (not b!6342198) (not b!6342118) (not d!1990320) (not b!6341616) (not bs!1588117) (not b_lambda!241351) (not setNonEmpty!43163) (not b!6342274) (not bm!540488) (not bm!540466) (not b!6341865) (not b_lambda!241347) (not b!6342278) (not d!1990484) (not b!6342284) (not b!6341711) (not b!6341883) (not d!1990518) (not b!6342119) (not bm!540501) (not b!6341719) (not d!1990442) (not b!6342093) (not d!1990456) (not b!6342090) (not bm!540452) (not d!1990362) (not bm!540460) (not d!1990282) (not b!6342070) (not bm!540490) (not b!6342116) (not b!6342302) (not bs!1588114) (not b!6342288) (not b!6342075) (not b!6342306) (not b!6341869) (not bm!540471) (not b!6341777) (not b!6341699) (not bm!540505) (not bm!540523) (not bm!540473) (not b!6342077) (not d!1990254) (not b!6341944) (not d!1990458) (not b!6342181) (not b!6342291) (not b!6341763) (not b_lambda!241359) (not b!6342283) (not d!1990374) (not b!6341878) (not bm!540499) (not b!6342076) (not b!6342207) (not b!6342003) (not d!1990242) (not b!6342194) (not d!1990268) (not d!1990522) (not bm!540552) (not bm!540494) (not b!6342184) (not b!6341648) (not b!6342217) (not bm!540502) (not b!6341983) (not d!1990462) (not b!6342309) (not b!6341782) (not b!6342238) (not b!6341718) (not b!6341854) (not b!6341605) (not bm!540420) (not bs!1588113) (not bm!540463) (not b!6342205) (not bm!540484) (not b!6342280) (not b!6341698) (not b!6341988) (not b!6341995) (not b!6342268) (not d!1990476) (not d!1990356) (not b!6342120) (not b!6341801) (not bm!540540) (not bm!540437) (not b!6342279) (not d!1990412) (not d!1990446) (not b!6341712) (not b!6341937) (not b!6341985) (not b_lambda!241355) (not b!6342193) (not b!6341989) (not bm!540542) (not b!6342042) (not b!6341694))
(check-sat)
