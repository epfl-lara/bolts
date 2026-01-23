; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589352 () Bool)

(assert start!589352)

(declare-fun b!5726471 () Bool)

(assert (=> b!5726471 true))

(assert (=> b!5726471 true))

(declare-fun lambda!309628 () Int)

(declare-fun lambda!309627 () Int)

(assert (=> b!5726471 (not (= lambda!309628 lambda!309627))))

(assert (=> b!5726471 true))

(assert (=> b!5726471 true))

(declare-fun b!5726478 () Bool)

(assert (=> b!5726478 true))

(declare-fun b!5726464 () Bool)

(assert (=> b!5726464 true))

(declare-fun b!5726451 () Bool)

(declare-fun e!3521074 () Bool)

(declare-fun e!3521070 () Bool)

(assert (=> b!5726451 (= e!3521074 e!3521070)))

(declare-fun res!2417571 () Bool)

(assert (=> b!5726451 (=> res!2417571 e!3521070)))

(declare-fun e!3521054 () Bool)

(assert (=> b!5726451 (= res!2417571 e!3521054)))

(declare-fun res!2417578 () Bool)

(assert (=> b!5726451 (=> (not res!2417578) (not e!3521054))))

(declare-fun lt!2279354 () Bool)

(assert (=> b!5726451 (= res!2417578 (not lt!2279354))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31720 0))(
  ( (C!31721 (val!25562 Int)) )
))
(declare-datatypes ((Regex!15725 0))(
  ( (ElementMatch!15725 (c!1010233 C!31720)) (Concat!24570 (regOne!31962 Regex!15725) (regTwo!31962 Regex!15725)) (EmptyExpr!15725) (Star!15725 (reg!16054 Regex!15725)) (EmptyLang!15725) (Union!15725 (regOne!31963 Regex!15725) (regTwo!31963 Regex!15725)) )
))
(declare-datatypes ((List!63474 0))(
  ( (Nil!63350) (Cons!63350 (h!69798 Regex!15725) (t!376802 List!63474)) )
))
(declare-datatypes ((Context!10218 0))(
  ( (Context!10219 (exprs!5609 List!63474)) )
))
(declare-fun lt!2279357 () (InoxSet Context!10218))

(declare-datatypes ((List!63475 0))(
  ( (Nil!63351) (Cons!63351 (h!69799 C!31720) (t!376803 List!63475)) )
))
(declare-fun s!2326 () List!63475)

(declare-fun matchZipper!1863 ((InoxSet Context!10218) List!63475) Bool)

(assert (=> b!5726451 (= lt!2279354 (matchZipper!1863 lt!2279357 (t!376803 s!2326)))))

(declare-fun b!5726452 () Bool)

(declare-fun e!3521058 () Bool)

(declare-fun tp_is_empty!40703 () Bool)

(declare-fun tp!1585574 () Bool)

(assert (=> b!5726452 (= e!3521058 (and tp_is_empty!40703 tp!1585574))))

(declare-fun setIsEmpty!38401 () Bool)

(declare-fun setRes!38401 () Bool)

(assert (=> setIsEmpty!38401 setRes!38401))

(declare-fun e!3521059 () Bool)

(declare-fun tp!1585570 () Bool)

(declare-fun b!5726453 () Bool)

(declare-fun e!3521066 () Bool)

(declare-datatypes ((List!63476 0))(
  ( (Nil!63352) (Cons!63352 (h!69800 Context!10218) (t!376804 List!63476)) )
))
(declare-fun zl!343 () List!63476)

(declare-fun inv!82559 (Context!10218) Bool)

(assert (=> b!5726453 (= e!3521059 (and (inv!82559 (h!69800 zl!343)) e!3521066 tp!1585570))))

(declare-fun b!5726454 () Bool)

(declare-fun res!2417575 () Bool)

(assert (=> b!5726454 (=> res!2417575 e!3521074)))

(declare-fun lt!2279326 () Bool)

(assert (=> b!5726454 (= res!2417575 (not lt!2279326))))

(declare-fun res!2417576 () Bool)

(declare-fun e!3521072 () Bool)

(assert (=> start!589352 (=> (not res!2417576) (not e!3521072))))

(declare-fun r!7292 () Regex!15725)

(declare-fun validRegex!7461 (Regex!15725) Bool)

(assert (=> start!589352 (= res!2417576 (validRegex!7461 r!7292))))

(assert (=> start!589352 e!3521072))

(declare-fun e!3521068 () Bool)

(assert (=> start!589352 e!3521068))

(declare-fun condSetEmpty!38401 () Bool)

(declare-fun z!1189 () (InoxSet Context!10218))

(assert (=> start!589352 (= condSetEmpty!38401 (= z!1189 ((as const (Array Context!10218 Bool)) false)))))

(assert (=> start!589352 setRes!38401))

(assert (=> start!589352 e!3521059))

(assert (=> start!589352 e!3521058))

(declare-fun b!5726455 () Bool)

(declare-fun tp!1585572 () Bool)

(declare-fun tp!1585575 () Bool)

(assert (=> b!5726455 (= e!3521068 (and tp!1585572 tp!1585575))))

(declare-fun b!5726456 () Bool)

(declare-fun e!3521063 () Bool)

(declare-fun e!3521075 () Bool)

(assert (=> b!5726456 (= e!3521063 e!3521075)))

(declare-fun res!2417557 () Bool)

(assert (=> b!5726456 (=> res!2417557 e!3521075)))

(declare-fun lt!2279325 () Regex!15725)

(assert (=> b!5726456 (= res!2417557 (not (= r!7292 lt!2279325)))))

(declare-fun lt!2279336 () Regex!15725)

(assert (=> b!5726456 (= lt!2279325 (Concat!24570 lt!2279336 (regTwo!31962 r!7292)))))

(declare-fun b!5726457 () Bool)

(declare-fun res!2417555 () Bool)

(declare-fun e!3521056 () Bool)

(assert (=> b!5726457 (=> res!2417555 e!3521056)))

(declare-fun isEmpty!35225 (List!63476) Bool)

(assert (=> b!5726457 (= res!2417555 (not (isEmpty!35225 (t!376804 zl!343))))))

(declare-fun b!5726458 () Bool)

(declare-fun e!3521064 () Bool)

(assert (=> b!5726458 (= e!3521072 e!3521064)))

(declare-fun res!2417580 () Bool)

(assert (=> b!5726458 (=> (not res!2417580) (not e!3521064))))

(declare-fun lt!2279348 () Regex!15725)

(assert (=> b!5726458 (= res!2417580 (= r!7292 lt!2279348))))

(declare-fun unfocusZipper!1467 (List!63476) Regex!15725)

(assert (=> b!5726458 (= lt!2279348 (unfocusZipper!1467 zl!343))))

(declare-fun b!5726459 () Bool)

(declare-fun res!2417567 () Bool)

(declare-fun e!3521055 () Bool)

(assert (=> b!5726459 (=> res!2417567 e!3521055)))

(declare-fun e!3521060 () Bool)

(assert (=> b!5726459 (= res!2417567 e!3521060)))

(declare-fun res!2417581 () Bool)

(assert (=> b!5726459 (=> (not res!2417581) (not e!3521060))))

(get-info :version)

(assert (=> b!5726459 (= res!2417581 ((_ is Concat!24570) (regOne!31962 r!7292)))))

(declare-fun b!5726460 () Bool)

(declare-fun res!2417572 () Bool)

(assert (=> b!5726460 (=> res!2417572 e!3521056)))

(assert (=> b!5726460 (= res!2417572 (not ((_ is Cons!63350) (exprs!5609 (h!69800 zl!343)))))))

(declare-fun b!5726461 () Bool)

(declare-fun res!2417556 () Bool)

(assert (=> b!5726461 (=> res!2417556 e!3521056)))

(declare-fun generalisedConcat!1340 (List!63474) Regex!15725)

(assert (=> b!5726461 (= res!2417556 (not (= r!7292 (generalisedConcat!1340 (exprs!5609 (h!69800 zl!343))))))))

(declare-fun b!5726462 () Bool)

(assert (=> b!5726462 (= e!3521064 (not e!3521056))))

(declare-fun res!2417569 () Bool)

(assert (=> b!5726462 (=> res!2417569 e!3521056)))

(assert (=> b!5726462 (= res!2417569 (not ((_ is Cons!63352) zl!343)))))

(declare-fun lt!2279343 () Bool)

(declare-fun matchRSpec!2828 (Regex!15725 List!63475) Bool)

(assert (=> b!5726462 (= lt!2279343 (matchRSpec!2828 r!7292 s!2326))))

(declare-fun matchR!7910 (Regex!15725 List!63475) Bool)

(assert (=> b!5726462 (= lt!2279343 (matchR!7910 r!7292 s!2326))))

(declare-datatypes ((Unit!156432 0))(
  ( (Unit!156433) )
))
(declare-fun lt!2279355 () Unit!156432)

(declare-fun mainMatchTheorem!2828 (Regex!15725 List!63475) Unit!156432)

(assert (=> b!5726462 (= lt!2279355 (mainMatchTheorem!2828 r!7292 s!2326))))

(declare-fun b!5726463 () Bool)

(declare-fun res!2417564 () Bool)

(assert (=> b!5726463 (=> res!2417564 e!3521074)))

(assert (=> b!5726463 (= res!2417564 (not (matchZipper!1863 z!1189 s!2326)))))

(declare-fun e!3521062 () Bool)

(assert (=> b!5726464 (= e!3521070 e!3521062)))

(declare-fun res!2417554 () Bool)

(assert (=> b!5726464 (=> res!2417554 e!3521062)))

(declare-fun lt!2279363 () Context!10218)

(declare-fun lt!2279362 () (InoxSet Context!10218))

(declare-fun lt!2279345 () (InoxSet Context!10218))

(declare-fun appendTo!104 ((InoxSet Context!10218) Context!10218) (InoxSet Context!10218))

(assert (=> b!5726464 (= res!2417554 (not (= (appendTo!104 lt!2279345 lt!2279363) lt!2279362)))))

(declare-fun lambda!309630 () Int)

(declare-fun lt!2279337 () List!63474)

(declare-fun map!14508 ((InoxSet Context!10218) Int) (InoxSet Context!10218))

(declare-fun ++!13922 (List!63474 List!63474) List!63474)

(assert (=> b!5726464 (= (map!14508 lt!2279345 lambda!309630) (store ((as const (Array Context!10218 Bool)) false) (Context!10219 (++!13922 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350) lt!2279337)) true))))

(declare-fun lambda!309631 () Int)

(declare-fun lt!2279328 () Unit!156432)

(declare-fun lemmaConcatPreservesForall!294 (List!63474 List!63474 Int) Unit!156432)

(assert (=> b!5726464 (= lt!2279328 (lemmaConcatPreservesForall!294 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350) lt!2279337 lambda!309631))))

(declare-fun lt!2279350 () Unit!156432)

(declare-fun lt!2279340 () Context!10218)

(declare-fun lemmaMapOnSingletonSet!120 ((InoxSet Context!10218) Context!10218 Int) Unit!156432)

(assert (=> b!5726464 (= lt!2279350 (lemmaMapOnSingletonSet!120 lt!2279345 lt!2279340 lambda!309630))))

(declare-fun b!5726465 () Bool)

(declare-fun e!3521071 () Bool)

(declare-fun e!3521067 () Bool)

(assert (=> b!5726465 (= e!3521071 e!3521067)))

(declare-fun res!2417558 () Bool)

(assert (=> b!5726465 (=> res!2417558 e!3521067)))

(declare-fun lt!2279327 () (InoxSet Context!10218))

(declare-fun lt!2279339 () (InoxSet Context!10218))

(assert (=> b!5726465 (= res!2417558 (not (= lt!2279327 lt!2279339)))))

(declare-fun lambda!309629 () Int)

(declare-fun lt!2279332 () Context!10218)

(declare-fun flatMap!1338 ((InoxSet Context!10218) Int) (InoxSet Context!10218))

(declare-fun derivationStepZipperUp!993 (Context!10218 C!31720) (InoxSet Context!10218))

(assert (=> b!5726465 (= (flatMap!1338 lt!2279362 lambda!309629) (derivationStepZipperUp!993 lt!2279332 (h!69799 s!2326)))))

(declare-fun lt!2279338 () Unit!156432)

(declare-fun lemmaFlatMapOnSingletonSet!870 ((InoxSet Context!10218) Context!10218 Int) Unit!156432)

(assert (=> b!5726465 (= lt!2279338 (lemmaFlatMapOnSingletonSet!870 lt!2279362 lt!2279332 lambda!309629))))

(declare-fun lt!2279346 () (InoxSet Context!10218))

(assert (=> b!5726465 (= lt!2279346 (derivationStepZipperUp!993 lt!2279332 (h!69799 s!2326)))))

(declare-fun derivationStepZipper!1808 ((InoxSet Context!10218) C!31720) (InoxSet Context!10218))

(assert (=> b!5726465 (= lt!2279327 (derivationStepZipper!1808 lt!2279362 (h!69799 s!2326)))))

(assert (=> b!5726465 (= lt!2279362 (store ((as const (Array Context!10218 Bool)) false) lt!2279332 true))))

(assert (=> b!5726465 (= lt!2279332 (Context!10219 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) lt!2279337)))))

(declare-fun setElem!38401 () Context!10218)

(declare-fun setNonEmpty!38401 () Bool)

(declare-fun e!3521069 () Bool)

(declare-fun tp!1585569 () Bool)

(assert (=> setNonEmpty!38401 (= setRes!38401 (and tp!1585569 (inv!82559 setElem!38401) e!3521069))))

(declare-fun setRest!38401 () (InoxSet Context!10218))

(assert (=> setNonEmpty!38401 (= z!1189 ((_ map or) (store ((as const (Array Context!10218 Bool)) false) setElem!38401 true) setRest!38401))))

(declare-fun b!5726466 () Bool)

(declare-fun res!2417570 () Bool)

(assert (=> b!5726466 (=> res!2417570 e!3521063)))

(assert (=> b!5726466 (= res!2417570 (not (= lt!2279348 r!7292)))))

(declare-fun b!5726467 () Bool)

(declare-fun e!3521057 () Unit!156432)

(declare-fun Unit!156434 () Unit!156432)

(assert (=> b!5726467 (= e!3521057 Unit!156434)))

(declare-fun lt!2279360 () Unit!156432)

(declare-fun lt!2279359 () (InoxSet Context!10218))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!750 ((InoxSet Context!10218) (InoxSet Context!10218) List!63475) Unit!156432)

(assert (=> b!5726467 (= lt!2279360 (lemmaZipperConcatMatchesSameAsBothZippers!750 lt!2279357 lt!2279359 (t!376803 s!2326)))))

(declare-fun res!2417565 () Bool)

(assert (=> b!5726467 (= res!2417565 (matchZipper!1863 lt!2279357 (t!376803 s!2326)))))

(declare-fun e!3521073 () Bool)

(assert (=> b!5726467 (=> res!2417565 e!3521073)))

(assert (=> b!5726467 (= (matchZipper!1863 ((_ map or) lt!2279357 lt!2279359) (t!376803 s!2326)) e!3521073)))

(declare-fun b!5726468 () Bool)

(declare-datatypes ((tuple2!65644 0))(
  ( (tuple2!65645 (_1!36125 List!63475) (_2!36125 List!63475)) )
))
(declare-fun lt!2279358 () tuple2!65644)

(declare-fun ++!13923 (List!63475 List!63475) List!63475)

(assert (=> b!5726468 (= e!3521062 (= s!2326 (++!13923 (_1!36125 lt!2279358) (_2!36125 lt!2279358))))))

(declare-datatypes ((Option!15734 0))(
  ( (None!15733) (Some!15733 (v!51788 tuple2!65644)) )
))
(declare-fun lt!2279330 () Option!15734)

(declare-fun get!21843 (Option!15734) tuple2!65644)

(assert (=> b!5726468 (= lt!2279358 (get!21843 lt!2279330))))

(declare-fun isDefined!12437 (Option!15734) Bool)

(assert (=> b!5726468 (isDefined!12437 lt!2279330)))

(declare-fun lt!2279333 () (InoxSet Context!10218))

(declare-fun findConcatSeparationZippers!112 ((InoxSet Context!10218) (InoxSet Context!10218) List!63475 List!63475 List!63475) Option!15734)

(assert (=> b!5726468 (= lt!2279330 (findConcatSeparationZippers!112 lt!2279345 lt!2279333 Nil!63351 s!2326 s!2326))))

(declare-fun lt!2279361 () Unit!156432)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!112 ((InoxSet Context!10218) Context!10218 List!63475) Unit!156432)

(assert (=> b!5726468 (= lt!2279361 (lemmaConcatZipperMatchesStringThenFindConcatDefined!112 lt!2279345 lt!2279363 s!2326))))

(declare-fun b!5726469 () Bool)

(declare-fun nullable!5757 (Regex!15725) Bool)

(assert (=> b!5726469 (= e!3521060 (nullable!5757 (regOne!31962 (regOne!31962 r!7292))))))

(declare-fun b!5726470 () Bool)

(declare-fun e!3521076 () Bool)

(assert (=> b!5726470 (= e!3521076 e!3521074)))

(declare-fun res!2417573 () Bool)

(assert (=> b!5726470 (=> res!2417573 e!3521074)))

(assert (=> b!5726470 (= res!2417573 lt!2279343)))

(declare-fun lt!2279364 () Regex!15725)

(assert (=> b!5726470 (= (matchR!7910 lt!2279364 s!2326) (matchRSpec!2828 lt!2279364 s!2326))))

(declare-fun lt!2279341 () Unit!156432)

(assert (=> b!5726470 (= lt!2279341 (mainMatchTheorem!2828 lt!2279364 s!2326))))

(declare-fun e!3521061 () Bool)

(assert (=> b!5726471 (= e!3521056 e!3521061)))

(declare-fun res!2417577 () Bool)

(assert (=> b!5726471 (=> res!2417577 e!3521061)))

(declare-fun lt!2279352 () Bool)

(assert (=> b!5726471 (= res!2417577 (or (not (= lt!2279343 lt!2279352)) ((_ is Nil!63351) s!2326)))))

(declare-fun Exists!2825 (Int) Bool)

(assert (=> b!5726471 (= (Exists!2825 lambda!309627) (Exists!2825 lambda!309628))))

(declare-fun lt!2279344 () Unit!156432)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1454 (Regex!15725 Regex!15725 List!63475) Unit!156432)

(assert (=> b!5726471 (= lt!2279344 (lemmaExistCutMatchRandMatchRSpecEquivalent!1454 (regOne!31962 r!7292) (regTwo!31962 r!7292) s!2326))))

(assert (=> b!5726471 (= lt!2279352 (Exists!2825 lambda!309627))))

(declare-fun findConcatSeparation!2148 (Regex!15725 Regex!15725 List!63475 List!63475 List!63475) Option!15734)

(assert (=> b!5726471 (= lt!2279352 (isDefined!12437 (findConcatSeparation!2148 (regOne!31962 r!7292) (regTwo!31962 r!7292) Nil!63351 s!2326 s!2326)))))

(declare-fun lt!2279347 () Unit!156432)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1912 (Regex!15725 Regex!15725 List!63475) Unit!156432)

(assert (=> b!5726471 (= lt!2279347 (lemmaFindConcatSeparationEquivalentToExists!1912 (regOne!31962 r!7292) (regTwo!31962 r!7292) s!2326))))

(declare-fun b!5726472 () Bool)

(assert (=> b!5726472 (= e!3521067 e!3521063)))

(declare-fun res!2417551 () Bool)

(assert (=> b!5726472 (=> res!2417551 e!3521063)))

(declare-fun lt!2279356 () Bool)

(assert (=> b!5726472 (= res!2417551 (not (= lt!2279356 (matchZipper!1863 lt!2279327 (t!376803 s!2326)))))))

(assert (=> b!5726472 (= lt!2279356 (matchZipper!1863 lt!2279362 s!2326))))

(declare-fun b!5726473 () Bool)

(declare-fun res!2417579 () Bool)

(assert (=> b!5726473 (=> res!2417579 e!3521070)))

(assert (=> b!5726473 (= res!2417579 (or (not lt!2279354) (not lt!2279356)))))

(declare-fun b!5726474 () Bool)

(declare-fun res!2417568 () Bool)

(assert (=> b!5726474 (=> res!2417568 e!3521076)))

(assert (=> b!5726474 (= res!2417568 (not (= (unfocusZipper!1467 (Cons!63352 lt!2279363 Nil!63352)) lt!2279325)))))

(declare-fun b!5726475 () Bool)

(declare-fun res!2417560 () Bool)

(assert (=> b!5726475 (=> res!2417560 e!3521061)))

(declare-fun isEmpty!35226 (List!63474) Bool)

