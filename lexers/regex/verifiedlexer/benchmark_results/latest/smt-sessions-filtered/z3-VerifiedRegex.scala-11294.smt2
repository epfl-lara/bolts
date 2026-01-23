; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595924 () Bool)

(assert start!595924)

(declare-fun b!5815577 () Bool)

(assert (=> b!5815577 true))

(assert (=> b!5815577 true))

(declare-fun lambda!318004 () Int)

(declare-fun lambda!318003 () Int)

(assert (=> b!5815577 (not (= lambda!318004 lambda!318003))))

(assert (=> b!5815577 true))

(assert (=> b!5815577 true))

(declare-fun lambda!318005 () Int)

(assert (=> b!5815577 (not (= lambda!318005 lambda!318003))))

(assert (=> b!5815577 (not (= lambda!318005 lambda!318004))))

(assert (=> b!5815577 true))

(assert (=> b!5815577 true))

(declare-fun b!5815597 () Bool)

(assert (=> b!5815597 true))

(declare-fun b!5815582 () Bool)

(assert (=> b!5815582 true))

(declare-fun b!5815572 () Bool)

(declare-fun e!3569381 () Bool)

(declare-fun tp!1604423 () Bool)

(declare-fun tp!1604429 () Bool)

(assert (=> b!5815572 (= e!3569381 (and tp!1604423 tp!1604429))))

(declare-fun b!5815573 () Bool)

(declare-fun e!3569370 () Bool)

(declare-fun e!3569365 () Bool)

(assert (=> b!5815573 (= e!3569370 e!3569365)))

(declare-fun res!2452470 () Bool)

(assert (=> b!5815573 (=> (not res!2452470) (not e!3569365))))

(declare-datatypes ((C!31940 0))(
  ( (C!31941 (val!25672 Int)) )
))
(declare-datatypes ((Regex!15835 0))(
  ( (ElementMatch!15835 (c!1030735 C!31940)) (Concat!24680 (regOne!32182 Regex!15835) (regTwo!32182 Regex!15835)) (EmptyExpr!15835) (Star!15835 (reg!16164 Regex!15835)) (EmptyLang!15835) (Union!15835 (regOne!32183 Regex!15835) (regTwo!32183 Regex!15835)) )
))
(declare-fun r!7292 () Regex!15835)

(declare-fun lt!2301326 () Regex!15835)

(assert (=> b!5815573 (= res!2452470 (= r!7292 lt!2301326))))

(declare-datatypes ((List!63804 0))(
  ( (Nil!63680) (Cons!63680 (h!70128 Regex!15835) (t!377159 List!63804)) )
))
(declare-datatypes ((Context!10438 0))(
  ( (Context!10439 (exprs!5719 List!63804)) )
))
(declare-datatypes ((List!63805 0))(
  ( (Nil!63681) (Cons!63681 (h!70129 Context!10438) (t!377160 List!63805)) )
))
(declare-fun zl!343 () List!63805)

(declare-fun unfocusZipper!1577 (List!63805) Regex!15835)

(assert (=> b!5815573 (= lt!2301326 (unfocusZipper!1577 zl!343))))

(declare-fun b!5815574 () Bool)

(declare-fun res!2452459 () Bool)

(declare-fun e!3569372 () Bool)

(assert (=> b!5815574 (=> res!2452459 e!3569372)))

