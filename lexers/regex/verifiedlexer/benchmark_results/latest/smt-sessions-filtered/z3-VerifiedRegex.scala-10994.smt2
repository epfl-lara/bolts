; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570254 () Bool)

(assert start!570254)

(declare-fun b!5435399 () Bool)

(assert (=> b!5435399 true))

(assert (=> b!5435399 true))

(declare-fun lambda!285494 () Int)

(declare-fun lambda!285493 () Int)

(assert (=> b!5435399 (not (= lambda!285494 lambda!285493))))

(assert (=> b!5435399 true))

(assert (=> b!5435399 true))

(declare-fun b!5435384 () Bool)

(assert (=> b!5435384 true))

(declare-fun bs!1254880 () Bool)

(declare-fun b!5435388 () Bool)

(assert (= bs!1254880 (and b!5435388 b!5435399)))

(declare-datatypes ((C!30740 0))(
  ( (C!30741 (val!25072 Int)) )
))
(declare-datatypes ((List!62004 0))(
  ( (Nil!61880) (Cons!61880 (h!68328 C!30740) (t!375229 List!62004)) )
))
(declare-fun s!2326 () List!62004)

(declare-datatypes ((Regex!15235 0))(
  ( (ElementMatch!15235 (c!948567 C!30740)) (Concat!24080 (regOne!30982 Regex!15235) (regTwo!30982 Regex!15235)) (EmptyExpr!15235) (Star!15235 (reg!15564 Regex!15235)) (EmptyLang!15235) (Union!15235 (regOne!30983 Regex!15235) (regTwo!30983 Regex!15235)) )
))
(declare-fun lt!2216204 () Regex!15235)

(declare-fun lambda!285496 () Int)

(declare-fun r!7292 () Regex!15235)

(assert (=> bs!1254880 (= (and (= Nil!61880 s!2326) (= (reg!15564 (regOne!30982 r!7292)) (regOne!30982 r!7292)) (= lt!2216204 (regTwo!30982 r!7292))) (= lambda!285496 lambda!285493))))

(assert (=> bs!1254880 (not (= lambda!285496 lambda!285494))))

(assert (=> b!5435388 true))

(assert (=> b!5435388 true))

(declare-fun lambda!285497 () Int)

(assert (=> bs!1254880 (not (= lambda!285497 lambda!285493))))

(assert (=> bs!1254880 (= (and (= Nil!61880 s!2326) (= (reg!15564 (regOne!30982 r!7292)) (regOne!30982 r!7292)) (= lt!2216204 (regTwo!30982 r!7292))) (= lambda!285497 lambda!285494))))

(assert (=> b!5435388 (not (= lambda!285497 lambda!285496))))

(assert (=> b!5435388 true))

(assert (=> b!5435388 true))

(declare-fun tp!1498952 () Bool)

(declare-fun b!5435377 () Bool)

(declare-fun e!3367616 () Bool)

(declare-datatypes ((List!62005 0))(
  ( (Nil!61881) (Cons!61881 (h!68329 Regex!15235) (t!375230 List!62005)) )
))
(declare-datatypes ((Context!9238 0))(
  ( (Context!9239 (exprs!5119 List!62005)) )
))
(declare-datatypes ((List!62006 0))(
  ( (Nil!61882) (Cons!61882 (h!68330 Context!9238) (t!375231 List!62006)) )
))
(declare-fun zl!343 () List!62006)

(declare-fun e!3367632 () Bool)

(declare-fun inv!81334 (Context!9238) Bool)

(assert (=> b!5435377 (= e!3367616 (and (inv!81334 (h!68330 zl!343)) e!3367632 tp!1498952))))

(declare-fun b!5435378 () Bool)

(declare-fun e!3367618 () Bool)

(declare-fun tp!1498945 () Bool)

(assert (=> b!5435378 (= e!3367618 tp!1498945)))

(declare-fun b!5435379 () Bool)

(declare-fun res!2313378 () Bool)

(declare-fun e!3367612 () Bool)

