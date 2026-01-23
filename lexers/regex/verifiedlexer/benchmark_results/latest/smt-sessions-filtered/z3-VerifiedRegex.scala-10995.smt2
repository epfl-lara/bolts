; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570258 () Bool)

(assert start!570258)

(declare-fun b!5435762 () Bool)

(assert (=> b!5435762 true))

(assert (=> b!5435762 true))

(declare-fun lambda!285557 () Int)

(declare-fun lambda!285556 () Int)

(assert (=> b!5435762 (not (= lambda!285557 lambda!285556))))

(assert (=> b!5435762 true))

(assert (=> b!5435762 true))

(declare-fun b!5435763 () Bool)

(assert (=> b!5435763 true))

(declare-fun bs!1254884 () Bool)

(declare-fun b!5435749 () Bool)

(assert (= bs!1254884 (and b!5435749 b!5435762)))

(declare-datatypes ((C!30744 0))(
  ( (C!30745 (val!25074 Int)) )
))
(declare-datatypes ((Regex!15237 0))(
  ( (ElementMatch!15237 (c!948597 C!30744)) (Concat!24082 (regOne!30986 Regex!15237) (regTwo!30986 Regex!15237)) (EmptyExpr!15237) (Star!15237 (reg!15566 Regex!15237)) (EmptyLang!15237) (Union!15237 (regOne!30987 Regex!15237) (regTwo!30987 Regex!15237)) )
))
(declare-fun r!7292 () Regex!15237)

(declare-datatypes ((List!62010 0))(
  ( (Nil!61886) (Cons!61886 (h!68334 C!30744) (t!375235 List!62010)) )
))
(declare-fun s!2326 () List!62010)

(declare-fun lt!2216484 () Regex!15237)

(declare-fun lambda!285559 () Int)

(assert (=> bs!1254884 (= (and (= Nil!61886 s!2326) (= (reg!15566 (regOne!30986 r!7292)) (regOne!30986 r!7292)) (= lt!2216484 (regTwo!30986 r!7292))) (= lambda!285559 lambda!285556))))

(assert (=> bs!1254884 (not (= lambda!285559 lambda!285557))))

(assert (=> b!5435749 true))

(assert (=> b!5435749 true))

(declare-fun lambda!285560 () Int)

(assert (=> bs!1254884 (not (= lambda!285560 lambda!285556))))

(assert (=> bs!1254884 (= (and (= Nil!61886 s!2326) (= (reg!15566 (regOne!30986 r!7292)) (regOne!30986 r!7292)) (= lt!2216484 (regTwo!30986 r!7292))) (= lambda!285560 lambda!285557))))

(assert (=> b!5435749 (not (= lambda!285560 lambda!285559))))

(assert (=> b!5435749 true))

(assert (=> b!5435749 true))

(declare-fun lambda!285561 () Int)

(assert (=> bs!1254884 (not (= lambda!285561 lambda!285556))))

(assert (=> bs!1254884 (not (= lambda!285561 lambda!285557))))

(assert (=> b!5435749 (not (= lambda!285561 lambda!285559))))

(assert (=> b!5435749 (not (= lambda!285561 lambda!285560))))

(assert (=> b!5435749 true))

(assert (=> b!5435749 true))

(declare-fun b!5435727 () Bool)

(declare-fun e!3367800 () Bool)

(declare-fun tp_is_empty!39727 () Bool)

(declare-fun tp!1499012 () Bool)

(assert (=> b!5435727 (= e!3367800 (and tp_is_empty!39727 tp!1499012))))

(declare-fun b!5435728 () Bool)

(declare-fun e!3367816 () Bool)

(declare-fun e!3367804 () Bool)

(assert (=> b!5435728 (= e!3367816 e!3367804)))

(declare-fun res!2313670 () Bool)

(assert (=> b!5435728 (=> res!2313670 e!3367804)))

(declare-datatypes ((List!62011 0))(
  ( (Nil!61887) (Cons!61887 (h!68335 Regex!15237) (t!375236 List!62011)) )
))
(declare-datatypes ((Context!9242 0))(
  ( (Context!9243 (exprs!5121 List!62011)) )
))
(declare-datatypes ((List!62012 0))(
  ( (Nil!61888) (Cons!61888 (h!68336 Context!9242) (t!375237 List!62012)) )
))
(declare-fun zl!343 () List!62012)

(declare-fun lt!2216494 () List!62012)

(declare-fun zipperDepth!178 (List!62012) Int)

(assert (=> b!5435728 (= res!2313670 (< (zipperDepth!178 zl!343) (zipperDepth!178 lt!2216494)))))

(declare-fun lt!2216480 () Context!9242)

(assert (=> b!5435728 (= lt!2216494 (Cons!61888 lt!2216480 Nil!61888))))

(declare-fun b!5435729 () Bool)

(declare-fun e!3367796 () Bool)

(assert (=> b!5435729 (= e!3367796 tp_is_empty!39727)))

(declare-fun b!5435730 () Bool)

(declare-fun e!3367808 () Bool)

(declare-fun e!3367812 () Bool)

(assert (=> b!5435730 (= e!3367808 e!3367812)))

(declare-fun res!2313652 () Bool)