(assert (=> b!5815574 (= res!2452459 (or (not (= lt!2301326 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5815575 () Bool)

(declare-fun e!3569374 () Bool)

(declare-fun tp!1604427 () Bool)

(assert (=> b!5815575 (= e!3569374 tp!1604427)))

(declare-fun b!5815576 () Bool)

(declare-fun res!2452481 () Bool)

(declare-fun e!3569380 () Bool)

(assert (=> b!5815576 (=> res!2452481 e!3569380)))

(declare-fun isEmpty!35603 (List!63805) Bool)

(assert (=> b!5815576 (= res!2452481 (not (isEmpty!35603 (t!377160 zl!343))))))

(declare-fun res!2452480 () Bool)

(assert (=> start!595924 (=> (not res!2452480) (not e!3569370))))

(declare-fun validRegex!7571 (Regex!15835) Bool)

(assert (=> start!595924 (= res!2452480 (validRegex!7571 r!7292))))

(assert (=> start!595924 e!3569370))

(assert (=> start!595924 e!3569381))

(declare-fun condSetEmpty!39184 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10438))

(assert (=> start!595924 (= condSetEmpty!39184 (= z!1189 ((as const (Array Context!10438 Bool)) false)))))

(declare-fun setRes!39184 () Bool)

(assert (=> start!595924 setRes!39184))

(declare-fun e!3569379 () Bool)

(assert (=> start!595924 e!3569379))

(declare-fun e!3569367 () Bool)

(assert (=> start!595924 e!3569367))

(declare-fun e!3569376 () Bool)

(assert (=> b!5815577 (= e!3569380 e!3569376)))

(declare-fun res!2452466 () Bool)

(assert (=> b!5815577 (=> res!2452466 e!3569376)))

(declare-fun lt!2301333 () Bool)

(declare-fun e!3569369 () Bool)

(assert (=> b!5815577 (= res!2452466 (not (= lt!2301333 e!3569369)))))

(declare-fun res!2452472 () Bool)

(assert (=> b!5815577 (=> res!2452472 e!3569369)))

(declare-datatypes ((List!63806 0))(
  ( (Nil!63682) (Cons!63682 (h!70130 C!31940) (t!377161 List!63806)) )
))
(declare-fun s!2326 () List!63806)

(declare-fun isEmpty!35604 (List!63806) Bool)

(assert (=> b!5815577 (= res!2452472 (isEmpty!35604 s!2326))))

(declare-fun Exists!2935 (Int) Bool)

(assert (=> b!5815577 (= (Exists!2935 lambda!318003) (Exists!2935 lambda!318005))))

(declare-datatypes ((Unit!156930 0))(
  ( (Unit!156931) )
))
(declare-fun lt!2301344 () Unit!156930)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1564 (Regex!15835 Regex!15835 List!63806) Unit!156930)

(assert (=> b!5815577 (= lt!2301344 (lemmaExistCutMatchRandMatchRSpecEquivalent!1564 (reg!16164 r!7292) r!7292 s!2326))))

(assert (=> b!5815577 (= (Exists!2935 lambda!318003) (Exists!2935 lambda!318004))))

(declare-fun lt!2301332 () Unit!156930)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!616 (Regex!15835 List!63806) Unit!156930)

(assert (=> b!5815577 (= lt!2301332 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!616 (reg!16164 r!7292) s!2326))))

(declare-fun lt!2301352 () Bool)

(assert (=> b!5815577 (= lt!2301352 (Exists!2935 lambda!318003))))

(declare-datatypes ((tuple2!65864 0))(
  ( (tuple2!65865 (_1!36235 List!63806) (_2!36235 List!63806)) )
))
(declare-datatypes ((Option!15844 0))(
  ( (None!15843) (Some!15843 (v!51907 tuple2!65864)) )
))
(declare-fun isDefined!12547 (Option!15844) Bool)

(declare-fun findConcatSeparation!2258 (Regex!15835 Regex!15835 List!63806 List!63806 List!63806) Option!15844)

(assert (=> b!5815577 (= lt!2301352 (isDefined!12547 (findConcatSeparation!2258 (reg!16164 r!7292) r!7292 Nil!63682 s!2326 s!2326)))))

(declare-fun lt!2301327 () Unit!156930)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2022 (Regex!15835 Regex!15835 List!63806) Unit!156930)

(assert (=> b!5815577 (= lt!2301327 (lemmaFindConcatSeparationEquivalentToExists!2022 (reg!16164 r!7292) r!7292 s!2326))))

(declare-fun b!5815578 () Bool)

(declare-fun res!2452482 () Bool)

(declare-fun e!3569371 () Bool)

(assert (=> b!5815578 (=> res!2452482 e!3569371)))

(declare-fun lt!2301351 () (InoxSet Context!10438))

(declare-fun lt!2301338 () tuple2!65864)

(declare-fun matchZipper!1963 ((InoxSet Context!10438) List!63806) Bool)

(assert (=> b!5815578 (= res!2452482 (not (matchZipper!1963 lt!2301351 (_1!36235 lt!2301338))))))

(declare-fun b!5815579 () Bool)

(declare-fun res!2452464 () Bool)

(declare-fun e!3569366 () Bool)

(assert (=> b!5815579 (=> res!2452464 e!3569366)))

(assert (=> b!5815579 (= res!2452464 (not (matchZipper!1963 z!1189 s!2326)))))

(declare-fun b!5815580 () Bool)

(assert (=> b!5815580 (= e!3569365 (not e!3569380))))

(declare-fun res!2452462 () Bool)

(assert (=> b!5815580 (=> res!2452462 e!3569380)))

(get-info :version)

(assert (=> b!5815580 (= res!2452462 (not ((_ is Cons!63681) zl!343)))))

(declare-fun matchRSpec!2938 (Regex!15835 List!63806) Bool)

(assert (=> b!5815580 (= lt!2301333 (matchRSpec!2938 r!7292 s!2326))))

(declare-fun matchR!8020 (Regex!15835 List!63806) Bool)

(assert (=> b!5815580 (= lt!2301333 (matchR!8020 r!7292 s!2326))))

(declare-fun lt!2301341 () Unit!156930)

(declare-fun mainMatchTheorem!2938 (Regex!15835 List!63806) Unit!156930)

(assert (=> b!5815580 (= lt!2301341 (mainMatchTheorem!2938 r!7292 s!2326))))

(declare-fun b!5815581 () Bool)

(declare-fun e!3569364 () Bool)

