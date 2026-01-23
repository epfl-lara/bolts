; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!595152 () Bool)

(assert start!595152)

(declare-fun b!5808298 () Bool)

(assert (=> b!5808298 true))

(assert (=> b!5808298 true))

(declare-fun lambda!317124 () Int)

(declare-fun lambda!317123 () Int)

(assert (=> b!5808298 (not (= lambda!317124 lambda!317123))))

(assert (=> b!5808298 true))

(assert (=> b!5808298 true))

(declare-fun lambda!317125 () Int)

(assert (=> b!5808298 (not (= lambda!317125 lambda!317123))))

(assert (=> b!5808298 (not (= lambda!317125 lambda!317124))))

(assert (=> b!5808298 true))

(assert (=> b!5808298 true))

(declare-fun b!5808302 () Bool)

(assert (=> b!5808302 true))

(declare-fun b!5808271 () Bool)

(declare-fun res!2449363 () Bool)

(declare-fun e!3565441 () Bool)

(assert (=> b!5808271 (=> res!2449363 e!3565441)))

(declare-datatypes ((C!31916 0))(
  ( (C!31917 (val!25660 Int)) )
))
(declare-datatypes ((Regex!15823 0))(
  ( (ElementMatch!15823 (c!1029053 C!31916)) (Concat!24668 (regOne!32158 Regex!15823) (regTwo!32158 Regex!15823)) (EmptyExpr!15823) (Star!15823 (reg!16152 Regex!15823)) (EmptyLang!15823) (Union!15823 (regOne!32159 Regex!15823) (regTwo!32159 Regex!15823)) )
))
(declare-datatypes ((List!63768 0))(
  ( (Nil!63644) (Cons!63644 (h!70092 Regex!15823) (t!377121 List!63768)) )
))
(declare-datatypes ((Context!10414 0))(
  ( (Context!10415 (exprs!5707 List!63768)) )
))
(declare-fun lt!2299390 () Context!10414)

(declare-fun r!7292 () Regex!15823)

(declare-datatypes ((List!63769 0))(
  ( (Nil!63645) (Cons!63645 (h!70093 Context!10414) (t!377122 List!63769)) )
))
(declare-fun unfocusZipper!1565 (List!63769) Regex!15823)

(assert (=> b!5808271 (= res!2449363 (not (= (unfocusZipper!1565 (Cons!63645 lt!2299390 Nil!63645)) (reg!16152 r!7292))))))

(declare-fun b!5808272 () Bool)

(declare-fun e!3565450 () Bool)

(declare-datatypes ((List!63770 0))(
  ( (Nil!63646) (Cons!63646 (h!70094 C!31916) (t!377123 List!63770)) )
))
(declare-datatypes ((tuple2!65840 0))(
  ( (tuple2!65841 (_1!36223 List!63770) (_2!36223 List!63770)) )
))
(declare-fun lt!2299410 () tuple2!65840)

(declare-fun matchR!8008 (Regex!15823 List!63770) Bool)

(assert (=> b!5808272 (= e!3565450 (matchR!8008 r!7292 (_2!36223 lt!2299410)))))

(declare-fun e!3565437 () Bool)

(declare-fun b!5808273 () Bool)

(declare-fun e!3565442 () Bool)

(declare-fun tp!1603144 () Bool)

(declare-fun zl!343 () List!63769)

(declare-fun inv!82804 (Context!10414) Bool)

(assert (=> b!5808273 (= e!3565437 (and (inv!82804 (h!70093 zl!343)) e!3565442 tp!1603144))))

(declare-fun b!5808274 () Bool)

(declare-fun e!3565436 () Bool)

(declare-fun e!3565438 () Bool)

(assert (=> b!5808274 (= e!3565436 (not e!3565438))))

(declare-fun res!2449367 () Bool)

(assert (=> b!5808274 (=> res!2449367 e!3565438)))

(get-info :version)

(assert (=> b!5808274 (= res!2449367 (not ((_ is Cons!63645) zl!343)))))

(declare-fun lt!2299396 () Bool)

(declare-fun s!2326 () List!63770)

(declare-fun matchRSpec!2926 (Regex!15823 List!63770) Bool)

(assert (=> b!5808274 (= lt!2299396 (matchRSpec!2926 r!7292 s!2326))))

(assert (=> b!5808274 (= lt!2299396 (matchR!8008 r!7292 s!2326))))

(declare-datatypes ((Unit!156906 0))(
  ( (Unit!156907) )
))
(declare-fun lt!2299416 () Unit!156906)

(declare-fun mainMatchTheorem!2926 (Regex!15823 List!63770) Unit!156906)

(assert (=> b!5808274 (= lt!2299416 (mainMatchTheorem!2926 r!7292 s!2326))))

(declare-fun b!5808275 () Bool)

(declare-fun res!2449356 () Bool)

(declare-fun e!3565447 () Bool)

(assert (=> b!5808275 (=> (not res!2449356) (not e!3565447))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10414))

(declare-fun toList!9607 ((InoxSet Context!10414)) List!63769)

(assert (=> b!5808275 (= res!2449356 (= (toList!9607 z!1189) zl!343))))

(declare-fun b!5808276 () Bool)

(declare-fun e!3565440 () Bool)

(declare-fun tp!1603146 () Bool)

(assert (=> b!5808276 (= e!3565440 tp!1603146)))

(declare-fun b!5808277 () Bool)

(declare-fun e!3565453 () Bool)

(declare-fun e!3565451 () Bool)

(assert (=> b!5808277 (= e!3565453 e!3565451)))

(declare-fun res!2449358 () Bool)

(assert (=> b!5808277 (=> res!2449358 e!3565451)))

(declare-fun lt!2299409 () Context!10414)

(declare-fun lt!2299393 () Regex!15823)

(assert (=> b!5808277 (= res!2449358 (not (= (unfocusZipper!1565 (Cons!63645 lt!2299409 Nil!63645)) lt!2299393)))))

(assert (=> b!5808277 (= lt!2299393 (Concat!24668 (reg!16152 r!7292) r!7292))))

(declare-fun b!5808278 () Bool)

(declare-fun e!3565452 () Bool)

(assert (=> b!5808278 (= e!3565452 e!3565450)))

(declare-fun res!2449374 () Bool)

(assert (=> b!5808278 (=> res!2449374 e!3565450)))

(declare-fun ++!14035 (List!63770 List!63770) List!63770)

(assert (=> b!5808278 (= res!2449374 (not (= s!2326 (++!14035 (_1!36223 lt!2299410) (_2!36223 lt!2299410)))))))

(declare-datatypes ((Option!15832 0))(
  ( (None!15831) (Some!15831 (v!51895 tuple2!65840)) )
))
(declare-fun lt!2299402 () Option!15832)

(declare-fun get!21972 (Option!15832) tuple2!65840)

(assert (=> b!5808278 (= lt!2299410 (get!21972 lt!2299402))))

(declare-fun b!5808279 () Bool)

(declare-fun res!2449352 () Bool)

(assert (=> b!5808279 (=> res!2449352 e!3565453)))

(declare-fun lt!2299398 () Regex!15823)

