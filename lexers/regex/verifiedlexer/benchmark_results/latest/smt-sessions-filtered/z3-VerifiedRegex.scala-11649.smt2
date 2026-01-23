; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!651400 () Bool)

(assert start!651400)

(declare-fun b!6716464 () Bool)

(assert (=> b!6716464 true))

(assert (=> b!6716464 true))

(declare-fun lambda!376682 () Int)

(declare-fun lambda!376681 () Int)

(assert (=> b!6716464 (not (= lambda!376682 lambda!376681))))

(assert (=> b!6716464 true))

(assert (=> b!6716464 true))

(declare-fun lambda!376683 () Int)

(assert (=> b!6716464 (not (= lambda!376683 lambda!376681))))

(assert (=> b!6716464 (not (= lambda!376683 lambda!376682))))

(assert (=> b!6716464 true))

(assert (=> b!6716464 true))

(declare-fun b!6716462 () Bool)

(declare-fun e!4058731 () Bool)

(declare-fun tp!1840753 () Bool)

(assert (=> b!6716462 (= e!4058731 tp!1840753)))

(declare-fun b!6716463 () Bool)

(declare-fun res!2748676 () Bool)

(declare-fun e!4058730 () Bool)

(assert (=> b!6716463 (=> res!2748676 e!4058730)))

(declare-datatypes ((C!33360 0))(
  ( (C!33361 (val!26382 Int)) )
))
(declare-datatypes ((Regex!16545 0))(
  ( (ElementMatch!16545 (c!1245233 C!33360)) (Concat!25390 (regOne!33602 Regex!16545) (regTwo!33602 Regex!16545)) (EmptyExpr!16545) (Star!16545 (reg!16874 Regex!16545)) (EmptyLang!16545) (Union!16545 (regOne!33603 Regex!16545) (regTwo!33603 Regex!16545)) )
))
(declare-datatypes ((List!65934 0))(
  ( (Nil!65810) (Cons!65810 (h!72258 Regex!16545) (t!379611 List!65934)) )
))
(declare-datatypes ((Context!11858 0))(
  ( (Context!11859 (exprs!6429 List!65934)) )
))
(declare-datatypes ((List!65935 0))(
  ( (Nil!65811) (Cons!65811 (h!72259 Context!11858) (t!379612 List!65935)) )
))
(declare-fun zl!343 () List!65935)

(get-info :version)

(assert (=> b!6716463 (= res!2748676 (not ((_ is Cons!65810) (exprs!6429 (h!72259 zl!343)))))))

(declare-fun e!4058729 () Bool)

(assert (=> b!6716464 (= e!4058730 e!4058729)))

(declare-fun res!2748670 () Bool)

(assert (=> b!6716464 (=> res!2748670 e!4058729)))

(declare-fun lt!2436386 () Bool)

(declare-fun e!4058733 () Bool)

(assert (=> b!6716464 (= res!2748670 (not (= lt!2436386 e!4058733)))))

(declare-fun res!2748677 () Bool)

(assert (=> b!6716464 (=> res!2748677 e!4058733)))

(declare-datatypes ((List!65936 0))(
  ( (Nil!65812) (Cons!65812 (h!72260 C!33360) (t!379613 List!65936)) )
))
(declare-fun s!2326 () List!65936)

(declare-fun isEmpty!38129 (List!65936) Bool)

(assert (=> b!6716464 (= res!2748677 (isEmpty!38129 s!2326))))

(declare-fun Exists!3613 (Int) Bool)

(assert (=> b!6716464 (= (Exists!3613 lambda!376681) (Exists!3613 lambda!376683))))

(declare-datatypes ((Unit!159781 0))(
  ( (Unit!159782) )
))
(declare-fun lt!2436380 () Unit!159781)

(declare-fun r!7292 () Regex!16545)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2140 (Regex!16545 Regex!16545 List!65936) Unit!159781)

(assert (=> b!6716464 (= lt!2436380 (lemmaExistCutMatchRandMatchRSpecEquivalent!2140 (reg!16874 r!7292) r!7292 s!2326))))

(assert (=> b!6716464 (= (Exists!3613 lambda!376681) (Exists!3613 lambda!376682))))

(declare-fun lt!2436384 () Unit!159781)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!704 (Regex!16545 List!65936) Unit!159781)

(assert (=> b!6716464 (= lt!2436384 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!704 (reg!16874 r!7292) s!2326))))

(declare-fun lt!2436381 () Bool)

(assert (=> b!6716464 (= lt!2436381 (Exists!3613 lambda!376681))))

(declare-datatypes ((tuple2!67040 0))(
  ( (tuple2!67041 (_1!36823 List!65936) (_2!36823 List!65936)) )
))
(declare-datatypes ((Option!16432 0))(
  ( (None!16431) (Some!16431 (v!52629 tuple2!67040)) )
))
(declare-fun isDefined!13135 (Option!16432) Bool)

(declare-fun findConcatSeparation!2846 (Regex!16545 Regex!16545 List!65936 List!65936 List!65936) Option!16432)

(assert (=> b!6716464 (= lt!2436381 (isDefined!13135 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326)))))

(declare-fun lt!2436383 () Unit!159781)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2610 (Regex!16545 Regex!16545 List!65936) Unit!159781)

(assert (=> b!6716464 (= lt!2436383 (lemmaFindConcatSeparationEquivalentToExists!2610 (reg!16874 r!7292) r!7292 s!2326))))

(declare-fun b!6716465 () Bool)

(declare-fun res!2748672 () Bool)

(assert (=> b!6716465 (=> res!2748672 e!4058730)))

(declare-fun isEmpty!38130 (List!65935) Bool)

(assert (=> b!6716465 (= res!2748672 (not (isEmpty!38130 (t!379612 zl!343))))))

(declare-fun b!6716466 () Bool)

(declare-fun res!2748669 () Bool)

(declare-fun e!4058735 () Bool)

(assert (=> b!6716466 (=> (not res!2748669) (not e!4058735))))

(declare-fun unfocusZipper!2287 (List!65935) Regex!16545)

(assert (=> b!6716466 (= res!2748669 (= r!7292 (unfocusZipper!2287 zl!343)))))

(declare-fun b!6716467 () Bool)

(declare-fun tp_is_empty!42343 () Bool)

(assert (=> b!6716467 (= e!4058731 tp_is_empty!42343)))

(declare-fun b!6716468 () Bool)

(declare-fun e!4058728 () Bool)

(declare-fun tp!1840757 () Bool)

(assert (=> b!6716468 (= e!4058728 (and tp_is_empty!42343 tp!1840757))))

(declare-fun b!6716469 () Bool)

(declare-fun res!2748675 () Bool)

(assert (=> b!6716469 (=> res!2748675 e!4058730)))

(declare-fun generalisedConcat!2142 (List!65934) Regex!16545)

(assert (=> b!6716469 (= res!2748675 (not (= r!7292 (generalisedConcat!2142 (exprs!6429 (h!72259 zl!343))))))))

(declare-fun b!6716470 () Bool)

(declare-fun tp!1840756 () Bool)

(declare-fun tp!1840754 () Bool)

(assert (=> b!6716470 (= e!4058731 (and tp!1840756 tp!1840754))))

(declare-fun b!6716471 () Bool)

(declare-fun res!2748671 () Bool)

(assert (=> b!6716471 (=> res!2748671 e!4058730)))

(assert (=> b!6716471 (= res!2748671 (or ((_ is EmptyExpr!16545) r!7292) ((_ is EmptyLang!16545) r!7292) ((_ is ElementMatch!16545) r!7292) ((_ is Union!16545) r!7292) ((_ is Concat!25390) r!7292)))))

(declare-fun b!6716472 () Bool)

(assert (=> b!6716472 (= e!4058735 (not e!4058730))))

(declare-fun res!2748668 () Bool)

(assert (=> b!6716472 (=> res!2748668 e!4058730)))

(assert (=> b!6716472 (= res!2748668 (not ((_ is Cons!65811) zl!343)))))

(declare-fun matchRSpec!3646 (Regex!16545 List!65936) Bool)

(assert (=> b!6716472 (= lt!2436386 (matchRSpec!3646 r!7292 s!2326))))

(declare-fun matchR!8728 (Regex!16545 List!65936) Bool)

(assert (=> b!6716472 (= lt!2436386 (matchR!8728 r!7292 s!2326))))

(declare-fun lt!2436382 () Unit!159781)

(declare-fun mainMatchTheorem!3646 (Regex!16545 List!65936) Unit!159781)

(assert (=> b!6716472 (= lt!2436382 (mainMatchTheorem!3646 r!7292 s!2326))))

(declare-fun e!4058736 () Bool)

(declare-fun e!4058734 () Bool)

(declare-fun b!6716473 () Bool)

(declare-fun tp!1840758 () Bool)

(declare-fun inv!84609 (Context!11858) Bool)

(assert (=> b!6716473 (= e!4058734 (and (inv!84609 (h!72259 zl!343)) e!4058736 tp!1840758))))

(declare-fun b!6716474 () Bool)

(declare-fun tp!1840760 () Bool)

(declare-fun tp!1840752 () Bool)

(assert (=> b!6716474 (= e!4058731 (and tp!1840760 tp!1840752))))

(declare-fun setRes!45785 () Bool)

(declare-fun setNonEmpty!45785 () Bool)

(declare-fun setElem!45785 () Context!11858)

(declare-fun tp!1840759 () Bool)

(declare-fun e!4058732 () Bool)

(assert (=> setNonEmpty!45785 (= setRes!45785 (and tp!1840759 (inv!84609 setElem!45785) e!4058732))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11858))

(declare-fun setRest!45785 () (InoxSet Context!11858))

(assert (=> setNonEmpty!45785 (= z!1189 ((_ map or) (store ((as const (Array Context!11858 Bool)) false) setElem!45785 true) setRest!45785))))

(declare-fun b!6716475 () Bool)

(declare-fun res!2748674 () Bool)

(assert (=> b!6716475 (=> res!2748674 e!4058729)))

(assert (=> b!6716475 (= res!2748674 ((_ is Nil!65812) s!2326))))

(declare-fun b!6716476 () Bool)

(assert (=> b!6716476 (= e!4058733 lt!2436381)))

(declare-fun res!2748673 () Bool)

(assert (=> start!651400 (=> (not res!2748673) (not e!4058735))))

(declare-fun validRegex!8281 (Regex!16545) Bool)

(assert (=> start!651400 (= res!2748673 (validRegex!8281 r!7292))))

(assert (=> start!651400 e!4058735))

(assert (=> start!651400 e!4058731))

(declare-fun condSetEmpty!45785 () Bool)

(assert (=> start!651400 (= condSetEmpty!45785 (= z!1189 ((as const (Array Context!11858 Bool)) false)))))

(assert (=> start!651400 setRes!45785))

(assert (=> start!651400 e!4058734))

(assert (=> start!651400 e!4058728))

(declare-fun b!6716477 () Bool)

(assert (=> b!6716477 (= e!4058729 (inv!84609 (Context!11859 Nil!65810)))))

(declare-fun lt!2436385 () (InoxSet Context!11858))

(declare-fun derivationStepZipperUp!1699 (Context!11858 C!33360) (InoxSet Context!11858))

(assert (=> b!6716477 (= lt!2436385 (derivationStepZipperUp!1699 (Context!11859 (Cons!65810 r!7292 Nil!65810)) (h!72260 s!2326)))))

(declare-fun b!6716478 () Bool)

(declare-fun tp!1840761 () Bool)

(assert (=> b!6716478 (= e!4058732 tp!1840761)))

(declare-fun setIsEmpty!45785 () Bool)

(assert (=> setIsEmpty!45785 setRes!45785))

(declare-fun b!6716479 () Bool)

(declare-fun res!2748678 () Bool)

(assert (=> b!6716479 (=> res!2748678 e!4058730)))

(declare-fun generalisedUnion!2389 (List!65934) Regex!16545)

(declare-fun unfocusZipperList!1966 (List!65935) List!65934)

(assert (=> b!6716479 (= res!2748678 (not (= r!7292 (generalisedUnion!2389 (unfocusZipperList!1966 zl!343)))))))

(declare-fun b!6716480 () Bool)

(declare-fun tp!1840755 () Bool)

(assert (=> b!6716480 (= e!4058736 tp!1840755)))

(declare-fun b!6716481 () Bool)

(declare-fun res!2748667 () Bool)

(assert (=> b!6716481 (=> (not res!2748667) (not e!4058735))))

(declare-fun toList!10329 ((InoxSet Context!11858)) List!65935)

(assert (=> b!6716481 (= res!2748667 (= (toList!10329 z!1189) zl!343))))

(assert (= (and start!651400 res!2748673) b!6716481))

(assert (= (and b!6716481 res!2748667) b!6716466))

(assert (= (and b!6716466 res!2748669) b!6716472))

(assert (= (and b!6716472 (not res!2748668)) b!6716465))

(assert (= (and b!6716465 (not res!2748672)) b!6716469))

(assert (= (and b!6716469 (not res!2748675)) b!6716463))

(assert (= (and b!6716463 (not res!2748676)) b!6716479))

(assert (= (and b!6716479 (not res!2748678)) b!6716471))

(assert (= (and b!6716471 (not res!2748671)) b!6716464))

(assert (= (and b!6716464 (not res!2748677)) b!6716476))

(assert (= (and b!6716464 (not res!2748670)) b!6716475))

(assert (= (and b!6716475 (not res!2748674)) b!6716477))

(assert (= (and start!651400 ((_ is ElementMatch!16545) r!7292)) b!6716467))

(assert (= (and start!651400 ((_ is Concat!25390) r!7292)) b!6716474))

(assert (= (and start!651400 ((_ is Star!16545) r!7292)) b!6716462))

(assert (= (and start!651400 ((_ is Union!16545) r!7292)) b!6716470))

(assert (= (and start!651400 condSetEmpty!45785) setIsEmpty!45785))

(assert (= (and start!651400 (not condSetEmpty!45785)) setNonEmpty!45785))

(assert (= setNonEmpty!45785 b!6716478))

(assert (= b!6716473 b!6716480))

(assert (= (and start!651400 ((_ is Cons!65811) zl!343)) b!6716473))

(assert (= (and start!651400 ((_ is Cons!65812) s!2326)) b!6716468))

(declare-fun m!7479938 () Bool)

(assert (=> b!6716472 m!7479938))

(declare-fun m!7479940 () Bool)

(assert (=> b!6716472 m!7479940))

(declare-fun m!7479942 () Bool)

(assert (=> b!6716472 m!7479942))

(declare-fun m!7479944 () Bool)

(assert (=> b!6716465 m!7479944))

(declare-fun m!7479946 () Bool)

(assert (=> b!6716466 m!7479946))

(declare-fun m!7479948 () Bool)

(assert (=> b!6716464 m!7479948))

(declare-fun m!7479950 () Bool)

(assert (=> b!6716464 m!7479950))

(declare-fun m!7479952 () Bool)

(assert (=> b!6716464 m!7479952))

(declare-fun m!7479954 () Bool)

(assert (=> b!6716464 m!7479954))

(assert (=> b!6716464 m!7479948))

(declare-fun m!7479956 () Bool)

(assert (=> b!6716464 m!7479956))

(declare-fun m!7479958 () Bool)

(assert (=> b!6716464 m!7479958))

(assert (=> b!6716464 m!7479948))

(declare-fun m!7479960 () Bool)

(assert (=> b!6716464 m!7479960))

(assert (=> b!6716464 m!7479958))

(declare-fun m!7479962 () Bool)

(assert (=> b!6716464 m!7479962))

(declare-fun m!7479964 () Bool)

(assert (=> b!6716464 m!7479964))

(declare-fun m!7479966 () Bool)

(assert (=> b!6716469 m!7479966))

(declare-fun m!7479968 () Bool)

(assert (=> b!6716473 m!7479968))

(declare-fun m!7479970 () Bool)

(assert (=> b!6716481 m!7479970))

(declare-fun m!7479972 () Bool)

(assert (=> setNonEmpty!45785 m!7479972))

(declare-fun m!7479974 () Bool)

(assert (=> start!651400 m!7479974))

(declare-fun m!7479976 () Bool)

(assert (=> b!6716479 m!7479976))

(assert (=> b!6716479 m!7479976))

(declare-fun m!7479978 () Bool)

(assert (=> b!6716479 m!7479978))

(declare-fun m!7479980 () Bool)

(assert (=> b!6716477 m!7479980))

(declare-fun m!7479982 () Bool)

(assert (=> b!6716477 m!7479982))

(check-sat (not b!6716477) (not b!6716480) (not b!6716472) (not b!6716465) (not start!651400) (not b!6716462) (not b!6716469) (not b!6716473) (not b!6716474) (not b!6716479) (not setNonEmpty!45785) (not b!6716468) (not b!6716481) (not b!6716478) (not b!6716466) (not b!6716470) (not b!6716464) tp_is_empty!42343)
(check-sat)
(get-model)

(declare-fun d!2111016 () Bool)

(declare-fun lt!2436397 () Regex!16545)

(assert (=> d!2111016 (validRegex!8281 lt!2436397)))

(assert (=> d!2111016 (= lt!2436397 (generalisedUnion!2389 (unfocusZipperList!1966 zl!343)))))

(assert (=> d!2111016 (= (unfocusZipper!2287 zl!343) lt!2436397)))

(declare-fun bs!1787138 () Bool)

(assert (= bs!1787138 d!2111016))

(declare-fun m!7480022 () Bool)

(assert (=> bs!1787138 m!7480022))

(assert (=> bs!1787138 m!7479976))

(assert (=> bs!1787138 m!7479976))

(assert (=> bs!1787138 m!7479978))

(assert (=> b!6716466 d!2111016))

(declare-fun d!2111018 () Bool)

(declare-fun lambda!376702 () Int)

(declare-fun forall!15745 (List!65934 Int) Bool)

(assert (=> d!2111018 (= (inv!84609 setElem!45785) (forall!15745 (exprs!6429 setElem!45785) lambda!376702))))

(declare-fun bs!1787141 () Bool)

(assert (= bs!1787141 d!2111018))

(declare-fun m!7480024 () Bool)

(assert (=> bs!1787141 m!7480024))

(assert (=> setNonEmpty!45785 d!2111018))

(declare-fun d!2111020 () Bool)

(assert (=> d!2111020 (= (isEmpty!38130 (t!379612 zl!343)) ((_ is Nil!65811) (t!379612 zl!343)))))

(assert (=> b!6716465 d!2111020))

(declare-fun d!2111024 () Bool)

(declare-fun isEmpty!38133 (Option!16432) Bool)

(assert (=> d!2111024 (= (isDefined!13135 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326)) (not (isEmpty!38133 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326))))))

(declare-fun bs!1787142 () Bool)

(assert (= bs!1787142 d!2111024))

(assert (=> bs!1787142 m!7479958))

(declare-fun m!7480034 () Bool)

(assert (=> bs!1787142 m!7480034))

(assert (=> b!6716464 d!2111024))

(declare-fun bs!1787148 () Bool)

(declare-fun d!2111026 () Bool)

(assert (= bs!1787148 (and d!2111026 b!6716464)))

(declare-fun lambda!376713 () Int)

(assert (=> bs!1787148 (= lambda!376713 lambda!376681)))

(assert (=> bs!1787148 (not (= lambda!376713 lambda!376682))))

(assert (=> bs!1787148 (not (= lambda!376713 lambda!376683))))

(assert (=> d!2111026 true))

(assert (=> d!2111026 true))

(assert (=> d!2111026 true))

(declare-fun lambda!376714 () Int)

(assert (=> bs!1787148 (not (= lambda!376714 lambda!376681))))

(assert (=> bs!1787148 (not (= lambda!376714 lambda!376682))))

(assert (=> bs!1787148 (= lambda!376714 lambda!376683)))

(declare-fun bs!1787149 () Bool)

(assert (= bs!1787149 d!2111026))

(assert (=> bs!1787149 (not (= lambda!376714 lambda!376713))))

(assert (=> d!2111026 true))

(assert (=> d!2111026 true))

(assert (=> d!2111026 true))

(assert (=> d!2111026 (= (Exists!3613 lambda!376713) (Exists!3613 lambda!376714))))

(declare-fun lt!2436410 () Unit!159781)

(declare-fun choose!50051 (Regex!16545 Regex!16545 List!65936) Unit!159781)

(assert (=> d!2111026 (= lt!2436410 (choose!50051 (reg!16874 r!7292) r!7292 s!2326))))

(assert (=> d!2111026 (validRegex!8281 (reg!16874 r!7292))))

(assert (=> d!2111026 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2140 (reg!16874 r!7292) r!7292 s!2326) lt!2436410)))

(declare-fun m!7480066 () Bool)

(assert (=> bs!1787149 m!7480066))

(declare-fun m!7480068 () Bool)

(assert (=> bs!1787149 m!7480068))

(declare-fun m!7480070 () Bool)

(assert (=> bs!1787149 m!7480070))

(declare-fun m!7480072 () Bool)

(assert (=> bs!1787149 m!7480072))

(assert (=> b!6716464 d!2111026))

(declare-fun bs!1787165 () Bool)

(declare-fun d!2111038 () Bool)

(assert (= bs!1787165 (and d!2111038 b!6716464)))

(declare-fun lambda!376726 () Int)

(assert (=> bs!1787165 (not (= lambda!376726 lambda!376682))))

(assert (=> bs!1787165 (not (= lambda!376726 lambda!376683))))

(declare-fun bs!1787166 () Bool)

(assert (= bs!1787166 (and d!2111038 d!2111026)))

(assert (=> bs!1787166 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376726 lambda!376713))))

(assert (=> bs!1787165 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376726 lambda!376681))))

(assert (=> bs!1787166 (not (= lambda!376726 lambda!376714))))

(assert (=> d!2111038 true))

(assert (=> d!2111038 true))

(declare-fun lambda!376729 () Int)

(assert (=> bs!1787165 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376729 lambda!376682))))

(declare-fun bs!1787167 () Bool)

(assert (= bs!1787167 d!2111038))

(assert (=> bs!1787167 (not (= lambda!376729 lambda!376726))))

(assert (=> bs!1787165 (not (= lambda!376729 lambda!376683))))

(assert (=> bs!1787166 (not (= lambda!376729 lambda!376713))))

(assert (=> bs!1787165 (not (= lambda!376729 lambda!376681))))

(assert (=> bs!1787166 (not (= lambda!376729 lambda!376714))))

(assert (=> d!2111038 true))

(assert (=> d!2111038 true))

(assert (=> d!2111038 (= (Exists!3613 lambda!376726) (Exists!3613 lambda!376729))))

(declare-fun lt!2436425 () Unit!159781)

(declare-fun choose!50052 (Regex!16545 List!65936) Unit!159781)

(assert (=> d!2111038 (= lt!2436425 (choose!50052 (reg!16874 r!7292) s!2326))))

(assert (=> d!2111038 (validRegex!8281 (reg!16874 r!7292))))

(assert (=> d!2111038 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!704 (reg!16874 r!7292) s!2326) lt!2436425)))

(declare-fun m!7480108 () Bool)

(assert (=> bs!1787167 m!7480108))

(declare-fun m!7480110 () Bool)

(assert (=> bs!1787167 m!7480110))

(declare-fun m!7480112 () Bool)

(assert (=> bs!1787167 m!7480112))

(assert (=> bs!1787167 m!7480072))

(assert (=> b!6716464 d!2111038))

(declare-fun d!2111050 () Bool)

(declare-fun choose!50053 (Int) Bool)

(assert (=> d!2111050 (= (Exists!3613 lambda!376681) (choose!50053 lambda!376681))))

(declare-fun bs!1787168 () Bool)

(assert (= bs!1787168 d!2111050))

(declare-fun m!7480114 () Bool)

(assert (=> bs!1787168 m!7480114))

(assert (=> b!6716464 d!2111050))

(declare-fun d!2111052 () Bool)

(assert (=> d!2111052 (= (Exists!3613 lambda!376683) (choose!50053 lambda!376683))))

(declare-fun bs!1787169 () Bool)

(assert (= bs!1787169 d!2111052))

(declare-fun m!7480116 () Bool)

(assert (=> bs!1787169 m!7480116))

(assert (=> b!6716464 d!2111052))

(declare-fun d!2111054 () Bool)

(assert (=> d!2111054 (= (isEmpty!38129 s!2326) ((_ is Nil!65812) s!2326))))

(assert (=> b!6716464 d!2111054))

(declare-fun d!2111056 () Bool)

(assert (=> d!2111056 (= (Exists!3613 lambda!376682) (choose!50053 lambda!376682))))

(declare-fun bs!1787170 () Bool)

(assert (= bs!1787170 d!2111056))

(declare-fun m!7480118 () Bool)

(assert (=> bs!1787170 m!7480118))

(assert (=> b!6716464 d!2111056))

(declare-fun b!6716821 () Bool)

(declare-fun e!4058921 () Option!16432)

(assert (=> b!6716821 (= e!4058921 None!16431)))

(declare-fun d!2111058 () Bool)

(declare-fun e!4058923 () Bool)

(assert (=> d!2111058 e!4058923))

(declare-fun res!2748822 () Bool)

(assert (=> d!2111058 (=> res!2748822 e!4058923)))

(declare-fun e!4058924 () Bool)

(assert (=> d!2111058 (= res!2748822 e!4058924)))

(declare-fun res!2748823 () Bool)

(assert (=> d!2111058 (=> (not res!2748823) (not e!4058924))))

(declare-fun lt!2436442 () Option!16432)

(assert (=> d!2111058 (= res!2748823 (isDefined!13135 lt!2436442))))

(declare-fun e!4058922 () Option!16432)

(assert (=> d!2111058 (= lt!2436442 e!4058922)))

(declare-fun c!1245305 () Bool)

(declare-fun e!4058925 () Bool)

(assert (=> d!2111058 (= c!1245305 e!4058925)))

(declare-fun res!2748824 () Bool)

(assert (=> d!2111058 (=> (not res!2748824) (not e!4058925))))

(assert (=> d!2111058 (= res!2748824 (matchR!8728 (reg!16874 r!7292) Nil!65812))))

(assert (=> d!2111058 (validRegex!8281 (reg!16874 r!7292))))

(assert (=> d!2111058 (= (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326) lt!2436442)))

(declare-fun b!6716822 () Bool)

(assert (=> b!6716822 (= e!4058923 (not (isDefined!13135 lt!2436442)))))

(declare-fun b!6716823 () Bool)

(declare-fun res!2748820 () Bool)

(assert (=> b!6716823 (=> (not res!2748820) (not e!4058924))))

(declare-fun get!22889 (Option!16432) tuple2!67040)

(assert (=> b!6716823 (= res!2748820 (matchR!8728 (reg!16874 r!7292) (_1!36823 (get!22889 lt!2436442))))))

(declare-fun b!6716824 () Bool)

(assert (=> b!6716824 (= e!4058922 e!4058921)))

(declare-fun c!1245304 () Bool)

(assert (=> b!6716824 (= c!1245304 ((_ is Nil!65812) s!2326))))

(declare-fun b!6716825 () Bool)

(declare-fun res!2748821 () Bool)

(assert (=> b!6716825 (=> (not res!2748821) (not e!4058924))))

(assert (=> b!6716825 (= res!2748821 (matchR!8728 r!7292 (_2!36823 (get!22889 lt!2436442))))))

(declare-fun b!6716826 () Bool)

(assert (=> b!6716826 (= e!4058922 (Some!16431 (tuple2!67041 Nil!65812 s!2326)))))

(declare-fun b!6716827 () Bool)

(assert (=> b!6716827 (= e!4058925 (matchR!8728 r!7292 s!2326))))

(declare-fun b!6716828 () Bool)

(declare-fun ++!14701 (List!65936 List!65936) List!65936)

(assert (=> b!6716828 (= e!4058924 (= (++!14701 (_1!36823 (get!22889 lt!2436442)) (_2!36823 (get!22889 lt!2436442))) s!2326))))

(declare-fun b!6716829 () Bool)

(declare-fun lt!2436441 () Unit!159781)

(declare-fun lt!2436443 () Unit!159781)

(assert (=> b!6716829 (= lt!2436441 lt!2436443)))

(assert (=> b!6716829 (= (++!14701 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (t!379613 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2674 (List!65936 C!33360 List!65936 List!65936) Unit!159781)

(assert (=> b!6716829 (= lt!2436443 (lemmaMoveElementToOtherListKeepsConcatEq!2674 Nil!65812 (h!72260 s!2326) (t!379613 s!2326) s!2326))))

(assert (=> b!6716829 (= e!4058921 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (t!379613 s!2326) s!2326))))

(assert (= (and d!2111058 res!2748824) b!6716827))

(assert (= (and d!2111058 c!1245305) b!6716826))

(assert (= (and d!2111058 (not c!1245305)) b!6716824))

(assert (= (and b!6716824 c!1245304) b!6716821))

(assert (= (and b!6716824 (not c!1245304)) b!6716829))

(assert (= (and d!2111058 res!2748823) b!6716823))

(assert (= (and b!6716823 res!2748820) b!6716825))

(assert (= (and b!6716825 res!2748821) b!6716828))

(assert (= (and d!2111058 (not res!2748822)) b!6716822))

(declare-fun m!7480150 () Bool)

(assert (=> b!6716825 m!7480150))

(declare-fun m!7480152 () Bool)

(assert (=> b!6716825 m!7480152))

(declare-fun m!7480154 () Bool)

(assert (=> b!6716829 m!7480154))

(assert (=> b!6716829 m!7480154))

(declare-fun m!7480156 () Bool)

(assert (=> b!6716829 m!7480156))

(declare-fun m!7480158 () Bool)

(assert (=> b!6716829 m!7480158))

(assert (=> b!6716829 m!7480154))

(declare-fun m!7480160 () Bool)

(assert (=> b!6716829 m!7480160))

(assert (=> b!6716828 m!7480150))

(declare-fun m!7480162 () Bool)

(assert (=> b!6716828 m!7480162))

(assert (=> b!6716823 m!7480150))

(declare-fun m!7480164 () Bool)

(assert (=> b!6716823 m!7480164))

(declare-fun m!7480166 () Bool)

(assert (=> d!2111058 m!7480166))

(declare-fun m!7480168 () Bool)

(assert (=> d!2111058 m!7480168))

(assert (=> d!2111058 m!7480072))

(assert (=> b!6716822 m!7480166))

(assert (=> b!6716827 m!7479940))

(assert (=> b!6716464 d!2111058))

(declare-fun bs!1787181 () Bool)

(declare-fun d!2111066 () Bool)

(assert (= bs!1787181 (and d!2111066 b!6716464)))

(declare-fun lambda!376736 () Int)

(assert (=> bs!1787181 (not (= lambda!376736 lambda!376682))))

(declare-fun bs!1787182 () Bool)

(assert (= bs!1787182 (and d!2111066 d!2111038)))

(assert (=> bs!1787182 (= (= r!7292 (Star!16545 (reg!16874 r!7292))) (= lambda!376736 lambda!376726))))

(assert (=> bs!1787181 (not (= lambda!376736 lambda!376683))))

(declare-fun bs!1787183 () Bool)

(assert (= bs!1787183 (and d!2111066 d!2111026)))

(assert (=> bs!1787183 (= lambda!376736 lambda!376713)))

(assert (=> bs!1787182 (not (= lambda!376736 lambda!376729))))

(assert (=> bs!1787181 (= lambda!376736 lambda!376681)))

(assert (=> bs!1787183 (not (= lambda!376736 lambda!376714))))

(assert (=> d!2111066 true))

(assert (=> d!2111066 true))

(assert (=> d!2111066 true))

(assert (=> d!2111066 (= (isDefined!13135 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326)) (Exists!3613 lambda!376736))))

(declare-fun lt!2436446 () Unit!159781)

(declare-fun choose!50054 (Regex!16545 Regex!16545 List!65936) Unit!159781)

(assert (=> d!2111066 (= lt!2436446 (choose!50054 (reg!16874 r!7292) r!7292 s!2326))))

(assert (=> d!2111066 (validRegex!8281 (reg!16874 r!7292))))

(assert (=> d!2111066 (= (lemmaFindConcatSeparationEquivalentToExists!2610 (reg!16874 r!7292) r!7292 s!2326) lt!2436446)))

(declare-fun bs!1787184 () Bool)

(assert (= bs!1787184 d!2111066))

(declare-fun m!7480170 () Bool)

(assert (=> bs!1787184 m!7480170))

(assert (=> bs!1787184 m!7479958))

(assert (=> bs!1787184 m!7479958))

(assert (=> bs!1787184 m!7479962))

(declare-fun m!7480172 () Bool)

(assert (=> bs!1787184 m!7480172))

(assert (=> bs!1787184 m!7480072))

(assert (=> b!6716464 d!2111066))

(declare-fun d!2111068 () Bool)

(declare-fun e!4058930 () Bool)

(assert (=> d!2111068 e!4058930))

(declare-fun res!2748831 () Bool)

(assert (=> d!2111068 (=> (not res!2748831) (not e!4058930))))

(declare-fun lt!2436449 () List!65935)

(declare-fun noDuplicate!2338 (List!65935) Bool)

(assert (=> d!2111068 (= res!2748831 (noDuplicate!2338 lt!2436449))))

(declare-fun choose!50055 ((InoxSet Context!11858)) List!65935)

(assert (=> d!2111068 (= lt!2436449 (choose!50055 z!1189))))

(assert (=> d!2111068 (= (toList!10329 z!1189) lt!2436449)))

(declare-fun b!6716836 () Bool)

(declare-fun content!12759 (List!65935) (InoxSet Context!11858))

(assert (=> b!6716836 (= e!4058930 (= (content!12759 lt!2436449) z!1189))))

(assert (= (and d!2111068 res!2748831) b!6716836))

(declare-fun m!7480174 () Bool)

(assert (=> d!2111068 m!7480174))

(declare-fun m!7480176 () Bool)

(assert (=> d!2111068 m!7480176))

(declare-fun m!7480178 () Bool)

(assert (=> b!6716836 m!7480178))

(assert (=> b!6716481 d!2111068))

(declare-fun bs!1787185 () Bool)

(declare-fun d!2111070 () Bool)

(assert (= bs!1787185 (and d!2111070 d!2111018)))

(declare-fun lambda!376737 () Int)

(assert (=> bs!1787185 (= lambda!376737 lambda!376702)))

(assert (=> d!2111070 (= (inv!84609 (h!72259 zl!343)) (forall!15745 (exprs!6429 (h!72259 zl!343)) lambda!376737))))

(declare-fun bs!1787186 () Bool)

(assert (= bs!1787186 d!2111070))

(declare-fun m!7480180 () Bool)

(assert (=> bs!1787186 m!7480180))

(assert (=> b!6716473 d!2111070))

(declare-fun b!6716855 () Bool)

(declare-fun e!4058946 () Bool)

(declare-fun e!4058951 () Bool)

(assert (=> b!6716855 (= e!4058946 e!4058951)))

(declare-fun res!2748846 () Bool)

(declare-fun nullable!6532 (Regex!16545) Bool)

(assert (=> b!6716855 (= res!2748846 (not (nullable!6532 (reg!16874 r!7292))))))

(assert (=> b!6716855 (=> (not res!2748846) (not e!4058951))))

(declare-fun bm!606188 () Bool)

(declare-fun call!606194 () Bool)

(declare-fun c!1245311 () Bool)

(assert (=> bm!606188 (= call!606194 (validRegex!8281 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))))))

(declare-fun bm!606189 () Bool)

(declare-fun c!1245310 () Bool)

(declare-fun call!606195 () Bool)

(assert (=> bm!606189 (= call!606195 (validRegex!8281 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))))))

(declare-fun b!6716856 () Bool)

(declare-fun e!4058945 () Bool)

(assert (=> b!6716856 (= e!4058946 e!4058945)))

(assert (=> b!6716856 (= c!1245311 ((_ is Union!16545) r!7292))))

(declare-fun d!2111072 () Bool)

(declare-fun res!2748842 () Bool)

(declare-fun e!4058950 () Bool)

(assert (=> d!2111072 (=> res!2748842 e!4058950)))

(assert (=> d!2111072 (= res!2748842 ((_ is ElementMatch!16545) r!7292))))

(assert (=> d!2111072 (= (validRegex!8281 r!7292) e!4058950)))

(declare-fun b!6716857 () Bool)

(declare-fun res!2748844 () Bool)

(declare-fun e!4058949 () Bool)

(assert (=> b!6716857 (=> res!2748844 e!4058949)))

(assert (=> b!6716857 (= res!2748844 (not ((_ is Concat!25390) r!7292)))))

(assert (=> b!6716857 (= e!4058945 e!4058949)))

(declare-fun b!6716858 () Bool)

(declare-fun e!4058947 () Bool)

(assert (=> b!6716858 (= e!4058949 e!4058947)))

(declare-fun res!2748845 () Bool)

(assert (=> b!6716858 (=> (not res!2748845) (not e!4058947))))

(declare-fun call!606193 () Bool)

(assert (=> b!6716858 (= res!2748845 call!606193)))

(declare-fun b!6716859 () Bool)

(assert (=> b!6716859 (= e!4058951 call!606195)))

(declare-fun b!6716860 () Bool)

(assert (=> b!6716860 (= e!4058950 e!4058946)))

(assert (=> b!6716860 (= c!1245310 ((_ is Star!16545) r!7292))))

(declare-fun b!6716861 () Bool)

(declare-fun res!2748843 () Bool)

(declare-fun e!4058948 () Bool)

(assert (=> b!6716861 (=> (not res!2748843) (not e!4058948))))

(assert (=> b!6716861 (= res!2748843 call!606193)))