(assert (=> b!5815581 (= e!3569364 e!3569372)))

(declare-fun res!2452461 () Bool)

(assert (=> b!5815581 (=> res!2452461 e!3569372)))

(declare-fun lt!2301346 () Context!10438)

(declare-fun lt!2301350 () (InoxSet Context!10438))

(declare-fun derivationStepZipperDown!1173 (Regex!15835 Context!10438 C!31940) (InoxSet Context!10438))

(assert (=> b!5815581 (= res!2452461 (not (= lt!2301350 (derivationStepZipperDown!1173 (reg!16164 r!7292) lt!2301346 (h!70130 s!2326)))))))

(declare-fun lt!2301347 () List!63804)

(assert (=> b!5815581 (= lt!2301346 (Context!10439 lt!2301347))))

(declare-fun lt!2301354 () Context!10438)

(declare-fun lt!2301322 () (InoxSet Context!10438))

(declare-fun lambda!318006 () Int)

(declare-fun flatMap!1442 ((InoxSet Context!10438) Int) (InoxSet Context!10438))

(declare-fun derivationStepZipperUp!1099 (Context!10438 C!31940) (InoxSet Context!10438))

(assert (=> b!5815581 (= (flatMap!1442 lt!2301322 lambda!318006) (derivationStepZipperUp!1099 lt!2301354 (h!70130 s!2326)))))

(declare-fun lt!2301336 () Unit!156930)

(declare-fun lemmaFlatMapOnSingletonSet!974 ((InoxSet Context!10438) Context!10438 Int) Unit!156930)

(assert (=> b!5815581 (= lt!2301336 (lemmaFlatMapOnSingletonSet!974 lt!2301322 lt!2301354 lambda!318006))))

(declare-fun lt!2301340 () (InoxSet Context!10438))

(assert (=> b!5815581 (= lt!2301340 (derivationStepZipperUp!1099 lt!2301354 (h!70130 s!2326)))))

(assert (=> b!5815581 (= lt!2301322 (store ((as const (Array Context!10438 Bool)) false) lt!2301354 true))))

(assert (=> b!5815581 (= lt!2301354 (Context!10439 (Cons!63680 (reg!16164 r!7292) lt!2301347)))))

(assert (=> b!5815581 (= lt!2301347 (Cons!63680 r!7292 Nil!63680))))

(declare-fun e!3569368 () Bool)

(assert (=> b!5815582 (= e!3569366 e!3569368)))

(declare-fun res!2452474 () Bool)

(assert (=> b!5815582 (=> res!2452474 e!3569368)))

(declare-fun appendTo!144 ((InoxSet Context!10438) Context!10438) (InoxSet Context!10438))

(assert (=> b!5815582 (= res!2452474 (not (= (appendTo!144 lt!2301351 lt!2301346) lt!2301322)))))

(declare-fun lambda!318007 () Int)

(declare-fun lt!2301353 () List!63804)

(declare-fun map!14605 ((InoxSet Context!10438) Int) (InoxSet Context!10438))

(declare-fun ++!14054 (List!63804 List!63804) List!63804)

(assert (=> b!5815582 (= (map!14605 lt!2301351 lambda!318007) (store ((as const (Array Context!10438 Bool)) false) (Context!10439 (++!14054 lt!2301353 lt!2301347)) true))))

(declare-fun lambda!318008 () Int)

(declare-fun lt!2301317 () Unit!156930)

(declare-fun lemmaConcatPreservesForall!336 (List!63804 List!63804 Int) Unit!156930)

(assert (=> b!5815582 (= lt!2301317 (lemmaConcatPreservesForall!336 lt!2301353 lt!2301347 lambda!318008))))

(declare-fun lt!2301325 () Context!10438)

(declare-fun lt!2301337 () Unit!156930)

(declare-fun lemmaMapOnSingletonSet!162 ((InoxSet Context!10438) Context!10438 Int) Unit!156930)

(assert (=> b!5815582 (= lt!2301337 (lemmaMapOnSingletonSet!162 lt!2301351 lt!2301325 lambda!318007))))

(declare-fun b!5815583 () Bool)

(assert (=> b!5815583 (= e!3569368 e!3569371)))

(declare-fun res!2452478 () Bool)

(assert (=> b!5815583 (=> res!2452478 e!3569371)))

(declare-fun lt!2301316 () List!63806)

(assert (=> b!5815583 (= res!2452478 (not (= s!2326 lt!2301316)))))

(declare-fun ++!14055 (List!63806 List!63806) List!63806)

(assert (=> b!5815583 (= lt!2301316 (++!14055 (_1!36235 lt!2301338) (_2!36235 lt!2301338)))))

(declare-fun lt!2301342 () Option!15844)

(declare-fun get!21988 (Option!15844) tuple2!65864)

(assert (=> b!5815583 (= lt!2301338 (get!21988 lt!2301342))))

(assert (=> b!5815583 (isDefined!12547 lt!2301342)))

