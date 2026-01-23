; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675478 () Bool)

(assert start!675478)

(declare-fun b!7012196 () Bool)

(assert (=> b!7012196 true))

(declare-fun b!7012198 () Bool)

(assert (=> b!7012198 true))

(declare-fun b!7012206 () Bool)

(assert (=> b!7012206 true))

(declare-fun b!7012180 () Bool)

(declare-fun e!4215087 () Bool)

(declare-fun e!4215079 () Bool)

(assert (=> b!7012180 (= e!4215087 e!4215079)))

(declare-fun res!2861469 () Bool)

(assert (=> b!7012180 (=> res!2861469 e!4215079)))

(declare-datatypes ((C!34922 0))(
  ( (C!34923 (val!27163 Int)) )
))
(declare-datatypes ((Regex!17326 0))(
  ( (ElementMatch!17326 (c!1302608 C!34922)) (Concat!26171 (regOne!35164 Regex!17326) (regTwo!35164 Regex!17326)) (EmptyExpr!17326) (Star!17326 (reg!17655 Regex!17326)) (EmptyLang!17326) (Union!17326 (regOne!35165 Regex!17326) (regTwo!35165 Regex!17326)) )
))
(declare-datatypes ((List!67523 0))(
  ( (Nil!67399) (Cons!67399 (h!73847 Regex!17326) (t!381278 List!67523)) )
))
(declare-datatypes ((Context!12644 0))(
  ( (Context!12645 (exprs!6822 List!67523)) )
))
(declare-fun lt!2505450 () (Set Context!12644))

(declare-fun lt!2505488 () (Set Context!12644))

(assert (=> b!7012180 (= res!2861469 (not (= lt!2505450 lt!2505488)))))

(declare-fun lt!2505457 () (Set Context!12644))

(declare-fun lt!2505454 () (Set Context!12644))

(assert (=> b!7012180 (= lt!2505488 (set.union lt!2505457 lt!2505454))))

(declare-fun lt!2505468 () Context!12644)

(declare-datatypes ((List!67524 0))(
  ( (Nil!67400) (Cons!67400 (h!73848 C!34922) (t!381279 List!67524)) )
))
(declare-fun s!7408 () List!67524)

(declare-fun derivationStepZipperUp!1976 (Context!12644 C!34922) (Set Context!12644))

(assert (=> b!7012180 (= lt!2505454 (derivationStepZipperUp!1976 lt!2505468 (h!73848 s!7408)))))

(declare-fun b!7012181 () Bool)

(declare-fun e!4215070 () Bool)

(declare-fun e!4215077 () Bool)

(assert (=> b!7012181 (= e!4215070 e!4215077)))

(declare-fun res!2861453 () Bool)

(assert (=> b!7012181 (=> res!2861453 e!4215077)))

(declare-fun lt!2505486 () Bool)

(assert (=> b!7012181 (= res!2861453 (not lt!2505486))))

(declare-datatypes ((Unit!161330 0))(
  ( (Unit!161331) )
))
(declare-fun lt!2505470 () Unit!161330)

(declare-fun lambda!408914 () Int)

(declare-fun ct2!306 () Context!12644)

(declare-fun lt!2505480 () List!67523)

(declare-fun lemmaConcatPreservesForall!662 (List!67523 List!67523 Int) Unit!161330)

(assert (=> b!7012181 (= lt!2505470 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun lt!2505485 () Unit!161330)

(assert (=> b!7012181 (= lt!2505485 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun b!7012182 () Bool)

(declare-fun e!4215078 () Bool)

(assert (=> b!7012182 (= e!4215077 e!4215078)))

(declare-fun res!2861452 () Bool)

(assert (=> b!7012182 (=> res!2861452 e!4215078)))

(declare-datatypes ((tuple2!67958 0))(
  ( (tuple2!67959 (_1!37282 List!67524) (_2!37282 List!67524)) )
))
(declare-fun lt!2505463 () tuple2!67958)

(declare-fun matchZipper!2866 ((Set Context!12644) List!67524) Bool)

(assert (=> b!7012182 (= res!2861452 (not (matchZipper!2866 lt!2505457 (_1!37282 lt!2505463))))))

(declare-datatypes ((Option!16811 0))(
  ( (None!16810) (Some!16810 (v!53088 tuple2!67958)) )
))
(declare-fun lt!2505475 () Option!16811)

(declare-fun get!23636 (Option!16811) tuple2!67958)

(assert (=> b!7012182 (= lt!2505463 (get!23636 lt!2505475))))

(declare-fun isDefined!13512 (Option!16811) Bool)

(assert (=> b!7012182 (isDefined!13512 lt!2505475)))

(declare-fun lt!2505481 () (Set Context!12644))

(declare-fun findConcatSeparationZippers!327 ((Set Context!12644) (Set Context!12644) List!67524 List!67524 List!67524) Option!16811)

(assert (=> b!7012182 (= lt!2505475 (findConcatSeparationZippers!327 lt!2505457 lt!2505481 Nil!67400 (t!381279 s!7408) (t!381279 s!7408)))))

(assert (=> b!7012182 (= lt!2505481 (set.insert ct2!306 (as set.empty (Set Context!12644))))))

(declare-fun lt!2505460 () Unit!161330)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!327 ((Set Context!12644) Context!12644 List!67524) Unit!161330)

(assert (=> b!7012182 (= lt!2505460 (lemmaConcatZipperMatchesStringThenFindConcatDefined!327 lt!2505457 ct2!306 (t!381279 s!7408)))))

(declare-fun lt!2505456 () Unit!161330)

(assert (=> b!7012182 (= lt!2505456 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun lt!2505465 () (Set Context!12644))

(declare-fun appendTo!447 ((Set Context!12644) Context!12644) (Set Context!12644))

(assert (=> b!7012182 (= lt!2505465 (appendTo!447 lt!2505457 ct2!306))))

(declare-fun lt!2505496 () Context!12644)

(declare-fun derivationStepZipperDown!2044 (Regex!17326 Context!12644 C!34922) (Set Context!12644))

(assert (=> b!7012182 (= lt!2505457 (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505496)) lt!2505468 (h!73848 s!7408)))))

(declare-fun lt!2505451 () Unit!161330)

(assert (=> b!7012182 (= lt!2505451 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun lt!2505495 () Unit!161330)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!25 (Context!12644 Regex!17326 C!34922 Context!12644) Unit!161330)

(assert (=> b!7012182 (= lt!2505495 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!25 lt!2505468 (h!73847 (exprs!6822 lt!2505496)) (h!73848 s!7408) ct2!306))))

(declare-fun b!7012183 () Bool)

(declare-fun res!2861467 () Bool)

(declare-fun e!4215068 () Bool)

(assert (=> b!7012183 (=> res!2861467 e!4215068)))

(declare-fun lt!2505482 () Bool)

(assert (=> b!7012183 (= res!2861467 (not lt!2505482))))

(declare-fun b!7012184 () Bool)

(declare-fun e!4215083 () Bool)

(declare-fun lt!2505464 () (Set Context!12644))

(assert (=> b!7012184 (= e!4215083 (matchZipper!2866 lt!2505464 (t!381279 s!7408)))))

(declare-fun b!7012185 () Bool)

(declare-fun res!2861445 () Bool)

(declare-fun e!4215073 () Bool)

(assert (=> b!7012185 (=> res!2861445 e!4215073)))

(declare-fun lt!2505478 () Context!12644)

(declare-fun lt!2505453 () (Set Context!12644))

(assert (=> b!7012185 (= res!2861445 (not (set.member lt!2505478 lt!2505453)))))

(declare-fun setIsEmpty!48398 () Bool)

(declare-fun setRes!48398 () Bool)

(assert (=> setIsEmpty!48398 setRes!48398))

(declare-fun b!7012186 () Bool)

(declare-fun e!4215081 () Bool)

(assert (=> b!7012186 (= e!4215079 e!4215081)))

(declare-fun res!2861465 () Bool)

(assert (=> b!7012186 (=> res!2861465 e!4215081)))

(declare-fun e!4215076 () Bool)

(assert (=> b!7012186 (= res!2861465 e!4215076)))

(declare-fun res!2861456 () Bool)

(assert (=> b!7012186 (=> (not res!2861456) (not e!4215076))))

(declare-fun lt!2505469 () Bool)

(assert (=> b!7012186 (= res!2861456 (not lt!2505469))))

(declare-fun lt!2505459 () (Set Context!12644))

(declare-fun lt!2505474 () List!67524)

(assert (=> b!7012186 (= lt!2505469 (matchZipper!2866 lt!2505459 lt!2505474))))

(assert (=> b!7012186 (= lt!2505474 (Cons!67400 (h!73848 s!7408) (_1!37282 lt!2505463)))))

(assert (=> b!7012186 (matchZipper!2866 lt!2505488 (_1!37282 lt!2505463))))

(declare-fun lt!2505472 () Unit!161330)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1499 ((Set Context!12644) (Set Context!12644) List!67524) Unit!161330)

(assert (=> b!7012186 (= lt!2505472 (lemmaZipperConcatMatchesSameAsBothZippers!1499 lt!2505457 lt!2505454 (_1!37282 lt!2505463)))))

(declare-fun b!7012187 () Bool)

(declare-fun res!2861448 () Bool)

(assert (=> b!7012187 (=> res!2861448 e!4215081)))

(assert (=> b!7012187 (= res!2861448 (not lt!2505469))))

(declare-fun b!7012188 () Bool)

(declare-fun e!4215084 () Bool)

(declare-fun e!4215069 () Bool)

(assert (=> b!7012188 (= e!4215084 e!4215069)))

(declare-fun res!2861463 () Bool)

(assert (=> b!7012188 (=> res!2861463 e!4215069)))

(declare-fun lt!2505449 () (Set Context!12644))

(declare-fun lt!2505462 () (Set Context!12644))

(assert (=> b!7012188 (= res!2861463 (not (= lt!2505449 lt!2505462)))))

(assert (=> b!7012188 (= lt!2505462 (set.union lt!2505465 lt!2505464))))

(declare-fun lt!2505487 () Context!12644)

(assert (=> b!7012188 (= lt!2505464 (derivationStepZipperUp!1976 lt!2505487 (h!73848 s!7408)))))

(assert (=> b!7012188 (= lt!2505465 (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505496)) lt!2505487 (h!73848 s!7408)))))

(declare-fun ++!15331 (List!67523 List!67523) List!67523)

(assert (=> b!7012188 (= lt!2505487 (Context!12645 (++!15331 lt!2505480 (exprs!6822 ct2!306))))))

(declare-fun lt!2505490 () Unit!161330)

