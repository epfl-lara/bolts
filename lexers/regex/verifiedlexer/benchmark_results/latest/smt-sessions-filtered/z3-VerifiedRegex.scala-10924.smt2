; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565254 () Bool)

(assert start!565254)

(declare-fun b!5373643 () Bool)

(assert (=> b!5373643 true))

(assert (=> b!5373643 true))

(declare-fun lambda!277517 () Int)

(declare-fun lambda!277516 () Int)

(assert (=> b!5373643 (not (= lambda!277517 lambda!277516))))

(assert (=> b!5373643 true))

(assert (=> b!5373643 true))

(declare-fun b!5373638 () Bool)

(assert (=> b!5373638 true))

(declare-fun bs!1244008 () Bool)

(declare-fun b!5373645 () Bool)

(assert (= bs!1244008 (and b!5373645 b!5373643)))

(declare-datatypes ((C!30460 0))(
  ( (C!30461 (val!24932 Int)) )
))
(declare-datatypes ((Regex!15095 0))(
  ( (ElementMatch!15095 (c!936295 C!30460)) (Concat!23940 (regOne!30702 Regex!15095) (regTwo!30702 Regex!15095)) (EmptyExpr!15095) (Star!15095 (reg!15424 Regex!15095)) (EmptyLang!15095) (Union!15095 (regOne!30703 Regex!15095) (regTwo!30703 Regex!15095)) )
))
(declare-fun lt!2188632 () Regex!15095)

(declare-fun lambda!277519 () Int)

(declare-fun r!7292 () Regex!15095)

(assert (=> bs!1244008 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277519 lambda!277516))))

(assert (=> bs!1244008 (not (= lambda!277519 lambda!277517))))

(assert (=> b!5373645 true))

(assert (=> b!5373645 true))

(assert (=> b!5373645 true))

(declare-fun lambda!277520 () Int)

(assert (=> bs!1244008 (not (= lambda!277520 lambda!277516))))

(assert (=> bs!1244008 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277520 lambda!277517))))

(assert (=> b!5373645 (not (= lambda!277520 lambda!277519))))

(assert (=> b!5373645 true))

(assert (=> b!5373645 true))

(assert (=> b!5373645 true))

(declare-fun bs!1244009 () Bool)

(declare-fun b!5373652 () Bool)

(assert (= bs!1244009 (and b!5373652 b!5373643)))

(declare-datatypes ((List!61584 0))(
  ( (Nil!61460) (Cons!61460 (h!67908 C!30460) (t!374807 List!61584)) )
))
(declare-fun s!2326 () List!61584)

(declare-datatypes ((tuple2!64588 0))(
  ( (tuple2!64589 (_1!35597 List!61584) (_2!35597 List!61584)) )
))
(declare-fun lt!2188650 () tuple2!64588)

(declare-fun lambda!277521 () Int)

(assert (=> bs!1244009 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (regOne!30702 r!7292)) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277521 lambda!277516))))

(assert (=> bs!1244009 (not (= lambda!277521 lambda!277517))))

(declare-fun bs!1244010 () Bool)

(assert (= bs!1244010 (and b!5373652 b!5373645)))

(assert (=> bs!1244010 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) lt!2188632) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277521 lambda!277519))))

(assert (=> bs!1244010 (not (= lambda!277521 lambda!277520))))

(assert (=> b!5373652 true))

(assert (=> b!5373652 true))

(assert (=> b!5373652 true))

(declare-fun lambda!277522 () Int)

(assert (=> bs!1244009 (not (= lambda!277522 lambda!277517))))

(assert (=> bs!1244009 (not (= lambda!277522 lambda!277516))))

(assert (=> b!5373652 (not (= lambda!277522 lambda!277521))))

(assert (=> bs!1244010 (not (= lambda!277522 lambda!277520))))

(assert (=> bs!1244010 (not (= lambda!277522 lambda!277519))))

(assert (=> b!5373652 true))

(assert (=> b!5373652 true))

(assert (=> b!5373652 true))

(declare-fun lambda!277523 () Int)

(assert (=> b!5373652 (not (= lambda!277523 lambda!277522))))

(assert (=> bs!1244009 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (regOne!30702 r!7292)) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277523 lambda!277517))))

(assert (=> bs!1244009 (not (= lambda!277523 lambda!277516))))

(assert (=> b!5373652 (not (= lambda!277523 lambda!277521))))

(assert (=> bs!1244010 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) lt!2188632) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277523 lambda!277520))))

(assert (=> bs!1244010 (not (= lambda!277523 lambda!277519))))

(assert (=> b!5373652 true))

(assert (=> b!5373652 true))

(assert (=> b!5373652 true))

(declare-fun b!5373634 () Bool)

(declare-fun e!3334095 () Bool)

(declare-fun tp!1490449 () Bool)

(assert (=> b!5373634 (= e!3334095 tp!1490449)))

(declare-fun b!5373635 () Bool)

(declare-fun res!2281139 () Bool)

(declare-fun e!3334087 () Bool)

(assert (=> b!5373635 (=> res!2281139 e!3334087)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61585 0))(
  ( (Nil!61461) (Cons!61461 (h!67909 Regex!15095) (t!374808 List!61585)) )
))
(declare-datatypes ((Context!8958 0))(
  ( (Context!8959 (exprs!4979 List!61585)) )
))
(declare-fun lt!2188631 () (InoxSet Context!8958))

(declare-fun lt!2188648 () (InoxSet Context!8958))

(declare-fun matchZipper!1339 ((InoxSet Context!8958) List!61584) Bool)

(assert (=> b!5373635 (= res!2281139 (not (= (matchZipper!1339 lt!2188631 s!2326) (matchZipper!1339 lt!2188648 (t!374807 s!2326)))))))

(declare-fun b!5373636 () Bool)

(declare-fun res!2281146 () Bool)

(declare-fun e!3334102 () Bool)

(assert (=> b!5373636 (=> (not res!2281146) (not e!3334102))))

(declare-fun z!1189 () (InoxSet Context!8958))

(declare-datatypes ((List!61586 0))(
  ( (Nil!61462) (Cons!61462 (h!67910 Context!8958) (t!374809 List!61586)) )
))
(declare-fun zl!343 () List!61586)

(declare-fun toList!8879 ((InoxSet Context!8958)) List!61586)

(assert (=> b!5373636 (= res!2281146 (= (toList!8879 z!1189) zl!343))))

(declare-fun b!5373637 () Bool)

(declare-fun e!3334088 () Bool)

(declare-fun lt!2188656 () (InoxSet Context!8958))

(assert (=> b!5373637 (= e!3334088 (matchZipper!1339 lt!2188656 (t!374807 s!2326)))))

(declare-fun e!3334100 () Bool)

(declare-fun e!3334089 () Bool)

(assert (=> b!5373638 (= e!3334100 e!3334089)))

(declare-fun res!2281133 () Bool)

(assert (=> b!5373638 (=> res!2281133 e!3334089)))

(get-info :version)

(assert (=> b!5373638 (= res!2281133 (or (and ((_ is ElementMatch!15095) (regOne!30702 r!7292)) (= (c!936295 (regOne!30702 r!7292)) (h!67908 s!2326))) ((_ is Union!15095) (regOne!30702 r!7292))))))

(declare-datatypes ((Unit!153898 0))(
  ( (Unit!153899) )
))
(declare-fun lt!2188629 () Unit!153898)

(declare-fun e!3334093 () Unit!153898)

(assert (=> b!5373638 (= lt!2188629 e!3334093)))

(declare-fun c!936294 () Bool)

(declare-fun nullable!5264 (Regex!15095) Bool)

(assert (=> b!5373638 (= c!936294 (nullable!5264 (h!67909 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun lambda!277518 () Int)

(declare-fun flatMap!822 ((InoxSet Context!8958) Int) (InoxSet Context!8958))

(declare-fun derivationStepZipperUp!467 (Context!8958 C!30460) (InoxSet Context!8958))

(assert (=> b!5373638 (= (flatMap!822 z!1189 lambda!277518) (derivationStepZipperUp!467 (h!67910 zl!343) (h!67908 s!2326)))))

(declare-fun lt!2188637 () Unit!153898)

(declare-fun lemmaFlatMapOnSingletonSet!354 ((InoxSet Context!8958) Context!8958 Int) Unit!153898)

(assert (=> b!5373638 (= lt!2188637 (lemmaFlatMapOnSingletonSet!354 z!1189 (h!67910 zl!343) lambda!277518))))

(declare-fun lt!2188662 () Context!8958)

(assert (=> b!5373638 (= lt!2188656 (derivationStepZipperUp!467 lt!2188662 (h!67908 s!2326)))))

(declare-fun lt!2188643 () (InoxSet Context!8958))

(declare-fun derivationStepZipperDown!543 (Regex!15095 Context!8958 C!30460) (InoxSet Context!8958))

(assert (=> b!5373638 (= lt!2188643 (derivationStepZipperDown!543 (h!67909 (exprs!4979 (h!67910 zl!343))) lt!2188662 (h!67908 s!2326)))))

(assert (=> b!5373638 (= lt!2188662 (Context!8959 (t!374808 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun lt!2188640 () (InoxSet Context!8958))

(assert (=> b!5373638 (= lt!2188640 (derivationStepZipperUp!467 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343))))) (h!67908 s!2326)))))

(declare-fun b!5373639 () Bool)

(declare-fun e!3334096 () Bool)

(declare-fun e!3334098 () Bool)

(assert (=> b!5373639 (= e!3334096 e!3334098)))

(declare-fun res!2281149 () Bool)

(assert (=> b!5373639 (=> res!2281149 e!3334098)))

(declare-fun lt!2188664 () Context!8958)

(declare-fun unfocusZipper!837 (List!61586) Regex!15095)

(assert (=> b!5373639 (= res!2281149 (not (= (unfocusZipper!837 (Cons!61462 lt!2188664 Nil!61462)) (reg!15424 (regOne!30702 r!7292)))))))

(declare-fun lt!2188635 () (InoxSet Context!8958))

(declare-fun lt!2188638 () Context!8958)

(assert (=> b!5373639 (= (flatMap!822 lt!2188635 lambda!277518) (derivationStepZipperUp!467 lt!2188638 (h!67908 s!2326)))))

(declare-fun lt!2188627 () Unit!153898)

(assert (=> b!5373639 (= lt!2188627 (lemmaFlatMapOnSingletonSet!354 lt!2188635 lt!2188638 lambda!277518))))

(declare-fun lt!2188636 () (InoxSet Context!8958))

(assert (=> b!5373639 (= (flatMap!822 lt!2188636 lambda!277518) (derivationStepZipperUp!467 lt!2188664 (h!67908 s!2326)))))

(declare-fun lt!2188641 () Unit!153898)

(assert (=> b!5373639 (= lt!2188641 (lemmaFlatMapOnSingletonSet!354 lt!2188636 lt!2188664 lambda!277518))))

(declare-fun lt!2188657 () (InoxSet Context!8958))

(assert (=> b!5373639 (= lt!2188657 (derivationStepZipperUp!467 lt!2188638 (h!67908 s!2326)))))

(declare-fun lt!2188639 () (InoxSet Context!8958))

(assert (=> b!5373639 (= lt!2188639 (derivationStepZipperUp!467 lt!2188664 (h!67908 s!2326)))))

(assert (=> b!5373639 (= lt!2188635 (store ((as const (Array Context!8958 Bool)) false) lt!2188638 true))))

(assert (=> b!5373639 (= lt!2188636 (store ((as const (Array Context!8958 Bool)) false) lt!2188664 true))))

(assert (=> b!5373639 (= lt!2188664 (Context!8959 (Cons!61461 (reg!15424 (regOne!30702 r!7292)) Nil!61461)))))

(declare-fun b!5373640 () Bool)

(declare-fun e!3334094 () Bool)

(assert (=> b!5373640 (= e!3334098 e!3334094)))

(declare-fun res!2281145 () Bool)

(assert (=> b!5373640 (=> res!2281145 e!3334094)))

(declare-fun lt!2188654 () Bool)

(assert (=> b!5373640 (= res!2281145 (not lt!2188654))))

(declare-fun e!3334086 () Bool)

(assert (=> b!5373640 e!3334086))

(declare-fun res!2281129 () Bool)

(assert (=> b!5373640 (=> (not res!2281129) (not e!3334086))))

(declare-fun lt!2188633 () Regex!15095)

(declare-fun matchR!7280 (Regex!15095 List!61584) Bool)

(declare-fun matchRSpec!2198 (Regex!15095 List!61584) Bool)

(assert (=> b!5373640 (= res!2281129 (= (matchR!7280 lt!2188633 s!2326) (matchRSpec!2198 lt!2188633 s!2326)))))

(declare-fun lt!2188660 () Unit!153898)

(declare-fun mainMatchTheorem!2198 (Regex!15095 List!61584) Unit!153898)

(assert (=> b!5373640 (= lt!2188660 (mainMatchTheorem!2198 lt!2188633 s!2326))))

(declare-fun b!5373641 () Bool)

(declare-fun res!2281140 () Bool)

(assert (=> b!5373641 (=> res!2281140 e!3334089)))

(assert (=> b!5373641 (= res!2281140 (or ((_ is Concat!23940) (regOne!30702 r!7292)) (not ((_ is Star!15095) (regOne!30702 r!7292)))))))

(declare-fun b!5373642 () Bool)

(declare-fun Unit!153900 () Unit!153898)

(assert (=> b!5373642 (= e!3334093 Unit!153900)))

(declare-fun b!5373644 () Bool)

(declare-fun res!2281141 () Bool)

(assert (=> b!5373644 (=> res!2281141 e!3334100)))

(declare-fun isEmpty!33442 (List!61585) Bool)

(assert (=> b!5373644 (= res!2281141 (isEmpty!33442 (t!374808 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun e!3334091 () Bool)

(assert (=> b!5373645 (= e!3334094 e!3334091)))

(declare-fun res!2281144 () Bool)

(assert (=> b!5373645 (=> res!2281144 e!3334091)))

(declare-fun ++!13398 (List!61584 List!61584) List!61584)

(assert (=> b!5373645 (= res!2281144 (not (= (++!13398 (_1!35597 lt!2188650) (_2!35597 lt!2188650)) s!2326)))))

(declare-datatypes ((Option!15206 0))(
  ( (None!15205) (Some!15205 (v!51234 tuple2!64588)) )
))
(declare-fun lt!2188658 () Option!15206)

(declare-fun get!21151 (Option!15206) tuple2!64588)

(assert (=> b!5373645 (= lt!2188650 (get!21151 lt!2188658))))

(declare-fun Exists!2276 (Int) Bool)

(assert (=> b!5373645 (= (Exists!2276 lambda!277519) (Exists!2276 lambda!277520))))

(declare-fun lt!2188651 () Unit!153898)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!930 (Regex!15095 Regex!15095 List!61584) Unit!153898)

(assert (=> b!5373645 (= lt!2188651 (lemmaExistCutMatchRandMatchRSpecEquivalent!930 lt!2188632 (regTwo!30702 r!7292) s!2326))))

(declare-fun isDefined!11909 (Option!15206) Bool)

(assert (=> b!5373645 (= (isDefined!11909 lt!2188658) (Exists!2276 lambda!277519))))

(declare-fun findConcatSeparation!1620 (Regex!15095 Regex!15095 List!61584 List!61584 List!61584) Option!15206)

(assert (=> b!5373645 (= lt!2188658 (findConcatSeparation!1620 lt!2188632 (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326))))

(declare-fun lt!2188666 () Unit!153898)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1384 (Regex!15095 Regex!15095 List!61584) Unit!153898)

(assert (=> b!5373645 (= lt!2188666 (lemmaFindConcatSeparationEquivalentToExists!1384 lt!2188632 (regTwo!30702 r!7292) s!2326))))

(declare-fun b!5373646 () Bool)

(declare-fun res!2281134 () Bool)

(assert (=> b!5373646 (=> res!2281134 e!3334098)))

(declare-fun lt!2188649 () Regex!15095)

(assert (=> b!5373646 (= res!2281134 (not (= (unfocusZipper!837 (Cons!61462 lt!2188638 Nil!61462)) lt!2188649)))))

(declare-fun b!5373647 () Bool)

(declare-fun e!3334090 () Bool)

(assert (=> b!5373647 (= e!3334089 e!3334090)))

(declare-fun res!2281136 () Bool)

(assert (=> b!5373647 (=> res!2281136 e!3334090)))

(declare-fun lt!2188653 () (InoxSet Context!8958))

(assert (=> b!5373647 (= res!2281136 (not (= lt!2188643 lt!2188653)))))

(assert (=> b!5373647 (= lt!2188653 (derivationStepZipperDown!543 (reg!15424 (regOne!30702 r!7292)) lt!2188638 (h!67908 s!2326)))))

(declare-fun lt!2188663 () List!61585)

(assert (=> b!5373647 (= lt!2188638 (Context!8959 lt!2188663))))

(assert (=> b!5373647 (= lt!2188663 (Cons!61461 lt!2188632 (t!374808 (exprs!4979 (h!67910 zl!343)))))))

(assert (=> b!5373647 (= lt!2188632 (Star!15095 (reg!15424 (regOne!30702 r!7292))))))

(declare-fun tp!1490448 () Bool)

(declare-fun setNonEmpty!34841 () Bool)

(declare-fun setRes!34841 () Bool)

(declare-fun setElem!34841 () Context!8958)

(declare-fun inv!80984 (Context!8958) Bool)

(assert (=> setNonEmpty!34841 (= setRes!34841 (and tp!1490448 (inv!80984 setElem!34841) e!3334095))))

(declare-fun setRest!34841 () (InoxSet Context!8958))

(assert (=> setNonEmpty!34841 (= z!1189 ((_ map or) (store ((as const (Array Context!8958 Bool)) false) setElem!34841 true) setRest!34841))))

(declare-fun b!5373648 () Bool)

(declare-fun e!3334101 () Bool)

(declare-fun tp!1490453 () Bool)

(assert (=> b!5373648 (= e!3334101 tp!1490453)))

(declare-fun b!5373649 () Bool)

(declare-fun lt!2188628 () Bool)

(assert (=> b!5373649 (= e!3334086 (or (not lt!2188654) lt!2188628))))

(declare-fun b!5373650 () Bool)

(declare-fun e!3334082 () Bool)

(declare-fun e!3334083 () Bool)

(assert (=> b!5373650 (= e!3334082 (not e!3334083))))

(declare-fun res!2281123 () Bool)

(assert (=> b!5373650 (=> res!2281123 e!3334083)))

(assert (=> b!5373650 (= res!2281123 (not ((_ is Cons!61462) zl!343)))))

(assert (=> b!5373650 (= lt!2188654 lt!2188628)))

(assert (=> b!5373650 (= lt!2188628 (matchRSpec!2198 r!7292 s!2326))))

(assert (=> b!5373650 (= lt!2188654 (matchR!7280 r!7292 s!2326))))

(declare-fun lt!2188645 () Unit!153898)

(assert (=> b!5373650 (= lt!2188645 (mainMatchTheorem!2198 r!7292 s!2326))))

(declare-fun setIsEmpty!34841 () Bool)

(assert (=> setIsEmpty!34841 setRes!34841))

(declare-fun b!5373651 () Bool)

(declare-fun tp!1490445 () Bool)

(declare-fun tp!1490452 () Bool)

(assert (=> b!5373651 (= e!3334101 (and tp!1490445 tp!1490452))))

(declare-fun validRegex!6831 (Regex!15095) Bool)

(assert (=> b!5373652 (= e!3334091 (validRegex!6831 (reg!15424 (regOne!30702 r!7292))))))

(assert (=> b!5373652 (= (Exists!2276 lambda!277521) (Exists!2276 lambda!277523))))

(declare-fun lt!2188630 () Unit!153898)

(assert (=> b!5373652 (= lt!2188630 (lemmaExistCutMatchRandMatchRSpecEquivalent!930 (reg!15424 (regOne!30702 r!7292)) lt!2188632 (_1!35597 lt!2188650)))))

(assert (=> b!5373652 (= (Exists!2276 lambda!277521) (Exists!2276 lambda!277522))))

(declare-fun lt!2188665 () Unit!153898)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!360 (Regex!15095 List!61584) Unit!153898)

(assert (=> b!5373652 (= lt!2188665 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!360 (reg!15424 (regOne!30702 r!7292)) (_1!35597 lt!2188650)))))

(assert (=> b!5373652 (= (isDefined!11909 (findConcatSeparation!1620 (reg!15424 (regOne!30702 r!7292)) lt!2188632 Nil!61460 (_1!35597 lt!2188650) (_1!35597 lt!2188650))) (Exists!2276 lambda!277521))))

(declare-fun lt!2188644 () Unit!153898)

(assert (=> b!5373652 (= lt!2188644 (lemmaFindConcatSeparationEquivalentToExists!1384 (reg!15424 (regOne!30702 r!7292)) lt!2188632 (_1!35597 lt!2188650)))))

(assert (=> b!5373652 (matchRSpec!2198 lt!2188632 (_1!35597 lt!2188650))))

(declare-fun lt!2188661 () Unit!153898)

(assert (=> b!5373652 (= lt!2188661 (mainMatchTheorem!2198 lt!2188632 (_1!35597 lt!2188650)))))

(declare-fun b!5373653 () Bool)

(declare-fun res!2281137 () Bool)

(assert (=> b!5373653 (=> res!2281137 e!3334083)))

(declare-fun isEmpty!33443 (List!61586) Bool)

(assert (=> b!5373653 (= res!2281137 (not (isEmpty!33443 (t!374809 zl!343))))))

(declare-fun b!5373654 () Bool)

(declare-fun e!3334084 () Bool)

(declare-fun e!3334097 () Bool)

(declare-fun tp!1490444 () Bool)

(assert (=> b!5373654 (= e!3334084 (and (inv!80984 (h!67910 zl!343)) e!3334097 tp!1490444))))

(declare-fun b!5373655 () Bool)

(declare-fun res!2281147 () Bool)

(assert (=> b!5373655 (=> res!2281147 e!3334087)))

(declare-fun lt!2188655 () Regex!15095)

(assert (=> b!5373655 (= res!2281147 (not (= lt!2188655 r!7292)))))

(declare-fun b!5373656 () Bool)

(declare-fun res!2281128 () Bool)

(assert (=> b!5373656 (=> res!2281128 e!3334083)))

(declare-fun generalisedUnion!1024 (List!61585) Regex!15095)

(declare-fun unfocusZipperList!537 (List!61586) List!61585)

(assert (=> b!5373656 (= res!2281128 (not (= r!7292 (generalisedUnion!1024 (unfocusZipperList!537 zl!343)))))))

(declare-fun b!5373657 () Bool)

(declare-fun tp!1490446 () Bool)

(declare-fun tp!1490447 () Bool)

(assert (=> b!5373657 (= e!3334101 (and tp!1490446 tp!1490447))))

(declare-fun b!5373658 () Bool)

(declare-fun res!2281132 () Bool)

(assert (=> b!5373658 (=> res!2281132 e!3334089)))

(declare-fun e!3334099 () Bool)

(assert (=> b!5373658 (= res!2281132 e!3334099)))

(declare-fun res!2281151 () Bool)

(assert (=> b!5373658 (=> (not res!2281151) (not e!3334099))))

(assert (=> b!5373658 (= res!2281151 ((_ is Concat!23940) (regOne!30702 r!7292)))))

(declare-fun b!5373659 () Bool)

(declare-fun Unit!153901 () Unit!153898)

(assert (=> b!5373659 (= e!3334093 Unit!153901)))

(declare-fun lt!2188646 () Unit!153898)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!332 ((InoxSet Context!8958) (InoxSet Context!8958) List!61584) Unit!153898)

(assert (=> b!5373659 (= lt!2188646 (lemmaZipperConcatMatchesSameAsBothZippers!332 lt!2188643 lt!2188656 (t!374807 s!2326)))))

(declare-fun res!2281122 () Bool)

(assert (=> b!5373659 (= res!2281122 (matchZipper!1339 lt!2188643 (t!374807 s!2326)))))

(assert (=> b!5373659 (=> res!2281122 e!3334088)))

(assert (=> b!5373659 (= (matchZipper!1339 ((_ map or) lt!2188643 lt!2188656) (t!374807 s!2326)) e!3334088)))

(declare-fun b!5373660 () Bool)

(assert (=> b!5373660 (= e!3334102 e!3334082)))

(declare-fun res!2281138 () Bool)

(assert (=> b!5373660 (=> (not res!2281138) (not e!3334082))))

(assert (=> b!5373660 (= res!2281138 (= r!7292 lt!2188655))))

(assert (=> b!5373660 (= lt!2188655 (unfocusZipper!837 zl!343))))

(declare-fun b!5373661 () Bool)

(declare-fun e!3334085 () Bool)

(declare-fun tp_is_empty!39443 () Bool)

(declare-fun tp!1490450 () Bool)

(assert (=> b!5373661 (= e!3334085 (and tp_is_empty!39443 tp!1490450))))

(declare-fun b!5373662 () Bool)

(declare-fun res!2281143 () Bool)

(assert (=> b!5373662 (=> res!2281143 e!3334091)))

(assert (=> b!5373662 (= res!2281143 (not (matchR!7280 (regTwo!30702 r!7292) (_2!35597 lt!2188650))))))

(declare-fun b!5373663 () Bool)

(assert (=> b!5373663 (= e!3334090 e!3334087)))

(declare-fun res!2281135 () Bool)

(assert (=> b!5373663 (=> res!2281135 e!3334087)))

(assert (=> b!5373663 (= res!2281135 (not (= lt!2188648 lt!2188653)))))

(declare-fun lt!2188634 () Context!8958)

(assert (=> b!5373663 (= (flatMap!822 lt!2188631 lambda!277518) (derivationStepZipperUp!467 lt!2188634 (h!67908 s!2326)))))

(declare-fun lt!2188652 () Unit!153898)

(assert (=> b!5373663 (= lt!2188652 (lemmaFlatMapOnSingletonSet!354 lt!2188631 lt!2188634 lambda!277518))))

(declare-fun lt!2188659 () (InoxSet Context!8958))

(assert (=> b!5373663 (= lt!2188659 (derivationStepZipperUp!467 lt!2188634 (h!67908 s!2326)))))

(declare-fun derivationStepZipper!1334 ((InoxSet Context!8958) C!30460) (InoxSet Context!8958))

(assert (=> b!5373663 (= lt!2188648 (derivationStepZipper!1334 lt!2188631 (h!67908 s!2326)))))

(assert (=> b!5373663 (= lt!2188631 (store ((as const (Array Context!8958 Bool)) false) lt!2188634 true))))

(assert (=> b!5373663 (= lt!2188634 (Context!8959 (Cons!61461 (reg!15424 (regOne!30702 r!7292)) lt!2188663)))))

(declare-fun b!5373664 () Bool)

(declare-fun res!2281127 () Bool)

(assert (=> b!5373664 (=> res!2281127 e!3334091)))

(assert (=> b!5373664 (= res!2281127 (not (matchR!7280 lt!2188632 (_1!35597 lt!2188650))))))

(declare-fun b!5373665 () Bool)

(declare-fun tp!1490451 () Bool)

(assert (=> b!5373665 (= e!3334097 tp!1490451)))

(declare-fun b!5373666 () Bool)

(declare-fun e!3334092 () Bool)

(assert (=> b!5373666 (= e!3334092 e!3334096)))

(declare-fun res!2281125 () Bool)

(assert (=> b!5373666 (=> res!2281125 e!3334096)))

(assert (=> b!5373666 (= res!2281125 (not (= (unfocusZipper!837 (Cons!61462 lt!2188634 Nil!61462)) lt!2188633)))))

(assert (=> b!5373666 (= lt!2188633 (Concat!23940 (reg!15424 (regOne!30702 r!7292)) lt!2188649))))

(declare-fun res!2281131 () Bool)

(assert (=> start!565254 (=> (not res!2281131) (not e!3334102))))

(assert (=> start!565254 (= res!2281131 (validRegex!6831 r!7292))))

(assert (=> start!565254 e!3334102))

(assert (=> start!565254 e!3334101))

(declare-fun condSetEmpty!34841 () Bool)

(assert (=> start!565254 (= condSetEmpty!34841 (= z!1189 ((as const (Array Context!8958 Bool)) false)))))

(assert (=> start!565254 setRes!34841))

(assert (=> start!565254 e!3334084))

(assert (=> start!565254 e!3334085))

(assert (=> b!5373643 (= e!3334083 e!3334100)))

(declare-fun res!2281148 () Bool)

(assert (=> b!5373643 (=> res!2281148 e!3334100)))

(declare-fun lt!2188626 () Bool)

(assert (=> b!5373643 (= res!2281148 (or (not (= lt!2188654 lt!2188626)) ((_ is Nil!61460) s!2326)))))

(assert (=> b!5373643 (= (Exists!2276 lambda!277516) (Exists!2276 lambda!277517))))

(declare-fun lt!2188647 () Unit!153898)

(assert (=> b!5373643 (= lt!2188647 (lemmaExistCutMatchRandMatchRSpecEquivalent!930 (regOne!30702 r!7292) (regTwo!30702 r!7292) s!2326))))

(assert (=> b!5373643 (= lt!2188626 (Exists!2276 lambda!277516))))

(assert (=> b!5373643 (= lt!2188626 (isDefined!11909 (findConcatSeparation!1620 (regOne!30702 r!7292) (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326)))))

(declare-fun lt!2188642 () Unit!153898)

(assert (=> b!5373643 (= lt!2188642 (lemmaFindConcatSeparationEquivalentToExists!1384 (regOne!30702 r!7292) (regTwo!30702 r!7292) s!2326))))

(declare-fun b!5373667 () Bool)

(assert (=> b!5373667 (= e!3334087 e!3334092)))

(declare-fun res!2281124 () Bool)

(assert (=> b!5373667 (=> res!2281124 e!3334092)))

(assert (=> b!5373667 (= res!2281124 (not (= r!7292 lt!2188649)))))

(assert (=> b!5373667 (= lt!2188649 (Concat!23940 lt!2188632 (regTwo!30702 r!7292)))))

(declare-fun b!5373668 () Bool)

(declare-fun res!2281130 () Bool)

(assert (=> b!5373668 (=> res!2281130 e!3334083)))

(assert (=> b!5373668 (= res!2281130 (not ((_ is Cons!61461) (exprs!4979 (h!67910 zl!343)))))))

(declare-fun b!5373669 () Bool)

(assert (=> b!5373669 (= e!3334099 (nullable!5264 (regOne!30702 (regOne!30702 r!7292))))))

(declare-fun b!5373670 () Bool)

(declare-fun res!2281150 () Bool)

(assert (=> b!5373670 (=> res!2281150 e!3334091)))

(declare-fun isEmpty!33444 (List!61584) Bool)

(assert (=> b!5373670 (= res!2281150 (isEmpty!33444 (_1!35597 lt!2188650)))))

(declare-fun b!5373671 () Bool)

(declare-fun res!2281142 () Bool)

(assert (=> b!5373671 (=> res!2281142 e!3334083)))

(assert (=> b!5373671 (= res!2281142 (or ((_ is EmptyExpr!15095) r!7292) ((_ is EmptyLang!15095) r!7292) ((_ is ElementMatch!15095) r!7292) ((_ is Union!15095) r!7292) (not ((_ is Concat!23940) r!7292))))))

(declare-fun b!5373672 () Bool)

(assert (=> b!5373672 (= e!3334101 tp_is_empty!39443)))

(declare-fun b!5373673 () Bool)

(declare-fun res!2281126 () Bool)

(assert (=> b!5373673 (=> res!2281126 e!3334083)))

(declare-fun generalisedConcat!764 (List!61585) Regex!15095)

(assert (=> b!5373673 (= res!2281126 (not (= r!7292 (generalisedConcat!764 (exprs!4979 (h!67910 zl!343))))))))

(assert (= (and start!565254 res!2281131) b!5373636))

(assert (= (and b!5373636 res!2281146) b!5373660))

(assert (= (and b!5373660 res!2281138) b!5373650))

(assert (= (and b!5373650 (not res!2281123)) b!5373653))

(assert (= (and b!5373653 (not res!2281137)) b!5373673))

(assert (= (and b!5373673 (not res!2281126)) b!5373668))

(assert (= (and b!5373668 (not res!2281130)) b!5373656))

(assert (= (and b!5373656 (not res!2281128)) b!5373671))

(assert (= (and b!5373671 (not res!2281142)) b!5373643))

(assert (= (and b!5373643 (not res!2281148)) b!5373644))

(assert (= (and b!5373644 (not res!2281141)) b!5373638))

(assert (= (and b!5373638 c!936294) b!5373659))

(assert (= (and b!5373638 (not c!936294)) b!5373642))

(assert (= (and b!5373659 (not res!2281122)) b!5373637))

(assert (= (and b!5373638 (not res!2281133)) b!5373658))

(assert (= (and b!5373658 res!2281151) b!5373669))

(assert (= (and b!5373658 (not res!2281132)) b!5373641))

(assert (= (and b!5373641 (not res!2281140)) b!5373647))

(assert (= (and b!5373647 (not res!2281136)) b!5373663))

(assert (= (and b!5373663 (not res!2281135)) b!5373635))

(assert (= (and b!5373635 (not res!2281139)) b!5373655))

(assert (= (and b!5373655 (not res!2281147)) b!5373667))

(assert (= (and b!5373667 (not res!2281124)) b!5373666))

(assert (= (and b!5373666 (not res!2281125)) b!5373639))

(assert (= (and b!5373639 (not res!2281149)) b!5373646))

(assert (= (and b!5373646 (not res!2281134)) b!5373640))

(assert (= (and b!5373640 res!2281129) b!5373649))

(assert (= (and b!5373640 (not res!2281145)) b!5373645))

(assert (= (and b!5373645 (not res!2281144)) b!5373664))

(assert (= (and b!5373664 (not res!2281127)) b!5373662))

(assert (= (and b!5373662 (not res!2281143)) b!5373670))

(assert (= (and b!5373670 (not res!2281150)) b!5373652))

(assert (= (and start!565254 ((_ is ElementMatch!15095) r!7292)) b!5373672))

(assert (= (and start!565254 ((_ is Concat!23940) r!7292)) b!5373657))

(assert (= (and start!565254 ((_ is Star!15095) r!7292)) b!5373648))

(assert (= (and start!565254 ((_ is Union!15095) r!7292)) b!5373651))

(assert (= (and start!565254 condSetEmpty!34841) setIsEmpty!34841))

(assert (= (and start!565254 (not condSetEmpty!34841)) setNonEmpty!34841))

(assert (= setNonEmpty!34841 b!5373634))

(assert (= b!5373654 b!5373665))

(assert (= (and start!565254 ((_ is Cons!61462) zl!343)) b!5373654))

(assert (= (and start!565254 ((_ is Cons!61460) s!2326)) b!5373661))

(declare-fun m!6400526 () Bool)

(assert (=> b!5373637 m!6400526))

(declare-fun m!6400528 () Bool)

(assert (=> b!5373663 m!6400528))

(declare-fun m!6400530 () Bool)

(assert (=> b!5373663 m!6400530))

(declare-fun m!6400532 () Bool)

(assert (=> b!5373663 m!6400532))

(declare-fun m!6400534 () Bool)

(assert (=> b!5373663 m!6400534))

(declare-fun m!6400536 () Bool)

(assert (=> b!5373663 m!6400536))

(declare-fun m!6400538 () Bool)

(assert (=> b!5373647 m!6400538))

(declare-fun m!6400540 () Bool)

(assert (=> b!5373644 m!6400540))

(declare-fun m!6400542 () Bool)

(assert (=> start!565254 m!6400542))

(declare-fun m!6400544 () Bool)

(assert (=> b!5373656 m!6400544))

(assert (=> b!5373656 m!6400544))

(declare-fun m!6400546 () Bool)

(assert (=> b!5373656 m!6400546))

(declare-fun m!6400548 () Bool)

(assert (=> b!5373659 m!6400548))

(declare-fun m!6400550 () Bool)

(assert (=> b!5373659 m!6400550))

(declare-fun m!6400552 () Bool)

(assert (=> b!5373659 m!6400552))

(declare-fun m!6400554 () Bool)

(assert (=> b!5373653 m!6400554))

(declare-fun m!6400556 () Bool)

(assert (=> b!5373666 m!6400556))

(declare-fun m!6400558 () Bool)

(assert (=> setNonEmpty!34841 m!6400558))

(declare-fun m!6400560 () Bool)

(assert (=> b!5373643 m!6400560))

(declare-fun m!6400562 () Bool)

(assert (=> b!5373643 m!6400562))

(declare-fun m!6400564 () Bool)

(assert (=> b!5373643 m!6400564))

(declare-fun m!6400566 () Bool)

(assert (=> b!5373643 m!6400566))

(assert (=> b!5373643 m!6400562))

(declare-fun m!6400568 () Bool)

(assert (=> b!5373643 m!6400568))

(assert (=> b!5373643 m!6400560))

(declare-fun m!6400570 () Bool)

(assert (=> b!5373643 m!6400570))

(declare-fun m!6400572 () Bool)

(assert (=> b!5373650 m!6400572))

(declare-fun m!6400574 () Bool)

(assert (=> b!5373650 m!6400574))

(declare-fun m!6400576 () Bool)

(assert (=> b!5373650 m!6400576))

(declare-fun m!6400578 () Bool)

(assert (=> b!5373662 m!6400578))

(declare-fun m!6400580 () Bool)

(assert (=> b!5373646 m!6400580))

(declare-fun m!6400582 () Bool)

(assert (=> b!5373638 m!6400582))

(declare-fun m!6400584 () Bool)

(assert (=> b!5373638 m!6400584))

(declare-fun m!6400586 () Bool)

(assert (=> b!5373638 m!6400586))

(declare-fun m!6400588 () Bool)

(assert (=> b!5373638 m!6400588))

(declare-fun m!6400590 () Bool)

(assert (=> b!5373638 m!6400590))

(declare-fun m!6400592 () Bool)

(assert (=> b!5373638 m!6400592))

(declare-fun m!6400594 () Bool)

(assert (=> b!5373638 m!6400594))

(declare-fun m!6400596 () Bool)

(assert (=> b!5373639 m!6400596))

(declare-fun m!6400598 () Bool)

(assert (=> b!5373639 m!6400598))

(declare-fun m!6400600 () Bool)

(assert (=> b!5373639 m!6400600))

(declare-fun m!6400602 () Bool)

(assert (=> b!5373639 m!6400602))

(declare-fun m!6400604 () Bool)

(assert (=> b!5373639 m!6400604))

(declare-fun m!6400606 () Bool)

(assert (=> b!5373639 m!6400606))

(declare-fun m!6400608 () Bool)

(assert (=> b!5373639 m!6400608))

(declare-fun m!6400610 () Bool)

(assert (=> b!5373639 m!6400610))

(declare-fun m!6400612 () Bool)

(assert (=> b!5373639 m!6400612))

(declare-fun m!6400614 () Bool)

(assert (=> b!5373645 m!6400614))

(declare-fun m!6400616 () Bool)

(assert (=> b!5373645 m!6400616))

(declare-fun m!6400618 () Bool)

(assert (=> b!5373645 m!6400618))

(declare-fun m!6400620 () Bool)

(assert (=> b!5373645 m!6400620))

(declare-fun m!6400622 () Bool)

(assert (=> b!5373645 m!6400622))

(declare-fun m!6400624 () Bool)

(assert (=> b!5373645 m!6400624))

(declare-fun m!6400626 () Bool)

(assert (=> b!5373645 m!6400626))

(assert (=> b!5373645 m!6400616))

(declare-fun m!6400628 () Bool)

(assert (=> b!5373645 m!6400628))

(declare-fun m!6400630 () Bool)

(assert (=> b!5373652 m!6400630))

(declare-fun m!6400632 () Bool)

(assert (=> b!5373652 m!6400632))

(declare-fun m!6400634 () Bool)

(assert (=> b!5373652 m!6400634))

(declare-fun m!6400636 () Bool)

(assert (=> b!5373652 m!6400636))

(declare-fun m!6400638 () Bool)

(assert (=> b!5373652 m!6400638))

(declare-fun m!6400640 () Bool)

(assert (=> b!5373652 m!6400640))

(declare-fun m!6400642 () Bool)

(assert (=> b!5373652 m!6400642))

(declare-fun m!6400644 () Bool)

(assert (=> b!5373652 m!6400644))

(declare-fun m!6400646 () Bool)

(assert (=> b!5373652 m!6400646))

(declare-fun m!6400648 () Bool)

(assert (=> b!5373652 m!6400648))

(declare-fun m!6400650 () Bool)

(assert (=> b!5373652 m!6400650))

(assert (=> b!5373652 m!6400632))

(assert (=> b!5373652 m!6400632))

(assert (=> b!5373652 m!6400634))

(declare-fun m!6400652 () Bool)

(assert (=> b!5373635 m!6400652))

(declare-fun m!6400654 () Bool)

(assert (=> b!5373635 m!6400654))

(declare-fun m!6400656 () Bool)

(assert (=> b!5373654 m!6400656))

(declare-fun m!6400658 () Bool)

(assert (=> b!5373640 m!6400658))

(declare-fun m!6400660 () Bool)

(assert (=> b!5373640 m!6400660))

(declare-fun m!6400662 () Bool)

(assert (=> b!5373640 m!6400662))

(declare-fun m!6400664 () Bool)

(assert (=> b!5373673 m!6400664))

(declare-fun m!6400666 () Bool)

(assert (=> b!5373664 m!6400666))

(declare-fun m!6400668 () Bool)

(assert (=> b!5373660 m!6400668))

(declare-fun m!6400670 () Bool)

(assert (=> b!5373669 m!6400670))

(declare-fun m!6400672 () Bool)

(assert (=> b!5373636 m!6400672))

(declare-fun m!6400674 () Bool)

(assert (=> b!5373670 m!6400674))

(check-sat (not b!5373635) (not start!565254) (not b!5373643) (not b!5373644) (not b!5373654) (not b!5373657) (not setNonEmpty!34841) (not b!5373673) (not b!5373653) (not b!5373664) (not b!5373638) (not b!5373662) (not b!5373663) (not b!5373656) (not b!5373652) (not b!5373636) (not b!5373650) (not b!5373637) tp_is_empty!39443 (not b!5373665) (not b!5373645) (not b!5373634) (not b!5373651) (not b!5373666) (not b!5373639) (not b!5373646) (not b!5373648) (not b!5373660) (not b!5373661) (not b!5373669) (not b!5373670) (not b!5373640) (not b!5373659) (not b!5373647))
(check-sat)
(get-model)

(declare-fun d!1720399 () Bool)

(declare-fun lambda!277541 () Int)

(declare-fun forall!14497 (List!61585 Int) Bool)

(assert (=> d!1720399 (= (inv!80984 setElem!34841) (forall!14497 (exprs!4979 setElem!34841) lambda!277541))))

(declare-fun bs!1244034 () Bool)

(assert (= bs!1244034 d!1720399))

(declare-fun m!6400758 () Bool)

(assert (=> bs!1244034 m!6400758))

(assert (=> setNonEmpty!34841 d!1720399))

(declare-fun d!1720403 () Bool)

(declare-fun nullableFct!1555 (Regex!15095) Bool)

(assert (=> d!1720403 (= (nullable!5264 (regOne!30702 (regOne!30702 r!7292))) (nullableFct!1555 (regOne!30702 (regOne!30702 r!7292))))))

(declare-fun bs!1244035 () Bool)

(assert (= bs!1244035 d!1720403))

(declare-fun m!6400760 () Bool)

(assert (=> bs!1244035 m!6400760))

(assert (=> b!5373669 d!1720403))

(declare-fun d!1720405 () Bool)

(assert (=> d!1720405 (= (isEmpty!33444 (_1!35597 lt!2188650)) ((_ is Nil!61460) (_1!35597 lt!2188650)))))

(assert (=> b!5373670 d!1720405))

(declare-fun bs!1244055 () Bool)

(declare-fun b!5373849 () Bool)

(assert (= bs!1244055 (and b!5373849 b!5373652)))

(declare-fun lambda!277557 () Int)

(assert (=> bs!1244055 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (reg!15424 r!7292) (reg!15424 (regOne!30702 r!7292))) (= r!7292 lt!2188632)) (= lambda!277557 lambda!277522))))

(assert (=> bs!1244055 (not (= lambda!277557 lambda!277523))))

(declare-fun bs!1244057 () Bool)

(assert (= bs!1244057 (and b!5373849 b!5373643)))

(assert (=> bs!1244057 (not (= lambda!277557 lambda!277517))))

(assert (=> bs!1244057 (not (= lambda!277557 lambda!277516))))

(assert (=> bs!1244055 (not (= lambda!277557 lambda!277521))))

(declare-fun bs!1244058 () Bool)

(assert (= bs!1244058 (and b!5373849 b!5373645)))

(assert (=> bs!1244058 (not (= lambda!277557 lambda!277520))))

(assert (=> bs!1244058 (not (= lambda!277557 lambda!277519))))

(assert (=> b!5373849 true))

(assert (=> b!5373849 true))

(declare-fun bs!1244060 () Bool)

(declare-fun b!5373846 () Bool)

(assert (= bs!1244060 (and b!5373846 b!5373652)))

(declare-fun lambda!277559 () Int)

(assert (=> bs!1244060 (not (= lambda!277559 lambda!277522))))

(declare-fun bs!1244061 () Bool)

(assert (= bs!1244061 (and b!5373846 b!5373849)))

(assert (=> bs!1244061 (not (= lambda!277559 lambda!277557))))

(assert (=> bs!1244060 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277559 lambda!277523))))

