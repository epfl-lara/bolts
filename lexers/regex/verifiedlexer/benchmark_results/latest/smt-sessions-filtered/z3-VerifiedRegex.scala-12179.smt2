; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!685496 () Bool)

(assert start!685496)

(declare-fun b!7063576 () Bool)

(assert (=> b!7063576 true))

(declare-fun b!7063570 () Bool)

(assert (=> b!7063570 true))

(declare-fun b!7063579 () Bool)

(assert (=> b!7063579 true))

(declare-fun bs!1879381 () Bool)

(declare-fun b!7063592 () Bool)

(assert (= bs!1879381 (and b!7063592 b!7063576)))

(declare-fun lambda!422908 () Int)

(declare-fun lambda!422904 () Int)

(assert (=> bs!1879381 (not (= lambda!422908 lambda!422904))))

(declare-fun b!7063565 () Bool)

(declare-fun e!4246552 () Bool)

(declare-fun e!4246549 () Bool)

(assert (=> b!7063565 (= e!4246552 e!4246549)))

(declare-fun res!2884170 () Bool)

(assert (=> b!7063565 (=> res!2884170 e!4246549)))

(declare-fun lt!2538441 () Int)

(declare-datatypes ((C!35480 0))(
  ( (C!35481 (val!27442 Int)) )
))
(declare-datatypes ((Regex!17605 0))(
  ( (ElementMatch!17605 (c!1316777 C!35480)) (Concat!26450 (regOne!35722 Regex!17605) (regTwo!35722 Regex!17605)) (EmptyExpr!17605) (Star!17605 (reg!17934 Regex!17605)) (EmptyLang!17605) (Union!17605 (regOne!35723 Regex!17605) (regTwo!35723 Regex!17605)) )
))
(declare-datatypes ((List!68341 0))(
  ( (Nil!68217) (Cons!68217 (h!74665 Regex!17605) (t!382122 List!68341)) )
))
(declare-datatypes ((Context!13202 0))(
  ( (Context!13203 (exprs!7101 List!68341)) )
))
(declare-fun lt!2538450 () Context!13202)

(declare-fun contextDepthTotal!541 (Context!13202) Int)

(assert (=> b!7063565 (= res!2884170 (<= lt!2538441 (contextDepthTotal!541 lt!2538450)))))

(declare-fun lt!2538437 () Int)

(assert (=> b!7063565 (<= lt!2538441 lt!2538437)))

(declare-datatypes ((List!68342 0))(
  ( (Nil!68218) (Cons!68218 (h!74666 Context!13202) (t!382123 List!68342)) )
))
(declare-fun lt!2538467 () List!68342)

(declare-fun zipperDepthTotal!570 (List!68342) Int)

(assert (=> b!7063565 (= lt!2538437 (zipperDepthTotal!570 lt!2538467))))

(declare-fun lt!2538488 () Context!13202)

(assert (=> b!7063565 (= lt!2538441 (contextDepthTotal!541 lt!2538488))))

(declare-datatypes ((Unit!161888 0))(
  ( (Unit!161889) )
))
(declare-fun lt!2538465 () Unit!161888)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!108 (List!68342 Context!13202) Unit!161888)

(assert (=> b!7063565 (= lt!2538465 (lemmaTotalDepthZipperLargerThanOfAnyContext!108 lt!2538467 lt!2538488))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13202))

(declare-fun toList!10946 ((InoxSet Context!13202)) List!68342)

(assert (=> b!7063565 (= lt!2538467 (toList!10946 z1!570))))

(declare-fun lt!2538487 () Unit!161888)

(declare-fun lt!2538499 () List!68341)

(declare-fun ct2!306 () Context!13202)

(declare-fun lambda!422906 () Int)

(declare-fun lemmaConcatPreservesForall!916 (List!68341 List!68341 Int) Unit!161888)

