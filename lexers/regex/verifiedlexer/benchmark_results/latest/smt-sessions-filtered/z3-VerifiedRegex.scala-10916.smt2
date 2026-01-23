; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564970 () Bool)

(assert start!564970)

(declare-fun b!5368829 () Bool)

(assert (=> b!5368829 true))

(assert (=> b!5368829 true))

(declare-fun lambda!276854 () Int)

(declare-fun lambda!276853 () Int)

(assert (=> b!5368829 (not (= lambda!276854 lambda!276853))))

(assert (=> b!5368829 true))

(assert (=> b!5368829 true))

(declare-fun b!5368839 () Bool)

(assert (=> b!5368839 true))

(declare-fun bs!1243528 () Bool)

(declare-fun b!5368830 () Bool)

(assert (= bs!1243528 (and b!5368830 b!5368829)))

(declare-datatypes ((C!30428 0))(
  ( (C!30429 (val!24916 Int)) )
))
(declare-datatypes ((Regex!15079 0))(
  ( (ElementMatch!15079 (c!935395 C!30428)) (Concat!23924 (regOne!30670 Regex!15079) (regTwo!30670 Regex!15079)) (EmptyExpr!15079) (Star!15079 (reg!15408 Regex!15079)) (EmptyLang!15079) (Union!15079 (regOne!30671 Regex!15079) (regTwo!30671 Regex!15079)) )
))
(declare-fun r!7292 () Regex!15079)

(declare-fun lambda!276856 () Int)

(declare-fun lt!2186380 () Regex!15079)

(assert (=> bs!1243528 (= (= lt!2186380 (regOne!30670 r!7292)) (= lambda!276856 lambda!276853))))

(assert (=> bs!1243528 (not (= lambda!276856 lambda!276854))))

(assert (=> b!5368830 true))

(assert (=> b!5368830 true))

(assert (=> b!5368830 true))

(declare-fun lambda!276857 () Int)

(assert (=> bs!1243528 (not (= lambda!276857 lambda!276853))))

(assert (=> bs!1243528 (= (= lt!2186380 (regOne!30670 r!7292)) (= lambda!276857 lambda!276854))))

(assert (=> b!5368830 (not (= lambda!276857 lambda!276856))))

(assert (=> b!5368830 true))

(assert (=> b!5368830 true))

(assert (=> b!5368830 true))

(declare-fun b!5368825 () Bool)

(declare-fun e!3331534 () Bool)

(declare-fun tp!1489736 () Bool)

(assert (=> b!5368825 (= e!3331534 tp!1489736)))

(declare-fun e!3331517 () Bool)

(declare-fun b!5368826 () Bool)

(declare-fun e!3331538 () Bool)

(declare-fun tp!1489737 () Bool)

(declare-datatypes ((List!61536 0))(
  ( (Nil!61412) (Cons!61412 (h!67860 Regex!15079) (t!374759 List!61536)) )
))
(declare-datatypes ((Context!8926 0))(
  ( (Context!8927 (exprs!4963 List!61536)) )
))
(declare-datatypes ((List!61537 0))(
  ( (Nil!61413) (Cons!61413 (h!67861 Context!8926) (t!374760 List!61537)) )
))
(declare-fun zl!343 () List!61537)

(declare-fun inv!80944 (Context!8926) Bool)

(assert (=> b!5368826 (= e!3331517 (and (inv!80944 (h!67861 zl!343)) e!3331538 tp!1489737))))

(declare-fun res!2278440 () Bool)

(declare-fun e!3331533 () Bool)

(assert (=> start!564970 (=> (not res!2278440) (not e!3331533))))

(declare-fun validRegex!6815 (Regex!15079) Bool)

(assert (=> start!564970 (= res!2278440 (validRegex!6815 r!7292))))

(assert (=> start!564970 e!3331533))

(declare-fun e!3331535 () Bool)

(assert (=> start!564970 e!3331535))

(declare-fun condSetEmpty!34781 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8926))

(assert (=> start!564970 (= condSetEmpty!34781 (= z!1189 ((as const (Array Context!8926 Bool)) false)))))

(declare-fun setRes!34781 () Bool)

(assert (=> start!564970 setRes!34781))

(assert (=> start!564970 e!3331517))

(declare-fun e!3331524 () Bool)

(assert (=> start!564970 e!3331524))

(declare-fun b!5368827 () Bool)

(declare-fun res!2278451 () Bool)

(declare-fun e!3331515 () Bool)

(assert (=> b!5368827 (=> res!2278451 e!3331515)))

(declare-datatypes ((List!61538 0))(
  ( (Nil!61414) (Cons!61414 (h!67862 C!30428) (t!374761 List!61538)) )
))
(declare-datatypes ((tuple2!64556 0))(
  ( (tuple2!64557 (_1!35581 List!61538) (_2!35581 List!61538)) )
))
(declare-fun lt!2186375 () tuple2!64556)

(declare-fun matchR!7264 (Regex!15079 List!61538) Bool)

(assert (=> b!5368827 (= res!2278451 (not (matchR!7264 lt!2186380 (_1!35581 lt!2186375))))))

(declare-fun b!5368828 () Bool)

(declare-fun res!2278458 () Bool)

(assert (=> b!5368828 (=> (not res!2278458) (not e!3331533))))

(declare-fun toList!8863 ((InoxSet Context!8926)) List!61537)

(assert (=> b!5368828 (= res!2278458 (= (toList!8863 z!1189) zl!343))))

(declare-fun e!3331532 () Bool)

(declare-fun e!3331518 () Bool)