(assert (=> b!5808279 (= res!2449352 (or (not (= lt!2299398 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5808280 () Bool)

(declare-fun res!2449371 () Bool)

(assert (=> b!5808280 (=> res!2449371 e!3565450)))

(assert (=> b!5808280 (= res!2449371 (not (matchR!8008 (reg!16152 r!7292) (_1!36223 lt!2299410))))))

(declare-fun b!5808281 () Bool)

(declare-fun res!2449368 () Bool)

(assert (=> b!5808281 (=> res!2449368 e!3565438)))

(assert (=> b!5808281 (= res!2449368 (not ((_ is Cons!63644) (exprs!5707 (h!70093 zl!343)))))))

(declare-fun b!5808282 () Bool)

(declare-fun e!3565449 () Bool)

(declare-fun tp!1603139 () Bool)

(assert (=> b!5808282 (= e!3565449 tp!1603139)))

(declare-fun b!5808270 () Bool)

(declare-fun e!3565454 () Bool)

(assert (=> b!5808270 (= e!3565454 e!3565453)))

(declare-fun res!2449364 () Bool)

(assert (=> b!5808270 (=> res!2449364 e!3565453)))

(declare-fun lt!2299404 () (InoxSet Context!10414))

(declare-fun lt!2299392 () Context!10414)

(declare-fun derivationStepZipperDown!1161 (Regex!15823 Context!10414 C!31916) (InoxSet Context!10414))

(assert (=> b!5808270 (= res!2449364 (not (= lt!2299404 (derivationStepZipperDown!1161 (reg!16152 r!7292) lt!2299392 (h!70094 s!2326)))))))

(declare-fun lt!2299412 () List!63768)

(assert (=> b!5808270 (= lt!2299392 (Context!10415 lt!2299412))))

(declare-fun lambda!317126 () Int)

(declare-fun lt!2299401 () (InoxSet Context!10414))

(declare-fun flatMap!1430 ((InoxSet Context!10414) Int) (InoxSet Context!10414))

(declare-fun derivationStepZipperUp!1087 (Context!10414 C!31916) (InoxSet Context!10414))

(assert (=> b!5808270 (= (flatMap!1430 lt!2299401 lambda!317126) (derivationStepZipperUp!1087 lt!2299409 (h!70094 s!2326)))))

(declare-fun lt!2299417 () Unit!156906)

(declare-fun lemmaFlatMapOnSingletonSet!962 ((InoxSet Context!10414) Context!10414 Int) Unit!156906)

(assert (=> b!5808270 (= lt!2299417 (lemmaFlatMapOnSingletonSet!962 lt!2299401 lt!2299409 lambda!317126))))

(declare-fun lt!2299408 () (InoxSet Context!10414))

(assert (=> b!5808270 (= lt!2299408 (derivationStepZipperUp!1087 lt!2299409 (h!70094 s!2326)))))

(assert (=> b!5808270 (= lt!2299401 (store ((as const (Array Context!10414 Bool)) false) lt!2299409 true))))

(assert (=> b!5808270 (= lt!2299409 (Context!10415 (Cons!63644 (reg!16152 r!7292) lt!2299412)))))

(assert (=> b!5808270 (= lt!2299412 (Cons!63644 r!7292 Nil!63644))))

(declare-fun res!2449354 () Bool)

(assert (=> start!595152 (=> (not res!2449354) (not e!3565447))))

(declare-fun validRegex!7559 (Regex!15823) Bool)

(assert (=> start!595152 (= res!2449354 (validRegex!7559 r!7292))))

(assert (=> start!595152 e!3565447))

(assert (=> start!595152 e!3565440))

(declare-fun condSetEmpty!39098 () Bool)

(assert (=> start!595152 (= condSetEmpty!39098 (= z!1189 ((as const (Array Context!10414 Bool)) false)))))

(declare-fun setRes!39098 () Bool)

(assert (=> start!595152 setRes!39098))

(assert (=> start!595152 e!3565437))

(declare-fun e!3565448 () Bool)

(assert (=> start!595152 e!3565448))

(declare-fun b!5808283 () Bool)

(declare-fun tp_is_empty!40899 () Bool)

(declare-fun tp!1603142 () Bool)

(assert (=> b!5808283 (= e!3565448 (and tp_is_empty!40899 tp!1603142))))

(declare-fun setElem!39098 () Context!10414)

(declare-fun setNonEmpty!39098 () Bool)

(declare-fun tp!1603143 () Bool)

(assert (=> setNonEmpty!39098 (= setRes!39098 (and tp!1603143 (inv!82804 setElem!39098) e!3565449))))

(declare-fun setRest!39098 () (InoxSet Context!10414))

(assert (=> setNonEmpty!39098 (= z!1189 ((_ map or) (store ((as const (Array Context!10414 Bool)) false) setElem!39098 true) setRest!39098))))

(declare-fun b!5808284 () Bool)

(assert (=> b!5808284 (= e!3565447 e!3565436)))

(declare-fun res!2449351 () Bool)

(assert (=> b!5808284 (=> (not res!2449351) (not e!3565436))))

(assert (=> b!5808284 (= res!2449351 (= r!7292 lt!2299398))))

(assert (=> b!5808284 (= lt!2299398 (unfocusZipper!1565 zl!343))))

(declare-fun b!5808285 () Bool)

(assert (=> b!5808285 (= e!3565451 e!3565441)))

(declare-fun res!2449357 () Bool)

(assert (=> b!5808285 (=> res!2449357 e!3565441)))

(declare-fun lt!2299395 () (InoxSet Context!10414))

(declare-fun derivationStepZipper!1892 ((InoxSet Context!10414) C!31916) (InoxSet Context!10414))

(assert (=> b!5808285 (= res!2449357 (not (= lt!2299404 (derivationStepZipper!1892 lt!2299395 (h!70094 s!2326)))))))

(assert (=> b!5808285 (= (flatMap!1430 lt!2299395 lambda!317126) (derivationStepZipperUp!1087 lt!2299392 (h!70094 s!2326)))))

(declare-fun lt!2299394 () Unit!156906)

(assert (=> b!5808285 (= lt!2299394 (lemmaFlatMapOnSingletonSet!962 lt!2299395 lt!2299392 lambda!317126))))

(declare-fun lt!2299405 () (InoxSet Context!10414))

(assert (=> b!5808285 (= (flatMap!1430 lt!2299405 lambda!317126) (derivationStepZipperUp!1087 lt!2299390 (h!70094 s!2326)))))

(declare-fun lt!2299415 () Unit!156906)

(assert (=> b!5808285 (= lt!2299415 (lemmaFlatMapOnSingletonSet!962 lt!2299405 lt!2299390 lambda!317126))))

(declare-fun lt!2299391 () (InoxSet Context!10414))

(assert (=> b!5808285 (= lt!2299391 (derivationStepZipperUp!1087 lt!2299392 (h!70094 s!2326)))))

(declare-fun lt!2299411 () (InoxSet Context!10414))

(assert (=> b!5808285 (= lt!2299411 (derivationStepZipperUp!1087 lt!2299390 (h!70094 s!2326)))))

(assert (=> b!5808285 (= lt!2299395 (store ((as const (Array Context!10414 Bool)) false) lt!2299392 true))))

(assert (=> b!5808285 (= lt!2299405 (store ((as const (Array Context!10414 Bool)) false) lt!2299390 true))))

(assert (=> b!5808285 (= lt!2299390 (Context!10415 (Cons!63644 (reg!16152 r!7292) Nil!63644)))))

(declare-fun b!5808286 () Bool)

(declare-fun res!2449372 () Bool)

(declare-fun e!3565455 () Bool)

(assert (=> b!5808286 (=> res!2449372 e!3565455)))

(assert (=> b!5808286 (= res!2449372 ((_ is Nil!63646) s!2326))))

(declare-fun b!5808287 () Bool)

(declare-fun res!2449350 () Bool)

(assert (=> b!5808287 (=> res!2449350 e!3565453)))

(declare-fun matchZipper!1951 ((InoxSet Context!10414) List!63770) Bool)

(assert (=> b!5808287 (= res!2449350 (not (= (matchZipper!1951 lt!2299401 s!2326) (matchZipper!1951 (derivationStepZipper!1892 lt!2299401 (h!70094 s!2326)) (t!377123 s!2326)))))))

(declare-fun b!5808288 () Bool)

(declare-fun e!3565445 () Bool)

(assert (=> b!5808288 (= e!3565455 e!3565445)))

(declare-fun res!2449349 () Bool)

(assert (=> b!5808288 (=> res!2449349 e!3565445)))

(declare-fun lt!2299413 () (InoxSet Context!10414))

(declare-fun lt!2299400 () (InoxSet Context!10414))

(assert (=> b!5808288 (= res!2449349 (not (= lt!2299413 lt!2299400)))))

(assert (=> b!5808288 (= lt!2299400 (derivationStepZipperDown!1161 r!7292 (Context!10415 Nil!63644) (h!70094 s!2326)))))

(assert (=> b!5808288 (= lt!2299413 (derivationStepZipperUp!1087 (Context!10415 (Cons!63644 r!7292 Nil!63644)) (h!70094 s!2326)))))

(assert (=> b!5808288 (= lt!2299404 (derivationStepZipper!1892 z!1189 (h!70094 s!2326)))))

(declare-fun b!5808289 () Bool)

(declare-fun tp!1603145 () Bool)

(declare-fun tp!1603140 () Bool)

(assert (=> b!5808289 (= e!3565440 (and tp!1603145 tp!1603140))))

(declare-fun b!5808290 () Bool)

(assert (=> b!5808290 (= e!3565440 tp_is_empty!40899)))

(declare-fun b!5808291 () Bool)

(declare-fun res!2449362 () Bool)

(assert (=> b!5808291 (=> res!2449362 e!3565441)))

(assert (=> b!5808291 (= res!2449362 (not (= (unfocusZipper!1565 (Cons!63645 lt!2299392 Nil!63645)) r!7292)))))

(declare-fun b!5808292 () Bool)

(declare-fun e!3565446 () Bool)

(declare-fun e!3565443 () Bool)

(assert (=> b!5808292 (= e!3565446 e!3565443)))

(declare-fun res!2449353 () Bool)

(assert (=> b!5808292 (=> (not res!2449353) (not e!3565443))))

(declare-fun Exists!2923 (Int) Bool)

(assert (=> b!5808292 (= res!2449353 (= (Exists!2923 lambda!317123) (Exists!2923 lambda!317124)))))

(declare-fun b!5808293 () Bool)

(declare-fun tp!1603147 () Bool)

(assert (=> b!5808293 (= e!3565442 tp!1603147)))

(declare-fun b!5808294 () Bool)

(declare-fun lt!2299403 () Bool)

(assert (=> b!5808294 (= e!3565443 (= lt!2299403 (Exists!2923 lambda!317123)))))

(declare-fun setIsEmpty!39098 () Bool)

(assert (=> setIsEmpty!39098 setRes!39098))

(declare-fun b!5808295 () Bool)

(declare-fun res!2449355 () Bool)

(assert (=> b!5808295 (=> res!2449355 e!3565438)))

(declare-fun generalisedUnion!1686 (List!63768) Regex!15823)

(declare-fun unfocusZipperList!1251 (List!63769) List!63768)

(assert (=> b!5808295 (= res!2449355 (not (= r!7292 (generalisedUnion!1686 (unfocusZipperList!1251 zl!343)))))))

(declare-fun b!5808296 () Bool)

(declare-fun res!2449360 () Bool)

(assert (=> b!5808296 (=> res!2449360 e!3565438)))

(assert (=> b!5808296 (= res!2449360 (or ((_ is EmptyExpr!15823) r!7292) ((_ is EmptyLang!15823) r!7292) ((_ is ElementMatch!15823) r!7292) ((_ is Union!15823) r!7292) ((_ is Concat!24668) r!7292)))))

(declare-fun b!5808297 () Bool)

(assert (=> b!5808297 (= e!3565441 e!3565452)))

(declare-fun res!2449373 () Bool)

(assert (=> b!5808297 (=> res!2449373 e!3565452)))

(declare-fun lt!2299406 () Bool)

(assert (=> b!5808297 (= res!2449373 (not lt!2299406))))

(declare-fun e!3565444 () Bool)

(assert (=> b!5808297 e!3565444))

(declare-fun res!2449365 () Bool)

(assert (=> b!5808297 (=> (not res!2449365) (not e!3565444))))

(assert (=> b!5808297 (= res!2449365 (= lt!2299406 (matchRSpec!2926 lt!2299393 s!2326)))))

(assert (=> b!5808297 (= lt!2299406 (matchR!8008 lt!2299393 s!2326))))

(declare-fun lt!2299418 () Unit!156906)

(assert (=> b!5808297 (= lt!2299418 (mainMatchTheorem!2926 lt!2299393 s!2326))))

(assert (=> b!5808298 (= e!3565438 e!3565455)))

(declare-fun res!2449359 () Bool)

(assert (=> b!5808298 (=> res!2449359 e!3565455)))

(declare-fun e!3565439 () Bool)

(assert (=> b!5808298 (= res!2449359 (not (= lt!2299396 e!3565439)))))

(declare-fun res!2449361 () Bool)

(assert (=> b!5808298 (=> res!2449361 e!3565439)))

(declare-fun isEmpty!35559 (List!63770) Bool)

(assert (=> b!5808298 (= res!2449361 (isEmpty!35559 s!2326))))

(assert (=> b!5808298 (= (Exists!2923 lambda!317123) (Exists!2923 lambda!317125))))

(declare-fun lt!2299414 () Unit!156906)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1552 (Regex!15823 Regex!15823 List!63770) Unit!156906)

(assert (=> b!5808298 (= lt!2299414 (lemmaExistCutMatchRandMatchRSpecEquivalent!1552 (reg!16152 r!7292) r!7292 s!2326))))

(assert (=> b!5808298 (= (Exists!2923 lambda!317123) (Exists!2923 lambda!317124))))

(declare-fun lt!2299397 () Unit!156906)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!604 (Regex!15823 List!63770) Unit!156906)

(assert (=> b!5808298 (= lt!2299397 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!604 (reg!16152 r!7292) s!2326))))

(assert (=> b!5808298 (= lt!2299403 (Exists!2923 lambda!317123))))

(declare-fun isDefined!12535 (Option!15832) Bool)

(assert (=> b!5808298 (= lt!2299403 (isDefined!12535 lt!2299402))))

(declare-fun findConcatSeparation!2246 (Regex!15823 Regex!15823 List!63770 List!63770 List!63770) Option!15832)

(assert (=> b!5808298 (= lt!2299402 (findConcatSeparation!2246 (reg!16152 r!7292) r!7292 Nil!63646 s!2326 s!2326))))

(declare-fun lt!2299407 () Unit!156906)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2010 (Regex!15823 Regex!15823 List!63770) Unit!156906)

(assert (=> b!5808298 (= lt!2299407 (lemmaFindConcatSeparationEquivalentToExists!2010 (reg!16152 r!7292) r!7292 s!2326))))

(declare-fun b!5808299 () Bool)

(assert (=> b!5808299 (= e!3565439 lt!2299403)))

(declare-fun b!5808300 () Bool)

(assert (=> b!5808300 (= e!3565444 e!3565446)))

(declare-fun res!2449370 () Bool)

(assert (=> b!5808300 (=> res!2449370 e!3565446)))

(assert (=> b!5808300 (= res!2449370 (not lt!2299406))))

(declare-fun b!5808301 () Bool)

(declare-fun tp!1603148 () Bool)

(declare-fun tp!1603141 () Bool)

(assert (=> b!5808301 (= e!3565440 (and tp!1603148 tp!1603141))))

(assert (=> b!5808302 (= e!3565445 e!3565454)))

(declare-fun res!2449369 () Bool)

(assert (=> b!5808302 (=> res!2449369 e!3565454)))

(assert (=> b!5808302 (= res!2449369 (not (= lt!2299404 lt!2299400)))))

(assert (=> b!5808302 (= (flatMap!1430 z!1189 lambda!317126) (derivationStepZipperUp!1087 (h!70093 zl!343) (h!70094 s!2326)))))

(declare-fun lt!2299399 () Unit!156906)

(assert (=> b!5808302 (= lt!2299399 (lemmaFlatMapOnSingletonSet!962 z!1189 (h!70093 zl!343) lambda!317126))))

(declare-fun b!5808303 () Bool)

(declare-fun res!2449366 () Bool)

(assert (=> b!5808303 (=> res!2449366 e!3565438)))

(declare-fun generalisedConcat!1438 (List!63768) Regex!15823)

(assert (=> b!5808303 (= res!2449366 (not (= r!7292 (generalisedConcat!1438 (exprs!5707 (h!70093 zl!343))))))))

(declare-fun b!5808304 () Bool)

(declare-fun res!2449348 () Bool)

(assert (=> b!5808304 (=> res!2449348 e!3565438)))

(declare-fun isEmpty!35560 (List!63769) Bool)

(assert (=> b!5808304 (= res!2449348 (not (isEmpty!35560 (t!377122 zl!343))))))

(assert (= (and start!595152 res!2449354) b!5808275))

(assert (= (and b!5808275 res!2449356) b!5808284))

(assert (= (and b!5808284 res!2449351) b!5808274))

(assert (= (and b!5808274 (not res!2449367)) b!5808304))

(assert (= (and b!5808304 (not res!2449348)) b!5808303))

(assert (= (and b!5808303 (not res!2449366)) b!5808281))

(assert (= (and b!5808281 (not res!2449368)) b!5808295))

(assert (= (and b!5808295 (not res!2449355)) b!5808296))

(assert (= (and b!5808296 (not res!2449360)) b!5808298))

(assert (= (and b!5808298 (not res!2449361)) b!5808299))

(assert (= (and b!5808298 (not res!2449359)) b!5808286))

(assert (= (and b!5808286 (not res!2449372)) b!5808288))

(assert (= (and b!5808288 (not res!2449349)) b!5808302))

(assert (= (and b!5808302 (not res!2449369)) b!5808270))

(assert (= (and b!5808270 (not res!2449364)) b!5808287))

(assert (= (and b!5808287 (not res!2449350)) b!5808279))

(assert (= (and b!5808279 (not res!2449352)) b!5808277))

(assert (= (and b!5808277 (not res!2449358)) b!5808285))

(assert (= (and b!5808285 (not res!2449357)) b!5808271))

(assert (= (and b!5808271 (not res!2449363)) b!5808291))

(assert (= (and b!5808291 (not res!2449362)) b!5808297))

(assert (= (and b!5808297 res!2449365) b!5808300))

(assert (= (and b!5808300 (not res!2449370)) b!5808292))

(assert (= (and b!5808292 res!2449353) b!5808294))

(assert (= (and b!5808297 (not res!2449373)) b!5808278))

(assert (= (and b!5808278 (not res!2449374)) b!5808280))

(assert (= (and b!5808280 (not res!2449371)) b!5808272))

(assert (= (and start!595152 ((_ is ElementMatch!15823) r!7292)) b!5808290))

(assert (= (and start!595152 ((_ is Concat!24668) r!7292)) b!5808301))

(assert (= (and start!595152 ((_ is Star!15823) r!7292)) b!5808276))

(assert (= (and start!595152 ((_ is Union!15823) r!7292)) b!5808289))

(assert (= (and start!595152 condSetEmpty!39098) setIsEmpty!39098))

(assert (= (and start!595152 (not condSetEmpty!39098)) setNonEmpty!39098))

(assert (= setNonEmpty!39098 b!5808282))

(assert (= b!5808273 b!5808293))

(assert (= (and start!595152 ((_ is Cons!63645) zl!343)) b!5808273))

(assert (= (and start!595152 ((_ is Cons!63646) s!2326)) b!5808283))

(declare-fun m!6747076 () Bool)

(assert (=> b!5808291 m!6747076))

(declare-fun m!6747078 () Bool)

(assert (=> b!5808302 m!6747078))

(declare-fun m!6747080 () Bool)

(assert (=> b!5808302 m!6747080))

(declare-fun m!6747082 () Bool)

(assert (=> b!5808302 m!6747082))

(declare-fun m!6747084 () Bool)

(assert (=> b!5808284 m!6747084))

(declare-fun m!6747086 () Bool)

(assert (=> b!5808297 m!6747086))

(declare-fun m!6747088 () Bool)

(assert (=> b!5808297 m!6747088))

(declare-fun m!6747090 () Bool)

(assert (=> b!5808297 m!6747090))

(declare-fun m!6747092 () Bool)

(assert (=> b!5808271 m!6747092))

(declare-fun m!6747094 () Bool)

(assert (=> b!5808277 m!6747094))

(declare-fun m!6747096 () Bool)

(assert (=> b!5808274 m!6747096))

(declare-fun m!6747098 () Bool)

(assert (=> b!5808274 m!6747098))

(declare-fun m!6747100 () Bool)

(assert (=> b!5808274 m!6747100))

(declare-fun m!6747102 () Bool)

(assert (=> b!5808287 m!6747102))

(declare-fun m!6747104 () Bool)

(assert (=> b!5808287 m!6747104))

(assert (=> b!5808287 m!6747104))

(declare-fun m!6747106 () Bool)

(assert (=> b!5808287 m!6747106))

(declare-fun m!6747108 () Bool)

(assert (=> b!5808298 m!6747108))

(declare-fun m!6747110 () Bool)

(assert (=> b!5808298 m!6747110))

(declare-fun m!6747112 () Bool)

(assert (=> b!5808298 m!6747112))

(declare-fun m!6747114 () Bool)

(assert (=> b!5808298 m!6747114))

(assert (=> b!5808298 m!6747110))

(declare-fun m!6747116 () Bool)

(assert (=> b!5808298 m!6747116))

(declare-fun m!6747118 () Bool)

(assert (=> b!5808298 m!6747118))

(declare-fun m!6747120 () Bool)

(assert (=> b!5808298 m!6747120))

(declare-fun m!6747122 () Bool)

(assert (=> b!5808298 m!6747122))

(declare-fun m!6747124 () Bool)

(assert (=> b!5808298 m!6747124))

(assert (=> b!5808298 m!6747110))

(declare-fun m!6747126 () Bool)

(assert (=> b!5808273 m!6747126))

(declare-fun m!6747128 () Bool)

(assert (=> b!5808303 m!6747128))

(assert (=> b!5808292 m!6747110))

(assert (=> b!5808292 m!6747118))

(declare-fun m!6747130 () Bool)

(assert (=> b!5808288 m!6747130))

(declare-fun m!6747132 () Bool)

(assert (=> b!5808288 m!6747132))

(declare-fun m!6747134 () Bool)

(assert (=> b!5808288 m!6747134))

(declare-fun m!6747136 () Bool)

(assert (=> b!5808272 m!6747136))

(declare-fun m!6747138 () Bool)

(assert (=> setNonEmpty!39098 m!6747138))

(declare-fun m!6747140 () Bool)

(assert (=> b!5808275 m!6747140))

(declare-fun m!6747142 () Bool)

(assert (=> b!5808280 m!6747142))

(declare-fun m!6747144 () Bool)

(assert (=> b!5808304 m!6747144))

(declare-fun m!6747146 () Bool)

(assert (=> b!5808270 m!6747146))

(declare-fun m!6747148 () Bool)

(assert (=> b!5808270 m!6747148))

(declare-fun m!6747150 () Bool)

(assert (=> b!5808270 m!6747150))

(declare-fun m!6747152 () Bool)

(assert (=> b!5808270 m!6747152))

(declare-fun m!6747154 () Bool)

(assert (=> b!5808270 m!6747154))

(assert (=> b!5808294 m!6747110))

(declare-fun m!6747156 () Bool)

(assert (=> b!5808285 m!6747156))

(declare-fun m!6747158 () Bool)

(assert (=> b!5808285 m!6747158))

(declare-fun m!6747160 () Bool)

(assert (=> b!5808285 m!6747160))

(declare-fun m!6747162 () Bool)

(assert (=> b!5808285 m!6747162))

(declare-fun m!6747164 () Bool)

(assert (=> b!5808285 m!6747164))

(declare-fun m!6747166 () Bool)

(assert (=> b!5808285 m!6747166))

(declare-fun m!6747168 () Bool)

(assert (=> b!5808285 m!6747168))

(declare-fun m!6747170 () Bool)

(assert (=> b!5808285 m!6747170))

(declare-fun m!6747172 () Bool)

(assert (=> b!5808285 m!6747172))

(declare-fun m!6747174 () Bool)

(assert (=> b!5808295 m!6747174))

(assert (=> b!5808295 m!6747174))

(declare-fun m!6747176 () Bool)

(assert (=> b!5808295 m!6747176))

(declare-fun m!6747178 () Bool)

(assert (=> b!5808278 m!6747178))

(declare-fun m!6747180 () Bool)

(assert (=> b!5808278 m!6747180))

(declare-fun m!6747182 () Bool)

(assert (=> start!595152 m!6747182))

(check-sat (not b!5808301) tp_is_empty!40899 (not b!5808276) (not b!5808303) (not b!5808274) (not b!5808285) (not b!5808297) (not b!5808282) (not b!5808280) (not b!5808287) (not b!5808302) (not b!5808271) (not b!5808304) (not b!5808278) (not b!5808298) (not b!5808283) (not b!5808273) (not b!5808291) (not start!595152) (not b!5808275) (not b!5808288) (not b!5808277) (not b!5808295) (not b!5808293) (not b!5808284) (not b!5808292) (not setNonEmpty!39098) (not b!5808272) (not b!5808289) (not b!5808294) (not b!5808270))
(check-sat)
(get-model)

(declare-fun d!1829249 () Bool)

(declare-fun lt!2299434 () Regex!15823)

(assert (=> d!1829249 (validRegex!7559 lt!2299434)))

(assert (=> d!1829249 (= lt!2299434 (generalisedUnion!1686 (unfocusZipperList!1251 (Cons!63645 lt!2299392 Nil!63645))))))

(assert (=> d!1829249 (= (unfocusZipper!1565 (Cons!63645 lt!2299392 Nil!63645)) lt!2299434)))

(declare-fun bs!1371240 () Bool)

(assert (= bs!1371240 d!1829249))

(declare-fun m!6747258 () Bool)

(assert (=> bs!1371240 m!6747258))

(declare-fun m!6747260 () Bool)

(assert (=> bs!1371240 m!6747260))

(assert (=> bs!1371240 m!6747260))

(declare-fun m!6747262 () Bool)

(assert (=> bs!1371240 m!6747262))

(assert (=> b!5808291 d!1829249))

(declare-fun b!5808507 () Bool)

(declare-fun e!3565563 () (InoxSet Context!10414))

(declare-fun call!453489 () (InoxSet Context!10414))

(declare-fun call!453488 () (InoxSet Context!10414))

(assert (=> b!5808507 (= e!3565563 ((_ map or) call!453489 call!453488))))

(declare-fun bm!453482 () Bool)

(declare-fun call!453487 () (InoxSet Context!10414))

(declare-fun call!453490 () (InoxSet Context!10414))

(assert (=> bm!453482 (= call!453487 call!453490)))

(declare-fun bm!453483 () Bool)

(declare-fun c!1029109 () Bool)

(declare-fun call!453491 () List!63768)

(assert (=> bm!453483 (= call!453488 (derivationStepZipperDown!1161 (ite c!1029109 (regTwo!32159 (reg!16152 r!7292)) (regOne!32158 (reg!16152 r!7292))) (ite c!1029109 lt!2299392 (Context!10415 call!453491)) (h!70094 s!2326)))))

(declare-fun bm!453484 () Bool)

(assert (=> bm!453484 (= call!453490 call!453489)))

(declare-fun d!1829255 () Bool)

(declare-fun c!1029110 () Bool)

(assert (=> d!1829255 (= c!1029110 (and ((_ is ElementMatch!15823) (reg!16152 r!7292)) (= (c!1029053 (reg!16152 r!7292)) (h!70094 s!2326))))))

(declare-fun e!3565562 () (InoxSet Context!10414))

(assert (=> d!1829255 (= (derivationStepZipperDown!1161 (reg!16152 r!7292) lt!2299392 (h!70094 s!2326)) e!3565562)))

(declare-fun b!5808508 () Bool)

(declare-fun e!3565565 () (InoxSet Context!10414))

(declare-fun e!3565564 () (InoxSet Context!10414))

(assert (=> b!5808508 (= e!3565565 e!3565564)))

(declare-fun c!1029108 () Bool)

(assert (=> b!5808508 (= c!1029108 ((_ is Concat!24668) (reg!16152 r!7292)))))

(declare-fun b!5808509 () Bool)

(declare-fun c!1029107 () Bool)

(declare-fun e!3565567 () Bool)

(assert (=> b!5808509 (= c!1029107 e!3565567)))

(declare-fun res!2449467 () Bool)

(assert (=> b!5808509 (=> (not res!2449467) (not e!3565567))))

(assert (=> b!5808509 (= res!2449467 ((_ is Concat!24668) (reg!16152 r!7292)))))

(assert (=> b!5808509 (= e!3565563 e!3565565)))

(declare-fun bm!453485 () Bool)

(declare-fun call!453492 () List!63768)

(assert (=> bm!453485 (= call!453489 (derivationStepZipperDown!1161 (ite c!1029109 (regOne!32159 (reg!16152 r!7292)) (ite c!1029107 (regTwo!32158 (reg!16152 r!7292)) (ite c!1029108 (regOne!32158 (reg!16152 r!7292)) (reg!16152 (reg!16152 r!7292))))) (ite (or c!1029109 c!1029107) lt!2299392 (Context!10415 call!453492)) (h!70094 s!2326)))))

(declare-fun b!5808510 () Bool)

(assert (=> b!5808510 (= e!3565562 e!3565563)))

(assert (=> b!5808510 (= c!1029109 ((_ is Union!15823) (reg!16152 r!7292)))))

(declare-fun bm!453486 () Bool)

(assert (=> bm!453486 (= call!453492 call!453491)))

(declare-fun b!5808511 () Bool)

(declare-fun c!1029106 () Bool)

(assert (=> b!5808511 (= c!1029106 ((_ is Star!15823) (reg!16152 r!7292)))))

(declare-fun e!3565566 () (InoxSet Context!10414))

(assert (=> b!5808511 (= e!3565564 e!3565566)))

(declare-fun b!5808512 () Bool)

(declare-fun nullable!5849 (Regex!15823) Bool)

(assert (=> b!5808512 (= e!3565567 (nullable!5849 (regOne!32158 (reg!16152 r!7292))))))

(declare-fun b!5808513 () Bool)

(assert (=> b!5808513 (= e!3565562 (store ((as const (Array Context!10414 Bool)) false) lt!2299392 true))))

(declare-fun bm!453487 () Bool)

(declare-fun $colon$colon!1804 (List!63768 Regex!15823) List!63768)

(assert (=> bm!453487 (= call!453491 ($colon$colon!1804 (exprs!5707 lt!2299392) (ite (or c!1029107 c!1029108) (regTwo!32158 (reg!16152 r!7292)) (reg!16152 r!7292))))))

(declare-fun b!5808514 () Bool)

(assert (=> b!5808514 (= e!3565564 call!453487)))

(declare-fun b!5808515 () Bool)

(assert (=> b!5808515 (= e!3565566 ((as const (Array Context!10414 Bool)) false))))

(declare-fun b!5808516 () Bool)

(assert (=> b!5808516 (= e!3565565 ((_ map or) call!453488 call!453490))))

(declare-fun b!5808517 () Bool)

(assert (=> b!5808517 (= e!3565566 call!453487)))

(assert (= (and d!1829255 c!1029110) b!5808513))

(assert (= (and d!1829255 (not c!1029110)) b!5808510))

(assert (= (and b!5808510 c!1029109) b!5808507))

(assert (= (and b!5808510 (not c!1029109)) b!5808509))

(assert (= (and b!5808509 res!2449467) b!5808512))

(assert (= (and b!5808509 c!1029107) b!5808516))

(assert (= (and b!5808509 (not c!1029107)) b!5808508))

(assert (= (and b!5808508 c!1029108) b!5808514))

(assert (= (and b!5808508 (not c!1029108)) b!5808511))

(assert (= (and b!5808511 c!1029106) b!5808517))

(assert (= (and b!5808511 (not c!1029106)) b!5808515))

(assert (= (or b!5808514 b!5808517) bm!453486))

(assert (= (or b!5808514 b!5808517) bm!453482))

(assert (= (or b!5808516 bm!453486) bm!453487))

(assert (= (or b!5808516 bm!453482) bm!453484))

(assert (= (or b!5808507 b!5808516) bm!453483))

(assert (= (or b!5808507 bm!453484) bm!453485))

(declare-fun m!6747290 () Bool)

(assert (=> bm!453483 m!6747290))

(assert (=> b!5808513 m!6747160))

(declare-fun m!6747292 () Bool)

(assert (=> bm!453485 m!6747292))

(declare-fun m!6747294 () Bool)

(assert (=> bm!453487 m!6747294))

(declare-fun m!6747296 () Bool)

(assert (=> b!5808512 m!6747296))

(assert (=> b!5808270 d!1829255))

(declare-fun d!1829261 () Bool)

(declare-fun choose!44097 ((InoxSet Context!10414) Int) (InoxSet Context!10414))

(assert (=> d!1829261 (= (flatMap!1430 lt!2299401 lambda!317126) (choose!44097 lt!2299401 lambda!317126))))

(declare-fun bs!1371246 () Bool)

(assert (= bs!1371246 d!1829261))

(declare-fun m!6747298 () Bool)

(assert (=> bs!1371246 m!6747298))

(assert (=> b!5808270 d!1829261))

(declare-fun b!5808552 () Bool)

(declare-fun e!3565588 () (InoxSet Context!10414))

(assert (=> b!5808552 (= e!3565588 ((as const (Array Context!10414 Bool)) false))))

(declare-fun b!5808553 () Bool)

(declare-fun e!3565589 () Bool)

(assert (=> b!5808553 (= e!3565589 (nullable!5849 (h!70092 (exprs!5707 lt!2299409))))))

(declare-fun d!1829263 () Bool)

(declare-fun c!1029124 () Bool)

(assert (=> d!1829263 (= c!1029124 e!3565589)))

(declare-fun res!2449478 () Bool)

(assert (=> d!1829263 (=> (not res!2449478) (not e!3565589))))

(assert (=> d!1829263 (= res!2449478 ((_ is Cons!63644) (exprs!5707 lt!2299409)))))

(declare-fun e!3565590 () (InoxSet Context!10414))

(assert (=> d!1829263 (= (derivationStepZipperUp!1087 lt!2299409 (h!70094 s!2326)) e!3565590)))

(declare-fun b!5808554 () Bool)

(declare-fun call!453495 () (InoxSet Context!10414))

(assert (=> b!5808554 (= e!3565588 call!453495)))

(declare-fun bm!453490 () Bool)

(assert (=> bm!453490 (= call!453495 (derivationStepZipperDown!1161 (h!70092 (exprs!5707 lt!2299409)) (Context!10415 (t!377121 (exprs!5707 lt!2299409))) (h!70094 s!2326)))))

(declare-fun b!5808555 () Bool)

(assert (=> b!5808555 (= e!3565590 ((_ map or) call!453495 (derivationStepZipperUp!1087 (Context!10415 (t!377121 (exprs!5707 lt!2299409))) (h!70094 s!2326))))))

(declare-fun b!5808556 () Bool)

(assert (=> b!5808556 (= e!3565590 e!3565588)))

(declare-fun c!1029123 () Bool)

(assert (=> b!5808556 (= c!1029123 ((_ is Cons!63644) (exprs!5707 lt!2299409)))))

(assert (= (and d!1829263 res!2449478) b!5808553))

(assert (= (and d!1829263 c!1029124) b!5808555))

(assert (= (and d!1829263 (not c!1029124)) b!5808556))

(assert (= (and b!5808556 c!1029123) b!5808554))

(assert (= (and b!5808556 (not c!1029123)) b!5808552))

(assert (= (or b!5808555 b!5808554) bm!453490))

(declare-fun m!6747306 () Bool)

(assert (=> b!5808553 m!6747306))

(declare-fun m!6747318 () Bool)

(assert (=> bm!453490 m!6747318))

(declare-fun m!6747326 () Bool)

(assert (=> b!5808555 m!6747326))

(assert (=> b!5808270 d!1829263))

(declare-fun d!1829269 () Bool)

(declare-fun dynLambda!24917 (Int Context!10414) (InoxSet Context!10414))

(assert (=> d!1829269 (= (flatMap!1430 lt!2299401 lambda!317126) (dynLambda!24917 lambda!317126 lt!2299409))))

(declare-fun lt!2299460 () Unit!156906)

(declare-fun choose!44098 ((InoxSet Context!10414) Context!10414 Int) Unit!156906)

(assert (=> d!1829269 (= lt!2299460 (choose!44098 lt!2299401 lt!2299409 lambda!317126))))

(assert (=> d!1829269 (= lt!2299401 (store ((as const (Array Context!10414 Bool)) false) lt!2299409 true))))

(assert (=> d!1829269 (= (lemmaFlatMapOnSingletonSet!962 lt!2299401 lt!2299409 lambda!317126) lt!2299460)))

(declare-fun b_lambda!218949 () Bool)

(assert (=> (not b_lambda!218949) (not d!1829269)))

(declare-fun bs!1371258 () Bool)

(assert (= bs!1371258 d!1829269))

(assert (=> bs!1371258 m!6747150))

(declare-fun m!6747342 () Bool)

(assert (=> bs!1371258 m!6747342))

(declare-fun m!6747344 () Bool)

(assert (=> bs!1371258 m!6747344))

(assert (=> bs!1371258 m!6747154))

(assert (=> b!5808270 d!1829269))

(declare-fun d!1829275 () Bool)

(declare-fun lambda!317162 () Int)

(declare-fun forall!14931 (List!63768 Int) Bool)

(assert (=> d!1829275 (= (inv!82804 (h!70093 zl!343)) (forall!14931 (exprs!5707 (h!70093 zl!343)) lambda!317162))))

(declare-fun bs!1371259 () Bool)

(assert (= bs!1371259 d!1829275))

(declare-fun m!6747346 () Bool)

(assert (=> bs!1371259 m!6747346))

(assert (=> b!5808273 d!1829275))

(declare-fun d!1829277 () Bool)

(declare-fun choose!44099 (Int) Bool)

(assert (=> d!1829277 (= (Exists!2923 lambda!317123) (choose!44099 lambda!317123))))

(declare-fun bs!1371260 () Bool)

(assert (= bs!1371260 d!1829277))

(declare-fun m!6747348 () Bool)

(assert (=> bs!1371260 m!6747348))

(assert (=> b!5808292 d!1829277))

(declare-fun d!1829279 () Bool)

(assert (=> d!1829279 (= (Exists!2923 lambda!317124) (choose!44099 lambda!317124))))

(declare-fun bs!1371261 () Bool)

(assert (= bs!1371261 d!1829279))

(declare-fun m!6747350 () Bool)

(assert (=> bs!1371261 m!6747350))

(assert (=> b!5808292 d!1829279))

(declare-fun b!5808689 () Bool)

(declare-fun e!3565670 () Bool)

(declare-fun derivativeStep!4592 (Regex!15823 C!31916) Regex!15823)

(declare-fun head!12258 (List!63770) C!31916)

(declare-fun tail!11353 (List!63770) List!63770)

(assert (=> b!5808689 (= e!3565670 (matchR!8008 (derivativeStep!4592 r!7292 (head!12258 (_2!36223 lt!2299410))) (tail!11353 (_2!36223 lt!2299410))))))

(declare-fun b!5808690 () Bool)

(declare-fun e!3565669 () Bool)

(declare-fun e!3565673 () Bool)

(assert (=> b!5808690 (= e!3565669 e!3565673)))

(declare-fun c!1029171 () Bool)

(assert (=> b!5808690 (= c!1029171 ((_ is EmptyLang!15823) r!7292))))

(declare-fun b!5808691 () Bool)

(declare-fun res!2449527 () Bool)

(declare-fun e!3565675 () Bool)

(assert (=> b!5808691 (=> (not res!2449527) (not e!3565675))))

(declare-fun call!453528 () Bool)

(assert (=> b!5808691 (= res!2449527 (not call!453528))))

(declare-fun b!5808692 () Bool)

(declare-fun e!3565674 () Bool)

(assert (=> b!5808692 (= e!3565674 (not (= (head!12258 (_2!36223 lt!2299410)) (c!1029053 r!7292))))))

(declare-fun b!5808693 () Bool)

(declare-fun e!3565672 () Bool)

(declare-fun e!3565671 () Bool)

(assert (=> b!5808693 (= e!3565672 e!3565671)))

(declare-fun res!2449525 () Bool)

(assert (=> b!5808693 (=> (not res!2449525) (not e!3565671))))

(declare-fun lt!2299464 () Bool)

(assert (=> b!5808693 (= res!2449525 (not lt!2299464))))

(declare-fun b!5808694 () Bool)

(assert (=> b!5808694 (= e!3565671 e!3565674)))

(declare-fun res!2449521 () Bool)

(assert (=> b!5808694 (=> res!2449521 e!3565674)))

(assert (=> b!5808694 (= res!2449521 call!453528)))

(declare-fun b!5808695 () Bool)

(assert (=> b!5808695 (= e!3565669 (= lt!2299464 call!453528))))

(declare-fun bm!453523 () Bool)

(assert (=> bm!453523 (= call!453528 (isEmpty!35559 (_2!36223 lt!2299410)))))

(declare-fun b!5808696 () Bool)

(assert (=> b!5808696 (= e!3565670 (nullable!5849 r!7292))))

(declare-fun b!5808697 () Bool)

(declare-fun res!2449524 () Bool)

(assert (=> b!5808697 (=> (not res!2449524) (not e!3565675))))

(assert (=> b!5808697 (= res!2449524 (isEmpty!35559 (tail!11353 (_2!36223 lt!2299410))))))

(declare-fun b!5808698 () Bool)

(declare-fun res!2449526 () Bool)

(assert (=> b!5808698 (=> res!2449526 e!3565674)))

(assert (=> b!5808698 (= res!2449526 (not (isEmpty!35559 (tail!11353 (_2!36223 lt!2299410)))))))

(declare-fun b!5808699 () Bool)

(declare-fun res!2449528 () Bool)

(assert (=> b!5808699 (=> res!2449528 e!3565672)))

(assert (=> b!5808699 (= res!2449528 e!3565675)))

(declare-fun res!2449522 () Bool)

(assert (=> b!5808699 (=> (not res!2449522) (not e!3565675))))

(assert (=> b!5808699 (= res!2449522 lt!2299464)))

(declare-fun d!1829281 () Bool)

(assert (=> d!1829281 e!3565669))

(declare-fun c!1029173 () Bool)

(assert (=> d!1829281 (= c!1029173 ((_ is EmptyExpr!15823) r!7292))))

(assert (=> d!1829281 (= lt!2299464 e!3565670)))

(declare-fun c!1029172 () Bool)

(assert (=> d!1829281 (= c!1029172 (isEmpty!35559 (_2!36223 lt!2299410)))))

(assert (=> d!1829281 (validRegex!7559 r!7292)))

(assert (=> d!1829281 (= (matchR!8008 r!7292 (_2!36223 lt!2299410)) lt!2299464)))

(declare-fun b!5808700 () Bool)

(assert (=> b!5808700 (= e!3565673 (not lt!2299464))))

(declare-fun b!5808701 () Bool)

(assert (=> b!5808701 (= e!3565675 (= (head!12258 (_2!36223 lt!2299410)) (c!1029053 r!7292)))))

(declare-fun b!5808702 () Bool)

(declare-fun res!2449523 () Bool)

(assert (=> b!5808702 (=> res!2449523 e!3565672)))

(assert (=> b!5808702 (= res!2449523 (not ((_ is ElementMatch!15823) r!7292)))))

(assert (=> b!5808702 (= e!3565673 e!3565672)))

(assert (= (and d!1829281 c!1029172) b!5808696))

(assert (= (and d!1829281 (not c!1029172)) b!5808689))

(assert (= (and d!1829281 c!1029173) b!5808695))

(assert (= (and d!1829281 (not c!1029173)) b!5808690))

(assert (= (and b!5808690 c!1029171) b!5808700))

(assert (= (and b!5808690 (not c!1029171)) b!5808702))

(assert (= (and b!5808702 (not res!2449523)) b!5808699))

(assert (= (and b!5808699 res!2449522) b!5808691))

(assert (= (and b!5808691 res!2449527) b!5808697))

(assert (= (and b!5808697 res!2449524) b!5808701))

(assert (= (and b!5808699 (not res!2449528)) b!5808693))

(assert (= (and b!5808693 res!2449525) b!5808694))

(assert (= (and b!5808694 (not res!2449521)) b!5808698))

(assert (= (and b!5808698 (not res!2449526)) b!5808692))

(assert (= (or b!5808695 b!5808691 b!5808694) bm!453523))

(declare-fun m!6747396 () Bool)

(assert (=> b!5808698 m!6747396))

(assert (=> b!5808698 m!6747396))

(declare-fun m!6747398 () Bool)

(assert (=> b!5808698 m!6747398))

(declare-fun m!6747400 () Bool)

(assert (=> b!5808696 m!6747400))

(declare-fun m!6747402 () Bool)

(assert (=> b!5808689 m!6747402))

(assert (=> b!5808689 m!6747402))

(declare-fun m!6747404 () Bool)

(assert (=> b!5808689 m!6747404))

(assert (=> b!5808689 m!6747396))

(assert (=> b!5808689 m!6747404))

(assert (=> b!5808689 m!6747396))

(declare-fun m!6747406 () Bool)

(assert (=> b!5808689 m!6747406))

(assert (=> b!5808692 m!6747402))

(declare-fun m!6747408 () Bool)

(assert (=> bm!453523 m!6747408))

(assert (=> b!5808701 m!6747402))

(assert (=> d!1829281 m!6747408))

(assert (=> d!1829281 m!6747182))

(assert (=> b!5808697 m!6747396))

(assert (=> b!5808697 m!6747396))

(assert (=> b!5808697 m!6747398))

(assert (=> b!5808272 d!1829281))

(declare-fun d!1829299 () Bool)

(declare-fun lt!2299467 () Regex!15823)

(assert (=> d!1829299 (validRegex!7559 lt!2299467)))

(assert (=> d!1829299 (= lt!2299467 (generalisedUnion!1686 (unfocusZipperList!1251 (Cons!63645 lt!2299390 Nil!63645))))))

(assert (=> d!1829299 (= (unfocusZipper!1565 (Cons!63645 lt!2299390 Nil!63645)) lt!2299467)))

(declare-fun bs!1371267 () Bool)

(assert (= bs!1371267 d!1829299))

(declare-fun m!6747410 () Bool)

(assert (=> bs!1371267 m!6747410))

(declare-fun m!6747412 () Bool)

(assert (=> bs!1371267 m!6747412))

(assert (=> bs!1371267 m!6747412))

(declare-fun m!6747414 () Bool)

(assert (=> bs!1371267 m!6747414))

(assert (=> b!5808271 d!1829299))

(declare-fun b!5808715 () Bool)

(declare-fun e!3565682 () (InoxSet Context!10414))

(assert (=> b!5808715 (= e!3565682 ((as const (Array Context!10414 Bool)) false))))

(declare-fun b!5808716 () Bool)

(declare-fun e!3565683 () Bool)

(assert (=> b!5808716 (= e!3565683 (nullable!5849 (h!70092 (exprs!5707 lt!2299390))))))

(declare-fun d!1829301 () Bool)

(declare-fun c!1029178 () Bool)

(assert (=> d!1829301 (= c!1029178 e!3565683)))

(declare-fun res!2449535 () Bool)

(assert (=> d!1829301 (=> (not res!2449535) (not e!3565683))))

(assert (=> d!1829301 (= res!2449535 ((_ is Cons!63644) (exprs!5707 lt!2299390)))))

(declare-fun e!3565684 () (InoxSet Context!10414))

(assert (=> d!1829301 (= (derivationStepZipperUp!1087 lt!2299390 (h!70094 s!2326)) e!3565684)))

(declare-fun b!5808717 () Bool)

(declare-fun call!453529 () (InoxSet Context!10414))

(assert (=> b!5808717 (= e!3565682 call!453529)))

(declare-fun bm!453524 () Bool)

(assert (=> bm!453524 (= call!453529 (derivationStepZipperDown!1161 (h!70092 (exprs!5707 lt!2299390)) (Context!10415 (t!377121 (exprs!5707 lt!2299390))) (h!70094 s!2326)))))

(declare-fun b!5808718 () Bool)

(assert (=> b!5808718 (= e!3565684 ((_ map or) call!453529 (derivationStepZipperUp!1087 (Context!10415 (t!377121 (exprs!5707 lt!2299390))) (h!70094 s!2326))))))

(declare-fun b!5808719 () Bool)

(assert (=> b!5808719 (= e!3565684 e!3565682)))

(declare-fun c!1029177 () Bool)

(assert (=> b!5808719 (= c!1029177 ((_ is Cons!63644) (exprs!5707 lt!2299390)))))

(assert (= (and d!1829301 res!2449535) b!5808716))

(assert (= (and d!1829301 c!1029178) b!5808718))

(assert (= (and d!1829301 (not c!1029178)) b!5808719))

(assert (= (and b!5808719 c!1029177) b!5808717))

(assert (= (and b!5808719 (not c!1029177)) b!5808715))

(assert (= (or b!5808718 b!5808717) bm!453524))

(declare-fun m!6747430 () Bool)

(assert (=> b!5808716 m!6747430))

(declare-fun m!6747432 () Bool)

(assert (=> bm!453524 m!6747432))

(declare-fun m!6747434 () Bool)

(assert (=> b!5808718 m!6747434))

(assert (=> b!5808285 d!1829301))

(declare-fun d!1829307 () Bool)

(assert (=> d!1829307 (= (flatMap!1430 lt!2299395 lambda!317126) (choose!44097 lt!2299395 lambda!317126))))

(declare-fun bs!1371268 () Bool)

(assert (= bs!1371268 d!1829307))

(declare-fun m!6747436 () Bool)

(assert (=> bs!1371268 m!6747436))

(assert (=> b!5808285 d!1829307))

(declare-fun bs!1371276 () Bool)

(declare-fun d!1829309 () Bool)

(assert (= bs!1371276 (and d!1829309 b!5808302)))

(declare-fun lambda!317170 () Int)

(assert (=> bs!1371276 (= lambda!317170 lambda!317126)))

(assert (=> d!1829309 true))

(assert (=> d!1829309 (= (derivationStepZipper!1892 lt!2299395 (h!70094 s!2326)) (flatMap!1430 lt!2299395 lambda!317170))))

(declare-fun bs!1371278 () Bool)

(assert (= bs!1371278 d!1829309))

(declare-fun m!6747444 () Bool)

(assert (=> bs!1371278 m!6747444))

(assert (=> b!5808285 d!1829309))

(declare-fun d!1829313 () Bool)

(assert (=> d!1829313 (= (flatMap!1430 lt!2299395 lambda!317126) (dynLambda!24917 lambda!317126 lt!2299392))))

(declare-fun lt!2299472 () Unit!156906)

(assert (=> d!1829313 (= lt!2299472 (choose!44098 lt!2299395 lt!2299392 lambda!317126))))

(assert (=> d!1829313 (= lt!2299395 (store ((as const (Array Context!10414 Bool)) false) lt!2299392 true))))

(assert (=> d!1829313 (= (lemmaFlatMapOnSingletonSet!962 lt!2299395 lt!2299392 lambda!317126) lt!2299472)))

(declare-fun b_lambda!218951 () Bool)

(assert (=> (not b_lambda!218951) (not d!1829313)))

(declare-fun bs!1371283 () Bool)

(assert (= bs!1371283 d!1829313))

(assert (=> bs!1371283 m!6747158))

(declare-fun m!6747446 () Bool)

(assert (=> bs!1371283 m!6747446))

(declare-fun m!6747448 () Bool)

(assert (=> bs!1371283 m!6747448))

(assert (=> bs!1371283 m!6747160))

(assert (=> b!5808285 d!1829313))

(declare-fun d!1829315 () Bool)

(assert (=> d!1829315 (= (flatMap!1430 lt!2299405 lambda!317126) (choose!44097 lt!2299405 lambda!317126))))

(declare-fun bs!1371285 () Bool)

(assert (= bs!1371285 d!1829315))

(declare-fun m!6747450 () Bool)

(assert (=> bs!1371285 m!6747450))

(assert (=> b!5808285 d!1829315))

(declare-fun d!1829317 () Bool)

(assert (=> d!1829317 (= (flatMap!1430 lt!2299405 lambda!317126) (dynLambda!24917 lambda!317126 lt!2299390))))

(declare-fun lt!2299473 () Unit!156906)

(assert (=> d!1829317 (= lt!2299473 (choose!44098 lt!2299405 lt!2299390 lambda!317126))))

(assert (=> d!1829317 (= lt!2299405 (store ((as const (Array Context!10414 Bool)) false) lt!2299390 true))))

(assert (=> d!1829317 (= (lemmaFlatMapOnSingletonSet!962 lt!2299405 lt!2299390 lambda!317126) lt!2299473)))

(declare-fun b_lambda!218953 () Bool)

(assert (=> (not b_lambda!218953) (not d!1829317)))

(declare-fun bs!1371287 () Bool)

(assert (= bs!1371287 d!1829317))

(assert (=> bs!1371287 m!6747172))

(declare-fun m!6747452 () Bool)

(assert (=> bs!1371287 m!6747452))

(declare-fun m!6747454 () Bool)

(assert (=> bs!1371287 m!6747454))

(assert (=> bs!1371287 m!6747168))

(assert (=> b!5808285 d!1829317))

(declare-fun b!5808733 () Bool)

(declare-fun e!3565692 () (InoxSet Context!10414))

(assert (=> b!5808733 (= e!3565692 ((as const (Array Context!10414 Bool)) false))))

(declare-fun b!5808734 () Bool)

(declare-fun e!3565693 () Bool)

(assert (=> b!5808734 (= e!3565693 (nullable!5849 (h!70092 (exprs!5707 lt!2299392))))))

(declare-fun d!1829319 () Bool)

(declare-fun c!1029186 () Bool)

(assert (=> d!1829319 (= c!1029186 e!3565693)))

(declare-fun res!2449539 () Bool)

(assert (=> d!1829319 (=> (not res!2449539) (not e!3565693))))

(assert (=> d!1829319 (= res!2449539 ((_ is Cons!63644) (exprs!5707 lt!2299392)))))

(declare-fun e!3565694 () (InoxSet Context!10414))

(assert (=> d!1829319 (= (derivationStepZipperUp!1087 lt!2299392 (h!70094 s!2326)) e!3565694)))

(declare-fun b!5808735 () Bool)

(declare-fun call!453532 () (InoxSet Context!10414))

(assert (=> b!5808735 (= e!3565692 call!453532)))

(declare-fun bm!453527 () Bool)

(assert (=> bm!453527 (= call!453532 (derivationStepZipperDown!1161 (h!70092 (exprs!5707 lt!2299392)) (Context!10415 (t!377121 (exprs!5707 lt!2299392))) (h!70094 s!2326)))))

(declare-fun b!5808736 () Bool)

(assert (=> b!5808736 (= e!3565694 ((_ map or) call!453532 (derivationStepZipperUp!1087 (Context!10415 (t!377121 (exprs!5707 lt!2299392))) (h!70094 s!2326))))))

(declare-fun b!5808737 () Bool)

(assert (=> b!5808737 (= e!3565694 e!3565692)))

(declare-fun c!1029185 () Bool)

(assert (=> b!5808737 (= c!1029185 ((_ is Cons!63644) (exprs!5707 lt!2299392)))))

(assert (= (and d!1829319 res!2449539) b!5808734))

(assert (= (and d!1829319 c!1029186) b!5808736))

(assert (= (and d!1829319 (not c!1029186)) b!5808737))

(assert (= (and b!5808737 c!1029185) b!5808735))

(assert (= (and b!5808737 (not c!1029185)) b!5808733))

(assert (= (or b!5808736 b!5808735) bm!453527))

(declare-fun m!6747462 () Bool)

(assert (=> b!5808734 m!6747462))

(declare-fun m!6747464 () Bool)

(assert (=> bm!453527 m!6747464))

(declare-fun m!6747466 () Bool)

(assert (=> b!5808736 m!6747466))

(assert (=> b!5808285 d!1829319))

(declare-fun d!1829323 () Bool)

(declare-fun lt!2299475 () Regex!15823)

(assert (=> d!1829323 (validRegex!7559 lt!2299475)))

(assert (=> d!1829323 (= lt!2299475 (generalisedUnion!1686 (unfocusZipperList!1251 zl!343)))))

(assert (=> d!1829323 (= (unfocusZipper!1565 zl!343) lt!2299475)))

(declare-fun bs!1371288 () Bool)

(assert (= bs!1371288 d!1829323))

(declare-fun m!6747468 () Bool)

(assert (=> bs!1371288 m!6747468))

(assert (=> bs!1371288 m!6747174))

(assert (=> bs!1371288 m!6747174))

(assert (=> bs!1371288 m!6747176))

(assert (=> b!5808284 d!1829323))

(declare-fun d!1829325 () Bool)

(assert (=> d!1829325 (= (isEmpty!35560 (t!377122 zl!343)) ((_ is Nil!63645) (t!377122 zl!343)))))

(assert (=> b!5808304 d!1829325))

(declare-fun b!5808757 () Bool)

(declare-fun e!3565706 () (InoxSet Context!10414))

(declare-fun call!453537 () (InoxSet Context!10414))

(declare-fun call!453536 () (InoxSet Context!10414))

(assert (=> b!5808757 (= e!3565706 ((_ map or) call!453537 call!453536))))

(declare-fun bm!453530 () Bool)

(declare-fun call!453535 () (InoxSet Context!10414))

(declare-fun call!453538 () (InoxSet Context!10414))

(assert (=> bm!453530 (= call!453535 call!453538)))

(declare-fun bm!453531 () Bool)

(declare-fun c!1029195 () Bool)

(declare-fun call!453539 () List!63768)

(assert (=> bm!453531 (= call!453536 (derivationStepZipperDown!1161 (ite c!1029195 (regTwo!32159 r!7292) (regOne!32158 r!7292)) (ite c!1029195 (Context!10415 Nil!63644) (Context!10415 call!453539)) (h!70094 s!2326)))))

(declare-fun bm!453532 () Bool)

(assert (=> bm!453532 (= call!453538 call!453537)))

(declare-fun d!1829331 () Bool)

(declare-fun c!1029196 () Bool)

(assert (=> d!1829331 (= c!1029196 (and ((_ is ElementMatch!15823) r!7292) (= (c!1029053 r!7292) (h!70094 s!2326))))))

(declare-fun e!3565705 () (InoxSet Context!10414))

(assert (=> d!1829331 (= (derivationStepZipperDown!1161 r!7292 (Context!10415 Nil!63644) (h!70094 s!2326)) e!3565705)))

(declare-fun b!5808758 () Bool)

(declare-fun e!3565708 () (InoxSet Context!10414))

(declare-fun e!3565707 () (InoxSet Context!10414))

(assert (=> b!5808758 (= e!3565708 e!3565707)))

(declare-fun c!1029194 () Bool)

(assert (=> b!5808758 (= c!1029194 ((_ is Concat!24668) r!7292))))

(declare-fun b!5808759 () Bool)

(declare-fun c!1029193 () Bool)

(declare-fun e!3565710 () Bool)

(assert (=> b!5808759 (= c!1029193 e!3565710)))

(declare-fun res!2449549 () Bool)

(assert (=> b!5808759 (=> (not res!2449549) (not e!3565710))))

(assert (=> b!5808759 (= res!2449549 ((_ is Concat!24668) r!7292))))

(assert (=> b!5808759 (= e!3565706 e!3565708)))

(declare-fun call!453540 () List!63768)

(declare-fun bm!453533 () Bool)

(assert (=> bm!453533 (= call!453537 (derivationStepZipperDown!1161 (ite c!1029195 (regOne!32159 r!7292) (ite c!1029193 (regTwo!32158 r!7292) (ite c!1029194 (regOne!32158 r!7292) (reg!16152 r!7292)))) (ite (or c!1029195 c!1029193) (Context!10415 Nil!63644) (Context!10415 call!453540)) (h!70094 s!2326)))))

(declare-fun b!5808760 () Bool)

(assert (=> b!5808760 (= e!3565705 e!3565706)))

(assert (=> b!5808760 (= c!1029195 ((_ is Union!15823) r!7292))))

(declare-fun bm!453534 () Bool)

(assert (=> bm!453534 (= call!453540 call!453539)))

(declare-fun b!5808761 () Bool)

(declare-fun c!1029192 () Bool)

(assert (=> b!5808761 (= c!1029192 ((_ is Star!15823) r!7292))))

(declare-fun e!3565709 () (InoxSet Context!10414))

(assert (=> b!5808761 (= e!3565707 e!3565709)))

(declare-fun b!5808762 () Bool)

(assert (=> b!5808762 (= e!3565710 (nullable!5849 (regOne!32158 r!7292)))))

(declare-fun b!5808763 () Bool)

(assert (=> b!5808763 (= e!3565705 (store ((as const (Array Context!10414 Bool)) false) (Context!10415 Nil!63644) true))))

(declare-fun bm!453535 () Bool)

(assert (=> bm!453535 (= call!453539 ($colon$colon!1804 (exprs!5707 (Context!10415 Nil!63644)) (ite (or c!1029193 c!1029194) (regTwo!32158 r!7292) r!7292)))))

(declare-fun b!5808764 () Bool)

(assert (=> b!5808764 (= e!3565707 call!453535)))

(declare-fun b!5808765 () Bool)

(assert (=> b!5808765 (= e!3565709 ((as const (Array Context!10414 Bool)) false))))

(declare-fun b!5808766 () Bool)

(assert (=> b!5808766 (= e!3565708 ((_ map or) call!453536 call!453538))))

(declare-fun b!5808767 () Bool)

(assert (=> b!5808767 (= e!3565709 call!453535)))

(assert (= (and d!1829331 c!1029196) b!5808763))

(assert (= (and d!1829331 (not c!1029196)) b!5808760))

(assert (= (and b!5808760 c!1029195) b!5808757))

(assert (= (and b!5808760 (not c!1029195)) b!5808759))

(assert (= (and b!5808759 res!2449549) b!5808762))

(assert (= (and b!5808759 c!1029193) b!5808766))

(assert (= (and b!5808759 (not c!1029193)) b!5808758))

(assert (= (and b!5808758 c!1029194) b!5808764))

(assert (= (and b!5808758 (not c!1029194)) b!5808761))

(assert (= (and b!5808761 c!1029192) b!5808767))

(assert (= (and b!5808761 (not c!1029192)) b!5808765))

(assert (= (or b!5808764 b!5808767) bm!453534))

(assert (= (or b!5808764 b!5808767) bm!453530))

(assert (= (or b!5808766 bm!453534) bm!453535))

(assert (= (or b!5808766 bm!453530) bm!453532))

(assert (= (or b!5808757 b!5808766) bm!453531))

(assert (= (or b!5808757 bm!453532) bm!453533))

(declare-fun m!6747484 () Bool)

(assert (=> bm!453531 m!6747484))

(declare-fun m!6747486 () Bool)

(assert (=> b!5808763 m!6747486))

(declare-fun m!6747488 () Bool)

(assert (=> bm!453533 m!6747488))

(declare-fun m!6747490 () Bool)

(assert (=> bm!453535 m!6747490))

(declare-fun m!6747492 () Bool)

(assert (=> b!5808762 m!6747492))

(assert (=> b!5808288 d!1829331))

(declare-fun b!5808768 () Bool)

(declare-fun e!3565711 () (InoxSet Context!10414))

(assert (=> b!5808768 (= e!3565711 ((as const (Array Context!10414 Bool)) false))))

(declare-fun b!5808769 () Bool)

(declare-fun e!3565712 () Bool)

(assert (=> b!5808769 (= e!3565712 (nullable!5849 (h!70092 (exprs!5707 (Context!10415 (Cons!63644 r!7292 Nil!63644))))))))

(declare-fun d!1829337 () Bool)

(declare-fun c!1029198 () Bool)

(assert (=> d!1829337 (= c!1029198 e!3565712)))

(declare-fun res!2449550 () Bool)

(assert (=> d!1829337 (=> (not res!2449550) (not e!3565712))))

(assert (=> d!1829337 (= res!2449550 ((_ is Cons!63644) (exprs!5707 (Context!10415 (Cons!63644 r!7292 Nil!63644)))))))

(declare-fun e!3565713 () (InoxSet Context!10414))

(assert (=> d!1829337 (= (derivationStepZipperUp!1087 (Context!10415 (Cons!63644 r!7292 Nil!63644)) (h!70094 s!2326)) e!3565713)))

(declare-fun b!5808770 () Bool)

(declare-fun call!453541 () (InoxSet Context!10414))

(assert (=> b!5808770 (= e!3565711 call!453541)))

(declare-fun bm!453536 () Bool)

(assert (=> bm!453536 (= call!453541 (derivationStepZipperDown!1161 (h!70092 (exprs!5707 (Context!10415 (Cons!63644 r!7292 Nil!63644)))) (Context!10415 (t!377121 (exprs!5707 (Context!10415 (Cons!63644 r!7292 Nil!63644))))) (h!70094 s!2326)))))

(declare-fun b!5808771 () Bool)

(assert (=> b!5808771 (= e!3565713 ((_ map or) call!453541 (derivationStepZipperUp!1087 (Context!10415 (t!377121 (exprs!5707 (Context!10415 (Cons!63644 r!7292 Nil!63644))))) (h!70094 s!2326))))))

(declare-fun b!5808772 () Bool)

(assert (=> b!5808772 (= e!3565713 e!3565711)))

(declare-fun c!1029197 () Bool)

(assert (=> b!5808772 (= c!1029197 ((_ is Cons!63644) (exprs!5707 (Context!10415 (Cons!63644 r!7292 Nil!63644)))))))

(assert (= (and d!1829337 res!2449550) b!5808769))

(assert (= (and d!1829337 c!1029198) b!5808771))

(assert (= (and d!1829337 (not c!1029198)) b!5808772))

(assert (= (and b!5808772 c!1029197) b!5808770))

(assert (= (and b!5808772 (not c!1029197)) b!5808768))

(assert (= (or b!5808771 b!5808770) bm!453536))

(declare-fun m!6747504 () Bool)

(assert (=> b!5808769 m!6747504))

(declare-fun m!6747506 () Bool)

(assert (=> bm!453536 m!6747506))

(declare-fun m!6747508 () Bool)

(assert (=> b!5808771 m!6747508))

(assert (=> b!5808288 d!1829337))

(declare-fun bs!1371296 () Bool)

(declare-fun d!1829343 () Bool)

(assert (= bs!1371296 (and d!1829343 b!5808302)))

(declare-fun lambda!317173 () Int)

(assert (=> bs!1371296 (= lambda!317173 lambda!317126)))

(declare-fun bs!1371297 () Bool)

(assert (= bs!1371297 (and d!1829343 d!1829309)))

(assert (=> bs!1371297 (= lambda!317173 lambda!317170)))

(assert (=> d!1829343 true))

(assert (=> d!1829343 (= (derivationStepZipper!1892 z!1189 (h!70094 s!2326)) (flatMap!1430 z!1189 lambda!317173))))

(declare-fun bs!1371300 () Bool)

(assert (= bs!1371300 d!1829343))

(declare-fun m!6747518 () Bool)

(assert (=> bs!1371300 m!6747518))

(assert (=> b!5808288 d!1829343))

(declare-fun d!1829351 () Bool)

(declare-fun c!1029215 () Bool)

(assert (=> d!1829351 (= c!1029215 (isEmpty!35559 s!2326))))

(declare-fun e!3565740 () Bool)

(assert (=> d!1829351 (= (matchZipper!1951 lt!2299401 s!2326) e!3565740)))

(declare-fun b!5808821 () Bool)

(declare-fun nullableZipper!1732 ((InoxSet Context!10414)) Bool)

(assert (=> b!5808821 (= e!3565740 (nullableZipper!1732 lt!2299401))))

(declare-fun b!5808822 () Bool)

(assert (=> b!5808822 (= e!3565740 (matchZipper!1951 (derivationStepZipper!1892 lt!2299401 (head!12258 s!2326)) (tail!11353 s!2326)))))

(assert (= (and d!1829351 c!1029215) b!5808821))

(assert (= (and d!1829351 (not c!1029215)) b!5808822))

(assert (=> d!1829351 m!6747112))

(declare-fun m!6747582 () Bool)

(assert (=> b!5808821 m!6747582))

(declare-fun m!6747584 () Bool)

(assert (=> b!5808822 m!6747584))

(assert (=> b!5808822 m!6747584))

(declare-fun m!6747586 () Bool)

(assert (=> b!5808822 m!6747586))

(declare-fun m!6747588 () Bool)

(assert (=> b!5808822 m!6747588))

(assert (=> b!5808822 m!6747586))

(assert (=> b!5808822 m!6747588))

(declare-fun m!6747590 () Bool)

(assert (=> b!5808822 m!6747590))

(assert (=> b!5808287 d!1829351))

(declare-fun d!1829375 () Bool)

(declare-fun c!1029216 () Bool)

(assert (=> d!1829375 (= c!1029216 (isEmpty!35559 (t!377123 s!2326)))))

(declare-fun e!3565742 () Bool)

(assert (=> d!1829375 (= (matchZipper!1951 (derivationStepZipper!1892 lt!2299401 (h!70094 s!2326)) (t!377123 s!2326)) e!3565742)))

(declare-fun b!5808824 () Bool)

(assert (=> b!5808824 (= e!3565742 (nullableZipper!1732 (derivationStepZipper!1892 lt!2299401 (h!70094 s!2326))))))

(declare-fun b!5808825 () Bool)

(assert (=> b!5808825 (= e!3565742 (matchZipper!1951 (derivationStepZipper!1892 (derivationStepZipper!1892 lt!2299401 (h!70094 s!2326)) (head!12258 (t!377123 s!2326))) (tail!11353 (t!377123 s!2326))))))

(assert (= (and d!1829375 c!1029216) b!5808824))

(assert (= (and d!1829375 (not c!1029216)) b!5808825))

(declare-fun m!6747594 () Bool)

(assert (=> d!1829375 m!6747594))

(assert (=> b!5808824 m!6747104))

(declare-fun m!6747596 () Bool)

(assert (=> b!5808824 m!6747596))

(declare-fun m!6747598 () Bool)

(assert (=> b!5808825 m!6747598))

(assert (=> b!5808825 m!6747104))

(assert (=> b!5808825 m!6747598))

(declare-fun m!6747600 () Bool)

(assert (=> b!5808825 m!6747600))

(declare-fun m!6747602 () Bool)

(assert (=> b!5808825 m!6747602))

(assert (=> b!5808825 m!6747600))

(assert (=> b!5808825 m!6747602))

(declare-fun m!6747604 () Bool)

(assert (=> b!5808825 m!6747604))

(assert (=> b!5808287 d!1829375))

(declare-fun bs!1371313 () Bool)

(declare-fun d!1829377 () Bool)

(assert (= bs!1371313 (and d!1829377 b!5808302)))

(declare-fun lambda!317175 () Int)

(assert (=> bs!1371313 (= lambda!317175 lambda!317126)))

(declare-fun bs!1371314 () Bool)

(assert (= bs!1371314 (and d!1829377 d!1829309)))

(assert (=> bs!1371314 (= lambda!317175 lambda!317170)))

(declare-fun bs!1371315 () Bool)

(assert (= bs!1371315 (and d!1829377 d!1829343)))

(assert (=> bs!1371315 (= lambda!317175 lambda!317173)))

(assert (=> d!1829377 true))

(assert (=> d!1829377 (= (derivationStepZipper!1892 lt!2299401 (h!70094 s!2326)) (flatMap!1430 lt!2299401 lambda!317175))))

(declare-fun bs!1371316 () Bool)

(assert (= bs!1371316 d!1829377))

(declare-fun m!6747608 () Bool)

(assert (=> bs!1371316 m!6747608))

(assert (=> b!5808287 d!1829377))

(declare-fun b!5808850 () Bool)

(declare-fun e!3565758 () Bool)

(assert (=> b!5808850 (= e!3565758 (matchR!8008 (derivativeStep!4592 (reg!16152 r!7292) (head!12258 (_1!36223 lt!2299410))) (tail!11353 (_1!36223 lt!2299410))))))

(declare-fun b!5808851 () Bool)

(declare-fun e!3565757 () Bool)

(declare-fun e!3565761 () Bool)

(assert (=> b!5808851 (= e!3565757 e!3565761)))

(declare-fun c!1029217 () Bool)

(assert (=> b!5808851 (= c!1029217 ((_ is EmptyLang!15823) (reg!16152 r!7292)))))

(declare-fun b!5808852 () Bool)

(declare-fun res!2449569 () Bool)

(declare-fun e!3565763 () Bool)

(assert (=> b!5808852 (=> (not res!2449569) (not e!3565763))))

(declare-fun call!453552 () Bool)

(assert (=> b!5808852 (= res!2449569 (not call!453552))))

(declare-fun b!5808853 () Bool)

(declare-fun e!3565762 () Bool)

(assert (=> b!5808853 (= e!3565762 (not (= (head!12258 (_1!36223 lt!2299410)) (c!1029053 (reg!16152 r!7292)))))))

(declare-fun b!5808854 () Bool)

(declare-fun e!3565760 () Bool)

(declare-fun e!3565759 () Bool)

(assert (=> b!5808854 (= e!3565760 e!3565759)))

(declare-fun res!2449567 () Bool)

(assert (=> b!5808854 (=> (not res!2449567) (not e!3565759))))

(declare-fun lt!2299487 () Bool)

(assert (=> b!5808854 (= res!2449567 (not lt!2299487))))

(declare-fun b!5808855 () Bool)

(assert (=> b!5808855 (= e!3565759 e!3565762)))

(declare-fun res!2449563 () Bool)

(assert (=> b!5808855 (=> res!2449563 e!3565762)))

(assert (=> b!5808855 (= res!2449563 call!453552)))

(declare-fun b!5808856 () Bool)

(assert (=> b!5808856 (= e!3565757 (= lt!2299487 call!453552))))

(declare-fun bm!453547 () Bool)

(assert (=> bm!453547 (= call!453552 (isEmpty!35559 (_1!36223 lt!2299410)))))

(declare-fun b!5808857 () Bool)

(assert (=> b!5808857 (= e!3565758 (nullable!5849 (reg!16152 r!7292)))))

(declare-fun b!5808858 () Bool)

(declare-fun res!2449566 () Bool)

(assert (=> b!5808858 (=> (not res!2449566) (not e!3565763))))

(assert (=> b!5808858 (= res!2449566 (isEmpty!35559 (tail!11353 (_1!36223 lt!2299410))))))

(declare-fun b!5808859 () Bool)

(declare-fun res!2449568 () Bool)

(assert (=> b!5808859 (=> res!2449568 e!3565762)))

(assert (=> b!5808859 (= res!2449568 (not (isEmpty!35559 (tail!11353 (_1!36223 lt!2299410)))))))

(declare-fun b!5808860 () Bool)

(declare-fun res!2449570 () Bool)

(assert (=> b!5808860 (=> res!2449570 e!3565760)))

(assert (=> b!5808860 (= res!2449570 e!3565763)))

(declare-fun res!2449564 () Bool)

(assert (=> b!5808860 (=> (not res!2449564) (not e!3565763))))

(assert (=> b!5808860 (= res!2449564 lt!2299487)))

(declare-fun d!1829379 () Bool)

(assert (=> d!1829379 e!3565757))

(declare-fun c!1029219 () Bool)

(assert (=> d!1829379 (= c!1029219 ((_ is EmptyExpr!15823) (reg!16152 r!7292)))))

(assert (=> d!1829379 (= lt!2299487 e!3565758)))

(declare-fun c!1029218 () Bool)

(assert (=> d!1829379 (= c!1029218 (isEmpty!35559 (_1!36223 lt!2299410)))))

(assert (=> d!1829379 (validRegex!7559 (reg!16152 r!7292))))

(assert (=> d!1829379 (= (matchR!8008 (reg!16152 r!7292) (_1!36223 lt!2299410)) lt!2299487)))

(declare-fun b!5808861 () Bool)

(assert (=> b!5808861 (= e!3565761 (not lt!2299487))))

(declare-fun b!5808862 () Bool)

(assert (=> b!5808862 (= e!3565763 (= (head!12258 (_1!36223 lt!2299410)) (c!1029053 (reg!16152 r!7292))))))

(declare-fun b!5808863 () Bool)

(declare-fun res!2449565 () Bool)

(assert (=> b!5808863 (=> res!2449565 e!3565760)))

(assert (=> b!5808863 (= res!2449565 (not ((_ is ElementMatch!15823) (reg!16152 r!7292))))))

(assert (=> b!5808863 (= e!3565761 e!3565760)))

(assert (= (and d!1829379 c!1029218) b!5808857))

(assert (= (and d!1829379 (not c!1029218)) b!5808850))

(assert (= (and d!1829379 c!1029219) b!5808856))

(assert (= (and d!1829379 (not c!1029219)) b!5808851))

(assert (= (and b!5808851 c!1029217) b!5808861))

(assert (= (and b!5808851 (not c!1029217)) b!5808863))

(assert (= (and b!5808863 (not res!2449565)) b!5808860))

(assert (= (and b!5808860 res!2449564) b!5808852))

(assert (= (and b!5808852 res!2449569) b!5808858))

(assert (= (and b!5808858 res!2449566) b!5808862))

(assert (= (and b!5808860 (not res!2449570)) b!5808854))

(assert (= (and b!5808854 res!2449567) b!5808855))

(assert (= (and b!5808855 (not res!2449563)) b!5808859))

(assert (= (and b!5808859 (not res!2449568)) b!5808853))

(assert (= (or b!5808856 b!5808852 b!5808855) bm!453547))

(declare-fun m!6747610 () Bool)

(assert (=> b!5808859 m!6747610))

(assert (=> b!5808859 m!6747610))

(declare-fun m!6747612 () Bool)

(assert (=> b!5808859 m!6747612))

(declare-fun m!6747614 () Bool)

(assert (=> b!5808857 m!6747614))

(declare-fun m!6747616 () Bool)

(assert (=> b!5808850 m!6747616))

(assert (=> b!5808850 m!6747616))

(declare-fun m!6747618 () Bool)

(assert (=> b!5808850 m!6747618))

(assert (=> b!5808850 m!6747610))

(assert (=> b!5808850 m!6747618))

(assert (=> b!5808850 m!6747610))

(declare-fun m!6747620 () Bool)

(assert (=> b!5808850 m!6747620))

(assert (=> b!5808853 m!6747616))

(declare-fun m!6747622 () Bool)

(assert (=> bm!453547 m!6747622))

(assert (=> b!5808862 m!6747616))

(assert (=> d!1829379 m!6747622))

(declare-fun m!6747624 () Bool)

(assert (=> d!1829379 m!6747624))

(assert (=> b!5808858 m!6747610))

(assert (=> b!5808858 m!6747610))

(assert (=> b!5808858 m!6747612))

(assert (=> b!5808280 d!1829379))

(declare-fun b!5808907 () Bool)

(declare-fun e!3565784 () Bool)

(declare-fun e!3565786 () Bool)

(assert (=> b!5808907 (= e!3565784 e!3565786)))

(declare-fun res!2449584 () Bool)

(assert (=> b!5808907 (= res!2449584 (not (nullable!5849 (reg!16152 r!7292))))))

(assert (=> b!5808907 (=> (not res!2449584) (not e!3565786))))

(declare-fun b!5808908 () Bool)

(declare-fun e!3565788 () Bool)

(assert (=> b!5808908 (= e!3565784 e!3565788)))

(declare-fun c!1029224 () Bool)

(assert (=> b!5808908 (= c!1029224 ((_ is Union!15823) r!7292))))

(declare-fun b!5808909 () Bool)

(declare-fun e!3565789 () Bool)

(assert (=> b!5808909 (= e!3565789 e!3565784)))

(declare-fun c!1029225 () Bool)

(assert (=> b!5808909 (= c!1029225 ((_ is Star!15823) r!7292))))

(declare-fun bm!453554 () Bool)

(declare-fun call!453560 () Bool)

(assert (=> bm!453554 (= call!453560 (validRegex!7559 (ite c!1029224 (regTwo!32159 r!7292) (regTwo!32158 r!7292))))))

(declare-fun b!5808910 () Bool)

(declare-fun e!3565785 () Bool)

(assert (=> b!5808910 (= e!3565785 call!453560)))

(declare-fun bm!453555 () Bool)

(declare-fun call!453561 () Bool)

(declare-fun call!453559 () Bool)

(assert (=> bm!453555 (= call!453561 call!453559)))

(declare-fun b!5808911 () Bool)

(declare-fun e!3565790 () Bool)

(assert (=> b!5808911 (= e!3565790 call!453560)))

(declare-fun bm!453556 () Bool)

(assert (=> bm!453556 (= call!453559 (validRegex!7559 (ite c!1029225 (reg!16152 r!7292) (ite c!1029224 (regOne!32159 r!7292) (regOne!32158 r!7292)))))))

(declare-fun b!5808912 () Bool)

(declare-fun res!2449583 () Bool)

(assert (=> b!5808912 (=> (not res!2449583) (not e!3565785))))

(assert (=> b!5808912 (= res!2449583 call!453561)))

(assert (=> b!5808912 (= e!3565788 e!3565785)))

(declare-fun b!5808913 () Bool)

(declare-fun res!2449581 () Bool)

(declare-fun e!3565787 () Bool)

(assert (=> b!5808913 (=> res!2449581 e!3565787)))

(assert (=> b!5808913 (= res!2449581 (not ((_ is Concat!24668) r!7292)))))

(assert (=> b!5808913 (= e!3565788 e!3565787)))

(declare-fun b!5808914 () Bool)

(assert (=> b!5808914 (= e!3565786 call!453559)))

(declare-fun b!5808915 () Bool)

(assert (=> b!5808915 (= e!3565787 e!3565790)))

(declare-fun res!2449582 () Bool)

(assert (=> b!5808915 (=> (not res!2449582) (not e!3565790))))

(assert (=> b!5808915 (= res!2449582 call!453561)))

(declare-fun d!1829381 () Bool)

(declare-fun res!2449585 () Bool)

(assert (=> d!1829381 (=> res!2449585 e!3565789)))

(assert (=> d!1829381 (= res!2449585 ((_ is ElementMatch!15823) r!7292))))

(assert (=> d!1829381 (= (validRegex!7559 r!7292) e!3565789)))

(assert (= (and d!1829381 (not res!2449585)) b!5808909))

(assert (= (and b!5808909 c!1029225) b!5808907))

(assert (= (and b!5808909 (not c!1029225)) b!5808908))

(assert (= (and b!5808907 res!2449584) b!5808914))

(assert (= (and b!5808908 c!1029224) b!5808912))

(assert (= (and b!5808908 (not c!1029224)) b!5808913))

(assert (= (and b!5808912 res!2449583) b!5808910))

(assert (= (and b!5808913 (not res!2449581)) b!5808915))

(assert (= (and b!5808915 res!2449582) b!5808911))

(assert (= (or b!5808910 b!5808911) bm!453554))

(assert (= (or b!5808912 b!5808915) bm!453555))

(assert (= (or b!5808914 bm!453555) bm!453556))

(assert (=> b!5808907 m!6747614))

(declare-fun m!6747626 () Bool)

(assert (=> bm!453554 m!6747626))

(declare-fun m!6747628 () Bool)

(assert (=> bm!453556 m!6747628))

(assert (=> start!595152 d!1829381))

(declare-fun bs!1371321 () Bool)

(declare-fun d!1829391 () Bool)

(assert (= bs!1371321 (and d!1829391 d!1829275)))

(declare-fun lambda!317176 () Int)

(assert (=> bs!1371321 (= lambda!317176 lambda!317162)))

(assert (=> d!1829391 (= (inv!82804 setElem!39098) (forall!14931 (exprs!5707 setElem!39098) lambda!317176))))

(declare-fun bs!1371322 () Bool)

(assert (= bs!1371322 d!1829391))

(declare-fun m!6747630 () Bool)

(assert (=> bs!1371322 m!6747630))

(assert (=> setNonEmpty!39098 d!1829391))

(declare-fun bs!1371323 () Bool)

(declare-fun d!1829393 () Bool)

(assert (= bs!1371323 (and d!1829393 d!1829275)))

(declare-fun lambda!317179 () Int)

(assert (=> bs!1371323 (= lambda!317179 lambda!317162)))

(declare-fun bs!1371324 () Bool)

(assert (= bs!1371324 (and d!1829393 d!1829391)))

(assert (=> bs!1371324 (= lambda!317179 lambda!317176)))

(declare-fun b!5808937 () Bool)

(declare-fun e!3565807 () Bool)

(declare-fun isEmpty!35563 (List!63768) Bool)

(assert (=> b!5808937 (= e!3565807 (isEmpty!35563 (t!377121 (exprs!5707 (h!70093 zl!343)))))))

(declare-fun b!5808938 () Bool)

(declare-fun e!3565805 () Regex!15823)

(assert (=> b!5808938 (= e!3565805 (h!70092 (exprs!5707 (h!70093 zl!343))))))

(declare-fun b!5808939 () Bool)

(declare-fun e!3565803 () Bool)

(declare-fun lt!2299490 () Regex!15823)

(declare-fun isConcat!820 (Regex!15823) Bool)

(assert (=> b!5808939 (= e!3565803 (isConcat!820 lt!2299490))))

(declare-fun b!5808940 () Bool)

(declare-fun e!3565808 () Regex!15823)

(assert (=> b!5808940 (= e!3565805 e!3565808)))

(declare-fun c!1029236 () Bool)

(assert (=> b!5808940 (= c!1029236 ((_ is Cons!63644) (exprs!5707 (h!70093 zl!343))))))

(declare-fun b!5808941 () Bool)

(declare-fun e!3565806 () Bool)

(assert (=> b!5808941 (= e!3565806 e!3565803)))

(declare-fun c!1029237 () Bool)

(declare-fun tail!11354 (List!63768) List!63768)

(assert (=> b!5808941 (= c!1029237 (isEmpty!35563 (tail!11354 (exprs!5707 (h!70093 zl!343)))))))

(declare-fun b!5808936 () Bool)

(assert (=> b!5808936 (= e!3565808 EmptyExpr!15823)))

(declare-fun e!3565804 () Bool)

(assert (=> d!1829393 e!3565804))

(declare-fun res!2449590 () Bool)

(assert (=> d!1829393 (=> (not res!2449590) (not e!3565804))))

(assert (=> d!1829393 (= res!2449590 (validRegex!7559 lt!2299490))))

(assert (=> d!1829393 (= lt!2299490 e!3565805)))

(declare-fun c!1029235 () Bool)

(assert (=> d!1829393 (= c!1029235 e!3565807)))

(declare-fun res!2449591 () Bool)

(assert (=> d!1829393 (=> (not res!2449591) (not e!3565807))))

(assert (=> d!1829393 (= res!2449591 ((_ is Cons!63644) (exprs!5707 (h!70093 zl!343))))))

(assert (=> d!1829393 (forall!14931 (exprs!5707 (h!70093 zl!343)) lambda!317179)))

(assert (=> d!1829393 (= (generalisedConcat!1438 (exprs!5707 (h!70093 zl!343))) lt!2299490)))

(declare-fun b!5808942 () Bool)

(declare-fun isEmptyExpr!1297 (Regex!15823) Bool)

(assert (=> b!5808942 (= e!3565806 (isEmptyExpr!1297 lt!2299490))))

(declare-fun b!5808943 () Bool)

(assert (=> b!5808943 (= e!3565804 e!3565806)))

(declare-fun c!1029234 () Bool)

(assert (=> b!5808943 (= c!1029234 (isEmpty!35563 (exprs!5707 (h!70093 zl!343))))))

(declare-fun b!5808944 () Bool)

(assert (=> b!5808944 (= e!3565808 (Concat!24668 (h!70092 (exprs!5707 (h!70093 zl!343))) (generalisedConcat!1438 (t!377121 (exprs!5707 (h!70093 zl!343))))))))

(declare-fun b!5808945 () Bool)

(declare-fun head!12259 (List!63768) Regex!15823)

(assert (=> b!5808945 (= e!3565803 (= lt!2299490 (head!12259 (exprs!5707 (h!70093 zl!343)))))))

(assert (= (and d!1829393 res!2449591) b!5808937))

(assert (= (and d!1829393 c!1029235) b!5808938))

(assert (= (and d!1829393 (not c!1029235)) b!5808940))

(assert (= (and b!5808940 c!1029236) b!5808944))

(assert (= (and b!5808940 (not c!1029236)) b!5808936))

(assert (= (and d!1829393 res!2449590) b!5808943))

(assert (= (and b!5808943 c!1029234) b!5808942))

(assert (= (and b!5808943 (not c!1029234)) b!5808941))

(assert (= (and b!5808941 c!1029237) b!5808945))

(assert (= (and b!5808941 (not c!1029237)) b!5808939))

(declare-fun m!6747632 () Bool)

(assert (=> b!5808937 m!6747632))

(declare-fun m!6747634 () Bool)

(assert (=> b!5808945 m!6747634))

(declare-fun m!6747636 () Bool)

(assert (=> b!5808943 m!6747636))

(declare-fun m!6747638 () Bool)

(assert (=> b!5808942 m!6747638))

(declare-fun m!6747640 () Bool)

(assert (=> b!5808941 m!6747640))

(assert (=> b!5808941 m!6747640))

(declare-fun m!6747642 () Bool)

(assert (=> b!5808941 m!6747642))

(declare-fun m!6747644 () Bool)

(assert (=> b!5808939 m!6747644))

(declare-fun m!6747646 () Bool)

(assert (=> b!5808944 m!6747646))

(declare-fun m!6747648 () Bool)

(assert (=> d!1829393 m!6747648))

(declare-fun m!6747650 () Bool)

(assert (=> d!1829393 m!6747650))

(assert (=> b!5808303 d!1829393))

(declare-fun d!1829395 () Bool)

(assert (=> d!1829395 (= (flatMap!1430 z!1189 lambda!317126) (choose!44097 z!1189 lambda!317126))))

(declare-fun bs!1371325 () Bool)

(assert (= bs!1371325 d!1829395))

(declare-fun m!6747652 () Bool)

(assert (=> bs!1371325 m!6747652))

(assert (=> b!5808302 d!1829395))

(declare-fun b!5808946 () Bool)

(declare-fun e!3565809 () (InoxSet Context!10414))

(assert (=> b!5808946 (= e!3565809 ((as const (Array Context!10414 Bool)) false))))

(declare-fun b!5808947 () Bool)

(declare-fun e!3565810 () Bool)

(assert (=> b!5808947 (= e!3565810 (nullable!5849 (h!70092 (exprs!5707 (h!70093 zl!343)))))))

(declare-fun d!1829397 () Bool)

(declare-fun c!1029239 () Bool)

(assert (=> d!1829397 (= c!1029239 e!3565810)))

(declare-fun res!2449592 () Bool)

(assert (=> d!1829397 (=> (not res!2449592) (not e!3565810))))

(assert (=> d!1829397 (= res!2449592 ((_ is Cons!63644) (exprs!5707 (h!70093 zl!343))))))

(declare-fun e!3565811 () (InoxSet Context!10414))

(assert (=> d!1829397 (= (derivationStepZipperUp!1087 (h!70093 zl!343) (h!70094 s!2326)) e!3565811)))

(declare-fun b!5808948 () Bool)

(declare-fun call!453562 () (InoxSet Context!10414))

(assert (=> b!5808948 (= e!3565809 call!453562)))

(declare-fun bm!453557 () Bool)

(assert (=> bm!453557 (= call!453562 (derivationStepZipperDown!1161 (h!70092 (exprs!5707 (h!70093 zl!343))) (Context!10415 (t!377121 (exprs!5707 (h!70093 zl!343)))) (h!70094 s!2326)))))

(declare-fun b!5808949 () Bool)

(assert (=> b!5808949 (= e!3565811 ((_ map or) call!453562 (derivationStepZipperUp!1087 (Context!10415 (t!377121 (exprs!5707 (h!70093 zl!343)))) (h!70094 s!2326))))))

(declare-fun b!5808950 () Bool)

(assert (=> b!5808950 (= e!3565811 e!3565809)))

(declare-fun c!1029238 () Bool)

(assert (=> b!5808950 (= c!1029238 ((_ is Cons!63644) (exprs!5707 (h!70093 zl!343))))))

(assert (= (and d!1829397 res!2449592) b!5808947))

(assert (= (and d!1829397 c!1029239) b!5808949))

(assert (= (and d!1829397 (not c!1029239)) b!5808950))

(assert (= (and b!5808950 c!1029238) b!5808948))

(assert (= (and b!5808950 (not c!1029238)) b!5808946))

(assert (= (or b!5808949 b!5808948) bm!453557))

(declare-fun m!6747654 () Bool)

(assert (=> b!5808947 m!6747654))

(declare-fun m!6747656 () Bool)

(assert (=> bm!453557 m!6747656))

(declare-fun m!6747658 () Bool)

(assert (=> b!5808949 m!6747658))

(assert (=> b!5808302 d!1829397))

(declare-fun d!1829399 () Bool)

(assert (=> d!1829399 (= (flatMap!1430 z!1189 lambda!317126) (dynLambda!24917 lambda!317126 (h!70093 zl!343)))))

(declare-fun lt!2299491 () Unit!156906)

(assert (=> d!1829399 (= lt!2299491 (choose!44098 z!1189 (h!70093 zl!343) lambda!317126))))

(assert (=> d!1829399 (= z!1189 (store ((as const (Array Context!10414 Bool)) false) (h!70093 zl!343) true))))

(assert (=> d!1829399 (= (lemmaFlatMapOnSingletonSet!962 z!1189 (h!70093 zl!343) lambda!317126) lt!2299491)))

(declare-fun b_lambda!218971 () Bool)

(assert (=> (not b_lambda!218971) (not d!1829399)))

(declare-fun bs!1371326 () Bool)

(assert (= bs!1371326 d!1829399))

(assert (=> bs!1371326 m!6747078))

(declare-fun m!6747660 () Bool)

(assert (=> bs!1371326 m!6747660))

(declare-fun m!6747662 () Bool)

(assert (=> bs!1371326 m!6747662))

(declare-fun m!6747664 () Bool)

(assert (=> bs!1371326 m!6747664))

(assert (=> b!5808302 d!1829399))

(declare-fun bs!1371327 () Bool)

(declare-fun d!1829401 () Bool)

(assert (= bs!1371327 (and d!1829401 d!1829275)))

(declare-fun lambda!317182 () Int)

(assert (=> bs!1371327 (= lambda!317182 lambda!317162)))

(declare-fun bs!1371328 () Bool)

(assert (= bs!1371328 (and d!1829401 d!1829391)))

(assert (=> bs!1371328 (= lambda!317182 lambda!317176)))

(declare-fun bs!1371329 () Bool)

(assert (= bs!1371329 (and d!1829401 d!1829393)))

(assert (=> bs!1371329 (= lambda!317182 lambda!317179)))

(declare-fun b!5808971 () Bool)

(declare-fun e!3565826 () Regex!15823)

(assert (=> b!5808971 (= e!3565826 (h!70092 (unfocusZipperList!1251 zl!343)))))

(declare-fun b!5808972 () Bool)

(declare-fun e!3565827 () Bool)

(declare-fun lt!2299494 () Regex!15823)

(declare-fun isEmptyLang!1306 (Regex!15823) Bool)

(assert (=> b!5808972 (= e!3565827 (isEmptyLang!1306 lt!2299494))))

(declare-fun b!5808973 () Bool)

(declare-fun e!3565829 () Regex!15823)

(assert (=> b!5808973 (= e!3565829 EmptyLang!15823)))

(declare-fun e!3565824 () Bool)

(assert (=> d!1829401 e!3565824))

(declare-fun res!2449597 () Bool)

(assert (=> d!1829401 (=> (not res!2449597) (not e!3565824))))

(assert (=> d!1829401 (= res!2449597 (validRegex!7559 lt!2299494))))

(assert (=> d!1829401 (= lt!2299494 e!3565826)))

(declare-fun c!1029250 () Bool)

(declare-fun e!3565828 () Bool)

(assert (=> d!1829401 (= c!1029250 e!3565828)))

(declare-fun res!2449598 () Bool)

(assert (=> d!1829401 (=> (not res!2449598) (not e!3565828))))

(assert (=> d!1829401 (= res!2449598 ((_ is Cons!63644) (unfocusZipperList!1251 zl!343)))))

(assert (=> d!1829401 (forall!14931 (unfocusZipperList!1251 zl!343) lambda!317182)))

(assert (=> d!1829401 (= (generalisedUnion!1686 (unfocusZipperList!1251 zl!343)) lt!2299494)))

(declare-fun b!5808974 () Bool)

(declare-fun e!3565825 () Bool)

(declare-fun isUnion!736 (Regex!15823) Bool)

(assert (=> b!5808974 (= e!3565825 (isUnion!736 lt!2299494))))

(declare-fun b!5808975 () Bool)

(assert (=> b!5808975 (= e!3565828 (isEmpty!35563 (t!377121 (unfocusZipperList!1251 zl!343))))))

(declare-fun b!5808976 () Bool)

(assert (=> b!5808976 (= e!3565826 e!3565829)))

(declare-fun c!1029248 () Bool)

(assert (=> b!5808976 (= c!1029248 ((_ is Cons!63644) (unfocusZipperList!1251 zl!343)))))

(declare-fun b!5808977 () Bool)

(assert (=> b!5808977 (= e!3565829 (Union!15823 (h!70092 (unfocusZipperList!1251 zl!343)) (generalisedUnion!1686 (t!377121 (unfocusZipperList!1251 zl!343)))))))

(declare-fun b!5808978 () Bool)

(assert (=> b!5808978 (= e!3565825 (= lt!2299494 (head!12259 (unfocusZipperList!1251 zl!343))))))

(declare-fun b!5808979 () Bool)

(assert (=> b!5808979 (= e!3565824 e!3565827)))

(declare-fun c!1029251 () Bool)

(assert (=> b!5808979 (= c!1029251 (isEmpty!35563 (unfocusZipperList!1251 zl!343)))))

(declare-fun b!5808980 () Bool)

(assert (=> b!5808980 (= e!3565827 e!3565825)))

(declare-fun c!1029249 () Bool)

(assert (=> b!5808980 (= c!1029249 (isEmpty!35563 (tail!11354 (unfocusZipperList!1251 zl!343))))))

(assert (= (and d!1829401 res!2449598) b!5808975))

(assert (= (and d!1829401 c!1029250) b!5808971))

(assert (= (and d!1829401 (not c!1029250)) b!5808976))

(assert (= (and b!5808976 c!1029248) b!5808977))

(assert (= (and b!5808976 (not c!1029248)) b!5808973))

(assert (= (and d!1829401 res!2449597) b!5808979))

(assert (= (and b!5808979 c!1029251) b!5808972))

(assert (= (and b!5808979 (not c!1029251)) b!5808980))

(assert (= (and b!5808980 c!1029249) b!5808978))

(assert (= (and b!5808980 (not c!1029249)) b!5808974))

(declare-fun m!6747666 () Bool)

(assert (=> b!5808977 m!6747666))

(declare-fun m!6747668 () Bool)

(assert (=> d!1829401 m!6747668))

(assert (=> d!1829401 m!6747174))

(declare-fun m!6747670 () Bool)

(assert (=> d!1829401 m!6747670))

(assert (=> b!5808978 m!6747174))

(declare-fun m!6747672 () Bool)

(assert (=> b!5808978 m!6747672))

(assert (=> b!5808980 m!6747174))

(declare-fun m!6747674 () Bool)

(assert (=> b!5808980 m!6747674))

(assert (=> b!5808980 m!6747674))

(declare-fun m!6747676 () Bool)

(assert (=> b!5808980 m!6747676))

(declare-fun m!6747678 () Bool)

(assert (=> b!5808974 m!6747678))

(declare-fun m!6747680 () Bool)

(assert (=> b!5808975 m!6747680))

(assert (=> b!5808979 m!6747174))

(declare-fun m!6747682 () Bool)

(assert (=> b!5808979 m!6747682))

(declare-fun m!6747684 () Bool)

(assert (=> b!5808972 m!6747684))

(assert (=> b!5808295 d!1829401))

(declare-fun bs!1371330 () Bool)

(declare-fun d!1829403 () Bool)

(assert (= bs!1371330 (and d!1829403 d!1829275)))

(declare-fun lambda!317185 () Int)

(assert (=> bs!1371330 (= lambda!317185 lambda!317162)))

(declare-fun bs!1371331 () Bool)

(assert (= bs!1371331 (and d!1829403 d!1829391)))

(assert (=> bs!1371331 (= lambda!317185 lambda!317176)))

(declare-fun bs!1371332 () Bool)

(assert (= bs!1371332 (and d!1829403 d!1829393)))

(assert (=> bs!1371332 (= lambda!317185 lambda!317179)))

(declare-fun bs!1371333 () Bool)

(assert (= bs!1371333 (and d!1829403 d!1829401)))

(assert (=> bs!1371333 (= lambda!317185 lambda!317182)))

(declare-fun lt!2299497 () List!63768)

(assert (=> d!1829403 (forall!14931 lt!2299497 lambda!317185)))

(declare-fun e!3565832 () List!63768)

(assert (=> d!1829403 (= lt!2299497 e!3565832)))

(declare-fun c!1029254 () Bool)

(assert (=> d!1829403 (= c!1029254 ((_ is Cons!63645) zl!343))))

(assert (=> d!1829403 (= (unfocusZipperList!1251 zl!343) lt!2299497)))

(declare-fun b!5808985 () Bool)

(assert (=> b!5808985 (= e!3565832 (Cons!63644 (generalisedConcat!1438 (exprs!5707 (h!70093 zl!343))) (unfocusZipperList!1251 (t!377122 zl!343))))))

(declare-fun b!5808986 () Bool)

(assert (=> b!5808986 (= e!3565832 Nil!63644)))

(assert (= (and d!1829403 c!1029254) b!5808985))

(assert (= (and d!1829403 (not c!1029254)) b!5808986))

(declare-fun m!6747686 () Bool)

(assert (=> d!1829403 m!6747686))

(assert (=> b!5808985 m!6747128))

(declare-fun m!6747688 () Bool)

(assert (=> b!5808985 m!6747688))

(assert (=> b!5808295 d!1829403))

(declare-fun d!1829405 () Bool)

(declare-fun e!3565835 () Bool)

(assert (=> d!1829405 e!3565835))

(declare-fun res!2449601 () Bool)

(assert (=> d!1829405 (=> (not res!2449601) (not e!3565835))))

(declare-fun lt!2299500 () List!63769)

(declare-fun noDuplicate!1718 (List!63769) Bool)

(assert (=> d!1829405 (= res!2449601 (noDuplicate!1718 lt!2299500))))

(declare-fun choose!44102 ((InoxSet Context!10414)) List!63769)

(assert (=> d!1829405 (= lt!2299500 (choose!44102 z!1189))))

(assert (=> d!1829405 (= (toList!9607 z!1189) lt!2299500)))

(declare-fun b!5808989 () Bool)

(declare-fun content!11659 (List!63769) (InoxSet Context!10414))

(assert (=> b!5808989 (= e!3565835 (= (content!11659 lt!2299500) z!1189))))

(assert (= (and d!1829405 res!2449601) b!5808989))

(declare-fun m!6747690 () Bool)

(assert (=> d!1829405 m!6747690))

(declare-fun m!6747692 () Bool)

(assert (=> d!1829405 m!6747692))

(declare-fun m!6747694 () Bool)

(assert (=> b!5808989 m!6747694))

(assert (=> b!5808275 d!1829405))

(assert (=> b!5808294 d!1829277))

(declare-fun bs!1371334 () Bool)

(declare-fun b!5809026 () Bool)

(assert (= bs!1371334 (and b!5809026 b!5808298)))

(declare-fun lambda!317190 () Int)

(assert (=> bs!1371334 (not (= lambda!317190 lambda!317123))))

(assert (=> bs!1371334 (= lambda!317190 lambda!317124)))

(assert (=> bs!1371334 (not (= lambda!317190 lambda!317125))))

(assert (=> b!5809026 true))

(assert (=> b!5809026 true))

(declare-fun bs!1371335 () Bool)

(declare-fun b!5809031 () Bool)

(assert (= bs!1371335 (and b!5809031 b!5808298)))

(declare-fun lambda!317191 () Int)

(assert (=> bs!1371335 (not (= lambda!317191 lambda!317123))))

(assert (=> bs!1371335 (not (= lambda!317191 lambda!317124))))

(assert (=> bs!1371335 (= (and (= (regOne!32158 r!7292) (reg!16152 r!7292)) (= (regTwo!32158 r!7292) r!7292)) (= lambda!317191 lambda!317125))))

(declare-fun bs!1371336 () Bool)

(assert (= bs!1371336 (and b!5809031 b!5809026)))

(assert (=> bs!1371336 (not (= lambda!317191 lambda!317190))))

(assert (=> b!5809031 true))

(assert (=> b!5809031 true))

(declare-fun b!5809022 () Bool)

(declare-fun res!2449619 () Bool)

(declare-fun e!3565855 () Bool)

(assert (=> b!5809022 (=> res!2449619 e!3565855)))

(declare-fun call!453567 () Bool)

(assert (=> b!5809022 (= res!2449619 call!453567)))

(declare-fun e!3565856 () Bool)

(assert (=> b!5809022 (= e!3565856 e!3565855)))

(declare-fun b!5809023 () Bool)

(declare-fun e!3565854 () Bool)

(declare-fun e!3565860 () Bool)

(assert (=> b!5809023 (= e!3565854 e!3565860)))

(declare-fun res!2449618 () Bool)

(assert (=> b!5809023 (= res!2449618 (not ((_ is EmptyLang!15823) r!7292)))))

(assert (=> b!5809023 (=> (not res!2449618) (not e!3565860))))

(declare-fun d!1829407 () Bool)

(declare-fun c!1029263 () Bool)

(assert (=> d!1829407 (= c!1029263 ((_ is EmptyExpr!15823) r!7292))))

(assert (=> d!1829407 (= (matchRSpec!2926 r!7292 s!2326) e!3565854)))

(declare-fun bm!453562 () Bool)

(assert (=> bm!453562 (= call!453567 (isEmpty!35559 s!2326))))

(declare-fun b!5809024 () Bool)

(assert (=> b!5809024 (= e!3565854 call!453567)))

(declare-fun b!5809025 () Bool)

(declare-fun e!3565858 () Bool)

(assert (=> b!5809025 (= e!3565858 (matchRSpec!2926 (regTwo!32159 r!7292) s!2326))))

(declare-fun call!453568 () Bool)

(assert (=> b!5809026 (= e!3565855 call!453568)))

(declare-fun b!5809027 () Bool)

(declare-fun c!1029266 () Bool)

(assert (=> b!5809027 (= c!1029266 ((_ is ElementMatch!15823) r!7292))))

(declare-fun e!3565857 () Bool)

(assert (=> b!5809027 (= e!3565860 e!3565857)))

(declare-fun bm!453563 () Bool)

(declare-fun c!1029265 () Bool)

(assert (=> bm!453563 (= call!453568 (Exists!2923 (ite c!1029265 lambda!317190 lambda!317191)))))

(declare-fun b!5809028 () Bool)

(declare-fun c!1029264 () Bool)

(assert (=> b!5809028 (= c!1029264 ((_ is Union!15823) r!7292))))

(declare-fun e!3565859 () Bool)

(assert (=> b!5809028 (= e!3565857 e!3565859)))

(declare-fun b!5809029 () Bool)

(assert (=> b!5809029 (= e!3565859 e!3565856)))

(assert (=> b!5809029 (= c!1029265 ((_ is Star!15823) r!7292))))

(declare-fun b!5809030 () Bool)

(assert (=> b!5809030 (= e!3565859 e!3565858)))

(declare-fun res!2449620 () Bool)

(assert (=> b!5809030 (= res!2449620 (matchRSpec!2926 (regOne!32159 r!7292) s!2326))))

(assert (=> b!5809030 (=> res!2449620 e!3565858)))

(assert (=> b!5809031 (= e!3565856 call!453568)))

(declare-fun b!5809032 () Bool)

(assert (=> b!5809032 (= e!3565857 (= s!2326 (Cons!63646 (c!1029053 r!7292) Nil!63646)))))

(assert (= (and d!1829407 c!1029263) b!5809024))

(assert (= (and d!1829407 (not c!1029263)) b!5809023))

(assert (= (and b!5809023 res!2449618) b!5809027))

(assert (= (and b!5809027 c!1029266) b!5809032))

(assert (= (and b!5809027 (not c!1029266)) b!5809028))

(assert (= (and b!5809028 c!1029264) b!5809030))

(assert (= (and b!5809028 (not c!1029264)) b!5809029))

(assert (= (and b!5809030 (not res!2449620)) b!5809025))

(assert (= (and b!5809029 c!1029265) b!5809022))

(assert (= (and b!5809029 (not c!1029265)) b!5809031))

(assert (= (and b!5809022 (not res!2449619)) b!5809026))

(assert (= (or b!5809026 b!5809031) bm!453563))

(assert (= (or b!5809024 b!5809022) bm!453562))

(assert (=> bm!453562 m!6747112))

(declare-fun m!6747696 () Bool)

(assert (=> b!5809025 m!6747696))

(declare-fun m!6747698 () Bool)

(assert (=> bm!453563 m!6747698))

(declare-fun m!6747700 () Bool)

(assert (=> b!5809030 m!6747700))

(assert (=> b!5808274 d!1829407))

(declare-fun b!5809033 () Bool)

(declare-fun e!3565862 () Bool)

(assert (=> b!5809033 (= e!3565862 (matchR!8008 (derivativeStep!4592 r!7292 (head!12258 s!2326)) (tail!11353 s!2326)))))

(declare-fun b!5809034 () Bool)

(declare-fun e!3565861 () Bool)

(declare-fun e!3565865 () Bool)

(assert (=> b!5809034 (= e!3565861 e!3565865)))

(declare-fun c!1029267 () Bool)

(assert (=> b!5809034 (= c!1029267 ((_ is EmptyLang!15823) r!7292))))

(declare-fun b!5809035 () Bool)

(declare-fun res!2449627 () Bool)

(declare-fun e!3565867 () Bool)

(assert (=> b!5809035 (=> (not res!2449627) (not e!3565867))))

(declare-fun call!453569 () Bool)

(assert (=> b!5809035 (= res!2449627 (not call!453569))))

(declare-fun b!5809036 () Bool)

(declare-fun e!3565866 () Bool)

(assert (=> b!5809036 (= e!3565866 (not (= (head!12258 s!2326) (c!1029053 r!7292))))))

(declare-fun b!5809037 () Bool)

(declare-fun e!3565864 () Bool)

(declare-fun e!3565863 () Bool)

(assert (=> b!5809037 (= e!3565864 e!3565863)))

(declare-fun res!2449625 () Bool)

(assert (=> b!5809037 (=> (not res!2449625) (not e!3565863))))

(declare-fun lt!2299501 () Bool)

(assert (=> b!5809037 (= res!2449625 (not lt!2299501))))

(declare-fun b!5809038 () Bool)

(assert (=> b!5809038 (= e!3565863 e!3565866)))

(declare-fun res!2449621 () Bool)

(assert (=> b!5809038 (=> res!2449621 e!3565866)))

(assert (=> b!5809038 (= res!2449621 call!453569)))

(declare-fun b!5809039 () Bool)

(assert (=> b!5809039 (= e!3565861 (= lt!2299501 call!453569))))

(declare-fun bm!453564 () Bool)

(assert (=> bm!453564 (= call!453569 (isEmpty!35559 s!2326))))

(declare-fun b!5809040 () Bool)

(assert (=> b!5809040 (= e!3565862 (nullable!5849 r!7292))))

(declare-fun b!5809041 () Bool)

(declare-fun res!2449624 () Bool)

(assert (=> b!5809041 (=> (not res!2449624) (not e!3565867))))

(assert (=> b!5809041 (= res!2449624 (isEmpty!35559 (tail!11353 s!2326)))))

(declare-fun b!5809042 () Bool)

(declare-fun res!2449626 () Bool)

(assert (=> b!5809042 (=> res!2449626 e!3565866)))

(assert (=> b!5809042 (= res!2449626 (not (isEmpty!35559 (tail!11353 s!2326))))))

(declare-fun b!5809043 () Bool)

(declare-fun res!2449628 () Bool)

(assert (=> b!5809043 (=> res!2449628 e!3565864)))

(assert (=> b!5809043 (= res!2449628 e!3565867)))

(declare-fun res!2449622 () Bool)

(assert (=> b!5809043 (=> (not res!2449622) (not e!3565867))))

(assert (=> b!5809043 (= res!2449622 lt!2299501)))

(declare-fun d!1829409 () Bool)

(assert (=> d!1829409 e!3565861))

(declare-fun c!1029269 () Bool)

(assert (=> d!1829409 (= c!1029269 ((_ is EmptyExpr!15823) r!7292))))

(assert (=> d!1829409 (= lt!2299501 e!3565862)))

(declare-fun c!1029268 () Bool)

(assert (=> d!1829409 (= c!1029268 (isEmpty!35559 s!2326))))

(assert (=> d!1829409 (validRegex!7559 r!7292)))

(assert (=> d!1829409 (= (matchR!8008 r!7292 s!2326) lt!2299501)))

(declare-fun b!5809044 () Bool)

(assert (=> b!5809044 (= e!3565865 (not lt!2299501))))

(declare-fun b!5809045 () Bool)

(assert (=> b!5809045 (= e!3565867 (= (head!12258 s!2326) (c!1029053 r!7292)))))

(declare-fun b!5809046 () Bool)

(declare-fun res!2449623 () Bool)

(assert (=> b!5809046 (=> res!2449623 e!3565864)))

(assert (=> b!5809046 (= res!2449623 (not ((_ is ElementMatch!15823) r!7292)))))

(assert (=> b!5809046 (= e!3565865 e!3565864)))

(assert (= (and d!1829409 c!1029268) b!5809040))

(assert (= (and d!1829409 (not c!1029268)) b!5809033))

(assert (= (and d!1829409 c!1029269) b!5809039))

(assert (= (and d!1829409 (not c!1029269)) b!5809034))

(assert (= (and b!5809034 c!1029267) b!5809044))

(assert (= (and b!5809034 (not c!1029267)) b!5809046))

(assert (= (and b!5809046 (not res!2449623)) b!5809043))

(assert (= (and b!5809043 res!2449622) b!5809035))

(assert (= (and b!5809035 res!2449627) b!5809041))

(assert (= (and b!5809041 res!2449624) b!5809045))

(assert (= (and b!5809043 (not res!2449628)) b!5809037))

(assert (= (and b!5809037 res!2449625) b!5809038))

(assert (= (and b!5809038 (not res!2449621)) b!5809042))

(assert (= (and b!5809042 (not res!2449626)) b!5809036))

(assert (= (or b!5809039 b!5809035 b!5809038) bm!453564))

(assert (=> b!5809042 m!6747588))

(assert (=> b!5809042 m!6747588))

(declare-fun m!6747702 () Bool)

(assert (=> b!5809042 m!6747702))

(assert (=> b!5809040 m!6747400))

(assert (=> b!5809033 m!6747584))

(assert (=> b!5809033 m!6747584))

(declare-fun m!6747704 () Bool)

(assert (=> b!5809033 m!6747704))

(assert (=> b!5809033 m!6747588))

(assert (=> b!5809033 m!6747704))

(assert (=> b!5809033 m!6747588))

(declare-fun m!6747706 () Bool)

(assert (=> b!5809033 m!6747706))

(assert (=> b!5809036 m!6747584))

(assert (=> bm!453564 m!6747112))

(assert (=> b!5809045 m!6747584))

(assert (=> d!1829409 m!6747112))

(assert (=> d!1829409 m!6747182))

(assert (=> b!5809041 m!6747588))

(assert (=> b!5809041 m!6747588))

(assert (=> b!5809041 m!6747702))

(assert (=> b!5808274 d!1829409))

(declare-fun d!1829411 () Bool)

(assert (=> d!1829411 (= (matchR!8008 r!7292 s!2326) (matchRSpec!2926 r!7292 s!2326))))

(declare-fun lt!2299504 () Unit!156906)

(declare-fun choose!44103 (Regex!15823 List!63770) Unit!156906)

(assert (=> d!1829411 (= lt!2299504 (choose!44103 r!7292 s!2326))))

(assert (=> d!1829411 (validRegex!7559 r!7292)))

(assert (=> d!1829411 (= (mainMatchTheorem!2926 r!7292 s!2326) lt!2299504)))

(declare-fun bs!1371337 () Bool)

(assert (= bs!1371337 d!1829411))

(assert (=> bs!1371337 m!6747098))

(assert (=> bs!1371337 m!6747096))

(declare-fun m!6747708 () Bool)

(assert (=> bs!1371337 m!6747708))

(assert (=> bs!1371337 m!6747182))

(assert (=> b!5808274 d!1829411))

(declare-fun bs!1371338 () Bool)

(declare-fun b!5809051 () Bool)

(assert (= bs!1371338 (and b!5809051 b!5808298)))

(declare-fun lambda!317192 () Int)

(assert (=> bs!1371338 (= (and (= (reg!16152 lt!2299393) (reg!16152 r!7292)) (= lt!2299393 r!7292)) (= lambda!317192 lambda!317124))))

(declare-fun bs!1371339 () Bool)

(assert (= bs!1371339 (and b!5809051 b!5809031)))

(assert (=> bs!1371339 (not (= lambda!317192 lambda!317191))))

(assert (=> bs!1371338 (not (= lambda!317192 lambda!317125))))

(declare-fun bs!1371340 () Bool)

(assert (= bs!1371340 (and b!5809051 b!5809026)))

(assert (=> bs!1371340 (= (and (= (reg!16152 lt!2299393) (reg!16152 r!7292)) (= lt!2299393 r!7292)) (= lambda!317192 lambda!317190))))

(assert (=> bs!1371338 (not (= lambda!317192 lambda!317123))))

(assert (=> b!5809051 true))

(assert (=> b!5809051 true))

(declare-fun bs!1371341 () Bool)

(declare-fun b!5809056 () Bool)

(assert (= bs!1371341 (and b!5809056 b!5808298)))

(declare-fun lambda!317193 () Int)

(assert (=> bs!1371341 (not (= lambda!317193 lambda!317124))))

(declare-fun bs!1371342 () Bool)

(assert (= bs!1371342 (and b!5809056 b!5809031)))

(assert (=> bs!1371342 (= (and (= (regOne!32158 lt!2299393) (regOne!32158 r!7292)) (= (regTwo!32158 lt!2299393) (regTwo!32158 r!7292))) (= lambda!317193 lambda!317191))))

(assert (=> bs!1371341 (= (and (= (regOne!32158 lt!2299393) (reg!16152 r!7292)) (= (regTwo!32158 lt!2299393) r!7292)) (= lambda!317193 lambda!317125))))

(declare-fun bs!1371343 () Bool)

(assert (= bs!1371343 (and b!5809056 b!5809051)))

(assert (=> bs!1371343 (not (= lambda!317193 lambda!317192))))

(declare-fun bs!1371344 () Bool)

(assert (= bs!1371344 (and b!5809056 b!5809026)))

(assert (=> bs!1371344 (not (= lambda!317193 lambda!317190))))

(assert (=> bs!1371341 (not (= lambda!317193 lambda!317123))))

(assert (=> b!5809056 true))

(assert (=> b!5809056 true))

(declare-fun b!5809047 () Bool)

(declare-fun res!2449630 () Bool)

(declare-fun e!3565869 () Bool)

(assert (=> b!5809047 (=> res!2449630 e!3565869)))

(declare-fun call!453570 () Bool)

(assert (=> b!5809047 (= res!2449630 call!453570)))

(declare-fun e!3565870 () Bool)

(assert (=> b!5809047 (= e!3565870 e!3565869)))

(declare-fun b!5809048 () Bool)

(declare-fun e!3565868 () Bool)

(declare-fun e!3565874 () Bool)

(assert (=> b!5809048 (= e!3565868 e!3565874)))

(declare-fun res!2449629 () Bool)

(assert (=> b!5809048 (= res!2449629 (not ((_ is EmptyLang!15823) lt!2299393)))))

(assert (=> b!5809048 (=> (not res!2449629) (not e!3565874))))

(declare-fun d!1829413 () Bool)

(declare-fun c!1029270 () Bool)

(assert (=> d!1829413 (= c!1029270 ((_ is EmptyExpr!15823) lt!2299393))))

(assert (=> d!1829413 (= (matchRSpec!2926 lt!2299393 s!2326) e!3565868)))

(declare-fun bm!453565 () Bool)

(assert (=> bm!453565 (= call!453570 (isEmpty!35559 s!2326))))

(declare-fun b!5809049 () Bool)

(assert (=> b!5809049 (= e!3565868 call!453570)))

(declare-fun b!5809050 () Bool)

(declare-fun e!3565872 () Bool)

(assert (=> b!5809050 (= e!3565872 (matchRSpec!2926 (regTwo!32159 lt!2299393) s!2326))))

(declare-fun call!453571 () Bool)

(assert (=> b!5809051 (= e!3565869 call!453571)))

(declare-fun b!5809052 () Bool)

(declare-fun c!1029273 () Bool)

(assert (=> b!5809052 (= c!1029273 ((_ is ElementMatch!15823) lt!2299393))))

(declare-fun e!3565871 () Bool)

(assert (=> b!5809052 (= e!3565874 e!3565871)))

(declare-fun bm!453566 () Bool)

(declare-fun c!1029272 () Bool)

(assert (=> bm!453566 (= call!453571 (Exists!2923 (ite c!1029272 lambda!317192 lambda!317193)))))

(declare-fun b!5809053 () Bool)

(declare-fun c!1029271 () Bool)

(assert (=> b!5809053 (= c!1029271 ((_ is Union!15823) lt!2299393))))

(declare-fun e!3565873 () Bool)

(assert (=> b!5809053 (= e!3565871 e!3565873)))

(declare-fun b!5809054 () Bool)

(assert (=> b!5809054 (= e!3565873 e!3565870)))

(assert (=> b!5809054 (= c!1029272 ((_ is Star!15823) lt!2299393))))

(declare-fun b!5809055 () Bool)

(assert (=> b!5809055 (= e!3565873 e!3565872)))

(declare-fun res!2449631 () Bool)

(assert (=> b!5809055 (= res!2449631 (matchRSpec!2926 (regOne!32159 lt!2299393) s!2326))))

(assert (=> b!5809055 (=> res!2449631 e!3565872)))

(assert (=> b!5809056 (= e!3565870 call!453571)))

(declare-fun b!5809057 () Bool)

(assert (=> b!5809057 (= e!3565871 (= s!2326 (Cons!63646 (c!1029053 lt!2299393) Nil!63646)))))

(assert (= (and d!1829413 c!1029270) b!5809049))

(assert (= (and d!1829413 (not c!1029270)) b!5809048))

(assert (= (and b!5809048 res!2449629) b!5809052))

(assert (= (and b!5809052 c!1029273) b!5809057))

(assert (= (and b!5809052 (not c!1029273)) b!5809053))

(assert (= (and b!5809053 c!1029271) b!5809055))

(assert (= (and b!5809053 (not c!1029271)) b!5809054))

(assert (= (and b!5809055 (not res!2449631)) b!5809050))

(assert (= (and b!5809054 c!1029272) b!5809047))

(assert (= (and b!5809054 (not c!1029272)) b!5809056))

(assert (= (and b!5809047 (not res!2449630)) b!5809051))

(assert (= (or b!5809051 b!5809056) bm!453566))

(assert (= (or b!5809049 b!5809047) bm!453565))

(assert (=> bm!453565 m!6747112))

(declare-fun m!6747710 () Bool)

(assert (=> b!5809050 m!6747710))

(declare-fun m!6747712 () Bool)

(assert (=> bm!453566 m!6747712))

(declare-fun m!6747714 () Bool)

(assert (=> b!5809055 m!6747714))

(assert (=> b!5808297 d!1829413))

(declare-fun b!5809058 () Bool)

(declare-fun e!3565876 () Bool)

(assert (=> b!5809058 (= e!3565876 (matchR!8008 (derivativeStep!4592 lt!2299393 (head!12258 s!2326)) (tail!11353 s!2326)))))

(declare-fun b!5809059 () Bool)

(declare-fun e!3565875 () Bool)

(declare-fun e!3565879 () Bool)

(assert (=> b!5809059 (= e!3565875 e!3565879)))

(declare-fun c!1029274 () Bool)

(assert (=> b!5809059 (= c!1029274 ((_ is EmptyLang!15823) lt!2299393))))

(declare-fun b!5809060 () Bool)

(declare-fun res!2449638 () Bool)

(declare-fun e!3565881 () Bool)

(assert (=> b!5809060 (=> (not res!2449638) (not e!3565881))))

(declare-fun call!453572 () Bool)

(assert (=> b!5809060 (= res!2449638 (not call!453572))))

(declare-fun b!5809061 () Bool)

(declare-fun e!3565880 () Bool)

(assert (=> b!5809061 (= e!3565880 (not (= (head!12258 s!2326) (c!1029053 lt!2299393))))))

(declare-fun b!5809062 () Bool)

(declare-fun e!3565878 () Bool)

(declare-fun e!3565877 () Bool)

(assert (=> b!5809062 (= e!3565878 e!3565877)))

(declare-fun res!2449636 () Bool)

(assert (=> b!5809062 (=> (not res!2449636) (not e!3565877))))

(declare-fun lt!2299505 () Bool)

(assert (=> b!5809062 (= res!2449636 (not lt!2299505))))

(declare-fun b!5809063 () Bool)

(assert (=> b!5809063 (= e!3565877 e!3565880)))

(declare-fun res!2449632 () Bool)

(assert (=> b!5809063 (=> res!2449632 e!3565880)))

(assert (=> b!5809063 (= res!2449632 call!453572)))

(declare-fun b!5809064 () Bool)

(assert (=> b!5809064 (= e!3565875 (= lt!2299505 call!453572))))

(declare-fun bm!453567 () Bool)

(assert (=> bm!453567 (= call!453572 (isEmpty!35559 s!2326))))

(declare-fun b!5809065 () Bool)

(assert (=> b!5809065 (= e!3565876 (nullable!5849 lt!2299393))))

(declare-fun b!5809066 () Bool)

(declare-fun res!2449635 () Bool)

(assert (=> b!5809066 (=> (not res!2449635) (not e!3565881))))

(assert (=> b!5809066 (= res!2449635 (isEmpty!35559 (tail!11353 s!2326)))))

(declare-fun b!5809067 () Bool)

(declare-fun res!2449637 () Bool)

(assert (=> b!5809067 (=> res!2449637 e!3565880)))

(assert (=> b!5809067 (= res!2449637 (not (isEmpty!35559 (tail!11353 s!2326))))))

(declare-fun b!5809068 () Bool)

(declare-fun res!2449639 () Bool)

(assert (=> b!5809068 (=> res!2449639 e!3565878)))

(assert (=> b!5809068 (= res!2449639 e!3565881)))

(declare-fun res!2449633 () Bool)

(assert (=> b!5809068 (=> (not res!2449633) (not e!3565881))))

(assert (=> b!5809068 (= res!2449633 lt!2299505)))

(declare-fun d!1829415 () Bool)

(assert (=> d!1829415 e!3565875))

(declare-fun c!1029276 () Bool)

(assert (=> d!1829415 (= c!1029276 ((_ is EmptyExpr!15823) lt!2299393))))

(assert (=> d!1829415 (= lt!2299505 e!3565876)))

(declare-fun c!1029275 () Bool)

(assert (=> d!1829415 (= c!1029275 (isEmpty!35559 s!2326))))

(assert (=> d!1829415 (validRegex!7559 lt!2299393)))

(assert (=> d!1829415 (= (matchR!8008 lt!2299393 s!2326) lt!2299505)))

(declare-fun b!5809069 () Bool)

(assert (=> b!5809069 (= e!3565879 (not lt!2299505))))

(declare-fun b!5809070 () Bool)

(assert (=> b!5809070 (= e!3565881 (= (head!12258 s!2326) (c!1029053 lt!2299393)))))

(declare-fun b!5809071 () Bool)

(declare-fun res!2449634 () Bool)

(assert (=> b!5809071 (=> res!2449634 e!3565878)))

(assert (=> b!5809071 (= res!2449634 (not ((_ is ElementMatch!15823) lt!2299393)))))

(assert (=> b!5809071 (= e!3565879 e!3565878)))

(assert (= (and d!1829415 c!1029275) b!5809065))

(assert (= (and d!1829415 (not c!1029275)) b!5809058))

(assert (= (and d!1829415 c!1029276) b!5809064))

(assert (= (and d!1829415 (not c!1029276)) b!5809059))

(assert (= (and b!5809059 c!1029274) b!5809069))

(assert (= (and b!5809059 (not c!1029274)) b!5809071))

(assert (= (and b!5809071 (not res!2449634)) b!5809068))

(assert (= (and b!5809068 res!2449633) b!5809060))

(assert (= (and b!5809060 res!2449638) b!5809066))

(assert (= (and b!5809066 res!2449635) b!5809070))

(assert (= (and b!5809068 (not res!2449639)) b!5809062))

(assert (= (and b!5809062 res!2449636) b!5809063))

(assert (= (and b!5809063 (not res!2449632)) b!5809067))

(assert (= (and b!5809067 (not res!2449637)) b!5809061))

(assert (= (or b!5809064 b!5809060 b!5809063) bm!453567))

(assert (=> b!5809067 m!6747588))

(assert (=> b!5809067 m!6747588))

(assert (=> b!5809067 m!6747702))

(declare-fun m!6747716 () Bool)

(assert (=> b!5809065 m!6747716))

(assert (=> b!5809058 m!6747584))

(assert (=> b!5809058 m!6747584))

(declare-fun m!6747718 () Bool)

(assert (=> b!5809058 m!6747718))

(assert (=> b!5809058 m!6747588))

(assert (=> b!5809058 m!6747718))

(assert (=> b!5809058 m!6747588))

(declare-fun m!6747720 () Bool)

(assert (=> b!5809058 m!6747720))

(assert (=> b!5809061 m!6747584))

(assert (=> bm!453567 m!6747112))

(assert (=> b!5809070 m!6747584))

(assert (=> d!1829415 m!6747112))

(declare-fun m!6747722 () Bool)

(assert (=> d!1829415 m!6747722))

(assert (=> b!5809066 m!6747588))

(assert (=> b!5809066 m!6747588))

(assert (=> b!5809066 m!6747702))

(assert (=> b!5808297 d!1829415))

(declare-fun d!1829417 () Bool)

(assert (=> d!1829417 (= (matchR!8008 lt!2299393 s!2326) (matchRSpec!2926 lt!2299393 s!2326))))

(declare-fun lt!2299506 () Unit!156906)

(assert (=> d!1829417 (= lt!2299506 (choose!44103 lt!2299393 s!2326))))

(assert (=> d!1829417 (validRegex!7559 lt!2299393)))

(assert (=> d!1829417 (= (mainMatchTheorem!2926 lt!2299393 s!2326) lt!2299506)))

(declare-fun bs!1371345 () Bool)

(assert (= bs!1371345 d!1829417))

(assert (=> bs!1371345 m!6747088))

(assert (=> bs!1371345 m!6747086))

(declare-fun m!6747724 () Bool)

(assert (=> bs!1371345 m!6747724))

(assert (=> bs!1371345 m!6747722))

(assert (=> b!5808297 d!1829417))

(declare-fun bs!1371346 () Bool)

(declare-fun d!1829419 () Bool)

(assert (= bs!1371346 (and d!1829419 b!5808298)))

(declare-fun lambda!317198 () Int)

(assert (=> bs!1371346 (not (= lambda!317198 lambda!317124))))

(declare-fun bs!1371347 () Bool)

(assert (= bs!1371347 (and d!1829419 b!5809031)))

(assert (=> bs!1371347 (not (= lambda!317198 lambda!317191))))

(declare-fun bs!1371348 () Bool)

(assert (= bs!1371348 (and d!1829419 b!5809051)))

(assert (=> bs!1371348 (not (= lambda!317198 lambda!317192))))

(declare-fun bs!1371349 () Bool)

(assert (= bs!1371349 (and d!1829419 b!5809026)))

(assert (=> bs!1371349 (not (= lambda!317198 lambda!317190))))

(assert (=> bs!1371346 (= lambda!317198 lambda!317123)))

(assert (=> bs!1371346 (not (= lambda!317198 lambda!317125))))

(declare-fun bs!1371350 () Bool)

(assert (= bs!1371350 (and d!1829419 b!5809056)))

(assert (=> bs!1371350 (not (= lambda!317198 lambda!317193))))

(assert (=> d!1829419 true))

(assert (=> d!1829419 true))

(assert (=> d!1829419 true))

(declare-fun lambda!317199 () Int)

(assert (=> bs!1371346 (not (= lambda!317199 lambda!317124))))

(assert (=> bs!1371347 (= (and (= (reg!16152 r!7292) (regOne!32158 r!7292)) (= r!7292 (regTwo!32158 r!7292))) (= lambda!317199 lambda!317191))))

(assert (=> bs!1371349 (not (= lambda!317199 lambda!317190))))

(assert (=> bs!1371346 (not (= lambda!317199 lambda!317123))))

(assert (=> bs!1371346 (= lambda!317199 lambda!317125)))

(assert (=> bs!1371350 (= (and (= (reg!16152 r!7292) (regOne!32158 lt!2299393)) (= r!7292 (regTwo!32158 lt!2299393))) (= lambda!317199 lambda!317193))))

(assert (=> bs!1371348 (not (= lambda!317199 lambda!317192))))

(declare-fun bs!1371351 () Bool)

(assert (= bs!1371351 d!1829419))

(assert (=> bs!1371351 (not (= lambda!317199 lambda!317198))))

(assert (=> d!1829419 true))

(assert (=> d!1829419 true))

(assert (=> d!1829419 true))

(assert (=> d!1829419 (= (Exists!2923 lambda!317198) (Exists!2923 lambda!317199))))

(declare-fun lt!2299509 () Unit!156906)

(declare-fun choose!44104 (Regex!15823 Regex!15823 List!63770) Unit!156906)

(assert (=> d!1829419 (= lt!2299509 (choose!44104 (reg!16152 r!7292) r!7292 s!2326))))

(assert (=> d!1829419 (validRegex!7559 (reg!16152 r!7292))))

(assert (=> d!1829419 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1552 (reg!16152 r!7292) r!7292 s!2326) lt!2299509)))