(assert (=> b!5435730 (=> res!2313652 e!3367812)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2216486 () (InoxSet Context!9242))

(declare-fun lt!2216496 () (InoxSet Context!9242))

(assert (=> b!5435730 (= res!2313652 (not (= lt!2216486 lt!2216496)))))

(declare-fun lt!2216476 () Context!9242)

(declare-fun derivationStepZipperDown!685 (Regex!15237 Context!9242 C!30744) (InoxSet Context!9242))

(assert (=> b!5435730 (= lt!2216496 (derivationStepZipperDown!685 (reg!15566 (regOne!30986 r!7292)) lt!2216476 (h!68334 s!2326)))))

(declare-fun lt!2216479 () List!62011)

(assert (=> b!5435730 (= lt!2216476 (Context!9243 lt!2216479))))

(assert (=> b!5435730 (= lt!2216479 (Cons!61887 lt!2216484 (t!375236 (exprs!5121 (h!68336 zl!343)))))))

(assert (=> b!5435730 (= lt!2216484 (Star!15237 (reg!15566 (regOne!30986 r!7292))))))

(declare-fun tp!1499008 () Bool)

(declare-fun e!3367793 () Bool)

(declare-fun e!3367814 () Bool)

(declare-fun b!5435731 () Bool)

(declare-fun inv!81339 (Context!9242) Bool)

(assert (=> b!5435731 (= e!3367793 (and (inv!81339 (h!68336 zl!343)) e!3367814 tp!1499008))))

(declare-fun b!5435732 () Bool)

(declare-fun e!3367815 () Bool)

(assert (=> b!5435732 (= e!3367804 e!3367815)))

(declare-fun res!2313665 () Bool)

(assert (=> b!5435732 (=> res!2313665 e!3367815)))

(declare-fun matchR!7422 (Regex!15237 List!62010) Bool)

(assert (=> b!5435732 (= res!2313665 (not (matchR!7422 (regTwo!30986 r!7292) s!2326)))))

(declare-fun lt!2216458 () Regex!15237)

(declare-fun lt!2216475 () (InoxSet Context!9242))

(declare-fun matchZipper!1481 ((InoxSet Context!9242) List!62010) Bool)

(assert (=> b!5435732 (= (matchR!7422 lt!2216458 s!2326) (matchZipper!1481 lt!2216475 s!2326))))

(declare-datatypes ((Unit!154470 0))(
  ( (Unit!154471) )
))
(declare-fun lt!2216472 () Unit!154470)

(declare-fun theoremZipperRegexEquiv!541 ((InoxSet Context!9242) List!62012 Regex!15237 List!62010) Unit!154470)

(assert (=> b!5435732 (= lt!2216472 (theoremZipperRegexEquiv!541 lt!2216475 lt!2216494 lt!2216458 s!2326))))

(declare-fun b!5435733 () Bool)

(declare-fun e!3367810 () Bool)

(declare-fun e!3367806 () Bool)

(assert (=> b!5435733 (= e!3367810 e!3367806)))

(declare-fun res!2313653 () Bool)

(assert (=> b!5435733 (=> res!2313653 e!3367806)))

(declare-fun lt!2216471 () Regex!15237)

(assert (=> b!5435733 (= res!2313653 (not (= r!7292 lt!2216471)))))

(assert (=> b!5435733 (= lt!2216471 (Concat!24082 lt!2216484 (regTwo!30986 r!7292)))))

(declare-fun b!5435734 () Bool)

(declare-fun e!3367809 () Bool)

(declare-fun nullable!5406 (Regex!15237) Bool)

(assert (=> b!5435734 (= e!3367809 (nullable!5406 (regOne!30986 (regOne!30986 r!7292))))))

(declare-fun b!5435735 () Bool)

(declare-fun res!2313672 () Bool)

(declare-fun e!3367792 () Bool)

(assert (=> b!5435735 (=> res!2313672 e!3367792)))

(get-info :version)

(assert (=> b!5435735 (= res!2313672 (not ((_ is Cons!61887) (exprs!5121 (h!68336 zl!343)))))))

(declare-fun b!5435736 () Bool)

(declare-fun e!3367805 () Bool)

(assert (=> b!5435736 (= e!3367806 e!3367805)))

(declare-fun res!2313650 () Bool)

(assert (=> b!5435736 (=> res!2313650 e!3367805)))

(declare-fun lt!2216478 () Context!9242)

(declare-fun lt!2216481 () Regex!15237)

(declare-fun unfocusZipper!979 (List!62012) Regex!15237)

(assert (=> b!5435736 (= res!2313650 (not (= (unfocusZipper!979 (Cons!61888 lt!2216478 Nil!61888)) lt!2216481)))))

(assert (=> b!5435736 (= lt!2216481 (Concat!24082 (reg!15566 (regOne!30986 r!7292)) lt!2216471))))

(declare-fun b!5435737 () Bool)

(declare-fun res!2313656 () Bool)

(declare-fun e!3367801 () Bool)

(assert (=> b!5435737 (=> res!2313656 e!3367801)))

(declare-fun isEmpty!33884 (List!62011) Bool)

(assert (=> b!5435737 (= res!2313656 (isEmpty!33884 (t!375236 (exprs!5121 (h!68336 zl!343)))))))

(declare-fun b!5435738 () Bool)

(declare-fun res!2313655 () Bool)

(declare-fun e!3367802 () Bool)

(assert (=> b!5435738 (=> res!2313655 e!3367802)))

(assert (=> b!5435738 (= res!2313655 (not (= (unfocusZipper!979 (Cons!61888 lt!2216476 Nil!61888)) lt!2216471)))))

(declare-fun b!5435739 () Bool)

(declare-fun e!3367794 () Bool)

(assert (=> b!5435739 (= e!3367794 (not e!3367792))))

(declare-fun res!2313644 () Bool)

(assert (=> b!5435739 (=> res!2313644 e!3367792)))

(assert (=> b!5435739 (= res!2313644 (not ((_ is Cons!61888) zl!343)))))

(declare-fun lt!2216477 () Bool)

(declare-fun matchRSpec!2340 (Regex!15237 List!62010) Bool)

(assert (=> b!5435739 (= lt!2216477 (matchRSpec!2340 r!7292 s!2326))))

(assert (=> b!5435739 (= lt!2216477 (matchR!7422 r!7292 s!2326))))

(declare-fun lt!2216487 () Unit!154470)

(declare-fun mainMatchTheorem!2340 (Regex!15237 List!62010) Unit!154470)

(assert (=> b!5435739 (= lt!2216487 (mainMatchTheorem!2340 r!7292 s!2326))))

(declare-fun b!5435740 () Bool)

(declare-fun e!3367813 () Unit!154470)

(declare-fun Unit!154472 () Unit!154470)

(assert (=> b!5435740 (= e!3367813 Unit!154472)))

(declare-fun b!5435741 () Bool)

(declare-fun res!2313641 () Bool)

(assert (=> b!5435741 (=> res!2313641 e!3367808)))

(assert (=> b!5435741 (= res!2313641 e!3367809)))

(declare-fun res!2313667 () Bool)

(assert (=> b!5435741 (=> (not res!2313667) (not e!3367809))))

(assert (=> b!5435741 (= res!2313667 ((_ is Concat!24082) (regOne!30986 r!7292)))))

(declare-fun b!5435742 () Bool)

(declare-fun tp!1499005 () Bool)

(assert (=> b!5435742 (= e!3367796 tp!1499005)))

(declare-fun b!5435743 () Bool)

(declare-fun res!2313657 () Bool)

(declare-fun e!3367798 () Bool)

(assert (=> b!5435743 (=> res!2313657 e!3367798)))

(declare-fun lt!2216493 () Bool)

(assert (=> b!5435743 (= res!2313657 (not lt!2216493))))

(declare-fun b!5435744 () Bool)

(declare-fun res!2313662 () Bool)

(assert (=> b!5435744 (=> res!2313662 e!3367798)))

(declare-fun z!1189 () (InoxSet Context!9242))

(assert (=> b!5435744 (= res!2313662 (not (matchZipper!1481 z!1189 s!2326)))))

(declare-fun b!5435745 () Bool)

(declare-fun tp!1499010 () Bool)

(declare-fun tp!1499009 () Bool)

(assert (=> b!5435745 (= e!3367796 (and tp!1499010 tp!1499009))))

(declare-fun b!5435746 () Bool)

(assert (=> b!5435746 (= e!3367802 e!3367798)))

(declare-fun res!2313675 () Bool)

(assert (=> b!5435746 (=> res!2313675 e!3367798)))

(assert (=> b!5435746 (= res!2313675 lt!2216477)))

(assert (=> b!5435746 (= (matchR!7422 lt!2216481 s!2326) (matchRSpec!2340 lt!2216481 s!2326))))

(declare-fun lt!2216461 () Unit!154470)

(assert (=> b!5435746 (= lt!2216461 (mainMatchTheorem!2340 lt!2216481 s!2326))))

(declare-fun b!5435747 () Bool)

(declare-fun res!2313664 () Bool)

(assert (=> b!5435747 (=> res!2313664 e!3367792)))

(declare-fun generalisedUnion!1166 (List!62011) Regex!15237)

(declare-fun unfocusZipperList!679 (List!62012) List!62011)

(assert (=> b!5435747 (= res!2313664 (not (= r!7292 (generalisedUnion!1166 (unfocusZipperList!679 zl!343)))))))

(declare-fun b!5435748 () Bool)

(declare-fun e!3367795 () Bool)

(assert (=> b!5435748 (= e!3367795 e!3367794)))

(declare-fun res!2313663 () Bool)

(assert (=> b!5435748 (=> (not res!2313663) (not e!3367794))))

(declare-fun lt!2216464 () Regex!15237)

(assert (=> b!5435748 (= res!2313663 (= r!7292 lt!2216464))))

(assert (=> b!5435748 (= lt!2216464 (unfocusZipper!979 zl!343))))

(assert (=> b!5435749 (= e!3367815 true)))

(declare-fun Exists!2418 (Int) Bool)

(assert (=> b!5435749 (= (Exists!2418 lambda!285559) (Exists!2418 lambda!285561))))

(declare-fun lt!2216462 () Unit!154470)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!424 (Regex!15237 List!62010) Unit!154470)