(assert (=> b!5368829 (= e!3331532 e!3331518)))

(declare-fun res!2278444 () Bool)

(assert (=> b!5368829 (=> res!2278444 e!3331518)))

(declare-fun s!2326 () List!61538)

(declare-fun lt!2186369 () Bool)

(declare-fun lt!2186368 () Bool)

(get-info :version)

(assert (=> b!5368829 (= res!2278444 (or (not (= lt!2186368 lt!2186369)) ((_ is Nil!61414) s!2326)))))

(declare-fun Exists!2260 (Int) Bool)

(assert (=> b!5368829 (= (Exists!2260 lambda!276853) (Exists!2260 lambda!276854))))

(declare-datatypes ((Unit!153834 0))(
  ( (Unit!153835) )
))
(declare-fun lt!2186396 () Unit!153834)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!914 (Regex!15079 Regex!15079 List!61538) Unit!153834)

(assert (=> b!5368829 (= lt!2186396 (lemmaExistCutMatchRandMatchRSpecEquivalent!914 (regOne!30670 r!7292) (regTwo!30670 r!7292) s!2326))))

(assert (=> b!5368829 (= lt!2186369 (Exists!2260 lambda!276853))))

(declare-datatypes ((Option!15190 0))(
  ( (None!15189) (Some!15189 (v!51218 tuple2!64556)) )
))
(declare-fun isDefined!11893 (Option!15190) Bool)

(declare-fun findConcatSeparation!1604 (Regex!15079 Regex!15079 List!61538 List!61538 List!61538) Option!15190)

(assert (=> b!5368829 (= lt!2186369 (isDefined!11893 (findConcatSeparation!1604 (regOne!30670 r!7292) (regTwo!30670 r!7292) Nil!61414 s!2326 s!2326)))))

(declare-fun lt!2186361 () Unit!153834)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1368 (Regex!15079 Regex!15079 List!61538) Unit!153834)

(assert (=> b!5368829 (= lt!2186361 (lemmaFindConcatSeparationEquivalentToExists!1368 (regOne!30670 r!7292) (regTwo!30670 r!7292) s!2326))))

(declare-fun e!3331529 () Bool)

(assert (=> b!5368830 (= e!3331529 e!3331515)))

(declare-fun res!2278436 () Bool)

(assert (=> b!5368830 (=> res!2278436 e!3331515)))

(declare-fun ++!13382 (List!61538 List!61538) List!61538)

(assert (=> b!5368830 (= res!2278436 (not (= (++!13382 (_1!35581 lt!2186375) (_2!35581 lt!2186375)) s!2326)))))

(declare-fun lt!2186378 () Option!15190)

(declare-fun get!21127 (Option!15190) tuple2!64556)

(assert (=> b!5368830 (= lt!2186375 (get!21127 lt!2186378))))

(assert (=> b!5368830 (= (Exists!2260 lambda!276856) (Exists!2260 lambda!276857))))

(declare-fun lt!2186359 () Unit!153834)

(assert (=> b!5368830 (= lt!2186359 (lemmaExistCutMatchRandMatchRSpecEquivalent!914 lt!2186380 (regTwo!30670 r!7292) s!2326))))

(assert (=> b!5368830 (= (isDefined!11893 lt!2186378) (Exists!2260 lambda!276856))))

(assert (=> b!5368830 (= lt!2186378 (findConcatSeparation!1604 lt!2186380 (regTwo!30670 r!7292) Nil!61414 s!2326 s!2326))))

(declare-fun lt!2186377 () Unit!153834)

(assert (=> b!5368830 (= lt!2186377 (lemmaFindConcatSeparationEquivalentToExists!1368 lt!2186380 (regTwo!30670 r!7292) s!2326))))

(declare-fun b!5368831 () Bool)

(declare-fun res!2278443 () Bool)

(assert (=> b!5368831 (=> res!2278443 e!3331532)))

(declare-fun isEmpty!33392 (List!61537) Bool)

(assert (=> b!5368831 (= res!2278443 (not (isEmpty!33392 (t!374760 zl!343))))))

(declare-fun b!5368832 () Bool)

(declare-fun res!2278460 () Bool)

(assert (=> b!5368832 (=> res!2278460 e!3331532)))

(declare-fun generalisedUnion!1008 (List!61536) Regex!15079)

(declare-fun unfocusZipperList!521 (List!61537) List!61536)

(assert (=> b!5368832 (= res!2278460 (not (= r!7292 (generalisedUnion!1008 (unfocusZipperList!521 zl!343)))))))

(declare-fun b!5368833 () Bool)

(declare-fun e!3331522 () Bool)

(declare-fun lt!2186372 () (InoxSet Context!8926))

(declare-fun matchZipper!1323 ((InoxSet Context!8926) List!61538) Bool)

(assert (=> b!5368833 (= e!3331522 (matchZipper!1323 lt!2186372 (t!374761 s!2326)))))

(declare-fun b!5368834 () Bool)

(declare-fun e!3331523 () Bool)

(declare-fun e!3331525 () Bool)

(assert (=> b!5368834 (= e!3331523 e!3331525)))

(declare-fun res!2278448 () Bool)

(assert (=> b!5368834 (=> res!2278448 e!3331525)))

(declare-fun lt!2186362 () (InoxSet Context!8926))

(declare-fun lt!2186358 () (InoxSet Context!8926))

(assert (=> b!5368834 (= res!2278448 (not (= lt!2186362 lt!2186358)))))

(declare-fun lt!2186390 () Context!8926)