(declare-fun lt!2301328 () (InoxSet Context!10438))

(declare-fun findConcatSeparationZippers!152 ((InoxSet Context!10438) (InoxSet Context!10438) List!63806 List!63806 List!63806) Option!15844)

(assert (=> b!5815583 (= lt!2301342 (findConcatSeparationZippers!152 lt!2301351 lt!2301328 Nil!63682 s!2326 s!2326))))

(declare-fun lt!2301329 () Unit!156930)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!152 ((InoxSet Context!10438) Context!10438 List!63806) Unit!156930)

(assert (=> b!5815583 (= lt!2301329 (lemmaConcatZipperMatchesStringThenFindConcatDefined!152 lt!2301351 lt!2301346 s!2326))))

(declare-fun b!5815584 () Bool)

(declare-fun res!2452471 () Bool)

(assert (=> b!5815584 (=> (not res!2452471) (not e!3569370))))

(declare-fun toList!9619 ((InoxSet Context!10438)) List!63805)

(assert (=> b!5815584 (= res!2452471 (= (toList!9619 z!1189) zl!343))))

(declare-fun b!5815585 () Bool)

(declare-fun e!3569383 () Bool)

(assert (=> b!5815585 (= e!3569383 e!3569366)))

(declare-fun res!2452463 () Bool)

(assert (=> b!5815585 (=> res!2452463 e!3569366)))

(declare-fun lt!2301345 () Bool)

(assert (=> b!5815585 (= res!2452463 lt!2301345)))

(declare-fun lt!2301315 () Regex!15835)

(assert (=> b!5815585 (= lt!2301345 (matchRSpec!2938 lt!2301315 s!2326))))

(assert (=> b!5815585 (= lt!2301345 (matchR!8020 lt!2301315 s!2326))))

(declare-fun lt!2301318 () Unit!156930)

(assert (=> b!5815585 (= lt!2301318 (mainMatchTheorem!2938 lt!2301315 s!2326))))

(declare-fun b!5815586 () Bool)

(declare-fun tp!1604430 () Bool)

(declare-fun e!3569373 () Bool)

(declare-fun inv!82834 (Context!10438) Bool)

(assert (=> b!5815586 (= e!3569379 (and (inv!82834 (h!70129 zl!343)) e!3569373 tp!1604430))))

(declare-fun b!5815587 () Bool)

(assert (=> b!5815587 (= e!3569369 lt!2301352)))

(declare-fun b!5815588 () Bool)

(declare-fun res!2452460 () Bool)

(assert (=> b!5815588 (=> res!2452460 e!3569380)))

(declare-fun generalisedUnion!1698 (List!63804) Regex!15835)

(declare-fun unfocusZipperList!1263 (List!63805) List!63804)

(assert (=> b!5815588 (= res!2452460 (not (= r!7292 (generalisedUnion!1698 (unfocusZipperList!1263 zl!343)))))))

(declare-fun b!5815589 () Bool)

(declare-fun res!2452477 () Bool)

(assert (=> b!5815589 (=> res!2452477 e!3569376)))

(assert (=> b!5815589 (= res!2452477 ((_ is Nil!63682) s!2326))))

(declare-fun b!5815590 () Bool)

(declare-fun res!2452467 () Bool)

(assert (=> b!5815590 (=> res!2452467 e!3569380)))

(declare-fun generalisedConcat!1450 (List!63804) Regex!15835)

(assert (=> b!5815590 (= res!2452467 (not (= r!7292 (generalisedConcat!1450 (exprs!5719 (h!70129 zl!343))))))))

(declare-fun setElem!39184 () Context!10438)

(declare-fun tp!1604431 () Bool)

(declare-fun setNonEmpty!39184 () Bool)

(assert (=> setNonEmpty!39184 (= setRes!39184 (and tp!1604431 (inv!82834 setElem!39184) e!3569374))))

(declare-fun setRest!39184 () (InoxSet Context!10438))

(assert (=> setNonEmpty!39184 (= z!1189 ((_ map or) (store ((as const (Array Context!10438 Bool)) false) setElem!39184 true) setRest!39184))))

(declare-fun b!5815591 () Bool)

(declare-fun e!3569377 () Bool)

(assert (=> b!5815591 (= e!3569377 e!3569383)))

(declare-fun res!2452469 () Bool)

(assert (=> b!5815591 (=> res!2452469 e!3569383)))

(declare-fun lt!2301321 () List!63805)

(assert (=> b!5815591 (= res!2452469 (not (= (unfocusZipper!1577 lt!2301321) r!7292)))))

(assert (=> b!5815591 (= lt!2301321 (Cons!63681 lt!2301346 Nil!63681))))

(declare-fun b!5815592 () Bool)

(declare-fun res!2452476 () Bool)

(assert (=> b!5815592 (=> res!2452476 e!3569380)))