(declare-fun m!6747726 () Bool)

(assert (=> bs!1371351 m!6747726))

(declare-fun m!6747728 () Bool)

(assert (=> bs!1371351 m!6747728))

(declare-fun m!6747730 () Bool)

(assert (=> bs!1371351 m!6747730))

(assert (=> bs!1371351 m!6747624))

(assert (=> b!5808298 d!1829419))

(assert (=> b!5808298 d!1829279))

(declare-fun d!1829421 () Bool)

(assert (=> d!1829421 (= (isEmpty!35559 s!2326) ((_ is Nil!63646) s!2326))))

(assert (=> b!5808298 d!1829421))

(declare-fun d!1829423 () Bool)

(assert (=> d!1829423 (= (Exists!2923 lambda!317125) (choose!44099 lambda!317125))))

(declare-fun bs!1371352 () Bool)

(assert (= bs!1371352 d!1829423))

(declare-fun m!6747732 () Bool)

(assert (=> bs!1371352 m!6747732))

(assert (=> b!5808298 d!1829423))

(assert (=> b!5808298 d!1829277))

(declare-fun d!1829425 () Bool)

(declare-fun isEmpty!35564 (Option!15832) Bool)

(assert (=> d!1829425 (= (isDefined!12535 lt!2299402) (not (isEmpty!35564 lt!2299402)))))