(declare-fun derivationStepZipperDown!527 (Regex!15079 Context!8926 C!30428) (InoxSet Context!8926))

(assert (=> b!5368834 (= lt!2186358 (derivationStepZipperDown!527 (reg!15408 (regOne!30670 r!7292)) lt!2186390 (h!67862 s!2326)))))

(declare-fun lt!2186355 () List!61536)

(assert (=> b!5368834 (= lt!2186390 (Context!8927 lt!2186355))))

(assert (=> b!5368834 (= lt!2186355 (Cons!61412 lt!2186380 (t!374759 (exprs!4963 (h!67861 zl!343)))))))

(assert (=> b!5368834 (= lt!2186380 (Star!15079 (reg!15408 (regOne!30670 r!7292))))))

(declare-fun b!5368835 () Bool)

(declare-fun res!2278431 () Bool)

(assert (=> b!5368835 (=> res!2278431 e!3331515)))

(declare-fun isEmpty!33393 (List!61538) Bool)

(assert (=> b!5368835 (= res!2278431 (not (isEmpty!33393 (_1!35581 lt!2186375))))))

(declare-fun b!5368836 () Bool)

(declare-fun res!2278442 () Bool)

(assert (=> b!5368836 (=> res!2278442 e!3331523)))

(declare-fun e!3331519 () Bool)

(assert (=> b!5368836 (= res!2278442 e!3331519)))

(declare-fun res!2278428 () Bool)

(assert (=> b!5368836 (=> (not res!2278428) (not e!3331519))))

(assert (=> b!5368836 (= res!2278428 ((_ is Concat!23924) (regOne!30670 r!7292)))))

(declare-fun b!5368837 () Bool)

(declare-fun tp!1489734 () Bool)

(assert (=> b!5368837 (= e!3331538 tp!1489734)))

(declare-fun b!5368838 () Bool)

(declare-fun res!2278433 () Bool)

(declare-fun e!3331537 () Bool)

(assert (=> b!5368838 (=> res!2278433 e!3331537)))

(declare-fun lt!2186392 () (InoxSet Context!8926))

(declare-fun lt!2186394 () (InoxSet Context!8926))

(assert (=> b!5368838 (= res!2278433 (not (= (matchZipper!1323 lt!2186392 s!2326) (matchZipper!1323 lt!2186394 (t!374761 s!2326)))))))

(assert (=> b!5368839 (= e!3331518 e!3331523)))

(declare-fun res!2278430 () Bool)

(assert (=> b!5368839 (=> res!2278430 e!3331523)))

(assert (=> b!5368839 (= res!2278430 (or (and ((_ is ElementMatch!15079) (regOne!30670 r!7292)) (= (c!935395 (regOne!30670 r!7292)) (h!67862 s!2326))) ((_ is Union!15079) (regOne!30670 r!7292))))))

(declare-fun lt!2186388 () Unit!153834)

(declare-fun e!3331531 () Unit!153834)

(assert (=> b!5368839 (= lt!2186388 e!3331531)))

(declare-fun c!935394 () Bool)

(declare-fun nullable!5248 (Regex!15079) Bool)

(assert (=> b!5368839 (= c!935394 (nullable!5248 (h!67860 (exprs!4963 (h!67861 zl!343)))))))

(declare-fun lambda!276855 () Int)

(declare-fun flatMap!806 ((InoxSet Context!8926) Int) (InoxSet Context!8926))

(declare-fun derivationStepZipperUp!451 (Context!8926 C!30428) (InoxSet Context!8926))

(assert (=> b!5368839 (= (flatMap!806 z!1189 lambda!276855) (derivationStepZipperUp!451 (h!67861 zl!343) (h!67862 s!2326)))))

(declare-fun lt!2186387 () Unit!153834)

(declare-fun lemmaFlatMapOnSingletonSet!338 ((InoxSet Context!8926) Context!8926 Int) Unit!153834)

(assert (=> b!5368839 (= lt!2186387 (lemmaFlatMapOnSingletonSet!338 z!1189 (h!67861 zl!343) lambda!276855))))

(declare-fun lt!2186376 () Context!8926)

(assert (=> b!5368839 (= lt!2186372 (derivationStepZipperUp!451 lt!2186376 (h!67862 s!2326)))))

(assert (=> b!5368839 (= lt!2186362 (derivationStepZipperDown!527 (h!67860 (exprs!4963 (h!67861 zl!343))) lt!2186376 (h!67862 s!2326)))))

(assert (=> b!5368839 (= lt!2186376 (Context!8927 (t!374759 (exprs!4963 (h!67861 zl!343)))))))

(declare-fun lt!2186393 () (InoxSet Context!8926))

(assert (=> b!5368839 (= lt!2186393 (derivationStepZipperUp!451 (Context!8927 (Cons!61412 (h!67860 (exprs!4963 (h!67861 zl!343))) (t!374759 (exprs!4963 (h!67861 zl!343))))) (h!67862 s!2326)))))

(declare-fun b!5368840 () Bool)

(declare-fun e!3331521 () Bool)

(declare-fun e!3331520 () Bool)

(assert (=> b!5368840 (= e!3331521 e!3331520)))

(declare-fun res!2278447 () Bool)

(assert (=> b!5368840 (=> res!2278447 e!3331520)))

(declare-fun lt!2186360 () List!61537)

(declare-fun zipperDepth!152 (List!61537) Int)

(assert (=> b!5368840 (= res!2278447 (< (zipperDepth!152 zl!343) (zipperDepth!152 lt!2186360)))))