(assert (=> b!7012188 (= lt!2505490 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun lt!2505448 () Unit!161330)

(assert (=> b!7012188 (= lt!2505448 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun b!7012189 () Bool)

(declare-fun e!4215075 () Bool)

(declare-fun e!4215074 () Bool)

(assert (=> b!7012189 (= e!4215075 e!4215074)))

(declare-fun res!2861460 () Bool)

(assert (=> b!7012189 (=> res!2861460 e!4215074)))

(declare-fun lt!2505467 () (Set Context!12644))

(declare-fun lt!2505471 () (Set Context!12644))

(assert (=> b!7012189 (= res!2861460 (not (= lt!2505467 lt!2505471)))))

(declare-fun lt!2505466 () Context!12644)

(assert (=> b!7012189 (= lt!2505467 (set.insert lt!2505466 (as set.empty (Set Context!12644))))))

(declare-fun lt!2505489 () Unit!161330)

(assert (=> b!7012189 (= lt!2505489 (lemmaConcatPreservesForall!662 (exprs!6822 lt!2505496) (exprs!6822 ct2!306) lambda!408914))))

(declare-fun setNonEmpty!48398 () Bool)

(declare-fun tp!1932554 () Bool)

(declare-fun e!4215082 () Bool)

(declare-fun setElem!48398 () Context!12644)

(declare-fun inv!86175 (Context!12644) Bool)

(assert (=> setNonEmpty!48398 (= setRes!48398 (and tp!1932554 (inv!86175 setElem!48398) e!4215082))))

(declare-fun z1!570 () (Set Context!12644))

(declare-fun setRest!48398 () (Set Context!12644))

(assert (=> setNonEmpty!48398 (= z1!570 (set.union (set.insert setElem!48398 (as set.empty (Set Context!12644))) setRest!48398))))

(declare-fun b!7012190 () Bool)

(declare-fun ++!15332 (List!67524 List!67524) List!67524)

(assert (=> b!7012190 (= e!4215081 (= (++!15332 Nil!67400 s!7408) s!7408))))

(assert (=> b!7012190 (isDefined!13512 (findConcatSeparationZippers!327 lt!2505459 lt!2505481 Nil!67400 s!7408 s!7408))))

(declare-fun lt!2505493 () Unit!161330)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!13 ((Set Context!12644) (Set Context!12644) List!67524 List!67524 List!67524 List!67524 List!67524) Unit!161330)

(assert (=> b!7012190 (= lt!2505493 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!13 lt!2505459 lt!2505481 lt!2505474 (_2!37282 lt!2505463) s!7408 Nil!67400 s!7408))))

(declare-fun b!7012191 () Bool)

(declare-fun e!4215072 () Bool)

(assert (=> b!7012191 (= e!4215072 (not (matchZipper!2866 lt!2505464 (t!381279 s!7408))))))

(declare-fun lt!2505483 () Unit!161330)

(assert (=> b!7012191 (= lt!2505483 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun b!7012192 () Bool)

(declare-fun res!2861461 () Bool)

(declare-fun e!4215080 () Bool)

(assert (=> b!7012192 (=> (not res!2861461) (not e!4215080))))

(assert (=> b!7012192 (= res!2861461 (is-Cons!67400 s!7408))))

(declare-fun b!7012193 () Bool)

(declare-fun e!4215086 () Bool)

(assert (=> b!7012193 (= e!4215086 e!4215084)))

(declare-fun res!2861458 () Bool)

(assert (=> b!7012193 (=> res!2861458 e!4215084)))

(declare-fun nullable!7086 (Regex!17326) Bool)

(assert (=> b!7012193 (= res!2861458 (not (nullable!7086 (h!73847 (exprs!6822 lt!2505496)))))))

(assert (=> b!7012193 (= lt!2505468 (Context!12645 lt!2505480))))

(declare-fun tail!13405 (List!67523) List!67523)

(assert (=> b!7012193 (= lt!2505480 (tail!13405 (exprs!6822 lt!2505496)))))

(declare-fun b!7012194 () Bool)

(assert (=> b!7012194 (= e!4215076 (not (matchZipper!2866 lt!2505454 (_1!37282 lt!2505463))))))

(declare-fun b!7012195 () Bool)

(declare-fun res!2861449 () Bool)

(assert (=> b!7012195 (=> res!2861449 e!4215086)))

(declare-fun isEmpty!39366 (List!67523) Bool)

(assert (=> b!7012195 (= res!2861449 (isEmpty!39366 (exprs!6822 lt!2505496)))))

(assert (=> b!7012196 (= e!4215080 (not e!4215073))))

(declare-fun res!2861450 () Bool)

(assert (=> b!7012196 (=> res!2861450 e!4215073)))

(assert (=> b!7012196 (= res!2861450 (not (matchZipper!2866 lt!2505471 s!7408)))))

(assert (=> b!7012196 (= lt!2505471 (set.insert lt!2505478 (as set.empty (Set Context!12644))))))

(declare-fun lambda!408912 () Int)

(declare-fun getWitness!1272 ((Set Context!12644) Int) Context!12644)

(assert (=> b!7012196 (= lt!2505478 (getWitness!1272 lt!2505453 lambda!408912))))

(declare-datatypes ((List!67525 0))(
  ( (Nil!67401) (Cons!67401 (h!73849 Context!12644) (t!381280 List!67525)) )
))
(declare-fun lt!2505477 () List!67525)

(declare-fun exists!3174 (List!67525 Int) Bool)

(assert (=> b!7012196 (exists!3174 lt!2505477 lambda!408912)))

(declare-fun lt!2505492 () Unit!161330)

(declare-fun lemmaZipperMatchesExistsMatchingContext!295 (List!67525 List!67524) Unit!161330)

(assert (=> b!7012196 (= lt!2505492 (lemmaZipperMatchesExistsMatchingContext!295 lt!2505477 s!7408))))

(declare-fun toList!10686 ((Set Context!12644)) List!67525)

(assert (=> b!7012196 (= lt!2505477 (toList!10686 lt!2505453))))

(declare-fun b!7012197 () Bool)

(declare-fun tp!1932551 () Bool)

(assert (=> b!7012197 (= e!4215082 tp!1932551)))

(assert (=> b!7012198 (= e!4215073 e!4215075)))

(declare-fun res!2861457 () Bool)

(assert (=> b!7012198 (=> res!2861457 e!4215075)))

(assert (=> b!7012198 (= res!2861457 (or (not (= lt!2505466 lt!2505478)) (not (set.member lt!2505496 z1!570))))))

(assert (=> b!7012198 (= lt!2505466 (Context!12645 (++!15331 (exprs!6822 lt!2505496) (exprs!6822 ct2!306))))))

(declare-fun lt!2505461 () Unit!161330)

(assert (=> b!7012198 (= lt!2505461 (lemmaConcatPreservesForall!662 (exprs!6822 lt!2505496) (exprs!6822 ct2!306) lambda!408914))))

(declare-fun lambda!408913 () Int)

(declare-fun mapPost2!181 ((Set Context!12644) Int Context!12644) Context!12644)

(assert (=> b!7012198 (= lt!2505496 (mapPost2!181 z1!570 lambda!408913 lt!2505478))))

(declare-fun b!7012199 () Bool)

(assert (=> b!7012199 (= e!4215068 e!4215070)))

(declare-fun res!2861466 () Bool)

(assert (=> b!7012199 (=> res!2861466 e!4215070)))

(assert (=> b!7012199 (= res!2861466 (matchZipper!2866 lt!2505464 (t!381279 s!7408)))))

(declare-fun lt!2505452 () Unit!161330)

(assert (=> b!7012199 (= lt!2505452 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun b!7012200 () Bool)

(declare-fun e!4215071 () Bool)

(declare-fun tp!1932553 () Bool)

(assert (=> b!7012200 (= e!4215071 tp!1932553)))

(declare-fun b!7012201 () Bool)

(assert (=> b!7012201 (= e!4215069 e!4215068)))

(declare-fun res!2861459 () Bool)

(assert (=> b!7012201 (=> res!2861459 e!4215068)))

(assert (=> b!7012201 (= res!2861459 e!4215072)))

(declare-fun res!2861468 () Bool)

(assert (=> b!7012201 (=> (not res!2861468) (not e!4215072))))

(assert (=> b!7012201 (= res!2861468 (not (= lt!2505482 lt!2505486)))))

(assert (=> b!7012201 (= lt!2505482 (matchZipper!2866 lt!2505449 (t!381279 s!7408)))))

(declare-fun lt!2505476 () Unit!161330)

(assert (=> b!7012201 (= lt!2505476 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(assert (=> b!7012201 (= (matchZipper!2866 lt!2505462 (t!381279 s!7408)) e!4215083)))

(declare-fun res!2861464 () Bool)

(assert (=> b!7012201 (=> res!2861464 e!4215083)))

(assert (=> b!7012201 (= res!2861464 lt!2505486)))

(assert (=> b!7012201 (= lt!2505486 (matchZipper!2866 lt!2505465 (t!381279 s!7408)))))

(declare-fun lt!2505494 () Unit!161330)

(assert (=> b!7012201 (= lt!2505494 (lemmaZipperConcatMatchesSameAsBothZippers!1499 lt!2505465 lt!2505464 (t!381279 s!7408)))))

(declare-fun lt!2505491 () Unit!161330)

(assert (=> b!7012201 (= lt!2505491 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun lt!2505473 () Unit!161330)

(assert (=> b!7012201 (= lt!2505473 (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(declare-fun b!7012203 () Bool)

(declare-fun e!4215085 () Bool)

(declare-fun tp_is_empty!43877 () Bool)

(declare-fun tp!1932552 () Bool)

(assert (=> b!7012203 (= e!4215085 (and tp_is_empty!43877 tp!1932552))))

(declare-fun res!2861446 () Bool)

(assert (=> start!675478 (=> (not res!2861446) (not e!4215080))))

(assert (=> start!675478 (= res!2861446 (matchZipper!2866 lt!2505453 s!7408))))

(assert (=> start!675478 (= lt!2505453 (appendTo!447 z1!570 ct2!306))))

(assert (=> start!675478 e!4215080))

(declare-fun condSetEmpty!48398 () Bool)

(assert (=> start!675478 (= condSetEmpty!48398 (= z1!570 (as set.empty (Set Context!12644))))))

(assert (=> start!675478 setRes!48398))

(assert (=> start!675478 (and (inv!86175 ct2!306) e!4215071)))

(assert (=> start!675478 e!4215085))

(declare-fun b!7012202 () Bool)

(declare-fun res!2861454 () Bool)

(assert (=> b!7012202 (=> res!2861454 e!4215086)))

(assert (=> b!7012202 (= res!2861454 (not (is-Cons!67399 (exprs!6822 lt!2505496))))))

(declare-fun b!7012204 () Bool)

(declare-fun res!2861451 () Bool)

(assert (=> b!7012204 (=> res!2861451 e!4215078)))

(assert (=> b!7012204 (= res!2861451 (not (= (++!15332 (_1!37282 lt!2505463) (_2!37282 lt!2505463)) (t!381279 s!7408))))))

(declare-fun b!7012205 () Bool)

(assert (=> b!7012205 (= e!4215078 e!4215087)))

(declare-fun res!2861447 () Bool)

(assert (=> b!7012205 (=> res!2861447 e!4215087)))

(declare-fun lt!2505455 () (Set Context!12644))

(assert (=> b!7012205 (= res!2861447 (not (= lt!2505450 lt!2505455)))))

(declare-fun lambda!408915 () Int)

(declare-fun flatMap!2312 ((Set Context!12644) Int) (Set Context!12644))

(assert (=> b!7012205 (= (flatMap!2312 lt!2505459 lambda!408915) (derivationStepZipperUp!1976 lt!2505496 (h!73848 s!7408)))))

(declare-fun lt!2505479 () Unit!161330)

(declare-fun lemmaFlatMapOnSingletonSet!1827 ((Set Context!12644) Context!12644 Int) Unit!161330)

(assert (=> b!7012205 (= lt!2505479 (lemmaFlatMapOnSingletonSet!1827 lt!2505459 lt!2505496 lambda!408915))))

(assert (=> b!7012205 (= lt!2505455 (derivationStepZipperUp!1976 lt!2505496 (h!73848 s!7408)))))

(declare-fun derivationStepZipper!2806 ((Set Context!12644) C!34922) (Set Context!12644))

(assert (=> b!7012205 (= lt!2505450 (derivationStepZipper!2806 lt!2505459 (h!73848 s!7408)))))

(assert (=> b!7012205 (= lt!2505459 (set.insert lt!2505496 (as set.empty (Set Context!12644))))))

(assert (=> b!7012206 (= e!4215074 e!4215086)))

(declare-fun res!2861462 () Bool)

(assert (=> b!7012206 (=> res!2861462 e!4215086)))

(assert (=> b!7012206 (= res!2861462 (not (= (derivationStepZipper!2806 lt!2505467 (h!73848 s!7408)) lt!2505449)))))

(assert (=> b!7012206 (= (flatMap!2312 lt!2505467 lambda!408915) (derivationStepZipperUp!1976 lt!2505466 (h!73848 s!7408)))))

(declare-fun lt!2505484 () Unit!161330)

(assert (=> b!7012206 (= lt!2505484 (lemmaFlatMapOnSingletonSet!1827 lt!2505467 lt!2505466 lambda!408915))))

(assert (=> b!7012206 (= lt!2505449 (derivationStepZipperUp!1976 lt!2505466 (h!73848 s!7408)))))

(declare-fun lt!2505458 () Unit!161330)

(assert (=> b!7012206 (= lt!2505458 (lemmaConcatPreservesForall!662 (exprs!6822 lt!2505496) (exprs!6822 ct2!306) lambda!408914))))

(declare-fun b!7012207 () Bool)

(declare-fun res!2861455 () Bool)

(assert (=> b!7012207 (=> res!2861455 e!4215078)))

(assert (=> b!7012207 (= res!2861455 (not (matchZipper!2866 lt!2505481 (_2!37282 lt!2505463))))))

(assert (= (and start!675478 res!2861446) b!7012192))

(assert (= (and b!7012192 res!2861461) b!7012196))

(assert (= (and b!7012196 (not res!2861450)) b!7012185))

(assert (= (and b!7012185 (not res!2861445)) b!7012198))

(assert (= (and b!7012198 (not res!2861457)) b!7012189))

(assert (= (and b!7012189 (not res!2861460)) b!7012206))

(assert (= (and b!7012206 (not res!2861462)) b!7012202))

(assert (= (and b!7012202 (not res!2861454)) b!7012195))

(assert (= (and b!7012195 (not res!2861449)) b!7012193))

(assert (= (and b!7012193 (not res!2861458)) b!7012188))

(assert (= (and b!7012188 (not res!2861463)) b!7012201))

(assert (= (and b!7012201 (not res!2861464)) b!7012184))

(assert (= (and b!7012201 res!2861468) b!7012191))

(assert (= (and b!7012201 (not res!2861459)) b!7012183))

(assert (= (and b!7012183 (not res!2861467)) b!7012199))

(assert (= (and b!7012199 (not res!2861466)) b!7012181))

(assert (= (and b!7012181 (not res!2861453)) b!7012182))

(assert (= (and b!7012182 (not res!2861452)) b!7012207))

(assert (= (and b!7012207 (not res!2861455)) b!7012204))

(assert (= (and b!7012204 (not res!2861451)) b!7012205))

(assert (= (and b!7012205 (not res!2861447)) b!7012180))

(assert (= (and b!7012180 (not res!2861469)) b!7012186))

(assert (= (and b!7012186 res!2861456) b!7012194))

(assert (= (and b!7012186 (not res!2861465)) b!7012187))

(assert (= (and b!7012187 (not res!2861448)) b!7012190))

(assert (= (and start!675478 condSetEmpty!48398) setIsEmpty!48398))

(assert (= (and start!675478 (not condSetEmpty!48398)) setNonEmpty!48398))

(assert (= setNonEmpty!48398 b!7012197))

(assert (= start!675478 b!7012200))

(assert (= (and start!675478 (is-Cons!67400 s!7408)) b!7012203))

(declare-fun m!7710606 () Bool)

(assert (=> b!7012199 m!7710606))

(declare-fun m!7710608 () Bool)

(assert (=> b!7012199 m!7710608))

(declare-fun m!7710610 () Bool)

(assert (=> b!7012185 m!7710610))

(assert (=> b!7012184 m!7710606))

(declare-fun m!7710612 () Bool)

(assert (=> b!7012190 m!7710612))

(declare-fun m!7710614 () Bool)

(assert (=> b!7012190 m!7710614))

(assert (=> b!7012190 m!7710614))

(declare-fun m!7710616 () Bool)

(assert (=> b!7012190 m!7710616))

(declare-fun m!7710618 () Bool)

(assert (=> b!7012190 m!7710618))

(declare-fun m!7710620 () Bool)

(assert (=> b!7012195 m!7710620))

(declare-fun m!7710622 () Bool)

(assert (=> b!7012196 m!7710622))

(declare-fun m!7710624 () Bool)

(assert (=> b!7012196 m!7710624))

(declare-fun m!7710626 () Bool)

(assert (=> b!7012196 m!7710626))

(declare-fun m!7710628 () Bool)

(assert (=> b!7012196 m!7710628))

(declare-fun m!7710630 () Bool)

(assert (=> b!7012196 m!7710630))

(declare-fun m!7710632 () Bool)

(assert (=> b!7012196 m!7710632))

(declare-fun m!7710634 () Bool)

(assert (=> b!7012204 m!7710634))

(declare-fun m!7710636 () Bool)

(assert (=> b!7012207 m!7710636))

(declare-fun m!7710638 () Bool)

(assert (=> b!7012194 m!7710638))

(declare-fun m!7710640 () Bool)

(assert (=> b!7012206 m!7710640))

(declare-fun m!7710642 () Bool)

(assert (=> b!7012206 m!7710642))

(declare-fun m!7710644 () Bool)

(assert (=> b!7012206 m!7710644))

(declare-fun m!7710646 () Bool)

(assert (=> b!7012206 m!7710646))

(declare-fun m!7710648 () Bool)

(assert (=> b!7012206 m!7710648))

(declare-fun m!7710650 () Bool)

(assert (=> b!7012188 m!7710650))

(assert (=> b!7012188 m!7710608))

(declare-fun m!7710652 () Bool)

(assert (=> b!7012188 m!7710652))

(declare-fun m!7710654 () Bool)

(assert (=> b!7012188 m!7710654))

(assert (=> b!7012188 m!7710608))

(declare-fun m!7710656 () Bool)

(assert (=> b!7012205 m!7710656))

(declare-fun m!7710658 () Bool)

(assert (=> b!7012205 m!7710658))

(declare-fun m!7710660 () Bool)

(assert (=> b!7012205 m!7710660))

(declare-fun m!7710662 () Bool)

(assert (=> b!7012205 m!7710662))

(declare-fun m!7710664 () Bool)

(assert (=> b!7012205 m!7710664))

(declare-fun m!7710666 () Bool)

(assert (=> b!7012193 m!7710666))

(declare-fun m!7710668 () Bool)

(assert (=> b!7012193 m!7710668))

(declare-fun m!7710670 () Bool)

(assert (=> b!7012201 m!7710670))

(declare-fun m!7710672 () Bool)

(assert (=> b!7012201 m!7710672))

(assert (=> b!7012201 m!7710608))

(assert (=> b!7012201 m!7710608))

(declare-fun m!7710674 () Bool)

(assert (=> b!7012201 m!7710674))

(declare-fun m!7710676 () Bool)

(assert (=> b!7012201 m!7710676))

(assert (=> b!7012201 m!7710608))

(declare-fun m!7710678 () Bool)

(assert (=> setNonEmpty!48398 m!7710678))

(assert (=> b!7012181 m!7710608))

(assert (=> b!7012181 m!7710608))

(declare-fun m!7710680 () Bool)

(assert (=> b!7012180 m!7710680))

(declare-fun m!7710682 () Bool)

(assert (=> b!7012198 m!7710682))

(declare-fun m!7710684 () Bool)

(assert (=> b!7012198 m!7710684))

(assert (=> b!7012198 m!7710642))

(declare-fun m!7710686 () Bool)

(assert (=> b!7012198 m!7710686))

(declare-fun m!7710688 () Bool)

(assert (=> start!675478 m!7710688))

(declare-fun m!7710690 () Bool)

(assert (=> start!675478 m!7710690))

(declare-fun m!7710692 () Bool)

(assert (=> start!675478 m!7710692))

(declare-fun m!7710694 () Bool)

(assert (=> b!7012182 m!7710694))

(declare-fun m!7710696 () Bool)

(assert (=> b!7012182 m!7710696))

(declare-fun m!7710698 () Bool)

(assert (=> b!7012182 m!7710698))

(declare-fun m!7710700 () Bool)

(assert (=> b!7012182 m!7710700))

(assert (=> b!7012182 m!7710608))

(declare-fun m!7710702 () Bool)

(assert (=> b!7012182 m!7710702))

(declare-fun m!7710704 () Bool)

(assert (=> b!7012182 m!7710704))

(declare-fun m!7710706 () Bool)

(assert (=> b!7012182 m!7710706))

(assert (=> b!7012182 m!7710608))

(declare-fun m!7710708 () Bool)

(assert (=> b!7012182 m!7710708))

(declare-fun m!7710710 () Bool)

(assert (=> b!7012182 m!7710710))

(assert (=> b!7012191 m!7710606))

(assert (=> b!7012191 m!7710608))

(declare-fun m!7710712 () Bool)

(assert (=> b!7012186 m!7710712))

(declare-fun m!7710714 () Bool)

(assert (=> b!7012186 m!7710714))

(declare-fun m!7710716 () Bool)

(assert (=> b!7012186 m!7710716))

(declare-fun m!7710718 () Bool)

(assert (=> b!7012189 m!7710718))

(assert (=> b!7012189 m!7710642))

(push 1)

(assert (not b!7012196))

(assert (not b!7012201))

(assert (not b!7012207))

(assert (not b!7012190))

(assert (not b!7012206))

(assert (not b!7012197))

(assert (not setNonEmpty!48398))

(assert (not b!7012200))

(assert (not b!7012199))

(assert (not b!7012186))

(assert (not b!7012195))

(assert (not b!7012205))

(assert (not b!7012182))

(assert (not b!7012181))

(assert (not b!7012203))

(assert (not b!7012204))

(assert tp_is_empty!43877)

(assert (not b!7012188))

(assert (not b!7012191))

(assert (not start!675478))

(assert (not b!7012180))

(assert (not b!7012193))

(assert (not b!7012198))

(assert (not b!7012194))

(assert (not b!7012189))

(assert (not b!7012184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2185819 () Bool)

(declare-fun nullableFct!2686 (Regex!17326) Bool)

(assert (=> d!2185819 (= (nullable!7086 (h!73847 (exprs!6822 lt!2505496))) (nullableFct!2686 (h!73847 (exprs!6822 lt!2505496))))))

(declare-fun bs!1866301 () Bool)

(assert (= bs!1866301 d!2185819))

(declare-fun m!7710834 () Bool)

(assert (=> bs!1866301 m!7710834))

(assert (=> b!7012193 d!2185819))

(declare-fun d!2185821 () Bool)

(assert (=> d!2185821 (= (tail!13405 (exprs!6822 lt!2505496)) (t!381278 (exprs!6822 lt!2505496)))))

(assert (=> b!7012193 d!2185821))

(declare-fun b!7012312 () Bool)

(declare-fun e!4215153 () List!67524)

(assert (=> b!7012312 (= e!4215153 (_2!37282 lt!2505463))))

(declare-fun b!7012313 () Bool)

(assert (=> b!7012313 (= e!4215153 (Cons!67400 (h!73848 (_1!37282 lt!2505463)) (++!15332 (t!381279 (_1!37282 lt!2505463)) (_2!37282 lt!2505463))))))

(declare-fun b!7012315 () Bool)

(declare-fun e!4215152 () Bool)

(declare-fun lt!2505648 () List!67524)

(assert (=> b!7012315 (= e!4215152 (or (not (= (_2!37282 lt!2505463) Nil!67400)) (= lt!2505648 (_1!37282 lt!2505463))))))

(declare-fun b!7012314 () Bool)

(declare-fun res!2861550 () Bool)

(assert (=> b!7012314 (=> (not res!2861550) (not e!4215152))))

(declare-fun size!40981 (List!67524) Int)

(assert (=> b!7012314 (= res!2861550 (= (size!40981 lt!2505648) (+ (size!40981 (_1!37282 lt!2505463)) (size!40981 (_2!37282 lt!2505463)))))))

(declare-fun d!2185823 () Bool)

(assert (=> d!2185823 e!4215152))

(declare-fun res!2861551 () Bool)

(assert (=> d!2185823 (=> (not res!2861551) (not e!4215152))))

(declare-fun content!13385 (List!67524) (Set C!34922))

(assert (=> d!2185823 (= res!2861551 (= (content!13385 lt!2505648) (set.union (content!13385 (_1!37282 lt!2505463)) (content!13385 (_2!37282 lt!2505463)))))))

(assert (=> d!2185823 (= lt!2505648 e!4215153)))

(declare-fun c!1302622 () Bool)

(assert (=> d!2185823 (= c!1302622 (is-Nil!67400 (_1!37282 lt!2505463)))))

(assert (=> d!2185823 (= (++!15332 (_1!37282 lt!2505463) (_2!37282 lt!2505463)) lt!2505648)))

(assert (= (and d!2185823 c!1302622) b!7012312))

(assert (= (and d!2185823 (not c!1302622)) b!7012313))

(assert (= (and d!2185823 res!2861551) b!7012314))

(assert (= (and b!7012314 res!2861550) b!7012315))

(declare-fun m!7710836 () Bool)

(assert (=> b!7012313 m!7710836))

(declare-fun m!7710838 () Bool)

(assert (=> b!7012314 m!7710838))

(declare-fun m!7710840 () Bool)

(assert (=> b!7012314 m!7710840))

(declare-fun m!7710842 () Bool)

(assert (=> b!7012314 m!7710842))

(declare-fun m!7710844 () Bool)

(assert (=> d!2185823 m!7710844))

(declare-fun m!7710846 () Bool)

(assert (=> d!2185823 m!7710846))

(declare-fun m!7710848 () Bool)

(assert (=> d!2185823 m!7710848))

(assert (=> b!7012204 d!2185823))

(declare-fun d!2185825 () Bool)

(declare-fun c!1302625 () Bool)

(declare-fun isEmpty!39368 (List!67524) Bool)

(assert (=> d!2185825 (= c!1302625 (isEmpty!39368 (_1!37282 lt!2505463)))))

(declare-fun e!4215156 () Bool)

(assert (=> d!2185825 (= (matchZipper!2866 lt!2505454 (_1!37282 lt!2505463)) e!4215156)))

(declare-fun b!7012320 () Bool)

(declare-fun nullableZipper!2492 ((Set Context!12644)) Bool)

(assert (=> b!7012320 (= e!4215156 (nullableZipper!2492 lt!2505454))))

(declare-fun b!7012321 () Bool)

(declare-fun head!14178 (List!67524) C!34922)

(declare-fun tail!13407 (List!67524) List!67524)

(assert (=> b!7012321 (= e!4215156 (matchZipper!2866 (derivationStepZipper!2806 lt!2505454 (head!14178 (_1!37282 lt!2505463))) (tail!13407 (_1!37282 lt!2505463))))))

(assert (= (and d!2185825 c!1302625) b!7012320))

(assert (= (and d!2185825 (not c!1302625)) b!7012321))

(declare-fun m!7710850 () Bool)

(assert (=> d!2185825 m!7710850))

(declare-fun m!7710852 () Bool)

(assert (=> b!7012320 m!7710852))

(declare-fun m!7710854 () Bool)

(assert (=> b!7012321 m!7710854))

(assert (=> b!7012321 m!7710854))

(declare-fun m!7710856 () Bool)

(assert (=> b!7012321 m!7710856))

(declare-fun m!7710858 () Bool)

(assert (=> b!7012321 m!7710858))

(assert (=> b!7012321 m!7710856))

(assert (=> b!7012321 m!7710858))

(declare-fun m!7710860 () Bool)

(assert (=> b!7012321 m!7710860))

(assert (=> b!7012194 d!2185825))

(declare-fun d!2185827 () Bool)

(declare-fun choose!52738 ((Set Context!12644) Int) (Set Context!12644))

(assert (=> d!2185827 (= (flatMap!2312 lt!2505459 lambda!408915) (choose!52738 lt!2505459 lambda!408915))))

(declare-fun bs!1866302 () Bool)

(assert (= bs!1866302 d!2185827))

(declare-fun m!7710862 () Bool)

(assert (=> bs!1866302 m!7710862))

(assert (=> b!7012205 d!2185827))

(declare-fun b!7012332 () Bool)

(declare-fun e!4215163 () (Set Context!12644))

(declare-fun e!4215165 () (Set Context!12644))

(assert (=> b!7012332 (= e!4215163 e!4215165)))

(declare-fun c!1302630 () Bool)

(assert (=> b!7012332 (= c!1302630 (is-Cons!67399 (exprs!6822 lt!2505496)))))

(declare-fun b!7012333 () Bool)

(assert (=> b!7012333 (= e!4215165 (as set.empty (Set Context!12644)))))

(declare-fun b!7012334 () Bool)

(declare-fun call!636917 () (Set Context!12644))

(assert (=> b!7012334 (= e!4215163 (set.union call!636917 (derivationStepZipperUp!1976 (Context!12645 (t!381278 (exprs!6822 lt!2505496))) (h!73848 s!7408))))))

(declare-fun bm!636912 () Bool)

(assert (=> bm!636912 (= call!636917 (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505496)) (Context!12645 (t!381278 (exprs!6822 lt!2505496))) (h!73848 s!7408)))))

(declare-fun d!2185829 () Bool)

(declare-fun c!1302631 () Bool)

(declare-fun e!4215164 () Bool)

(assert (=> d!2185829 (= c!1302631 e!4215164)))

(declare-fun res!2861554 () Bool)

(assert (=> d!2185829 (=> (not res!2861554) (not e!4215164))))

(assert (=> d!2185829 (= res!2861554 (is-Cons!67399 (exprs!6822 lt!2505496)))))

(assert (=> d!2185829 (= (derivationStepZipperUp!1976 lt!2505496 (h!73848 s!7408)) e!4215163)))

(declare-fun b!7012335 () Bool)

(assert (=> b!7012335 (= e!4215165 call!636917)))

(declare-fun b!7012336 () Bool)

(assert (=> b!7012336 (= e!4215164 (nullable!7086 (h!73847 (exprs!6822 lt!2505496))))))

(assert (= (and d!2185829 res!2861554) b!7012336))

(assert (= (and d!2185829 c!1302631) b!7012334))

(assert (= (and d!2185829 (not c!1302631)) b!7012332))

(assert (= (and b!7012332 c!1302630) b!7012335))

(assert (= (and b!7012332 (not c!1302630)) b!7012333))

(assert (= (or b!7012334 b!7012335) bm!636912))

(declare-fun m!7710864 () Bool)

(assert (=> b!7012334 m!7710864))

(declare-fun m!7710866 () Bool)

(assert (=> bm!636912 m!7710866))

(assert (=> b!7012336 m!7710666))

(assert (=> b!7012205 d!2185829))

(declare-fun d!2185831 () Bool)

(declare-fun dynLambda!27118 (Int Context!12644) (Set Context!12644))

(assert (=> d!2185831 (= (flatMap!2312 lt!2505459 lambda!408915) (dynLambda!27118 lambda!408915 lt!2505496))))

(declare-fun lt!2505651 () Unit!161330)

(declare-fun choose!52739 ((Set Context!12644) Context!12644 Int) Unit!161330)

(assert (=> d!2185831 (= lt!2505651 (choose!52739 lt!2505459 lt!2505496 lambda!408915))))

(assert (=> d!2185831 (= lt!2505459 (set.insert lt!2505496 (as set.empty (Set Context!12644))))))

(assert (=> d!2185831 (= (lemmaFlatMapOnSingletonSet!1827 lt!2505459 lt!2505496 lambda!408915) lt!2505651)))

(declare-fun b_lambda!264439 () Bool)

(assert (=> (not b_lambda!264439) (not d!2185831)))

(declare-fun bs!1866303 () Bool)

(assert (= bs!1866303 d!2185831))

(assert (=> bs!1866303 m!7710664))

(declare-fun m!7710868 () Bool)

(assert (=> bs!1866303 m!7710868))

(declare-fun m!7710870 () Bool)

(assert (=> bs!1866303 m!7710870))

(assert (=> bs!1866303 m!7710660))

(assert (=> b!7012205 d!2185831))

(declare-fun bs!1866304 () Bool)

(declare-fun d!2185833 () Bool)

(assert (= bs!1866304 (and d!2185833 b!7012206)))

(declare-fun lambda!408962 () Int)

(assert (=> bs!1866304 (= lambda!408962 lambda!408915)))

(assert (=> d!2185833 true))

(assert (=> d!2185833 (= (derivationStepZipper!2806 lt!2505459 (h!73848 s!7408)) (flatMap!2312 lt!2505459 lambda!408962))))

(declare-fun bs!1866305 () Bool)

(assert (= bs!1866305 d!2185833))

(declare-fun m!7710872 () Bool)

(assert (=> bs!1866305 m!7710872))

(assert (=> b!7012205 d!2185833))

(declare-fun d!2185835 () Bool)

(assert (=> d!2185835 (= (isEmpty!39366 (exprs!6822 lt!2505496)) (is-Nil!67399 (exprs!6822 lt!2505496)))))

(assert (=> b!7012195 d!2185835))

(declare-fun bs!1866306 () Bool)

(declare-fun d!2185837 () Bool)

(assert (= bs!1866306 (and d!2185837 b!7012206)))

(declare-fun lambda!408963 () Int)

(assert (=> bs!1866306 (= lambda!408963 lambda!408915)))

(declare-fun bs!1866307 () Bool)

(assert (= bs!1866307 (and d!2185837 d!2185833)))

(assert (=> bs!1866307 (= lambda!408963 lambda!408962)))

(assert (=> d!2185837 true))

(assert (=> d!2185837 (= (derivationStepZipper!2806 lt!2505467 (h!73848 s!7408)) (flatMap!2312 lt!2505467 lambda!408963))))

(declare-fun bs!1866308 () Bool)

(assert (= bs!1866308 d!2185837))

(declare-fun m!7710874 () Bool)

(assert (=> bs!1866308 m!7710874))

(assert (=> b!7012206 d!2185837))

(declare-fun d!2185839 () Bool)

(assert (=> d!2185839 (= (flatMap!2312 lt!2505467 lambda!408915) (dynLambda!27118 lambda!408915 lt!2505466))))

(declare-fun lt!2505652 () Unit!161330)

(assert (=> d!2185839 (= lt!2505652 (choose!52739 lt!2505467 lt!2505466 lambda!408915))))

(assert (=> d!2185839 (= lt!2505467 (set.insert lt!2505466 (as set.empty (Set Context!12644))))))

(assert (=> d!2185839 (= (lemmaFlatMapOnSingletonSet!1827 lt!2505467 lt!2505466 lambda!408915) lt!2505652)))

(declare-fun b_lambda!264441 () Bool)

(assert (=> (not b_lambda!264441) (not d!2185839)))

(declare-fun bs!1866309 () Bool)

(assert (= bs!1866309 d!2185839))

(assert (=> bs!1866309 m!7710640))

(declare-fun m!7710876 () Bool)

(assert (=> bs!1866309 m!7710876))

(declare-fun m!7710878 () Bool)

(assert (=> bs!1866309 m!7710878))

(assert (=> bs!1866309 m!7710718))

(assert (=> b!7012206 d!2185839))

(declare-fun d!2185841 () Bool)

(assert (=> d!2185841 (= (flatMap!2312 lt!2505467 lambda!408915) (choose!52738 lt!2505467 lambda!408915))))

(declare-fun bs!1866310 () Bool)

(assert (= bs!1866310 d!2185841))

(declare-fun m!7710880 () Bool)

(assert (=> bs!1866310 m!7710880))

(assert (=> b!7012206 d!2185841))

(declare-fun b!7012339 () Bool)

(declare-fun e!4215166 () (Set Context!12644))

(declare-fun e!4215168 () (Set Context!12644))

(assert (=> b!7012339 (= e!4215166 e!4215168)))

(declare-fun c!1302634 () Bool)

(assert (=> b!7012339 (= c!1302634 (is-Cons!67399 (exprs!6822 lt!2505466)))))

(declare-fun b!7012340 () Bool)

(assert (=> b!7012340 (= e!4215168 (as set.empty (Set Context!12644)))))

(declare-fun b!7012341 () Bool)

(declare-fun call!636918 () (Set Context!12644))

(assert (=> b!7012341 (= e!4215166 (set.union call!636918 (derivationStepZipperUp!1976 (Context!12645 (t!381278 (exprs!6822 lt!2505466))) (h!73848 s!7408))))))

(declare-fun bm!636913 () Bool)

(assert (=> bm!636913 (= call!636918 (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505466)) (Context!12645 (t!381278 (exprs!6822 lt!2505466))) (h!73848 s!7408)))))

(declare-fun d!2185843 () Bool)

(declare-fun c!1302635 () Bool)

(declare-fun e!4215167 () Bool)

(assert (=> d!2185843 (= c!1302635 e!4215167)))

(declare-fun res!2861555 () Bool)

(assert (=> d!2185843 (=> (not res!2861555) (not e!4215167))))

(assert (=> d!2185843 (= res!2861555 (is-Cons!67399 (exprs!6822 lt!2505466)))))

(assert (=> d!2185843 (= (derivationStepZipperUp!1976 lt!2505466 (h!73848 s!7408)) e!4215166)))

(declare-fun b!7012342 () Bool)

(assert (=> b!7012342 (= e!4215168 call!636918)))

(declare-fun b!7012343 () Bool)

(assert (=> b!7012343 (= e!4215167 (nullable!7086 (h!73847 (exprs!6822 lt!2505466))))))

(assert (= (and d!2185843 res!2861555) b!7012343))

(assert (= (and d!2185843 c!1302635) b!7012341))

(assert (= (and d!2185843 (not c!1302635)) b!7012339))

(assert (= (and b!7012339 c!1302634) b!7012342))

(assert (= (and b!7012339 (not c!1302634)) b!7012340))

(assert (= (or b!7012341 b!7012342) bm!636913))

(declare-fun m!7710882 () Bool)

(assert (=> b!7012341 m!7710882))

(declare-fun m!7710884 () Bool)

(assert (=> bm!636913 m!7710884))

(declare-fun m!7710886 () Bool)

(assert (=> b!7012343 m!7710886))

(assert (=> b!7012206 d!2185843))

(declare-fun d!2185845 () Bool)

(declare-fun forall!16243 (List!67523 Int) Bool)

(assert (=> d!2185845 (forall!16243 (++!15331 (exprs!6822 lt!2505496) (exprs!6822 ct2!306)) lambda!408914)))

(declare-fun lt!2505655 () Unit!161330)

(declare-fun choose!52740 (List!67523 List!67523 Int) Unit!161330)

(assert (=> d!2185845 (= lt!2505655 (choose!52740 (exprs!6822 lt!2505496) (exprs!6822 ct2!306) lambda!408914))))

(assert (=> d!2185845 (forall!16243 (exprs!6822 lt!2505496) lambda!408914)))

(assert (=> d!2185845 (= (lemmaConcatPreservesForall!662 (exprs!6822 lt!2505496) (exprs!6822 ct2!306) lambda!408914) lt!2505655)))

(declare-fun bs!1866311 () Bool)

(assert (= bs!1866311 d!2185845))

(assert (=> bs!1866311 m!7710684))

(assert (=> bs!1866311 m!7710684))

(declare-fun m!7710888 () Bool)

(assert (=> bs!1866311 m!7710888))

(declare-fun m!7710890 () Bool)

(assert (=> bs!1866311 m!7710890))

(declare-fun m!7710892 () Bool)

(assert (=> bs!1866311 m!7710892))

(assert (=> b!7012206 d!2185845))

(declare-fun d!2185847 () Bool)

(declare-fun c!1302636 () Bool)

(assert (=> d!2185847 (= c!1302636 (isEmpty!39368 lt!2505474))))

(declare-fun e!4215169 () Bool)

(assert (=> d!2185847 (= (matchZipper!2866 lt!2505459 lt!2505474) e!4215169)))

(declare-fun b!7012344 () Bool)

(assert (=> b!7012344 (= e!4215169 (nullableZipper!2492 lt!2505459))))

(declare-fun b!7012345 () Bool)

(assert (=> b!7012345 (= e!4215169 (matchZipper!2866 (derivationStepZipper!2806 lt!2505459 (head!14178 lt!2505474)) (tail!13407 lt!2505474)))))

(assert (= (and d!2185847 c!1302636) b!7012344))

(assert (= (and d!2185847 (not c!1302636)) b!7012345))

(declare-fun m!7710894 () Bool)

(assert (=> d!2185847 m!7710894))

(declare-fun m!7710896 () Bool)

(assert (=> b!7012344 m!7710896))

(declare-fun m!7710898 () Bool)

(assert (=> b!7012345 m!7710898))

(assert (=> b!7012345 m!7710898))

(declare-fun m!7710900 () Bool)

(assert (=> b!7012345 m!7710900))

(declare-fun m!7710902 () Bool)

(assert (=> b!7012345 m!7710902))

(assert (=> b!7012345 m!7710900))

(assert (=> b!7012345 m!7710902))

(declare-fun m!7710904 () Bool)

(assert (=> b!7012345 m!7710904))

(assert (=> b!7012186 d!2185847))

(declare-fun d!2185849 () Bool)

(declare-fun c!1302637 () Bool)

(assert (=> d!2185849 (= c!1302637 (isEmpty!39368 (_1!37282 lt!2505463)))))

(declare-fun e!4215170 () Bool)

(assert (=> d!2185849 (= (matchZipper!2866 lt!2505488 (_1!37282 lt!2505463)) e!4215170)))

(declare-fun b!7012346 () Bool)

(assert (=> b!7012346 (= e!4215170 (nullableZipper!2492 lt!2505488))))

(declare-fun b!7012347 () Bool)

(assert (=> b!7012347 (= e!4215170 (matchZipper!2866 (derivationStepZipper!2806 lt!2505488 (head!14178 (_1!37282 lt!2505463))) (tail!13407 (_1!37282 lt!2505463))))))

(assert (= (and d!2185849 c!1302637) b!7012346))

(assert (= (and d!2185849 (not c!1302637)) b!7012347))

(assert (=> d!2185849 m!7710850))

(declare-fun m!7710906 () Bool)

(assert (=> b!7012346 m!7710906))

(assert (=> b!7012347 m!7710854))

(assert (=> b!7012347 m!7710854))

(declare-fun m!7710908 () Bool)

(assert (=> b!7012347 m!7710908))

(assert (=> b!7012347 m!7710858))

(assert (=> b!7012347 m!7710908))

(assert (=> b!7012347 m!7710858))

(declare-fun m!7710910 () Bool)

(assert (=> b!7012347 m!7710910))

(assert (=> b!7012186 d!2185849))

(declare-fun d!2185851 () Bool)

(declare-fun e!4215173 () Bool)

(assert (=> d!2185851 (= (matchZipper!2866 (set.union lt!2505457 lt!2505454) (_1!37282 lt!2505463)) e!4215173)))

(declare-fun res!2861558 () Bool)

(assert (=> d!2185851 (=> res!2861558 e!4215173)))

(assert (=> d!2185851 (= res!2861558 (matchZipper!2866 lt!2505457 (_1!37282 lt!2505463)))))

(declare-fun lt!2505658 () Unit!161330)

(declare-fun choose!52741 ((Set Context!12644) (Set Context!12644) List!67524) Unit!161330)

(assert (=> d!2185851 (= lt!2505658 (choose!52741 lt!2505457 lt!2505454 (_1!37282 lt!2505463)))))

(assert (=> d!2185851 (= (lemmaZipperConcatMatchesSameAsBothZippers!1499 lt!2505457 lt!2505454 (_1!37282 lt!2505463)) lt!2505658)))

(declare-fun b!7012350 () Bool)

(assert (=> b!7012350 (= e!4215173 (matchZipper!2866 lt!2505454 (_1!37282 lt!2505463)))))

(assert (= (and d!2185851 (not res!2861558)) b!7012350))

(declare-fun m!7710912 () Bool)

(assert (=> d!2185851 m!7710912))

(assert (=> d!2185851 m!7710702))

(declare-fun m!7710914 () Bool)

(assert (=> d!2185851 m!7710914))

(assert (=> b!7012350 m!7710638))

(assert (=> b!7012186 d!2185851))

(declare-fun bs!1866312 () Bool)

(declare-fun d!2185853 () Bool)

(assert (= bs!1866312 (and d!2185853 b!7012196)))

(declare-fun lambda!408966 () Int)

(assert (=> bs!1866312 (= lambda!408966 lambda!408912)))

(assert (=> d!2185853 true))

(assert (=> d!2185853 (exists!3174 lt!2505477 lambda!408966)))

(declare-fun lt!2505661 () Unit!161330)

(declare-fun choose!52742 (List!67525 List!67524) Unit!161330)

(assert (=> d!2185853 (= lt!2505661 (choose!52742 lt!2505477 s!7408))))

(declare-fun content!13386 (List!67525) (Set Context!12644))

(assert (=> d!2185853 (matchZipper!2866 (content!13386 lt!2505477) s!7408)))

(assert (=> d!2185853 (= (lemmaZipperMatchesExistsMatchingContext!295 lt!2505477 s!7408) lt!2505661)))

(declare-fun bs!1866313 () Bool)

(assert (= bs!1866313 d!2185853))

(declare-fun m!7710916 () Bool)

(assert (=> bs!1866313 m!7710916))

(declare-fun m!7710918 () Bool)

(assert (=> bs!1866313 m!7710918))

(declare-fun m!7710920 () Bool)

(assert (=> bs!1866313 m!7710920))

(assert (=> bs!1866313 m!7710920))

(declare-fun m!7710922 () Bool)

(assert (=> bs!1866313 m!7710922))

(assert (=> b!7012196 d!2185853))

(declare-fun bs!1866314 () Bool)

(declare-fun d!2185855 () Bool)

(assert (= bs!1866314 (and d!2185855 b!7012196)))

(declare-fun lambda!408969 () Int)

(assert (=> bs!1866314 (not (= lambda!408969 lambda!408912))))

(declare-fun bs!1866315 () Bool)

(assert (= bs!1866315 (and d!2185855 d!2185853)))

(assert (=> bs!1866315 (not (= lambda!408969 lambda!408966))))

(assert (=> d!2185855 true))

(declare-fun order!28041 () Int)

(declare-fun dynLambda!27119 (Int Int) Int)

(assert (=> d!2185855 (< (dynLambda!27119 order!28041 lambda!408912) (dynLambda!27119 order!28041 lambda!408969))))

(declare-fun forall!16244 (List!67525 Int) Bool)

(assert (=> d!2185855 (= (exists!3174 lt!2505477 lambda!408912) (not (forall!16244 lt!2505477 lambda!408969)))))

(declare-fun bs!1866316 () Bool)

(assert (= bs!1866316 d!2185855))

(declare-fun m!7710924 () Bool)

(assert (=> bs!1866316 m!7710924))

(assert (=> b!7012196 d!2185855))

(declare-fun d!2185857 () Bool)

(declare-fun c!1302640 () Bool)

(assert (=> d!2185857 (= c!1302640 (isEmpty!39368 s!7408))))

(declare-fun e!4215174 () Bool)

(assert (=> d!2185857 (= (matchZipper!2866 lt!2505471 s!7408) e!4215174)))

(declare-fun b!7012353 () Bool)

(assert (=> b!7012353 (= e!4215174 (nullableZipper!2492 lt!2505471))))

(declare-fun b!7012354 () Bool)

(assert (=> b!7012354 (= e!4215174 (matchZipper!2866 (derivationStepZipper!2806 lt!2505471 (head!14178 s!7408)) (tail!13407 s!7408)))))

(assert (= (and d!2185857 c!1302640) b!7012353))

(assert (= (and d!2185857 (not c!1302640)) b!7012354))

(declare-fun m!7710926 () Bool)

(assert (=> d!2185857 m!7710926))

(declare-fun m!7710928 () Bool)

(assert (=> b!7012353 m!7710928))

(declare-fun m!7710930 () Bool)

(assert (=> b!7012354 m!7710930))

(assert (=> b!7012354 m!7710930))

(declare-fun m!7710932 () Bool)

(assert (=> b!7012354 m!7710932))

(declare-fun m!7710934 () Bool)

(assert (=> b!7012354 m!7710934))

(assert (=> b!7012354 m!7710932))

(assert (=> b!7012354 m!7710934))

(declare-fun m!7710936 () Bool)

(assert (=> b!7012354 m!7710936))

(assert (=> b!7012196 d!2185857))

(declare-fun d!2185859 () Bool)

(declare-fun e!4215177 () Bool)

(assert (=> d!2185859 e!4215177))

(declare-fun res!2861561 () Bool)

(assert (=> d!2185859 (=> (not res!2861561) (not e!4215177))))

(declare-fun lt!2505664 () Context!12644)

(declare-fun dynLambda!27120 (Int Context!12644) Bool)

(assert (=> d!2185859 (= res!2861561 (dynLambda!27120 lambda!408912 lt!2505664))))

(declare-fun getWitness!1274 (List!67525 Int) Context!12644)

(assert (=> d!2185859 (= lt!2505664 (getWitness!1274 (toList!10686 lt!2505453) lambda!408912))))

(declare-fun exists!3176 ((Set Context!12644) Int) Bool)

(assert (=> d!2185859 (exists!3176 lt!2505453 lambda!408912)))

(assert (=> d!2185859 (= (getWitness!1272 lt!2505453 lambda!408912) lt!2505664)))

(declare-fun b!7012357 () Bool)

(assert (=> b!7012357 (= e!4215177 (set.member lt!2505664 lt!2505453))))

(assert (= (and d!2185859 res!2861561) b!7012357))

(declare-fun b_lambda!264443 () Bool)

(assert (=> (not b_lambda!264443) (not d!2185859)))

(declare-fun m!7710938 () Bool)

(assert (=> d!2185859 m!7710938))

(assert (=> d!2185859 m!7710630))

(assert (=> d!2185859 m!7710630))

(declare-fun m!7710940 () Bool)

(assert (=> d!2185859 m!7710940))

(declare-fun m!7710942 () Bool)

(assert (=> d!2185859 m!7710942))

(declare-fun m!7710944 () Bool)

(assert (=> b!7012357 m!7710944))

(assert (=> b!7012196 d!2185859))

(declare-fun d!2185861 () Bool)

(declare-fun e!4215180 () Bool)

(assert (=> d!2185861 e!4215180))

(declare-fun res!2861564 () Bool)

(assert (=> d!2185861 (=> (not res!2861564) (not e!4215180))))

(declare-fun lt!2505667 () List!67525)

(declare-fun noDuplicate!2570 (List!67525) Bool)

(assert (=> d!2185861 (= res!2861564 (noDuplicate!2570 lt!2505667))))

(declare-fun choose!52743 ((Set Context!12644)) List!67525)

(assert (=> d!2185861 (= lt!2505667 (choose!52743 lt!2505453))))

(assert (=> d!2185861 (= (toList!10686 lt!2505453) lt!2505667)))

(declare-fun b!7012360 () Bool)

(assert (=> b!7012360 (= e!4215180 (= (content!13386 lt!2505667) lt!2505453))))

(assert (= (and d!2185861 res!2861564) b!7012360))

(declare-fun m!7710946 () Bool)

(assert (=> d!2185861 m!7710946))

(declare-fun m!7710948 () Bool)

(assert (=> d!2185861 m!7710948))

(declare-fun m!7710950 () Bool)

(assert (=> b!7012360 m!7710950))

(assert (=> b!7012196 d!2185861))

(declare-fun d!2185863 () Bool)

(declare-fun c!1302641 () Bool)

(assert (=> d!2185863 (= c!1302641 (isEmpty!39368 (_2!37282 lt!2505463)))))

(declare-fun e!4215181 () Bool)

(assert (=> d!2185863 (= (matchZipper!2866 lt!2505481 (_2!37282 lt!2505463)) e!4215181)))

(declare-fun b!7012361 () Bool)

(assert (=> b!7012361 (= e!4215181 (nullableZipper!2492 lt!2505481))))

(declare-fun b!7012362 () Bool)

(assert (=> b!7012362 (= e!4215181 (matchZipper!2866 (derivationStepZipper!2806 lt!2505481 (head!14178 (_2!37282 lt!2505463))) (tail!13407 (_2!37282 lt!2505463))))))

(assert (= (and d!2185863 c!1302641) b!7012361))

(assert (= (and d!2185863 (not c!1302641)) b!7012362))

(declare-fun m!7710952 () Bool)

(assert (=> d!2185863 m!7710952))

(declare-fun m!7710954 () Bool)

(assert (=> b!7012361 m!7710954))

(declare-fun m!7710956 () Bool)

(assert (=> b!7012362 m!7710956))

(assert (=> b!7012362 m!7710956))

(declare-fun m!7710958 () Bool)

(assert (=> b!7012362 m!7710958))

(declare-fun m!7710960 () Bool)

(assert (=> b!7012362 m!7710960))

(assert (=> b!7012362 m!7710958))

(assert (=> b!7012362 m!7710960))

(declare-fun m!7710962 () Bool)

(assert (=> b!7012362 m!7710962))

(assert (=> b!7012207 d!2185863))

(declare-fun lt!2505670 () List!67523)

(declare-fun b!7012374 () Bool)

(declare-fun e!4215186 () Bool)

(assert (=> b!7012374 (= e!4215186 (or (not (= (exprs!6822 ct2!306) Nil!67399)) (= lt!2505670 lt!2505480)))))

(declare-fun b!7012371 () Bool)

(declare-fun e!4215187 () List!67523)

(assert (=> b!7012371 (= e!4215187 (exprs!6822 ct2!306))))

(declare-fun b!7012373 () Bool)

(declare-fun res!2861569 () Bool)

(assert (=> b!7012373 (=> (not res!2861569) (not e!4215186))))

(declare-fun size!40982 (List!67523) Int)

(assert (=> b!7012373 (= res!2861569 (= (size!40982 lt!2505670) (+ (size!40982 lt!2505480) (size!40982 (exprs!6822 ct2!306)))))))

(declare-fun b!7012372 () Bool)

(assert (=> b!7012372 (= e!4215187 (Cons!67399 (h!73847 lt!2505480) (++!15331 (t!381278 lt!2505480) (exprs!6822 ct2!306))))))

(declare-fun d!2185865 () Bool)

(assert (=> d!2185865 e!4215186))

(declare-fun res!2861570 () Bool)

(assert (=> d!2185865 (=> (not res!2861570) (not e!4215186))))

(declare-fun content!13387 (List!67523) (Set Regex!17326))

(assert (=> d!2185865 (= res!2861570 (= (content!13387 lt!2505670) (set.union (content!13387 lt!2505480) (content!13387 (exprs!6822 ct2!306)))))))

(assert (=> d!2185865 (= lt!2505670 e!4215187)))

(declare-fun c!1302644 () Bool)

(assert (=> d!2185865 (= c!1302644 (is-Nil!67399 lt!2505480))))

(assert (=> d!2185865 (= (++!15331 lt!2505480 (exprs!6822 ct2!306)) lt!2505670)))

(assert (= (and d!2185865 c!1302644) b!7012371))

(assert (= (and d!2185865 (not c!1302644)) b!7012372))

(assert (= (and d!2185865 res!2861570) b!7012373))

(assert (= (and b!7012373 res!2861569) b!7012374))

(declare-fun m!7710964 () Bool)

(assert (=> b!7012373 m!7710964))

(declare-fun m!7710966 () Bool)

(assert (=> b!7012373 m!7710966))

(declare-fun m!7710968 () Bool)

(assert (=> b!7012373 m!7710968))

(declare-fun m!7710970 () Bool)

(assert (=> b!7012372 m!7710970))

(declare-fun m!7710972 () Bool)

(assert (=> d!2185865 m!7710972))

(declare-fun m!7710974 () Bool)

(assert (=> d!2185865 m!7710974))

(declare-fun m!7710976 () Bool)

(assert (=> d!2185865 m!7710976))

(assert (=> b!7012188 d!2185865))

(declare-fun d!2185867 () Bool)

(assert (=> d!2185867 (forall!16243 (++!15331 lt!2505480 (exprs!6822 ct2!306)) lambda!408914)))

(declare-fun lt!2505671 () Unit!161330)

(assert (=> d!2185867 (= lt!2505671 (choose!52740 lt!2505480 (exprs!6822 ct2!306) lambda!408914))))

(assert (=> d!2185867 (forall!16243 lt!2505480 lambda!408914)))

(assert (=> d!2185867 (= (lemmaConcatPreservesForall!662 lt!2505480 (exprs!6822 ct2!306) lambda!408914) lt!2505671)))

(declare-fun bs!1866317 () Bool)

(assert (= bs!1866317 d!2185867))

(assert (=> bs!1866317 m!7710652))

(assert (=> bs!1866317 m!7710652))

(declare-fun m!7710978 () Bool)

(assert (=> bs!1866317 m!7710978))

(declare-fun m!7710980 () Bool)

(assert (=> bs!1866317 m!7710980))

(declare-fun m!7710982 () Bool)

(assert (=> bs!1866317 m!7710982))

(assert (=> b!7012188 d!2185867))

(declare-fun b!7012397 () Bool)

(declare-fun e!4215205 () (Set Context!12644))

(assert (=> b!7012397 (= e!4215205 (set.insert lt!2505487 (as set.empty (Set Context!12644))))))

(declare-fun b!7012398 () Bool)

(declare-fun e!4215201 () (Set Context!12644))

(declare-fun call!636936 () (Set Context!12644))

(declare-fun call!636933 () (Set Context!12644))

(assert (=> b!7012398 (= e!4215201 (set.union call!636936 call!636933))))

(declare-fun bm!636926 () Bool)

(declare-fun call!636935 () (Set Context!12644))

(assert (=> bm!636926 (= call!636935 call!636933)))

(declare-fun call!636931 () List!67523)

(declare-fun bm!636927 () Bool)

(declare-fun c!1302656 () Bool)

(assert (=> bm!636927 (= call!636936 (derivationStepZipperDown!2044 (ite c!1302656 (regOne!35165 (h!73847 (exprs!6822 lt!2505496))) (regOne!35164 (h!73847 (exprs!6822 lt!2505496)))) (ite c!1302656 lt!2505487 (Context!12645 call!636931)) (h!73848 s!7408)))))

(declare-fun b!7012399 () Bool)

(declare-fun e!4215204 () Bool)

(assert (=> b!7012399 (= e!4215204 (nullable!7086 (regOne!35164 (h!73847 (exprs!6822 lt!2505496)))))))

(declare-fun b!7012400 () Bool)

(declare-fun e!4215202 () (Set Context!12644))

(declare-fun e!4215200 () (Set Context!12644))

(assert (=> b!7012400 (= e!4215202 e!4215200)))

(declare-fun c!1302657 () Bool)

(assert (=> b!7012400 (= c!1302657 (is-Concat!26171 (h!73847 (exprs!6822 lt!2505496))))))

(declare-fun bm!636928 () Bool)

(declare-fun call!636934 () List!67523)

(assert (=> bm!636928 (= call!636934 call!636931)))

(declare-fun b!7012401 () Bool)

(declare-fun e!4215203 () (Set Context!12644))

(assert (=> b!7012401 (= e!4215203 (as set.empty (Set Context!12644)))))

(declare-fun b!7012402 () Bool)

(declare-fun call!636932 () (Set Context!12644))

(assert (=> b!7012402 (= e!4215200 call!636932)))

(declare-fun d!2185869 () Bool)

(declare-fun c!1302655 () Bool)

(assert (=> d!2185869 (= c!1302655 (and (is-ElementMatch!17326 (h!73847 (exprs!6822 lt!2505496))) (= (c!1302608 (h!73847 (exprs!6822 lt!2505496))) (h!73848 s!7408))))))

(assert (=> d!2185869 (= (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505496)) lt!2505487 (h!73848 s!7408)) e!4215205)))

(declare-fun b!7012403 () Bool)

(assert (=> b!7012403 (= e!4215205 e!4215201)))

(assert (=> b!7012403 (= c!1302656 (is-Union!17326 (h!73847 (exprs!6822 lt!2505496))))))

(declare-fun b!7012404 () Bool)

(assert (=> b!7012404 (= e!4215203 call!636932)))

(declare-fun c!1302658 () Bool)

(declare-fun bm!636929 () Bool)

(declare-fun $colon$colon!2533 (List!67523 Regex!17326) List!67523)

(assert (=> bm!636929 (= call!636931 ($colon$colon!2533 (exprs!6822 lt!2505487) (ite (or c!1302658 c!1302657) (regTwo!35164 (h!73847 (exprs!6822 lt!2505496))) (h!73847 (exprs!6822 lt!2505496)))))))

(declare-fun b!7012405 () Bool)

(declare-fun c!1302659 () Bool)

(assert (=> b!7012405 (= c!1302659 (is-Star!17326 (h!73847 (exprs!6822 lt!2505496))))))

(assert (=> b!7012405 (= e!4215200 e!4215203)))

(declare-fun bm!636930 () Bool)

(assert (=> bm!636930 (= call!636933 (derivationStepZipperDown!2044 (ite c!1302656 (regTwo!35165 (h!73847 (exprs!6822 lt!2505496))) (ite c!1302658 (regTwo!35164 (h!73847 (exprs!6822 lt!2505496))) (ite c!1302657 (regOne!35164 (h!73847 (exprs!6822 lt!2505496))) (reg!17655 (h!73847 (exprs!6822 lt!2505496)))))) (ite (or c!1302656 c!1302658) lt!2505487 (Context!12645 call!636934)) (h!73848 s!7408)))))

(declare-fun b!7012406 () Bool)

(assert (=> b!7012406 (= e!4215202 (set.union call!636936 call!636935))))

(declare-fun bm!636931 () Bool)

(assert (=> bm!636931 (= call!636932 call!636935)))

(declare-fun b!7012407 () Bool)

(assert (=> b!7012407 (= c!1302658 e!4215204)))

(declare-fun res!2861573 () Bool)

(assert (=> b!7012407 (=> (not res!2861573) (not e!4215204))))

(assert (=> b!7012407 (= res!2861573 (is-Concat!26171 (h!73847 (exprs!6822 lt!2505496))))))

(assert (=> b!7012407 (= e!4215201 e!4215202)))

(assert (= (and d!2185869 c!1302655) b!7012397))

(assert (= (and d!2185869 (not c!1302655)) b!7012403))

(assert (= (and b!7012403 c!1302656) b!7012398))

(assert (= (and b!7012403 (not c!1302656)) b!7012407))

(assert (= (and b!7012407 res!2861573) b!7012399))

(assert (= (and b!7012407 c!1302658) b!7012406))

(assert (= (and b!7012407 (not c!1302658)) b!7012400))

(assert (= (and b!7012400 c!1302657) b!7012402))

(assert (= (and b!7012400 (not c!1302657)) b!7012405))

(assert (= (and b!7012405 c!1302659) b!7012404))

(assert (= (and b!7012405 (not c!1302659)) b!7012401))

(assert (= (or b!7012402 b!7012404) bm!636928))

(assert (= (or b!7012402 b!7012404) bm!636931))

(assert (= (or b!7012406 bm!636931) bm!636926))

(assert (= (or b!7012406 bm!636928) bm!636929))

(assert (= (or b!7012398 b!7012406) bm!636927))

(assert (= (or b!7012398 bm!636926) bm!636930))

(declare-fun m!7710984 () Bool)

(assert (=> bm!636927 m!7710984))

(declare-fun m!7710986 () Bool)

(assert (=> bm!636929 m!7710986))

(declare-fun m!7710988 () Bool)

(assert (=> bm!636930 m!7710988))

(declare-fun m!7710990 () Bool)

(assert (=> b!7012399 m!7710990))

(declare-fun m!7710992 () Bool)

(assert (=> b!7012397 m!7710992))

(assert (=> b!7012188 d!2185869))

(declare-fun b!7012408 () Bool)

(declare-fun e!4215206 () (Set Context!12644))

(declare-fun e!4215208 () (Set Context!12644))

(assert (=> b!7012408 (= e!4215206 e!4215208)))

(declare-fun c!1302660 () Bool)

(assert (=> b!7012408 (= c!1302660 (is-Cons!67399 (exprs!6822 lt!2505487)))))

(declare-fun b!7012409 () Bool)

(assert (=> b!7012409 (= e!4215208 (as set.empty (Set Context!12644)))))

(declare-fun b!7012410 () Bool)

(declare-fun call!636937 () (Set Context!12644))

(assert (=> b!7012410 (= e!4215206 (set.union call!636937 (derivationStepZipperUp!1976 (Context!12645 (t!381278 (exprs!6822 lt!2505487))) (h!73848 s!7408))))))

(declare-fun bm!636932 () Bool)

(assert (=> bm!636932 (= call!636937 (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505487)) (Context!12645 (t!381278 (exprs!6822 lt!2505487))) (h!73848 s!7408)))))

(declare-fun d!2185871 () Bool)

(declare-fun c!1302661 () Bool)

(declare-fun e!4215207 () Bool)

(assert (=> d!2185871 (= c!1302661 e!4215207)))

(declare-fun res!2861574 () Bool)

(assert (=> d!2185871 (=> (not res!2861574) (not e!4215207))))

(assert (=> d!2185871 (= res!2861574 (is-Cons!67399 (exprs!6822 lt!2505487)))))

(assert (=> d!2185871 (= (derivationStepZipperUp!1976 lt!2505487 (h!73848 s!7408)) e!4215206)))

(declare-fun b!7012411 () Bool)

(assert (=> b!7012411 (= e!4215208 call!636937)))

(declare-fun b!7012412 () Bool)

(assert (=> b!7012412 (= e!4215207 (nullable!7086 (h!73847 (exprs!6822 lt!2505487))))))

(assert (= (and d!2185871 res!2861574) b!7012412))

(assert (= (and d!2185871 c!1302661) b!7012410))

(assert (= (and d!2185871 (not c!1302661)) b!7012408))

(assert (= (and b!7012408 c!1302660) b!7012411))

(assert (= (and b!7012408 (not c!1302660)) b!7012409))

(assert (= (or b!7012410 b!7012411) bm!636932))

(declare-fun m!7710994 () Bool)

(assert (=> b!7012410 m!7710994))

(declare-fun m!7710996 () Bool)

(assert (=> bm!636932 m!7710996))

(declare-fun m!7710998 () Bool)

(assert (=> b!7012412 m!7710998))

(assert (=> b!7012188 d!2185871))

(declare-fun e!4215209 () Bool)

(declare-fun lt!2505672 () List!67523)

(declare-fun b!7012416 () Bool)

(assert (=> b!7012416 (= e!4215209 (or (not (= (exprs!6822 ct2!306) Nil!67399)) (= lt!2505672 (exprs!6822 lt!2505496))))))

(declare-fun b!7012413 () Bool)

(declare-fun e!4215210 () List!67523)

(assert (=> b!7012413 (= e!4215210 (exprs!6822 ct2!306))))

(declare-fun b!7012415 () Bool)

(declare-fun res!2861575 () Bool)

(assert (=> b!7012415 (=> (not res!2861575) (not e!4215209))))

(assert (=> b!7012415 (= res!2861575 (= (size!40982 lt!2505672) (+ (size!40982 (exprs!6822 lt!2505496)) (size!40982 (exprs!6822 ct2!306)))))))

(declare-fun b!7012414 () Bool)

(assert (=> b!7012414 (= e!4215210 (Cons!67399 (h!73847 (exprs!6822 lt!2505496)) (++!15331 (t!381278 (exprs!6822 lt!2505496)) (exprs!6822 ct2!306))))))

(declare-fun d!2185873 () Bool)

(assert (=> d!2185873 e!4215209))

(declare-fun res!2861576 () Bool)

(assert (=> d!2185873 (=> (not res!2861576) (not e!4215209))))

(assert (=> d!2185873 (= res!2861576 (= (content!13387 lt!2505672) (set.union (content!13387 (exprs!6822 lt!2505496)) (content!13387 (exprs!6822 ct2!306)))))))

(assert (=> d!2185873 (= lt!2505672 e!4215210)))

(declare-fun c!1302662 () Bool)

(assert (=> d!2185873 (= c!1302662 (is-Nil!67399 (exprs!6822 lt!2505496)))))

(assert (=> d!2185873 (= (++!15331 (exprs!6822 lt!2505496) (exprs!6822 ct2!306)) lt!2505672)))

(assert (= (and d!2185873 c!1302662) b!7012413))

(assert (= (and d!2185873 (not c!1302662)) b!7012414))

(assert (= (and d!2185873 res!2861576) b!7012415))

(assert (= (and b!7012415 res!2861575) b!7012416))

(declare-fun m!7711000 () Bool)

(assert (=> b!7012415 m!7711000))

(declare-fun m!7711002 () Bool)

(assert (=> b!7012415 m!7711002))

(assert (=> b!7012415 m!7710968))

(declare-fun m!7711004 () Bool)

(assert (=> b!7012414 m!7711004))

(declare-fun m!7711006 () Bool)

(assert (=> d!2185873 m!7711006))

(declare-fun m!7711008 () Bool)

(assert (=> d!2185873 m!7711008))

(assert (=> d!2185873 m!7710976))

(assert (=> b!7012198 d!2185873))

(assert (=> b!7012198 d!2185845))

(declare-fun d!2185875 () Bool)

(declare-fun e!4215213 () Bool)

(assert (=> d!2185875 e!4215213))

(declare-fun res!2861579 () Bool)

(assert (=> d!2185875 (=> (not res!2861579) (not e!4215213))))

(declare-fun lt!2505675 () Context!12644)

(declare-fun dynLambda!27121 (Int Context!12644) Context!12644)

(assert (=> d!2185875 (= res!2861579 (= lt!2505478 (dynLambda!27121 lambda!408913 lt!2505675)))))

(declare-fun choose!52744 ((Set Context!12644) Int Context!12644) Context!12644)

(assert (=> d!2185875 (= lt!2505675 (choose!52744 z1!570 lambda!408913 lt!2505478))))

(declare-fun map!15619 ((Set Context!12644) Int) (Set Context!12644))

(assert (=> d!2185875 (set.member lt!2505478 (map!15619 z1!570 lambda!408913))))

(assert (=> d!2185875 (= (mapPost2!181 z1!570 lambda!408913 lt!2505478) lt!2505675)))

(declare-fun b!7012420 () Bool)

(assert (=> b!7012420 (= e!4215213 (set.member lt!2505675 z1!570))))

(assert (= (and d!2185875 res!2861579) b!7012420))

(declare-fun b_lambda!264445 () Bool)

(assert (=> (not b_lambda!264445) (not d!2185875)))

(declare-fun m!7711010 () Bool)

(assert (=> d!2185875 m!7711010))

(declare-fun m!7711012 () Bool)

(assert (=> d!2185875 m!7711012))

(declare-fun m!7711014 () Bool)

(assert (=> d!2185875 m!7711014))

(declare-fun m!7711016 () Bool)

(assert (=> d!2185875 m!7711016))

(declare-fun m!7711018 () Bool)

(assert (=> b!7012420 m!7711018))

(assert (=> b!7012198 d!2185875))

(assert (=> b!7012189 d!2185845))

(declare-fun d!2185877 () Bool)

(declare-fun c!1302663 () Bool)

(assert (=> d!2185877 (= c!1302663 (isEmpty!39368 (t!381279 s!7408)))))

(declare-fun e!4215214 () Bool)

(assert (=> d!2185877 (= (matchZipper!2866 lt!2505464 (t!381279 s!7408)) e!4215214)))

(declare-fun b!7012421 () Bool)

(assert (=> b!7012421 (= e!4215214 (nullableZipper!2492 lt!2505464))))

(declare-fun b!7012422 () Bool)

(assert (=> b!7012422 (= e!4215214 (matchZipper!2866 (derivationStepZipper!2806 lt!2505464 (head!14178 (t!381279 s!7408))) (tail!13407 (t!381279 s!7408))))))

(assert (= (and d!2185877 c!1302663) b!7012421))

(assert (= (and d!2185877 (not c!1302663)) b!7012422))

(declare-fun m!7711020 () Bool)

(assert (=> d!2185877 m!7711020))

(declare-fun m!7711022 () Bool)

(assert (=> b!7012421 m!7711022))

(declare-fun m!7711024 () Bool)

(assert (=> b!7012422 m!7711024))

(assert (=> b!7012422 m!7711024))

(declare-fun m!7711026 () Bool)

(assert (=> b!7012422 m!7711026))

(declare-fun m!7711028 () Bool)

(assert (=> b!7012422 m!7711028))

(assert (=> b!7012422 m!7711026))

(assert (=> b!7012422 m!7711028))

(declare-fun m!7711030 () Bool)

(assert (=> b!7012422 m!7711030))

(assert (=> b!7012199 d!2185877))

(assert (=> b!7012199 d!2185867))

(declare-fun b!7012423 () Bool)

(declare-fun e!4215215 () (Set Context!12644))

(declare-fun e!4215217 () (Set Context!12644))

(assert (=> b!7012423 (= e!4215215 e!4215217)))

(declare-fun c!1302664 () Bool)

(assert (=> b!7012423 (= c!1302664 (is-Cons!67399 (exprs!6822 lt!2505468)))))

(declare-fun b!7012424 () Bool)

(assert (=> b!7012424 (= e!4215217 (as set.empty (Set Context!12644)))))

(declare-fun b!7012425 () Bool)

(declare-fun call!636938 () (Set Context!12644))

(assert (=> b!7012425 (= e!4215215 (set.union call!636938 (derivationStepZipperUp!1976 (Context!12645 (t!381278 (exprs!6822 lt!2505468))) (h!73848 s!7408))))))

(declare-fun bm!636933 () Bool)

(assert (=> bm!636933 (= call!636938 (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505468)) (Context!12645 (t!381278 (exprs!6822 lt!2505468))) (h!73848 s!7408)))))

(declare-fun d!2185879 () Bool)

(declare-fun c!1302665 () Bool)

(declare-fun e!4215216 () Bool)

(assert (=> d!2185879 (= c!1302665 e!4215216)))

(declare-fun res!2861580 () Bool)

(assert (=> d!2185879 (=> (not res!2861580) (not e!4215216))))

(assert (=> d!2185879 (= res!2861580 (is-Cons!67399 (exprs!6822 lt!2505468)))))

(assert (=> d!2185879 (= (derivationStepZipperUp!1976 lt!2505468 (h!73848 s!7408)) e!4215215)))

(declare-fun b!7012426 () Bool)

(assert (=> b!7012426 (= e!4215217 call!636938)))

(declare-fun b!7012427 () Bool)

(assert (=> b!7012427 (= e!4215216 (nullable!7086 (h!73847 (exprs!6822 lt!2505468))))))

(assert (= (and d!2185879 res!2861580) b!7012427))

(assert (= (and d!2185879 c!1302665) b!7012425))

(assert (= (and d!2185879 (not c!1302665)) b!7012423))

(assert (= (and b!7012423 c!1302664) b!7012426))

(assert (= (and b!7012423 (not c!1302664)) b!7012424))

(assert (= (or b!7012425 b!7012426) bm!636933))

(declare-fun m!7711032 () Bool)

(assert (=> b!7012425 m!7711032))

(declare-fun m!7711034 () Bool)

(assert (=> bm!636933 m!7711034))

(declare-fun m!7711036 () Bool)

(assert (=> b!7012427 m!7711036))

(assert (=> b!7012180 d!2185879))

(declare-fun bs!1866318 () Bool)

(declare-fun d!2185881 () Bool)

(assert (= bs!1866318 (and d!2185881 b!7012198)))

(declare-fun lambda!408972 () Int)

(assert (=> bs!1866318 (= lambda!408972 lambda!408914)))

(assert (=> d!2185881 (= (inv!86175 setElem!48398) (forall!16243 (exprs!6822 setElem!48398) lambda!408972))))

(declare-fun bs!1866319 () Bool)

(assert (= bs!1866319 d!2185881))

(declare-fun m!7711038 () Bool)

(assert (=> bs!1866319 m!7711038))

(assert (=> setNonEmpty!48398 d!2185881))

(assert (=> b!7012181 d!2185867))

(declare-fun b!7012428 () Bool)

(declare-fun e!4215219 () List!67524)

(assert (=> b!7012428 (= e!4215219 s!7408)))

(declare-fun b!7012429 () Bool)

(assert (=> b!7012429 (= e!4215219 (Cons!67400 (h!73848 Nil!67400) (++!15332 (t!381279 Nil!67400) s!7408)))))

(declare-fun b!7012431 () Bool)

(declare-fun e!4215218 () Bool)

(declare-fun lt!2505676 () List!67524)

(assert (=> b!7012431 (= e!4215218 (or (not (= s!7408 Nil!67400)) (= lt!2505676 Nil!67400)))))

(declare-fun b!7012430 () Bool)

(declare-fun res!2861581 () Bool)

(assert (=> b!7012430 (=> (not res!2861581) (not e!4215218))))

(assert (=> b!7012430 (= res!2861581 (= (size!40981 lt!2505676) (+ (size!40981 Nil!67400) (size!40981 s!7408))))))

(declare-fun d!2185883 () Bool)

(assert (=> d!2185883 e!4215218))

(declare-fun res!2861582 () Bool)

(assert (=> d!2185883 (=> (not res!2861582) (not e!4215218))))

(assert (=> d!2185883 (= res!2861582 (= (content!13385 lt!2505676) (set.union (content!13385 Nil!67400) (content!13385 s!7408))))))

(assert (=> d!2185883 (= lt!2505676 e!4215219)))

(declare-fun c!1302666 () Bool)

(assert (=> d!2185883 (= c!1302666 (is-Nil!67400 Nil!67400))))

(assert (=> d!2185883 (= (++!15332 Nil!67400 s!7408) lt!2505676)))

(assert (= (and d!2185883 c!1302666) b!7012428))

(assert (= (and d!2185883 (not c!1302666)) b!7012429))

(assert (= (and d!2185883 res!2861582) b!7012430))

(assert (= (and b!7012430 res!2861581) b!7012431))

(declare-fun m!7711040 () Bool)

(assert (=> b!7012429 m!7711040))

(declare-fun m!7711042 () Bool)

(assert (=> b!7012430 m!7711042))

(declare-fun m!7711044 () Bool)

(assert (=> b!7012430 m!7711044))

(declare-fun m!7711046 () Bool)

(assert (=> b!7012430 m!7711046))

(declare-fun m!7711048 () Bool)

(assert (=> d!2185883 m!7711048))

(declare-fun m!7711050 () Bool)

(assert (=> d!2185883 m!7711050))

(declare-fun m!7711052 () Bool)

(assert (=> d!2185883 m!7711052))

(assert (=> b!7012190 d!2185883))

(declare-fun d!2185885 () Bool)

(declare-fun isEmpty!39369 (Option!16811) Bool)

(assert (=> d!2185885 (= (isDefined!13512 (findConcatSeparationZippers!327 lt!2505459 lt!2505481 Nil!67400 s!7408 s!7408)) (not (isEmpty!39369 (findConcatSeparationZippers!327 lt!2505459 lt!2505481 Nil!67400 s!7408 s!7408))))))

(declare-fun bs!1866320 () Bool)

(assert (= bs!1866320 d!2185885))

(assert (=> bs!1866320 m!7710614))

(declare-fun m!7711054 () Bool)

(assert (=> bs!1866320 m!7711054))

(assert (=> b!7012190 d!2185885))

(declare-fun b!7012450 () Bool)

(declare-fun e!4215231 () Bool)

(assert (=> b!7012450 (= e!4215231 (matchZipper!2866 lt!2505481 s!7408))))

(declare-fun b!7012451 () Bool)

(declare-fun e!4215230 () Option!16811)

(assert (=> b!7012451 (= e!4215230 None!16810)))

(declare-fun b!7012452 () Bool)

(declare-fun res!2861593 () Bool)

(declare-fun e!4215233 () Bool)

(assert (=> b!7012452 (=> (not res!2861593) (not e!4215233))))

(declare-fun lt!2505683 () Option!16811)

(assert (=> b!7012452 (= res!2861593 (matchZipper!2866 lt!2505459 (_1!37282 (get!23636 lt!2505683))))))

(declare-fun b!7012453 () Bool)

(declare-fun lt!2505684 () Unit!161330)

(declare-fun lt!2505685 () Unit!161330)

(assert (=> b!7012453 (= lt!2505684 lt!2505685)))

(assert (=> b!7012453 (= (++!15332 (++!15332 Nil!67400 (Cons!67400 (h!73848 s!7408) Nil!67400)) (t!381279 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2898 (List!67524 C!34922 List!67524 List!67524) Unit!161330)

(assert (=> b!7012453 (= lt!2505685 (lemmaMoveElementToOtherListKeepsConcatEq!2898 Nil!67400 (h!73848 s!7408) (t!381279 s!7408) s!7408))))

(assert (=> b!7012453 (= e!4215230 (findConcatSeparationZippers!327 lt!2505459 lt!2505481 (++!15332 Nil!67400 (Cons!67400 (h!73848 s!7408) Nil!67400)) (t!381279 s!7408) s!7408))))

(declare-fun b!7012454 () Bool)

(declare-fun e!4215232 () Option!16811)

(assert (=> b!7012454 (= e!4215232 e!4215230)))

(declare-fun c!1302672 () Bool)

(assert (=> b!7012454 (= c!1302672 (is-Nil!67400 s!7408))))

(declare-fun b!7012455 () Bool)

(declare-fun res!2861595 () Bool)

(assert (=> b!7012455 (=> (not res!2861595) (not e!4215233))))

(assert (=> b!7012455 (= res!2861595 (matchZipper!2866 lt!2505481 (_2!37282 (get!23636 lt!2505683))))))

(declare-fun b!7012456 () Bool)

(assert (=> b!7012456 (= e!4215233 (= (++!15332 (_1!37282 (get!23636 lt!2505683)) (_2!37282 (get!23636 lt!2505683))) s!7408))))

(declare-fun b!7012457 () Bool)

(assert (=> b!7012457 (= e!4215232 (Some!16810 (tuple2!67959 Nil!67400 s!7408)))))

(declare-fun b!7012458 () Bool)

(declare-fun e!4215234 () Bool)

(assert (=> b!7012458 (= e!4215234 (not (isDefined!13512 lt!2505683)))))

(declare-fun d!2185887 () Bool)

(assert (=> d!2185887 e!4215234))

(declare-fun res!2861597 () Bool)

(assert (=> d!2185887 (=> res!2861597 e!4215234)))

(assert (=> d!2185887 (= res!2861597 e!4215233)))

(declare-fun res!2861596 () Bool)

(assert (=> d!2185887 (=> (not res!2861596) (not e!4215233))))

(assert (=> d!2185887 (= res!2861596 (isDefined!13512 lt!2505683))))

(assert (=> d!2185887 (= lt!2505683 e!4215232)))

(declare-fun c!1302671 () Bool)

(assert (=> d!2185887 (= c!1302671 e!4215231)))

(declare-fun res!2861594 () Bool)

(assert (=> d!2185887 (=> (not res!2861594) (not e!4215231))))

(assert (=> d!2185887 (= res!2861594 (matchZipper!2866 lt!2505459 Nil!67400))))

(assert (=> d!2185887 (= (++!15332 Nil!67400 s!7408) s!7408)))

(assert (=> d!2185887 (= (findConcatSeparationZippers!327 lt!2505459 lt!2505481 Nil!67400 s!7408 s!7408) lt!2505683)))

(assert (= (and d!2185887 res!2861594) b!7012450))

(assert (= (and d!2185887 c!1302671) b!7012457))

(assert (= (and d!2185887 (not c!1302671)) b!7012454))

(assert (= (and b!7012454 c!1302672) b!7012451))

(assert (= (and b!7012454 (not c!1302672)) b!7012453))

(assert (= (and d!2185887 res!2861596) b!7012452))

(assert (= (and b!7012452 res!2861593) b!7012455))

(assert (= (and b!7012455 res!2861595) b!7012456))

(assert (= (and d!2185887 (not res!2861597)) b!7012458))

(declare-fun m!7711056 () Bool)

(assert (=> b!7012458 m!7711056))

(declare-fun m!7711058 () Bool)

(assert (=> b!7012455 m!7711058))

(declare-fun m!7711060 () Bool)

(assert (=> b!7012455 m!7711060))

(assert (=> b!7012456 m!7711058))

(declare-fun m!7711062 () Bool)

(assert (=> b!7012456 m!7711062))

(assert (=> d!2185887 m!7711056))

(declare-fun m!7711064 () Bool)

(assert (=> d!2185887 m!7711064))

(assert (=> d!2185887 m!7710612))

(declare-fun m!7711066 () Bool)

(assert (=> b!7012453 m!7711066))

(assert (=> b!7012453 m!7711066))

(declare-fun m!7711068 () Bool)

(assert (=> b!7012453 m!7711068))

(declare-fun m!7711070 () Bool)

(assert (=> b!7012453 m!7711070))

(assert (=> b!7012453 m!7711066))

(declare-fun m!7711072 () Bool)

(assert (=> b!7012453 m!7711072))

(declare-fun m!7711074 () Bool)

(assert (=> b!7012450 m!7711074))

(assert (=> b!7012452 m!7711058))

(declare-fun m!7711076 () Bool)

(assert (=> b!7012452 m!7711076))

(assert (=> b!7012190 d!2185887))

(declare-fun d!2185889 () Bool)

(assert (=> d!2185889 (isDefined!13512 (findConcatSeparationZippers!327 lt!2505459 lt!2505481 Nil!67400 s!7408 s!7408))))

(declare-fun lt!2505688 () Unit!161330)

(declare-fun choose!52745 ((Set Context!12644) (Set Context!12644) List!67524 List!67524 List!67524 List!67524 List!67524) Unit!161330)

(assert (=> d!2185889 (= lt!2505688 (choose!52745 lt!2505459 lt!2505481 lt!2505474 (_2!37282 lt!2505463) s!7408 Nil!67400 s!7408))))

(assert (=> d!2185889 (matchZipper!2866 lt!2505459 lt!2505474)))

(assert (=> d!2185889 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!13 lt!2505459 lt!2505481 lt!2505474 (_2!37282 lt!2505463) s!7408 Nil!67400 s!7408) lt!2505688)))

(declare-fun bs!1866321 () Bool)

(assert (= bs!1866321 d!2185889))

(assert (=> bs!1866321 m!7710614))

(assert (=> bs!1866321 m!7710614))

(assert (=> bs!1866321 m!7710616))

(declare-fun m!7711078 () Bool)

(assert (=> bs!1866321 m!7711078))

(assert (=> bs!1866321 m!7710712))

(assert (=> b!7012190 d!2185889))

(declare-fun d!2185891 () Bool)

(declare-fun c!1302673 () Bool)

(assert (=> d!2185891 (= c!1302673 (isEmpty!39368 (t!381279 s!7408)))))

(declare-fun e!4215235 () Bool)

(assert (=> d!2185891 (= (matchZipper!2866 lt!2505449 (t!381279 s!7408)) e!4215235)))

(declare-fun b!7012459 () Bool)

(assert (=> b!7012459 (= e!4215235 (nullableZipper!2492 lt!2505449))))

(declare-fun b!7012460 () Bool)

(assert (=> b!7012460 (= e!4215235 (matchZipper!2866 (derivationStepZipper!2806 lt!2505449 (head!14178 (t!381279 s!7408))) (tail!13407 (t!381279 s!7408))))))

(assert (= (and d!2185891 c!1302673) b!7012459))

(assert (= (and d!2185891 (not c!1302673)) b!7012460))

(assert (=> d!2185891 m!7711020))

(declare-fun m!7711080 () Bool)

(assert (=> b!7012459 m!7711080))

(assert (=> b!7012460 m!7711024))

(assert (=> b!7012460 m!7711024))

(declare-fun m!7711082 () Bool)

(assert (=> b!7012460 m!7711082))

(assert (=> b!7012460 m!7711028))

(assert (=> b!7012460 m!7711082))

(assert (=> b!7012460 m!7711028))

(declare-fun m!7711084 () Bool)

(assert (=> b!7012460 m!7711084))

(assert (=> b!7012201 d!2185891))

(assert (=> b!7012201 d!2185867))

(declare-fun d!2185893 () Bool)

(declare-fun c!1302674 () Bool)

(assert (=> d!2185893 (= c!1302674 (isEmpty!39368 (t!381279 s!7408)))))

(declare-fun e!4215236 () Bool)

(assert (=> d!2185893 (= (matchZipper!2866 lt!2505465 (t!381279 s!7408)) e!4215236)))

(declare-fun b!7012461 () Bool)

(assert (=> b!7012461 (= e!4215236 (nullableZipper!2492 lt!2505465))))

(declare-fun b!7012462 () Bool)

(assert (=> b!7012462 (= e!4215236 (matchZipper!2866 (derivationStepZipper!2806 lt!2505465 (head!14178 (t!381279 s!7408))) (tail!13407 (t!381279 s!7408))))))

(assert (= (and d!2185893 c!1302674) b!7012461))

(assert (= (and d!2185893 (not c!1302674)) b!7012462))

(assert (=> d!2185893 m!7711020))

(declare-fun m!7711086 () Bool)

(assert (=> b!7012461 m!7711086))

(assert (=> b!7012462 m!7711024))

(assert (=> b!7012462 m!7711024))

(declare-fun m!7711088 () Bool)

(assert (=> b!7012462 m!7711088))

(assert (=> b!7012462 m!7711028))

(assert (=> b!7012462 m!7711088))

(assert (=> b!7012462 m!7711028))

(declare-fun m!7711090 () Bool)

(assert (=> b!7012462 m!7711090))

(assert (=> b!7012201 d!2185893))

(declare-fun d!2185895 () Bool)

(declare-fun c!1302675 () Bool)

(assert (=> d!2185895 (= c!1302675 (isEmpty!39368 (t!381279 s!7408)))))

(declare-fun e!4215237 () Bool)

(assert (=> d!2185895 (= (matchZipper!2866 lt!2505462 (t!381279 s!7408)) e!4215237)))

(declare-fun b!7012463 () Bool)

(assert (=> b!7012463 (= e!4215237 (nullableZipper!2492 lt!2505462))))

(declare-fun b!7012464 () Bool)

(assert (=> b!7012464 (= e!4215237 (matchZipper!2866 (derivationStepZipper!2806 lt!2505462 (head!14178 (t!381279 s!7408))) (tail!13407 (t!381279 s!7408))))))

(assert (= (and d!2185895 c!1302675) b!7012463))

(assert (= (and d!2185895 (not c!1302675)) b!7012464))

(assert (=> d!2185895 m!7711020))

(declare-fun m!7711092 () Bool)

(assert (=> b!7012463 m!7711092))

(assert (=> b!7012464 m!7711024))

(assert (=> b!7012464 m!7711024))

(declare-fun m!7711094 () Bool)

(assert (=> b!7012464 m!7711094))

(assert (=> b!7012464 m!7711028))

(assert (=> b!7012464 m!7711094))

(assert (=> b!7012464 m!7711028))

(declare-fun m!7711096 () Bool)

(assert (=> b!7012464 m!7711096))

(assert (=> b!7012201 d!2185895))

(declare-fun e!4215238 () Bool)

(declare-fun d!2185897 () Bool)

(assert (=> d!2185897 (= (matchZipper!2866 (set.union lt!2505465 lt!2505464) (t!381279 s!7408)) e!4215238)))

(declare-fun res!2861598 () Bool)

(assert (=> d!2185897 (=> res!2861598 e!4215238)))

(assert (=> d!2185897 (= res!2861598 (matchZipper!2866 lt!2505465 (t!381279 s!7408)))))

(declare-fun lt!2505689 () Unit!161330)

(assert (=> d!2185897 (= lt!2505689 (choose!52741 lt!2505465 lt!2505464 (t!381279 s!7408)))))

(assert (=> d!2185897 (= (lemmaZipperConcatMatchesSameAsBothZippers!1499 lt!2505465 lt!2505464 (t!381279 s!7408)) lt!2505689)))

(declare-fun b!7012465 () Bool)

(assert (=> b!7012465 (= e!4215238 (matchZipper!2866 lt!2505464 (t!381279 s!7408)))))

(assert (= (and d!2185897 (not res!2861598)) b!7012465))

(declare-fun m!7711098 () Bool)

(assert (=> d!2185897 m!7711098))

(assert (=> d!2185897 m!7710670))

(declare-fun m!7711100 () Bool)

(assert (=> d!2185897 m!7711100))

(assert (=> b!7012465 m!7710606))

(assert (=> b!7012201 d!2185897))

(assert (=> b!7012182 d!2185867))

(declare-fun d!2185899 () Bool)

(assert (=> d!2185899 (isDefined!13512 (findConcatSeparationZippers!327 lt!2505457 (set.insert ct2!306 (as set.empty (Set Context!12644))) Nil!67400 (t!381279 s!7408) (t!381279 s!7408)))))

(declare-fun lt!2505692 () Unit!161330)

(declare-fun choose!52746 ((Set Context!12644) Context!12644 List!67524) Unit!161330)

(assert (=> d!2185899 (= lt!2505692 (choose!52746 lt!2505457 ct2!306 (t!381279 s!7408)))))

(assert (=> d!2185899 (matchZipper!2866 (appendTo!447 lt!2505457 ct2!306) (t!381279 s!7408))))

(assert (=> d!2185899 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!327 lt!2505457 ct2!306 (t!381279 s!7408)) lt!2505692)))

(declare-fun bs!1866322 () Bool)

(assert (= bs!1866322 d!2185899))

(assert (=> bs!1866322 m!7710698))

(declare-fun m!7711102 () Bool)

(assert (=> bs!1866322 m!7711102))

(assert (=> bs!1866322 m!7710698))

(assert (=> bs!1866322 m!7711102))

(declare-fun m!7711104 () Bool)

(assert (=> bs!1866322 m!7711104))

(assert (=> bs!1866322 m!7710694))

(declare-fun m!7711106 () Bool)

(assert (=> bs!1866322 m!7711106))

(assert (=> bs!1866322 m!7710694))

(declare-fun m!7711108 () Bool)

(assert (=> bs!1866322 m!7711108))

(assert (=> b!7012182 d!2185899))

(declare-fun bs!1866323 () Bool)

(declare-fun d!2185901 () Bool)

(assert (= bs!1866323 (and d!2185901 b!7012198)))

(declare-fun lambda!408977 () Int)

(assert (=> bs!1866323 (= lambda!408977 lambda!408913)))

(assert (=> d!2185901 true))

(assert (=> d!2185901 (= (appendTo!447 lt!2505457 ct2!306) (map!15619 lt!2505457 lambda!408977))))

(declare-fun bs!1866324 () Bool)

(assert (= bs!1866324 d!2185901))

(declare-fun m!7711110 () Bool)

(assert (=> bs!1866324 m!7711110))

(assert (=> b!7012182 d!2185901))

(declare-fun b!7012466 () Bool)

(declare-fun e!4215244 () (Set Context!12644))

(assert (=> b!7012466 (= e!4215244 (set.insert lt!2505468 (as set.empty (Set Context!12644))))))

(declare-fun b!7012467 () Bool)

(declare-fun e!4215240 () (Set Context!12644))

(declare-fun call!636944 () (Set Context!12644))

(declare-fun call!636941 () (Set Context!12644))

(assert (=> b!7012467 (= e!4215240 (set.union call!636944 call!636941))))

(declare-fun bm!636934 () Bool)

(declare-fun call!636943 () (Set Context!12644))

(assert (=> bm!636934 (= call!636943 call!636941)))

(declare-fun bm!636935 () Bool)

(declare-fun c!1302678 () Bool)

(declare-fun call!636939 () List!67523)

(assert (=> bm!636935 (= call!636944 (derivationStepZipperDown!2044 (ite c!1302678 (regOne!35165 (h!73847 (exprs!6822 lt!2505496))) (regOne!35164 (h!73847 (exprs!6822 lt!2505496)))) (ite c!1302678 lt!2505468 (Context!12645 call!636939)) (h!73848 s!7408)))))

(declare-fun b!7012468 () Bool)

(declare-fun e!4215243 () Bool)

(assert (=> b!7012468 (= e!4215243 (nullable!7086 (regOne!35164 (h!73847 (exprs!6822 lt!2505496)))))))

(declare-fun b!7012469 () Bool)

(declare-fun e!4215241 () (Set Context!12644))

(declare-fun e!4215239 () (Set Context!12644))

(assert (=> b!7012469 (= e!4215241 e!4215239)))

(declare-fun c!1302679 () Bool)

(assert (=> b!7012469 (= c!1302679 (is-Concat!26171 (h!73847 (exprs!6822 lt!2505496))))))

(declare-fun bm!636936 () Bool)

(declare-fun call!636942 () List!67523)

(assert (=> bm!636936 (= call!636942 call!636939)))

(declare-fun b!7012470 () Bool)

(declare-fun e!4215242 () (Set Context!12644))

(assert (=> b!7012470 (= e!4215242 (as set.empty (Set Context!12644)))))

(declare-fun b!7012471 () Bool)

(declare-fun call!636940 () (Set Context!12644))

(assert (=> b!7012471 (= e!4215239 call!636940)))

(declare-fun d!2185903 () Bool)

(declare-fun c!1302677 () Bool)

(assert (=> d!2185903 (= c!1302677 (and (is-ElementMatch!17326 (h!73847 (exprs!6822 lt!2505496))) (= (c!1302608 (h!73847 (exprs!6822 lt!2505496))) (h!73848 s!7408))))))

(assert (=> d!2185903 (= (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505496)) lt!2505468 (h!73848 s!7408)) e!4215244)))

(declare-fun b!7012472 () Bool)

(assert (=> b!7012472 (= e!4215244 e!4215240)))

(assert (=> b!7012472 (= c!1302678 (is-Union!17326 (h!73847 (exprs!6822 lt!2505496))))))

(declare-fun b!7012473 () Bool)

(assert (=> b!7012473 (= e!4215242 call!636940)))

(declare-fun bm!636937 () Bool)

(declare-fun c!1302680 () Bool)

(assert (=> bm!636937 (= call!636939 ($colon$colon!2533 (exprs!6822 lt!2505468) (ite (or c!1302680 c!1302679) (regTwo!35164 (h!73847 (exprs!6822 lt!2505496))) (h!73847 (exprs!6822 lt!2505496)))))))

(declare-fun b!7012474 () Bool)

(declare-fun c!1302681 () Bool)

(assert (=> b!7012474 (= c!1302681 (is-Star!17326 (h!73847 (exprs!6822 lt!2505496))))))

(assert (=> b!7012474 (= e!4215239 e!4215242)))

(declare-fun bm!636938 () Bool)

(assert (=> bm!636938 (= call!636941 (derivationStepZipperDown!2044 (ite c!1302678 (regTwo!35165 (h!73847 (exprs!6822 lt!2505496))) (ite c!1302680 (regTwo!35164 (h!73847 (exprs!6822 lt!2505496))) (ite c!1302679 (regOne!35164 (h!73847 (exprs!6822 lt!2505496))) (reg!17655 (h!73847 (exprs!6822 lt!2505496)))))) (ite (or c!1302678 c!1302680) lt!2505468 (Context!12645 call!636942)) (h!73848 s!7408)))))

(declare-fun b!7012475 () Bool)

(assert (=> b!7012475 (= e!4215241 (set.union call!636944 call!636943))))

(declare-fun bm!636939 () Bool)

(assert (=> bm!636939 (= call!636940 call!636943)))

(declare-fun b!7012476 () Bool)

(assert (=> b!7012476 (= c!1302680 e!4215243)))

(declare-fun res!2861599 () Bool)

(assert (=> b!7012476 (=> (not res!2861599) (not e!4215243))))

(assert (=> b!7012476 (= res!2861599 (is-Concat!26171 (h!73847 (exprs!6822 lt!2505496))))))

(assert (=> b!7012476 (= e!4215240 e!4215241)))

(assert (= (and d!2185903 c!1302677) b!7012466))

(assert (= (and d!2185903 (not c!1302677)) b!7012472))

(assert (= (and b!7012472 c!1302678) b!7012467))

(assert (= (and b!7012472 (not c!1302678)) b!7012476))

(assert (= (and b!7012476 res!2861599) b!7012468))

(assert (= (and b!7012476 c!1302680) b!7012475))

(assert (= (and b!7012476 (not c!1302680)) b!7012469))

(assert (= (and b!7012469 c!1302679) b!7012471))

(assert (= (and b!7012469 (not c!1302679)) b!7012474))

(assert (= (and b!7012474 c!1302681) b!7012473))

(assert (= (and b!7012474 (not c!1302681)) b!7012470))

(assert (= (or b!7012471 b!7012473) bm!636936))

(assert (= (or b!7012471 b!7012473) bm!636939))

(assert (= (or b!7012475 bm!636939) bm!636934))

(assert (= (or b!7012475 bm!636936) bm!636937))

(assert (= (or b!7012467 b!7012475) bm!636935))

(assert (= (or b!7012467 bm!636934) bm!636938))

(declare-fun m!7711112 () Bool)

(assert (=> bm!636935 m!7711112))

(declare-fun m!7711114 () Bool)

(assert (=> bm!636937 m!7711114))

(declare-fun m!7711116 () Bool)

(assert (=> bm!636938 m!7711116))

(assert (=> b!7012468 m!7710990))

(declare-fun m!7711118 () Bool)

(assert (=> b!7012466 m!7711118))

(assert (=> b!7012182 d!2185903))

(declare-fun d!2185905 () Bool)

(assert (=> d!2185905 (= (isDefined!13512 lt!2505475) (not (isEmpty!39369 lt!2505475)))))

(declare-fun bs!1866325 () Bool)

(assert (= bs!1866325 d!2185905))

(declare-fun m!7711120 () Bool)

(assert (=> bs!1866325 m!7711120))

(assert (=> b!7012182 d!2185905))

(declare-fun b!7012477 () Bool)

(declare-fun e!4215246 () Bool)

(assert (=> b!7012477 (= e!4215246 (matchZipper!2866 lt!2505481 (t!381279 s!7408)))))

(declare-fun b!7012478 () Bool)

(declare-fun e!4215245 () Option!16811)

(assert (=> b!7012478 (= e!4215245 None!16810)))

(declare-fun b!7012479 () Bool)

(declare-fun res!2861600 () Bool)

(declare-fun e!4215248 () Bool)

(assert (=> b!7012479 (=> (not res!2861600) (not e!4215248))))

(declare-fun lt!2505695 () Option!16811)

(assert (=> b!7012479 (= res!2861600 (matchZipper!2866 lt!2505457 (_1!37282 (get!23636 lt!2505695))))))

(declare-fun b!7012480 () Bool)

(declare-fun lt!2505696 () Unit!161330)

(declare-fun lt!2505697 () Unit!161330)

(assert (=> b!7012480 (= lt!2505696 lt!2505697)))

(assert (=> b!7012480 (= (++!15332 (++!15332 Nil!67400 (Cons!67400 (h!73848 (t!381279 s!7408)) Nil!67400)) (t!381279 (t!381279 s!7408))) (t!381279 s!7408))))

(assert (=> b!7012480 (= lt!2505697 (lemmaMoveElementToOtherListKeepsConcatEq!2898 Nil!67400 (h!73848 (t!381279 s!7408)) (t!381279 (t!381279 s!7408)) (t!381279 s!7408)))))

(assert (=> b!7012480 (= e!4215245 (findConcatSeparationZippers!327 lt!2505457 lt!2505481 (++!15332 Nil!67400 (Cons!67400 (h!73848 (t!381279 s!7408)) Nil!67400)) (t!381279 (t!381279 s!7408)) (t!381279 s!7408)))))

(declare-fun b!7012481 () Bool)

(declare-fun e!4215247 () Option!16811)

(assert (=> b!7012481 (= e!4215247 e!4215245)))

(declare-fun c!1302683 () Bool)

(assert (=> b!7012481 (= c!1302683 (is-Nil!67400 (t!381279 s!7408)))))

(declare-fun b!7012482 () Bool)

(declare-fun res!2861602 () Bool)

(assert (=> b!7012482 (=> (not res!2861602) (not e!4215248))))

(assert (=> b!7012482 (= res!2861602 (matchZipper!2866 lt!2505481 (_2!37282 (get!23636 lt!2505695))))))

(declare-fun b!7012483 () Bool)

(assert (=> b!7012483 (= e!4215248 (= (++!15332 (_1!37282 (get!23636 lt!2505695)) (_2!37282 (get!23636 lt!2505695))) (t!381279 s!7408)))))

(declare-fun b!7012484 () Bool)

(assert (=> b!7012484 (= e!4215247 (Some!16810 (tuple2!67959 Nil!67400 (t!381279 s!7408))))))

(declare-fun b!7012485 () Bool)

(declare-fun e!4215249 () Bool)

(assert (=> b!7012485 (= e!4215249 (not (isDefined!13512 lt!2505695)))))

(declare-fun d!2185907 () Bool)

(assert (=> d!2185907 e!4215249))

(declare-fun res!2861604 () Bool)

(assert (=> d!2185907 (=> res!2861604 e!4215249)))

(assert (=> d!2185907 (= res!2861604 e!4215248)))

(declare-fun res!2861603 () Bool)

(assert (=> d!2185907 (=> (not res!2861603) (not e!4215248))))

(assert (=> d!2185907 (= res!2861603 (isDefined!13512 lt!2505695))))

(assert (=> d!2185907 (= lt!2505695 e!4215247)))

(declare-fun c!1302682 () Bool)

(assert (=> d!2185907 (= c!1302682 e!4215246)))

(declare-fun res!2861601 () Bool)

(assert (=> d!2185907 (=> (not res!2861601) (not e!4215246))))

(assert (=> d!2185907 (= res!2861601 (matchZipper!2866 lt!2505457 Nil!67400))))

(assert (=> d!2185907 (= (++!15332 Nil!67400 (t!381279 s!7408)) (t!381279 s!7408))))

(assert (=> d!2185907 (= (findConcatSeparationZippers!327 lt!2505457 lt!2505481 Nil!67400 (t!381279 s!7408) (t!381279 s!7408)) lt!2505695)))

(assert (= (and d!2185907 res!2861601) b!7012477))

(assert (= (and d!2185907 c!1302682) b!7012484))

(assert (= (and d!2185907 (not c!1302682)) b!7012481))

(assert (= (and b!7012481 c!1302683) b!7012478))

(assert (= (and b!7012481 (not c!1302683)) b!7012480))

(assert (= (and d!2185907 res!2861603) b!7012479))

(assert (= (and b!7012479 res!2861600) b!7012482))

(assert (= (and b!7012482 res!2861602) b!7012483))

(assert (= (and d!2185907 (not res!2861604)) b!7012485))

(declare-fun m!7711122 () Bool)

(assert (=> b!7012485 m!7711122))

(declare-fun m!7711124 () Bool)

(assert (=> b!7012482 m!7711124))

(declare-fun m!7711126 () Bool)

(assert (=> b!7012482 m!7711126))

(assert (=> b!7012483 m!7711124))

(declare-fun m!7711128 () Bool)

(assert (=> b!7012483 m!7711128))

(assert (=> d!2185907 m!7711122))

(declare-fun m!7711130 () Bool)

(assert (=> d!2185907 m!7711130))

(declare-fun m!7711132 () Bool)

(assert (=> d!2185907 m!7711132))

(declare-fun m!7711134 () Bool)

(assert (=> b!7012480 m!7711134))

(assert (=> b!7012480 m!7711134))

(declare-fun m!7711136 () Bool)

(assert (=> b!7012480 m!7711136))

(declare-fun m!7711138 () Bool)

(assert (=> b!7012480 m!7711138))

(assert (=> b!7012480 m!7711134))

(declare-fun m!7711140 () Bool)

(assert (=> b!7012480 m!7711140))

(declare-fun m!7711142 () Bool)

(assert (=> b!7012477 m!7711142))

(assert (=> b!7012479 m!7711124))

(declare-fun m!7711144 () Bool)

(assert (=> b!7012479 m!7711144))

(assert (=> b!7012182 d!2185907))

(declare-fun d!2185909 () Bool)

(declare-fun c!1302684 () Bool)

(assert (=> d!2185909 (= c!1302684 (isEmpty!39368 (_1!37282 lt!2505463)))))

(declare-fun e!4215250 () Bool)

(assert (=> d!2185909 (= (matchZipper!2866 lt!2505457 (_1!37282 lt!2505463)) e!4215250)))

(declare-fun b!7012486 () Bool)

(assert (=> b!7012486 (= e!4215250 (nullableZipper!2492 lt!2505457))))

(declare-fun b!7012487 () Bool)

(assert (=> b!7012487 (= e!4215250 (matchZipper!2866 (derivationStepZipper!2806 lt!2505457 (head!14178 (_1!37282 lt!2505463))) (tail!13407 (_1!37282 lt!2505463))))))

(assert (= (and d!2185909 c!1302684) b!7012486))

(assert (= (and d!2185909 (not c!1302684)) b!7012487))

(assert (=> d!2185909 m!7710850))

(declare-fun m!7711146 () Bool)

(assert (=> b!7012486 m!7711146))

(assert (=> b!7012487 m!7710854))

(assert (=> b!7012487 m!7710854))

(declare-fun m!7711148 () Bool)

(assert (=> b!7012487 m!7711148))

(assert (=> b!7012487 m!7710858))

(assert (=> b!7012487 m!7711148))

(assert (=> b!7012487 m!7710858))

(declare-fun m!7711150 () Bool)

(assert (=> b!7012487 m!7711150))

(assert (=> b!7012182 d!2185909))

(declare-fun bs!1866326 () Bool)

(declare-fun d!2185911 () Bool)

(assert (= bs!1866326 (and d!2185911 b!7012198)))

(declare-fun lambda!408980 () Int)

(assert (=> bs!1866326 (= lambda!408980 lambda!408914)))

(declare-fun bs!1866327 () Bool)

(assert (= bs!1866327 (and d!2185911 d!2185881)))

(assert (=> bs!1866327 (= lambda!408980 lambda!408972)))

(assert (=> d!2185911 (= (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505496)) (Context!12645 (++!15331 (exprs!6822 lt!2505468) (exprs!6822 ct2!306))) (h!73848 s!7408)) (appendTo!447 (derivationStepZipperDown!2044 (h!73847 (exprs!6822 lt!2505496)) lt!2505468 (h!73848 s!7408)) ct2!306))))

(declare-fun lt!2505703 () Unit!161330)

(assert (=> d!2185911 (= lt!2505703 (lemmaConcatPreservesForall!662 (exprs!6822 lt!2505468) (exprs!6822 ct2!306) lambda!408980))))

(declare-fun lt!2505702 () Unit!161330)

(declare-fun choose!52747 (Context!12644 Regex!17326 C!34922 Context!12644) Unit!161330)

(assert (=> d!2185911 (= lt!2505702 (choose!52747 lt!2505468 (h!73847 (exprs!6822 lt!2505496)) (h!73848 s!7408) ct2!306))))

(declare-fun validRegex!8894 (Regex!17326) Bool)

(assert (=> d!2185911 (validRegex!8894 (h!73847 (exprs!6822 lt!2505496)))))

(assert (=> d!2185911 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!25 lt!2505468 (h!73847 (exprs!6822 lt!2505496)) (h!73848 s!7408) ct2!306) lt!2505702)))