(assert (=> b!5435749 (= lt!2216462 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!424 (reg!15566 (regOne!30986 r!7292)) Nil!61886))))

(assert (=> b!5435749 (= (Exists!2418 lambda!285559) (Exists!2418 lambda!285560))))

(declare-fun lt!2216454 () Unit!154470)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1072 (Regex!15237 Regex!15237 List!62010) Unit!154470)

(assert (=> b!5435749 (= lt!2216454 (lemmaExistCutMatchRandMatchRSpecEquivalent!1072 (reg!15566 (regOne!30986 r!7292)) lt!2216484 Nil!61886))))

(declare-datatypes ((tuple2!64872 0))(
  ( (tuple2!64873 (_1!35739 List!62010) (_2!35739 List!62010)) )
))
(declare-datatypes ((Option!15348 0))(
  ( (None!15347) (Some!15347 (v!51376 tuple2!64872)) )
))
(declare-fun isDefined!12051 (Option!15348) Bool)

(declare-fun findConcatSeparation!1762 (Regex!15237 Regex!15237 List!62010 List!62010 List!62010) Option!15348)

(assert (=> b!5435749 (= (isDefined!12051 (findConcatSeparation!1762 (reg!15566 (regOne!30986 r!7292)) lt!2216484 Nil!61886 Nil!61886 Nil!61886)) (Exists!2418 lambda!285559))))

(declare-fun lt!2216489 () Unit!154470)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1526 (Regex!15237 Regex!15237 List!62010) Unit!154470)

(assert (=> b!5435749 (= lt!2216489 (lemmaFindConcatSeparationEquivalentToExists!1526 (reg!15566 (regOne!30986 r!7292)) lt!2216484 Nil!61886))))