(assert (=> b!5368840 (= lt!2186360 (Cons!61413 lt!2186376 Nil!61413))))

(declare-fun b!5368841 () Bool)

(assert (=> b!5368841 (= e!3331525 e!3331537)))

(declare-fun res!2278459 () Bool)

(assert (=> b!5368841 (=> res!2278459 e!3331537)))

(assert (=> b!5368841 (= res!2278459 (not (= lt!2186394 lt!2186358)))))

(declare-fun lt!2186395 () Context!8926)

(assert (=> b!5368841 (= (flatMap!806 lt!2186392 lambda!276855) (derivationStepZipperUp!451 lt!2186395 (h!67862 s!2326)))))

(declare-fun lt!2186363 () Unit!153834)

(assert (=> b!5368841 (= lt!2186363 (lemmaFlatMapOnSingletonSet!338 lt!2186392 lt!2186395 lambda!276855))))

(declare-fun lt!2186373 () (InoxSet Context!8926))

(assert (=> b!5368841 (= lt!2186373 (derivationStepZipperUp!451 lt!2186395 (h!67862 s!2326)))))

(declare-fun derivationStepZipper!1318 ((InoxSet Context!8926) C!30428) (InoxSet Context!8926))

(assert (=> b!5368841 (= lt!2186394 (derivationStepZipper!1318 lt!2186392 (h!67862 s!2326)))))

(assert (=> b!5368841 (= lt!2186392 (store ((as const (Array Context!8926 Bool)) false) lt!2186395 true))))

(assert (=> b!5368841 (= lt!2186395 (Context!8927 (Cons!61412 (reg!15408 (regOne!30670 r!7292)) lt!2186355)))))

(declare-fun b!5368842 () Bool)

(assert (=> b!5368842 (= e!3331519 (nullable!5248 (regOne!30670 (regOne!30670 r!7292))))))

(declare-fun b!5368843 () Bool)

(declare-fun res!2278437 () Bool)

(declare-fun e!3331528 () Bool)

(assert (=> b!5368843 (=> res!2278437 e!3331528)))

(declare-fun lt!2186366 () Regex!15079)

(declare-fun unfocusZipper!821 (List!61537) Regex!15079)

(assert (=> b!5368843 (= res!2278437 (not (= (unfocusZipper!821 (Cons!61413 lt!2186390 Nil!61413)) lt!2186366)))))

(declare-fun b!5368844 () Bool)

(declare-fun tp!1489735 () Bool)

(declare-fun tp!1489740 () Bool)

(assert (=> b!5368844 (= e!3331535 (and tp!1489735 tp!1489740))))

(declare-fun b!5368845 () Bool)

(declare-fun tp_is_empty!39411 () Bool)

(assert (=> b!5368845 (= e!3331535 tp_is_empty!39411)))

(declare-fun setIsEmpty!34781 () Bool)

(assert (=> setIsEmpty!34781 setRes!34781))

(declare-fun b!5368846 () Bool)

(declare-fun e!3331530 () Bool)

(declare-fun e!3331516 () Bool)

(assert (=> b!5368846 (= e!3331530 e!3331516)))

(declare-fun res!2278446 () Bool)

(assert (=> b!5368846 (=> res!2278446 e!3331516)))

(declare-fun lt!2186384 () Regex!15079)

(assert (=> b!5368846 (= res!2278446 (not (= (unfocusZipper!821 (Cons!61413 lt!2186395 Nil!61413)) lt!2186384)))))

(assert (=> b!5368846 (= lt!2186384 (Concat!23924 (reg!15408 (regOne!30670 r!7292)) lt!2186366))))

(declare-fun b!5368847 () Bool)

(declare-fun Unit!153836 () Unit!153834)

(assert (=> b!5368847 (= e!3331531 Unit!153836)))

(declare-fun lt!2186367 () Unit!153834)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!316 ((InoxSet Context!8926) (InoxSet Context!8926) List!61538) Unit!153834)

(assert (=> b!5368847 (= lt!2186367 (lemmaZipperConcatMatchesSameAsBothZippers!316 lt!2186362 lt!2186372 (t!374761 s!2326)))))

(declare-fun res!2278445 () Bool)

(assert (=> b!5368847 (= res!2278445 (matchZipper!1323 lt!2186362 (t!374761 s!2326)))))

(assert (=> b!5368847 (=> res!2278445 e!3331522)))

(assert (=> b!5368847 (= (matchZipper!1323 ((_ map or) lt!2186362 lt!2186372) (t!374761 s!2326)) e!3331522)))

(declare-fun b!5368848 () Bool)

(assert (=> b!5368848 (= e!3331516 e!3331528)))

(declare-fun res!2278427 () Bool)

(assert (=> b!5368848 (=> res!2278427 e!3331528)))

(declare-fun lt!2186365 () Context!8926)

(assert (=> b!5368848 (= res!2278427 (not (= (unfocusZipper!821 (Cons!61413 lt!2186365 Nil!61413)) (reg!15408 (regOne!30670 r!7292)))))))

(declare-fun lt!2186383 () (InoxSet Context!8926))

(assert (=> b!5368848 (= (flatMap!806 lt!2186383 lambda!276855) (derivationStepZipperUp!451 lt!2186390 (h!67862 s!2326)))))

(declare-fun lt!2186364 () Unit!153834)

(assert (=> b!5368848 (= lt!2186364 (lemmaFlatMapOnSingletonSet!338 lt!2186383 lt!2186390 lambda!276855))))

(declare-fun lt!2186374 () (InoxSet Context!8926))