(assert (=> b!6716861 (= e!4058945 e!4058948)))

(declare-fun bm!606190 () Bool)

(assert (=> bm!606190 (= call!606193 call!606195)))

(declare-fun b!6716862 () Bool)

(assert (=> b!6716862 (= e!4058948 call!606194)))

(declare-fun b!6716863 () Bool)

(assert (=> b!6716863 (= e!4058947 call!606194)))

(assert (= (and d!2111072 (not res!2748842)) b!6716860))

(assert (= (and b!6716860 c!1245310) b!6716855))

(assert (= (and b!6716860 (not c!1245310)) b!6716856))

(assert (= (and b!6716855 res!2748846) b!6716859))

(assert (= (and b!6716856 c!1245311) b!6716861))

(assert (= (and b!6716856 (not c!1245311)) b!6716857))

(assert (= (and b!6716861 res!2748843) b!6716862))

(assert (= (and b!6716857 (not res!2748844)) b!6716858))

(assert (= (and b!6716858 res!2748845) b!6716863))

(assert (= (or b!6716862 b!6716863) bm!606188))

(assert (= (or b!6716861 b!6716858) bm!606190))

(assert (= (or b!6716859 bm!606190) bm!606189))

(declare-fun m!7480182 () Bool)

(assert (=> b!6716855 m!7480182))

(declare-fun m!7480184 () Bool)

(assert (=> bm!606188 m!7480184))

(declare-fun m!7480186 () Bool)

(assert (=> bm!606189 m!7480186))

(assert (=> start!651400 d!2111072))

(declare-fun bs!1787187 () Bool)

(declare-fun b!6716900 () Bool)

(assert (= bs!1787187 (and b!6716900 b!6716464)))

(declare-fun lambda!376742 () Int)

(assert (=> bs!1787187 (= lambda!376742 lambda!376682)))

(declare-fun bs!1787188 () Bool)

(assert (= bs!1787188 (and b!6716900 d!2111038)))

(assert (=> bs!1787188 (not (= lambda!376742 lambda!376726))))

(assert (=> bs!1787187 (not (= lambda!376742 lambda!376683))))

(declare-fun bs!1787189 () Bool)

(assert (= bs!1787189 (and b!6716900 d!2111026)))

(assert (=> bs!1787189 (not (= lambda!376742 lambda!376713))))

(assert (=> bs!1787188 (= (= r!7292 (Star!16545 (reg!16874 r!7292))) (= lambda!376742 lambda!376729))))

(declare-fun bs!1787190 () Bool)

(assert (= bs!1787190 (and b!6716900 d!2111066)))

(assert (=> bs!1787190 (not (= lambda!376742 lambda!376736))))

(assert (=> bs!1787187 (not (= lambda!376742 lambda!376681))))

(assert (=> bs!1787189 (not (= lambda!376742 lambda!376714))))

(assert (=> b!6716900 true))

(assert (=> b!6716900 true))

(declare-fun bs!1787191 () Bool)

(declare-fun b!6716899 () Bool)

(assert (= bs!1787191 (and b!6716899 b!6716464)))

(declare-fun lambda!376743 () Int)

(assert (=> bs!1787191 (not (= lambda!376743 lambda!376682))))

(declare-fun bs!1787192 () Bool)

(assert (= bs!1787192 (and b!6716899 d!2111038)))

(assert (=> bs!1787192 (not (= lambda!376743 lambda!376726))))

(assert (=> bs!1787191 (= (and (= (regOne!33602 r!7292) (reg!16874 r!7292)) (= (regTwo!33602 r!7292) r!7292)) (= lambda!376743 lambda!376683))))

(declare-fun bs!1787193 () Bool)

(assert (= bs!1787193 (and b!6716899 b!6716900)))

(assert (=> bs!1787193 (not (= lambda!376743 lambda!376742))))

(declare-fun bs!1787194 () Bool)

(assert (= bs!1787194 (and b!6716899 d!2111026)))

(assert (=> bs!1787194 (not (= lambda!376743 lambda!376713))))

(assert (=> bs!1787192 (not (= lambda!376743 lambda!376729))))

(declare-fun bs!1787195 () Bool)

(assert (= bs!1787195 (and b!6716899 d!2111066)))

(assert (=> bs!1787195 (not (= lambda!376743 lambda!376736))))

(assert (=> bs!1787191 (not (= lambda!376743 lambda!376681))))

(assert (=> bs!1787194 (= (and (= (regOne!33602 r!7292) (reg!16874 r!7292)) (= (regTwo!33602 r!7292) r!7292)) (= lambda!376743 lambda!376714))))

(assert (=> b!6716899 true))

(assert (=> b!6716899 true))

(declare-fun b!6716896 () Bool)

(declare-fun e!4058972 () Bool)

(assert (=> b!6716896 (= e!4058972 (matchRSpec!3646 (regTwo!33603 r!7292) s!2326))))

(declare-fun b!6716897 () Bool)

(declare-fun c!1245323 () Bool)

(assert (=> b!6716897 (= c!1245323 ((_ is Union!16545) r!7292))))

(declare-fun e!4058974 () Bool)

(declare-fun e!4058971 () Bool)

(assert (=> b!6716897 (= e!4058974 e!4058971)))

(declare-fun b!6716898 () Bool)

(assert (=> b!6716898 (= e!4058974 (= s!2326 (Cons!65812 (c!1245233 r!7292) Nil!65812)))))

(declare-fun call!606200 () Bool)

(declare-fun c!1245320 () Bool)

(declare-fun bm!606195 () Bool)

(assert (=> bm!606195 (= call!606200 (Exists!3613 (ite c!1245320 lambda!376742 lambda!376743)))))

(declare-fun e!4058976 () Bool)

(assert (=> b!6716899 (= e!4058976 call!606200)))

(declare-fun e!4058970 () Bool)

(assert (=> b!6716900 (= e!4058970 call!606200)))

(declare-fun b!6716901 () Bool)

(declare-fun c!1245321 () Bool)

(assert (=> b!6716901 (= c!1245321 ((_ is ElementMatch!16545) r!7292))))

(declare-fun e!4058975 () Bool)

(assert (=> b!6716901 (= e!4058975 e!4058974)))

(declare-fun b!6716902 () Bool)

(declare-fun e!4058973 () Bool)

(declare-fun call!606201 () Bool)

(assert (=> b!6716902 (= e!4058973 call!606201)))

(declare-fun b!6716903 () Bool)

(assert (=> b!6716903 (= e!4058971 e!4058972)))

(declare-fun res!2748863 () Bool)

(assert (=> b!6716903 (= res!2748863 (matchRSpec!3646 (regOne!33603 r!7292) s!2326))))

(assert (=> b!6716903 (=> res!2748863 e!4058972)))

(declare-fun bm!606196 () Bool)

(assert (=> bm!606196 (= call!606201 (isEmpty!38129 s!2326))))

(declare-fun b!6716905 () Bool)

(assert (=> b!6716905 (= e!4058971 e!4058976)))

(assert (=> b!6716905 (= c!1245320 ((_ is Star!16545) r!7292))))

(declare-fun b!6716906 () Bool)

(assert (=> b!6716906 (= e!4058973 e!4058975)))

(declare-fun res!2748864 () Bool)

(assert (=> b!6716906 (= res!2748864 (not ((_ is EmptyLang!16545) r!7292)))))

(assert (=> b!6716906 (=> (not res!2748864) (not e!4058975))))

(declare-fun d!2111074 () Bool)

(declare-fun c!1245322 () Bool)

(assert (=> d!2111074 (= c!1245322 ((_ is EmptyExpr!16545) r!7292))))

(assert (=> d!2111074 (= (matchRSpec!3646 r!7292 s!2326) e!4058973)))

(declare-fun b!6716904 () Bool)

(declare-fun res!2748865 () Bool)

(assert (=> b!6716904 (=> res!2748865 e!4058970)))

(assert (=> b!6716904 (= res!2748865 call!606201)))

(assert (=> b!6716904 (= e!4058976 e!4058970)))

(assert (= (and d!2111074 c!1245322) b!6716902))

(assert (= (and d!2111074 (not c!1245322)) b!6716906))

(assert (= (and b!6716906 res!2748864) b!6716901))

(assert (= (and b!6716901 c!1245321) b!6716898))

(assert (= (and b!6716901 (not c!1245321)) b!6716897))

(assert (= (and b!6716897 c!1245323) b!6716903))

(assert (= (and b!6716897 (not c!1245323)) b!6716905))

(assert (= (and b!6716903 (not res!2748863)) b!6716896))

(assert (= (and b!6716905 c!1245320) b!6716904))

(assert (= (and b!6716905 (not c!1245320)) b!6716899))

(assert (= (and b!6716904 (not res!2748865)) b!6716900))

(assert (= (or b!6716900 b!6716899) bm!606195))

(assert (= (or b!6716902 b!6716904) bm!606196))

(declare-fun m!7480188 () Bool)

(assert (=> b!6716896 m!7480188))

(declare-fun m!7480190 () Bool)

(assert (=> bm!606195 m!7480190))

(declare-fun m!7480192 () Bool)

(assert (=> b!6716903 m!7480192))

(assert (=> bm!606196 m!7479950))

(assert (=> b!6716472 d!2111074))

(declare-fun b!6716935 () Bool)

(declare-fun res!2748883 () Bool)

(declare-fun e!4058996 () Bool)

(assert (=> b!6716935 (=> res!2748883 e!4058996)))

(declare-fun e!4058991 () Bool)

(assert (=> b!6716935 (= res!2748883 e!4058991)))

(declare-fun res!2748887 () Bool)

(assert (=> b!6716935 (=> (not res!2748887) (not e!4058991))))

(declare-fun lt!2436452 () Bool)

(assert (=> b!6716935 (= res!2748887 lt!2436452)))

(declare-fun b!6716936 () Bool)

(declare-fun res!2748884 () Bool)

(declare-fun e!4058993 () Bool)

(assert (=> b!6716936 (=> res!2748884 e!4058993)))

(declare-fun tail!12602 (List!65936) List!65936)

(assert (=> b!6716936 (= res!2748884 (not (isEmpty!38129 (tail!12602 s!2326))))))

(declare-fun b!6716938 () Bool)

(declare-fun e!4058994 () Bool)

(assert (=> b!6716938 (= e!4058994 (not lt!2436452))))

(declare-fun b!6716939 () Bool)

(declare-fun res!2748885 () Bool)

(assert (=> b!6716939 (=> res!2748885 e!4058996)))

(assert (=> b!6716939 (= res!2748885 (not ((_ is ElementMatch!16545) r!7292)))))

(assert (=> b!6716939 (= e!4058994 e!4058996)))

(declare-fun b!6716940 () Bool)

(declare-fun e!4058997 () Bool)

(declare-fun call!606204 () Bool)

(assert (=> b!6716940 (= e!4058997 (= lt!2436452 call!606204))))

(declare-fun b!6716941 () Bool)

(declare-fun e!4058992 () Bool)

(assert (=> b!6716941 (= e!4058992 (nullable!6532 r!7292))))

(declare-fun b!6716942 () Bool)

(declare-fun head!13517 (List!65936) C!33360)

(assert (=> b!6716942 (= e!4058991 (= (head!13517 s!2326) (c!1245233 r!7292)))))

(declare-fun b!6716943 () Bool)

(declare-fun res!2748889 () Bool)

(assert (=> b!6716943 (=> (not res!2748889) (not e!4058991))))

(assert (=> b!6716943 (= res!2748889 (isEmpty!38129 (tail!12602 s!2326)))))

(declare-fun b!6716944 () Bool)

(assert (=> b!6716944 (= e!4058993 (not (= (head!13517 s!2326) (c!1245233 r!7292))))))

(declare-fun b!6716945 () Bool)

(declare-fun res!2748882 () Bool)

(assert (=> b!6716945 (=> (not res!2748882) (not e!4058991))))

(assert (=> b!6716945 (= res!2748882 (not call!606204))))

(declare-fun b!6716946 () Bool)

(declare-fun e!4058995 () Bool)

(assert (=> b!6716946 (= e!4058995 e!4058993)))

(declare-fun res!2748888 () Bool)

(assert (=> b!6716946 (=> res!2748888 e!4058993)))

(assert (=> b!6716946 (= res!2748888 call!606204)))

(declare-fun b!6716947 () Bool)

(declare-fun derivativeStep!5217 (Regex!16545 C!33360) Regex!16545)

(assert (=> b!6716947 (= e!4058992 (matchR!8728 (derivativeStep!5217 r!7292 (head!13517 s!2326)) (tail!12602 s!2326)))))

(declare-fun d!2111076 () Bool)

(assert (=> d!2111076 e!4058997))

(declare-fun c!1245330 () Bool)

(assert (=> d!2111076 (= c!1245330 ((_ is EmptyExpr!16545) r!7292))))

(assert (=> d!2111076 (= lt!2436452 e!4058992)))

(declare-fun c!1245332 () Bool)

(assert (=> d!2111076 (= c!1245332 (isEmpty!38129 s!2326))))

(assert (=> d!2111076 (validRegex!8281 r!7292)))

(assert (=> d!2111076 (= (matchR!8728 r!7292 s!2326) lt!2436452)))

(declare-fun b!6716937 () Bool)

(assert (=> b!6716937 (= e!4058996 e!4058995)))

(declare-fun res!2748886 () Bool)

(assert (=> b!6716937 (=> (not res!2748886) (not e!4058995))))

(assert (=> b!6716937 (= res!2748886 (not lt!2436452))))

(declare-fun b!6716948 () Bool)

(assert (=> b!6716948 (= e!4058997 e!4058994)))

(declare-fun c!1245331 () Bool)

(assert (=> b!6716948 (= c!1245331 ((_ is EmptyLang!16545) r!7292))))

(declare-fun bm!606199 () Bool)

(assert (=> bm!606199 (= call!606204 (isEmpty!38129 s!2326))))

(assert (= (and d!2111076 c!1245332) b!6716941))

(assert (= (and d!2111076 (not c!1245332)) b!6716947))

(assert (= (and d!2111076 c!1245330) b!6716940))

(assert (= (and d!2111076 (not c!1245330)) b!6716948))

(assert (= (and b!6716948 c!1245331) b!6716938))

(assert (= (and b!6716948 (not c!1245331)) b!6716939))

(assert (= (and b!6716939 (not res!2748885)) b!6716935))

(assert (= (and b!6716935 res!2748887) b!6716945))

(assert (= (and b!6716945 res!2748882) b!6716943))

(assert (= (and b!6716943 res!2748889) b!6716942))

(assert (= (and b!6716935 (not res!2748883)) b!6716937))

(assert (= (and b!6716937 res!2748886) b!6716946))

(assert (= (and b!6716946 (not res!2748888)) b!6716936))

(assert (= (and b!6716936 (not res!2748884)) b!6716944))

(assert (= (or b!6716940 b!6716946 b!6716945) bm!606199))

(declare-fun m!7480194 () Bool)

(assert (=> b!6716941 m!7480194))

(assert (=> bm!606199 m!7479950))

(declare-fun m!7480196 () Bool)

(assert (=> b!6716947 m!7480196))

(assert (=> b!6716947 m!7480196))

(declare-fun m!7480198 () Bool)

(assert (=> b!6716947 m!7480198))

(declare-fun m!7480200 () Bool)

(assert (=> b!6716947 m!7480200))

(assert (=> b!6716947 m!7480198))

(assert (=> b!6716947 m!7480200))

(declare-fun m!7480202 () Bool)

(assert (=> b!6716947 m!7480202))

(assert (=> d!2111076 m!7479950))

(assert (=> d!2111076 m!7479974))

(assert (=> b!6716944 m!7480196))

(assert (=> b!6716943 m!7480200))

(assert (=> b!6716943 m!7480200))

(declare-fun m!7480204 () Bool)

(assert (=> b!6716943 m!7480204))

(assert (=> b!6716942 m!7480196))

(assert (=> b!6716936 m!7480200))

(assert (=> b!6716936 m!7480200))

(assert (=> b!6716936 m!7480204))

(assert (=> b!6716472 d!2111076))

(declare-fun d!2111078 () Bool)

(assert (=> d!2111078 (= (matchR!8728 r!7292 s!2326) (matchRSpec!3646 r!7292 s!2326))))

(declare-fun lt!2436455 () Unit!159781)

(declare-fun choose!50056 (Regex!16545 List!65936) Unit!159781)

(assert (=> d!2111078 (= lt!2436455 (choose!50056 r!7292 s!2326))))

(assert (=> d!2111078 (validRegex!8281 r!7292)))

(assert (=> d!2111078 (= (mainMatchTheorem!3646 r!7292 s!2326) lt!2436455)))

(declare-fun bs!1787196 () Bool)

(assert (= bs!1787196 d!2111078))

(assert (=> bs!1787196 m!7479940))

(assert (=> bs!1787196 m!7479938))

(declare-fun m!7480206 () Bool)

(assert (=> bs!1787196 m!7480206))

(assert (=> bs!1787196 m!7479974))

(assert (=> b!6716472 d!2111078))

(declare-fun bs!1787197 () Bool)

(declare-fun d!2111080 () Bool)

(assert (= bs!1787197 (and d!2111080 d!2111018)))

(declare-fun lambda!376746 () Int)

(assert (=> bs!1787197 (= lambda!376746 lambda!376702)))

(declare-fun bs!1787198 () Bool)

(assert (= bs!1787198 (and d!2111080 d!2111070)))

(assert (=> bs!1787198 (= lambda!376746 lambda!376737)))

(declare-fun b!6716969 () Bool)

(declare-fun e!4059011 () Regex!16545)

(assert (=> b!6716969 (= e!4059011 (h!72258 (unfocusZipperList!1966 zl!343)))))

(declare-fun b!6716970 () Bool)

(declare-fun e!4059013 () Regex!16545)

(assert (=> b!6716970 (= e!4059011 e!4059013)))

(declare-fun c!1245344 () Bool)

(assert (=> b!6716970 (= c!1245344 ((_ is Cons!65810) (unfocusZipperList!1966 zl!343)))))

(declare-fun b!6716971 () Bool)

(declare-fun e!4059012 () Bool)

(declare-fun e!4059010 () Bool)

(assert (=> b!6716971 (= e!4059012 e!4059010)))

(declare-fun c!1245342 () Bool)

(declare-fun isEmpty!38134 (List!65934) Bool)

(assert (=> b!6716971 (= c!1245342 (isEmpty!38134 (unfocusZipperList!1966 zl!343)))))

(declare-fun b!6716972 () Bool)

(assert (=> b!6716972 (= e!4059013 (Union!16545 (h!72258 (unfocusZipperList!1966 zl!343)) (generalisedUnion!2389 (t!379611 (unfocusZipperList!1966 zl!343)))))))

(declare-fun b!6716973 () Bool)

(declare-fun e!4059015 () Bool)

(declare-fun lt!2436458 () Regex!16545)

(declare-fun head!13518 (List!65934) Regex!16545)

(assert (=> b!6716973 (= e!4059015 (= lt!2436458 (head!13518 (unfocusZipperList!1966 zl!343))))))

(assert (=> d!2111080 e!4059012))

(declare-fun res!2748895 () Bool)

(assert (=> d!2111080 (=> (not res!2748895) (not e!4059012))))

(assert (=> d!2111080 (= res!2748895 (validRegex!8281 lt!2436458))))

(assert (=> d!2111080 (= lt!2436458 e!4059011)))

(declare-fun c!1245343 () Bool)

(declare-fun e!4059014 () Bool)

(assert (=> d!2111080 (= c!1245343 e!4059014)))

(declare-fun res!2748894 () Bool)

(assert (=> d!2111080 (=> (not res!2748894) (not e!4059014))))

(assert (=> d!2111080 (= res!2748894 ((_ is Cons!65810) (unfocusZipperList!1966 zl!343)))))

(assert (=> d!2111080 (forall!15745 (unfocusZipperList!1966 zl!343) lambda!376746)))

(assert (=> d!2111080 (= (generalisedUnion!2389 (unfocusZipperList!1966 zl!343)) lt!2436458)))

(declare-fun b!6716974 () Bool)

(assert (=> b!6716974 (= e!4059013 EmptyLang!16545)))

(declare-fun b!6716975 () Bool)

(declare-fun isEmptyLang!1919 (Regex!16545) Bool)

(assert (=> b!6716975 (= e!4059010 (isEmptyLang!1919 lt!2436458))))

(declare-fun b!6716976 () Bool)

(assert (=> b!6716976 (= e!4059014 (isEmpty!38134 (t!379611 (unfocusZipperList!1966 zl!343))))))

(declare-fun b!6716977 () Bool)

(assert (=> b!6716977 (= e!4059010 e!4059015)))

(declare-fun c!1245341 () Bool)

(declare-fun tail!12603 (List!65934) List!65934)

(assert (=> b!6716977 (= c!1245341 (isEmpty!38134 (tail!12603 (unfocusZipperList!1966 zl!343))))))

(declare-fun b!6716978 () Bool)

(declare-fun isUnion!1349 (Regex!16545) Bool)

(assert (=> b!6716978 (= e!4059015 (isUnion!1349 lt!2436458))))

(assert (= (and d!2111080 res!2748894) b!6716976))

(assert (= (and d!2111080 c!1245343) b!6716969))

(assert (= (and d!2111080 (not c!1245343)) b!6716970))

(assert (= (and b!6716970 c!1245344) b!6716972))

(assert (= (and b!6716970 (not c!1245344)) b!6716974))

(assert (= (and d!2111080 res!2748895) b!6716971))

(assert (= (and b!6716971 c!1245342) b!6716975))

(assert (= (and b!6716971 (not c!1245342)) b!6716977))

(assert (= (and b!6716977 c!1245341) b!6716973))

(assert (= (and b!6716977 (not c!1245341)) b!6716978))

(declare-fun m!7480208 () Bool)

(assert (=> b!6716972 m!7480208))

(declare-fun m!7480210 () Bool)

(assert (=> b!6716978 m!7480210))

(declare-fun m!7480212 () Bool)

(assert (=> b!6716975 m!7480212))

(declare-fun m!7480214 () Bool)

(assert (=> b!6716976 m!7480214))

(declare-fun m!7480216 () Bool)

(assert (=> d!2111080 m!7480216))

(assert (=> d!2111080 m!7479976))

(declare-fun m!7480218 () Bool)

(assert (=> d!2111080 m!7480218))

(assert (=> b!6716973 m!7479976))

(declare-fun m!7480220 () Bool)

(assert (=> b!6716973 m!7480220))

(assert (=> b!6716971 m!7479976))

(declare-fun m!7480222 () Bool)

(assert (=> b!6716971 m!7480222))

(assert (=> b!6716977 m!7479976))

(declare-fun m!7480224 () Bool)

(assert (=> b!6716977 m!7480224))

(assert (=> b!6716977 m!7480224))

(declare-fun m!7480226 () Bool)

(assert (=> b!6716977 m!7480226))

(assert (=> b!6716479 d!2111080))

(declare-fun bs!1787199 () Bool)

(declare-fun d!2111082 () Bool)

(assert (= bs!1787199 (and d!2111082 d!2111018)))

(declare-fun lambda!376749 () Int)

(assert (=> bs!1787199 (= lambda!376749 lambda!376702)))

(declare-fun bs!1787200 () Bool)

(assert (= bs!1787200 (and d!2111082 d!2111070)))

(assert (=> bs!1787200 (= lambda!376749 lambda!376737)))

(declare-fun bs!1787201 () Bool)

(assert (= bs!1787201 (and d!2111082 d!2111080)))

(assert (=> bs!1787201 (= lambda!376749 lambda!376746)))

(declare-fun lt!2436461 () List!65934)

(assert (=> d!2111082 (forall!15745 lt!2436461 lambda!376749)))

(declare-fun e!4059018 () List!65934)

(assert (=> d!2111082 (= lt!2436461 e!4059018)))

(declare-fun c!1245347 () Bool)

(assert (=> d!2111082 (= c!1245347 ((_ is Cons!65811) zl!343))))

(assert (=> d!2111082 (= (unfocusZipperList!1966 zl!343) lt!2436461)))

(declare-fun b!6716983 () Bool)

(assert (=> b!6716983 (= e!4059018 (Cons!65810 (generalisedConcat!2142 (exprs!6429 (h!72259 zl!343))) (unfocusZipperList!1966 (t!379612 zl!343))))))

(declare-fun b!6716984 () Bool)

(assert (=> b!6716984 (= e!4059018 Nil!65810)))

(assert (= (and d!2111082 c!1245347) b!6716983))

(assert (= (and d!2111082 (not c!1245347)) b!6716984))

(declare-fun m!7480228 () Bool)

(assert (=> d!2111082 m!7480228))

(assert (=> b!6716983 m!7479966))

(declare-fun m!7480230 () Bool)

(assert (=> b!6716983 m!7480230))

(assert (=> b!6716479 d!2111082))

(declare-fun bs!1787202 () Bool)

(declare-fun d!2111084 () Bool)

(assert (= bs!1787202 (and d!2111084 d!2111018)))

(declare-fun lambda!376752 () Int)

(assert (=> bs!1787202 (= lambda!376752 lambda!376702)))

(declare-fun bs!1787203 () Bool)

(assert (= bs!1787203 (and d!2111084 d!2111070)))

(assert (=> bs!1787203 (= lambda!376752 lambda!376737)))

(declare-fun bs!1787204 () Bool)

(assert (= bs!1787204 (and d!2111084 d!2111080)))

(assert (=> bs!1787204 (= lambda!376752 lambda!376746)))

(declare-fun bs!1787205 () Bool)

(assert (= bs!1787205 (and d!2111084 d!2111082)))

(assert (=> bs!1787205 (= lambda!376752 lambda!376749)))

(declare-fun e!4059032 () Bool)

(assert (=> d!2111084 e!4059032))

(declare-fun res!2748901 () Bool)

(assert (=> d!2111084 (=> (not res!2748901) (not e!4059032))))

(declare-fun lt!2436464 () Regex!16545)

(assert (=> d!2111084 (= res!2748901 (validRegex!8281 lt!2436464))))

(declare-fun e!4059034 () Regex!16545)

(assert (=> d!2111084 (= lt!2436464 e!4059034)))

(declare-fun c!1245357 () Bool)

(declare-fun e!4059033 () Bool)

(assert (=> d!2111084 (= c!1245357 e!4059033)))

(declare-fun res!2748900 () Bool)

(assert (=> d!2111084 (=> (not res!2748900) (not e!4059033))))

(assert (=> d!2111084 (= res!2748900 ((_ is Cons!65810) (exprs!6429 (h!72259 zl!343))))))

(assert (=> d!2111084 (forall!15745 (exprs!6429 (h!72259 zl!343)) lambda!376752)))

(assert (=> d!2111084 (= (generalisedConcat!2142 (exprs!6429 (h!72259 zl!343))) lt!2436464)))

(declare-fun b!6717005 () Bool)

(declare-fun e!4059036 () Bool)

(declare-fun isEmptyExpr!1911 (Regex!16545) Bool)

(assert (=> b!6717005 (= e!4059036 (isEmptyExpr!1911 lt!2436464))))

(declare-fun b!6717006 () Bool)

(declare-fun e!4059035 () Regex!16545)

(assert (=> b!6717006 (= e!4059035 (Concat!25390 (h!72258 (exprs!6429 (h!72259 zl!343))) (generalisedConcat!2142 (t!379611 (exprs!6429 (h!72259 zl!343))))))))

(declare-fun b!6717007 () Bool)

(assert (=> b!6717007 (= e!4059034 (h!72258 (exprs!6429 (h!72259 zl!343))))))

(declare-fun b!6717008 () Bool)

(assert (=> b!6717008 (= e!4059034 e!4059035)))

(declare-fun c!1245358 () Bool)

(assert (=> b!6717008 (= c!1245358 ((_ is Cons!65810) (exprs!6429 (h!72259 zl!343))))))

(declare-fun b!6717009 () Bool)

(assert (=> b!6717009 (= e!4059032 e!4059036)))

(declare-fun c!1245356 () Bool)

(assert (=> b!6717009 (= c!1245356 (isEmpty!38134 (exprs!6429 (h!72259 zl!343))))))

(declare-fun b!6717010 () Bool)

(declare-fun e!4059031 () Bool)

