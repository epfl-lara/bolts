; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!591580 () Bool)

(assert start!591580)

(declare-fun b!5756551 () Bool)

(assert (=> b!5756551 true))

(assert (=> b!5756551 true))

(declare-fun lambda!312538 () Int)

(declare-fun lambda!312537 () Int)

(assert (=> b!5756551 (not (= lambda!312538 lambda!312537))))

(assert (=> b!5756551 true))

(assert (=> b!5756551 true))

(declare-fun b!5756544 () Bool)

(assert (=> b!5756544 true))

(declare-fun b!5756532 () Bool)

(declare-fun e!3537557 () Bool)

(declare-fun tp!1590607 () Bool)

(assert (=> b!5756532 (= e!3537557 tp!1590607)))

(declare-fun b!5756533 () Bool)

(declare-fun res!2430214 () Bool)

(declare-fun e!3537560 () Bool)

(assert (=> b!5756533 (=> res!2430214 e!3537560)))

(declare-datatypes ((C!31804 0))(
  ( (C!31805 (val!25604 Int)) )
))
(declare-datatypes ((Regex!15767 0))(
  ( (ElementMatch!15767 (c!1017267 C!31804)) (Concat!24612 (regOne!32046 Regex!15767) (regTwo!32046 Regex!15767)) (EmptyExpr!15767) (Star!15767 (reg!16096 Regex!15767)) (EmptyLang!15767) (Union!15767 (regOne!32047 Regex!15767) (regTwo!32047 Regex!15767)) )
))
(declare-datatypes ((List!63600 0))(
  ( (Nil!63476) (Cons!63476 (h!69924 Regex!15767) (t!376932 List!63600)) )
))
(declare-datatypes ((Context!10302 0))(
  ( (Context!10303 (exprs!5651 List!63600)) )
))
(declare-datatypes ((List!63601 0))(
  ( (Nil!63477) (Cons!63477 (h!69925 Context!10302) (t!376933 List!63601)) )
))
(declare-fun zl!343 () List!63601)

(declare-fun isEmpty!35365 (List!63600) Bool)

(assert (=> b!5756533 (= res!2430214 (isEmpty!35365 (t!376932 (exprs!5651 (h!69925 zl!343)))))))

(declare-fun b!5756534 () Bool)

(declare-fun e!3537555 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2288280 () (InoxSet Context!10302))

(declare-fun r!7292 () Regex!15767)

(assert (=> b!5756534 (= e!3537555 (or (not (= lt!2288280 ((as const (Array Context!10302 Bool)) false))) (= r!7292 (Concat!24612 (regOne!32046 r!7292) (regTwo!32046 r!7292)))))))

(declare-datatypes ((List!63602 0))(
  ( (Nil!63478) (Cons!63478 (h!69926 C!31804) (t!376934 List!63602)) )
))
(declare-fun s!2326 () List!63602)

(declare-fun matchZipper!1905 ((InoxSet Context!10302) List!63602) Bool)

(assert (=> b!5756534 (not (matchZipper!1905 lt!2288280 (t!376934 s!2326)))))

(declare-datatypes ((Unit!156600 0))(
  ( (Unit!156601) )
))
(declare-fun lt!2288278 () Unit!156600)

(declare-fun lemmaEmptyZipperMatchesNothing!52 ((InoxSet Context!10302) List!63602) Unit!156600)

(assert (=> b!5756534 (= lt!2288278 (lemmaEmptyZipperMatchesNothing!52 lt!2288280 (t!376934 s!2326)))))

(declare-fun b!5756535 () Bool)

(declare-fun res!2430202 () Bool)

(declare-fun e!3537553 () Bool)

(assert (=> b!5756535 (=> res!2430202 e!3537553)))

(get-info :version)

(assert (=> b!5756535 (= res!2430202 (or ((_ is EmptyExpr!15767) r!7292) ((_ is EmptyLang!15767) r!7292) ((_ is ElementMatch!15767) r!7292) ((_ is Union!15767) r!7292) (not ((_ is Concat!24612) r!7292))))))

