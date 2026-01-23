; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676318 () Bool)

(assert start!676318)

(declare-fun b!7016642 () Bool)

(assert (=> b!7016642 true))

(declare-fun b!7016650 () Bool)

(assert (=> b!7016650 true))

(declare-fun b!7016643 () Bool)

(assert (=> b!7016643 true))

(declare-fun e!4217853 () Bool)

(declare-fun e!4217857 () Bool)

(assert (=> b!7016642 (= e!4217853 (not e!4217857))))

(declare-fun res!2863672 () Bool)

(assert (=> b!7016642 (=> res!2863672 e!4217857)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34976 0))(
  ( (C!34977 (val!27190 Int)) )
))
(declare-datatypes ((Regex!17353 0))(
  ( (ElementMatch!17353 (c!1303704 C!34976)) (Concat!26198 (regOne!35218 Regex!17353) (regTwo!35218 Regex!17353)) (EmptyExpr!17353) (Star!17353 (reg!17682 Regex!17353)) (EmptyLang!17353) (Union!17353 (regOne!35219 Regex!17353) (regTwo!35219 Regex!17353)) )
))
(declare-datatypes ((List!67604 0))(
  ( (Nil!67480) (Cons!67480 (h!73928 Regex!17353) (t!381359 List!67604)) )
))
(declare-datatypes ((Context!12698 0))(
  ( (Context!12699 (exprs!6849 List!67604)) )
))
(declare-fun lt!2508517 () (InoxSet Context!12698))

(declare-datatypes ((List!67605 0))(
  ( (Nil!67481) (Cons!67481 (h!73929 C!34976) (t!381360 List!67605)) )
))
(declare-fun s!7408 () List!67605)

(declare-fun matchZipper!2893 ((InoxSet Context!12698) List!67605) Bool)

(assert (=> b!7016642 (= res!2863672 (not (matchZipper!2893 lt!2508517 s!7408)))))

(declare-fun lt!2508520 () Context!12698)

(assert (=> b!7016642 (= lt!2508517 (store ((as const (Array Context!12698 Bool)) false) lt!2508520 true))))

(declare-fun lt!2508524 () (InoxSet Context!12698))

(declare-fun lambda!410102 () Int)

(declare-fun getWitness!1312 ((InoxSet Context!12698) Int) Context!12698)

(assert (=> b!7016642 (= lt!2508520 (getWitness!1312 lt!2508524 lambda!410102))))

(declare-datatypes ((List!67606 0))(
  ( (Nil!67482) (Cons!67482 (h!73930 Context!12698) (t!381361 List!67606)) )
))
(declare-fun lt!2508515 () List!67606)

(declare-fun exists!3219 (List!67606 Int) Bool)

(assert (=> b!7016642 (exists!3219 lt!2508515 lambda!410102)))

(declare-datatypes ((Unit!161388 0))(
  ( (Unit!161389) )
))
(declare-fun lt!2508527 () Unit!161388)

(declare-fun lemmaZipperMatchesExistsMatchingContext!322 (List!67606 List!67605) Unit!161388)

(assert (=> b!7016642 (= lt!2508527 (lemmaZipperMatchesExistsMatchingContext!322 lt!2508515 s!7408))))

(declare-fun toList!10713 ((InoxSet Context!12698)) List!67606)

(assert (=> b!7016642 (= lt!2508515 (toList!10713 lt!2508524))))

(declare-fun e!4217854 () Bool)

(declare-fun e!4217860 () Bool)

(assert (=> b!7016643 (= e!4217854 e!4217860)))

(declare-fun res!2863667 () Bool)

(assert (=> b!7016643 (=> res!2863667 e!4217860)))

(declare-fun lt!2508530 () (InoxSet Context!12698))

(declare-fun lt!2508523 () (InoxSet Context!12698))

(declare-fun derivationStepZipper!2833 ((InoxSet Context!12698) C!34976) (InoxSet Context!12698))

(assert (=> b!7016643 (= res!2863667 (not (= (derivationStepZipper!2833 lt!2508523 (h!73929 s!7408)) lt!2508530)))))