(declare-fun bs!1866328 () Bool)

(assert (= bs!1866328 d!2185911))

(declare-fun m!7711152 () Bool)

(assert (=> bs!1866328 m!7711152))

(declare-fun m!7711154 () Bool)

(assert (=> bs!1866328 m!7711154))

(assert (=> bs!1866328 m!7710700))

(assert (=> bs!1866328 m!7710700))

(declare-fun m!7711156 () Bool)

(assert (=> bs!1866328 m!7711156))

(declare-fun m!7711158 () Bool)

(assert (=> bs!1866328 m!7711158))

(declare-fun m!7711160 () Bool)

(assert (=> bs!1866328 m!7711160))

(declare-fun m!7711162 () Bool)

(assert (=> bs!1866328 m!7711162))

(assert (=> b!7012182 d!2185911))

(declare-fun d!2185913 () Bool)

(assert (=> d!2185913 (= (get!23636 lt!2505475) (v!53088 lt!2505475))))

(assert (=> b!7012182 d!2185913))

(assert (=> b!7012191 d!2185877))

(assert (=> b!7012191 d!2185867))

(declare-fun d!2185915 () Bool)

(declare-fun c!1302686 () Bool)

(assert (=> d!2185915 (= c!1302686 (isEmpty!39368 s!7408))))

