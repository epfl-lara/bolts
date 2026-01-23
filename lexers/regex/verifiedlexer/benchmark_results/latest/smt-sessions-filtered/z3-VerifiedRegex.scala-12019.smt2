; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674098 () Bool)

(assert start!674098)

(declare-fun b!7004389 () Bool)

(assert (=> b!7004389 true))

(declare-fun b!7004380 () Bool)

(assert (=> b!7004380 true))

(declare-fun b!7004378 () Bool)

(assert (=> b!7004378 true))

(declare-fun bs!1865195 () Bool)

(declare-fun b!7004372 () Bool)

(assert (= bs!1865195 (and b!7004372 b!7004389)))

(declare-fun lambda!406515 () Int)

(declare-fun lambda!406511 () Int)

(assert (=> bs!1865195 (not (= lambda!406515 lambda!406511))))

(declare-fun bs!1865196 () Bool)

(declare-fun b!7004388 () Bool)

(assert (= bs!1865196 (and b!7004388 b!7004389)))

(declare-fun lambda!406516 () Int)

(declare-datatypes ((C!34840 0))(
  ( (C!34841 (val!27122 Int)) )
))
(declare-datatypes ((List!67400 0))(
  ( (Nil!67276) (Cons!67276 (h!73724 C!34840) (t!381153 List!67400)) )
))
(declare-fun s!7408 () List!67400)

(declare-datatypes ((tuple2!67916 0))(
  ( (tuple2!67917 (_1!37261 List!67400) (_2!37261 List!67400)) )
))
(declare-fun lt!2499431 () tuple2!67916)

(assert (=> bs!1865196 (= (= (_1!37261 lt!2499431) s!7408) (= lambda!406516 lambda!406511))))

(declare-fun bs!1865197 () Bool)

(assert (= bs!1865197 (and b!7004388 b!7004372)))

(assert (=> bs!1865197 (not (= lambda!406516 lambda!406515))))

(assert (=> b!7004388 true))

(declare-fun b!7004370 () Bool)

(declare-fun e!4210200 () Bool)

(declare-fun e!4210218 () Bool)

(assert (=> b!7004370 (= e!4210200 e!4210218)))

(declare-fun res!2857674 () Bool)

(assert (=> b!7004370 (=> res!2857674 e!4210218)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17285 0))(
  ( (ElementMatch!17285 (c!1300589 C!34840)) (Concat!26130 (regOne!35082 Regex!17285) (regTwo!35082 Regex!17285)) (EmptyExpr!17285) (Star!17285 (reg!17614 Regex!17285)) (EmptyLang!17285) (Union!17285 (regOne!35083 Regex!17285) (regTwo!35083 Regex!17285)) )
))
(declare-datatypes ((List!67401 0))(
  ( (Nil!67277) (Cons!67277 (h!73725 Regex!17285) (t!381154 List!67401)) )
))
(declare-datatypes ((Context!12562 0))(
  ( (Context!12563 (exprs!6781 List!67401)) )
))
(declare-fun lt!2499417 () (InoxSet Context!12562))

(declare-fun lt!2499440 () (InoxSet Context!12562))

(declare-fun derivationStepZipper!2765 ((InoxSet Context!12562) C!34840) (InoxSet Context!12562))

(assert (=> b!7004370 (= res!2857674 (not (= (derivationStepZipper!2765 lt!2499440 (h!73724 s!7408)) lt!2499417)))))

(declare-fun lambda!406513 () Int)

(declare-fun lt!2499471 () List!67401)

(declare-datatypes ((Unit!161236 0))(
  ( (Unit!161237) )
))
(declare-fun lt!2499458 () Unit!161236)

(declare-fun ct2!306 () Context!12562)

(declare-fun lemmaConcatPreservesForall!621 (List!67401 List!67401 Int) Unit!161236)