(declare-fun lambda!410105 () Int)

(declare-fun lt!2508519 () Context!12698)

(declare-fun flatMap!2339 ((InoxSet Context!12698) Int) (InoxSet Context!12698))

(declare-fun derivationStepZipperUp!2003 (Context!12698 C!34976) (InoxSet Context!12698))

(assert (=> b!7016643 (= (flatMap!2339 lt!2508523 lambda!410105) (derivationStepZipperUp!2003 lt!2508519 (h!73929 s!7408)))))

(declare-fun lt!2508514 () Unit!161388)

(declare-fun lemmaFlatMapOnSingletonSet!1854 ((InoxSet Context!12698) Context!12698 Int) Unit!161388)

(assert (=> b!7016643 (= lt!2508514 (lemmaFlatMapOnSingletonSet!1854 lt!2508523 lt!2508519 lambda!410105))))

(assert (=> b!7016643 (= lt!2508530 (derivationStepZipperUp!2003 lt!2508519 (h!73929 s!7408)))))

(declare-fun lt!2508513 () Unit!161388)

(declare-fun lambda!410104 () Int)

(declare-fun lt!2508531 () Context!12698)

(declare-fun ct2!306 () Context!12698)

(declare-fun lemmaConcatPreservesForall!689 (List!67604 List!67604 Int) Unit!161388)

(assert (=> b!7016643 (= lt!2508513 (lemmaConcatPreservesForall!689 (exprs!6849 lt!2508531) (exprs!6849 ct2!306) lambda!410104))))

(declare-fun setIsEmpty!48540 () Bool)

(declare-fun setRes!48540 () Bool)

(assert (=> setIsEmpty!48540 setRes!48540))

(declare-fun b!7016644 () Bool)

(declare-fun e!4217858 () Bool)

(assert (=> b!7016644 (= e!4217858 e!4217854)))

(declare-fun res!2863669 () Bool)

(assert (=> b!7016644 (=> res!2863669 e!4217854)))

(assert (=> b!7016644 (= res!2863669 (not (= lt!2508523 lt!2508517)))))

(assert (=> b!7016644 (= lt!2508523 (store ((as const (Array Context!12698 Bool)) false) lt!2508519 true))))

(declare-fun lt!2508518 () Unit!161388)

(assert (=> b!7016644 (= lt!2508518 (lemmaConcatPreservesForall!689 (exprs!6849 lt!2508531) (exprs!6849 ct2!306) lambda!410104))))

(declare-fun b!7016645 () Bool)

(declare-fun e!4217859 () Bool)

(declare-fun tp!1933306 () Bool)

(assert (=> b!7016645 (= e!4217859 tp!1933306)))

(declare-fun b!7016646 () Bool)

(declare-fun e!4217861 () Bool)

(assert (=> b!7016646 (= e!4217861 true)))

(declare-fun lt!2508525 () (InoxSet Context!12698))

(declare-datatypes ((tuple2!67988 0))(
  ( (tuple2!67989 (_1!37297 List!67605) (_2!37297 List!67605)) )
))
(declare-datatypes ((Option!16826 0))(
  ( (None!16825) (Some!16825 (v!53103 tuple2!67988)) )
))
(declare-fun isDefined!13527 (Option!16826) Bool)

(declare-fun findConcatSeparationZippers!342 ((InoxSet Context!12698) (InoxSet Context!12698) List!67605 List!67605 List!67605) Option!16826)

(assert (=> b!7016646 (isDefined!13527 (findConcatSeparationZippers!342 lt!2508525 (store ((as const (Array Context!12698 Bool)) false) ct2!306 true) Nil!67481 (t!381360 s!7408) (t!381360 s!7408)))))

(declare-fun lt!2508516 () Unit!161388)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!342 ((InoxSet Context!12698) Context!12698 List!67605) Unit!161388)

(assert (=> b!7016646 (= lt!2508516 (lemmaConcatZipperMatchesStringThenFindConcatDefined!342 lt!2508525 ct2!306 (t!381360 s!7408)))))