(declare-fun e!4215251 () Bool)

(assert (=> d!2185915 (= (matchZipper!2866 lt!2505453 s!7408) e!4215251)))

(declare-fun b!7012488 () Bool)

(assert (=> b!7012488 (= e!4215251 (nullableZipper!2492 lt!2505453))))

(declare-fun b!7012489 () Bool)

(assert (=> b!7012489 (= e!4215251 (matchZipper!2866 (derivationStepZipper!2806 lt!2505453 (head!14178 s!7408)) (tail!13407 s!7408)))))

(assert (= (and d!2185915 c!1302686) b!7012488))

(assert (= (and d!2185915 (not c!1302686)) b!7012489))

(assert (=> d!2185915 m!7710926))

(declare-fun m!7711164 () Bool)

(assert (=> b!7012488 m!7711164))

(assert (=> b!7012489 m!7710930))

(assert (=> b!7012489 m!7710930))

(declare-fun m!7711166 () Bool)

(assert (=> b!7012489 m!7711166))

(assert (=> b!7012489 m!7710934))

(assert (=> b!7012489 m!7711166))

(assert (=> b!7012489 m!7710934))

(declare-fun m!7711168 () Bool)

(assert (=> b!7012489 m!7711168))

(assert (=> start!675478 d!2185915))

