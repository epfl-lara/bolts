; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!681886 () Bool)

(assert start!681886)

(declare-fun b!7045277 () Bool)

(assert (=> b!7045277 true))

(declare-fun b!7045271 () Bool)

(assert (=> b!7045271 true))

(declare-fun b!7045278 () Bool)

(assert (=> b!7045278 true))

(declare-fun b!7045258 () Bool)

(declare-fun e!4235379 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35272 0))(
  ( (C!35273 (val!27338 Int)) )
))
(declare-datatypes ((Regex!17501 0))(
  ( (ElementMatch!17501 (c!1311789 C!35272)) (Concat!26346 (regOne!35514 Regex!17501) (regTwo!35514 Regex!17501)) (EmptyExpr!17501) (Star!17501 (reg!17830 Regex!17501)) (EmptyLang!17501) (Union!17501 (regOne!35515 Regex!17501) (regTwo!35515 Regex!17501)) )
))
(declare-datatypes ((List!68031 0))(
  ( (Nil!67907) (Cons!67907 (h!74355 Regex!17501) (t!381806 List!68031)) )
))
(declare-datatypes ((Context!12994 0))(
  ( (Context!12995 (exprs!6997 List!68031)) )
))
(declare-fun lt!2526543 () (InoxSet Context!12994))

(declare-datatypes ((List!68032 0))(
  ( (Nil!67908) (Cons!67908 (h!74356 C!35272) (t!381807 List!68032)) )
))
(declare-datatypes ((tuple2!68140 0))(
  ( (tuple2!68141 (_1!37373 List!68032) (_2!37373 List!68032)) )
))
(declare-fun lt!2526535 () tuple2!68140)

(declare-fun matchZipper!3041 ((InoxSet Context!12994) List!68032) Bool)

(assert (=> b!7045258 (= e!4235379 (not (matchZipper!3041 lt!2526543 (_1!37373 lt!2526535))))))

(declare-fun b!7045259 () Bool)

(declare-fun res!2876169 () Bool)

(declare-fun e!4235384 () Bool)

(assert (=> b!7045259 (=> res!2876169 e!4235384)))

(declare-fun lt!2526532 () Bool)

(assert (=> b!7045259 (= res!2876169 (not lt!2526532))))

(declare-fun b!7045260 () Bool)

(declare-fun e!4235375 () Bool)

(assert (=> b!7045260 (= e!4235375 e!4235384)))

(declare-fun res!2876153 () Bool)

(assert (=> b!7045260 (=> res!2876153 e!4235384)))

(assert (=> b!7045260 (= res!2876153 e!4235379)))

(declare-fun res!2876158 () Bool)

(assert (=> b!7045260 (=> (not res!2876158) (not e!4235379))))

(assert (=> b!7045260 (= res!2876158 (not lt!2526532))))

(declare-fun lt!2526554 () (InoxSet Context!12994))

(declare-fun lt!2526524 () List!68032)

(assert (=> b!7045260 (= lt!2526532 (matchZipper!3041 lt!2526554 lt!2526524))))

(declare-fun s!7408 () List!68032)

(assert (=> b!7045260 (= lt!2526524 (Cons!67908 (h!74356 s!7408) (_1!37373 lt!2526535)))))

(declare-fun lt!2526538 () (InoxSet Context!12994))

(assert (=> b!7045260 (matchZipper!3041 lt!2526538 (_1!37373 lt!2526535))))

(declare-fun lt!2526520 () (InoxSet Context!12994))

(declare-datatypes ((Unit!161686 0))(
  ( (Unit!161687) )
))
(declare-fun lt!2526527 () Unit!161686)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1574 ((InoxSet Context!12994) (InoxSet Context!12994) List!68032) Unit!161686)

(assert (=> b!7045260 (= lt!2526527 (lemmaZipperConcatMatchesSameAsBothZippers!1574 lt!2526520 lt!2526543 (_1!37373 lt!2526535)))))

(declare-fun b!7045261 () Bool)

(declare-fun res!2876167 () Bool)

(declare-fun e!4235371 () Bool)

(assert (=> b!7045261 (=> res!2876167 e!4235371)))

(declare-fun lt!2526518 () Bool)

(assert (=> b!7045261 (= res!2876167 (not lt!2526518))))

(declare-fun b!7045262 () Bool)

