; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!672052 () Bool)

(assert start!672052)

(declare-fun b!6991528 () Bool)

(assert (=> b!6991528 true))

(declare-fun b!6991530 () Bool)

(assert (=> b!6991530 true))

(declare-fun b!6991535 () Bool)

(assert (=> b!6991535 true))

(declare-fun tp!1930002 () Bool)

(declare-fun setRes!47874 () Bool)

(declare-datatypes ((C!34734 0))(
  ( (C!34735 (val!27069 Int)) )
))
(declare-datatypes ((Regex!17232 0))(
  ( (ElementMatch!17232 (c!1296887 C!34734)) (Concat!26077 (regOne!34976 Regex!17232) (regTwo!34976 Regex!17232)) (EmptyExpr!17232) (Star!17232 (reg!17561 Regex!17232)) (EmptyLang!17232) (Union!17232 (regOne!34977 Regex!17232) (regTwo!34977 Regex!17232)) )
))
(declare-datatypes ((List!67241 0))(
  ( (Nil!67117) (Cons!67117 (h!73565 Regex!17232) (t!380988 List!67241)) )
))
(declare-datatypes ((Context!12456 0))(
  ( (Context!12457 (exprs!6728 List!67241)) )
))
(declare-fun setElem!47874 () Context!12456)

(declare-fun e!4202341 () Bool)

(declare-fun setNonEmpty!47874 () Bool)

(declare-fun inv!85940 (Context!12456) Bool)

(assert (=> setNonEmpty!47874 (= setRes!47874 (and tp!1930002 (inv!85940 setElem!47874) e!4202341))))

(declare-fun z1!570 () (Set Context!12456))

(declare-fun setRest!47874 () (Set Context!12456))

(assert (=> setNonEmpty!47874 (= z1!570 (set.union (set.insert setElem!47874 (as set.empty (Set Context!12456))) setRest!47874))))

(declare-fun b!6991523 () Bool)

(declare-fun e!4202351 () Bool)

(declare-fun lt!2488562 () (Set Context!12456))

(declare-datatypes ((List!67242 0))(
  ( (Nil!67118) (Cons!67118 (h!73566 C!34734) (t!380989 List!67242)) )
))
(declare-fun s!7408 () List!67242)

(declare-fun matchZipper!2772 ((Set Context!12456) List!67242) Bool)

(assert (=> b!6991523 (= e!4202351 (matchZipper!2772 lt!2488562 (t!380989 s!7408)))))

(declare-fun b!6991524 () Bool)

(declare-fun res!2851424 () Bool)

(declare-fun e!4202336 () Bool)

(assert (=> b!6991524 (=> res!2851424 e!4202336)))

(declare-fun lt!2488574 () Context!12456)

(declare-fun isEmpty!39172 (List!67241) Bool)

(assert (=> b!6991524 (= res!2851424 (isEmpty!39172 (exprs!6728 lt!2488574)))))

(declare-fun b!6991525 () Bool)

(declare-fun e!4202338 () Bool)

(declare-fun e!4202346 () Bool)

(assert (=> b!6991525 (= e!4202338 e!4202346)))

(declare-fun res!2851421 () Bool)

(assert (=> b!6991525 (=> res!2851421 e!4202346)))

(declare-fun lt!2488563 () (Set Context!12456))

(declare-fun derivationStepZipper!2712 ((Set Context!12456) C!34734) (Set Context!12456))

(assert (=> b!6991525 (= res!2851421 (not (= (derivationStepZipper!2712 lt!2488563 (h!73566 s!7408)) lt!2488562)))))

(declare-fun ct2!306 () Context!12456)

(declare-datatypes ((Unit!161119 0))(
  ( (Unit!161120) )
))
(declare-fun lt!2488586 () Unit!161119)

(declare-fun lt!2488568 () List!67241)

(declare-fun lambda!402415 () Int)

(declare-fun lemmaConcatPreservesForall!568 (List!67241 List!67241 Int) Unit!161119)