(declare-fun bs!1371353 () Bool)

(assert (= bs!1371353 d!1829425))

(declare-fun m!6747734 () Bool)

(assert (=> bs!1371353 m!6747734))

(assert (=> b!5808298 d!1829425))

(declare-fun bs!1371354 () Bool)

(declare-fun d!1829427 () Bool)

(assert (= bs!1371354 (and d!1829427 b!5808298)))

(declare-fun lambda!317204 () Int)

(assert (=> bs!1371354 (not (= lambda!317204 lambda!317124))))

(declare-fun bs!1371355 () Bool)

(assert (= bs!1371355 (and d!1829427 b!5809031)))

(assert (=> bs!1371355 (not (= lambda!317204 lambda!317191))))

(declare-fun bs!1371356 () Bool)

(assert (= bs!1371356 (and d!1829427 d!1829419)))

(assert (=> bs!1371356 (not (= lambda!317204 lambda!317199))))

(declare-fun bs!1371357 () Bool)

(assert (= bs!1371357 (and d!1829427 b!5809026)))

(assert (=> bs!1371357 (not (= lambda!317204 lambda!317190))))

(assert (=> bs!1371354 (= (= (Star!15823 (reg!16152 r!7292)) r!7292) (= lambda!317204 lambda!317123))))

(assert (=> bs!1371354 (not (= lambda!317204 lambda!317125))))