(assert (=> b!5435379 (=> res!2313378 e!3367612)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2216199 () (InoxSet Context!9238))

(declare-fun lt!2216218 () (InoxSet Context!9238))

(declare-fun matchZipper!1479 ((InoxSet Context!9238) List!62004) Bool)

(assert (=> b!5435379 (= res!2313378 (not (= (matchZipper!1479 lt!2216218 s!2326) (matchZipper!1479 lt!2216199 (t!375229 s!2326)))))))

(declare-fun b!5435380 () Bool)

(declare-fun res!2313389 () Bool)

(declare-fun e!3367615 () Bool)

(assert (=> b!5435380 (=> (not res!2313389) (not e!3367615))))

(declare-fun z!1189 () (InoxSet Context!9238))

(declare-fun toList!9019 ((InoxSet Context!9238)) List!62006)

(assert (=> b!5435380 (= res!2313389 (= (toList!9019 z!1189) zl!343))))

(declare-fun b!5435381 () Bool)

(declare-fun res!2313387 () Bool)

(declare-fun e!3367631 () Bool)

(assert (=> b!5435381 (=> res!2313387 e!3367631)))

(get-info :version)

(assert (=> b!5435381 (= res!2313387 (or ((_ is EmptyExpr!15235) r!7292) ((_ is EmptyLang!15235) r!7292) ((_ is ElementMatch!15235) r!7292) ((_ is Union!15235) r!7292) (not ((_ is Concat!24080) r!7292))))))

(declare-fun b!5435382 () Bool)

(declare-fun e!3367625 () Bool)

(declare-fun e!3367630 () Bool)

(assert (=> b!5435382 (= e!3367625 e!3367630)))

(declare-fun res!2313384 () Bool)

(assert (=> b!5435382 (=> res!2313384 e!3367630)))

(declare-fun lt!2216209 () Context!9238)

(declare-fun lt!2216200 () Regex!15235)

(declare-fun unfocusZipper!977 (List!62006) Regex!15235)

(assert (=> b!5435382 (= res!2313384 (not (= (unfocusZipper!977 (Cons!61882 lt!2216209 Nil!61882)) lt!2216200)))))

(declare-fun lt!2216216 () Regex!15235)

(assert (=> b!5435382 (= lt!2216200 (Concat!24080 (reg!15564 (regOne!30982 r!7292)) lt!2216216))))

(declare-fun b!5435383 () Bool)

(declare-fun tp_is_empty!39723 () Bool)

(assert (=> b!5435383 (= e!3367618 tp_is_empty!39723)))

(declare-fun e!3367614 () Bool)

(declare-fun e!3367611 () Bool)

(assert (=> b!5435384 (= e!3367614 e!3367611)))

(declare-fun res!2313366 () Bool)

(assert (=> b!5435384 (=> res!2313366 e!3367611)))

(assert (=> b!5435384 (= res!2313366 (or (and ((_ is ElementMatch!15235) (regOne!30982 r!7292)) (= (c!948567 (regOne!30982 r!7292)) (h!68328 s!2326))) ((_ is Union!15235) (regOne!30982 r!7292))))))

(declare-datatypes ((Unit!154462 0))(
  ( (Unit!154463) )
))
(declare-fun lt!2216212 () Unit!154462)

(declare-fun e!3367622 () Unit!154462)

(assert (=> b!5435384 (= lt!2216212 e!3367622)))

(declare-fun c!948566 () Bool)

(declare-fun lt!2216214 () Bool)

(assert (=> b!5435384 (= c!948566 lt!2216214)))

(declare-fun nullable!5404 (Regex!15235) Bool)

(assert (=> b!5435384 (= lt!2216214 (nullable!5404 (h!68329 (exprs!5119 (h!68330 zl!343)))))))

(declare-fun lambda!285495 () Int)

(declare-fun flatMap!962 ((InoxSet Context!9238) Int) (InoxSet Context!9238))

(declare-fun derivationStepZipperUp!607 (Context!9238 C!30740) (InoxSet Context!9238))

(assert (=> b!5435384 (= (flatMap!962 z!1189 lambda!285495) (derivationStepZipperUp!607 (h!68330 zl!343) (h!68328 s!2326)))))

(declare-fun lt!2216207 () Unit!154462)

(declare-fun lemmaFlatMapOnSingletonSet!494 ((InoxSet Context!9238) Context!9238 Int) Unit!154462)

(assert (=> b!5435384 (= lt!2216207 (lemmaFlatMapOnSingletonSet!494 z!1189 (h!68330 zl!343) lambda!285495))))

(declare-fun lt!2216211 () (InoxSet Context!9238))

(declare-fun lt!2216238 () Context!9238)

(assert (=> b!5435384 (= lt!2216211 (derivationStepZipperUp!607 lt!2216238 (h!68328 s!2326)))))

(declare-fun lt!2216210 () (InoxSet Context!9238))

(declare-fun derivationStepZipperDown!683 (Regex!15235 Context!9238 C!30740) (InoxSet Context!9238))

(assert (=> b!5435384 (= lt!2216210 (derivationStepZipperDown!683 (h!68329 (exprs!5119 (h!68330 zl!343))) lt!2216238 (h!68328 s!2326)))))

(assert (=> b!5435384 (= lt!2216238 (Context!9239 (t!375230 (exprs!5119 (h!68330 zl!343)))))))

(declare-fun lt!2216228 () (InoxSet Context!9238))

(assert (=> b!5435384 (= lt!2216228 (derivationStepZipperUp!607 (Context!9239 (Cons!61881 (h!68329 (exprs!5119 (h!68330 zl!343))) (t!375230 (exprs!5119 (h!68330 zl!343))))) (h!68328 s!2326)))))

(declare-fun b!5435385 () Bool)

(declare-fun res!2313380 () Bool)

(declare-fun e!3367623 () Bool)

(assert (=> b!5435385 (=> res!2313380 e!3367623)))

(assert (=> b!5435385 (= res!2313380 (not (matchZipper!1479 lt!2216211 (t!375229 s!2326))))))

(declare-fun b!5435386 () Bool)

(declare-fun res!2313373 () Bool)

(declare-fun e!3367626 () Bool)

(assert (=> b!5435386 (=> res!2313373 e!3367626)))

(assert (=> b!5435386 (= res!2313373 (not lt!2216214))))

(declare-fun b!5435387 () Bool)

(declare-fun e!3367628 () Bool)

(assert (=> b!5435387 (= e!3367628 (nullable!5404 (regOne!30982 (regOne!30982 r!7292))))))

(declare-fun res!2313393 () Bool)

(assert (=> start!570254 (=> (not res!2313393) (not e!3367615))))

(declare-fun validRegex!6971 (Regex!15235) Bool)

(assert (=> start!570254 (= res!2313393 (validRegex!6971 r!7292))))

(assert (=> start!570254 e!3367615))

(assert (=> start!570254 e!3367618))

(declare-fun condSetEmpty!35481 () Bool)

(assert (=> start!570254 (= condSetEmpty!35481 (= z!1189 ((as const (Array Context!9238 Bool)) false)))))

(declare-fun setRes!35481 () Bool)

(assert (=> start!570254 setRes!35481))

(assert (=> start!570254 e!3367616))

(declare-fun e!3367627 () Bool)

(assert (=> start!570254 e!3367627))

(declare-fun e!3367629 () Bool)

(assert (=> b!5435388 (= e!3367629 true)))

(declare-fun Exists!2416 (Int) Bool)

(assert (=> b!5435388 (= (Exists!2416 lambda!285496) (Exists!2416 lambda!285497))))

(declare-fun lt!2216206 () Unit!154462)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1070 (Regex!15235 Regex!15235 List!62004) Unit!154462)