(assert (=> b!5726475 (= res!2417560 (isEmpty!35226 (t!376802 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun b!5726476 () Bool)

(declare-fun res!2417563 () Bool)

(assert (=> b!5726476 (=> (not res!2417563) (not e!3521072))))

(declare-fun toList!9509 ((InoxSet Context!10218)) List!63476)

(assert (=> b!5726476 (= res!2417563 (= (toList!9509 z!1189) zl!343))))

(declare-fun b!5726477 () Bool)

(declare-fun Unit!156435 () Unit!156432)

(assert (=> b!5726477 (= e!3521057 Unit!156435)))

(assert (=> b!5726478 (= e!3521061 e!3521055)))

(declare-fun res!2417574 () Bool)

(assert (=> b!5726478 (=> res!2417574 e!3521055)))

(assert (=> b!5726478 (= res!2417574 (or (and ((_ is ElementMatch!15725) (regOne!31962 r!7292)) (= (c!1010233 (regOne!31962 r!7292)) (h!69799 s!2326))) ((_ is Union!15725) (regOne!31962 r!7292))))))

(declare-fun lt!2279334 () Unit!156432)

(assert (=> b!5726478 (= lt!2279334 e!3521057)))

(declare-fun c!1010232 () Bool)

(assert (=> b!5726478 (= c!1010232 lt!2279326)))

(assert (=> b!5726478 (= lt!2279326 (nullable!5757 (h!69798 (exprs!5609 (h!69800 zl!343)))))))

(assert (=> b!5726478 (= (flatMap!1338 z!1189 lambda!309629) (derivationStepZipperUp!993 (h!69800 zl!343) (h!69799 s!2326)))))

(declare-fun lt!2279351 () Unit!156432)

(assert (=> b!5726478 (= lt!2279351 (lemmaFlatMapOnSingletonSet!870 z!1189 (h!69800 zl!343) lambda!309629))))

(declare-fun lt!2279349 () Context!10218)

(assert (=> b!5726478 (= lt!2279359 (derivationStepZipperUp!993 lt!2279349 (h!69799 s!2326)))))

(declare-fun derivationStepZipperDown!1067 (Regex!15725 Context!10218 C!31720) (InoxSet Context!10218))

(assert (=> b!5726478 (= lt!2279357 (derivationStepZipperDown!1067 (h!69798 (exprs!5609 (h!69800 zl!343))) lt!2279349 (h!69799 s!2326)))))

(assert (=> b!5726478 (= lt!2279349 (Context!10219 (t!376802 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun lt!2279331 () (InoxSet Context!10218))

(assert (=> b!5726478 (= lt!2279331 (derivationStepZipperUp!993 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343))))) (h!69799 s!2326)))))

(declare-fun b!5726479 () Bool)

(declare-fun tp!1585577 () Bool)

(assert (=> b!5726479 (= e!3521069 tp!1585577)))

(declare-fun b!5726480 () Bool)

(declare-fun tp!1585573 () Bool)

(declare-fun tp!1585571 () Bool)

(assert (=> b!5726480 (= e!3521068 (and tp!1585573 tp!1585571))))

(declare-fun b!5726481 () Bool)

(declare-fun tp!1585578 () Bool)

(assert (=> b!5726481 (= e!3521066 tp!1585578)))

(declare-fun b!5726482 () Bool)

(assert (=> b!5726482 (= e!3521055 e!3521071)))

(declare-fun res!2417553 () Bool)

(assert (=> b!5726482 (=> res!2417553 e!3521071)))

(assert (=> b!5726482 (= res!2417553 (not (= lt!2279357 lt!2279339)))))

(assert (=> b!5726482 (= lt!2279339 (derivationStepZipperDown!1067 (reg!16054 (regOne!31962 r!7292)) lt!2279363 (h!69799 s!2326)))))

(assert (=> b!5726482 (= lt!2279363 (Context!10219 lt!2279337))))

(assert (=> b!5726482 (= lt!2279337 (Cons!63350 lt!2279336 (t!376802 (exprs!5609 (h!69800 zl!343)))))))

(assert (=> b!5726482 (= lt!2279336 (Star!15725 (reg!16054 (regOne!31962 r!7292))))))

(declare-fun b!5726483 () Bool)

(declare-fun e!3521065 () Bool)

(assert (=> b!5726483 (= e!3521065 e!3521076)))

(declare-fun res!2417552 () Bool)

(assert (=> b!5726483 (=> res!2417552 e!3521076)))

(assert (=> b!5726483 (= res!2417552 (not (= (unfocusZipper!1467 (Cons!63352 lt!2279340 Nil!63352)) (reg!16054 (regOne!31962 r!7292)))))))

(assert (=> b!5726483 (= (flatMap!1338 lt!2279333 lambda!309629) (derivationStepZipperUp!993 lt!2279363 (h!69799 s!2326)))))

(declare-fun lt!2279353 () Unit!156432)

(assert (=> b!5726483 (= lt!2279353 (lemmaFlatMapOnSingletonSet!870 lt!2279333 lt!2279363 lambda!309629))))

(assert (=> b!5726483 (= (flatMap!1338 lt!2279345 lambda!309629) (derivationStepZipperUp!993 lt!2279340 (h!69799 s!2326)))))

(declare-fun lt!2279342 () Unit!156432)

(assert (=> b!5726483 (= lt!2279342 (lemmaFlatMapOnSingletonSet!870 lt!2279345 lt!2279340 lambda!309629))))

(declare-fun lt!2279329 () (InoxSet Context!10218))

(assert (=> b!5726483 (= lt!2279329 (derivationStepZipperUp!993 lt!2279363 (h!69799 s!2326)))))

(declare-fun lt!2279335 () (InoxSet Context!10218))

(assert (=> b!5726483 (= lt!2279335 (derivationStepZipperUp!993 lt!2279340 (h!69799 s!2326)))))

(assert (=> b!5726483 (= lt!2279333 (store ((as const (Array Context!10218 Bool)) false) lt!2279363 true))))

(assert (=> b!5726483 (= lt!2279345 (store ((as const (Array Context!10218 Bool)) false) lt!2279340 true))))

(assert (=> b!5726483 (= lt!2279340 (Context!10219 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350)))))

(declare-fun b!5726484 () Bool)

(declare-fun res!2417566 () Bool)

(assert (=> b!5726484 (=> res!2417566 e!3521056)))

(declare-fun generalisedUnion!1588 (List!63474) Regex!15725)

(declare-fun unfocusZipperList!1153 (List!63476) List!63474)

(assert (=> b!5726484 (= res!2417566 (not (= r!7292 (generalisedUnion!1588 (unfocusZipperList!1153 zl!343)))))))

(declare-fun b!5726485 () Bool)

(assert (=> b!5726485 (= e!3521068 tp_is_empty!40703)))

(declare-fun b!5726486 () Bool)

(declare-fun tp!1585576 () Bool)

(assert (=> b!5726486 (= e!3521068 tp!1585576)))

(declare-fun b!5726487 () Bool)

(declare-fun res!2417562 () Bool)

(assert (=> b!5726487 (=> res!2417562 e!3521056)))

(assert (=> b!5726487 (= res!2417562 (or ((_ is EmptyExpr!15725) r!7292) ((_ is EmptyLang!15725) r!7292) ((_ is ElementMatch!15725) r!7292) ((_ is Union!15725) r!7292) (not ((_ is Concat!24570) r!7292))))))

(declare-fun b!5726488 () Bool)

(assert (=> b!5726488 (= e!3521054 (not (matchZipper!1863 lt!2279359 (t!376803 s!2326))))))

(declare-fun b!5726489 () Bool)

(declare-fun res!2417561 () Bool)

(assert (=> b!5726489 (=> res!2417561 e!3521055)))

(assert (=> b!5726489 (= res!2417561 (or ((_ is Concat!24570) (regOne!31962 r!7292)) (not ((_ is Star!15725) (regOne!31962 r!7292)))))))

(declare-fun b!5726490 () Bool)

(assert (=> b!5726490 (= e!3521073 (matchZipper!1863 lt!2279359 (t!376803 s!2326)))))

(declare-fun b!5726491 () Bool)

(assert (=> b!5726491 (= e!3521075 e!3521065)))

(declare-fun res!2417559 () Bool)

(assert (=> b!5726491 (=> res!2417559 e!3521065)))

(assert (=> b!5726491 (= res!2417559 (not (= (unfocusZipper!1467 (Cons!63352 lt!2279332 Nil!63352)) lt!2279364)))))

(assert (=> b!5726491 (= lt!2279364 (Concat!24570 (reg!16054 (regOne!31962 r!7292)) lt!2279325))))

(assert (= (and start!589352 res!2417576) b!5726476))

(assert (= (and b!5726476 res!2417563) b!5726458))

(assert (= (and b!5726458 res!2417580) b!5726462))

(assert (= (and b!5726462 (not res!2417569)) b!5726457))

(assert (= (and b!5726457 (not res!2417555)) b!5726461))

(assert (= (and b!5726461 (not res!2417556)) b!5726460))

(assert (= (and b!5726460 (not res!2417572)) b!5726484))

(assert (= (and b!5726484 (not res!2417566)) b!5726487))

(assert (= (and b!5726487 (not res!2417562)) b!5726471))

(assert (= (and b!5726471 (not res!2417577)) b!5726475))

(assert (= (and b!5726475 (not res!2417560)) b!5726478))

(assert (= (and b!5726478 c!1010232) b!5726467))

(assert (= (and b!5726478 (not c!1010232)) b!5726477))

(assert (= (and b!5726467 (not res!2417565)) b!5726490))

(assert (= (and b!5726478 (not res!2417574)) b!5726459))

(assert (= (and b!5726459 res!2417581) b!5726469))

(assert (= (and b!5726459 (not res!2417567)) b!5726489))

(assert (= (and b!5726489 (not res!2417561)) b!5726482))

(assert (= (and b!5726482 (not res!2417553)) b!5726465))

(assert (= (and b!5726465 (not res!2417558)) b!5726472))

(assert (= (and b!5726472 (not res!2417551)) b!5726466))

(assert (= (and b!5726466 (not res!2417570)) b!5726456))

(assert (= (and b!5726456 (not res!2417557)) b!5726491))

(assert (= (and b!5726491 (not res!2417559)) b!5726483))

(assert (= (and b!5726483 (not res!2417552)) b!5726474))

(assert (= (and b!5726474 (not res!2417568)) b!5726470))

(assert (= (and b!5726470 (not res!2417573)) b!5726463))

(assert (= (and b!5726463 (not res!2417564)) b!5726454))

(assert (= (and b!5726454 (not res!2417575)) b!5726451))

(assert (= (and b!5726451 res!2417578) b!5726488))

(assert (= (and b!5726451 (not res!2417571)) b!5726473))

(assert (= (and b!5726473 (not res!2417579)) b!5726464))

(assert (= (and b!5726464 (not res!2417554)) b!5726468))

(assert (= (and start!589352 ((_ is ElementMatch!15725) r!7292)) b!5726485))

(assert (= (and start!589352 ((_ is Concat!24570) r!7292)) b!5726455))

(assert (= (and start!589352 ((_ is Star!15725) r!7292)) b!5726486))

(assert (= (and start!589352 ((_ is Union!15725) r!7292)) b!5726480))

(assert (= (and start!589352 condSetEmpty!38401) setIsEmpty!38401))

(assert (= (and start!589352 (not condSetEmpty!38401)) setNonEmpty!38401))

(assert (= setNonEmpty!38401 b!5726479))

(assert (= b!5726453 b!5726481))

(assert (= (and start!589352 ((_ is Cons!63352) zl!343)) b!5726453))

(assert (= (and start!589352 ((_ is Cons!63351) s!2326)) b!5726452))

(declare-fun m!6678980 () Bool)

(assert (=> b!5726490 m!6678980))

(declare-fun m!6678982 () Bool)

(assert (=> b!5726476 m!6678982))

(declare-fun m!6678984 () Bool)

(assert (=> b!5726463 m!6678984))

(declare-fun m!6678986 () Bool)

(assert (=> b!5726472 m!6678986))

(declare-fun m!6678988 () Bool)

(assert (=> b!5726472 m!6678988))

(declare-fun m!6678990 () Bool)

(assert (=> b!5726464 m!6678990))

(declare-fun m!6678992 () Bool)

(assert (=> b!5726464 m!6678992))

(declare-fun m!6678994 () Bool)

(assert (=> b!5726464 m!6678994))

(declare-fun m!6678996 () Bool)

(assert (=> b!5726464 m!6678996))

(declare-fun m!6678998 () Bool)

(assert (=> b!5726464 m!6678998))

(declare-fun m!6679000 () Bool)

(assert (=> b!5726464 m!6679000))

(declare-fun m!6679002 () Bool)

(assert (=> b!5726462 m!6679002))

(declare-fun m!6679004 () Bool)

(assert (=> b!5726462 m!6679004))

(declare-fun m!6679006 () Bool)

(assert (=> b!5726462 m!6679006))

(declare-fun m!6679008 () Bool)

(assert (=> b!5726461 m!6679008))

(declare-fun m!6679010 () Bool)

(assert (=> b!5726458 m!6679010))

(declare-fun m!6679012 () Bool)

(assert (=> b!5726467 m!6679012))

(declare-fun m!6679014 () Bool)

(assert (=> b!5726467 m!6679014))

(declare-fun m!6679016 () Bool)

(assert (=> b!5726467 m!6679016))

(assert (=> b!5726451 m!6679014))

(declare-fun m!6679018 () Bool)

(assert (=> b!5726474 m!6679018))

(declare-fun m!6679020 () Bool)

(assert (=> b!5726478 m!6679020))

(declare-fun m!6679022 () Bool)

(assert (=> b!5726478 m!6679022))

(declare-fun m!6679024 () Bool)

(assert (=> b!5726478 m!6679024))

(declare-fun m!6679026 () Bool)

(assert (=> b!5726478 m!6679026))

(declare-fun m!6679028 () Bool)

(assert (=> b!5726478 m!6679028))

(declare-fun m!6679030 () Bool)

(assert (=> b!5726478 m!6679030))

(declare-fun m!6679032 () Bool)

(assert (=> b!5726478 m!6679032))

(declare-fun m!6679034 () Bool)

(assert (=> b!5726482 m!6679034))

(declare-fun m!6679036 () Bool)

(assert (=> b!5726484 m!6679036))

(assert (=> b!5726484 m!6679036))

(declare-fun m!6679038 () Bool)

(assert (=> b!5726484 m!6679038))

(declare-fun m!6679040 () Bool)

(assert (=> b!5726453 m!6679040))

(declare-fun m!6679042 () Bool)

(assert (=> b!5726483 m!6679042))

(declare-fun m!6679044 () Bool)

(assert (=> b!5726483 m!6679044))

(declare-fun m!6679046 () Bool)

(assert (=> b!5726483 m!6679046))

(declare-fun m!6679048 () Bool)

(assert (=> b!5726483 m!6679048))

(declare-fun m!6679050 () Bool)

(assert (=> b!5726483 m!6679050))

(declare-fun m!6679052 () Bool)

(assert (=> b!5726483 m!6679052))

(declare-fun m!6679054 () Bool)

(assert (=> b!5726483 m!6679054))

(declare-fun m!6679056 () Bool)

(assert (=> b!5726483 m!6679056))

(declare-fun m!6679058 () Bool)

(assert (=> b!5726483 m!6679058))

(declare-fun m!6679060 () Bool)

(assert (=> b!5726457 m!6679060))

(assert (=> b!5726488 m!6678980))

(declare-fun m!6679062 () Bool)

(assert (=> setNonEmpty!38401 m!6679062))

(declare-fun m!6679064 () Bool)

(assert (=> b!5726469 m!6679064))

(declare-fun m!6679066 () Bool)

(assert (=> b!5726468 m!6679066))

(declare-fun m!6679068 () Bool)

(assert (=> b!5726468 m!6679068))

(declare-fun m!6679070 () Bool)

(assert (=> b!5726468 m!6679070))

(declare-fun m!6679072 () Bool)

(assert (=> b!5726468 m!6679072))

(declare-fun m!6679074 () Bool)

(assert (=> b!5726468 m!6679074))

(declare-fun m!6679076 () Bool)

(assert (=> b!5726491 m!6679076))

(declare-fun m!6679078 () Bool)

(assert (=> start!589352 m!6679078))

(declare-fun m!6679080 () Bool)

(assert (=> b!5726470 m!6679080))

(declare-fun m!6679082 () Bool)

(assert (=> b!5726470 m!6679082))

(declare-fun m!6679084 () Bool)

(assert (=> b!5726470 m!6679084))

(declare-fun m!6679086 () Bool)

(assert (=> b!5726471 m!6679086))

(declare-fun m!6679088 () Bool)

(assert (=> b!5726471 m!6679088))

(declare-fun m!6679090 () Bool)

(assert (=> b!5726471 m!6679090))

(declare-fun m!6679092 () Bool)

(assert (=> b!5726471 m!6679092))

(assert (=> b!5726471 m!6679086))

(declare-fun m!6679094 () Bool)

(assert (=> b!5726471 m!6679094))

(assert (=> b!5726471 m!6679088))

(declare-fun m!6679096 () Bool)

(assert (=> b!5726471 m!6679096))

(declare-fun m!6679098 () Bool)

(assert (=> b!5726475 m!6679098))

(declare-fun m!6679100 () Bool)

(assert (=> b!5726465 m!6679100))

(declare-fun m!6679102 () Bool)

(assert (=> b!5726465 m!6679102))

(declare-fun m!6679104 () Bool)

(assert (=> b!5726465 m!6679104))

(declare-fun m!6679106 () Bool)

(assert (=> b!5726465 m!6679106))

(declare-fun m!6679108 () Bool)

(assert (=> b!5726465 m!6679108))

(check-sat (not b!5726452) (not setNonEmpty!38401) (not b!5726481) tp_is_empty!40703 (not b!5726482) (not b!5726483) (not b!5726486) (not b!5726455) (not b!5726479) (not b!5726470) (not b!5726471) (not b!5726478) (not b!5726457) (not start!589352) (not b!5726475) (not b!5726491) (not b!5726462) (not b!5726458) (not b!5726468) (not b!5726480) (not b!5726469) (not b!5726467) (not b!5726484) (not b!5726490) (not b!5726472) (not b!5726474) (not b!5726453) (not b!5726476) (not b!5726488) (not b!5726465) (not b!5726464) (not b!5726451) (not b!5726463) (not b!5726461))
(check-sat)
(get-model)

(declare-fun b!5726591 () Bool)

(declare-fun e!3521132 () Bool)

(assert (=> b!5726591 (= e!3521132 (nullable!5757 (regOne!31962 (reg!16054 (regOne!31962 r!7292)))))))

(declare-fun bm!437808 () Bool)

(declare-fun call!437813 () List!63474)

(declare-fun call!437818 () List!63474)

(assert (=> bm!437808 (= call!437813 call!437818)))

(declare-fun b!5726593 () Bool)

(declare-fun e!3521133 () (InoxSet Context!10218))

(assert (=> b!5726593 (= e!3521133 (store ((as const (Array Context!10218 Bool)) false) lt!2279363 true))))

(declare-fun bm!437809 () Bool)

(declare-fun call!437817 () (InoxSet Context!10218))

(declare-fun c!1010268 () Bool)

(assert (=> bm!437809 (= call!437817 (derivationStepZipperDown!1067 (ite c!1010268 (regTwo!31963 (reg!16054 (regOne!31962 r!7292))) (regOne!31962 (reg!16054 (regOne!31962 r!7292)))) (ite c!1010268 lt!2279363 (Context!10219 call!437818)) (h!69799 s!2326)))))

(declare-fun b!5726594 () Bool)

(declare-fun e!3521130 () (InoxSet Context!10218))

(declare-fun call!437816 () (InoxSet Context!10218))

(assert (=> b!5726594 (= e!3521130 call!437816)))

(declare-fun b!5726595 () Bool)

(declare-fun e!3521131 () (InoxSet Context!10218))

(declare-fun e!3521129 () (InoxSet Context!10218))

(assert (=> b!5726595 (= e!3521131 e!3521129)))

(declare-fun c!1010265 () Bool)

(assert (=> b!5726595 (= c!1010265 ((_ is Concat!24570) (reg!16054 (regOne!31962 r!7292))))))

(declare-fun b!5726596 () Bool)

(declare-fun e!3521128 () (InoxSet Context!10218))

(assert (=> b!5726596 (= e!3521133 e!3521128)))

(assert (=> b!5726596 (= c!1010268 ((_ is Union!15725) (reg!16054 (regOne!31962 r!7292))))))

(declare-fun bm!437810 () Bool)

(declare-fun call!437815 () (InoxSet Context!10218))

(declare-fun c!1010266 () Bool)

(assert (=> bm!437810 (= call!437815 (derivationStepZipperDown!1067 (ite c!1010268 (regOne!31963 (reg!16054 (regOne!31962 r!7292))) (ite c!1010266 (regTwo!31962 (reg!16054 (regOne!31962 r!7292))) (ite c!1010265 (regOne!31962 (reg!16054 (regOne!31962 r!7292))) (reg!16054 (reg!16054 (regOne!31962 r!7292)))))) (ite (or c!1010268 c!1010266) lt!2279363 (Context!10219 call!437813)) (h!69799 s!2326)))))

(declare-fun b!5726597 () Bool)

(assert (=> b!5726597 (= e!3521130 ((as const (Array Context!10218 Bool)) false))))

(declare-fun b!5726598 () Bool)

(declare-fun call!437814 () (InoxSet Context!10218))

(assert (=> b!5726598 (= e!3521131 ((_ map or) call!437817 call!437814))))

(declare-fun bm!437811 () Bool)

(assert (=> bm!437811 (= call!437816 call!437814)))

(declare-fun bm!437812 () Bool)

(declare-fun $colon$colon!1738 (List!63474 Regex!15725) List!63474)

(assert (=> bm!437812 (= call!437818 ($colon$colon!1738 (exprs!5609 lt!2279363) (ite (or c!1010266 c!1010265) (regTwo!31962 (reg!16054 (regOne!31962 r!7292))) (reg!16054 (regOne!31962 r!7292)))))))

(declare-fun d!1806404 () Bool)

(declare-fun c!1010267 () Bool)

(assert (=> d!1806404 (= c!1010267 (and ((_ is ElementMatch!15725) (reg!16054 (regOne!31962 r!7292))) (= (c!1010233 (reg!16054 (regOne!31962 r!7292))) (h!69799 s!2326))))))

(assert (=> d!1806404 (= (derivationStepZipperDown!1067 (reg!16054 (regOne!31962 r!7292)) lt!2279363 (h!69799 s!2326)) e!3521133)))

(declare-fun b!5726592 () Bool)

(declare-fun c!1010269 () Bool)

(assert (=> b!5726592 (= c!1010269 ((_ is Star!15725) (reg!16054 (regOne!31962 r!7292))))))

(assert (=> b!5726592 (= e!3521129 e!3521130)))

(declare-fun b!5726599 () Bool)

(assert (=> b!5726599 (= e!3521128 ((_ map or) call!437815 call!437817))))

(declare-fun b!5726600 () Bool)

(assert (=> b!5726600 (= e!3521129 call!437816)))

(declare-fun bm!437813 () Bool)

(assert (=> bm!437813 (= call!437814 call!437815)))

(declare-fun b!5726601 () Bool)

(assert (=> b!5726601 (= c!1010266 e!3521132)))

(declare-fun res!2417613 () Bool)

(assert (=> b!5726601 (=> (not res!2417613) (not e!3521132))))

(assert (=> b!5726601 (= res!2417613 ((_ is Concat!24570) (reg!16054 (regOne!31962 r!7292))))))

(assert (=> b!5726601 (= e!3521128 e!3521131)))

(assert (= (and d!1806404 c!1010267) b!5726593))

(assert (= (and d!1806404 (not c!1010267)) b!5726596))

(assert (= (and b!5726596 c!1010268) b!5726599))

(assert (= (and b!5726596 (not c!1010268)) b!5726601))

(assert (= (and b!5726601 res!2417613) b!5726591))

(assert (= (and b!5726601 c!1010266) b!5726598))

(assert (= (and b!5726601 (not c!1010266)) b!5726595))

(assert (= (and b!5726595 c!1010265) b!5726600))

(assert (= (and b!5726595 (not c!1010265)) b!5726592))

(assert (= (and b!5726592 c!1010269) b!5726594))

(assert (= (and b!5726592 (not c!1010269)) b!5726597))

(assert (= (or b!5726600 b!5726594) bm!437808))

(assert (= (or b!5726600 b!5726594) bm!437811))

(assert (= (or b!5726598 bm!437808) bm!437812))

(assert (= (or b!5726598 bm!437811) bm!437813))

(assert (= (or b!5726599 b!5726598) bm!437809))

(assert (= (or b!5726599 bm!437813) bm!437810))

(declare-fun m!6679178 () Bool)

(assert (=> bm!437810 m!6679178))

(declare-fun m!6679180 () Bool)

(assert (=> b!5726591 m!6679180))

(assert (=> b!5726593 m!6679052))

(declare-fun m!6679182 () Bool)

(assert (=> bm!437809 m!6679182))

(declare-fun m!6679184 () Bool)

(assert (=> bm!437812 m!6679184))

(assert (=> b!5726482 d!1806404))

(declare-fun b!5726647 () Bool)

(declare-fun res!2417629 () Bool)

(declare-fun e!3521164 () Bool)

(assert (=> b!5726647 (=> (not res!2417629) (not e!3521164))))

(declare-fun call!437827 () Bool)

(assert (=> b!5726647 (= res!2417629 call!437827)))

(declare-fun e!3521167 () Bool)

(assert (=> b!5726647 (= e!3521167 e!3521164)))

(declare-fun b!5726648 () Bool)

(declare-fun e!3521169 () Bool)

(assert (=> b!5726648 (= e!3521169 e!3521167)))

(declare-fun c!1010286 () Bool)

(assert (=> b!5726648 (= c!1010286 ((_ is Union!15725) r!7292))))

(declare-fun b!5726649 () Bool)

(declare-fun call!437825 () Bool)

(assert (=> b!5726649 (= e!3521164 call!437825)))

(declare-fun b!5726650 () Bool)

(declare-fun e!3521170 () Bool)

(assert (=> b!5726650 (= e!3521170 call!437825)))

(declare-fun d!1806418 () Bool)

(declare-fun res!2417630 () Bool)

(declare-fun e!3521166 () Bool)

(assert (=> d!1806418 (=> res!2417630 e!3521166)))

(assert (=> d!1806418 (= res!2417630 ((_ is ElementMatch!15725) r!7292))))

(assert (=> d!1806418 (= (validRegex!7461 r!7292) e!3521166)))

(declare-fun b!5726651 () Bool)

(assert (=> b!5726651 (= e!3521166 e!3521169)))

(declare-fun c!1010285 () Bool)

(assert (=> b!5726651 (= c!1010285 ((_ is Star!15725) r!7292))))

(declare-fun bm!437820 () Bool)

(declare-fun call!437826 () Bool)

(assert (=> bm!437820 (= call!437825 call!437826)))

(declare-fun bm!437821 () Bool)

(assert (=> bm!437821 (= call!437826 (validRegex!7461 (ite c!1010285 (reg!16054 r!7292) (ite c!1010286 (regTwo!31963 r!7292) (regTwo!31962 r!7292)))))))

(declare-fun b!5726652 () Bool)

(declare-fun res!2417633 () Bool)

(declare-fun e!3521165 () Bool)

(assert (=> b!5726652 (=> res!2417633 e!3521165)))

(assert (=> b!5726652 (= res!2417633 (not ((_ is Concat!24570) r!7292)))))

(assert (=> b!5726652 (= e!3521167 e!3521165)))

(declare-fun bm!437822 () Bool)

(assert (=> bm!437822 (= call!437827 (validRegex!7461 (ite c!1010286 (regOne!31963 r!7292) (regOne!31962 r!7292))))))

(declare-fun b!5726653 () Bool)

(declare-fun e!3521168 () Bool)

(assert (=> b!5726653 (= e!3521168 call!437826)))

(declare-fun b!5726654 () Bool)

(assert (=> b!5726654 (= e!3521169 e!3521168)))

(declare-fun res!2417632 () Bool)

(assert (=> b!5726654 (= res!2417632 (not (nullable!5757 (reg!16054 r!7292))))))

(assert (=> b!5726654 (=> (not res!2417632) (not e!3521168))))

(declare-fun b!5726655 () Bool)

(assert (=> b!5726655 (= e!3521165 e!3521170)))

(declare-fun res!2417631 () Bool)

(assert (=> b!5726655 (=> (not res!2417631) (not e!3521170))))

(assert (=> b!5726655 (= res!2417631 call!437827)))

(assert (= (and d!1806418 (not res!2417630)) b!5726651))

(assert (= (and b!5726651 c!1010285) b!5726654))

(assert (= (and b!5726651 (not c!1010285)) b!5726648))

(assert (= (and b!5726654 res!2417632) b!5726653))

(assert (= (and b!5726648 c!1010286) b!5726647))

(assert (= (and b!5726648 (not c!1010286)) b!5726652))

(assert (= (and b!5726647 res!2417629) b!5726649))

(assert (= (and b!5726652 (not res!2417633)) b!5726655))

(assert (= (and b!5726655 res!2417631) b!5726650))

(assert (= (or b!5726649 b!5726650) bm!437820))

(assert (= (or b!5726647 b!5726655) bm!437822))

(assert (= (or b!5726653 bm!437820) bm!437821))

(declare-fun m!6679210 () Bool)

(assert (=> bm!437821 m!6679210))

(declare-fun m!6679212 () Bool)

(assert (=> bm!437822 m!6679212))

(declare-fun m!6679214 () Bool)

(assert (=> b!5726654 m!6679214))

(assert (=> start!589352 d!1806418))

(declare-fun bs!1339102 () Bool)

(declare-fun b!5726810 () Bool)

(assert (= bs!1339102 (and b!5726810 b!5726471)))

(declare-fun lambda!309645 () Int)

(assert (=> bs!1339102 (not (= lambda!309645 lambda!309627))))

(assert (=> bs!1339102 (not (= lambda!309645 lambda!309628))))

(assert (=> b!5726810 true))

(assert (=> b!5726810 true))

(declare-fun bs!1339105 () Bool)

(declare-fun b!5726807 () Bool)

(assert (= bs!1339105 (and b!5726807 b!5726471)))

(declare-fun lambda!309649 () Int)

(assert (=> bs!1339105 (not (= lambda!309649 lambda!309627))))

(assert (=> bs!1339105 (= lambda!309649 lambda!309628)))

(declare-fun bs!1339106 () Bool)

(assert (= bs!1339106 (and b!5726807 b!5726810)))

(assert (=> bs!1339106 (not (= lambda!309649 lambda!309645))))

(assert (=> b!5726807 true))

(assert (=> b!5726807 true))

(declare-fun b!5726800 () Bool)

(declare-fun e!3521259 () Bool)

(declare-fun e!3521262 () Bool)

(assert (=> b!5726800 (= e!3521259 e!3521262)))

(declare-fun c!1010337 () Bool)

(assert (=> b!5726800 (= c!1010337 ((_ is Star!15725) r!7292))))

(declare-fun call!437866 () Bool)

(declare-fun bm!437860 () Bool)

(assert (=> bm!437860 (= call!437866 (Exists!2825 (ite c!1010337 lambda!309645 lambda!309649)))))

(declare-fun b!5726801 () Bool)

(declare-fun c!1010338 () Bool)

(assert (=> b!5726801 (= c!1010338 ((_ is Union!15725) r!7292))))

(declare-fun e!3521260 () Bool)

(assert (=> b!5726801 (= e!3521260 e!3521259)))

(declare-fun bm!437861 () Bool)

(declare-fun call!437865 () Bool)

(declare-fun isEmpty!35229 (List!63475) Bool)

(assert (=> bm!437861 (= call!437865 (isEmpty!35229 s!2326))))

(declare-fun b!5726802 () Bool)

(declare-fun e!3521261 () Bool)

(assert (=> b!5726802 (= e!3521261 call!437865)))

(declare-fun b!5726803 () Bool)

(assert (=> b!5726803 (= e!3521260 (= s!2326 (Cons!63351 (c!1010233 r!7292) Nil!63351)))))

(declare-fun b!5726805 () Bool)

(declare-fun res!2417680 () Bool)

(declare-fun e!3521265 () Bool)

(assert (=> b!5726805 (=> res!2417680 e!3521265)))

(assert (=> b!5726805 (= res!2417680 call!437865)))

(assert (=> b!5726805 (= e!3521262 e!3521265)))

(declare-fun b!5726806 () Bool)

(declare-fun c!1010340 () Bool)

(assert (=> b!5726806 (= c!1010340 ((_ is ElementMatch!15725) r!7292))))

(declare-fun e!3521263 () Bool)

(assert (=> b!5726806 (= e!3521263 e!3521260)))

(assert (=> b!5726807 (= e!3521262 call!437866)))

(declare-fun b!5726808 () Bool)

(assert (=> b!5726808 (= e!3521261 e!3521263)))

(declare-fun res!2417678 () Bool)

(assert (=> b!5726808 (= res!2417678 (not ((_ is EmptyLang!15725) r!7292)))))

(assert (=> b!5726808 (=> (not res!2417678) (not e!3521263))))

(declare-fun b!5726809 () Bool)

(declare-fun e!3521264 () Bool)

(assert (=> b!5726809 (= e!3521264 (matchRSpec!2828 (regTwo!31963 r!7292) s!2326))))

(assert (=> b!5726810 (= e!3521265 call!437866)))

(declare-fun d!1806428 () Bool)

(declare-fun c!1010339 () Bool)

(assert (=> d!1806428 (= c!1010339 ((_ is EmptyExpr!15725) r!7292))))

(assert (=> d!1806428 (= (matchRSpec!2828 r!7292 s!2326) e!3521261)))

(declare-fun b!5726804 () Bool)

(assert (=> b!5726804 (= e!3521259 e!3521264)))

(declare-fun res!2417679 () Bool)

(assert (=> b!5726804 (= res!2417679 (matchRSpec!2828 (regOne!31963 r!7292) s!2326))))

(assert (=> b!5726804 (=> res!2417679 e!3521264)))

(assert (= (and d!1806428 c!1010339) b!5726802))

(assert (= (and d!1806428 (not c!1010339)) b!5726808))

(assert (= (and b!5726808 res!2417678) b!5726806))

(assert (= (and b!5726806 c!1010340) b!5726803))

(assert (= (and b!5726806 (not c!1010340)) b!5726801))

(assert (= (and b!5726801 c!1010338) b!5726804))

(assert (= (and b!5726801 (not c!1010338)) b!5726800))

(assert (= (and b!5726804 (not res!2417679)) b!5726809))

(assert (= (and b!5726800 c!1010337) b!5726805))

(assert (= (and b!5726800 (not c!1010337)) b!5726807))

(assert (= (and b!5726805 (not res!2417680)) b!5726810))

(assert (= (or b!5726810 b!5726807) bm!437860))

(assert (= (or b!5726802 b!5726805) bm!437861))

(declare-fun m!6679302 () Bool)

(assert (=> bm!437860 m!6679302))

(declare-fun m!6679304 () Bool)

(assert (=> bm!437861 m!6679304))

(declare-fun m!6679306 () Bool)

(assert (=> b!5726809 m!6679306))

(declare-fun m!6679308 () Bool)

(assert (=> b!5726804 m!6679308))

(assert (=> b!5726462 d!1806428))

(declare-fun b!5726865 () Bool)

(declare-fun res!2417705 () Bool)

(declare-fun e!3521297 () Bool)

(assert (=> b!5726865 (=> (not res!2417705) (not e!3521297))))

(declare-fun call!437871 () Bool)

(assert (=> b!5726865 (= res!2417705 (not call!437871))))

(declare-fun b!5726866 () Bool)

(declare-fun head!12122 (List!63475) C!31720)

(assert (=> b!5726866 (= e!3521297 (= (head!12122 s!2326) (c!1010233 r!7292)))))

(declare-fun b!5726867 () Bool)

(declare-fun e!3521298 () Bool)

(declare-fun e!3521292 () Bool)

(assert (=> b!5726867 (= e!3521298 e!3521292)))

(declare-fun res!2417711 () Bool)

(assert (=> b!5726867 (=> res!2417711 e!3521292)))

(assert (=> b!5726867 (= res!2417711 call!437871)))

(declare-fun b!5726868 () Bool)

(declare-fun e!3521293 () Bool)

(declare-fun lt!2279415 () Bool)

(assert (=> b!5726868 (= e!3521293 (= lt!2279415 call!437871))))

(declare-fun b!5726869 () Bool)

(declare-fun res!2417710 () Bool)

(assert (=> b!5726869 (=> (not res!2417710) (not e!3521297))))

(declare-fun tail!11217 (List!63475) List!63475)

(assert (=> b!5726869 (= res!2417710 (isEmpty!35229 (tail!11217 s!2326)))))

(declare-fun b!5726870 () Bool)

(declare-fun res!2417709 () Bool)

(assert (=> b!5726870 (=> res!2417709 e!3521292)))

(assert (=> b!5726870 (= res!2417709 (not (isEmpty!35229 (tail!11217 s!2326))))))

(declare-fun b!5726871 () Bool)

(declare-fun res!2417708 () Bool)

(declare-fun e!3521295 () Bool)

(assert (=> b!5726871 (=> res!2417708 e!3521295)))

(assert (=> b!5726871 (= res!2417708 e!3521297)))

(declare-fun res!2417712 () Bool)

(assert (=> b!5726871 (=> (not res!2417712) (not e!3521297))))

(assert (=> b!5726871 (= res!2417712 lt!2279415)))

(declare-fun b!5726872 () Bool)

(declare-fun e!3521296 () Bool)

(assert (=> b!5726872 (= e!3521296 (not lt!2279415))))

(declare-fun d!1806460 () Bool)

(assert (=> d!1806460 e!3521293))

(declare-fun c!1010357 () Bool)

(assert (=> d!1806460 (= c!1010357 ((_ is EmptyExpr!15725) r!7292))))

(declare-fun e!3521294 () Bool)

(assert (=> d!1806460 (= lt!2279415 e!3521294)))

(declare-fun c!1010358 () Bool)

(assert (=> d!1806460 (= c!1010358 (isEmpty!35229 s!2326))))

(assert (=> d!1806460 (validRegex!7461 r!7292)))

(assert (=> d!1806460 (= (matchR!7910 r!7292 s!2326) lt!2279415)))

(declare-fun b!5726873 () Bool)

(assert (=> b!5726873 (= e!3521294 (nullable!5757 r!7292))))

(declare-fun b!5726874 () Bool)

(declare-fun derivativeStep!4523 (Regex!15725 C!31720) Regex!15725)

(assert (=> b!5726874 (= e!3521294 (matchR!7910 (derivativeStep!4523 r!7292 (head!12122 s!2326)) (tail!11217 s!2326)))))

(declare-fun b!5726875 () Bool)

(assert (=> b!5726875 (= e!3521295 e!3521298)))

(declare-fun res!2417706 () Bool)

(assert (=> b!5726875 (=> (not res!2417706) (not e!3521298))))

(assert (=> b!5726875 (= res!2417706 (not lt!2279415))))

(declare-fun b!5726876 () Bool)

(declare-fun res!2417707 () Bool)

(assert (=> b!5726876 (=> res!2417707 e!3521295)))

(assert (=> b!5726876 (= res!2417707 (not ((_ is ElementMatch!15725) r!7292)))))

(assert (=> b!5726876 (= e!3521296 e!3521295)))

(declare-fun b!5726877 () Bool)

(assert (=> b!5726877 (= e!3521293 e!3521296)))

(declare-fun c!1010359 () Bool)

(assert (=> b!5726877 (= c!1010359 ((_ is EmptyLang!15725) r!7292))))

(declare-fun b!5726878 () Bool)

(assert (=> b!5726878 (= e!3521292 (not (= (head!12122 s!2326) (c!1010233 r!7292))))))

(declare-fun bm!437866 () Bool)

(assert (=> bm!437866 (= call!437871 (isEmpty!35229 s!2326))))

(assert (= (and d!1806460 c!1010358) b!5726873))

(assert (= (and d!1806460 (not c!1010358)) b!5726874))

(assert (= (and d!1806460 c!1010357) b!5726868))

(assert (= (and d!1806460 (not c!1010357)) b!5726877))

(assert (= (and b!5726877 c!1010359) b!5726872))

(assert (= (and b!5726877 (not c!1010359)) b!5726876))

(assert (= (and b!5726876 (not res!2417707)) b!5726871))

(assert (= (and b!5726871 res!2417712) b!5726865))

(assert (= (and b!5726865 res!2417705) b!5726869))

(assert (= (and b!5726869 res!2417710) b!5726866))

(assert (= (and b!5726871 (not res!2417708)) b!5726875))

(assert (= (and b!5726875 res!2417706) b!5726867))

(assert (= (and b!5726867 (not res!2417711)) b!5726870))

(assert (= (and b!5726870 (not res!2417709)) b!5726878))

(assert (= (or b!5726868 b!5726865 b!5726867) bm!437866))

(assert (=> d!1806460 m!6679304))

(assert (=> d!1806460 m!6679078))

(declare-fun m!6679374 () Bool)

(assert (=> b!5726866 m!6679374))

(assert (=> bm!437866 m!6679304))

(assert (=> b!5726878 m!6679374))

(declare-fun m!6679376 () Bool)

(assert (=> b!5726869 m!6679376))

(assert (=> b!5726869 m!6679376))

(declare-fun m!6679378 () Bool)

(assert (=> b!5726869 m!6679378))

(assert (=> b!5726870 m!6679376))

(assert (=> b!5726870 m!6679376))

(assert (=> b!5726870 m!6679378))

(assert (=> b!5726874 m!6679374))

(assert (=> b!5726874 m!6679374))

(declare-fun m!6679380 () Bool)

(assert (=> b!5726874 m!6679380))

(assert (=> b!5726874 m!6679376))

(assert (=> b!5726874 m!6679380))

(assert (=> b!5726874 m!6679376))

(declare-fun m!6679382 () Bool)

(assert (=> b!5726874 m!6679382))

(declare-fun m!6679384 () Bool)

(assert (=> b!5726873 m!6679384))

(assert (=> b!5726462 d!1806460))

(declare-fun d!1806490 () Bool)

(assert (=> d!1806490 (= (matchR!7910 r!7292 s!2326) (matchRSpec!2828 r!7292 s!2326))))

(declare-fun lt!2279424 () Unit!156432)

(declare-fun choose!43299 (Regex!15725 List!63475) Unit!156432)

(assert (=> d!1806490 (= lt!2279424 (choose!43299 r!7292 s!2326))))

(assert (=> d!1806490 (validRegex!7461 r!7292)))

(assert (=> d!1806490 (= (mainMatchTheorem!2828 r!7292 s!2326) lt!2279424)))

(declare-fun bs!1339124 () Bool)

(assert (= bs!1339124 d!1806490))

(assert (=> bs!1339124 m!6679004))

(assert (=> bs!1339124 m!6679002))

(declare-fun m!6679386 () Bool)

(assert (=> bs!1339124 m!6679386))

(assert (=> bs!1339124 m!6679078))

(assert (=> b!5726462 d!1806490))

(declare-fun bs!1339129 () Bool)

(declare-fun d!1806492 () Bool)

(assert (= bs!1339129 (and d!1806492 b!5726464)))

(declare-fun lambda!309663 () Int)

(assert (=> bs!1339129 (= lambda!309663 lambda!309631)))

(declare-fun e!3521330 () Bool)

(assert (=> d!1806492 e!3521330))

(declare-fun res!2417737 () Bool)

(assert (=> d!1806492 (=> (not res!2417737) (not e!3521330))))

(declare-fun lt!2279433 () Regex!15725)

(assert (=> d!1806492 (= res!2417737 (validRegex!7461 lt!2279433))))

(declare-fun e!3521333 () Regex!15725)

(assert (=> d!1806492 (= lt!2279433 e!3521333)))

(declare-fun c!1010375 () Bool)

(declare-fun e!3521332 () Bool)

(assert (=> d!1806492 (= c!1010375 e!3521332)))

(declare-fun res!2417736 () Bool)

(assert (=> d!1806492 (=> (not res!2417736) (not e!3521332))))

(assert (=> d!1806492 (= res!2417736 ((_ is Cons!63350) (exprs!5609 (h!69800 zl!343))))))

(declare-fun forall!14856 (List!63474 Int) Bool)

(assert (=> d!1806492 (forall!14856 (exprs!5609 (h!69800 zl!343)) lambda!309663)))

(assert (=> d!1806492 (= (generalisedConcat!1340 (exprs!5609 (h!69800 zl!343))) lt!2279433)))

(declare-fun b!5726930 () Bool)

(declare-fun e!3521331 () Bool)

(declare-fun isConcat!752 (Regex!15725) Bool)

(assert (=> b!5726930 (= e!3521331 (isConcat!752 lt!2279433))))

(declare-fun b!5726931 () Bool)

(declare-fun e!3521329 () Regex!15725)

(assert (=> b!5726931 (= e!3521329 (Concat!24570 (h!69798 (exprs!5609 (h!69800 zl!343))) (generalisedConcat!1340 (t!376802 (exprs!5609 (h!69800 zl!343))))))))

(declare-fun b!5726932 () Bool)

(assert (=> b!5726932 (= e!3521332 (isEmpty!35226 (t!376802 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun b!5726933 () Bool)

(assert (=> b!5726933 (= e!3521333 e!3521329)))

(declare-fun c!1010377 () Bool)

(assert (=> b!5726933 (= c!1010377 ((_ is Cons!63350) (exprs!5609 (h!69800 zl!343))))))

(declare-fun b!5726934 () Bool)

(declare-fun e!3521328 () Bool)

(declare-fun isEmptyExpr!1229 (Regex!15725) Bool)

(assert (=> b!5726934 (= e!3521328 (isEmptyExpr!1229 lt!2279433))))

(declare-fun b!5726935 () Bool)

(assert (=> b!5726935 (= e!3521330 e!3521328)))

(declare-fun c!1010376 () Bool)

(assert (=> b!5726935 (= c!1010376 (isEmpty!35226 (exprs!5609 (h!69800 zl!343))))))

(declare-fun b!5726936 () Bool)

(assert (=> b!5726936 (= e!3521328 e!3521331)))

(declare-fun c!1010374 () Bool)

(declare-fun tail!11218 (List!63474) List!63474)

(assert (=> b!5726936 (= c!1010374 (isEmpty!35226 (tail!11218 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun b!5726937 () Bool)

(assert (=> b!5726937 (= e!3521333 (h!69798 (exprs!5609 (h!69800 zl!343))))))

(declare-fun b!5726938 () Bool)

(assert (=> b!5726938 (= e!3521329 EmptyExpr!15725)))

(declare-fun b!5726939 () Bool)

(declare-fun head!12123 (List!63474) Regex!15725)

(assert (=> b!5726939 (= e!3521331 (= lt!2279433 (head!12123 (exprs!5609 (h!69800 zl!343)))))))

(assert (= (and d!1806492 res!2417736) b!5726932))

(assert (= (and d!1806492 c!1010375) b!5726937))

(assert (= (and d!1806492 (not c!1010375)) b!5726933))

(assert (= (and b!5726933 c!1010377) b!5726931))

(assert (= (and b!5726933 (not c!1010377)) b!5726938))

(assert (= (and d!1806492 res!2417737) b!5726935))

(assert (= (and b!5726935 c!1010376) b!5726934))

(assert (= (and b!5726935 (not c!1010376)) b!5726936))

(assert (= (and b!5726936 c!1010374) b!5726939))

(assert (= (and b!5726936 (not c!1010374)) b!5726930))

(declare-fun m!6679414 () Bool)

(assert (=> b!5726936 m!6679414))

(assert (=> b!5726936 m!6679414))

(declare-fun m!6679416 () Bool)

(assert (=> b!5726936 m!6679416))

(assert (=> b!5726932 m!6679098))

(declare-fun m!6679418 () Bool)

(assert (=> b!5726931 m!6679418))

(declare-fun m!6679420 () Bool)

(assert (=> b!5726939 m!6679420))

(declare-fun m!6679422 () Bool)

(assert (=> b!5726930 m!6679422))

(declare-fun m!6679424 () Bool)

(assert (=> d!1806492 m!6679424))

(declare-fun m!6679426 () Bool)

(assert (=> d!1806492 m!6679426))

(declare-fun m!6679428 () Bool)

(assert (=> b!5726935 m!6679428))

(declare-fun m!6679430 () Bool)

(assert (=> b!5726934 m!6679430))

(assert (=> b!5726461 d!1806492))

(declare-fun bs!1339133 () Bool)

(declare-fun d!1806502 () Bool)

(assert (= bs!1339133 (and d!1806502 b!5726464)))

(declare-fun lambda!309674 () Int)

(assert (=> bs!1339133 (= (= (exprs!5609 lt!2279363) lt!2279337) (= lambda!309674 lambda!309630))))

(assert (=> d!1806502 true))

(assert (=> d!1806502 (= (appendTo!104 lt!2279345 lt!2279363) (map!14508 lt!2279345 lambda!309674))))

(declare-fun bs!1339135 () Bool)

(assert (= bs!1339135 d!1806502))

(declare-fun m!6679440 () Bool)

(assert (=> bs!1339135 m!6679440))

(assert (=> b!5726464 d!1806502))

(declare-fun d!1806508 () Bool)

(declare-fun choose!43303 ((InoxSet Context!10218) Int) (InoxSet Context!10218))

(assert (=> d!1806508 (= (map!14508 lt!2279345 lambda!309630) (choose!43303 lt!2279345 lambda!309630))))

(declare-fun bs!1339136 () Bool)

(assert (= bs!1339136 d!1806508))

(declare-fun m!6679450 () Bool)

(assert (=> bs!1339136 m!6679450))

(assert (=> b!5726464 d!1806508))

(declare-fun d!1806512 () Bool)

(declare-fun dynLambda!24791 (Int Context!10218) Context!10218)

(assert (=> d!1806512 (= (map!14508 lt!2279345 lambda!309630) (store ((as const (Array Context!10218 Bool)) false) (dynLambda!24791 lambda!309630 lt!2279340) true))))

(declare-fun lt!2279445 () Unit!156432)

(declare-fun choose!43304 ((InoxSet Context!10218) Context!10218 Int) Unit!156432)

(assert (=> d!1806512 (= lt!2279445 (choose!43304 lt!2279345 lt!2279340 lambda!309630))))

(assert (=> d!1806512 (= lt!2279345 (store ((as const (Array Context!10218 Bool)) false) lt!2279340 true))))

(assert (=> d!1806512 (= (lemmaMapOnSingletonSet!120 lt!2279345 lt!2279340 lambda!309630) lt!2279445)))

(declare-fun b_lambda!216417 () Bool)

(assert (=> (not b_lambda!216417) (not d!1806512)))

(declare-fun bs!1339144 () Bool)

(assert (= bs!1339144 d!1806512))

(assert (=> bs!1339144 m!6679046))

(declare-fun m!6679478 () Bool)

(assert (=> bs!1339144 m!6679478))

(assert (=> bs!1339144 m!6679478))

(declare-fun m!6679480 () Bool)

(assert (=> bs!1339144 m!6679480))

(declare-fun m!6679482 () Bool)

(assert (=> bs!1339144 m!6679482))

(assert (=> bs!1339144 m!6678990))

(assert (=> b!5726464 d!1806512))

(declare-fun d!1806522 () Bool)

(assert (=> d!1806522 (forall!14856 (++!13922 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350) lt!2279337) lambda!309631)))

(declare-fun lt!2279448 () Unit!156432)

(declare-fun choose!43305 (List!63474 List!63474 Int) Unit!156432)

(assert (=> d!1806522 (= lt!2279448 (choose!43305 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350) lt!2279337 lambda!309631))))

(assert (=> d!1806522 (forall!14856 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350) lambda!309631)))

(assert (=> d!1806522 (= (lemmaConcatPreservesForall!294 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350) lt!2279337 lambda!309631) lt!2279448)))

(declare-fun bs!1339145 () Bool)

(assert (= bs!1339145 d!1806522))

(assert (=> bs!1339145 m!6678994))

(assert (=> bs!1339145 m!6678994))

(declare-fun m!6679484 () Bool)

(assert (=> bs!1339145 m!6679484))

(declare-fun m!6679486 () Bool)

(assert (=> bs!1339145 m!6679486))

(declare-fun m!6679488 () Bool)

(assert (=> bs!1339145 m!6679488))

(assert (=> b!5726464 d!1806522))

(declare-fun b!5727007 () Bool)

(declare-fun e!3521370 () List!63474)

(assert (=> b!5727007 (= e!3521370 (Cons!63350 (h!69798 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350)) (++!13922 (t!376802 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350)) lt!2279337)))))

(declare-fun b!5727008 () Bool)

(declare-fun res!2417771 () Bool)

(declare-fun e!3521371 () Bool)

(assert (=> b!5727008 (=> (not res!2417771) (not e!3521371))))

(declare-fun lt!2279451 () List!63474)

(declare-fun size!40036 (List!63474) Int)

(assert (=> b!5727008 (= res!2417771 (= (size!40036 lt!2279451) (+ (size!40036 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350)) (size!40036 lt!2279337))))))

(declare-fun d!1806524 () Bool)

(assert (=> d!1806524 e!3521371))

(declare-fun res!2417770 () Bool)

(assert (=> d!1806524 (=> (not res!2417770) (not e!3521371))))

(declare-fun content!11519 (List!63474) (InoxSet Regex!15725))

(assert (=> d!1806524 (= res!2417770 (= (content!11519 lt!2279451) ((_ map or) (content!11519 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350)) (content!11519 lt!2279337))))))

(assert (=> d!1806524 (= lt!2279451 e!3521370)))

(declare-fun c!1010395 () Bool)

(assert (=> d!1806524 (= c!1010395 ((_ is Nil!63350) (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350)))))

(assert (=> d!1806524 (= (++!13922 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350) lt!2279337) lt!2279451)))

(declare-fun b!5727009 () Bool)

(assert (=> b!5727009 (= e!3521371 (or (not (= lt!2279337 Nil!63350)) (= lt!2279451 (Cons!63350 (reg!16054 (regOne!31962 r!7292)) Nil!63350))))))

(declare-fun b!5727006 () Bool)

(assert (=> b!5727006 (= e!3521370 lt!2279337)))

(assert (= (and d!1806524 c!1010395) b!5727006))

(assert (= (and d!1806524 (not c!1010395)) b!5727007))

(assert (= (and d!1806524 res!2417770) b!5727008))

(assert (= (and b!5727008 res!2417771) b!5727009))

(declare-fun m!6679490 () Bool)

(assert (=> b!5727007 m!6679490))

(declare-fun m!6679492 () Bool)

(assert (=> b!5727008 m!6679492))

(declare-fun m!6679494 () Bool)

(assert (=> b!5727008 m!6679494))

(declare-fun m!6679496 () Bool)

(assert (=> b!5727008 m!6679496))

(declare-fun m!6679498 () Bool)

(assert (=> d!1806524 m!6679498))

(declare-fun m!6679500 () Bool)

(assert (=> d!1806524 m!6679500))

(declare-fun m!6679502 () Bool)

(assert (=> d!1806524 m!6679502))

(assert (=> b!5726464 d!1806524))

(declare-fun d!1806526 () Bool)

(declare-fun choose!43306 ((InoxSet Context!10218) Int) (InoxSet Context!10218))

(assert (=> d!1806526 (= (flatMap!1338 lt!2279362 lambda!309629) (choose!43306 lt!2279362 lambda!309629))))

(declare-fun bs!1339146 () Bool)

(assert (= bs!1339146 d!1806526))

(declare-fun m!6679504 () Bool)

(assert (=> bs!1339146 m!6679504))

(assert (=> b!5726465 d!1806526))

(declare-fun b!5727031 () Bool)

(declare-fun e!3521386 () Bool)

(assert (=> b!5727031 (= e!3521386 (nullable!5757 (h!69798 (exprs!5609 lt!2279332))))))

(declare-fun bm!437881 () Bool)

(declare-fun call!437886 () (InoxSet Context!10218))

(assert (=> bm!437881 (= call!437886 (derivationStepZipperDown!1067 (h!69798 (exprs!5609 lt!2279332)) (Context!10219 (t!376802 (exprs!5609 lt!2279332))) (h!69799 s!2326)))))

(declare-fun b!5727032 () Bool)

(declare-fun e!3521387 () (InoxSet Context!10218))

(assert (=> b!5727032 (= e!3521387 ((as const (Array Context!10218 Bool)) false))))

(declare-fun e!3521385 () (InoxSet Context!10218))

(declare-fun b!5727033 () Bool)

(assert (=> b!5727033 (= e!3521385 ((_ map or) call!437886 (derivationStepZipperUp!993 (Context!10219 (t!376802 (exprs!5609 lt!2279332))) (h!69799 s!2326))))))

(declare-fun b!5727034 () Bool)

(assert (=> b!5727034 (= e!3521385 e!3521387)))

(declare-fun c!1010404 () Bool)

(assert (=> b!5727034 (= c!1010404 ((_ is Cons!63350) (exprs!5609 lt!2279332)))))

(declare-fun d!1806528 () Bool)

(declare-fun c!1010405 () Bool)

(assert (=> d!1806528 (= c!1010405 e!3521386)))

(declare-fun res!2417777 () Bool)

(assert (=> d!1806528 (=> (not res!2417777) (not e!3521386))))

(assert (=> d!1806528 (= res!2417777 ((_ is Cons!63350) (exprs!5609 lt!2279332)))))

(assert (=> d!1806528 (= (derivationStepZipperUp!993 lt!2279332 (h!69799 s!2326)) e!3521385)))

(declare-fun b!5727035 () Bool)

(assert (=> b!5727035 (= e!3521387 call!437886)))

(assert (= (and d!1806528 res!2417777) b!5727031))

(assert (= (and d!1806528 c!1010405) b!5727033))

(assert (= (and d!1806528 (not c!1010405)) b!5727034))

(assert (= (and b!5727034 c!1010404) b!5727035))

(assert (= (and b!5727034 (not c!1010404)) b!5727032))

(assert (= (or b!5727033 b!5727035) bm!437881))

(declare-fun m!6679512 () Bool)

(assert (=> b!5727031 m!6679512))

(declare-fun m!6679514 () Bool)

(assert (=> bm!437881 m!6679514))

(declare-fun m!6679516 () Bool)

(assert (=> b!5727033 m!6679516))

(assert (=> b!5726465 d!1806528))

(declare-fun d!1806532 () Bool)

(declare-fun dynLambda!24792 (Int Context!10218) (InoxSet Context!10218))

(assert (=> d!1806532 (= (flatMap!1338 lt!2279362 lambda!309629) (dynLambda!24792 lambda!309629 lt!2279332))))

(declare-fun lt!2279454 () Unit!156432)

(declare-fun choose!43307 ((InoxSet Context!10218) Context!10218 Int) Unit!156432)

(assert (=> d!1806532 (= lt!2279454 (choose!43307 lt!2279362 lt!2279332 lambda!309629))))

(assert (=> d!1806532 (= lt!2279362 (store ((as const (Array Context!10218 Bool)) false) lt!2279332 true))))

(assert (=> d!1806532 (= (lemmaFlatMapOnSingletonSet!870 lt!2279362 lt!2279332 lambda!309629) lt!2279454)))

(declare-fun b_lambda!216419 () Bool)

(assert (=> (not b_lambda!216419) (not d!1806532)))

(declare-fun bs!1339154 () Bool)

(assert (= bs!1339154 d!1806532))

(assert (=> bs!1339154 m!6679106))

(declare-fun m!6679518 () Bool)

(assert (=> bs!1339154 m!6679518))

(declare-fun m!6679520 () Bool)

(assert (=> bs!1339154 m!6679520))

(assert (=> bs!1339154 m!6679102))

(assert (=> b!5726465 d!1806532))

(declare-fun bs!1339155 () Bool)

(declare-fun d!1806534 () Bool)

(assert (= bs!1339155 (and d!1806534 b!5726478)))

(declare-fun lambda!309684 () Int)

(assert (=> bs!1339155 (= lambda!309684 lambda!309629)))

(assert (=> d!1806534 true))

(assert (=> d!1806534 (= (derivationStepZipper!1808 lt!2279362 (h!69799 s!2326)) (flatMap!1338 lt!2279362 lambda!309684))))

(declare-fun bs!1339156 () Bool)

(assert (= bs!1339156 d!1806534))

(declare-fun m!6679522 () Bool)

(assert (=> bs!1339156 m!6679522))

(assert (=> b!5726465 d!1806534))

(declare-fun d!1806536 () Bool)

(declare-fun c!1010416 () Bool)

(assert (=> d!1806536 (= c!1010416 (isEmpty!35229 s!2326))))

(declare-fun e!3521404 () Bool)

(assert (=> d!1806536 (= (matchZipper!1863 z!1189 s!2326) e!3521404)))

(declare-fun b!5727070 () Bool)

(declare-fun nullableZipper!1671 ((InoxSet Context!10218)) Bool)

(assert (=> b!5727070 (= e!3521404 (nullableZipper!1671 z!1189))))

(declare-fun b!5727071 () Bool)

(assert (=> b!5727071 (= e!3521404 (matchZipper!1863 (derivationStepZipper!1808 z!1189 (head!12122 s!2326)) (tail!11217 s!2326)))))

(assert (= (and d!1806536 c!1010416) b!5727070))

(assert (= (and d!1806536 (not c!1010416)) b!5727071))

(assert (=> d!1806536 m!6679304))

(declare-fun m!6679524 () Bool)

(assert (=> b!5727070 m!6679524))

(assert (=> b!5727071 m!6679374))

(assert (=> b!5727071 m!6679374))

(declare-fun m!6679526 () Bool)

(assert (=> b!5727071 m!6679526))

(assert (=> b!5727071 m!6679376))

(assert (=> b!5727071 m!6679526))

(assert (=> b!5727071 m!6679376))

(declare-fun m!6679528 () Bool)

(assert (=> b!5727071 m!6679528))

(assert (=> b!5726463 d!1806536))

(declare-fun d!1806538 () Bool)

(assert (=> d!1806538 (= (flatMap!1338 lt!2279345 lambda!309629) (choose!43306 lt!2279345 lambda!309629))))

(declare-fun bs!1339157 () Bool)

(assert (= bs!1339157 d!1806538))

(declare-fun m!6679530 () Bool)

(assert (=> bs!1339157 m!6679530))

(assert (=> b!5726483 d!1806538))

(declare-fun b!5727086 () Bool)

(declare-fun e!3521413 () Bool)

(assert (=> b!5727086 (= e!3521413 (nullable!5757 (h!69798 (exprs!5609 lt!2279340))))))

(declare-fun bm!437885 () Bool)

(declare-fun call!437890 () (InoxSet Context!10218))

(assert (=> bm!437885 (= call!437890 (derivationStepZipperDown!1067 (h!69798 (exprs!5609 lt!2279340)) (Context!10219 (t!376802 (exprs!5609 lt!2279340))) (h!69799 s!2326)))))

(declare-fun b!5727087 () Bool)

(declare-fun e!3521414 () (InoxSet Context!10218))

(assert (=> b!5727087 (= e!3521414 ((as const (Array Context!10218 Bool)) false))))

(declare-fun b!5727088 () Bool)

(declare-fun e!3521412 () (InoxSet Context!10218))

(assert (=> b!5727088 (= e!3521412 ((_ map or) call!437890 (derivationStepZipperUp!993 (Context!10219 (t!376802 (exprs!5609 lt!2279340))) (h!69799 s!2326))))))

(declare-fun b!5727089 () Bool)

(assert (=> b!5727089 (= e!3521412 e!3521414)))

(declare-fun c!1010420 () Bool)

(assert (=> b!5727089 (= c!1010420 ((_ is Cons!63350) (exprs!5609 lt!2279340)))))

(declare-fun d!1806540 () Bool)

(declare-fun c!1010421 () Bool)

(assert (=> d!1806540 (= c!1010421 e!3521413)))

(declare-fun res!2417802 () Bool)

(assert (=> d!1806540 (=> (not res!2417802) (not e!3521413))))

(assert (=> d!1806540 (= res!2417802 ((_ is Cons!63350) (exprs!5609 lt!2279340)))))

(assert (=> d!1806540 (= (derivationStepZipperUp!993 lt!2279340 (h!69799 s!2326)) e!3521412)))

(declare-fun b!5727090 () Bool)

(assert (=> b!5727090 (= e!3521414 call!437890)))

(assert (= (and d!1806540 res!2417802) b!5727086))

(assert (= (and d!1806540 c!1010421) b!5727088))

(assert (= (and d!1806540 (not c!1010421)) b!5727089))

(assert (= (and b!5727089 c!1010420) b!5727090))

(assert (= (and b!5727089 (not c!1010420)) b!5727087))

(assert (= (or b!5727088 b!5727090) bm!437885))

(declare-fun m!6679532 () Bool)

(assert (=> b!5727086 m!6679532))

(declare-fun m!6679534 () Bool)

(assert (=> bm!437885 m!6679534))

(declare-fun m!6679536 () Bool)

(assert (=> b!5727088 m!6679536))

(assert (=> b!5726483 d!1806540))

(declare-fun d!1806542 () Bool)

(assert (=> d!1806542 (= (flatMap!1338 lt!2279333 lambda!309629) (dynLambda!24792 lambda!309629 lt!2279363))))

(declare-fun lt!2279458 () Unit!156432)

(assert (=> d!1806542 (= lt!2279458 (choose!43307 lt!2279333 lt!2279363 lambda!309629))))

(assert (=> d!1806542 (= lt!2279333 (store ((as const (Array Context!10218 Bool)) false) lt!2279363 true))))

(assert (=> d!1806542 (= (lemmaFlatMapOnSingletonSet!870 lt!2279333 lt!2279363 lambda!309629) lt!2279458)))

(declare-fun b_lambda!216421 () Bool)

(assert (=> (not b_lambda!216421) (not d!1806542)))

(declare-fun bs!1339158 () Bool)

(assert (= bs!1339158 d!1806542))

(assert (=> bs!1339158 m!6679050))

(declare-fun m!6679542 () Bool)

(assert (=> bs!1339158 m!6679542))

(declare-fun m!6679546 () Bool)

(assert (=> bs!1339158 m!6679546))

(assert (=> bs!1339158 m!6679052))

(assert (=> b!5726483 d!1806542))

(declare-fun d!1806544 () Bool)

(declare-fun lt!2279461 () Regex!15725)

(assert (=> d!1806544 (validRegex!7461 lt!2279461)))

(assert (=> d!1806544 (= lt!2279461 (generalisedUnion!1588 (unfocusZipperList!1153 (Cons!63352 lt!2279340 Nil!63352))))))

(assert (=> d!1806544 (= (unfocusZipper!1467 (Cons!63352 lt!2279340 Nil!63352)) lt!2279461)))

(declare-fun bs!1339159 () Bool)

(assert (= bs!1339159 d!1806544))

(declare-fun m!6679550 () Bool)

(assert (=> bs!1339159 m!6679550))

(declare-fun m!6679552 () Bool)

(assert (=> bs!1339159 m!6679552))

(assert (=> bs!1339159 m!6679552))

(declare-fun m!6679554 () Bool)

(assert (=> bs!1339159 m!6679554))

(assert (=> b!5726483 d!1806544))

(declare-fun b!5727091 () Bool)

(declare-fun e!3521416 () Bool)

(assert (=> b!5727091 (= e!3521416 (nullable!5757 (h!69798 (exprs!5609 lt!2279363))))))

(declare-fun bm!437886 () Bool)

(declare-fun call!437891 () (InoxSet Context!10218))

(assert (=> bm!437886 (= call!437891 (derivationStepZipperDown!1067 (h!69798 (exprs!5609 lt!2279363)) (Context!10219 (t!376802 (exprs!5609 lt!2279363))) (h!69799 s!2326)))))

(declare-fun b!5727092 () Bool)

(declare-fun e!3521417 () (InoxSet Context!10218))

(assert (=> b!5727092 (= e!3521417 ((as const (Array Context!10218 Bool)) false))))

(declare-fun e!3521415 () (InoxSet Context!10218))

(declare-fun b!5727093 () Bool)

(assert (=> b!5727093 (= e!3521415 ((_ map or) call!437891 (derivationStepZipperUp!993 (Context!10219 (t!376802 (exprs!5609 lt!2279363))) (h!69799 s!2326))))))

(declare-fun b!5727094 () Bool)

(assert (=> b!5727094 (= e!3521415 e!3521417)))

(declare-fun c!1010422 () Bool)

(assert (=> b!5727094 (= c!1010422 ((_ is Cons!63350) (exprs!5609 lt!2279363)))))

(declare-fun d!1806548 () Bool)

(declare-fun c!1010423 () Bool)

(assert (=> d!1806548 (= c!1010423 e!3521416)))

(declare-fun res!2417803 () Bool)

(assert (=> d!1806548 (=> (not res!2417803) (not e!3521416))))

(assert (=> d!1806548 (= res!2417803 ((_ is Cons!63350) (exprs!5609 lt!2279363)))))

(assert (=> d!1806548 (= (derivationStepZipperUp!993 lt!2279363 (h!69799 s!2326)) e!3521415)))

(declare-fun b!5727095 () Bool)

(assert (=> b!5727095 (= e!3521417 call!437891)))

(assert (= (and d!1806548 res!2417803) b!5727091))

(assert (= (and d!1806548 c!1010423) b!5727093))

(assert (= (and d!1806548 (not c!1010423)) b!5727094))

(assert (= (and b!5727094 c!1010422) b!5727095))

(assert (= (and b!5727094 (not c!1010422)) b!5727092))

(assert (= (or b!5727093 b!5727095) bm!437886))

(declare-fun m!6679556 () Bool)

(assert (=> b!5727091 m!6679556))

(declare-fun m!6679558 () Bool)

(assert (=> bm!437886 m!6679558))

(declare-fun m!6679560 () Bool)

(assert (=> b!5727093 m!6679560))

(assert (=> b!5726483 d!1806548))

(declare-fun d!1806550 () Bool)

(assert (=> d!1806550 (= (flatMap!1338 lt!2279333 lambda!309629) (choose!43306 lt!2279333 lambda!309629))))

(declare-fun bs!1339160 () Bool)

(assert (= bs!1339160 d!1806550))

(declare-fun m!6679562 () Bool)

(assert (=> bs!1339160 m!6679562))

(assert (=> b!5726483 d!1806550))

(declare-fun d!1806552 () Bool)

(assert (=> d!1806552 (= (flatMap!1338 lt!2279345 lambda!309629) (dynLambda!24792 lambda!309629 lt!2279340))))

(declare-fun lt!2279464 () Unit!156432)

(assert (=> d!1806552 (= lt!2279464 (choose!43307 lt!2279345 lt!2279340 lambda!309629))))

(assert (=> d!1806552 (= lt!2279345 (store ((as const (Array Context!10218 Bool)) false) lt!2279340 true))))

(assert (=> d!1806552 (= (lemmaFlatMapOnSingletonSet!870 lt!2279345 lt!2279340 lambda!309629) lt!2279464)))

(declare-fun b_lambda!216423 () Bool)

(assert (=> (not b_lambda!216423) (not d!1806552)))

(declare-fun bs!1339161 () Bool)

(assert (= bs!1339161 d!1806552))

(assert (=> bs!1339161 m!6679042))

(declare-fun m!6679564 () Bool)

(assert (=> bs!1339161 m!6679564))

(declare-fun m!6679566 () Bool)

(assert (=> bs!1339161 m!6679566))

(assert (=> bs!1339161 m!6679046))

(assert (=> b!5726483 d!1806552))

(declare-fun bs!1339176 () Bool)

(declare-fun d!1806554 () Bool)

(assert (= bs!1339176 (and d!1806554 b!5726464)))

(declare-fun lambda!309689 () Int)

(assert (=> bs!1339176 (= lambda!309689 lambda!309631)))

(declare-fun bs!1339177 () Bool)

(assert (= bs!1339177 (and d!1806554 d!1806492)))

(assert (=> bs!1339177 (= lambda!309689 lambda!309663)))

(declare-fun b!5727167 () Bool)

(declare-fun e!3521457 () Regex!15725)

(assert (=> b!5727167 (= e!3521457 EmptyLang!15725)))

(declare-fun b!5727168 () Bool)

(declare-fun e!3521450 () Bool)

(declare-fun e!3521451 () Bool)

(assert (=> b!5727168 (= e!3521450 e!3521451)))

(declare-fun c!1010442 () Bool)

(assert (=> b!5727168 (= c!1010442 (isEmpty!35226 (tail!11218 (unfocusZipperList!1153 zl!343))))))

(declare-fun b!5727169 () Bool)

(declare-fun e!3521452 () Regex!15725)

(assert (=> b!5727169 (= e!3521452 e!3521457)))

(declare-fun c!1010441 () Bool)

(assert (=> b!5727169 (= c!1010441 ((_ is Cons!63350) (unfocusZipperList!1153 zl!343)))))

(declare-fun e!3521453 () Bool)

(assert (=> d!1806554 e!3521453))

(declare-fun res!2417819 () Bool)

(assert (=> d!1806554 (=> (not res!2417819) (not e!3521453))))

(declare-fun lt!2279471 () Regex!15725)

(assert (=> d!1806554 (= res!2417819 (validRegex!7461 lt!2279471))))

(assert (=> d!1806554 (= lt!2279471 e!3521452)))

(declare-fun c!1010443 () Bool)

(declare-fun e!3521456 () Bool)

(assert (=> d!1806554 (= c!1010443 e!3521456)))

(declare-fun res!2417820 () Bool)

(assert (=> d!1806554 (=> (not res!2417820) (not e!3521456))))

(assert (=> d!1806554 (= res!2417820 ((_ is Cons!63350) (unfocusZipperList!1153 zl!343)))))

(assert (=> d!1806554 (forall!14856 (unfocusZipperList!1153 zl!343) lambda!309689)))

(assert (=> d!1806554 (= (generalisedUnion!1588 (unfocusZipperList!1153 zl!343)) lt!2279471)))

(declare-fun b!5727170 () Bool)

(assert (=> b!5727170 (= e!3521456 (isEmpty!35226 (t!376802 (unfocusZipperList!1153 zl!343))))))

(declare-fun b!5727171 () Bool)

(assert (=> b!5727171 (= e!3521457 (Union!15725 (h!69798 (unfocusZipperList!1153 zl!343)) (generalisedUnion!1588 (t!376802 (unfocusZipperList!1153 zl!343)))))))

(declare-fun b!5727172 () Bool)

(declare-fun isUnion!670 (Regex!15725) Bool)

(assert (=> b!5727172 (= e!3521451 (isUnion!670 lt!2279471))))

(declare-fun b!5727173 () Bool)

(assert (=> b!5727173 (= e!3521453 e!3521450)))

(declare-fun c!1010444 () Bool)

(assert (=> b!5727173 (= c!1010444 (isEmpty!35226 (unfocusZipperList!1153 zl!343)))))

(declare-fun b!5727174 () Bool)

(assert (=> b!5727174 (= e!3521452 (h!69798 (unfocusZipperList!1153 zl!343)))))

(declare-fun b!5727175 () Bool)

(assert (=> b!5727175 (= e!3521451 (= lt!2279471 (head!12123 (unfocusZipperList!1153 zl!343))))))

(declare-fun b!5727176 () Bool)

(declare-fun isEmptyLang!1240 (Regex!15725) Bool)

(assert (=> b!5727176 (= e!3521450 (isEmptyLang!1240 lt!2279471))))

(assert (= (and d!1806554 res!2417820) b!5727170))

(assert (= (and d!1806554 c!1010443) b!5727174))

(assert (= (and d!1806554 (not c!1010443)) b!5727169))

(assert (= (and b!5727169 c!1010441) b!5727171))

(assert (= (and b!5727169 (not c!1010441)) b!5727167))

(assert (= (and d!1806554 res!2417819) b!5727173))

(assert (= (and b!5727173 c!1010444) b!5727176))

(assert (= (and b!5727173 (not c!1010444)) b!5727168))

(assert (= (and b!5727168 c!1010442) b!5727175))

(assert (= (and b!5727168 (not c!1010442)) b!5727172))

(declare-fun m!6679600 () Bool)

(assert (=> b!5727170 m!6679600))

(assert (=> b!5727168 m!6679036))

(declare-fun m!6679602 () Bool)

(assert (=> b!5727168 m!6679602))

(assert (=> b!5727168 m!6679602))

(declare-fun m!6679604 () Bool)

(assert (=> b!5727168 m!6679604))

(declare-fun m!6679606 () Bool)

(assert (=> d!1806554 m!6679606))

(assert (=> d!1806554 m!6679036))

(declare-fun m!6679608 () Bool)

(assert (=> d!1806554 m!6679608))

(assert (=> b!5727175 m!6679036))

(declare-fun m!6679610 () Bool)

(assert (=> b!5727175 m!6679610))

(declare-fun m!6679612 () Bool)

(assert (=> b!5727176 m!6679612))

(declare-fun m!6679614 () Bool)

(assert (=> b!5727171 m!6679614))

(assert (=> b!5727173 m!6679036))

(declare-fun m!6679616 () Bool)

(assert (=> b!5727173 m!6679616))

(declare-fun m!6679618 () Bool)

(assert (=> b!5727172 m!6679618))

(assert (=> b!5726484 d!1806554))

(declare-fun bs!1339183 () Bool)

(declare-fun d!1806568 () Bool)

(assert (= bs!1339183 (and d!1806568 b!5726464)))

(declare-fun lambda!309692 () Int)

(assert (=> bs!1339183 (= lambda!309692 lambda!309631)))

(declare-fun bs!1339184 () Bool)

(assert (= bs!1339184 (and d!1806568 d!1806492)))

(assert (=> bs!1339184 (= lambda!309692 lambda!309663)))

(declare-fun bs!1339185 () Bool)

(assert (= bs!1339185 (and d!1806568 d!1806554)))

(assert (=> bs!1339185 (= lambda!309692 lambda!309689)))

(declare-fun lt!2279475 () List!63474)

(assert (=> d!1806568 (forall!14856 lt!2279475 lambda!309692)))

(declare-fun e!3521477 () List!63474)

(assert (=> d!1806568 (= lt!2279475 e!3521477)))

(declare-fun c!1010447 () Bool)

(assert (=> d!1806568 (= c!1010447 ((_ is Cons!63352) zl!343))))

(assert (=> d!1806568 (= (unfocusZipperList!1153 zl!343) lt!2279475)))

(declare-fun b!5727213 () Bool)

(assert (=> b!5727213 (= e!3521477 (Cons!63350 (generalisedConcat!1340 (exprs!5609 (h!69800 zl!343))) (unfocusZipperList!1153 (t!376804 zl!343))))))

(declare-fun b!5727214 () Bool)

(assert (=> b!5727214 (= e!3521477 Nil!63350)))

(assert (= (and d!1806568 c!1010447) b!5727213))

(assert (= (and d!1806568 (not c!1010447)) b!5727214))

(declare-fun m!6679628 () Bool)

(assert (=> d!1806568 m!6679628))

(assert (=> b!5727213 m!6679008))

(declare-fun m!6679630 () Bool)

(assert (=> b!5727213 m!6679630))

(assert (=> b!5726484 d!1806568))

(declare-fun d!1806580 () Bool)

(declare-fun c!1010448 () Bool)

(assert (=> d!1806580 (= c!1010448 (isEmpty!35229 (t!376803 s!2326)))))

(declare-fun e!3521478 () Bool)

(assert (=> d!1806580 (= (matchZipper!1863 lt!2279359 (t!376803 s!2326)) e!3521478)))

(declare-fun b!5727215 () Bool)

(assert (=> b!5727215 (= e!3521478 (nullableZipper!1671 lt!2279359))))

(declare-fun b!5727216 () Bool)

(assert (=> b!5727216 (= e!3521478 (matchZipper!1863 (derivationStepZipper!1808 lt!2279359 (head!12122 (t!376803 s!2326))) (tail!11217 (t!376803 s!2326))))))

(assert (= (and d!1806580 c!1010448) b!5727215))

(assert (= (and d!1806580 (not c!1010448)) b!5727216))

(declare-fun m!6679632 () Bool)

(assert (=> d!1806580 m!6679632))

(declare-fun m!6679634 () Bool)

(assert (=> b!5727215 m!6679634))

(declare-fun m!6679636 () Bool)

(assert (=> b!5727216 m!6679636))

(assert (=> b!5727216 m!6679636))

(declare-fun m!6679638 () Bool)

(assert (=> b!5727216 m!6679638))

(declare-fun m!6679640 () Bool)

(assert (=> b!5727216 m!6679640))

(assert (=> b!5727216 m!6679638))

(assert (=> b!5727216 m!6679640))

(declare-fun m!6679642 () Bool)

(assert (=> b!5727216 m!6679642))

(assert (=> b!5726488 d!1806580))

(declare-fun bs!1339186 () Bool)

(declare-fun d!1806582 () Bool)

(assert (= bs!1339186 (and d!1806582 b!5726464)))

(declare-fun lambda!309695 () Int)

(assert (=> bs!1339186 (= lambda!309695 lambda!309631)))

(declare-fun bs!1339187 () Bool)

(assert (= bs!1339187 (and d!1806582 d!1806492)))

(assert (=> bs!1339187 (= lambda!309695 lambda!309663)))

(declare-fun bs!1339188 () Bool)

(assert (= bs!1339188 (and d!1806582 d!1806554)))

(assert (=> bs!1339188 (= lambda!309695 lambda!309689)))

(declare-fun bs!1339189 () Bool)

(assert (= bs!1339189 (and d!1806582 d!1806568)))

(assert (=> bs!1339189 (= lambda!309695 lambda!309692)))

(assert (=> d!1806582 (= (inv!82559 setElem!38401) (forall!14856 (exprs!5609 setElem!38401) lambda!309695))))

(declare-fun bs!1339190 () Bool)

(assert (= bs!1339190 d!1806582))

(declare-fun m!6679644 () Bool)

(assert (=> bs!1339190 m!6679644))

(assert (=> setNonEmpty!38401 d!1806582))

(assert (=> b!5726490 d!1806580))

(declare-fun d!1806584 () Bool)

(declare-fun nullableFct!1817 (Regex!15725) Bool)

(assert (=> d!1806584 (= (nullable!5757 (regOne!31962 (regOne!31962 r!7292))) (nullableFct!1817 (regOne!31962 (regOne!31962 r!7292))))))

(declare-fun bs!1339191 () Bool)

(assert (= bs!1339191 d!1806584))

(declare-fun m!6679646 () Bool)

(assert (=> bs!1339191 m!6679646))

(assert (=> b!5726469 d!1806584))

(declare-fun d!1806586 () Bool)

(declare-fun e!3521481 () Bool)

(assert (=> d!1806586 (= (matchZipper!1863 ((_ map or) lt!2279357 lt!2279359) (t!376803 s!2326)) e!3521481)))

(declare-fun res!2417823 () Bool)

(assert (=> d!1806586 (=> res!2417823 e!3521481)))

(assert (=> d!1806586 (= res!2417823 (matchZipper!1863 lt!2279357 (t!376803 s!2326)))))

(declare-fun lt!2279478 () Unit!156432)

(declare-fun choose!43310 ((InoxSet Context!10218) (InoxSet Context!10218) List!63475) Unit!156432)

(assert (=> d!1806586 (= lt!2279478 (choose!43310 lt!2279357 lt!2279359 (t!376803 s!2326)))))

(assert (=> d!1806586 (= (lemmaZipperConcatMatchesSameAsBothZippers!750 lt!2279357 lt!2279359 (t!376803 s!2326)) lt!2279478)))

(declare-fun b!5727219 () Bool)

(assert (=> b!5727219 (= e!3521481 (matchZipper!1863 lt!2279359 (t!376803 s!2326)))))

(assert (= (and d!1806586 (not res!2417823)) b!5727219))

(assert (=> d!1806586 m!6679016))

(assert (=> d!1806586 m!6679014))

(declare-fun m!6679648 () Bool)

(assert (=> d!1806586 m!6679648))

(assert (=> b!5727219 m!6678980))

(assert (=> b!5726467 d!1806586))

(declare-fun d!1806588 () Bool)

(declare-fun c!1010449 () Bool)

(assert (=> d!1806588 (= c!1010449 (isEmpty!35229 (t!376803 s!2326)))))

(declare-fun e!3521482 () Bool)

(assert (=> d!1806588 (= (matchZipper!1863 lt!2279357 (t!376803 s!2326)) e!3521482)))

(declare-fun b!5727220 () Bool)

(assert (=> b!5727220 (= e!3521482 (nullableZipper!1671 lt!2279357))))

(declare-fun b!5727221 () Bool)

(assert (=> b!5727221 (= e!3521482 (matchZipper!1863 (derivationStepZipper!1808 lt!2279357 (head!12122 (t!376803 s!2326))) (tail!11217 (t!376803 s!2326))))))

(assert (= (and d!1806588 c!1010449) b!5727220))

(assert (= (and d!1806588 (not c!1010449)) b!5727221))

(assert (=> d!1806588 m!6679632))

(declare-fun m!6679650 () Bool)

(assert (=> b!5727220 m!6679650))

(assert (=> b!5727221 m!6679636))

(assert (=> b!5727221 m!6679636))

(declare-fun m!6679652 () Bool)

(assert (=> b!5727221 m!6679652))

(assert (=> b!5727221 m!6679640))

(assert (=> b!5727221 m!6679652))

(assert (=> b!5727221 m!6679640))

(declare-fun m!6679654 () Bool)

(assert (=> b!5727221 m!6679654))

(assert (=> b!5726467 d!1806588))

(declare-fun d!1806590 () Bool)

(declare-fun c!1010450 () Bool)

(assert (=> d!1806590 (= c!1010450 (isEmpty!35229 (t!376803 s!2326)))))

(declare-fun e!3521483 () Bool)

(assert (=> d!1806590 (= (matchZipper!1863 ((_ map or) lt!2279357 lt!2279359) (t!376803 s!2326)) e!3521483)))

(declare-fun b!5727222 () Bool)

(assert (=> b!5727222 (= e!3521483 (nullableZipper!1671 ((_ map or) lt!2279357 lt!2279359)))))

(declare-fun b!5727223 () Bool)

(assert (=> b!5727223 (= e!3521483 (matchZipper!1863 (derivationStepZipper!1808 ((_ map or) lt!2279357 lt!2279359) (head!12122 (t!376803 s!2326))) (tail!11217 (t!376803 s!2326))))))

(assert (= (and d!1806590 c!1010450) b!5727222))

(assert (= (and d!1806590 (not c!1010450)) b!5727223))

(assert (=> d!1806590 m!6679632))

(declare-fun m!6679656 () Bool)

(assert (=> b!5727222 m!6679656))

(assert (=> b!5727223 m!6679636))

(assert (=> b!5727223 m!6679636))

(declare-fun m!6679658 () Bool)

(assert (=> b!5727223 m!6679658))

(assert (=> b!5727223 m!6679640))

(assert (=> b!5727223 m!6679658))

(assert (=> b!5727223 m!6679640))

(declare-fun m!6679660 () Bool)

(assert (=> b!5727223 m!6679660))

(assert (=> b!5726467 d!1806590))

(declare-fun b!5727233 () Bool)

(declare-fun e!3521489 () List!63475)

(assert (=> b!5727233 (= e!3521489 (Cons!63351 (h!69799 (_1!36125 lt!2279358)) (++!13923 (t!376803 (_1!36125 lt!2279358)) (_2!36125 lt!2279358))))))

(declare-fun d!1806592 () Bool)

(declare-fun e!3521488 () Bool)

(assert (=> d!1806592 e!3521488))

(declare-fun res!2417828 () Bool)

(assert (=> d!1806592 (=> (not res!2417828) (not e!3521488))))

(declare-fun lt!2279481 () List!63475)

(declare-fun content!11521 (List!63475) (InoxSet C!31720))

(assert (=> d!1806592 (= res!2417828 (= (content!11521 lt!2279481) ((_ map or) (content!11521 (_1!36125 lt!2279358)) (content!11521 (_2!36125 lt!2279358)))))))

(assert (=> d!1806592 (= lt!2279481 e!3521489)))

(declare-fun c!1010453 () Bool)

(assert (=> d!1806592 (= c!1010453 ((_ is Nil!63351) (_1!36125 lt!2279358)))))

(assert (=> d!1806592 (= (++!13923 (_1!36125 lt!2279358) (_2!36125 lt!2279358)) lt!2279481)))

(declare-fun b!5727234 () Bool)

(declare-fun res!2417829 () Bool)

(assert (=> b!5727234 (=> (not res!2417829) (not e!3521488))))

(declare-fun size!40037 (List!63475) Int)

(assert (=> b!5727234 (= res!2417829 (= (size!40037 lt!2279481) (+ (size!40037 (_1!36125 lt!2279358)) (size!40037 (_2!36125 lt!2279358)))))))

(declare-fun b!5727235 () Bool)

(assert (=> b!5727235 (= e!3521488 (or (not (= (_2!36125 lt!2279358) Nil!63351)) (= lt!2279481 (_1!36125 lt!2279358))))))

(declare-fun b!5727232 () Bool)

(assert (=> b!5727232 (= e!3521489 (_2!36125 lt!2279358))))

(assert (= (and d!1806592 c!1010453) b!5727232))

(assert (= (and d!1806592 (not c!1010453)) b!5727233))

(assert (= (and d!1806592 res!2417828) b!5727234))

(assert (= (and b!5727234 res!2417829) b!5727235))

(declare-fun m!6679662 () Bool)

(assert (=> b!5727233 m!6679662))

(declare-fun m!6679664 () Bool)

(assert (=> d!1806592 m!6679664))

(declare-fun m!6679666 () Bool)

(assert (=> d!1806592 m!6679666))

(declare-fun m!6679668 () Bool)

(assert (=> d!1806592 m!6679668))

(declare-fun m!6679670 () Bool)

(assert (=> b!5727234 m!6679670))

(declare-fun m!6679672 () Bool)

(assert (=> b!5727234 m!6679672))

(declare-fun m!6679674 () Bool)

(assert (=> b!5727234 m!6679674))

(assert (=> b!5726468 d!1806592))

(declare-fun d!1806594 () Bool)

(assert (=> d!1806594 (= (get!21843 lt!2279330) (v!51788 lt!2279330))))

(assert (=> b!5726468 d!1806594))

(declare-fun d!1806596 () Bool)

(assert (=> d!1806596 (isDefined!12437 (findConcatSeparationZippers!112 lt!2279345 (store ((as const (Array Context!10218 Bool)) false) lt!2279363 true) Nil!63351 s!2326 s!2326))))

(declare-fun lt!2279484 () Unit!156432)

(declare-fun choose!43311 ((InoxSet Context!10218) Context!10218 List!63475) Unit!156432)

(assert (=> d!1806596 (= lt!2279484 (choose!43311 lt!2279345 lt!2279363 s!2326))))

(assert (=> d!1806596 (matchZipper!1863 (appendTo!104 lt!2279345 lt!2279363) s!2326)))

(assert (=> d!1806596 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!112 lt!2279345 lt!2279363 s!2326) lt!2279484)))