(declare-fun bs!1244062 () Bool)

(assert (= bs!1244062 (and b!5373846 b!5373643)))

(assert (=> bs!1244062 (= lambda!277559 lambda!277517)))

(assert (=> bs!1244062 (not (= lambda!277559 lambda!277516))))

(assert (=> bs!1244060 (not (= lambda!277559 lambda!277521))))

(declare-fun bs!1244063 () Bool)

(assert (= bs!1244063 (and b!5373846 b!5373645)))

(assert (=> bs!1244063 (= (= (regOne!30702 r!7292) lt!2188632) (= lambda!277559 lambda!277520))))

(assert (=> bs!1244063 (not (= lambda!277559 lambda!277519))))

(assert (=> b!5373846 true))

(assert (=> b!5373846 true))

(declare-fun b!5373842 () Bool)

(declare-fun e!3334201 () Bool)

(assert (=> b!5373842 (= e!3334201 (matchRSpec!2198 (regTwo!30703 r!7292) s!2326))))

(declare-fun b!5373843 () Bool)

(declare-fun c!936338 () Bool)

(assert (=> b!5373843 (= c!936338 ((_ is Union!15095) r!7292))))

(declare-fun e!3334200 () Bool)

(declare-fun e!3334199 () Bool)

(assert (=> b!5373843 (= e!3334200 e!3334199)))

(declare-fun bm!384727 () Bool)

(declare-fun c!936336 () Bool)

(declare-fun call!384733 () Bool)

(assert (=> bm!384727 (= call!384733 (Exists!2276 (ite c!936336 lambda!277557 lambda!277559)))))

(declare-fun b!5373844 () Bool)

(declare-fun e!3334204 () Bool)

(declare-fun e!3334203 () Bool)

(assert (=> b!5373844 (= e!3334204 e!3334203)))

(declare-fun res!2281234 () Bool)

(assert (=> b!5373844 (= res!2281234 (not ((_ is EmptyLang!15095) r!7292)))))

(assert (=> b!5373844 (=> (not res!2281234) (not e!3334203))))

(declare-fun bm!384728 () Bool)

(declare-fun call!384732 () Bool)

(assert (=> bm!384728 (= call!384732 (isEmpty!33444 s!2326))))

(declare-fun b!5373845 () Bool)

(assert (=> b!5373845 (= e!3334199 e!3334201)))

(declare-fun res!2281235 () Bool)

(assert (=> b!5373845 (= res!2281235 (matchRSpec!2198 (regOne!30703 r!7292) s!2326))))

(assert (=> b!5373845 (=> res!2281235 e!3334201)))

(declare-fun e!3334202 () Bool)

(assert (=> b!5373846 (= e!3334202 call!384733)))

(declare-fun b!5373847 () Bool)

(assert (=> b!5373847 (= e!3334204 call!384732)))

(declare-fun d!1720407 () Bool)

(declare-fun c!936337 () Bool)

(assert (=> d!1720407 (= c!936337 ((_ is EmptyExpr!15095) r!7292))))

(assert (=> d!1720407 (= (matchRSpec!2198 r!7292 s!2326) e!3334204)))

(declare-fun b!5373848 () Bool)

(assert (=> b!5373848 (= e!3334199 e!3334202)))

(assert (=> b!5373848 (= c!936336 ((_ is Star!15095) r!7292))))

(declare-fun e!3334205 () Bool)

(assert (=> b!5373849 (= e!3334205 call!384733)))

(declare-fun b!5373850 () Bool)

(declare-fun res!2281236 () Bool)

(assert (=> b!5373850 (=> res!2281236 e!3334205)))

(assert (=> b!5373850 (= res!2281236 call!384732)))

(assert (=> b!5373850 (= e!3334202 e!3334205)))

(declare-fun b!5373851 () Bool)

(assert (=> b!5373851 (= e!3334200 (= s!2326 (Cons!61460 (c!936295 r!7292) Nil!61460)))))

(declare-fun b!5373852 () Bool)

(declare-fun c!936339 () Bool)

(assert (=> b!5373852 (= c!936339 ((_ is ElementMatch!15095) r!7292))))

(assert (=> b!5373852 (= e!3334203 e!3334200)))

(assert (= (and d!1720407 c!936337) b!5373847))

(assert (= (and d!1720407 (not c!936337)) b!5373844))

(assert (= (and b!5373844 res!2281234) b!5373852))

(assert (= (and b!5373852 c!936339) b!5373851))

(assert (= (and b!5373852 (not c!936339)) b!5373843))

(assert (= (and b!5373843 c!936338) b!5373845))

(assert (= (and b!5373843 (not c!936338)) b!5373848))

(assert (= (and b!5373845 (not res!2281235)) b!5373842))

(assert (= (and b!5373848 c!936336) b!5373850))

(assert (= (and b!5373848 (not c!936336)) b!5373846))

(assert (= (and b!5373850 (not res!2281236)) b!5373849))

(assert (= (or b!5373849 b!5373846) bm!384727))

(assert (= (or b!5373847 b!5373850) bm!384728))

(declare-fun m!6400778 () Bool)

(assert (=> b!5373842 m!6400778))

(declare-fun m!6400780 () Bool)

(assert (=> bm!384727 m!6400780))

(declare-fun m!6400782 () Bool)

(assert (=> bm!384728 m!6400782))

(declare-fun m!6400784 () Bool)

(assert (=> b!5373845 m!6400784))

(assert (=> b!5373650 d!1720407))

(declare-fun b!5373928 () Bool)

(declare-fun e!3334248 () Bool)

(declare-fun head!11526 (List!61584) C!30460)

(assert (=> b!5373928 (= e!3334248 (not (= (head!11526 s!2326) (c!936295 r!7292))))))

(declare-fun bm!384731 () Bool)

(declare-fun call!384736 () Bool)

(assert (=> bm!384731 (= call!384736 (isEmpty!33444 s!2326))))

(declare-fun d!1720417 () Bool)

(declare-fun e!3334249 () Bool)

(assert (=> d!1720417 e!3334249))

(declare-fun c!936360 () Bool)

(assert (=> d!1720417 (= c!936360 ((_ is EmptyExpr!15095) r!7292))))

(declare-fun lt!2188702 () Bool)

(declare-fun e!3334247 () Bool)

(assert (=> d!1720417 (= lt!2188702 e!3334247)))

(declare-fun c!936361 () Bool)

(assert (=> d!1720417 (= c!936361 (isEmpty!33444 s!2326))))

(assert (=> d!1720417 (validRegex!6831 r!7292)))

(assert (=> d!1720417 (= (matchR!7280 r!7292 s!2326) lt!2188702)))

(declare-fun b!5373929 () Bool)

(declare-fun res!2281274 () Bool)

(declare-fun e!3334251 () Bool)

(assert (=> b!5373929 (=> res!2281274 e!3334251)))

(declare-fun e!3334252 () Bool)

(assert (=> b!5373929 (= res!2281274 e!3334252)))

(declare-fun res!2281275 () Bool)

(assert (=> b!5373929 (=> (not res!2281275) (not e!3334252))))

(assert (=> b!5373929 (= res!2281275 lt!2188702)))

(declare-fun b!5373930 () Bool)

(assert (=> b!5373930 (= e!3334252 (= (head!11526 s!2326) (c!936295 r!7292)))))

(declare-fun b!5373931 () Bool)

(assert (=> b!5373931 (= e!3334247 (nullable!5264 r!7292))))

(declare-fun b!5373932 () Bool)

(declare-fun derivativeStep!4225 (Regex!15095 C!30460) Regex!15095)

(declare-fun tail!10623 (List!61584) List!61584)

(assert (=> b!5373932 (= e!3334247 (matchR!7280 (derivativeStep!4225 r!7292 (head!11526 s!2326)) (tail!10623 s!2326)))))

(declare-fun b!5373933 () Bool)

(declare-fun e!3334250 () Bool)

(assert (=> b!5373933 (= e!3334250 (not lt!2188702))))

(declare-fun b!5373934 () Bool)

(declare-fun e!3334253 () Bool)

(assert (=> b!5373934 (= e!3334251 e!3334253)))

(declare-fun res!2281272 () Bool)

(assert (=> b!5373934 (=> (not res!2281272) (not e!3334253))))

(assert (=> b!5373934 (= res!2281272 (not lt!2188702))))

(declare-fun b!5373935 () Bool)

(declare-fun res!2281273 () Bool)

(assert (=> b!5373935 (=> res!2281273 e!3334251)))

(assert (=> b!5373935 (= res!2281273 (not ((_ is ElementMatch!15095) r!7292)))))

(assert (=> b!5373935 (= e!3334250 e!3334251)))

(declare-fun b!5373936 () Bool)

(assert (=> b!5373936 (= e!3334249 (= lt!2188702 call!384736))))

(declare-fun b!5373937 () Bool)

(assert (=> b!5373937 (= e!3334249 e!3334250)))

(declare-fun c!936362 () Bool)

(assert (=> b!5373937 (= c!936362 ((_ is EmptyLang!15095) r!7292))))

(declare-fun b!5373938 () Bool)

(assert (=> b!5373938 (= e!3334253 e!3334248)))

(declare-fun res!2281277 () Bool)

(assert (=> b!5373938 (=> res!2281277 e!3334248)))

(assert (=> b!5373938 (= res!2281277 call!384736)))

(declare-fun b!5373939 () Bool)

(declare-fun res!2281278 () Bool)

(assert (=> b!5373939 (=> res!2281278 e!3334248)))

(assert (=> b!5373939 (= res!2281278 (not (isEmpty!33444 (tail!10623 s!2326))))))

(declare-fun b!5373940 () Bool)

(declare-fun res!2281279 () Bool)

(assert (=> b!5373940 (=> (not res!2281279) (not e!3334252))))

(assert (=> b!5373940 (= res!2281279 (isEmpty!33444 (tail!10623 s!2326)))))

(declare-fun b!5373941 () Bool)

(declare-fun res!2281276 () Bool)

(assert (=> b!5373941 (=> (not res!2281276) (not e!3334252))))

(assert (=> b!5373941 (= res!2281276 (not call!384736))))

(assert (= (and d!1720417 c!936361) b!5373931))

(assert (= (and d!1720417 (not c!936361)) b!5373932))

(assert (= (and d!1720417 c!936360) b!5373936))

(assert (= (and d!1720417 (not c!936360)) b!5373937))

(assert (= (and b!5373937 c!936362) b!5373933))

(assert (= (and b!5373937 (not c!936362)) b!5373935))

(assert (= (and b!5373935 (not res!2281273)) b!5373929))

(assert (= (and b!5373929 res!2281275) b!5373941))

(assert (= (and b!5373941 res!2281276) b!5373940))

(assert (= (and b!5373940 res!2281279) b!5373930))

(assert (= (and b!5373929 (not res!2281274)) b!5373934))

(assert (= (and b!5373934 res!2281272) b!5373938))

(assert (= (and b!5373938 (not res!2281277)) b!5373939))

(assert (= (and b!5373939 (not res!2281278)) b!5373928))

(assert (= (or b!5373936 b!5373938 b!5373941) bm!384731))

(assert (=> bm!384731 m!6400782))

(declare-fun m!6400812 () Bool)

(assert (=> b!5373931 m!6400812))

(declare-fun m!6400814 () Bool)

(assert (=> b!5373930 m!6400814))

(declare-fun m!6400816 () Bool)

(assert (=> b!5373940 m!6400816))

(assert (=> b!5373940 m!6400816))

(declare-fun m!6400818 () Bool)

(assert (=> b!5373940 m!6400818))

(assert (=> b!5373932 m!6400814))

(assert (=> b!5373932 m!6400814))

(declare-fun m!6400820 () Bool)

(assert (=> b!5373932 m!6400820))

(assert (=> b!5373932 m!6400816))

(assert (=> b!5373932 m!6400820))

(assert (=> b!5373932 m!6400816))

(declare-fun m!6400822 () Bool)

(assert (=> b!5373932 m!6400822))

(assert (=> b!5373928 m!6400814))

(assert (=> d!1720417 m!6400782))

(assert (=> d!1720417 m!6400542))

(assert (=> b!5373939 m!6400816))

(assert (=> b!5373939 m!6400816))

(assert (=> b!5373939 m!6400818))

(assert (=> b!5373650 d!1720417))

(declare-fun d!1720423 () Bool)

(assert (=> d!1720423 (= (matchR!7280 r!7292 s!2326) (matchRSpec!2198 r!7292 s!2326))))

(declare-fun lt!2188709 () Unit!153898)

(declare-fun choose!40360 (Regex!15095 List!61584) Unit!153898)

(assert (=> d!1720423 (= lt!2188709 (choose!40360 r!7292 s!2326))))

(assert (=> d!1720423 (validRegex!6831 r!7292)))

(assert (=> d!1720423 (= (mainMatchTheorem!2198 r!7292 s!2326) lt!2188709)))

(declare-fun bs!1244068 () Bool)

(assert (= bs!1244068 d!1720423))

(assert (=> bs!1244068 m!6400574))

(assert (=> bs!1244068 m!6400572))

(declare-fun m!6400848 () Bool)

(assert (=> bs!1244068 m!6400848))

(assert (=> bs!1244068 m!6400542))

(assert (=> b!5373650 d!1720423))

(declare-fun bs!1244070 () Bool)

(declare-fun d!1720429 () Bool)

(assert (= bs!1244070 (and d!1720429 d!1720399)))

(declare-fun lambda!277568 () Int)

(assert (=> bs!1244070 (= lambda!277568 lambda!277541)))

(declare-fun b!5374020 () Bool)

(declare-fun e!3334300 () Regex!15095)

(declare-fun e!3334298 () Regex!15095)

(assert (=> b!5374020 (= e!3334300 e!3334298)))

(declare-fun c!936390 () Bool)

(assert (=> b!5374020 (= c!936390 ((_ is Cons!61461) (exprs!4979 (h!67910 zl!343))))))

(declare-fun b!5374021 () Bool)

(declare-fun e!3334301 () Bool)

(declare-fun e!3334297 () Bool)

(assert (=> b!5374021 (= e!3334301 e!3334297)))

(declare-fun c!936389 () Bool)

(declare-fun tail!10624 (List!61585) List!61585)