(assert (=> b!6717010 (= e!4059031 (= lt!2436464 (head!13518 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717011 () Bool)

(assert (=> b!6717011 (= e!4059036 e!4059031)))

(declare-fun c!1245359 () Bool)

(assert (=> b!6717011 (= c!1245359 (isEmpty!38134 (tail!12603 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717012 () Bool)

(assert (=> b!6717012 (= e!4059033 (isEmpty!38134 (t!379611 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717013 () Bool)

(assert (=> b!6717013 (= e!4059035 EmptyExpr!16545)))

(declare-fun b!6717014 () Bool)

(declare-fun isConcat!1434 (Regex!16545) Bool)

(assert (=> b!6717014 (= e!4059031 (isConcat!1434 lt!2436464))))

(assert (= (and d!2111084 res!2748900) b!6717012))

(assert (= (and d!2111084 c!1245357) b!6717007))

(assert (= (and d!2111084 (not c!1245357)) b!6717008))

(assert (= (and b!6717008 c!1245358) b!6717006))

(assert (= (and b!6717008 (not c!1245358)) b!6717013))

(assert (= (and d!2111084 res!2748901) b!6717009))

(assert (= (and b!6717009 c!1245356) b!6717005))

(assert (= (and b!6717009 (not c!1245356)) b!6717011))

(assert (= (and b!6717011 c!1245359) b!6717010))

(assert (= (and b!6717011 (not c!1245359)) b!6717014))

(declare-fun m!7480232 () Bool)

(assert (=> b!6717012 m!7480232))

(declare-fun m!7480234 () Bool)

(assert (=> d!2111084 m!7480234))

(declare-fun m!7480236 () Bool)

(assert (=> d!2111084 m!7480236))

(declare-fun m!7480238 () Bool)

(assert (=> b!6717014 m!7480238))

(declare-fun m!7480240 () Bool)

(assert (=> b!6717011 m!7480240))

(assert (=> b!6717011 m!7480240))

(declare-fun m!7480242 () Bool)

(assert (=> b!6717011 m!7480242))

(declare-fun m!7480244 () Bool)

(assert (=> b!6717005 m!7480244))

(declare-fun m!7480246 () Bool)

(assert (=> b!6717010 m!7480246))

(declare-fun m!7480248 () Bool)

(assert (=> b!6717009 m!7480248))

(declare-fun m!7480250 () Bool)

(assert (=> b!6717006 m!7480250))

(assert (=> b!6716469 d!2111084))

(declare-fun bs!1787206 () Bool)

(declare-fun d!2111086 () Bool)

(assert (= bs!1787206 (and d!2111086 d!2111082)))

(declare-fun lambda!376753 () Int)

(assert (=> bs!1787206 (= lambda!376753 lambda!376749)))

(declare-fun bs!1787207 () Bool)

(assert (= bs!1787207 (and d!2111086 d!2111018)))

(assert (=> bs!1787207 (= lambda!376753 lambda!376702)))

(declare-fun bs!1787208 () Bool)

(assert (= bs!1787208 (and d!2111086 d!2111070)))

(assert (=> bs!1787208 (= lambda!376753 lambda!376737)))

(declare-fun bs!1787209 () Bool)

(assert (= bs!1787209 (and d!2111086 d!2111084)))

(assert (=> bs!1787209 (= lambda!376753 lambda!376752)))

(declare-fun bs!1787210 () Bool)

(assert (= bs!1787210 (and d!2111086 d!2111080)))

(assert (=> bs!1787210 (= lambda!376753 lambda!376746)))

(assert (=> d!2111086 (= (inv!84609 (Context!11859 Nil!65810)) (forall!15745 (exprs!6429 (Context!11859 Nil!65810)) lambda!376753))))

(declare-fun bs!1787211 () Bool)

(assert (= bs!1787211 d!2111086))

(declare-fun m!7480252 () Bool)

(assert (=> bs!1787211 m!7480252))

(assert (=> b!6716477 d!2111086))

(declare-fun bm!606202 () Bool)

(declare-fun call!606207 () (InoxSet Context!11858))

(declare-fun derivationStepZipperDown!1773 (Regex!16545 Context!11858 C!33360) (InoxSet Context!11858))

(assert (=> bm!606202 (= call!606207 (derivationStepZipperDown!1773 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))) (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (h!72260 s!2326)))))

(declare-fun b!6717025 () Bool)

(declare-fun e!4059043 () Bool)

(assert (=> b!6717025 (= e!4059043 (nullable!6532 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))

(declare-fun b!6717026 () Bool)

(declare-fun e!4059044 () (InoxSet Context!11858))

(declare-fun e!4059045 () (InoxSet Context!11858))

(assert (=> b!6717026 (= e!4059044 e!4059045)))

(declare-fun c!1245365 () Bool)

(assert (=> b!6717026 (= c!1245365 ((_ is Cons!65810) (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))

(declare-fun b!6717027 () Bool)

(assert (=> b!6717027 (= e!4059045 ((as const (Array Context!11858 Bool)) false))))

(declare-fun b!6717028 () Bool)

(assert (=> b!6717028 (= e!4059045 call!606207)))

(declare-fun d!2111088 () Bool)

(declare-fun c!1245364 () Bool)

(assert (=> d!2111088 (= c!1245364 e!4059043)))

(declare-fun res!2748904 () Bool)

(assert (=> d!2111088 (=> (not res!2748904) (not e!4059043))))

(assert (=> d!2111088 (= res!2748904 ((_ is Cons!65810) (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))

(assert (=> d!2111088 (= (derivationStepZipperUp!1699 (Context!11859 (Cons!65810 r!7292 Nil!65810)) (h!72260 s!2326)) e!4059044)))

(declare-fun b!6717029 () Bool)

(assert (=> b!6717029 (= e!4059044 ((_ map or) call!606207 (derivationStepZipperUp!1699 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (h!72260 s!2326))))))

(assert (= (and d!2111088 res!2748904) b!6717025))

(assert (= (and d!2111088 c!1245364) b!6717029))

(assert (= (and d!2111088 (not c!1245364)) b!6717026))

(assert (= (and b!6717026 c!1245365) b!6717028))

(assert (= (and b!6717026 (not c!1245365)) b!6717027))

(assert (= (or b!6717029 b!6717028) bm!606202))

(declare-fun m!7480254 () Bool)

(assert (=> bm!606202 m!7480254))

(declare-fun m!7480256 () Bool)

(assert (=> b!6717025 m!7480256))

(declare-fun m!7480258 () Bool)

(assert (=> b!6717029 m!7480258))

(assert (=> b!6716477 d!2111088))

(declare-fun b!6717034 () Bool)

(declare-fun e!4059048 () Bool)

(declare-fun tp!1840824 () Bool)

(declare-fun tp!1840825 () Bool)

(assert (=> b!6717034 (= e!4059048 (and tp!1840824 tp!1840825))))

(assert (=> b!6716480 (= tp!1840755 e!4059048)))

(assert (= (and b!6716480 ((_ is Cons!65810) (exprs!6429 (h!72259 zl!343)))) b!6717034))

(declare-fun condSetEmpty!45791 () Bool)

(assert (=> setNonEmpty!45785 (= condSetEmpty!45791 (= setRest!45785 ((as const (Array Context!11858 Bool)) false)))))

(declare-fun setRes!45791 () Bool)

(assert (=> setNonEmpty!45785 (= tp!1840759 setRes!45791)))

(declare-fun setIsEmpty!45791 () Bool)

(assert (=> setIsEmpty!45791 setRes!45791))

(declare-fun tp!1840831 () Bool)

(declare-fun setElem!45791 () Context!11858)

(declare-fun setNonEmpty!45791 () Bool)

(declare-fun e!4059051 () Bool)

(assert (=> setNonEmpty!45791 (= setRes!45791 (and tp!1840831 (inv!84609 setElem!45791) e!4059051))))

(declare-fun setRest!45791 () (InoxSet Context!11858))

(assert (=> setNonEmpty!45791 (= setRest!45785 ((_ map or) (store ((as const (Array Context!11858 Bool)) false) setElem!45791 true) setRest!45791))))

(declare-fun b!6717039 () Bool)

(declare-fun tp!1840830 () Bool)

(assert (=> b!6717039 (= e!4059051 tp!1840830)))

(assert (= (and setNonEmpty!45785 condSetEmpty!45791) setIsEmpty!45791))

(assert (= (and setNonEmpty!45785 (not condSetEmpty!45791)) setNonEmpty!45791))

(assert (= setNonEmpty!45791 b!6717039))

(declare-fun m!7480260 () Bool)

(assert (=> setNonEmpty!45791 m!7480260))

(declare-fun b!6717052 () Bool)

(declare-fun e!4059054 () Bool)

(declare-fun tp!1840842 () Bool)

(assert (=> b!6717052 (= e!4059054 tp!1840842)))

(declare-fun b!6717051 () Bool)

(declare-fun tp!1840846 () Bool)

(declare-fun tp!1840845 () Bool)

(assert (=> b!6717051 (= e!4059054 (and tp!1840846 tp!1840845))))

(assert (=> b!6716470 (= tp!1840756 e!4059054)))

(declare-fun b!6717053 () Bool)

(declare-fun tp!1840844 () Bool)

(declare-fun tp!1840843 () Bool)

(assert (=> b!6717053 (= e!4059054 (and tp!1840844 tp!1840843))))

(declare-fun b!6717050 () Bool)

(assert (=> b!6717050 (= e!4059054 tp_is_empty!42343)))

(assert (= (and b!6716470 ((_ is ElementMatch!16545) (regOne!33603 r!7292))) b!6717050))

(assert (= (and b!6716470 ((_ is Concat!25390) (regOne!33603 r!7292))) b!6717051))

(assert (= (and b!6716470 ((_ is Star!16545) (regOne!33603 r!7292))) b!6717052))

(assert (= (and b!6716470 ((_ is Union!16545) (regOne!33603 r!7292))) b!6717053))

(declare-fun b!6717056 () Bool)

(declare-fun e!4059055 () Bool)

(declare-fun tp!1840847 () Bool)

(assert (=> b!6717056 (= e!4059055 tp!1840847)))

(declare-fun b!6717055 () Bool)

(declare-fun tp!1840851 () Bool)

(declare-fun tp!1840850 () Bool)

(assert (=> b!6717055 (= e!4059055 (and tp!1840851 tp!1840850))))

(assert (=> b!6716470 (= tp!1840754 e!4059055)))

(declare-fun b!6717057 () Bool)

(declare-fun tp!1840849 () Bool)

(declare-fun tp!1840848 () Bool)

(assert (=> b!6717057 (= e!4059055 (and tp!1840849 tp!1840848))))

(declare-fun b!6717054 () Bool)

(assert (=> b!6717054 (= e!4059055 tp_is_empty!42343)))

(assert (= (and b!6716470 ((_ is ElementMatch!16545) (regTwo!33603 r!7292))) b!6717054))

(assert (= (and b!6716470 ((_ is Concat!25390) (regTwo!33603 r!7292))) b!6717055))

(assert (= (and b!6716470 ((_ is Star!16545) (regTwo!33603 r!7292))) b!6717056))

(assert (= (and b!6716470 ((_ is Union!16545) (regTwo!33603 r!7292))) b!6717057))

(declare-fun b!6717058 () Bool)

(declare-fun e!4059056 () Bool)

(declare-fun tp!1840852 () Bool)

(declare-fun tp!1840853 () Bool)

(assert (=> b!6717058 (= e!4059056 (and tp!1840852 tp!1840853))))

(assert (=> b!6716478 (= tp!1840761 e!4059056)))

(assert (= (and b!6716478 ((_ is Cons!65810) (exprs!6429 setElem!45785))) b!6717058))

(declare-fun b!6717061 () Bool)

(declare-fun e!4059057 () Bool)

(declare-fun tp!1840854 () Bool)

(assert (=> b!6717061 (= e!4059057 tp!1840854)))

(declare-fun b!6717060 () Bool)

(declare-fun tp!1840858 () Bool)

(declare-fun tp!1840857 () Bool)

(assert (=> b!6717060 (= e!4059057 (and tp!1840858 tp!1840857))))

(assert (=> b!6716474 (= tp!1840760 e!4059057)))

(declare-fun b!6717062 () Bool)

(declare-fun tp!1840856 () Bool)

(declare-fun tp!1840855 () Bool)

(assert (=> b!6717062 (= e!4059057 (and tp!1840856 tp!1840855))))

(declare-fun b!6717059 () Bool)

(assert (=> b!6717059 (= e!4059057 tp_is_empty!42343)))

(assert (= (and b!6716474 ((_ is ElementMatch!16545) (regOne!33602 r!7292))) b!6717059))

(assert (= (and b!6716474 ((_ is Concat!25390) (regOne!33602 r!7292))) b!6717060))

(assert (= (and b!6716474 ((_ is Star!16545) (regOne!33602 r!7292))) b!6717061))

(assert (= (and b!6716474 ((_ is Union!16545) (regOne!33602 r!7292))) b!6717062))

(declare-fun b!6717065 () Bool)

(declare-fun e!4059058 () Bool)

(declare-fun tp!1840859 () Bool)

(assert (=> b!6717065 (= e!4059058 tp!1840859)))

(declare-fun b!6717064 () Bool)

(declare-fun tp!1840863 () Bool)

(declare-fun tp!1840862 () Bool)

(assert (=> b!6717064 (= e!4059058 (and tp!1840863 tp!1840862))))

(assert (=> b!6716474 (= tp!1840752 e!4059058)))

(declare-fun b!6717066 () Bool)

(declare-fun tp!1840861 () Bool)

(declare-fun tp!1840860 () Bool)

(assert (=> b!6717066 (= e!4059058 (and tp!1840861 tp!1840860))))

(declare-fun b!6717063 () Bool)

(assert (=> b!6717063 (= e!4059058 tp_is_empty!42343)))

(assert (= (and b!6716474 ((_ is ElementMatch!16545) (regTwo!33602 r!7292))) b!6717063))

(assert (= (and b!6716474 ((_ is Concat!25390) (regTwo!33602 r!7292))) b!6717064))

(assert (= (and b!6716474 ((_ is Star!16545) (regTwo!33602 r!7292))) b!6717065))

(assert (= (and b!6716474 ((_ is Union!16545) (regTwo!33602 r!7292))) b!6717066))

(declare-fun b!6717069 () Bool)

(declare-fun e!4059059 () Bool)

(declare-fun tp!1840864 () Bool)

(assert (=> b!6717069 (= e!4059059 tp!1840864)))

(declare-fun b!6717068 () Bool)

(declare-fun tp!1840868 () Bool)

(declare-fun tp!1840867 () Bool)

(assert (=> b!6717068 (= e!4059059 (and tp!1840868 tp!1840867))))

(assert (=> b!6716462 (= tp!1840753 e!4059059)))

(declare-fun b!6717070 () Bool)

(declare-fun tp!1840866 () Bool)

(declare-fun tp!1840865 () Bool)

(assert (=> b!6717070 (= e!4059059 (and tp!1840866 tp!1840865))))

(declare-fun b!6717067 () Bool)

(assert (=> b!6717067 (= e!4059059 tp_is_empty!42343)))

(assert (= (and b!6716462 ((_ is ElementMatch!16545) (reg!16874 r!7292))) b!6717067))

(assert (= (and b!6716462 ((_ is Concat!25390) (reg!16874 r!7292))) b!6717068))

(assert (= (and b!6716462 ((_ is Star!16545) (reg!16874 r!7292))) b!6717069))

(assert (= (and b!6716462 ((_ is Union!16545) (reg!16874 r!7292))) b!6717070))

(declare-fun b!6717078 () Bool)

(declare-fun e!4059065 () Bool)

(declare-fun tp!1840873 () Bool)

(assert (=> b!6717078 (= e!4059065 tp!1840873)))

(declare-fun b!6717077 () Bool)

(declare-fun e!4059064 () Bool)

(declare-fun tp!1840874 () Bool)

(assert (=> b!6717077 (= e!4059064 (and (inv!84609 (h!72259 (t!379612 zl!343))) e!4059065 tp!1840874))))

(assert (=> b!6716473 (= tp!1840758 e!4059064)))

(assert (= b!6717077 b!6717078))

(assert (= (and b!6716473 ((_ is Cons!65811) (t!379612 zl!343))) b!6717077))

(declare-fun m!7480262 () Bool)

(assert (=> b!6717077 m!7480262))

(declare-fun b!6717083 () Bool)

(declare-fun e!4059068 () Bool)

(declare-fun tp!1840877 () Bool)

(assert (=> b!6717083 (= e!4059068 (and tp_is_empty!42343 tp!1840877))))

(assert (=> b!6716468 (= tp!1840757 e!4059068)))

(assert (= (and b!6716468 ((_ is Cons!65812) (t!379613 s!2326))) b!6717083))

(check-sat (not b!6717011) (not b!6717083) (not b!6717009) (not bm!606196) (not bm!606189) (not b!6716829) (not b!6716825) tp_is_empty!42343 (not b!6716977) (not b!6716947) (not d!2111050) (not d!2111086) (not b!6717051) (not b!6717053) (not b!6717014) (not d!2111070) (not b!6716855) (not b!6716828) (not b!6716944) (not bm!606195) (not b!6717025) (not b!6716976) (not b!6716836) (not b!6716983) (not b!6716973) (not b!6716942) (not b!6717061) (not d!2111080) (not b!6717060) (not b!6717064) (not b!6717010) (not b!6717057) (not d!2111038) (not b!6717077) (not b!6716978) (not d!2111076) (not b!6716936) (not d!2111024) (not b!6716896) (not d!2111084) (not b!6717078) (not b!6717069) (not b!6717005) (not b!6717056) (not b!6717006) (not d!2111052) (not b!6717012) (not b!6717039) (not b!6716975) (not bm!606188) (not d!2111016) (not d!2111018) (not b!6717058) (not b!6716943) (not b!6716941) (not b!6717065) (not b!6716972) (not b!6717068) (not d!2111026) (not d!2111058) (not b!6716823) (not b!6716971) (not b!6717055) (not bm!606202) (not b!6717062) (not b!6716903) (not d!2111068) (not b!6717034) (not d!2111082) (not d!2111066) (not setNonEmpty!45791) (not b!6717066) (not d!2111056) (not b!6717070) (not bm!606199) (not b!6717052) (not b!6716827) (not d!2111078) (not b!6716822) (not b!6717029))
(check-sat)
(get-model)

(declare-fun b!6717248 () Bool)

(declare-fun e!4059176 () (InoxSet Context!11858))

(assert (=> b!6717248 (= e!4059176 (store ((as const (Array Context!11858 Bool)) false) (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) true))))

(declare-fun b!6717249 () Bool)

(declare-fun e!4059177 () (InoxSet Context!11858))

(declare-fun e!4059180 () (InoxSet Context!11858))

(assert (=> b!6717249 (= e!4059177 e!4059180)))

(declare-fun c!1245413 () Bool)

(assert (=> b!6717249 (= c!1245413 ((_ is Concat!25390) (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))

(declare-fun b!6717250 () Bool)

(declare-fun call!606255 () (InoxSet Context!11858))

(declare-fun call!606251 () (InoxSet Context!11858))

(assert (=> b!6717250 (= e!4059177 ((_ map or) call!606255 call!606251))))

(declare-fun d!2111150 () Bool)

(declare-fun c!1245414 () Bool)

(assert (=> d!2111150 (= c!1245414 (and ((_ is ElementMatch!16545) (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (= (c!1245233 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (h!72260 s!2326))))))

(assert (=> d!2111150 (= (derivationStepZipperDown!1773 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))) (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (h!72260 s!2326)) e!4059176)))

(declare-fun b!6717251 () Bool)

(declare-fun c!1245412 () Bool)

(declare-fun e!4059181 () Bool)

(assert (=> b!6717251 (= c!1245412 e!4059181)))

(declare-fun res!2748979 () Bool)

(assert (=> b!6717251 (=> (not res!2748979) (not e!4059181))))

(assert (=> b!6717251 (= res!2748979 ((_ is Concat!25390) (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))

(declare-fun e!4059178 () (InoxSet Context!11858))

(assert (=> b!6717251 (= e!4059178 e!4059177)))

(declare-fun bm!606246 () Bool)

(declare-fun call!606254 () List!65934)

(declare-fun c!1245411 () Bool)

(assert (=> bm!606246 (= call!606255 (derivationStepZipperDown!1773 (ite c!1245411 (regTwo!33603 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (regOne!33602 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))) (ite c!1245411 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (Context!11859 call!606254)) (h!72260 s!2326)))))

(declare-fun b!6717252 () Bool)

(declare-fun c!1245415 () Bool)

(assert (=> b!6717252 (= c!1245415 ((_ is Star!16545) (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))

(declare-fun e!4059179 () (InoxSet Context!11858))

(assert (=> b!6717252 (= e!4059180 e!4059179)))

(declare-fun call!606252 () (InoxSet Context!11858))

(declare-fun call!606256 () List!65934)

(declare-fun bm!606247 () Bool)

(assert (=> bm!606247 (= call!606252 (derivationStepZipperDown!1773 (ite c!1245411 (regOne!33603 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (ite c!1245412 (regTwo!33602 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (ite c!1245413 (regOne!33602 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (reg!16874 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))) (ite (or c!1245411 c!1245412) (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (Context!11859 call!606256)) (h!72260 s!2326)))))

(declare-fun bm!606248 () Bool)

(declare-fun $colon$colon!2361 (List!65934 Regex!16545) List!65934)

(assert (=> bm!606248 (= call!606254 ($colon$colon!2361 (exprs!6429 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))) (ite (or c!1245412 c!1245413) (regTwo!33602 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))))

(declare-fun b!6717253 () Bool)

(assert (=> b!6717253 (= e!4059176 e!4059178)))

(assert (=> b!6717253 (= c!1245411 ((_ is Union!16545) (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))

(declare-fun bm!606249 () Bool)

(assert (=> bm!606249 (= call!606256 call!606254)))

(declare-fun b!6717254 () Bool)

(declare-fun call!606253 () (InoxSet Context!11858))

(assert (=> b!6717254 (= e!4059179 call!606253)))

(declare-fun bm!606250 () Bool)

(assert (=> bm!606250 (= call!606251 call!606252)))

(declare-fun b!6717255 () Bool)

(assert (=> b!6717255 (= e!4059179 ((as const (Array Context!11858 Bool)) false))))

(declare-fun bm!606251 () Bool)

(assert (=> bm!606251 (= call!606253 call!606251)))

(declare-fun b!6717256 () Bool)

(assert (=> b!6717256 (= e!4059181 (nullable!6532 (regOne!33602 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))))

(declare-fun b!6717257 () Bool)

(assert (=> b!6717257 (= e!4059178 ((_ map or) call!606252 call!606255))))

(declare-fun b!6717258 () Bool)

(assert (=> b!6717258 (= e!4059180 call!606253)))

(assert (= (and d!2111150 c!1245414) b!6717248))

(assert (= (and d!2111150 (not c!1245414)) b!6717253))

(assert (= (and b!6717253 c!1245411) b!6717257))

(assert (= (and b!6717253 (not c!1245411)) b!6717251))

(assert (= (and b!6717251 res!2748979) b!6717256))

(assert (= (and b!6717251 c!1245412) b!6717250))

(assert (= (and b!6717251 (not c!1245412)) b!6717249))

(assert (= (and b!6717249 c!1245413) b!6717258))

(assert (= (and b!6717249 (not c!1245413)) b!6717252))

(assert (= (and b!6717252 c!1245415) b!6717254))

(assert (= (and b!6717252 (not c!1245415)) b!6717255))

(assert (= (or b!6717258 b!6717254) bm!606249))

(assert (= (or b!6717258 b!6717254) bm!606251))

(assert (= (or b!6717250 bm!606249) bm!606248))

(assert (= (or b!6717250 bm!606251) bm!606250))

(assert (= (or b!6717257 b!6717250) bm!606246))

(assert (= (or b!6717257 bm!606250) bm!606247))

(declare-fun m!7480378 () Bool)

(assert (=> bm!606248 m!7480378))

(declare-fun m!7480380 () Bool)

(assert (=> b!6717248 m!7480380))

(declare-fun m!7480382 () Bool)

(assert (=> bm!606247 m!7480382))

(declare-fun m!7480384 () Bool)

(assert (=> b!6717256 m!7480384))

(declare-fun m!7480386 () Bool)

(assert (=> bm!606246 m!7480386))

(assert (=> bm!606202 d!2111150))

(declare-fun d!2111164 () Bool)

(assert (=> d!2111164 (= (isDefined!13135 lt!2436442) (not (isEmpty!38133 lt!2436442)))))

(declare-fun bs!1787261 () Bool)

(assert (= bs!1787261 d!2111164))

(declare-fun m!7480388 () Bool)

(assert (=> bs!1787261 m!7480388))

(assert (=> d!2111058 d!2111164))

(declare-fun b!6717259 () Bool)

(declare-fun res!2748981 () Bool)

(declare-fun e!4059187 () Bool)

(assert (=> b!6717259 (=> res!2748981 e!4059187)))

(declare-fun e!4059182 () Bool)

(assert (=> b!6717259 (= res!2748981 e!4059182)))

(declare-fun res!2748985 () Bool)

(assert (=> b!6717259 (=> (not res!2748985) (not e!4059182))))

(declare-fun lt!2436468 () Bool)

(assert (=> b!6717259 (= res!2748985 lt!2436468)))

(declare-fun b!6717260 () Bool)

(declare-fun res!2748982 () Bool)

(declare-fun e!4059184 () Bool)

(assert (=> b!6717260 (=> res!2748982 e!4059184)))

(assert (=> b!6717260 (= res!2748982 (not (isEmpty!38129 (tail!12602 Nil!65812))))))

(declare-fun b!6717262 () Bool)

(declare-fun e!4059185 () Bool)

(assert (=> b!6717262 (= e!4059185 (not lt!2436468))))

(declare-fun b!6717263 () Bool)

(declare-fun res!2748983 () Bool)

(assert (=> b!6717263 (=> res!2748983 e!4059187)))

(assert (=> b!6717263 (= res!2748983 (not ((_ is ElementMatch!16545) (reg!16874 r!7292))))))

(assert (=> b!6717263 (= e!4059185 e!4059187)))

(declare-fun b!6717264 () Bool)

(declare-fun e!4059188 () Bool)

(declare-fun call!606257 () Bool)

(assert (=> b!6717264 (= e!4059188 (= lt!2436468 call!606257))))

(declare-fun b!6717265 () Bool)

(declare-fun e!4059183 () Bool)

(assert (=> b!6717265 (= e!4059183 (nullable!6532 (reg!16874 r!7292)))))

(declare-fun b!6717266 () Bool)

(assert (=> b!6717266 (= e!4059182 (= (head!13517 Nil!65812) (c!1245233 (reg!16874 r!7292))))))

(declare-fun b!6717267 () Bool)

(declare-fun res!2748987 () Bool)

(assert (=> b!6717267 (=> (not res!2748987) (not e!4059182))))

(assert (=> b!6717267 (= res!2748987 (isEmpty!38129 (tail!12602 Nil!65812)))))

(declare-fun b!6717268 () Bool)

(assert (=> b!6717268 (= e!4059184 (not (= (head!13517 Nil!65812) (c!1245233 (reg!16874 r!7292)))))))

(declare-fun b!6717269 () Bool)

(declare-fun res!2748980 () Bool)

(assert (=> b!6717269 (=> (not res!2748980) (not e!4059182))))

(assert (=> b!6717269 (= res!2748980 (not call!606257))))

(declare-fun b!6717270 () Bool)

(declare-fun e!4059186 () Bool)

(assert (=> b!6717270 (= e!4059186 e!4059184)))

(declare-fun res!2748986 () Bool)

(assert (=> b!6717270 (=> res!2748986 e!4059184)))

(assert (=> b!6717270 (= res!2748986 call!606257)))

(declare-fun b!6717271 () Bool)

(assert (=> b!6717271 (= e!4059183 (matchR!8728 (derivativeStep!5217 (reg!16874 r!7292) (head!13517 Nil!65812)) (tail!12602 Nil!65812)))))

(declare-fun d!2111166 () Bool)

(assert (=> d!2111166 e!4059188))

(declare-fun c!1245416 () Bool)

(assert (=> d!2111166 (= c!1245416 ((_ is EmptyExpr!16545) (reg!16874 r!7292)))))

(assert (=> d!2111166 (= lt!2436468 e!4059183)))

(declare-fun c!1245418 () Bool)

(assert (=> d!2111166 (= c!1245418 (isEmpty!38129 Nil!65812))))

(assert (=> d!2111166 (validRegex!8281 (reg!16874 r!7292))))

(assert (=> d!2111166 (= (matchR!8728 (reg!16874 r!7292) Nil!65812) lt!2436468)))

(declare-fun b!6717261 () Bool)

(assert (=> b!6717261 (= e!4059187 e!4059186)))

(declare-fun res!2748984 () Bool)

(assert (=> b!6717261 (=> (not res!2748984) (not e!4059186))))

(assert (=> b!6717261 (= res!2748984 (not lt!2436468))))

(declare-fun b!6717272 () Bool)

(assert (=> b!6717272 (= e!4059188 e!4059185)))

(declare-fun c!1245417 () Bool)

(assert (=> b!6717272 (= c!1245417 ((_ is EmptyLang!16545) (reg!16874 r!7292)))))

(declare-fun bm!606252 () Bool)

(assert (=> bm!606252 (= call!606257 (isEmpty!38129 Nil!65812))))

(assert (= (and d!2111166 c!1245418) b!6717265))

(assert (= (and d!2111166 (not c!1245418)) b!6717271))

(assert (= (and d!2111166 c!1245416) b!6717264))

(assert (= (and d!2111166 (not c!1245416)) b!6717272))

(assert (= (and b!6717272 c!1245417) b!6717262))

(assert (= (and b!6717272 (not c!1245417)) b!6717263))

(assert (= (and b!6717263 (not res!2748983)) b!6717259))

(assert (= (and b!6717259 res!2748985) b!6717269))

(assert (= (and b!6717269 res!2748980) b!6717267))

(assert (= (and b!6717267 res!2748987) b!6717266))

(assert (= (and b!6717259 (not res!2748981)) b!6717261))

(assert (= (and b!6717261 res!2748984) b!6717270))

(assert (= (and b!6717270 (not res!2748986)) b!6717260))

(assert (= (and b!6717260 (not res!2748982)) b!6717268))

(assert (= (or b!6717264 b!6717270 b!6717269) bm!606252))

(assert (=> b!6717265 m!7480182))

(declare-fun m!7480390 () Bool)

(assert (=> bm!606252 m!7480390))

(declare-fun m!7480392 () Bool)

(assert (=> b!6717271 m!7480392))

(assert (=> b!6717271 m!7480392))

(declare-fun m!7480394 () Bool)

(assert (=> b!6717271 m!7480394))

(declare-fun m!7480396 () Bool)

(assert (=> b!6717271 m!7480396))

(assert (=> b!6717271 m!7480394))

(assert (=> b!6717271 m!7480396))

(declare-fun m!7480398 () Bool)

(assert (=> b!6717271 m!7480398))

(assert (=> d!2111166 m!7480390))

(assert (=> d!2111166 m!7480072))

(assert (=> b!6717268 m!7480392))

(assert (=> b!6717267 m!7480396))

(assert (=> b!6717267 m!7480396))

(declare-fun m!7480400 () Bool)

(assert (=> b!6717267 m!7480400))

(assert (=> b!6717266 m!7480392))

(assert (=> b!6717260 m!7480396))

(assert (=> b!6717260 m!7480396))

(assert (=> b!6717260 m!7480400))

(assert (=> d!2111058 d!2111166))

(declare-fun b!6717273 () Bool)

(declare-fun e!4059190 () Bool)

(declare-fun e!4059195 () Bool)

(assert (=> b!6717273 (= e!4059190 e!4059195)))

(declare-fun res!2748992 () Bool)

(assert (=> b!6717273 (= res!2748992 (not (nullable!6532 (reg!16874 (reg!16874 r!7292)))))))

(assert (=> b!6717273 (=> (not res!2748992) (not e!4059195))))

(declare-fun bm!606253 () Bool)

(declare-fun call!606259 () Bool)

(declare-fun c!1245420 () Bool)

(assert (=> bm!606253 (= call!606259 (validRegex!8281 (ite c!1245420 (regTwo!33603 (reg!16874 r!7292)) (regTwo!33602 (reg!16874 r!7292)))))))

(declare-fun c!1245419 () Bool)

(declare-fun call!606260 () Bool)

(declare-fun bm!606254 () Bool)

(assert (=> bm!606254 (= call!606260 (validRegex!8281 (ite c!1245419 (reg!16874 (reg!16874 r!7292)) (ite c!1245420 (regOne!33603 (reg!16874 r!7292)) (regOne!33602 (reg!16874 r!7292))))))))

(declare-fun b!6717274 () Bool)

(declare-fun e!4059189 () Bool)

(assert (=> b!6717274 (= e!4059190 e!4059189)))

(assert (=> b!6717274 (= c!1245420 ((_ is Union!16545) (reg!16874 r!7292)))))

(declare-fun d!2111172 () Bool)

(declare-fun res!2748988 () Bool)

(declare-fun e!4059194 () Bool)

(assert (=> d!2111172 (=> res!2748988 e!4059194)))

(assert (=> d!2111172 (= res!2748988 ((_ is ElementMatch!16545) (reg!16874 r!7292)))))

(assert (=> d!2111172 (= (validRegex!8281 (reg!16874 r!7292)) e!4059194)))

(declare-fun b!6717275 () Bool)

(declare-fun res!2748990 () Bool)

(declare-fun e!4059193 () Bool)

(assert (=> b!6717275 (=> res!2748990 e!4059193)))

(assert (=> b!6717275 (= res!2748990 (not ((_ is Concat!25390) (reg!16874 r!7292))))))

(assert (=> b!6717275 (= e!4059189 e!4059193)))

(declare-fun b!6717276 () Bool)

(declare-fun e!4059191 () Bool)

(assert (=> b!6717276 (= e!4059193 e!4059191)))

(declare-fun res!2748991 () Bool)

(assert (=> b!6717276 (=> (not res!2748991) (not e!4059191))))

(declare-fun call!606258 () Bool)

(assert (=> b!6717276 (= res!2748991 call!606258)))

(declare-fun b!6717277 () Bool)

(assert (=> b!6717277 (= e!4059195 call!606260)))

(declare-fun b!6717278 () Bool)

(assert (=> b!6717278 (= e!4059194 e!4059190)))

(assert (=> b!6717278 (= c!1245419 ((_ is Star!16545) (reg!16874 r!7292)))))

(declare-fun b!6717279 () Bool)

(declare-fun res!2748989 () Bool)

(declare-fun e!4059192 () Bool)

(assert (=> b!6717279 (=> (not res!2748989) (not e!4059192))))

(assert (=> b!6717279 (= res!2748989 call!606258)))

(assert (=> b!6717279 (= e!4059189 e!4059192)))

(declare-fun bm!606255 () Bool)

(assert (=> bm!606255 (= call!606258 call!606260)))

(declare-fun b!6717280 () Bool)

(assert (=> b!6717280 (= e!4059192 call!606259)))

(declare-fun b!6717281 () Bool)

(assert (=> b!6717281 (= e!4059191 call!606259)))

(assert (= (and d!2111172 (not res!2748988)) b!6717278))

(assert (= (and b!6717278 c!1245419) b!6717273))

(assert (= (and b!6717278 (not c!1245419)) b!6717274))

(assert (= (and b!6717273 res!2748992) b!6717277))

(assert (= (and b!6717274 c!1245420) b!6717279))

(assert (= (and b!6717274 (not c!1245420)) b!6717275))

(assert (= (and b!6717279 res!2748989) b!6717280))

(assert (= (and b!6717275 (not res!2748990)) b!6717276))

(assert (= (and b!6717276 res!2748991) b!6717281))

(assert (= (or b!6717280 b!6717281) bm!606253))

(assert (= (or b!6717279 b!6717276) bm!606255))

(assert (= (or b!6717277 bm!606255) bm!606254))

(declare-fun m!7480404 () Bool)

(assert (=> b!6717273 m!7480404))

(declare-fun m!7480406 () Bool)

(assert (=> bm!606253 m!7480406))

(declare-fun m!7480408 () Bool)

(assert (=> bm!606254 m!7480408))

(assert (=> d!2111058 d!2111172))

(declare-fun bs!1787264 () Bool)

(declare-fun b!6717300 () Bool)

(assert (= bs!1787264 (and b!6717300 b!6716899)))

(declare-fun lambda!376765 () Int)

(assert (=> bs!1787264 (not (= lambda!376765 lambda!376743))))

(declare-fun bs!1787265 () Bool)

(assert (= bs!1787265 (and b!6717300 b!6716464)))

(assert (=> bs!1787265 (= (and (= (reg!16874 (regOne!33603 r!7292)) (reg!16874 r!7292)) (= (regOne!33603 r!7292) r!7292)) (= lambda!376765 lambda!376682))))

(declare-fun bs!1787266 () Bool)

(assert (= bs!1787266 (and b!6717300 d!2111038)))

(assert (=> bs!1787266 (not (= lambda!376765 lambda!376726))))

(assert (=> bs!1787265 (not (= lambda!376765 lambda!376683))))

(declare-fun bs!1787268 () Bool)

(assert (= bs!1787268 (and b!6717300 b!6716900)))

(assert (=> bs!1787268 (= (and (= (reg!16874 (regOne!33603 r!7292)) (reg!16874 r!7292)) (= (regOne!33603 r!7292) r!7292)) (= lambda!376765 lambda!376742))))

(declare-fun bs!1787270 () Bool)

(assert (= bs!1787270 (and b!6717300 d!2111026)))

(assert (=> bs!1787270 (not (= lambda!376765 lambda!376713))))

(assert (=> bs!1787266 (= (and (= (reg!16874 (regOne!33603 r!7292)) (reg!16874 r!7292)) (= (regOne!33603 r!7292) (Star!16545 (reg!16874 r!7292)))) (= lambda!376765 lambda!376729))))

(declare-fun bs!1787271 () Bool)

(assert (= bs!1787271 (and b!6717300 d!2111066)))

(assert (=> bs!1787271 (not (= lambda!376765 lambda!376736))))

(assert (=> bs!1787265 (not (= lambda!376765 lambda!376681))))

(assert (=> bs!1787270 (not (= lambda!376765 lambda!376714))))

(assert (=> b!6717300 true))

(assert (=> b!6717300 true))

(declare-fun bs!1787272 () Bool)

(declare-fun b!6717299 () Bool)

(assert (= bs!1787272 (and b!6717299 b!6716899)))

(declare-fun lambda!376766 () Int)

(assert (=> bs!1787272 (= (and (= (regOne!33602 (regOne!33603 r!7292)) (regOne!33602 r!7292)) (= (regTwo!33602 (regOne!33603 r!7292)) (regTwo!33602 r!7292))) (= lambda!376766 lambda!376743))))

(declare-fun bs!1787273 () Bool)

(assert (= bs!1787273 (and b!6717299 b!6717300)))

(assert (=> bs!1787273 (not (= lambda!376766 lambda!376765))))

(declare-fun bs!1787274 () Bool)

(assert (= bs!1787274 (and b!6717299 b!6716464)))

(assert (=> bs!1787274 (not (= lambda!376766 lambda!376682))))

(declare-fun bs!1787275 () Bool)

(assert (= bs!1787275 (and b!6717299 d!2111038)))

(assert (=> bs!1787275 (not (= lambda!376766 lambda!376726))))

(assert (=> bs!1787274 (= (and (= (regOne!33602 (regOne!33603 r!7292)) (reg!16874 r!7292)) (= (regTwo!33602 (regOne!33603 r!7292)) r!7292)) (= lambda!376766 lambda!376683))))

(declare-fun bs!1787276 () Bool)

(assert (= bs!1787276 (and b!6717299 b!6716900)))

(assert (=> bs!1787276 (not (= lambda!376766 lambda!376742))))

(declare-fun bs!1787277 () Bool)

(assert (= bs!1787277 (and b!6717299 d!2111026)))

(assert (=> bs!1787277 (not (= lambda!376766 lambda!376713))))

(assert (=> bs!1787275 (not (= lambda!376766 lambda!376729))))

(declare-fun bs!1787278 () Bool)

(assert (= bs!1787278 (and b!6717299 d!2111066)))

(assert (=> bs!1787278 (not (= lambda!376766 lambda!376736))))

(assert (=> bs!1787274 (not (= lambda!376766 lambda!376681))))

(assert (=> bs!1787277 (= (and (= (regOne!33602 (regOne!33603 r!7292)) (reg!16874 r!7292)) (= (regTwo!33602 (regOne!33603 r!7292)) r!7292)) (= lambda!376766 lambda!376714))))

(assert (=> b!6717299 true))

(assert (=> b!6717299 true))

(declare-fun b!6717296 () Bool)

(declare-fun e!4059205 () Bool)

(assert (=> b!6717296 (= e!4059205 (matchRSpec!3646 (regTwo!33603 (regOne!33603 r!7292)) s!2326))))

(declare-fun b!6717297 () Bool)

(declare-fun c!1245427 () Bool)

(assert (=> b!6717297 (= c!1245427 ((_ is Union!16545) (regOne!33603 r!7292)))))

(declare-fun e!4059207 () Bool)

(declare-fun e!4059204 () Bool)

(assert (=> b!6717297 (= e!4059207 e!4059204)))

(declare-fun b!6717298 () Bool)

(assert (=> b!6717298 (= e!4059207 (= s!2326 (Cons!65812 (c!1245233 (regOne!33603 r!7292)) Nil!65812)))))

(declare-fun call!606262 () Bool)

(declare-fun c!1245424 () Bool)

(declare-fun bm!606257 () Bool)

(assert (=> bm!606257 (= call!606262 (Exists!3613 (ite c!1245424 lambda!376765 lambda!376766)))))

(declare-fun e!4059209 () Bool)

(assert (=> b!6717299 (= e!4059209 call!606262)))

(declare-fun e!4059203 () Bool)

(assert (=> b!6717300 (= e!4059203 call!606262)))

(declare-fun b!6717301 () Bool)

(declare-fun c!1245425 () Bool)

(assert (=> b!6717301 (= c!1245425 ((_ is ElementMatch!16545) (regOne!33603 r!7292)))))

(declare-fun e!4059208 () Bool)

(assert (=> b!6717301 (= e!4059208 e!4059207)))

(declare-fun b!6717302 () Bool)

(declare-fun e!4059206 () Bool)

(declare-fun call!606263 () Bool)

(assert (=> b!6717302 (= e!4059206 call!606263)))

(declare-fun b!6717303 () Bool)

(assert (=> b!6717303 (= e!4059204 e!4059205)))

(declare-fun res!2749001 () Bool)

(assert (=> b!6717303 (= res!2749001 (matchRSpec!3646 (regOne!33603 (regOne!33603 r!7292)) s!2326))))

(assert (=> b!6717303 (=> res!2749001 e!4059205)))

(declare-fun bm!606258 () Bool)

(assert (=> bm!606258 (= call!606263 (isEmpty!38129 s!2326))))

(declare-fun b!6717305 () Bool)

(assert (=> b!6717305 (= e!4059204 e!4059209)))

(assert (=> b!6717305 (= c!1245424 ((_ is Star!16545) (regOne!33603 r!7292)))))

(declare-fun b!6717306 () Bool)

(assert (=> b!6717306 (= e!4059206 e!4059208)))

(declare-fun res!2749002 () Bool)

(assert (=> b!6717306 (= res!2749002 (not ((_ is EmptyLang!16545) (regOne!33603 r!7292))))))

(assert (=> b!6717306 (=> (not res!2749002) (not e!4059208))))

(declare-fun d!2111176 () Bool)

(declare-fun c!1245426 () Bool)

(assert (=> d!2111176 (= c!1245426 ((_ is EmptyExpr!16545) (regOne!33603 r!7292)))))

(assert (=> d!2111176 (= (matchRSpec!3646 (regOne!33603 r!7292) s!2326) e!4059206)))

(declare-fun b!6717304 () Bool)

(declare-fun res!2749003 () Bool)

(assert (=> b!6717304 (=> res!2749003 e!4059203)))

(assert (=> b!6717304 (= res!2749003 call!606263)))

(assert (=> b!6717304 (= e!4059209 e!4059203)))

(assert (= (and d!2111176 c!1245426) b!6717302))

(assert (= (and d!2111176 (not c!1245426)) b!6717306))

(assert (= (and b!6717306 res!2749002) b!6717301))

(assert (= (and b!6717301 c!1245425) b!6717298))

(assert (= (and b!6717301 (not c!1245425)) b!6717297))

(assert (= (and b!6717297 c!1245427) b!6717303))

(assert (= (and b!6717297 (not c!1245427)) b!6717305))

(assert (= (and b!6717303 (not res!2749001)) b!6717296))

(assert (= (and b!6717305 c!1245424) b!6717304))

(assert (= (and b!6717305 (not c!1245424)) b!6717299))

(assert (= (and b!6717304 (not res!2749003)) b!6717300))

(assert (= (or b!6717300 b!6717299) bm!606257))

(assert (= (or b!6717302 b!6717304) bm!606258))

(declare-fun m!7480430 () Bool)

(assert (=> b!6717296 m!7480430))

(declare-fun m!7480432 () Bool)

(assert (=> bm!606257 m!7480432))

(declare-fun m!7480434 () Bool)

(assert (=> b!6717303 m!7480434))

(assert (=> bm!606258 m!7479950))

(assert (=> b!6716903 d!2111176))

(declare-fun b!6717309 () Bool)

(declare-fun e!4059213 () Bool)

(declare-fun e!4059218 () Bool)

(assert (=> b!6717309 (= e!4059213 e!4059218)))

(declare-fun res!2749010 () Bool)

(assert (=> b!6717309 (= res!2749010 (not (nullable!6532 (reg!16874 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))))))))

(assert (=> b!6717309 (=> (not res!2749010) (not e!4059218))))

(declare-fun bm!606259 () Bool)

(declare-fun c!1245429 () Bool)

(declare-fun call!606265 () Bool)

(assert (=> bm!606259 (= call!606265 (validRegex!8281 (ite c!1245429 (regTwo!33603 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))) (regTwo!33602 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))))))))

(declare-fun bm!606260 () Bool)

(declare-fun c!1245428 () Bool)

(declare-fun call!606266 () Bool)

(assert (=> bm!606260 (= call!606266 (validRegex!8281 (ite c!1245428 (reg!16874 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))) (ite c!1245429 (regOne!33603 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))) (regOne!33602 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292)))))))))

(declare-fun b!6717310 () Bool)

(declare-fun e!4059212 () Bool)

(assert (=> b!6717310 (= e!4059213 e!4059212)))

(assert (=> b!6717310 (= c!1245429 ((_ is Union!16545) (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))))))

(declare-fun d!2111186 () Bool)

(declare-fun res!2749006 () Bool)

(declare-fun e!4059217 () Bool)

(assert (=> d!2111186 (=> res!2749006 e!4059217)))

(assert (=> d!2111186 (= res!2749006 ((_ is ElementMatch!16545) (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))))))

(assert (=> d!2111186 (= (validRegex!8281 (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))) e!4059217)))

(declare-fun b!6717311 () Bool)

(declare-fun res!2749008 () Bool)

(declare-fun e!4059216 () Bool)

(assert (=> b!6717311 (=> res!2749008 e!4059216)))

(assert (=> b!6717311 (= res!2749008 (not ((_ is Concat!25390) (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292)))))))

(assert (=> b!6717311 (= e!4059212 e!4059216)))

(declare-fun b!6717312 () Bool)

(declare-fun e!4059214 () Bool)

(assert (=> b!6717312 (= e!4059216 e!4059214)))

(declare-fun res!2749009 () Bool)

(assert (=> b!6717312 (=> (not res!2749009) (not e!4059214))))

(declare-fun call!606264 () Bool)

(assert (=> b!6717312 (= res!2749009 call!606264)))

(declare-fun b!6717313 () Bool)

(assert (=> b!6717313 (= e!4059218 call!606266)))

(declare-fun b!6717314 () Bool)

(assert (=> b!6717314 (= e!4059217 e!4059213)))

(assert (=> b!6717314 (= c!1245428 ((_ is Star!16545) (ite c!1245311 (regTwo!33603 r!7292) (regTwo!33602 r!7292))))))

(declare-fun b!6717315 () Bool)

(declare-fun res!2749007 () Bool)

(declare-fun e!4059215 () Bool)

(assert (=> b!6717315 (=> (not res!2749007) (not e!4059215))))

(assert (=> b!6717315 (= res!2749007 call!606264)))

(assert (=> b!6717315 (= e!4059212 e!4059215)))

(declare-fun bm!606261 () Bool)

(assert (=> bm!606261 (= call!606264 call!606266)))

(declare-fun b!6717316 () Bool)

(assert (=> b!6717316 (= e!4059215 call!606265)))

(declare-fun b!6717317 () Bool)

(assert (=> b!6717317 (= e!4059214 call!606265)))

(assert (= (and d!2111186 (not res!2749006)) b!6717314))

(assert (= (and b!6717314 c!1245428) b!6717309))

(assert (= (and b!6717314 (not c!1245428)) b!6717310))

(assert (= (and b!6717309 res!2749010) b!6717313))

(assert (= (and b!6717310 c!1245429) b!6717315))

(assert (= (and b!6717310 (not c!1245429)) b!6717311))

(assert (= (and b!6717315 res!2749007) b!6717316))

(assert (= (and b!6717311 (not res!2749008)) b!6717312))

(assert (= (and b!6717312 res!2749009) b!6717317))

(assert (= (or b!6717316 b!6717317) bm!606259))

(assert (= (or b!6717315 b!6717312) bm!606261))

(assert (= (or b!6717313 bm!606261) bm!606260))

(declare-fun m!7480436 () Bool)

(assert (=> b!6717309 m!7480436))

(declare-fun m!7480438 () Bool)

(assert (=> bm!606259 m!7480438))

(declare-fun m!7480440 () Bool)

(assert (=> bm!606260 m!7480440))

(assert (=> bm!606188 d!2111186))

(declare-fun d!2111188 () Bool)

(declare-fun nullableFct!2446 (Regex!16545) Bool)

(assert (=> d!2111188 (= (nullable!6532 r!7292) (nullableFct!2446 r!7292))))

(declare-fun bs!1787279 () Bool)

(assert (= bs!1787279 d!2111188))

(declare-fun m!7480442 () Bool)

(assert (=> bs!1787279 m!7480442))

(assert (=> b!6716941 d!2111188))

(declare-fun d!2111190 () Bool)

(assert (=> d!2111190 (= (isEmptyLang!1919 lt!2436458) ((_ is EmptyLang!16545) lt!2436458))))

(assert (=> b!6716975 d!2111190))

(declare-fun d!2111192 () Bool)

(assert (=> d!2111192 (= (isEmpty!38129 (tail!12602 s!2326)) ((_ is Nil!65812) (tail!12602 s!2326)))))

(assert (=> b!6716943 d!2111192))

(declare-fun d!2111194 () Bool)

(assert (=> d!2111194 (= (tail!12602 s!2326) (t!379613 s!2326))))

(assert (=> b!6716943 d!2111194))

(declare-fun d!2111196 () Bool)

(assert (=> d!2111196 (= (isEmpty!38134 (tail!12603 (unfocusZipperList!1966 zl!343))) ((_ is Nil!65810) (tail!12603 (unfocusZipperList!1966 zl!343))))))

(assert (=> b!6716977 d!2111196))

(declare-fun d!2111198 () Bool)

(assert (=> d!2111198 (= (tail!12603 (unfocusZipperList!1966 zl!343)) (t!379611 (unfocusZipperList!1966 zl!343)))))

(assert (=> b!6716977 d!2111198))

(declare-fun bs!1787280 () Bool)

(declare-fun d!2111200 () Bool)

(assert (= bs!1787280 (and d!2111200 d!2111082)))

(declare-fun lambda!376771 () Int)

(assert (=> bs!1787280 (= lambda!376771 lambda!376749)))

(declare-fun bs!1787281 () Bool)

(assert (= bs!1787281 (and d!2111200 d!2111086)))

(assert (=> bs!1787281 (= lambda!376771 lambda!376753)))

(declare-fun bs!1787282 () Bool)

(assert (= bs!1787282 (and d!2111200 d!2111018)))

(assert (=> bs!1787282 (= lambda!376771 lambda!376702)))

(declare-fun bs!1787283 () Bool)

(assert (= bs!1787283 (and d!2111200 d!2111070)))

(assert (=> bs!1787283 (= lambda!376771 lambda!376737)))

(declare-fun bs!1787284 () Bool)

(assert (= bs!1787284 (and d!2111200 d!2111084)))

(assert (=> bs!1787284 (= lambda!376771 lambda!376752)))

(declare-fun bs!1787285 () Bool)

(assert (= bs!1787285 (and d!2111200 d!2111080)))

(assert (=> bs!1787285 (= lambda!376771 lambda!376746)))

(declare-fun e!4059222 () Bool)

(assert (=> d!2111200 e!4059222))

(declare-fun res!2749018 () Bool)

(assert (=> d!2111200 (=> (not res!2749018) (not e!4059222))))

(declare-fun lt!2436470 () Regex!16545)

(assert (=> d!2111200 (= res!2749018 (validRegex!8281 lt!2436470))))

(declare-fun e!4059226 () Regex!16545)

(assert (=> d!2111200 (= lt!2436470 e!4059226)))

(declare-fun c!1245431 () Bool)

(declare-fun e!4059225 () Bool)

(assert (=> d!2111200 (= c!1245431 e!4059225)))

(declare-fun res!2749015 () Bool)

(assert (=> d!2111200 (=> (not res!2749015) (not e!4059225))))

(assert (=> d!2111200 (= res!2749015 ((_ is Cons!65810) (t!379611 (exprs!6429 (h!72259 zl!343)))))))

(assert (=> d!2111200 (forall!15745 (t!379611 (exprs!6429 (h!72259 zl!343))) lambda!376771)))

(assert (=> d!2111200 (= (generalisedConcat!2142 (t!379611 (exprs!6429 (h!72259 zl!343)))) lt!2436470)))

(declare-fun b!6717324 () Bool)

(declare-fun e!4059228 () Bool)

(assert (=> b!6717324 (= e!4059228 (isEmptyExpr!1911 lt!2436470))))

(declare-fun b!6717325 () Bool)

(declare-fun e!4059227 () Regex!16545)

(assert (=> b!6717325 (= e!4059227 (Concat!25390 (h!72258 (t!379611 (exprs!6429 (h!72259 zl!343)))) (generalisedConcat!2142 (t!379611 (t!379611 (exprs!6429 (h!72259 zl!343)))))))))

(declare-fun b!6717326 () Bool)

(assert (=> b!6717326 (= e!4059226 (h!72258 (t!379611 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717327 () Bool)

(assert (=> b!6717327 (= e!4059226 e!4059227)))

(declare-fun c!1245432 () Bool)

(assert (=> b!6717327 (= c!1245432 ((_ is Cons!65810) (t!379611 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717328 () Bool)

(assert (=> b!6717328 (= e!4059222 e!4059228)))

(declare-fun c!1245430 () Bool)

(assert (=> b!6717328 (= c!1245430 (isEmpty!38134 (t!379611 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717329 () Bool)

(declare-fun e!4059221 () Bool)

(assert (=> b!6717329 (= e!4059221 (= lt!2436470 (head!13518 (t!379611 (exprs!6429 (h!72259 zl!343))))))))

(declare-fun b!6717330 () Bool)

(assert (=> b!6717330 (= e!4059228 e!4059221)))

(declare-fun c!1245433 () Bool)

(assert (=> b!6717330 (= c!1245433 (isEmpty!38134 (tail!12603 (t!379611 (exprs!6429 (h!72259 zl!343))))))))

(declare-fun b!6717331 () Bool)

(assert (=> b!6717331 (= e!4059225 (isEmpty!38134 (t!379611 (t!379611 (exprs!6429 (h!72259 zl!343))))))))

(declare-fun b!6717332 () Bool)

(assert (=> b!6717332 (= e!4059227 EmptyExpr!16545)))

(declare-fun b!6717333 () Bool)

(assert (=> b!6717333 (= e!4059221 (isConcat!1434 lt!2436470))))

(assert (= (and d!2111200 res!2749015) b!6717331))

(assert (= (and d!2111200 c!1245431) b!6717326))

(assert (= (and d!2111200 (not c!1245431)) b!6717327))

(assert (= (and b!6717327 c!1245432) b!6717325))

(assert (= (and b!6717327 (not c!1245432)) b!6717332))

(assert (= (and d!2111200 res!2749018) b!6717328))

(assert (= (and b!6717328 c!1245430) b!6717324))

(assert (= (and b!6717328 (not c!1245430)) b!6717330))

(assert (= (and b!6717330 c!1245433) b!6717329))

(assert (= (and b!6717330 (not c!1245433)) b!6717333))

(declare-fun m!7480444 () Bool)

(assert (=> b!6717331 m!7480444))

(declare-fun m!7480446 () Bool)

(assert (=> d!2111200 m!7480446))

(declare-fun m!7480448 () Bool)

(assert (=> d!2111200 m!7480448))

(declare-fun m!7480450 () Bool)

(assert (=> b!6717333 m!7480450))

(declare-fun m!7480452 () Bool)

(assert (=> b!6717330 m!7480452))

(assert (=> b!6717330 m!7480452))

(declare-fun m!7480454 () Bool)

(assert (=> b!6717330 m!7480454))

(declare-fun m!7480456 () Bool)

(assert (=> b!6717324 m!7480456))

(declare-fun m!7480458 () Bool)

(assert (=> b!6717329 m!7480458))

(assert (=> b!6717328 m!7480232))

(declare-fun m!7480460 () Bool)

(assert (=> b!6717325 m!7480460))

(assert (=> b!6717006 d!2111200))

(declare-fun d!2111202 () Bool)

(assert (=> d!2111202 (= (head!13518 (unfocusZipperList!1966 zl!343)) (h!72258 (unfocusZipperList!1966 zl!343)))))

(assert (=> b!6716973 d!2111202))

(declare-fun d!2111204 () Bool)

(declare-fun res!2749027 () Bool)

(declare-fun e!4059233 () Bool)

(assert (=> d!2111204 (=> res!2749027 e!4059233)))

(assert (=> d!2111204 (= res!2749027 ((_ is Nil!65810) (exprs!6429 setElem!45785)))))

(assert (=> d!2111204 (= (forall!15745 (exprs!6429 setElem!45785) lambda!376702) e!4059233)))

(declare-fun b!6717342 () Bool)

(declare-fun e!4059234 () Bool)

(assert (=> b!6717342 (= e!4059233 e!4059234)))

(declare-fun res!2749028 () Bool)

(assert (=> b!6717342 (=> (not res!2749028) (not e!4059234))))

(declare-fun dynLambda!26244 (Int Regex!16545) Bool)

(assert (=> b!6717342 (= res!2749028 (dynLambda!26244 lambda!376702 (h!72258 (exprs!6429 setElem!45785))))))

(declare-fun b!6717343 () Bool)

(assert (=> b!6717343 (= e!4059234 (forall!15745 (t!379611 (exprs!6429 setElem!45785)) lambda!376702))))

(assert (= (and d!2111204 (not res!2749027)) b!6717342))

(assert (= (and b!6717342 res!2749028) b!6717343))

(declare-fun b_lambda!252923 () Bool)

(assert (=> (not b_lambda!252923) (not b!6717342)))

(declare-fun m!7480462 () Bool)

(assert (=> b!6717342 m!7480462))

(declare-fun m!7480464 () Bool)

(assert (=> b!6717343 m!7480464))

(assert (=> d!2111018 d!2111204))

(assert (=> d!2111066 d!2111024))

(declare-fun d!2111206 () Bool)

(assert (=> d!2111206 (= (Exists!3613 lambda!376736) (choose!50053 lambda!376736))))

(declare-fun bs!1787295 () Bool)

(assert (= bs!1787295 d!2111206))

(declare-fun m!7480466 () Bool)

(assert (=> bs!1787295 m!7480466))

(assert (=> d!2111066 d!2111206))

(declare-fun bs!1787297 () Bool)

(declare-fun d!2111208 () Bool)

(assert (= bs!1787297 (and d!2111208 b!6716899)))

(declare-fun lambda!376776 () Int)

(assert (=> bs!1787297 (not (= lambda!376776 lambda!376743))))

(declare-fun bs!1787298 () Bool)

(assert (= bs!1787298 (and d!2111208 b!6717300)))

(assert (=> bs!1787298 (not (= lambda!376776 lambda!376765))))

(declare-fun bs!1787299 () Bool)

(assert (= bs!1787299 (and d!2111208 b!6716464)))

(assert (=> bs!1787299 (not (= lambda!376776 lambda!376682))))

(declare-fun bs!1787300 () Bool)

(assert (= bs!1787300 (and d!2111208 d!2111038)))

(assert (=> bs!1787300 (= (= r!7292 (Star!16545 (reg!16874 r!7292))) (= lambda!376776 lambda!376726))))

(assert (=> bs!1787299 (not (= lambda!376776 lambda!376683))))

(declare-fun bs!1787301 () Bool)

(assert (= bs!1787301 (and d!2111208 b!6716900)))

(assert (=> bs!1787301 (not (= lambda!376776 lambda!376742))))

(declare-fun bs!1787302 () Bool)

(assert (= bs!1787302 (and d!2111208 b!6717299)))

(assert (=> bs!1787302 (not (= lambda!376776 lambda!376766))))

(declare-fun bs!1787303 () Bool)

(assert (= bs!1787303 (and d!2111208 d!2111026)))

(assert (=> bs!1787303 (= lambda!376776 lambda!376713)))

(assert (=> bs!1787300 (not (= lambda!376776 lambda!376729))))

(declare-fun bs!1787304 () Bool)

(assert (= bs!1787304 (and d!2111208 d!2111066)))

(assert (=> bs!1787304 (= lambda!376776 lambda!376736)))

(assert (=> bs!1787299 (= lambda!376776 lambda!376681)))

(assert (=> bs!1787303 (not (= lambda!376776 lambda!376714))))

(assert (=> d!2111208 true))

(assert (=> d!2111208 true))

(assert (=> d!2111208 true))

(assert (=> d!2111208 (= (isDefined!13135 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326)) (Exists!3613 lambda!376776))))

(assert (=> d!2111208 true))

(declare-fun _$89!2913 () Unit!159781)

(assert (=> d!2111208 (= (choose!50054 (reg!16874 r!7292) r!7292 s!2326) _$89!2913)))

(declare-fun bs!1787305 () Bool)

(assert (= bs!1787305 d!2111208))

(assert (=> bs!1787305 m!7479958))

(assert (=> bs!1787305 m!7479958))

(assert (=> bs!1787305 m!7479962))

(declare-fun m!7480472 () Bool)

(assert (=> bs!1787305 m!7480472))

(assert (=> d!2111066 d!2111208))

(assert (=> d!2111066 d!2111058))

(assert (=> d!2111066 d!2111172))

(declare-fun d!2111214 () Bool)

(assert (=> d!2111214 true))

(assert (=> d!2111214 true))

(declare-fun res!2749039 () Bool)

(assert (=> d!2111214 (= (choose!50053 lambda!376681) res!2749039)))

(assert (=> d!2111050 d!2111214))

(declare-fun d!2111216 () Bool)

(declare-fun e!4059244 () Bool)

(assert (=> d!2111216 e!4059244))

(declare-fun res!2749046 () Bool)

(assert (=> d!2111216 (=> (not res!2749046) (not e!4059244))))

(declare-fun lt!2436474 () List!65936)

(declare-fun content!12760 (List!65936) (InoxSet C!33360))

(assert (=> d!2111216 (= res!2749046 (= (content!12760 lt!2436474) ((_ map or) (content!12760 (_1!36823 (get!22889 lt!2436442))) (content!12760 (_2!36823 (get!22889 lt!2436442))))))))

(declare-fun e!4059245 () List!65936)

(assert (=> d!2111216 (= lt!2436474 e!4059245)))

(declare-fun c!1245437 () Bool)

(assert (=> d!2111216 (= c!1245437 ((_ is Nil!65812) (_1!36823 (get!22889 lt!2436442))))))

(assert (=> d!2111216 (= (++!14701 (_1!36823 (get!22889 lt!2436442)) (_2!36823 (get!22889 lt!2436442))) lt!2436474)))

(declare-fun b!6717364 () Bool)

(declare-fun res!2749045 () Bool)

(assert (=> b!6717364 (=> (not res!2749045) (not e!4059244))))

(declare-fun size!40594 (List!65936) Int)

(assert (=> b!6717364 (= res!2749045 (= (size!40594 lt!2436474) (+ (size!40594 (_1!36823 (get!22889 lt!2436442))) (size!40594 (_2!36823 (get!22889 lt!2436442))))))))

(declare-fun b!6717365 () Bool)

(assert (=> b!6717365 (= e!4059244 (or (not (= (_2!36823 (get!22889 lt!2436442)) Nil!65812)) (= lt!2436474 (_1!36823 (get!22889 lt!2436442)))))))

(declare-fun b!6717362 () Bool)

(assert (=> b!6717362 (= e!4059245 (_2!36823 (get!22889 lt!2436442)))))

(declare-fun b!6717363 () Bool)

(assert (=> b!6717363 (= e!4059245 (Cons!65812 (h!72260 (_1!36823 (get!22889 lt!2436442))) (++!14701 (t!379613 (_1!36823 (get!22889 lt!2436442))) (_2!36823 (get!22889 lt!2436442)))))))

(assert (= (and d!2111216 c!1245437) b!6717362))

(assert (= (and d!2111216 (not c!1245437)) b!6717363))

(assert (= (and d!2111216 res!2749046) b!6717364))

(assert (= (and b!6717364 res!2749045) b!6717365))

(declare-fun m!7480486 () Bool)

(assert (=> d!2111216 m!7480486))

(declare-fun m!7480488 () Bool)

(assert (=> d!2111216 m!7480488))

(declare-fun m!7480490 () Bool)

(assert (=> d!2111216 m!7480490))

(declare-fun m!7480492 () Bool)

(assert (=> b!6717364 m!7480492))

(declare-fun m!7480494 () Bool)

(assert (=> b!6717364 m!7480494))

(declare-fun m!7480496 () Bool)

(assert (=> b!6717364 m!7480496))

(declare-fun m!7480498 () Bool)

(assert (=> b!6717363 m!7480498))

(assert (=> b!6716828 d!2111216))

(declare-fun d!2111230 () Bool)

(assert (=> d!2111230 (= (get!22889 lt!2436442) (v!52629 lt!2436442))))

(assert (=> b!6716828 d!2111230))

(declare-fun bs!1787328 () Bool)

(declare-fun b!6717370 () Bool)

(assert (= bs!1787328 (and b!6717370 b!6716899)))

(declare-fun lambda!376781 () Int)

(assert (=> bs!1787328 (not (= lambda!376781 lambda!376743))))

(declare-fun bs!1787329 () Bool)

(assert (= bs!1787329 (and b!6717370 b!6717300)))

(assert (=> bs!1787329 (= (and (= (reg!16874 (regTwo!33603 r!7292)) (reg!16874 (regOne!33603 r!7292))) (= (regTwo!33603 r!7292) (regOne!33603 r!7292))) (= lambda!376781 lambda!376765))))

(declare-fun bs!1787330 () Bool)

(assert (= bs!1787330 (and b!6717370 b!6716464)))

(assert (=> bs!1787330 (= (and (= (reg!16874 (regTwo!33603 r!7292)) (reg!16874 r!7292)) (= (regTwo!33603 r!7292) r!7292)) (= lambda!376781 lambda!376682))))

(declare-fun bs!1787331 () Bool)

(assert (= bs!1787331 (and b!6717370 d!2111038)))

(assert (=> bs!1787331 (not (= lambda!376781 lambda!376726))))

(assert (=> bs!1787330 (not (= lambda!376781 lambda!376683))))

(declare-fun bs!1787332 () Bool)

(assert (= bs!1787332 (and b!6717370 b!6716900)))

(assert (=> bs!1787332 (= (and (= (reg!16874 (regTwo!33603 r!7292)) (reg!16874 r!7292)) (= (regTwo!33603 r!7292) r!7292)) (= lambda!376781 lambda!376742))))

(declare-fun bs!1787333 () Bool)

(assert (= bs!1787333 (and b!6717370 b!6717299)))

(assert (=> bs!1787333 (not (= lambda!376781 lambda!376766))))

(declare-fun bs!1787334 () Bool)

(assert (= bs!1787334 (and b!6717370 d!2111026)))

(assert (=> bs!1787334 (not (= lambda!376781 lambda!376713))))

(assert (=> bs!1787331 (= (and (= (reg!16874 (regTwo!33603 r!7292)) (reg!16874 r!7292)) (= (regTwo!33603 r!7292) (Star!16545 (reg!16874 r!7292)))) (= lambda!376781 lambda!376729))))

(declare-fun bs!1787335 () Bool)

(assert (= bs!1787335 (and b!6717370 d!2111066)))

(assert (=> bs!1787335 (not (= lambda!376781 lambda!376736))))

(declare-fun bs!1787336 () Bool)

(assert (= bs!1787336 (and b!6717370 d!2111208)))

(assert (=> bs!1787336 (not (= lambda!376781 lambda!376776))))

(assert (=> bs!1787330 (not (= lambda!376781 lambda!376681))))

(assert (=> bs!1787334 (not (= lambda!376781 lambda!376714))))

(assert (=> b!6717370 true))

(assert (=> b!6717370 true))

(declare-fun bs!1787337 () Bool)

(declare-fun b!6717369 () Bool)

(assert (= bs!1787337 (and b!6717369 b!6716899)))

(declare-fun lambda!376782 () Int)

(assert (=> bs!1787337 (= (and (= (regOne!33602 (regTwo!33603 r!7292)) (regOne!33602 r!7292)) (= (regTwo!33602 (regTwo!33603 r!7292)) (regTwo!33602 r!7292))) (= lambda!376782 lambda!376743))))

(declare-fun bs!1787338 () Bool)

(assert (= bs!1787338 (and b!6717369 b!6716464)))

(assert (=> bs!1787338 (not (= lambda!376782 lambda!376682))))

(declare-fun bs!1787339 () Bool)

(assert (= bs!1787339 (and b!6717369 d!2111038)))

(assert (=> bs!1787339 (not (= lambda!376782 lambda!376726))))

(assert (=> bs!1787338 (= (and (= (regOne!33602 (regTwo!33603 r!7292)) (reg!16874 r!7292)) (= (regTwo!33602 (regTwo!33603 r!7292)) r!7292)) (= lambda!376782 lambda!376683))))

(declare-fun bs!1787340 () Bool)

(assert (= bs!1787340 (and b!6717369 b!6716900)))

(assert (=> bs!1787340 (not (= lambda!376782 lambda!376742))))

(declare-fun bs!1787341 () Bool)

(assert (= bs!1787341 (and b!6717369 b!6717299)))

(assert (=> bs!1787341 (= (and (= (regOne!33602 (regTwo!33603 r!7292)) (regOne!33602 (regOne!33603 r!7292))) (= (regTwo!33602 (regTwo!33603 r!7292)) (regTwo!33602 (regOne!33603 r!7292)))) (= lambda!376782 lambda!376766))))

(declare-fun bs!1787342 () Bool)

(assert (= bs!1787342 (and b!6717369 d!2111026)))

(assert (=> bs!1787342 (not (= lambda!376782 lambda!376713))))

(assert (=> bs!1787339 (not (= lambda!376782 lambda!376729))))

(declare-fun bs!1787343 () Bool)

(assert (= bs!1787343 (and b!6717369 d!2111066)))

(assert (=> bs!1787343 (not (= lambda!376782 lambda!376736))))

(declare-fun bs!1787344 () Bool)

(assert (= bs!1787344 (and b!6717369 d!2111208)))

(assert (=> bs!1787344 (not (= lambda!376782 lambda!376776))))

(assert (=> bs!1787338 (not (= lambda!376782 lambda!376681))))

(assert (=> bs!1787342 (= (and (= (regOne!33602 (regTwo!33603 r!7292)) (reg!16874 r!7292)) (= (regTwo!33602 (regTwo!33603 r!7292)) r!7292)) (= lambda!376782 lambda!376714))))

(declare-fun bs!1787345 () Bool)

(assert (= bs!1787345 (and b!6717369 b!6717370)))

(assert (=> bs!1787345 (not (= lambda!376782 lambda!376781))))

(declare-fun bs!1787346 () Bool)

(assert (= bs!1787346 (and b!6717369 b!6717300)))

(assert (=> bs!1787346 (not (= lambda!376782 lambda!376765))))

(assert (=> b!6717369 true))

(assert (=> b!6717369 true))

(declare-fun b!6717366 () Bool)

(declare-fun e!4059248 () Bool)

(assert (=> b!6717366 (= e!4059248 (matchRSpec!3646 (regTwo!33603 (regTwo!33603 r!7292)) s!2326))))

(declare-fun b!6717367 () Bool)

(declare-fun c!1245441 () Bool)

(assert (=> b!6717367 (= c!1245441 ((_ is Union!16545) (regTwo!33603 r!7292)))))

(declare-fun e!4059250 () Bool)

(declare-fun e!4059247 () Bool)

(assert (=> b!6717367 (= e!4059250 e!4059247)))

(declare-fun b!6717368 () Bool)

(assert (=> b!6717368 (= e!4059250 (= s!2326 (Cons!65812 (c!1245233 (regTwo!33603 r!7292)) Nil!65812)))))

(declare-fun bm!606262 () Bool)

(declare-fun c!1245438 () Bool)

(declare-fun call!606267 () Bool)

(assert (=> bm!606262 (= call!606267 (Exists!3613 (ite c!1245438 lambda!376781 lambda!376782)))))

(declare-fun e!4059252 () Bool)

(assert (=> b!6717369 (= e!4059252 call!606267)))

(declare-fun e!4059246 () Bool)

(assert (=> b!6717370 (= e!4059246 call!606267)))

(declare-fun b!6717371 () Bool)

(declare-fun c!1245439 () Bool)

(assert (=> b!6717371 (= c!1245439 ((_ is ElementMatch!16545) (regTwo!33603 r!7292)))))

(declare-fun e!4059251 () Bool)

(assert (=> b!6717371 (= e!4059251 e!4059250)))

(declare-fun b!6717372 () Bool)

(declare-fun e!4059249 () Bool)

(declare-fun call!606268 () Bool)

(assert (=> b!6717372 (= e!4059249 call!606268)))

(declare-fun b!6717373 () Bool)

(assert (=> b!6717373 (= e!4059247 e!4059248)))

(declare-fun res!2749047 () Bool)

(assert (=> b!6717373 (= res!2749047 (matchRSpec!3646 (regOne!33603 (regTwo!33603 r!7292)) s!2326))))

(assert (=> b!6717373 (=> res!2749047 e!4059248)))

(declare-fun bm!606263 () Bool)

(assert (=> bm!606263 (= call!606268 (isEmpty!38129 s!2326))))

(declare-fun b!6717375 () Bool)

(assert (=> b!6717375 (= e!4059247 e!4059252)))

(assert (=> b!6717375 (= c!1245438 ((_ is Star!16545) (regTwo!33603 r!7292)))))

(declare-fun b!6717376 () Bool)

(assert (=> b!6717376 (= e!4059249 e!4059251)))

(declare-fun res!2749048 () Bool)

(assert (=> b!6717376 (= res!2749048 (not ((_ is EmptyLang!16545) (regTwo!33603 r!7292))))))

(assert (=> b!6717376 (=> (not res!2749048) (not e!4059251))))

(declare-fun d!2111232 () Bool)

(declare-fun c!1245440 () Bool)

(assert (=> d!2111232 (= c!1245440 ((_ is EmptyExpr!16545) (regTwo!33603 r!7292)))))

(assert (=> d!2111232 (= (matchRSpec!3646 (regTwo!33603 r!7292) s!2326) e!4059249)))

(declare-fun b!6717374 () Bool)

(declare-fun res!2749049 () Bool)

(assert (=> b!6717374 (=> res!2749049 e!4059246)))

(assert (=> b!6717374 (= res!2749049 call!606268)))

(assert (=> b!6717374 (= e!4059252 e!4059246)))

(assert (= (and d!2111232 c!1245440) b!6717372))

(assert (= (and d!2111232 (not c!1245440)) b!6717376))

(assert (= (and b!6717376 res!2749048) b!6717371))

(assert (= (and b!6717371 c!1245439) b!6717368))

(assert (= (and b!6717371 (not c!1245439)) b!6717367))

(assert (= (and b!6717367 c!1245441) b!6717373))

(assert (= (and b!6717367 (not c!1245441)) b!6717375))

(assert (= (and b!6717373 (not res!2749047)) b!6717366))

(assert (= (and b!6717375 c!1245438) b!6717374))

(assert (= (and b!6717375 (not c!1245438)) b!6717369))

(assert (= (and b!6717374 (not res!2749049)) b!6717370))

(assert (= (or b!6717370 b!6717369) bm!606262))

(assert (= (or b!6717372 b!6717374) bm!606263))

(declare-fun m!7480522 () Bool)

(assert (=> b!6717366 m!7480522))

(declare-fun m!7480524 () Bool)

(assert (=> bm!606262 m!7480524))

(declare-fun m!7480526 () Bool)

(assert (=> b!6717373 m!7480526))

(assert (=> bm!606263 m!7479950))

(assert (=> b!6716896 d!2111232))

(declare-fun d!2111242 () Bool)

(assert (=> d!2111242 (= (isEmpty!38134 (unfocusZipperList!1966 zl!343)) ((_ is Nil!65810) (unfocusZipperList!1966 zl!343)))))

(assert (=> b!6716971 d!2111242))

(declare-fun d!2111244 () Bool)

(declare-fun c!1245453 () Bool)

(assert (=> d!2111244 (= c!1245453 ((_ is Nil!65811) lt!2436449))))

(declare-fun e!4059271 () (InoxSet Context!11858))

(assert (=> d!2111244 (= (content!12759 lt!2436449) e!4059271)))

(declare-fun b!6717409 () Bool)

(assert (=> b!6717409 (= e!4059271 ((as const (Array Context!11858 Bool)) false))))

(declare-fun b!6717410 () Bool)

(assert (=> b!6717410 (= e!4059271 ((_ map or) (store ((as const (Array Context!11858 Bool)) false) (h!72259 lt!2436449) true) (content!12759 (t!379612 lt!2436449))))))

(assert (= (and d!2111244 c!1245453) b!6717409))

(assert (= (and d!2111244 (not c!1245453)) b!6717410))

(declare-fun m!7480528 () Bool)

(assert (=> b!6717410 m!7480528))

(declare-fun m!7480530 () Bool)

(assert (=> b!6717410 m!7480530))

(assert (=> b!6716836 d!2111244))

(declare-fun b!6717411 () Bool)

(declare-fun res!2749061 () Bool)

(declare-fun e!4059277 () Bool)

(assert (=> b!6717411 (=> res!2749061 e!4059277)))

(declare-fun e!4059272 () Bool)

(assert (=> b!6717411 (= res!2749061 e!4059272)))

(declare-fun res!2749065 () Bool)

(assert (=> b!6717411 (=> (not res!2749065) (not e!4059272))))

(declare-fun lt!2436478 () Bool)

(assert (=> b!6717411 (= res!2749065 lt!2436478)))

(declare-fun b!6717412 () Bool)

(declare-fun res!2749062 () Bool)

(declare-fun e!4059274 () Bool)

(assert (=> b!6717412 (=> res!2749062 e!4059274)))

(assert (=> b!6717412 (= res!2749062 (not (isEmpty!38129 (tail!12602 (_1!36823 (get!22889 lt!2436442))))))))

(declare-fun b!6717414 () Bool)

(declare-fun e!4059275 () Bool)

(assert (=> b!6717414 (= e!4059275 (not lt!2436478))))

(declare-fun b!6717415 () Bool)

(declare-fun res!2749063 () Bool)

(assert (=> b!6717415 (=> res!2749063 e!4059277)))

(assert (=> b!6717415 (= res!2749063 (not ((_ is ElementMatch!16545) (reg!16874 r!7292))))))

(assert (=> b!6717415 (= e!4059275 e!4059277)))

(declare-fun b!6717416 () Bool)

(declare-fun e!4059278 () Bool)

(declare-fun call!606272 () Bool)

(assert (=> b!6717416 (= e!4059278 (= lt!2436478 call!606272))))

(declare-fun b!6717417 () Bool)

(declare-fun e!4059273 () Bool)

(assert (=> b!6717417 (= e!4059273 (nullable!6532 (reg!16874 r!7292)))))

(declare-fun b!6717418 () Bool)

(assert (=> b!6717418 (= e!4059272 (= (head!13517 (_1!36823 (get!22889 lt!2436442))) (c!1245233 (reg!16874 r!7292))))))

(declare-fun b!6717419 () Bool)

(declare-fun res!2749067 () Bool)

(assert (=> b!6717419 (=> (not res!2749067) (not e!4059272))))

(assert (=> b!6717419 (= res!2749067 (isEmpty!38129 (tail!12602 (_1!36823 (get!22889 lt!2436442)))))))

(declare-fun b!6717420 () Bool)

(assert (=> b!6717420 (= e!4059274 (not (= (head!13517 (_1!36823 (get!22889 lt!2436442))) (c!1245233 (reg!16874 r!7292)))))))

(declare-fun b!6717421 () Bool)

(declare-fun res!2749060 () Bool)

(assert (=> b!6717421 (=> (not res!2749060) (not e!4059272))))

(assert (=> b!6717421 (= res!2749060 (not call!606272))))

(declare-fun b!6717422 () Bool)

(declare-fun e!4059276 () Bool)

(assert (=> b!6717422 (= e!4059276 e!4059274)))

(declare-fun res!2749066 () Bool)

(assert (=> b!6717422 (=> res!2749066 e!4059274)))

(assert (=> b!6717422 (= res!2749066 call!606272)))

(declare-fun b!6717423 () Bool)

(assert (=> b!6717423 (= e!4059273 (matchR!8728 (derivativeStep!5217 (reg!16874 r!7292) (head!13517 (_1!36823 (get!22889 lt!2436442)))) (tail!12602 (_1!36823 (get!22889 lt!2436442)))))))

(declare-fun d!2111246 () Bool)

(assert (=> d!2111246 e!4059278))

(declare-fun c!1245454 () Bool)

(assert (=> d!2111246 (= c!1245454 ((_ is EmptyExpr!16545) (reg!16874 r!7292)))))

(assert (=> d!2111246 (= lt!2436478 e!4059273)))

(declare-fun c!1245456 () Bool)

(assert (=> d!2111246 (= c!1245456 (isEmpty!38129 (_1!36823 (get!22889 lt!2436442))))))

(assert (=> d!2111246 (validRegex!8281 (reg!16874 r!7292))))

(assert (=> d!2111246 (= (matchR!8728 (reg!16874 r!7292) (_1!36823 (get!22889 lt!2436442))) lt!2436478)))

(declare-fun b!6717413 () Bool)

(assert (=> b!6717413 (= e!4059277 e!4059276)))

(declare-fun res!2749064 () Bool)

(assert (=> b!6717413 (=> (not res!2749064) (not e!4059276))))

(assert (=> b!6717413 (= res!2749064 (not lt!2436478))))

(declare-fun b!6717424 () Bool)

(assert (=> b!6717424 (= e!4059278 e!4059275)))

(declare-fun c!1245455 () Bool)

(assert (=> b!6717424 (= c!1245455 ((_ is EmptyLang!16545) (reg!16874 r!7292)))))

(declare-fun bm!606267 () Bool)

(assert (=> bm!606267 (= call!606272 (isEmpty!38129 (_1!36823 (get!22889 lt!2436442))))))

(assert (= (and d!2111246 c!1245456) b!6717417))

(assert (= (and d!2111246 (not c!1245456)) b!6717423))

(assert (= (and d!2111246 c!1245454) b!6717416))

(assert (= (and d!2111246 (not c!1245454)) b!6717424))

(assert (= (and b!6717424 c!1245455) b!6717414))

(assert (= (and b!6717424 (not c!1245455)) b!6717415))

(assert (= (and b!6717415 (not res!2749063)) b!6717411))

(assert (= (and b!6717411 res!2749065) b!6717421))

(assert (= (and b!6717421 res!2749060) b!6717419))

(assert (= (and b!6717419 res!2749067) b!6717418))

(assert (= (and b!6717411 (not res!2749061)) b!6717413))

(assert (= (and b!6717413 res!2749064) b!6717422))

(assert (= (and b!6717422 (not res!2749066)) b!6717412))

(assert (= (and b!6717412 (not res!2749062)) b!6717420))

(assert (= (or b!6717416 b!6717422 b!6717421) bm!606267))

(assert (=> b!6717417 m!7480182))

(declare-fun m!7480532 () Bool)

(assert (=> bm!606267 m!7480532))

(declare-fun m!7480534 () Bool)

(assert (=> b!6717423 m!7480534))

(assert (=> b!6717423 m!7480534))

(declare-fun m!7480536 () Bool)

(assert (=> b!6717423 m!7480536))

(declare-fun m!7480538 () Bool)

(assert (=> b!6717423 m!7480538))

(assert (=> b!6717423 m!7480536))

(assert (=> b!6717423 m!7480538))

(declare-fun m!7480540 () Bool)

(assert (=> b!6717423 m!7480540))

(assert (=> d!2111246 m!7480532))

(assert (=> d!2111246 m!7480072))

(assert (=> b!6717420 m!7480534))

(assert (=> b!6717419 m!7480538))

(assert (=> b!6717419 m!7480538))

(declare-fun m!7480542 () Bool)

(assert (=> b!6717419 m!7480542))

(assert (=> b!6717418 m!7480534))

(assert (=> b!6717412 m!7480538))

(assert (=> b!6717412 m!7480538))

(assert (=> b!6717412 m!7480542))

(assert (=> b!6716823 d!2111246))

(assert (=> b!6716823 d!2111230))

(declare-fun b!6717425 () Bool)

(declare-fun res!2749069 () Bool)

(declare-fun e!4059284 () Bool)

(assert (=> b!6717425 (=> res!2749069 e!4059284)))

(declare-fun e!4059279 () Bool)

(assert (=> b!6717425 (= res!2749069 e!4059279)))

(declare-fun res!2749073 () Bool)

(assert (=> b!6717425 (=> (not res!2749073) (not e!4059279))))

(declare-fun lt!2436479 () Bool)

(assert (=> b!6717425 (= res!2749073 lt!2436479)))

(declare-fun b!6717426 () Bool)

(declare-fun res!2749070 () Bool)

(declare-fun e!4059281 () Bool)

(assert (=> b!6717426 (=> res!2749070 e!4059281)))

(assert (=> b!6717426 (= res!2749070 (not (isEmpty!38129 (tail!12602 (_2!36823 (get!22889 lt!2436442))))))))

(declare-fun b!6717428 () Bool)

(declare-fun e!4059282 () Bool)

(assert (=> b!6717428 (= e!4059282 (not lt!2436479))))

(declare-fun b!6717429 () Bool)

(declare-fun res!2749071 () Bool)

(assert (=> b!6717429 (=> res!2749071 e!4059284)))

(assert (=> b!6717429 (= res!2749071 (not ((_ is ElementMatch!16545) r!7292)))))

(assert (=> b!6717429 (= e!4059282 e!4059284)))

(declare-fun b!6717430 () Bool)

(declare-fun e!4059285 () Bool)

(declare-fun call!606273 () Bool)

(assert (=> b!6717430 (= e!4059285 (= lt!2436479 call!606273))))

(declare-fun b!6717431 () Bool)

(declare-fun e!4059280 () Bool)

(assert (=> b!6717431 (= e!4059280 (nullable!6532 r!7292))))

(declare-fun b!6717432 () Bool)

(assert (=> b!6717432 (= e!4059279 (= (head!13517 (_2!36823 (get!22889 lt!2436442))) (c!1245233 r!7292)))))

(declare-fun b!6717433 () Bool)

(declare-fun res!2749075 () Bool)

(assert (=> b!6717433 (=> (not res!2749075) (not e!4059279))))

(assert (=> b!6717433 (= res!2749075 (isEmpty!38129 (tail!12602 (_2!36823 (get!22889 lt!2436442)))))))

(declare-fun b!6717434 () Bool)

(assert (=> b!6717434 (= e!4059281 (not (= (head!13517 (_2!36823 (get!22889 lt!2436442))) (c!1245233 r!7292))))))

(declare-fun b!6717435 () Bool)

(declare-fun res!2749068 () Bool)

(assert (=> b!6717435 (=> (not res!2749068) (not e!4059279))))

(assert (=> b!6717435 (= res!2749068 (not call!606273))))

(declare-fun b!6717436 () Bool)

(declare-fun e!4059283 () Bool)

(assert (=> b!6717436 (= e!4059283 e!4059281)))

(declare-fun res!2749074 () Bool)

(assert (=> b!6717436 (=> res!2749074 e!4059281)))

(assert (=> b!6717436 (= res!2749074 call!606273)))

(declare-fun b!6717437 () Bool)

(assert (=> b!6717437 (= e!4059280 (matchR!8728 (derivativeStep!5217 r!7292 (head!13517 (_2!36823 (get!22889 lt!2436442)))) (tail!12602 (_2!36823 (get!22889 lt!2436442)))))))

(declare-fun d!2111248 () Bool)

(assert (=> d!2111248 e!4059285))

(declare-fun c!1245457 () Bool)

(assert (=> d!2111248 (= c!1245457 ((_ is EmptyExpr!16545) r!7292))))

(assert (=> d!2111248 (= lt!2436479 e!4059280)))

(declare-fun c!1245459 () Bool)

(assert (=> d!2111248 (= c!1245459 (isEmpty!38129 (_2!36823 (get!22889 lt!2436442))))))

(assert (=> d!2111248 (validRegex!8281 r!7292)))

(assert (=> d!2111248 (= (matchR!8728 r!7292 (_2!36823 (get!22889 lt!2436442))) lt!2436479)))

(declare-fun b!6717427 () Bool)

(assert (=> b!6717427 (= e!4059284 e!4059283)))

(declare-fun res!2749072 () Bool)

(assert (=> b!6717427 (=> (not res!2749072) (not e!4059283))))

(assert (=> b!6717427 (= res!2749072 (not lt!2436479))))

(declare-fun b!6717438 () Bool)

(assert (=> b!6717438 (= e!4059285 e!4059282)))

(declare-fun c!1245458 () Bool)

(assert (=> b!6717438 (= c!1245458 ((_ is EmptyLang!16545) r!7292))))

(declare-fun bm!606268 () Bool)

(assert (=> bm!606268 (= call!606273 (isEmpty!38129 (_2!36823 (get!22889 lt!2436442))))))

(assert (= (and d!2111248 c!1245459) b!6717431))

(assert (= (and d!2111248 (not c!1245459)) b!6717437))

(assert (= (and d!2111248 c!1245457) b!6717430))

(assert (= (and d!2111248 (not c!1245457)) b!6717438))

(assert (= (and b!6717438 c!1245458) b!6717428))

(assert (= (and b!6717438 (not c!1245458)) b!6717429))

(assert (= (and b!6717429 (not res!2749071)) b!6717425))

(assert (= (and b!6717425 res!2749073) b!6717435))

(assert (= (and b!6717435 res!2749068) b!6717433))

(assert (= (and b!6717433 res!2749075) b!6717432))

(assert (= (and b!6717425 (not res!2749069)) b!6717427))

(assert (= (and b!6717427 res!2749072) b!6717436))

(assert (= (and b!6717436 (not res!2749074)) b!6717426))

(assert (= (and b!6717426 (not res!2749070)) b!6717434))

(assert (= (or b!6717430 b!6717436 b!6717435) bm!606268))

(assert (=> b!6717431 m!7480194))

(declare-fun m!7480544 () Bool)

(assert (=> bm!606268 m!7480544))

(declare-fun m!7480546 () Bool)

(assert (=> b!6717437 m!7480546))

(assert (=> b!6717437 m!7480546))

(declare-fun m!7480548 () Bool)

(assert (=> b!6717437 m!7480548))

(declare-fun m!7480550 () Bool)

(assert (=> b!6717437 m!7480550))

(assert (=> b!6717437 m!7480548))

(assert (=> b!6717437 m!7480550))

(declare-fun m!7480552 () Bool)

(assert (=> b!6717437 m!7480552))

(assert (=> d!2111248 m!7480544))

(assert (=> d!2111248 m!7479974))

(assert (=> b!6717434 m!7480546))

(assert (=> b!6717433 m!7480550))

(assert (=> b!6717433 m!7480550))

(declare-fun m!7480554 () Bool)

(assert (=> b!6717433 m!7480554))

(assert (=> b!6717432 m!7480546))

(assert (=> b!6717426 m!7480550))

(assert (=> b!6717426 m!7480550))

(assert (=> b!6717426 m!7480554))

(assert (=> b!6716825 d!2111248))

(assert (=> b!6716825 d!2111230))

(declare-fun d!2111250 () Bool)

(assert (=> d!2111250 true))

(assert (=> d!2111250 true))

(declare-fun res!2749076 () Bool)

(assert (=> d!2111250 (= (choose!50053 lambda!376683) res!2749076)))

(assert (=> d!2111052 d!2111250))

(declare-fun d!2111252 () Bool)

(assert (=> d!2111252 (= (isEmpty!38133 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326)) (not ((_ is Some!16431) (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 Nil!65812 s!2326 s!2326))))))

(assert (=> d!2111024 d!2111252))

(declare-fun bs!1787371 () Bool)

(declare-fun d!2111254 () Bool)

(assert (= bs!1787371 (and d!2111254 d!2111082)))

(declare-fun lambda!376785 () Int)

(assert (=> bs!1787371 (= lambda!376785 lambda!376749)))

(declare-fun bs!1787372 () Bool)

(assert (= bs!1787372 (and d!2111254 d!2111086)))

(assert (=> bs!1787372 (= lambda!376785 lambda!376753)))

(declare-fun bs!1787373 () Bool)

(assert (= bs!1787373 (and d!2111254 d!2111018)))

(assert (=> bs!1787373 (= lambda!376785 lambda!376702)))

(declare-fun bs!1787374 () Bool)

(assert (= bs!1787374 (and d!2111254 d!2111070)))

(assert (=> bs!1787374 (= lambda!376785 lambda!376737)))

(declare-fun bs!1787375 () Bool)

(assert (= bs!1787375 (and d!2111254 d!2111084)))

(assert (=> bs!1787375 (= lambda!376785 lambda!376752)))

(declare-fun bs!1787376 () Bool)

(assert (= bs!1787376 (and d!2111254 d!2111080)))

(assert (=> bs!1787376 (= lambda!376785 lambda!376746)))

(declare-fun bs!1787377 () Bool)

(assert (= bs!1787377 (and d!2111254 d!2111200)))

(assert (=> bs!1787377 (= lambda!376785 lambda!376771)))

(assert (=> d!2111254 (= (inv!84609 (h!72259 (t!379612 zl!343))) (forall!15745 (exprs!6429 (h!72259 (t!379612 zl!343))) lambda!376785))))

(declare-fun bs!1787378 () Bool)

(assert (= bs!1787378 d!2111254))

(declare-fun m!7480562 () Bool)

(assert (=> bs!1787378 m!7480562))

(assert (=> b!6717077 d!2111254))

(assert (=> bm!606199 d!2111054))

(declare-fun d!2111260 () Bool)

(assert (=> d!2111260 (= (isEmpty!38134 (t!379611 (exprs!6429 (h!72259 zl!343)))) ((_ is Nil!65810) (t!379611 (exprs!6429 (h!72259 zl!343)))))))

(assert (=> b!6717012 d!2111260))

(declare-fun d!2111262 () Bool)

(assert (=> d!2111262 (= (isConcat!1434 lt!2436464) ((_ is Concat!25390) lt!2436464))))

(assert (=> b!6717014 d!2111262))

(assert (=> bm!606196 d!2111054))

(declare-fun b!6717443 () Bool)

(declare-fun res!2749081 () Bool)

(declare-fun e!4059293 () Bool)

(assert (=> b!6717443 (=> res!2749081 e!4059293)))

(declare-fun e!4059288 () Bool)

(assert (=> b!6717443 (= res!2749081 e!4059288)))

(declare-fun res!2749085 () Bool)

(assert (=> b!6717443 (=> (not res!2749085) (not e!4059288))))

(declare-fun lt!2436481 () Bool)

(assert (=> b!6717443 (= res!2749085 lt!2436481)))

(declare-fun b!6717444 () Bool)

(declare-fun res!2749082 () Bool)

(declare-fun e!4059290 () Bool)

(assert (=> b!6717444 (=> res!2749082 e!4059290)))

(assert (=> b!6717444 (= res!2749082 (not (isEmpty!38129 (tail!12602 (tail!12602 s!2326)))))))

(declare-fun b!6717446 () Bool)

(declare-fun e!4059291 () Bool)

(assert (=> b!6717446 (= e!4059291 (not lt!2436481))))

(declare-fun b!6717447 () Bool)

(declare-fun res!2749083 () Bool)

(assert (=> b!6717447 (=> res!2749083 e!4059293)))

(assert (=> b!6717447 (= res!2749083 (not ((_ is ElementMatch!16545) (derivativeStep!5217 r!7292 (head!13517 s!2326)))))))

(assert (=> b!6717447 (= e!4059291 e!4059293)))

(declare-fun b!6717448 () Bool)

(declare-fun e!4059294 () Bool)

(declare-fun call!606274 () Bool)

(assert (=> b!6717448 (= e!4059294 (= lt!2436481 call!606274))))

(declare-fun b!6717449 () Bool)

(declare-fun e!4059289 () Bool)

(assert (=> b!6717449 (= e!4059289 (nullable!6532 (derivativeStep!5217 r!7292 (head!13517 s!2326))))))

(declare-fun b!6717450 () Bool)

(assert (=> b!6717450 (= e!4059288 (= (head!13517 (tail!12602 s!2326)) (c!1245233 (derivativeStep!5217 r!7292 (head!13517 s!2326)))))))

(declare-fun b!6717451 () Bool)

(declare-fun res!2749087 () Bool)

(assert (=> b!6717451 (=> (not res!2749087) (not e!4059288))))

(assert (=> b!6717451 (= res!2749087 (isEmpty!38129 (tail!12602 (tail!12602 s!2326))))))

(declare-fun b!6717452 () Bool)

(assert (=> b!6717452 (= e!4059290 (not (= (head!13517 (tail!12602 s!2326)) (c!1245233 (derivativeStep!5217 r!7292 (head!13517 s!2326))))))))

(declare-fun b!6717453 () Bool)

(declare-fun res!2749080 () Bool)

(assert (=> b!6717453 (=> (not res!2749080) (not e!4059288))))

(assert (=> b!6717453 (= res!2749080 (not call!606274))))

(declare-fun b!6717454 () Bool)

(declare-fun e!4059292 () Bool)

(assert (=> b!6717454 (= e!4059292 e!4059290)))

(declare-fun res!2749086 () Bool)

(assert (=> b!6717454 (=> res!2749086 e!4059290)))

(assert (=> b!6717454 (= res!2749086 call!606274)))

(declare-fun b!6717455 () Bool)

(assert (=> b!6717455 (= e!4059289 (matchR!8728 (derivativeStep!5217 (derivativeStep!5217 r!7292 (head!13517 s!2326)) (head!13517 (tail!12602 s!2326))) (tail!12602 (tail!12602 s!2326))))))

(declare-fun d!2111264 () Bool)

(assert (=> d!2111264 e!4059294))

(declare-fun c!1245461 () Bool)

(assert (=> d!2111264 (= c!1245461 ((_ is EmptyExpr!16545) (derivativeStep!5217 r!7292 (head!13517 s!2326))))))

(assert (=> d!2111264 (= lt!2436481 e!4059289)))

(declare-fun c!1245463 () Bool)

(assert (=> d!2111264 (= c!1245463 (isEmpty!38129 (tail!12602 s!2326)))))

(assert (=> d!2111264 (validRegex!8281 (derivativeStep!5217 r!7292 (head!13517 s!2326)))))

(assert (=> d!2111264 (= (matchR!8728 (derivativeStep!5217 r!7292 (head!13517 s!2326)) (tail!12602 s!2326)) lt!2436481)))

(declare-fun b!6717445 () Bool)

(assert (=> b!6717445 (= e!4059293 e!4059292)))

(declare-fun res!2749084 () Bool)

(assert (=> b!6717445 (=> (not res!2749084) (not e!4059292))))

(assert (=> b!6717445 (= res!2749084 (not lt!2436481))))

(declare-fun b!6717456 () Bool)

(assert (=> b!6717456 (= e!4059294 e!4059291)))

(declare-fun c!1245462 () Bool)

(assert (=> b!6717456 (= c!1245462 ((_ is EmptyLang!16545) (derivativeStep!5217 r!7292 (head!13517 s!2326))))))

(declare-fun bm!606269 () Bool)

(assert (=> bm!606269 (= call!606274 (isEmpty!38129 (tail!12602 s!2326)))))

(assert (= (and d!2111264 c!1245463) b!6717449))

(assert (= (and d!2111264 (not c!1245463)) b!6717455))

(assert (= (and d!2111264 c!1245461) b!6717448))

(assert (= (and d!2111264 (not c!1245461)) b!6717456))

(assert (= (and b!6717456 c!1245462) b!6717446))

(assert (= (and b!6717456 (not c!1245462)) b!6717447))

(assert (= (and b!6717447 (not res!2749083)) b!6717443))

(assert (= (and b!6717443 res!2749085) b!6717453))

(assert (= (and b!6717453 res!2749080) b!6717451))

(assert (= (and b!6717451 res!2749087) b!6717450))

(assert (= (and b!6717443 (not res!2749081)) b!6717445))

(assert (= (and b!6717445 res!2749084) b!6717454))

(assert (= (and b!6717454 (not res!2749086)) b!6717444))

(assert (= (and b!6717444 (not res!2749082)) b!6717452))

(assert (= (or b!6717448 b!6717454 b!6717453) bm!606269))

(assert (=> b!6717449 m!7480198))

(declare-fun m!7480592 () Bool)

(assert (=> b!6717449 m!7480592))

(assert (=> bm!606269 m!7480200))

(assert (=> bm!606269 m!7480204))

(assert (=> b!6717455 m!7480200))

(declare-fun m!7480594 () Bool)

(assert (=> b!6717455 m!7480594))

(assert (=> b!6717455 m!7480198))

(assert (=> b!6717455 m!7480594))

(declare-fun m!7480596 () Bool)

(assert (=> b!6717455 m!7480596))

(assert (=> b!6717455 m!7480200))

(declare-fun m!7480598 () Bool)

(assert (=> b!6717455 m!7480598))

(assert (=> b!6717455 m!7480596))

(assert (=> b!6717455 m!7480598))

(declare-fun m!7480600 () Bool)

(assert (=> b!6717455 m!7480600))

(assert (=> d!2111264 m!7480200))

(assert (=> d!2111264 m!7480204))

(assert (=> d!2111264 m!7480198))

(declare-fun m!7480602 () Bool)

(assert (=> d!2111264 m!7480602))

(assert (=> b!6717452 m!7480200))

(assert (=> b!6717452 m!7480594))

(assert (=> b!6717451 m!7480200))

(assert (=> b!6717451 m!7480598))

(assert (=> b!6717451 m!7480598))

(declare-fun m!7480604 () Bool)

(assert (=> b!6717451 m!7480604))

(assert (=> b!6717450 m!7480200))

(assert (=> b!6717450 m!7480594))

(assert (=> b!6717444 m!7480200))

(assert (=> b!6717444 m!7480598))

(assert (=> b!6717444 m!7480598))

(assert (=> b!6717444 m!7480604))

(assert (=> b!6716947 d!2111264))

(declare-fun b!6717526 () Bool)

(declare-fun c!1245489 () Bool)

(assert (=> b!6717526 (= c!1245489 (nullable!6532 (regOne!33602 r!7292)))))

(declare-fun e!4059336 () Regex!16545)

(declare-fun e!4059341 () Regex!16545)

(assert (=> b!6717526 (= e!4059336 e!4059341)))

(declare-fun b!6717527 () Bool)

(declare-fun e!4059339 () Regex!16545)

(assert (=> b!6717527 (= e!4059339 e!4059336)))

(declare-fun c!1245487 () Bool)

(assert (=> b!6717527 (= c!1245487 ((_ is Star!16545) r!7292))))

(declare-fun d!2111270 () Bool)

(declare-fun lt!2436492 () Regex!16545)

(assert (=> d!2111270 (validRegex!8281 lt!2436492)))

(declare-fun e!4059338 () Regex!16545)

(assert (=> d!2111270 (= lt!2436492 e!4059338)))

(declare-fun c!1245492 () Bool)

(assert (=> d!2111270 (= c!1245492 (or ((_ is EmptyExpr!16545) r!7292) ((_ is EmptyLang!16545) r!7292)))))

(assert (=> d!2111270 (validRegex!8281 r!7292)))

(assert (=> d!2111270 (= (derivativeStep!5217 r!7292 (head!13517 s!2326)) lt!2436492)))

(declare-fun b!6717528 () Bool)

(declare-fun e!4059340 () Regex!16545)

(assert (=> b!6717528 (= e!4059340 (ite (= (head!13517 s!2326) (c!1245233 r!7292)) EmptyExpr!16545 EmptyLang!16545))))

(declare-fun bm!606284 () Bool)

(declare-fun call!606289 () Regex!16545)

(declare-fun call!606291 () Regex!16545)

(assert (=> bm!606284 (= call!606289 call!606291)))

(declare-fun bm!606285 () Bool)

(declare-fun call!606290 () Regex!16545)

(assert (=> bm!606285 (= call!606291 call!606290)))

(declare-fun call!606292 () Regex!16545)

(declare-fun b!6717529 () Bool)

(assert (=> b!6717529 (= e!4059341 (Union!16545 (Concat!25390 call!606292 (regTwo!33602 r!7292)) call!606289))))

(declare-fun b!6717530 () Bool)

(assert (=> b!6717530 (= e!4059338 e!4059340)))

(declare-fun c!1245491 () Bool)

(assert (=> b!6717530 (= c!1245491 ((_ is ElementMatch!16545) r!7292))))

(declare-fun bm!606286 () Bool)

(declare-fun c!1245490 () Bool)

(assert (=> bm!606286 (= call!606290 (derivativeStep!5217 (ite c!1245490 (regTwo!33603 r!7292) (ite c!1245487 (reg!16874 r!7292) (ite c!1245489 (regTwo!33602 r!7292) (regOne!33602 r!7292)))) (head!13517 s!2326)))))

(declare-fun b!6717531 () Bool)

(assert (=> b!6717531 (= e!4059339 (Union!16545 call!606292 call!606290))))

(declare-fun b!6717532 () Bool)

(assert (=> b!6717532 (= e!4059338 EmptyLang!16545)))

(declare-fun bm!606287 () Bool)

(assert (=> bm!606287 (= call!606292 (derivativeStep!5217 (ite c!1245490 (regOne!33603 r!7292) (regOne!33602 r!7292)) (head!13517 s!2326)))))

(declare-fun b!6717533 () Bool)

(assert (=> b!6717533 (= e!4059341 (Union!16545 (Concat!25390 call!606289 (regTwo!33602 r!7292)) EmptyLang!16545))))

(declare-fun b!6717534 () Bool)

(assert (=> b!6717534 (= c!1245490 ((_ is Union!16545) r!7292))))

(assert (=> b!6717534 (= e!4059340 e!4059339)))

(declare-fun b!6717535 () Bool)

(assert (=> b!6717535 (= e!4059336 (Concat!25390 call!606291 r!7292))))

(assert (= (and d!2111270 c!1245492) b!6717532))

(assert (= (and d!2111270 (not c!1245492)) b!6717530))

(assert (= (and b!6717530 c!1245491) b!6717528))

(assert (= (and b!6717530 (not c!1245491)) b!6717534))

(assert (= (and b!6717534 c!1245490) b!6717531))

(assert (= (and b!6717534 (not c!1245490)) b!6717527))

(assert (= (and b!6717527 c!1245487) b!6717535))

(assert (= (and b!6717527 (not c!1245487)) b!6717526))

(assert (= (and b!6717526 c!1245489) b!6717529))

(assert (= (and b!6717526 (not c!1245489)) b!6717533))

(assert (= (or b!6717529 b!6717533) bm!606284))

(assert (= (or b!6717535 bm!606284) bm!606285))

(assert (= (or b!6717531 bm!606285) bm!606286))

(assert (= (or b!6717531 b!6717529) bm!606287))

(declare-fun m!7480670 () Bool)

(assert (=> b!6717526 m!7480670))

(declare-fun m!7480672 () Bool)

(assert (=> d!2111270 m!7480672))

(assert (=> d!2111270 m!7479974))

(assert (=> bm!606286 m!7480196))

(declare-fun m!7480680 () Bool)

(assert (=> bm!606286 m!7480680))

(assert (=> bm!606287 m!7480196))

(declare-fun m!7480682 () Bool)

(assert (=> bm!606287 m!7480682))

(assert (=> b!6716947 d!2111270))

(declare-fun d!2111290 () Bool)

(assert (=> d!2111290 (= (head!13517 s!2326) (h!72260 s!2326))))

(assert (=> b!6716947 d!2111290))

(assert (=> b!6716947 d!2111194))

(declare-fun d!2111294 () Bool)

(assert (=> d!2111294 (= (head!13518 (exprs!6429 (h!72259 zl!343))) (h!72258 (exprs!6429 (h!72259 zl!343))))))

(assert (=> b!6717010 d!2111294))

(assert (=> d!2111076 d!2111054))

(assert (=> d!2111076 d!2111072))

(declare-fun bs!1787390 () Bool)

(declare-fun d!2111296 () Bool)

(assert (= bs!1787390 (and d!2111296 d!2111082)))

(declare-fun lambda!376787 () Int)

(assert (=> bs!1787390 (= lambda!376787 lambda!376749)))

(declare-fun bs!1787391 () Bool)

(assert (= bs!1787391 (and d!2111296 d!2111086)))

(assert (=> bs!1787391 (= lambda!376787 lambda!376753)))

(declare-fun bs!1787392 () Bool)

(assert (= bs!1787392 (and d!2111296 d!2111018)))

(assert (=> bs!1787392 (= lambda!376787 lambda!376702)))

(declare-fun bs!1787393 () Bool)

(assert (= bs!1787393 (and d!2111296 d!2111070)))

(assert (=> bs!1787393 (= lambda!376787 lambda!376737)))

(declare-fun bs!1787394 () Bool)

(assert (= bs!1787394 (and d!2111296 d!2111254)))

(assert (=> bs!1787394 (= lambda!376787 lambda!376785)))

(declare-fun bs!1787395 () Bool)

(assert (= bs!1787395 (and d!2111296 d!2111084)))

(assert (=> bs!1787395 (= lambda!376787 lambda!376752)))

(declare-fun bs!1787396 () Bool)

(assert (= bs!1787396 (and d!2111296 d!2111080)))

(assert (=> bs!1787396 (= lambda!376787 lambda!376746)))

(declare-fun bs!1787397 () Bool)

(assert (= bs!1787397 (and d!2111296 d!2111200)))

(assert (=> bs!1787397 (= lambda!376787 lambda!376771)))

(assert (=> d!2111296 (= (inv!84609 setElem!45791) (forall!15745 (exprs!6429 setElem!45791) lambda!376787))))

(declare-fun bs!1787398 () Bool)

(assert (= bs!1787398 d!2111296))

(declare-fun m!7480694 () Bool)

(assert (=> bs!1787398 m!7480694))

(assert (=> setNonEmpty!45791 d!2111296))

(declare-fun d!2111298 () Bool)

(assert (=> d!2111298 (= (isUnion!1349 lt!2436458) ((_ is Union!16545) lt!2436458))))

(assert (=> b!6716978 d!2111298))

(declare-fun d!2111302 () Bool)

(assert (=> d!2111302 (= (nullable!6532 (reg!16874 r!7292)) (nullableFct!2446 (reg!16874 r!7292)))))

(declare-fun bs!1787399 () Bool)

(assert (= bs!1787399 d!2111302))

(declare-fun m!7480704 () Bool)

(assert (=> bs!1787399 m!7480704))

(assert (=> b!6716855 d!2111302))

(assert (=> b!6716944 d!2111290))

(assert (=> d!2111078 d!2111076))

(assert (=> d!2111078 d!2111074))

(declare-fun d!2111304 () Bool)

(assert (=> d!2111304 (= (matchR!8728 r!7292 s!2326) (matchRSpec!3646 r!7292 s!2326))))

(assert (=> d!2111304 true))

(declare-fun _$88!5438 () Unit!159781)

(assert (=> d!2111304 (= (choose!50056 r!7292 s!2326) _$88!5438)))

(declare-fun bs!1787400 () Bool)

(assert (= bs!1787400 d!2111304))

(assert (=> bs!1787400 m!7479940))

(assert (=> bs!1787400 m!7479938))

(assert (=> d!2111078 d!2111304))

(assert (=> d!2111078 d!2111072))

(declare-fun d!2111306 () Bool)

(declare-fun res!2749124 () Bool)

(declare-fun e!4059358 () Bool)

(assert (=> d!2111306 (=> res!2749124 e!4059358)))

(assert (=> d!2111306 (= res!2749124 ((_ is Nil!65810) (exprs!6429 (h!72259 zl!343))))))

(assert (=> d!2111306 (= (forall!15745 (exprs!6429 (h!72259 zl!343)) lambda!376737) e!4059358)))

(declare-fun b!6717561 () Bool)

(declare-fun e!4059359 () Bool)

(assert (=> b!6717561 (= e!4059358 e!4059359)))

(declare-fun res!2749125 () Bool)

(assert (=> b!6717561 (=> (not res!2749125) (not e!4059359))))

(assert (=> b!6717561 (= res!2749125 (dynLambda!26244 lambda!376737 (h!72258 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717562 () Bool)

(assert (=> b!6717562 (= e!4059359 (forall!15745 (t!379611 (exprs!6429 (h!72259 zl!343))) lambda!376737))))

(assert (= (and d!2111306 (not res!2749124)) b!6717561))

(assert (= (and b!6717561 res!2749125) b!6717562))

(declare-fun b_lambda!252929 () Bool)

(assert (=> (not b_lambda!252929) (not b!6717561)))

(declare-fun m!7480706 () Bool)

(assert (=> b!6717561 m!7480706))

(declare-fun m!7480708 () Bool)

(assert (=> b!6717562 m!7480708))

(assert (=> d!2111070 d!2111306))

(assert (=> b!6716942 d!2111290))

(declare-fun d!2111308 () Bool)

(assert (=> d!2111308 (= (isEmpty!38134 (t!379611 (unfocusZipperList!1966 zl!343))) ((_ is Nil!65810) (t!379611 (unfocusZipperList!1966 zl!343))))))

(assert (=> b!6716976 d!2111308))

(declare-fun d!2111310 () Bool)

(assert (=> d!2111310 (= (isEmptyExpr!1911 lt!2436464) ((_ is EmptyExpr!16545) lt!2436464))))

(assert (=> b!6717005 d!2111310))

(declare-fun d!2111312 () Bool)

(declare-fun e!4059360 () Bool)

(assert (=> d!2111312 e!4059360))

(declare-fun res!2749127 () Bool)

(assert (=> d!2111312 (=> (not res!2749127) (not e!4059360))))

(declare-fun lt!2436494 () List!65936)

(assert (=> d!2111312 (= res!2749127 (= (content!12760 lt!2436494) ((_ map or) (content!12760 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812))) (content!12760 (t!379613 s!2326)))))))

(declare-fun e!4059361 () List!65936)

(assert (=> d!2111312 (= lt!2436494 e!4059361)))

(declare-fun c!1245498 () Bool)

(assert (=> d!2111312 (= c!1245498 ((_ is Nil!65812) (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812))))))

(assert (=> d!2111312 (= (++!14701 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (t!379613 s!2326)) lt!2436494)))

(declare-fun b!6717565 () Bool)

(declare-fun res!2749126 () Bool)

(assert (=> b!6717565 (=> (not res!2749126) (not e!4059360))))

(assert (=> b!6717565 (= res!2749126 (= (size!40594 lt!2436494) (+ (size!40594 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812))) (size!40594 (t!379613 s!2326)))))))

(declare-fun b!6717566 () Bool)

(assert (=> b!6717566 (= e!4059360 (or (not (= (t!379613 s!2326) Nil!65812)) (= lt!2436494 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)))))))

(declare-fun b!6717563 () Bool)

(assert (=> b!6717563 (= e!4059361 (t!379613 s!2326))))

(declare-fun b!6717564 () Bool)

(assert (=> b!6717564 (= e!4059361 (Cons!65812 (h!72260 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812))) (++!14701 (t!379613 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812))) (t!379613 s!2326))))))

(assert (= (and d!2111312 c!1245498) b!6717563))

(assert (= (and d!2111312 (not c!1245498)) b!6717564))

(assert (= (and d!2111312 res!2749127) b!6717565))

(assert (= (and b!6717565 res!2749126) b!6717566))

(declare-fun m!7480710 () Bool)

(assert (=> d!2111312 m!7480710))

(assert (=> d!2111312 m!7480154))

(declare-fun m!7480712 () Bool)

(assert (=> d!2111312 m!7480712))

(declare-fun m!7480714 () Bool)

(assert (=> d!2111312 m!7480714))

(declare-fun m!7480716 () Bool)

(assert (=> b!6717565 m!7480716))

(assert (=> b!6717565 m!7480154))

(declare-fun m!7480718 () Bool)

(assert (=> b!6717565 m!7480718))

(declare-fun m!7480720 () Bool)

(assert (=> b!6717565 m!7480720))

(declare-fun m!7480722 () Bool)

(assert (=> b!6717564 m!7480722))

(assert (=> b!6716829 d!2111312))

(declare-fun d!2111314 () Bool)

(declare-fun e!4059362 () Bool)

(assert (=> d!2111314 e!4059362))

(declare-fun res!2749129 () Bool)

(assert (=> d!2111314 (=> (not res!2749129) (not e!4059362))))

(declare-fun lt!2436495 () List!65936)

(assert (=> d!2111314 (= res!2749129 (= (content!12760 lt!2436495) ((_ map or) (content!12760 Nil!65812) (content!12760 (Cons!65812 (h!72260 s!2326) Nil!65812)))))))

(declare-fun e!4059363 () List!65936)

(assert (=> d!2111314 (= lt!2436495 e!4059363)))

(declare-fun c!1245499 () Bool)

(assert (=> d!2111314 (= c!1245499 ((_ is Nil!65812) Nil!65812))))

(assert (=> d!2111314 (= (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) lt!2436495)))

(declare-fun b!6717569 () Bool)

(declare-fun res!2749128 () Bool)

(assert (=> b!6717569 (=> (not res!2749128) (not e!4059362))))

(assert (=> b!6717569 (= res!2749128 (= (size!40594 lt!2436495) (+ (size!40594 Nil!65812) (size!40594 (Cons!65812 (h!72260 s!2326) Nil!65812)))))))

(declare-fun b!6717570 () Bool)

(assert (=> b!6717570 (= e!4059362 (or (not (= (Cons!65812 (h!72260 s!2326) Nil!65812) Nil!65812)) (= lt!2436495 Nil!65812)))))

(declare-fun b!6717567 () Bool)

(assert (=> b!6717567 (= e!4059363 (Cons!65812 (h!72260 s!2326) Nil!65812))))

(declare-fun b!6717568 () Bool)

(assert (=> b!6717568 (= e!4059363 (Cons!65812 (h!72260 Nil!65812) (++!14701 (t!379613 Nil!65812) (Cons!65812 (h!72260 s!2326) Nil!65812))))))

(assert (= (and d!2111314 c!1245499) b!6717567))

(assert (= (and d!2111314 (not c!1245499)) b!6717568))

(assert (= (and d!2111314 res!2749129) b!6717569))

(assert (= (and b!6717569 res!2749128) b!6717570))

(declare-fun m!7480724 () Bool)

(assert (=> d!2111314 m!7480724))

(declare-fun m!7480726 () Bool)

(assert (=> d!2111314 m!7480726))

(declare-fun m!7480728 () Bool)

(assert (=> d!2111314 m!7480728))

(declare-fun m!7480730 () Bool)

(assert (=> b!6717569 m!7480730))

(declare-fun m!7480732 () Bool)

(assert (=> b!6717569 m!7480732))

(declare-fun m!7480734 () Bool)

(assert (=> b!6717569 m!7480734))

(declare-fun m!7480736 () Bool)

(assert (=> b!6717568 m!7480736))

(assert (=> b!6716829 d!2111314))

(declare-fun d!2111316 () Bool)

(assert (=> d!2111316 (= (++!14701 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (t!379613 s!2326)) s!2326)))

(declare-fun lt!2436500 () Unit!159781)

(declare-fun choose!50057 (List!65936 C!33360 List!65936 List!65936) Unit!159781)

(assert (=> d!2111316 (= lt!2436500 (choose!50057 Nil!65812 (h!72260 s!2326) (t!379613 s!2326) s!2326))))

(assert (=> d!2111316 (= (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) (t!379613 s!2326))) s!2326)))

(assert (=> d!2111316 (= (lemmaMoveElementToOtherListKeepsConcatEq!2674 Nil!65812 (h!72260 s!2326) (t!379613 s!2326) s!2326) lt!2436500)))

(declare-fun bs!1787401 () Bool)

(assert (= bs!1787401 d!2111316))

(assert (=> bs!1787401 m!7480154))

(assert (=> bs!1787401 m!7480154))

(assert (=> bs!1787401 m!7480156))

(declare-fun m!7480738 () Bool)

(assert (=> bs!1787401 m!7480738))

(declare-fun m!7480740 () Bool)

(assert (=> bs!1787401 m!7480740))

(assert (=> b!6716829 d!2111316))

(declare-fun b!6717591 () Bool)

(declare-fun e!4059374 () Option!16432)

(assert (=> b!6717591 (= e!4059374 None!16431)))

(declare-fun d!2111318 () Bool)

(declare-fun e!4059376 () Bool)

(assert (=> d!2111318 e!4059376))

(declare-fun res!2749132 () Bool)

(assert (=> d!2111318 (=> res!2749132 e!4059376)))

(declare-fun e!4059377 () Bool)

(assert (=> d!2111318 (= res!2749132 e!4059377)))

(declare-fun res!2749133 () Bool)

(assert (=> d!2111318 (=> (not res!2749133) (not e!4059377))))

(declare-fun lt!2436502 () Option!16432)

(assert (=> d!2111318 (= res!2749133 (isDefined!13135 lt!2436502))))

(declare-fun e!4059375 () Option!16432)

(assert (=> d!2111318 (= lt!2436502 e!4059375)))

(declare-fun c!1245511 () Bool)

(declare-fun e!4059378 () Bool)

(assert (=> d!2111318 (= c!1245511 e!4059378)))

(declare-fun res!2749134 () Bool)

(assert (=> d!2111318 (=> (not res!2749134) (not e!4059378))))

(assert (=> d!2111318 (= res!2749134 (matchR!8728 (reg!16874 r!7292) (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812))))))

(assert (=> d!2111318 (validRegex!8281 (reg!16874 r!7292))))

(assert (=> d!2111318 (= (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (t!379613 s!2326) s!2326) lt!2436502)))

(declare-fun b!6717592 () Bool)

(assert (=> b!6717592 (= e!4059376 (not (isDefined!13135 lt!2436502)))))

(declare-fun b!6717593 () Bool)

(declare-fun res!2749130 () Bool)

(assert (=> b!6717593 (=> (not res!2749130) (not e!4059377))))

(assert (=> b!6717593 (= res!2749130 (matchR!8728 (reg!16874 r!7292) (_1!36823 (get!22889 lt!2436502))))))

(declare-fun b!6717594 () Bool)

(assert (=> b!6717594 (= e!4059375 e!4059374)))

(declare-fun c!1245510 () Bool)

(assert (=> b!6717594 (= c!1245510 ((_ is Nil!65812) (t!379613 s!2326)))))

(declare-fun b!6717595 () Bool)

(declare-fun res!2749131 () Bool)

(assert (=> b!6717595 (=> (not res!2749131) (not e!4059377))))

(assert (=> b!6717595 (= res!2749131 (matchR!8728 r!7292 (_2!36823 (get!22889 lt!2436502))))))

(declare-fun b!6717596 () Bool)

(assert (=> b!6717596 (= e!4059375 (Some!16431 (tuple2!67041 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (t!379613 s!2326))))))

(declare-fun b!6717597 () Bool)

(assert (=> b!6717597 (= e!4059378 (matchR!8728 r!7292 (t!379613 s!2326)))))

(declare-fun b!6717598 () Bool)

(assert (=> b!6717598 (= e!4059377 (= (++!14701 (_1!36823 (get!22889 lt!2436502)) (_2!36823 (get!22889 lt!2436502))) s!2326))))

(declare-fun b!6717599 () Bool)

(declare-fun lt!2436501 () Unit!159781)

(declare-fun lt!2436503 () Unit!159781)

(assert (=> b!6717599 (= lt!2436501 lt!2436503)))

(assert (=> b!6717599 (= (++!14701 (++!14701 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (Cons!65812 (h!72260 (t!379613 s!2326)) Nil!65812)) (t!379613 (t!379613 s!2326))) s!2326)))

(assert (=> b!6717599 (= lt!2436503 (lemmaMoveElementToOtherListKeepsConcatEq!2674 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (h!72260 (t!379613 s!2326)) (t!379613 (t!379613 s!2326)) s!2326))))

(assert (=> b!6717599 (= e!4059374 (findConcatSeparation!2846 (reg!16874 r!7292) r!7292 (++!14701 (++!14701 Nil!65812 (Cons!65812 (h!72260 s!2326) Nil!65812)) (Cons!65812 (h!72260 (t!379613 s!2326)) Nil!65812)) (t!379613 (t!379613 s!2326)) s!2326))))

(assert (= (and d!2111318 res!2749134) b!6717597))

(assert (= (and d!2111318 c!1245511) b!6717596))

(assert (= (and d!2111318 (not c!1245511)) b!6717594))

(assert (= (and b!6717594 c!1245510) b!6717591))

(assert (= (and b!6717594 (not c!1245510)) b!6717599))

(assert (= (and d!2111318 res!2749133) b!6717593))

(assert (= (and b!6717593 res!2749130) b!6717595))

(assert (= (and b!6717595 res!2749131) b!6717598))

(assert (= (and d!2111318 (not res!2749132)) b!6717592))

(declare-fun m!7480742 () Bool)

(assert (=> b!6717595 m!7480742))

(declare-fun m!7480744 () Bool)

(assert (=> b!6717595 m!7480744))

(assert (=> b!6717599 m!7480154))

(declare-fun m!7480746 () Bool)

(assert (=> b!6717599 m!7480746))

(assert (=> b!6717599 m!7480746))

(declare-fun m!7480748 () Bool)

(assert (=> b!6717599 m!7480748))

(assert (=> b!6717599 m!7480154))

(declare-fun m!7480750 () Bool)

(assert (=> b!6717599 m!7480750))

(assert (=> b!6717599 m!7480746))

(declare-fun m!7480752 () Bool)

(assert (=> b!6717599 m!7480752))

(assert (=> b!6717598 m!7480742))

(declare-fun m!7480754 () Bool)

(assert (=> b!6717598 m!7480754))

(assert (=> b!6717593 m!7480742))

(declare-fun m!7480756 () Bool)

(assert (=> b!6717593 m!7480756))

(declare-fun m!7480758 () Bool)

(assert (=> d!2111318 m!7480758))

(assert (=> d!2111318 m!7480154))

(declare-fun m!7480760 () Bool)

(assert (=> d!2111318 m!7480760))

(assert (=> d!2111318 m!7480072))

(assert (=> b!6717592 m!7480758))

(declare-fun m!7480762 () Bool)

(assert (=> b!6717597 m!7480762))

(assert (=> b!6716829 d!2111318))

(declare-fun bs!1787402 () Bool)

(declare-fun d!2111320 () Bool)

(assert (= bs!1787402 (and d!2111320 d!2111082)))

(declare-fun lambda!376788 () Int)

(assert (=> bs!1787402 (= lambda!376788 lambda!376749)))

(declare-fun bs!1787403 () Bool)

(assert (= bs!1787403 (and d!2111320 d!2111086)))

(assert (=> bs!1787403 (= lambda!376788 lambda!376753)))

(declare-fun bs!1787404 () Bool)

(assert (= bs!1787404 (and d!2111320 d!2111018)))

(assert (=> bs!1787404 (= lambda!376788 lambda!376702)))

(declare-fun bs!1787405 () Bool)

(assert (= bs!1787405 (and d!2111320 d!2111070)))

(assert (=> bs!1787405 (= lambda!376788 lambda!376737)))

(declare-fun bs!1787406 () Bool)

(assert (= bs!1787406 (and d!2111320 d!2111254)))

(assert (=> bs!1787406 (= lambda!376788 lambda!376785)))

(declare-fun bs!1787407 () Bool)

(assert (= bs!1787407 (and d!2111320 d!2111084)))

(assert (=> bs!1787407 (= lambda!376788 lambda!376752)))

(declare-fun bs!1787408 () Bool)

(assert (= bs!1787408 (and d!2111320 d!2111296)))

(assert (=> bs!1787408 (= lambda!376788 lambda!376787)))

(declare-fun bs!1787409 () Bool)

(assert (= bs!1787409 (and d!2111320 d!2111080)))

(assert (=> bs!1787409 (= lambda!376788 lambda!376746)))

(declare-fun bs!1787410 () Bool)

(assert (= bs!1787410 (and d!2111320 d!2111200)))

(assert (=> bs!1787410 (= lambda!376788 lambda!376771)))

(declare-fun b!6717600 () Bool)

(declare-fun e!4059380 () Regex!16545)

(assert (=> b!6717600 (= e!4059380 (h!72258 (t!379611 (unfocusZipperList!1966 zl!343))))))

(declare-fun b!6717601 () Bool)

(declare-fun e!4059382 () Regex!16545)

(assert (=> b!6717601 (= e!4059380 e!4059382)))

(declare-fun c!1245515 () Bool)

(assert (=> b!6717601 (= c!1245515 ((_ is Cons!65810) (t!379611 (unfocusZipperList!1966 zl!343))))))

(declare-fun b!6717602 () Bool)

(declare-fun e!4059381 () Bool)

(declare-fun e!4059379 () Bool)

(assert (=> b!6717602 (= e!4059381 e!4059379)))

(declare-fun c!1245513 () Bool)

(assert (=> b!6717602 (= c!1245513 (isEmpty!38134 (t!379611 (unfocusZipperList!1966 zl!343))))))

(declare-fun b!6717603 () Bool)

(assert (=> b!6717603 (= e!4059382 (Union!16545 (h!72258 (t!379611 (unfocusZipperList!1966 zl!343))) (generalisedUnion!2389 (t!379611 (t!379611 (unfocusZipperList!1966 zl!343))))))))

(declare-fun b!6717604 () Bool)

(declare-fun e!4059384 () Bool)

(declare-fun lt!2436504 () Regex!16545)

(assert (=> b!6717604 (= e!4059384 (= lt!2436504 (head!13518 (t!379611 (unfocusZipperList!1966 zl!343)))))))

(assert (=> d!2111320 e!4059381))

(declare-fun res!2749136 () Bool)

(assert (=> d!2111320 (=> (not res!2749136) (not e!4059381))))

(assert (=> d!2111320 (= res!2749136 (validRegex!8281 lt!2436504))))

(assert (=> d!2111320 (= lt!2436504 e!4059380)))

(declare-fun c!1245514 () Bool)

(declare-fun e!4059383 () Bool)

(assert (=> d!2111320 (= c!1245514 e!4059383)))

(declare-fun res!2749135 () Bool)

(assert (=> d!2111320 (=> (not res!2749135) (not e!4059383))))

(assert (=> d!2111320 (= res!2749135 ((_ is Cons!65810) (t!379611 (unfocusZipperList!1966 zl!343))))))

(assert (=> d!2111320 (forall!15745 (t!379611 (unfocusZipperList!1966 zl!343)) lambda!376788)))

(assert (=> d!2111320 (= (generalisedUnion!2389 (t!379611 (unfocusZipperList!1966 zl!343))) lt!2436504)))

(declare-fun b!6717605 () Bool)

(assert (=> b!6717605 (= e!4059382 EmptyLang!16545)))

(declare-fun b!6717606 () Bool)

(assert (=> b!6717606 (= e!4059379 (isEmptyLang!1919 lt!2436504))))

(declare-fun b!6717607 () Bool)

(assert (=> b!6717607 (= e!4059383 (isEmpty!38134 (t!379611 (t!379611 (unfocusZipperList!1966 zl!343)))))))

(declare-fun b!6717608 () Bool)

(assert (=> b!6717608 (= e!4059379 e!4059384)))

(declare-fun c!1245512 () Bool)

(assert (=> b!6717608 (= c!1245512 (isEmpty!38134 (tail!12603 (t!379611 (unfocusZipperList!1966 zl!343)))))))

(declare-fun b!6717609 () Bool)

(assert (=> b!6717609 (= e!4059384 (isUnion!1349 lt!2436504))))

(assert (= (and d!2111320 res!2749135) b!6717607))

(assert (= (and d!2111320 c!1245514) b!6717600))

(assert (= (and d!2111320 (not c!1245514)) b!6717601))

(assert (= (and b!6717601 c!1245515) b!6717603))

(assert (= (and b!6717601 (not c!1245515)) b!6717605))

(assert (= (and d!2111320 res!2749136) b!6717602))

(assert (= (and b!6717602 c!1245513) b!6717606))

(assert (= (and b!6717602 (not c!1245513)) b!6717608))

(assert (= (and b!6717608 c!1245512) b!6717604))

(assert (= (and b!6717608 (not c!1245512)) b!6717609))

(declare-fun m!7480772 () Bool)

(assert (=> b!6717603 m!7480772))

(declare-fun m!7480774 () Bool)

(assert (=> b!6717609 m!7480774))

(declare-fun m!7480776 () Bool)

(assert (=> b!6717606 m!7480776))

(declare-fun m!7480778 () Bool)

(assert (=> b!6717607 m!7480778))

(declare-fun m!7480780 () Bool)

(assert (=> d!2111320 m!7480780))

(declare-fun m!7480782 () Bool)

(assert (=> d!2111320 m!7480782))

(declare-fun m!7480784 () Bool)

(assert (=> b!6717604 m!7480784))

(assert (=> b!6717602 m!7480214))

(declare-fun m!7480786 () Bool)

(assert (=> b!6717608 m!7480786))

(assert (=> b!6717608 m!7480786))

(declare-fun m!7480788 () Bool)

(assert (=> b!6717608 m!7480788))

(assert (=> b!6716972 d!2111320))

(declare-fun d!2111322 () Bool)

(assert (=> d!2111322 true))

(assert (=> d!2111322 true))

(declare-fun res!2749137 () Bool)

(assert (=> d!2111322 (= (choose!50053 lambda!376682) res!2749137)))

(assert (=> d!2111056 d!2111322))

(declare-fun d!2111324 () Bool)

(assert (=> d!2111324 (= (Exists!3613 (ite c!1245320 lambda!376742 lambda!376743)) (choose!50053 (ite c!1245320 lambda!376742 lambda!376743)))))

(declare-fun bs!1787411 () Bool)

(assert (= bs!1787411 d!2111324))

(declare-fun m!7480790 () Bool)

(assert (=> bs!1787411 m!7480790))

(assert (=> bm!606195 d!2111324))

(declare-fun d!2111326 () Bool)

(assert (=> d!2111326 (= (Exists!3613 lambda!376713) (choose!50053 lambda!376713))))

(declare-fun bs!1787412 () Bool)

(assert (= bs!1787412 d!2111326))

(declare-fun m!7480792 () Bool)

(assert (=> bs!1787412 m!7480792))

(assert (=> d!2111026 d!2111326))

(declare-fun d!2111328 () Bool)

(assert (=> d!2111328 (= (Exists!3613 lambda!376714) (choose!50053 lambda!376714))))

(declare-fun bs!1787413 () Bool)

(assert (= bs!1787413 d!2111328))

(declare-fun m!7480794 () Bool)

(assert (=> bs!1787413 m!7480794))

(assert (=> d!2111026 d!2111328))

(declare-fun bs!1787420 () Bool)

(declare-fun d!2111330 () Bool)

(assert (= bs!1787420 (and d!2111330 b!6717369)))

(declare-fun lambda!376793 () Int)

(assert (=> bs!1787420 (not (= lambda!376793 lambda!376782))))

(declare-fun bs!1787421 () Bool)

(assert (= bs!1787421 (and d!2111330 b!6716899)))

(assert (=> bs!1787421 (not (= lambda!376793 lambda!376743))))

(declare-fun bs!1787422 () Bool)

(assert (= bs!1787422 (and d!2111330 b!6716464)))

(assert (=> bs!1787422 (not (= lambda!376793 lambda!376682))))

(declare-fun bs!1787423 () Bool)

(assert (= bs!1787423 (and d!2111330 d!2111038)))

(assert (=> bs!1787423 (= (= r!7292 (Star!16545 (reg!16874 r!7292))) (= lambda!376793 lambda!376726))))

(assert (=> bs!1787422 (not (= lambda!376793 lambda!376683))))

(declare-fun bs!1787424 () Bool)

(assert (= bs!1787424 (and d!2111330 b!6716900)))

(assert (=> bs!1787424 (not (= lambda!376793 lambda!376742))))

(declare-fun bs!1787425 () Bool)

(assert (= bs!1787425 (and d!2111330 b!6717299)))

(assert (=> bs!1787425 (not (= lambda!376793 lambda!376766))))

(declare-fun bs!1787426 () Bool)

(assert (= bs!1787426 (and d!2111330 d!2111026)))

(assert (=> bs!1787426 (= lambda!376793 lambda!376713)))

(assert (=> bs!1787423 (not (= lambda!376793 lambda!376729))))

(declare-fun bs!1787427 () Bool)

(assert (= bs!1787427 (and d!2111330 d!2111066)))

(assert (=> bs!1787427 (= lambda!376793 lambda!376736)))

(declare-fun bs!1787428 () Bool)

(assert (= bs!1787428 (and d!2111330 d!2111208)))

(assert (=> bs!1787428 (= lambda!376793 lambda!376776)))

(assert (=> bs!1787422 (= lambda!376793 lambda!376681)))

(assert (=> bs!1787426 (not (= lambda!376793 lambda!376714))))

(declare-fun bs!1787429 () Bool)

(assert (= bs!1787429 (and d!2111330 b!6717370)))

(assert (=> bs!1787429 (not (= lambda!376793 lambda!376781))))

(declare-fun bs!1787430 () Bool)

(assert (= bs!1787430 (and d!2111330 b!6717300)))

(assert (=> bs!1787430 (not (= lambda!376793 lambda!376765))))

(assert (=> d!2111330 true))

(assert (=> d!2111330 true))

(assert (=> d!2111330 true))

(declare-fun lambda!376794 () Int)

(assert (=> bs!1787420 (= (and (= (reg!16874 r!7292) (regOne!33602 (regTwo!33603 r!7292))) (= r!7292 (regTwo!33602 (regTwo!33603 r!7292)))) (= lambda!376794 lambda!376782))))

(assert (=> bs!1787421 (= (and (= (reg!16874 r!7292) (regOne!33602 r!7292)) (= r!7292 (regTwo!33602 r!7292))) (= lambda!376794 lambda!376743))))

(assert (=> bs!1787422 (not (= lambda!376794 lambda!376682))))

(assert (=> bs!1787423 (not (= lambda!376794 lambda!376726))))

(assert (=> bs!1787422 (= lambda!376794 lambda!376683)))

(assert (=> bs!1787424 (not (= lambda!376794 lambda!376742))))

(assert (=> bs!1787425 (= (and (= (reg!16874 r!7292) (regOne!33602 (regOne!33603 r!7292))) (= r!7292 (regTwo!33602 (regOne!33603 r!7292)))) (= lambda!376794 lambda!376766))))

(declare-fun bs!1787431 () Bool)

(assert (= bs!1787431 d!2111330))

(assert (=> bs!1787431 (not (= lambda!376794 lambda!376793))))

(assert (=> bs!1787426 (not (= lambda!376794 lambda!376713))))

(assert (=> bs!1787423 (not (= lambda!376794 lambda!376729))))

(assert (=> bs!1787427 (not (= lambda!376794 lambda!376736))))

(assert (=> bs!1787428 (not (= lambda!376794 lambda!376776))))

(assert (=> bs!1787422 (not (= lambda!376794 lambda!376681))))

(assert (=> bs!1787426 (= lambda!376794 lambda!376714)))

(assert (=> bs!1787429 (not (= lambda!376794 lambda!376781))))

(assert (=> bs!1787430 (not (= lambda!376794 lambda!376765))))

(assert (=> d!2111330 true))

(assert (=> d!2111330 true))

(assert (=> d!2111330 true))

(assert (=> d!2111330 (= (Exists!3613 lambda!376793) (Exists!3613 lambda!376794))))

(assert (=> d!2111330 true))

(declare-fun _$90!2536 () Unit!159781)

(assert (=> d!2111330 (= (choose!50051 (reg!16874 r!7292) r!7292 s!2326) _$90!2536)))

(declare-fun m!7480810 () Bool)

(assert (=> bs!1787431 m!7480810))

(declare-fun m!7480812 () Bool)

(assert (=> bs!1787431 m!7480812))

(assert (=> d!2111026 d!2111330))

(assert (=> d!2111026 d!2111172))

(declare-fun d!2111344 () Bool)

(declare-fun res!2749146 () Bool)

(declare-fun e!4059429 () Bool)

(assert (=> d!2111344 (=> res!2749146 e!4059429)))

(assert (=> d!2111344 (= res!2749146 ((_ is Nil!65810) (exprs!6429 (Context!11859 Nil!65810))))))

(assert (=> d!2111344 (= (forall!15745 (exprs!6429 (Context!11859 Nil!65810)) lambda!376753) e!4059429)))

(declare-fun b!6717744 () Bool)

(declare-fun e!4059430 () Bool)

(assert (=> b!6717744 (= e!4059429 e!4059430)))

(declare-fun res!2749147 () Bool)

(assert (=> b!6717744 (=> (not res!2749147) (not e!4059430))))

(assert (=> b!6717744 (= res!2749147 (dynLambda!26244 lambda!376753 (h!72258 (exprs!6429 (Context!11859 Nil!65810)))))))

(declare-fun b!6717745 () Bool)

(assert (=> b!6717745 (= e!4059430 (forall!15745 (t!379611 (exprs!6429 (Context!11859 Nil!65810))) lambda!376753))))

(assert (= (and d!2111344 (not res!2749146)) b!6717744))

(assert (= (and b!6717744 res!2749147) b!6717745))

(declare-fun b_lambda!252943 () Bool)

(assert (=> (not b_lambda!252943) (not b!6717744)))

(declare-fun m!7480814 () Bool)

(assert (=> b!6717744 m!7480814))

(declare-fun m!7480816 () Bool)

(assert (=> b!6717745 m!7480816))

(assert (=> d!2111086 d!2111344))

(assert (=> b!6716936 d!2111192))

(assert (=> b!6716936 d!2111194))

(declare-fun d!2111346 () Bool)

(declare-fun res!2749152 () Bool)

(declare-fun e!4059435 () Bool)

(assert (=> d!2111346 (=> res!2749152 e!4059435)))

(assert (=> d!2111346 (= res!2749152 ((_ is Nil!65811) lt!2436449))))

(assert (=> d!2111346 (= (noDuplicate!2338 lt!2436449) e!4059435)))

(declare-fun b!6717750 () Bool)

(declare-fun e!4059436 () Bool)

(assert (=> b!6717750 (= e!4059435 e!4059436)))

(declare-fun res!2749153 () Bool)

(assert (=> b!6717750 (=> (not res!2749153) (not e!4059436))))

(declare-fun contains!20243 (List!65935 Context!11858) Bool)

(assert (=> b!6717750 (= res!2749153 (not (contains!20243 (t!379612 lt!2436449) (h!72259 lt!2436449))))))

(declare-fun b!6717751 () Bool)

(assert (=> b!6717751 (= e!4059436 (noDuplicate!2338 (t!379612 lt!2436449)))))

(assert (= (and d!2111346 (not res!2749152)) b!6717750))

(assert (= (and b!6717750 res!2749153) b!6717751))

(declare-fun m!7480818 () Bool)

(assert (=> b!6717750 m!7480818))

(declare-fun m!7480820 () Bool)

(assert (=> b!6717751 m!7480820))

(assert (=> d!2111068 d!2111346))

(declare-fun d!2111348 () Bool)

(declare-fun e!4059444 () Bool)

(assert (=> d!2111348 e!4059444))

(declare-fun res!2749158 () Bool)

(assert (=> d!2111348 (=> (not res!2749158) (not e!4059444))))

(declare-fun res!2749159 () List!65935)

(assert (=> d!2111348 (= res!2749158 (noDuplicate!2338 res!2749159))))

(declare-fun e!4059443 () Bool)

(assert (=> d!2111348 e!4059443))

(assert (=> d!2111348 (= (choose!50055 z!1189) res!2749159)))

(declare-fun b!6717759 () Bool)

(declare-fun e!4059445 () Bool)

(declare-fun tp!1841037 () Bool)

(assert (=> b!6717759 (= e!4059445 tp!1841037)))

(declare-fun b!6717758 () Bool)

(declare-fun tp!1841036 () Bool)

(assert (=> b!6717758 (= e!4059443 (and (inv!84609 (h!72259 res!2749159)) e!4059445 tp!1841036))))

(declare-fun b!6717760 () Bool)

(assert (=> b!6717760 (= e!4059444 (= (content!12759 res!2749159) z!1189))))

(assert (= b!6717758 b!6717759))

(assert (= (and d!2111348 ((_ is Cons!65811) res!2749159)) b!6717758))

(assert (= (and d!2111348 res!2749158) b!6717760))

(declare-fun m!7480822 () Bool)

(assert (=> d!2111348 m!7480822))

(declare-fun m!7480824 () Bool)

(assert (=> b!6717758 m!7480824))

(declare-fun m!7480826 () Bool)

(assert (=> b!6717760 m!7480826))

(assert (=> d!2111068 d!2111348))

(assert (=> b!6716827 d!2111076))

(declare-fun b!6717761 () Bool)

(declare-fun e!4059447 () Bool)

(declare-fun e!4059452 () Bool)

(assert (=> b!6717761 (= e!4059447 e!4059452)))

(declare-fun res!2749164 () Bool)

(assert (=> b!6717761 (= res!2749164 (not (nullable!6532 (reg!16874 lt!2436464))))))

(assert (=> b!6717761 (=> (not res!2749164) (not e!4059452))))

(declare-fun bm!606304 () Bool)

(declare-fun call!606310 () Bool)

(declare-fun c!1245522 () Bool)

(assert (=> bm!606304 (= call!606310 (validRegex!8281 (ite c!1245522 (regTwo!33603 lt!2436464) (regTwo!33602 lt!2436464))))))

(declare-fun call!606311 () Bool)

(declare-fun c!1245521 () Bool)

(declare-fun bm!606305 () Bool)

(assert (=> bm!606305 (= call!606311 (validRegex!8281 (ite c!1245521 (reg!16874 lt!2436464) (ite c!1245522 (regOne!33603 lt!2436464) (regOne!33602 lt!2436464)))))))

(declare-fun b!6717762 () Bool)

(declare-fun e!4059446 () Bool)

(assert (=> b!6717762 (= e!4059447 e!4059446)))

(assert (=> b!6717762 (= c!1245522 ((_ is Union!16545) lt!2436464))))

(declare-fun d!2111350 () Bool)

(declare-fun res!2749160 () Bool)

(declare-fun e!4059451 () Bool)

(assert (=> d!2111350 (=> res!2749160 e!4059451)))

(assert (=> d!2111350 (= res!2749160 ((_ is ElementMatch!16545) lt!2436464))))

(assert (=> d!2111350 (= (validRegex!8281 lt!2436464) e!4059451)))

(declare-fun b!6717763 () Bool)

(declare-fun res!2749162 () Bool)

(declare-fun e!4059450 () Bool)

(assert (=> b!6717763 (=> res!2749162 e!4059450)))

(assert (=> b!6717763 (= res!2749162 (not ((_ is Concat!25390) lt!2436464)))))

(assert (=> b!6717763 (= e!4059446 e!4059450)))

(declare-fun b!6717764 () Bool)

(declare-fun e!4059448 () Bool)

(assert (=> b!6717764 (= e!4059450 e!4059448)))

(declare-fun res!2749163 () Bool)

(assert (=> b!6717764 (=> (not res!2749163) (not e!4059448))))

(declare-fun call!606309 () Bool)

(assert (=> b!6717764 (= res!2749163 call!606309)))

(declare-fun b!6717765 () Bool)

(assert (=> b!6717765 (= e!4059452 call!606311)))

(declare-fun b!6717766 () Bool)

(assert (=> b!6717766 (= e!4059451 e!4059447)))

(assert (=> b!6717766 (= c!1245521 ((_ is Star!16545) lt!2436464))))

(declare-fun b!6717767 () Bool)

(declare-fun res!2749161 () Bool)

(declare-fun e!4059449 () Bool)

(assert (=> b!6717767 (=> (not res!2749161) (not e!4059449))))

(assert (=> b!6717767 (= res!2749161 call!606309)))

(assert (=> b!6717767 (= e!4059446 e!4059449)))

(declare-fun bm!606306 () Bool)

(assert (=> bm!606306 (= call!606309 call!606311)))

(declare-fun b!6717768 () Bool)

(assert (=> b!6717768 (= e!4059449 call!606310)))

(declare-fun b!6717769 () Bool)

(assert (=> b!6717769 (= e!4059448 call!606310)))

(assert (= (and d!2111350 (not res!2749160)) b!6717766))

(assert (= (and b!6717766 c!1245521) b!6717761))

(assert (= (and b!6717766 (not c!1245521)) b!6717762))

(assert (= (and b!6717761 res!2749164) b!6717765))

(assert (= (and b!6717762 c!1245522) b!6717767))

(assert (= (and b!6717762 (not c!1245522)) b!6717763))

(assert (= (and b!6717767 res!2749161) b!6717768))

(assert (= (and b!6717763 (not res!2749162)) b!6717764))

(assert (= (and b!6717764 res!2749163) b!6717769))

(assert (= (or b!6717768 b!6717769) bm!606304))

(assert (= (or b!6717767 b!6717764) bm!606306))

(assert (= (or b!6717765 bm!606306) bm!606305))

(declare-fun m!7480828 () Bool)

(assert (=> b!6717761 m!7480828))

(declare-fun m!7480830 () Bool)

(assert (=> bm!606304 m!7480830))

(declare-fun m!7480832 () Bool)

(assert (=> bm!606305 m!7480832))

(assert (=> d!2111084 d!2111350))

(declare-fun d!2111352 () Bool)

(declare-fun res!2749165 () Bool)

(declare-fun e!4059453 () Bool)

(assert (=> d!2111352 (=> res!2749165 e!4059453)))

(assert (=> d!2111352 (= res!2749165 ((_ is Nil!65810) (exprs!6429 (h!72259 zl!343))))))

(assert (=> d!2111352 (= (forall!15745 (exprs!6429 (h!72259 zl!343)) lambda!376752) e!4059453)))

(declare-fun b!6717770 () Bool)

(declare-fun e!4059454 () Bool)

(assert (=> b!6717770 (= e!4059453 e!4059454)))

(declare-fun res!2749166 () Bool)

(assert (=> b!6717770 (=> (not res!2749166) (not e!4059454))))

(assert (=> b!6717770 (= res!2749166 (dynLambda!26244 lambda!376752 (h!72258 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun b!6717771 () Bool)

(assert (=> b!6717771 (= e!4059454 (forall!15745 (t!379611 (exprs!6429 (h!72259 zl!343))) lambda!376752))))

(assert (= (and d!2111352 (not res!2749165)) b!6717770))

(assert (= (and b!6717770 res!2749166) b!6717771))

(declare-fun b_lambda!252945 () Bool)

(assert (=> (not b_lambda!252945) (not b!6717770)))

(declare-fun m!7480834 () Bool)

(assert (=> b!6717770 m!7480834))

(declare-fun m!7480836 () Bool)

(assert (=> b!6717771 m!7480836))

(assert (=> d!2111084 d!2111352))

(declare-fun b!6717772 () Bool)

(declare-fun e!4059456 () Bool)

(declare-fun e!4059461 () Bool)

(assert (=> b!6717772 (= e!4059456 e!4059461)))

(declare-fun res!2749171 () Bool)

(assert (=> b!6717772 (= res!2749171 (not (nullable!6532 (reg!16874 lt!2436458))))))

(assert (=> b!6717772 (=> (not res!2749171) (not e!4059461))))

(declare-fun bm!606307 () Bool)

(declare-fun call!606313 () Bool)

(declare-fun c!1245524 () Bool)

(assert (=> bm!606307 (= call!606313 (validRegex!8281 (ite c!1245524 (regTwo!33603 lt!2436458) (regTwo!33602 lt!2436458))))))

(declare-fun c!1245523 () Bool)

(declare-fun bm!606308 () Bool)

(declare-fun call!606314 () Bool)

(assert (=> bm!606308 (= call!606314 (validRegex!8281 (ite c!1245523 (reg!16874 lt!2436458) (ite c!1245524 (regOne!33603 lt!2436458) (regOne!33602 lt!2436458)))))))

(declare-fun b!6717773 () Bool)

(declare-fun e!4059455 () Bool)

(assert (=> b!6717773 (= e!4059456 e!4059455)))

(assert (=> b!6717773 (= c!1245524 ((_ is Union!16545) lt!2436458))))

(declare-fun d!2111354 () Bool)

(declare-fun res!2749167 () Bool)

(declare-fun e!4059460 () Bool)

(assert (=> d!2111354 (=> res!2749167 e!4059460)))

(assert (=> d!2111354 (= res!2749167 ((_ is ElementMatch!16545) lt!2436458))))

(assert (=> d!2111354 (= (validRegex!8281 lt!2436458) e!4059460)))

(declare-fun b!6717774 () Bool)

(declare-fun res!2749169 () Bool)

(declare-fun e!4059459 () Bool)

(assert (=> b!6717774 (=> res!2749169 e!4059459)))

(assert (=> b!6717774 (= res!2749169 (not ((_ is Concat!25390) lt!2436458)))))

(assert (=> b!6717774 (= e!4059455 e!4059459)))

(declare-fun b!6717775 () Bool)

(declare-fun e!4059457 () Bool)

(assert (=> b!6717775 (= e!4059459 e!4059457)))

(declare-fun res!2749170 () Bool)

(assert (=> b!6717775 (=> (not res!2749170) (not e!4059457))))

(declare-fun call!606312 () Bool)

(assert (=> b!6717775 (= res!2749170 call!606312)))

(declare-fun b!6717776 () Bool)

(assert (=> b!6717776 (= e!4059461 call!606314)))

(declare-fun b!6717777 () Bool)

(assert (=> b!6717777 (= e!4059460 e!4059456)))

(assert (=> b!6717777 (= c!1245523 ((_ is Star!16545) lt!2436458))))

(declare-fun b!6717778 () Bool)

(declare-fun res!2749168 () Bool)

(declare-fun e!4059458 () Bool)

(assert (=> b!6717778 (=> (not res!2749168) (not e!4059458))))

(assert (=> b!6717778 (= res!2749168 call!606312)))

(assert (=> b!6717778 (= e!4059455 e!4059458)))

(declare-fun bm!606309 () Bool)

(assert (=> bm!606309 (= call!606312 call!606314)))

(declare-fun b!6717779 () Bool)

(assert (=> b!6717779 (= e!4059458 call!606313)))

(declare-fun b!6717780 () Bool)

(assert (=> b!6717780 (= e!4059457 call!606313)))

(assert (= (and d!2111354 (not res!2749167)) b!6717777))

(assert (= (and b!6717777 c!1245523) b!6717772))

(assert (= (and b!6717777 (not c!1245523)) b!6717773))

(assert (= (and b!6717772 res!2749171) b!6717776))

(assert (= (and b!6717773 c!1245524) b!6717778))

(assert (= (and b!6717773 (not c!1245524)) b!6717774))

(assert (= (and b!6717778 res!2749168) b!6717779))

(assert (= (and b!6717774 (not res!2749169)) b!6717775))

(assert (= (and b!6717775 res!2749170) b!6717780))

(assert (= (or b!6717779 b!6717780) bm!606307))

(assert (= (or b!6717778 b!6717775) bm!606309))

(assert (= (or b!6717776 bm!606309) bm!606308))

(declare-fun m!7480838 () Bool)

(assert (=> b!6717772 m!7480838))

(declare-fun m!7480840 () Bool)

(assert (=> bm!606307 m!7480840))

(declare-fun m!7480842 () Bool)

(assert (=> bm!606308 m!7480842))

(assert (=> d!2111080 d!2111354))

(declare-fun d!2111356 () Bool)

(declare-fun res!2749172 () Bool)

(declare-fun e!4059462 () Bool)

(assert (=> d!2111356 (=> res!2749172 e!4059462)))

(assert (=> d!2111356 (= res!2749172 ((_ is Nil!65810) (unfocusZipperList!1966 zl!343)))))

(assert (=> d!2111356 (= (forall!15745 (unfocusZipperList!1966 zl!343) lambda!376746) e!4059462)))

(declare-fun b!6717781 () Bool)

(declare-fun e!4059463 () Bool)

(assert (=> b!6717781 (= e!4059462 e!4059463)))

(declare-fun res!2749173 () Bool)

(assert (=> b!6717781 (=> (not res!2749173) (not e!4059463))))

(assert (=> b!6717781 (= res!2749173 (dynLambda!26244 lambda!376746 (h!72258 (unfocusZipperList!1966 zl!343))))))

(declare-fun b!6717782 () Bool)

(assert (=> b!6717782 (= e!4059463 (forall!15745 (t!379611 (unfocusZipperList!1966 zl!343)) lambda!376746))))

(assert (= (and d!2111356 (not res!2749172)) b!6717781))

(assert (= (and b!6717781 res!2749173) b!6717782))

(declare-fun b_lambda!252947 () Bool)

(assert (=> (not b_lambda!252947) (not b!6717781)))

(declare-fun m!7480844 () Bool)

(assert (=> b!6717781 m!7480844))

(declare-fun m!7480846 () Bool)

(assert (=> b!6717782 m!7480846))

(assert (=> d!2111080 d!2111356))

(declare-fun d!2111358 () Bool)

(assert (=> d!2111358 (= (Exists!3613 lambda!376726) (choose!50053 lambda!376726))))

(declare-fun bs!1787432 () Bool)

(assert (= bs!1787432 d!2111358))

(declare-fun m!7480848 () Bool)

(assert (=> bs!1787432 m!7480848))

(assert (=> d!2111038 d!2111358))

(declare-fun d!2111360 () Bool)

(assert (=> d!2111360 (= (Exists!3613 lambda!376729) (choose!50053 lambda!376729))))

(declare-fun bs!1787433 () Bool)

(assert (= bs!1787433 d!2111360))

(declare-fun m!7480850 () Bool)

(assert (=> bs!1787433 m!7480850))

(assert (=> d!2111038 d!2111360))

(declare-fun bs!1787434 () Bool)

(declare-fun d!2111362 () Bool)

(assert (= bs!1787434 (and d!2111362 b!6717369)))

(declare-fun lambda!376799 () Int)

(assert (=> bs!1787434 (not (= lambda!376799 lambda!376782))))

(declare-fun bs!1787435 () Bool)

(assert (= bs!1787435 (and d!2111362 b!6716899)))

(assert (=> bs!1787435 (not (= lambda!376799 lambda!376743))))

(declare-fun bs!1787436 () Bool)

(assert (= bs!1787436 (and d!2111362 b!6716464)))

(assert (=> bs!1787436 (not (= lambda!376799 lambda!376682))))

(declare-fun bs!1787437 () Bool)

(assert (= bs!1787437 (and d!2111362 d!2111038)))

(assert (=> bs!1787437 (= lambda!376799 lambda!376726)))

(assert (=> bs!1787436 (not (= lambda!376799 lambda!376683))))

(declare-fun bs!1787438 () Bool)

(assert (= bs!1787438 (and d!2111362 b!6716900)))

(assert (=> bs!1787438 (not (= lambda!376799 lambda!376742))))

(declare-fun bs!1787439 () Bool)

(assert (= bs!1787439 (and d!2111362 d!2111330)))

(assert (=> bs!1787439 (not (= lambda!376799 lambda!376794))))

(declare-fun bs!1787440 () Bool)

(assert (= bs!1787440 (and d!2111362 b!6717299)))

(assert (=> bs!1787440 (not (= lambda!376799 lambda!376766))))

(assert (=> bs!1787439 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376799 lambda!376793))))

(declare-fun bs!1787441 () Bool)

(assert (= bs!1787441 (and d!2111362 d!2111026)))

(assert (=> bs!1787441 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376799 lambda!376713))))

(assert (=> bs!1787437 (not (= lambda!376799 lambda!376729))))

(declare-fun bs!1787442 () Bool)

(assert (= bs!1787442 (and d!2111362 d!2111066)))

(assert (=> bs!1787442 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376799 lambda!376736))))

(declare-fun bs!1787443 () Bool)

(assert (= bs!1787443 (and d!2111362 d!2111208)))

(assert (=> bs!1787443 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376799 lambda!376776))))

(assert (=> bs!1787436 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376799 lambda!376681))))

(assert (=> bs!1787441 (not (= lambda!376799 lambda!376714))))

(declare-fun bs!1787444 () Bool)

(assert (= bs!1787444 (and d!2111362 b!6717370)))

(assert (=> bs!1787444 (not (= lambda!376799 lambda!376781))))

(declare-fun bs!1787445 () Bool)

(assert (= bs!1787445 (and d!2111362 b!6717300)))

(assert (=> bs!1787445 (not (= lambda!376799 lambda!376765))))

(assert (=> d!2111362 true))

(assert (=> d!2111362 true))

(declare-fun lambda!376800 () Int)

(assert (=> bs!1787434 (not (= lambda!376800 lambda!376782))))

(assert (=> bs!1787435 (not (= lambda!376800 lambda!376743))))

(assert (=> bs!1787436 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376800 lambda!376682))))

(assert (=> bs!1787437 (not (= lambda!376800 lambda!376726))))

(assert (=> bs!1787436 (not (= lambda!376800 lambda!376683))))

(assert (=> bs!1787438 (= (= (Star!16545 (reg!16874 r!7292)) r!7292) (= lambda!376800 lambda!376742))))

(assert (=> bs!1787440 (not (= lambda!376800 lambda!376766))))

(assert (=> bs!1787439 (not (= lambda!376800 lambda!376793))))

(assert (=> bs!1787441 (not (= lambda!376800 lambda!376713))))

(assert (=> bs!1787437 (= lambda!376800 lambda!376729)))

(assert (=> bs!1787442 (not (= lambda!376800 lambda!376736))))

(assert (=> bs!1787443 (not (= lambda!376800 lambda!376776))))

(assert (=> bs!1787436 (not (= lambda!376800 lambda!376681))))

(assert (=> bs!1787441 (not (= lambda!376800 lambda!376714))))

(assert (=> bs!1787444 (= (and (= (reg!16874 r!7292) (reg!16874 (regTwo!33603 r!7292))) (= (Star!16545 (reg!16874 r!7292)) (regTwo!33603 r!7292))) (= lambda!376800 lambda!376781))))

(assert (=> bs!1787445 (= (and (= (reg!16874 r!7292) (reg!16874 (regOne!33603 r!7292))) (= (Star!16545 (reg!16874 r!7292)) (regOne!33603 r!7292))) (= lambda!376800 lambda!376765))))

(declare-fun bs!1787446 () Bool)

(assert (= bs!1787446 d!2111362))

(assert (=> bs!1787446 (not (= lambda!376800 lambda!376799))))

(assert (=> bs!1787439 (not (= lambda!376800 lambda!376794))))

(assert (=> d!2111362 true))

(assert (=> d!2111362 true))

(assert (=> d!2111362 (= (Exists!3613 lambda!376799) (Exists!3613 lambda!376800))))

(assert (=> d!2111362 true))

(declare-fun _$91!656 () Unit!159781)

(assert (=> d!2111362 (= (choose!50052 (reg!16874 r!7292) s!2326) _$91!656)))

(declare-fun m!7480852 () Bool)

(assert (=> bs!1787446 m!7480852))

(declare-fun m!7480854 () Bool)

(assert (=> bs!1787446 m!7480854))

(assert (=> d!2111038 d!2111362))

(assert (=> d!2111038 d!2111172))

(assert (=> b!6716822 d!2111164))

(declare-fun bm!606310 () Bool)

(declare-fun call!606315 () (InoxSet Context!11858))

(assert (=> bm!606310 (= call!606315 (derivationStepZipperDown!1773 (h!72258 (exprs!6429 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))) (Context!11859 (t!379611 (exprs!6429 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))) (h!72260 s!2326)))))

(declare-fun b!6717793 () Bool)

(declare-fun e!4059468 () Bool)

(assert (=> b!6717793 (= e!4059468 (nullable!6532 (h!72258 (exprs!6429 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))))))

(declare-fun b!6717794 () Bool)

(declare-fun e!4059469 () (InoxSet Context!11858))

(declare-fun e!4059470 () (InoxSet Context!11858))

(assert (=> b!6717794 (= e!4059469 e!4059470)))

(declare-fun c!1245526 () Bool)

(assert (=> b!6717794 (= c!1245526 ((_ is Cons!65810) (exprs!6429 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))))

(declare-fun b!6717795 () Bool)

(assert (=> b!6717795 (= e!4059470 ((as const (Array Context!11858 Bool)) false))))

(declare-fun b!6717796 () Bool)

(assert (=> b!6717796 (= e!4059470 call!606315)))

(declare-fun d!2111364 () Bool)

(declare-fun c!1245525 () Bool)

(assert (=> d!2111364 (= c!1245525 e!4059468)))

(declare-fun res!2749184 () Bool)

(assert (=> d!2111364 (=> (not res!2749184) (not e!4059468))))

(assert (=> d!2111364 (= res!2749184 ((_ is Cons!65810) (exprs!6429 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))))

(assert (=> d!2111364 (= (derivationStepZipperUp!1699 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (h!72260 s!2326)) e!4059469)))

(declare-fun b!6717797 () Bool)

(assert (=> b!6717797 (= e!4059469 ((_ map or) call!606315 (derivationStepZipperUp!1699 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (t!379611 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810)))))))) (h!72260 s!2326))))))

(assert (= (and d!2111364 res!2749184) b!6717793))

(assert (= (and d!2111364 c!1245525) b!6717797))

(assert (= (and d!2111364 (not c!1245525)) b!6717794))

(assert (= (and b!6717794 c!1245526) b!6717796))

(assert (= (and b!6717794 (not c!1245526)) b!6717795))

(assert (= (or b!6717797 b!6717796) bm!606310))

(declare-fun m!7480856 () Bool)

(assert (=> bm!606310 m!7480856))

(declare-fun m!7480858 () Bool)

(assert (=> b!6717793 m!7480858))

(declare-fun m!7480860 () Bool)

(assert (=> b!6717797 m!7480860))

(assert (=> b!6717029 d!2111364))

(declare-fun d!2111366 () Bool)

(assert (=> d!2111366 (= (nullable!6532 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))) (nullableFct!2446 (h!72258 (exprs!6429 (Context!11859 (Cons!65810 r!7292 Nil!65810))))))))

(declare-fun bs!1787447 () Bool)

(assert (= bs!1787447 d!2111366))

(declare-fun m!7480862 () Bool)

(assert (=> bs!1787447 m!7480862))

(assert (=> b!6717025 d!2111366))

(declare-fun d!2111368 () Bool)

(assert (=> d!2111368 (= (isEmpty!38134 (exprs!6429 (h!72259 zl!343))) ((_ is Nil!65810) (exprs!6429 (h!72259 zl!343))))))

(assert (=> b!6717009 d!2111368))

(declare-fun b!6717798 () Bool)

(declare-fun e!4059472 () Bool)

(declare-fun e!4059477 () Bool)

(assert (=> b!6717798 (= e!4059472 e!4059477)))

(declare-fun res!2749189 () Bool)

(assert (=> b!6717798 (= res!2749189 (not (nullable!6532 (reg!16874 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))))))))

(assert (=> b!6717798 (=> (not res!2749189) (not e!4059477))))

(declare-fun c!1245528 () Bool)

(declare-fun call!606317 () Bool)

(declare-fun bm!606311 () Bool)

(assert (=> bm!606311 (= call!606317 (validRegex!8281 (ite c!1245528 (regTwo!33603 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))) (regTwo!33602 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))))))))