(declare-fun bs!1339192 () Bool)

(assert (= bs!1339192 d!1806596))

(declare-fun m!6679676 () Bool)

(assert (=> bs!1339192 m!6679676))

(declare-fun m!6679678 () Bool)

(assert (=> bs!1339192 m!6679678))

(assert (=> bs!1339192 m!6678996))

(declare-fun m!6679680 () Bool)

(assert (=> bs!1339192 m!6679680))

(assert (=> bs!1339192 m!6679052))

(assert (=> bs!1339192 m!6679676))

(declare-fun m!6679682 () Bool)

(assert (=> bs!1339192 m!6679682))

(assert (=> bs!1339192 m!6679052))

(assert (=> bs!1339192 m!6678996))

(assert (=> b!5726468 d!1806596))

(declare-fun b!5727254 () Bool)

(declare-fun e!3521503 () Option!15734)

(assert (=> b!5727254 (= e!3521503 None!15733)))

(declare-fun b!5727255 () Bool)

(declare-fun res!2417844 () Bool)

(declare-fun e!3521504 () Bool)

(assert (=> b!5727255 (=> (not res!2417844) (not e!3521504))))

(declare-fun lt!2279492 () Option!15734)

(assert (=> b!5727255 (= res!2417844 (matchZipper!1863 lt!2279345 (_1!36125 (get!21843 lt!2279492))))))