(declare-fun bs!1371358 () Bool)

(assert (= bs!1371358 (and d!1829427 b!5809056)))

(assert (=> bs!1371358 (not (= lambda!317204 lambda!317193))))

(declare-fun bs!1371359 () Bool)

(assert (= bs!1371359 (and d!1829427 b!5809051)))

(assert (=> bs!1371359 (not (= lambda!317204 lambda!317192))))

(assert (=> bs!1371356 (= (= (Star!15823 (reg!16152 r!7292)) r!7292) (= lambda!317204 lambda!317198))))

(assert (=> d!1829427 true))

(assert (=> d!1829427 true))

(declare-fun lambda!317205 () Int)

(assert (=> bs!1371354 (= (= (Star!15823 (reg!16152 r!7292)) r!7292) (= lambda!317205 lambda!317124))))

(declare-fun bs!1371360 () Bool)

(assert (= bs!1371360 d!1829427))

(assert (=> bs!1371360 (not (= lambda!317205 lambda!317204))))

(assert (=> bs!1371355 (not (= lambda!317205 lambda!317191))))

(assert (=> bs!1371356 (not (= lambda!317205 lambda!317199))))

(assert (=> bs!1371357 (= (= (Star!15823 (reg!16152 r!7292)) r!7292) (= lambda!317205 lambda!317190))))