(assert (=> b!5368848 (= (flatMap!806 lt!2186374 lambda!276855) (derivationStepZipperUp!451 lt!2186365 (h!67862 s!2326)))))

(declare-fun lt!2186385 () Unit!153834)

(assert (=> b!5368848 (= lt!2186385 (lemmaFlatMapOnSingletonSet!338 lt!2186374 lt!2186365 lambda!276855))))

(declare-fun lt!2186389 () (InoxSet Context!8926))

(assert (=> b!5368848 (= lt!2186389 (derivationStepZipperUp!451 lt!2186390 (h!67862 s!2326)))))

(declare-fun lt!2186379 () (InoxSet Context!8926))

(assert (=> b!5368848 (= lt!2186379 (derivationStepZipperUp!451 lt!2186365 (h!67862 s!2326)))))

(assert (=> b!5368848 (= lt!2186383 (store ((as const (Array Context!8926 Bool)) false) lt!2186390 true))))

(assert (=> b!5368848 (= lt!2186374 (store ((as const (Array Context!8926 Bool)) false) lt!2186365 true))))

(assert (=> b!5368848 (= lt!2186365 (Context!8927 (Cons!61412 (reg!15408 (regOne!30670 r!7292)) Nil!61412)))))

(declare-fun b!5368849 () Bool)

(declare-fun tp!1489739 () Bool)

(assert (=> b!5368849 (= e!3331524 (and tp_is_empty!39411 tp!1489739))))

(declare-fun b!5368850 () Bool)

(declare-fun res!2278438 () Bool)

(assert (=> b!5368850 (=> res!2278438 e!3331532)))

(assert (=> b!5368850 (= res!2278438 (not ((_ is Cons!61412) (exprs!4963 (h!67861 zl!343)))))))

(declare-fun tp!1489732 () Bool)

(declare-fun setNonEmpty!34781 () Bool)

(declare-fun setElem!34781 () Context!8926)

(assert (=> setNonEmpty!34781 (= setRes!34781 (and tp!1489732 (inv!80944 setElem!34781) e!3331534))))

(declare-fun setRest!34781 () (InoxSet Context!8926))

(assert (=> setNonEmpty!34781 (= z!1189 ((_ map or) (store ((as const (Array Context!8926 Bool)) false) setElem!34781 true) setRest!34781))))

(declare-fun b!5368851 () Bool)

(declare-fun e!3331536 () Bool)

(assert (=> b!5368851 (= e!3331536 e!3331521)))

(declare-fun res!2278434 () Bool)

(assert (=> b!5368851 (=> res!2278434 e!3331521)))

(declare-fun lt!2186391 () Regex!15079)

(declare-fun regexDepth!167 (Regex!15079) Int)

(assert (=> b!5368851 (= res!2278434 (< (regexDepth!167 r!7292) (regexDepth!167 lt!2186391)))))

(declare-fun generalisedConcat!748 (List!61536) Regex!15079)

(assert (=> b!5368851 (= lt!2186391 (generalisedConcat!748 (t!374759 (exprs!4963 (h!67861 zl!343)))))))

(declare-fun b!5368852 () Bool)

(assert (=> b!5368852 (= e!3331515 e!3331536)))

(declare-fun res!2278453 () Bool)

(assert (=> b!5368852 (=> res!2278453 e!3331536)))

(declare-fun lt!2186371 () (InoxSet Context!8926))

(assert (=> b!5368852 (= res!2278453 (not (= lt!2186372 (derivationStepZipper!1318 lt!2186371 (h!67862 s!2326)))))))

(assert (=> b!5368852 (= (flatMap!806 lt!2186371 lambda!276855) (derivationStepZipperUp!451 lt!2186376 (h!67862 s!2326)))))

(declare-fun lt!2186382 () Unit!153834)

(assert (=> b!5368852 (= lt!2186382 (lemmaFlatMapOnSingletonSet!338 lt!2186371 lt!2186376 lambda!276855))))

(assert (=> b!5368852 (= lt!2186371 (store ((as const (Array Context!8926 Bool)) false) lt!2186376 true))))

(declare-fun b!5368853 () Bool)

(assert (=> b!5368853 (= e!3331537 e!3331530)))

(declare-fun res!2278452 () Bool)

(assert (=> b!5368853 (=> res!2278452 e!3331530)))

(assert (=> b!5368853 (= res!2278452 (not (= r!7292 lt!2186366)))))

(assert (=> b!5368853 (= lt!2186366 (Concat!23924 lt!2186380 (regTwo!30670 r!7292)))))

(declare-fun b!5368854 () Bool)

(declare-fun res!2278461 () Bool)

(assert (=> b!5368854 (=> res!2278461 e!3331537)))

(declare-fun lt!2186381 () Regex!15079)

(assert (=> b!5368854 (= res!2278461 (not (= lt!2186381 r!7292)))))

(declare-fun b!5368855 () Bool)

(declare-fun e!3331526 () Bool)

(assert (=> b!5368855 (= e!3331526 (not e!3331532))))

(declare-fun res!2278449 () Bool)

(assert (=> b!5368855 (=> res!2278449 e!3331532)))

(assert (=> b!5368855 (= res!2278449 (not ((_ is Cons!61413) zl!343)))))

(declare-fun lt!2186357 () Bool)

(assert (=> b!5368855 (= lt!2186368 lt!2186357)))

(declare-fun matchRSpec!2182 (Regex!15079 List!61538) Bool)

(assert (=> b!5368855 (= lt!2186357 (matchRSpec!2182 r!7292 s!2326))))