(declare-fun b!5727256 () Bool)

(declare-fun lt!2279491 () Unit!156432)

(declare-fun lt!2279493 () Unit!156432)

(assert (=> b!5727256 (= lt!2279491 lt!2279493)))

(assert (=> b!5727256 (= (++!13923 (++!13923 Nil!63351 (Cons!63351 (h!69799 s!2326) Nil!63351)) (t!376803 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2074 (List!63475 C!31720 List!63475 List!63475) Unit!156432)

(assert (=> b!5727256 (= lt!2279493 (lemmaMoveElementToOtherListKeepsConcatEq!2074 Nil!63351 (h!69799 s!2326) (t!376803 s!2326) s!2326))))

(assert (=> b!5727256 (= e!3521503 (findConcatSeparationZippers!112 lt!2279345 lt!2279333 (++!13923 Nil!63351 (Cons!63351 (h!69799 s!2326) Nil!63351)) (t!376803 s!2326) s!2326))))

(declare-fun b!5727257 () Bool)

(assert (=> b!5727257 (= e!3521504 (= (++!13923 (_1!36125 (get!21843 lt!2279492)) (_2!36125 (get!21843 lt!2279492))) s!2326))))

(declare-fun b!5727258 () Bool)

(declare-fun e!3521502 () Bool)

(assert (=> b!5727258 (= e!3521502 (matchZipper!1863 lt!2279333 s!2326))))

(declare-fun b!5727259 () Bool)

(declare-fun res!2417841 () Bool)

(assert (=> b!5727259 (=> (not res!2417841) (not e!3521504))))

(assert (=> b!5727259 (= res!2417841 (matchZipper!1863 lt!2279333 (_2!36125 (get!21843 lt!2279492))))))

(declare-fun b!5727261 () Bool)

(declare-fun e!3521501 () Option!15734)

(assert (=> b!5727261 (= e!3521501 e!3521503)))

(declare-fun c!1010458 () Bool)

(assert (=> b!5727261 (= c!1010458 ((_ is Nil!63351) s!2326))))

(declare-fun b!5727262 () Bool)

(assert (=> b!5727262 (= e!3521501 (Some!15733 (tuple2!65645 Nil!63351 s!2326)))))

(declare-fun b!5727260 () Bool)

(declare-fun e!3521500 () Bool)

(assert (=> b!5727260 (= e!3521500 (not (isDefined!12437 lt!2279492)))))

(declare-fun d!1806598 () Bool)

(assert (=> d!1806598 e!3521500))

(declare-fun res!2417842 () Bool)

(assert (=> d!1806598 (=> res!2417842 e!3521500)))

(assert (=> d!1806598 (= res!2417842 e!3521504)))

(declare-fun res!2417843 () Bool)

(assert (=> d!1806598 (=> (not res!2417843) (not e!3521504))))

(assert (=> d!1806598 (= res!2417843 (isDefined!12437 lt!2279492))))

(assert (=> d!1806598 (= lt!2279492 e!3521501)))

(declare-fun c!1010459 () Bool)

(assert (=> d!1806598 (= c!1010459 e!3521502)))

(declare-fun res!2417840 () Bool)

(assert (=> d!1806598 (=> (not res!2417840) (not e!3521502))))

(assert (=> d!1806598 (= res!2417840 (matchZipper!1863 lt!2279345 Nil!63351))))

(assert (=> d!1806598 (= (++!13923 Nil!63351 s!2326) s!2326)))

(assert (=> d!1806598 (= (findConcatSeparationZippers!112 lt!2279345 lt!2279333 Nil!63351 s!2326 s!2326) lt!2279492)))

(assert (= (and d!1806598 res!2417840) b!5727258))

(assert (= (and d!1806598 c!1010459) b!5727262))

(assert (= (and d!1806598 (not c!1010459)) b!5727261))

(assert (= (and b!5727261 c!1010458) b!5727254))

(assert (= (and b!5727261 (not c!1010458)) b!5727256))

(assert (= (and d!1806598 res!2417843) b!5727255))

(assert (= (and b!5727255 res!2417844) b!5727259))

(assert (= (and b!5727259 res!2417841) b!5727257))

(assert (= (and d!1806598 (not res!2417842)) b!5727260))

(declare-fun m!6679684 () Bool)

(assert (=> b!5727256 m!6679684))

(assert (=> b!5727256 m!6679684))

(declare-fun m!6679686 () Bool)

(assert (=> b!5727256 m!6679686))

(declare-fun m!6679688 () Bool)

(assert (=> b!5727256 m!6679688))

(assert (=> b!5727256 m!6679684))

(declare-fun m!6679690 () Bool)

(assert (=> b!5727256 m!6679690))

(declare-fun m!6679692 () Bool)

(assert (=> b!5727259 m!6679692))

(declare-fun m!6679694 () Bool)

(assert (=> b!5727259 m!6679694))

(declare-fun m!6679696 () Bool)

(assert (=> b!5727258 m!6679696))

(assert (=> b!5727255 m!6679692))

(declare-fun m!6679698 () Bool)

(assert (=> b!5727255 m!6679698))

(assert (=> b!5727257 m!6679692))

(declare-fun m!6679700 () Bool)

(assert (=> b!5727257 m!6679700))

(declare-fun m!6679702 () Bool)

(assert (=> d!1806598 m!6679702))

(declare-fun m!6679704 () Bool)

(assert (=> d!1806598 m!6679704))

(declare-fun m!6679706 () Bool)

(assert (=> d!1806598 m!6679706))

(assert (=> b!5727260 m!6679702))

(assert (=> b!5726468 d!1806598))

(declare-fun d!1806600 () Bool)

(declare-fun isEmpty!35230 (Option!15734) Bool)

(assert (=> d!1806600 (= (isDefined!12437 lt!2279330) (not (isEmpty!35230 lt!2279330)))))

(declare-fun bs!1339193 () Bool)

(assert (= bs!1339193 d!1806600))

(declare-fun m!6679708 () Bool)

(assert (=> bs!1339193 m!6679708))

(assert (=> b!5726468 d!1806600))

(declare-fun b!5727281 () Bool)

(declare-fun e!3521518 () Bool)

(declare-fun lt!2279500 () Option!15734)

(assert (=> b!5727281 (= e!3521518 (not (isDefined!12437 lt!2279500)))))

(declare-fun b!5727282 () Bool)

(declare-fun e!3521519 () Bool)

(assert (=> b!5727282 (= e!3521519 (matchR!7910 (regTwo!31962 r!7292) s!2326))))

(declare-fun b!5727283 () Bool)

(declare-fun res!2417859 () Bool)

(declare-fun e!3521517 () Bool)

(assert (=> b!5727283 (=> (not res!2417859) (not e!3521517))))

(assert (=> b!5727283 (= res!2417859 (matchR!7910 (regOne!31962 r!7292) (_1!36125 (get!21843 lt!2279500))))))

(declare-fun b!5727284 () Bool)

(assert (=> b!5727284 (= e!3521517 (= (++!13923 (_1!36125 (get!21843 lt!2279500)) (_2!36125 (get!21843 lt!2279500))) s!2326))))

(declare-fun b!5727285 () Bool)

(declare-fun e!3521516 () Option!15734)

(assert (=> b!5727285 (= e!3521516 (Some!15733 (tuple2!65645 Nil!63351 s!2326)))))

(declare-fun b!5727286 () Bool)

(declare-fun res!2417858 () Bool)

(assert (=> b!5727286 (=> (not res!2417858) (not e!3521517))))

(assert (=> b!5727286 (= res!2417858 (matchR!7910 (regTwo!31962 r!7292) (_2!36125 (get!21843 lt!2279500))))))

(declare-fun b!5727287 () Bool)

(declare-fun e!3521515 () Option!15734)

(assert (=> b!5727287 (= e!3521516 e!3521515)))

(declare-fun c!1010465 () Bool)

(assert (=> b!5727287 (= c!1010465 ((_ is Nil!63351) s!2326))))

(declare-fun b!5727289 () Bool)

(declare-fun lt!2279502 () Unit!156432)

(declare-fun lt!2279501 () Unit!156432)

(assert (=> b!5727289 (= lt!2279502 lt!2279501)))

(assert (=> b!5727289 (= (++!13923 (++!13923 Nil!63351 (Cons!63351 (h!69799 s!2326) Nil!63351)) (t!376803 s!2326)) s!2326)))

(assert (=> b!5727289 (= lt!2279501 (lemmaMoveElementToOtherListKeepsConcatEq!2074 Nil!63351 (h!69799 s!2326) (t!376803 s!2326) s!2326))))

(assert (=> b!5727289 (= e!3521515 (findConcatSeparation!2148 (regOne!31962 r!7292) (regTwo!31962 r!7292) (++!13923 Nil!63351 (Cons!63351 (h!69799 s!2326) Nil!63351)) (t!376803 s!2326) s!2326))))

(declare-fun b!5727288 () Bool)

(assert (=> b!5727288 (= e!3521515 None!15733)))

(declare-fun d!1806602 () Bool)

(assert (=> d!1806602 e!3521518))

(declare-fun res!2417855 () Bool)

(assert (=> d!1806602 (=> res!2417855 e!3521518)))

(assert (=> d!1806602 (= res!2417855 e!3521517)))

(declare-fun res!2417857 () Bool)

(assert (=> d!1806602 (=> (not res!2417857) (not e!3521517))))

(assert (=> d!1806602 (= res!2417857 (isDefined!12437 lt!2279500))))

(assert (=> d!1806602 (= lt!2279500 e!3521516)))

(declare-fun c!1010464 () Bool)

(assert (=> d!1806602 (= c!1010464 e!3521519)))

(declare-fun res!2417856 () Bool)

(assert (=> d!1806602 (=> (not res!2417856) (not e!3521519))))

(assert (=> d!1806602 (= res!2417856 (matchR!7910 (regOne!31962 r!7292) Nil!63351))))

(assert (=> d!1806602 (validRegex!7461 (regOne!31962 r!7292))))

(assert (=> d!1806602 (= (findConcatSeparation!2148 (regOne!31962 r!7292) (regTwo!31962 r!7292) Nil!63351 s!2326 s!2326) lt!2279500)))

(assert (= (and d!1806602 res!2417856) b!5727282))

(assert (= (and d!1806602 c!1010464) b!5727285))

(assert (= (and d!1806602 (not c!1010464)) b!5727287))

(assert (= (and b!5727287 c!1010465) b!5727288))

(assert (= (and b!5727287 (not c!1010465)) b!5727289))

(assert (= (and d!1806602 res!2417857) b!5727283))

(assert (= (and b!5727283 res!2417859) b!5727286))

(assert (= (and b!5727286 res!2417858) b!5727284))

(assert (= (and d!1806602 (not res!2417855)) b!5727281))

(declare-fun m!6679710 () Bool)

(assert (=> d!1806602 m!6679710))

(declare-fun m!6679712 () Bool)

(assert (=> d!1806602 m!6679712))

(declare-fun m!6679714 () Bool)

(assert (=> d!1806602 m!6679714))

(declare-fun m!6679716 () Bool)

(assert (=> b!5727284 m!6679716))

(declare-fun m!6679718 () Bool)

(assert (=> b!5727284 m!6679718))

(assert (=> b!5727283 m!6679716))

(declare-fun m!6679720 () Bool)

(assert (=> b!5727283 m!6679720))

(assert (=> b!5727289 m!6679684))

(assert (=> b!5727289 m!6679684))

(assert (=> b!5727289 m!6679686))

(assert (=> b!5727289 m!6679688))

(assert (=> b!5727289 m!6679684))

(declare-fun m!6679722 () Bool)

(assert (=> b!5727289 m!6679722))

(assert (=> b!5727281 m!6679710))

(assert (=> b!5727286 m!6679716))

(declare-fun m!6679724 () Bool)

(assert (=> b!5727286 m!6679724))

(declare-fun m!6679726 () Bool)

(assert (=> b!5727282 m!6679726))

(assert (=> b!5726471 d!1806602))

(declare-fun d!1806604 () Bool)

(declare-fun choose!43312 (Int) Bool)

(assert (=> d!1806604 (= (Exists!2825 lambda!309627) (choose!43312 lambda!309627))))

(declare-fun bs!1339194 () Bool)

(assert (= bs!1339194 d!1806604))

(declare-fun m!6679728 () Bool)

(assert (=> bs!1339194 m!6679728))

(assert (=> b!5726471 d!1806604))

(declare-fun d!1806606 () Bool)

(assert (=> d!1806606 (= (Exists!2825 lambda!309628) (choose!43312 lambda!309628))))

(declare-fun bs!1339195 () Bool)

(assert (= bs!1339195 d!1806606))

(declare-fun m!6679730 () Bool)

(assert (=> bs!1339195 m!6679730))

(assert (=> b!5726471 d!1806606))

(declare-fun bs!1339196 () Bool)

(declare-fun d!1806608 () Bool)

(assert (= bs!1339196 (and d!1806608 b!5726471)))

(declare-fun lambda!309698 () Int)

(assert (=> bs!1339196 (= lambda!309698 lambda!309627)))

(assert (=> bs!1339196 (not (= lambda!309698 lambda!309628))))

(declare-fun bs!1339197 () Bool)

(assert (= bs!1339197 (and d!1806608 b!5726810)))

(assert (=> bs!1339197 (not (= lambda!309698 lambda!309645))))

(declare-fun bs!1339198 () Bool)

(assert (= bs!1339198 (and d!1806608 b!5726807)))

(assert (=> bs!1339198 (not (= lambda!309698 lambda!309649))))

(assert (=> d!1806608 true))

(assert (=> d!1806608 true))

(assert (=> d!1806608 true))

(assert (=> d!1806608 (= (isDefined!12437 (findConcatSeparation!2148 (regOne!31962 r!7292) (regTwo!31962 r!7292) Nil!63351 s!2326 s!2326)) (Exists!2825 lambda!309698))))

(declare-fun lt!2279505 () Unit!156432)

(declare-fun choose!43313 (Regex!15725 Regex!15725 List!63475) Unit!156432)

(assert (=> d!1806608 (= lt!2279505 (choose!43313 (regOne!31962 r!7292) (regTwo!31962 r!7292) s!2326))))

(assert (=> d!1806608 (validRegex!7461 (regOne!31962 r!7292))))

(assert (=> d!1806608 (= (lemmaFindConcatSeparationEquivalentToExists!1912 (regOne!31962 r!7292) (regTwo!31962 r!7292) s!2326) lt!2279505)))

(declare-fun bs!1339199 () Bool)

(assert (= bs!1339199 d!1806608))

(declare-fun m!6679732 () Bool)

(assert (=> bs!1339199 m!6679732))

(assert (=> bs!1339199 m!6679088))

(declare-fun m!6679734 () Bool)

(assert (=> bs!1339199 m!6679734))

(assert (=> bs!1339199 m!6679714))

(assert (=> bs!1339199 m!6679088))

(assert (=> bs!1339199 m!6679090))

(assert (=> b!5726471 d!1806608))

(declare-fun bs!1339200 () Bool)

(declare-fun d!1806610 () Bool)

(assert (= bs!1339200 (and d!1806610 b!5726807)))

(declare-fun lambda!309703 () Int)

(assert (=> bs!1339200 (not (= lambda!309703 lambda!309649))))

(declare-fun bs!1339201 () Bool)

(assert (= bs!1339201 (and d!1806610 d!1806608)))

(assert (=> bs!1339201 (= lambda!309703 lambda!309698)))

(declare-fun bs!1339202 () Bool)

(assert (= bs!1339202 (and d!1806610 b!5726810)))

(assert (=> bs!1339202 (not (= lambda!309703 lambda!309645))))

(declare-fun bs!1339203 () Bool)

(assert (= bs!1339203 (and d!1806610 b!5726471)))

(assert (=> bs!1339203 (= lambda!309703 lambda!309627)))

(assert (=> bs!1339203 (not (= lambda!309703 lambda!309628))))

(assert (=> d!1806610 true))

(assert (=> d!1806610 true))

(assert (=> d!1806610 true))

(declare-fun lambda!309704 () Int)

(assert (=> bs!1339200 (= lambda!309704 lambda!309649)))

(assert (=> bs!1339201 (not (= lambda!309704 lambda!309698))))

(assert (=> bs!1339203 (not (= lambda!309704 lambda!309627))))

(assert (=> bs!1339203 (= lambda!309704 lambda!309628)))

(assert (=> bs!1339202 (not (= lambda!309704 lambda!309645))))

(declare-fun bs!1339204 () Bool)

(assert (= bs!1339204 d!1806610))

(assert (=> bs!1339204 (not (= lambda!309704 lambda!309703))))

(assert (=> d!1806610 true))

(assert (=> d!1806610 true))

(assert (=> d!1806610 true))

(assert (=> d!1806610 (= (Exists!2825 lambda!309703) (Exists!2825 lambda!309704))))

(declare-fun lt!2279508 () Unit!156432)

(declare-fun choose!43314 (Regex!15725 Regex!15725 List!63475) Unit!156432)

(assert (=> d!1806610 (= lt!2279508 (choose!43314 (regOne!31962 r!7292) (regTwo!31962 r!7292) s!2326))))

(assert (=> d!1806610 (validRegex!7461 (regOne!31962 r!7292))))

(assert (=> d!1806610 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1454 (regOne!31962 r!7292) (regTwo!31962 r!7292) s!2326) lt!2279508)))

(declare-fun m!6679736 () Bool)

(assert (=> bs!1339204 m!6679736))

(declare-fun m!6679738 () Bool)

(assert (=> bs!1339204 m!6679738))

(declare-fun m!6679740 () Bool)

(assert (=> bs!1339204 m!6679740))

(assert (=> bs!1339204 m!6679714))

(assert (=> b!5726471 d!1806610))

(declare-fun d!1806612 () Bool)

(assert (=> d!1806612 (= (isDefined!12437 (findConcatSeparation!2148 (regOne!31962 r!7292) (regTwo!31962 r!7292) Nil!63351 s!2326 s!2326)) (not (isEmpty!35230 (findConcatSeparation!2148 (regOne!31962 r!7292) (regTwo!31962 r!7292) Nil!63351 s!2326 s!2326))))))

(declare-fun bs!1339205 () Bool)

(assert (= bs!1339205 d!1806612))

(assert (=> bs!1339205 m!6679088))

(declare-fun m!6679742 () Bool)

(assert (=> bs!1339205 m!6679742))

(assert (=> b!5726471 d!1806612))

(declare-fun d!1806614 () Bool)

(declare-fun c!1010466 () Bool)

(assert (=> d!1806614 (= c!1010466 (isEmpty!35229 (t!376803 s!2326)))))

(declare-fun e!3521526 () Bool)

(assert (=> d!1806614 (= (matchZipper!1863 lt!2279327 (t!376803 s!2326)) e!3521526)))

(declare-fun b!5727302 () Bool)

(assert (=> b!5727302 (= e!3521526 (nullableZipper!1671 lt!2279327))))

(declare-fun b!5727303 () Bool)

(assert (=> b!5727303 (= e!3521526 (matchZipper!1863 (derivationStepZipper!1808 lt!2279327 (head!12122 (t!376803 s!2326))) (tail!11217 (t!376803 s!2326))))))

(assert (= (and d!1806614 c!1010466) b!5727302))

(assert (= (and d!1806614 (not c!1010466)) b!5727303))

(assert (=> d!1806614 m!6679632))

(declare-fun m!6679744 () Bool)

(assert (=> b!5727302 m!6679744))

(assert (=> b!5727303 m!6679636))

(assert (=> b!5727303 m!6679636))

(declare-fun m!6679746 () Bool)

(assert (=> b!5727303 m!6679746))

(assert (=> b!5727303 m!6679640))

(assert (=> b!5727303 m!6679746))

(assert (=> b!5727303 m!6679640))

(declare-fun m!6679748 () Bool)

(assert (=> b!5727303 m!6679748))

(assert (=> b!5726472 d!1806614))

(declare-fun d!1806616 () Bool)

(declare-fun c!1010467 () Bool)

(assert (=> d!1806616 (= c!1010467 (isEmpty!35229 s!2326))))

(declare-fun e!3521527 () Bool)

(assert (=> d!1806616 (= (matchZipper!1863 lt!2279362 s!2326) e!3521527)))

(declare-fun b!5727304 () Bool)

(assert (=> b!5727304 (= e!3521527 (nullableZipper!1671 lt!2279362))))

(declare-fun b!5727305 () Bool)

(assert (=> b!5727305 (= e!3521527 (matchZipper!1863 (derivationStepZipper!1808 lt!2279362 (head!12122 s!2326)) (tail!11217 s!2326)))))

(assert (= (and d!1806616 c!1010467) b!5727304))

(assert (= (and d!1806616 (not c!1010467)) b!5727305))

(assert (=> d!1806616 m!6679304))

(declare-fun m!6679750 () Bool)

(assert (=> b!5727304 m!6679750))

(assert (=> b!5727305 m!6679374))

(assert (=> b!5727305 m!6679374))

(declare-fun m!6679752 () Bool)

(assert (=> b!5727305 m!6679752))

(assert (=> b!5727305 m!6679376))

(assert (=> b!5727305 m!6679752))

(assert (=> b!5727305 m!6679376))

(declare-fun m!6679754 () Bool)

(assert (=> b!5727305 m!6679754))

(assert (=> b!5726472 d!1806616))

(declare-fun b!5727306 () Bool)

(declare-fun res!2417872 () Bool)

(declare-fun e!3521533 () Bool)

(assert (=> b!5727306 (=> (not res!2417872) (not e!3521533))))

(declare-fun call!437895 () Bool)

(assert (=> b!5727306 (= res!2417872 (not call!437895))))

(declare-fun b!5727307 () Bool)

(assert (=> b!5727307 (= e!3521533 (= (head!12122 s!2326) (c!1010233 lt!2279364)))))

(declare-fun b!5727308 () Bool)

(declare-fun e!3521534 () Bool)

(declare-fun e!3521528 () Bool)

(assert (=> b!5727308 (= e!3521534 e!3521528)))

(declare-fun res!2417878 () Bool)

(assert (=> b!5727308 (=> res!2417878 e!3521528)))

(assert (=> b!5727308 (= res!2417878 call!437895)))

(declare-fun b!5727309 () Bool)

(declare-fun e!3521529 () Bool)

(declare-fun lt!2279509 () Bool)

(assert (=> b!5727309 (= e!3521529 (= lt!2279509 call!437895))))

(declare-fun b!5727310 () Bool)

(declare-fun res!2417877 () Bool)

(assert (=> b!5727310 (=> (not res!2417877) (not e!3521533))))

(assert (=> b!5727310 (= res!2417877 (isEmpty!35229 (tail!11217 s!2326)))))

(declare-fun b!5727311 () Bool)

(declare-fun res!2417876 () Bool)

(assert (=> b!5727311 (=> res!2417876 e!3521528)))

(assert (=> b!5727311 (= res!2417876 (not (isEmpty!35229 (tail!11217 s!2326))))))

(declare-fun b!5727312 () Bool)

(declare-fun res!2417875 () Bool)

(declare-fun e!3521531 () Bool)

(assert (=> b!5727312 (=> res!2417875 e!3521531)))

(assert (=> b!5727312 (= res!2417875 e!3521533)))

(declare-fun res!2417879 () Bool)

(assert (=> b!5727312 (=> (not res!2417879) (not e!3521533))))

(assert (=> b!5727312 (= res!2417879 lt!2279509)))

(declare-fun b!5727313 () Bool)

(declare-fun e!3521532 () Bool)

(assert (=> b!5727313 (= e!3521532 (not lt!2279509))))

(declare-fun d!1806618 () Bool)

(assert (=> d!1806618 e!3521529))

(declare-fun c!1010468 () Bool)

(assert (=> d!1806618 (= c!1010468 ((_ is EmptyExpr!15725) lt!2279364))))

(declare-fun e!3521530 () Bool)

(assert (=> d!1806618 (= lt!2279509 e!3521530)))

(declare-fun c!1010469 () Bool)

(assert (=> d!1806618 (= c!1010469 (isEmpty!35229 s!2326))))

(assert (=> d!1806618 (validRegex!7461 lt!2279364)))

(assert (=> d!1806618 (= (matchR!7910 lt!2279364 s!2326) lt!2279509)))

(declare-fun b!5727314 () Bool)

(assert (=> b!5727314 (= e!3521530 (nullable!5757 lt!2279364))))

(declare-fun b!5727315 () Bool)

(assert (=> b!5727315 (= e!3521530 (matchR!7910 (derivativeStep!4523 lt!2279364 (head!12122 s!2326)) (tail!11217 s!2326)))))

(declare-fun b!5727316 () Bool)

(assert (=> b!5727316 (= e!3521531 e!3521534)))

(declare-fun res!2417873 () Bool)

(assert (=> b!5727316 (=> (not res!2417873) (not e!3521534))))

(assert (=> b!5727316 (= res!2417873 (not lt!2279509))))

(declare-fun b!5727317 () Bool)

(declare-fun res!2417874 () Bool)

(assert (=> b!5727317 (=> res!2417874 e!3521531)))

(assert (=> b!5727317 (= res!2417874 (not ((_ is ElementMatch!15725) lt!2279364)))))

(assert (=> b!5727317 (= e!3521532 e!3521531)))

(declare-fun b!5727318 () Bool)

(assert (=> b!5727318 (= e!3521529 e!3521532)))

(declare-fun c!1010470 () Bool)

(assert (=> b!5727318 (= c!1010470 ((_ is EmptyLang!15725) lt!2279364))))

(declare-fun b!5727319 () Bool)

(assert (=> b!5727319 (= e!3521528 (not (= (head!12122 s!2326) (c!1010233 lt!2279364))))))

(declare-fun bm!437890 () Bool)

(assert (=> bm!437890 (= call!437895 (isEmpty!35229 s!2326))))

(assert (= (and d!1806618 c!1010469) b!5727314))

(assert (= (and d!1806618 (not c!1010469)) b!5727315))

(assert (= (and d!1806618 c!1010468) b!5727309))

(assert (= (and d!1806618 (not c!1010468)) b!5727318))

(assert (= (and b!5727318 c!1010470) b!5727313))

(assert (= (and b!5727318 (not c!1010470)) b!5727317))

(assert (= (and b!5727317 (not res!2417874)) b!5727312))

(assert (= (and b!5727312 res!2417879) b!5727306))

(assert (= (and b!5727306 res!2417872) b!5727310))

(assert (= (and b!5727310 res!2417877) b!5727307))

(assert (= (and b!5727312 (not res!2417875)) b!5727316))

(assert (= (and b!5727316 res!2417873) b!5727308))

(assert (= (and b!5727308 (not res!2417878)) b!5727311))

(assert (= (and b!5727311 (not res!2417876)) b!5727319))

(assert (= (or b!5727309 b!5727306 b!5727308) bm!437890))

(assert (=> d!1806618 m!6679304))

(declare-fun m!6679756 () Bool)

(assert (=> d!1806618 m!6679756))

(assert (=> b!5727307 m!6679374))

(assert (=> bm!437890 m!6679304))

(assert (=> b!5727319 m!6679374))

(assert (=> b!5727310 m!6679376))

(assert (=> b!5727310 m!6679376))

(assert (=> b!5727310 m!6679378))

(assert (=> b!5727311 m!6679376))

(assert (=> b!5727311 m!6679376))

(assert (=> b!5727311 m!6679378))

(assert (=> b!5727315 m!6679374))

(assert (=> b!5727315 m!6679374))

(declare-fun m!6679758 () Bool)

(assert (=> b!5727315 m!6679758))

(assert (=> b!5727315 m!6679376))

(assert (=> b!5727315 m!6679758))

(assert (=> b!5727315 m!6679376))

(declare-fun m!6679760 () Bool)

(assert (=> b!5727315 m!6679760))

(declare-fun m!6679762 () Bool)

(assert (=> b!5727314 m!6679762))

(assert (=> b!5726470 d!1806618))

(declare-fun bs!1339206 () Bool)

(declare-fun b!5727330 () Bool)

(assert (= bs!1339206 (and b!5727330 b!5726807)))

(declare-fun lambda!309705 () Int)

(assert (=> bs!1339206 (not (= lambda!309705 lambda!309649))))

(declare-fun bs!1339207 () Bool)

(assert (= bs!1339207 (and b!5727330 d!1806608)))

(assert (=> bs!1339207 (not (= lambda!309705 lambda!309698))))

(declare-fun bs!1339208 () Bool)

(assert (= bs!1339208 (and b!5727330 d!1806610)))

(assert (=> bs!1339208 (not (= lambda!309705 lambda!309704))))

(declare-fun bs!1339209 () Bool)

(assert (= bs!1339209 (and b!5727330 b!5726471)))

(assert (=> bs!1339209 (not (= lambda!309705 lambda!309627))))

(assert (=> bs!1339209 (not (= lambda!309705 lambda!309628))))

(declare-fun bs!1339210 () Bool)

(assert (= bs!1339210 (and b!5727330 b!5726810)))

(assert (=> bs!1339210 (= (and (= (reg!16054 lt!2279364) (reg!16054 r!7292)) (= lt!2279364 r!7292)) (= lambda!309705 lambda!309645))))

(assert (=> bs!1339208 (not (= lambda!309705 lambda!309703))))

(assert (=> b!5727330 true))

(assert (=> b!5727330 true))

(declare-fun bs!1339211 () Bool)

(declare-fun b!5727327 () Bool)

(assert (= bs!1339211 (and b!5727327 b!5726807)))

(declare-fun lambda!309706 () Int)

(assert (=> bs!1339211 (= (and (= (regOne!31962 lt!2279364) (regOne!31962 r!7292)) (= (regTwo!31962 lt!2279364) (regTwo!31962 r!7292))) (= lambda!309706 lambda!309649))))

(declare-fun bs!1339212 () Bool)

(assert (= bs!1339212 (and b!5727327 d!1806608)))

(assert (=> bs!1339212 (not (= lambda!309706 lambda!309698))))

(declare-fun bs!1339213 () Bool)

(assert (= bs!1339213 (and b!5727327 b!5726471)))

(assert (=> bs!1339213 (not (= lambda!309706 lambda!309627))))

(assert (=> bs!1339213 (= (and (= (regOne!31962 lt!2279364) (regOne!31962 r!7292)) (= (regTwo!31962 lt!2279364) (regTwo!31962 r!7292))) (= lambda!309706 lambda!309628))))

(declare-fun bs!1339214 () Bool)

(assert (= bs!1339214 (and b!5727327 b!5726810)))

(assert (=> bs!1339214 (not (= lambda!309706 lambda!309645))))

(declare-fun bs!1339215 () Bool)

(assert (= bs!1339215 (and b!5727327 d!1806610)))

(assert (=> bs!1339215 (not (= lambda!309706 lambda!309703))))

(declare-fun bs!1339216 () Bool)

(assert (= bs!1339216 (and b!5727327 b!5727330)))

(assert (=> bs!1339216 (not (= lambda!309706 lambda!309705))))

(assert (=> bs!1339215 (= (and (= (regOne!31962 lt!2279364) (regOne!31962 r!7292)) (= (regTwo!31962 lt!2279364) (regTwo!31962 r!7292))) (= lambda!309706 lambda!309704))))

(assert (=> b!5727327 true))

(assert (=> b!5727327 true))

(declare-fun b!5727320 () Bool)

(declare-fun e!3521535 () Bool)

(declare-fun e!3521538 () Bool)

(assert (=> b!5727320 (= e!3521535 e!3521538)))

(declare-fun c!1010471 () Bool)

(assert (=> b!5727320 (= c!1010471 ((_ is Star!15725) lt!2279364))))

(declare-fun call!437897 () Bool)

(declare-fun bm!437891 () Bool)

(assert (=> bm!437891 (= call!437897 (Exists!2825 (ite c!1010471 lambda!309705 lambda!309706)))))

(declare-fun b!5727321 () Bool)

(declare-fun c!1010472 () Bool)

(assert (=> b!5727321 (= c!1010472 ((_ is Union!15725) lt!2279364))))

(declare-fun e!3521536 () Bool)

(assert (=> b!5727321 (= e!3521536 e!3521535)))

(declare-fun bm!437892 () Bool)

(declare-fun call!437896 () Bool)

(assert (=> bm!437892 (= call!437896 (isEmpty!35229 s!2326))))

(declare-fun b!5727322 () Bool)

(declare-fun e!3521537 () Bool)

(assert (=> b!5727322 (= e!3521537 call!437896)))

(declare-fun b!5727323 () Bool)

(assert (=> b!5727323 (= e!3521536 (= s!2326 (Cons!63351 (c!1010233 lt!2279364) Nil!63351)))))

(declare-fun b!5727325 () Bool)

(declare-fun res!2417882 () Bool)

(declare-fun e!3521541 () Bool)

(assert (=> b!5727325 (=> res!2417882 e!3521541)))

(assert (=> b!5727325 (= res!2417882 call!437896)))

(assert (=> b!5727325 (= e!3521538 e!3521541)))

(declare-fun b!5727326 () Bool)

(declare-fun c!1010474 () Bool)

(assert (=> b!5727326 (= c!1010474 ((_ is ElementMatch!15725) lt!2279364))))

(declare-fun e!3521539 () Bool)

(assert (=> b!5727326 (= e!3521539 e!3521536)))

(assert (=> b!5727327 (= e!3521538 call!437897)))

(declare-fun b!5727328 () Bool)

(assert (=> b!5727328 (= e!3521537 e!3521539)))

(declare-fun res!2417880 () Bool)

(assert (=> b!5727328 (= res!2417880 (not ((_ is EmptyLang!15725) lt!2279364)))))

(assert (=> b!5727328 (=> (not res!2417880) (not e!3521539))))

(declare-fun b!5727329 () Bool)

(declare-fun e!3521540 () Bool)

(assert (=> b!5727329 (= e!3521540 (matchRSpec!2828 (regTwo!31963 lt!2279364) s!2326))))

(assert (=> b!5727330 (= e!3521541 call!437897)))

(declare-fun d!1806620 () Bool)

(declare-fun c!1010473 () Bool)

(assert (=> d!1806620 (= c!1010473 ((_ is EmptyExpr!15725) lt!2279364))))

(assert (=> d!1806620 (= (matchRSpec!2828 lt!2279364 s!2326) e!3521537)))

(declare-fun b!5727324 () Bool)

(assert (=> b!5727324 (= e!3521535 e!3521540)))

(declare-fun res!2417881 () Bool)

(assert (=> b!5727324 (= res!2417881 (matchRSpec!2828 (regOne!31963 lt!2279364) s!2326))))

(assert (=> b!5727324 (=> res!2417881 e!3521540)))

(assert (= (and d!1806620 c!1010473) b!5727322))

(assert (= (and d!1806620 (not c!1010473)) b!5727328))

(assert (= (and b!5727328 res!2417880) b!5727326))

(assert (= (and b!5727326 c!1010474) b!5727323))

(assert (= (and b!5727326 (not c!1010474)) b!5727321))

(assert (= (and b!5727321 c!1010472) b!5727324))

(assert (= (and b!5727321 (not c!1010472)) b!5727320))

(assert (= (and b!5727324 (not res!2417881)) b!5727329))

(assert (= (and b!5727320 c!1010471) b!5727325))

(assert (= (and b!5727320 (not c!1010471)) b!5727327))

(assert (= (and b!5727325 (not res!2417882)) b!5727330))

(assert (= (or b!5727330 b!5727327) bm!437891))

(assert (= (or b!5727322 b!5727325) bm!437892))

(declare-fun m!6679764 () Bool)

(assert (=> bm!437891 m!6679764))

(assert (=> bm!437892 m!6679304))

(declare-fun m!6679766 () Bool)

(assert (=> b!5727329 m!6679766))

(declare-fun m!6679768 () Bool)

(assert (=> b!5727324 m!6679768))

(assert (=> b!5726470 d!1806620))

(declare-fun d!1806622 () Bool)

(assert (=> d!1806622 (= (matchR!7910 lt!2279364 s!2326) (matchRSpec!2828 lt!2279364 s!2326))))

(declare-fun lt!2279510 () Unit!156432)

(assert (=> d!1806622 (= lt!2279510 (choose!43299 lt!2279364 s!2326))))

(assert (=> d!1806622 (validRegex!7461 lt!2279364)))

(assert (=> d!1806622 (= (mainMatchTheorem!2828 lt!2279364 s!2326) lt!2279510)))

(declare-fun bs!1339217 () Bool)

(assert (= bs!1339217 d!1806622))

(assert (=> bs!1339217 m!6679080))

(assert (=> bs!1339217 m!6679082))

(declare-fun m!6679770 () Bool)

(assert (=> bs!1339217 m!6679770))

(assert (=> bs!1339217 m!6679756))

(assert (=> b!5726470 d!1806622))

(declare-fun d!1806624 () Bool)

(declare-fun lt!2279511 () Regex!15725)

(assert (=> d!1806624 (validRegex!7461 lt!2279511)))

(assert (=> d!1806624 (= lt!2279511 (generalisedUnion!1588 (unfocusZipperList!1153 (Cons!63352 lt!2279332 Nil!63352))))))

(assert (=> d!1806624 (= (unfocusZipper!1467 (Cons!63352 lt!2279332 Nil!63352)) lt!2279511)))

(declare-fun bs!1339218 () Bool)

(assert (= bs!1339218 d!1806624))

(declare-fun m!6679772 () Bool)

(assert (=> bs!1339218 m!6679772))

(declare-fun m!6679774 () Bool)

(assert (=> bs!1339218 m!6679774))

(assert (=> bs!1339218 m!6679774))

(declare-fun m!6679776 () Bool)

(assert (=> bs!1339218 m!6679776))

(assert (=> b!5726491 d!1806624))

(assert (=> b!5726451 d!1806588))

(declare-fun d!1806626 () Bool)

(declare-fun lt!2279512 () Regex!15725)

(assert (=> d!1806626 (validRegex!7461 lt!2279512)))

(assert (=> d!1806626 (= lt!2279512 (generalisedUnion!1588 (unfocusZipperList!1153 (Cons!63352 lt!2279363 Nil!63352))))))

(assert (=> d!1806626 (= (unfocusZipper!1467 (Cons!63352 lt!2279363 Nil!63352)) lt!2279512)))

(declare-fun bs!1339219 () Bool)

(assert (= bs!1339219 d!1806626))

(declare-fun m!6679778 () Bool)

(assert (=> bs!1339219 m!6679778))

(declare-fun m!6679780 () Bool)

(assert (=> bs!1339219 m!6679780))

(assert (=> bs!1339219 m!6679780))

(declare-fun m!6679782 () Bool)

(assert (=> bs!1339219 m!6679782))

(assert (=> b!5726474 d!1806626))

(declare-fun bs!1339220 () Bool)

(declare-fun d!1806628 () Bool)

(assert (= bs!1339220 (and d!1806628 d!1806554)))

(declare-fun lambda!309707 () Int)

(assert (=> bs!1339220 (= lambda!309707 lambda!309689)))

(declare-fun bs!1339221 () Bool)

(assert (= bs!1339221 (and d!1806628 d!1806492)))

(assert (=> bs!1339221 (= lambda!309707 lambda!309663)))

(declare-fun bs!1339222 () Bool)

(assert (= bs!1339222 (and d!1806628 d!1806582)))

(assert (=> bs!1339222 (= lambda!309707 lambda!309695)))

(declare-fun bs!1339223 () Bool)

(assert (= bs!1339223 (and d!1806628 b!5726464)))

(assert (=> bs!1339223 (= lambda!309707 lambda!309631)))

(declare-fun bs!1339224 () Bool)

(assert (= bs!1339224 (and d!1806628 d!1806568)))

(assert (=> bs!1339224 (= lambda!309707 lambda!309692)))

(assert (=> d!1806628 (= (inv!82559 (h!69800 zl!343)) (forall!14856 (exprs!5609 (h!69800 zl!343)) lambda!309707))))

(declare-fun bs!1339225 () Bool)

(assert (= bs!1339225 d!1806628))

(declare-fun m!6679784 () Bool)

(assert (=> bs!1339225 m!6679784))

(assert (=> b!5726453 d!1806628))

(declare-fun d!1806630 () Bool)

(assert (=> d!1806630 (= (isEmpty!35225 (t!376804 zl!343)) ((_ is Nil!63352) (t!376804 zl!343)))))

(assert (=> b!5726457 d!1806630))

(declare-fun d!1806632 () Bool)

(assert (=> d!1806632 (= (isEmpty!35226 (t!376802 (exprs!5609 (h!69800 zl!343)))) ((_ is Nil!63350) (t!376802 (exprs!5609 (h!69800 zl!343)))))))

(assert (=> b!5726475 d!1806632))

(declare-fun d!1806634 () Bool)

(declare-fun e!3521544 () Bool)

(assert (=> d!1806634 e!3521544))

(declare-fun res!2417885 () Bool)

(assert (=> d!1806634 (=> (not res!2417885) (not e!3521544))))

(declare-fun lt!2279515 () List!63476)

(declare-fun noDuplicate!1651 (List!63476) Bool)

(assert (=> d!1806634 (= res!2417885 (noDuplicate!1651 lt!2279515))))

(declare-fun choose!43315 ((InoxSet Context!10218)) List!63476)

(assert (=> d!1806634 (= lt!2279515 (choose!43315 z!1189))))

(assert (=> d!1806634 (= (toList!9509 z!1189) lt!2279515)))

(declare-fun b!5727333 () Bool)

(declare-fun content!11522 (List!63476) (InoxSet Context!10218))

(assert (=> b!5727333 (= e!3521544 (= (content!11522 lt!2279515) z!1189))))

(assert (= (and d!1806634 res!2417885) b!5727333))

(declare-fun m!6679786 () Bool)

(assert (=> d!1806634 m!6679786))

(declare-fun m!6679788 () Bool)

(assert (=> d!1806634 m!6679788))

(declare-fun m!6679790 () Bool)

(assert (=> b!5727333 m!6679790))

(assert (=> b!5726476 d!1806634))

(declare-fun d!1806636 () Bool)

(assert (=> d!1806636 (= (nullable!5757 (h!69798 (exprs!5609 (h!69800 zl!343)))) (nullableFct!1817 (h!69798 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun bs!1339226 () Bool)

(assert (= bs!1339226 d!1806636))

(declare-fun m!6679792 () Bool)

(assert (=> bs!1339226 m!6679792))

(assert (=> b!5726478 d!1806636))

(declare-fun b!5727334 () Bool)

(declare-fun e!3521546 () Bool)

(assert (=> b!5727334 (= e!3521546 (nullable!5757 (h!69798 (exprs!5609 lt!2279349))))))

(declare-fun bm!437893 () Bool)

(declare-fun call!437898 () (InoxSet Context!10218))

(assert (=> bm!437893 (= call!437898 (derivationStepZipperDown!1067 (h!69798 (exprs!5609 lt!2279349)) (Context!10219 (t!376802 (exprs!5609 lt!2279349))) (h!69799 s!2326)))))

(declare-fun b!5727335 () Bool)

(declare-fun e!3521547 () (InoxSet Context!10218))

(assert (=> b!5727335 (= e!3521547 ((as const (Array Context!10218 Bool)) false))))

(declare-fun e!3521545 () (InoxSet Context!10218))

(declare-fun b!5727336 () Bool)

(assert (=> b!5727336 (= e!3521545 ((_ map or) call!437898 (derivationStepZipperUp!993 (Context!10219 (t!376802 (exprs!5609 lt!2279349))) (h!69799 s!2326))))))

(declare-fun b!5727337 () Bool)

(assert (=> b!5727337 (= e!3521545 e!3521547)))

(declare-fun c!1010475 () Bool)

(assert (=> b!5727337 (= c!1010475 ((_ is Cons!63350) (exprs!5609 lt!2279349)))))

(declare-fun d!1806638 () Bool)

(declare-fun c!1010476 () Bool)

(assert (=> d!1806638 (= c!1010476 e!3521546)))

(declare-fun res!2417886 () Bool)

(assert (=> d!1806638 (=> (not res!2417886) (not e!3521546))))

(assert (=> d!1806638 (= res!2417886 ((_ is Cons!63350) (exprs!5609 lt!2279349)))))

(assert (=> d!1806638 (= (derivationStepZipperUp!993 lt!2279349 (h!69799 s!2326)) e!3521545)))

(declare-fun b!5727338 () Bool)

(assert (=> b!5727338 (= e!3521547 call!437898)))

(assert (= (and d!1806638 res!2417886) b!5727334))

(assert (= (and d!1806638 c!1010476) b!5727336))

(assert (= (and d!1806638 (not c!1010476)) b!5727337))

(assert (= (and b!5727337 c!1010475) b!5727338))

(assert (= (and b!5727337 (not c!1010475)) b!5727335))

(assert (= (or b!5727336 b!5727338) bm!437893))

(declare-fun m!6679794 () Bool)

(assert (=> b!5727334 m!6679794))

(declare-fun m!6679796 () Bool)

(assert (=> bm!437893 m!6679796))

(declare-fun m!6679798 () Bool)

(assert (=> b!5727336 m!6679798))

(assert (=> b!5726478 d!1806638))

(declare-fun b!5727339 () Bool)

(declare-fun e!3521549 () Bool)

(assert (=> b!5727339 (= e!3521549 (nullable!5757 (h!69798 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun bm!437894 () Bool)

(declare-fun call!437899 () (InoxSet Context!10218))

(assert (=> bm!437894 (= call!437899 (derivationStepZipperDown!1067 (h!69798 (exprs!5609 (h!69800 zl!343))) (Context!10219 (t!376802 (exprs!5609 (h!69800 zl!343)))) (h!69799 s!2326)))))

(declare-fun b!5727340 () Bool)

(declare-fun e!3521550 () (InoxSet Context!10218))

(assert (=> b!5727340 (= e!3521550 ((as const (Array Context!10218 Bool)) false))))

(declare-fun b!5727341 () Bool)

(declare-fun e!3521548 () (InoxSet Context!10218))

(assert (=> b!5727341 (= e!3521548 ((_ map or) call!437899 (derivationStepZipperUp!993 (Context!10219 (t!376802 (exprs!5609 (h!69800 zl!343)))) (h!69799 s!2326))))))

(declare-fun b!5727342 () Bool)

(assert (=> b!5727342 (= e!3521548 e!3521550)))

(declare-fun c!1010477 () Bool)

(assert (=> b!5727342 (= c!1010477 ((_ is Cons!63350) (exprs!5609 (h!69800 zl!343))))))

(declare-fun d!1806640 () Bool)

(declare-fun c!1010478 () Bool)

(assert (=> d!1806640 (= c!1010478 e!3521549)))

(declare-fun res!2417887 () Bool)

(assert (=> d!1806640 (=> (not res!2417887) (not e!3521549))))

(assert (=> d!1806640 (= res!2417887 ((_ is Cons!63350) (exprs!5609 (h!69800 zl!343))))))

(assert (=> d!1806640 (= (derivationStepZipperUp!993 (h!69800 zl!343) (h!69799 s!2326)) e!3521548)))

(declare-fun b!5727343 () Bool)

(assert (=> b!5727343 (= e!3521550 call!437899)))

(assert (= (and d!1806640 res!2417887) b!5727339))

(assert (= (and d!1806640 c!1010478) b!5727341))

(assert (= (and d!1806640 (not c!1010478)) b!5727342))

(assert (= (and b!5727342 c!1010477) b!5727343))

(assert (= (and b!5727342 (not c!1010477)) b!5727340))

(assert (= (or b!5727341 b!5727343) bm!437894))

(assert (=> b!5727339 m!6679028))

(declare-fun m!6679800 () Bool)

(assert (=> bm!437894 m!6679800))

(declare-fun m!6679802 () Bool)

(assert (=> b!5727341 m!6679802))

(assert (=> b!5726478 d!1806640))

(declare-fun d!1806642 () Bool)

(assert (=> d!1806642 (= (flatMap!1338 z!1189 lambda!309629) (choose!43306 z!1189 lambda!309629))))

(declare-fun bs!1339227 () Bool)

(assert (= bs!1339227 d!1806642))

(declare-fun m!6679804 () Bool)

(assert (=> bs!1339227 m!6679804))

(assert (=> b!5726478 d!1806642))

(declare-fun d!1806644 () Bool)

(assert (=> d!1806644 (= (flatMap!1338 z!1189 lambda!309629) (dynLambda!24792 lambda!309629 (h!69800 zl!343)))))

(declare-fun lt!2279516 () Unit!156432)

(assert (=> d!1806644 (= lt!2279516 (choose!43307 z!1189 (h!69800 zl!343) lambda!309629))))

(assert (=> d!1806644 (= z!1189 (store ((as const (Array Context!10218 Bool)) false) (h!69800 zl!343) true))))

(assert (=> d!1806644 (= (lemmaFlatMapOnSingletonSet!870 z!1189 (h!69800 zl!343) lambda!309629) lt!2279516)))

(declare-fun b_lambda!216435 () Bool)

(assert (=> (not b_lambda!216435) (not d!1806644)))

(declare-fun bs!1339228 () Bool)

(assert (= bs!1339228 d!1806644))

(assert (=> bs!1339228 m!6679032))

(declare-fun m!6679806 () Bool)

(assert (=> bs!1339228 m!6679806))

(declare-fun m!6679808 () Bool)

(assert (=> bs!1339228 m!6679808))

(declare-fun m!6679810 () Bool)

(assert (=> bs!1339228 m!6679810))

(assert (=> b!5726478 d!1806644))

(declare-fun b!5727344 () Bool)

(declare-fun e!3521555 () Bool)

(assert (=> b!5727344 (= e!3521555 (nullable!5757 (regOne!31962 (h!69798 (exprs!5609 (h!69800 zl!343))))))))

(declare-fun bm!437895 () Bool)

(declare-fun call!437900 () List!63474)

(declare-fun call!437905 () List!63474)

(assert (=> bm!437895 (= call!437900 call!437905)))

(declare-fun b!5727346 () Bool)

(declare-fun e!3521556 () (InoxSet Context!10218))

(assert (=> b!5727346 (= e!3521556 (store ((as const (Array Context!10218 Bool)) false) lt!2279349 true))))

(declare-fun c!1010482 () Bool)

(declare-fun bm!437896 () Bool)

(declare-fun call!437904 () (InoxSet Context!10218))

(assert (=> bm!437896 (= call!437904 (derivationStepZipperDown!1067 (ite c!1010482 (regTwo!31963 (h!69798 (exprs!5609 (h!69800 zl!343)))) (regOne!31962 (h!69798 (exprs!5609 (h!69800 zl!343))))) (ite c!1010482 lt!2279349 (Context!10219 call!437905)) (h!69799 s!2326)))))

(declare-fun b!5727347 () Bool)

(declare-fun e!3521553 () (InoxSet Context!10218))

(declare-fun call!437903 () (InoxSet Context!10218))

(assert (=> b!5727347 (= e!3521553 call!437903)))

(declare-fun b!5727348 () Bool)

(declare-fun e!3521554 () (InoxSet Context!10218))

(declare-fun e!3521552 () (InoxSet Context!10218))

(assert (=> b!5727348 (= e!3521554 e!3521552)))

(declare-fun c!1010479 () Bool)

(assert (=> b!5727348 (= c!1010479 ((_ is Concat!24570) (h!69798 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun b!5727349 () Bool)

(declare-fun e!3521551 () (InoxSet Context!10218))

(assert (=> b!5727349 (= e!3521556 e!3521551)))

(assert (=> b!5727349 (= c!1010482 ((_ is Union!15725) (h!69798 (exprs!5609 (h!69800 zl!343)))))))

(declare-fun c!1010480 () Bool)

(declare-fun call!437902 () (InoxSet Context!10218))

(declare-fun bm!437897 () Bool)

(assert (=> bm!437897 (= call!437902 (derivationStepZipperDown!1067 (ite c!1010482 (regOne!31963 (h!69798 (exprs!5609 (h!69800 zl!343)))) (ite c!1010480 (regTwo!31962 (h!69798 (exprs!5609 (h!69800 zl!343)))) (ite c!1010479 (regOne!31962 (h!69798 (exprs!5609 (h!69800 zl!343)))) (reg!16054 (h!69798 (exprs!5609 (h!69800 zl!343))))))) (ite (or c!1010482 c!1010480) lt!2279349 (Context!10219 call!437900)) (h!69799 s!2326)))))

(declare-fun b!5727350 () Bool)

(assert (=> b!5727350 (= e!3521553 ((as const (Array Context!10218 Bool)) false))))

(declare-fun b!5727351 () Bool)

(declare-fun call!437901 () (InoxSet Context!10218))

(assert (=> b!5727351 (= e!3521554 ((_ map or) call!437904 call!437901))))

(declare-fun bm!437898 () Bool)

(assert (=> bm!437898 (= call!437903 call!437901)))

(declare-fun bm!437899 () Bool)

(assert (=> bm!437899 (= call!437905 ($colon$colon!1738 (exprs!5609 lt!2279349) (ite (or c!1010480 c!1010479) (regTwo!31962 (h!69798 (exprs!5609 (h!69800 zl!343)))) (h!69798 (exprs!5609 (h!69800 zl!343))))))))

(declare-fun d!1806646 () Bool)

(declare-fun c!1010481 () Bool)

(assert (=> d!1806646 (= c!1010481 (and ((_ is ElementMatch!15725) (h!69798 (exprs!5609 (h!69800 zl!343)))) (= (c!1010233 (h!69798 (exprs!5609 (h!69800 zl!343)))) (h!69799 s!2326))))))

(assert (=> d!1806646 (= (derivationStepZipperDown!1067 (h!69798 (exprs!5609 (h!69800 zl!343))) lt!2279349 (h!69799 s!2326)) e!3521556)))

(declare-fun b!5727345 () Bool)

(declare-fun c!1010483 () Bool)

(assert (=> b!5727345 (= c!1010483 ((_ is Star!15725) (h!69798 (exprs!5609 (h!69800 zl!343)))))))

(assert (=> b!5727345 (= e!3521552 e!3521553)))

(declare-fun b!5727352 () Bool)

(assert (=> b!5727352 (= e!3521551 ((_ map or) call!437902 call!437904))))

(declare-fun b!5727353 () Bool)

(assert (=> b!5727353 (= e!3521552 call!437903)))

(declare-fun bm!437900 () Bool)

(assert (=> bm!437900 (= call!437901 call!437902)))

(declare-fun b!5727354 () Bool)

(assert (=> b!5727354 (= c!1010480 e!3521555)))

(declare-fun res!2417888 () Bool)

(assert (=> b!5727354 (=> (not res!2417888) (not e!3521555))))

(assert (=> b!5727354 (= res!2417888 ((_ is Concat!24570) (h!69798 (exprs!5609 (h!69800 zl!343)))))))

(assert (=> b!5727354 (= e!3521551 e!3521554)))

(assert (= (and d!1806646 c!1010481) b!5727346))

(assert (= (and d!1806646 (not c!1010481)) b!5727349))

(assert (= (and b!5727349 c!1010482) b!5727352))

(assert (= (and b!5727349 (not c!1010482)) b!5727354))

(assert (= (and b!5727354 res!2417888) b!5727344))

(assert (= (and b!5727354 c!1010480) b!5727351))

(assert (= (and b!5727354 (not c!1010480)) b!5727348))

(assert (= (and b!5727348 c!1010479) b!5727353))

(assert (= (and b!5727348 (not c!1010479)) b!5727345))

(assert (= (and b!5727345 c!1010483) b!5727347))

(assert (= (and b!5727345 (not c!1010483)) b!5727350))

(assert (= (or b!5727353 b!5727347) bm!437895))

(assert (= (or b!5727353 b!5727347) bm!437898))

(assert (= (or b!5727351 bm!437895) bm!437899))

(assert (= (or b!5727351 bm!437898) bm!437900))

(assert (= (or b!5727352 b!5727351) bm!437896))

(assert (= (or b!5727352 bm!437900) bm!437897))

(declare-fun m!6679812 () Bool)

(assert (=> bm!437897 m!6679812))

(declare-fun m!6679814 () Bool)

(assert (=> b!5727344 m!6679814))

(declare-fun m!6679816 () Bool)

(assert (=> b!5727346 m!6679816))

(declare-fun m!6679818 () Bool)

(assert (=> bm!437896 m!6679818))

(declare-fun m!6679820 () Bool)

(assert (=> bm!437899 m!6679820))

(assert (=> b!5726478 d!1806646))

(declare-fun b!5727355 () Bool)

(declare-fun e!3521558 () Bool)

(assert (=> b!5727355 (= e!3521558 (nullable!5757 (h!69798 (exprs!5609 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343)))))))))))

(declare-fun bm!437901 () Bool)

(declare-fun call!437906 () (InoxSet Context!10218))

(assert (=> bm!437901 (= call!437906 (derivationStepZipperDown!1067 (h!69798 (exprs!5609 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343))))))) (Context!10219 (t!376802 (exprs!5609 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343)))))))) (h!69799 s!2326)))))