(assert (=> b!5374021 (= c!936389 (isEmpty!33442 (tail!10624 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun b!5374022 () Bool)

(assert (=> b!5374022 (= e!3334298 (Concat!23940 (h!67909 (exprs!4979 (h!67910 zl!343))) (generalisedConcat!764 (t!374808 (exprs!4979 (h!67910 zl!343))))))))

(declare-fun b!5374023 () Bool)

(declare-fun lt!2188715 () Regex!15095)

(declare-fun isConcat!461 (Regex!15095) Bool)

(assert (=> b!5374023 (= e!3334297 (isConcat!461 lt!2188715))))

(declare-fun b!5374024 () Bool)

(declare-fun head!11527 (List!61585) Regex!15095)

(assert (=> b!5374024 (= e!3334297 (= lt!2188715 (head!11527 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun e!3334299 () Bool)

(assert (=> d!1720429 e!3334299))

(declare-fun res!2281311 () Bool)

(assert (=> d!1720429 (=> (not res!2281311) (not e!3334299))))

(assert (=> d!1720429 (= res!2281311 (validRegex!6831 lt!2188715))))

(assert (=> d!1720429 (= lt!2188715 e!3334300)))

(declare-fun c!936388 () Bool)

(declare-fun e!3334296 () Bool)

(assert (=> d!1720429 (= c!936388 e!3334296)))

(declare-fun res!2281310 () Bool)

(assert (=> d!1720429 (=> (not res!2281310) (not e!3334296))))

(assert (=> d!1720429 (= res!2281310 ((_ is Cons!61461) (exprs!4979 (h!67910 zl!343))))))

(assert (=> d!1720429 (forall!14497 (exprs!4979 (h!67910 zl!343)) lambda!277568)))

(assert (=> d!1720429 (= (generalisedConcat!764 (exprs!4979 (h!67910 zl!343))) lt!2188715)))

(declare-fun b!5374025 () Bool)

(assert (=> b!5374025 (= e!3334298 EmptyExpr!15095)))

(declare-fun b!5374026 () Bool)

(declare-fun isEmptyExpr!938 (Regex!15095) Bool)

(assert (=> b!5374026 (= e!3334301 (isEmptyExpr!938 lt!2188715))))

(declare-fun b!5374027 () Bool)

(assert (=> b!5374027 (= e!3334299 e!3334301)))

(declare-fun c!936387 () Bool)

(assert (=> b!5374027 (= c!936387 (isEmpty!33442 (exprs!4979 (h!67910 zl!343))))))

(declare-fun b!5374028 () Bool)

(assert (=> b!5374028 (= e!3334296 (isEmpty!33442 (t!374808 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun b!5374029 () Bool)

(assert (=> b!5374029 (= e!3334300 (h!67909 (exprs!4979 (h!67910 zl!343))))))

(assert (= (and d!1720429 res!2281310) b!5374028))

(assert (= (and d!1720429 c!936388) b!5374029))

(assert (= (and d!1720429 (not c!936388)) b!5374020))

(assert (= (and b!5374020 c!936390) b!5374022))

(assert (= (and b!5374020 (not c!936390)) b!5374025))

(assert (= (and d!1720429 res!2281311) b!5374027))

(assert (= (and b!5374027 c!936387) b!5374026))

(assert (= (and b!5374027 (not c!936387)) b!5374021))

(assert (= (and b!5374021 c!936389) b!5374024))

(assert (= (and b!5374021 (not c!936389)) b!5374023))

(declare-fun m!6400864 () Bool)

(assert (=> d!1720429 m!6400864))

(declare-fun m!6400866 () Bool)

(assert (=> d!1720429 m!6400866))

(declare-fun m!6400868 () Bool)

(assert (=> b!5374026 m!6400868))

(declare-fun m!6400870 () Bool)

(assert (=> b!5374024 m!6400870))

(declare-fun m!6400872 () Bool)

(assert (=> b!5374022 m!6400872))

(declare-fun m!6400874 () Bool)

(assert (=> b!5374021 m!6400874))

(assert (=> b!5374021 m!6400874))

(declare-fun m!6400876 () Bool)

(assert (=> b!5374021 m!6400876))

(assert (=> b!5374028 m!6400540))

(declare-fun m!6400878 () Bool)

(assert (=> b!5374027 m!6400878))

(declare-fun m!6400880 () Bool)

(assert (=> b!5374023 m!6400880))

(assert (=> b!5373673 d!1720429))

(declare-fun d!1720435 () Bool)

(assert (=> d!1720435 (= (isEmpty!33443 (t!374809 zl!343)) ((_ is Nil!61462) (t!374809 zl!343)))))

(assert (=> b!5373653 d!1720435))

(declare-fun b!5374059 () Bool)

(declare-fun e!3334323 () Bool)

(declare-fun e!3334329 () Bool)

(assert (=> b!5374059 (= e!3334323 e!3334329)))

(declare-fun res!2281326 () Bool)

(assert (=> b!5374059 (= res!2281326 (not (nullable!5264 (reg!15424 (reg!15424 (regOne!30702 r!7292))))))))

(assert (=> b!5374059 (=> (not res!2281326) (not e!3334329))))

(declare-fun b!5374060 () Bool)

(declare-fun call!384747 () Bool)

(assert (=> b!5374060 (= e!3334329 call!384747)))

(declare-fun b!5374061 () Bool)

(declare-fun res!2281327 () Bool)

(declare-fun e!3334327 () Bool)

(assert (=> b!5374061 (=> res!2281327 e!3334327)))

(assert (=> b!5374061 (= res!2281327 (not ((_ is Concat!23940) (reg!15424 (regOne!30702 r!7292)))))))

(declare-fun e!3334324 () Bool)

(assert (=> b!5374061 (= e!3334324 e!3334327)))

(declare-fun bm!384741 () Bool)

(declare-fun call!384746 () Bool)

(assert (=> bm!384741 (= call!384746 call!384747)))

(declare-fun b!5374062 () Bool)

(declare-fun e!3334328 () Bool)

(assert (=> b!5374062 (= e!3334327 e!3334328)))

(declare-fun res!2281325 () Bool)

(assert (=> b!5374062 (=> (not res!2281325) (not e!3334328))))

(assert (=> b!5374062 (= res!2281325 call!384746)))

(declare-fun b!5374063 () Bool)

(declare-fun call!384748 () Bool)

(assert (=> b!5374063 (= e!3334328 call!384748)))

(declare-fun b!5374064 () Bool)

(assert (=> b!5374064 (= e!3334323 e!3334324)))

(declare-fun c!936399 () Bool)

(assert (=> b!5374064 (= c!936399 ((_ is Union!15095) (reg!15424 (regOne!30702 r!7292))))))

(declare-fun d!1720437 () Bool)

(declare-fun res!2281329 () Bool)

(declare-fun e!3334326 () Bool)

(assert (=> d!1720437 (=> res!2281329 e!3334326)))

(assert (=> d!1720437 (= res!2281329 ((_ is ElementMatch!15095) (reg!15424 (regOne!30702 r!7292))))))

(assert (=> d!1720437 (= (validRegex!6831 (reg!15424 (regOne!30702 r!7292))) e!3334326)))

(declare-fun bm!384742 () Bool)

(declare-fun c!936400 () Bool)

(assert (=> bm!384742 (= call!384747 (validRegex!6831 (ite c!936400 (reg!15424 (reg!15424 (regOne!30702 r!7292))) (ite c!936399 (regOne!30703 (reg!15424 (regOne!30702 r!7292))) (regOne!30702 (reg!15424 (regOne!30702 r!7292)))))))))

(declare-fun b!5374065 () Bool)

(declare-fun e!3334325 () Bool)

(assert (=> b!5374065 (= e!3334325 call!384748)))

(declare-fun b!5374066 () Bool)

(declare-fun res!2281328 () Bool)

(assert (=> b!5374066 (=> (not res!2281328) (not e!3334325))))

(assert (=> b!5374066 (= res!2281328 call!384746)))

(assert (=> b!5374066 (= e!3334324 e!3334325)))

(declare-fun bm!384743 () Bool)

(assert (=> bm!384743 (= call!384748 (validRegex!6831 (ite c!936399 (regTwo!30703 (reg!15424 (regOne!30702 r!7292))) (regTwo!30702 (reg!15424 (regOne!30702 r!7292))))))))

(declare-fun b!5374067 () Bool)

(assert (=> b!5374067 (= e!3334326 e!3334323)))

(assert (=> b!5374067 (= c!936400 ((_ is Star!15095) (reg!15424 (regOne!30702 r!7292))))))

(assert (= (and d!1720437 (not res!2281329)) b!5374067))

(assert (= (and b!5374067 c!936400) b!5374059))

(assert (= (and b!5374067 (not c!936400)) b!5374064))

(assert (= (and b!5374059 res!2281326) b!5374060))

(assert (= (and b!5374064 c!936399) b!5374066))

(assert (= (and b!5374064 (not c!936399)) b!5374061))

(assert (= (and b!5374066 res!2281328) b!5374065))

(assert (= (and b!5374061 (not res!2281327)) b!5374062))

(assert (= (and b!5374062 res!2281325) b!5374063))

(assert (= (or b!5374065 b!5374063) bm!384743))

(assert (= (or b!5374066 b!5374062) bm!384741))

(assert (= (or b!5374060 bm!384741) bm!384742))

(declare-fun m!6400902 () Bool)

(assert (=> b!5374059 m!6400902))

(declare-fun m!6400904 () Bool)

(assert (=> bm!384742 m!6400904))

(declare-fun m!6400906 () Bool)

(assert (=> bm!384743 m!6400906))

(assert (=> b!5373652 d!1720437))

(declare-fun bs!1244096 () Bool)

(declare-fun d!1720445 () Bool)

(assert (= bs!1244096 (and d!1720445 b!5373652)))

(declare-fun lambda!277576 () Int)

(assert (=> bs!1244096 (not (= lambda!277576 lambda!277522))))

(declare-fun bs!1244097 () Bool)

(assert (= bs!1244097 (and d!1720445 b!5373849)))

(assert (=> bs!1244097 (not (= lambda!277576 lambda!277557))))

(assert (=> bs!1244096 (not (= lambda!277576 lambda!277523))))

(declare-fun bs!1244100 () Bool)

(assert (= bs!1244100 (and d!1720445 b!5373846)))

(assert (=> bs!1244100 (not (= lambda!277576 lambda!277559))))

(declare-fun bs!1244102 () Bool)

(assert (= bs!1244102 (and d!1720445 b!5373643)))

(assert (=> bs!1244102 (not (= lambda!277576 lambda!277517))))

(assert (=> bs!1244102 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (regOne!30702 r!7292)) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277576 lambda!277516))))

(assert (=> bs!1244096 (= lambda!277576 lambda!277521)))

(declare-fun bs!1244105 () Bool)

(assert (= bs!1244105 (and d!1720445 b!5373645)))

(assert (=> bs!1244105 (not (= lambda!277576 lambda!277520))))

(assert (=> bs!1244105 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) lt!2188632) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277576 lambda!277519))))

(assert (=> d!1720445 true))

(assert (=> d!1720445 true))

(assert (=> d!1720445 true))

(declare-fun lambda!277577 () Int)

(assert (=> bs!1244096 (not (= lambda!277577 lambda!277522))))

(assert (=> bs!1244097 (not (= lambda!277577 lambda!277557))))

(assert (=> bs!1244096 (= lambda!277577 lambda!277523)))

(assert (=> bs!1244100 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (regOne!30702 r!7292)) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277577 lambda!277559))))

(declare-fun bs!1244108 () Bool)

(assert (= bs!1244108 d!1720445))

(assert (=> bs!1244108 (not (= lambda!277577 lambda!277576))))

(assert (=> bs!1244102 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (regOne!30702 r!7292)) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277577 lambda!277517))))

(assert (=> bs!1244102 (not (= lambda!277577 lambda!277516))))

(assert (=> bs!1244096 (not (= lambda!277577 lambda!277521))))

(assert (=> bs!1244105 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) lt!2188632) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277577 lambda!277520))))

(assert (=> bs!1244105 (not (= lambda!277577 lambda!277519))))

(assert (=> d!1720445 true))

(assert (=> d!1720445 true))

(assert (=> d!1720445 true))

(assert (=> d!1720445 (= (Exists!2276 lambda!277576) (Exists!2276 lambda!277577))))

(declare-fun lt!2188728 () Unit!153898)

(declare-fun choose!40361 (Regex!15095 Regex!15095 List!61584) Unit!153898)

(assert (=> d!1720445 (= lt!2188728 (choose!40361 (reg!15424 (regOne!30702 r!7292)) lt!2188632 (_1!35597 lt!2188650)))))

(assert (=> d!1720445 (validRegex!6831 (reg!15424 (regOne!30702 r!7292)))))

(assert (=> d!1720445 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!930 (reg!15424 (regOne!30702 r!7292)) lt!2188632 (_1!35597 lt!2188650)) lt!2188728)))

(declare-fun m!6400972 () Bool)

(assert (=> bs!1244108 m!6400972))

(declare-fun m!6400974 () Bool)

(assert (=> bs!1244108 m!6400974))

(declare-fun m!6400976 () Bool)

(assert (=> bs!1244108 m!6400976))

(assert (=> bs!1244108 m!6400644))

(assert (=> b!5373652 d!1720445))

(declare-fun d!1720465 () Bool)

(declare-fun choose!40362 (Int) Bool)

(assert (=> d!1720465 (= (Exists!2276 lambda!277523) (choose!40362 lambda!277523))))

(declare-fun bs!1244119 () Bool)

(assert (= bs!1244119 d!1720465))

(declare-fun m!6400978 () Bool)

(assert (=> bs!1244119 m!6400978))

(assert (=> b!5373652 d!1720465))

(declare-fun d!1720467 () Bool)

(assert (=> d!1720467 (= (matchR!7280 lt!2188632 (_1!35597 lt!2188650)) (matchRSpec!2198 lt!2188632 (_1!35597 lt!2188650)))))

(declare-fun lt!2188730 () Unit!153898)

(assert (=> d!1720467 (= lt!2188730 (choose!40360 lt!2188632 (_1!35597 lt!2188650)))))

(assert (=> d!1720467 (validRegex!6831 lt!2188632)))

(assert (=> d!1720467 (= (mainMatchTheorem!2198 lt!2188632 (_1!35597 lt!2188650)) lt!2188730)))

(declare-fun bs!1244120 () Bool)

(assert (= bs!1244120 d!1720467))

(assert (=> bs!1244120 m!6400666))

(assert (=> bs!1244120 m!6400642))

(declare-fun m!6400980 () Bool)

(assert (=> bs!1244120 m!6400980))

(declare-fun m!6400982 () Bool)

(assert (=> bs!1244120 m!6400982))

(assert (=> b!5373652 d!1720467))

(declare-fun bs!1244128 () Bool)

(declare-fun d!1720469 () Bool)

(assert (= bs!1244128 (and d!1720469 b!5373652)))

(declare-fun lambda!277585 () Int)

(assert (=> bs!1244128 (not (= lambda!277585 lambda!277522))))

(declare-fun bs!1244129 () Bool)

(assert (= bs!1244129 (and d!1720469 b!5373849)))

(assert (=> bs!1244129 (not (= lambda!277585 lambda!277557))))

(assert (=> bs!1244128 (not (= lambda!277585 lambda!277523))))

(declare-fun bs!1244130 () Bool)

(assert (= bs!1244130 (and d!1720469 d!1720445)))

(assert (=> bs!1244130 (not (= lambda!277585 lambda!277577))))

(declare-fun bs!1244131 () Bool)

(assert (= bs!1244131 (and d!1720469 b!5373846)))

(assert (=> bs!1244131 (not (= lambda!277585 lambda!277559))))

(assert (=> bs!1244130 (= (= (Star!15095 (reg!15424 (regOne!30702 r!7292))) lt!2188632) (= lambda!277585 lambda!277576))))

(declare-fun bs!1244132 () Bool)

(assert (= bs!1244132 (and d!1720469 b!5373643)))

(assert (=> bs!1244132 (not (= lambda!277585 lambda!277517))))

(assert (=> bs!1244132 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (regOne!30702 r!7292)) (= (Star!15095 (reg!15424 (regOne!30702 r!7292))) (regTwo!30702 r!7292))) (= lambda!277585 lambda!277516))))

(assert (=> bs!1244128 (= (= (Star!15095 (reg!15424 (regOne!30702 r!7292))) lt!2188632) (= lambda!277585 lambda!277521))))

(declare-fun bs!1244133 () Bool)

(assert (= bs!1244133 (and d!1720469 b!5373645)))

(assert (=> bs!1244133 (not (= lambda!277585 lambda!277520))))

(assert (=> bs!1244133 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) lt!2188632) (= (Star!15095 (reg!15424 (regOne!30702 r!7292))) (regTwo!30702 r!7292))) (= lambda!277585 lambda!277519))))

(assert (=> d!1720469 true))

(assert (=> d!1720469 true))

(declare-fun lambda!277586 () Int)

(assert (=> bs!1244128 (= (= (Star!15095 (reg!15424 (regOne!30702 r!7292))) lt!2188632) (= lambda!277586 lambda!277522))))

(assert (=> bs!1244129 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (reg!15424 r!7292)) (= (Star!15095 (reg!15424 (regOne!30702 r!7292))) r!7292)) (= lambda!277586 lambda!277557))))

(assert (=> bs!1244128 (not (= lambda!277586 lambda!277523))))

(assert (=> bs!1244130 (not (= lambda!277586 lambda!277577))))

(assert (=> bs!1244130 (not (= lambda!277586 lambda!277576))))

(assert (=> bs!1244132 (not (= lambda!277586 lambda!277517))))

(assert (=> bs!1244132 (not (= lambda!277586 lambda!277516))))

(assert (=> bs!1244128 (not (= lambda!277586 lambda!277521))))

(assert (=> bs!1244133 (not (= lambda!277586 lambda!277520))))

(assert (=> bs!1244133 (not (= lambda!277586 lambda!277519))))

(assert (=> bs!1244131 (not (= lambda!277586 lambda!277559))))

(declare-fun bs!1244134 () Bool)

(assert (= bs!1244134 d!1720469))

(assert (=> bs!1244134 (not (= lambda!277586 lambda!277585))))

(assert (=> d!1720469 true))

(assert (=> d!1720469 true))

(assert (=> d!1720469 (= (Exists!2276 lambda!277585) (Exists!2276 lambda!277586))))

(declare-fun lt!2188734 () Unit!153898)

(declare-fun choose!40363 (Regex!15095 List!61584) Unit!153898)

(assert (=> d!1720469 (= lt!2188734 (choose!40363 (reg!15424 (regOne!30702 r!7292)) (_1!35597 lt!2188650)))))

(assert (=> d!1720469 (validRegex!6831 (reg!15424 (regOne!30702 r!7292)))))

(assert (=> d!1720469 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!360 (reg!15424 (regOne!30702 r!7292)) (_1!35597 lt!2188650)) lt!2188734)))

(declare-fun m!6401010 () Bool)

(assert (=> bs!1244134 m!6401010))

(declare-fun m!6401012 () Bool)

(assert (=> bs!1244134 m!6401012))

(declare-fun m!6401014 () Bool)

(assert (=> bs!1244134 m!6401014))

(assert (=> bs!1244134 m!6400644))

(assert (=> b!5373652 d!1720469))

(declare-fun bs!1244159 () Bool)

(declare-fun d!1720479 () Bool)

(assert (= bs!1244159 (and d!1720479 b!5373652)))

(declare-fun lambda!277591 () Int)

(assert (=> bs!1244159 (not (= lambda!277591 lambda!277522))))

(declare-fun bs!1244161 () Bool)

(assert (= bs!1244161 (and d!1720479 b!5373849)))

(assert (=> bs!1244161 (not (= lambda!277591 lambda!277557))))

(assert (=> bs!1244159 (not (= lambda!277591 lambda!277523))))

(declare-fun bs!1244162 () Bool)

(assert (= bs!1244162 (and d!1720479 d!1720445)))

(assert (=> bs!1244162 (not (= lambda!277591 lambda!277577))))

(declare-fun bs!1244163 () Bool)

(assert (= bs!1244163 (and d!1720479 d!1720469)))

(assert (=> bs!1244163 (not (= lambda!277591 lambda!277586))))

(assert (=> bs!1244162 (= lambda!277591 lambda!277576)))

(declare-fun bs!1244164 () Bool)

(assert (= bs!1244164 (and d!1720479 b!5373643)))

(assert (=> bs!1244164 (not (= lambda!277591 lambda!277517))))

(assert (=> bs!1244164 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) (regOne!30702 r!7292)) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277591 lambda!277516))))

(assert (=> bs!1244159 (= lambda!277591 lambda!277521)))

(declare-fun bs!1244165 () Bool)

(assert (= bs!1244165 (and d!1720479 b!5373645)))

(assert (=> bs!1244165 (not (= lambda!277591 lambda!277520))))

(assert (=> bs!1244165 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 (regOne!30702 r!7292)) lt!2188632) (= lt!2188632 (regTwo!30702 r!7292))) (= lambda!277591 lambda!277519))))

(declare-fun bs!1244166 () Bool)

(assert (= bs!1244166 (and d!1720479 b!5373846)))

(assert (=> bs!1244166 (not (= lambda!277591 lambda!277559))))

(assert (=> bs!1244163 (= (= lt!2188632 (Star!15095 (reg!15424 (regOne!30702 r!7292)))) (= lambda!277591 lambda!277585))))

(assert (=> d!1720479 true))

(assert (=> d!1720479 true))

(assert (=> d!1720479 true))

(assert (=> d!1720479 (= (isDefined!11909 (findConcatSeparation!1620 (reg!15424 (regOne!30702 r!7292)) lt!2188632 Nil!61460 (_1!35597 lt!2188650) (_1!35597 lt!2188650))) (Exists!2276 lambda!277591))))

(declare-fun lt!2188737 () Unit!153898)

(declare-fun choose!40364 (Regex!15095 Regex!15095 List!61584) Unit!153898)

(assert (=> d!1720479 (= lt!2188737 (choose!40364 (reg!15424 (regOne!30702 r!7292)) lt!2188632 (_1!35597 lt!2188650)))))

(assert (=> d!1720479 (validRegex!6831 (reg!15424 (regOne!30702 r!7292)))))

(assert (=> d!1720479 (= (lemmaFindConcatSeparationEquivalentToExists!1384 (reg!15424 (regOne!30702 r!7292)) lt!2188632 (_1!35597 lt!2188650)) lt!2188737)))

(declare-fun bs!1244167 () Bool)

(assert (= bs!1244167 d!1720479))

(declare-fun m!6401032 () Bool)

(assert (=> bs!1244167 m!6401032))

(declare-fun m!6401034 () Bool)

(assert (=> bs!1244167 m!6401034))

(assert (=> bs!1244167 m!6400634))

(assert (=> bs!1244167 m!6400634))

(assert (=> bs!1244167 m!6400636))

(assert (=> bs!1244167 m!6400644))

(assert (=> b!5373652 d!1720479))

(declare-fun d!1720485 () Bool)

(declare-fun isEmpty!33446 (Option!15206) Bool)

(assert (=> d!1720485 (= (isDefined!11909 (findConcatSeparation!1620 (reg!15424 (regOne!30702 r!7292)) lt!2188632 Nil!61460 (_1!35597 lt!2188650) (_1!35597 lt!2188650))) (not (isEmpty!33446 (findConcatSeparation!1620 (reg!15424 (regOne!30702 r!7292)) lt!2188632 Nil!61460 (_1!35597 lt!2188650) (_1!35597 lt!2188650)))))))

(declare-fun bs!1244169 () Bool)

(assert (= bs!1244169 d!1720485))

(assert (=> bs!1244169 m!6400634))

(declare-fun m!6401042 () Bool)

(assert (=> bs!1244169 m!6401042))

(assert (=> b!5373652 d!1720485))

(declare-fun d!1720491 () Bool)

(assert (=> d!1720491 (= (Exists!2276 lambda!277521) (choose!40362 lambda!277521))))

(declare-fun bs!1244170 () Bool)

(assert (= bs!1244170 d!1720491))

(declare-fun m!6401044 () Bool)

(assert (=> bs!1244170 m!6401044))

(assert (=> b!5373652 d!1720491))

(declare-fun bs!1244171 () Bool)

(declare-fun b!5374210 () Bool)

(assert (= bs!1244171 (and b!5374210 b!5373652)))

(declare-fun lambda!277592 () Int)

(assert (=> bs!1244171 (= (= (reg!15424 lt!2188632) (reg!15424 (regOne!30702 r!7292))) (= lambda!277592 lambda!277522))))

(declare-fun bs!1244172 () Bool)

(assert (= bs!1244172 (and b!5374210 b!5373849)))

(assert (=> bs!1244172 (= (and (= (_1!35597 lt!2188650) s!2326) (= (reg!15424 lt!2188632) (reg!15424 r!7292)) (= lt!2188632 r!7292)) (= lambda!277592 lambda!277557))))

(assert (=> bs!1244171 (not (= lambda!277592 lambda!277523))))

(declare-fun bs!1244173 () Bool)

(assert (= bs!1244173 (and b!5374210 d!1720445)))

(assert (=> bs!1244173 (not (= lambda!277592 lambda!277577))))

(declare-fun bs!1244174 () Bool)

(assert (= bs!1244174 (and b!5374210 d!1720469)))

(assert (=> bs!1244174 (= (and (= (reg!15424 lt!2188632) (reg!15424 (regOne!30702 r!7292))) (= lt!2188632 (Star!15095 (reg!15424 (regOne!30702 r!7292))))) (= lambda!277592 lambda!277586))))

(declare-fun bs!1244175 () Bool)

(assert (= bs!1244175 (and b!5374210 d!1720479)))

(assert (=> bs!1244175 (not (= lambda!277592 lambda!277591))))

(assert (=> bs!1244173 (not (= lambda!277592 lambda!277576))))

(declare-fun bs!1244176 () Bool)

(assert (= bs!1244176 (and b!5374210 b!5373643)))

(assert (=> bs!1244176 (not (= lambda!277592 lambda!277517))))

(assert (=> bs!1244176 (not (= lambda!277592 lambda!277516))))

(assert (=> bs!1244171 (not (= lambda!277592 lambda!277521))))

(declare-fun bs!1244179 () Bool)

(assert (= bs!1244179 (and b!5374210 b!5373645)))

(assert (=> bs!1244179 (not (= lambda!277592 lambda!277520))))

(assert (=> bs!1244179 (not (= lambda!277592 lambda!277519))))

(declare-fun bs!1244181 () Bool)

(assert (= bs!1244181 (and b!5374210 b!5373846)))

(assert (=> bs!1244181 (not (= lambda!277592 lambda!277559))))

(assert (=> bs!1244174 (not (= lambda!277592 lambda!277585))))

(assert (=> b!5374210 true))

(assert (=> b!5374210 true))

(declare-fun bs!1244182 () Bool)

(declare-fun b!5374207 () Bool)

(assert (= bs!1244182 (and b!5374207 b!5373652)))

(declare-fun lambda!277593 () Int)

(assert (=> bs!1244182 (not (= lambda!277593 lambda!277522))))

(declare-fun bs!1244183 () Bool)

(assert (= bs!1244183 (and b!5374207 b!5373849)))

(assert (=> bs!1244183 (not (= lambda!277593 lambda!277557))))

(assert (=> bs!1244182 (= (and (= (regOne!30702 lt!2188632) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 lt!2188632) lt!2188632)) (= lambda!277593 lambda!277523))))

(declare-fun bs!1244184 () Bool)

(assert (= bs!1244184 (and b!5374207 d!1720445)))

(assert (=> bs!1244184 (= (and (= (regOne!30702 lt!2188632) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 lt!2188632) lt!2188632)) (= lambda!277593 lambda!277577))))

(declare-fun bs!1244185 () Bool)

(assert (= bs!1244185 (and b!5374207 d!1720469)))

(assert (=> bs!1244185 (not (= lambda!277593 lambda!277586))))

(declare-fun bs!1244186 () Bool)

(assert (= bs!1244186 (and b!5374207 d!1720479)))

(assert (=> bs!1244186 (not (= lambda!277593 lambda!277591))))

(assert (=> bs!1244184 (not (= lambda!277593 lambda!277576))))

(declare-fun bs!1244187 () Bool)

(assert (= bs!1244187 (and b!5374207 b!5373643)))

(assert (=> bs!1244187 (= (and (= (_1!35597 lt!2188650) s!2326) (= (regOne!30702 lt!2188632) (regOne!30702 r!7292)) (= (regTwo!30702 lt!2188632) (regTwo!30702 r!7292))) (= lambda!277593 lambda!277517))))

(declare-fun bs!1244188 () Bool)

(assert (= bs!1244188 (and b!5374207 b!5374210)))

(assert (=> bs!1244188 (not (= lambda!277593 lambda!277592))))

(assert (=> bs!1244187 (not (= lambda!277593 lambda!277516))))

(assert (=> bs!1244182 (not (= lambda!277593 lambda!277521))))

(declare-fun bs!1244189 () Bool)

(assert (= bs!1244189 (and b!5374207 b!5373645)))

(assert (=> bs!1244189 (= (and (= (_1!35597 lt!2188650) s!2326) (= (regOne!30702 lt!2188632) lt!2188632) (= (regTwo!30702 lt!2188632) (regTwo!30702 r!7292))) (= lambda!277593 lambda!277520))))

(assert (=> bs!1244189 (not (= lambda!277593 lambda!277519))))

(declare-fun bs!1244190 () Bool)

(assert (= bs!1244190 (and b!5374207 b!5373846)))

(assert (=> bs!1244190 (= (and (= (_1!35597 lt!2188650) s!2326) (= (regOne!30702 lt!2188632) (regOne!30702 r!7292)) (= (regTwo!30702 lt!2188632) (regTwo!30702 r!7292))) (= lambda!277593 lambda!277559))))

(assert (=> bs!1244185 (not (= lambda!277593 lambda!277585))))

(assert (=> b!5374207 true))

(assert (=> b!5374207 true))

(declare-fun b!5374203 () Bool)

(declare-fun e!3334404 () Bool)

(assert (=> b!5374203 (= e!3334404 (matchRSpec!2198 (regTwo!30703 lt!2188632) (_1!35597 lt!2188650)))))

(declare-fun b!5374204 () Bool)

(declare-fun c!936440 () Bool)

(assert (=> b!5374204 (= c!936440 ((_ is Union!15095) lt!2188632))))

(declare-fun e!3334403 () Bool)

(declare-fun e!3334402 () Bool)

(assert (=> b!5374204 (= e!3334403 e!3334402)))

(declare-fun bm!384770 () Bool)

(declare-fun call!384776 () Bool)

(declare-fun c!936438 () Bool)

(assert (=> bm!384770 (= call!384776 (Exists!2276 (ite c!936438 lambda!277592 lambda!277593)))))

(declare-fun b!5374205 () Bool)

(declare-fun e!3334407 () Bool)

(declare-fun e!3334406 () Bool)

(assert (=> b!5374205 (= e!3334407 e!3334406)))

(declare-fun res!2281391 () Bool)

(assert (=> b!5374205 (= res!2281391 (not ((_ is EmptyLang!15095) lt!2188632)))))

(assert (=> b!5374205 (=> (not res!2281391) (not e!3334406))))

(declare-fun bm!384771 () Bool)

(declare-fun call!384775 () Bool)

(assert (=> bm!384771 (= call!384775 (isEmpty!33444 (_1!35597 lt!2188650)))))

(declare-fun b!5374206 () Bool)

(assert (=> b!5374206 (= e!3334402 e!3334404)))

(declare-fun res!2281392 () Bool)

(assert (=> b!5374206 (= res!2281392 (matchRSpec!2198 (regOne!30703 lt!2188632) (_1!35597 lt!2188650)))))

(assert (=> b!5374206 (=> res!2281392 e!3334404)))

(declare-fun e!3334405 () Bool)

(assert (=> b!5374207 (= e!3334405 call!384776)))

(declare-fun b!5374208 () Bool)

(assert (=> b!5374208 (= e!3334407 call!384775)))

(declare-fun d!1720493 () Bool)

(declare-fun c!936439 () Bool)

(assert (=> d!1720493 (= c!936439 ((_ is EmptyExpr!15095) lt!2188632))))

(assert (=> d!1720493 (= (matchRSpec!2198 lt!2188632 (_1!35597 lt!2188650)) e!3334407)))

(declare-fun b!5374209 () Bool)

(assert (=> b!5374209 (= e!3334402 e!3334405)))

(assert (=> b!5374209 (= c!936438 ((_ is Star!15095) lt!2188632))))

(declare-fun e!3334408 () Bool)

(assert (=> b!5374210 (= e!3334408 call!384776)))

(declare-fun b!5374211 () Bool)

(declare-fun res!2281393 () Bool)

(assert (=> b!5374211 (=> res!2281393 e!3334408)))

(assert (=> b!5374211 (= res!2281393 call!384775)))

(assert (=> b!5374211 (= e!3334405 e!3334408)))

(declare-fun b!5374212 () Bool)

(assert (=> b!5374212 (= e!3334403 (= (_1!35597 lt!2188650) (Cons!61460 (c!936295 lt!2188632) Nil!61460)))))

(declare-fun b!5374213 () Bool)

(declare-fun c!936441 () Bool)

(assert (=> b!5374213 (= c!936441 ((_ is ElementMatch!15095) lt!2188632))))

(assert (=> b!5374213 (= e!3334406 e!3334403)))

(assert (= (and d!1720493 c!936439) b!5374208))

(assert (= (and d!1720493 (not c!936439)) b!5374205))

(assert (= (and b!5374205 res!2281391) b!5374213))

(assert (= (and b!5374213 c!936441) b!5374212))

(assert (= (and b!5374213 (not c!936441)) b!5374204))

(assert (= (and b!5374204 c!936440) b!5374206))

(assert (= (and b!5374204 (not c!936440)) b!5374209))

(assert (= (and b!5374206 (not res!2281392)) b!5374203))

(assert (= (and b!5374209 c!936438) b!5374211))

(assert (= (and b!5374209 (not c!936438)) b!5374207))

(assert (= (and b!5374211 (not res!2281393)) b!5374210))

(assert (= (or b!5374210 b!5374207) bm!384770))

(assert (= (or b!5374208 b!5374211) bm!384771))

(declare-fun m!6401088 () Bool)

(assert (=> b!5374203 m!6401088))

(declare-fun m!6401090 () Bool)

(assert (=> bm!384770 m!6401090))

(assert (=> bm!384771 m!6400674))

(declare-fun m!6401092 () Bool)

(assert (=> b!5374206 m!6401092))

(assert (=> b!5373652 d!1720493))

(declare-fun b!5374290 () Bool)

(declare-fun e!3334456 () Option!15206)

(assert (=> b!5374290 (= e!3334456 None!15205)))

(declare-fun b!5374291 () Bool)

(declare-fun e!3334457 () Bool)

(declare-fun lt!2188754 () Option!15206)

(assert (=> b!5374291 (= e!3334457 (= (++!13398 (_1!35597 (get!21151 lt!2188754)) (_2!35597 (get!21151 lt!2188754))) (_1!35597 lt!2188650)))))

(declare-fun d!1720511 () Bool)

(declare-fun e!3334458 () Bool)

(assert (=> d!1720511 e!3334458))

(declare-fun res!2281417 () Bool)

(assert (=> d!1720511 (=> res!2281417 e!3334458)))

(assert (=> d!1720511 (= res!2281417 e!3334457)))

(declare-fun res!2281419 () Bool)

(assert (=> d!1720511 (=> (not res!2281419) (not e!3334457))))

(assert (=> d!1720511 (= res!2281419 (isDefined!11909 lt!2188754))))

(declare-fun e!3334455 () Option!15206)

(assert (=> d!1720511 (= lt!2188754 e!3334455)))

(declare-fun c!936469 () Bool)

(declare-fun e!3334454 () Bool)

(assert (=> d!1720511 (= c!936469 e!3334454)))

(declare-fun res!2281418 () Bool)

(assert (=> d!1720511 (=> (not res!2281418) (not e!3334454))))