(assert (=> b!5368855 (= lt!2186368 (matchR!7264 r!7292 s!2326))))

(declare-fun lt!2186356 () Unit!153834)

(declare-fun mainMatchTheorem!2182 (Regex!15079 List!61538) Unit!153834)

(assert (=> b!5368855 (= lt!2186356 (mainMatchTheorem!2182 r!7292 s!2326))))

(declare-fun b!5368856 () Bool)

(declare-fun res!2278455 () Bool)

(assert (=> b!5368856 (=> res!2278455 e!3331520)))

(assert (=> b!5368856 (= res!2278455 (not (= (toList!8863 lt!2186371) lt!2186360)))))

(declare-fun b!5368857 () Bool)

(declare-fun res!2278457 () Bool)

(assert (=> b!5368857 (=> res!2278457 e!3331532)))

(assert (=> b!5368857 (= res!2278457 (not (= r!7292 (generalisedConcat!748 (exprs!4963 (h!67861 zl!343))))))))

(declare-fun b!5368858 () Bool)

(declare-fun res!2278432 () Bool)

(assert (=> b!5368858 (=> res!2278432 e!3331518)))

(declare-fun isEmpty!33394 (List!61536) Bool)

(assert (=> b!5368858 (= res!2278432 (isEmpty!33394 (t!374759 (exprs!4963 (h!67861 zl!343)))))))

(declare-fun b!5368859 () Bool)

(declare-fun Unit!153837 () Unit!153834)

(assert (=> b!5368859 (= e!3331531 Unit!153837)))

(declare-fun b!5368860 () Bool)

(assert (=> b!5368860 (= e!3331520 true)))

(declare-fun lt!2186370 () Regex!15079)

(assert (=> b!5368860 (= lt!2186370 (unfocusZipper!821 lt!2186360))))

(declare-fun b!5368861 () Bool)

(declare-fun res!2278429 () Bool)

(assert (=> b!5368861 (=> res!2278429 e!3331523)))

(assert (=> b!5368861 (= res!2278429 (or ((_ is Concat!23924) (regOne!30670 r!7292)) (not ((_ is Star!15079) (regOne!30670 r!7292)))))))

(declare-fun b!5368862 () Bool)

(declare-fun res!2278456 () Bool)

(assert (=> b!5368862 (=> res!2278456 e!3331532)))

(assert (=> b!5368862 (= res!2278456 (or ((_ is EmptyExpr!15079) r!7292) ((_ is EmptyLang!15079) r!7292) ((_ is ElementMatch!15079) r!7292) ((_ is Union!15079) r!7292) (not ((_ is Concat!23924) r!7292))))))

(declare-fun b!5368863 () Bool)

(assert (=> b!5368863 (= e!3331528 e!3331529)))

(declare-fun res!2278450 () Bool)

(assert (=> b!5368863 (=> res!2278450 e!3331529)))

(assert (=> b!5368863 (= res!2278450 (not lt!2186368))))

(declare-fun e!3331527 () Bool)

(assert (=> b!5368863 e!3331527))

(declare-fun res!2278435 () Bool)

(assert (=> b!5368863 (=> (not res!2278435) (not e!3331527))))

(assert (=> b!5368863 (= res!2278435 (= (matchR!7264 lt!2186384 s!2326) (matchRSpec!2182 lt!2186384 s!2326)))))

(declare-fun lt!2186386 () Unit!153834)

(assert (=> b!5368863 (= lt!2186386 (mainMatchTheorem!2182 lt!2186384 s!2326))))

(declare-fun b!5368864 () Bool)

(declare-fun res!2278439 () Bool)

(assert (=> b!5368864 (=> res!2278439 e!3331520)))

(assert (=> b!5368864 (= res!2278439 (not (validRegex!6815 lt!2186391)))))

(declare-fun b!5368865 () Bool)

(declare-fun res!2278441 () Bool)

(assert (=> b!5368865 (=> res!2278441 e!3331515)))

(assert (=> b!5368865 (= res!2278441 (not (matchR!7264 (regTwo!30670 r!7292) (_2!35581 lt!2186375))))))

(declare-fun b!5368866 () Bool)

(declare-fun tp!1489733 () Bool)

(declare-fun tp!1489741 () Bool)

(assert (=> b!5368866 (= e!3331535 (and tp!1489733 tp!1489741))))

(declare-fun b!5368867 () Bool)

(assert (=> b!5368867 (= e!3331533 e!3331526)))

(declare-fun res!2278454 () Bool)

(assert (=> b!5368867 (=> (not res!2278454) (not e!3331526))))

(assert (=> b!5368867 (= res!2278454 (= r!7292 lt!2186381))))

(assert (=> b!5368867 (= lt!2186381 (unfocusZipper!821 zl!343))))

(declare-fun b!5368868 () Bool)

(assert (=> b!5368868 (= e!3331527 (or (not lt!2186368) lt!2186357))))

(declare-fun b!5368869 () Bool)

(declare-fun tp!1489738 () Bool)

(assert (=> b!5368869 (= e!3331535 tp!1489738)))

(assert (= (and start!564970 res!2278440) b!5368828))

(assert (= (and b!5368828 res!2278458) b!5368867))

(assert (= (and b!5368867 res!2278454) b!5368855))

(assert (= (and b!5368855 (not res!2278449)) b!5368831))

(assert (= (and b!5368831 (not res!2278443)) b!5368857))

(assert (= (and b!5368857 (not res!2278457)) b!5368850))

(assert (= (and b!5368850 (not res!2278438)) b!5368832))

(assert (= (and b!5368832 (not res!2278460)) b!5368862))