(assert (=> b!5435388 (= lt!2216206 (lemmaExistCutMatchRandMatchRSpecEquivalent!1070 (reg!15564 (regOne!30982 r!7292)) lt!2216204 Nil!61880))))

(declare-datatypes ((tuple2!64868 0))(
  ( (tuple2!64869 (_1!35737 List!62004) (_2!35737 List!62004)) )
))
(declare-datatypes ((Option!15346 0))(
  ( (None!15345) (Some!15345 (v!51374 tuple2!64868)) )
))
(declare-fun isDefined!12049 (Option!15346) Bool)

(declare-fun findConcatSeparation!1760 (Regex!15235 Regex!15235 List!62004 List!62004 List!62004) Option!15346)

(assert (=> b!5435388 (= (isDefined!12049 (findConcatSeparation!1760 (reg!15564 (regOne!30982 r!7292)) lt!2216204 Nil!61880 Nil!61880 Nil!61880)) (Exists!2416 lambda!285496))))

(declare-fun lt!2216208 () Unit!154462)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1524 (Regex!15235 Regex!15235 List!62004) Unit!154462)

(assert (=> b!5435388 (= lt!2216208 (lemmaFindConcatSeparationEquivalentToExists!1524 (reg!15564 (regOne!30982 r!7292)) lt!2216204 Nil!61880))))

(declare-fun matchR!7420 (Regex!15235 List!62004) Bool)

(declare-fun matchRSpec!2338 (Regex!15235 List!62004) Bool)

(assert (=> b!5435388 (= (matchR!7420 lt!2216204 Nil!61880) (matchRSpec!2338 lt!2216204 Nil!61880))))

(declare-fun lt!2216215 () Unit!154462)

(declare-fun mainMatchTheorem!2338 (Regex!15235 List!62004) Unit!154462)

(assert (=> b!5435388 (= lt!2216215 (mainMatchTheorem!2338 lt!2216204 Nil!61880))))

(declare-fun setIsEmpty!35481 () Bool)

(assert (=> setIsEmpty!35481 setRes!35481))

(declare-fun b!5435389 () Bool)

(declare-fun res!2313369 () Bool)

(assert (=> b!5435389 (=> res!2313369 e!3367626)))

(assert (=> b!5435389 (= res!2313369 (not (matchZipper!1479 z!1189 s!2326)))))

(declare-fun b!5435390 () Bool)

(declare-fun tp!1498949 () Bool)

(assert (=> b!5435390 (= e!3367627 (and tp_is_empty!39723 tp!1498949))))

(declare-fun b!5435391 () Bool)

(declare-fun e!3367624 () Bool)

(declare-fun tp!1498944 () Bool)

(assert (=> b!5435391 (= e!3367624 tp!1498944)))

(declare-fun b!5435392 () Bool)

(declare-fun res!2313364 () Bool)

(assert (=> b!5435392 (=> res!2313364 e!3367631)))

(declare-fun isEmpty!33880 (List!62006) Bool)

(assert (=> b!5435392 (= res!2313364 (not (isEmpty!33880 (t!375231 zl!343))))))

(declare-fun b!5435393 () Bool)

(declare-fun res!2313367 () Bool)

(assert (=> b!5435393 (=> res!2313367 e!3367612)))

(declare-fun lt!2216198 () Regex!15235)

(assert (=> b!5435393 (= res!2313367 (not (= lt!2216198 r!7292)))))

(declare-fun b!5435394 () Bool)

(declare-fun e!3367621 () Bool)

(declare-fun e!3367620 () Bool)

(assert (=> b!5435394 (= e!3367621 e!3367620)))

(declare-fun res!2313372 () Bool)

(assert (=> b!5435394 (=> res!2313372 e!3367620)))

(declare-fun lt!2216231 () List!62006)

(declare-fun zipperDepth!176 (List!62006) Int)

(assert (=> b!5435394 (= res!2313372 (< (zipperDepth!176 zl!343) (zipperDepth!176 lt!2216231)))))

(assert (=> b!5435394 (= lt!2216231 (Cons!61882 lt!2216238 Nil!61882))))

(declare-fun b!5435395 () Bool)

(declare-fun e!3367634 () Bool)

(assert (=> b!5435395 (= e!3367611 e!3367634)))

(declare-fun res!2313388 () Bool)

(assert (=> b!5435395 (=> res!2313388 e!3367634)))

(declare-fun lt!2216229 () (InoxSet Context!9238))

(assert (=> b!5435395 (= res!2313388 (not (= lt!2216210 lt!2216229)))))

(declare-fun lt!2216225 () Context!9238)

(assert (=> b!5435395 (= lt!2216229 (derivationStepZipperDown!683 (reg!15564 (regOne!30982 r!7292)) lt!2216225 (h!68328 s!2326)))))

(declare-fun lt!2216201 () List!62005)

(assert (=> b!5435395 (= lt!2216225 (Context!9239 lt!2216201))))

(assert (=> b!5435395 (= lt!2216201 (Cons!61881 lt!2216204 (t!375230 (exprs!5119 (h!68330 zl!343)))))))

(assert (=> b!5435395 (= lt!2216204 (Star!15235 (reg!15564 (regOne!30982 r!7292))))))