(declare-fun e!4235367 () Bool)

(declare-fun e!4235369 () Bool)

(assert (=> b!7045262 (= e!4235367 e!4235369)))

(declare-fun res!2876171 () Bool)

(assert (=> b!7045262 (=> res!2876171 e!4235369)))

(declare-fun lt!2526533 () (InoxSet Context!12994))

(declare-fun lt!2526530 () (InoxSet Context!12994))

(assert (=> b!7045262 (= res!2876171 (not (= lt!2526533 lt!2526530)))))

(declare-fun lt!2526511 () Context!12994)

(assert (=> b!7045262 (= lt!2526533 (store ((as const (Array Context!12994 Bool)) false) lt!2526511 true))))

(declare-fun lambda!417629 () Int)

(declare-fun ct2!306 () Context!12994)

(declare-fun lt!2526519 () Context!12994)

(declare-fun lt!2526526 () Unit!161686)

(declare-fun lemmaConcatPreservesForall!822 (List!68031 List!68031 Int) Unit!161686)

(assert (=> b!7045262 (= lt!2526526 (lemmaConcatPreservesForall!822 (exprs!6997 lt!2526519) (exprs!6997 ct2!306) lambda!417629))))

(declare-fun b!7045263 () Bool)

(declare-fun res!2876149 () Bool)

(declare-fun e!4235373 () Bool)

(assert (=> b!7045263 (=> res!2876149 e!4235373)))

(declare-fun isEmpty!39633 (List!68031) Bool)

(assert (=> b!7045263 (= res!2876149 (isEmpty!39633 (exprs!6997 lt!2526519)))))

(declare-fun b!7045264 () Bool)

(declare-fun e!4235381 () Bool)

(assert (=> b!7045264 (= e!4235381 e!4235375)))

(declare-fun res!2876150 () Bool)

(assert (=> b!7045264 (=> res!2876150 e!4235375)))

(declare-fun lt!2526515 () (InoxSet Context!12994))

(assert (=> b!7045264 (= res!2876150 (not (= lt!2526515 lt!2526538)))))

(assert (=> b!7045264 (= lt!2526538 ((_ map or) lt!2526520 lt!2526543))))

(declare-fun lt!2526558 () Context!12994)

(declare-fun derivationStepZipperUp!2111 (Context!12994 C!35272) (InoxSet Context!12994))

(assert (=> b!7045264 (= lt!2526543 (derivationStepZipperUp!2111 lt!2526558 (h!74356 s!7408)))))

(declare-fun b!7045265 () Bool)

(declare-fun res!2876170 () Bool)

(assert (=> b!7045265 (=> res!2876170 e!4235373)))

(get-info :version)

(assert (=> b!7045265 (= res!2876170 (not ((_ is Cons!67907) (exprs!6997 lt!2526519))))))

(declare-fun b!7045266 () Bool)

(declare-fun e!4235365 () Bool)

(declare-fun tp!1937872 () Bool)

(assert (=> b!7045266 (= e!4235365 tp!1937872)))

(declare-fun b!7045267 () Bool)

(declare-fun e!4235370 () Bool)

(declare-fun e!4235377 () Bool)

(assert (=> b!7045267 (= e!4235370 e!4235377)))

(declare-fun res!2876159 () Bool)

(assert (=> b!7045267 (=> res!2876159 e!4235377)))

(assert (=> b!7045267 (= res!2876159 (not (matchZipper!3041 lt!2526520 (_1!37373 lt!2526535))))))

(declare-datatypes ((Option!16902 0))(
  ( (None!16901) (Some!16901 (v!53191 tuple2!68140)) )
))
(declare-fun lt!2526512 () Option!16902)

(declare-fun get!23803 (Option!16902) tuple2!68140)

(assert (=> b!7045267 (= lt!2526535 (get!23803 lt!2526512))))

(declare-fun isDefined!13603 (Option!16902) Bool)

(assert (=> b!7045267 (isDefined!13603 lt!2526512)))

(declare-fun lt!2526549 () (InoxSet Context!12994))

(declare-fun findConcatSeparationZippers!418 ((InoxSet Context!12994) (InoxSet Context!12994) List!68032 List!68032 List!68032) Option!16902)