(assert (= (and b!5368862 (not res!2278456)) b!5368829))

(assert (= (and b!5368829 (not res!2278444)) b!5368858))

(assert (= (and b!5368858 (not res!2278432)) b!5368839))

(assert (= (and b!5368839 c!935394) b!5368847))

(assert (= (and b!5368839 (not c!935394)) b!5368859))

(assert (= (and b!5368847 (not res!2278445)) b!5368833))

(assert (= (and b!5368839 (not res!2278430)) b!5368836))

(assert (= (and b!5368836 res!2278428) b!5368842))

(assert (= (and b!5368836 (not res!2278442)) b!5368861))

(assert (= (and b!5368861 (not res!2278429)) b!5368834))

(assert (= (and b!5368834 (not res!2278448)) b!5368841))

(assert (= (and b!5368841 (not res!2278459)) b!5368838))

(assert (= (and b!5368838 (not res!2278433)) b!5368854))

(assert (= (and b!5368854 (not res!2278461)) b!5368853))

(assert (= (and b!5368853 (not res!2278452)) b!5368846))

(assert (= (and b!5368846 (not res!2278446)) b!5368848))

(assert (= (and b!5368848 (not res!2278427)) b!5368843))

(assert (= (and b!5368843 (not res!2278437)) b!5368863))

(assert (= (and b!5368863 res!2278435) b!5368868))

(assert (= (and b!5368863 (not res!2278450)) b!5368830))

(assert (= (and b!5368830 (not res!2278436)) b!5368827))

(assert (= (and b!5368827 (not res!2278451)) b!5368865))

(assert (= (and b!5368865 (not res!2278441)) b!5368835))

(assert (= (and b!5368835 (not res!2278431)) b!5368852))

(assert (= (and b!5368852 (not res!2278453)) b!5368851))

(assert (= (and b!5368851 (not res!2278434)) b!5368840))

(assert (= (and b!5368840 (not res!2278447)) b!5368864))

(assert (= (and b!5368864 (not res!2278439)) b!5368856))

(assert (= (and b!5368856 (not res!2278455)) b!5368860))

(assert (= (and start!564970 ((_ is ElementMatch!15079) r!7292)) b!5368845))

(assert (= (and start!564970 ((_ is Concat!23924) r!7292)) b!5368866))

(assert (= (and start!564970 ((_ is Star!15079) r!7292)) b!5368869))

(assert (= (and start!564970 ((_ is Union!15079) r!7292)) b!5368844))

(assert (= (and start!564970 condSetEmpty!34781) setIsEmpty!34781))

(assert (= (and start!564970 (not condSetEmpty!34781)) setNonEmpty!34781))

(assert (= setNonEmpty!34781 b!5368825))

(assert (= b!5368826 b!5368837))

(assert (= (and start!564970 ((_ is Cons!61413) zl!343)) b!5368826))

(assert (= (and start!564970 ((_ is Cons!61414) s!2326)) b!5368849))

(declare-fun m!6396440 () Bool)

(assert (=> b!5368826 m!6396440))

(declare-fun m!6396442 () Bool)

(assert (=> b!5368848 m!6396442))

(declare-fun m!6396444 () Bool)

(assert (=> b!5368848 m!6396444))

(declare-fun m!6396446 () Bool)

(assert (=> b!5368848 m!6396446))

(declare-fun m!6396448 () Bool)

(assert (=> b!5368848 m!6396448))

(declare-fun m!6396450 () Bool)

(assert (=> b!5368848 m!6396450))

(declare-fun m!6396452 () Bool)

(assert (=> b!5368848 m!6396452))

(declare-fun m!6396454 () Bool)

(assert (=> b!5368848 m!6396454))

(declare-fun m!6396456 () Bool)

(assert (=> b!5368848 m!6396456))

(declare-fun m!6396458 () Bool)

(assert (=> b!5368848 m!6396458))

(declare-fun m!6396460 () Bool)

(assert (=> b!5368834 m!6396460))

(declare-fun m!6396462 () Bool)

(assert (=> b!5368860 m!6396462))

(declare-fun m!6396464 () Bool)

(assert (=> b!5368864 m!6396464))

(declare-fun m!6396466 () Bool)

(assert (=> b!5368843 m!6396466))

(declare-fun m!6396468 () Bool)

(assert (=> b!5368827 m!6396468))

(declare-fun m!6396470 () Bool)

(assert (=> b!5368851 m!6396470))

(declare-fun m!6396472 () Bool)

(assert (=> b!5368851 m!6396472))

(declare-fun m!6396474 () Bool)

(assert (=> b!5368851 m!6396474))

(declare-fun m!6396476 () Bool)

(assert (=> b!5368839 m!6396476))

(declare-fun m!6396478 () Bool)

(assert (=> b!5368839 m!6396478))

(declare-fun m!6396480 () Bool)

(assert (=> b!5368839 m!6396480))

(declare-fun m!6396482 () Bool)

(assert (=> b!5368839 m!6396482))

(declare-fun m!6396484 () Bool)

(assert (=> b!5368839 m!6396484))

(declare-fun m!6396486 () Bool)

(assert (=> b!5368839 m!6396486))

(declare-fun m!6396488 () Bool)

(assert (=> b!5368839 m!6396488))

(declare-fun m!6396490 () Bool)

(assert (=> b!5368832 m!6396490))

(assert (=> b!5368832 m!6396490))

(declare-fun m!6396492 () Bool)

(assert (=> b!5368832 m!6396492))

(declare-fun m!6396494 () Bool)