(assert (=> b!5815592 (= res!2452476 (or ((_ is EmptyExpr!15835) r!7292) ((_ is EmptyLang!15835) r!7292) ((_ is ElementMatch!15835) r!7292) ((_ is Union!15835) r!7292) ((_ is Concat!24680) r!7292)))))

(declare-fun setIsEmpty!39184 () Bool)

(assert (=> setIsEmpty!39184 setRes!39184))

(declare-fun b!5815593 () Bool)

(declare-fun res!2452475 () Bool)

(assert (=> b!5815593 (=> res!2452475 e!3569371)))

(assert (=> b!5815593 (= res!2452475 (not (matchZipper!1963 lt!2301328 (_2!36235 lt!2301338))))))

(declare-fun b!5815594 () Bool)

(declare-fun e!3569375 () Bool)

(assert (=> b!5815594 (= e!3569376 e!3569375)))

(declare-fun res!2452457 () Bool)

(assert (=> b!5815594 (=> res!2452457 e!3569375)))

(declare-fun lt!2301343 () (InoxSet Context!10438))

(declare-fun lt!2301339 () (InoxSet Context!10438))

(assert (=> b!5815594 (= res!2452457 (not (= lt!2301343 lt!2301339)))))

(assert (=> b!5815594 (= lt!2301339 (derivationStepZipperDown!1173 r!7292 (Context!10439 Nil!63680) (h!70130 s!2326)))))

(assert (=> b!5815594 (= lt!2301343 (derivationStepZipperUp!1099 (Context!10439 (Cons!63680 r!7292 Nil!63680)) (h!70130 s!2326)))))

(declare-fun derivationStepZipper!1904 ((InoxSet Context!10438) C!31940) (InoxSet Context!10438))

(assert (=> b!5815594 (= lt!2301350 (derivationStepZipper!1904 z!1189 (h!70130 s!2326)))))

(declare-fun b!5815595 () Bool)

(declare-fun tp!1604428 () Bool)

(assert (=> b!5815595 (= e!3569373 tp!1604428)))

(declare-fun b!5815596 () Bool)

(declare-fun e!3569382 () Bool)

(declare-fun e!3569378 () Bool)

(assert (=> b!5815596 (= e!3569382 e!3569378)))

(declare-fun res!2452458 () Bool)

(assert (=> b!5815596 (=> res!2452458 e!3569378)))

(assert (=> b!5815596 (= res!2452458 (not (= lt!2301350 (derivationStepZipper!1904 lt!2301328 (h!70130 s!2326)))))))

(assert (=> b!5815596 (= (flatMap!1442 lt!2301328 lambda!318006) (derivationStepZipperUp!1099 lt!2301346 (h!70130 s!2326)))))

(declare-fun lt!2301348 () Unit!156930)

(assert (=> b!5815596 (= lt!2301348 (lemmaFlatMapOnSingletonSet!974 lt!2301328 lt!2301346 lambda!318006))))

(assert (=> b!5815596 (= (flatMap!1442 lt!2301351 lambda!318006) (derivationStepZipperUp!1099 lt!2301325 (h!70130 s!2326)))))

(declare-fun lt!2301330 () Unit!156930)

(assert (=> b!5815596 (= lt!2301330 (lemmaFlatMapOnSingletonSet!974 lt!2301351 lt!2301325 lambda!318006))))

(declare-fun lt!2301335 () (InoxSet Context!10438))

(assert (=> b!5815596 (= lt!2301335 (derivationStepZipperUp!1099 lt!2301346 (h!70130 s!2326)))))

(declare-fun lt!2301319 () (InoxSet Context!10438))

(assert (=> b!5815596 (= lt!2301319 (derivationStepZipperUp!1099 lt!2301325 (h!70130 s!2326)))))

(assert (=> b!5815596 (= lt!2301328 (store ((as const (Array Context!10438 Bool)) false) lt!2301346 true))))

(assert (=> b!5815596 (= lt!2301351 (store ((as const (Array Context!10438 Bool)) false) lt!2301325 true))))

(assert (=> b!5815596 (= lt!2301325 (Context!10439 lt!2301353))))

(assert (=> b!5815596 (= lt!2301353 (Cons!63680 (reg!16164 r!7292) Nil!63680))))

(assert (=> b!5815597 (= e!3569375 e!3569364)))

(declare-fun res!2452456 () Bool)

(assert (=> b!5815597 (=> res!2452456 e!3569364)))

(assert (=> b!5815597 (= res!2452456 (not (= lt!2301350 lt!2301339)))))

(assert (=> b!5815597 (= (flatMap!1442 z!1189 lambda!318006) (derivationStepZipperUp!1099 (h!70129 zl!343) (h!70130 s!2326)))))

(declare-fun lt!2301349 () Unit!156930)

(assert (=> b!5815597 (= lt!2301349 (lemmaFlatMapOnSingletonSet!974 z!1189 (h!70129 zl!343) lambda!318006))))

(declare-fun b!5815598 () Bool)