(assert (=> d!1720511 (= res!2281418 (matchR!7280 (reg!15424 (regOne!30702 r!7292)) Nil!61460))))

(assert (=> d!1720511 (validRegex!6831 (reg!15424 (regOne!30702 r!7292)))))

(assert (=> d!1720511 (= (findConcatSeparation!1620 (reg!15424 (regOne!30702 r!7292)) lt!2188632 Nil!61460 (_1!35597 lt!2188650) (_1!35597 lt!2188650)) lt!2188754)))

(declare-fun b!5374292 () Bool)

(declare-fun lt!2188755 () Unit!153898)

(declare-fun lt!2188756 () Unit!153898)

(assert (=> b!5374292 (= lt!2188755 lt!2188756)))

(assert (=> b!5374292 (= (++!13398 (++!13398 Nil!61460 (Cons!61460 (h!67908 (_1!35597 lt!2188650)) Nil!61460)) (t!374807 (_1!35597 lt!2188650))) (_1!35597 lt!2188650))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1799 (List!61584 C!30460 List!61584 List!61584) Unit!153898)

(assert (=> b!5374292 (= lt!2188756 (lemmaMoveElementToOtherListKeepsConcatEq!1799 Nil!61460 (h!67908 (_1!35597 lt!2188650)) (t!374807 (_1!35597 lt!2188650)) (_1!35597 lt!2188650)))))

(assert (=> b!5374292 (= e!3334456 (findConcatSeparation!1620 (reg!15424 (regOne!30702 r!7292)) lt!2188632 (++!13398 Nil!61460 (Cons!61460 (h!67908 (_1!35597 lt!2188650)) Nil!61460)) (t!374807 (_1!35597 lt!2188650)) (_1!35597 lt!2188650)))))

(declare-fun b!5374293 () Bool)

(assert (=> b!5374293 (= e!3334458 (not (isDefined!11909 lt!2188754)))))

(declare-fun b!5374294 () Bool)

(assert (=> b!5374294 (= e!3334455 e!3334456)))

(declare-fun c!936470 () Bool)

(assert (=> b!5374294 (= c!936470 ((_ is Nil!61460) (_1!35597 lt!2188650)))))

(declare-fun b!5374295 () Bool)

(declare-fun res!2281420 () Bool)

(assert (=> b!5374295 (=> (not res!2281420) (not e!3334457))))

(assert (=> b!5374295 (= res!2281420 (matchR!7280 lt!2188632 (_2!35597 (get!21151 lt!2188754))))))

(declare-fun b!5374296 () Bool)

(declare-fun res!2281416 () Bool)

(assert (=> b!5374296 (=> (not res!2281416) (not e!3334457))))

(assert (=> b!5374296 (= res!2281416 (matchR!7280 (reg!15424 (regOne!30702 r!7292)) (_1!35597 (get!21151 lt!2188754))))))

(declare-fun b!5374297 () Bool)

(assert (=> b!5374297 (= e!3334455 (Some!15205 (tuple2!64589 Nil!61460 (_1!35597 lt!2188650))))))

(declare-fun b!5374298 () Bool)

(assert (=> b!5374298 (= e!3334454 (matchR!7280 lt!2188632 (_1!35597 lt!2188650)))))

(assert (= (and d!1720511 res!2281418) b!5374298))

(assert (= (and d!1720511 c!936469) b!5374297))

(assert (= (and d!1720511 (not c!936469)) b!5374294))

(assert (= (and b!5374294 c!936470) b!5374290))

(assert (= (and b!5374294 (not c!936470)) b!5374292))

(assert (= (and d!1720511 res!2281419) b!5374296))

(assert (= (and b!5374296 res!2281416) b!5374295))

(assert (= (and b!5374295 res!2281420) b!5374291))

(assert (= (and d!1720511 (not res!2281417)) b!5374293))

(declare-fun m!6401126 () Bool)

(assert (=> b!5374295 m!6401126))

(declare-fun m!6401128 () Bool)

(assert (=> b!5374295 m!6401128))

(declare-fun m!6401130 () Bool)

(assert (=> b!5374293 m!6401130))

(assert (=> b!5374291 m!6401126))

(declare-fun m!6401132 () Bool)

(assert (=> b!5374291 m!6401132))

(declare-fun m!6401134 () Bool)

(assert (=> b!5374292 m!6401134))

(assert (=> b!5374292 m!6401134))

(declare-fun m!6401136 () Bool)

(assert (=> b!5374292 m!6401136))

(declare-fun m!6401138 () Bool)

(assert (=> b!5374292 m!6401138))

(assert (=> b!5374292 m!6401134))

(declare-fun m!6401140 () Bool)

(assert (=> b!5374292 m!6401140))

(assert (=> d!1720511 m!6401130))

(declare-fun m!6401142 () Bool)

(assert (=> d!1720511 m!6401142))

(assert (=> d!1720511 m!6400644))

(assert (=> b!5374296 m!6401126))

(declare-fun m!6401144 () Bool)

(assert (=> b!5374296 m!6401144))

(assert (=> b!5374298 m!6400666))

(assert (=> b!5373652 d!1720511))

(declare-fun d!1720525 () Bool)

(assert (=> d!1720525 (= (Exists!2276 lambda!277522) (choose!40362 lambda!277522))))

(declare-fun bs!1244211 () Bool)

(assert (= bs!1244211 d!1720525))

(declare-fun m!6401146 () Bool)

(assert (=> bs!1244211 m!6401146))

(assert (=> b!5373652 d!1720525))

(declare-fun bs!1244212 () Bool)

(declare-fun d!1720527 () Bool)

(assert (= bs!1244212 (and d!1720527 d!1720399)))

(declare-fun lambda!277599 () Int)

(assert (=> bs!1244212 (= lambda!277599 lambda!277541)))

(declare-fun bs!1244213 () Bool)

(assert (= bs!1244213 (and d!1720527 d!1720429)))

(assert (=> bs!1244213 (= lambda!277599 lambda!277568)))

(assert (=> d!1720527 (= (inv!80984 (h!67910 zl!343)) (forall!14497 (exprs!4979 (h!67910 zl!343)) lambda!277599))))

(declare-fun bs!1244214 () Bool)

(assert (= bs!1244214 d!1720527))

(declare-fun m!6401154 () Bool)

(assert (=> bs!1244214 m!6401154))

(assert (=> b!5373654 d!1720527))

(declare-fun d!1720531 () Bool)

(declare-fun c!936475 () Bool)

(assert (=> d!1720531 (= c!936475 (isEmpty!33444 s!2326))))

(declare-fun e!3334465 () Bool)

(assert (=> d!1720531 (= (matchZipper!1339 lt!2188631 s!2326) e!3334465)))

(declare-fun b!5374311 () Bool)

(declare-fun nullableZipper!1404 ((InoxSet Context!8958)) Bool)

(assert (=> b!5374311 (= e!3334465 (nullableZipper!1404 lt!2188631))))

(declare-fun b!5374312 () Bool)

(assert (=> b!5374312 (= e!3334465 (matchZipper!1339 (derivationStepZipper!1334 lt!2188631 (head!11526 s!2326)) (tail!10623 s!2326)))))

(assert (= (and d!1720531 c!936475) b!5374311))

(assert (= (and d!1720531 (not c!936475)) b!5374312))

(assert (=> d!1720531 m!6400782))

(declare-fun m!6401156 () Bool)

(assert (=> b!5374311 m!6401156))

(assert (=> b!5374312 m!6400814))

(assert (=> b!5374312 m!6400814))

(declare-fun m!6401158 () Bool)

(assert (=> b!5374312 m!6401158))

(assert (=> b!5374312 m!6400816))

(assert (=> b!5374312 m!6401158))

(assert (=> b!5374312 m!6400816))

(declare-fun m!6401160 () Bool)

(assert (=> b!5374312 m!6401160))

(assert (=> b!5373635 d!1720531))

(declare-fun d!1720533 () Bool)

(declare-fun c!936476 () Bool)

(assert (=> d!1720533 (= c!936476 (isEmpty!33444 (t!374807 s!2326)))))

(declare-fun e!3334466 () Bool)

(assert (=> d!1720533 (= (matchZipper!1339 lt!2188648 (t!374807 s!2326)) e!3334466)))

(declare-fun b!5374313 () Bool)

(assert (=> b!5374313 (= e!3334466 (nullableZipper!1404 lt!2188648))))

(declare-fun b!5374314 () Bool)

(assert (=> b!5374314 (= e!3334466 (matchZipper!1339 (derivationStepZipper!1334 lt!2188648 (head!11526 (t!374807 s!2326))) (tail!10623 (t!374807 s!2326))))))

(assert (= (and d!1720533 c!936476) b!5374313))

(assert (= (and d!1720533 (not c!936476)) b!5374314))

(declare-fun m!6401162 () Bool)

(assert (=> d!1720533 m!6401162))

(declare-fun m!6401164 () Bool)

(assert (=> b!5374313 m!6401164))

(declare-fun m!6401166 () Bool)

(assert (=> b!5374314 m!6401166))

(assert (=> b!5374314 m!6401166))

(declare-fun m!6401168 () Bool)

(assert (=> b!5374314 m!6401168))

(declare-fun m!6401170 () Bool)

(assert (=> b!5374314 m!6401170))

(assert (=> b!5374314 m!6401168))

(assert (=> b!5374314 m!6401170))

(declare-fun m!6401172 () Bool)

(assert (=> b!5374314 m!6401172))

(assert (=> b!5373635 d!1720533))

(declare-fun d!1720535 () Bool)

(declare-fun e!3334471 () Bool)

(assert (=> d!1720535 e!3334471))

(declare-fun res!2281429 () Bool)

(assert (=> d!1720535 (=> (not res!2281429) (not e!3334471))))

(declare-fun lt!2188763 () List!61586)

(declare-fun noDuplicate!1357 (List!61586) Bool)

(assert (=> d!1720535 (= res!2281429 (noDuplicate!1357 lt!2188763))))

(declare-fun choose!40365 ((InoxSet Context!8958)) List!61586)

(assert (=> d!1720535 (= lt!2188763 (choose!40365 z!1189))))

(assert (=> d!1720535 (= (toList!8879 z!1189) lt!2188763)))

(declare-fun b!5374321 () Bool)

(declare-fun content!10981 (List!61586) (InoxSet Context!8958))

(assert (=> b!5374321 (= e!3334471 (= (content!10981 lt!2188763) z!1189))))

(assert (= (and d!1720535 res!2281429) b!5374321))

(declare-fun m!6401190 () Bool)

(assert (=> d!1720535 m!6401190))

(declare-fun m!6401192 () Bool)

(assert (=> d!1720535 m!6401192))

(declare-fun m!6401194 () Bool)

(assert (=> b!5374321 m!6401194))

(assert (=> b!5373636 d!1720535))

(declare-fun bs!1244233 () Bool)

(declare-fun d!1720541 () Bool)

(assert (= bs!1244233 (and d!1720541 d!1720399)))

(declare-fun lambda!277603 () Int)

(assert (=> bs!1244233 (= lambda!277603 lambda!277541)))

(declare-fun bs!1244234 () Bool)

(assert (= bs!1244234 (and d!1720541 d!1720429)))

(assert (=> bs!1244234 (= lambda!277603 lambda!277568)))

(declare-fun bs!1244235 () Bool)

(assert (= bs!1244235 (and d!1720541 d!1720527)))

(assert (=> bs!1244235 (= lambda!277603 lambda!277599)))

(declare-fun b!5374374 () Bool)

(declare-fun e!3334497 () Bool)

(declare-fun e!3334501 () Bool)

(assert (=> b!5374374 (= e!3334497 e!3334501)))

(declare-fun c!936490 () Bool)

(assert (=> b!5374374 (= c!936490 (isEmpty!33442 (unfocusZipperList!537 zl!343)))))

(declare-fun b!5374375 () Bool)

(declare-fun e!3334502 () Regex!15095)

(declare-fun e!3334500 () Regex!15095)

(assert (=> b!5374375 (= e!3334502 e!3334500)))

(declare-fun c!936488 () Bool)

(assert (=> b!5374375 (= c!936488 ((_ is Cons!61461) (unfocusZipperList!537 zl!343)))))

(declare-fun b!5374376 () Bool)

(declare-fun e!3334498 () Bool)

(declare-fun lt!2188769 () Regex!15095)

(declare-fun isUnion!379 (Regex!15095) Bool)

(assert (=> b!5374376 (= e!3334498 (isUnion!379 lt!2188769))))

(declare-fun b!5374377 () Bool)

(assert (=> b!5374377 (= e!3334498 (= lt!2188769 (head!11527 (unfocusZipperList!537 zl!343))))))

(declare-fun b!5374378 () Bool)

(declare-fun e!3334499 () Bool)

(assert (=> b!5374378 (= e!3334499 (isEmpty!33442 (t!374808 (unfocusZipperList!537 zl!343))))))

(declare-fun b!5374379 () Bool)

(assert (=> b!5374379 (= e!3334500 EmptyLang!15095)))

(assert (=> d!1720541 e!3334497))

(declare-fun res!2281439 () Bool)

(assert (=> d!1720541 (=> (not res!2281439) (not e!3334497))))

(assert (=> d!1720541 (= res!2281439 (validRegex!6831 lt!2188769))))

(assert (=> d!1720541 (= lt!2188769 e!3334502)))

(declare-fun c!936491 () Bool)

(assert (=> d!1720541 (= c!936491 e!3334499)))

(declare-fun res!2281440 () Bool)

(assert (=> d!1720541 (=> (not res!2281440) (not e!3334499))))

(assert (=> d!1720541 (= res!2281440 ((_ is Cons!61461) (unfocusZipperList!537 zl!343)))))

(assert (=> d!1720541 (forall!14497 (unfocusZipperList!537 zl!343) lambda!277603)))

(assert (=> d!1720541 (= (generalisedUnion!1024 (unfocusZipperList!537 zl!343)) lt!2188769)))

(declare-fun b!5374380 () Bool)

(declare-fun isEmptyLang!947 (Regex!15095) Bool)

(assert (=> b!5374380 (= e!3334501 (isEmptyLang!947 lt!2188769))))

(declare-fun b!5374381 () Bool)

(assert (=> b!5374381 (= e!3334501 e!3334498)))

(declare-fun c!936489 () Bool)

(assert (=> b!5374381 (= c!936489 (isEmpty!33442 (tail!10624 (unfocusZipperList!537 zl!343))))))

(declare-fun b!5374382 () Bool)

(assert (=> b!5374382 (= e!3334500 (Union!15095 (h!67909 (unfocusZipperList!537 zl!343)) (generalisedUnion!1024 (t!374808 (unfocusZipperList!537 zl!343)))))))

(declare-fun b!5374383 () Bool)

(assert (=> b!5374383 (= e!3334502 (h!67909 (unfocusZipperList!537 zl!343)))))

(assert (= (and d!1720541 res!2281440) b!5374378))

(assert (= (and d!1720541 c!936491) b!5374383))

(assert (= (and d!1720541 (not c!936491)) b!5374375))

(assert (= (and b!5374375 c!936488) b!5374382))

(assert (= (and b!5374375 (not c!936488)) b!5374379))

(assert (= (and d!1720541 res!2281439) b!5374374))

(assert (= (and b!5374374 c!936490) b!5374380))

(assert (= (and b!5374374 (not c!936490)) b!5374381))

(assert (= (and b!5374381 c!936489) b!5374377))

(assert (= (and b!5374381 (not c!936489)) b!5374376))

(assert (=> b!5374377 m!6400544))

(declare-fun m!6401220 () Bool)

(assert (=> b!5374377 m!6401220))

(declare-fun m!6401222 () Bool)

(assert (=> b!5374376 m!6401222))

(assert (=> b!5374381 m!6400544))

(declare-fun m!6401224 () Bool)

(assert (=> b!5374381 m!6401224))

(assert (=> b!5374381 m!6401224))

(declare-fun m!6401226 () Bool)

(assert (=> b!5374381 m!6401226))

(declare-fun m!6401228 () Bool)

(assert (=> b!5374380 m!6401228))

(declare-fun m!6401230 () Bool)

(assert (=> b!5374378 m!6401230))

(declare-fun m!6401232 () Bool)

(assert (=> b!5374382 m!6401232))

(assert (=> b!5374374 m!6400544))

(declare-fun m!6401234 () Bool)

(assert (=> b!5374374 m!6401234))

(declare-fun m!6401236 () Bool)

(assert (=> d!1720541 m!6401236))

(assert (=> d!1720541 m!6400544))

(declare-fun m!6401238 () Bool)

(assert (=> d!1720541 m!6401238))

(assert (=> b!5373656 d!1720541))

(declare-fun bs!1244240 () Bool)

(declare-fun d!1720551 () Bool)

(assert (= bs!1244240 (and d!1720551 d!1720399)))

(declare-fun lambda!277606 () Int)

(assert (=> bs!1244240 (= lambda!277606 lambda!277541)))

(declare-fun bs!1244241 () Bool)

(assert (= bs!1244241 (and d!1720551 d!1720429)))

(assert (=> bs!1244241 (= lambda!277606 lambda!277568)))

(declare-fun bs!1244242 () Bool)

(assert (= bs!1244242 (and d!1720551 d!1720527)))

(assert (=> bs!1244242 (= lambda!277606 lambda!277599)))

(declare-fun bs!1244243 () Bool)

(assert (= bs!1244243 (and d!1720551 d!1720541)))

(assert (=> bs!1244243 (= lambda!277606 lambda!277603)))

(declare-fun lt!2188772 () List!61585)

(assert (=> d!1720551 (forall!14497 lt!2188772 lambda!277606)))

(declare-fun e!3334520 () List!61585)

(assert (=> d!1720551 (= lt!2188772 e!3334520)))

(declare-fun c!936494 () Bool)

(assert (=> d!1720551 (= c!936494 ((_ is Cons!61462) zl!343))))

(assert (=> d!1720551 (= (unfocusZipperList!537 zl!343) lt!2188772)))

(declare-fun b!5374419 () Bool)

(assert (=> b!5374419 (= e!3334520 (Cons!61461 (generalisedConcat!764 (exprs!4979 (h!67910 zl!343))) (unfocusZipperList!537 (t!374809 zl!343))))))

(declare-fun b!5374420 () Bool)

(assert (=> b!5374420 (= e!3334520 Nil!61461)))

(assert (= (and d!1720551 c!936494) b!5374419))

(assert (= (and d!1720551 (not c!936494)) b!5374420))

(declare-fun m!6401242 () Bool)

(assert (=> d!1720551 m!6401242))

(assert (=> b!5374419 m!6400664))

(declare-fun m!6401244 () Bool)

(assert (=> b!5374419 m!6401244))

(assert (=> b!5373656 d!1720551))

(declare-fun d!1720561 () Bool)

(declare-fun c!936495 () Bool)

(assert (=> d!1720561 (= c!936495 (isEmpty!33444 (t!374807 s!2326)))))

(declare-fun e!3334521 () Bool)

(assert (=> d!1720561 (= (matchZipper!1339 lt!2188656 (t!374807 s!2326)) e!3334521)))

(declare-fun b!5374421 () Bool)

(assert (=> b!5374421 (= e!3334521 (nullableZipper!1404 lt!2188656))))

(declare-fun b!5374422 () Bool)

(assert (=> b!5374422 (= e!3334521 (matchZipper!1339 (derivationStepZipper!1334 lt!2188656 (head!11526 (t!374807 s!2326))) (tail!10623 (t!374807 s!2326))))))

(assert (= (and d!1720561 c!936495) b!5374421))

(assert (= (and d!1720561 (not c!936495)) b!5374422))

(assert (=> d!1720561 m!6401162))

(declare-fun m!6401246 () Bool)

(assert (=> b!5374421 m!6401246))

(assert (=> b!5374422 m!6401166))

(assert (=> b!5374422 m!6401166))

(declare-fun m!6401248 () Bool)

(assert (=> b!5374422 m!6401248))

(assert (=> b!5374422 m!6401170))

(assert (=> b!5374422 m!6401248))

(assert (=> b!5374422 m!6401170))

(declare-fun m!6401250 () Bool)

(assert (=> b!5374422 m!6401250))

(assert (=> b!5373637 d!1720561))

(declare-fun d!1720563 () Bool)

(declare-fun lt!2188775 () Regex!15095)

(assert (=> d!1720563 (validRegex!6831 lt!2188775)))

(assert (=> d!1720563 (= lt!2188775 (generalisedUnion!1024 (unfocusZipperList!537 (Cons!61462 lt!2188664 Nil!61462))))))

(assert (=> d!1720563 (= (unfocusZipper!837 (Cons!61462 lt!2188664 Nil!61462)) lt!2188775)))

(declare-fun bs!1244244 () Bool)

(assert (= bs!1244244 d!1720563))

(declare-fun m!6401252 () Bool)

(assert (=> bs!1244244 m!6401252))

(declare-fun m!6401254 () Bool)

(assert (=> bs!1244244 m!6401254))

(assert (=> bs!1244244 m!6401254))

(declare-fun m!6401256 () Bool)

(assert (=> bs!1244244 m!6401256))

(assert (=> b!5373639 d!1720563))

(declare-fun call!384787 () (InoxSet Context!8958))

(declare-fun e!3334529 () (InoxSet Context!8958))

(declare-fun b!5374433 () Bool)

(assert (=> b!5374433 (= e!3334529 ((_ map or) call!384787 (derivationStepZipperUp!467 (Context!8959 (t!374808 (exprs!4979 lt!2188664))) (h!67908 s!2326))))))

(declare-fun b!5374434 () Bool)

(declare-fun e!3334528 () Bool)

(assert (=> b!5374434 (= e!3334528 (nullable!5264 (h!67909 (exprs!4979 lt!2188664))))))

(declare-fun b!5374436 () Bool)

(declare-fun e!3334530 () (InoxSet Context!8958))

(assert (=> b!5374436 (= e!3334530 ((as const (Array Context!8958 Bool)) false))))

(declare-fun bm!384782 () Bool)

(assert (=> bm!384782 (= call!384787 (derivationStepZipperDown!543 (h!67909 (exprs!4979 lt!2188664)) (Context!8959 (t!374808 (exprs!4979 lt!2188664))) (h!67908 s!2326)))))

(declare-fun b!5374437 () Bool)

(assert (=> b!5374437 (= e!3334529 e!3334530)))

(declare-fun c!936501 () Bool)

(assert (=> b!5374437 (= c!936501 ((_ is Cons!61461) (exprs!4979 lt!2188664)))))

(declare-fun d!1720565 () Bool)

(declare-fun c!936500 () Bool)

(assert (=> d!1720565 (= c!936500 e!3334528)))

(declare-fun res!2281443 () Bool)

(assert (=> d!1720565 (=> (not res!2281443) (not e!3334528))))

(assert (=> d!1720565 (= res!2281443 ((_ is Cons!61461) (exprs!4979 lt!2188664)))))

(assert (=> d!1720565 (= (derivationStepZipperUp!467 lt!2188664 (h!67908 s!2326)) e!3334529)))

(declare-fun b!5374435 () Bool)

(assert (=> b!5374435 (= e!3334530 call!384787)))

(assert (= (and d!1720565 res!2281443) b!5374434))

(assert (= (and d!1720565 c!936500) b!5374433))

(assert (= (and d!1720565 (not c!936500)) b!5374437))

(assert (= (and b!5374437 c!936501) b!5374435))

(assert (= (and b!5374437 (not c!936501)) b!5374436))

(assert (= (or b!5374433 b!5374435) bm!384782))

(declare-fun m!6401258 () Bool)

(assert (=> b!5374433 m!6401258))

(declare-fun m!6401260 () Bool)

(assert (=> b!5374434 m!6401260))

(declare-fun m!6401262 () Bool)

(assert (=> bm!384782 m!6401262))

(assert (=> b!5373639 d!1720565))

(declare-fun d!1720567 () Bool)

(declare-fun dynLambda!24265 (Int Context!8958) (InoxSet Context!8958))

(assert (=> d!1720567 (= (flatMap!822 lt!2188636 lambda!277518) (dynLambda!24265 lambda!277518 lt!2188664))))

(declare-fun lt!2188778 () Unit!153898)

(declare-fun choose!40366 ((InoxSet Context!8958) Context!8958 Int) Unit!153898)

(assert (=> d!1720567 (= lt!2188778 (choose!40366 lt!2188636 lt!2188664 lambda!277518))))

(assert (=> d!1720567 (= lt!2188636 (store ((as const (Array Context!8958 Bool)) false) lt!2188664 true))))

(assert (=> d!1720567 (= (lemmaFlatMapOnSingletonSet!354 lt!2188636 lt!2188664 lambda!277518) lt!2188778)))

(declare-fun b_lambda!205949 () Bool)

(assert (=> (not b_lambda!205949) (not d!1720567)))

(declare-fun bs!1244245 () Bool)

(assert (= bs!1244245 d!1720567))

(assert (=> bs!1244245 m!6400598))

(declare-fun m!6401264 () Bool)

(assert (=> bs!1244245 m!6401264))

(declare-fun m!6401266 () Bool)

(assert (=> bs!1244245 m!6401266))

(assert (=> bs!1244245 m!6400604))

(assert (=> b!5373639 d!1720567))

(declare-fun d!1720569 () Bool)

(declare-fun choose!40367 ((InoxSet Context!8958) Int) (InoxSet Context!8958))

(assert (=> d!1720569 (= (flatMap!822 lt!2188636 lambda!277518) (choose!40367 lt!2188636 lambda!277518))))

(declare-fun bs!1244246 () Bool)

(assert (= bs!1244246 d!1720569))

(declare-fun m!6401268 () Bool)

(assert (=> bs!1244246 m!6401268))

(assert (=> b!5373639 d!1720569))

(declare-fun d!1720571 () Bool)

(assert (=> d!1720571 (= (flatMap!822 lt!2188635 lambda!277518) (dynLambda!24265 lambda!277518 lt!2188638))))

(declare-fun lt!2188779 () Unit!153898)

(assert (=> d!1720571 (= lt!2188779 (choose!40366 lt!2188635 lt!2188638 lambda!277518))))

(assert (=> d!1720571 (= lt!2188635 (store ((as const (Array Context!8958 Bool)) false) lt!2188638 true))))

(assert (=> d!1720571 (= (lemmaFlatMapOnSingletonSet!354 lt!2188635 lt!2188638 lambda!277518) lt!2188779)))

(declare-fun b_lambda!205951 () Bool)

(assert (=> (not b_lambda!205951) (not d!1720571)))

(declare-fun bs!1244247 () Bool)

(assert (= bs!1244247 d!1720571))

(assert (=> bs!1244247 m!6400602))

(declare-fun m!6401270 () Bool)

(assert (=> bs!1244247 m!6401270))

(declare-fun m!6401272 () Bool)

(assert (=> bs!1244247 m!6401272))

(assert (=> bs!1244247 m!6400606))

(assert (=> b!5373639 d!1720571))

(declare-fun d!1720573 () Bool)

(assert (=> d!1720573 (= (flatMap!822 lt!2188635 lambda!277518) (choose!40367 lt!2188635 lambda!277518))))

(declare-fun bs!1244248 () Bool)

(assert (= bs!1244248 d!1720573))

(declare-fun m!6401274 () Bool)

(assert (=> bs!1244248 m!6401274))

(assert (=> b!5373639 d!1720573))

(declare-fun call!384788 () (InoxSet Context!8958))

(declare-fun b!5374438 () Bool)

(declare-fun e!3334532 () (InoxSet Context!8958))

(assert (=> b!5374438 (= e!3334532 ((_ map or) call!384788 (derivationStepZipperUp!467 (Context!8959 (t!374808 (exprs!4979 lt!2188638))) (h!67908 s!2326))))))

(declare-fun b!5374439 () Bool)

(declare-fun e!3334531 () Bool)

(assert (=> b!5374439 (= e!3334531 (nullable!5264 (h!67909 (exprs!4979 lt!2188638))))))

(declare-fun b!5374441 () Bool)

(declare-fun e!3334533 () (InoxSet Context!8958))

(assert (=> b!5374441 (= e!3334533 ((as const (Array Context!8958 Bool)) false))))

(declare-fun bm!384783 () Bool)

(assert (=> bm!384783 (= call!384788 (derivationStepZipperDown!543 (h!67909 (exprs!4979 lt!2188638)) (Context!8959 (t!374808 (exprs!4979 lt!2188638))) (h!67908 s!2326)))))

(declare-fun b!5374442 () Bool)

(assert (=> b!5374442 (= e!3334532 e!3334533)))

(declare-fun c!936503 () Bool)

(assert (=> b!5374442 (= c!936503 ((_ is Cons!61461) (exprs!4979 lt!2188638)))))

(declare-fun d!1720575 () Bool)

(declare-fun c!936502 () Bool)

(assert (=> d!1720575 (= c!936502 e!3334531)))

(declare-fun res!2281444 () Bool)

(assert (=> d!1720575 (=> (not res!2281444) (not e!3334531))))

(assert (=> d!1720575 (= res!2281444 ((_ is Cons!61461) (exprs!4979 lt!2188638)))))

(assert (=> d!1720575 (= (derivationStepZipperUp!467 lt!2188638 (h!67908 s!2326)) e!3334532)))

(declare-fun b!5374440 () Bool)

(assert (=> b!5374440 (= e!3334533 call!384788)))

(assert (= (and d!1720575 res!2281444) b!5374439))

(assert (= (and d!1720575 c!936502) b!5374438))

(assert (= (and d!1720575 (not c!936502)) b!5374442))

(assert (= (and b!5374442 c!936503) b!5374440))

(assert (= (and b!5374442 (not c!936503)) b!5374441))

(assert (= (or b!5374438 b!5374440) bm!384783))

(declare-fun m!6401276 () Bool)

(assert (=> b!5374438 m!6401276))

(declare-fun m!6401278 () Bool)

(assert (=> b!5374439 m!6401278))

(declare-fun m!6401280 () Bool)

(assert (=> bm!384783 m!6401280))

(assert (=> b!5373639 d!1720575))

(declare-fun d!1720577 () Bool)

(assert (=> d!1720577 (= (flatMap!822 z!1189 lambda!277518) (dynLambda!24265 lambda!277518 (h!67910 zl!343)))))

(declare-fun lt!2188780 () Unit!153898)

(assert (=> d!1720577 (= lt!2188780 (choose!40366 z!1189 (h!67910 zl!343) lambda!277518))))

(assert (=> d!1720577 (= z!1189 (store ((as const (Array Context!8958 Bool)) false) (h!67910 zl!343) true))))

(assert (=> d!1720577 (= (lemmaFlatMapOnSingletonSet!354 z!1189 (h!67910 zl!343) lambda!277518) lt!2188780)))

(declare-fun b_lambda!205953 () Bool)

(assert (=> (not b_lambda!205953) (not d!1720577)))

(declare-fun bs!1244249 () Bool)

(assert (= bs!1244249 d!1720577))

(assert (=> bs!1244249 m!6400584))

(declare-fun m!6401282 () Bool)

(assert (=> bs!1244249 m!6401282))

(declare-fun m!6401284 () Bool)

(assert (=> bs!1244249 m!6401284))

(declare-fun m!6401286 () Bool)

(assert (=> bs!1244249 m!6401286))

(assert (=> b!5373638 d!1720577))

(declare-fun d!1720579 () Bool)

(assert (=> d!1720579 (= (flatMap!822 z!1189 lambda!277518) (choose!40367 z!1189 lambda!277518))))

(declare-fun bs!1244250 () Bool)

(assert (= bs!1244250 d!1720579))

(declare-fun m!6401288 () Bool)

(assert (=> bs!1244250 m!6401288))

(assert (=> b!5373638 d!1720579))

(declare-fun d!1720581 () Bool)

(assert (=> d!1720581 (= (nullable!5264 (h!67909 (exprs!4979 (h!67910 zl!343)))) (nullableFct!1555 (h!67909 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun bs!1244251 () Bool)

(assert (= bs!1244251 d!1720581))

(declare-fun m!6401290 () Bool)

(assert (=> bs!1244251 m!6401290))

(assert (=> b!5373638 d!1720581))

(declare-fun e!3334535 () (InoxSet Context!8958))

(declare-fun call!384789 () (InoxSet Context!8958))

(declare-fun b!5374443 () Bool)

(assert (=> b!5374443 (= e!3334535 ((_ map or) call!384789 (derivationStepZipperUp!467 (Context!8959 (t!374808 (exprs!4979 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343)))))))) (h!67908 s!2326))))))

