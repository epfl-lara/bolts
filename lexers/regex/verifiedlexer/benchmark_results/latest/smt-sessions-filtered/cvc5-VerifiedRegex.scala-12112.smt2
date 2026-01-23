; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!680156 () Bool)

(assert start!680156)

(declare-fun b!7035567 () Bool)

(assert (=> b!7035567 true))

(declare-fun b!7035545 () Bool)

(assert (=> b!7035545 true))

(declare-fun b!7035565 () Bool)

(assert (=> b!7035565 true))

(declare-fun b!7035540 () Bool)

(declare-fun e!4229484 () Bool)

(declare-fun e!4229472 () Bool)

(assert (=> b!7035540 (= e!4229484 e!4229472)))

(declare-fun res!2872023 () Bool)

(assert (=> b!7035540 (=> res!2872023 e!4229472)))

(declare-datatypes ((C!35210 0))(
  ( (C!35211 (val!27307 Int)) )
))
(declare-datatypes ((Regex!17470 0))(
  ( (ElementMatch!17470 (c!1308972 C!35210)) (Concat!26315 (regOne!35452 Regex!17470) (regTwo!35452 Regex!17470)) (EmptyExpr!17470) (Star!17470 (reg!17799 Regex!17470)) (EmptyLang!17470) (Union!17470 (regOne!35453 Regex!17470) (regTwo!35453 Regex!17470)) )
))
(declare-datatypes ((List!67938 0))(
  ( (Nil!67814) (Cons!67814 (h!74262 Regex!17470) (t!381707 List!67938)) )
))
(declare-datatypes ((Context!12932 0))(
  ( (Context!12933 (exprs!6966 List!67938)) )
))
(declare-fun lt!2520352 () (Set Context!12932))

(declare-datatypes ((List!67939 0))(
  ( (Nil!67815) (Cons!67815 (h!74263 C!35210) (t!381708 List!67939)) )
))
(declare-fun s!7408 () List!67939)

(declare-fun matchZipper!3010 ((Set Context!12932) List!67939) Bool)

(assert (=> b!7035540 (= res!2872023 (not (matchZipper!3010 lt!2520352 s!7408)))))

(declare-fun lt!2520323 () List!67938)

(declare-fun lambda!415357 () Int)

(declare-datatypes ((Unit!161618 0))(
  ( (Unit!161619) )
))
(declare-fun lt!2520363 () Unit!161618)

(declare-fun ct2!306 () Context!12932)

(declare-fun lemmaConcatPreservesForall!791 (List!67938 List!67938 Int) Unit!161618)