(assert (=> b!5435749 (= (matchR!7422 lt!2216484 Nil!61886) (matchRSpec!2340 lt!2216484 Nil!61886))))

(declare-fun lt!2216495 () Unit!154470)

(assert (=> b!5435749 (= lt!2216495 (mainMatchTheorem!2340 lt!2216484 Nil!61886))))

(declare-fun b!5435750 () Bool)

(declare-fun res!2313654 () Bool)

(assert (=> b!5435750 (=> res!2313654 e!3367808)))

(assert (=> b!5435750 (= res!2313654 (or ((_ is Concat!24082) (regOne!30986 r!7292)) (not ((_ is Star!15237) (regOne!30986 r!7292)))))))

(declare-fun b!5435751 () Bool)

(declare-fun tp!1499006 () Bool)

(declare-fun tp!1499011 () Bool)

(assert (=> b!5435751 (= e!3367796 (and tp!1499006 tp!1499011))))

(declare-fun b!5435752 () Bool)

(declare-fun res!2313660 () Bool)

(declare-fun e!3367799 () Bool)

(assert (=> b!5435752 (=> res!2313660 e!3367799)))

(declare-fun lt!2216482 () Bool)

(assert (=> b!5435752 (= res!2313660 lt!2216482)))

(declare-fun b!5435753 () Bool)

(declare-fun Unit!154473 () Unit!154470)

(assert (=> b!5435753 (= e!3367813 Unit!154473)))

(declare-fun lt!2216457 () (InoxSet Context!9242))

(declare-fun lt!2216469 () Unit!154470)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!474 ((InoxSet Context!9242) (InoxSet Context!9242) List!62010) Unit!154470)

(assert (=> b!5435753 (= lt!2216469 (lemmaZipperConcatMatchesSameAsBothZippers!474 lt!2216486 lt!2216457 (t!375235 s!2326)))))

(declare-fun res!2313666 () Bool)

(assert (=> b!5435753 (= res!2313666 (matchZipper!1481 lt!2216486 (t!375235 s!2326)))))

(declare-fun e!3367811 () Bool)

(assert (=> b!5435753 (=> res!2313666 e!3367811)))

(assert (=> b!5435753 (= (matchZipper!1481 ((_ map or) lt!2216486 lt!2216457) (t!375235 s!2326)) e!3367811)))

(declare-fun b!5435754 () Bool)

(declare-fun res!2313647 () Bool)

(assert (=> b!5435754 (=> res!2313647 e!3367799)))

(assert (=> b!5435754 (= res!2313647 (not (matchZipper!1481 lt!2216457 (t!375235 s!2326))))))

(declare-fun b!5435755 () Bool)

(assert (=> b!5435755 (= e!3367805 e!3367802)))

(declare-fun res!2313673 () Bool)

(assert (=> b!5435755 (=> res!2313673 e!3367802)))

(declare-fun lt!2216492 () Context!9242)

(assert (=> b!5435755 (= res!2313673 (not (= (unfocusZipper!979 (Cons!61888 lt!2216492 Nil!61888)) (reg!15566 (regOne!30986 r!7292)))))))

(declare-fun lambda!285558 () Int)

(declare-fun lt!2216490 () (InoxSet Context!9242))

(declare-fun flatMap!964 ((InoxSet Context!9242) Int) (InoxSet Context!9242))

(declare-fun derivationStepZipperUp!609 (Context!9242 C!30744) (InoxSet Context!9242))

(assert (=> b!5435755 (= (flatMap!964 lt!2216490 lambda!285558) (derivationStepZipperUp!609 lt!2216476 (h!68334 s!2326)))))

(declare-fun lt!2216459 () Unit!154470)

(declare-fun lemmaFlatMapOnSingletonSet!496 ((InoxSet Context!9242) Context!9242 Int) Unit!154470)

(assert (=> b!5435755 (= lt!2216459 (lemmaFlatMapOnSingletonSet!496 lt!2216490 lt!2216476 lambda!285558))))

(declare-fun lt!2216456 () (InoxSet Context!9242))

(assert (=> b!5435755 (= (flatMap!964 lt!2216456 lambda!285558) (derivationStepZipperUp!609 lt!2216492 (h!68334 s!2326)))))

(declare-fun lt!2216473 () Unit!154470)

(assert (=> b!5435755 (= lt!2216473 (lemmaFlatMapOnSingletonSet!496 lt!2216456 lt!2216492 lambda!285558))))

(declare-fun lt!2216463 () (InoxSet Context!9242))

(assert (=> b!5435755 (= lt!2216463 (derivationStepZipperUp!609 lt!2216476 (h!68334 s!2326)))))

(declare-fun lt!2216483 () (InoxSet Context!9242))

(assert (=> b!5435755 (= lt!2216483 (derivationStepZipperUp!609 lt!2216492 (h!68334 s!2326)))))

(assert (=> b!5435755 (= lt!2216490 (store ((as const (Array Context!9242 Bool)) false) lt!2216476 true))))

(assert (=> b!5435755 (= lt!2216456 (store ((as const (Array Context!9242 Bool)) false) lt!2216492 true))))

(assert (=> b!5435755 (= lt!2216492 (Context!9243 (Cons!61887 (reg!15566 (regOne!30986 r!7292)) Nil!61887)))))

(declare-fun b!5435756 () Bool)

(declare-fun tp!1499007 () Bool)

(assert (=> b!5435756 (= e!3367814 tp!1499007)))

(declare-fun setIsEmpty!35487 () Bool)

(declare-fun setRes!35487 () Bool)

(assert (=> setIsEmpty!35487 setRes!35487))

(declare-fun b!5435757 () Bool)

(declare-fun e!3367797 () Bool)

(assert (=> b!5435757 (= e!3367797 e!3367816)))

(declare-fun res!2313674 () Bool)