(declare-fun b!5374444 () Bool)

(declare-fun e!3334534 () Bool)

(assert (=> b!5374444 (= e!3334534 (nullable!5264 (h!67909 (exprs!4979 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343)))))))))))

(declare-fun b!5374446 () Bool)

(declare-fun e!3334536 () (InoxSet Context!8958))

(assert (=> b!5374446 (= e!3334536 ((as const (Array Context!8958 Bool)) false))))

(declare-fun bm!384784 () Bool)

(assert (=> bm!384784 (= call!384789 (derivationStepZipperDown!543 (h!67909 (exprs!4979 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343))))))) (Context!8959 (t!374808 (exprs!4979 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343)))))))) (h!67908 s!2326)))))

(declare-fun b!5374447 () Bool)

(assert (=> b!5374447 (= e!3334535 e!3334536)))

(declare-fun c!936505 () Bool)

(assert (=> b!5374447 (= c!936505 ((_ is Cons!61461) (exprs!4979 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343))))))))))

(declare-fun d!1720583 () Bool)

(declare-fun c!936504 () Bool)

(assert (=> d!1720583 (= c!936504 e!3334534)))

(declare-fun res!2281445 () Bool)

(assert (=> d!1720583 (=> (not res!2281445) (not e!3334534))))

(assert (=> d!1720583 (= res!2281445 ((_ is Cons!61461) (exprs!4979 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343))))))))))

(assert (=> d!1720583 (= (derivationStepZipperUp!467 (Context!8959 (Cons!61461 (h!67909 (exprs!4979 (h!67910 zl!343))) (t!374808 (exprs!4979 (h!67910 zl!343))))) (h!67908 s!2326)) e!3334535)))

(declare-fun b!5374445 () Bool)

(assert (=> b!5374445 (= e!3334536 call!384789)))

(assert (= (and d!1720583 res!2281445) b!5374444))

(assert (= (and d!1720583 c!936504) b!5374443))

(assert (= (and d!1720583 (not c!936504)) b!5374447))

(assert (= (and b!5374447 c!936505) b!5374445))

(assert (= (and b!5374447 (not c!936505)) b!5374446))

(assert (= (or b!5374443 b!5374445) bm!384784))

(declare-fun m!6401292 () Bool)

(assert (=> b!5374443 m!6401292))

(declare-fun m!6401294 () Bool)

(assert (=> b!5374444 m!6401294))

(declare-fun m!6401296 () Bool)

(assert (=> bm!384784 m!6401296))

(assert (=> b!5373638 d!1720583))

(declare-fun bm!384797 () Bool)

(declare-fun call!384805 () (InoxSet Context!8958))

(declare-fun call!384802 () (InoxSet Context!8958))

(assert (=> bm!384797 (= call!384805 call!384802)))

(declare-fun b!5374470 () Bool)

(declare-fun e!3334554 () (InoxSet Context!8958))

(declare-fun call!384806 () (InoxSet Context!8958))

(assert (=> b!5374470 (= e!3334554 ((_ map or) call!384806 call!384802))))

(declare-fun b!5374471 () Bool)

(declare-fun e!3334550 () (InoxSet Context!8958))

(declare-fun call!384803 () (InoxSet Context!8958))

(assert (=> b!5374471 (= e!3334550 ((_ map or) call!384803 call!384806))))

(declare-fun b!5374472 () Bool)

(declare-fun e!3334549 () Bool)

(assert (=> b!5374472 (= e!3334549 (nullable!5264 (regOne!30702 (h!67909 (exprs!4979 (h!67910 zl!343))))))))

(declare-fun bm!384798 () Bool)

(declare-fun c!936520 () Bool)

(declare-fun c!936518 () Bool)

(declare-fun call!384804 () List!61585)

(declare-fun c!936519 () Bool)

(assert (=> bm!384798 (= call!384803 (derivationStepZipperDown!543 (ite c!936520 (regOne!30703 (h!67909 (exprs!4979 (h!67910 zl!343)))) (ite c!936518 (regTwo!30702 (h!67909 (exprs!4979 (h!67910 zl!343)))) (ite c!936519 (regOne!30702 (h!67909 (exprs!4979 (h!67910 zl!343)))) (reg!15424 (h!67909 (exprs!4979 (h!67910 zl!343))))))) (ite (or c!936520 c!936518) lt!2188662 (Context!8959 call!384804)) (h!67908 s!2326)))))

(declare-fun bm!384799 () Bool)

(declare-fun call!384807 () List!61585)

(assert (=> bm!384799 (= call!384804 call!384807)))

(declare-fun b!5374473 () Bool)

(declare-fun e!3334553 () (InoxSet Context!8958))

(assert (=> b!5374473 (= e!3334553 ((as const (Array Context!8958 Bool)) false))))

(declare-fun b!5374474 () Bool)

(declare-fun c!936517 () Bool)

(assert (=> b!5374474 (= c!936517 ((_ is Star!15095) (h!67909 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun e!3334551 () (InoxSet Context!8958))

(assert (=> b!5374474 (= e!3334551 e!3334553)))

(declare-fun b!5374475 () Bool)

(assert (=> b!5374475 (= e!3334551 call!384805)))

(declare-fun b!5374476 () Bool)

(assert (=> b!5374476 (= c!936518 e!3334549)))

(declare-fun res!2281448 () Bool)

(assert (=> b!5374476 (=> (not res!2281448) (not e!3334549))))

(assert (=> b!5374476 (= res!2281448 ((_ is Concat!23940) (h!67909 (exprs!4979 (h!67910 zl!343)))))))

(assert (=> b!5374476 (= e!3334550 e!3334554)))

(declare-fun b!5374477 () Bool)

(declare-fun e!3334552 () (InoxSet Context!8958))

(assert (=> b!5374477 (= e!3334552 e!3334550)))

(assert (=> b!5374477 (= c!936520 ((_ is Union!15095) (h!67909 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun b!5374478 () Bool)

(assert (=> b!5374478 (= e!3334554 e!3334551)))

(assert (=> b!5374478 (= c!936519 ((_ is Concat!23940) (h!67909 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun bm!384801 () Bool)

(assert (=> bm!384801 (= call!384802 call!384803)))

(declare-fun b!5374479 () Bool)

(assert (=> b!5374479 (= e!3334552 (store ((as const (Array Context!8958 Bool)) false) lt!2188662 true))))

(declare-fun b!5374480 () Bool)

(assert (=> b!5374480 (= e!3334553 call!384805)))

(declare-fun bm!384802 () Bool)

(assert (=> bm!384802 (= call!384806 (derivationStepZipperDown!543 (ite c!936520 (regTwo!30703 (h!67909 (exprs!4979 (h!67910 zl!343)))) (regOne!30702 (h!67909 (exprs!4979 (h!67910 zl!343))))) (ite c!936520 lt!2188662 (Context!8959 call!384807)) (h!67908 s!2326)))))

(declare-fun bm!384800 () Bool)

(declare-fun $colon$colon!1454 (List!61585 Regex!15095) List!61585)

(assert (=> bm!384800 (= call!384807 ($colon$colon!1454 (exprs!4979 lt!2188662) (ite (or c!936518 c!936519) (regTwo!30702 (h!67909 (exprs!4979 (h!67910 zl!343)))) (h!67909 (exprs!4979 (h!67910 zl!343))))))))

(declare-fun d!1720585 () Bool)

(declare-fun c!936516 () Bool)

(assert (=> d!1720585 (= c!936516 (and ((_ is ElementMatch!15095) (h!67909 (exprs!4979 (h!67910 zl!343)))) (= (c!936295 (h!67909 (exprs!4979 (h!67910 zl!343)))) (h!67908 s!2326))))))

(assert (=> d!1720585 (= (derivationStepZipperDown!543 (h!67909 (exprs!4979 (h!67910 zl!343))) lt!2188662 (h!67908 s!2326)) e!3334552)))

(assert (= (and d!1720585 c!936516) b!5374479))

(assert (= (and d!1720585 (not c!936516)) b!5374477))

(assert (= (and b!5374477 c!936520) b!5374471))

(assert (= (and b!5374477 (not c!936520)) b!5374476))

(assert (= (and b!5374476 res!2281448) b!5374472))

(assert (= (and b!5374476 c!936518) b!5374470))

(assert (= (and b!5374476 (not c!936518)) b!5374478))

(assert (= (and b!5374478 c!936519) b!5374475))

(assert (= (and b!5374478 (not c!936519)) b!5374474))

(assert (= (and b!5374474 c!936517) b!5374480))

(assert (= (and b!5374474 (not c!936517)) b!5374473))

(assert (= (or b!5374475 b!5374480) bm!384799))

(assert (= (or b!5374475 b!5374480) bm!384797))

(assert (= (or b!5374470 bm!384799) bm!384800))

(assert (= (or b!5374470 bm!384797) bm!384801))

(assert (= (or b!5374471 b!5374470) bm!384802))

(assert (= (or b!5374471 bm!384801) bm!384798))

(declare-fun m!6401298 () Bool)

(assert (=> b!5374472 m!6401298))

(declare-fun m!6401300 () Bool)

(assert (=> b!5374479 m!6401300))

(declare-fun m!6401302 () Bool)

(assert (=> bm!384800 m!6401302))

(declare-fun m!6401304 () Bool)

(assert (=> bm!384798 m!6401304))

(declare-fun m!6401306 () Bool)

(assert (=> bm!384802 m!6401306))

(assert (=> b!5373638 d!1720585))

(declare-fun e!3334556 () (InoxSet Context!8958))

(declare-fun b!5374481 () Bool)

(declare-fun call!384808 () (InoxSet Context!8958))

(assert (=> b!5374481 (= e!3334556 ((_ map or) call!384808 (derivationStepZipperUp!467 (Context!8959 (t!374808 (exprs!4979 (h!67910 zl!343)))) (h!67908 s!2326))))))

(declare-fun b!5374482 () Bool)

(declare-fun e!3334555 () Bool)

(assert (=> b!5374482 (= e!3334555 (nullable!5264 (h!67909 (exprs!4979 (h!67910 zl!343)))))))

(declare-fun b!5374484 () Bool)

(declare-fun e!3334557 () (InoxSet Context!8958))

(assert (=> b!5374484 (= e!3334557 ((as const (Array Context!8958 Bool)) false))))

(declare-fun bm!384803 () Bool)

(assert (=> bm!384803 (= call!384808 (derivationStepZipperDown!543 (h!67909 (exprs!4979 (h!67910 zl!343))) (Context!8959 (t!374808 (exprs!4979 (h!67910 zl!343)))) (h!67908 s!2326)))))

(declare-fun b!5374485 () Bool)

(assert (=> b!5374485 (= e!3334556 e!3334557)))

(declare-fun c!936522 () Bool)

(assert (=> b!5374485 (= c!936522 ((_ is Cons!61461) (exprs!4979 (h!67910 zl!343))))))

(declare-fun d!1720587 () Bool)

(declare-fun c!936521 () Bool)

(assert (=> d!1720587 (= c!936521 e!3334555)))

(declare-fun res!2281449 () Bool)

(assert (=> d!1720587 (=> (not res!2281449) (not e!3334555))))

(assert (=> d!1720587 (= res!2281449 ((_ is Cons!61461) (exprs!4979 (h!67910 zl!343))))))

(assert (=> d!1720587 (= (derivationStepZipperUp!467 (h!67910 zl!343) (h!67908 s!2326)) e!3334556)))

(declare-fun b!5374483 () Bool)

(assert (=> b!5374483 (= e!3334557 call!384808)))

(assert (= (and d!1720587 res!2281449) b!5374482))

(assert (= (and d!1720587 c!936521) b!5374481))

(assert (= (and d!1720587 (not c!936521)) b!5374485))

(assert (= (and b!5374485 c!936522) b!5374483))

(assert (= (and b!5374485 (not c!936522)) b!5374484))

(assert (= (or b!5374481 b!5374483) bm!384803))

(declare-fun m!6401308 () Bool)

(assert (=> b!5374481 m!6401308))

(assert (=> b!5374482 m!6400586))

(declare-fun m!6401310 () Bool)

(assert (=> bm!384803 m!6401310))

(assert (=> b!5373638 d!1720587))

(declare-fun e!3334559 () (InoxSet Context!8958))

(declare-fun call!384809 () (InoxSet Context!8958))

(declare-fun b!5374486 () Bool)

(assert (=> b!5374486 (= e!3334559 ((_ map or) call!384809 (derivationStepZipperUp!467 (Context!8959 (t!374808 (exprs!4979 lt!2188662))) (h!67908 s!2326))))))

(declare-fun b!5374487 () Bool)

(declare-fun e!3334558 () Bool)

(assert (=> b!5374487 (= e!3334558 (nullable!5264 (h!67909 (exprs!4979 lt!2188662))))))

(declare-fun b!5374489 () Bool)

(declare-fun e!3334560 () (InoxSet Context!8958))

(assert (=> b!5374489 (= e!3334560 ((as const (Array Context!8958 Bool)) false))))

(declare-fun bm!384804 () Bool)

(assert (=> bm!384804 (= call!384809 (derivationStepZipperDown!543 (h!67909 (exprs!4979 lt!2188662)) (Context!8959 (t!374808 (exprs!4979 lt!2188662))) (h!67908 s!2326)))))

(declare-fun b!5374490 () Bool)

(assert (=> b!5374490 (= e!3334559 e!3334560)))

(declare-fun c!936524 () Bool)

(assert (=> b!5374490 (= c!936524 ((_ is Cons!61461) (exprs!4979 lt!2188662)))))

(declare-fun d!1720589 () Bool)

(declare-fun c!936523 () Bool)

(assert (=> d!1720589 (= c!936523 e!3334558)))

(declare-fun res!2281450 () Bool)

(assert (=> d!1720589 (=> (not res!2281450) (not e!3334558))))

(assert (=> d!1720589 (= res!2281450 ((_ is Cons!61461) (exprs!4979 lt!2188662)))))

(assert (=> d!1720589 (= (derivationStepZipperUp!467 lt!2188662 (h!67908 s!2326)) e!3334559)))

(declare-fun b!5374488 () Bool)

(assert (=> b!5374488 (= e!3334560 call!384809)))

(assert (= (and d!1720589 res!2281450) b!5374487))

(assert (= (and d!1720589 c!936523) b!5374486))

(assert (= (and d!1720589 (not c!936523)) b!5374490))

(assert (= (and b!5374490 c!936524) b!5374488))

(assert (= (and b!5374490 (not c!936524)) b!5374489))

(assert (= (or b!5374486 b!5374488) bm!384804))

(declare-fun m!6401312 () Bool)

(assert (=> b!5374486 m!6401312))

(declare-fun m!6401314 () Bool)

(assert (=> b!5374487 m!6401314))

(declare-fun m!6401316 () Bool)

(assert (=> bm!384804 m!6401316))

(assert (=> b!5373638 d!1720589))

(declare-fun b!5374491 () Bool)

(declare-fun e!3334562 () Bool)

(assert (=> b!5374491 (= e!3334562 (not (= (head!11526 s!2326) (c!936295 lt!2188633))))))

(declare-fun bm!384805 () Bool)

(declare-fun call!384810 () Bool)

(assert (=> bm!384805 (= call!384810 (isEmpty!33444 s!2326))))

(declare-fun d!1720591 () Bool)

(declare-fun e!3334563 () Bool)

(assert (=> d!1720591 e!3334563))

(declare-fun c!936525 () Bool)

(assert (=> d!1720591 (= c!936525 ((_ is EmptyExpr!15095) lt!2188633))))

(declare-fun lt!2188781 () Bool)

(declare-fun e!3334561 () Bool)

(assert (=> d!1720591 (= lt!2188781 e!3334561)))

(declare-fun c!936526 () Bool)

(assert (=> d!1720591 (= c!936526 (isEmpty!33444 s!2326))))

(assert (=> d!1720591 (validRegex!6831 lt!2188633)))

(assert (=> d!1720591 (= (matchR!7280 lt!2188633 s!2326) lt!2188781)))

(declare-fun b!5374492 () Bool)

(declare-fun res!2281453 () Bool)

(declare-fun e!3334565 () Bool)

(assert (=> b!5374492 (=> res!2281453 e!3334565)))

(declare-fun e!3334566 () Bool)

(assert (=> b!5374492 (= res!2281453 e!3334566)))

(declare-fun res!2281454 () Bool)

(assert (=> b!5374492 (=> (not res!2281454) (not e!3334566))))

(assert (=> b!5374492 (= res!2281454 lt!2188781)))

(declare-fun b!5374493 () Bool)

(assert (=> b!5374493 (= e!3334566 (= (head!11526 s!2326) (c!936295 lt!2188633)))))

(declare-fun b!5374494 () Bool)

(assert (=> b!5374494 (= e!3334561 (nullable!5264 lt!2188633))))

(declare-fun b!5374495 () Bool)

(assert (=> b!5374495 (= e!3334561 (matchR!7280 (derivativeStep!4225 lt!2188633 (head!11526 s!2326)) (tail!10623 s!2326)))))

(declare-fun b!5374496 () Bool)

(declare-fun e!3334564 () Bool)

(assert (=> b!5374496 (= e!3334564 (not lt!2188781))))

(declare-fun b!5374497 () Bool)

(declare-fun e!3334567 () Bool)

(assert (=> b!5374497 (= e!3334565 e!3334567)))

(declare-fun res!2281451 () Bool)

(assert (=> b!5374497 (=> (not res!2281451) (not e!3334567))))

(assert (=> b!5374497 (= res!2281451 (not lt!2188781))))

(declare-fun b!5374498 () Bool)

(declare-fun res!2281452 () Bool)

(assert (=> b!5374498 (=> res!2281452 e!3334565)))

(assert (=> b!5374498 (= res!2281452 (not ((_ is ElementMatch!15095) lt!2188633)))))

(assert (=> b!5374498 (= e!3334564 e!3334565)))

(declare-fun b!5374499 () Bool)

(assert (=> b!5374499 (= e!3334563 (= lt!2188781 call!384810))))

(declare-fun b!5374500 () Bool)

(assert (=> b!5374500 (= e!3334563 e!3334564)))

(declare-fun c!936527 () Bool)

(assert (=> b!5374500 (= c!936527 ((_ is EmptyLang!15095) lt!2188633))))

(declare-fun b!5374501 () Bool)

(assert (=> b!5374501 (= e!3334567 e!3334562)))

(declare-fun res!2281456 () Bool)

(assert (=> b!5374501 (=> res!2281456 e!3334562)))

(assert (=> b!5374501 (= res!2281456 call!384810)))

(declare-fun b!5374502 () Bool)

(declare-fun res!2281457 () Bool)

(assert (=> b!5374502 (=> res!2281457 e!3334562)))

(assert (=> b!5374502 (= res!2281457 (not (isEmpty!33444 (tail!10623 s!2326))))))

(declare-fun b!5374503 () Bool)

(declare-fun res!2281458 () Bool)

(assert (=> b!5374503 (=> (not res!2281458) (not e!3334566))))

(assert (=> b!5374503 (= res!2281458 (isEmpty!33444 (tail!10623 s!2326)))))

(declare-fun b!5374504 () Bool)

(declare-fun res!2281455 () Bool)

(assert (=> b!5374504 (=> (not res!2281455) (not e!3334566))))

(assert (=> b!5374504 (= res!2281455 (not call!384810))))

(assert (= (and d!1720591 c!936526) b!5374494))

(assert (= (and d!1720591 (not c!936526)) b!5374495))

(assert (= (and d!1720591 c!936525) b!5374499))

(assert (= (and d!1720591 (not c!936525)) b!5374500))

(assert (= (and b!5374500 c!936527) b!5374496))

(assert (= (and b!5374500 (not c!936527)) b!5374498))

(assert (= (and b!5374498 (not res!2281452)) b!5374492))

(assert (= (and b!5374492 res!2281454) b!5374504))

(assert (= (and b!5374504 res!2281455) b!5374503))

(assert (= (and b!5374503 res!2281458) b!5374493))

(assert (= (and b!5374492 (not res!2281453)) b!5374497))

(assert (= (and b!5374497 res!2281451) b!5374501))

(assert (= (and b!5374501 (not res!2281456)) b!5374502))

(assert (= (and b!5374502 (not res!2281457)) b!5374491))

(assert (= (or b!5374499 b!5374501 b!5374504) bm!384805))

(assert (=> bm!384805 m!6400782))

(declare-fun m!6401318 () Bool)

(assert (=> b!5374494 m!6401318))

(assert (=> b!5374493 m!6400814))

(assert (=> b!5374503 m!6400816))

(assert (=> b!5374503 m!6400816))

(assert (=> b!5374503 m!6400818))

(assert (=> b!5374495 m!6400814))

(assert (=> b!5374495 m!6400814))

(declare-fun m!6401320 () Bool)

(assert (=> b!5374495 m!6401320))

(assert (=> b!5374495 m!6400816))

(assert (=> b!5374495 m!6401320))

(assert (=> b!5374495 m!6400816))

(declare-fun m!6401322 () Bool)

(assert (=> b!5374495 m!6401322))

(assert (=> b!5374491 m!6400814))

(assert (=> d!1720591 m!6400782))

(declare-fun m!6401324 () Bool)

(assert (=> d!1720591 m!6401324))

(assert (=> b!5374502 m!6400816))

(assert (=> b!5374502 m!6400816))

(assert (=> b!5374502 m!6400818))

(assert (=> b!5373640 d!1720591))

(declare-fun bs!1244252 () Bool)

(declare-fun b!5374512 () Bool)

(assert (= bs!1244252 (and b!5374512 b!5373652)))

(declare-fun lambda!277607 () Int)

(assert (=> bs!1244252 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (reg!15424 lt!2188633) (reg!15424 (regOne!30702 r!7292))) (= lt!2188633 lt!2188632)) (= lambda!277607 lambda!277522))))

(declare-fun bs!1244253 () Bool)

(assert (= bs!1244253 (and b!5374512 b!5373849)))

(assert (=> bs!1244253 (= (and (= (reg!15424 lt!2188633) (reg!15424 r!7292)) (= lt!2188633 r!7292)) (= lambda!277607 lambda!277557))))

(assert (=> bs!1244252 (not (= lambda!277607 lambda!277523))))

(declare-fun bs!1244254 () Bool)

(assert (= bs!1244254 (and b!5374512 b!5374207)))

(assert (=> bs!1244254 (not (= lambda!277607 lambda!277593))))

(declare-fun bs!1244255 () Bool)

(assert (= bs!1244255 (and b!5374512 d!1720445)))

(assert (=> bs!1244255 (not (= lambda!277607 lambda!277577))))

(declare-fun bs!1244256 () Bool)

(assert (= bs!1244256 (and b!5374512 d!1720469)))

(assert (=> bs!1244256 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (reg!15424 lt!2188633) (reg!15424 (regOne!30702 r!7292))) (= lt!2188633 (Star!15095 (reg!15424 (regOne!30702 r!7292))))) (= lambda!277607 lambda!277586))))

(declare-fun bs!1244257 () Bool)

(assert (= bs!1244257 (and b!5374512 d!1720479)))

(assert (=> bs!1244257 (not (= lambda!277607 lambda!277591))))

(assert (=> bs!1244255 (not (= lambda!277607 lambda!277576))))

(declare-fun bs!1244258 () Bool)

(assert (= bs!1244258 (and b!5374512 b!5373643)))

(assert (=> bs!1244258 (not (= lambda!277607 lambda!277517))))

(declare-fun bs!1244259 () Bool)

(assert (= bs!1244259 (and b!5374512 b!5374210)))

(assert (=> bs!1244259 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (reg!15424 lt!2188633) (reg!15424 lt!2188632)) (= lt!2188633 lt!2188632)) (= lambda!277607 lambda!277592))))

(assert (=> bs!1244258 (not (= lambda!277607 lambda!277516))))

(assert (=> bs!1244252 (not (= lambda!277607 lambda!277521))))

(declare-fun bs!1244260 () Bool)

(assert (= bs!1244260 (and b!5374512 b!5373645)))

(assert (=> bs!1244260 (not (= lambda!277607 lambda!277520))))

(assert (=> bs!1244260 (not (= lambda!277607 lambda!277519))))

(declare-fun bs!1244261 () Bool)

(assert (= bs!1244261 (and b!5374512 b!5373846)))

(assert (=> bs!1244261 (not (= lambda!277607 lambda!277559))))

(assert (=> bs!1244256 (not (= lambda!277607 lambda!277585))))

(assert (=> b!5374512 true))

(assert (=> b!5374512 true))

(declare-fun bs!1244262 () Bool)

(declare-fun b!5374509 () Bool)

(assert (= bs!1244262 (and b!5374509 b!5373652)))

(declare-fun lambda!277608 () Int)

(assert (=> bs!1244262 (not (= lambda!277608 lambda!277522))))

(declare-fun bs!1244263 () Bool)

(assert (= bs!1244263 (and b!5374509 b!5373849)))

(assert (=> bs!1244263 (not (= lambda!277608 lambda!277557))))

(assert (=> bs!1244262 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 lt!2188633) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 lt!2188633) lt!2188632)) (= lambda!277608 lambda!277523))))

(declare-fun bs!1244264 () Bool)

(assert (= bs!1244264 (and b!5374509 b!5374207)))

(assert (=> bs!1244264 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 lt!2188633) (regOne!30702 lt!2188632)) (= (regTwo!30702 lt!2188633) (regTwo!30702 lt!2188632))) (= lambda!277608 lambda!277593))))

(declare-fun bs!1244265 () Bool)

(assert (= bs!1244265 (and b!5374509 d!1720445)))

(assert (=> bs!1244265 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 lt!2188633) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 lt!2188633) lt!2188632)) (= lambda!277608 lambda!277577))))

(declare-fun bs!1244266 () Bool)

(assert (= bs!1244266 (and b!5374509 d!1720469)))

(assert (=> bs!1244266 (not (= lambda!277608 lambda!277586))))

(declare-fun bs!1244267 () Bool)

(assert (= bs!1244267 (and b!5374509 d!1720479)))

(assert (=> bs!1244267 (not (= lambda!277608 lambda!277591))))

(assert (=> bs!1244265 (not (= lambda!277608 lambda!277576))))

(declare-fun bs!1244268 () Bool)

(assert (= bs!1244268 (and b!5374509 b!5374210)))

(assert (=> bs!1244268 (not (= lambda!277608 lambda!277592))))

(declare-fun bs!1244269 () Bool)

(assert (= bs!1244269 (and b!5374509 b!5373643)))

(assert (=> bs!1244269 (not (= lambda!277608 lambda!277516))))

(assert (=> bs!1244262 (not (= lambda!277608 lambda!277521))))

(declare-fun bs!1244270 () Bool)

(assert (= bs!1244270 (and b!5374509 b!5373645)))

(assert (=> bs!1244270 (= (and (= (regOne!30702 lt!2188633) lt!2188632) (= (regTwo!30702 lt!2188633) (regTwo!30702 r!7292))) (= lambda!277608 lambda!277520))))

(assert (=> bs!1244270 (not (= lambda!277608 lambda!277519))))

(declare-fun bs!1244271 () Bool)

(assert (= bs!1244271 (and b!5374509 b!5373846)))

(assert (=> bs!1244271 (= (and (= (regOne!30702 lt!2188633) (regOne!30702 r!7292)) (= (regTwo!30702 lt!2188633) (regTwo!30702 r!7292))) (= lambda!277608 lambda!277559))))

(assert (=> bs!1244266 (not (= lambda!277608 lambda!277585))))

(declare-fun bs!1244272 () Bool)

(assert (= bs!1244272 (and b!5374509 b!5374512)))

(assert (=> bs!1244272 (not (= lambda!277608 lambda!277607))))

(assert (=> bs!1244269 (= (and (= (regOne!30702 lt!2188633) (regOne!30702 r!7292)) (= (regTwo!30702 lt!2188633) (regTwo!30702 r!7292))) (= lambda!277608 lambda!277517))))

(assert (=> b!5374509 true))

(assert (=> b!5374509 true))

(declare-fun b!5374505 () Bool)

(declare-fun e!3334570 () Bool)

(assert (=> b!5374505 (= e!3334570 (matchRSpec!2198 (regTwo!30703 lt!2188633) s!2326))))

(declare-fun b!5374506 () Bool)

(declare-fun c!936530 () Bool)

(assert (=> b!5374506 (= c!936530 ((_ is Union!15095) lt!2188633))))

(declare-fun e!3334569 () Bool)

(declare-fun e!3334568 () Bool)

(assert (=> b!5374506 (= e!3334569 e!3334568)))

(declare-fun bm!384806 () Bool)

(declare-fun call!384812 () Bool)

(declare-fun c!936528 () Bool)

(assert (=> bm!384806 (= call!384812 (Exists!2276 (ite c!936528 lambda!277607 lambda!277608)))))

(declare-fun b!5374507 () Bool)

(declare-fun e!3334573 () Bool)

(declare-fun e!3334572 () Bool)

(assert (=> b!5374507 (= e!3334573 e!3334572)))

(declare-fun res!2281459 () Bool)

(assert (=> b!5374507 (= res!2281459 (not ((_ is EmptyLang!15095) lt!2188633)))))

(assert (=> b!5374507 (=> (not res!2281459) (not e!3334572))))

(declare-fun bm!384807 () Bool)

(declare-fun call!384811 () Bool)

(assert (=> bm!384807 (= call!384811 (isEmpty!33444 s!2326))))

(declare-fun b!5374508 () Bool)

(assert (=> b!5374508 (= e!3334568 e!3334570)))

(declare-fun res!2281460 () Bool)

(assert (=> b!5374508 (= res!2281460 (matchRSpec!2198 (regOne!30703 lt!2188633) s!2326))))

(assert (=> b!5374508 (=> res!2281460 e!3334570)))

(declare-fun e!3334571 () Bool)

(assert (=> b!5374509 (= e!3334571 call!384812)))

(declare-fun b!5374510 () Bool)

(assert (=> b!5374510 (= e!3334573 call!384811)))

(declare-fun d!1720593 () Bool)

(declare-fun c!936529 () Bool)

(assert (=> d!1720593 (= c!936529 ((_ is EmptyExpr!15095) lt!2188633))))

(assert (=> d!1720593 (= (matchRSpec!2198 lt!2188633 s!2326) e!3334573)))

(declare-fun b!5374511 () Bool)

(assert (=> b!5374511 (= e!3334568 e!3334571)))

(assert (=> b!5374511 (= c!936528 ((_ is Star!15095) lt!2188633))))

(declare-fun e!3334574 () Bool)

(assert (=> b!5374512 (= e!3334574 call!384812)))

(declare-fun b!5374513 () Bool)

(declare-fun res!2281461 () Bool)

(assert (=> b!5374513 (=> res!2281461 e!3334574)))

(assert (=> b!5374513 (= res!2281461 call!384811)))

(assert (=> b!5374513 (= e!3334571 e!3334574)))

(declare-fun b!5374514 () Bool)

(assert (=> b!5374514 (= e!3334569 (= s!2326 (Cons!61460 (c!936295 lt!2188633) Nil!61460)))))

(declare-fun b!5374515 () Bool)

(declare-fun c!936531 () Bool)

(assert (=> b!5374515 (= c!936531 ((_ is ElementMatch!15095) lt!2188633))))

(assert (=> b!5374515 (= e!3334572 e!3334569)))

(assert (= (and d!1720593 c!936529) b!5374510))

(assert (= (and d!1720593 (not c!936529)) b!5374507))

(assert (= (and b!5374507 res!2281459) b!5374515))

(assert (= (and b!5374515 c!936531) b!5374514))

(assert (= (and b!5374515 (not c!936531)) b!5374506))