(declare-fun b!5435396 () Bool)

(declare-fun tp!1498951 () Bool)

(declare-fun tp!1498947 () Bool)

(assert (=> b!5435396 (= e!3367618 (and tp!1498951 tp!1498947))))

(declare-fun b!5435397 () Bool)

(declare-fun res!2313376 () Bool)

(assert (=> b!5435397 (=> res!2313376 e!3367614)))

(declare-fun isEmpty!33881 (List!62005) Bool)

(assert (=> b!5435397 (= res!2313376 (isEmpty!33881 (t!375230 (exprs!5119 (h!68330 zl!343)))))))

(declare-fun b!5435398 () Bool)

(declare-fun e!3367613 () Bool)

(assert (=> b!5435398 (= e!3367615 e!3367613)))

(declare-fun res!2313370 () Bool)

(assert (=> b!5435398 (=> (not res!2313370) (not e!3367613))))

(assert (=> b!5435398 (= res!2313370 (= r!7292 lt!2216198))))

(assert (=> b!5435398 (= lt!2216198 (unfocusZipper!977 zl!343))))

(assert (=> b!5435399 (= e!3367631 e!3367614)))

(declare-fun res!2313391 () Bool)

(assert (=> b!5435399 (=> res!2313391 e!3367614)))

(declare-fun lt!2216203 () Bool)

(declare-fun lt!2216226 () Bool)

(assert (=> b!5435399 (= res!2313391 (or (not (= lt!2216203 lt!2216226)) ((_ is Nil!61880) s!2326)))))

(assert (=> b!5435399 (= (Exists!2416 lambda!285493) (Exists!2416 lambda!285494))))

(declare-fun lt!2216217 () Unit!154462)

(assert (=> b!5435399 (= lt!2216217 (lemmaExistCutMatchRandMatchRSpecEquivalent!1070 (regOne!30982 r!7292) (regTwo!30982 r!7292) s!2326))))

(assert (=> b!5435399 (= lt!2216226 (Exists!2416 lambda!285493))))

(assert (=> b!5435399 (= lt!2216226 (isDefined!12049 (findConcatSeparation!1760 (regOne!30982 r!7292) (regTwo!30982 r!7292) Nil!61880 s!2326 s!2326)))))

(declare-fun lt!2216202 () Unit!154462)

(assert (=> b!5435399 (= lt!2216202 (lemmaFindConcatSeparationEquivalentToExists!1524 (regOne!30982 r!7292) (regTwo!30982 r!7292) s!2326))))

(declare-fun b!5435400 () Bool)

(declare-fun e!3367619 () Bool)

(assert (=> b!5435400 (= e!3367630 e!3367619)))

(declare-fun res!2313377 () Bool)

(assert (=> b!5435400 (=> res!2313377 e!3367619)))

(declare-fun lt!2216219 () Context!9238)

(assert (=> b!5435400 (= res!2313377 (not (= (unfocusZipper!977 (Cons!61882 lt!2216219 Nil!61882)) (reg!15564 (regOne!30982 r!7292)))))))

(declare-fun lt!2216232 () (InoxSet Context!9238))

(assert (=> b!5435400 (= (flatMap!962 lt!2216232 lambda!285495) (derivationStepZipperUp!607 lt!2216225 (h!68328 s!2326)))))

(declare-fun lt!2216234 () Unit!154462)

(assert (=> b!5435400 (= lt!2216234 (lemmaFlatMapOnSingletonSet!494 lt!2216232 lt!2216225 lambda!285495))))

(declare-fun lt!2216236 () (InoxSet Context!9238))

(assert (=> b!5435400 (= (flatMap!962 lt!2216236 lambda!285495) (derivationStepZipperUp!607 lt!2216219 (h!68328 s!2326)))))

(declare-fun lt!2216235 () Unit!154462)

(assert (=> b!5435400 (= lt!2216235 (lemmaFlatMapOnSingletonSet!494 lt!2216236 lt!2216219 lambda!285495))))

(declare-fun lt!2216224 () (InoxSet Context!9238))

(assert (=> b!5435400 (= lt!2216224 (derivationStepZipperUp!607 lt!2216225 (h!68328 s!2326)))))

(declare-fun lt!2216205 () (InoxSet Context!9238))

(assert (=> b!5435400 (= lt!2216205 (derivationStepZipperUp!607 lt!2216219 (h!68328 s!2326)))))

(assert (=> b!5435400 (= lt!2216232 (store ((as const (Array Context!9238 Bool)) false) lt!2216225 true))))

(assert (=> b!5435400 (= lt!2216236 (store ((as const (Array Context!9238 Bool)) false) lt!2216219 true))))

(assert (=> b!5435400 (= lt!2216219 (Context!9239 (Cons!61881 (reg!15564 (regOne!30982 r!7292)) Nil!61881)))))

(declare-fun b!5435401 () Bool)

(assert (=> b!5435401 (= e!3367620 e!3367629)))

(declare-fun res!2313396 () Bool)

(assert (=> b!5435401 (=> res!2313396 e!3367629)))

(assert (=> b!5435401 (= res!2313396 (not (matchR!7420 (regTwo!30982 r!7292) s!2326)))))

(declare-fun lt!2216230 () Regex!15235)

(declare-fun lt!2216222 () (InoxSet Context!9238))

(assert (=> b!5435401 (= (matchR!7420 lt!2216230 s!2326) (matchZipper!1479 lt!2216222 s!2326))))

(declare-fun lt!2216213 () Unit!154462)

(declare-fun theoremZipperRegexEquiv!539 ((InoxSet Context!9238) List!62006 Regex!15235 List!62004) Unit!154462)