(assert (=> b!5435757 (=> res!2313674 e!3367816)))

(declare-fun regexDepth!193 (Regex!15237) Int)

(assert (=> b!5435757 (= res!2313674 (< (regexDepth!193 r!7292) (regexDepth!193 lt!2216458)))))

(declare-fun generalisedConcat!906 (List!62011) Regex!15237)

(assert (=> b!5435757 (= lt!2216458 (generalisedConcat!906 (t!375236 (exprs!5121 (h!68336 zl!343)))))))

(declare-fun b!5435758 () Bool)

(assert (=> b!5435758 (= e!3367811 (matchZipper!1481 lt!2216457 (t!375235 s!2326)))))

(declare-fun b!5435760 () Bool)

(declare-fun res!2313642 () Bool)

(assert (=> b!5435760 (=> res!2313642 e!3367810)))

(declare-fun lt!2216470 () (InoxSet Context!9242))

(declare-fun lt!2216485 () (InoxSet Context!9242))

(assert (=> b!5435760 (= res!2313642 (not (= (matchZipper!1481 lt!2216470 s!2326) (matchZipper!1481 lt!2216485 (t!375235 s!2326)))))))

(declare-fun b!5435759 () Bool)

(declare-fun res!2313659 () Bool)

(assert (=> b!5435759 (=> res!2313659 e!3367792)))

(assert (=> b!5435759 (= res!2313659 (not (= r!7292 (generalisedConcat!906 (exprs!5121 (h!68336 zl!343))))))))

(declare-fun res!2313658 () Bool)

(assert (=> start!570258 (=> (not res!2313658) (not e!3367795))))

(declare-fun validRegex!6973 (Regex!15237) Bool)

(assert (=> start!570258 (= res!2313658 (validRegex!6973 r!7292))))

(assert (=> start!570258 e!3367795))

(assert (=> start!570258 e!3367796))

(declare-fun condSetEmpty!35487 () Bool)

(assert (=> start!570258 (= condSetEmpty!35487 (= z!1189 ((as const (Array Context!9242 Bool)) false)))))

(assert (=> start!570258 setRes!35487))

(assert (=> start!570258 e!3367793))

(assert (=> start!570258 e!3367800))

(declare-fun b!5435761 () Bool)

(assert (=> b!5435761 (= e!3367798 e!3367799)))

(declare-fun res!2313668 () Bool)

(assert (=> b!5435761 (=> res!2313668 e!3367799)))

(declare-fun e!3367803 () Bool)

(assert (=> b!5435761 (= res!2313668 e!3367803)))

(declare-fun res!2313671 () Bool)

(assert (=> b!5435761 (=> (not res!2313671) (not e!3367803))))

(assert (=> b!5435761 (= res!2313671 (not lt!2216482))))

(assert (=> b!5435761 (= lt!2216482 (matchZipper!1481 lt!2216486 (t!375235 s!2326)))))

(assert (=> b!5435762 (= e!3367792 e!3367801)))

(declare-fun res!2313649 () Bool)

(assert (=> b!5435762 (=> res!2313649 e!3367801)))

(declare-fun lt!2216491 () Bool)

(assert (=> b!5435762 (= res!2313649 (or (not (= lt!2216477 lt!2216491)) ((_ is Nil!61886) s!2326)))))

(assert (=> b!5435762 (= (Exists!2418 lambda!285556) (Exists!2418 lambda!285557))))

(declare-fun lt!2216455 () Unit!154470)

(assert (=> b!5435762 (= lt!2216455 (lemmaExistCutMatchRandMatchRSpecEquivalent!1072 (regOne!30986 r!7292) (regTwo!30986 r!7292) s!2326))))

(assert (=> b!5435762 (= lt!2216491 (Exists!2418 lambda!285556))))

(assert (=> b!5435762 (= lt!2216491 (isDefined!12051 (findConcatSeparation!1762 (regOne!30986 r!7292) (regTwo!30986 r!7292) Nil!61886 s!2326 s!2326)))))

(declare-fun lt!2216488 () Unit!154470)

(assert (=> b!5435762 (= lt!2216488 (lemmaFindConcatSeparationEquivalentToExists!1526 (regOne!30986 r!7292) (regTwo!30986 r!7292) s!2326))))

(assert (=> b!5435763 (= e!3367801 e!3367808)))

(declare-fun res!2313669 () Bool)

(assert (=> b!5435763 (=> res!2313669 e!3367808)))

(assert (=> b!5435763 (= res!2313669 (or (and ((_ is ElementMatch!15237) (regOne!30986 r!7292)) (= (c!948597 (regOne!30986 r!7292)) (h!68334 s!2326))) ((_ is Union!15237) (regOne!30986 r!7292))))))

(declare-fun lt!2216467 () Unit!154470)

(assert (=> b!5435763 (= lt!2216467 e!3367813)))

(declare-fun c!948596 () Bool)

(assert (=> b!5435763 (= c!948596 lt!2216493)))

(assert (=> b!5435763 (= lt!2216493 (nullable!5406 (h!68335 (exprs!5121 (h!68336 zl!343)))))))

(assert (=> b!5435763 (= (flatMap!964 z!1189 lambda!285558) (derivationStepZipperUp!609 (h!68336 zl!343) (h!68334 s!2326)))))

(declare-fun lt!2216465 () Unit!154470)

(assert (=> b!5435763 (= lt!2216465 (lemmaFlatMapOnSingletonSet!496 z!1189 (h!68336 zl!343) lambda!285558))))

(assert (=> b!5435763 (= lt!2216457 (derivationStepZipperUp!609 lt!2216480 (h!68334 s!2326)))))

(assert (=> b!5435763 (= lt!2216486 (derivationStepZipperDown!685 (h!68335 (exprs!5121 (h!68336 zl!343))) lt!2216480 (h!68334 s!2326)))))