(assert (=> b!5815598 (= e!3569372 e!3569382)))

(declare-fun res!2452465 () Bool)

(assert (=> b!5815598 (=> res!2452465 e!3569382)))

(assert (=> b!5815598 (= res!2452465 (not (= (unfocusZipper!1577 (Cons!63681 lt!2301354 Nil!63681)) lt!2301315)))))

(assert (=> b!5815598 (= lt!2301315 (Concat!24680 (reg!16164 r!7292) r!7292))))

(declare-fun b!5815599 () Bool)

(declare-fun tp_is_empty!40923 () Bool)

(assert (=> b!5815599 (= e!3569381 tp_is_empty!40923)))

(declare-fun b!5815600 () Bool)

(assert (=> b!5815600 (= e!3569371 true)))

(assert (=> b!5815600 (matchR!8020 r!7292 (_2!36235 lt!2301338))))

(declare-fun lt!2301323 () Unit!156930)

(declare-fun theoremZipperRegexEquiv!687 ((InoxSet Context!10438) List!63805 Regex!15835 List!63806) Unit!156930)

(assert (=> b!5815600 (= lt!2301323 (theoremZipperRegexEquiv!687 lt!2301328 lt!2301321 r!7292 (_2!36235 lt!2301338)))))

(assert (=> b!5815600 (matchR!8020 (reg!16164 r!7292) (_1!36235 lt!2301338))))

(declare-fun lt!2301324 () List!63805)

(declare-fun lt!2301320 () Unit!156930)

(assert (=> b!5815600 (= lt!2301320 (theoremZipperRegexEquiv!687 lt!2301351 lt!2301324 (reg!16164 r!7292) (_1!36235 lt!2301338)))))

(assert (=> b!5815600 (matchZipper!1963 (store ((as const (Array Context!10438 Bool)) false) (Context!10439 (++!14054 lt!2301353 lt!2301347)) true) lt!2301316)))

(declare-fun lt!2301331 () Unit!156930)

(assert (=> b!5815600 (= lt!2301331 (lemmaConcatPreservesForall!336 lt!2301353 lt!2301347 lambda!318008))))

(declare-fun lt!2301334 () Unit!156930)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!158 (Context!10438 Context!10438 List!63806 List!63806) Unit!156930)

(assert (=> b!5815600 (= lt!2301334 (lemmaConcatenateContextMatchesConcatOfStrings!158 lt!2301325 lt!2301346 (_1!36235 lt!2301338) (_2!36235 lt!2301338)))))

(declare-fun b!5815601 () Bool)

(declare-fun tp!1604432 () Bool)

(assert (=> b!5815601 (= e!3569381 tp!1604432)))

(declare-fun b!5815602 () Bool)

(declare-fun res!2452479 () Bool)

(assert (=> b!5815602 (=> res!2452479 e!3569380)))

(assert (=> b!5815602 (= res!2452479 (not ((_ is Cons!63680) (exprs!5719 (h!70129 zl!343)))))))

(declare-fun b!5815603 () Bool)

(declare-fun tp!1604426 () Bool)

(declare-fun tp!1604425 () Bool)

(assert (=> b!5815603 (= e!3569381 (and tp!1604426 tp!1604425))))

(declare-fun b!5815604 () Bool)

(declare-fun res!2452468 () Bool)

(assert (=> b!5815604 (=> res!2452468 e!3569372)))

(assert (=> b!5815604 (= res!2452468 (not (= (matchZipper!1963 lt!2301322 s!2326) (matchZipper!1963 (derivationStepZipper!1904 lt!2301322 (h!70130 s!2326)) (t!377161 s!2326)))))))

(declare-fun b!5815605 () Bool)

(declare-fun tp!1604424 () Bool)

(assert (=> b!5815605 (= e!3569367 (and tp_is_empty!40923 tp!1604424))))

(declare-fun b!5815606 () Bool)

(assert (=> b!5815606 (= e!3569378 e!3569377)))

(declare-fun res!2452473 () Bool)

(assert (=> b!5815606 (=> res!2452473 e!3569377)))

(assert (=> b!5815606 (= res!2452473 (not (= (unfocusZipper!1577 lt!2301324) (reg!16164 r!7292))))))

(assert (=> b!5815606 (= lt!2301324 (Cons!63681 lt!2301325 Nil!63681))))

(assert (= (and start!595924 res!2452480) b!5815584))

(assert (= (and b!5815584 res!2452471) b!5815573))

(assert (= (and b!5815573 res!2452470) b!5815580))

(assert (= (and b!5815580 (not res!2452462)) b!5815576))

(assert (= (and b!5815576 (not res!2452481)) b!5815590))

(assert (= (and b!5815590 (not res!2452467)) b!5815602))

(assert (= (and b!5815602 (not res!2452479)) b!5815588))

(assert (= (and b!5815588 (not res!2452460)) b!5815592))

(assert (= (and b!5815592 (not res!2452476)) b!5815577))