(assert (=> b!6991525 (= lt!2488586 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lt!2488576 () Unit!161119)

(assert (=> b!6991525 (= lt!2488576 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lambda!402416 () Int)

(declare-fun lt!2488578 () Context!12456)

(declare-fun flatMap!2218 ((Set Context!12456) Int) (Set Context!12456))

(declare-fun derivationStepZipperUp!1882 (Context!12456 C!34734) (Set Context!12456))

(assert (=> b!6991525 (= (flatMap!2218 lt!2488563 lambda!402416) (derivationStepZipperUp!1882 lt!2488578 (h!73566 s!7408)))))

(declare-fun lt!2488588 () Unit!161119)

(declare-fun lemmaFlatMapOnSingletonSet!1733 ((Set Context!12456) Context!12456 Int) Unit!161119)

(assert (=> b!6991525 (= lt!2488588 (lemmaFlatMapOnSingletonSet!1733 lt!2488563 lt!2488578 lambda!402416))))

(assert (=> b!6991525 (= lt!2488563 (set.insert lt!2488578 (as set.empty (Set Context!12456))))))

(declare-fun lt!2488559 () Unit!161119)

(assert (=> b!6991525 (= lt!2488559 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lt!2488567 () Unit!161119)

(assert (=> b!6991525 (= lt!2488567 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun b!6991526 () Bool)

(declare-fun e!4202347 () Bool)

(declare-fun e!4202348 () Bool)

(assert (=> b!6991526 (= e!4202347 e!4202348)))

(declare-fun res!2851435 () Bool)

(assert (=> b!6991526 (=> res!2851435 e!4202348)))

(declare-fun e!4202343 () Bool)

(assert (=> b!6991526 (= res!2851435 e!4202343)))

(declare-fun res!2851427 () Bool)

(assert (=> b!6991526 (=> (not res!2851427) (not e!4202343))))

(declare-fun lt!2488582 () Bool)

(declare-fun lt!2488560 () Bool)

(assert (=> b!6991526 (= res!2851427 (not (= lt!2488582 lt!2488560)))))

(declare-fun lt!2488558 () (Set Context!12456))

(assert (=> b!6991526 (= lt!2488582 (matchZipper!2772 lt!2488558 (t!380989 s!7408)))))

(declare-fun lt!2488583 () Unit!161119)

(assert (=> b!6991526 (= lt!2488583 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lt!2488570 () (Set Context!12456))

(assert (=> b!6991526 (= (matchZipper!2772 lt!2488570 (t!380989 s!7408)) e!4202351)))

(declare-fun res!2851429 () Bool)

(assert (=> b!6991526 (=> res!2851429 e!4202351)))

(assert (=> b!6991526 (= res!2851429 lt!2488560)))

(declare-fun lt!2488575 () (Set Context!12456))

(assert (=> b!6991526 (= lt!2488560 (matchZipper!2772 lt!2488575 (t!380989 s!7408)))))

(declare-fun lt!2488590 () Unit!161119)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1405 ((Set Context!12456) (Set Context!12456) List!67242) Unit!161119)

(assert (=> b!6991526 (= lt!2488590 (lemmaZipperConcatMatchesSameAsBothZippers!1405 lt!2488575 lt!2488562 (t!380989 s!7408)))))

(declare-fun lt!2488573 () Unit!161119)

(assert (=> b!6991526 (= lt!2488573 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lt!2488587 () Unit!161119)

(assert (=> b!6991526 (= lt!2488587 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun b!6991527 () Bool)

(declare-fun e!4202340 () Bool)

(assert (=> b!6991527 (= e!4202340 e!4202347)))

(declare-fun res!2851423 () Bool)

(assert (=> b!6991527 (=> res!2851423 e!4202347)))

(assert (=> b!6991527 (= res!2851423 (not (= lt!2488558 lt!2488570)))))

(assert (=> b!6991527 (= lt!2488570 (set.union lt!2488575 lt!2488562))))

(assert (=> b!6991527 (= lt!2488562 (derivationStepZipperUp!1882 lt!2488578 (h!73566 s!7408)))))

(declare-fun derivationStepZipperDown!1950 (Regex!17232 Context!12456 C!34734) (Set Context!12456))

(assert (=> b!6991527 (= lt!2488575 (derivationStepZipperDown!1950 (h!73565 (exprs!6728 lt!2488574)) lt!2488578 (h!73566 s!7408)))))

(declare-fun ++!15177 (List!67241 List!67241) List!67241)

(assert (=> b!6991527 (= lt!2488578 (Context!12457 (++!15177 lt!2488568 (exprs!6728 ct2!306))))))

(declare-fun lt!2488591 () Unit!161119)

(assert (=> b!6991527 (= lt!2488591 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lt!2488565 () Unit!161119)

(assert (=> b!6991527 (= lt!2488565 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun e!4202342 () Bool)

(declare-fun e!4202335 () Bool)

(assert (=> b!6991528 (= e!4202342 (not e!4202335))))

(declare-fun res!2851434 () Bool)

(assert (=> b!6991528 (=> res!2851434 e!4202335)))

(declare-fun lt!2488598 () (Set Context!12456))

(assert (=> b!6991528 (= res!2851434 (not (matchZipper!2772 lt!2488598 s!7408)))))

(declare-fun lt!2488566 () Context!12456)

(assert (=> b!6991528 (= lt!2488598 (set.insert lt!2488566 (as set.empty (Set Context!12456))))))

(declare-fun lt!2488594 () (Set Context!12456))

(declare-fun lambda!402413 () Int)

(declare-fun getWitness!1136 ((Set Context!12456) Int) Context!12456)

(assert (=> b!6991528 (= lt!2488566 (getWitness!1136 lt!2488594 lambda!402413))))

(declare-datatypes ((List!67243 0))(
  ( (Nil!67119) (Cons!67119 (h!73567 Context!12456) (t!380990 List!67243)) )
))
(declare-fun lt!2488592 () List!67243)

(declare-fun exists!3025 (List!67243 Int) Bool)

(assert (=> b!6991528 (exists!3025 lt!2488592 lambda!402413)))

(declare-fun lt!2488577 () Unit!161119)

(declare-fun lemmaZipperMatchesExistsMatchingContext!201 (List!67243 List!67242) Unit!161119)

(assert (=> b!6991528 (= lt!2488577 (lemmaZipperMatchesExistsMatchingContext!201 lt!2488592 s!7408))))

(declare-fun toList!10592 ((Set Context!12456)) List!67243)

(assert (=> b!6991528 (= lt!2488592 (toList!10592 lt!2488594))))

(declare-fun b!6991529 () Bool)

(assert (=> b!6991529 (= e!4202336 e!4202340)))

(declare-fun res!2851436 () Bool)

(assert (=> b!6991529 (=> res!2851436 e!4202340)))

(declare-fun nullable!6992 (Regex!17232) Bool)

(assert (=> b!6991529 (= res!2851436 (not (nullable!6992 (h!73565 (exprs!6728 lt!2488574)))))))

(declare-fun lt!2488579 () Context!12456)

(assert (=> b!6991529 (= lt!2488579 (Context!12457 lt!2488568))))

(declare-fun tail!13248 (List!67241) List!67241)

(assert (=> b!6991529 (= lt!2488568 (tail!13248 (exprs!6728 lt!2488574)))))

(declare-fun e!4202339 () Bool)

(assert (=> b!6991530 (= e!4202335 e!4202339)))

(declare-fun res!2851431 () Bool)

(assert (=> b!6991530 (=> res!2851431 e!4202339)))

(declare-fun lt!2488581 () Context!12456)

(assert (=> b!6991530 (= res!2851431 (or (not (= lt!2488581 lt!2488566)) (not (set.member lt!2488574 z1!570))))))

(assert (=> b!6991530 (= lt!2488581 (Context!12457 (++!15177 (exprs!6728 lt!2488574) (exprs!6728 ct2!306))))))

(declare-fun lt!2488593 () Unit!161119)

(assert (=> b!6991530 (= lt!2488593 (lemmaConcatPreservesForall!568 (exprs!6728 lt!2488574) (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lambda!402414 () Int)

(declare-fun mapPost2!87 ((Set Context!12456) Int Context!12456) Context!12456)

(assert (=> b!6991530 (= lt!2488574 (mapPost2!87 z1!570 lambda!402414 lt!2488566))))

(declare-fun b!6991531 () Bool)

(declare-fun res!2851426 () Bool)

(assert (=> b!6991531 (=> res!2851426 e!4202336)))

(assert (=> b!6991531 (= res!2851426 (not (is-Cons!67117 (exprs!6728 lt!2488574))))))

(declare-fun b!6991532 () Bool)

(declare-fun e!4202337 () Bool)

(assert (=> b!6991532 (= e!4202339 e!4202337)))

(declare-fun res!2851425 () Bool)

(assert (=> b!6991532 (=> res!2851425 e!4202337)))

(declare-fun lt!2488580 () (Set Context!12456))

(assert (=> b!6991532 (= res!2851425 (not (= lt!2488580 lt!2488598)))))

(assert (=> b!6991532 (= lt!2488580 (set.insert lt!2488581 (as set.empty (Set Context!12456))))))

(declare-fun lt!2488585 () Unit!161119)

(assert (=> b!6991532 (= lt!2488585 (lemmaConcatPreservesForall!568 (exprs!6728 lt!2488574) (exprs!6728 ct2!306) lambda!402415))))

(declare-fun b!6991533 () Bool)

(declare-fun e!4202350 () Bool)

(declare-fun tp_is_empty!43689 () Bool)

(declare-fun tp!1930003 () Bool)

(assert (=> b!6991533 (= e!4202350 (and tp_is_empty!43689 tp!1930003))))

(declare-fun b!6991534 () Bool)

(declare-fun res!2851439 () Bool)

(assert (=> b!6991534 (=> (not res!2851439) (not e!4202342))))

(assert (=> b!6991534 (= res!2851439 (is-Cons!67118 s!7408))))

(assert (=> b!6991535 (= e!4202337 e!4202336)))

(declare-fun res!2851432 () Bool)

(assert (=> b!6991535 (=> res!2851432 e!4202336)))

(assert (=> b!6991535 (= res!2851432 (not (= (derivationStepZipper!2712 lt!2488580 (h!73566 s!7408)) lt!2488558)))))

(assert (=> b!6991535 (= (flatMap!2218 lt!2488580 lambda!402416) (derivationStepZipperUp!1882 lt!2488581 (h!73566 s!7408)))))

(declare-fun lt!2488597 () Unit!161119)

(assert (=> b!6991535 (= lt!2488597 (lemmaFlatMapOnSingletonSet!1733 lt!2488580 lt!2488581 lambda!402416))))

(assert (=> b!6991535 (= lt!2488558 (derivationStepZipperUp!1882 lt!2488581 (h!73566 s!7408)))))

(declare-fun lt!2488572 () Unit!161119)

(assert (=> b!6991535 (= lt!2488572 (lemmaConcatPreservesForall!568 (exprs!6728 lt!2488574) (exprs!6728 ct2!306) lambda!402415))))

(declare-fun b!6991536 () Bool)

(assert (=> b!6991536 (= e!4202348 e!4202338)))

(declare-fun res!2851433 () Bool)

(assert (=> b!6991536 (=> res!2851433 e!4202338)))

(assert (=> b!6991536 (= res!2851433 (not (matchZipper!2772 lt!2488562 (t!380989 s!7408))))))

(declare-fun lt!2488595 () Unit!161119)

(assert (=> b!6991536 (= lt!2488595 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun b!6991537 () Bool)

(declare-fun e!4202345 () Bool)

(declare-fun tp!1930001 () Bool)

(assert (=> b!6991537 (= e!4202345 tp!1930001)))

(declare-fun b!6991538 () Bool)

(assert (=> b!6991538 (= e!4202343 (not (matchZipper!2772 lt!2488562 (t!380989 s!7408))))))

(declare-fun lt!2488569 () Unit!161119)

(assert (=> b!6991538 (= lt!2488569 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun setIsEmpty!47874 () Bool)

(assert (=> setIsEmpty!47874 setRes!47874))

(declare-fun res!2851422 () Bool)

(assert (=> start!672052 (=> (not res!2851422) (not e!4202342))))

(assert (=> start!672052 (= res!2851422 (matchZipper!2772 lt!2488594 s!7408))))

(declare-fun appendTo!353 ((Set Context!12456) Context!12456) (Set Context!12456))

(assert (=> start!672052 (= lt!2488594 (appendTo!353 z1!570 ct2!306))))

(assert (=> start!672052 e!4202342))

(declare-fun condSetEmpty!47874 () Bool)

(assert (=> start!672052 (= condSetEmpty!47874 (= z1!570 (as set.empty (Set Context!12456))))))

(assert (=> start!672052 setRes!47874))

(assert (=> start!672052 (and (inv!85940 ct2!306) e!4202345)))

(assert (=> start!672052 e!4202350))

(declare-fun b!6991539 () Bool)

(declare-fun res!2851438 () Bool)

(assert (=> b!6991539 (=> res!2851438 e!4202335)))

(assert (=> b!6991539 (= res!2851438 (not (set.member lt!2488566 lt!2488594)))))

(declare-fun b!6991540 () Bool)

(declare-fun e!4202349 () Bool)

(declare-fun forall!16149 (List!67241 Int) Bool)

(assert (=> b!6991540 (= e!4202349 (forall!16149 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun b!6991541 () Bool)

(declare-fun tp!1930004 () Bool)

(assert (=> b!6991541 (= e!4202341 tp!1930004)))

(declare-fun b!6991542 () Bool)

(declare-fun e!4202344 () Bool)

(assert (=> b!6991542 (= e!4202344 e!4202349)))

(declare-fun res!2851437 () Bool)

(assert (=> b!6991542 (=> res!2851437 e!4202349)))

(assert (=> b!6991542 (= res!2851437 (not (forall!16149 lt!2488568 lambda!402415)))))

(declare-fun lt!2488589 () Unit!161119)

(assert (=> b!6991542 (= lt!2488589 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lt!2488564 () (Set Context!12456))

(assert (=> b!6991542 (= (flatMap!2218 lt!2488564 lambda!402416) (derivationStepZipperUp!1882 lt!2488579 (h!73566 s!7408)))))

(declare-fun lt!2488571 () Unit!161119)

(assert (=> b!6991542 (= lt!2488571 (lemmaFlatMapOnSingletonSet!1733 lt!2488564 lt!2488579 lambda!402416))))

(declare-fun map!15495 ((Set Context!12456) Int) (Set Context!12456))

(assert (=> b!6991542 (= (map!15495 lt!2488564 lambda!402414) (set.insert (Context!12457 (++!15177 lt!2488568 (exprs!6728 ct2!306))) (as set.empty (Set Context!12456))))))

(declare-fun lt!2488596 () Unit!161119)

(assert (=> b!6991542 (= lt!2488596 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(declare-fun lt!2488584 () Unit!161119)

(declare-fun lemmaMapOnSingletonSet!297 ((Set Context!12456) Context!12456 Int) Unit!161119)

(assert (=> b!6991542 (= lt!2488584 (lemmaMapOnSingletonSet!297 lt!2488564 lt!2488579 lambda!402414))))

(assert (=> b!6991542 (= lt!2488564 (set.insert lt!2488579 (as set.empty (Set Context!12456))))))

(declare-fun b!6991543 () Bool)

(declare-fun res!2851428 () Bool)

(assert (=> b!6991543 (=> res!2851428 e!4202348)))

(assert (=> b!6991543 (= res!2851428 (not lt!2488582))))

(declare-fun b!6991544 () Bool)

(assert (=> b!6991544 (= e!4202346 e!4202344)))

(declare-fun res!2851430 () Bool)

(assert (=> b!6991544 (=> res!2851430 e!4202344)))

(assert (=> b!6991544 (= res!2851430 (not (matchZipper!2772 lt!2488563 s!7408)))))

(declare-fun lt!2488561 () Unit!161119)

(assert (=> b!6991544 (= lt!2488561 (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(assert (= (and start!672052 res!2851422) b!6991534))

(assert (= (and b!6991534 res!2851439) b!6991528))

(assert (= (and b!6991528 (not res!2851434)) b!6991539))

(assert (= (and b!6991539 (not res!2851438)) b!6991530))

(assert (= (and b!6991530 (not res!2851431)) b!6991532))

(assert (= (and b!6991532 (not res!2851425)) b!6991535))

(assert (= (and b!6991535 (not res!2851432)) b!6991531))

(assert (= (and b!6991531 (not res!2851426)) b!6991524))

(assert (= (and b!6991524 (not res!2851424)) b!6991529))

(assert (= (and b!6991529 (not res!2851436)) b!6991527))

(assert (= (and b!6991527 (not res!2851423)) b!6991526))

(assert (= (and b!6991526 (not res!2851429)) b!6991523))

(assert (= (and b!6991526 res!2851427) b!6991538))

(assert (= (and b!6991526 (not res!2851435)) b!6991543))

(assert (= (and b!6991543 (not res!2851428)) b!6991536))

(assert (= (and b!6991536 (not res!2851433)) b!6991525))

(assert (= (and b!6991525 (not res!2851421)) b!6991544))

(assert (= (and b!6991544 (not res!2851430)) b!6991542))

(assert (= (and b!6991542 (not res!2851437)) b!6991540))

(assert (= (and start!672052 condSetEmpty!47874) setIsEmpty!47874))

(assert (= (and start!672052 (not condSetEmpty!47874)) setNonEmpty!47874))

(assert (= setNonEmpty!47874 b!6991541))

(assert (= start!672052 b!6991537))

(assert (= (and start!672052 (is-Cons!67118 s!7408)) b!6991533))

(declare-fun m!7680912 () Bool)

(assert (=> b!6991524 m!7680912))

(declare-fun m!7680914 () Bool)

(assert (=> b!6991539 m!7680914))

(declare-fun m!7680916 () Bool)

(assert (=> start!672052 m!7680916))

(declare-fun m!7680918 () Bool)

(assert (=> start!672052 m!7680918))

(declare-fun m!7680920 () Bool)

(assert (=> start!672052 m!7680920))

(declare-fun m!7680922 () Bool)

(assert (=> b!6991526 m!7680922))

(declare-fun m!7680924 () Bool)

(assert (=> b!6991526 m!7680924))

(assert (=> b!6991526 m!7680922))

(declare-fun m!7680926 () Bool)

(assert (=> b!6991526 m!7680926))

(declare-fun m!7680928 () Bool)

(assert (=> b!6991526 m!7680928))

(declare-fun m!7680930 () Bool)

(assert (=> b!6991526 m!7680930))

(assert (=> b!6991526 m!7680922))

(declare-fun m!7680932 () Bool)

(assert (=> b!6991538 m!7680932))

(assert (=> b!6991538 m!7680922))

(assert (=> b!6991542 m!7680922))

(declare-fun m!7680934 () Bool)

(assert (=> b!6991542 m!7680934))

(declare-fun m!7680936 () Bool)

(assert (=> b!6991542 m!7680936))

(declare-fun m!7680938 () Bool)

(assert (=> b!6991542 m!7680938))

(declare-fun m!7680940 () Bool)

(assert (=> b!6991542 m!7680940))

(declare-fun m!7680942 () Bool)

(assert (=> b!6991542 m!7680942))

(declare-fun m!7680944 () Bool)

(assert (=> b!6991542 m!7680944))

(declare-fun m!7680946 () Bool)

(assert (=> b!6991542 m!7680946))

(declare-fun m!7680948 () Bool)

(assert (=> b!6991542 m!7680948))

(assert (=> b!6991542 m!7680922))

(declare-fun m!7680950 () Bool)

(assert (=> b!6991542 m!7680950))

(declare-fun m!7680952 () Bool)

(assert (=> b!6991544 m!7680952))

(assert (=> b!6991544 m!7680922))

(declare-fun m!7680954 () Bool)

(assert (=> b!6991530 m!7680954))

(declare-fun m!7680956 () Bool)

(assert (=> b!6991530 m!7680956))

(declare-fun m!7680958 () Bool)

(assert (=> b!6991530 m!7680958))

(declare-fun m!7680960 () Bool)

(assert (=> b!6991530 m!7680960))

(declare-fun m!7680962 () Bool)

(assert (=> b!6991532 m!7680962))

(assert (=> b!6991532 m!7680958))

(declare-fun m!7680964 () Bool)

(assert (=> setNonEmpty!47874 m!7680964))

(assert (=> b!6991525 m!7680922))

(assert (=> b!6991525 m!7680922))

(declare-fun m!7680966 () Bool)

(assert (=> b!6991525 m!7680966))

(declare-fun m!7680968 () Bool)

(assert (=> b!6991525 m!7680968))

(declare-fun m!7680970 () Bool)

(assert (=> b!6991525 m!7680970))

(declare-fun m!7680972 () Bool)

(assert (=> b!6991525 m!7680972))

(declare-fun m!7680974 () Bool)

(assert (=> b!6991525 m!7680974))

(assert (=> b!6991525 m!7680922))

(assert (=> b!6991525 m!7680922))

(assert (=> b!6991527 m!7680946))

(assert (=> b!6991527 m!7680922))

(declare-fun m!7680976 () Bool)

(assert (=> b!6991527 m!7680976))

(assert (=> b!6991527 m!7680922))

(assert (=> b!6991527 m!7680974))

(assert (=> b!6991523 m!7680932))

(declare-fun m!7680978 () Bool)

(assert (=> b!6991540 m!7680978))

(declare-fun m!7680980 () Bool)

(assert (=> b!6991529 m!7680980))

(declare-fun m!7680982 () Bool)

(assert (=> b!6991529 m!7680982))

(declare-fun m!7680984 () Bool)

(assert (=> b!6991535 m!7680984))

(declare-fun m!7680986 () Bool)

(assert (=> b!6991535 m!7680986))

(declare-fun m!7680988 () Bool)

(assert (=> b!6991535 m!7680988))

(assert (=> b!6991535 m!7680958))

(declare-fun m!7680990 () Bool)

(assert (=> b!6991535 m!7680990))

(declare-fun m!7680992 () Bool)

(assert (=> b!6991528 m!7680992))

(declare-fun m!7680994 () Bool)

(assert (=> b!6991528 m!7680994))

(declare-fun m!7680996 () Bool)

(assert (=> b!6991528 m!7680996))

(declare-fun m!7680998 () Bool)

(assert (=> b!6991528 m!7680998))

(declare-fun m!7681000 () Bool)

(assert (=> b!6991528 m!7681000))

(declare-fun m!7681002 () Bool)

(assert (=> b!6991528 m!7681002))

(assert (=> b!6991536 m!7680932))

(assert (=> b!6991536 m!7680922))

(push 1)

(assert (not b!6991542))

(assert (not b!6991541))

(assert (not setNonEmpty!47874))

(assert (not start!672052))

(assert (not b!6991540))

(assert (not b!6991527))

(assert (not b!6991525))

(assert (not b!6991529))

(assert (not b!6991536))

(assert (not b!6991538))

(assert (not b!6991523))

(assert (not b!6991528))

(assert (not b!6991535))

(assert (not b!6991544))

(assert tp_is_empty!43689)

(assert (not b!6991537))

(assert (not b!6991526))

(assert (not b!6991532))

(assert (not b!6991530))

(assert (not b!6991524))

(assert (not b!6991533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2177922 () Bool)

(declare-fun c!1296905 () Bool)

(declare-fun isEmpty!39174 (List!67242) Bool)

(assert (=> d!2177922 (= c!1296905 (isEmpty!39174 s!7408))))

(declare-fun e!4202405 () Bool)

(assert (=> d!2177922 (= (matchZipper!2772 lt!2488598 s!7408) e!4202405)))

(declare-fun b!6991627 () Bool)

(declare-fun nullableZipper!2443 ((Set Context!12456)) Bool)

(assert (=> b!6991627 (= e!4202405 (nullableZipper!2443 lt!2488598))))

(declare-fun b!6991628 () Bool)

(declare-fun head!14118 (List!67242) C!34734)

(declare-fun tail!13250 (List!67242) List!67242)

(assert (=> b!6991628 (= e!4202405 (matchZipper!2772 (derivationStepZipper!2712 lt!2488598 (head!14118 s!7408)) (tail!13250 s!7408)))))

(assert (= (and d!2177922 c!1296905) b!6991627))

(assert (= (and d!2177922 (not c!1296905)) b!6991628))

(declare-fun m!7681096 () Bool)

(assert (=> d!2177922 m!7681096))

(declare-fun m!7681098 () Bool)

(assert (=> b!6991627 m!7681098))

(declare-fun m!7681100 () Bool)

(assert (=> b!6991628 m!7681100))

(assert (=> b!6991628 m!7681100))

(declare-fun m!7681102 () Bool)

(assert (=> b!6991628 m!7681102))

(declare-fun m!7681104 () Bool)

(assert (=> b!6991628 m!7681104))

(assert (=> b!6991628 m!7681102))

(assert (=> b!6991628 m!7681104))

(declare-fun m!7681106 () Bool)

(assert (=> b!6991628 m!7681106))

(assert (=> b!6991528 d!2177922))

(declare-fun bs!1862449 () Bool)

(declare-fun d!2177924 () Bool)

(assert (= bs!1862449 (and d!2177924 b!6991528)))

(declare-fun lambda!402477 () Int)

(assert (=> bs!1862449 (not (= lambda!402477 lambda!402413))))

(assert (=> d!2177924 true))

(declare-fun order!27937 () Int)

(declare-fun dynLambda!26930 (Int Int) Int)

(assert (=> d!2177924 (< (dynLambda!26930 order!27937 lambda!402413) (dynLambda!26930 order!27937 lambda!402477))))

(declare-fun forall!16151 (List!67243 Int) Bool)

(assert (=> d!2177924 (= (exists!3025 lt!2488592 lambda!402413) (not (forall!16151 lt!2488592 lambda!402477)))))

(declare-fun bs!1862450 () Bool)

(assert (= bs!1862450 d!2177924))

(declare-fun m!7681108 () Bool)

(assert (=> bs!1862450 m!7681108))

(assert (=> b!6991528 d!2177924))

(declare-fun d!2177926 () Bool)

(declare-fun e!4202408 () Bool)

(assert (=> d!2177926 e!4202408))

(declare-fun res!2851500 () Bool)

(assert (=> d!2177926 (=> (not res!2851500) (not e!4202408))))

(declare-fun lt!2488728 () List!67243)

(declare-fun noDuplicate!2528 (List!67243) Bool)

(assert (=> d!2177926 (= res!2851500 (noDuplicate!2528 lt!2488728))))

(declare-fun choose!52303 ((Set Context!12456)) List!67243)

(assert (=> d!2177926 (= lt!2488728 (choose!52303 lt!2488594))))

(assert (=> d!2177926 (= (toList!10592 lt!2488594) lt!2488728)))

(declare-fun b!6991633 () Bool)

(declare-fun content!13270 (List!67243) (Set Context!12456))

(assert (=> b!6991633 (= e!4202408 (= (content!13270 lt!2488728) lt!2488594))))

(assert (= (and d!2177926 res!2851500) b!6991633))

(declare-fun m!7681110 () Bool)

(assert (=> d!2177926 m!7681110))

(declare-fun m!7681112 () Bool)

(assert (=> d!2177926 m!7681112))

(declare-fun m!7681114 () Bool)

(assert (=> b!6991633 m!7681114))

(assert (=> b!6991528 d!2177926))

(declare-fun bs!1862451 () Bool)

(declare-fun d!2177928 () Bool)

(assert (= bs!1862451 (and d!2177928 b!6991528)))

(declare-fun lambda!402480 () Int)

(assert (=> bs!1862451 (= lambda!402480 lambda!402413)))

(declare-fun bs!1862452 () Bool)

(assert (= bs!1862452 (and d!2177928 d!2177924)))

(assert (=> bs!1862452 (not (= lambda!402480 lambda!402477))))

(assert (=> d!2177928 true))

(assert (=> d!2177928 (exists!3025 lt!2488592 lambda!402480)))

(declare-fun lt!2488731 () Unit!161119)

(declare-fun choose!52304 (List!67243 List!67242) Unit!161119)

(assert (=> d!2177928 (= lt!2488731 (choose!52304 lt!2488592 s!7408))))

(assert (=> d!2177928 (matchZipper!2772 (content!13270 lt!2488592) s!7408)))

(assert (=> d!2177928 (= (lemmaZipperMatchesExistsMatchingContext!201 lt!2488592 s!7408) lt!2488731)))

(declare-fun bs!1862453 () Bool)

(assert (= bs!1862453 d!2177928))

(declare-fun m!7681116 () Bool)

(assert (=> bs!1862453 m!7681116))

(declare-fun m!7681118 () Bool)

(assert (=> bs!1862453 m!7681118))

(declare-fun m!7681120 () Bool)

(assert (=> bs!1862453 m!7681120))

(assert (=> bs!1862453 m!7681120))

(declare-fun m!7681122 () Bool)

(assert (=> bs!1862453 m!7681122))

(assert (=> b!6991528 d!2177928))

(declare-fun d!2177930 () Bool)

(declare-fun e!4202411 () Bool)

(assert (=> d!2177930 e!4202411))

(declare-fun res!2851503 () Bool)

(assert (=> d!2177930 (=> (not res!2851503) (not e!4202411))))

(declare-fun lt!2488734 () Context!12456)

(declare-fun dynLambda!26931 (Int Context!12456) Bool)

(assert (=> d!2177930 (= res!2851503 (dynLambda!26931 lambda!402413 lt!2488734))))

(declare-fun getWitness!1138 (List!67243 Int) Context!12456)

(assert (=> d!2177930 (= lt!2488734 (getWitness!1138 (toList!10592 lt!2488594) lambda!402413))))

(declare-fun exists!3027 ((Set Context!12456) Int) Bool)

(assert (=> d!2177930 (exists!3027 lt!2488594 lambda!402413)))

(assert (=> d!2177930 (= (getWitness!1136 lt!2488594 lambda!402413) lt!2488734)))

(declare-fun b!6991636 () Bool)

(assert (=> b!6991636 (= e!4202411 (set.member lt!2488734 lt!2488594))))

(assert (= (and d!2177930 res!2851503) b!6991636))

(declare-fun b_lambda!262771 () Bool)

(assert (=> (not b_lambda!262771) (not d!2177930)))

(declare-fun m!7681124 () Bool)

(assert (=> d!2177930 m!7681124))

(assert (=> d!2177930 m!7681002))

(assert (=> d!2177930 m!7681002))

(declare-fun m!7681126 () Bool)

(assert (=> d!2177930 m!7681126))

(declare-fun m!7681128 () Bool)

(assert (=> d!2177930 m!7681128))

(declare-fun m!7681130 () Bool)

(assert (=> b!6991636 m!7681130))

(assert (=> b!6991528 d!2177930))

(declare-fun d!2177932 () Bool)

(declare-fun nullableFct!2644 (Regex!17232) Bool)

(assert (=> d!2177932 (= (nullable!6992 (h!73565 (exprs!6728 lt!2488574))) (nullableFct!2644 (h!73565 (exprs!6728 lt!2488574))))))

(declare-fun bs!1862454 () Bool)

(assert (= bs!1862454 d!2177932))

(declare-fun m!7681132 () Bool)

(assert (=> bs!1862454 m!7681132))

(assert (=> b!6991529 d!2177932))

(declare-fun d!2177934 () Bool)

(assert (=> d!2177934 (= (tail!13248 (exprs!6728 lt!2488574)) (t!380988 (exprs!6728 lt!2488574)))))

(assert (=> b!6991529 d!2177934))

(declare-fun d!2177936 () Bool)

(assert (=> d!2177936 (forall!16149 (++!15177 lt!2488568 (exprs!6728 ct2!306)) lambda!402415)))

(declare-fun lt!2488737 () Unit!161119)

(declare-fun choose!52305 (List!67241 List!67241 Int) Unit!161119)

(assert (=> d!2177936 (= lt!2488737 (choose!52305 lt!2488568 (exprs!6728 ct2!306) lambda!402415))))

(assert (=> d!2177936 (forall!16149 lt!2488568 lambda!402415)))

(assert (=> d!2177936 (= (lemmaConcatPreservesForall!568 lt!2488568 (exprs!6728 ct2!306) lambda!402415) lt!2488737)))

(declare-fun bs!1862455 () Bool)

(assert (= bs!1862455 d!2177936))

(assert (=> bs!1862455 m!7680946))

(assert (=> bs!1862455 m!7680946))

(declare-fun m!7681134 () Bool)

(assert (=> bs!1862455 m!7681134))

(declare-fun m!7681136 () Bool)

(assert (=> bs!1862455 m!7681136))

(assert (=> bs!1862455 m!7680948))

(assert (=> b!6991527 d!2177936))

(declare-fun bm!634721 () Bool)

(declare-fun call!634727 () (Set Context!12456))

(declare-fun call!634728 () (Set Context!12456))

(assert (=> bm!634721 (= call!634727 call!634728)))

(declare-fun b!6991659 () Bool)

(declare-fun e!4202429 () (Set Context!12456))

(assert (=> b!6991659 (= e!4202429 (as set.empty (Set Context!12456)))))

(declare-fun call!634731 () (Set Context!12456))

(declare-fun c!1296922 () Bool)

(declare-fun call!634729 () List!67241)

(declare-fun bm!634722 () Bool)

(assert (=> bm!634722 (= call!634731 (derivationStepZipperDown!1950 (ite c!1296922 (regOne!34977 (h!73565 (exprs!6728 lt!2488574))) (regOne!34976 (h!73565 (exprs!6728 lt!2488574)))) (ite c!1296922 lt!2488578 (Context!12457 call!634729)) (h!73566 s!7408)))))

(declare-fun b!6991661 () Bool)

(declare-fun e!4202427 () (Set Context!12456))

(declare-fun call!634726 () (Set Context!12456))

(assert (=> b!6991661 (= e!4202427 (set.union call!634731 call!634726))))

(declare-fun b!6991662 () Bool)

(declare-fun e!4202424 () (Set Context!12456))

(assert (=> b!6991662 (= e!4202424 (set.insert lt!2488578 (as set.empty (Set Context!12456))))))

(declare-fun b!6991663 () Bool)

(declare-fun c!1296918 () Bool)

(declare-fun e!4202428 () Bool)

(assert (=> b!6991663 (= c!1296918 e!4202428)))

(declare-fun res!2851506 () Bool)

(assert (=> b!6991663 (=> (not res!2851506) (not e!4202428))))

(assert (=> b!6991663 (= res!2851506 (is-Concat!26077 (h!73565 (exprs!6728 lt!2488574))))))

(declare-fun e!4202425 () (Set Context!12456))

(assert (=> b!6991663 (= e!4202427 e!4202425)))

(declare-fun b!6991664 () Bool)

(assert (=> b!6991664 (= e!4202424 e!4202427)))

(assert (=> b!6991664 (= c!1296922 (is-Union!17232 (h!73565 (exprs!6728 lt!2488574))))))

(declare-fun b!6991665 () Bool)

(declare-fun c!1296920 () Bool)

(assert (=> b!6991665 (= c!1296920 (is-Star!17232 (h!73565 (exprs!6728 lt!2488574))))))

(declare-fun e!4202426 () (Set Context!12456))

(assert (=> b!6991665 (= e!4202426 e!4202429)))

(declare-fun d!2177938 () Bool)

(declare-fun c!1296919 () Bool)

(assert (=> d!2177938 (= c!1296919 (and (is-ElementMatch!17232 (h!73565 (exprs!6728 lt!2488574))) (= (c!1296887 (h!73565 (exprs!6728 lt!2488574))) (h!73566 s!7408))))))

(assert (=> d!2177938 (= (derivationStepZipperDown!1950 (h!73565 (exprs!6728 lt!2488574)) lt!2488578 (h!73566 s!7408)) e!4202424)))

(declare-fun b!6991660 () Bool)

(assert (=> b!6991660 (= e!4202426 call!634727)))

(declare-fun b!6991666 () Bool)

(assert (=> b!6991666 (= e!4202428 (nullable!6992 (regOne!34976 (h!73565 (exprs!6728 lt!2488574)))))))

(declare-fun b!6991667 () Bool)

(assert (=> b!6991667 (= e!4202425 e!4202426)))

(declare-fun c!1296921 () Bool)

(assert (=> b!6991667 (= c!1296921 (is-Concat!26077 (h!73565 (exprs!6728 lt!2488574))))))

(declare-fun bm!634723 () Bool)

(declare-fun call!634730 () List!67241)

(assert (=> bm!634723 (= call!634730 call!634729)))

(declare-fun bm!634724 () Bool)

(declare-fun $colon$colon!2490 (List!67241 Regex!17232) List!67241)

(assert (=> bm!634724 (= call!634729 ($colon$colon!2490 (exprs!6728 lt!2488578) (ite (or c!1296918 c!1296921) (regTwo!34976 (h!73565 (exprs!6728 lt!2488574))) (h!73565 (exprs!6728 lt!2488574)))))))

(declare-fun bm!634725 () Bool)

(assert (=> bm!634725 (= call!634728 call!634726)))

(declare-fun b!6991668 () Bool)

(assert (=> b!6991668 (= e!4202425 (set.union call!634731 call!634728))))

(declare-fun b!6991669 () Bool)

(assert (=> b!6991669 (= e!4202429 call!634727)))

(declare-fun bm!634726 () Bool)

(assert (=> bm!634726 (= call!634726 (derivationStepZipperDown!1950 (ite c!1296922 (regTwo!34977 (h!73565 (exprs!6728 lt!2488574))) (ite c!1296918 (regTwo!34976 (h!73565 (exprs!6728 lt!2488574))) (ite c!1296921 (regOne!34976 (h!73565 (exprs!6728 lt!2488574))) (reg!17561 (h!73565 (exprs!6728 lt!2488574)))))) (ite (or c!1296922 c!1296918) lt!2488578 (Context!12457 call!634730)) (h!73566 s!7408)))))

(assert (= (and d!2177938 c!1296919) b!6991662))

(assert (= (and d!2177938 (not c!1296919)) b!6991664))

(assert (= (and b!6991664 c!1296922) b!6991661))

(assert (= (and b!6991664 (not c!1296922)) b!6991663))

(assert (= (and b!6991663 res!2851506) b!6991666))

(assert (= (and b!6991663 c!1296918) b!6991668))

(assert (= (and b!6991663 (not c!1296918)) b!6991667))

(assert (= (and b!6991667 c!1296921) b!6991660))

(assert (= (and b!6991667 (not c!1296921)) b!6991665))

(assert (= (and b!6991665 c!1296920) b!6991669))

(assert (= (and b!6991665 (not c!1296920)) b!6991659))

(assert (= (or b!6991660 b!6991669) bm!634723))

(assert (= (or b!6991660 b!6991669) bm!634721))

(assert (= (or b!6991668 bm!634721) bm!634725))

(assert (= (or b!6991668 bm!634723) bm!634724))

(assert (= (or b!6991661 b!6991668) bm!634722))

(assert (= (or b!6991661 bm!634725) bm!634726))

(declare-fun m!7681138 () Bool)

(assert (=> bm!634722 m!7681138))

(assert (=> b!6991662 m!7680970))

(declare-fun m!7681140 () Bool)

(assert (=> bm!634724 m!7681140))

(declare-fun m!7681142 () Bool)

(assert (=> b!6991666 m!7681142))

(declare-fun m!7681144 () Bool)

(assert (=> bm!634726 m!7681144))

(assert (=> b!6991527 d!2177938))

(declare-fun call!634734 () (Set Context!12456))

(declare-fun e!4202436 () (Set Context!12456))

(declare-fun b!6991680 () Bool)

(assert (=> b!6991680 (= e!4202436 (set.union call!634734 (derivationStepZipperUp!1882 (Context!12457 (t!380988 (exprs!6728 lt!2488578))) (h!73566 s!7408))))))

(declare-fun d!2177940 () Bool)

(declare-fun c!1296927 () Bool)

(declare-fun e!4202438 () Bool)

(assert (=> d!2177940 (= c!1296927 e!4202438)))

(declare-fun res!2851509 () Bool)

(assert (=> d!2177940 (=> (not res!2851509) (not e!4202438))))

(assert (=> d!2177940 (= res!2851509 (is-Cons!67117 (exprs!6728 lt!2488578)))))

(assert (=> d!2177940 (= (derivationStepZipperUp!1882 lt!2488578 (h!73566 s!7408)) e!4202436)))

(declare-fun bm!634729 () Bool)

(assert (=> bm!634729 (= call!634734 (derivationStepZipperDown!1950 (h!73565 (exprs!6728 lt!2488578)) (Context!12457 (t!380988 (exprs!6728 lt!2488578))) (h!73566 s!7408)))))

(declare-fun b!6991681 () Bool)

(assert (=> b!6991681 (= e!4202438 (nullable!6992 (h!73565 (exprs!6728 lt!2488578))))))

(declare-fun b!6991682 () Bool)

(declare-fun e!4202437 () (Set Context!12456))

(assert (=> b!6991682 (= e!4202437 (as set.empty (Set Context!12456)))))

(declare-fun b!6991683 () Bool)

(assert (=> b!6991683 (= e!4202437 call!634734)))

(declare-fun b!6991684 () Bool)

(assert (=> b!6991684 (= e!4202436 e!4202437)))

(declare-fun c!1296928 () Bool)

(assert (=> b!6991684 (= c!1296928 (is-Cons!67117 (exprs!6728 lt!2488578)))))

(assert (= (and d!2177940 res!2851509) b!6991681))

(assert (= (and d!2177940 c!1296927) b!6991680))

(assert (= (and d!2177940 (not c!1296927)) b!6991684))

(assert (= (and b!6991684 c!1296928) b!6991683))

(assert (= (and b!6991684 (not c!1296928)) b!6991682))

(assert (= (or b!6991680 b!6991683) bm!634729))

(declare-fun m!7681146 () Bool)

(assert (=> b!6991680 m!7681146))

(declare-fun m!7681148 () Bool)

(assert (=> bm!634729 m!7681148))

(declare-fun m!7681150 () Bool)

(assert (=> b!6991681 m!7681150))

(assert (=> b!6991527 d!2177940))

(declare-fun d!2177942 () Bool)

(declare-fun e!4202444 () Bool)

(assert (=> d!2177942 e!4202444))

(declare-fun res!2851515 () Bool)

(assert (=> d!2177942 (=> (not res!2851515) (not e!4202444))))

(declare-fun lt!2488740 () List!67241)

(declare-fun content!13271 (List!67241) (Set Regex!17232))

(assert (=> d!2177942 (= res!2851515 (= (content!13271 lt!2488740) (set.union (content!13271 lt!2488568) (content!13271 (exprs!6728 ct2!306)))))))

(declare-fun e!4202443 () List!67241)

(assert (=> d!2177942 (= lt!2488740 e!4202443)))

(declare-fun c!1296931 () Bool)

(assert (=> d!2177942 (= c!1296931 (is-Nil!67117 lt!2488568))))

(assert (=> d!2177942 (= (++!15177 lt!2488568 (exprs!6728 ct2!306)) lt!2488740)))

(declare-fun b!6991695 () Bool)

(declare-fun res!2851516 () Bool)

(assert (=> b!6991695 (=> (not res!2851516) (not e!4202444))))

(declare-fun size!40911 (List!67241) Int)

(assert (=> b!6991695 (= res!2851516 (= (size!40911 lt!2488740) (+ (size!40911 lt!2488568) (size!40911 (exprs!6728 ct2!306)))))))

(declare-fun b!6991693 () Bool)

(assert (=> b!6991693 (= e!4202443 (exprs!6728 ct2!306))))

(declare-fun b!6991694 () Bool)

(assert (=> b!6991694 (= e!4202443 (Cons!67117 (h!73565 lt!2488568) (++!15177 (t!380988 lt!2488568) (exprs!6728 ct2!306))))))

(declare-fun b!6991696 () Bool)

(assert (=> b!6991696 (= e!4202444 (or (not (= (exprs!6728 ct2!306) Nil!67117)) (= lt!2488740 lt!2488568)))))

(assert (= (and d!2177942 c!1296931) b!6991693))

(assert (= (and d!2177942 (not c!1296931)) b!6991694))

(assert (= (and d!2177942 res!2851515) b!6991695))

(assert (= (and b!6991695 res!2851516) b!6991696))

(declare-fun m!7681152 () Bool)

(assert (=> d!2177942 m!7681152))

(declare-fun m!7681154 () Bool)

(assert (=> d!2177942 m!7681154))

(declare-fun m!7681156 () Bool)

(assert (=> d!2177942 m!7681156))

(declare-fun m!7681158 () Bool)

(assert (=> b!6991695 m!7681158))

(declare-fun m!7681160 () Bool)

(assert (=> b!6991695 m!7681160))

(declare-fun m!7681162 () Bool)

(assert (=> b!6991695 m!7681162))

(declare-fun m!7681164 () Bool)

(assert (=> b!6991694 m!7681164))

(assert (=> b!6991527 d!2177942))

(declare-fun d!2177944 () Bool)

(declare-fun c!1296932 () Bool)

(assert (=> d!2177944 (= c!1296932 (isEmpty!39174 (t!380989 s!7408)))))

(declare-fun e!4202445 () Bool)

(assert (=> d!2177944 (= (matchZipper!2772 lt!2488562 (t!380989 s!7408)) e!4202445)))

(declare-fun b!6991697 () Bool)

(assert (=> b!6991697 (= e!4202445 (nullableZipper!2443 lt!2488562))))

(declare-fun b!6991698 () Bool)

(assert (=> b!6991698 (= e!4202445 (matchZipper!2772 (derivationStepZipper!2712 lt!2488562 (head!14118 (t!380989 s!7408))) (tail!13250 (t!380989 s!7408))))))

(assert (= (and d!2177944 c!1296932) b!6991697))

(assert (= (and d!2177944 (not c!1296932)) b!6991698))

(declare-fun m!7681166 () Bool)

(assert (=> d!2177944 m!7681166))

(declare-fun m!7681168 () Bool)

(assert (=> b!6991697 m!7681168))

(declare-fun m!7681170 () Bool)

(assert (=> b!6991698 m!7681170))

(assert (=> b!6991698 m!7681170))

(declare-fun m!7681172 () Bool)

(assert (=> b!6991698 m!7681172))

(declare-fun m!7681174 () Bool)

(assert (=> b!6991698 m!7681174))

(assert (=> b!6991698 m!7681172))

(assert (=> b!6991698 m!7681174))

(declare-fun m!7681176 () Bool)

(assert (=> b!6991698 m!7681176))

(assert (=> b!6991538 d!2177944))

(assert (=> b!6991538 d!2177936))

(declare-fun d!2177946 () Bool)

(declare-fun c!1296933 () Bool)

(assert (=> d!2177946 (= c!1296933 (isEmpty!39174 s!7408))))

(declare-fun e!4202446 () Bool)

(assert (=> d!2177946 (= (matchZipper!2772 lt!2488594 s!7408) e!4202446)))

(declare-fun b!6991699 () Bool)

(assert (=> b!6991699 (= e!4202446 (nullableZipper!2443 lt!2488594))))

(declare-fun b!6991700 () Bool)

(assert (=> b!6991700 (= e!4202446 (matchZipper!2772 (derivationStepZipper!2712 lt!2488594 (head!14118 s!7408)) (tail!13250 s!7408)))))

(assert (= (and d!2177946 c!1296933) b!6991699))

(assert (= (and d!2177946 (not c!1296933)) b!6991700))

(assert (=> d!2177946 m!7681096))

(declare-fun m!7681178 () Bool)

(assert (=> b!6991699 m!7681178))

(assert (=> b!6991700 m!7681100))

(assert (=> b!6991700 m!7681100))

(declare-fun m!7681180 () Bool)

(assert (=> b!6991700 m!7681180))

(assert (=> b!6991700 m!7681104))

(assert (=> b!6991700 m!7681180))

(assert (=> b!6991700 m!7681104))

(declare-fun m!7681182 () Bool)

(assert (=> b!6991700 m!7681182))

(assert (=> start!672052 d!2177946))

(declare-fun bs!1862456 () Bool)

(declare-fun d!2177948 () Bool)

(assert (= bs!1862456 (and d!2177948 b!6991530)))

(declare-fun lambda!402485 () Int)

(assert (=> bs!1862456 (= lambda!402485 lambda!402414)))

(assert (=> d!2177948 true))

(assert (=> d!2177948 (= (appendTo!353 z1!570 ct2!306) (map!15495 z1!570 lambda!402485))))

(declare-fun bs!1862457 () Bool)

(assert (= bs!1862457 d!2177948))

(declare-fun m!7681184 () Bool)

(assert (=> bs!1862457 m!7681184))

(assert (=> start!672052 d!2177948))

(declare-fun bs!1862458 () Bool)

(declare-fun d!2177950 () Bool)

(assert (= bs!1862458 (and d!2177950 b!6991530)))

(declare-fun lambda!402488 () Int)

(assert (=> bs!1862458 (= lambda!402488 lambda!402415)))

(assert (=> d!2177950 (= (inv!85940 ct2!306) (forall!16149 (exprs!6728 ct2!306) lambda!402488))))

(declare-fun bs!1862459 () Bool)

(assert (= bs!1862459 d!2177950))

(declare-fun m!7681186 () Bool)

(assert (=> bs!1862459 m!7681186))

(assert (=> start!672052 d!2177950))

(declare-fun bs!1862460 () Bool)

(declare-fun d!2177952 () Bool)

(assert (= bs!1862460 (and d!2177952 b!6991530)))

(declare-fun lambda!402489 () Int)

(assert (=> bs!1862460 (= lambda!402489 lambda!402415)))

(declare-fun bs!1862461 () Bool)

(assert (= bs!1862461 (and d!2177952 d!2177950)))

(assert (=> bs!1862461 (= lambda!402489 lambda!402488)))

(assert (=> d!2177952 (= (inv!85940 setElem!47874) (forall!16149 (exprs!6728 setElem!47874) lambda!402489))))

(declare-fun bs!1862462 () Bool)

(assert (= bs!1862462 d!2177952))

(declare-fun m!7681188 () Bool)

(assert (=> bs!1862462 m!7681188))

(assert (=> setNonEmpty!47874 d!2177952))

(declare-fun d!2177954 () Bool)

(declare-fun res!2851521 () Bool)

(declare-fun e!4202451 () Bool)

(assert (=> d!2177954 (=> res!2851521 e!4202451)))

(assert (=> d!2177954 (= res!2851521 (is-Nil!67117 lt!2488568))))

(assert (=> d!2177954 (= (forall!16149 lt!2488568 lambda!402415) e!4202451)))

(declare-fun b!6991705 () Bool)

(declare-fun e!4202452 () Bool)

(assert (=> b!6991705 (= e!4202451 e!4202452)))

(declare-fun res!2851522 () Bool)

(assert (=> b!6991705 (=> (not res!2851522) (not e!4202452))))

(declare-fun dynLambda!26932 (Int Regex!17232) Bool)

(assert (=> b!6991705 (= res!2851522 (dynLambda!26932 lambda!402415 (h!73565 lt!2488568)))))

(declare-fun b!6991706 () Bool)

(assert (=> b!6991706 (= e!4202452 (forall!16149 (t!380988 lt!2488568) lambda!402415))))

(assert (= (and d!2177954 (not res!2851521)) b!6991705))

(assert (= (and b!6991705 res!2851522) b!6991706))

(declare-fun b_lambda!262773 () Bool)

(assert (=> (not b_lambda!262773) (not b!6991705)))

(declare-fun m!7681190 () Bool)

(assert (=> b!6991705 m!7681190))

(declare-fun m!7681192 () Bool)

(assert (=> b!6991706 m!7681192))

(assert (=> b!6991542 d!2177954))

(assert (=> b!6991542 d!2177942))

(declare-fun d!2177956 () Bool)

(declare-fun dynLambda!26933 (Int Context!12456) (Set Context!12456))

(assert (=> d!2177956 (= (flatMap!2218 lt!2488564 lambda!402416) (dynLambda!26933 lambda!402416 lt!2488579))))

(declare-fun lt!2488745 () Unit!161119)

(declare-fun choose!52306 ((Set Context!12456) Context!12456 Int) Unit!161119)

(assert (=> d!2177956 (= lt!2488745 (choose!52306 lt!2488564 lt!2488579 lambda!402416))))

(assert (=> d!2177956 (= lt!2488564 (set.insert lt!2488579 (as set.empty (Set Context!12456))))))

(assert (=> d!2177956 (= (lemmaFlatMapOnSingletonSet!1733 lt!2488564 lt!2488579 lambda!402416) lt!2488745)))

(declare-fun b_lambda!262775 () Bool)

(assert (=> (not b_lambda!262775) (not d!2177956)))

(declare-fun bs!1862463 () Bool)

(assert (= bs!1862463 d!2177956))

(assert (=> bs!1862463 m!7680950))

(declare-fun m!7681194 () Bool)

(assert (=> bs!1862463 m!7681194))

(declare-fun m!7681196 () Bool)

(assert (=> bs!1862463 m!7681196))

(assert (=> bs!1862463 m!7680944))

(assert (=> b!6991542 d!2177956))

(assert (=> b!6991542 d!2177936))

(declare-fun d!2177958 () Bool)

(declare-fun dynLambda!26934 (Int Context!12456) Context!12456)

(assert (=> d!2177958 (= (map!15495 lt!2488564 lambda!402414) (set.insert (dynLambda!26934 lambda!402414 lt!2488579) (as set.empty (Set Context!12456))))))

(declare-fun lt!2488748 () Unit!161119)

(declare-fun choose!52307 ((Set Context!12456) Context!12456 Int) Unit!161119)

(assert (=> d!2177958 (= lt!2488748 (choose!52307 lt!2488564 lt!2488579 lambda!402414))))

(assert (=> d!2177958 (= lt!2488564 (set.insert lt!2488579 (as set.empty (Set Context!12456))))))

(assert (=> d!2177958 (= (lemmaMapOnSingletonSet!297 lt!2488564 lt!2488579 lambda!402414) lt!2488748)))

(declare-fun b_lambda!262777 () Bool)

(assert (=> (not b_lambda!262777) (not d!2177958)))

(declare-fun bs!1862464 () Bool)

(assert (= bs!1862464 d!2177958))

(assert (=> bs!1862464 m!7680936))

(assert (=> bs!1862464 m!7680944))

(declare-fun m!7681198 () Bool)

(assert (=> bs!1862464 m!7681198))

(assert (=> bs!1862464 m!7681198))

(declare-fun m!7681200 () Bool)

(assert (=> bs!1862464 m!7681200))

(declare-fun m!7681202 () Bool)

(assert (=> bs!1862464 m!7681202))

(assert (=> b!6991542 d!2177958))

(declare-fun d!2177960 () Bool)

(declare-fun choose!52308 ((Set Context!12456) Int) (Set Context!12456))

(assert (=> d!2177960 (= (map!15495 lt!2488564 lambda!402414) (choose!52308 lt!2488564 lambda!402414))))

(declare-fun bs!1862465 () Bool)

(assert (= bs!1862465 d!2177960))

(declare-fun m!7681204 () Bool)

(assert (=> bs!1862465 m!7681204))

(assert (=> b!6991542 d!2177960))

(declare-fun d!2177962 () Bool)

(declare-fun choose!52309 ((Set Context!12456) Int) (Set Context!12456))

(assert (=> d!2177962 (= (flatMap!2218 lt!2488564 lambda!402416) (choose!52309 lt!2488564 lambda!402416))))

(declare-fun bs!1862466 () Bool)

(assert (= bs!1862466 d!2177962))

(declare-fun m!7681206 () Bool)

(assert (=> bs!1862466 m!7681206))

(assert (=> b!6991542 d!2177962))

(declare-fun call!634735 () (Set Context!12456))

(declare-fun b!6991707 () Bool)

(declare-fun e!4202453 () (Set Context!12456))

(assert (=> b!6991707 (= e!4202453 (set.union call!634735 (derivationStepZipperUp!1882 (Context!12457 (t!380988 (exprs!6728 lt!2488579))) (h!73566 s!7408))))))

(declare-fun d!2177964 () Bool)

(declare-fun c!1296935 () Bool)

(declare-fun e!4202455 () Bool)

(assert (=> d!2177964 (= c!1296935 e!4202455)))

(declare-fun res!2851523 () Bool)

(assert (=> d!2177964 (=> (not res!2851523) (not e!4202455))))

(assert (=> d!2177964 (= res!2851523 (is-Cons!67117 (exprs!6728 lt!2488579)))))

(assert (=> d!2177964 (= (derivationStepZipperUp!1882 lt!2488579 (h!73566 s!7408)) e!4202453)))

(declare-fun bm!634730 () Bool)

(assert (=> bm!634730 (= call!634735 (derivationStepZipperDown!1950 (h!73565 (exprs!6728 lt!2488579)) (Context!12457 (t!380988 (exprs!6728 lt!2488579))) (h!73566 s!7408)))))

(declare-fun b!6991708 () Bool)

(assert (=> b!6991708 (= e!4202455 (nullable!6992 (h!73565 (exprs!6728 lt!2488579))))))

(declare-fun b!6991709 () Bool)

(declare-fun e!4202454 () (Set Context!12456))

(assert (=> b!6991709 (= e!4202454 (as set.empty (Set Context!12456)))))

(declare-fun b!6991710 () Bool)

(assert (=> b!6991710 (= e!4202454 call!634735)))

(declare-fun b!6991711 () Bool)

(assert (=> b!6991711 (= e!4202453 e!4202454)))

(declare-fun c!1296936 () Bool)

(assert (=> b!6991711 (= c!1296936 (is-Cons!67117 (exprs!6728 lt!2488579)))))

(assert (= (and d!2177964 res!2851523) b!6991708))

(assert (= (and d!2177964 c!1296935) b!6991707))

(assert (= (and d!2177964 (not c!1296935)) b!6991711))

(assert (= (and b!6991711 c!1296936) b!6991710))

(assert (= (and b!6991711 (not c!1296936)) b!6991709))

(assert (= (or b!6991707 b!6991710) bm!634730))

(declare-fun m!7681208 () Bool)

(assert (=> b!6991707 m!7681208))

(declare-fun m!7681210 () Bool)

(assert (=> bm!634730 m!7681210))

(declare-fun m!7681212 () Bool)

(assert (=> b!6991708 m!7681212))

(assert (=> b!6991542 d!2177964))

(declare-fun d!2177966 () Bool)

(declare-fun res!2851524 () Bool)

(declare-fun e!4202456 () Bool)

(assert (=> d!2177966 (=> res!2851524 e!4202456)))

(assert (=> d!2177966 (= res!2851524 (is-Nil!67117 (exprs!6728 ct2!306)))))

(assert (=> d!2177966 (= (forall!16149 (exprs!6728 ct2!306) lambda!402415) e!4202456)))

(declare-fun b!6991712 () Bool)

(declare-fun e!4202457 () Bool)

(assert (=> b!6991712 (= e!4202456 e!4202457)))

(declare-fun res!2851525 () Bool)

(assert (=> b!6991712 (=> (not res!2851525) (not e!4202457))))

(assert (=> b!6991712 (= res!2851525 (dynLambda!26932 lambda!402415 (h!73565 (exprs!6728 ct2!306))))))

(declare-fun b!6991713 () Bool)

(assert (=> b!6991713 (= e!4202457 (forall!16149 (t!380988 (exprs!6728 ct2!306)) lambda!402415))))

(assert (= (and d!2177966 (not res!2851524)) b!6991712))

(assert (= (and b!6991712 res!2851525) b!6991713))

(declare-fun b_lambda!262779 () Bool)

(assert (=> (not b_lambda!262779) (not b!6991712)))

(declare-fun m!7681214 () Bool)

(assert (=> b!6991712 m!7681214))

(declare-fun m!7681216 () Bool)

(assert (=> b!6991713 m!7681216))

(assert (=> b!6991540 d!2177966))

(declare-fun d!2177968 () Bool)

(declare-fun e!4202459 () Bool)

(assert (=> d!2177968 e!4202459))

(declare-fun res!2851526 () Bool)

(assert (=> d!2177968 (=> (not res!2851526) (not e!4202459))))

(declare-fun lt!2488749 () List!67241)

(assert (=> d!2177968 (= res!2851526 (= (content!13271 lt!2488749) (set.union (content!13271 (exprs!6728 lt!2488574)) (content!13271 (exprs!6728 ct2!306)))))))

(declare-fun e!4202458 () List!67241)

(assert (=> d!2177968 (= lt!2488749 e!4202458)))

(declare-fun c!1296937 () Bool)

(assert (=> d!2177968 (= c!1296937 (is-Nil!67117 (exprs!6728 lt!2488574)))))

(assert (=> d!2177968 (= (++!15177 (exprs!6728 lt!2488574) (exprs!6728 ct2!306)) lt!2488749)))

(declare-fun b!6991716 () Bool)

(declare-fun res!2851527 () Bool)

(assert (=> b!6991716 (=> (not res!2851527) (not e!4202459))))

(assert (=> b!6991716 (= res!2851527 (= (size!40911 lt!2488749) (+ (size!40911 (exprs!6728 lt!2488574)) (size!40911 (exprs!6728 ct2!306)))))))

(declare-fun b!6991714 () Bool)

(assert (=> b!6991714 (= e!4202458 (exprs!6728 ct2!306))))

(declare-fun b!6991715 () Bool)

(assert (=> b!6991715 (= e!4202458 (Cons!67117 (h!73565 (exprs!6728 lt!2488574)) (++!15177 (t!380988 (exprs!6728 lt!2488574)) (exprs!6728 ct2!306))))))

(declare-fun b!6991717 () Bool)

(assert (=> b!6991717 (= e!4202459 (or (not (= (exprs!6728 ct2!306) Nil!67117)) (= lt!2488749 (exprs!6728 lt!2488574))))))

(assert (= (and d!2177968 c!1296937) b!6991714))

(assert (= (and d!2177968 (not c!1296937)) b!6991715))

(assert (= (and d!2177968 res!2851526) b!6991716))

(assert (= (and b!6991716 res!2851527) b!6991717))

(declare-fun m!7681218 () Bool)

(assert (=> d!2177968 m!7681218))

(declare-fun m!7681220 () Bool)

(assert (=> d!2177968 m!7681220))

(assert (=> d!2177968 m!7681156))

(declare-fun m!7681222 () Bool)

(assert (=> b!6991716 m!7681222))

(declare-fun m!7681224 () Bool)

(assert (=> b!6991716 m!7681224))

(assert (=> b!6991716 m!7681162))

(declare-fun m!7681226 () Bool)

(assert (=> b!6991715 m!7681226))

(assert (=> b!6991530 d!2177968))

(declare-fun d!2177970 () Bool)

(assert (=> d!2177970 (forall!16149 (++!15177 (exprs!6728 lt!2488574) (exprs!6728 ct2!306)) lambda!402415)))

(declare-fun lt!2488750 () Unit!161119)

(assert (=> d!2177970 (= lt!2488750 (choose!52305 (exprs!6728 lt!2488574) (exprs!6728 ct2!306) lambda!402415))))

(assert (=> d!2177970 (forall!16149 (exprs!6728 lt!2488574) lambda!402415)))

(assert (=> d!2177970 (= (lemmaConcatPreservesForall!568 (exprs!6728 lt!2488574) (exprs!6728 ct2!306) lambda!402415) lt!2488750)))

(declare-fun bs!1862467 () Bool)

(assert (= bs!1862467 d!2177970))

(assert (=> bs!1862467 m!7680956))

(assert (=> bs!1862467 m!7680956))

(declare-fun m!7681228 () Bool)

(assert (=> bs!1862467 m!7681228))

(declare-fun m!7681230 () Bool)

(assert (=> bs!1862467 m!7681230))

(declare-fun m!7681232 () Bool)

(assert (=> bs!1862467 m!7681232))

(assert (=> b!6991530 d!2177970))

(declare-fun d!2177972 () Bool)

(declare-fun e!4202462 () Bool)

(assert (=> d!2177972 e!4202462))

(declare-fun res!2851530 () Bool)

(assert (=> d!2177972 (=> (not res!2851530) (not e!4202462))))

(declare-fun lt!2488753 () Context!12456)

(assert (=> d!2177972 (= res!2851530 (= lt!2488566 (dynLambda!26934 lambda!402414 lt!2488753)))))

(declare-fun choose!52310 ((Set Context!12456) Int Context!12456) Context!12456)

(assert (=> d!2177972 (= lt!2488753 (choose!52310 z1!570 lambda!402414 lt!2488566))))

(assert (=> d!2177972 (set.member lt!2488566 (map!15495 z1!570 lambda!402414))))

(assert (=> d!2177972 (= (mapPost2!87 z1!570 lambda!402414 lt!2488566) lt!2488753)))

(declare-fun b!6991721 () Bool)

(assert (=> b!6991721 (= e!4202462 (set.member lt!2488753 z1!570))))

(assert (= (and d!2177972 res!2851530) b!6991721))

(declare-fun b_lambda!262781 () Bool)

(assert (=> (not b_lambda!262781) (not d!2177972)))

(declare-fun m!7681234 () Bool)

(assert (=> d!2177972 m!7681234))

(declare-fun m!7681236 () Bool)

(assert (=> d!2177972 m!7681236))

(declare-fun m!7681238 () Bool)

(assert (=> d!2177972 m!7681238))

(declare-fun m!7681240 () Bool)

(assert (=> d!2177972 m!7681240))

(declare-fun m!7681242 () Bool)

(assert (=> b!6991721 m!7681242))

(assert (=> b!6991530 d!2177972))

(declare-fun d!2177974 () Bool)

(assert (=> d!2177974 (= (isEmpty!39172 (exprs!6728 lt!2488574)) (is-Nil!67117 (exprs!6728 lt!2488574)))))

(assert (=> b!6991524 d!2177974))

(declare-fun d!2177976 () Bool)

(declare-fun c!1296938 () Bool)

(assert (=> d!2177976 (= c!1296938 (isEmpty!39174 s!7408))))

(declare-fun e!4202463 () Bool)

(assert (=> d!2177976 (= (matchZipper!2772 lt!2488563 s!7408) e!4202463)))

(declare-fun b!6991722 () Bool)

(assert (=> b!6991722 (= e!4202463 (nullableZipper!2443 lt!2488563))))

(declare-fun b!6991723 () Bool)

(assert (=> b!6991723 (= e!4202463 (matchZipper!2772 (derivationStepZipper!2712 lt!2488563 (head!14118 s!7408)) (tail!13250 s!7408)))))

(assert (= (and d!2177976 c!1296938) b!6991722))

(assert (= (and d!2177976 (not c!1296938)) b!6991723))

(assert (=> d!2177976 m!7681096))

(declare-fun m!7681244 () Bool)

(assert (=> b!6991722 m!7681244))

(assert (=> b!6991723 m!7681100))

(assert (=> b!6991723 m!7681100))

(declare-fun m!7681246 () Bool)

(assert (=> b!6991723 m!7681246))

(assert (=> b!6991723 m!7681104))

(assert (=> b!6991723 m!7681246))

(assert (=> b!6991723 m!7681104))

(declare-fun m!7681248 () Bool)

(assert (=> b!6991723 m!7681248))

(assert (=> b!6991544 d!2177976))

(assert (=> b!6991544 d!2177936))

(assert (=> b!6991532 d!2177970))

(assert (=> b!6991523 d!2177944))

(assert (=> b!6991536 d!2177944))

(assert (=> b!6991536 d!2177936))

(declare-fun d!2177978 () Bool)

(assert (=> d!2177978 (= (flatMap!2218 lt!2488580 lambda!402416) (dynLambda!26933 lambda!402416 lt!2488581))))

(declare-fun lt!2488754 () Unit!161119)

(assert (=> d!2177978 (= lt!2488754 (choose!52306 lt!2488580 lt!2488581 lambda!402416))))

(assert (=> d!2177978 (= lt!2488580 (set.insert lt!2488581 (as set.empty (Set Context!12456))))))

(assert (=> d!2177978 (= (lemmaFlatMapOnSingletonSet!1733 lt!2488580 lt!2488581 lambda!402416) lt!2488754)))

(declare-fun b_lambda!262783 () Bool)

(assert (=> (not b_lambda!262783) (not d!2177978)))

(declare-fun bs!1862468 () Bool)

(assert (= bs!1862468 d!2177978))

(assert (=> bs!1862468 m!7680986))

(declare-fun m!7681250 () Bool)

(assert (=> bs!1862468 m!7681250))

(declare-fun m!7681252 () Bool)

(assert (=> bs!1862468 m!7681252))

(assert (=> bs!1862468 m!7680962))

(assert (=> b!6991535 d!2177978))

(declare-fun d!2177980 () Bool)

(assert (=> d!2177980 (= (flatMap!2218 lt!2488580 lambda!402416) (choose!52309 lt!2488580 lambda!402416))))

(declare-fun bs!1862469 () Bool)

(assert (= bs!1862469 d!2177980))

(declare-fun m!7681254 () Bool)

(assert (=> bs!1862469 m!7681254))

(assert (=> b!6991535 d!2177980))

(declare-fun bs!1862470 () Bool)

(declare-fun d!2177982 () Bool)

(assert (= bs!1862470 (and d!2177982 b!6991535)))

(declare-fun lambda!402492 () Int)

(assert (=> bs!1862470 (= lambda!402492 lambda!402416)))

(assert (=> d!2177982 true))

(assert (=> d!2177982 (= (derivationStepZipper!2712 lt!2488580 (h!73566 s!7408)) (flatMap!2218 lt!2488580 lambda!402492))))

(declare-fun bs!1862471 () Bool)

(assert (= bs!1862471 d!2177982))

(declare-fun m!7681256 () Bool)

(assert (=> bs!1862471 m!7681256))

(assert (=> b!6991535 d!2177982))

(declare-fun call!634736 () (Set Context!12456))

(declare-fun b!6991726 () Bool)

(declare-fun e!4202464 () (Set Context!12456))

(assert (=> b!6991726 (= e!4202464 (set.union call!634736 (derivationStepZipperUp!1882 (Context!12457 (t!380988 (exprs!6728 lt!2488581))) (h!73566 s!7408))))))

(declare-fun d!2177984 () Bool)

(declare-fun c!1296941 () Bool)

(declare-fun e!4202466 () Bool)

(assert (=> d!2177984 (= c!1296941 e!4202466)))

(declare-fun res!2851531 () Bool)

(assert (=> d!2177984 (=> (not res!2851531) (not e!4202466))))

(assert (=> d!2177984 (= res!2851531 (is-Cons!67117 (exprs!6728 lt!2488581)))))

(assert (=> d!2177984 (= (derivationStepZipperUp!1882 lt!2488581 (h!73566 s!7408)) e!4202464)))

(declare-fun bm!634731 () Bool)

(assert (=> bm!634731 (= call!634736 (derivationStepZipperDown!1950 (h!73565 (exprs!6728 lt!2488581)) (Context!12457 (t!380988 (exprs!6728 lt!2488581))) (h!73566 s!7408)))))

(declare-fun b!6991727 () Bool)

(assert (=> b!6991727 (= e!4202466 (nullable!6992 (h!73565 (exprs!6728 lt!2488581))))))

(declare-fun b!6991728 () Bool)

(declare-fun e!4202465 () (Set Context!12456))

(assert (=> b!6991728 (= e!4202465 (as set.empty (Set Context!12456)))))

(declare-fun b!6991729 () Bool)

(assert (=> b!6991729 (= e!4202465 call!634736)))

(declare-fun b!6991730 () Bool)

(assert (=> b!6991730 (= e!4202464 e!4202465)))

(declare-fun c!1296942 () Bool)

(assert (=> b!6991730 (= c!1296942 (is-Cons!67117 (exprs!6728 lt!2488581)))))

(assert (= (and d!2177984 res!2851531) b!6991727))

(assert (= (and d!2177984 c!1296941) b!6991726))

(assert (= (and d!2177984 (not c!1296941)) b!6991730))

(assert (= (and b!6991730 c!1296942) b!6991729))

(assert (= (and b!6991730 (not c!1296942)) b!6991728))

(assert (= (or b!6991726 b!6991729) bm!634731))

(declare-fun m!7681258 () Bool)

(assert (=> b!6991726 m!7681258))

(declare-fun m!7681260 () Bool)

(assert (=> bm!634731 m!7681260))

(declare-fun m!7681262 () Bool)

(assert (=> b!6991727 m!7681262))

(assert (=> b!6991535 d!2177984))

(assert (=> b!6991535 d!2177970))

(declare-fun bs!1862472 () Bool)

(declare-fun d!2177986 () Bool)

(assert (= bs!1862472 (and d!2177986 b!6991535)))

(declare-fun lambda!402493 () Int)

(assert (=> bs!1862472 (= lambda!402493 lambda!402416)))

(declare-fun bs!1862473 () Bool)

(assert (= bs!1862473 (and d!2177986 d!2177982)))

(assert (=> bs!1862473 (= lambda!402493 lambda!402492)))

(assert (=> d!2177986 true))

(assert (=> d!2177986 (= (derivationStepZipper!2712 lt!2488563 (h!73566 s!7408)) (flatMap!2218 lt!2488563 lambda!402493))))

(declare-fun bs!1862474 () Bool)

(assert (= bs!1862474 d!2177986))

(declare-fun m!7681264 () Bool)

(assert (=> bs!1862474 m!7681264))

(assert (=> b!6991525 d!2177986))

(declare-fun d!2177988 () Bool)

(assert (=> d!2177988 (= (flatMap!2218 lt!2488563 lambda!402416) (choose!52309 lt!2488563 lambda!402416))))

(declare-fun bs!1862475 () Bool)

(assert (= bs!1862475 d!2177988))

(declare-fun m!7681266 () Bool)

(assert (=> bs!1862475 m!7681266))

(assert (=> b!6991525 d!2177988))

(assert (=> b!6991525 d!2177936))

(assert (=> b!6991525 d!2177940))

(declare-fun d!2177990 () Bool)

(assert (=> d!2177990 (= (flatMap!2218 lt!2488563 lambda!402416) (dynLambda!26933 lambda!402416 lt!2488578))))

(declare-fun lt!2488755 () Unit!161119)

(assert (=> d!2177990 (= lt!2488755 (choose!52306 lt!2488563 lt!2488578 lambda!402416))))

(assert (=> d!2177990 (= lt!2488563 (set.insert lt!2488578 (as set.empty (Set Context!12456))))))

(assert (=> d!2177990 (= (lemmaFlatMapOnSingletonSet!1733 lt!2488563 lt!2488578 lambda!402416) lt!2488755)))

(declare-fun b_lambda!262785 () Bool)

(assert (=> (not b_lambda!262785) (not d!2177990)))

(declare-fun bs!1862476 () Bool)

(assert (= bs!1862476 d!2177990))

(assert (=> bs!1862476 m!7680966))

(declare-fun m!7681268 () Bool)

(assert (=> bs!1862476 m!7681268))

(declare-fun m!7681270 () Bool)

(assert (=> bs!1862476 m!7681270))

(assert (=> bs!1862476 m!7680970))

(assert (=> b!6991525 d!2177990))

(declare-fun d!2177992 () Bool)

(declare-fun c!1296943 () Bool)

(assert (=> d!2177992 (= c!1296943 (isEmpty!39174 (t!380989 s!7408)))))

(declare-fun e!4202467 () Bool)

(assert (=> d!2177992 (= (matchZipper!2772 lt!2488570 (t!380989 s!7408)) e!4202467)))

(declare-fun b!6991731 () Bool)

(assert (=> b!6991731 (= e!4202467 (nullableZipper!2443 lt!2488570))))

(declare-fun b!6991732 () Bool)

(assert (=> b!6991732 (= e!4202467 (matchZipper!2772 (derivationStepZipper!2712 lt!2488570 (head!14118 (t!380989 s!7408))) (tail!13250 (t!380989 s!7408))))))

(assert (= (and d!2177992 c!1296943) b!6991731))

(assert (= (and d!2177992 (not c!1296943)) b!6991732))

(assert (=> d!2177992 m!7681166))

(declare-fun m!7681272 () Bool)

(assert (=> b!6991731 m!7681272))

(assert (=> b!6991732 m!7681170))

(assert (=> b!6991732 m!7681170))

(declare-fun m!7681274 () Bool)

(assert (=> b!6991732 m!7681274))

(assert (=> b!6991732 m!7681174))

(assert (=> b!6991732 m!7681274))

(assert (=> b!6991732 m!7681174))

(declare-fun m!7681276 () Bool)

(assert (=> b!6991732 m!7681276))

(assert (=> b!6991526 d!2177992))

(declare-fun d!2177994 () Bool)

(declare-fun e!4202470 () Bool)

(assert (=> d!2177994 (= (matchZipper!2772 (set.union lt!2488575 lt!2488562) (t!380989 s!7408)) e!4202470)))

(declare-fun res!2851534 () Bool)

(assert (=> d!2177994 (=> res!2851534 e!4202470)))

(assert (=> d!2177994 (= res!2851534 (matchZipper!2772 lt!2488575 (t!380989 s!7408)))))

(declare-fun lt!2488758 () Unit!161119)

(declare-fun choose!52311 ((Set Context!12456) (Set Context!12456) List!67242) Unit!161119)

(assert (=> d!2177994 (= lt!2488758 (choose!52311 lt!2488575 lt!2488562 (t!380989 s!7408)))))

(assert (=> d!2177994 (= (lemmaZipperConcatMatchesSameAsBothZippers!1405 lt!2488575 lt!2488562 (t!380989 s!7408)) lt!2488758)))

(declare-fun b!6991735 () Bool)

(assert (=> b!6991735 (= e!4202470 (matchZipper!2772 lt!2488562 (t!380989 s!7408)))))

(assert (= (and d!2177994 (not res!2851534)) b!6991735))

(declare-fun m!7681278 () Bool)

(assert (=> d!2177994 m!7681278))

(assert (=> d!2177994 m!7680928))

(declare-fun m!7681280 () Bool)

(assert (=> d!2177994 m!7681280))

(assert (=> b!6991735 m!7680932))

(assert (=> b!6991526 d!2177994))

(declare-fun d!2177996 () Bool)

(declare-fun c!1296944 () Bool)

(assert (=> d!2177996 (= c!1296944 (isEmpty!39174 (t!380989 s!7408)))))

(declare-fun e!4202471 () Bool)

(assert (=> d!2177996 (= (matchZipper!2772 lt!2488558 (t!380989 s!7408)) e!4202471)))

(declare-fun b!6991736 () Bool)

(assert (=> b!6991736 (= e!4202471 (nullableZipper!2443 lt!2488558))))

(declare-fun b!6991737 () Bool)

(assert (=> b!6991737 (= e!4202471 (matchZipper!2772 (derivationStepZipper!2712 lt!2488558 (head!14118 (t!380989 s!7408))) (tail!13250 (t!380989 s!7408))))))

(assert (= (and d!2177996 c!1296944) b!6991736))

(assert (= (and d!2177996 (not c!1296944)) b!6991737))

(assert (=> d!2177996 m!7681166))

(declare-fun m!7681282 () Bool)

(assert (=> b!6991736 m!7681282))

(assert (=> b!6991737 m!7681170))

(assert (=> b!6991737 m!7681170))

(declare-fun m!7681284 () Bool)

(assert (=> b!6991737 m!7681284))

(assert (=> b!6991737 m!7681174))

(assert (=> b!6991737 m!7681284))

(assert (=> b!6991737 m!7681174))

(declare-fun m!7681286 () Bool)

(assert (=> b!6991737 m!7681286))

(assert (=> b!6991526 d!2177996))

(assert (=> b!6991526 d!2177936))

(declare-fun d!2177998 () Bool)

(declare-fun c!1296945 () Bool)

(assert (=> d!2177998 (= c!1296945 (isEmpty!39174 (t!380989 s!7408)))))

(declare-fun e!4202472 () Bool)

(assert (=> d!2177998 (= (matchZipper!2772 lt!2488575 (t!380989 s!7408)) e!4202472)))

(declare-fun b!6991738 () Bool)

(assert (=> b!6991738 (= e!4202472 (nullableZipper!2443 lt!2488575))))

(declare-fun b!6991739 () Bool)

(assert (=> b!6991739 (= e!4202472 (matchZipper!2772 (derivationStepZipper!2712 lt!2488575 (head!14118 (t!380989 s!7408))) (tail!13250 (t!380989 s!7408))))))

(assert (= (and d!2177998 c!1296945) b!6991738))

(assert (= (and d!2177998 (not c!1296945)) b!6991739))

(assert (=> d!2177998 m!7681166))

(declare-fun m!7681288 () Bool)

(assert (=> b!6991738 m!7681288))

(assert (=> b!6991739 m!7681170))

(assert (=> b!6991739 m!7681170))

(declare-fun m!7681290 () Bool)

(assert (=> b!6991739 m!7681290))

(assert (=> b!6991739 m!7681174))

(assert (=> b!6991739 m!7681290))

(assert (=> b!6991739 m!7681174))

(declare-fun m!7681292 () Bool)

(assert (=> b!6991739 m!7681292))

(assert (=> b!6991526 d!2177998))

(declare-fun b!6991744 () Bool)

(declare-fun e!4202475 () Bool)

(declare-fun tp!1930019 () Bool)

(assert (=> b!6991744 (= e!4202475 (and tp_is_empty!43689 tp!1930019))))

(assert (=> b!6991533 (= tp!1930003 e!4202475)))

(assert (= (and b!6991533 (is-Cons!67118 (t!380989 s!7408))) b!6991744))

(declare-fun condSetEmpty!47880 () Bool)

(assert (=> setNonEmpty!47874 (= condSetEmpty!47880 (= setRest!47874 (as set.empty (Set Context!12456))))))

(declare-fun setRes!47880 () Bool)

(assert (=> setNonEmpty!47874 (= tp!1930002 setRes!47880)))

(declare-fun setIsEmpty!47880 () Bool)

(assert (=> setIsEmpty!47880 setRes!47880))

(declare-fun setElem!47880 () Context!12456)

(declare-fun tp!1930025 () Bool)

(declare-fun e!4202478 () Bool)

(declare-fun setNonEmpty!47880 () Bool)

(assert (=> setNonEmpty!47880 (= setRes!47880 (and tp!1930025 (inv!85940 setElem!47880) e!4202478))))

(declare-fun setRest!47880 () (Set Context!12456))

(assert (=> setNonEmpty!47880 (= setRest!47874 (set.union (set.insert setElem!47880 (as set.empty (Set Context!12456))) setRest!47880))))

(declare-fun b!6991749 () Bool)

(declare-fun tp!1930024 () Bool)

(assert (=> b!6991749 (= e!4202478 tp!1930024)))

(assert (= (and setNonEmpty!47874 condSetEmpty!47880) setIsEmpty!47880))

(assert (= (and setNonEmpty!47874 (not condSetEmpty!47880)) setNonEmpty!47880))

(assert (= setNonEmpty!47880 b!6991749))

(declare-fun m!7681294 () Bool)

(assert (=> setNonEmpty!47880 m!7681294))

(declare-fun b!6991754 () Bool)

(declare-fun e!4202481 () Bool)

(declare-fun tp!1930030 () Bool)

(declare-fun tp!1930031 () Bool)

(assert (=> b!6991754 (= e!4202481 (and tp!1930030 tp!1930031))))

(assert (=> b!6991537 (= tp!1930001 e!4202481)))

(assert (= (and b!6991537 (is-Cons!67117 (exprs!6728 ct2!306))) b!6991754))

(declare-fun b!6991755 () Bool)

(declare-fun e!4202482 () Bool)

(declare-fun tp!1930032 () Bool)

(declare-fun tp!1930033 () Bool)

(assert (=> b!6991755 (= e!4202482 (and tp!1930032 tp!1930033))))

(assert (=> b!6991541 (= tp!1930004 e!4202482)))

(assert (= (and b!6991541 (is-Cons!67117 (exprs!6728 setElem!47874))) b!6991755))

(declare-fun b_lambda!262787 () Bool)

(assert (= b_lambda!262773 (or b!6991530 b_lambda!262787)))

(declare-fun bs!1862477 () Bool)

(declare-fun d!2178000 () Bool)

(assert (= bs!1862477 (and d!2178000 b!6991530)))

(declare-fun validRegex!8865 (Regex!17232) Bool)

(assert (=> bs!1862477 (= (dynLambda!26932 lambda!402415 (h!73565 lt!2488568)) (validRegex!8865 (h!73565 lt!2488568)))))

(declare-fun m!7681296 () Bool)

(assert (=> bs!1862477 m!7681296))

(assert (=> b!6991705 d!2178000))

(declare-fun b_lambda!262789 () Bool)

(assert (= b_lambda!262783 (or b!6991535 b_lambda!262789)))

(declare-fun bs!1862478 () Bool)

(declare-fun d!2178002 () Bool)

(assert (= bs!1862478 (and d!2178002 b!6991535)))

(assert (=> bs!1862478 (= (dynLambda!26933 lambda!402416 lt!2488581) (derivationStepZipperUp!1882 lt!2488581 (h!73566 s!7408)))))

(assert (=> bs!1862478 m!7680988))

(assert (=> d!2177978 d!2178002))

(declare-fun b_lambda!262791 () Bool)

(assert (= b_lambda!262777 (or b!6991530 b_lambda!262791)))

(declare-fun bs!1862479 () Bool)

(declare-fun d!2178004 () Bool)

(assert (= bs!1862479 (and d!2178004 b!6991530)))

(declare-fun lt!2488759 () Unit!161119)

(assert (=> bs!1862479 (= lt!2488759 (lemmaConcatPreservesForall!568 (exprs!6728 lt!2488579) (exprs!6728 ct2!306) lambda!402415))))

(assert (=> bs!1862479 (= (dynLambda!26934 lambda!402414 lt!2488579) (Context!12457 (++!15177 (exprs!6728 lt!2488579) (exprs!6728 ct2!306))))))

(declare-fun m!7681298 () Bool)

(assert (=> bs!1862479 m!7681298))

(declare-fun m!7681300 () Bool)

(assert (=> bs!1862479 m!7681300))

(assert (=> d!2177958 d!2178004))

(declare-fun b_lambda!262793 () Bool)

(assert (= b_lambda!262775 (or b!6991535 b_lambda!262793)))

(declare-fun bs!1862480 () Bool)

(declare-fun d!2178006 () Bool)

(assert (= bs!1862480 (and d!2178006 b!6991535)))

(assert (=> bs!1862480 (= (dynLambda!26933 lambda!402416 lt!2488579) (derivationStepZipperUp!1882 lt!2488579 (h!73566 s!7408)))))

(assert (=> bs!1862480 m!7680934))

(assert (=> d!2177956 d!2178006))

(declare-fun b_lambda!262795 () Bool)

(assert (= b_lambda!262779 (or b!6991530 b_lambda!262795)))

(declare-fun bs!1862481 () Bool)

(declare-fun d!2178008 () Bool)

(assert (= bs!1862481 (and d!2178008 b!6991530)))

(assert (=> bs!1862481 (= (dynLambda!26932 lambda!402415 (h!73565 (exprs!6728 ct2!306))) (validRegex!8865 (h!73565 (exprs!6728 ct2!306))))))

(declare-fun m!7681302 () Bool)

(assert (=> bs!1862481 m!7681302))

(assert (=> b!6991712 d!2178008))

(declare-fun b_lambda!262797 () Bool)

(assert (= b_lambda!262771 (or b!6991528 b_lambda!262797)))

(declare-fun bs!1862482 () Bool)

(declare-fun d!2178010 () Bool)

(assert (= bs!1862482 (and d!2178010 b!6991528)))

(assert (=> bs!1862482 (= (dynLambda!26931 lambda!402413 lt!2488734) (matchZipper!2772 (set.insert lt!2488734 (as set.empty (Set Context!12456))) s!7408))))

(declare-fun m!7681304 () Bool)

(assert (=> bs!1862482 m!7681304))

(assert (=> bs!1862482 m!7681304))

(declare-fun m!7681306 () Bool)

(assert (=> bs!1862482 m!7681306))

(assert (=> d!2177930 d!2178010))

(declare-fun b_lambda!262799 () Bool)

(assert (= b_lambda!262785 (or b!6991535 b_lambda!262799)))

(declare-fun bs!1862483 () Bool)

(declare-fun d!2178012 () Bool)

(assert (= bs!1862483 (and d!2178012 b!6991535)))

(assert (=> bs!1862483 (= (dynLambda!26933 lambda!402416 lt!2488578) (derivationStepZipperUp!1882 lt!2488578 (h!73566 s!7408)))))

(assert (=> bs!1862483 m!7680974))

(assert (=> d!2177990 d!2178012))

(declare-fun b_lambda!262801 () Bool)

(assert (= b_lambda!262781 (or b!6991530 b_lambda!262801)))

(declare-fun bs!1862484 () Bool)

(declare-fun d!2178014 () Bool)

(assert (= bs!1862484 (and d!2178014 b!6991530)))

(declare-fun lt!2488760 () Unit!161119)

(assert (=> bs!1862484 (= lt!2488760 (lemmaConcatPreservesForall!568 (exprs!6728 lt!2488753) (exprs!6728 ct2!306) lambda!402415))))

(assert (=> bs!1862484 (= (dynLambda!26934 lambda!402414 lt!2488753) (Context!12457 (++!15177 (exprs!6728 lt!2488753) (exprs!6728 ct2!306))))))

(declare-fun m!7681308 () Bool)

(assert (=> bs!1862484 m!7681308))

(declare-fun m!7681310 () Bool)

(assert (=> bs!1862484 m!7681310))

(assert (=> d!2177972 d!2178014))

(push 1)

(assert (not d!2177936))

(assert (not b!6991713))

(assert (not d!2177952))

(assert (not b_lambda!262801))

(assert (not b_lambda!262797))

(assert (not b!6991715))

(assert (not b!6991708))

(assert (not b!6991698))

(assert (not b!6991695))

(assert (not d!2177996))

(assert (not b!6991666))

(assert tp_is_empty!43689)

(assert (not b!6991706))

(assert (not b!6991739))

(assert (not b!6991633))

(assert (not bs!1862479))

(assert (not d!2177970))

(assert (not bm!634722))

(assert (not d!2177948))

(assert (not b_lambda!262799))

(assert (not b!6991731))

(assert (not b!6991707))

(assert (not b!6991727))

(assert (not d!2177992))

(assert (not b!6991738))

(assert (not b!6991694))

(assert (not b!6991700))

(assert (not bs!1862482))

(assert (not d!2177930))

(assert (not d!2177960))

(assert (not bm!634731))

(assert (not d!2177946))

(assert (not d!2177958))

(assert (not b!6991735))

(assert (not b_lambda!262793))

(assert (not b!6991732))

(assert (not b!6991754))

(assert (not d!2177928))

(assert (not d!2177978))

(assert (not bs!1862484))

(assert (not bs!1862478))

(assert (not d!2177926))

(assert (not bs!1862481))

(assert (not d!2177968))

(assert (not b!6991681))

(assert (not b!6991716))

(assert (not b!6991680))

(assert (not b!6991699))

(assert (not setNonEmpty!47880))

(assert (not b_lambda!262787))

(assert (not d!2177924))

(assert (not bs!1862483))

(assert (not b!6991736))

(assert (not bs!1862480))

(assert (not d!2177932))

(assert (not d!2177922))

(assert (not b!6991723))

(assert (not d!2177988))

(assert (not d!2177956))

(assert (not b!6991755))

(assert (not bs!1862477))

(assert (not b!6991737))

(assert (not b_lambda!262789))

(assert (not d!2177994))

(assert (not bm!634726))

(assert (not bm!634729))

(assert (not d!2177998))

(assert (not d!2177982))

(assert (not d!2177942))

(assert (not b!6991628))

(assert (not d!2177976))

(assert (not d!2177944))

(assert (not b_lambda!262795))

(assert (not b_lambda!262791))

(assert (not d!2177986))

(assert (not b!6991627))

(assert (not bm!634730))

(assert (not b!6991722))

(assert (not d!2177962))

(assert (not d!2177972))

(assert (not b!6991744))

(assert (not b!6991749))

(assert (not d!2177950))

(assert (not d!2177980))

(assert (not bm!634724))

(assert (not b!6991726))

(assert (not b!6991697))

(assert (not d!2177990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