(assert (=> b!5435763 (= lt!2216480 (Context!9243 (t!375236 (exprs!5121 (h!68336 zl!343)))))))

(declare-fun lt!2216460 () (InoxSet Context!9242))

(assert (=> b!5435763 (= lt!2216460 (derivationStepZipperUp!609 (Context!9243 (Cons!61887 (h!68335 (exprs!5121 (h!68336 zl!343))) (t!375236 (exprs!5121 (h!68336 zl!343))))) (h!68334 s!2326)))))

(declare-fun b!5435764 () Bool)

(declare-fun res!2313651 () Bool)

(assert (=> b!5435764 (=> res!2313651 e!3367810)))

(assert (=> b!5435764 (= res!2313651 (not (= lt!2216464 r!7292)))))

(declare-fun b!5435765 () Bool)

(declare-fun res!2313661 () Bool)

(assert (=> b!5435765 (=> res!2313661 e!3367792)))

(declare-fun isEmpty!33885 (List!62012) Bool)

(assert (=> b!5435765 (= res!2313661 (not (isEmpty!33885 (t!375237 zl!343))))))

(declare-fun b!5435766 () Bool)

(declare-fun res!2313643 () Bool)

(assert (=> b!5435766 (=> (not res!2313643) (not e!3367795))))

(declare-fun toList!9021 ((InoxSet Context!9242)) List!62012)

(assert (=> b!5435766 (= res!2313643 (= (toList!9021 z!1189) zl!343))))

(declare-fun b!5435767 () Bool)

(assert (=> b!5435767 (= e!3367812 e!3367810)))

(declare-fun res!2313645 () Bool)

(assert (=> b!5435767 (=> res!2313645 e!3367810)))

(assert (=> b!5435767 (= res!2313645 (not (= lt!2216485 lt!2216496)))))

(assert (=> b!5435767 (= (flatMap!964 lt!2216470 lambda!285558) (derivationStepZipperUp!609 lt!2216478 (h!68334 s!2326)))))

(declare-fun lt!2216466 () Unit!154470)

(assert (=> b!5435767 (= lt!2216466 (lemmaFlatMapOnSingletonSet!496 lt!2216470 lt!2216478 lambda!285558))))

(declare-fun lt!2216468 () (InoxSet Context!9242))

(assert (=> b!5435767 (= lt!2216468 (derivationStepZipperUp!609 lt!2216478 (h!68334 s!2326)))))

(declare-fun derivationStepZipper!1476 ((InoxSet Context!9242) C!30744) (InoxSet Context!9242))

(assert (=> b!5435767 (= lt!2216485 (derivationStepZipper!1476 lt!2216470 (h!68334 s!2326)))))

(assert (=> b!5435767 (= lt!2216470 (store ((as const (Array Context!9242 Bool)) false) lt!2216478 true))))

(assert (=> b!5435767 (= lt!2216478 (Context!9243 (Cons!61887 (reg!15566 (regOne!30986 r!7292)) lt!2216479)))))

(declare-fun b!5435768 () Bool)

(declare-fun res!2313648 () Bool)

(assert (=> b!5435768 (=> res!2313648 e!3367792)))

(assert (=> b!5435768 (= res!2313648 (or ((_ is EmptyExpr!15237) r!7292) ((_ is EmptyLang!15237) r!7292) ((_ is ElementMatch!15237) r!7292) ((_ is Union!15237) r!7292) (not ((_ is Concat!24082) r!7292))))))

(declare-fun b!5435769 () Bool)

(declare-fun e!3367807 () Bool)

(declare-fun tp!1499013 () Bool)

(assert (=> b!5435769 (= e!3367807 tp!1499013)))

(declare-fun b!5435770 () Bool)

(assert (=> b!5435770 (= e!3367799 e!3367797)))

(declare-fun res!2313646 () Bool)

(assert (=> b!5435770 (=> res!2313646 e!3367797)))

(assert (=> b!5435770 (= res!2313646 (not (= lt!2216457 (derivationStepZipper!1476 lt!2216475 (h!68334 s!2326)))))))

(assert (=> b!5435770 (= (flatMap!964 lt!2216475 lambda!285558) (derivationStepZipperUp!609 lt!2216480 (h!68334 s!2326)))))

(declare-fun lt!2216474 () Unit!154470)

(assert (=> b!5435770 (= lt!2216474 (lemmaFlatMapOnSingletonSet!496 lt!2216475 lt!2216480 lambda!285558))))

(assert (=> b!5435770 (= lt!2216475 (store ((as const (Array Context!9242 Bool)) false) lt!2216480 true))))

(declare-fun setNonEmpty!35487 () Bool)

(declare-fun setElem!35487 () Context!9242)

(declare-fun tp!1499004 () Bool)

(assert (=> setNonEmpty!35487 (= setRes!35487 (and tp!1499004 (inv!81339 setElem!35487) e!3367807))))

(declare-fun setRest!35487 () (InoxSet Context!9242))

(assert (=> setNonEmpty!35487 (= z!1189 ((_ map or) (store ((as const (Array Context!9242 Bool)) false) setElem!35487 true) setRest!35487))))

(declare-fun b!5435771 () Bool)

(assert (=> b!5435771 (= e!3367803 (not (matchZipper!1481 lt!2216457 (t!375235 s!2326))))))

(assert (= (and start!570258 res!2313658) b!5435766))

(assert (= (and b!5435766 res!2313643) b!5435748))

(assert (= (and b!5435748 res!2313663) b!5435739))

(assert (= (and b!5435739 (not res!2313644)) b!5435765))

(assert (= (and b!5435765 (not res!2313661)) b!5435759))

(assert (= (and b!5435759 (not res!2313659)) b!5435735))

(assert (= (and b!5435735 (not res!2313672)) b!5435747))