(assert (=> b!5435401 (= lt!2216213 (theoremZipperRegexEquiv!539 lt!2216222 lt!2216231 lt!2216230 s!2326))))

(declare-fun b!5435402 () Bool)

(declare-fun res!2313382 () Bool)

(assert (=> b!5435402 (=> res!2313382 e!3367611)))

(assert (=> b!5435402 (= res!2313382 (or ((_ is Concat!24080) (regOne!30982 r!7292)) (not ((_ is Star!15235) (regOne!30982 r!7292)))))))

(declare-fun b!5435403 () Bool)

(declare-fun Unit!154464 () Unit!154462)

(assert (=> b!5435403 (= e!3367622 Unit!154464)))

(declare-fun lt!2216197 () Unit!154462)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!472 ((InoxSet Context!9238) (InoxSet Context!9238) List!62004) Unit!154462)

(assert (=> b!5435403 (= lt!2216197 (lemmaZipperConcatMatchesSameAsBothZippers!472 lt!2216210 lt!2216211 (t!375229 s!2326)))))

(declare-fun res!2313363 () Bool)

(assert (=> b!5435403 (= res!2313363 (matchZipper!1479 lt!2216210 (t!375229 s!2326)))))

(declare-fun e!3367633 () Bool)

(assert (=> b!5435403 (=> res!2313363 e!3367633)))

(assert (=> b!5435403 (= (matchZipper!1479 ((_ map or) lt!2216210 lt!2216211) (t!375229 s!2326)) e!3367633)))

(declare-fun b!5435404 () Bool)

(declare-fun Unit!154465 () Unit!154462)

(assert (=> b!5435404 (= e!3367622 Unit!154465)))

(declare-fun b!5435405 () Bool)

(declare-fun e!3367610 () Bool)

(assert (=> b!5435405 (= e!3367610 (not (matchZipper!1479 lt!2216211 (t!375229 s!2326))))))

(declare-fun b!5435406 () Bool)

(assert (=> b!5435406 (= e!3367612 e!3367625)))

(declare-fun res!2313397 () Bool)

(assert (=> b!5435406 (=> res!2313397 e!3367625)))

(assert (=> b!5435406 (= res!2313397 (not (= r!7292 lt!2216216)))))

(assert (=> b!5435406 (= lt!2216216 (Concat!24080 lt!2216204 (regTwo!30982 r!7292)))))

(declare-fun b!5435407 () Bool)

(declare-fun res!2313385 () Bool)

(assert (=> b!5435407 (=> res!2313385 e!3367623)))

(declare-fun lt!2216237 () Bool)

(assert (=> b!5435407 (= res!2313385 lt!2216237)))

(declare-fun b!5435408 () Bool)

(declare-fun e!3367617 () Bool)

(assert (=> b!5435408 (= e!3367623 e!3367617)))

(declare-fun res!2313371 () Bool)

(assert (=> b!5435408 (=> res!2313371 e!3367617)))

(declare-fun derivationStepZipper!1474 ((InoxSet Context!9238) C!30740) (InoxSet Context!9238))

(assert (=> b!5435408 (= res!2313371 (not (= lt!2216211 (derivationStepZipper!1474 lt!2216222 (h!68328 s!2326)))))))

(assert (=> b!5435408 (= (flatMap!962 lt!2216222 lambda!285495) (derivationStepZipperUp!607 lt!2216238 (h!68328 s!2326)))))

(declare-fun lt!2216223 () Unit!154462)

(assert (=> b!5435408 (= lt!2216223 (lemmaFlatMapOnSingletonSet!494 lt!2216222 lt!2216238 lambda!285495))))

(assert (=> b!5435408 (= lt!2216222 (store ((as const (Array Context!9238 Bool)) false) lt!2216238 true))))

(declare-fun b!5435409 () Bool)

(assert (=> b!5435409 (= e!3367633 (matchZipper!1479 lt!2216211 (t!375229 s!2326)))))

(declare-fun b!5435410 () Bool)

(declare-fun res!2313386 () Bool)

(assert (=> b!5435410 (=> res!2313386 e!3367631)))

(declare-fun generalisedUnion!1164 (List!62005) Regex!15235)

(declare-fun unfocusZipperList!677 (List!62006) List!62005)

(assert (=> b!5435410 (= res!2313386 (not (= r!7292 (generalisedUnion!1164 (unfocusZipperList!677 zl!343)))))))

(declare-fun b!5435411 () Bool)

(assert (=> b!5435411 (= e!3367613 (not e!3367631))))

(declare-fun res!2313383 () Bool)

(assert (=> b!5435411 (=> res!2313383 e!3367631)))

(assert (=> b!5435411 (= res!2313383 (not ((_ is Cons!61882) zl!343)))))

(assert (=> b!5435411 (= lt!2216203 (matchRSpec!2338 r!7292 s!2326))))

(assert (=> b!5435411 (= lt!2216203 (matchR!7420 r!7292 s!2326))))

(declare-fun lt!2216233 () Unit!154462)

(assert (=> b!5435411 (= lt!2216233 (mainMatchTheorem!2338 r!7292 s!2326))))

(declare-fun b!5435412 () Bool)

(declare-fun tp!1498950 () Bool)

(declare-fun tp!1498953 () Bool)

(assert (=> b!5435412 (= e!3367618 (and tp!1498950 tp!1498953))))

(declare-fun b!5435413 () Bool)

(declare-fun res!2313381 () Bool)

(assert (=> b!5435413 (=> res!2313381 e!3367619)))

(assert (=> b!5435413 (= res!2313381 (not (= (unfocusZipper!977 (Cons!61882 lt!2216225 Nil!61882)) lt!2216216)))))