(declare-fun b!5727356 () Bool)

(declare-fun e!3521559 () (InoxSet Context!10218))

(assert (=> b!5727356 (= e!3521559 ((as const (Array Context!10218 Bool)) false))))

(declare-fun e!3521557 () (InoxSet Context!10218))

(declare-fun b!5727357 () Bool)

(assert (=> b!5727357 (= e!3521557 ((_ map or) call!437906 (derivationStepZipperUp!993 (Context!10219 (t!376802 (exprs!5609 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343)))))))) (h!69799 s!2326))))))

(declare-fun b!5727358 () Bool)

(assert (=> b!5727358 (= e!3521557 e!3521559)))

(declare-fun c!1010484 () Bool)

(assert (=> b!5727358 (= c!1010484 ((_ is Cons!63350) (exprs!5609 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343))))))))))

(declare-fun d!1806648 () Bool)

(declare-fun c!1010485 () Bool)

(assert (=> d!1806648 (= c!1010485 e!3521558)))

(declare-fun res!2417889 () Bool)

(assert (=> d!1806648 (=> (not res!2417889) (not e!3521558))))

(assert (=> d!1806648 (= res!2417889 ((_ is Cons!63350) (exprs!5609 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343))))))))))

(assert (=> d!1806648 (= (derivationStepZipperUp!993 (Context!10219 (Cons!63350 (h!69798 (exprs!5609 (h!69800 zl!343))) (t!376802 (exprs!5609 (h!69800 zl!343))))) (h!69799 s!2326)) e!3521557)))