(declare-fun lt!2508528 () (InoxSet Context!12698))

(declare-fun appendTo!474 ((InoxSet Context!12698) Context!12698) (InoxSet Context!12698))

(assert (=> b!7016646 (= lt!2508528 (appendTo!474 lt!2508525 ct2!306))))

(declare-fun lt!2508521 () Context!12698)

(declare-fun derivationStepZipperDown!2071 (Regex!17353 Context!12698 C!34976) (InoxSet Context!12698))

(assert (=> b!7016646 (= lt!2508525 (derivationStepZipperDown!2071 (h!73928 (exprs!6849 lt!2508531)) lt!2508521 (h!73929 s!7408)))))

(declare-fun lt!2508522 () List!67604)

(declare-fun lt!2508532 () Unit!161388)

(assert (=> b!7016646 (= lt!2508532 (lemmaConcatPreservesForall!689 lt!2508522 (exprs!6849 ct2!306) lambda!410104))))

(declare-fun lt!2508526 () Unit!161388)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!44 (Context!12698 Regex!17353 C!34976 Context!12698) Unit!161388)

(assert (=> b!7016646 (= lt!2508526 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!44 lt!2508521 (h!73928 (exprs!6849 lt!2508531)) (h!73929 s!7408) ct2!306))))

(declare-fun b!7016647 () Bool)

(declare-fun res!2863668 () Bool)

(assert (=> b!7016647 (=> res!2863668 e!4217857)))

(assert (=> b!7016647 (= res!2863668 (not (select lt!2508524 lt!2508520)))))

(declare-fun b!7016648 () Bool)

(declare-fun e!4217856 () Bool)

(declare-fun tp!1933309 () Bool)

(assert (=> b!7016648 (= e!4217856 tp!1933309)))

(declare-fun b!7016649 () Bool)

(declare-fun e!4217855 () Bool)

(assert (=> b!7016649 (= e!4217860 e!4217855)))

(declare-fun res!2863666 () Bool)

(assert (=> b!7016649 (=> res!2863666 e!4217855)))

(declare-fun nullable!7113 (Regex!17353) Bool)

(assert (=> b!7016649 (= res!2863666 (nullable!7113 (h!73928 (exprs!6849 lt!2508531))))))

(assert (=> b!7016649 (= lt!2508521 (Context!12699 lt!2508522))))

(declare-fun tail!13445 (List!67604) List!67604)

(assert (=> b!7016649 (= lt!2508522 (tail!13445 (exprs!6849 lt!2508531)))))

(declare-fun tp!1933308 () Bool)

(declare-fun setNonEmpty!48540 () Bool)

(declare-fun setElem!48540 () Context!12698)

(declare-fun inv!86241 (Context!12698) Bool)

(assert (=> setNonEmpty!48540 (= setRes!48540 (and tp!1933308 (inv!86241 setElem!48540) e!4217859))))

(declare-fun z1!570 () (InoxSet Context!12698))

(declare-fun setRest!48540 () (InoxSet Context!12698))

(assert (=> setNonEmpty!48540 (= z1!570 ((_ map or) (store ((as const (Array Context!12698 Bool)) false) setElem!48540 true) setRest!48540))))

(declare-fun res!2863671 () Bool)

(assert (=> start!676318 (=> (not res!2863671) (not e!4217853))))

(assert (=> start!676318 (= res!2863671 (matchZipper!2893 lt!2508524 s!7408))))

(assert (=> start!676318 (= lt!2508524 (appendTo!474 z1!570 ct2!306))))

(assert (=> start!676318 e!4217853))

(declare-fun condSetEmpty!48540 () Bool)

(assert (=> start!676318 (= condSetEmpty!48540 (= z1!570 ((as const (Array Context!12698 Bool)) false)))))

(assert (=> start!676318 setRes!48540))

(assert (=> start!676318 (and (inv!86241 ct2!306) e!4217856)))

(declare-fun e!4217862 () Bool)

(assert (=> start!676318 e!4217862))