(assert (= (and b!5815577 (not res!2452472)) b!5815587))

(assert (= (and b!5815577 (not res!2452466)) b!5815589))

(assert (= (and b!5815589 (not res!2452477)) b!5815594))

(assert (= (and b!5815594 (not res!2452457)) b!5815597))

(assert (= (and b!5815597 (not res!2452456)) b!5815581))

(assert (= (and b!5815581 (not res!2452461)) b!5815604))

(assert (= (and b!5815604 (not res!2452468)) b!5815574))

(assert (= (and b!5815574 (not res!2452459)) b!5815598))

(assert (= (and b!5815598 (not res!2452465)) b!5815596))

(assert (= (and b!5815596 (not res!2452458)) b!5815606))

(assert (= (and b!5815606 (not res!2452473)) b!5815591))

(assert (= (and b!5815591 (not res!2452469)) b!5815585))

(assert (= (and b!5815585 (not res!2452463)) b!5815579))

(assert (= (and b!5815579 (not res!2452464)) b!5815582))

(assert (= (and b!5815582 (not res!2452474)) b!5815583))

(assert (= (and b!5815583 (not res!2452478)) b!5815578))

(assert (= (and b!5815578 (not res!2452482)) b!5815593))

(assert (= (and b!5815593 (not res!2452475)) b!5815600))

(assert (= (and start!595924 ((_ is ElementMatch!15835) r!7292)) b!5815599))

(assert (= (and start!595924 ((_ is Concat!24680) r!7292)) b!5815603))

(assert (= (and start!595924 ((_ is Star!15835) r!7292)) b!5815601))

(assert (= (and start!595924 ((_ is Union!15835) r!7292)) b!5815572))

(assert (= (and start!595924 condSetEmpty!39184) setIsEmpty!39184))

(assert (= (and start!595924 (not condSetEmpty!39184)) setNonEmpty!39184))

(assert (= setNonEmpty!39184 b!5815575))

(assert (= b!5815586 b!5815595))

(assert (= (and start!595924 ((_ is Cons!63681) zl!343)) b!5815586))

(assert (= (and start!595924 ((_ is Cons!63682) s!2326)) b!5815605))

(declare-fun m!6753204 () Bool)

(assert (=> b!5815577 m!6753204))

(declare-fun m!6753206 () Bool)

(assert (=> b!5815577 m!6753206))

(declare-fun m!6753208 () Bool)

(assert (=> b!5815577 m!6753208))

(declare-fun m!6753210 () Bool)

(assert (=> b!5815577 m!6753210))

(declare-fun m!6753212 () Bool)

(assert (=> b!5815577 m!6753212))

(declare-fun m!6753214 () Bool)

(assert (=> b!5815577 m!6753214))

(assert (=> b!5815577 m!6753204))

(assert (=> b!5815577 m!6753214))

(declare-fun m!6753216 () Bool)

(assert (=> b!5815577 m!6753216))

(declare-fun m!6753218 () Bool)

(assert (=> b!5815577 m!6753218))

(assert (=> b!5815577 m!6753204))

(declare-fun m!6753220 () Bool)

(assert (=> b!5815577 m!6753220))

(declare-fun m!6753222 () Bool)

(assert (=> b!5815594 m!6753222))

(declare-fun m!6753224 () Bool)

(assert (=> b!5815594 m!6753224))

(declare-fun m!6753226 () Bool)

(assert (=> b!5815594 m!6753226))

(declare-fun m!6753228 () Bool)

(assert (=> b!5815581 m!6753228))

(declare-fun m!6753230 () Bool)

(assert (=> b!5815581 m!6753230))

(declare-fun m!6753232 () Bool)

(assert (=> b!5815581 m!6753232))

(declare-fun m!6753234 () Bool)

(assert (=> b!5815581 m!6753234))

(declare-fun m!6753236 () Bool)

(assert (=> b!5815581 m!6753236))

(declare-fun m!6753238 () Bool)

(assert (=> b!5815573 m!6753238))

(declare-fun m!6753240 () Bool)

(assert (=> b!5815585 m!6753240))

(declare-fun m!6753242 () Bool)

(assert (=> b!5815585 m!6753242))

(declare-fun m!6753244 () Bool)

(assert (=> b!5815585 m!6753244))

(declare-fun m!6753246 () Bool)

(assert (=> b!5815584 m!6753246))

(declare-fun m!6753248 () Bool)

(assert (=> setNonEmpty!39184 m!6753248))

(declare-fun m!6753250 () Bool)

(assert (=> b!5815578 m!6753250))

(declare-fun m!6753252 () Bool)

(assert (=> b!5815600 m!6753252))

(declare-fun m!6753254 () Bool)

(assert (=> b!5815600 m!6753254))

(declare-fun m!6753256 () Bool)

(assert (=> b!5815600 m!6753256))

(declare-fun m!6753258 () Bool)