(declare-fun c!1245527 () Bool)

(declare-fun call!606318 () Bool)

(declare-fun bm!606312 () Bool)

(assert (=> bm!606312 (= call!606318 (validRegex!8281 (ite c!1245527 (reg!16874 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))) (ite c!1245528 (regOne!33603 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))) (regOne!33602 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292))))))))))

(declare-fun b!6717799 () Bool)

(declare-fun e!4059471 () Bool)

(assert (=> b!6717799 (= e!4059472 e!4059471)))

(assert (=> b!6717799 (= c!1245528 ((_ is Union!16545) (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))))))

(declare-fun d!2111370 () Bool)

(declare-fun res!2749185 () Bool)

(declare-fun e!4059476 () Bool)

(assert (=> d!2111370 (=> res!2749185 e!4059476)))

(assert (=> d!2111370 (= res!2749185 ((_ is ElementMatch!16545) (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))))))

(assert (=> d!2111370 (= (validRegex!8281 (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))) e!4059476)))

(declare-fun b!6717800 () Bool)

(declare-fun res!2749187 () Bool)

(declare-fun e!4059475 () Bool)

(assert (=> b!6717800 (=> res!2749187 e!4059475)))

(assert (=> b!6717800 (= res!2749187 (not ((_ is Concat!25390) (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292))))))))