(assert (=> b!7016650 (= e!4217857 e!4217858)))

(declare-fun res!2863675 () Bool)

(assert (=> b!7016650 (=> res!2863675 e!4217858)))

(assert (=> b!7016650 (= res!2863675 (or (not (= lt!2508519 lt!2508520)) (not (select z1!570 lt!2508531))))))

(declare-fun ++!15371 (List!67604 List!67604) List!67604)

(assert (=> b!7016650 (= lt!2508519 (Context!12699 (++!15371 (exprs!6849 lt!2508531) (exprs!6849 ct2!306))))))

(declare-fun lt!2508512 () Unit!161388)

(assert (=> b!7016650 (= lt!2508512 (lemmaConcatPreservesForall!689 (exprs!6849 lt!2508531) (exprs!6849 ct2!306) lambda!410104))))

(declare-fun lambda!410103 () Int)

(declare-fun mapPost2!208 ((InoxSet Context!12698) Int Context!12698) Context!12698)

(assert (=> b!7016650 (= lt!2508531 (mapPost2!208 z1!570 lambda!410103 lt!2508520))))

(declare-fun b!7016651 () Bool)

(declare-fun res!2863674 () Bool)

(assert (=> b!7016651 (=> res!2863674 e!4217860)))

(get-info :version)

(assert (=> b!7016651 (= res!2863674 (not ((_ is Cons!67480) (exprs!6849 lt!2508531))))))

(declare-fun b!7016652 () Bool)

(assert (=> b!7016652 (= e!4217855 e!4217861)))

(declare-fun res!2863665 () Bool)

(assert (=> b!7016652 (=> res!2863665 e!4217861)))

(assert (=> b!7016652 (= res!2863665 (not (matchZipper!2893 lt!2508528 (t!381360 s!7408))))))

(assert (=> b!7016652 (= lt!2508528 (derivationStepZipperDown!2071 (h!73928 (exprs!6849 lt!2508531)) (Context!12699 (++!15371 lt!2508522 (exprs!6849 ct2!306))) (h!73929 s!7408)))))

(declare-fun lt!2508529 () Unit!161388)

(assert (=> b!7016652 (= lt!2508529 (lemmaConcatPreservesForall!689 lt!2508522 (exprs!6849 ct2!306) lambda!410104))))

(declare-fun b!7016653 () Bool)

(declare-fun res!2863673 () Bool)

(assert (=> b!7016653 (=> (not res!2863673) (not e!4217853))))

(assert (=> b!7016653 (= res!2863673 ((_ is Cons!67481) s!7408))))

(declare-fun b!7016654 () Bool)

(declare-fun res!2863670 () Bool)

(assert (=> b!7016654 (=> res!2863670 e!4217860)))

(declare-fun isEmpty!39412 (List!67604) Bool)

(assert (=> b!7016654 (= res!2863670 (isEmpty!39412 (exprs!6849 lt!2508531)))))

(declare-fun b!7016655 () Bool)

(declare-fun tp_is_empty!43931 () Bool)

(declare-fun tp!1933307 () Bool)

(assert (=> b!7016655 (= e!4217862 (and tp_is_empty!43931 tp!1933307))))

(assert (= (and start!676318 res!2863671) b!7016653))

(assert (= (and b!7016653 res!2863673) b!7016642))

(assert (= (and b!7016642 (not res!2863672)) b!7016647))

(assert (= (and b!7016647 (not res!2863668)) b!7016650))

(assert (= (and b!7016650 (not res!2863675)) b!7016644))

(assert (= (and b!7016644 (not res!2863669)) b!7016643))

(assert (= (and b!7016643 (not res!2863667)) b!7016651))

(assert (= (and b!7016651 (not res!2863674)) b!7016654))

(assert (= (and b!7016654 (not res!2863670)) b!7016649))

(assert (= (and b!7016649 (not res!2863666)) b!7016652))

(assert (= (and b!7016652 (not res!2863665)) b!7016646))

(assert (= (and start!676318 condSetEmpty!48540) setIsEmpty!48540))