(assert (= (and b!5374506 c!936530) b!5374508))

(assert (= (and b!5374506 (not c!936530)) b!5374511))

(assert (= (and b!5374508 (not res!2281460)) b!5374505))

(assert (= (and b!5374511 c!936528) b!5374513))

(assert (= (and b!5374511 (not c!936528)) b!5374509))

(assert (= (and b!5374513 (not res!2281461)) b!5374512))

(assert (= (or b!5374512 b!5374509) bm!384806))

(assert (= (or b!5374510 b!5374513) bm!384807))

(declare-fun m!6401326 () Bool)

(assert (=> b!5374505 m!6401326))

(declare-fun m!6401328 () Bool)

(assert (=> bm!384806 m!6401328))

(assert (=> bm!384807 m!6400782))

(declare-fun m!6401330 () Bool)

(assert (=> b!5374508 m!6401330))

(assert (=> b!5373640 d!1720593))

(declare-fun d!1720595 () Bool)

(assert (=> d!1720595 (= (matchR!7280 lt!2188633 s!2326) (matchRSpec!2198 lt!2188633 s!2326))))

(declare-fun lt!2188782 () Unit!153898)

(assert (=> d!1720595 (= lt!2188782 (choose!40360 lt!2188633 s!2326))))

(assert (=> d!1720595 (validRegex!6831 lt!2188633)))

(assert (=> d!1720595 (= (mainMatchTheorem!2198 lt!2188633 s!2326) lt!2188782)))

(declare-fun bs!1244273 () Bool)

(assert (= bs!1244273 d!1720595))

(assert (=> bs!1244273 m!6400658))

(assert (=> bs!1244273 m!6400660))

(declare-fun m!6401332 () Bool)

(assert (=> bs!1244273 m!6401332))

(assert (=> bs!1244273 m!6401324))

(assert (=> b!5373640 d!1720595))

(declare-fun d!1720597 () Bool)

(declare-fun e!3334577 () Bool)

(assert (=> d!1720597 (= (matchZipper!1339 ((_ map or) lt!2188643 lt!2188656) (t!374807 s!2326)) e!3334577)))

(declare-fun res!2281464 () Bool)

(assert (=> d!1720597 (=> res!2281464 e!3334577)))

(assert (=> d!1720597 (= res!2281464 (matchZipper!1339 lt!2188643 (t!374807 s!2326)))))

(declare-fun lt!2188785 () Unit!153898)

(declare-fun choose!40369 ((InoxSet Context!8958) (InoxSet Context!8958) List!61584) Unit!153898)

(assert (=> d!1720597 (= lt!2188785 (choose!40369 lt!2188643 lt!2188656 (t!374807 s!2326)))))

(assert (=> d!1720597 (= (lemmaZipperConcatMatchesSameAsBothZippers!332 lt!2188643 lt!2188656 (t!374807 s!2326)) lt!2188785)))

(declare-fun b!5374518 () Bool)

(assert (=> b!5374518 (= e!3334577 (matchZipper!1339 lt!2188656 (t!374807 s!2326)))))

(assert (= (and d!1720597 (not res!2281464)) b!5374518))

(assert (=> d!1720597 m!6400552))

(assert (=> d!1720597 m!6400550))

(declare-fun m!6401334 () Bool)

(assert (=> d!1720597 m!6401334))

(assert (=> b!5374518 m!6400526))

(assert (=> b!5373659 d!1720597))

(declare-fun d!1720599 () Bool)

(declare-fun c!936532 () Bool)

(assert (=> d!1720599 (= c!936532 (isEmpty!33444 (t!374807 s!2326)))))

(declare-fun e!3334578 () Bool)

(assert (=> d!1720599 (= (matchZipper!1339 lt!2188643 (t!374807 s!2326)) e!3334578)))

(declare-fun b!5374519 () Bool)

(assert (=> b!5374519 (= e!3334578 (nullableZipper!1404 lt!2188643))))

(declare-fun b!5374520 () Bool)

(assert (=> b!5374520 (= e!3334578 (matchZipper!1339 (derivationStepZipper!1334 lt!2188643 (head!11526 (t!374807 s!2326))) (tail!10623 (t!374807 s!2326))))))

(assert (= (and d!1720599 c!936532) b!5374519))

(assert (= (and d!1720599 (not c!936532)) b!5374520))

(assert (=> d!1720599 m!6401162))

(declare-fun m!6401336 () Bool)

(assert (=> b!5374519 m!6401336))

(assert (=> b!5374520 m!6401166))

(assert (=> b!5374520 m!6401166))

(declare-fun m!6401338 () Bool)

(assert (=> b!5374520 m!6401338))

(assert (=> b!5374520 m!6401170))

(assert (=> b!5374520 m!6401338))

(assert (=> b!5374520 m!6401170))

(declare-fun m!6401340 () Bool)

(assert (=> b!5374520 m!6401340))

(assert (=> b!5373659 d!1720599))

(declare-fun d!1720601 () Bool)

(declare-fun c!936533 () Bool)

(assert (=> d!1720601 (= c!936533 (isEmpty!33444 (t!374807 s!2326)))))

(declare-fun e!3334579 () Bool)

(assert (=> d!1720601 (= (matchZipper!1339 ((_ map or) lt!2188643 lt!2188656) (t!374807 s!2326)) e!3334579)))

(declare-fun b!5374521 () Bool)

(assert (=> b!5374521 (= e!3334579 (nullableZipper!1404 ((_ map or) lt!2188643 lt!2188656)))))

(declare-fun b!5374522 () Bool)

(assert (=> b!5374522 (= e!3334579 (matchZipper!1339 (derivationStepZipper!1334 ((_ map or) lt!2188643 lt!2188656) (head!11526 (t!374807 s!2326))) (tail!10623 (t!374807 s!2326))))))

(assert (= (and d!1720601 c!936533) b!5374521))

(assert (= (and d!1720601 (not c!936533)) b!5374522))

(assert (=> d!1720601 m!6401162))

(declare-fun m!6401342 () Bool)

(assert (=> b!5374521 m!6401342))

(assert (=> b!5374522 m!6401166))

(assert (=> b!5374522 m!6401166))

(declare-fun m!6401344 () Bool)

(assert (=> b!5374522 m!6401344))

(assert (=> b!5374522 m!6401170))

(assert (=> b!5374522 m!6401344))

(assert (=> b!5374522 m!6401170))

(declare-fun m!6401346 () Bool)

(assert (=> b!5374522 m!6401346))

(assert (=> b!5373659 d!1720601))

(declare-fun d!1720603 () Bool)

(declare-fun lt!2188786 () Regex!15095)

(assert (=> d!1720603 (validRegex!6831 lt!2188786)))

(assert (=> d!1720603 (= lt!2188786 (generalisedUnion!1024 (unfocusZipperList!537 zl!343)))))

(assert (=> d!1720603 (= (unfocusZipper!837 zl!343) lt!2188786)))

(declare-fun bs!1244274 () Bool)

(assert (= bs!1244274 d!1720603))

(declare-fun m!6401348 () Bool)

(assert (=> bs!1244274 m!6401348))

(assert (=> bs!1244274 m!6400544))

(assert (=> bs!1244274 m!6400544))

(assert (=> bs!1244274 m!6400546))

(assert (=> b!5373660 d!1720603))

(declare-fun b!5374523 () Bool)

(declare-fun e!3334581 () Bool)

(assert (=> b!5374523 (= e!3334581 (not (= (head!11526 (_2!35597 lt!2188650)) (c!936295 (regTwo!30702 r!7292)))))))

(declare-fun bm!384808 () Bool)

(declare-fun call!384813 () Bool)

(assert (=> bm!384808 (= call!384813 (isEmpty!33444 (_2!35597 lt!2188650)))))

(declare-fun d!1720605 () Bool)

(declare-fun e!3334582 () Bool)

(assert (=> d!1720605 e!3334582))

(declare-fun c!936534 () Bool)

(assert (=> d!1720605 (= c!936534 ((_ is EmptyExpr!15095) (regTwo!30702 r!7292)))))

(declare-fun lt!2188787 () Bool)

(declare-fun e!3334580 () Bool)

(assert (=> d!1720605 (= lt!2188787 e!3334580)))

(declare-fun c!936535 () Bool)

(assert (=> d!1720605 (= c!936535 (isEmpty!33444 (_2!35597 lt!2188650)))))

(assert (=> d!1720605 (validRegex!6831 (regTwo!30702 r!7292))))

(assert (=> d!1720605 (= (matchR!7280 (regTwo!30702 r!7292) (_2!35597 lt!2188650)) lt!2188787)))

(declare-fun b!5374524 () Bool)

(declare-fun res!2281467 () Bool)

(declare-fun e!3334584 () Bool)

(assert (=> b!5374524 (=> res!2281467 e!3334584)))

(declare-fun e!3334585 () Bool)

(assert (=> b!5374524 (= res!2281467 e!3334585)))

(declare-fun res!2281468 () Bool)

(assert (=> b!5374524 (=> (not res!2281468) (not e!3334585))))

(assert (=> b!5374524 (= res!2281468 lt!2188787)))

(declare-fun b!5374525 () Bool)

(assert (=> b!5374525 (= e!3334585 (= (head!11526 (_2!35597 lt!2188650)) (c!936295 (regTwo!30702 r!7292))))))

(declare-fun b!5374526 () Bool)

(assert (=> b!5374526 (= e!3334580 (nullable!5264 (regTwo!30702 r!7292)))))

(declare-fun b!5374527 () Bool)

(assert (=> b!5374527 (= e!3334580 (matchR!7280 (derivativeStep!4225 (regTwo!30702 r!7292) (head!11526 (_2!35597 lt!2188650))) (tail!10623 (_2!35597 lt!2188650))))))

(declare-fun b!5374528 () Bool)

(declare-fun e!3334583 () Bool)

(assert (=> b!5374528 (= e!3334583 (not lt!2188787))))

(declare-fun b!5374529 () Bool)

(declare-fun e!3334586 () Bool)

(assert (=> b!5374529 (= e!3334584 e!3334586)))

(declare-fun res!2281465 () Bool)

(assert (=> b!5374529 (=> (not res!2281465) (not e!3334586))))

(assert (=> b!5374529 (= res!2281465 (not lt!2188787))))

(declare-fun b!5374530 () Bool)

(declare-fun res!2281466 () Bool)

(assert (=> b!5374530 (=> res!2281466 e!3334584)))

(assert (=> b!5374530 (= res!2281466 (not ((_ is ElementMatch!15095) (regTwo!30702 r!7292))))))

(assert (=> b!5374530 (= e!3334583 e!3334584)))

(declare-fun b!5374531 () Bool)

(assert (=> b!5374531 (= e!3334582 (= lt!2188787 call!384813))))

(declare-fun b!5374532 () Bool)

(assert (=> b!5374532 (= e!3334582 e!3334583)))

(declare-fun c!936536 () Bool)

(assert (=> b!5374532 (= c!936536 ((_ is EmptyLang!15095) (regTwo!30702 r!7292)))))

(declare-fun b!5374533 () Bool)

(assert (=> b!5374533 (= e!3334586 e!3334581)))

(declare-fun res!2281470 () Bool)

(assert (=> b!5374533 (=> res!2281470 e!3334581)))

(assert (=> b!5374533 (= res!2281470 call!384813)))

(declare-fun b!5374534 () Bool)

(declare-fun res!2281471 () Bool)

(assert (=> b!5374534 (=> res!2281471 e!3334581)))

(assert (=> b!5374534 (= res!2281471 (not (isEmpty!33444 (tail!10623 (_2!35597 lt!2188650)))))))

(declare-fun b!5374535 () Bool)

(declare-fun res!2281472 () Bool)

(assert (=> b!5374535 (=> (not res!2281472) (not e!3334585))))

(assert (=> b!5374535 (= res!2281472 (isEmpty!33444 (tail!10623 (_2!35597 lt!2188650))))))

(declare-fun b!5374536 () Bool)

(declare-fun res!2281469 () Bool)

(assert (=> b!5374536 (=> (not res!2281469) (not e!3334585))))

(assert (=> b!5374536 (= res!2281469 (not call!384813))))

(assert (= (and d!1720605 c!936535) b!5374526))

(assert (= (and d!1720605 (not c!936535)) b!5374527))

(assert (= (and d!1720605 c!936534) b!5374531))

(assert (= (and d!1720605 (not c!936534)) b!5374532))

(assert (= (and b!5374532 c!936536) b!5374528))

(assert (= (and b!5374532 (not c!936536)) b!5374530))

(assert (= (and b!5374530 (not res!2281466)) b!5374524))

(assert (= (and b!5374524 res!2281468) b!5374536))

(assert (= (and b!5374536 res!2281469) b!5374535))

(assert (= (and b!5374535 res!2281472) b!5374525))

(assert (= (and b!5374524 (not res!2281467)) b!5374529))

(assert (= (and b!5374529 res!2281465) b!5374533))

(assert (= (and b!5374533 (not res!2281470)) b!5374534))

(assert (= (and b!5374534 (not res!2281471)) b!5374523))

(assert (= (or b!5374531 b!5374533 b!5374536) bm!384808))

(declare-fun m!6401350 () Bool)

(assert (=> bm!384808 m!6401350))

(declare-fun m!6401352 () Bool)

(assert (=> b!5374526 m!6401352))

(declare-fun m!6401354 () Bool)

(assert (=> b!5374525 m!6401354))

(declare-fun m!6401356 () Bool)

(assert (=> b!5374535 m!6401356))

(assert (=> b!5374535 m!6401356))

(declare-fun m!6401358 () Bool)

(assert (=> b!5374535 m!6401358))

(assert (=> b!5374527 m!6401354))

(assert (=> b!5374527 m!6401354))

(declare-fun m!6401360 () Bool)

(assert (=> b!5374527 m!6401360))

(assert (=> b!5374527 m!6401356))

(assert (=> b!5374527 m!6401360))

(assert (=> b!5374527 m!6401356))

(declare-fun m!6401362 () Bool)

(assert (=> b!5374527 m!6401362))

(assert (=> b!5374523 m!6401354))

(assert (=> d!1720605 m!6401350))

(declare-fun m!6401364 () Bool)

(assert (=> d!1720605 m!6401364))

(assert (=> b!5374534 m!6401356))

(assert (=> b!5374534 m!6401356))

(assert (=> b!5374534 m!6401358))

(assert (=> b!5373662 d!1720605))

(declare-fun b!5374537 () Bool)

(declare-fun e!3334589 () Option!15206)

(assert (=> b!5374537 (= e!3334589 None!15205)))

(declare-fun b!5374538 () Bool)

(declare-fun e!3334590 () Bool)

(declare-fun lt!2188788 () Option!15206)

(assert (=> b!5374538 (= e!3334590 (= (++!13398 (_1!35597 (get!21151 lt!2188788)) (_2!35597 (get!21151 lt!2188788))) s!2326))))

(declare-fun d!1720607 () Bool)

(declare-fun e!3334591 () Bool)

(assert (=> d!1720607 e!3334591))

(declare-fun res!2281474 () Bool)

(assert (=> d!1720607 (=> res!2281474 e!3334591)))

(assert (=> d!1720607 (= res!2281474 e!3334590)))

(declare-fun res!2281476 () Bool)

(assert (=> d!1720607 (=> (not res!2281476) (not e!3334590))))

(assert (=> d!1720607 (= res!2281476 (isDefined!11909 lt!2188788))))

(declare-fun e!3334588 () Option!15206)

(assert (=> d!1720607 (= lt!2188788 e!3334588)))

(declare-fun c!936537 () Bool)

(declare-fun e!3334587 () Bool)

(assert (=> d!1720607 (= c!936537 e!3334587)))

(declare-fun res!2281475 () Bool)

(assert (=> d!1720607 (=> (not res!2281475) (not e!3334587))))

(assert (=> d!1720607 (= res!2281475 (matchR!7280 (regOne!30702 r!7292) Nil!61460))))

(assert (=> d!1720607 (validRegex!6831 (regOne!30702 r!7292))))

(assert (=> d!1720607 (= (findConcatSeparation!1620 (regOne!30702 r!7292) (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326) lt!2188788)))

(declare-fun b!5374539 () Bool)

(declare-fun lt!2188789 () Unit!153898)

(declare-fun lt!2188790 () Unit!153898)

(assert (=> b!5374539 (= lt!2188789 lt!2188790)))

(assert (=> b!5374539 (= (++!13398 (++!13398 Nil!61460 (Cons!61460 (h!67908 s!2326) Nil!61460)) (t!374807 s!2326)) s!2326)))

(assert (=> b!5374539 (= lt!2188790 (lemmaMoveElementToOtherListKeepsConcatEq!1799 Nil!61460 (h!67908 s!2326) (t!374807 s!2326) s!2326))))

(assert (=> b!5374539 (= e!3334589 (findConcatSeparation!1620 (regOne!30702 r!7292) (regTwo!30702 r!7292) (++!13398 Nil!61460 (Cons!61460 (h!67908 s!2326) Nil!61460)) (t!374807 s!2326) s!2326))))

(declare-fun b!5374540 () Bool)

(assert (=> b!5374540 (= e!3334591 (not (isDefined!11909 lt!2188788)))))

(declare-fun b!5374541 () Bool)

(assert (=> b!5374541 (= e!3334588 e!3334589)))

(declare-fun c!936538 () Bool)

(assert (=> b!5374541 (= c!936538 ((_ is Nil!61460) s!2326))))

(declare-fun b!5374542 () Bool)

(declare-fun res!2281477 () Bool)

(assert (=> b!5374542 (=> (not res!2281477) (not e!3334590))))

(assert (=> b!5374542 (= res!2281477 (matchR!7280 (regTwo!30702 r!7292) (_2!35597 (get!21151 lt!2188788))))))

(declare-fun b!5374543 () Bool)

(declare-fun res!2281473 () Bool)

(assert (=> b!5374543 (=> (not res!2281473) (not e!3334590))))

(assert (=> b!5374543 (= res!2281473 (matchR!7280 (regOne!30702 r!7292) (_1!35597 (get!21151 lt!2188788))))))

(declare-fun b!5374544 () Bool)

(assert (=> b!5374544 (= e!3334588 (Some!15205 (tuple2!64589 Nil!61460 s!2326)))))

(declare-fun b!5374545 () Bool)

(assert (=> b!5374545 (= e!3334587 (matchR!7280 (regTwo!30702 r!7292) s!2326))))

(assert (= (and d!1720607 res!2281475) b!5374545))

(assert (= (and d!1720607 c!936537) b!5374544))

(assert (= (and d!1720607 (not c!936537)) b!5374541))

(assert (= (and b!5374541 c!936538) b!5374537))

(assert (= (and b!5374541 (not c!936538)) b!5374539))

(assert (= (and d!1720607 res!2281476) b!5374543))

(assert (= (and b!5374543 res!2281473) b!5374542))

(assert (= (and b!5374542 res!2281477) b!5374538))

(assert (= (and d!1720607 (not res!2281474)) b!5374540))

(declare-fun m!6401366 () Bool)

(assert (=> b!5374542 m!6401366))

(declare-fun m!6401368 () Bool)

(assert (=> b!5374542 m!6401368))

(declare-fun m!6401370 () Bool)

(assert (=> b!5374540 m!6401370))

(assert (=> b!5374538 m!6401366))

(declare-fun m!6401372 () Bool)

(assert (=> b!5374538 m!6401372))

(declare-fun m!6401374 () Bool)

(assert (=> b!5374539 m!6401374))

(assert (=> b!5374539 m!6401374))

(declare-fun m!6401376 () Bool)

(assert (=> b!5374539 m!6401376))

(declare-fun m!6401378 () Bool)

(assert (=> b!5374539 m!6401378))

(assert (=> b!5374539 m!6401374))

(declare-fun m!6401380 () Bool)

(assert (=> b!5374539 m!6401380))

(assert (=> d!1720607 m!6401370))

(declare-fun m!6401382 () Bool)

(assert (=> d!1720607 m!6401382))

(declare-fun m!6401384 () Bool)

(assert (=> d!1720607 m!6401384))

(assert (=> b!5374543 m!6401366))

(declare-fun m!6401386 () Bool)

(assert (=> b!5374543 m!6401386))

(declare-fun m!6401388 () Bool)

(assert (=> b!5374545 m!6401388))

(assert (=> b!5373643 d!1720607))

(declare-fun d!1720609 () Bool)

(assert (=> d!1720609 (= (Exists!2276 lambda!277516) (choose!40362 lambda!277516))))

(declare-fun bs!1244275 () Bool)

(assert (= bs!1244275 d!1720609))

(declare-fun m!6401390 () Bool)

(assert (=> bs!1244275 m!6401390))

(assert (=> b!5373643 d!1720609))

(declare-fun d!1720611 () Bool)

(assert (=> d!1720611 (= (Exists!2276 lambda!277517) (choose!40362 lambda!277517))))

(declare-fun bs!1244276 () Bool)

(assert (= bs!1244276 d!1720611))

(declare-fun m!6401392 () Bool)

(assert (=> bs!1244276 m!6401392))

(assert (=> b!5373643 d!1720611))

(declare-fun bs!1244277 () Bool)

(declare-fun d!1720613 () Bool)

(assert (= bs!1244277 (and d!1720613 b!5373849)))

(declare-fun lambda!277609 () Int)

(assert (=> bs!1244277 (not (= lambda!277609 lambda!277557))))

(declare-fun bs!1244278 () Bool)

(assert (= bs!1244278 (and d!1720613 b!5373652)))

(assert (=> bs!1244278 (not (= lambda!277609 lambda!277523))))

(declare-fun bs!1244279 () Bool)

(assert (= bs!1244279 (and d!1720613 b!5374207)))

(assert (=> bs!1244279 (not (= lambda!277609 lambda!277593))))

(declare-fun bs!1244280 () Bool)

(assert (= bs!1244280 (and d!1720613 d!1720445)))

(assert (=> bs!1244280 (not (= lambda!277609 lambda!277577))))

(declare-fun bs!1244281 () Bool)

(assert (= bs!1244281 (and d!1720613 d!1720469)))

(assert (=> bs!1244281 (not (= lambda!277609 lambda!277586))))

(declare-fun bs!1244282 () Bool)

(assert (= bs!1244282 (and d!1720613 d!1720479)))

(assert (=> bs!1244282 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277609 lambda!277591))))

(assert (=> bs!1244280 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277609 lambda!277576))))

(declare-fun bs!1244283 () Bool)

(assert (= bs!1244283 (and d!1720613 b!5374210)))

(assert (=> bs!1244283 (not (= lambda!277609 lambda!277592))))

(declare-fun bs!1244284 () Bool)

(assert (= bs!1244284 (and d!1720613 b!5373643)))

(assert (=> bs!1244284 (= lambda!277609 lambda!277516)))

(assert (=> bs!1244278 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277609 lambda!277521))))

(declare-fun bs!1244285 () Bool)

(assert (= bs!1244285 (and d!1720613 b!5373645)))

(assert (=> bs!1244285 (not (= lambda!277609 lambda!277520))))

(assert (=> bs!1244285 (= (= (regOne!30702 r!7292) lt!2188632) (= lambda!277609 lambda!277519))))

(assert (=> bs!1244278 (not (= lambda!277609 lambda!277522))))

(declare-fun bs!1244286 () Bool)

(assert (= bs!1244286 (and d!1720613 b!5374509)))

(assert (=> bs!1244286 (not (= lambda!277609 lambda!277608))))

(declare-fun bs!1244287 () Bool)

(assert (= bs!1244287 (and d!1720613 b!5373846)))

(assert (=> bs!1244287 (not (= lambda!277609 lambda!277559))))

(assert (=> bs!1244281 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) (Star!15095 (reg!15424 (regOne!30702 r!7292))))) (= lambda!277609 lambda!277585))))

(declare-fun bs!1244288 () Bool)

(assert (= bs!1244288 (and d!1720613 b!5374512)))

(assert (=> bs!1244288 (not (= lambda!277609 lambda!277607))))

(assert (=> bs!1244284 (not (= lambda!277609 lambda!277517))))

(assert (=> d!1720613 true))

(assert (=> d!1720613 true))

(assert (=> d!1720613 true))

(assert (=> d!1720613 (= (isDefined!11909 (findConcatSeparation!1620 (regOne!30702 r!7292) (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326)) (Exists!2276 lambda!277609))))

(declare-fun lt!2188791 () Unit!153898)

(assert (=> d!1720613 (= lt!2188791 (choose!40364 (regOne!30702 r!7292) (regTwo!30702 r!7292) s!2326))))

(assert (=> d!1720613 (validRegex!6831 (regOne!30702 r!7292))))

(assert (=> d!1720613 (= (lemmaFindConcatSeparationEquivalentToExists!1384 (regOne!30702 r!7292) (regTwo!30702 r!7292) s!2326) lt!2188791)))

(declare-fun bs!1244289 () Bool)

(assert (= bs!1244289 d!1720613))

(declare-fun m!6401394 () Bool)

(assert (=> bs!1244289 m!6401394))

(declare-fun m!6401396 () Bool)

(assert (=> bs!1244289 m!6401396))

(assert (=> bs!1244289 m!6400562))

(assert (=> bs!1244289 m!6400562))

(assert (=> bs!1244289 m!6400564))

(assert (=> bs!1244289 m!6401384))

(assert (=> b!5373643 d!1720613))

(declare-fun bs!1244290 () Bool)

(declare-fun d!1720615 () Bool)

(assert (= bs!1244290 (and d!1720615 b!5373849)))

(declare-fun lambda!277610 () Int)

(assert (=> bs!1244290 (not (= lambda!277610 lambda!277557))))

(declare-fun bs!1244291 () Bool)

(assert (= bs!1244291 (and d!1720615 b!5373652)))

(assert (=> bs!1244291 (not (= lambda!277610 lambda!277523))))

(declare-fun bs!1244292 () Bool)

(assert (= bs!1244292 (and d!1720615 b!5374207)))

(assert (=> bs!1244292 (not (= lambda!277610 lambda!277593))))

(declare-fun bs!1244293 () Bool)

(assert (= bs!1244293 (and d!1720615 d!1720445)))

(assert (=> bs!1244293 (not (= lambda!277610 lambda!277577))))

(declare-fun bs!1244294 () Bool)

(assert (= bs!1244294 (and d!1720615 d!1720469)))

(assert (=> bs!1244294 (not (= lambda!277610 lambda!277586))))

(declare-fun bs!1244295 () Bool)

(assert (= bs!1244295 (and d!1720615 d!1720479)))

(assert (=> bs!1244295 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277610 lambda!277591))))

(assert (=> bs!1244293 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277610 lambda!277576))))

(declare-fun bs!1244296 () Bool)

(assert (= bs!1244296 (and d!1720615 b!5374210)))

(assert (=> bs!1244296 (not (= lambda!277610 lambda!277592))))

(declare-fun bs!1244297 () Bool)

(assert (= bs!1244297 (and d!1720615 b!5373643)))

(assert (=> bs!1244297 (= lambda!277610 lambda!277516)))

(declare-fun bs!1244298 () Bool)

(assert (= bs!1244298 (and d!1720615 d!1720613)))

(assert (=> bs!1244298 (= lambda!277610 lambda!277609)))

(assert (=> bs!1244291 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277610 lambda!277521))))

(declare-fun bs!1244299 () Bool)

(assert (= bs!1244299 (and d!1720615 b!5373645)))

(assert (=> bs!1244299 (not (= lambda!277610 lambda!277520))))

(assert (=> bs!1244299 (= (= (regOne!30702 r!7292) lt!2188632) (= lambda!277610 lambda!277519))))

(assert (=> bs!1244291 (not (= lambda!277610 lambda!277522))))

(declare-fun bs!1244300 () Bool)

(assert (= bs!1244300 (and d!1720615 b!5374509)))

(assert (=> bs!1244300 (not (= lambda!277610 lambda!277608))))

(declare-fun bs!1244301 () Bool)

(assert (= bs!1244301 (and d!1720615 b!5373846)))

(assert (=> bs!1244301 (not (= lambda!277610 lambda!277559))))

(assert (=> bs!1244294 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) (Star!15095 (reg!15424 (regOne!30702 r!7292))))) (= lambda!277610 lambda!277585))))

(declare-fun bs!1244302 () Bool)

(assert (= bs!1244302 (and d!1720615 b!5374512)))

(assert (=> bs!1244302 (not (= lambda!277610 lambda!277607))))

(assert (=> bs!1244297 (not (= lambda!277610 lambda!277517))))

(assert (=> d!1720615 true))

(assert (=> d!1720615 true))

(assert (=> d!1720615 true))

(declare-fun lambda!277611 () Int)

(assert (=> bs!1244290 (not (= lambda!277611 lambda!277557))))

(assert (=> bs!1244291 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277611 lambda!277523))))

(assert (=> bs!1244292 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (regOne!30702 lt!2188632)) (= (regTwo!30702 r!7292) (regTwo!30702 lt!2188632))) (= lambda!277611 lambda!277593))))

(assert (=> bs!1244293 (= (and (= s!2326 (_1!35597 lt!2188650)) (= (regOne!30702 r!7292) (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277611 lambda!277577))))

(assert (=> bs!1244294 (not (= lambda!277611 lambda!277586))))

(assert (=> bs!1244295 (not (= lambda!277611 lambda!277591))))

(assert (=> bs!1244293 (not (= lambda!277611 lambda!277576))))

(assert (=> bs!1244296 (not (= lambda!277611 lambda!277592))))

(assert (=> bs!1244297 (not (= lambda!277611 lambda!277516))))

(assert (=> bs!1244298 (not (= lambda!277611 lambda!277609))))

(assert (=> bs!1244291 (not (= lambda!277611 lambda!277521))))

(declare-fun bs!1244303 () Bool)

(assert (= bs!1244303 d!1720615))

(assert (=> bs!1244303 (not (= lambda!277611 lambda!277610))))

(assert (=> bs!1244299 (= (= (regOne!30702 r!7292) lt!2188632) (= lambda!277611 lambda!277520))))

(assert (=> bs!1244299 (not (= lambda!277611 lambda!277519))))

(assert (=> bs!1244291 (not (= lambda!277611 lambda!277522))))

(assert (=> bs!1244300 (= (and (= (regOne!30702 r!7292) (regOne!30702 lt!2188633)) (= (regTwo!30702 r!7292) (regTwo!30702 lt!2188633))) (= lambda!277611 lambda!277608))))

(assert (=> bs!1244301 (= lambda!277611 lambda!277559)))

(assert (=> bs!1244294 (not (= lambda!277611 lambda!277585))))

(assert (=> bs!1244302 (not (= lambda!277611 lambda!277607))))

(assert (=> bs!1244297 (= lambda!277611 lambda!277517)))

(assert (=> d!1720615 true))

(assert (=> d!1720615 true))

(assert (=> d!1720615 true))

(assert (=> d!1720615 (= (Exists!2276 lambda!277610) (Exists!2276 lambda!277611))))

(declare-fun lt!2188792 () Unit!153898)

(assert (=> d!1720615 (= lt!2188792 (choose!40361 (regOne!30702 r!7292) (regTwo!30702 r!7292) s!2326))))

(assert (=> d!1720615 (validRegex!6831 (regOne!30702 r!7292))))

(assert (=> d!1720615 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!930 (regOne!30702 r!7292) (regTwo!30702 r!7292) s!2326) lt!2188792)))

(declare-fun m!6401398 () Bool)

(assert (=> bs!1244303 m!6401398))

(declare-fun m!6401400 () Bool)

(assert (=> bs!1244303 m!6401400))

(declare-fun m!6401402 () Bool)

(assert (=> bs!1244303 m!6401402))

(assert (=> bs!1244303 m!6401384))

(assert (=> b!5373643 d!1720615))

(declare-fun d!1720617 () Bool)