(assert (=> bs!1371354 (not (= lambda!317205 lambda!317123))))

(assert (=> bs!1371354 (not (= lambda!317205 lambda!317125))))

(assert (=> bs!1371358 (not (= lambda!317205 lambda!317193))))

(assert (=> bs!1371359 (= (and (= (reg!16152 r!7292) (reg!16152 lt!2299393)) (= (Star!15823 (reg!16152 r!7292)) lt!2299393)) (= lambda!317205 lambda!317192))))

(assert (=> bs!1371356 (not (= lambda!317205 lambda!317198))))

(assert (=> d!1829427 true))

(assert (=> d!1829427 true))

(assert (=> d!1829427 (= (Exists!2923 lambda!317204) (Exists!2923 lambda!317205))))

(declare-fun lt!2299512 () Unit!156906)

(declare-fun choose!44105 (Regex!15823 List!63770) Unit!156906)

(assert (=> d!1829427 (= lt!2299512 (choose!44105 (reg!16152 r!7292) s!2326))))

(assert (=> d!1829427 (validRegex!7559 (reg!16152 r!7292))))

(assert (=> d!1829427 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!604 (reg!16152 r!7292) s!2326) lt!2299512)))

(declare-fun m!6747736 () Bool)

(assert (=> bs!1371360 m!6747736))