(declare-fun bs!1866329 () Bool)

(declare-fun d!2185917 () Bool)

(assert (= bs!1866329 (and d!2185917 b!7012198)))

(declare-fun lambda!408981 () Int)

(assert (=> bs!1866329 (= lambda!408981 lambda!408913)))

(declare-fun bs!1866330 () Bool)

(assert (= bs!1866330 (and d!2185917 d!2185901)))

(assert (=> bs!1866330 (= lambda!408981 lambda!408977)))

(assert (=> d!2185917 true))

(assert (=> d!2185917 (= (appendTo!447 z1!570 ct2!306) (map!15619 z1!570 lambda!408981))))

(declare-fun bs!1866331 () Bool)

(assert (= bs!1866331 d!2185917))

(declare-fun m!7711170 () Bool)

(assert (=> bs!1866331 m!7711170))

(assert (=> start!675478 d!2185917))

(declare-fun bs!1866332 () Bool)

(declare-fun d!2185919 () Bool)

(assert (= bs!1866332 (and d!2185919 b!7012198)))

(declare-fun lambda!408982 () Int)

(assert (=> bs!1866332 (= lambda!408982 lambda!408914)))

(declare-fun bs!1866333 () Bool)

(assert (= bs!1866333 (and d!2185919 d!2185881)))