(declare-fun b!5727359 () Bool)

(assert (=> b!5727359 (= e!3521559 call!437906)))

(assert (= (and d!1806648 res!2417889) b!5727355))

(assert (= (and d!1806648 c!1010485) b!5727357))

(assert (= (and d!1806648 (not c!1010485)) b!5727358))

(assert (= (and b!5727358 c!1010484) b!5727359))

(assert (= (and b!5727358 (not c!1010484)) b!5727356))

(assert (= (or b!5727357 b!5727359) bm!437901))

(declare-fun m!6679822 () Bool)

(assert (=> b!5727355 m!6679822))

(declare-fun m!6679824 () Bool)

(assert (=> bm!437901 m!6679824))

(declare-fun m!6679826 () Bool)

(assert (=> b!5727357 m!6679826))

(assert (=> b!5726478 d!1806648))

(declare-fun d!1806650 () Bool)

(declare-fun lt!2279517 () Regex!15725)

(assert (=> d!1806650 (validRegex!7461 lt!2279517)))

(assert (=> d!1806650 (= lt!2279517 (generalisedUnion!1588 (unfocusZipperList!1153 zl!343)))))

(assert (=> d!1806650 (= (unfocusZipper!1467 zl!343) lt!2279517)))

(declare-fun bs!1339229 () Bool)