(declare-fun b!5435414 () Bool)

(declare-fun res!2313374 () Bool)

(assert (=> b!5435414 (=> res!2313374 e!3367631)))

(assert (=> b!5435414 (= res!2313374 (not ((_ is Cons!61881) (exprs!5119 (h!68330 zl!343)))))))

(declare-fun b!5435415 () Bool)

(assert (=> b!5435415 (= e!3367634 e!3367612)))

(declare-fun res!2313392 () Bool)

(assert (=> b!5435415 (=> res!2313392 e!3367612)))

(assert (=> b!5435415 (= res!2313392 (not (= lt!2216199 lt!2216229)))))

(assert (=> b!5435415 (= (flatMap!962 lt!2216218 lambda!285495) (derivationStepZipperUp!607 lt!2216209 (h!68328 s!2326)))))

(declare-fun lt!2216221 () Unit!154462)

(assert (=> b!5435415 (= lt!2216221 (lemmaFlatMapOnSingletonSet!494 lt!2216218 lt!2216209 lambda!285495))))

(declare-fun lt!2216227 () (InoxSet Context!9238))

(assert (=> b!5435415 (= lt!2216227 (derivationStepZipperUp!607 lt!2216209 (h!68328 s!2326)))))

(assert (=> b!5435415 (= lt!2216199 (derivationStepZipper!1474 lt!2216218 (h!68328 s!2326)))))

(assert (=> b!5435415 (= lt!2216218 (store ((as const (Array Context!9238 Bool)) false) lt!2216209 true))))

(assert (=> b!5435415 (= lt!2216209 (Context!9239 (Cons!61881 (reg!15564 (regOne!30982 r!7292)) lt!2216201)))))

(declare-fun b!5435416 () Bool)

(assert (=> b!5435416 (= e!3367617 e!3367621)))

(declare-fun res!2313395 () Bool)

(assert (=> b!5435416 (=> res!2313395 e!3367621)))

(declare-fun regexDepth!191 (Regex!15235) Int)

(assert (=> b!5435416 (= res!2313395 (< (regexDepth!191 r!7292) (regexDepth!191 lt!2216230)))))

(declare-fun generalisedConcat!904 (List!62005) Regex!15235)

(assert (=> b!5435416 (= lt!2216230 (generalisedConcat!904 (t!375230 (exprs!5119 (h!68330 zl!343)))))))

(declare-fun setElem!35481 () Context!9238)

(declare-fun setNonEmpty!35481 () Bool)

(declare-fun tp!1498948 () Bool)

(assert (=> setNonEmpty!35481 (= setRes!35481 (and tp!1498948 (inv!81334 setElem!35481) e!3367624))))

(declare-fun setRest!35481 () (InoxSet Context!9238))

(assert (=> setNonEmpty!35481 (= z!1189 ((_ map or) (store ((as const (Array Context!9238 Bool)) false) setElem!35481 true) setRest!35481))))

(declare-fun b!5435417 () Bool)

(declare-fun tp!1498946 () Bool)

(assert (=> b!5435417 (= e!3367632 tp!1498946)))

(declare-fun b!5435418 () Bool)

(declare-fun res!2313390 () Bool)

(assert (=> b!5435418 (=> res!2313390 e!3367611)))

(assert (=> b!5435418 (= res!2313390 e!3367628)))

(declare-fun res!2313365 () Bool)

(assert (=> b!5435418 (=> (not res!2313365) (not e!3367628))))

(assert (=> b!5435418 (= res!2313365 ((_ is Concat!24080) (regOne!30982 r!7292)))))

(declare-fun b!5435419 () Bool)

(assert (=> b!5435419 (= e!3367619 e!3367626)))

(declare-fun res!2313368 () Bool)

(assert (=> b!5435419 (=> res!2313368 e!3367626)))

(assert (=> b!5435419 (= res!2313368 lt!2216203)))

(assert (=> b!5435419 (= (matchR!7420 lt!2216200 s!2326) (matchRSpec!2338 lt!2216200 s!2326))))

(declare-fun lt!2216220 () Unit!154462)

(assert (=> b!5435419 (= lt!2216220 (mainMatchTheorem!2338 lt!2216200 s!2326))))

(declare-fun b!5435420 () Bool)

(assert (=> b!5435420 (= e!3367626 e!3367623)))

(declare-fun res!2313394 () Bool)

(assert (=> b!5435420 (=> res!2313394 e!3367623)))

(assert (=> b!5435420 (= res!2313394 e!3367610)))

(declare-fun res!2313375 () Bool)

(assert (=> b!5435420 (=> (not res!2313375) (not e!3367610))))

(assert (=> b!5435420 (= res!2313375 (not lt!2216237))))

(assert (=> b!5435420 (= lt!2216237 (matchZipper!1479 lt!2216210 (t!375229 s!2326)))))

(declare-fun b!5435421 () Bool)

(declare-fun res!2313379 () Bool)

(assert (=> b!5435421 (=> res!2313379 e!3367631)))

(assert (=> b!5435421 (= res!2313379 (not (= r!7292 (generalisedConcat!904 (exprs!5119 (h!68330 zl!343))))))))

(assert (= (and start!570254 res!2313393) b!5435380))

(assert (= (and b!5435380 res!2313389) b!5435398))

(assert (= (and b!5435398 res!2313370) b!5435411))

(assert (= (and b!5435411 (not res!2313383)) b!5435392))

(assert (= (and b!5435392 (not res!2313364)) b!5435421))

(assert (= (and b!5435421 (not res!2313379)) b!5435414))

(assert (= (and b!5435414 (not res!2313374)) b!5435410))