(assert (=> b!6717800 (= e!4059471 e!4059475)))

(declare-fun b!6717801 () Bool)

(declare-fun e!4059473 () Bool)

(assert (=> b!6717801 (= e!4059475 e!4059473)))

(declare-fun res!2749188 () Bool)

(assert (=> b!6717801 (=> (not res!2749188) (not e!4059473))))

(declare-fun call!606316 () Bool)

(assert (=> b!6717801 (= res!2749188 call!606316)))

(declare-fun b!6717802 () Bool)

(assert (=> b!6717802 (= e!4059477 call!606318)))

(declare-fun b!6717803 () Bool)

(assert (=> b!6717803 (= e!4059476 e!4059472)))

(assert (=> b!6717803 (= c!1245527 ((_ is Star!16545) (ite c!1245310 (reg!16874 r!7292) (ite c!1245311 (regOne!33603 r!7292) (regOne!33602 r!7292)))))))

(declare-fun b!6717804 () Bool)

(declare-fun res!2749186 () Bool)

(declare-fun e!4059474 () Bool)

(assert (=> b!6717804 (=> (not res!2749186) (not e!4059474))))

(assert (=> b!6717804 (= res!2749186 call!606316)))

(assert (=> b!6717804 (= e!4059471 e!4059474)))

(declare-fun bm!606313 () Bool)