(assert (=> b!5368865 m!6396494))

(declare-fun m!6396496 () Bool)

(assert (=> b!5368867 m!6396496))

(declare-fun m!6396498 () Bool)

(assert (=> b!5368831 m!6396498))

(declare-fun m!6396500 () Bool)

(assert (=> start!564970 m!6396500))

(declare-fun m!6396502 () Bool)

(assert (=> setNonEmpty!34781 m!6396502))

(declare-fun m!6396504 () Bool)

(assert (=> b!5368838 m!6396504))

(declare-fun m!6396506 () Bool)

(assert (=> b!5368838 m!6396506))

(declare-fun m!6396508 () Bool)

(assert (=> b!5368830 m!6396508))

(declare-fun m!6396510 () Bool)

(assert (=> b!5368830 m!6396510))

(declare-fun m!6396512 () Bool)

(assert (=> b!5368830 m!6396512))

(declare-fun m!6396514 () Bool)

(assert (=> b!5368830 m!6396514))

(declare-fun m!6396516 () Bool)

(assert (=> b!5368830 m!6396516))

(declare-fun m!6396518 () Bool)

(assert (=> b!5368830 m!6396518))

(assert (=> b!5368830 m!6396510))

(declare-fun m!6396520 () Bool)

(assert (=> b!5368830 m!6396520))

(declare-fun m!6396522 () Bool)

(assert (=> b!5368830 m!6396522))

(assert (=> b!5368852 m!6396482))

(declare-fun m!6396524 () Bool)

(assert (=> b!5368852 m!6396524))

(declare-fun m!6396526 () Bool)

(assert (=> b!5368852 m!6396526))

(declare-fun m!6396528 () Bool)

(assert (=> b!5368852 m!6396528))

(declare-fun m!6396530 () Bool)

(assert (=> b!5368852 m!6396530))

(declare-fun m!6396532 () Bool)

(assert (=> b!5368835 m!6396532))

(declare-fun m!6396534 () Bool)

(assert (=> b!5368856 m!6396534))

(declare-fun m!6396536 () Bool)

(assert (=> b!5368840 m!6396536))

(declare-fun m!6396538 () Bool)

(assert (=> b!5368840 m!6396538))

(declare-fun m!6396540 () Bool)

(assert (=> b!5368829 m!6396540))

(declare-fun m!6396542 () Bool)

(assert (=> b!5368829 m!6396542))

(declare-fun m!6396544 () Bool)

(assert (=> b!5368829 m!6396544))

(assert (=> b!5368829 m!6396544))

(declare-fun m!6396546 () Bool)

(assert (=> b!5368829 m!6396546))

(declare-fun m!6396548 () Bool)

(assert (=> b!5368829 m!6396548))

(assert (=> b!5368829 m!6396540))

(declare-fun m!6396550 () Bool)

(assert (=> b!5368829 m!6396550))

(declare-fun m!6396552 () Bool)

(assert (=> b!5368828 m!6396552))

(declare-fun m!6396554 () Bool)

(assert (=> b!5368842 m!6396554))

(declare-fun m!6396556 () Bool)

(assert (=> b!5368858 m!6396556))

(declare-fun m!6396558 () Bool)

(assert (=> b!5368841 m!6396558))

(declare-fun m!6396560 () Bool)

(assert (=> b!5368841 m!6396560))

(declare-fun m!6396562 () Bool)

(assert (=> b!5368841 m!6396562))

(declare-fun m!6396564 () Bool)

(assert (=> b!5368841 m!6396564))

(declare-fun m!6396566 () Bool)

(assert (=> b!5368841 m!6396566))

(declare-fun m!6396568 () Bool)

(assert (=> b!5368855 m!6396568))

(declare-fun m!6396570 () Bool)

(assert (=> b!5368855 m!6396570))

(declare-fun m!6396572 () Bool)

(assert (=> b!5368855 m!6396572))

(declare-fun m!6396574 () Bool)

(assert (=> b!5368847 m!6396574))

(declare-fun m!6396576 () Bool)

(assert (=> b!5368847 m!6396576))

(declare-fun m!6396578 () Bool)

(assert (=> b!5368847 m!6396578))

(declare-fun m!6396580 () Bool)

(assert (=> b!5368863 m!6396580))

(declare-fun m!6396582 () Bool)

(assert (=> b!5368863 m!6396582))

(declare-fun m!6396584 () Bool)

(assert (=> b!5368863 m!6396584))

(declare-fun m!6396586 () Bool)

(assert (=> b!5368833 m!6396586))

(declare-fun m!6396588 () Bool)

(assert (=> b!5368846 m!6396588))

(declare-fun m!6396590 () Bool)

(assert (=> b!5368857 m!6396590))

(check-sat (not b!5368838) (not b!5368851) (not b!5368857) (not b!5368865) (not b!5368829) (not start!564970) (not b!5368869) (not b!5368825) (not b!5368855) (not b!5368860) tp_is_empty!39411 (not b!5368849) (not b!5368847) (not b!5368840) (not b!5368837) (not b!5368833) (not b!5368835) (not b!5368826) (not b!5368858) (not b!5368839) (not b!5368828) (not b!5368830) (not b!5368846) (not b!5368841) (not b!5368842) (not b!5368827) (not b!5368852) (not setNonEmpty!34781) (not b!5368866) (not b!5368834) (not b!5368832) (not b!5368864) (not b!5368867) (not b!5368844) (not b!5368863) (not b!5368856) (not b!5368843) (not b!5368848) (not b!5368831))
(check-sat)