(assert (=> bs!1866333 (= lambda!408982 lambda!408972)))

(declare-fun bs!1866334 () Bool)

(assert (= bs!1866334 (and d!2185919 d!2185911)))

(assert (=> bs!1866334 (= lambda!408982 lambda!408980)))

(assert (=> d!2185919 (= (inv!86175 ct2!306) (forall!16243 (exprs!6822 ct2!306) lambda!408982))))

(declare-fun bs!1866335 () Bool)

(assert (= bs!1866335 d!2185919))

(declare-fun m!7711172 () Bool)

(assert (=> bs!1866335 m!7711172))

(assert (=> start!675478 d!2185919))

(assert (=> b!7012184 d!2185877))

(declare-fun condSetEmpty!48404 () Bool)

(assert (=> setNonEmpty!48398 (= condSetEmpty!48404 (= setRest!48398 (as set.empty (Set Context!12644))))))

(declare-fun setRes!48404 () Bool)

(assert (=> setNonEmpty!48398 (= tp!1932554 setRes!48404)))

(declare-fun setIsEmpty!48404 () Bool)

(assert (=> setIsEmpty!48404 setRes!48404))

(declare-fun setNonEmpty!48404 () Bool)

(declare-fun e!4215254 () Bool)

(declare-fun setElem!48404 () Context!12644)