(assert (=> bm!606313 (= call!606316 call!606318)))

(declare-fun b!6717805 () Bool)

(assert (=> b!6717805 (= e!4059474 call!606317)))

(declare-fun b!6717806 () Bool)

(assert (=> b!6717806 (= e!4059473 call!606317)))

(assert (= (and d!2111370 (not res!2749185)) b!6717803))

(assert (= (and b!6717803 c!1245527) b!6717798))

(assert (= (and b!6717803 (not c!1245527)) b!6717799))

(assert (= (and b!6717798 res!2749189) b!6717802))

(assert (= (and b!6717799 c!1245528) b!6717804))

(assert (= (and b!6717799 (not c!1245528)) b!6717800))

(assert (= (and b!6717804 res!2749186) b!6717805))

(assert (= (and b!6717800 (not res!2749187)) b!6717801))

(assert (= (and b!6717801 res!2749188) b!6717806))

(assert (= (or b!6717805 b!6717806) bm!606311))

(assert (= (or b!6717804 b!6717801) bm!606313))

(assert (= (or b!6717802 bm!606313) bm!606312))

(declare-fun m!7480864 () Bool)

(assert (=> b!6717798 m!7480864))

(declare-fun m!7480866 () Bool)

(assert (=> bm!606311 m!7480866))