(assert (= (and b!5435410 (not res!2313386)) b!5435381))

(assert (= (and b!5435381 (not res!2313387)) b!5435399))

(assert (= (and b!5435399 (not res!2313391)) b!5435397))

(assert (= (and b!5435397 (not res!2313376)) b!5435384))

(assert (= (and b!5435384 c!948566) b!5435403))

(assert (= (and b!5435384 (not c!948566)) b!5435404))

(assert (= (and b!5435403 (not res!2313363)) b!5435409))

(assert (= (and b!5435384 (not res!2313366)) b!5435418))

(assert (= (and b!5435418 res!2313365) b!5435387))

(assert (= (and b!5435418 (not res!2313390)) b!5435402))

(assert (= (and b!5435402 (not res!2313382)) b!5435395))

(assert (= (and b!5435395 (not res!2313388)) b!5435415))

(assert (= (and b!5435415 (not res!2313392)) b!5435379))

(assert (= (and b!5435379 (not res!2313378)) b!5435393))

(assert (= (and b!5435393 (not res!2313367)) b!5435406))

(assert (= (and b!5435406 (not res!2313397)) b!5435382))

(assert (= (and b!5435382 (not res!2313384)) b!5435400))

(assert (= (and b!5435400 (not res!2313377)) b!5435413))

(assert (= (and b!5435413 (not res!2313381)) b!5435419))

(assert (= (and b!5435419 (not res!2313368)) b!5435389))

(assert (= (and b!5435389 (not res!2313369)) b!5435386))

(assert (= (and b!5435386 (not res!2313373)) b!5435420))

(assert (= (and b!5435420 res!2313375) b!5435405))

(assert (= (and b!5435420 (not res!2313394)) b!5435407))

(assert (= (and b!5435407 (not res!2313385)) b!5435385))

(assert (= (and b!5435385 (not res!2313380)) b!5435408))

(assert (= (and b!5435408 (not res!2313371)) b!5435416))

(assert (= (and b!5435416 (not res!2313395)) b!5435394))

(assert (= (and b!5435394 (not res!2313372)) b!5435401))

(assert (= (and b!5435401 (not res!2313396)) b!5435388))

(assert (= (and start!570254 ((_ is ElementMatch!15235) r!7292)) b!5435383))

(assert (= (and start!570254 ((_ is Concat!24080) r!7292)) b!5435396))

(assert (= (and start!570254 ((_ is Star!15235) r!7292)) b!5435378))

(assert (= (and start!570254 ((_ is Union!15235) r!7292)) b!5435412))

(assert (= (and start!570254 condSetEmpty!35481) setIsEmpty!35481))

(assert (= (and start!570254 (not condSetEmpty!35481)) setNonEmpty!35481))

(assert (= setNonEmpty!35481 b!5435391))

(assert (= b!5435377 b!5435417))

(assert (= (and start!570254 ((_ is Cons!61882) zl!343)) b!5435377))

(assert (= (and start!570254 ((_ is Cons!61880) s!2326)) b!5435390))

(declare-fun m!6457444 () Bool)

(assert (=> b!5435405 m!6457444))

(declare-fun m!6457446 () Bool)

(assert (=> start!570254 m!6457446))

(declare-fun m!6457448 () Bool)

(assert (=> b!5435421 m!6457448))

(declare-fun m!6457450 () Bool)

(assert (=> b!5435384 m!6457450))

(declare-fun m!6457452 () Bool)

(assert (=> b!5435384 m!6457452))

(declare-fun m!6457454 () Bool)

(assert (=> b!5435384 m!6457454))

(declare-fun m!6457456 () Bool)

(assert (=> b!5435384 m!6457456))

(declare-fun m!6457458 () Bool)

(assert (=> b!5435384 m!6457458))

(declare-fun m!6457460 () Bool)

(assert (=> b!5435384 m!6457460))

(declare-fun m!6457462 () Bool)

(assert (=> b!5435384 m!6457462))

(declare-fun m!6457464 () Bool)

(assert (=> b!5435387 m!6457464))

(declare-fun m!6457466 () Bool)

(assert (=> b!5435388 m!6457466))

(declare-fun m!6457468 () Bool)

(assert (=> b!5435388 m!6457468))

(declare-fun m!6457470 () Bool)

(assert (=> b!5435388 m!6457470))

(declare-fun m!6457472 () Bool)

(assert (=> b!5435388 m!6457472))

(declare-fun m!6457474 () Bool)

(assert (=> b!5435388 m!6457474))

(declare-fun m!6457476 () Bool)

(assert (=> b!5435388 m!6457476))

(declare-fun m!6457478 () Bool)

(assert (=> b!5435388 m!6457478))

(assert (=> b!5435388 m!6457470))

(declare-fun m!6457480 () Bool)

(assert (=> b!5435388 m!6457480))

(assert (=> b!5435388 m!6457480))

(declare-fun m!6457482 () Bool)

(assert (=> b!5435388 m!6457482))

(declare-fun m!6457484 () Bool)

(assert (=> b!5435397 m!6457484))

(declare-fun m!6457486 () Bool)

(assert (=> b!5435398 m!6457486))

(declare-fun m!6457488 () Bool)

(assert (=> b!5435419 m!6457488))

(declare-fun m!6457490 () Bool)

(assert (=> b!5435419 m!6457490))

(declare-fun m!6457492 () Bool)

(assert (=> b!5435419 m!6457492))

(declare-fun m!6457494 () Bool)

(assert (=> b!5435394 m!6457494))

(declare-fun m!6457496 () Bool)

(assert (=> b!5435394 m!6457496))

(declare-fun m!6457498 () Bool)