(assert (= (and start!676318 (not condSetEmpty!48540)) setNonEmpty!48540))

(assert (= setNonEmpty!48540 b!7016645))

(assert (= start!676318 b!7016648))

(assert (= (and start!676318 ((_ is Cons!67481) s!7408)) b!7016655))

(declare-fun m!7716420 () Bool)

(assert (=> b!7016650 m!7716420))

(declare-fun m!7716422 () Bool)

(assert (=> b!7016650 m!7716422))

(declare-fun m!7716424 () Bool)

(assert (=> b!7016650 m!7716424))

(declare-fun m!7716426 () Bool)

(assert (=> b!7016650 m!7716426))

(declare-fun m!7716428 () Bool)

(assert (=> b!7016644 m!7716428))

(assert (=> b!7016644 m!7716424))

(declare-fun m!7716430 () Bool)

(assert (=> setNonEmpty!48540 m!7716430))

(declare-fun m!7716432 () Bool)

(assert (=> b!7016642 m!7716432))

(declare-fun m!7716434 () Bool)

(assert (=> b!7016642 m!7716434))

(declare-fun m!7716436 () Bool)

(assert (=> b!7016642 m!7716436))

(declare-fun m!7716438 () Bool)

(assert (=> b!7016642 m!7716438))

(declare-fun m!7716440 () Bool)

(assert (=> b!7016642 m!7716440))

(declare-fun m!7716442 () Bool)

(assert (=> b!7016642 m!7716442))

(declare-fun m!7716444 () Bool)

(assert (=> b!7016646 m!7716444))

(declare-fun m!7716446 () Bool)

(assert (=> b!7016646 m!7716446))

(declare-fun m!7716448 () Bool)

(assert (=> b!7016646 m!7716448))

(declare-fun m!7716450 () Bool)

(assert (=> b!7016646 m!7716450))

(declare-fun m!7716452 () Bool)

(assert (=> b!7016646 m!7716452))

(declare-fun m!7716454 () Bool)

(assert (=> b!7016646 m!7716454))

(assert (=> b!7016646 m!7716446))

(assert (=> b!7016646 m!7716448))

(declare-fun m!7716456 () Bool)

(assert (=> b!7016646 m!7716456))

(declare-fun m!7716458 () Bool)

(assert (=> b!7016646 m!7716458))

(declare-fun m!7716460 () Bool)

(assert (=> b!7016643 m!7716460))

(declare-fun m!7716462 () Bool)

(assert (=> b!7016643 m!7716462))

(declare-fun m!7716464 () Bool)

(assert (=> b!7016643 m!7716464))

(assert (=> b!7016643 m!7716424))

(declare-fun m!7716466 () Bool)

(assert (=> b!7016643 m!7716466))

(declare-fun m!7716468 () Bool)

(assert (=> b!7016654 m!7716468))

(declare-fun m!7716470 () Bool)

(assert (=> b!7016649 m!7716470))

(declare-fun m!7716472 () Bool)

(assert (=> b!7016649 m!7716472))

(declare-fun m!7716474 () Bool)

(assert (=> start!676318 m!7716474))

(declare-fun m!7716476 () Bool)

(assert (=> start!676318 m!7716476))

(declare-fun m!7716478 () Bool)

(assert (=> start!676318 m!7716478))

(declare-fun m!7716480 () Bool)

(assert (=> b!7016647 m!7716480))

(declare-fun m!7716482 () Bool)

(assert (=> b!7016652 m!7716482))

(declare-fun m!7716484 () Bool)

(assert (=> b!7016652 m!7716484))

(declare-fun m!7716486 () Bool)

(assert (=> b!7016652 m!7716486))

(assert (=> b!7016652 m!7716458))

(check-sat (not b!7016646) (not setNonEmpty!48540) (not b!7016648) (not b!7016650) (not b!7016655) (not b!7016652) (not b!7016654) (not b!7016643) (not b!7016644) (not b!7016645) (not b!7016649) tp_is_empty!43931 (not start!676318) (not b!7016642))
(check-sat)