(declare-fun m!7480868 () Bool)

(assert (=> bm!606312 m!7480868))

(assert (=> bm!606189 d!2111370))

(declare-fun b!6717807 () Bool)

(declare-fun e!4059479 () Bool)

(declare-fun e!4059484 () Bool)

(assert (=> b!6717807 (= e!4059479 e!4059484)))

(declare-fun res!2749194 () Bool)

(assert (=> b!6717807 (= res!2749194 (not (nullable!6532 (reg!16874 lt!2436397))))))

(assert (=> b!6717807 (=> (not res!2749194) (not e!4059484))))

(declare-fun bm!606314 () Bool)

(declare-fun call!606320 () Bool)

(declare-fun c!1245530 () Bool)

(assert (=> bm!606314 (= call!606320 (validRegex!8281 (ite c!1245530 (regTwo!33603 lt!2436397) (regTwo!33602 lt!2436397))))))

(declare-fun bm!606315 () Bool)

(declare-fun c!1245529 () Bool)

(declare-fun call!606321 () Bool)

(assert (=> bm!606315 (= call!606321 (validRegex!8281 (ite c!1245529 (reg!16874 lt!2436397) (ite c!1245530 (regOne!33603 lt!2436397) (regOne!33602 lt!2436397)))))))

(declare-fun b!6717808 () Bool)

(declare-fun e!4059478 () Bool)

(assert (=> b!6717808 (= e!4059479 e!4059478)))

(assert (=> b!6717808 (= c!1245530 ((_ is Union!16545) lt!2436397))))

(declare-fun d!2111372 () Bool)

(declare-fun res!2749190 () Bool)

(declare-fun e!4059483 () Bool)

(assert (=> d!2111372 (=> res!2749190 e!4059483)))

(assert (=> d!2111372 (= res!2749190 ((_ is ElementMatch!16545) lt!2436397))))

(assert (=> d!2111372 (= (validRegex!8281 lt!2436397) e!4059483)))

(declare-fun b!6717809 () Bool)

(declare-fun res!2749192 () Bool)

(declare-fun e!4059482 () Bool)

(assert (=> b!6717809 (=> res!2749192 e!4059482)))

(assert (=> b!6717809 (= res!2749192 (not ((_ is Concat!25390) lt!2436397)))))

(assert (=> b!6717809 (= e!4059478 e!4059482)))

(declare-fun b!6717810 () Bool)

(declare-fun e!4059480 () Bool)

(assert (=> b!6717810 (= e!4059482 e!4059480)))

(declare-fun res!2749193 () Bool)

(assert (=> b!6717810 (=> (not res!2749193) (not e!4059480))))

(declare-fun call!606319 () Bool)

(assert (=> b!6717810 (= res!2749193 call!606319)))

(declare-fun b!6717811 () Bool)

(assert (=> b!6717811 (= e!4059484 call!606321)))

(declare-fun b!6717812 () Bool)

(assert (=> b!6717812 (= e!4059483 e!4059479)))

(assert (=> b!6717812 (= c!1245529 ((_ is Star!16545) lt!2436397))))

(declare-fun b!6717813 () Bool)

(declare-fun res!2749191 () Bool)

(declare-fun e!4059481 () Bool)

(assert (=> b!6717813 (=> (not res!2749191) (not e!4059481))))

(assert (=> b!6717813 (= res!2749191 call!606319)))

(assert (=> b!6717813 (= e!4059478 e!4059481)))

(declare-fun bm!606316 () Bool)

(assert (=> bm!606316 (= call!606319 call!606321)))

(declare-fun b!6717814 () Bool)

(assert (=> b!6717814 (= e!4059481 call!606320)))

(declare-fun b!6717815 () Bool)

(assert (=> b!6717815 (= e!4059480 call!606320)))

(assert (= (and d!2111372 (not res!2749190)) b!6717812))

(assert (= (and b!6717812 c!1245529) b!6717807))

(assert (= (and b!6717812 (not c!1245529)) b!6717808))

(assert (= (and b!6717807 res!2749194) b!6717811))

(assert (= (and b!6717808 c!1245530) b!6717813))

(assert (= (and b!6717808 (not c!1245530)) b!6717809))

(assert (= (and b!6717813 res!2749191) b!6717814))

(assert (= (and b!6717809 (not res!2749192)) b!6717810))

(assert (= (and b!6717810 res!2749193) b!6717815))

(assert (= (or b!6717814 b!6717815) bm!606314))

(assert (= (or b!6717813 b!6717810) bm!606316))

(assert (= (or b!6717811 bm!606316) bm!606315))

(declare-fun m!7480870 () Bool)

(assert (=> b!6717807 m!7480870))

(declare-fun m!7480872 () Bool)

(assert (=> bm!606314 m!7480872))

(declare-fun m!7480874 () Bool)

(assert (=> bm!606315 m!7480874))

(assert (=> d!2111016 d!2111372))

(assert (=> d!2111016 d!2111080))

(assert (=> d!2111016 d!2111082))

(declare-fun d!2111374 () Bool)

(assert (=> d!2111374 (= (isEmpty!38134 (tail!12603 (exprs!6429 (h!72259 zl!343)))) ((_ is Nil!65810) (tail!12603 (exprs!6429 (h!72259 zl!343)))))))

(assert (=> b!6717011 d!2111374))

(declare-fun d!2111376 () Bool)

(assert (=> d!2111376 (= (tail!12603 (exprs!6429 (h!72259 zl!343))) (t!379611 (exprs!6429 (h!72259 zl!343))))))

(assert (=> b!6717011 d!2111376))

(assert (=> b!6716983 d!2111084))

(declare-fun bs!1787448 () Bool)

(declare-fun d!2111378 () Bool)

(assert (= bs!1787448 (and d!2111378 d!2111082)))

(declare-fun lambda!376801 () Int)

(assert (=> bs!1787448 (= lambda!376801 lambda!376749)))

(declare-fun bs!1787449 () Bool)

(assert (= bs!1787449 (and d!2111378 d!2111086)))

(assert (=> bs!1787449 (= lambda!376801 lambda!376753)))

(declare-fun bs!1787450 () Bool)

(assert (= bs!1787450 (and d!2111378 d!2111320)))

(assert (=> bs!1787450 (= lambda!376801 lambda!376788)))

(declare-fun bs!1787451 () Bool)

(assert (= bs!1787451 (and d!2111378 d!2111018)))

(assert (=> bs!1787451 (= lambda!376801 lambda!376702)))

(declare-fun bs!1787452 () Bool)

(assert (= bs!1787452 (and d!2111378 d!2111070)))

(assert (=> bs!1787452 (= lambda!376801 lambda!376737)))

(declare-fun bs!1787453 () Bool)

(assert (= bs!1787453 (and d!2111378 d!2111254)))

(assert (=> bs!1787453 (= lambda!376801 lambda!376785)))

(declare-fun bs!1787454 () Bool)

(assert (= bs!1787454 (and d!2111378 d!2111084)))

(assert (=> bs!1787454 (= lambda!376801 lambda!376752)))

(declare-fun bs!1787455 () Bool)

(assert (= bs!1787455 (and d!2111378 d!2111296)))

(assert (=> bs!1787455 (= lambda!376801 lambda!376787)))

(declare-fun bs!1787456 () Bool)

(assert (= bs!1787456 (and d!2111378 d!2111080)))

(assert (=> bs!1787456 (= lambda!376801 lambda!376746)))

(declare-fun bs!1787457 () Bool)

(assert (= bs!1787457 (and d!2111378 d!2111200)))

(assert (=> bs!1787457 (= lambda!376801 lambda!376771)))

(declare-fun lt!2436506 () List!65934)

(assert (=> d!2111378 (forall!15745 lt!2436506 lambda!376801)))

(declare-fun e!4059485 () List!65934)

(assert (=> d!2111378 (= lt!2436506 e!4059485)))

(declare-fun c!1245531 () Bool)

(assert (=> d!2111378 (= c!1245531 ((_ is Cons!65811) (t!379612 zl!343)))))

(assert (=> d!2111378 (= (unfocusZipperList!1966 (t!379612 zl!343)) lt!2436506)))

(declare-fun b!6717816 () Bool)

(assert (=> b!6717816 (= e!4059485 (Cons!65810 (generalisedConcat!2142 (exprs!6429 (h!72259 (t!379612 zl!343)))) (unfocusZipperList!1966 (t!379612 (t!379612 zl!343)))))))

(declare-fun b!6717817 () Bool)

(assert (=> b!6717817 (= e!4059485 Nil!65810)))

(assert (= (and d!2111378 c!1245531) b!6717816))

(assert (= (and d!2111378 (not c!1245531)) b!6717817))

(declare-fun m!7480876 () Bool)

(assert (=> d!2111378 m!7480876))

(declare-fun m!7480878 () Bool)

(assert (=> b!6717816 m!7480878))

(declare-fun m!7480880 () Bool)

(assert (=> b!6717816 m!7480880))

(assert (=> b!6716983 d!2111378))

(declare-fun d!2111380 () Bool)

(declare-fun res!2749195 () Bool)

(declare-fun e!4059486 () Bool)

(assert (=> d!2111380 (=> res!2749195 e!4059486)))

(assert (=> d!2111380 (= res!2749195 ((_ is Nil!65810) lt!2436461))))

(assert (=> d!2111380 (= (forall!15745 lt!2436461 lambda!376749) e!4059486)))

(declare-fun b!6717818 () Bool)

(declare-fun e!4059487 () Bool)

(assert (=> b!6717818 (= e!4059486 e!4059487)))

(declare-fun res!2749196 () Bool)

(assert (=> b!6717818 (=> (not res!2749196) (not e!4059487))))

(assert (=> b!6717818 (= res!2749196 (dynLambda!26244 lambda!376749 (h!72258 lt!2436461)))))

(declare-fun b!6717819 () Bool)

(assert (=> b!6717819 (= e!4059487 (forall!15745 (t!379611 lt!2436461) lambda!376749))))

(assert (= (and d!2111380 (not res!2749195)) b!6717818))

(assert (= (and b!6717818 res!2749196) b!6717819))

(declare-fun b_lambda!252949 () Bool)

(assert (=> (not b_lambda!252949) (not b!6717818)))

(declare-fun m!7480882 () Bool)

(assert (=> b!6717818 m!7480882))

(declare-fun m!7480884 () Bool)

(assert (=> b!6717819 m!7480884))

(assert (=> d!2111082 d!2111380))

(declare-fun b!6717822 () Bool)

(declare-fun e!4059488 () Bool)

(declare-fun tp!1841038 () Bool)

(assert (=> b!6717822 (= e!4059488 tp!1841038)))

(declare-fun b!6717821 () Bool)

(declare-fun tp!1841042 () Bool)

(declare-fun tp!1841041 () Bool)

(assert (=> b!6717821 (= e!4059488 (and tp!1841042 tp!1841041))))

(assert (=> b!6717068 (= tp!1840868 e!4059488)))

(declare-fun b!6717823 () Bool)

(declare-fun tp!1841040 () Bool)

(declare-fun tp!1841039 () Bool)

(assert (=> b!6717823 (= e!4059488 (and tp!1841040 tp!1841039))))

(declare-fun b!6717820 () Bool)

(assert (=> b!6717820 (= e!4059488 tp_is_empty!42343)))

(assert (= (and b!6717068 ((_ is ElementMatch!16545) (regOne!33602 (reg!16874 r!7292)))) b!6717820))

(assert (= (and b!6717068 ((_ is Concat!25390) (regOne!33602 (reg!16874 r!7292)))) b!6717821))

(assert (= (and b!6717068 ((_ is Star!16545) (regOne!33602 (reg!16874 r!7292)))) b!6717822))

(assert (= (and b!6717068 ((_ is Union!16545) (regOne!33602 (reg!16874 r!7292)))) b!6717823))

(declare-fun b!6717826 () Bool)

(declare-fun e!4059489 () Bool)

(declare-fun tp!1841043 () Bool)

(assert (=> b!6717826 (= e!4059489 tp!1841043)))

(declare-fun b!6717825 () Bool)

(declare-fun tp!1841047 () Bool)

(declare-fun tp!1841046 () Bool)

(assert (=> b!6717825 (= e!4059489 (and tp!1841047 tp!1841046))))

(assert (=> b!6717068 (= tp!1840867 e!4059489)))

(declare-fun b!6717827 () Bool)

(declare-fun tp!1841045 () Bool)

(declare-fun tp!1841044 () Bool)

(assert (=> b!6717827 (= e!4059489 (and tp!1841045 tp!1841044))))

(declare-fun b!6717824 () Bool)

(assert (=> b!6717824 (= e!4059489 tp_is_empty!42343)))

(assert (= (and b!6717068 ((_ is ElementMatch!16545) (regTwo!33602 (reg!16874 r!7292)))) b!6717824))

(assert (= (and b!6717068 ((_ is Concat!25390) (regTwo!33602 (reg!16874 r!7292)))) b!6717825))

(assert (= (and b!6717068 ((_ is Star!16545) (regTwo!33602 (reg!16874 r!7292)))) b!6717826))

(assert (= (and b!6717068 ((_ is Union!16545) (regTwo!33602 (reg!16874 r!7292)))) b!6717827))

(declare-fun b!6717830 () Bool)

(declare-fun e!4059490 () Bool)

(declare-fun tp!1841048 () Bool)

(assert (=> b!6717830 (= e!4059490 tp!1841048)))

(declare-fun b!6717829 () Bool)

(declare-fun tp!1841052 () Bool)

(declare-fun tp!1841051 () Bool)

(assert (=> b!6717829 (= e!4059490 (and tp!1841052 tp!1841051))))

(assert (=> b!6717060 (= tp!1840858 e!4059490)))

(declare-fun b!6717831 () Bool)

(declare-fun tp!1841050 () Bool)

(declare-fun tp!1841049 () Bool)

(assert (=> b!6717831 (= e!4059490 (and tp!1841050 tp!1841049))))

(declare-fun b!6717828 () Bool)

(assert (=> b!6717828 (= e!4059490 tp_is_empty!42343)))

(assert (= (and b!6717060 ((_ is ElementMatch!16545) (regOne!33602 (regOne!33602 r!7292)))) b!6717828))

(assert (= (and b!6717060 ((_ is Concat!25390) (regOne!33602 (regOne!33602 r!7292)))) b!6717829))

(assert (= (and b!6717060 ((_ is Star!16545) (regOne!33602 (regOne!33602 r!7292)))) b!6717830))

(assert (= (and b!6717060 ((_ is Union!16545) (regOne!33602 (regOne!33602 r!7292)))) b!6717831))

(declare-fun b!6717834 () Bool)

(declare-fun e!4059491 () Bool)

(declare-fun tp!1841053 () Bool)

(assert (=> b!6717834 (= e!4059491 tp!1841053)))

(declare-fun b!6717833 () Bool)

(declare-fun tp!1841057 () Bool)

(declare-fun tp!1841056 () Bool)

(assert (=> b!6717833 (= e!4059491 (and tp!1841057 tp!1841056))))

(assert (=> b!6717060 (= tp!1840857 e!4059491)))

(declare-fun b!6717835 () Bool)

(declare-fun tp!1841055 () Bool)

(declare-fun tp!1841054 () Bool)

(assert (=> b!6717835 (= e!4059491 (and tp!1841055 tp!1841054))))

(declare-fun b!6717832 () Bool)

(assert (=> b!6717832 (= e!4059491 tp_is_empty!42343)))

(assert (= (and b!6717060 ((_ is ElementMatch!16545) (regTwo!33602 (regOne!33602 r!7292)))) b!6717832))

(assert (= (and b!6717060 ((_ is Concat!25390) (regTwo!33602 (regOne!33602 r!7292)))) b!6717833))

(assert (= (and b!6717060 ((_ is Star!16545) (regTwo!33602 (regOne!33602 r!7292)))) b!6717834))

(assert (= (and b!6717060 ((_ is Union!16545) (regTwo!33602 (regOne!33602 r!7292)))) b!6717835))

(declare-fun b!6717836 () Bool)

(declare-fun e!4059492 () Bool)

(declare-fun tp!1841058 () Bool)

(assert (=> b!6717836 (= e!4059492 (and tp_is_empty!42343 tp!1841058))))

(assert (=> b!6717083 (= tp!1840877 e!4059492)))

(assert (= (and b!6717083 ((_ is Cons!65812) (t!379613 (t!379613 s!2326)))) b!6717836))

(declare-fun b!6717839 () Bool)

(declare-fun e!4059493 () Bool)

(declare-fun tp!1841059 () Bool)

(assert (=> b!6717839 (= e!4059493 tp!1841059)))

(declare-fun b!6717838 () Bool)

(declare-fun tp!1841063 () Bool)

(declare-fun tp!1841062 () Bool)

(assert (=> b!6717838 (= e!4059493 (and tp!1841063 tp!1841062))))

(assert (=> b!6717069 (= tp!1840864 e!4059493)))

(declare-fun b!6717840 () Bool)

(declare-fun tp!1841061 () Bool)

(declare-fun tp!1841060 () Bool)

(assert (=> b!6717840 (= e!4059493 (and tp!1841061 tp!1841060))))

(declare-fun b!6717837 () Bool)

(assert (=> b!6717837 (= e!4059493 tp_is_empty!42343)))

(assert (= (and b!6717069 ((_ is ElementMatch!16545) (reg!16874 (reg!16874 r!7292)))) b!6717837))

(assert (= (and b!6717069 ((_ is Concat!25390) (reg!16874 (reg!16874 r!7292)))) b!6717838))

(assert (= (and b!6717069 ((_ is Star!16545) (reg!16874 (reg!16874 r!7292)))) b!6717839))

(assert (= (and b!6717069 ((_ is Union!16545) (reg!16874 (reg!16874 r!7292)))) b!6717840))

(declare-fun b!6717843 () Bool)

(declare-fun e!4059494 () Bool)

(declare-fun tp!1841064 () Bool)

(assert (=> b!6717843 (= e!4059494 tp!1841064)))

(declare-fun b!6717842 () Bool)

(declare-fun tp!1841068 () Bool)

(declare-fun tp!1841067 () Bool)

(assert (=> b!6717842 (= e!4059494 (and tp!1841068 tp!1841067))))

(assert (=> b!6717051 (= tp!1840846 e!4059494)))

(declare-fun b!6717844 () Bool)

(declare-fun tp!1841066 () Bool)

(declare-fun tp!1841065 () Bool)

(assert (=> b!6717844 (= e!4059494 (and tp!1841066 tp!1841065))))

(declare-fun b!6717841 () Bool)

(assert (=> b!6717841 (= e!4059494 tp_is_empty!42343)))

(assert (= (and b!6717051 ((_ is ElementMatch!16545) (regOne!33602 (regOne!33603 r!7292)))) b!6717841))

(assert (= (and b!6717051 ((_ is Concat!25390) (regOne!33602 (regOne!33603 r!7292)))) b!6717842))

(assert (= (and b!6717051 ((_ is Star!16545) (regOne!33602 (regOne!33603 r!7292)))) b!6717843))

(assert (= (and b!6717051 ((_ is Union!16545) (regOne!33602 (regOne!33603 r!7292)))) b!6717844))

(declare-fun b!6717847 () Bool)

(declare-fun e!4059495 () Bool)

(declare-fun tp!1841069 () Bool)

(assert (=> b!6717847 (= e!4059495 tp!1841069)))

(declare-fun b!6717846 () Bool)

(declare-fun tp!1841073 () Bool)

(declare-fun tp!1841072 () Bool)

(assert (=> b!6717846 (= e!4059495 (and tp!1841073 tp!1841072))))

(assert (=> b!6717051 (= tp!1840845 e!4059495)))

(declare-fun b!6717848 () Bool)

(declare-fun tp!1841071 () Bool)

(declare-fun tp!1841070 () Bool)

(assert (=> b!6717848 (= e!4059495 (and tp!1841071 tp!1841070))))

(declare-fun b!6717845 () Bool)

(assert (=> b!6717845 (= e!4059495 tp_is_empty!42343)))

(assert (= (and b!6717051 ((_ is ElementMatch!16545) (regTwo!33602 (regOne!33603 r!7292)))) b!6717845))

(assert (= (and b!6717051 ((_ is Concat!25390) (regTwo!33602 (regOne!33603 r!7292)))) b!6717846))

(assert (= (and b!6717051 ((_ is Star!16545) (regTwo!33602 (regOne!33603 r!7292)))) b!6717847))

(assert (= (and b!6717051 ((_ is Union!16545) (regTwo!33602 (regOne!33603 r!7292)))) b!6717848))

(declare-fun b!6717851 () Bool)

(declare-fun e!4059496 () Bool)

(declare-fun tp!1841074 () Bool)

(assert (=> b!6717851 (= e!4059496 tp!1841074)))

(declare-fun b!6717850 () Bool)

(declare-fun tp!1841078 () Bool)

(declare-fun tp!1841077 () Bool)

(assert (=> b!6717850 (= e!4059496 (and tp!1841078 tp!1841077))))

(assert (=> b!6717052 (= tp!1840842 e!4059496)))

(declare-fun b!6717852 () Bool)

(declare-fun tp!1841076 () Bool)

(declare-fun tp!1841075 () Bool)

(assert (=> b!6717852 (= e!4059496 (and tp!1841076 tp!1841075))))

(declare-fun b!6717849 () Bool)

(assert (=> b!6717849 (= e!4059496 tp_is_empty!42343)))

(assert (= (and b!6717052 ((_ is ElementMatch!16545) (reg!16874 (regOne!33603 r!7292)))) b!6717849))

(assert (= (and b!6717052 ((_ is Concat!25390) (reg!16874 (regOne!33603 r!7292)))) b!6717850))

(assert (= (and b!6717052 ((_ is Star!16545) (reg!16874 (regOne!33603 r!7292)))) b!6717851))

(assert (= (and b!6717052 ((_ is Union!16545) (reg!16874 (regOne!33603 r!7292)))) b!6717852))

(declare-fun b!6717855 () Bool)

(declare-fun e!4059497 () Bool)

(declare-fun tp!1841079 () Bool)

(assert (=> b!6717855 (= e!4059497 tp!1841079)))

(declare-fun b!6717854 () Bool)

(declare-fun tp!1841083 () Bool)

(declare-fun tp!1841082 () Bool)

(assert (=> b!6717854 (= e!4059497 (and tp!1841083 tp!1841082))))

(assert (=> b!6717053 (= tp!1840844 e!4059497)))

(declare-fun b!6717856 () Bool)

(declare-fun tp!1841081 () Bool)

(declare-fun tp!1841080 () Bool)

(assert (=> b!6717856 (= e!4059497 (and tp!1841081 tp!1841080))))

(declare-fun b!6717853 () Bool)

(assert (=> b!6717853 (= e!4059497 tp_is_empty!42343)))

(assert (= (and b!6717053 ((_ is ElementMatch!16545) (regOne!33603 (regOne!33603 r!7292)))) b!6717853))

(assert (= (and b!6717053 ((_ is Concat!25390) (regOne!33603 (regOne!33603 r!7292)))) b!6717854))

(assert (= (and b!6717053 ((_ is Star!16545) (regOne!33603 (regOne!33603 r!7292)))) b!6717855))

(assert (= (and b!6717053 ((_ is Union!16545) (regOne!33603 (regOne!33603 r!7292)))) b!6717856))

(declare-fun b!6717859 () Bool)

(declare-fun e!4059498 () Bool)

(declare-fun tp!1841084 () Bool)

(assert (=> b!6717859 (= e!4059498 tp!1841084)))

(declare-fun b!6717858 () Bool)

(declare-fun tp!1841088 () Bool)

(declare-fun tp!1841087 () Bool)

(assert (=> b!6717858 (= e!4059498 (and tp!1841088 tp!1841087))))

(assert (=> b!6717053 (= tp!1840843 e!4059498)))