(assert (=> b!7045267 (= lt!2526512 (findConcatSeparationZippers!418 lt!2526520 lt!2526549 Nil!67908 (t!381807 s!7408) (t!381807 s!7408)))))

(assert (=> b!7045267 (= lt!2526549 (store ((as const (Array Context!12994 Bool)) false) ct2!306 true))))

(declare-fun lt!2526553 () Unit!161686)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!406 ((InoxSet Context!12994) Context!12994 List!68032) Unit!161686)

(assert (=> b!7045267 (= lt!2526553 (lemmaConcatZipperMatchesStringThenFindConcatDefined!406 lt!2526520 ct2!306 (t!381807 s!7408)))))

(declare-fun lt!2526528 () Unit!161686)

(declare-fun lt!2526517 () List!68031)

(assert (=> b!7045267 (= lt!2526528 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun lt!2526534 () (InoxSet Context!12994))

(declare-fun appendTo!622 ((InoxSet Context!12994) Context!12994) (InoxSet Context!12994))

(assert (=> b!7045267 (= lt!2526534 (appendTo!622 lt!2526520 ct2!306))))

(declare-fun derivationStepZipperDown!2165 (Regex!17501 Context!12994 C!35272) (InoxSet Context!12994))

(assert (=> b!7045267 (= lt!2526520 (derivationStepZipperDown!2165 (h!74355 (exprs!6997 lt!2526519)) lt!2526558 (h!74356 s!7408)))))

(declare-fun lt!2526556 () Unit!161686)

(assert (=> b!7045267 (= lt!2526556 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun lt!2526522 () Unit!161686)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!80 (Context!12994 Regex!17501 C!35272 Context!12994) Unit!161686)

(assert (=> b!7045267 (= lt!2526522 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!80 lt!2526558 (h!74355 (exprs!6997 lt!2526519)) (h!74356 s!7408) ct2!306))))

(declare-fun setNonEmpty!49428 () Bool)

(declare-fun setRes!49428 () Bool)

(declare-fun setElem!49428 () Context!12994)

(declare-fun tp!1937875 () Bool)

(declare-fun e!4235366 () Bool)

(declare-fun inv!86611 (Context!12994) Bool)

(assert (=> setNonEmpty!49428 (= setRes!49428 (and tp!1937875 (inv!86611 setElem!49428) e!4235366))))

(declare-fun z1!570 () (InoxSet Context!12994))

(declare-fun setRest!49428 () (InoxSet Context!12994))

(assert (=> setNonEmpty!49428 (= z1!570 ((_ map or) (store ((as const (Array Context!12994 Bool)) false) setElem!49428 true) setRest!49428))))

(declare-fun b!7045269 () Bool)

(declare-fun res!2876152 () Bool)

(assert (=> b!7045269 (=> res!2876152 e!4235377)))

(declare-fun ++!15577 (List!68032 List!68032) List!68032)

(assert (=> b!7045269 (= res!2876152 (not (= (++!15577 (_1!37373 lt!2526535) (_2!37373 lt!2526535)) (t!381807 s!7408))))))

(declare-fun b!7045270 () Bool)

(declare-fun e!4235368 () Bool)

(declare-fun lt!2526525 () (InoxSet Context!12994))

(assert (=> b!7045270 (= e!4235368 (not (matchZipper!3041 lt!2526525 (t!381807 s!7408))))))

(declare-fun lt!2526539 () Unit!161686)

(assert (=> b!7045270 (= lt!2526539 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun e!4235380 () Bool)

(assert (=> b!7045271 (= e!4235380 e!4235367)))

(declare-fun res!2876160 () Bool)

(assert (=> b!7045271 (=> res!2876160 e!4235367)))

(declare-fun lt!2526551 () Context!12994)

(assert (=> b!7045271 (= res!2876160 (or (not (= lt!2526511 lt!2526551)) (not (select z1!570 lt!2526519))))))

(declare-fun ++!15578 (List!68031 List!68031) List!68031)

(assert (=> b!7045271 (= lt!2526511 (Context!12995 (++!15578 (exprs!6997 lt!2526519) (exprs!6997 ct2!306))))))

(declare-fun lt!2526521 () Unit!161686)

(assert (=> b!7045271 (= lt!2526521 (lemmaConcatPreservesForall!822 (exprs!6997 lt!2526519) (exprs!6997 ct2!306) lambda!417629))))

(declare-fun lambda!417628 () Int)

(declare-fun mapPost2!342 ((InoxSet Context!12994) Int Context!12994) Context!12994)

(assert (=> b!7045271 (= lt!2526519 (mapPost2!342 z1!570 lambda!417628 lt!2526551))))

(declare-fun b!7045272 () Bool)

(declare-fun res!2876172 () Bool)

(assert (=> b!7045272 (=> res!2876172 e!4235377)))

(assert (=> b!7045272 (= res!2876172 (not (matchZipper!3041 lt!2526549 (_2!37373 lt!2526535))))))

(declare-fun b!7045273 () Bool)

(declare-fun e!4235383 () Bool)

(declare-fun e!4235372 () Bool)

(assert (=> b!7045273 (= e!4235383 e!4235372)))

(declare-fun res!2876157 () Bool)

(assert (=> b!7045273 (=> res!2876157 e!4235372)))

(declare-fun lt!2526531 () (InoxSet Context!12994))

(declare-fun lt!2526548 () (InoxSet Context!12994))

(assert (=> b!7045273 (= res!2876157 (not (= lt!2526531 lt!2526548)))))

(assert (=> b!7045273 (= lt!2526548 ((_ map or) lt!2526534 lt!2526525))))

(declare-fun lt!2526537 () Context!12994)

(assert (=> b!7045273 (= lt!2526525 (derivationStepZipperUp!2111 lt!2526537 (h!74356 s!7408)))))

(assert (=> b!7045273 (= lt!2526534 (derivationStepZipperDown!2165 (h!74355 (exprs!6997 lt!2526519)) lt!2526537 (h!74356 s!7408)))))

(assert (=> b!7045273 (= lt!2526537 (Context!12995 (++!15578 lt!2526517 (exprs!6997 ct2!306))))))

(declare-fun lt!2526510 () Unit!161686)

(assert (=> b!7045273 (= lt!2526510 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun lt!2526542 () Unit!161686)

(assert (=> b!7045273 (= lt!2526542 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun b!7045274 () Bool)

(declare-fun e!4235374 () Bool)

(assert (=> b!7045274 (= e!4235371 e!4235374)))

(declare-fun res!2876164 () Bool)

(assert (=> b!7045274 (=> res!2876164 e!4235374)))

(assert (=> b!7045274 (= res!2876164 (matchZipper!3041 lt!2526525 (t!381807 s!7408)))))

(declare-fun lt!2526552 () Unit!161686)

(assert (=> b!7045274 (= lt!2526552 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun b!7045275 () Bool)

(assert (=> b!7045275 (= e!4235372 e!4235371)))

(declare-fun res!2876156 () Bool)

(assert (=> b!7045275 (=> res!2876156 e!4235371)))

(assert (=> b!7045275 (= res!2876156 e!4235368)))

(declare-fun res!2876148 () Bool)

(assert (=> b!7045275 (=> (not res!2876148) (not e!4235368))))

(declare-fun lt!2526516 () Bool)

(assert (=> b!7045275 (= res!2876148 (not (= lt!2526518 lt!2526516)))))

(assert (=> b!7045275 (= lt!2526518 (matchZipper!3041 lt!2526531 (t!381807 s!7408)))))

(declare-fun lt!2526555 () Unit!161686)

(assert (=> b!7045275 (= lt!2526555 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun e!4235382 () Bool)

(assert (=> b!7045275 (= (matchZipper!3041 lt!2526548 (t!381807 s!7408)) e!4235382)))

(declare-fun res!2876154 () Bool)

(assert (=> b!7045275 (=> res!2876154 e!4235382)))

(assert (=> b!7045275 (= res!2876154 lt!2526516)))

(assert (=> b!7045275 (= lt!2526516 (matchZipper!3041 lt!2526534 (t!381807 s!7408)))))

(declare-fun lt!2526529 () Unit!161686)

(assert (=> b!7045275 (= lt!2526529 (lemmaZipperConcatMatchesSameAsBothZippers!1574 lt!2526534 lt!2526525 (t!381807 s!7408)))))

(declare-fun lt!2526536 () Unit!161686)

(assert (=> b!7045275 (= lt!2526536 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun lt!2526545 () Unit!161686)

(assert (=> b!7045275 (= lt!2526545 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun b!7045276 () Bool)

(assert (=> b!7045276 (= e!4235382 (matchZipper!3041 lt!2526525 (t!381807 s!7408)))))

(declare-fun e!4235376 () Bool)

(assert (=> b!7045277 (= e!4235376 (not e!4235380))))

(declare-fun res!2876161 () Bool)

(assert (=> b!7045277 (=> res!2876161 e!4235380)))

(assert (=> b!7045277 (= res!2876161 (not (matchZipper!3041 lt!2526530 s!7408)))))

(assert (=> b!7045277 (= lt!2526530 (store ((as const (Array Context!12994 Bool)) false) lt!2526551 true))))

(declare-fun lt!2526546 () (InoxSet Context!12994))

(declare-fun lambda!417627 () Int)

(declare-fun getWitness!1532 ((InoxSet Context!12994) Int) Context!12994)

(assert (=> b!7045277 (= lt!2526551 (getWitness!1532 lt!2526546 lambda!417627))))

(declare-datatypes ((List!68033 0))(
  ( (Nil!67909) (Cons!67909 (h!74357 Context!12994) (t!381808 List!68033)) )
))
(declare-fun lt!2526544 () List!68033)

(declare-fun exists!3453 (List!68033 Int) Bool)

(assert (=> b!7045277 (exists!3453 lt!2526544 lambda!417627)))

(declare-fun lt!2526513 () Unit!161686)

(declare-fun lemmaZipperMatchesExistsMatchingContext!440 (List!68033 List!68032) Unit!161686)

(assert (=> b!7045277 (= lt!2526513 (lemmaZipperMatchesExistsMatchingContext!440 lt!2526544 s!7408))))

(declare-fun toList!10844 ((InoxSet Context!12994)) List!68033)

(assert (=> b!7045277 (= lt!2526544 (toList!10844 lt!2526546))))

(assert (=> b!7045278 (= e!4235369 e!4235373)))

(declare-fun res!2876162 () Bool)

(assert (=> b!7045278 (=> res!2876162 e!4235373)))

(declare-fun derivationStepZipper!2957 ((InoxSet Context!12994) C!35272) (InoxSet Context!12994))

(assert (=> b!7045278 (= res!2876162 (not (= (derivationStepZipper!2957 lt!2526533 (h!74356 s!7408)) lt!2526531)))))

(declare-fun lambda!417630 () Int)

(declare-fun flatMap!2448 ((InoxSet Context!12994) Int) (InoxSet Context!12994))

(assert (=> b!7045278 (= (flatMap!2448 lt!2526533 lambda!417630) (derivationStepZipperUp!2111 lt!2526511 (h!74356 s!7408)))))

(declare-fun lt!2526514 () Unit!161686)

(declare-fun lemmaFlatMapOnSingletonSet!1962 ((InoxSet Context!12994) Context!12994 Int) Unit!161686)

(assert (=> b!7045278 (= lt!2526514 (lemmaFlatMapOnSingletonSet!1962 lt!2526533 lt!2526511 lambda!417630))))

(assert (=> b!7045278 (= lt!2526531 (derivationStepZipperUp!2111 lt!2526511 (h!74356 s!7408)))))

(declare-fun lt!2526557 () Unit!161686)

(assert (=> b!7045278 (= lt!2526557 (lemmaConcatPreservesForall!822 (exprs!6997 lt!2526519) (exprs!6997 ct2!306) lambda!417629))))

(declare-fun b!7045279 () Bool)

(declare-fun res!2876151 () Bool)

(assert (=> b!7045279 (=> res!2876151 e!4235380)))

(assert (=> b!7045279 (= res!2876151 (not (select lt!2526546 lt!2526551)))))

(declare-fun b!7045280 () Bool)

(assert (=> b!7045280 (= e!4235384 true)))

(assert (=> b!7045280 (isDefined!13603 (findConcatSeparationZippers!418 lt!2526554 lt!2526549 Nil!67908 s!7408 s!7408))))

(declare-fun lt!2526547 () Unit!161686)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!46 ((InoxSet Context!12994) (InoxSet Context!12994) List!68032 List!68032 List!68032 List!68032 List!68032) Unit!161686)

(assert (=> b!7045280 (= lt!2526547 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!46 lt!2526554 lt!2526549 lt!2526524 (_2!37373 lt!2526535) s!7408 Nil!67908 s!7408))))

(declare-fun b!7045268 () Bool)

(assert (=> b!7045268 (= e!4235373 e!4235383)))

(declare-fun res!2876163 () Bool)

(assert (=> b!7045268 (=> res!2876163 e!4235383)))

(declare-fun nullable!7212 (Regex!17501) Bool)

(assert (=> b!7045268 (= res!2876163 (not (nullable!7212 (h!74355 (exprs!6997 lt!2526519)))))))

(assert (=> b!7045268 (= lt!2526558 (Context!12995 lt!2526517))))

(declare-fun tail!13617 (List!68031) List!68031)

(assert (=> b!7045268 (= lt!2526517 (tail!13617 (exprs!6997 lt!2526519)))))

(declare-fun res!2876168 () Bool)

(assert (=> start!681886 (=> (not res!2876168) (not e!4235376))))

(assert (=> start!681886 (= res!2876168 (matchZipper!3041 lt!2526546 s!7408))))

(assert (=> start!681886 (= lt!2526546 (appendTo!622 z1!570 ct2!306))))

(assert (=> start!681886 e!4235376))

(declare-fun condSetEmpty!49428 () Bool)

(assert (=> start!681886 (= condSetEmpty!49428 (= z1!570 ((as const (Array Context!12994 Bool)) false)))))

(assert (=> start!681886 setRes!49428))

(assert (=> start!681886 (and (inv!86611 ct2!306) e!4235365)))

(declare-fun e!4235378 () Bool)

(assert (=> start!681886 e!4235378))

(declare-fun b!7045281 () Bool)

(declare-fun res!2876155 () Bool)

(assert (=> b!7045281 (=> (not res!2876155) (not e!4235376))))

(assert (=> b!7045281 (= res!2876155 ((_ is Cons!67908) s!7408))))

(declare-fun b!7045282 () Bool)

(declare-fun tp_is_empty!44227 () Bool)

(declare-fun tp!1937874 () Bool)

(assert (=> b!7045282 (= e!4235378 (and tp_is_empty!44227 tp!1937874))))

(declare-fun b!7045283 () Bool)

(assert (=> b!7045283 (= e!4235377 e!4235381)))

(declare-fun res!2876165 () Bool)

(assert (=> b!7045283 (=> res!2876165 e!4235381)))

(declare-fun lt!2526540 () (InoxSet Context!12994))

(assert (=> b!7045283 (= res!2876165 (not (= lt!2526515 lt!2526540)))))

(assert (=> b!7045283 (= (flatMap!2448 lt!2526554 lambda!417630) (derivationStepZipperUp!2111 lt!2526519 (h!74356 s!7408)))))

(declare-fun lt!2526541 () Unit!161686)

(assert (=> b!7045283 (= lt!2526541 (lemmaFlatMapOnSingletonSet!1962 lt!2526554 lt!2526519 lambda!417630))))

(assert (=> b!7045283 (= lt!2526540 (derivationStepZipperUp!2111 lt!2526519 (h!74356 s!7408)))))

(assert (=> b!7045283 (= lt!2526515 (derivationStepZipper!2957 lt!2526554 (h!74356 s!7408)))))

(assert (=> b!7045283 (= lt!2526554 (store ((as const (Array Context!12994 Bool)) false) lt!2526519 true))))

(declare-fun b!7045284 () Bool)

(assert (=> b!7045284 (= e!4235374 e!4235370)))

(declare-fun res!2876166 () Bool)

(assert (=> b!7045284 (=> res!2876166 e!4235370)))

(assert (=> b!7045284 (= res!2876166 (not lt!2526516))))

(declare-fun lt!2526550 () Unit!161686)

(assert (=> b!7045284 (= lt!2526550 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun lt!2526523 () Unit!161686)

(assert (=> b!7045284 (= lt!2526523 (lemmaConcatPreservesForall!822 lt!2526517 (exprs!6997 ct2!306) lambda!417629))))

(declare-fun setIsEmpty!49428 () Bool)

(assert (=> setIsEmpty!49428 setRes!49428))

(declare-fun b!7045285 () Bool)

(declare-fun tp!1937873 () Bool)

(assert (=> b!7045285 (= e!4235366 tp!1937873)))

(assert (= (and start!681886 res!2876168) b!7045281))

(assert (= (and b!7045281 res!2876155) b!7045277))

(assert (= (and b!7045277 (not res!2876161)) b!7045279))

(assert (= (and b!7045279 (not res!2876151)) b!7045271))

(assert (= (and b!7045271 (not res!2876160)) b!7045262))

(assert (= (and b!7045262 (not res!2876171)) b!7045278))

(assert (= (and b!7045278 (not res!2876162)) b!7045265))

(assert (= (and b!7045265 (not res!2876170)) b!7045263))

(assert (= (and b!7045263 (not res!2876149)) b!7045268))

(assert (= (and b!7045268 (not res!2876163)) b!7045273))

(assert (= (and b!7045273 (not res!2876157)) b!7045275))

(assert (= (and b!7045275 (not res!2876154)) b!7045276))

(assert (= (and b!7045275 res!2876148) b!7045270))

(assert (= (and b!7045275 (not res!2876156)) b!7045261))

(assert (= (and b!7045261 (not res!2876167)) b!7045274))

(assert (= (and b!7045274 (not res!2876164)) b!7045284))

(assert (= (and b!7045284 (not res!2876166)) b!7045267))

(assert (= (and b!7045267 (not res!2876159)) b!7045272))

(assert (= (and b!7045272 (not res!2876172)) b!7045269))

(assert (= (and b!7045269 (not res!2876152)) b!7045283))

(assert (= (and b!7045283 (not res!2876165)) b!7045264))

(assert (= (and b!7045264 (not res!2876150)) b!7045260))

(assert (= (and b!7045260 res!2876158) b!7045258))

(assert (= (and b!7045260 (not res!2876153)) b!7045259))

(assert (= (and b!7045259 (not res!2876169)) b!7045280))

(assert (= (and start!681886 condSetEmpty!49428) setIsEmpty!49428))

(assert (= (and start!681886 (not condSetEmpty!49428)) setNonEmpty!49428))

(assert (= setNonEmpty!49428 b!7045285))

(assert (= start!681886 b!7045266))

(assert (= (and start!681886 ((_ is Cons!67908) s!7408)) b!7045282))

(declare-fun m!7758758 () Bool)

(assert (=> b!7045273 m!7758758))

(declare-fun m!7758760 () Bool)

(assert (=> b!7045273 m!7758760))

(declare-fun m!7758762 () Bool)

(assert (=> b!7045273 m!7758762))

(assert (=> b!7045273 m!7758762))

(declare-fun m!7758764 () Bool)

(assert (=> b!7045273 m!7758764))

(assert (=> b!7045267 m!7758762))

(declare-fun m!7758766 () Bool)

(assert (=> b!7045267 m!7758766))

(declare-fun m!7758768 () Bool)

(assert (=> b!7045267 m!7758768))

(declare-fun m!7758770 () Bool)

(assert (=> b!7045267 m!7758770))

(declare-fun m!7758772 () Bool)

(assert (=> b!7045267 m!7758772))

(assert (=> b!7045267 m!7758762))

(declare-fun m!7758774 () Bool)

(assert (=> b!7045267 m!7758774))

(declare-fun m!7758776 () Bool)

(assert (=> b!7045267 m!7758776))

(declare-fun m!7758778 () Bool)

(assert (=> b!7045267 m!7758778))

(declare-fun m!7758780 () Bool)

(assert (=> b!7045267 m!7758780))

(declare-fun m!7758782 () Bool)

(assert (=> b!7045267 m!7758782))

(declare-fun m!7758784 () Bool)

(assert (=> b!7045272 m!7758784))

(declare-fun m!7758786 () Bool)

(assert (=> b!7045262 m!7758786))

(declare-fun m!7758788 () Bool)

(assert (=> b!7045262 m!7758788))

(declare-fun m!7758790 () Bool)

(assert (=> b!7045269 m!7758790))

(declare-fun m!7758792 () Bool)

(assert (=> b!7045258 m!7758792))

(declare-fun m!7758794 () Bool)

(assert (=> b!7045279 m!7758794))

(declare-fun m!7758796 () Bool)

(assert (=> b!7045264 m!7758796))

(assert (=> b!7045284 m!7758762))

(assert (=> b!7045284 m!7758762))

(declare-fun m!7758798 () Bool)

(assert (=> b!7045276 m!7758798))

(declare-fun m!7758800 () Bool)

(assert (=> b!7045260 m!7758800))

(declare-fun m!7758802 () Bool)

(assert (=> b!7045260 m!7758802))

(declare-fun m!7758804 () Bool)

(assert (=> b!7045260 m!7758804))

(assert (=> b!7045274 m!7758798))

(assert (=> b!7045274 m!7758762))

(declare-fun m!7758806 () Bool)

(assert (=> b!7045283 m!7758806))

(declare-fun m!7758808 () Bool)

(assert (=> b!7045283 m!7758808))

(declare-fun m!7758810 () Bool)

(assert (=> b!7045283 m!7758810))

(declare-fun m!7758812 () Bool)

(assert (=> b!7045283 m!7758812))

(declare-fun m!7758814 () Bool)

(assert (=> b!7045283 m!7758814))

(declare-fun m!7758816 () Bool)

(assert (=> b!7045275 m!7758816))

(declare-fun m!7758818 () Bool)

(assert (=> b!7045275 m!7758818))

(declare-fun m!7758820 () Bool)

(assert (=> b!7045275 m!7758820))

(assert (=> b!7045275 m!7758762))

(assert (=> b!7045275 m!7758762))

(declare-fun m!7758822 () Bool)

(assert (=> b!7045275 m!7758822))

(assert (=> b!7045275 m!7758762))

(declare-fun m!7758824 () Bool)

(assert (=> b!7045280 m!7758824))

(assert (=> b!7045280 m!7758824))

(declare-fun m!7758826 () Bool)

(assert (=> b!7045280 m!7758826))

(declare-fun m!7758828 () Bool)

(assert (=> b!7045280 m!7758828))

(declare-fun m!7758830 () Bool)

(assert (=> b!7045277 m!7758830))

(declare-fun m!7758832 () Bool)

(assert (=> b!7045277 m!7758832))

(declare-fun m!7758834 () Bool)

(assert (=> b!7045277 m!7758834))

(declare-fun m!7758836 () Bool)

(assert (=> b!7045277 m!7758836))

(declare-fun m!7758838 () Bool)

(assert (=> b!7045277 m!7758838))

(declare-fun m!7758840 () Bool)

(assert (=> b!7045277 m!7758840))

(declare-fun m!7758842 () Bool)

(assert (=> b!7045278 m!7758842))

(declare-fun m!7758844 () Bool)

(assert (=> b!7045278 m!7758844))

(assert (=> b!7045278 m!7758788))

(declare-fun m!7758846 () Bool)

(assert (=> b!7045278 m!7758846))

(declare-fun m!7758848 () Bool)

(assert (=> b!7045278 m!7758848))

(declare-fun m!7758850 () Bool)

(assert (=> setNonEmpty!49428 m!7758850))

(declare-fun m!7758852 () Bool)

(assert (=> start!681886 m!7758852))

(declare-fun m!7758854 () Bool)

(assert (=> start!681886 m!7758854))

(declare-fun m!7758856 () Bool)

(assert (=> start!681886 m!7758856))

(declare-fun m!7758858 () Bool)

(assert (=> b!7045271 m!7758858))

(declare-fun m!7758860 () Bool)

(assert (=> b!7045271 m!7758860))

(assert (=> b!7045271 m!7758788))

(declare-fun m!7758862 () Bool)

(assert (=> b!7045271 m!7758862))

(assert (=> b!7045270 m!7758798))

(assert (=> b!7045270 m!7758762))

(declare-fun m!7758864 () Bool)

(assert (=> b!7045268 m!7758864))

(declare-fun m!7758866 () Bool)

(assert (=> b!7045268 m!7758866))

(declare-fun m!7758868 () Bool)

(assert (=> b!7045263 m!7758868))

(check-sat (not b!7045267) (not b!7045285) (not b!7045263) (not b!7045264) (not b!7045272) (not b!7045269) (not b!7045275) (not b!7045280) (not b!7045268) (not b!7045273) (not b!7045270) (not b!7045274) (not b!7045276) (not b!7045282) (not b!7045258) (not b!7045260) (not b!7045271) (not b!7045284) (not start!681886) (not b!7045266) (not b!7045262) (not b!7045278) (not b!7045283) (not b!7045277) (not setNonEmpty!49428) tp_is_empty!44227)
(check-sat)