(assert (=> d!1720617 (= (isDefined!11909 (findConcatSeparation!1620 (regOne!30702 r!7292) (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326)) (not (isEmpty!33446 (findConcatSeparation!1620 (regOne!30702 r!7292) (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326))))))

(declare-fun bs!1244304 () Bool)

(assert (= bs!1244304 d!1720617))

(assert (=> bs!1244304 m!6400562))

(declare-fun m!6401404 () Bool)

(assert (=> bs!1244304 m!6401404))

(assert (=> b!5373643 d!1720617))

(declare-fun d!1720619 () Bool)

(assert (=> d!1720619 (= (isEmpty!33442 (t!374808 (exprs!4979 (h!67910 zl!343)))) ((_ is Nil!61461) (t!374808 (exprs!4979 (h!67910 zl!343)))))))

(assert (=> b!5373644 d!1720619))

(declare-fun d!1720621 () Bool)

(assert (=> d!1720621 (= (flatMap!822 lt!2188631 lambda!277518) (choose!40367 lt!2188631 lambda!277518))))

(declare-fun bs!1244305 () Bool)

(assert (= bs!1244305 d!1720621))

(declare-fun m!6401406 () Bool)

(assert (=> bs!1244305 m!6401406))

(assert (=> b!5373663 d!1720621))

(declare-fun call!384814 () (InoxSet Context!8958))

(declare-fun e!3334593 () (InoxSet Context!8958))

(declare-fun b!5374546 () Bool)

(assert (=> b!5374546 (= e!3334593 ((_ map or) call!384814 (derivationStepZipperUp!467 (Context!8959 (t!374808 (exprs!4979 lt!2188634))) (h!67908 s!2326))))))

(declare-fun b!5374547 () Bool)

(declare-fun e!3334592 () Bool)

(assert (=> b!5374547 (= e!3334592 (nullable!5264 (h!67909 (exprs!4979 lt!2188634))))))

(declare-fun b!5374549 () Bool)

(declare-fun e!3334594 () (InoxSet Context!8958))

(assert (=> b!5374549 (= e!3334594 ((as const (Array Context!8958 Bool)) false))))

(declare-fun bm!384809 () Bool)

(assert (=> bm!384809 (= call!384814 (derivationStepZipperDown!543 (h!67909 (exprs!4979 lt!2188634)) (Context!8959 (t!374808 (exprs!4979 lt!2188634))) (h!67908 s!2326)))))

(declare-fun b!5374550 () Bool)

(assert (=> b!5374550 (= e!3334593 e!3334594)))

(declare-fun c!936540 () Bool)

(assert (=> b!5374550 (= c!936540 ((_ is Cons!61461) (exprs!4979 lt!2188634)))))

(declare-fun d!1720623 () Bool)

(declare-fun c!936539 () Bool)

(assert (=> d!1720623 (= c!936539 e!3334592)))

(declare-fun res!2281478 () Bool)

(assert (=> d!1720623 (=> (not res!2281478) (not e!3334592))))

(assert (=> d!1720623 (= res!2281478 ((_ is Cons!61461) (exprs!4979 lt!2188634)))))

(assert (=> d!1720623 (= (derivationStepZipperUp!467 lt!2188634 (h!67908 s!2326)) e!3334593)))

(declare-fun b!5374548 () Bool)

(assert (=> b!5374548 (= e!3334594 call!384814)))

(assert (= (and d!1720623 res!2281478) b!5374547))

(assert (= (and d!1720623 c!936539) b!5374546))

(assert (= (and d!1720623 (not c!936539)) b!5374550))

(assert (= (and b!5374550 c!936540) b!5374548))

(assert (= (and b!5374550 (not c!936540)) b!5374549))

(assert (= (or b!5374546 b!5374548) bm!384809))

(declare-fun m!6401408 () Bool)

(assert (=> b!5374546 m!6401408))

(declare-fun m!6401410 () Bool)

(assert (=> b!5374547 m!6401410))

(declare-fun m!6401412 () Bool)

(assert (=> bm!384809 m!6401412))

(assert (=> b!5373663 d!1720623))

(declare-fun d!1720625 () Bool)

(assert (=> d!1720625 (= (flatMap!822 lt!2188631 lambda!277518) (dynLambda!24265 lambda!277518 lt!2188634))))

(declare-fun lt!2188793 () Unit!153898)

(assert (=> d!1720625 (= lt!2188793 (choose!40366 lt!2188631 lt!2188634 lambda!277518))))

(assert (=> d!1720625 (= lt!2188631 (store ((as const (Array Context!8958 Bool)) false) lt!2188634 true))))

(assert (=> d!1720625 (= (lemmaFlatMapOnSingletonSet!354 lt!2188631 lt!2188634 lambda!277518) lt!2188793)))

(declare-fun b_lambda!205955 () Bool)

(assert (=> (not b_lambda!205955) (not d!1720625)))

(declare-fun bs!1244306 () Bool)

(assert (= bs!1244306 d!1720625))

(assert (=> bs!1244306 m!6400532))

(declare-fun m!6401414 () Bool)

(assert (=> bs!1244306 m!6401414))

(declare-fun m!6401416 () Bool)

(assert (=> bs!1244306 m!6401416))

(assert (=> bs!1244306 m!6400536))

(assert (=> b!5373663 d!1720625))

(declare-fun bs!1244307 () Bool)

(declare-fun d!1720627 () Bool)

(assert (= bs!1244307 (and d!1720627 b!5373638)))

(declare-fun lambda!277614 () Int)

(assert (=> bs!1244307 (= lambda!277614 lambda!277518)))

(assert (=> d!1720627 true))

(assert (=> d!1720627 (= (derivationStepZipper!1334 lt!2188631 (h!67908 s!2326)) (flatMap!822 lt!2188631 lambda!277614))))

(declare-fun bs!1244308 () Bool)

(assert (= bs!1244308 d!1720627))

(declare-fun m!6401418 () Bool)

(assert (=> bs!1244308 m!6401418))

(assert (=> b!5373663 d!1720627))

(declare-fun b!5374553 () Bool)

(declare-fun e!3334596 () Bool)

(assert (=> b!5374553 (= e!3334596 (not (= (head!11526 (_1!35597 lt!2188650)) (c!936295 lt!2188632))))))

(declare-fun bm!384810 () Bool)

(declare-fun call!384815 () Bool)

(assert (=> bm!384810 (= call!384815 (isEmpty!33444 (_1!35597 lt!2188650)))))

(declare-fun d!1720629 () Bool)

(declare-fun e!3334597 () Bool)

(assert (=> d!1720629 e!3334597))

(declare-fun c!936543 () Bool)

(assert (=> d!1720629 (= c!936543 ((_ is EmptyExpr!15095) lt!2188632))))

(declare-fun lt!2188794 () Bool)

(declare-fun e!3334595 () Bool)

(assert (=> d!1720629 (= lt!2188794 e!3334595)))

(declare-fun c!936544 () Bool)

(assert (=> d!1720629 (= c!936544 (isEmpty!33444 (_1!35597 lt!2188650)))))

(assert (=> d!1720629 (validRegex!6831 lt!2188632)))

(assert (=> d!1720629 (= (matchR!7280 lt!2188632 (_1!35597 lt!2188650)) lt!2188794)))

(declare-fun b!5374554 () Bool)

(declare-fun res!2281481 () Bool)

(declare-fun e!3334599 () Bool)

(assert (=> b!5374554 (=> res!2281481 e!3334599)))

(declare-fun e!3334600 () Bool)

(assert (=> b!5374554 (= res!2281481 e!3334600)))

(declare-fun res!2281482 () Bool)

(assert (=> b!5374554 (=> (not res!2281482) (not e!3334600))))

(assert (=> b!5374554 (= res!2281482 lt!2188794)))

(declare-fun b!5374555 () Bool)

(assert (=> b!5374555 (= e!3334600 (= (head!11526 (_1!35597 lt!2188650)) (c!936295 lt!2188632)))))

(declare-fun b!5374556 () Bool)

(assert (=> b!5374556 (= e!3334595 (nullable!5264 lt!2188632))))

(declare-fun b!5374557 () Bool)

(assert (=> b!5374557 (= e!3334595 (matchR!7280 (derivativeStep!4225 lt!2188632 (head!11526 (_1!35597 lt!2188650))) (tail!10623 (_1!35597 lt!2188650))))))

(declare-fun b!5374558 () Bool)

(declare-fun e!3334598 () Bool)

(assert (=> b!5374558 (= e!3334598 (not lt!2188794))))

(declare-fun b!5374559 () Bool)

(declare-fun e!3334601 () Bool)

(assert (=> b!5374559 (= e!3334599 e!3334601)))

(declare-fun res!2281479 () Bool)

(assert (=> b!5374559 (=> (not res!2281479) (not e!3334601))))

(assert (=> b!5374559 (= res!2281479 (not lt!2188794))))

(declare-fun b!5374560 () Bool)

(declare-fun res!2281480 () Bool)

(assert (=> b!5374560 (=> res!2281480 e!3334599)))

(assert (=> b!5374560 (= res!2281480 (not ((_ is ElementMatch!15095) lt!2188632)))))

(assert (=> b!5374560 (= e!3334598 e!3334599)))

(declare-fun b!5374561 () Bool)

(assert (=> b!5374561 (= e!3334597 (= lt!2188794 call!384815))))

(declare-fun b!5374562 () Bool)

(assert (=> b!5374562 (= e!3334597 e!3334598)))

(declare-fun c!936545 () Bool)

(assert (=> b!5374562 (= c!936545 ((_ is EmptyLang!15095) lt!2188632))))

(declare-fun b!5374563 () Bool)

(assert (=> b!5374563 (= e!3334601 e!3334596)))

(declare-fun res!2281484 () Bool)

(assert (=> b!5374563 (=> res!2281484 e!3334596)))

(assert (=> b!5374563 (= res!2281484 call!384815)))

(declare-fun b!5374564 () Bool)

(declare-fun res!2281485 () Bool)

(assert (=> b!5374564 (=> res!2281485 e!3334596)))

(assert (=> b!5374564 (= res!2281485 (not (isEmpty!33444 (tail!10623 (_1!35597 lt!2188650)))))))

(declare-fun b!5374565 () Bool)

(declare-fun res!2281486 () Bool)

(assert (=> b!5374565 (=> (not res!2281486) (not e!3334600))))

(assert (=> b!5374565 (= res!2281486 (isEmpty!33444 (tail!10623 (_1!35597 lt!2188650))))))

(declare-fun b!5374566 () Bool)

(declare-fun res!2281483 () Bool)

(assert (=> b!5374566 (=> (not res!2281483) (not e!3334600))))

(assert (=> b!5374566 (= res!2281483 (not call!384815))))

(assert (= (and d!1720629 c!936544) b!5374556))

(assert (= (and d!1720629 (not c!936544)) b!5374557))

(assert (= (and d!1720629 c!936543) b!5374561))

(assert (= (and d!1720629 (not c!936543)) b!5374562))

(assert (= (and b!5374562 c!936545) b!5374558))

(assert (= (and b!5374562 (not c!936545)) b!5374560))

(assert (= (and b!5374560 (not res!2281480)) b!5374554))

(assert (= (and b!5374554 res!2281482) b!5374566))

(assert (= (and b!5374566 res!2281483) b!5374565))

(assert (= (and b!5374565 res!2281486) b!5374555))

(assert (= (and b!5374554 (not res!2281481)) b!5374559))

(assert (= (and b!5374559 res!2281479) b!5374563))

(assert (= (and b!5374563 (not res!2281484)) b!5374564))

(assert (= (and b!5374564 (not res!2281485)) b!5374553))

(assert (= (or b!5374561 b!5374563 b!5374566) bm!384810))

(assert (=> bm!384810 m!6400674))

(declare-fun m!6401420 () Bool)

(assert (=> b!5374556 m!6401420))

(declare-fun m!6401422 () Bool)

(assert (=> b!5374555 m!6401422))

(declare-fun m!6401424 () Bool)

(assert (=> b!5374565 m!6401424))

(assert (=> b!5374565 m!6401424))

(declare-fun m!6401426 () Bool)

(assert (=> b!5374565 m!6401426))

(assert (=> b!5374557 m!6401422))

(assert (=> b!5374557 m!6401422))

(declare-fun m!6401428 () Bool)

(assert (=> b!5374557 m!6401428))

(assert (=> b!5374557 m!6401424))

(assert (=> b!5374557 m!6401428))

(assert (=> b!5374557 m!6401424))

(declare-fun m!6401430 () Bool)

(assert (=> b!5374557 m!6401430))

(assert (=> b!5374553 m!6401422))

(assert (=> d!1720629 m!6400674))

(assert (=> d!1720629 m!6400982))

(assert (=> b!5374564 m!6401424))

(assert (=> b!5374564 m!6401424))

(assert (=> b!5374564 m!6401426))

(assert (=> b!5373664 d!1720629))

(declare-fun d!1720631 () Bool)

(assert (=> d!1720631 (= (get!21151 lt!2188658) (v!51234 lt!2188658))))

(assert (=> b!5373645 d!1720631))

(declare-fun b!5374575 () Bool)

(declare-fun e!3334606 () List!61584)

(assert (=> b!5374575 (= e!3334606 (_2!35597 lt!2188650))))

(declare-fun b!5374578 () Bool)

(declare-fun e!3334607 () Bool)

(declare-fun lt!2188797 () List!61584)

(assert (=> b!5374578 (= e!3334607 (or (not (= (_2!35597 lt!2188650) Nil!61460)) (= lt!2188797 (_1!35597 lt!2188650))))))

(declare-fun b!5374577 () Bool)

(declare-fun res!2281492 () Bool)

(assert (=> b!5374577 (=> (not res!2281492) (not e!3334607))))

(declare-fun size!39795 (List!61584) Int)

(assert (=> b!5374577 (= res!2281492 (= (size!39795 lt!2188797) (+ (size!39795 (_1!35597 lt!2188650)) (size!39795 (_2!35597 lt!2188650)))))))

(declare-fun d!1720633 () Bool)

(assert (=> d!1720633 e!3334607))

(declare-fun res!2281491 () Bool)

(assert (=> d!1720633 (=> (not res!2281491) (not e!3334607))))

(declare-fun content!10984 (List!61584) (InoxSet C!30460))

(assert (=> d!1720633 (= res!2281491 (= (content!10984 lt!2188797) ((_ map or) (content!10984 (_1!35597 lt!2188650)) (content!10984 (_2!35597 lt!2188650)))))))

(assert (=> d!1720633 (= lt!2188797 e!3334606)))

(declare-fun c!936548 () Bool)

(assert (=> d!1720633 (= c!936548 ((_ is Nil!61460) (_1!35597 lt!2188650)))))

(assert (=> d!1720633 (= (++!13398 (_1!35597 lt!2188650) (_2!35597 lt!2188650)) lt!2188797)))

(declare-fun b!5374576 () Bool)

(assert (=> b!5374576 (= e!3334606 (Cons!61460 (h!67908 (_1!35597 lt!2188650)) (++!13398 (t!374807 (_1!35597 lt!2188650)) (_2!35597 lt!2188650))))))

(assert (= (and d!1720633 c!936548) b!5374575))

(assert (= (and d!1720633 (not c!936548)) b!5374576))

(assert (= (and d!1720633 res!2281491) b!5374577))

(assert (= (and b!5374577 res!2281492) b!5374578))

(declare-fun m!6401432 () Bool)

(assert (=> b!5374577 m!6401432))

(declare-fun m!6401434 () Bool)

(assert (=> b!5374577 m!6401434))

(declare-fun m!6401436 () Bool)

(assert (=> b!5374577 m!6401436))

(declare-fun m!6401438 () Bool)

(assert (=> d!1720633 m!6401438))

(declare-fun m!6401440 () Bool)

(assert (=> d!1720633 m!6401440))

(declare-fun m!6401442 () Bool)

(assert (=> d!1720633 m!6401442))

(declare-fun m!6401444 () Bool)

(assert (=> b!5374576 m!6401444))

(assert (=> b!5373645 d!1720633))

(declare-fun d!1720635 () Bool)

(assert (=> d!1720635 (= (Exists!2276 lambda!277519) (choose!40362 lambda!277519))))

(declare-fun bs!1244309 () Bool)

(assert (= bs!1244309 d!1720635))

(declare-fun m!6401446 () Bool)

(assert (=> bs!1244309 m!6401446))

(assert (=> b!5373645 d!1720635))

(declare-fun b!5374579 () Bool)

(declare-fun e!3334610 () Option!15206)

(assert (=> b!5374579 (= e!3334610 None!15205)))

(declare-fun b!5374580 () Bool)

(declare-fun e!3334611 () Bool)

(declare-fun lt!2188798 () Option!15206)

(assert (=> b!5374580 (= e!3334611 (= (++!13398 (_1!35597 (get!21151 lt!2188798)) (_2!35597 (get!21151 lt!2188798))) s!2326))))

(declare-fun d!1720637 () Bool)

(declare-fun e!3334612 () Bool)

(assert (=> d!1720637 e!3334612))

(declare-fun res!2281494 () Bool)

(assert (=> d!1720637 (=> res!2281494 e!3334612)))

(assert (=> d!1720637 (= res!2281494 e!3334611)))

(declare-fun res!2281496 () Bool)

(assert (=> d!1720637 (=> (not res!2281496) (not e!3334611))))

(assert (=> d!1720637 (= res!2281496 (isDefined!11909 lt!2188798))))

(declare-fun e!3334609 () Option!15206)

(assert (=> d!1720637 (= lt!2188798 e!3334609)))

(declare-fun c!936549 () Bool)

(declare-fun e!3334608 () Bool)

(assert (=> d!1720637 (= c!936549 e!3334608)))

(declare-fun res!2281495 () Bool)

(assert (=> d!1720637 (=> (not res!2281495) (not e!3334608))))

(assert (=> d!1720637 (= res!2281495 (matchR!7280 lt!2188632 Nil!61460))))

(assert (=> d!1720637 (validRegex!6831 lt!2188632)))

(assert (=> d!1720637 (= (findConcatSeparation!1620 lt!2188632 (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326) lt!2188798)))

(declare-fun b!5374581 () Bool)

(declare-fun lt!2188799 () Unit!153898)

(declare-fun lt!2188800 () Unit!153898)

(assert (=> b!5374581 (= lt!2188799 lt!2188800)))

(assert (=> b!5374581 (= (++!13398 (++!13398 Nil!61460 (Cons!61460 (h!67908 s!2326) Nil!61460)) (t!374807 s!2326)) s!2326)))

(assert (=> b!5374581 (= lt!2188800 (lemmaMoveElementToOtherListKeepsConcatEq!1799 Nil!61460 (h!67908 s!2326) (t!374807 s!2326) s!2326))))

(assert (=> b!5374581 (= e!3334610 (findConcatSeparation!1620 lt!2188632 (regTwo!30702 r!7292) (++!13398 Nil!61460 (Cons!61460 (h!67908 s!2326) Nil!61460)) (t!374807 s!2326) s!2326))))

(declare-fun b!5374582 () Bool)

(assert (=> b!5374582 (= e!3334612 (not (isDefined!11909 lt!2188798)))))

(declare-fun b!5374583 () Bool)

(assert (=> b!5374583 (= e!3334609 e!3334610)))

(declare-fun c!936550 () Bool)

(assert (=> b!5374583 (= c!936550 ((_ is Nil!61460) s!2326))))

(declare-fun b!5374584 () Bool)

(declare-fun res!2281497 () Bool)

(assert (=> b!5374584 (=> (not res!2281497) (not e!3334611))))

(assert (=> b!5374584 (= res!2281497 (matchR!7280 (regTwo!30702 r!7292) (_2!35597 (get!21151 lt!2188798))))))

(declare-fun b!5374585 () Bool)

(declare-fun res!2281493 () Bool)

(assert (=> b!5374585 (=> (not res!2281493) (not e!3334611))))

(assert (=> b!5374585 (= res!2281493 (matchR!7280 lt!2188632 (_1!35597 (get!21151 lt!2188798))))))

(declare-fun b!5374586 () Bool)

(assert (=> b!5374586 (= e!3334609 (Some!15205 (tuple2!64589 Nil!61460 s!2326)))))

(declare-fun b!5374587 () Bool)

(assert (=> b!5374587 (= e!3334608 (matchR!7280 (regTwo!30702 r!7292) s!2326))))

(assert (= (and d!1720637 res!2281495) b!5374587))

(assert (= (and d!1720637 c!936549) b!5374586))

(assert (= (and d!1720637 (not c!936549)) b!5374583))

(assert (= (and b!5374583 c!936550) b!5374579))

(assert (= (and b!5374583 (not c!936550)) b!5374581))

(assert (= (and d!1720637 res!2281496) b!5374585))

(assert (= (and b!5374585 res!2281493) b!5374584))

(assert (= (and b!5374584 res!2281497) b!5374580))

(assert (= (and d!1720637 (not res!2281494)) b!5374582))

(declare-fun m!6401448 () Bool)

(assert (=> b!5374584 m!6401448))

(declare-fun m!6401450 () Bool)

(assert (=> b!5374584 m!6401450))

(declare-fun m!6401452 () Bool)

(assert (=> b!5374582 m!6401452))

(assert (=> b!5374580 m!6401448))

(declare-fun m!6401454 () Bool)

(assert (=> b!5374580 m!6401454))

(assert (=> b!5374581 m!6401374))

(assert (=> b!5374581 m!6401374))

(assert (=> b!5374581 m!6401376))

(assert (=> b!5374581 m!6401378))

(assert (=> b!5374581 m!6401374))

(declare-fun m!6401456 () Bool)

(assert (=> b!5374581 m!6401456))

(assert (=> d!1720637 m!6401452))

(declare-fun m!6401458 () Bool)

(assert (=> d!1720637 m!6401458))

(assert (=> d!1720637 m!6400982))

(assert (=> b!5374585 m!6401448))

(declare-fun m!6401460 () Bool)

(assert (=> b!5374585 m!6401460))

(assert (=> b!5374587 m!6401388))

(assert (=> b!5373645 d!1720637))

(declare-fun d!1720639 () Bool)

(assert (=> d!1720639 (= (Exists!2276 lambda!277520) (choose!40362 lambda!277520))))

(declare-fun bs!1244310 () Bool)

(assert (= bs!1244310 d!1720639))

(declare-fun m!6401462 () Bool)

(assert (=> bs!1244310 m!6401462))

(assert (=> b!5373645 d!1720639))

(declare-fun d!1720641 () Bool)

(assert (=> d!1720641 (= (isDefined!11909 lt!2188658) (not (isEmpty!33446 lt!2188658)))))

(declare-fun bs!1244311 () Bool)

(assert (= bs!1244311 d!1720641))

(declare-fun m!6401464 () Bool)

(assert (=> bs!1244311 m!6401464))

(assert (=> b!5373645 d!1720641))

(declare-fun bs!1244312 () Bool)

(declare-fun d!1720643 () Bool)

(assert (= bs!1244312 (and d!1720643 d!1720615)))

(declare-fun lambda!277615 () Int)

(assert (=> bs!1244312 (not (= lambda!277615 lambda!277611))))

(declare-fun bs!1244313 () Bool)

(assert (= bs!1244313 (and d!1720643 b!5373849)))

(assert (=> bs!1244313 (not (= lambda!277615 lambda!277557))))

(declare-fun bs!1244314 () Bool)

(assert (= bs!1244314 (and d!1720643 b!5373652)))

(assert (=> bs!1244314 (not (= lambda!277615 lambda!277523))))

(declare-fun bs!1244315 () Bool)

(assert (= bs!1244315 (and d!1720643 b!5374207)))

(assert (=> bs!1244315 (not (= lambda!277615 lambda!277593))))

(declare-fun bs!1244316 () Bool)

(assert (= bs!1244316 (and d!1720643 d!1720445)))

(assert (=> bs!1244316 (not (= lambda!277615 lambda!277577))))

(declare-fun bs!1244317 () Bool)

(assert (= bs!1244317 (and d!1720643 d!1720469)))

(assert (=> bs!1244317 (not (= lambda!277615 lambda!277586))))

(declare-fun bs!1244318 () Bool)

(assert (= bs!1244318 (and d!1720643 d!1720479)))

(assert (=> bs!1244318 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277615 lambda!277591))))

(assert (=> bs!1244316 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277615 lambda!277576))))

(declare-fun bs!1244319 () Bool)

(assert (= bs!1244319 (and d!1720643 b!5374210)))

(assert (=> bs!1244319 (not (= lambda!277615 lambda!277592))))

(declare-fun bs!1244320 () Bool)

(assert (= bs!1244320 (and d!1720643 b!5373643)))

(assert (=> bs!1244320 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277615 lambda!277516))))

(declare-fun bs!1244321 () Bool)

(assert (= bs!1244321 (and d!1720643 d!1720613)))

(assert (=> bs!1244321 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277615 lambda!277609))))

(assert (=> bs!1244314 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277615 lambda!277521))))

(assert (=> bs!1244312 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277615 lambda!277610))))

(declare-fun bs!1244322 () Bool)

(assert (= bs!1244322 (and d!1720643 b!5373645)))

(assert (=> bs!1244322 (not (= lambda!277615 lambda!277520))))

(assert (=> bs!1244322 (= lambda!277615 lambda!277519)))

(assert (=> bs!1244314 (not (= lambda!277615 lambda!277522))))

(declare-fun bs!1244323 () Bool)

(assert (= bs!1244323 (and d!1720643 b!5374509)))

(assert (=> bs!1244323 (not (= lambda!277615 lambda!277608))))

(declare-fun bs!1244324 () Bool)

(assert (= bs!1244324 (and d!1720643 b!5373846)))

(assert (=> bs!1244324 (not (= lambda!277615 lambda!277559))))

(assert (=> bs!1244317 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) (Star!15095 (reg!15424 (regOne!30702 r!7292))))) (= lambda!277615 lambda!277585))))

(declare-fun bs!1244325 () Bool)

(assert (= bs!1244325 (and d!1720643 b!5374512)))

(assert (=> bs!1244325 (not (= lambda!277615 lambda!277607))))

(assert (=> bs!1244320 (not (= lambda!277615 lambda!277517))))

(assert (=> d!1720643 true))

(assert (=> d!1720643 true))

(assert (=> d!1720643 true))

(assert (=> d!1720643 (= (isDefined!11909 (findConcatSeparation!1620 lt!2188632 (regTwo!30702 r!7292) Nil!61460 s!2326 s!2326)) (Exists!2276 lambda!277615))))

(declare-fun lt!2188801 () Unit!153898)

(assert (=> d!1720643 (= lt!2188801 (choose!40364 lt!2188632 (regTwo!30702 r!7292) s!2326))))

(assert (=> d!1720643 (validRegex!6831 lt!2188632)))

(assert (=> d!1720643 (= (lemmaFindConcatSeparationEquivalentToExists!1384 lt!2188632 (regTwo!30702 r!7292) s!2326) lt!2188801)))

(declare-fun bs!1244326 () Bool)

(assert (= bs!1244326 d!1720643))

(declare-fun m!6401466 () Bool)

(assert (=> bs!1244326 m!6401466))

(declare-fun m!6401468 () Bool)

(assert (=> bs!1244326 m!6401468))

(assert (=> bs!1244326 m!6400622))

(assert (=> bs!1244326 m!6400622))

(declare-fun m!6401470 () Bool)

(assert (=> bs!1244326 m!6401470))

(assert (=> bs!1244326 m!6400982))

(assert (=> b!5373645 d!1720643))

(declare-fun bs!1244327 () Bool)

(declare-fun d!1720645 () Bool)

(assert (= bs!1244327 (and d!1720645 d!1720615)))

(declare-fun lambda!277616 () Int)

(assert (=> bs!1244327 (not (= lambda!277616 lambda!277611))))

(declare-fun bs!1244328 () Bool)

(assert (= bs!1244328 (and d!1720645 b!5373849)))

(assert (=> bs!1244328 (not (= lambda!277616 lambda!277557))))

(declare-fun bs!1244329 () Bool)

(assert (= bs!1244329 (and d!1720645 b!5373652)))

(assert (=> bs!1244329 (not (= lambda!277616 lambda!277523))))

(declare-fun bs!1244330 () Bool)

(assert (= bs!1244330 (and d!1720645 b!5374207)))

(assert (=> bs!1244330 (not (= lambda!277616 lambda!277593))))

(declare-fun bs!1244331 () Bool)

(assert (= bs!1244331 (and d!1720645 d!1720445)))

(assert (=> bs!1244331 (not (= lambda!277616 lambda!277577))))

(declare-fun bs!1244332 () Bool)

(assert (= bs!1244332 (and d!1720645 d!1720469)))

(assert (=> bs!1244332 (not (= lambda!277616 lambda!277586))))

(declare-fun bs!1244333 () Bool)

(assert (= bs!1244333 (and d!1720645 d!1720479)))

(assert (=> bs!1244333 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277616 lambda!277591))))

(assert (=> bs!1244331 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277616 lambda!277576))))

(declare-fun bs!1244334 () Bool)

(assert (= bs!1244334 (and d!1720645 b!5374210)))

(assert (=> bs!1244334 (not (= lambda!277616 lambda!277592))))

(declare-fun bs!1244335 () Bool)

(assert (= bs!1244335 (and d!1720645 b!5373643)))

(assert (=> bs!1244335 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277616 lambda!277516))))

(assert (=> bs!1244329 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277616 lambda!277521))))

(assert (=> bs!1244327 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277616 lambda!277610))))

(declare-fun bs!1244336 () Bool)

(assert (= bs!1244336 (and d!1720645 b!5373645)))

(assert (=> bs!1244336 (not (= lambda!277616 lambda!277520))))

(assert (=> bs!1244336 (= lambda!277616 lambda!277519)))

(assert (=> bs!1244329 (not (= lambda!277616 lambda!277522))))

(declare-fun bs!1244337 () Bool)

(assert (= bs!1244337 (and d!1720645 b!5374509)))

(assert (=> bs!1244337 (not (= lambda!277616 lambda!277608))))

(declare-fun bs!1244338 () Bool)

(assert (= bs!1244338 (and d!1720645 b!5373846)))

(assert (=> bs!1244338 (not (= lambda!277616 lambda!277559))))

(assert (=> bs!1244332 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) (Star!15095 (reg!15424 (regOne!30702 r!7292))))) (= lambda!277616 lambda!277585))))

(declare-fun bs!1244339 () Bool)

(assert (= bs!1244339 (and d!1720645 b!5374512)))

(assert (=> bs!1244339 (not (= lambda!277616 lambda!277607))))

(assert (=> bs!1244335 (not (= lambda!277616 lambda!277517))))

(declare-fun bs!1244340 () Bool)

(assert (= bs!1244340 (and d!1720645 d!1720613)))

(assert (=> bs!1244340 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277616 lambda!277609))))

(declare-fun bs!1244341 () Bool)

(assert (= bs!1244341 (and d!1720645 d!1720643)))

(assert (=> bs!1244341 (= lambda!277616 lambda!277615)))

(assert (=> d!1720645 true))

(assert (=> d!1720645 true))

(assert (=> d!1720645 true))

(declare-fun bs!1244342 () Bool)

(assert (= bs!1244342 d!1720645))

(declare-fun lambda!277617 () Int)

(assert (=> bs!1244342 (not (= lambda!277617 lambda!277616))))

(assert (=> bs!1244327 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277617 lambda!277611))))

(assert (=> bs!1244328 (not (= lambda!277617 lambda!277557))))

(assert (=> bs!1244329 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277617 lambda!277523))))

(assert (=> bs!1244330 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (regOne!30702 lt!2188632)) (= (regTwo!30702 r!7292) (regTwo!30702 lt!2188632))) (= lambda!277617 lambda!277593))))

(assert (=> bs!1244331 (= (and (= s!2326 (_1!35597 lt!2188650)) (= lt!2188632 (reg!15424 (regOne!30702 r!7292))) (= (regTwo!30702 r!7292) lt!2188632)) (= lambda!277617 lambda!277577))))

(assert (=> bs!1244332 (not (= lambda!277617 lambda!277586))))

(assert (=> bs!1244333 (not (= lambda!277617 lambda!277591))))

(assert (=> bs!1244331 (not (= lambda!277617 lambda!277576))))