(assert (=> b!5435410 m!6457498))

(assert (=> b!5435410 m!6457498))

(declare-fun m!6457500 () Bool)

(assert (=> b!5435410 m!6457500))

(declare-fun m!6457502 () Bool)

(assert (=> b!5435382 m!6457502))

(declare-fun m!6457504 () Bool)

(assert (=> b!5435395 m!6457504))

(declare-fun m!6457506 () Bool)

(assert (=> b!5435413 m!6457506))

(declare-fun m!6457508 () Bool)

(assert (=> b!5435420 m!6457508))

(declare-fun m!6457510 () Bool)

(assert (=> b!5435377 m!6457510))

(declare-fun m!6457512 () Bool)

(assert (=> b!5435411 m!6457512))

(declare-fun m!6457514 () Bool)

(assert (=> b!5435411 m!6457514))

(declare-fun m!6457516 () Bool)

(assert (=> b!5435411 m!6457516))

(declare-fun m!6457518 () Bool)

(assert (=> b!5435389 m!6457518))

(declare-fun m!6457520 () Bool)

(assert (=> b!5435400 m!6457520))

(declare-fun m!6457522 () Bool)

(assert (=> b!5435400 m!6457522))

(declare-fun m!6457524 () Bool)

(assert (=> b!5435400 m!6457524))

(declare-fun m!6457526 () Bool)

(assert (=> b!5435400 m!6457526))

(declare-fun m!6457528 () Bool)

(assert (=> b!5435400 m!6457528))

(declare-fun m!6457530 () Bool)

(assert (=> b!5435400 m!6457530))

(declare-fun m!6457532 () Bool)

(assert (=> b!5435400 m!6457532))

(declare-fun m!6457534 () Bool)

(assert (=> b!5435400 m!6457534))

(declare-fun m!6457536 () Bool)

(assert (=> b!5435400 m!6457536))

(declare-fun m!6457538 () Bool)

(assert (=> b!5435392 m!6457538))

(declare-fun m!6457540 () Bool)

(assert (=> b!5435403 m!6457540))

(assert (=> b!5435403 m!6457508))

(declare-fun m!6457542 () Bool)

(assert (=> b!5435403 m!6457542))

(assert (=> b!5435409 m!6457444))

(assert (=> b!5435408 m!6457454))

(declare-fun m!6457544 () Bool)

(assert (=> b!5435408 m!6457544))

(declare-fun m!6457546 () Bool)

(assert (=> b!5435408 m!6457546))

(declare-fun m!6457548 () Bool)

(assert (=> b!5435408 m!6457548))

(declare-fun m!6457550 () Bool)

(assert (=> b!5435408 m!6457550))

(assert (=> b!5435385 m!6457444))

(declare-fun m!6457552 () Bool)

(assert (=> b!5435401 m!6457552))

(declare-fun m!6457554 () Bool)

(assert (=> b!5435401 m!6457554))

(declare-fun m!6457556 () Bool)

(assert (=> b!5435401 m!6457556))

(declare-fun m!6457558 () Bool)

(assert (=> b!5435401 m!6457558))

(declare-fun m!6457560 () Bool)

(assert (=> b!5435380 m!6457560))

(declare-fun m!6457562 () Bool)

(assert (=> setNonEmpty!35481 m!6457562))

(declare-fun m!6457564 () Bool)

(assert (=> b!5435416 m!6457564))

(declare-fun m!6457566 () Bool)

(assert (=> b!5435416 m!6457566))

(declare-fun m!6457568 () Bool)

(assert (=> b!5435416 m!6457568))

(declare-fun m!6457570 () Bool)

(assert (=> b!5435415 m!6457570))

(declare-fun m!6457572 () Bool)

(assert (=> b!5435415 m!6457572))

(declare-fun m!6457574 () Bool)

(assert (=> b!5435415 m!6457574))

(declare-fun m!6457576 () Bool)

(assert (=> b!5435415 m!6457576))

(declare-fun m!6457578 () Bool)

(assert (=> b!5435415 m!6457578))

(declare-fun m!6457580 () Bool)

(assert (=> b!5435379 m!6457580))

(declare-fun m!6457582 () Bool)

(assert (=> b!5435379 m!6457582))

(declare-fun m!6457584 () Bool)

(assert (=> b!5435399 m!6457584))

(declare-fun m!6457586 () Bool)

(assert (=> b!5435399 m!6457586))

(declare-fun m!6457588 () Bool)

(assert (=> b!5435399 m!6457588))

(declare-fun m!6457590 () Bool)

(assert (=> b!5435399 m!6457590))

(declare-fun m!6457592 () Bool)

(assert (=> b!5435399 m!6457592))

(assert (=> b!5435399 m!6457590))

(assert (=> b!5435399 m!6457586))

(declare-fun m!6457594 () Bool)

(assert (=> b!5435399 m!6457594))

(check-sat tp_is_empty!39723 (not b!5435398) (not b!5435408) (not b!5435401) (not b!5435378) (not setNonEmpty!35481) (not b!5435413) (not b!5435395) (not b!5435400) (not b!5435403) (not b!5435412) (not b!5435396) (not b!5435379) (not b!5435415) (not start!570254) (not b!5435388) (not b!5435394) (not b!5435392) (not b!5435411) (not b!5435390) (not b!5435385) (not b!5435377) (not b!5435421) (not b!5435391) (not b!5435420) (not b!5435409) (not b!5435380) (not b!5435389) (not b!5435405) (not b!5435417) (not b!5435382) (not b!5435419) (not b!5435416) (not b!5435410) (not b!5435399) (not b!5435397) (not b!5435384) (not b!5435387))
(check-sat)