(assert (= bs!1339229 d!1806650))

(declare-fun m!6679828 () Bool)

(assert (=> bs!1339229 m!6679828))

(assert (=> bs!1339229 m!6679036))

(assert (=> bs!1339229 m!6679036))

(assert (=> bs!1339229 m!6679038))

(assert (=> b!5726458 d!1806650))

(declare-fun b!5727364 () Bool)

(declare-fun e!3521562 () Bool)

(declare-fun tp!1585639 () Bool)

(assert (=> b!5727364 (= e!3521562 (and tp_is_empty!40703 tp!1585639))))

(assert (=> b!5726452 (= tp!1585574 e!3521562)))

(assert (= (and b!5726452 ((_ is Cons!63351) (t!376803 s!2326))) b!5727364))

(declare-fun b!5727377 () Bool)

(declare-fun e!3521565 () Bool)

(declare-fun tp!1585653 () Bool)

(assert (=> b!5727377 (= e!3521565 tp!1585653)))

(declare-fun b!5727376 () Bool)

(declare-fun tp!1585654 () Bool)

(declare-fun tp!1585651 () Bool)

(assert (=> b!5727376 (= e!3521565 (and tp!1585654 tp!1585651))))

(assert (=> b!5726455 (= tp!1585572 e!3521565)))