(assert (=> b!7035540 (= lt!2520363 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun b!7035542 () Bool)

(declare-fun e!4229478 () Bool)

(declare-fun tp_is_empty!44165 () Bool)

(declare-fun tp!1936793 () Bool)

(assert (=> b!7035542 (= e!4229478 (and tp_is_empty!44165 tp!1936793))))

(declare-fun b!7035543 () Bool)

(declare-fun e!4229473 () Bool)

(declare-fun tp!1936794 () Bool)

(assert (=> b!7035543 (= e!4229473 tp!1936794)))

(declare-fun b!7035544 () Bool)

(declare-fun res!2872031 () Bool)

(declare-fun e!4229485 () Bool)

(assert (=> b!7035544 (=> res!2872031 e!4229485)))

(declare-fun lt!2520355 () Context!12932)

(assert (=> b!7035544 (= res!2872031 (not (is-Cons!67814 (exprs!6966 lt!2520355))))))

(declare-fun e!4229474 () Bool)

(declare-fun e!4229477 () Bool)

(assert (=> b!7035545 (= e!4229474 e!4229477)))

(declare-fun res!2872035 () Bool)

(assert (=> b!7035545 (=> res!2872035 e!4229477)))

(declare-fun lt!2520335 () Context!12932)

(declare-fun z1!570 () (Set Context!12932))

(declare-fun lt!2520375 () Context!12932)

(assert (=> b!7035545 (= res!2872035 (or (not (= lt!2520375 lt!2520335)) (not (set.member lt!2520355 z1!570))))))

(declare-fun ++!15520 (List!67938 List!67938) List!67938)

(assert (=> b!7035545 (= lt!2520375 (Context!12933 (++!15520 (exprs!6966 lt!2520355) (exprs!6966 ct2!306))))))

(declare-fun lt!2520341 () Unit!161618)

(assert (=> b!7035545 (= lt!2520341 (lemmaConcatPreservesForall!791 (exprs!6966 lt!2520355) (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lambda!415356 () Int)

(declare-fun mapPost2!311 ((Set Context!12932) Int Context!12932) Context!12932)

(assert (=> b!7035545 (= lt!2520355 (mapPost2!311 z1!570 lambda!415356 lt!2520335))))

(declare-fun setIsEmpty!49223 () Bool)

(declare-fun setRes!49223 () Bool)

(assert (=> setIsEmpty!49223 setRes!49223))

(declare-fun b!7035546 () Bool)

(declare-fun e!4229475 () Bool)

(declare-fun lt!2520361 () (Set Context!12932))

(assert (=> b!7035546 (= e!4229475 (not (matchZipper!3010 lt!2520361 (t!381708 s!7408))))))

(declare-fun lt!2520326 () Unit!161618)

(assert (=> b!7035546 (= lt!2520326 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun b!7035547 () Bool)

(declare-fun res!2872032 () Bool)

(declare-fun e!4229482 () Bool)

(assert (=> b!7035547 (=> res!2872032 e!4229482)))

(declare-fun lt!2520350 () (Set Context!12932))

(declare-datatypes ((tuple2!68086 0))(
  ( (tuple2!68087 (_1!37346 List!67939) (_2!37346 List!67939)) )
))
(declare-fun lt!2520346 () tuple2!68086)

(assert (=> b!7035547 (= res!2872032 (not (matchZipper!3010 lt!2520350 (_2!37346 lt!2520346))))))

(declare-fun b!7035548 () Bool)

(declare-fun e!4229486 () Bool)

(assert (=> b!7035548 (= e!4229486 (matchZipper!3010 lt!2520361 (t!381708 s!7408)))))

(declare-fun b!7035549 () Bool)

(declare-fun res!2872018 () Bool)

(assert (=> b!7035549 (=> res!2872018 e!4229482)))

(declare-fun ++!15521 (List!67939 List!67939) List!67939)

(assert (=> b!7035549 (= res!2872018 (not (= (++!15521 (_1!37346 lt!2520346) (_2!37346 lt!2520346)) s!7408)))))

(declare-fun setNonEmpty!49223 () Bool)

(declare-fun setElem!49223 () Context!12932)

(declare-fun tp!1936792 () Bool)

(declare-fun inv!86535 (Context!12932) Bool)

(assert (=> setNonEmpty!49223 (= setRes!49223 (and tp!1936792 (inv!86535 setElem!49223) e!4229473))))

(declare-fun setRest!49223 () (Set Context!12932))

(assert (=> setNonEmpty!49223 (= z1!570 (set.union (set.insert setElem!49223 (as set.empty (Set Context!12932))) setRest!49223))))

(declare-fun lt!2520347 () Context!12932)

(declare-fun e!4229480 () Bool)

(declare-fun b!7035550 () Bool)

(declare-fun lt!2520345 () (Set Context!12932))

(declare-fun derivationStepZipperDown!2134 (Regex!17470 Context!12932 C!35210) (Set Context!12932))

(declare-fun derivationStepZipperUp!2080 (Context!12932 C!35210) (Set Context!12932))

(assert (=> b!7035550 (= e!4229480 (= lt!2520345 (set.union (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520355)) lt!2520347 (h!74263 s!7408)) (derivationStepZipperUp!2080 lt!2520347 (h!74263 s!7408)))))))

(declare-fun b!7035551 () Bool)

(declare-fun res!2872037 () Bool)

(assert (=> b!7035551 (=> res!2872037 e!4229485)))

(declare-fun isEmpty!39557 (List!67938) Bool)

(assert (=> b!7035551 (= res!2872037 (isEmpty!39557 (exprs!6966 lt!2520355)))))

(declare-fun b!7035552 () Bool)

(declare-fun res!2872020 () Bool)

(assert (=> b!7035552 (=> res!2872020 e!4229474)))

(declare-fun lt!2520331 () (Set Context!12932))

(assert (=> b!7035552 (= res!2872020 (not (set.member lt!2520335 lt!2520331)))))

(declare-fun b!7035541 () Bool)

(declare-fun e!4229471 () Bool)

(assert (=> b!7035541 (= e!4229472 e!4229471)))

(declare-fun res!2872024 () Bool)

(assert (=> b!7035541 (=> res!2872024 e!4229471)))

(declare-fun lt!2520340 () Int)

(declare-fun contextDepthTotal!505 (Context!12932) Int)

(assert (=> b!7035541 (= res!2872024 (<= lt!2520340 (contextDepthTotal!505 lt!2520347)))))

(declare-fun lt!2520348 () Int)

(assert (=> b!7035541 (<= lt!2520340 lt!2520348)))

(declare-datatypes ((List!67940 0))(
  ( (Nil!67816) (Cons!67816 (h!74264 Context!12932) (t!381709 List!67940)) )
))
(declare-fun lt!2520356 () List!67940)

(declare-fun zipperDepthTotal!533 (List!67940) Int)

(assert (=> b!7035541 (= lt!2520348 (zipperDepthTotal!533 lt!2520356))))

(assert (=> b!7035541 (= lt!2520340 (contextDepthTotal!505 lt!2520355))))

(declare-fun lt!2520371 () Unit!161618)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!73 (List!67940 Context!12932) Unit!161618)

(assert (=> b!7035541 (= lt!2520371 (lemmaTotalDepthZipperLargerThanOfAnyContext!73 lt!2520356 lt!2520355))))

(declare-fun toList!10813 ((Set Context!12932)) List!67940)

(assert (=> b!7035541 (= lt!2520356 (toList!10813 z1!570))))

(declare-fun lt!2520343 () Unit!161618)

(assert (=> b!7035541 (= lt!2520343 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520368 () Unit!161618)

(assert (=> b!7035541 (= lt!2520368 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520351 () Unit!161618)

(assert (=> b!7035541 (= lt!2520351 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520372 () (Set Context!12932))

(declare-fun lambda!415358 () Int)

(declare-fun flatMap!2417 ((Set Context!12932) Int) (Set Context!12932))

(assert (=> b!7035541 (= (flatMap!2417 lt!2520372 lambda!415358) (derivationStepZipperUp!2080 lt!2520347 (h!74263 s!7408)))))

(declare-fun lt!2520336 () Unit!161618)

(declare-fun lemmaFlatMapOnSingletonSet!1931 ((Set Context!12932) Context!12932 Int) Unit!161618)

(assert (=> b!7035541 (= lt!2520336 (lemmaFlatMapOnSingletonSet!1931 lt!2520372 lt!2520347 lambda!415358))))

(declare-fun map!15773 ((Set Context!12932) Int) (Set Context!12932))

(assert (=> b!7035541 (= (map!15773 lt!2520372 lambda!415356) (set.insert (Context!12933 (++!15520 lt!2520323 (exprs!6966 ct2!306))) (as set.empty (Set Context!12932))))))

(declare-fun lt!2520342 () Unit!161618)

(assert (=> b!7035541 (= lt!2520342 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520365 () Unit!161618)

(declare-fun lemmaMapOnSingletonSet!381 ((Set Context!12932) Context!12932 Int) Unit!161618)

(assert (=> b!7035541 (= lt!2520365 (lemmaMapOnSingletonSet!381 lt!2520372 lt!2520347 lambda!415356))))

(assert (=> b!7035541 (= lt!2520372 (set.insert lt!2520347 (as set.empty (Set Context!12932))))))

(declare-fun res!2872030 () Bool)

(declare-fun e!4229476 () Bool)

(assert (=> start!680156 (=> (not res!2872030) (not e!4229476))))

(assert (=> start!680156 (= res!2872030 (matchZipper!3010 lt!2520331 s!7408))))

(declare-fun appendTo!591 ((Set Context!12932) Context!12932) (Set Context!12932))

(assert (=> start!680156 (= lt!2520331 (appendTo!591 z1!570 ct2!306))))

(assert (=> start!680156 e!4229476))

(declare-fun condSetEmpty!49223 () Bool)

(assert (=> start!680156 (= condSetEmpty!49223 (= z1!570 (as set.empty (Set Context!12932))))))

(assert (=> start!680156 setRes!49223))

(declare-fun e!4229483 () Bool)

(assert (=> start!680156 (and (inv!86535 ct2!306) e!4229483)))

(assert (=> start!680156 e!4229478))

(declare-fun b!7035553 () Bool)

(declare-fun e!4229489 () Bool)

(assert (=> b!7035553 (= e!4229485 e!4229489)))

(declare-fun res!2872040 () Bool)

(assert (=> b!7035553 (=> res!2872040 e!4229489)))

(declare-fun nullable!7181 (Regex!17470) Bool)

(assert (=> b!7035553 (= res!2872040 (not (nullable!7181 (h!74262 (exprs!6966 lt!2520355)))))))

(assert (=> b!7035553 (= lt!2520347 (Context!12933 lt!2520323))))

(declare-fun tail!13561 (List!67938) List!67938)

(assert (=> b!7035553 (= lt!2520323 (tail!13561 (exprs!6966 lt!2520355)))))

(declare-fun b!7035554 () Bool)

(declare-fun res!2872034 () Bool)

(assert (=> b!7035554 (=> res!2872034 e!4229482)))

(declare-fun isEmpty!39558 (List!67939) Bool)

(assert (=> b!7035554 (= res!2872034 (isEmpty!39558 (_1!37346 lt!2520346)))))

(declare-fun b!7035555 () Bool)

(declare-fun e!4229488 () Bool)

(assert (=> b!7035555 (= e!4229488 e!4229484)))

(declare-fun res!2872027 () Bool)

(assert (=> b!7035555 (=> res!2872027 e!4229484)))

(declare-fun derivationStepZipper!2926 ((Set Context!12932) C!35210) (Set Context!12932))

(assert (=> b!7035555 (= res!2872027 (not (= (derivationStepZipper!2926 lt!2520352 (h!74263 s!7408)) lt!2520361)))))

(declare-fun lt!2520359 () Unit!161618)

(assert (=> b!7035555 (= lt!2520359 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520349 () Unit!161618)

(assert (=> b!7035555 (= lt!2520349 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520325 () Context!12932)

(assert (=> b!7035555 (= (flatMap!2417 lt!2520352 lambda!415358) (derivationStepZipperUp!2080 lt!2520325 (h!74263 s!7408)))))

(declare-fun lt!2520338 () Unit!161618)

(assert (=> b!7035555 (= lt!2520338 (lemmaFlatMapOnSingletonSet!1931 lt!2520352 lt!2520325 lambda!415358))))

(assert (=> b!7035555 (= lt!2520352 (set.insert lt!2520325 (as set.empty (Set Context!12932))))))

(declare-fun lt!2520374 () Unit!161618)

(assert (=> b!7035555 (= lt!2520374 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520362 () Unit!161618)

(assert (=> b!7035555 (= lt!2520362 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun b!7035556 () Bool)

(declare-fun e!4229487 () Bool)

(declare-fun e!4229479 () Bool)

(assert (=> b!7035556 (= e!4229487 e!4229479)))

(declare-fun res!2872025 () Bool)

(assert (=> b!7035556 (=> res!2872025 e!4229479)))

(assert (=> b!7035556 (= res!2872025 e!4229475)))

(declare-fun res!2872019 () Bool)

(assert (=> b!7035556 (=> (not res!2872019) (not e!4229475))))

(declare-fun lt!2520324 () Bool)

(declare-fun lt!2520357 () Bool)

(assert (=> b!7035556 (= res!2872019 (not (= lt!2520324 lt!2520357)))))

(declare-fun lt!2520327 () (Set Context!12932))

(assert (=> b!7035556 (= lt!2520324 (matchZipper!3010 lt!2520327 (t!381708 s!7408)))))

(declare-fun lt!2520354 () Unit!161618)

(assert (=> b!7035556 (= lt!2520354 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520367 () (Set Context!12932))

(assert (=> b!7035556 (= (matchZipper!3010 lt!2520367 (t!381708 s!7408)) e!4229486)))

(declare-fun res!2872026 () Bool)

(assert (=> b!7035556 (=> res!2872026 e!4229486)))

(assert (=> b!7035556 (= res!2872026 lt!2520357)))

(declare-fun lt!2520333 () (Set Context!12932))

(assert (=> b!7035556 (= lt!2520357 (matchZipper!3010 lt!2520333 (t!381708 s!7408)))))

(declare-fun lt!2520332 () Unit!161618)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1543 ((Set Context!12932) (Set Context!12932) List!67939) Unit!161618)

(assert (=> b!7035556 (= lt!2520332 (lemmaZipperConcatMatchesSameAsBothZippers!1543 lt!2520333 lt!2520361 (t!381708 s!7408)))))

(declare-fun lt!2520334 () Unit!161618)

(assert (=> b!7035556 (= lt!2520334 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520376 () Unit!161618)

(assert (=> b!7035556 (= lt!2520376 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun b!7035557 () Bool)

(declare-fun res!2872036 () Bool)

(assert (=> b!7035557 (=> res!2872036 e!4229479)))

(assert (=> b!7035557 (= res!2872036 (not lt!2520324))))

(declare-fun b!7035558 () Bool)

(assert (=> b!7035558 (= e!4229471 e!4229482)))

(declare-fun res!2872017 () Bool)

(assert (=> b!7035558 (=> res!2872017 e!4229482)))

(assert (=> b!7035558 (= res!2872017 (not (matchZipper!3010 lt!2520372 (_1!37346 lt!2520346))))))

(declare-datatypes ((Option!16875 0))(
  ( (None!16874) (Some!16874 (v!53162 tuple2!68086)) )
))
(declare-fun lt!2520364 () Option!16875)

(declare-fun get!23761 (Option!16875) tuple2!68086)

(assert (=> b!7035558 (= lt!2520346 (get!23761 lt!2520364))))

(declare-fun isDefined!13576 (Option!16875) Bool)

(assert (=> b!7035558 (isDefined!13576 lt!2520364)))

(declare-fun findConcatSeparationZippers!391 ((Set Context!12932) (Set Context!12932) List!67939 List!67939 List!67939) Option!16875)

(assert (=> b!7035558 (= lt!2520364 (findConcatSeparationZippers!391 lt!2520372 lt!2520350 Nil!67815 s!7408 s!7408))))

(assert (=> b!7035558 (= lt!2520350 (set.insert ct2!306 (as set.empty (Set Context!12932))))))

(declare-fun lt!2520337 () Unit!161618)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!379 ((Set Context!12932) Context!12932 List!67939) Unit!161618)

(assert (=> b!7035558 (= lt!2520337 (lemmaConcatZipperMatchesStringThenFindConcatDefined!379 lt!2520372 ct2!306 s!7408))))

(declare-fun b!7035559 () Bool)

(declare-fun res!2872041 () Bool)

(assert (=> b!7035559 (=> (not res!2872041) (not e!4229476))))

(assert (=> b!7035559 (= res!2872041 (is-Cons!67815 s!7408))))

(declare-fun b!7035560 () Bool)

(assert (=> b!7035560 (= e!4229482 e!4229480)))

(declare-fun res!2872022 () Bool)

(assert (=> b!7035560 (=> res!2872022 e!4229480)))

(declare-fun lt!2520373 () (Set Context!12932))

(assert (=> b!7035560 (= res!2872022 (not (= (derivationStepZipper!2926 lt!2520373 (h!74263 s!7408)) lt!2520345)))))

(assert (=> b!7035560 (= lt!2520345 (derivationStepZipperUp!2080 lt!2520355 (h!74263 s!7408)))))

(assert (=> b!7035560 (= (flatMap!2417 lt!2520373 lambda!415358) (derivationStepZipperUp!2080 lt!2520355 (h!74263 s!7408)))))

(declare-fun lt!2520366 () Unit!161618)

(assert (=> b!7035560 (= lt!2520366 (lemmaFlatMapOnSingletonSet!1931 lt!2520373 lt!2520355 lambda!415358))))

(assert (=> b!7035560 (= lt!2520373 (set.insert lt!2520355 (as set.empty (Set Context!12932))))))

(declare-fun b!7035561 () Bool)

(declare-fun tp!1936795 () Bool)

(assert (=> b!7035561 (= e!4229483 tp!1936795)))

(declare-fun b!7035562 () Bool)

(assert (=> b!7035562 (= e!4229479 e!4229488)))

(declare-fun res!2872029 () Bool)

(assert (=> b!7035562 (=> res!2872029 e!4229488)))

(assert (=> b!7035562 (= res!2872029 (not (matchZipper!3010 lt!2520361 (t!381708 s!7408))))))

(declare-fun lt!2520360 () Unit!161618)

(assert (=> b!7035562 (= lt!2520360 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun b!7035563 () Bool)

(declare-fun res!2872033 () Bool)

(assert (=> b!7035563 (=> res!2872033 e!4229471)))

(assert (=> b!7035563 (= res!2872033 (>= (zipperDepthTotal!533 (Cons!67816 lt!2520347 Nil!67816)) lt!2520348))))

(declare-fun b!7035564 () Bool)

(declare-fun e!4229481 () Bool)

(assert (=> b!7035564 (= e!4229477 e!4229481)))

(declare-fun res!2872028 () Bool)

(assert (=> b!7035564 (=> res!2872028 e!4229481)))

(declare-fun lt!2520329 () (Set Context!12932))

(declare-fun lt!2520353 () (Set Context!12932))

(assert (=> b!7035564 (= res!2872028 (not (= lt!2520329 lt!2520353)))))

(assert (=> b!7035564 (= lt!2520329 (set.insert lt!2520375 (as set.empty (Set Context!12932))))))

(declare-fun lt!2520330 () Unit!161618)

(assert (=> b!7035564 (= lt!2520330 (lemmaConcatPreservesForall!791 (exprs!6966 lt!2520355) (exprs!6966 ct2!306) lambda!415357))))

(assert (=> b!7035565 (= e!4229481 e!4229485)))

(declare-fun res!2872039 () Bool)

(assert (=> b!7035565 (=> res!2872039 e!4229485)))

(assert (=> b!7035565 (= res!2872039 (not (= (derivationStepZipper!2926 lt!2520329 (h!74263 s!7408)) lt!2520327)))))

(assert (=> b!7035565 (= (flatMap!2417 lt!2520329 lambda!415358) (derivationStepZipperUp!2080 lt!2520375 (h!74263 s!7408)))))

(declare-fun lt!2520358 () Unit!161618)

(assert (=> b!7035565 (= lt!2520358 (lemmaFlatMapOnSingletonSet!1931 lt!2520329 lt!2520375 lambda!415358))))

(assert (=> b!7035565 (= lt!2520327 (derivationStepZipperUp!2080 lt!2520375 (h!74263 s!7408)))))

(declare-fun lt!2520370 () Unit!161618)

(assert (=> b!7035565 (= lt!2520370 (lemmaConcatPreservesForall!791 (exprs!6966 lt!2520355) (exprs!6966 ct2!306) lambda!415357))))

(declare-fun b!7035566 () Bool)

(assert (=> b!7035566 (= e!4229489 e!4229487)))

(declare-fun res!2872021 () Bool)

(assert (=> b!7035566 (=> res!2872021 e!4229487)))

(assert (=> b!7035566 (= res!2872021 (not (= lt!2520327 lt!2520367)))))

(assert (=> b!7035566 (= lt!2520367 (set.union lt!2520333 lt!2520361))))

(assert (=> b!7035566 (= lt!2520361 (derivationStepZipperUp!2080 lt!2520325 (h!74263 s!7408)))))

(assert (=> b!7035566 (= lt!2520333 (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520355)) lt!2520325 (h!74263 s!7408)))))

(assert (=> b!7035566 (= lt!2520325 (Context!12933 (++!15520 lt!2520323 (exprs!6966 ct2!306))))))

(declare-fun lt!2520328 () Unit!161618)

(assert (=> b!7035566 (= lt!2520328 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(declare-fun lt!2520339 () Unit!161618)

(assert (=> b!7035566 (= lt!2520339 (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(assert (=> b!7035567 (= e!4229476 (not e!4229474))))

(declare-fun res!2872038 () Bool)

(assert (=> b!7035567 (=> res!2872038 e!4229474)))

(assert (=> b!7035567 (= res!2872038 (not (matchZipper!3010 lt!2520353 s!7408)))))

(assert (=> b!7035567 (= lt!2520353 (set.insert lt!2520335 (as set.empty (Set Context!12932))))))

(declare-fun lambda!415355 () Int)

(declare-fun getWitness!1480 ((Set Context!12932) Int) Context!12932)

(assert (=> b!7035567 (= lt!2520335 (getWitness!1480 lt!2520331 lambda!415355))))

(declare-fun lt!2520369 () List!67940)

(declare-fun exists!3401 (List!67940 Int) Bool)

(assert (=> b!7035567 (exists!3401 lt!2520369 lambda!415355)))

(declare-fun lt!2520344 () Unit!161618)

(declare-fun lemmaZipperMatchesExistsMatchingContext!409 (List!67940 List!67939) Unit!161618)

(assert (=> b!7035567 (= lt!2520344 (lemmaZipperMatchesExistsMatchingContext!409 lt!2520369 s!7408))))

(assert (=> b!7035567 (= lt!2520369 (toList!10813 lt!2520331))))

(assert (= (and start!680156 res!2872030) b!7035559))

(assert (= (and b!7035559 res!2872041) b!7035567))

(assert (= (and b!7035567 (not res!2872038)) b!7035552))

(assert (= (and b!7035552 (not res!2872020)) b!7035545))

(assert (= (and b!7035545 (not res!2872035)) b!7035564))

(assert (= (and b!7035564 (not res!2872028)) b!7035565))

(assert (= (and b!7035565 (not res!2872039)) b!7035544))

(assert (= (and b!7035544 (not res!2872031)) b!7035551))

(assert (= (and b!7035551 (not res!2872037)) b!7035553))

(assert (= (and b!7035553 (not res!2872040)) b!7035566))

(assert (= (and b!7035566 (not res!2872021)) b!7035556))

(assert (= (and b!7035556 (not res!2872026)) b!7035548))

(assert (= (and b!7035556 res!2872019) b!7035546))

(assert (= (and b!7035556 (not res!2872025)) b!7035557))

(assert (= (and b!7035557 (not res!2872036)) b!7035562))

(assert (= (and b!7035562 (not res!2872029)) b!7035555))

(assert (= (and b!7035555 (not res!2872027)) b!7035540))

(assert (= (and b!7035540 (not res!2872023)) b!7035541))

(assert (= (and b!7035541 (not res!2872024)) b!7035563))

(assert (= (and b!7035563 (not res!2872033)) b!7035558))

(assert (= (and b!7035558 (not res!2872017)) b!7035547))

(assert (= (and b!7035547 (not res!2872032)) b!7035549))

(assert (= (and b!7035549 (not res!2872018)) b!7035554))

(assert (= (and b!7035554 (not res!2872034)) b!7035560))

(assert (= (and b!7035560 (not res!2872022)) b!7035550))

(assert (= (and start!680156 condSetEmpty!49223) setIsEmpty!49223))

(assert (= (and start!680156 (not condSetEmpty!49223)) setNonEmpty!49223))

(assert (= setNonEmpty!49223 b!7035543))

(assert (= start!680156 b!7035561))

(assert (= (and start!680156 (is-Cons!67815 s!7408)) b!7035542))

(declare-fun m!7743962 () Bool)

(assert (=> b!7035550 m!7743962))

(declare-fun m!7743964 () Bool)

(assert (=> b!7035550 m!7743964))

(declare-fun m!7743966 () Bool)

(assert (=> b!7035555 m!7743966))

(declare-fun m!7743968 () Bool)

(assert (=> b!7035555 m!7743968))

(declare-fun m!7743970 () Bool)

(assert (=> b!7035555 m!7743970))

(declare-fun m!7743972 () Bool)

(assert (=> b!7035555 m!7743972))

(declare-fun m!7743974 () Bool)

(assert (=> b!7035555 m!7743974))

(assert (=> b!7035555 m!7743972))

(assert (=> b!7035555 m!7743972))

(declare-fun m!7743976 () Bool)

(assert (=> b!7035555 m!7743976))

(assert (=> b!7035555 m!7743972))

(declare-fun m!7743978 () Bool)

(assert (=> start!680156 m!7743978))

(declare-fun m!7743980 () Bool)

(assert (=> start!680156 m!7743980))

(declare-fun m!7743982 () Bool)

(assert (=> start!680156 m!7743982))

(declare-fun m!7743984 () Bool)

(assert (=> b!7035562 m!7743984))

(assert (=> b!7035562 m!7743972))

(declare-fun m!7743986 () Bool)

(assert (=> b!7035545 m!7743986))

(declare-fun m!7743988 () Bool)

(assert (=> b!7035545 m!7743988))

(declare-fun m!7743990 () Bool)

(assert (=> b!7035545 m!7743990))

(declare-fun m!7743992 () Bool)

(assert (=> b!7035545 m!7743992))

(declare-fun m!7743994 () Bool)

(assert (=> b!7035566 m!7743994))

(assert (=> b!7035566 m!7743976))

(assert (=> b!7035566 m!7743972))

(assert (=> b!7035566 m!7743972))

(declare-fun m!7743996 () Bool)

(assert (=> b!7035566 m!7743996))

(assert (=> b!7035548 m!7743984))

(assert (=> b!7035546 m!7743984))

(assert (=> b!7035546 m!7743972))

(declare-fun m!7743998 () Bool)

(assert (=> b!7035552 m!7743998))

(declare-fun m!7744000 () Bool)

(assert (=> b!7035563 m!7744000))

(declare-fun m!7744002 () Bool)

(assert (=> b!7035549 m!7744002))

(declare-fun m!7744004 () Bool)

(assert (=> b!7035564 m!7744004))

(assert (=> b!7035564 m!7743990))

(declare-fun m!7744006 () Bool)

(assert (=> b!7035547 m!7744006))

(declare-fun m!7744008 () Bool)

(assert (=> b!7035554 m!7744008))

(declare-fun m!7744010 () Bool)

(assert (=> b!7035558 m!7744010))

(declare-fun m!7744012 () Bool)

(assert (=> b!7035558 m!7744012))

(declare-fun m!7744014 () Bool)

(assert (=> b!7035558 m!7744014))

(declare-fun m!7744016 () Bool)

(assert (=> b!7035558 m!7744016))

(declare-fun m!7744018 () Bool)

(assert (=> b!7035558 m!7744018))

(declare-fun m!7744020 () Bool)

(assert (=> b!7035558 m!7744020))

(declare-fun m!7744022 () Bool)

(assert (=> b!7035567 m!7744022))

(declare-fun m!7744024 () Bool)

(assert (=> b!7035567 m!7744024))

(declare-fun m!7744026 () Bool)

(assert (=> b!7035567 m!7744026))

(declare-fun m!7744028 () Bool)

(assert (=> b!7035567 m!7744028))

(declare-fun m!7744030 () Bool)

(assert (=> b!7035567 m!7744030))

(declare-fun m!7744032 () Bool)

(assert (=> b!7035567 m!7744032))

(declare-fun m!7744034 () Bool)

(assert (=> b!7035540 m!7744034))

(assert (=> b!7035540 m!7743972))

(declare-fun m!7744036 () Bool)

(assert (=> b!7035551 m!7744036))

(declare-fun m!7744038 () Bool)

(assert (=> b!7035556 m!7744038))

(assert (=> b!7035556 m!7743972))

(declare-fun m!7744040 () Bool)

(assert (=> b!7035556 m!7744040))

(assert (=> b!7035556 m!7743972))

(declare-fun m!7744042 () Bool)

(assert (=> b!7035556 m!7744042))

(assert (=> b!7035556 m!7743972))

(declare-fun m!7744044 () Bool)

(assert (=> b!7035556 m!7744044))

(declare-fun m!7744046 () Bool)

(assert (=> b!7035541 m!7744046))

(declare-fun m!7744048 () Bool)

(assert (=> b!7035541 m!7744048))

(declare-fun m!7744050 () Bool)

(assert (=> b!7035541 m!7744050))

(declare-fun m!7744052 () Bool)

(assert (=> b!7035541 m!7744052))

(declare-fun m!7744054 () Bool)

(assert (=> b!7035541 m!7744054))

(assert (=> b!7035541 m!7743972))

(assert (=> b!7035541 m!7743972))

(assert (=> b!7035541 m!7743994))

(declare-fun m!7744056 () Bool)

(assert (=> b!7035541 m!7744056))

(declare-fun m!7744058 () Bool)

(assert (=> b!7035541 m!7744058))

(declare-fun m!7744060 () Bool)

(assert (=> b!7035541 m!7744060))

(declare-fun m!7744062 () Bool)

(assert (=> b!7035541 m!7744062))

(assert (=> b!7035541 m!7743972))

(assert (=> b!7035541 m!7743964))

(declare-fun m!7744064 () Bool)

(assert (=> b!7035541 m!7744064))

(declare-fun m!7744066 () Bool)

(assert (=> b!7035541 m!7744066))

(assert (=> b!7035541 m!7743972))

(declare-fun m!7744068 () Bool)

(assert (=> b!7035560 m!7744068))

(declare-fun m!7744070 () Bool)

(assert (=> b!7035560 m!7744070))

(declare-fun m!7744072 () Bool)

(assert (=> b!7035560 m!7744072))

(declare-fun m!7744074 () Bool)

(assert (=> b!7035560 m!7744074))

(declare-fun m!7744076 () Bool)

(assert (=> b!7035560 m!7744076))

(declare-fun m!7744078 () Bool)

(assert (=> b!7035565 m!7744078))

(declare-fun m!7744080 () Bool)

(assert (=> b!7035565 m!7744080))

(declare-fun m!7744082 () Bool)

(assert (=> b!7035565 m!7744082))

(declare-fun m!7744084 () Bool)

(assert (=> b!7035565 m!7744084))

(assert (=> b!7035565 m!7743990))

(declare-fun m!7744086 () Bool)

(assert (=> setNonEmpty!49223 m!7744086))

(declare-fun m!7744088 () Bool)

(assert (=> b!7035553 m!7744088))

(declare-fun m!7744090 () Bool)

(assert (=> b!7035553 m!7744090))

(push 1)

(assert (not b!7035543))

(assert (not b!7035547))

(assert (not b!7035550))

(assert (not b!7035540))

(assert (not setNonEmpty!49223))

(assert (not b!7035566))

(assert (not b!7035563))

(assert (not b!7035555))

(assert (not b!7035551))

(assert (not b!7035558))

(assert (not b!7035554))

(assert (not b!7035560))

(assert (not b!7035546))

(assert (not b!7035561))

(assert (not b!7035542))

(assert (not b!7035567))

(assert tp_is_empty!44165)

(assert (not start!680156))

(assert (not b!7035565))

(assert (not b!7035556))

(assert (not b!7035564))

(assert (not b!7035553))

(assert (not b!7035549))

(assert (not b!7035545))

(assert (not b!7035548))

(assert (not b!7035541))

(assert (not b!7035562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2195799 () Bool)

(declare-fun lt!2520545 () Int)

(assert (=> d!2195799 (>= lt!2520545 0)))

(declare-fun e!4229549 () Int)

(assert (=> d!2195799 (= lt!2520545 e!4229549)))

(declare-fun c!1308992 () Bool)

(assert (=> d!2195799 (= c!1308992 (is-Cons!67816 (Cons!67816 lt!2520347 Nil!67816)))))

(assert (=> d!2195799 (= (zipperDepthTotal!533 (Cons!67816 lt!2520347 Nil!67816)) lt!2520545)))

(declare-fun b!7035668 () Bool)

(assert (=> b!7035668 (= e!4229549 (+ (contextDepthTotal!505 (h!74264 (Cons!67816 lt!2520347 Nil!67816))) (zipperDepthTotal!533 (t!381709 (Cons!67816 lt!2520347 Nil!67816)))))))

(declare-fun b!7035669 () Bool)

(assert (=> b!7035669 (= e!4229549 0)))

(assert (= (and d!2195799 c!1308992) b!7035668))

(assert (= (and d!2195799 (not c!1308992)) b!7035669))

(declare-fun m!7744222 () Bool)

(assert (=> b!7035668 m!7744222))

(declare-fun m!7744224 () Bool)

(assert (=> b!7035668 m!7744224))

(assert (=> b!7035563 d!2195799))

(declare-fun d!2195801 () Bool)

(declare-fun c!1308995 () Bool)

(assert (=> d!2195801 (= c!1308995 (isEmpty!39558 (t!381708 s!7408)))))

(declare-fun e!4229552 () Bool)

(assert (=> d!2195801 (= (matchZipper!3010 lt!2520361 (t!381708 s!7408)) e!4229552)))

(declare-fun b!7035674 () Bool)

(declare-fun nullableZipper!2583 ((Set Context!12932)) Bool)

(assert (=> b!7035674 (= e!4229552 (nullableZipper!2583 lt!2520361))))

(declare-fun b!7035675 () Bool)

(declare-fun head!14270 (List!67939) C!35210)

(declare-fun tail!13563 (List!67939) List!67939)

(assert (=> b!7035675 (= e!4229552 (matchZipper!3010 (derivationStepZipper!2926 lt!2520361 (head!14270 (t!381708 s!7408))) (tail!13563 (t!381708 s!7408))))))

(assert (= (and d!2195801 c!1308995) b!7035674))

(assert (= (and d!2195801 (not c!1308995)) b!7035675))

(declare-fun m!7744226 () Bool)

(assert (=> d!2195801 m!7744226))

(declare-fun m!7744228 () Bool)

(assert (=> b!7035674 m!7744228))

(declare-fun m!7744230 () Bool)

(assert (=> b!7035675 m!7744230))

(assert (=> b!7035675 m!7744230))

(declare-fun m!7744232 () Bool)

(assert (=> b!7035675 m!7744232))

(declare-fun m!7744234 () Bool)

(assert (=> b!7035675 m!7744234))

(assert (=> b!7035675 m!7744232))

(assert (=> b!7035675 m!7744234))

(declare-fun m!7744236 () Bool)

(assert (=> b!7035675 m!7744236))

(assert (=> b!7035562 d!2195801))

(declare-fun d!2195803 () Bool)

(declare-fun forall!16385 (List!67938 Int) Bool)

(assert (=> d!2195803 (forall!16385 (++!15520 lt!2520323 (exprs!6966 ct2!306)) lambda!415357)))

(declare-fun lt!2520548 () Unit!161618)

(declare-fun choose!53304 (List!67938 List!67938 Int) Unit!161618)

(assert (=> d!2195803 (= lt!2520548 (choose!53304 lt!2520323 (exprs!6966 ct2!306) lambda!415357))))

(assert (=> d!2195803 (forall!16385 lt!2520323 lambda!415357)))

(assert (=> d!2195803 (= (lemmaConcatPreservesForall!791 lt!2520323 (exprs!6966 ct2!306) lambda!415357) lt!2520548)))

(declare-fun bs!1871940 () Bool)

(assert (= bs!1871940 d!2195803))

(assert (=> bs!1871940 m!7743994))

(assert (=> bs!1871940 m!7743994))

(declare-fun m!7744238 () Bool)

(assert (=> bs!1871940 m!7744238))

(declare-fun m!7744240 () Bool)

(assert (=> bs!1871940 m!7744240))

(declare-fun m!7744242 () Bool)

(assert (=> bs!1871940 m!7744242))

(assert (=> b!7035562 d!2195803))

(assert (=> b!7035546 d!2195801))

(assert (=> b!7035546 d!2195803))

(assert (=> b!7035566 d!2195803))

(declare-fun d!2195805 () Bool)

(declare-fun e!4229558 () Bool)

(assert (=> d!2195805 e!4229558))

(declare-fun res!2872123 () Bool)

(assert (=> d!2195805 (=> (not res!2872123) (not e!4229558))))

(declare-fun lt!2520551 () List!67938)

(declare-fun content!13544 (List!67938) (Set Regex!17470))

(assert (=> d!2195805 (= res!2872123 (= (content!13544 lt!2520551) (set.union (content!13544 lt!2520323) (content!13544 (exprs!6966 ct2!306)))))))

(declare-fun e!4229557 () List!67938)

(assert (=> d!2195805 (= lt!2520551 e!4229557)))

(declare-fun c!1308998 () Bool)

(assert (=> d!2195805 (= c!1308998 (is-Nil!67814 lt!2520323))))

(assert (=> d!2195805 (= (++!15520 lt!2520323 (exprs!6966 ct2!306)) lt!2520551)))

(declare-fun b!7035684 () Bool)

(assert (=> b!7035684 (= e!4229557 (exprs!6966 ct2!306))))

(declare-fun b!7035687 () Bool)

(assert (=> b!7035687 (= e!4229558 (or (not (= (exprs!6966 ct2!306) Nil!67814)) (= lt!2520551 lt!2520323)))))

(declare-fun b!7035685 () Bool)

(assert (=> b!7035685 (= e!4229557 (Cons!67814 (h!74262 lt!2520323) (++!15520 (t!381707 lt!2520323) (exprs!6966 ct2!306))))))

(declare-fun b!7035686 () Bool)

(declare-fun res!2872122 () Bool)

(assert (=> b!7035686 (=> (not res!2872122) (not e!4229558))))

(declare-fun size!41070 (List!67938) Int)

(assert (=> b!7035686 (= res!2872122 (= (size!41070 lt!2520551) (+ (size!41070 lt!2520323) (size!41070 (exprs!6966 ct2!306)))))))

(assert (= (and d!2195805 c!1308998) b!7035684))

(assert (= (and d!2195805 (not c!1308998)) b!7035685))

(assert (= (and d!2195805 res!2872123) b!7035686))

(assert (= (and b!7035686 res!2872122) b!7035687))

(declare-fun m!7744244 () Bool)

(assert (=> d!2195805 m!7744244))

(declare-fun m!7744246 () Bool)

(assert (=> d!2195805 m!7744246))

(declare-fun m!7744248 () Bool)

(assert (=> d!2195805 m!7744248))

(declare-fun m!7744250 () Bool)

(assert (=> b!7035685 m!7744250))

(declare-fun m!7744252 () Bool)

(assert (=> b!7035686 m!7744252))

(declare-fun m!7744254 () Bool)

(assert (=> b!7035686 m!7744254))

(declare-fun m!7744256 () Bool)

(assert (=> b!7035686 m!7744256))

(assert (=> b!7035566 d!2195805))

(declare-fun b!7035698 () Bool)

(declare-fun e!4229567 () Bool)

(assert (=> b!7035698 (= e!4229567 (nullable!7181 (h!74262 (exprs!6966 lt!2520325))))))

(declare-fun b!7035699 () Bool)

(declare-fun e!4229566 () (Set Context!12932))

(declare-fun e!4229565 () (Set Context!12932))

(assert (=> b!7035699 (= e!4229566 e!4229565)))

(declare-fun c!1309003 () Bool)

(assert (=> b!7035699 (= c!1309003 (is-Cons!67814 (exprs!6966 lt!2520325)))))

(declare-fun b!7035700 () Bool)

(declare-fun call!638928 () (Set Context!12932))

(assert (=> b!7035700 (= e!4229565 call!638928)))

(declare-fun bm!638923 () Bool)

(assert (=> bm!638923 (= call!638928 (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520325)) (Context!12933 (t!381707 (exprs!6966 lt!2520325))) (h!74263 s!7408)))))

(declare-fun b!7035702 () Bool)

(assert (=> b!7035702 (= e!4229566 (set.union call!638928 (derivationStepZipperUp!2080 (Context!12933 (t!381707 (exprs!6966 lt!2520325))) (h!74263 s!7408))))))

(declare-fun b!7035701 () Bool)

(assert (=> b!7035701 (= e!4229565 (as set.empty (Set Context!12932)))))

(declare-fun d!2195807 () Bool)

(declare-fun c!1309004 () Bool)

(assert (=> d!2195807 (= c!1309004 e!4229567)))

(declare-fun res!2872126 () Bool)

(assert (=> d!2195807 (=> (not res!2872126) (not e!4229567))))

(assert (=> d!2195807 (= res!2872126 (is-Cons!67814 (exprs!6966 lt!2520325)))))

(assert (=> d!2195807 (= (derivationStepZipperUp!2080 lt!2520325 (h!74263 s!7408)) e!4229566)))

(assert (= (and d!2195807 res!2872126) b!7035698))

(assert (= (and d!2195807 c!1309004) b!7035702))

(assert (= (and d!2195807 (not c!1309004)) b!7035699))

(assert (= (and b!7035699 c!1309003) b!7035700))

(assert (= (and b!7035699 (not c!1309003)) b!7035701))

(assert (= (or b!7035702 b!7035700) bm!638923))

(declare-fun m!7744258 () Bool)

(assert (=> b!7035698 m!7744258))

(declare-fun m!7744260 () Bool)

(assert (=> bm!638923 m!7744260))

(declare-fun m!7744262 () Bool)

(assert (=> b!7035702 m!7744262))

(assert (=> b!7035566 d!2195807))

(declare-fun b!7035725 () Bool)

(declare-fun e!4229581 () (Set Context!12932))

(declare-fun e!4229580 () (Set Context!12932))

(assert (=> b!7035725 (= e!4229581 e!4229580)))

(declare-fun c!1309019 () Bool)

(assert (=> b!7035725 (= c!1309019 (is-Union!17470 (h!74262 (exprs!6966 lt!2520355))))))

(declare-fun b!7035726 () Bool)

(declare-fun e!4229583 () (Set Context!12932))

(assert (=> b!7035726 (= e!4229583 (as set.empty (Set Context!12932)))))

(declare-fun b!7035727 () Bool)

(declare-fun e!4229585 () (Set Context!12932))

(declare-fun call!638942 () (Set Context!12932))

(declare-fun call!638943 () (Set Context!12932))

(assert (=> b!7035727 (= e!4229585 (set.union call!638942 call!638943))))

(declare-fun d!2195809 () Bool)

(declare-fun c!1309015 () Bool)

(assert (=> d!2195809 (= c!1309015 (and (is-ElementMatch!17470 (h!74262 (exprs!6966 lt!2520355))) (= (c!1308972 (h!74262 (exprs!6966 lt!2520355))) (h!74263 s!7408))))))

(assert (=> d!2195809 (= (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520355)) lt!2520325 (h!74263 s!7408)) e!4229581)))

(declare-fun b!7035728 () Bool)

(assert (=> b!7035728 (= e!4229581 (set.insert lt!2520325 (as set.empty (Set Context!12932))))))

(declare-fun bm!638936 () Bool)

(declare-fun call!638946 () List!67938)

(declare-fun call!638941 () List!67938)

(assert (=> bm!638936 (= call!638946 call!638941)))

(declare-fun b!7035729 () Bool)

(declare-fun c!1309017 () Bool)

(declare-fun e!4229584 () Bool)

(assert (=> b!7035729 (= c!1309017 e!4229584)))

(declare-fun res!2872130 () Bool)

(assert (=> b!7035729 (=> (not res!2872130) (not e!4229584))))

(assert (=> b!7035729 (= res!2872130 (is-Concat!26315 (h!74262 (exprs!6966 lt!2520355))))))

(assert (=> b!7035729 (= e!4229580 e!4229585)))

(declare-fun bm!638937 () Bool)

(declare-fun call!638944 () (Set Context!12932))

(assert (=> bm!638937 (= call!638944 call!638943)))

(declare-fun b!7035730 () Bool)

(declare-fun c!1309016 () Bool)

(assert (=> b!7035730 (= c!1309016 (is-Star!17470 (h!74262 (exprs!6966 lt!2520355))))))

(declare-fun e!4229582 () (Set Context!12932))

(assert (=> b!7035730 (= e!4229582 e!4229583)))

(declare-fun bm!638938 () Bool)

(declare-fun call!638945 () (Set Context!12932))

(assert (=> bm!638938 (= call!638943 call!638945)))

(declare-fun bm!638939 () Bool)

(assert (=> bm!638939 (= call!638942 (derivationStepZipperDown!2134 (ite c!1309019 (regTwo!35453 (h!74262 (exprs!6966 lt!2520355))) (regOne!35452 (h!74262 (exprs!6966 lt!2520355)))) (ite c!1309019 lt!2520325 (Context!12933 call!638941)) (h!74263 s!7408)))))

(declare-fun b!7035731 () Bool)

(assert (=> b!7035731 (= e!4229582 call!638944)))

(declare-fun b!7035732 () Bool)

(assert (=> b!7035732 (= e!4229584 (nullable!7181 (regOne!35452 (h!74262 (exprs!6966 lt!2520355)))))))

(declare-fun c!1309018 () Bool)

(declare-fun bm!638940 () Bool)

(declare-fun $colon$colon!2577 (List!67938 Regex!17470) List!67938)

(assert (=> bm!638940 (= call!638941 ($colon$colon!2577 (exprs!6966 lt!2520325) (ite (or c!1309017 c!1309018) (regTwo!35452 (h!74262 (exprs!6966 lt!2520355))) (h!74262 (exprs!6966 lt!2520355)))))))

(declare-fun b!7035733 () Bool)

(assert (=> b!7035733 (= e!4229580 (set.union call!638945 call!638942))))

(declare-fun b!7035734 () Bool)

(assert (=> b!7035734 (= e!4229583 call!638944)))

(declare-fun bm!638941 () Bool)

(assert (=> bm!638941 (= call!638945 (derivationStepZipperDown!2134 (ite c!1309019 (regOne!35453 (h!74262 (exprs!6966 lt!2520355))) (ite c!1309017 (regTwo!35452 (h!74262 (exprs!6966 lt!2520355))) (ite c!1309018 (regOne!35452 (h!74262 (exprs!6966 lt!2520355))) (reg!17799 (h!74262 (exprs!6966 lt!2520355)))))) (ite (or c!1309019 c!1309017) lt!2520325 (Context!12933 call!638946)) (h!74263 s!7408)))))

(declare-fun b!7035735 () Bool)

(assert (=> b!7035735 (= e!4229585 e!4229582)))

(assert (=> b!7035735 (= c!1309018 (is-Concat!26315 (h!74262 (exprs!6966 lt!2520355))))))

(assert (= (and d!2195809 c!1309015) b!7035728))

(assert (= (and d!2195809 (not c!1309015)) b!7035725))

(assert (= (and b!7035725 c!1309019) b!7035733))

(assert (= (and b!7035725 (not c!1309019)) b!7035729))

(assert (= (and b!7035729 res!2872130) b!7035732))

(assert (= (and b!7035729 c!1309017) b!7035727))

(assert (= (and b!7035729 (not c!1309017)) b!7035735))

(assert (= (and b!7035735 c!1309018) b!7035731))

(assert (= (and b!7035735 (not c!1309018)) b!7035730))

(assert (= (and b!7035730 c!1309016) b!7035734))

(assert (= (and b!7035730 (not c!1309016)) b!7035726))

(assert (= (or b!7035731 b!7035734) bm!638936))

(assert (= (or b!7035731 b!7035734) bm!638937))

(assert (= (or b!7035727 bm!638937) bm!638938))

(assert (= (or b!7035727 bm!638936) bm!638940))

(assert (= (or b!7035733 bm!638938) bm!638941))

(assert (= (or b!7035733 b!7035727) bm!638939))

(assert (=> b!7035728 m!7743968))

(declare-fun m!7744264 () Bool)

(assert (=> bm!638940 m!7744264))

(declare-fun m!7744266 () Bool)

(assert (=> b!7035732 m!7744266))

(declare-fun m!7744268 () Bool)

(assert (=> bm!638939 m!7744268))

(declare-fun m!7744270 () Bool)

(assert (=> bm!638941 m!7744270))

(assert (=> b!7035566 d!2195809))

(declare-fun d!2195811 () Bool)

(declare-fun e!4229587 () Bool)

(assert (=> d!2195811 e!4229587))

(declare-fun res!2872132 () Bool)

(assert (=> d!2195811 (=> (not res!2872132) (not e!4229587))))

(declare-fun lt!2520552 () List!67938)

(assert (=> d!2195811 (= res!2872132 (= (content!13544 lt!2520552) (set.union (content!13544 (exprs!6966 lt!2520355)) (content!13544 (exprs!6966 ct2!306)))))))

(declare-fun e!4229586 () List!67938)

(assert (=> d!2195811 (= lt!2520552 e!4229586)))

(declare-fun c!1309020 () Bool)

(assert (=> d!2195811 (= c!1309020 (is-Nil!67814 (exprs!6966 lt!2520355)))))

(assert (=> d!2195811 (= (++!15520 (exprs!6966 lt!2520355) (exprs!6966 ct2!306)) lt!2520552)))

(declare-fun b!7035736 () Bool)

(assert (=> b!7035736 (= e!4229586 (exprs!6966 ct2!306))))

(declare-fun b!7035739 () Bool)

(assert (=> b!7035739 (= e!4229587 (or (not (= (exprs!6966 ct2!306) Nil!67814)) (= lt!2520552 (exprs!6966 lt!2520355))))))

(declare-fun b!7035737 () Bool)

(assert (=> b!7035737 (= e!4229586 (Cons!67814 (h!74262 (exprs!6966 lt!2520355)) (++!15520 (t!381707 (exprs!6966 lt!2520355)) (exprs!6966 ct2!306))))))

(declare-fun b!7035738 () Bool)

(declare-fun res!2872131 () Bool)

(assert (=> b!7035738 (=> (not res!2872131) (not e!4229587))))

(assert (=> b!7035738 (= res!2872131 (= (size!41070 lt!2520552) (+ (size!41070 (exprs!6966 lt!2520355)) (size!41070 (exprs!6966 ct2!306)))))))

(assert (= (and d!2195811 c!1309020) b!7035736))

(assert (= (and d!2195811 (not c!1309020)) b!7035737))

(assert (= (and d!2195811 res!2872132) b!7035738))

(assert (= (and b!7035738 res!2872131) b!7035739))

(declare-fun m!7744272 () Bool)

(assert (=> d!2195811 m!7744272))

(declare-fun m!7744274 () Bool)

(assert (=> d!2195811 m!7744274))

(assert (=> d!2195811 m!7744248))

(declare-fun m!7744276 () Bool)

(assert (=> b!7035737 m!7744276))

(declare-fun m!7744278 () Bool)

(assert (=> b!7035738 m!7744278))

(declare-fun m!7744280 () Bool)

(assert (=> b!7035738 m!7744280))

(assert (=> b!7035738 m!7744256))

(assert (=> b!7035545 d!2195811))

(declare-fun d!2195813 () Bool)

(assert (=> d!2195813 (forall!16385 (++!15520 (exprs!6966 lt!2520355) (exprs!6966 ct2!306)) lambda!415357)))

(declare-fun lt!2520553 () Unit!161618)

(assert (=> d!2195813 (= lt!2520553 (choose!53304 (exprs!6966 lt!2520355) (exprs!6966 ct2!306) lambda!415357))))

(assert (=> d!2195813 (forall!16385 (exprs!6966 lt!2520355) lambda!415357)))

(assert (=> d!2195813 (= (lemmaConcatPreservesForall!791 (exprs!6966 lt!2520355) (exprs!6966 ct2!306) lambda!415357) lt!2520553)))

(declare-fun bs!1871941 () Bool)

(assert (= bs!1871941 d!2195813))

(assert (=> bs!1871941 m!7743988))

(assert (=> bs!1871941 m!7743988))

(declare-fun m!7744282 () Bool)

(assert (=> bs!1871941 m!7744282))

(declare-fun m!7744284 () Bool)

(assert (=> bs!1871941 m!7744284))

(declare-fun m!7744286 () Bool)

(assert (=> bs!1871941 m!7744286))

(assert (=> b!7035545 d!2195813))

(declare-fun d!2195815 () Bool)

(declare-fun e!4229590 () Bool)

(assert (=> d!2195815 e!4229590))

(declare-fun res!2872135 () Bool)

(assert (=> d!2195815 (=> (not res!2872135) (not e!4229590))))

(declare-fun lt!2520556 () Context!12932)

(declare-fun dynLambda!27397 (Int Context!12932) Context!12932)

(assert (=> d!2195815 (= res!2872135 (= lt!2520335 (dynLambda!27397 lambda!415356 lt!2520556)))))

(declare-fun choose!53305 ((Set Context!12932) Int Context!12932) Context!12932)

(assert (=> d!2195815 (= lt!2520556 (choose!53305 z1!570 lambda!415356 lt!2520335))))

(assert (=> d!2195815 (set.member lt!2520335 (map!15773 z1!570 lambda!415356))))

(assert (=> d!2195815 (= (mapPost2!311 z1!570 lambda!415356 lt!2520335) lt!2520556)))

(declare-fun b!7035743 () Bool)

(assert (=> b!7035743 (= e!4229590 (set.member lt!2520556 z1!570))))

(assert (= (and d!2195815 res!2872135) b!7035743))

(declare-fun b_lambda!266835 () Bool)

(assert (=> (not b_lambda!266835) (not d!2195815)))

(declare-fun m!7744288 () Bool)

(assert (=> d!2195815 m!7744288))

(declare-fun m!7744290 () Bool)

(assert (=> d!2195815 m!7744290))

(declare-fun m!7744292 () Bool)

(assert (=> d!2195815 m!7744292))

(declare-fun m!7744294 () Bool)

(assert (=> d!2195815 m!7744294))

(declare-fun m!7744296 () Bool)

(assert (=> b!7035743 m!7744296))

(assert (=> b!7035545 d!2195815))

(assert (=> b!7035564 d!2195813))

(declare-fun d!2195817 () Bool)

(declare-fun dynLambda!27398 (Int Context!12932) (Set Context!12932))

(assert (=> d!2195817 (= (flatMap!2417 lt!2520329 lambda!415358) (dynLambda!27398 lambda!415358 lt!2520375))))

(declare-fun lt!2520559 () Unit!161618)

(declare-fun choose!53306 ((Set Context!12932) Context!12932 Int) Unit!161618)

(assert (=> d!2195817 (= lt!2520559 (choose!53306 lt!2520329 lt!2520375 lambda!415358))))

(assert (=> d!2195817 (= lt!2520329 (set.insert lt!2520375 (as set.empty (Set Context!12932))))))

(assert (=> d!2195817 (= (lemmaFlatMapOnSingletonSet!1931 lt!2520329 lt!2520375 lambda!415358) lt!2520559)))

(declare-fun b_lambda!266837 () Bool)

(assert (=> (not b_lambda!266837) (not d!2195817)))

(declare-fun bs!1871942 () Bool)

(assert (= bs!1871942 d!2195817))

(assert (=> bs!1871942 m!7744082))

(declare-fun m!7744298 () Bool)

(assert (=> bs!1871942 m!7744298))

(declare-fun m!7744300 () Bool)

(assert (=> bs!1871942 m!7744300))

(assert (=> bs!1871942 m!7744004))

(assert (=> b!7035565 d!2195817))

(declare-fun d!2195819 () Bool)

(declare-fun choose!53307 ((Set Context!12932) Int) (Set Context!12932))

(assert (=> d!2195819 (= (flatMap!2417 lt!2520329 lambda!415358) (choose!53307 lt!2520329 lambda!415358))))

(declare-fun bs!1871943 () Bool)

(assert (= bs!1871943 d!2195819))

(declare-fun m!7744302 () Bool)

(assert (=> bs!1871943 m!7744302))

(assert (=> b!7035565 d!2195819))

(declare-fun bs!1871944 () Bool)

(declare-fun d!2195821 () Bool)

(assert (= bs!1871944 (and d!2195821 b!7035565)))

(declare-fun lambda!415423 () Int)

(assert (=> bs!1871944 (= lambda!415423 lambda!415358)))

(assert (=> d!2195821 true))

(assert (=> d!2195821 (= (derivationStepZipper!2926 lt!2520329 (h!74263 s!7408)) (flatMap!2417 lt!2520329 lambda!415423))))

(declare-fun bs!1871945 () Bool)

(assert (= bs!1871945 d!2195821))

(declare-fun m!7744304 () Bool)

(assert (=> bs!1871945 m!7744304))

(assert (=> b!7035565 d!2195821))

(declare-fun b!7035746 () Bool)

(declare-fun e!4229593 () Bool)

(assert (=> b!7035746 (= e!4229593 (nullable!7181 (h!74262 (exprs!6966 lt!2520375))))))

(declare-fun b!7035747 () Bool)

(declare-fun e!4229592 () (Set Context!12932))

(declare-fun e!4229591 () (Set Context!12932))

(assert (=> b!7035747 (= e!4229592 e!4229591)))

(declare-fun c!1309023 () Bool)

(assert (=> b!7035747 (= c!1309023 (is-Cons!67814 (exprs!6966 lt!2520375)))))

(declare-fun b!7035748 () Bool)

(declare-fun call!638947 () (Set Context!12932))

(assert (=> b!7035748 (= e!4229591 call!638947)))

(declare-fun bm!638942 () Bool)

(assert (=> bm!638942 (= call!638947 (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520375)) (Context!12933 (t!381707 (exprs!6966 lt!2520375))) (h!74263 s!7408)))))

(declare-fun b!7035750 () Bool)

(assert (=> b!7035750 (= e!4229592 (set.union call!638947 (derivationStepZipperUp!2080 (Context!12933 (t!381707 (exprs!6966 lt!2520375))) (h!74263 s!7408))))))

(declare-fun b!7035749 () Bool)

(assert (=> b!7035749 (= e!4229591 (as set.empty (Set Context!12932)))))

(declare-fun d!2195823 () Bool)

(declare-fun c!1309024 () Bool)

(assert (=> d!2195823 (= c!1309024 e!4229593)))

(declare-fun res!2872136 () Bool)

(assert (=> d!2195823 (=> (not res!2872136) (not e!4229593))))

(assert (=> d!2195823 (= res!2872136 (is-Cons!67814 (exprs!6966 lt!2520375)))))

(assert (=> d!2195823 (= (derivationStepZipperUp!2080 lt!2520375 (h!74263 s!7408)) e!4229592)))

(assert (= (and d!2195823 res!2872136) b!7035746))

(assert (= (and d!2195823 c!1309024) b!7035750))

(assert (= (and d!2195823 (not c!1309024)) b!7035747))

(assert (= (and b!7035747 c!1309023) b!7035748))

(assert (= (and b!7035747 (not c!1309023)) b!7035749))

(assert (= (or b!7035750 b!7035748) bm!638942))

(declare-fun m!7744306 () Bool)

(assert (=> b!7035746 m!7744306))

(declare-fun m!7744308 () Bool)

(assert (=> bm!638942 m!7744308))

(declare-fun m!7744310 () Bool)

(assert (=> b!7035750 m!7744310))

(assert (=> b!7035565 d!2195823))

(assert (=> b!7035565 d!2195813))

(declare-fun d!2195825 () Bool)

(declare-fun c!1309025 () Bool)

(assert (=> d!2195825 (= c!1309025 (isEmpty!39558 (_1!37346 lt!2520346)))))

(declare-fun e!4229594 () Bool)

(assert (=> d!2195825 (= (matchZipper!3010 lt!2520372 (_1!37346 lt!2520346)) e!4229594)))

(declare-fun b!7035751 () Bool)

(assert (=> b!7035751 (= e!4229594 (nullableZipper!2583 lt!2520372))))

(declare-fun b!7035752 () Bool)

(assert (=> b!7035752 (= e!4229594 (matchZipper!3010 (derivationStepZipper!2926 lt!2520372 (head!14270 (_1!37346 lt!2520346))) (tail!13563 (_1!37346 lt!2520346))))))

(assert (= (and d!2195825 c!1309025) b!7035751))

(assert (= (and d!2195825 (not c!1309025)) b!7035752))

(assert (=> d!2195825 m!7744008))

(declare-fun m!7744312 () Bool)

(assert (=> b!7035751 m!7744312))

(declare-fun m!7744314 () Bool)

(assert (=> b!7035752 m!7744314))

(assert (=> b!7035752 m!7744314))

(declare-fun m!7744316 () Bool)

(assert (=> b!7035752 m!7744316))

(declare-fun m!7744318 () Bool)

(assert (=> b!7035752 m!7744318))

(assert (=> b!7035752 m!7744316))

(assert (=> b!7035752 m!7744318))

(declare-fun m!7744320 () Bool)

(assert (=> b!7035752 m!7744320))

(assert (=> b!7035558 d!2195825))

(declare-fun b!7035771 () Bool)

(declare-fun e!4229605 () Option!16875)

(declare-fun e!4229609 () Option!16875)

(assert (=> b!7035771 (= e!4229605 e!4229609)))

(declare-fun c!1309030 () Bool)

(assert (=> b!7035771 (= c!1309030 (is-Nil!67815 s!7408))))

(declare-fun b!7035772 () Bool)

(declare-fun e!4229608 () Bool)

(declare-fun lt!2520566 () Option!16875)

(assert (=> b!7035772 (= e!4229608 (not (isDefined!13576 lt!2520566)))))

(declare-fun b!7035773 () Bool)

(declare-fun res!2872147 () Bool)

(declare-fun e!4229606 () Bool)

(assert (=> b!7035773 (=> (not res!2872147) (not e!4229606))))

(assert (=> b!7035773 (= res!2872147 (matchZipper!3010 lt!2520350 (_2!37346 (get!23761 lt!2520566))))))

(declare-fun b!7035774 () Bool)

(assert (=> b!7035774 (= e!4229609 None!16874)))

(declare-fun d!2195827 () Bool)

(assert (=> d!2195827 e!4229608))

(declare-fun res!2872150 () Bool)

(assert (=> d!2195827 (=> res!2872150 e!4229608)))

(assert (=> d!2195827 (= res!2872150 e!4229606)))

(declare-fun res!2872149 () Bool)

(assert (=> d!2195827 (=> (not res!2872149) (not e!4229606))))

(assert (=> d!2195827 (= res!2872149 (isDefined!13576 lt!2520566))))

(assert (=> d!2195827 (= lt!2520566 e!4229605)))

(declare-fun c!1309031 () Bool)

(declare-fun e!4229607 () Bool)

(assert (=> d!2195827 (= c!1309031 e!4229607)))

(declare-fun res!2872151 () Bool)

(assert (=> d!2195827 (=> (not res!2872151) (not e!4229607))))

(assert (=> d!2195827 (= res!2872151 (matchZipper!3010 lt!2520372 Nil!67815))))

(assert (=> d!2195827 (= (++!15521 Nil!67815 s!7408) s!7408)))

(assert (=> d!2195827 (= (findConcatSeparationZippers!391 lt!2520372 lt!2520350 Nil!67815 s!7408 s!7408) lt!2520566)))

(declare-fun b!7035775 () Bool)

(assert (=> b!7035775 (= e!4229607 (matchZipper!3010 lt!2520350 s!7408))))

(declare-fun b!7035776 () Bool)

(assert (=> b!7035776 (= e!4229606 (= (++!15521 (_1!37346 (get!23761 lt!2520566)) (_2!37346 (get!23761 lt!2520566))) s!7408))))

(declare-fun b!7035777 () Bool)

(assert (=> b!7035777 (= e!4229605 (Some!16874 (tuple2!68087 Nil!67815 s!7408)))))

(declare-fun b!7035778 () Bool)

(declare-fun lt!2520567 () Unit!161618)

(declare-fun lt!2520568 () Unit!161618)

(assert (=> b!7035778 (= lt!2520567 lt!2520568)))

(assert (=> b!7035778 (= (++!15521 (++!15521 Nil!67815 (Cons!67815 (h!74263 s!7408) Nil!67815)) (t!381708 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2927 (List!67939 C!35210 List!67939 List!67939) Unit!161618)

(assert (=> b!7035778 (= lt!2520568 (lemmaMoveElementToOtherListKeepsConcatEq!2927 Nil!67815 (h!74263 s!7408) (t!381708 s!7408) s!7408))))

(assert (=> b!7035778 (= e!4229609 (findConcatSeparationZippers!391 lt!2520372 lt!2520350 (++!15521 Nil!67815 (Cons!67815 (h!74263 s!7408) Nil!67815)) (t!381708 s!7408) s!7408))))

(declare-fun b!7035779 () Bool)

(declare-fun res!2872148 () Bool)

(assert (=> b!7035779 (=> (not res!2872148) (not e!4229606))))

(assert (=> b!7035779 (= res!2872148 (matchZipper!3010 lt!2520372 (_1!37346 (get!23761 lt!2520566))))))

(assert (= (and d!2195827 res!2872151) b!7035775))

(assert (= (and d!2195827 c!1309031) b!7035777))

(assert (= (and d!2195827 (not c!1309031)) b!7035771))

(assert (= (and b!7035771 c!1309030) b!7035774))

(assert (= (and b!7035771 (not c!1309030)) b!7035778))

(assert (= (and d!2195827 res!2872149) b!7035779))

(assert (= (and b!7035779 res!2872148) b!7035773))

(assert (= (and b!7035773 res!2872147) b!7035776))

(assert (= (and d!2195827 (not res!2872150)) b!7035772))

(declare-fun m!7744322 () Bool)

(assert (=> b!7035772 m!7744322))

(declare-fun m!7744324 () Bool)

(assert (=> b!7035779 m!7744324))

(declare-fun m!7744326 () Bool)

(assert (=> b!7035779 m!7744326))

(declare-fun m!7744328 () Bool)

(assert (=> b!7035775 m!7744328))

(assert (=> b!7035776 m!7744324))

(declare-fun m!7744330 () Bool)

(assert (=> b!7035776 m!7744330))

(assert (=> b!7035773 m!7744324))

(declare-fun m!7744332 () Bool)

(assert (=> b!7035773 m!7744332))

(assert (=> d!2195827 m!7744322))

(declare-fun m!7744334 () Bool)

(assert (=> d!2195827 m!7744334))

(declare-fun m!7744336 () Bool)

(assert (=> d!2195827 m!7744336))

(declare-fun m!7744338 () Bool)

(assert (=> b!7035778 m!7744338))

(assert (=> b!7035778 m!7744338))

(declare-fun m!7744340 () Bool)

(assert (=> b!7035778 m!7744340))

(declare-fun m!7744342 () Bool)

(assert (=> b!7035778 m!7744342))

(assert (=> b!7035778 m!7744338))

(declare-fun m!7744344 () Bool)

(assert (=> b!7035778 m!7744344))

(assert (=> b!7035558 d!2195827))

(declare-fun d!2195829 () Bool)

(declare-fun isEmpty!39561 (Option!16875) Bool)

(assert (=> d!2195829 (= (isDefined!13576 lt!2520364) (not (isEmpty!39561 lt!2520364)))))

(declare-fun bs!1871946 () Bool)

(assert (= bs!1871946 d!2195829))

(declare-fun m!7744346 () Bool)

(assert (=> bs!1871946 m!7744346))

(assert (=> b!7035558 d!2195829))

(declare-fun d!2195831 () Bool)

(assert (=> d!2195831 (= (get!23761 lt!2520364) (v!53162 lt!2520364))))

(assert (=> b!7035558 d!2195831))

(declare-fun d!2195833 () Bool)

(assert (=> d!2195833 (isDefined!13576 (findConcatSeparationZippers!391 lt!2520372 (set.insert ct2!306 (as set.empty (Set Context!12932))) Nil!67815 s!7408 s!7408))))

(declare-fun lt!2520571 () Unit!161618)

(declare-fun choose!53308 ((Set Context!12932) Context!12932 List!67939) Unit!161618)

(assert (=> d!2195833 (= lt!2520571 (choose!53308 lt!2520372 ct2!306 s!7408))))

(assert (=> d!2195833 (matchZipper!3010 (appendTo!591 lt!2520372 ct2!306) s!7408)))

(assert (=> d!2195833 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!379 lt!2520372 ct2!306 s!7408) lt!2520571)))

(declare-fun bs!1871947 () Bool)

(assert (= bs!1871947 d!2195833))

(declare-fun m!7744348 () Bool)

(assert (=> bs!1871947 m!7744348))

(assert (=> bs!1871947 m!7744010))

(declare-fun m!7744350 () Bool)

(assert (=> bs!1871947 m!7744350))

(declare-fun m!7744352 () Bool)

(assert (=> bs!1871947 m!7744352))

(assert (=> bs!1871947 m!7744010))

(assert (=> bs!1871947 m!7744350))

(declare-fun m!7744354 () Bool)

(assert (=> bs!1871947 m!7744354))

(declare-fun m!7744356 () Bool)

(assert (=> bs!1871947 m!7744356))

(assert (=> bs!1871947 m!7744354))

(assert (=> b!7035558 d!2195833))

(declare-fun d!2195835 () Bool)

(declare-fun e!4229612 () Bool)

(assert (=> d!2195835 (= (matchZipper!3010 (set.union lt!2520333 lt!2520361) (t!381708 s!7408)) e!4229612)))

(declare-fun res!2872154 () Bool)

(assert (=> d!2195835 (=> res!2872154 e!4229612)))

(assert (=> d!2195835 (= res!2872154 (matchZipper!3010 lt!2520333 (t!381708 s!7408)))))

(declare-fun lt!2520574 () Unit!161618)

(declare-fun choose!53309 ((Set Context!12932) (Set Context!12932) List!67939) Unit!161618)

(assert (=> d!2195835 (= lt!2520574 (choose!53309 lt!2520333 lt!2520361 (t!381708 s!7408)))))

(assert (=> d!2195835 (= (lemmaZipperConcatMatchesSameAsBothZippers!1543 lt!2520333 lt!2520361 (t!381708 s!7408)) lt!2520574)))

(declare-fun b!7035782 () Bool)

(assert (=> b!7035782 (= e!4229612 (matchZipper!3010 lt!2520361 (t!381708 s!7408)))))

(assert (= (and d!2195835 (not res!2872154)) b!7035782))

(declare-fun m!7744358 () Bool)

(assert (=> d!2195835 m!7744358))

(assert (=> d!2195835 m!7744040))

(declare-fun m!7744360 () Bool)

(assert (=> d!2195835 m!7744360))

(assert (=> b!7035782 m!7743984))

(assert (=> b!7035556 d!2195835))

(declare-fun d!2195837 () Bool)

(declare-fun c!1309032 () Bool)

(assert (=> d!2195837 (= c!1309032 (isEmpty!39558 (t!381708 s!7408)))))

(declare-fun e!4229613 () Bool)

(assert (=> d!2195837 (= (matchZipper!3010 lt!2520327 (t!381708 s!7408)) e!4229613)))

(declare-fun b!7035783 () Bool)

(assert (=> b!7035783 (= e!4229613 (nullableZipper!2583 lt!2520327))))

(declare-fun b!7035784 () Bool)

(assert (=> b!7035784 (= e!4229613 (matchZipper!3010 (derivationStepZipper!2926 lt!2520327 (head!14270 (t!381708 s!7408))) (tail!13563 (t!381708 s!7408))))))

(assert (= (and d!2195837 c!1309032) b!7035783))

(assert (= (and d!2195837 (not c!1309032)) b!7035784))

(assert (=> d!2195837 m!7744226))

(declare-fun m!7744362 () Bool)

(assert (=> b!7035783 m!7744362))

(assert (=> b!7035784 m!7744230))

(assert (=> b!7035784 m!7744230))

(declare-fun m!7744364 () Bool)

(assert (=> b!7035784 m!7744364))

(assert (=> b!7035784 m!7744234))

(assert (=> b!7035784 m!7744364))

(assert (=> b!7035784 m!7744234))

(declare-fun m!7744366 () Bool)

(assert (=> b!7035784 m!7744366))

(assert (=> b!7035556 d!2195837))

(assert (=> b!7035556 d!2195803))

(declare-fun d!2195839 () Bool)

(declare-fun c!1309033 () Bool)

(assert (=> d!2195839 (= c!1309033 (isEmpty!39558 (t!381708 s!7408)))))

(declare-fun e!4229614 () Bool)

(assert (=> d!2195839 (= (matchZipper!3010 lt!2520367 (t!381708 s!7408)) e!4229614)))

(declare-fun b!7035785 () Bool)

(assert (=> b!7035785 (= e!4229614 (nullableZipper!2583 lt!2520367))))

(declare-fun b!7035786 () Bool)

(assert (=> b!7035786 (= e!4229614 (matchZipper!3010 (derivationStepZipper!2926 lt!2520367 (head!14270 (t!381708 s!7408))) (tail!13563 (t!381708 s!7408))))))

(assert (= (and d!2195839 c!1309033) b!7035785))

(assert (= (and d!2195839 (not c!1309033)) b!7035786))

(assert (=> d!2195839 m!7744226))

(declare-fun m!7744368 () Bool)

(assert (=> b!7035785 m!7744368))

(assert (=> b!7035786 m!7744230))

(assert (=> b!7035786 m!7744230))

(declare-fun m!7744370 () Bool)

(assert (=> b!7035786 m!7744370))

(assert (=> b!7035786 m!7744234))

(assert (=> b!7035786 m!7744370))

(assert (=> b!7035786 m!7744234))

(declare-fun m!7744372 () Bool)

(assert (=> b!7035786 m!7744372))

(assert (=> b!7035556 d!2195839))

(declare-fun d!2195841 () Bool)

(declare-fun c!1309034 () Bool)

(assert (=> d!2195841 (= c!1309034 (isEmpty!39558 (t!381708 s!7408)))))

(declare-fun e!4229615 () Bool)

(assert (=> d!2195841 (= (matchZipper!3010 lt!2520333 (t!381708 s!7408)) e!4229615)))

(declare-fun b!7035787 () Bool)

(assert (=> b!7035787 (= e!4229615 (nullableZipper!2583 lt!2520333))))

(declare-fun b!7035788 () Bool)

(assert (=> b!7035788 (= e!4229615 (matchZipper!3010 (derivationStepZipper!2926 lt!2520333 (head!14270 (t!381708 s!7408))) (tail!13563 (t!381708 s!7408))))))

(assert (= (and d!2195841 c!1309034) b!7035787))

(assert (= (and d!2195841 (not c!1309034)) b!7035788))

(assert (=> d!2195841 m!7744226))

(declare-fun m!7744374 () Bool)

(assert (=> b!7035787 m!7744374))

(assert (=> b!7035788 m!7744230))

(assert (=> b!7035788 m!7744230))

(declare-fun m!7744376 () Bool)

(assert (=> b!7035788 m!7744376))

(assert (=> b!7035788 m!7744234))

(assert (=> b!7035788 m!7744376))

(assert (=> b!7035788 m!7744234))

(declare-fun m!7744378 () Bool)

(assert (=> b!7035788 m!7744378))

(assert (=> b!7035556 d!2195841))

(declare-fun d!2195843 () Bool)

(declare-fun lt!2520575 () Int)

(assert (=> d!2195843 (>= lt!2520575 0)))

(declare-fun e!4229616 () Int)

(assert (=> d!2195843 (= lt!2520575 e!4229616)))

(declare-fun c!1309035 () Bool)

(assert (=> d!2195843 (= c!1309035 (is-Cons!67816 lt!2520356))))

(assert (=> d!2195843 (= (zipperDepthTotal!533 lt!2520356) lt!2520575)))

(declare-fun b!7035789 () Bool)

(assert (=> b!7035789 (= e!4229616 (+ (contextDepthTotal!505 (h!74264 lt!2520356)) (zipperDepthTotal!533 (t!381709 lt!2520356))))))

(declare-fun b!7035790 () Bool)

(assert (=> b!7035790 (= e!4229616 0)))

(assert (= (and d!2195843 c!1309035) b!7035789))

(assert (= (and d!2195843 (not c!1309035)) b!7035790))

(declare-fun m!7744380 () Bool)

(assert (=> b!7035789 m!7744380))

(declare-fun m!7744382 () Bool)

(assert (=> b!7035789 m!7744382))

(assert (=> b!7035541 d!2195843))

(declare-fun d!2195845 () Bool)

(declare-fun choose!53310 ((Set Context!12932) Int) (Set Context!12932))

(assert (=> d!2195845 (= (map!15773 lt!2520372 lambda!415356) (choose!53310 lt!2520372 lambda!415356))))

(declare-fun bs!1871948 () Bool)

(assert (= bs!1871948 d!2195845))

(declare-fun m!7744384 () Bool)

(assert (=> bs!1871948 m!7744384))

(assert (=> b!7035541 d!2195845))

(declare-fun d!2195847 () Bool)

(declare-fun e!4229619 () Bool)

(assert (=> d!2195847 e!4229619))

(declare-fun res!2872157 () Bool)

(assert (=> d!2195847 (=> (not res!2872157) (not e!4229619))))

(declare-fun lt!2520578 () List!67940)

(declare-fun noDuplicate!2631 (List!67940) Bool)

(assert (=> d!2195847 (= res!2872157 (noDuplicate!2631 lt!2520578))))

(declare-fun choose!53311 ((Set Context!12932)) List!67940)

(assert (=> d!2195847 (= lt!2520578 (choose!53311 z1!570))))

(assert (=> d!2195847 (= (toList!10813 z1!570) lt!2520578)))

(declare-fun b!7035793 () Bool)

(declare-fun content!13545 (List!67940) (Set Context!12932))

(assert (=> b!7035793 (= e!4229619 (= (content!13545 lt!2520578) z1!570))))

(assert (= (and d!2195847 res!2872157) b!7035793))

(declare-fun m!7744386 () Bool)

(assert (=> d!2195847 m!7744386))

(declare-fun m!7744388 () Bool)

(assert (=> d!2195847 m!7744388))

(declare-fun m!7744390 () Bool)

(assert (=> b!7035793 m!7744390))

(assert (=> b!7035541 d!2195847))

(assert (=> b!7035541 d!2195803))

(declare-fun d!2195849 () Bool)

(declare-fun lt!2520581 () Int)

(assert (=> d!2195849 (>= lt!2520581 0)))

(declare-fun e!4229622 () Int)

(assert (=> d!2195849 (= lt!2520581 e!4229622)))

(declare-fun c!1309039 () Bool)

(assert (=> d!2195849 (= c!1309039 (is-Cons!67814 (exprs!6966 lt!2520347)))))

(assert (=> d!2195849 (= (contextDepthTotal!505 lt!2520347) lt!2520581)))

(declare-fun b!7035798 () Bool)

(declare-fun regexDepthTotal!306 (Regex!17470) Int)

(assert (=> b!7035798 (= e!4229622 (+ (regexDepthTotal!306 (h!74262 (exprs!6966 lt!2520347))) (contextDepthTotal!505 (Context!12933 (t!381707 (exprs!6966 lt!2520347))))))))

(declare-fun b!7035799 () Bool)

(assert (=> b!7035799 (= e!4229622 1)))

(assert (= (and d!2195849 c!1309039) b!7035798))

(assert (= (and d!2195849 (not c!1309039)) b!7035799))

(declare-fun m!7744392 () Bool)

(assert (=> b!7035798 m!7744392))

(declare-fun m!7744394 () Bool)

(assert (=> b!7035798 m!7744394))

(assert (=> b!7035541 d!2195849))

(declare-fun d!2195851 () Bool)

(assert (=> d!2195851 (= (flatMap!2417 lt!2520372 lambda!415358) (dynLambda!27398 lambda!415358 lt!2520347))))

(declare-fun lt!2520582 () Unit!161618)

(assert (=> d!2195851 (= lt!2520582 (choose!53306 lt!2520372 lt!2520347 lambda!415358))))

(assert (=> d!2195851 (= lt!2520372 (set.insert lt!2520347 (as set.empty (Set Context!12932))))))

(assert (=> d!2195851 (= (lemmaFlatMapOnSingletonSet!1931 lt!2520372 lt!2520347 lambda!415358) lt!2520582)))

(declare-fun b_lambda!266839 () Bool)

(assert (=> (not b_lambda!266839) (not d!2195851)))

(declare-fun bs!1871949 () Bool)

(assert (= bs!1871949 d!2195851))

(assert (=> bs!1871949 m!7744052))

(declare-fun m!7744396 () Bool)

(assert (=> bs!1871949 m!7744396))

(declare-fun m!7744398 () Bool)

(assert (=> bs!1871949 m!7744398))

(assert (=> bs!1871949 m!7744048))

(assert (=> b!7035541 d!2195851))

(declare-fun b!7035800 () Bool)

(declare-fun e!4229625 () Bool)

(assert (=> b!7035800 (= e!4229625 (nullable!7181 (h!74262 (exprs!6966 lt!2520347))))))

(declare-fun b!7035801 () Bool)

(declare-fun e!4229624 () (Set Context!12932))

(declare-fun e!4229623 () (Set Context!12932))

(assert (=> b!7035801 (= e!4229624 e!4229623)))

(declare-fun c!1309040 () Bool)

(assert (=> b!7035801 (= c!1309040 (is-Cons!67814 (exprs!6966 lt!2520347)))))

(declare-fun b!7035802 () Bool)

(declare-fun call!638948 () (Set Context!12932))

(assert (=> b!7035802 (= e!4229623 call!638948)))

(declare-fun bm!638943 () Bool)

(assert (=> bm!638943 (= call!638948 (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520347)) (Context!12933 (t!381707 (exprs!6966 lt!2520347))) (h!74263 s!7408)))))

(declare-fun b!7035804 () Bool)

(assert (=> b!7035804 (= e!4229624 (set.union call!638948 (derivationStepZipperUp!2080 (Context!12933 (t!381707 (exprs!6966 lt!2520347))) (h!74263 s!7408))))))

(declare-fun b!7035803 () Bool)

(assert (=> b!7035803 (= e!4229623 (as set.empty (Set Context!12932)))))

(declare-fun d!2195853 () Bool)

(declare-fun c!1309041 () Bool)

(assert (=> d!2195853 (= c!1309041 e!4229625)))

(declare-fun res!2872158 () Bool)

(assert (=> d!2195853 (=> (not res!2872158) (not e!4229625))))

(assert (=> d!2195853 (= res!2872158 (is-Cons!67814 (exprs!6966 lt!2520347)))))

(assert (=> d!2195853 (= (derivationStepZipperUp!2080 lt!2520347 (h!74263 s!7408)) e!4229624)))

(assert (= (and d!2195853 res!2872158) b!7035800))

(assert (= (and d!2195853 c!1309041) b!7035804))

(assert (= (and d!2195853 (not c!1309041)) b!7035801))

(assert (= (and b!7035801 c!1309040) b!7035802))

(assert (= (and b!7035801 (not c!1309040)) b!7035803))

(assert (= (or b!7035804 b!7035802) bm!638943))

(declare-fun m!7744400 () Bool)

(assert (=> b!7035800 m!7744400))

(declare-fun m!7744402 () Bool)

(assert (=> bm!638943 m!7744402))

(declare-fun m!7744404 () Bool)

(assert (=> b!7035804 m!7744404))

(assert (=> b!7035541 d!2195853))

(declare-fun d!2195855 () Bool)

(declare-fun lt!2520583 () Int)

(assert (=> d!2195855 (>= lt!2520583 0)))

(declare-fun e!4229626 () Int)

(assert (=> d!2195855 (= lt!2520583 e!4229626)))

(declare-fun c!1309042 () Bool)

(assert (=> d!2195855 (= c!1309042 (is-Cons!67814 (exprs!6966 lt!2520355)))))

(assert (=> d!2195855 (= (contextDepthTotal!505 lt!2520355) lt!2520583)))

(declare-fun b!7035805 () Bool)

(assert (=> b!7035805 (= e!4229626 (+ (regexDepthTotal!306 (h!74262 (exprs!6966 lt!2520355))) (contextDepthTotal!505 (Context!12933 (t!381707 (exprs!6966 lt!2520355))))))))

(declare-fun b!7035806 () Bool)

(assert (=> b!7035806 (= e!4229626 1)))

(assert (= (and d!2195855 c!1309042) b!7035805))

(assert (= (and d!2195855 (not c!1309042)) b!7035806))

(declare-fun m!7744406 () Bool)

(assert (=> b!7035805 m!7744406))

(declare-fun m!7744408 () Bool)

(assert (=> b!7035805 m!7744408))

(assert (=> b!7035541 d!2195855))

(declare-fun d!2195857 () Bool)

(assert (=> d!2195857 (= (map!15773 lt!2520372 lambda!415356) (set.insert (dynLambda!27397 lambda!415356 lt!2520347) (as set.empty (Set Context!12932))))))

(declare-fun lt!2520586 () Unit!161618)

(declare-fun choose!53312 ((Set Context!12932) Context!12932 Int) Unit!161618)

(assert (=> d!2195857 (= lt!2520586 (choose!53312 lt!2520372 lt!2520347 lambda!415356))))

(assert (=> d!2195857 (= lt!2520372 (set.insert lt!2520347 (as set.empty (Set Context!12932))))))

(assert (=> d!2195857 (= (lemmaMapOnSingletonSet!381 lt!2520372 lt!2520347 lambda!415356) lt!2520586)))

(declare-fun b_lambda!266841 () Bool)

(assert (=> (not b_lambda!266841) (not d!2195857)))

(declare-fun bs!1871950 () Bool)

(assert (= bs!1871950 d!2195857))

(declare-fun m!7744410 () Bool)

(assert (=> bs!1871950 m!7744410))

(declare-fun m!7744412 () Bool)

(assert (=> bs!1871950 m!7744412))

(assert (=> bs!1871950 m!7744410))

(declare-fun m!7744414 () Bool)

(assert (=> bs!1871950 m!7744414))

(assert (=> bs!1871950 m!7744048))

(assert (=> bs!1871950 m!7744046))

(assert (=> b!7035541 d!2195857))

(declare-fun d!2195859 () Bool)

(assert (=> d!2195859 (<= (contextDepthTotal!505 lt!2520355) (zipperDepthTotal!533 lt!2520356))))

(declare-fun lt!2520589 () Unit!161618)

(declare-fun choose!53313 (List!67940 Context!12932) Unit!161618)

(assert (=> d!2195859 (= lt!2520589 (choose!53313 lt!2520356 lt!2520355))))

(declare-fun contains!20460 (List!67940 Context!12932) Bool)

(assert (=> d!2195859 (contains!20460 lt!2520356 lt!2520355)))

(assert (=> d!2195859 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!73 lt!2520356 lt!2520355) lt!2520589)))

(declare-fun bs!1871951 () Bool)

(assert (= bs!1871951 d!2195859))

(assert (=> bs!1871951 m!7744062))

(assert (=> bs!1871951 m!7744064))

(declare-fun m!7744416 () Bool)

(assert (=> bs!1871951 m!7744416))

(declare-fun m!7744418 () Bool)

(assert (=> bs!1871951 m!7744418))

(assert (=> b!7035541 d!2195859))

(declare-fun d!2195861 () Bool)

(assert (=> d!2195861 (= (flatMap!2417 lt!2520372 lambda!415358) (choose!53307 lt!2520372 lambda!415358))))

(declare-fun bs!1871952 () Bool)

(assert (= bs!1871952 d!2195861))

(declare-fun m!7744420 () Bool)

(assert (=> bs!1871952 m!7744420))

(assert (=> b!7035541 d!2195861))

(assert (=> b!7035541 d!2195805))

(declare-fun bs!1871953 () Bool)

(declare-fun d!2195863 () Bool)

(assert (= bs!1871953 (and d!2195863 b!7035565)))

(declare-fun lambda!415424 () Int)

(assert (=> bs!1871953 (= lambda!415424 lambda!415358)))

(declare-fun bs!1871954 () Bool)

(assert (= bs!1871954 (and d!2195863 d!2195821)))

(assert (=> bs!1871954 (= lambda!415424 lambda!415423)))

(assert (=> d!2195863 true))

(assert (=> d!2195863 (= (derivationStepZipper!2926 lt!2520373 (h!74263 s!7408)) (flatMap!2417 lt!2520373 lambda!415424))))

(declare-fun bs!1871955 () Bool)

(assert (= bs!1871955 d!2195863))

(declare-fun m!7744422 () Bool)

(assert (=> bs!1871955 m!7744422))

(assert (=> b!7035560 d!2195863))

(declare-fun b!7035807 () Bool)

(declare-fun e!4229629 () Bool)

(assert (=> b!7035807 (= e!4229629 (nullable!7181 (h!74262 (exprs!6966 lt!2520355))))))

(declare-fun b!7035808 () Bool)

(declare-fun e!4229628 () (Set Context!12932))

(declare-fun e!4229627 () (Set Context!12932))

(assert (=> b!7035808 (= e!4229628 e!4229627)))

(declare-fun c!1309044 () Bool)

(assert (=> b!7035808 (= c!1309044 (is-Cons!67814 (exprs!6966 lt!2520355)))))

(declare-fun b!7035809 () Bool)

(declare-fun call!638949 () (Set Context!12932))

(assert (=> b!7035809 (= e!4229627 call!638949)))

(declare-fun bm!638944 () Bool)

(assert (=> bm!638944 (= call!638949 (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520355)) (Context!12933 (t!381707 (exprs!6966 lt!2520355))) (h!74263 s!7408)))))

(declare-fun b!7035811 () Bool)

(assert (=> b!7035811 (= e!4229628 (set.union call!638949 (derivationStepZipperUp!2080 (Context!12933 (t!381707 (exprs!6966 lt!2520355))) (h!74263 s!7408))))))

(declare-fun b!7035810 () Bool)

(assert (=> b!7035810 (= e!4229627 (as set.empty (Set Context!12932)))))

(declare-fun d!2195865 () Bool)

(declare-fun c!1309045 () Bool)

(assert (=> d!2195865 (= c!1309045 e!4229629)))

(declare-fun res!2872159 () Bool)

(assert (=> d!2195865 (=> (not res!2872159) (not e!4229629))))

(assert (=> d!2195865 (= res!2872159 (is-Cons!67814 (exprs!6966 lt!2520355)))))

(assert (=> d!2195865 (= (derivationStepZipperUp!2080 lt!2520355 (h!74263 s!7408)) e!4229628)))

(assert (= (and d!2195865 res!2872159) b!7035807))

(assert (= (and d!2195865 c!1309045) b!7035811))

(assert (= (and d!2195865 (not c!1309045)) b!7035808))

(assert (= (and b!7035808 c!1309044) b!7035809))

(assert (= (and b!7035808 (not c!1309044)) b!7035810))

(assert (= (or b!7035811 b!7035809) bm!638944))

(assert (=> b!7035807 m!7744088))

(declare-fun m!7744424 () Bool)

(assert (=> bm!638944 m!7744424))

(declare-fun m!7744426 () Bool)

(assert (=> b!7035811 m!7744426))

(assert (=> b!7035560 d!2195865))

(declare-fun d!2195867 () Bool)

(assert (=> d!2195867 (= (flatMap!2417 lt!2520373 lambda!415358) (choose!53307 lt!2520373 lambda!415358))))

(declare-fun bs!1871956 () Bool)

(assert (= bs!1871956 d!2195867))

(declare-fun m!7744428 () Bool)

(assert (=> bs!1871956 m!7744428))

(assert (=> b!7035560 d!2195867))

(declare-fun d!2195869 () Bool)

(assert (=> d!2195869 (= (flatMap!2417 lt!2520373 lambda!415358) (dynLambda!27398 lambda!415358 lt!2520355))))

(declare-fun lt!2520590 () Unit!161618)

(assert (=> d!2195869 (= lt!2520590 (choose!53306 lt!2520373 lt!2520355 lambda!415358))))

(assert (=> d!2195869 (= lt!2520373 (set.insert lt!2520355 (as set.empty (Set Context!12932))))))

(assert (=> d!2195869 (= (lemmaFlatMapOnSingletonSet!1931 lt!2520373 lt!2520355 lambda!415358) lt!2520590)))

(declare-fun b_lambda!266843 () Bool)

(assert (=> (not b_lambda!266843) (not d!2195869)))

(declare-fun bs!1871957 () Bool)

(assert (= bs!1871957 d!2195869))

(assert (=> bs!1871957 m!7744076))

(declare-fun m!7744430 () Bool)

(assert (=> bs!1871957 m!7744430))

(declare-fun m!7744432 () Bool)

(assert (=> bs!1871957 m!7744432))

(assert (=> bs!1871957 m!7744074))

(assert (=> b!7035560 d!2195869))

(declare-fun d!2195871 () Bool)

(declare-fun c!1309046 () Bool)

(assert (=> d!2195871 (= c!1309046 (isEmpty!39558 s!7408))))

(declare-fun e!4229630 () Bool)

(assert (=> d!2195871 (= (matchZipper!3010 lt!2520331 s!7408) e!4229630)))

(declare-fun b!7035812 () Bool)

(assert (=> b!7035812 (= e!4229630 (nullableZipper!2583 lt!2520331))))

(declare-fun b!7035813 () Bool)

(assert (=> b!7035813 (= e!4229630 (matchZipper!3010 (derivationStepZipper!2926 lt!2520331 (head!14270 s!7408)) (tail!13563 s!7408)))))

(assert (= (and d!2195871 c!1309046) b!7035812))

(assert (= (and d!2195871 (not c!1309046)) b!7035813))

(declare-fun m!7744434 () Bool)

(assert (=> d!2195871 m!7744434))

(declare-fun m!7744436 () Bool)

(assert (=> b!7035812 m!7744436))

(declare-fun m!7744438 () Bool)

(assert (=> b!7035813 m!7744438))

(assert (=> b!7035813 m!7744438))

(declare-fun m!7744440 () Bool)

(assert (=> b!7035813 m!7744440))

(declare-fun m!7744442 () Bool)

(assert (=> b!7035813 m!7744442))

(assert (=> b!7035813 m!7744440))

(assert (=> b!7035813 m!7744442))

(declare-fun m!7744444 () Bool)

(assert (=> b!7035813 m!7744444))

(assert (=> start!680156 d!2195871))

(declare-fun bs!1871958 () Bool)

(declare-fun d!2195873 () Bool)

(assert (= bs!1871958 (and d!2195873 b!7035545)))

(declare-fun lambda!415429 () Int)

(assert (=> bs!1871958 (= lambda!415429 lambda!415356)))

(assert (=> d!2195873 true))

(assert (=> d!2195873 (= (appendTo!591 z1!570 ct2!306) (map!15773 z1!570 lambda!415429))))

(declare-fun bs!1871959 () Bool)

(assert (= bs!1871959 d!2195873))

(declare-fun m!7744446 () Bool)

(assert (=> bs!1871959 m!7744446))

(assert (=> start!680156 d!2195873))

(declare-fun bs!1871960 () Bool)

(declare-fun d!2195875 () Bool)

(assert (= bs!1871960 (and d!2195875 b!7035545)))

(declare-fun lambda!415432 () Int)

(assert (=> bs!1871960 (= lambda!415432 lambda!415357)))

(assert (=> d!2195875 (= (inv!86535 ct2!306) (forall!16385 (exprs!6966 ct2!306) lambda!415432))))

(declare-fun bs!1871961 () Bool)

(assert (= bs!1871961 d!2195875))

(declare-fun m!7744448 () Bool)

(assert (=> bs!1871961 m!7744448))

(assert (=> start!680156 d!2195875))

(declare-fun d!2195877 () Bool)

(declare-fun c!1309048 () Bool)

(assert (=> d!2195877 (= c!1309048 (isEmpty!39558 s!7408))))

(declare-fun e!4229631 () Bool)

(assert (=> d!2195877 (= (matchZipper!3010 lt!2520352 s!7408) e!4229631)))

(declare-fun b!7035814 () Bool)

(assert (=> b!7035814 (= e!4229631 (nullableZipper!2583 lt!2520352))))

(declare-fun b!7035815 () Bool)

(assert (=> b!7035815 (= e!4229631 (matchZipper!3010 (derivationStepZipper!2926 lt!2520352 (head!14270 s!7408)) (tail!13563 s!7408)))))

(assert (= (and d!2195877 c!1309048) b!7035814))

(assert (= (and d!2195877 (not c!1309048)) b!7035815))

(assert (=> d!2195877 m!7744434))

(declare-fun m!7744450 () Bool)

(assert (=> b!7035814 m!7744450))

(assert (=> b!7035815 m!7744438))

(assert (=> b!7035815 m!7744438))

(declare-fun m!7744452 () Bool)

(assert (=> b!7035815 m!7744452))

(assert (=> b!7035815 m!7744442))

(assert (=> b!7035815 m!7744452))

(assert (=> b!7035815 m!7744442))

(declare-fun m!7744454 () Bool)

(assert (=> b!7035815 m!7744454))

(assert (=> b!7035540 d!2195877))

(assert (=> b!7035540 d!2195803))

(declare-fun d!2195879 () Bool)

(declare-fun nullableFct!2731 (Regex!17470) Bool)

(assert (=> d!2195879 (= (nullable!7181 (h!74262 (exprs!6966 lt!2520355))) (nullableFct!2731 (h!74262 (exprs!6966 lt!2520355))))))

(declare-fun bs!1871962 () Bool)

(assert (= bs!1871962 d!2195879))

(declare-fun m!7744456 () Bool)

(assert (=> bs!1871962 m!7744456))

(assert (=> b!7035553 d!2195879))

(declare-fun d!2195881 () Bool)

(assert (=> d!2195881 (= (tail!13561 (exprs!6966 lt!2520355)) (t!381707 (exprs!6966 lt!2520355)))))

(assert (=> b!7035553 d!2195881))

(declare-fun d!2195883 () Bool)

(assert (=> d!2195883 (= (isEmpty!39557 (exprs!6966 lt!2520355)) (is-Nil!67814 (exprs!6966 lt!2520355)))))

(assert (=> b!7035551 d!2195883))

(declare-fun d!2195885 () Bool)

(assert (=> d!2195885 (= (flatMap!2417 lt!2520352 lambda!415358) (choose!53307 lt!2520352 lambda!415358))))

(declare-fun bs!1871963 () Bool)

(assert (= bs!1871963 d!2195885))

(declare-fun m!7744458 () Bool)

(assert (=> bs!1871963 m!7744458))

(assert (=> b!7035555 d!2195885))

(assert (=> b!7035555 d!2195807))

(assert (=> b!7035555 d!2195803))

(declare-fun bs!1871964 () Bool)

(declare-fun d!2195887 () Bool)

(assert (= bs!1871964 (and d!2195887 b!7035565)))

(declare-fun lambda!415433 () Int)

(assert (=> bs!1871964 (= lambda!415433 lambda!415358)))

(declare-fun bs!1871965 () Bool)

(assert (= bs!1871965 (and d!2195887 d!2195821)))

(assert (=> bs!1871965 (= lambda!415433 lambda!415423)))

(declare-fun bs!1871966 () Bool)

(assert (= bs!1871966 (and d!2195887 d!2195863)))

(assert (=> bs!1871966 (= lambda!415433 lambda!415424)))

(assert (=> d!2195887 true))

(assert (=> d!2195887 (= (derivationStepZipper!2926 lt!2520352 (h!74263 s!7408)) (flatMap!2417 lt!2520352 lambda!415433))))

(declare-fun bs!1871967 () Bool)

(assert (= bs!1871967 d!2195887))

(declare-fun m!7744460 () Bool)

(assert (=> bs!1871967 m!7744460))

(assert (=> b!7035555 d!2195887))

(declare-fun d!2195889 () Bool)

(assert (=> d!2195889 (= (flatMap!2417 lt!2520352 lambda!415358) (dynLambda!27398 lambda!415358 lt!2520325))))

(declare-fun lt!2520593 () Unit!161618)

(assert (=> d!2195889 (= lt!2520593 (choose!53306 lt!2520352 lt!2520325 lambda!415358))))

(assert (=> d!2195889 (= lt!2520352 (set.insert lt!2520325 (as set.empty (Set Context!12932))))))

(assert (=> d!2195889 (= (lemmaFlatMapOnSingletonSet!1931 lt!2520352 lt!2520325 lambda!415358) lt!2520593)))

(declare-fun b_lambda!266845 () Bool)

(assert (=> (not b_lambda!266845) (not d!2195889)))

(declare-fun bs!1871968 () Bool)

(assert (= bs!1871968 d!2195889))

(assert (=> bs!1871968 m!7743966))

(declare-fun m!7744462 () Bool)

(assert (=> bs!1871968 m!7744462))

(declare-fun m!7744464 () Bool)

(assert (=> bs!1871968 m!7744464))

(assert (=> bs!1871968 m!7743968))

(assert (=> b!7035555 d!2195889))

(declare-fun d!2195891 () Bool)

(assert (=> d!2195891 (= (isEmpty!39558 (_1!37346 lt!2520346)) (is-Nil!67815 (_1!37346 lt!2520346)))))

(assert (=> b!7035554 d!2195891))

(assert (=> b!7035548 d!2195801))

(declare-fun bs!1871969 () Bool)

(declare-fun d!2195893 () Bool)

(assert (= bs!1871969 (and d!2195893 b!7035567)))

(declare-fun lambda!415436 () Int)

(assert (=> bs!1871969 (not (= lambda!415436 lambda!415355))))

(assert (=> d!2195893 true))

(declare-fun order!28181 () Int)

(declare-fun dynLambda!27399 (Int Int) Int)

(assert (=> d!2195893 (< (dynLambda!27399 order!28181 lambda!415355) (dynLambda!27399 order!28181 lambda!415436))))

(declare-fun forall!16386 (List!67940 Int) Bool)

(assert (=> d!2195893 (= (exists!3401 lt!2520369 lambda!415355) (not (forall!16386 lt!2520369 lambda!415436)))))

(declare-fun bs!1871970 () Bool)

(assert (= bs!1871970 d!2195893))

(declare-fun m!7744466 () Bool)

(assert (=> bs!1871970 m!7744466))

(assert (=> b!7035567 d!2195893))

(declare-fun bs!1871971 () Bool)

(declare-fun d!2195895 () Bool)

(assert (= bs!1871971 (and d!2195895 b!7035567)))

(declare-fun lambda!415439 () Int)

(assert (=> bs!1871971 (= lambda!415439 lambda!415355)))

(declare-fun bs!1871972 () Bool)

(assert (= bs!1871972 (and d!2195895 d!2195893)))

(assert (=> bs!1871972 (not (= lambda!415439 lambda!415436))))

(assert (=> d!2195895 true))

(assert (=> d!2195895 (exists!3401 lt!2520369 lambda!415439)))

(declare-fun lt!2520596 () Unit!161618)

(declare-fun choose!53314 (List!67940 List!67939) Unit!161618)

(assert (=> d!2195895 (= lt!2520596 (choose!53314 lt!2520369 s!7408))))

(assert (=> d!2195895 (matchZipper!3010 (content!13545 lt!2520369) s!7408)))

(assert (=> d!2195895 (= (lemmaZipperMatchesExistsMatchingContext!409 lt!2520369 s!7408) lt!2520596)))

(declare-fun bs!1871973 () Bool)

(assert (= bs!1871973 d!2195895))

(declare-fun m!7744468 () Bool)

(assert (=> bs!1871973 m!7744468))

(declare-fun m!7744470 () Bool)

(assert (=> bs!1871973 m!7744470))

(declare-fun m!7744472 () Bool)

(assert (=> bs!1871973 m!7744472))

(assert (=> bs!1871973 m!7744472))

(declare-fun m!7744474 () Bool)

(assert (=> bs!1871973 m!7744474))

(assert (=> b!7035567 d!2195895))

(declare-fun d!2195897 () Bool)

(declare-fun e!4229632 () Bool)

(assert (=> d!2195897 e!4229632))

(declare-fun res!2872160 () Bool)

(assert (=> d!2195897 (=> (not res!2872160) (not e!4229632))))

(declare-fun lt!2520597 () List!67940)

(assert (=> d!2195897 (= res!2872160 (noDuplicate!2631 lt!2520597))))

(assert (=> d!2195897 (= lt!2520597 (choose!53311 lt!2520331))))

(assert (=> d!2195897 (= (toList!10813 lt!2520331) lt!2520597)))

(declare-fun b!7035818 () Bool)

(assert (=> b!7035818 (= e!4229632 (= (content!13545 lt!2520597) lt!2520331))))

(assert (= (and d!2195897 res!2872160) b!7035818))

(declare-fun m!7744476 () Bool)

(assert (=> d!2195897 m!7744476))

(declare-fun m!7744478 () Bool)

(assert (=> d!2195897 m!7744478))

(declare-fun m!7744480 () Bool)

(assert (=> b!7035818 m!7744480))

(assert (=> b!7035567 d!2195897))

(declare-fun d!2195899 () Bool)

(declare-fun c!1309051 () Bool)

(assert (=> d!2195899 (= c!1309051 (isEmpty!39558 s!7408))))

(declare-fun e!4229633 () Bool)

(assert (=> d!2195899 (= (matchZipper!3010 lt!2520353 s!7408) e!4229633)))

(declare-fun b!7035819 () Bool)

(assert (=> b!7035819 (= e!4229633 (nullableZipper!2583 lt!2520353))))

(declare-fun b!7035820 () Bool)

(assert (=> b!7035820 (= e!4229633 (matchZipper!3010 (derivationStepZipper!2926 lt!2520353 (head!14270 s!7408)) (tail!13563 s!7408)))))

(assert (= (and d!2195899 c!1309051) b!7035819))

(assert (= (and d!2195899 (not c!1309051)) b!7035820))

(assert (=> d!2195899 m!7744434))

(declare-fun m!7744482 () Bool)

(assert (=> b!7035819 m!7744482))

(assert (=> b!7035820 m!7744438))

(assert (=> b!7035820 m!7744438))

(declare-fun m!7744484 () Bool)

(assert (=> b!7035820 m!7744484))

(assert (=> b!7035820 m!7744442))

(assert (=> b!7035820 m!7744484))

(assert (=> b!7035820 m!7744442))

(declare-fun m!7744486 () Bool)

(assert (=> b!7035820 m!7744486))

(assert (=> b!7035567 d!2195899))

(declare-fun d!2195901 () Bool)

(declare-fun e!4229636 () Bool)

(assert (=> d!2195901 e!4229636))

(declare-fun res!2872163 () Bool)

(assert (=> d!2195901 (=> (not res!2872163) (not e!4229636))))

(declare-fun lt!2520600 () Context!12932)

(declare-fun dynLambda!27400 (Int Context!12932) Bool)

(assert (=> d!2195901 (= res!2872163 (dynLambda!27400 lambda!415355 lt!2520600))))

(declare-fun getWitness!1482 (List!67940 Int) Context!12932)

(assert (=> d!2195901 (= lt!2520600 (getWitness!1482 (toList!10813 lt!2520331) lambda!415355))))

(declare-fun exists!3403 ((Set Context!12932) Int) Bool)

(assert (=> d!2195901 (exists!3403 lt!2520331 lambda!415355)))

(assert (=> d!2195901 (= (getWitness!1480 lt!2520331 lambda!415355) lt!2520600)))

(declare-fun b!7035823 () Bool)

(assert (=> b!7035823 (= e!4229636 (set.member lt!2520600 lt!2520331))))

(assert (= (and d!2195901 res!2872163) b!7035823))

(declare-fun b_lambda!266847 () Bool)

(assert (=> (not b_lambda!266847) (not d!2195901)))

(declare-fun m!7744488 () Bool)

(assert (=> d!2195901 m!7744488))

(assert (=> d!2195901 m!7744030))

(assert (=> d!2195901 m!7744030))

(declare-fun m!7744490 () Bool)

(assert (=> d!2195901 m!7744490))

(declare-fun m!7744492 () Bool)

(assert (=> d!2195901 m!7744492))

(declare-fun m!7744494 () Bool)

(assert (=> b!7035823 m!7744494))

(assert (=> b!7035567 d!2195901))

(declare-fun d!2195903 () Bool)

(declare-fun c!1309052 () Bool)

(assert (=> d!2195903 (= c!1309052 (isEmpty!39558 (_2!37346 lt!2520346)))))

(declare-fun e!4229637 () Bool)

(assert (=> d!2195903 (= (matchZipper!3010 lt!2520350 (_2!37346 lt!2520346)) e!4229637)))

(declare-fun b!7035824 () Bool)

(assert (=> b!7035824 (= e!4229637 (nullableZipper!2583 lt!2520350))))

(declare-fun b!7035825 () Bool)

(assert (=> b!7035825 (= e!4229637 (matchZipper!3010 (derivationStepZipper!2926 lt!2520350 (head!14270 (_2!37346 lt!2520346))) (tail!13563 (_2!37346 lt!2520346))))))

(assert (= (and d!2195903 c!1309052) b!7035824))

(assert (= (and d!2195903 (not c!1309052)) b!7035825))

(declare-fun m!7744496 () Bool)

(assert (=> d!2195903 m!7744496))

(declare-fun m!7744498 () Bool)

(assert (=> b!7035824 m!7744498))

(declare-fun m!7744500 () Bool)

(assert (=> b!7035825 m!7744500))

(assert (=> b!7035825 m!7744500))

(declare-fun m!7744502 () Bool)

(assert (=> b!7035825 m!7744502))

(declare-fun m!7744504 () Bool)

(assert (=> b!7035825 m!7744504))

(assert (=> b!7035825 m!7744502))

(assert (=> b!7035825 m!7744504))

(declare-fun m!7744506 () Bool)

(assert (=> b!7035825 m!7744506))

(assert (=> b!7035547 d!2195903))

(declare-fun b!7035826 () Bool)

(declare-fun e!4229639 () (Set Context!12932))

(declare-fun e!4229638 () (Set Context!12932))

(assert (=> b!7035826 (= e!4229639 e!4229638)))

(declare-fun c!1309057 () Bool)

(assert (=> b!7035826 (= c!1309057 (is-Union!17470 (h!74262 (exprs!6966 lt!2520355))))))

(declare-fun b!7035827 () Bool)

(declare-fun e!4229641 () (Set Context!12932))

(assert (=> b!7035827 (= e!4229641 (as set.empty (Set Context!12932)))))

(declare-fun b!7035828 () Bool)

(declare-fun e!4229643 () (Set Context!12932))

(declare-fun call!638951 () (Set Context!12932))

(declare-fun call!638952 () (Set Context!12932))

(assert (=> b!7035828 (= e!4229643 (set.union call!638951 call!638952))))

(declare-fun d!2195905 () Bool)

(declare-fun c!1309053 () Bool)

(assert (=> d!2195905 (= c!1309053 (and (is-ElementMatch!17470 (h!74262 (exprs!6966 lt!2520355))) (= (c!1308972 (h!74262 (exprs!6966 lt!2520355))) (h!74263 s!7408))))))

(assert (=> d!2195905 (= (derivationStepZipperDown!2134 (h!74262 (exprs!6966 lt!2520355)) lt!2520347 (h!74263 s!7408)) e!4229639)))

(declare-fun b!7035829 () Bool)

(assert (=> b!7035829 (= e!4229639 (set.insert lt!2520347 (as set.empty (Set Context!12932))))))

(declare-fun bm!638945 () Bool)

(declare-fun call!638955 () List!67938)

(declare-fun call!638950 () List!67938)

(assert (=> bm!638945 (= call!638955 call!638950)))

(declare-fun b!7035830 () Bool)

(declare-fun c!1309055 () Bool)

(declare-fun e!4229642 () Bool)

(assert (=> b!7035830 (= c!1309055 e!4229642)))

(declare-fun res!2872164 () Bool)

(assert (=> b!7035830 (=> (not res!2872164) (not e!4229642))))

(assert (=> b!7035830 (= res!2872164 (is-Concat!26315 (h!74262 (exprs!6966 lt!2520355))))))

(assert (=> b!7035830 (= e!4229638 e!4229643)))

(declare-fun bm!638946 () Bool)

(declare-fun call!638953 () (Set Context!12932))

(assert (=> bm!638946 (= call!638953 call!638952)))

(declare-fun b!7035831 () Bool)

(declare-fun c!1309054 () Bool)

(assert (=> b!7035831 (= c!1309054 (is-Star!17470 (h!74262 (exprs!6966 lt!2520355))))))

(declare-fun e!4229640 () (Set Context!12932))

(assert (=> b!7035831 (= e!4229640 e!4229641)))

(declare-fun bm!638947 () Bool)

(declare-fun call!638954 () (Set Context!12932))

(assert (=> bm!638947 (= call!638952 call!638954)))

(declare-fun bm!638948 () Bool)

(assert (=> bm!638948 (= call!638951 (derivationStepZipperDown!2134 (ite c!1309057 (regTwo!35453 (h!74262 (exprs!6966 lt!2520355))) (regOne!35452 (h!74262 (exprs!6966 lt!2520355)))) (ite c!1309057 lt!2520347 (Context!12933 call!638950)) (h!74263 s!7408)))))

(declare-fun b!7035832 () Bool)

(assert (=> b!7035832 (= e!4229640 call!638953)))

(declare-fun b!7035833 () Bool)

(assert (=> b!7035833 (= e!4229642 (nullable!7181 (regOne!35452 (h!74262 (exprs!6966 lt!2520355)))))))

(declare-fun c!1309056 () Bool)

(declare-fun bm!638949 () Bool)

(assert (=> bm!638949 (= call!638950 ($colon$colon!2577 (exprs!6966 lt!2520347) (ite (or c!1309055 c!1309056) (regTwo!35452 (h!74262 (exprs!6966 lt!2520355))) (h!74262 (exprs!6966 lt!2520355)))))))

(declare-fun b!7035834 () Bool)

(assert (=> b!7035834 (= e!4229638 (set.union call!638954 call!638951))))

(declare-fun b!7035835 () Bool)

(assert (=> b!7035835 (= e!4229641 call!638953)))

(declare-fun bm!638950 () Bool)

(assert (=> bm!638950 (= call!638954 (derivationStepZipperDown!2134 (ite c!1309057 (regOne!35453 (h!74262 (exprs!6966 lt!2520355))) (ite c!1309055 (regTwo!35452 (h!74262 (exprs!6966 lt!2520355))) (ite c!1309056 (regOne!35452 (h!74262 (exprs!6966 lt!2520355))) (reg!17799 (h!74262 (exprs!6966 lt!2520355)))))) (ite (or c!1309057 c!1309055) lt!2520347 (Context!12933 call!638955)) (h!74263 s!7408)))))

(declare-fun b!7035836 () Bool)

(assert (=> b!7035836 (= e!4229643 e!4229640)))

(assert (=> b!7035836 (= c!1309056 (is-Concat!26315 (h!74262 (exprs!6966 lt!2520355))))))

(assert (= (and d!2195905 c!1309053) b!7035829))

(assert (= (and d!2195905 (not c!1309053)) b!7035826))

(assert (= (and b!7035826 c!1309057) b!7035834))

(assert (= (and b!7035826 (not c!1309057)) b!7035830))

(assert (= (and b!7035830 res!2872164) b!7035833))

(assert (= (and b!7035830 c!1309055) b!7035828))

(assert (= (and b!7035830 (not c!1309055)) b!7035836))

(assert (= (and b!7035836 c!1309056) b!7035832))

(assert (= (and b!7035836 (not c!1309056)) b!7035831))

(assert (= (and b!7035831 c!1309054) b!7035835))

(assert (= (and b!7035831 (not c!1309054)) b!7035827))

(assert (= (or b!7035832 b!7035835) bm!638945))

(assert (= (or b!7035832 b!7035835) bm!638946))

(assert (= (or b!7035828 bm!638946) bm!638947))

(assert (= (or b!7035828 bm!638945) bm!638949))

(assert (= (or b!7035834 bm!638947) bm!638950))

(assert (= (or b!7035834 b!7035828) bm!638948))

(assert (=> b!7035829 m!7744048))

(declare-fun m!7744508 () Bool)

(assert (=> bm!638949 m!7744508))

(assert (=> b!7035833 m!7744266))

(declare-fun m!7744510 () Bool)

(assert (=> bm!638948 m!7744510))

(declare-fun m!7744512 () Bool)

(assert (=> bm!638950 m!7744512))

(assert (=> b!7035550 d!2195905))

(assert (=> b!7035550 d!2195853))

(declare-fun d!2195907 () Bool)

(declare-fun e!4229648 () Bool)

(assert (=> d!2195907 e!4229648))

(declare-fun res!2872170 () Bool)

(assert (=> d!2195907 (=> (not res!2872170) (not e!4229648))))

(declare-fun lt!2520603 () List!67939)

(declare-fun content!13546 (List!67939) (Set C!35210))

(assert (=> d!2195907 (= res!2872170 (= (content!13546 lt!2520603) (set.union (content!13546 (_1!37346 lt!2520346)) (content!13546 (_2!37346 lt!2520346)))))))

(declare-fun e!4229649 () List!67939)

(assert (=> d!2195907 (= lt!2520603 e!4229649)))

(declare-fun c!1309060 () Bool)

(assert (=> d!2195907 (= c!1309060 (is-Nil!67815 (_1!37346 lt!2520346)))))

(assert (=> d!2195907 (= (++!15521 (_1!37346 lt!2520346) (_2!37346 lt!2520346)) lt!2520603)))

(declare-fun b!7035848 () Bool)

(assert (=> b!7035848 (= e!4229648 (or (not (= (_2!37346 lt!2520346) Nil!67815)) (= lt!2520603 (_1!37346 lt!2520346))))))

(declare-fun b!7035847 () Bool)

(declare-fun res!2872169 () Bool)

(assert (=> b!7035847 (=> (not res!2872169) (not e!4229648))))

(declare-fun size!41071 (List!67939) Int)

(assert (=> b!7035847 (= res!2872169 (= (size!41071 lt!2520603) (+ (size!41071 (_1!37346 lt!2520346)) (size!41071 (_2!37346 lt!2520346)))))))

(declare-fun b!7035845 () Bool)

(assert (=> b!7035845 (= e!4229649 (_2!37346 lt!2520346))))

(declare-fun b!7035846 () Bool)

(assert (=> b!7035846 (= e!4229649 (Cons!67815 (h!74263 (_1!37346 lt!2520346)) (++!15521 (t!381708 (_1!37346 lt!2520346)) (_2!37346 lt!2520346))))))

(assert (= (and d!2195907 c!1309060) b!7035845))

(assert (= (and d!2195907 (not c!1309060)) b!7035846))

(assert (= (and d!2195907 res!2872170) b!7035847))

(assert (= (and b!7035847 res!2872169) b!7035848))

(declare-fun m!7744514 () Bool)

(assert (=> d!2195907 m!7744514))

(declare-fun m!7744516 () Bool)

(assert (=> d!2195907 m!7744516))

(declare-fun m!7744518 () Bool)

(assert (=> d!2195907 m!7744518))

(declare-fun m!7744520 () Bool)

(assert (=> b!7035847 m!7744520))

(declare-fun m!7744522 () Bool)

(assert (=> b!7035847 m!7744522))

(declare-fun m!7744524 () Bool)

(assert (=> b!7035847 m!7744524))

(declare-fun m!7744526 () Bool)

(assert (=> b!7035846 m!7744526))

(assert (=> b!7035549 d!2195907))

(declare-fun bs!1871974 () Bool)

(declare-fun d!2195909 () Bool)

(assert (= bs!1871974 (and d!2195909 b!7035545)))

(declare-fun lambda!415440 () Int)

(assert (=> bs!1871974 (= lambda!415440 lambda!415357)))

(declare-fun bs!1871975 () Bool)

(assert (= bs!1871975 (and d!2195909 d!2195875)))

(assert (=> bs!1871975 (= lambda!415440 lambda!415432)))

(assert (=> d!2195909 (= (inv!86535 setElem!49223) (forall!16385 (exprs!6966 setElem!49223) lambda!415440))))

(declare-fun bs!1871976 () Bool)

(assert (= bs!1871976 d!2195909))

(declare-fun m!7744528 () Bool)

(assert (=> bs!1871976 m!7744528))

(assert (=> setNonEmpty!49223 d!2195909))

(declare-fun b!7035853 () Bool)

(declare-fun e!4229652 () Bool)

(declare-fun tp!1936810 () Bool)

(assert (=> b!7035853 (= e!4229652 (and tp_is_empty!44165 tp!1936810))))

(assert (=> b!7035542 (= tp!1936793 e!4229652)))

(assert (= (and b!7035542 (is-Cons!67815 (t!381708 s!7408))) b!7035853))

(declare-fun b!7035858 () Bool)

(declare-fun e!4229655 () Bool)

(declare-fun tp!1936815 () Bool)

(declare-fun tp!1936816 () Bool)

(assert (=> b!7035858 (= e!4229655 (and tp!1936815 tp!1936816))))

(assert (=> b!7035543 (= tp!1936794 e!4229655)))

(assert (= (and b!7035543 (is-Cons!67814 (exprs!6966 setElem!49223))) b!7035858))

(declare-fun b!7035859 () Bool)

(declare-fun e!4229656 () Bool)

(declare-fun tp!1936817 () Bool)

(declare-fun tp!1936818 () Bool)

(assert (=> b!7035859 (= e!4229656 (and tp!1936817 tp!1936818))))

(assert (=> b!7035561 (= tp!1936795 e!4229656)))

(assert (= (and b!7035561 (is-Cons!67814 (exprs!6966 ct2!306))) b!7035859))

(declare-fun condSetEmpty!49229 () Bool)

(assert (=> setNonEmpty!49223 (= condSetEmpty!49229 (= setRest!49223 (as set.empty (Set Context!12932))))))

(declare-fun setRes!49229 () Bool)

(assert (=> setNonEmpty!49223 (= tp!1936792 setRes!49229)))

(declare-fun setIsEmpty!49229 () Bool)

(assert (=> setIsEmpty!49229 setRes!49229))

(declare-fun setNonEmpty!49229 () Bool)

(declare-fun e!4229659 () Bool)

(declare-fun tp!1936824 () Bool)

(declare-fun setElem!49229 () Context!12932)

(assert (=> setNonEmpty!49229 (= setRes!49229 (and tp!1936824 (inv!86535 setElem!49229) e!4229659))))

(declare-fun setRest!49229 () (Set Context!12932))

(assert (=> setNonEmpty!49229 (= setRest!49223 (set.union (set.insert setElem!49229 (as set.empty (Set Context!12932))) setRest!49229))))

(declare-fun b!7035864 () Bool)

(declare-fun tp!1936823 () Bool)

(assert (=> b!7035864 (= e!4229659 tp!1936823)))

(assert (= (and setNonEmpty!49223 condSetEmpty!49229) setIsEmpty!49229))

(assert (= (and setNonEmpty!49223 (not condSetEmpty!49229)) setNonEmpty!49229))

(assert (= setNonEmpty!49229 b!7035864))

(declare-fun m!7744530 () Bool)

(assert (=> setNonEmpty!49229 m!7744530))

(declare-fun b_lambda!266849 () Bool)

(assert (= b_lambda!266843 (or b!7035565 b_lambda!266849)))

(declare-fun bs!1871977 () Bool)

(declare-fun d!2195913 () Bool)

(assert (= bs!1871977 (and d!2195913 b!7035565)))

(assert (=> bs!1871977 (= (dynLambda!27398 lambda!415358 lt!2520355) (derivationStepZipperUp!2080 lt!2520355 (h!74263 s!7408)))))

(assert (=> bs!1871977 m!7744070))

(assert (=> d!2195869 d!2195913))

(declare-fun b_lambda!266851 () Bool)

(assert (= b_lambda!266845 (or b!7035565 b_lambda!266851)))

(declare-fun bs!1871978 () Bool)

(declare-fun d!2195915 () Bool)

(assert (= bs!1871978 (and d!2195915 b!7035565)))

(assert (=> bs!1871978 (= (dynLambda!27398 lambda!415358 lt!2520325) (derivationStepZipperUp!2080 lt!2520325 (h!74263 s!7408)))))

(assert (=> bs!1871978 m!7743976))

(assert (=> d!2195889 d!2195915))

(declare-fun b_lambda!266853 () Bool)

(assert (= b_lambda!266835 (or b!7035545 b_lambda!266853)))

(declare-fun bs!1871979 () Bool)

(declare-fun d!2195917 () Bool)

(assert (= bs!1871979 (and d!2195917 b!7035545)))

(declare-fun lt!2520604 () Unit!161618)

(assert (=> bs!1871979 (= lt!2520604 (lemmaConcatPreservesForall!791 (exprs!6966 lt!2520556) (exprs!6966 ct2!306) lambda!415357))))

(assert (=> bs!1871979 (= (dynLambda!27397 lambda!415356 lt!2520556) (Context!12933 (++!15520 (exprs!6966 lt!2520556) (exprs!6966 ct2!306))))))

(declare-fun m!7744532 () Bool)

(assert (=> bs!1871979 m!7744532))

(declare-fun m!7744534 () Bool)

(assert (=> bs!1871979 m!7744534))

(assert (=> d!2195815 d!2195917))

(declare-fun b_lambda!266855 () Bool)

(assert (= b_lambda!266837 (or b!7035565 b_lambda!266855)))

(declare-fun bs!1871980 () Bool)

(declare-fun d!2195921 () Bool)

(assert (= bs!1871980 (and d!2195921 b!7035565)))

(assert (=> bs!1871980 (= (dynLambda!27398 lambda!415358 lt!2520375) (derivationStepZipperUp!2080 lt!2520375 (h!74263 s!7408)))))

(assert (=> bs!1871980 m!7744078))

(assert (=> d!2195817 d!2195921))

(declare-fun b_lambda!266857 () Bool)

(assert (= b_lambda!266847 (or b!7035567 b_lambda!266857)))

(declare-fun bs!1871981 () Bool)

(declare-fun d!2195923 () Bool)

(assert (= bs!1871981 (and d!2195923 b!7035567)))

(assert (=> bs!1871981 (= (dynLambda!27400 lambda!415355 lt!2520600) (matchZipper!3010 (set.insert lt!2520600 (as set.empty (Set Context!12932))) s!7408))))

(declare-fun m!7744536 () Bool)

(assert (=> bs!1871981 m!7744536))

(assert (=> bs!1871981 m!7744536))

(declare-fun m!7744538 () Bool)

(assert (=> bs!1871981 m!7744538))

(assert (=> d!2195901 d!2195923))

(declare-fun b_lambda!266859 () Bool)

(assert (= b_lambda!266841 (or b!7035545 b_lambda!266859)))

(declare-fun bs!1871982 () Bool)

(declare-fun d!2195925 () Bool)

(assert (= bs!1871982 (and d!2195925 b!7035545)))

(declare-fun lt!2520605 () Unit!161618)

(assert (=> bs!1871982 (= lt!2520605 (lemmaConcatPreservesForall!791 (exprs!6966 lt!2520347) (exprs!6966 ct2!306) lambda!415357))))

(assert (=> bs!1871982 (= (dynLambda!27397 lambda!415356 lt!2520347) (Context!12933 (++!15520 (exprs!6966 lt!2520347) (exprs!6966 ct2!306))))))

(declare-fun m!7744540 () Bool)

(assert (=> bs!1871982 m!7744540))

(declare-fun m!7744542 () Bool)

(assert (=> bs!1871982 m!7744542))

(assert (=> d!2195857 d!2195925))

(declare-fun b_lambda!266861 () Bool)

(assert (= b_lambda!266839 (or b!7035565 b_lambda!266861)))

(declare-fun bs!1871983 () Bool)

(declare-fun d!2195927 () Bool)

(assert (= bs!1871983 (and d!2195927 b!7035565)))

(assert (=> bs!1871983 (= (dynLambda!27398 lambda!415358 lt!2520347) (derivationStepZipperUp!2080 lt!2520347 (h!74263 s!7408)))))

(assert (=> bs!1871983 m!7743964))

(assert (=> d!2195851 d!2195927))

(push 1)

(assert (not b!7035686))

(assert (not b!7035864))

(assert (not d!2195901))

(assert (not bs!1871980))

(assert (not bm!638939))

(assert (not bm!638942))

(assert (not b!7035746))

(assert (not d!2195845))

(assert (not bs!1871981))

(assert (not d!2195889))

(assert (not b!7035833))

(assert (not b!7035811))

(assert (not b_lambda!266853))

(assert (not b!7035798))

(assert (not d!2195869))

(assert (not d!2195851))

(assert (not b!7035819))

(assert (not bs!1871979))

(assert (not d!2195909))

(assert (not b!7035775))

(assert (not d!2195861))

(assert tp_is_empty!44165)

(assert (not d!2195825))

(assert (not b!7035752))

(assert (not b_lambda!266859))

(assert (not d!2195803))

(assert (not d!2195895))

(assert (not b!7035818))

(assert (not b!7035738))

(assert (not b!7035789))

(assert (not b!7035846))

(assert (not d!2195903))

(assert (not b!7035737))

(assert (not d!2195817))

(assert (not b!7035773))

(assert (not b!7035772))

(assert (not b!7035820))

(assert (not d!2195811))

(assert (not bm!638943))

(assert (not b!7035807))

(assert (not d!2195899))

(assert (not b!7035782))

(assert (not bs!1871982))

(assert (not b!7035776))

(assert (not b!7035858))

(assert (not b!7035779))

(assert (not setNonEmpty!49229))

(assert (not d!2195859))

(assert (not b!7035787))

(assert (not d!2195871))

(assert (not b!7035784))

(assert (not d!2195875))

(assert (not b!7035859))

(assert (not d!2195837))

(assert (not d!2195847))

(assert (not bs!1871977))

(assert (not b!7035814))

(assert (not b!7035668))

(assert (not bm!638941))

(assert (not d!2195815))

(assert (not b!7035824))

(assert (not d!2195821))

(assert (not d!2195897))

(assert (not d!2195835))

(assert (not b!7035778))

(assert (not b_lambda!266857))

(assert (not d!2195877))

(assert (not d!2195867))

(assert (not d!2195833))

(assert (not d!2195887))

(assert (not d!2195801))

(assert (not bm!638949))

(assert (not d!2195893))

(assert (not b!7035785))

(assert (not b_lambda!266851))

(assert (not d!2195879))

(assert (not b!7035732))

(assert (not d!2195857))

(assert (not b!7035786))

(assert (not b!7035813))

(assert (not b!7035698))

(assert (not b!7035751))

(assert (not bm!638948))

(assert (not d!2195863))

(assert (not b!7035793))

(assert (not d!2195841))

(assert (not b!7035825))

(assert (not b!7035812))

(assert (not b!7035675))

(assert (not d!2195839))

(assert (not b!7035847))

(assert (not bm!638923))

(assert (not b_lambda!266855))

(assert (not d!2195907))

(assert (not b!7035750))

(assert (not b!7035783))

(assert (not b!7035853))

(assert (not bs!1871983))

(assert (not d!2195873))

(assert (not b!7035685))

(assert (not bm!638944))

(assert (not d!2195805))

(assert (not d!2195829))

(assert (not d!2195813))

(assert (not d!2195827))

(assert (not b_lambda!266849))

(assert (not d!2195885))

(assert (not bm!638950))

(assert (not b!7035788))

(assert (not bm!638940))

(assert (not b_lambda!266861))

(assert (not b!7035702))

(assert (not b!7035804))

(assert (not b!7035800))

(assert (not b!7035805))

(assert (not d!2195819))

(assert (not b!7035815))

(assert (not bs!1871978))

(assert (not b!7035674))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