(assert (= (and b!5435747 (not res!2313664)) b!5435768))

(assert (= (and b!5435768 (not res!2313648)) b!5435762))

(assert (= (and b!5435762 (not res!2313649)) b!5435737))

(assert (= (and b!5435737 (not res!2313656)) b!5435763))

(assert (= (and b!5435763 c!948596) b!5435753))

(assert (= (and b!5435763 (not c!948596)) b!5435740))

(assert (= (and b!5435753 (not res!2313666)) b!5435758))

(assert (= (and b!5435763 (not res!2313669)) b!5435741))

(assert (= (and b!5435741 res!2313667) b!5435734))

(assert (= (and b!5435741 (not res!2313641)) b!5435750))

(assert (= (and b!5435750 (not res!2313654)) b!5435730))

(assert (= (and b!5435730 (not res!2313652)) b!5435767))

(assert (= (and b!5435767 (not res!2313645)) b!5435760))

(assert (= (and b!5435760 (not res!2313642)) b!5435764))

(assert (= (and b!5435764 (not res!2313651)) b!5435733))

(assert (= (and b!5435733 (not res!2313653)) b!5435736))

(assert (= (and b!5435736 (not res!2313650)) b!5435755))

(assert (= (and b!5435755 (not res!2313673)) b!5435738))

(assert (= (and b!5435738 (not res!2313655)) b!5435746))

(assert (= (and b!5435746 (not res!2313675)) b!5435744))

(assert (= (and b!5435744 (not res!2313662)) b!5435743))

(assert (= (and b!5435743 (not res!2313657)) b!5435761))

(assert (= (and b!5435761 res!2313671) b!5435771))

(assert (= (and b!5435761 (not res!2313668)) b!5435752))

(assert (= (and b!5435752 (not res!2313660)) b!5435754))

(assert (= (and b!5435754 (not res!2313647)) b!5435770))

(assert (= (and b!5435770 (not res!2313646)) b!5435757))

(assert (= (and b!5435757 (not res!2313674)) b!5435728))

(assert (= (and b!5435728 (not res!2313670)) b!5435732))

(assert (= (and b!5435732 (not res!2313665)) b!5435749))

(assert (= (and start!570258 ((_ is ElementMatch!15237) r!7292)) b!5435729))

(assert (= (and start!570258 ((_ is Concat!24082) r!7292)) b!5435745))

(assert (= (and start!570258 ((_ is Star!15237) r!7292)) b!5435742))

(assert (= (and start!570258 ((_ is Union!15237) r!7292)) b!5435751))

(assert (= (and start!570258 condSetEmpty!35487) setIsEmpty!35487))

(assert (= (and start!570258 (not condSetEmpty!35487)) setNonEmpty!35487))

(assert (= setNonEmpty!35487 b!5435769))

(assert (= b!5435731 b!5435756))

(assert (= (and start!570258 ((_ is Cons!61888) zl!343)) b!5435731))

(assert (= (and start!570258 ((_ is Cons!61886) s!2326)) b!5435727))

(declare-fun m!6457752 () Bool)

(assert (=> b!5435747 m!6457752))

(assert (=> b!5435747 m!6457752))

(declare-fun m!6457754 () Bool)

(assert (=> b!5435747 m!6457754))

(declare-fun m!6457756 () Bool)

(assert (=> b!5435734 m!6457756))

(declare-fun m!6457758 () Bool)

(assert (=> setNonEmpty!35487 m!6457758))

(declare-fun m!6457760 () Bool)

(assert (=> b!5435757 m!6457760))

(declare-fun m!6457762 () Bool)

(assert (=> b!5435757 m!6457762))

(declare-fun m!6457764 () Bool)

(assert (=> b!5435757 m!6457764))

(declare-fun m!6457766 () Bool)

(assert (=> b!5435771 m!6457766))

(declare-fun m!6457768 () Bool)

(assert (=> b!5435746 m!6457768))

(declare-fun m!6457770 () Bool)

(assert (=> b!5435746 m!6457770))

(declare-fun m!6457772 () Bool)

(assert (=> b!5435746 m!6457772))

(declare-fun m!6457774 () Bool)

(assert (=> b!5435767 m!6457774))

(declare-fun m!6457776 () Bool)

(assert (=> b!5435767 m!6457776))

(declare-fun m!6457778 () Bool)

(assert (=> b!5435767 m!6457778))

(declare-fun m!6457780 () Bool)

(assert (=> b!5435767 m!6457780))

(declare-fun m!6457782 () Bool)

(assert (=> b!5435767 m!6457782))

(declare-fun m!6457784 () Bool)

(assert (=> b!5435731 m!6457784))

(declare-fun m!6457786 () Bool)

(assert (=> b!5435744 m!6457786))

(declare-fun m!6457788 () Bool)

(assert (=> b!5435728 m!6457788))

(declare-fun m!6457790 () Bool)

(assert (=> b!5435728 m!6457790))

(declare-fun m!6457792 () Bool)

(assert (=> b!5435755 m!6457792))

(declare-fun m!6457794 () Bool)

(assert (=> b!5435755 m!6457794))

(declare-fun m!6457796 () Bool)

(assert (=> b!5435755 m!6457796))

(declare-fun m!6457798 () Bool)

(assert (=> b!5435755 m!6457798))

(declare-fun m!6457800 () Bool)

(assert (=> b!5435755 m!6457800))

(declare-fun m!6457802 () Bool)

(assert (=> b!5435755 m!6457802))

(declare-fun m!6457804 () Bool)

(assert (=> b!5435755 m!6457804))

(declare-fun m!6457806 () Bool)

(assert (=> b!5435755 m!6457806))

(declare-fun m!6457808 () Bool)

(assert (=> b!5435755 m!6457808))

