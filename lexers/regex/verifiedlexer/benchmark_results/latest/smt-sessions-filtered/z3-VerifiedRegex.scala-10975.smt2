; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568606 () Bool)

(assert start!568606)

(declare-fun b!5415483 () Bool)

(assert (=> b!5415483 true))

(assert (=> b!5415483 true))

(declare-fun lambda!283153 () Int)

(declare-fun lambda!283152 () Int)

(assert (=> b!5415483 (not (= lambda!283153 lambda!283152))))

(assert (=> b!5415483 true))

(assert (=> b!5415483 true))

(declare-fun b!5415480 () Bool)

(assert (=> b!5415480 true))

(declare-fun b!5415469 () Bool)

(assert (=> b!5415469 true))

(declare-fun bs!1250930 () Bool)

(declare-fun b!5415502 () Bool)

(assert (= bs!1250930 (and b!5415502 b!5415483)))

(declare-datatypes ((C!30664 0))(
  ( (C!30665 (val!25034 Int)) )
))
(declare-datatypes ((Regex!15197 0))(
  ( (ElementMatch!15197 (c!944259 C!30664)) (Concat!24042 (regOne!30906 Regex!15197) (regTwo!30906 Regex!15197)) (EmptyExpr!15197) (Star!15197 (reg!15526 Regex!15197)) (EmptyLang!15197) (Union!15197 (regOne!30907 Regex!15197) (regTwo!30907 Regex!15197)) )
))
(declare-fun r!7292 () Regex!15197)

(declare-fun lt!2208521 () Regex!15197)

(declare-fun lambda!283157 () Int)

(assert (=> bs!1250930 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283157 lambda!283152))))

(assert (=> bs!1250930 (not (= lambda!283157 lambda!283153))))

(assert (=> b!5415502 true))

(assert (=> b!5415502 true))

(assert (=> b!5415502 true))

(declare-fun lambda!283158 () Int)

(assert (=> bs!1250930 (not (= lambda!283158 lambda!283152))))

(assert (=> bs!1250930 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283158 lambda!283153))))

(assert (=> b!5415502 (not (= lambda!283158 lambda!283157))))

(assert (=> b!5415502 true))

(assert (=> b!5415502 true))

(assert (=> b!5415502 true))

(declare-fun bs!1250931 () Bool)

(declare-fun b!5415478 () Bool)

(assert (= bs!1250931 (and b!5415478 b!5415483)))

(declare-datatypes ((List!61890 0))(
  ( (Nil!61766) (Cons!61766 (h!68214 C!30664) (t!375113 List!61890)) )
))
(declare-fun s!2326 () List!61890)

(declare-fun lambda!283159 () Int)

(declare-fun lt!2208538 () Regex!15197)

(declare-datatypes ((tuple2!64792 0))(
  ( (tuple2!64793 (_1!35699 List!61890) (_2!35699 List!61890)) )
))
(declare-fun lt!2208525 () tuple2!64792)

(assert (=> bs!1250931 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) (regOne!30906 r!7292)) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283159 lambda!283152))))

(assert (=> bs!1250931 (not (= lambda!283159 lambda!283153))))

(declare-fun bs!1250932 () Bool)

(assert (= bs!1250932 (and b!5415478 b!5415502)))

(assert (=> bs!1250932 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) lt!2208521) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283159 lambda!283157))))

(assert (=> bs!1250932 (not (= lambda!283159 lambda!283158))))

(assert (=> b!5415478 true))

(assert (=> b!5415478 true))

(assert (=> b!5415478 true))

(declare-fun lambda!283160 () Int)

(assert (=> bs!1250932 (not (= lambda!283160 lambda!283157))))

(assert (=> bs!1250932 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) lt!2208521) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283160 lambda!283158))))

(assert (=> bs!1250931 (not (= lambda!283160 lambda!283152))))

(assert (=> bs!1250931 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) (regOne!30906 r!7292)) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283160 lambda!283153))))

(assert (=> b!5415478 (not (= lambda!283160 lambda!283159))))

(assert (=> b!5415478 true))

(assert (=> b!5415478 true))

(assert (=> b!5415478 true))

(declare-fun lambda!283161 () Int)

(assert (=> bs!1250932 (not (= lambda!283161 lambda!283157))))

(assert (=> bs!1250932 (not (= lambda!283161 lambda!283158))))

(assert (=> b!5415478 (not (= lambda!283161 lambda!283160))))

(assert (=> bs!1250931 (not (= lambda!283161 lambda!283152))))

(assert (=> bs!1250931 (not (= lambda!283161 lambda!283153))))

(assert (=> b!5415478 (not (= lambda!283161 lambda!283159))))

(assert (=> b!5415478 true))

(assert (=> b!5415478 true))

(assert (=> b!5415478 true))

(declare-fun b!5415468 () Bool)

(declare-fun res!2303665 () Bool)

(declare-fun e!3356720 () Bool)

(assert (=> b!5415468 (=> res!2303665 e!3356720)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61891 0))(
  ( (Nil!61767) (Cons!61767 (h!68215 Regex!15197) (t!375114 List!61891)) )
))
(declare-datatypes ((Context!9162 0))(
  ( (Context!9163 (exprs!5081 List!61891)) )
))
(declare-fun lt!2208564 () (InoxSet Context!9162))

(declare-fun lt!2208535 () tuple2!64792)

(declare-fun matchZipper!1441 ((InoxSet Context!9162) List!61890) Bool)

(assert (=> b!5415468 (= res!2303665 (not (matchZipper!1441 lt!2208564 (_1!35699 lt!2208535))))))

(declare-fun e!3356715 () Bool)

(declare-fun e!3356739 () Bool)

(assert (=> b!5415469 (= e!3356715 e!3356739)))

(declare-fun res!2303674 () Bool)

(assert (=> b!5415469 (=> res!2303674 e!3356739)))

(declare-fun lt!2208539 () (InoxSet Context!9162))

(declare-fun lt!2208566 () Context!9162)

(declare-fun appendTo!56 ((InoxSet Context!9162) Context!9162) (InoxSet Context!9162))

(assert (=> b!5415469 (= res!2303674 (not (= (appendTo!56 lt!2208564 lt!2208566) lt!2208539)))))

(declare-fun lt!2208515 () List!61891)

(declare-fun lambda!283155 () Int)

(declare-fun lt!2208567 () List!61891)

(declare-fun map!14180 ((InoxSet Context!9162) Int) (InoxSet Context!9162))

(declare-fun ++!13567 (List!61891 List!61891) List!61891)

(assert (=> b!5415469 (= (map!14180 lt!2208564 lambda!283155) (store ((as const (Array Context!9162 Bool)) false) (Context!9163 (++!13567 lt!2208515 lt!2208567)) true))))

(declare-fun lambda!283156 () Int)

(declare-datatypes ((Unit!154310 0))(
  ( (Unit!154311) )
))
(declare-fun lt!2208532 () Unit!154310)

(declare-fun lemmaConcatPreservesForall!222 (List!61891 List!61891 Int) Unit!154310)

(assert (=> b!5415469 (= lt!2208532 (lemmaConcatPreservesForall!222 lt!2208515 lt!2208567 lambda!283156))))

(declare-fun lt!2208526 () Context!9162)

(declare-fun lt!2208523 () Unit!154310)

(declare-fun lemmaMapOnSingletonSet!56 ((InoxSet Context!9162) Context!9162 Int) Unit!154310)

(assert (=> b!5415469 (= lt!2208523 (lemmaMapOnSingletonSet!56 lt!2208564 lt!2208526 lambda!283155))))

(declare-fun b!5415470 () Bool)

(declare-fun e!3356731 () Bool)

(declare-fun tp!1496195 () Bool)

(assert (=> b!5415470 (= e!3356731 tp!1496195)))

(declare-fun b!5415471 () Bool)

(declare-fun e!3356726 () Bool)

(declare-fun lt!2208556 () (InoxSet Context!9162))

(assert (=> b!5415471 (= e!3356726 (not (matchZipper!1441 lt!2208556 (t!375113 s!2326))))))

(declare-fun b!5415472 () Bool)

(declare-fun res!2303664 () Bool)

(declare-fun e!3356724 () Bool)

(assert (=> b!5415472 (=> res!2303664 e!3356724)))

(declare-fun e!3356723 () Bool)

(assert (=> b!5415472 (= res!2303664 e!3356723)))

(declare-fun res!2303663 () Bool)

(assert (=> b!5415472 (=> (not res!2303663) (not e!3356723))))

(get-info :version)

(assert (=> b!5415472 (= res!2303663 ((_ is Concat!24042) (regOne!30906 r!7292)))))

(declare-fun b!5415473 () Bool)

(declare-fun e!3356714 () Unit!154310)

(declare-fun Unit!154312 () Unit!154310)

(assert (=> b!5415473 (= e!3356714 Unit!154312)))

(declare-fun b!5415474 () Bool)

(declare-fun res!2303661 () Bool)

(assert (=> b!5415474 (=> res!2303661 e!3356715)))

(declare-fun lt!2208544 () Bool)

(declare-fun lt!2208569 () Bool)

(assert (=> b!5415474 (= res!2303661 (or (not lt!2208544) (not lt!2208569)))))

(declare-fun b!5415475 () Bool)

(assert (=> b!5415475 (= e!3356739 e!3356720)))

(declare-fun res!2303676 () Bool)

(assert (=> b!5415475 (=> res!2303676 e!3356720)))

(declare-fun lt!2208545 () List!61890)

(assert (=> b!5415475 (= res!2303676 (not (= s!2326 lt!2208545)))))

(declare-fun ++!13568 (List!61890 List!61890) List!61890)

(assert (=> b!5415475 (= lt!2208545 (++!13568 (_1!35699 lt!2208535) (_2!35699 lt!2208535)))))

(declare-datatypes ((Option!15308 0))(
  ( (None!15307) (Some!15307 (v!51336 tuple2!64792)) )
))
(declare-fun lt!2208557 () Option!15308)

(declare-fun get!21298 (Option!15308) tuple2!64792)

(assert (=> b!5415475 (= lt!2208535 (get!21298 lt!2208557))))

(declare-fun isDefined!12011 (Option!15308) Bool)

(assert (=> b!5415475 (isDefined!12011 lt!2208557)))

(declare-fun lt!2208549 () (InoxSet Context!9162))

(declare-fun findConcatSeparationZippers!54 ((InoxSet Context!9162) (InoxSet Context!9162) List!61890 List!61890 List!61890) Option!15308)

(assert (=> b!5415475 (= lt!2208557 (findConcatSeparationZippers!54 lt!2208564 lt!2208549 Nil!61766 s!2326 s!2326))))

(declare-fun lt!2208524 () Unit!154310)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!54 ((InoxSet Context!9162) Context!9162 List!61890) Unit!154310)

(assert (=> b!5415475 (= lt!2208524 (lemmaConcatZipperMatchesStringThenFindConcatDefined!54 lt!2208564 lt!2208566 s!2326))))

(declare-fun b!5415476 () Bool)

(declare-fun res!2303649 () Bool)

(declare-fun e!3356727 () Bool)

(assert (=> b!5415476 (=> res!2303649 e!3356727)))

(declare-datatypes ((List!61892 0))(
  ( (Nil!61768) (Cons!61768 (h!68216 Context!9162) (t!375115 List!61892)) )
))
(declare-fun zl!343 () List!61892)

(assert (=> b!5415476 (= res!2303649 (not ((_ is Cons!61767) (exprs!5081 (h!68216 zl!343)))))))

(declare-fun b!5415477 () Bool)

(declare-fun e!3356737 () Bool)

(declare-fun e!3356732 () Bool)

(assert (=> b!5415477 (= e!3356737 e!3356732)))

(declare-fun res!2303654 () Bool)

(assert (=> b!5415477 (=> res!2303654 e!3356732)))

(declare-fun lt!2208541 () List!61892)

(declare-fun lt!2208536 () Regex!15197)

(declare-fun unfocusZipper!939 (List!61892) Regex!15197)

(assert (=> b!5415477 (= res!2303654 (not (= (unfocusZipper!939 lt!2208541) lt!2208536)))))

(assert (=> b!5415477 (= lt!2208541 (Cons!61768 lt!2208566 Nil!61768))))

(declare-fun e!3356716 () Bool)

(declare-fun lt!2208565 () Bool)

(assert (=> b!5415478 (= e!3356716 lt!2208565)))

(declare-fun Exists!2378 (Int) Bool)

(assert (=> b!5415478 (= (Exists!2378 lambda!283159) (Exists!2378 lambda!283161))))

(declare-fun lt!2208516 () Unit!154310)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!408 (Regex!15197 List!61890) Unit!154310)

(assert (=> b!5415478 (= lt!2208516 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!408 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208525)))))

(assert (=> b!5415478 (= (Exists!2378 lambda!283159) (Exists!2378 lambda!283160))))

(declare-fun lt!2208527 () Unit!154310)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1032 (Regex!15197 Regex!15197 List!61890) Unit!154310)

(assert (=> b!5415478 (= lt!2208527 (lemmaExistCutMatchRandMatchRSpecEquivalent!1032 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (_1!35699 lt!2208525)))))

(assert (=> b!5415478 (= lt!2208565 (Exists!2378 lambda!283159))))

(declare-fun findConcatSeparation!1722 (Regex!15197 Regex!15197 List!61890 List!61890 List!61890) Option!15308)

(assert (=> b!5415478 (= lt!2208565 (isDefined!12011 (findConcatSeparation!1722 (reg!15526 (regOne!30906 r!7292)) lt!2208538 Nil!61766 (_1!35699 lt!2208525) (_1!35699 lt!2208525))))))

(declare-fun lt!2208561 () Unit!154310)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1486 (Regex!15197 Regex!15197 List!61890) Unit!154310)

(assert (=> b!5415478 (= lt!2208561 (lemmaFindConcatSeparationEquivalentToExists!1486 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (_1!35699 lt!2208525)))))

(declare-fun matchRSpec!2300 (Regex!15197 List!61890) Bool)

(assert (=> b!5415478 (matchRSpec!2300 lt!2208521 (_1!35699 lt!2208525))))

(declare-fun lt!2208554 () Unit!154310)

(declare-fun mainMatchTheorem!2300 (Regex!15197 List!61890) Unit!154310)

(assert (=> b!5415478 (= lt!2208554 (mainMatchTheorem!2300 lt!2208521 (_1!35699 lt!2208525)))))

(declare-fun b!5415479 () Bool)

(declare-fun e!3356730 () Bool)

(declare-fun tp!1496192 () Bool)

(assert (=> b!5415479 (= e!3356730 tp!1496192)))

(declare-fun e!3356717 () Bool)

(assert (=> b!5415480 (= e!3356717 e!3356724)))

(declare-fun res!2303675 () Bool)

(assert (=> b!5415480 (=> res!2303675 e!3356724)))

(assert (=> b!5415480 (= res!2303675 (or (and ((_ is ElementMatch!15197) (regOne!30906 r!7292)) (= (c!944259 (regOne!30906 r!7292)) (h!68214 s!2326))) ((_ is Union!15197) (regOne!30906 r!7292))))))

(declare-fun lt!2208548 () Unit!154310)

(assert (=> b!5415480 (= lt!2208548 e!3356714)))

(declare-fun c!944258 () Bool)

(declare-fun lt!2208510 () Bool)

(assert (=> b!5415480 (= c!944258 lt!2208510)))

(declare-fun nullable!5366 (Regex!15197) Bool)

(assert (=> b!5415480 (= lt!2208510 (nullable!5366 (h!68215 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun lambda!283154 () Int)

(declare-fun z!1189 () (InoxSet Context!9162))

(declare-fun flatMap!924 ((InoxSet Context!9162) Int) (InoxSet Context!9162))

(declare-fun derivationStepZipperUp!569 (Context!9162 C!30664) (InoxSet Context!9162))

(assert (=> b!5415480 (= (flatMap!924 z!1189 lambda!283154) (derivationStepZipperUp!569 (h!68216 zl!343) (h!68214 s!2326)))))

(declare-fun lt!2208550 () Unit!154310)

(declare-fun lemmaFlatMapOnSingletonSet!456 ((InoxSet Context!9162) Context!9162 Int) Unit!154310)

(assert (=> b!5415480 (= lt!2208550 (lemmaFlatMapOnSingletonSet!456 z!1189 (h!68216 zl!343) lambda!283154))))

(declare-fun lt!2208563 () Context!9162)

(assert (=> b!5415480 (= lt!2208556 (derivationStepZipperUp!569 lt!2208563 (h!68214 s!2326)))))

(declare-fun lt!2208528 () (InoxSet Context!9162))

(declare-fun derivationStepZipperDown!645 (Regex!15197 Context!9162 C!30664) (InoxSet Context!9162))

(assert (=> b!5415480 (= lt!2208528 (derivationStepZipperDown!645 (h!68215 (exprs!5081 (h!68216 zl!343))) lt!2208563 (h!68214 s!2326)))))

(assert (=> b!5415480 (= lt!2208563 (Context!9163 (t!375114 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun lt!2208560 () (InoxSet Context!9162))

(assert (=> b!5415480 (= lt!2208560 (derivationStepZipperUp!569 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343))))) (h!68214 s!2326)))))

(declare-fun b!5415481 () Bool)

(declare-fun e!3356729 () Bool)

(declare-fun e!3356728 () Bool)

(assert (=> b!5415481 (= e!3356729 e!3356728)))

(declare-fun res!2303671 () Bool)

(assert (=> b!5415481 (=> res!2303671 e!3356728)))

(assert (=> b!5415481 (= res!2303671 (not (= r!7292 lt!2208536)))))

(assert (=> b!5415481 (= lt!2208536 (Concat!24042 lt!2208538 (regTwo!30906 r!7292)))))

(declare-fun b!5415482 () Bool)

(declare-fun e!3356735 () Bool)

(declare-fun tp!1496197 () Bool)

(declare-fun tp!1496194 () Bool)

(assert (=> b!5415482 (= e!3356735 (and tp!1496197 tp!1496194))))

(assert (=> b!5415483 (= e!3356727 e!3356717)))

(declare-fun res!2303672 () Bool)

(assert (=> b!5415483 (=> res!2303672 e!3356717)))

(declare-fun lt!2208542 () Bool)

(declare-fun lt!2208559 () Bool)

(assert (=> b!5415483 (= res!2303672 (or (not (= lt!2208542 lt!2208559)) ((_ is Nil!61766) s!2326)))))

(assert (=> b!5415483 (= (Exists!2378 lambda!283152) (Exists!2378 lambda!283153))))

(declare-fun lt!2208551 () Unit!154310)

(assert (=> b!5415483 (= lt!2208551 (lemmaExistCutMatchRandMatchRSpecEquivalent!1032 (regOne!30906 r!7292) (regTwo!30906 r!7292) s!2326))))

(assert (=> b!5415483 (= lt!2208559 (Exists!2378 lambda!283152))))

(assert (=> b!5415483 (= lt!2208559 (isDefined!12011 (findConcatSeparation!1722 (regOne!30906 r!7292) (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326)))))

(declare-fun lt!2208543 () Unit!154310)

(assert (=> b!5415483 (= lt!2208543 (lemmaFindConcatSeparationEquivalentToExists!1486 (regOne!30906 r!7292) (regTwo!30906 r!7292) s!2326))))

(declare-fun b!5415484 () Bool)

(declare-fun e!3356722 () Bool)

(assert (=> b!5415484 (= e!3356732 e!3356722)))

(declare-fun res!2303643 () Bool)

(assert (=> b!5415484 (=> res!2303643 e!3356722)))

(assert (=> b!5415484 (= res!2303643 lt!2208542)))

(declare-fun lt!2208572 () Bool)

(declare-fun lt!2208553 () Regex!15197)

(assert (=> b!5415484 (= lt!2208572 (matchRSpec!2300 lt!2208553 s!2326))))

(declare-fun matchR!7382 (Regex!15197 List!61890) Bool)

(assert (=> b!5415484 (= lt!2208572 (matchR!7382 lt!2208553 s!2326))))

(declare-fun lt!2208547 () Unit!154310)

(assert (=> b!5415484 (= lt!2208547 (mainMatchTheorem!2300 lt!2208553 s!2326))))

(declare-fun b!5415485 () Bool)

(declare-fun e!3356733 () Bool)

(assert (=> b!5415485 (= e!3356733 e!3356729)))

(declare-fun res!2303653 () Bool)

(assert (=> b!5415485 (=> res!2303653 e!3356729)))

(declare-fun lt!2208546 () (InoxSet Context!9162))

(assert (=> b!5415485 (= res!2303653 (not (= lt!2208569 (matchZipper!1441 lt!2208546 (t!375113 s!2326)))))))

(assert (=> b!5415485 (= lt!2208569 (matchZipper!1441 lt!2208539 s!2326))))

(declare-fun b!5415486 () Bool)

(declare-fun e!3356725 () Bool)

(assert (=> b!5415486 (= e!3356725 (matchZipper!1441 lt!2208556 (t!375113 s!2326)))))

(declare-fun b!5415487 () Bool)

(declare-fun res!2303659 () Bool)

(assert (=> b!5415487 (=> res!2303659 e!3356727)))

(assert (=> b!5415487 (= res!2303659 (or ((_ is EmptyExpr!15197) r!7292) ((_ is EmptyLang!15197) r!7292) ((_ is ElementMatch!15197) r!7292) ((_ is Union!15197) r!7292) (not ((_ is Concat!24042) r!7292))))))

(declare-fun b!5415488 () Bool)

(declare-fun res!2303656 () Bool)

(assert (=> b!5415488 (=> res!2303656 e!3356727)))

(declare-fun generalisedConcat!866 (List!61891) Regex!15197)

(assert (=> b!5415488 (= res!2303656 (not (= r!7292 (generalisedConcat!866 (exprs!5081 (h!68216 zl!343))))))))

(declare-fun b!5415489 () Bool)

(declare-fun tp!1496201 () Bool)

(declare-fun tp!1496193 () Bool)

(assert (=> b!5415489 (= e!3356735 (and tp!1496201 tp!1496193))))

(declare-fun b!5415490 () Bool)

(declare-fun e!3356718 () Bool)

(declare-fun e!3356721 () Bool)

(assert (=> b!5415490 (= e!3356718 e!3356721)))

(declare-fun res!2303658 () Bool)

(assert (=> b!5415490 (=> (not res!2303658) (not e!3356721))))

(declare-fun lt!2208570 () Regex!15197)

(assert (=> b!5415490 (= res!2303658 (= r!7292 lt!2208570))))

(assert (=> b!5415490 (= lt!2208570 (unfocusZipper!939 zl!343))))

(declare-fun b!5415491 () Bool)

(declare-fun res!2303673 () Bool)

(assert (=> b!5415491 (=> res!2303673 e!3356722)))

(assert (=> b!5415491 (= res!2303673 (not (matchZipper!1441 z!1189 s!2326)))))

(declare-fun tp!1496200 () Bool)

(declare-fun setElem!35285 () Context!9162)

(declare-fun setNonEmpty!35285 () Bool)

(declare-fun setRes!35285 () Bool)

(declare-fun inv!81239 (Context!9162) Bool)

(assert (=> setNonEmpty!35285 (= setRes!35285 (and tp!1496200 (inv!81239 setElem!35285) e!3356731))))

(declare-fun setRest!35285 () (InoxSet Context!9162))

(assert (=> setNonEmpty!35285 (= z!1189 ((_ map or) (store ((as const (Array Context!9162 Bool)) false) setElem!35285 true) setRest!35285))))

(declare-fun b!5415492 () Bool)

(declare-fun res!2303670 () Bool)

(assert (=> b!5415492 (=> res!2303670 e!3356724)))

(assert (=> b!5415492 (= res!2303670 (or ((_ is Concat!24042) (regOne!30906 r!7292)) (not ((_ is Star!15197) (regOne!30906 r!7292)))))))

(declare-fun b!5415493 () Bool)

(declare-fun res!2303677 () Bool)

(assert (=> b!5415493 (=> res!2303677 e!3356727)))

(declare-fun generalisedUnion!1126 (List!61891) Regex!15197)

(declare-fun unfocusZipperList!639 (List!61892) List!61891)

(assert (=> b!5415493 (= res!2303677 (not (= r!7292 (generalisedUnion!1126 (unfocusZipperList!639 zl!343)))))))

(declare-fun b!5415494 () Bool)

(declare-fun res!2303660 () Bool)

(assert (=> b!5415494 (=> res!2303660 e!3356717)))

(declare-fun isEmpty!33760 (List!61891) Bool)

(assert (=> b!5415494 (= res!2303660 (isEmpty!33760 (t!375114 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun b!5415495 () Bool)

(assert (=> b!5415495 (= e!3356722 e!3356715)))

(declare-fun res!2303668 () Bool)

(assert (=> b!5415495 (=> res!2303668 e!3356715)))

(assert (=> b!5415495 (= res!2303668 e!3356726)))

(declare-fun res!2303669 () Bool)

(assert (=> b!5415495 (=> (not res!2303669) (not e!3356726))))

(assert (=> b!5415495 (= res!2303669 (not lt!2208544))))

(assert (=> b!5415495 (= lt!2208544 (matchZipper!1441 lt!2208528 (t!375113 s!2326)))))

(declare-fun b!5415496 () Bool)

(declare-fun e!3356734 () Bool)

(assert (=> b!5415496 (= e!3356724 e!3356734)))

(declare-fun res!2303655 () Bool)

(assert (=> b!5415496 (=> res!2303655 e!3356734)))

(declare-fun lt!2208520 () (InoxSet Context!9162))

(assert (=> b!5415496 (= res!2303655 (not (= lt!2208528 lt!2208520)))))

(assert (=> b!5415496 (= lt!2208520 (derivationStepZipperDown!645 (reg!15526 (regOne!30906 r!7292)) lt!2208566 (h!68214 s!2326)))))

(assert (=> b!5415496 (= lt!2208566 (Context!9163 lt!2208567))))

(assert (=> b!5415496 (= lt!2208567 (Cons!61767 lt!2208538 (t!375114 (exprs!5081 (h!68216 zl!343)))))))

(assert (=> b!5415496 (= lt!2208538 (Star!15197 (reg!15526 (regOne!30906 r!7292))))))

(declare-fun b!5415497 () Bool)

(assert (=> b!5415497 (= e!3356734 e!3356733)))

(declare-fun res!2303650 () Bool)

(assert (=> b!5415497 (=> res!2303650 e!3356733)))

(assert (=> b!5415497 (= res!2303650 (not (= lt!2208546 lt!2208520)))))

(declare-fun lt!2208533 () Context!9162)

(assert (=> b!5415497 (= (flatMap!924 lt!2208539 lambda!283154) (derivationStepZipperUp!569 lt!2208533 (h!68214 s!2326)))))

(declare-fun lt!2208522 () Unit!154310)

(assert (=> b!5415497 (= lt!2208522 (lemmaFlatMapOnSingletonSet!456 lt!2208539 lt!2208533 lambda!283154))))

(declare-fun lt!2208571 () (InoxSet Context!9162))

(assert (=> b!5415497 (= lt!2208571 (derivationStepZipperUp!569 lt!2208533 (h!68214 s!2326)))))

(declare-fun derivationStepZipper!1436 ((InoxSet Context!9162) C!30664) (InoxSet Context!9162))

(assert (=> b!5415497 (= lt!2208546 (derivationStepZipper!1436 lt!2208539 (h!68214 s!2326)))))

(assert (=> b!5415497 (= lt!2208539 (store ((as const (Array Context!9162 Bool)) false) lt!2208533 true))))

(assert (=> b!5415497 (= lt!2208533 (Context!9163 (Cons!61767 (reg!15526 (regOne!30906 r!7292)) lt!2208567)))))

(declare-fun b!5415498 () Bool)

(declare-fun e!3356740 () Bool)

(assert (=> b!5415498 (= e!3356740 e!3356737)))

(declare-fun res!2303644 () Bool)

(assert (=> b!5415498 (=> res!2303644 e!3356737)))

(declare-fun lt!2208513 () List!61892)

(assert (=> b!5415498 (= res!2303644 (not (= (unfocusZipper!939 lt!2208513) (reg!15526 (regOne!30906 r!7292)))))))

(assert (=> b!5415498 (= lt!2208513 (Cons!61768 lt!2208526 Nil!61768))))

(assert (=> b!5415498 (= (flatMap!924 lt!2208549 lambda!283154) (derivationStepZipperUp!569 lt!2208566 (h!68214 s!2326)))))

(declare-fun lt!2208514 () Unit!154310)

(assert (=> b!5415498 (= lt!2208514 (lemmaFlatMapOnSingletonSet!456 lt!2208549 lt!2208566 lambda!283154))))

(assert (=> b!5415498 (= (flatMap!924 lt!2208564 lambda!283154) (derivationStepZipperUp!569 lt!2208526 (h!68214 s!2326)))))

(declare-fun lt!2208531 () Unit!154310)

(assert (=> b!5415498 (= lt!2208531 (lemmaFlatMapOnSingletonSet!456 lt!2208564 lt!2208526 lambda!283154))))

(declare-fun lt!2208518 () (InoxSet Context!9162))

(assert (=> b!5415498 (= lt!2208518 (derivationStepZipperUp!569 lt!2208566 (h!68214 s!2326)))))

(declare-fun lt!2208534 () (InoxSet Context!9162))

(assert (=> b!5415498 (= lt!2208534 (derivationStepZipperUp!569 lt!2208526 (h!68214 s!2326)))))

(assert (=> b!5415498 (= lt!2208549 (store ((as const (Array Context!9162 Bool)) false) lt!2208566 true))))

(assert (=> b!5415498 (= lt!2208564 (store ((as const (Array Context!9162 Bool)) false) lt!2208526 true))))

(assert (=> b!5415498 (= lt!2208526 (Context!9163 lt!2208515))))

(assert (=> b!5415498 (= lt!2208515 (Cons!61767 (reg!15526 (regOne!30906 r!7292)) Nil!61767))))

(declare-fun b!5415499 () Bool)

(assert (=> b!5415499 (= e!3356723 (nullable!5366 (regOne!30906 (regOne!30906 r!7292))))))

(declare-fun b!5415500 () Bool)

(declare-fun res!2303645 () Bool)

(assert (=> b!5415500 (=> res!2303645 e!3356720)))

(assert (=> b!5415500 (= res!2303645 (not (matchZipper!1441 lt!2208549 (_2!35699 lt!2208535))))))

(declare-fun b!5415501 () Bool)

(declare-fun res!2303646 () Bool)

(assert (=> b!5415501 (=> res!2303646 e!3356729)))

(assert (=> b!5415501 (= res!2303646 (not (= lt!2208570 r!7292)))))

(declare-fun res!2303642 () Bool)

(assert (=> start!568606 (=> (not res!2303642) (not e!3356718))))

(declare-fun validRegex!6933 (Regex!15197) Bool)

(assert (=> start!568606 (= res!2303642 (validRegex!6933 r!7292))))

(assert (=> start!568606 e!3356718))

(assert (=> start!568606 e!3356735))

(declare-fun condSetEmpty!35285 () Bool)

(assert (=> start!568606 (= condSetEmpty!35285 (= z!1189 ((as const (Array Context!9162 Bool)) false)))))

(assert (=> start!568606 setRes!35285))

(declare-fun e!3356719 () Bool)

(assert (=> start!568606 e!3356719))

(declare-fun e!3356736 () Bool)

(assert (=> start!568606 e!3356736))

(assert (=> b!5415502 (= e!3356720 e!3356716)))

(declare-fun res!2303666 () Bool)

(assert (=> b!5415502 (=> res!2303666 e!3356716)))

(assert (=> b!5415502 (= res!2303666 (not (matchR!7382 lt!2208521 (_1!35699 lt!2208525))))))

(declare-fun lt!2208530 () Option!15308)

(assert (=> b!5415502 (= lt!2208525 (get!21298 lt!2208530))))

(assert (=> b!5415502 (= (Exists!2378 lambda!283157) (Exists!2378 lambda!283158))))

(declare-fun lt!2208558 () Unit!154310)

(assert (=> b!5415502 (= lt!2208558 (lemmaExistCutMatchRandMatchRSpecEquivalent!1032 lt!2208521 (regTwo!30906 r!7292) s!2326))))

(assert (=> b!5415502 (= (isDefined!12011 lt!2208530) (Exists!2378 lambda!283157))))

(assert (=> b!5415502 (= lt!2208530 (findConcatSeparation!1722 lt!2208521 (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326))))

(declare-fun lt!2208540 () Unit!154310)

(assert (=> b!5415502 (= lt!2208540 (lemmaFindConcatSeparationEquivalentToExists!1486 lt!2208521 (regTwo!30906 r!7292) s!2326))))

(declare-fun lt!2208512 () Regex!15197)

(assert (=> b!5415502 (matchRSpec!2300 lt!2208512 s!2326)))

(declare-fun lt!2208517 () Unit!154310)

(assert (=> b!5415502 (= lt!2208517 (mainMatchTheorem!2300 lt!2208512 s!2326))))

(assert (=> b!5415502 (matchR!7382 lt!2208512 s!2326)))

(assert (=> b!5415502 (= lt!2208512 (Concat!24042 lt!2208521 (regTwo!30906 r!7292)))))

(assert (=> b!5415502 (= lt!2208521 (Concat!24042 (reg!15526 (regOne!30906 r!7292)) lt!2208538))))

(declare-fun lt!2208552 () Unit!154310)

(declare-fun lemmaConcatAssociative!50 (Regex!15197 Regex!15197 Regex!15197 List!61890) Unit!154310)

(assert (=> b!5415502 (= lt!2208552 (lemmaConcatAssociative!50 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (regTwo!30906 r!7292) s!2326))))

(declare-fun e!3356738 () Bool)

(assert (=> b!5415502 e!3356738))

(declare-fun res!2303647 () Bool)

(assert (=> b!5415502 (=> (not res!2303647) (not e!3356738))))

(assert (=> b!5415502 (= res!2303647 (matchR!7382 lt!2208553 lt!2208545))))

(declare-fun lt!2208537 () Unit!154310)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!220 (Regex!15197 Regex!15197 List!61890 List!61890) Unit!154310)

(assert (=> b!5415502 (= lt!2208537 (lemmaTwoRegexMatchThenConcatMatchesConcatString!220 (reg!15526 (regOne!30906 r!7292)) lt!2208536 (_1!35699 lt!2208535) (_2!35699 lt!2208535)))))

(assert (=> b!5415502 (matchR!7382 lt!2208536 (_2!35699 lt!2208535))))

(declare-fun lt!2208511 () Unit!154310)

(declare-fun theoremZipperRegexEquiv!511 ((InoxSet Context!9162) List!61892 Regex!15197 List!61890) Unit!154310)

(assert (=> b!5415502 (= lt!2208511 (theoremZipperRegexEquiv!511 lt!2208549 lt!2208541 lt!2208536 (_2!35699 lt!2208535)))))

(assert (=> b!5415502 (matchR!7382 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208535))))

(declare-fun lt!2208519 () Unit!154310)

(assert (=> b!5415502 (= lt!2208519 (theoremZipperRegexEquiv!511 lt!2208564 lt!2208513 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208535)))))

(assert (=> b!5415502 (matchZipper!1441 (store ((as const (Array Context!9162 Bool)) false) (Context!9163 (++!13567 lt!2208515 lt!2208567)) true) lt!2208545)))

(declare-fun lt!2208568 () Unit!154310)

(assert (=> b!5415502 (= lt!2208568 (lemmaConcatPreservesForall!222 lt!2208515 lt!2208567 lambda!283156))))

(declare-fun lt!2208562 () Unit!154310)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!70 (Context!9162 Context!9162 List!61890 List!61890) Unit!154310)

(assert (=> b!5415502 (= lt!2208562 (lemmaConcatenateContextMatchesConcatOfStrings!70 lt!2208526 lt!2208566 (_1!35699 lt!2208535) (_2!35699 lt!2208535)))))

(declare-fun b!5415503 () Bool)

(declare-fun res!2303648 () Bool)

(assert (=> b!5415503 (=> (not res!2303648) (not e!3356718))))

(declare-fun toList!8981 ((InoxSet Context!9162)) List!61892)

(assert (=> b!5415503 (= res!2303648 (= (toList!8981 z!1189) zl!343))))

(declare-fun b!5415504 () Bool)

(declare-fun tp_is_empty!39647 () Bool)

(declare-fun tp!1496198 () Bool)

(assert (=> b!5415504 (= e!3356736 (and tp_is_empty!39647 tp!1496198))))

(declare-fun b!5415505 () Bool)

(declare-fun tp!1496199 () Bool)

(assert (=> b!5415505 (= e!3356719 (and (inv!81239 (h!68216 zl!343)) e!3356730 tp!1496199))))

(declare-fun b!5415506 () Bool)

(assert (=> b!5415506 (= e!3356721 (not e!3356727))))

(declare-fun res!2303662 () Bool)

(assert (=> b!5415506 (=> res!2303662 e!3356727)))

(assert (=> b!5415506 (= res!2303662 (not ((_ is Cons!61768) zl!343)))))

(assert (=> b!5415506 (= lt!2208542 (matchRSpec!2300 r!7292 s!2326))))

(assert (=> b!5415506 (= lt!2208542 (matchR!7382 r!7292 s!2326))))

(declare-fun lt!2208555 () Unit!154310)

(assert (=> b!5415506 (= lt!2208555 (mainMatchTheorem!2300 r!7292 s!2326))))

(declare-fun b!5415507 () Bool)

(assert (=> b!5415507 (= e!3356728 e!3356740)))

(declare-fun res!2303667 () Bool)

(assert (=> b!5415507 (=> res!2303667 e!3356740)))

(assert (=> b!5415507 (= res!2303667 (not (= (unfocusZipper!939 (Cons!61768 lt!2208533 Nil!61768)) lt!2208553)))))

(assert (=> b!5415507 (= lt!2208553 (Concat!24042 (reg!15526 (regOne!30906 r!7292)) lt!2208536))))

(declare-fun b!5415508 () Bool)

(declare-fun res!2303652 () Bool)

(assert (=> b!5415508 (=> res!2303652 e!3356722)))

(assert (=> b!5415508 (= res!2303652 (not lt!2208510))))

(declare-fun b!5415509 () Bool)

(declare-fun Unit!154313 () Unit!154310)

(assert (=> b!5415509 (= e!3356714 Unit!154313)))

(declare-fun lt!2208529 () Unit!154310)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!434 ((InoxSet Context!9162) (InoxSet Context!9162) List!61890) Unit!154310)

(assert (=> b!5415509 (= lt!2208529 (lemmaZipperConcatMatchesSameAsBothZippers!434 lt!2208528 lt!2208556 (t!375113 s!2326)))))

(declare-fun res!2303651 () Bool)

(assert (=> b!5415509 (= res!2303651 (matchZipper!1441 lt!2208528 (t!375113 s!2326)))))

(assert (=> b!5415509 (=> res!2303651 e!3356725)))

(assert (=> b!5415509 (= (matchZipper!1441 ((_ map or) lt!2208528 lt!2208556) (t!375113 s!2326)) e!3356725)))

(declare-fun setIsEmpty!35285 () Bool)

(assert (=> setIsEmpty!35285 setRes!35285))

(declare-fun b!5415510 () Bool)

(assert (=> b!5415510 (= e!3356738 lt!2208572)))

(declare-fun b!5415511 () Bool)

(declare-fun tp!1496196 () Bool)

(assert (=> b!5415511 (= e!3356735 tp!1496196)))

(declare-fun b!5415512 () Bool)

(assert (=> b!5415512 (= e!3356735 tp_is_empty!39647)))

(declare-fun b!5415513 () Bool)

(declare-fun res!2303657 () Bool)

(assert (=> b!5415513 (=> res!2303657 e!3356727)))

(declare-fun isEmpty!33761 (List!61892) Bool)

(assert (=> b!5415513 (= res!2303657 (not (isEmpty!33761 (t!375115 zl!343))))))

(assert (= (and start!568606 res!2303642) b!5415503))

(assert (= (and b!5415503 res!2303648) b!5415490))

(assert (= (and b!5415490 res!2303658) b!5415506))

(assert (= (and b!5415506 (not res!2303662)) b!5415513))

(assert (= (and b!5415513 (not res!2303657)) b!5415488))

(assert (= (and b!5415488 (not res!2303656)) b!5415476))

(assert (= (and b!5415476 (not res!2303649)) b!5415493))

(assert (= (and b!5415493 (not res!2303677)) b!5415487))

(assert (= (and b!5415487 (not res!2303659)) b!5415483))

(assert (= (and b!5415483 (not res!2303672)) b!5415494))

(assert (= (and b!5415494 (not res!2303660)) b!5415480))

(assert (= (and b!5415480 c!944258) b!5415509))

(assert (= (and b!5415480 (not c!944258)) b!5415473))

(assert (= (and b!5415509 (not res!2303651)) b!5415486))

(assert (= (and b!5415480 (not res!2303675)) b!5415472))

(assert (= (and b!5415472 res!2303663) b!5415499))

(assert (= (and b!5415472 (not res!2303664)) b!5415492))

(assert (= (and b!5415492 (not res!2303670)) b!5415496))

(assert (= (and b!5415496 (not res!2303655)) b!5415497))

(assert (= (and b!5415497 (not res!2303650)) b!5415485))

(assert (= (and b!5415485 (not res!2303653)) b!5415501))

(assert (= (and b!5415501 (not res!2303646)) b!5415481))

(assert (= (and b!5415481 (not res!2303671)) b!5415507))

(assert (= (and b!5415507 (not res!2303667)) b!5415498))

(assert (= (and b!5415498 (not res!2303644)) b!5415477))

(assert (= (and b!5415477 (not res!2303654)) b!5415484))

(assert (= (and b!5415484 (not res!2303643)) b!5415491))

(assert (= (and b!5415491 (not res!2303673)) b!5415508))

(assert (= (and b!5415508 (not res!2303652)) b!5415495))

(assert (= (and b!5415495 res!2303669) b!5415471))

(assert (= (and b!5415495 (not res!2303668)) b!5415474))

(assert (= (and b!5415474 (not res!2303661)) b!5415469))

(assert (= (and b!5415469 (not res!2303674)) b!5415475))

(assert (= (and b!5415475 (not res!2303676)) b!5415468))

(assert (= (and b!5415468 (not res!2303665)) b!5415500))

(assert (= (and b!5415500 (not res!2303645)) b!5415502))

(assert (= (and b!5415502 res!2303647) b!5415510))

(assert (= (and b!5415502 (not res!2303666)) b!5415478))

(assert (= (and start!568606 ((_ is ElementMatch!15197) r!7292)) b!5415512))

(assert (= (and start!568606 ((_ is Concat!24042) r!7292)) b!5415489))

(assert (= (and start!568606 ((_ is Star!15197) r!7292)) b!5415511))

(assert (= (and start!568606 ((_ is Union!15197) r!7292)) b!5415482))

(assert (= (and start!568606 condSetEmpty!35285) setIsEmpty!35285))

(assert (= (and start!568606 (not condSetEmpty!35285)) setNonEmpty!35285))

(assert (= setNonEmpty!35285 b!5415470))

(assert (= b!5415505 b!5415479))

(assert (= (and start!568606 ((_ is Cons!61768) zl!343)) b!5415505))

(assert (= (and start!568606 ((_ is Cons!61766) s!2326)) b!5415504))

(declare-fun m!6439362 () Bool)

(assert (=> b!5415480 m!6439362))

(declare-fun m!6439364 () Bool)

(assert (=> b!5415480 m!6439364))

(declare-fun m!6439366 () Bool)

(assert (=> b!5415480 m!6439366))

(declare-fun m!6439368 () Bool)

(assert (=> b!5415480 m!6439368))

(declare-fun m!6439370 () Bool)

(assert (=> b!5415480 m!6439370))

(declare-fun m!6439372 () Bool)

(assert (=> b!5415480 m!6439372))

(declare-fun m!6439374 () Bool)

(assert (=> b!5415480 m!6439374))

(declare-fun m!6439376 () Bool)

(assert (=> start!568606 m!6439376))

(declare-fun m!6439378 () Bool)

(assert (=> b!5415478 m!6439378))

(declare-fun m!6439380 () Bool)

(assert (=> b!5415478 m!6439380))

(declare-fun m!6439382 () Bool)

(assert (=> b!5415478 m!6439382))

(declare-fun m!6439384 () Bool)

(assert (=> b!5415478 m!6439384))

(declare-fun m!6439386 () Bool)

(assert (=> b!5415478 m!6439386))

(declare-fun m!6439388 () Bool)

(assert (=> b!5415478 m!6439388))

(declare-fun m!6439390 () Bool)

(assert (=> b!5415478 m!6439390))

(assert (=> b!5415478 m!6439380))

(declare-fun m!6439392 () Bool)

(assert (=> b!5415478 m!6439392))

(declare-fun m!6439394 () Bool)

(assert (=> b!5415478 m!6439394))

(assert (=> b!5415478 m!6439386))

(assert (=> b!5415478 m!6439386))

(declare-fun m!6439396 () Bool)

(assert (=> b!5415478 m!6439396))

(declare-fun m!6439398 () Bool)

(assert (=> b!5415468 m!6439398))

(declare-fun m!6439400 () Bool)

(assert (=> b!5415477 m!6439400))

(declare-fun m!6439402 () Bool)

(assert (=> b!5415490 m!6439402))

(declare-fun m!6439404 () Bool)

(assert (=> b!5415498 m!6439404))

(declare-fun m!6439406 () Bool)

(assert (=> b!5415498 m!6439406))

(declare-fun m!6439408 () Bool)

(assert (=> b!5415498 m!6439408))

(declare-fun m!6439410 () Bool)

(assert (=> b!5415498 m!6439410))

(declare-fun m!6439412 () Bool)

(assert (=> b!5415498 m!6439412))

(declare-fun m!6439414 () Bool)

(assert (=> b!5415498 m!6439414))

(declare-fun m!6439416 () Bool)

(assert (=> b!5415498 m!6439416))

(declare-fun m!6439418 () Bool)

(assert (=> b!5415498 m!6439418))

(declare-fun m!6439420 () Bool)

(assert (=> b!5415498 m!6439420))

(declare-fun m!6439422 () Bool)

(assert (=> b!5415485 m!6439422))

(declare-fun m!6439424 () Bool)

(assert (=> b!5415485 m!6439424))

(declare-fun m!6439426 () Bool)

(assert (=> b!5415497 m!6439426))

(declare-fun m!6439428 () Bool)

(assert (=> b!5415497 m!6439428))

(declare-fun m!6439430 () Bool)

(assert (=> b!5415497 m!6439430))

(declare-fun m!6439432 () Bool)

(assert (=> b!5415497 m!6439432))

(declare-fun m!6439434 () Bool)

(assert (=> b!5415497 m!6439434))

(declare-fun m!6439436 () Bool)

(assert (=> b!5415471 m!6439436))

(declare-fun m!6439438 () Bool)

(assert (=> b!5415503 m!6439438))

(declare-fun m!6439440 () Bool)

(assert (=> setNonEmpty!35285 m!6439440))

(declare-fun m!6439442 () Bool)

(assert (=> b!5415499 m!6439442))

(declare-fun m!6439444 () Bool)

(assert (=> b!5415483 m!6439444))

(declare-fun m!6439446 () Bool)

(assert (=> b!5415483 m!6439446))

(declare-fun m!6439448 () Bool)

(assert (=> b!5415483 m!6439448))

(assert (=> b!5415483 m!6439448))

(declare-fun m!6439450 () Bool)

(assert (=> b!5415483 m!6439450))

(declare-fun m!6439452 () Bool)

(assert (=> b!5415483 m!6439452))

(assert (=> b!5415483 m!6439444))

(declare-fun m!6439454 () Bool)

(assert (=> b!5415483 m!6439454))

(declare-fun m!6439456 () Bool)

(assert (=> b!5415469 m!6439456))

(declare-fun m!6439458 () Bool)

(assert (=> b!5415469 m!6439458))

(declare-fun m!6439460 () Bool)

(assert (=> b!5415469 m!6439460))

(declare-fun m!6439462 () Bool)

(assert (=> b!5415469 m!6439462))

(declare-fun m!6439464 () Bool)

(assert (=> b!5415469 m!6439464))

(declare-fun m!6439466 () Bool)

(assert (=> b!5415469 m!6439466))

(declare-fun m!6439468 () Bool)

(assert (=> b!5415484 m!6439468))

(declare-fun m!6439470 () Bool)

(assert (=> b!5415484 m!6439470))

(declare-fun m!6439472 () Bool)

(assert (=> b!5415484 m!6439472))

(declare-fun m!6439474 () Bool)

(assert (=> b!5415506 m!6439474))

(declare-fun m!6439476 () Bool)

(assert (=> b!5415506 m!6439476))

(declare-fun m!6439478 () Bool)

(assert (=> b!5415506 m!6439478))

(declare-fun m!6439480 () Bool)

(assert (=> b!5415475 m!6439480))

(declare-fun m!6439482 () Bool)

(assert (=> b!5415475 m!6439482))

(declare-fun m!6439484 () Bool)

(assert (=> b!5415475 m!6439484))

(declare-fun m!6439486 () Bool)

(assert (=> b!5415475 m!6439486))

(declare-fun m!6439488 () Bool)

(assert (=> b!5415475 m!6439488))

(declare-fun m!6439490 () Bool)

(assert (=> b!5415500 m!6439490))

(assert (=> b!5415486 m!6439436))

(declare-fun m!6439492 () Bool)

(assert (=> b!5415495 m!6439492))

(declare-fun m!6439494 () Bool)

(assert (=> b!5415509 m!6439494))

(assert (=> b!5415509 m!6439492))

(declare-fun m!6439496 () Bool)

(assert (=> b!5415509 m!6439496))

(declare-fun m!6439498 () Bool)

(assert (=> b!5415491 m!6439498))

(declare-fun m!6439500 () Bool)

(assert (=> b!5415496 m!6439500))

(declare-fun m!6439502 () Bool)

(assert (=> b!5415507 m!6439502))

(declare-fun m!6439504 () Bool)

(assert (=> b!5415493 m!6439504))

(assert (=> b!5415493 m!6439504))

(declare-fun m!6439506 () Bool)

(assert (=> b!5415493 m!6439506))

(declare-fun m!6439508 () Bool)

(assert (=> b!5415502 m!6439508))

(declare-fun m!6439510 () Bool)

(assert (=> b!5415502 m!6439510))

(declare-fun m!6439512 () Bool)

(assert (=> b!5415502 m!6439512))

(assert (=> b!5415502 m!6439460))

(declare-fun m!6439514 () Bool)

(assert (=> b!5415502 m!6439514))

(declare-fun m!6439516 () Bool)

(assert (=> b!5415502 m!6439516))

(declare-fun m!6439518 () Bool)

(assert (=> b!5415502 m!6439518))

(declare-fun m!6439520 () Bool)

(assert (=> b!5415502 m!6439520))

(assert (=> b!5415502 m!6439464))

(declare-fun m!6439522 () Bool)

(assert (=> b!5415502 m!6439522))

(declare-fun m!6439524 () Bool)

(assert (=> b!5415502 m!6439524))

(declare-fun m!6439526 () Bool)

(assert (=> b!5415502 m!6439526))

(declare-fun m!6439528 () Bool)

(assert (=> b!5415502 m!6439528))

(declare-fun m!6439530 () Bool)

(assert (=> b!5415502 m!6439530))

(declare-fun m!6439532 () Bool)

(assert (=> b!5415502 m!6439532))

(assert (=> b!5415502 m!6439514))

(declare-fun m!6439534 () Bool)

(assert (=> b!5415502 m!6439534))

(declare-fun m!6439536 () Bool)

(assert (=> b!5415502 m!6439536))

(declare-fun m!6439538 () Bool)

(assert (=> b!5415502 m!6439538))

(declare-fun m!6439540 () Bool)

(assert (=> b!5415502 m!6439540))

(assert (=> b!5415502 m!6439464))

(declare-fun m!6439542 () Bool)

(assert (=> b!5415502 m!6439542))

(declare-fun m!6439544 () Bool)

(assert (=> b!5415502 m!6439544))

(assert (=> b!5415502 m!6439462))

(declare-fun m!6439546 () Bool)

(assert (=> b!5415502 m!6439546))

(declare-fun m!6439548 () Bool)

(assert (=> b!5415505 m!6439548))

(declare-fun m!6439550 () Bool)

(assert (=> b!5415513 m!6439550))

(declare-fun m!6439552 () Bool)

(assert (=> b!5415494 m!6439552))

(declare-fun m!6439554 () Bool)

(assert (=> b!5415488 m!6439554))

(check-sat (not b!5415499) (not b!5415480) (not b!5415471) (not start!568606) (not b!5415505) (not b!5415497) tp_is_empty!39647 (not setNonEmpty!35285) (not b!5415513) (not b!5415502) (not b!5415485) (not b!5415483) (not b!5415489) (not b!5415506) (not b!5415470) (not b!5415479) (not b!5415504) (not b!5415491) (not b!5415478) (not b!5415477) (not b!5415500) (not b!5415484) (not b!5415468) (not b!5415495) (not b!5415494) (not b!5415498) (not b!5415488) (not b!5415490) (not b!5415511) (not b!5415496) (not b!5415486) (not b!5415507) (not b!5415503) (not b!5415493) (not b!5415469) (not b!5415482) (not b!5415509) (not b!5415475))
(check-sat)
(get-model)

(declare-fun bs!1250933 () Bool)

(declare-fun d!1728034 () Bool)

(assert (= bs!1250933 (and d!1728034 b!5415502)))

(declare-fun lambda!283166 () Int)

(assert (=> bs!1250933 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) lt!2208521) (= (Star!15197 (reg!15526 (regOne!30906 r!7292))) (regTwo!30906 r!7292))) (= lambda!283166 lambda!283157))))

(assert (=> bs!1250933 (not (= lambda!283166 lambda!283158))))

(declare-fun bs!1250934 () Bool)

(assert (= bs!1250934 (and d!1728034 b!5415478)))

(assert (=> bs!1250934 (not (= lambda!283166 lambda!283160))))

(declare-fun bs!1250935 () Bool)

(assert (= bs!1250935 (and d!1728034 b!5415483)))

(assert (=> bs!1250935 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) (regOne!30906 r!7292)) (= (Star!15197 (reg!15526 (regOne!30906 r!7292))) (regTwo!30906 r!7292))) (= lambda!283166 lambda!283152))))

(assert (=> bs!1250934 (not (= lambda!283166 lambda!283161))))

(assert (=> bs!1250935 (not (= lambda!283166 lambda!283153))))

(assert (=> bs!1250934 (= (= (Star!15197 (reg!15526 (regOne!30906 r!7292))) lt!2208538) (= lambda!283166 lambda!283159))))

(assert (=> d!1728034 true))

(assert (=> d!1728034 true))

(declare-fun lambda!283167 () Int)

(assert (=> bs!1250933 (not (= lambda!283167 lambda!283157))))

(assert (=> bs!1250933 (not (= lambda!283167 lambda!283158))))

(assert (=> bs!1250934 (not (= lambda!283167 lambda!283160))))

(declare-fun bs!1250936 () Bool)

(assert (= bs!1250936 d!1728034))

(assert (=> bs!1250936 (not (= lambda!283167 lambda!283166))))

(assert (=> bs!1250935 (not (= lambda!283167 lambda!283152))))

(assert (=> bs!1250934 (= (= (Star!15197 (reg!15526 (regOne!30906 r!7292))) lt!2208538) (= lambda!283167 lambda!283161))))

(assert (=> bs!1250935 (not (= lambda!283167 lambda!283153))))

(assert (=> bs!1250934 (not (= lambda!283167 lambda!283159))))

(assert (=> d!1728034 true))

(assert (=> d!1728034 true))

(assert (=> d!1728034 (= (Exists!2378 lambda!283166) (Exists!2378 lambda!283167))))

(declare-fun lt!2208575 () Unit!154310)

(declare-fun choose!40951 (Regex!15197 List!61890) Unit!154310)

(assert (=> d!1728034 (= lt!2208575 (choose!40951 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208525)))))

(assert (=> d!1728034 (validRegex!6933 (reg!15526 (regOne!30906 r!7292)))))

(assert (=> d!1728034 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!408 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208525)) lt!2208575)))

(declare-fun m!6439556 () Bool)

(assert (=> bs!1250936 m!6439556))

(declare-fun m!6439558 () Bool)

(assert (=> bs!1250936 m!6439558))

(declare-fun m!6439560 () Bool)

(assert (=> bs!1250936 m!6439560))

(declare-fun m!6439566 () Bool)

(assert (=> bs!1250936 m!6439566))

(assert (=> b!5415478 d!1728034))

(declare-fun d!1728040 () Bool)

(declare-fun choose!40952 (Int) Bool)

(assert (=> d!1728040 (= (Exists!2378 lambda!283159) (choose!40952 lambda!283159))))

(declare-fun bs!1250938 () Bool)

(assert (= bs!1250938 d!1728040))

(declare-fun m!6439580 () Bool)

(assert (=> bs!1250938 m!6439580))

(assert (=> b!5415478 d!1728040))

(declare-fun d!1728048 () Bool)

(assert (=> d!1728048 (= (Exists!2378 lambda!283160) (choose!40952 lambda!283160))))

(declare-fun bs!1250939 () Bool)

(assert (= bs!1250939 d!1728048))

(declare-fun m!6439582 () Bool)

(assert (=> bs!1250939 m!6439582))

(assert (=> b!5415478 d!1728048))

(declare-fun d!1728050 () Bool)

(declare-fun isEmpty!33764 (Option!15308) Bool)

(assert (=> d!1728050 (= (isDefined!12011 (findConcatSeparation!1722 (reg!15526 (regOne!30906 r!7292)) lt!2208538 Nil!61766 (_1!35699 lt!2208525) (_1!35699 lt!2208525))) (not (isEmpty!33764 (findConcatSeparation!1722 (reg!15526 (regOne!30906 r!7292)) lt!2208538 Nil!61766 (_1!35699 lt!2208525) (_1!35699 lt!2208525)))))))

(declare-fun bs!1250940 () Bool)

(assert (= bs!1250940 d!1728050))

(assert (=> bs!1250940 m!6439380))

(declare-fun m!6439584 () Bool)

(assert (=> bs!1250940 m!6439584))

(assert (=> b!5415478 d!1728050))

(declare-fun bs!1250942 () Bool)

(declare-fun d!1728052 () Bool)

(assert (= bs!1250942 (and d!1728052 b!5415502)))

(declare-fun lambda!283172 () Int)

(assert (=> bs!1250942 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) lt!2208521) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283172 lambda!283157))))

(declare-fun bs!1250943 () Bool)

(assert (= bs!1250943 (and d!1728052 d!1728034)))

(assert (=> bs!1250943 (not (= lambda!283172 lambda!283167))))

(assert (=> bs!1250942 (not (= lambda!283172 lambda!283158))))

(declare-fun bs!1250944 () Bool)

(assert (= bs!1250944 (and d!1728052 b!5415478)))

(assert (=> bs!1250944 (not (= lambda!283172 lambda!283160))))

(assert (=> bs!1250943 (= (= lt!2208538 (Star!15197 (reg!15526 (regOne!30906 r!7292)))) (= lambda!283172 lambda!283166))))

(declare-fun bs!1250945 () Bool)

(assert (= bs!1250945 (and d!1728052 b!5415483)))

(assert (=> bs!1250945 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) (regOne!30906 r!7292)) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283172 lambda!283152))))

(assert (=> bs!1250944 (not (= lambda!283172 lambda!283161))))

(assert (=> bs!1250945 (not (= lambda!283172 lambda!283153))))

(assert (=> bs!1250944 (= lambda!283172 lambda!283159)))

(assert (=> d!1728052 true))

(assert (=> d!1728052 true))

(assert (=> d!1728052 true))

(declare-fun lambda!283173 () Int)

(assert (=> bs!1250942 (not (= lambda!283173 lambda!283157))))

(assert (=> bs!1250943 (not (= lambda!283173 lambda!283167))))

(assert (=> bs!1250942 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) lt!2208521) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283173 lambda!283158))))

(assert (=> bs!1250944 (= lambda!283173 lambda!283160)))

(assert (=> bs!1250943 (not (= lambda!283173 lambda!283166))))

(assert (=> bs!1250945 (not (= lambda!283173 lambda!283152))))

(assert (=> bs!1250944 (not (= lambda!283173 lambda!283161))))

(assert (=> bs!1250945 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) (regOne!30906 r!7292)) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283173 lambda!283153))))

(assert (=> bs!1250944 (not (= lambda!283173 lambda!283159))))

(declare-fun bs!1250946 () Bool)

(assert (= bs!1250946 d!1728052))

(assert (=> bs!1250946 (not (= lambda!283173 lambda!283172))))

(assert (=> d!1728052 true))

(assert (=> d!1728052 true))

(assert (=> d!1728052 true))

(assert (=> d!1728052 (= (Exists!2378 lambda!283172) (Exists!2378 lambda!283173))))

(declare-fun lt!2208593 () Unit!154310)

(declare-fun choose!40954 (Regex!15197 Regex!15197 List!61890) Unit!154310)

(assert (=> d!1728052 (= lt!2208593 (choose!40954 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (_1!35699 lt!2208525)))))

(assert (=> d!1728052 (validRegex!6933 (reg!15526 (regOne!30906 r!7292)))))

(assert (=> d!1728052 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1032 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (_1!35699 lt!2208525)) lt!2208593)))

(declare-fun m!6439666 () Bool)

(assert (=> bs!1250946 m!6439666))

(declare-fun m!6439668 () Bool)

(assert (=> bs!1250946 m!6439668))

(declare-fun m!6439670 () Bool)

(assert (=> bs!1250946 m!6439670))

(assert (=> bs!1250946 m!6439566))

(assert (=> b!5415478 d!1728052))

(declare-fun d!1728068 () Bool)

(assert (=> d!1728068 (= (matchR!7382 lt!2208521 (_1!35699 lt!2208525)) (matchRSpec!2300 lt!2208521 (_1!35699 lt!2208525)))))

(declare-fun lt!2208602 () Unit!154310)

(declare-fun choose!40955 (Regex!15197 List!61890) Unit!154310)

(assert (=> d!1728068 (= lt!2208602 (choose!40955 lt!2208521 (_1!35699 lt!2208525)))))

(assert (=> d!1728068 (validRegex!6933 lt!2208521)))

(assert (=> d!1728068 (= (mainMatchTheorem!2300 lt!2208521 (_1!35699 lt!2208525)) lt!2208602)))

(declare-fun bs!1250948 () Bool)

(assert (= bs!1250948 d!1728068))

(assert (=> bs!1250948 m!6439530))

(assert (=> bs!1250948 m!6439390))

(declare-fun m!6439672 () Bool)

(assert (=> bs!1250948 m!6439672))

(declare-fun m!6439674 () Bool)

(assert (=> bs!1250948 m!6439674))

(assert (=> b!5415478 d!1728068))

(declare-fun bs!1250954 () Bool)

(declare-fun d!1728070 () Bool)

(assert (= bs!1250954 (and d!1728070 b!5415502)))

(declare-fun lambda!283182 () Int)

(assert (=> bs!1250954 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) lt!2208521) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283182 lambda!283157))))

(declare-fun bs!1250955 () Bool)

(assert (= bs!1250955 (and d!1728070 d!1728034)))

(assert (=> bs!1250955 (not (= lambda!283182 lambda!283167))))

(assert (=> bs!1250954 (not (= lambda!283182 lambda!283158))))

(declare-fun bs!1250956 () Bool)

(assert (= bs!1250956 (and d!1728070 b!5415478)))

(assert (=> bs!1250956 (not (= lambda!283182 lambda!283160))))

(assert (=> bs!1250955 (= (= lt!2208538 (Star!15197 (reg!15526 (regOne!30906 r!7292)))) (= lambda!283182 lambda!283166))))

(declare-fun bs!1250957 () Bool)

(assert (= bs!1250957 (and d!1728070 b!5415483)))

(assert (=> bs!1250957 (= (and (= (_1!35699 lt!2208525) s!2326) (= (reg!15526 (regOne!30906 r!7292)) (regOne!30906 r!7292)) (= lt!2208538 (regTwo!30906 r!7292))) (= lambda!283182 lambda!283152))))

(assert (=> bs!1250956 (not (= lambda!283182 lambda!283161))))

(assert (=> bs!1250957 (not (= lambda!283182 lambda!283153))))

(declare-fun bs!1250958 () Bool)

(assert (= bs!1250958 (and d!1728070 d!1728052)))

(assert (=> bs!1250958 (= lambda!283182 lambda!283172)))

(assert (=> bs!1250956 (= lambda!283182 lambda!283159)))

(assert (=> bs!1250958 (not (= lambda!283182 lambda!283173))))

(assert (=> d!1728070 true))

(assert (=> d!1728070 true))

(assert (=> d!1728070 true))

(assert (=> d!1728070 (= (isDefined!12011 (findConcatSeparation!1722 (reg!15526 (regOne!30906 r!7292)) lt!2208538 Nil!61766 (_1!35699 lt!2208525) (_1!35699 lt!2208525))) (Exists!2378 lambda!283182))))

(declare-fun lt!2208611 () Unit!154310)

(declare-fun choose!40957 (Regex!15197 Regex!15197 List!61890) Unit!154310)

(assert (=> d!1728070 (= lt!2208611 (choose!40957 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (_1!35699 lt!2208525)))))

(assert (=> d!1728070 (validRegex!6933 (reg!15526 (regOne!30906 r!7292)))))

(assert (=> d!1728070 (= (lemmaFindConcatSeparationEquivalentToExists!1486 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (_1!35699 lt!2208525)) lt!2208611)))

(declare-fun bs!1250959 () Bool)

(assert (= bs!1250959 d!1728070))

(assert (=> bs!1250959 m!6439380))

(assert (=> bs!1250959 m!6439566))

(declare-fun m!6439726 () Bool)

(assert (=> bs!1250959 m!6439726))

(declare-fun m!6439728 () Bool)

(assert (=> bs!1250959 m!6439728))

(assert (=> bs!1250959 m!6439380))

(assert (=> bs!1250959 m!6439382))

(assert (=> b!5415478 d!1728070))

(declare-fun b!5415746 () Bool)

(declare-fun e!3356864 () Option!15308)

(assert (=> b!5415746 (= e!3356864 None!15307)))

(declare-fun d!1728086 () Bool)

(declare-fun e!3356867 () Bool)

(assert (=> d!1728086 e!3356867))

(declare-fun res!2303756 () Bool)

(assert (=> d!1728086 (=> res!2303756 e!3356867)))

(declare-fun e!3356865 () Bool)

(assert (=> d!1728086 (= res!2303756 e!3356865)))

(declare-fun res!2303759 () Bool)

(assert (=> d!1728086 (=> (not res!2303759) (not e!3356865))))

(declare-fun lt!2208631 () Option!15308)

(assert (=> d!1728086 (= res!2303759 (isDefined!12011 lt!2208631))))

(declare-fun e!3356868 () Option!15308)

(assert (=> d!1728086 (= lt!2208631 e!3356868)))

(declare-fun c!944334 () Bool)

(declare-fun e!3356866 () Bool)

(assert (=> d!1728086 (= c!944334 e!3356866)))

(declare-fun res!2303760 () Bool)

(assert (=> d!1728086 (=> (not res!2303760) (not e!3356866))))

(assert (=> d!1728086 (= res!2303760 (matchR!7382 (reg!15526 (regOne!30906 r!7292)) Nil!61766))))

(assert (=> d!1728086 (validRegex!6933 (reg!15526 (regOne!30906 r!7292)))))

(assert (=> d!1728086 (= (findConcatSeparation!1722 (reg!15526 (regOne!30906 r!7292)) lt!2208538 Nil!61766 (_1!35699 lt!2208525) (_1!35699 lt!2208525)) lt!2208631)))

(declare-fun b!5415747 () Bool)

(declare-fun res!2303757 () Bool)

(assert (=> b!5415747 (=> (not res!2303757) (not e!3356865))))

(assert (=> b!5415747 (= res!2303757 (matchR!7382 (reg!15526 (regOne!30906 r!7292)) (_1!35699 (get!21298 lt!2208631))))))

(declare-fun b!5415748 () Bool)

(declare-fun lt!2208627 () Unit!154310)

(declare-fun lt!2208630 () Unit!154310)

(assert (=> b!5415748 (= lt!2208627 lt!2208630)))

(assert (=> b!5415748 (= (++!13568 (++!13568 Nil!61766 (Cons!61766 (h!68214 (_1!35699 lt!2208525)) Nil!61766)) (t!375113 (_1!35699 lt!2208525))) (_1!35699 lt!2208525))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1845 (List!61890 C!30664 List!61890 List!61890) Unit!154310)

(assert (=> b!5415748 (= lt!2208630 (lemmaMoveElementToOtherListKeepsConcatEq!1845 Nil!61766 (h!68214 (_1!35699 lt!2208525)) (t!375113 (_1!35699 lt!2208525)) (_1!35699 lt!2208525)))))

(assert (=> b!5415748 (= e!3356864 (findConcatSeparation!1722 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (++!13568 Nil!61766 (Cons!61766 (h!68214 (_1!35699 lt!2208525)) Nil!61766)) (t!375113 (_1!35699 lt!2208525)) (_1!35699 lt!2208525)))))

(declare-fun b!5415749 () Bool)

(assert (=> b!5415749 (= e!3356868 e!3356864)))

(declare-fun c!944335 () Bool)

(assert (=> b!5415749 (= c!944335 ((_ is Nil!61766) (_1!35699 lt!2208525)))))

(declare-fun b!5415750 () Bool)

(assert (=> b!5415750 (= e!3356865 (= (++!13568 (_1!35699 (get!21298 lt!2208631)) (_2!35699 (get!21298 lt!2208631))) (_1!35699 lt!2208525)))))

(declare-fun b!5415751 () Bool)

(assert (=> b!5415751 (= e!3356868 (Some!15307 (tuple2!64793 Nil!61766 (_1!35699 lt!2208525))))))

(declare-fun b!5415752 () Bool)

(declare-fun res!2303758 () Bool)

(assert (=> b!5415752 (=> (not res!2303758) (not e!3356865))))

(assert (=> b!5415752 (= res!2303758 (matchR!7382 lt!2208538 (_2!35699 (get!21298 lt!2208631))))))

(declare-fun b!5415753 () Bool)

(assert (=> b!5415753 (= e!3356866 (matchR!7382 lt!2208538 (_1!35699 lt!2208525)))))

(declare-fun b!5415754 () Bool)

(assert (=> b!5415754 (= e!3356867 (not (isDefined!12011 lt!2208631)))))

(assert (= (and d!1728086 res!2303760) b!5415753))

(assert (= (and d!1728086 c!944334) b!5415751))

(assert (= (and d!1728086 (not c!944334)) b!5415749))

(assert (= (and b!5415749 c!944335) b!5415746))

(assert (= (and b!5415749 (not c!944335)) b!5415748))

(assert (= (and d!1728086 res!2303759) b!5415747))

(assert (= (and b!5415747 res!2303757) b!5415752))

(assert (= (and b!5415752 res!2303758) b!5415750))

(assert (= (and d!1728086 (not res!2303756)) b!5415754))

(declare-fun m!6439798 () Bool)

(assert (=> b!5415747 m!6439798))

(declare-fun m!6439800 () Bool)

(assert (=> b!5415747 m!6439800))

(assert (=> b!5415752 m!6439798))

(declare-fun m!6439802 () Bool)

(assert (=> b!5415752 m!6439802))

(declare-fun m!6439804 () Bool)

(assert (=> d!1728086 m!6439804))

(declare-fun m!6439806 () Bool)

(assert (=> d!1728086 m!6439806))

(assert (=> d!1728086 m!6439566))

(assert (=> b!5415754 m!6439804))

(declare-fun m!6439808 () Bool)

(assert (=> b!5415748 m!6439808))

(assert (=> b!5415748 m!6439808))

(declare-fun m!6439810 () Bool)

(assert (=> b!5415748 m!6439810))

(declare-fun m!6439812 () Bool)

(assert (=> b!5415748 m!6439812))

(assert (=> b!5415748 m!6439808))

(declare-fun m!6439814 () Bool)

(assert (=> b!5415748 m!6439814))

(assert (=> b!5415750 m!6439798))

(declare-fun m!6439816 () Bool)

(assert (=> b!5415750 m!6439816))

(declare-fun m!6439818 () Bool)

(assert (=> b!5415753 m!6439818))

(assert (=> b!5415478 d!1728086))

(declare-fun d!1728110 () Bool)

(assert (=> d!1728110 (= (Exists!2378 lambda!283161) (choose!40952 lambda!283161))))

(declare-fun bs!1250971 () Bool)

(assert (= bs!1250971 d!1728110))

(declare-fun m!6439820 () Bool)

(assert (=> bs!1250971 m!6439820))

(assert (=> b!5415478 d!1728110))

(declare-fun bs!1250986 () Bool)

(declare-fun b!5415814 () Bool)

(assert (= bs!1250986 (and b!5415814 d!1728070)))

(declare-fun lambda!283207 () Int)

(assert (=> bs!1250986 (not (= lambda!283207 lambda!283182))))

(declare-fun bs!1250987 () Bool)

(assert (= bs!1250987 (and b!5415814 b!5415502)))

(assert (=> bs!1250987 (not (= lambda!283207 lambda!283157))))

(declare-fun bs!1250988 () Bool)

(assert (= bs!1250988 (and b!5415814 d!1728034)))

(assert (=> bs!1250988 (= (and (= (reg!15526 lt!2208521) (reg!15526 (regOne!30906 r!7292))) (= lt!2208521 (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283207 lambda!283167))))

(assert (=> bs!1250987 (not (= lambda!283207 lambda!283158))))

(declare-fun bs!1250989 () Bool)

(assert (= bs!1250989 (and b!5415814 b!5415478)))

(assert (=> bs!1250989 (not (= lambda!283207 lambda!283160))))

(assert (=> bs!1250988 (not (= lambda!283207 lambda!283166))))

(declare-fun bs!1250990 () Bool)

(assert (= bs!1250990 (and b!5415814 b!5415483)))

(assert (=> bs!1250990 (not (= lambda!283207 lambda!283152))))

(assert (=> bs!1250989 (= (and (= (reg!15526 lt!2208521) (reg!15526 (regOne!30906 r!7292))) (= lt!2208521 lt!2208538)) (= lambda!283207 lambda!283161))))

(assert (=> bs!1250990 (not (= lambda!283207 lambda!283153))))

(declare-fun bs!1250991 () Bool)

(assert (= bs!1250991 (and b!5415814 d!1728052)))

(assert (=> bs!1250991 (not (= lambda!283207 lambda!283172))))

(assert (=> bs!1250989 (not (= lambda!283207 lambda!283159))))

(assert (=> bs!1250991 (not (= lambda!283207 lambda!283173))))

(assert (=> b!5415814 true))

(assert (=> b!5415814 true))

(declare-fun bs!1250992 () Bool)

(declare-fun b!5415816 () Bool)

(assert (= bs!1250992 (and b!5415816 d!1728070)))

(declare-fun lambda!283208 () Int)

(assert (=> bs!1250992 (not (= lambda!283208 lambda!283182))))

(declare-fun bs!1250993 () Bool)

(assert (= bs!1250993 (and b!5415816 b!5415502)))

(assert (=> bs!1250993 (not (= lambda!283208 lambda!283157))))

(declare-fun bs!1250994 () Bool)

(assert (= bs!1250994 (and b!5415816 d!1728034)))

(assert (=> bs!1250994 (not (= lambda!283208 lambda!283167))))

(declare-fun bs!1250995 () Bool)

(assert (= bs!1250995 (and b!5415816 b!5415814)))

(assert (=> bs!1250995 (not (= lambda!283208 lambda!283207))))

(assert (=> bs!1250993 (= (and (= (_1!35699 lt!2208525) s!2326) (= (regOne!30906 lt!2208521) lt!2208521) (= (regTwo!30906 lt!2208521) (regTwo!30906 r!7292))) (= lambda!283208 lambda!283158))))

(declare-fun bs!1250996 () Bool)

(assert (= bs!1250996 (and b!5415816 b!5415478)))

(assert (=> bs!1250996 (= (and (= (regOne!30906 lt!2208521) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 lt!2208521) lt!2208538)) (= lambda!283208 lambda!283160))))

(assert (=> bs!1250994 (not (= lambda!283208 lambda!283166))))

(declare-fun bs!1250997 () Bool)

(assert (= bs!1250997 (and b!5415816 b!5415483)))

(assert (=> bs!1250997 (not (= lambda!283208 lambda!283152))))

(assert (=> bs!1250996 (not (= lambda!283208 lambda!283161))))

(assert (=> bs!1250997 (= (and (= (_1!35699 lt!2208525) s!2326) (= (regOne!30906 lt!2208521) (regOne!30906 r!7292)) (= (regTwo!30906 lt!2208521) (regTwo!30906 r!7292))) (= lambda!283208 lambda!283153))))

(declare-fun bs!1250998 () Bool)

(assert (= bs!1250998 (and b!5415816 d!1728052)))

(assert (=> bs!1250998 (not (= lambda!283208 lambda!283172))))

(assert (=> bs!1250996 (not (= lambda!283208 lambda!283159))))

(assert (=> bs!1250998 (= (and (= (regOne!30906 lt!2208521) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 lt!2208521) lt!2208538)) (= lambda!283208 lambda!283173))))

(assert (=> b!5415816 true))

(assert (=> b!5415816 true))

(declare-fun b!5415811 () Bool)

(declare-fun e!3356901 () Bool)

(declare-fun e!3356900 () Bool)

(assert (=> b!5415811 (= e!3356901 e!3356900)))

(declare-fun res!2303791 () Bool)

(assert (=> b!5415811 (= res!2303791 (matchRSpec!2300 (regOne!30907 lt!2208521) (_1!35699 lt!2208525)))))

(assert (=> b!5415811 (=> res!2303791 e!3356900)))

(declare-fun b!5415812 () Bool)

(declare-fun c!944352 () Bool)

(assert (=> b!5415812 (= c!944352 ((_ is ElementMatch!15197) lt!2208521))))

(declare-fun e!3356899 () Bool)

(declare-fun e!3356898 () Bool)

(assert (=> b!5415812 (= e!3356899 e!3356898)))

(declare-fun b!5415813 () Bool)

(declare-fun e!3356902 () Bool)

(assert (=> b!5415813 (= e!3356902 e!3356899)))

(declare-fun res!2303792 () Bool)

(assert (=> b!5415813 (= res!2303792 (not ((_ is EmptyLang!15197) lt!2208521)))))

(assert (=> b!5415813 (=> (not res!2303792) (not e!3356899))))

(declare-fun e!3356903 () Bool)

(declare-fun call!387568 () Bool)

(assert (=> b!5415814 (= e!3356903 call!387568)))

(declare-fun b!5415815 () Bool)

(assert (=> b!5415815 (= e!3356898 (= (_1!35699 lt!2208525) (Cons!61766 (c!944259 lt!2208521) Nil!61766)))))

(declare-fun d!1728112 () Bool)

(declare-fun c!944351 () Bool)

(assert (=> d!1728112 (= c!944351 ((_ is EmptyExpr!15197) lt!2208521))))

(assert (=> d!1728112 (= (matchRSpec!2300 lt!2208521 (_1!35699 lt!2208525)) e!3356902)))

(declare-fun e!3356904 () Bool)

(assert (=> b!5415816 (= e!3356904 call!387568)))

(declare-fun bm!387563 () Bool)

(declare-fun call!387569 () Bool)

(declare-fun isEmpty!33765 (List!61890) Bool)

(assert (=> bm!387563 (= call!387569 (isEmpty!33765 (_1!35699 lt!2208525)))))

(declare-fun c!944350 () Bool)

(declare-fun bm!387564 () Bool)

(assert (=> bm!387564 (= call!387568 (Exists!2378 (ite c!944350 lambda!283207 lambda!283208)))))

(declare-fun b!5415817 () Bool)

(assert (=> b!5415817 (= e!3356900 (matchRSpec!2300 (regTwo!30907 lt!2208521) (_1!35699 lt!2208525)))))

(declare-fun b!5415818 () Bool)

(declare-fun c!944349 () Bool)

(assert (=> b!5415818 (= c!944349 ((_ is Union!15197) lt!2208521))))

(assert (=> b!5415818 (= e!3356898 e!3356901)))

(declare-fun b!5415819 () Bool)

(declare-fun res!2303793 () Bool)

(assert (=> b!5415819 (=> res!2303793 e!3356903)))

(assert (=> b!5415819 (= res!2303793 call!387569)))

(assert (=> b!5415819 (= e!3356904 e!3356903)))

(declare-fun b!5415820 () Bool)

(assert (=> b!5415820 (= e!3356901 e!3356904)))

(assert (=> b!5415820 (= c!944350 ((_ is Star!15197) lt!2208521))))

(declare-fun b!5415821 () Bool)

(assert (=> b!5415821 (= e!3356902 call!387569)))

(assert (= (and d!1728112 c!944351) b!5415821))

(assert (= (and d!1728112 (not c!944351)) b!5415813))

(assert (= (and b!5415813 res!2303792) b!5415812))

(assert (= (and b!5415812 c!944352) b!5415815))

(assert (= (and b!5415812 (not c!944352)) b!5415818))

(assert (= (and b!5415818 c!944349) b!5415811))

(assert (= (and b!5415818 (not c!944349)) b!5415820))

(assert (= (and b!5415811 (not res!2303791)) b!5415817))

(assert (= (and b!5415820 c!944350) b!5415819))

(assert (= (and b!5415820 (not c!944350)) b!5415816))

(assert (= (and b!5415819 (not res!2303793)) b!5415814))

(assert (= (or b!5415814 b!5415816) bm!387564))

(assert (= (or b!5415821 b!5415819) bm!387563))

(declare-fun m!6439864 () Bool)

(assert (=> b!5415811 m!6439864))

(declare-fun m!6439866 () Bool)

(assert (=> bm!387563 m!6439866))

(declare-fun m!6439868 () Bool)

(assert (=> bm!387564 m!6439868))

(declare-fun m!6439870 () Bool)

(assert (=> b!5415817 m!6439870))

(assert (=> b!5415478 d!1728112))

(declare-fun d!1728130 () Bool)

(declare-fun lt!2208648 () Regex!15197)

(assert (=> d!1728130 (validRegex!6933 lt!2208648)))

(assert (=> d!1728130 (= lt!2208648 (generalisedUnion!1126 (unfocusZipperList!639 lt!2208513)))))

(assert (=> d!1728130 (= (unfocusZipper!939 lt!2208513) lt!2208648)))

(declare-fun bs!1250999 () Bool)

(assert (= bs!1250999 d!1728130))

(declare-fun m!6439872 () Bool)

(assert (=> bs!1250999 m!6439872))

(declare-fun m!6439874 () Bool)

(assert (=> bs!1250999 m!6439874))

(assert (=> bs!1250999 m!6439874))

(declare-fun m!6439876 () Bool)

(assert (=> bs!1250999 m!6439876))

(assert (=> b!5415498 d!1728130))

(declare-fun d!1728132 () Bool)

(declare-fun choose!40958 ((InoxSet Context!9162) Int) (InoxSet Context!9162))

(assert (=> d!1728132 (= (flatMap!924 lt!2208549 lambda!283154) (choose!40958 lt!2208549 lambda!283154))))

(declare-fun bs!1251000 () Bool)

(assert (= bs!1251000 d!1728132))

(declare-fun m!6439878 () Bool)

(assert (=> bs!1251000 m!6439878))

(assert (=> b!5415498 d!1728132))

(declare-fun d!1728134 () Bool)

(assert (=> d!1728134 (= (flatMap!924 lt!2208564 lambda!283154) (choose!40958 lt!2208564 lambda!283154))))

(declare-fun bs!1251001 () Bool)

(assert (= bs!1251001 d!1728134))

(declare-fun m!6439880 () Bool)

(assert (=> bs!1251001 m!6439880))

(assert (=> b!5415498 d!1728134))

(declare-fun bm!387567 () Bool)

(declare-fun call!387572 () (InoxSet Context!9162))

(assert (=> bm!387567 (= call!387572 (derivationStepZipperDown!645 (h!68215 (exprs!5081 lt!2208566)) (Context!9163 (t!375114 (exprs!5081 lt!2208566))) (h!68214 s!2326)))))

(declare-fun b!5415836 () Bool)

(declare-fun e!3356914 () (InoxSet Context!9162))

(assert (=> b!5415836 (= e!3356914 ((_ map or) call!387572 (derivationStepZipperUp!569 (Context!9163 (t!375114 (exprs!5081 lt!2208566))) (h!68214 s!2326))))))

(declare-fun b!5415837 () Bool)

(declare-fun e!3356913 () (InoxSet Context!9162))

(assert (=> b!5415837 (= e!3356914 e!3356913)))

(declare-fun c!944358 () Bool)

(assert (=> b!5415837 (= c!944358 ((_ is Cons!61767) (exprs!5081 lt!2208566)))))

(declare-fun b!5415838 () Bool)

(assert (=> b!5415838 (= e!3356913 call!387572)))

(declare-fun b!5415839 () Bool)

(assert (=> b!5415839 (= e!3356913 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5415840 () Bool)

(declare-fun e!3356915 () Bool)

(assert (=> b!5415840 (= e!3356915 (nullable!5366 (h!68215 (exprs!5081 lt!2208566))))))

(declare-fun d!1728136 () Bool)

(declare-fun c!944357 () Bool)

(assert (=> d!1728136 (= c!944357 e!3356915)))

(declare-fun res!2303800 () Bool)

(assert (=> d!1728136 (=> (not res!2303800) (not e!3356915))))

(assert (=> d!1728136 (= res!2303800 ((_ is Cons!61767) (exprs!5081 lt!2208566)))))

(assert (=> d!1728136 (= (derivationStepZipperUp!569 lt!2208566 (h!68214 s!2326)) e!3356914)))

(assert (= (and d!1728136 res!2303800) b!5415840))

(assert (= (and d!1728136 c!944357) b!5415836))

(assert (= (and d!1728136 (not c!944357)) b!5415837))

(assert (= (and b!5415837 c!944358) b!5415838))

(assert (= (and b!5415837 (not c!944358)) b!5415839))

(assert (= (or b!5415836 b!5415838) bm!387567))

(declare-fun m!6439886 () Bool)

(assert (=> bm!387567 m!6439886))

(declare-fun m!6439888 () Bool)

(assert (=> b!5415836 m!6439888))

(declare-fun m!6439890 () Bool)

(assert (=> b!5415840 m!6439890))

(assert (=> b!5415498 d!1728136))

(declare-fun d!1728140 () Bool)

(declare-fun dynLambda!24338 (Int Context!9162) (InoxSet Context!9162))

(assert (=> d!1728140 (= (flatMap!924 lt!2208564 lambda!283154) (dynLambda!24338 lambda!283154 lt!2208526))))

(declare-fun lt!2208652 () Unit!154310)

(declare-fun choose!40959 ((InoxSet Context!9162) Context!9162 Int) Unit!154310)

(assert (=> d!1728140 (= lt!2208652 (choose!40959 lt!2208564 lt!2208526 lambda!283154))))

(assert (=> d!1728140 (= lt!2208564 (store ((as const (Array Context!9162 Bool)) false) lt!2208526 true))))

(assert (=> d!1728140 (= (lemmaFlatMapOnSingletonSet!456 lt!2208564 lt!2208526 lambda!283154) lt!2208652)))

(declare-fun b_lambda!206797 () Bool)

(assert (=> (not b_lambda!206797) (not d!1728140)))

(declare-fun bs!1251007 () Bool)

(assert (= bs!1251007 d!1728140))

(assert (=> bs!1251007 m!6439404))

(declare-fun m!6439892 () Bool)

(assert (=> bs!1251007 m!6439892))

(declare-fun m!6439894 () Bool)

(assert (=> bs!1251007 m!6439894))

(assert (=> bs!1251007 m!6439418))

(assert (=> b!5415498 d!1728140))

(declare-fun d!1728142 () Bool)

(assert (=> d!1728142 (= (flatMap!924 lt!2208549 lambda!283154) (dynLambda!24338 lambda!283154 lt!2208566))))

(declare-fun lt!2208653 () Unit!154310)

(assert (=> d!1728142 (= lt!2208653 (choose!40959 lt!2208549 lt!2208566 lambda!283154))))

(assert (=> d!1728142 (= lt!2208549 (store ((as const (Array Context!9162 Bool)) false) lt!2208566 true))))

(assert (=> d!1728142 (= (lemmaFlatMapOnSingletonSet!456 lt!2208549 lt!2208566 lambda!283154) lt!2208653)))

(declare-fun b_lambda!206799 () Bool)

(assert (=> (not b_lambda!206799) (not d!1728142)))

(declare-fun bs!1251008 () Bool)

(assert (= bs!1251008 d!1728142))

(assert (=> bs!1251008 m!6439406))

(declare-fun m!6439896 () Bool)

(assert (=> bs!1251008 m!6439896))

(declare-fun m!6439898 () Bool)

(assert (=> bs!1251008 m!6439898))

(assert (=> bs!1251008 m!6439414))

(assert (=> b!5415498 d!1728142))

(declare-fun bm!387568 () Bool)

(declare-fun call!387573 () (InoxSet Context!9162))

(assert (=> bm!387568 (= call!387573 (derivationStepZipperDown!645 (h!68215 (exprs!5081 lt!2208526)) (Context!9163 (t!375114 (exprs!5081 lt!2208526))) (h!68214 s!2326)))))

(declare-fun b!5415841 () Bool)

(declare-fun e!3356917 () (InoxSet Context!9162))

(assert (=> b!5415841 (= e!3356917 ((_ map or) call!387573 (derivationStepZipperUp!569 (Context!9163 (t!375114 (exprs!5081 lt!2208526))) (h!68214 s!2326))))))

(declare-fun b!5415842 () Bool)

(declare-fun e!3356916 () (InoxSet Context!9162))

(assert (=> b!5415842 (= e!3356917 e!3356916)))

(declare-fun c!944360 () Bool)

(assert (=> b!5415842 (= c!944360 ((_ is Cons!61767) (exprs!5081 lt!2208526)))))

(declare-fun b!5415843 () Bool)

(assert (=> b!5415843 (= e!3356916 call!387573)))

(declare-fun b!5415844 () Bool)

(assert (=> b!5415844 (= e!3356916 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5415845 () Bool)

(declare-fun e!3356918 () Bool)

(assert (=> b!5415845 (= e!3356918 (nullable!5366 (h!68215 (exprs!5081 lt!2208526))))))

(declare-fun d!1728144 () Bool)

(declare-fun c!944359 () Bool)

(assert (=> d!1728144 (= c!944359 e!3356918)))

(declare-fun res!2303801 () Bool)

(assert (=> d!1728144 (=> (not res!2303801) (not e!3356918))))

(assert (=> d!1728144 (= res!2303801 ((_ is Cons!61767) (exprs!5081 lt!2208526)))))

(assert (=> d!1728144 (= (derivationStepZipperUp!569 lt!2208526 (h!68214 s!2326)) e!3356917)))

(assert (= (and d!1728144 res!2303801) b!5415845))

(assert (= (and d!1728144 c!944359) b!5415841))

(assert (= (and d!1728144 (not c!944359)) b!5415842))

(assert (= (and b!5415842 c!944360) b!5415843))

(assert (= (and b!5415842 (not c!944360)) b!5415844))

(assert (= (or b!5415841 b!5415843) bm!387568))

(declare-fun m!6439900 () Bool)

(assert (=> bm!387568 m!6439900))

(declare-fun m!6439902 () Bool)

(assert (=> b!5415841 m!6439902))

(declare-fun m!6439904 () Bool)

(assert (=> b!5415845 m!6439904))

(assert (=> b!5415498 d!1728144))

(declare-fun d!1728146 () Bool)

(declare-fun lt!2208656 () Regex!15197)

(assert (=> d!1728146 (validRegex!6933 lt!2208656)))

(assert (=> d!1728146 (= lt!2208656 (generalisedUnion!1126 (unfocusZipperList!639 lt!2208541)))))

(assert (=> d!1728146 (= (unfocusZipper!939 lt!2208541) lt!2208656)))

(declare-fun bs!1251009 () Bool)

(assert (= bs!1251009 d!1728146))

(declare-fun m!6439906 () Bool)

(assert (=> bs!1251009 m!6439906))

(declare-fun m!6439908 () Bool)

(assert (=> bs!1251009 m!6439908))

(assert (=> bs!1251009 m!6439908))

(declare-fun m!6439910 () Bool)

(assert (=> bs!1251009 m!6439910))

(assert (=> b!5415477 d!1728146))

(declare-fun d!1728148 () Bool)

(assert (=> d!1728148 (= (flatMap!924 lt!2208539 lambda!283154) (choose!40958 lt!2208539 lambda!283154))))

(declare-fun bs!1251010 () Bool)

(assert (= bs!1251010 d!1728148))

(declare-fun m!6439912 () Bool)

(assert (=> bs!1251010 m!6439912))

(assert (=> b!5415497 d!1728148))

(declare-fun bm!387569 () Bool)

(declare-fun call!387574 () (InoxSet Context!9162))

(assert (=> bm!387569 (= call!387574 (derivationStepZipperDown!645 (h!68215 (exprs!5081 lt!2208533)) (Context!9163 (t!375114 (exprs!5081 lt!2208533))) (h!68214 s!2326)))))

(declare-fun e!3356920 () (InoxSet Context!9162))

(declare-fun b!5415846 () Bool)

(assert (=> b!5415846 (= e!3356920 ((_ map or) call!387574 (derivationStepZipperUp!569 (Context!9163 (t!375114 (exprs!5081 lt!2208533))) (h!68214 s!2326))))))

(declare-fun b!5415847 () Bool)

(declare-fun e!3356919 () (InoxSet Context!9162))

(assert (=> b!5415847 (= e!3356920 e!3356919)))

(declare-fun c!944362 () Bool)

(assert (=> b!5415847 (= c!944362 ((_ is Cons!61767) (exprs!5081 lt!2208533)))))

(declare-fun b!5415848 () Bool)

(assert (=> b!5415848 (= e!3356919 call!387574)))

(declare-fun b!5415849 () Bool)

(assert (=> b!5415849 (= e!3356919 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5415850 () Bool)

(declare-fun e!3356921 () Bool)

(assert (=> b!5415850 (= e!3356921 (nullable!5366 (h!68215 (exprs!5081 lt!2208533))))))

(declare-fun d!1728150 () Bool)

(declare-fun c!944361 () Bool)

(assert (=> d!1728150 (= c!944361 e!3356921)))

(declare-fun res!2303802 () Bool)

(assert (=> d!1728150 (=> (not res!2303802) (not e!3356921))))

(assert (=> d!1728150 (= res!2303802 ((_ is Cons!61767) (exprs!5081 lt!2208533)))))

(assert (=> d!1728150 (= (derivationStepZipperUp!569 lt!2208533 (h!68214 s!2326)) e!3356920)))

(assert (= (and d!1728150 res!2303802) b!5415850))

(assert (= (and d!1728150 c!944361) b!5415846))

(assert (= (and d!1728150 (not c!944361)) b!5415847))

(assert (= (and b!5415847 c!944362) b!5415848))

(assert (= (and b!5415847 (not c!944362)) b!5415849))

(assert (= (or b!5415846 b!5415848) bm!387569))

(declare-fun m!6439914 () Bool)

(assert (=> bm!387569 m!6439914))

(declare-fun m!6439916 () Bool)

(assert (=> b!5415846 m!6439916))

(declare-fun m!6439918 () Bool)

(assert (=> b!5415850 m!6439918))

(assert (=> b!5415497 d!1728150))

(declare-fun d!1728152 () Bool)

(assert (=> d!1728152 (= (flatMap!924 lt!2208539 lambda!283154) (dynLambda!24338 lambda!283154 lt!2208533))))

(declare-fun lt!2208657 () Unit!154310)

(assert (=> d!1728152 (= lt!2208657 (choose!40959 lt!2208539 lt!2208533 lambda!283154))))

(assert (=> d!1728152 (= lt!2208539 (store ((as const (Array Context!9162 Bool)) false) lt!2208533 true))))

(assert (=> d!1728152 (= (lemmaFlatMapOnSingletonSet!456 lt!2208539 lt!2208533 lambda!283154) lt!2208657)))

(declare-fun b_lambda!206801 () Bool)

(assert (=> (not b_lambda!206801) (not d!1728152)))

(declare-fun bs!1251011 () Bool)

(assert (= bs!1251011 d!1728152))

(assert (=> bs!1251011 m!6439430))

(declare-fun m!6439920 () Bool)

(assert (=> bs!1251011 m!6439920))

(declare-fun m!6439922 () Bool)

(assert (=> bs!1251011 m!6439922))

(assert (=> bs!1251011 m!6439428))

(assert (=> b!5415497 d!1728152))

(declare-fun bs!1251012 () Bool)

(declare-fun d!1728154 () Bool)

(assert (= bs!1251012 (and d!1728154 b!5415480)))

(declare-fun lambda!283216 () Int)

(assert (=> bs!1251012 (= lambda!283216 lambda!283154)))

(assert (=> d!1728154 true))

(assert (=> d!1728154 (= (derivationStepZipper!1436 lt!2208539 (h!68214 s!2326)) (flatMap!924 lt!2208539 lambda!283216))))

(declare-fun bs!1251013 () Bool)

(assert (= bs!1251013 d!1728154))

(declare-fun m!6439924 () Bool)

(assert (=> bs!1251013 m!6439924))

(assert (=> b!5415497 d!1728154))

(declare-fun bm!387582 () Bool)

(declare-fun call!387589 () List!61891)

(declare-fun call!387587 () List!61891)

(assert (=> bm!387582 (= call!387589 call!387587)))

(declare-fun b!5415890 () Bool)

(declare-fun e!3356945 () (InoxSet Context!9162))

(declare-fun e!3356942 () (InoxSet Context!9162))

(assert (=> b!5415890 (= e!3356945 e!3356942)))

(declare-fun c!944376 () Bool)

(assert (=> b!5415890 (= c!944376 ((_ is Union!15197) (reg!15526 (regOne!30906 r!7292))))))

(declare-fun b!5415891 () Bool)

(declare-fun e!3356943 () (InoxSet Context!9162))

(assert (=> b!5415891 (= e!3356943 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5415892 () Bool)

(assert (=> b!5415892 (= e!3356945 (store ((as const (Array Context!9162 Bool)) false) lt!2208566 true))))

(declare-fun bm!387583 () Bool)

(declare-fun call!387588 () (InoxSet Context!9162))

(assert (=> bm!387583 (= call!387588 (derivationStepZipperDown!645 (ite c!944376 (regTwo!30907 (reg!15526 (regOne!30906 r!7292))) (regOne!30906 (reg!15526 (regOne!30906 r!7292)))) (ite c!944376 lt!2208566 (Context!9163 call!387587)) (h!68214 s!2326)))))

(declare-fun bm!387584 () Bool)

(declare-fun call!387591 () (InoxSet Context!9162))

(declare-fun call!387592 () (InoxSet Context!9162))

(assert (=> bm!387584 (= call!387591 call!387592)))

(declare-fun b!5415893 () Bool)

(declare-fun e!3356941 () (InoxSet Context!9162))

(declare-fun call!387590 () (InoxSet Context!9162))

(assert (=> b!5415893 (= e!3356941 call!387590)))

(declare-fun b!5415894 () Bool)

(assert (=> b!5415894 (= e!3356943 call!387590)))

(declare-fun bm!387585 () Bool)

(assert (=> bm!387585 (= call!387590 call!387591)))

(declare-fun b!5415895 () Bool)

(declare-fun c!944380 () Bool)

(assert (=> b!5415895 (= c!944380 ((_ is Star!15197) (reg!15526 (regOne!30906 r!7292))))))

(assert (=> b!5415895 (= e!3356941 e!3356943)))

(declare-fun b!5415896 () Bool)

(assert (=> b!5415896 (= e!3356942 ((_ map or) call!387592 call!387588))))

(declare-fun bm!387586 () Bool)

(declare-fun c!944377 () Bool)

(declare-fun c!944379 () Bool)

(assert (=> bm!387586 (= call!387592 (derivationStepZipperDown!645 (ite c!944376 (regOne!30907 (reg!15526 (regOne!30906 r!7292))) (ite c!944377 (regTwo!30906 (reg!15526 (regOne!30906 r!7292))) (ite c!944379 (regOne!30906 (reg!15526 (regOne!30906 r!7292))) (reg!15526 (reg!15526 (regOne!30906 r!7292)))))) (ite (or c!944376 c!944377) lt!2208566 (Context!9163 call!387589)) (h!68214 s!2326)))))

(declare-fun b!5415889 () Bool)

(declare-fun e!3356939 () Bool)

(assert (=> b!5415889 (= c!944377 e!3356939)))

(declare-fun res!2303815 () Bool)

(assert (=> b!5415889 (=> (not res!2303815) (not e!3356939))))

(assert (=> b!5415889 (= res!2303815 ((_ is Concat!24042) (reg!15526 (regOne!30906 r!7292))))))

(declare-fun e!3356944 () (InoxSet Context!9162))

(assert (=> b!5415889 (= e!3356942 e!3356944)))

(declare-fun d!1728156 () Bool)

(declare-fun c!944381 () Bool)

(assert (=> d!1728156 (= c!944381 (and ((_ is ElementMatch!15197) (reg!15526 (regOne!30906 r!7292))) (= (c!944259 (reg!15526 (regOne!30906 r!7292))) (h!68214 s!2326))))))

(assert (=> d!1728156 (= (derivationStepZipperDown!645 (reg!15526 (regOne!30906 r!7292)) lt!2208566 (h!68214 s!2326)) e!3356945)))

(declare-fun bm!387587 () Bool)

(declare-fun $colon$colon!1500 (List!61891 Regex!15197) List!61891)

(assert (=> bm!387587 (= call!387587 ($colon$colon!1500 (exprs!5081 lt!2208566) (ite (or c!944377 c!944379) (regTwo!30906 (reg!15526 (regOne!30906 r!7292))) (reg!15526 (regOne!30906 r!7292)))))))

(declare-fun b!5415897 () Bool)

(assert (=> b!5415897 (= e!3356944 e!3356941)))

(assert (=> b!5415897 (= c!944379 ((_ is Concat!24042) (reg!15526 (regOne!30906 r!7292))))))

(declare-fun b!5415898 () Bool)

(assert (=> b!5415898 (= e!3356944 ((_ map or) call!387588 call!387591))))

(declare-fun b!5415899 () Bool)

(assert (=> b!5415899 (= e!3356939 (nullable!5366 (regOne!30906 (reg!15526 (regOne!30906 r!7292)))))))

(assert (= (and d!1728156 c!944381) b!5415892))

(assert (= (and d!1728156 (not c!944381)) b!5415890))

(assert (= (and b!5415890 c!944376) b!5415896))

(assert (= (and b!5415890 (not c!944376)) b!5415889))

(assert (= (and b!5415889 res!2303815) b!5415899))

(assert (= (and b!5415889 c!944377) b!5415898))

(assert (= (and b!5415889 (not c!944377)) b!5415897))

(assert (= (and b!5415897 c!944379) b!5415893))

(assert (= (and b!5415897 (not c!944379)) b!5415895))

(assert (= (and b!5415895 c!944380) b!5415894))

(assert (= (and b!5415895 (not c!944380)) b!5415891))

(assert (= (or b!5415893 b!5415894) bm!387582))

(assert (= (or b!5415893 b!5415894) bm!387585))

(assert (= (or b!5415898 bm!387582) bm!387587))

(assert (= (or b!5415898 bm!387585) bm!387584))

(assert (= (or b!5415896 b!5415898) bm!387583))

(assert (= (or b!5415896 bm!387584) bm!387586))

(declare-fun m!6439934 () Bool)

(assert (=> b!5415899 m!6439934))

(assert (=> b!5415892 m!6439414))

(declare-fun m!6439936 () Bool)

(assert (=> bm!387587 m!6439936))

(declare-fun m!6439938 () Bool)

(assert (=> bm!387586 m!6439938))

(declare-fun m!6439940 () Bool)

(assert (=> bm!387583 m!6439940))

(assert (=> b!5415496 d!1728156))

(declare-fun d!1728162 () Bool)

(assert (=> d!1728162 (isDefined!12011 (findConcatSeparationZippers!54 lt!2208564 (store ((as const (Array Context!9162 Bool)) false) lt!2208566 true) Nil!61766 s!2326 s!2326))))

(declare-fun lt!2208661 () Unit!154310)

(declare-fun choose!40963 ((InoxSet Context!9162) Context!9162 List!61890) Unit!154310)

(assert (=> d!1728162 (= lt!2208661 (choose!40963 lt!2208564 lt!2208566 s!2326))))

(assert (=> d!1728162 (matchZipper!1441 (appendTo!56 lt!2208564 lt!2208566) s!2326)))

(assert (=> d!1728162 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!54 lt!2208564 lt!2208566 s!2326) lt!2208661)))

(declare-fun bs!1251021 () Bool)

(assert (= bs!1251021 d!1728162))

(declare-fun m!6439942 () Bool)

(assert (=> bs!1251021 m!6439942))

(assert (=> bs!1251021 m!6439466))

(assert (=> bs!1251021 m!6439414))

(assert (=> bs!1251021 m!6439466))

(declare-fun m!6439944 () Bool)

(assert (=> bs!1251021 m!6439944))

(assert (=> bs!1251021 m!6439414))

(declare-fun m!6439946 () Bool)

(assert (=> bs!1251021 m!6439946))

(assert (=> bs!1251021 m!6439946))

(declare-fun m!6439948 () Bool)

(assert (=> bs!1251021 m!6439948))

(assert (=> b!5415475 d!1728162))

(declare-fun b!5415947 () Bool)

(declare-fun e!3356973 () List!61890)

(assert (=> b!5415947 (= e!3356973 (_2!35699 lt!2208535))))

(declare-fun d!1728164 () Bool)

(declare-fun e!3356974 () Bool)

(assert (=> d!1728164 e!3356974))

(declare-fun res!2303839 () Bool)

(assert (=> d!1728164 (=> (not res!2303839) (not e!3356974))))

(declare-fun lt!2208664 () List!61890)

(declare-fun content!11097 (List!61890) (InoxSet C!30664))

(assert (=> d!1728164 (= res!2303839 (= (content!11097 lt!2208664) ((_ map or) (content!11097 (_1!35699 lt!2208535)) (content!11097 (_2!35699 lt!2208535)))))))

(assert (=> d!1728164 (= lt!2208664 e!3356973)))

(declare-fun c!944394 () Bool)

(assert (=> d!1728164 (= c!944394 ((_ is Nil!61766) (_1!35699 lt!2208535)))))

(assert (=> d!1728164 (= (++!13568 (_1!35699 lt!2208535) (_2!35699 lt!2208535)) lt!2208664)))

(declare-fun b!5415948 () Bool)

(assert (=> b!5415948 (= e!3356973 (Cons!61766 (h!68214 (_1!35699 lt!2208535)) (++!13568 (t!375113 (_1!35699 lt!2208535)) (_2!35699 lt!2208535))))))

(declare-fun b!5415949 () Bool)

(declare-fun res!2303840 () Bool)

(assert (=> b!5415949 (=> (not res!2303840) (not e!3356974))))

(declare-fun size!39867 (List!61890) Int)

(assert (=> b!5415949 (= res!2303840 (= (size!39867 lt!2208664) (+ (size!39867 (_1!35699 lt!2208535)) (size!39867 (_2!35699 lt!2208535)))))))

(declare-fun b!5415950 () Bool)

(assert (=> b!5415950 (= e!3356974 (or (not (= (_2!35699 lt!2208535) Nil!61766)) (= lt!2208664 (_1!35699 lt!2208535))))))

(assert (= (and d!1728164 c!944394) b!5415947))

(assert (= (and d!1728164 (not c!944394)) b!5415948))

(assert (= (and d!1728164 res!2303839) b!5415949))

(assert (= (and b!5415949 res!2303840) b!5415950))

(declare-fun m!6439950 () Bool)

(assert (=> d!1728164 m!6439950))

(declare-fun m!6439952 () Bool)

(assert (=> d!1728164 m!6439952))

(declare-fun m!6439954 () Bool)

(assert (=> d!1728164 m!6439954))

(declare-fun m!6439956 () Bool)

(assert (=> b!5415948 m!6439956))

(declare-fun m!6439958 () Bool)

(assert (=> b!5415949 m!6439958))

(declare-fun m!6439960 () Bool)

(assert (=> b!5415949 m!6439960))

(declare-fun m!6439962 () Bool)

(assert (=> b!5415949 m!6439962))

(assert (=> b!5415475 d!1728164))

(declare-fun d!1728166 () Bool)

(assert (=> d!1728166 (= (get!21298 lt!2208557) (v!51336 lt!2208557))))

(assert (=> b!5415475 d!1728166))

(declare-fun b!5415979 () Bool)

(declare-fun res!2303857 () Bool)

(declare-fun e!3356992 () Bool)

(assert (=> b!5415979 (=> (not res!2303857) (not e!3356992))))

(declare-fun lt!2208682 () Option!15308)

(assert (=> b!5415979 (= res!2303857 (matchZipper!1441 lt!2208564 (_1!35699 (get!21298 lt!2208682))))))

(declare-fun b!5415980 () Bool)

(declare-fun e!3356995 () Option!15308)

(assert (=> b!5415980 (= e!3356995 None!15307)))

(declare-fun b!5415981 () Bool)

(declare-fun lt!2208681 () Unit!154310)

(declare-fun lt!2208680 () Unit!154310)

(assert (=> b!5415981 (= lt!2208681 lt!2208680)))

(assert (=> b!5415981 (= (++!13568 (++!13568 Nil!61766 (Cons!61766 (h!68214 s!2326) Nil!61766)) (t!375113 s!2326)) s!2326)))

(assert (=> b!5415981 (= lt!2208680 (lemmaMoveElementToOtherListKeepsConcatEq!1845 Nil!61766 (h!68214 s!2326) (t!375113 s!2326) s!2326))))

(assert (=> b!5415981 (= e!3356995 (findConcatSeparationZippers!54 lt!2208564 lt!2208549 (++!13568 Nil!61766 (Cons!61766 (h!68214 s!2326) Nil!61766)) (t!375113 s!2326) s!2326))))

(declare-fun b!5415982 () Bool)

(declare-fun e!3356991 () Option!15308)

(assert (=> b!5415982 (= e!3356991 (Some!15307 (tuple2!64793 Nil!61766 s!2326)))))

(declare-fun d!1728168 () Bool)

(declare-fun e!3356994 () Bool)

(assert (=> d!1728168 e!3356994))

(declare-fun res!2303854 () Bool)

(assert (=> d!1728168 (=> res!2303854 e!3356994)))

(assert (=> d!1728168 (= res!2303854 e!3356992)))

(declare-fun res!2303855 () Bool)

(assert (=> d!1728168 (=> (not res!2303855) (not e!3356992))))

(assert (=> d!1728168 (= res!2303855 (isDefined!12011 lt!2208682))))

(assert (=> d!1728168 (= lt!2208682 e!3356991)))

(declare-fun c!944404 () Bool)

(declare-fun e!3356993 () Bool)

(assert (=> d!1728168 (= c!944404 e!3356993)))

(declare-fun res!2303856 () Bool)

(assert (=> d!1728168 (=> (not res!2303856) (not e!3356993))))

(assert (=> d!1728168 (= res!2303856 (matchZipper!1441 lt!2208564 Nil!61766))))

(assert (=> d!1728168 (= (++!13568 Nil!61766 s!2326) s!2326)))

(assert (=> d!1728168 (= (findConcatSeparationZippers!54 lt!2208564 lt!2208549 Nil!61766 s!2326 s!2326) lt!2208682)))

(declare-fun b!5415983 () Bool)

(assert (=> b!5415983 (= e!3356992 (= (++!13568 (_1!35699 (get!21298 lt!2208682)) (_2!35699 (get!21298 lt!2208682))) s!2326))))

(declare-fun b!5415984 () Bool)

(declare-fun res!2303853 () Bool)

(assert (=> b!5415984 (=> (not res!2303853) (not e!3356992))))

(assert (=> b!5415984 (= res!2303853 (matchZipper!1441 lt!2208549 (_2!35699 (get!21298 lt!2208682))))))

(declare-fun b!5415985 () Bool)

(assert (=> b!5415985 (= e!3356991 e!3356995)))

(declare-fun c!944403 () Bool)

(assert (=> b!5415985 (= c!944403 ((_ is Nil!61766) s!2326))))

(declare-fun b!5415986 () Bool)

(assert (=> b!5415986 (= e!3356994 (not (isDefined!12011 lt!2208682)))))

(declare-fun b!5415987 () Bool)

(assert (=> b!5415987 (= e!3356993 (matchZipper!1441 lt!2208549 s!2326))))

(assert (= (and d!1728168 res!2303856) b!5415987))

(assert (= (and d!1728168 c!944404) b!5415982))

(assert (= (and d!1728168 (not c!944404)) b!5415985))

(assert (= (and b!5415985 c!944403) b!5415980))

(assert (= (and b!5415985 (not c!944403)) b!5415981))

(assert (= (and d!1728168 res!2303855) b!5415979))

(assert (= (and b!5415979 res!2303857) b!5415984))

(assert (= (and b!5415984 res!2303853) b!5415983))

(assert (= (and d!1728168 (not res!2303854)) b!5415986))

(declare-fun m!6439978 () Bool)

(assert (=> d!1728168 m!6439978))

(declare-fun m!6439980 () Bool)

(assert (=> d!1728168 m!6439980))

(declare-fun m!6439982 () Bool)

(assert (=> d!1728168 m!6439982))

(assert (=> b!5415986 m!6439978))

(declare-fun m!6439984 () Bool)

(assert (=> b!5415983 m!6439984))

(declare-fun m!6439986 () Bool)

(assert (=> b!5415983 m!6439986))

(assert (=> b!5415984 m!6439984))

(declare-fun m!6439988 () Bool)

(assert (=> b!5415984 m!6439988))

(declare-fun m!6439990 () Bool)

(assert (=> b!5415987 m!6439990))

(assert (=> b!5415979 m!6439984))

(declare-fun m!6439992 () Bool)

(assert (=> b!5415979 m!6439992))

(declare-fun m!6439994 () Bool)

(assert (=> b!5415981 m!6439994))

(assert (=> b!5415981 m!6439994))

(declare-fun m!6439996 () Bool)

(assert (=> b!5415981 m!6439996))

(declare-fun m!6439998 () Bool)

(assert (=> b!5415981 m!6439998))

(assert (=> b!5415981 m!6439994))

(declare-fun m!6440000 () Bool)

(assert (=> b!5415981 m!6440000))

(assert (=> b!5415475 d!1728168))

(declare-fun d!1728176 () Bool)

(assert (=> d!1728176 (= (isDefined!12011 lt!2208557) (not (isEmpty!33764 lt!2208557)))))

(declare-fun bs!1251037 () Bool)

(assert (= bs!1251037 d!1728176))

(declare-fun m!6440002 () Bool)

(assert (=> bs!1251037 m!6440002))

(assert (=> b!5415475 d!1728176))

(declare-fun d!1728178 () Bool)

(declare-fun c!944409 () Bool)

(assert (=> d!1728178 (= c!944409 (isEmpty!33765 (t!375113 s!2326)))))

(declare-fun e!3357007 () Bool)

(assert (=> d!1728178 (= (matchZipper!1441 lt!2208528 (t!375113 s!2326)) e!3357007)))

(declare-fun b!5416009 () Bool)

(declare-fun nullableZipper!1450 ((InoxSet Context!9162)) Bool)

(assert (=> b!5416009 (= e!3357007 (nullableZipper!1450 lt!2208528))))

(declare-fun b!5416010 () Bool)

(declare-fun head!11617 (List!61890) C!30664)

(declare-fun tail!10714 (List!61890) List!61890)

(assert (=> b!5416010 (= e!3357007 (matchZipper!1441 (derivationStepZipper!1436 lt!2208528 (head!11617 (t!375113 s!2326))) (tail!10714 (t!375113 s!2326))))))

(assert (= (and d!1728178 c!944409) b!5416009))

(assert (= (and d!1728178 (not c!944409)) b!5416010))

(declare-fun m!6440012 () Bool)

(assert (=> d!1728178 m!6440012))

(declare-fun m!6440014 () Bool)

(assert (=> b!5416009 m!6440014))

(declare-fun m!6440016 () Bool)

(assert (=> b!5416010 m!6440016))

(assert (=> b!5416010 m!6440016))

(declare-fun m!6440018 () Bool)

(assert (=> b!5416010 m!6440018))

(declare-fun m!6440020 () Bool)

(assert (=> b!5416010 m!6440020))

(assert (=> b!5416010 m!6440018))

(assert (=> b!5416010 m!6440020))

(declare-fun m!6440024 () Bool)

(assert (=> b!5416010 m!6440024))

(assert (=> b!5415495 d!1728178))

(declare-fun d!1728180 () Bool)

(assert (=> d!1728180 (= (isEmpty!33760 (t!375114 (exprs!5081 (h!68216 zl!343)))) ((_ is Nil!61767) (t!375114 (exprs!5081 (h!68216 zl!343)))))))

(assert (=> b!5415494 d!1728180))

(declare-fun b!5416011 () Bool)

(declare-fun e!3357008 () Option!15308)

(assert (=> b!5416011 (= e!3357008 None!15307)))

(declare-fun d!1728186 () Bool)

(declare-fun e!3357011 () Bool)

(assert (=> d!1728186 e!3357011))

(declare-fun res!2303871 () Bool)

(assert (=> d!1728186 (=> res!2303871 e!3357011)))

(declare-fun e!3357009 () Bool)

(assert (=> d!1728186 (= res!2303871 e!3357009)))

(declare-fun res!2303874 () Bool)

(assert (=> d!1728186 (=> (not res!2303874) (not e!3357009))))

(declare-fun lt!2208688 () Option!15308)

(assert (=> d!1728186 (= res!2303874 (isDefined!12011 lt!2208688))))

(declare-fun e!3357012 () Option!15308)

(assert (=> d!1728186 (= lt!2208688 e!3357012)))

(declare-fun c!944410 () Bool)

(declare-fun e!3357010 () Bool)

(assert (=> d!1728186 (= c!944410 e!3357010)))

(declare-fun res!2303875 () Bool)

(assert (=> d!1728186 (=> (not res!2303875) (not e!3357010))))

(assert (=> d!1728186 (= res!2303875 (matchR!7382 (regOne!30906 r!7292) Nil!61766))))

(assert (=> d!1728186 (validRegex!6933 (regOne!30906 r!7292))))

(assert (=> d!1728186 (= (findConcatSeparation!1722 (regOne!30906 r!7292) (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326) lt!2208688)))

(declare-fun b!5416012 () Bool)

(declare-fun res!2303872 () Bool)

(assert (=> b!5416012 (=> (not res!2303872) (not e!3357009))))

(assert (=> b!5416012 (= res!2303872 (matchR!7382 (regOne!30906 r!7292) (_1!35699 (get!21298 lt!2208688))))))

(declare-fun b!5416013 () Bool)

(declare-fun lt!2208686 () Unit!154310)

(declare-fun lt!2208687 () Unit!154310)

(assert (=> b!5416013 (= lt!2208686 lt!2208687)))

(assert (=> b!5416013 (= (++!13568 (++!13568 Nil!61766 (Cons!61766 (h!68214 s!2326) Nil!61766)) (t!375113 s!2326)) s!2326)))

(assert (=> b!5416013 (= lt!2208687 (lemmaMoveElementToOtherListKeepsConcatEq!1845 Nil!61766 (h!68214 s!2326) (t!375113 s!2326) s!2326))))

(assert (=> b!5416013 (= e!3357008 (findConcatSeparation!1722 (regOne!30906 r!7292) (regTwo!30906 r!7292) (++!13568 Nil!61766 (Cons!61766 (h!68214 s!2326) Nil!61766)) (t!375113 s!2326) s!2326))))

(declare-fun b!5416014 () Bool)

(assert (=> b!5416014 (= e!3357012 e!3357008)))

(declare-fun c!944411 () Bool)

(assert (=> b!5416014 (= c!944411 ((_ is Nil!61766) s!2326))))

(declare-fun b!5416015 () Bool)

(assert (=> b!5416015 (= e!3357009 (= (++!13568 (_1!35699 (get!21298 lt!2208688)) (_2!35699 (get!21298 lt!2208688))) s!2326))))

(declare-fun b!5416016 () Bool)

(assert (=> b!5416016 (= e!3357012 (Some!15307 (tuple2!64793 Nil!61766 s!2326)))))

(declare-fun b!5416017 () Bool)

(declare-fun res!2303873 () Bool)

(assert (=> b!5416017 (=> (not res!2303873) (not e!3357009))))

(assert (=> b!5416017 (= res!2303873 (matchR!7382 (regTwo!30906 r!7292) (_2!35699 (get!21298 lt!2208688))))))

(declare-fun b!5416018 () Bool)

(assert (=> b!5416018 (= e!3357010 (matchR!7382 (regTwo!30906 r!7292) s!2326))))

(declare-fun b!5416019 () Bool)

(assert (=> b!5416019 (= e!3357011 (not (isDefined!12011 lt!2208688)))))

(assert (= (and d!1728186 res!2303875) b!5416018))

(assert (= (and d!1728186 c!944410) b!5416016))

(assert (= (and d!1728186 (not c!944410)) b!5416014))

(assert (= (and b!5416014 c!944411) b!5416011))

(assert (= (and b!5416014 (not c!944411)) b!5416013))

(assert (= (and d!1728186 res!2303874) b!5416012))

(assert (= (and b!5416012 res!2303872) b!5416017))

(assert (= (and b!5416017 res!2303873) b!5416015))

(assert (= (and d!1728186 (not res!2303871)) b!5416019))

(declare-fun m!6440044 () Bool)

(assert (=> b!5416012 m!6440044))

(declare-fun m!6440046 () Bool)

(assert (=> b!5416012 m!6440046))

(assert (=> b!5416017 m!6440044))

(declare-fun m!6440048 () Bool)

(assert (=> b!5416017 m!6440048))

(declare-fun m!6440050 () Bool)

(assert (=> d!1728186 m!6440050))

(declare-fun m!6440052 () Bool)

(assert (=> d!1728186 m!6440052))

(declare-fun m!6440054 () Bool)

(assert (=> d!1728186 m!6440054))

(assert (=> b!5416019 m!6440050))

(assert (=> b!5416013 m!6439994))

(assert (=> b!5416013 m!6439994))

(assert (=> b!5416013 m!6439996))

(assert (=> b!5416013 m!6439998))

(assert (=> b!5416013 m!6439994))

(declare-fun m!6440056 () Bool)

(assert (=> b!5416013 m!6440056))

(assert (=> b!5416015 m!6440044))

(declare-fun m!6440058 () Bool)

(assert (=> b!5416015 m!6440058))

(declare-fun m!6440060 () Bool)

(assert (=> b!5416018 m!6440060))

(assert (=> b!5415483 d!1728186))

(declare-fun d!1728192 () Bool)

(assert (=> d!1728192 (= (Exists!2378 lambda!283153) (choose!40952 lambda!283153))))

(declare-fun bs!1251041 () Bool)

(assert (= bs!1251041 d!1728192))

(declare-fun m!6440062 () Bool)

(assert (=> bs!1251041 m!6440062))

(assert (=> b!5415483 d!1728192))

(declare-fun bs!1251042 () Bool)

(declare-fun d!1728194 () Bool)

(assert (= bs!1251042 (and d!1728194 d!1728070)))

(declare-fun lambda!283227 () Int)

(assert (=> bs!1251042 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283227 lambda!283182))))

(declare-fun bs!1251043 () Bool)

(assert (= bs!1251043 (and d!1728194 d!1728034)))

(assert (=> bs!1251043 (not (= lambda!283227 lambda!283167))))

(declare-fun bs!1251044 () Bool)

(assert (= bs!1251044 (and d!1728194 b!5415814)))

(assert (=> bs!1251044 (not (= lambda!283227 lambda!283207))))

(declare-fun bs!1251045 () Bool)

(assert (= bs!1251045 (and d!1728194 b!5415502)))

(assert (=> bs!1251045 (not (= lambda!283227 lambda!283158))))

(declare-fun bs!1251046 () Bool)

(assert (= bs!1251046 (and d!1728194 b!5415478)))

(assert (=> bs!1251046 (not (= lambda!283227 lambda!283160))))

(assert (=> bs!1251043 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283227 lambda!283166))))

(declare-fun bs!1251047 () Bool)

(assert (= bs!1251047 (and d!1728194 b!5415483)))

(assert (=> bs!1251047 (= lambda!283227 lambda!283152)))

(assert (=> bs!1251046 (not (= lambda!283227 lambda!283161))))

(assert (=> bs!1251047 (not (= lambda!283227 lambda!283153))))

(declare-fun bs!1251048 () Bool)

(assert (= bs!1251048 (and d!1728194 d!1728052)))

(assert (=> bs!1251048 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283227 lambda!283172))))

(declare-fun bs!1251049 () Bool)

(assert (= bs!1251049 (and d!1728194 b!5415816)))

(assert (=> bs!1251049 (not (= lambda!283227 lambda!283208))))

(assert (=> bs!1251045 (= (= (regOne!30906 r!7292) lt!2208521) (= lambda!283227 lambda!283157))))

(assert (=> bs!1251046 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283227 lambda!283159))))

(assert (=> bs!1251048 (not (= lambda!283227 lambda!283173))))

(assert (=> d!1728194 true))

(assert (=> d!1728194 true))

(assert (=> d!1728194 true))

(assert (=> d!1728194 (= (isDefined!12011 (findConcatSeparation!1722 (regOne!30906 r!7292) (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326)) (Exists!2378 lambda!283227))))

(declare-fun lt!2208690 () Unit!154310)

(assert (=> d!1728194 (= lt!2208690 (choose!40957 (regOne!30906 r!7292) (regTwo!30906 r!7292) s!2326))))

(assert (=> d!1728194 (validRegex!6933 (regOne!30906 r!7292))))

(assert (=> d!1728194 (= (lemmaFindConcatSeparationEquivalentToExists!1486 (regOne!30906 r!7292) (regTwo!30906 r!7292) s!2326) lt!2208690)))

(declare-fun bs!1251050 () Bool)

(assert (= bs!1251050 d!1728194))

(assert (=> bs!1251050 m!6439444))

(assert (=> bs!1251050 m!6440054))

(declare-fun m!6440064 () Bool)

(assert (=> bs!1251050 m!6440064))

(declare-fun m!6440066 () Bool)

(assert (=> bs!1251050 m!6440066))

(assert (=> bs!1251050 m!6439444))

(assert (=> bs!1251050 m!6439446))

(assert (=> b!5415483 d!1728194))

(declare-fun bs!1251051 () Bool)

(declare-fun d!1728196 () Bool)

(assert (= bs!1251051 (and d!1728196 d!1728070)))

(declare-fun lambda!283228 () Int)

(assert (=> bs!1251051 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283228 lambda!283182))))

(declare-fun bs!1251052 () Bool)

(assert (= bs!1251052 (and d!1728196 d!1728194)))

(assert (=> bs!1251052 (= lambda!283228 lambda!283227)))

(declare-fun bs!1251053 () Bool)

(assert (= bs!1251053 (and d!1728196 d!1728034)))

(assert (=> bs!1251053 (not (= lambda!283228 lambda!283167))))

(declare-fun bs!1251054 () Bool)

(assert (= bs!1251054 (and d!1728196 b!5415814)))

(assert (=> bs!1251054 (not (= lambda!283228 lambda!283207))))

(declare-fun bs!1251055 () Bool)

(assert (= bs!1251055 (and d!1728196 b!5415502)))

(assert (=> bs!1251055 (not (= lambda!283228 lambda!283158))))

(declare-fun bs!1251056 () Bool)

(assert (= bs!1251056 (and d!1728196 b!5415478)))

(assert (=> bs!1251056 (not (= lambda!283228 lambda!283160))))

(assert (=> bs!1251053 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283228 lambda!283166))))

(declare-fun bs!1251057 () Bool)

(assert (= bs!1251057 (and d!1728196 b!5415483)))

(assert (=> bs!1251057 (= lambda!283228 lambda!283152)))

(assert (=> bs!1251056 (not (= lambda!283228 lambda!283161))))

(assert (=> bs!1251057 (not (= lambda!283228 lambda!283153))))

(declare-fun bs!1251058 () Bool)

(assert (= bs!1251058 (and d!1728196 d!1728052)))

(assert (=> bs!1251058 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283228 lambda!283172))))

(declare-fun bs!1251059 () Bool)

(assert (= bs!1251059 (and d!1728196 b!5415816)))

(assert (=> bs!1251059 (not (= lambda!283228 lambda!283208))))

(assert (=> bs!1251055 (= (= (regOne!30906 r!7292) lt!2208521) (= lambda!283228 lambda!283157))))

(assert (=> bs!1251056 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283228 lambda!283159))))

(assert (=> bs!1251058 (not (= lambda!283228 lambda!283173))))

(assert (=> d!1728196 true))

(assert (=> d!1728196 true))

(assert (=> d!1728196 true))

(declare-fun lambda!283229 () Int)

(assert (=> bs!1251051 (not (= lambda!283229 lambda!283182))))

(assert (=> bs!1251053 (not (= lambda!283229 lambda!283167))))

(assert (=> bs!1251054 (not (= lambda!283229 lambda!283207))))

(assert (=> bs!1251055 (= (= (regOne!30906 r!7292) lt!2208521) (= lambda!283229 lambda!283158))))

(assert (=> bs!1251056 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283229 lambda!283160))))

(assert (=> bs!1251053 (not (= lambda!283229 lambda!283166))))

(assert (=> bs!1251057 (not (= lambda!283229 lambda!283152))))

(assert (=> bs!1251056 (not (= lambda!283229 lambda!283161))))

(assert (=> bs!1251057 (= lambda!283229 lambda!283153)))

(assert (=> bs!1251058 (not (= lambda!283229 lambda!283172))))

(assert (=> bs!1251052 (not (= lambda!283229 lambda!283227))))

(declare-fun bs!1251062 () Bool)

(assert (= bs!1251062 d!1728196))

(assert (=> bs!1251062 (not (= lambda!283229 lambda!283228))))

(assert (=> bs!1251059 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (regOne!30906 lt!2208521)) (= (regTwo!30906 r!7292) (regTwo!30906 lt!2208521))) (= lambda!283229 lambda!283208))))

(assert (=> bs!1251055 (not (= lambda!283229 lambda!283157))))

(assert (=> bs!1251056 (not (= lambda!283229 lambda!283159))))

(assert (=> bs!1251058 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283229 lambda!283173))))

(assert (=> d!1728196 true))

(assert (=> d!1728196 true))

(assert (=> d!1728196 true))

(assert (=> d!1728196 (= (Exists!2378 lambda!283228) (Exists!2378 lambda!283229))))

(declare-fun lt!2208691 () Unit!154310)

(assert (=> d!1728196 (= lt!2208691 (choose!40954 (regOne!30906 r!7292) (regTwo!30906 r!7292) s!2326))))

(assert (=> d!1728196 (validRegex!6933 (regOne!30906 r!7292))))

(assert (=> d!1728196 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1032 (regOne!30906 r!7292) (regTwo!30906 r!7292) s!2326) lt!2208691)))

(declare-fun m!6440082 () Bool)

(assert (=> bs!1251062 m!6440082))

(declare-fun m!6440084 () Bool)

(assert (=> bs!1251062 m!6440084))

(declare-fun m!6440086 () Bool)

(assert (=> bs!1251062 m!6440086))

(assert (=> bs!1251062 m!6440054))

(assert (=> b!5415483 d!1728196))

(declare-fun d!1728204 () Bool)

(assert (=> d!1728204 (= (Exists!2378 lambda!283152) (choose!40952 lambda!283152))))

(declare-fun bs!1251063 () Bool)

(assert (= bs!1251063 d!1728204))

(declare-fun m!6440088 () Bool)

(assert (=> bs!1251063 m!6440088))

(assert (=> b!5415483 d!1728204))

(declare-fun d!1728206 () Bool)

(assert (=> d!1728206 (= (isDefined!12011 (findConcatSeparation!1722 (regOne!30906 r!7292) (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326)) (not (isEmpty!33764 (findConcatSeparation!1722 (regOne!30906 r!7292) (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326))))))

(declare-fun bs!1251064 () Bool)

(assert (= bs!1251064 d!1728206))

(assert (=> bs!1251064 m!6439444))

(declare-fun m!6440090 () Bool)

(assert (=> bs!1251064 m!6440090))

(assert (=> b!5415483 d!1728206))

(declare-fun d!1728208 () Bool)

(declare-fun e!3357036 () Bool)

(assert (=> d!1728208 e!3357036))

(declare-fun res!2303893 () Bool)

(assert (=> d!1728208 (=> (not res!2303893) (not e!3357036))))

(declare-fun lt!2208695 () List!61892)

(declare-fun noDuplicate!1400 (List!61892) Bool)

(assert (=> d!1728208 (= res!2303893 (noDuplicate!1400 lt!2208695))))

(declare-fun choose!40969 ((InoxSet Context!9162)) List!61892)

(assert (=> d!1728208 (= lt!2208695 (choose!40969 z!1189))))

(assert (=> d!1728208 (= (toList!8981 z!1189) lt!2208695)))

(declare-fun b!5416049 () Bool)

(declare-fun content!11098 (List!61892) (InoxSet Context!9162))

(assert (=> b!5416049 (= e!3357036 (= (content!11098 lt!2208695) z!1189))))

(assert (= (and d!1728208 res!2303893) b!5416049))

(declare-fun m!6440092 () Bool)

(assert (=> d!1728208 m!6440092))

(declare-fun m!6440094 () Bool)

(assert (=> d!1728208 m!6440094))

(declare-fun m!6440096 () Bool)

(assert (=> b!5416049 m!6440096))

(assert (=> b!5415503 d!1728208))

(declare-fun d!1728210 () Bool)

(assert (=> d!1728210 (= (Exists!2378 lambda!283157) (choose!40952 lambda!283157))))

(declare-fun bs!1251065 () Bool)

(assert (= bs!1251065 d!1728210))

(declare-fun m!6440098 () Bool)

(assert (=> bs!1251065 m!6440098))

(assert (=> b!5415502 d!1728210))

(declare-fun d!1728212 () Bool)

(declare-fun c!944418 () Bool)

(assert (=> d!1728212 (= c!944418 (isEmpty!33765 lt!2208545))))

(declare-fun e!3357037 () Bool)

(assert (=> d!1728212 (= (matchZipper!1441 (store ((as const (Array Context!9162 Bool)) false) (Context!9163 (++!13567 lt!2208515 lt!2208567)) true) lt!2208545) e!3357037)))

(declare-fun b!5416050 () Bool)

(assert (=> b!5416050 (= e!3357037 (nullableZipper!1450 (store ((as const (Array Context!9162 Bool)) false) (Context!9163 (++!13567 lt!2208515 lt!2208567)) true)))))

(declare-fun b!5416051 () Bool)

(assert (=> b!5416051 (= e!3357037 (matchZipper!1441 (derivationStepZipper!1436 (store ((as const (Array Context!9162 Bool)) false) (Context!9163 (++!13567 lt!2208515 lt!2208567)) true) (head!11617 lt!2208545)) (tail!10714 lt!2208545)))))

(assert (= (and d!1728212 c!944418) b!5416050))

(assert (= (and d!1728212 (not c!944418)) b!5416051))

(declare-fun m!6440100 () Bool)

(assert (=> d!1728212 m!6440100))

(assert (=> b!5416050 m!6439464))

(declare-fun m!6440102 () Bool)

(assert (=> b!5416050 m!6440102))

(declare-fun m!6440104 () Bool)

(assert (=> b!5416051 m!6440104))

(assert (=> b!5416051 m!6439464))

(assert (=> b!5416051 m!6440104))

(declare-fun m!6440106 () Bool)

(assert (=> b!5416051 m!6440106))

(declare-fun m!6440108 () Bool)

(assert (=> b!5416051 m!6440108))

(assert (=> b!5416051 m!6440106))

(assert (=> b!5416051 m!6440108))

(declare-fun m!6440110 () Bool)

(assert (=> b!5416051 m!6440110))

(assert (=> b!5415502 d!1728212))

(declare-fun d!1728214 () Bool)

(assert (=> d!1728214 (= (Exists!2378 lambda!283158) (choose!40952 lambda!283158))))

(declare-fun bs!1251066 () Bool)

(assert (= bs!1251066 d!1728214))

(declare-fun m!6440112 () Bool)

(assert (=> bs!1251066 m!6440112))

(assert (=> b!5415502 d!1728214))

(declare-fun d!1728216 () Bool)

(assert (=> d!1728216 (= (isDefined!12011 lt!2208530) (not (isEmpty!33764 lt!2208530)))))

(declare-fun bs!1251067 () Bool)

(assert (= bs!1251067 d!1728216))

(declare-fun m!6440114 () Bool)

(assert (=> bs!1251067 m!6440114))

(assert (=> b!5415502 d!1728216))

(declare-fun d!1728218 () Bool)

(declare-fun e!3357043 () Bool)

(assert (=> d!1728218 e!3357043))

(declare-fun res!2303898 () Bool)

(assert (=> d!1728218 (=> (not res!2303898) (not e!3357043))))

(declare-fun lt!2208705 () List!61891)

(declare-fun content!11099 (List!61891) (InoxSet Regex!15197))

(assert (=> d!1728218 (= res!2303898 (= (content!11099 lt!2208705) ((_ map or) (content!11099 lt!2208515) (content!11099 lt!2208567))))))

(declare-fun e!3357042 () List!61891)

(assert (=> d!1728218 (= lt!2208705 e!3357042)))

(declare-fun c!944421 () Bool)

(assert (=> d!1728218 (= c!944421 ((_ is Nil!61767) lt!2208515))))

(assert (=> d!1728218 (= (++!13567 lt!2208515 lt!2208567) lt!2208705)))

(declare-fun b!5416061 () Bool)

(assert (=> b!5416061 (= e!3357042 (Cons!61767 (h!68215 lt!2208515) (++!13567 (t!375114 lt!2208515) lt!2208567)))))

(declare-fun b!5416062 () Bool)

(declare-fun res!2303899 () Bool)

(assert (=> b!5416062 (=> (not res!2303899) (not e!3357043))))

(declare-fun size!39868 (List!61891) Int)

(assert (=> b!5416062 (= res!2303899 (= (size!39868 lt!2208705) (+ (size!39868 lt!2208515) (size!39868 lt!2208567))))))

(declare-fun b!5416063 () Bool)

(assert (=> b!5416063 (= e!3357043 (or (not (= lt!2208567 Nil!61767)) (= lt!2208705 lt!2208515)))))

(declare-fun b!5416060 () Bool)

(assert (=> b!5416060 (= e!3357042 lt!2208567)))

(assert (= (and d!1728218 c!944421) b!5416060))

(assert (= (and d!1728218 (not c!944421)) b!5416061))

(assert (= (and d!1728218 res!2303898) b!5416062))

(assert (= (and b!5416062 res!2303899) b!5416063))

(declare-fun m!6440132 () Bool)

(assert (=> d!1728218 m!6440132))

(declare-fun m!6440134 () Bool)

(assert (=> d!1728218 m!6440134))

(declare-fun m!6440136 () Bool)

(assert (=> d!1728218 m!6440136))

(declare-fun m!6440138 () Bool)

(assert (=> b!5416061 m!6440138))

(declare-fun m!6440140 () Bool)

(assert (=> b!5416062 m!6440140))

(declare-fun m!6440142 () Bool)

(assert (=> b!5416062 m!6440142))

(declare-fun m!6440144 () Bool)

(assert (=> b!5416062 m!6440144))

(assert (=> b!5415502 d!1728218))

(declare-fun bs!1251075 () Bool)

(declare-fun d!1728224 () Bool)

(assert (= bs!1251075 (and d!1728224 d!1728196)))

(declare-fun lambda!283233 () Int)

(assert (=> bs!1251075 (not (= lambda!283233 lambda!283229))))

(declare-fun bs!1251076 () Bool)

(assert (= bs!1251076 (and d!1728224 d!1728070)))

(assert (=> bs!1251076 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283233 lambda!283182))))

(declare-fun bs!1251077 () Bool)

(assert (= bs!1251077 (and d!1728224 d!1728034)))

(assert (=> bs!1251077 (not (= lambda!283233 lambda!283167))))

(declare-fun bs!1251078 () Bool)

(assert (= bs!1251078 (and d!1728224 b!5415814)))

(assert (=> bs!1251078 (not (= lambda!283233 lambda!283207))))

(declare-fun bs!1251079 () Bool)

(assert (= bs!1251079 (and d!1728224 b!5415502)))

(assert (=> bs!1251079 (not (= lambda!283233 lambda!283158))))

(declare-fun bs!1251080 () Bool)

(assert (= bs!1251080 (and d!1728224 b!5415478)))

(assert (=> bs!1251080 (not (= lambda!283233 lambda!283160))))

(assert (=> bs!1251077 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283233 lambda!283166))))

(declare-fun bs!1251081 () Bool)

(assert (= bs!1251081 (and d!1728224 b!5415483)))

(assert (=> bs!1251081 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283233 lambda!283152))))

(assert (=> bs!1251080 (not (= lambda!283233 lambda!283161))))

(assert (=> bs!1251081 (not (= lambda!283233 lambda!283153))))

(declare-fun bs!1251082 () Bool)

(assert (= bs!1251082 (and d!1728224 d!1728052)))

(assert (=> bs!1251082 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283233 lambda!283172))))

(declare-fun bs!1251083 () Bool)

(assert (= bs!1251083 (and d!1728224 d!1728194)))

(assert (=> bs!1251083 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283233 lambda!283227))))

(assert (=> bs!1251075 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283233 lambda!283228))))

(declare-fun bs!1251084 () Bool)

(assert (= bs!1251084 (and d!1728224 b!5415816)))

(assert (=> bs!1251084 (not (= lambda!283233 lambda!283208))))

(assert (=> bs!1251079 (= lambda!283233 lambda!283157)))

(assert (=> bs!1251080 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283233 lambda!283159))))

(assert (=> bs!1251082 (not (= lambda!283233 lambda!283173))))

(assert (=> d!1728224 true))

(assert (=> d!1728224 true))

(assert (=> d!1728224 true))

(declare-fun lambda!283234 () Int)

(assert (=> bs!1251075 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283234 lambda!283229))))

(assert (=> bs!1251076 (not (= lambda!283234 lambda!283182))))

(assert (=> bs!1251077 (not (= lambda!283234 lambda!283167))))

(assert (=> bs!1251078 (not (= lambda!283234 lambda!283207))))

(assert (=> bs!1251079 (= lambda!283234 lambda!283158)))

(assert (=> bs!1251080 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283234 lambda!283160))))

(assert (=> bs!1251077 (not (= lambda!283234 lambda!283166))))

(assert (=> bs!1251081 (not (= lambda!283234 lambda!283152))))

(declare-fun bs!1251085 () Bool)

(assert (= bs!1251085 d!1728224))

(assert (=> bs!1251085 (not (= lambda!283234 lambda!283233))))

(assert (=> bs!1251080 (not (= lambda!283234 lambda!283161))))

(assert (=> bs!1251081 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283234 lambda!283153))))

(assert (=> bs!1251082 (not (= lambda!283234 lambda!283172))))

(assert (=> bs!1251083 (not (= lambda!283234 lambda!283227))))

(assert (=> bs!1251075 (not (= lambda!283234 lambda!283228))))

(assert (=> bs!1251084 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (regOne!30906 lt!2208521)) (= (regTwo!30906 r!7292) (regTwo!30906 lt!2208521))) (= lambda!283234 lambda!283208))))

(assert (=> bs!1251079 (not (= lambda!283234 lambda!283157))))

(assert (=> bs!1251080 (not (= lambda!283234 lambda!283159))))

(assert (=> bs!1251082 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283234 lambda!283173))))

(assert (=> d!1728224 true))

(assert (=> d!1728224 true))

(assert (=> d!1728224 true))

(assert (=> d!1728224 (= (Exists!2378 lambda!283233) (Exists!2378 lambda!283234))))

(declare-fun lt!2208706 () Unit!154310)

(assert (=> d!1728224 (= lt!2208706 (choose!40954 lt!2208521 (regTwo!30906 r!7292) s!2326))))

(assert (=> d!1728224 (validRegex!6933 lt!2208521)))

(assert (=> d!1728224 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1032 lt!2208521 (regTwo!30906 r!7292) s!2326) lt!2208706)))

(declare-fun m!6440146 () Bool)

(assert (=> bs!1251085 m!6440146))

(declare-fun m!6440148 () Bool)

(assert (=> bs!1251085 m!6440148))

(declare-fun m!6440150 () Bool)

(assert (=> bs!1251085 m!6440150))

(assert (=> bs!1251085 m!6439674))

(assert (=> b!5415502 d!1728224))

(declare-fun b!5416145 () Bool)

(declare-fun res!2303943 () Bool)

(declare-fun e!3357090 () Bool)

(assert (=> b!5416145 (=> (not res!2303943) (not e!3357090))))

(assert (=> b!5416145 (= res!2303943 (isEmpty!33765 (tail!10714 (_2!35699 lt!2208535))))))

(declare-fun b!5416146 () Bool)

(declare-fun e!3357088 () Bool)

(declare-fun e!3357089 () Bool)

(assert (=> b!5416146 (= e!3357088 e!3357089)))

(declare-fun res!2303947 () Bool)

(assert (=> b!5416146 (=> res!2303947 e!3357089)))

(declare-fun call!387615 () Bool)

(assert (=> b!5416146 (= res!2303947 call!387615)))

(declare-fun b!5416147 () Bool)

(assert (=> b!5416147 (= e!3357089 (not (= (head!11617 (_2!35699 lt!2208535)) (c!944259 lt!2208536))))))

(declare-fun bm!387610 () Bool)

(assert (=> bm!387610 (= call!387615 (isEmpty!33765 (_2!35699 lt!2208535)))))

(declare-fun b!5416148 () Bool)

(assert (=> b!5416148 (= e!3357090 (= (head!11617 (_2!35699 lt!2208535)) (c!944259 lt!2208536)))))

(declare-fun b!5416149 () Bool)

(declare-fun res!2303944 () Bool)

(assert (=> b!5416149 (=> (not res!2303944) (not e!3357090))))

(assert (=> b!5416149 (= res!2303944 (not call!387615))))

(declare-fun b!5416150 () Bool)

(declare-fun e!3357086 () Bool)

(declare-fun lt!2208713 () Bool)

(assert (=> b!5416150 (= e!3357086 (= lt!2208713 call!387615))))

(declare-fun b!5416151 () Bool)

(declare-fun res!2303949 () Bool)

(declare-fun e!3357092 () Bool)

(assert (=> b!5416151 (=> res!2303949 e!3357092)))

(assert (=> b!5416151 (= res!2303949 (not ((_ is ElementMatch!15197) lt!2208536)))))

(declare-fun e!3357091 () Bool)

(assert (=> b!5416151 (= e!3357091 e!3357092)))

(declare-fun d!1728226 () Bool)

(assert (=> d!1728226 e!3357086))

(declare-fun c!944442 () Bool)

(assert (=> d!1728226 (= c!944442 ((_ is EmptyExpr!15197) lt!2208536))))

(declare-fun e!3357087 () Bool)

(assert (=> d!1728226 (= lt!2208713 e!3357087)))

(declare-fun c!944441 () Bool)

(assert (=> d!1728226 (= c!944441 (isEmpty!33765 (_2!35699 lt!2208535)))))

(assert (=> d!1728226 (validRegex!6933 lt!2208536)))

(assert (=> d!1728226 (= (matchR!7382 lt!2208536 (_2!35699 lt!2208535)) lt!2208713)))

(declare-fun b!5416152 () Bool)

(assert (=> b!5416152 (= e!3357087 (nullable!5366 lt!2208536))))

(declare-fun b!5416153 () Bool)

(assert (=> b!5416153 (= e!3357091 (not lt!2208713))))

(declare-fun b!5416154 () Bool)

(assert (=> b!5416154 (= e!3357086 e!3357091)))

(declare-fun c!944443 () Bool)

(assert (=> b!5416154 (= c!944443 ((_ is EmptyLang!15197) lt!2208536))))

(declare-fun b!5416155 () Bool)

(declare-fun derivativeStep!4270 (Regex!15197 C!30664) Regex!15197)

(assert (=> b!5416155 (= e!3357087 (matchR!7382 (derivativeStep!4270 lt!2208536 (head!11617 (_2!35699 lt!2208535))) (tail!10714 (_2!35699 lt!2208535))))))

(declare-fun b!5416156 () Bool)

(declare-fun res!2303946 () Bool)

(assert (=> b!5416156 (=> res!2303946 e!3357092)))

(assert (=> b!5416156 (= res!2303946 e!3357090)))

(declare-fun res!2303948 () Bool)

(assert (=> b!5416156 (=> (not res!2303948) (not e!3357090))))

(assert (=> b!5416156 (= res!2303948 lt!2208713)))

(declare-fun b!5416157 () Bool)

(declare-fun res!2303945 () Bool)

(assert (=> b!5416157 (=> res!2303945 e!3357089)))

(assert (=> b!5416157 (= res!2303945 (not (isEmpty!33765 (tail!10714 (_2!35699 lt!2208535)))))))

(declare-fun b!5416158 () Bool)

(assert (=> b!5416158 (= e!3357092 e!3357088)))

(declare-fun res!2303950 () Bool)

(assert (=> b!5416158 (=> (not res!2303950) (not e!3357088))))

(assert (=> b!5416158 (= res!2303950 (not lt!2208713))))

(assert (= (and d!1728226 c!944441) b!5416152))

(assert (= (and d!1728226 (not c!944441)) b!5416155))

(assert (= (and d!1728226 c!944442) b!5416150))

(assert (= (and d!1728226 (not c!944442)) b!5416154))

(assert (= (and b!5416154 c!944443) b!5416153))

(assert (= (and b!5416154 (not c!944443)) b!5416151))

(assert (= (and b!5416151 (not res!2303949)) b!5416156))

(assert (= (and b!5416156 res!2303948) b!5416149))

(assert (= (and b!5416149 res!2303944) b!5416145))

(assert (= (and b!5416145 res!2303943) b!5416148))

(assert (= (and b!5416156 (not res!2303946)) b!5416158))

(assert (= (and b!5416158 res!2303950) b!5416146))

(assert (= (and b!5416146 (not res!2303947)) b!5416157))

(assert (= (and b!5416157 (not res!2303945)) b!5416147))

(assert (= (or b!5416150 b!5416146 b!5416149) bm!387610))

(declare-fun m!6440170 () Bool)

(assert (=> b!5416152 m!6440170))

(declare-fun m!6440172 () Bool)

(assert (=> b!5416155 m!6440172))

(assert (=> b!5416155 m!6440172))

(declare-fun m!6440174 () Bool)

(assert (=> b!5416155 m!6440174))

(declare-fun m!6440176 () Bool)

(assert (=> b!5416155 m!6440176))

(assert (=> b!5416155 m!6440174))

(assert (=> b!5416155 m!6440176))

(declare-fun m!6440178 () Bool)

(assert (=> b!5416155 m!6440178))

(assert (=> b!5416147 m!6440172))

(declare-fun m!6440180 () Bool)

(assert (=> d!1728226 m!6440180))

(declare-fun m!6440182 () Bool)

(assert (=> d!1728226 m!6440182))

(assert (=> b!5416157 m!6440176))

(assert (=> b!5416157 m!6440176))

(declare-fun m!6440184 () Bool)

(assert (=> b!5416157 m!6440184))

(assert (=> b!5416145 m!6440176))

(assert (=> b!5416145 m!6440176))

(assert (=> b!5416145 m!6440184))

(assert (=> bm!387610 m!6440180))

(assert (=> b!5416148 m!6440172))

(assert (=> b!5415502 d!1728226))

(declare-fun b!5416159 () Bool)

(declare-fun e!3357093 () Option!15308)

(assert (=> b!5416159 (= e!3357093 None!15307)))

(declare-fun d!1728232 () Bool)

(declare-fun e!3357096 () Bool)

(assert (=> d!1728232 e!3357096))

(declare-fun res!2303951 () Bool)

(assert (=> d!1728232 (=> res!2303951 e!3357096)))

(declare-fun e!3357094 () Bool)

(assert (=> d!1728232 (= res!2303951 e!3357094)))

(declare-fun res!2303954 () Bool)

(assert (=> d!1728232 (=> (not res!2303954) (not e!3357094))))

(declare-fun lt!2208716 () Option!15308)

(assert (=> d!1728232 (= res!2303954 (isDefined!12011 lt!2208716))))

(declare-fun e!3357097 () Option!15308)

(assert (=> d!1728232 (= lt!2208716 e!3357097)))

(declare-fun c!944444 () Bool)

(declare-fun e!3357095 () Bool)

(assert (=> d!1728232 (= c!944444 e!3357095)))

(declare-fun res!2303955 () Bool)

(assert (=> d!1728232 (=> (not res!2303955) (not e!3357095))))

(assert (=> d!1728232 (= res!2303955 (matchR!7382 lt!2208521 Nil!61766))))

(assert (=> d!1728232 (validRegex!6933 lt!2208521)))

(assert (=> d!1728232 (= (findConcatSeparation!1722 lt!2208521 (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326) lt!2208716)))

(declare-fun b!5416160 () Bool)

(declare-fun res!2303952 () Bool)

(assert (=> b!5416160 (=> (not res!2303952) (not e!3357094))))

(assert (=> b!5416160 (= res!2303952 (matchR!7382 lt!2208521 (_1!35699 (get!21298 lt!2208716))))))

(declare-fun b!5416161 () Bool)

(declare-fun lt!2208714 () Unit!154310)

(declare-fun lt!2208715 () Unit!154310)

(assert (=> b!5416161 (= lt!2208714 lt!2208715)))

(assert (=> b!5416161 (= (++!13568 (++!13568 Nil!61766 (Cons!61766 (h!68214 s!2326) Nil!61766)) (t!375113 s!2326)) s!2326)))

(assert (=> b!5416161 (= lt!2208715 (lemmaMoveElementToOtherListKeepsConcatEq!1845 Nil!61766 (h!68214 s!2326) (t!375113 s!2326) s!2326))))

(assert (=> b!5416161 (= e!3357093 (findConcatSeparation!1722 lt!2208521 (regTwo!30906 r!7292) (++!13568 Nil!61766 (Cons!61766 (h!68214 s!2326) Nil!61766)) (t!375113 s!2326) s!2326))))

(declare-fun b!5416162 () Bool)

(assert (=> b!5416162 (= e!3357097 e!3357093)))

(declare-fun c!944445 () Bool)

(assert (=> b!5416162 (= c!944445 ((_ is Nil!61766) s!2326))))

(declare-fun b!5416163 () Bool)

(assert (=> b!5416163 (= e!3357094 (= (++!13568 (_1!35699 (get!21298 lt!2208716)) (_2!35699 (get!21298 lt!2208716))) s!2326))))

(declare-fun b!5416164 () Bool)

(assert (=> b!5416164 (= e!3357097 (Some!15307 (tuple2!64793 Nil!61766 s!2326)))))

(declare-fun b!5416165 () Bool)

(declare-fun res!2303953 () Bool)

(assert (=> b!5416165 (=> (not res!2303953) (not e!3357094))))

(assert (=> b!5416165 (= res!2303953 (matchR!7382 (regTwo!30906 r!7292) (_2!35699 (get!21298 lt!2208716))))))

(declare-fun b!5416166 () Bool)

(assert (=> b!5416166 (= e!3357095 (matchR!7382 (regTwo!30906 r!7292) s!2326))))

(declare-fun b!5416167 () Bool)

(assert (=> b!5416167 (= e!3357096 (not (isDefined!12011 lt!2208716)))))

(assert (= (and d!1728232 res!2303955) b!5416166))

(assert (= (and d!1728232 c!944444) b!5416164))

(assert (= (and d!1728232 (not c!944444)) b!5416162))

(assert (= (and b!5416162 c!944445) b!5416159))

(assert (= (and b!5416162 (not c!944445)) b!5416161))

(assert (= (and d!1728232 res!2303954) b!5416160))

(assert (= (and b!5416160 res!2303952) b!5416165))

(assert (= (and b!5416165 res!2303953) b!5416163))

(assert (= (and d!1728232 (not res!2303951)) b!5416167))

(declare-fun m!6440186 () Bool)

(assert (=> b!5416160 m!6440186))

(declare-fun m!6440188 () Bool)

(assert (=> b!5416160 m!6440188))

(assert (=> b!5416165 m!6440186))

(declare-fun m!6440190 () Bool)

(assert (=> b!5416165 m!6440190))

(declare-fun m!6440192 () Bool)

(assert (=> d!1728232 m!6440192))

(declare-fun m!6440194 () Bool)

(assert (=> d!1728232 m!6440194))

(assert (=> d!1728232 m!6439674))

(assert (=> b!5416167 m!6440192))

(assert (=> b!5416161 m!6439994))

(assert (=> b!5416161 m!6439994))

(assert (=> b!5416161 m!6439996))

(assert (=> b!5416161 m!6439998))

(assert (=> b!5416161 m!6439994))

(declare-fun m!6440196 () Bool)

(assert (=> b!5416161 m!6440196))

(assert (=> b!5416163 m!6440186))

(declare-fun m!6440198 () Bool)

(assert (=> b!5416163 m!6440198))

(assert (=> b!5416166 m!6440060))

(assert (=> b!5415502 d!1728232))

(declare-fun b!5416168 () Bool)

(declare-fun res!2303956 () Bool)

(declare-fun e!3357102 () Bool)

(assert (=> b!5416168 (=> (not res!2303956) (not e!3357102))))

(assert (=> b!5416168 (= res!2303956 (isEmpty!33765 (tail!10714 (_1!35699 lt!2208535))))))

(declare-fun b!5416169 () Bool)

(declare-fun e!3357100 () Bool)

(declare-fun e!3357101 () Bool)

(assert (=> b!5416169 (= e!3357100 e!3357101)))

(declare-fun res!2303960 () Bool)

(assert (=> b!5416169 (=> res!2303960 e!3357101)))

(declare-fun call!387616 () Bool)

(assert (=> b!5416169 (= res!2303960 call!387616)))

(declare-fun b!5416170 () Bool)

(assert (=> b!5416170 (= e!3357101 (not (= (head!11617 (_1!35699 lt!2208535)) (c!944259 (reg!15526 (regOne!30906 r!7292))))))))

(declare-fun bm!387611 () Bool)

(assert (=> bm!387611 (= call!387616 (isEmpty!33765 (_1!35699 lt!2208535)))))

(declare-fun b!5416171 () Bool)

(assert (=> b!5416171 (= e!3357102 (= (head!11617 (_1!35699 lt!2208535)) (c!944259 (reg!15526 (regOne!30906 r!7292)))))))

(declare-fun b!5416172 () Bool)

(declare-fun res!2303957 () Bool)

(assert (=> b!5416172 (=> (not res!2303957) (not e!3357102))))

(assert (=> b!5416172 (= res!2303957 (not call!387616))))

(declare-fun b!5416173 () Bool)

(declare-fun e!3357098 () Bool)

(declare-fun lt!2208717 () Bool)

(assert (=> b!5416173 (= e!3357098 (= lt!2208717 call!387616))))

(declare-fun b!5416174 () Bool)

(declare-fun res!2303962 () Bool)

(declare-fun e!3357104 () Bool)

(assert (=> b!5416174 (=> res!2303962 e!3357104)))

(assert (=> b!5416174 (= res!2303962 (not ((_ is ElementMatch!15197) (reg!15526 (regOne!30906 r!7292)))))))

(declare-fun e!3357103 () Bool)

(assert (=> b!5416174 (= e!3357103 e!3357104)))

(declare-fun d!1728234 () Bool)

(assert (=> d!1728234 e!3357098))

(declare-fun c!944447 () Bool)

(assert (=> d!1728234 (= c!944447 ((_ is EmptyExpr!15197) (reg!15526 (regOne!30906 r!7292))))))

(declare-fun e!3357099 () Bool)

(assert (=> d!1728234 (= lt!2208717 e!3357099)))

(declare-fun c!944446 () Bool)

(assert (=> d!1728234 (= c!944446 (isEmpty!33765 (_1!35699 lt!2208535)))))

(assert (=> d!1728234 (validRegex!6933 (reg!15526 (regOne!30906 r!7292)))))

(assert (=> d!1728234 (= (matchR!7382 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208535)) lt!2208717)))

(declare-fun b!5416175 () Bool)

(assert (=> b!5416175 (= e!3357099 (nullable!5366 (reg!15526 (regOne!30906 r!7292))))))

(declare-fun b!5416176 () Bool)

(assert (=> b!5416176 (= e!3357103 (not lt!2208717))))

(declare-fun b!5416177 () Bool)

(assert (=> b!5416177 (= e!3357098 e!3357103)))

(declare-fun c!944448 () Bool)

(assert (=> b!5416177 (= c!944448 ((_ is EmptyLang!15197) (reg!15526 (regOne!30906 r!7292))))))

(declare-fun b!5416178 () Bool)

(assert (=> b!5416178 (= e!3357099 (matchR!7382 (derivativeStep!4270 (reg!15526 (regOne!30906 r!7292)) (head!11617 (_1!35699 lt!2208535))) (tail!10714 (_1!35699 lt!2208535))))))

(declare-fun b!5416179 () Bool)

(declare-fun res!2303959 () Bool)

(assert (=> b!5416179 (=> res!2303959 e!3357104)))

(assert (=> b!5416179 (= res!2303959 e!3357102)))

(declare-fun res!2303961 () Bool)

(assert (=> b!5416179 (=> (not res!2303961) (not e!3357102))))

(assert (=> b!5416179 (= res!2303961 lt!2208717)))

(declare-fun b!5416180 () Bool)

(declare-fun res!2303958 () Bool)

(assert (=> b!5416180 (=> res!2303958 e!3357101)))

(assert (=> b!5416180 (= res!2303958 (not (isEmpty!33765 (tail!10714 (_1!35699 lt!2208535)))))))

(declare-fun b!5416181 () Bool)

(assert (=> b!5416181 (= e!3357104 e!3357100)))

(declare-fun res!2303963 () Bool)

(assert (=> b!5416181 (=> (not res!2303963) (not e!3357100))))

(assert (=> b!5416181 (= res!2303963 (not lt!2208717))))

(assert (= (and d!1728234 c!944446) b!5416175))

(assert (= (and d!1728234 (not c!944446)) b!5416178))

(assert (= (and d!1728234 c!944447) b!5416173))

(assert (= (and d!1728234 (not c!944447)) b!5416177))

(assert (= (and b!5416177 c!944448) b!5416176))

(assert (= (and b!5416177 (not c!944448)) b!5416174))

(assert (= (and b!5416174 (not res!2303962)) b!5416179))

(assert (= (and b!5416179 res!2303961) b!5416172))

(assert (= (and b!5416172 res!2303957) b!5416168))

(assert (= (and b!5416168 res!2303956) b!5416171))

(assert (= (and b!5416179 (not res!2303959)) b!5416181))

(assert (= (and b!5416181 res!2303963) b!5416169))

(assert (= (and b!5416169 (not res!2303960)) b!5416180))

(assert (= (and b!5416180 (not res!2303958)) b!5416170))

(assert (= (or b!5416173 b!5416169 b!5416172) bm!387611))

(declare-fun m!6440200 () Bool)

(assert (=> b!5416175 m!6440200))

(declare-fun m!6440204 () Bool)

(assert (=> b!5416178 m!6440204))

(assert (=> b!5416178 m!6440204))

(declare-fun m!6440206 () Bool)

(assert (=> b!5416178 m!6440206))

(declare-fun m!6440210 () Bool)

(assert (=> b!5416178 m!6440210))

(assert (=> b!5416178 m!6440206))

(assert (=> b!5416178 m!6440210))

(declare-fun m!6440214 () Bool)

(assert (=> b!5416178 m!6440214))

(assert (=> b!5416170 m!6440204))

(declare-fun m!6440216 () Bool)

(assert (=> d!1728234 m!6440216))

(assert (=> d!1728234 m!6439566))

(assert (=> b!5416180 m!6440210))

(assert (=> b!5416180 m!6440210))

(declare-fun m!6440218 () Bool)

(assert (=> b!5416180 m!6440218))

(assert (=> b!5416168 m!6440210))

(assert (=> b!5416168 m!6440210))

(assert (=> b!5416168 m!6440218))

(assert (=> bm!387611 m!6440216))

(assert (=> b!5416171 m!6440204))

(assert (=> b!5415502 d!1728234))

(declare-fun b!5416196 () Bool)

(declare-fun res!2303972 () Bool)

(declare-fun e!3357116 () Bool)

(assert (=> b!5416196 (=> (not res!2303972) (not e!3357116))))

(assert (=> b!5416196 (= res!2303972 (isEmpty!33765 (tail!10714 lt!2208545)))))

(declare-fun b!5416197 () Bool)

(declare-fun e!3357114 () Bool)

(declare-fun e!3357115 () Bool)

(assert (=> b!5416197 (= e!3357114 e!3357115)))

(declare-fun res!2303976 () Bool)

(assert (=> b!5416197 (=> res!2303976 e!3357115)))

(declare-fun call!387618 () Bool)

(assert (=> b!5416197 (= res!2303976 call!387618)))

(declare-fun b!5416198 () Bool)

(assert (=> b!5416198 (= e!3357115 (not (= (head!11617 lt!2208545) (c!944259 lt!2208553))))))

(declare-fun bm!387613 () Bool)

(assert (=> bm!387613 (= call!387618 (isEmpty!33765 lt!2208545))))

(declare-fun b!5416199 () Bool)

(assert (=> b!5416199 (= e!3357116 (= (head!11617 lt!2208545) (c!944259 lt!2208553)))))

(declare-fun b!5416200 () Bool)

(declare-fun res!2303973 () Bool)

(assert (=> b!5416200 (=> (not res!2303973) (not e!3357116))))

(assert (=> b!5416200 (= res!2303973 (not call!387618))))

(declare-fun b!5416201 () Bool)

(declare-fun e!3357112 () Bool)

(declare-fun lt!2208719 () Bool)

(assert (=> b!5416201 (= e!3357112 (= lt!2208719 call!387618))))

(declare-fun b!5416202 () Bool)

(declare-fun res!2303978 () Bool)

(declare-fun e!3357118 () Bool)

(assert (=> b!5416202 (=> res!2303978 e!3357118)))

(assert (=> b!5416202 (= res!2303978 (not ((_ is ElementMatch!15197) lt!2208553)))))

(declare-fun e!3357117 () Bool)

(assert (=> b!5416202 (= e!3357117 e!3357118)))

(declare-fun d!1728238 () Bool)

(assert (=> d!1728238 e!3357112))

(declare-fun c!944453 () Bool)

(assert (=> d!1728238 (= c!944453 ((_ is EmptyExpr!15197) lt!2208553))))

(declare-fun e!3357113 () Bool)

(assert (=> d!1728238 (= lt!2208719 e!3357113)))

(declare-fun c!944452 () Bool)

(assert (=> d!1728238 (= c!944452 (isEmpty!33765 lt!2208545))))

(assert (=> d!1728238 (validRegex!6933 lt!2208553)))

(assert (=> d!1728238 (= (matchR!7382 lt!2208553 lt!2208545) lt!2208719)))

(declare-fun b!5416203 () Bool)

(assert (=> b!5416203 (= e!3357113 (nullable!5366 lt!2208553))))

(declare-fun b!5416204 () Bool)

(assert (=> b!5416204 (= e!3357117 (not lt!2208719))))

(declare-fun b!5416205 () Bool)

(assert (=> b!5416205 (= e!3357112 e!3357117)))

(declare-fun c!944454 () Bool)

(assert (=> b!5416205 (= c!944454 ((_ is EmptyLang!15197) lt!2208553))))

(declare-fun b!5416206 () Bool)

(assert (=> b!5416206 (= e!3357113 (matchR!7382 (derivativeStep!4270 lt!2208553 (head!11617 lt!2208545)) (tail!10714 lt!2208545)))))

(declare-fun b!5416207 () Bool)

(declare-fun res!2303975 () Bool)

(assert (=> b!5416207 (=> res!2303975 e!3357118)))

(assert (=> b!5416207 (= res!2303975 e!3357116)))

(declare-fun res!2303977 () Bool)

(assert (=> b!5416207 (=> (not res!2303977) (not e!3357116))))

(assert (=> b!5416207 (= res!2303977 lt!2208719)))

(declare-fun b!5416208 () Bool)

(declare-fun res!2303974 () Bool)

(assert (=> b!5416208 (=> res!2303974 e!3357115)))

(assert (=> b!5416208 (= res!2303974 (not (isEmpty!33765 (tail!10714 lt!2208545))))))

(declare-fun b!5416209 () Bool)

(assert (=> b!5416209 (= e!3357118 e!3357114)))

(declare-fun res!2303979 () Bool)

(assert (=> b!5416209 (=> (not res!2303979) (not e!3357114))))

(assert (=> b!5416209 (= res!2303979 (not lt!2208719))))

(assert (= (and d!1728238 c!944452) b!5416203))

(assert (= (and d!1728238 (not c!944452)) b!5416206))

(assert (= (and d!1728238 c!944453) b!5416201))

(assert (= (and d!1728238 (not c!944453)) b!5416205))

(assert (= (and b!5416205 c!944454) b!5416204))

(assert (= (and b!5416205 (not c!944454)) b!5416202))

(assert (= (and b!5416202 (not res!2303978)) b!5416207))

(assert (= (and b!5416207 res!2303977) b!5416200))

(assert (= (and b!5416200 res!2303973) b!5416196))

(assert (= (and b!5416196 res!2303972) b!5416199))

(assert (= (and b!5416207 (not res!2303975)) b!5416209))

(assert (= (and b!5416209 res!2303979) b!5416197))

(assert (= (and b!5416197 (not res!2303976)) b!5416208))

(assert (= (and b!5416208 (not res!2303974)) b!5416198))

(assert (= (or b!5416201 b!5416197 b!5416200) bm!387613))

(declare-fun m!6440222 () Bool)

(assert (=> b!5416203 m!6440222))

(assert (=> b!5416206 m!6440104))

(assert (=> b!5416206 m!6440104))

(declare-fun m!6440226 () Bool)

(assert (=> b!5416206 m!6440226))

(assert (=> b!5416206 m!6440108))

(assert (=> b!5416206 m!6440226))

(assert (=> b!5416206 m!6440108))

(declare-fun m!6440230 () Bool)

(assert (=> b!5416206 m!6440230))

(assert (=> b!5416198 m!6440104))

(assert (=> d!1728238 m!6440100))

(declare-fun m!6440234 () Bool)

(assert (=> d!1728238 m!6440234))

(assert (=> b!5416208 m!6440108))

(assert (=> b!5416208 m!6440108))

(declare-fun m!6440236 () Bool)

(assert (=> b!5416208 m!6440236))

(assert (=> b!5416196 m!6440108))

(assert (=> b!5416196 m!6440108))

(assert (=> b!5416196 m!6440236))

(assert (=> bm!387613 m!6440100))

(assert (=> b!5416199 m!6440104))

(assert (=> b!5415502 d!1728238))

(declare-fun b!5416224 () Bool)

(declare-fun res!2303988 () Bool)

(declare-fun e!3357130 () Bool)

(assert (=> b!5416224 (=> (not res!2303988) (not e!3357130))))

(assert (=> b!5416224 (= res!2303988 (isEmpty!33765 (tail!10714 s!2326)))))

(declare-fun b!5416225 () Bool)

(declare-fun e!3357128 () Bool)

(declare-fun e!3357129 () Bool)

(assert (=> b!5416225 (= e!3357128 e!3357129)))

(declare-fun res!2303992 () Bool)

(assert (=> b!5416225 (=> res!2303992 e!3357129)))

(declare-fun call!387620 () Bool)

(assert (=> b!5416225 (= res!2303992 call!387620)))

(declare-fun b!5416226 () Bool)

(assert (=> b!5416226 (= e!3357129 (not (= (head!11617 s!2326) (c!944259 lt!2208512))))))

(declare-fun bm!387615 () Bool)

(assert (=> bm!387615 (= call!387620 (isEmpty!33765 s!2326))))

(declare-fun b!5416227 () Bool)

(assert (=> b!5416227 (= e!3357130 (= (head!11617 s!2326) (c!944259 lt!2208512)))))

(declare-fun b!5416228 () Bool)

(declare-fun res!2303989 () Bool)

(assert (=> b!5416228 (=> (not res!2303989) (not e!3357130))))

(assert (=> b!5416228 (= res!2303989 (not call!387620))))

(declare-fun b!5416229 () Bool)

(declare-fun e!3357126 () Bool)

(declare-fun lt!2208721 () Bool)

(assert (=> b!5416229 (= e!3357126 (= lt!2208721 call!387620))))

(declare-fun b!5416230 () Bool)

(declare-fun res!2303994 () Bool)

(declare-fun e!3357132 () Bool)

(assert (=> b!5416230 (=> res!2303994 e!3357132)))

(assert (=> b!5416230 (= res!2303994 (not ((_ is ElementMatch!15197) lt!2208512)))))

(declare-fun e!3357131 () Bool)

(assert (=> b!5416230 (= e!3357131 e!3357132)))

(declare-fun d!1728242 () Bool)

(assert (=> d!1728242 e!3357126))

(declare-fun c!944459 () Bool)

(assert (=> d!1728242 (= c!944459 ((_ is EmptyExpr!15197) lt!2208512))))

(declare-fun e!3357127 () Bool)

(assert (=> d!1728242 (= lt!2208721 e!3357127)))

(declare-fun c!944458 () Bool)

(assert (=> d!1728242 (= c!944458 (isEmpty!33765 s!2326))))

(assert (=> d!1728242 (validRegex!6933 lt!2208512)))

(assert (=> d!1728242 (= (matchR!7382 lt!2208512 s!2326) lt!2208721)))

(declare-fun b!5416231 () Bool)

(assert (=> b!5416231 (= e!3357127 (nullable!5366 lt!2208512))))

(declare-fun b!5416232 () Bool)

(assert (=> b!5416232 (= e!3357131 (not lt!2208721))))

(declare-fun b!5416233 () Bool)

(assert (=> b!5416233 (= e!3357126 e!3357131)))

(declare-fun c!944460 () Bool)

(assert (=> b!5416233 (= c!944460 ((_ is EmptyLang!15197) lt!2208512))))

(declare-fun b!5416234 () Bool)

(assert (=> b!5416234 (= e!3357127 (matchR!7382 (derivativeStep!4270 lt!2208512 (head!11617 s!2326)) (tail!10714 s!2326)))))

(declare-fun b!5416235 () Bool)

(declare-fun res!2303991 () Bool)

(assert (=> b!5416235 (=> res!2303991 e!3357132)))

(assert (=> b!5416235 (= res!2303991 e!3357130)))

(declare-fun res!2303993 () Bool)

(assert (=> b!5416235 (=> (not res!2303993) (not e!3357130))))

(assert (=> b!5416235 (= res!2303993 lt!2208721)))

(declare-fun b!5416236 () Bool)

(declare-fun res!2303990 () Bool)

(assert (=> b!5416236 (=> res!2303990 e!3357129)))

(assert (=> b!5416236 (= res!2303990 (not (isEmpty!33765 (tail!10714 s!2326))))))

(declare-fun b!5416237 () Bool)

(assert (=> b!5416237 (= e!3357132 e!3357128)))

(declare-fun res!2303995 () Bool)

(assert (=> b!5416237 (=> (not res!2303995) (not e!3357128))))

(assert (=> b!5416237 (= res!2303995 (not lt!2208721))))

(assert (= (and d!1728242 c!944458) b!5416231))

(assert (= (and d!1728242 (not c!944458)) b!5416234))

(assert (= (and d!1728242 c!944459) b!5416229))

(assert (= (and d!1728242 (not c!944459)) b!5416233))

(assert (= (and b!5416233 c!944460) b!5416232))

(assert (= (and b!5416233 (not c!944460)) b!5416230))

(assert (= (and b!5416230 (not res!2303994)) b!5416235))

(assert (= (and b!5416235 res!2303993) b!5416228))

(assert (= (and b!5416228 res!2303989) b!5416224))

(assert (= (and b!5416224 res!2303988) b!5416227))

(assert (= (and b!5416235 (not res!2303991)) b!5416237))

(assert (= (and b!5416237 res!2303995) b!5416225))

(assert (= (and b!5416225 (not res!2303992)) b!5416236))

(assert (= (and b!5416236 (not res!2303990)) b!5416226))

(assert (= (or b!5416229 b!5416225 b!5416228) bm!387615))

(declare-fun m!6440238 () Bool)

(assert (=> b!5416231 m!6440238))

(declare-fun m!6440242 () Bool)

(assert (=> b!5416234 m!6440242))

(assert (=> b!5416234 m!6440242))

(declare-fun m!6440244 () Bool)

(assert (=> b!5416234 m!6440244))

(declare-fun m!6440246 () Bool)

(assert (=> b!5416234 m!6440246))

(assert (=> b!5416234 m!6440244))

(assert (=> b!5416234 m!6440246))

(declare-fun m!6440252 () Bool)

(assert (=> b!5416234 m!6440252))

(assert (=> b!5416226 m!6440242))

(declare-fun m!6440254 () Bool)

(assert (=> d!1728242 m!6440254))

(declare-fun m!6440256 () Bool)

(assert (=> d!1728242 m!6440256))

(assert (=> b!5416236 m!6440246))

(assert (=> b!5416236 m!6440246))

(declare-fun m!6440260 () Bool)

(assert (=> b!5416236 m!6440260))

(assert (=> b!5416224 m!6440246))

(assert (=> b!5416224 m!6440246))

(assert (=> b!5416224 m!6440260))

(assert (=> bm!387615 m!6440254))

(assert (=> b!5416227 m!6440242))

(assert (=> b!5415502 d!1728242))

(declare-fun d!1728244 () Bool)

(assert (=> d!1728244 (= (matchR!7382 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208535)) (matchZipper!1441 lt!2208564 (_1!35699 lt!2208535)))))

(declare-fun lt!2208725 () Unit!154310)

(declare-fun choose!40971 ((InoxSet Context!9162) List!61892 Regex!15197 List!61890) Unit!154310)

(assert (=> d!1728244 (= lt!2208725 (choose!40971 lt!2208564 lt!2208513 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208535)))))

(assert (=> d!1728244 (validRegex!6933 (reg!15526 (regOne!30906 r!7292)))))

(assert (=> d!1728244 (= (theoremZipperRegexEquiv!511 lt!2208564 lt!2208513 (reg!15526 (regOne!30906 r!7292)) (_1!35699 lt!2208535)) lt!2208725)))

(declare-fun bs!1251126 () Bool)

(assert (= bs!1251126 d!1728244))

(assert (=> bs!1251126 m!6439544))

(assert (=> bs!1251126 m!6439398))

(declare-fun m!6440264 () Bool)

(assert (=> bs!1251126 m!6440264))

(assert (=> bs!1251126 m!6439566))

(assert (=> b!5415502 d!1728244))

(declare-fun bs!1251127 () Bool)

(declare-fun d!1728248 () Bool)

(assert (= bs!1251127 (and d!1728248 d!1728196)))

(declare-fun lambda!283240 () Int)

(assert (=> bs!1251127 (not (= lambda!283240 lambda!283229))))

(declare-fun bs!1251128 () Bool)

(assert (= bs!1251128 (and d!1728248 d!1728070)))

(assert (=> bs!1251128 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283240 lambda!283182))))

(declare-fun bs!1251129 () Bool)

(assert (= bs!1251129 (and d!1728248 d!1728034)))

(assert (=> bs!1251129 (not (= lambda!283240 lambda!283167))))

(declare-fun bs!1251130 () Bool)

(assert (= bs!1251130 (and d!1728248 b!5415814)))

(assert (=> bs!1251130 (not (= lambda!283240 lambda!283207))))

(declare-fun bs!1251131 () Bool)

(assert (= bs!1251131 (and d!1728248 b!5415502)))

(assert (=> bs!1251131 (not (= lambda!283240 lambda!283158))))

(declare-fun bs!1251132 () Bool)

(assert (= bs!1251132 (and d!1728248 b!5415478)))

(assert (=> bs!1251132 (not (= lambda!283240 lambda!283160))))

(assert (=> bs!1251129 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283240 lambda!283166))))

(declare-fun bs!1251133 () Bool)

(assert (= bs!1251133 (and d!1728248 b!5415483)))

(assert (=> bs!1251133 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283240 lambda!283152))))

(declare-fun bs!1251134 () Bool)

(assert (= bs!1251134 (and d!1728248 d!1728224)))

(assert (=> bs!1251134 (= lambda!283240 lambda!283233)))

(assert (=> bs!1251132 (not (= lambda!283240 lambda!283161))))

(assert (=> bs!1251133 (not (= lambda!283240 lambda!283153))))

(declare-fun bs!1251135 () Bool)

(assert (= bs!1251135 (and d!1728248 d!1728194)))

(assert (=> bs!1251135 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283240 lambda!283227))))

(assert (=> bs!1251127 (= (= lt!2208521 (regOne!30906 r!7292)) (= lambda!283240 lambda!283228))))

(declare-fun bs!1251136 () Bool)

(assert (= bs!1251136 (and d!1728248 b!5415816)))

(assert (=> bs!1251136 (not (= lambda!283240 lambda!283208))))

(assert (=> bs!1251131 (= lambda!283240 lambda!283157)))

(assert (=> bs!1251132 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283240 lambda!283159))))

(declare-fun bs!1251137 () Bool)

(assert (= bs!1251137 (and d!1728248 d!1728052)))

(assert (=> bs!1251137 (not (= lambda!283240 lambda!283173))))

(assert (=> bs!1251134 (not (= lambda!283240 lambda!283234))))

(assert (=> bs!1251137 (= (and (= s!2326 (_1!35699 lt!2208525)) (= lt!2208521 (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283240 lambda!283172))))

(assert (=> d!1728248 true))

(assert (=> d!1728248 true))

(assert (=> d!1728248 true))

(assert (=> d!1728248 (= (isDefined!12011 (findConcatSeparation!1722 lt!2208521 (regTwo!30906 r!7292) Nil!61766 s!2326 s!2326)) (Exists!2378 lambda!283240))))

(declare-fun lt!2208726 () Unit!154310)

(assert (=> d!1728248 (= lt!2208726 (choose!40957 lt!2208521 (regTwo!30906 r!7292) s!2326))))

(assert (=> d!1728248 (validRegex!6933 lt!2208521)))

(assert (=> d!1728248 (= (lemmaFindConcatSeparationEquivalentToExists!1486 lt!2208521 (regTwo!30906 r!7292) s!2326) lt!2208726)))

(declare-fun bs!1251138 () Bool)

(assert (= bs!1251138 d!1728248))

(assert (=> bs!1251138 m!6439536))

(assert (=> bs!1251138 m!6439674))

(declare-fun m!6440300 () Bool)

(assert (=> bs!1251138 m!6440300))

(declare-fun m!6440302 () Bool)

(assert (=> bs!1251138 m!6440302))

(assert (=> bs!1251138 m!6439536))

(declare-fun m!6440304 () Bool)

(assert (=> bs!1251138 m!6440304))

(assert (=> b!5415502 d!1728248))

(declare-fun d!1728256 () Bool)

(assert (=> d!1728256 (matchR!7382 (Concat!24042 (reg!15526 (regOne!30906 r!7292)) lt!2208536) (++!13568 (_1!35699 lt!2208535) (_2!35699 lt!2208535)))))

(declare-fun lt!2208732 () Unit!154310)

(declare-fun choose!40972 (Regex!15197 Regex!15197 List!61890 List!61890) Unit!154310)

(assert (=> d!1728256 (= lt!2208732 (choose!40972 (reg!15526 (regOne!30906 r!7292)) lt!2208536 (_1!35699 lt!2208535) (_2!35699 lt!2208535)))))

(declare-fun e!3357141 () Bool)

(assert (=> d!1728256 e!3357141))

(declare-fun res!2304003 () Bool)

(assert (=> d!1728256 (=> (not res!2304003) (not e!3357141))))

(assert (=> d!1728256 (= res!2304003 (validRegex!6933 (reg!15526 (regOne!30906 r!7292))))))

(assert (=> d!1728256 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!220 (reg!15526 (regOne!30906 r!7292)) lt!2208536 (_1!35699 lt!2208535) (_2!35699 lt!2208535)) lt!2208732)))

(declare-fun b!5416251 () Bool)

(assert (=> b!5416251 (= e!3357141 (validRegex!6933 lt!2208536))))

(assert (= (and d!1728256 res!2304003) b!5416251))

(assert (=> d!1728256 m!6439486))

(assert (=> d!1728256 m!6439486))

(declare-fun m!6440306 () Bool)

(assert (=> d!1728256 m!6440306))

(declare-fun m!6440308 () Bool)

(assert (=> d!1728256 m!6440308))

(assert (=> d!1728256 m!6439566))

(assert (=> b!5416251 m!6440182))

(assert (=> b!5415502 d!1728256))

(declare-fun d!1728258 () Bool)

(assert (=> d!1728258 (= (get!21298 lt!2208530) (v!51336 lt!2208530))))

(assert (=> b!5415502 d!1728258))

(declare-fun bs!1251140 () Bool)

(declare-fun d!1728260 () Bool)

(assert (= bs!1251140 (and d!1728260 b!5415469)))

(declare-fun lambda!283243 () Int)

(assert (=> bs!1251140 (= lambda!283243 lambda!283156)))

(assert (=> d!1728260 (matchZipper!1441 (store ((as const (Array Context!9162 Bool)) false) (Context!9163 (++!13567 (exprs!5081 lt!2208526) (exprs!5081 lt!2208566))) true) (++!13568 (_1!35699 lt!2208535) (_2!35699 lt!2208535)))))

(declare-fun lt!2208744 () Unit!154310)

(assert (=> d!1728260 (= lt!2208744 (lemmaConcatPreservesForall!222 (exprs!5081 lt!2208526) (exprs!5081 lt!2208566) lambda!283243))))

(declare-fun lt!2208743 () Unit!154310)

(declare-fun choose!40975 (Context!9162 Context!9162 List!61890 List!61890) Unit!154310)

(assert (=> d!1728260 (= lt!2208743 (choose!40975 lt!2208526 lt!2208566 (_1!35699 lt!2208535) (_2!35699 lt!2208535)))))

(assert (=> d!1728260 (matchZipper!1441 (store ((as const (Array Context!9162 Bool)) false) lt!2208526 true) (_1!35699 lt!2208535))))

(assert (=> d!1728260 (= (lemmaConcatenateContextMatchesConcatOfStrings!70 lt!2208526 lt!2208566 (_1!35699 lt!2208535) (_2!35699 lt!2208535)) lt!2208743)))

(declare-fun bs!1251141 () Bool)

(assert (= bs!1251141 d!1728260))

(declare-fun m!6440316 () Bool)

(assert (=> bs!1251141 m!6440316))

(assert (=> bs!1251141 m!6439418))

(declare-fun m!6440318 () Bool)

(assert (=> bs!1251141 m!6440318))

(assert (=> bs!1251141 m!6440316))

(assert (=> bs!1251141 m!6439486))

(declare-fun m!6440320 () Bool)

(assert (=> bs!1251141 m!6440320))

(assert (=> bs!1251141 m!6439486))

(declare-fun m!6440322 () Bool)

(assert (=> bs!1251141 m!6440322))

(declare-fun m!6440324 () Bool)

(assert (=> bs!1251141 m!6440324))

(assert (=> bs!1251141 m!6439418))

(declare-fun m!6440326 () Bool)

(assert (=> bs!1251141 m!6440326))

(assert (=> b!5415502 d!1728260))

(declare-fun d!1728266 () Bool)

(assert (=> d!1728266 (= (matchR!7382 (Concat!24042 (Concat!24042 (reg!15526 (regOne!30906 r!7292)) lt!2208538) (regTwo!30906 r!7292)) s!2326) (matchR!7382 (Concat!24042 (reg!15526 (regOne!30906 r!7292)) (Concat!24042 lt!2208538 (regTwo!30906 r!7292))) s!2326))))

(declare-fun lt!2208753 () Unit!154310)

(declare-fun choose!40977 (Regex!15197 Regex!15197 Regex!15197 List!61890) Unit!154310)

(assert (=> d!1728266 (= lt!2208753 (choose!40977 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (regTwo!30906 r!7292) s!2326))))

(declare-fun e!3357164 () Bool)

(assert (=> d!1728266 e!3357164))

(declare-fun res!2304033 () Bool)

(assert (=> d!1728266 (=> (not res!2304033) (not e!3357164))))

(assert (=> d!1728266 (= res!2304033 (validRegex!6933 (reg!15526 (regOne!30906 r!7292))))))

(assert (=> d!1728266 (= (lemmaConcatAssociative!50 (reg!15526 (regOne!30906 r!7292)) lt!2208538 (regTwo!30906 r!7292) s!2326) lt!2208753)))

(declare-fun b!5416293 () Bool)

(declare-fun res!2304034 () Bool)

(assert (=> b!5416293 (=> (not res!2304034) (not e!3357164))))

(assert (=> b!5416293 (= res!2304034 (validRegex!6933 lt!2208538))))

(declare-fun b!5416294 () Bool)

(assert (=> b!5416294 (= e!3357164 (validRegex!6933 (regTwo!30906 r!7292)))))

(assert (= (and d!1728266 res!2304033) b!5416293))

(assert (= (and b!5416293 res!2304034) b!5416294))

(declare-fun m!6440354 () Bool)

(assert (=> d!1728266 m!6440354))

(declare-fun m!6440358 () Bool)

(assert (=> d!1728266 m!6440358))

(declare-fun m!6440362 () Bool)

(assert (=> d!1728266 m!6440362))

(assert (=> d!1728266 m!6439566))

(declare-fun m!6440366 () Bool)

(assert (=> b!5416293 m!6440366))

(declare-fun m!6440368 () Bool)

(assert (=> b!5416294 m!6440368))

(assert (=> b!5415502 d!1728266))

(declare-fun d!1728278 () Bool)

(assert (=> d!1728278 (= (matchR!7382 lt!2208536 (_2!35699 lt!2208535)) (matchZipper!1441 lt!2208549 (_2!35699 lt!2208535)))))

(declare-fun lt!2208754 () Unit!154310)

(assert (=> d!1728278 (= lt!2208754 (choose!40971 lt!2208549 lt!2208541 lt!2208536 (_2!35699 lt!2208535)))))

(assert (=> d!1728278 (validRegex!6933 lt!2208536)))

(assert (=> d!1728278 (= (theoremZipperRegexEquiv!511 lt!2208549 lt!2208541 lt!2208536 (_2!35699 lt!2208535)) lt!2208754)))

(declare-fun bs!1251145 () Bool)

(assert (= bs!1251145 d!1728278))

(assert (=> bs!1251145 m!6439532))

(assert (=> bs!1251145 m!6439490))

(declare-fun m!6440374 () Bool)

(assert (=> bs!1251145 m!6440374))

(assert (=> bs!1251145 m!6440182))

(assert (=> b!5415502 d!1728278))

(declare-fun b!5416297 () Bool)

(declare-fun res!2304035 () Bool)

(declare-fun e!3357172 () Bool)

(assert (=> b!5416297 (=> (not res!2304035) (not e!3357172))))

(assert (=> b!5416297 (= res!2304035 (isEmpty!33765 (tail!10714 (_1!35699 lt!2208525))))))

(declare-fun b!5416299 () Bool)

(declare-fun e!3357169 () Bool)

(declare-fun e!3357171 () Bool)

(assert (=> b!5416299 (= e!3357169 e!3357171)))

(declare-fun res!2304039 () Bool)

(assert (=> b!5416299 (=> res!2304039 e!3357171)))

(declare-fun call!387624 () Bool)

(assert (=> b!5416299 (= res!2304039 call!387624)))

(declare-fun b!5416300 () Bool)

(assert (=> b!5416300 (= e!3357171 (not (= (head!11617 (_1!35699 lt!2208525)) (c!944259 lt!2208521))))))

(declare-fun bm!387619 () Bool)

(assert (=> bm!387619 (= call!387624 (isEmpty!33765 (_1!35699 lt!2208525)))))

(declare-fun b!5416301 () Bool)

(assert (=> b!5416301 (= e!3357172 (= (head!11617 (_1!35699 lt!2208525)) (c!944259 lt!2208521)))))

(declare-fun b!5416303 () Bool)

(declare-fun res!2304036 () Bool)

(assert (=> b!5416303 (=> (not res!2304036) (not e!3357172))))

(assert (=> b!5416303 (= res!2304036 (not call!387624))))

(declare-fun b!5416305 () Bool)

(declare-fun e!3357165 () Bool)

(declare-fun lt!2208755 () Bool)

(assert (=> b!5416305 (= e!3357165 (= lt!2208755 call!387624))))

(declare-fun b!5416306 () Bool)

(declare-fun res!2304042 () Bool)

(declare-fun e!3357174 () Bool)

(assert (=> b!5416306 (=> res!2304042 e!3357174)))

(assert (=> b!5416306 (= res!2304042 (not ((_ is ElementMatch!15197) lt!2208521)))))

(declare-fun e!3357173 () Bool)

(assert (=> b!5416306 (= e!3357173 e!3357174)))

(declare-fun d!1728286 () Bool)

(assert (=> d!1728286 e!3357165))

(declare-fun c!944473 () Bool)

(assert (=> d!1728286 (= c!944473 ((_ is EmptyExpr!15197) lt!2208521))))

(declare-fun e!3357167 () Bool)

(assert (=> d!1728286 (= lt!2208755 e!3357167)))

(declare-fun c!944471 () Bool)

(assert (=> d!1728286 (= c!944471 (isEmpty!33765 (_1!35699 lt!2208525)))))

(assert (=> d!1728286 (validRegex!6933 lt!2208521)))

(assert (=> d!1728286 (= (matchR!7382 lt!2208521 (_1!35699 lt!2208525)) lt!2208755)))

(declare-fun b!5416307 () Bool)

(assert (=> b!5416307 (= e!3357167 (nullable!5366 lt!2208521))))

(declare-fun b!5416308 () Bool)

(assert (=> b!5416308 (= e!3357173 (not lt!2208755))))

(declare-fun b!5416309 () Bool)

(assert (=> b!5416309 (= e!3357165 e!3357173)))

(declare-fun c!944474 () Bool)

(assert (=> b!5416309 (= c!944474 ((_ is EmptyLang!15197) lt!2208521))))

(declare-fun b!5416310 () Bool)

(assert (=> b!5416310 (= e!3357167 (matchR!7382 (derivativeStep!4270 lt!2208521 (head!11617 (_1!35699 lt!2208525))) (tail!10714 (_1!35699 lt!2208525))))))

(declare-fun b!5416311 () Bool)

(declare-fun res!2304038 () Bool)

(assert (=> b!5416311 (=> res!2304038 e!3357174)))

(assert (=> b!5416311 (= res!2304038 e!3357172)))

(declare-fun res!2304041 () Bool)

(assert (=> b!5416311 (=> (not res!2304041) (not e!3357172))))

(assert (=> b!5416311 (= res!2304041 lt!2208755)))

(declare-fun b!5416312 () Bool)

(declare-fun res!2304037 () Bool)

(assert (=> b!5416312 (=> res!2304037 e!3357171)))

(assert (=> b!5416312 (= res!2304037 (not (isEmpty!33765 (tail!10714 (_1!35699 lt!2208525)))))))

(declare-fun b!5416313 () Bool)

(assert (=> b!5416313 (= e!3357174 e!3357169)))

(declare-fun res!2304043 () Bool)

(assert (=> b!5416313 (=> (not res!2304043) (not e!3357169))))

(assert (=> b!5416313 (= res!2304043 (not lt!2208755))))

(assert (= (and d!1728286 c!944471) b!5416307))

(assert (= (and d!1728286 (not c!944471)) b!5416310))

(assert (= (and d!1728286 c!944473) b!5416305))

(assert (= (and d!1728286 (not c!944473)) b!5416309))

(assert (= (and b!5416309 c!944474) b!5416308))

(assert (= (and b!5416309 (not c!944474)) b!5416306))

(assert (= (and b!5416306 (not res!2304042)) b!5416311))

(assert (= (and b!5416311 res!2304041) b!5416303))

(assert (= (and b!5416303 res!2304036) b!5416297))

(assert (= (and b!5416297 res!2304035) b!5416301))

(assert (= (and b!5416311 (not res!2304038)) b!5416313))

(assert (= (and b!5416313 res!2304043) b!5416299))

(assert (= (and b!5416299 (not res!2304039)) b!5416312))

(assert (= (and b!5416312 (not res!2304037)) b!5416300))

(assert (= (or b!5416305 b!5416299 b!5416303) bm!387619))

(declare-fun m!6440382 () Bool)

(assert (=> b!5416307 m!6440382))

(declare-fun m!6440384 () Bool)

(assert (=> b!5416310 m!6440384))

(assert (=> b!5416310 m!6440384))

(declare-fun m!6440386 () Bool)

(assert (=> b!5416310 m!6440386))

(declare-fun m!6440388 () Bool)

(assert (=> b!5416310 m!6440388))

(assert (=> b!5416310 m!6440386))

(assert (=> b!5416310 m!6440388))

(declare-fun m!6440390 () Bool)

(assert (=> b!5416310 m!6440390))

(assert (=> b!5416300 m!6440384))

(assert (=> d!1728286 m!6439866))

(assert (=> d!1728286 m!6439674))

(assert (=> b!5416312 m!6440388))

(assert (=> b!5416312 m!6440388))

(declare-fun m!6440392 () Bool)

(assert (=> b!5416312 m!6440392))

(assert (=> b!5416297 m!6440388))

(assert (=> b!5416297 m!6440388))

(assert (=> b!5416297 m!6440392))

(assert (=> bm!387619 m!6439866))

(assert (=> b!5416301 m!6440384))

(assert (=> b!5415502 d!1728286))

(declare-fun bs!1251149 () Bool)

(declare-fun b!5416317 () Bool)

(assert (= bs!1251149 (and b!5416317 d!1728196)))

(declare-fun lambda!283244 () Int)

(assert (=> bs!1251149 (not (= lambda!283244 lambda!283229))))

(declare-fun bs!1251150 () Bool)

(assert (= bs!1251150 (and b!5416317 d!1728070)))

(assert (=> bs!1251150 (not (= lambda!283244 lambda!283182))))

(declare-fun bs!1251151 () Bool)

(assert (= bs!1251151 (and b!5416317 d!1728034)))

(assert (=> bs!1251151 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 lt!2208512) (reg!15526 (regOne!30906 r!7292))) (= lt!2208512 (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283244 lambda!283167))))

(declare-fun bs!1251152 () Bool)

(assert (= bs!1251152 (and b!5416317 b!5415814)))

(assert (=> bs!1251152 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 lt!2208512) (reg!15526 lt!2208521)) (= lt!2208512 lt!2208521)) (= lambda!283244 lambda!283207))))

(declare-fun bs!1251153 () Bool)

(assert (= bs!1251153 (and b!5416317 b!5415502)))

(assert (=> bs!1251153 (not (= lambda!283244 lambda!283158))))

(declare-fun bs!1251154 () Bool)

(assert (= bs!1251154 (and b!5416317 b!5415478)))

(assert (=> bs!1251154 (not (= lambda!283244 lambda!283160))))

(assert (=> bs!1251151 (not (= lambda!283244 lambda!283166))))

(declare-fun bs!1251155 () Bool)

(assert (= bs!1251155 (and b!5416317 b!5415483)))

(assert (=> bs!1251155 (not (= lambda!283244 lambda!283152))))

(declare-fun bs!1251156 () Bool)

(assert (= bs!1251156 (and b!5416317 d!1728224)))

(assert (=> bs!1251156 (not (= lambda!283244 lambda!283233))))

(assert (=> bs!1251154 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 lt!2208512) (reg!15526 (regOne!30906 r!7292))) (= lt!2208512 lt!2208538)) (= lambda!283244 lambda!283161))))

(assert (=> bs!1251155 (not (= lambda!283244 lambda!283153))))

(declare-fun bs!1251157 () Bool)

(assert (= bs!1251157 (and b!5416317 d!1728248)))

(assert (=> bs!1251157 (not (= lambda!283244 lambda!283240))))

(declare-fun bs!1251158 () Bool)

(assert (= bs!1251158 (and b!5416317 d!1728194)))

(assert (=> bs!1251158 (not (= lambda!283244 lambda!283227))))

(assert (=> bs!1251149 (not (= lambda!283244 lambda!283228))))

(declare-fun bs!1251159 () Bool)

(assert (= bs!1251159 (and b!5416317 b!5415816)))

(assert (=> bs!1251159 (not (= lambda!283244 lambda!283208))))

(assert (=> bs!1251153 (not (= lambda!283244 lambda!283157))))

(assert (=> bs!1251154 (not (= lambda!283244 lambda!283159))))

(declare-fun bs!1251160 () Bool)

(assert (= bs!1251160 (and b!5416317 d!1728052)))

(assert (=> bs!1251160 (not (= lambda!283244 lambda!283173))))

(assert (=> bs!1251156 (not (= lambda!283244 lambda!283234))))

(assert (=> bs!1251160 (not (= lambda!283244 lambda!283172))))

(assert (=> b!5416317 true))

(assert (=> b!5416317 true))

(declare-fun bs!1251164 () Bool)

(declare-fun b!5416319 () Bool)

(assert (= bs!1251164 (and b!5416319 d!1728070)))

(declare-fun lambda!283246 () Int)

(assert (=> bs!1251164 (not (= lambda!283246 lambda!283182))))

(declare-fun bs!1251166 () Bool)

(assert (= bs!1251166 (and b!5416319 d!1728034)))

(assert (=> bs!1251166 (not (= lambda!283246 lambda!283167))))

(declare-fun bs!1251168 () Bool)

(assert (= bs!1251168 (and b!5416319 b!5415814)))

(assert (=> bs!1251168 (not (= lambda!283246 lambda!283207))))

(declare-fun bs!1251170 () Bool)

(assert (= bs!1251170 (and b!5416319 b!5415502)))

(assert (=> bs!1251170 (= (and (= (regOne!30906 lt!2208512) lt!2208521) (= (regTwo!30906 lt!2208512) (regTwo!30906 r!7292))) (= lambda!283246 lambda!283158))))

(declare-fun bs!1251171 () Bool)

(assert (= bs!1251171 (and b!5416319 b!5415478)))

(assert (=> bs!1251171 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 lt!2208512) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 lt!2208512) lt!2208538)) (= lambda!283246 lambda!283160))))

(assert (=> bs!1251166 (not (= lambda!283246 lambda!283166))))

(declare-fun bs!1251172 () Bool)

(assert (= bs!1251172 (and b!5416319 b!5415483)))

(assert (=> bs!1251172 (not (= lambda!283246 lambda!283152))))

(declare-fun bs!1251174 () Bool)

(assert (= bs!1251174 (and b!5416319 d!1728224)))

(assert (=> bs!1251174 (not (= lambda!283246 lambda!283233))))

(assert (=> bs!1251171 (not (= lambda!283246 lambda!283161))))

(assert (=> bs!1251172 (= (and (= (regOne!30906 lt!2208512) (regOne!30906 r!7292)) (= (regTwo!30906 lt!2208512) (regTwo!30906 r!7292))) (= lambda!283246 lambda!283153))))

(declare-fun bs!1251175 () Bool)

(assert (= bs!1251175 (and b!5416319 d!1728248)))

(assert (=> bs!1251175 (not (= lambda!283246 lambda!283240))))

(declare-fun bs!1251177 () Bool)

(assert (= bs!1251177 (and b!5416319 d!1728196)))

(assert (=> bs!1251177 (= (and (= (regOne!30906 lt!2208512) (regOne!30906 r!7292)) (= (regTwo!30906 lt!2208512) (regTwo!30906 r!7292))) (= lambda!283246 lambda!283229))))

(declare-fun bs!1251179 () Bool)

(assert (= bs!1251179 (and b!5416319 b!5416317)))

(assert (=> bs!1251179 (not (= lambda!283246 lambda!283244))))

(declare-fun bs!1251180 () Bool)

(assert (= bs!1251180 (and b!5416319 d!1728194)))

(assert (=> bs!1251180 (not (= lambda!283246 lambda!283227))))

(assert (=> bs!1251177 (not (= lambda!283246 lambda!283228))))

(declare-fun bs!1251182 () Bool)

(assert (= bs!1251182 (and b!5416319 b!5415816)))

(assert (=> bs!1251182 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 lt!2208512) (regOne!30906 lt!2208521)) (= (regTwo!30906 lt!2208512) (regTwo!30906 lt!2208521))) (= lambda!283246 lambda!283208))))

(assert (=> bs!1251170 (not (= lambda!283246 lambda!283157))))

(assert (=> bs!1251171 (not (= lambda!283246 lambda!283159))))

(declare-fun bs!1251185 () Bool)

(assert (= bs!1251185 (and b!5416319 d!1728052)))

(assert (=> bs!1251185 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 lt!2208512) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 lt!2208512) lt!2208538)) (= lambda!283246 lambda!283173))))

(assert (=> bs!1251174 (= (and (= (regOne!30906 lt!2208512) lt!2208521) (= (regTwo!30906 lt!2208512) (regTwo!30906 r!7292))) (= lambda!283246 lambda!283234))))

(assert (=> bs!1251185 (not (= lambda!283246 lambda!283172))))

(assert (=> b!5416319 true))

(assert (=> b!5416319 true))

(declare-fun b!5416314 () Bool)

(declare-fun e!3357178 () Bool)

(declare-fun e!3357177 () Bool)

(assert (=> b!5416314 (= e!3357178 e!3357177)))

(declare-fun res!2304044 () Bool)

(assert (=> b!5416314 (= res!2304044 (matchRSpec!2300 (regOne!30907 lt!2208512) s!2326))))

(assert (=> b!5416314 (=> res!2304044 e!3357177)))

(declare-fun b!5416315 () Bool)

(declare-fun c!944478 () Bool)

(assert (=> b!5416315 (= c!944478 ((_ is ElementMatch!15197) lt!2208512))))

(declare-fun e!3357176 () Bool)

(declare-fun e!3357175 () Bool)

(assert (=> b!5416315 (= e!3357176 e!3357175)))

(declare-fun b!5416316 () Bool)

(declare-fun e!3357179 () Bool)

(assert (=> b!5416316 (= e!3357179 e!3357176)))

(declare-fun res!2304045 () Bool)

(assert (=> b!5416316 (= res!2304045 (not ((_ is EmptyLang!15197) lt!2208512)))))

(assert (=> b!5416316 (=> (not res!2304045) (not e!3357176))))

(declare-fun e!3357180 () Bool)

(declare-fun call!387625 () Bool)

(assert (=> b!5416317 (= e!3357180 call!387625)))

(declare-fun b!5416318 () Bool)

(assert (=> b!5416318 (= e!3357175 (= s!2326 (Cons!61766 (c!944259 lt!2208512) Nil!61766)))))

(declare-fun d!1728290 () Bool)

(declare-fun c!944477 () Bool)

(assert (=> d!1728290 (= c!944477 ((_ is EmptyExpr!15197) lt!2208512))))

(assert (=> d!1728290 (= (matchRSpec!2300 lt!2208512 s!2326) e!3357179)))

(declare-fun e!3357181 () Bool)

(assert (=> b!5416319 (= e!3357181 call!387625)))

(declare-fun bm!387620 () Bool)

(declare-fun call!387626 () Bool)

(assert (=> bm!387620 (= call!387626 (isEmpty!33765 s!2326))))

(declare-fun c!944476 () Bool)

(declare-fun bm!387621 () Bool)

(assert (=> bm!387621 (= call!387625 (Exists!2378 (ite c!944476 lambda!283244 lambda!283246)))))

(declare-fun b!5416320 () Bool)

(assert (=> b!5416320 (= e!3357177 (matchRSpec!2300 (regTwo!30907 lt!2208512) s!2326))))

(declare-fun b!5416321 () Bool)

(declare-fun c!944475 () Bool)

(assert (=> b!5416321 (= c!944475 ((_ is Union!15197) lt!2208512))))

(assert (=> b!5416321 (= e!3357175 e!3357178)))

(declare-fun b!5416322 () Bool)

(declare-fun res!2304046 () Bool)

(assert (=> b!5416322 (=> res!2304046 e!3357180)))

(assert (=> b!5416322 (= res!2304046 call!387626)))

(assert (=> b!5416322 (= e!3357181 e!3357180)))

(declare-fun b!5416323 () Bool)

(assert (=> b!5416323 (= e!3357178 e!3357181)))

(assert (=> b!5416323 (= c!944476 ((_ is Star!15197) lt!2208512))))

(declare-fun b!5416324 () Bool)

(assert (=> b!5416324 (= e!3357179 call!387626)))

(assert (= (and d!1728290 c!944477) b!5416324))

(assert (= (and d!1728290 (not c!944477)) b!5416316))

(assert (= (and b!5416316 res!2304045) b!5416315))

(assert (= (and b!5416315 c!944478) b!5416318))

(assert (= (and b!5416315 (not c!944478)) b!5416321))

(assert (= (and b!5416321 c!944475) b!5416314))

(assert (= (and b!5416321 (not c!944475)) b!5416323))

(assert (= (and b!5416314 (not res!2304044)) b!5416320))

(assert (= (and b!5416323 c!944476) b!5416322))

(assert (= (and b!5416323 (not c!944476)) b!5416319))

(assert (= (and b!5416322 (not res!2304046)) b!5416317))

(assert (= (or b!5416317 b!5416319) bm!387621))

(assert (= (or b!5416324 b!5416322) bm!387620))

(declare-fun m!6440422 () Bool)

(assert (=> b!5416314 m!6440422))

(assert (=> bm!387620 m!6440254))

(declare-fun m!6440424 () Bool)

(assert (=> bm!387621 m!6440424))

(declare-fun m!6440426 () Bool)

(assert (=> b!5416320 m!6440426))

(assert (=> b!5415502 d!1728290))

(declare-fun d!1728302 () Bool)

(assert (=> d!1728302 (= (matchR!7382 lt!2208512 s!2326) (matchRSpec!2300 lt!2208512 s!2326))))

(declare-fun lt!2208757 () Unit!154310)

(assert (=> d!1728302 (= lt!2208757 (choose!40955 lt!2208512 s!2326))))

(assert (=> d!1728302 (validRegex!6933 lt!2208512)))

(assert (=> d!1728302 (= (mainMatchTheorem!2300 lt!2208512 s!2326) lt!2208757)))

(declare-fun bs!1251192 () Bool)

(assert (= bs!1251192 d!1728302))

(assert (=> bs!1251192 m!6439526))

(assert (=> bs!1251192 m!6439508))

(declare-fun m!6440428 () Bool)

(assert (=> bs!1251192 m!6440428))

(assert (=> bs!1251192 m!6440256))

(assert (=> b!5415502 d!1728302))

(declare-fun d!1728304 () Bool)

(declare-fun forall!14543 (List!61891 Int) Bool)

(assert (=> d!1728304 (forall!14543 (++!13567 lt!2208515 lt!2208567) lambda!283156)))

(declare-fun lt!2208760 () Unit!154310)

(declare-fun choose!40978 (List!61891 List!61891 Int) Unit!154310)

(assert (=> d!1728304 (= lt!2208760 (choose!40978 lt!2208515 lt!2208567 lambda!283156))))

(assert (=> d!1728304 (forall!14543 lt!2208515 lambda!283156)))

(assert (=> d!1728304 (= (lemmaConcatPreservesForall!222 lt!2208515 lt!2208567 lambda!283156) lt!2208760)))

(declare-fun bs!1251200 () Bool)

(assert (= bs!1251200 d!1728304))

(assert (=> bs!1251200 m!6439460))

(assert (=> bs!1251200 m!6439460))

(declare-fun m!6440436 () Bool)

(assert (=> bs!1251200 m!6440436))

(declare-fun m!6440438 () Bool)

(assert (=> bs!1251200 m!6440438))

(declare-fun m!6440440 () Bool)

(assert (=> bs!1251200 m!6440440))

(assert (=> b!5415502 d!1728304))

(declare-fun d!1728308 () Bool)

(assert (=> d!1728308 (= (flatMap!924 z!1189 lambda!283154) (dynLambda!24338 lambda!283154 (h!68216 zl!343)))))

(declare-fun lt!2208762 () Unit!154310)

(assert (=> d!1728308 (= lt!2208762 (choose!40959 z!1189 (h!68216 zl!343) lambda!283154))))

(assert (=> d!1728308 (= z!1189 (store ((as const (Array Context!9162 Bool)) false) (h!68216 zl!343) true))))

(assert (=> d!1728308 (= (lemmaFlatMapOnSingletonSet!456 z!1189 (h!68216 zl!343) lambda!283154) lt!2208762)))

(declare-fun b_lambda!206805 () Bool)

(assert (=> (not b_lambda!206805) (not d!1728308)))

(declare-fun bs!1251201 () Bool)

(assert (= bs!1251201 d!1728308))

(assert (=> bs!1251201 m!6439368))

(declare-fun m!6440442 () Bool)

(assert (=> bs!1251201 m!6440442))

(declare-fun m!6440444 () Bool)

(assert (=> bs!1251201 m!6440444))

(declare-fun m!6440446 () Bool)

(assert (=> bs!1251201 m!6440446))

(assert (=> b!5415480 d!1728308))

(declare-fun bm!387633 () Bool)

(declare-fun call!387638 () (InoxSet Context!9162))

(assert (=> bm!387633 (= call!387638 (derivationStepZipperDown!645 (h!68215 (exprs!5081 lt!2208563)) (Context!9163 (t!375114 (exprs!5081 lt!2208563))) (h!68214 s!2326)))))

(declare-fun b!5416371 () Bool)

(declare-fun e!3357209 () (InoxSet Context!9162))

(assert (=> b!5416371 (= e!3357209 ((_ map or) call!387638 (derivationStepZipperUp!569 (Context!9163 (t!375114 (exprs!5081 lt!2208563))) (h!68214 s!2326))))))

(declare-fun b!5416372 () Bool)

(declare-fun e!3357208 () (InoxSet Context!9162))

(assert (=> b!5416372 (= e!3357209 e!3357208)))

(declare-fun c!944496 () Bool)

(assert (=> b!5416372 (= c!944496 ((_ is Cons!61767) (exprs!5081 lt!2208563)))))

(declare-fun b!5416373 () Bool)

(assert (=> b!5416373 (= e!3357208 call!387638)))

(declare-fun b!5416374 () Bool)

(assert (=> b!5416374 (= e!3357208 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5416375 () Bool)

(declare-fun e!3357210 () Bool)

(assert (=> b!5416375 (= e!3357210 (nullable!5366 (h!68215 (exprs!5081 lt!2208563))))))

(declare-fun d!1728310 () Bool)

(declare-fun c!944495 () Bool)

(assert (=> d!1728310 (= c!944495 e!3357210)))

(declare-fun res!2304061 () Bool)

(assert (=> d!1728310 (=> (not res!2304061) (not e!3357210))))

(assert (=> d!1728310 (= res!2304061 ((_ is Cons!61767) (exprs!5081 lt!2208563)))))

(assert (=> d!1728310 (= (derivationStepZipperUp!569 lt!2208563 (h!68214 s!2326)) e!3357209)))

(assert (= (and d!1728310 res!2304061) b!5416375))

(assert (= (and d!1728310 c!944495) b!5416371))

(assert (= (and d!1728310 (not c!944495)) b!5416372))

(assert (= (and b!5416372 c!944496) b!5416373))

(assert (= (and b!5416372 (not c!944496)) b!5416374))

(assert (= (or b!5416371 b!5416373) bm!387633))

(declare-fun m!6440454 () Bool)

(assert (=> bm!387633 m!6440454))

(declare-fun m!6440456 () Bool)

(assert (=> b!5416371 m!6440456))

(declare-fun m!6440458 () Bool)

(assert (=> b!5416375 m!6440458))

(assert (=> b!5415480 d!1728310))

(declare-fun d!1728314 () Bool)

(declare-fun nullableFct!1601 (Regex!15197) Bool)

(assert (=> d!1728314 (= (nullable!5366 (h!68215 (exprs!5081 (h!68216 zl!343)))) (nullableFct!1601 (h!68215 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun bs!1251208 () Bool)

(assert (= bs!1251208 d!1728314))

(declare-fun m!6440462 () Bool)

(assert (=> bs!1251208 m!6440462))

(assert (=> b!5415480 d!1728314))

(declare-fun bm!387634 () Bool)

(declare-fun call!387639 () (InoxSet Context!9162))

(assert (=> bm!387634 (= call!387639 (derivationStepZipperDown!645 (h!68215 (exprs!5081 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343))))))) (Context!9163 (t!375114 (exprs!5081 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343)))))))) (h!68214 s!2326)))))

(declare-fun e!3357212 () (InoxSet Context!9162))

(declare-fun b!5416376 () Bool)

(assert (=> b!5416376 (= e!3357212 ((_ map or) call!387639 (derivationStepZipperUp!569 (Context!9163 (t!375114 (exprs!5081 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343)))))))) (h!68214 s!2326))))))

(declare-fun b!5416377 () Bool)

(declare-fun e!3357211 () (InoxSet Context!9162))

(assert (=> b!5416377 (= e!3357212 e!3357211)))

(declare-fun c!944498 () Bool)

(assert (=> b!5416377 (= c!944498 ((_ is Cons!61767) (exprs!5081 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343))))))))))

(declare-fun b!5416378 () Bool)

(assert (=> b!5416378 (= e!3357211 call!387639)))

(declare-fun b!5416379 () Bool)

(assert (=> b!5416379 (= e!3357211 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5416380 () Bool)

(declare-fun e!3357213 () Bool)

(assert (=> b!5416380 (= e!3357213 (nullable!5366 (h!68215 (exprs!5081 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343)))))))))))

(declare-fun d!1728318 () Bool)

(declare-fun c!944497 () Bool)

(assert (=> d!1728318 (= c!944497 e!3357213)))

(declare-fun res!2304062 () Bool)

(assert (=> d!1728318 (=> (not res!2304062) (not e!3357213))))

(assert (=> d!1728318 (= res!2304062 ((_ is Cons!61767) (exprs!5081 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343))))))))))

(assert (=> d!1728318 (= (derivationStepZipperUp!569 (Context!9163 (Cons!61767 (h!68215 (exprs!5081 (h!68216 zl!343))) (t!375114 (exprs!5081 (h!68216 zl!343))))) (h!68214 s!2326)) e!3357212)))

(assert (= (and d!1728318 res!2304062) b!5416380))

(assert (= (and d!1728318 c!944497) b!5416376))

(assert (= (and d!1728318 (not c!944497)) b!5416377))

(assert (= (and b!5416377 c!944498) b!5416378))

(assert (= (and b!5416377 (not c!944498)) b!5416379))

(assert (= (or b!5416376 b!5416378) bm!387634))

(declare-fun m!6440466 () Bool)

(assert (=> bm!387634 m!6440466))

(declare-fun m!6440468 () Bool)

(assert (=> b!5416376 m!6440468))

(declare-fun m!6440470 () Bool)

(assert (=> b!5416380 m!6440470))

(assert (=> b!5415480 d!1728318))

(declare-fun d!1728322 () Bool)

(assert (=> d!1728322 (= (flatMap!924 z!1189 lambda!283154) (choose!40958 z!1189 lambda!283154))))

(declare-fun bs!1251211 () Bool)

(assert (= bs!1251211 d!1728322))

(declare-fun m!6440472 () Bool)

(assert (=> bs!1251211 m!6440472))

(assert (=> b!5415480 d!1728322))

(declare-fun bm!387637 () Bool)

(declare-fun call!387642 () (InoxSet Context!9162))

(assert (=> bm!387637 (= call!387642 (derivationStepZipperDown!645 (h!68215 (exprs!5081 (h!68216 zl!343))) (Context!9163 (t!375114 (exprs!5081 (h!68216 zl!343)))) (h!68214 s!2326)))))

(declare-fun e!3357222 () (InoxSet Context!9162))

(declare-fun b!5416392 () Bool)

(assert (=> b!5416392 (= e!3357222 ((_ map or) call!387642 (derivationStepZipperUp!569 (Context!9163 (t!375114 (exprs!5081 (h!68216 zl!343)))) (h!68214 s!2326))))))

(declare-fun b!5416393 () Bool)

(declare-fun e!3357221 () (InoxSet Context!9162))

(assert (=> b!5416393 (= e!3357222 e!3357221)))

(declare-fun c!944504 () Bool)

(assert (=> b!5416393 (= c!944504 ((_ is Cons!61767) (exprs!5081 (h!68216 zl!343))))))

(declare-fun b!5416394 () Bool)

(assert (=> b!5416394 (= e!3357221 call!387642)))

(declare-fun b!5416395 () Bool)

(assert (=> b!5416395 (= e!3357221 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5416396 () Bool)

(declare-fun e!3357223 () Bool)

(assert (=> b!5416396 (= e!3357223 (nullable!5366 (h!68215 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun d!1728324 () Bool)

(declare-fun c!944503 () Bool)

(assert (=> d!1728324 (= c!944503 e!3357223)))

(declare-fun res!2304066 () Bool)

(assert (=> d!1728324 (=> (not res!2304066) (not e!3357223))))

(assert (=> d!1728324 (= res!2304066 ((_ is Cons!61767) (exprs!5081 (h!68216 zl!343))))))

(assert (=> d!1728324 (= (derivationStepZipperUp!569 (h!68216 zl!343) (h!68214 s!2326)) e!3357222)))

(assert (= (and d!1728324 res!2304066) b!5416396))

(assert (= (and d!1728324 c!944503) b!5416392))

(assert (= (and d!1728324 (not c!944503)) b!5416393))

(assert (= (and b!5416393 c!944504) b!5416394))

(assert (= (and b!5416393 (not c!944504)) b!5416395))

(assert (= (or b!5416392 b!5416394) bm!387637))

(declare-fun m!6440474 () Bool)

(assert (=> bm!387637 m!6440474))

(declare-fun m!6440476 () Bool)

(assert (=> b!5416392 m!6440476))

(assert (=> b!5416396 m!6439372))

(assert (=> b!5415480 d!1728324))

(declare-fun bm!387638 () Bool)

(declare-fun call!387645 () List!61891)

(declare-fun call!387643 () List!61891)

(assert (=> bm!387638 (= call!387645 call!387643)))

(declare-fun b!5416398 () Bool)

(declare-fun e!3357229 () (InoxSet Context!9162))

(declare-fun e!3357226 () (InoxSet Context!9162))

(assert (=> b!5416398 (= e!3357229 e!3357226)))

(declare-fun c!944505 () Bool)

(assert (=> b!5416398 (= c!944505 ((_ is Union!15197) (h!68215 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun b!5416399 () Bool)

(declare-fun e!3357227 () (InoxSet Context!9162))

(assert (=> b!5416399 (= e!3357227 ((as const (Array Context!9162 Bool)) false))))

(declare-fun b!5416400 () Bool)

(assert (=> b!5416400 (= e!3357229 (store ((as const (Array Context!9162 Bool)) false) lt!2208563 true))))

(declare-fun bm!387639 () Bool)

(declare-fun call!387644 () (InoxSet Context!9162))

(assert (=> bm!387639 (= call!387644 (derivationStepZipperDown!645 (ite c!944505 (regTwo!30907 (h!68215 (exprs!5081 (h!68216 zl!343)))) (regOne!30906 (h!68215 (exprs!5081 (h!68216 zl!343))))) (ite c!944505 lt!2208563 (Context!9163 call!387643)) (h!68214 s!2326)))))

(declare-fun bm!387640 () Bool)

(declare-fun call!387647 () (InoxSet Context!9162))

(declare-fun call!387648 () (InoxSet Context!9162))

(assert (=> bm!387640 (= call!387647 call!387648)))

(declare-fun b!5416401 () Bool)

(declare-fun e!3357225 () (InoxSet Context!9162))

(declare-fun call!387646 () (InoxSet Context!9162))

(assert (=> b!5416401 (= e!3357225 call!387646)))

(declare-fun b!5416402 () Bool)

(assert (=> b!5416402 (= e!3357227 call!387646)))

(declare-fun bm!387641 () Bool)

(assert (=> bm!387641 (= call!387646 call!387647)))

(declare-fun b!5416403 () Bool)

(declare-fun c!944508 () Bool)

(assert (=> b!5416403 (= c!944508 ((_ is Star!15197) (h!68215 (exprs!5081 (h!68216 zl!343)))))))

(assert (=> b!5416403 (= e!3357225 e!3357227)))

(declare-fun b!5416404 () Bool)

(assert (=> b!5416404 (= e!3357226 ((_ map or) call!387648 call!387644))))

(declare-fun bm!387642 () Bool)

(declare-fun c!944507 () Bool)

(declare-fun c!944506 () Bool)

(assert (=> bm!387642 (= call!387648 (derivationStepZipperDown!645 (ite c!944505 (regOne!30907 (h!68215 (exprs!5081 (h!68216 zl!343)))) (ite c!944506 (regTwo!30906 (h!68215 (exprs!5081 (h!68216 zl!343)))) (ite c!944507 (regOne!30906 (h!68215 (exprs!5081 (h!68216 zl!343)))) (reg!15526 (h!68215 (exprs!5081 (h!68216 zl!343))))))) (ite (or c!944505 c!944506) lt!2208563 (Context!9163 call!387645)) (h!68214 s!2326)))))

(declare-fun b!5416397 () Bool)

(declare-fun e!3357224 () Bool)

(assert (=> b!5416397 (= c!944506 e!3357224)))

(declare-fun res!2304067 () Bool)

(assert (=> b!5416397 (=> (not res!2304067) (not e!3357224))))

(assert (=> b!5416397 (= res!2304067 ((_ is Concat!24042) (h!68215 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun e!3357228 () (InoxSet Context!9162))

(assert (=> b!5416397 (= e!3357226 e!3357228)))

(declare-fun d!1728326 () Bool)

(declare-fun c!944509 () Bool)

(assert (=> d!1728326 (= c!944509 (and ((_ is ElementMatch!15197) (h!68215 (exprs!5081 (h!68216 zl!343)))) (= (c!944259 (h!68215 (exprs!5081 (h!68216 zl!343)))) (h!68214 s!2326))))))

(assert (=> d!1728326 (= (derivationStepZipperDown!645 (h!68215 (exprs!5081 (h!68216 zl!343))) lt!2208563 (h!68214 s!2326)) e!3357229)))

(declare-fun bm!387643 () Bool)

(assert (=> bm!387643 (= call!387643 ($colon$colon!1500 (exprs!5081 lt!2208563) (ite (or c!944506 c!944507) (regTwo!30906 (h!68215 (exprs!5081 (h!68216 zl!343)))) (h!68215 (exprs!5081 (h!68216 zl!343))))))))

(declare-fun b!5416405 () Bool)

(assert (=> b!5416405 (= e!3357228 e!3357225)))

(assert (=> b!5416405 (= c!944507 ((_ is Concat!24042) (h!68215 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun b!5416406 () Bool)

(assert (=> b!5416406 (= e!3357228 ((_ map or) call!387644 call!387647))))

(declare-fun b!5416407 () Bool)

(assert (=> b!5416407 (= e!3357224 (nullable!5366 (regOne!30906 (h!68215 (exprs!5081 (h!68216 zl!343))))))))

(assert (= (and d!1728326 c!944509) b!5416400))

(assert (= (and d!1728326 (not c!944509)) b!5416398))

(assert (= (and b!5416398 c!944505) b!5416404))

(assert (= (and b!5416398 (not c!944505)) b!5416397))

(assert (= (and b!5416397 res!2304067) b!5416407))

(assert (= (and b!5416397 c!944506) b!5416406))

(assert (= (and b!5416397 (not c!944506)) b!5416405))

(assert (= (and b!5416405 c!944507) b!5416401))

(assert (= (and b!5416405 (not c!944507)) b!5416403))

(assert (= (and b!5416403 c!944508) b!5416402))

(assert (= (and b!5416403 (not c!944508)) b!5416399))

(assert (= (or b!5416401 b!5416402) bm!387638))

(assert (= (or b!5416401 b!5416402) bm!387641))

(assert (= (or b!5416406 bm!387638) bm!387643))

(assert (= (or b!5416406 bm!387641) bm!387640))

(assert (= (or b!5416404 b!5416406) bm!387639))

(assert (= (or b!5416404 bm!387640) bm!387642))

(declare-fun m!6440478 () Bool)

(assert (=> b!5416407 m!6440478))

(declare-fun m!6440480 () Bool)

(assert (=> b!5416400 m!6440480))

(declare-fun m!6440482 () Bool)

(assert (=> bm!387643 m!6440482))

(declare-fun m!6440484 () Bool)

(assert (=> bm!387642 m!6440484))

(declare-fun m!6440486 () Bool)

(assert (=> bm!387639 m!6440486))

(assert (=> b!5415480 d!1728326))

(declare-fun d!1728328 () Bool)

(declare-fun c!944510 () Bool)

(assert (=> d!1728328 (= c!944510 (isEmpty!33765 (_2!35699 lt!2208535)))))

(declare-fun e!3357230 () Bool)

(assert (=> d!1728328 (= (matchZipper!1441 lt!2208549 (_2!35699 lt!2208535)) e!3357230)))

(declare-fun b!5416408 () Bool)

(assert (=> b!5416408 (= e!3357230 (nullableZipper!1450 lt!2208549))))

(declare-fun b!5416409 () Bool)

(assert (=> b!5416409 (= e!3357230 (matchZipper!1441 (derivationStepZipper!1436 lt!2208549 (head!11617 (_2!35699 lt!2208535))) (tail!10714 (_2!35699 lt!2208535))))))

(assert (= (and d!1728328 c!944510) b!5416408))

(assert (= (and d!1728328 (not c!944510)) b!5416409))

(assert (=> d!1728328 m!6440180))

(declare-fun m!6440488 () Bool)

(assert (=> b!5416408 m!6440488))

(assert (=> b!5416409 m!6440172))

(assert (=> b!5416409 m!6440172))

(declare-fun m!6440490 () Bool)

(assert (=> b!5416409 m!6440490))

(assert (=> b!5416409 m!6440176))

(assert (=> b!5416409 m!6440490))

(assert (=> b!5416409 m!6440176))

(declare-fun m!6440492 () Bool)

(assert (=> b!5416409 m!6440492))

(assert (=> b!5415500 d!1728328))

(declare-fun d!1728330 () Bool)

(assert (=> d!1728330 (= (nullable!5366 (regOne!30906 (regOne!30906 r!7292))) (nullableFct!1601 (regOne!30906 (regOne!30906 r!7292))))))

(declare-fun bs!1251224 () Bool)

(assert (= bs!1251224 d!1728330))

(declare-fun m!6440494 () Bool)

(assert (=> bs!1251224 m!6440494))

(assert (=> b!5415499 d!1728330))

(declare-fun d!1728332 () Bool)

(declare-fun e!3357233 () Bool)

(assert (=> d!1728332 (= (matchZipper!1441 ((_ map or) lt!2208528 lt!2208556) (t!375113 s!2326)) e!3357233)))

(declare-fun res!2304070 () Bool)

(assert (=> d!1728332 (=> res!2304070 e!3357233)))

(assert (=> d!1728332 (= res!2304070 (matchZipper!1441 lt!2208528 (t!375113 s!2326)))))

(declare-fun lt!2208766 () Unit!154310)

(declare-fun choose!40979 ((InoxSet Context!9162) (InoxSet Context!9162) List!61890) Unit!154310)

(assert (=> d!1728332 (= lt!2208766 (choose!40979 lt!2208528 lt!2208556 (t!375113 s!2326)))))

(assert (=> d!1728332 (= (lemmaZipperConcatMatchesSameAsBothZippers!434 lt!2208528 lt!2208556 (t!375113 s!2326)) lt!2208766)))

(declare-fun b!5416412 () Bool)

(assert (=> b!5416412 (= e!3357233 (matchZipper!1441 lt!2208556 (t!375113 s!2326)))))

(assert (= (and d!1728332 (not res!2304070)) b!5416412))

(assert (=> d!1728332 m!6439496))

(assert (=> d!1728332 m!6439492))

(declare-fun m!6440502 () Bool)

(assert (=> d!1728332 m!6440502))

(assert (=> b!5416412 m!6439436))

(assert (=> b!5415509 d!1728332))

(assert (=> b!5415509 d!1728178))

(declare-fun d!1728336 () Bool)

(declare-fun c!944514 () Bool)

(assert (=> d!1728336 (= c!944514 (isEmpty!33765 (t!375113 s!2326)))))

(declare-fun e!3357241 () Bool)

(assert (=> d!1728336 (= (matchZipper!1441 ((_ map or) lt!2208528 lt!2208556) (t!375113 s!2326)) e!3357241)))

(declare-fun b!5416427 () Bool)

(assert (=> b!5416427 (= e!3357241 (nullableZipper!1450 ((_ map or) lt!2208528 lt!2208556)))))

(declare-fun b!5416428 () Bool)

(assert (=> b!5416428 (= e!3357241 (matchZipper!1441 (derivationStepZipper!1436 ((_ map or) lt!2208528 lt!2208556) (head!11617 (t!375113 s!2326))) (tail!10714 (t!375113 s!2326))))))

(assert (= (and d!1728336 c!944514) b!5416427))

(assert (= (and d!1728336 (not c!944514)) b!5416428))

(assert (=> d!1728336 m!6440012))

(declare-fun m!6440504 () Bool)

(assert (=> b!5416427 m!6440504))

(assert (=> b!5416428 m!6440016))

(assert (=> b!5416428 m!6440016))

(declare-fun m!6440506 () Bool)

(assert (=> b!5416428 m!6440506))

(assert (=> b!5416428 m!6440020))

(assert (=> b!5416428 m!6440506))

(assert (=> b!5416428 m!6440020))

(declare-fun m!6440508 () Bool)

(assert (=> b!5416428 m!6440508))

(assert (=> b!5415509 d!1728336))

(declare-fun bs!1251244 () Bool)

(declare-fun d!1728338 () Bool)

(assert (= bs!1251244 (and d!1728338 b!5415469)))

(declare-fun lambda!283253 () Int)

(assert (=> bs!1251244 (= lambda!283253 lambda!283156)))

(declare-fun bs!1251246 () Bool)

(assert (= bs!1251246 (and d!1728338 d!1728260)))

(assert (=> bs!1251246 (= lambda!283253 lambda!283243)))

(declare-fun b!5416465 () Bool)

(declare-fun e!3357264 () Bool)

(declare-fun e!3357269 () Bool)

(assert (=> b!5416465 (= e!3357264 e!3357269)))

(declare-fun c!944527 () Bool)

(assert (=> b!5416465 (= c!944527 (isEmpty!33760 (exprs!5081 (h!68216 zl!343))))))

(declare-fun b!5416466 () Bool)

(declare-fun e!3357267 () Regex!15197)

(assert (=> b!5416466 (= e!3357267 EmptyExpr!15197)))

(declare-fun b!5416467 () Bool)

(assert (=> b!5416467 (= e!3357267 (Concat!24042 (h!68215 (exprs!5081 (h!68216 zl!343))) (generalisedConcat!866 (t!375114 (exprs!5081 (h!68216 zl!343))))))))

(declare-fun b!5416468 () Bool)

(declare-fun lt!2208777 () Regex!15197)

(declare-fun isEmptyExpr!982 (Regex!15197) Bool)

(assert (=> b!5416468 (= e!3357269 (isEmptyExpr!982 lt!2208777))))

(declare-fun b!5416469 () Bool)

(declare-fun e!3357268 () Regex!15197)

(assert (=> b!5416469 (= e!3357268 e!3357267)))

(declare-fun c!944528 () Bool)

(assert (=> b!5416469 (= c!944528 ((_ is Cons!61767) (exprs!5081 (h!68216 zl!343))))))

(declare-fun b!5416470 () Bool)

(assert (=> b!5416470 (= e!3357268 (h!68215 (exprs!5081 (h!68216 zl!343))))))

(assert (=> d!1728338 e!3357264))

(declare-fun res!2304092 () Bool)

(assert (=> d!1728338 (=> (not res!2304092) (not e!3357264))))

(assert (=> d!1728338 (= res!2304092 (validRegex!6933 lt!2208777))))

(assert (=> d!1728338 (= lt!2208777 e!3357268)))

(declare-fun c!944530 () Bool)

(declare-fun e!3357266 () Bool)

(assert (=> d!1728338 (= c!944530 e!3357266)))

(declare-fun res!2304091 () Bool)

(assert (=> d!1728338 (=> (not res!2304091) (not e!3357266))))

(assert (=> d!1728338 (= res!2304091 ((_ is Cons!61767) (exprs!5081 (h!68216 zl!343))))))

(assert (=> d!1728338 (forall!14543 (exprs!5081 (h!68216 zl!343)) lambda!283253)))

(assert (=> d!1728338 (= (generalisedConcat!866 (exprs!5081 (h!68216 zl!343))) lt!2208777)))

(declare-fun b!5416471 () Bool)

(assert (=> b!5416471 (= e!3357266 (isEmpty!33760 (t!375114 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun b!5416472 () Bool)

(declare-fun e!3357265 () Bool)

(declare-fun head!11618 (List!61891) Regex!15197)

(assert (=> b!5416472 (= e!3357265 (= lt!2208777 (head!11618 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun b!5416473 () Bool)

(assert (=> b!5416473 (= e!3357269 e!3357265)))

(declare-fun c!944529 () Bool)

(declare-fun tail!10715 (List!61891) List!61891)

(assert (=> b!5416473 (= c!944529 (isEmpty!33760 (tail!10715 (exprs!5081 (h!68216 zl!343)))))))

(declare-fun b!5416474 () Bool)

(declare-fun isConcat!505 (Regex!15197) Bool)

(assert (=> b!5416474 (= e!3357265 (isConcat!505 lt!2208777))))

(assert (= (and d!1728338 res!2304091) b!5416471))

(assert (= (and d!1728338 c!944530) b!5416470))

(assert (= (and d!1728338 (not c!944530)) b!5416469))

(assert (= (and b!5416469 c!944528) b!5416467))

(assert (= (and b!5416469 (not c!944528)) b!5416466))

(assert (= (and d!1728338 res!2304092) b!5416465))

(assert (= (and b!5416465 c!944527) b!5416468))

(assert (= (and b!5416465 (not c!944527)) b!5416473))

(assert (= (and b!5416473 c!944529) b!5416472))

(assert (= (and b!5416473 (not c!944529)) b!5416474))

(declare-fun m!6440550 () Bool)

(assert (=> b!5416472 m!6440550))

(declare-fun m!6440552 () Bool)

(assert (=> d!1728338 m!6440552))

(declare-fun m!6440554 () Bool)

(assert (=> d!1728338 m!6440554))

(declare-fun m!6440556 () Bool)

(assert (=> b!5416467 m!6440556))

(declare-fun m!6440558 () Bool)

(assert (=> b!5416465 m!6440558))

(declare-fun m!6440560 () Bool)

(assert (=> b!5416468 m!6440560))

(declare-fun m!6440562 () Bool)

(assert (=> b!5416473 m!6440562))

(assert (=> b!5416473 m!6440562))

(declare-fun m!6440564 () Bool)

(assert (=> b!5416473 m!6440564))

(declare-fun m!6440566 () Bool)

(assert (=> b!5416474 m!6440566))

(assert (=> b!5416471 m!6439552))

(assert (=> b!5415488 d!1728338))

(declare-fun d!1728358 () Bool)

(declare-fun lt!2208779 () Regex!15197)

(assert (=> d!1728358 (validRegex!6933 lt!2208779)))

(assert (=> d!1728358 (= lt!2208779 (generalisedUnion!1126 (unfocusZipperList!639 (Cons!61768 lt!2208533 Nil!61768))))))

(assert (=> d!1728358 (= (unfocusZipper!939 (Cons!61768 lt!2208533 Nil!61768)) lt!2208779)))

(declare-fun bs!1251251 () Bool)

(assert (= bs!1251251 d!1728358))

(declare-fun m!6440568 () Bool)

(assert (=> bs!1251251 m!6440568))

(declare-fun m!6440570 () Bool)

(assert (=> bs!1251251 m!6440570))

(assert (=> bs!1251251 m!6440570))

(declare-fun m!6440572 () Bool)

(assert (=> bs!1251251 m!6440572))

(assert (=> b!5415507 d!1728358))

(declare-fun d!1728360 () Bool)

(declare-fun c!944531 () Bool)

(assert (=> d!1728360 (= c!944531 (isEmpty!33765 (t!375113 s!2326)))))

(declare-fun e!3357270 () Bool)

(assert (=> d!1728360 (= (matchZipper!1441 lt!2208556 (t!375113 s!2326)) e!3357270)))

(declare-fun b!5416475 () Bool)

(assert (=> b!5416475 (= e!3357270 (nullableZipper!1450 lt!2208556))))

(declare-fun b!5416476 () Bool)

(assert (=> b!5416476 (= e!3357270 (matchZipper!1441 (derivationStepZipper!1436 lt!2208556 (head!11617 (t!375113 s!2326))) (tail!10714 (t!375113 s!2326))))))

(assert (= (and d!1728360 c!944531) b!5416475))

(assert (= (and d!1728360 (not c!944531)) b!5416476))

(assert (=> d!1728360 m!6440012))

(declare-fun m!6440574 () Bool)

(assert (=> b!5416475 m!6440574))

(assert (=> b!5416476 m!6440016))

(assert (=> b!5416476 m!6440016))

(declare-fun m!6440576 () Bool)

(assert (=> b!5416476 m!6440576))

(assert (=> b!5416476 m!6440020))

(assert (=> b!5416476 m!6440576))

(assert (=> b!5416476 m!6440020))

(declare-fun m!6440578 () Bool)

(assert (=> b!5416476 m!6440578))

(assert (=> b!5415486 d!1728360))

(declare-fun bs!1251258 () Bool)

(declare-fun b!5416480 () Bool)

(assert (= bs!1251258 (and b!5416480 d!1728070)))

(declare-fun lambda!283255 () Int)

(assert (=> bs!1251258 (not (= lambda!283255 lambda!283182))))

(declare-fun bs!1251260 () Bool)

(assert (= bs!1251260 (and b!5416480 d!1728034)))

(assert (=> bs!1251260 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 r!7292) (reg!15526 (regOne!30906 r!7292))) (= r!7292 (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283255 lambda!283167))))

(declare-fun bs!1251261 () Bool)

(assert (= bs!1251261 (and b!5416480 b!5415814)))

(assert (=> bs!1251261 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 r!7292) (reg!15526 lt!2208521)) (= r!7292 lt!2208521)) (= lambda!283255 lambda!283207))))

(declare-fun bs!1251264 () Bool)

(assert (= bs!1251264 (and b!5416480 b!5415502)))

(assert (=> bs!1251264 (not (= lambda!283255 lambda!283158))))

(assert (=> bs!1251260 (not (= lambda!283255 lambda!283166))))

(declare-fun bs!1251266 () Bool)

(assert (= bs!1251266 (and b!5416480 b!5415483)))

(assert (=> bs!1251266 (not (= lambda!283255 lambda!283152))))

(declare-fun bs!1251268 () Bool)

(assert (= bs!1251268 (and b!5416480 d!1728224)))

(assert (=> bs!1251268 (not (= lambda!283255 lambda!283233))))

(declare-fun bs!1251270 () Bool)

(assert (= bs!1251270 (and b!5416480 b!5415478)))

(assert (=> bs!1251270 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 r!7292) (reg!15526 (regOne!30906 r!7292))) (= r!7292 lt!2208538)) (= lambda!283255 lambda!283161))))

(assert (=> bs!1251266 (not (= lambda!283255 lambda!283153))))

(declare-fun bs!1251271 () Bool)

(assert (= bs!1251271 (and b!5416480 d!1728248)))

(assert (=> bs!1251271 (not (= lambda!283255 lambda!283240))))

(declare-fun bs!1251272 () Bool)

(assert (= bs!1251272 (and b!5416480 d!1728196)))

(assert (=> bs!1251272 (not (= lambda!283255 lambda!283229))))

(declare-fun bs!1251274 () Bool)

(assert (= bs!1251274 (and b!5416480 b!5416317)))

(assert (=> bs!1251274 (= (and (= (reg!15526 r!7292) (reg!15526 lt!2208512)) (= r!7292 lt!2208512)) (= lambda!283255 lambda!283244))))

(declare-fun bs!1251275 () Bool)

(assert (= bs!1251275 (and b!5416480 d!1728194)))

(assert (=> bs!1251275 (not (= lambda!283255 lambda!283227))))

(assert (=> bs!1251272 (not (= lambda!283255 lambda!283228))))

(declare-fun bs!1251276 () Bool)

(assert (= bs!1251276 (and b!5416480 b!5415816)))

(assert (=> bs!1251276 (not (= lambda!283255 lambda!283208))))

(assert (=> bs!1251264 (not (= lambda!283255 lambda!283157))))

(declare-fun bs!1251277 () Bool)

(assert (= bs!1251277 (and b!5416480 b!5416319)))

(assert (=> bs!1251277 (not (= lambda!283255 lambda!283246))))

(assert (=> bs!1251270 (not (= lambda!283255 lambda!283160))))

(assert (=> bs!1251270 (not (= lambda!283255 lambda!283159))))

(declare-fun bs!1251280 () Bool)

(assert (= bs!1251280 (and b!5416480 d!1728052)))

(assert (=> bs!1251280 (not (= lambda!283255 lambda!283173))))

(assert (=> bs!1251268 (not (= lambda!283255 lambda!283234))))

(assert (=> bs!1251280 (not (= lambda!283255 lambda!283172))))

(assert (=> b!5416480 true))

(assert (=> b!5416480 true))

(declare-fun bs!1251287 () Bool)

(declare-fun b!5416482 () Bool)

(assert (= bs!1251287 (and b!5416482 d!1728070)))

(declare-fun lambda!283257 () Int)

(assert (=> bs!1251287 (not (= lambda!283257 lambda!283182))))

(declare-fun bs!1251289 () Bool)

(assert (= bs!1251289 (and b!5416482 d!1728034)))

(assert (=> bs!1251289 (not (= lambda!283257 lambda!283167))))

(declare-fun bs!1251291 () Bool)

(assert (= bs!1251291 (and b!5416482 b!5415814)))

(assert (=> bs!1251291 (not (= lambda!283257 lambda!283207))))

(declare-fun bs!1251293 () Bool)

(assert (= bs!1251293 (and b!5416482 b!5415502)))

(assert (=> bs!1251293 (= (= (regOne!30906 r!7292) lt!2208521) (= lambda!283257 lambda!283158))))

(assert (=> bs!1251289 (not (= lambda!283257 lambda!283166))))

(declare-fun bs!1251294 () Bool)

(assert (= bs!1251294 (and b!5416482 b!5415483)))

(assert (=> bs!1251294 (not (= lambda!283257 lambda!283152))))

(declare-fun bs!1251295 () Bool)

(assert (= bs!1251295 (and b!5416482 d!1728224)))

(assert (=> bs!1251295 (not (= lambda!283257 lambda!283233))))

(assert (=> bs!1251294 (= lambda!283257 lambda!283153)))

(declare-fun bs!1251297 () Bool)

(assert (= bs!1251297 (and b!5416482 d!1728248)))

(assert (=> bs!1251297 (not (= lambda!283257 lambda!283240))))

(declare-fun bs!1251299 () Bool)

(assert (= bs!1251299 (and b!5416482 d!1728196)))

(assert (=> bs!1251299 (= lambda!283257 lambda!283229)))

(declare-fun bs!1251301 () Bool)

(assert (= bs!1251301 (and b!5416482 b!5416317)))

(assert (=> bs!1251301 (not (= lambda!283257 lambda!283244))))

(declare-fun bs!1251302 () Bool)

(assert (= bs!1251302 (and b!5416482 d!1728194)))

(assert (=> bs!1251302 (not (= lambda!283257 lambda!283227))))

(assert (=> bs!1251299 (not (= lambda!283257 lambda!283228))))

(declare-fun bs!1251305 () Bool)

(assert (= bs!1251305 (and b!5416482 b!5415816)))

(assert (=> bs!1251305 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (regOne!30906 lt!2208521)) (= (regTwo!30906 r!7292) (regTwo!30906 lt!2208521))) (= lambda!283257 lambda!283208))))

(assert (=> bs!1251293 (not (= lambda!283257 lambda!283157))))

(declare-fun bs!1251307 () Bool)

(assert (= bs!1251307 (and b!5416482 b!5416319)))

(assert (=> bs!1251307 (= (and (= (regOne!30906 r!7292) (regOne!30906 lt!2208512)) (= (regTwo!30906 r!7292) (regTwo!30906 lt!2208512))) (= lambda!283257 lambda!283246))))

(declare-fun bs!1251308 () Bool)

(assert (= bs!1251308 (and b!5416482 b!5415478)))

(assert (=> bs!1251308 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283257 lambda!283160))))

(declare-fun bs!1251309 () Bool)

(assert (= bs!1251309 (and b!5416482 b!5416480)))

(assert (=> bs!1251309 (not (= lambda!283257 lambda!283255))))

(assert (=> bs!1251308 (not (= lambda!283257 lambda!283161))))

(assert (=> bs!1251308 (not (= lambda!283257 lambda!283159))))

(declare-fun bs!1251310 () Bool)

(assert (= bs!1251310 (and b!5416482 d!1728052)))

(assert (=> bs!1251310 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 r!7292) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 r!7292) lt!2208538)) (= lambda!283257 lambda!283173))))

(assert (=> bs!1251295 (= (= (regOne!30906 r!7292) lt!2208521) (= lambda!283257 lambda!283234))))

(assert (=> bs!1251310 (not (= lambda!283257 lambda!283172))))

(assert (=> b!5416482 true))

(assert (=> b!5416482 true))

(declare-fun b!5416477 () Bool)

(declare-fun e!3357274 () Bool)

(declare-fun e!3357273 () Bool)

(assert (=> b!5416477 (= e!3357274 e!3357273)))

(declare-fun res!2304093 () Bool)

(assert (=> b!5416477 (= res!2304093 (matchRSpec!2300 (regOne!30907 r!7292) s!2326))))

(assert (=> b!5416477 (=> res!2304093 e!3357273)))

(declare-fun b!5416478 () Bool)

(declare-fun c!944535 () Bool)

(assert (=> b!5416478 (= c!944535 ((_ is ElementMatch!15197) r!7292))))

(declare-fun e!3357272 () Bool)

(declare-fun e!3357271 () Bool)

(assert (=> b!5416478 (= e!3357272 e!3357271)))

(declare-fun b!5416479 () Bool)

(declare-fun e!3357275 () Bool)

(assert (=> b!5416479 (= e!3357275 e!3357272)))

(declare-fun res!2304094 () Bool)

(assert (=> b!5416479 (= res!2304094 (not ((_ is EmptyLang!15197) r!7292)))))

(assert (=> b!5416479 (=> (not res!2304094) (not e!3357272))))

(declare-fun e!3357276 () Bool)

(declare-fun call!387650 () Bool)

(assert (=> b!5416480 (= e!3357276 call!387650)))

(declare-fun b!5416481 () Bool)

(assert (=> b!5416481 (= e!3357271 (= s!2326 (Cons!61766 (c!944259 r!7292) Nil!61766)))))

(declare-fun d!1728362 () Bool)

(declare-fun c!944534 () Bool)

(assert (=> d!1728362 (= c!944534 ((_ is EmptyExpr!15197) r!7292))))

(assert (=> d!1728362 (= (matchRSpec!2300 r!7292 s!2326) e!3357275)))

(declare-fun e!3357277 () Bool)

(assert (=> b!5416482 (= e!3357277 call!387650)))

(declare-fun bm!387645 () Bool)

(declare-fun call!387651 () Bool)

(assert (=> bm!387645 (= call!387651 (isEmpty!33765 s!2326))))

(declare-fun c!944533 () Bool)

(declare-fun bm!387646 () Bool)

(assert (=> bm!387646 (= call!387650 (Exists!2378 (ite c!944533 lambda!283255 lambda!283257)))))

(declare-fun b!5416483 () Bool)

(assert (=> b!5416483 (= e!3357273 (matchRSpec!2300 (regTwo!30907 r!7292) s!2326))))

(declare-fun b!5416484 () Bool)

(declare-fun c!944532 () Bool)

(assert (=> b!5416484 (= c!944532 ((_ is Union!15197) r!7292))))

(assert (=> b!5416484 (= e!3357271 e!3357274)))

(declare-fun b!5416485 () Bool)

(declare-fun res!2304095 () Bool)

(assert (=> b!5416485 (=> res!2304095 e!3357276)))

(assert (=> b!5416485 (= res!2304095 call!387651)))

(assert (=> b!5416485 (= e!3357277 e!3357276)))

(declare-fun b!5416486 () Bool)

(assert (=> b!5416486 (= e!3357274 e!3357277)))

(assert (=> b!5416486 (= c!944533 ((_ is Star!15197) r!7292))))

(declare-fun b!5416487 () Bool)

(assert (=> b!5416487 (= e!3357275 call!387651)))

(assert (= (and d!1728362 c!944534) b!5416487))

(assert (= (and d!1728362 (not c!944534)) b!5416479))

(assert (= (and b!5416479 res!2304094) b!5416478))

(assert (= (and b!5416478 c!944535) b!5416481))

(assert (= (and b!5416478 (not c!944535)) b!5416484))

(assert (= (and b!5416484 c!944532) b!5416477))

(assert (= (and b!5416484 (not c!944532)) b!5416486))

(assert (= (and b!5416477 (not res!2304093)) b!5416483))

(assert (= (and b!5416486 c!944533) b!5416485))

(assert (= (and b!5416486 (not c!944533)) b!5416482))

(assert (= (and b!5416485 (not res!2304095)) b!5416480))

(assert (= (or b!5416480 b!5416482) bm!387646))

(assert (= (or b!5416487 b!5416485) bm!387645))

(declare-fun m!6440584 () Bool)

(assert (=> b!5416477 m!6440584))

(assert (=> bm!387645 m!6440254))

(declare-fun m!6440586 () Bool)

(assert (=> bm!387646 m!6440586))

(declare-fun m!6440588 () Bool)

(assert (=> b!5416483 m!6440588))

(assert (=> b!5415506 d!1728362))

(declare-fun b!5416488 () Bool)

(declare-fun res!2304096 () Bool)

(declare-fun e!3357282 () Bool)

(assert (=> b!5416488 (=> (not res!2304096) (not e!3357282))))

(assert (=> b!5416488 (= res!2304096 (isEmpty!33765 (tail!10714 s!2326)))))

(declare-fun b!5416489 () Bool)

(declare-fun e!3357280 () Bool)

(declare-fun e!3357281 () Bool)

(assert (=> b!5416489 (= e!3357280 e!3357281)))

(declare-fun res!2304100 () Bool)

(assert (=> b!5416489 (=> res!2304100 e!3357281)))

(declare-fun call!387652 () Bool)

(assert (=> b!5416489 (= res!2304100 call!387652)))

(declare-fun b!5416490 () Bool)

(assert (=> b!5416490 (= e!3357281 (not (= (head!11617 s!2326) (c!944259 r!7292))))))

(declare-fun bm!387647 () Bool)

(assert (=> bm!387647 (= call!387652 (isEmpty!33765 s!2326))))

(declare-fun b!5416491 () Bool)

(assert (=> b!5416491 (= e!3357282 (= (head!11617 s!2326) (c!944259 r!7292)))))

(declare-fun b!5416492 () Bool)

(declare-fun res!2304097 () Bool)

(assert (=> b!5416492 (=> (not res!2304097) (not e!3357282))))

(assert (=> b!5416492 (= res!2304097 (not call!387652))))

(declare-fun b!5416493 () Bool)

(declare-fun e!3357278 () Bool)

(declare-fun lt!2208781 () Bool)

(assert (=> b!5416493 (= e!3357278 (= lt!2208781 call!387652))))

(declare-fun b!5416494 () Bool)

(declare-fun res!2304102 () Bool)

(declare-fun e!3357284 () Bool)

(assert (=> b!5416494 (=> res!2304102 e!3357284)))

(assert (=> b!5416494 (= res!2304102 (not ((_ is ElementMatch!15197) r!7292)))))

(declare-fun e!3357283 () Bool)

(assert (=> b!5416494 (= e!3357283 e!3357284)))

(declare-fun d!1728366 () Bool)

(assert (=> d!1728366 e!3357278))

(declare-fun c!944537 () Bool)

(assert (=> d!1728366 (= c!944537 ((_ is EmptyExpr!15197) r!7292))))

(declare-fun e!3357279 () Bool)

(assert (=> d!1728366 (= lt!2208781 e!3357279)))

(declare-fun c!944536 () Bool)

(assert (=> d!1728366 (= c!944536 (isEmpty!33765 s!2326))))

(assert (=> d!1728366 (validRegex!6933 r!7292)))

(assert (=> d!1728366 (= (matchR!7382 r!7292 s!2326) lt!2208781)))

(declare-fun b!5416495 () Bool)

(assert (=> b!5416495 (= e!3357279 (nullable!5366 r!7292))))

(declare-fun b!5416496 () Bool)

(assert (=> b!5416496 (= e!3357283 (not lt!2208781))))

(declare-fun b!5416497 () Bool)

(assert (=> b!5416497 (= e!3357278 e!3357283)))

(declare-fun c!944538 () Bool)

(assert (=> b!5416497 (= c!944538 ((_ is EmptyLang!15197) r!7292))))

(declare-fun b!5416498 () Bool)

(assert (=> b!5416498 (= e!3357279 (matchR!7382 (derivativeStep!4270 r!7292 (head!11617 s!2326)) (tail!10714 s!2326)))))

(declare-fun b!5416499 () Bool)

(declare-fun res!2304099 () Bool)

(assert (=> b!5416499 (=> res!2304099 e!3357284)))

(assert (=> b!5416499 (= res!2304099 e!3357282)))

(declare-fun res!2304101 () Bool)

(assert (=> b!5416499 (=> (not res!2304101) (not e!3357282))))

(assert (=> b!5416499 (= res!2304101 lt!2208781)))

(declare-fun b!5416500 () Bool)

(declare-fun res!2304098 () Bool)

(assert (=> b!5416500 (=> res!2304098 e!3357281)))

(assert (=> b!5416500 (= res!2304098 (not (isEmpty!33765 (tail!10714 s!2326))))))

(declare-fun b!5416501 () Bool)

(assert (=> b!5416501 (= e!3357284 e!3357280)))

(declare-fun res!2304103 () Bool)

(assert (=> b!5416501 (=> (not res!2304103) (not e!3357280))))

(assert (=> b!5416501 (= res!2304103 (not lt!2208781))))

(assert (= (and d!1728366 c!944536) b!5416495))

(assert (= (and d!1728366 (not c!944536)) b!5416498))

(assert (= (and d!1728366 c!944537) b!5416493))

(assert (= (and d!1728366 (not c!944537)) b!5416497))

(assert (= (and b!5416497 c!944538) b!5416496))

(assert (= (and b!5416497 (not c!944538)) b!5416494))

(assert (= (and b!5416494 (not res!2304102)) b!5416499))

(assert (= (and b!5416499 res!2304101) b!5416492))

(assert (= (and b!5416492 res!2304097) b!5416488))

(assert (= (and b!5416488 res!2304096) b!5416491))

(assert (= (and b!5416499 (not res!2304099)) b!5416501))

(assert (= (and b!5416501 res!2304103) b!5416489))

(assert (= (and b!5416489 (not res!2304100)) b!5416500))

(assert (= (and b!5416500 (not res!2304098)) b!5416490))

(assert (= (or b!5416493 b!5416489 b!5416492) bm!387647))

(declare-fun m!6440590 () Bool)

(assert (=> b!5416495 m!6440590))

(assert (=> b!5416498 m!6440242))

(assert (=> b!5416498 m!6440242))

(declare-fun m!6440592 () Bool)

(assert (=> b!5416498 m!6440592))

(assert (=> b!5416498 m!6440246))

(assert (=> b!5416498 m!6440592))

(assert (=> b!5416498 m!6440246))

(declare-fun m!6440594 () Bool)

(assert (=> b!5416498 m!6440594))

(assert (=> b!5416490 m!6440242))

(assert (=> d!1728366 m!6440254))

(assert (=> d!1728366 m!6439376))

(assert (=> b!5416500 m!6440246))

(assert (=> b!5416500 m!6440246))

(assert (=> b!5416500 m!6440260))

(assert (=> b!5416488 m!6440246))

(assert (=> b!5416488 m!6440246))

(assert (=> b!5416488 m!6440260))

(assert (=> bm!387647 m!6440254))

(assert (=> b!5416491 m!6440242))

(assert (=> b!5415506 d!1728366))

(declare-fun d!1728368 () Bool)

(assert (=> d!1728368 (= (matchR!7382 r!7292 s!2326) (matchRSpec!2300 r!7292 s!2326))))

(declare-fun lt!2208782 () Unit!154310)

(assert (=> d!1728368 (= lt!2208782 (choose!40955 r!7292 s!2326))))

(assert (=> d!1728368 (validRegex!6933 r!7292)))

(assert (=> d!1728368 (= (mainMatchTheorem!2300 r!7292 s!2326) lt!2208782)))

(declare-fun bs!1251311 () Bool)

(assert (= bs!1251311 d!1728368))

(assert (=> bs!1251311 m!6439476))

(assert (=> bs!1251311 m!6439474))

(declare-fun m!6440596 () Bool)

(assert (=> bs!1251311 m!6440596))

(assert (=> bs!1251311 m!6439376))

(assert (=> b!5415506 d!1728368))

(declare-fun d!1728370 () Bool)

(declare-fun c!944539 () Bool)

(assert (=> d!1728370 (= c!944539 (isEmpty!33765 (t!375113 s!2326)))))

(declare-fun e!3357285 () Bool)

(assert (=> d!1728370 (= (matchZipper!1441 lt!2208546 (t!375113 s!2326)) e!3357285)))

(declare-fun b!5416502 () Bool)

(assert (=> b!5416502 (= e!3357285 (nullableZipper!1450 lt!2208546))))

(declare-fun b!5416503 () Bool)

(assert (=> b!5416503 (= e!3357285 (matchZipper!1441 (derivationStepZipper!1436 lt!2208546 (head!11617 (t!375113 s!2326))) (tail!10714 (t!375113 s!2326))))))

(assert (= (and d!1728370 c!944539) b!5416502))

(assert (= (and d!1728370 (not c!944539)) b!5416503))

(assert (=> d!1728370 m!6440012))

(declare-fun m!6440598 () Bool)

(assert (=> b!5416502 m!6440598))

(assert (=> b!5416503 m!6440016))

(assert (=> b!5416503 m!6440016))

(declare-fun m!6440600 () Bool)

(assert (=> b!5416503 m!6440600))

(assert (=> b!5416503 m!6440020))

(assert (=> b!5416503 m!6440600))

(assert (=> b!5416503 m!6440020))

(declare-fun m!6440602 () Bool)

(assert (=> b!5416503 m!6440602))

(assert (=> b!5415485 d!1728370))

(declare-fun d!1728372 () Bool)

(declare-fun c!944540 () Bool)

(assert (=> d!1728372 (= c!944540 (isEmpty!33765 s!2326))))

(declare-fun e!3357286 () Bool)

(assert (=> d!1728372 (= (matchZipper!1441 lt!2208539 s!2326) e!3357286)))

(declare-fun b!5416504 () Bool)

(assert (=> b!5416504 (= e!3357286 (nullableZipper!1450 lt!2208539))))

(declare-fun b!5416505 () Bool)

(assert (=> b!5416505 (= e!3357286 (matchZipper!1441 (derivationStepZipper!1436 lt!2208539 (head!11617 s!2326)) (tail!10714 s!2326)))))

(assert (= (and d!1728372 c!944540) b!5416504))

(assert (= (and d!1728372 (not c!944540)) b!5416505))

(assert (=> d!1728372 m!6440254))

(declare-fun m!6440604 () Bool)

(assert (=> b!5416504 m!6440604))

(assert (=> b!5416505 m!6440242))

(assert (=> b!5416505 m!6440242))

(declare-fun m!6440608 () Bool)

(assert (=> b!5416505 m!6440608))

(assert (=> b!5416505 m!6440246))

(assert (=> b!5416505 m!6440608))

(assert (=> b!5416505 m!6440246))

(declare-fun m!6440614 () Bool)

(assert (=> b!5416505 m!6440614))

(assert (=> b!5415485 d!1728372))

(declare-fun bs!1251314 () Bool)

(declare-fun d!1728374 () Bool)

(assert (= bs!1251314 (and d!1728374 b!5415469)))

(declare-fun lambda!283261 () Int)

(assert (=> bs!1251314 (= lambda!283261 lambda!283156)))

(declare-fun bs!1251315 () Bool)

(assert (= bs!1251315 (and d!1728374 d!1728260)))

(assert (=> bs!1251315 (= lambda!283261 lambda!283243)))

(declare-fun bs!1251316 () Bool)

(assert (= bs!1251316 (and d!1728374 d!1728338)))

(assert (=> bs!1251316 (= lambda!283261 lambda!283253)))

(assert (=> d!1728374 (= (inv!81239 (h!68216 zl!343)) (forall!14543 (exprs!5081 (h!68216 zl!343)) lambda!283261))))

(declare-fun bs!1251317 () Bool)

(assert (= bs!1251317 d!1728374))

(declare-fun m!6440620 () Bool)

(assert (=> bs!1251317 m!6440620))

(assert (=> b!5415505 d!1728374))

(declare-fun bs!1251318 () Bool)

(declare-fun b!5416518 () Bool)

(assert (= bs!1251318 (and b!5416518 d!1728070)))

(declare-fun lambda!283262 () Int)

(assert (=> bs!1251318 (not (= lambda!283262 lambda!283182))))

(declare-fun bs!1251319 () Bool)

(assert (= bs!1251319 (and b!5416518 b!5416482)))

(assert (=> bs!1251319 (not (= lambda!283262 lambda!283257))))

(declare-fun bs!1251320 () Bool)

(assert (= bs!1251320 (and b!5416518 d!1728034)))

(assert (=> bs!1251320 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 lt!2208553) (reg!15526 (regOne!30906 r!7292))) (= lt!2208553 (Star!15197 (reg!15526 (regOne!30906 r!7292))))) (= lambda!283262 lambda!283167))))

(declare-fun bs!1251321 () Bool)

(assert (= bs!1251321 (and b!5416518 b!5415814)))

(assert (=> bs!1251321 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 lt!2208553) (reg!15526 lt!2208521)) (= lt!2208553 lt!2208521)) (= lambda!283262 lambda!283207))))

(declare-fun bs!1251322 () Bool)

(assert (= bs!1251322 (and b!5416518 b!5415502)))

(assert (=> bs!1251322 (not (= lambda!283262 lambda!283158))))

(assert (=> bs!1251320 (not (= lambda!283262 lambda!283166))))

(declare-fun bs!1251323 () Bool)

(assert (= bs!1251323 (and b!5416518 b!5415483)))

(assert (=> bs!1251323 (not (= lambda!283262 lambda!283152))))

(declare-fun bs!1251324 () Bool)

(assert (= bs!1251324 (and b!5416518 d!1728224)))

(assert (=> bs!1251324 (not (= lambda!283262 lambda!283233))))

(assert (=> bs!1251323 (not (= lambda!283262 lambda!283153))))

(declare-fun bs!1251325 () Bool)

(assert (= bs!1251325 (and b!5416518 d!1728248)))

(assert (=> bs!1251325 (not (= lambda!283262 lambda!283240))))

(declare-fun bs!1251326 () Bool)

(assert (= bs!1251326 (and b!5416518 d!1728196)))

(assert (=> bs!1251326 (not (= lambda!283262 lambda!283229))))

(declare-fun bs!1251327 () Bool)

(assert (= bs!1251327 (and b!5416518 b!5416317)))

(assert (=> bs!1251327 (= (and (= (reg!15526 lt!2208553) (reg!15526 lt!2208512)) (= lt!2208553 lt!2208512)) (= lambda!283262 lambda!283244))))

(declare-fun bs!1251328 () Bool)

(assert (= bs!1251328 (and b!5416518 d!1728194)))

(assert (=> bs!1251328 (not (= lambda!283262 lambda!283227))))

(assert (=> bs!1251326 (not (= lambda!283262 lambda!283228))))

(declare-fun bs!1251329 () Bool)

(assert (= bs!1251329 (and b!5416518 b!5415816)))

(assert (=> bs!1251329 (not (= lambda!283262 lambda!283208))))

(assert (=> bs!1251322 (not (= lambda!283262 lambda!283157))))

(declare-fun bs!1251330 () Bool)

(assert (= bs!1251330 (and b!5416518 b!5416319)))

(assert (=> bs!1251330 (not (= lambda!283262 lambda!283246))))

(declare-fun bs!1251331 () Bool)

(assert (= bs!1251331 (and b!5416518 b!5415478)))

(assert (=> bs!1251331 (not (= lambda!283262 lambda!283160))))

(declare-fun bs!1251332 () Bool)

(assert (= bs!1251332 (and b!5416518 b!5416480)))

(assert (=> bs!1251332 (= (and (= (reg!15526 lt!2208553) (reg!15526 r!7292)) (= lt!2208553 r!7292)) (= lambda!283262 lambda!283255))))

(assert (=> bs!1251331 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (reg!15526 lt!2208553) (reg!15526 (regOne!30906 r!7292))) (= lt!2208553 lt!2208538)) (= lambda!283262 lambda!283161))))

(assert (=> bs!1251331 (not (= lambda!283262 lambda!283159))))

(declare-fun bs!1251333 () Bool)

(assert (= bs!1251333 (and b!5416518 d!1728052)))

(assert (=> bs!1251333 (not (= lambda!283262 lambda!283173))))

(assert (=> bs!1251324 (not (= lambda!283262 lambda!283234))))

(assert (=> bs!1251333 (not (= lambda!283262 lambda!283172))))

(assert (=> b!5416518 true))

(assert (=> b!5416518 true))

(declare-fun bs!1251335 () Bool)

(declare-fun b!5416520 () Bool)

(assert (= bs!1251335 (and b!5416520 b!5416482)))

(declare-fun lambda!283263 () Int)

(assert (=> bs!1251335 (= (and (= (regOne!30906 lt!2208553) (regOne!30906 r!7292)) (= (regTwo!30906 lt!2208553) (regTwo!30906 r!7292))) (= lambda!283263 lambda!283257))))

(declare-fun bs!1251337 () Bool)

(assert (= bs!1251337 (and b!5416520 d!1728034)))

(assert (=> bs!1251337 (not (= lambda!283263 lambda!283167))))

(declare-fun bs!1251338 () Bool)

(assert (= bs!1251338 (and b!5416520 b!5415814)))

(assert (=> bs!1251338 (not (= lambda!283263 lambda!283207))))

(declare-fun bs!1251339 () Bool)

(assert (= bs!1251339 (and b!5416520 b!5415502)))

(assert (=> bs!1251339 (= (and (= (regOne!30906 lt!2208553) lt!2208521) (= (regTwo!30906 lt!2208553) (regTwo!30906 r!7292))) (= lambda!283263 lambda!283158))))

(assert (=> bs!1251337 (not (= lambda!283263 lambda!283166))))

(declare-fun bs!1251340 () Bool)

(assert (= bs!1251340 (and b!5416520 b!5415483)))

(assert (=> bs!1251340 (not (= lambda!283263 lambda!283152))))

(declare-fun bs!1251341 () Bool)

(assert (= bs!1251341 (and b!5416520 d!1728224)))

(assert (=> bs!1251341 (not (= lambda!283263 lambda!283233))))

(assert (=> bs!1251340 (= (and (= (regOne!30906 lt!2208553) (regOne!30906 r!7292)) (= (regTwo!30906 lt!2208553) (regTwo!30906 r!7292))) (= lambda!283263 lambda!283153))))

(declare-fun bs!1251342 () Bool)

(assert (= bs!1251342 (and b!5416520 d!1728248)))

(assert (=> bs!1251342 (not (= lambda!283263 lambda!283240))))

(declare-fun bs!1251343 () Bool)

(assert (= bs!1251343 (and b!5416520 d!1728196)))

(assert (=> bs!1251343 (= (and (= (regOne!30906 lt!2208553) (regOne!30906 r!7292)) (= (regTwo!30906 lt!2208553) (regTwo!30906 r!7292))) (= lambda!283263 lambda!283229))))

(declare-fun bs!1251346 () Bool)

(assert (= bs!1251346 (and b!5416520 b!5416317)))

(assert (=> bs!1251346 (not (= lambda!283263 lambda!283244))))

(declare-fun bs!1251348 () Bool)

(assert (= bs!1251348 (and b!5416520 d!1728070)))

(assert (=> bs!1251348 (not (= lambda!283263 lambda!283182))))

(declare-fun bs!1251349 () Bool)

(assert (= bs!1251349 (and b!5416520 b!5416518)))

(assert (=> bs!1251349 (not (= lambda!283263 lambda!283262))))

(declare-fun bs!1251350 () Bool)

(assert (= bs!1251350 (and b!5416520 d!1728194)))

(assert (=> bs!1251350 (not (= lambda!283263 lambda!283227))))

(assert (=> bs!1251343 (not (= lambda!283263 lambda!283228))))

(declare-fun bs!1251351 () Bool)

(assert (= bs!1251351 (and b!5416520 b!5415816)))

(assert (=> bs!1251351 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 lt!2208553) (regOne!30906 lt!2208521)) (= (regTwo!30906 lt!2208553) (regTwo!30906 lt!2208521))) (= lambda!283263 lambda!283208))))

(assert (=> bs!1251339 (not (= lambda!283263 lambda!283157))))

(declare-fun bs!1251352 () Bool)

(assert (= bs!1251352 (and b!5416520 b!5416319)))

(assert (=> bs!1251352 (= (and (= (regOne!30906 lt!2208553) (regOne!30906 lt!2208512)) (= (regTwo!30906 lt!2208553) (regTwo!30906 lt!2208512))) (= lambda!283263 lambda!283246))))

(declare-fun bs!1251353 () Bool)

(assert (= bs!1251353 (and b!5416520 b!5415478)))

(assert (=> bs!1251353 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 lt!2208553) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 lt!2208553) lt!2208538)) (= lambda!283263 lambda!283160))))

(declare-fun bs!1251354 () Bool)

(assert (= bs!1251354 (and b!5416520 b!5416480)))

(assert (=> bs!1251354 (not (= lambda!283263 lambda!283255))))

(assert (=> bs!1251353 (not (= lambda!283263 lambda!283161))))

(assert (=> bs!1251353 (not (= lambda!283263 lambda!283159))))

(declare-fun bs!1251355 () Bool)

(assert (= bs!1251355 (and b!5416520 d!1728052)))

(assert (=> bs!1251355 (= (and (= s!2326 (_1!35699 lt!2208525)) (= (regOne!30906 lt!2208553) (reg!15526 (regOne!30906 r!7292))) (= (regTwo!30906 lt!2208553) lt!2208538)) (= lambda!283263 lambda!283173))))

(assert (=> bs!1251341 (= (and (= (regOne!30906 lt!2208553) lt!2208521) (= (regTwo!30906 lt!2208553) (regTwo!30906 r!7292))) (= lambda!283263 lambda!283234))))

(assert (=> bs!1251355 (not (= lambda!283263 lambda!283172))))

(assert (=> b!5416520 true))

(assert (=> b!5416520 true))

(declare-fun b!5416515 () Bool)

(declare-fun e!3357295 () Bool)

(declare-fun e!3357294 () Bool)

(assert (=> b!5416515 (= e!3357295 e!3357294)))

(declare-fun res!2304104 () Bool)

(assert (=> b!5416515 (= res!2304104 (matchRSpec!2300 (regOne!30907 lt!2208553) s!2326))))

(assert (=> b!5416515 (=> res!2304104 e!3357294)))

(declare-fun b!5416516 () Bool)

(declare-fun c!944544 () Bool)

(assert (=> b!5416516 (= c!944544 ((_ is ElementMatch!15197) lt!2208553))))

(declare-fun e!3357293 () Bool)

(declare-fun e!3357292 () Bool)

(assert (=> b!5416516 (= e!3357293 e!3357292)))

(declare-fun b!5416517 () Bool)

(declare-fun e!3357296 () Bool)

(assert (=> b!5416517 (= e!3357296 e!3357293)))

(declare-fun res!2304105 () Bool)

(assert (=> b!5416517 (= res!2304105 (not ((_ is EmptyLang!15197) lt!2208553)))))

(assert (=> b!5416517 (=> (not res!2304105) (not e!3357293))))

(declare-fun e!3357297 () Bool)

(declare-fun call!387653 () Bool)

(assert (=> b!5416518 (= e!3357297 call!387653)))

(declare-fun b!5416519 () Bool)

(assert (=> b!5416519 (= e!3357292 (= s!2326 (Cons!61766 (c!944259 lt!2208553) Nil!61766)))))

(declare-fun d!1728378 () Bool)

(declare-fun c!944543 () Bool)

(assert (=> d!1728378 (= c!944543 ((_ is EmptyExpr!15197) lt!2208553))))

(assert (=> d!1728378 (= (matchRSpec!2300 lt!2208553 s!2326) e!3357296)))

(declare-fun e!3357298 () Bool)

(assert (=> b!5416520 (= e!3357298 call!387653)))

(declare-fun bm!387648 () Bool)

(declare-fun call!387654 () Bool)

(assert (=> bm!387648 (= call!387654 (isEmpty!33765 s!2326))))

(declare-fun c!944542 () Bool)

(declare-fun bm!387649 () Bool)

(assert (=> bm!387649 (= call!387653 (Exists!2378 (ite c!944542 lambda!283262 lambda!283263)))))

(declare-fun b!5416521 () Bool)

(assert (=> b!5416521 (= e!3357294 (matchRSpec!2300 (regTwo!30907 lt!2208553) s!2326))))

(declare-fun b!5416522 () Bool)

(declare-fun c!944541 () Bool)

(assert (=> b!5416522 (= c!944541 ((_ is Union!15197) lt!2208553))))

(assert (=> b!5416522 (= e!3357292 e!3357295)))

(declare-fun b!5416523 () Bool)

(declare-fun res!2304106 () Bool)

(assert (=> b!5416523 (=> res!2304106 e!3357297)))

(assert (=> b!5416523 (= res!2304106 call!387654)))

(assert (=> b!5416523 (= e!3357298 e!3357297)))

(declare-fun b!5416524 () Bool)

(assert (=> b!5416524 (= e!3357295 e!3357298)))

(assert (=> b!5416524 (= c!944542 ((_ is Star!15197) lt!2208553))))

(declare-fun b!5416525 () Bool)

(assert (=> b!5416525 (= e!3357296 call!387654)))

(assert (= (and d!1728378 c!944543) b!5416525))

(assert (= (and d!1728378 (not c!944543)) b!5416517))

(assert (= (and b!5416517 res!2304105) b!5416516))

(assert (= (and b!5416516 c!944544) b!5416519))

(assert (= (and b!5416516 (not c!944544)) b!5416522))

(assert (= (and b!5416522 c!944541) b!5416515))

(assert (= (and b!5416522 (not c!944541)) b!5416524))

(assert (= (and b!5416515 (not res!2304104)) b!5416521))

(assert (= (and b!5416524 c!944542) b!5416523))

(assert (= (and b!5416524 (not c!944542)) b!5416520))

(assert (= (and b!5416523 (not res!2304106)) b!5416518))

(assert (= (or b!5416518 b!5416520) bm!387649))

(assert (= (or b!5416525 b!5416523) bm!387648))

(declare-fun m!6440628 () Bool)

(assert (=> b!5416515 m!6440628))

(assert (=> bm!387648 m!6440254))

(declare-fun m!6440630 () Bool)

(assert (=> bm!387649 m!6440630))

(declare-fun m!6440632 () Bool)

(assert (=> b!5416521 m!6440632))

(assert (=> b!5415484 d!1728378))

(declare-fun b!5416571 () Bool)

(declare-fun res!2304107 () Bool)

(declare-fun e!3357321 () Bool)

(assert (=> b!5416571 (=> (not res!2304107) (not e!3357321))))

(assert (=> b!5416571 (= res!2304107 (isEmpty!33765 (tail!10714 s!2326)))))

(declare-fun b!5416572 () Bool)

(declare-fun e!3357319 () Bool)

(declare-fun e!3357320 () Bool)

(assert (=> b!5416572 (= e!3357319 e!3357320)))

(declare-fun res!2304111 () Bool)

(assert (=> b!5416572 (=> res!2304111 e!3357320)))

(declare-fun call!387655 () Bool)

(assert (=> b!5416572 (= res!2304111 call!387655)))

(declare-fun b!5416573 () Bool)

(assert (=> b!5416573 (= e!3357320 (not (= (head!11617 s!2326) (c!944259 lt!2208553))))))

(declare-fun bm!387650 () Bool)

(assert (=> bm!387650 (= call!387655 (isEmpty!33765 s!2326))))

(declare-fun b!5416574 () Bool)

(assert (=> b!5416574 (= e!3357321 (= (head!11617 s!2326) (c!944259 lt!2208553)))))

(declare-fun b!5416575 () Bool)

(declare-fun res!2304108 () Bool)

(assert (=> b!5416575 (=> (not res!2304108) (not e!3357321))))

(assert (=> b!5416575 (= res!2304108 (not call!387655))))

(declare-fun b!5416576 () Bool)

(declare-fun e!3357317 () Bool)

(declare-fun lt!2208784 () Bool)

(assert (=> b!5416576 (= e!3357317 (= lt!2208784 call!387655))))

(declare-fun b!5416577 () Bool)

(declare-fun res!2304113 () Bool)

(declare-fun e!3357323 () Bool)

(assert (=> b!5416577 (=> res!2304113 e!3357323)))

(assert (=> b!5416577 (= res!2304113 (not ((_ is ElementMatch!15197) lt!2208553)))))

(declare-fun e!3357322 () Bool)

(assert (=> b!5416577 (= e!3357322 e!3357323)))

(declare-fun d!1728390 () Bool)

(assert (=> d!1728390 e!3357317))

(declare-fun c!944546 () Bool)

(assert (=> d!1728390 (= c!944546 ((_ is EmptyExpr!15197) lt!2208553))))

(declare-fun e!3357318 () Bool)

(assert (=> d!1728390 (= lt!2208784 e!3357318)))

(declare-fun c!944545 () Bool)

(assert (=> d!1728390 (= c!944545 (isEmpty!33765 s!2326))))

(assert (=> d!1728390 (validRegex!6933 lt!2208553)))

(assert (=> d!1728390 (= (matchR!7382 lt!2208553 s!2326) lt!2208784)))

(declare-fun b!5416578 () Bool)

(assert (=> b!5416578 (= e!3357318 (nullable!5366 lt!2208553))))

(declare-fun b!5416579 () Bool)

(assert (=> b!5416579 (= e!3357322 (not lt!2208784))))

(declare-fun b!5416580 () Bool)

(assert (=> b!5416580 (= e!3357317 e!3357322)))

(declare-fun c!944547 () Bool)

(assert (=> b!5416580 (= c!944547 ((_ is EmptyLang!15197) lt!2208553))))

(declare-fun b!5416581 () Bool)

(assert (=> b!5416581 (= e!3357318 (matchR!7382 (derivativeStep!4270 lt!2208553 (head!11617 s!2326)) (tail!10714 s!2326)))))

(declare-fun b!5416582 () Bool)

(declare-fun res!2304110 () Bool)

(assert (=> b!5416582 (=> res!2304110 e!3357323)))

(assert (=> b!5416582 (= res!2304110 e!3357321)))

(declare-fun res!2304112 () Bool)

(assert (=> b!5416582 (=> (not res!2304112) (not e!3357321))))

(assert (=> b!5416582 (= res!2304112 lt!2208784)))

(declare-fun b!5416583 () Bool)

(declare-fun res!2304109 () Bool)

(assert (=> b!5416583 (=> res!2304109 e!3357320)))

(assert (=> b!5416583 (= res!2304109 (not (isEmpty!33765 (tail!10714 s!2326))))))

(declare-fun b!5416584 () Bool)

(assert (=> b!5416584 (= e!3357323 e!3357319)))

(declare-fun res!2304114 () Bool)

(assert (=> b!5416584 (=> (not res!2304114) (not e!3357319))))

(assert (=> b!5416584 (= res!2304114 (not lt!2208784))))

(assert (= (and d!1728390 c!944545) b!5416578))

(assert (= (and d!1728390 (not c!944545)) b!5416581))

(assert (= (and d!1728390 c!944546) b!5416576))

(assert (= (and d!1728390 (not c!944546)) b!5416580))

(assert (= (and b!5416580 c!944547) b!5416579))

(assert (= (and b!5416580 (not c!944547)) b!5416577))

(assert (= (and b!5416577 (not res!2304113)) b!5416582))

(assert (= (and b!5416582 res!2304112) b!5416575))

(assert (= (and b!5416575 res!2304108) b!5416571))

(assert (= (and b!5416571 res!2304107) b!5416574))

(assert (= (and b!5416582 (not res!2304110)) b!5416584))

(assert (= (and b!5416584 res!2304114) b!5416572))

(assert (= (and b!5416572 (not res!2304111)) b!5416583))

(assert (= (and b!5416583 (not res!2304109)) b!5416573))

(assert (= (or b!5416576 b!5416572 b!5416575) bm!387650))

(assert (=> b!5416578 m!6440222))

(assert (=> b!5416581 m!6440242))

(assert (=> b!5416581 m!6440242))

(declare-fun m!6440634 () Bool)

(assert (=> b!5416581 m!6440634))

(assert (=> b!5416581 m!6440246))

(assert (=> b!5416581 m!6440634))

(assert (=> b!5416581 m!6440246))

(declare-fun m!6440636 () Bool)

(assert (=> b!5416581 m!6440636))

(assert (=> b!5416573 m!6440242))

(assert (=> d!1728390 m!6440254))

(assert (=> d!1728390 m!6440234))

(assert (=> b!5416583 m!6440246))

(assert (=> b!5416583 m!6440246))

(assert (=> b!5416583 m!6440260))

(assert (=> b!5416571 m!6440246))

(assert (=> b!5416571 m!6440246))

(assert (=> b!5416571 m!6440260))

(assert (=> bm!387650 m!6440254))

(assert (=> b!5416574 m!6440242))

(assert (=> b!5415484 d!1728390))

(declare-fun d!1728392 () Bool)

(assert (=> d!1728392 (= (matchR!7382 lt!2208553 s!2326) (matchRSpec!2300 lt!2208553 s!2326))))

(declare-fun lt!2208785 () Unit!154310)

(assert (=> d!1728392 (= lt!2208785 (choose!40955 lt!2208553 s!2326))))

(assert (=> d!1728392 (validRegex!6933 lt!2208553)))

(assert (=> d!1728392 (= (mainMatchTheorem!2300 lt!2208553 s!2326) lt!2208785)))

(declare-fun bs!1251356 () Bool)

(assert (= bs!1251356 d!1728392))

(assert (=> bs!1251356 m!6439470))

(assert (=> bs!1251356 m!6439468))

(declare-fun m!6440638 () Bool)

(assert (=> bs!1251356 m!6440638))

(assert (=> bs!1251356 m!6440234))

(assert (=> b!5415484 d!1728392))

(declare-fun bs!1251357 () Bool)

(declare-fun d!1728394 () Bool)

(assert (= bs!1251357 (and d!1728394 b!5415469)))

(declare-fun lambda!283266 () Int)

(assert (=> bs!1251357 (= lambda!283266 lambda!283156)))

(declare-fun bs!1251358 () Bool)

(assert (= bs!1251358 (and d!1728394 d!1728260)))

(assert (=> bs!1251358 (= lambda!283266 lambda!283243)))

(declare-fun bs!1251359 () Bool)

(assert (= bs!1251359 (and d!1728394 d!1728338)))

(assert (=> bs!1251359 (= lambda!283266 lambda!283253)))

(declare-fun bs!1251360 () Bool)

(assert (= bs!1251360 (and d!1728394 d!1728374)))

(assert (=> bs!1251360 (= lambda!283266 lambda!283261)))

(declare-fun b!5416606 () Bool)

(declare-fun e!3357338 () Regex!15197)

(assert (=> b!5416606 (= e!3357338 EmptyLang!15197)))

(declare-fun b!5416607 () Bool)

(declare-fun e!3357337 () Bool)

(declare-fun e!3357336 () Bool)

(assert (=> b!5416607 (= e!3357337 e!3357336)))

(declare-fun c!944557 () Bool)

(assert (=> b!5416607 (= c!944557 (isEmpty!33760 (unfocusZipperList!639 zl!343)))))

(declare-fun b!5416608 () Bool)

(assert (=> b!5416608 (= e!3357338 (Union!15197 (h!68215 (unfocusZipperList!639 zl!343)) (generalisedUnion!1126 (t!375114 (unfocusZipperList!639 zl!343)))))))

(declare-fun b!5416609 () Bool)

(declare-fun e!3357340 () Bool)

(assert (=> b!5416609 (= e!3357340 (isEmpty!33760 (t!375114 (unfocusZipperList!639 zl!343))))))

(declare-fun b!5416610 () Bool)

(declare-fun e!3357339 () Bool)

(declare-fun lt!2208788 () Regex!15197)

(assert (=> b!5416610 (= e!3357339 (= lt!2208788 (head!11618 (unfocusZipperList!639 zl!343))))))

(declare-fun b!5416611 () Bool)

(declare-fun isUnion!423 (Regex!15197) Bool)

(assert (=> b!5416611 (= e!3357339 (isUnion!423 lt!2208788))))

(declare-fun b!5416612 () Bool)

(declare-fun e!3357341 () Regex!15197)

(assert (=> b!5416612 (= e!3357341 (h!68215 (unfocusZipperList!639 zl!343)))))

(declare-fun b!5416613 () Bool)

(assert (=> b!5416613 (= e!3357336 e!3357339)))

(declare-fun c!944556 () Bool)

(assert (=> b!5416613 (= c!944556 (isEmpty!33760 (tail!10715 (unfocusZipperList!639 zl!343))))))

(declare-fun b!5416614 () Bool)

(declare-fun isEmptyLang!991 (Regex!15197) Bool)

(assert (=> b!5416614 (= e!3357336 (isEmptyLang!991 lt!2208788))))

(declare-fun b!5416605 () Bool)

(assert (=> b!5416605 (= e!3357341 e!3357338)))

(declare-fun c!944558 () Bool)

(assert (=> b!5416605 (= c!944558 ((_ is Cons!61767) (unfocusZipperList!639 zl!343)))))

(assert (=> d!1728394 e!3357337))

(declare-fun res!2304119 () Bool)

(assert (=> d!1728394 (=> (not res!2304119) (not e!3357337))))

(assert (=> d!1728394 (= res!2304119 (validRegex!6933 lt!2208788))))

(assert (=> d!1728394 (= lt!2208788 e!3357341)))

(declare-fun c!944559 () Bool)

(assert (=> d!1728394 (= c!944559 e!3357340)))

(declare-fun res!2304120 () Bool)

(assert (=> d!1728394 (=> (not res!2304120) (not e!3357340))))

(assert (=> d!1728394 (= res!2304120 ((_ is Cons!61767) (unfocusZipperList!639 zl!343)))))

(assert (=> d!1728394 (forall!14543 (unfocusZipperList!639 zl!343) lambda!283266)))

(assert (=> d!1728394 (= (generalisedUnion!1126 (unfocusZipperList!639 zl!343)) lt!2208788)))

(assert (= (and d!1728394 res!2304120) b!5416609))

(assert (= (and d!1728394 c!944559) b!5416612))

(assert (= (and d!1728394 (not c!944559)) b!5416605))

(assert (= (and b!5416605 c!944558) b!5416608))

(assert (= (and b!5416605 (not c!944558)) b!5416606))

(assert (= (and d!1728394 res!2304119) b!5416607))

(assert (= (and b!5416607 c!944557) b!5416614))

(assert (= (and b!5416607 (not c!944557)) b!5416613))

(assert (= (and b!5416613 c!944556) b!5416610))

(assert (= (and b!5416613 (not c!944556)) b!5416611))

(declare-fun m!6440640 () Bool)

(assert (=> b!5416609 m!6440640))

(declare-fun m!6440642 () Bool)

(assert (=> b!5416611 m!6440642))

(declare-fun m!6440644 () Bool)

(assert (=> b!5416614 m!6440644))

(declare-fun m!6440646 () Bool)

(assert (=> d!1728394 m!6440646))

(assert (=> d!1728394 m!6439504))

(declare-fun m!6440648 () Bool)

(assert (=> d!1728394 m!6440648))

(assert (=> b!5416613 m!6439504))

(declare-fun m!6440650 () Bool)

(assert (=> b!5416613 m!6440650))

(assert (=> b!5416613 m!6440650))

(declare-fun m!6440652 () Bool)

(assert (=> b!5416613 m!6440652))

(assert (=> b!5416607 m!6439504))

(declare-fun m!6440654 () Bool)

(assert (=> b!5416607 m!6440654))

(declare-fun m!6440656 () Bool)

(assert (=> b!5416608 m!6440656))

(assert (=> b!5416610 m!6439504))

(declare-fun m!6440658 () Bool)

(assert (=> b!5416610 m!6440658))

(assert (=> b!5415493 d!1728394))

(declare-fun bs!1251361 () Bool)

(declare-fun d!1728396 () Bool)

(assert (= bs!1251361 (and d!1728396 d!1728394)))

(declare-fun lambda!283269 () Int)

(assert (=> bs!1251361 (= lambda!283269 lambda!283266)))

(declare-fun bs!1251362 () Bool)

(assert (= bs!1251362 (and d!1728396 d!1728338)))

(assert (=> bs!1251362 (= lambda!283269 lambda!283253)))

(declare-fun bs!1251363 () Bool)

(assert (= bs!1251363 (and d!1728396 b!5415469)))

(assert (=> bs!1251363 (= lambda!283269 lambda!283156)))

(declare-fun bs!1251364 () Bool)

(assert (= bs!1251364 (and d!1728396 d!1728374)))

(assert (=> bs!1251364 (= lambda!283269 lambda!283261)))

(declare-fun bs!1251365 () Bool)

(assert (= bs!1251365 (and d!1728396 d!1728260)))

(assert (=> bs!1251365 (= lambda!283269 lambda!283243)))

(declare-fun lt!2208791 () List!61891)

(assert (=> d!1728396 (forall!14543 lt!2208791 lambda!283269)))

(declare-fun e!3357344 () List!61891)

(assert (=> d!1728396 (= lt!2208791 e!3357344)))

(declare-fun c!944562 () Bool)

(assert (=> d!1728396 (= c!944562 ((_ is Cons!61768) zl!343))))

(assert (=> d!1728396 (= (unfocusZipperList!639 zl!343) lt!2208791)))

(declare-fun b!5416619 () Bool)

(assert (=> b!5416619 (= e!3357344 (Cons!61767 (generalisedConcat!866 (exprs!5081 (h!68216 zl!343))) (unfocusZipperList!639 (t!375115 zl!343))))))

(declare-fun b!5416620 () Bool)

(assert (=> b!5416620 (= e!3357344 Nil!61767)))

(assert (= (and d!1728396 c!944562) b!5416619))

(assert (= (and d!1728396 (not c!944562)) b!5416620))

(declare-fun m!6440660 () Bool)

(assert (=> d!1728396 m!6440660))

(assert (=> b!5416619 m!6439554))

(declare-fun m!6440662 () Bool)

(assert (=> b!5416619 m!6440662))

(assert (=> b!5415493 d!1728396))

(declare-fun d!1728398 () Bool)

(assert (=> d!1728398 (= (isEmpty!33761 (t!375115 zl!343)) ((_ is Nil!61768) (t!375115 zl!343)))))

(assert (=> b!5415513 d!1728398))

(declare-fun b!5416639 () Bool)

(declare-fun e!3357365 () Bool)

(declare-fun call!387662 () Bool)

(assert (=> b!5416639 (= e!3357365 call!387662)))

(declare-fun d!1728400 () Bool)

(declare-fun res!2304131 () Bool)

(declare-fun e!3357361 () Bool)

(assert (=> d!1728400 (=> res!2304131 e!3357361)))

(assert (=> d!1728400 (= res!2304131 ((_ is ElementMatch!15197) r!7292))))

(assert (=> d!1728400 (= (validRegex!6933 r!7292) e!3357361)))

(declare-fun bm!387657 () Bool)

(declare-fun call!387663 () Bool)

(assert (=> bm!387657 (= call!387663 call!387662)))

(declare-fun b!5416640 () Bool)

(declare-fun e!3357364 () Bool)

(declare-fun e!3357363 () Bool)

(assert (=> b!5416640 (= e!3357364 e!3357363)))

(declare-fun res!2304135 () Bool)

(assert (=> b!5416640 (=> (not res!2304135) (not e!3357363))))

(assert (=> b!5416640 (= res!2304135 call!387663)))

(declare-fun b!5416641 () Bool)

(declare-fun e!3357359 () Bool)

(declare-fun e!3357360 () Bool)

(assert (=> b!5416641 (= e!3357359 e!3357360)))

(declare-fun c!944568 () Bool)

(assert (=> b!5416641 (= c!944568 ((_ is Union!15197) r!7292))))

(declare-fun b!5416642 () Bool)

(declare-fun call!387664 () Bool)

(assert (=> b!5416642 (= e!3357363 call!387664)))

(declare-fun bm!387658 () Bool)

(declare-fun c!944567 () Bool)

(assert (=> bm!387658 (= call!387662 (validRegex!6933 (ite c!944567 (reg!15526 r!7292) (ite c!944568 (regOne!30907 r!7292) (regOne!30906 r!7292)))))))

(declare-fun bm!387659 () Bool)

(assert (=> bm!387659 (= call!387664 (validRegex!6933 (ite c!944568 (regTwo!30907 r!7292) (regTwo!30906 r!7292))))))

(declare-fun b!5416643 () Bool)

(assert (=> b!5416643 (= e!3357361 e!3357359)))

(assert (=> b!5416643 (= c!944567 ((_ is Star!15197) r!7292))))

(declare-fun b!5416644 () Bool)

(assert (=> b!5416644 (= e!3357359 e!3357365)))

(declare-fun res!2304132 () Bool)

(assert (=> b!5416644 (= res!2304132 (not (nullable!5366 (reg!15526 r!7292))))))

(assert (=> b!5416644 (=> (not res!2304132) (not e!3357365))))

(declare-fun b!5416645 () Bool)

(declare-fun res!2304133 () Bool)

(declare-fun e!3357362 () Bool)

(assert (=> b!5416645 (=> (not res!2304133) (not e!3357362))))

(assert (=> b!5416645 (= res!2304133 call!387663)))

(assert (=> b!5416645 (= e!3357360 e!3357362)))

(declare-fun b!5416646 () Bool)

(declare-fun res!2304134 () Bool)

(assert (=> b!5416646 (=> res!2304134 e!3357364)))

(assert (=> b!5416646 (= res!2304134 (not ((_ is Concat!24042) r!7292)))))

(assert (=> b!5416646 (= e!3357360 e!3357364)))

(declare-fun b!5416647 () Bool)

(assert (=> b!5416647 (= e!3357362 call!387664)))

(assert (= (and d!1728400 (not res!2304131)) b!5416643))

(assert (= (and b!5416643 c!944567) b!5416644))

(assert (= (and b!5416643 (not c!944567)) b!5416641))

(assert (= (and b!5416644 res!2304132) b!5416639))

(assert (= (and b!5416641 c!944568) b!5416645))

(assert (= (and b!5416641 (not c!944568)) b!5416646))

(assert (= (and b!5416645 res!2304133) b!5416647))

(assert (= (and b!5416646 (not res!2304134)) b!5416640))

(assert (= (and b!5416640 res!2304135) b!5416642))

(assert (= (or b!5416647 b!5416642) bm!387659))

(assert (= (or b!5416645 b!5416640) bm!387657))

(assert (= (or b!5416639 bm!387657) bm!387658))

(declare-fun m!6440664 () Bool)

(assert (=> bm!387658 m!6440664))

(declare-fun m!6440666 () Bool)

(assert (=> bm!387659 m!6440666))

(declare-fun m!6440668 () Bool)

(assert (=> b!5416644 m!6440668))

(assert (=> start!568606 d!1728400))

(assert (=> b!5415471 d!1728360))

(declare-fun bs!1251366 () Bool)

(declare-fun d!1728402 () Bool)

(assert (= bs!1251366 (and d!1728402 d!1728394)))

(declare-fun lambda!283270 () Int)

(assert (=> bs!1251366 (= lambda!283270 lambda!283266)))

(declare-fun bs!1251367 () Bool)

(assert (= bs!1251367 (and d!1728402 d!1728396)))

(assert (=> bs!1251367 (= lambda!283270 lambda!283269)))

(declare-fun bs!1251368 () Bool)

(assert (= bs!1251368 (and d!1728402 d!1728338)))

(assert (=> bs!1251368 (= lambda!283270 lambda!283253)))

(declare-fun bs!1251369 () Bool)

(assert (= bs!1251369 (and d!1728402 b!5415469)))

(assert (=> bs!1251369 (= lambda!283270 lambda!283156)))

(declare-fun bs!1251370 () Bool)

(assert (= bs!1251370 (and d!1728402 d!1728374)))

(assert (=> bs!1251370 (= lambda!283270 lambda!283261)))

(declare-fun bs!1251371 () Bool)

(assert (= bs!1251371 (and d!1728402 d!1728260)))

(assert (=> bs!1251371 (= lambda!283270 lambda!283243)))

(assert (=> d!1728402 (= (inv!81239 setElem!35285) (forall!14543 (exprs!5081 setElem!35285) lambda!283270))))

(declare-fun bs!1251372 () Bool)

(assert (= bs!1251372 d!1728402))

(declare-fun m!6440670 () Bool)

(assert (=> bs!1251372 m!6440670))

(assert (=> setNonEmpty!35285 d!1728402))

(declare-fun d!1728404 () Bool)

(declare-fun c!944569 () Bool)

(assert (=> d!1728404 (= c!944569 (isEmpty!33765 s!2326))))

(declare-fun e!3357366 () Bool)

(assert (=> d!1728404 (= (matchZipper!1441 z!1189 s!2326) e!3357366)))

(declare-fun b!5416648 () Bool)

(assert (=> b!5416648 (= e!3357366 (nullableZipper!1450 z!1189))))

(declare-fun b!5416649 () Bool)

(assert (=> b!5416649 (= e!3357366 (matchZipper!1441 (derivationStepZipper!1436 z!1189 (head!11617 s!2326)) (tail!10714 s!2326)))))

(assert (= (and d!1728404 c!944569) b!5416648))

(assert (= (and d!1728404 (not c!944569)) b!5416649))

(assert (=> d!1728404 m!6440254))

(declare-fun m!6440672 () Bool)

(assert (=> b!5416648 m!6440672))

(assert (=> b!5416649 m!6440242))

(assert (=> b!5416649 m!6440242))

(declare-fun m!6440674 () Bool)

(assert (=> b!5416649 m!6440674))

(assert (=> b!5416649 m!6440246))

(assert (=> b!5416649 m!6440674))

(assert (=> b!5416649 m!6440246))

(declare-fun m!6440676 () Bool)

(assert (=> b!5416649 m!6440676))

(assert (=> b!5415491 d!1728404))

(declare-fun bs!1251373 () Bool)

(declare-fun d!1728406 () Bool)

(assert (= bs!1251373 (and d!1728406 b!5415469)))

(declare-fun lambda!283275 () Int)

(assert (=> bs!1251373 (= (= (exprs!5081 lt!2208566) lt!2208567) (= lambda!283275 lambda!283155))))

(assert (=> d!1728406 true))

(assert (=> d!1728406 (= (appendTo!56 lt!2208564 lt!2208566) (map!14180 lt!2208564 lambda!283275))))

(declare-fun bs!1251374 () Bool)

(assert (= bs!1251374 d!1728406))

(declare-fun m!6440678 () Bool)

(assert (=> bs!1251374 m!6440678))

(assert (=> b!5415469 d!1728406))

(assert (=> b!5415469 d!1728218))

(declare-fun d!1728408 () Bool)

(declare-fun dynLambda!24340 (Int Context!9162) Context!9162)

(assert (=> d!1728408 (= (map!14180 lt!2208564 lambda!283155) (store ((as const (Array Context!9162 Bool)) false) (dynLambda!24340 lambda!283155 lt!2208526) true))))

(declare-fun lt!2208796 () Unit!154310)

(declare-fun choose!40981 ((InoxSet Context!9162) Context!9162 Int) Unit!154310)

(assert (=> d!1728408 (= lt!2208796 (choose!40981 lt!2208564 lt!2208526 lambda!283155))))

(assert (=> d!1728408 (= lt!2208564 (store ((as const (Array Context!9162 Bool)) false) lt!2208526 true))))

(assert (=> d!1728408 (= (lemmaMapOnSingletonSet!56 lt!2208564 lt!2208526 lambda!283155) lt!2208796)))

(declare-fun b_lambda!206817 () Bool)

(assert (=> (not b_lambda!206817) (not d!1728408)))

(declare-fun bs!1251375 () Bool)

(assert (= bs!1251375 d!1728408))

(declare-fun m!6440680 () Bool)

(assert (=> bs!1251375 m!6440680))

(assert (=> bs!1251375 m!6439458))

(assert (=> bs!1251375 m!6439418))

(assert (=> bs!1251375 m!6440680))

(declare-fun m!6440682 () Bool)

(assert (=> bs!1251375 m!6440682))

(declare-fun m!6440684 () Bool)

(assert (=> bs!1251375 m!6440684))

(assert (=> b!5415469 d!1728408))

(declare-fun d!1728410 () Bool)

(declare-fun choose!40982 ((InoxSet Context!9162) Int) (InoxSet Context!9162))

(assert (=> d!1728410 (= (map!14180 lt!2208564 lambda!283155) (choose!40982 lt!2208564 lambda!283155))))

(declare-fun bs!1251376 () Bool)

(assert (= bs!1251376 d!1728410))

(declare-fun m!6440686 () Bool)

(assert (=> bs!1251376 m!6440686))

(assert (=> b!5415469 d!1728410))

(assert (=> b!5415469 d!1728304))

(declare-fun d!1728412 () Bool)

(declare-fun lt!2208797 () Regex!15197)

(assert (=> d!1728412 (validRegex!6933 lt!2208797)))

(assert (=> d!1728412 (= lt!2208797 (generalisedUnion!1126 (unfocusZipperList!639 zl!343)))))

(assert (=> d!1728412 (= (unfocusZipper!939 zl!343) lt!2208797)))

(declare-fun bs!1251377 () Bool)

(assert (= bs!1251377 d!1728412))

(declare-fun m!6440688 () Bool)

(assert (=> bs!1251377 m!6440688))

(assert (=> bs!1251377 m!6439504))

(assert (=> bs!1251377 m!6439504))

(assert (=> bs!1251377 m!6439506))

(assert (=> b!5415490 d!1728412))

(declare-fun d!1728414 () Bool)

(declare-fun c!944571 () Bool)

(assert (=> d!1728414 (= c!944571 (isEmpty!33765 (_1!35699 lt!2208535)))))

(declare-fun e!3357367 () Bool)

(assert (=> d!1728414 (= (matchZipper!1441 lt!2208564 (_1!35699 lt!2208535)) e!3357367)))

(declare-fun b!5416652 () Bool)

(assert (=> b!5416652 (= e!3357367 (nullableZipper!1450 lt!2208564))))

(declare-fun b!5416653 () Bool)

(assert (=> b!5416653 (= e!3357367 (matchZipper!1441 (derivationStepZipper!1436 lt!2208564 (head!11617 (_1!35699 lt!2208535))) (tail!10714 (_1!35699 lt!2208535))))))

(assert (= (and d!1728414 c!944571) b!5416652))

(assert (= (and d!1728414 (not c!944571)) b!5416653))

(assert (=> d!1728414 m!6440216))

(declare-fun m!6440690 () Bool)

(assert (=> b!5416652 m!6440690))

(assert (=> b!5416653 m!6440204))

(assert (=> b!5416653 m!6440204))

(declare-fun m!6440692 () Bool)

(assert (=> b!5416653 m!6440692))

(assert (=> b!5416653 m!6440210))

(assert (=> b!5416653 m!6440692))

(assert (=> b!5416653 m!6440210))

(declare-fun m!6440694 () Bool)

(assert (=> b!5416653 m!6440694))

(assert (=> b!5415468 d!1728414))

(declare-fun b!5416667 () Bool)

(declare-fun e!3357370 () Bool)

(declare-fun tp!1496271 () Bool)

(declare-fun tp!1496270 () Bool)

(assert (=> b!5416667 (= e!3357370 (and tp!1496271 tp!1496270))))

(assert (=> b!5415482 (= tp!1496197 e!3357370)))

(declare-fun b!5416664 () Bool)

(assert (=> b!5416664 (= e!3357370 tp_is_empty!39647)))

(declare-fun b!5416665 () Bool)

(declare-fun tp!1496273 () Bool)

(declare-fun tp!1496274 () Bool)

(assert (=> b!5416665 (= e!3357370 (and tp!1496273 tp!1496274))))

(declare-fun b!5416666 () Bool)

(declare-fun tp!1496272 () Bool)

(assert (=> b!5416666 (= e!3357370 tp!1496272)))

(assert (= (and b!5415482 ((_ is ElementMatch!15197) (regOne!30907 r!7292))) b!5416664))

(assert (= (and b!5415482 ((_ is Concat!24042) (regOne!30907 r!7292))) b!5416665))

(assert (= (and b!5415482 ((_ is Star!15197) (regOne!30907 r!7292))) b!5416666))

(assert (= (and b!5415482 ((_ is Union!15197) (regOne!30907 r!7292))) b!5416667))

(declare-fun b!5416671 () Bool)

(declare-fun e!3357371 () Bool)

(declare-fun tp!1496276 () Bool)

(declare-fun tp!1496275 () Bool)

(assert (=> b!5416671 (= e!3357371 (and tp!1496276 tp!1496275))))

(assert (=> b!5415482 (= tp!1496194 e!3357371)))

(declare-fun b!5416668 () Bool)

(assert (=> b!5416668 (= e!3357371 tp_is_empty!39647)))

(declare-fun b!5416669 () Bool)

(declare-fun tp!1496278 () Bool)

(declare-fun tp!1496279 () Bool)

(assert (=> b!5416669 (= e!3357371 (and tp!1496278 tp!1496279))))

(declare-fun b!5416670 () Bool)

(declare-fun tp!1496277 () Bool)

(assert (=> b!5416670 (= e!3357371 tp!1496277)))

(assert (= (and b!5415482 ((_ is ElementMatch!15197) (regTwo!30907 r!7292))) b!5416668))

(assert (= (and b!5415482 ((_ is Concat!24042) (regTwo!30907 r!7292))) b!5416669))

(assert (= (and b!5415482 ((_ is Star!15197) (regTwo!30907 r!7292))) b!5416670))

(assert (= (and b!5415482 ((_ is Union!15197) (regTwo!30907 r!7292))) b!5416671))

(declare-fun condSetEmpty!35291 () Bool)

(assert (=> setNonEmpty!35285 (= condSetEmpty!35291 (= setRest!35285 ((as const (Array Context!9162 Bool)) false)))))

(declare-fun setRes!35291 () Bool)

(assert (=> setNonEmpty!35285 (= tp!1496200 setRes!35291)))

(declare-fun setIsEmpty!35291 () Bool)

(assert (=> setIsEmpty!35291 setRes!35291))

(declare-fun setNonEmpty!35291 () Bool)

(declare-fun setElem!35291 () Context!9162)

(declare-fun tp!1496284 () Bool)

(declare-fun e!3357374 () Bool)

(assert (=> setNonEmpty!35291 (= setRes!35291 (and tp!1496284 (inv!81239 setElem!35291) e!3357374))))

(declare-fun setRest!35291 () (InoxSet Context!9162))

(assert (=> setNonEmpty!35291 (= setRest!35285 ((_ map or) (store ((as const (Array Context!9162 Bool)) false) setElem!35291 true) setRest!35291))))

(declare-fun b!5416676 () Bool)

(declare-fun tp!1496285 () Bool)

(assert (=> b!5416676 (= e!3357374 tp!1496285)))

(assert (= (and setNonEmpty!35285 condSetEmpty!35291) setIsEmpty!35291))

(assert (= (and setNonEmpty!35285 (not condSetEmpty!35291)) setNonEmpty!35291))

(assert (= setNonEmpty!35291 b!5416676))

(declare-fun m!6440696 () Bool)

(assert (=> setNonEmpty!35291 m!6440696))

(declare-fun b!5416680 () Bool)

(declare-fun e!3357375 () Bool)

(declare-fun tp!1496287 () Bool)

(declare-fun tp!1496286 () Bool)

(assert (=> b!5416680 (= e!3357375 (and tp!1496287 tp!1496286))))

(assert (=> b!5415511 (= tp!1496196 e!3357375)))

(declare-fun b!5416677 () Bool)

(assert (=> b!5416677 (= e!3357375 tp_is_empty!39647)))

(declare-fun b!5416678 () Bool)

(declare-fun tp!1496289 () Bool)

(declare-fun tp!1496290 () Bool)

(assert (=> b!5416678 (= e!3357375 (and tp!1496289 tp!1496290))))

(declare-fun b!5416679 () Bool)

(declare-fun tp!1496288 () Bool)

(assert (=> b!5416679 (= e!3357375 tp!1496288)))

(assert (= (and b!5415511 ((_ is ElementMatch!15197) (reg!15526 r!7292))) b!5416677))

(assert (= (and b!5415511 ((_ is Concat!24042) (reg!15526 r!7292))) b!5416678))

(assert (= (and b!5415511 ((_ is Star!15197) (reg!15526 r!7292))) b!5416679))

(assert (= (and b!5415511 ((_ is Union!15197) (reg!15526 r!7292))) b!5416680))

(declare-fun b!5416685 () Bool)

(declare-fun e!3357378 () Bool)

(declare-fun tp!1496295 () Bool)

(declare-fun tp!1496296 () Bool)

(assert (=> b!5416685 (= e!3357378 (and tp!1496295 tp!1496296))))

(assert (=> b!5415470 (= tp!1496195 e!3357378)))

(assert (= (and b!5415470 ((_ is Cons!61767) (exprs!5081 setElem!35285))) b!5416685))

(declare-fun b!5416693 () Bool)

(declare-fun e!3357384 () Bool)

(declare-fun tp!1496301 () Bool)

(assert (=> b!5416693 (= e!3357384 tp!1496301)))

(declare-fun tp!1496302 () Bool)

(declare-fun e!3357383 () Bool)

(declare-fun b!5416692 () Bool)

(assert (=> b!5416692 (= e!3357383 (and (inv!81239 (h!68216 (t!375115 zl!343))) e!3357384 tp!1496302))))

(assert (=> b!5415505 (= tp!1496199 e!3357383)))

(assert (= b!5416692 b!5416693))

(assert (= (and b!5415505 ((_ is Cons!61768) (t!375115 zl!343))) b!5416692))

(declare-fun m!6440698 () Bool)

(assert (=> b!5416692 m!6440698))

(declare-fun b!5416694 () Bool)

(declare-fun e!3357385 () Bool)

(declare-fun tp!1496303 () Bool)

(declare-fun tp!1496304 () Bool)

(assert (=> b!5416694 (= e!3357385 (and tp!1496303 tp!1496304))))

(assert (=> b!5415479 (= tp!1496192 e!3357385)))

(assert (= (and b!5415479 ((_ is Cons!61767) (exprs!5081 (h!68216 zl!343)))) b!5416694))

(declare-fun b!5416698 () Bool)

(declare-fun e!3357386 () Bool)

(declare-fun tp!1496306 () Bool)

(declare-fun tp!1496305 () Bool)

(assert (=> b!5416698 (= e!3357386 (and tp!1496306 tp!1496305))))

(assert (=> b!5415489 (= tp!1496201 e!3357386)))

(declare-fun b!5416695 () Bool)

(assert (=> b!5416695 (= e!3357386 tp_is_empty!39647)))

(declare-fun b!5416696 () Bool)

(declare-fun tp!1496308 () Bool)

(declare-fun tp!1496309 () Bool)

(assert (=> b!5416696 (= e!3357386 (and tp!1496308 tp!1496309))))

(declare-fun b!5416697 () Bool)

(declare-fun tp!1496307 () Bool)

(assert (=> b!5416697 (= e!3357386 tp!1496307)))

(assert (= (and b!5415489 ((_ is ElementMatch!15197) (regOne!30906 r!7292))) b!5416695))

(assert (= (and b!5415489 ((_ is Concat!24042) (regOne!30906 r!7292))) b!5416696))

(assert (= (and b!5415489 ((_ is Star!15197) (regOne!30906 r!7292))) b!5416697))

(assert (= (and b!5415489 ((_ is Union!15197) (regOne!30906 r!7292))) b!5416698))

(declare-fun b!5416702 () Bool)

(declare-fun e!3357387 () Bool)

(declare-fun tp!1496311 () Bool)

(declare-fun tp!1496310 () Bool)

(assert (=> b!5416702 (= e!3357387 (and tp!1496311 tp!1496310))))

(assert (=> b!5415489 (= tp!1496193 e!3357387)))

(declare-fun b!5416699 () Bool)

(assert (=> b!5416699 (= e!3357387 tp_is_empty!39647)))

(declare-fun b!5416700 () Bool)

(declare-fun tp!1496313 () Bool)

(declare-fun tp!1496314 () Bool)

(assert (=> b!5416700 (= e!3357387 (and tp!1496313 tp!1496314))))

(declare-fun b!5416701 () Bool)

(declare-fun tp!1496312 () Bool)

(assert (=> b!5416701 (= e!3357387 tp!1496312)))

(assert (= (and b!5415489 ((_ is ElementMatch!15197) (regTwo!30906 r!7292))) b!5416699))

(assert (= (and b!5415489 ((_ is Concat!24042) (regTwo!30906 r!7292))) b!5416700))

(assert (= (and b!5415489 ((_ is Star!15197) (regTwo!30906 r!7292))) b!5416701))

(assert (= (and b!5415489 ((_ is Union!15197) (regTwo!30906 r!7292))) b!5416702))

(declare-fun b!5416707 () Bool)

(declare-fun e!3357390 () Bool)

(declare-fun tp!1496317 () Bool)

(assert (=> b!5416707 (= e!3357390 (and tp_is_empty!39647 tp!1496317))))

(assert (=> b!5415504 (= tp!1496198 e!3357390)))

(assert (= (and b!5415504 ((_ is Cons!61766) (t!375113 s!2326))) b!5416707))

(declare-fun b_lambda!206819 () Bool)

(assert (= b_lambda!206805 (or b!5415480 b_lambda!206819)))

(declare-fun bs!1251378 () Bool)

(declare-fun d!1728416 () Bool)

(assert (= bs!1251378 (and d!1728416 b!5415480)))

(assert (=> bs!1251378 (= (dynLambda!24338 lambda!283154 (h!68216 zl!343)) (derivationStepZipperUp!569 (h!68216 zl!343) (h!68214 s!2326)))))

(assert (=> bs!1251378 m!6439366))

(assert (=> d!1728308 d!1728416))

(declare-fun b_lambda!206821 () Bool)

(assert (= b_lambda!206797 (or b!5415480 b_lambda!206821)))

(declare-fun bs!1251379 () Bool)

(declare-fun d!1728418 () Bool)

(assert (= bs!1251379 (and d!1728418 b!5415480)))

(assert (=> bs!1251379 (= (dynLambda!24338 lambda!283154 lt!2208526) (derivationStepZipperUp!569 lt!2208526 (h!68214 s!2326)))))

(assert (=> bs!1251379 m!6439412))

(assert (=> d!1728140 d!1728418))

(declare-fun b_lambda!206823 () Bool)

(assert (= b_lambda!206801 (or b!5415480 b_lambda!206823)))

(declare-fun bs!1251380 () Bool)

(declare-fun d!1728420 () Bool)

(assert (= bs!1251380 (and d!1728420 b!5415480)))

(assert (=> bs!1251380 (= (dynLambda!24338 lambda!283154 lt!2208533) (derivationStepZipperUp!569 lt!2208533 (h!68214 s!2326)))))

(assert (=> bs!1251380 m!6439426))

(assert (=> d!1728152 d!1728420))

(declare-fun b_lambda!206825 () Bool)

(assert (= b_lambda!206799 (or b!5415480 b_lambda!206825)))

(declare-fun bs!1251381 () Bool)

(declare-fun d!1728422 () Bool)

(assert (= bs!1251381 (and d!1728422 b!5415480)))

(assert (=> bs!1251381 (= (dynLambda!24338 lambda!283154 lt!2208566) (derivationStepZipperUp!569 lt!2208566 (h!68214 s!2326)))))

(assert (=> bs!1251381 m!6439408))

(assert (=> d!1728142 d!1728422))

(declare-fun b_lambda!206827 () Bool)

(assert (= b_lambda!206817 (or b!5415469 b_lambda!206827)))

(declare-fun bs!1251382 () Bool)

(declare-fun d!1728424 () Bool)

(assert (= bs!1251382 (and d!1728424 b!5415469)))

(declare-fun lt!2208798 () Unit!154310)

(assert (=> bs!1251382 (= lt!2208798 (lemmaConcatPreservesForall!222 (exprs!5081 lt!2208526) lt!2208567 lambda!283156))))

(assert (=> bs!1251382 (= (dynLambda!24340 lambda!283155 lt!2208526) (Context!9163 (++!13567 (exprs!5081 lt!2208526) lt!2208567)))))

(declare-fun m!6440700 () Bool)

(assert (=> bs!1251382 m!6440700))

(declare-fun m!6440702 () Bool)

(assert (=> bs!1251382 m!6440702))

(assert (=> d!1728408 d!1728424))

(check-sat (not b!5416648) (not d!1728412) (not bm!387569) (not d!1728194) (not b!5416667) (not b!5416294) (not d!1728302) (not d!1728314) (not b!5415850) (not b!5416609) (not b!5416170) (not d!1728130) (not b_lambda!206825) (not d!1728338) (not d!1728146) (not bm!387645) (not b!5416145) (not b!5416018) (not b!5416488) (not b!5416428) (not d!1728218) (not b_lambda!206819) (not d!1728208) (not d!1728406) (not b!5415817) (not b!5415840) (not b!5415747) (not d!1728260) (not bm!387610) (not d!1728048) (not b!5415949) (not b!5416017) (not b!5415836) (not b!5416678) (not b!5415750) (not b!5416050) (not b!5416165) (not b!5416697) (not b!5416614) (not b!5416669) (not b!5416490) (not b!5415811) (not b!5415986) (not bm!387611) (not b!5416019) (not b!5416619) (not bm!387639) (not bm!387615) (not d!1728332) (not b!5415846) (not d!1728052) (not d!1728192) (not d!1728266) (not d!1728248) (not d!1728358) (not b!5416297) (not b!5415899) (not d!1728328) (not b!5416009) (not b!5416610) (not b!5416500) (not d!1728140) (not b!5416206) (not bm!387649) (not bm!387619) (not b!5416171) (not b!5416700) (not d!1728396) (not b!5416231) (not b!5416175) (not d!1728212) (not b!5416701) (not b!5416608) (not d!1728196) (not b!5416314) (not b!5416676) (not b!5416166) (not d!1728368) (not b!5416196) (not d!1728206) (not bm!387564) (not b!5415841) (not d!1728410) (not b!5416696) (not b!5416574) (not d!1728142) (not d!1728186) (not b!5416180) (not b!5416227) (not b!5416375) (not d!1728178) (not b!5416199) (not b!5416310) (not b!5416160) (not d!1728374) (not b!5416412) (not d!1728330) (not d!1728404) (not b!5416293) (not d!1728068) (not b!5415948) (not b!5416505) (not b!5416679) (not bm!387646) (not b!5416613) (not bm!387563) (not b!5415983) (not b!5416380) (not d!1728050) (not b!5416224) (not b!5416301) (not d!1728370) (not b!5416483) (not bm!387643) (not b!5416495) (not d!1728238) (not b!5416571) (not b!5416307) (not d!1728040) (not d!1728110) (not b!5416371) (not b!5415979) (not b!5416698) (not b!5416152) (not bm!387642) (not b!5415748) (not b!5416163) (not b!5416468) (not d!1728226) (not d!1728232) (not d!1728308) (not b!5416155) (not bm!387633) (not b!5416665) (not d!1728392) (not b!5416680) (not b!5416653) (not b!5416476) (not b!5416427) (not b!5416147) (not bs!1251382) (not bs!1251381) (not b!5416226) (not b!5416473) (not b!5416203) (not d!1728394) (not b!5416234) (not bm!387648) (not b!5416376) (not d!1728234) (not b!5416521) (not b!5416161) (not bm!387567) (not d!1728244) (not b!5415987) (not b!5416477) (not bm!387647) (not d!1728148) (not b!5416010) (not bs!1251380) (not bm!387620) (not bm!387583) (not b!5416467) (not b!5416208) (not b!5416236) (not b!5416649) (not b!5415752) (not b!5416504) (not d!1728204) (not b!5416251) (not b_lambda!206823) (not d!1728034) tp_is_empty!39647 (not d!1728256) (not b!5416167) (not bm!387659) (not b!5416012) (not d!1728216) (not b!5416670) (not b!5416474) (not d!1728154) (not b_lambda!206821) (not d!1728214) (not b!5415984) (not d!1728086) (not b!5416198) (not bm!387637) (not d!1728402) (not d!1728152) (not b!5416178) (not b!5416015) (not d!1728242) (not b!5416652) (not b!5416312) (not bm!387621) (not d!1728168) (not b!5416578) (not b!5416666) (not bm!387613) (not d!1728224) (not bm!387658) (not b!5416581) (not b!5416396) (not b!5416685) (not bm!387586) (not bs!1251378) (not d!1728176) (not b!5416475) (not d!1728134) (not b!5416611) (not b!5416148) (not b!5415981) (not d!1728210) (not b!5416168) (not b!5416573) (not b!5416491) (not b!5416409) (not b!5416607) (not bm!387634) (not b!5416062) (not b!5416408) (not b!5416300) (not b!5416644) (not b!5416693) (not bm!387650) (not d!1728408) (not b!5416694) (not b!5416049) (not b!5416583) (not d!1728162) (not b!5416671) (not b!5416465) (not d!1728322) (not d!1728286) (not b!5416013) (not b!5416392) (not bs!1251379) (not bm!387568) (not b!5416707) (not b!5416692) (not b!5416061) (not b!5416702) (not b!5416472) (not setNonEmpty!35291) (not b!5416157) (not b!5416503) (not b!5416515) (not d!1728070) (not d!1728390) (not b!5415754) (not d!1728164) (not b!5415753) (not d!1728372) (not b_lambda!206827) (not b!5416498) (not d!1728278) (not b!5416320) (not d!1728366) (not d!1728360) (not b!5416407) (not b!5416051) (not bm!387587) (not d!1728336) (not d!1728304) (not b!5415845) (not d!1728132) (not b!5416502) (not d!1728414) (not b!5416471))
(check-sat)