(assert (=> bs!1244334 (not (= lambda!277617 lambda!277592))))

(assert (=> bs!1244335 (not (= lambda!277617 lambda!277516))))

(assert (=> bs!1244329 (not (= lambda!277617 lambda!277521))))

(assert (=> bs!1244327 (not (= lambda!277617 lambda!277610))))

(assert (=> bs!1244336 (= lambda!277617 lambda!277520)))

(assert (=> bs!1244336 (not (= lambda!277617 lambda!277519))))

(assert (=> bs!1244329 (not (= lambda!277617 lambda!277522))))

(assert (=> bs!1244337 (= (and (= lt!2188632 (regOne!30702 lt!2188633)) (= (regTwo!30702 r!7292) (regTwo!30702 lt!2188633))) (= lambda!277617 lambda!277608))))

(assert (=> bs!1244338 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277617 lambda!277559))))

(assert (=> bs!1244332 (not (= lambda!277617 lambda!277585))))

(assert (=> bs!1244339 (not (= lambda!277617 lambda!277607))))

(assert (=> bs!1244335 (= (= lt!2188632 (regOne!30702 r!7292)) (= lambda!277617 lambda!277517))))

(assert (=> bs!1244340 (not (= lambda!277617 lambda!277609))))

(assert (=> bs!1244341 (not (= lambda!277617 lambda!277615))))

(assert (=> d!1720645 true))

(assert (=> d!1720645 true))

(assert (=> d!1720645 true))

(assert (=> d!1720645 (= (Exists!2276 lambda!277616) (Exists!2276 lambda!277617))))

(declare-fun lt!2188802 () Unit!153898)

(assert (=> d!1720645 (= lt!2188802 (choose!40361 lt!2188632 (regTwo!30702 r!7292) s!2326))))

(assert (=> d!1720645 (validRegex!6831 lt!2188632)))

(assert (=> d!1720645 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!930 lt!2188632 (regTwo!30702 r!7292) s!2326) lt!2188802)))

(declare-fun m!6401472 () Bool)

(assert (=> bs!1244342 m!6401472))

(declare-fun m!6401474 () Bool)

(assert (=> bs!1244342 m!6401474))

(declare-fun m!6401476 () Bool)

(assert (=> bs!1244342 m!6401476))

(assert (=> bs!1244342 m!6400982))

(assert (=> b!5373645 d!1720645))

(declare-fun d!1720647 () Bool)

(declare-fun lt!2188803 () Regex!15095)

(assert (=> d!1720647 (validRegex!6831 lt!2188803)))

(assert (=> d!1720647 (= lt!2188803 (generalisedUnion!1024 (unfocusZipperList!537 (Cons!61462 lt!2188634 Nil!61462))))))

(assert (=> d!1720647 (= (unfocusZipper!837 (Cons!61462 lt!2188634 Nil!61462)) lt!2188803)))

(declare-fun bs!1244343 () Bool)

(assert (= bs!1244343 d!1720647))

(declare-fun m!6401478 () Bool)

(assert (=> bs!1244343 m!6401478))

(declare-fun m!6401480 () Bool)

(assert (=> bs!1244343 m!6401480))

(assert (=> bs!1244343 m!6401480))

(declare-fun m!6401482 () Bool)

(assert (=> bs!1244343 m!6401482))

(assert (=> b!5373666 d!1720647))

(declare-fun bm!384811 () Bool)

(declare-fun call!384819 () (InoxSet Context!8958))

(declare-fun call!384816 () (InoxSet Context!8958))

(assert (=> bm!384811 (= call!384819 call!384816)))

(declare-fun b!5374588 () Bool)

(declare-fun e!3334618 () (InoxSet Context!8958))

(declare-fun call!384820 () (InoxSet Context!8958))

(assert (=> b!5374588 (= e!3334618 ((_ map or) call!384820 call!384816))))

(declare-fun b!5374589 () Bool)

(declare-fun e!3334614 () (InoxSet Context!8958))

(declare-fun call!384817 () (InoxSet Context!8958))

(assert (=> b!5374589 (= e!3334614 ((_ map or) call!384817 call!384820))))

(declare-fun b!5374590 () Bool)

(declare-fun e!3334613 () Bool)

(assert (=> b!5374590 (= e!3334613 (nullable!5264 (regOne!30702 (reg!15424 (regOne!30702 r!7292)))))))

(declare-fun c!936555 () Bool)

(declare-fun c!936553 () Bool)

(declare-fun c!936554 () Bool)

(declare-fun bm!384812 () Bool)

(declare-fun call!384818 () List!61585)

(assert (=> bm!384812 (= call!384817 (derivationStepZipperDown!543 (ite c!936555 (regOne!30703 (reg!15424 (regOne!30702 r!7292))) (ite c!936553 (regTwo!30702 (reg!15424 (regOne!30702 r!7292))) (ite c!936554 (regOne!30702 (reg!15424 (regOne!30702 r!7292))) (reg!15424 (reg!15424 (regOne!30702 r!7292)))))) (ite (or c!936555 c!936553) lt!2188638 (Context!8959 call!384818)) (h!67908 s!2326)))))

(declare-fun bm!384813 () Bool)

(declare-fun call!384821 () List!61585)

(assert (=> bm!384813 (= call!384818 call!384821)))

(declare-fun b!5374591 () Bool)

(declare-fun e!3334617 () (InoxSet Context!8958))

(assert (=> b!5374591 (= e!3334617 ((as const (Array Context!8958 Bool)) false))))

(declare-fun b!5374592 () Bool)

(declare-fun c!936552 () Bool)

(assert (=> b!5374592 (= c!936552 ((_ is Star!15095) (reg!15424 (regOne!30702 r!7292))))))

(declare-fun e!3334615 () (InoxSet Context!8958))

(assert (=> b!5374592 (= e!3334615 e!3334617)))

(declare-fun b!5374593 () Bool)

(assert (=> b!5374593 (= e!3334615 call!384819)))

(declare-fun b!5374594 () Bool)

(assert (=> b!5374594 (= c!936553 e!3334613)))

(declare-fun res!2281498 () Bool)

(assert (=> b!5374594 (=> (not res!2281498) (not e!3334613))))

(assert (=> b!5374594 (= res!2281498 ((_ is Concat!23940) (reg!15424 (regOne!30702 r!7292))))))

(assert (=> b!5374594 (= e!3334614 e!3334618)))

(declare-fun b!5374595 () Bool)

(declare-fun e!3334616 () (InoxSet Context!8958))

(assert (=> b!5374595 (= e!3334616 e!3334614)))

(assert (=> b!5374595 (= c!936555 ((_ is Union!15095) (reg!15424 (regOne!30702 r!7292))))))

(declare-fun b!5374596 () Bool)

(assert (=> b!5374596 (= e!3334618 e!3334615)))

(assert (=> b!5374596 (= c!936554 ((_ is Concat!23940) (reg!15424 (regOne!30702 r!7292))))))

(declare-fun bm!384815 () Bool)

(assert (=> bm!384815 (= call!384816 call!384817)))

(declare-fun b!5374597 () Bool)

(assert (=> b!5374597 (= e!3334616 (store ((as const (Array Context!8958 Bool)) false) lt!2188638 true))))

(declare-fun b!5374598 () Bool)

(assert (=> b!5374598 (= e!3334617 call!384819)))

(declare-fun bm!384816 () Bool)

(assert (=> bm!384816 (= call!384820 (derivationStepZipperDown!543 (ite c!936555 (regTwo!30703 (reg!15424 (regOne!30702 r!7292))) (regOne!30702 (reg!15424 (regOne!30702 r!7292)))) (ite c!936555 lt!2188638 (Context!8959 call!384821)) (h!67908 s!2326)))))

(declare-fun bm!384814 () Bool)

(assert (=> bm!384814 (= call!384821 ($colon$colon!1454 (exprs!4979 lt!2188638) (ite (or c!936553 c!936554) (regTwo!30702 (reg!15424 (regOne!30702 r!7292))) (reg!15424 (regOne!30702 r!7292)))))))

(declare-fun d!1720649 () Bool)

(declare-fun c!936551 () Bool)

(assert (=> d!1720649 (= c!936551 (and ((_ is ElementMatch!15095) (reg!15424 (regOne!30702 r!7292))) (= (c!936295 (reg!15424 (regOne!30702 r!7292))) (h!67908 s!2326))))))

(assert (=> d!1720649 (= (derivationStepZipperDown!543 (reg!15424 (regOne!30702 r!7292)) lt!2188638 (h!67908 s!2326)) e!3334616)))

(assert (= (and d!1720649 c!936551) b!5374597))

(assert (= (and d!1720649 (not c!936551)) b!5374595))

(assert (= (and b!5374595 c!936555) b!5374589))

(assert (= (and b!5374595 (not c!936555)) b!5374594))

(assert (= (and b!5374594 res!2281498) b!5374590))

(assert (= (and b!5374594 c!936553) b!5374588))

(assert (= (and b!5374594 (not c!936553)) b!5374596))

(assert (= (and b!5374596 c!936554) b!5374593))

(assert (= (and b!5374596 (not c!936554)) b!5374592))

(assert (= (and b!5374592 c!936552) b!5374598))

(assert (= (and b!5374592 (not c!936552)) b!5374591))

(assert (= (or b!5374593 b!5374598) bm!384813))

(assert (= (or b!5374593 b!5374598) bm!384811))

(assert (= (or b!5374588 bm!384813) bm!384814))

(assert (= (or b!5374588 bm!384811) bm!384815))

(assert (= (or b!5374589 b!5374588) bm!384816))

(assert (= (or b!5374589 bm!384815) bm!384812))

(declare-fun m!6401484 () Bool)

(assert (=> b!5374590 m!6401484))

(assert (=> b!5374597 m!6400606))

(declare-fun m!6401486 () Bool)

(assert (=> bm!384814 m!6401486))

(declare-fun m!6401488 () Bool)

(assert (=> bm!384812 m!6401488))

(declare-fun m!6401490 () Bool)

(assert (=> bm!384816 m!6401490))

(assert (=> b!5373647 d!1720649))

(declare-fun d!1720651 () Bool)

(declare-fun lt!2188804 () Regex!15095)

(assert (=> d!1720651 (validRegex!6831 lt!2188804)))

(assert (=> d!1720651 (= lt!2188804 (generalisedUnion!1024 (unfocusZipperList!537 (Cons!61462 lt!2188638 Nil!61462))))))

(assert (=> d!1720651 (= (unfocusZipper!837 (Cons!61462 lt!2188638 Nil!61462)) lt!2188804)))

(declare-fun bs!1244344 () Bool)

(assert (= bs!1244344 d!1720651))

(declare-fun m!6401492 () Bool)

(assert (=> bs!1244344 m!6401492))

(declare-fun m!6401494 () Bool)

(assert (=> bs!1244344 m!6401494))

(assert (=> bs!1244344 m!6401494))

(declare-fun m!6401496 () Bool)

(assert (=> bs!1244344 m!6401496))

(assert (=> b!5373646 d!1720651))

(declare-fun b!5374599 () Bool)

(declare-fun e!3334619 () Bool)

(declare-fun e!3334625 () Bool)

(assert (=> b!5374599 (= e!3334619 e!3334625)))

(declare-fun res!2281500 () Bool)

(assert (=> b!5374599 (= res!2281500 (not (nullable!5264 (reg!15424 r!7292))))))

(assert (=> b!5374599 (=> (not res!2281500) (not e!3334625))))

(declare-fun b!5374600 () Bool)

(declare-fun call!384823 () Bool)

(assert (=> b!5374600 (= e!3334625 call!384823)))

(declare-fun b!5374601 () Bool)

(declare-fun res!2281501 () Bool)

(declare-fun e!3334623 () Bool)

(assert (=> b!5374601 (=> res!2281501 e!3334623)))

(assert (=> b!5374601 (= res!2281501 (not ((_ is Concat!23940) r!7292)))))

(declare-fun e!3334620 () Bool)

(assert (=> b!5374601 (= e!3334620 e!3334623)))

(declare-fun bm!384817 () Bool)

(declare-fun call!384822 () Bool)

(assert (=> bm!384817 (= call!384822 call!384823)))

(declare-fun b!5374602 () Bool)

(declare-fun e!3334624 () Bool)

(assert (=> b!5374602 (= e!3334623 e!3334624)))

(declare-fun res!2281499 () Bool)

(assert (=> b!5374602 (=> (not res!2281499) (not e!3334624))))

(assert (=> b!5374602 (= res!2281499 call!384822)))

(declare-fun b!5374603 () Bool)

(declare-fun call!384824 () Bool)

(assert (=> b!5374603 (= e!3334624 call!384824)))

(declare-fun b!5374604 () Bool)

(assert (=> b!5374604 (= e!3334619 e!3334620)))

(declare-fun c!936556 () Bool)

(assert (=> b!5374604 (= c!936556 ((_ is Union!15095) r!7292))))

(declare-fun d!1720653 () Bool)

(declare-fun res!2281503 () Bool)

(declare-fun e!3334622 () Bool)

(assert (=> d!1720653 (=> res!2281503 e!3334622)))

(assert (=> d!1720653 (= res!2281503 ((_ is ElementMatch!15095) r!7292))))

(assert (=> d!1720653 (= (validRegex!6831 r!7292) e!3334622)))

(declare-fun c!936557 () Bool)

(declare-fun bm!384818 () Bool)

(assert (=> bm!384818 (= call!384823 (validRegex!6831 (ite c!936557 (reg!15424 r!7292) (ite c!936556 (regOne!30703 r!7292) (regOne!30702 r!7292)))))))

(declare-fun b!5374605 () Bool)

(declare-fun e!3334621 () Bool)

(assert (=> b!5374605 (= e!3334621 call!384824)))

(declare-fun b!5374606 () Bool)

(declare-fun res!2281502 () Bool)

(assert (=> b!5374606 (=> (not res!2281502) (not e!3334621))))

(assert (=> b!5374606 (= res!2281502 call!384822)))

(assert (=> b!5374606 (= e!3334620 e!3334621)))

(declare-fun bm!384819 () Bool)

(assert (=> bm!384819 (= call!384824 (validRegex!6831 (ite c!936556 (regTwo!30703 r!7292) (regTwo!30702 r!7292))))))

(declare-fun b!5374607 () Bool)

(assert (=> b!5374607 (= e!3334622 e!3334619)))

(assert (=> b!5374607 (= c!936557 ((_ is Star!15095) r!7292))))

(assert (= (and d!1720653 (not res!2281503)) b!5374607))

(assert (= (and b!5374607 c!936557) b!5374599))

(assert (= (and b!5374607 (not c!936557)) b!5374604))

(assert (= (and b!5374599 res!2281500) b!5374600))

(assert (= (and b!5374604 c!936556) b!5374606))

(assert (= (and b!5374604 (not c!936556)) b!5374601))

(assert (= (and b!5374606 res!2281502) b!5374605))

(assert (= (and b!5374601 (not res!2281501)) b!5374602))

(assert (= (and b!5374602 res!2281499) b!5374603))

(assert (= (or b!5374605 b!5374603) bm!384819))

(assert (= (or b!5374606 b!5374602) bm!384817))

(assert (= (or b!5374600 bm!384817) bm!384818))

(declare-fun m!6401498 () Bool)

(assert (=> b!5374599 m!6401498))

(declare-fun m!6401500 () Bool)

(assert (=> bm!384818 m!6401500))

(declare-fun m!6401502 () Bool)

(assert (=> bm!384819 m!6401502))

(assert (=> start!565254 d!1720653))

(declare-fun condSetEmpty!34847 () Bool)

(assert (=> setNonEmpty!34841 (= condSetEmpty!34847 (= setRest!34841 ((as const (Array Context!8958 Bool)) false)))))

(declare-fun setRes!34847 () Bool)

(assert (=> setNonEmpty!34841 (= tp!1490448 setRes!34847)))

(declare-fun setIsEmpty!34847 () Bool)

(assert (=> setIsEmpty!34847 setRes!34847))

(declare-fun setElem!34847 () Context!8958)

(declare-fun tp!1490516 () Bool)

(declare-fun e!3334628 () Bool)

(declare-fun setNonEmpty!34847 () Bool)

(assert (=> setNonEmpty!34847 (= setRes!34847 (and tp!1490516 (inv!80984 setElem!34847) e!3334628))))

(declare-fun setRest!34847 () (InoxSet Context!8958))

(assert (=> setNonEmpty!34847 (= setRest!34841 ((_ map or) (store ((as const (Array Context!8958 Bool)) false) setElem!34847 true) setRest!34847))))

(declare-fun b!5374612 () Bool)

(declare-fun tp!1490517 () Bool)

(assert (=> b!5374612 (= e!3334628 tp!1490517)))

(assert (= (and setNonEmpty!34841 condSetEmpty!34847) setIsEmpty!34847))

(assert (= (and setNonEmpty!34841 (not condSetEmpty!34847)) setNonEmpty!34847))

(assert (= setNonEmpty!34847 b!5374612))

(declare-fun m!6401504 () Bool)

(assert (=> setNonEmpty!34847 m!6401504))

(declare-fun e!3334631 () Bool)

(assert (=> b!5373657 (= tp!1490446 e!3334631)))

(declare-fun b!5374625 () Bool)

(declare-fun tp!1490531 () Bool)

(assert (=> b!5374625 (= e!3334631 tp!1490531)))

(declare-fun b!5374623 () Bool)

(assert (=> b!5374623 (= e!3334631 tp_is_empty!39443)))

(declare-fun b!5374626 () Bool)

(declare-fun tp!1490528 () Bool)

(declare-fun tp!1490530 () Bool)

(assert (=> b!5374626 (= e!3334631 (and tp!1490528 tp!1490530))))

(declare-fun b!5374624 () Bool)

(declare-fun tp!1490529 () Bool)

(declare-fun tp!1490532 () Bool)

(assert (=> b!5374624 (= e!3334631 (and tp!1490529 tp!1490532))))

(assert (= (and b!5373657 ((_ is ElementMatch!15095) (regOne!30702 r!7292))) b!5374623))

(assert (= (and b!5373657 ((_ is Concat!23940) (regOne!30702 r!7292))) b!5374624))

(assert (= (and b!5373657 ((_ is Star!15095) (regOne!30702 r!7292))) b!5374625))

(assert (= (and b!5373657 ((_ is Union!15095) (regOne!30702 r!7292))) b!5374626))

(declare-fun e!3334632 () Bool)

(assert (=> b!5373657 (= tp!1490447 e!3334632)))

(declare-fun b!5374629 () Bool)

(declare-fun tp!1490536 () Bool)

(assert (=> b!5374629 (= e!3334632 tp!1490536)))

(declare-fun b!5374627 () Bool)

(assert (=> b!5374627 (= e!3334632 tp_is_empty!39443)))

(declare-fun b!5374630 () Bool)

(declare-fun tp!1490533 () Bool)

(declare-fun tp!1490535 () Bool)

(assert (=> b!5374630 (= e!3334632 (and tp!1490533 tp!1490535))))

(declare-fun b!5374628 () Bool)

(declare-fun tp!1490534 () Bool)

(declare-fun tp!1490537 () Bool)

(assert (=> b!5374628 (= e!3334632 (and tp!1490534 tp!1490537))))

(assert (= (and b!5373657 ((_ is ElementMatch!15095) (regTwo!30702 r!7292))) b!5374627))

(assert (= (and b!5373657 ((_ is Concat!23940) (regTwo!30702 r!7292))) b!5374628))

(assert (= (and b!5373657 ((_ is Star!15095) (regTwo!30702 r!7292))) b!5374629))

(assert (= (and b!5373657 ((_ is Union!15095) (regTwo!30702 r!7292))) b!5374630))

(declare-fun e!3334633 () Bool)

(assert (=> b!5373651 (= tp!1490445 e!3334633)))

(declare-fun b!5374633 () Bool)

(declare-fun tp!1490541 () Bool)

(assert (=> b!5374633 (= e!3334633 tp!1490541)))

(declare-fun b!5374631 () Bool)

(assert (=> b!5374631 (= e!3334633 tp_is_empty!39443)))

(declare-fun b!5374634 () Bool)

(declare-fun tp!1490538 () Bool)

(declare-fun tp!1490540 () Bool)

(assert (=> b!5374634 (= e!3334633 (and tp!1490538 tp!1490540))))

(declare-fun b!5374632 () Bool)

(declare-fun tp!1490539 () Bool)

(declare-fun tp!1490542 () Bool)

(assert (=> b!5374632 (= e!3334633 (and tp!1490539 tp!1490542))))

(assert (= (and b!5373651 ((_ is ElementMatch!15095) (regOne!30703 r!7292))) b!5374631))

(assert (= (and b!5373651 ((_ is Concat!23940) (regOne!30703 r!7292))) b!5374632))

(assert (= (and b!5373651 ((_ is Star!15095) (regOne!30703 r!7292))) b!5374633))

(assert (= (and b!5373651 ((_ is Union!15095) (regOne!30703 r!7292))) b!5374634))

(declare-fun e!3334634 () Bool)

(assert (=> b!5373651 (= tp!1490452 e!3334634)))

(declare-fun b!5374637 () Bool)

(declare-fun tp!1490546 () Bool)

(assert (=> b!5374637 (= e!3334634 tp!1490546)))

(declare-fun b!5374635 () Bool)

(assert (=> b!5374635 (= e!3334634 tp_is_empty!39443)))

(declare-fun b!5374638 () Bool)

(declare-fun tp!1490543 () Bool)

(declare-fun tp!1490545 () Bool)

(assert (=> b!5374638 (= e!3334634 (and tp!1490543 tp!1490545))))

(declare-fun b!5374636 () Bool)

(declare-fun tp!1490544 () Bool)

(declare-fun tp!1490547 () Bool)

(assert (=> b!5374636 (= e!3334634 (and tp!1490544 tp!1490547))))

(assert (= (and b!5373651 ((_ is ElementMatch!15095) (regTwo!30703 r!7292))) b!5374635))

(assert (= (and b!5373651 ((_ is Concat!23940) (regTwo!30703 r!7292))) b!5374636))

(assert (= (and b!5373651 ((_ is Star!15095) (regTwo!30703 r!7292))) b!5374637))

(assert (= (and b!5373651 ((_ is Union!15095) (regTwo!30703 r!7292))) b!5374638))

(declare-fun e!3334635 () Bool)

(assert (=> b!5373648 (= tp!1490453 e!3334635)))

(declare-fun b!5374641 () Bool)

(declare-fun tp!1490551 () Bool)

(assert (=> b!5374641 (= e!3334635 tp!1490551)))

(declare-fun b!5374639 () Bool)

(assert (=> b!5374639 (= e!3334635 tp_is_empty!39443)))

(declare-fun b!5374642 () Bool)

(declare-fun tp!1490548 () Bool)

(declare-fun tp!1490550 () Bool)

(assert (=> b!5374642 (= e!3334635 (and tp!1490548 tp!1490550))))

(declare-fun b!5374640 () Bool)

(declare-fun tp!1490549 () Bool)

(declare-fun tp!1490552 () Bool)

(assert (=> b!5374640 (= e!3334635 (and tp!1490549 tp!1490552))))

(assert (= (and b!5373648 ((_ is ElementMatch!15095) (reg!15424 r!7292))) b!5374639))

(assert (= (and b!5373648 ((_ is Concat!23940) (reg!15424 r!7292))) b!5374640))

(assert (= (and b!5373648 ((_ is Star!15095) (reg!15424 r!7292))) b!5374641))

(assert (= (and b!5373648 ((_ is Union!15095) (reg!15424 r!7292))) b!5374642))

(declare-fun b!5374650 () Bool)

(declare-fun e!3334641 () Bool)

(declare-fun tp!1490557 () Bool)

(assert (=> b!5374650 (= e!3334641 tp!1490557)))

(declare-fun e!3334640 () Bool)

(declare-fun b!5374649 () Bool)

(declare-fun tp!1490558 () Bool)

(assert (=> b!5374649 (= e!3334640 (and (inv!80984 (h!67910 (t!374809 zl!343))) e!3334641 tp!1490558))))

(assert (=> b!5373654 (= tp!1490444 e!3334640)))

(assert (= b!5374649 b!5374650))

(assert (= (and b!5373654 ((_ is Cons!61462) (t!374809 zl!343))) b!5374649))

(declare-fun m!6401506 () Bool)

(assert (=> b!5374649 m!6401506))

(declare-fun b!5374655 () Bool)

(declare-fun e!3334644 () Bool)

(declare-fun tp!1490563 () Bool)

(declare-fun tp!1490564 () Bool)

(assert (=> b!5374655 (= e!3334644 (and tp!1490563 tp!1490564))))

(assert (=> b!5373665 (= tp!1490451 e!3334644)))

(assert (= (and b!5373665 ((_ is Cons!61461) (exprs!4979 (h!67910 zl!343)))) b!5374655))

(declare-fun b!5374656 () Bool)

(declare-fun e!3334645 () Bool)

(declare-fun tp!1490565 () Bool)

(declare-fun tp!1490566 () Bool)

(assert (=> b!5374656 (= e!3334645 (and tp!1490565 tp!1490566))))

(assert (=> b!5373634 (= tp!1490449 e!3334645)))

(assert (= (and b!5373634 ((_ is Cons!61461) (exprs!4979 setElem!34841))) b!5374656))

(declare-fun b!5374661 () Bool)

(declare-fun e!3334648 () Bool)

(declare-fun tp!1490569 () Bool)

(assert (=> b!5374661 (= e!3334648 (and tp_is_empty!39443 tp!1490569))))

(assert (=> b!5373661 (= tp!1490450 e!3334648)))

(assert (= (and b!5373661 ((_ is Cons!61460) (t!374807 s!2326))) b!5374661))

(declare-fun b_lambda!205957 () Bool)

(assert (= b_lambda!205953 (or b!5373638 b_lambda!205957)))

(declare-fun bs!1244345 () Bool)

(declare-fun d!1720655 () Bool)

(assert (= bs!1244345 (and d!1720655 b!5373638)))

(assert (=> bs!1244345 (= (dynLambda!24265 lambda!277518 (h!67910 zl!343)) (derivationStepZipperUp!467 (h!67910 zl!343) (h!67908 s!2326)))))

(assert (=> bs!1244345 m!6400594))

(assert (=> d!1720577 d!1720655))

(declare-fun b_lambda!205959 () Bool)

(assert (= b_lambda!205955 (or b!5373638 b_lambda!205959)))

(declare-fun bs!1244346 () Bool)

(declare-fun d!1720657 () Bool)

(assert (= bs!1244346 (and d!1720657 b!5373638)))

(assert (=> bs!1244346 (= (dynLambda!24265 lambda!277518 lt!2188634) (derivationStepZipperUp!467 lt!2188634 (h!67908 s!2326)))))

(assert (=> bs!1244346 m!6400528))

(assert (=> d!1720625 d!1720657))

(declare-fun b_lambda!205961 () Bool)

(assert (= b_lambda!205951 (or b!5373638 b_lambda!205961)))

(declare-fun bs!1244347 () Bool)

(declare-fun d!1720659 () Bool)

(assert (= bs!1244347 (and d!1720659 b!5373638)))

(assert (=> bs!1244347 (= (dynLambda!24265 lambda!277518 lt!2188638) (derivationStepZipperUp!467 lt!2188638 (h!67908 s!2326)))))

(assert (=> bs!1244347 m!6400612))

(assert (=> d!1720571 d!1720659))

(declare-fun b_lambda!205963 () Bool)

(assert (= b_lambda!205949 (or b!5373638 b_lambda!205963)))

(declare-fun bs!1244348 () Bool)

(declare-fun d!1720661 () Bool)

(assert (= bs!1244348 (and d!1720661 b!5373638)))

(assert (=> bs!1244348 (= (dynLambda!24265 lambda!277518 lt!2188664) (derivationStepZipperUp!467 lt!2188664 (h!67908 s!2326)))))

(assert (=> bs!1244348 m!6400610))

(assert (=> d!1720567 d!1720661))

(check-sat (not d!1720573) (not b!5374482) (not d!1720633) (not b_lambda!205957) (not b!5374534) (not b!5374580) (not b!5374649) (not d!1720641) (not d!1720541) (not d!1720579) (not d!1720611) (not b!5374508) (not bm!384804) (not b!5374491) (not d!1720603) (not b!5374487) (not b!5374433) (not d!1720643) (not d!1720429) (not b!5374380) (not d!1720613) (not bm!384805) (not d!1720601) (not bm!384803) (not d!1720645) (not bm!384810) (not b!5374376) (not b!5374377) (not b!5374493) (not b!5374520) (not d!1720629) (not b!5374494) (not d!1720561) (not bm!384809) (not bm!384731) (not d!1720571) (not b!5374557) (not b!5374295) (not b!5374612) (not b!5374633) (not b!5374443) (not b!5374585) (not b!5373931) (not b!5373842) (not d!1720621) (not b!5374523) (not b!5374024) (not bm!384802) (not bm!384784) (not b!5374535) (not d!1720577) tp_is_empty!39443 (not b!5374434) (not b!5374542) (not d!1720399) (not b!5374522) (not d!1720403) (not b!5374444) (not bs!1244346) (not b!5374505) (not bm!384728) (not bm!384816) (not b!5374630) (not b!5374576) (not b!5374022) (not b!5374381) (not bm!384812) (not d!1720635) (not b!5374518) (not b!5374519) (not bm!384819) (not b!5374625) (not d!1720479) (not d!1720609) (not b!5374590) (not b!5374292) (not d!1720423) (not b!5374321) (not bm!384814) (not d!1720533) (not d!1720531) (not b!5374021) (not d!1720465) (not b!5374378) (not b!5374634) (not bs!1244348) (not setNonEmpty!34847) (not b!5373932) (not d!1720647) (not b!5374581) (not d!1720525) (not b!5374632) (not d!1720467) (not b!5374641) (not d!1720551) (not b!5374312) (not b!5374527) (not b!5374547) (not d!1720491) (not b!5374422) (not d!1720607) (not b!5374521) (not b!5374624) (not d!1720527) (not bs!1244345) (not b!5374555) (not b!5374525) (not b!5374421) (not d!1720569) (not bm!384798) (not b!5374486) (not b!5374539) (not d!1720615) (not bm!384771) (not b!5374565) (not b!5374203) (not b!5373928) (not b_lambda!205959) (not b!5374438) (not b!5373930) (not b!5374298) (not bm!384727) (not b!5374640) (not d!1720605) (not b!5374028) (not d!1720567) (not b!5374311) (not d!1720469) (not d!1720627) (not d!1720637) (not b!5374661) (not bm!384806) (not d!1720651) (not bm!384800) (not b!5373940) (not bm!384743) (not d!1720639) (not b!5374291) (not b!5374553) (not b!5374545) (not bm!384742) (not b!5374564) (not bm!384807) (not b!5374472) (not b!5374556) (not b!5374543) (not d!1720445) (not b!5374481) (not b!5374582) (not d!1720535) (not bs!1244347) (not b!5374642) (not b!5374538) (not b!5374587) (not b!5374026) (not b!5374629) (not b_lambda!205961) (not b!5374599) (not d!1720597) (not b!5374382) (not b!5374540) (not b!5374655) (not b!5374637) (not d!1720625) (not b!5374314) (not b!5374628) (not b!5373939) (not bm!384783) (not d!1720617) (not b!5374546) (not b!5373845) (not b!5374502) (not d!1720417) (not b!5374419) (not b!5374584) (not d!1720591) (not b!5374577) (not b!5374023) (not b!5374626) (not d!1720485) (not b!5374495) (not b!5374293) (not b!5374526) (not d!1720563) (not d!1720595) (not b!5374636) (not b!5374313) (not d!1720599) (not b!5374206) (not d!1720511) (not b!5374503) (not bm!384770) (not b!5374656) (not b!5374296) (not bm!384818) (not bm!384782) (not b!5374638) (not b_lambda!205963) (not b!5374059) (not b!5374439) (not bm!384808) (not b!5374650) (not b!5374374) (not b!5374027) (not d!1720581))
(check-sat)