(declare-fun m!6457810 () Bool)

(assert (=> b!5435748 m!6457810))

(declare-fun m!6457812 () Bool)

(assert (=> b!5435736 m!6457812))

(declare-fun m!6457814 () Bool)

(assert (=> b!5435766 m!6457814))

(assert (=> b!5435754 m!6457766))

(assert (=> b!5435758 m!6457766))

(declare-fun m!6457816 () Bool)

(assert (=> b!5435762 m!6457816))

(declare-fun m!6457818 () Bool)

(assert (=> b!5435762 m!6457818))

(declare-fun m!6457820 () Bool)

(assert (=> b!5435762 m!6457820))

(declare-fun m!6457822 () Bool)

(assert (=> b!5435762 m!6457822))

(declare-fun m!6457824 () Bool)

(assert (=> b!5435762 m!6457824))

(assert (=> b!5435762 m!6457816))

(assert (=> b!5435762 m!6457818))

(declare-fun m!6457826 () Bool)

(assert (=> b!5435762 m!6457826))

(declare-fun m!6457828 () Bool)

(assert (=> b!5435737 m!6457828))

(declare-fun m!6457830 () Bool)

(assert (=> b!5435761 m!6457830))

(declare-fun m!6457832 () Bool)

(assert (=> b!5435738 m!6457832))

(declare-fun m!6457834 () Bool)

(assert (=> b!5435760 m!6457834))

(declare-fun m!6457836 () Bool)

(assert (=> b!5435760 m!6457836))

(declare-fun m!6457838 () Bool)

(assert (=> b!5435749 m!6457838))

(declare-fun m!6457840 () Bool)

(assert (=> b!5435749 m!6457840))

(declare-fun m!6457842 () Bool)

(assert (=> b!5435749 m!6457842))

(declare-fun m!6457844 () Bool)

(assert (=> b!5435749 m!6457844))

(assert (=> b!5435749 m!6457840))

(declare-fun m!6457846 () Bool)

(assert (=> b!5435749 m!6457846))

(declare-fun m!6457848 () Bool)

(assert (=> b!5435749 m!6457848))

(declare-fun m!6457850 () Bool)

(assert (=> b!5435749 m!6457850))

(declare-fun m!6457852 () Bool)

(assert (=> b!5435749 m!6457852))

(assert (=> b!5435749 m!6457842))

(declare-fun m!6457854 () Bool)

(assert (=> b!5435749 m!6457854))

(declare-fun m!6457856 () Bool)

(assert (=> b!5435749 m!6457856))

(assert (=> b!5435749 m!6457842))

(declare-fun m!6457858 () Bool)

(assert (=> b!5435749 m!6457858))

(declare-fun m!6457860 () Bool)

(assert (=> b!5435763 m!6457860))

(declare-fun m!6457862 () Bool)

(assert (=> b!5435763 m!6457862))

(declare-fun m!6457864 () Bool)

(assert (=> b!5435763 m!6457864))

(declare-fun m!6457866 () Bool)

(assert (=> b!5435763 m!6457866))

(declare-fun m!6457868 () Bool)

(assert (=> b!5435763 m!6457868))

(declare-fun m!6457870 () Bool)

(assert (=> b!5435763 m!6457870))

(declare-fun m!6457872 () Bool)

(assert (=> b!5435763 m!6457872))

(declare-fun m!6457874 () Bool)

(assert (=> b!5435732 m!6457874))

(declare-fun m!6457876 () Bool)

(assert (=> b!5435732 m!6457876))

(declare-fun m!6457878 () Bool)

(assert (=> b!5435732 m!6457878))

(declare-fun m!6457880 () Bool)

(assert (=> b!5435732 m!6457880))

(declare-fun m!6457882 () Bool)

(assert (=> b!5435765 m!6457882))

(declare-fun m!6457884 () Bool)

(assert (=> b!5435759 m!6457884))

(declare-fun m!6457886 () Bool)

(assert (=> b!5435730 m!6457886))

(declare-fun m!6457888 () Bool)

(assert (=> b!5435753 m!6457888))

(assert (=> b!5435753 m!6457830))

(declare-fun m!6457890 () Bool)

(assert (=> b!5435753 m!6457890))

(declare-fun m!6457892 () Bool)

(assert (=> start!570258 m!6457892))

(declare-fun m!6457894 () Bool)

(assert (=> b!5435770 m!6457894))

(declare-fun m!6457896 () Bool)

(assert (=> b!5435770 m!6457896))

(declare-fun m!6457898 () Bool)

(assert (=> b!5435770 m!6457898))

(declare-fun m!6457900 () Bool)

(assert (=> b!5435770 m!6457900))

(assert (=> b!5435770 m!6457872))

(declare-fun m!6457902 () Bool)

(assert (=> b!5435739 m!6457902))

(declare-fun m!6457904 () Bool)

(assert (=> b!5435739 m!6457904))

(declare-fun m!6457906 () Bool)

(assert (=> b!5435739 m!6457906))

(check-sat (not b!5435756) (not b!5435770) (not b!5435745) (not b!5435730) (not b!5435754) (not b!5435742) (not b!5435769) (not b!5435767) (not b!5435727) (not b!5435744) (not b!5435734) (not b!5435765) (not b!5435731) (not b!5435749) (not b!5435753) (not b!5435738) (not b!5435736) (not b!5435755) (not b!5435763) (not b!5435732) (not b!5435737) (not b!5435771) (not b!5435728) (not b!5435762) (not b!5435739) (not b!5435748) (not setNonEmpty!35487) (not b!5435760) (not start!570258) (not b!5435758) (not b!5435747) (not b!5435757) (not b!5435761) (not b!5435746) (not b!5435751) (not b!5435766) (not b!5435759) tp_is_empty!39727)
(check-sat)
