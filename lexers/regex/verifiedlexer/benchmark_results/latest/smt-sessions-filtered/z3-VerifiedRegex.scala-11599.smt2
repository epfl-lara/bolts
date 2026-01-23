; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!643626 () Bool)

(assert start!643626)

(declare-fun b!6568614 () Bool)

(assert (=> b!6568614 true))

(assert (=> b!6568614 true))

(declare-fun lambda!365734 () Int)

(declare-fun lambda!365733 () Int)

(assert (=> b!6568614 (not (= lambda!365734 lambda!365733))))

(assert (=> b!6568614 true))

(assert (=> b!6568614 true))

(declare-fun b!6568635 () Bool)

(assert (=> b!6568635 true))

(declare-fun b!6568596 () Bool)

(declare-fun e!3976004 () Bool)

(declare-fun tp!1813512 () Bool)

(assert (=> b!6568596 (= e!3976004 tp!1813512)))

(declare-fun tp!1813511 () Bool)

(declare-fun e!3975992 () Bool)

(declare-fun b!6568597 () Bool)

(declare-fun e!3976002 () Bool)

(declare-datatypes ((C!33160 0))(
  ( (C!33161 (val!26282 Int)) )
))
(declare-datatypes ((Regex!16445 0))(
  ( (ElementMatch!16445 (c!1207368 C!33160)) (Concat!25290 (regOne!33402 Regex!16445) (regTwo!33402 Regex!16445)) (EmptyExpr!16445) (Star!16445 (reg!16774 Regex!16445)) (EmptyLang!16445) (Union!16445 (regOne!33403 Regex!16445) (regTwo!33403 Regex!16445)) )
))
(declare-datatypes ((List!65634 0))(
  ( (Nil!65510) (Cons!65510 (h!71958 Regex!16445) (t!379278 List!65634)) )
))
(declare-datatypes ((Context!11658 0))(
  ( (Context!11659 (exprs!6329 List!65634)) )
))
(declare-datatypes ((List!65635 0))(
  ( (Nil!65511) (Cons!65511 (h!71959 Context!11658) (t!379279 List!65635)) )
))
(declare-fun zl!343 () List!65635)

(declare-fun inv!84359 (Context!11658) Bool)

(assert (=> b!6568597 (= e!3976002 (and (inv!84359 (h!71959 zl!343)) e!3975992 tp!1813511))))

(declare-fun b!6568598 () Bool)

(declare-fun res!2695748 () Bool)

(declare-fun e!3976007 () Bool)

(assert (=> b!6568598 (=> res!2695748 e!3976007)))

(declare-fun lt!2408276 () Bool)

(assert (=> b!6568598 (= res!2695748 (not lt!2408276))))

(declare-fun b!6568599 () Bool)

(declare-fun res!2695735 () Bool)

(declare-fun e!3976006 () Bool)

(assert (=> b!6568599 (=> res!2695735 e!3976006)))

(declare-fun r!7292 () Regex!16445)

(declare-fun generalisedConcat!2042 (List!65634) Regex!16445)

(assert (=> b!6568599 (= res!2695735 (not (= r!7292 (generalisedConcat!2042 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun b!6568600 () Bool)

(declare-fun e!3975990 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2408277 () (InoxSet Context!11658))

(declare-datatypes ((List!65636 0))(
  ( (Nil!65512) (Cons!65512 (h!71960 C!33160) (t!379280 List!65636)) )
))
(declare-fun s!2326 () List!65636)

(declare-fun matchZipper!2457 ((InoxSet Context!11658) List!65636) Bool)

(assert (=> b!6568600 (= e!3975990 (not (matchZipper!2457 lt!2408277 (t!379280 s!2326))))))

(declare-fun setIsEmpty!44846 () Bool)

(declare-fun setRes!44846 () Bool)

(assert (=> setIsEmpty!44846 setRes!44846))

(declare-fun b!6568601 () Bool)

(declare-fun e!3975994 () Bool)

(assert (=> b!6568601 (= e!3975994 (not e!3976006))))

(declare-fun res!2695736 () Bool)

(assert (=> b!6568601 (=> res!2695736 e!3976006)))

(get-info :version)

(assert (=> b!6568601 (= res!2695736 (not ((_ is Cons!65511) zl!343)))))

(declare-fun lt!2408259 () Bool)

(declare-fun matchRSpec!3546 (Regex!16445 List!65636) Bool)

(assert (=> b!6568601 (= lt!2408259 (matchRSpec!3546 r!7292 s!2326))))

(declare-fun matchR!8628 (Regex!16445 List!65636) Bool)

(assert (=> b!6568601 (= lt!2408259 (matchR!8628 r!7292 s!2326))))

(declare-datatypes ((Unit!159115 0))(
  ( (Unit!159116) )
))
(declare-fun lt!2408260 () Unit!159115)

(declare-fun mainMatchTheorem!3546 (Regex!16445 List!65636) Unit!159115)

(assert (=> b!6568601 (= lt!2408260 (mainMatchTheorem!3546 r!7292 s!2326))))

(declare-fun b!6568602 () Bool)

(declare-fun tp!1813518 () Bool)

(declare-fun tp!1813517 () Bool)

(assert (=> b!6568602 (= e!3976004 (and tp!1813518 tp!1813517))))

(declare-fun b!6568603 () Bool)

(declare-fun e!3976000 () Bool)

(declare-fun e!3975991 () Bool)

(assert (=> b!6568603 (= e!3976000 e!3975991)))

(declare-fun res!2695745 () Bool)

(assert (=> b!6568603 (=> res!2695745 e!3975991)))

(declare-fun lt!2408287 () (InoxSet Context!11658))

(declare-fun lt!2408283 () (InoxSet Context!11658))

(assert (=> b!6568603 (= res!2695745 (not (= lt!2408287 lt!2408283)))))

(declare-fun lt!2408292 () Context!11658)

(declare-fun lt!2408291 () (InoxSet Context!11658))

(declare-fun lambda!365735 () Int)

(declare-fun flatMap!1950 ((InoxSet Context!11658) Int) (InoxSet Context!11658))

(declare-fun derivationStepZipperUp!1619 (Context!11658 C!33160) (InoxSet Context!11658))

(assert (=> b!6568603 (= (flatMap!1950 lt!2408291 lambda!365735) (derivationStepZipperUp!1619 lt!2408292 (h!71960 s!2326)))))

(declare-fun lt!2408261 () Unit!159115)

(declare-fun lemmaFlatMapOnSingletonSet!1476 ((InoxSet Context!11658) Context!11658 Int) Unit!159115)

(assert (=> b!6568603 (= lt!2408261 (lemmaFlatMapOnSingletonSet!1476 lt!2408291 lt!2408292 lambda!365735))))

(declare-fun lt!2408282 () (InoxSet Context!11658))

(assert (=> b!6568603 (= lt!2408282 (derivationStepZipperUp!1619 lt!2408292 (h!71960 s!2326)))))

(declare-fun derivationStepZipper!2411 ((InoxSet Context!11658) C!33160) (InoxSet Context!11658))

(assert (=> b!6568603 (= lt!2408287 (derivationStepZipper!2411 lt!2408291 (h!71960 s!2326)))))

(assert (=> b!6568603 (= lt!2408291 (store ((as const (Array Context!11658 Bool)) false) lt!2408292 true))))

(declare-fun lt!2408269 () List!65634)

(assert (=> b!6568603 (= lt!2408292 (Context!11659 (Cons!65510 (reg!16774 (regOne!33402 r!7292)) lt!2408269)))))

(declare-fun b!6568604 () Bool)

(declare-fun res!2695760 () Bool)

(declare-fun e!3975996 () Bool)

(assert (=> b!6568604 (=> res!2695760 e!3975996)))

(declare-fun isEmpty!37757 (List!65634) Bool)

(assert (=> b!6568604 (= res!2695760 (isEmpty!37757 (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun tp!1813514 () Bool)

(declare-fun setNonEmpty!44846 () Bool)

(declare-fun e!3976001 () Bool)

(declare-fun setElem!44846 () Context!11658)

(assert (=> setNonEmpty!44846 (= setRes!44846 (and tp!1813514 (inv!84359 setElem!44846) e!3976001))))

(declare-fun z!1189 () (InoxSet Context!11658))

(declare-fun setRest!44846 () (InoxSet Context!11658))

(assert (=> setNonEmpty!44846 (= z!1189 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) setElem!44846 true) setRest!44846))))

(declare-fun b!6568605 () Bool)

(declare-fun e!3975998 () Bool)

(assert (=> b!6568605 (= e!3975998 e!3976007)))

(declare-fun res!2695749 () Bool)

(assert (=> b!6568605 (=> res!2695749 e!3976007)))

(assert (=> b!6568605 (= res!2695749 lt!2408259)))

(declare-fun lt!2408266 () Regex!16445)

(assert (=> b!6568605 (= (matchR!8628 lt!2408266 s!2326) (matchRSpec!3546 lt!2408266 s!2326))))

(declare-fun lt!2408286 () Unit!159115)

(assert (=> b!6568605 (= lt!2408286 (mainMatchTheorem!3546 lt!2408266 s!2326))))

(declare-fun b!6568606 () Bool)

(declare-fun e!3975997 () Unit!159115)

(declare-fun Unit!159117 () Unit!159115)

(assert (=> b!6568606 (= e!3975997 Unit!159117)))

(declare-fun lt!2408263 () Unit!159115)

(declare-fun lt!2408280 () (InoxSet Context!11658))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1276 ((InoxSet Context!11658) (InoxSet Context!11658) List!65636) Unit!159115)

(assert (=> b!6568606 (= lt!2408263 (lemmaZipperConcatMatchesSameAsBothZippers!1276 lt!2408280 lt!2408277 (t!379280 s!2326)))))

(declare-fun res!2695751 () Bool)

(assert (=> b!6568606 (= res!2695751 (matchZipper!2457 lt!2408280 (t!379280 s!2326)))))

(declare-fun e!3976005 () Bool)

(assert (=> b!6568606 (=> res!2695751 e!3976005)))

(assert (=> b!6568606 (= (matchZipper!2457 ((_ map or) lt!2408280 lt!2408277) (t!379280 s!2326)) e!3976005)))

(declare-fun b!6568607 () Bool)

(declare-fun e!3976003 () Bool)

(assert (=> b!6568607 (= e!3976003 e!3975998)))

(declare-fun res!2695755 () Bool)

(assert (=> b!6568607 (=> res!2695755 e!3975998)))

(declare-fun lt!2408275 () Context!11658)

(declare-fun unfocusZipper!2187 (List!65635) Regex!16445)

(assert (=> b!6568607 (= res!2695755 (not (= (unfocusZipper!2187 (Cons!65511 lt!2408275 Nil!65511)) (reg!16774 (regOne!33402 r!7292)))))))

(declare-fun lt!2408267 () Context!11658)

(declare-fun lt!2408268 () (InoxSet Context!11658))

(assert (=> b!6568607 (= (flatMap!1950 lt!2408268 lambda!365735) (derivationStepZipperUp!1619 lt!2408267 (h!71960 s!2326)))))

(declare-fun lt!2408288 () Unit!159115)

(assert (=> b!6568607 (= lt!2408288 (lemmaFlatMapOnSingletonSet!1476 lt!2408268 lt!2408267 lambda!365735))))

(declare-fun lt!2408285 () (InoxSet Context!11658))

(assert (=> b!6568607 (= (flatMap!1950 lt!2408285 lambda!365735) (derivationStepZipperUp!1619 lt!2408275 (h!71960 s!2326)))))

(declare-fun lt!2408290 () Unit!159115)

(assert (=> b!6568607 (= lt!2408290 (lemmaFlatMapOnSingletonSet!1476 lt!2408285 lt!2408275 lambda!365735))))

(declare-fun lt!2408272 () (InoxSet Context!11658))

(assert (=> b!6568607 (= lt!2408272 (derivationStepZipperUp!1619 lt!2408267 (h!71960 s!2326)))))

(declare-fun lt!2408264 () (InoxSet Context!11658))

(assert (=> b!6568607 (= lt!2408264 (derivationStepZipperUp!1619 lt!2408275 (h!71960 s!2326)))))

(assert (=> b!6568607 (= lt!2408268 (store ((as const (Array Context!11658 Bool)) false) lt!2408267 true))))

(assert (=> b!6568607 (= lt!2408285 (store ((as const (Array Context!11658 Bool)) false) lt!2408275 true))))

(assert (=> b!6568607 (= lt!2408275 (Context!11659 (Cons!65510 (reg!16774 (regOne!33402 r!7292)) Nil!65510)))))

(declare-fun b!6568608 () Bool)

(declare-fun Unit!159118 () Unit!159115)

(assert (=> b!6568608 (= e!3975997 Unit!159118)))

(declare-fun b!6568609 () Bool)

(declare-fun e!3975993 () Bool)

(assert (=> b!6568609 (= e!3975993 e!3976003)))

(declare-fun res!2695752 () Bool)

(assert (=> b!6568609 (=> res!2695752 e!3976003)))

(assert (=> b!6568609 (= res!2695752 (not (= (unfocusZipper!2187 (Cons!65511 lt!2408292 Nil!65511)) lt!2408266)))))

(declare-fun lt!2408284 () Regex!16445)

(assert (=> b!6568609 (= lt!2408266 (Concat!25290 (reg!16774 (regOne!33402 r!7292)) lt!2408284))))

(declare-fun b!6568610 () Bool)

(declare-fun res!2695742 () Bool)

(declare-fun e!3976008 () Bool)

(assert (=> b!6568610 (=> res!2695742 e!3976008)))

(declare-fun lt!2408278 () Bool)

(assert (=> b!6568610 (= res!2695742 lt!2408278)))

(declare-fun b!6568611 () Bool)

(declare-fun res!2695739 () Bool)

(assert (=> b!6568611 (=> res!2695739 e!3975998)))

(assert (=> b!6568611 (= res!2695739 (not (= (unfocusZipper!2187 (Cons!65511 lt!2408267 Nil!65511)) lt!2408284)))))

(declare-fun b!6568612 () Bool)

(declare-fun tp!1813519 () Bool)

(assert (=> b!6568612 (= e!3976001 tp!1813519)))

(declare-fun b!6568613 () Bool)

(declare-fun tp!1813510 () Bool)

(declare-fun tp!1813515 () Bool)

(assert (=> b!6568613 (= e!3976004 (and tp!1813510 tp!1813515))))

(assert (=> b!6568614 (= e!3976006 e!3975996)))

(declare-fun res!2695734 () Bool)

(assert (=> b!6568614 (=> res!2695734 e!3975996)))

(declare-fun lt!2408289 () Bool)

(assert (=> b!6568614 (= res!2695734 (or (not (= lt!2408259 lt!2408289)) ((_ is Nil!65512) s!2326)))))

(declare-fun Exists!3515 (Int) Bool)

(assert (=> b!6568614 (= (Exists!3515 lambda!365733) (Exists!3515 lambda!365734))))

(declare-fun lt!2408274 () Unit!159115)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2052 (Regex!16445 Regex!16445 List!65636) Unit!159115)

(assert (=> b!6568614 (= lt!2408274 (lemmaExistCutMatchRandMatchRSpecEquivalent!2052 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326))))

(assert (=> b!6568614 (= lt!2408289 (Exists!3515 lambda!365733))))

(declare-datatypes ((tuple2!66848 0))(
  ( (tuple2!66849 (_1!36727 List!65636) (_2!36727 List!65636)) )
))
(declare-datatypes ((Option!16336 0))(
  ( (None!16335) (Some!16335 (v!52520 tuple2!66848)) )
))
(declare-fun isDefined!13039 (Option!16336) Bool)

(declare-fun findConcatSeparation!2750 (Regex!16445 Regex!16445 List!65636 List!65636 List!65636) Option!16336)

(assert (=> b!6568614 (= lt!2408289 (isDefined!13039 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326)))))

(declare-fun lt!2408265 () Unit!159115)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2514 (Regex!16445 Regex!16445 List!65636) Unit!159115)

(assert (=> b!6568614 (= lt!2408265 (lemmaFindConcatSeparationEquivalentToExists!2514 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326))))

(declare-fun b!6568615 () Bool)

(declare-fun res!2695754 () Bool)

(assert (=> b!6568615 (=> res!2695754 e!3976006)))

(assert (=> b!6568615 (= res!2695754 (or ((_ is EmptyExpr!16445) r!7292) ((_ is EmptyLang!16445) r!7292) ((_ is ElementMatch!16445) r!7292) ((_ is Union!16445) r!7292) (not ((_ is Concat!25290) r!7292))))))

(declare-fun b!6568616 () Bool)

(declare-fun tp!1813516 () Bool)

(assert (=> b!6568616 (= e!3975992 tp!1813516)))

(declare-fun b!6568617 () Bool)

(declare-fun res!2695737 () Bool)

(declare-fun e!3975995 () Bool)

(assert (=> b!6568617 (=> res!2695737 e!3975995)))

(assert (=> b!6568617 (= res!2695737 (or ((_ is Concat!25290) (regOne!33402 r!7292)) (not ((_ is Star!16445) (regOne!33402 r!7292)))))))

(declare-fun b!6568618 () Bool)

(declare-fun lt!2408279 () Context!11658)

(assert (=> b!6568618 (= e!3976008 (inv!84359 lt!2408279))))

(declare-fun b!6568619 () Bool)

(declare-fun res!2695750 () Bool)

(assert (=> b!6568619 (=> res!2695750 e!3975991)))

(declare-fun lt!2408270 () Regex!16445)

(assert (=> b!6568619 (= res!2695750 (not (= lt!2408270 r!7292)))))

(declare-fun b!6568620 () Bool)

(declare-fun res!2695743 () Bool)

(assert (=> b!6568620 (=> res!2695743 e!3975991)))

(assert (=> b!6568620 (= res!2695743 (not (= (matchZipper!2457 lt!2408291 s!2326) (matchZipper!2457 lt!2408287 (t!379280 s!2326)))))))

(declare-fun b!6568621 () Bool)

(assert (=> b!6568621 (= e!3975995 e!3976000)))

(declare-fun res!2695746 () Bool)

(assert (=> b!6568621 (=> res!2695746 e!3976000)))

(assert (=> b!6568621 (= res!2695746 (not (= lt!2408280 lt!2408283)))))

(declare-fun derivationStepZipperDown!1693 (Regex!16445 Context!11658 C!33160) (InoxSet Context!11658))

(assert (=> b!6568621 (= lt!2408283 (derivationStepZipperDown!1693 (reg!16774 (regOne!33402 r!7292)) lt!2408267 (h!71960 s!2326)))))

(assert (=> b!6568621 (= lt!2408267 (Context!11659 lt!2408269))))

(declare-fun lt!2408273 () Regex!16445)

(assert (=> b!6568621 (= lt!2408269 (Cons!65510 lt!2408273 (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6568621 (= lt!2408273 (Star!16445 (reg!16774 (regOne!33402 r!7292))))))

(declare-fun b!6568622 () Bool)

(declare-fun res!2695744 () Bool)

(assert (=> b!6568622 (=> res!2695744 e!3976006)))

(declare-fun isEmpty!37758 (List!65635) Bool)

(assert (=> b!6568622 (= res!2695744 (not (isEmpty!37758 (t!379279 zl!343))))))

(declare-fun b!6568623 () Bool)

(assert (=> b!6568623 (= e!3976007 e!3976008)))

(declare-fun res!2695761 () Bool)

(assert (=> b!6568623 (=> res!2695761 e!3976008)))

(assert (=> b!6568623 (= res!2695761 e!3975990)))

(declare-fun res!2695759 () Bool)

(assert (=> b!6568623 (=> (not res!2695759) (not e!3975990))))

(assert (=> b!6568623 (= res!2695759 (not lt!2408278))))

(assert (=> b!6568623 (= lt!2408278 (matchZipper!2457 lt!2408280 (t!379280 s!2326)))))

(declare-fun res!2695753 () Bool)

(declare-fun e!3975989 () Bool)

(assert (=> start!643626 (=> (not res!2695753) (not e!3975989))))

(declare-fun validRegex!8181 (Regex!16445) Bool)

(assert (=> start!643626 (= res!2695753 (validRegex!8181 r!7292))))

(assert (=> start!643626 e!3975989))

(assert (=> start!643626 e!3976004))

(declare-fun condSetEmpty!44846 () Bool)

(assert (=> start!643626 (= condSetEmpty!44846 (= z!1189 ((as const (Array Context!11658 Bool)) false)))))

(assert (=> start!643626 setRes!44846))

(assert (=> start!643626 e!3976002))

(declare-fun e!3975999 () Bool)

(assert (=> start!643626 e!3975999))

(declare-fun b!6568624 () Bool)

(declare-fun res!2695740 () Bool)

(assert (=> b!6568624 (=> (not res!2695740) (not e!3975989))))

(declare-fun toList!10229 ((InoxSet Context!11658)) List!65635)

(assert (=> b!6568624 (= res!2695740 (= (toList!10229 z!1189) zl!343))))

(declare-fun b!6568625 () Bool)

(declare-fun e!3975988 () Bool)

(declare-fun nullable!6438 (Regex!16445) Bool)

(assert (=> b!6568625 (= e!3975988 (nullable!6438 (regOne!33402 (regOne!33402 r!7292))))))

(declare-fun b!6568626 () Bool)

(declare-fun res!2695758 () Bool)

(assert (=> b!6568626 (=> res!2695758 e!3976006)))

(assert (=> b!6568626 (= res!2695758 (not ((_ is Cons!65510) (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6568627 () Bool)

(declare-fun res!2695756 () Bool)

(assert (=> b!6568627 (=> res!2695756 e!3976007)))

(assert (=> b!6568627 (= res!2695756 (not (matchZipper!2457 z!1189 s!2326)))))

(declare-fun b!6568628 () Bool)

(assert (=> b!6568628 (= e!3975989 e!3975994)))

(declare-fun res!2695757 () Bool)

(assert (=> b!6568628 (=> (not res!2695757) (not e!3975994))))

(assert (=> b!6568628 (= res!2695757 (= r!7292 lt!2408270))))

(assert (=> b!6568628 (= lt!2408270 (unfocusZipper!2187 zl!343))))

(declare-fun b!6568629 () Bool)

(declare-fun res!2695764 () Bool)

(assert (=> b!6568629 (=> res!2695764 e!3976008)))

(assert (=> b!6568629 (= res!2695764 (not (matchZipper!2457 lt!2408277 (t!379280 s!2326))))))

(declare-fun b!6568630 () Bool)

(assert (=> b!6568630 (= e!3976005 (matchZipper!2457 lt!2408277 (t!379280 s!2326)))))

(declare-fun b!6568631 () Bool)

(declare-fun tp_is_empty!42143 () Bool)

(assert (=> b!6568631 (= e!3976004 tp_is_empty!42143)))

(declare-fun b!6568632 () Bool)

(declare-fun res!2695741 () Bool)

(assert (=> b!6568632 (=> res!2695741 e!3976006)))

(declare-fun generalisedUnion!2289 (List!65634) Regex!16445)

(declare-fun unfocusZipperList!1866 (List!65635) List!65634)

(assert (=> b!6568632 (= res!2695741 (not (= r!7292 (generalisedUnion!2289 (unfocusZipperList!1866 zl!343)))))))

(declare-fun b!6568633 () Bool)

(declare-fun res!2695762 () Bool)

(assert (=> b!6568633 (=> res!2695762 e!3975995)))

(assert (=> b!6568633 (= res!2695762 e!3975988)))

(declare-fun res!2695763 () Bool)

(assert (=> b!6568633 (=> (not res!2695763) (not e!3975988))))

(assert (=> b!6568633 (= res!2695763 ((_ is Concat!25290) (regOne!33402 r!7292)))))

(declare-fun b!6568634 () Bool)

(declare-fun tp!1813513 () Bool)

(assert (=> b!6568634 (= e!3975999 (and tp_is_empty!42143 tp!1813513))))

(assert (=> b!6568635 (= e!3975996 e!3975995)))

(declare-fun res!2695738 () Bool)

(assert (=> b!6568635 (=> res!2695738 e!3975995)))

(assert (=> b!6568635 (= res!2695738 (or (and ((_ is ElementMatch!16445) (regOne!33402 r!7292)) (= (c!1207368 (regOne!33402 r!7292)) (h!71960 s!2326))) ((_ is Union!16445) (regOne!33402 r!7292))))))

(declare-fun lt!2408271 () Unit!159115)

(assert (=> b!6568635 (= lt!2408271 e!3975997)))

(declare-fun c!1207367 () Bool)

(assert (=> b!6568635 (= c!1207367 lt!2408276)))

(assert (=> b!6568635 (= lt!2408276 (nullable!6438 (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6568635 (= (flatMap!1950 z!1189 lambda!365735) (derivationStepZipperUp!1619 (h!71959 zl!343) (h!71960 s!2326)))))

(declare-fun lt!2408262 () Unit!159115)

(assert (=> b!6568635 (= lt!2408262 (lemmaFlatMapOnSingletonSet!1476 z!1189 (h!71959 zl!343) lambda!365735))))

(assert (=> b!6568635 (= lt!2408277 (derivationStepZipperUp!1619 lt!2408279 (h!71960 s!2326)))))

(assert (=> b!6568635 (= lt!2408280 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (h!71959 zl!343))) lt!2408279 (h!71960 s!2326)))))

(assert (=> b!6568635 (= lt!2408279 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun lt!2408281 () (InoxSet Context!11658))

(assert (=> b!6568635 (= lt!2408281 (derivationStepZipperUp!1619 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))) (h!71960 s!2326)))))

(declare-fun b!6568636 () Bool)

(assert (=> b!6568636 (= e!3975991 e!3975993)))

(declare-fun res!2695747 () Bool)

(assert (=> b!6568636 (=> res!2695747 e!3975993)))

(assert (=> b!6568636 (= res!2695747 (not (= r!7292 lt!2408284)))))

(assert (=> b!6568636 (= lt!2408284 (Concat!25290 lt!2408273 (regTwo!33402 r!7292)))))

(assert (= (and start!643626 res!2695753) b!6568624))

(assert (= (and b!6568624 res!2695740) b!6568628))

(assert (= (and b!6568628 res!2695757) b!6568601))

(assert (= (and b!6568601 (not res!2695736)) b!6568622))

(assert (= (and b!6568622 (not res!2695744)) b!6568599))

(assert (= (and b!6568599 (not res!2695735)) b!6568626))

(assert (= (and b!6568626 (not res!2695758)) b!6568632))

(assert (= (and b!6568632 (not res!2695741)) b!6568615))

(assert (= (and b!6568615 (not res!2695754)) b!6568614))

(assert (= (and b!6568614 (not res!2695734)) b!6568604))

(assert (= (and b!6568604 (not res!2695760)) b!6568635))

(assert (= (and b!6568635 c!1207367) b!6568606))

(assert (= (and b!6568635 (not c!1207367)) b!6568608))

(assert (= (and b!6568606 (not res!2695751)) b!6568630))

(assert (= (and b!6568635 (not res!2695738)) b!6568633))

(assert (= (and b!6568633 res!2695763) b!6568625))

(assert (= (and b!6568633 (not res!2695762)) b!6568617))

(assert (= (and b!6568617 (not res!2695737)) b!6568621))

(assert (= (and b!6568621 (not res!2695746)) b!6568603))

(assert (= (and b!6568603 (not res!2695745)) b!6568620))

(assert (= (and b!6568620 (not res!2695743)) b!6568619))

(assert (= (and b!6568619 (not res!2695750)) b!6568636))

(assert (= (and b!6568636 (not res!2695747)) b!6568609))

(assert (= (and b!6568609 (not res!2695752)) b!6568607))

(assert (= (and b!6568607 (not res!2695755)) b!6568611))

(assert (= (and b!6568611 (not res!2695739)) b!6568605))

(assert (= (and b!6568605 (not res!2695749)) b!6568627))

(assert (= (and b!6568627 (not res!2695756)) b!6568598))

(assert (= (and b!6568598 (not res!2695748)) b!6568623))

(assert (= (and b!6568623 res!2695759) b!6568600))

(assert (= (and b!6568623 (not res!2695761)) b!6568610))

(assert (= (and b!6568610 (not res!2695742)) b!6568629))

(assert (= (and b!6568629 (not res!2695764)) b!6568618))

(assert (= (and start!643626 ((_ is ElementMatch!16445) r!7292)) b!6568631))

(assert (= (and start!643626 ((_ is Concat!25290) r!7292)) b!6568602))

(assert (= (and start!643626 ((_ is Star!16445) r!7292)) b!6568596))

(assert (= (and start!643626 ((_ is Union!16445) r!7292)) b!6568613))

(assert (= (and start!643626 condSetEmpty!44846) setIsEmpty!44846))

(assert (= (and start!643626 (not condSetEmpty!44846)) setNonEmpty!44846))

(assert (= setNonEmpty!44846 b!6568612))

(assert (= b!6568597 b!6568616))

(assert (= (and start!643626 ((_ is Cons!65511) zl!343)) b!6568597))

(assert (= (and start!643626 ((_ is Cons!65512) s!2326)) b!6568634))

(declare-fun m!7350750 () Bool)

(assert (=> b!6568605 m!7350750))

(declare-fun m!7350752 () Bool)

(assert (=> b!6568605 m!7350752))

(declare-fun m!7350754 () Bool)

(assert (=> b!6568605 m!7350754))

(declare-fun m!7350756 () Bool)

(assert (=> b!6568609 m!7350756))

(declare-fun m!7350758 () Bool)

(assert (=> b!6568606 m!7350758))

(declare-fun m!7350760 () Bool)

(assert (=> b!6568606 m!7350760))

(declare-fun m!7350762 () Bool)

(assert (=> b!6568606 m!7350762))

(declare-fun m!7350764 () Bool)

(assert (=> b!6568604 m!7350764))

(declare-fun m!7350766 () Bool)

(assert (=> b!6568601 m!7350766))

(declare-fun m!7350768 () Bool)

(assert (=> b!6568601 m!7350768))

(declare-fun m!7350770 () Bool)

(assert (=> b!6568601 m!7350770))

(declare-fun m!7350772 () Bool)

(assert (=> b!6568607 m!7350772))

(declare-fun m!7350774 () Bool)

(assert (=> b!6568607 m!7350774))

(declare-fun m!7350776 () Bool)

(assert (=> b!6568607 m!7350776))

(declare-fun m!7350778 () Bool)

(assert (=> b!6568607 m!7350778))

(declare-fun m!7350780 () Bool)

(assert (=> b!6568607 m!7350780))

(declare-fun m!7350782 () Bool)

(assert (=> b!6568607 m!7350782))

(declare-fun m!7350784 () Bool)

(assert (=> b!6568607 m!7350784))

(declare-fun m!7350786 () Bool)

(assert (=> b!6568607 m!7350786))

(declare-fun m!7350788 () Bool)

(assert (=> b!6568607 m!7350788))

(declare-fun m!7350790 () Bool)

(assert (=> b!6568618 m!7350790))

(declare-fun m!7350792 () Bool)

(assert (=> b!6568629 m!7350792))

(declare-fun m!7350794 () Bool)

(assert (=> b!6568625 m!7350794))

(declare-fun m!7350796 () Bool)

(assert (=> b!6568632 m!7350796))

(assert (=> b!6568632 m!7350796))

(declare-fun m!7350798 () Bool)

(assert (=> b!6568632 m!7350798))

(declare-fun m!7350800 () Bool)

(assert (=> b!6568620 m!7350800))

(declare-fun m!7350802 () Bool)

(assert (=> b!6568620 m!7350802))

(declare-fun m!7350804 () Bool)

(assert (=> b!6568627 m!7350804))

(assert (=> b!6568600 m!7350792))

(declare-fun m!7350806 () Bool)

(assert (=> b!6568597 m!7350806))

(declare-fun m!7350808 () Bool)

(assert (=> start!643626 m!7350808))

(declare-fun m!7350810 () Bool)

(assert (=> b!6568624 m!7350810))

(declare-fun m!7350812 () Bool)

(assert (=> b!6568628 m!7350812))

(declare-fun m!7350814 () Bool)

(assert (=> b!6568599 m!7350814))

(declare-fun m!7350816 () Bool)

(assert (=> b!6568621 m!7350816))

(assert (=> b!6568630 m!7350792))

(declare-fun m!7350818 () Bool)

(assert (=> setNonEmpty!44846 m!7350818))

(declare-fun m!7350820 () Bool)

(assert (=> b!6568611 m!7350820))

(assert (=> b!6568623 m!7350760))

(declare-fun m!7350822 () Bool)

(assert (=> b!6568635 m!7350822))

(declare-fun m!7350824 () Bool)

(assert (=> b!6568635 m!7350824))

(declare-fun m!7350826 () Bool)

(assert (=> b!6568635 m!7350826))

(declare-fun m!7350828 () Bool)

(assert (=> b!6568635 m!7350828))

(declare-fun m!7350830 () Bool)

(assert (=> b!6568635 m!7350830))

(declare-fun m!7350832 () Bool)

(assert (=> b!6568635 m!7350832))

(declare-fun m!7350834 () Bool)

(assert (=> b!6568635 m!7350834))

(declare-fun m!7350836 () Bool)

(assert (=> b!6568603 m!7350836))

(declare-fun m!7350838 () Bool)

(assert (=> b!6568603 m!7350838))

(declare-fun m!7350840 () Bool)

(assert (=> b!6568603 m!7350840))

(declare-fun m!7350842 () Bool)

(assert (=> b!6568603 m!7350842))

(declare-fun m!7350844 () Bool)

(assert (=> b!6568603 m!7350844))

(declare-fun m!7350846 () Bool)

(assert (=> b!6568614 m!7350846))

(declare-fun m!7350848 () Bool)

(assert (=> b!6568614 m!7350848))

(declare-fun m!7350850 () Bool)

(assert (=> b!6568614 m!7350850))

(assert (=> b!6568614 m!7350846))

(declare-fun m!7350852 () Bool)

(assert (=> b!6568614 m!7350852))

(declare-fun m!7350854 () Bool)

(assert (=> b!6568614 m!7350854))

(assert (=> b!6568614 m!7350848))

(declare-fun m!7350856 () Bool)

(assert (=> b!6568614 m!7350856))

(declare-fun m!7350858 () Bool)

(assert (=> b!6568622 m!7350858))

(check-sat (not b!6568623) tp_is_empty!42143 (not b!6568629) (not b!6568614) (not b!6568627) (not b!6568604) (not b!6568603) (not setNonEmpty!44846) (not b!6568601) (not b!6568620) (not b!6568607) (not b!6568630) (not b!6568628) (not b!6568611) (not start!643626) (not b!6568596) (not b!6568632) (not b!6568613) (not b!6568635) (not b!6568622) (not b!6568612) (not b!6568600) (not b!6568618) (not b!6568616) (not b!6568602) (not b!6568609) (not b!6568634) (not b!6568605) (not b!6568621) (not b!6568606) (not b!6568624) (not b!6568599) (not b!6568625) (not b!6568597))
(check-sat)
(get-model)

(declare-fun d!2060886 () Bool)

(declare-fun lambda!365738 () Int)

(declare-fun forall!15616 (List!65634 Int) Bool)

(assert (=> d!2060886 (= (inv!84359 setElem!44846) (forall!15616 (exprs!6329 setElem!44846) lambda!365738))))

(declare-fun bs!1677812 () Bool)

(assert (= bs!1677812 d!2060886))

(declare-fun m!7350860 () Bool)

(assert (=> bs!1677812 m!7350860))

(assert (=> setNonEmpty!44846 d!2060886))

(declare-fun b!6568707 () Bool)

(declare-fun e!3976047 () Bool)

(declare-fun lt!2408298 () Bool)

(declare-fun call!571462 () Bool)

(assert (=> b!6568707 (= e!3976047 (= lt!2408298 call!571462))))

(declare-fun b!6568708 () Bool)

(declare-fun res!2695790 () Bool)

(declare-fun e!3976049 () Bool)

(assert (=> b!6568708 (=> res!2695790 e!3976049)))

(declare-fun isEmpty!37760 (List!65636) Bool)

(declare-fun tail!12426 (List!65636) List!65636)

(assert (=> b!6568708 (= res!2695790 (not (isEmpty!37760 (tail!12426 s!2326))))))

(declare-fun b!6568709 () Bool)

(declare-fun head!13340 (List!65636) C!33160)

(assert (=> b!6568709 (= e!3976049 (not (= (head!13340 s!2326) (c!1207368 lt!2408266))))))

(declare-fun bm!571457 () Bool)

(assert (=> bm!571457 (= call!571462 (isEmpty!37760 s!2326))))

(declare-fun b!6568711 () Bool)

(declare-fun e!3976045 () Bool)

(assert (=> b!6568711 (= e!3976047 e!3976045)))

(declare-fun c!1207390 () Bool)

(assert (=> b!6568711 (= c!1207390 ((_ is EmptyLang!16445) lt!2408266))))

(declare-fun b!6568712 () Bool)

(declare-fun e!3976048 () Bool)

(assert (=> b!6568712 (= e!3976048 (nullable!6438 lt!2408266))))

(declare-fun b!6568713 () Bool)

(declare-fun res!2695791 () Bool)

(declare-fun e!3976046 () Bool)

(assert (=> b!6568713 (=> res!2695791 e!3976046)))

(declare-fun e!3976044 () Bool)

(assert (=> b!6568713 (= res!2695791 e!3976044)))

(declare-fun res!2695788 () Bool)

(assert (=> b!6568713 (=> (not res!2695788) (not e!3976044))))

(assert (=> b!6568713 (= res!2695788 lt!2408298)))

(declare-fun b!6568714 () Bool)

(assert (=> b!6568714 (= e!3976045 (not lt!2408298))))

(declare-fun b!6568715 () Bool)

(declare-fun e!3976050 () Bool)

(assert (=> b!6568715 (= e!3976050 e!3976049)))

(declare-fun res!2695792 () Bool)

(assert (=> b!6568715 (=> res!2695792 e!3976049)))

(assert (=> b!6568715 (= res!2695792 call!571462)))

(declare-fun b!6568716 () Bool)

(declare-fun res!2695794 () Bool)

(assert (=> b!6568716 (=> res!2695794 e!3976046)))

(assert (=> b!6568716 (= res!2695794 (not ((_ is ElementMatch!16445) lt!2408266)))))

(assert (=> b!6568716 (= e!3976045 e!3976046)))

(declare-fun b!6568717 () Bool)

(declare-fun derivativeStep!5128 (Regex!16445 C!33160) Regex!16445)

(assert (=> b!6568717 (= e!3976048 (matchR!8628 (derivativeStep!5128 lt!2408266 (head!13340 s!2326)) (tail!12426 s!2326)))))

(declare-fun b!6568718 () Bool)

(declare-fun res!2695793 () Bool)

(assert (=> b!6568718 (=> (not res!2695793) (not e!3976044))))

(assert (=> b!6568718 (= res!2695793 (not call!571462))))

(declare-fun b!6568710 () Bool)

(declare-fun res!2695787 () Bool)

(assert (=> b!6568710 (=> (not res!2695787) (not e!3976044))))

(assert (=> b!6568710 (= res!2695787 (isEmpty!37760 (tail!12426 s!2326)))))

(declare-fun d!2060890 () Bool)

(assert (=> d!2060890 e!3976047))

(declare-fun c!1207392 () Bool)

(assert (=> d!2060890 (= c!1207392 ((_ is EmptyExpr!16445) lt!2408266))))

(assert (=> d!2060890 (= lt!2408298 e!3976048)))

(declare-fun c!1207391 () Bool)

(assert (=> d!2060890 (= c!1207391 (isEmpty!37760 s!2326))))

(assert (=> d!2060890 (validRegex!8181 lt!2408266)))

(assert (=> d!2060890 (= (matchR!8628 lt!2408266 s!2326) lt!2408298)))

(declare-fun b!6568719 () Bool)

(assert (=> b!6568719 (= e!3976046 e!3976050)))

(declare-fun res!2695789 () Bool)

(assert (=> b!6568719 (=> (not res!2695789) (not e!3976050))))

(assert (=> b!6568719 (= res!2695789 (not lt!2408298))))

(declare-fun b!6568720 () Bool)

(assert (=> b!6568720 (= e!3976044 (= (head!13340 s!2326) (c!1207368 lt!2408266)))))

(assert (= (and d!2060890 c!1207391) b!6568712))

(assert (= (and d!2060890 (not c!1207391)) b!6568717))

(assert (= (and d!2060890 c!1207392) b!6568707))

(assert (= (and d!2060890 (not c!1207392)) b!6568711))

(assert (= (and b!6568711 c!1207390) b!6568714))

(assert (= (and b!6568711 (not c!1207390)) b!6568716))

(assert (= (and b!6568716 (not res!2695794)) b!6568713))

(assert (= (and b!6568713 res!2695788) b!6568718))

(assert (= (and b!6568718 res!2695793) b!6568710))

(assert (= (and b!6568710 res!2695787) b!6568720))

(assert (= (and b!6568713 (not res!2695791)) b!6568719))

(assert (= (and b!6568719 res!2695789) b!6568715))

(assert (= (and b!6568715 (not res!2695792)) b!6568708))

(assert (= (and b!6568708 (not res!2695790)) b!6568709))

(assert (= (or b!6568707 b!6568718 b!6568715) bm!571457))

(declare-fun m!7350894 () Bool)

(assert (=> b!6568708 m!7350894))

(assert (=> b!6568708 m!7350894))

(declare-fun m!7350896 () Bool)

(assert (=> b!6568708 m!7350896))

(declare-fun m!7350898 () Bool)

(assert (=> b!6568717 m!7350898))

(assert (=> b!6568717 m!7350898))

(declare-fun m!7350900 () Bool)

(assert (=> b!6568717 m!7350900))

(assert (=> b!6568717 m!7350894))

(assert (=> b!6568717 m!7350900))

(assert (=> b!6568717 m!7350894))

(declare-fun m!7350902 () Bool)

(assert (=> b!6568717 m!7350902))

(declare-fun m!7350904 () Bool)

(assert (=> b!6568712 m!7350904))

(assert (=> b!6568709 m!7350898))

(declare-fun m!7350906 () Bool)

(assert (=> d!2060890 m!7350906))

(declare-fun m!7350908 () Bool)

(assert (=> d!2060890 m!7350908))

(assert (=> b!6568710 m!7350894))

(assert (=> b!6568710 m!7350894))

(assert (=> b!6568710 m!7350896))

(assert (=> bm!571457 m!7350906))

(assert (=> b!6568720 m!7350898))

(assert (=> b!6568605 d!2060890))

(declare-fun bs!1677814 () Bool)

(declare-fun b!6568786 () Bool)

(assert (= bs!1677814 (and b!6568786 b!6568614)))

(declare-fun lambda!365749 () Int)

(assert (=> bs!1677814 (not (= lambda!365749 lambda!365733))))

(assert (=> bs!1677814 (not (= lambda!365749 lambda!365734))))

(assert (=> b!6568786 true))

(assert (=> b!6568786 true))

(declare-fun bs!1677815 () Bool)

(declare-fun b!6568784 () Bool)

(assert (= bs!1677815 (and b!6568784 b!6568614)))

(declare-fun lambda!365750 () Int)

(assert (=> bs!1677815 (not (= lambda!365750 lambda!365733))))

(assert (=> bs!1677815 (= (and (= (regOne!33402 lt!2408266) (regOne!33402 r!7292)) (= (regTwo!33402 lt!2408266) (regTwo!33402 r!7292))) (= lambda!365750 lambda!365734))))

(declare-fun bs!1677816 () Bool)

(assert (= bs!1677816 (and b!6568784 b!6568786)))

(assert (=> bs!1677816 (not (= lambda!365750 lambda!365749))))

(assert (=> b!6568784 true))

(assert (=> b!6568784 true))

(declare-fun d!2060896 () Bool)

(declare-fun c!1207409 () Bool)

(assert (=> d!2060896 (= c!1207409 ((_ is EmptyExpr!16445) lt!2408266))))

(declare-fun e!3976088 () Bool)

(assert (=> d!2060896 (= (matchRSpec!3546 lt!2408266 s!2326) e!3976088)))

(declare-fun b!6568777 () Bool)

(declare-fun e!3976082 () Bool)

(declare-fun e!3976085 () Bool)

(assert (=> b!6568777 (= e!3976082 e!3976085)))

(declare-fun res!2695822 () Bool)

(assert (=> b!6568777 (= res!2695822 (matchRSpec!3546 (regOne!33403 lt!2408266) s!2326))))

(assert (=> b!6568777 (=> res!2695822 e!3976085)))

(declare-fun b!6568778 () Bool)

(declare-fun res!2695821 () Bool)

(declare-fun e!3976083 () Bool)

(assert (=> b!6568778 (=> res!2695821 e!3976083)))

(declare-fun call!571468 () Bool)

(assert (=> b!6568778 (= res!2695821 call!571468)))

(declare-fun e!3976084 () Bool)

(assert (=> b!6568778 (= e!3976084 e!3976083)))

(declare-fun b!6568779 () Bool)

(declare-fun e!3976087 () Bool)

(assert (=> b!6568779 (= e!3976087 (= s!2326 (Cons!65512 (c!1207368 lt!2408266) Nil!65512)))))

(declare-fun call!571467 () Bool)

(declare-fun bm!571462 () Bool)

(declare-fun c!1207410 () Bool)

(assert (=> bm!571462 (= call!571467 (Exists!3515 (ite c!1207410 lambda!365749 lambda!365750)))))

(declare-fun b!6568780 () Bool)

(assert (=> b!6568780 (= e!3976082 e!3976084)))

(assert (=> b!6568780 (= c!1207410 ((_ is Star!16445) lt!2408266))))

(declare-fun b!6568781 () Bool)

(assert (=> b!6568781 (= e!3976088 call!571468)))

(declare-fun b!6568782 () Bool)

(assert (=> b!6568782 (= e!3976085 (matchRSpec!3546 (regTwo!33403 lt!2408266) s!2326))))

(declare-fun bm!571463 () Bool)

(assert (=> bm!571463 (= call!571468 (isEmpty!37760 s!2326))))

(declare-fun b!6568783 () Bool)

(declare-fun c!1207411 () Bool)

(assert (=> b!6568783 (= c!1207411 ((_ is ElementMatch!16445) lt!2408266))))

(declare-fun e!3976086 () Bool)

(assert (=> b!6568783 (= e!3976086 e!3976087)))

(assert (=> b!6568784 (= e!3976084 call!571467)))

(declare-fun b!6568785 () Bool)

(declare-fun c!1207408 () Bool)

(assert (=> b!6568785 (= c!1207408 ((_ is Union!16445) lt!2408266))))

(assert (=> b!6568785 (= e!3976087 e!3976082)))

(assert (=> b!6568786 (= e!3976083 call!571467)))

(declare-fun b!6568787 () Bool)

(assert (=> b!6568787 (= e!3976088 e!3976086)))

(declare-fun res!2695823 () Bool)

(assert (=> b!6568787 (= res!2695823 (not ((_ is EmptyLang!16445) lt!2408266)))))

(assert (=> b!6568787 (=> (not res!2695823) (not e!3976086))))

(assert (= (and d!2060896 c!1207409) b!6568781))

(assert (= (and d!2060896 (not c!1207409)) b!6568787))

(assert (= (and b!6568787 res!2695823) b!6568783))

(assert (= (and b!6568783 c!1207411) b!6568779))

(assert (= (and b!6568783 (not c!1207411)) b!6568785))

(assert (= (and b!6568785 c!1207408) b!6568777))

(assert (= (and b!6568785 (not c!1207408)) b!6568780))

(assert (= (and b!6568777 (not res!2695822)) b!6568782))

(assert (= (and b!6568780 c!1207410) b!6568778))

(assert (= (and b!6568780 (not c!1207410)) b!6568784))

(assert (= (and b!6568778 (not res!2695821)) b!6568786))

(assert (= (or b!6568786 b!6568784) bm!571462))

(assert (= (or b!6568781 b!6568778) bm!571463))

(declare-fun m!7350914 () Bool)

(assert (=> b!6568777 m!7350914))

(declare-fun m!7350916 () Bool)

(assert (=> bm!571462 m!7350916))

(declare-fun m!7350918 () Bool)

(assert (=> b!6568782 m!7350918))

(assert (=> bm!571463 m!7350906))

(assert (=> b!6568605 d!2060896))

(declare-fun d!2060900 () Bool)

(assert (=> d!2060900 (= (matchR!8628 lt!2408266 s!2326) (matchRSpec!3546 lt!2408266 s!2326))))

(declare-fun lt!2408313 () Unit!159115)

(declare-fun choose!49062 (Regex!16445 List!65636) Unit!159115)

(assert (=> d!2060900 (= lt!2408313 (choose!49062 lt!2408266 s!2326))))

(assert (=> d!2060900 (validRegex!8181 lt!2408266)))

(assert (=> d!2060900 (= (mainMatchTheorem!3546 lt!2408266 s!2326) lt!2408313)))

(declare-fun bs!1677819 () Bool)

(assert (= bs!1677819 d!2060900))

(assert (=> bs!1677819 m!7350750))

(assert (=> bs!1677819 m!7350752))

(declare-fun m!7350948 () Bool)

(assert (=> bs!1677819 m!7350948))

(assert (=> bs!1677819 m!7350908))

(assert (=> b!6568605 d!2060900))

(declare-fun d!2060908 () Bool)

(declare-fun c!1207416 () Bool)

(assert (=> d!2060908 (= c!1207416 (isEmpty!37760 s!2326))))

(declare-fun e!3976096 () Bool)

(assert (=> d!2060908 (= (matchZipper!2457 z!1189 s!2326) e!3976096)))

(declare-fun b!6568801 () Bool)

(declare-fun nullableZipper!2190 ((InoxSet Context!11658)) Bool)

(assert (=> b!6568801 (= e!3976096 (nullableZipper!2190 z!1189))))

(declare-fun b!6568802 () Bool)

(assert (=> b!6568802 (= e!3976096 (matchZipper!2457 (derivationStepZipper!2411 z!1189 (head!13340 s!2326)) (tail!12426 s!2326)))))

(assert (= (and d!2060908 c!1207416) b!6568801))

(assert (= (and d!2060908 (not c!1207416)) b!6568802))

(assert (=> d!2060908 m!7350906))

(declare-fun m!7350950 () Bool)

(assert (=> b!6568801 m!7350950))

(assert (=> b!6568802 m!7350898))

(assert (=> b!6568802 m!7350898))

(declare-fun m!7350952 () Bool)

(assert (=> b!6568802 m!7350952))

(assert (=> b!6568802 m!7350894))

(assert (=> b!6568802 m!7350952))

(assert (=> b!6568802 m!7350894))

(declare-fun m!7350954 () Bool)

(assert (=> b!6568802 m!7350954))

(assert (=> b!6568627 d!2060908))

(declare-fun e!3976101 () Bool)

(declare-fun d!2060910 () Bool)

(assert (=> d!2060910 (= (matchZipper!2457 ((_ map or) lt!2408280 lt!2408277) (t!379280 s!2326)) e!3976101)))

(declare-fun res!2695835 () Bool)

(assert (=> d!2060910 (=> res!2695835 e!3976101)))

(assert (=> d!2060910 (= res!2695835 (matchZipper!2457 lt!2408280 (t!379280 s!2326)))))

(declare-fun lt!2408319 () Unit!159115)

(declare-fun choose!49063 ((InoxSet Context!11658) (InoxSet Context!11658) List!65636) Unit!159115)

(assert (=> d!2060910 (= lt!2408319 (choose!49063 lt!2408280 lt!2408277 (t!379280 s!2326)))))

(assert (=> d!2060910 (= (lemmaZipperConcatMatchesSameAsBothZippers!1276 lt!2408280 lt!2408277 (t!379280 s!2326)) lt!2408319)))

(declare-fun b!6568809 () Bool)

(assert (=> b!6568809 (= e!3976101 (matchZipper!2457 lt!2408277 (t!379280 s!2326)))))

(assert (= (and d!2060910 (not res!2695835)) b!6568809))

(assert (=> d!2060910 m!7350762))

(assert (=> d!2060910 m!7350760))

(declare-fun m!7350960 () Bool)

(assert (=> d!2060910 m!7350960))

(assert (=> b!6568809 m!7350792))

(assert (=> b!6568606 d!2060910))

(declare-fun d!2060914 () Bool)

(declare-fun c!1207417 () Bool)

(assert (=> d!2060914 (= c!1207417 (isEmpty!37760 (t!379280 s!2326)))))

(declare-fun e!3976102 () Bool)

(assert (=> d!2060914 (= (matchZipper!2457 lt!2408280 (t!379280 s!2326)) e!3976102)))

(declare-fun b!6568810 () Bool)

(assert (=> b!6568810 (= e!3976102 (nullableZipper!2190 lt!2408280))))

(declare-fun b!6568811 () Bool)

(assert (=> b!6568811 (= e!3976102 (matchZipper!2457 (derivationStepZipper!2411 lt!2408280 (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))))))

(assert (= (and d!2060914 c!1207417) b!6568810))

(assert (= (and d!2060914 (not c!1207417)) b!6568811))

(declare-fun m!7350962 () Bool)

(assert (=> d!2060914 m!7350962))

(declare-fun m!7350964 () Bool)

(assert (=> b!6568810 m!7350964))

(declare-fun m!7350966 () Bool)

(assert (=> b!6568811 m!7350966))

(assert (=> b!6568811 m!7350966))

(declare-fun m!7350968 () Bool)

(assert (=> b!6568811 m!7350968))

(declare-fun m!7350970 () Bool)

(assert (=> b!6568811 m!7350970))

(assert (=> b!6568811 m!7350968))

(assert (=> b!6568811 m!7350970))

(declare-fun m!7350972 () Bool)

(assert (=> b!6568811 m!7350972))

(assert (=> b!6568606 d!2060914))

(declare-fun d!2060916 () Bool)

(declare-fun c!1207418 () Bool)

(assert (=> d!2060916 (= c!1207418 (isEmpty!37760 (t!379280 s!2326)))))

(declare-fun e!3976103 () Bool)

(assert (=> d!2060916 (= (matchZipper!2457 ((_ map or) lt!2408280 lt!2408277) (t!379280 s!2326)) e!3976103)))

(declare-fun b!6568812 () Bool)

(assert (=> b!6568812 (= e!3976103 (nullableZipper!2190 ((_ map or) lt!2408280 lt!2408277)))))

(declare-fun b!6568813 () Bool)

(assert (=> b!6568813 (= e!3976103 (matchZipper!2457 (derivationStepZipper!2411 ((_ map or) lt!2408280 lt!2408277) (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))))))

(assert (= (and d!2060916 c!1207418) b!6568812))

(assert (= (and d!2060916 (not c!1207418)) b!6568813))

(assert (=> d!2060916 m!7350962))

(declare-fun m!7350974 () Bool)

(assert (=> b!6568812 m!7350974))

(assert (=> b!6568813 m!7350966))

(assert (=> b!6568813 m!7350966))

(declare-fun m!7350976 () Bool)

(assert (=> b!6568813 m!7350976))

(assert (=> b!6568813 m!7350970))

(assert (=> b!6568813 m!7350976))

(assert (=> b!6568813 m!7350970))

(declare-fun m!7350978 () Bool)

(assert (=> b!6568813 m!7350978))

(assert (=> b!6568606 d!2060916))

(declare-fun b!6568824 () Bool)

(declare-fun e!3976111 () (InoxSet Context!11658))

(declare-fun call!571471 () (InoxSet Context!11658))

(assert (=> b!6568824 (= e!3976111 call!571471)))

(declare-fun b!6568826 () Bool)

(assert (=> b!6568826 (= e!3976111 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571466 () Bool)

(assert (=> bm!571466 (= call!571471 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408267)) (Context!11659 (t!379278 (exprs!6329 lt!2408267))) (h!71960 s!2326)))))

(declare-fun b!6568827 () Bool)

(declare-fun e!3976110 () (InoxSet Context!11658))

(assert (=> b!6568827 (= e!3976110 e!3976111)))

(declare-fun c!1207423 () Bool)

(assert (=> b!6568827 (= c!1207423 ((_ is Cons!65510) (exprs!6329 lt!2408267)))))

(declare-fun b!6568828 () Bool)

(assert (=> b!6568828 (= e!3976110 ((_ map or) call!571471 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408267))) (h!71960 s!2326))))))

(declare-fun b!6568825 () Bool)

(declare-fun e!3976112 () Bool)

(assert (=> b!6568825 (= e!3976112 (nullable!6438 (h!71958 (exprs!6329 lt!2408267))))))

(declare-fun d!2060918 () Bool)

(declare-fun c!1207424 () Bool)

(assert (=> d!2060918 (= c!1207424 e!3976112)))

(declare-fun res!2695838 () Bool)

(assert (=> d!2060918 (=> (not res!2695838) (not e!3976112))))

(assert (=> d!2060918 (= res!2695838 ((_ is Cons!65510) (exprs!6329 lt!2408267)))))

(assert (=> d!2060918 (= (derivationStepZipperUp!1619 lt!2408267 (h!71960 s!2326)) e!3976110)))

(assert (= (and d!2060918 res!2695838) b!6568825))

(assert (= (and d!2060918 c!1207424) b!6568828))

(assert (= (and d!2060918 (not c!1207424)) b!6568827))

(assert (= (and b!6568827 c!1207423) b!6568824))

(assert (= (and b!6568827 (not c!1207423)) b!6568826))

(assert (= (or b!6568828 b!6568824) bm!571466))

(declare-fun m!7350980 () Bool)

(assert (=> bm!571466 m!7350980))

(declare-fun m!7350982 () Bool)

(assert (=> b!6568828 m!7350982))

(declare-fun m!7350984 () Bool)

(assert (=> b!6568825 m!7350984))

(assert (=> b!6568607 d!2060918))

(declare-fun d!2060920 () Bool)

(declare-fun lt!2408324 () Regex!16445)

(assert (=> d!2060920 (validRegex!8181 lt!2408324)))

(assert (=> d!2060920 (= lt!2408324 (generalisedUnion!2289 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))))))

(assert (=> d!2060920 (= (unfocusZipper!2187 (Cons!65511 lt!2408275 Nil!65511)) lt!2408324)))

(declare-fun bs!1677822 () Bool)

(assert (= bs!1677822 d!2060920))

(declare-fun m!7350986 () Bool)

(assert (=> bs!1677822 m!7350986))

(declare-fun m!7350988 () Bool)

(assert (=> bs!1677822 m!7350988))

(assert (=> bs!1677822 m!7350988))

(declare-fun m!7350990 () Bool)

(assert (=> bs!1677822 m!7350990))

(assert (=> b!6568607 d!2060920))

(declare-fun d!2060922 () Bool)

(declare-fun dynLambda!26063 (Int Context!11658) (InoxSet Context!11658))

(assert (=> d!2060922 (= (flatMap!1950 lt!2408268 lambda!365735) (dynLambda!26063 lambda!365735 lt!2408267))))

(declare-fun lt!2408328 () Unit!159115)

(declare-fun choose!49066 ((InoxSet Context!11658) Context!11658 Int) Unit!159115)

(assert (=> d!2060922 (= lt!2408328 (choose!49066 lt!2408268 lt!2408267 lambda!365735))))

(assert (=> d!2060922 (= lt!2408268 (store ((as const (Array Context!11658 Bool)) false) lt!2408267 true))))

(assert (=> d!2060922 (= (lemmaFlatMapOnSingletonSet!1476 lt!2408268 lt!2408267 lambda!365735) lt!2408328)))

(declare-fun b_lambda!248417 () Bool)

(assert (=> (not b_lambda!248417) (not d!2060922)))

(declare-fun bs!1677825 () Bool)

(assert (= bs!1677825 d!2060922))

(assert (=> bs!1677825 m!7350782))

(declare-fun m!7350992 () Bool)

(assert (=> bs!1677825 m!7350992))

(declare-fun m!7350994 () Bool)

(assert (=> bs!1677825 m!7350994))

(assert (=> bs!1677825 m!7350772))

(assert (=> b!6568607 d!2060922))

(declare-fun d!2060924 () Bool)

(assert (=> d!2060924 (= (flatMap!1950 lt!2408285 lambda!365735) (dynLambda!26063 lambda!365735 lt!2408275))))

(declare-fun lt!2408329 () Unit!159115)

(assert (=> d!2060924 (= lt!2408329 (choose!49066 lt!2408285 lt!2408275 lambda!365735))))

(assert (=> d!2060924 (= lt!2408285 (store ((as const (Array Context!11658 Bool)) false) lt!2408275 true))))

(assert (=> d!2060924 (= (lemmaFlatMapOnSingletonSet!1476 lt!2408285 lt!2408275 lambda!365735) lt!2408329)))

(declare-fun b_lambda!248419 () Bool)

(assert (=> (not b_lambda!248419) (not d!2060924)))

(declare-fun bs!1677826 () Bool)

(assert (= bs!1677826 d!2060924))

(assert (=> bs!1677826 m!7350776))

(declare-fun m!7350996 () Bool)

(assert (=> bs!1677826 m!7350996))

(declare-fun m!7350998 () Bool)

(assert (=> bs!1677826 m!7350998))

(assert (=> bs!1677826 m!7350788))

(assert (=> b!6568607 d!2060924))

(declare-fun d!2060926 () Bool)

(declare-fun choose!49067 ((InoxSet Context!11658) Int) (InoxSet Context!11658))

(assert (=> d!2060926 (= (flatMap!1950 lt!2408268 lambda!365735) (choose!49067 lt!2408268 lambda!365735))))

(declare-fun bs!1677828 () Bool)

(assert (= bs!1677828 d!2060926))

(declare-fun m!7351006 () Bool)

(assert (=> bs!1677828 m!7351006))

(assert (=> b!6568607 d!2060926))

(declare-fun d!2060930 () Bool)

(assert (=> d!2060930 (= (flatMap!1950 lt!2408285 lambda!365735) (choose!49067 lt!2408285 lambda!365735))))

(declare-fun bs!1677829 () Bool)

(assert (= bs!1677829 d!2060930))

(declare-fun m!7351008 () Bool)

(assert (=> bs!1677829 m!7351008))

(assert (=> b!6568607 d!2060930))

(declare-fun b!6568837 () Bool)

(declare-fun e!3976118 () (InoxSet Context!11658))

(declare-fun call!571472 () (InoxSet Context!11658))

(assert (=> b!6568837 (= e!3976118 call!571472)))

(declare-fun b!6568839 () Bool)

(assert (=> b!6568839 (= e!3976118 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571467 () Bool)

(assert (=> bm!571467 (= call!571472 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408275)) (Context!11659 (t!379278 (exprs!6329 lt!2408275))) (h!71960 s!2326)))))

(declare-fun b!6568840 () Bool)

(declare-fun e!3976117 () (InoxSet Context!11658))

(assert (=> b!6568840 (= e!3976117 e!3976118)))

(declare-fun c!1207425 () Bool)

(assert (=> b!6568840 (= c!1207425 ((_ is Cons!65510) (exprs!6329 lt!2408275)))))

(declare-fun b!6568841 () Bool)

(assert (=> b!6568841 (= e!3976117 ((_ map or) call!571472 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408275))) (h!71960 s!2326))))))

(declare-fun b!6568838 () Bool)

(declare-fun e!3976119 () Bool)

(assert (=> b!6568838 (= e!3976119 (nullable!6438 (h!71958 (exprs!6329 lt!2408275))))))

(declare-fun d!2060932 () Bool)

(declare-fun c!1207426 () Bool)

(assert (=> d!2060932 (= c!1207426 e!3976119)))

(declare-fun res!2695847 () Bool)

(assert (=> d!2060932 (=> (not res!2695847) (not e!3976119))))

(assert (=> d!2060932 (= res!2695847 ((_ is Cons!65510) (exprs!6329 lt!2408275)))))

(assert (=> d!2060932 (= (derivationStepZipperUp!1619 lt!2408275 (h!71960 s!2326)) e!3976117)))

(assert (= (and d!2060932 res!2695847) b!6568838))

(assert (= (and d!2060932 c!1207426) b!6568841))

(assert (= (and d!2060932 (not c!1207426)) b!6568840))

(assert (= (and b!6568840 c!1207425) b!6568837))

(assert (= (and b!6568840 (not c!1207425)) b!6568839))

(assert (= (or b!6568841 b!6568837) bm!571467))

(declare-fun m!7351010 () Bool)

(assert (=> bm!571467 m!7351010))

(declare-fun m!7351014 () Bool)

(assert (=> b!6568841 m!7351014))

(declare-fun m!7351016 () Bool)

(assert (=> b!6568838 m!7351016))

(assert (=> b!6568607 d!2060932))

(declare-fun d!2060936 () Bool)

(declare-fun lt!2408330 () Regex!16445)

(assert (=> d!2060936 (validRegex!8181 lt!2408330)))

(assert (=> d!2060936 (= lt!2408330 (generalisedUnion!2289 (unfocusZipperList!1866 zl!343)))))

(assert (=> d!2060936 (= (unfocusZipper!2187 zl!343) lt!2408330)))

(declare-fun bs!1677831 () Bool)

(assert (= bs!1677831 d!2060936))

(declare-fun m!7351018 () Bool)

(assert (=> bs!1677831 m!7351018))

(assert (=> bs!1677831 m!7350796))

(assert (=> bs!1677831 m!7350796))

(assert (=> bs!1677831 m!7350798))

(assert (=> b!6568628 d!2060936))

(declare-fun d!2060938 () Bool)

(declare-fun c!1207427 () Bool)

(assert (=> d!2060938 (= c!1207427 (isEmpty!37760 (t!379280 s!2326)))))

(declare-fun e!3976120 () Bool)

(assert (=> d!2060938 (= (matchZipper!2457 lt!2408277 (t!379280 s!2326)) e!3976120)))

(declare-fun b!6568842 () Bool)

(assert (=> b!6568842 (= e!3976120 (nullableZipper!2190 lt!2408277))))

(declare-fun b!6568843 () Bool)

(assert (=> b!6568843 (= e!3976120 (matchZipper!2457 (derivationStepZipper!2411 lt!2408277 (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))))))

(assert (= (and d!2060938 c!1207427) b!6568842))

(assert (= (and d!2060938 (not c!1207427)) b!6568843))

(assert (=> d!2060938 m!7350962))

(declare-fun m!7351020 () Bool)

(assert (=> b!6568842 m!7351020))

(assert (=> b!6568843 m!7350966))

(assert (=> b!6568843 m!7350966))

(declare-fun m!7351022 () Bool)

(assert (=> b!6568843 m!7351022))

(assert (=> b!6568843 m!7350970))

(assert (=> b!6568843 m!7351022))

(assert (=> b!6568843 m!7350970))

(declare-fun m!7351024 () Bool)

(assert (=> b!6568843 m!7351024))

(assert (=> b!6568629 d!2060938))

(declare-fun d!2060940 () Bool)

(declare-fun lt!2408331 () Regex!16445)

(assert (=> d!2060940 (validRegex!8181 lt!2408331)))

(assert (=> d!2060940 (= lt!2408331 (generalisedUnion!2289 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))))))

(assert (=> d!2060940 (= (unfocusZipper!2187 (Cons!65511 lt!2408292 Nil!65511)) lt!2408331)))

(declare-fun bs!1677832 () Bool)

(assert (= bs!1677832 d!2060940))

(declare-fun m!7351026 () Bool)

(assert (=> bs!1677832 m!7351026))

(declare-fun m!7351028 () Bool)

(assert (=> bs!1677832 m!7351028))

(assert (=> bs!1677832 m!7351028))

(declare-fun m!7351030 () Bool)

(assert (=> bs!1677832 m!7351030))

(assert (=> b!6568609 d!2060940))

(assert (=> b!6568630 d!2060938))

(declare-fun d!2060942 () Bool)

(declare-fun c!1207428 () Bool)

(assert (=> d!2060942 (= c!1207428 (isEmpty!37760 s!2326))))

(declare-fun e!3976121 () Bool)

(assert (=> d!2060942 (= (matchZipper!2457 lt!2408291 s!2326) e!3976121)))

(declare-fun b!6568844 () Bool)

(assert (=> b!6568844 (= e!3976121 (nullableZipper!2190 lt!2408291))))

(declare-fun b!6568845 () Bool)

(assert (=> b!6568845 (= e!3976121 (matchZipper!2457 (derivationStepZipper!2411 lt!2408291 (head!13340 s!2326)) (tail!12426 s!2326)))))

(assert (= (and d!2060942 c!1207428) b!6568844))

(assert (= (and d!2060942 (not c!1207428)) b!6568845))

(assert (=> d!2060942 m!7350906))

(declare-fun m!7351032 () Bool)

(assert (=> b!6568844 m!7351032))

(assert (=> b!6568845 m!7350898))

(assert (=> b!6568845 m!7350898))

(declare-fun m!7351034 () Bool)

(assert (=> b!6568845 m!7351034))

(assert (=> b!6568845 m!7350894))

(assert (=> b!6568845 m!7351034))

(assert (=> b!6568845 m!7350894))

(declare-fun m!7351036 () Bool)

(assert (=> b!6568845 m!7351036))

(assert (=> b!6568620 d!2060942))

(declare-fun d!2060944 () Bool)

(declare-fun c!1207429 () Bool)

(assert (=> d!2060944 (= c!1207429 (isEmpty!37760 (t!379280 s!2326)))))

(declare-fun e!3976122 () Bool)

(assert (=> d!2060944 (= (matchZipper!2457 lt!2408287 (t!379280 s!2326)) e!3976122)))

(declare-fun b!6568846 () Bool)

(assert (=> b!6568846 (= e!3976122 (nullableZipper!2190 lt!2408287))))

(declare-fun b!6568847 () Bool)

(assert (=> b!6568847 (= e!3976122 (matchZipper!2457 (derivationStepZipper!2411 lt!2408287 (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))))))

(assert (= (and d!2060944 c!1207429) b!6568846))

(assert (= (and d!2060944 (not c!1207429)) b!6568847))

(assert (=> d!2060944 m!7350962))

(declare-fun m!7351038 () Bool)

(assert (=> b!6568846 m!7351038))

(assert (=> b!6568847 m!7350966))

(assert (=> b!6568847 m!7350966))

(declare-fun m!7351040 () Bool)

(assert (=> b!6568847 m!7351040))

(assert (=> b!6568847 m!7350970))

(assert (=> b!6568847 m!7351040))

(assert (=> b!6568847 m!7350970))

(declare-fun m!7351042 () Bool)

(assert (=> b!6568847 m!7351042))

(assert (=> b!6568620 d!2060944))

(declare-fun bm!571498 () Bool)

(declare-fun call!571505 () (InoxSet Context!11658))

(declare-fun call!571506 () (InoxSet Context!11658))

(assert (=> bm!571498 (= call!571505 call!571506)))

(declare-fun call!571503 () (InoxSet Context!11658))

(declare-fun bm!571499 () Bool)

(declare-fun call!571507 () List!65634)

(declare-fun c!1207459 () Bool)

(assert (=> bm!571499 (= call!571503 (derivationStepZipperDown!1693 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292)))) (ite c!1207459 lt!2408267 (Context!11659 call!571507)) (h!71960 s!2326)))))

(declare-fun b!6568903 () Bool)

(declare-fun e!3976154 () (InoxSet Context!11658))

(assert (=> b!6568903 (= e!3976154 (store ((as const (Array Context!11658 Bool)) false) lt!2408267 true))))

(declare-fun bm!571500 () Bool)

(declare-fun call!571504 () List!65634)

(assert (=> bm!571500 (= call!571504 call!571507)))

(declare-fun b!6568905 () Bool)

(declare-fun e!3976155 () (InoxSet Context!11658))

(declare-fun e!3976158 () (InoxSet Context!11658))

(assert (=> b!6568905 (= e!3976155 e!3976158)))

(declare-fun c!1207458 () Bool)

(assert (=> b!6568905 (= c!1207458 ((_ is Concat!25290) (reg!16774 (regOne!33402 r!7292))))))

(declare-fun b!6568906 () Bool)

(declare-fun e!3976157 () (InoxSet Context!11658))

(assert (=> b!6568906 (= e!3976157 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6568907 () Bool)

(declare-fun e!3976153 () Bool)

(assert (=> b!6568907 (= e!3976153 (nullable!6438 (regOne!33402 (reg!16774 (regOne!33402 r!7292)))))))

(declare-fun call!571508 () (InoxSet Context!11658))

(declare-fun c!1207456 () Bool)

(declare-fun bm!571501 () Bool)

(assert (=> bm!571501 (= call!571508 (derivationStepZipperDown!1693 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292)))))) (ite (or c!1207459 c!1207456) lt!2408267 (Context!11659 call!571504)) (h!71960 s!2326)))))

(declare-fun b!6568908 () Bool)

(assert (=> b!6568908 (= e!3976155 ((_ map or) call!571503 call!571506))))

(declare-fun b!6568909 () Bool)

(declare-fun c!1207455 () Bool)

(assert (=> b!6568909 (= c!1207455 ((_ is Star!16445) (reg!16774 (regOne!33402 r!7292))))))

(assert (=> b!6568909 (= e!3976158 e!3976157)))

(declare-fun b!6568910 () Bool)

(declare-fun e!3976156 () (InoxSet Context!11658))

(assert (=> b!6568910 (= e!3976156 ((_ map or) call!571508 call!571503))))

(declare-fun bm!571502 () Bool)

(declare-fun $colon$colon!2286 (List!65634 Regex!16445) List!65634)

(assert (=> bm!571502 (= call!571507 ($colon$colon!2286 (exprs!6329 lt!2408267) (ite (or c!1207456 c!1207458) (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (regOne!33402 r!7292)))))))

(declare-fun b!6568904 () Bool)

(assert (=> b!6568904 (= e!3976154 e!3976156)))

(assert (=> b!6568904 (= c!1207459 ((_ is Union!16445) (reg!16774 (regOne!33402 r!7292))))))

(declare-fun d!2060946 () Bool)

(declare-fun c!1207457 () Bool)

(assert (=> d!2060946 (= c!1207457 (and ((_ is ElementMatch!16445) (reg!16774 (regOne!33402 r!7292))) (= (c!1207368 (reg!16774 (regOne!33402 r!7292))) (h!71960 s!2326))))))

(assert (=> d!2060946 (= (derivationStepZipperDown!1693 (reg!16774 (regOne!33402 r!7292)) lt!2408267 (h!71960 s!2326)) e!3976154)))

(declare-fun b!6568911 () Bool)

(assert (=> b!6568911 (= e!3976158 call!571505)))

(declare-fun b!6568912 () Bool)

(assert (=> b!6568912 (= e!3976157 call!571505)))

(declare-fun b!6568913 () Bool)

(assert (=> b!6568913 (= c!1207456 e!3976153)))

(declare-fun res!2695853 () Bool)

(assert (=> b!6568913 (=> (not res!2695853) (not e!3976153))))

(assert (=> b!6568913 (= res!2695853 ((_ is Concat!25290) (reg!16774 (regOne!33402 r!7292))))))

(assert (=> b!6568913 (= e!3976156 e!3976155)))

(declare-fun bm!571503 () Bool)

(assert (=> bm!571503 (= call!571506 call!571508)))

(assert (= (and d!2060946 c!1207457) b!6568903))

(assert (= (and d!2060946 (not c!1207457)) b!6568904))

(assert (= (and b!6568904 c!1207459) b!6568910))

(assert (= (and b!6568904 (not c!1207459)) b!6568913))

(assert (= (and b!6568913 res!2695853) b!6568907))

(assert (= (and b!6568913 c!1207456) b!6568908))

(assert (= (and b!6568913 (not c!1207456)) b!6568905))

(assert (= (and b!6568905 c!1207458) b!6568911))

(assert (= (and b!6568905 (not c!1207458)) b!6568909))

(assert (= (and b!6568909 c!1207455) b!6568912))

(assert (= (and b!6568909 (not c!1207455)) b!6568906))

(assert (= (or b!6568911 b!6568912) bm!571500))

(assert (= (or b!6568911 b!6568912) bm!571498))

(assert (= (or b!6568908 bm!571500) bm!571502))

(assert (= (or b!6568908 bm!571498) bm!571503))

(assert (= (or b!6568910 b!6568908) bm!571499))

(assert (= (or b!6568910 bm!571503) bm!571501))

(declare-fun m!7351058 () Bool)

(assert (=> bm!571502 m!7351058))

(assert (=> b!6568903 m!7350772))

(declare-fun m!7351060 () Bool)

(assert (=> bm!571501 m!7351060))

(declare-fun m!7351062 () Bool)

(assert (=> bm!571499 m!7351062))

(declare-fun m!7351064 () Bool)

(assert (=> b!6568907 m!7351064))

(assert (=> b!6568621 d!2060946))

(declare-fun bs!1677835 () Bool)

(declare-fun b!6568923 () Bool)

(assert (= bs!1677835 (and b!6568923 b!6568614)))

(declare-fun lambda!365760 () Int)

(assert (=> bs!1677835 (not (= lambda!365760 lambda!365733))))

(assert (=> bs!1677835 (not (= lambda!365760 lambda!365734))))

(declare-fun bs!1677836 () Bool)

(assert (= bs!1677836 (and b!6568923 b!6568786)))

(assert (=> bs!1677836 (= (and (= (reg!16774 r!7292) (reg!16774 lt!2408266)) (= r!7292 lt!2408266)) (= lambda!365760 lambda!365749))))

(declare-fun bs!1677837 () Bool)

(assert (= bs!1677837 (and b!6568923 b!6568784)))

(assert (=> bs!1677837 (not (= lambda!365760 lambda!365750))))

(assert (=> b!6568923 true))

(assert (=> b!6568923 true))

(declare-fun bs!1677838 () Bool)

(declare-fun b!6568921 () Bool)

(assert (= bs!1677838 (and b!6568921 b!6568784)))

(declare-fun lambda!365761 () Int)

(assert (=> bs!1677838 (= (and (= (regOne!33402 r!7292) (regOne!33402 lt!2408266)) (= (regTwo!33402 r!7292) (regTwo!33402 lt!2408266))) (= lambda!365761 lambda!365750))))

(declare-fun bs!1677839 () Bool)

(assert (= bs!1677839 (and b!6568921 b!6568923)))

(assert (=> bs!1677839 (not (= lambda!365761 lambda!365760))))

(declare-fun bs!1677840 () Bool)

(assert (= bs!1677840 (and b!6568921 b!6568614)))

(assert (=> bs!1677840 (= lambda!365761 lambda!365734)))

(declare-fun bs!1677841 () Bool)

(assert (= bs!1677841 (and b!6568921 b!6568786)))

(assert (=> bs!1677841 (not (= lambda!365761 lambda!365749))))

(assert (=> bs!1677840 (not (= lambda!365761 lambda!365733))))

(assert (=> b!6568921 true))

(assert (=> b!6568921 true))

(declare-fun d!2060954 () Bool)

(declare-fun c!1207461 () Bool)

(assert (=> d!2060954 (= c!1207461 ((_ is EmptyExpr!16445) r!7292))))

(declare-fun e!3976165 () Bool)

(assert (=> d!2060954 (= (matchRSpec!3546 r!7292 s!2326) e!3976165)))

(declare-fun b!6568914 () Bool)

(declare-fun e!3976159 () Bool)

(declare-fun e!3976162 () Bool)

(assert (=> b!6568914 (= e!3976159 e!3976162)))

(declare-fun res!2695855 () Bool)

(assert (=> b!6568914 (= res!2695855 (matchRSpec!3546 (regOne!33403 r!7292) s!2326))))

(assert (=> b!6568914 (=> res!2695855 e!3976162)))

(declare-fun b!6568915 () Bool)

(declare-fun res!2695854 () Bool)

(declare-fun e!3976160 () Bool)

(assert (=> b!6568915 (=> res!2695854 e!3976160)))

(declare-fun call!571510 () Bool)

(assert (=> b!6568915 (= res!2695854 call!571510)))

(declare-fun e!3976161 () Bool)

(assert (=> b!6568915 (= e!3976161 e!3976160)))

(declare-fun b!6568916 () Bool)

(declare-fun e!3976164 () Bool)

(assert (=> b!6568916 (= e!3976164 (= s!2326 (Cons!65512 (c!1207368 r!7292) Nil!65512)))))

(declare-fun call!571509 () Bool)

(declare-fun bm!571504 () Bool)

(declare-fun c!1207462 () Bool)

(assert (=> bm!571504 (= call!571509 (Exists!3515 (ite c!1207462 lambda!365760 lambda!365761)))))

(declare-fun b!6568917 () Bool)

(assert (=> b!6568917 (= e!3976159 e!3976161)))

(assert (=> b!6568917 (= c!1207462 ((_ is Star!16445) r!7292))))

(declare-fun b!6568918 () Bool)

(assert (=> b!6568918 (= e!3976165 call!571510)))

(declare-fun b!6568919 () Bool)

(assert (=> b!6568919 (= e!3976162 (matchRSpec!3546 (regTwo!33403 r!7292) s!2326))))

(declare-fun bm!571505 () Bool)

(assert (=> bm!571505 (= call!571510 (isEmpty!37760 s!2326))))

(declare-fun b!6568920 () Bool)

(declare-fun c!1207463 () Bool)

(assert (=> b!6568920 (= c!1207463 ((_ is ElementMatch!16445) r!7292))))

(declare-fun e!3976163 () Bool)

(assert (=> b!6568920 (= e!3976163 e!3976164)))

(assert (=> b!6568921 (= e!3976161 call!571509)))

(declare-fun b!6568922 () Bool)

(declare-fun c!1207460 () Bool)

(assert (=> b!6568922 (= c!1207460 ((_ is Union!16445) r!7292))))

(assert (=> b!6568922 (= e!3976164 e!3976159)))

(assert (=> b!6568923 (= e!3976160 call!571509)))

(declare-fun b!6568924 () Bool)

(assert (=> b!6568924 (= e!3976165 e!3976163)))

(declare-fun res!2695856 () Bool)

(assert (=> b!6568924 (= res!2695856 (not ((_ is EmptyLang!16445) r!7292)))))

(assert (=> b!6568924 (=> (not res!2695856) (not e!3976163))))

(assert (= (and d!2060954 c!1207461) b!6568918))

(assert (= (and d!2060954 (not c!1207461)) b!6568924))

(assert (= (and b!6568924 res!2695856) b!6568920))

(assert (= (and b!6568920 c!1207463) b!6568916))

(assert (= (and b!6568920 (not c!1207463)) b!6568922))

(assert (= (and b!6568922 c!1207460) b!6568914))

(assert (= (and b!6568922 (not c!1207460)) b!6568917))

(assert (= (and b!6568914 (not res!2695855)) b!6568919))

(assert (= (and b!6568917 c!1207462) b!6568915))

(assert (= (and b!6568917 (not c!1207462)) b!6568921))

(assert (= (and b!6568915 (not res!2695854)) b!6568923))

(assert (= (or b!6568923 b!6568921) bm!571504))

(assert (= (or b!6568918 b!6568915) bm!571505))

(declare-fun m!7351066 () Bool)

(assert (=> b!6568914 m!7351066))

(declare-fun m!7351068 () Bool)

(assert (=> bm!571504 m!7351068))

(declare-fun m!7351070 () Bool)

(assert (=> b!6568919 m!7351070))

(assert (=> bm!571505 m!7350906))

(assert (=> b!6568601 d!2060954))

(declare-fun b!6568935 () Bool)

(declare-fun e!3976175 () Bool)

(declare-fun lt!2408332 () Bool)

(declare-fun call!571513 () Bool)

(assert (=> b!6568935 (= e!3976175 (= lt!2408332 call!571513))))

(declare-fun b!6568936 () Bool)

(declare-fun res!2695862 () Bool)

(declare-fun e!3976177 () Bool)

(assert (=> b!6568936 (=> res!2695862 e!3976177)))

(assert (=> b!6568936 (= res!2695862 (not (isEmpty!37760 (tail!12426 s!2326))))))

(declare-fun b!6568937 () Bool)

(assert (=> b!6568937 (= e!3976177 (not (= (head!13340 s!2326) (c!1207368 r!7292))))))

(declare-fun bm!571508 () Bool)

(assert (=> bm!571508 (= call!571513 (isEmpty!37760 s!2326))))

(declare-fun b!6568939 () Bool)

(declare-fun e!3976173 () Bool)

(assert (=> b!6568939 (= e!3976175 e!3976173)))

(declare-fun c!1207468 () Bool)

(assert (=> b!6568939 (= c!1207468 ((_ is EmptyLang!16445) r!7292))))

(declare-fun b!6568940 () Bool)

(declare-fun e!3976176 () Bool)

(assert (=> b!6568940 (= e!3976176 (nullable!6438 r!7292))))

(declare-fun b!6568941 () Bool)

(declare-fun res!2695863 () Bool)

(declare-fun e!3976174 () Bool)

(assert (=> b!6568941 (=> res!2695863 e!3976174)))

(declare-fun e!3976172 () Bool)

(assert (=> b!6568941 (= res!2695863 e!3976172)))

(declare-fun res!2695860 () Bool)

(assert (=> b!6568941 (=> (not res!2695860) (not e!3976172))))

(assert (=> b!6568941 (= res!2695860 lt!2408332)))

(declare-fun b!6568942 () Bool)

(assert (=> b!6568942 (= e!3976173 (not lt!2408332))))

(declare-fun b!6568943 () Bool)

(declare-fun e!3976178 () Bool)

(assert (=> b!6568943 (= e!3976178 e!3976177)))

(declare-fun res!2695864 () Bool)

(assert (=> b!6568943 (=> res!2695864 e!3976177)))

(assert (=> b!6568943 (= res!2695864 call!571513)))

(declare-fun b!6568944 () Bool)

(declare-fun res!2695866 () Bool)

(assert (=> b!6568944 (=> res!2695866 e!3976174)))

(assert (=> b!6568944 (= res!2695866 (not ((_ is ElementMatch!16445) r!7292)))))

(assert (=> b!6568944 (= e!3976173 e!3976174)))

(declare-fun b!6568945 () Bool)

(assert (=> b!6568945 (= e!3976176 (matchR!8628 (derivativeStep!5128 r!7292 (head!13340 s!2326)) (tail!12426 s!2326)))))

(declare-fun b!6568946 () Bool)

(declare-fun res!2695865 () Bool)

(assert (=> b!6568946 (=> (not res!2695865) (not e!3976172))))

(assert (=> b!6568946 (= res!2695865 (not call!571513))))

(declare-fun b!6568938 () Bool)

(declare-fun res!2695859 () Bool)

(assert (=> b!6568938 (=> (not res!2695859) (not e!3976172))))

(assert (=> b!6568938 (= res!2695859 (isEmpty!37760 (tail!12426 s!2326)))))

(declare-fun d!2060956 () Bool)

(assert (=> d!2060956 e!3976175))

(declare-fun c!1207470 () Bool)

(assert (=> d!2060956 (= c!1207470 ((_ is EmptyExpr!16445) r!7292))))

(assert (=> d!2060956 (= lt!2408332 e!3976176)))

(declare-fun c!1207469 () Bool)

(assert (=> d!2060956 (= c!1207469 (isEmpty!37760 s!2326))))

(assert (=> d!2060956 (validRegex!8181 r!7292)))

(assert (=> d!2060956 (= (matchR!8628 r!7292 s!2326) lt!2408332)))

(declare-fun b!6568947 () Bool)

(assert (=> b!6568947 (= e!3976174 e!3976178)))

(declare-fun res!2695861 () Bool)

(assert (=> b!6568947 (=> (not res!2695861) (not e!3976178))))

(assert (=> b!6568947 (= res!2695861 (not lt!2408332))))

(declare-fun b!6568948 () Bool)

(assert (=> b!6568948 (= e!3976172 (= (head!13340 s!2326) (c!1207368 r!7292)))))

(assert (= (and d!2060956 c!1207469) b!6568940))

(assert (= (and d!2060956 (not c!1207469)) b!6568945))

(assert (= (and d!2060956 c!1207470) b!6568935))

(assert (= (and d!2060956 (not c!1207470)) b!6568939))

(assert (= (and b!6568939 c!1207468) b!6568942))

(assert (= (and b!6568939 (not c!1207468)) b!6568944))

(assert (= (and b!6568944 (not res!2695866)) b!6568941))

(assert (= (and b!6568941 res!2695860) b!6568946))

(assert (= (and b!6568946 res!2695865) b!6568938))

(assert (= (and b!6568938 res!2695859) b!6568948))

(assert (= (and b!6568941 (not res!2695863)) b!6568947))

(assert (= (and b!6568947 res!2695861) b!6568943))

(assert (= (and b!6568943 (not res!2695864)) b!6568936))

(assert (= (and b!6568936 (not res!2695862)) b!6568937))

(assert (= (or b!6568935 b!6568946 b!6568943) bm!571508))

(assert (=> b!6568936 m!7350894))

(assert (=> b!6568936 m!7350894))

(assert (=> b!6568936 m!7350896))

(assert (=> b!6568945 m!7350898))

(assert (=> b!6568945 m!7350898))

(declare-fun m!7351078 () Bool)

(assert (=> b!6568945 m!7351078))

(assert (=> b!6568945 m!7350894))

(assert (=> b!6568945 m!7351078))

(assert (=> b!6568945 m!7350894))

(declare-fun m!7351080 () Bool)

(assert (=> b!6568945 m!7351080))

(declare-fun m!7351082 () Bool)

(assert (=> b!6568940 m!7351082))

(assert (=> b!6568937 m!7350898))

(assert (=> d!2060956 m!7350906))

(assert (=> d!2060956 m!7350808))

(assert (=> b!6568938 m!7350894))

(assert (=> b!6568938 m!7350894))

(assert (=> b!6568938 m!7350896))

(assert (=> bm!571508 m!7350906))

(assert (=> b!6568948 m!7350898))

(assert (=> b!6568601 d!2060956))

(declare-fun d!2060960 () Bool)

(assert (=> d!2060960 (= (matchR!8628 r!7292 s!2326) (matchRSpec!3546 r!7292 s!2326))))

(declare-fun lt!2408333 () Unit!159115)

(assert (=> d!2060960 (= lt!2408333 (choose!49062 r!7292 s!2326))))

(assert (=> d!2060960 (validRegex!8181 r!7292)))

(assert (=> d!2060960 (= (mainMatchTheorem!3546 r!7292 s!2326) lt!2408333)))

(declare-fun bs!1677842 () Bool)

(assert (= bs!1677842 d!2060960))

(assert (=> bs!1677842 m!7350768))

(assert (=> bs!1677842 m!7350766))

(declare-fun m!7351084 () Bool)

(assert (=> bs!1677842 m!7351084))

(assert (=> bs!1677842 m!7350808))

(assert (=> b!6568601 d!2060960))

(declare-fun d!2060962 () Bool)

(assert (=> d!2060962 (= (isEmpty!37758 (t!379279 zl!343)) ((_ is Nil!65511) (t!379279 zl!343)))))

(assert (=> b!6568622 d!2060962))

(assert (=> b!6568623 d!2060914))

(declare-fun d!2060964 () Bool)

(assert (=> d!2060964 (= (flatMap!1950 lt!2408291 lambda!365735) (choose!49067 lt!2408291 lambda!365735))))

(declare-fun bs!1677843 () Bool)

(assert (= bs!1677843 d!2060964))

(declare-fun m!7351086 () Bool)

(assert (=> bs!1677843 m!7351086))

(assert (=> b!6568603 d!2060964))

(declare-fun b!6568954 () Bool)

(declare-fun e!3976183 () (InoxSet Context!11658))

(declare-fun call!571515 () (InoxSet Context!11658))

(assert (=> b!6568954 (= e!3976183 call!571515)))

(declare-fun b!6568956 () Bool)

(assert (=> b!6568956 (= e!3976183 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571510 () Bool)

(assert (=> bm!571510 (= call!571515 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408292)) (Context!11659 (t!379278 (exprs!6329 lt!2408292))) (h!71960 s!2326)))))

(declare-fun b!6568957 () Bool)

(declare-fun e!3976182 () (InoxSet Context!11658))

(assert (=> b!6568957 (= e!3976182 e!3976183)))

(declare-fun c!1207473 () Bool)

(assert (=> b!6568957 (= c!1207473 ((_ is Cons!65510) (exprs!6329 lt!2408292)))))

(declare-fun b!6568958 () Bool)

(assert (=> b!6568958 (= e!3976182 ((_ map or) call!571515 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408292))) (h!71960 s!2326))))))

(declare-fun b!6568955 () Bool)

(declare-fun e!3976184 () Bool)

(assert (=> b!6568955 (= e!3976184 (nullable!6438 (h!71958 (exprs!6329 lt!2408292))))))

(declare-fun d!2060966 () Bool)

(declare-fun c!1207474 () Bool)

(assert (=> d!2060966 (= c!1207474 e!3976184)))

(declare-fun res!2695868 () Bool)

(assert (=> d!2060966 (=> (not res!2695868) (not e!3976184))))

(assert (=> d!2060966 (= res!2695868 ((_ is Cons!65510) (exprs!6329 lt!2408292)))))

(assert (=> d!2060966 (= (derivationStepZipperUp!1619 lt!2408292 (h!71960 s!2326)) e!3976182)))

(assert (= (and d!2060966 res!2695868) b!6568955))

(assert (= (and d!2060966 c!1207474) b!6568958))

(assert (= (and d!2060966 (not c!1207474)) b!6568957))

(assert (= (and b!6568957 c!1207473) b!6568954))

(assert (= (and b!6568957 (not c!1207473)) b!6568956))

(assert (= (or b!6568958 b!6568954) bm!571510))

(declare-fun m!7351088 () Bool)

(assert (=> bm!571510 m!7351088))

(declare-fun m!7351090 () Bool)

(assert (=> b!6568958 m!7351090))

(declare-fun m!7351092 () Bool)

(assert (=> b!6568955 m!7351092))

(assert (=> b!6568603 d!2060966))

(declare-fun d!2060968 () Bool)

(assert (=> d!2060968 (= (flatMap!1950 lt!2408291 lambda!365735) (dynLambda!26063 lambda!365735 lt!2408292))))

(declare-fun lt!2408336 () Unit!159115)

(assert (=> d!2060968 (= lt!2408336 (choose!49066 lt!2408291 lt!2408292 lambda!365735))))

(assert (=> d!2060968 (= lt!2408291 (store ((as const (Array Context!11658 Bool)) false) lt!2408292 true))))

(assert (=> d!2060968 (= (lemmaFlatMapOnSingletonSet!1476 lt!2408291 lt!2408292 lambda!365735) lt!2408336)))

(declare-fun b_lambda!248421 () Bool)

(assert (=> (not b_lambda!248421) (not d!2060968)))

(declare-fun bs!1677844 () Bool)

(assert (= bs!1677844 d!2060968))

(assert (=> bs!1677844 m!7350838))

(declare-fun m!7351094 () Bool)

(assert (=> bs!1677844 m!7351094))

(declare-fun m!7351096 () Bool)

(assert (=> bs!1677844 m!7351096))

(assert (=> bs!1677844 m!7350836))

(assert (=> b!6568603 d!2060968))

(declare-fun bs!1677846 () Bool)

(declare-fun d!2060970 () Bool)

(assert (= bs!1677846 (and d!2060970 b!6568635)))

(declare-fun lambda!365764 () Int)

(assert (=> bs!1677846 (= lambda!365764 lambda!365735)))

(assert (=> d!2060970 true))

(assert (=> d!2060970 (= (derivationStepZipper!2411 lt!2408291 (h!71960 s!2326)) (flatMap!1950 lt!2408291 lambda!365764))))

(declare-fun bs!1677847 () Bool)

(assert (= bs!1677847 d!2060970))

(declare-fun m!7351120 () Bool)

(assert (=> bs!1677847 m!7351120))

(assert (=> b!6568603 d!2060970))

(declare-fun d!2060980 () Bool)

(assert (=> d!2060980 (= (isEmpty!37757 (t!379278 (exprs!6329 (h!71959 zl!343)))) ((_ is Nil!65510) (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6568604 d!2060980))

(declare-fun d!2060982 () Bool)

(declare-fun e!3976194 () Bool)

(assert (=> d!2060982 e!3976194))

(declare-fun res!2695873 () Bool)

(assert (=> d!2060982 (=> (not res!2695873) (not e!3976194))))

(declare-fun lt!2408340 () List!65635)

(declare-fun noDuplicate!2249 (List!65635) Bool)

(assert (=> d!2060982 (= res!2695873 (noDuplicate!2249 lt!2408340))))

(declare-fun choose!49070 ((InoxSet Context!11658)) List!65635)

(assert (=> d!2060982 (= lt!2408340 (choose!49070 z!1189))))

(assert (=> d!2060982 (= (toList!10229 z!1189) lt!2408340)))

(declare-fun b!6568975 () Bool)

(declare-fun content!12613 (List!65635) (InoxSet Context!11658))

(assert (=> b!6568975 (= e!3976194 (= (content!12613 lt!2408340) z!1189))))

(assert (= (and d!2060982 res!2695873) b!6568975))

(declare-fun m!7351126 () Bool)

(assert (=> d!2060982 m!7351126))

(declare-fun m!7351128 () Bool)

(assert (=> d!2060982 m!7351128))

(declare-fun m!7351130 () Bool)

(assert (=> b!6568975 m!7351130))

(assert (=> b!6568624 d!2060982))

(declare-fun d!2060988 () Bool)

(declare-fun nullableFct!2364 (Regex!16445) Bool)

(assert (=> d!2060988 (= (nullable!6438 (regOne!33402 (regOne!33402 r!7292))) (nullableFct!2364 (regOne!33402 (regOne!33402 r!7292))))))

(declare-fun bs!1677855 () Bool)

(assert (= bs!1677855 d!2060988))

(declare-fun m!7351132 () Bool)

(assert (=> bs!1677855 m!7351132))

(assert (=> b!6568625 d!2060988))

(declare-fun bs!1677856 () Bool)

(declare-fun d!2060990 () Bool)

(assert (= bs!1677856 (and d!2060990 d!2060886)))

(declare-fun lambda!365769 () Int)

(assert (=> bs!1677856 (= lambda!365769 lambda!365738)))

(assert (=> d!2060990 (= (inv!84359 (h!71959 zl!343)) (forall!15616 (exprs!6329 (h!71959 zl!343)) lambda!365769))))

(declare-fun bs!1677857 () Bool)

(assert (= bs!1677857 d!2060990))

(declare-fun m!7351134 () Bool)

(assert (=> bs!1677857 m!7351134))

(assert (=> b!6568597 d!2060990))

(declare-fun bs!1677858 () Bool)

(declare-fun d!2060992 () Bool)

(assert (= bs!1677858 (and d!2060992 d!2060886)))

(declare-fun lambda!365772 () Int)

(assert (=> bs!1677858 (= lambda!365772 lambda!365738)))

(declare-fun bs!1677859 () Bool)

(assert (= bs!1677859 (and d!2060992 d!2060990)))

(assert (=> bs!1677859 (= lambda!365772 lambda!365769)))

(declare-fun b!6569007 () Bool)

(declare-fun e!3976218 () Bool)

(declare-fun lt!2408348 () Regex!16445)

(declare-fun head!13342 (List!65634) Regex!16445)

(assert (=> b!6569007 (= e!3976218 (= lt!2408348 (head!13342 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569008 () Bool)

(declare-fun e!3976216 () Bool)

(assert (=> b!6569008 (= e!3976216 (isEmpty!37757 (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569009 () Bool)

(declare-fun e!3976214 () Regex!16445)

(assert (=> b!6569009 (= e!3976214 (Concat!25290 (h!71958 (exprs!6329 (h!71959 zl!343))) (generalisedConcat!2042 (t!379278 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun e!3976215 () Bool)

(assert (=> d!2060992 e!3976215))

(declare-fun res!2695881 () Bool)

(assert (=> d!2060992 (=> (not res!2695881) (not e!3976215))))

(assert (=> d!2060992 (= res!2695881 (validRegex!8181 lt!2408348))))

(declare-fun e!3976213 () Regex!16445)

(assert (=> d!2060992 (= lt!2408348 e!3976213)))

(declare-fun c!1207495 () Bool)

(assert (=> d!2060992 (= c!1207495 e!3976216)))

(declare-fun res!2695882 () Bool)

(assert (=> d!2060992 (=> (not res!2695882) (not e!3976216))))

(assert (=> d!2060992 (= res!2695882 ((_ is Cons!65510) (exprs!6329 (h!71959 zl!343))))))

(assert (=> d!2060992 (forall!15616 (exprs!6329 (h!71959 zl!343)) lambda!365772)))

(assert (=> d!2060992 (= (generalisedConcat!2042 (exprs!6329 (h!71959 zl!343))) lt!2408348)))

(declare-fun b!6569010 () Bool)

(assert (=> b!6569010 (= e!3976213 e!3976214)))

(declare-fun c!1207494 () Bool)

(assert (=> b!6569010 (= c!1207494 ((_ is Cons!65510) (exprs!6329 (h!71959 zl!343))))))

(declare-fun b!6569011 () Bool)

(declare-fun e!3976217 () Bool)

(assert (=> b!6569011 (= e!3976217 e!3976218)))

(declare-fun c!1207493 () Bool)

(declare-fun tail!12427 (List!65634) List!65634)

(assert (=> b!6569011 (= c!1207493 (isEmpty!37757 (tail!12427 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569012 () Bool)

(declare-fun isEmptyExpr!1822 (Regex!16445) Bool)

(assert (=> b!6569012 (= e!3976217 (isEmptyExpr!1822 lt!2408348))))

(declare-fun b!6569013 () Bool)

(declare-fun isConcat!1345 (Regex!16445) Bool)

(assert (=> b!6569013 (= e!3976218 (isConcat!1345 lt!2408348))))

(declare-fun b!6569014 () Bool)

(assert (=> b!6569014 (= e!3976213 (h!71958 (exprs!6329 (h!71959 zl!343))))))

(declare-fun b!6569015 () Bool)

(assert (=> b!6569015 (= e!3976215 e!3976217)))

(declare-fun c!1207496 () Bool)

(assert (=> b!6569015 (= c!1207496 (isEmpty!37757 (exprs!6329 (h!71959 zl!343))))))

(declare-fun b!6569016 () Bool)

(assert (=> b!6569016 (= e!3976214 EmptyExpr!16445)))

(assert (= (and d!2060992 res!2695882) b!6569008))

(assert (= (and d!2060992 c!1207495) b!6569014))

(assert (= (and d!2060992 (not c!1207495)) b!6569010))

(assert (= (and b!6569010 c!1207494) b!6569009))

(assert (= (and b!6569010 (not c!1207494)) b!6569016))

(assert (= (and d!2060992 res!2695881) b!6569015))

(assert (= (and b!6569015 c!1207496) b!6569012))

(assert (= (and b!6569015 (not c!1207496)) b!6569011))

(assert (= (and b!6569011 c!1207493) b!6569007))

(assert (= (and b!6569011 (not c!1207493)) b!6569013))

(assert (=> b!6569008 m!7350764))

(declare-fun m!7351144 () Bool)

(assert (=> b!6569012 m!7351144))

(declare-fun m!7351146 () Bool)

(assert (=> d!2060992 m!7351146))

(declare-fun m!7351148 () Bool)

(assert (=> d!2060992 m!7351148))

(declare-fun m!7351150 () Bool)

(assert (=> b!6569011 m!7351150))

(assert (=> b!6569011 m!7351150))

(declare-fun m!7351152 () Bool)

(assert (=> b!6569011 m!7351152))

(declare-fun m!7351154 () Bool)

(assert (=> b!6569009 m!7351154))

(declare-fun m!7351156 () Bool)

(assert (=> b!6569013 m!7351156))

(declare-fun m!7351158 () Bool)

(assert (=> b!6569015 m!7351158))

(declare-fun m!7351160 () Bool)

(assert (=> b!6569007 m!7351160))

(assert (=> b!6568599 d!2060992))

(declare-fun bs!1677860 () Bool)

(declare-fun d!2060998 () Bool)

(assert (= bs!1677860 (and d!2060998 d!2060886)))

(declare-fun lambda!365773 () Int)

(assert (=> bs!1677860 (= lambda!365773 lambda!365738)))

(declare-fun bs!1677861 () Bool)

(assert (= bs!1677861 (and d!2060998 d!2060990)))

(assert (=> bs!1677861 (= lambda!365773 lambda!365769)))

(declare-fun bs!1677862 () Bool)

(assert (= bs!1677862 (and d!2060998 d!2060992)))

(assert (=> bs!1677862 (= lambda!365773 lambda!365772)))

(assert (=> d!2060998 (= (inv!84359 lt!2408279) (forall!15616 (exprs!6329 lt!2408279) lambda!365773))))

(declare-fun bs!1677863 () Bool)

(assert (= bs!1677863 d!2060998))

(declare-fun m!7351162 () Bool)

(assert (=> bs!1677863 m!7351162))

(assert (=> b!6568618 d!2060998))

(assert (=> b!6568600 d!2060938))

(declare-fun d!2061000 () Bool)

(declare-fun lt!2408349 () Regex!16445)

(assert (=> d!2061000 (validRegex!8181 lt!2408349)))

(assert (=> d!2061000 (= lt!2408349 (generalisedUnion!2289 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))))))

(assert (=> d!2061000 (= (unfocusZipper!2187 (Cons!65511 lt!2408267 Nil!65511)) lt!2408349)))

(declare-fun bs!1677864 () Bool)

(assert (= bs!1677864 d!2061000))

(declare-fun m!7351164 () Bool)

(assert (=> bs!1677864 m!7351164))

(declare-fun m!7351166 () Bool)

(assert (=> bs!1677864 m!7351166))

(assert (=> bs!1677864 m!7351166))

(declare-fun m!7351168 () Bool)

(assert (=> bs!1677864 m!7351168))

(assert (=> b!6568611 d!2061000))

(declare-fun bs!1677865 () Bool)

(declare-fun d!2061002 () Bool)

(assert (= bs!1677865 (and d!2061002 d!2060886)))

(declare-fun lambda!365776 () Int)

(assert (=> bs!1677865 (= lambda!365776 lambda!365738)))

(declare-fun bs!1677866 () Bool)

(assert (= bs!1677866 (and d!2061002 d!2060990)))

(assert (=> bs!1677866 (= lambda!365776 lambda!365769)))

(declare-fun bs!1677867 () Bool)

(assert (= bs!1677867 (and d!2061002 d!2060992)))

(assert (=> bs!1677867 (= lambda!365776 lambda!365772)))

(declare-fun bs!1677868 () Bool)

(assert (= bs!1677868 (and d!2061002 d!2060998)))

(assert (=> bs!1677868 (= lambda!365776 lambda!365773)))

(declare-fun b!6569073 () Bool)

(declare-fun e!3976251 () Regex!16445)

(declare-fun e!3976253 () Regex!16445)

(assert (=> b!6569073 (= e!3976251 e!3976253)))

(declare-fun c!1207512 () Bool)

(assert (=> b!6569073 (= c!1207512 ((_ is Cons!65510) (unfocusZipperList!1866 zl!343)))))

(declare-fun b!6569074 () Bool)

(assert (=> b!6569074 (= e!3976253 EmptyLang!16445)))

(declare-fun b!6569075 () Bool)

(declare-fun e!3976252 () Bool)

(declare-fun e!3976250 () Bool)

(assert (=> b!6569075 (= e!3976252 e!3976250)))

(declare-fun c!1207515 () Bool)

(assert (=> b!6569075 (= c!1207515 (isEmpty!37757 (unfocusZipperList!1866 zl!343)))))

(declare-fun b!6569076 () Bool)

(declare-fun lt!2408353 () Regex!16445)

(declare-fun isEmptyLang!1832 (Regex!16445) Bool)

(assert (=> b!6569076 (= e!3976250 (isEmptyLang!1832 lt!2408353))))

(declare-fun b!6569077 () Bool)

(declare-fun e!3976254 () Bool)

(assert (=> b!6569077 (= e!3976250 e!3976254)))

(declare-fun c!1207514 () Bool)

(assert (=> b!6569077 (= c!1207514 (isEmpty!37757 (tail!12427 (unfocusZipperList!1866 zl!343))))))

(assert (=> d!2061002 e!3976252))

(declare-fun res!2695911 () Bool)

(assert (=> d!2061002 (=> (not res!2695911) (not e!3976252))))

(assert (=> d!2061002 (= res!2695911 (validRegex!8181 lt!2408353))))

(assert (=> d!2061002 (= lt!2408353 e!3976251)))

(declare-fun c!1207513 () Bool)

(declare-fun e!3976255 () Bool)

(assert (=> d!2061002 (= c!1207513 e!3976255)))

(declare-fun res!2695912 () Bool)

(assert (=> d!2061002 (=> (not res!2695912) (not e!3976255))))

(assert (=> d!2061002 (= res!2695912 ((_ is Cons!65510) (unfocusZipperList!1866 zl!343)))))

(assert (=> d!2061002 (forall!15616 (unfocusZipperList!1866 zl!343) lambda!365776)))

(assert (=> d!2061002 (= (generalisedUnion!2289 (unfocusZipperList!1866 zl!343)) lt!2408353)))

(declare-fun b!6569078 () Bool)

(assert (=> b!6569078 (= e!3976254 (= lt!2408353 (head!13342 (unfocusZipperList!1866 zl!343))))))

(declare-fun b!6569079 () Bool)

(declare-fun isUnion!1262 (Regex!16445) Bool)

(assert (=> b!6569079 (= e!3976254 (isUnion!1262 lt!2408353))))

(declare-fun b!6569080 () Bool)

(assert (=> b!6569080 (= e!3976251 (h!71958 (unfocusZipperList!1866 zl!343)))))

(declare-fun b!6569081 () Bool)

(assert (=> b!6569081 (= e!3976253 (Union!16445 (h!71958 (unfocusZipperList!1866 zl!343)) (generalisedUnion!2289 (t!379278 (unfocusZipperList!1866 zl!343)))))))

(declare-fun b!6569082 () Bool)

(assert (=> b!6569082 (= e!3976255 (isEmpty!37757 (t!379278 (unfocusZipperList!1866 zl!343))))))

(assert (= (and d!2061002 res!2695912) b!6569082))

(assert (= (and d!2061002 c!1207513) b!6569080))

(assert (= (and d!2061002 (not c!1207513)) b!6569073))

(assert (= (and b!6569073 c!1207512) b!6569081))

(assert (= (and b!6569073 (not c!1207512)) b!6569074))

(assert (= (and d!2061002 res!2695911) b!6569075))

(assert (= (and b!6569075 c!1207515) b!6569076))

(assert (= (and b!6569075 (not c!1207515)) b!6569077))

(assert (= (and b!6569077 c!1207514) b!6569078))

(assert (= (and b!6569077 (not c!1207514)) b!6569079))

(declare-fun m!7351186 () Bool)

(assert (=> b!6569082 m!7351186))

(declare-fun m!7351188 () Bool)

(assert (=> b!6569081 m!7351188))

(declare-fun m!7351190 () Bool)

(assert (=> b!6569079 m!7351190))

(declare-fun m!7351192 () Bool)

(assert (=> b!6569076 m!7351192))

(assert (=> b!6569075 m!7350796))

(declare-fun m!7351194 () Bool)

(assert (=> b!6569075 m!7351194))

(assert (=> b!6569078 m!7350796))

(declare-fun m!7351196 () Bool)

(assert (=> b!6569078 m!7351196))

(assert (=> b!6569077 m!7350796))

(declare-fun m!7351198 () Bool)

(assert (=> b!6569077 m!7351198))

(assert (=> b!6569077 m!7351198))

(declare-fun m!7351200 () Bool)

(assert (=> b!6569077 m!7351200))

(declare-fun m!7351202 () Bool)

(assert (=> d!2061002 m!7351202))

(assert (=> d!2061002 m!7350796))

(declare-fun m!7351204 () Bool)

(assert (=> d!2061002 m!7351204))

(assert (=> b!6568632 d!2061002))

(declare-fun bs!1677869 () Bool)

(declare-fun d!2061006 () Bool)

(assert (= bs!1677869 (and d!2061006 d!2060886)))

(declare-fun lambda!365783 () Int)

(assert (=> bs!1677869 (= lambda!365783 lambda!365738)))

(declare-fun bs!1677870 () Bool)

(assert (= bs!1677870 (and d!2061006 d!2060990)))

(assert (=> bs!1677870 (= lambda!365783 lambda!365769)))

(declare-fun bs!1677871 () Bool)

(assert (= bs!1677871 (and d!2061006 d!2060998)))

(assert (=> bs!1677871 (= lambda!365783 lambda!365773)))

(declare-fun bs!1677872 () Bool)

(assert (= bs!1677872 (and d!2061006 d!2060992)))

(assert (=> bs!1677872 (= lambda!365783 lambda!365772)))

(declare-fun bs!1677873 () Bool)

(assert (= bs!1677873 (and d!2061006 d!2061002)))

(assert (=> bs!1677873 (= lambda!365783 lambda!365776)))

(declare-fun lt!2408356 () List!65634)

(assert (=> d!2061006 (forall!15616 lt!2408356 lambda!365783)))

(declare-fun e!3976276 () List!65634)

(assert (=> d!2061006 (= lt!2408356 e!3976276)))

(declare-fun c!1207526 () Bool)

(assert (=> d!2061006 (= c!1207526 ((_ is Cons!65511) zl!343))))

(assert (=> d!2061006 (= (unfocusZipperList!1866 zl!343) lt!2408356)))

(declare-fun b!6569119 () Bool)

(assert (=> b!6569119 (= e!3976276 (Cons!65510 (generalisedConcat!2042 (exprs!6329 (h!71959 zl!343))) (unfocusZipperList!1866 (t!379279 zl!343))))))

(declare-fun b!6569120 () Bool)

(assert (=> b!6569120 (= e!3976276 Nil!65510)))

(assert (= (and d!2061006 c!1207526) b!6569119))

(assert (= (and d!2061006 (not c!1207526)) b!6569120))

(declare-fun m!7351206 () Bool)

(assert (=> d!2061006 m!7351206))

(assert (=> b!6569119 m!7350814))

(declare-fun m!7351208 () Bool)

(assert (=> b!6569119 m!7351208))

(assert (=> b!6568632 d!2061006))

(declare-fun b!6569150 () Bool)

(declare-fun e!3976299 () Bool)

(declare-fun call!571535 () Bool)

(assert (=> b!6569150 (= e!3976299 call!571535)))

(declare-fun bm!571528 () Bool)

(declare-fun call!571534 () Bool)

(declare-fun c!1207535 () Bool)

(assert (=> bm!571528 (= call!571534 (validRegex!8181 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))))))

(declare-fun b!6569152 () Bool)

(declare-fun e!3976304 () Bool)

(declare-fun e!3976298 () Bool)

(assert (=> b!6569152 (= e!3976304 e!3976298)))

(assert (=> b!6569152 (= c!1207535 ((_ is Union!16445) r!7292))))

(declare-fun b!6569153 () Bool)

(declare-fun e!3976302 () Bool)

(declare-fun call!571533 () Bool)

(assert (=> b!6569153 (= e!3976302 call!571533)))

(declare-fun b!6569154 () Bool)

(declare-fun e!3976301 () Bool)

(assert (=> b!6569154 (= e!3976301 call!571535)))

(declare-fun b!6569155 () Bool)

(assert (=> b!6569155 (= e!3976304 e!3976302)))

(declare-fun res!2695946 () Bool)

(assert (=> b!6569155 (= res!2695946 (not (nullable!6438 (reg!16774 r!7292))))))

(assert (=> b!6569155 (=> (not res!2695946) (not e!3976302))))

(declare-fun c!1207536 () Bool)

(declare-fun bm!571529 () Bool)

(assert (=> bm!571529 (= call!571533 (validRegex!8181 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))))))

(declare-fun b!6569151 () Bool)

(declare-fun res!2695942 () Bool)

(assert (=> b!6569151 (=> (not res!2695942) (not e!3976301))))

(assert (=> b!6569151 (= res!2695942 call!571534)))

(assert (=> b!6569151 (= e!3976298 e!3976301)))

(declare-fun d!2061008 () Bool)

(declare-fun res!2695943 () Bool)

(declare-fun e!3976300 () Bool)

(assert (=> d!2061008 (=> res!2695943 e!3976300)))

(assert (=> d!2061008 (= res!2695943 ((_ is ElementMatch!16445) r!7292))))

(assert (=> d!2061008 (= (validRegex!8181 r!7292) e!3976300)))

(declare-fun b!6569156 () Bool)

(declare-fun res!2695945 () Bool)

(declare-fun e!3976303 () Bool)

(assert (=> b!6569156 (=> res!2695945 e!3976303)))

(assert (=> b!6569156 (= res!2695945 (not ((_ is Concat!25290) r!7292)))))

(assert (=> b!6569156 (= e!3976298 e!3976303)))

(declare-fun b!6569157 () Bool)

(assert (=> b!6569157 (= e!3976300 e!3976304)))

(assert (=> b!6569157 (= c!1207536 ((_ is Star!16445) r!7292))))

(declare-fun bm!571530 () Bool)

(assert (=> bm!571530 (= call!571535 call!571533)))

(declare-fun b!6569158 () Bool)

(assert (=> b!6569158 (= e!3976303 e!3976299)))

(declare-fun res!2695944 () Bool)

(assert (=> b!6569158 (=> (not res!2695944) (not e!3976299))))

(assert (=> b!6569158 (= res!2695944 call!571534)))

(assert (= (and d!2061008 (not res!2695943)) b!6569157))

(assert (= (and b!6569157 c!1207536) b!6569155))

(assert (= (and b!6569157 (not c!1207536)) b!6569152))

(assert (= (and b!6569155 res!2695946) b!6569153))

(assert (= (and b!6569152 c!1207535) b!6569151))

(assert (= (and b!6569152 (not c!1207535)) b!6569156))

(assert (= (and b!6569151 res!2695942) b!6569154))

(assert (= (and b!6569156 (not res!2695945)) b!6569158))

(assert (= (and b!6569158 res!2695944) b!6569150))

(assert (= (or b!6569154 b!6569150) bm!571530))

(assert (= (or b!6569151 b!6569158) bm!571528))

(assert (= (or b!6569153 bm!571530) bm!571529))

(declare-fun m!7351210 () Bool)

(assert (=> bm!571528 m!7351210))

(declare-fun m!7351212 () Bool)

(assert (=> b!6569155 m!7351212))

(declare-fun m!7351214 () Bool)

(assert (=> bm!571529 m!7351214))

(assert (=> start!643626 d!2061008))

(declare-fun d!2061010 () Bool)

(assert (=> d!2061010 (= (flatMap!1950 z!1189 lambda!365735) (dynLambda!26063 lambda!365735 (h!71959 zl!343)))))

(declare-fun lt!2408357 () Unit!159115)

(assert (=> d!2061010 (= lt!2408357 (choose!49066 z!1189 (h!71959 zl!343) lambda!365735))))

(assert (=> d!2061010 (= z!1189 (store ((as const (Array Context!11658 Bool)) false) (h!71959 zl!343) true))))

(assert (=> d!2061010 (= (lemmaFlatMapOnSingletonSet!1476 z!1189 (h!71959 zl!343) lambda!365735) lt!2408357)))

(declare-fun b_lambda!248425 () Bool)

(assert (=> (not b_lambda!248425) (not d!2061010)))

(declare-fun bs!1677881 () Bool)

(assert (= bs!1677881 d!2061010))

(assert (=> bs!1677881 m!7350832))

(declare-fun m!7351216 () Bool)

(assert (=> bs!1677881 m!7351216))

(declare-fun m!7351218 () Bool)

(assert (=> bs!1677881 m!7351218))

(declare-fun m!7351220 () Bool)

(assert (=> bs!1677881 m!7351220))

(assert (=> b!6568635 d!2061010))

(declare-fun bm!571531 () Bool)

(declare-fun call!571538 () (InoxSet Context!11658))

(declare-fun call!571539 () (InoxSet Context!11658))

(assert (=> bm!571531 (= call!571538 call!571539)))

(declare-fun c!1207541 () Bool)

(declare-fun bm!571532 () Bool)

(declare-fun call!571536 () (InoxSet Context!11658))

(declare-fun call!571540 () List!65634)

(assert (=> bm!571532 (= call!571536 (derivationStepZipperDown!1693 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))) (ite c!1207541 lt!2408279 (Context!11659 call!571540)) (h!71960 s!2326)))))

(declare-fun b!6569159 () Bool)

(declare-fun e!3976306 () (InoxSet Context!11658))

(assert (=> b!6569159 (= e!3976306 (store ((as const (Array Context!11658 Bool)) false) lt!2408279 true))))

(declare-fun bm!571533 () Bool)

(declare-fun call!571537 () List!65634)

(assert (=> bm!571533 (= call!571537 call!571540)))

(declare-fun b!6569161 () Bool)

(declare-fun e!3976307 () (InoxSet Context!11658))

(declare-fun e!3976310 () (InoxSet Context!11658))

(assert (=> b!6569161 (= e!3976307 e!3976310)))

(declare-fun c!1207540 () Bool)

(assert (=> b!6569161 (= c!1207540 ((_ is Concat!25290) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569162 () Bool)

(declare-fun e!3976309 () (InoxSet Context!11658))

(assert (=> b!6569162 (= e!3976309 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569163 () Bool)

(declare-fun e!3976305 () Bool)

(assert (=> b!6569163 (= e!3976305 (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun call!571541 () (InoxSet Context!11658))

(declare-fun c!1207538 () Bool)

(declare-fun bm!571534 () Bool)

(assert (=> bm!571534 (= call!571541 (derivationStepZipperDown!1693 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343))))))) (ite (or c!1207541 c!1207538) lt!2408279 (Context!11659 call!571537)) (h!71960 s!2326)))))

(declare-fun b!6569164 () Bool)

(assert (=> b!6569164 (= e!3976307 ((_ map or) call!571536 call!571539))))

(declare-fun b!6569165 () Bool)

(declare-fun c!1207537 () Bool)

(assert (=> b!6569165 (= c!1207537 ((_ is Star!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6569165 (= e!3976310 e!3976309)))

(declare-fun b!6569166 () Bool)

(declare-fun e!3976308 () (InoxSet Context!11658))

(assert (=> b!6569166 (= e!3976308 ((_ map or) call!571541 call!571536))))

(declare-fun bm!571535 () Bool)

(assert (=> bm!571535 (= call!571540 ($colon$colon!2286 (exprs!6329 lt!2408279) (ite (or c!1207538 c!1207540) (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (h!71958 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun b!6569160 () Bool)

(assert (=> b!6569160 (= e!3976306 e!3976308)))

(assert (=> b!6569160 (= c!1207541 ((_ is Union!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun d!2061012 () Bool)

(declare-fun c!1207539 () Bool)

(assert (=> d!2061012 (= c!1207539 (and ((_ is ElementMatch!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))) (= (c!1207368 (h!71958 (exprs!6329 (h!71959 zl!343)))) (h!71960 s!2326))))))

(assert (=> d!2061012 (= (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (h!71959 zl!343))) lt!2408279 (h!71960 s!2326)) e!3976306)))

(declare-fun b!6569167 () Bool)

(assert (=> b!6569167 (= e!3976310 call!571538)))

(declare-fun b!6569168 () Bool)

(assert (=> b!6569168 (= e!3976309 call!571538)))

(declare-fun b!6569169 () Bool)

(assert (=> b!6569169 (= c!1207538 e!3976305)))

(declare-fun res!2695947 () Bool)

(assert (=> b!6569169 (=> (not res!2695947) (not e!3976305))))

(assert (=> b!6569169 (= res!2695947 ((_ is Concat!25290) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6569169 (= e!3976308 e!3976307)))

(declare-fun bm!571536 () Bool)

(assert (=> bm!571536 (= call!571539 call!571541)))

(assert (= (and d!2061012 c!1207539) b!6569159))

(assert (= (and d!2061012 (not c!1207539)) b!6569160))

(assert (= (and b!6569160 c!1207541) b!6569166))

(assert (= (and b!6569160 (not c!1207541)) b!6569169))

(assert (= (and b!6569169 res!2695947) b!6569163))

(assert (= (and b!6569169 c!1207538) b!6569164))

(assert (= (and b!6569169 (not c!1207538)) b!6569161))

(assert (= (and b!6569161 c!1207540) b!6569167))

(assert (= (and b!6569161 (not c!1207540)) b!6569165))

(assert (= (and b!6569165 c!1207537) b!6569168))

(assert (= (and b!6569165 (not c!1207537)) b!6569162))

(assert (= (or b!6569167 b!6569168) bm!571533))

(assert (= (or b!6569167 b!6569168) bm!571531))

(assert (= (or b!6569164 bm!571533) bm!571535))

(assert (= (or b!6569164 bm!571531) bm!571536))

(assert (= (or b!6569166 b!6569164) bm!571532))

(assert (= (or b!6569166 bm!571536) bm!571534))

(declare-fun m!7351228 () Bool)

(assert (=> bm!571535 m!7351228))

(declare-fun m!7351230 () Bool)

(assert (=> b!6569159 m!7351230))

(declare-fun m!7351232 () Bool)

(assert (=> bm!571534 m!7351232))

(declare-fun m!7351234 () Bool)

(assert (=> bm!571532 m!7351234))

(declare-fun m!7351236 () Bool)

(assert (=> b!6569163 m!7351236))

(assert (=> b!6568635 d!2061012))

(declare-fun d!2061016 () Bool)

(assert (=> d!2061016 (= (nullable!6438 (h!71958 (exprs!6329 (h!71959 zl!343)))) (nullableFct!2364 (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun bs!1677882 () Bool)

(assert (= bs!1677882 d!2061016))

(declare-fun m!7351238 () Bool)

(assert (=> bs!1677882 m!7351238))

(assert (=> b!6568635 d!2061016))

(declare-fun b!6569170 () Bool)

(declare-fun e!3976312 () (InoxSet Context!11658))

(declare-fun call!571542 () (InoxSet Context!11658))

(assert (=> b!6569170 (= e!3976312 call!571542)))

(declare-fun b!6569172 () Bool)

(assert (=> b!6569172 (= e!3976312 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571537 () Bool)

(assert (=> bm!571537 (= call!571542 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (h!71960 s!2326)))))

(declare-fun b!6569173 () Bool)

(declare-fun e!3976311 () (InoxSet Context!11658))

(assert (=> b!6569173 (= e!3976311 e!3976312)))

(declare-fun c!1207542 () Bool)

(assert (=> b!6569173 (= c!1207542 ((_ is Cons!65510) (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))

(declare-fun b!6569174 () Bool)

(assert (=> b!6569174 (= e!3976311 ((_ map or) call!571542 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (h!71960 s!2326))))))

(declare-fun b!6569171 () Bool)

(declare-fun e!3976313 () Bool)

(assert (=> b!6569171 (= e!3976313 (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))

(declare-fun d!2061018 () Bool)

(declare-fun c!1207543 () Bool)

(assert (=> d!2061018 (= c!1207543 e!3976313)))

(declare-fun res!2695948 () Bool)

(assert (=> d!2061018 (=> (not res!2695948) (not e!3976313))))

(assert (=> d!2061018 (= res!2695948 ((_ is Cons!65510) (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))

(assert (=> d!2061018 (= (derivationStepZipperUp!1619 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))) (h!71960 s!2326)) e!3976311)))

(assert (= (and d!2061018 res!2695948) b!6569171))

(assert (= (and d!2061018 c!1207543) b!6569174))

(assert (= (and d!2061018 (not c!1207543)) b!6569173))

(assert (= (and b!6569173 c!1207542) b!6569170))

(assert (= (and b!6569173 (not c!1207542)) b!6569172))

(assert (= (or b!6569174 b!6569170) bm!571537))

(declare-fun m!7351240 () Bool)

(assert (=> bm!571537 m!7351240))

(declare-fun m!7351242 () Bool)

(assert (=> b!6569174 m!7351242))

(declare-fun m!7351244 () Bool)

(assert (=> b!6569171 m!7351244))

(assert (=> b!6568635 d!2061018))

(declare-fun d!2061020 () Bool)

(assert (=> d!2061020 (= (flatMap!1950 z!1189 lambda!365735) (choose!49067 z!1189 lambda!365735))))

(declare-fun bs!1677883 () Bool)

(assert (= bs!1677883 d!2061020))

(declare-fun m!7351246 () Bool)

(assert (=> bs!1677883 m!7351246))

(assert (=> b!6568635 d!2061020))

(declare-fun b!6569175 () Bool)

(declare-fun e!3976315 () (InoxSet Context!11658))

(declare-fun call!571543 () (InoxSet Context!11658))

(assert (=> b!6569175 (= e!3976315 call!571543)))

(declare-fun b!6569177 () Bool)

(assert (=> b!6569177 (= e!3976315 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571538 () Bool)

(assert (=> bm!571538 (= call!571543 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408279)) (Context!11659 (t!379278 (exprs!6329 lt!2408279))) (h!71960 s!2326)))))

(declare-fun b!6569178 () Bool)

(declare-fun e!3976314 () (InoxSet Context!11658))

(assert (=> b!6569178 (= e!3976314 e!3976315)))

(declare-fun c!1207544 () Bool)

(assert (=> b!6569178 (= c!1207544 ((_ is Cons!65510) (exprs!6329 lt!2408279)))))

(declare-fun b!6569179 () Bool)

(assert (=> b!6569179 (= e!3976314 ((_ map or) call!571543 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408279))) (h!71960 s!2326))))))

(declare-fun b!6569176 () Bool)

(declare-fun e!3976316 () Bool)

(assert (=> b!6569176 (= e!3976316 (nullable!6438 (h!71958 (exprs!6329 lt!2408279))))))

(declare-fun d!2061022 () Bool)

(declare-fun c!1207545 () Bool)

(assert (=> d!2061022 (= c!1207545 e!3976316)))

(declare-fun res!2695949 () Bool)

(assert (=> d!2061022 (=> (not res!2695949) (not e!3976316))))

(assert (=> d!2061022 (= res!2695949 ((_ is Cons!65510) (exprs!6329 lt!2408279)))))

(assert (=> d!2061022 (= (derivationStepZipperUp!1619 lt!2408279 (h!71960 s!2326)) e!3976314)))

(assert (= (and d!2061022 res!2695949) b!6569176))

(assert (= (and d!2061022 c!1207545) b!6569179))

(assert (= (and d!2061022 (not c!1207545)) b!6569178))

(assert (= (and b!6569178 c!1207544) b!6569175))

(assert (= (and b!6569178 (not c!1207544)) b!6569177))

(assert (= (or b!6569179 b!6569175) bm!571538))

(declare-fun m!7351248 () Bool)

(assert (=> bm!571538 m!7351248))

(declare-fun m!7351250 () Bool)

(assert (=> b!6569179 m!7351250))

(declare-fun m!7351252 () Bool)

(assert (=> b!6569176 m!7351252))

(assert (=> b!6568635 d!2061022))

(declare-fun b!6569180 () Bool)

(declare-fun e!3976318 () (InoxSet Context!11658))

(declare-fun call!571544 () (InoxSet Context!11658))

(assert (=> b!6569180 (= e!3976318 call!571544)))

(declare-fun b!6569182 () Bool)

(assert (=> b!6569182 (= e!3976318 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571539 () Bool)

(assert (=> bm!571539 (= call!571544 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (h!71959 zl!343))) (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))) (h!71960 s!2326)))))

(declare-fun b!6569183 () Bool)

(declare-fun e!3976317 () (InoxSet Context!11658))

(assert (=> b!6569183 (= e!3976317 e!3976318)))

(declare-fun c!1207546 () Bool)

(assert (=> b!6569183 (= c!1207546 ((_ is Cons!65510) (exprs!6329 (h!71959 zl!343))))))

(declare-fun b!6569184 () Bool)

(assert (=> b!6569184 (= e!3976317 ((_ map or) call!571544 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))) (h!71960 s!2326))))))

(declare-fun b!6569181 () Bool)

(declare-fun e!3976319 () Bool)

(assert (=> b!6569181 (= e!3976319 (nullable!6438 (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun d!2061024 () Bool)

(declare-fun c!1207547 () Bool)

(assert (=> d!2061024 (= c!1207547 e!3976319)))

(declare-fun res!2695950 () Bool)

(assert (=> d!2061024 (=> (not res!2695950) (not e!3976319))))

(assert (=> d!2061024 (= res!2695950 ((_ is Cons!65510) (exprs!6329 (h!71959 zl!343))))))

(assert (=> d!2061024 (= (derivationStepZipperUp!1619 (h!71959 zl!343) (h!71960 s!2326)) e!3976317)))

(assert (= (and d!2061024 res!2695950) b!6569181))

(assert (= (and d!2061024 c!1207547) b!6569184))

(assert (= (and d!2061024 (not c!1207547)) b!6569183))

(assert (= (and b!6569183 c!1207546) b!6569180))

(assert (= (and b!6569183 (not c!1207546)) b!6569182))

(assert (= (or b!6569184 b!6569180) bm!571539))

(declare-fun m!7351254 () Bool)

(assert (=> bm!571539 m!7351254))

(declare-fun m!7351256 () Bool)

(assert (=> b!6569184 m!7351256))

(assert (=> b!6569181 m!7350828))

(assert (=> b!6568635 d!2061024))

(declare-fun d!2061026 () Bool)

(declare-fun choose!49072 (Int) Bool)

(assert (=> d!2061026 (= (Exists!3515 lambda!365733) (choose!49072 lambda!365733))))

(declare-fun bs!1677886 () Bool)

(assert (= bs!1677886 d!2061026))

(declare-fun m!7351262 () Bool)

(assert (=> bs!1677886 m!7351262))

(assert (=> b!6568614 d!2061026))

(declare-fun b!6569255 () Bool)

(declare-fun e!3976370 () Bool)

(assert (=> b!6569255 (= e!3976370 (matchR!8628 (regTwo!33402 r!7292) s!2326))))

(declare-fun b!6569256 () Bool)

(declare-fun e!3976366 () Bool)

(declare-fun lt!2408375 () Option!16336)

(declare-fun ++!14591 (List!65636 List!65636) List!65636)

(declare-fun get!22749 (Option!16336) tuple2!66848)

(assert (=> b!6569256 (= e!3976366 (= (++!14591 (_1!36727 (get!22749 lt!2408375)) (_2!36727 (get!22749 lt!2408375))) s!2326))))

(declare-fun b!6569257 () Bool)

(declare-fun e!3976368 () Bool)

(assert (=> b!6569257 (= e!3976368 (not (isDefined!13039 lt!2408375)))))

(declare-fun b!6569258 () Bool)

(declare-fun res!2695982 () Bool)

(assert (=> b!6569258 (=> (not res!2695982) (not e!3976366))))

(assert (=> b!6569258 (= res!2695982 (matchR!8628 (regOne!33402 r!7292) (_1!36727 (get!22749 lt!2408375))))))

(declare-fun b!6569259 () Bool)

(declare-fun e!3976367 () Option!16336)

(assert (=> b!6569259 (= e!3976367 (Some!16335 (tuple2!66849 Nil!65512 s!2326)))))

(declare-fun b!6569261 () Bool)

(declare-fun lt!2408374 () Unit!159115)

(declare-fun lt!2408376 () Unit!159115)

(assert (=> b!6569261 (= lt!2408374 lt!2408376)))

(assert (=> b!6569261 (= (++!14591 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (t!379280 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2588 (List!65636 C!33160 List!65636 List!65636) Unit!159115)

(assert (=> b!6569261 (= lt!2408376 (lemmaMoveElementToOtherListKeepsConcatEq!2588 Nil!65512 (h!71960 s!2326) (t!379280 s!2326) s!2326))))

(declare-fun e!3976369 () Option!16336)

(assert (=> b!6569261 (= e!3976369 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (t!379280 s!2326) s!2326))))

(declare-fun b!6569262 () Bool)

(assert (=> b!6569262 (= e!3976369 None!16335)))

(declare-fun b!6569263 () Bool)

(assert (=> b!6569263 (= e!3976367 e!3976369)))

(declare-fun c!1207568 () Bool)

(assert (=> b!6569263 (= c!1207568 ((_ is Nil!65512) s!2326))))

(declare-fun d!2061032 () Bool)

(assert (=> d!2061032 e!3976368))

(declare-fun res!2695983 () Bool)

(assert (=> d!2061032 (=> res!2695983 e!3976368)))

(assert (=> d!2061032 (= res!2695983 e!3976366)))

(declare-fun res!2695984 () Bool)

(assert (=> d!2061032 (=> (not res!2695984) (not e!3976366))))

(assert (=> d!2061032 (= res!2695984 (isDefined!13039 lt!2408375))))

(assert (=> d!2061032 (= lt!2408375 e!3976367)))

(declare-fun c!1207569 () Bool)

(assert (=> d!2061032 (= c!1207569 e!3976370)))

(declare-fun res!2695981 () Bool)

(assert (=> d!2061032 (=> (not res!2695981) (not e!3976370))))

(assert (=> d!2061032 (= res!2695981 (matchR!8628 (regOne!33402 r!7292) Nil!65512))))

(assert (=> d!2061032 (validRegex!8181 (regOne!33402 r!7292))))

(assert (=> d!2061032 (= (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326) lt!2408375)))

(declare-fun b!6569260 () Bool)

(declare-fun res!2695985 () Bool)

(assert (=> b!6569260 (=> (not res!2695985) (not e!3976366))))

(assert (=> b!6569260 (= res!2695985 (matchR!8628 (regTwo!33402 r!7292) (_2!36727 (get!22749 lt!2408375))))))

(assert (= (and d!2061032 res!2695981) b!6569255))

(assert (= (and d!2061032 c!1207569) b!6569259))

(assert (= (and d!2061032 (not c!1207569)) b!6569263))

(assert (= (and b!6569263 c!1207568) b!6569262))

(assert (= (and b!6569263 (not c!1207568)) b!6569261))

(assert (= (and d!2061032 res!2695984) b!6569258))

(assert (= (and b!6569258 res!2695982) b!6569260))

(assert (= (and b!6569260 res!2695985) b!6569256))

(assert (= (and d!2061032 (not res!2695983)) b!6569257))

(declare-fun m!7351320 () Bool)

(assert (=> b!6569255 m!7351320))

(declare-fun m!7351322 () Bool)

(assert (=> b!6569258 m!7351322))

(declare-fun m!7351324 () Bool)

(assert (=> b!6569258 m!7351324))

(declare-fun m!7351326 () Bool)

(assert (=> b!6569257 m!7351326))

(assert (=> b!6569260 m!7351322))

(declare-fun m!7351332 () Bool)

(assert (=> b!6569260 m!7351332))

(assert (=> b!6569256 m!7351322))

(declare-fun m!7351336 () Bool)

(assert (=> b!6569256 m!7351336))

(declare-fun m!7351338 () Bool)

(assert (=> b!6569261 m!7351338))

(assert (=> b!6569261 m!7351338))

(declare-fun m!7351340 () Bool)

(assert (=> b!6569261 m!7351340))

(declare-fun m!7351342 () Bool)

(assert (=> b!6569261 m!7351342))

(assert (=> b!6569261 m!7351338))

(declare-fun m!7351344 () Bool)

(assert (=> b!6569261 m!7351344))

(assert (=> d!2061032 m!7351326))

(declare-fun m!7351346 () Bool)

(assert (=> d!2061032 m!7351346))

(declare-fun m!7351348 () Bool)

(assert (=> d!2061032 m!7351348))

(assert (=> b!6568614 d!2061032))

(declare-fun d!2061062 () Bool)

(assert (=> d!2061062 (= (Exists!3515 lambda!365734) (choose!49072 lambda!365734))))

(declare-fun bs!1677905 () Bool)

(assert (= bs!1677905 d!2061062))

(declare-fun m!7351350 () Bool)

(assert (=> bs!1677905 m!7351350))

(assert (=> b!6568614 d!2061062))

(declare-fun bs!1677912 () Bool)

(declare-fun d!2061064 () Bool)

(assert (= bs!1677912 (and d!2061064 b!6568921)))

(declare-fun lambda!365793 () Int)

(assert (=> bs!1677912 (not (= lambda!365793 lambda!365761))))

(declare-fun bs!1677913 () Bool)

(assert (= bs!1677913 (and d!2061064 b!6568784)))

(assert (=> bs!1677913 (not (= lambda!365793 lambda!365750))))

(declare-fun bs!1677914 () Bool)

(assert (= bs!1677914 (and d!2061064 b!6568923)))

(assert (=> bs!1677914 (not (= lambda!365793 lambda!365760))))

(declare-fun bs!1677915 () Bool)

(assert (= bs!1677915 (and d!2061064 b!6568614)))

(assert (=> bs!1677915 (not (= lambda!365793 lambda!365734))))

(declare-fun bs!1677917 () Bool)

(assert (= bs!1677917 (and d!2061064 b!6568786)))

(assert (=> bs!1677917 (not (= lambda!365793 lambda!365749))))

(assert (=> bs!1677915 (= lambda!365793 lambda!365733)))

(assert (=> d!2061064 true))

(assert (=> d!2061064 true))

(assert (=> d!2061064 true))

(assert (=> d!2061064 (= (isDefined!13039 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326)) (Exists!3515 lambda!365793))))

(declare-fun lt!2408386 () Unit!159115)

(declare-fun choose!49073 (Regex!16445 Regex!16445 List!65636) Unit!159115)

(assert (=> d!2061064 (= lt!2408386 (choose!49073 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326))))

(assert (=> d!2061064 (validRegex!8181 (regOne!33402 r!7292))))

(assert (=> d!2061064 (= (lemmaFindConcatSeparationEquivalentToExists!2514 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326) lt!2408386)))

(declare-fun bs!1677922 () Bool)

(assert (= bs!1677922 d!2061064))

(assert (=> bs!1677922 m!7350848))

(assert (=> bs!1677922 m!7350850))

(assert (=> bs!1677922 m!7351348))

(assert (=> bs!1677922 m!7350848))

(declare-fun m!7351396 () Bool)

(assert (=> bs!1677922 m!7351396))

(declare-fun m!7351398 () Bool)

(assert (=> bs!1677922 m!7351398))

(assert (=> b!6568614 d!2061064))

(declare-fun bs!1677928 () Bool)

(declare-fun d!2061088 () Bool)

(assert (= bs!1677928 (and d!2061088 b!6568921)))

(declare-fun lambda!365802 () Int)

(assert (=> bs!1677928 (not (= lambda!365802 lambda!365761))))

(declare-fun bs!1677929 () Bool)

(assert (= bs!1677929 (and d!2061088 b!6568784)))

(assert (=> bs!1677929 (not (= lambda!365802 lambda!365750))))

(declare-fun bs!1677930 () Bool)

(assert (= bs!1677930 (and d!2061088 b!6568923)))

(assert (=> bs!1677930 (not (= lambda!365802 lambda!365760))))

(declare-fun bs!1677931 () Bool)

(assert (= bs!1677931 (and d!2061088 b!6568614)))

(assert (=> bs!1677931 (not (= lambda!365802 lambda!365734))))

(declare-fun bs!1677932 () Bool)

(assert (= bs!1677932 (and d!2061088 b!6568786)))

(assert (=> bs!1677932 (not (= lambda!365802 lambda!365749))))

(declare-fun bs!1677933 () Bool)

(assert (= bs!1677933 (and d!2061088 d!2061064)))

(assert (=> bs!1677933 (= lambda!365802 lambda!365793)))

(assert (=> bs!1677931 (= lambda!365802 lambda!365733)))

(assert (=> d!2061088 true))

(assert (=> d!2061088 true))

(assert (=> d!2061088 true))

(declare-fun lambda!365803 () Int)

(assert (=> bs!1677928 (= lambda!365803 lambda!365761)))

(assert (=> bs!1677929 (= (and (= (regOne!33402 r!7292) (regOne!33402 lt!2408266)) (= (regTwo!33402 r!7292) (regTwo!33402 lt!2408266))) (= lambda!365803 lambda!365750))))

(assert (=> bs!1677930 (not (= lambda!365803 lambda!365760))))

(assert (=> bs!1677931 (= lambda!365803 lambda!365734)))

(declare-fun bs!1677934 () Bool)

(assert (= bs!1677934 d!2061088))

(assert (=> bs!1677934 (not (= lambda!365803 lambda!365802))))

(assert (=> bs!1677932 (not (= lambda!365803 lambda!365749))))

(assert (=> bs!1677933 (not (= lambda!365803 lambda!365793))))

(assert (=> bs!1677931 (not (= lambda!365803 lambda!365733))))

(assert (=> d!2061088 true))

(assert (=> d!2061088 true))

(assert (=> d!2061088 true))

(assert (=> d!2061088 (= (Exists!3515 lambda!365802) (Exists!3515 lambda!365803))))

(declare-fun lt!2408392 () Unit!159115)

(declare-fun choose!49074 (Regex!16445 Regex!16445 List!65636) Unit!159115)

(assert (=> d!2061088 (= lt!2408392 (choose!49074 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326))))

(assert (=> d!2061088 (validRegex!8181 (regOne!33402 r!7292))))

(assert (=> d!2061088 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2052 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326) lt!2408392)))

(declare-fun m!7351424 () Bool)

(assert (=> bs!1677934 m!7351424))

(declare-fun m!7351426 () Bool)

(assert (=> bs!1677934 m!7351426))

(declare-fun m!7351428 () Bool)

(assert (=> bs!1677934 m!7351428))

(assert (=> bs!1677934 m!7351348))

(assert (=> b!6568614 d!2061088))

(declare-fun d!2061092 () Bool)

(declare-fun isEmpty!37762 (Option!16336) Bool)

(assert (=> d!2061092 (= (isDefined!13039 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326)) (not (isEmpty!37762 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326))))))

(declare-fun bs!1677935 () Bool)

(assert (= bs!1677935 d!2061092))

(assert (=> bs!1677935 m!7350848))

(declare-fun m!7351430 () Bool)

(assert (=> bs!1677935 m!7351430))

(assert (=> b!6568614 d!2061092))

(declare-fun condSetEmpty!44852 () Bool)

(assert (=> setNonEmpty!44846 (= condSetEmpty!44852 (= setRest!44846 ((as const (Array Context!11658 Bool)) false)))))

(declare-fun setRes!44852 () Bool)

(assert (=> setNonEmpty!44846 (= tp!1813514 setRes!44852)))

(declare-fun setIsEmpty!44852 () Bool)

(assert (=> setIsEmpty!44852 setRes!44852))

(declare-fun setElem!44852 () Context!11658)

(declare-fun setNonEmpty!44852 () Bool)

(declare-fun e!3976438 () Bool)

(declare-fun tp!1813573 () Bool)

(assert (=> setNonEmpty!44852 (= setRes!44852 (and tp!1813573 (inv!84359 setElem!44852) e!3976438))))

(declare-fun setRest!44852 () (InoxSet Context!11658))

(assert (=> setNonEmpty!44852 (= setRest!44846 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) setElem!44852 true) setRest!44852))))

(declare-fun b!6569393 () Bool)

(declare-fun tp!1813572 () Bool)

(assert (=> b!6569393 (= e!3976438 tp!1813572)))

(assert (= (and setNonEmpty!44846 condSetEmpty!44852) setIsEmpty!44852))

(assert (= (and setNonEmpty!44846 (not condSetEmpty!44852)) setNonEmpty!44852))

(assert (= setNonEmpty!44852 b!6569393))

(declare-fun m!7351436 () Bool)

(assert (=> setNonEmpty!44852 m!7351436))

(declare-fun b!6569413 () Bool)

(declare-fun e!3976443 () Bool)

(declare-fun tp!1813596 () Bool)

(declare-fun tp!1813597 () Bool)

(assert (=> b!6569413 (= e!3976443 (and tp!1813596 tp!1813597))))

(assert (=> b!6568596 (= tp!1813512 e!3976443)))

(declare-fun b!6569412 () Bool)

(assert (=> b!6569412 (= e!3976443 tp_is_empty!42143)))

(declare-fun b!6569414 () Bool)

(declare-fun tp!1813595 () Bool)

(assert (=> b!6569414 (= e!3976443 tp!1813595)))

(declare-fun b!6569415 () Bool)

(declare-fun tp!1813598 () Bool)

(declare-fun tp!1813594 () Bool)

(assert (=> b!6569415 (= e!3976443 (and tp!1813598 tp!1813594))))

(assert (= (and b!6568596 ((_ is ElementMatch!16445) (reg!16774 r!7292))) b!6569412))

(assert (= (and b!6568596 ((_ is Concat!25290) (reg!16774 r!7292))) b!6569413))

(assert (= (and b!6568596 ((_ is Star!16445) (reg!16774 r!7292))) b!6569414))

(assert (= (and b!6568596 ((_ is Union!16445) (reg!16774 r!7292))) b!6569415))

(declare-fun b!6569423 () Bool)

(declare-fun e!3976449 () Bool)

(declare-fun tp!1813603 () Bool)

(assert (=> b!6569423 (= e!3976449 tp!1813603)))

(declare-fun tp!1813604 () Bool)

(declare-fun e!3976448 () Bool)

(declare-fun b!6569422 () Bool)

(assert (=> b!6569422 (= e!3976448 (and (inv!84359 (h!71959 (t!379279 zl!343))) e!3976449 tp!1813604))))

(assert (=> b!6568597 (= tp!1813511 e!3976448)))

(assert (= b!6569422 b!6569423))

(assert (= (and b!6568597 ((_ is Cons!65511) (t!379279 zl!343))) b!6569422))

(declare-fun m!7351438 () Bool)

(assert (=> b!6569422 m!7351438))

(declare-fun b!6569428 () Bool)

(declare-fun e!3976452 () Bool)

(declare-fun tp!1813609 () Bool)

(declare-fun tp!1813610 () Bool)

(assert (=> b!6569428 (= e!3976452 (and tp!1813609 tp!1813610))))

(assert (=> b!6568616 (= tp!1813516 e!3976452)))

(assert (= (and b!6568616 ((_ is Cons!65510) (exprs!6329 (h!71959 zl!343)))) b!6569428))

(declare-fun b!6569430 () Bool)

(declare-fun e!3976453 () Bool)

(declare-fun tp!1813613 () Bool)

(declare-fun tp!1813614 () Bool)

(assert (=> b!6569430 (= e!3976453 (and tp!1813613 tp!1813614))))

(assert (=> b!6568602 (= tp!1813518 e!3976453)))

(declare-fun b!6569429 () Bool)

(assert (=> b!6569429 (= e!3976453 tp_is_empty!42143)))

(declare-fun b!6569431 () Bool)

(declare-fun tp!1813612 () Bool)

(assert (=> b!6569431 (= e!3976453 tp!1813612)))

(declare-fun b!6569432 () Bool)

(declare-fun tp!1813615 () Bool)

(declare-fun tp!1813611 () Bool)

(assert (=> b!6569432 (= e!3976453 (and tp!1813615 tp!1813611))))

(assert (= (and b!6568602 ((_ is ElementMatch!16445) (regOne!33402 r!7292))) b!6569429))

(assert (= (and b!6568602 ((_ is Concat!25290) (regOne!33402 r!7292))) b!6569430))

(assert (= (and b!6568602 ((_ is Star!16445) (regOne!33402 r!7292))) b!6569431))

(assert (= (and b!6568602 ((_ is Union!16445) (regOne!33402 r!7292))) b!6569432))

(declare-fun b!6569434 () Bool)

(declare-fun e!3976454 () Bool)

(declare-fun tp!1813618 () Bool)

(declare-fun tp!1813619 () Bool)

(assert (=> b!6569434 (= e!3976454 (and tp!1813618 tp!1813619))))

(assert (=> b!6568602 (= tp!1813517 e!3976454)))

(declare-fun b!6569433 () Bool)

(assert (=> b!6569433 (= e!3976454 tp_is_empty!42143)))

(declare-fun b!6569435 () Bool)

(declare-fun tp!1813617 () Bool)

(assert (=> b!6569435 (= e!3976454 tp!1813617)))

(declare-fun b!6569436 () Bool)

(declare-fun tp!1813620 () Bool)

(declare-fun tp!1813616 () Bool)

(assert (=> b!6569436 (= e!3976454 (and tp!1813620 tp!1813616))))

(assert (= (and b!6568602 ((_ is ElementMatch!16445) (regTwo!33402 r!7292))) b!6569433))

(assert (= (and b!6568602 ((_ is Concat!25290) (regTwo!33402 r!7292))) b!6569434))

(assert (= (and b!6568602 ((_ is Star!16445) (regTwo!33402 r!7292))) b!6569435))

(assert (= (and b!6568602 ((_ is Union!16445) (regTwo!33402 r!7292))) b!6569436))

(declare-fun b!6569437 () Bool)

(declare-fun e!3976455 () Bool)

(declare-fun tp!1813621 () Bool)

(declare-fun tp!1813622 () Bool)

(assert (=> b!6569437 (= e!3976455 (and tp!1813621 tp!1813622))))

(assert (=> b!6568612 (= tp!1813519 e!3976455)))

(assert (= (and b!6568612 ((_ is Cons!65510) (exprs!6329 setElem!44846))) b!6569437))

(declare-fun b!6569439 () Bool)

(declare-fun e!3976456 () Bool)

(declare-fun tp!1813625 () Bool)

(declare-fun tp!1813626 () Bool)

(assert (=> b!6569439 (= e!3976456 (and tp!1813625 tp!1813626))))

(assert (=> b!6568613 (= tp!1813510 e!3976456)))

(declare-fun b!6569438 () Bool)

(assert (=> b!6569438 (= e!3976456 tp_is_empty!42143)))

(declare-fun b!6569440 () Bool)

(declare-fun tp!1813624 () Bool)

(assert (=> b!6569440 (= e!3976456 tp!1813624)))

(declare-fun b!6569441 () Bool)

(declare-fun tp!1813627 () Bool)

(declare-fun tp!1813623 () Bool)

(assert (=> b!6569441 (= e!3976456 (and tp!1813627 tp!1813623))))

(assert (= (and b!6568613 ((_ is ElementMatch!16445) (regOne!33403 r!7292))) b!6569438))

(assert (= (and b!6568613 ((_ is Concat!25290) (regOne!33403 r!7292))) b!6569439))

(assert (= (and b!6568613 ((_ is Star!16445) (regOne!33403 r!7292))) b!6569440))

(assert (= (and b!6568613 ((_ is Union!16445) (regOne!33403 r!7292))) b!6569441))

(declare-fun b!6569443 () Bool)

(declare-fun e!3976457 () Bool)

(declare-fun tp!1813630 () Bool)

(declare-fun tp!1813631 () Bool)

(assert (=> b!6569443 (= e!3976457 (and tp!1813630 tp!1813631))))

(assert (=> b!6568613 (= tp!1813515 e!3976457)))

(declare-fun b!6569442 () Bool)

(assert (=> b!6569442 (= e!3976457 tp_is_empty!42143)))

(declare-fun b!6569444 () Bool)

(declare-fun tp!1813629 () Bool)

(assert (=> b!6569444 (= e!3976457 tp!1813629)))

(declare-fun b!6569445 () Bool)

(declare-fun tp!1813632 () Bool)

(declare-fun tp!1813628 () Bool)

(assert (=> b!6569445 (= e!3976457 (and tp!1813632 tp!1813628))))

(assert (= (and b!6568613 ((_ is ElementMatch!16445) (regTwo!33403 r!7292))) b!6569442))

(assert (= (and b!6568613 ((_ is Concat!25290) (regTwo!33403 r!7292))) b!6569443))

(assert (= (and b!6568613 ((_ is Star!16445) (regTwo!33403 r!7292))) b!6569444))

(assert (= (and b!6568613 ((_ is Union!16445) (regTwo!33403 r!7292))) b!6569445))

(declare-fun b!6569450 () Bool)

(declare-fun e!3976460 () Bool)

(declare-fun tp!1813635 () Bool)

(assert (=> b!6569450 (= e!3976460 (and tp_is_empty!42143 tp!1813635))))

(assert (=> b!6568634 (= tp!1813513 e!3976460)))

(assert (= (and b!6568634 ((_ is Cons!65512) (t!379280 s!2326))) b!6569450))

(declare-fun b_lambda!248441 () Bool)

(assert (= b_lambda!248417 (or b!6568635 b_lambda!248441)))

(declare-fun bs!1677940 () Bool)

(declare-fun d!2061102 () Bool)

(assert (= bs!1677940 (and d!2061102 b!6568635)))

(assert (=> bs!1677940 (= (dynLambda!26063 lambda!365735 lt!2408267) (derivationStepZipperUp!1619 lt!2408267 (h!71960 s!2326)))))

(assert (=> bs!1677940 m!7350778))

(assert (=> d!2060922 d!2061102))

(declare-fun b_lambda!248443 () Bool)

(assert (= b_lambda!248425 (or b!6568635 b_lambda!248443)))

(declare-fun bs!1677941 () Bool)

(declare-fun d!2061104 () Bool)

(assert (= bs!1677941 (and d!2061104 b!6568635)))

(assert (=> bs!1677941 (= (dynLambda!26063 lambda!365735 (h!71959 zl!343)) (derivationStepZipperUp!1619 (h!71959 zl!343) (h!71960 s!2326)))))

(assert (=> bs!1677941 m!7350824))

(assert (=> d!2061010 d!2061104))

(declare-fun b_lambda!248445 () Bool)

(assert (= b_lambda!248419 (or b!6568635 b_lambda!248445)))

(declare-fun bs!1677942 () Bool)

(declare-fun d!2061106 () Bool)

(assert (= bs!1677942 (and d!2061106 b!6568635)))

(assert (=> bs!1677942 (= (dynLambda!26063 lambda!365735 lt!2408275) (derivationStepZipperUp!1619 lt!2408275 (h!71960 s!2326)))))

(assert (=> bs!1677942 m!7350786))

(assert (=> d!2060924 d!2061106))

(declare-fun b_lambda!248447 () Bool)

(assert (= b_lambda!248421 (or b!6568635 b_lambda!248447)))

(declare-fun bs!1677943 () Bool)

(declare-fun d!2061108 () Bool)

(assert (= bs!1677943 (and d!2061108 b!6568635)))

(assert (=> bs!1677943 (= (dynLambda!26063 lambda!365735 lt!2408292) (derivationStepZipperUp!1619 lt!2408292 (h!71960 s!2326)))))

(assert (=> bs!1677943 m!7350842))

(assert (=> d!2060968 d!2061108))

(check-sat (not d!2061010) (not bm!571457) (not b!6568720) (not b_lambda!248445) (not b!6569163) (not bm!571528) (not bm!571534) (not b!6569422) (not d!2060970) (not b!6568828) (not b!6568838) (not b!6568845) (not b!6569081) (not bm!571529) tp_is_empty!42143 (not d!2060936) (not b!6569441) (not d!2061016) (not b!6569015) (not d!2060960) (not d!2060968) (not b!6569256) (not bs!1677941) (not b!6569431) (not bm!571508) (not b!6569077) (not b!6568948) (not b!6569258) (not b!6568813) (not b!6568801) (not b!6569012) (not b!6568907) (not b!6568802) (not b!6569257) (not b!6568938) (not b!6569261) (not d!2060956) (not d!2060908) (not bm!571501) (not d!2060914) (not b!6568717) (not d!2061062) (not d!2061032) (not b!6569174) (not b!6569443) (not b!6568844) (not d!2060910) (not b!6569393) (not d!2060944) (not b!6568708) (not bm!571499) (not bm!571535) (not bm!571463) (not b!6569423) (not b!6569078) (not bm!571504) (not b!6569255) (not bm!571467) (not b!6568975) (not bm!571462) (not b!6568811) (not b!6569011) (not b!6568709) (not b!6569437) (not d!2060900) (not b!6569008) (not bm!571505) (not b!6569436) (not d!2060998) (not b!6569079) (not bm!571502) (not b!6569430) (not b!6569181) (not bm!571538) (not b!6569076) (not b!6568810) (not d!2061000) (not b!6569176) (not bm!571532) (not d!2060930) (not d!2060982) (not d!2060916) (not d!2060942) (not bs!1677942) (not d!2060938) (not b!6568825) (not b!6568847) (not d!2060890) (not d!2061006) (not b_lambda!248441) (not b!6568955) (not b!6569415) (not b!6569155) (not b!6568936) (not b!6569075) (not b!6568945) (not b!6568841) (not d!2060988) (not b!6569119) (not b!6569444) (not d!2060940) (not d!2061020) (not b!6568809) (not b!6568937) (not d!2060924) (not setNonEmpty!44852) (not d!2060886) (not d!2060990) (not bm!571537) (not b!6568842) (not d!2061088) (not b!6568712) (not d!2060964) (not bs!1677940) (not b!6569440) (not b!6568843) (not b!6569450) (not d!2061064) (not b!6568710) (not b!6569009) (not b!6568919) (not d!2061026) (not d!2060926) (not b!6568940) (not b!6569082) (not b!6569414) (not b!6568958) (not b!6569007) (not b_lambda!248443) (not b!6569013) (not bm!571466) (not d!2061002) (not b!6569179) (not d!2060920) (not d!2060992) (not b_lambda!248447) (not d!2061092) (not b!6569432) (not b!6569434) (not b!6569439) (not b!6568914) (not b!6568812) (not b!6568782) (not b!6569413) (not b!6568846) (not d!2060922) (not b!6569435) (not b!6569171) (not b!6569445) (not bs!1677943) (not bm!571539) (not b!6569184) (not b!6568777) (not b!6569428) (not b!6569260) (not bm!571510))
(check-sat)
(get-model)

(declare-fun d!2061110 () Bool)

(assert (=> d!2061110 (= (head!13340 s!2326) (h!71960 s!2326))))

(assert (=> b!6568948 d!2061110))

(declare-fun d!2061112 () Bool)

(assert (=> d!2061112 (= (isEmpty!37760 (t!379280 s!2326)) ((_ is Nil!65512) (t!379280 s!2326)))))

(assert (=> d!2060944 d!2061112))

(declare-fun d!2061114 () Bool)

(assert (=> d!2061114 (= (isEmpty!37760 s!2326) ((_ is Nil!65512) s!2326))))

(assert (=> d!2060908 d!2061114))

(declare-fun d!2061116 () Bool)

(assert (=> d!2061116 (= (isEmptyExpr!1822 lt!2408348) ((_ is EmptyExpr!16445) lt!2408348))))

(assert (=> b!6569012 d!2061116))

(assert (=> b!6569119 d!2060992))

(declare-fun bs!1677944 () Bool)

(declare-fun d!2061118 () Bool)

(assert (= bs!1677944 (and d!2061118 d!2060886)))

(declare-fun lambda!365804 () Int)

(assert (=> bs!1677944 (= lambda!365804 lambda!365738)))

(declare-fun bs!1677945 () Bool)

(assert (= bs!1677945 (and d!2061118 d!2060990)))

(assert (=> bs!1677945 (= lambda!365804 lambda!365769)))

(declare-fun bs!1677946 () Bool)

(assert (= bs!1677946 (and d!2061118 d!2060998)))

(assert (=> bs!1677946 (= lambda!365804 lambda!365773)))

(declare-fun bs!1677947 () Bool)

(assert (= bs!1677947 (and d!2061118 d!2060992)))

(assert (=> bs!1677947 (= lambda!365804 lambda!365772)))

(declare-fun bs!1677948 () Bool)

(assert (= bs!1677948 (and d!2061118 d!2061002)))

(assert (=> bs!1677948 (= lambda!365804 lambda!365776)))

(declare-fun bs!1677949 () Bool)

(assert (= bs!1677949 (and d!2061118 d!2061006)))

(assert (=> bs!1677949 (= lambda!365804 lambda!365783)))

(declare-fun lt!2408393 () List!65634)

(assert (=> d!2061118 (forall!15616 lt!2408393 lambda!365804)))

(declare-fun e!3976461 () List!65634)

(assert (=> d!2061118 (= lt!2408393 e!3976461)))

(declare-fun c!1207595 () Bool)

(assert (=> d!2061118 (= c!1207595 ((_ is Cons!65511) (t!379279 zl!343)))))

(assert (=> d!2061118 (= (unfocusZipperList!1866 (t!379279 zl!343)) lt!2408393)))

(declare-fun b!6569451 () Bool)

(assert (=> b!6569451 (= e!3976461 (Cons!65510 (generalisedConcat!2042 (exprs!6329 (h!71959 (t!379279 zl!343)))) (unfocusZipperList!1866 (t!379279 (t!379279 zl!343)))))))

(declare-fun b!6569452 () Bool)

(assert (=> b!6569452 (= e!3976461 Nil!65510)))

(assert (= (and d!2061118 c!1207595) b!6569451))

(assert (= (and d!2061118 (not c!1207595)) b!6569452))

(declare-fun m!7351440 () Bool)

(assert (=> d!2061118 m!7351440))

(declare-fun m!7351442 () Bool)

(assert (=> b!6569451 m!7351442))

(declare-fun m!7351444 () Bool)

(assert (=> b!6569451 m!7351444))

(assert (=> b!6569119 d!2061118))

(declare-fun d!2061120 () Bool)

(assert (=> d!2061120 true))

(declare-fun setRes!44855 () Bool)

(assert (=> d!2061120 setRes!44855))

(declare-fun condSetEmpty!44855 () Bool)

(declare-fun res!2696019 () (InoxSet Context!11658))

(assert (=> d!2061120 (= condSetEmpty!44855 (= res!2696019 ((as const (Array Context!11658 Bool)) false)))))

(assert (=> d!2061120 (= (choose!49067 lt!2408268 lambda!365735) res!2696019)))

(declare-fun setIsEmpty!44855 () Bool)

(assert (=> setIsEmpty!44855 setRes!44855))

(declare-fun e!3976464 () Bool)

(declare-fun setNonEmpty!44855 () Bool)

(declare-fun tp!1813640 () Bool)

(declare-fun setElem!44855 () Context!11658)

(assert (=> setNonEmpty!44855 (= setRes!44855 (and tp!1813640 (inv!84359 setElem!44855) e!3976464))))

(declare-fun setRest!44855 () (InoxSet Context!11658))

(assert (=> setNonEmpty!44855 (= res!2696019 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) setElem!44855 true) setRest!44855))))

(declare-fun b!6569455 () Bool)

(declare-fun tp!1813641 () Bool)

(assert (=> b!6569455 (= e!3976464 tp!1813641)))

(assert (= (and d!2061120 condSetEmpty!44855) setIsEmpty!44855))

(assert (= (and d!2061120 (not condSetEmpty!44855)) setNonEmpty!44855))

(assert (= setNonEmpty!44855 b!6569455))

(declare-fun m!7351446 () Bool)

(assert (=> setNonEmpty!44855 m!7351446))

(assert (=> d!2060926 d!2061120))

(assert (=> d!2060890 d!2061114))

(declare-fun b!6569456 () Bool)

(declare-fun e!3976466 () Bool)

(declare-fun call!571568 () Bool)

(assert (=> b!6569456 (= e!3976466 call!571568)))

(declare-fun bm!571561 () Bool)

(declare-fun call!571567 () Bool)

(declare-fun c!1207596 () Bool)

(assert (=> bm!571561 (= call!571567 (validRegex!8181 (ite c!1207596 (regOne!33403 lt!2408266) (regOne!33402 lt!2408266))))))

(declare-fun b!6569458 () Bool)

(declare-fun e!3976471 () Bool)

(declare-fun e!3976465 () Bool)

(assert (=> b!6569458 (= e!3976471 e!3976465)))

(assert (=> b!6569458 (= c!1207596 ((_ is Union!16445) lt!2408266))))

(declare-fun b!6569459 () Bool)

(declare-fun e!3976469 () Bool)

(declare-fun call!571566 () Bool)

(assert (=> b!6569459 (= e!3976469 call!571566)))

(declare-fun b!6569460 () Bool)

(declare-fun e!3976468 () Bool)

(assert (=> b!6569460 (= e!3976468 call!571568)))

(declare-fun b!6569461 () Bool)

(assert (=> b!6569461 (= e!3976471 e!3976469)))

(declare-fun res!2696024 () Bool)

(assert (=> b!6569461 (= res!2696024 (not (nullable!6438 (reg!16774 lt!2408266))))))

(assert (=> b!6569461 (=> (not res!2696024) (not e!3976469))))

(declare-fun c!1207597 () Bool)

(declare-fun bm!571562 () Bool)

(assert (=> bm!571562 (= call!571566 (validRegex!8181 (ite c!1207597 (reg!16774 lt!2408266) (ite c!1207596 (regTwo!33403 lt!2408266) (regTwo!33402 lt!2408266)))))))

(declare-fun b!6569457 () Bool)

(declare-fun res!2696020 () Bool)

(assert (=> b!6569457 (=> (not res!2696020) (not e!3976468))))

(assert (=> b!6569457 (= res!2696020 call!571567)))

(assert (=> b!6569457 (= e!3976465 e!3976468)))

(declare-fun d!2061122 () Bool)

(declare-fun res!2696021 () Bool)

(declare-fun e!3976467 () Bool)

(assert (=> d!2061122 (=> res!2696021 e!3976467)))

(assert (=> d!2061122 (= res!2696021 ((_ is ElementMatch!16445) lt!2408266))))

(assert (=> d!2061122 (= (validRegex!8181 lt!2408266) e!3976467)))

(declare-fun b!6569462 () Bool)

(declare-fun res!2696023 () Bool)

(declare-fun e!3976470 () Bool)

(assert (=> b!6569462 (=> res!2696023 e!3976470)))

(assert (=> b!6569462 (= res!2696023 (not ((_ is Concat!25290) lt!2408266)))))

(assert (=> b!6569462 (= e!3976465 e!3976470)))

(declare-fun b!6569463 () Bool)

(assert (=> b!6569463 (= e!3976467 e!3976471)))

(assert (=> b!6569463 (= c!1207597 ((_ is Star!16445) lt!2408266))))

(declare-fun bm!571563 () Bool)

(assert (=> bm!571563 (= call!571568 call!571566)))

(declare-fun b!6569464 () Bool)

(assert (=> b!6569464 (= e!3976470 e!3976466)))

(declare-fun res!2696022 () Bool)

(assert (=> b!6569464 (=> (not res!2696022) (not e!3976466))))

(assert (=> b!6569464 (= res!2696022 call!571567)))

(assert (= (and d!2061122 (not res!2696021)) b!6569463))

(assert (= (and b!6569463 c!1207597) b!6569461))

(assert (= (and b!6569463 (not c!1207597)) b!6569458))

(assert (= (and b!6569461 res!2696024) b!6569459))

(assert (= (and b!6569458 c!1207596) b!6569457))

(assert (= (and b!6569458 (not c!1207596)) b!6569462))

(assert (= (and b!6569457 res!2696020) b!6569460))

(assert (= (and b!6569462 (not res!2696023)) b!6569464))

(assert (= (and b!6569464 res!2696022) b!6569456))

(assert (= (or b!6569460 b!6569456) bm!571563))

(assert (= (or b!6569457 b!6569464) bm!571561))

(assert (= (or b!6569459 bm!571563) bm!571562))

(declare-fun m!7351448 () Bool)

(assert (=> bm!571561 m!7351448))

(declare-fun m!7351450 () Bool)

(assert (=> b!6569461 m!7351450))

(declare-fun m!7351452 () Bool)

(assert (=> bm!571562 m!7351452))

(assert (=> d!2060890 d!2061122))

(declare-fun b!6569465 () Bool)

(declare-fun e!3976475 () Bool)

(declare-fun lt!2408394 () Bool)

(declare-fun call!571569 () Bool)

(assert (=> b!6569465 (= e!3976475 (= lt!2408394 call!571569))))

(declare-fun b!6569466 () Bool)

(declare-fun res!2696028 () Bool)

(declare-fun e!3976477 () Bool)

(assert (=> b!6569466 (=> res!2696028 e!3976477)))

(assert (=> b!6569466 (= res!2696028 (not (isEmpty!37760 (tail!12426 s!2326))))))

(declare-fun b!6569467 () Bool)

(assert (=> b!6569467 (= e!3976477 (not (= (head!13340 s!2326) (c!1207368 (regTwo!33402 r!7292)))))))

(declare-fun bm!571564 () Bool)

(assert (=> bm!571564 (= call!571569 (isEmpty!37760 s!2326))))

(declare-fun b!6569469 () Bool)

(declare-fun e!3976473 () Bool)

(assert (=> b!6569469 (= e!3976475 e!3976473)))

(declare-fun c!1207598 () Bool)

(assert (=> b!6569469 (= c!1207598 ((_ is EmptyLang!16445) (regTwo!33402 r!7292)))))

(declare-fun b!6569470 () Bool)

(declare-fun e!3976476 () Bool)

(assert (=> b!6569470 (= e!3976476 (nullable!6438 (regTwo!33402 r!7292)))))

(declare-fun b!6569471 () Bool)

(declare-fun res!2696029 () Bool)

(declare-fun e!3976474 () Bool)

(assert (=> b!6569471 (=> res!2696029 e!3976474)))

(declare-fun e!3976472 () Bool)

(assert (=> b!6569471 (= res!2696029 e!3976472)))

(declare-fun res!2696026 () Bool)

(assert (=> b!6569471 (=> (not res!2696026) (not e!3976472))))

(assert (=> b!6569471 (= res!2696026 lt!2408394)))

(declare-fun b!6569472 () Bool)

(assert (=> b!6569472 (= e!3976473 (not lt!2408394))))

(declare-fun b!6569473 () Bool)

(declare-fun e!3976478 () Bool)

(assert (=> b!6569473 (= e!3976478 e!3976477)))

(declare-fun res!2696030 () Bool)

(assert (=> b!6569473 (=> res!2696030 e!3976477)))

(assert (=> b!6569473 (= res!2696030 call!571569)))

(declare-fun b!6569474 () Bool)

(declare-fun res!2696032 () Bool)

(assert (=> b!6569474 (=> res!2696032 e!3976474)))

(assert (=> b!6569474 (= res!2696032 (not ((_ is ElementMatch!16445) (regTwo!33402 r!7292))))))

(assert (=> b!6569474 (= e!3976473 e!3976474)))

(declare-fun b!6569475 () Bool)

(assert (=> b!6569475 (= e!3976476 (matchR!8628 (derivativeStep!5128 (regTwo!33402 r!7292) (head!13340 s!2326)) (tail!12426 s!2326)))))

(declare-fun b!6569476 () Bool)

(declare-fun res!2696031 () Bool)

(assert (=> b!6569476 (=> (not res!2696031) (not e!3976472))))

(assert (=> b!6569476 (= res!2696031 (not call!571569))))

(declare-fun b!6569468 () Bool)

(declare-fun res!2696025 () Bool)

(assert (=> b!6569468 (=> (not res!2696025) (not e!3976472))))

(assert (=> b!6569468 (= res!2696025 (isEmpty!37760 (tail!12426 s!2326)))))

(declare-fun d!2061124 () Bool)

(assert (=> d!2061124 e!3976475))

(declare-fun c!1207600 () Bool)

(assert (=> d!2061124 (= c!1207600 ((_ is EmptyExpr!16445) (regTwo!33402 r!7292)))))

(assert (=> d!2061124 (= lt!2408394 e!3976476)))

(declare-fun c!1207599 () Bool)

(assert (=> d!2061124 (= c!1207599 (isEmpty!37760 s!2326))))

(assert (=> d!2061124 (validRegex!8181 (regTwo!33402 r!7292))))

(assert (=> d!2061124 (= (matchR!8628 (regTwo!33402 r!7292) s!2326) lt!2408394)))

(declare-fun b!6569477 () Bool)

(assert (=> b!6569477 (= e!3976474 e!3976478)))

(declare-fun res!2696027 () Bool)

(assert (=> b!6569477 (=> (not res!2696027) (not e!3976478))))

(assert (=> b!6569477 (= res!2696027 (not lt!2408394))))

(declare-fun b!6569478 () Bool)

(assert (=> b!6569478 (= e!3976472 (= (head!13340 s!2326) (c!1207368 (regTwo!33402 r!7292))))))

(assert (= (and d!2061124 c!1207599) b!6569470))

(assert (= (and d!2061124 (not c!1207599)) b!6569475))

(assert (= (and d!2061124 c!1207600) b!6569465))

(assert (= (and d!2061124 (not c!1207600)) b!6569469))

(assert (= (and b!6569469 c!1207598) b!6569472))

(assert (= (and b!6569469 (not c!1207598)) b!6569474))

(assert (= (and b!6569474 (not res!2696032)) b!6569471))

(assert (= (and b!6569471 res!2696026) b!6569476))

(assert (= (and b!6569476 res!2696031) b!6569468))

(assert (= (and b!6569468 res!2696025) b!6569478))

(assert (= (and b!6569471 (not res!2696029)) b!6569477))

(assert (= (and b!6569477 res!2696027) b!6569473))

(assert (= (and b!6569473 (not res!2696030)) b!6569466))

(assert (= (and b!6569466 (not res!2696028)) b!6569467))

(assert (= (or b!6569465 b!6569476 b!6569473) bm!571564))

(assert (=> b!6569466 m!7350894))

(assert (=> b!6569466 m!7350894))

(assert (=> b!6569466 m!7350896))

(assert (=> b!6569475 m!7350898))

(assert (=> b!6569475 m!7350898))

(declare-fun m!7351454 () Bool)

(assert (=> b!6569475 m!7351454))

(assert (=> b!6569475 m!7350894))

(assert (=> b!6569475 m!7351454))

(assert (=> b!6569475 m!7350894))

(declare-fun m!7351456 () Bool)

(assert (=> b!6569475 m!7351456))

(declare-fun m!7351458 () Bool)

(assert (=> b!6569470 m!7351458))

(assert (=> b!6569467 m!7350898))

(assert (=> d!2061124 m!7350906))

(declare-fun m!7351460 () Bool)

(assert (=> d!2061124 m!7351460))

(assert (=> b!6569468 m!7350894))

(assert (=> b!6569468 m!7350894))

(assert (=> b!6569468 m!7350896))

(assert (=> bm!571564 m!7350906))

(assert (=> b!6569478 m!7350898))

(assert (=> b!6569255 d!2061124))

(declare-fun bs!1677950 () Bool)

(declare-fun b!6569488 () Bool)

(assert (= bs!1677950 (and b!6569488 b!6568921)))

(declare-fun lambda!365805 () Int)

(assert (=> bs!1677950 (not (= lambda!365805 lambda!365761))))

(declare-fun bs!1677951 () Bool)

(assert (= bs!1677951 (and b!6569488 b!6568784)))

(assert (=> bs!1677951 (not (= lambda!365805 lambda!365750))))

(declare-fun bs!1677952 () Bool)

(assert (= bs!1677952 (and b!6569488 d!2061088)))

(assert (=> bs!1677952 (not (= lambda!365805 lambda!365803))))

(declare-fun bs!1677953 () Bool)

(assert (= bs!1677953 (and b!6569488 b!6568923)))

(assert (=> bs!1677953 (= (and (= (reg!16774 (regTwo!33403 r!7292)) (reg!16774 r!7292)) (= (regTwo!33403 r!7292) r!7292)) (= lambda!365805 lambda!365760))))

(declare-fun bs!1677954 () Bool)

(assert (= bs!1677954 (and b!6569488 b!6568614)))

(assert (=> bs!1677954 (not (= lambda!365805 lambda!365734))))

(assert (=> bs!1677952 (not (= lambda!365805 lambda!365802))))

(declare-fun bs!1677955 () Bool)

(assert (= bs!1677955 (and b!6569488 b!6568786)))

(assert (=> bs!1677955 (= (and (= (reg!16774 (regTwo!33403 r!7292)) (reg!16774 lt!2408266)) (= (regTwo!33403 r!7292) lt!2408266)) (= lambda!365805 lambda!365749))))

(declare-fun bs!1677956 () Bool)

(assert (= bs!1677956 (and b!6569488 d!2061064)))

(assert (=> bs!1677956 (not (= lambda!365805 lambda!365793))))

(assert (=> bs!1677954 (not (= lambda!365805 lambda!365733))))

(assert (=> b!6569488 true))

(assert (=> b!6569488 true))

(declare-fun bs!1677957 () Bool)

(declare-fun b!6569486 () Bool)

(assert (= bs!1677957 (and b!6569486 b!6568921)))

(declare-fun lambda!365806 () Int)

(assert (=> bs!1677957 (= (and (= (regOne!33402 (regTwo!33403 r!7292)) (regOne!33402 r!7292)) (= (regTwo!33402 (regTwo!33403 r!7292)) (regTwo!33402 r!7292))) (= lambda!365806 lambda!365761))))

(declare-fun bs!1677958 () Bool)

(assert (= bs!1677958 (and b!6569486 b!6568784)))

(assert (=> bs!1677958 (= (and (= (regOne!33402 (regTwo!33403 r!7292)) (regOne!33402 lt!2408266)) (= (regTwo!33402 (regTwo!33403 r!7292)) (regTwo!33402 lt!2408266))) (= lambda!365806 lambda!365750))))

(declare-fun bs!1677959 () Bool)

(assert (= bs!1677959 (and b!6569486 d!2061088)))

(assert (=> bs!1677959 (= (and (= (regOne!33402 (regTwo!33403 r!7292)) (regOne!33402 r!7292)) (= (regTwo!33402 (regTwo!33403 r!7292)) (regTwo!33402 r!7292))) (= lambda!365806 lambda!365803))))

(declare-fun bs!1677960 () Bool)

(assert (= bs!1677960 (and b!6569486 b!6568923)))

(assert (=> bs!1677960 (not (= lambda!365806 lambda!365760))))

(declare-fun bs!1677961 () Bool)

(assert (= bs!1677961 (and b!6569486 b!6568614)))

(assert (=> bs!1677961 (= (and (= (regOne!33402 (regTwo!33403 r!7292)) (regOne!33402 r!7292)) (= (regTwo!33402 (regTwo!33403 r!7292)) (regTwo!33402 r!7292))) (= lambda!365806 lambda!365734))))

(assert (=> bs!1677959 (not (= lambda!365806 lambda!365802))))

(declare-fun bs!1677962 () Bool)

(assert (= bs!1677962 (and b!6569486 b!6568786)))

(assert (=> bs!1677962 (not (= lambda!365806 lambda!365749))))

(declare-fun bs!1677963 () Bool)

(assert (= bs!1677963 (and b!6569486 d!2061064)))

(assert (=> bs!1677963 (not (= lambda!365806 lambda!365793))))

(declare-fun bs!1677964 () Bool)

(assert (= bs!1677964 (and b!6569486 b!6569488)))

(assert (=> bs!1677964 (not (= lambda!365806 lambda!365805))))

(assert (=> bs!1677961 (not (= lambda!365806 lambda!365733))))

(assert (=> b!6569486 true))

(assert (=> b!6569486 true))

(declare-fun d!2061126 () Bool)

(declare-fun c!1207602 () Bool)

(assert (=> d!2061126 (= c!1207602 ((_ is EmptyExpr!16445) (regTwo!33403 r!7292)))))

(declare-fun e!3976485 () Bool)

(assert (=> d!2061126 (= (matchRSpec!3546 (regTwo!33403 r!7292) s!2326) e!3976485)))

(declare-fun b!6569479 () Bool)

(declare-fun e!3976479 () Bool)

(declare-fun e!3976482 () Bool)

(assert (=> b!6569479 (= e!3976479 e!3976482)))

(declare-fun res!2696034 () Bool)

(assert (=> b!6569479 (= res!2696034 (matchRSpec!3546 (regOne!33403 (regTwo!33403 r!7292)) s!2326))))

(assert (=> b!6569479 (=> res!2696034 e!3976482)))

(declare-fun b!6569480 () Bool)

(declare-fun res!2696033 () Bool)

(declare-fun e!3976480 () Bool)

(assert (=> b!6569480 (=> res!2696033 e!3976480)))

(declare-fun call!571571 () Bool)

(assert (=> b!6569480 (= res!2696033 call!571571)))

(declare-fun e!3976481 () Bool)

(assert (=> b!6569480 (= e!3976481 e!3976480)))

(declare-fun b!6569481 () Bool)

(declare-fun e!3976484 () Bool)

(assert (=> b!6569481 (= e!3976484 (= s!2326 (Cons!65512 (c!1207368 (regTwo!33403 r!7292)) Nil!65512)))))

(declare-fun call!571570 () Bool)

(declare-fun bm!571565 () Bool)

(declare-fun c!1207603 () Bool)

(assert (=> bm!571565 (= call!571570 (Exists!3515 (ite c!1207603 lambda!365805 lambda!365806)))))

(declare-fun b!6569482 () Bool)

(assert (=> b!6569482 (= e!3976479 e!3976481)))

(assert (=> b!6569482 (= c!1207603 ((_ is Star!16445) (regTwo!33403 r!7292)))))

(declare-fun b!6569483 () Bool)

(assert (=> b!6569483 (= e!3976485 call!571571)))

(declare-fun b!6569484 () Bool)

(assert (=> b!6569484 (= e!3976482 (matchRSpec!3546 (regTwo!33403 (regTwo!33403 r!7292)) s!2326))))

(declare-fun bm!571566 () Bool)

(assert (=> bm!571566 (= call!571571 (isEmpty!37760 s!2326))))

(declare-fun b!6569485 () Bool)

(declare-fun c!1207604 () Bool)

(assert (=> b!6569485 (= c!1207604 ((_ is ElementMatch!16445) (regTwo!33403 r!7292)))))

(declare-fun e!3976483 () Bool)

(assert (=> b!6569485 (= e!3976483 e!3976484)))

(assert (=> b!6569486 (= e!3976481 call!571570)))

(declare-fun b!6569487 () Bool)

(declare-fun c!1207601 () Bool)

(assert (=> b!6569487 (= c!1207601 ((_ is Union!16445) (regTwo!33403 r!7292)))))

(assert (=> b!6569487 (= e!3976484 e!3976479)))

(assert (=> b!6569488 (= e!3976480 call!571570)))

(declare-fun b!6569489 () Bool)

(assert (=> b!6569489 (= e!3976485 e!3976483)))

(declare-fun res!2696035 () Bool)

(assert (=> b!6569489 (= res!2696035 (not ((_ is EmptyLang!16445) (regTwo!33403 r!7292))))))

(assert (=> b!6569489 (=> (not res!2696035) (not e!3976483))))

(assert (= (and d!2061126 c!1207602) b!6569483))

(assert (= (and d!2061126 (not c!1207602)) b!6569489))

(assert (= (and b!6569489 res!2696035) b!6569485))

(assert (= (and b!6569485 c!1207604) b!6569481))

(assert (= (and b!6569485 (not c!1207604)) b!6569487))

(assert (= (and b!6569487 c!1207601) b!6569479))

(assert (= (and b!6569487 (not c!1207601)) b!6569482))

(assert (= (and b!6569479 (not res!2696034)) b!6569484))

(assert (= (and b!6569482 c!1207603) b!6569480))

(assert (= (and b!6569482 (not c!1207603)) b!6569486))

(assert (= (and b!6569480 (not res!2696033)) b!6569488))

(assert (= (or b!6569488 b!6569486) bm!571565))

(assert (= (or b!6569483 b!6569480) bm!571566))

(declare-fun m!7351462 () Bool)

(assert (=> b!6569479 m!7351462))

(declare-fun m!7351464 () Bool)

(assert (=> bm!571565 m!7351464))

(declare-fun m!7351466 () Bool)

(assert (=> b!6569484 m!7351466))

(assert (=> bm!571566 m!7350906))

(assert (=> b!6568919 d!2061126))

(declare-fun d!2061128 () Bool)

(declare-fun c!1207605 () Bool)

(assert (=> d!2061128 (= c!1207605 (isEmpty!37760 (tail!12426 (t!379280 s!2326))))))

(declare-fun e!3976486 () Bool)

(assert (=> d!2061128 (= (matchZipper!2457 (derivationStepZipper!2411 ((_ map or) lt!2408280 lt!2408277) (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))) e!3976486)))

(declare-fun b!6569490 () Bool)

(assert (=> b!6569490 (= e!3976486 (nullableZipper!2190 (derivationStepZipper!2411 ((_ map or) lt!2408280 lt!2408277) (head!13340 (t!379280 s!2326)))))))

(declare-fun b!6569491 () Bool)

(assert (=> b!6569491 (= e!3976486 (matchZipper!2457 (derivationStepZipper!2411 (derivationStepZipper!2411 ((_ map or) lt!2408280 lt!2408277) (head!13340 (t!379280 s!2326))) (head!13340 (tail!12426 (t!379280 s!2326)))) (tail!12426 (tail!12426 (t!379280 s!2326)))))))

(assert (= (and d!2061128 c!1207605) b!6569490))

(assert (= (and d!2061128 (not c!1207605)) b!6569491))

(assert (=> d!2061128 m!7350970))

(declare-fun m!7351468 () Bool)

(assert (=> d!2061128 m!7351468))

(assert (=> b!6569490 m!7350976))

(declare-fun m!7351470 () Bool)

(assert (=> b!6569490 m!7351470))

(assert (=> b!6569491 m!7350970))

(declare-fun m!7351472 () Bool)

(assert (=> b!6569491 m!7351472))

(assert (=> b!6569491 m!7350976))

(assert (=> b!6569491 m!7351472))

(declare-fun m!7351474 () Bool)

(assert (=> b!6569491 m!7351474))

(assert (=> b!6569491 m!7350970))

(declare-fun m!7351476 () Bool)

(assert (=> b!6569491 m!7351476))

(assert (=> b!6569491 m!7351474))

(assert (=> b!6569491 m!7351476))

(declare-fun m!7351478 () Bool)

(assert (=> b!6569491 m!7351478))

(assert (=> b!6568813 d!2061128))

(declare-fun bs!1677965 () Bool)

(declare-fun d!2061130 () Bool)

(assert (= bs!1677965 (and d!2061130 b!6568635)))

(declare-fun lambda!365807 () Int)

(assert (=> bs!1677965 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365807 lambda!365735))))

(declare-fun bs!1677966 () Bool)

(assert (= bs!1677966 (and d!2061130 d!2060970)))

(assert (=> bs!1677966 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365807 lambda!365764))))

(assert (=> d!2061130 true))

(assert (=> d!2061130 (= (derivationStepZipper!2411 ((_ map or) lt!2408280 lt!2408277) (head!13340 (t!379280 s!2326))) (flatMap!1950 ((_ map or) lt!2408280 lt!2408277) lambda!365807))))

(declare-fun bs!1677967 () Bool)

(assert (= bs!1677967 d!2061130))

(declare-fun m!7351480 () Bool)

(assert (=> bs!1677967 m!7351480))

(assert (=> b!6568813 d!2061130))

(declare-fun d!2061132 () Bool)

(assert (=> d!2061132 (= (head!13340 (t!379280 s!2326)) (h!71960 (t!379280 s!2326)))))

(assert (=> b!6568813 d!2061132))

(declare-fun d!2061134 () Bool)

(assert (=> d!2061134 (= (tail!12426 (t!379280 s!2326)) (t!379280 (t!379280 s!2326)))))

(assert (=> b!6568813 d!2061134))

(declare-fun d!2061136 () Bool)

(assert (=> d!2061136 (= (flatMap!1950 lt!2408291 lambda!365764) (choose!49067 lt!2408291 lambda!365764))))

(declare-fun bs!1677968 () Bool)

(assert (= bs!1677968 d!2061136))

(declare-fun m!7351482 () Bool)

(assert (=> bs!1677968 m!7351482))

(assert (=> d!2060970 d!2061136))

(assert (=> d!2060938 d!2061112))

(declare-fun bm!571567 () Bool)

(declare-fun call!571574 () (InoxSet Context!11658))

(declare-fun call!571575 () (InoxSet Context!11658))

(assert (=> bm!571567 (= call!571574 call!571575)))

(declare-fun call!571572 () (InoxSet Context!11658))

(declare-fun c!1207610 () Bool)

(declare-fun call!571576 () List!65634)

(declare-fun bm!571568 () Bool)

(assert (=> bm!571568 (= call!571572 (derivationStepZipperDown!1693 (ite c!1207610 (regTwo!33403 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))) (regOne!33402 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))))) (ite c!1207610 (ite c!1207541 lt!2408279 (Context!11659 call!571540)) (Context!11659 call!571576)) (h!71960 s!2326)))))

(declare-fun e!3976488 () (InoxSet Context!11658))

(declare-fun b!6569492 () Bool)

(assert (=> b!6569492 (= e!3976488 (store ((as const (Array Context!11658 Bool)) false) (ite c!1207541 lt!2408279 (Context!11659 call!571540)) true))))

(declare-fun bm!571569 () Bool)

(declare-fun call!571573 () List!65634)

(assert (=> bm!571569 (= call!571573 call!571576)))

(declare-fun b!6569494 () Bool)

(declare-fun e!3976489 () (InoxSet Context!11658))

(declare-fun e!3976492 () (InoxSet Context!11658))

(assert (=> b!6569494 (= e!3976489 e!3976492)))

(declare-fun c!1207609 () Bool)

(assert (=> b!6569494 (= c!1207609 ((_ is Concat!25290) (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))

(declare-fun b!6569495 () Bool)

(declare-fun e!3976491 () (InoxSet Context!11658))

(assert (=> b!6569495 (= e!3976491 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569496 () Bool)

(declare-fun e!3976487 () Bool)

(assert (=> b!6569496 (= e!3976487 (nullable!6438 (regOne!33402 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))))))))

(declare-fun call!571577 () (InoxSet Context!11658))

(declare-fun c!1207607 () Bool)

(declare-fun bm!571570 () Bool)

(assert (=> bm!571570 (= call!571577 (derivationStepZipperDown!1693 (ite c!1207610 (regOne!33403 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))) (ite c!1207607 (regTwo!33402 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))) (ite c!1207609 (regOne!33402 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))) (reg!16774 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))))))) (ite (or c!1207610 c!1207607) (ite c!1207541 lt!2408279 (Context!11659 call!571540)) (Context!11659 call!571573)) (h!71960 s!2326)))))

(declare-fun b!6569497 () Bool)

(assert (=> b!6569497 (= e!3976489 ((_ map or) call!571572 call!571575))))

(declare-fun b!6569498 () Bool)

(declare-fun c!1207606 () Bool)

(assert (=> b!6569498 (= c!1207606 ((_ is Star!16445) (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))

(assert (=> b!6569498 (= e!3976492 e!3976491)))

(declare-fun b!6569499 () Bool)

(declare-fun e!3976490 () (InoxSet Context!11658))

(assert (=> b!6569499 (= e!3976490 ((_ map or) call!571577 call!571572))))

(declare-fun bm!571571 () Bool)

(assert (=> bm!571571 (= call!571576 ($colon$colon!2286 (exprs!6329 (ite c!1207541 lt!2408279 (Context!11659 call!571540))) (ite (or c!1207607 c!1207609) (regTwo!33402 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))) (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))))))))

(declare-fun b!6569493 () Bool)

(assert (=> b!6569493 (= e!3976488 e!3976490)))

(assert (=> b!6569493 (= c!1207610 ((_ is Union!16445) (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))

(declare-fun c!1207608 () Bool)

(declare-fun d!2061138 () Bool)

(assert (=> d!2061138 (= c!1207608 (and ((_ is ElementMatch!16445) (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))) (= (c!1207368 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))) (h!71960 s!2326))))))

(assert (=> d!2061138 (= (derivationStepZipperDown!1693 (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))) (ite c!1207541 lt!2408279 (Context!11659 call!571540)) (h!71960 s!2326)) e!3976488)))

(declare-fun b!6569500 () Bool)

(assert (=> b!6569500 (= e!3976492 call!571574)))

(declare-fun b!6569501 () Bool)

(assert (=> b!6569501 (= e!3976491 call!571574)))

(declare-fun b!6569502 () Bool)

(assert (=> b!6569502 (= c!1207607 e!3976487)))

(declare-fun res!2696036 () Bool)

(assert (=> b!6569502 (=> (not res!2696036) (not e!3976487))))

(assert (=> b!6569502 (= res!2696036 ((_ is Concat!25290) (ite c!1207541 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))

(assert (=> b!6569502 (= e!3976490 e!3976489)))

(declare-fun bm!571572 () Bool)

(assert (=> bm!571572 (= call!571575 call!571577)))

(assert (= (and d!2061138 c!1207608) b!6569492))

(assert (= (and d!2061138 (not c!1207608)) b!6569493))

(assert (= (and b!6569493 c!1207610) b!6569499))

(assert (= (and b!6569493 (not c!1207610)) b!6569502))

(assert (= (and b!6569502 res!2696036) b!6569496))

(assert (= (and b!6569502 c!1207607) b!6569497))

(assert (= (and b!6569502 (not c!1207607)) b!6569494))

(assert (= (and b!6569494 c!1207609) b!6569500))

(assert (= (and b!6569494 (not c!1207609)) b!6569498))

(assert (= (and b!6569498 c!1207606) b!6569501))

(assert (= (and b!6569498 (not c!1207606)) b!6569495))

(assert (= (or b!6569500 b!6569501) bm!571569))

(assert (= (or b!6569500 b!6569501) bm!571567))

(assert (= (or b!6569497 bm!571569) bm!571571))

(assert (= (or b!6569497 bm!571567) bm!571572))

(assert (= (or b!6569499 b!6569497) bm!571568))

(assert (= (or b!6569499 bm!571572) bm!571570))

(declare-fun m!7351484 () Bool)

(assert (=> bm!571571 m!7351484))

(declare-fun m!7351486 () Bool)

(assert (=> b!6569492 m!7351486))

(declare-fun m!7351488 () Bool)

(assert (=> bm!571570 m!7351488))

(declare-fun m!7351490 () Bool)

(assert (=> bm!571568 m!7351490))

(declare-fun m!7351492 () Bool)

(assert (=> b!6569496 m!7351492))

(assert (=> bm!571532 d!2061138))

(declare-fun d!2061140 () Bool)

(assert (=> d!2061140 (= (nullable!6438 (h!71958 (exprs!6329 lt!2408292))) (nullableFct!2364 (h!71958 (exprs!6329 lt!2408292))))))

(declare-fun bs!1677969 () Bool)

(assert (= bs!1677969 d!2061140))

(declare-fun m!7351494 () Bool)

(assert (=> bs!1677969 m!7351494))

(assert (=> b!6568955 d!2061140))

(declare-fun bm!571573 () Bool)

(declare-fun call!571580 () (InoxSet Context!11658))

(declare-fun call!571581 () (InoxSet Context!11658))

(assert (=> bm!571573 (= call!571580 call!571581)))

(declare-fun call!571578 () (InoxSet Context!11658))

(declare-fun call!571582 () List!65634)

(declare-fun bm!571574 () Bool)

(declare-fun c!1207615 () Bool)

(assert (=> bm!571574 (= call!571578 (derivationStepZipperDown!1693 (ite c!1207615 (regTwo!33403 (h!71958 (exprs!6329 lt!2408267))) (regOne!33402 (h!71958 (exprs!6329 lt!2408267)))) (ite c!1207615 (Context!11659 (t!379278 (exprs!6329 lt!2408267))) (Context!11659 call!571582)) (h!71960 s!2326)))))

(declare-fun b!6569503 () Bool)

(declare-fun e!3976494 () (InoxSet Context!11658))

(assert (=> b!6569503 (= e!3976494 (store ((as const (Array Context!11658 Bool)) false) (Context!11659 (t!379278 (exprs!6329 lt!2408267))) true))))

(declare-fun bm!571575 () Bool)

(declare-fun call!571579 () List!65634)

(assert (=> bm!571575 (= call!571579 call!571582)))

(declare-fun b!6569505 () Bool)

(declare-fun e!3976495 () (InoxSet Context!11658))

(declare-fun e!3976498 () (InoxSet Context!11658))

(assert (=> b!6569505 (= e!3976495 e!3976498)))

(declare-fun c!1207614 () Bool)

(assert (=> b!6569505 (= c!1207614 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408267))))))

(declare-fun b!6569506 () Bool)

(declare-fun e!3976497 () (InoxSet Context!11658))

(assert (=> b!6569506 (= e!3976497 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569507 () Bool)

(declare-fun e!3976493 () Bool)

(assert (=> b!6569507 (= e!3976493 (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 lt!2408267)))))))

(declare-fun c!1207612 () Bool)

(declare-fun call!571583 () (InoxSet Context!11658))

(declare-fun bm!571576 () Bool)

(assert (=> bm!571576 (= call!571583 (derivationStepZipperDown!1693 (ite c!1207615 (regOne!33403 (h!71958 (exprs!6329 lt!2408267))) (ite c!1207612 (regTwo!33402 (h!71958 (exprs!6329 lt!2408267))) (ite c!1207614 (regOne!33402 (h!71958 (exprs!6329 lt!2408267))) (reg!16774 (h!71958 (exprs!6329 lt!2408267)))))) (ite (or c!1207615 c!1207612) (Context!11659 (t!379278 (exprs!6329 lt!2408267))) (Context!11659 call!571579)) (h!71960 s!2326)))))

(declare-fun b!6569508 () Bool)

(assert (=> b!6569508 (= e!3976495 ((_ map or) call!571578 call!571581))))

(declare-fun b!6569509 () Bool)

(declare-fun c!1207611 () Bool)

(assert (=> b!6569509 (= c!1207611 ((_ is Star!16445) (h!71958 (exprs!6329 lt!2408267))))))

(assert (=> b!6569509 (= e!3976498 e!3976497)))

(declare-fun b!6569510 () Bool)

(declare-fun e!3976496 () (InoxSet Context!11658))

(assert (=> b!6569510 (= e!3976496 ((_ map or) call!571583 call!571578))))

(declare-fun bm!571577 () Bool)

(assert (=> bm!571577 (= call!571582 ($colon$colon!2286 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408267)))) (ite (or c!1207612 c!1207614) (regTwo!33402 (h!71958 (exprs!6329 lt!2408267))) (h!71958 (exprs!6329 lt!2408267)))))))

(declare-fun b!6569504 () Bool)

(assert (=> b!6569504 (= e!3976494 e!3976496)))

(assert (=> b!6569504 (= c!1207615 ((_ is Union!16445) (h!71958 (exprs!6329 lt!2408267))))))

(declare-fun d!2061142 () Bool)

(declare-fun c!1207613 () Bool)

(assert (=> d!2061142 (= c!1207613 (and ((_ is ElementMatch!16445) (h!71958 (exprs!6329 lt!2408267))) (= (c!1207368 (h!71958 (exprs!6329 lt!2408267))) (h!71960 s!2326))))))

(assert (=> d!2061142 (= (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408267)) (Context!11659 (t!379278 (exprs!6329 lt!2408267))) (h!71960 s!2326)) e!3976494)))

(declare-fun b!6569511 () Bool)

(assert (=> b!6569511 (= e!3976498 call!571580)))

(declare-fun b!6569512 () Bool)

(assert (=> b!6569512 (= e!3976497 call!571580)))

(declare-fun b!6569513 () Bool)

(assert (=> b!6569513 (= c!1207612 e!3976493)))

(declare-fun res!2696037 () Bool)

(assert (=> b!6569513 (=> (not res!2696037) (not e!3976493))))

(assert (=> b!6569513 (= res!2696037 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408267))))))

(assert (=> b!6569513 (= e!3976496 e!3976495)))

(declare-fun bm!571578 () Bool)

(assert (=> bm!571578 (= call!571581 call!571583)))

(assert (= (and d!2061142 c!1207613) b!6569503))

(assert (= (and d!2061142 (not c!1207613)) b!6569504))

(assert (= (and b!6569504 c!1207615) b!6569510))

(assert (= (and b!6569504 (not c!1207615)) b!6569513))

(assert (= (and b!6569513 res!2696037) b!6569507))

(assert (= (and b!6569513 c!1207612) b!6569508))

(assert (= (and b!6569513 (not c!1207612)) b!6569505))

(assert (= (and b!6569505 c!1207614) b!6569511))

(assert (= (and b!6569505 (not c!1207614)) b!6569509))

(assert (= (and b!6569509 c!1207611) b!6569512))

(assert (= (and b!6569509 (not c!1207611)) b!6569506))

(assert (= (or b!6569511 b!6569512) bm!571575))

(assert (= (or b!6569511 b!6569512) bm!571573))

(assert (= (or b!6569508 bm!571575) bm!571577))

(assert (= (or b!6569508 bm!571573) bm!571578))

(assert (= (or b!6569510 b!6569508) bm!571574))

(assert (= (or b!6569510 bm!571578) bm!571576))

(declare-fun m!7351496 () Bool)

(assert (=> bm!571577 m!7351496))

(declare-fun m!7351498 () Bool)

(assert (=> b!6569503 m!7351498))

(declare-fun m!7351500 () Bool)

(assert (=> bm!571576 m!7351500))

(declare-fun m!7351502 () Bool)

(assert (=> bm!571574 m!7351502))

(declare-fun m!7351504 () Bool)

(assert (=> b!6569507 m!7351504))

(assert (=> bm!571466 d!2061142))

(declare-fun d!2061144 () Bool)

(assert (=> d!2061144 (= (Exists!3515 (ite c!1207410 lambda!365749 lambda!365750)) (choose!49072 (ite c!1207410 lambda!365749 lambda!365750)))))

(declare-fun bs!1677970 () Bool)

(assert (= bs!1677970 d!2061144))

(declare-fun m!7351506 () Bool)

(assert (=> bs!1677970 m!7351506))

(assert (=> bm!571462 d!2061144))

(assert (=> bm!571457 d!2061114))

(declare-fun d!2061146 () Bool)

(assert (=> d!2061146 (= (isEmpty!37757 (unfocusZipperList!1866 zl!343)) ((_ is Nil!65510) (unfocusZipperList!1866 zl!343)))))

(assert (=> b!6569075 d!2061146))

(declare-fun d!2061148 () Bool)

(declare-fun lambda!365810 () Int)

(declare-fun exists!2640 ((InoxSet Context!11658) Int) Bool)

(assert (=> d!2061148 (= (nullableZipper!2190 lt!2408291) (exists!2640 lt!2408291 lambda!365810))))

(declare-fun bs!1677971 () Bool)

(assert (= bs!1677971 d!2061148))

(declare-fun m!7351508 () Bool)

(assert (=> bs!1677971 m!7351508))

(assert (=> b!6568844 d!2061148))

(declare-fun d!2061150 () Bool)

(declare-fun c!1207618 () Bool)

(assert (=> d!2061150 (= c!1207618 (isEmpty!37760 (tail!12426 (t!379280 s!2326))))))

(declare-fun e!3976499 () Bool)

(assert (=> d!2061150 (= (matchZipper!2457 (derivationStepZipper!2411 lt!2408277 (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))) e!3976499)))

(declare-fun b!6569514 () Bool)

(assert (=> b!6569514 (= e!3976499 (nullableZipper!2190 (derivationStepZipper!2411 lt!2408277 (head!13340 (t!379280 s!2326)))))))

(declare-fun b!6569515 () Bool)

(assert (=> b!6569515 (= e!3976499 (matchZipper!2457 (derivationStepZipper!2411 (derivationStepZipper!2411 lt!2408277 (head!13340 (t!379280 s!2326))) (head!13340 (tail!12426 (t!379280 s!2326)))) (tail!12426 (tail!12426 (t!379280 s!2326)))))))

(assert (= (and d!2061150 c!1207618) b!6569514))

(assert (= (and d!2061150 (not c!1207618)) b!6569515))

(assert (=> d!2061150 m!7350970))

(assert (=> d!2061150 m!7351468))

(assert (=> b!6569514 m!7351022))

(declare-fun m!7351510 () Bool)

(assert (=> b!6569514 m!7351510))

(assert (=> b!6569515 m!7350970))

(assert (=> b!6569515 m!7351472))

(assert (=> b!6569515 m!7351022))

(assert (=> b!6569515 m!7351472))

(declare-fun m!7351512 () Bool)

(assert (=> b!6569515 m!7351512))

(assert (=> b!6569515 m!7350970))

(assert (=> b!6569515 m!7351476))

(assert (=> b!6569515 m!7351512))

(assert (=> b!6569515 m!7351476))

(declare-fun m!7351514 () Bool)

(assert (=> b!6569515 m!7351514))

(assert (=> b!6568843 d!2061150))

(declare-fun bs!1677972 () Bool)

(declare-fun d!2061152 () Bool)

(assert (= bs!1677972 (and d!2061152 b!6568635)))

(declare-fun lambda!365811 () Int)

(assert (=> bs!1677972 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365811 lambda!365735))))

(declare-fun bs!1677973 () Bool)

(assert (= bs!1677973 (and d!2061152 d!2060970)))

(assert (=> bs!1677973 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365811 lambda!365764))))

(declare-fun bs!1677974 () Bool)

(assert (= bs!1677974 (and d!2061152 d!2061130)))

(assert (=> bs!1677974 (= lambda!365811 lambda!365807)))

(assert (=> d!2061152 true))

(assert (=> d!2061152 (= (derivationStepZipper!2411 lt!2408277 (head!13340 (t!379280 s!2326))) (flatMap!1950 lt!2408277 lambda!365811))))

(declare-fun bs!1677975 () Bool)

(assert (= bs!1677975 d!2061152))

(declare-fun m!7351516 () Bool)

(assert (=> bs!1677975 m!7351516))

(assert (=> b!6568843 d!2061152))

(assert (=> b!6568843 d!2061132))

(assert (=> b!6568843 d!2061134))

(declare-fun b!6569516 () Bool)

(declare-fun e!3976501 () (InoxSet Context!11658))

(declare-fun call!571584 () (InoxSet Context!11658))

(assert (=> b!6569516 (= e!3976501 call!571584)))

(declare-fun b!6569518 () Bool)

(assert (=> b!6569518 (= e!3976501 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571579 () Bool)

(assert (=> bm!571579 (= call!571584 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408292))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408292)))))) (h!71960 s!2326)))))

(declare-fun b!6569519 () Bool)

(declare-fun e!3976500 () (InoxSet Context!11658))

(assert (=> b!6569519 (= e!3976500 e!3976501)))

(declare-fun c!1207619 () Bool)

(assert (=> b!6569519 (= c!1207619 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408292))))))))

(declare-fun b!6569520 () Bool)

(assert (=> b!6569520 (= e!3976500 ((_ map or) call!571584 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408292)))))) (h!71960 s!2326))))))

(declare-fun b!6569517 () Bool)

(declare-fun e!3976502 () Bool)

(assert (=> b!6569517 (= e!3976502 (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408292)))))))))

(declare-fun d!2061154 () Bool)

(declare-fun c!1207620 () Bool)

(assert (=> d!2061154 (= c!1207620 e!3976502)))

(declare-fun res!2696038 () Bool)

(assert (=> d!2061154 (=> (not res!2696038) (not e!3976502))))

(assert (=> d!2061154 (= res!2696038 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408292))))))))

(assert (=> d!2061154 (= (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408292))) (h!71960 s!2326)) e!3976500)))

(assert (= (and d!2061154 res!2696038) b!6569517))

(assert (= (and d!2061154 c!1207620) b!6569520))

(assert (= (and d!2061154 (not c!1207620)) b!6569519))

(assert (= (and b!6569519 c!1207619) b!6569516))

(assert (= (and b!6569519 (not c!1207619)) b!6569518))

(assert (= (or b!6569520 b!6569516) bm!571579))

(declare-fun m!7351518 () Bool)

(assert (=> bm!571579 m!7351518))

(declare-fun m!7351520 () Bool)

(assert (=> b!6569520 m!7351520))

(declare-fun m!7351522 () Bool)

(assert (=> b!6569517 m!7351522))

(assert (=> b!6568958 d!2061154))

(declare-fun d!2061156 () Bool)

(assert (=> d!2061156 (= (isEmpty!37757 (tail!12427 (exprs!6329 (h!71959 zl!343)))) ((_ is Nil!65510) (tail!12427 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6569011 d!2061156))

(declare-fun d!2061158 () Bool)

(assert (=> d!2061158 (= (tail!12427 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))

(assert (=> b!6569011 d!2061158))

(declare-fun d!2061160 () Bool)

(declare-fun c!1207621 () Bool)

(assert (=> d!2061160 (= c!1207621 (isEmpty!37760 (tail!12426 (t!379280 s!2326))))))

(declare-fun e!3976503 () Bool)

(assert (=> d!2061160 (= (matchZipper!2457 (derivationStepZipper!2411 lt!2408287 (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))) e!3976503)))

(declare-fun b!6569521 () Bool)

(assert (=> b!6569521 (= e!3976503 (nullableZipper!2190 (derivationStepZipper!2411 lt!2408287 (head!13340 (t!379280 s!2326)))))))

(declare-fun b!6569522 () Bool)

(assert (=> b!6569522 (= e!3976503 (matchZipper!2457 (derivationStepZipper!2411 (derivationStepZipper!2411 lt!2408287 (head!13340 (t!379280 s!2326))) (head!13340 (tail!12426 (t!379280 s!2326)))) (tail!12426 (tail!12426 (t!379280 s!2326)))))))

(assert (= (and d!2061160 c!1207621) b!6569521))

(assert (= (and d!2061160 (not c!1207621)) b!6569522))

(assert (=> d!2061160 m!7350970))

(assert (=> d!2061160 m!7351468))

(assert (=> b!6569521 m!7351040))

(declare-fun m!7351524 () Bool)

(assert (=> b!6569521 m!7351524))

(assert (=> b!6569522 m!7350970))

(assert (=> b!6569522 m!7351472))

(assert (=> b!6569522 m!7351040))

(assert (=> b!6569522 m!7351472))

(declare-fun m!7351526 () Bool)

(assert (=> b!6569522 m!7351526))

(assert (=> b!6569522 m!7350970))

(assert (=> b!6569522 m!7351476))

(assert (=> b!6569522 m!7351526))

(assert (=> b!6569522 m!7351476))

(declare-fun m!7351528 () Bool)

(assert (=> b!6569522 m!7351528))

(assert (=> b!6568847 d!2061160))

(declare-fun bs!1677976 () Bool)

(declare-fun d!2061162 () Bool)

(assert (= bs!1677976 (and d!2061162 b!6568635)))

(declare-fun lambda!365812 () Int)

(assert (=> bs!1677976 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365812 lambda!365735))))

(declare-fun bs!1677977 () Bool)

(assert (= bs!1677977 (and d!2061162 d!2060970)))

(assert (=> bs!1677977 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365812 lambda!365764))))

(declare-fun bs!1677978 () Bool)

(assert (= bs!1677978 (and d!2061162 d!2061130)))

(assert (=> bs!1677978 (= lambda!365812 lambda!365807)))

(declare-fun bs!1677979 () Bool)

(assert (= bs!1677979 (and d!2061162 d!2061152)))

(assert (=> bs!1677979 (= lambda!365812 lambda!365811)))

(assert (=> d!2061162 true))

(assert (=> d!2061162 (= (derivationStepZipper!2411 lt!2408287 (head!13340 (t!379280 s!2326))) (flatMap!1950 lt!2408287 lambda!365812))))

(declare-fun bs!1677980 () Bool)

(assert (= bs!1677980 d!2061162))

(declare-fun m!7351530 () Bool)

(assert (=> bs!1677980 m!7351530))

(assert (=> b!6568847 d!2061162))

(assert (=> b!6568847 d!2061132))

(assert (=> b!6568847 d!2061134))

(declare-fun d!2061164 () Bool)

(assert (=> d!2061164 (= (nullable!6438 (regOne!33402 (reg!16774 (regOne!33402 r!7292)))) (nullableFct!2364 (regOne!33402 (reg!16774 (regOne!33402 r!7292)))))))

(declare-fun bs!1677981 () Bool)

(assert (= bs!1677981 d!2061164))

(declare-fun m!7351532 () Bool)

(assert (=> bs!1677981 m!7351532))

(assert (=> b!6568907 d!2061164))

(assert (=> bs!1677943 d!2060966))

(declare-fun b!6569523 () Bool)

(declare-fun e!3976505 () Bool)

(declare-fun call!571587 () Bool)

(assert (=> b!6569523 (= e!3976505 call!571587)))

(declare-fun bm!571580 () Bool)

(declare-fun call!571586 () Bool)

(declare-fun c!1207622 () Bool)

(assert (=> bm!571580 (= call!571586 (validRegex!8181 (ite c!1207622 (regOne!33403 lt!2408353) (regOne!33402 lt!2408353))))))

(declare-fun b!6569525 () Bool)

(declare-fun e!3976510 () Bool)

(declare-fun e!3976504 () Bool)

(assert (=> b!6569525 (= e!3976510 e!3976504)))

(assert (=> b!6569525 (= c!1207622 ((_ is Union!16445) lt!2408353))))

(declare-fun b!6569526 () Bool)

(declare-fun e!3976508 () Bool)

(declare-fun call!571585 () Bool)

(assert (=> b!6569526 (= e!3976508 call!571585)))

(declare-fun b!6569527 () Bool)

(declare-fun e!3976507 () Bool)

(assert (=> b!6569527 (= e!3976507 call!571587)))

(declare-fun b!6569528 () Bool)

(assert (=> b!6569528 (= e!3976510 e!3976508)))

(declare-fun res!2696043 () Bool)

(assert (=> b!6569528 (= res!2696043 (not (nullable!6438 (reg!16774 lt!2408353))))))

(assert (=> b!6569528 (=> (not res!2696043) (not e!3976508))))

(declare-fun bm!571581 () Bool)

(declare-fun c!1207623 () Bool)

(assert (=> bm!571581 (= call!571585 (validRegex!8181 (ite c!1207623 (reg!16774 lt!2408353) (ite c!1207622 (regTwo!33403 lt!2408353) (regTwo!33402 lt!2408353)))))))

(declare-fun b!6569524 () Bool)

(declare-fun res!2696039 () Bool)

(assert (=> b!6569524 (=> (not res!2696039) (not e!3976507))))

(assert (=> b!6569524 (= res!2696039 call!571586)))

(assert (=> b!6569524 (= e!3976504 e!3976507)))

(declare-fun d!2061166 () Bool)

(declare-fun res!2696040 () Bool)

(declare-fun e!3976506 () Bool)

(assert (=> d!2061166 (=> res!2696040 e!3976506)))

(assert (=> d!2061166 (= res!2696040 ((_ is ElementMatch!16445) lt!2408353))))

(assert (=> d!2061166 (= (validRegex!8181 lt!2408353) e!3976506)))

(declare-fun b!6569529 () Bool)

(declare-fun res!2696042 () Bool)

(declare-fun e!3976509 () Bool)

(assert (=> b!6569529 (=> res!2696042 e!3976509)))

(assert (=> b!6569529 (= res!2696042 (not ((_ is Concat!25290) lt!2408353)))))

(assert (=> b!6569529 (= e!3976504 e!3976509)))

(declare-fun b!6569530 () Bool)

(assert (=> b!6569530 (= e!3976506 e!3976510)))

(assert (=> b!6569530 (= c!1207623 ((_ is Star!16445) lt!2408353))))

(declare-fun bm!571582 () Bool)

(assert (=> bm!571582 (= call!571587 call!571585)))

(declare-fun b!6569531 () Bool)

(assert (=> b!6569531 (= e!3976509 e!3976505)))

(declare-fun res!2696041 () Bool)

(assert (=> b!6569531 (=> (not res!2696041) (not e!3976505))))

(assert (=> b!6569531 (= res!2696041 call!571586)))

(assert (= (and d!2061166 (not res!2696040)) b!6569530))

(assert (= (and b!6569530 c!1207623) b!6569528))

(assert (= (and b!6569530 (not c!1207623)) b!6569525))

(assert (= (and b!6569528 res!2696043) b!6569526))

(assert (= (and b!6569525 c!1207622) b!6569524))

(assert (= (and b!6569525 (not c!1207622)) b!6569529))

(assert (= (and b!6569524 res!2696039) b!6569527))

(assert (= (and b!6569529 (not res!2696042)) b!6569531))

(assert (= (and b!6569531 res!2696041) b!6569523))

(assert (= (or b!6569527 b!6569523) bm!571582))

(assert (= (or b!6569524 b!6569531) bm!571580))

(assert (= (or b!6569526 bm!571582) bm!571581))

(declare-fun m!7351534 () Bool)

(assert (=> bm!571580 m!7351534))

(declare-fun m!7351536 () Bool)

(assert (=> b!6569528 m!7351536))

(declare-fun m!7351538 () Bool)

(assert (=> bm!571581 m!7351538))

(assert (=> d!2061002 d!2061166))

(declare-fun d!2061168 () Bool)

(declare-fun res!2696048 () Bool)

(declare-fun e!3976515 () Bool)

(assert (=> d!2061168 (=> res!2696048 e!3976515)))

(assert (=> d!2061168 (= res!2696048 ((_ is Nil!65510) (unfocusZipperList!1866 zl!343)))))

(assert (=> d!2061168 (= (forall!15616 (unfocusZipperList!1866 zl!343) lambda!365776) e!3976515)))

(declare-fun b!6569536 () Bool)

(declare-fun e!3976516 () Bool)

(assert (=> b!6569536 (= e!3976515 e!3976516)))

(declare-fun res!2696049 () Bool)

(assert (=> b!6569536 (=> (not res!2696049) (not e!3976516))))

(declare-fun dynLambda!26064 (Int Regex!16445) Bool)

(assert (=> b!6569536 (= res!2696049 (dynLambda!26064 lambda!365776 (h!71958 (unfocusZipperList!1866 zl!343))))))

(declare-fun b!6569537 () Bool)

(assert (=> b!6569537 (= e!3976516 (forall!15616 (t!379278 (unfocusZipperList!1866 zl!343)) lambda!365776))))

(assert (= (and d!2061168 (not res!2696048)) b!6569536))

(assert (= (and b!6569536 res!2696049) b!6569537))

(declare-fun b_lambda!248449 () Bool)

(assert (=> (not b_lambda!248449) (not b!6569536)))

(declare-fun m!7351540 () Bool)

(assert (=> b!6569536 m!7351540))

(declare-fun m!7351542 () Bool)

(assert (=> b!6569537 m!7351542))

(assert (=> d!2061002 d!2061168))

(assert (=> d!2060960 d!2060956))

(assert (=> d!2060960 d!2060954))

(declare-fun d!2061170 () Bool)

(assert (=> d!2061170 (= (matchR!8628 r!7292 s!2326) (matchRSpec!3546 r!7292 s!2326))))

(assert (=> d!2061170 true))

(declare-fun _$88!5254 () Unit!159115)

(assert (=> d!2061170 (= (choose!49062 r!7292 s!2326) _$88!5254)))

(declare-fun bs!1677982 () Bool)

(assert (= bs!1677982 d!2061170))

(assert (=> bs!1677982 m!7350768))

(assert (=> bs!1677982 m!7350766))

(assert (=> d!2060960 d!2061170))

(assert (=> d!2060960 d!2061008))

(declare-fun d!2061172 () Bool)

(assert (=> d!2061172 (= (nullable!6438 (h!71958 (exprs!6329 lt!2408279))) (nullableFct!2364 (h!71958 (exprs!6329 lt!2408279))))))

(declare-fun bs!1677983 () Bool)

(assert (= bs!1677983 d!2061172))

(declare-fun m!7351544 () Bool)

(assert (=> bs!1677983 m!7351544))

(assert (=> b!6569176 d!2061172))

(declare-fun d!2061174 () Bool)

(assert (=> d!2061174 (= (isEmpty!37760 (tail!12426 s!2326)) ((_ is Nil!65512) (tail!12426 s!2326)))))

(assert (=> b!6568936 d!2061174))

(declare-fun d!2061176 () Bool)

(assert (=> d!2061176 (= (tail!12426 s!2326) (t!379280 s!2326))))

(assert (=> b!6568936 d!2061176))

(declare-fun d!2061178 () Bool)

(assert (=> d!2061178 (= (isUnion!1262 lt!2408353) ((_ is Union!16445) lt!2408353))))

(assert (=> b!6569079 d!2061178))

(declare-fun d!2061180 () Bool)

(assert (=> d!2061180 (= (head!13342 (exprs!6329 (h!71959 zl!343))) (h!71958 (exprs!6329 (h!71959 zl!343))))))

(assert (=> b!6569007 d!2061180))

(declare-fun d!2061182 () Bool)

(assert (=> d!2061182 (= (Exists!3515 lambda!365802) (choose!49072 lambda!365802))))

(declare-fun bs!1677984 () Bool)

(assert (= bs!1677984 d!2061182))

(declare-fun m!7351546 () Bool)

(assert (=> bs!1677984 m!7351546))

(assert (=> d!2061088 d!2061182))

(declare-fun d!2061184 () Bool)

(assert (=> d!2061184 (= (Exists!3515 lambda!365803) (choose!49072 lambda!365803))))

(declare-fun bs!1677985 () Bool)

(assert (= bs!1677985 d!2061184))

(declare-fun m!7351548 () Bool)

(assert (=> bs!1677985 m!7351548))

(assert (=> d!2061088 d!2061184))

(declare-fun bs!1677986 () Bool)

(declare-fun d!2061186 () Bool)

(assert (= bs!1677986 (and d!2061186 b!6568921)))

(declare-fun lambda!365817 () Int)

(assert (=> bs!1677986 (not (= lambda!365817 lambda!365761))))

(declare-fun bs!1677987 () Bool)

(assert (= bs!1677987 (and d!2061186 b!6568784)))

(assert (=> bs!1677987 (not (= lambda!365817 lambda!365750))))

(declare-fun bs!1677988 () Bool)

(assert (= bs!1677988 (and d!2061186 d!2061088)))

(assert (=> bs!1677988 (not (= lambda!365817 lambda!365803))))

(declare-fun bs!1677989 () Bool)

(assert (= bs!1677989 (and d!2061186 b!6568923)))

(assert (=> bs!1677989 (not (= lambda!365817 lambda!365760))))

(declare-fun bs!1677990 () Bool)

(assert (= bs!1677990 (and d!2061186 b!6568614)))

(assert (=> bs!1677990 (not (= lambda!365817 lambda!365734))))

(declare-fun bs!1677991 () Bool)

(assert (= bs!1677991 (and d!2061186 b!6569486)))

(assert (=> bs!1677991 (not (= lambda!365817 lambda!365806))))

(assert (=> bs!1677988 (= lambda!365817 lambda!365802)))

(declare-fun bs!1677992 () Bool)

(assert (= bs!1677992 (and d!2061186 b!6568786)))

(assert (=> bs!1677992 (not (= lambda!365817 lambda!365749))))

(declare-fun bs!1677993 () Bool)

(assert (= bs!1677993 (and d!2061186 d!2061064)))

(assert (=> bs!1677993 (= lambda!365817 lambda!365793)))

(declare-fun bs!1677994 () Bool)

(assert (= bs!1677994 (and d!2061186 b!6569488)))

(assert (=> bs!1677994 (not (= lambda!365817 lambda!365805))))

(assert (=> bs!1677990 (= lambda!365817 lambda!365733)))

(assert (=> d!2061186 true))

(assert (=> d!2061186 true))

(assert (=> d!2061186 true))

(declare-fun lambda!365818 () Int)

(assert (=> bs!1677986 (= lambda!365818 lambda!365761)))

(assert (=> bs!1677987 (= (and (= (regOne!33402 r!7292) (regOne!33402 lt!2408266)) (= (regTwo!33402 r!7292) (regTwo!33402 lt!2408266))) (= lambda!365818 lambda!365750))))

(assert (=> bs!1677988 (= lambda!365818 lambda!365803)))

(assert (=> bs!1677989 (not (= lambda!365818 lambda!365760))))

(declare-fun bs!1677995 () Bool)

(assert (= bs!1677995 d!2061186))

(assert (=> bs!1677995 (not (= lambda!365818 lambda!365817))))

(assert (=> bs!1677990 (= lambda!365818 lambda!365734)))

(assert (=> bs!1677991 (= (and (= (regOne!33402 r!7292) (regOne!33402 (regTwo!33403 r!7292))) (= (regTwo!33402 r!7292) (regTwo!33402 (regTwo!33403 r!7292)))) (= lambda!365818 lambda!365806))))

(assert (=> bs!1677988 (not (= lambda!365818 lambda!365802))))

(assert (=> bs!1677992 (not (= lambda!365818 lambda!365749))))

(assert (=> bs!1677993 (not (= lambda!365818 lambda!365793))))

(assert (=> bs!1677994 (not (= lambda!365818 lambda!365805))))

(assert (=> bs!1677990 (not (= lambda!365818 lambda!365733))))

(assert (=> d!2061186 true))

(assert (=> d!2061186 true))

(assert (=> d!2061186 true))

(assert (=> d!2061186 (= (Exists!3515 lambda!365817) (Exists!3515 lambda!365818))))

(assert (=> d!2061186 true))

(declare-fun _$90!2408 () Unit!159115)

(assert (=> d!2061186 (= (choose!49074 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326) _$90!2408)))

(declare-fun m!7351550 () Bool)

(assert (=> bs!1677995 m!7351550))

(declare-fun m!7351552 () Bool)

(assert (=> bs!1677995 m!7351552))

(assert (=> d!2061088 d!2061186))

(declare-fun b!6569546 () Bool)

(declare-fun e!3976522 () Bool)

(declare-fun call!571590 () Bool)

(assert (=> b!6569546 (= e!3976522 call!571590)))

(declare-fun bm!571583 () Bool)

(declare-fun call!571589 () Bool)

(declare-fun c!1207624 () Bool)

(assert (=> bm!571583 (= call!571589 (validRegex!8181 (ite c!1207624 (regOne!33403 (regOne!33402 r!7292)) (regOne!33402 (regOne!33402 r!7292)))))))

(declare-fun b!6569548 () Bool)

(declare-fun e!3976527 () Bool)

(declare-fun e!3976521 () Bool)

(assert (=> b!6569548 (= e!3976527 e!3976521)))

(assert (=> b!6569548 (= c!1207624 ((_ is Union!16445) (regOne!33402 r!7292)))))

(declare-fun b!6569549 () Bool)

(declare-fun e!3976525 () Bool)

(declare-fun call!571588 () Bool)

(assert (=> b!6569549 (= e!3976525 call!571588)))

(declare-fun b!6569550 () Bool)

(declare-fun e!3976524 () Bool)

(assert (=> b!6569550 (= e!3976524 call!571590)))

(declare-fun b!6569551 () Bool)

(assert (=> b!6569551 (= e!3976527 e!3976525)))

(declare-fun res!2696062 () Bool)

(assert (=> b!6569551 (= res!2696062 (not (nullable!6438 (reg!16774 (regOne!33402 r!7292)))))))

(assert (=> b!6569551 (=> (not res!2696062) (not e!3976525))))

(declare-fun bm!571584 () Bool)

(declare-fun c!1207625 () Bool)

(assert (=> bm!571584 (= call!571588 (validRegex!8181 (ite c!1207625 (reg!16774 (regOne!33402 r!7292)) (ite c!1207624 (regTwo!33403 (regOne!33402 r!7292)) (regTwo!33402 (regOne!33402 r!7292))))))))

(declare-fun b!6569547 () Bool)

(declare-fun res!2696058 () Bool)

(assert (=> b!6569547 (=> (not res!2696058) (not e!3976524))))

(assert (=> b!6569547 (= res!2696058 call!571589)))

(assert (=> b!6569547 (= e!3976521 e!3976524)))

(declare-fun d!2061188 () Bool)

(declare-fun res!2696059 () Bool)

(declare-fun e!3976523 () Bool)

(assert (=> d!2061188 (=> res!2696059 e!3976523)))

(assert (=> d!2061188 (= res!2696059 ((_ is ElementMatch!16445) (regOne!33402 r!7292)))))

(assert (=> d!2061188 (= (validRegex!8181 (regOne!33402 r!7292)) e!3976523)))

(declare-fun b!6569552 () Bool)

(declare-fun res!2696061 () Bool)

(declare-fun e!3976526 () Bool)

(assert (=> b!6569552 (=> res!2696061 e!3976526)))

(assert (=> b!6569552 (= res!2696061 (not ((_ is Concat!25290) (regOne!33402 r!7292))))))

(assert (=> b!6569552 (= e!3976521 e!3976526)))

(declare-fun b!6569553 () Bool)

(assert (=> b!6569553 (= e!3976523 e!3976527)))

(assert (=> b!6569553 (= c!1207625 ((_ is Star!16445) (regOne!33402 r!7292)))))

(declare-fun bm!571585 () Bool)

(assert (=> bm!571585 (= call!571590 call!571588)))

(declare-fun b!6569554 () Bool)

(assert (=> b!6569554 (= e!3976526 e!3976522)))

(declare-fun res!2696060 () Bool)

(assert (=> b!6569554 (=> (not res!2696060) (not e!3976522))))

(assert (=> b!6569554 (= res!2696060 call!571589)))

(assert (= (and d!2061188 (not res!2696059)) b!6569553))

(assert (= (and b!6569553 c!1207625) b!6569551))

(assert (= (and b!6569553 (not c!1207625)) b!6569548))

(assert (= (and b!6569551 res!2696062) b!6569549))

(assert (= (and b!6569548 c!1207624) b!6569547))

(assert (= (and b!6569548 (not c!1207624)) b!6569552))

(assert (= (and b!6569547 res!2696058) b!6569550))

(assert (= (and b!6569552 (not res!2696061)) b!6569554))

(assert (= (and b!6569554 res!2696060) b!6569546))

(assert (= (or b!6569550 b!6569546) bm!571585))

(assert (= (or b!6569547 b!6569554) bm!571583))

(assert (= (or b!6569549 bm!571585) bm!571584))

(declare-fun m!7351554 () Bool)

(assert (=> bm!571583 m!7351554))

(declare-fun m!7351556 () Bool)

(assert (=> b!6569551 m!7351556))

(declare-fun m!7351558 () Bool)

(assert (=> bm!571584 m!7351558))

(assert (=> d!2061088 d!2061188))

(declare-fun d!2061190 () Bool)

(assert (=> d!2061190 true))

(assert (=> d!2061190 true))

(declare-fun res!2696065 () Bool)

(assert (=> d!2061190 (= (choose!49072 lambda!365734) res!2696065)))

(assert (=> d!2061062 d!2061190))

(assert (=> b!6569181 d!2061016))

(declare-fun d!2061192 () Bool)

(assert (=> d!2061192 (= (isConcat!1345 lt!2408348) ((_ is Concat!25290) lt!2408348))))

(assert (=> b!6569013 d!2061192))

(declare-fun bs!1677996 () Bool)

(declare-fun d!2061194 () Bool)

(assert (= bs!1677996 (and d!2061194 d!2060886)))

(declare-fun lambda!365819 () Int)

(assert (=> bs!1677996 (= lambda!365819 lambda!365738)))

(declare-fun bs!1677997 () Bool)

(assert (= bs!1677997 (and d!2061194 d!2060990)))

(assert (=> bs!1677997 (= lambda!365819 lambda!365769)))

(declare-fun bs!1677998 () Bool)

(assert (= bs!1677998 (and d!2061194 d!2060998)))

(assert (=> bs!1677998 (= lambda!365819 lambda!365773)))

(declare-fun bs!1677999 () Bool)

(assert (= bs!1677999 (and d!2061194 d!2061002)))

(assert (=> bs!1677999 (= lambda!365819 lambda!365776)))

(declare-fun bs!1678000 () Bool)

(assert (= bs!1678000 (and d!2061194 d!2061006)))

(assert (=> bs!1678000 (= lambda!365819 lambda!365783)))

(declare-fun bs!1678001 () Bool)

(assert (= bs!1678001 (and d!2061194 d!2060992)))

(assert (=> bs!1678001 (= lambda!365819 lambda!365772)))

(declare-fun bs!1678002 () Bool)

(assert (= bs!1678002 (and d!2061194 d!2061118)))

(assert (=> bs!1678002 (= lambda!365819 lambda!365804)))

(assert (=> d!2061194 (= (inv!84359 (h!71959 (t!379279 zl!343))) (forall!15616 (exprs!6329 (h!71959 (t!379279 zl!343))) lambda!365819))))

(declare-fun bs!1678003 () Bool)

(assert (= bs!1678003 d!2061194))

(declare-fun m!7351560 () Bool)

(assert (=> bs!1678003 m!7351560))

(assert (=> b!6569422 d!2061194))

(declare-fun d!2061196 () Bool)

(assert (=> d!2061196 (= (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))) (nullableFct!2364 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun bs!1678004 () Bool)

(assert (= bs!1678004 d!2061196))

(declare-fun m!7351562 () Bool)

(assert (=> bs!1678004 m!7351562))

(assert (=> b!6569163 d!2061196))

(declare-fun d!2061198 () Bool)

(assert (=> d!2061198 (= (Exists!3515 (ite c!1207462 lambda!365760 lambda!365761)) (choose!49072 (ite c!1207462 lambda!365760 lambda!365761)))))

(declare-fun bs!1678005 () Bool)

(assert (= bs!1678005 d!2061198))

(declare-fun m!7351564 () Bool)

(assert (=> bs!1678005 m!7351564))

(assert (=> bm!571504 d!2061198))

(declare-fun d!2061200 () Bool)

(assert (=> d!2061200 (= (isDefined!13039 lt!2408375) (not (isEmpty!37762 lt!2408375)))))

(declare-fun bs!1678006 () Bool)

(assert (= bs!1678006 d!2061200))

(declare-fun m!7351566 () Bool)

(assert (=> bs!1678006 m!7351566))

(assert (=> d!2061032 d!2061200))

(declare-fun b!6569555 () Bool)

(declare-fun e!3976531 () Bool)

(declare-fun lt!2408395 () Bool)

(declare-fun call!571591 () Bool)

(assert (=> b!6569555 (= e!3976531 (= lt!2408395 call!571591))))

(declare-fun b!6569556 () Bool)

(declare-fun res!2696069 () Bool)

(declare-fun e!3976533 () Bool)

(assert (=> b!6569556 (=> res!2696069 e!3976533)))

(assert (=> b!6569556 (= res!2696069 (not (isEmpty!37760 (tail!12426 Nil!65512))))))

(declare-fun b!6569557 () Bool)

(assert (=> b!6569557 (= e!3976533 (not (= (head!13340 Nil!65512) (c!1207368 (regOne!33402 r!7292)))))))

(declare-fun bm!571586 () Bool)

(assert (=> bm!571586 (= call!571591 (isEmpty!37760 Nil!65512))))

(declare-fun b!6569559 () Bool)

(declare-fun e!3976529 () Bool)

(assert (=> b!6569559 (= e!3976531 e!3976529)))

(declare-fun c!1207626 () Bool)

(assert (=> b!6569559 (= c!1207626 ((_ is EmptyLang!16445) (regOne!33402 r!7292)))))

(declare-fun b!6569560 () Bool)

(declare-fun e!3976532 () Bool)

(assert (=> b!6569560 (= e!3976532 (nullable!6438 (regOne!33402 r!7292)))))

(declare-fun b!6569561 () Bool)

(declare-fun res!2696070 () Bool)

(declare-fun e!3976530 () Bool)

(assert (=> b!6569561 (=> res!2696070 e!3976530)))

(declare-fun e!3976528 () Bool)

(assert (=> b!6569561 (= res!2696070 e!3976528)))

(declare-fun res!2696067 () Bool)

(assert (=> b!6569561 (=> (not res!2696067) (not e!3976528))))

(assert (=> b!6569561 (= res!2696067 lt!2408395)))

(declare-fun b!6569562 () Bool)

(assert (=> b!6569562 (= e!3976529 (not lt!2408395))))

(declare-fun b!6569563 () Bool)

(declare-fun e!3976534 () Bool)

(assert (=> b!6569563 (= e!3976534 e!3976533)))

(declare-fun res!2696071 () Bool)

(assert (=> b!6569563 (=> res!2696071 e!3976533)))

(assert (=> b!6569563 (= res!2696071 call!571591)))

(declare-fun b!6569564 () Bool)

(declare-fun res!2696073 () Bool)

(assert (=> b!6569564 (=> res!2696073 e!3976530)))

(assert (=> b!6569564 (= res!2696073 (not ((_ is ElementMatch!16445) (regOne!33402 r!7292))))))

(assert (=> b!6569564 (= e!3976529 e!3976530)))

(declare-fun b!6569565 () Bool)

(assert (=> b!6569565 (= e!3976532 (matchR!8628 (derivativeStep!5128 (regOne!33402 r!7292) (head!13340 Nil!65512)) (tail!12426 Nil!65512)))))

(declare-fun b!6569566 () Bool)

(declare-fun res!2696072 () Bool)

(assert (=> b!6569566 (=> (not res!2696072) (not e!3976528))))

(assert (=> b!6569566 (= res!2696072 (not call!571591))))

(declare-fun b!6569558 () Bool)

(declare-fun res!2696066 () Bool)

(assert (=> b!6569558 (=> (not res!2696066) (not e!3976528))))

(assert (=> b!6569558 (= res!2696066 (isEmpty!37760 (tail!12426 Nil!65512)))))

(declare-fun d!2061202 () Bool)

(assert (=> d!2061202 e!3976531))

(declare-fun c!1207628 () Bool)

(assert (=> d!2061202 (= c!1207628 ((_ is EmptyExpr!16445) (regOne!33402 r!7292)))))

(assert (=> d!2061202 (= lt!2408395 e!3976532)))

(declare-fun c!1207627 () Bool)

(assert (=> d!2061202 (= c!1207627 (isEmpty!37760 Nil!65512))))

(assert (=> d!2061202 (validRegex!8181 (regOne!33402 r!7292))))

(assert (=> d!2061202 (= (matchR!8628 (regOne!33402 r!7292) Nil!65512) lt!2408395)))

(declare-fun b!6569567 () Bool)

(assert (=> b!6569567 (= e!3976530 e!3976534)))

(declare-fun res!2696068 () Bool)

(assert (=> b!6569567 (=> (not res!2696068) (not e!3976534))))

(assert (=> b!6569567 (= res!2696068 (not lt!2408395))))

(declare-fun b!6569568 () Bool)

(assert (=> b!6569568 (= e!3976528 (= (head!13340 Nil!65512) (c!1207368 (regOne!33402 r!7292))))))

(assert (= (and d!2061202 c!1207627) b!6569560))

(assert (= (and d!2061202 (not c!1207627)) b!6569565))

(assert (= (and d!2061202 c!1207628) b!6569555))

(assert (= (and d!2061202 (not c!1207628)) b!6569559))

(assert (= (and b!6569559 c!1207626) b!6569562))

(assert (= (and b!6569559 (not c!1207626)) b!6569564))

(assert (= (and b!6569564 (not res!2696073)) b!6569561))

(assert (= (and b!6569561 res!2696067) b!6569566))

(assert (= (and b!6569566 res!2696072) b!6569558))

(assert (= (and b!6569558 res!2696066) b!6569568))

(assert (= (and b!6569561 (not res!2696070)) b!6569567))

(assert (= (and b!6569567 res!2696068) b!6569563))

(assert (= (and b!6569563 (not res!2696071)) b!6569556))

(assert (= (and b!6569556 (not res!2696069)) b!6569557))

(assert (= (or b!6569555 b!6569566 b!6569563) bm!571586))

(declare-fun m!7351568 () Bool)

(assert (=> b!6569556 m!7351568))

(assert (=> b!6569556 m!7351568))

(declare-fun m!7351570 () Bool)

(assert (=> b!6569556 m!7351570))

(declare-fun m!7351572 () Bool)

(assert (=> b!6569565 m!7351572))

(assert (=> b!6569565 m!7351572))

(declare-fun m!7351574 () Bool)

(assert (=> b!6569565 m!7351574))

(assert (=> b!6569565 m!7351568))

(assert (=> b!6569565 m!7351574))

(assert (=> b!6569565 m!7351568))

(declare-fun m!7351576 () Bool)

(assert (=> b!6569565 m!7351576))

(declare-fun m!7351578 () Bool)

(assert (=> b!6569560 m!7351578))

(assert (=> b!6569557 m!7351572))

(declare-fun m!7351580 () Bool)

(assert (=> d!2061202 m!7351580))

(assert (=> d!2061202 m!7351348))

(assert (=> b!6569558 m!7351568))

(assert (=> b!6569558 m!7351568))

(assert (=> b!6569558 m!7351570))

(assert (=> bm!571586 m!7351580))

(assert (=> b!6569568 m!7351572))

(assert (=> d!2061032 d!2061202))

(assert (=> d!2061032 d!2061188))

(declare-fun b!6569577 () Bool)

(declare-fun e!3976539 () List!65636)

(assert (=> b!6569577 (= e!3976539 (_2!36727 (get!22749 lt!2408375)))))

(declare-fun b!6569578 () Bool)

(assert (=> b!6569578 (= e!3976539 (Cons!65512 (h!71960 (_1!36727 (get!22749 lt!2408375))) (++!14591 (t!379280 (_1!36727 (get!22749 lt!2408375))) (_2!36727 (get!22749 lt!2408375)))))))

(declare-fun d!2061204 () Bool)

(declare-fun e!3976540 () Bool)

(assert (=> d!2061204 e!3976540))

(declare-fun res!2696079 () Bool)

(assert (=> d!2061204 (=> (not res!2696079) (not e!3976540))))

(declare-fun lt!2408398 () List!65636)

(declare-fun content!12615 (List!65636) (InoxSet C!33160))

(assert (=> d!2061204 (= res!2696079 (= (content!12615 lt!2408398) ((_ map or) (content!12615 (_1!36727 (get!22749 lt!2408375))) (content!12615 (_2!36727 (get!22749 lt!2408375))))))))

(assert (=> d!2061204 (= lt!2408398 e!3976539)))

(declare-fun c!1207631 () Bool)

(assert (=> d!2061204 (= c!1207631 ((_ is Nil!65512) (_1!36727 (get!22749 lt!2408375))))))

(assert (=> d!2061204 (= (++!14591 (_1!36727 (get!22749 lt!2408375)) (_2!36727 (get!22749 lt!2408375))) lt!2408398)))

(declare-fun b!6569579 () Bool)

(declare-fun res!2696078 () Bool)

(assert (=> b!6569579 (=> (not res!2696078) (not e!3976540))))

(declare-fun size!40537 (List!65636) Int)

(assert (=> b!6569579 (= res!2696078 (= (size!40537 lt!2408398) (+ (size!40537 (_1!36727 (get!22749 lt!2408375))) (size!40537 (_2!36727 (get!22749 lt!2408375))))))))

(declare-fun b!6569580 () Bool)

(assert (=> b!6569580 (= e!3976540 (or (not (= (_2!36727 (get!22749 lt!2408375)) Nil!65512)) (= lt!2408398 (_1!36727 (get!22749 lt!2408375)))))))

(assert (= (and d!2061204 c!1207631) b!6569577))

(assert (= (and d!2061204 (not c!1207631)) b!6569578))

(assert (= (and d!2061204 res!2696079) b!6569579))

(assert (= (and b!6569579 res!2696078) b!6569580))

(declare-fun m!7351582 () Bool)

(assert (=> b!6569578 m!7351582))

(declare-fun m!7351584 () Bool)

(assert (=> d!2061204 m!7351584))

(declare-fun m!7351586 () Bool)

(assert (=> d!2061204 m!7351586))

(declare-fun m!7351588 () Bool)

(assert (=> d!2061204 m!7351588))

(declare-fun m!7351590 () Bool)

(assert (=> b!6569579 m!7351590))

(declare-fun m!7351592 () Bool)

(assert (=> b!6569579 m!7351592))

(declare-fun m!7351594 () Bool)

(assert (=> b!6569579 m!7351594))

(assert (=> b!6569256 d!2061204))

(declare-fun d!2061206 () Bool)

(assert (=> d!2061206 (= (get!22749 lt!2408375) (v!52520 lt!2408375))))

(assert (=> b!6569256 d!2061206))

(declare-fun b!6569581 () Bool)

(declare-fun e!3976544 () Bool)

(declare-fun lt!2408399 () Bool)

(declare-fun call!571592 () Bool)

(assert (=> b!6569581 (= e!3976544 (= lt!2408399 call!571592))))

(declare-fun b!6569582 () Bool)

(declare-fun res!2696083 () Bool)

(declare-fun e!3976546 () Bool)

(assert (=> b!6569582 (=> res!2696083 e!3976546)))

(assert (=> b!6569582 (= res!2696083 (not (isEmpty!37760 (tail!12426 (tail!12426 s!2326)))))))

(declare-fun b!6569583 () Bool)

(assert (=> b!6569583 (= e!3976546 (not (= (head!13340 (tail!12426 s!2326)) (c!1207368 (derivativeStep!5128 r!7292 (head!13340 s!2326))))))))

(declare-fun bm!571587 () Bool)

(assert (=> bm!571587 (= call!571592 (isEmpty!37760 (tail!12426 s!2326)))))

(declare-fun b!6569585 () Bool)

(declare-fun e!3976542 () Bool)

(assert (=> b!6569585 (= e!3976544 e!3976542)))

(declare-fun c!1207632 () Bool)

(assert (=> b!6569585 (= c!1207632 ((_ is EmptyLang!16445) (derivativeStep!5128 r!7292 (head!13340 s!2326))))))

(declare-fun b!6569586 () Bool)

(declare-fun e!3976545 () Bool)

(assert (=> b!6569586 (= e!3976545 (nullable!6438 (derivativeStep!5128 r!7292 (head!13340 s!2326))))))

(declare-fun b!6569587 () Bool)

(declare-fun res!2696084 () Bool)

(declare-fun e!3976543 () Bool)

(assert (=> b!6569587 (=> res!2696084 e!3976543)))

(declare-fun e!3976541 () Bool)

(assert (=> b!6569587 (= res!2696084 e!3976541)))

(declare-fun res!2696081 () Bool)

(assert (=> b!6569587 (=> (not res!2696081) (not e!3976541))))

(assert (=> b!6569587 (= res!2696081 lt!2408399)))

(declare-fun b!6569588 () Bool)

(assert (=> b!6569588 (= e!3976542 (not lt!2408399))))

(declare-fun b!6569589 () Bool)

(declare-fun e!3976547 () Bool)

(assert (=> b!6569589 (= e!3976547 e!3976546)))

(declare-fun res!2696085 () Bool)

(assert (=> b!6569589 (=> res!2696085 e!3976546)))

(assert (=> b!6569589 (= res!2696085 call!571592)))

(declare-fun b!6569590 () Bool)

(declare-fun res!2696087 () Bool)

(assert (=> b!6569590 (=> res!2696087 e!3976543)))

(assert (=> b!6569590 (= res!2696087 (not ((_ is ElementMatch!16445) (derivativeStep!5128 r!7292 (head!13340 s!2326)))))))

(assert (=> b!6569590 (= e!3976542 e!3976543)))

(declare-fun b!6569591 () Bool)

(assert (=> b!6569591 (= e!3976545 (matchR!8628 (derivativeStep!5128 (derivativeStep!5128 r!7292 (head!13340 s!2326)) (head!13340 (tail!12426 s!2326))) (tail!12426 (tail!12426 s!2326))))))

(declare-fun b!6569592 () Bool)

(declare-fun res!2696086 () Bool)

(assert (=> b!6569592 (=> (not res!2696086) (not e!3976541))))

(assert (=> b!6569592 (= res!2696086 (not call!571592))))

(declare-fun b!6569584 () Bool)

(declare-fun res!2696080 () Bool)

(assert (=> b!6569584 (=> (not res!2696080) (not e!3976541))))

(assert (=> b!6569584 (= res!2696080 (isEmpty!37760 (tail!12426 (tail!12426 s!2326))))))

(declare-fun d!2061208 () Bool)

(assert (=> d!2061208 e!3976544))

(declare-fun c!1207634 () Bool)

(assert (=> d!2061208 (= c!1207634 ((_ is EmptyExpr!16445) (derivativeStep!5128 r!7292 (head!13340 s!2326))))))

(assert (=> d!2061208 (= lt!2408399 e!3976545)))

(declare-fun c!1207633 () Bool)

(assert (=> d!2061208 (= c!1207633 (isEmpty!37760 (tail!12426 s!2326)))))

(assert (=> d!2061208 (validRegex!8181 (derivativeStep!5128 r!7292 (head!13340 s!2326)))))

(assert (=> d!2061208 (= (matchR!8628 (derivativeStep!5128 r!7292 (head!13340 s!2326)) (tail!12426 s!2326)) lt!2408399)))

(declare-fun b!6569593 () Bool)

(assert (=> b!6569593 (= e!3976543 e!3976547)))

(declare-fun res!2696082 () Bool)

(assert (=> b!6569593 (=> (not res!2696082) (not e!3976547))))

(assert (=> b!6569593 (= res!2696082 (not lt!2408399))))

(declare-fun b!6569594 () Bool)

(assert (=> b!6569594 (= e!3976541 (= (head!13340 (tail!12426 s!2326)) (c!1207368 (derivativeStep!5128 r!7292 (head!13340 s!2326)))))))

(assert (= (and d!2061208 c!1207633) b!6569586))

(assert (= (and d!2061208 (not c!1207633)) b!6569591))

(assert (= (and d!2061208 c!1207634) b!6569581))

(assert (= (and d!2061208 (not c!1207634)) b!6569585))

(assert (= (and b!6569585 c!1207632) b!6569588))

(assert (= (and b!6569585 (not c!1207632)) b!6569590))

(assert (= (and b!6569590 (not res!2696087)) b!6569587))

(assert (= (and b!6569587 res!2696081) b!6569592))

(assert (= (and b!6569592 res!2696086) b!6569584))

(assert (= (and b!6569584 res!2696080) b!6569594))

(assert (= (and b!6569587 (not res!2696084)) b!6569593))

(assert (= (and b!6569593 res!2696082) b!6569589))

(assert (= (and b!6569589 (not res!2696085)) b!6569582))

(assert (= (and b!6569582 (not res!2696083)) b!6569583))

(assert (= (or b!6569581 b!6569592 b!6569589) bm!571587))

(assert (=> b!6569582 m!7350894))

(declare-fun m!7351596 () Bool)

(assert (=> b!6569582 m!7351596))

(assert (=> b!6569582 m!7351596))

(declare-fun m!7351598 () Bool)

(assert (=> b!6569582 m!7351598))

(assert (=> b!6569591 m!7350894))

(declare-fun m!7351600 () Bool)

(assert (=> b!6569591 m!7351600))

(assert (=> b!6569591 m!7351078))

(assert (=> b!6569591 m!7351600))

(declare-fun m!7351602 () Bool)

(assert (=> b!6569591 m!7351602))

(assert (=> b!6569591 m!7350894))

(assert (=> b!6569591 m!7351596))

(assert (=> b!6569591 m!7351602))

(assert (=> b!6569591 m!7351596))

(declare-fun m!7351604 () Bool)

(assert (=> b!6569591 m!7351604))

(assert (=> b!6569586 m!7351078))

(declare-fun m!7351606 () Bool)

(assert (=> b!6569586 m!7351606))

(assert (=> b!6569583 m!7350894))

(assert (=> b!6569583 m!7351600))

(assert (=> d!2061208 m!7350894))

(assert (=> d!2061208 m!7350896))

(assert (=> d!2061208 m!7351078))

(declare-fun m!7351608 () Bool)

(assert (=> d!2061208 m!7351608))

(assert (=> b!6569584 m!7350894))

(assert (=> b!6569584 m!7351596))

(assert (=> b!6569584 m!7351596))

(assert (=> b!6569584 m!7351598))

(assert (=> bm!571587 m!7350894))

(assert (=> bm!571587 m!7350896))

(assert (=> b!6569594 m!7350894))

(assert (=> b!6569594 m!7351600))

(assert (=> b!6568945 d!2061208))

(declare-fun b!6569615 () Bool)

(declare-fun e!3976559 () Regex!16445)

(declare-fun call!571604 () Regex!16445)

(assert (=> b!6569615 (= e!3976559 (Union!16445 (Concat!25290 call!571604 (regTwo!33402 r!7292)) EmptyLang!16445))))

(declare-fun b!6569616 () Bool)

(declare-fun e!3976560 () Regex!16445)

(assert (=> b!6569616 (= e!3976560 EmptyLang!16445)))

(declare-fun b!6569617 () Bool)

(declare-fun e!3976558 () Regex!16445)

(assert (=> b!6569617 (= e!3976560 e!3976558)))

(declare-fun c!1207649 () Bool)

(assert (=> b!6569617 (= c!1207649 ((_ is ElementMatch!16445) r!7292))))

(declare-fun b!6569618 () Bool)

(assert (=> b!6569618 (= e!3976558 (ite (= (head!13340 s!2326) (c!1207368 r!7292)) EmptyExpr!16445 EmptyLang!16445))))

(declare-fun b!6569619 () Bool)

(declare-fun e!3976561 () Regex!16445)

(declare-fun call!571602 () Regex!16445)

(assert (=> b!6569619 (= e!3976561 (Concat!25290 call!571602 r!7292))))

(declare-fun bm!571596 () Bool)

(declare-fun call!571601 () Regex!16445)

(assert (=> bm!571596 (= call!571602 call!571601)))

(declare-fun b!6569620 () Bool)

(declare-fun c!1207646 () Bool)

(assert (=> b!6569620 (= c!1207646 ((_ is Union!16445) r!7292))))

(declare-fun e!3976562 () Regex!16445)

(assert (=> b!6569620 (= e!3976558 e!3976562)))

(declare-fun call!571603 () Regex!16445)

(declare-fun b!6569621 () Bool)

(assert (=> b!6569621 (= e!3976559 (Union!16445 (Concat!25290 call!571603 (regTwo!33402 r!7292)) call!571604))))

(declare-fun bm!571598 () Bool)

(assert (=> bm!571598 (= call!571603 (derivativeStep!5128 (ite c!1207646 (regOne!33403 r!7292) (regOne!33402 r!7292)) (head!13340 s!2326)))))

(declare-fun b!6569622 () Bool)

(declare-fun c!1207645 () Bool)

(assert (=> b!6569622 (= c!1207645 (nullable!6438 (regOne!33402 r!7292)))))

(assert (=> b!6569622 (= e!3976561 e!3976559)))

(declare-fun b!6569623 () Bool)

(assert (=> b!6569623 (= e!3976562 (Union!16445 call!571603 call!571601))))

(declare-fun b!6569624 () Bool)

(assert (=> b!6569624 (= e!3976562 e!3976561)))

(declare-fun c!1207648 () Bool)

(assert (=> b!6569624 (= c!1207648 ((_ is Star!16445) r!7292))))

(declare-fun bm!571599 () Bool)

(assert (=> bm!571599 (= call!571604 call!571602)))

(declare-fun d!2061210 () Bool)

(declare-fun lt!2408402 () Regex!16445)

(assert (=> d!2061210 (validRegex!8181 lt!2408402)))

(assert (=> d!2061210 (= lt!2408402 e!3976560)))

(declare-fun c!1207647 () Bool)

(assert (=> d!2061210 (= c!1207647 (or ((_ is EmptyExpr!16445) r!7292) ((_ is EmptyLang!16445) r!7292)))))

(assert (=> d!2061210 (validRegex!8181 r!7292)))

(assert (=> d!2061210 (= (derivativeStep!5128 r!7292 (head!13340 s!2326)) lt!2408402)))

(declare-fun bm!571597 () Bool)

(assert (=> bm!571597 (= call!571601 (derivativeStep!5128 (ite c!1207646 (regTwo!33403 r!7292) (ite c!1207648 (reg!16774 r!7292) (ite c!1207645 (regTwo!33402 r!7292) (regOne!33402 r!7292)))) (head!13340 s!2326)))))

(assert (= (and d!2061210 c!1207647) b!6569616))

(assert (= (and d!2061210 (not c!1207647)) b!6569617))

(assert (= (and b!6569617 c!1207649) b!6569618))

(assert (= (and b!6569617 (not c!1207649)) b!6569620))

(assert (= (and b!6569620 c!1207646) b!6569623))

(assert (= (and b!6569620 (not c!1207646)) b!6569624))

(assert (= (and b!6569624 c!1207648) b!6569619))

(assert (= (and b!6569624 (not c!1207648)) b!6569622))

(assert (= (and b!6569622 c!1207645) b!6569621))

(assert (= (and b!6569622 (not c!1207645)) b!6569615))

(assert (= (or b!6569621 b!6569615) bm!571599))

(assert (= (or b!6569619 bm!571599) bm!571596))

(assert (= (or b!6569623 bm!571596) bm!571597))

(assert (= (or b!6569623 b!6569621) bm!571598))

(assert (=> bm!571598 m!7350898))

(declare-fun m!7351610 () Bool)

(assert (=> bm!571598 m!7351610))

(assert (=> b!6569622 m!7351578))

(declare-fun m!7351612 () Bool)

(assert (=> d!2061210 m!7351612))

(assert (=> d!2061210 m!7350808))

(assert (=> bm!571597 m!7350898))

(declare-fun m!7351614 () Bool)

(assert (=> bm!571597 m!7351614))

(assert (=> b!6568945 d!2061210))

(assert (=> b!6568945 d!2061110))

(assert (=> b!6568945 d!2061176))

(declare-fun b!6569625 () Bool)

(declare-fun e!3976564 () Bool)

(declare-fun call!571607 () Bool)

(assert (=> b!6569625 (= e!3976564 call!571607)))

(declare-fun bm!571600 () Bool)

(declare-fun call!571606 () Bool)

(declare-fun c!1207650 () Bool)

(assert (=> bm!571600 (= call!571606 (validRegex!8181 (ite c!1207650 (regOne!33403 lt!2408348) (regOne!33402 lt!2408348))))))

(declare-fun b!6569627 () Bool)

(declare-fun e!3976569 () Bool)

(declare-fun e!3976563 () Bool)

(assert (=> b!6569627 (= e!3976569 e!3976563)))

(assert (=> b!6569627 (= c!1207650 ((_ is Union!16445) lt!2408348))))

(declare-fun b!6569628 () Bool)

(declare-fun e!3976567 () Bool)

(declare-fun call!571605 () Bool)

(assert (=> b!6569628 (= e!3976567 call!571605)))

(declare-fun b!6569629 () Bool)

(declare-fun e!3976566 () Bool)

(assert (=> b!6569629 (= e!3976566 call!571607)))

(declare-fun b!6569630 () Bool)

(assert (=> b!6569630 (= e!3976569 e!3976567)))

(declare-fun res!2696092 () Bool)

(assert (=> b!6569630 (= res!2696092 (not (nullable!6438 (reg!16774 lt!2408348))))))

(assert (=> b!6569630 (=> (not res!2696092) (not e!3976567))))

(declare-fun c!1207651 () Bool)

(declare-fun bm!571601 () Bool)

(assert (=> bm!571601 (= call!571605 (validRegex!8181 (ite c!1207651 (reg!16774 lt!2408348) (ite c!1207650 (regTwo!33403 lt!2408348) (regTwo!33402 lt!2408348)))))))

(declare-fun b!6569626 () Bool)

(declare-fun res!2696088 () Bool)

(assert (=> b!6569626 (=> (not res!2696088) (not e!3976566))))

(assert (=> b!6569626 (= res!2696088 call!571606)))

(assert (=> b!6569626 (= e!3976563 e!3976566)))

(declare-fun d!2061212 () Bool)

(declare-fun res!2696089 () Bool)

(declare-fun e!3976565 () Bool)

(assert (=> d!2061212 (=> res!2696089 e!3976565)))

(assert (=> d!2061212 (= res!2696089 ((_ is ElementMatch!16445) lt!2408348))))

(assert (=> d!2061212 (= (validRegex!8181 lt!2408348) e!3976565)))

(declare-fun b!6569631 () Bool)

(declare-fun res!2696091 () Bool)

(declare-fun e!3976568 () Bool)

(assert (=> b!6569631 (=> res!2696091 e!3976568)))

(assert (=> b!6569631 (= res!2696091 (not ((_ is Concat!25290) lt!2408348)))))

(assert (=> b!6569631 (= e!3976563 e!3976568)))

(declare-fun b!6569632 () Bool)

(assert (=> b!6569632 (= e!3976565 e!3976569)))

(assert (=> b!6569632 (= c!1207651 ((_ is Star!16445) lt!2408348))))

(declare-fun bm!571602 () Bool)

(assert (=> bm!571602 (= call!571607 call!571605)))

(declare-fun b!6569633 () Bool)

(assert (=> b!6569633 (= e!3976568 e!3976564)))

(declare-fun res!2696090 () Bool)

(assert (=> b!6569633 (=> (not res!2696090) (not e!3976564))))

(assert (=> b!6569633 (= res!2696090 call!571606)))

(assert (= (and d!2061212 (not res!2696089)) b!6569632))

(assert (= (and b!6569632 c!1207651) b!6569630))

(assert (= (and b!6569632 (not c!1207651)) b!6569627))

(assert (= (and b!6569630 res!2696092) b!6569628))

(assert (= (and b!6569627 c!1207650) b!6569626))

(assert (= (and b!6569627 (not c!1207650)) b!6569631))

(assert (= (and b!6569626 res!2696088) b!6569629))

(assert (= (and b!6569631 (not res!2696091)) b!6569633))

(assert (= (and b!6569633 res!2696090) b!6569625))

(assert (= (or b!6569629 b!6569625) bm!571602))

(assert (= (or b!6569626 b!6569633) bm!571600))

(assert (= (or b!6569628 bm!571602) bm!571601))

(declare-fun m!7351616 () Bool)

(assert (=> bm!571600 m!7351616))

(declare-fun m!7351618 () Bool)

(assert (=> b!6569630 m!7351618))

(declare-fun m!7351620 () Bool)

(assert (=> bm!571601 m!7351620))

(assert (=> d!2060992 d!2061212))

(declare-fun d!2061214 () Bool)

(declare-fun res!2696093 () Bool)

(declare-fun e!3976570 () Bool)

(assert (=> d!2061214 (=> res!2696093 e!3976570)))

(assert (=> d!2061214 (= res!2696093 ((_ is Nil!65510) (exprs!6329 (h!71959 zl!343))))))

(assert (=> d!2061214 (= (forall!15616 (exprs!6329 (h!71959 zl!343)) lambda!365772) e!3976570)))

(declare-fun b!6569634 () Bool)

(declare-fun e!3976571 () Bool)

(assert (=> b!6569634 (= e!3976570 e!3976571)))

(declare-fun res!2696094 () Bool)

(assert (=> b!6569634 (=> (not res!2696094) (not e!3976571))))

(assert (=> b!6569634 (= res!2696094 (dynLambda!26064 lambda!365772 (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569635 () Bool)

(assert (=> b!6569635 (= e!3976571 (forall!15616 (t!379278 (exprs!6329 (h!71959 zl!343))) lambda!365772))))

(assert (= (and d!2061214 (not res!2696093)) b!6569634))

(assert (= (and b!6569634 res!2696094) b!6569635))

(declare-fun b_lambda!248451 () Bool)

(assert (=> (not b_lambda!248451) (not b!6569634)))

(declare-fun m!7351622 () Bool)

(assert (=> b!6569634 m!7351622))

(declare-fun m!7351624 () Bool)

(assert (=> b!6569635 m!7351624))

(assert (=> d!2060992 d!2061214))

(declare-fun b!6569636 () Bool)

(declare-fun e!3976573 () (InoxSet Context!11658))

(declare-fun call!571608 () (InoxSet Context!11658))

(assert (=> b!6569636 (= e!3976573 call!571608)))

(declare-fun b!6569638 () Bool)

(assert (=> b!6569638 (= e!3976573 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571603 () Bool)

(assert (=> bm!571603 (= call!571608 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343))))))) (h!71960 s!2326)))))

(declare-fun b!6569639 () Bool)

(declare-fun e!3976572 () (InoxSet Context!11658))

(assert (=> b!6569639 (= e!3976572 e!3976573)))

(declare-fun c!1207652 () Bool)

(assert (=> b!6569639 (= c!1207652 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))))))))

(declare-fun b!6569640 () Bool)

(assert (=> b!6569640 (= e!3976572 ((_ map or) call!571608 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343))))))) (h!71960 s!2326))))))

(declare-fun b!6569637 () Bool)

(declare-fun e!3976574 () Bool)

(assert (=> b!6569637 (= e!3976574 (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343))))))))))

(declare-fun d!2061216 () Bool)

(declare-fun c!1207653 () Bool)

(assert (=> d!2061216 (= c!1207653 e!3976574)))

(declare-fun res!2696095 () Bool)

(assert (=> d!2061216 (=> (not res!2696095) (not e!3976574))))

(assert (=> d!2061216 (= res!2696095 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))))))))

(assert (=> d!2061216 (= (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))) (h!71960 s!2326)) e!3976572)))

(assert (= (and d!2061216 res!2696095) b!6569637))

(assert (= (and d!2061216 c!1207653) b!6569640))

(assert (= (and d!2061216 (not c!1207653)) b!6569639))

(assert (= (and b!6569639 c!1207652) b!6569636))

(assert (= (and b!6569639 (not c!1207652)) b!6569638))

(assert (= (or b!6569640 b!6569636) bm!571603))

(declare-fun m!7351626 () Bool)

(assert (=> bm!571603 m!7351626))

(declare-fun m!7351628 () Bool)

(assert (=> b!6569640 m!7351628))

(declare-fun m!7351630 () Bool)

(assert (=> b!6569637 m!7351630))

(assert (=> b!6569184 d!2061216))

(assert (=> bm!571505 d!2061114))

(declare-fun bm!571604 () Bool)

(declare-fun call!571611 () (InoxSet Context!11658))

(declare-fun call!571612 () (InoxSet Context!11658))

(assert (=> bm!571604 (= call!571611 call!571612)))

(declare-fun call!571613 () List!65634)

(declare-fun call!571609 () (InoxSet Context!11658))

(declare-fun c!1207658 () Bool)

(declare-fun bm!571605 () Bool)

(assert (=> bm!571605 (= call!571609 (derivationStepZipperDown!1693 (ite c!1207658 (regTwo!33403 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (regOne!33402 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))) (ite c!1207658 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (Context!11659 call!571613)) (h!71960 s!2326)))))

(declare-fun b!6569641 () Bool)

(declare-fun e!3976576 () (InoxSet Context!11658))

(assert (=> b!6569641 (= e!3976576 (store ((as const (Array Context!11658 Bool)) false) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) true))))

(declare-fun bm!571606 () Bool)

(declare-fun call!571610 () List!65634)

(assert (=> bm!571606 (= call!571610 call!571613)))

(declare-fun b!6569643 () Bool)

(declare-fun e!3976577 () (InoxSet Context!11658))

(declare-fun e!3976580 () (InoxSet Context!11658))

(assert (=> b!6569643 (= e!3976577 e!3976580)))

(declare-fun c!1207657 () Bool)

(assert (=> b!6569643 (= c!1207657 ((_ is Concat!25290) (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))

(declare-fun b!6569644 () Bool)

(declare-fun e!3976579 () (InoxSet Context!11658))

(assert (=> b!6569644 (= e!3976579 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569645 () Bool)

(declare-fun e!3976575 () Bool)

(assert (=> b!6569645 (= e!3976575 (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))))

(declare-fun bm!571607 () Bool)

(declare-fun c!1207655 () Bool)

(declare-fun call!571614 () (InoxSet Context!11658))

(assert (=> bm!571607 (= call!571614 (derivationStepZipperDown!1693 (ite c!1207658 (regOne!33403 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (ite c!1207655 (regTwo!33402 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (ite c!1207657 (regOne!33402 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (reg!16774 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))) (ite (or c!1207658 c!1207655) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (Context!11659 call!571610)) (h!71960 s!2326)))))

(declare-fun b!6569646 () Bool)

(assert (=> b!6569646 (= e!3976577 ((_ map or) call!571609 call!571612))))

(declare-fun b!6569647 () Bool)

(declare-fun c!1207654 () Bool)

(assert (=> b!6569647 (= c!1207654 ((_ is Star!16445) (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))

(assert (=> b!6569647 (= e!3976580 e!3976579)))

(declare-fun b!6569648 () Bool)

(declare-fun e!3976578 () (InoxSet Context!11658))

(assert (=> b!6569648 (= e!3976578 ((_ map or) call!571614 call!571609))))

(declare-fun bm!571608 () Bool)

(assert (=> bm!571608 (= call!571613 ($colon$colon!2286 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))) (ite (or c!1207655 c!1207657) (regTwo!33402 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))))

(declare-fun b!6569642 () Bool)

(assert (=> b!6569642 (= e!3976576 e!3976578)))

(assert (=> b!6569642 (= c!1207658 ((_ is Union!16445) (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))

(declare-fun d!2061218 () Bool)

(declare-fun c!1207656 () Bool)

(assert (=> d!2061218 (= c!1207656 (and ((_ is ElementMatch!16445) (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (= (c!1207368 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (h!71960 s!2326))))))

(assert (=> d!2061218 (= (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (h!71960 s!2326)) e!3976576)))

(declare-fun b!6569649 () Bool)

(assert (=> b!6569649 (= e!3976580 call!571611)))

(declare-fun b!6569650 () Bool)

(assert (=> b!6569650 (= e!3976579 call!571611)))

(declare-fun b!6569651 () Bool)

(assert (=> b!6569651 (= c!1207655 e!3976575)))

(declare-fun res!2696096 () Bool)

(assert (=> b!6569651 (=> (not res!2696096) (not e!3976575))))

(assert (=> b!6569651 (= res!2696096 ((_ is Concat!25290) (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))

(assert (=> b!6569651 (= e!3976578 e!3976577)))

(declare-fun bm!571609 () Bool)

(assert (=> bm!571609 (= call!571612 call!571614)))

(assert (= (and d!2061218 c!1207656) b!6569641))

(assert (= (and d!2061218 (not c!1207656)) b!6569642))

(assert (= (and b!6569642 c!1207658) b!6569648))

(assert (= (and b!6569642 (not c!1207658)) b!6569651))

(assert (= (and b!6569651 res!2696096) b!6569645))

(assert (= (and b!6569651 c!1207655) b!6569646))

(assert (= (and b!6569651 (not c!1207655)) b!6569643))

(assert (= (and b!6569643 c!1207657) b!6569649))

(assert (= (and b!6569643 (not c!1207657)) b!6569647))

(assert (= (and b!6569647 c!1207654) b!6569650))

(assert (= (and b!6569647 (not c!1207654)) b!6569644))

(assert (= (or b!6569649 b!6569650) bm!571606))

(assert (= (or b!6569649 b!6569650) bm!571604))

(assert (= (or b!6569646 bm!571606) bm!571608))

(assert (= (or b!6569646 bm!571604) bm!571609))

(assert (= (or b!6569648 b!6569646) bm!571605))

(assert (= (or b!6569648 bm!571609) bm!571607))

(declare-fun m!7351632 () Bool)

(assert (=> bm!571608 m!7351632))

(declare-fun m!7351634 () Bool)

(assert (=> b!6569641 m!7351634))

(declare-fun m!7351636 () Bool)

(assert (=> bm!571607 m!7351636))

(declare-fun m!7351638 () Bool)

(assert (=> bm!571605 m!7351638))

(declare-fun m!7351640 () Bool)

(assert (=> b!6569645 m!7351640))

(assert (=> bm!571537 d!2061218))

(assert (=> bs!1677942 d!2060932))

(declare-fun d!2061220 () Bool)

(assert (=> d!2061220 (= ($colon$colon!2286 (exprs!6329 lt!2408267) (ite (or c!1207456 c!1207458) (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (regOne!33402 r!7292)))) (Cons!65510 (ite (or c!1207456 c!1207458) (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (regOne!33402 r!7292))) (exprs!6329 lt!2408267)))))

(assert (=> bm!571502 d!2061220))

(assert (=> d!2060942 d!2061114))

(declare-fun d!2061222 () Bool)

(assert (=> d!2061222 true))

(assert (=> d!2061222 true))

(declare-fun res!2696097 () Bool)

(assert (=> d!2061222 (= (choose!49072 lambda!365733) res!2696097)))

(assert (=> d!2061026 d!2061222))

(declare-fun d!2061224 () Bool)

(assert (=> d!2061224 (= (isEmptyLang!1832 lt!2408353) ((_ is EmptyLang!16445) lt!2408353))))

(assert (=> b!6569076 d!2061224))

(declare-fun d!2061226 () Bool)

(assert (=> d!2061226 (= (nullable!6438 r!7292) (nullableFct!2364 r!7292))))

(declare-fun bs!1678007 () Bool)

(assert (= bs!1678007 d!2061226))

(declare-fun m!7351642 () Bool)

(assert (=> bs!1678007 m!7351642))

(assert (=> b!6568940 d!2061226))

(declare-fun b!6569652 () Bool)

(declare-fun e!3976584 () Bool)

(declare-fun lt!2408403 () Bool)

(declare-fun call!571615 () Bool)

(assert (=> b!6569652 (= e!3976584 (= lt!2408403 call!571615))))

(declare-fun b!6569653 () Bool)

(declare-fun res!2696101 () Bool)

(declare-fun e!3976586 () Bool)

(assert (=> b!6569653 (=> res!2696101 e!3976586)))

(assert (=> b!6569653 (= res!2696101 (not (isEmpty!37760 (tail!12426 (_2!36727 (get!22749 lt!2408375))))))))

(declare-fun b!6569654 () Bool)

(assert (=> b!6569654 (= e!3976586 (not (= (head!13340 (_2!36727 (get!22749 lt!2408375))) (c!1207368 (regTwo!33402 r!7292)))))))

(declare-fun bm!571610 () Bool)

(assert (=> bm!571610 (= call!571615 (isEmpty!37760 (_2!36727 (get!22749 lt!2408375))))))

(declare-fun b!6569656 () Bool)

(declare-fun e!3976582 () Bool)

(assert (=> b!6569656 (= e!3976584 e!3976582)))

(declare-fun c!1207659 () Bool)

(assert (=> b!6569656 (= c!1207659 ((_ is EmptyLang!16445) (regTwo!33402 r!7292)))))

(declare-fun b!6569657 () Bool)

(declare-fun e!3976585 () Bool)

(assert (=> b!6569657 (= e!3976585 (nullable!6438 (regTwo!33402 r!7292)))))

(declare-fun b!6569658 () Bool)

(declare-fun res!2696102 () Bool)

(declare-fun e!3976583 () Bool)

(assert (=> b!6569658 (=> res!2696102 e!3976583)))

(declare-fun e!3976581 () Bool)

(assert (=> b!6569658 (= res!2696102 e!3976581)))

(declare-fun res!2696099 () Bool)

(assert (=> b!6569658 (=> (not res!2696099) (not e!3976581))))

(assert (=> b!6569658 (= res!2696099 lt!2408403)))

(declare-fun b!6569659 () Bool)

(assert (=> b!6569659 (= e!3976582 (not lt!2408403))))

(declare-fun b!6569660 () Bool)

(declare-fun e!3976587 () Bool)

(assert (=> b!6569660 (= e!3976587 e!3976586)))

(declare-fun res!2696103 () Bool)

(assert (=> b!6569660 (=> res!2696103 e!3976586)))

(assert (=> b!6569660 (= res!2696103 call!571615)))

(declare-fun b!6569661 () Bool)

(declare-fun res!2696105 () Bool)

(assert (=> b!6569661 (=> res!2696105 e!3976583)))

(assert (=> b!6569661 (= res!2696105 (not ((_ is ElementMatch!16445) (regTwo!33402 r!7292))))))

(assert (=> b!6569661 (= e!3976582 e!3976583)))

(declare-fun b!6569662 () Bool)

(assert (=> b!6569662 (= e!3976585 (matchR!8628 (derivativeStep!5128 (regTwo!33402 r!7292) (head!13340 (_2!36727 (get!22749 lt!2408375)))) (tail!12426 (_2!36727 (get!22749 lt!2408375)))))))

(declare-fun b!6569663 () Bool)

(declare-fun res!2696104 () Bool)

(assert (=> b!6569663 (=> (not res!2696104) (not e!3976581))))

(assert (=> b!6569663 (= res!2696104 (not call!571615))))

(declare-fun b!6569655 () Bool)

(declare-fun res!2696098 () Bool)

(assert (=> b!6569655 (=> (not res!2696098) (not e!3976581))))

(assert (=> b!6569655 (= res!2696098 (isEmpty!37760 (tail!12426 (_2!36727 (get!22749 lt!2408375)))))))

(declare-fun d!2061228 () Bool)

(assert (=> d!2061228 e!3976584))

(declare-fun c!1207661 () Bool)

(assert (=> d!2061228 (= c!1207661 ((_ is EmptyExpr!16445) (regTwo!33402 r!7292)))))

(assert (=> d!2061228 (= lt!2408403 e!3976585)))

(declare-fun c!1207660 () Bool)

(assert (=> d!2061228 (= c!1207660 (isEmpty!37760 (_2!36727 (get!22749 lt!2408375))))))

(assert (=> d!2061228 (validRegex!8181 (regTwo!33402 r!7292))))

(assert (=> d!2061228 (= (matchR!8628 (regTwo!33402 r!7292) (_2!36727 (get!22749 lt!2408375))) lt!2408403)))

(declare-fun b!6569664 () Bool)

(assert (=> b!6569664 (= e!3976583 e!3976587)))

(declare-fun res!2696100 () Bool)

(assert (=> b!6569664 (=> (not res!2696100) (not e!3976587))))

(assert (=> b!6569664 (= res!2696100 (not lt!2408403))))

(declare-fun b!6569665 () Bool)

(assert (=> b!6569665 (= e!3976581 (= (head!13340 (_2!36727 (get!22749 lt!2408375))) (c!1207368 (regTwo!33402 r!7292))))))

(assert (= (and d!2061228 c!1207660) b!6569657))

(assert (= (and d!2061228 (not c!1207660)) b!6569662))

(assert (= (and d!2061228 c!1207661) b!6569652))

(assert (= (and d!2061228 (not c!1207661)) b!6569656))

(assert (= (and b!6569656 c!1207659) b!6569659))

(assert (= (and b!6569656 (not c!1207659)) b!6569661))

(assert (= (and b!6569661 (not res!2696105)) b!6569658))

(assert (= (and b!6569658 res!2696099) b!6569663))

(assert (= (and b!6569663 res!2696104) b!6569655))

(assert (= (and b!6569655 res!2696098) b!6569665))

(assert (= (and b!6569658 (not res!2696102)) b!6569664))

(assert (= (and b!6569664 res!2696100) b!6569660))

(assert (= (and b!6569660 (not res!2696103)) b!6569653))

(assert (= (and b!6569653 (not res!2696101)) b!6569654))

(assert (= (or b!6569652 b!6569663 b!6569660) bm!571610))

(declare-fun m!7351644 () Bool)

(assert (=> b!6569653 m!7351644))

(assert (=> b!6569653 m!7351644))

(declare-fun m!7351646 () Bool)

(assert (=> b!6569653 m!7351646))

(declare-fun m!7351648 () Bool)

(assert (=> b!6569662 m!7351648))

(assert (=> b!6569662 m!7351648))

(declare-fun m!7351650 () Bool)

(assert (=> b!6569662 m!7351650))

(assert (=> b!6569662 m!7351644))

(assert (=> b!6569662 m!7351650))

(assert (=> b!6569662 m!7351644))

(declare-fun m!7351652 () Bool)

(assert (=> b!6569662 m!7351652))

(assert (=> b!6569657 m!7351458))

(assert (=> b!6569654 m!7351648))

(declare-fun m!7351654 () Bool)

(assert (=> d!2061228 m!7351654))

(assert (=> d!2061228 m!7351460))

(assert (=> b!6569655 m!7351644))

(assert (=> b!6569655 m!7351644))

(assert (=> b!6569655 m!7351646))

(assert (=> bm!571610 m!7351654))

(assert (=> b!6569665 m!7351648))

(assert (=> b!6569260 d!2061228))

(assert (=> b!6569260 d!2061206))

(assert (=> b!6568710 d!2061174))

(assert (=> b!6568710 d!2061176))

(assert (=> d!2060900 d!2060890))

(assert (=> d!2060900 d!2060896))

(declare-fun d!2061230 () Bool)

(assert (=> d!2061230 (= (matchR!8628 lt!2408266 s!2326) (matchRSpec!3546 lt!2408266 s!2326))))

(assert (=> d!2061230 true))

(declare-fun _$88!5255 () Unit!159115)

(assert (=> d!2061230 (= (choose!49062 lt!2408266 s!2326) _$88!5255)))

(declare-fun bs!1678008 () Bool)

(assert (= bs!1678008 d!2061230))

(assert (=> bs!1678008 m!7350750))

(assert (=> bs!1678008 m!7350752))

(assert (=> d!2060900 d!2061230))

(assert (=> d!2060900 d!2061122))

(assert (=> d!2060916 d!2061112))

(declare-fun d!2061232 () Bool)

(declare-fun c!1207662 () Bool)

(assert (=> d!2061232 (= c!1207662 (isEmpty!37760 (tail!12426 s!2326)))))

(declare-fun e!3976588 () Bool)

(assert (=> d!2061232 (= (matchZipper!2457 (derivationStepZipper!2411 lt!2408291 (head!13340 s!2326)) (tail!12426 s!2326)) e!3976588)))

(declare-fun b!6569666 () Bool)

(assert (=> b!6569666 (= e!3976588 (nullableZipper!2190 (derivationStepZipper!2411 lt!2408291 (head!13340 s!2326))))))

(declare-fun b!6569667 () Bool)

(assert (=> b!6569667 (= e!3976588 (matchZipper!2457 (derivationStepZipper!2411 (derivationStepZipper!2411 lt!2408291 (head!13340 s!2326)) (head!13340 (tail!12426 s!2326))) (tail!12426 (tail!12426 s!2326))))))

(assert (= (and d!2061232 c!1207662) b!6569666))

(assert (= (and d!2061232 (not c!1207662)) b!6569667))

(assert (=> d!2061232 m!7350894))

(assert (=> d!2061232 m!7350896))

(assert (=> b!6569666 m!7351034))

(declare-fun m!7351656 () Bool)

(assert (=> b!6569666 m!7351656))

(assert (=> b!6569667 m!7350894))

(assert (=> b!6569667 m!7351600))

(assert (=> b!6569667 m!7351034))

(assert (=> b!6569667 m!7351600))

(declare-fun m!7351658 () Bool)

(assert (=> b!6569667 m!7351658))

(assert (=> b!6569667 m!7350894))

(assert (=> b!6569667 m!7351596))

(assert (=> b!6569667 m!7351658))

(assert (=> b!6569667 m!7351596))

(declare-fun m!7351660 () Bool)

(assert (=> b!6569667 m!7351660))

(assert (=> b!6568845 d!2061232))

(declare-fun bs!1678009 () Bool)

(declare-fun d!2061234 () Bool)

(assert (= bs!1678009 (and d!2061234 d!2061152)))

(declare-fun lambda!365820 () Int)

(assert (=> bs!1678009 (= (= (head!13340 s!2326) (head!13340 (t!379280 s!2326))) (= lambda!365820 lambda!365811))))

(declare-fun bs!1678010 () Bool)

(assert (= bs!1678010 (and d!2061234 d!2061162)))

(assert (=> bs!1678010 (= (= (head!13340 s!2326) (head!13340 (t!379280 s!2326))) (= lambda!365820 lambda!365812))))

(declare-fun bs!1678011 () Bool)

(assert (= bs!1678011 (and d!2061234 d!2060970)))

(assert (=> bs!1678011 (= (= (head!13340 s!2326) (h!71960 s!2326)) (= lambda!365820 lambda!365764))))

(declare-fun bs!1678012 () Bool)

(assert (= bs!1678012 (and d!2061234 d!2061130)))

(assert (=> bs!1678012 (= (= (head!13340 s!2326) (head!13340 (t!379280 s!2326))) (= lambda!365820 lambda!365807))))

(declare-fun bs!1678013 () Bool)

(assert (= bs!1678013 (and d!2061234 b!6568635)))

(assert (=> bs!1678013 (= (= (head!13340 s!2326) (h!71960 s!2326)) (= lambda!365820 lambda!365735))))

(assert (=> d!2061234 true))

(assert (=> d!2061234 (= (derivationStepZipper!2411 lt!2408291 (head!13340 s!2326)) (flatMap!1950 lt!2408291 lambda!365820))))

(declare-fun bs!1678014 () Bool)

(assert (= bs!1678014 d!2061234))

(declare-fun m!7351662 () Bool)

(assert (=> bs!1678014 m!7351662))

(assert (=> b!6568845 d!2061234))

(assert (=> b!6568845 d!2061110))

(assert (=> b!6568845 d!2061176))

(declare-fun b!6569668 () Bool)

(declare-fun e!3976590 () Bool)

(declare-fun call!571618 () Bool)

(assert (=> b!6569668 (= e!3976590 call!571618)))

(declare-fun bm!571611 () Bool)

(declare-fun call!571617 () Bool)

(declare-fun c!1207663 () Bool)

(assert (=> bm!571611 (= call!571617 (validRegex!8181 (ite c!1207663 (regOne!33403 lt!2408324) (regOne!33402 lt!2408324))))))

(declare-fun b!6569670 () Bool)

(declare-fun e!3976595 () Bool)

(declare-fun e!3976589 () Bool)

(assert (=> b!6569670 (= e!3976595 e!3976589)))

(assert (=> b!6569670 (= c!1207663 ((_ is Union!16445) lt!2408324))))

(declare-fun b!6569671 () Bool)

(declare-fun e!3976593 () Bool)

(declare-fun call!571616 () Bool)

(assert (=> b!6569671 (= e!3976593 call!571616)))

(declare-fun b!6569672 () Bool)

(declare-fun e!3976592 () Bool)

(assert (=> b!6569672 (= e!3976592 call!571618)))

(declare-fun b!6569673 () Bool)

(assert (=> b!6569673 (= e!3976595 e!3976593)))

(declare-fun res!2696110 () Bool)

(assert (=> b!6569673 (= res!2696110 (not (nullable!6438 (reg!16774 lt!2408324))))))

(assert (=> b!6569673 (=> (not res!2696110) (not e!3976593))))

(declare-fun bm!571612 () Bool)

(declare-fun c!1207664 () Bool)

(assert (=> bm!571612 (= call!571616 (validRegex!8181 (ite c!1207664 (reg!16774 lt!2408324) (ite c!1207663 (regTwo!33403 lt!2408324) (regTwo!33402 lt!2408324)))))))

(declare-fun b!6569669 () Bool)

(declare-fun res!2696106 () Bool)

(assert (=> b!6569669 (=> (not res!2696106) (not e!3976592))))

(assert (=> b!6569669 (= res!2696106 call!571617)))

(assert (=> b!6569669 (= e!3976589 e!3976592)))

(declare-fun d!2061236 () Bool)

(declare-fun res!2696107 () Bool)

(declare-fun e!3976591 () Bool)

(assert (=> d!2061236 (=> res!2696107 e!3976591)))

(assert (=> d!2061236 (= res!2696107 ((_ is ElementMatch!16445) lt!2408324))))

(assert (=> d!2061236 (= (validRegex!8181 lt!2408324) e!3976591)))

(declare-fun b!6569674 () Bool)

(declare-fun res!2696109 () Bool)

(declare-fun e!3976594 () Bool)

(assert (=> b!6569674 (=> res!2696109 e!3976594)))

(assert (=> b!6569674 (= res!2696109 (not ((_ is Concat!25290) lt!2408324)))))

(assert (=> b!6569674 (= e!3976589 e!3976594)))

(declare-fun b!6569675 () Bool)

(assert (=> b!6569675 (= e!3976591 e!3976595)))

(assert (=> b!6569675 (= c!1207664 ((_ is Star!16445) lt!2408324))))

(declare-fun bm!571613 () Bool)

(assert (=> bm!571613 (= call!571618 call!571616)))

(declare-fun b!6569676 () Bool)

(assert (=> b!6569676 (= e!3976594 e!3976590)))

(declare-fun res!2696108 () Bool)

(assert (=> b!6569676 (=> (not res!2696108) (not e!3976590))))

(assert (=> b!6569676 (= res!2696108 call!571617)))

(assert (= (and d!2061236 (not res!2696107)) b!6569675))

(assert (= (and b!6569675 c!1207664) b!6569673))

(assert (= (and b!6569675 (not c!1207664)) b!6569670))

(assert (= (and b!6569673 res!2696110) b!6569671))

(assert (= (and b!6569670 c!1207663) b!6569669))

(assert (= (and b!6569670 (not c!1207663)) b!6569674))

(assert (= (and b!6569669 res!2696106) b!6569672))

(assert (= (and b!6569674 (not res!2696109)) b!6569676))

(assert (= (and b!6569676 res!2696108) b!6569668))

(assert (= (or b!6569672 b!6569668) bm!571613))

(assert (= (or b!6569669 b!6569676) bm!571611))

(assert (= (or b!6569671 bm!571613) bm!571612))

(declare-fun m!7351664 () Bool)

(assert (=> bm!571611 m!7351664))

(declare-fun m!7351666 () Bool)

(assert (=> b!6569673 m!7351666))

(declare-fun m!7351668 () Bool)

(assert (=> bm!571612 m!7351668))

(assert (=> d!2060920 d!2061236))

(declare-fun bs!1678015 () Bool)

(declare-fun d!2061238 () Bool)

(assert (= bs!1678015 (and d!2061238 d!2060886)))

(declare-fun lambda!365821 () Int)

(assert (=> bs!1678015 (= lambda!365821 lambda!365738)))

(declare-fun bs!1678016 () Bool)

(assert (= bs!1678016 (and d!2061238 d!2060990)))

(assert (=> bs!1678016 (= lambda!365821 lambda!365769)))

(declare-fun bs!1678017 () Bool)

(assert (= bs!1678017 (and d!2061238 d!2060998)))

(assert (=> bs!1678017 (= lambda!365821 lambda!365773)))

(declare-fun bs!1678018 () Bool)

(assert (= bs!1678018 (and d!2061238 d!2061006)))

(assert (=> bs!1678018 (= lambda!365821 lambda!365783)))

(declare-fun bs!1678019 () Bool)

(assert (= bs!1678019 (and d!2061238 d!2060992)))

(assert (=> bs!1678019 (= lambda!365821 lambda!365772)))

(declare-fun bs!1678020 () Bool)

(assert (= bs!1678020 (and d!2061238 d!2061118)))

(assert (=> bs!1678020 (= lambda!365821 lambda!365804)))

(declare-fun bs!1678021 () Bool)

(assert (= bs!1678021 (and d!2061238 d!2061194)))

(assert (=> bs!1678021 (= lambda!365821 lambda!365819)))

(declare-fun bs!1678022 () Bool)

(assert (= bs!1678022 (and d!2061238 d!2061002)))

(assert (=> bs!1678022 (= lambda!365821 lambda!365776)))

(declare-fun b!6569677 () Bool)

(declare-fun e!3976597 () Regex!16445)

(declare-fun e!3976599 () Regex!16445)

(assert (=> b!6569677 (= e!3976597 e!3976599)))

(declare-fun c!1207665 () Bool)

(assert (=> b!6569677 (= c!1207665 ((_ is Cons!65510) (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))))))

(declare-fun b!6569678 () Bool)

(assert (=> b!6569678 (= e!3976599 EmptyLang!16445)))

(declare-fun b!6569679 () Bool)

(declare-fun e!3976598 () Bool)

(declare-fun e!3976596 () Bool)

(assert (=> b!6569679 (= e!3976598 e!3976596)))

(declare-fun c!1207668 () Bool)

(assert (=> b!6569679 (= c!1207668 (isEmpty!37757 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))))))

(declare-fun b!6569680 () Bool)

(declare-fun lt!2408404 () Regex!16445)

(assert (=> b!6569680 (= e!3976596 (isEmptyLang!1832 lt!2408404))))

(declare-fun b!6569681 () Bool)

(declare-fun e!3976600 () Bool)

(assert (=> b!6569681 (= e!3976596 e!3976600)))

(declare-fun c!1207667 () Bool)

(assert (=> b!6569681 (= c!1207667 (isEmpty!37757 (tail!12427 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511)))))))

(assert (=> d!2061238 e!3976598))

(declare-fun res!2696111 () Bool)

(assert (=> d!2061238 (=> (not res!2696111) (not e!3976598))))

(assert (=> d!2061238 (= res!2696111 (validRegex!8181 lt!2408404))))

(assert (=> d!2061238 (= lt!2408404 e!3976597)))

(declare-fun c!1207666 () Bool)

(declare-fun e!3976601 () Bool)

(assert (=> d!2061238 (= c!1207666 e!3976601)))

(declare-fun res!2696112 () Bool)

(assert (=> d!2061238 (=> (not res!2696112) (not e!3976601))))

(assert (=> d!2061238 (= res!2696112 ((_ is Cons!65510) (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))))))

(assert (=> d!2061238 (forall!15616 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511)) lambda!365821)))

(assert (=> d!2061238 (= (generalisedUnion!2289 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))) lt!2408404)))

(declare-fun b!6569682 () Bool)

(assert (=> b!6569682 (= e!3976600 (= lt!2408404 (head!13342 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511)))))))

(declare-fun b!6569683 () Bool)

(assert (=> b!6569683 (= e!3976600 (isUnion!1262 lt!2408404))))

(declare-fun b!6569684 () Bool)

(assert (=> b!6569684 (= e!3976597 (h!71958 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))))))

(declare-fun b!6569685 () Bool)

(assert (=> b!6569685 (= e!3976599 (Union!16445 (h!71958 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))) (generalisedUnion!2289 (t!379278 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511))))))))

(declare-fun b!6569686 () Bool)

(assert (=> b!6569686 (= e!3976601 (isEmpty!37757 (t!379278 (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511)))))))

(assert (= (and d!2061238 res!2696112) b!6569686))

(assert (= (and d!2061238 c!1207666) b!6569684))

(assert (= (and d!2061238 (not c!1207666)) b!6569677))

(assert (= (and b!6569677 c!1207665) b!6569685))

(assert (= (and b!6569677 (not c!1207665)) b!6569678))

(assert (= (and d!2061238 res!2696111) b!6569679))

(assert (= (and b!6569679 c!1207668) b!6569680))

(assert (= (and b!6569679 (not c!1207668)) b!6569681))

(assert (= (and b!6569681 c!1207667) b!6569682))

(assert (= (and b!6569681 (not c!1207667)) b!6569683))

(declare-fun m!7351670 () Bool)

(assert (=> b!6569686 m!7351670))

(declare-fun m!7351672 () Bool)

(assert (=> b!6569685 m!7351672))

(declare-fun m!7351674 () Bool)

(assert (=> b!6569683 m!7351674))

(declare-fun m!7351676 () Bool)

(assert (=> b!6569680 m!7351676))

(assert (=> b!6569679 m!7350988))

(declare-fun m!7351678 () Bool)

(assert (=> b!6569679 m!7351678))

(assert (=> b!6569682 m!7350988))

(declare-fun m!7351680 () Bool)

(assert (=> b!6569682 m!7351680))

(assert (=> b!6569681 m!7350988))

(declare-fun m!7351682 () Bool)

(assert (=> b!6569681 m!7351682))

(assert (=> b!6569681 m!7351682))

(declare-fun m!7351684 () Bool)

(assert (=> b!6569681 m!7351684))

(declare-fun m!7351686 () Bool)

(assert (=> d!2061238 m!7351686))

(assert (=> d!2061238 m!7350988))

(declare-fun m!7351688 () Bool)

(assert (=> d!2061238 m!7351688))

(assert (=> d!2060920 d!2061238))

(declare-fun bs!1678023 () Bool)

(declare-fun d!2061240 () Bool)

(assert (= bs!1678023 (and d!2061240 d!2060886)))

(declare-fun lambda!365822 () Int)

(assert (=> bs!1678023 (= lambda!365822 lambda!365738)))

(declare-fun bs!1678024 () Bool)

(assert (= bs!1678024 (and d!2061240 d!2060990)))

(assert (=> bs!1678024 (= lambda!365822 lambda!365769)))

(declare-fun bs!1678025 () Bool)

(assert (= bs!1678025 (and d!2061240 d!2060998)))

(assert (=> bs!1678025 (= lambda!365822 lambda!365773)))

(declare-fun bs!1678026 () Bool)

(assert (= bs!1678026 (and d!2061240 d!2061238)))

(assert (=> bs!1678026 (= lambda!365822 lambda!365821)))

(declare-fun bs!1678027 () Bool)

(assert (= bs!1678027 (and d!2061240 d!2061006)))

(assert (=> bs!1678027 (= lambda!365822 lambda!365783)))

(declare-fun bs!1678028 () Bool)

(assert (= bs!1678028 (and d!2061240 d!2060992)))

(assert (=> bs!1678028 (= lambda!365822 lambda!365772)))

(declare-fun bs!1678029 () Bool)

(assert (= bs!1678029 (and d!2061240 d!2061118)))

(assert (=> bs!1678029 (= lambda!365822 lambda!365804)))

(declare-fun bs!1678030 () Bool)

(assert (= bs!1678030 (and d!2061240 d!2061194)))

(assert (=> bs!1678030 (= lambda!365822 lambda!365819)))

(declare-fun bs!1678031 () Bool)

(assert (= bs!1678031 (and d!2061240 d!2061002)))

(assert (=> bs!1678031 (= lambda!365822 lambda!365776)))

(declare-fun lt!2408405 () List!65634)

(assert (=> d!2061240 (forall!15616 lt!2408405 lambda!365822)))

(declare-fun e!3976602 () List!65634)

(assert (=> d!2061240 (= lt!2408405 e!3976602)))

(declare-fun c!1207669 () Bool)

(assert (=> d!2061240 (= c!1207669 ((_ is Cons!65511) (Cons!65511 lt!2408275 Nil!65511)))))

(assert (=> d!2061240 (= (unfocusZipperList!1866 (Cons!65511 lt!2408275 Nil!65511)) lt!2408405)))

(declare-fun b!6569687 () Bool)

(assert (=> b!6569687 (= e!3976602 (Cons!65510 (generalisedConcat!2042 (exprs!6329 (h!71959 (Cons!65511 lt!2408275 Nil!65511)))) (unfocusZipperList!1866 (t!379279 (Cons!65511 lt!2408275 Nil!65511)))))))

(declare-fun b!6569688 () Bool)

(assert (=> b!6569688 (= e!3976602 Nil!65510)))

(assert (= (and d!2061240 c!1207669) b!6569687))

(assert (= (and d!2061240 (not c!1207669)) b!6569688))

(declare-fun m!7351690 () Bool)

(assert (=> d!2061240 m!7351690))

(declare-fun m!7351692 () Bool)

(assert (=> b!6569687 m!7351692))

(declare-fun m!7351694 () Bool)

(assert (=> b!6569687 m!7351694))

(assert (=> d!2060920 d!2061240))

(declare-fun d!2061242 () Bool)

(declare-fun res!2696113 () Bool)

(declare-fun e!3976603 () Bool)

(assert (=> d!2061242 (=> res!2696113 e!3976603)))

(assert (=> d!2061242 (= res!2696113 ((_ is Nil!65510) (exprs!6329 lt!2408279)))))

(assert (=> d!2061242 (= (forall!15616 (exprs!6329 lt!2408279) lambda!365773) e!3976603)))

(declare-fun b!6569689 () Bool)

(declare-fun e!3976604 () Bool)

(assert (=> b!6569689 (= e!3976603 e!3976604)))

(declare-fun res!2696114 () Bool)

(assert (=> b!6569689 (=> (not res!2696114) (not e!3976604))))

(assert (=> b!6569689 (= res!2696114 (dynLambda!26064 lambda!365773 (h!71958 (exprs!6329 lt!2408279))))))

(declare-fun b!6569690 () Bool)

(assert (=> b!6569690 (= e!3976604 (forall!15616 (t!379278 (exprs!6329 lt!2408279)) lambda!365773))))

(assert (= (and d!2061242 (not res!2696113)) b!6569689))

(assert (= (and b!6569689 res!2696114) b!6569690))

(declare-fun b_lambda!248453 () Bool)

(assert (=> (not b_lambda!248453) (not b!6569689)))

(declare-fun m!7351696 () Bool)

(assert (=> b!6569689 m!7351696))

(declare-fun m!7351698 () Bool)

(assert (=> b!6569690 m!7351698))

(assert (=> d!2060998 d!2061242))

(assert (=> b!6568809 d!2060938))

(declare-fun bm!571614 () Bool)

(declare-fun call!571621 () (InoxSet Context!11658))

(declare-fun call!571622 () (InoxSet Context!11658))

(assert (=> bm!571614 (= call!571621 call!571622)))

(declare-fun call!571619 () (InoxSet Context!11658))

(declare-fun call!571623 () List!65634)

(declare-fun bm!571615 () Bool)

(declare-fun c!1207674 () Bool)

(assert (=> bm!571615 (= call!571619 (derivationStepZipperDown!1693 (ite c!1207674 (regTwo!33403 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))) (regOne!33402 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292)))))))) (ite c!1207674 (ite (or c!1207459 c!1207456) lt!2408267 (Context!11659 call!571504)) (Context!11659 call!571623)) (h!71960 s!2326)))))

(declare-fun e!3976606 () (InoxSet Context!11658))

(declare-fun b!6569691 () Bool)

(assert (=> b!6569691 (= e!3976606 (store ((as const (Array Context!11658 Bool)) false) (ite (or c!1207459 c!1207456) lt!2408267 (Context!11659 call!571504)) true))))

(declare-fun bm!571616 () Bool)

(declare-fun call!571620 () List!65634)

(assert (=> bm!571616 (= call!571620 call!571623)))

(declare-fun b!6569693 () Bool)

(declare-fun e!3976607 () (InoxSet Context!11658))

(declare-fun e!3976610 () (InoxSet Context!11658))

(assert (=> b!6569693 (= e!3976607 e!3976610)))

(declare-fun c!1207673 () Bool)

(assert (=> b!6569693 (= c!1207673 ((_ is Concat!25290) (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))))))

(declare-fun b!6569694 () Bool)

(declare-fun e!3976609 () (InoxSet Context!11658))

(assert (=> b!6569694 (= e!3976609 ((as const (Array Context!11658 Bool)) false))))

(declare-fun e!3976605 () Bool)

(declare-fun b!6569695 () Bool)

(assert (=> b!6569695 (= e!3976605 (nullable!6438 (regOne!33402 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292)))))))))))

(declare-fun c!1207671 () Bool)

(declare-fun bm!571617 () Bool)

(declare-fun call!571624 () (InoxSet Context!11658))

(assert (=> bm!571617 (= call!571624 (derivationStepZipperDown!1693 (ite c!1207674 (regOne!33403 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))) (ite c!1207671 (regTwo!33402 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))) (ite c!1207673 (regOne!33402 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))) (reg!16774 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292)))))))))) (ite (or c!1207674 c!1207671) (ite (or c!1207459 c!1207456) lt!2408267 (Context!11659 call!571504)) (Context!11659 call!571620)) (h!71960 s!2326)))))

(declare-fun b!6569696 () Bool)

(assert (=> b!6569696 (= e!3976607 ((_ map or) call!571619 call!571622))))

(declare-fun c!1207670 () Bool)

(declare-fun b!6569697 () Bool)

(assert (=> b!6569697 (= c!1207670 ((_ is Star!16445) (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))))))

(assert (=> b!6569697 (= e!3976610 e!3976609)))

(declare-fun b!6569698 () Bool)

(declare-fun e!3976608 () (InoxSet Context!11658))

(assert (=> b!6569698 (= e!3976608 ((_ map or) call!571624 call!571619))))

(declare-fun bm!571618 () Bool)

(assert (=> bm!571618 (= call!571623 ($colon$colon!2286 (exprs!6329 (ite (or c!1207459 c!1207456) lt!2408267 (Context!11659 call!571504))) (ite (or c!1207671 c!1207673) (regTwo!33402 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))) (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292)))))))))))

(declare-fun b!6569692 () Bool)

(assert (=> b!6569692 (= e!3976606 e!3976608)))

(assert (=> b!6569692 (= c!1207674 ((_ is Union!16445) (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))))))

(declare-fun d!2061244 () Bool)

(declare-fun c!1207672 () Bool)

(assert (=> d!2061244 (= c!1207672 (and ((_ is ElementMatch!16445) (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))) (= (c!1207368 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))) (h!71960 s!2326))))))

(assert (=> d!2061244 (= (derivationStepZipperDown!1693 (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292)))))) (ite (or c!1207459 c!1207456) lt!2408267 (Context!11659 call!571504)) (h!71960 s!2326)) e!3976606)))

(declare-fun b!6569699 () Bool)

(assert (=> b!6569699 (= e!3976610 call!571621)))

(declare-fun b!6569700 () Bool)

(assert (=> b!6569700 (= e!3976609 call!571621)))

(declare-fun b!6569701 () Bool)

(assert (=> b!6569701 (= c!1207671 e!3976605)))

(declare-fun res!2696115 () Bool)

(assert (=> b!6569701 (=> (not res!2696115) (not e!3976605))))

(assert (=> b!6569701 (= res!2696115 ((_ is Concat!25290) (ite c!1207459 (regOne!33403 (reg!16774 (regOne!33402 r!7292))) (ite c!1207456 (regTwo!33402 (reg!16774 (regOne!33402 r!7292))) (ite c!1207458 (regOne!33402 (reg!16774 (regOne!33402 r!7292))) (reg!16774 (reg!16774 (regOne!33402 r!7292))))))))))

(assert (=> b!6569701 (= e!3976608 e!3976607)))

(declare-fun bm!571619 () Bool)

(assert (=> bm!571619 (= call!571622 call!571624)))

(assert (= (and d!2061244 c!1207672) b!6569691))

(assert (= (and d!2061244 (not c!1207672)) b!6569692))

(assert (= (and b!6569692 c!1207674) b!6569698))

(assert (= (and b!6569692 (not c!1207674)) b!6569701))

(assert (= (and b!6569701 res!2696115) b!6569695))

(assert (= (and b!6569701 c!1207671) b!6569696))

(assert (= (and b!6569701 (not c!1207671)) b!6569693))

(assert (= (and b!6569693 c!1207673) b!6569699))

(assert (= (and b!6569693 (not c!1207673)) b!6569697))

(assert (= (and b!6569697 c!1207670) b!6569700))

(assert (= (and b!6569697 (not c!1207670)) b!6569694))

(assert (= (or b!6569699 b!6569700) bm!571616))

(assert (= (or b!6569699 b!6569700) bm!571614))

(assert (= (or b!6569696 bm!571616) bm!571618))

(assert (= (or b!6569696 bm!571614) bm!571619))

(assert (= (or b!6569698 b!6569696) bm!571615))

(assert (= (or b!6569698 bm!571619) bm!571617))

(declare-fun m!7351700 () Bool)

(assert (=> bm!571618 m!7351700))

(declare-fun m!7351702 () Bool)

(assert (=> b!6569691 m!7351702))

(declare-fun m!7351704 () Bool)

(assert (=> bm!571617 m!7351704))

(declare-fun m!7351706 () Bool)

(assert (=> bm!571615 m!7351706))

(declare-fun m!7351708 () Bool)

(assert (=> b!6569695 m!7351708))

(assert (=> bm!571501 d!2061244))

(declare-fun bm!571620 () Bool)

(declare-fun call!571627 () (InoxSet Context!11658))

(declare-fun call!571628 () (InoxSet Context!11658))

(assert (=> bm!571620 (= call!571627 call!571628)))

(declare-fun call!571625 () (InoxSet Context!11658))

(declare-fun c!1207679 () Bool)

(declare-fun bm!571621 () Bool)

(declare-fun call!571629 () List!65634)

(assert (=> bm!571621 (= call!571625 (derivationStepZipperDown!1693 (ite c!1207679 (regTwo!33403 (h!71958 (exprs!6329 lt!2408275))) (regOne!33402 (h!71958 (exprs!6329 lt!2408275)))) (ite c!1207679 (Context!11659 (t!379278 (exprs!6329 lt!2408275))) (Context!11659 call!571629)) (h!71960 s!2326)))))

(declare-fun b!6569702 () Bool)

(declare-fun e!3976612 () (InoxSet Context!11658))

(assert (=> b!6569702 (= e!3976612 (store ((as const (Array Context!11658 Bool)) false) (Context!11659 (t!379278 (exprs!6329 lt!2408275))) true))))

(declare-fun bm!571622 () Bool)

(declare-fun call!571626 () List!65634)

(assert (=> bm!571622 (= call!571626 call!571629)))

(declare-fun b!6569704 () Bool)

(declare-fun e!3976613 () (InoxSet Context!11658))

(declare-fun e!3976616 () (InoxSet Context!11658))

(assert (=> b!6569704 (= e!3976613 e!3976616)))

(declare-fun c!1207678 () Bool)

(assert (=> b!6569704 (= c!1207678 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408275))))))

(declare-fun b!6569705 () Bool)

(declare-fun e!3976615 () (InoxSet Context!11658))

(assert (=> b!6569705 (= e!3976615 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569706 () Bool)

(declare-fun e!3976611 () Bool)

(assert (=> b!6569706 (= e!3976611 (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 lt!2408275)))))))

(declare-fun call!571630 () (InoxSet Context!11658))

(declare-fun bm!571623 () Bool)

(declare-fun c!1207676 () Bool)

(assert (=> bm!571623 (= call!571630 (derivationStepZipperDown!1693 (ite c!1207679 (regOne!33403 (h!71958 (exprs!6329 lt!2408275))) (ite c!1207676 (regTwo!33402 (h!71958 (exprs!6329 lt!2408275))) (ite c!1207678 (regOne!33402 (h!71958 (exprs!6329 lt!2408275))) (reg!16774 (h!71958 (exprs!6329 lt!2408275)))))) (ite (or c!1207679 c!1207676) (Context!11659 (t!379278 (exprs!6329 lt!2408275))) (Context!11659 call!571626)) (h!71960 s!2326)))))

(declare-fun b!6569707 () Bool)

(assert (=> b!6569707 (= e!3976613 ((_ map or) call!571625 call!571628))))

(declare-fun b!6569708 () Bool)

(declare-fun c!1207675 () Bool)

(assert (=> b!6569708 (= c!1207675 ((_ is Star!16445) (h!71958 (exprs!6329 lt!2408275))))))

(assert (=> b!6569708 (= e!3976616 e!3976615)))

(declare-fun b!6569709 () Bool)

(declare-fun e!3976614 () (InoxSet Context!11658))

(assert (=> b!6569709 (= e!3976614 ((_ map or) call!571630 call!571625))))

(declare-fun bm!571624 () Bool)

(assert (=> bm!571624 (= call!571629 ($colon$colon!2286 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408275)))) (ite (or c!1207676 c!1207678) (regTwo!33402 (h!71958 (exprs!6329 lt!2408275))) (h!71958 (exprs!6329 lt!2408275)))))))

(declare-fun b!6569703 () Bool)

(assert (=> b!6569703 (= e!3976612 e!3976614)))

(assert (=> b!6569703 (= c!1207679 ((_ is Union!16445) (h!71958 (exprs!6329 lt!2408275))))))

(declare-fun d!2061246 () Bool)

(declare-fun c!1207677 () Bool)

(assert (=> d!2061246 (= c!1207677 (and ((_ is ElementMatch!16445) (h!71958 (exprs!6329 lt!2408275))) (= (c!1207368 (h!71958 (exprs!6329 lt!2408275))) (h!71960 s!2326))))))

(assert (=> d!2061246 (= (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408275)) (Context!11659 (t!379278 (exprs!6329 lt!2408275))) (h!71960 s!2326)) e!3976612)))

(declare-fun b!6569710 () Bool)

(assert (=> b!6569710 (= e!3976616 call!571627)))

(declare-fun b!6569711 () Bool)

(assert (=> b!6569711 (= e!3976615 call!571627)))

(declare-fun b!6569712 () Bool)

(assert (=> b!6569712 (= c!1207676 e!3976611)))

(declare-fun res!2696116 () Bool)

(assert (=> b!6569712 (=> (not res!2696116) (not e!3976611))))

(assert (=> b!6569712 (= res!2696116 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408275))))))

(assert (=> b!6569712 (= e!3976614 e!3976613)))

(declare-fun bm!571625 () Bool)

(assert (=> bm!571625 (= call!571628 call!571630)))

(assert (= (and d!2061246 c!1207677) b!6569702))

(assert (= (and d!2061246 (not c!1207677)) b!6569703))

(assert (= (and b!6569703 c!1207679) b!6569709))

(assert (= (and b!6569703 (not c!1207679)) b!6569712))

(assert (= (and b!6569712 res!2696116) b!6569706))

(assert (= (and b!6569712 c!1207676) b!6569707))

(assert (= (and b!6569712 (not c!1207676)) b!6569704))

(assert (= (and b!6569704 c!1207678) b!6569710))

(assert (= (and b!6569704 (not c!1207678)) b!6569708))

(assert (= (and b!6569708 c!1207675) b!6569711))

(assert (= (and b!6569708 (not c!1207675)) b!6569705))

(assert (= (or b!6569710 b!6569711) bm!571622))

(assert (= (or b!6569710 b!6569711) bm!571620))

(assert (= (or b!6569707 bm!571622) bm!571624))

(assert (= (or b!6569707 bm!571620) bm!571625))

(assert (= (or b!6569709 b!6569707) bm!571621))

(assert (= (or b!6569709 bm!571625) bm!571623))

(declare-fun m!7351710 () Bool)

(assert (=> bm!571624 m!7351710))

(declare-fun m!7351712 () Bool)

(assert (=> b!6569702 m!7351712))

(declare-fun m!7351714 () Bool)

(assert (=> bm!571623 m!7351714))

(declare-fun m!7351716 () Bool)

(assert (=> bm!571621 m!7351716))

(declare-fun m!7351718 () Bool)

(assert (=> b!6569706 m!7351718))

(assert (=> bm!571467 d!2061246))

(assert (=> b!6569008 d!2060980))

(assert (=> b!6568937 d!2061110))

(declare-fun bs!1678032 () Bool)

(declare-fun b!6569722 () Bool)

(assert (= bs!1678032 (and b!6569722 b!6568921)))

(declare-fun lambda!365823 () Int)

(assert (=> bs!1678032 (not (= lambda!365823 lambda!365761))))

(declare-fun bs!1678033 () Bool)

(assert (= bs!1678033 (and b!6569722 b!6568784)))

(assert (=> bs!1678033 (not (= lambda!365823 lambda!365750))))

(declare-fun bs!1678034 () Bool)

(assert (= bs!1678034 (and b!6569722 d!2061088)))

(assert (=> bs!1678034 (not (= lambda!365823 lambda!365803))))

(declare-fun bs!1678035 () Bool)

(assert (= bs!1678035 (and b!6569722 d!2061186)))

(assert (=> bs!1678035 (not (= lambda!365823 lambda!365818))))

(declare-fun bs!1678036 () Bool)

(assert (= bs!1678036 (and b!6569722 b!6568923)))

(assert (=> bs!1678036 (= (and (= (reg!16774 (regOne!33403 lt!2408266)) (reg!16774 r!7292)) (= (regOne!33403 lt!2408266) r!7292)) (= lambda!365823 lambda!365760))))

(assert (=> bs!1678035 (not (= lambda!365823 lambda!365817))))

(declare-fun bs!1678037 () Bool)

(assert (= bs!1678037 (and b!6569722 b!6568614)))

(assert (=> bs!1678037 (not (= lambda!365823 lambda!365734))))

(declare-fun bs!1678038 () Bool)

(assert (= bs!1678038 (and b!6569722 b!6569486)))

(assert (=> bs!1678038 (not (= lambda!365823 lambda!365806))))

(assert (=> bs!1678034 (not (= lambda!365823 lambda!365802))))

(declare-fun bs!1678039 () Bool)

(assert (= bs!1678039 (and b!6569722 b!6568786)))

(assert (=> bs!1678039 (= (and (= (reg!16774 (regOne!33403 lt!2408266)) (reg!16774 lt!2408266)) (= (regOne!33403 lt!2408266) lt!2408266)) (= lambda!365823 lambda!365749))))

(declare-fun bs!1678040 () Bool)

(assert (= bs!1678040 (and b!6569722 d!2061064)))

(assert (=> bs!1678040 (not (= lambda!365823 lambda!365793))))

(declare-fun bs!1678041 () Bool)

(assert (= bs!1678041 (and b!6569722 b!6569488)))

(assert (=> bs!1678041 (= (and (= (reg!16774 (regOne!33403 lt!2408266)) (reg!16774 (regTwo!33403 r!7292))) (= (regOne!33403 lt!2408266) (regTwo!33403 r!7292))) (= lambda!365823 lambda!365805))))

(assert (=> bs!1678037 (not (= lambda!365823 lambda!365733))))

(assert (=> b!6569722 true))

(assert (=> b!6569722 true))

(declare-fun bs!1678042 () Bool)

(declare-fun b!6569720 () Bool)

(assert (= bs!1678042 (and b!6569720 b!6568921)))

(declare-fun lambda!365824 () Int)

(assert (=> bs!1678042 (= (and (= (regOne!33402 (regOne!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365824 lambda!365761))))

(declare-fun bs!1678043 () Bool)

(assert (= bs!1678043 (and b!6569720 b!6569722)))

(assert (=> bs!1678043 (not (= lambda!365824 lambda!365823))))

(declare-fun bs!1678044 () Bool)

(assert (= bs!1678044 (and b!6569720 b!6568784)))

(assert (=> bs!1678044 (= (and (= (regOne!33402 (regOne!33403 lt!2408266)) (regOne!33402 lt!2408266)) (= (regTwo!33402 (regOne!33403 lt!2408266)) (regTwo!33402 lt!2408266))) (= lambda!365824 lambda!365750))))

(declare-fun bs!1678045 () Bool)

(assert (= bs!1678045 (and b!6569720 d!2061088)))

(assert (=> bs!1678045 (= (and (= (regOne!33402 (regOne!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365824 lambda!365803))))

(declare-fun bs!1678046 () Bool)

(assert (= bs!1678046 (and b!6569720 d!2061186)))

(assert (=> bs!1678046 (= (and (= (regOne!33402 (regOne!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365824 lambda!365818))))

(declare-fun bs!1678047 () Bool)

(assert (= bs!1678047 (and b!6569720 b!6568923)))

(assert (=> bs!1678047 (not (= lambda!365824 lambda!365760))))

(assert (=> bs!1678046 (not (= lambda!365824 lambda!365817))))

(declare-fun bs!1678048 () Bool)

(assert (= bs!1678048 (and b!6569720 b!6568614)))

(assert (=> bs!1678048 (= (and (= (regOne!33402 (regOne!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365824 lambda!365734))))

(declare-fun bs!1678049 () Bool)

(assert (= bs!1678049 (and b!6569720 b!6569486)))

(assert (=> bs!1678049 (= (and (= (regOne!33402 (regOne!33403 lt!2408266)) (regOne!33402 (regTwo!33403 r!7292))) (= (regTwo!33402 (regOne!33403 lt!2408266)) (regTwo!33402 (regTwo!33403 r!7292)))) (= lambda!365824 lambda!365806))))

(assert (=> bs!1678045 (not (= lambda!365824 lambda!365802))))

(declare-fun bs!1678050 () Bool)

(assert (= bs!1678050 (and b!6569720 b!6568786)))

(assert (=> bs!1678050 (not (= lambda!365824 lambda!365749))))

(declare-fun bs!1678051 () Bool)

(assert (= bs!1678051 (and b!6569720 d!2061064)))

(assert (=> bs!1678051 (not (= lambda!365824 lambda!365793))))

(declare-fun bs!1678052 () Bool)

(assert (= bs!1678052 (and b!6569720 b!6569488)))

(assert (=> bs!1678052 (not (= lambda!365824 lambda!365805))))

(assert (=> bs!1678048 (not (= lambda!365824 lambda!365733))))

(assert (=> b!6569720 true))

(assert (=> b!6569720 true))

(declare-fun d!2061248 () Bool)

(declare-fun c!1207681 () Bool)

(assert (=> d!2061248 (= c!1207681 ((_ is EmptyExpr!16445) (regOne!33403 lt!2408266)))))

(declare-fun e!3976623 () Bool)

(assert (=> d!2061248 (= (matchRSpec!3546 (regOne!33403 lt!2408266) s!2326) e!3976623)))

(declare-fun b!6569713 () Bool)

(declare-fun e!3976617 () Bool)

(declare-fun e!3976620 () Bool)

(assert (=> b!6569713 (= e!3976617 e!3976620)))

(declare-fun res!2696118 () Bool)

(assert (=> b!6569713 (= res!2696118 (matchRSpec!3546 (regOne!33403 (regOne!33403 lt!2408266)) s!2326))))

(assert (=> b!6569713 (=> res!2696118 e!3976620)))

(declare-fun b!6569714 () Bool)

(declare-fun res!2696117 () Bool)

(declare-fun e!3976618 () Bool)

(assert (=> b!6569714 (=> res!2696117 e!3976618)))

(declare-fun call!571632 () Bool)

(assert (=> b!6569714 (= res!2696117 call!571632)))

(declare-fun e!3976619 () Bool)

(assert (=> b!6569714 (= e!3976619 e!3976618)))

(declare-fun b!6569715 () Bool)

(declare-fun e!3976622 () Bool)

(assert (=> b!6569715 (= e!3976622 (= s!2326 (Cons!65512 (c!1207368 (regOne!33403 lt!2408266)) Nil!65512)))))

(declare-fun bm!571626 () Bool)

(declare-fun c!1207682 () Bool)

(declare-fun call!571631 () Bool)

(assert (=> bm!571626 (= call!571631 (Exists!3515 (ite c!1207682 lambda!365823 lambda!365824)))))

(declare-fun b!6569716 () Bool)

(assert (=> b!6569716 (= e!3976617 e!3976619)))

(assert (=> b!6569716 (= c!1207682 ((_ is Star!16445) (regOne!33403 lt!2408266)))))

(declare-fun b!6569717 () Bool)

(assert (=> b!6569717 (= e!3976623 call!571632)))

(declare-fun b!6569718 () Bool)

(assert (=> b!6569718 (= e!3976620 (matchRSpec!3546 (regTwo!33403 (regOne!33403 lt!2408266)) s!2326))))

(declare-fun bm!571627 () Bool)

(assert (=> bm!571627 (= call!571632 (isEmpty!37760 s!2326))))

(declare-fun b!6569719 () Bool)

(declare-fun c!1207683 () Bool)

(assert (=> b!6569719 (= c!1207683 ((_ is ElementMatch!16445) (regOne!33403 lt!2408266)))))

(declare-fun e!3976621 () Bool)

(assert (=> b!6569719 (= e!3976621 e!3976622)))

(assert (=> b!6569720 (= e!3976619 call!571631)))

(declare-fun b!6569721 () Bool)

(declare-fun c!1207680 () Bool)

(assert (=> b!6569721 (= c!1207680 ((_ is Union!16445) (regOne!33403 lt!2408266)))))

(assert (=> b!6569721 (= e!3976622 e!3976617)))

(assert (=> b!6569722 (= e!3976618 call!571631)))

(declare-fun b!6569723 () Bool)

(assert (=> b!6569723 (= e!3976623 e!3976621)))

(declare-fun res!2696119 () Bool)

(assert (=> b!6569723 (= res!2696119 (not ((_ is EmptyLang!16445) (regOne!33403 lt!2408266))))))

(assert (=> b!6569723 (=> (not res!2696119) (not e!3976621))))

(assert (= (and d!2061248 c!1207681) b!6569717))

(assert (= (and d!2061248 (not c!1207681)) b!6569723))

(assert (= (and b!6569723 res!2696119) b!6569719))

(assert (= (and b!6569719 c!1207683) b!6569715))

(assert (= (and b!6569719 (not c!1207683)) b!6569721))

(assert (= (and b!6569721 c!1207680) b!6569713))

(assert (= (and b!6569721 (not c!1207680)) b!6569716))

(assert (= (and b!6569713 (not res!2696118)) b!6569718))

(assert (= (and b!6569716 c!1207682) b!6569714))

(assert (= (and b!6569716 (not c!1207682)) b!6569720))

(assert (= (and b!6569714 (not res!2696117)) b!6569722))

(assert (= (or b!6569722 b!6569720) bm!571626))

(assert (= (or b!6569717 b!6569714) bm!571627))

(declare-fun m!7351720 () Bool)

(assert (=> b!6569713 m!7351720))

(declare-fun m!7351722 () Bool)

(assert (=> bm!571626 m!7351722))

(declare-fun m!7351724 () Bool)

(assert (=> b!6569718 m!7351724))

(assert (=> bm!571627 m!7350906))

(assert (=> b!6568777 d!2061248))

(declare-fun d!2061250 () Bool)

(declare-fun res!2696124 () Bool)

(declare-fun e!3976628 () Bool)

(assert (=> d!2061250 (=> res!2696124 e!3976628)))

(assert (=> d!2061250 (= res!2696124 ((_ is Nil!65511) lt!2408340))))

(assert (=> d!2061250 (= (noDuplicate!2249 lt!2408340) e!3976628)))

(declare-fun b!6569728 () Bool)

(declare-fun e!3976629 () Bool)

(assert (=> b!6569728 (= e!3976628 e!3976629)))

(declare-fun res!2696125 () Bool)

(assert (=> b!6569728 (=> (not res!2696125) (not e!3976629))))

(declare-fun contains!20207 (List!65635 Context!11658) Bool)

(assert (=> b!6569728 (= res!2696125 (not (contains!20207 (t!379279 lt!2408340) (h!71959 lt!2408340))))))

(declare-fun b!6569729 () Bool)

(assert (=> b!6569729 (= e!3976629 (noDuplicate!2249 (t!379279 lt!2408340)))))

(assert (= (and d!2061250 (not res!2696124)) b!6569728))

(assert (= (and b!6569728 res!2696125) b!6569729))

(declare-fun m!7351726 () Bool)

(assert (=> b!6569728 m!7351726))

(declare-fun m!7351728 () Bool)

(assert (=> b!6569729 m!7351728))

(assert (=> d!2060982 d!2061250))

(declare-fun d!2061252 () Bool)

(declare-fun e!3976636 () Bool)

(assert (=> d!2061252 e!3976636))

(declare-fun res!2696131 () Bool)

(assert (=> d!2061252 (=> (not res!2696131) (not e!3976636))))

(declare-fun res!2696130 () List!65635)

(assert (=> d!2061252 (= res!2696131 (noDuplicate!2249 res!2696130))))

(declare-fun e!3976638 () Bool)

(assert (=> d!2061252 e!3976638))

(assert (=> d!2061252 (= (choose!49070 z!1189) res!2696130)))

(declare-fun b!6569737 () Bool)

(declare-fun e!3976637 () Bool)

(declare-fun tp!1813647 () Bool)

(assert (=> b!6569737 (= e!3976637 tp!1813647)))

(declare-fun tp!1813646 () Bool)

(declare-fun b!6569736 () Bool)

(assert (=> b!6569736 (= e!3976638 (and (inv!84359 (h!71959 res!2696130)) e!3976637 tp!1813646))))

(declare-fun b!6569738 () Bool)

(assert (=> b!6569738 (= e!3976636 (= (content!12613 res!2696130) z!1189))))

(assert (= b!6569736 b!6569737))

(assert (= (and d!2061252 ((_ is Cons!65511) res!2696130)) b!6569736))

(assert (= (and d!2061252 res!2696131) b!6569738))

(declare-fun m!7351730 () Bool)

(assert (=> d!2061252 m!7351730))

(declare-fun m!7351732 () Bool)

(assert (=> b!6569736 m!7351732))

(declare-fun m!7351734 () Bool)

(assert (=> b!6569738 m!7351734))

(assert (=> d!2060982 d!2061252))

(declare-fun d!2061254 () Bool)

(assert (=> d!2061254 (= ($colon$colon!2286 (exprs!6329 lt!2408279) (ite (or c!1207538 c!1207540) (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (h!71958 (exprs!6329 (h!71959 zl!343))))) (Cons!65510 (ite (or c!1207538 c!1207540) (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (h!71958 (exprs!6329 (h!71959 zl!343)))) (exprs!6329 lt!2408279)))))

(assert (=> bm!571535 d!2061254))

(declare-fun bs!1678053 () Bool)

(declare-fun d!2061256 () Bool)

(assert (= bs!1678053 (and d!2061256 d!2061148)))

(declare-fun lambda!365825 () Int)

(assert (=> bs!1678053 (= lambda!365825 lambda!365810)))

(assert (=> d!2061256 (= (nullableZipper!2190 lt!2408280) (exists!2640 lt!2408280 lambda!365825))))

(declare-fun bs!1678054 () Bool)

(assert (= bs!1678054 d!2061256))

(declare-fun m!7351736 () Bool)

(assert (=> bs!1678054 m!7351736))

(assert (=> b!6568810 d!2061256))

(declare-fun bm!571628 () Bool)

(declare-fun call!571635 () (InoxSet Context!11658))

(declare-fun call!571636 () (InoxSet Context!11658))

(assert (=> bm!571628 (= call!571635 call!571636)))

(declare-fun bm!571629 () Bool)

(declare-fun call!571637 () List!65634)

(declare-fun c!1207688 () Bool)

(declare-fun call!571633 () (InoxSet Context!11658))

(assert (=> bm!571629 (= call!571633 (derivationStepZipperDown!1693 (ite c!1207688 (regTwo!33403 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))) (regOne!33402 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292)))))) (ite c!1207688 (ite c!1207459 lt!2408267 (Context!11659 call!571507)) (Context!11659 call!571637)) (h!71960 s!2326)))))

(declare-fun b!6569739 () Bool)

(declare-fun e!3976640 () (InoxSet Context!11658))

(assert (=> b!6569739 (= e!3976640 (store ((as const (Array Context!11658 Bool)) false) (ite c!1207459 lt!2408267 (Context!11659 call!571507)) true))))

(declare-fun bm!571630 () Bool)

(declare-fun call!571634 () List!65634)

(assert (=> bm!571630 (= call!571634 call!571637)))

(declare-fun b!6569741 () Bool)

(declare-fun e!3976641 () (InoxSet Context!11658))

(declare-fun e!3976644 () (InoxSet Context!11658))

(assert (=> b!6569741 (= e!3976641 e!3976644)))

(declare-fun c!1207687 () Bool)

(assert (=> b!6569741 (= c!1207687 ((_ is Concat!25290) (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))))))

(declare-fun b!6569742 () Bool)

(declare-fun e!3976643 () (InoxSet Context!11658))

(assert (=> b!6569742 (= e!3976643 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569743 () Bool)

(declare-fun e!3976639 () Bool)

(assert (=> b!6569743 (= e!3976639 (nullable!6438 (regOne!33402 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292)))))))))

(declare-fun bm!571631 () Bool)

(declare-fun call!571638 () (InoxSet Context!11658))

(declare-fun c!1207685 () Bool)

(assert (=> bm!571631 (= call!571638 (derivationStepZipperDown!1693 (ite c!1207688 (regOne!33403 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))) (ite c!1207685 (regTwo!33402 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))) (ite c!1207687 (regOne!33402 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))) (reg!16774 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292)))))))) (ite (or c!1207688 c!1207685) (ite c!1207459 lt!2408267 (Context!11659 call!571507)) (Context!11659 call!571634)) (h!71960 s!2326)))))

(declare-fun b!6569744 () Bool)

(assert (=> b!6569744 (= e!3976641 ((_ map or) call!571633 call!571636))))

(declare-fun b!6569745 () Bool)

(declare-fun c!1207684 () Bool)

(assert (=> b!6569745 (= c!1207684 ((_ is Star!16445) (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))))))

(assert (=> b!6569745 (= e!3976644 e!3976643)))

(declare-fun b!6569746 () Bool)

(declare-fun e!3976642 () (InoxSet Context!11658))

(assert (=> b!6569746 (= e!3976642 ((_ map or) call!571638 call!571633))))

(declare-fun bm!571632 () Bool)

(assert (=> bm!571632 (= call!571637 ($colon$colon!2286 (exprs!6329 (ite c!1207459 lt!2408267 (Context!11659 call!571507))) (ite (or c!1207685 c!1207687) (regTwo!33402 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))) (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292)))))))))

(declare-fun b!6569740 () Bool)

(assert (=> b!6569740 (= e!3976640 e!3976642)))

(assert (=> b!6569740 (= c!1207688 ((_ is Union!16445) (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))))))

(declare-fun c!1207686 () Bool)

(declare-fun d!2061258 () Bool)

(assert (=> d!2061258 (= c!1207686 (and ((_ is ElementMatch!16445) (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))) (= (c!1207368 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))) (h!71960 s!2326))))))

(assert (=> d!2061258 (= (derivationStepZipperDown!1693 (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292)))) (ite c!1207459 lt!2408267 (Context!11659 call!571507)) (h!71960 s!2326)) e!3976640)))

(declare-fun b!6569747 () Bool)

(assert (=> b!6569747 (= e!3976644 call!571635)))

(declare-fun b!6569748 () Bool)

(assert (=> b!6569748 (= e!3976643 call!571635)))

(declare-fun b!6569749 () Bool)

(assert (=> b!6569749 (= c!1207685 e!3976639)))

(declare-fun res!2696132 () Bool)

(assert (=> b!6569749 (=> (not res!2696132) (not e!3976639))))

(assert (=> b!6569749 (= res!2696132 ((_ is Concat!25290) (ite c!1207459 (regTwo!33403 (reg!16774 (regOne!33402 r!7292))) (regOne!33402 (reg!16774 (regOne!33402 r!7292))))))))

(assert (=> b!6569749 (= e!3976642 e!3976641)))

(declare-fun bm!571633 () Bool)

(assert (=> bm!571633 (= call!571636 call!571638)))

(assert (= (and d!2061258 c!1207686) b!6569739))

(assert (= (and d!2061258 (not c!1207686)) b!6569740))

(assert (= (and b!6569740 c!1207688) b!6569746))

(assert (= (and b!6569740 (not c!1207688)) b!6569749))

(assert (= (and b!6569749 res!2696132) b!6569743))

(assert (= (and b!6569749 c!1207685) b!6569744))

(assert (= (and b!6569749 (not c!1207685)) b!6569741))

(assert (= (and b!6569741 c!1207687) b!6569747))

(assert (= (and b!6569741 (not c!1207687)) b!6569745))

(assert (= (and b!6569745 c!1207684) b!6569748))

(assert (= (and b!6569745 (not c!1207684)) b!6569742))

(assert (= (or b!6569747 b!6569748) bm!571630))

(assert (= (or b!6569747 b!6569748) bm!571628))

(assert (= (or b!6569744 bm!571630) bm!571632))

(assert (= (or b!6569744 bm!571628) bm!571633))

(assert (= (or b!6569746 b!6569744) bm!571629))

(assert (= (or b!6569746 bm!571633) bm!571631))

(declare-fun m!7351738 () Bool)

(assert (=> bm!571632 m!7351738))

(declare-fun m!7351740 () Bool)

(assert (=> b!6569739 m!7351740))

(declare-fun m!7351742 () Bool)

(assert (=> bm!571631 m!7351742))

(declare-fun m!7351744 () Bool)

(assert (=> bm!571629 m!7351744))

(declare-fun m!7351746 () Bool)

(assert (=> b!6569743 m!7351746))

(assert (=> bm!571499 d!2061258))

(declare-fun d!2061260 () Bool)

(assert (=> d!2061260 true))

(declare-fun setRes!44856 () Bool)

(assert (=> d!2061260 setRes!44856))

(declare-fun condSetEmpty!44856 () Bool)

(declare-fun res!2696133 () (InoxSet Context!11658))

(assert (=> d!2061260 (= condSetEmpty!44856 (= res!2696133 ((as const (Array Context!11658 Bool)) false)))))

(assert (=> d!2061260 (= (choose!49067 z!1189 lambda!365735) res!2696133)))

(declare-fun setIsEmpty!44856 () Bool)

(assert (=> setIsEmpty!44856 setRes!44856))

(declare-fun e!3976645 () Bool)

(declare-fun setElem!44856 () Context!11658)

(declare-fun tp!1813648 () Bool)

(declare-fun setNonEmpty!44856 () Bool)

(assert (=> setNonEmpty!44856 (= setRes!44856 (and tp!1813648 (inv!84359 setElem!44856) e!3976645))))

(declare-fun setRest!44856 () (InoxSet Context!11658))

(assert (=> setNonEmpty!44856 (= res!2696133 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) setElem!44856 true) setRest!44856))))

(declare-fun b!6569750 () Bool)

(declare-fun tp!1813649 () Bool)

(assert (=> b!6569750 (= e!3976645 tp!1813649)))

(assert (= (and d!2061260 condSetEmpty!44856) setIsEmpty!44856))

(assert (= (and d!2061260 (not condSetEmpty!44856)) setNonEmpty!44856))

(assert (= setNonEmpty!44856 b!6569750))

(declare-fun m!7351748 () Bool)

(assert (=> setNonEmpty!44856 m!7351748))

(assert (=> d!2061020 d!2061260))

(assert (=> b!6568720 d!2061110))

(declare-fun d!2061262 () Bool)

(assert (=> d!2061262 (= (nullable!6438 (reg!16774 r!7292)) (nullableFct!2364 (reg!16774 r!7292)))))

(declare-fun bs!1678055 () Bool)

(assert (= bs!1678055 d!2061262))

(declare-fun m!7351750 () Bool)

(assert (=> bs!1678055 m!7351750))

(assert (=> b!6569155 d!2061262))

(declare-fun bm!571634 () Bool)

(declare-fun call!571641 () (InoxSet Context!11658))

(declare-fun call!571642 () (InoxSet Context!11658))

(assert (=> bm!571634 (= call!571641 call!571642)))

(declare-fun call!571639 () (InoxSet Context!11658))

(declare-fun c!1207693 () Bool)

(declare-fun call!571643 () List!65634)

(declare-fun bm!571635 () Bool)

(assert (=> bm!571635 (= call!571639 (derivationStepZipperDown!1693 (ite c!1207693 (regTwo!33403 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))) (regOne!33402 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343))))))))) (ite c!1207693 (ite (or c!1207541 c!1207538) lt!2408279 (Context!11659 call!571537)) (Context!11659 call!571643)) (h!71960 s!2326)))))

(declare-fun b!6569751 () Bool)

(declare-fun e!3976647 () (InoxSet Context!11658))

(assert (=> b!6569751 (= e!3976647 (store ((as const (Array Context!11658 Bool)) false) (ite (or c!1207541 c!1207538) lt!2408279 (Context!11659 call!571537)) true))))

(declare-fun bm!571636 () Bool)

(declare-fun call!571640 () List!65634)

(assert (=> bm!571636 (= call!571640 call!571643)))

(declare-fun b!6569753 () Bool)

(declare-fun e!3976648 () (InoxSet Context!11658))

(declare-fun e!3976651 () (InoxSet Context!11658))

(assert (=> b!6569753 (= e!3976648 e!3976651)))

(declare-fun c!1207692 () Bool)

(assert (=> b!6569753 (= c!1207692 ((_ is Concat!25290) (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))))

(declare-fun b!6569754 () Bool)

(declare-fun e!3976650 () (InoxSet Context!11658))

(assert (=> b!6569754 (= e!3976650 ((as const (Array Context!11658 Bool)) false))))

(declare-fun e!3976646 () Bool)

(declare-fun b!6569755 () Bool)

(assert (=> b!6569755 (= e!3976646 (nullable!6438 (regOne!33402 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343))))))))))))

(declare-fun call!571644 () (InoxSet Context!11658))

(declare-fun c!1207690 () Bool)

(declare-fun bm!571637 () Bool)

(assert (=> bm!571637 (= call!571644 (derivationStepZipperDown!1693 (ite c!1207693 (regOne!33403 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))) (ite c!1207690 (regTwo!33402 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))) (ite c!1207692 (regOne!33402 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))) (reg!16774 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343))))))))))) (ite (or c!1207693 c!1207690) (ite (or c!1207541 c!1207538) lt!2408279 (Context!11659 call!571537)) (Context!11659 call!571640)) (h!71960 s!2326)))))

(declare-fun b!6569756 () Bool)

(assert (=> b!6569756 (= e!3976648 ((_ map or) call!571639 call!571642))))

(declare-fun c!1207689 () Bool)

(declare-fun b!6569757 () Bool)

(assert (=> b!6569757 (= c!1207689 ((_ is Star!16445) (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))))

(assert (=> b!6569757 (= e!3976651 e!3976650)))

(declare-fun b!6569758 () Bool)

(declare-fun e!3976649 () (InoxSet Context!11658))

(assert (=> b!6569758 (= e!3976649 ((_ map or) call!571644 call!571639))))

(declare-fun bm!571638 () Bool)

(assert (=> bm!571638 (= call!571643 ($colon$colon!2286 (exprs!6329 (ite (or c!1207541 c!1207538) lt!2408279 (Context!11659 call!571537))) (ite (or c!1207690 c!1207692) (regTwo!33402 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))) (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343))))))))))))

(declare-fun b!6569752 () Bool)

(assert (=> b!6569752 (= e!3976647 e!3976649)))

(assert (=> b!6569752 (= c!1207693 ((_ is Union!16445) (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))))

(declare-fun c!1207691 () Bool)

(declare-fun d!2061264 () Bool)

(assert (=> d!2061264 (= c!1207691 (and ((_ is ElementMatch!16445) (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))) (= (c!1207368 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))) (h!71960 s!2326))))))

(assert (=> d!2061264 (= (derivationStepZipperDown!1693 (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343))))))) (ite (or c!1207541 c!1207538) lt!2408279 (Context!11659 call!571537)) (h!71960 s!2326)) e!3976647)))

(declare-fun b!6569759 () Bool)

(assert (=> b!6569759 (= e!3976651 call!571641)))

(declare-fun b!6569760 () Bool)

(assert (=> b!6569760 (= e!3976650 call!571641)))

(declare-fun b!6569761 () Bool)

(assert (=> b!6569761 (= c!1207690 e!3976646)))

(declare-fun res!2696134 () Bool)

(assert (=> b!6569761 (=> (not res!2696134) (not e!3976646))))

(assert (=> b!6569761 (= res!2696134 ((_ is Concat!25290) (ite c!1207541 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207538 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207540 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))))

(assert (=> b!6569761 (= e!3976649 e!3976648)))

(declare-fun bm!571639 () Bool)

(assert (=> bm!571639 (= call!571642 call!571644)))

(assert (= (and d!2061264 c!1207691) b!6569751))

(assert (= (and d!2061264 (not c!1207691)) b!6569752))

(assert (= (and b!6569752 c!1207693) b!6569758))

(assert (= (and b!6569752 (not c!1207693)) b!6569761))

(assert (= (and b!6569761 res!2696134) b!6569755))

(assert (= (and b!6569761 c!1207690) b!6569756))

(assert (= (and b!6569761 (not c!1207690)) b!6569753))

(assert (= (and b!6569753 c!1207692) b!6569759))

(assert (= (and b!6569753 (not c!1207692)) b!6569757))

(assert (= (and b!6569757 c!1207689) b!6569760))

(assert (= (and b!6569757 (not c!1207689)) b!6569754))

(assert (= (or b!6569759 b!6569760) bm!571636))

(assert (= (or b!6569759 b!6569760) bm!571634))

(assert (= (or b!6569756 bm!571636) bm!571638))

(assert (= (or b!6569756 bm!571634) bm!571639))

(assert (= (or b!6569758 b!6569756) bm!571635))

(assert (= (or b!6569758 bm!571639) bm!571637))

(declare-fun m!7351752 () Bool)

(assert (=> bm!571638 m!7351752))

(declare-fun m!7351754 () Bool)

(assert (=> b!6569751 m!7351754))

(declare-fun m!7351756 () Bool)

(assert (=> bm!571637 m!7351756))

(declare-fun m!7351758 () Bool)

(assert (=> bm!571635 m!7351758))

(declare-fun m!7351760 () Bool)

(assert (=> b!6569755 m!7351760))

(assert (=> bm!571534 d!2061264))

(declare-fun d!2061266 () Bool)

(assert (=> d!2061266 (= (isEmpty!37762 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326)) (not ((_ is Some!16335) (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326))))))

(assert (=> d!2061092 d!2061266))

(declare-fun b!6569762 () Bool)

(declare-fun e!3976653 () Bool)

(declare-fun call!571647 () Bool)

(assert (=> b!6569762 (= e!3976653 call!571647)))

(declare-fun bm!571640 () Bool)

(declare-fun call!571646 () Bool)

(declare-fun c!1207694 () Bool)

(assert (=> bm!571640 (= call!571646 (validRegex!8181 (ite c!1207694 (regOne!33403 lt!2408330) (regOne!33402 lt!2408330))))))

(declare-fun b!6569764 () Bool)

(declare-fun e!3976658 () Bool)

(declare-fun e!3976652 () Bool)

(assert (=> b!6569764 (= e!3976658 e!3976652)))

(assert (=> b!6569764 (= c!1207694 ((_ is Union!16445) lt!2408330))))

(declare-fun b!6569765 () Bool)

(declare-fun e!3976656 () Bool)

(declare-fun call!571645 () Bool)

(assert (=> b!6569765 (= e!3976656 call!571645)))

(declare-fun b!6569766 () Bool)

(declare-fun e!3976655 () Bool)

(assert (=> b!6569766 (= e!3976655 call!571647)))

(declare-fun b!6569767 () Bool)

(assert (=> b!6569767 (= e!3976658 e!3976656)))

(declare-fun res!2696139 () Bool)

(assert (=> b!6569767 (= res!2696139 (not (nullable!6438 (reg!16774 lt!2408330))))))

(assert (=> b!6569767 (=> (not res!2696139) (not e!3976656))))

(declare-fun bm!571641 () Bool)

(declare-fun c!1207695 () Bool)

(assert (=> bm!571641 (= call!571645 (validRegex!8181 (ite c!1207695 (reg!16774 lt!2408330) (ite c!1207694 (regTwo!33403 lt!2408330) (regTwo!33402 lt!2408330)))))))

(declare-fun b!6569763 () Bool)

(declare-fun res!2696135 () Bool)

(assert (=> b!6569763 (=> (not res!2696135) (not e!3976655))))

(assert (=> b!6569763 (= res!2696135 call!571646)))

(assert (=> b!6569763 (= e!3976652 e!3976655)))

(declare-fun d!2061268 () Bool)

(declare-fun res!2696136 () Bool)

(declare-fun e!3976654 () Bool)

(assert (=> d!2061268 (=> res!2696136 e!3976654)))

(assert (=> d!2061268 (= res!2696136 ((_ is ElementMatch!16445) lt!2408330))))

(assert (=> d!2061268 (= (validRegex!8181 lt!2408330) e!3976654)))

(declare-fun b!6569768 () Bool)

(declare-fun res!2696138 () Bool)

(declare-fun e!3976657 () Bool)

(assert (=> b!6569768 (=> res!2696138 e!3976657)))

(assert (=> b!6569768 (= res!2696138 (not ((_ is Concat!25290) lt!2408330)))))

(assert (=> b!6569768 (= e!3976652 e!3976657)))

(declare-fun b!6569769 () Bool)

(assert (=> b!6569769 (= e!3976654 e!3976658)))

(assert (=> b!6569769 (= c!1207695 ((_ is Star!16445) lt!2408330))))

(declare-fun bm!571642 () Bool)

(assert (=> bm!571642 (= call!571647 call!571645)))

(declare-fun b!6569770 () Bool)

(assert (=> b!6569770 (= e!3976657 e!3976653)))

(declare-fun res!2696137 () Bool)

(assert (=> b!6569770 (=> (not res!2696137) (not e!3976653))))

(assert (=> b!6569770 (= res!2696137 call!571646)))

(assert (= (and d!2061268 (not res!2696136)) b!6569769))

(assert (= (and b!6569769 c!1207695) b!6569767))

(assert (= (and b!6569769 (not c!1207695)) b!6569764))

(assert (= (and b!6569767 res!2696139) b!6569765))

(assert (= (and b!6569764 c!1207694) b!6569763))

(assert (= (and b!6569764 (not c!1207694)) b!6569768))

(assert (= (and b!6569763 res!2696135) b!6569766))

(assert (= (and b!6569768 (not res!2696138)) b!6569770))

(assert (= (and b!6569770 res!2696137) b!6569762))

(assert (= (or b!6569766 b!6569762) bm!571642))

(assert (= (or b!6569763 b!6569770) bm!571640))

(assert (= (or b!6569765 bm!571642) bm!571641))

(declare-fun m!7351762 () Bool)

(assert (=> bm!571640 m!7351762))

(declare-fun m!7351764 () Bool)

(assert (=> b!6569767 m!7351764))

(declare-fun m!7351766 () Bool)

(assert (=> bm!571641 m!7351766))

(assert (=> d!2060936 d!2061268))

(assert (=> d!2060936 d!2061002))

(assert (=> d!2060936 d!2061006))

(declare-fun d!2061270 () Bool)

(declare-fun res!2696140 () Bool)

(declare-fun e!3976659 () Bool)

(assert (=> d!2061270 (=> res!2696140 e!3976659)))

(assert (=> d!2061270 (= res!2696140 ((_ is Nil!65510) (exprs!6329 (h!71959 zl!343))))))

(assert (=> d!2061270 (= (forall!15616 (exprs!6329 (h!71959 zl!343)) lambda!365769) e!3976659)))

(declare-fun b!6569771 () Bool)

(declare-fun e!3976660 () Bool)

(assert (=> b!6569771 (= e!3976659 e!3976660)))

(declare-fun res!2696141 () Bool)

(assert (=> b!6569771 (=> (not res!2696141) (not e!3976660))))

(assert (=> b!6569771 (= res!2696141 (dynLambda!26064 lambda!365769 (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569772 () Bool)

(assert (=> b!6569772 (= e!3976660 (forall!15616 (t!379278 (exprs!6329 (h!71959 zl!343))) lambda!365769))))

(assert (= (and d!2061270 (not res!2696140)) b!6569771))

(assert (= (and b!6569771 res!2696141) b!6569772))

(declare-fun b_lambda!248455 () Bool)

(assert (=> (not b_lambda!248455) (not b!6569771)))

(declare-fun m!7351768 () Bool)

(assert (=> b!6569771 m!7351768))

(declare-fun m!7351770 () Bool)

(assert (=> b!6569772 m!7351770))

(assert (=> d!2060990 d!2061270))

(declare-fun d!2061272 () Bool)

(assert (=> d!2061272 (= (nullable!6438 lt!2408266) (nullableFct!2364 lt!2408266))))

(declare-fun bs!1678056 () Bool)

(assert (= bs!1678056 d!2061272))

(declare-fun m!7351772 () Bool)

(assert (=> bs!1678056 m!7351772))

(assert (=> b!6568712 d!2061272))

(assert (=> b!6569257 d!2061200))

(declare-fun bs!1678057 () Bool)

(declare-fun b!6569782 () Bool)

(assert (= bs!1678057 (and b!6569782 b!6568921)))

(declare-fun lambda!365826 () Int)

(assert (=> bs!1678057 (not (= lambda!365826 lambda!365761))))

(declare-fun bs!1678058 () Bool)

(assert (= bs!1678058 (and b!6569782 b!6569722)))

(assert (=> bs!1678058 (= (and (= (reg!16774 (regTwo!33403 lt!2408266)) (reg!16774 (regOne!33403 lt!2408266))) (= (regTwo!33403 lt!2408266) (regOne!33403 lt!2408266))) (= lambda!365826 lambda!365823))))

(declare-fun bs!1678059 () Bool)

(assert (= bs!1678059 (and b!6569782 b!6568784)))

(assert (=> bs!1678059 (not (= lambda!365826 lambda!365750))))

(declare-fun bs!1678060 () Bool)

(assert (= bs!1678060 (and b!6569782 d!2061088)))

(assert (=> bs!1678060 (not (= lambda!365826 lambda!365803))))

(declare-fun bs!1678061 () Bool)

(assert (= bs!1678061 (and b!6569782 d!2061186)))

(assert (=> bs!1678061 (not (= lambda!365826 lambda!365818))))

(declare-fun bs!1678062 () Bool)

(assert (= bs!1678062 (and b!6569782 b!6568923)))

(assert (=> bs!1678062 (= (and (= (reg!16774 (regTwo!33403 lt!2408266)) (reg!16774 r!7292)) (= (regTwo!33403 lt!2408266) r!7292)) (= lambda!365826 lambda!365760))))

(declare-fun bs!1678063 () Bool)

(assert (= bs!1678063 (and b!6569782 b!6569720)))

(assert (=> bs!1678063 (not (= lambda!365826 lambda!365824))))

(assert (=> bs!1678061 (not (= lambda!365826 lambda!365817))))

(declare-fun bs!1678064 () Bool)

(assert (= bs!1678064 (and b!6569782 b!6568614)))

(assert (=> bs!1678064 (not (= lambda!365826 lambda!365734))))

(declare-fun bs!1678065 () Bool)

(assert (= bs!1678065 (and b!6569782 b!6569486)))

(assert (=> bs!1678065 (not (= lambda!365826 lambda!365806))))

(assert (=> bs!1678060 (not (= lambda!365826 lambda!365802))))

(declare-fun bs!1678066 () Bool)

(assert (= bs!1678066 (and b!6569782 b!6568786)))

(assert (=> bs!1678066 (= (and (= (reg!16774 (regTwo!33403 lt!2408266)) (reg!16774 lt!2408266)) (= (regTwo!33403 lt!2408266) lt!2408266)) (= lambda!365826 lambda!365749))))

(declare-fun bs!1678067 () Bool)

(assert (= bs!1678067 (and b!6569782 d!2061064)))

(assert (=> bs!1678067 (not (= lambda!365826 lambda!365793))))

(declare-fun bs!1678068 () Bool)

(assert (= bs!1678068 (and b!6569782 b!6569488)))

(assert (=> bs!1678068 (= (and (= (reg!16774 (regTwo!33403 lt!2408266)) (reg!16774 (regTwo!33403 r!7292))) (= (regTwo!33403 lt!2408266) (regTwo!33403 r!7292))) (= lambda!365826 lambda!365805))))

(assert (=> bs!1678064 (not (= lambda!365826 lambda!365733))))

(assert (=> b!6569782 true))

(assert (=> b!6569782 true))

(declare-fun bs!1678069 () Bool)

(declare-fun b!6569780 () Bool)

(assert (= bs!1678069 (and b!6569780 b!6568921)))

(declare-fun lambda!365827 () Int)

(assert (=> bs!1678069 (= (and (= (regOne!33402 (regTwo!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regTwo!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365827 lambda!365761))))

(declare-fun bs!1678070 () Bool)

(assert (= bs!1678070 (and b!6569780 b!6569722)))

(assert (=> bs!1678070 (not (= lambda!365827 lambda!365823))))

(declare-fun bs!1678071 () Bool)

(assert (= bs!1678071 (and b!6569780 b!6568784)))

(assert (=> bs!1678071 (= (and (= (regOne!33402 (regTwo!33403 lt!2408266)) (regOne!33402 lt!2408266)) (= (regTwo!33402 (regTwo!33403 lt!2408266)) (regTwo!33402 lt!2408266))) (= lambda!365827 lambda!365750))))

(declare-fun bs!1678072 () Bool)

(assert (= bs!1678072 (and b!6569780 d!2061088)))

(assert (=> bs!1678072 (= (and (= (regOne!33402 (regTwo!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regTwo!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365827 lambda!365803))))

(declare-fun bs!1678073 () Bool)

(assert (= bs!1678073 (and b!6569780 d!2061186)))

(assert (=> bs!1678073 (= (and (= (regOne!33402 (regTwo!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regTwo!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365827 lambda!365818))))

(declare-fun bs!1678074 () Bool)

(assert (= bs!1678074 (and b!6569780 b!6568923)))

(assert (=> bs!1678074 (not (= lambda!365827 lambda!365760))))

(declare-fun bs!1678075 () Bool)

(assert (= bs!1678075 (and b!6569780 b!6569720)))

(assert (=> bs!1678075 (= (and (= (regOne!33402 (regTwo!33403 lt!2408266)) (regOne!33402 (regOne!33403 lt!2408266))) (= (regTwo!33402 (regTwo!33403 lt!2408266)) (regTwo!33402 (regOne!33403 lt!2408266)))) (= lambda!365827 lambda!365824))))

(declare-fun bs!1678076 () Bool)

(assert (= bs!1678076 (and b!6569780 b!6569782)))

(assert (=> bs!1678076 (not (= lambda!365827 lambda!365826))))

(assert (=> bs!1678073 (not (= lambda!365827 lambda!365817))))

(declare-fun bs!1678077 () Bool)

(assert (= bs!1678077 (and b!6569780 b!6568614)))

(assert (=> bs!1678077 (= (and (= (regOne!33402 (regTwo!33403 lt!2408266)) (regOne!33402 r!7292)) (= (regTwo!33402 (regTwo!33403 lt!2408266)) (regTwo!33402 r!7292))) (= lambda!365827 lambda!365734))))

(declare-fun bs!1678078 () Bool)

(assert (= bs!1678078 (and b!6569780 b!6569486)))

(assert (=> bs!1678078 (= (and (= (regOne!33402 (regTwo!33403 lt!2408266)) (regOne!33402 (regTwo!33403 r!7292))) (= (regTwo!33402 (regTwo!33403 lt!2408266)) (regTwo!33402 (regTwo!33403 r!7292)))) (= lambda!365827 lambda!365806))))

(assert (=> bs!1678072 (not (= lambda!365827 lambda!365802))))

(declare-fun bs!1678079 () Bool)

(assert (= bs!1678079 (and b!6569780 b!6568786)))

(assert (=> bs!1678079 (not (= lambda!365827 lambda!365749))))

(declare-fun bs!1678080 () Bool)

(assert (= bs!1678080 (and b!6569780 d!2061064)))

(assert (=> bs!1678080 (not (= lambda!365827 lambda!365793))))

(declare-fun bs!1678081 () Bool)

(assert (= bs!1678081 (and b!6569780 b!6569488)))

(assert (=> bs!1678081 (not (= lambda!365827 lambda!365805))))

(assert (=> bs!1678077 (not (= lambda!365827 lambda!365733))))

(assert (=> b!6569780 true))

(assert (=> b!6569780 true))

(declare-fun d!2061274 () Bool)

(declare-fun c!1207697 () Bool)

(assert (=> d!2061274 (= c!1207697 ((_ is EmptyExpr!16445) (regTwo!33403 lt!2408266)))))

(declare-fun e!3976667 () Bool)

(assert (=> d!2061274 (= (matchRSpec!3546 (regTwo!33403 lt!2408266) s!2326) e!3976667)))

(declare-fun b!6569773 () Bool)

(declare-fun e!3976661 () Bool)

(declare-fun e!3976664 () Bool)

(assert (=> b!6569773 (= e!3976661 e!3976664)))

(declare-fun res!2696143 () Bool)

(assert (=> b!6569773 (= res!2696143 (matchRSpec!3546 (regOne!33403 (regTwo!33403 lt!2408266)) s!2326))))

(assert (=> b!6569773 (=> res!2696143 e!3976664)))

(declare-fun b!6569774 () Bool)

(declare-fun res!2696142 () Bool)

(declare-fun e!3976662 () Bool)

(assert (=> b!6569774 (=> res!2696142 e!3976662)))

(declare-fun call!571649 () Bool)

(assert (=> b!6569774 (= res!2696142 call!571649)))

(declare-fun e!3976663 () Bool)

(assert (=> b!6569774 (= e!3976663 e!3976662)))

(declare-fun b!6569775 () Bool)

(declare-fun e!3976666 () Bool)

(assert (=> b!6569775 (= e!3976666 (= s!2326 (Cons!65512 (c!1207368 (regTwo!33403 lt!2408266)) Nil!65512)))))

(declare-fun bm!571643 () Bool)

(declare-fun c!1207698 () Bool)

(declare-fun call!571648 () Bool)

(assert (=> bm!571643 (= call!571648 (Exists!3515 (ite c!1207698 lambda!365826 lambda!365827)))))

(declare-fun b!6569776 () Bool)

(assert (=> b!6569776 (= e!3976661 e!3976663)))

(assert (=> b!6569776 (= c!1207698 ((_ is Star!16445) (regTwo!33403 lt!2408266)))))

(declare-fun b!6569777 () Bool)

(assert (=> b!6569777 (= e!3976667 call!571649)))

(declare-fun b!6569778 () Bool)

(assert (=> b!6569778 (= e!3976664 (matchRSpec!3546 (regTwo!33403 (regTwo!33403 lt!2408266)) s!2326))))

(declare-fun bm!571644 () Bool)

(assert (=> bm!571644 (= call!571649 (isEmpty!37760 s!2326))))

(declare-fun b!6569779 () Bool)

(declare-fun c!1207699 () Bool)

(assert (=> b!6569779 (= c!1207699 ((_ is ElementMatch!16445) (regTwo!33403 lt!2408266)))))

(declare-fun e!3976665 () Bool)

(assert (=> b!6569779 (= e!3976665 e!3976666)))

(assert (=> b!6569780 (= e!3976663 call!571648)))

(declare-fun b!6569781 () Bool)

(declare-fun c!1207696 () Bool)

(assert (=> b!6569781 (= c!1207696 ((_ is Union!16445) (regTwo!33403 lt!2408266)))))

(assert (=> b!6569781 (= e!3976666 e!3976661)))

(assert (=> b!6569782 (= e!3976662 call!571648)))

(declare-fun b!6569783 () Bool)

(assert (=> b!6569783 (= e!3976667 e!3976665)))

(declare-fun res!2696144 () Bool)

(assert (=> b!6569783 (= res!2696144 (not ((_ is EmptyLang!16445) (regTwo!33403 lt!2408266))))))

(assert (=> b!6569783 (=> (not res!2696144) (not e!3976665))))

(assert (= (and d!2061274 c!1207697) b!6569777))

(assert (= (and d!2061274 (not c!1207697)) b!6569783))

(assert (= (and b!6569783 res!2696144) b!6569779))

(assert (= (and b!6569779 c!1207699) b!6569775))

(assert (= (and b!6569779 (not c!1207699)) b!6569781))

(assert (= (and b!6569781 c!1207696) b!6569773))

(assert (= (and b!6569781 (not c!1207696)) b!6569776))

(assert (= (and b!6569773 (not res!2696143)) b!6569778))

(assert (= (and b!6569776 c!1207698) b!6569774))

(assert (= (and b!6569776 (not c!1207698)) b!6569780))

(assert (= (and b!6569774 (not res!2696142)) b!6569782))

(assert (= (or b!6569782 b!6569780) bm!571643))

(assert (= (or b!6569777 b!6569774) bm!571644))

(declare-fun m!7351774 () Bool)

(assert (=> b!6569773 m!7351774))

(declare-fun m!7351776 () Bool)

(assert (=> bm!571643 m!7351776))

(declare-fun m!7351778 () Bool)

(assert (=> b!6569778 m!7351778))

(assert (=> bm!571644 m!7350906))

(assert (=> b!6568782 d!2061274))

(assert (=> d!2061064 d!2061032))

(assert (=> d!2061064 d!2061188))

(assert (=> d!2061064 d!2061092))

(declare-fun bs!1678082 () Bool)

(declare-fun d!2061276 () Bool)

(assert (= bs!1678082 (and d!2061276 b!6568921)))

(declare-fun lambda!365830 () Int)

(assert (=> bs!1678082 (not (= lambda!365830 lambda!365761))))

(declare-fun bs!1678083 () Bool)

(assert (= bs!1678083 (and d!2061276 b!6569722)))

(assert (=> bs!1678083 (not (= lambda!365830 lambda!365823))))

(declare-fun bs!1678084 () Bool)

(assert (= bs!1678084 (and d!2061276 b!6568784)))

(assert (=> bs!1678084 (not (= lambda!365830 lambda!365750))))

(declare-fun bs!1678085 () Bool)

(assert (= bs!1678085 (and d!2061276 d!2061088)))

(assert (=> bs!1678085 (not (= lambda!365830 lambda!365803))))

(declare-fun bs!1678086 () Bool)

(assert (= bs!1678086 (and d!2061276 d!2061186)))

(assert (=> bs!1678086 (not (= lambda!365830 lambda!365818))))

(declare-fun bs!1678087 () Bool)

(assert (= bs!1678087 (and d!2061276 b!6568923)))

(assert (=> bs!1678087 (not (= lambda!365830 lambda!365760))))

(declare-fun bs!1678088 () Bool)

(assert (= bs!1678088 (and d!2061276 b!6569782)))

(assert (=> bs!1678088 (not (= lambda!365830 lambda!365826))))

(assert (=> bs!1678086 (= lambda!365830 lambda!365817)))

(declare-fun bs!1678089 () Bool)

(assert (= bs!1678089 (and d!2061276 b!6568614)))

(assert (=> bs!1678089 (not (= lambda!365830 lambda!365734))))

(declare-fun bs!1678090 () Bool)

(assert (= bs!1678090 (and d!2061276 b!6569486)))

(assert (=> bs!1678090 (not (= lambda!365830 lambda!365806))))

(assert (=> bs!1678085 (= lambda!365830 lambda!365802)))

(declare-fun bs!1678091 () Bool)

(assert (= bs!1678091 (and d!2061276 b!6568786)))

(assert (=> bs!1678091 (not (= lambda!365830 lambda!365749))))

(declare-fun bs!1678092 () Bool)

(assert (= bs!1678092 (and d!2061276 d!2061064)))

(assert (=> bs!1678092 (= lambda!365830 lambda!365793)))

(declare-fun bs!1678093 () Bool)

(assert (= bs!1678093 (and d!2061276 b!6569488)))

(assert (=> bs!1678093 (not (= lambda!365830 lambda!365805))))

(assert (=> bs!1678089 (= lambda!365830 lambda!365733)))

(declare-fun bs!1678094 () Bool)

(assert (= bs!1678094 (and d!2061276 b!6569720)))

(assert (=> bs!1678094 (not (= lambda!365830 lambda!365824))))

(declare-fun bs!1678095 () Bool)

(assert (= bs!1678095 (and d!2061276 b!6569780)))

(assert (=> bs!1678095 (not (= lambda!365830 lambda!365827))))

(assert (=> d!2061276 true))

(assert (=> d!2061276 true))

(assert (=> d!2061276 true))

(assert (=> d!2061276 (= (isDefined!13039 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) Nil!65512 s!2326 s!2326)) (Exists!3515 lambda!365830))))

(assert (=> d!2061276 true))

(declare-fun _$89!2786 () Unit!159115)

(assert (=> d!2061276 (= (choose!49073 (regOne!33402 r!7292) (regTwo!33402 r!7292) s!2326) _$89!2786)))

(declare-fun bs!1678096 () Bool)

(assert (= bs!1678096 d!2061276))

(assert (=> bs!1678096 m!7350848))

(assert (=> bs!1678096 m!7350848))

(assert (=> bs!1678096 m!7350850))

(declare-fun m!7351780 () Bool)

(assert (=> bs!1678096 m!7351780))

(assert (=> d!2061064 d!2061276))

(declare-fun d!2061278 () Bool)

(assert (=> d!2061278 (= (Exists!3515 lambda!365793) (choose!49072 lambda!365793))))

(declare-fun bs!1678097 () Bool)

(assert (= bs!1678097 d!2061278))

(declare-fun m!7351782 () Bool)

(assert (=> bs!1678097 m!7351782))

(assert (=> d!2061064 d!2061278))

(declare-fun b!6569788 () Bool)

(declare-fun e!3976671 () Bool)

(declare-fun call!571652 () Bool)

(assert (=> b!6569788 (= e!3976671 call!571652)))

(declare-fun bm!571645 () Bool)

(declare-fun call!571651 () Bool)

(declare-fun c!1207700 () Bool)

(assert (=> bm!571645 (= call!571651 (validRegex!8181 (ite c!1207700 (regOne!33403 lt!2408349) (regOne!33402 lt!2408349))))))

(declare-fun b!6569790 () Bool)

(declare-fun e!3976676 () Bool)

(declare-fun e!3976670 () Bool)

(assert (=> b!6569790 (= e!3976676 e!3976670)))

(assert (=> b!6569790 (= c!1207700 ((_ is Union!16445) lt!2408349))))

(declare-fun b!6569791 () Bool)

(declare-fun e!3976674 () Bool)

(declare-fun call!571650 () Bool)

(assert (=> b!6569791 (= e!3976674 call!571650)))

(declare-fun b!6569792 () Bool)

(declare-fun e!3976673 () Bool)

(assert (=> b!6569792 (= e!3976673 call!571652)))

(declare-fun b!6569793 () Bool)

(assert (=> b!6569793 (= e!3976676 e!3976674)))

(declare-fun res!2696153 () Bool)

(assert (=> b!6569793 (= res!2696153 (not (nullable!6438 (reg!16774 lt!2408349))))))

(assert (=> b!6569793 (=> (not res!2696153) (not e!3976674))))

(declare-fun c!1207701 () Bool)

(declare-fun bm!571646 () Bool)

(assert (=> bm!571646 (= call!571650 (validRegex!8181 (ite c!1207701 (reg!16774 lt!2408349) (ite c!1207700 (regTwo!33403 lt!2408349) (regTwo!33402 lt!2408349)))))))

(declare-fun b!6569789 () Bool)

(declare-fun res!2696149 () Bool)

(assert (=> b!6569789 (=> (not res!2696149) (not e!3976673))))

(assert (=> b!6569789 (= res!2696149 call!571651)))

(assert (=> b!6569789 (= e!3976670 e!3976673)))

(declare-fun d!2061280 () Bool)

(declare-fun res!2696150 () Bool)

(declare-fun e!3976672 () Bool)

(assert (=> d!2061280 (=> res!2696150 e!3976672)))

(assert (=> d!2061280 (= res!2696150 ((_ is ElementMatch!16445) lt!2408349))))

(assert (=> d!2061280 (= (validRegex!8181 lt!2408349) e!3976672)))

(declare-fun b!6569794 () Bool)

(declare-fun res!2696152 () Bool)

(declare-fun e!3976675 () Bool)

(assert (=> b!6569794 (=> res!2696152 e!3976675)))

(assert (=> b!6569794 (= res!2696152 (not ((_ is Concat!25290) lt!2408349)))))

(assert (=> b!6569794 (= e!3976670 e!3976675)))

(declare-fun b!6569795 () Bool)

(assert (=> b!6569795 (= e!3976672 e!3976676)))

(assert (=> b!6569795 (= c!1207701 ((_ is Star!16445) lt!2408349))))

(declare-fun bm!571647 () Bool)

(assert (=> bm!571647 (= call!571652 call!571650)))

(declare-fun b!6569796 () Bool)

(assert (=> b!6569796 (= e!3976675 e!3976671)))

(declare-fun res!2696151 () Bool)

(assert (=> b!6569796 (=> (not res!2696151) (not e!3976671))))

(assert (=> b!6569796 (= res!2696151 call!571651)))

(assert (= (and d!2061280 (not res!2696150)) b!6569795))

(assert (= (and b!6569795 c!1207701) b!6569793))

(assert (= (and b!6569795 (not c!1207701)) b!6569790))

(assert (= (and b!6569793 res!2696153) b!6569791))

(assert (= (and b!6569790 c!1207700) b!6569789))

(assert (= (and b!6569790 (not c!1207700)) b!6569794))

(assert (= (and b!6569789 res!2696149) b!6569792))

(assert (= (and b!6569794 (not res!2696152)) b!6569796))

(assert (= (and b!6569796 res!2696151) b!6569788))

(assert (= (or b!6569792 b!6569788) bm!571647))

(assert (= (or b!6569789 b!6569796) bm!571645))

(assert (= (or b!6569791 bm!571647) bm!571646))

(declare-fun m!7351784 () Bool)

(assert (=> bm!571645 m!7351784))

(declare-fun m!7351786 () Bool)

(assert (=> b!6569793 m!7351786))

(declare-fun m!7351788 () Bool)

(assert (=> bm!571646 m!7351788))

(assert (=> d!2061000 d!2061280))

(declare-fun bs!1678098 () Bool)

(declare-fun d!2061282 () Bool)

(assert (= bs!1678098 (and d!2061282 d!2060886)))

(declare-fun lambda!365831 () Int)

(assert (=> bs!1678098 (= lambda!365831 lambda!365738)))

(declare-fun bs!1678099 () Bool)

(assert (= bs!1678099 (and d!2061282 d!2060990)))

(assert (=> bs!1678099 (= lambda!365831 lambda!365769)))

(declare-fun bs!1678100 () Bool)

(assert (= bs!1678100 (and d!2061282 d!2060998)))

(assert (=> bs!1678100 (= lambda!365831 lambda!365773)))

(declare-fun bs!1678101 () Bool)

(assert (= bs!1678101 (and d!2061282 d!2061006)))

(assert (=> bs!1678101 (= lambda!365831 lambda!365783)))

(declare-fun bs!1678102 () Bool)

(assert (= bs!1678102 (and d!2061282 d!2060992)))

(assert (=> bs!1678102 (= lambda!365831 lambda!365772)))

(declare-fun bs!1678103 () Bool)

(assert (= bs!1678103 (and d!2061282 d!2061118)))

(assert (=> bs!1678103 (= lambda!365831 lambda!365804)))

(declare-fun bs!1678104 () Bool)

(assert (= bs!1678104 (and d!2061282 d!2061194)))

(assert (=> bs!1678104 (= lambda!365831 lambda!365819)))

(declare-fun bs!1678105 () Bool)

(assert (= bs!1678105 (and d!2061282 d!2061002)))

(assert (=> bs!1678105 (= lambda!365831 lambda!365776)))

(declare-fun bs!1678106 () Bool)

(assert (= bs!1678106 (and d!2061282 d!2061238)))

(assert (=> bs!1678106 (= lambda!365831 lambda!365821)))

(declare-fun bs!1678107 () Bool)

(assert (= bs!1678107 (and d!2061282 d!2061240)))

(assert (=> bs!1678107 (= lambda!365831 lambda!365822)))

(declare-fun b!6569797 () Bool)

(declare-fun e!3976678 () Regex!16445)

(declare-fun e!3976680 () Regex!16445)

(assert (=> b!6569797 (= e!3976678 e!3976680)))

(declare-fun c!1207702 () Bool)

(assert (=> b!6569797 (= c!1207702 ((_ is Cons!65510) (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))))))

(declare-fun b!6569798 () Bool)

(assert (=> b!6569798 (= e!3976680 EmptyLang!16445)))

(declare-fun b!6569799 () Bool)

(declare-fun e!3976679 () Bool)

(declare-fun e!3976677 () Bool)

(assert (=> b!6569799 (= e!3976679 e!3976677)))

(declare-fun c!1207705 () Bool)

(assert (=> b!6569799 (= c!1207705 (isEmpty!37757 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))))))

(declare-fun b!6569800 () Bool)

(declare-fun lt!2408406 () Regex!16445)

(assert (=> b!6569800 (= e!3976677 (isEmptyLang!1832 lt!2408406))))

(declare-fun b!6569801 () Bool)

(declare-fun e!3976681 () Bool)

(assert (=> b!6569801 (= e!3976677 e!3976681)))

(declare-fun c!1207704 () Bool)

(assert (=> b!6569801 (= c!1207704 (isEmpty!37757 (tail!12427 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511)))))))

(assert (=> d!2061282 e!3976679))

(declare-fun res!2696154 () Bool)

(assert (=> d!2061282 (=> (not res!2696154) (not e!3976679))))

(assert (=> d!2061282 (= res!2696154 (validRegex!8181 lt!2408406))))

(assert (=> d!2061282 (= lt!2408406 e!3976678)))

(declare-fun c!1207703 () Bool)

(declare-fun e!3976682 () Bool)

(assert (=> d!2061282 (= c!1207703 e!3976682)))

(declare-fun res!2696155 () Bool)

(assert (=> d!2061282 (=> (not res!2696155) (not e!3976682))))

(assert (=> d!2061282 (= res!2696155 ((_ is Cons!65510) (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))))))

(assert (=> d!2061282 (forall!15616 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511)) lambda!365831)))

(assert (=> d!2061282 (= (generalisedUnion!2289 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))) lt!2408406)))

(declare-fun b!6569802 () Bool)

(assert (=> b!6569802 (= e!3976681 (= lt!2408406 (head!13342 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511)))))))

(declare-fun b!6569803 () Bool)

(assert (=> b!6569803 (= e!3976681 (isUnion!1262 lt!2408406))))

(declare-fun b!6569804 () Bool)

(assert (=> b!6569804 (= e!3976678 (h!71958 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))))))

(declare-fun b!6569805 () Bool)

(assert (=> b!6569805 (= e!3976680 (Union!16445 (h!71958 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))) (generalisedUnion!2289 (t!379278 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511))))))))

(declare-fun b!6569806 () Bool)

(assert (=> b!6569806 (= e!3976682 (isEmpty!37757 (t!379278 (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511)))))))

(assert (= (and d!2061282 res!2696155) b!6569806))

(assert (= (and d!2061282 c!1207703) b!6569804))

(assert (= (and d!2061282 (not c!1207703)) b!6569797))

(assert (= (and b!6569797 c!1207702) b!6569805))

(assert (= (and b!6569797 (not c!1207702)) b!6569798))

(assert (= (and d!2061282 res!2696154) b!6569799))

(assert (= (and b!6569799 c!1207705) b!6569800))

(assert (= (and b!6569799 (not c!1207705)) b!6569801))

(assert (= (and b!6569801 c!1207704) b!6569802))

(assert (= (and b!6569801 (not c!1207704)) b!6569803))

(declare-fun m!7351790 () Bool)

(assert (=> b!6569806 m!7351790))

(declare-fun m!7351792 () Bool)

(assert (=> b!6569805 m!7351792))

(declare-fun m!7351794 () Bool)

(assert (=> b!6569803 m!7351794))

(declare-fun m!7351796 () Bool)

(assert (=> b!6569800 m!7351796))

(assert (=> b!6569799 m!7351166))

(declare-fun m!7351798 () Bool)

(assert (=> b!6569799 m!7351798))

(assert (=> b!6569802 m!7351166))

(declare-fun m!7351800 () Bool)

(assert (=> b!6569802 m!7351800))

(assert (=> b!6569801 m!7351166))

(declare-fun m!7351802 () Bool)

(assert (=> b!6569801 m!7351802))

(assert (=> b!6569801 m!7351802))

(declare-fun m!7351804 () Bool)

(assert (=> b!6569801 m!7351804))

(declare-fun m!7351806 () Bool)

(assert (=> d!2061282 m!7351806))

(assert (=> d!2061282 m!7351166))

(declare-fun m!7351808 () Bool)

(assert (=> d!2061282 m!7351808))

(assert (=> d!2061000 d!2061282))

(declare-fun bs!1678108 () Bool)

(declare-fun d!2061284 () Bool)

(assert (= bs!1678108 (and d!2061284 d!2060886)))

(declare-fun lambda!365832 () Int)

(assert (=> bs!1678108 (= lambda!365832 lambda!365738)))

(declare-fun bs!1678109 () Bool)

(assert (= bs!1678109 (and d!2061284 d!2060990)))

(assert (=> bs!1678109 (= lambda!365832 lambda!365769)))

(declare-fun bs!1678110 () Bool)

(assert (= bs!1678110 (and d!2061284 d!2060998)))

(assert (=> bs!1678110 (= lambda!365832 lambda!365773)))

(declare-fun bs!1678111 () Bool)

(assert (= bs!1678111 (and d!2061284 d!2061282)))

(assert (=> bs!1678111 (= lambda!365832 lambda!365831)))

(declare-fun bs!1678112 () Bool)

(assert (= bs!1678112 (and d!2061284 d!2061006)))

(assert (=> bs!1678112 (= lambda!365832 lambda!365783)))

(declare-fun bs!1678113 () Bool)

(assert (= bs!1678113 (and d!2061284 d!2060992)))

(assert (=> bs!1678113 (= lambda!365832 lambda!365772)))

(declare-fun bs!1678114 () Bool)

(assert (= bs!1678114 (and d!2061284 d!2061118)))

(assert (=> bs!1678114 (= lambda!365832 lambda!365804)))

(declare-fun bs!1678115 () Bool)

(assert (= bs!1678115 (and d!2061284 d!2061194)))

(assert (=> bs!1678115 (= lambda!365832 lambda!365819)))

(declare-fun bs!1678116 () Bool)

(assert (= bs!1678116 (and d!2061284 d!2061002)))

(assert (=> bs!1678116 (= lambda!365832 lambda!365776)))

(declare-fun bs!1678117 () Bool)

(assert (= bs!1678117 (and d!2061284 d!2061238)))

(assert (=> bs!1678117 (= lambda!365832 lambda!365821)))

(declare-fun bs!1678118 () Bool)

(assert (= bs!1678118 (and d!2061284 d!2061240)))

(assert (=> bs!1678118 (= lambda!365832 lambda!365822)))

(declare-fun lt!2408407 () List!65634)

(assert (=> d!2061284 (forall!15616 lt!2408407 lambda!365832)))

(declare-fun e!3976683 () List!65634)

(assert (=> d!2061284 (= lt!2408407 e!3976683)))

(declare-fun c!1207706 () Bool)

(assert (=> d!2061284 (= c!1207706 ((_ is Cons!65511) (Cons!65511 lt!2408267 Nil!65511)))))

(assert (=> d!2061284 (= (unfocusZipperList!1866 (Cons!65511 lt!2408267 Nil!65511)) lt!2408407)))

(declare-fun b!6569807 () Bool)

(assert (=> b!6569807 (= e!3976683 (Cons!65510 (generalisedConcat!2042 (exprs!6329 (h!71959 (Cons!65511 lt!2408267 Nil!65511)))) (unfocusZipperList!1866 (t!379279 (Cons!65511 lt!2408267 Nil!65511)))))))

(declare-fun b!6569808 () Bool)

(assert (=> b!6569808 (= e!3976683 Nil!65510)))

(assert (= (and d!2061284 c!1207706) b!6569807))

(assert (= (and d!2061284 (not c!1207706)) b!6569808))

(declare-fun m!7351810 () Bool)

(assert (=> d!2061284 m!7351810))

(declare-fun m!7351812 () Bool)

(assert (=> b!6569807 m!7351812))

(declare-fun m!7351814 () Bool)

(assert (=> b!6569807 m!7351814))

(assert (=> d!2061000 d!2061284))

(declare-fun bs!1678119 () Bool)

(declare-fun d!2061286 () Bool)

(assert (= bs!1678119 (and d!2061286 d!2061148)))

(declare-fun lambda!365833 () Int)

(assert (=> bs!1678119 (= lambda!365833 lambda!365810)))

(declare-fun bs!1678120 () Bool)

(assert (= bs!1678120 (and d!2061286 d!2061256)))

(assert (=> bs!1678120 (= lambda!365833 lambda!365825)))

(assert (=> d!2061286 (= (nullableZipper!2190 z!1189) (exists!2640 z!1189 lambda!365833))))

(declare-fun bs!1678121 () Bool)

(assert (= bs!1678121 d!2061286))

(declare-fun m!7351816 () Bool)

(assert (=> bs!1678121 m!7351816))

(assert (=> b!6568801 d!2061286))

(declare-fun d!2061288 () Bool)

(assert (=> d!2061288 true))

(declare-fun setRes!44857 () Bool)

(assert (=> d!2061288 setRes!44857))

(declare-fun condSetEmpty!44857 () Bool)

(declare-fun res!2696156 () (InoxSet Context!11658))

(assert (=> d!2061288 (= condSetEmpty!44857 (= res!2696156 ((as const (Array Context!11658 Bool)) false)))))

(assert (=> d!2061288 (= (choose!49067 lt!2408291 lambda!365735) res!2696156)))

(declare-fun setIsEmpty!44857 () Bool)

(assert (=> setIsEmpty!44857 setRes!44857))

(declare-fun e!3976684 () Bool)

(declare-fun setElem!44857 () Context!11658)

(declare-fun tp!1813650 () Bool)

(declare-fun setNonEmpty!44857 () Bool)

(assert (=> setNonEmpty!44857 (= setRes!44857 (and tp!1813650 (inv!84359 setElem!44857) e!3976684))))

(declare-fun setRest!44857 () (InoxSet Context!11658))

(assert (=> setNonEmpty!44857 (= res!2696156 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) setElem!44857 true) setRest!44857))))

(declare-fun b!6569809 () Bool)

(declare-fun tp!1813651 () Bool)

(assert (=> b!6569809 (= e!3976684 tp!1813651)))

(assert (= (and d!2061288 condSetEmpty!44857) setIsEmpty!44857))

(assert (= (and d!2061288 (not condSetEmpty!44857)) setNonEmpty!44857))

(assert (= setNonEmpty!44857 b!6569809))

(declare-fun m!7351818 () Bool)

(assert (=> setNonEmpty!44857 m!7351818))

(assert (=> d!2060964 d!2061288))

(declare-fun d!2061290 () Bool)

(declare-fun res!2696157 () Bool)

(declare-fun e!3976685 () Bool)

(assert (=> d!2061290 (=> res!2696157 e!3976685)))

(assert (=> d!2061290 (= res!2696157 ((_ is Nil!65510) (exprs!6329 setElem!44846)))))

(assert (=> d!2061290 (= (forall!15616 (exprs!6329 setElem!44846) lambda!365738) e!3976685)))

(declare-fun b!6569810 () Bool)

(declare-fun e!3976686 () Bool)

(assert (=> b!6569810 (= e!3976685 e!3976686)))

(declare-fun res!2696158 () Bool)

(assert (=> b!6569810 (=> (not res!2696158) (not e!3976686))))

(assert (=> b!6569810 (= res!2696158 (dynLambda!26064 lambda!365738 (h!71958 (exprs!6329 setElem!44846))))))

(declare-fun b!6569811 () Bool)

(assert (=> b!6569811 (= e!3976686 (forall!15616 (t!379278 (exprs!6329 setElem!44846)) lambda!365738))))

(assert (= (and d!2061290 (not res!2696157)) b!6569810))

(assert (= (and b!6569810 res!2696158) b!6569811))

(declare-fun b_lambda!248457 () Bool)

(assert (=> (not b_lambda!248457) (not b!6569810)))

(declare-fun m!7351820 () Bool)

(assert (=> b!6569810 m!7351820))

(declare-fun m!7351822 () Bool)

(assert (=> b!6569811 m!7351822))

(assert (=> d!2060886 d!2061290))

(assert (=> bm!571508 d!2061114))

(declare-fun d!2061292 () Bool)

(assert (=> d!2061292 (= (nullable!6438 (h!71958 (exprs!6329 lt!2408267))) (nullableFct!2364 (h!71958 (exprs!6329 lt!2408267))))))

(declare-fun bs!1678122 () Bool)

(assert (= bs!1678122 d!2061292))

(declare-fun m!7351824 () Bool)

(assert (=> bs!1678122 m!7351824))

(assert (=> b!6568825 d!2061292))

(assert (=> b!6568708 d!2061174))

(assert (=> b!6568708 d!2061176))

(declare-fun d!2061294 () Bool)

(assert (=> d!2061294 (= (isEmpty!37757 (tail!12427 (unfocusZipperList!1866 zl!343))) ((_ is Nil!65510) (tail!12427 (unfocusZipperList!1866 zl!343))))))

(assert (=> b!6569077 d!2061294))

(declare-fun d!2061296 () Bool)

(assert (=> d!2061296 (= (tail!12427 (unfocusZipperList!1866 zl!343)) (t!379278 (unfocusZipperList!1866 zl!343)))))

(assert (=> b!6569077 d!2061296))

(declare-fun b!6569812 () Bool)

(declare-fun e!3976687 () List!65636)

(assert (=> b!6569812 (= e!3976687 (t!379280 s!2326))))

(declare-fun b!6569813 () Bool)

(assert (=> b!6569813 (= e!3976687 (Cons!65512 (h!71960 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512))) (++!14591 (t!379280 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512))) (t!379280 s!2326))))))

(declare-fun d!2061298 () Bool)

(declare-fun e!3976688 () Bool)

(assert (=> d!2061298 e!3976688))

(declare-fun res!2696160 () Bool)

(assert (=> d!2061298 (=> (not res!2696160) (not e!3976688))))

(declare-fun lt!2408408 () List!65636)

(assert (=> d!2061298 (= res!2696160 (= (content!12615 lt!2408408) ((_ map or) (content!12615 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512))) (content!12615 (t!379280 s!2326)))))))

(assert (=> d!2061298 (= lt!2408408 e!3976687)))

(declare-fun c!1207707 () Bool)

(assert (=> d!2061298 (= c!1207707 ((_ is Nil!65512) (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512))))))

(assert (=> d!2061298 (= (++!14591 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (t!379280 s!2326)) lt!2408408)))

(declare-fun b!6569814 () Bool)

(declare-fun res!2696159 () Bool)

(assert (=> b!6569814 (=> (not res!2696159) (not e!3976688))))

(assert (=> b!6569814 (= res!2696159 (= (size!40537 lt!2408408) (+ (size!40537 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512))) (size!40537 (t!379280 s!2326)))))))

(declare-fun b!6569815 () Bool)

(assert (=> b!6569815 (= e!3976688 (or (not (= (t!379280 s!2326) Nil!65512)) (= lt!2408408 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)))))))

(assert (= (and d!2061298 c!1207707) b!6569812))

(assert (= (and d!2061298 (not c!1207707)) b!6569813))

(assert (= (and d!2061298 res!2696160) b!6569814))

(assert (= (and b!6569814 res!2696159) b!6569815))

(declare-fun m!7351826 () Bool)

(assert (=> b!6569813 m!7351826))

(declare-fun m!7351828 () Bool)

(assert (=> d!2061298 m!7351828))

(assert (=> d!2061298 m!7351338))

(declare-fun m!7351830 () Bool)

(assert (=> d!2061298 m!7351830))

(declare-fun m!7351832 () Bool)

(assert (=> d!2061298 m!7351832))

(declare-fun m!7351834 () Bool)

(assert (=> b!6569814 m!7351834))

(assert (=> b!6569814 m!7351338))

(declare-fun m!7351836 () Bool)

(assert (=> b!6569814 m!7351836))

(declare-fun m!7351838 () Bool)

(assert (=> b!6569814 m!7351838))

(assert (=> b!6569261 d!2061298))

(declare-fun b!6569816 () Bool)

(declare-fun e!3976689 () List!65636)

(assert (=> b!6569816 (= e!3976689 (Cons!65512 (h!71960 s!2326) Nil!65512))))

(declare-fun b!6569817 () Bool)

(assert (=> b!6569817 (= e!3976689 (Cons!65512 (h!71960 Nil!65512) (++!14591 (t!379280 Nil!65512) (Cons!65512 (h!71960 s!2326) Nil!65512))))))

(declare-fun d!2061300 () Bool)

(declare-fun e!3976690 () Bool)

(assert (=> d!2061300 e!3976690))

(declare-fun res!2696162 () Bool)

(assert (=> d!2061300 (=> (not res!2696162) (not e!3976690))))

(declare-fun lt!2408409 () List!65636)

(assert (=> d!2061300 (= res!2696162 (= (content!12615 lt!2408409) ((_ map or) (content!12615 Nil!65512) (content!12615 (Cons!65512 (h!71960 s!2326) Nil!65512)))))))

(assert (=> d!2061300 (= lt!2408409 e!3976689)))

(declare-fun c!1207708 () Bool)

(assert (=> d!2061300 (= c!1207708 ((_ is Nil!65512) Nil!65512))))

(assert (=> d!2061300 (= (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) lt!2408409)))

(declare-fun b!6569818 () Bool)

(declare-fun res!2696161 () Bool)

(assert (=> b!6569818 (=> (not res!2696161) (not e!3976690))))

(assert (=> b!6569818 (= res!2696161 (= (size!40537 lt!2408409) (+ (size!40537 Nil!65512) (size!40537 (Cons!65512 (h!71960 s!2326) Nil!65512)))))))

(declare-fun b!6569819 () Bool)

(assert (=> b!6569819 (= e!3976690 (or (not (= (Cons!65512 (h!71960 s!2326) Nil!65512) Nil!65512)) (= lt!2408409 Nil!65512)))))

(assert (= (and d!2061300 c!1207708) b!6569816))

(assert (= (and d!2061300 (not c!1207708)) b!6569817))

(assert (= (and d!2061300 res!2696162) b!6569818))

(assert (= (and b!6569818 res!2696161) b!6569819))

(declare-fun m!7351840 () Bool)

(assert (=> b!6569817 m!7351840))

(declare-fun m!7351842 () Bool)

(assert (=> d!2061300 m!7351842))

(declare-fun m!7351844 () Bool)

(assert (=> d!2061300 m!7351844))

(declare-fun m!7351846 () Bool)

(assert (=> d!2061300 m!7351846))

(declare-fun m!7351848 () Bool)

(assert (=> b!6569818 m!7351848))

(declare-fun m!7351850 () Bool)

(assert (=> b!6569818 m!7351850))

(declare-fun m!7351852 () Bool)

(assert (=> b!6569818 m!7351852))

(assert (=> b!6569261 d!2061300))

(declare-fun d!2061302 () Bool)

(assert (=> d!2061302 (= (++!14591 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (t!379280 s!2326)) s!2326)))

(declare-fun lt!2408412 () Unit!159115)

(declare-fun choose!49075 (List!65636 C!33160 List!65636 List!65636) Unit!159115)

(assert (=> d!2061302 (= lt!2408412 (choose!49075 Nil!65512 (h!71960 s!2326) (t!379280 s!2326) s!2326))))

(assert (=> d!2061302 (= (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) (t!379280 s!2326))) s!2326)))

(assert (=> d!2061302 (= (lemmaMoveElementToOtherListKeepsConcatEq!2588 Nil!65512 (h!71960 s!2326) (t!379280 s!2326) s!2326) lt!2408412)))

(declare-fun bs!1678123 () Bool)

(assert (= bs!1678123 d!2061302))

(assert (=> bs!1678123 m!7351338))

(assert (=> bs!1678123 m!7351338))

(assert (=> bs!1678123 m!7351340))

(declare-fun m!7351854 () Bool)

(assert (=> bs!1678123 m!7351854))

(declare-fun m!7351856 () Bool)

(assert (=> bs!1678123 m!7351856))

(assert (=> b!6569261 d!2061302))

(declare-fun b!6569820 () Bool)

(declare-fun e!3976695 () Bool)

(assert (=> b!6569820 (= e!3976695 (matchR!8628 (regTwo!33402 r!7292) (t!379280 s!2326)))))

(declare-fun b!6569821 () Bool)

(declare-fun e!3976691 () Bool)

(declare-fun lt!2408414 () Option!16336)

(assert (=> b!6569821 (= e!3976691 (= (++!14591 (_1!36727 (get!22749 lt!2408414)) (_2!36727 (get!22749 lt!2408414))) s!2326))))

(declare-fun b!6569822 () Bool)

(declare-fun e!3976693 () Bool)

(assert (=> b!6569822 (= e!3976693 (not (isDefined!13039 lt!2408414)))))

(declare-fun b!6569823 () Bool)

(declare-fun res!2696164 () Bool)

(assert (=> b!6569823 (=> (not res!2696164) (not e!3976691))))

(assert (=> b!6569823 (= res!2696164 (matchR!8628 (regOne!33402 r!7292) (_1!36727 (get!22749 lt!2408414))))))

(declare-fun b!6569824 () Bool)

(declare-fun e!3976692 () Option!16336)

(assert (=> b!6569824 (= e!3976692 (Some!16335 (tuple2!66849 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (t!379280 s!2326))))))

(declare-fun b!6569826 () Bool)

(declare-fun lt!2408413 () Unit!159115)

(declare-fun lt!2408415 () Unit!159115)

(assert (=> b!6569826 (= lt!2408413 lt!2408415)))

(assert (=> b!6569826 (= (++!14591 (++!14591 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (Cons!65512 (h!71960 (t!379280 s!2326)) Nil!65512)) (t!379280 (t!379280 s!2326))) s!2326)))

(assert (=> b!6569826 (= lt!2408415 (lemmaMoveElementToOtherListKeepsConcatEq!2588 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (h!71960 (t!379280 s!2326)) (t!379280 (t!379280 s!2326)) s!2326))))

(declare-fun e!3976694 () Option!16336)

(assert (=> b!6569826 (= e!3976694 (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) (++!14591 (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (Cons!65512 (h!71960 (t!379280 s!2326)) Nil!65512)) (t!379280 (t!379280 s!2326)) s!2326))))

(declare-fun b!6569827 () Bool)

(assert (=> b!6569827 (= e!3976694 None!16335)))

(declare-fun b!6569828 () Bool)

(assert (=> b!6569828 (= e!3976692 e!3976694)))

(declare-fun c!1207709 () Bool)

(assert (=> b!6569828 (= c!1207709 ((_ is Nil!65512) (t!379280 s!2326)))))

(declare-fun d!2061304 () Bool)

(assert (=> d!2061304 e!3976693))

(declare-fun res!2696165 () Bool)

(assert (=> d!2061304 (=> res!2696165 e!3976693)))

(assert (=> d!2061304 (= res!2696165 e!3976691)))

(declare-fun res!2696166 () Bool)

(assert (=> d!2061304 (=> (not res!2696166) (not e!3976691))))

(assert (=> d!2061304 (= res!2696166 (isDefined!13039 lt!2408414))))

(assert (=> d!2061304 (= lt!2408414 e!3976692)))

(declare-fun c!1207710 () Bool)

(assert (=> d!2061304 (= c!1207710 e!3976695)))

(declare-fun res!2696163 () Bool)

(assert (=> d!2061304 (=> (not res!2696163) (not e!3976695))))

(assert (=> d!2061304 (= res!2696163 (matchR!8628 (regOne!33402 r!7292) (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512))))))

(assert (=> d!2061304 (validRegex!8181 (regOne!33402 r!7292))))

(assert (=> d!2061304 (= (findConcatSeparation!2750 (regOne!33402 r!7292) (regTwo!33402 r!7292) (++!14591 Nil!65512 (Cons!65512 (h!71960 s!2326) Nil!65512)) (t!379280 s!2326) s!2326) lt!2408414)))

(declare-fun b!6569825 () Bool)

(declare-fun res!2696167 () Bool)

(assert (=> b!6569825 (=> (not res!2696167) (not e!3976691))))

(assert (=> b!6569825 (= res!2696167 (matchR!8628 (regTwo!33402 r!7292) (_2!36727 (get!22749 lt!2408414))))))

(assert (= (and d!2061304 res!2696163) b!6569820))

(assert (= (and d!2061304 c!1207710) b!6569824))

(assert (= (and d!2061304 (not c!1207710)) b!6569828))

(assert (= (and b!6569828 c!1207709) b!6569827))

(assert (= (and b!6569828 (not c!1207709)) b!6569826))

(assert (= (and d!2061304 res!2696166) b!6569823))

(assert (= (and b!6569823 res!2696164) b!6569825))

(assert (= (and b!6569825 res!2696167) b!6569821))

(assert (= (and d!2061304 (not res!2696165)) b!6569822))

(declare-fun m!7351858 () Bool)

(assert (=> b!6569820 m!7351858))

(declare-fun m!7351860 () Bool)

(assert (=> b!6569823 m!7351860))

(declare-fun m!7351862 () Bool)

(assert (=> b!6569823 m!7351862))

(declare-fun m!7351864 () Bool)

(assert (=> b!6569822 m!7351864))

(assert (=> b!6569825 m!7351860))

(declare-fun m!7351866 () Bool)

(assert (=> b!6569825 m!7351866))

(assert (=> b!6569821 m!7351860))

(declare-fun m!7351868 () Bool)

(assert (=> b!6569821 m!7351868))

(assert (=> b!6569826 m!7351338))

(declare-fun m!7351870 () Bool)

(assert (=> b!6569826 m!7351870))

(assert (=> b!6569826 m!7351870))

(declare-fun m!7351872 () Bool)

(assert (=> b!6569826 m!7351872))

(assert (=> b!6569826 m!7351338))

(declare-fun m!7351874 () Bool)

(assert (=> b!6569826 m!7351874))

(assert (=> b!6569826 m!7351870))

(declare-fun m!7351876 () Bool)

(assert (=> b!6569826 m!7351876))

(assert (=> d!2061304 m!7351864))

(assert (=> d!2061304 m!7351338))

(declare-fun m!7351878 () Bool)

(assert (=> d!2061304 m!7351878))

(assert (=> d!2061304 m!7351348))

(assert (=> b!6569261 d!2061304))

(declare-fun d!2061306 () Bool)

(assert (=> d!2061306 true))

(declare-fun setRes!44858 () Bool)

(assert (=> d!2061306 setRes!44858))

(declare-fun condSetEmpty!44858 () Bool)

(declare-fun res!2696168 () (InoxSet Context!11658))

(assert (=> d!2061306 (= condSetEmpty!44858 (= res!2696168 ((as const (Array Context!11658 Bool)) false)))))

(assert (=> d!2061306 (= (choose!49067 lt!2408285 lambda!365735) res!2696168)))

(declare-fun setIsEmpty!44858 () Bool)

(assert (=> setIsEmpty!44858 setRes!44858))

(declare-fun e!3976696 () Bool)

(declare-fun setNonEmpty!44858 () Bool)

(declare-fun tp!1813652 () Bool)

(declare-fun setElem!44858 () Context!11658)

(assert (=> setNonEmpty!44858 (= setRes!44858 (and tp!1813652 (inv!84359 setElem!44858) e!3976696))))

(declare-fun setRest!44858 () (InoxSet Context!11658))

(assert (=> setNonEmpty!44858 (= res!2696168 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) setElem!44858 true) setRest!44858))))

(declare-fun b!6569829 () Bool)

(declare-fun tp!1813653 () Bool)

(assert (=> b!6569829 (= e!3976696 tp!1813653)))

(assert (= (and d!2061306 condSetEmpty!44858) setIsEmpty!44858))

(assert (= (and d!2061306 (not condSetEmpty!44858)) setNonEmpty!44858))

(assert (= setNonEmpty!44858 b!6569829))

(declare-fun m!7351880 () Bool)

(assert (=> setNonEmpty!44858 m!7351880))

(assert (=> d!2060930 d!2061306))

(declare-fun bm!571648 () Bool)

(declare-fun call!571655 () (InoxSet Context!11658))

(declare-fun call!571656 () (InoxSet Context!11658))

(assert (=> bm!571648 (= call!571655 call!571656)))

(declare-fun call!571657 () List!65634)

(declare-fun call!571653 () (InoxSet Context!11658))

(declare-fun c!1207715 () Bool)

(declare-fun bm!571649 () Bool)

(assert (=> bm!571649 (= call!571653 (derivationStepZipperDown!1693 (ite c!1207715 (regTwo!33403 (h!71958 (exprs!6329 lt!2408292))) (regOne!33402 (h!71958 (exprs!6329 lt!2408292)))) (ite c!1207715 (Context!11659 (t!379278 (exprs!6329 lt!2408292))) (Context!11659 call!571657)) (h!71960 s!2326)))))

(declare-fun b!6569830 () Bool)

(declare-fun e!3976698 () (InoxSet Context!11658))

(assert (=> b!6569830 (= e!3976698 (store ((as const (Array Context!11658 Bool)) false) (Context!11659 (t!379278 (exprs!6329 lt!2408292))) true))))

(declare-fun bm!571650 () Bool)

(declare-fun call!571654 () List!65634)

(assert (=> bm!571650 (= call!571654 call!571657)))

(declare-fun b!6569832 () Bool)

(declare-fun e!3976699 () (InoxSet Context!11658))

(declare-fun e!3976702 () (InoxSet Context!11658))

(assert (=> b!6569832 (= e!3976699 e!3976702)))

(declare-fun c!1207714 () Bool)

(assert (=> b!6569832 (= c!1207714 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408292))))))

(declare-fun b!6569833 () Bool)

(declare-fun e!3976701 () (InoxSet Context!11658))

(assert (=> b!6569833 (= e!3976701 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569834 () Bool)

(declare-fun e!3976697 () Bool)

(assert (=> b!6569834 (= e!3976697 (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 lt!2408292)))))))

(declare-fun call!571658 () (InoxSet Context!11658))

(declare-fun c!1207712 () Bool)

(declare-fun bm!571651 () Bool)

(assert (=> bm!571651 (= call!571658 (derivationStepZipperDown!1693 (ite c!1207715 (regOne!33403 (h!71958 (exprs!6329 lt!2408292))) (ite c!1207712 (regTwo!33402 (h!71958 (exprs!6329 lt!2408292))) (ite c!1207714 (regOne!33402 (h!71958 (exprs!6329 lt!2408292))) (reg!16774 (h!71958 (exprs!6329 lt!2408292)))))) (ite (or c!1207715 c!1207712) (Context!11659 (t!379278 (exprs!6329 lt!2408292))) (Context!11659 call!571654)) (h!71960 s!2326)))))

(declare-fun b!6569835 () Bool)

(assert (=> b!6569835 (= e!3976699 ((_ map or) call!571653 call!571656))))

(declare-fun b!6569836 () Bool)

(declare-fun c!1207711 () Bool)

(assert (=> b!6569836 (= c!1207711 ((_ is Star!16445) (h!71958 (exprs!6329 lt!2408292))))))

(assert (=> b!6569836 (= e!3976702 e!3976701)))

(declare-fun b!6569837 () Bool)

(declare-fun e!3976700 () (InoxSet Context!11658))

(assert (=> b!6569837 (= e!3976700 ((_ map or) call!571658 call!571653))))

(declare-fun bm!571652 () Bool)

(assert (=> bm!571652 (= call!571657 ($colon$colon!2286 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408292)))) (ite (or c!1207712 c!1207714) (regTwo!33402 (h!71958 (exprs!6329 lt!2408292))) (h!71958 (exprs!6329 lt!2408292)))))))

(declare-fun b!6569831 () Bool)

(assert (=> b!6569831 (= e!3976698 e!3976700)))

(assert (=> b!6569831 (= c!1207715 ((_ is Union!16445) (h!71958 (exprs!6329 lt!2408292))))))

(declare-fun d!2061308 () Bool)

(declare-fun c!1207713 () Bool)

(assert (=> d!2061308 (= c!1207713 (and ((_ is ElementMatch!16445) (h!71958 (exprs!6329 lt!2408292))) (= (c!1207368 (h!71958 (exprs!6329 lt!2408292))) (h!71960 s!2326))))))

(assert (=> d!2061308 (= (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408292)) (Context!11659 (t!379278 (exprs!6329 lt!2408292))) (h!71960 s!2326)) e!3976698)))

(declare-fun b!6569838 () Bool)

(assert (=> b!6569838 (= e!3976702 call!571655)))

(declare-fun b!6569839 () Bool)

(assert (=> b!6569839 (= e!3976701 call!571655)))

(declare-fun b!6569840 () Bool)

(assert (=> b!6569840 (= c!1207712 e!3976697)))

(declare-fun res!2696169 () Bool)

(assert (=> b!6569840 (=> (not res!2696169) (not e!3976697))))

(assert (=> b!6569840 (= res!2696169 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408292))))))

(assert (=> b!6569840 (= e!3976700 e!3976699)))

(declare-fun bm!571653 () Bool)

(assert (=> bm!571653 (= call!571656 call!571658)))

(assert (= (and d!2061308 c!1207713) b!6569830))

(assert (= (and d!2061308 (not c!1207713)) b!6569831))

(assert (= (and b!6569831 c!1207715) b!6569837))

(assert (= (and b!6569831 (not c!1207715)) b!6569840))

(assert (= (and b!6569840 res!2696169) b!6569834))

(assert (= (and b!6569840 c!1207712) b!6569835))

(assert (= (and b!6569840 (not c!1207712)) b!6569832))

(assert (= (and b!6569832 c!1207714) b!6569838))

(assert (= (and b!6569832 (not c!1207714)) b!6569836))

(assert (= (and b!6569836 c!1207711) b!6569839))

(assert (= (and b!6569836 (not c!1207711)) b!6569833))

(assert (= (or b!6569838 b!6569839) bm!571650))

(assert (= (or b!6569838 b!6569839) bm!571648))

(assert (= (or b!6569835 bm!571650) bm!571652))

(assert (= (or b!6569835 bm!571648) bm!571653))

(assert (= (or b!6569837 b!6569835) bm!571649))

(assert (= (or b!6569837 bm!571653) bm!571651))

(declare-fun m!7351882 () Bool)

(assert (=> bm!571652 m!7351882))

(declare-fun m!7351884 () Bool)

(assert (=> b!6569830 m!7351884))

(declare-fun m!7351886 () Bool)

(assert (=> bm!571651 m!7351886))

(declare-fun m!7351888 () Bool)

(assert (=> bm!571649 m!7351888))

(declare-fun m!7351890 () Bool)

(assert (=> b!6569834 m!7351890))

(assert (=> bm!571510 d!2061308))

(assert (=> bs!1677941 d!2061024))

(declare-fun b!6569841 () Bool)

(declare-fun e!3976704 () (InoxSet Context!11658))

(declare-fun call!571659 () (InoxSet Context!11658))

(assert (=> b!6569841 (= e!3976704 call!571659)))

(declare-fun b!6569843 () Bool)

(assert (=> b!6569843 (= e!3976704 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571654 () Bool)

(assert (=> bm!571654 (= call!571659 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408267))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408267)))))) (h!71960 s!2326)))))

(declare-fun b!6569844 () Bool)

(declare-fun e!3976703 () (InoxSet Context!11658))

(assert (=> b!6569844 (= e!3976703 e!3976704)))

(declare-fun c!1207716 () Bool)

(assert (=> b!6569844 (= c!1207716 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408267))))))))

(declare-fun b!6569845 () Bool)

(assert (=> b!6569845 (= e!3976703 ((_ map or) call!571659 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408267)))))) (h!71960 s!2326))))))

(declare-fun b!6569842 () Bool)

(declare-fun e!3976705 () Bool)

(assert (=> b!6569842 (= e!3976705 (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408267)))))))))

(declare-fun d!2061310 () Bool)

(declare-fun c!1207717 () Bool)

(assert (=> d!2061310 (= c!1207717 e!3976705)))

(declare-fun res!2696170 () Bool)

(assert (=> d!2061310 (=> (not res!2696170) (not e!3976705))))

(assert (=> d!2061310 (= res!2696170 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408267))))))))

(assert (=> d!2061310 (= (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408267))) (h!71960 s!2326)) e!3976703)))

(assert (= (and d!2061310 res!2696170) b!6569842))

(assert (= (and d!2061310 c!1207717) b!6569845))

(assert (= (and d!2061310 (not c!1207717)) b!6569844))

(assert (= (and b!6569844 c!1207716) b!6569841))

(assert (= (and b!6569844 (not c!1207716)) b!6569843))

(assert (= (or b!6569845 b!6569841) bm!571654))

(declare-fun m!7351892 () Bool)

(assert (=> bm!571654 m!7351892))

(declare-fun m!7351894 () Bool)

(assert (=> b!6569845 m!7351894))

(declare-fun m!7351896 () Bool)

(assert (=> b!6569842 m!7351896))

(assert (=> b!6568828 d!2061310))

(declare-fun bm!571659 () Bool)

(declare-fun call!571664 () Bool)

(declare-fun c!1207720 () Bool)

(assert (=> bm!571659 (= call!571664 (nullable!6438 (ite c!1207720 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))

(declare-fun b!6569860 () Bool)

(declare-fun e!3976719 () Bool)

(declare-fun e!3976720 () Bool)

(assert (=> b!6569860 (= e!3976719 e!3976720)))

(declare-fun res!2696184 () Bool)

(assert (=> b!6569860 (=> res!2696184 e!3976720)))

(assert (=> b!6569860 (= res!2696184 ((_ is Star!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569861 () Bool)

(declare-fun e!3976722 () Bool)

(assert (=> b!6569861 (= e!3976722 call!571664)))

(declare-fun bm!571660 () Bool)

(declare-fun call!571665 () Bool)

(assert (=> bm!571660 (= call!571665 (nullable!6438 (ite c!1207720 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))))))))

(declare-fun d!2061312 () Bool)

(declare-fun res!2696181 () Bool)

(declare-fun e!3976718 () Bool)

(assert (=> d!2061312 (=> res!2696181 e!3976718)))

(assert (=> d!2061312 (= res!2696181 ((_ is EmptyExpr!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> d!2061312 (= (nullableFct!2364 (h!71958 (exprs!6329 (h!71959 zl!343)))) e!3976718)))

(declare-fun b!6569862 () Bool)

(declare-fun e!3976723 () Bool)

(assert (=> b!6569862 (= e!3976720 e!3976723)))

(assert (=> b!6569862 (= c!1207720 ((_ is Union!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569863 () Bool)

(declare-fun e!3976721 () Bool)

(assert (=> b!6569863 (= e!3976721 call!571664)))

(declare-fun b!6569864 () Bool)

(assert (=> b!6569864 (= e!3976723 e!3976721)))

(declare-fun res!2696183 () Bool)

(assert (=> b!6569864 (= res!2696183 call!571665)))

(assert (=> b!6569864 (=> (not res!2696183) (not e!3976721))))

(declare-fun b!6569865 () Bool)

(assert (=> b!6569865 (= e!3976723 e!3976722)))

(declare-fun res!2696182 () Bool)

(assert (=> b!6569865 (= res!2696182 call!571665)))

(assert (=> b!6569865 (=> res!2696182 e!3976722)))

(declare-fun b!6569866 () Bool)

(assert (=> b!6569866 (= e!3976718 e!3976719)))

(declare-fun res!2696185 () Bool)

(assert (=> b!6569866 (=> (not res!2696185) (not e!3976719))))

(assert (=> b!6569866 (= res!2696185 (and (not ((_ is EmptyLang!16445) (h!71958 (exprs!6329 (h!71959 zl!343))))) (not ((_ is ElementMatch!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))))

(assert (= (and d!2061312 (not res!2696181)) b!6569866))

(assert (= (and b!6569866 res!2696185) b!6569860))

(assert (= (and b!6569860 (not res!2696184)) b!6569862))

(assert (= (and b!6569862 c!1207720) b!6569865))

(assert (= (and b!6569862 (not c!1207720)) b!6569864))

(assert (= (and b!6569865 (not res!2696182)) b!6569861))

(assert (= (and b!6569864 res!2696183) b!6569863))

(assert (= (or b!6569861 b!6569863) bm!571659))

(assert (= (or b!6569865 b!6569864) bm!571660))

(declare-fun m!7351898 () Bool)

(assert (=> bm!571659 m!7351898))

(declare-fun m!7351900 () Bool)

(assert (=> bm!571660 m!7351900))

(assert (=> d!2061016 d!2061312))

(declare-fun bm!571661 () Bool)

(declare-fun call!571668 () (InoxSet Context!11658))

(declare-fun call!571669 () (InoxSet Context!11658))

(assert (=> bm!571661 (= call!571668 call!571669)))

(declare-fun c!1207725 () Bool)

(declare-fun bm!571662 () Bool)

(declare-fun call!571670 () List!65634)

(declare-fun call!571666 () (InoxSet Context!11658))

(assert (=> bm!571662 (= call!571666 (derivationStepZipperDown!1693 (ite c!1207725 (regTwo!33403 (h!71958 (exprs!6329 lt!2408279))) (regOne!33402 (h!71958 (exprs!6329 lt!2408279)))) (ite c!1207725 (Context!11659 (t!379278 (exprs!6329 lt!2408279))) (Context!11659 call!571670)) (h!71960 s!2326)))))

(declare-fun b!6569867 () Bool)

(declare-fun e!3976725 () (InoxSet Context!11658))

(assert (=> b!6569867 (= e!3976725 (store ((as const (Array Context!11658 Bool)) false) (Context!11659 (t!379278 (exprs!6329 lt!2408279))) true))))

(declare-fun bm!571663 () Bool)

(declare-fun call!571667 () List!65634)

(assert (=> bm!571663 (= call!571667 call!571670)))

(declare-fun b!6569869 () Bool)

(declare-fun e!3976726 () (InoxSet Context!11658))

(declare-fun e!3976729 () (InoxSet Context!11658))

(assert (=> b!6569869 (= e!3976726 e!3976729)))

(declare-fun c!1207724 () Bool)

(assert (=> b!6569869 (= c!1207724 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408279))))))

(declare-fun b!6569870 () Bool)

(declare-fun e!3976728 () (InoxSet Context!11658))

(assert (=> b!6569870 (= e!3976728 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569871 () Bool)

(declare-fun e!3976724 () Bool)

(assert (=> b!6569871 (= e!3976724 (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 lt!2408279)))))))

(declare-fun call!571671 () (InoxSet Context!11658))

(declare-fun c!1207722 () Bool)

(declare-fun bm!571664 () Bool)

(assert (=> bm!571664 (= call!571671 (derivationStepZipperDown!1693 (ite c!1207725 (regOne!33403 (h!71958 (exprs!6329 lt!2408279))) (ite c!1207722 (regTwo!33402 (h!71958 (exprs!6329 lt!2408279))) (ite c!1207724 (regOne!33402 (h!71958 (exprs!6329 lt!2408279))) (reg!16774 (h!71958 (exprs!6329 lt!2408279)))))) (ite (or c!1207725 c!1207722) (Context!11659 (t!379278 (exprs!6329 lt!2408279))) (Context!11659 call!571667)) (h!71960 s!2326)))))

(declare-fun b!6569872 () Bool)

(assert (=> b!6569872 (= e!3976726 ((_ map or) call!571666 call!571669))))

(declare-fun b!6569873 () Bool)

(declare-fun c!1207721 () Bool)

(assert (=> b!6569873 (= c!1207721 ((_ is Star!16445) (h!71958 (exprs!6329 lt!2408279))))))

(assert (=> b!6569873 (= e!3976729 e!3976728)))

(declare-fun b!6569874 () Bool)

(declare-fun e!3976727 () (InoxSet Context!11658))

(assert (=> b!6569874 (= e!3976727 ((_ map or) call!571671 call!571666))))

(declare-fun bm!571665 () Bool)

(assert (=> bm!571665 (= call!571670 ($colon$colon!2286 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408279)))) (ite (or c!1207722 c!1207724) (regTwo!33402 (h!71958 (exprs!6329 lt!2408279))) (h!71958 (exprs!6329 lt!2408279)))))))

(declare-fun b!6569868 () Bool)

(assert (=> b!6569868 (= e!3976725 e!3976727)))

(assert (=> b!6569868 (= c!1207725 ((_ is Union!16445) (h!71958 (exprs!6329 lt!2408279))))))

(declare-fun d!2061314 () Bool)

(declare-fun c!1207723 () Bool)

(assert (=> d!2061314 (= c!1207723 (and ((_ is ElementMatch!16445) (h!71958 (exprs!6329 lt!2408279))) (= (c!1207368 (h!71958 (exprs!6329 lt!2408279))) (h!71960 s!2326))))))

(assert (=> d!2061314 (= (derivationStepZipperDown!1693 (h!71958 (exprs!6329 lt!2408279)) (Context!11659 (t!379278 (exprs!6329 lt!2408279))) (h!71960 s!2326)) e!3976725)))

(declare-fun b!6569875 () Bool)

(assert (=> b!6569875 (= e!3976729 call!571668)))

(declare-fun b!6569876 () Bool)

(assert (=> b!6569876 (= e!3976728 call!571668)))

(declare-fun b!6569877 () Bool)

(assert (=> b!6569877 (= c!1207722 e!3976724)))

(declare-fun res!2696186 () Bool)

(assert (=> b!6569877 (=> (not res!2696186) (not e!3976724))))

(assert (=> b!6569877 (= res!2696186 ((_ is Concat!25290) (h!71958 (exprs!6329 lt!2408279))))))

(assert (=> b!6569877 (= e!3976727 e!3976726)))

(declare-fun bm!571666 () Bool)

(assert (=> bm!571666 (= call!571669 call!571671)))

(assert (= (and d!2061314 c!1207723) b!6569867))

(assert (= (and d!2061314 (not c!1207723)) b!6569868))

(assert (= (and b!6569868 c!1207725) b!6569874))

(assert (= (and b!6569868 (not c!1207725)) b!6569877))

(assert (= (and b!6569877 res!2696186) b!6569871))

(assert (= (and b!6569877 c!1207722) b!6569872))

(assert (= (and b!6569877 (not c!1207722)) b!6569869))

(assert (= (and b!6569869 c!1207724) b!6569875))

(assert (= (and b!6569869 (not c!1207724)) b!6569873))

(assert (= (and b!6569873 c!1207721) b!6569876))

(assert (= (and b!6569873 (not c!1207721)) b!6569870))

(assert (= (or b!6569875 b!6569876) bm!571663))

(assert (= (or b!6569875 b!6569876) bm!571661))

(assert (= (or b!6569872 bm!571663) bm!571665))

(assert (= (or b!6569872 bm!571661) bm!571666))

(assert (= (or b!6569874 b!6569872) bm!571662))

(assert (= (or b!6569874 bm!571666) bm!571664))

(declare-fun m!7351902 () Bool)

(assert (=> bm!571665 m!7351902))

(declare-fun m!7351904 () Bool)

(assert (=> b!6569867 m!7351904))

(declare-fun m!7351906 () Bool)

(assert (=> bm!571664 m!7351906))

(declare-fun m!7351908 () Bool)

(assert (=> bm!571662 m!7351908))

(declare-fun m!7351910 () Bool)

(assert (=> b!6569871 m!7351910))

(assert (=> bm!571538 d!2061314))

(assert (=> d!2060922 d!2060926))

(declare-fun d!2061316 () Bool)

(assert (=> d!2061316 (= (flatMap!1950 lt!2408268 lambda!365735) (dynLambda!26063 lambda!365735 lt!2408267))))

(assert (=> d!2061316 true))

(declare-fun _$13!3815 () Unit!159115)

(assert (=> d!2061316 (= (choose!49066 lt!2408268 lt!2408267 lambda!365735) _$13!3815)))

(declare-fun b_lambda!248459 () Bool)

(assert (=> (not b_lambda!248459) (not d!2061316)))

(declare-fun bs!1678124 () Bool)

(assert (= bs!1678124 d!2061316))

(assert (=> bs!1678124 m!7350782))

(assert (=> bs!1678124 m!7350992))

(assert (=> d!2060922 d!2061316))

(declare-fun bs!1678125 () Bool)

(declare-fun d!2061318 () Bool)

(assert (= bs!1678125 (and d!2061318 d!2060886)))

(declare-fun lambda!365834 () Int)

(assert (=> bs!1678125 (= lambda!365834 lambda!365738)))

(declare-fun bs!1678126 () Bool)

(assert (= bs!1678126 (and d!2061318 d!2060990)))

(assert (=> bs!1678126 (= lambda!365834 lambda!365769)))

(declare-fun bs!1678127 () Bool)

(assert (= bs!1678127 (and d!2061318 d!2060998)))

(assert (=> bs!1678127 (= lambda!365834 lambda!365773)))

(declare-fun bs!1678128 () Bool)

(assert (= bs!1678128 (and d!2061318 d!2061282)))

(assert (=> bs!1678128 (= lambda!365834 lambda!365831)))

(declare-fun bs!1678129 () Bool)

(assert (= bs!1678129 (and d!2061318 d!2061284)))

(assert (=> bs!1678129 (= lambda!365834 lambda!365832)))

(declare-fun bs!1678130 () Bool)

(assert (= bs!1678130 (and d!2061318 d!2061006)))

(assert (=> bs!1678130 (= lambda!365834 lambda!365783)))

(declare-fun bs!1678131 () Bool)

(assert (= bs!1678131 (and d!2061318 d!2060992)))

(assert (=> bs!1678131 (= lambda!365834 lambda!365772)))

(declare-fun bs!1678132 () Bool)

(assert (= bs!1678132 (and d!2061318 d!2061118)))

(assert (=> bs!1678132 (= lambda!365834 lambda!365804)))

(declare-fun bs!1678133 () Bool)

(assert (= bs!1678133 (and d!2061318 d!2061194)))

(assert (=> bs!1678133 (= lambda!365834 lambda!365819)))

(declare-fun bs!1678134 () Bool)

(assert (= bs!1678134 (and d!2061318 d!2061002)))

(assert (=> bs!1678134 (= lambda!365834 lambda!365776)))

(declare-fun bs!1678135 () Bool)

(assert (= bs!1678135 (and d!2061318 d!2061238)))

(assert (=> bs!1678135 (= lambda!365834 lambda!365821)))

(declare-fun bs!1678136 () Bool)

(assert (= bs!1678136 (and d!2061318 d!2061240)))

(assert (=> bs!1678136 (= lambda!365834 lambda!365822)))

(declare-fun b!6569878 () Bool)

(declare-fun e!3976731 () Regex!16445)

(declare-fun e!3976733 () Regex!16445)

(assert (=> b!6569878 (= e!3976731 e!3976733)))

(declare-fun c!1207726 () Bool)

(assert (=> b!6569878 (= c!1207726 ((_ is Cons!65510) (t!379278 (unfocusZipperList!1866 zl!343))))))

(declare-fun b!6569879 () Bool)

(assert (=> b!6569879 (= e!3976733 EmptyLang!16445)))

(declare-fun b!6569880 () Bool)

(declare-fun e!3976732 () Bool)

(declare-fun e!3976730 () Bool)

(assert (=> b!6569880 (= e!3976732 e!3976730)))

(declare-fun c!1207729 () Bool)

(assert (=> b!6569880 (= c!1207729 (isEmpty!37757 (t!379278 (unfocusZipperList!1866 zl!343))))))

(declare-fun b!6569881 () Bool)

(declare-fun lt!2408416 () Regex!16445)

(assert (=> b!6569881 (= e!3976730 (isEmptyLang!1832 lt!2408416))))

(declare-fun b!6569882 () Bool)

(declare-fun e!3976734 () Bool)

(assert (=> b!6569882 (= e!3976730 e!3976734)))

(declare-fun c!1207728 () Bool)

(assert (=> b!6569882 (= c!1207728 (isEmpty!37757 (tail!12427 (t!379278 (unfocusZipperList!1866 zl!343)))))))

(assert (=> d!2061318 e!3976732))

(declare-fun res!2696187 () Bool)

(assert (=> d!2061318 (=> (not res!2696187) (not e!3976732))))

(assert (=> d!2061318 (= res!2696187 (validRegex!8181 lt!2408416))))

(assert (=> d!2061318 (= lt!2408416 e!3976731)))

(declare-fun c!1207727 () Bool)

(declare-fun e!3976735 () Bool)

(assert (=> d!2061318 (= c!1207727 e!3976735)))

(declare-fun res!2696188 () Bool)

(assert (=> d!2061318 (=> (not res!2696188) (not e!3976735))))

(assert (=> d!2061318 (= res!2696188 ((_ is Cons!65510) (t!379278 (unfocusZipperList!1866 zl!343))))))

(assert (=> d!2061318 (forall!15616 (t!379278 (unfocusZipperList!1866 zl!343)) lambda!365834)))

(assert (=> d!2061318 (= (generalisedUnion!2289 (t!379278 (unfocusZipperList!1866 zl!343))) lt!2408416)))

(declare-fun b!6569883 () Bool)

(assert (=> b!6569883 (= e!3976734 (= lt!2408416 (head!13342 (t!379278 (unfocusZipperList!1866 zl!343)))))))

(declare-fun b!6569884 () Bool)

(assert (=> b!6569884 (= e!3976734 (isUnion!1262 lt!2408416))))

(declare-fun b!6569885 () Bool)

(assert (=> b!6569885 (= e!3976731 (h!71958 (t!379278 (unfocusZipperList!1866 zl!343))))))

(declare-fun b!6569886 () Bool)

(assert (=> b!6569886 (= e!3976733 (Union!16445 (h!71958 (t!379278 (unfocusZipperList!1866 zl!343))) (generalisedUnion!2289 (t!379278 (t!379278 (unfocusZipperList!1866 zl!343))))))))

(declare-fun b!6569887 () Bool)

(assert (=> b!6569887 (= e!3976735 (isEmpty!37757 (t!379278 (t!379278 (unfocusZipperList!1866 zl!343)))))))

(assert (= (and d!2061318 res!2696188) b!6569887))

(assert (= (and d!2061318 c!1207727) b!6569885))

(assert (= (and d!2061318 (not c!1207727)) b!6569878))

(assert (= (and b!6569878 c!1207726) b!6569886))

(assert (= (and b!6569878 (not c!1207726)) b!6569879))

(assert (= (and d!2061318 res!2696187) b!6569880))

(assert (= (and b!6569880 c!1207729) b!6569881))

(assert (= (and b!6569880 (not c!1207729)) b!6569882))

(assert (= (and b!6569882 c!1207728) b!6569883))

(assert (= (and b!6569882 (not c!1207728)) b!6569884))

(declare-fun m!7351912 () Bool)

(assert (=> b!6569887 m!7351912))

(declare-fun m!7351914 () Bool)

(assert (=> b!6569886 m!7351914))

(declare-fun m!7351916 () Bool)

(assert (=> b!6569884 m!7351916))

(declare-fun m!7351918 () Bool)

(assert (=> b!6569881 m!7351918))

(assert (=> b!6569880 m!7351186))

(declare-fun m!7351920 () Bool)

(assert (=> b!6569883 m!7351920))

(declare-fun m!7351922 () Bool)

(assert (=> b!6569882 m!7351922))

(assert (=> b!6569882 m!7351922))

(declare-fun m!7351924 () Bool)

(assert (=> b!6569882 m!7351924))

(declare-fun m!7351926 () Bool)

(assert (=> d!2061318 m!7351926))

(declare-fun m!7351928 () Bool)

(assert (=> d!2061318 m!7351928))

(assert (=> b!6569081 d!2061318))

(declare-fun bs!1678137 () Bool)

(declare-fun d!2061320 () Bool)

(assert (= bs!1678137 (and d!2061320 d!2060886)))

(declare-fun lambda!365835 () Int)

(assert (=> bs!1678137 (= lambda!365835 lambda!365738)))

(declare-fun bs!1678138 () Bool)

(assert (= bs!1678138 (and d!2061320 d!2060990)))

(assert (=> bs!1678138 (= lambda!365835 lambda!365769)))

(declare-fun bs!1678139 () Bool)

(assert (= bs!1678139 (and d!2061320 d!2060998)))

(assert (=> bs!1678139 (= lambda!365835 lambda!365773)))

(declare-fun bs!1678140 () Bool)

(assert (= bs!1678140 (and d!2061320 d!2061282)))

(assert (=> bs!1678140 (= lambda!365835 lambda!365831)))

(declare-fun bs!1678141 () Bool)

(assert (= bs!1678141 (and d!2061320 d!2061318)))

(assert (=> bs!1678141 (= lambda!365835 lambda!365834)))

(declare-fun bs!1678142 () Bool)

(assert (= bs!1678142 (and d!2061320 d!2061284)))

(assert (=> bs!1678142 (= lambda!365835 lambda!365832)))

(declare-fun bs!1678143 () Bool)

(assert (= bs!1678143 (and d!2061320 d!2061006)))

(assert (=> bs!1678143 (= lambda!365835 lambda!365783)))

(declare-fun bs!1678144 () Bool)

(assert (= bs!1678144 (and d!2061320 d!2060992)))

(assert (=> bs!1678144 (= lambda!365835 lambda!365772)))

(declare-fun bs!1678145 () Bool)

(assert (= bs!1678145 (and d!2061320 d!2061118)))

(assert (=> bs!1678145 (= lambda!365835 lambda!365804)))

(declare-fun bs!1678146 () Bool)

(assert (= bs!1678146 (and d!2061320 d!2061194)))

(assert (=> bs!1678146 (= lambda!365835 lambda!365819)))

(declare-fun bs!1678147 () Bool)

(assert (= bs!1678147 (and d!2061320 d!2061002)))

(assert (=> bs!1678147 (= lambda!365835 lambda!365776)))

(declare-fun bs!1678148 () Bool)

(assert (= bs!1678148 (and d!2061320 d!2061238)))

(assert (=> bs!1678148 (= lambda!365835 lambda!365821)))

(declare-fun bs!1678149 () Bool)

(assert (= bs!1678149 (and d!2061320 d!2061240)))

(assert (=> bs!1678149 (= lambda!365835 lambda!365822)))

(declare-fun b!6569888 () Bool)

(declare-fun e!3976741 () Bool)

(declare-fun lt!2408417 () Regex!16445)

(assert (=> b!6569888 (= e!3976741 (= lt!2408417 (head!13342 (t!379278 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun b!6569889 () Bool)

(declare-fun e!3976739 () Bool)

(assert (=> b!6569889 (= e!3976739 (isEmpty!37757 (t!379278 (t!379278 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun b!6569890 () Bool)

(declare-fun e!3976737 () Regex!16445)

(assert (=> b!6569890 (= e!3976737 (Concat!25290 (h!71958 (t!379278 (exprs!6329 (h!71959 zl!343)))) (generalisedConcat!2042 (t!379278 (t!379278 (exprs!6329 (h!71959 zl!343)))))))))

(declare-fun e!3976738 () Bool)

(assert (=> d!2061320 e!3976738))

(declare-fun res!2696189 () Bool)

(assert (=> d!2061320 (=> (not res!2696189) (not e!3976738))))

(assert (=> d!2061320 (= res!2696189 (validRegex!8181 lt!2408417))))

(declare-fun e!3976736 () Regex!16445)

(assert (=> d!2061320 (= lt!2408417 e!3976736)))

(declare-fun c!1207732 () Bool)

(assert (=> d!2061320 (= c!1207732 e!3976739)))

(declare-fun res!2696190 () Bool)

(assert (=> d!2061320 (=> (not res!2696190) (not e!3976739))))

(assert (=> d!2061320 (= res!2696190 ((_ is Cons!65510) (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> d!2061320 (forall!15616 (t!379278 (exprs!6329 (h!71959 zl!343))) lambda!365835)))

(assert (=> d!2061320 (= (generalisedConcat!2042 (t!379278 (exprs!6329 (h!71959 zl!343)))) lt!2408417)))

(declare-fun b!6569891 () Bool)

(assert (=> b!6569891 (= e!3976736 e!3976737)))

(declare-fun c!1207731 () Bool)

(assert (=> b!6569891 (= c!1207731 ((_ is Cons!65510) (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569892 () Bool)

(declare-fun e!3976740 () Bool)

(assert (=> b!6569892 (= e!3976740 e!3976741)))

(declare-fun c!1207730 () Bool)

(assert (=> b!6569892 (= c!1207730 (isEmpty!37757 (tail!12427 (t!379278 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun b!6569893 () Bool)

(assert (=> b!6569893 (= e!3976740 (isEmptyExpr!1822 lt!2408417))))

(declare-fun b!6569894 () Bool)

(assert (=> b!6569894 (= e!3976741 (isConcat!1345 lt!2408417))))

(declare-fun b!6569895 () Bool)

(assert (=> b!6569895 (= e!3976736 (h!71958 (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569896 () Bool)

(assert (=> b!6569896 (= e!3976738 e!3976740)))

(declare-fun c!1207733 () Bool)

(assert (=> b!6569896 (= c!1207733 (isEmpty!37757 (t!379278 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569897 () Bool)

(assert (=> b!6569897 (= e!3976737 EmptyExpr!16445)))

(assert (= (and d!2061320 res!2696190) b!6569889))

(assert (= (and d!2061320 c!1207732) b!6569895))

(assert (= (and d!2061320 (not c!1207732)) b!6569891))

(assert (= (and b!6569891 c!1207731) b!6569890))

(assert (= (and b!6569891 (not c!1207731)) b!6569897))

(assert (= (and d!2061320 res!2696189) b!6569896))

(assert (= (and b!6569896 c!1207733) b!6569893))

(assert (= (and b!6569896 (not c!1207733)) b!6569892))

(assert (= (and b!6569892 c!1207730) b!6569888))

(assert (= (and b!6569892 (not c!1207730)) b!6569894))

(declare-fun m!7351930 () Bool)

(assert (=> b!6569889 m!7351930))

(declare-fun m!7351932 () Bool)

(assert (=> b!6569893 m!7351932))

(declare-fun m!7351934 () Bool)

(assert (=> d!2061320 m!7351934))

(declare-fun m!7351936 () Bool)

(assert (=> d!2061320 m!7351936))

(declare-fun m!7351938 () Bool)

(assert (=> b!6569892 m!7351938))

(assert (=> b!6569892 m!7351938))

(declare-fun m!7351940 () Bool)

(assert (=> b!6569892 m!7351940))

(declare-fun m!7351942 () Bool)

(assert (=> b!6569890 m!7351942))

(declare-fun m!7351944 () Bool)

(assert (=> b!6569894 m!7351944))

(assert (=> b!6569896 m!7350764))

(declare-fun m!7351946 () Bool)

(assert (=> b!6569888 m!7351946))

(assert (=> b!6569009 d!2061320))

(assert (=> d!2061010 d!2061020))

(declare-fun d!2061322 () Bool)

(assert (=> d!2061322 (= (flatMap!1950 z!1189 lambda!365735) (dynLambda!26063 lambda!365735 (h!71959 zl!343)))))

(assert (=> d!2061322 true))

(declare-fun _$13!3816 () Unit!159115)

(assert (=> d!2061322 (= (choose!49066 z!1189 (h!71959 zl!343) lambda!365735) _$13!3816)))

(declare-fun b_lambda!248461 () Bool)

(assert (=> (not b_lambda!248461) (not d!2061322)))

(declare-fun bs!1678150 () Bool)

(assert (= bs!1678150 d!2061322))

(assert (=> bs!1678150 m!7350832))

(assert (=> bs!1678150 m!7351216))

(assert (=> d!2061010 d!2061322))

(declare-fun d!2061324 () Bool)

(declare-fun res!2696191 () Bool)

(declare-fun e!3976742 () Bool)

(assert (=> d!2061324 (=> res!2696191 e!3976742)))

(assert (=> d!2061324 (= res!2696191 ((_ is Nil!65510) lt!2408356))))

(assert (=> d!2061324 (= (forall!15616 lt!2408356 lambda!365783) e!3976742)))

(declare-fun b!6569898 () Bool)

(declare-fun e!3976743 () Bool)

(assert (=> b!6569898 (= e!3976742 e!3976743)))

(declare-fun res!2696192 () Bool)

(assert (=> b!6569898 (=> (not res!2696192) (not e!3976743))))

(assert (=> b!6569898 (= res!2696192 (dynLambda!26064 lambda!365783 (h!71958 lt!2408356)))))

(declare-fun b!6569899 () Bool)

(assert (=> b!6569899 (= e!3976743 (forall!15616 (t!379278 lt!2408356) lambda!365783))))

(assert (= (and d!2061324 (not res!2696191)) b!6569898))

(assert (= (and b!6569898 res!2696192) b!6569899))

(declare-fun b_lambda!248463 () Bool)

(assert (=> (not b_lambda!248463) (not b!6569898)))

(declare-fun m!7351948 () Bool)

(assert (=> b!6569898 m!7351948))

(declare-fun m!7351950 () Bool)

(assert (=> b!6569899 m!7351950))

(assert (=> d!2061006 d!2061324))

(assert (=> d!2060968 d!2060964))

(declare-fun d!2061326 () Bool)

(assert (=> d!2061326 (= (flatMap!1950 lt!2408291 lambda!365735) (dynLambda!26063 lambda!365735 lt!2408292))))

(assert (=> d!2061326 true))

(declare-fun _$13!3817 () Unit!159115)

(assert (=> d!2061326 (= (choose!49066 lt!2408291 lt!2408292 lambda!365735) _$13!3817)))

(declare-fun b_lambda!248465 () Bool)

(assert (=> (not b_lambda!248465) (not d!2061326)))

(declare-fun bs!1678151 () Bool)

(assert (= bs!1678151 d!2061326))

(assert (=> bs!1678151 m!7350838))

(assert (=> bs!1678151 m!7351094))

(assert (=> d!2060968 d!2061326))

(declare-fun bs!1678152 () Bool)

(declare-fun d!2061328 () Bool)

(assert (= bs!1678152 (and d!2061328 d!2060886)))

(declare-fun lambda!365836 () Int)

(assert (=> bs!1678152 (= lambda!365836 lambda!365738)))

(declare-fun bs!1678153 () Bool)

(assert (= bs!1678153 (and d!2061328 d!2060990)))

(assert (=> bs!1678153 (= lambda!365836 lambda!365769)))

(declare-fun bs!1678154 () Bool)

(assert (= bs!1678154 (and d!2061328 d!2060998)))

(assert (=> bs!1678154 (= lambda!365836 lambda!365773)))

(declare-fun bs!1678155 () Bool)

(assert (= bs!1678155 (and d!2061328 d!2061282)))

(assert (=> bs!1678155 (= lambda!365836 lambda!365831)))

(declare-fun bs!1678156 () Bool)

(assert (= bs!1678156 (and d!2061328 d!2061320)))

(assert (=> bs!1678156 (= lambda!365836 lambda!365835)))

(declare-fun bs!1678157 () Bool)

(assert (= bs!1678157 (and d!2061328 d!2061318)))

(assert (=> bs!1678157 (= lambda!365836 lambda!365834)))

(declare-fun bs!1678158 () Bool)

(assert (= bs!1678158 (and d!2061328 d!2061284)))

(assert (=> bs!1678158 (= lambda!365836 lambda!365832)))

(declare-fun bs!1678159 () Bool)

(assert (= bs!1678159 (and d!2061328 d!2061006)))

(assert (=> bs!1678159 (= lambda!365836 lambda!365783)))

(declare-fun bs!1678160 () Bool)

(assert (= bs!1678160 (and d!2061328 d!2060992)))

(assert (=> bs!1678160 (= lambda!365836 lambda!365772)))

(declare-fun bs!1678161 () Bool)

(assert (= bs!1678161 (and d!2061328 d!2061118)))

(assert (=> bs!1678161 (= lambda!365836 lambda!365804)))

(declare-fun bs!1678162 () Bool)

(assert (= bs!1678162 (and d!2061328 d!2061194)))

(assert (=> bs!1678162 (= lambda!365836 lambda!365819)))

(declare-fun bs!1678163 () Bool)

(assert (= bs!1678163 (and d!2061328 d!2061002)))

(assert (=> bs!1678163 (= lambda!365836 lambda!365776)))

(declare-fun bs!1678164 () Bool)

(assert (= bs!1678164 (and d!2061328 d!2061238)))

(assert (=> bs!1678164 (= lambda!365836 lambda!365821)))

(declare-fun bs!1678165 () Bool)

(assert (= bs!1678165 (and d!2061328 d!2061240)))

(assert (=> bs!1678165 (= lambda!365836 lambda!365822)))

(assert (=> d!2061328 (= (inv!84359 setElem!44852) (forall!15616 (exprs!6329 setElem!44852) lambda!365836))))

(declare-fun bs!1678166 () Bool)

(assert (= bs!1678166 d!2061328))

(declare-fun m!7351952 () Bool)

(assert (=> bs!1678166 m!7351952))

(assert (=> setNonEmpty!44852 d!2061328))

(declare-fun b!6569900 () Bool)

(declare-fun e!3976747 () Bool)

(declare-fun lt!2408418 () Bool)

(declare-fun call!571672 () Bool)

(assert (=> b!6569900 (= e!3976747 (= lt!2408418 call!571672))))

(declare-fun b!6569901 () Bool)

(declare-fun res!2696196 () Bool)

(declare-fun e!3976749 () Bool)

(assert (=> b!6569901 (=> res!2696196 e!3976749)))

(assert (=> b!6569901 (= res!2696196 (not (isEmpty!37760 (tail!12426 (tail!12426 s!2326)))))))

(declare-fun b!6569902 () Bool)

(assert (=> b!6569902 (= e!3976749 (not (= (head!13340 (tail!12426 s!2326)) (c!1207368 (derivativeStep!5128 lt!2408266 (head!13340 s!2326))))))))

(declare-fun bm!571667 () Bool)

(assert (=> bm!571667 (= call!571672 (isEmpty!37760 (tail!12426 s!2326)))))

(declare-fun b!6569904 () Bool)

(declare-fun e!3976745 () Bool)

(assert (=> b!6569904 (= e!3976747 e!3976745)))

(declare-fun c!1207734 () Bool)

(assert (=> b!6569904 (= c!1207734 ((_ is EmptyLang!16445) (derivativeStep!5128 lt!2408266 (head!13340 s!2326))))))

(declare-fun b!6569905 () Bool)

(declare-fun e!3976748 () Bool)

(assert (=> b!6569905 (= e!3976748 (nullable!6438 (derivativeStep!5128 lt!2408266 (head!13340 s!2326))))))

(declare-fun b!6569906 () Bool)

(declare-fun res!2696197 () Bool)

(declare-fun e!3976746 () Bool)

(assert (=> b!6569906 (=> res!2696197 e!3976746)))

(declare-fun e!3976744 () Bool)

(assert (=> b!6569906 (= res!2696197 e!3976744)))

(declare-fun res!2696194 () Bool)

(assert (=> b!6569906 (=> (not res!2696194) (not e!3976744))))

(assert (=> b!6569906 (= res!2696194 lt!2408418)))

(declare-fun b!6569907 () Bool)

(assert (=> b!6569907 (= e!3976745 (not lt!2408418))))

(declare-fun b!6569908 () Bool)

(declare-fun e!3976750 () Bool)

(assert (=> b!6569908 (= e!3976750 e!3976749)))

(declare-fun res!2696198 () Bool)

(assert (=> b!6569908 (=> res!2696198 e!3976749)))

(assert (=> b!6569908 (= res!2696198 call!571672)))

(declare-fun b!6569909 () Bool)

(declare-fun res!2696200 () Bool)

(assert (=> b!6569909 (=> res!2696200 e!3976746)))

(assert (=> b!6569909 (= res!2696200 (not ((_ is ElementMatch!16445) (derivativeStep!5128 lt!2408266 (head!13340 s!2326)))))))

(assert (=> b!6569909 (= e!3976745 e!3976746)))

(declare-fun b!6569910 () Bool)

(assert (=> b!6569910 (= e!3976748 (matchR!8628 (derivativeStep!5128 (derivativeStep!5128 lt!2408266 (head!13340 s!2326)) (head!13340 (tail!12426 s!2326))) (tail!12426 (tail!12426 s!2326))))))

(declare-fun b!6569911 () Bool)

(declare-fun res!2696199 () Bool)

(assert (=> b!6569911 (=> (not res!2696199) (not e!3976744))))

(assert (=> b!6569911 (= res!2696199 (not call!571672))))

(declare-fun b!6569903 () Bool)

(declare-fun res!2696193 () Bool)

(assert (=> b!6569903 (=> (not res!2696193) (not e!3976744))))

(assert (=> b!6569903 (= res!2696193 (isEmpty!37760 (tail!12426 (tail!12426 s!2326))))))

(declare-fun d!2061330 () Bool)

(assert (=> d!2061330 e!3976747))

(declare-fun c!1207736 () Bool)

(assert (=> d!2061330 (= c!1207736 ((_ is EmptyExpr!16445) (derivativeStep!5128 lt!2408266 (head!13340 s!2326))))))

(assert (=> d!2061330 (= lt!2408418 e!3976748)))

(declare-fun c!1207735 () Bool)

(assert (=> d!2061330 (= c!1207735 (isEmpty!37760 (tail!12426 s!2326)))))

(assert (=> d!2061330 (validRegex!8181 (derivativeStep!5128 lt!2408266 (head!13340 s!2326)))))

(assert (=> d!2061330 (= (matchR!8628 (derivativeStep!5128 lt!2408266 (head!13340 s!2326)) (tail!12426 s!2326)) lt!2408418)))

(declare-fun b!6569912 () Bool)

(assert (=> b!6569912 (= e!3976746 e!3976750)))

(declare-fun res!2696195 () Bool)

(assert (=> b!6569912 (=> (not res!2696195) (not e!3976750))))

(assert (=> b!6569912 (= res!2696195 (not lt!2408418))))

(declare-fun b!6569913 () Bool)

(assert (=> b!6569913 (= e!3976744 (= (head!13340 (tail!12426 s!2326)) (c!1207368 (derivativeStep!5128 lt!2408266 (head!13340 s!2326)))))))

(assert (= (and d!2061330 c!1207735) b!6569905))

(assert (= (and d!2061330 (not c!1207735)) b!6569910))

(assert (= (and d!2061330 c!1207736) b!6569900))

(assert (= (and d!2061330 (not c!1207736)) b!6569904))

(assert (= (and b!6569904 c!1207734) b!6569907))

(assert (= (and b!6569904 (not c!1207734)) b!6569909))

(assert (= (and b!6569909 (not res!2696200)) b!6569906))

(assert (= (and b!6569906 res!2696194) b!6569911))

(assert (= (and b!6569911 res!2696199) b!6569903))

(assert (= (and b!6569903 res!2696193) b!6569913))

(assert (= (and b!6569906 (not res!2696197)) b!6569912))

(assert (= (and b!6569912 res!2696195) b!6569908))

(assert (= (and b!6569908 (not res!2696198)) b!6569901))

(assert (= (and b!6569901 (not res!2696196)) b!6569902))

(assert (= (or b!6569900 b!6569911 b!6569908) bm!571667))

(assert (=> b!6569901 m!7350894))

(assert (=> b!6569901 m!7351596))

(assert (=> b!6569901 m!7351596))

(assert (=> b!6569901 m!7351598))

(assert (=> b!6569910 m!7350894))

(assert (=> b!6569910 m!7351600))

(assert (=> b!6569910 m!7350900))

(assert (=> b!6569910 m!7351600))

(declare-fun m!7351954 () Bool)

(assert (=> b!6569910 m!7351954))

(assert (=> b!6569910 m!7350894))

(assert (=> b!6569910 m!7351596))

(assert (=> b!6569910 m!7351954))

(assert (=> b!6569910 m!7351596))

(declare-fun m!7351956 () Bool)

(assert (=> b!6569910 m!7351956))

(assert (=> b!6569905 m!7350900))

(declare-fun m!7351958 () Bool)

(assert (=> b!6569905 m!7351958))

(assert (=> b!6569902 m!7350894))

(assert (=> b!6569902 m!7351600))

(assert (=> d!2061330 m!7350894))

(assert (=> d!2061330 m!7350896))

(assert (=> d!2061330 m!7350900))

(declare-fun m!7351960 () Bool)

(assert (=> d!2061330 m!7351960))

(assert (=> b!6569903 m!7350894))

(assert (=> b!6569903 m!7351596))

(assert (=> b!6569903 m!7351596))

(assert (=> b!6569903 m!7351598))

(assert (=> bm!571667 m!7350894))

(assert (=> bm!571667 m!7350896))

(assert (=> b!6569913 m!7350894))

(assert (=> b!6569913 m!7351600))

(assert (=> b!6568717 d!2061330))

(declare-fun b!6569914 () Bool)

(declare-fun e!3976752 () Regex!16445)

(declare-fun call!571676 () Regex!16445)

(assert (=> b!6569914 (= e!3976752 (Union!16445 (Concat!25290 call!571676 (regTwo!33402 lt!2408266)) EmptyLang!16445))))

(declare-fun b!6569915 () Bool)

(declare-fun e!3976753 () Regex!16445)

(assert (=> b!6569915 (= e!3976753 EmptyLang!16445)))

(declare-fun b!6569916 () Bool)

(declare-fun e!3976751 () Regex!16445)

(assert (=> b!6569916 (= e!3976753 e!3976751)))

(declare-fun c!1207741 () Bool)

(assert (=> b!6569916 (= c!1207741 ((_ is ElementMatch!16445) lt!2408266))))

(declare-fun b!6569917 () Bool)

(assert (=> b!6569917 (= e!3976751 (ite (= (head!13340 s!2326) (c!1207368 lt!2408266)) EmptyExpr!16445 EmptyLang!16445))))

(declare-fun b!6569918 () Bool)

(declare-fun e!3976754 () Regex!16445)

(declare-fun call!571674 () Regex!16445)

(assert (=> b!6569918 (= e!3976754 (Concat!25290 call!571674 lt!2408266))))

(declare-fun bm!571668 () Bool)

(declare-fun call!571673 () Regex!16445)

(assert (=> bm!571668 (= call!571674 call!571673)))

(declare-fun b!6569919 () Bool)

(declare-fun c!1207738 () Bool)

(assert (=> b!6569919 (= c!1207738 ((_ is Union!16445) lt!2408266))))

(declare-fun e!3976755 () Regex!16445)

(assert (=> b!6569919 (= e!3976751 e!3976755)))

(declare-fun call!571675 () Regex!16445)

(declare-fun b!6569920 () Bool)

(assert (=> b!6569920 (= e!3976752 (Union!16445 (Concat!25290 call!571675 (regTwo!33402 lt!2408266)) call!571676))))

(declare-fun bm!571670 () Bool)

(assert (=> bm!571670 (= call!571675 (derivativeStep!5128 (ite c!1207738 (regOne!33403 lt!2408266) (regOne!33402 lt!2408266)) (head!13340 s!2326)))))

(declare-fun b!6569921 () Bool)

(declare-fun c!1207737 () Bool)

(assert (=> b!6569921 (= c!1207737 (nullable!6438 (regOne!33402 lt!2408266)))))

(assert (=> b!6569921 (= e!3976754 e!3976752)))

(declare-fun b!6569922 () Bool)

(assert (=> b!6569922 (= e!3976755 (Union!16445 call!571675 call!571673))))

(declare-fun b!6569923 () Bool)

(assert (=> b!6569923 (= e!3976755 e!3976754)))

(declare-fun c!1207740 () Bool)

(assert (=> b!6569923 (= c!1207740 ((_ is Star!16445) lt!2408266))))

(declare-fun bm!571671 () Bool)

(assert (=> bm!571671 (= call!571676 call!571674)))

(declare-fun d!2061332 () Bool)

(declare-fun lt!2408419 () Regex!16445)

(assert (=> d!2061332 (validRegex!8181 lt!2408419)))

(assert (=> d!2061332 (= lt!2408419 e!3976753)))

(declare-fun c!1207739 () Bool)

(assert (=> d!2061332 (= c!1207739 (or ((_ is EmptyExpr!16445) lt!2408266) ((_ is EmptyLang!16445) lt!2408266)))))

(assert (=> d!2061332 (validRegex!8181 lt!2408266)))

(assert (=> d!2061332 (= (derivativeStep!5128 lt!2408266 (head!13340 s!2326)) lt!2408419)))

(declare-fun bm!571669 () Bool)

(assert (=> bm!571669 (= call!571673 (derivativeStep!5128 (ite c!1207738 (regTwo!33403 lt!2408266) (ite c!1207740 (reg!16774 lt!2408266) (ite c!1207737 (regTwo!33402 lt!2408266) (regOne!33402 lt!2408266)))) (head!13340 s!2326)))))

(assert (= (and d!2061332 c!1207739) b!6569915))

(assert (= (and d!2061332 (not c!1207739)) b!6569916))

(assert (= (and b!6569916 c!1207741) b!6569917))

(assert (= (and b!6569916 (not c!1207741)) b!6569919))

(assert (= (and b!6569919 c!1207738) b!6569922))

(assert (= (and b!6569919 (not c!1207738)) b!6569923))

(assert (= (and b!6569923 c!1207740) b!6569918))

(assert (= (and b!6569923 (not c!1207740)) b!6569921))

(assert (= (and b!6569921 c!1207737) b!6569920))

(assert (= (and b!6569921 (not c!1207737)) b!6569914))

(assert (= (or b!6569920 b!6569914) bm!571671))

(assert (= (or b!6569918 bm!571671) bm!571668))

(assert (= (or b!6569922 bm!571668) bm!571669))

(assert (= (or b!6569922 b!6569920) bm!571670))

(assert (=> bm!571670 m!7350898))

(declare-fun m!7351962 () Bool)

(assert (=> bm!571670 m!7351962))

(declare-fun m!7351964 () Bool)

(assert (=> b!6569921 m!7351964))

(declare-fun m!7351966 () Bool)

(assert (=> d!2061332 m!7351966))

(assert (=> d!2061332 m!7350908))

(assert (=> bm!571669 m!7350898))

(declare-fun m!7351968 () Bool)

(assert (=> bm!571669 m!7351968))

(assert (=> b!6568717 d!2061332))

(assert (=> b!6568717 d!2061110))

(assert (=> b!6568717 d!2061176))

(declare-fun bm!571672 () Bool)

(declare-fun call!571679 () (InoxSet Context!11658))

(declare-fun call!571680 () (InoxSet Context!11658))

(assert (=> bm!571672 (= call!571679 call!571680)))

(declare-fun call!571677 () (InoxSet Context!11658))

(declare-fun c!1207746 () Bool)

(declare-fun bm!571673 () Bool)

(declare-fun call!571681 () List!65634)

(assert (=> bm!571673 (= call!571677 (derivationStepZipperDown!1693 (ite c!1207746 (regTwo!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))) (ite c!1207746 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))) (Context!11659 call!571681)) (h!71960 s!2326)))))

(declare-fun b!6569924 () Bool)

(declare-fun e!3976757 () (InoxSet Context!11658))

(assert (=> b!6569924 (= e!3976757 (store ((as const (Array Context!11658 Bool)) false) (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))) true))))

(declare-fun bm!571674 () Bool)

(declare-fun call!571678 () List!65634)

(assert (=> bm!571674 (= call!571678 call!571681)))

(declare-fun b!6569926 () Bool)

(declare-fun e!3976758 () (InoxSet Context!11658))

(declare-fun e!3976761 () (InoxSet Context!11658))

(assert (=> b!6569926 (= e!3976758 e!3976761)))

(declare-fun c!1207745 () Bool)

(assert (=> b!6569926 (= c!1207745 ((_ is Concat!25290) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun b!6569927 () Bool)

(declare-fun e!3976760 () (InoxSet Context!11658))

(assert (=> b!6569927 (= e!3976760 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569928 () Bool)

(declare-fun e!3976756 () Bool)

(assert (=> b!6569928 (= e!3976756 (nullable!6438 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun bm!571675 () Bool)

(declare-fun call!571682 () (InoxSet Context!11658))

(declare-fun c!1207743 () Bool)

(assert (=> bm!571675 (= call!571682 (derivationStepZipperDown!1693 (ite c!1207746 (regOne!33403 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207743 (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (ite c!1207745 (regOne!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (reg!16774 (h!71958 (exprs!6329 (h!71959 zl!343))))))) (ite (or c!1207746 c!1207743) (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))) (Context!11659 call!571678)) (h!71960 s!2326)))))

(declare-fun b!6569929 () Bool)

(assert (=> b!6569929 (= e!3976758 ((_ map or) call!571677 call!571680))))

(declare-fun b!6569930 () Bool)

(declare-fun c!1207742 () Bool)

(assert (=> b!6569930 (= c!1207742 ((_ is Star!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6569930 (= e!3976761 e!3976760)))

(declare-fun b!6569931 () Bool)

(declare-fun e!3976759 () (InoxSet Context!11658))

(assert (=> b!6569931 (= e!3976759 ((_ map or) call!571682 call!571677))))

(declare-fun bm!571676 () Bool)

(assert (=> bm!571676 (= call!571681 ($colon$colon!2286 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343))))) (ite (or c!1207743 c!1207745) (regTwo!33402 (h!71958 (exprs!6329 (h!71959 zl!343)))) (h!71958 (exprs!6329 (h!71959 zl!343))))))))

(declare-fun b!6569925 () Bool)

(assert (=> b!6569925 (= e!3976757 e!3976759)))

(assert (=> b!6569925 (= c!1207746 ((_ is Union!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun d!2061334 () Bool)

(declare-fun c!1207744 () Bool)

(assert (=> d!2061334 (= c!1207744 (and ((_ is ElementMatch!16445) (h!71958 (exprs!6329 (h!71959 zl!343)))) (= (c!1207368 (h!71958 (exprs!6329 (h!71959 zl!343)))) (h!71960 s!2326))))))

(assert (=> d!2061334 (= (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (h!71959 zl!343))) (Context!11659 (t!379278 (exprs!6329 (h!71959 zl!343)))) (h!71960 s!2326)) e!3976757)))

(declare-fun b!6569932 () Bool)

(assert (=> b!6569932 (= e!3976761 call!571679)))

(declare-fun b!6569933 () Bool)

(assert (=> b!6569933 (= e!3976760 call!571679)))

(declare-fun b!6569934 () Bool)

(assert (=> b!6569934 (= c!1207743 e!3976756)))

(declare-fun res!2696201 () Bool)

(assert (=> b!6569934 (=> (not res!2696201) (not e!3976756))))

(assert (=> b!6569934 (= res!2696201 ((_ is Concat!25290) (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> b!6569934 (= e!3976759 e!3976758)))

(declare-fun bm!571677 () Bool)

(assert (=> bm!571677 (= call!571680 call!571682)))

(assert (= (and d!2061334 c!1207744) b!6569924))

(assert (= (and d!2061334 (not c!1207744)) b!6569925))

(assert (= (and b!6569925 c!1207746) b!6569931))

(assert (= (and b!6569925 (not c!1207746)) b!6569934))

(assert (= (and b!6569934 res!2696201) b!6569928))

(assert (= (and b!6569934 c!1207743) b!6569929))

(assert (= (and b!6569934 (not c!1207743)) b!6569926))

(assert (= (and b!6569926 c!1207745) b!6569932))

(assert (= (and b!6569926 (not c!1207745)) b!6569930))

(assert (= (and b!6569930 c!1207742) b!6569933))

(assert (= (and b!6569930 (not c!1207742)) b!6569927))

(assert (= (or b!6569932 b!6569933) bm!571674))

(assert (= (or b!6569932 b!6569933) bm!571672))

(assert (= (or b!6569929 bm!571674) bm!571676))

(assert (= (or b!6569929 bm!571672) bm!571677))

(assert (= (or b!6569931 b!6569929) bm!571673))

(assert (= (or b!6569931 bm!571677) bm!571675))

(declare-fun m!7351970 () Bool)

(assert (=> bm!571676 m!7351970))

(declare-fun m!7351972 () Bool)

(assert (=> b!6569924 m!7351972))

(declare-fun m!7351974 () Bool)

(assert (=> bm!571675 m!7351974))

(declare-fun m!7351976 () Bool)

(assert (=> bm!571673 m!7351976))

(assert (=> b!6569928 m!7351236))

(assert (=> bm!571539 d!2061334))

(declare-fun d!2061336 () Bool)

(declare-fun c!1207747 () Bool)

(assert (=> d!2061336 (= c!1207747 (isEmpty!37760 (tail!12426 (t!379280 s!2326))))))

(declare-fun e!3976762 () Bool)

(assert (=> d!2061336 (= (matchZipper!2457 (derivationStepZipper!2411 lt!2408280 (head!13340 (t!379280 s!2326))) (tail!12426 (t!379280 s!2326))) e!3976762)))

(declare-fun b!6569935 () Bool)

(assert (=> b!6569935 (= e!3976762 (nullableZipper!2190 (derivationStepZipper!2411 lt!2408280 (head!13340 (t!379280 s!2326)))))))

(declare-fun b!6569936 () Bool)

(assert (=> b!6569936 (= e!3976762 (matchZipper!2457 (derivationStepZipper!2411 (derivationStepZipper!2411 lt!2408280 (head!13340 (t!379280 s!2326))) (head!13340 (tail!12426 (t!379280 s!2326)))) (tail!12426 (tail!12426 (t!379280 s!2326)))))))

(assert (= (and d!2061336 c!1207747) b!6569935))

(assert (= (and d!2061336 (not c!1207747)) b!6569936))

(assert (=> d!2061336 m!7350970))

(assert (=> d!2061336 m!7351468))

(assert (=> b!6569935 m!7350968))

(declare-fun m!7351978 () Bool)

(assert (=> b!6569935 m!7351978))

(assert (=> b!6569936 m!7350970))

(assert (=> b!6569936 m!7351472))

(assert (=> b!6569936 m!7350968))

(assert (=> b!6569936 m!7351472))

(declare-fun m!7351980 () Bool)

(assert (=> b!6569936 m!7351980))

(assert (=> b!6569936 m!7350970))

(assert (=> b!6569936 m!7351476))

(assert (=> b!6569936 m!7351980))

(assert (=> b!6569936 m!7351476))

(declare-fun m!7351982 () Bool)

(assert (=> b!6569936 m!7351982))

(assert (=> b!6568811 d!2061336))

(declare-fun bs!1678167 () Bool)

(declare-fun d!2061338 () Bool)

(assert (= bs!1678167 (and d!2061338 d!2061234)))

(declare-fun lambda!365837 () Int)

(assert (=> bs!1678167 (= (= (head!13340 (t!379280 s!2326)) (head!13340 s!2326)) (= lambda!365837 lambda!365820))))

(declare-fun bs!1678168 () Bool)

(assert (= bs!1678168 (and d!2061338 d!2061152)))

(assert (=> bs!1678168 (= lambda!365837 lambda!365811)))

(declare-fun bs!1678169 () Bool)

(assert (= bs!1678169 (and d!2061338 d!2061162)))

(assert (=> bs!1678169 (= lambda!365837 lambda!365812)))

(declare-fun bs!1678170 () Bool)

(assert (= bs!1678170 (and d!2061338 d!2060970)))

(assert (=> bs!1678170 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365837 lambda!365764))))

(declare-fun bs!1678171 () Bool)

(assert (= bs!1678171 (and d!2061338 d!2061130)))

(assert (=> bs!1678171 (= lambda!365837 lambda!365807)))

(declare-fun bs!1678172 () Bool)

(assert (= bs!1678172 (and d!2061338 b!6568635)))

(assert (=> bs!1678172 (= (= (head!13340 (t!379280 s!2326)) (h!71960 s!2326)) (= lambda!365837 lambda!365735))))

(assert (=> d!2061338 true))

(assert (=> d!2061338 (= (derivationStepZipper!2411 lt!2408280 (head!13340 (t!379280 s!2326))) (flatMap!1950 lt!2408280 lambda!365837))))

(declare-fun bs!1678173 () Bool)

(assert (= bs!1678173 d!2061338))

(declare-fun m!7351984 () Bool)

(assert (=> bs!1678173 m!7351984))

(assert (=> b!6568811 d!2061338))

(assert (=> b!6568811 d!2061132))

(assert (=> b!6568811 d!2061134))

(declare-fun b!6569937 () Bool)

(declare-fun e!3976764 () Bool)

(declare-fun call!571685 () Bool)

(assert (=> b!6569937 (= e!3976764 call!571685)))

(declare-fun bm!571678 () Bool)

(declare-fun call!571684 () Bool)

(declare-fun c!1207748 () Bool)

(assert (=> bm!571678 (= call!571684 (validRegex!8181 (ite c!1207748 (regOne!33403 lt!2408331) (regOne!33402 lt!2408331))))))

(declare-fun b!6569939 () Bool)

(declare-fun e!3976769 () Bool)

(declare-fun e!3976763 () Bool)

(assert (=> b!6569939 (= e!3976769 e!3976763)))

(assert (=> b!6569939 (= c!1207748 ((_ is Union!16445) lt!2408331))))

(declare-fun b!6569940 () Bool)

(declare-fun e!3976767 () Bool)

(declare-fun call!571683 () Bool)

(assert (=> b!6569940 (= e!3976767 call!571683)))

(declare-fun b!6569941 () Bool)

(declare-fun e!3976766 () Bool)

(assert (=> b!6569941 (= e!3976766 call!571685)))

(declare-fun b!6569942 () Bool)

(assert (=> b!6569942 (= e!3976769 e!3976767)))

(declare-fun res!2696206 () Bool)

(assert (=> b!6569942 (= res!2696206 (not (nullable!6438 (reg!16774 lt!2408331))))))

(assert (=> b!6569942 (=> (not res!2696206) (not e!3976767))))

(declare-fun bm!571679 () Bool)

(declare-fun c!1207749 () Bool)

(assert (=> bm!571679 (= call!571683 (validRegex!8181 (ite c!1207749 (reg!16774 lt!2408331) (ite c!1207748 (regTwo!33403 lt!2408331) (regTwo!33402 lt!2408331)))))))

(declare-fun b!6569938 () Bool)

(declare-fun res!2696202 () Bool)

(assert (=> b!6569938 (=> (not res!2696202) (not e!3976766))))

(assert (=> b!6569938 (= res!2696202 call!571684)))

(assert (=> b!6569938 (= e!3976763 e!3976766)))

(declare-fun d!2061340 () Bool)

(declare-fun res!2696203 () Bool)

(declare-fun e!3976765 () Bool)

(assert (=> d!2061340 (=> res!2696203 e!3976765)))

(assert (=> d!2061340 (= res!2696203 ((_ is ElementMatch!16445) lt!2408331))))

(assert (=> d!2061340 (= (validRegex!8181 lt!2408331) e!3976765)))

(declare-fun b!6569943 () Bool)

(declare-fun res!2696205 () Bool)

(declare-fun e!3976768 () Bool)

(assert (=> b!6569943 (=> res!2696205 e!3976768)))

(assert (=> b!6569943 (= res!2696205 (not ((_ is Concat!25290) lt!2408331)))))

(assert (=> b!6569943 (= e!3976763 e!3976768)))

(declare-fun b!6569944 () Bool)

(assert (=> b!6569944 (= e!3976765 e!3976769)))

(assert (=> b!6569944 (= c!1207749 ((_ is Star!16445) lt!2408331))))

(declare-fun bm!571680 () Bool)

(assert (=> bm!571680 (= call!571685 call!571683)))

(declare-fun b!6569945 () Bool)

(assert (=> b!6569945 (= e!3976768 e!3976764)))

(declare-fun res!2696204 () Bool)

(assert (=> b!6569945 (=> (not res!2696204) (not e!3976764))))

(assert (=> b!6569945 (= res!2696204 call!571684)))

(assert (= (and d!2061340 (not res!2696203)) b!6569944))

(assert (= (and b!6569944 c!1207749) b!6569942))

(assert (= (and b!6569944 (not c!1207749)) b!6569939))

(assert (= (and b!6569942 res!2696206) b!6569940))

(assert (= (and b!6569939 c!1207748) b!6569938))

(assert (= (and b!6569939 (not c!1207748)) b!6569943))

(assert (= (and b!6569938 res!2696202) b!6569941))

(assert (= (and b!6569943 (not res!2696205)) b!6569945))

(assert (= (and b!6569945 res!2696204) b!6569937))

(assert (= (or b!6569941 b!6569937) bm!571680))

(assert (= (or b!6569938 b!6569945) bm!571678))

(assert (= (or b!6569940 bm!571680) bm!571679))

(declare-fun m!7351986 () Bool)

(assert (=> bm!571678 m!7351986))

(declare-fun m!7351988 () Bool)

(assert (=> b!6569942 m!7351988))

(declare-fun m!7351990 () Bool)

(assert (=> bm!571679 m!7351990))

(assert (=> d!2060940 d!2061340))

(declare-fun bs!1678174 () Bool)

(declare-fun d!2061342 () Bool)

(assert (= bs!1678174 (and d!2061342 d!2060886)))

(declare-fun lambda!365838 () Int)

(assert (=> bs!1678174 (= lambda!365838 lambda!365738)))

(declare-fun bs!1678175 () Bool)

(assert (= bs!1678175 (and d!2061342 d!2060990)))

(assert (=> bs!1678175 (= lambda!365838 lambda!365769)))

(declare-fun bs!1678176 () Bool)

(assert (= bs!1678176 (and d!2061342 d!2060998)))

(assert (=> bs!1678176 (= lambda!365838 lambda!365773)))

(declare-fun bs!1678177 () Bool)

(assert (= bs!1678177 (and d!2061342 d!2061282)))

(assert (=> bs!1678177 (= lambda!365838 lambda!365831)))

(declare-fun bs!1678178 () Bool)

(assert (= bs!1678178 (and d!2061342 d!2061320)))

(assert (=> bs!1678178 (= lambda!365838 lambda!365835)))

(declare-fun bs!1678179 () Bool)

(assert (= bs!1678179 (and d!2061342 d!2061318)))

(assert (=> bs!1678179 (= lambda!365838 lambda!365834)))

(declare-fun bs!1678180 () Bool)

(assert (= bs!1678180 (and d!2061342 d!2061284)))

(assert (=> bs!1678180 (= lambda!365838 lambda!365832)))

(declare-fun bs!1678181 () Bool)

(assert (= bs!1678181 (and d!2061342 d!2060992)))

(assert (=> bs!1678181 (= lambda!365838 lambda!365772)))

(declare-fun bs!1678182 () Bool)

(assert (= bs!1678182 (and d!2061342 d!2061118)))

(assert (=> bs!1678182 (= lambda!365838 lambda!365804)))

(declare-fun bs!1678183 () Bool)

(assert (= bs!1678183 (and d!2061342 d!2061194)))

(assert (=> bs!1678183 (= lambda!365838 lambda!365819)))

(declare-fun bs!1678184 () Bool)

(assert (= bs!1678184 (and d!2061342 d!2061002)))

(assert (=> bs!1678184 (= lambda!365838 lambda!365776)))

(declare-fun bs!1678185 () Bool)

(assert (= bs!1678185 (and d!2061342 d!2061238)))

(assert (=> bs!1678185 (= lambda!365838 lambda!365821)))

(declare-fun bs!1678186 () Bool)

(assert (= bs!1678186 (and d!2061342 d!2061240)))

(assert (=> bs!1678186 (= lambda!365838 lambda!365822)))

(declare-fun bs!1678187 () Bool)

(assert (= bs!1678187 (and d!2061342 d!2061328)))

(assert (=> bs!1678187 (= lambda!365838 lambda!365836)))

(declare-fun bs!1678188 () Bool)

(assert (= bs!1678188 (and d!2061342 d!2061006)))

(assert (=> bs!1678188 (= lambda!365838 lambda!365783)))

(declare-fun b!6569946 () Bool)

(declare-fun e!3976771 () Regex!16445)

(declare-fun e!3976773 () Regex!16445)

(assert (=> b!6569946 (= e!3976771 e!3976773)))

(declare-fun c!1207750 () Bool)

(assert (=> b!6569946 (= c!1207750 ((_ is Cons!65510) (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))))))

(declare-fun b!6569947 () Bool)

(assert (=> b!6569947 (= e!3976773 EmptyLang!16445)))

(declare-fun b!6569948 () Bool)

(declare-fun e!3976772 () Bool)

(declare-fun e!3976770 () Bool)

(assert (=> b!6569948 (= e!3976772 e!3976770)))

(declare-fun c!1207753 () Bool)

(assert (=> b!6569948 (= c!1207753 (isEmpty!37757 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))))))

(declare-fun b!6569949 () Bool)

(declare-fun lt!2408420 () Regex!16445)

(assert (=> b!6569949 (= e!3976770 (isEmptyLang!1832 lt!2408420))))

(declare-fun b!6569950 () Bool)

(declare-fun e!3976774 () Bool)

(assert (=> b!6569950 (= e!3976770 e!3976774)))

(declare-fun c!1207752 () Bool)

(assert (=> b!6569950 (= c!1207752 (isEmpty!37757 (tail!12427 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511)))))))

(assert (=> d!2061342 e!3976772))

(declare-fun res!2696207 () Bool)

(assert (=> d!2061342 (=> (not res!2696207) (not e!3976772))))

(assert (=> d!2061342 (= res!2696207 (validRegex!8181 lt!2408420))))

(assert (=> d!2061342 (= lt!2408420 e!3976771)))

(declare-fun c!1207751 () Bool)

(declare-fun e!3976775 () Bool)

(assert (=> d!2061342 (= c!1207751 e!3976775)))

(declare-fun res!2696208 () Bool)

(assert (=> d!2061342 (=> (not res!2696208) (not e!3976775))))

(assert (=> d!2061342 (= res!2696208 ((_ is Cons!65510) (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))))))

(assert (=> d!2061342 (forall!15616 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511)) lambda!365838)))

(assert (=> d!2061342 (= (generalisedUnion!2289 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))) lt!2408420)))

(declare-fun b!6569951 () Bool)

(assert (=> b!6569951 (= e!3976774 (= lt!2408420 (head!13342 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511)))))))

(declare-fun b!6569952 () Bool)

(assert (=> b!6569952 (= e!3976774 (isUnion!1262 lt!2408420))))

(declare-fun b!6569953 () Bool)

(assert (=> b!6569953 (= e!3976771 (h!71958 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))))))

(declare-fun b!6569954 () Bool)

(assert (=> b!6569954 (= e!3976773 (Union!16445 (h!71958 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))) (generalisedUnion!2289 (t!379278 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511))))))))

(declare-fun b!6569955 () Bool)

(assert (=> b!6569955 (= e!3976775 (isEmpty!37757 (t!379278 (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511)))))))

(assert (= (and d!2061342 res!2696208) b!6569955))

(assert (= (and d!2061342 c!1207751) b!6569953))

(assert (= (and d!2061342 (not c!1207751)) b!6569946))

(assert (= (and b!6569946 c!1207750) b!6569954))

(assert (= (and b!6569946 (not c!1207750)) b!6569947))

(assert (= (and d!2061342 res!2696207) b!6569948))

(assert (= (and b!6569948 c!1207753) b!6569949))

(assert (= (and b!6569948 (not c!1207753)) b!6569950))

(assert (= (and b!6569950 c!1207752) b!6569951))

(assert (= (and b!6569950 (not c!1207752)) b!6569952))

(declare-fun m!7351992 () Bool)

(assert (=> b!6569955 m!7351992))

(declare-fun m!7351994 () Bool)

(assert (=> b!6569954 m!7351994))

(declare-fun m!7351996 () Bool)

(assert (=> b!6569952 m!7351996))

(declare-fun m!7351998 () Bool)

(assert (=> b!6569949 m!7351998))

(assert (=> b!6569948 m!7351028))

(declare-fun m!7352000 () Bool)

(assert (=> b!6569948 m!7352000))

(assert (=> b!6569951 m!7351028))

(declare-fun m!7352002 () Bool)

(assert (=> b!6569951 m!7352002))

(assert (=> b!6569950 m!7351028))

(declare-fun m!7352004 () Bool)

(assert (=> b!6569950 m!7352004))

(assert (=> b!6569950 m!7352004))

(declare-fun m!7352006 () Bool)

(assert (=> b!6569950 m!7352006))

(declare-fun m!7352008 () Bool)

(assert (=> d!2061342 m!7352008))

(assert (=> d!2061342 m!7351028))

(declare-fun m!7352010 () Bool)

(assert (=> d!2061342 m!7352010))

(assert (=> d!2060940 d!2061342))

(declare-fun bs!1678189 () Bool)

(declare-fun d!2061344 () Bool)

(assert (= bs!1678189 (and d!2061344 d!2060886)))

(declare-fun lambda!365839 () Int)

(assert (=> bs!1678189 (= lambda!365839 lambda!365738)))

(declare-fun bs!1678190 () Bool)

(assert (= bs!1678190 (and d!2061344 d!2060990)))

(assert (=> bs!1678190 (= lambda!365839 lambda!365769)))

(declare-fun bs!1678191 () Bool)

(assert (= bs!1678191 (and d!2061344 d!2060998)))

(assert (=> bs!1678191 (= lambda!365839 lambda!365773)))

(declare-fun bs!1678192 () Bool)

(assert (= bs!1678192 (and d!2061344 d!2061282)))

(assert (=> bs!1678192 (= lambda!365839 lambda!365831)))

(declare-fun bs!1678193 () Bool)

(assert (= bs!1678193 (and d!2061344 d!2061320)))

(assert (=> bs!1678193 (= lambda!365839 lambda!365835)))

(declare-fun bs!1678194 () Bool)

(assert (= bs!1678194 (and d!2061344 d!2061318)))

(assert (=> bs!1678194 (= lambda!365839 lambda!365834)))

(declare-fun bs!1678195 () Bool)

(assert (= bs!1678195 (and d!2061344 d!2061284)))

(assert (=> bs!1678195 (= lambda!365839 lambda!365832)))

(declare-fun bs!1678196 () Bool)

(assert (= bs!1678196 (and d!2061344 d!2060992)))

(assert (=> bs!1678196 (= lambda!365839 lambda!365772)))

(declare-fun bs!1678197 () Bool)

(assert (= bs!1678197 (and d!2061344 d!2061118)))

(assert (=> bs!1678197 (= lambda!365839 lambda!365804)))

(declare-fun bs!1678198 () Bool)

(assert (= bs!1678198 (and d!2061344 d!2061194)))

(assert (=> bs!1678198 (= lambda!365839 lambda!365819)))

(declare-fun bs!1678199 () Bool)

(assert (= bs!1678199 (and d!2061344 d!2061002)))

(assert (=> bs!1678199 (= lambda!365839 lambda!365776)))

(declare-fun bs!1678200 () Bool)

(assert (= bs!1678200 (and d!2061344 d!2061238)))

(assert (=> bs!1678200 (= lambda!365839 lambda!365821)))

(declare-fun bs!1678201 () Bool)

(assert (= bs!1678201 (and d!2061344 d!2061342)))

(assert (=> bs!1678201 (= lambda!365839 lambda!365838)))

(declare-fun bs!1678202 () Bool)

(assert (= bs!1678202 (and d!2061344 d!2061240)))

(assert (=> bs!1678202 (= lambda!365839 lambda!365822)))

(declare-fun bs!1678203 () Bool)

(assert (= bs!1678203 (and d!2061344 d!2061328)))

(assert (=> bs!1678203 (= lambda!365839 lambda!365836)))

(declare-fun bs!1678204 () Bool)

(assert (= bs!1678204 (and d!2061344 d!2061006)))

(assert (=> bs!1678204 (= lambda!365839 lambda!365783)))

(declare-fun lt!2408421 () List!65634)

(assert (=> d!2061344 (forall!15616 lt!2408421 lambda!365839)))

(declare-fun e!3976776 () List!65634)

(assert (=> d!2061344 (= lt!2408421 e!3976776)))

(declare-fun c!1207754 () Bool)

(assert (=> d!2061344 (= c!1207754 ((_ is Cons!65511) (Cons!65511 lt!2408292 Nil!65511)))))

(assert (=> d!2061344 (= (unfocusZipperList!1866 (Cons!65511 lt!2408292 Nil!65511)) lt!2408421)))

(declare-fun b!6569956 () Bool)

(assert (=> b!6569956 (= e!3976776 (Cons!65510 (generalisedConcat!2042 (exprs!6329 (h!71959 (Cons!65511 lt!2408292 Nil!65511)))) (unfocusZipperList!1866 (t!379279 (Cons!65511 lt!2408292 Nil!65511)))))))

(declare-fun b!6569957 () Bool)

(assert (=> b!6569957 (= e!3976776 Nil!65510)))

(assert (= (and d!2061344 c!1207754) b!6569956))

(assert (= (and d!2061344 (not c!1207754)) b!6569957))

(declare-fun m!7352012 () Bool)

(assert (=> d!2061344 m!7352012))

(declare-fun m!7352014 () Bool)

(assert (=> b!6569956 m!7352014))

(declare-fun m!7352016 () Bool)

(assert (=> b!6569956 m!7352016))

(assert (=> d!2060940 d!2061344))

(declare-fun d!2061346 () Bool)

(assert (=> d!2061346 (= (isEmpty!37757 (exprs!6329 (h!71959 zl!343))) ((_ is Nil!65510) (exprs!6329 (h!71959 zl!343))))))

(assert (=> b!6569015 d!2061346))

(declare-fun b!6569958 () Bool)

(declare-fun e!3976778 () Bool)

(declare-fun call!571688 () Bool)

(assert (=> b!6569958 (= e!3976778 call!571688)))

(declare-fun call!571687 () Bool)

(declare-fun bm!571681 () Bool)

(declare-fun c!1207755 () Bool)

(assert (=> bm!571681 (= call!571687 (validRegex!8181 (ite c!1207755 (regOne!33403 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))) (regOne!33402 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))))))))

(declare-fun b!6569960 () Bool)

(declare-fun e!3976783 () Bool)

(declare-fun e!3976777 () Bool)

(assert (=> b!6569960 (= e!3976783 e!3976777)))

(assert (=> b!6569960 (= c!1207755 ((_ is Union!16445) (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))))))

(declare-fun b!6569961 () Bool)

(declare-fun e!3976781 () Bool)

(declare-fun call!571686 () Bool)

(assert (=> b!6569961 (= e!3976781 call!571686)))

(declare-fun b!6569962 () Bool)

(declare-fun e!3976780 () Bool)

(assert (=> b!6569962 (= e!3976780 call!571688)))

(declare-fun b!6569963 () Bool)

(assert (=> b!6569963 (= e!3976783 e!3976781)))

(declare-fun res!2696213 () Bool)

(assert (=> b!6569963 (= res!2696213 (not (nullable!6438 (reg!16774 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))))))))

(assert (=> b!6569963 (=> (not res!2696213) (not e!3976781))))

(declare-fun bm!571682 () Bool)

(declare-fun c!1207756 () Bool)

(assert (=> bm!571682 (= call!571686 (validRegex!8181 (ite c!1207756 (reg!16774 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))) (ite c!1207755 (regTwo!33403 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))) (regTwo!33402 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292))))))))))

(declare-fun b!6569959 () Bool)

(declare-fun res!2696209 () Bool)

(assert (=> b!6569959 (=> (not res!2696209) (not e!3976780))))

(assert (=> b!6569959 (= res!2696209 call!571687)))

(assert (=> b!6569959 (= e!3976777 e!3976780)))

(declare-fun d!2061348 () Bool)

(declare-fun res!2696210 () Bool)

(declare-fun e!3976779 () Bool)

(assert (=> d!2061348 (=> res!2696210 e!3976779)))

(assert (=> d!2061348 (= res!2696210 ((_ is ElementMatch!16445) (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))))))

(assert (=> d!2061348 (= (validRegex!8181 (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))) e!3976779)))

(declare-fun b!6569964 () Bool)

(declare-fun res!2696212 () Bool)

(declare-fun e!3976782 () Bool)

(assert (=> b!6569964 (=> res!2696212 e!3976782)))

(assert (=> b!6569964 (= res!2696212 (not ((_ is Concat!25290) (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292))))))))

(assert (=> b!6569964 (= e!3976777 e!3976782)))

(declare-fun b!6569965 () Bool)

(assert (=> b!6569965 (= e!3976779 e!3976783)))

(assert (=> b!6569965 (= c!1207756 ((_ is Star!16445) (ite c!1207536 (reg!16774 r!7292) (ite c!1207535 (regTwo!33403 r!7292) (regTwo!33402 r!7292)))))))

(declare-fun bm!571683 () Bool)

(assert (=> bm!571683 (= call!571688 call!571686)))

(declare-fun b!6569966 () Bool)

(assert (=> b!6569966 (= e!3976782 e!3976778)))

(declare-fun res!2696211 () Bool)

(assert (=> b!6569966 (=> (not res!2696211) (not e!3976778))))

(assert (=> b!6569966 (= res!2696211 call!571687)))

(assert (= (and d!2061348 (not res!2696210)) b!6569965))

(assert (= (and b!6569965 c!1207756) b!6569963))

(assert (= (and b!6569965 (not c!1207756)) b!6569960))

(assert (= (and b!6569963 res!2696213) b!6569961))

(assert (= (and b!6569960 c!1207755) b!6569959))

(assert (= (and b!6569960 (not c!1207755)) b!6569964))

(assert (= (and b!6569959 res!2696209) b!6569962))

(assert (= (and b!6569964 (not res!2696212)) b!6569966))

(assert (= (and b!6569966 res!2696211) b!6569958))

(assert (= (or b!6569962 b!6569958) bm!571683))

(assert (= (or b!6569959 b!6569966) bm!571681))

(assert (= (or b!6569961 bm!571683) bm!571682))

(declare-fun m!7352018 () Bool)

(assert (=> bm!571681 m!7352018))

(declare-fun m!7352020 () Bool)

(assert (=> b!6569963 m!7352020))

(declare-fun m!7352022 () Bool)

(assert (=> bm!571682 m!7352022))

(assert (=> bm!571529 d!2061348))

(declare-fun b!6569967 () Bool)

(declare-fun e!3976785 () (InoxSet Context!11658))

(declare-fun call!571689 () (InoxSet Context!11658))

(assert (=> b!6569967 (= e!3976785 call!571689)))

(declare-fun b!6569969 () Bool)

(assert (=> b!6569969 (= e!3976785 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571684 () Bool)

(assert (=> bm!571684 (= call!571689 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408279))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408279)))))) (h!71960 s!2326)))))

(declare-fun b!6569970 () Bool)

(declare-fun e!3976784 () (InoxSet Context!11658))

(assert (=> b!6569970 (= e!3976784 e!3976785)))

(declare-fun c!1207757 () Bool)

(assert (=> b!6569970 (= c!1207757 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408279))))))))

(declare-fun b!6569971 () Bool)

(assert (=> b!6569971 (= e!3976784 ((_ map or) call!571689 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408279)))))) (h!71960 s!2326))))))

(declare-fun b!6569968 () Bool)

(declare-fun e!3976786 () Bool)

(assert (=> b!6569968 (= e!3976786 (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408279)))))))))

(declare-fun d!2061350 () Bool)

(declare-fun c!1207758 () Bool)

(assert (=> d!2061350 (= c!1207758 e!3976786)))

(declare-fun res!2696214 () Bool)

(assert (=> d!2061350 (=> (not res!2696214) (not e!3976786))))

(assert (=> d!2061350 (= res!2696214 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408279))))))))

(assert (=> d!2061350 (= (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408279))) (h!71960 s!2326)) e!3976784)))

(assert (= (and d!2061350 res!2696214) b!6569968))

(assert (= (and d!2061350 c!1207758) b!6569971))

(assert (= (and d!2061350 (not c!1207758)) b!6569970))

(assert (= (and b!6569970 c!1207757) b!6569967))

(assert (= (and b!6569970 (not c!1207757)) b!6569969))

(assert (= (or b!6569971 b!6569967) bm!571684))

(declare-fun m!7352024 () Bool)

(assert (=> bm!571684 m!7352024))

(declare-fun m!7352026 () Bool)

(assert (=> b!6569971 m!7352026))

(declare-fun m!7352028 () Bool)

(assert (=> b!6569968 m!7352028))

(assert (=> b!6569179 d!2061350))

(assert (=> bs!1677940 d!2060918))

(assert (=> bm!571463 d!2061114))

(declare-fun bs!1678205 () Bool)

(declare-fun d!2061352 () Bool)

(assert (= bs!1678205 (and d!2061352 d!2061148)))

(declare-fun lambda!365840 () Int)

(assert (=> bs!1678205 (= lambda!365840 lambda!365810)))

(declare-fun bs!1678206 () Bool)

(assert (= bs!1678206 (and d!2061352 d!2061256)))

(assert (=> bs!1678206 (= lambda!365840 lambda!365825)))

(declare-fun bs!1678207 () Bool)

(assert (= bs!1678207 (and d!2061352 d!2061286)))

(assert (=> bs!1678207 (= lambda!365840 lambda!365833)))

(assert (=> d!2061352 (= (nullableZipper!2190 ((_ map or) lt!2408280 lt!2408277)) (exists!2640 ((_ map or) lt!2408280 lt!2408277) lambda!365840))))

(declare-fun bs!1678208 () Bool)

(assert (= bs!1678208 d!2061352))

(declare-fun m!7352030 () Bool)

(assert (=> bs!1678208 m!7352030))

(assert (=> b!6568812 d!2061352))

(assert (=> d!2060914 d!2061112))

(declare-fun d!2061354 () Bool)

(declare-fun c!1207759 () Bool)

(assert (=> d!2061354 (= c!1207759 (isEmpty!37760 (tail!12426 s!2326)))))

(declare-fun e!3976787 () Bool)

(assert (=> d!2061354 (= (matchZipper!2457 (derivationStepZipper!2411 z!1189 (head!13340 s!2326)) (tail!12426 s!2326)) e!3976787)))

(declare-fun b!6569972 () Bool)

(assert (=> b!6569972 (= e!3976787 (nullableZipper!2190 (derivationStepZipper!2411 z!1189 (head!13340 s!2326))))))

(declare-fun b!6569973 () Bool)

(assert (=> b!6569973 (= e!3976787 (matchZipper!2457 (derivationStepZipper!2411 (derivationStepZipper!2411 z!1189 (head!13340 s!2326)) (head!13340 (tail!12426 s!2326))) (tail!12426 (tail!12426 s!2326))))))

(assert (= (and d!2061354 c!1207759) b!6569972))

(assert (= (and d!2061354 (not c!1207759)) b!6569973))

(assert (=> d!2061354 m!7350894))

(assert (=> d!2061354 m!7350896))

(assert (=> b!6569972 m!7350952))

(declare-fun m!7352032 () Bool)

(assert (=> b!6569972 m!7352032))

(assert (=> b!6569973 m!7350894))

(assert (=> b!6569973 m!7351600))

(assert (=> b!6569973 m!7350952))

(assert (=> b!6569973 m!7351600))

(declare-fun m!7352034 () Bool)

(assert (=> b!6569973 m!7352034))

(assert (=> b!6569973 m!7350894))

(assert (=> b!6569973 m!7351596))

(assert (=> b!6569973 m!7352034))

(assert (=> b!6569973 m!7351596))

(declare-fun m!7352036 () Bool)

(assert (=> b!6569973 m!7352036))

(assert (=> b!6568802 d!2061354))

(declare-fun bs!1678209 () Bool)

(declare-fun d!2061356 () Bool)

(assert (= bs!1678209 (and d!2061356 d!2061234)))

(declare-fun lambda!365841 () Int)

(assert (=> bs!1678209 (= lambda!365841 lambda!365820)))

(declare-fun bs!1678210 () Bool)

(assert (= bs!1678210 (and d!2061356 d!2061152)))

(assert (=> bs!1678210 (= (= (head!13340 s!2326) (head!13340 (t!379280 s!2326))) (= lambda!365841 lambda!365811))))

(declare-fun bs!1678211 () Bool)

(assert (= bs!1678211 (and d!2061356 d!2061162)))

(assert (=> bs!1678211 (= (= (head!13340 s!2326) (head!13340 (t!379280 s!2326))) (= lambda!365841 lambda!365812))))

(declare-fun bs!1678212 () Bool)

(assert (= bs!1678212 (and d!2061356 d!2060970)))

(assert (=> bs!1678212 (= (= (head!13340 s!2326) (h!71960 s!2326)) (= lambda!365841 lambda!365764))))

(declare-fun bs!1678213 () Bool)

(assert (= bs!1678213 (and d!2061356 d!2061130)))

(assert (=> bs!1678213 (= (= (head!13340 s!2326) (head!13340 (t!379280 s!2326))) (= lambda!365841 lambda!365807))))

(declare-fun bs!1678214 () Bool)

(assert (= bs!1678214 (and d!2061356 d!2061338)))

(assert (=> bs!1678214 (= (= (head!13340 s!2326) (head!13340 (t!379280 s!2326))) (= lambda!365841 lambda!365837))))

(declare-fun bs!1678215 () Bool)

(assert (= bs!1678215 (and d!2061356 b!6568635)))

(assert (=> bs!1678215 (= (= (head!13340 s!2326) (h!71960 s!2326)) (= lambda!365841 lambda!365735))))

(assert (=> d!2061356 true))

(assert (=> d!2061356 (= (derivationStepZipper!2411 z!1189 (head!13340 s!2326)) (flatMap!1950 z!1189 lambda!365841))))

(declare-fun bs!1678216 () Bool)

(assert (= bs!1678216 d!2061356))

(declare-fun m!7352038 () Bool)

(assert (=> bs!1678216 m!7352038))

(assert (=> b!6568802 d!2061356))

(assert (=> b!6568802 d!2061110))

(assert (=> b!6568802 d!2061176))

(declare-fun d!2061358 () Bool)

(declare-fun c!1207762 () Bool)

(assert (=> d!2061358 (= c!1207762 ((_ is Nil!65511) lt!2408340))))

(declare-fun e!3976790 () (InoxSet Context!11658))

(assert (=> d!2061358 (= (content!12613 lt!2408340) e!3976790)))

(declare-fun b!6569978 () Bool)

(assert (=> b!6569978 (= e!3976790 ((as const (Array Context!11658 Bool)) false))))

(declare-fun b!6569979 () Bool)

(assert (=> b!6569979 (= e!3976790 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) (h!71959 lt!2408340) true) (content!12613 (t!379279 lt!2408340))))))

(assert (= (and d!2061358 c!1207762) b!6569978))

(assert (= (and d!2061358 (not c!1207762)) b!6569979))

(declare-fun m!7352040 () Bool)

(assert (=> b!6569979 m!7352040))

(declare-fun m!7352042 () Bool)

(assert (=> b!6569979 m!7352042))

(assert (=> b!6568975 d!2061358))

(declare-fun d!2061360 () Bool)

(assert (=> d!2061360 (= (head!13342 (unfocusZipperList!1866 zl!343)) (h!71958 (unfocusZipperList!1866 zl!343)))))

(assert (=> b!6569078 d!2061360))

(assert (=> b!6568938 d!2061174))

(assert (=> b!6568938 d!2061176))

(assert (=> b!6568709 d!2061110))

(declare-fun d!2061362 () Bool)

(assert (=> d!2061362 (= (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (nullableFct!2364 (h!71958 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))

(declare-fun bs!1678217 () Bool)

(assert (= bs!1678217 d!2061362))

(declare-fun m!7352044 () Bool)

(assert (=> bs!1678217 m!7352044))

(assert (=> b!6569171 d!2061362))

(declare-fun bs!1678218 () Bool)

(declare-fun b!6569989 () Bool)

(assert (= bs!1678218 (and b!6569989 b!6568921)))

(declare-fun lambda!365842 () Int)

(assert (=> bs!1678218 (not (= lambda!365842 lambda!365761))))

(declare-fun bs!1678219 () Bool)

(assert (= bs!1678219 (and b!6569989 b!6569722)))

(assert (=> bs!1678219 (= (and (= (reg!16774 (regOne!33403 r!7292)) (reg!16774 (regOne!33403 lt!2408266))) (= (regOne!33403 r!7292) (regOne!33403 lt!2408266))) (= lambda!365842 lambda!365823))))

(declare-fun bs!1678220 () Bool)

(assert (= bs!1678220 (and b!6569989 b!6568784)))

(assert (=> bs!1678220 (not (= lambda!365842 lambda!365750))))

(declare-fun bs!1678221 () Bool)

(assert (= bs!1678221 (and b!6569989 d!2061186)))

(assert (=> bs!1678221 (not (= lambda!365842 lambda!365818))))

(declare-fun bs!1678222 () Bool)

(assert (= bs!1678222 (and b!6569989 b!6568923)))

(assert (=> bs!1678222 (= (and (= (reg!16774 (regOne!33403 r!7292)) (reg!16774 r!7292)) (= (regOne!33403 r!7292) r!7292)) (= lambda!365842 lambda!365760))))

(declare-fun bs!1678223 () Bool)

(assert (= bs!1678223 (and b!6569989 b!6569782)))

(assert (=> bs!1678223 (= (and (= (reg!16774 (regOne!33403 r!7292)) (reg!16774 (regTwo!33403 lt!2408266))) (= (regOne!33403 r!7292) (regTwo!33403 lt!2408266))) (= lambda!365842 lambda!365826))))

(assert (=> bs!1678221 (not (= lambda!365842 lambda!365817))))

(declare-fun bs!1678224 () Bool)

(assert (= bs!1678224 (and b!6569989 b!6568614)))

(assert (=> bs!1678224 (not (= lambda!365842 lambda!365734))))

(declare-fun bs!1678225 () Bool)

(assert (= bs!1678225 (and b!6569989 b!6569486)))

(assert (=> bs!1678225 (not (= lambda!365842 lambda!365806))))

(declare-fun bs!1678226 () Bool)

(assert (= bs!1678226 (and b!6569989 d!2061088)))

(assert (=> bs!1678226 (not (= lambda!365842 lambda!365802))))

(assert (=> bs!1678226 (not (= lambda!365842 lambda!365803))))

(declare-fun bs!1678227 () Bool)

(assert (= bs!1678227 (and b!6569989 d!2061276)))

(assert (=> bs!1678227 (not (= lambda!365842 lambda!365830))))

(declare-fun bs!1678228 () Bool)

(assert (= bs!1678228 (and b!6569989 b!6568786)))

(assert (=> bs!1678228 (= (and (= (reg!16774 (regOne!33403 r!7292)) (reg!16774 lt!2408266)) (= (regOne!33403 r!7292) lt!2408266)) (= lambda!365842 lambda!365749))))

(declare-fun bs!1678229 () Bool)

(assert (= bs!1678229 (and b!6569989 d!2061064)))

(assert (=> bs!1678229 (not (= lambda!365842 lambda!365793))))

(declare-fun bs!1678230 () Bool)

(assert (= bs!1678230 (and b!6569989 b!6569488)))

(assert (=> bs!1678230 (= (and (= (reg!16774 (regOne!33403 r!7292)) (reg!16774 (regTwo!33403 r!7292))) (= (regOne!33403 r!7292) (regTwo!33403 r!7292))) (= lambda!365842 lambda!365805))))

(assert (=> bs!1678224 (not (= lambda!365842 lambda!365733))))

(declare-fun bs!1678231 () Bool)

(assert (= bs!1678231 (and b!6569989 b!6569720)))

(assert (=> bs!1678231 (not (= lambda!365842 lambda!365824))))

(declare-fun bs!1678232 () Bool)

(assert (= bs!1678232 (and b!6569989 b!6569780)))

(assert (=> bs!1678232 (not (= lambda!365842 lambda!365827))))

(assert (=> b!6569989 true))

(assert (=> b!6569989 true))

(declare-fun bs!1678233 () Bool)

(declare-fun b!6569987 () Bool)

(assert (= bs!1678233 (and b!6569987 b!6568921)))

(declare-fun lambda!365843 () Int)

(assert (=> bs!1678233 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 r!7292))) (= lambda!365843 lambda!365761))))

(declare-fun bs!1678234 () Bool)

(assert (= bs!1678234 (and b!6569987 b!6569722)))

(assert (=> bs!1678234 (not (= lambda!365843 lambda!365823))))

(declare-fun bs!1678235 () Bool)

(assert (= bs!1678235 (and b!6569987 b!6568784)))

(assert (=> bs!1678235 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 lt!2408266)) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 lt!2408266))) (= lambda!365843 lambda!365750))))

(declare-fun bs!1678236 () Bool)

(assert (= bs!1678236 (and b!6569987 d!2061186)))

(assert (=> bs!1678236 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 r!7292))) (= lambda!365843 lambda!365818))))

(declare-fun bs!1678237 () Bool)

(assert (= bs!1678237 (and b!6569987 b!6568923)))

(assert (=> bs!1678237 (not (= lambda!365843 lambda!365760))))

(declare-fun bs!1678238 () Bool)

(assert (= bs!1678238 (and b!6569987 b!6569782)))

(assert (=> bs!1678238 (not (= lambda!365843 lambda!365826))))

(assert (=> bs!1678236 (not (= lambda!365843 lambda!365817))))

(declare-fun bs!1678239 () Bool)

(assert (= bs!1678239 (and b!6569987 b!6568614)))

(assert (=> bs!1678239 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 r!7292))) (= lambda!365843 lambda!365734))))

(declare-fun bs!1678240 () Bool)

(assert (= bs!1678240 (and b!6569987 b!6569486)))

(assert (=> bs!1678240 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 (regTwo!33403 r!7292))) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 (regTwo!33403 r!7292)))) (= lambda!365843 lambda!365806))))

(declare-fun bs!1678241 () Bool)

(assert (= bs!1678241 (and b!6569987 d!2061088)))

(assert (=> bs!1678241 (not (= lambda!365843 lambda!365802))))

(assert (=> bs!1678241 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 r!7292)) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 r!7292))) (= lambda!365843 lambda!365803))))

(declare-fun bs!1678242 () Bool)

(assert (= bs!1678242 (and b!6569987 d!2061276)))

(assert (=> bs!1678242 (not (= lambda!365843 lambda!365830))))

(declare-fun bs!1678243 () Bool)

(assert (= bs!1678243 (and b!6569987 b!6568786)))

(assert (=> bs!1678243 (not (= lambda!365843 lambda!365749))))

(declare-fun bs!1678244 () Bool)

(assert (= bs!1678244 (and b!6569987 d!2061064)))

(assert (=> bs!1678244 (not (= lambda!365843 lambda!365793))))

(declare-fun bs!1678245 () Bool)

(assert (= bs!1678245 (and b!6569987 b!6569488)))

(assert (=> bs!1678245 (not (= lambda!365843 lambda!365805))))

(assert (=> bs!1678239 (not (= lambda!365843 lambda!365733))))

(declare-fun bs!1678246 () Bool)

(assert (= bs!1678246 (and b!6569987 b!6569720)))

(assert (=> bs!1678246 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 (regOne!33403 lt!2408266))) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 (regOne!33403 lt!2408266)))) (= lambda!365843 lambda!365824))))

(declare-fun bs!1678247 () Bool)

(assert (= bs!1678247 (and b!6569987 b!6569989)))

(assert (=> bs!1678247 (not (= lambda!365843 lambda!365842))))

(declare-fun bs!1678248 () Bool)

(assert (= bs!1678248 (and b!6569987 b!6569780)))

(assert (=> bs!1678248 (= (and (= (regOne!33402 (regOne!33403 r!7292)) (regOne!33402 (regTwo!33403 lt!2408266))) (= (regTwo!33402 (regOne!33403 r!7292)) (regTwo!33402 (regTwo!33403 lt!2408266)))) (= lambda!365843 lambda!365827))))

(assert (=> b!6569987 true))

(assert (=> b!6569987 true))

(declare-fun d!2061364 () Bool)

(declare-fun c!1207764 () Bool)

(assert (=> d!2061364 (= c!1207764 ((_ is EmptyExpr!16445) (regOne!33403 r!7292)))))

(declare-fun e!3976797 () Bool)

(assert (=> d!2061364 (= (matchRSpec!3546 (regOne!33403 r!7292) s!2326) e!3976797)))

(declare-fun b!6569980 () Bool)

(declare-fun e!3976791 () Bool)

(declare-fun e!3976794 () Bool)

(assert (=> b!6569980 (= e!3976791 e!3976794)))

(declare-fun res!2696216 () Bool)

(assert (=> b!6569980 (= res!2696216 (matchRSpec!3546 (regOne!33403 (regOne!33403 r!7292)) s!2326))))

(assert (=> b!6569980 (=> res!2696216 e!3976794)))

(declare-fun b!6569981 () Bool)

(declare-fun res!2696215 () Bool)

(declare-fun e!3976792 () Bool)

(assert (=> b!6569981 (=> res!2696215 e!3976792)))

(declare-fun call!571691 () Bool)

(assert (=> b!6569981 (= res!2696215 call!571691)))

(declare-fun e!3976793 () Bool)

(assert (=> b!6569981 (= e!3976793 e!3976792)))

(declare-fun b!6569982 () Bool)

(declare-fun e!3976796 () Bool)

(assert (=> b!6569982 (= e!3976796 (= s!2326 (Cons!65512 (c!1207368 (regOne!33403 r!7292)) Nil!65512)))))

(declare-fun c!1207765 () Bool)

(declare-fun call!571690 () Bool)

(declare-fun bm!571685 () Bool)

(assert (=> bm!571685 (= call!571690 (Exists!3515 (ite c!1207765 lambda!365842 lambda!365843)))))

(declare-fun b!6569983 () Bool)

(assert (=> b!6569983 (= e!3976791 e!3976793)))

(assert (=> b!6569983 (= c!1207765 ((_ is Star!16445) (regOne!33403 r!7292)))))

(declare-fun b!6569984 () Bool)

(assert (=> b!6569984 (= e!3976797 call!571691)))

(declare-fun b!6569985 () Bool)

(assert (=> b!6569985 (= e!3976794 (matchRSpec!3546 (regTwo!33403 (regOne!33403 r!7292)) s!2326))))

(declare-fun bm!571686 () Bool)

(assert (=> bm!571686 (= call!571691 (isEmpty!37760 s!2326))))

(declare-fun b!6569986 () Bool)

(declare-fun c!1207766 () Bool)

(assert (=> b!6569986 (= c!1207766 ((_ is ElementMatch!16445) (regOne!33403 r!7292)))))

(declare-fun e!3976795 () Bool)

(assert (=> b!6569986 (= e!3976795 e!3976796)))

(assert (=> b!6569987 (= e!3976793 call!571690)))

(declare-fun b!6569988 () Bool)

(declare-fun c!1207763 () Bool)

(assert (=> b!6569988 (= c!1207763 ((_ is Union!16445) (regOne!33403 r!7292)))))

(assert (=> b!6569988 (= e!3976796 e!3976791)))

(assert (=> b!6569989 (= e!3976792 call!571690)))

(declare-fun b!6569990 () Bool)

(assert (=> b!6569990 (= e!3976797 e!3976795)))

(declare-fun res!2696217 () Bool)

(assert (=> b!6569990 (= res!2696217 (not ((_ is EmptyLang!16445) (regOne!33403 r!7292))))))

(assert (=> b!6569990 (=> (not res!2696217) (not e!3976795))))

(assert (= (and d!2061364 c!1207764) b!6569984))

(assert (= (and d!2061364 (not c!1207764)) b!6569990))

(assert (= (and b!6569990 res!2696217) b!6569986))

(assert (= (and b!6569986 c!1207766) b!6569982))

(assert (= (and b!6569986 (not c!1207766)) b!6569988))

(assert (= (and b!6569988 c!1207763) b!6569980))

(assert (= (and b!6569988 (not c!1207763)) b!6569983))

(assert (= (and b!6569980 (not res!2696216)) b!6569985))

(assert (= (and b!6569983 c!1207765) b!6569981))

(assert (= (and b!6569983 (not c!1207765)) b!6569987))

(assert (= (and b!6569981 (not res!2696215)) b!6569989))

(assert (= (or b!6569989 b!6569987) bm!571685))

(assert (= (or b!6569984 b!6569981) bm!571686))

(declare-fun m!7352046 () Bool)

(assert (=> b!6569980 m!7352046))

(declare-fun m!7352048 () Bool)

(assert (=> bm!571685 m!7352048))

(declare-fun m!7352050 () Bool)

(assert (=> b!6569985 m!7352050))

(assert (=> bm!571686 m!7350906))

(assert (=> b!6568914 d!2061364))

(declare-fun bm!571687 () Bool)

(declare-fun call!571692 () Bool)

(declare-fun c!1207767 () Bool)

(assert (=> bm!571687 (= call!571692 (nullable!6438 (ite c!1207767 (regTwo!33403 (regOne!33402 (regOne!33402 r!7292))) (regTwo!33402 (regOne!33402 (regOne!33402 r!7292))))))))

(declare-fun b!6569991 () Bool)

(declare-fun e!3976799 () Bool)

(declare-fun e!3976800 () Bool)

(assert (=> b!6569991 (= e!3976799 e!3976800)))

(declare-fun res!2696221 () Bool)

(assert (=> b!6569991 (=> res!2696221 e!3976800)))

(assert (=> b!6569991 (= res!2696221 ((_ is Star!16445) (regOne!33402 (regOne!33402 r!7292))))))

(declare-fun b!6569992 () Bool)

(declare-fun e!3976802 () Bool)

(assert (=> b!6569992 (= e!3976802 call!571692)))

(declare-fun bm!571688 () Bool)

(declare-fun call!571693 () Bool)

(assert (=> bm!571688 (= call!571693 (nullable!6438 (ite c!1207767 (regOne!33403 (regOne!33402 (regOne!33402 r!7292))) (regOne!33402 (regOne!33402 (regOne!33402 r!7292))))))))

(declare-fun d!2061366 () Bool)

(declare-fun res!2696218 () Bool)

(declare-fun e!3976798 () Bool)

(assert (=> d!2061366 (=> res!2696218 e!3976798)))

(assert (=> d!2061366 (= res!2696218 ((_ is EmptyExpr!16445) (regOne!33402 (regOne!33402 r!7292))))))

(assert (=> d!2061366 (= (nullableFct!2364 (regOne!33402 (regOne!33402 r!7292))) e!3976798)))

(declare-fun b!6569993 () Bool)

(declare-fun e!3976803 () Bool)

(assert (=> b!6569993 (= e!3976800 e!3976803)))

(assert (=> b!6569993 (= c!1207767 ((_ is Union!16445) (regOne!33402 (regOne!33402 r!7292))))))

(declare-fun b!6569994 () Bool)

(declare-fun e!3976801 () Bool)

(assert (=> b!6569994 (= e!3976801 call!571692)))

(declare-fun b!6569995 () Bool)

(assert (=> b!6569995 (= e!3976803 e!3976801)))

(declare-fun res!2696220 () Bool)

(assert (=> b!6569995 (= res!2696220 call!571693)))

(assert (=> b!6569995 (=> (not res!2696220) (not e!3976801))))

(declare-fun b!6569996 () Bool)

(assert (=> b!6569996 (= e!3976803 e!3976802)))

(declare-fun res!2696219 () Bool)

(assert (=> b!6569996 (= res!2696219 call!571693)))

(assert (=> b!6569996 (=> res!2696219 e!3976802)))

(declare-fun b!6569997 () Bool)

(assert (=> b!6569997 (= e!3976798 e!3976799)))

(declare-fun res!2696222 () Bool)

(assert (=> b!6569997 (=> (not res!2696222) (not e!3976799))))

(assert (=> b!6569997 (= res!2696222 (and (not ((_ is EmptyLang!16445) (regOne!33402 (regOne!33402 r!7292)))) (not ((_ is ElementMatch!16445) (regOne!33402 (regOne!33402 r!7292))))))))

(assert (= (and d!2061366 (not res!2696218)) b!6569997))

(assert (= (and b!6569997 res!2696222) b!6569991))

(assert (= (and b!6569991 (not res!2696221)) b!6569993))

(assert (= (and b!6569993 c!1207767) b!6569996))

(assert (= (and b!6569993 (not c!1207767)) b!6569995))

(assert (= (and b!6569996 (not res!2696219)) b!6569992))

(assert (= (and b!6569995 res!2696220) b!6569994))

(assert (= (or b!6569992 b!6569994) bm!571687))

(assert (= (or b!6569996 b!6569995) bm!571688))

(declare-fun m!7352052 () Bool)

(assert (=> bm!571687 m!7352052))

(declare-fun m!7352054 () Bool)

(assert (=> bm!571688 m!7352054))

(assert (=> d!2060988 d!2061366))

(declare-fun bs!1678249 () Bool)

(declare-fun d!2061368 () Bool)

(assert (= bs!1678249 (and d!2061368 d!2061148)))

(declare-fun lambda!365844 () Int)

(assert (=> bs!1678249 (= lambda!365844 lambda!365810)))

(declare-fun bs!1678250 () Bool)

(assert (= bs!1678250 (and d!2061368 d!2061256)))

(assert (=> bs!1678250 (= lambda!365844 lambda!365825)))

(declare-fun bs!1678251 () Bool)

(assert (= bs!1678251 (and d!2061368 d!2061286)))

(assert (=> bs!1678251 (= lambda!365844 lambda!365833)))

(declare-fun bs!1678252 () Bool)

(assert (= bs!1678252 (and d!2061368 d!2061352)))

(assert (=> bs!1678252 (= lambda!365844 lambda!365840)))

(assert (=> d!2061368 (= (nullableZipper!2190 lt!2408277) (exists!2640 lt!2408277 lambda!365844))))

(declare-fun bs!1678253 () Bool)

(assert (= bs!1678253 d!2061368))

(declare-fun m!7352056 () Bool)

(assert (=> bs!1678253 m!7352056))

(assert (=> b!6568842 d!2061368))

(declare-fun b!6569998 () Bool)

(declare-fun e!3976807 () Bool)

(declare-fun lt!2408422 () Bool)

(declare-fun call!571694 () Bool)

(assert (=> b!6569998 (= e!3976807 (= lt!2408422 call!571694))))

(declare-fun b!6569999 () Bool)

(declare-fun res!2696226 () Bool)

(declare-fun e!3976809 () Bool)

(assert (=> b!6569999 (=> res!2696226 e!3976809)))

(assert (=> b!6569999 (= res!2696226 (not (isEmpty!37760 (tail!12426 (_1!36727 (get!22749 lt!2408375))))))))

(declare-fun b!6570000 () Bool)

(assert (=> b!6570000 (= e!3976809 (not (= (head!13340 (_1!36727 (get!22749 lt!2408375))) (c!1207368 (regOne!33402 r!7292)))))))

(declare-fun bm!571689 () Bool)

(assert (=> bm!571689 (= call!571694 (isEmpty!37760 (_1!36727 (get!22749 lt!2408375))))))

(declare-fun b!6570002 () Bool)

(declare-fun e!3976805 () Bool)

(assert (=> b!6570002 (= e!3976807 e!3976805)))

(declare-fun c!1207768 () Bool)

(assert (=> b!6570002 (= c!1207768 ((_ is EmptyLang!16445) (regOne!33402 r!7292)))))

(declare-fun b!6570003 () Bool)

(declare-fun e!3976808 () Bool)

(assert (=> b!6570003 (= e!3976808 (nullable!6438 (regOne!33402 r!7292)))))

(declare-fun b!6570004 () Bool)

(declare-fun res!2696227 () Bool)

(declare-fun e!3976806 () Bool)

(assert (=> b!6570004 (=> res!2696227 e!3976806)))

(declare-fun e!3976804 () Bool)

(assert (=> b!6570004 (= res!2696227 e!3976804)))

(declare-fun res!2696224 () Bool)

(assert (=> b!6570004 (=> (not res!2696224) (not e!3976804))))

(assert (=> b!6570004 (= res!2696224 lt!2408422)))

(declare-fun b!6570005 () Bool)

(assert (=> b!6570005 (= e!3976805 (not lt!2408422))))

(declare-fun b!6570006 () Bool)

(declare-fun e!3976810 () Bool)

(assert (=> b!6570006 (= e!3976810 e!3976809)))

(declare-fun res!2696228 () Bool)

(assert (=> b!6570006 (=> res!2696228 e!3976809)))

(assert (=> b!6570006 (= res!2696228 call!571694)))

(declare-fun b!6570007 () Bool)

(declare-fun res!2696230 () Bool)

(assert (=> b!6570007 (=> res!2696230 e!3976806)))

(assert (=> b!6570007 (= res!2696230 (not ((_ is ElementMatch!16445) (regOne!33402 r!7292))))))

(assert (=> b!6570007 (= e!3976805 e!3976806)))

(declare-fun b!6570008 () Bool)

(assert (=> b!6570008 (= e!3976808 (matchR!8628 (derivativeStep!5128 (regOne!33402 r!7292) (head!13340 (_1!36727 (get!22749 lt!2408375)))) (tail!12426 (_1!36727 (get!22749 lt!2408375)))))))

(declare-fun b!6570009 () Bool)

(declare-fun res!2696229 () Bool)

(assert (=> b!6570009 (=> (not res!2696229) (not e!3976804))))

(assert (=> b!6570009 (= res!2696229 (not call!571694))))

(declare-fun b!6570001 () Bool)

(declare-fun res!2696223 () Bool)

(assert (=> b!6570001 (=> (not res!2696223) (not e!3976804))))

(assert (=> b!6570001 (= res!2696223 (isEmpty!37760 (tail!12426 (_1!36727 (get!22749 lt!2408375)))))))

(declare-fun d!2061370 () Bool)

(assert (=> d!2061370 e!3976807))

(declare-fun c!1207770 () Bool)

(assert (=> d!2061370 (= c!1207770 ((_ is EmptyExpr!16445) (regOne!33402 r!7292)))))

(assert (=> d!2061370 (= lt!2408422 e!3976808)))

(declare-fun c!1207769 () Bool)

(assert (=> d!2061370 (= c!1207769 (isEmpty!37760 (_1!36727 (get!22749 lt!2408375))))))

(assert (=> d!2061370 (validRegex!8181 (regOne!33402 r!7292))))

(assert (=> d!2061370 (= (matchR!8628 (regOne!33402 r!7292) (_1!36727 (get!22749 lt!2408375))) lt!2408422)))

(declare-fun b!6570010 () Bool)

(assert (=> b!6570010 (= e!3976806 e!3976810)))

(declare-fun res!2696225 () Bool)

(assert (=> b!6570010 (=> (not res!2696225) (not e!3976810))))

(assert (=> b!6570010 (= res!2696225 (not lt!2408422))))

(declare-fun b!6570011 () Bool)

(assert (=> b!6570011 (= e!3976804 (= (head!13340 (_1!36727 (get!22749 lt!2408375))) (c!1207368 (regOne!33402 r!7292))))))

(assert (= (and d!2061370 c!1207769) b!6570003))

(assert (= (and d!2061370 (not c!1207769)) b!6570008))

(assert (= (and d!2061370 c!1207770) b!6569998))

(assert (= (and d!2061370 (not c!1207770)) b!6570002))

(assert (= (and b!6570002 c!1207768) b!6570005))

(assert (= (and b!6570002 (not c!1207768)) b!6570007))

(assert (= (and b!6570007 (not res!2696230)) b!6570004))

(assert (= (and b!6570004 res!2696224) b!6570009))

(assert (= (and b!6570009 res!2696229) b!6570001))

(assert (= (and b!6570001 res!2696223) b!6570011))

(assert (= (and b!6570004 (not res!2696227)) b!6570010))

(assert (= (and b!6570010 res!2696225) b!6570006))

(assert (= (and b!6570006 (not res!2696228)) b!6569999))

(assert (= (and b!6569999 (not res!2696226)) b!6570000))

(assert (= (or b!6569998 b!6570009 b!6570006) bm!571689))

(declare-fun m!7352058 () Bool)

(assert (=> b!6569999 m!7352058))

(assert (=> b!6569999 m!7352058))

(declare-fun m!7352060 () Bool)

(assert (=> b!6569999 m!7352060))

(declare-fun m!7352062 () Bool)

(assert (=> b!6570008 m!7352062))

(assert (=> b!6570008 m!7352062))

(declare-fun m!7352064 () Bool)

(assert (=> b!6570008 m!7352064))

(assert (=> b!6570008 m!7352058))

(assert (=> b!6570008 m!7352064))

(assert (=> b!6570008 m!7352058))

(declare-fun m!7352066 () Bool)

(assert (=> b!6570008 m!7352066))

(assert (=> b!6570003 m!7351578))

(assert (=> b!6570000 m!7352062))

(declare-fun m!7352068 () Bool)

(assert (=> d!2061370 m!7352068))

(assert (=> d!2061370 m!7351348))

(assert (=> b!6570001 m!7352058))

(assert (=> b!6570001 m!7352058))

(assert (=> b!6570001 m!7352060))

(assert (=> bm!571689 m!7352068))

(assert (=> b!6570011 m!7352062))

(assert (=> b!6569258 d!2061370))

(assert (=> b!6569258 d!2061206))

(declare-fun bs!1678254 () Bool)

(declare-fun d!2061372 () Bool)

(assert (= bs!1678254 (and d!2061372 d!2061352)))

(declare-fun lambda!365845 () Int)

(assert (=> bs!1678254 (= lambda!365845 lambda!365840)))

(declare-fun bs!1678255 () Bool)

(assert (= bs!1678255 (and d!2061372 d!2061368)))

(assert (=> bs!1678255 (= lambda!365845 lambda!365844)))

(declare-fun bs!1678256 () Bool)

(assert (= bs!1678256 (and d!2061372 d!2061256)))

(assert (=> bs!1678256 (= lambda!365845 lambda!365825)))

(declare-fun bs!1678257 () Bool)

(assert (= bs!1678257 (and d!2061372 d!2061286)))

(assert (=> bs!1678257 (= lambda!365845 lambda!365833)))

(declare-fun bs!1678258 () Bool)

(assert (= bs!1678258 (and d!2061372 d!2061148)))

(assert (=> bs!1678258 (= lambda!365845 lambda!365810)))

(assert (=> d!2061372 (= (nullableZipper!2190 lt!2408287) (exists!2640 lt!2408287 lambda!365845))))

(declare-fun bs!1678259 () Bool)

(assert (= bs!1678259 d!2061372))

(declare-fun m!7352070 () Bool)

(assert (=> bs!1678259 m!7352070))

(assert (=> b!6568846 d!2061372))

(assert (=> d!2060910 d!2060916))

(assert (=> d!2060910 d!2060914))

(declare-fun e!3976813 () Bool)

(declare-fun d!2061374 () Bool)

(assert (=> d!2061374 (= (matchZipper!2457 ((_ map or) lt!2408280 lt!2408277) (t!379280 s!2326)) e!3976813)))

(declare-fun res!2696233 () Bool)

(assert (=> d!2061374 (=> res!2696233 e!3976813)))

(assert (=> d!2061374 (= res!2696233 (matchZipper!2457 lt!2408280 (t!379280 s!2326)))))

(assert (=> d!2061374 true))

(declare-fun _$48!2297 () Unit!159115)

(assert (=> d!2061374 (= (choose!49063 lt!2408280 lt!2408277 (t!379280 s!2326)) _$48!2297)))

(declare-fun b!6570014 () Bool)

(assert (=> b!6570014 (= e!3976813 (matchZipper!2457 lt!2408277 (t!379280 s!2326)))))

(assert (= (and d!2061374 (not res!2696233)) b!6570014))

(assert (=> d!2061374 m!7350762))

(assert (=> d!2061374 m!7350760))

(assert (=> b!6570014 m!7350792))

(assert (=> d!2060910 d!2061374))

(declare-fun d!2061376 () Bool)

(assert (=> d!2061376 (= (nullable!6438 (h!71958 (exprs!6329 lt!2408275))) (nullableFct!2364 (h!71958 (exprs!6329 lt!2408275))))))

(declare-fun bs!1678260 () Bool)

(assert (= bs!1678260 d!2061376))

(declare-fun m!7352072 () Bool)

(assert (=> bs!1678260 m!7352072))

(assert (=> b!6568838 d!2061376))

(declare-fun d!2061378 () Bool)

(assert (=> d!2061378 (= (isEmpty!37757 (t!379278 (unfocusZipperList!1866 zl!343))) ((_ is Nil!65510) (t!379278 (unfocusZipperList!1866 zl!343))))))

(assert (=> b!6569082 d!2061378))

(assert (=> d!2060924 d!2060930))

(declare-fun d!2061380 () Bool)

(assert (=> d!2061380 (= (flatMap!1950 lt!2408285 lambda!365735) (dynLambda!26063 lambda!365735 lt!2408275))))

(assert (=> d!2061380 true))

(declare-fun _$13!3818 () Unit!159115)

(assert (=> d!2061380 (= (choose!49066 lt!2408285 lt!2408275 lambda!365735) _$13!3818)))

(declare-fun b_lambda!248467 () Bool)

(assert (=> (not b_lambda!248467) (not d!2061380)))

(declare-fun bs!1678261 () Bool)

(assert (= bs!1678261 d!2061380))

(assert (=> bs!1678261 m!7350776))

(assert (=> bs!1678261 m!7350996))

(assert (=> d!2060924 d!2061380))

(declare-fun b!6570015 () Bool)

(declare-fun e!3976815 () Bool)

(declare-fun call!571697 () Bool)

(assert (=> b!6570015 (= e!3976815 call!571697)))

(declare-fun call!571696 () Bool)

(declare-fun c!1207771 () Bool)

(declare-fun bm!571690 () Bool)

(assert (=> bm!571690 (= call!571696 (validRegex!8181 (ite c!1207771 (regOne!33403 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))) (regOne!33402 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))))))))

(declare-fun b!6570017 () Bool)

(declare-fun e!3976820 () Bool)

(declare-fun e!3976814 () Bool)

(assert (=> b!6570017 (= e!3976820 e!3976814)))

(assert (=> b!6570017 (= c!1207771 ((_ is Union!16445) (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))))))

(declare-fun b!6570018 () Bool)

(declare-fun e!3976818 () Bool)

(declare-fun call!571695 () Bool)

(assert (=> b!6570018 (= e!3976818 call!571695)))

(declare-fun b!6570019 () Bool)

(declare-fun e!3976817 () Bool)

(assert (=> b!6570019 (= e!3976817 call!571697)))

(declare-fun b!6570020 () Bool)

(assert (=> b!6570020 (= e!3976820 e!3976818)))

(declare-fun res!2696238 () Bool)

(assert (=> b!6570020 (= res!2696238 (not (nullable!6438 (reg!16774 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))))))))

(assert (=> b!6570020 (=> (not res!2696238) (not e!3976818))))

(declare-fun c!1207772 () Bool)

(declare-fun bm!571691 () Bool)

(assert (=> bm!571691 (= call!571695 (validRegex!8181 (ite c!1207772 (reg!16774 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))) (ite c!1207771 (regTwo!33403 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))) (regTwo!33402 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292)))))))))

(declare-fun b!6570016 () Bool)

(declare-fun res!2696234 () Bool)

(assert (=> b!6570016 (=> (not res!2696234) (not e!3976817))))

(assert (=> b!6570016 (= res!2696234 call!571696)))

(assert (=> b!6570016 (= e!3976814 e!3976817)))

(declare-fun d!2061382 () Bool)

(declare-fun res!2696235 () Bool)

(declare-fun e!3976816 () Bool)

(assert (=> d!2061382 (=> res!2696235 e!3976816)))

(assert (=> d!2061382 (= res!2696235 ((_ is ElementMatch!16445) (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))))))

(assert (=> d!2061382 (= (validRegex!8181 (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))) e!3976816)))

(declare-fun b!6570021 () Bool)

(declare-fun res!2696237 () Bool)

(declare-fun e!3976819 () Bool)

(assert (=> b!6570021 (=> res!2696237 e!3976819)))

(assert (=> b!6570021 (= res!2696237 (not ((_ is Concat!25290) (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292)))))))

(assert (=> b!6570021 (= e!3976814 e!3976819)))

(declare-fun b!6570022 () Bool)

(assert (=> b!6570022 (= e!3976816 e!3976820)))

(assert (=> b!6570022 (= c!1207772 ((_ is Star!16445) (ite c!1207535 (regOne!33403 r!7292) (regOne!33402 r!7292))))))

(declare-fun bm!571692 () Bool)

(assert (=> bm!571692 (= call!571697 call!571695)))

(declare-fun b!6570023 () Bool)

(assert (=> b!6570023 (= e!3976819 e!3976815)))

(declare-fun res!2696236 () Bool)

(assert (=> b!6570023 (=> (not res!2696236) (not e!3976815))))

(assert (=> b!6570023 (= res!2696236 call!571696)))

(assert (= (and d!2061382 (not res!2696235)) b!6570022))

(assert (= (and b!6570022 c!1207772) b!6570020))

(assert (= (and b!6570022 (not c!1207772)) b!6570017))

(assert (= (and b!6570020 res!2696238) b!6570018))

(assert (= (and b!6570017 c!1207771) b!6570016))

(assert (= (and b!6570017 (not c!1207771)) b!6570021))

(assert (= (and b!6570016 res!2696234) b!6570019))

(assert (= (and b!6570021 (not res!2696237)) b!6570023))

(assert (= (and b!6570023 res!2696236) b!6570015))

(assert (= (or b!6570019 b!6570015) bm!571692))

(assert (= (or b!6570016 b!6570023) bm!571690))

(assert (= (or b!6570018 bm!571692) bm!571691))

(declare-fun m!7352074 () Bool)

(assert (=> bm!571690 m!7352074))

(declare-fun m!7352076 () Bool)

(assert (=> b!6570020 m!7352076))

(declare-fun m!7352078 () Bool)

(assert (=> bm!571691 m!7352078))

(assert (=> bm!571528 d!2061382))

(assert (=> d!2060956 d!2061114))

(assert (=> d!2060956 d!2061008))

(declare-fun b!6570024 () Bool)

(declare-fun e!3976822 () (InoxSet Context!11658))

(declare-fun call!571698 () (InoxSet Context!11658))

(assert (=> b!6570024 (= e!3976822 call!571698)))

(declare-fun b!6570026 () Bool)

(assert (=> b!6570026 (= e!3976822 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571693 () Bool)

(assert (=> bm!571693 (= call!571698 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))) (h!71960 s!2326)))))

(declare-fun b!6570027 () Bool)

(declare-fun e!3976821 () (InoxSet Context!11658))

(assert (=> b!6570027 (= e!3976821 e!3976822)))

(declare-fun c!1207773 () Bool)

(assert (=> b!6570027 (= c!1207773 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))))

(declare-fun b!6570028 () Bool)

(assert (=> b!6570028 (= e!3976821 ((_ map or) call!571698 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))) (h!71960 s!2326))))))

(declare-fun b!6570025 () Bool)

(declare-fun e!3976823 () Bool)

(assert (=> b!6570025 (= e!3976823 (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343))))))))))))))

(declare-fun d!2061384 () Bool)

(declare-fun c!1207774 () Bool)

(assert (=> d!2061384 (= c!1207774 e!3976823)))

(declare-fun res!2696239 () Bool)

(assert (=> d!2061384 (=> (not res!2696239) (not e!3976823))))

(assert (=> d!2061384 (= res!2696239 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))))))))

(assert (=> d!2061384 (= (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (Cons!65510 (h!71958 (exprs!6329 (h!71959 zl!343))) (t!379278 (exprs!6329 (h!71959 zl!343)))))))) (h!71960 s!2326)) e!3976821)))

(assert (= (and d!2061384 res!2696239) b!6570025))

(assert (= (and d!2061384 c!1207774) b!6570028))

(assert (= (and d!2061384 (not c!1207774)) b!6570027))

(assert (= (and b!6570027 c!1207773) b!6570024))

(assert (= (and b!6570027 (not c!1207773)) b!6570026))

(assert (= (or b!6570028 b!6570024) bm!571693))

(declare-fun m!7352080 () Bool)

(assert (=> bm!571693 m!7352080))

(declare-fun m!7352082 () Bool)

(assert (=> b!6570028 m!7352082))

(declare-fun m!7352084 () Bool)

(assert (=> b!6570025 m!7352084))

(assert (=> b!6569174 d!2061384))

(declare-fun b!6570029 () Bool)

(declare-fun e!3976825 () (InoxSet Context!11658))

(declare-fun call!571699 () (InoxSet Context!11658))

(assert (=> b!6570029 (= e!3976825 call!571699)))

(declare-fun b!6570031 () Bool)

(assert (=> b!6570031 (= e!3976825 ((as const (Array Context!11658 Bool)) false))))

(declare-fun bm!571694 () Bool)

(assert (=> bm!571694 (= call!571699 (derivationStepZipperDown!1693 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408275))))) (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408275)))))) (h!71960 s!2326)))))

(declare-fun b!6570032 () Bool)

(declare-fun e!3976824 () (InoxSet Context!11658))

(assert (=> b!6570032 (= e!3976824 e!3976825)))

(declare-fun c!1207775 () Bool)

(assert (=> b!6570032 (= c!1207775 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408275))))))))

(declare-fun b!6570033 () Bool)

(assert (=> b!6570033 (= e!3976824 ((_ map or) call!571699 (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408275)))))) (h!71960 s!2326))))))

(declare-fun b!6570030 () Bool)

(declare-fun e!3976826 () Bool)

(assert (=> b!6570030 (= e!3976826 (nullable!6438 (h!71958 (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408275)))))))))

(declare-fun d!2061386 () Bool)

(declare-fun c!1207776 () Bool)

(assert (=> d!2061386 (= c!1207776 e!3976826)))

(declare-fun res!2696240 () Bool)

(assert (=> d!2061386 (=> (not res!2696240) (not e!3976826))))

(assert (=> d!2061386 (= res!2696240 ((_ is Cons!65510) (exprs!6329 (Context!11659 (t!379278 (exprs!6329 lt!2408275))))))))

(assert (=> d!2061386 (= (derivationStepZipperUp!1619 (Context!11659 (t!379278 (exprs!6329 lt!2408275))) (h!71960 s!2326)) e!3976824)))

(assert (= (and d!2061386 res!2696240) b!6570030))

(assert (= (and d!2061386 c!1207776) b!6570033))

(assert (= (and d!2061386 (not c!1207776)) b!6570032))

(assert (= (and b!6570032 c!1207775) b!6570029))

(assert (= (and b!6570032 (not c!1207775)) b!6570031))

(assert (= (or b!6570033 b!6570029) bm!571694))

(declare-fun m!7352086 () Bool)

(assert (=> bm!571694 m!7352086))

(declare-fun m!7352088 () Bool)

(assert (=> b!6570033 m!7352088))

(declare-fun m!7352090 () Bool)

(assert (=> b!6570030 m!7352090))

(assert (=> b!6568841 d!2061386))

(declare-fun condSetEmpty!44859 () Bool)

(assert (=> setNonEmpty!44852 (= condSetEmpty!44859 (= setRest!44852 ((as const (Array Context!11658 Bool)) false)))))

(declare-fun setRes!44859 () Bool)

(assert (=> setNonEmpty!44852 (= tp!1813573 setRes!44859)))

(declare-fun setIsEmpty!44859 () Bool)

(assert (=> setIsEmpty!44859 setRes!44859))

(declare-fun e!3976827 () Bool)

(declare-fun tp!1813655 () Bool)

(declare-fun setElem!44859 () Context!11658)

(declare-fun setNonEmpty!44859 () Bool)

(assert (=> setNonEmpty!44859 (= setRes!44859 (and tp!1813655 (inv!84359 setElem!44859) e!3976827))))

(declare-fun setRest!44859 () (InoxSet Context!11658))

(assert (=> setNonEmpty!44859 (= setRest!44852 ((_ map or) (store ((as const (Array Context!11658 Bool)) false) setElem!44859 true) setRest!44859))))

(declare-fun b!6570034 () Bool)

(declare-fun tp!1813654 () Bool)

(assert (=> b!6570034 (= e!3976827 tp!1813654)))

(assert (= (and setNonEmpty!44852 condSetEmpty!44859) setIsEmpty!44859))

(assert (= (and setNonEmpty!44852 (not condSetEmpty!44859)) setNonEmpty!44859))

(assert (= setNonEmpty!44859 b!6570034))

(declare-fun m!7352092 () Bool)

(assert (=> setNonEmpty!44859 m!7352092))

(declare-fun b!6570036 () Bool)

(declare-fun e!3976828 () Bool)

(declare-fun tp!1813658 () Bool)

(declare-fun tp!1813659 () Bool)

(assert (=> b!6570036 (= e!3976828 (and tp!1813658 tp!1813659))))

(assert (=> b!6569445 (= tp!1813632 e!3976828)))

(declare-fun b!6570035 () Bool)

(assert (=> b!6570035 (= e!3976828 tp_is_empty!42143)))

(declare-fun b!6570037 () Bool)

(declare-fun tp!1813657 () Bool)

(assert (=> b!6570037 (= e!3976828 tp!1813657)))

(declare-fun b!6570038 () Bool)

(declare-fun tp!1813660 () Bool)

(declare-fun tp!1813656 () Bool)

(assert (=> b!6570038 (= e!3976828 (and tp!1813660 tp!1813656))))

(assert (= (and b!6569445 ((_ is ElementMatch!16445) (regOne!33403 (regTwo!33403 r!7292)))) b!6570035))

(assert (= (and b!6569445 ((_ is Concat!25290) (regOne!33403 (regTwo!33403 r!7292)))) b!6570036))

(assert (= (and b!6569445 ((_ is Star!16445) (regOne!33403 (regTwo!33403 r!7292)))) b!6570037))

(assert (= (and b!6569445 ((_ is Union!16445) (regOne!33403 (regTwo!33403 r!7292)))) b!6570038))

(declare-fun b!6570040 () Bool)

(declare-fun e!3976829 () Bool)

(declare-fun tp!1813663 () Bool)

(declare-fun tp!1813664 () Bool)

(assert (=> b!6570040 (= e!3976829 (and tp!1813663 tp!1813664))))

(assert (=> b!6569445 (= tp!1813628 e!3976829)))

(declare-fun b!6570039 () Bool)

(assert (=> b!6570039 (= e!3976829 tp_is_empty!42143)))

(declare-fun b!6570041 () Bool)

(declare-fun tp!1813662 () Bool)

(assert (=> b!6570041 (= e!3976829 tp!1813662)))

(declare-fun b!6570042 () Bool)

(declare-fun tp!1813665 () Bool)

(declare-fun tp!1813661 () Bool)

(assert (=> b!6570042 (= e!3976829 (and tp!1813665 tp!1813661))))

(assert (= (and b!6569445 ((_ is ElementMatch!16445) (regTwo!33403 (regTwo!33403 r!7292)))) b!6570039))

(assert (= (and b!6569445 ((_ is Concat!25290) (regTwo!33403 (regTwo!33403 r!7292)))) b!6570040))

(assert (= (and b!6569445 ((_ is Star!16445) (regTwo!33403 (regTwo!33403 r!7292)))) b!6570041))

(assert (= (and b!6569445 ((_ is Union!16445) (regTwo!33403 (regTwo!33403 r!7292)))) b!6570042))

(declare-fun b!6570044 () Bool)

(declare-fun e!3976830 () Bool)

(declare-fun tp!1813668 () Bool)

(declare-fun tp!1813669 () Bool)

(assert (=> b!6570044 (= e!3976830 (and tp!1813668 tp!1813669))))

(assert (=> b!6569444 (= tp!1813629 e!3976830)))

(declare-fun b!6570043 () Bool)

(assert (=> b!6570043 (= e!3976830 tp_is_empty!42143)))

(declare-fun b!6570045 () Bool)

(declare-fun tp!1813667 () Bool)

(assert (=> b!6570045 (= e!3976830 tp!1813667)))

(declare-fun b!6570046 () Bool)

(declare-fun tp!1813670 () Bool)

(declare-fun tp!1813666 () Bool)

(assert (=> b!6570046 (= e!3976830 (and tp!1813670 tp!1813666))))

(assert (= (and b!6569444 ((_ is ElementMatch!16445) (reg!16774 (regTwo!33403 r!7292)))) b!6570043))

(assert (= (and b!6569444 ((_ is Concat!25290) (reg!16774 (regTwo!33403 r!7292)))) b!6570044))

(assert (= (and b!6569444 ((_ is Star!16445) (reg!16774 (regTwo!33403 r!7292)))) b!6570045))

(assert (= (and b!6569444 ((_ is Union!16445) (reg!16774 (regTwo!33403 r!7292)))) b!6570046))

(declare-fun b!6570048 () Bool)

(declare-fun e!3976831 () Bool)

(declare-fun tp!1813673 () Bool)

(declare-fun tp!1813674 () Bool)

(assert (=> b!6570048 (= e!3976831 (and tp!1813673 tp!1813674))))

(assert (=> b!6569443 (= tp!1813630 e!3976831)))

(declare-fun b!6570047 () Bool)

(assert (=> b!6570047 (= e!3976831 tp_is_empty!42143)))

(declare-fun b!6570049 () Bool)

(declare-fun tp!1813672 () Bool)

(assert (=> b!6570049 (= e!3976831 tp!1813672)))

(declare-fun b!6570050 () Bool)

(declare-fun tp!1813675 () Bool)

(declare-fun tp!1813671 () Bool)

(assert (=> b!6570050 (= e!3976831 (and tp!1813675 tp!1813671))))

(assert (= (and b!6569443 ((_ is ElementMatch!16445) (regOne!33402 (regTwo!33403 r!7292)))) b!6570047))

(assert (= (and b!6569443 ((_ is Concat!25290) (regOne!33402 (regTwo!33403 r!7292)))) b!6570048))

(assert (= (and b!6569443 ((_ is Star!16445) (regOne!33402 (regTwo!33403 r!7292)))) b!6570049))

(assert (= (and b!6569443 ((_ is Union!16445) (regOne!33402 (regTwo!33403 r!7292)))) b!6570050))

(declare-fun b!6570052 () Bool)

(declare-fun e!3976832 () Bool)

(declare-fun tp!1813678 () Bool)

(declare-fun tp!1813679 () Bool)

(assert (=> b!6570052 (= e!3976832 (and tp!1813678 tp!1813679))))

(assert (=> b!6569443 (= tp!1813631 e!3976832)))

(declare-fun b!6570051 () Bool)

(assert (=> b!6570051 (= e!3976832 tp_is_empty!42143)))

(declare-fun b!6570053 () Bool)

(declare-fun tp!1813677 () Bool)

(assert (=> b!6570053 (= e!3976832 tp!1813677)))

(declare-fun b!6570054 () Bool)

(declare-fun tp!1813680 () Bool)

(declare-fun tp!1813676 () Bool)

(assert (=> b!6570054 (= e!3976832 (and tp!1813680 tp!1813676))))

(assert (= (and b!6569443 ((_ is ElementMatch!16445) (regTwo!33402 (regTwo!33403 r!7292)))) b!6570051))

(assert (= (and b!6569443 ((_ is Concat!25290) (regTwo!33402 (regTwo!33403 r!7292)))) b!6570052))

(assert (= (and b!6569443 ((_ is Star!16445) (regTwo!33402 (regTwo!33403 r!7292)))) b!6570053))

(assert (= (and b!6569443 ((_ is Union!16445) (regTwo!33402 (regTwo!33403 r!7292)))) b!6570054))

(declare-fun b!6570055 () Bool)

(declare-fun e!3976833 () Bool)

(declare-fun tp!1813681 () Bool)

(declare-fun tp!1813682 () Bool)

(assert (=> b!6570055 (= e!3976833 (and tp!1813681 tp!1813682))))

(assert (=> b!6569423 (= tp!1813603 e!3976833)))

(assert (= (and b!6569423 ((_ is Cons!65510) (exprs!6329 (h!71959 (t!379279 zl!343))))) b!6570055))

(declare-fun b!6570057 () Bool)

(declare-fun e!3976834 () Bool)

(declare-fun tp!1813685 () Bool)

(declare-fun tp!1813686 () Bool)

(assert (=> b!6570057 (= e!3976834 (and tp!1813685 tp!1813686))))

(assert (=> b!6569436 (= tp!1813620 e!3976834)))

(declare-fun b!6570056 () Bool)

(assert (=> b!6570056 (= e!3976834 tp_is_empty!42143)))

(declare-fun b!6570058 () Bool)

(declare-fun tp!1813684 () Bool)

(assert (=> b!6570058 (= e!3976834 tp!1813684)))

(declare-fun b!6570059 () Bool)

(declare-fun tp!1813687 () Bool)

(declare-fun tp!1813683 () Bool)

(assert (=> b!6570059 (= e!3976834 (and tp!1813687 tp!1813683))))

(assert (= (and b!6569436 ((_ is ElementMatch!16445) (regOne!33403 (regTwo!33402 r!7292)))) b!6570056))

(assert (= (and b!6569436 ((_ is Concat!25290) (regOne!33403 (regTwo!33402 r!7292)))) b!6570057))

(assert (= (and b!6569436 ((_ is Star!16445) (regOne!33403 (regTwo!33402 r!7292)))) b!6570058))

(assert (= (and b!6569436 ((_ is Union!16445) (regOne!33403 (regTwo!33402 r!7292)))) b!6570059))

(declare-fun b!6570061 () Bool)

(declare-fun e!3976835 () Bool)

(declare-fun tp!1813690 () Bool)

(declare-fun tp!1813691 () Bool)

(assert (=> b!6570061 (= e!3976835 (and tp!1813690 tp!1813691))))

(assert (=> b!6569436 (= tp!1813616 e!3976835)))

(declare-fun b!6570060 () Bool)

(assert (=> b!6570060 (= e!3976835 tp_is_empty!42143)))

(declare-fun b!6570062 () Bool)

(declare-fun tp!1813689 () Bool)

(assert (=> b!6570062 (= e!3976835 tp!1813689)))

(declare-fun b!6570063 () Bool)

(declare-fun tp!1813692 () Bool)

(declare-fun tp!1813688 () Bool)

(assert (=> b!6570063 (= e!3976835 (and tp!1813692 tp!1813688))))

(assert (= (and b!6569436 ((_ is ElementMatch!16445) (regTwo!33403 (regTwo!33402 r!7292)))) b!6570060))

(assert (= (and b!6569436 ((_ is Concat!25290) (regTwo!33403 (regTwo!33402 r!7292)))) b!6570061))

(assert (= (and b!6569436 ((_ is Star!16445) (regTwo!33403 (regTwo!33402 r!7292)))) b!6570062))

(assert (= (and b!6569436 ((_ is Union!16445) (regTwo!33403 (regTwo!33402 r!7292)))) b!6570063))

(declare-fun b!6570065 () Bool)

(declare-fun e!3976836 () Bool)

(declare-fun tp!1813695 () Bool)

(declare-fun tp!1813696 () Bool)

(assert (=> b!6570065 (= e!3976836 (and tp!1813695 tp!1813696))))

(assert (=> b!6569428 (= tp!1813609 e!3976836)))

(declare-fun b!6570064 () Bool)

(assert (=> b!6570064 (= e!3976836 tp_is_empty!42143)))

(declare-fun b!6570066 () Bool)

(declare-fun tp!1813694 () Bool)

(assert (=> b!6570066 (= e!3976836 tp!1813694)))

(declare-fun b!6570067 () Bool)

(declare-fun tp!1813697 () Bool)

(declare-fun tp!1813693 () Bool)

(assert (=> b!6570067 (= e!3976836 (and tp!1813697 tp!1813693))))

(assert (= (and b!6569428 ((_ is ElementMatch!16445) (h!71958 (exprs!6329 (h!71959 zl!343))))) b!6570064))

(assert (= (and b!6569428 ((_ is Concat!25290) (h!71958 (exprs!6329 (h!71959 zl!343))))) b!6570065))

(assert (= (and b!6569428 ((_ is Star!16445) (h!71958 (exprs!6329 (h!71959 zl!343))))) b!6570066))

(assert (= (and b!6569428 ((_ is Union!16445) (h!71958 (exprs!6329 (h!71959 zl!343))))) b!6570067))

(declare-fun b!6570068 () Bool)

(declare-fun e!3976837 () Bool)

(declare-fun tp!1813698 () Bool)

(declare-fun tp!1813699 () Bool)

(assert (=> b!6570068 (= e!3976837 (and tp!1813698 tp!1813699))))

(assert (=> b!6569428 (= tp!1813610 e!3976837)))

(assert (= (and b!6569428 ((_ is Cons!65510) (t!379278 (exprs!6329 (h!71959 zl!343))))) b!6570068))

(declare-fun b!6570070 () Bool)

(declare-fun e!3976839 () Bool)

(declare-fun tp!1813700 () Bool)

(assert (=> b!6570070 (= e!3976839 tp!1813700)))

(declare-fun tp!1813701 () Bool)

(declare-fun b!6570069 () Bool)

(declare-fun e!3976838 () Bool)

(assert (=> b!6570069 (= e!3976838 (and (inv!84359 (h!71959 (t!379279 (t!379279 zl!343)))) e!3976839 tp!1813701))))

(assert (=> b!6569422 (= tp!1813604 e!3976838)))

(assert (= b!6570069 b!6570070))

(assert (= (and b!6569422 ((_ is Cons!65511) (t!379279 (t!379279 zl!343)))) b!6570069))

(declare-fun m!7352094 () Bool)

(assert (=> b!6570069 m!7352094))

(declare-fun b!6570072 () Bool)

(declare-fun e!3976840 () Bool)

(declare-fun tp!1813704 () Bool)

(declare-fun tp!1813705 () Bool)

(assert (=> b!6570072 (= e!3976840 (and tp!1813704 tp!1813705))))

(assert (=> b!6569435 (= tp!1813617 e!3976840)))

(declare-fun b!6570071 () Bool)

(assert (=> b!6570071 (= e!3976840 tp_is_empty!42143)))

(declare-fun b!6570073 () Bool)

(declare-fun tp!1813703 () Bool)

(assert (=> b!6570073 (= e!3976840 tp!1813703)))

(declare-fun b!6570074 () Bool)

(declare-fun tp!1813706 () Bool)

(declare-fun tp!1813702 () Bool)

(assert (=> b!6570074 (= e!3976840 (and tp!1813706 tp!1813702))))

(assert (= (and b!6569435 ((_ is ElementMatch!16445) (reg!16774 (regTwo!33402 r!7292)))) b!6570071))

(assert (= (and b!6569435 ((_ is Concat!25290) (reg!16774 (regTwo!33402 r!7292)))) b!6570072))

(assert (= (and b!6569435 ((_ is Star!16445) (reg!16774 (regTwo!33402 r!7292)))) b!6570073))

(assert (= (and b!6569435 ((_ is Union!16445) (reg!16774 (regTwo!33402 r!7292)))) b!6570074))

(declare-fun b!6570076 () Bool)

(declare-fun e!3976841 () Bool)

(declare-fun tp!1813709 () Bool)

(declare-fun tp!1813710 () Bool)

(assert (=> b!6570076 (= e!3976841 (and tp!1813709 tp!1813710))))

(assert (=> b!6569430 (= tp!1813613 e!3976841)))

(declare-fun b!6570075 () Bool)

(assert (=> b!6570075 (= e!3976841 tp_is_empty!42143)))

(declare-fun b!6570077 () Bool)

(declare-fun tp!1813708 () Bool)

(assert (=> b!6570077 (= e!3976841 tp!1813708)))

(declare-fun b!6570078 () Bool)

(declare-fun tp!1813711 () Bool)

(declare-fun tp!1813707 () Bool)

(assert (=> b!6570078 (= e!3976841 (and tp!1813711 tp!1813707))))

(assert (= (and b!6569430 ((_ is ElementMatch!16445) (regOne!33402 (regOne!33402 r!7292)))) b!6570075))

(assert (= (and b!6569430 ((_ is Concat!25290) (regOne!33402 (regOne!33402 r!7292)))) b!6570076))

(assert (= (and b!6569430 ((_ is Star!16445) (regOne!33402 (regOne!33402 r!7292)))) b!6570077))

(assert (= (and b!6569430 ((_ is Union!16445) (regOne!33402 (regOne!33402 r!7292)))) b!6570078))

(declare-fun b!6570080 () Bool)

(declare-fun e!3976842 () Bool)

(declare-fun tp!1813714 () Bool)

(declare-fun tp!1813715 () Bool)

(assert (=> b!6570080 (= e!3976842 (and tp!1813714 tp!1813715))))

(assert (=> b!6569430 (= tp!1813614 e!3976842)))

(declare-fun b!6570079 () Bool)

(assert (=> b!6570079 (= e!3976842 tp_is_empty!42143)))

(declare-fun b!6570081 () Bool)

(declare-fun tp!1813713 () Bool)

(assert (=> b!6570081 (= e!3976842 tp!1813713)))

(declare-fun b!6570082 () Bool)

(declare-fun tp!1813716 () Bool)

(declare-fun tp!1813712 () Bool)

(assert (=> b!6570082 (= e!3976842 (and tp!1813716 tp!1813712))))

(assert (= (and b!6569430 ((_ is ElementMatch!16445) (regTwo!33402 (regOne!33402 r!7292)))) b!6570079))

(assert (= (and b!6569430 ((_ is Concat!25290) (regTwo!33402 (regOne!33402 r!7292)))) b!6570080))

(assert (= (and b!6569430 ((_ is Star!16445) (regTwo!33402 (regOne!33402 r!7292)))) b!6570081))

(assert (= (and b!6569430 ((_ is Union!16445) (regTwo!33402 (regOne!33402 r!7292)))) b!6570082))

(declare-fun b!6570083 () Bool)

(declare-fun e!3976843 () Bool)

(declare-fun tp!1813717 () Bool)

(declare-fun tp!1813718 () Bool)

(assert (=> b!6570083 (= e!3976843 (and tp!1813717 tp!1813718))))

(assert (=> b!6569393 (= tp!1813572 e!3976843)))

(assert (= (and b!6569393 ((_ is Cons!65510) (exprs!6329 setElem!44852))) b!6570083))

(declare-fun b!6570085 () Bool)

(declare-fun e!3976844 () Bool)

(declare-fun tp!1813721 () Bool)

(declare-fun tp!1813722 () Bool)

(assert (=> b!6570085 (= e!3976844 (and tp!1813721 tp!1813722))))

(assert (=> b!6569437 (= tp!1813621 e!3976844)))

(declare-fun b!6570084 () Bool)

(assert (=> b!6570084 (= e!3976844 tp_is_empty!42143)))

(declare-fun b!6570086 () Bool)

(declare-fun tp!1813720 () Bool)

(assert (=> b!6570086 (= e!3976844 tp!1813720)))

(declare-fun b!6570087 () Bool)

(declare-fun tp!1813723 () Bool)

(declare-fun tp!1813719 () Bool)

(assert (=> b!6570087 (= e!3976844 (and tp!1813723 tp!1813719))))

(assert (= (and b!6569437 ((_ is ElementMatch!16445) (h!71958 (exprs!6329 setElem!44846)))) b!6570084))

(assert (= (and b!6569437 ((_ is Concat!25290) (h!71958 (exprs!6329 setElem!44846)))) b!6570085))

(assert (= (and b!6569437 ((_ is Star!16445) (h!71958 (exprs!6329 setElem!44846)))) b!6570086))

(assert (= (and b!6569437 ((_ is Union!16445) (h!71958 (exprs!6329 setElem!44846)))) b!6570087))

(declare-fun b!6570088 () Bool)

(declare-fun e!3976845 () Bool)

(declare-fun tp!1813724 () Bool)

(declare-fun tp!1813725 () Bool)

(assert (=> b!6570088 (= e!3976845 (and tp!1813724 tp!1813725))))

(assert (=> b!6569437 (= tp!1813622 e!3976845)))

(assert (= (and b!6569437 ((_ is Cons!65510) (t!379278 (exprs!6329 setElem!44846)))) b!6570088))

(declare-fun b!6570090 () Bool)

(declare-fun e!3976846 () Bool)

(declare-fun tp!1813728 () Bool)

(declare-fun tp!1813729 () Bool)

(assert (=> b!6570090 (= e!3976846 (and tp!1813728 tp!1813729))))

(assert (=> b!6569440 (= tp!1813624 e!3976846)))

(declare-fun b!6570089 () Bool)

(assert (=> b!6570089 (= e!3976846 tp_is_empty!42143)))

(declare-fun b!6570091 () Bool)

(declare-fun tp!1813727 () Bool)

(assert (=> b!6570091 (= e!3976846 tp!1813727)))

(declare-fun b!6570092 () Bool)

(declare-fun tp!1813730 () Bool)

(declare-fun tp!1813726 () Bool)

(assert (=> b!6570092 (= e!3976846 (and tp!1813730 tp!1813726))))

(assert (= (and b!6569440 ((_ is ElementMatch!16445) (reg!16774 (regOne!33403 r!7292)))) b!6570089))

(assert (= (and b!6569440 ((_ is Concat!25290) (reg!16774 (regOne!33403 r!7292)))) b!6570090))

(assert (= (and b!6569440 ((_ is Star!16445) (reg!16774 (regOne!33403 r!7292)))) b!6570091))

(assert (= (and b!6569440 ((_ is Union!16445) (reg!16774 (regOne!33403 r!7292)))) b!6570092))

(declare-fun b!6570094 () Bool)

(declare-fun e!3976847 () Bool)

(declare-fun tp!1813733 () Bool)

(declare-fun tp!1813734 () Bool)

(assert (=> b!6570094 (= e!3976847 (and tp!1813733 tp!1813734))))

(assert (=> b!6569439 (= tp!1813625 e!3976847)))

(declare-fun b!6570093 () Bool)

(assert (=> b!6570093 (= e!3976847 tp_is_empty!42143)))

(declare-fun b!6570095 () Bool)

(declare-fun tp!1813732 () Bool)

(assert (=> b!6570095 (= e!3976847 tp!1813732)))

(declare-fun b!6570096 () Bool)

(declare-fun tp!1813735 () Bool)

(declare-fun tp!1813731 () Bool)

(assert (=> b!6570096 (= e!3976847 (and tp!1813735 tp!1813731))))

(assert (= (and b!6569439 ((_ is ElementMatch!16445) (regOne!33402 (regOne!33403 r!7292)))) b!6570093))

(assert (= (and b!6569439 ((_ is Concat!25290) (regOne!33402 (regOne!33403 r!7292)))) b!6570094))

(assert (= (and b!6569439 ((_ is Star!16445) (regOne!33402 (regOne!33403 r!7292)))) b!6570095))

(assert (= (and b!6569439 ((_ is Union!16445) (regOne!33402 (regOne!33403 r!7292)))) b!6570096))

(declare-fun b!6570098 () Bool)

(declare-fun e!3976848 () Bool)

(declare-fun tp!1813738 () Bool)

(declare-fun tp!1813739 () Bool)

(assert (=> b!6570098 (= e!3976848 (and tp!1813738 tp!1813739))))

(assert (=> b!6569439 (= tp!1813626 e!3976848)))

(declare-fun b!6570097 () Bool)

(assert (=> b!6570097 (= e!3976848 tp_is_empty!42143)))

(declare-fun b!6570099 () Bool)

(declare-fun tp!1813737 () Bool)

(assert (=> b!6570099 (= e!3976848 tp!1813737)))

(declare-fun b!6570100 () Bool)

(declare-fun tp!1813740 () Bool)

(declare-fun tp!1813736 () Bool)

(assert (=> b!6570100 (= e!3976848 (and tp!1813740 tp!1813736))))

(assert (= (and b!6569439 ((_ is ElementMatch!16445) (regTwo!33402 (regOne!33403 r!7292)))) b!6570097))

(assert (= (and b!6569439 ((_ is Concat!25290) (regTwo!33402 (regOne!33403 r!7292)))) b!6570098))

(assert (= (and b!6569439 ((_ is Star!16445) (regTwo!33402 (regOne!33403 r!7292)))) b!6570099))

(assert (= (and b!6569439 ((_ is Union!16445) (regTwo!33402 (regOne!33403 r!7292)))) b!6570100))

(declare-fun b!6570102 () Bool)

(declare-fun e!3976849 () Bool)

(declare-fun tp!1813743 () Bool)

(declare-fun tp!1813744 () Bool)

(assert (=> b!6570102 (= e!3976849 (and tp!1813743 tp!1813744))))

(assert (=> b!6569432 (= tp!1813615 e!3976849)))

(declare-fun b!6570101 () Bool)

(assert (=> b!6570101 (= e!3976849 tp_is_empty!42143)))

(declare-fun b!6570103 () Bool)

(declare-fun tp!1813742 () Bool)

(assert (=> b!6570103 (= e!3976849 tp!1813742)))

(declare-fun b!6570104 () Bool)

(declare-fun tp!1813745 () Bool)

(declare-fun tp!1813741 () Bool)

(assert (=> b!6570104 (= e!3976849 (and tp!1813745 tp!1813741))))

(assert (= (and b!6569432 ((_ is ElementMatch!16445) (regOne!33403 (regOne!33402 r!7292)))) b!6570101))

(assert (= (and b!6569432 ((_ is Concat!25290) (regOne!33403 (regOne!33402 r!7292)))) b!6570102))

(assert (= (and b!6569432 ((_ is Star!16445) (regOne!33403 (regOne!33402 r!7292)))) b!6570103))

(assert (= (and b!6569432 ((_ is Union!16445) (regOne!33403 (regOne!33402 r!7292)))) b!6570104))

(declare-fun b!6570106 () Bool)

(declare-fun e!3976850 () Bool)

(declare-fun tp!1813748 () Bool)

(declare-fun tp!1813749 () Bool)

(assert (=> b!6570106 (= e!3976850 (and tp!1813748 tp!1813749))))

(assert (=> b!6569432 (= tp!1813611 e!3976850)))

(declare-fun b!6570105 () Bool)

(assert (=> b!6570105 (= e!3976850 tp_is_empty!42143)))

(declare-fun b!6570107 () Bool)

(declare-fun tp!1813747 () Bool)

(assert (=> b!6570107 (= e!3976850 tp!1813747)))

(declare-fun b!6570108 () Bool)

(declare-fun tp!1813750 () Bool)

(declare-fun tp!1813746 () Bool)

(assert (=> b!6570108 (= e!3976850 (and tp!1813750 tp!1813746))))

(assert (= (and b!6569432 ((_ is ElementMatch!16445) (regTwo!33403 (regOne!33402 r!7292)))) b!6570105))

(assert (= (and b!6569432 ((_ is Concat!25290) (regTwo!33403 (regOne!33402 r!7292)))) b!6570106))

(assert (= (and b!6569432 ((_ is Star!16445) (regTwo!33403 (regOne!33402 r!7292)))) b!6570107))

(assert (= (and b!6569432 ((_ is Union!16445) (regTwo!33403 (regOne!33402 r!7292)))) b!6570108))

(declare-fun b!6570110 () Bool)

(declare-fun e!3976851 () Bool)

(declare-fun tp!1813753 () Bool)

(declare-fun tp!1813754 () Bool)

(assert (=> b!6570110 (= e!3976851 (and tp!1813753 tp!1813754))))

(assert (=> b!6569431 (= tp!1813612 e!3976851)))

(declare-fun b!6570109 () Bool)

(assert (=> b!6570109 (= e!3976851 tp_is_empty!42143)))

(declare-fun b!6570111 () Bool)

(declare-fun tp!1813752 () Bool)

(assert (=> b!6570111 (= e!3976851 tp!1813752)))

(declare-fun b!6570112 () Bool)

(declare-fun tp!1813755 () Bool)

(declare-fun tp!1813751 () Bool)

(assert (=> b!6570112 (= e!3976851 (and tp!1813755 tp!1813751))))

(assert (= (and b!6569431 ((_ is ElementMatch!16445) (reg!16774 (regOne!33402 r!7292)))) b!6570109))

(assert (= (and b!6569431 ((_ is Concat!25290) (reg!16774 (regOne!33402 r!7292)))) b!6570110))

(assert (= (and b!6569431 ((_ is Star!16445) (reg!16774 (regOne!33402 r!7292)))) b!6570111))

(assert (= (and b!6569431 ((_ is Union!16445) (reg!16774 (regOne!33402 r!7292)))) b!6570112))

(declare-fun b!6570114 () Bool)

(declare-fun e!3976852 () Bool)

(declare-fun tp!1813758 () Bool)

(declare-fun tp!1813759 () Bool)

(assert (=> b!6570114 (= e!3976852 (and tp!1813758 tp!1813759))))

(assert (=> b!6569434 (= tp!1813618 e!3976852)))

(declare-fun b!6570113 () Bool)

(assert (=> b!6570113 (= e!3976852 tp_is_empty!42143)))

(declare-fun b!6570115 () Bool)

(declare-fun tp!1813757 () Bool)

(assert (=> b!6570115 (= e!3976852 tp!1813757)))

(declare-fun b!6570116 () Bool)

(declare-fun tp!1813760 () Bool)

(declare-fun tp!1813756 () Bool)

(assert (=> b!6570116 (= e!3976852 (and tp!1813760 tp!1813756))))

(assert (= (and b!6569434 ((_ is ElementMatch!16445) (regOne!33402 (regTwo!33402 r!7292)))) b!6570113))

(assert (= (and b!6569434 ((_ is Concat!25290) (regOne!33402 (regTwo!33402 r!7292)))) b!6570114))

(assert (= (and b!6569434 ((_ is Star!16445) (regOne!33402 (regTwo!33402 r!7292)))) b!6570115))

(assert (= (and b!6569434 ((_ is Union!16445) (regOne!33402 (regTwo!33402 r!7292)))) b!6570116))

(declare-fun b!6570118 () Bool)

(declare-fun e!3976853 () Bool)

(declare-fun tp!1813763 () Bool)

(declare-fun tp!1813764 () Bool)

(assert (=> b!6570118 (= e!3976853 (and tp!1813763 tp!1813764))))

(assert (=> b!6569434 (= tp!1813619 e!3976853)))

(declare-fun b!6570117 () Bool)

(assert (=> b!6570117 (= e!3976853 tp_is_empty!42143)))

(declare-fun b!6570119 () Bool)

(declare-fun tp!1813762 () Bool)

(assert (=> b!6570119 (= e!3976853 tp!1813762)))

(declare-fun b!6570120 () Bool)

(declare-fun tp!1813765 () Bool)

(declare-fun tp!1813761 () Bool)

(assert (=> b!6570120 (= e!3976853 (and tp!1813765 tp!1813761))))

(assert (= (and b!6569434 ((_ is ElementMatch!16445) (regTwo!33402 (regTwo!33402 r!7292)))) b!6570117))

(assert (= (and b!6569434 ((_ is Concat!25290) (regTwo!33402 (regTwo!33402 r!7292)))) b!6570118))

(assert (= (and b!6569434 ((_ is Star!16445) (regTwo!33402 (regTwo!33402 r!7292)))) b!6570119))

(assert (= (and b!6569434 ((_ is Union!16445) (regTwo!33402 (regTwo!33402 r!7292)))) b!6570120))

(declare-fun b!6570121 () Bool)

(declare-fun e!3976854 () Bool)

(declare-fun tp!1813766 () Bool)

(assert (=> b!6570121 (= e!3976854 (and tp_is_empty!42143 tp!1813766))))

(assert (=> b!6569450 (= tp!1813635 e!3976854)))

(assert (= (and b!6569450 ((_ is Cons!65512) (t!379280 (t!379280 s!2326)))) b!6570121))

(declare-fun b!6570123 () Bool)

(declare-fun e!3976855 () Bool)

(declare-fun tp!1813769 () Bool)

(declare-fun tp!1813770 () Bool)

(assert (=> b!6570123 (= e!3976855 (and tp!1813769 tp!1813770))))

(assert (=> b!6569415 (= tp!1813598 e!3976855)))

(declare-fun b!6570122 () Bool)

(assert (=> b!6570122 (= e!3976855 tp_is_empty!42143)))

(declare-fun b!6570124 () Bool)

(declare-fun tp!1813768 () Bool)

(assert (=> b!6570124 (= e!3976855 tp!1813768)))

(declare-fun b!6570125 () Bool)

(declare-fun tp!1813771 () Bool)

(declare-fun tp!1813767 () Bool)

(assert (=> b!6570125 (= e!3976855 (and tp!1813771 tp!1813767))))

(assert (= (and b!6569415 ((_ is ElementMatch!16445) (regOne!33403 (reg!16774 r!7292)))) b!6570122))

(assert (= (and b!6569415 ((_ is Concat!25290) (regOne!33403 (reg!16774 r!7292)))) b!6570123))

(assert (= (and b!6569415 ((_ is Star!16445) (regOne!33403 (reg!16774 r!7292)))) b!6570124))

(assert (= (and b!6569415 ((_ is Union!16445) (regOne!33403 (reg!16774 r!7292)))) b!6570125))

(declare-fun b!6570127 () Bool)

(declare-fun e!3976856 () Bool)

(declare-fun tp!1813774 () Bool)

(declare-fun tp!1813775 () Bool)

(assert (=> b!6570127 (= e!3976856 (and tp!1813774 tp!1813775))))

(assert (=> b!6569415 (= tp!1813594 e!3976856)))

(declare-fun b!6570126 () Bool)

(assert (=> b!6570126 (= e!3976856 tp_is_empty!42143)))

(declare-fun b!6570128 () Bool)

(declare-fun tp!1813773 () Bool)

(assert (=> b!6570128 (= e!3976856 tp!1813773)))

(declare-fun b!6570129 () Bool)

(declare-fun tp!1813776 () Bool)

(declare-fun tp!1813772 () Bool)

(assert (=> b!6570129 (= e!3976856 (and tp!1813776 tp!1813772))))

(assert (= (and b!6569415 ((_ is ElementMatch!16445) (regTwo!33403 (reg!16774 r!7292)))) b!6570126))

(assert (= (and b!6569415 ((_ is Concat!25290) (regTwo!33403 (reg!16774 r!7292)))) b!6570127))

(assert (= (and b!6569415 ((_ is Star!16445) (regTwo!33403 (reg!16774 r!7292)))) b!6570128))

(assert (= (and b!6569415 ((_ is Union!16445) (regTwo!33403 (reg!16774 r!7292)))) b!6570129))

(declare-fun b!6570131 () Bool)

(declare-fun e!3976857 () Bool)

(declare-fun tp!1813779 () Bool)

(declare-fun tp!1813780 () Bool)

(assert (=> b!6570131 (= e!3976857 (and tp!1813779 tp!1813780))))

(assert (=> b!6569414 (= tp!1813595 e!3976857)))

(declare-fun b!6570130 () Bool)

(assert (=> b!6570130 (= e!3976857 tp_is_empty!42143)))

(declare-fun b!6570132 () Bool)

(declare-fun tp!1813778 () Bool)

(assert (=> b!6570132 (= e!3976857 tp!1813778)))

(declare-fun b!6570133 () Bool)

(declare-fun tp!1813781 () Bool)

(declare-fun tp!1813777 () Bool)

(assert (=> b!6570133 (= e!3976857 (and tp!1813781 tp!1813777))))

(assert (= (and b!6569414 ((_ is ElementMatch!16445) (reg!16774 (reg!16774 r!7292)))) b!6570130))

(assert (= (and b!6569414 ((_ is Concat!25290) (reg!16774 (reg!16774 r!7292)))) b!6570131))

(assert (= (and b!6569414 ((_ is Star!16445) (reg!16774 (reg!16774 r!7292)))) b!6570132))

(assert (= (and b!6569414 ((_ is Union!16445) (reg!16774 (reg!16774 r!7292)))) b!6570133))

(declare-fun b!6570135 () Bool)

(declare-fun e!3976858 () Bool)

(declare-fun tp!1813784 () Bool)

(declare-fun tp!1813785 () Bool)

(assert (=> b!6570135 (= e!3976858 (and tp!1813784 tp!1813785))))

(assert (=> b!6569413 (= tp!1813596 e!3976858)))

(declare-fun b!6570134 () Bool)

(assert (=> b!6570134 (= e!3976858 tp_is_empty!42143)))

(declare-fun b!6570136 () Bool)

(declare-fun tp!1813783 () Bool)

(assert (=> b!6570136 (= e!3976858 tp!1813783)))

(declare-fun b!6570137 () Bool)

(declare-fun tp!1813786 () Bool)

(declare-fun tp!1813782 () Bool)

(assert (=> b!6570137 (= e!3976858 (and tp!1813786 tp!1813782))))

(assert (= (and b!6569413 ((_ is ElementMatch!16445) (regOne!33402 (reg!16774 r!7292)))) b!6570134))

(assert (= (and b!6569413 ((_ is Concat!25290) (regOne!33402 (reg!16774 r!7292)))) b!6570135))

(assert (= (and b!6569413 ((_ is Star!16445) (regOne!33402 (reg!16774 r!7292)))) b!6570136))

(assert (= (and b!6569413 ((_ is Union!16445) (regOne!33402 (reg!16774 r!7292)))) b!6570137))

(declare-fun b!6570139 () Bool)

(declare-fun e!3976859 () Bool)

(declare-fun tp!1813789 () Bool)

(declare-fun tp!1813790 () Bool)

(assert (=> b!6570139 (= e!3976859 (and tp!1813789 tp!1813790))))

(assert (=> b!6569413 (= tp!1813597 e!3976859)))

(declare-fun b!6570138 () Bool)

(assert (=> b!6570138 (= e!3976859 tp_is_empty!42143)))

(declare-fun b!6570140 () Bool)

(declare-fun tp!1813788 () Bool)

(assert (=> b!6570140 (= e!3976859 tp!1813788)))

(declare-fun b!6570141 () Bool)

(declare-fun tp!1813791 () Bool)

(declare-fun tp!1813787 () Bool)

(assert (=> b!6570141 (= e!3976859 (and tp!1813791 tp!1813787))))

(assert (= (and b!6569413 ((_ is ElementMatch!16445) (regTwo!33402 (reg!16774 r!7292)))) b!6570138))

(assert (= (and b!6569413 ((_ is Concat!25290) (regTwo!33402 (reg!16774 r!7292)))) b!6570139))

(assert (= (and b!6569413 ((_ is Star!16445) (regTwo!33402 (reg!16774 r!7292)))) b!6570140))

(assert (= (and b!6569413 ((_ is Union!16445) (regTwo!33402 (reg!16774 r!7292)))) b!6570141))

(declare-fun b!6570143 () Bool)

(declare-fun e!3976860 () Bool)

(declare-fun tp!1813794 () Bool)

(declare-fun tp!1813795 () Bool)

(assert (=> b!6570143 (= e!3976860 (and tp!1813794 tp!1813795))))

(assert (=> b!6569441 (= tp!1813627 e!3976860)))

(declare-fun b!6570142 () Bool)

(assert (=> b!6570142 (= e!3976860 tp_is_empty!42143)))

(declare-fun b!6570144 () Bool)

(declare-fun tp!1813793 () Bool)

(assert (=> b!6570144 (= e!3976860 tp!1813793)))

(declare-fun b!6570145 () Bool)

(declare-fun tp!1813796 () Bool)

(declare-fun tp!1813792 () Bool)

(assert (=> b!6570145 (= e!3976860 (and tp!1813796 tp!1813792))))

(assert (= (and b!6569441 ((_ is ElementMatch!16445) (regOne!33403 (regOne!33403 r!7292)))) b!6570142))

(assert (= (and b!6569441 ((_ is Concat!25290) (regOne!33403 (regOne!33403 r!7292)))) b!6570143))

(assert (= (and b!6569441 ((_ is Star!16445) (regOne!33403 (regOne!33403 r!7292)))) b!6570144))

(assert (= (and b!6569441 ((_ is Union!16445) (regOne!33403 (regOne!33403 r!7292)))) b!6570145))

(declare-fun b!6570147 () Bool)

(declare-fun e!3976861 () Bool)

(declare-fun tp!1813799 () Bool)

(declare-fun tp!1813800 () Bool)

(assert (=> b!6570147 (= e!3976861 (and tp!1813799 tp!1813800))))

(assert (=> b!6569441 (= tp!1813623 e!3976861)))

(declare-fun b!6570146 () Bool)

(assert (=> b!6570146 (= e!3976861 tp_is_empty!42143)))

(declare-fun b!6570148 () Bool)

(declare-fun tp!1813798 () Bool)

(assert (=> b!6570148 (= e!3976861 tp!1813798)))

(declare-fun b!6570149 () Bool)

(declare-fun tp!1813801 () Bool)

(declare-fun tp!1813797 () Bool)

(assert (=> b!6570149 (= e!3976861 (and tp!1813801 tp!1813797))))

(assert (= (and b!6569441 ((_ is ElementMatch!16445) (regTwo!33403 (regOne!33403 r!7292)))) b!6570146))

(assert (= (and b!6569441 ((_ is Concat!25290) (regTwo!33403 (regOne!33403 r!7292)))) b!6570147))

(assert (= (and b!6569441 ((_ is Star!16445) (regTwo!33403 (regOne!33403 r!7292)))) b!6570148))

(assert (= (and b!6569441 ((_ is Union!16445) (regTwo!33403 (regOne!33403 r!7292)))) b!6570149))

(declare-fun b_lambda!248469 () Bool)

(assert (= b_lambda!248449 (or d!2061002 b_lambda!248469)))

(declare-fun bs!1678262 () Bool)

(declare-fun d!2061388 () Bool)

(assert (= bs!1678262 (and d!2061388 d!2061002)))

(assert (=> bs!1678262 (= (dynLambda!26064 lambda!365776 (h!71958 (unfocusZipperList!1866 zl!343))) (validRegex!8181 (h!71958 (unfocusZipperList!1866 zl!343))))))

(declare-fun m!7352096 () Bool)

(assert (=> bs!1678262 m!7352096))

(assert (=> b!6569536 d!2061388))

(declare-fun b_lambda!248471 () Bool)

(assert (= b_lambda!248463 (or d!2061006 b_lambda!248471)))

(declare-fun bs!1678263 () Bool)

(declare-fun d!2061390 () Bool)

(assert (= bs!1678263 (and d!2061390 d!2061006)))

(assert (=> bs!1678263 (= (dynLambda!26064 lambda!365783 (h!71958 lt!2408356)) (validRegex!8181 (h!71958 lt!2408356)))))

(declare-fun m!7352098 () Bool)

(assert (=> bs!1678263 m!7352098))

(assert (=> b!6569898 d!2061390))

(declare-fun b_lambda!248473 () Bool)

(assert (= b_lambda!248455 (or d!2060990 b_lambda!248473)))

(declare-fun bs!1678264 () Bool)

(declare-fun d!2061392 () Bool)

(assert (= bs!1678264 (and d!2061392 d!2060990)))

(assert (=> bs!1678264 (= (dynLambda!26064 lambda!365769 (h!71958 (exprs!6329 (h!71959 zl!343)))) (validRegex!8181 (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(declare-fun m!7352100 () Bool)

(assert (=> bs!1678264 m!7352100))

(assert (=> b!6569771 d!2061392))

(declare-fun b_lambda!248475 () Bool)

(assert (= b_lambda!248465 (or b!6568635 b_lambda!248475)))

(assert (=> d!2061326 d!2061108))

(declare-fun b_lambda!248477 () Bool)

(assert (= b_lambda!248451 (or d!2060992 b_lambda!248477)))

(declare-fun bs!1678265 () Bool)

(declare-fun d!2061394 () Bool)

(assert (= bs!1678265 (and d!2061394 d!2060992)))

(assert (=> bs!1678265 (= (dynLambda!26064 lambda!365772 (h!71958 (exprs!6329 (h!71959 zl!343)))) (validRegex!8181 (h!71958 (exprs!6329 (h!71959 zl!343)))))))

(assert (=> bs!1678265 m!7352100))

(assert (=> b!6569634 d!2061394))

(declare-fun b_lambda!248479 () Bool)

(assert (= b_lambda!248457 (or d!2060886 b_lambda!248479)))

(declare-fun bs!1678266 () Bool)

(declare-fun d!2061396 () Bool)

(assert (= bs!1678266 (and d!2061396 d!2060886)))

(assert (=> bs!1678266 (= (dynLambda!26064 lambda!365738 (h!71958 (exprs!6329 setElem!44846))) (validRegex!8181 (h!71958 (exprs!6329 setElem!44846))))))

(declare-fun m!7352102 () Bool)

(assert (=> bs!1678266 m!7352102))

(assert (=> b!6569810 d!2061396))

(declare-fun b_lambda!248481 () Bool)

(assert (= b_lambda!248461 (or b!6568635 b_lambda!248481)))

(assert (=> d!2061322 d!2061104))

(declare-fun b_lambda!248483 () Bool)

(assert (= b_lambda!248467 (or b!6568635 b_lambda!248483)))

(assert (=> d!2061380 d!2061106))

(declare-fun b_lambda!248485 () Bool)

(assert (= b_lambda!248453 (or d!2060998 b_lambda!248485)))

(declare-fun bs!1678267 () Bool)

(declare-fun d!2061398 () Bool)

(assert (= bs!1678267 (and d!2061398 d!2060998)))

(assert (=> bs!1678267 (= (dynLambda!26064 lambda!365773 (h!71958 (exprs!6329 lt!2408279))) (validRegex!8181 (h!71958 (exprs!6329 lt!2408279))))))

(declare-fun m!7352104 () Bool)

(assert (=> bs!1678267 m!7352104))

(assert (=> b!6569689 d!2061398))

(declare-fun b_lambda!248487 () Bool)

(assert (= b_lambda!248459 (or b!6568635 b_lambda!248487)))

(assert (=> d!2061316 d!2061102))

(check-sat (not b!6570072) (not bm!571673) (not b!6569803) (not b!6569522) (not b!6570100) (not b!6569478) (not b!6569842) (not d!2061368) (not b!6570094) (not bm!571690) (not d!2061316) (not d!2061300) (not b!6570059) (not bm!571587) (not b_lambda!248445) (not b!6570127) (not d!2061286) (not setNonEmpty!44856) (not b!6570120) (not d!2061276) (not b!6570083) (not b!6569800) (not bm!571564) (not b!6570078) (not b!6569560) (not b!6569811) (not b!6570125) (not b!6570119) (not bm!571643) (not b!6569729) (not bm!571637) (not bm!571583) (not bs!1678262) (not b!6569475) (not bm!571617) tp_is_empty!42143 (not bm!571598) (not b!6569834) (not b!6569537) (not d!2061332) (not b!6570058) (not d!2061284) (not b!6570129) (not d!2061230) (not b!6569455) (not d!2061344) (not b_lambda!248481) (not b!6569635) (not bm!571566) (not b_lambda!248473) (not b!6569825) (not b!6569952) (not b_lambda!248483) (not d!2061240) (not b!6569515) (not b!6569467) (not b!6569683) (not b!6569881) (not d!2061238) (not b!6569871) (not d!2061380) (not bs!1678265) (not b!6569514) (not b!6569806) (not bm!571664) (not b!6570099) (not setNonEmpty!44857) (not b!6569645) (not b!6569736) (not b_lambda!248479) (not d!2061252) (not bm!571618) (not b!6569685) (not b!6570076) (not setNonEmpty!44858) (not b!6570112) (not b!6570148) (not b!6570106) (not b!6569823) (not b!6569948) (not d!2061272) (not b!6569772) (not d!2061182) (not b!6569807) (not b!6569682) (not bm!571646) (not b!6569557) (not b!6570087) (not d!2061322) (not d!2061372) (not b!6570095) (not bm!571665) (not d!2061302) (not d!2061354) (not b!6569829) (not b!6569686) (not bm!571678) (not b!6570034) (not bm!571562) (not b!6570091) (not bm!571693) (not b!6570092) (not b!6569887) (not b!6570131) (not bm!571640) (not d!2061352) (not b!6570090) (not b!6569484) (not d!2061124) (not b!6570136) (not bm!571687) (not b!6569718) (not bm!571681) (not b!6569681) (not b!6570003) (not bm!571607) (not d!2061140) (not b!6569951) (not d!2061328) (not b!6569899) (not b!6570140) (not bs!1678263) (not bm!571645) (not b!6569461) (not bm!571605) (not d!2061336) (not b!6570104) (not b!6569896) (not d!2061338) (not b!6570096) (not b!6569901) (not b!6570098) (not b!6570068) (not b!6569640) (not b!6569665) (not b!6569743) (not b!6569583) (not d!2061262) (not b!6570065) (not bm!571629) (not b!6570080) (not b!6570108) (not b!6570086) (not bm!571581) (not bm!571580) (not b!6569586) (not b!6569579) (not b!6569883) (not b!6569913) (not b!6569773) (not b!6569507) (not bm!571659) (not b_lambda!248485) (not b!6569695) (not bm!571600) (not b!6570147) (not b!6570103) (not b!6569667) (not b!6569817) (not b!6570041) (not bm!571669) (not b!6570046) (not d!2061204) (not b!6570000) (not d!2061356) (not bm!571577) (not b!6569814) (not b!6570033) (not d!2061194) (not bm!571626) (not b!6570048) (not b!6569654) (not b!6569968) (not b!6570121) (not b!6569955) (not b!6570082) (not b!6570088) (not b!6569985) (not d!2061228) (not b!6569556) (not b!6569520) (not b!6569979) (not d!2061118) (not bm!571676) (not b!6569980) (not b!6570137) (not b!6569491) (not b!6569942) (not bm!571615) (not b!6570107) (not bm!571632) (not b!6570036) (not d!2061256) (not d!2061298) (not d!2061342) (not b!6570132) (not d!2061150) (not b!6569972) (not bm!571621) (not d!2061232) (not b!6570102) (not bm!571570) (not d!2061202) (not b!6570011) (not d!2061278) (not bm!571586) (not b!6569630) (not b!6570045) (not b!6570052) (not bm!571603) (not bm!571576) (not bm!571667) (not bm!571638) (not b_lambda!248487) (not b!6570141) (not b!6570081) (not bm!571579) (not b!6570110) (not b!6569728) (not b!6569657) (not b!6569893) (not b!6569594) (not b!6569755) (not b_lambda!248477) (not b!6570069) (not b!6569687) (not b!6570070) (not bm!571691) (not d!2061304) (not b!6570111) (not b!6570063) (not bm!571624) (not b!6569954) (not b!6569889) (not b!6569845) (not b!6569936) (not b!6569999) (not b!6569622) (not b!6570116) (not d!2061152) (not d!2061172) (not d!2061200) (not b!6569565) (not b!6570144) (not b!6570038) (not b!6569551) (not b!6569767) (not d!2061136) (not bm!571565) (not b!6569521) (not b!6569582) (not bm!571662) (not b!6570067) (not b!6570123) (not b!6569802) (not b!6569799) (not b!6570055) (not b_lambda!248441) (not b!6569894) (not b!6570057) (not bm!571651) (not d!2061330) (not bm!571682) (not bm!571649) (not b!6570077) (not b!6569690) (not b!6569950) (not b!6569673) (not b!6569805) (not bm!571608) (not d!2061186) (not b!6570143) (not b!6569558) (not setNonEmpty!44855) (not d!2061370) (not b!6570114) (not b!6570044) (not b!6570037) (not b!6570054) (not d!2061210) (not b!6570040) (not b!6569655) (not b!6569935) (not b!6569490) (not b!6569822) (not b!6569737) (not b!6569451) (not b!6569496) (not b!6569884) (not bm!571652) (not d!2061164) (not b!6570149) (not bm!571568) (not b!6569666) (not bm!571679) (not b!6569801) (not b!6569468) (not b!6569793) (not b!6569637) (not bm!571688) (not b!6569479) (not d!2061144) (not b!6569591) (not b_lambda!248475) (not b!6569713) (not b!6570025) (not d!2061326) (not b!6569921) (not d!2061128) (not bm!571597) (not b!6569886) (not bm!571610) (not b!6569466) (not b!6569578) (not b!6570115) (not b!6569778) (not b!6569892) (not b!6569679) (not bm!571694) (not bm!571685) (not b!6570008) (not b!6569653) (not bm!571675) (not b!6569963) (not b!6570128) (not d!2061292) (not b!6569568) (not b!6570073) (not bm!571571) (not b!6570133) (not bm!571561) (not d!2061198) (not d!2061320) (not b!6569809) (not b!6569528) (not b!6570053) (not b!6570020) (not b!6570061) (not b_lambda!248471) (not b!6569910) (not d!2061376) (not bm!571627) (not b!6569882) (not d!2061282) (not bm!571623) (not d!2061130) (not b_lambda!248443) (not bm!571611) (not b!6570001) (not b!6569826) (not d!2061208) (not b!6569928) (not bm!571689) (not b!6570042) (not bm!571635) (not b!6569971) (not b_lambda!248469) (not bm!571612) (not b!6570139) (not b!6569813) (not d!2061148) (not d!2061234) (not d!2061196) (not bs!1678266) (not bm!571601) (not b!6570062) (not bm!571584) (not b!6570030) (not bm!571670) (not b!6570085) (not b!6569818) (not b!6570049) (not b_lambda!248447) (not b!6569706) (not setNonEmpty!44859) (not bm!571644) (not b!6569902) (not b!6570014) (not d!2061318) (not b!6569890) (not b!6570145) (not d!2061226) (not b!6569949) (not b!6570050) (not b!6569973) (not bs!1678264) (not d!2061184) (not d!2061374) (not d!2061160) (not b!6570135) (not b!6569584) (not bs!1678267) (not bm!571660) (not b!6569905) (not bm!571631) (not b!6569738) (not bm!571686) (not b!6569903) (not b!6569662) (not b!6570028) (not b!6569880) (not bm!571574) (not d!2061362) (not b!6569820) (not bm!571654) (not b!6569470) (not b!6570118) (not d!2061162) (not b!6569517) (not b!6570066) (not b!6569888) (not b!6569956) (not b!6569821) (not b!6570074) (not d!2061170) (not bm!571684) (not bm!571641) (not b!6570124) (not b!6569680) (not b!6569750))
(check-sat)