(assert (=> b!5815600 m!6753258))

(declare-fun m!6753260 () Bool)

(assert (=> b!5815600 m!6753260))

(declare-fun m!6753262 () Bool)

(assert (=> b!5815600 m!6753262))

(declare-fun m!6753264 () Bool)

(assert (=> b!5815600 m!6753264))

(declare-fun m!6753266 () Bool)

(assert (=> b!5815600 m!6753266))

(assert (=> b!5815600 m!6753256))

(declare-fun m!6753268 () Bool)

(assert (=> b!5815600 m!6753268))

(declare-fun m!6753270 () Bool)

(assert (=> b!5815596 m!6753270))

(declare-fun m!6753272 () Bool)

(assert (=> b!5815596 m!6753272))

(declare-fun m!6753274 () Bool)

(assert (=> b!5815596 m!6753274))

(declare-fun m!6753276 () Bool)

(assert (=> b!5815596 m!6753276))

(declare-fun m!6753278 () Bool)

(assert (=> b!5815596 m!6753278))

(declare-fun m!6753280 () Bool)

(assert (=> b!5815596 m!6753280))

(declare-fun m!6753282 () Bool)

(assert (=> b!5815596 m!6753282))

(declare-fun m!6753284 () Bool)

(assert (=> b!5815596 m!6753284))

(declare-fun m!6753286 () Bool)

(assert (=> b!5815596 m!6753286))

(declare-fun m!6753288 () Bool)

(assert (=> b!5815588 m!6753288))

(assert (=> b!5815588 m!6753288))

(declare-fun m!6753290 () Bool)

(assert (=> b!5815588 m!6753290))

(declare-fun m!6753292 () Bool)

(assert (=> b!5815583 m!6753292))

(declare-fun m!6753294 () Bool)

(assert (=> b!5815583 m!6753294))

(declare-fun m!6753296 () Bool)

(assert (=> b!5815583 m!6753296))

(declare-fun m!6753298 () Bool)

(assert (=> b!5815583 m!6753298))

(declare-fun m!6753300 () Bool)

(assert (=> b!5815583 m!6753300))

(declare-fun m!6753302 () Bool)

(assert (=> b!5815606 m!6753302))

(declare-fun m!6753304 () Bool)

(assert (=> b!5815604 m!6753304))

(declare-fun m!6753306 () Bool)

(assert (=> b!5815604 m!6753306))

(assert (=> b!5815604 m!6753306))

(declare-fun m!6753308 () Bool)

(assert (=> b!5815604 m!6753308))

(declare-fun m!6753310 () Bool)

(assert (=> b!5815586 m!6753310))

(declare-fun m!6753312 () Bool)

(assert (=> b!5815598 m!6753312))

(declare-fun m!6753314 () Bool)

(assert (=> b!5815579 m!6753314))

(declare-fun m!6753316 () Bool)

(assert (=> b!5815582 m!6753316))

(assert (=> b!5815582 m!6753256))

(assert (=> b!5815582 m!6753252))

(declare-fun m!6753318 () Bool)

(assert (=> b!5815582 m!6753318))

(declare-fun m!6753320 () Bool)

(assert (=> b!5815582 m!6753320))

(assert (=> b!5815582 m!6753254))

(declare-fun m!6753322 () Bool)

(assert (=> b!5815576 m!6753322))

(declare-fun m!6753324 () Bool)

(assert (=> b!5815593 m!6753324))

(declare-fun m!6753326 () Bool)

(assert (=> b!5815597 m!6753326))

(declare-fun m!6753328 () Bool)

(assert (=> b!5815597 m!6753328))

(declare-fun m!6753330 () Bool)

(assert (=> b!5815597 m!6753330))

(declare-fun m!6753332 () Bool)

(assert (=> start!595924 m!6753332))

(declare-fun m!6753334 () Bool)

(assert (=> b!5815580 m!6753334))

(declare-fun m!6753336 () Bool)

(assert (=> b!5815580 m!6753336))

(declare-fun m!6753338 () Bool)

(assert (=> b!5815580 m!6753338))

(declare-fun m!6753340 () Bool)

(assert (=> b!5815591 m!6753340))

(declare-fun m!6753342 () Bool)

(assert (=> b!5815590 m!6753342))

(check-sat (not b!5815582) (not b!5815597) (not b!5815598) (not b!5815581) (not b!5815593) (not b!5815577) (not b!5815604) (not b!5815585) (not b!5815596) (not b!5815579) (not b!5815573) (not b!5815605) (not b!5815584) (not b!5815595) (not start!595924) (not b!5815578) (not b!5815590) (not b!5815588) (not b!5815591) (not b!5815576) (not b!5815603) (not b!5815594) (not b!5815575) (not setNonEmpty!39184) (not b!5815600) (not b!5815583) (not b!5815606) tp_is_empty!40923 (not b!5815572) (not b!5815580) (not b!5815586) (not b!5815601))
(check-sat)