(declare-fun b!5756536 () Bool)

(declare-fun e!3537556 () Bool)

(assert (=> b!5756536 (= e!3537556 (not e!3537553))))

(declare-fun res!2430210 () Bool)

(assert (=> b!5756536 (=> res!2430210 e!3537553)))

(assert (=> b!5756536 (= res!2430210 (not ((_ is Cons!63477) zl!343)))))

(declare-fun lt!2288285 () Bool)

(declare-fun matchRSpec!2870 (Regex!15767 List!63602) Bool)

(assert (=> b!5756536 (= lt!2288285 (matchRSpec!2870 r!7292 s!2326))))

(declare-fun matchR!7952 (Regex!15767 List!63602) Bool)

(assert (=> b!5756536 (= lt!2288285 (matchR!7952 r!7292 s!2326))))

(declare-fun lt!2288275 () Unit!156600)

(declare-fun mainMatchTheorem!2870 (Regex!15767 List!63602) Unit!156600)

(assert (=> b!5756536 (= lt!2288275 (mainMatchTheorem!2870 r!7292 s!2326))))

(declare-fun setIsEmpty!38659 () Bool)

(declare-fun setRes!38659 () Bool)

(assert (=> setIsEmpty!38659 setRes!38659))

(declare-fun b!5756537 () Bool)

(declare-fun res!2430215 () Bool)

(assert (=> b!5756537 (=> res!2430215 e!3537553)))

(declare-fun isEmpty!35366 (List!63601) Bool)

(assert (=> b!5756537 (= res!2430215 (not (isEmpty!35366 (t!376933 zl!343))))))

(declare-fun b!5756538 () Bool)

(declare-fun e!3537559 () Bool)

(declare-fun tp_is_empty!40787 () Bool)

(assert (=> b!5756538 (= e!3537559 tp_is_empty!40787)))

(declare-fun b!5756539 () Bool)

(declare-fun res!2430205 () Bool)

(assert (=> b!5756539 (=> res!2430205 e!3537555)))

(assert (=> b!5756539 (= res!2430205 (or ((_ is Concat!24612) (regOne!32046 r!7292)) ((_ is Star!15767) (regOne!32046 r!7292)) (not ((_ is EmptyExpr!15767) (regOne!32046 r!7292)))))))

(declare-fun b!5756540 () Bool)

(declare-fun res!2430211 () Bool)

(assert (=> b!5756540 (=> (not res!2430211) (not e!3537556))))

(declare-fun unfocusZipper!1509 (List!63601) Regex!15767)

(assert (=> b!5756540 (= res!2430211 (= r!7292 (unfocusZipper!1509 zl!343)))))

(declare-fun b!5756541 () Bool)

(declare-fun res!2430213 () Bool)

(assert (=> b!5756541 (=> res!2430213 e!3537555)))

(declare-fun e!3537551 () Bool)

(assert (=> b!5756541 (= res!2430213 e!3537551)))

(declare-fun res!2430206 () Bool)

(assert (=> b!5756541 (=> (not res!2430206) (not e!3537551))))

(assert (=> b!5756541 (= res!2430206 ((_ is Concat!24612) (regOne!32046 r!7292)))))

(declare-fun b!5756542 () Bool)

(declare-fun e!3537558 () Unit!156600)

(declare-fun Unit!156602 () Unit!156600)

(assert (=> b!5756542 (= e!3537558 Unit!156602)))

(declare-fun b!5756543 () Bool)

(declare-fun res!2430212 () Bool)

(assert (=> b!5756543 (=> res!2430212 e!3537553)))

(declare-fun generalisedConcat!1382 (List!63600) Regex!15767)

(assert (=> b!5756543 (= res!2430212 (not (= r!7292 (generalisedConcat!1382 (exprs!5651 (h!69925 zl!343))))))))

(assert (=> b!5756544 (= e!3537560 e!3537555)))