(declare-fun b!5727375 () Bool)

(assert (=> b!5727375 (= e!3521565 tp_is_empty!40703)))

(declare-fun b!5727378 () Bool)

(declare-fun tp!1585652 () Bool)

(declare-fun tp!1585650 () Bool)

(assert (=> b!5727378 (= e!3521565 (and tp!1585652 tp!1585650))))

(assert (= (and b!5726455 ((_ is ElementMatch!15725) (regOne!31962 r!7292))) b!5727375))

(assert (= (and b!5726455 ((_ is Concat!24570) (regOne!31962 r!7292))) b!5727376))

(assert (= (and b!5726455 ((_ is Star!15725) (regOne!31962 r!7292))) b!5727377))

(assert (= (and b!5726455 ((_ is Union!15725) (regOne!31962 r!7292))) b!5727378))

(declare-fun b!5727381 () Bool)

(declare-fun e!3521566 () Bool)

(declare-fun tp!1585658 () Bool)

(assert (=> b!5727381 (= e!3521566 tp!1585658)))

(declare-fun b!5727380 () Bool)

(declare-fun tp!1585659 () Bool)

(declare-fun tp!1585656 () Bool)

(assert (=> b!5727380 (= e!3521566 (and tp!1585659 tp!1585656))))

(assert (=> b!5726455 (= tp!1585575 e!3521566)))

(declare-fun b!5727379 () Bool)

(assert (=> b!5727379 (= e!3521566 tp_is_empty!40703)))

(declare-fun b!5727382 () Bool)

(declare-fun tp!1585657 () Bool)

(declare-fun tp!1585655 () Bool)

(assert (=> b!5727382 (= e!3521566 (and tp!1585657 tp!1585655))))

(assert (= (and b!5726455 ((_ is ElementMatch!15725) (regTwo!31962 r!7292))) b!5727379))

(assert (= (and b!5726455 ((_ is Concat!24570) (regTwo!31962 r!7292))) b!5727380))

(assert (= (and b!5726455 ((_ is Star!15725) (regTwo!31962 r!7292))) b!5727381))

(assert (= (and b!5726455 ((_ is Union!15725) (regTwo!31962 r!7292))) b!5727382))

(declare-fun b!5727385 () Bool)

(declare-fun e!3521567 () Bool)

(declare-fun tp!1585663 () Bool)

(assert (=> b!5727385 (= e!3521567 tp!1585663)))

(declare-fun b!5727384 () Bool)

(declare-fun tp!1585664 () Bool)

(declare-fun tp!1585661 () Bool)

(assert (=> b!5727384 (= e!3521567 (and tp!1585664 tp!1585661))))

(assert (=> b!5726486 (= tp!1585576 e!3521567)))

(declare-fun b!5727383 () Bool)

(assert (=> b!5727383 (= e!3521567 tp_is_empty!40703)))

(declare-fun b!5727386 () Bool)

(declare-fun tp!1585662 () Bool)

(declare-fun tp!1585660 () Bool)

(assert (=> b!5727386 (= e!3521567 (and tp!1585662 tp!1585660))))

(assert (= (and b!5726486 ((_ is ElementMatch!15725) (reg!16054 r!7292))) b!5727383))

(assert (= (and b!5726486 ((_ is Concat!24570) (reg!16054 r!7292))) b!5727384))

(assert (= (and b!5726486 ((_ is Star!15725) (reg!16054 r!7292))) b!5727385))

(assert (= (and b!5726486 ((_ is Union!15725) (reg!16054 r!7292))) b!5727386))

(declare-fun condSetEmpty!38407 () Bool)

(assert (=> setNonEmpty!38401 (= condSetEmpty!38407 (= setRest!38401 ((as const (Array Context!10218 Bool)) false)))))

(declare-fun setRes!38407 () Bool)

(assert (=> setNonEmpty!38401 (= tp!1585569 setRes!38407)))

(declare-fun setIsEmpty!38407 () Bool)

(assert (=> setIsEmpty!38407 setRes!38407))

(declare-fun setNonEmpty!38407 () Bool)

(declare-fun tp!1585670 () Bool)

(declare-fun setElem!38407 () Context!10218)

(declare-fun e!3521570 () Bool)

(assert (=> setNonEmpty!38407 (= setRes!38407 (and tp!1585670 (inv!82559 setElem!38407) e!3521570))))

(declare-fun setRest!38407 () (InoxSet Context!10218))

(assert (=> setNonEmpty!38407 (= setRest!38401 ((_ map or) (store ((as const (Array Context!10218 Bool)) false) setElem!38407 true) setRest!38407))))

(declare-fun b!5727391 () Bool)

(declare-fun tp!1585669 () Bool)

(assert (=> b!5727391 (= e!3521570 tp!1585669)))

(assert (= (and setNonEmpty!38401 condSetEmpty!38407) setIsEmpty!38407))

(assert (= (and setNonEmpty!38401 (not condSetEmpty!38407)) setNonEmpty!38407))

(assert (= setNonEmpty!38407 b!5727391))

(declare-fun m!6679830 () Bool)

(assert (=> setNonEmpty!38407 m!6679830))

(declare-fun b!5727396 () Bool)

(declare-fun e!3521573 () Bool)

(declare-fun tp!1585675 () Bool)

(declare-fun tp!1585676 () Bool)

(assert (=> b!5727396 (= e!3521573 (and tp!1585675 tp!1585676))))

(assert (=> b!5726481 (= tp!1585578 e!3521573)))

(assert (= (and b!5726481 ((_ is Cons!63350) (exprs!5609 (h!69800 zl!343)))) b!5727396))

(declare-fun b!5727397 () Bool)

(declare-fun e!3521574 () Bool)

(declare-fun tp!1585677 () Bool)

(declare-fun tp!1585678 () Bool)

(assert (=> b!5727397 (= e!3521574 (and tp!1585677 tp!1585678))))

(assert (=> b!5726479 (= tp!1585577 e!3521574)))

(assert (= (and b!5726479 ((_ is Cons!63350) (exprs!5609 setElem!38401))) b!5727397))

(declare-fun b!5727400 () Bool)

(declare-fun e!3521575 () Bool)

(declare-fun tp!1585682 () Bool)

(assert (=> b!5727400 (= e!3521575 tp!1585682)))

(declare-fun b!5727399 () Bool)

(declare-fun tp!1585683 () Bool)

(declare-fun tp!1585680 () Bool)

(assert (=> b!5727399 (= e!3521575 (and tp!1585683 tp!1585680))))

(assert (=> b!5726480 (= tp!1585573 e!3521575)))

(declare-fun b!5727398 () Bool)

(assert (=> b!5727398 (= e!3521575 tp_is_empty!40703)))

(declare-fun b!5727401 () Bool)

(declare-fun tp!1585681 () Bool)

(declare-fun tp!1585679 () Bool)

(assert (=> b!5727401 (= e!3521575 (and tp!1585681 tp!1585679))))

(assert (= (and b!5726480 ((_ is ElementMatch!15725) (regOne!31963 r!7292))) b!5727398))

(assert (= (and b!5726480 ((_ is Concat!24570) (regOne!31963 r!7292))) b!5727399))

(assert (= (and b!5726480 ((_ is Star!15725) (regOne!31963 r!7292))) b!5727400))

(assert (= (and b!5726480 ((_ is Union!15725) (regOne!31963 r!7292))) b!5727401))

(declare-fun b!5727404 () Bool)

(declare-fun e!3521576 () Bool)

(declare-fun tp!1585687 () Bool)

(assert (=> b!5727404 (= e!3521576 tp!1585687)))

(declare-fun b!5727403 () Bool)

(declare-fun tp!1585688 () Bool)

(declare-fun tp!1585685 () Bool)

(assert (=> b!5727403 (= e!3521576 (and tp!1585688 tp!1585685))))

(assert (=> b!5726480 (= tp!1585571 e!3521576)))

(declare-fun b!5727402 () Bool)

(assert (=> b!5727402 (= e!3521576 tp_is_empty!40703)))

(declare-fun b!5727405 () Bool)

(declare-fun tp!1585686 () Bool)

(declare-fun tp!1585684 () Bool)

(assert (=> b!5727405 (= e!3521576 (and tp!1585686 tp!1585684))))

(assert (= (and b!5726480 ((_ is ElementMatch!15725) (regTwo!31963 r!7292))) b!5727402))

(assert (= (and b!5726480 ((_ is Concat!24570) (regTwo!31963 r!7292))) b!5727403))

(assert (= (and b!5726480 ((_ is Star!15725) (regTwo!31963 r!7292))) b!5727404))

(assert (= (and b!5726480 ((_ is Union!15725) (regTwo!31963 r!7292))) b!5727405))

(declare-fun b!5727413 () Bool)

(declare-fun e!3521582 () Bool)

(declare-fun tp!1585693 () Bool)

(assert (=> b!5727413 (= e!3521582 tp!1585693)))

(declare-fun e!3521581 () Bool)

(declare-fun tp!1585694 () Bool)

(declare-fun b!5727412 () Bool)

(assert (=> b!5727412 (= e!3521581 (and (inv!82559 (h!69800 (t!376804 zl!343))) e!3521582 tp!1585694))))

(assert (=> b!5726453 (= tp!1585570 e!3521581)))

(assert (= b!5727412 b!5727413))

(assert (= (and b!5726453 ((_ is Cons!63352) (t!376804 zl!343))) b!5727412))

(declare-fun m!6679832 () Bool)

(assert (=> b!5727412 m!6679832))

(declare-fun b_lambda!216437 () Bool)

(assert (= b_lambda!216421 (or b!5726478 b_lambda!216437)))

(declare-fun bs!1339230 () Bool)

(declare-fun d!1806652 () Bool)

(assert (= bs!1339230 (and d!1806652 b!5726478)))

(assert (=> bs!1339230 (= (dynLambda!24792 lambda!309629 lt!2279363) (derivationStepZipperUp!993 lt!2279363 (h!69799 s!2326)))))

(assert (=> bs!1339230 m!6679048))

(assert (=> d!1806542 d!1806652))

(declare-fun b_lambda!216439 () Bool)

(assert (= b_lambda!216423 (or b!5726478 b_lambda!216439)))

(declare-fun bs!1339231 () Bool)

(declare-fun d!1806654 () Bool)

(assert (= bs!1339231 (and d!1806654 b!5726478)))

(assert (=> bs!1339231 (= (dynLambda!24792 lambda!309629 lt!2279340) (derivationStepZipperUp!993 lt!2279340 (h!69799 s!2326)))))

(assert (=> bs!1339231 m!6679054))

(assert (=> d!1806552 d!1806654))

(declare-fun b_lambda!216441 () Bool)

(assert (= b_lambda!216435 (or b!5726478 b_lambda!216441)))

(declare-fun bs!1339232 () Bool)

(declare-fun d!1806656 () Bool)

(assert (= bs!1339232 (and d!1806656 b!5726478)))

(assert (=> bs!1339232 (= (dynLambda!24792 lambda!309629 (h!69800 zl!343)) (derivationStepZipperUp!993 (h!69800 zl!343) (h!69799 s!2326)))))

(assert (=> bs!1339232 m!6679024))

(assert (=> d!1806644 d!1806656))

(declare-fun b_lambda!216443 () Bool)

(assert (= b_lambda!216417 (or b!5726464 b_lambda!216443)))

(declare-fun bs!1339233 () Bool)

(declare-fun d!1806658 () Bool)

(assert (= bs!1339233 (and d!1806658 b!5726464)))

(declare-fun lt!2279518 () Unit!156432)

(assert (=> bs!1339233 (= lt!2279518 (lemmaConcatPreservesForall!294 (exprs!5609 lt!2279340) lt!2279337 lambda!309631))))

(assert (=> bs!1339233 (= (dynLambda!24791 lambda!309630 lt!2279340) (Context!10219 (++!13922 (exprs!5609 lt!2279340) lt!2279337)))))

(declare-fun m!6679834 () Bool)

(assert (=> bs!1339233 m!6679834))

(declare-fun m!6679836 () Bool)

(assert (=> bs!1339233 m!6679836))

(assert (=> d!1806512 d!1806658))

(declare-fun b_lambda!216445 () Bool)

(assert (= b_lambda!216419 (or b!5726478 b_lambda!216445)))

(declare-fun bs!1339234 () Bool)

(declare-fun d!1806660 () Bool)

(assert (= bs!1339234 (and d!1806660 b!5726478)))

(assert (=> bs!1339234 (= (dynLambda!24792 lambda!309629 lt!2279332) (derivationStepZipperUp!993 lt!2279332 (h!69799 s!2326)))))

(assert (=> bs!1339234 m!6679100))

(assert (=> d!1806532 d!1806660))

(check-sat (not d!1806508) (not d!1806592) (not b!5727339) (not b!5726874) (not b!5727307) (not b!5727170) (not b!5727382) (not b_lambda!216439) (not d!1806588) (not b!5726930) (not d!1806626) (not d!1806590) (not b!5727310) (not b!5727386) (not b!5727213) (not b!5727304) (not d!1806522) (not bs!1339231) (not b!5727404) (not bm!437891) (not b!5727311) (not b!5727257) (not b!5726591) (not b!5727336) (not d!1806568) (not b!5726936) (not b!5727319) (not b!5727305) (not d!1806584) (not d!1806634) (not d!1806628) (not d!1806650) (not b!5727258) (not bm!437860) (not bm!437809) (not b!5727093) (not b!5727256) (not b!5727286) (not b!5727175) (not b!5727260) (not b!5727234) (not bm!437881) (not d!1806582) (not b!5727008) (not d!1806608) (not d!1806622) (not d!1806602) (not b!5726873) (not d!1806624) (not b!5727344) (not b!5726934) (not d!1806524) (not b!5727376) (not b!5727384) (not d!1806636) (not b!5727399) (not b!5727168) (not b!5726804) (not b!5727071) (not b!5727405) (not b!5727091) (not bm!437812) (not d!1806550) (not bm!437899) (not d!1806460) (not b!5727324) (not b!5727220) (not b!5727377) (not b!5727088) (not bm!437810) (not b!5727255) (not b!5727282) (not bm!437822) (not b_lambda!216437) (not bm!437890) (not b!5727401) (not b!5727303) (not b!5726866) (not d!1806492) (not b!5726939) (not b!5726654) (not b!5727334) (not d!1806642) (not b!5727396) (not b!5727222) (not b!5727233) (not d!1806544) (not d!1806532) (not d!1806616) (not b!5727171) (not d!1806502) (not bm!437861) (not d!1806644) (not d!1806536) (not b!5727403) (not b!5727400) (not b!5727302) (not b!5727380) (not b!5727413) (not b!5727173) (not b!5727391) (not b_lambda!216445) (not d!1806554) (not bm!437886) (not d!1806526) (not bm!437897) (not b!5727333) tp_is_empty!40703 (not d!1806612) (not b!5727216) (not d!1806598) (not b!5727281) (not b!5727329) (not bm!437901) (not d!1806490) (not b!5726878) (not d!1806534) (not bm!437892) (not d!1806600) (not b!5726809) (not b!5727031) (not b!5727283) (not d!1806538) (not b!5726932) (not bm!437821) (not b!5727033) (not b!5727172) (not bs!1339233) (not b!5727223) (not d!1806596) (not b!5727378) (not b!5726931) (not b_lambda!216441) (not b!5727364) (not b!5727412) (not b!5727070) (not b!5727176) (not d!1806542) (not b!5727341) (not bm!437885) (not b!5727315) (not d!1806618) (not b_lambda!216443) (not d!1806614) (not bs!1339232) (not d!1806610) (not d!1806580) (not b!5726870) (not b!5727215) (not b!5727259) (not bm!437866) (not d!1806586) (not b!5727007) (not b!5727289) (not b!5727219) (not b!5727284) (not b!5727381) (not bm!437893) (not b!5726935) (not bm!437894) (not bs!1339230) (not bm!437896) (not setNonEmpty!38407) (not b!5727397) (not b!5727357) (not bs!1339234) (not b!5727355) (not b!5727086) (not b!5727314) (not b!5727221) (not d!1806552) (not d!1806606) (not d!1806512) (not d!1806604) (not b!5726869) (not b!5727385))
(check-sat)