(declare-fun b!6717860 () Bool)

(declare-fun tp!1841086 () Bool)

(declare-fun tp!1841085 () Bool)

(assert (=> b!6717860 (= e!4059498 (and tp!1841086 tp!1841085))))

(declare-fun b!6717857 () Bool)

(assert (=> b!6717857 (= e!4059498 tp_is_empty!42343)))

(assert (= (and b!6717053 ((_ is ElementMatch!16545) (regTwo!33603 (regOne!33603 r!7292)))) b!6717857))

(assert (= (and b!6717053 ((_ is Concat!25390) (regTwo!33603 (regOne!33603 r!7292)))) b!6717858))

(assert (= (and b!6717053 ((_ is Star!16545) (regTwo!33603 (regOne!33603 r!7292)))) b!6717859))

(assert (= (and b!6717053 ((_ is Union!16545) (regTwo!33603 (regOne!33603 r!7292)))) b!6717860))

(declare-fun b!6717863 () Bool)

(declare-fun e!4059499 () Bool)

(declare-fun tp!1841089 () Bool)

(assert (=> b!6717863 (= e!4059499 tp!1841089)))

(declare-fun b!6717862 () Bool)

(declare-fun tp!1841093 () Bool)

(declare-fun tp!1841092 () Bool)

(assert (=> b!6717862 (= e!4059499 (and tp!1841093 tp!1841092))))

(assert (=> b!6717065 (= tp!1840859 e!4059499)))

(declare-fun b!6717864 () Bool)

(declare-fun tp!1841091 () Bool)

(declare-fun tp!1841090 () Bool)

(assert (=> b!6717864 (= e!4059499 (and tp!1841091 tp!1841090))))

(declare-fun b!6717861 () Bool)

(assert (=> b!6717861 (= e!4059499 tp_is_empty!42343)))

(assert (= (and b!6717065 ((_ is ElementMatch!16545) (reg!16874 (regTwo!33602 r!7292)))) b!6717861))

(assert (= (and b!6717065 ((_ is Concat!25390) (reg!16874 (regTwo!33602 r!7292)))) b!6717862))

(assert (= (and b!6717065 ((_ is Star!16545) (reg!16874 (regTwo!33602 r!7292)))) b!6717863))

(assert (= (and b!6717065 ((_ is Union!16545) (reg!16874 (regTwo!33602 r!7292)))) b!6717864))

(declare-fun b!6717867 () Bool)

(declare-fun e!4059500 () Bool)

(declare-fun tp!1841094 () Bool)

(assert (=> b!6717867 (= e!4059500 tp!1841094)))

(declare-fun b!6717866 () Bool)

(declare-fun tp!1841098 () Bool)

(declare-fun tp!1841097 () Bool)

(assert (=> b!6717866 (= e!4059500 (and tp!1841098 tp!1841097))))

(assert (=> b!6717066 (= tp!1840861 e!4059500)))

(declare-fun b!6717868 () Bool)

(declare-fun tp!1841096 () Bool)

(declare-fun tp!1841095 () Bool)

(assert (=> b!6717868 (= e!4059500 (and tp!1841096 tp!1841095))))

(declare-fun b!6717865 () Bool)

(assert (=> b!6717865 (= e!4059500 tp_is_empty!42343)))

(assert (= (and b!6717066 ((_ is ElementMatch!16545) (regOne!33603 (regTwo!33602 r!7292)))) b!6717865))

(assert (= (and b!6717066 ((_ is Concat!25390) (regOne!33603 (regTwo!33602 r!7292)))) b!6717866))

(assert (= (and b!6717066 ((_ is Star!16545) (regOne!33603 (regTwo!33602 r!7292)))) b!6717867))

(assert (= (and b!6717066 ((_ is Union!16545) (regOne!33603 (regTwo!33602 r!7292)))) b!6717868))

(declare-fun b!6717871 () Bool)

(declare-fun e!4059501 () Bool)

(declare-fun tp!1841099 () Bool)

(assert (=> b!6717871 (= e!4059501 tp!1841099)))

(declare-fun b!6717870 () Bool)

(declare-fun tp!1841103 () Bool)

(declare-fun tp!1841102 () Bool)

(assert (=> b!6717870 (= e!4059501 (and tp!1841103 tp!1841102))))

(assert (=> b!6717066 (= tp!1840860 e!4059501)))

(declare-fun b!6717872 () Bool)

(declare-fun tp!1841101 () Bool)

(declare-fun tp!1841100 () Bool)

(assert (=> b!6717872 (= e!4059501 (and tp!1841101 tp!1841100))))

(declare-fun b!6717869 () Bool)

(assert (=> b!6717869 (= e!4059501 tp_is_empty!42343)))

(assert (= (and b!6717066 ((_ is ElementMatch!16545) (regTwo!33603 (regTwo!33602 r!7292)))) b!6717869))

(assert (= (and b!6717066 ((_ is Concat!25390) (regTwo!33603 (regTwo!33602 r!7292)))) b!6717870))

(assert (= (and b!6717066 ((_ is Star!16545) (regTwo!33603 (regTwo!33602 r!7292)))) b!6717871))

(assert (= (and b!6717066 ((_ is Union!16545) (regTwo!33603 (regTwo!33602 r!7292)))) b!6717872))

(declare-fun b!6717875 () Bool)

(declare-fun e!4059502 () Bool)

(declare-fun tp!1841104 () Bool)

(assert (=> b!6717875 (= e!4059502 tp!1841104)))

(declare-fun b!6717874 () Bool)

(declare-fun tp!1841108 () Bool)

(declare-fun tp!1841107 () Bool)

(assert (=> b!6717874 (= e!4059502 (and tp!1841108 tp!1841107))))

(assert (=> b!6717058 (= tp!1840852 e!4059502)))

(declare-fun b!6717876 () Bool)

(declare-fun tp!1841106 () Bool)

(declare-fun tp!1841105 () Bool)

(assert (=> b!6717876 (= e!4059502 (and tp!1841106 tp!1841105))))

(declare-fun b!6717873 () Bool)

(assert (=> b!6717873 (= e!4059502 tp_is_empty!42343)))

(assert (= (and b!6717058 ((_ is ElementMatch!16545) (h!72258 (exprs!6429 setElem!45785)))) b!6717873))

(assert (= (and b!6717058 ((_ is Concat!25390) (h!72258 (exprs!6429 setElem!45785)))) b!6717874))

(assert (= (and b!6717058 ((_ is Star!16545) (h!72258 (exprs!6429 setElem!45785)))) b!6717875))

(assert (= (and b!6717058 ((_ is Union!16545) (h!72258 (exprs!6429 setElem!45785)))) b!6717876))

(declare-fun b!6717877 () Bool)

(declare-fun e!4059503 () Bool)

(declare-fun tp!1841109 () Bool)

(declare-fun tp!1841110 () Bool)

(assert (=> b!6717877 (= e!4059503 (and tp!1841109 tp!1841110))))

(assert (=> b!6717058 (= tp!1840853 e!4059503)))

(assert (= (and b!6717058 ((_ is Cons!65810) (t!379611 (exprs!6429 setElem!45785)))) b!6717877))

(declare-fun b!6717880 () Bool)

(declare-fun e!4059504 () Bool)

(declare-fun tp!1841111 () Bool)

(assert (=> b!6717880 (= e!4059504 tp!1841111)))

(declare-fun b!6717879 () Bool)

(declare-fun tp!1841115 () Bool)

(declare-fun tp!1841114 () Bool)

(assert (=> b!6717879 (= e!4059504 (and tp!1841115 tp!1841114))))

(assert (=> b!6717057 (= tp!1840849 e!4059504)))

(declare-fun b!6717881 () Bool)

(declare-fun tp!1841113 () Bool)

(declare-fun tp!1841112 () Bool)

(assert (=> b!6717881 (= e!4059504 (and tp!1841113 tp!1841112))))

(declare-fun b!6717878 () Bool)

(assert (=> b!6717878 (= e!4059504 tp_is_empty!42343)))

(assert (= (and b!6717057 ((_ is ElementMatch!16545) (regOne!33603 (regTwo!33603 r!7292)))) b!6717878))

(assert (= (and b!6717057 ((_ is Concat!25390) (regOne!33603 (regTwo!33603 r!7292)))) b!6717879))

(assert (= (and b!6717057 ((_ is Star!16545) (regOne!33603 (regTwo!33603 r!7292)))) b!6717880))

(assert (= (and b!6717057 ((_ is Union!16545) (regOne!33603 (regTwo!33603 r!7292)))) b!6717881))

(declare-fun b!6717884 () Bool)

(declare-fun e!4059505 () Bool)

(declare-fun tp!1841116 () Bool)

(assert (=> b!6717884 (= e!4059505 tp!1841116)))

(declare-fun b!6717883 () Bool)

(declare-fun tp!1841120 () Bool)

(declare-fun tp!1841119 () Bool)

(assert (=> b!6717883 (= e!4059505 (and tp!1841120 tp!1841119))))

(assert (=> b!6717057 (= tp!1840848 e!4059505)))

(declare-fun b!6717885 () Bool)

(declare-fun tp!1841118 () Bool)

(declare-fun tp!1841117 () Bool)

(assert (=> b!6717885 (= e!4059505 (and tp!1841118 tp!1841117))))

(declare-fun b!6717882 () Bool)

(assert (=> b!6717882 (= e!4059505 tp_is_empty!42343)))

(assert (= (and b!6717057 ((_ is ElementMatch!16545) (regTwo!33603 (regTwo!33603 r!7292)))) b!6717882))

(assert (= (and b!6717057 ((_ is Concat!25390) (regTwo!33603 (regTwo!33603 r!7292)))) b!6717883))

(assert (= (and b!6717057 ((_ is Star!16545) (regTwo!33603 (regTwo!33603 r!7292)))) b!6717884))

(assert (= (and b!6717057 ((_ is Union!16545) (regTwo!33603 (regTwo!33603 r!7292)))) b!6717885))

(declare-fun b!6717888 () Bool)

(declare-fun e!4059506 () Bool)

(declare-fun tp!1841121 () Bool)

(assert (=> b!6717888 (= e!4059506 tp!1841121)))

(declare-fun b!6717887 () Bool)

(declare-fun tp!1841125 () Bool)

(declare-fun tp!1841124 () Bool)

(assert (=> b!6717887 (= e!4059506 (and tp!1841125 tp!1841124))))

(assert (=> b!6717064 (= tp!1840863 e!4059506)))

(declare-fun b!6717889 () Bool)

(declare-fun tp!1841123 () Bool)

(declare-fun tp!1841122 () Bool)

(assert (=> b!6717889 (= e!4059506 (and tp!1841123 tp!1841122))))

(declare-fun b!6717886 () Bool)

(assert (=> b!6717886 (= e!4059506 tp_is_empty!42343)))

(assert (= (and b!6717064 ((_ is ElementMatch!16545) (regOne!33602 (regTwo!33602 r!7292)))) b!6717886))

(assert (= (and b!6717064 ((_ is Concat!25390) (regOne!33602 (regTwo!33602 r!7292)))) b!6717887))

(assert (= (and b!6717064 ((_ is Star!16545) (regOne!33602 (regTwo!33602 r!7292)))) b!6717888))

(assert (= (and b!6717064 ((_ is Union!16545) (regOne!33602 (regTwo!33602 r!7292)))) b!6717889))

(declare-fun b!6717892 () Bool)

(declare-fun e!4059507 () Bool)

(declare-fun tp!1841126 () Bool)

(assert (=> b!6717892 (= e!4059507 tp!1841126)))

(declare-fun b!6717891 () Bool)

(declare-fun tp!1841130 () Bool)

(declare-fun tp!1841129 () Bool)

(assert (=> b!6717891 (= e!4059507 (and tp!1841130 tp!1841129))))

(assert (=> b!6717064 (= tp!1840862 e!4059507)))

(declare-fun b!6717893 () Bool)

(declare-fun tp!1841128 () Bool)

(declare-fun tp!1841127 () Bool)

(assert (=> b!6717893 (= e!4059507 (and tp!1841128 tp!1841127))))

(declare-fun b!6717890 () Bool)

(assert (=> b!6717890 (= e!4059507 tp_is_empty!42343)))

(assert (= (and b!6717064 ((_ is ElementMatch!16545) (regTwo!33602 (regTwo!33602 r!7292)))) b!6717890))

(assert (= (and b!6717064 ((_ is Concat!25390) (regTwo!33602 (regTwo!33602 r!7292)))) b!6717891))

(assert (= (and b!6717064 ((_ is Star!16545) (regTwo!33602 (regTwo!33602 r!7292)))) b!6717892))

(assert (= (and b!6717064 ((_ is Union!16545) (regTwo!33602 (regTwo!33602 r!7292)))) b!6717893))

(declare-fun b!6717896 () Bool)

(declare-fun e!4059508 () Bool)

(declare-fun tp!1841131 () Bool)

(assert (=> b!6717896 (= e!4059508 tp!1841131)))

(declare-fun b!6717895 () Bool)

(declare-fun tp!1841135 () Bool)

(declare-fun tp!1841134 () Bool)

(assert (=> b!6717895 (= e!4059508 (and tp!1841135 tp!1841134))))

(assert (=> b!6717055 (= tp!1840851 e!4059508)))

(declare-fun b!6717897 () Bool)

(declare-fun tp!1841133 () Bool)

(declare-fun tp!1841132 () Bool)

(assert (=> b!6717897 (= e!4059508 (and tp!1841133 tp!1841132))))

(declare-fun b!6717894 () Bool)

(assert (=> b!6717894 (= e!4059508 tp_is_empty!42343)))

(assert (= (and b!6717055 ((_ is ElementMatch!16545) (regOne!33602 (regTwo!33603 r!7292)))) b!6717894))

(assert (= (and b!6717055 ((_ is Concat!25390) (regOne!33602 (regTwo!33603 r!7292)))) b!6717895))

(assert (= (and b!6717055 ((_ is Star!16545) (regOne!33602 (regTwo!33603 r!7292)))) b!6717896))

(assert (= (and b!6717055 ((_ is Union!16545) (regOne!33602 (regTwo!33603 r!7292)))) b!6717897))

(declare-fun b!6717900 () Bool)

(declare-fun e!4059509 () Bool)

(declare-fun tp!1841136 () Bool)

(assert (=> b!6717900 (= e!4059509 tp!1841136)))

(declare-fun b!6717899 () Bool)

(declare-fun tp!1841140 () Bool)

(declare-fun tp!1841139 () Bool)

(assert (=> b!6717899 (= e!4059509 (and tp!1841140 tp!1841139))))

(assert (=> b!6717055 (= tp!1840850 e!4059509)))

(declare-fun b!6717901 () Bool)

(declare-fun tp!1841138 () Bool)

(declare-fun tp!1841137 () Bool)

(assert (=> b!6717901 (= e!4059509 (and tp!1841138 tp!1841137))))

(declare-fun b!6717898 () Bool)

(assert (=> b!6717898 (= e!4059509 tp_is_empty!42343)))

(assert (= (and b!6717055 ((_ is ElementMatch!16545) (regTwo!33602 (regTwo!33603 r!7292)))) b!6717898))

(assert (= (and b!6717055 ((_ is Concat!25390) (regTwo!33602 (regTwo!33603 r!7292)))) b!6717899))

(assert (= (and b!6717055 ((_ is Star!16545) (regTwo!33602 (regTwo!33603 r!7292)))) b!6717900))

(assert (= (and b!6717055 ((_ is Union!16545) (regTwo!33602 (regTwo!33603 r!7292)))) b!6717901))

(declare-fun b!6717904 () Bool)

(declare-fun e!4059510 () Bool)

(declare-fun tp!1841141 () Bool)

(assert (=> b!6717904 (= e!4059510 tp!1841141)))

(declare-fun b!6717903 () Bool)

(declare-fun tp!1841145 () Bool)

(declare-fun tp!1841144 () Bool)

(assert (=> b!6717903 (= e!4059510 (and tp!1841145 tp!1841144))))

(assert (=> b!6717056 (= tp!1840847 e!4059510)))

(declare-fun b!6717905 () Bool)

(declare-fun tp!1841143 () Bool)

(declare-fun tp!1841142 () Bool)

(assert (=> b!6717905 (= e!4059510 (and tp!1841143 tp!1841142))))

(declare-fun b!6717902 () Bool)

(assert (=> b!6717902 (= e!4059510 tp_is_empty!42343)))

(assert (= (and b!6717056 ((_ is ElementMatch!16545) (reg!16874 (regTwo!33603 r!7292)))) b!6717902))

(assert (= (and b!6717056 ((_ is Concat!25390) (reg!16874 (regTwo!33603 r!7292)))) b!6717903))

(assert (= (and b!6717056 ((_ is Star!16545) (reg!16874 (regTwo!33603 r!7292)))) b!6717904))

(assert (= (and b!6717056 ((_ is Union!16545) (reg!16874 (regTwo!33603 r!7292)))) b!6717905))

(declare-fun b!6717908 () Bool)

(declare-fun e!4059511 () Bool)

(declare-fun tp!1841146 () Bool)

(assert (=> b!6717908 (= e!4059511 tp!1841146)))

(declare-fun b!6717907 () Bool)

(declare-fun tp!1841150 () Bool)

(declare-fun tp!1841149 () Bool)

(assert (=> b!6717907 (= e!4059511 (and tp!1841150 tp!1841149))))

(assert (=> b!6717034 (= tp!1840824 e!4059511)))

(declare-fun b!6717909 () Bool)

(declare-fun tp!1841148 () Bool)

(declare-fun tp!1841147 () Bool)

(assert (=> b!6717909 (= e!4059511 (and tp!1841148 tp!1841147))))

(declare-fun b!6717906 () Bool)

(assert (=> b!6717906 (= e!4059511 tp_is_empty!42343)))

(assert (= (and b!6717034 ((_ is ElementMatch!16545) (h!72258 (exprs!6429 (h!72259 zl!343))))) b!6717906))

(assert (= (and b!6717034 ((_ is Concat!25390) (h!72258 (exprs!6429 (h!72259 zl!343))))) b!6717907))

(assert (= (and b!6717034 ((_ is Star!16545) (h!72258 (exprs!6429 (h!72259 zl!343))))) b!6717908))

(assert (= (and b!6717034 ((_ is Union!16545) (h!72258 (exprs!6429 (h!72259 zl!343))))) b!6717909))

(declare-fun b!6717910 () Bool)

(declare-fun e!4059512 () Bool)

(declare-fun tp!1841151 () Bool)

(declare-fun tp!1841152 () Bool)

(assert (=> b!6717910 (= e!4059512 (and tp!1841151 tp!1841152))))

(assert (=> b!6717034 (= tp!1840825 e!4059512)))

(assert (= (and b!6717034 ((_ is Cons!65810) (t!379611 (exprs!6429 (h!72259 zl!343))))) b!6717910))

(declare-fun b!6717912 () Bool)

(declare-fun e!4059514 () Bool)

(declare-fun tp!1841153 () Bool)

(assert (=> b!6717912 (= e!4059514 tp!1841153)))

(declare-fun e!4059513 () Bool)

(declare-fun tp!1841154 () Bool)

(declare-fun b!6717911 () Bool)

(assert (=> b!6717911 (= e!4059513 (and (inv!84609 (h!72259 (t!379612 (t!379612 zl!343)))) e!4059514 tp!1841154))))

(assert (=> b!6717077 (= tp!1840874 e!4059513)))

(assert (= b!6717911 b!6717912))

(assert (= (and b!6717077 ((_ is Cons!65811) (t!379612 (t!379612 zl!343)))) b!6717911))

(declare-fun m!7480886 () Bool)

(assert (=> b!6717911 m!7480886))

(declare-fun b!6717913 () Bool)

(declare-fun e!4059515 () Bool)

(declare-fun tp!1841155 () Bool)

(declare-fun tp!1841156 () Bool)

(assert (=> b!6717913 (= e!4059515 (and tp!1841155 tp!1841156))))

(assert (=> b!6717078 (= tp!1840873 e!4059515)))

(assert (= (and b!6717078 ((_ is Cons!65810) (exprs!6429 (h!72259 (t!379612 zl!343))))) b!6717913))

(declare-fun b!6717916 () Bool)

(declare-fun e!4059516 () Bool)

(declare-fun tp!1841157 () Bool)

(assert (=> b!6717916 (= e!4059516 tp!1841157)))

(declare-fun b!6717915 () Bool)

(declare-fun tp!1841161 () Bool)

(declare-fun tp!1841160 () Bool)

(assert (=> b!6717915 (= e!4059516 (and tp!1841161 tp!1841160))))

(assert (=> b!6717070 (= tp!1840866 e!4059516)))

(declare-fun b!6717917 () Bool)

(declare-fun tp!1841159 () Bool)

(declare-fun tp!1841158 () Bool)

(assert (=> b!6717917 (= e!4059516 (and tp!1841159 tp!1841158))))

(declare-fun b!6717914 () Bool)

(assert (=> b!6717914 (= e!4059516 tp_is_empty!42343)))

(assert (= (and b!6717070 ((_ is ElementMatch!16545) (regOne!33603 (reg!16874 r!7292)))) b!6717914))

(assert (= (and b!6717070 ((_ is Concat!25390) (regOne!33603 (reg!16874 r!7292)))) b!6717915))

(assert (= (and b!6717070 ((_ is Star!16545) (regOne!33603 (reg!16874 r!7292)))) b!6717916))

(assert (= (and b!6717070 ((_ is Union!16545) (regOne!33603 (reg!16874 r!7292)))) b!6717917))

(declare-fun b!6717920 () Bool)

(declare-fun e!4059517 () Bool)

(declare-fun tp!1841162 () Bool)

(assert (=> b!6717920 (= e!4059517 tp!1841162)))

(declare-fun b!6717919 () Bool)

(declare-fun tp!1841166 () Bool)

(declare-fun tp!1841165 () Bool)

(assert (=> b!6717919 (= e!4059517 (and tp!1841166 tp!1841165))))

(assert (=> b!6717070 (= tp!1840865 e!4059517)))

(declare-fun b!6717921 () Bool)

(declare-fun tp!1841164 () Bool)

(declare-fun tp!1841163 () Bool)

(assert (=> b!6717921 (= e!4059517 (and tp!1841164 tp!1841163))))

(declare-fun b!6717918 () Bool)

(assert (=> b!6717918 (= e!4059517 tp_is_empty!42343)))

(assert (= (and b!6717070 ((_ is ElementMatch!16545) (regTwo!33603 (reg!16874 r!7292)))) b!6717918))

(assert (= (and b!6717070 ((_ is Concat!25390) (regTwo!33603 (reg!16874 r!7292)))) b!6717919))

(assert (= (and b!6717070 ((_ is Star!16545) (regTwo!33603 (reg!16874 r!7292)))) b!6717920))

(assert (= (and b!6717070 ((_ is Union!16545) (regTwo!33603 (reg!16874 r!7292)))) b!6717921))

(declare-fun condSetEmpty!45793 () Bool)

(assert (=> setNonEmpty!45791 (= condSetEmpty!45793 (= setRest!45791 ((as const (Array Context!11858 Bool)) false)))))

(declare-fun setRes!45793 () Bool)

(assert (=> setNonEmpty!45791 (= tp!1840831 setRes!45793)))

(declare-fun setIsEmpty!45793 () Bool)

(assert (=> setIsEmpty!45793 setRes!45793))

(declare-fun setNonEmpty!45793 () Bool)

(declare-fun setElem!45793 () Context!11858)

(declare-fun tp!1841168 () Bool)

(declare-fun e!4059518 () Bool)

(assert (=> setNonEmpty!45793 (= setRes!45793 (and tp!1841168 (inv!84609 setElem!45793) e!4059518))))

(declare-fun setRest!45793 () (InoxSet Context!11858))

(assert (=> setNonEmpty!45793 (= setRest!45791 ((_ map or) (store ((as const (Array Context!11858 Bool)) false) setElem!45793 true) setRest!45793))))

(declare-fun b!6717922 () Bool)

(declare-fun tp!1841167 () Bool)

(assert (=> b!6717922 (= e!4059518 tp!1841167)))

(assert (= (and setNonEmpty!45791 condSetEmpty!45793) setIsEmpty!45793))

(assert (= (and setNonEmpty!45791 (not condSetEmpty!45793)) setNonEmpty!45793))

(assert (= setNonEmpty!45793 b!6717922))

(declare-fun m!7480888 () Bool)

(assert (=> setNonEmpty!45793 m!7480888))

(declare-fun b!6717925 () Bool)

(declare-fun e!4059519 () Bool)

(declare-fun tp!1841169 () Bool)

(assert (=> b!6717925 (= e!4059519 tp!1841169)))

(declare-fun b!6717924 () Bool)

(declare-fun tp!1841173 () Bool)

(declare-fun tp!1841172 () Bool)

(assert (=> b!6717924 (= e!4059519 (and tp!1841173 tp!1841172))))

(assert (=> b!6717061 (= tp!1840854 e!4059519)))

(declare-fun b!6717926 () Bool)

(declare-fun tp!1841171 () Bool)

(declare-fun tp!1841170 () Bool)

(assert (=> b!6717926 (= e!4059519 (and tp!1841171 tp!1841170))))

(declare-fun b!6717923 () Bool)

(assert (=> b!6717923 (= e!4059519 tp_is_empty!42343)))

(assert (= (and b!6717061 ((_ is ElementMatch!16545) (reg!16874 (regOne!33602 r!7292)))) b!6717923))

(assert (= (and b!6717061 ((_ is Concat!25390) (reg!16874 (regOne!33602 r!7292)))) b!6717924))

(assert (= (and b!6717061 ((_ is Star!16545) (reg!16874 (regOne!33602 r!7292)))) b!6717925))

(assert (= (and b!6717061 ((_ is Union!16545) (reg!16874 (regOne!33602 r!7292)))) b!6717926))

(declare-fun b!6717927 () Bool)

(declare-fun e!4059520 () Bool)

(declare-fun tp!1841174 () Bool)

(declare-fun tp!1841175 () Bool)

(assert (=> b!6717927 (= e!4059520 (and tp!1841174 tp!1841175))))

(assert (=> b!6717039 (= tp!1840830 e!4059520)))

(assert (= (and b!6717039 ((_ is Cons!65810) (exprs!6429 setElem!45791))) b!6717927))

(declare-fun b!6717930 () Bool)

(declare-fun e!4059521 () Bool)

(declare-fun tp!1841176 () Bool)

(assert (=> b!6717930 (= e!4059521 tp!1841176)))

(declare-fun b!6717929 () Bool)

(declare-fun tp!1841180 () Bool)

(declare-fun tp!1841179 () Bool)

(assert (=> b!6717929 (= e!4059521 (and tp!1841180 tp!1841179))))

(assert (=> b!6717062 (= tp!1840856 e!4059521)))

(declare-fun b!6717931 () Bool)

(declare-fun tp!1841178 () Bool)

(declare-fun tp!1841177 () Bool)

(assert (=> b!6717931 (= e!4059521 (and tp!1841178 tp!1841177))))

(declare-fun b!6717928 () Bool)

(assert (=> b!6717928 (= e!4059521 tp_is_empty!42343)))

(assert (= (and b!6717062 ((_ is ElementMatch!16545) (regOne!33603 (regOne!33602 r!7292)))) b!6717928))

(assert (= (and b!6717062 ((_ is Concat!25390) (regOne!33603 (regOne!33602 r!7292)))) b!6717929))

(assert (= (and b!6717062 ((_ is Star!16545) (regOne!33603 (regOne!33602 r!7292)))) b!6717930))

(assert (= (and b!6717062 ((_ is Union!16545) (regOne!33603 (regOne!33602 r!7292)))) b!6717931))

(declare-fun b!6717934 () Bool)

(declare-fun e!4059522 () Bool)

(declare-fun tp!1841181 () Bool)

(assert (=> b!6717934 (= e!4059522 tp!1841181)))

(declare-fun b!6717933 () Bool)

(declare-fun tp!1841185 () Bool)

(declare-fun tp!1841184 () Bool)

(assert (=> b!6717933 (= e!4059522 (and tp!1841185 tp!1841184))))

(assert (=> b!6717062 (= tp!1840855 e!4059522)))

(declare-fun b!6717935 () Bool)

(declare-fun tp!1841183 () Bool)

(declare-fun tp!1841182 () Bool)

(assert (=> b!6717935 (= e!4059522 (and tp!1841183 tp!1841182))))

(declare-fun b!6717932 () Bool)

(assert (=> b!6717932 (= e!4059522 tp_is_empty!42343)))

(assert (= (and b!6717062 ((_ is ElementMatch!16545) (regTwo!33603 (regOne!33602 r!7292)))) b!6717932))

(assert (= (and b!6717062 ((_ is Concat!25390) (regTwo!33603 (regOne!33602 r!7292)))) b!6717933))

(assert (= (and b!6717062 ((_ is Star!16545) (regTwo!33603 (regOne!33602 r!7292)))) b!6717934))

(assert (= (and b!6717062 ((_ is Union!16545) (regTwo!33603 (regOne!33602 r!7292)))) b!6717935))

(declare-fun b_lambda!252951 () Bool)

(assert (= b_lambda!252929 (or d!2111070 b_lambda!252951)))

(declare-fun bs!1787458 () Bool)

(declare-fun d!2111382 () Bool)

(assert (= bs!1787458 (and d!2111382 d!2111070)))

(assert (=> bs!1787458 (= (dynLambda!26244 lambda!376737 (h!72258 (exprs!6429 (h!72259 zl!343)))) (validRegex!8281 (h!72258 (exprs!6429 (h!72259 zl!343)))))))

(declare-fun m!7480890 () Bool)

(assert (=> bs!1787458 m!7480890))

(assert (=> b!6717561 d!2111382))

(declare-fun b_lambda!252953 () Bool)

(assert (= b_lambda!252945 (or d!2111084 b_lambda!252953)))

(declare-fun bs!1787459 () Bool)

(declare-fun d!2111384 () Bool)

(assert (= bs!1787459 (and d!2111384 d!2111084)))

(assert (=> bs!1787459 (= (dynLambda!26244 lambda!376752 (h!72258 (exprs!6429 (h!72259 zl!343)))) (validRegex!8281 (h!72258 (exprs!6429 (h!72259 zl!343)))))))

(assert (=> bs!1787459 m!7480890))

(assert (=> b!6717770 d!2111384))

(declare-fun b_lambda!252955 () Bool)

(assert (= b_lambda!252949 (or d!2111082 b_lambda!252955)))

(declare-fun bs!1787460 () Bool)

(declare-fun d!2111386 () Bool)

(assert (= bs!1787460 (and d!2111386 d!2111082)))

(assert (=> bs!1787460 (= (dynLambda!26244 lambda!376749 (h!72258 lt!2436461)) (validRegex!8281 (h!72258 lt!2436461)))))

(declare-fun m!7480892 () Bool)

(assert (=> bs!1787460 m!7480892))

(assert (=> b!6717818 d!2111386))

(declare-fun b_lambda!252957 () Bool)

(assert (= b_lambda!252947 (or d!2111080 b_lambda!252957)))

(declare-fun bs!1787461 () Bool)

(declare-fun d!2111388 () Bool)

(assert (= bs!1787461 (and d!2111388 d!2111080)))

(assert (=> bs!1787461 (= (dynLambda!26244 lambda!376746 (h!72258 (unfocusZipperList!1966 zl!343))) (validRegex!8281 (h!72258 (unfocusZipperList!1966 zl!343))))))

(declare-fun m!7480894 () Bool)

(assert (=> bs!1787461 m!7480894))

(assert (=> b!6717781 d!2111388))

(declare-fun b_lambda!252959 () Bool)

(assert (= b_lambda!252923 (or d!2111018 b_lambda!252959)))

(declare-fun bs!1787462 () Bool)

(declare-fun d!2111390 () Bool)

(assert (= bs!1787462 (and d!2111390 d!2111018)))

(assert (=> bs!1787462 (= (dynLambda!26244 lambda!376702 (h!72258 (exprs!6429 setElem!45785))) (validRegex!8281 (h!72258 (exprs!6429 setElem!45785))))))

(declare-fun m!7480896 () Bool)

(assert (=> bs!1787462 m!7480896))

(assert (=> b!6717342 d!2111390))

(declare-fun b_lambda!252961 () Bool)

(assert (= b_lambda!252943 (or d!2111086 b_lambda!252961)))

(declare-fun bs!1787463 () Bool)

(declare-fun d!2111392 () Bool)

(assert (= bs!1787463 (and d!2111392 d!2111086)))

(assert (=> bs!1787463 (= (dynLambda!26244 lambda!376753 (h!72258 (exprs!6429 (Context!11859 Nil!65810)))) (validRegex!8281 (h!72258 (exprs!6429 (Context!11859 Nil!65810)))))))

(declare-fun m!7480898 () Bool)

(assert (=> bs!1787463 m!7480898))

(assert (=> b!6717744 d!2111392))

(check-sat (not b!6717889) (not bm!606269) (not bs!1787462) (not d!2111166) (not d!2111320) (not d!2111248) (not b!6717592) (not b!6717848) (not b!6717772) (not b!6717449) (not d!2111164) (not b!6717564) (not b!6717431) (not b!6717931) (not bm!606310) (not b!6717273) (not d!2111304) (not b!6717913) (not b!6717844) (not b!6717905) (not b!6717609) (not b!6717900) (not b!6717423) (not b!6717919) (not b!6717887) (not b!6717568) (not bm!606308) (not b!6717597) (not b!6717418) (not b!6717907) (not b_lambda!252951) (not b!6717603) (not b!6717859) (not b!6717296) (not b!6717271) (not b!6717412) (not b!6717855) (not bm!606314) (not b!6717877) (not b!6717450) (not d!2111200) (not bm!606254) (not b!6717929) (not b!6717879) (not b!6717838) (not b_lambda!252953) (not b!6717874) (not d!2111330) (not b!6717331) (not b!6717562) (not b!6717343) (not b!6717751) (not b!6717328) (not b!6717836) (not b!6717420) (not b!6717825) (not b!6717410) (not b!6717921) (not b!6717850) (not d!2111254) (not b!6717602) (not b!6717846) (not bm!606304) (not b!6717917) (not b!6717608) (not b!6717870) (not d!2111366) (not b!6717933) (not b!6717758) (not b!6717881) (not bs!1787460) (not b!6717433) (not b!6717867) (not b!6717922) (not b!6717598) (not b!6717891) (not b!6717904) (not b!6717599) (not d!2111302) (not b!6717858) (not b!6717432) (not b!6717915) (not b_lambda!252957) (not b!6717782) (not d!2111216) (not b!6717911) (not bm!606259) (not b!6717909) (not bs!1787463) (not bm!606253) (not bm!606252) (not b!6717816) (not b!6717595) (not b!6717880) (not b!6717827) (not b!6717437) (not b!6717924) (not bm!606258) (not b!6717934) (not b!6717847) (not b!6717267) (not b!6717876) (not b!6717901) (not b!6717330) (not b!6717892) (not d!2111328) (not bm!606257) (not b!6717434) (not b!6717925) (not b!6717871) (not b!6717823) (not bm!606311) (not bs!1787459) (not b!6717895) (not b!6717839) (not b!6717325) (not b!6717761) (not d!2111326) (not bm!606312) (not b!6717821) (not b!6717373) (not b!6717875) (not b!6717265) (not b!6717883) (not b!6717826) (not b!6717930) (not b_lambda!252961) (not b!6717759) (not bm!606262) (not b!6717760) (not b!6717834) (not b!6717819) tp_is_empty!42343 (not b!6717864) (not b!6717451) (not b_lambda!252955) (not b!6717863) (not b!6717419) (not b!6717831) (not b!6717333) (not b!6717807) (not d!2111358) (not b!6717822) (not d!2111362) (not b!6717569) (not d!2111270) (not b!6717266) (not b!6717893) (not d!2111324) (not b!6717526) (not b!6717910) (not b!6717329) (not b!6717916) (not b!6717854) (not b!6717833) (not b!6717840) (not b!6717309) (not b!6717268) (not b!6717607) (not bs!1787458) (not b!6717303) (not d!2111312) (not b!6717829) (not bm!606286) (not b!6717885) (not b!6717896) (not bm!606263) (not b!6717835) (not d!2111378) (not b!6717604) (not b!6717745) (not b!6717444) (not b!6717920) (not bs!1787461) (not b!6717830) (not b!6717856) (not b!6717908) (not b!6717793) (not b!6717843) (not bm!606246) (not bm!606287) (not d!2111348) (not b!6717606) (not b!6717852) (not bm!606307) (not b!6717364) (not b!6717926) (not b!6717260) (not d!2111360) (not d!2111296) (not b!6717798) (not b!6717884) (not d!2111208) (not bm!606267) (not b!6717750) (not d!2111264) (not d!2111314) (not bm!606247) (not bm!606260) (not b!6717565) (not b!6717927) (not b!6717797) (not b!6717842) (not b!6717860) (not b!6717851) (not b!6717366) (not b!6717866) (not b!6717868) (not bm!606268) (not b!6717899) (not b!6717593) (not d!2111246) (not bm!606248) (not b!6717417) (not b!6717903) (not b!6717888) (not bm!606315) (not b!6717324) (not d!2111318) (not b!6717862) (not b!6717897) (not bm!606305) (not b!6717872) (not b!6717935) (not b!6717771) (not d!2111188) (not b!6717256) (not b!6717912) (not b!6717455) (not b!6717363) (not d!2111206) (not b!6717452) (not b!6717426) (not b_lambda!252959) (not d!2111316) (not setNonEmpty!45793))
(check-sat)