(declare-fun res!2430216 () Bool)

(assert (=> b!5756544 (=> res!2430216 e!3537555)))

(assert (=> b!5756544 (= res!2430216 (or (and ((_ is ElementMatch!15767) (regOne!32046 r!7292)) (= (c!1017267 (regOne!32046 r!7292)) (h!69926 s!2326))) ((_ is Union!15767) (regOne!32046 r!7292))))))

(declare-fun lt!2288282 () Unit!156600)

(assert (=> b!5756544 (= lt!2288282 e!3537558)))

(declare-fun c!1017266 () Bool)

(declare-fun nullable!5799 (Regex!15767) Bool)

(assert (=> b!5756544 (= c!1017266 (nullable!5799 (h!69924 (exprs!5651 (h!69925 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10302))

(declare-fun lambda!312539 () Int)

(declare-fun flatMap!1380 ((InoxSet Context!10302) Int) (InoxSet Context!10302))

(declare-fun derivationStepZipperUp!1035 (Context!10302 C!31804) (InoxSet Context!10302))

(assert (=> b!5756544 (= (flatMap!1380 z!1189 lambda!312539) (derivationStepZipperUp!1035 (h!69925 zl!343) (h!69926 s!2326)))))

(declare-fun lt!2288284 () Unit!156600)

(declare-fun lemmaFlatMapOnSingletonSet!912 ((InoxSet Context!10302) Context!10302 Int) Unit!156600)

(assert (=> b!5756544 (= lt!2288284 (lemmaFlatMapOnSingletonSet!912 z!1189 (h!69925 zl!343) lambda!312539))))

(declare-fun lt!2288283 () (InoxSet Context!10302))

(declare-fun lt!2288281 () Context!10302)

(assert (=> b!5756544 (= lt!2288283 (derivationStepZipperUp!1035 lt!2288281 (h!69926 s!2326)))))

(declare-fun derivationStepZipperDown!1109 (Regex!15767 Context!10302 C!31804) (InoxSet Context!10302))

(assert (=> b!5756544 (= lt!2288280 (derivationStepZipperDown!1109 (h!69924 (exprs!5651 (h!69925 zl!343))) lt!2288281 (h!69926 s!2326)))))

(assert (=> b!5756544 (= lt!2288281 (Context!10303 (t!376932 (exprs!5651 (h!69925 zl!343)))))))

(declare-fun lt!2288279 () (InoxSet Context!10302))

(assert (=> b!5756544 (= lt!2288279 (derivationStepZipperUp!1035 (Context!10303 (Cons!63476 (h!69924 (exprs!5651 (h!69925 zl!343))) (t!376932 (exprs!5651 (h!69925 zl!343))))) (h!69926 s!2326)))))

(declare-fun b!5756545 () Bool)

(declare-fun res!2430203 () Bool)

(assert (=> b!5756545 (=> (not res!2430203) (not e!3537556))))

(declare-fun toList!9551 ((InoxSet Context!10302)) List!63601)

(assert (=> b!5756545 (= res!2430203 (= (toList!9551 z!1189) zl!343))))

(declare-fun b!5756546 () Bool)

(declare-fun res!2430209 () Bool)

(assert (=> b!5756546 (=> res!2430209 e!3537553)))

(assert (=> b!5756546 (= res!2430209 (not ((_ is Cons!63476) (exprs!5651 (h!69925 zl!343)))))))

(declare-fun b!5756547 () Bool)

(declare-fun tp!1590610 () Bool)

(declare-fun tp!1590608 () Bool)

(assert (=> b!5756547 (= e!3537559 (and tp!1590610 tp!1590608))))

(declare-fun b!5756548 () Bool)

(declare-fun e!3537552 () Bool)

(assert (=> b!5756548 (= e!3537552 (matchZipper!1905 lt!2288283 (t!376934 s!2326)))))

(declare-fun b!5756549 () Bool)

(declare-fun Unit!156603 () Unit!156600)

(assert (=> b!5756549 (= e!3537558 Unit!156603)))

(declare-fun lt!2288277 () Unit!156600)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!792 ((InoxSet Context!10302) (InoxSet Context!10302) List!63602) Unit!156600)

(assert (=> b!5756549 (= lt!2288277 (lemmaZipperConcatMatchesSameAsBothZippers!792 lt!2288280 lt!2288283 (t!376934 s!2326)))))

(declare-fun res!2430208 () Bool)

(assert (=> b!5756549 (= res!2430208 (matchZipper!1905 lt!2288280 (t!376934 s!2326)))))

(assert (=> b!5756549 (=> res!2430208 e!3537552)))

(assert (=> b!5756549 (= (matchZipper!1905 ((_ map or) lt!2288280 lt!2288283) (t!376934 s!2326)) e!3537552)))

(declare-fun b!5756550 () Bool)

(declare-fun res!2430207 () Bool)

(assert (=> b!5756550 (=> res!2430207 e!3537553)))

(declare-fun generalisedUnion!1630 (List!63600) Regex!15767)

(declare-fun unfocusZipperList!1195 (List!63601) List!63600)

(assert (=> b!5756550 (= res!2430207 (not (= r!7292 (generalisedUnion!1630 (unfocusZipperList!1195 zl!343)))))))

(assert (=> b!5756551 (= e!3537553 e!3537560)))

(declare-fun res!2430204 () Bool)

(assert (=> b!5756551 (=> res!2430204 e!3537560)))

(declare-fun lt!2288276 () Bool)

(assert (=> b!5756551 (= res!2430204 (or (not (= lt!2288285 lt!2288276)) ((_ is Nil!63478) s!2326)))))

(declare-fun Exists!2867 (Int) Bool)

(assert (=> b!5756551 (= (Exists!2867 lambda!312537) (Exists!2867 lambda!312538))))

(declare-fun lt!2288274 () Unit!156600)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1496 (Regex!15767 Regex!15767 List!63602) Unit!156600)

(assert (=> b!5756551 (= lt!2288274 (lemmaExistCutMatchRandMatchRSpecEquivalent!1496 (regOne!32046 r!7292) (regTwo!32046 r!7292) s!2326))))

(assert (=> b!5756551 (= lt!2288276 (Exists!2867 lambda!312537))))

(declare-datatypes ((tuple2!65728 0))(
  ( (tuple2!65729 (_1!36167 List!63602) (_2!36167 List!63602)) )
))
(declare-datatypes ((Option!15776 0))(
  ( (None!15775) (Some!15775 (v!51832 tuple2!65728)) )
))
(declare-fun isDefined!12479 (Option!15776) Bool)

(declare-fun findConcatSeparation!2190 (Regex!15767 Regex!15767 List!63602 List!63602 List!63602) Option!15776)

(assert (=> b!5756551 (= lt!2288276 (isDefined!12479 (findConcatSeparation!2190 (regOne!32046 r!7292) (regTwo!32046 r!7292) Nil!63478 s!2326 s!2326)))))

(declare-fun lt!2288286 () Unit!156600)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1954 (Regex!15767 Regex!15767 List!63602) Unit!156600)

(assert (=> b!5756551 (= lt!2288286 (lemmaFindConcatSeparationEquivalentToExists!1954 (regOne!32046 r!7292) (regTwo!32046 r!7292) s!2326))))

(declare-fun b!5756552 () Bool)

(declare-fun tp!1590605 () Bool)

(assert (=> b!5756552 (= e!3537559 tp!1590605)))

(declare-fun b!5756553 () Bool)

(declare-fun tp!1590611 () Bool)

(declare-fun e!3537554 () Bool)

(declare-fun e!3537562 () Bool)

(declare-fun inv!82664 (Context!10302) Bool)

(assert (=> b!5756553 (= e!3537554 (and (inv!82664 (h!69925 zl!343)) e!3537562 tp!1590611))))

(declare-fun b!5756554 () Bool)

(declare-fun e!3537561 () Bool)

(declare-fun tp!1590612 () Bool)

(assert (=> b!5756554 (= e!3537561 (and tp_is_empty!40787 tp!1590612))))

(declare-fun b!5756555 () Bool)

(declare-fun tp!1590606 () Bool)

(assert (=> b!5756555 (= e!3537562 tp!1590606)))

(declare-fun res!2430217 () Bool)

(assert (=> start!591580 (=> (not res!2430217) (not e!3537556))))

(declare-fun validRegex!7503 (Regex!15767) Bool)

(assert (=> start!591580 (= res!2430217 (validRegex!7503 r!7292))))

(assert (=> start!591580 e!3537556))

(assert (=> start!591580 e!3537559))

(declare-fun condSetEmpty!38659 () Bool)

(assert (=> start!591580 (= condSetEmpty!38659 (= z!1189 ((as const (Array Context!10302 Bool)) false)))))

(assert (=> start!591580 setRes!38659))

(assert (=> start!591580 e!3537554))

(assert (=> start!591580 e!3537561))

(declare-fun setNonEmpty!38659 () Bool)

(declare-fun setElem!38659 () Context!10302)

(declare-fun tp!1590609 () Bool)

(assert (=> setNonEmpty!38659 (= setRes!38659 (and tp!1590609 (inv!82664 setElem!38659) e!3537557))))

(declare-fun setRest!38659 () (InoxSet Context!10302))

(assert (=> setNonEmpty!38659 (= z!1189 ((_ map or) (store ((as const (Array Context!10302 Bool)) false) setElem!38659 true) setRest!38659))))

(declare-fun b!5756556 () Bool)

(assert (=> b!5756556 (= e!3537551 (nullable!5799 (regOne!32046 (regOne!32046 r!7292))))))

(declare-fun b!5756557 () Bool)

(declare-fun tp!1590614 () Bool)

(declare-fun tp!1590613 () Bool)

(assert (=> b!5756557 (= e!3537559 (and tp!1590614 tp!1590613))))

(assert (= (and start!591580 res!2430217) b!5756545))

(assert (= (and b!5756545 res!2430203) b!5756540))

(assert (= (and b!5756540 res!2430211) b!5756536))

(assert (= (and b!5756536 (not res!2430210)) b!5756537))

(assert (= (and b!5756537 (not res!2430215)) b!5756543))

(assert (= (and b!5756543 (not res!2430212)) b!5756546))

(assert (= (and b!5756546 (not res!2430209)) b!5756550))

(assert (= (and b!5756550 (not res!2430207)) b!5756535))

(assert (= (and b!5756535 (not res!2430202)) b!5756551))

(assert (= (and b!5756551 (not res!2430204)) b!5756533))

(assert (= (and b!5756533 (not res!2430214)) b!5756544))

(assert (= (and b!5756544 c!1017266) b!5756549))

(assert (= (and b!5756544 (not c!1017266)) b!5756542))

(assert (= (and b!5756549 (not res!2430208)) b!5756548))

(assert (= (and b!5756544 (not res!2430216)) b!5756541))

(assert (= (and b!5756541 res!2430206) b!5756556))

(assert (= (and b!5756541 (not res!2430213)) b!5756539))

(assert (= (and b!5756539 (not res!2430205)) b!5756534))

(assert (= (and start!591580 ((_ is ElementMatch!15767) r!7292)) b!5756538))

(assert (= (and start!591580 ((_ is Concat!24612) r!7292)) b!5756547))

(assert (= (and start!591580 ((_ is Star!15767) r!7292)) b!5756552))

(assert (= (and start!591580 ((_ is Union!15767) r!7292)) b!5756557))

(assert (= (and start!591580 condSetEmpty!38659) setIsEmpty!38659))

(assert (= (and start!591580 (not condSetEmpty!38659)) setNonEmpty!38659))

(assert (= setNonEmpty!38659 b!5756532))

(assert (= b!5756553 b!5756555))

(assert (= (and start!591580 ((_ is Cons!63477) zl!343)) b!5756553))

(assert (= (and start!591580 ((_ is Cons!63478) s!2326)) b!5756554))

(declare-fun m!6705458 () Bool)

(assert (=> b!5756556 m!6705458))

(declare-fun m!6705460 () Bool)

(assert (=> b!5756548 m!6705460))

(declare-fun m!6705462 () Bool)

(assert (=> b!5756534 m!6705462))

(declare-fun m!6705464 () Bool)

(assert (=> b!5756534 m!6705464))

(declare-fun m!6705466 () Bool)

(assert (=> start!591580 m!6705466))

(declare-fun m!6705468 () Bool)

(assert (=> setNonEmpty!38659 m!6705468))

(declare-fun m!6705470 () Bool)

(assert (=> b!5756551 m!6705470))

(declare-fun m!6705472 () Bool)

(assert (=> b!5756551 m!6705472))

(declare-fun m!6705474 () Bool)

(assert (=> b!5756551 m!6705474))

(declare-fun m!6705476 () Bool)

(assert (=> b!5756551 m!6705476))

(assert (=> b!5756551 m!6705474))

(declare-fun m!6705478 () Bool)

(assert (=> b!5756551 m!6705478))

(assert (=> b!5756551 m!6705470))

(declare-fun m!6705480 () Bool)

(assert (=> b!5756551 m!6705480))

(declare-fun m!6705482 () Bool)

(assert (=> b!5756537 m!6705482))

(declare-fun m!6705484 () Bool)

(assert (=> b!5756549 m!6705484))

(assert (=> b!5756549 m!6705462))

(declare-fun m!6705486 () Bool)

(assert (=> b!5756549 m!6705486))

(declare-fun m!6705488 () Bool)

(assert (=> b!5756544 m!6705488))

(declare-fun m!6705490 () Bool)

(assert (=> b!5756544 m!6705490))

(declare-fun m!6705492 () Bool)

(assert (=> b!5756544 m!6705492))

(declare-fun m!6705494 () Bool)

(assert (=> b!5756544 m!6705494))

(declare-fun m!6705496 () Bool)

(assert (=> b!5756544 m!6705496))

(declare-fun m!6705498 () Bool)

(assert (=> b!5756544 m!6705498))

(declare-fun m!6705500 () Bool)

(assert (=> b!5756544 m!6705500))

(declare-fun m!6705502 () Bool)

(assert (=> b!5756545 m!6705502))

(declare-fun m!6705504 () Bool)

(assert (=> b!5756540 m!6705504))

(declare-fun m!6705506 () Bool)

(assert (=> b!5756543 m!6705506))

(declare-fun m!6705508 () Bool)

(assert (=> b!5756553 m!6705508))

(declare-fun m!6705510 () Bool)

(assert (=> b!5756536 m!6705510))

(declare-fun m!6705512 () Bool)

(assert (=> b!5756536 m!6705512))

(declare-fun m!6705514 () Bool)

(assert (=> b!5756536 m!6705514))

(declare-fun m!6705516 () Bool)

(assert (=> b!5756550 m!6705516))

(assert (=> b!5756550 m!6705516))

(declare-fun m!6705518 () Bool)

(assert (=> b!5756550 m!6705518))

(declare-fun m!6705520 () Bool)

(assert (=> b!5756533 m!6705520))

(check-sat (not setNonEmpty!38659) (not b!5756545) (not b!5756533) (not b!5756534) (not b!5756554) (not b!5756548) (not b!5756557) (not b!5756555) (not b!5756547) (not b!5756544) (not b!5756551) (not b!5756549) (not b!5756553) tp_is_empty!40787 (not b!5756540) (not start!591580) (not b!5756543) (not b!5756550) (not b!5756532) (not b!5756537) (not b!5756536) (not b!5756556) (not b!5756552))
(check-sat)