(declare-fun tp!1932571 () Bool)

(assert (=> setNonEmpty!48404 (= setRes!48404 (and tp!1932571 (inv!86175 setElem!48404) e!4215254))))

(declare-fun setRest!48404 () (Set Context!12644))

(assert (=> setNonEmpty!48404 (= setRest!48398 (set.union (set.insert setElem!48404 (as set.empty (Set Context!12644))) setRest!48404))))

(declare-fun b!7012494 () Bool)

(declare-fun tp!1932572 () Bool)

(assert (=> b!7012494 (= e!4215254 tp!1932572)))

(assert (= (and setNonEmpty!48398 condSetEmpty!48404) setIsEmpty!48404))

(assert (= (and setNonEmpty!48398 (not condSetEmpty!48404)) setNonEmpty!48404))

(assert (= setNonEmpty!48404 b!7012494))

(declare-fun m!7711174 () Bool)

(assert (=> setNonEmpty!48404 m!7711174))

(declare-fun b!7012499 () Bool)

(declare-fun e!4215257 () Bool)

(declare-fun tp!1932577 () Bool)

(declare-fun tp!1932578 () Bool)

(assert (=> b!7012499 (= e!4215257 (and tp!1932577 tp!1932578))))

(assert (=> b!7012200 (= tp!1932553 e!4215257)))