(declare-fun m!6747738 () Bool)

(assert (=> bs!1371360 m!6747738))

(declare-fun m!6747740 () Bool)

(assert (=> bs!1371360 m!6747740))

(assert (=> bs!1371360 m!6747624))

(assert (=> b!5808298 d!1829427))

(declare-fun b!5809108 () Bool)

(declare-fun e!3565904 () Option!15832)

(assert (=> b!5809108 (= e!3565904 None!15831)))

(declare-fun b!5809109 () Bool)

(declare-fun res!2449671 () Bool)

(declare-fun e!3565900 () Bool)

(assert (=> b!5809109 (=> (not res!2449671) (not e!3565900))))

(declare-fun lt!2299519 () Option!15832)

(assert (=> b!5809109 (= res!2449671 (matchR!8008 (reg!16152 r!7292) (_1!36223 (get!21972 lt!2299519))))))

(declare-fun b!5809110 () Bool)

(declare-fun lt!2299520 () Unit!156906)

(declare-fun lt!2299521 () Unit!156906)

(assert (=> b!5809110 (= lt!2299520 lt!2299521)))

(assert (=> b!5809110 (= (++!14035 (++!14035 Nil!63646 (Cons!63646 (h!70094 s!2326) Nil!63646)) (t!377123 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2142 (List!63770 C!31916 List!63770 List!63770) Unit!156906)

(assert (=> b!5809110 (= lt!2299521 (lemmaMoveElementToOtherListKeepsConcatEq!2142 Nil!63646 (h!70094 s!2326) (t!377123 s!2326) s!2326))))

(assert (=> b!5809110 (= e!3565904 (findConcatSeparation!2246 (reg!16152 r!7292) r!7292 (++!14035 Nil!63646 (Cons!63646 (h!70094 s!2326) Nil!63646)) (t!377123 s!2326) s!2326))))

(declare-fun b!5809111 () Bool)

(assert (=> b!5809111 (= e!3565900 (= (++!14035 (_1!36223 (get!21972 lt!2299519)) (_2!36223 (get!21972 lt!2299519))) s!2326))))

(declare-fun b!5809112 () Bool)

(declare-fun res!2449669 () Bool)

(assert (=> b!5809112 (=> (not res!2449669) (not e!3565900))))

(assert (=> b!5809112 (= res!2449669 (matchR!8008 r!7292 (_2!36223 (get!21972 lt!2299519))))))

(declare-fun b!5809114 () Bool)

(declare-fun e!3565903 () Bool)

(assert (=> b!5809114 (= e!3565903 (not (isDefined!12535 lt!2299519)))))

(declare-fun b!5809115 () Bool)

(declare-fun e!3565902 () Option!15832)

(assert (=> b!5809115 (= e!3565902 e!3565904)))

(declare-fun c!1029281 () Bool)

(assert (=> b!5809115 (= c!1029281 ((_ is Nil!63646) s!2326))))

(declare-fun b!5809116 () Bool)

(declare-fun e!3565901 () Bool)

(assert (=> b!5809116 (= e!3565901 (matchR!8008 r!7292 s!2326))))

(declare-fun b!5809113 () Bool)

(assert (=> b!5809113 (= e!3565902 (Some!15831 (tuple2!65841 Nil!63646 s!2326)))))

(declare-fun d!1829429 () Bool)

(assert (=> d!1829429 e!3565903))

(declare-fun res!2449670 () Bool)

(assert (=> d!1829429 (=> res!2449670 e!3565903)))

(assert (=> d!1829429 (= res!2449670 e!3565900)))

(declare-fun res!2449672 () Bool)

(assert (=> d!1829429 (=> (not res!2449672) (not e!3565900))))

(assert (=> d!1829429 (= res!2449672 (isDefined!12535 lt!2299519))))

(assert (=> d!1829429 (= lt!2299519 e!3565902)))

(declare-fun c!1029282 () Bool)

(assert (=> d!1829429 (= c!1029282 e!3565901)))

(declare-fun res!2449668 () Bool)

(assert (=> d!1829429 (=> (not res!2449668) (not e!3565901))))

(assert (=> d!1829429 (= res!2449668 (matchR!8008 (reg!16152 r!7292) Nil!63646))))

(assert (=> d!1829429 (validRegex!7559 (reg!16152 r!7292))))

(assert (=> d!1829429 (= (findConcatSeparation!2246 (reg!16152 r!7292) r!7292 Nil!63646 s!2326 s!2326) lt!2299519)))

(assert (= (and d!1829429 res!2449668) b!5809116))

(assert (= (and d!1829429 c!1029282) b!5809113))

(assert (= (and d!1829429 (not c!1029282)) b!5809115))

(assert (= (and b!5809115 c!1029281) b!5809108))

(assert (= (and b!5809115 (not c!1029281)) b!5809110))

(assert (= (and d!1829429 res!2449672) b!5809109))

(assert (= (and b!5809109 res!2449671) b!5809112))

(assert (= (and b!5809112 res!2449669) b!5809111))

(assert (= (and d!1829429 (not res!2449670)) b!5809114))

(declare-fun m!6747742 () Bool)

(assert (=> b!5809112 m!6747742))

(declare-fun m!6747744 () Bool)

(assert (=> b!5809112 m!6747744))

(assert (=> b!5809111 m!6747742))

(declare-fun m!6747746 () Bool)

(assert (=> b!5809111 m!6747746))

(declare-fun m!6747748 () Bool)

(assert (=> b!5809114 m!6747748))

(assert (=> b!5809116 m!6747098))

(assert (=> b!5809109 m!6747742))

(declare-fun m!6747750 () Bool)

(assert (=> b!5809109 m!6747750))

(assert (=> d!1829429 m!6747748))

(declare-fun m!6747752 () Bool)

(assert (=> d!1829429 m!6747752))

(assert (=> d!1829429 m!6747624))

(declare-fun m!6747754 () Bool)

(assert (=> b!5809110 m!6747754))

(assert (=> b!5809110 m!6747754))

(declare-fun m!6747756 () Bool)

(assert (=> b!5809110 m!6747756))

(declare-fun m!6747758 () Bool)

(assert (=> b!5809110 m!6747758))

(assert (=> b!5809110 m!6747754))

(declare-fun m!6747760 () Bool)

(assert (=> b!5809110 m!6747760))

(assert (=> b!5808298 d!1829429))

(declare-fun bs!1371361 () Bool)

(declare-fun d!1829431 () Bool)

(assert (= bs!1371361 (and d!1829431 b!5808298)))

(declare-fun lambda!317208 () Int)

(assert (=> bs!1371361 (not (= lambda!317208 lambda!317124))))

(declare-fun bs!1371362 () Bool)

(assert (= bs!1371362 (and d!1829431 d!1829427)))

(assert (=> bs!1371362 (= (= r!7292 (Star!15823 (reg!16152 r!7292))) (= lambda!317208 lambda!317204))))

(declare-fun bs!1371363 () Bool)

(assert (= bs!1371363 (and d!1829431 b!5809031)))

(assert (=> bs!1371363 (not (= lambda!317208 lambda!317191))))

(assert (=> bs!1371362 (not (= lambda!317208 lambda!317205))))

(declare-fun bs!1371364 () Bool)

(assert (= bs!1371364 (and d!1829431 d!1829419)))

(assert (=> bs!1371364 (not (= lambda!317208 lambda!317199))))

(declare-fun bs!1371365 () Bool)

(assert (= bs!1371365 (and d!1829431 b!5809026)))

(assert (=> bs!1371365 (not (= lambda!317208 lambda!317190))))

(assert (=> bs!1371361 (= lambda!317208 lambda!317123)))

(assert (=> bs!1371361 (not (= lambda!317208 lambda!317125))))

(declare-fun bs!1371366 () Bool)

(assert (= bs!1371366 (and d!1829431 b!5809056)))

(assert (=> bs!1371366 (not (= lambda!317208 lambda!317193))))

(declare-fun bs!1371367 () Bool)

(assert (= bs!1371367 (and d!1829431 b!5809051)))

(assert (=> bs!1371367 (not (= lambda!317208 lambda!317192))))

(assert (=> bs!1371364 (= lambda!317208 lambda!317198)))

(assert (=> d!1829431 true))

(assert (=> d!1829431 true))

(assert (=> d!1829431 true))

(assert (=> d!1829431 (= (isDefined!12535 (findConcatSeparation!2246 (reg!16152 r!7292) r!7292 Nil!63646 s!2326 s!2326)) (Exists!2923 lambda!317208))))

(declare-fun lt!2299524 () Unit!156906)

(declare-fun choose!44106 (Regex!15823 Regex!15823 List!63770) Unit!156906)

(assert (=> d!1829431 (= lt!2299524 (choose!44106 (reg!16152 r!7292) r!7292 s!2326))))

(assert (=> d!1829431 (validRegex!7559 (reg!16152 r!7292))))

(assert (=> d!1829431 (= (lemmaFindConcatSeparationEquivalentToExists!2010 (reg!16152 r!7292) r!7292 s!2326) lt!2299524)))

(declare-fun bs!1371368 () Bool)

(assert (= bs!1371368 d!1829431))

(declare-fun m!6747762 () Bool)

(assert (=> bs!1371368 m!6747762))

(assert (=> bs!1371368 m!6747124))

(declare-fun m!6747764 () Bool)

(assert (=> bs!1371368 m!6747764))

(assert (=> bs!1371368 m!6747124))

(declare-fun m!6747766 () Bool)

(assert (=> bs!1371368 m!6747766))

(assert (=> bs!1371368 m!6747624))

(assert (=> b!5808298 d!1829431))

(declare-fun d!1829433 () Bool)

(declare-fun e!3565911 () Bool)

(assert (=> d!1829433 e!3565911))

(declare-fun res!2449682 () Bool)

(assert (=> d!1829433 (=> (not res!2449682) (not e!3565911))))

(declare-fun lt!2299527 () List!63770)

(declare-fun content!11660 (List!63770) (InoxSet C!31916))

(assert (=> d!1829433 (= res!2449682 (= (content!11660 lt!2299527) ((_ map or) (content!11660 (_1!36223 lt!2299410)) (content!11660 (_2!36223 lt!2299410)))))))

(declare-fun e!3565912 () List!63770)

(assert (=> d!1829433 (= lt!2299527 e!3565912)))

(declare-fun c!1029285 () Bool)

(assert (=> d!1829433 (= c!1029285 ((_ is Nil!63646) (_1!36223 lt!2299410)))))

(assert (=> d!1829433 (= (++!14035 (_1!36223 lt!2299410) (_2!36223 lt!2299410)) lt!2299527)))

(declare-fun b!5809132 () Bool)

(assert (=> b!5809132 (= e!3565911 (or (not (= (_2!36223 lt!2299410) Nil!63646)) (= lt!2299527 (_1!36223 lt!2299410))))))

(declare-fun b!5809130 () Bool)

(assert (=> b!5809130 (= e!3565912 (Cons!63646 (h!70094 (_1!36223 lt!2299410)) (++!14035 (t!377123 (_1!36223 lt!2299410)) (_2!36223 lt!2299410))))))

(declare-fun b!5809129 () Bool)

(assert (=> b!5809129 (= e!3565912 (_2!36223 lt!2299410))))

(declare-fun b!5809131 () Bool)

(declare-fun res!2449681 () Bool)

(assert (=> b!5809131 (=> (not res!2449681) (not e!3565911))))

(declare-fun size!40108 (List!63770) Int)

(assert (=> b!5809131 (= res!2449681 (= (size!40108 lt!2299527) (+ (size!40108 (_1!36223 lt!2299410)) (size!40108 (_2!36223 lt!2299410)))))))

(assert (= (and d!1829433 c!1029285) b!5809129))

(assert (= (and d!1829433 (not c!1029285)) b!5809130))

(assert (= (and d!1829433 res!2449682) b!5809131))

(assert (= (and b!5809131 res!2449681) b!5809132))

(declare-fun m!6747768 () Bool)

(assert (=> d!1829433 m!6747768))

(declare-fun m!6747770 () Bool)

(assert (=> d!1829433 m!6747770))

(declare-fun m!6747772 () Bool)

(assert (=> d!1829433 m!6747772))

(declare-fun m!6747774 () Bool)

(assert (=> b!5809130 m!6747774))

(declare-fun m!6747776 () Bool)

(assert (=> b!5809131 m!6747776))

(declare-fun m!6747778 () Bool)

(assert (=> b!5809131 m!6747778))

(declare-fun m!6747780 () Bool)

(assert (=> b!5809131 m!6747780))

(assert (=> b!5808278 d!1829433))

(declare-fun d!1829435 () Bool)

(assert (=> d!1829435 (= (get!21972 lt!2299402) (v!51895 lt!2299402))))

(assert (=> b!5808278 d!1829435))

(declare-fun d!1829437 () Bool)

(declare-fun lt!2299528 () Regex!15823)

(assert (=> d!1829437 (validRegex!7559 lt!2299528)))

(assert (=> d!1829437 (= lt!2299528 (generalisedUnion!1686 (unfocusZipperList!1251 (Cons!63645 lt!2299409 Nil!63645))))))

(assert (=> d!1829437 (= (unfocusZipper!1565 (Cons!63645 lt!2299409 Nil!63645)) lt!2299528)))

(declare-fun bs!1371369 () Bool)

(assert (= bs!1371369 d!1829437))

(declare-fun m!6747782 () Bool)

(assert (=> bs!1371369 m!6747782))

(declare-fun m!6747784 () Bool)

(assert (=> bs!1371369 m!6747784))

(assert (=> bs!1371369 m!6747784))

(declare-fun m!6747786 () Bool)

(assert (=> bs!1371369 m!6747786))

(assert (=> b!5808277 d!1829437))

(declare-fun b!5809143 () Bool)

(declare-fun e!3565915 () Bool)

(assert (=> b!5809143 (= e!3565915 tp_is_empty!40899)))

(declare-fun b!5809146 () Bool)

(declare-fun tp!1603220 () Bool)

(declare-fun tp!1603217 () Bool)

(assert (=> b!5809146 (= e!3565915 (and tp!1603220 tp!1603217))))

(declare-fun b!5809144 () Bool)

(declare-fun tp!1603219 () Bool)

(declare-fun tp!1603218 () Bool)

(assert (=> b!5809144 (= e!3565915 (and tp!1603219 tp!1603218))))

(assert (=> b!5808276 (= tp!1603146 e!3565915)))

(declare-fun b!5809145 () Bool)

(declare-fun tp!1603221 () Bool)

(assert (=> b!5809145 (= e!3565915 tp!1603221)))

(assert (= (and b!5808276 ((_ is ElementMatch!15823) (reg!16152 r!7292))) b!5809143))

(assert (= (and b!5808276 ((_ is Concat!24668) (reg!16152 r!7292))) b!5809144))

(assert (= (and b!5808276 ((_ is Star!15823) (reg!16152 r!7292))) b!5809145))

(assert (= (and b!5808276 ((_ is Union!15823) (reg!16152 r!7292))) b!5809146))

(declare-fun b!5809147 () Bool)

(declare-fun e!3565916 () Bool)

(assert (=> b!5809147 (= e!3565916 tp_is_empty!40899)))

(declare-fun b!5809150 () Bool)

(declare-fun tp!1603225 () Bool)

(declare-fun tp!1603222 () Bool)

(assert (=> b!5809150 (= e!3565916 (and tp!1603225 tp!1603222))))

(declare-fun b!5809148 () Bool)

(declare-fun tp!1603224 () Bool)

(declare-fun tp!1603223 () Bool)

(assert (=> b!5809148 (= e!3565916 (and tp!1603224 tp!1603223))))

(assert (=> b!5808289 (= tp!1603145 e!3565916)))

(declare-fun b!5809149 () Bool)

(declare-fun tp!1603226 () Bool)

(assert (=> b!5809149 (= e!3565916 tp!1603226)))

(assert (= (and b!5808289 ((_ is ElementMatch!15823) (regOne!32159 r!7292))) b!5809147))

(assert (= (and b!5808289 ((_ is Concat!24668) (regOne!32159 r!7292))) b!5809148))

(assert (= (and b!5808289 ((_ is Star!15823) (regOne!32159 r!7292))) b!5809149))

(assert (= (and b!5808289 ((_ is Union!15823) (regOne!32159 r!7292))) b!5809150))

(declare-fun b!5809151 () Bool)

(declare-fun e!3565917 () Bool)

(assert (=> b!5809151 (= e!3565917 tp_is_empty!40899)))

(declare-fun b!5809154 () Bool)

(declare-fun tp!1603230 () Bool)

(declare-fun tp!1603227 () Bool)

(assert (=> b!5809154 (= e!3565917 (and tp!1603230 tp!1603227))))

(declare-fun b!5809152 () Bool)

(declare-fun tp!1603229 () Bool)

(declare-fun tp!1603228 () Bool)

(assert (=> b!5809152 (= e!3565917 (and tp!1603229 tp!1603228))))

(assert (=> b!5808289 (= tp!1603140 e!3565917)))

(declare-fun b!5809153 () Bool)

(declare-fun tp!1603231 () Bool)

(assert (=> b!5809153 (= e!3565917 tp!1603231)))

(assert (= (and b!5808289 ((_ is ElementMatch!15823) (regTwo!32159 r!7292))) b!5809151))

(assert (= (and b!5808289 ((_ is Concat!24668) (regTwo!32159 r!7292))) b!5809152))

(assert (= (and b!5808289 ((_ is Star!15823) (regTwo!32159 r!7292))) b!5809153))

(assert (= (and b!5808289 ((_ is Union!15823) (regTwo!32159 r!7292))) b!5809154))

(declare-fun b!5809162 () Bool)

(declare-fun e!3565923 () Bool)

(declare-fun tp!1603236 () Bool)

(assert (=> b!5809162 (= e!3565923 tp!1603236)))

(declare-fun b!5809161 () Bool)

(declare-fun tp!1603237 () Bool)

(declare-fun e!3565922 () Bool)

(assert (=> b!5809161 (= e!3565922 (and (inv!82804 (h!70093 (t!377122 zl!343))) e!3565923 tp!1603237))))

(assert (=> b!5808273 (= tp!1603144 e!3565922)))

(assert (= b!5809161 b!5809162))

(assert (= (and b!5808273 ((_ is Cons!63645) (t!377122 zl!343))) b!5809161))

(declare-fun m!6747788 () Bool)

(assert (=> b!5809161 m!6747788))

(declare-fun condSetEmpty!39104 () Bool)

(assert (=> setNonEmpty!39098 (= condSetEmpty!39104 (= setRest!39098 ((as const (Array Context!10414 Bool)) false)))))

(declare-fun setRes!39104 () Bool)

(assert (=> setNonEmpty!39098 (= tp!1603143 setRes!39104)))

(declare-fun setIsEmpty!39104 () Bool)

(assert (=> setIsEmpty!39104 setRes!39104))

(declare-fun tp!1603242 () Bool)

(declare-fun setNonEmpty!39104 () Bool)

(declare-fun setElem!39104 () Context!10414)

(declare-fun e!3565926 () Bool)

(assert (=> setNonEmpty!39104 (= setRes!39104 (and tp!1603242 (inv!82804 setElem!39104) e!3565926))))

(declare-fun setRest!39104 () (InoxSet Context!10414))

(assert (=> setNonEmpty!39104 (= setRest!39098 ((_ map or) (store ((as const (Array Context!10414 Bool)) false) setElem!39104 true) setRest!39104))))

(declare-fun b!5809167 () Bool)

(declare-fun tp!1603243 () Bool)

(assert (=> b!5809167 (= e!3565926 tp!1603243)))

(assert (= (and setNonEmpty!39098 condSetEmpty!39104) setIsEmpty!39104))

(assert (= (and setNonEmpty!39098 (not condSetEmpty!39104)) setNonEmpty!39104))

(assert (= setNonEmpty!39104 b!5809167))

(declare-fun m!6747790 () Bool)

(assert (=> setNonEmpty!39104 m!6747790))

(declare-fun b!5809172 () Bool)

(declare-fun e!3565929 () Bool)

(declare-fun tp!1603246 () Bool)

(assert (=> b!5809172 (= e!3565929 (and tp_is_empty!40899 tp!1603246))))

(assert (=> b!5808283 (= tp!1603142 e!3565929)))

(assert (= (and b!5808283 ((_ is Cons!63646) (t!377123 s!2326))) b!5809172))

(declare-fun b!5809177 () Bool)

(declare-fun e!3565932 () Bool)

(declare-fun tp!1603251 () Bool)

(declare-fun tp!1603252 () Bool)

(assert (=> b!5809177 (= e!3565932 (and tp!1603251 tp!1603252))))

(assert (=> b!5808293 (= tp!1603147 e!3565932)))

(assert (= (and b!5808293 ((_ is Cons!63644) (exprs!5707 (h!70093 zl!343)))) b!5809177))

(declare-fun b!5809178 () Bool)

(declare-fun e!3565933 () Bool)

(assert (=> b!5809178 (= e!3565933 tp_is_empty!40899)))

(declare-fun b!5809181 () Bool)

(declare-fun tp!1603256 () Bool)

(declare-fun tp!1603253 () Bool)

(assert (=> b!5809181 (= e!3565933 (and tp!1603256 tp!1603253))))

(declare-fun b!5809179 () Bool)

(declare-fun tp!1603255 () Bool)

(declare-fun tp!1603254 () Bool)

(assert (=> b!5809179 (= e!3565933 (and tp!1603255 tp!1603254))))

(assert (=> b!5808301 (= tp!1603148 e!3565933)))

(declare-fun b!5809180 () Bool)

(declare-fun tp!1603257 () Bool)

(assert (=> b!5809180 (= e!3565933 tp!1603257)))

(assert (= (and b!5808301 ((_ is ElementMatch!15823) (regOne!32158 r!7292))) b!5809178))

(assert (= (and b!5808301 ((_ is Concat!24668) (regOne!32158 r!7292))) b!5809179))

(assert (= (and b!5808301 ((_ is Star!15823) (regOne!32158 r!7292))) b!5809180))

(assert (= (and b!5808301 ((_ is Union!15823) (regOne!32158 r!7292))) b!5809181))

(declare-fun b!5809182 () Bool)

(declare-fun e!3565934 () Bool)

(assert (=> b!5809182 (= e!3565934 tp_is_empty!40899)))

(declare-fun b!5809185 () Bool)

(declare-fun tp!1603261 () Bool)

(declare-fun tp!1603258 () Bool)

(assert (=> b!5809185 (= e!3565934 (and tp!1603261 tp!1603258))))

(declare-fun b!5809183 () Bool)

(declare-fun tp!1603260 () Bool)

(declare-fun tp!1603259 () Bool)

(assert (=> b!5809183 (= e!3565934 (and tp!1603260 tp!1603259))))

(assert (=> b!5808301 (= tp!1603141 e!3565934)))

(declare-fun b!5809184 () Bool)

(declare-fun tp!1603262 () Bool)

(assert (=> b!5809184 (= e!3565934 tp!1603262)))

(assert (= (and b!5808301 ((_ is ElementMatch!15823) (regTwo!32158 r!7292))) b!5809182))

(assert (= (and b!5808301 ((_ is Concat!24668) (regTwo!32158 r!7292))) b!5809183))

(assert (= (and b!5808301 ((_ is Star!15823) (regTwo!32158 r!7292))) b!5809184))

(assert (= (and b!5808301 ((_ is Union!15823) (regTwo!32158 r!7292))) b!5809185))

(declare-fun b!5809186 () Bool)

(declare-fun e!3565935 () Bool)

(declare-fun tp!1603263 () Bool)

(declare-fun tp!1603264 () Bool)

(assert (=> b!5809186 (= e!3565935 (and tp!1603263 tp!1603264))))

(assert (=> b!5808282 (= tp!1603139 e!3565935)))

(assert (= (and b!5808282 ((_ is Cons!63644) (exprs!5707 setElem!39098))) b!5809186))

(declare-fun b_lambda!218973 () Bool)

(assert (= b_lambda!218949 (or b!5808302 b_lambda!218973)))

(declare-fun bs!1371370 () Bool)

(declare-fun d!1829439 () Bool)

(assert (= bs!1371370 (and d!1829439 b!5808302)))

(assert (=> bs!1371370 (= (dynLambda!24917 lambda!317126 lt!2299409) (derivationStepZipperUp!1087 lt!2299409 (h!70094 s!2326)))))

(assert (=> bs!1371370 m!6747152))

(assert (=> d!1829269 d!1829439))

(declare-fun b_lambda!218975 () Bool)

(assert (= b_lambda!218953 (or b!5808302 b_lambda!218975)))

(declare-fun bs!1371371 () Bool)

(declare-fun d!1829441 () Bool)

(assert (= bs!1371371 (and d!1829441 b!5808302)))

(assert (=> bs!1371371 (= (dynLambda!24917 lambda!317126 lt!2299390) (derivationStepZipperUp!1087 lt!2299390 (h!70094 s!2326)))))

(assert (=> bs!1371371 m!6747162))

(assert (=> d!1829317 d!1829441))

(declare-fun b_lambda!218977 () Bool)

(assert (= b_lambda!218951 (or b!5808302 b_lambda!218977)))

(declare-fun bs!1371372 () Bool)

(declare-fun d!1829443 () Bool)

(assert (= bs!1371372 (and d!1829443 b!5808302)))

(assert (=> bs!1371372 (= (dynLambda!24917 lambda!317126 lt!2299392) (derivationStepZipperUp!1087 lt!2299392 (h!70094 s!2326)))))

(assert (=> bs!1371372 m!6747170))

(assert (=> d!1829313 d!1829443))

(declare-fun b_lambda!218979 () Bool)

(assert (= b_lambda!218971 (or b!5808302 b_lambda!218979)))

(declare-fun bs!1371373 () Bool)

(declare-fun d!1829445 () Bool)

(assert (= bs!1371373 (and d!1829445 b!5808302)))

(assert (=> bs!1371373 (= (dynLambda!24917 lambda!317126 (h!70093 zl!343)) (derivationStepZipperUp!1087 (h!70093 zl!343) (h!70094 s!2326)))))

(assert (=> bs!1371373 m!6747080))

(assert (=> d!1829399 d!1829445))

(check-sat (not b!5808555) (not b!5808771) (not b!5809184) (not b!5809186) (not b!5808736) (not d!1829249) (not b_lambda!218973) (not b!5808769) (not b_lambda!218975) tp_is_empty!40899 (not bm!453557) (not bm!453531) (not b!5808689) (not bs!1371372) (not d!1829343) (not bm!453564) (not d!1829309) (not b!5809040) (not b!5808907) (not bm!453547) (not b!5809148) (not b!5808697) (not b!5808716) (not b!5809067) (not b!5808949) (not b!5809181) (not setNonEmpty!39104) (not b!5809065) (not b!5808978) (not b!5808937) (not bm!453554) (not b!5809180) (not b!5808858) (not b!5808862) (not b!5808945) (not d!1829379) (not b!5808974) (not b!5809146) (not d!1829409) (not bm!453556) (not d!1829315) (not b!5808947) (not bm!453536) (not b!5809114) (not d!1829299) (not b!5808825) (not b!5809050) (not b!5809055) (not d!1829377) (not b!5808977) (not d!1829391) (not bm!453567) (not b!5809070) (not b!5808941) (not b!5809177) (not bm!453523) (not b!5808972) (not b!5809149) (not bm!453535) (not d!1829437) (not b!5809183) (not b!5809033) (not b!5809111) (not bm!453527) (not d!1829375) (not b!5808939) (not bm!453533) (not b!5809116) (not d!1829281) (not b!5809025) (not b!5809109) (not d!1829419) (not b!5808692) (not b!5808975) (not d!1829405) (not b!5809061) (not d!1829415) (not d!1829429) (not bm!453490) (not d!1829323) (not b!5809058) (not b!5809144) (not bm!453485) (not b!5809036) (not b!5809112) (not b!5808859) (not d!1829395) (not b!5808718) (not b!5809066) (not b!5809041) (not b!5809045) (not d!1829313) (not d!1829269) (not bm!453524) (not d!1829277) (not d!1829433) (not b!5809185) (not b!5808512) (not d!1829393) (not b!5809110) (not d!1829261) (not bm!453483) (not b!5809030) (not d!1829427) (not b!5808553) (not b!5808853) (not d!1829279) (not b!5808980) (not b!5809153) (not b!5809161) (not bs!1371371) (not b!5808734) (not b!5808701) (not b!5808696) (not d!1829403) (not b!5808698) (not b_lambda!218979) (not d!1829275) (not bm!453562) (not b!5809162) (not b!5809179) (not b!5808989) (not b!5808979) (not b!5808857) (not b!5809145) (not d!1829307) (not b!5808944) (not b!5809154) (not bm!453487) (not bs!1371373) (not d!1829399) (not b!5809150) (not b!5808824) (not d!1829401) (not d!1829411) (not bm!453566) (not d!1829425) (not b!5809131) (not bm!453565) (not d!1829351) (not d!1829423) (not d!1829317) (not bs!1371370) (not b_lambda!218977) (not d!1829417) (not b!5808985) (not b!5809130) (not bm!453563) (not b!5808822) (not b!5808821) (not b!5809042) (not d!1829431) (not b!5809167) (not b!5809172) (not b!5809152) (not b!5808762) (not b!5808850) (not b!5808942) (not b!5808943))
(check-sat)