(assert (=> b!7004370 (= lt!2499458 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lt!2499472 () Unit!161236)

(assert (=> b!7004370 (= lt!2499472 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lambda!406514 () Int)

(declare-fun lt!2499426 () Context!12562)

(declare-fun flatMap!2271 ((InoxSet Context!12562) Int) (InoxSet Context!12562))

(declare-fun derivationStepZipperUp!1935 (Context!12562 C!34840) (InoxSet Context!12562))

(assert (=> b!7004370 (= (flatMap!2271 lt!2499440 lambda!406514) (derivationStepZipperUp!1935 lt!2499426 (h!73724 s!7408)))))

(declare-fun lt!2499455 () Unit!161236)

(declare-fun lemmaFlatMapOnSingletonSet!1786 ((InoxSet Context!12562) Context!12562 Int) Unit!161236)

(assert (=> b!7004370 (= lt!2499455 (lemmaFlatMapOnSingletonSet!1786 lt!2499440 lt!2499426 lambda!406514))))

(assert (=> b!7004370 (= lt!2499440 (store ((as const (Array Context!12562 Bool)) false) lt!2499426 true))))

(declare-fun lt!2499430 () Unit!161236)

(assert (=> b!7004370 (= lt!2499430 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lt!2499416 () Unit!161236)

(assert (=> b!7004370 (= lt!2499416 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun b!7004371 () Bool)

(declare-fun e!4210207 () Bool)

(declare-fun lt!2499461 () (InoxSet Context!12562))

(declare-fun lt!2499420 () List!67400)

(declare-fun matchZipper!2825 ((InoxSet Context!12562) List!67400) Bool)

(assert (=> b!7004371 (= e!4210207 (matchZipper!2825 lt!2499461 lt!2499420))))

(declare-fun e!4210214 () Unit!161236)

(declare-fun Unit!161238 () Unit!161236)

(assert (=> b!7004372 (= e!4210214 Unit!161238)))

(declare-fun lt!2499443 () Context!12562)

(declare-fun lt!2499445 () (InoxSet Context!12562))

(declare-fun getWitness!1211 ((InoxSet Context!12562) Int) Context!12562)

(assert (=> b!7004372 (= lt!2499443 (getWitness!1211 lt!2499445 lambda!406515))))

(declare-fun lt!2499477 () Unit!161236)

(declare-fun lt!2499456 () Context!12562)

(declare-fun lemmaContainsThenExists!89 ((InoxSet Context!12562) Context!12562 Int) Unit!161236)

(assert (=> b!7004372 (= lt!2499477 (lemmaContainsThenExists!89 lt!2499445 lt!2499456 lambda!406515))))

(declare-fun exists!3110 ((InoxSet Context!12562) Int) Bool)

(assert (=> b!7004372 (exists!3110 lt!2499445 lambda!406515)))

(declare-fun lt!2499419 () (InoxSet Context!12562))

(declare-fun lt!2499428 () Context!12562)

(assert (=> b!7004372 (= lt!2499419 (store ((as const (Array Context!12562 Bool)) false) lt!2499428 true))))

(declare-fun lt!2499470 () Unit!161236)

(assert (=> b!7004372 (= lt!2499470 (lemmaContainsThenExists!89 lt!2499419 lt!2499428 lambda!406515))))

(assert (=> b!7004372 (exists!3110 lt!2499419 lambda!406515)))

(declare-fun lt!2499474 () Unit!161236)

(declare-fun call!636003 () Unit!161236)

(assert (=> b!7004372 (= lt!2499474 call!636003)))

(declare-fun call!636002 () Bool)

(assert (=> b!7004372 call!636002))

(declare-fun b!7004373 () Bool)

(declare-fun e!4210219 () Bool)

(declare-fun e!4210212 () Bool)

(assert (=> b!7004373 (= e!4210219 e!4210212)))

(declare-fun res!2857690 () Bool)

(assert (=> b!7004373 (=> res!2857690 e!4210212)))

(declare-fun lt!2499414 () Int)

(declare-fun contextDepthTotal!478 (Context!12562) Int)

(assert (=> b!7004373 (= res!2857690 (<= lt!2499414 (contextDepthTotal!478 lt!2499456)))))

(declare-fun lt!2499452 () Int)

(assert (=> b!7004373 (<= lt!2499414 lt!2499452)))

(declare-datatypes ((List!67402 0))(
  ( (Nil!67278) (Cons!67278 (h!73726 Context!12562) (t!381155 List!67402)) )
))
(declare-fun lt!2499435 () List!67402)

(declare-fun zipperDepthTotal!506 (List!67402) Int)

(assert (=> b!7004373 (= lt!2499452 (zipperDepthTotal!506 lt!2499435))))

(assert (=> b!7004373 (= lt!2499414 (contextDepthTotal!478 lt!2499428))))

(declare-fun lt!2499439 () Unit!161236)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!46 (List!67402 Context!12562) Unit!161236)

(assert (=> b!7004373 (= lt!2499439 (lemmaTotalDepthZipperLargerThanOfAnyContext!46 lt!2499435 lt!2499428))))

(declare-fun z1!570 () (InoxSet Context!12562))

(declare-fun toList!10645 ((InoxSet Context!12562)) List!67402)

(assert (=> b!7004373 (= lt!2499435 (toList!10645 z1!570))))

(declare-fun lt!2499446 () Unit!161236)

(assert (=> b!7004373 (= lt!2499446 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lt!2499460 () Unit!161236)

(assert (=> b!7004373 (= lt!2499460 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lt!2499478 () Unit!161236)

(assert (=> b!7004373 (= lt!2499478 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(assert (=> b!7004373 (= (flatMap!2271 lt!2499445 lambda!406514) (derivationStepZipperUp!1935 lt!2499456 (h!73724 s!7408)))))

(declare-fun lt!2499438 () Unit!161236)

(assert (=> b!7004373 (= lt!2499438 (lemmaFlatMapOnSingletonSet!1786 lt!2499445 lt!2499456 lambda!406514))))

(declare-fun lambda!406512 () Int)

(declare-fun map!15574 ((InoxSet Context!12562) Int) (InoxSet Context!12562))

(declare-fun ++!15271 (List!67401 List!67401) List!67401)

(assert (=> b!7004373 (= (map!15574 lt!2499445 lambda!406512) (store ((as const (Array Context!12562 Bool)) false) (Context!12563 (++!15271 lt!2499471 (exprs!6781 ct2!306))) true))))

(declare-fun lt!2499475 () Unit!161236)

(assert (=> b!7004373 (= lt!2499475 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lt!2499437 () Unit!161236)

(declare-fun lemmaMapOnSingletonSet!350 ((InoxSet Context!12562) Context!12562 Int) Unit!161236)

(assert (=> b!7004373 (= lt!2499437 (lemmaMapOnSingletonSet!350 lt!2499445 lt!2499456 lambda!406512))))

(assert (=> b!7004373 (= lt!2499445 (store ((as const (Array Context!12562 Bool)) false) lt!2499456 true))))

(declare-fun b!7004374 () Bool)

(declare-fun e!4210215 () Bool)

(declare-fun e!4210216 () Bool)

(assert (=> b!7004374 (= e!4210215 e!4210216)))

(declare-fun res!2857678 () Bool)

(assert (=> b!7004374 (=> res!2857678 e!4210216)))

(declare-fun nullable!7045 (Regex!17285) Bool)

(assert (=> b!7004374 (= res!2857678 (not (nullable!7045 (h!73725 (exprs!6781 lt!2499428)))))))

(assert (=> b!7004374 (= lt!2499456 (Context!12563 lt!2499471))))

(declare-fun tail!13338 (List!67401) List!67401)

(assert (=> b!7004374 (= lt!2499471 (tail!13338 (exprs!6781 lt!2499428)))))

(declare-fun b!7004375 () Bool)

(declare-fun res!2857689 () Bool)

(assert (=> b!7004375 (=> res!2857689 e!4210212)))

(assert (=> b!7004375 (= res!2857689 (>= (zipperDepthTotal!506 (Cons!67278 lt!2499456 Nil!67278)) lt!2499452))))

(declare-fun tp!1931496 () Bool)

(declare-fun setElem!48183 () Context!12562)

(declare-fun e!4210203 () Bool)

(declare-fun setNonEmpty!48183 () Bool)

(declare-fun setRes!48183 () Bool)

(declare-fun inv!86071 (Context!12562) Bool)

(assert (=> setNonEmpty!48183 (= setRes!48183 (and tp!1931496 (inv!86071 setElem!48183) e!4210203))))

(declare-fun setRest!48183 () (InoxSet Context!12562))

(assert (=> setNonEmpty!48183 (= z1!570 ((_ map or) (store ((as const (Array Context!12562 Bool)) false) setElem!48183 true) setRest!48183))))

(declare-fun b!7004376 () Bool)

(declare-fun res!2857675 () Bool)

(assert (=> b!7004376 (=> res!2857675 e!4210215)))

(declare-fun isEmpty!39289 (List!67401) Bool)

(assert (=> b!7004376 (= res!2857675 (isEmpty!39289 (exprs!6781 lt!2499428)))))

(declare-fun b!7004377 () Bool)

(declare-fun Unit!161239 () Unit!161236)

(assert (=> b!7004377 (= e!4210214 Unit!161239)))

(declare-fun lt!2499424 () (InoxSet Context!12562))

(assert (=> b!7004377 (= lt!2499424 (store ((as const (Array Context!12562 Bool)) false) lt!2499428 true))))

(declare-fun lt!2499468 () Unit!161236)

(assert (=> b!7004377 (= lt!2499468 (lemmaFlatMapOnSingletonSet!1786 lt!2499424 lt!2499428 lambda!406514))))

(assert (=> b!7004377 (= (flatMap!2271 lt!2499424 lambda!406514) (derivationStepZipperUp!1935 lt!2499428 (h!73724 s!7408)))))

(declare-fun lt!2499476 () (InoxSet Context!12562))

(declare-fun derivationStepZipperDown!2003 (Regex!17285 Context!12562 C!34840) (InoxSet Context!12562))

(assert (=> b!7004377 (= lt!2499476 (derivationStepZipperDown!2003 (h!73725 (exprs!6781 lt!2499428)) lt!2499456 (h!73724 s!7408)))))

(assert (=> b!7004377 (= lt!2499461 (derivationStepZipperUp!1935 lt!2499456 (h!73724 s!7408)))))

(declare-fun tail!13339 (List!67400) List!67400)

(assert (=> b!7004377 (= lt!2499420 (tail!13339 (_1!37261 lt!2499431)))))

(declare-fun lt!2499432 () Unit!161236)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1458 ((InoxSet Context!12562) (InoxSet Context!12562) List!67400) Unit!161236)

(assert (=> b!7004377 (= lt!2499432 (lemmaZipperConcatMatchesSameAsBothZippers!1458 lt!2499476 lt!2499461 lt!2499420))))

(declare-fun res!2857671 () Bool)

(assert (=> b!7004377 (= res!2857671 (matchZipper!2825 lt!2499476 lt!2499420))))

(assert (=> b!7004377 (=> res!2857671 e!4210207)))

(assert (=> b!7004377 (= (matchZipper!2825 ((_ map or) lt!2499476 lt!2499461) lt!2499420) e!4210207)))

(declare-fun lt!2499453 () Unit!161236)

(assert (=> b!7004377 (= lt!2499453 (lemmaFlatMapOnSingletonSet!1786 lt!2499445 lt!2499456 lambda!406514))))

(assert (=> b!7004377 (= (flatMap!2271 lt!2499445 lambda!406514) (derivationStepZipperUp!1935 lt!2499456 (h!73724 s!7408)))))

(declare-fun lt!2499415 () Unit!161236)

(assert (=> b!7004377 (= lt!2499415 call!636003)))

(assert (=> b!7004377 call!636002))

(declare-fun e!4210208 () Bool)

(assert (=> b!7004378 (= e!4210208 e!4210215)))

(declare-fun res!2857683 () Bool)

(assert (=> b!7004378 (=> res!2857683 e!4210215)))

(declare-fun lt!2499462 () (InoxSet Context!12562))

(declare-fun lt!2499436 () (InoxSet Context!12562))

(assert (=> b!7004378 (= res!2857683 (not (= (derivationStepZipper!2765 lt!2499462 (h!73724 s!7408)) lt!2499436)))))

(declare-fun lt!2499423 () Context!12562)

(assert (=> b!7004378 (= (flatMap!2271 lt!2499462 lambda!406514) (derivationStepZipperUp!1935 lt!2499423 (h!73724 s!7408)))))

(declare-fun lt!2499457 () Unit!161236)

(assert (=> b!7004378 (= lt!2499457 (lemmaFlatMapOnSingletonSet!1786 lt!2499462 lt!2499423 lambda!406514))))

(assert (=> b!7004378 (= lt!2499436 (derivationStepZipperUp!1935 lt!2499423 (h!73724 s!7408)))))

(declare-fun lt!2499463 () Unit!161236)

(assert (=> b!7004378 (= lt!2499463 (lemmaConcatPreservesForall!621 (exprs!6781 lt!2499428) (exprs!6781 ct2!306) lambda!406513))))

(declare-fun b!7004379 () Bool)

(declare-fun res!2857677 () Bool)

(declare-fun e!4210206 () Bool)

(assert (=> b!7004379 (=> res!2857677 e!4210206)))

(declare-fun lt!2499448 () Context!12562)

(declare-fun lt!2499433 () (InoxSet Context!12562))

(assert (=> b!7004379 (= res!2857677 (not (select lt!2499433 lt!2499448)))))

(declare-fun e!4210217 () Bool)

(assert (=> b!7004380 (= e!4210206 e!4210217)))

(declare-fun res!2857672 () Bool)

(assert (=> b!7004380 (=> res!2857672 e!4210217)))

(assert (=> b!7004380 (= res!2857672 (or (not (= lt!2499423 lt!2499448)) (not (select z1!570 lt!2499428))))))

(assert (=> b!7004380 (= lt!2499423 (Context!12563 (++!15271 (exprs!6781 lt!2499428) (exprs!6781 ct2!306))))))

(declare-fun lt!2499413 () Unit!161236)

(assert (=> b!7004380 (= lt!2499413 (lemmaConcatPreservesForall!621 (exprs!6781 lt!2499428) (exprs!6781 ct2!306) lambda!406513))))

(declare-fun mapPost2!140 ((InoxSet Context!12562) Int Context!12562) Context!12562)

(assert (=> b!7004380 (= lt!2499428 (mapPost2!140 z1!570 lambda!406512 lt!2499448))))

(declare-fun c!1300588 () Bool)

(declare-fun bm!635997 () Bool)

(declare-fun lt!2499467 () (InoxSet Context!12562))

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!8 ((InoxSet Context!12562) (InoxSet Context!12562) List!67400 List!67400 List!67400 List!67400 List!67400) Unit!161236)

(assert (=> bm!635997 (= call!636003 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!8 (ite c!1300588 lt!2499419 lt!2499424) lt!2499467 (_1!37261 lt!2499431) (_2!37261 lt!2499431) s!7408 Nil!67276 s!7408))))

(declare-fun b!7004381 () Bool)

(declare-fun e!4210201 () Bool)

(assert (=> b!7004381 (= e!4210201 (not (matchZipper!2825 lt!2499417 (t!381153 s!7408))))))

(declare-fun lt!2499427 () Unit!161236)

(assert (=> b!7004381 (= lt!2499427 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun b!7004382 () Bool)

(assert (=> b!7004382 (= e!4210217 e!4210208)))

(declare-fun res!2857681 () Bool)

(assert (=> b!7004382 (=> res!2857681 e!4210208)))

(declare-fun lt!2499442 () (InoxSet Context!12562))

(assert (=> b!7004382 (= res!2857681 (not (= lt!2499462 lt!2499442)))))

(assert (=> b!7004382 (= lt!2499462 (store ((as const (Array Context!12562 Bool)) false) lt!2499423 true))))

(declare-fun lt!2499449 () Unit!161236)

(assert (=> b!7004382 (= lt!2499449 (lemmaConcatPreservesForall!621 (exprs!6781 lt!2499428) (exprs!6781 ct2!306) lambda!406513))))

(declare-fun b!7004383 () Bool)

(declare-fun e!4210202 () Bool)

(assert (=> b!7004383 (= e!4210202 (matchZipper!2825 lt!2499417 (t!381153 s!7408)))))

(declare-fun bm!635998 () Bool)

(declare-datatypes ((Option!16790 0))(
  ( (None!16789) (Some!16789 (v!53067 tuple2!67916)) )
))
(declare-fun call!636004 () Option!16790)

(declare-fun isDefined!13491 (Option!16790) Bool)

(assert (=> bm!635998 (= call!636002 (isDefined!13491 call!636004))))

(declare-fun b!7004384 () Bool)

(declare-fun e!4210220 () Bool)

(assert (=> b!7004384 (= e!4210220 e!4210200)))

(declare-fun res!2857682 () Bool)

(assert (=> b!7004384 (=> res!2857682 e!4210200)))

(assert (=> b!7004384 (= res!2857682 (not (matchZipper!2825 lt!2499417 (t!381153 s!7408))))))

(declare-fun lt!2499459 () Unit!161236)

(assert (=> b!7004384 (= lt!2499459 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun bm!635999 () Bool)

(declare-fun findConcatSeparationZippers!306 ((InoxSet Context!12562) (InoxSet Context!12562) List!67400 List!67400 List!67400) Option!16790)

(assert (=> bm!635999 (= call!636004 (findConcatSeparationZippers!306 (ite c!1300588 lt!2499419 lt!2499424) lt!2499467 Nil!67276 s!7408 s!7408))))

(declare-fun b!7004385 () Bool)

(declare-fun res!2857685 () Bool)

(assert (=> b!7004385 (=> res!2857685 e!4210220)))

(declare-fun lt!2499454 () Bool)

(assert (=> b!7004385 (= res!2857685 (not lt!2499454))))

(declare-fun b!7004386 () Bool)

(declare-fun e!4210209 () Bool)

(assert (=> b!7004386 (= e!4210216 e!4210209)))

(declare-fun res!2857692 () Bool)

(assert (=> b!7004386 (=> res!2857692 e!4210209)))

(declare-fun lt!2499421 () (InoxSet Context!12562))

(assert (=> b!7004386 (= res!2857692 (not (= lt!2499436 lt!2499421)))))

(declare-fun lt!2499473 () (InoxSet Context!12562))

(assert (=> b!7004386 (= lt!2499421 ((_ map or) lt!2499473 lt!2499417))))

(assert (=> b!7004386 (= lt!2499417 (derivationStepZipperUp!1935 lt!2499426 (h!73724 s!7408)))))

(assert (=> b!7004386 (= lt!2499473 (derivationStepZipperDown!2003 (h!73725 (exprs!6781 lt!2499428)) lt!2499426 (h!73724 s!7408)))))

(assert (=> b!7004386 (= lt!2499426 (Context!12563 (++!15271 lt!2499471 (exprs!6781 ct2!306))))))

(declare-fun lt!2499447 () Unit!161236)

(assert (=> b!7004386 (= lt!2499447 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lt!2499450 () Unit!161236)

(assert (=> b!7004386 (= lt!2499450 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun b!7004387 () Bool)

(assert (=> b!7004387 (= e!4210218 e!4210219)))

(declare-fun res!2857680 () Bool)

(assert (=> b!7004387 (=> res!2857680 e!4210219)))

(assert (=> b!7004387 (= res!2857680 (not (matchZipper!2825 lt!2499440 s!7408)))))

(declare-fun lt!2499441 () Unit!161236)

(assert (=> b!7004387 (= lt!2499441 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun e!4210204 () Bool)

(declare-fun e!4210205 () Bool)

(assert (=> b!7004388 (= e!4210204 e!4210205)))

(declare-fun res!2857687 () Bool)

(assert (=> b!7004388 (=> res!2857687 e!4210205)))

(declare-fun exists!3111 (List!67402 Int) Bool)

(assert (=> b!7004388 (= res!2857687 (not (exists!3111 lt!2499435 lambda!406516)))))

(assert (=> b!7004388 (exists!3110 z1!570 lambda!406516)))

(declare-fun lt!2499434 () Unit!161236)

(assert (=> b!7004388 (= lt!2499434 (lemmaContainsThenExists!89 z1!570 lt!2499428 lambda!406516))))

(declare-fun lt!2499465 () Unit!161236)

(assert (=> b!7004388 (= lt!2499465 e!4210214)))

(declare-fun isEmpty!39290 (List!67400) Bool)

(assert (=> b!7004388 (= c!1300588 (isEmpty!39290 (_1!37261 lt!2499431)))))

(declare-fun e!4210211 () Bool)

(assert (=> b!7004389 (= e!4210211 (not e!4210206))))

(declare-fun res!2857686 () Bool)

(assert (=> b!7004389 (=> res!2857686 e!4210206)))

(assert (=> b!7004389 (= res!2857686 (not (matchZipper!2825 lt!2499442 s!7408)))))

(assert (=> b!7004389 (= lt!2499442 (store ((as const (Array Context!12562 Bool)) false) lt!2499448 true))))

(assert (=> b!7004389 (= lt!2499448 (getWitness!1211 lt!2499433 lambda!406511))))

(declare-fun lt!2499425 () List!67402)

(assert (=> b!7004389 (exists!3111 lt!2499425 lambda!406511)))

(declare-fun lt!2499422 () Unit!161236)

(declare-fun lemmaZipperMatchesExistsMatchingContext!254 (List!67402 List!67400) Unit!161236)

(assert (=> b!7004389 (= lt!2499422 (lemmaZipperMatchesExistsMatchingContext!254 lt!2499425 s!7408))))

(assert (=> b!7004389 (= lt!2499425 (toList!10645 lt!2499433))))

(declare-fun b!7004390 () Bool)

(declare-fun res!2857670 () Bool)

(assert (=> b!7004390 (=> res!2857670 e!4210204)))

(declare-fun ++!15272 (List!67400 List!67400) List!67400)

(assert (=> b!7004390 (= res!2857670 (not (= (++!15272 (_1!37261 lt!2499431) (_2!37261 lt!2499431)) s!7408)))))

(declare-fun b!7004391 () Bool)

(declare-fun e!4210210 () Bool)

(declare-fun tp_is_empty!43795 () Bool)

(declare-fun tp!1931498 () Bool)

(assert (=> b!7004391 (= e!4210210 (and tp_is_empty!43795 tp!1931498))))

(declare-fun b!7004392 () Bool)

(declare-fun e!4210213 () Bool)

(declare-fun tp!1931497 () Bool)

(assert (=> b!7004392 (= e!4210213 tp!1931497)))

(declare-fun b!7004393 () Bool)

(declare-fun res!2857673 () Bool)

(assert (=> b!7004393 (=> (not res!2857673) (not e!4210211))))

(get-info :version)

(assert (=> b!7004393 (= res!2857673 ((_ is Cons!67276) s!7408))))

(declare-fun b!7004394 () Bool)

(declare-fun tp!1931495 () Bool)

(assert (=> b!7004394 (= e!4210203 tp!1931495)))

(declare-fun b!7004395 () Bool)

(assert (=> b!7004395 (= e!4210205 (exists!3111 lt!2499435 lambda!406516))))

(declare-fun b!7004396 () Bool)

(declare-fun res!2857693 () Bool)

(assert (=> b!7004396 (=> res!2857693 e!4210215)))

(assert (=> b!7004396 (= res!2857693 (not ((_ is Cons!67277) (exprs!6781 lt!2499428))))))

(declare-fun b!7004397 () Bool)

(assert (=> b!7004397 (= e!4210209 e!4210220)))

(declare-fun res!2857691 () Bool)

(assert (=> b!7004397 (=> res!2857691 e!4210220)))

(assert (=> b!7004397 (= res!2857691 e!4210201)))

(declare-fun res!2857694 () Bool)

(assert (=> b!7004397 (=> (not res!2857694) (not e!4210201))))

(declare-fun lt!2499444 () Bool)

(assert (=> b!7004397 (= res!2857694 (not (= lt!2499454 lt!2499444)))))

(assert (=> b!7004397 (= lt!2499454 (matchZipper!2825 lt!2499436 (t!381153 s!7408)))))

(declare-fun lt!2499464 () Unit!161236)

(assert (=> b!7004397 (= lt!2499464 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(assert (=> b!7004397 (= (matchZipper!2825 lt!2499421 (t!381153 s!7408)) e!4210202)))

(declare-fun res!2857676 () Bool)

(assert (=> b!7004397 (=> res!2857676 e!4210202)))

(assert (=> b!7004397 (= res!2857676 lt!2499444)))

(assert (=> b!7004397 (= lt!2499444 (matchZipper!2825 lt!2499473 (t!381153 s!7408)))))

(declare-fun lt!2499466 () Unit!161236)

(assert (=> b!7004397 (= lt!2499466 (lemmaZipperConcatMatchesSameAsBothZippers!1458 lt!2499473 lt!2499417 (t!381153 s!7408)))))

(declare-fun lt!2499418 () Unit!161236)

(assert (=> b!7004397 (= lt!2499418 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun lt!2499469 () Unit!161236)

(assert (=> b!7004397 (= lt!2499469 (lemmaConcatPreservesForall!621 lt!2499471 (exprs!6781 ct2!306) lambda!406513))))

(declare-fun res!2857684 () Bool)

(assert (=> start!674098 (=> (not res!2857684) (not e!4210211))))

(assert (=> start!674098 (= res!2857684 (matchZipper!2825 lt!2499433 s!7408))))

(declare-fun appendTo!406 ((InoxSet Context!12562) Context!12562) (InoxSet Context!12562))

(assert (=> start!674098 (= lt!2499433 (appendTo!406 z1!570 ct2!306))))

(assert (=> start!674098 e!4210211))

(declare-fun condSetEmpty!48183 () Bool)

(assert (=> start!674098 (= condSetEmpty!48183 (= z1!570 ((as const (Array Context!12562 Bool)) false)))))

(assert (=> start!674098 setRes!48183))

(assert (=> start!674098 (and (inv!86071 ct2!306) e!4210213)))

(assert (=> start!674098 e!4210210))

(declare-fun setIsEmpty!48183 () Bool)

(assert (=> setIsEmpty!48183 setRes!48183))

(declare-fun b!7004398 () Bool)

(declare-fun res!2857688 () Bool)

(assert (=> b!7004398 (=> res!2857688 e!4210204)))

(assert (=> b!7004398 (= res!2857688 (not (matchZipper!2825 lt!2499467 (_2!37261 lt!2499431))))))

(declare-fun b!7004399 () Bool)

(assert (=> b!7004399 (= e!4210212 e!4210204)))

(declare-fun res!2857679 () Bool)

(assert (=> b!7004399 (=> res!2857679 e!4210204)))

(assert (=> b!7004399 (= res!2857679 (not (matchZipper!2825 lt!2499445 (_1!37261 lt!2499431))))))

(declare-fun lt!2499429 () Option!16790)

(declare-fun get!23597 (Option!16790) tuple2!67916)

(assert (=> b!7004399 (= lt!2499431 (get!23597 lt!2499429))))

(assert (=> b!7004399 (isDefined!13491 lt!2499429)))

(assert (=> b!7004399 (= lt!2499429 (findConcatSeparationZippers!306 lt!2499445 lt!2499467 Nil!67276 s!7408 s!7408))))

(assert (=> b!7004399 (= lt!2499467 (store ((as const (Array Context!12562 Bool)) false) ct2!306 true))))

(declare-fun lt!2499451 () Unit!161236)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!306 ((InoxSet Context!12562) Context!12562 List!67400) Unit!161236)

(assert (=> b!7004399 (= lt!2499451 (lemmaConcatZipperMatchesStringThenFindConcatDefined!306 lt!2499445 ct2!306 s!7408))))

(assert (= (and start!674098 res!2857684) b!7004393))

(assert (= (and b!7004393 res!2857673) b!7004389))

(assert (= (and b!7004389 (not res!2857686)) b!7004379))

(assert (= (and b!7004379 (not res!2857677)) b!7004380))

(assert (= (and b!7004380 (not res!2857672)) b!7004382))

(assert (= (and b!7004382 (not res!2857681)) b!7004378))

(assert (= (and b!7004378 (not res!2857683)) b!7004396))

(assert (= (and b!7004396 (not res!2857693)) b!7004376))

(assert (= (and b!7004376 (not res!2857675)) b!7004374))

(assert (= (and b!7004374 (not res!2857678)) b!7004386))

(assert (= (and b!7004386 (not res!2857692)) b!7004397))

(assert (= (and b!7004397 (not res!2857676)) b!7004383))

(assert (= (and b!7004397 res!2857694) b!7004381))

(assert (= (and b!7004397 (not res!2857691)) b!7004385))

(assert (= (and b!7004385 (not res!2857685)) b!7004384))

(assert (= (and b!7004384 (not res!2857682)) b!7004370))

(assert (= (and b!7004370 (not res!2857674)) b!7004387))

(assert (= (and b!7004387 (not res!2857680)) b!7004373))

(assert (= (and b!7004373 (not res!2857690)) b!7004375))

(assert (= (and b!7004375 (not res!2857689)) b!7004399))

(assert (= (and b!7004399 (not res!2857679)) b!7004398))

(assert (= (and b!7004398 (not res!2857688)) b!7004390))

(assert (= (and b!7004390 (not res!2857670)) b!7004388))

(assert (= (and b!7004388 c!1300588) b!7004372))

(assert (= (and b!7004388 (not c!1300588)) b!7004377))

(assert (= (and b!7004377 (not res!2857671)) b!7004371))

(assert (= (or b!7004372 b!7004377) bm!635997))

(assert (= (or b!7004372 b!7004377) bm!635999))

(assert (= (or b!7004372 b!7004377) bm!635998))

(assert (= (and b!7004388 (not res!2857687)) b!7004395))

(assert (= (and start!674098 condSetEmpty!48183) setIsEmpty!48183))

(assert (= (and start!674098 (not condSetEmpty!48183)) setNonEmpty!48183))

(assert (= setNonEmpty!48183 b!7004394))

(assert (= start!674098 b!7004392))

(assert (= (and start!674098 ((_ is Cons!67276) s!7408)) b!7004391))

(declare-fun m!7700244 () Bool)

(assert (=> b!7004380 m!7700244))

(declare-fun m!7700246 () Bool)

(assert (=> b!7004380 m!7700246))

(declare-fun m!7700248 () Bool)

(assert (=> b!7004380 m!7700248))

(declare-fun m!7700250 () Bool)

(assert (=> b!7004380 m!7700250))

(declare-fun m!7700252 () Bool)

(assert (=> b!7004384 m!7700252))

(declare-fun m!7700254 () Bool)

(assert (=> b!7004384 m!7700254))

(declare-fun m!7700256 () Bool)

(assert (=> b!7004370 m!7700256))

(assert (=> b!7004370 m!7700254))

(assert (=> b!7004370 m!7700254))

(assert (=> b!7004370 m!7700254))

(declare-fun m!7700258 () Bool)

(assert (=> b!7004370 m!7700258))

(assert (=> b!7004370 m!7700254))

(declare-fun m!7700260 () Bool)

(assert (=> b!7004370 m!7700260))

(declare-fun m!7700262 () Bool)

(assert (=> b!7004370 m!7700262))

(declare-fun m!7700264 () Bool)

(assert (=> b!7004370 m!7700264))

(assert (=> b!7004373 m!7700254))

(declare-fun m!7700266 () Bool)

(assert (=> b!7004373 m!7700266))

(declare-fun m!7700268 () Bool)

(assert (=> b!7004373 m!7700268))

(assert (=> b!7004373 m!7700254))

(declare-fun m!7700270 () Bool)

(assert (=> b!7004373 m!7700270))

(declare-fun m!7700272 () Bool)

(assert (=> b!7004373 m!7700272))

(declare-fun m!7700274 () Bool)

(assert (=> b!7004373 m!7700274))

(declare-fun m!7700276 () Bool)

(assert (=> b!7004373 m!7700276))

(declare-fun m!7700278 () Bool)

(assert (=> b!7004373 m!7700278))

(declare-fun m!7700280 () Bool)

(assert (=> b!7004373 m!7700280))

(declare-fun m!7700282 () Bool)

(assert (=> b!7004373 m!7700282))

(declare-fun m!7700284 () Bool)

(assert (=> b!7004373 m!7700284))

(declare-fun m!7700286 () Bool)

(assert (=> b!7004373 m!7700286))

(declare-fun m!7700288 () Bool)

(assert (=> b!7004373 m!7700288))

(assert (=> b!7004373 m!7700254))

(assert (=> b!7004373 m!7700254))

(declare-fun m!7700290 () Bool)

(assert (=> b!7004373 m!7700290))

(declare-fun m!7700292 () Bool)

(assert (=> bm!635997 m!7700292))

(assert (=> b!7004383 m!7700252))

(declare-fun m!7700294 () Bool)

(assert (=> bm!635998 m!7700294))

(declare-fun m!7700296 () Bool)

(assert (=> b!7004376 m!7700296))

(assert (=> b!7004378 m!7700248))

(declare-fun m!7700298 () Bool)

(assert (=> b!7004378 m!7700298))

(declare-fun m!7700300 () Bool)

(assert (=> b!7004378 m!7700300))

(declare-fun m!7700302 () Bool)

(assert (=> b!7004378 m!7700302))

(declare-fun m!7700304 () Bool)

(assert (=> b!7004378 m!7700304))

(declare-fun m!7700306 () Bool)

(assert (=> b!7004387 m!7700306))

(assert (=> b!7004387 m!7700254))

(declare-fun m!7700308 () Bool)

(assert (=> b!7004379 m!7700308))

(declare-fun m!7700310 () Bool)

(assert (=> b!7004390 m!7700310))

(declare-fun m!7700312 () Bool)

(assert (=> b!7004375 m!7700312))

(declare-fun m!7700314 () Bool)

(assert (=> b!7004372 m!7700314))

(declare-fun m!7700316 () Bool)

(assert (=> b!7004372 m!7700316))

(declare-fun m!7700318 () Bool)

(assert (=> b!7004372 m!7700318))

(declare-fun m!7700320 () Bool)

(assert (=> b!7004372 m!7700320))

(declare-fun m!7700322 () Bool)

(assert (=> b!7004372 m!7700322))

(declare-fun m!7700324 () Bool)

(assert (=> b!7004372 m!7700324))

(declare-fun m!7700326 () Bool)

(assert (=> setNonEmpty!48183 m!7700326))

(assert (=> b!7004386 m!7700256))

(assert (=> b!7004386 m!7700254))

(assert (=> b!7004386 m!7700254))

(declare-fun m!7700328 () Bool)

(assert (=> b!7004386 m!7700328))

(assert (=> b!7004386 m!7700276))

(declare-fun m!7700330 () Bool)

(assert (=> b!7004371 m!7700330))

(declare-fun m!7700332 () Bool)

(assert (=> bm!635999 m!7700332))

(declare-fun m!7700334 () Bool)

(assert (=> b!7004395 m!7700334))

(declare-fun m!7700336 () Bool)

(assert (=> b!7004389 m!7700336))

(declare-fun m!7700338 () Bool)

(assert (=> b!7004389 m!7700338))

(declare-fun m!7700340 () Bool)

(assert (=> b!7004389 m!7700340))

(declare-fun m!7700342 () Bool)

(assert (=> b!7004389 m!7700342))

(declare-fun m!7700344 () Bool)

(assert (=> b!7004389 m!7700344))

(declare-fun m!7700346 () Bool)

(assert (=> b!7004389 m!7700346))

(assert (=> b!7004397 m!7700254))

(declare-fun m!7700348 () Bool)

(assert (=> b!7004397 m!7700348))

(declare-fun m!7700350 () Bool)

(assert (=> b!7004397 m!7700350))

(assert (=> b!7004397 m!7700254))

(declare-fun m!7700352 () Bool)

(assert (=> b!7004397 m!7700352))

(assert (=> b!7004397 m!7700254))

(declare-fun m!7700354 () Bool)

(assert (=> b!7004397 m!7700354))

(assert (=> b!7004381 m!7700252))

(assert (=> b!7004381 m!7700254))

(declare-fun m!7700356 () Bool)

(assert (=> b!7004398 m!7700356))

(declare-fun m!7700358 () Bool)

(assert (=> start!674098 m!7700358))

(declare-fun m!7700360 () Bool)

(assert (=> start!674098 m!7700360))

(declare-fun m!7700362 () Bool)

(assert (=> start!674098 m!7700362))

(declare-fun m!7700364 () Bool)

(assert (=> b!7004399 m!7700364))

(declare-fun m!7700366 () Bool)

(assert (=> b!7004399 m!7700366))

(declare-fun m!7700368 () Bool)

(assert (=> b!7004399 m!7700368))

(declare-fun m!7700370 () Bool)

(assert (=> b!7004399 m!7700370))

(declare-fun m!7700372 () Bool)

(assert (=> b!7004399 m!7700372))

(declare-fun m!7700374 () Bool)

(assert (=> b!7004399 m!7700374))

(declare-fun m!7700376 () Bool)

(assert (=> b!7004382 m!7700376))

(assert (=> b!7004382 m!7700248))

(declare-fun m!7700378 () Bool)

(assert (=> b!7004374 m!7700378))

(declare-fun m!7700380 () Bool)

(assert (=> b!7004374 m!7700380))

(assert (=> b!7004388 m!7700334))

(declare-fun m!7700382 () Bool)

(assert (=> b!7004388 m!7700382))

(declare-fun m!7700384 () Bool)

(assert (=> b!7004388 m!7700384))

(declare-fun m!7700386 () Bool)

(assert (=> b!7004388 m!7700386))

(declare-fun m!7700388 () Bool)

(assert (=> b!7004377 m!7700388))

(declare-fun m!7700390 () Bool)

(assert (=> b!7004377 m!7700390))

(declare-fun m!7700392 () Bool)

(assert (=> b!7004377 m!7700392))

(declare-fun m!7700394 () Bool)

(assert (=> b!7004377 m!7700394))

(declare-fun m!7700396 () Bool)

(assert (=> b!7004377 m!7700396))

(declare-fun m!7700398 () Bool)

(assert (=> b!7004377 m!7700398))

(assert (=> b!7004377 m!7700282))

(assert (=> b!7004377 m!7700272))

(assert (=> b!7004377 m!7700322))

(declare-fun m!7700400 () Bool)

(assert (=> b!7004377 m!7700400))

(declare-fun m!7700402 () Bool)

(assert (=> b!7004377 m!7700402))

(assert (=> b!7004377 m!7700280))

(check-sat (not b!7004370) (not b!7004376) (not b!7004383) (not b!7004397) (not b!7004384) (not b!7004392) (not b!7004389) (not b!7004388) (not b!7004398) (not b!7004373) (not bm!635998) (not b!7004391) (not b!7004386) (not b!7004378) (not b!7004374) (not b!7004387) (not bm!635999) (not b!7004372) (not b!7004375) tp_is_empty!43795 (not start!674098) (not b!7004377) (not b!7004371) (not b!7004380) (not b!7004381) (not b!7004399) (not b!7004390) (not b!7004394) (not b!7004382) (not setNonEmpty!48183) (not b!7004395) (not bm!635997))
(check-sat)