(assert (= (and b!7012200 (is-Cons!67399 (exprs!6822 ct2!306))) b!7012499))

(declare-fun b!7012500 () Bool)

(declare-fun e!4215258 () Bool)

(declare-fun tp!1932579 () Bool)

(declare-fun tp!1932580 () Bool)

(assert (=> b!7012500 (= e!4215258 (and tp!1932579 tp!1932580))))

(assert (=> b!7012197 (= tp!1932551 e!4215258)))

(assert (= (and b!7012197 (is-Cons!67399 (exprs!6822 setElem!48398))) b!7012500))

(declare-fun b!7012505 () Bool)

(declare-fun e!4215261 () Bool)

(declare-fun tp!1932583 () Bool)

(assert (=> b!7012505 (= e!4215261 (and tp_is_empty!43877 tp!1932583))))

(assert (=> b!7012203 (= tp!1932552 e!4215261)))

(assert (= (and b!7012203 (is-Cons!67400 (t!381279 s!7408))) b!7012505))

(declare-fun b_lambda!264447 () Bool)

(assert (= b_lambda!264439 (or b!7012206 b_lambda!264447)))

(declare-fun bs!1866336 () Bool)

(declare-fun d!2185921 () Bool)

(assert (= bs!1866336 (and d!2185921 b!7012206)))

(assert (=> bs!1866336 (= (dynLambda!27118 lambda!408915 lt!2505496) (derivationStepZipperUp!1976 lt!2505496 (h!73848 s!7408)))))

(assert (=> bs!1866336 m!7710658))

(assert (=> d!2185831 d!2185921))

(declare-fun b_lambda!264449 () Bool)

(assert (= b_lambda!264441 (or b!7012206 b_lambda!264449)))

(declare-fun bs!1866337 () Bool)

(declare-fun d!2185923 () Bool)

(assert (= bs!1866337 (and d!2185923 b!7012206)))

(assert (=> bs!1866337 (= (dynLambda!27118 lambda!408915 lt!2505466) (derivationStepZipperUp!1976 lt!2505466 (h!73848 s!7408)))))

(assert (=> bs!1866337 m!7710644))

(assert (=> d!2185839 d!2185923))

(declare-fun b_lambda!264451 () Bool)

(assert (= b_lambda!264443 (or b!7012196 b_lambda!264451)))

(declare-fun bs!1866338 () Bool)

(declare-fun d!2185925 () Bool)

(assert (= bs!1866338 (and d!2185925 b!7012196)))

(assert (=> bs!1866338 (= (dynLambda!27120 lambda!408912 lt!2505664) (matchZipper!2866 (set.insert lt!2505664 (as set.empty (Set Context!12644))) s!7408))))

(declare-fun m!7711176 () Bool)

(assert (=> bs!1866338 m!7711176))

(assert (=> bs!1866338 m!7711176))

(declare-fun m!7711178 () Bool)

(assert (=> bs!1866338 m!7711178))

(assert (=> d!2185859 d!2185925))

(declare-fun b_lambda!264453 () Bool)

(assert (= b_lambda!264445 (or b!7012198 b_lambda!264453)))

(declare-fun bs!1866339 () Bool)

(declare-fun d!2185927 () Bool)

(assert (= bs!1866339 (and d!2185927 b!7012198)))

(declare-fun lt!2505704 () Unit!161330)

(assert (=> bs!1866339 (= lt!2505704 (lemmaConcatPreservesForall!662 (exprs!6822 lt!2505675) (exprs!6822 ct2!306) lambda!408914))))

(assert (=> bs!1866339 (= (dynLambda!27121 lambda!408913 lt!2505675) (Context!12645 (++!15331 (exprs!6822 lt!2505675) (exprs!6822 ct2!306))))))

(declare-fun m!7711180 () Bool)

(assert (=> bs!1866339 m!7711180))

(declare-fun m!7711182 () Bool)

(assert (=> bs!1866339 m!7711182))

(assert (=> d!2185875 d!2185927))

(push 1)

(assert (not b!7012410))

(assert (not d!2185831))

(assert (not b!7012456))

(assert (not d!2185885))

(assert (not b!7012350))

(assert (not b!7012336))

(assert (not b!7012347))

(assert (not d!2185897))

(assert (not bs!1866336))

(assert (not b!7012464))

(assert (not d!2185907))

(assert (not b!7012494))

(assert (not b!7012465))

(assert (not d!2185847))

(assert (not b!7012489))

(assert (not b!7012463))

(assert (not b!7012429))

(assert (not b!7012468))

(assert (not b!7012361))

(assert (not b!7012452))

(assert (not b!7012415))

(assert (not d!2185901))

(assert (not bm!636932))

(assert (not d!2185867))

(assert (not bm!636938))

(assert (not d!2185851))

(assert (not d!2185887))

(assert (not b_lambda!264451))

(assert (not b!7012373))

(assert (not d!2185909))

(assert (not d!2185899))

(assert (not bm!636912))

(assert (not b!7012321))

(assert (not b!7012344))

(assert (not b!7012345))

(assert (not d!2185839))

(assert (not d!2185881))

(assert (not b!7012480))

(assert (not bm!636935))

(assert (not b!7012422))

(assert (not setNonEmpty!48404))

(assert tp_is_empty!43877)

(assert (not bs!1866338))

(assert (not b!7012477))

(assert (not b!7012486))

(assert (not b!7012488))

(assert (not d!2185893))

(assert (not b!7012314))

(assert (not b!7012462))

(assert (not d!2185825))

(assert (not bm!636930))

(assert (not b!7012505))

(assert (not b!7012346))

(assert (not d!2185845))

(assert (not b!7012341))

(assert (not d!2185911))

(assert (not b!7012479))

(assert (not b!7012453))

(assert (not d!2185919))

(assert (not d!2185837))

(assert (not b!7012455))

(assert (not d!2185841))

(assert (not d!2185917))

(assert (not d!2185853))

(assert (not b!7012500))

(assert (not b!7012483))

(assert (not b!7012450))

(assert (not d!2185863))

(assert (not b!7012487))

(assert (not bm!636933))

(assert (not b!7012421))

(assert (not bm!636927))

(assert (not b_lambda!264449))

(assert (not b!7012399))

(assert (not b!7012482))

(assert (not d!2185865))

(assert (not d!2185849))

(assert (not bm!636913))

(assert (not d!2185873))

(assert (not bs!1866339))

(assert (not d!2185819))

(assert (not b!7012430))

(assert (not d!2185905))

(assert (not b!7012460))

(assert (not d!2185833))

(assert (not d!2185875))

(assert (not b!7012458))

(assert (not d!2185889))

(assert (not b!7012425))

(assert (not b!7012343))

(assert (not b!7012485))

(assert (not d!2185915))

(assert (not b_lambda!264453))

(assert (not b!7012499))

(assert (not b!7012461))

(assert (not d!2185855))

(assert (not b!7012354))

(assert (not b_lambda!264447))

(assert (not b!7012362))

(assert (not d!2185861))

(assert (not d!2185895))

(assert (not d!2185827))

(assert (not b!7012412))

(assert (not b!7012459))

(assert (not b!7012334))

(assert (not d!2185877))

(assert (not d!2185891))

(assert (not d!2185883))

(assert (not b!7012320))

(assert (not d!2185823))

(assert (not b!7012372))

(assert (not d!2185859))

(assert (not bm!636937))

(assert (not b!7012360))

(assert (not b!7012353))

(assert (not b!7012427))

(assert (not b!7012313))

(assert (not bs!1866337))

(assert (not bm!636929))

(assert (not b!7012414))

(assert (not d!2185857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