(assert (=> b!7063565 (= lt!2538487 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lt!2538472 () Unit!161888)

(assert (=> b!7063565 (= lt!2538472 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lt!2538456 () Unit!161888)

(assert (=> b!7063565 (= lt!2538456 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lambda!422907 () Int)

(declare-fun lt!2538464 () (InoxSet Context!13202))

(declare-datatypes ((List!68343 0))(
  ( (Nil!68219) (Cons!68219 (h!74667 C!35480) (t!382124 List!68343)) )
))
(declare-fun s!7408 () List!68343)

(declare-fun flatMap!2531 ((InoxSet Context!13202) Int) (InoxSet Context!13202))

(declare-fun derivationStepZipperUp!2189 (Context!13202 C!35480) (InoxSet Context!13202))

(assert (=> b!7063565 (= (flatMap!2531 lt!2538464 lambda!422907) (derivationStepZipperUp!2189 lt!2538450 (h!74667 s!7408)))))

(declare-fun lt!2538492 () Unit!161888)

(declare-fun lemmaFlatMapOnSingletonSet!2040 ((InoxSet Context!13202) Context!13202 Int) Unit!161888)

(assert (=> b!7063565 (= lt!2538492 (lemmaFlatMapOnSingletonSet!2040 lt!2538464 lt!2538450 lambda!422907))))

(declare-fun lambda!422905 () Int)

(declare-fun map!15940 ((InoxSet Context!13202) Int) (InoxSet Context!13202))

(declare-fun ++!15707 (List!68341 List!68341) List!68341)

(assert (=> b!7063565 (= (map!15940 lt!2538464 lambda!422905) (store ((as const (Array Context!13202 Bool)) false) (Context!13203 (++!15707 lt!2538499 (exprs!7101 ct2!306))) true))))

(declare-fun lt!2538485 () Unit!161888)

(assert (=> b!7063565 (= lt!2538485 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lt!2538459 () Unit!161888)

(declare-fun lemmaMapOnSingletonSet!422 ((InoxSet Context!13202) Context!13202 Int) Unit!161888)

(assert (=> b!7063565 (= lt!2538459 (lemmaMapOnSingletonSet!422 lt!2538464 lt!2538450 lambda!422905))))

(assert (=> b!7063565 (= lt!2538464 (store ((as const (Array Context!13202 Bool)) false) lt!2538450 true))))

(declare-fun b!7063566 () Bool)

(declare-fun e!4246538 () Bool)

(declare-fun tp!1941315 () Bool)

(assert (=> b!7063566 (= e!4246538 tp!1941315)))

(declare-fun b!7063567 () Bool)

(declare-fun res!2884175 () Bool)

(declare-fun e!4246536 () Bool)

(assert (=> b!7063567 (=> res!2884175 e!4246536)))

(declare-fun lt!2538471 () (InoxSet Context!13202))

(declare-datatypes ((tuple2!68212 0))(
  ( (tuple2!68213 (_1!37409 List!68343) (_2!37409 List!68343)) )
))
(declare-fun lt!2538481 () tuple2!68212)

(declare-fun matchZipper!3145 ((InoxSet Context!13202) List!68343) Bool)

(assert (=> b!7063567 (= res!2884175 (not (matchZipper!3145 lt!2538471 (_2!37409 lt!2538481))))))

(declare-fun b!7063568 () Bool)

(declare-fun res!2884160 () Bool)

(assert (=> b!7063568 (=> res!2884160 e!4246536)))

(declare-fun ++!15708 (List!68343 List!68343) List!68343)

(assert (=> b!7063568 (= res!2884160 (not (= (++!15708 (_1!37409 lt!2538481) (_2!37409 lt!2538481)) s!7408)))))

(declare-fun b!7063569 () Bool)

(declare-fun e!4246550 () Bool)

(declare-fun e!4246553 () Bool)

(assert (=> b!7063569 (= e!4246550 e!4246553)))

(declare-fun res!2884168 () Bool)

(assert (=> b!7063569 (=> res!2884168 e!4246553)))

(declare-fun lt!2538496 () (InoxSet Context!13202))

(declare-fun lt!2538497 () (InoxSet Context!13202))

(assert (=> b!7063569 (= res!2884168 (not (= lt!2538496 lt!2538497)))))

(declare-fun lt!2538475 () (InoxSet Context!13202))

(declare-fun lt!2538453 () (InoxSet Context!13202))

(assert (=> b!7063569 (= lt!2538497 ((_ map or) lt!2538475 lt!2538453))))

(declare-fun lt!2538470 () Context!13202)

(assert (=> b!7063569 (= lt!2538453 (derivationStepZipperUp!2189 lt!2538470 (h!74667 s!7408)))))

(declare-fun derivationStepZipperDown!2239 (Regex!17605 Context!13202 C!35480) (InoxSet Context!13202))

(assert (=> b!7063569 (= lt!2538475 (derivationStepZipperDown!2239 (h!74665 (exprs!7101 lt!2538488)) lt!2538470 (h!74667 s!7408)))))

(assert (=> b!7063569 (= lt!2538470 (Context!13203 (++!15707 lt!2538499 (exprs!7101 ct2!306))))))

(declare-fun lt!2538489 () Unit!161888)

(assert (=> b!7063569 (= lt!2538489 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lt!2538458 () Unit!161888)

(assert (=> b!7063569 (= lt!2538458 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun bm!641837 () Bool)

(declare-fun call!641843 () Bool)

(declare-datatypes ((Option!16938 0))(
  ( (None!16937) (Some!16937 (v!53231 tuple2!68212)) )
))
(declare-fun call!641844 () Option!16938)

(declare-fun isDefined!13639 (Option!16938) Bool)

(assert (=> bm!641837 (= call!641843 (isDefined!13639 call!641844))))

(declare-fun e!4246551 () Bool)

(declare-fun e!4246548 () Bool)

(assert (=> b!7063570 (= e!4246551 e!4246548)))

(declare-fun res!2884179 () Bool)

(assert (=> b!7063570 (=> res!2884179 e!4246548)))

(declare-fun lt!2538442 () Context!13202)

(declare-fun lt!2538444 () Context!13202)

(assert (=> b!7063570 (= res!2884179 (or (not (= lt!2538442 lt!2538444)) (not (select z1!570 lt!2538488))))))

(assert (=> b!7063570 (= lt!2538442 (Context!13203 (++!15707 (exprs!7101 lt!2538488) (exprs!7101 ct2!306))))))

(declare-fun lt!2538462 () Unit!161888)

(assert (=> b!7063570 (= lt!2538462 (lemmaConcatPreservesForall!916 (exprs!7101 lt!2538488) (exprs!7101 ct2!306) lambda!422906))))

(declare-fun mapPost2!434 ((InoxSet Context!13202) Int Context!13202) Context!13202)

(assert (=> b!7063570 (= lt!2538488 (mapPost2!434 z1!570 lambda!422905 lt!2538444))))

(declare-fun b!7063571 () Bool)

(declare-fun e!4246542 () Bool)

(declare-fun lt!2538439 () (InoxSet Context!13202))

(declare-fun lt!2538443 () List!68343)

(assert (=> b!7063571 (= e!4246542 (matchZipper!3145 lt!2538439 lt!2538443))))

(declare-fun b!7063572 () Bool)

(assert (=> b!7063572 (= e!4246549 e!4246536)))

(declare-fun res!2884173 () Bool)

(assert (=> b!7063572 (=> res!2884173 e!4246536)))

(assert (=> b!7063572 (= res!2884173 (not (matchZipper!3145 lt!2538464 (_1!37409 lt!2538481))))))

(declare-fun lt!2538445 () Option!16938)

(declare-fun get!23891 (Option!16938) tuple2!68212)

(assert (=> b!7063572 (= lt!2538481 (get!23891 lt!2538445))))

(assert (=> b!7063572 (isDefined!13639 lt!2538445)))

(declare-fun findConcatSeparationZippers!454 ((InoxSet Context!13202) (InoxSet Context!13202) List!68343 List!68343 List!68343) Option!16938)

(assert (=> b!7063572 (= lt!2538445 (findConcatSeparationZippers!454 lt!2538464 lt!2538471 Nil!68219 s!7408 s!7408))))

(assert (=> b!7063572 (= lt!2538471 (store ((as const (Array Context!13202 Bool)) false) ct2!306 true))))

(declare-fun lt!2538451 () Unit!161888)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!442 ((InoxSet Context!13202) Context!13202 List!68343) Unit!161888)

(assert (=> b!7063572 (= lt!2538451 (lemmaConcatZipperMatchesStringThenFindConcatDefined!442 lt!2538464 ct2!306 s!7408))))

(declare-fun b!7063573 () Bool)

(declare-fun res!2884177 () Bool)

(assert (=> b!7063573 (=> res!2884177 e!4246551)))

(declare-fun lt!2538469 () (InoxSet Context!13202))

(assert (=> b!7063573 (= res!2884177 (not (select lt!2538469 lt!2538444)))))

(declare-fun b!7063575 () Bool)

(declare-fun e!4246546 () Bool)

(assert (=> b!7063575 (= e!4246546 e!4246550)))

(declare-fun res!2884178 () Bool)

(assert (=> b!7063575 (=> res!2884178 e!4246550)))

(declare-fun nullable!7288 (Regex!17605) Bool)

(assert (=> b!7063575 (= res!2884178 (not (nullable!7288 (h!74665 (exprs!7101 lt!2538488)))))))

(assert (=> b!7063575 (= lt!2538450 (Context!13203 lt!2538499))))

(declare-fun tail!13758 (List!68341) List!68341)

(assert (=> b!7063575 (= lt!2538499 (tail!13758 (exprs!7101 lt!2538488)))))

(declare-fun e!4246539 () Bool)

(assert (=> b!7063576 (= e!4246539 (not e!4246551))))

(declare-fun res!2884164 () Bool)

(assert (=> b!7063576 (=> res!2884164 e!4246551)))

(declare-fun lt!2538490 () (InoxSet Context!13202))

(assert (=> b!7063576 (= res!2884164 (not (matchZipper!3145 lt!2538490 s!7408)))))

(assert (=> b!7063576 (= lt!2538490 (store ((as const (Array Context!13202 Bool)) false) lt!2538444 true))))

(declare-fun getWitness!1684 ((InoxSet Context!13202) Int) Context!13202)

(assert (=> b!7063576 (= lt!2538444 (getWitness!1684 lt!2538469 lambda!422904))))

(declare-fun lt!2538482 () List!68342)

(declare-fun exists!3620 (List!68342 Int) Bool)

(assert (=> b!7063576 (exists!3620 lt!2538482 lambda!422904)))

(declare-fun lt!2538473 () Unit!161888)

(declare-fun lemmaZipperMatchesExistsMatchingContext!526 (List!68342 List!68343) Unit!161888)

(assert (=> b!7063576 (= lt!2538473 (lemmaZipperMatchesExistsMatchingContext!526 lt!2538482 s!7408))))

(assert (=> b!7063576 (= lt!2538482 (toList!10946 lt!2538469))))

(declare-fun b!7063577 () Bool)

(declare-fun res!2884159 () Bool)

(assert (=> b!7063577 (=> res!2884159 e!4246546)))

(get-info :version)

(assert (=> b!7063577 (= res!2884159 (not ((_ is Cons!68217) (exprs!7101 lt!2538488))))))

(declare-fun b!7063578 () Bool)

(declare-fun e!4246545 () Bool)

(declare-fun tp_is_empty!44435 () Bool)

(declare-fun tp!1941318 () Bool)

(assert (=> b!7063578 (= e!4246545 (and tp_is_empty!44435 tp!1941318))))

(declare-fun e!4246537 () Bool)

(assert (=> b!7063579 (= e!4246537 e!4246546)))

(declare-fun res!2884167 () Bool)

(assert (=> b!7063579 (=> res!2884167 e!4246546)))

(declare-fun lt!2538483 () (InoxSet Context!13202))

(declare-fun derivationStepZipper!3055 ((InoxSet Context!13202) C!35480) (InoxSet Context!13202))

(assert (=> b!7063579 (= res!2884167 (not (= (derivationStepZipper!3055 lt!2538483 (h!74667 s!7408)) lt!2538496)))))

(assert (=> b!7063579 (= (flatMap!2531 lt!2538483 lambda!422907) (derivationStepZipperUp!2189 lt!2538442 (h!74667 s!7408)))))

(declare-fun lt!2538480 () Unit!161888)

(assert (=> b!7063579 (= lt!2538480 (lemmaFlatMapOnSingletonSet!2040 lt!2538483 lt!2538442 lambda!422907))))

(assert (=> b!7063579 (= lt!2538496 (derivationStepZipperUp!2189 lt!2538442 (h!74667 s!7408)))))

(declare-fun lt!2538498 () Unit!161888)

(assert (=> b!7063579 (= lt!2538498 (lemmaConcatPreservesForall!916 (exprs!7101 lt!2538488) (exprs!7101 ct2!306) lambda!422906))))

(declare-fun c!1316776 () Bool)

(declare-fun call!641842 () Unit!161888)

(declare-fun bm!641838 () Bool)

(declare-fun lt!2538448 () (InoxSet Context!13202))

(declare-fun lt!2538493 () (InoxSet Context!13202))

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!54 ((InoxSet Context!13202) (InoxSet Context!13202) List!68343 List!68343 List!68343 List!68343 List!68343) Unit!161888)

(assert (=> bm!641838 (= call!641842 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!54 (ite c!1316776 lt!2538493 lt!2538448) lt!2538471 (_1!37409 lt!2538481) (_2!37409 lt!2538481) s!7408 Nil!68219 s!7408))))

(declare-fun b!7063580 () Bool)

(assert (=> b!7063580 (= e!4246548 e!4246537)))

(declare-fun res!2884163 () Bool)

(assert (=> b!7063580 (=> res!2884163 e!4246537)))

(assert (=> b!7063580 (= res!2884163 (not (= lt!2538483 lt!2538490)))))

(assert (=> b!7063580 (= lt!2538483 (store ((as const (Array Context!13202 Bool)) false) lt!2538442 true))))

(declare-fun lt!2538449 () Unit!161888)

(assert (=> b!7063580 (= lt!2538449 (lemmaConcatPreservesForall!916 (exprs!7101 lt!2538488) (exprs!7101 ct2!306) lambda!422906))))

(declare-fun setIsEmpty!50055 () Bool)

(declare-fun setRes!50055 () Bool)

(assert (=> setIsEmpty!50055 setRes!50055))

(declare-fun tp!1941317 () Bool)

(declare-fun setElem!50055 () Context!13202)

(declare-fun e!4246541 () Bool)

(declare-fun setNonEmpty!50055 () Bool)

(declare-fun inv!86871 (Context!13202) Bool)

(assert (=> setNonEmpty!50055 (= setRes!50055 (and tp!1941317 (inv!86871 setElem!50055) e!4246541))))

(declare-fun setRest!50055 () (InoxSet Context!13202))

(assert (=> setNonEmpty!50055 (= z1!570 ((_ map or) (store ((as const (Array Context!13202 Bool)) false) setElem!50055 true) setRest!50055))))

(declare-fun b!7063581 () Bool)

(declare-fun res!2884176 () Bool)

(assert (=> b!7063581 (=> (not res!2884176) (not e!4246539))))

(assert (=> b!7063581 (= res!2884176 ((_ is Cons!68219) s!7408))))

(declare-fun b!7063582 () Bool)

(declare-fun e!4246547 () Bool)

(declare-fun e!4246543 () Bool)

(assert (=> b!7063582 (= e!4246547 e!4246543)))

(declare-fun res!2884162 () Bool)

(assert (=> b!7063582 (=> res!2884162 e!4246543)))

(assert (=> b!7063582 (= res!2884162 (not (matchZipper!3145 lt!2538453 (t!382124 s!7408))))))

(declare-fun lt!2538460 () Unit!161888)

(assert (=> b!7063582 (= lt!2538460 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun b!7063583 () Bool)

(declare-fun res!2884165 () Bool)

(assert (=> b!7063583 (=> res!2884165 e!4246547)))

(declare-fun lt!2538463 () Bool)

(assert (=> b!7063583 (= res!2884165 (not lt!2538463))))

(declare-fun b!7063584 () Bool)

(declare-fun e!4246535 () Unit!161888)

(declare-fun Unit!161890 () Unit!161888)

(assert (=> b!7063584 (= e!4246535 Unit!161890)))

(assert (=> b!7063584 (= lt!2538448 (store ((as const (Array Context!13202 Bool)) false) lt!2538488 true))))

(declare-fun lt!2538457 () Unit!161888)

(assert (=> b!7063584 (= lt!2538457 (lemmaFlatMapOnSingletonSet!2040 lt!2538448 lt!2538488 lambda!422907))))

(assert (=> b!7063584 (= (flatMap!2531 lt!2538448 lambda!422907) (derivationStepZipperUp!2189 lt!2538488 (h!74667 s!7408)))))

(declare-fun lt!2538478 () (InoxSet Context!13202))

(assert (=> b!7063584 (= lt!2538478 (derivationStepZipperDown!2239 (h!74665 (exprs!7101 lt!2538488)) lt!2538450 (h!74667 s!7408)))))

(assert (=> b!7063584 (= lt!2538439 (derivationStepZipperUp!2189 lt!2538450 (h!74667 s!7408)))))

(declare-fun tail!13759 (List!68343) List!68343)

(assert (=> b!7063584 (= lt!2538443 (tail!13759 (_1!37409 lt!2538481)))))

(declare-fun lt!2538484 () Unit!161888)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1618 ((InoxSet Context!13202) (InoxSet Context!13202) List!68343) Unit!161888)

(assert (=> b!7063584 (= lt!2538484 (lemmaZipperConcatMatchesSameAsBothZippers!1618 lt!2538478 lt!2538439 lt!2538443))))

(declare-fun res!2884171 () Bool)

(assert (=> b!7063584 (= res!2884171 (matchZipper!3145 lt!2538478 lt!2538443))))

(assert (=> b!7063584 (=> res!2884171 e!4246542)))

(assert (=> b!7063584 (= (matchZipper!3145 ((_ map or) lt!2538478 lt!2538439) lt!2538443) e!4246542)))

(declare-fun lt!2538452 () Unit!161888)

(assert (=> b!7063584 (= lt!2538452 (lemmaFlatMapOnSingletonSet!2040 lt!2538464 lt!2538450 lambda!422907))))

(assert (=> b!7063584 (= (flatMap!2531 lt!2538464 lambda!422907) (derivationStepZipperUp!2189 lt!2538450 (h!74667 s!7408)))))

(declare-fun lt!2538468 () Unit!161888)

(assert (=> b!7063584 (= lt!2538468 call!641842)))

(assert (=> b!7063584 call!641843))

(declare-fun b!7063585 () Bool)

(declare-fun e!4246534 () Bool)

(assert (=> b!7063585 (= e!4246534 (not (matchZipper!3145 lt!2538453 (t!382124 s!7408))))))

(declare-fun lt!2538438 () Unit!161888)

(assert (=> b!7063585 (= lt!2538438 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun b!7063586 () Bool)

(declare-fun e!4246544 () Bool)

(assert (=> b!7063586 (= e!4246544 e!4246552)))

(declare-fun res!2884166 () Bool)

(assert (=> b!7063586 (=> res!2884166 e!4246552)))

(declare-fun lt!2538461 () (InoxSet Context!13202))

(assert (=> b!7063586 (= res!2884166 (not (matchZipper!3145 lt!2538461 s!7408)))))

(declare-fun lt!2538479 () Unit!161888)

(assert (=> b!7063586 (= lt!2538479 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun b!7063587 () Bool)

(assert (=> b!7063587 (= e!4246553 e!4246547)))

(declare-fun res!2884174 () Bool)

(assert (=> b!7063587 (=> res!2884174 e!4246547)))

(assert (=> b!7063587 (= res!2884174 e!4246534)))

(declare-fun res!2884172 () Bool)

(assert (=> b!7063587 (=> (not res!2884172) (not e!4246534))))

(declare-fun lt!2538491 () Bool)

(assert (=> b!7063587 (= res!2884172 (not (= lt!2538463 lt!2538491)))))

(assert (=> b!7063587 (= lt!2538463 (matchZipper!3145 lt!2538496 (t!382124 s!7408)))))

(declare-fun lt!2538447 () Unit!161888)

(assert (=> b!7063587 (= lt!2538447 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun e!4246540 () Bool)

(assert (=> b!7063587 (= (matchZipper!3145 lt!2538497 (t!382124 s!7408)) e!4246540)))

(declare-fun res!2884161 () Bool)

(assert (=> b!7063587 (=> res!2884161 e!4246540)))

(assert (=> b!7063587 (= res!2884161 lt!2538491)))

(assert (=> b!7063587 (= lt!2538491 (matchZipper!3145 lt!2538475 (t!382124 s!7408)))))

(declare-fun lt!2538436 () Unit!161888)

(assert (=> b!7063587 (= lt!2538436 (lemmaZipperConcatMatchesSameAsBothZippers!1618 lt!2538475 lt!2538453 (t!382124 s!7408)))))

(declare-fun lt!2538486 () Unit!161888)

(assert (=> b!7063587 (= lt!2538486 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lt!2538466 () Unit!161888)

(assert (=> b!7063587 (= lt!2538466 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun b!7063588 () Bool)

(declare-fun tp!1941316 () Bool)

(assert (=> b!7063588 (= e!4246541 tp!1941316)))

(declare-fun bm!641839 () Bool)

(assert (=> bm!641839 (= call!641844 (findConcatSeparationZippers!454 (ite c!1316776 lt!2538493 lt!2538448) lt!2538471 Nil!68219 s!7408 s!7408))))

(declare-fun b!7063574 () Bool)

(assert (=> b!7063574 (= e!4246543 e!4246544)))

(declare-fun res!2884180 () Bool)

(assert (=> b!7063574 (=> res!2884180 e!4246544)))

(assert (=> b!7063574 (= res!2884180 (not (= (derivationStepZipper!3055 lt!2538461 (h!74667 s!7408)) lt!2538453)))))

(declare-fun lt!2538476 () Unit!161888)

(assert (=> b!7063574 (= lt!2538476 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lt!2538440 () Unit!161888)

(assert (=> b!7063574 (= lt!2538440 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(assert (=> b!7063574 (= (flatMap!2531 lt!2538461 lambda!422907) (derivationStepZipperUp!2189 lt!2538470 (h!74667 s!7408)))))

(declare-fun lt!2538455 () Unit!161888)

(assert (=> b!7063574 (= lt!2538455 (lemmaFlatMapOnSingletonSet!2040 lt!2538461 lt!2538470 lambda!422907))))

(assert (=> b!7063574 (= lt!2538461 (store ((as const (Array Context!13202 Bool)) false) lt!2538470 true))))

(declare-fun lt!2538454 () Unit!161888)

(assert (=> b!7063574 (= lt!2538454 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun lt!2538474 () Unit!161888)

(assert (=> b!7063574 (= lt!2538474 (lemmaConcatPreservesForall!916 lt!2538499 (exprs!7101 ct2!306) lambda!422906))))

(declare-fun res!2884182 () Bool)

(assert (=> start!685496 (=> (not res!2884182) (not e!4246539))))

(assert (=> start!685496 (= res!2884182 (matchZipper!3145 lt!2538469 s!7408))))

(declare-fun appendTo!726 ((InoxSet Context!13202) Context!13202) (InoxSet Context!13202))

(assert (=> start!685496 (= lt!2538469 (appendTo!726 z1!570 ct2!306))))

(assert (=> start!685496 e!4246539))

(declare-fun condSetEmpty!50055 () Bool)

(assert (=> start!685496 (= condSetEmpty!50055 (= z1!570 ((as const (Array Context!13202 Bool)) false)))))

(assert (=> start!685496 setRes!50055))

(assert (=> start!685496 (and (inv!86871 ct2!306) e!4246538)))

(assert (=> start!685496 e!4246545))

(declare-fun b!7063589 () Bool)

(assert (=> b!7063589 (= e!4246540 (matchZipper!3145 lt!2538453 (t!382124 s!7408)))))

(declare-fun b!7063590 () Bool)

(assert (=> b!7063590 (= e!4246536 true)))

(declare-fun lt!2538494 () Unit!161888)

(assert (=> b!7063590 (= lt!2538494 e!4246535)))

(declare-fun isEmpty!39800 (List!68343) Bool)

(assert (=> b!7063590 (= c!1316776 (isEmpty!39800 (_1!37409 lt!2538481)))))

(declare-fun b!7063591 () Bool)

(declare-fun res!2884181 () Bool)

(assert (=> b!7063591 (=> res!2884181 e!4246549)))

(assert (=> b!7063591 (= res!2884181 (>= (zipperDepthTotal!570 (Cons!68218 lt!2538450 Nil!68218)) lt!2538437))))

(declare-fun Unit!161891 () Unit!161888)

(assert (=> b!7063592 (= e!4246535 Unit!161891)))

(declare-fun lt!2538495 () Context!13202)

(assert (=> b!7063592 (= lt!2538495 (getWitness!1684 lt!2538464 lambda!422908))))

(declare-fun lt!2538500 () Unit!161888)

(declare-fun lemmaContainsThenExists!137 ((InoxSet Context!13202) Context!13202 Int) Unit!161888)

(assert (=> b!7063592 (= lt!2538500 (lemmaContainsThenExists!137 lt!2538464 lt!2538450 lambda!422908))))

(declare-fun exists!3621 ((InoxSet Context!13202) Int) Bool)

(assert (=> b!7063592 (exists!3621 lt!2538464 lambda!422908)))

(assert (=> b!7063592 (= lt!2538493 (store ((as const (Array Context!13202 Bool)) false) lt!2538488 true))))

(declare-fun lt!2538446 () Unit!161888)

(assert (=> b!7063592 (= lt!2538446 (lemmaContainsThenExists!137 lt!2538493 lt!2538488 lambda!422908))))

(assert (=> b!7063592 (exists!3621 lt!2538493 lambda!422908)))

(declare-fun lt!2538477 () Unit!161888)

(assert (=> b!7063592 (= lt!2538477 call!641842)))

(assert (=> b!7063592 call!641843))

(declare-fun b!7063593 () Bool)

(declare-fun res!2884169 () Bool)

(assert (=> b!7063593 (=> res!2884169 e!4246546)))

(declare-fun isEmpty!39801 (List!68341) Bool)

(assert (=> b!7063593 (= res!2884169 (isEmpty!39801 (exprs!7101 lt!2538488)))))

(assert (= (and start!685496 res!2884182) b!7063581))

(assert (= (and b!7063581 res!2884176) b!7063576))

(assert (= (and b!7063576 (not res!2884164)) b!7063573))

(assert (= (and b!7063573 (not res!2884177)) b!7063570))

(assert (= (and b!7063570 (not res!2884179)) b!7063580))

(assert (= (and b!7063580 (not res!2884163)) b!7063579))

(assert (= (and b!7063579 (not res!2884167)) b!7063577))

(assert (= (and b!7063577 (not res!2884159)) b!7063593))

(assert (= (and b!7063593 (not res!2884169)) b!7063575))

(assert (= (and b!7063575 (not res!2884178)) b!7063569))

(assert (= (and b!7063569 (not res!2884168)) b!7063587))

(assert (= (and b!7063587 (not res!2884161)) b!7063589))

(assert (= (and b!7063587 res!2884172) b!7063585))

(assert (= (and b!7063587 (not res!2884174)) b!7063583))

(assert (= (and b!7063583 (not res!2884165)) b!7063582))

(assert (= (and b!7063582 (not res!2884162)) b!7063574))

(assert (= (and b!7063574 (not res!2884180)) b!7063586))

(assert (= (and b!7063586 (not res!2884166)) b!7063565))

(assert (= (and b!7063565 (not res!2884170)) b!7063591))

(assert (= (and b!7063591 (not res!2884181)) b!7063572))

(assert (= (and b!7063572 (not res!2884173)) b!7063567))

(assert (= (and b!7063567 (not res!2884175)) b!7063568))

(assert (= (and b!7063568 (not res!2884160)) b!7063590))

(assert (= (and b!7063590 c!1316776) b!7063592))

(assert (= (and b!7063590 (not c!1316776)) b!7063584))

(assert (= (and b!7063584 (not res!2884171)) b!7063571))

(assert (= (or b!7063592 b!7063584) bm!641838))

(assert (= (or b!7063592 b!7063584) bm!641839))

(assert (= (or b!7063592 b!7063584) bm!641837))

(assert (= (and start!685496 condSetEmpty!50055) setIsEmpty!50055))

(assert (= (and start!685496 (not condSetEmpty!50055)) setNonEmpty!50055))

(assert (= setNonEmpty!50055 b!7063588))

(assert (= start!685496 b!7063566))

(assert (= (and start!685496 ((_ is Cons!68219) s!7408)) b!7063578))

(declare-fun m!7785058 () Bool)

(assert (=> setNonEmpty!50055 m!7785058))

(declare-fun m!7785060 () Bool)

(assert (=> b!7063586 m!7785060))

(declare-fun m!7785062 () Bool)

(assert (=> b!7063586 m!7785062))

(declare-fun m!7785064 () Bool)

(assert (=> b!7063575 m!7785064))

(declare-fun m!7785066 () Bool)

(assert (=> b!7063575 m!7785066))

(declare-fun m!7785068 () Bool)

(assert (=> b!7063593 m!7785068))

(declare-fun m!7785070 () Bool)

(assert (=> b!7063571 m!7785070))

(declare-fun m!7785072 () Bool)

(assert (=> b!7063584 m!7785072))

(declare-fun m!7785074 () Bool)

(assert (=> b!7063584 m!7785074))

(declare-fun m!7785076 () Bool)

(assert (=> b!7063584 m!7785076))

(declare-fun m!7785078 () Bool)

(assert (=> b!7063584 m!7785078))

(declare-fun m!7785080 () Bool)

(assert (=> b!7063584 m!7785080))

(declare-fun m!7785082 () Bool)

(assert (=> b!7063584 m!7785082))

(declare-fun m!7785084 () Bool)

(assert (=> b!7063584 m!7785084))

(declare-fun m!7785086 () Bool)

(assert (=> b!7063584 m!7785086))

(declare-fun m!7785088 () Bool)

(assert (=> b!7063584 m!7785088))

(declare-fun m!7785090 () Bool)

(assert (=> b!7063584 m!7785090))

(declare-fun m!7785092 () Bool)

(assert (=> b!7063584 m!7785092))

(declare-fun m!7785094 () Bool)

(assert (=> b!7063584 m!7785094))

(declare-fun m!7785096 () Bool)

(assert (=> b!7063576 m!7785096))

(declare-fun m!7785098 () Bool)

(assert (=> b!7063576 m!7785098))

(declare-fun m!7785100 () Bool)

(assert (=> b!7063576 m!7785100))

(declare-fun m!7785102 () Bool)

(assert (=> b!7063576 m!7785102))

(declare-fun m!7785104 () Bool)

(assert (=> b!7063576 m!7785104))

(declare-fun m!7785106 () Bool)

(assert (=> b!7063576 m!7785106))

(declare-fun m!7785108 () Bool)

(assert (=> start!685496 m!7785108))

(declare-fun m!7785110 () Bool)

(assert (=> start!685496 m!7785110))

(declare-fun m!7785112 () Bool)

(assert (=> start!685496 m!7785112))

(declare-fun m!7785114 () Bool)

(assert (=> b!7063573 m!7785114))

(declare-fun m!7785116 () Bool)

(assert (=> b!7063587 m!7785116))

(declare-fun m!7785118 () Bool)

(assert (=> b!7063587 m!7785118))

(declare-fun m!7785120 () Bool)

(assert (=> b!7063587 m!7785120))

(declare-fun m!7785122 () Bool)

(assert (=> b!7063587 m!7785122))

(assert (=> b!7063587 m!7785062))

(assert (=> b!7063587 m!7785062))

(assert (=> b!7063587 m!7785062))

(declare-fun m!7785124 () Bool)

(assert (=> b!7063567 m!7785124))

(assert (=> b!7063592 m!7785072))

(declare-fun m!7785126 () Bool)

(assert (=> b!7063592 m!7785126))

(declare-fun m!7785128 () Bool)

(assert (=> b!7063592 m!7785128))

(declare-fun m!7785130 () Bool)

(assert (=> b!7063592 m!7785130))

(declare-fun m!7785132 () Bool)

(assert (=> b!7063592 m!7785132))

(declare-fun m!7785134 () Bool)

(assert (=> b!7063592 m!7785134))

(declare-fun m!7785136 () Bool)

(assert (=> b!7063569 m!7785136))

(declare-fun m!7785138 () Bool)

(assert (=> b!7063569 m!7785138))

(assert (=> b!7063569 m!7785062))

(assert (=> b!7063569 m!7785062))

(declare-fun m!7785140 () Bool)

(assert (=> b!7063569 m!7785140))

(declare-fun m!7785142 () Bool)

(assert (=> b!7063589 m!7785142))

(declare-fun m!7785144 () Bool)

(assert (=> b!7063579 m!7785144))

(declare-fun m!7785146 () Bool)

(assert (=> b!7063579 m!7785146))

(declare-fun m!7785148 () Bool)

(assert (=> b!7063579 m!7785148))

(declare-fun m!7785150 () Bool)

(assert (=> b!7063579 m!7785150))

(declare-fun m!7785152 () Bool)

(assert (=> b!7063579 m!7785152))

(declare-fun m!7785154 () Bool)

(assert (=> bm!641838 m!7785154))

(assert (=> b!7063585 m!7785142))

(assert (=> b!7063585 m!7785062))

(declare-fun m!7785156 () Bool)

(assert (=> bm!641839 m!7785156))

(assert (=> b!7063582 m!7785142))

(assert (=> b!7063582 m!7785062))

(declare-fun m!7785158 () Bool)

(assert (=> b!7063570 m!7785158))

(declare-fun m!7785160 () Bool)

(assert (=> b!7063570 m!7785160))

(assert (=> b!7063570 m!7785144))

(declare-fun m!7785162 () Bool)

(assert (=> b!7063570 m!7785162))

(declare-fun m!7785164 () Bool)

(assert (=> b!7063590 m!7785164))

(declare-fun m!7785166 () Bool)

(assert (=> b!7063565 m!7785166))

(assert (=> b!7063565 m!7785062))

(declare-fun m!7785168 () Bool)

(assert (=> b!7063565 m!7785168))

(assert (=> b!7063565 m!7785062))

(declare-fun m!7785170 () Bool)

(assert (=> b!7063565 m!7785170))

(declare-fun m!7785172 () Bool)

(assert (=> b!7063565 m!7785172))

(assert (=> b!7063565 m!7785076))

(assert (=> b!7063565 m!7785140))

(assert (=> b!7063565 m!7785062))

(assert (=> b!7063565 m!7785078))

(assert (=> b!7063565 m!7785088))

(declare-fun m!7785174 () Bool)

(assert (=> b!7063565 m!7785174))

(declare-fun m!7785176 () Bool)

(assert (=> b!7063565 m!7785176))

(declare-fun m!7785178 () Bool)

(assert (=> b!7063565 m!7785178))

(declare-fun m!7785180 () Bool)

(assert (=> b!7063565 m!7785180))

(declare-fun m!7785182 () Bool)

(assert (=> b!7063565 m!7785182))

(assert (=> b!7063565 m!7785062))

(declare-fun m!7785184 () Bool)

(assert (=> bm!641837 m!7785184))

(declare-fun m!7785186 () Bool)

(assert (=> b!7063568 m!7785186))

(declare-fun m!7785188 () Bool)

(assert (=> b!7063580 m!7785188))

(assert (=> b!7063580 m!7785144))

(declare-fun m!7785190 () Bool)

(assert (=> b!7063572 m!7785190))

(declare-fun m!7785192 () Bool)

(assert (=> b!7063572 m!7785192))

(declare-fun m!7785194 () Bool)

(assert (=> b!7063572 m!7785194))

(declare-fun m!7785196 () Bool)

(assert (=> b!7063572 m!7785196))

(declare-fun m!7785198 () Bool)

(assert (=> b!7063572 m!7785198))

(declare-fun m!7785200 () Bool)

(assert (=> b!7063572 m!7785200))

(declare-fun m!7785202 () Bool)

(assert (=> b!7063591 m!7785202))

(assert (=> b!7063574 m!7785062))

(declare-fun m!7785204 () Bool)

(assert (=> b!7063574 m!7785204))

(declare-fun m!7785206 () Bool)

(assert (=> b!7063574 m!7785206))

(assert (=> b!7063574 m!7785062))

(assert (=> b!7063574 m!7785062))

(assert (=> b!7063574 m!7785138))

(declare-fun m!7785208 () Bool)

(assert (=> b!7063574 m!7785208))

(assert (=> b!7063574 m!7785062))

(declare-fun m!7785210 () Bool)

(assert (=> b!7063574 m!7785210))

(check-sat (not b!7063579) (not b!7063593) (not b!7063582) (not b!7063570) (not b!7063585) (not b!7063576) (not bm!641837) (not b!7063565) (not b!7063578) (not b!7063575) (not b!7063586) (not b!7063587) (not bm!641839) (not b!7063566) (not b!7063590) (not b!7063588) (not b!7063584) (not b!7063592) (not bm!641838) (not b!7063580) (not b!7063589) (not b!7063567) tp_is_empty!44435 (not start!685496) (not b!7063571) (not b!7063572) (not b!7063591) (not b!7063569) (not b!7063568) (not setNonEmpty!50055) (not b!7063574))
(check-sat)
