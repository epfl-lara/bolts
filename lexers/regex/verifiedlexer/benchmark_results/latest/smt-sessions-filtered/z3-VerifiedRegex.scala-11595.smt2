; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!642830 () Bool)

(assert start!642830)

(declare-fun b!6559726 () Bool)

(assert (=> b!6559726 true))

(assert (=> b!6559726 true))

(declare-fun lambda!364854 () Int)

(declare-fun lambda!364853 () Int)

(assert (=> b!6559726 (not (= lambda!364854 lambda!364853))))

(assert (=> b!6559726 true))

(assert (=> b!6559726 true))

(declare-fun b!6559731 () Bool)

(assert (=> b!6559731 true))

(declare-fun b!6559722 () Bool)

(assert (=> b!6559722 true))

(declare-fun bs!1674185 () Bool)

(declare-fun b!6559711 () Bool)

(assert (= bs!1674185 (and b!6559711 b!6559726)))

(declare-datatypes ((C!33144 0))(
  ( (C!33145 (val!26274 Int)) )
))
(declare-datatypes ((Regex!16437 0))(
  ( (ElementMatch!16437 (c!1205274 C!33144)) (Concat!25282 (regOne!33386 Regex!16437) (regTwo!33386 Regex!16437)) (EmptyExpr!16437) (Star!16437 (reg!16766 Regex!16437)) (EmptyLang!16437) (Union!16437 (regOne!33387 Regex!16437) (regTwo!33387 Regex!16437)) )
))
(declare-fun lt!2405774 () Regex!16437)

(declare-fun lambda!364858 () Int)

(declare-fun r!7292 () Regex!16437)

(assert (=> bs!1674185 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364858 lambda!364853))))

(assert (=> bs!1674185 (not (= lambda!364858 lambda!364854))))

(assert (=> b!6559711 true))

(assert (=> b!6559711 true))

(assert (=> b!6559711 true))

(declare-fun lambda!364859 () Int)

(assert (=> bs!1674185 (not (= lambda!364859 lambda!364853))))

(assert (=> bs!1674185 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364859 lambda!364854))))

(assert (=> b!6559711 (not (= lambda!364859 lambda!364858))))

(assert (=> b!6559711 true))

(assert (=> b!6559711 true))

(assert (=> b!6559711 true))

(declare-fun bs!1674186 () Bool)

(declare-fun b!6559709 () Bool)

(assert (= bs!1674186 (and b!6559709 b!6559726)))

(declare-datatypes ((List!65610 0))(
  ( (Nil!65486) (Cons!65486 (h!71934 C!33144) (t!379252 List!65610)) )
))
(declare-fun s!2326 () List!65610)

(declare-datatypes ((tuple2!66832 0))(
  ( (tuple2!66833 (_1!36719 List!65610) (_2!36719 List!65610)) )
))
(declare-fun lt!2405757 () tuple2!66832)

(declare-fun lt!2405790 () Regex!16437)

(declare-fun lambda!364860 () Int)

(assert (=> bs!1674186 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364860 lambda!364853))))

(assert (=> bs!1674186 (not (= lambda!364860 lambda!364854))))

(declare-fun bs!1674187 () Bool)

(assert (= bs!1674187 (and b!6559709 b!6559711)))

(assert (=> bs!1674187 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364860 lambda!364858))))

(assert (=> bs!1674187 (not (= lambda!364860 lambda!364859))))

(assert (=> b!6559709 true))

(assert (=> b!6559709 true))

(assert (=> b!6559709 true))

(declare-fun lambda!364861 () Int)

(assert (=> bs!1674186 (not (= lambda!364861 lambda!364853))))

(assert (=> bs!1674186 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364861 lambda!364854))))

(assert (=> b!6559709 (not (= lambda!364861 lambda!364860))))

(assert (=> bs!1674187 (not (= lambda!364861 lambda!364858))))

(assert (=> bs!1674187 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364861 lambda!364859))))

(assert (=> b!6559709 true))

(assert (=> b!6559709 true))

(assert (=> b!6559709 true))

(declare-fun b!6559689 () Bool)

(declare-fun res!2691736 () Bool)

(declare-fun e!3971084 () Bool)

(assert (=> b!6559689 (=> res!2691736 e!3971084)))

(declare-fun lt!2405764 () Bool)

(declare-fun lt!2405772 () Bool)

(assert (=> b!6559689 (= res!2691736 (or (not lt!2405764) (not lt!2405772)))))

(declare-fun b!6559690 () Bool)

(declare-fun e!3971074 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65611 0))(
  ( (Nil!65487) (Cons!65487 (h!71935 Regex!16437) (t!379253 List!65611)) )
))
(declare-datatypes ((Context!11642 0))(
  ( (Context!11643 (exprs!6321 List!65611)) )
))
(declare-fun lt!2405788 () (InoxSet Context!11642))

(declare-fun matchZipper!2449 ((InoxSet Context!11642) List!65610) Bool)

(assert (=> b!6559690 (= e!3971074 (matchZipper!2449 lt!2405788 (t!379252 s!2326)))))

(declare-fun b!6559691 () Bool)

(declare-fun e!3971089 () Bool)

(declare-fun e!3971070 () Bool)

(assert (=> b!6559691 (= e!3971089 e!3971070)))

(declare-fun res!2691745 () Bool)

(assert (=> b!6559691 (=> (not res!2691745) (not e!3971070))))

(declare-fun lt!2405798 () Regex!16437)

(assert (=> b!6559691 (= res!2691745 (= r!7292 lt!2405798))))

(declare-datatypes ((List!65612 0))(
  ( (Nil!65488) (Cons!65488 (h!71936 Context!11642) (t!379254 List!65612)) )
))
(declare-fun zl!343 () List!65612)

(declare-fun unfocusZipper!2179 (List!65612) Regex!16437)

(assert (=> b!6559691 (= lt!2405798 (unfocusZipper!2179 zl!343))))

(declare-fun b!6559692 () Bool)

(declare-fun e!3971069 () Bool)

(declare-fun e!3971072 () Bool)

(assert (=> b!6559692 (= e!3971069 e!3971072)))

(declare-fun res!2691733 () Bool)

(assert (=> b!6559692 (=> res!2691733 e!3971072)))

(declare-fun lt!2405778 () (InoxSet Context!11642))

(assert (=> b!6559692 (= res!2691733 (not (= lt!2405772 (matchZipper!2449 lt!2405778 (t!379252 s!2326)))))))

(declare-fun lt!2405771 () (InoxSet Context!11642))

(assert (=> b!6559692 (= lt!2405772 (matchZipper!2449 lt!2405771 s!2326))))

(declare-fun b!6559693 () Bool)

(declare-fun res!2691747 () Bool)

(declare-fun e!3971075 () Bool)

(assert (=> b!6559693 (=> res!2691747 e!3971075)))

(get-info :version)

(assert (=> b!6559693 (= res!2691747 (or ((_ is EmptyExpr!16437) r!7292) ((_ is EmptyLang!16437) r!7292) ((_ is ElementMatch!16437) r!7292) ((_ is Union!16437) r!7292) (not ((_ is Concat!25282) r!7292))))))

(declare-fun res!2691746 () Bool)

(assert (=> start!642830 (=> (not res!2691746) (not e!3971089))))

(declare-fun validRegex!8173 (Regex!16437) Bool)

(assert (=> start!642830 (= res!2691746 (validRegex!8173 r!7292))))

(assert (=> start!642830 e!3971089))

(declare-fun e!3971088 () Bool)

(assert (=> start!642830 e!3971088))

(declare-fun condSetEmpty!44778 () Bool)

(declare-fun z!1189 () (InoxSet Context!11642))

(assert (=> start!642830 (= condSetEmpty!44778 (= z!1189 ((as const (Array Context!11642 Bool)) false)))))

(declare-fun setRes!44778 () Bool)

(assert (=> start!642830 setRes!44778))

(declare-fun e!3971081 () Bool)

(assert (=> start!642830 e!3971081))

(declare-fun e!3971085 () Bool)

(assert (=> start!642830 e!3971085))

(declare-fun b!6559694 () Bool)

(declare-fun e!3971065 () Bool)

(declare-fun e!3971077 () Bool)

(assert (=> b!6559694 (= e!3971065 e!3971077)))

(declare-fun res!2691721 () Bool)

(assert (=> b!6559694 (=> res!2691721 e!3971077)))

(declare-fun lt!2405760 () (InoxSet Context!11642))

(declare-fun lt!2405776 () (InoxSet Context!11642))

(assert (=> b!6559694 (= res!2691721 (not (= lt!2405760 lt!2405776)))))

(declare-fun lt!2405750 () Context!11642)

(declare-fun derivationStepZipperDown!1685 (Regex!16437 Context!11642 C!33144) (InoxSet Context!11642))

(assert (=> b!6559694 (= lt!2405776 (derivationStepZipperDown!1685 (reg!16766 (regOne!33386 r!7292)) lt!2405750 (h!71934 s!2326)))))

(declare-fun lt!2405792 () List!65611)

(assert (=> b!6559694 (= lt!2405750 (Context!11643 lt!2405792))))

(assert (=> b!6559694 (= lt!2405792 (Cons!65487 lt!2405790 (t!379253 (exprs!6321 (h!71936 zl!343)))))))

(assert (=> b!6559694 (= lt!2405790 (Star!16437 (reg!16766 (regOne!33386 r!7292))))))

(declare-fun b!6559695 () Bool)

(declare-fun e!3971090 () Bool)

(declare-fun e!3971068 () Bool)

(assert (=> b!6559695 (= e!3971090 e!3971068)))

(declare-fun res!2691742 () Bool)

(assert (=> b!6559695 (=> res!2691742 e!3971068)))

(declare-fun lt!2405780 () List!65610)

(assert (=> b!6559695 (= res!2691742 (not (= s!2326 lt!2405780)))))

(declare-fun lt!2405802 () tuple2!66832)

(declare-fun ++!14576 (List!65610 List!65610) List!65610)

(assert (=> b!6559695 (= lt!2405780 (++!14576 (_1!36719 lt!2405802) (_2!36719 lt!2405802)))))

(declare-datatypes ((Option!16328 0))(
  ( (None!16327) (Some!16327 (v!52512 tuple2!66832)) )
))
(declare-fun lt!2405753 () Option!16328)

(declare-fun get!22737 (Option!16328) tuple2!66832)

(assert (=> b!6559695 (= lt!2405802 (get!22737 lt!2405753))))

(declare-fun isDefined!13031 (Option!16328) Bool)

(assert (=> b!6559695 (isDefined!13031 lt!2405753)))

(declare-fun lt!2405782 () (InoxSet Context!11642))

(declare-fun lt!2405758 () (InoxSet Context!11642))

(declare-fun findConcatSeparationZippers!202 ((InoxSet Context!11642) (InoxSet Context!11642) List!65610 List!65610 List!65610) Option!16328)

(assert (=> b!6559695 (= lt!2405753 (findConcatSeparationZippers!202 lt!2405782 lt!2405758 Nil!65486 s!2326 s!2326))))

(declare-datatypes ((Unit!159083 0))(
  ( (Unit!159084) )
))
(declare-fun lt!2405795 () Unit!159083)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!202 ((InoxSet Context!11642) Context!11642 List!65610) Unit!159083)

(assert (=> b!6559695 (= lt!2405795 (lemmaConcatZipperMatchesStringThenFindConcatDefined!202 lt!2405782 lt!2405750 s!2326))))

(declare-fun b!6559696 () Bool)

(declare-fun res!2691753 () Bool)

(assert (=> b!6559696 (=> res!2691753 e!3971075)))

(declare-fun isEmpty!37725 (List!65612) Bool)

(assert (=> b!6559696 (= res!2691753 (not (isEmpty!37725 (t!379254 zl!343))))))

(declare-fun b!6559697 () Bool)

(declare-fun tp!1812469 () Bool)

(declare-fun tp!1812465 () Bool)

(assert (=> b!6559697 (= e!3971088 (and tp!1812469 tp!1812465))))

(declare-fun setIsEmpty!44778 () Bool)

(assert (=> setIsEmpty!44778 setRes!44778))

(declare-fun b!6559698 () Bool)

(assert (=> b!6559698 (= e!3971077 e!3971069)))

(declare-fun res!2691752 () Bool)

(assert (=> b!6559698 (=> res!2691752 e!3971069)))

(assert (=> b!6559698 (= res!2691752 (not (= lt!2405778 lt!2405776)))))

(declare-fun lambda!364855 () Int)

(declare-fun lt!2405765 () Context!11642)

(declare-fun flatMap!1942 ((InoxSet Context!11642) Int) (InoxSet Context!11642))

(declare-fun derivationStepZipperUp!1611 (Context!11642 C!33144) (InoxSet Context!11642))

(assert (=> b!6559698 (= (flatMap!1942 lt!2405771 lambda!364855) (derivationStepZipperUp!1611 lt!2405765 (h!71934 s!2326)))))

(declare-fun lt!2405762 () Unit!159083)

(declare-fun lemmaFlatMapOnSingletonSet!1468 ((InoxSet Context!11642) Context!11642 Int) Unit!159083)

(assert (=> b!6559698 (= lt!2405762 (lemmaFlatMapOnSingletonSet!1468 lt!2405771 lt!2405765 lambda!364855))))

(declare-fun lt!2405773 () (InoxSet Context!11642))

(assert (=> b!6559698 (= lt!2405773 (derivationStepZipperUp!1611 lt!2405765 (h!71934 s!2326)))))

(declare-fun derivationStepZipper!2403 ((InoxSet Context!11642) C!33144) (InoxSet Context!11642))

(assert (=> b!6559698 (= lt!2405778 (derivationStepZipper!2403 lt!2405771 (h!71934 s!2326)))))

(assert (=> b!6559698 (= lt!2405771 (store ((as const (Array Context!11642 Bool)) false) lt!2405765 true))))

(assert (=> b!6559698 (= lt!2405765 (Context!11643 (Cons!65487 (reg!16766 (regOne!33386 r!7292)) lt!2405792)))))

(declare-fun b!6559699 () Bool)

(declare-fun tp!1812466 () Bool)

(assert (=> b!6559699 (= e!3971088 tp!1812466)))

(declare-fun b!6559700 () Bool)

(declare-fun res!2691727 () Bool)

(declare-fun e!3971066 () Bool)

(assert (=> b!6559700 (=> res!2691727 e!3971066)))

(assert (=> b!6559700 (= res!2691727 (not (matchZipper!2449 z!1189 s!2326)))))

(declare-fun b!6559701 () Bool)

(declare-fun e!3971080 () Unit!159083)

(declare-fun Unit!159085 () Unit!159083)

(assert (=> b!6559701 (= e!3971080 Unit!159085)))

(declare-fun lt!2405754 () Unit!159083)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1268 ((InoxSet Context!11642) (InoxSet Context!11642) List!65610) Unit!159083)

(assert (=> b!6559701 (= lt!2405754 (lemmaZipperConcatMatchesSameAsBothZippers!1268 lt!2405760 lt!2405788 (t!379252 s!2326)))))

(declare-fun res!2691738 () Bool)

(assert (=> b!6559701 (= res!2691738 (matchZipper!2449 lt!2405760 (t!379252 s!2326)))))

(assert (=> b!6559701 (=> res!2691738 e!3971074)))

(assert (=> b!6559701 (= (matchZipper!2449 ((_ map or) lt!2405760 lt!2405788) (t!379252 s!2326)) e!3971074)))

(declare-fun b!6559702 () Bool)

(declare-fun res!2691731 () Bool)

(declare-fun e!3971076 () Bool)

(assert (=> b!6559702 (=> res!2691731 e!3971076)))

(declare-fun isEmpty!37726 (List!65611) Bool)

(assert (=> b!6559702 (= res!2691731 (isEmpty!37726 (t!379253 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun b!6559703 () Bool)

(declare-fun tp_is_empty!42127 () Bool)

(assert (=> b!6559703 (= e!3971088 tp_is_empty!42127)))

(declare-fun b!6559704 () Bool)

(declare-fun res!2691732 () Bool)

(assert (=> b!6559704 (=> res!2691732 e!3971065)))

(assert (=> b!6559704 (= res!2691732 (or ((_ is Concat!25282) (regOne!33386 r!7292)) (not ((_ is Star!16437) (regOne!33386 r!7292)))))))

(declare-fun b!6559705 () Bool)

(declare-fun e!3971067 () Bool)

(assert (=> b!6559705 (= e!3971067 e!3971066)))

(declare-fun res!2691723 () Bool)

(assert (=> b!6559705 (=> res!2691723 e!3971066)))

(declare-fun lt!2405766 () Bool)

(assert (=> b!6559705 (= res!2691723 lt!2405766)))

(declare-fun lt!2405769 () Bool)

(declare-fun lt!2405801 () Regex!16437)

(declare-fun matchRSpec!3538 (Regex!16437 List!65610) Bool)

(assert (=> b!6559705 (= lt!2405769 (matchRSpec!3538 lt!2405801 s!2326))))

(declare-fun matchR!8620 (Regex!16437 List!65610) Bool)

(assert (=> b!6559705 (= lt!2405769 (matchR!8620 lt!2405801 s!2326))))

(declare-fun lt!2405800 () Unit!159083)

(declare-fun mainMatchTheorem!3538 (Regex!16437 List!65610) Unit!159083)

(assert (=> b!6559705 (= lt!2405800 (mainMatchTheorem!3538 lt!2405801 s!2326))))

(declare-fun setNonEmpty!44778 () Bool)

(declare-fun tp!1812468 () Bool)

(declare-fun setElem!44778 () Context!11642)

(declare-fun e!3971082 () Bool)

(declare-fun inv!84339 (Context!11642) Bool)

(assert (=> setNonEmpty!44778 (= setRes!44778 (and tp!1812468 (inv!84339 setElem!44778) e!3971082))))

(declare-fun setRest!44778 () (InoxSet Context!11642))

(assert (=> setNonEmpty!44778 (= z!1189 ((_ map or) (store ((as const (Array Context!11642 Bool)) false) setElem!44778 true) setRest!44778))))

(declare-fun b!6559706 () Bool)

(declare-fun res!2691737 () Bool)

(assert (=> b!6559706 (=> res!2691737 e!3971075)))

(declare-fun generalisedConcat!2034 (List!65611) Regex!16437)

(assert (=> b!6559706 (= res!2691737 (not (= r!7292 (generalisedConcat!2034 (exprs!6321 (h!71936 zl!343))))))))

(declare-fun b!6559707 () Bool)

(declare-fun e!3971079 () Bool)

(assert (=> b!6559707 (= e!3971079 lt!2405769)))

(declare-fun b!6559708 () Bool)

(declare-fun res!2691741 () Bool)

(assert (=> b!6559708 (=> res!2691741 e!3971068)))

(assert (=> b!6559708 (= res!2691741 (not (matchZipper!2449 lt!2405758 (_2!36719 lt!2405802))))))

(declare-fun e!3971087 () Bool)

(assert (=> b!6559709 (= e!3971087 (validRegex!8173 (reg!16766 (regOne!33386 r!7292))))))

(declare-fun Exists!3507 (Int) Bool)

(assert (=> b!6559709 (= (Exists!3507 lambda!364860) (Exists!3507 lambda!364861))))

(declare-fun lt!2405763 () Unit!159083)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2044 (Regex!16437 Regex!16437 List!65610) Unit!159083)

(assert (=> b!6559709 (= lt!2405763 (lemmaExistCutMatchRandMatchRSpecEquivalent!2044 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (_1!36719 lt!2405757)))))

(declare-fun findConcatSeparation!2742 (Regex!16437 Regex!16437 List!65610 List!65610 List!65610) Option!16328)

(assert (=> b!6559709 (= (isDefined!13031 (findConcatSeparation!2742 (reg!16766 (regOne!33386 r!7292)) lt!2405790 Nil!65486 (_1!36719 lt!2405757) (_1!36719 lt!2405757))) (Exists!3507 lambda!364860))))

(declare-fun lt!2405808 () Unit!159083)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2506 (Regex!16437 Regex!16437 List!65610) Unit!159083)

(assert (=> b!6559709 (= lt!2405808 (lemmaFindConcatSeparationEquivalentToExists!2506 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (_1!36719 lt!2405757)))))

(assert (=> b!6559709 (matchRSpec!3538 lt!2405774 (_1!36719 lt!2405757))))

(declare-fun lt!2405785 () Unit!159083)

(assert (=> b!6559709 (= lt!2405785 (mainMatchTheorem!3538 lt!2405774 (_1!36719 lt!2405757)))))

(declare-fun b!6559710 () Bool)

(declare-fun res!2691748 () Bool)

(assert (=> b!6559710 (=> res!2691748 e!3971072)))

(assert (=> b!6559710 (= res!2691748 (not (= lt!2405798 r!7292)))))

(assert (=> b!6559711 (= e!3971068 e!3971087)))

(declare-fun res!2691754 () Bool)

(assert (=> b!6559711 (=> res!2691754 e!3971087)))

(assert (=> b!6559711 (= res!2691754 (not (matchR!8620 lt!2405774 (_1!36719 lt!2405757))))))

(declare-fun lt!2405793 () Option!16328)

(assert (=> b!6559711 (= lt!2405757 (get!22737 lt!2405793))))

(assert (=> b!6559711 (= (Exists!3507 lambda!364858) (Exists!3507 lambda!364859))))

(declare-fun lt!2405752 () Unit!159083)

(assert (=> b!6559711 (= lt!2405752 (lemmaExistCutMatchRandMatchRSpecEquivalent!2044 lt!2405774 (regTwo!33386 r!7292) s!2326))))

(assert (=> b!6559711 (= (isDefined!13031 lt!2405793) (Exists!3507 lambda!364858))))

(assert (=> b!6559711 (= lt!2405793 (findConcatSeparation!2742 lt!2405774 (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326))))

(declare-fun lt!2405751 () Unit!159083)

(assert (=> b!6559711 (= lt!2405751 (lemmaFindConcatSeparationEquivalentToExists!2506 lt!2405774 (regTwo!33386 r!7292) s!2326))))

(declare-fun lt!2405787 () Regex!16437)

(assert (=> b!6559711 (matchRSpec!3538 lt!2405787 s!2326)))

(declare-fun lt!2405807 () Unit!159083)

(assert (=> b!6559711 (= lt!2405807 (mainMatchTheorem!3538 lt!2405787 s!2326))))

(assert (=> b!6559711 (matchR!8620 lt!2405787 s!2326)))

(assert (=> b!6559711 (= lt!2405787 (Concat!25282 lt!2405774 (regTwo!33386 r!7292)))))

(assert (=> b!6559711 (= lt!2405774 (Concat!25282 (reg!16766 (regOne!33386 r!7292)) lt!2405790))))

(declare-fun lt!2405789 () Unit!159083)

(declare-fun lemmaConcatAssociative!134 (Regex!16437 Regex!16437 Regex!16437 List!65610) Unit!159083)

(assert (=> b!6559711 (= lt!2405789 (lemmaConcatAssociative!134 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (regTwo!33386 r!7292) s!2326))))

(assert (=> b!6559711 e!3971079))

(declare-fun res!2691726 () Bool)

(assert (=> b!6559711 (=> (not res!2691726) (not e!3971079))))

(assert (=> b!6559711 (= res!2691726 (matchR!8620 lt!2405801 lt!2405780))))

(declare-fun lt!2405799 () Unit!159083)

(declare-fun lt!2405759 () Regex!16437)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!358 (Regex!16437 Regex!16437 List!65610 List!65610) Unit!159083)

(assert (=> b!6559711 (= lt!2405799 (lemmaTwoRegexMatchThenConcatMatchesConcatString!358 (reg!16766 (regOne!33386 r!7292)) lt!2405759 (_1!36719 lt!2405802) (_2!36719 lt!2405802)))))

(assert (=> b!6559711 (matchR!8620 lt!2405759 (_2!36719 lt!2405802))))

(declare-fun lt!2405805 () List!65612)

(declare-fun lt!2405748 () Unit!159083)

(declare-fun theoremZipperRegexEquiv!873 ((InoxSet Context!11642) List!65612 Regex!16437 List!65610) Unit!159083)

(assert (=> b!6559711 (= lt!2405748 (theoremZipperRegexEquiv!873 lt!2405758 lt!2405805 lt!2405759 (_2!36719 lt!2405802)))))

(assert (=> b!6559711 (matchR!8620 (reg!16766 (regOne!33386 r!7292)) (_1!36719 lt!2405802))))

(declare-fun lt!2405797 () List!65612)

(declare-fun lt!2405796 () Unit!159083)

(assert (=> b!6559711 (= lt!2405796 (theoremZipperRegexEquiv!873 lt!2405782 lt!2405797 (reg!16766 (regOne!33386 r!7292)) (_1!36719 lt!2405802)))))

(declare-fun lt!2405784 () List!65611)

(declare-fun ++!14577 (List!65611 List!65611) List!65611)

(assert (=> b!6559711 (matchZipper!2449 (store ((as const (Array Context!11642 Bool)) false) (Context!11643 (++!14577 lt!2405784 lt!2405792)) true) lt!2405780)))

(declare-fun lambda!364857 () Int)

(declare-fun lt!2405803 () Unit!159083)

(declare-fun lemmaConcatPreservesForall!410 (List!65611 List!65611 Int) Unit!159083)

(assert (=> b!6559711 (= lt!2405803 (lemmaConcatPreservesForall!410 lt!2405784 lt!2405792 lambda!364857))))

(declare-fun lt!2405775 () Context!11642)

(declare-fun lt!2405783 () Unit!159083)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!218 (Context!11642 Context!11642 List!65610 List!65610) Unit!159083)

(assert (=> b!6559711 (= lt!2405783 (lemmaConcatenateContextMatchesConcatOfStrings!218 lt!2405775 lt!2405750 (_1!36719 lt!2405802) (_2!36719 lt!2405802)))))

(declare-fun b!6559712 () Bool)

(declare-fun tp!1812467 () Bool)

(assert (=> b!6559712 (= e!3971085 (and tp_is_empty!42127 tp!1812467))))

(declare-fun b!6559713 () Bool)

(declare-fun e!3971064 () Bool)

(declare-fun e!3971083 () Bool)

(assert (=> b!6559713 (= e!3971064 e!3971083)))

(declare-fun res!2691743 () Bool)

(assert (=> b!6559713 (=> res!2691743 e!3971083)))

(assert (=> b!6559713 (= res!2691743 (not (= (unfocusZipper!2179 (Cons!65488 lt!2405765 Nil!65488)) lt!2405801)))))

(assert (=> b!6559713 (= lt!2405801 (Concat!25282 (reg!16766 (regOne!33386 r!7292)) lt!2405759))))

(declare-fun b!6559714 () Bool)

(declare-fun res!2691735 () Bool)

(assert (=> b!6559714 (=> res!2691735 e!3971075)))

(assert (=> b!6559714 (= res!2691735 (not ((_ is Cons!65487) (exprs!6321 (h!71936 zl!343)))))))

(declare-fun b!6559715 () Bool)

(declare-fun res!2691749 () Bool)

(assert (=> b!6559715 (=> (not res!2691749) (not e!3971089))))

(declare-fun toList!10221 ((InoxSet Context!11642)) List!65612)

(assert (=> b!6559715 (= res!2691749 (= (toList!10221 z!1189) zl!343))))

(declare-fun b!6559716 () Bool)

(declare-fun res!2691722 () Bool)

(assert (=> b!6559716 (=> res!2691722 e!3971066)))

(declare-fun lt!2405777 () Bool)

(assert (=> b!6559716 (= res!2691722 (not lt!2405777))))

(declare-fun e!3971078 () Bool)

(declare-fun b!6559717 () Bool)

(declare-fun tp!1812464 () Bool)

(assert (=> b!6559717 (= e!3971081 (and (inv!84339 (h!71936 zl!343)) e!3971078 tp!1812464))))

(declare-fun b!6559718 () Bool)

(declare-fun e!3971073 () Bool)

(assert (=> b!6559718 (= e!3971073 (not (matchZipper!2449 lt!2405788 (t!379252 s!2326))))))

(declare-fun b!6559719 () Bool)

(declare-fun e!3971086 () Bool)

(assert (=> b!6559719 (= e!3971086 e!3971067)))

(declare-fun res!2691755 () Bool)

(assert (=> b!6559719 (=> res!2691755 e!3971067)))

(assert (=> b!6559719 (= res!2691755 (not (= (unfocusZipper!2179 lt!2405805) lt!2405759)))))

(assert (=> b!6559719 (= lt!2405805 (Cons!65488 lt!2405750 Nil!65488))))

(declare-fun b!6559720 () Bool)

(declare-fun tp!1812471 () Bool)

(assert (=> b!6559720 (= e!3971078 tp!1812471)))

(declare-fun b!6559721 () Bool)

(declare-fun Unit!159086 () Unit!159083)

(assert (=> b!6559721 (= e!3971080 Unit!159086)))

(assert (=> b!6559722 (= e!3971084 e!3971090)))

(declare-fun res!2691729 () Bool)

(assert (=> b!6559722 (=> res!2691729 e!3971090)))

(declare-fun appendTo!198 ((InoxSet Context!11642) Context!11642) (InoxSet Context!11642))

(assert (=> b!6559722 (= res!2691729 (not (= (appendTo!198 lt!2405782 lt!2405750) lt!2405771)))))

(declare-fun lambda!364856 () Int)

(declare-fun map!14964 ((InoxSet Context!11642) Int) (InoxSet Context!11642))

(assert (=> b!6559722 (= (map!14964 lt!2405782 lambda!364856) (store ((as const (Array Context!11642 Bool)) false) (Context!11643 (++!14577 lt!2405784 lt!2405792)) true))))

(declare-fun lt!2405767 () Unit!159083)

(assert (=> b!6559722 (= lt!2405767 (lemmaConcatPreservesForall!410 lt!2405784 lt!2405792 lambda!364857))))

(declare-fun lt!2405786 () Unit!159083)

(declare-fun lemmaMapOnSingletonSet!220 ((InoxSet Context!11642) Context!11642 Int) Unit!159083)

(assert (=> b!6559722 (= lt!2405786 (lemmaMapOnSingletonSet!220 lt!2405782 lt!2405775 lambda!364856))))

(declare-fun b!6559723 () Bool)

(declare-fun tp!1812470 () Bool)

(declare-fun tp!1812463 () Bool)

(assert (=> b!6559723 (= e!3971088 (and tp!1812470 tp!1812463))))

(declare-fun b!6559724 () Bool)

(declare-fun res!2691744 () Bool)

(assert (=> b!6559724 (=> res!2691744 e!3971065)))

(declare-fun e!3971071 () Bool)

(assert (=> b!6559724 (= res!2691744 e!3971071)))

(declare-fun res!2691750 () Bool)

(assert (=> b!6559724 (=> (not res!2691750) (not e!3971071))))

(assert (=> b!6559724 (= res!2691750 ((_ is Concat!25282) (regOne!33386 r!7292)))))

(declare-fun b!6559725 () Bool)

(declare-fun nullable!6430 (Regex!16437) Bool)

(assert (=> b!6559725 (= e!3971071 (nullable!6430 (regOne!33386 (regOne!33386 r!7292))))))

(assert (=> b!6559726 (= e!3971075 e!3971076)))

(declare-fun res!2691739 () Bool)

(assert (=> b!6559726 (=> res!2691739 e!3971076)))

(declare-fun lt!2405756 () Bool)

(assert (=> b!6559726 (= res!2691739 (or (not (= lt!2405766 lt!2405756)) ((_ is Nil!65486) s!2326)))))

(assert (=> b!6559726 (= (Exists!3507 lambda!364853) (Exists!3507 lambda!364854))))

(declare-fun lt!2405794 () Unit!159083)

(assert (=> b!6559726 (= lt!2405794 (lemmaExistCutMatchRandMatchRSpecEquivalent!2044 (regOne!33386 r!7292) (regTwo!33386 r!7292) s!2326))))

(assert (=> b!6559726 (= lt!2405756 (Exists!3507 lambda!364853))))

(assert (=> b!6559726 (= lt!2405756 (isDefined!13031 (findConcatSeparation!2742 (regOne!33386 r!7292) (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326)))))

(declare-fun lt!2405791 () Unit!159083)

(assert (=> b!6559726 (= lt!2405791 (lemmaFindConcatSeparationEquivalentToExists!2506 (regOne!33386 r!7292) (regTwo!33386 r!7292) s!2326))))

(declare-fun b!6559727 () Bool)

(declare-fun tp!1812462 () Bool)

(assert (=> b!6559727 (= e!3971082 tp!1812462)))

(declare-fun b!6559728 () Bool)

(declare-fun res!2691730 () Bool)

(assert (=> b!6559728 (=> res!2691730 e!3971068)))

(assert (=> b!6559728 (= res!2691730 (not (matchZipper!2449 lt!2405782 (_1!36719 lt!2405802))))))

(declare-fun b!6559729 () Bool)

(declare-fun res!2691728 () Bool)

(assert (=> b!6559729 (=> res!2691728 e!3971075)))

(declare-fun generalisedUnion!2281 (List!65611) Regex!16437)

(declare-fun unfocusZipperList!1858 (List!65612) List!65611)

(assert (=> b!6559729 (= res!2691728 (not (= r!7292 (generalisedUnion!2281 (unfocusZipperList!1858 zl!343)))))))

(declare-fun b!6559730 () Bool)

(assert (=> b!6559730 (= e!3971072 e!3971064)))

(declare-fun res!2691724 () Bool)

(assert (=> b!6559730 (=> res!2691724 e!3971064)))

(assert (=> b!6559730 (= res!2691724 (not (= r!7292 lt!2405759)))))

(assert (=> b!6559730 (= lt!2405759 (Concat!25282 lt!2405790 (regTwo!33386 r!7292)))))

(assert (=> b!6559731 (= e!3971076 e!3971065)))

(declare-fun res!2691734 () Bool)

(assert (=> b!6559731 (=> res!2691734 e!3971065)))

(assert (=> b!6559731 (= res!2691734 (or (and ((_ is ElementMatch!16437) (regOne!33386 r!7292)) (= (c!1205274 (regOne!33386 r!7292)) (h!71934 s!2326))) ((_ is Union!16437) (regOne!33386 r!7292))))))

(declare-fun lt!2405779 () Unit!159083)

(assert (=> b!6559731 (= lt!2405779 e!3971080)))

(declare-fun c!1205273 () Bool)

(assert (=> b!6559731 (= c!1205273 lt!2405777)))

(assert (=> b!6559731 (= lt!2405777 (nullable!6430 (h!71935 (exprs!6321 (h!71936 zl!343)))))))

(assert (=> b!6559731 (= (flatMap!1942 z!1189 lambda!364855) (derivationStepZipperUp!1611 (h!71936 zl!343) (h!71934 s!2326)))))

(declare-fun lt!2405761 () Unit!159083)

(assert (=> b!6559731 (= lt!2405761 (lemmaFlatMapOnSingletonSet!1468 z!1189 (h!71936 zl!343) lambda!364855))))

(declare-fun lt!2405806 () Context!11642)

(assert (=> b!6559731 (= lt!2405788 (derivationStepZipperUp!1611 lt!2405806 (h!71934 s!2326)))))

(assert (=> b!6559731 (= lt!2405760 (derivationStepZipperDown!1685 (h!71935 (exprs!6321 (h!71936 zl!343))) lt!2405806 (h!71934 s!2326)))))

(assert (=> b!6559731 (= lt!2405806 (Context!11643 (t!379253 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun lt!2405781 () (InoxSet Context!11642))

(assert (=> b!6559731 (= lt!2405781 (derivationStepZipperUp!1611 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343))))) (h!71934 s!2326)))))

(declare-fun b!6559732 () Bool)

(assert (=> b!6559732 (= e!3971083 e!3971086)))

(declare-fun res!2691756 () Bool)

(assert (=> b!6559732 (=> res!2691756 e!3971086)))

(assert (=> b!6559732 (= res!2691756 (not (= (unfocusZipper!2179 lt!2405797) (reg!16766 (regOne!33386 r!7292)))))))

(assert (=> b!6559732 (= lt!2405797 (Cons!65488 lt!2405775 Nil!65488))))

(assert (=> b!6559732 (= (flatMap!1942 lt!2405758 lambda!364855) (derivationStepZipperUp!1611 lt!2405750 (h!71934 s!2326)))))

(declare-fun lt!2405770 () Unit!159083)

(assert (=> b!6559732 (= lt!2405770 (lemmaFlatMapOnSingletonSet!1468 lt!2405758 lt!2405750 lambda!364855))))

(assert (=> b!6559732 (= (flatMap!1942 lt!2405782 lambda!364855) (derivationStepZipperUp!1611 lt!2405775 (h!71934 s!2326)))))

(declare-fun lt!2405749 () Unit!159083)

(assert (=> b!6559732 (= lt!2405749 (lemmaFlatMapOnSingletonSet!1468 lt!2405782 lt!2405775 lambda!364855))))

(declare-fun lt!2405755 () (InoxSet Context!11642))

(assert (=> b!6559732 (= lt!2405755 (derivationStepZipperUp!1611 lt!2405750 (h!71934 s!2326)))))

(declare-fun lt!2405804 () (InoxSet Context!11642))

(assert (=> b!6559732 (= lt!2405804 (derivationStepZipperUp!1611 lt!2405775 (h!71934 s!2326)))))

(assert (=> b!6559732 (= lt!2405758 (store ((as const (Array Context!11642 Bool)) false) lt!2405750 true))))

(assert (=> b!6559732 (= lt!2405782 (store ((as const (Array Context!11642 Bool)) false) lt!2405775 true))))

(assert (=> b!6559732 (= lt!2405775 (Context!11643 lt!2405784))))

(assert (=> b!6559732 (= lt!2405784 (Cons!65487 (reg!16766 (regOne!33386 r!7292)) Nil!65487))))

(declare-fun b!6559733 () Bool)

(assert (=> b!6559733 (= e!3971070 (not e!3971075))))

(declare-fun res!2691751 () Bool)

(assert (=> b!6559733 (=> res!2691751 e!3971075)))

(assert (=> b!6559733 (= res!2691751 (not ((_ is Cons!65488) zl!343)))))

(assert (=> b!6559733 (= lt!2405766 (matchRSpec!3538 r!7292 s!2326))))

(assert (=> b!6559733 (= lt!2405766 (matchR!8620 r!7292 s!2326))))

(declare-fun lt!2405768 () Unit!159083)

(assert (=> b!6559733 (= lt!2405768 (mainMatchTheorem!3538 r!7292 s!2326))))

(declare-fun b!6559734 () Bool)

(assert (=> b!6559734 (= e!3971066 e!3971084)))

(declare-fun res!2691725 () Bool)

(assert (=> b!6559734 (=> res!2691725 e!3971084)))

(assert (=> b!6559734 (= res!2691725 e!3971073)))

(declare-fun res!2691740 () Bool)

(assert (=> b!6559734 (=> (not res!2691740) (not e!3971073))))

(assert (=> b!6559734 (= res!2691740 (not lt!2405764))))

(assert (=> b!6559734 (= lt!2405764 (matchZipper!2449 lt!2405760 (t!379252 s!2326)))))

(assert (= (and start!642830 res!2691746) b!6559715))

(assert (= (and b!6559715 res!2691749) b!6559691))

(assert (= (and b!6559691 res!2691745) b!6559733))

(assert (= (and b!6559733 (not res!2691751)) b!6559696))

(assert (= (and b!6559696 (not res!2691753)) b!6559706))

(assert (= (and b!6559706 (not res!2691737)) b!6559714))

(assert (= (and b!6559714 (not res!2691735)) b!6559729))

(assert (= (and b!6559729 (not res!2691728)) b!6559693))

(assert (= (and b!6559693 (not res!2691747)) b!6559726))

(assert (= (and b!6559726 (not res!2691739)) b!6559702))

(assert (= (and b!6559702 (not res!2691731)) b!6559731))

(assert (= (and b!6559731 c!1205273) b!6559701))

(assert (= (and b!6559731 (not c!1205273)) b!6559721))

(assert (= (and b!6559701 (not res!2691738)) b!6559690))

(assert (= (and b!6559731 (not res!2691734)) b!6559724))

(assert (= (and b!6559724 res!2691750) b!6559725))

(assert (= (and b!6559724 (not res!2691744)) b!6559704))

(assert (= (and b!6559704 (not res!2691732)) b!6559694))

(assert (= (and b!6559694 (not res!2691721)) b!6559698))

(assert (= (and b!6559698 (not res!2691752)) b!6559692))

(assert (= (and b!6559692 (not res!2691733)) b!6559710))

(assert (= (and b!6559710 (not res!2691748)) b!6559730))

(assert (= (and b!6559730 (not res!2691724)) b!6559713))

(assert (= (and b!6559713 (not res!2691743)) b!6559732))

(assert (= (and b!6559732 (not res!2691756)) b!6559719))

(assert (= (and b!6559719 (not res!2691755)) b!6559705))

(assert (= (and b!6559705 (not res!2691723)) b!6559700))

(assert (= (and b!6559700 (not res!2691727)) b!6559716))

(assert (= (and b!6559716 (not res!2691722)) b!6559734))

(assert (= (and b!6559734 res!2691740) b!6559718))

(assert (= (and b!6559734 (not res!2691725)) b!6559689))

(assert (= (and b!6559689 (not res!2691736)) b!6559722))

(assert (= (and b!6559722 (not res!2691729)) b!6559695))

(assert (= (and b!6559695 (not res!2691742)) b!6559728))

(assert (= (and b!6559728 (not res!2691730)) b!6559708))

(assert (= (and b!6559708 (not res!2691741)) b!6559711))

(assert (= (and b!6559711 res!2691726) b!6559707))

(assert (= (and b!6559711 (not res!2691754)) b!6559709))

(assert (= (and start!642830 ((_ is ElementMatch!16437) r!7292)) b!6559703))

(assert (= (and start!642830 ((_ is Concat!25282) r!7292)) b!6559697))

(assert (= (and start!642830 ((_ is Star!16437) r!7292)) b!6559699))

(assert (= (and start!642830 ((_ is Union!16437) r!7292)) b!6559723))

(assert (= (and start!642830 condSetEmpty!44778) setIsEmpty!44778))

(assert (= (and start!642830 (not condSetEmpty!44778)) setNonEmpty!44778))

(assert (= setNonEmpty!44778 b!6559727))

(assert (= b!6559717 b!6559720))

(assert (= (and start!642830 ((_ is Cons!65488) zl!343)) b!6559717))

(assert (= (and start!642830 ((_ is Cons!65486) s!2326)) b!6559712))

(declare-fun m!7341660 () Bool)

(assert (=> b!6559700 m!7341660))

(declare-fun m!7341662 () Bool)

(assert (=> b!6559711 m!7341662))

(declare-fun m!7341664 () Bool)

(assert (=> b!6559711 m!7341664))

(declare-fun m!7341666 () Bool)

(assert (=> b!6559711 m!7341666))

(declare-fun m!7341668 () Bool)

(assert (=> b!6559711 m!7341668))

(declare-fun m!7341670 () Bool)

(assert (=> b!6559711 m!7341670))

(declare-fun m!7341672 () Bool)

(assert (=> b!6559711 m!7341672))

(declare-fun m!7341674 () Bool)

(assert (=> b!6559711 m!7341674))

(declare-fun m!7341676 () Bool)

(assert (=> b!6559711 m!7341676))

(declare-fun m!7341678 () Bool)

(assert (=> b!6559711 m!7341678))

(declare-fun m!7341680 () Bool)

(assert (=> b!6559711 m!7341680))

(declare-fun m!7341682 () Bool)

(assert (=> b!6559711 m!7341682))

(declare-fun m!7341684 () Bool)

(assert (=> b!6559711 m!7341684))

(assert (=> b!6559711 m!7341674))

(declare-fun m!7341686 () Bool)

(assert (=> b!6559711 m!7341686))

(declare-fun m!7341688 () Bool)

(assert (=> b!6559711 m!7341688))

(declare-fun m!7341690 () Bool)

(assert (=> b!6559711 m!7341690))

(declare-fun m!7341692 () Bool)

(assert (=> b!6559711 m!7341692))

(assert (=> b!6559711 m!7341682))

(declare-fun m!7341694 () Bool)

(assert (=> b!6559711 m!7341694))

(declare-fun m!7341696 () Bool)

(assert (=> b!6559711 m!7341696))

(declare-fun m!7341698 () Bool)

(assert (=> b!6559711 m!7341698))

(declare-fun m!7341700 () Bool)

(assert (=> b!6559711 m!7341700))

(declare-fun m!7341702 () Bool)

(assert (=> b!6559711 m!7341702))

(declare-fun m!7341704 () Bool)

(assert (=> b!6559711 m!7341704))

(declare-fun m!7341706 () Bool)

(assert (=> b!6559711 m!7341706))

(declare-fun m!7341708 () Bool)

(assert (=> b!6559692 m!7341708))

(declare-fun m!7341710 () Bool)

(assert (=> b!6559692 m!7341710))

(declare-fun m!7341712 () Bool)

(assert (=> b!6559718 m!7341712))

(declare-fun m!7341714 () Bool)

(assert (=> b!6559698 m!7341714))

(declare-fun m!7341716 () Bool)

(assert (=> b!6559698 m!7341716))

(declare-fun m!7341718 () Bool)

(assert (=> b!6559698 m!7341718))

(declare-fun m!7341720 () Bool)

(assert (=> b!6559698 m!7341720))

(declare-fun m!7341722 () Bool)

(assert (=> b!6559698 m!7341722))

(declare-fun m!7341724 () Bool)

(assert (=> b!6559719 m!7341724))

(declare-fun m!7341726 () Bool)

(assert (=> b!6559701 m!7341726))

(declare-fun m!7341728 () Bool)

(assert (=> b!6559701 m!7341728))

(declare-fun m!7341730 () Bool)

(assert (=> b!6559701 m!7341730))

(declare-fun m!7341732 () Bool)

(assert (=> b!6559722 m!7341732))

(assert (=> b!6559722 m!7341666))

(declare-fun m!7341734 () Bool)

(assert (=> b!6559722 m!7341734))

(declare-fun m!7341736 () Bool)

(assert (=> b!6559722 m!7341736))

(assert (=> b!6559722 m!7341672))

(assert (=> b!6559722 m!7341682))

(declare-fun m!7341738 () Bool)

(assert (=> b!6559715 m!7341738))

(declare-fun m!7341740 () Bool)

(assert (=> start!642830 m!7341740))

(declare-fun m!7341742 () Bool)

(assert (=> b!6559728 m!7341742))

(declare-fun m!7341744 () Bool)

(assert (=> b!6559694 m!7341744))

(declare-fun m!7341746 () Bool)

(assert (=> b!6559706 m!7341746))

(assert (=> b!6559734 m!7341728))

(declare-fun m!7341748 () Bool)

(assert (=> b!6559725 m!7341748))

(declare-fun m!7341750 () Bool)

(assert (=> b!6559695 m!7341750))

(declare-fun m!7341752 () Bool)

(assert (=> b!6559695 m!7341752))

(declare-fun m!7341754 () Bool)

(assert (=> b!6559695 m!7341754))

(declare-fun m!7341756 () Bool)

(assert (=> b!6559695 m!7341756))

(declare-fun m!7341758 () Bool)

(assert (=> b!6559695 m!7341758))

(declare-fun m!7341760 () Bool)

(assert (=> setNonEmpty!44778 m!7341760))

(declare-fun m!7341762 () Bool)

(assert (=> b!6559726 m!7341762))

(declare-fun m!7341764 () Bool)

(assert (=> b!6559726 m!7341764))

(declare-fun m!7341766 () Bool)

(assert (=> b!6559726 m!7341766))

(declare-fun m!7341768 () Bool)

(assert (=> b!6559726 m!7341768))

(assert (=> b!6559726 m!7341768))

(declare-fun m!7341770 () Bool)

(assert (=> b!6559726 m!7341770))

(assert (=> b!6559726 m!7341764))

(declare-fun m!7341772 () Bool)

(assert (=> b!6559726 m!7341772))

(declare-fun m!7341774 () Bool)

(assert (=> b!6559731 m!7341774))

(declare-fun m!7341776 () Bool)

(assert (=> b!6559731 m!7341776))

(declare-fun m!7341778 () Bool)

(assert (=> b!6559731 m!7341778))

(declare-fun m!7341780 () Bool)

(assert (=> b!6559731 m!7341780))

(declare-fun m!7341782 () Bool)

(assert (=> b!6559731 m!7341782))

(declare-fun m!7341784 () Bool)

(assert (=> b!6559731 m!7341784))

(declare-fun m!7341786 () Bool)

(assert (=> b!6559731 m!7341786))

(declare-fun m!7341788 () Bool)

(assert (=> b!6559702 m!7341788))

(declare-fun m!7341790 () Bool)

(assert (=> b!6559717 m!7341790))

(declare-fun m!7341792 () Bool)

(assert (=> b!6559713 m!7341792))

(declare-fun m!7341794 () Bool)

(assert (=> b!6559729 m!7341794))

(assert (=> b!6559729 m!7341794))

(declare-fun m!7341796 () Bool)

(assert (=> b!6559729 m!7341796))

(declare-fun m!7341798 () Bool)

(assert (=> b!6559732 m!7341798))

(declare-fun m!7341800 () Bool)

(assert (=> b!6559732 m!7341800))

(declare-fun m!7341802 () Bool)

(assert (=> b!6559732 m!7341802))

(declare-fun m!7341804 () Bool)

(assert (=> b!6559732 m!7341804))

(declare-fun m!7341806 () Bool)

(assert (=> b!6559732 m!7341806))

(declare-fun m!7341808 () Bool)

(assert (=> b!6559732 m!7341808))

(declare-fun m!7341810 () Bool)

(assert (=> b!6559732 m!7341810))

(declare-fun m!7341812 () Bool)

(assert (=> b!6559732 m!7341812))

(declare-fun m!7341814 () Bool)

(assert (=> b!6559732 m!7341814))

(declare-fun m!7341816 () Bool)

(assert (=> b!6559709 m!7341816))

(declare-fun m!7341818 () Bool)

(assert (=> b!6559709 m!7341818))

(declare-fun m!7341820 () Bool)

(assert (=> b!6559709 m!7341820))

(declare-fun m!7341822 () Bool)

(assert (=> b!6559709 m!7341822))

(declare-fun m!7341824 () Bool)

(assert (=> b!6559709 m!7341824))

(declare-fun m!7341826 () Bool)

(assert (=> b!6559709 m!7341826))

(declare-fun m!7341828 () Bool)

(assert (=> b!6559709 m!7341828))

(assert (=> b!6559709 m!7341816))

(assert (=> b!6559709 m!7341824))

(declare-fun m!7341830 () Bool)

(assert (=> b!6559709 m!7341830))

(declare-fun m!7341832 () Bool)

(assert (=> b!6559709 m!7341832))

(assert (=> b!6559690 m!7341712))

(declare-fun m!7341834 () Bool)

(assert (=> b!6559733 m!7341834))

(declare-fun m!7341836 () Bool)

(assert (=> b!6559733 m!7341836))

(declare-fun m!7341838 () Bool)

(assert (=> b!6559733 m!7341838))

(declare-fun m!7341840 () Bool)

(assert (=> b!6559708 m!7341840))

(declare-fun m!7341842 () Bool)

(assert (=> b!6559691 m!7341842))

(declare-fun m!7341844 () Bool)

(assert (=> b!6559696 m!7341844))

(declare-fun m!7341846 () Bool)

(assert (=> b!6559705 m!7341846))

(declare-fun m!7341848 () Bool)

(assert (=> b!6559705 m!7341848))

(declare-fun m!7341850 () Bool)

(assert (=> b!6559705 m!7341850))

(check-sat tp_is_empty!42127 (not b!6559711) (not b!6559702) (not b!6559709) (not b!6559690) (not b!6559697) (not b!6559713) (not b!6559720) (not b!6559722) (not b!6559712) (not b!6559726) (not setNonEmpty!44778) (not b!6559701) (not b!6559699) (not b!6559733) (not b!6559719) (not b!6559731) (not b!6559706) (not b!6559723) (not b!6559705) (not b!6559728) (not b!6559727) (not b!6559718) (not b!6559691) (not b!6559692) (not b!6559715) (not b!6559696) (not b!6559729) (not b!6559698) (not b!6559700) (not b!6559694) (not start!642830) (not b!6559717) (not b!6559695) (not b!6559708) (not b!6559732) (not b!6559734) (not b!6559725))
(check-sat)
(get-model)

(declare-fun d!2058102 () Bool)

(declare-fun c!1205298 () Bool)

(declare-fun isEmpty!37729 (List!65610) Bool)

(assert (=> d!2058102 (= c!1205298 (isEmpty!37729 (_1!36719 lt!2405802)))))

(declare-fun e!3971139 () Bool)

(assert (=> d!2058102 (= (matchZipper!2449 lt!2405782 (_1!36719 lt!2405802)) e!3971139)))

(declare-fun b!6559834 () Bool)

(declare-fun nullableZipper!2181 ((InoxSet Context!11642)) Bool)

(assert (=> b!6559834 (= e!3971139 (nullableZipper!2181 lt!2405782))))

(declare-fun b!6559835 () Bool)

(declare-fun head!13324 (List!65610) C!33144)

(declare-fun tail!12409 (List!65610) List!65610)

(assert (=> b!6559835 (= e!3971139 (matchZipper!2449 (derivationStepZipper!2403 lt!2405782 (head!13324 (_1!36719 lt!2405802))) (tail!12409 (_1!36719 lt!2405802))))))

(assert (= (and d!2058102 c!1205298) b!6559834))

(assert (= (and d!2058102 (not c!1205298)) b!6559835))

(declare-fun m!7341874 () Bool)

(assert (=> d!2058102 m!7341874))

(declare-fun m!7341876 () Bool)

(assert (=> b!6559834 m!7341876))

(declare-fun m!7341878 () Bool)

(assert (=> b!6559835 m!7341878))

(assert (=> b!6559835 m!7341878))

(declare-fun m!7341880 () Bool)

(assert (=> b!6559835 m!7341880))

(declare-fun m!7341882 () Bool)

(assert (=> b!6559835 m!7341882))

(assert (=> b!6559835 m!7341880))

(assert (=> b!6559835 m!7341882))

(declare-fun m!7341884 () Bool)

(assert (=> b!6559835 m!7341884))

(assert (=> b!6559728 d!2058102))

(declare-fun c!1205320 () Bool)

(declare-fun bm!570546 () Bool)

(declare-fun c!1205321 () Bool)

(declare-fun call!570552 () Bool)

(assert (=> bm!570546 (= call!570552 (validRegex!8173 (ite c!1205320 (reg!16766 r!7292) (ite c!1205321 (regTwo!33387 r!7292) (regTwo!33386 r!7292)))))))

(declare-fun b!6559917 () Bool)

(declare-fun e!3971198 () Bool)

(assert (=> b!6559917 (= e!3971198 call!570552)))

(declare-fun d!2058108 () Bool)

(declare-fun res!2691844 () Bool)

(declare-fun e!3971202 () Bool)

(assert (=> d!2058108 (=> res!2691844 e!3971202)))

(assert (=> d!2058108 (= res!2691844 ((_ is ElementMatch!16437) r!7292))))

(assert (=> d!2058108 (= (validRegex!8173 r!7292) e!3971202)))

(declare-fun b!6559918 () Bool)

(declare-fun res!2691845 () Bool)

(declare-fun e!3971196 () Bool)

(assert (=> b!6559918 (=> res!2691845 e!3971196)))

(assert (=> b!6559918 (= res!2691845 (not ((_ is Concat!25282) r!7292)))))

(declare-fun e!3971200 () Bool)

(assert (=> b!6559918 (= e!3971200 e!3971196)))

(declare-fun bm!570547 () Bool)

(declare-fun call!570551 () Bool)

(assert (=> bm!570547 (= call!570551 call!570552)))

(declare-fun b!6559919 () Bool)

(declare-fun res!2691842 () Bool)

(declare-fun e!3971197 () Bool)

(assert (=> b!6559919 (=> (not res!2691842) (not e!3971197))))

(declare-fun call!570553 () Bool)

(assert (=> b!6559919 (= res!2691842 call!570553)))

(assert (=> b!6559919 (= e!3971200 e!3971197)))

(declare-fun b!6559920 () Bool)

(declare-fun e!3971199 () Bool)

(assert (=> b!6559920 (= e!3971199 e!3971198)))

(declare-fun res!2691843 () Bool)

(assert (=> b!6559920 (= res!2691843 (not (nullable!6430 (reg!16766 r!7292))))))

(assert (=> b!6559920 (=> (not res!2691843) (not e!3971198))))

(declare-fun b!6559921 () Bool)

(assert (=> b!6559921 (= e!3971202 e!3971199)))

(assert (=> b!6559921 (= c!1205320 ((_ is Star!16437) r!7292))))

(declare-fun bm!570548 () Bool)

(assert (=> bm!570548 (= call!570553 (validRegex!8173 (ite c!1205321 (regOne!33387 r!7292) (regOne!33386 r!7292))))))

(declare-fun b!6559922 () Bool)

(assert (=> b!6559922 (= e!3971197 call!570551)))

(declare-fun b!6559923 () Bool)

(declare-fun e!3971201 () Bool)

(assert (=> b!6559923 (= e!3971196 e!3971201)))

(declare-fun res!2691841 () Bool)

(assert (=> b!6559923 (=> (not res!2691841) (not e!3971201))))

(assert (=> b!6559923 (= res!2691841 call!570553)))

(declare-fun b!6559924 () Bool)

(assert (=> b!6559924 (= e!3971199 e!3971200)))

(assert (=> b!6559924 (= c!1205321 ((_ is Union!16437) r!7292))))

(declare-fun b!6559925 () Bool)

(assert (=> b!6559925 (= e!3971201 call!570551)))

(assert (= (and d!2058108 (not res!2691844)) b!6559921))

(assert (= (and b!6559921 c!1205320) b!6559920))

(assert (= (and b!6559921 (not c!1205320)) b!6559924))

(assert (= (and b!6559920 res!2691843) b!6559917))

(assert (= (and b!6559924 c!1205321) b!6559919))

(assert (= (and b!6559924 (not c!1205321)) b!6559918))

(assert (= (and b!6559919 res!2691842) b!6559922))

(assert (= (and b!6559918 (not res!2691845)) b!6559923))

(assert (= (and b!6559923 res!2691841) b!6559925))

(assert (= (or b!6559922 b!6559925) bm!570547))

(assert (= (or b!6559919 b!6559923) bm!570548))

(assert (= (or b!6559917 bm!570547) bm!570546))

(declare-fun m!7341918 () Bool)

(assert (=> bm!570546 m!7341918))

(declare-fun m!7341920 () Bool)

(assert (=> b!6559920 m!7341920))

(declare-fun m!7341922 () Bool)

(assert (=> bm!570548 m!7341922))

(assert (=> start!642830 d!2058108))

(declare-fun bs!1674227 () Bool)

(declare-fun d!2058126 () Bool)

(assert (= bs!1674227 (and d!2058126 b!6559722)))

(declare-fun lambda!364874 () Int)

(assert (=> bs!1674227 (= lambda!364874 lambda!364857)))

(declare-fun b!6559973 () Bool)

(declare-fun e!3971233 () Bool)

(assert (=> b!6559973 (= e!3971233 (isEmpty!37726 (t!379253 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun b!6559974 () Bool)

(declare-fun e!3971235 () Bool)

(declare-fun lt!2405832 () Regex!16437)

(declare-fun isEmptyExpr!1814 (Regex!16437) Bool)

(assert (=> b!6559974 (= e!3971235 (isEmptyExpr!1814 lt!2405832))))

(declare-fun b!6559975 () Bool)

(declare-fun e!3971230 () Regex!16437)

(assert (=> b!6559975 (= e!3971230 (h!71935 (exprs!6321 (h!71936 zl!343))))))

(declare-fun b!6559976 () Bool)

(declare-fun e!3971231 () Bool)

(declare-fun isConcat!1337 (Regex!16437) Bool)

(assert (=> b!6559976 (= e!3971231 (isConcat!1337 lt!2405832))))

(declare-fun b!6559978 () Bool)

(declare-fun e!3971232 () Regex!16437)

(assert (=> b!6559978 (= e!3971232 EmptyExpr!16437)))

(declare-fun b!6559979 () Bool)

(assert (=> b!6559979 (= e!3971232 (Concat!25282 (h!71935 (exprs!6321 (h!71936 zl!343))) (generalisedConcat!2034 (t!379253 (exprs!6321 (h!71936 zl!343))))))))

(declare-fun b!6559980 () Bool)

(assert (=> b!6559980 (= e!3971235 e!3971231)))

(declare-fun c!1205339 () Bool)

(declare-fun tail!12410 (List!65611) List!65611)

(assert (=> b!6559980 (= c!1205339 (isEmpty!37726 (tail!12410 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun b!6559981 () Bool)

(declare-fun e!3971234 () Bool)

(assert (=> b!6559981 (= e!3971234 e!3971235)))

(declare-fun c!1205336 () Bool)

(assert (=> b!6559981 (= c!1205336 (isEmpty!37726 (exprs!6321 (h!71936 zl!343))))))

(declare-fun b!6559982 () Bool)

(assert (=> b!6559982 (= e!3971230 e!3971232)))

(declare-fun c!1205337 () Bool)

(assert (=> b!6559982 (= c!1205337 ((_ is Cons!65487) (exprs!6321 (h!71936 zl!343))))))

(assert (=> d!2058126 e!3971234))

(declare-fun res!2691866 () Bool)

(assert (=> d!2058126 (=> (not res!2691866) (not e!3971234))))

(assert (=> d!2058126 (= res!2691866 (validRegex!8173 lt!2405832))))

(assert (=> d!2058126 (= lt!2405832 e!3971230)))

(declare-fun c!1205338 () Bool)

(assert (=> d!2058126 (= c!1205338 e!3971233)))

(declare-fun res!2691865 () Bool)

(assert (=> d!2058126 (=> (not res!2691865) (not e!3971233))))

(assert (=> d!2058126 (= res!2691865 ((_ is Cons!65487) (exprs!6321 (h!71936 zl!343))))))

(declare-fun forall!15608 (List!65611 Int) Bool)

(assert (=> d!2058126 (forall!15608 (exprs!6321 (h!71936 zl!343)) lambda!364874)))

(assert (=> d!2058126 (= (generalisedConcat!2034 (exprs!6321 (h!71936 zl!343))) lt!2405832)))

(declare-fun b!6559977 () Bool)

(declare-fun head!13325 (List!65611) Regex!16437)

(assert (=> b!6559977 (= e!3971231 (= lt!2405832 (head!13325 (exprs!6321 (h!71936 zl!343)))))))

(assert (= (and d!2058126 res!2691865) b!6559973))

(assert (= (and d!2058126 c!1205338) b!6559975))

(assert (= (and d!2058126 (not c!1205338)) b!6559982))

(assert (= (and b!6559982 c!1205337) b!6559979))

(assert (= (and b!6559982 (not c!1205337)) b!6559978))

(assert (= (and d!2058126 res!2691866) b!6559981))

(assert (= (and b!6559981 c!1205336) b!6559974))

(assert (= (and b!6559981 (not c!1205336)) b!6559980))

(assert (= (and b!6559980 c!1205339) b!6559977))

(assert (= (and b!6559980 (not c!1205339)) b!6559976))

(declare-fun m!7341954 () Bool)

(assert (=> d!2058126 m!7341954))

(declare-fun m!7341956 () Bool)

(assert (=> d!2058126 m!7341956))

(declare-fun m!7341958 () Bool)

(assert (=> b!6559980 m!7341958))

(assert (=> b!6559980 m!7341958))

(declare-fun m!7341960 () Bool)

(assert (=> b!6559980 m!7341960))

(declare-fun m!7341962 () Bool)

(assert (=> b!6559976 m!7341962))

(assert (=> b!6559973 m!7341788))

(declare-fun m!7341964 () Bool)

(assert (=> b!6559981 m!7341964))

(declare-fun m!7341966 () Bool)

(assert (=> b!6559979 m!7341966))

(declare-fun m!7341968 () Bool)

(assert (=> b!6559977 m!7341968))

(declare-fun m!7341970 () Bool)

(assert (=> b!6559974 m!7341970))

(assert (=> b!6559706 d!2058126))

(declare-fun bs!1674228 () Bool)

(declare-fun d!2058132 () Bool)

(assert (= bs!1674228 (and d!2058132 b!6559722)))

(declare-fun lambda!364879 () Int)

(assert (=> bs!1674228 (= lambda!364879 lambda!364857)))

(declare-fun bs!1674229 () Bool)

(assert (= bs!1674229 (and d!2058132 d!2058126)))

(assert (=> bs!1674229 (= lambda!364879 lambda!364874)))

(assert (=> d!2058132 (= (inv!84339 setElem!44778) (forall!15608 (exprs!6321 setElem!44778) lambda!364879))))

(declare-fun bs!1674230 () Bool)

(assert (= bs!1674230 d!2058132))

(declare-fun m!7341972 () Bool)

(assert (=> bs!1674230 m!7341972))

(assert (=> setNonEmpty!44778 d!2058132))

(declare-fun d!2058134 () Bool)

(declare-fun choose!48921 (Int) Bool)

(assert (=> d!2058134 (= (Exists!3507 lambda!364853) (choose!48921 lambda!364853))))

(declare-fun bs!1674231 () Bool)

(assert (= bs!1674231 d!2058134))

(declare-fun m!7341974 () Bool)

(assert (=> bs!1674231 m!7341974))

(assert (=> b!6559726 d!2058134))

(declare-fun b!6560019 () Bool)

(declare-fun e!3971255 () Bool)

(assert (=> b!6560019 (= e!3971255 (matchR!8620 (regTwo!33386 r!7292) s!2326))))

(declare-fun b!6560020 () Bool)

(declare-fun e!3971259 () Bool)

(declare-fun lt!2405847 () Option!16328)

(assert (=> b!6560020 (= e!3971259 (= (++!14576 (_1!36719 (get!22737 lt!2405847)) (_2!36719 (get!22737 lt!2405847))) s!2326))))

(declare-fun b!6560021 () Bool)

(declare-fun e!3971257 () Option!16328)

(assert (=> b!6560021 (= e!3971257 None!16327)))

(declare-fun b!6560022 () Bool)

(declare-fun e!3971256 () Bool)

(assert (=> b!6560022 (= e!3971256 (not (isDefined!13031 lt!2405847)))))

(declare-fun b!6560023 () Bool)

(declare-fun res!2691891 () Bool)

(assert (=> b!6560023 (=> (not res!2691891) (not e!3971259))))

(assert (=> b!6560023 (= res!2691891 (matchR!8620 (regOne!33386 r!7292) (_1!36719 (get!22737 lt!2405847))))))

(declare-fun b!6560024 () Bool)

(declare-fun lt!2405846 () Unit!159083)

(declare-fun lt!2405845 () Unit!159083)

(assert (=> b!6560024 (= lt!2405846 lt!2405845)))

(assert (=> b!6560024 (= (++!14576 (++!14576 Nil!65486 (Cons!65486 (h!71934 s!2326) Nil!65486)) (t!379252 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2580 (List!65610 C!33144 List!65610 List!65610) Unit!159083)

(assert (=> b!6560024 (= lt!2405845 (lemmaMoveElementToOtherListKeepsConcatEq!2580 Nil!65486 (h!71934 s!2326) (t!379252 s!2326) s!2326))))

(assert (=> b!6560024 (= e!3971257 (findConcatSeparation!2742 (regOne!33386 r!7292) (regTwo!33386 r!7292) (++!14576 Nil!65486 (Cons!65486 (h!71934 s!2326) Nil!65486)) (t!379252 s!2326) s!2326))))

(declare-fun d!2058136 () Bool)

(assert (=> d!2058136 e!3971256))

(declare-fun res!2691892 () Bool)

(assert (=> d!2058136 (=> res!2691892 e!3971256)))

(assert (=> d!2058136 (= res!2691892 e!3971259)))

(declare-fun res!2691890 () Bool)

(assert (=> d!2058136 (=> (not res!2691890) (not e!3971259))))

(assert (=> d!2058136 (= res!2691890 (isDefined!13031 lt!2405847))))

(declare-fun e!3971258 () Option!16328)

(assert (=> d!2058136 (= lt!2405847 e!3971258)))

(declare-fun c!1205347 () Bool)

(assert (=> d!2058136 (= c!1205347 e!3971255)))

(declare-fun res!2691893 () Bool)

(assert (=> d!2058136 (=> (not res!2691893) (not e!3971255))))

(assert (=> d!2058136 (= res!2691893 (matchR!8620 (regOne!33386 r!7292) Nil!65486))))

(assert (=> d!2058136 (validRegex!8173 (regOne!33386 r!7292))))

(assert (=> d!2058136 (= (findConcatSeparation!2742 (regOne!33386 r!7292) (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326) lt!2405847)))

(declare-fun b!6560025 () Bool)

(assert (=> b!6560025 (= e!3971258 e!3971257)))

(declare-fun c!1205348 () Bool)

(assert (=> b!6560025 (= c!1205348 ((_ is Nil!65486) s!2326))))

(declare-fun b!6560026 () Bool)

(declare-fun res!2691889 () Bool)

(assert (=> b!6560026 (=> (not res!2691889) (not e!3971259))))

(assert (=> b!6560026 (= res!2691889 (matchR!8620 (regTwo!33386 r!7292) (_2!36719 (get!22737 lt!2405847))))))

(declare-fun b!6560027 () Bool)

(assert (=> b!6560027 (= e!3971258 (Some!16327 (tuple2!66833 Nil!65486 s!2326)))))

(assert (= (and d!2058136 res!2691893) b!6560019))

(assert (= (and d!2058136 c!1205347) b!6560027))

(assert (= (and d!2058136 (not c!1205347)) b!6560025))

(assert (= (and b!6560025 c!1205348) b!6560021))

(assert (= (and b!6560025 (not c!1205348)) b!6560024))

(assert (= (and d!2058136 res!2691890) b!6560023))

(assert (= (and b!6560023 res!2691891) b!6560026))

(assert (= (and b!6560026 res!2691889) b!6560020))

(assert (= (and d!2058136 (not res!2691892)) b!6560022))

(declare-fun m!7342004 () Bool)

(assert (=> b!6560024 m!7342004))

(assert (=> b!6560024 m!7342004))

(declare-fun m!7342006 () Bool)

(assert (=> b!6560024 m!7342006))

(declare-fun m!7342008 () Bool)

(assert (=> b!6560024 m!7342008))

(assert (=> b!6560024 m!7342004))

(declare-fun m!7342010 () Bool)

(assert (=> b!6560024 m!7342010))

(declare-fun m!7342012 () Bool)

(assert (=> b!6560020 m!7342012))

(declare-fun m!7342014 () Bool)

(assert (=> b!6560020 m!7342014))

(assert (=> b!6560026 m!7342012))

(declare-fun m!7342016 () Bool)

(assert (=> b!6560026 m!7342016))

(declare-fun m!7342018 () Bool)

(assert (=> d!2058136 m!7342018))

(declare-fun m!7342020 () Bool)

(assert (=> d!2058136 m!7342020))

(declare-fun m!7342022 () Bool)

(assert (=> d!2058136 m!7342022))

(assert (=> b!6560023 m!7342012))

(declare-fun m!7342024 () Bool)

(assert (=> b!6560023 m!7342024))

(assert (=> b!6560022 m!7342018))

(declare-fun m!7342026 () Bool)

(assert (=> b!6560019 m!7342026))

(assert (=> b!6559726 d!2058136))

(declare-fun d!2058150 () Bool)

(assert (=> d!2058150 (= (Exists!3507 lambda!364854) (choose!48921 lambda!364854))))

(declare-fun bs!1674257 () Bool)

(assert (= bs!1674257 d!2058150))

(declare-fun m!7342028 () Bool)

(assert (=> bs!1674257 m!7342028))

(assert (=> b!6559726 d!2058150))

(declare-fun bs!1674260 () Bool)

(declare-fun d!2058152 () Bool)

(assert (= bs!1674260 (and d!2058152 b!6559726)))

(declare-fun lambda!364892 () Int)

(assert (=> bs!1674260 (= lambda!364892 lambda!364853)))

(assert (=> bs!1674260 (not (= lambda!364892 lambda!364854))))

(declare-fun bs!1674261 () Bool)

(assert (= bs!1674261 (and d!2058152 b!6559709)))

(assert (=> bs!1674261 (= (and (= s!2326 (_1!36719 lt!2405757)) (= (regOne!33386 r!7292) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 r!7292) lt!2405790)) (= lambda!364892 lambda!364860))))

(declare-fun bs!1674262 () Bool)

(assert (= bs!1674262 (and d!2058152 b!6559711)))

(assert (=> bs!1674262 (= (= (regOne!33386 r!7292) lt!2405774) (= lambda!364892 lambda!364858))))

(assert (=> bs!1674261 (not (= lambda!364892 lambda!364861))))

(assert (=> bs!1674262 (not (= lambda!364892 lambda!364859))))

(assert (=> d!2058152 true))

(assert (=> d!2058152 true))

(assert (=> d!2058152 true))

(assert (=> d!2058152 (= (isDefined!13031 (findConcatSeparation!2742 (regOne!33386 r!7292) (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326)) (Exists!3507 lambda!364892))))

(declare-fun lt!2405856 () Unit!159083)

(declare-fun choose!48922 (Regex!16437 Regex!16437 List!65610) Unit!159083)

(assert (=> d!2058152 (= lt!2405856 (choose!48922 (regOne!33386 r!7292) (regTwo!33386 r!7292) s!2326))))

(assert (=> d!2058152 (validRegex!8173 (regOne!33386 r!7292))))

(assert (=> d!2058152 (= (lemmaFindConcatSeparationEquivalentToExists!2506 (regOne!33386 r!7292) (regTwo!33386 r!7292) s!2326) lt!2405856)))

(declare-fun bs!1674263 () Bool)

(assert (= bs!1674263 d!2058152))

(assert (=> bs!1674263 m!7342022))

(assert (=> bs!1674263 m!7341764))

(declare-fun m!7342054 () Bool)

(assert (=> bs!1674263 m!7342054))

(assert (=> bs!1674263 m!7341764))

(assert (=> bs!1674263 m!7341766))

(declare-fun m!7342056 () Bool)

(assert (=> bs!1674263 m!7342056))

(assert (=> b!6559726 d!2058152))

(declare-fun bs!1674264 () Bool)

(declare-fun d!2058162 () Bool)

(assert (= bs!1674264 (and d!2058162 b!6559726)))

(declare-fun lambda!364898 () Int)

(assert (=> bs!1674264 (= lambda!364898 lambda!364853)))

(assert (=> bs!1674264 (not (= lambda!364898 lambda!364854))))

(declare-fun bs!1674265 () Bool)

(assert (= bs!1674265 (and d!2058162 d!2058152)))

(assert (=> bs!1674265 (= lambda!364898 lambda!364892)))

(declare-fun bs!1674266 () Bool)

(assert (= bs!1674266 (and d!2058162 b!6559709)))

(assert (=> bs!1674266 (= (and (= s!2326 (_1!36719 lt!2405757)) (= (regOne!33386 r!7292) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 r!7292) lt!2405790)) (= lambda!364898 lambda!364860))))

(declare-fun bs!1674267 () Bool)

(assert (= bs!1674267 (and d!2058162 b!6559711)))

(assert (=> bs!1674267 (= (= (regOne!33386 r!7292) lt!2405774) (= lambda!364898 lambda!364858))))

(assert (=> bs!1674266 (not (= lambda!364898 lambda!364861))))

(assert (=> bs!1674267 (not (= lambda!364898 lambda!364859))))

(assert (=> d!2058162 true))

(assert (=> d!2058162 true))

(assert (=> d!2058162 true))

(declare-fun lambda!364903 () Int)

(assert (=> bs!1674264 (not (= lambda!364903 lambda!364853))))

(assert (=> bs!1674264 (= lambda!364903 lambda!364854)))

(declare-fun bs!1674269 () Bool)

(assert (= bs!1674269 d!2058162))

(assert (=> bs!1674269 (not (= lambda!364903 lambda!364898))))

(assert (=> bs!1674265 (not (= lambda!364903 lambda!364892))))

(assert (=> bs!1674266 (not (= lambda!364903 lambda!364860))))

(assert (=> bs!1674267 (not (= lambda!364903 lambda!364858))))

(assert (=> bs!1674266 (= (and (= s!2326 (_1!36719 lt!2405757)) (= (regOne!33386 r!7292) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 r!7292) lt!2405790)) (= lambda!364903 lambda!364861))))

(assert (=> bs!1674267 (= (= (regOne!33386 r!7292) lt!2405774) (= lambda!364903 lambda!364859))))

(assert (=> d!2058162 true))

(assert (=> d!2058162 true))

(assert (=> d!2058162 true))

(assert (=> d!2058162 (= (Exists!3507 lambda!364898) (Exists!3507 lambda!364903))))

(declare-fun lt!2405868 () Unit!159083)

(declare-fun choose!48924 (Regex!16437 Regex!16437 List!65610) Unit!159083)

(assert (=> d!2058162 (= lt!2405868 (choose!48924 (regOne!33386 r!7292) (regTwo!33386 r!7292) s!2326))))

(assert (=> d!2058162 (validRegex!8173 (regOne!33386 r!7292))))

(assert (=> d!2058162 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2044 (regOne!33386 r!7292) (regTwo!33386 r!7292) s!2326) lt!2405868)))

(declare-fun m!7342086 () Bool)

(assert (=> bs!1674269 m!7342086))

(declare-fun m!7342088 () Bool)

(assert (=> bs!1674269 m!7342088))

(declare-fun m!7342090 () Bool)

(assert (=> bs!1674269 m!7342090))

(assert (=> bs!1674269 m!7342022))

(assert (=> b!6559726 d!2058162))

(declare-fun d!2058170 () Bool)

(declare-fun isEmpty!37730 (Option!16328) Bool)

(assert (=> d!2058170 (= (isDefined!13031 (findConcatSeparation!2742 (regOne!33386 r!7292) (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326)) (not (isEmpty!37730 (findConcatSeparation!2742 (regOne!33386 r!7292) (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326))))))

(declare-fun bs!1674272 () Bool)

(assert (= bs!1674272 d!2058170))

(assert (=> bs!1674272 m!7341764))

(declare-fun m!7342092 () Bool)

(assert (=> bs!1674272 m!7342092))

(assert (=> b!6559726 d!2058170))

(declare-fun d!2058172 () Bool)

(declare-fun nullableFct!2355 (Regex!16437) Bool)

(assert (=> d!2058172 (= (nullable!6430 (regOne!33386 (regOne!33386 r!7292))) (nullableFct!2355 (regOne!33386 (regOne!33386 r!7292))))))

(declare-fun bs!1674273 () Bool)

(assert (= bs!1674273 d!2058172))

(declare-fun m!7342094 () Bool)

(assert (=> bs!1674273 m!7342094))

(assert (=> b!6559725 d!2058172))

(declare-fun bs!1674288 () Bool)

(declare-fun b!6560152 () Bool)

(assert (= bs!1674288 (and b!6560152 b!6559726)))

(declare-fun lambda!364909 () Int)

(assert (=> bs!1674288 (not (= lambda!364909 lambda!364854))))

(declare-fun bs!1674289 () Bool)

(assert (= bs!1674289 (and b!6560152 d!2058162)))

(assert (=> bs!1674289 (not (= lambda!364909 lambda!364898))))

(declare-fun bs!1674290 () Bool)

(assert (= bs!1674290 (and b!6560152 d!2058152)))

(assert (=> bs!1674290 (not (= lambda!364909 lambda!364892))))

(declare-fun bs!1674291 () Bool)

(assert (= bs!1674291 (and b!6560152 b!6559709)))

(assert (=> bs!1674291 (not (= lambda!364909 lambda!364860))))

(declare-fun bs!1674292 () Bool)

(assert (= bs!1674292 (and b!6560152 b!6559711)))

(assert (=> bs!1674292 (not (= lambda!364909 lambda!364858))))

(assert (=> bs!1674291 (not (= lambda!364909 lambda!364861))))

(assert (=> bs!1674292 (not (= lambda!364909 lambda!364859))))

(assert (=> bs!1674289 (not (= lambda!364909 lambda!364903))))

(assert (=> bs!1674288 (not (= lambda!364909 lambda!364853))))

(assert (=> b!6560152 true))

(assert (=> b!6560152 true))

(declare-fun bs!1674294 () Bool)

(declare-fun b!6560151 () Bool)

(assert (= bs!1674294 (and b!6560151 b!6559726)))

(declare-fun lambda!364910 () Int)

(assert (=> bs!1674294 (= (and (= (regOne!33386 lt!2405801) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405801) (regTwo!33386 r!7292))) (= lambda!364910 lambda!364854))))

(declare-fun bs!1674295 () Bool)

(assert (= bs!1674295 (and b!6560151 d!2058162)))

(assert (=> bs!1674295 (not (= lambda!364910 lambda!364898))))

(declare-fun bs!1674296 () Bool)

(assert (= bs!1674296 (and b!6560151 d!2058152)))

(assert (=> bs!1674296 (not (= lambda!364910 lambda!364892))))

(declare-fun bs!1674297 () Bool)

(assert (= bs!1674297 (and b!6560151 b!6559709)))

(assert (=> bs!1674297 (not (= lambda!364910 lambda!364860))))

(declare-fun bs!1674298 () Bool)

(assert (= bs!1674298 (and b!6560151 b!6559711)))

(assert (=> bs!1674298 (not (= lambda!364910 lambda!364858))))

(assert (=> bs!1674298 (= (and (= (regOne!33386 lt!2405801) lt!2405774) (= (regTwo!33386 lt!2405801) (regTwo!33386 r!7292))) (= lambda!364910 lambda!364859))))

(assert (=> bs!1674295 (= (and (= (regOne!33386 lt!2405801) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405801) (regTwo!33386 r!7292))) (= lambda!364910 lambda!364903))))

(assert (=> bs!1674294 (not (= lambda!364910 lambda!364853))))

(declare-fun bs!1674299 () Bool)

(assert (= bs!1674299 (and b!6560151 b!6560152)))

(assert (=> bs!1674299 (not (= lambda!364910 lambda!364909))))

(assert (=> bs!1674297 (= (and (= s!2326 (_1!36719 lt!2405757)) (= (regOne!33386 lt!2405801) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 lt!2405801) lt!2405790)) (= lambda!364910 lambda!364861))))

(assert (=> b!6560151 true))

(assert (=> b!6560151 true))

(declare-fun b!6560142 () Bool)

(declare-fun c!1205374 () Bool)

(assert (=> b!6560142 (= c!1205374 ((_ is ElementMatch!16437) lt!2405801))))

(declare-fun e!3971325 () Bool)

(declare-fun e!3971327 () Bool)

(assert (=> b!6560142 (= e!3971325 e!3971327)))

(declare-fun bm!570554 () Bool)

(declare-fun call!570559 () Bool)

(assert (=> bm!570554 (= call!570559 (isEmpty!37729 s!2326))))

(declare-fun b!6560143 () Bool)

(declare-fun c!1205373 () Bool)

(assert (=> b!6560143 (= c!1205373 ((_ is Union!16437) lt!2405801))))

(declare-fun e!3971321 () Bool)

(assert (=> b!6560143 (= e!3971327 e!3971321)))

(declare-fun b!6560144 () Bool)

(declare-fun e!3971326 () Bool)

(assert (=> b!6560144 (= e!3971321 e!3971326)))

(declare-fun res!2691960 () Bool)

(assert (=> b!6560144 (= res!2691960 (matchRSpec!3538 (regOne!33387 lt!2405801) s!2326))))

(assert (=> b!6560144 (=> res!2691960 e!3971326)))

(declare-fun b!6560145 () Bool)

(assert (=> b!6560145 (= e!3971326 (matchRSpec!3538 (regTwo!33387 lt!2405801) s!2326))))

(declare-fun call!570560 () Bool)

(declare-fun c!1205375 () Bool)

(declare-fun bm!570555 () Bool)

(assert (=> bm!570555 (= call!570560 (Exists!3507 (ite c!1205375 lambda!364909 lambda!364910)))))

(declare-fun b!6560146 () Bool)

(declare-fun e!3971322 () Bool)

(assert (=> b!6560146 (= e!3971322 call!570559)))

(declare-fun b!6560147 () Bool)

(declare-fun res!2691962 () Bool)

(declare-fun e!3971323 () Bool)

(assert (=> b!6560147 (=> res!2691962 e!3971323)))

(assert (=> b!6560147 (= res!2691962 call!570559)))

(declare-fun e!3971324 () Bool)

(assert (=> b!6560147 (= e!3971324 e!3971323)))

(declare-fun b!6560148 () Bool)

(assert (=> b!6560148 (= e!3971321 e!3971324)))

(assert (=> b!6560148 (= c!1205375 ((_ is Star!16437) lt!2405801))))

(declare-fun b!6560149 () Bool)

(assert (=> b!6560149 (= e!3971327 (= s!2326 (Cons!65486 (c!1205274 lt!2405801) Nil!65486)))))

(declare-fun b!6560150 () Bool)

(assert (=> b!6560150 (= e!3971322 e!3971325)))

(declare-fun res!2691961 () Bool)

(assert (=> b!6560150 (= res!2691961 (not ((_ is EmptyLang!16437) lt!2405801)))))

(assert (=> b!6560150 (=> (not res!2691961) (not e!3971325))))

(declare-fun d!2058174 () Bool)

(declare-fun c!1205376 () Bool)

(assert (=> d!2058174 (= c!1205376 ((_ is EmptyExpr!16437) lt!2405801))))

(assert (=> d!2058174 (= (matchRSpec!3538 lt!2405801 s!2326) e!3971322)))

(assert (=> b!6560151 (= e!3971324 call!570560)))

(assert (=> b!6560152 (= e!3971323 call!570560)))

(assert (= (and d!2058174 c!1205376) b!6560146))

(assert (= (and d!2058174 (not c!1205376)) b!6560150))

(assert (= (and b!6560150 res!2691961) b!6560142))

(assert (= (and b!6560142 c!1205374) b!6560149))

(assert (= (and b!6560142 (not c!1205374)) b!6560143))

(assert (= (and b!6560143 c!1205373) b!6560144))

(assert (= (and b!6560143 (not c!1205373)) b!6560148))

(assert (= (and b!6560144 (not res!2691960)) b!6560145))

(assert (= (and b!6560148 c!1205375) b!6560147))

(assert (= (and b!6560148 (not c!1205375)) b!6560151))

(assert (= (and b!6560147 (not res!2691962)) b!6560152))

(assert (= (or b!6560152 b!6560151) bm!570555))

(assert (= (or b!6560146 b!6560147) bm!570554))

(declare-fun m!7342178 () Bool)

(assert (=> bm!570554 m!7342178))

(declare-fun m!7342180 () Bool)

(assert (=> b!6560144 m!7342180))

(declare-fun m!7342182 () Bool)

(assert (=> b!6560145 m!7342182))

(declare-fun m!7342184 () Bool)

(assert (=> bm!570555 m!7342184))

(assert (=> b!6559705 d!2058174))

(declare-fun b!6560223 () Bool)

(declare-fun e!3971370 () Bool)

(declare-fun lt!2405898 () Bool)

(assert (=> b!6560223 (= e!3971370 (not lt!2405898))))

(declare-fun b!6560224 () Bool)

(declare-fun e!3971369 () Bool)

(declare-fun e!3971365 () Bool)

(assert (=> b!6560224 (= e!3971369 e!3971365)))

(declare-fun res!2692007 () Bool)

(assert (=> b!6560224 (=> (not res!2692007) (not e!3971365))))

(assert (=> b!6560224 (= res!2692007 (not lt!2405898))))

(declare-fun b!6560225 () Bool)

(declare-fun e!3971368 () Bool)

(declare-fun call!570565 () Bool)

(assert (=> b!6560225 (= e!3971368 (= lt!2405898 call!570565))))

(declare-fun b!6560226 () Bool)

(declare-fun res!2692008 () Bool)

(declare-fun e!3971366 () Bool)

(assert (=> b!6560226 (=> (not res!2692008) (not e!3971366))))

(assert (=> b!6560226 (= res!2692008 (isEmpty!37729 (tail!12409 s!2326)))))

(declare-fun b!6560227 () Bool)

(assert (=> b!6560227 (= e!3971366 (= (head!13324 s!2326) (c!1205274 lt!2405801)))))

(declare-fun b!6560228 () Bool)

(declare-fun e!3971367 () Bool)

(assert (=> b!6560228 (= e!3971367 (not (= (head!13324 s!2326) (c!1205274 lt!2405801))))))

(declare-fun b!6560229 () Bool)

(declare-fun e!3971372 () Bool)

(declare-fun derivativeStep!5121 (Regex!16437 C!33144) Regex!16437)

(assert (=> b!6560229 (= e!3971372 (matchR!8620 (derivativeStep!5121 lt!2405801 (head!13324 s!2326)) (tail!12409 s!2326)))))

(declare-fun b!6560230 () Bool)

(declare-fun res!2692005 () Bool)

(assert (=> b!6560230 (=> (not res!2692005) (not e!3971366))))

(assert (=> b!6560230 (= res!2692005 (not call!570565))))

(declare-fun b!6560231 () Bool)

(assert (=> b!6560231 (= e!3971365 e!3971367)))

(declare-fun res!2692006 () Bool)

(assert (=> b!6560231 (=> res!2692006 e!3971367)))

(assert (=> b!6560231 (= res!2692006 call!570565)))

(declare-fun b!6560232 () Bool)

(assert (=> b!6560232 (= e!3971372 (nullable!6430 lt!2405801))))

(declare-fun b!6560233 () Bool)

(declare-fun res!2692011 () Bool)

(assert (=> b!6560233 (=> res!2692011 e!3971369)))

(assert (=> b!6560233 (= res!2692011 e!3971366)))

(declare-fun res!2692004 () Bool)

(assert (=> b!6560233 (=> (not res!2692004) (not e!3971366))))

(assert (=> b!6560233 (= res!2692004 lt!2405898)))

(declare-fun b!6560234 () Bool)

(assert (=> b!6560234 (= e!3971368 e!3971370)))

(declare-fun c!1205394 () Bool)

(assert (=> b!6560234 (= c!1205394 ((_ is EmptyLang!16437) lt!2405801))))

(declare-fun d!2058196 () Bool)

(assert (=> d!2058196 e!3971368))

(declare-fun c!1205392 () Bool)

(assert (=> d!2058196 (= c!1205392 ((_ is EmptyExpr!16437) lt!2405801))))

(assert (=> d!2058196 (= lt!2405898 e!3971372)))

(declare-fun c!1205393 () Bool)

(assert (=> d!2058196 (= c!1205393 (isEmpty!37729 s!2326))))

(assert (=> d!2058196 (validRegex!8173 lt!2405801)))

(assert (=> d!2058196 (= (matchR!8620 lt!2405801 s!2326) lt!2405898)))

(declare-fun bm!570560 () Bool)

(assert (=> bm!570560 (= call!570565 (isEmpty!37729 s!2326))))

(declare-fun b!6560235 () Bool)

(declare-fun res!2692009 () Bool)

(assert (=> b!6560235 (=> res!2692009 e!3971369)))

(assert (=> b!6560235 (= res!2692009 (not ((_ is ElementMatch!16437) lt!2405801)))))

(assert (=> b!6560235 (= e!3971370 e!3971369)))

(declare-fun b!6560236 () Bool)

(declare-fun res!2692003 () Bool)

(assert (=> b!6560236 (=> res!2692003 e!3971367)))

(assert (=> b!6560236 (= res!2692003 (not (isEmpty!37729 (tail!12409 s!2326))))))

(assert (= (and d!2058196 c!1205393) b!6560232))

(assert (= (and d!2058196 (not c!1205393)) b!6560229))

(assert (= (and d!2058196 c!1205392) b!6560225))

(assert (= (and d!2058196 (not c!1205392)) b!6560234))

(assert (= (and b!6560234 c!1205394) b!6560223))

(assert (= (and b!6560234 (not c!1205394)) b!6560235))

(assert (= (and b!6560235 (not res!2692009)) b!6560233))

(assert (= (and b!6560233 res!2692004) b!6560230))

(assert (= (and b!6560230 res!2692005) b!6560226))

(assert (= (and b!6560226 res!2692008) b!6560227))

(assert (= (and b!6560233 (not res!2692011)) b!6560224))

(assert (= (and b!6560224 res!2692007) b!6560231))

(assert (= (and b!6560231 (not res!2692006)) b!6560236))

(assert (= (and b!6560236 (not res!2692003)) b!6560228))

(assert (= (or b!6560225 b!6560230 b!6560231) bm!570560))

(assert (=> d!2058196 m!7342178))

(declare-fun m!7342208 () Bool)

(assert (=> d!2058196 m!7342208))

(declare-fun m!7342210 () Bool)

(assert (=> b!6560232 m!7342210))

(declare-fun m!7342212 () Bool)

(assert (=> b!6560236 m!7342212))

(assert (=> b!6560236 m!7342212))

(declare-fun m!7342216 () Bool)

(assert (=> b!6560236 m!7342216))

(declare-fun m!7342218 () Bool)

(assert (=> b!6560229 m!7342218))

(assert (=> b!6560229 m!7342218))

(declare-fun m!7342220 () Bool)

(assert (=> b!6560229 m!7342220))

(assert (=> b!6560229 m!7342212))

(assert (=> b!6560229 m!7342220))

(assert (=> b!6560229 m!7342212))

(declare-fun m!7342224 () Bool)

(assert (=> b!6560229 m!7342224))

(assert (=> b!6560226 m!7342212))

(assert (=> b!6560226 m!7342212))

(assert (=> b!6560226 m!7342216))

(assert (=> b!6560228 m!7342218))

(assert (=> bm!570560 m!7342178))

(assert (=> b!6560227 m!7342218))

(assert (=> b!6559705 d!2058196))

(declare-fun d!2058206 () Bool)

(assert (=> d!2058206 (= (matchR!8620 lt!2405801 s!2326) (matchRSpec!3538 lt!2405801 s!2326))))

(declare-fun lt!2405903 () Unit!159083)

(declare-fun choose!48927 (Regex!16437 List!65610) Unit!159083)

(assert (=> d!2058206 (= lt!2405903 (choose!48927 lt!2405801 s!2326))))

(assert (=> d!2058206 (validRegex!8173 lt!2405801)))

(assert (=> d!2058206 (= (mainMatchTheorem!3538 lt!2405801 s!2326) lt!2405903)))

(declare-fun bs!1674313 () Bool)

(assert (= bs!1674313 d!2058206))

(assert (=> bs!1674313 m!7341848))

(assert (=> bs!1674313 m!7341846))

(declare-fun m!7342228 () Bool)

(assert (=> bs!1674313 m!7342228))

(assert (=> bs!1674313 m!7342208))

(assert (=> b!6559705 d!2058206))

(declare-fun d!2058208 () Bool)

(assert (=> d!2058208 (= (isEmpty!37726 (t!379253 (exprs!6321 (h!71936 zl!343)))) ((_ is Nil!65487) (t!379253 (exprs!6321 (h!71936 zl!343)))))))

(assert (=> b!6559702 d!2058208))

(declare-fun d!2058210 () Bool)

(declare-fun dynLambda!26044 (Int Context!11642) Context!11642)

(assert (=> d!2058210 (= (map!14964 lt!2405782 lambda!364856) (store ((as const (Array Context!11642 Bool)) false) (dynLambda!26044 lambda!364856 lt!2405775) true))))

(declare-fun lt!2405907 () Unit!159083)

(declare-fun choose!48929 ((InoxSet Context!11642) Context!11642 Int) Unit!159083)

(assert (=> d!2058210 (= lt!2405907 (choose!48929 lt!2405782 lt!2405775 lambda!364856))))

(assert (=> d!2058210 (= lt!2405782 (store ((as const (Array Context!11642 Bool)) false) lt!2405775 true))))

(assert (=> d!2058210 (= (lemmaMapOnSingletonSet!220 lt!2405782 lt!2405775 lambda!364856) lt!2405907)))

(declare-fun b_lambda!248163 () Bool)

(assert (=> (not b_lambda!248163) (not d!2058210)))

(declare-fun bs!1674316 () Bool)

(assert (= bs!1674316 d!2058210))

(declare-fun m!7342252 () Bool)

(assert (=> bs!1674316 m!7342252))

(assert (=> bs!1674316 m!7341810))

(assert (=> bs!1674316 m!7341736))

(declare-fun m!7342254 () Bool)

(assert (=> bs!1674316 m!7342254))

(declare-fun m!7342256 () Bool)

(assert (=> bs!1674316 m!7342256))

(assert (=> bs!1674316 m!7342254))

(assert (=> b!6559722 d!2058210))

(declare-fun d!2058218 () Bool)

(assert (=> d!2058218 (forall!15608 (++!14577 lt!2405784 lt!2405792) lambda!364857)))

(declare-fun lt!2405910 () Unit!159083)

(declare-fun choose!48931 (List!65611 List!65611 Int) Unit!159083)

(assert (=> d!2058218 (= lt!2405910 (choose!48931 lt!2405784 lt!2405792 lambda!364857))))

(assert (=> d!2058218 (forall!15608 lt!2405784 lambda!364857)))

(assert (=> d!2058218 (= (lemmaConcatPreservesForall!410 lt!2405784 lt!2405792 lambda!364857) lt!2405910)))

(declare-fun bs!1674328 () Bool)

(assert (= bs!1674328 d!2058218))

(assert (=> bs!1674328 m!7341672))

(assert (=> bs!1674328 m!7341672))

(declare-fun m!7342258 () Bool)

(assert (=> bs!1674328 m!7342258))

(declare-fun m!7342260 () Bool)

(assert (=> bs!1674328 m!7342260))

(declare-fun m!7342262 () Bool)

(assert (=> bs!1674328 m!7342262))

(assert (=> b!6559722 d!2058218))

(declare-fun b!6560287 () Bool)

(declare-fun lt!2405914 () List!65611)

(declare-fun e!3971398 () Bool)

(assert (=> b!6560287 (= e!3971398 (or (not (= lt!2405792 Nil!65487)) (= lt!2405914 lt!2405784)))))

(declare-fun b!6560284 () Bool)

(declare-fun e!3971397 () List!65611)

(assert (=> b!6560284 (= e!3971397 lt!2405792)))

(declare-fun b!6560285 () Bool)

(assert (=> b!6560285 (= e!3971397 (Cons!65487 (h!71935 lt!2405784) (++!14577 (t!379253 lt!2405784) lt!2405792)))))

(declare-fun b!6560286 () Bool)

(declare-fun res!2692035 () Bool)

(assert (=> b!6560286 (=> (not res!2692035) (not e!3971398))))

(declare-fun size!40523 (List!65611) Int)

(assert (=> b!6560286 (= res!2692035 (= (size!40523 lt!2405914) (+ (size!40523 lt!2405784) (size!40523 lt!2405792))))))

(declare-fun d!2058220 () Bool)

(assert (=> d!2058220 e!3971398))

(declare-fun res!2692034 () Bool)

(assert (=> d!2058220 (=> (not res!2692034) (not e!3971398))))

(declare-fun content!12591 (List!65611) (InoxSet Regex!16437))

(assert (=> d!2058220 (= res!2692034 (= (content!12591 lt!2405914) ((_ map or) (content!12591 lt!2405784) (content!12591 lt!2405792))))))

(assert (=> d!2058220 (= lt!2405914 e!3971397)))

(declare-fun c!1205407 () Bool)

(assert (=> d!2058220 (= c!1205407 ((_ is Nil!65487) lt!2405784))))

(assert (=> d!2058220 (= (++!14577 lt!2405784 lt!2405792) lt!2405914)))

(assert (= (and d!2058220 c!1205407) b!6560284))

(assert (= (and d!2058220 (not c!1205407)) b!6560285))

(assert (= (and d!2058220 res!2692034) b!6560286))

(assert (= (and b!6560286 res!2692035) b!6560287))

(declare-fun m!7342272 () Bool)

(assert (=> b!6560285 m!7342272))

(declare-fun m!7342274 () Bool)

(assert (=> b!6560286 m!7342274))

(declare-fun m!7342276 () Bool)

(assert (=> b!6560286 m!7342276))

(declare-fun m!7342278 () Bool)

(assert (=> b!6560286 m!7342278))

(declare-fun m!7342280 () Bool)

(assert (=> d!2058220 m!7342280))

(declare-fun m!7342282 () Bool)

(assert (=> d!2058220 m!7342282))

(declare-fun m!7342284 () Bool)

(assert (=> d!2058220 m!7342284))

(assert (=> b!6559722 d!2058220))

(declare-fun d!2058226 () Bool)

(declare-fun choose!48933 ((InoxSet Context!11642) Int) (InoxSet Context!11642))

(assert (=> d!2058226 (= (map!14964 lt!2405782 lambda!364856) (choose!48933 lt!2405782 lambda!364856))))

(declare-fun bs!1674346 () Bool)

(assert (= bs!1674346 d!2058226))

(declare-fun m!7342286 () Bool)

(assert (=> bs!1674346 m!7342286))

(assert (=> b!6559722 d!2058226))

(declare-fun bs!1674347 () Bool)

(declare-fun d!2058228 () Bool)

(assert (= bs!1674347 (and d!2058228 b!6559722)))

(declare-fun lambda!364921 () Int)

(assert (=> bs!1674347 (= (= (exprs!6321 lt!2405750) lt!2405792) (= lambda!364921 lambda!364856))))

(assert (=> d!2058228 true))

(assert (=> d!2058228 (= (appendTo!198 lt!2405782 lt!2405750) (map!14964 lt!2405782 lambda!364921))))

(declare-fun bs!1674348 () Bool)

(assert (= bs!1674348 d!2058228))

(declare-fun m!7342288 () Bool)

(assert (=> bs!1674348 m!7342288))

(assert (=> b!6559722 d!2058228))

(declare-fun e!3971401 () Bool)

(declare-fun d!2058230 () Bool)

(assert (=> d!2058230 (= (matchZipper!2449 ((_ map or) lt!2405760 lt!2405788) (t!379252 s!2326)) e!3971401)))

(declare-fun res!2692038 () Bool)

(assert (=> d!2058230 (=> res!2692038 e!3971401)))

(assert (=> d!2058230 (= res!2692038 (matchZipper!2449 lt!2405760 (t!379252 s!2326)))))

(declare-fun lt!2405926 () Unit!159083)

(declare-fun choose!48935 ((InoxSet Context!11642) (InoxSet Context!11642) List!65610) Unit!159083)

(assert (=> d!2058230 (= lt!2405926 (choose!48935 lt!2405760 lt!2405788 (t!379252 s!2326)))))

(assert (=> d!2058230 (= (lemmaZipperConcatMatchesSameAsBothZippers!1268 lt!2405760 lt!2405788 (t!379252 s!2326)) lt!2405926)))

(declare-fun b!6560292 () Bool)

(assert (=> b!6560292 (= e!3971401 (matchZipper!2449 lt!2405788 (t!379252 s!2326)))))

(assert (= (and d!2058230 (not res!2692038)) b!6560292))

(assert (=> d!2058230 m!7341730))

(assert (=> d!2058230 m!7341728))

(declare-fun m!7342304 () Bool)

(assert (=> d!2058230 m!7342304))

(assert (=> b!6560292 m!7341712))

(assert (=> b!6559701 d!2058230))

(declare-fun d!2058238 () Bool)

(declare-fun c!1205409 () Bool)

(assert (=> d!2058238 (= c!1205409 (isEmpty!37729 (t!379252 s!2326)))))

(declare-fun e!3971402 () Bool)

(assert (=> d!2058238 (= (matchZipper!2449 lt!2405760 (t!379252 s!2326)) e!3971402)))

(declare-fun b!6560293 () Bool)

(assert (=> b!6560293 (= e!3971402 (nullableZipper!2181 lt!2405760))))

(declare-fun b!6560294 () Bool)

(assert (=> b!6560294 (= e!3971402 (matchZipper!2449 (derivationStepZipper!2403 lt!2405760 (head!13324 (t!379252 s!2326))) (tail!12409 (t!379252 s!2326))))))

(assert (= (and d!2058238 c!1205409) b!6560293))

(assert (= (and d!2058238 (not c!1205409)) b!6560294))

(declare-fun m!7342306 () Bool)

(assert (=> d!2058238 m!7342306))

(declare-fun m!7342308 () Bool)

(assert (=> b!6560293 m!7342308))

(declare-fun m!7342310 () Bool)

(assert (=> b!6560294 m!7342310))

(assert (=> b!6560294 m!7342310))

(declare-fun m!7342312 () Bool)

(assert (=> b!6560294 m!7342312))

(declare-fun m!7342314 () Bool)

(assert (=> b!6560294 m!7342314))

(assert (=> b!6560294 m!7342312))

(assert (=> b!6560294 m!7342314))

(declare-fun m!7342316 () Bool)

(assert (=> b!6560294 m!7342316))

(assert (=> b!6559701 d!2058238))

(declare-fun d!2058240 () Bool)

(declare-fun c!1205410 () Bool)

(assert (=> d!2058240 (= c!1205410 (isEmpty!37729 (t!379252 s!2326)))))

(declare-fun e!3971405 () Bool)

(assert (=> d!2058240 (= (matchZipper!2449 ((_ map or) lt!2405760 lt!2405788) (t!379252 s!2326)) e!3971405)))

(declare-fun b!6560299 () Bool)

(assert (=> b!6560299 (= e!3971405 (nullableZipper!2181 ((_ map or) lt!2405760 lt!2405788)))))

(declare-fun b!6560300 () Bool)

(assert (=> b!6560300 (= e!3971405 (matchZipper!2449 (derivationStepZipper!2403 ((_ map or) lt!2405760 lt!2405788) (head!13324 (t!379252 s!2326))) (tail!12409 (t!379252 s!2326))))))

(assert (= (and d!2058240 c!1205410) b!6560299))

(assert (= (and d!2058240 (not c!1205410)) b!6560300))

(assert (=> d!2058240 m!7342306))

(declare-fun m!7342318 () Bool)

(assert (=> b!6560299 m!7342318))

(assert (=> b!6560300 m!7342310))

(assert (=> b!6560300 m!7342310))

(declare-fun m!7342320 () Bool)

(assert (=> b!6560300 m!7342320))

(assert (=> b!6560300 m!7342314))

(assert (=> b!6560300 m!7342320))

(assert (=> b!6560300 m!7342314))

(declare-fun m!7342322 () Bool)

(assert (=> b!6560300 m!7342322))

(assert (=> b!6559701 d!2058240))

(declare-fun d!2058242 () Bool)

(declare-fun c!1205411 () Bool)

(assert (=> d!2058242 (= c!1205411 (isEmpty!37729 s!2326))))

(declare-fun e!3971406 () Bool)

(assert (=> d!2058242 (= (matchZipper!2449 z!1189 s!2326) e!3971406)))

(declare-fun b!6560301 () Bool)

(assert (=> b!6560301 (= e!3971406 (nullableZipper!2181 z!1189))))

(declare-fun b!6560302 () Bool)

(assert (=> b!6560302 (= e!3971406 (matchZipper!2449 (derivationStepZipper!2403 z!1189 (head!13324 s!2326)) (tail!12409 s!2326)))))

(assert (= (and d!2058242 c!1205411) b!6560301))

(assert (= (and d!2058242 (not c!1205411)) b!6560302))

(assert (=> d!2058242 m!7342178))

(declare-fun m!7342324 () Bool)

(assert (=> b!6560301 m!7342324))

(assert (=> b!6560302 m!7342218))

(assert (=> b!6560302 m!7342218))

(declare-fun m!7342326 () Bool)

(assert (=> b!6560302 m!7342326))

(assert (=> b!6560302 m!7342212))

(assert (=> b!6560302 m!7342326))

(assert (=> b!6560302 m!7342212))

(declare-fun m!7342328 () Bool)

(assert (=> b!6560302 m!7342328))

(assert (=> b!6559700 d!2058242))

(declare-fun d!2058244 () Bool)

(declare-fun lt!2405933 () Regex!16437)

(assert (=> d!2058244 (validRegex!8173 lt!2405933)))

(assert (=> d!2058244 (= lt!2405933 (generalisedUnion!2281 (unfocusZipperList!1858 lt!2405805)))))

(assert (=> d!2058244 (= (unfocusZipper!2179 lt!2405805) lt!2405933)))

(declare-fun bs!1674355 () Bool)

(assert (= bs!1674355 d!2058244))

(declare-fun m!7342348 () Bool)

(assert (=> bs!1674355 m!7342348))

(declare-fun m!7342350 () Bool)

(assert (=> bs!1674355 m!7342350))

(assert (=> bs!1674355 m!7342350))

(declare-fun m!7342352 () Bool)

(assert (=> bs!1674355 m!7342352))

(assert (=> b!6559719 d!2058244))

(declare-fun d!2058254 () Bool)

(declare-fun choose!48936 ((InoxSet Context!11642) Int) (InoxSet Context!11642))

(assert (=> d!2058254 (= (flatMap!1942 lt!2405771 lambda!364855) (choose!48936 lt!2405771 lambda!364855))))

(declare-fun bs!1674356 () Bool)

(assert (= bs!1674356 d!2058254))

(declare-fun m!7342354 () Bool)

(assert (=> bs!1674356 m!7342354))

(assert (=> b!6559698 d!2058254))

(declare-fun b!6560325 () Bool)

(declare-fun e!3971420 () Bool)

(assert (=> b!6560325 (= e!3971420 (nullable!6430 (h!71935 (exprs!6321 lt!2405765))))))

(declare-fun b!6560326 () Bool)

(declare-fun e!3971422 () (InoxSet Context!11642))

(assert (=> b!6560326 (= e!3971422 ((as const (Array Context!11642 Bool)) false))))

(declare-fun b!6560327 () Bool)

(declare-fun e!3971421 () (InoxSet Context!11642))

(assert (=> b!6560327 (= e!3971421 e!3971422)))

(declare-fun c!1205420 () Bool)

(assert (=> b!6560327 (= c!1205420 ((_ is Cons!65487) (exprs!6321 lt!2405765)))))

(declare-fun b!6560328 () Bool)

(declare-fun call!570572 () (InoxSet Context!11642))

(assert (=> b!6560328 (= e!3971421 ((_ map or) call!570572 (derivationStepZipperUp!1611 (Context!11643 (t!379253 (exprs!6321 lt!2405765))) (h!71934 s!2326))))))

(declare-fun b!6560329 () Bool)

(assert (=> b!6560329 (= e!3971422 call!570572)))

(declare-fun d!2058256 () Bool)

(declare-fun c!1205421 () Bool)

(assert (=> d!2058256 (= c!1205421 e!3971420)))

(declare-fun res!2692049 () Bool)

(assert (=> d!2058256 (=> (not res!2692049) (not e!3971420))))

(assert (=> d!2058256 (= res!2692049 ((_ is Cons!65487) (exprs!6321 lt!2405765)))))

(assert (=> d!2058256 (= (derivationStepZipperUp!1611 lt!2405765 (h!71934 s!2326)) e!3971421)))

(declare-fun bm!570567 () Bool)

(assert (=> bm!570567 (= call!570572 (derivationStepZipperDown!1685 (h!71935 (exprs!6321 lt!2405765)) (Context!11643 (t!379253 (exprs!6321 lt!2405765))) (h!71934 s!2326)))))

(assert (= (and d!2058256 res!2692049) b!6560325))

(assert (= (and d!2058256 c!1205421) b!6560328))

(assert (= (and d!2058256 (not c!1205421)) b!6560327))

(assert (= (and b!6560327 c!1205420) b!6560329))

(assert (= (and b!6560327 (not c!1205420)) b!6560326))

(assert (= (or b!6560328 b!6560329) bm!570567))

(declare-fun m!7342356 () Bool)

(assert (=> b!6560325 m!7342356))

(declare-fun m!7342358 () Bool)

(assert (=> b!6560328 m!7342358))

(declare-fun m!7342360 () Bool)

(assert (=> bm!570567 m!7342360))

(assert (=> b!6559698 d!2058256))

(declare-fun d!2058258 () Bool)

(declare-fun dynLambda!26046 (Int Context!11642) (InoxSet Context!11642))

(assert (=> d!2058258 (= (flatMap!1942 lt!2405771 lambda!364855) (dynLambda!26046 lambda!364855 lt!2405765))))

(declare-fun lt!2405939 () Unit!159083)

(declare-fun choose!48937 ((InoxSet Context!11642) Context!11642 Int) Unit!159083)

(assert (=> d!2058258 (= lt!2405939 (choose!48937 lt!2405771 lt!2405765 lambda!364855))))

(assert (=> d!2058258 (= lt!2405771 (store ((as const (Array Context!11642 Bool)) false) lt!2405765 true))))

(assert (=> d!2058258 (= (lemmaFlatMapOnSingletonSet!1468 lt!2405771 lt!2405765 lambda!364855) lt!2405939)))

(declare-fun b_lambda!248165 () Bool)

(assert (=> (not b_lambda!248165) (not d!2058258)))

(declare-fun bs!1674357 () Bool)

(assert (= bs!1674357 d!2058258))

(assert (=> bs!1674357 m!7341716))

(declare-fun m!7342362 () Bool)

(assert (=> bs!1674357 m!7342362))

(declare-fun m!7342364 () Bool)

(assert (=> bs!1674357 m!7342364))

(assert (=> bs!1674357 m!7341718))

(assert (=> b!6559698 d!2058258))

(declare-fun bs!1674361 () Bool)

(declare-fun d!2058260 () Bool)

(assert (= bs!1674361 (and d!2058260 b!6559731)))

(declare-fun lambda!364928 () Int)

(assert (=> bs!1674361 (= lambda!364928 lambda!364855)))

(assert (=> d!2058260 true))

(assert (=> d!2058260 (= (derivationStepZipper!2403 lt!2405771 (h!71934 s!2326)) (flatMap!1942 lt!2405771 lambda!364928))))

(declare-fun bs!1674362 () Bool)

(assert (= bs!1674362 d!2058260))

(declare-fun m!7342390 () Bool)

(assert (=> bs!1674362 m!7342390))

(assert (=> b!6559698 d!2058260))

(declare-fun d!2058266 () Bool)

(declare-fun c!1205435 () Bool)

(assert (=> d!2058266 (= c!1205435 (isEmpty!37729 (t!379252 s!2326)))))

(declare-fun e!3971443 () Bool)

(assert (=> d!2058266 (= (matchZipper!2449 lt!2405788 (t!379252 s!2326)) e!3971443)))

(declare-fun b!6560363 () Bool)

(assert (=> b!6560363 (= e!3971443 (nullableZipper!2181 lt!2405788))))

(declare-fun b!6560364 () Bool)

(assert (=> b!6560364 (= e!3971443 (matchZipper!2449 (derivationStepZipper!2403 lt!2405788 (head!13324 (t!379252 s!2326))) (tail!12409 (t!379252 s!2326))))))

(assert (= (and d!2058266 c!1205435) b!6560363))

(assert (= (and d!2058266 (not c!1205435)) b!6560364))

(assert (=> d!2058266 m!7342306))

(declare-fun m!7342398 () Bool)

(assert (=> b!6560363 m!7342398))

(assert (=> b!6560364 m!7342310))

(assert (=> b!6560364 m!7342310))

(declare-fun m!7342400 () Bool)

(assert (=> b!6560364 m!7342400))

(assert (=> b!6560364 m!7342314))

(assert (=> b!6560364 m!7342400))

(assert (=> b!6560364 m!7342314))

(declare-fun m!7342402 () Bool)

(assert (=> b!6560364 m!7342402))

(assert (=> b!6559718 d!2058266))

(declare-fun bs!1674363 () Bool)

(declare-fun d!2058270 () Bool)

(assert (= bs!1674363 (and d!2058270 b!6559722)))

(declare-fun lambda!364929 () Int)

(assert (=> bs!1674363 (= lambda!364929 lambda!364857)))

(declare-fun bs!1674364 () Bool)

(assert (= bs!1674364 (and d!2058270 d!2058126)))

(assert (=> bs!1674364 (= lambda!364929 lambda!364874)))

(declare-fun bs!1674365 () Bool)

(assert (= bs!1674365 (and d!2058270 d!2058132)))

(assert (=> bs!1674365 (= lambda!364929 lambda!364879)))

(assert (=> d!2058270 (= (inv!84339 (h!71936 zl!343)) (forall!15608 (exprs!6321 (h!71936 zl!343)) lambda!364929))))

(declare-fun bs!1674366 () Bool)

(assert (= bs!1674366 d!2058270))

(declare-fun m!7342404 () Bool)

(assert (=> bs!1674366 m!7342404))

(assert (=> b!6559717 d!2058270))

(declare-fun d!2058272 () Bool)

(declare-fun e!3971446 () Bool)

(assert (=> d!2058272 e!3971446))

(declare-fun res!2692061 () Bool)

(assert (=> d!2058272 (=> (not res!2692061) (not e!3971446))))

(declare-fun lt!2405942 () List!65612)

(declare-fun noDuplicate!2242 (List!65612) Bool)

(assert (=> d!2058272 (= res!2692061 (noDuplicate!2242 lt!2405942))))

(declare-fun choose!48938 ((InoxSet Context!11642)) List!65612)

(assert (=> d!2058272 (= lt!2405942 (choose!48938 z!1189))))

(assert (=> d!2058272 (= (toList!10221 z!1189) lt!2405942)))

(declare-fun b!6560367 () Bool)

(declare-fun content!12593 (List!65612) (InoxSet Context!11642))

(assert (=> b!6560367 (= e!3971446 (= (content!12593 lt!2405942) z!1189))))

(assert (= (and d!2058272 res!2692061) b!6560367))

(declare-fun m!7342406 () Bool)

(assert (=> d!2058272 m!7342406))

(declare-fun m!7342408 () Bool)

(assert (=> d!2058272 m!7342408))

(declare-fun m!7342410 () Bool)

(assert (=> b!6560367 m!7342410))

(assert (=> b!6559715 d!2058272))

(declare-fun d!2058274 () Bool)

(assert (=> d!2058274 (= (isEmpty!37725 (t!379254 zl!343)) ((_ is Nil!65488) (t!379254 zl!343)))))

(assert (=> b!6559696 d!2058274))

(declare-fun d!2058276 () Bool)

(assert (=> d!2058276 (= (isDefined!13031 lt!2405753) (not (isEmpty!37730 lt!2405753)))))

(declare-fun bs!1674367 () Bool)

(assert (= bs!1674367 d!2058276))

(declare-fun m!7342412 () Bool)

(assert (=> bs!1674367 m!7342412))

(assert (=> b!6559695 d!2058276))

(declare-fun b!6560426 () Bool)

(declare-fun e!3971480 () Option!16328)

(declare-fun e!3971483 () Option!16328)

(assert (=> b!6560426 (= e!3971480 e!3971483)))

(declare-fun c!1205458 () Bool)

(assert (=> b!6560426 (= c!1205458 ((_ is Nil!65486) s!2326))))

(declare-fun b!6560427 () Bool)

(declare-fun e!3971481 () Bool)

(declare-fun lt!2405960 () Option!16328)

(assert (=> b!6560427 (= e!3971481 (= (++!14576 (_1!36719 (get!22737 lt!2405960)) (_2!36719 (get!22737 lt!2405960))) s!2326))))

(declare-fun b!6560428 () Bool)

(declare-fun lt!2405959 () Unit!159083)

(declare-fun lt!2405958 () Unit!159083)

(assert (=> b!6560428 (= lt!2405959 lt!2405958)))

(assert (=> b!6560428 (= (++!14576 (++!14576 Nil!65486 (Cons!65486 (h!71934 s!2326) Nil!65486)) (t!379252 s!2326)) s!2326)))

(assert (=> b!6560428 (= lt!2405958 (lemmaMoveElementToOtherListKeepsConcatEq!2580 Nil!65486 (h!71934 s!2326) (t!379252 s!2326) s!2326))))

(assert (=> b!6560428 (= e!3971483 (findConcatSeparationZippers!202 lt!2405782 lt!2405758 (++!14576 Nil!65486 (Cons!65486 (h!71934 s!2326) Nil!65486)) (t!379252 s!2326) s!2326))))

(declare-fun d!2058278 () Bool)

(declare-fun e!3971484 () Bool)

(assert (=> d!2058278 e!3971484))

(declare-fun res!2692081 () Bool)

(assert (=> d!2058278 (=> res!2692081 e!3971484)))

(assert (=> d!2058278 (= res!2692081 e!3971481)))

(declare-fun res!2692079 () Bool)

(assert (=> d!2058278 (=> (not res!2692079) (not e!3971481))))

(assert (=> d!2058278 (= res!2692079 (isDefined!13031 lt!2405960))))

(assert (=> d!2058278 (= lt!2405960 e!3971480)))

(declare-fun c!1205457 () Bool)

(declare-fun e!3971482 () Bool)

(assert (=> d!2058278 (= c!1205457 e!3971482)))

(declare-fun res!2692082 () Bool)

(assert (=> d!2058278 (=> (not res!2692082) (not e!3971482))))

(assert (=> d!2058278 (= res!2692082 (matchZipper!2449 lt!2405782 Nil!65486))))

(assert (=> d!2058278 (= (++!14576 Nil!65486 s!2326) s!2326)))

(assert (=> d!2058278 (= (findConcatSeparationZippers!202 lt!2405782 lt!2405758 Nil!65486 s!2326 s!2326) lt!2405960)))

(declare-fun b!6560429 () Bool)

(declare-fun res!2692078 () Bool)

(assert (=> b!6560429 (=> (not res!2692078) (not e!3971481))))

(assert (=> b!6560429 (= res!2692078 (matchZipper!2449 lt!2405758 (_2!36719 (get!22737 lt!2405960))))))

(declare-fun b!6560430 () Bool)

(declare-fun res!2692080 () Bool)

(assert (=> b!6560430 (=> (not res!2692080) (not e!3971481))))

(assert (=> b!6560430 (= res!2692080 (matchZipper!2449 lt!2405782 (_1!36719 (get!22737 lt!2405960))))))

(declare-fun b!6560431 () Bool)

(assert (=> b!6560431 (= e!3971483 None!16327)))

(declare-fun b!6560432 () Bool)

(assert (=> b!6560432 (= e!3971482 (matchZipper!2449 lt!2405758 s!2326))))

(declare-fun b!6560433 () Bool)

(assert (=> b!6560433 (= e!3971484 (not (isDefined!13031 lt!2405960)))))

(declare-fun b!6560434 () Bool)

(assert (=> b!6560434 (= e!3971480 (Some!16327 (tuple2!66833 Nil!65486 s!2326)))))

(assert (= (and d!2058278 res!2692082) b!6560432))

(assert (= (and d!2058278 c!1205457) b!6560434))

(assert (= (and d!2058278 (not c!1205457)) b!6560426))

(assert (= (and b!6560426 c!1205458) b!6560431))

(assert (= (and b!6560426 (not c!1205458)) b!6560428))

(assert (= (and d!2058278 res!2692079) b!6560430))

(assert (= (and b!6560430 res!2692080) b!6560429))

(assert (= (and b!6560429 res!2692078) b!6560427))

(assert (= (and d!2058278 (not res!2692081)) b!6560433))

(declare-fun m!7342462 () Bool)

(assert (=> b!6560433 m!7342462))

(assert (=> b!6560428 m!7342004))

(assert (=> b!6560428 m!7342004))

(assert (=> b!6560428 m!7342006))

(assert (=> b!6560428 m!7342008))

(assert (=> b!6560428 m!7342004))

(declare-fun m!7342464 () Bool)

(assert (=> b!6560428 m!7342464))

(assert (=> d!2058278 m!7342462))

(declare-fun m!7342466 () Bool)

(assert (=> d!2058278 m!7342466))

(declare-fun m!7342468 () Bool)

(assert (=> d!2058278 m!7342468))

(declare-fun m!7342470 () Bool)

(assert (=> b!6560427 m!7342470))

(declare-fun m!7342472 () Bool)

(assert (=> b!6560427 m!7342472))

(assert (=> b!6560430 m!7342470))

(declare-fun m!7342474 () Bool)

(assert (=> b!6560430 m!7342474))

(declare-fun m!7342476 () Bool)

(assert (=> b!6560432 m!7342476))

(assert (=> b!6560429 m!7342470))

(declare-fun m!7342478 () Bool)

(assert (=> b!6560429 m!7342478))

(assert (=> b!6559695 d!2058278))

(declare-fun d!2058292 () Bool)

(assert (=> d!2058292 (= (get!22737 lt!2405753) (v!52512 lt!2405753))))

(assert (=> b!6559695 d!2058292))

(declare-fun d!2058294 () Bool)

(assert (=> d!2058294 (isDefined!13031 (findConcatSeparationZippers!202 lt!2405782 (store ((as const (Array Context!11642 Bool)) false) lt!2405750 true) Nil!65486 s!2326 s!2326))))

(declare-fun lt!2405966 () Unit!159083)

(declare-fun choose!48939 ((InoxSet Context!11642) Context!11642 List!65610) Unit!159083)

(assert (=> d!2058294 (= lt!2405966 (choose!48939 lt!2405782 lt!2405750 s!2326))))

(assert (=> d!2058294 (matchZipper!2449 (appendTo!198 lt!2405782 lt!2405750) s!2326)))

(assert (=> d!2058294 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!202 lt!2405782 lt!2405750 s!2326) lt!2405966)))

(declare-fun bs!1674393 () Bool)

(assert (= bs!1674393 d!2058294))

(assert (=> bs!1674393 m!7341732))

(declare-fun m!7342520 () Bool)

(assert (=> bs!1674393 m!7342520))

(declare-fun m!7342522 () Bool)

(assert (=> bs!1674393 m!7342522))

(assert (=> bs!1674393 m!7341798))

(declare-fun m!7342524 () Bool)

(assert (=> bs!1674393 m!7342524))

(assert (=> bs!1674393 m!7341798))

(assert (=> bs!1674393 m!7342524))

(declare-fun m!7342526 () Bool)

(assert (=> bs!1674393 m!7342526))

(assert (=> bs!1674393 m!7341732))

(assert (=> b!6559695 d!2058294))

(declare-fun b!6560493 () Bool)

(declare-fun e!3971517 () List!65610)

(assert (=> b!6560493 (= e!3971517 (Cons!65486 (h!71934 (_1!36719 lt!2405802)) (++!14576 (t!379252 (_1!36719 lt!2405802)) (_2!36719 lt!2405802))))))

(declare-fun b!6560492 () Bool)

(assert (=> b!6560492 (= e!3971517 (_2!36719 lt!2405802))))

(declare-fun d!2058316 () Bool)

(declare-fun e!3971516 () Bool)

(assert (=> d!2058316 e!3971516))

(declare-fun res!2692094 () Bool)

(assert (=> d!2058316 (=> (not res!2692094) (not e!3971516))))

(declare-fun lt!2405969 () List!65610)

(declare-fun content!12594 (List!65610) (InoxSet C!33144))

(assert (=> d!2058316 (= res!2692094 (= (content!12594 lt!2405969) ((_ map or) (content!12594 (_1!36719 lt!2405802)) (content!12594 (_2!36719 lt!2405802)))))))

(assert (=> d!2058316 (= lt!2405969 e!3971517)))

(declare-fun c!1205483 () Bool)

(assert (=> d!2058316 (= c!1205483 ((_ is Nil!65486) (_1!36719 lt!2405802)))))

(assert (=> d!2058316 (= (++!14576 (_1!36719 lt!2405802) (_2!36719 lt!2405802)) lt!2405969)))

(declare-fun b!6560494 () Bool)

(declare-fun res!2692095 () Bool)

(assert (=> b!6560494 (=> (not res!2692095) (not e!3971516))))

(declare-fun size!40524 (List!65610) Int)

(assert (=> b!6560494 (= res!2692095 (= (size!40524 lt!2405969) (+ (size!40524 (_1!36719 lt!2405802)) (size!40524 (_2!36719 lt!2405802)))))))

(declare-fun b!6560495 () Bool)

(assert (=> b!6560495 (= e!3971516 (or (not (= (_2!36719 lt!2405802) Nil!65486)) (= lt!2405969 (_1!36719 lt!2405802))))))

(assert (= (and d!2058316 c!1205483) b!6560492))

(assert (= (and d!2058316 (not c!1205483)) b!6560493))

(assert (= (and d!2058316 res!2692094) b!6560494))

(assert (= (and b!6560494 res!2692095) b!6560495))

(declare-fun m!7342528 () Bool)

(assert (=> b!6560493 m!7342528))

(declare-fun m!7342530 () Bool)

(assert (=> d!2058316 m!7342530))

(declare-fun m!7342532 () Bool)

(assert (=> d!2058316 m!7342532))

(declare-fun m!7342534 () Bool)

(assert (=> d!2058316 m!7342534))

(declare-fun m!7342536 () Bool)

(assert (=> b!6560494 m!7342536))

(declare-fun m!7342538 () Bool)

(assert (=> b!6560494 m!7342538))

(declare-fun m!7342540 () Bool)

(assert (=> b!6560494 m!7342540))

(assert (=> b!6559695 d!2058316))

(declare-fun d!2058318 () Bool)

(declare-fun lt!2405970 () Regex!16437)

(assert (=> d!2058318 (validRegex!8173 lt!2405970)))

(assert (=> d!2058318 (= lt!2405970 (generalisedUnion!2281 (unfocusZipperList!1858 (Cons!65488 lt!2405765 Nil!65488))))))

(assert (=> d!2058318 (= (unfocusZipper!2179 (Cons!65488 lt!2405765 Nil!65488)) lt!2405970)))

(declare-fun bs!1674394 () Bool)

(assert (= bs!1674394 d!2058318))

(declare-fun m!7342542 () Bool)

(assert (=> bs!1674394 m!7342542))

(declare-fun m!7342544 () Bool)

(assert (=> bs!1674394 m!7342544))

(assert (=> bs!1674394 m!7342544))

(declare-fun m!7342546 () Bool)

(assert (=> bs!1674394 m!7342546))

(assert (=> b!6559713 d!2058318))

(declare-fun bm!570606 () Bool)

(declare-fun call!570616 () (InoxSet Context!11642))

(declare-fun call!570615 () (InoxSet Context!11642))

(assert (=> bm!570606 (= call!570616 call!570615)))

(declare-fun b!6560532 () Bool)

(declare-fun e!3971543 () (InoxSet Context!11642))

(declare-fun call!570614 () (InoxSet Context!11642))

(assert (=> b!6560532 (= e!3971543 call!570614)))

(declare-fun b!6560533 () Bool)

(declare-fun e!3971542 () (InoxSet Context!11642))

(declare-fun e!3971544 () (InoxSet Context!11642))

(assert (=> b!6560533 (= e!3971542 e!3971544)))

(declare-fun c!1205499 () Bool)

(assert (=> b!6560533 (= c!1205499 ((_ is Union!16437) (reg!16766 (regOne!33386 r!7292))))))

(declare-fun b!6560534 () Bool)

(declare-fun e!3971539 () (InoxSet Context!11642))

(assert (=> b!6560534 (= e!3971539 call!570614)))

(declare-fun b!6560535 () Bool)

(declare-fun c!1205502 () Bool)

(declare-fun e!3971540 () Bool)

(assert (=> b!6560535 (= c!1205502 e!3971540)))

(declare-fun res!2692102 () Bool)

(assert (=> b!6560535 (=> (not res!2692102) (not e!3971540))))

(assert (=> b!6560535 (= res!2692102 ((_ is Concat!25282) (reg!16766 (regOne!33386 r!7292))))))

(declare-fun e!3971541 () (InoxSet Context!11642))

(assert (=> b!6560535 (= e!3971544 e!3971541)))

(declare-fun bm!570607 () Bool)

(declare-fun call!570612 () List!65611)

(declare-fun call!570613 () List!65611)

(assert (=> bm!570607 (= call!570612 call!570613)))

(declare-fun b!6560536 () Bool)

(assert (=> b!6560536 (= e!3971542 (store ((as const (Array Context!11642 Bool)) false) lt!2405750 true))))

(declare-fun call!570611 () (InoxSet Context!11642))

(declare-fun bm!570608 () Bool)

(assert (=> bm!570608 (= call!570611 (derivationStepZipperDown!1685 (ite c!1205499 (regTwo!33387 (reg!16766 (regOne!33386 r!7292))) (regOne!33386 (reg!16766 (regOne!33386 r!7292)))) (ite c!1205499 lt!2405750 (Context!11643 call!570613)) (h!71934 s!2326)))))

(declare-fun b!6560537 () Bool)

(assert (=> b!6560537 (= e!3971540 (nullable!6430 (regOne!33386 (reg!16766 (regOne!33386 r!7292)))))))

(declare-fun b!6560538 () Bool)

(assert (=> b!6560538 (= e!3971541 ((_ map or) call!570611 call!570616))))

(declare-fun bm!570609 () Bool)

(assert (=> bm!570609 (= call!570614 call!570616)))

(declare-fun d!2058320 () Bool)

(declare-fun c!1205501 () Bool)

(assert (=> d!2058320 (= c!1205501 (and ((_ is ElementMatch!16437) (reg!16766 (regOne!33386 r!7292))) (= (c!1205274 (reg!16766 (regOne!33386 r!7292))) (h!71934 s!2326))))))

(assert (=> d!2058320 (= (derivationStepZipperDown!1685 (reg!16766 (regOne!33386 r!7292)) lt!2405750 (h!71934 s!2326)) e!3971542)))

(declare-fun b!6560539 () Bool)

(assert (=> b!6560539 (= e!3971544 ((_ map or) call!570615 call!570611))))

(declare-fun b!6560540 () Bool)

(assert (=> b!6560540 (= e!3971539 ((as const (Array Context!11642 Bool)) false))))

(declare-fun bm!570610 () Bool)

(declare-fun c!1205500 () Bool)

(declare-fun $colon$colon!2277 (List!65611 Regex!16437) List!65611)

(assert (=> bm!570610 (= call!570613 ($colon$colon!2277 (exprs!6321 lt!2405750) (ite (or c!1205502 c!1205500) (regTwo!33386 (reg!16766 (regOne!33386 r!7292))) (reg!16766 (regOne!33386 r!7292)))))))

(declare-fun b!6560541 () Bool)

(declare-fun c!1205503 () Bool)

(assert (=> b!6560541 (= c!1205503 ((_ is Star!16437) (reg!16766 (regOne!33386 r!7292))))))

(assert (=> b!6560541 (= e!3971543 e!3971539)))

(declare-fun bm!570611 () Bool)

(assert (=> bm!570611 (= call!570615 (derivationStepZipperDown!1685 (ite c!1205499 (regOne!33387 (reg!16766 (regOne!33386 r!7292))) (ite c!1205502 (regTwo!33386 (reg!16766 (regOne!33386 r!7292))) (ite c!1205500 (regOne!33386 (reg!16766 (regOne!33386 r!7292))) (reg!16766 (reg!16766 (regOne!33386 r!7292)))))) (ite (or c!1205499 c!1205502) lt!2405750 (Context!11643 call!570612)) (h!71934 s!2326)))))

(declare-fun b!6560542 () Bool)

(assert (=> b!6560542 (= e!3971541 e!3971543)))

(assert (=> b!6560542 (= c!1205500 ((_ is Concat!25282) (reg!16766 (regOne!33386 r!7292))))))

(assert (= (and d!2058320 c!1205501) b!6560536))

(assert (= (and d!2058320 (not c!1205501)) b!6560533))

(assert (= (and b!6560533 c!1205499) b!6560539))

(assert (= (and b!6560533 (not c!1205499)) b!6560535))

(assert (= (and b!6560535 res!2692102) b!6560537))

(assert (= (and b!6560535 c!1205502) b!6560538))

(assert (= (and b!6560535 (not c!1205502)) b!6560542))

(assert (= (and b!6560542 c!1205500) b!6560532))

(assert (= (and b!6560542 (not c!1205500)) b!6560541))

(assert (= (and b!6560541 c!1205503) b!6560534))

(assert (= (and b!6560541 (not c!1205503)) b!6560540))

(assert (= (or b!6560532 b!6560534) bm!570607))

(assert (= (or b!6560532 b!6560534) bm!570609))

(assert (= (or b!6560538 bm!570607) bm!570610))

(assert (= (or b!6560538 bm!570609) bm!570606))

(assert (= (or b!6560539 b!6560538) bm!570608))

(assert (= (or b!6560539 bm!570606) bm!570611))

(declare-fun m!7342564 () Bool)

(assert (=> b!6560537 m!7342564))

(assert (=> b!6560536 m!7341798))

(declare-fun m!7342570 () Bool)

(assert (=> bm!570608 m!7342570))

(declare-fun m!7342574 () Bool)

(assert (=> bm!570611 m!7342574))

(declare-fun m!7342576 () Bool)

(assert (=> bm!570610 m!7342576))

(assert (=> b!6559694 d!2058320))

(assert (=> b!6559734 d!2058238))

(declare-fun bs!1674395 () Bool)

(declare-fun b!6560559 () Bool)

(assert (= bs!1674395 (and b!6560559 b!6559726)))

(declare-fun lambda!364940 () Int)

(assert (=> bs!1674395 (not (= lambda!364940 lambda!364854))))

(declare-fun bs!1674396 () Bool)

(assert (= bs!1674396 (and b!6560559 d!2058162)))

(assert (=> bs!1674396 (not (= lambda!364940 lambda!364898))))

(declare-fun bs!1674398 () Bool)

(assert (= bs!1674398 (and b!6560559 b!6559709)))

(assert (=> bs!1674398 (not (= lambda!364940 lambda!364860))))

(declare-fun bs!1674399 () Bool)

(assert (= bs!1674399 (and b!6560559 b!6559711)))

(assert (=> bs!1674399 (not (= lambda!364940 lambda!364858))))

(assert (=> bs!1674399 (not (= lambda!364940 lambda!364859))))

(assert (=> bs!1674396 (not (= lambda!364940 lambda!364903))))

(assert (=> bs!1674395 (not (= lambda!364940 lambda!364853))))

(declare-fun bs!1674400 () Bool)

(assert (= bs!1674400 (and b!6560559 d!2058152)))

(assert (=> bs!1674400 (not (= lambda!364940 lambda!364892))))

(declare-fun bs!1674401 () Bool)

(assert (= bs!1674401 (and b!6560559 b!6560151)))

(assert (=> bs!1674401 (not (= lambda!364940 lambda!364910))))

(declare-fun bs!1674402 () Bool)

(assert (= bs!1674402 (and b!6560559 b!6560152)))

(assert (=> bs!1674402 (= (and (= (reg!16766 r!7292) (reg!16766 lt!2405801)) (= r!7292 lt!2405801)) (= lambda!364940 lambda!364909))))

(assert (=> bs!1674398 (not (= lambda!364940 lambda!364861))))

(assert (=> b!6560559 true))

(assert (=> b!6560559 true))

(declare-fun bs!1674404 () Bool)

(declare-fun b!6560558 () Bool)

(assert (= bs!1674404 (and b!6560558 b!6559726)))

(declare-fun lambda!364941 () Int)

(assert (=> bs!1674404 (= lambda!364941 lambda!364854)))

(declare-fun bs!1674405 () Bool)

(assert (= bs!1674405 (and b!6560558 d!2058162)))

(assert (=> bs!1674405 (not (= lambda!364941 lambda!364898))))

(declare-fun bs!1674406 () Bool)

(assert (= bs!1674406 (and b!6560558 b!6560559)))

(assert (=> bs!1674406 (not (= lambda!364941 lambda!364940))))

(declare-fun bs!1674407 () Bool)

(assert (= bs!1674407 (and b!6560558 b!6559709)))

(assert (=> bs!1674407 (not (= lambda!364941 lambda!364860))))

(declare-fun bs!1674408 () Bool)

(assert (= bs!1674408 (and b!6560558 b!6559711)))

(assert (=> bs!1674408 (not (= lambda!364941 lambda!364858))))

(assert (=> bs!1674408 (= (= (regOne!33386 r!7292) lt!2405774) (= lambda!364941 lambda!364859))))

(assert (=> bs!1674405 (= lambda!364941 lambda!364903)))

(assert (=> bs!1674404 (not (= lambda!364941 lambda!364853))))

(declare-fun bs!1674409 () Bool)

(assert (= bs!1674409 (and b!6560558 d!2058152)))

(assert (=> bs!1674409 (not (= lambda!364941 lambda!364892))))

(declare-fun bs!1674410 () Bool)

(assert (= bs!1674410 (and b!6560558 b!6560151)))

(assert (=> bs!1674410 (= (and (= (regOne!33386 r!7292) (regOne!33386 lt!2405801)) (= (regTwo!33386 r!7292) (regTwo!33386 lt!2405801))) (= lambda!364941 lambda!364910))))

(declare-fun bs!1674411 () Bool)

(assert (= bs!1674411 (and b!6560558 b!6560152)))

(assert (=> bs!1674411 (not (= lambda!364941 lambda!364909))))

(assert (=> bs!1674407 (= (and (= s!2326 (_1!36719 lt!2405757)) (= (regOne!33386 r!7292) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 r!7292) lt!2405790)) (= lambda!364941 lambda!364861))))

(assert (=> b!6560558 true))

(assert (=> b!6560558 true))

(declare-fun b!6560549 () Bool)

(declare-fun c!1205508 () Bool)

(assert (=> b!6560549 (= c!1205508 ((_ is ElementMatch!16437) r!7292))))

(declare-fun e!3971552 () Bool)

(declare-fun e!3971554 () Bool)

(assert (=> b!6560549 (= e!3971552 e!3971554)))

(declare-fun bm!570612 () Bool)

(declare-fun call!570617 () Bool)

(assert (=> bm!570612 (= call!570617 (isEmpty!37729 s!2326))))

(declare-fun b!6560550 () Bool)

(declare-fun c!1205507 () Bool)

(assert (=> b!6560550 (= c!1205507 ((_ is Union!16437) r!7292))))

(declare-fun e!3971548 () Bool)

(assert (=> b!6560550 (= e!3971554 e!3971548)))

(declare-fun b!6560551 () Bool)

(declare-fun e!3971553 () Bool)

(assert (=> b!6560551 (= e!3971548 e!3971553)))

(declare-fun res!2692103 () Bool)

(assert (=> b!6560551 (= res!2692103 (matchRSpec!3538 (regOne!33387 r!7292) s!2326))))

(assert (=> b!6560551 (=> res!2692103 e!3971553)))

(declare-fun b!6560552 () Bool)

(assert (=> b!6560552 (= e!3971553 (matchRSpec!3538 (regTwo!33387 r!7292) s!2326))))

(declare-fun bm!570613 () Bool)

(declare-fun call!570618 () Bool)

(declare-fun c!1205509 () Bool)

(assert (=> bm!570613 (= call!570618 (Exists!3507 (ite c!1205509 lambda!364940 lambda!364941)))))

(declare-fun b!6560553 () Bool)

(declare-fun e!3971549 () Bool)

(assert (=> b!6560553 (= e!3971549 call!570617)))

(declare-fun b!6560554 () Bool)

(declare-fun res!2692105 () Bool)

(declare-fun e!3971550 () Bool)

(assert (=> b!6560554 (=> res!2692105 e!3971550)))

(assert (=> b!6560554 (= res!2692105 call!570617)))

(declare-fun e!3971551 () Bool)

(assert (=> b!6560554 (= e!3971551 e!3971550)))

(declare-fun b!6560555 () Bool)

(assert (=> b!6560555 (= e!3971548 e!3971551)))

(assert (=> b!6560555 (= c!1205509 ((_ is Star!16437) r!7292))))

(declare-fun b!6560556 () Bool)

(assert (=> b!6560556 (= e!3971554 (= s!2326 (Cons!65486 (c!1205274 r!7292) Nil!65486)))))

(declare-fun b!6560557 () Bool)

(assert (=> b!6560557 (= e!3971549 e!3971552)))

(declare-fun res!2692104 () Bool)

(assert (=> b!6560557 (= res!2692104 (not ((_ is EmptyLang!16437) r!7292)))))

(assert (=> b!6560557 (=> (not res!2692104) (not e!3971552))))

(declare-fun d!2058330 () Bool)

(declare-fun c!1205510 () Bool)

(assert (=> d!2058330 (= c!1205510 ((_ is EmptyExpr!16437) r!7292))))

(assert (=> d!2058330 (= (matchRSpec!3538 r!7292 s!2326) e!3971549)))

(assert (=> b!6560558 (= e!3971551 call!570618)))

(assert (=> b!6560559 (= e!3971550 call!570618)))

(assert (= (and d!2058330 c!1205510) b!6560553))

(assert (= (and d!2058330 (not c!1205510)) b!6560557))

(assert (= (and b!6560557 res!2692104) b!6560549))

(assert (= (and b!6560549 c!1205508) b!6560556))

(assert (= (and b!6560549 (not c!1205508)) b!6560550))

(assert (= (and b!6560550 c!1205507) b!6560551))

(assert (= (and b!6560550 (not c!1205507)) b!6560555))

(assert (= (and b!6560551 (not res!2692103)) b!6560552))

(assert (= (and b!6560555 c!1205509) b!6560554))

(assert (= (and b!6560555 (not c!1205509)) b!6560558))

(assert (= (and b!6560554 (not res!2692105)) b!6560559))

(assert (= (or b!6560559 b!6560558) bm!570613))

(assert (= (or b!6560553 b!6560554) bm!570612))

(assert (=> bm!570612 m!7342178))

(declare-fun m!7342632 () Bool)

(assert (=> b!6560551 m!7342632))

(declare-fun m!7342634 () Bool)

(assert (=> b!6560552 m!7342634))

(declare-fun m!7342636 () Bool)

(assert (=> bm!570613 m!7342636))

(assert (=> b!6559733 d!2058330))

(declare-fun b!6560597 () Bool)

(declare-fun e!3971581 () Bool)

(declare-fun lt!2405979 () Bool)

(assert (=> b!6560597 (= e!3971581 (not lt!2405979))))

(declare-fun b!6560598 () Bool)

(declare-fun e!3971580 () Bool)

(declare-fun e!3971576 () Bool)

(assert (=> b!6560598 (= e!3971580 e!3971576)))

(declare-fun res!2692119 () Bool)

(assert (=> b!6560598 (=> (not res!2692119) (not e!3971576))))

(assert (=> b!6560598 (= res!2692119 (not lt!2405979))))

(declare-fun b!6560599 () Bool)

(declare-fun e!3971579 () Bool)

(declare-fun call!570628 () Bool)

(assert (=> b!6560599 (= e!3971579 (= lt!2405979 call!570628))))

(declare-fun b!6560600 () Bool)

(declare-fun res!2692120 () Bool)

(declare-fun e!3971577 () Bool)

(assert (=> b!6560600 (=> (not res!2692120) (not e!3971577))))

(assert (=> b!6560600 (= res!2692120 (isEmpty!37729 (tail!12409 s!2326)))))

(declare-fun b!6560601 () Bool)

(assert (=> b!6560601 (= e!3971577 (= (head!13324 s!2326) (c!1205274 r!7292)))))

(declare-fun b!6560602 () Bool)

(declare-fun e!3971578 () Bool)

(assert (=> b!6560602 (= e!3971578 (not (= (head!13324 s!2326) (c!1205274 r!7292))))))

(declare-fun b!6560603 () Bool)

(declare-fun e!3971582 () Bool)

(assert (=> b!6560603 (= e!3971582 (matchR!8620 (derivativeStep!5121 r!7292 (head!13324 s!2326)) (tail!12409 s!2326)))))

(declare-fun b!6560604 () Bool)

(declare-fun res!2692117 () Bool)

(assert (=> b!6560604 (=> (not res!2692117) (not e!3971577))))

(assert (=> b!6560604 (= res!2692117 (not call!570628))))

(declare-fun b!6560605 () Bool)

(assert (=> b!6560605 (= e!3971576 e!3971578)))

(declare-fun res!2692118 () Bool)

(assert (=> b!6560605 (=> res!2692118 e!3971578)))

(assert (=> b!6560605 (= res!2692118 call!570628)))

(declare-fun b!6560606 () Bool)

(assert (=> b!6560606 (= e!3971582 (nullable!6430 r!7292))))

(declare-fun b!6560607 () Bool)

(declare-fun res!2692122 () Bool)

(assert (=> b!6560607 (=> res!2692122 e!3971580)))

(assert (=> b!6560607 (= res!2692122 e!3971577)))

(declare-fun res!2692116 () Bool)

(assert (=> b!6560607 (=> (not res!2692116) (not e!3971577))))

(assert (=> b!6560607 (= res!2692116 lt!2405979)))

(declare-fun b!6560608 () Bool)

(assert (=> b!6560608 (= e!3971579 e!3971581)))

(declare-fun c!1205527 () Bool)

(assert (=> b!6560608 (= c!1205527 ((_ is EmptyLang!16437) r!7292))))

(declare-fun d!2058354 () Bool)

(assert (=> d!2058354 e!3971579))

(declare-fun c!1205525 () Bool)

(assert (=> d!2058354 (= c!1205525 ((_ is EmptyExpr!16437) r!7292))))

(assert (=> d!2058354 (= lt!2405979 e!3971582)))

(declare-fun c!1205526 () Bool)

(assert (=> d!2058354 (= c!1205526 (isEmpty!37729 s!2326))))

(assert (=> d!2058354 (validRegex!8173 r!7292)))

(assert (=> d!2058354 (= (matchR!8620 r!7292 s!2326) lt!2405979)))

(declare-fun bm!570623 () Bool)

(assert (=> bm!570623 (= call!570628 (isEmpty!37729 s!2326))))

(declare-fun b!6560609 () Bool)

(declare-fun res!2692121 () Bool)

(assert (=> b!6560609 (=> res!2692121 e!3971580)))

(assert (=> b!6560609 (= res!2692121 (not ((_ is ElementMatch!16437) r!7292)))))

(assert (=> b!6560609 (= e!3971581 e!3971580)))

(declare-fun b!6560610 () Bool)

(declare-fun res!2692115 () Bool)

(assert (=> b!6560610 (=> res!2692115 e!3971578)))

(assert (=> b!6560610 (= res!2692115 (not (isEmpty!37729 (tail!12409 s!2326))))))

(assert (= (and d!2058354 c!1205526) b!6560606))

(assert (= (and d!2058354 (not c!1205526)) b!6560603))

(assert (= (and d!2058354 c!1205525) b!6560599))

(assert (= (and d!2058354 (not c!1205525)) b!6560608))

(assert (= (and b!6560608 c!1205527) b!6560597))

(assert (= (and b!6560608 (not c!1205527)) b!6560609))

(assert (= (and b!6560609 (not res!2692121)) b!6560607))

(assert (= (and b!6560607 res!2692116) b!6560604))

(assert (= (and b!6560604 res!2692117) b!6560600))

(assert (= (and b!6560600 res!2692120) b!6560601))

(assert (= (and b!6560607 (not res!2692122)) b!6560598))

(assert (= (and b!6560598 res!2692119) b!6560605))

(assert (= (and b!6560605 (not res!2692118)) b!6560610))

(assert (= (and b!6560610 (not res!2692115)) b!6560602))

(assert (= (or b!6560599 b!6560604 b!6560605) bm!570623))

(assert (=> d!2058354 m!7342178))

(assert (=> d!2058354 m!7341740))

(declare-fun m!7342640 () Bool)

(assert (=> b!6560606 m!7342640))

(assert (=> b!6560610 m!7342212))

(assert (=> b!6560610 m!7342212))

(assert (=> b!6560610 m!7342216))

(assert (=> b!6560603 m!7342218))

(assert (=> b!6560603 m!7342218))

(declare-fun m!7342648 () Bool)

(assert (=> b!6560603 m!7342648))

(assert (=> b!6560603 m!7342212))

(assert (=> b!6560603 m!7342648))

(assert (=> b!6560603 m!7342212))

(declare-fun m!7342654 () Bool)

(assert (=> b!6560603 m!7342654))

(assert (=> b!6560600 m!7342212))

(assert (=> b!6560600 m!7342212))

(assert (=> b!6560600 m!7342216))

(assert (=> b!6560602 m!7342218))

(assert (=> bm!570623 m!7342178))

(assert (=> b!6560601 m!7342218))

(assert (=> b!6559733 d!2058354))

(declare-fun d!2058356 () Bool)

(assert (=> d!2058356 (= (matchR!8620 r!7292 s!2326) (matchRSpec!3538 r!7292 s!2326))))

(declare-fun lt!2405980 () Unit!159083)

(assert (=> d!2058356 (= lt!2405980 (choose!48927 r!7292 s!2326))))

(assert (=> d!2058356 (validRegex!8173 r!7292)))

(assert (=> d!2058356 (= (mainMatchTheorem!3538 r!7292 s!2326) lt!2405980)))

(declare-fun bs!1674414 () Bool)

(assert (= bs!1674414 d!2058356))

(assert (=> bs!1674414 m!7341836))

(assert (=> bs!1674414 m!7341834))

(declare-fun m!7342660 () Bool)

(assert (=> bs!1674414 m!7342660))

(assert (=> bs!1674414 m!7341740))

(assert (=> b!6559733 d!2058356))

(declare-fun bs!1674449 () Bool)

(declare-fun d!2058360 () Bool)

(assert (= bs!1674449 (and d!2058360 b!6559722)))

(declare-fun lambda!364947 () Int)

(assert (=> bs!1674449 (= lambda!364947 lambda!364857)))

(declare-fun bs!1674450 () Bool)

(assert (= bs!1674450 (and d!2058360 d!2058126)))

(assert (=> bs!1674450 (= lambda!364947 lambda!364874)))

(declare-fun bs!1674451 () Bool)

(assert (= bs!1674451 (and d!2058360 d!2058132)))

(assert (=> bs!1674451 (= lambda!364947 lambda!364879)))

(declare-fun bs!1674452 () Bool)

(assert (= bs!1674452 (and d!2058360 d!2058270)))

(assert (=> bs!1674452 (= lambda!364947 lambda!364929)))

(assert (=> d!2058360 (matchZipper!2449 (store ((as const (Array Context!11642 Bool)) false) (Context!11643 (++!14577 (exprs!6321 lt!2405775) (exprs!6321 lt!2405750))) true) (++!14576 (_1!36719 lt!2405802) (_2!36719 lt!2405802)))))

(declare-fun lt!2405988 () Unit!159083)

(assert (=> d!2058360 (= lt!2405988 (lemmaConcatPreservesForall!410 (exprs!6321 lt!2405775) (exprs!6321 lt!2405750) lambda!364947))))

(declare-fun lt!2405987 () Unit!159083)

(declare-fun choose!48942 (Context!11642 Context!11642 List!65610 List!65610) Unit!159083)

(assert (=> d!2058360 (= lt!2405987 (choose!48942 lt!2405775 lt!2405750 (_1!36719 lt!2405802) (_2!36719 lt!2405802)))))

(assert (=> d!2058360 (matchZipper!2449 (store ((as const (Array Context!11642 Bool)) false) lt!2405775 true) (_1!36719 lt!2405802))))

(assert (=> d!2058360 (= (lemmaConcatenateContextMatchesConcatOfStrings!218 lt!2405775 lt!2405750 (_1!36719 lt!2405802) (_2!36719 lt!2405802)) lt!2405987)))

(declare-fun bs!1674453 () Bool)

(assert (= bs!1674453 d!2058360))

(declare-fun m!7342670 () Bool)

(assert (=> bs!1674453 m!7342670))

(declare-fun m!7342672 () Bool)

(assert (=> bs!1674453 m!7342672))

(declare-fun m!7342674 () Bool)

(assert (=> bs!1674453 m!7342674))

(assert (=> bs!1674453 m!7342670))

(assert (=> bs!1674453 m!7341756))

(declare-fun m!7342676 () Bool)

(assert (=> bs!1674453 m!7342676))

(declare-fun m!7342678 () Bool)

(assert (=> bs!1674453 m!7342678))

(assert (=> bs!1674453 m!7341756))

(assert (=> bs!1674453 m!7341810))

(assert (=> bs!1674453 m!7341810))

(declare-fun m!7342680 () Bool)

(assert (=> bs!1674453 m!7342680))

(assert (=> b!6559711 d!2058360))

(declare-fun d!2058368 () Bool)

(assert (=> d!2058368 (matchR!8620 (Concat!25282 (reg!16766 (regOne!33386 r!7292)) lt!2405759) (++!14576 (_1!36719 lt!2405802) (_2!36719 lt!2405802)))))

(declare-fun lt!2405991 () Unit!159083)

(declare-fun choose!48943 (Regex!16437 Regex!16437 List!65610 List!65610) Unit!159083)

(assert (=> d!2058368 (= lt!2405991 (choose!48943 (reg!16766 (regOne!33386 r!7292)) lt!2405759 (_1!36719 lt!2405802) (_2!36719 lt!2405802)))))

(declare-fun e!3971591 () Bool)

(assert (=> d!2058368 e!3971591))

(declare-fun res!2692125 () Bool)

(assert (=> d!2058368 (=> (not res!2692125) (not e!3971591))))

(assert (=> d!2058368 (= res!2692125 (validRegex!8173 (reg!16766 (regOne!33386 r!7292))))))

(assert (=> d!2058368 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!358 (reg!16766 (regOne!33386 r!7292)) lt!2405759 (_1!36719 lt!2405802) (_2!36719 lt!2405802)) lt!2405991)))

(declare-fun b!6560635 () Bool)

(assert (=> b!6560635 (= e!3971591 (validRegex!8173 lt!2405759))))

(assert (= (and d!2058368 res!2692125) b!6560635))

(assert (=> d!2058368 m!7341756))

(assert (=> d!2058368 m!7341756))

(declare-fun m!7342690 () Bool)

(assert (=> d!2058368 m!7342690))

(declare-fun m!7342692 () Bool)

(assert (=> d!2058368 m!7342692))

(assert (=> d!2058368 m!7341828))

(declare-fun m!7342694 () Bool)

(assert (=> b!6560635 m!7342694))

(assert (=> b!6559711 d!2058368))

(declare-fun b!6560646 () Bool)

(declare-fun e!3971597 () Bool)

(assert (=> b!6560646 (= e!3971597 (matchR!8620 (regTwo!33386 r!7292) s!2326))))

(declare-fun b!6560647 () Bool)

(declare-fun e!3971601 () Bool)

(declare-fun lt!2405994 () Option!16328)

(assert (=> b!6560647 (= e!3971601 (= (++!14576 (_1!36719 (get!22737 lt!2405994)) (_2!36719 (get!22737 lt!2405994))) s!2326))))

(declare-fun b!6560648 () Bool)

(declare-fun e!3971599 () Option!16328)

(assert (=> b!6560648 (= e!3971599 None!16327)))

(declare-fun b!6560649 () Bool)

(declare-fun e!3971598 () Bool)

(assert (=> b!6560649 (= e!3971598 (not (isDefined!13031 lt!2405994)))))

(declare-fun b!6560650 () Bool)

(declare-fun res!2692128 () Bool)

(assert (=> b!6560650 (=> (not res!2692128) (not e!3971601))))

(assert (=> b!6560650 (= res!2692128 (matchR!8620 lt!2405774 (_1!36719 (get!22737 lt!2405994))))))

(declare-fun b!6560651 () Bool)

(declare-fun lt!2405993 () Unit!159083)

(declare-fun lt!2405992 () Unit!159083)

(assert (=> b!6560651 (= lt!2405993 lt!2405992)))

(assert (=> b!6560651 (= (++!14576 (++!14576 Nil!65486 (Cons!65486 (h!71934 s!2326) Nil!65486)) (t!379252 s!2326)) s!2326)))

(assert (=> b!6560651 (= lt!2405992 (lemmaMoveElementToOtherListKeepsConcatEq!2580 Nil!65486 (h!71934 s!2326) (t!379252 s!2326) s!2326))))

(assert (=> b!6560651 (= e!3971599 (findConcatSeparation!2742 lt!2405774 (regTwo!33386 r!7292) (++!14576 Nil!65486 (Cons!65486 (h!71934 s!2326) Nil!65486)) (t!379252 s!2326) s!2326))))

(declare-fun d!2058372 () Bool)

(assert (=> d!2058372 e!3971598))

(declare-fun res!2692129 () Bool)

(assert (=> d!2058372 (=> res!2692129 e!3971598)))

(assert (=> d!2058372 (= res!2692129 e!3971601)))

(declare-fun res!2692127 () Bool)

(assert (=> d!2058372 (=> (not res!2692127) (not e!3971601))))

(assert (=> d!2058372 (= res!2692127 (isDefined!13031 lt!2405994))))

(declare-fun e!3971600 () Option!16328)

(assert (=> d!2058372 (= lt!2405994 e!3971600)))

(declare-fun c!1205528 () Bool)

(assert (=> d!2058372 (= c!1205528 e!3971597)))

(declare-fun res!2692130 () Bool)

(assert (=> d!2058372 (=> (not res!2692130) (not e!3971597))))

(assert (=> d!2058372 (= res!2692130 (matchR!8620 lt!2405774 Nil!65486))))

(assert (=> d!2058372 (validRegex!8173 lt!2405774)))

(assert (=> d!2058372 (= (findConcatSeparation!2742 lt!2405774 (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326) lt!2405994)))

(declare-fun b!6560652 () Bool)

(assert (=> b!6560652 (= e!3971600 e!3971599)))

(declare-fun c!1205529 () Bool)

(assert (=> b!6560652 (= c!1205529 ((_ is Nil!65486) s!2326))))

(declare-fun b!6560653 () Bool)

(declare-fun res!2692126 () Bool)

(assert (=> b!6560653 (=> (not res!2692126) (not e!3971601))))

(assert (=> b!6560653 (= res!2692126 (matchR!8620 (regTwo!33386 r!7292) (_2!36719 (get!22737 lt!2405994))))))

(declare-fun b!6560654 () Bool)

(assert (=> b!6560654 (= e!3971600 (Some!16327 (tuple2!66833 Nil!65486 s!2326)))))

(assert (= (and d!2058372 res!2692130) b!6560646))

(assert (= (and d!2058372 c!1205528) b!6560654))

(assert (= (and d!2058372 (not c!1205528)) b!6560652))

(assert (= (and b!6560652 c!1205529) b!6560648))

(assert (= (and b!6560652 (not c!1205529)) b!6560651))

(assert (= (and d!2058372 res!2692127) b!6560650))

(assert (= (and b!6560650 res!2692128) b!6560653))

(assert (= (and b!6560653 res!2692126) b!6560647))

(assert (= (and d!2058372 (not res!2692129)) b!6560649))

(assert (=> b!6560651 m!7342004))

(assert (=> b!6560651 m!7342004))

(assert (=> b!6560651 m!7342006))

(assert (=> b!6560651 m!7342008))

(assert (=> b!6560651 m!7342004))

(declare-fun m!7342698 () Bool)

(assert (=> b!6560651 m!7342698))

(declare-fun m!7342700 () Bool)

(assert (=> b!6560647 m!7342700))

(declare-fun m!7342702 () Bool)

(assert (=> b!6560647 m!7342702))

(assert (=> b!6560653 m!7342700))

(declare-fun m!7342704 () Bool)

(assert (=> b!6560653 m!7342704))

(declare-fun m!7342706 () Bool)

(assert (=> d!2058372 m!7342706))

(declare-fun m!7342708 () Bool)

(assert (=> d!2058372 m!7342708))

(declare-fun m!7342710 () Bool)

(assert (=> d!2058372 m!7342710))

(assert (=> b!6560650 m!7342700))

(declare-fun m!7342712 () Bool)

(assert (=> b!6560650 m!7342712))

(assert (=> b!6560649 m!7342706))

(assert (=> b!6560646 m!7342026))

(assert (=> b!6559711 d!2058372))

(assert (=> b!6559711 d!2058218))

(declare-fun b!6560667 () Bool)

(declare-fun e!3971615 () Bool)

(declare-fun lt!2405995 () Bool)

(assert (=> b!6560667 (= e!3971615 (not lt!2405995))))

(declare-fun b!6560668 () Bool)

(declare-fun e!3971614 () Bool)

(declare-fun e!3971610 () Bool)

(assert (=> b!6560668 (= e!3971614 e!3971610)))

(declare-fun res!2692135 () Bool)

(assert (=> b!6560668 (=> (not res!2692135) (not e!3971610))))

(assert (=> b!6560668 (= res!2692135 (not lt!2405995))))

(declare-fun b!6560669 () Bool)

(declare-fun e!3971613 () Bool)

(declare-fun call!570629 () Bool)

(assert (=> b!6560669 (= e!3971613 (= lt!2405995 call!570629))))

(declare-fun b!6560670 () Bool)

(declare-fun res!2692136 () Bool)

(declare-fun e!3971611 () Bool)

(assert (=> b!6560670 (=> (not res!2692136) (not e!3971611))))

(assert (=> b!6560670 (= res!2692136 (isEmpty!37729 (tail!12409 s!2326)))))

(declare-fun b!6560671 () Bool)

(assert (=> b!6560671 (= e!3971611 (= (head!13324 s!2326) (c!1205274 lt!2405787)))))

(declare-fun b!6560672 () Bool)

(declare-fun e!3971612 () Bool)

(assert (=> b!6560672 (= e!3971612 (not (= (head!13324 s!2326) (c!1205274 lt!2405787))))))

(declare-fun b!6560674 () Bool)

(declare-fun e!3971616 () Bool)

(assert (=> b!6560674 (= e!3971616 (matchR!8620 (derivativeStep!5121 lt!2405787 (head!13324 s!2326)) (tail!12409 s!2326)))))

(declare-fun b!6560676 () Bool)

(declare-fun res!2692133 () Bool)

(assert (=> b!6560676 (=> (not res!2692133) (not e!3971611))))

(assert (=> b!6560676 (= res!2692133 (not call!570629))))

(declare-fun b!6560677 () Bool)

(assert (=> b!6560677 (= e!3971610 e!3971612)))

(declare-fun res!2692134 () Bool)

(assert (=> b!6560677 (=> res!2692134 e!3971612)))

(assert (=> b!6560677 (= res!2692134 call!570629)))

(declare-fun b!6560678 () Bool)

(assert (=> b!6560678 (= e!3971616 (nullable!6430 lt!2405787))))

(declare-fun b!6560679 () Bool)

(declare-fun res!2692138 () Bool)

(assert (=> b!6560679 (=> res!2692138 e!3971614)))

(assert (=> b!6560679 (= res!2692138 e!3971611)))

(declare-fun res!2692132 () Bool)

(assert (=> b!6560679 (=> (not res!2692132) (not e!3971611))))

(assert (=> b!6560679 (= res!2692132 lt!2405995)))

(declare-fun b!6560680 () Bool)

(assert (=> b!6560680 (= e!3971613 e!3971615)))

(declare-fun c!1205532 () Bool)

(assert (=> b!6560680 (= c!1205532 ((_ is EmptyLang!16437) lt!2405787))))

(declare-fun d!2058374 () Bool)

(assert (=> d!2058374 e!3971613))

(declare-fun c!1205530 () Bool)

(assert (=> d!2058374 (= c!1205530 ((_ is EmptyExpr!16437) lt!2405787))))

(assert (=> d!2058374 (= lt!2405995 e!3971616)))

(declare-fun c!1205531 () Bool)

(assert (=> d!2058374 (= c!1205531 (isEmpty!37729 s!2326))))

(assert (=> d!2058374 (validRegex!8173 lt!2405787)))

(assert (=> d!2058374 (= (matchR!8620 lt!2405787 s!2326) lt!2405995)))

(declare-fun bm!570624 () Bool)

(assert (=> bm!570624 (= call!570629 (isEmpty!37729 s!2326))))

(declare-fun b!6560681 () Bool)

(declare-fun res!2692137 () Bool)

(assert (=> b!6560681 (=> res!2692137 e!3971614)))

(assert (=> b!6560681 (= res!2692137 (not ((_ is ElementMatch!16437) lt!2405787)))))

(assert (=> b!6560681 (= e!3971615 e!3971614)))

(declare-fun b!6560682 () Bool)

(declare-fun res!2692131 () Bool)

(assert (=> b!6560682 (=> res!2692131 e!3971612)))

(assert (=> b!6560682 (= res!2692131 (not (isEmpty!37729 (tail!12409 s!2326))))))

(assert (= (and d!2058374 c!1205531) b!6560678))

(assert (= (and d!2058374 (not c!1205531)) b!6560674))

(assert (= (and d!2058374 c!1205530) b!6560669))

(assert (= (and d!2058374 (not c!1205530)) b!6560680))

(assert (= (and b!6560680 c!1205532) b!6560667))

(assert (= (and b!6560680 (not c!1205532)) b!6560681))

(assert (= (and b!6560681 (not res!2692137)) b!6560679))

(assert (= (and b!6560679 res!2692132) b!6560676))

(assert (= (and b!6560676 res!2692133) b!6560670))

(assert (= (and b!6560670 res!2692136) b!6560671))

(assert (= (and b!6560679 (not res!2692138)) b!6560668))

(assert (= (and b!6560668 res!2692135) b!6560677))

(assert (= (and b!6560677 (not res!2692134)) b!6560682))

(assert (= (and b!6560682 (not res!2692131)) b!6560672))

(assert (= (or b!6560669 b!6560676 b!6560677) bm!570624))

(assert (=> d!2058374 m!7342178))

(declare-fun m!7342716 () Bool)

(assert (=> d!2058374 m!7342716))

(declare-fun m!7342718 () Bool)

(assert (=> b!6560678 m!7342718))

(assert (=> b!6560682 m!7342212))

(assert (=> b!6560682 m!7342212))

(assert (=> b!6560682 m!7342216))

(assert (=> b!6560674 m!7342218))

(assert (=> b!6560674 m!7342218))

(declare-fun m!7342720 () Bool)

(assert (=> b!6560674 m!7342720))

(assert (=> b!6560674 m!7342212))

(assert (=> b!6560674 m!7342720))

(assert (=> b!6560674 m!7342212))

(declare-fun m!7342722 () Bool)

(assert (=> b!6560674 m!7342722))

(assert (=> b!6560670 m!7342212))

(assert (=> b!6560670 m!7342212))

(assert (=> b!6560670 m!7342216))

(assert (=> b!6560672 m!7342218))

(assert (=> bm!570624 m!7342178))

(assert (=> b!6560671 m!7342218))

(assert (=> b!6559711 d!2058374))

(declare-fun d!2058380 () Bool)

(assert (=> d!2058380 (= (matchR!8620 (Concat!25282 (Concat!25282 (reg!16766 (regOne!33386 r!7292)) lt!2405790) (regTwo!33386 r!7292)) s!2326) (matchR!8620 (Concat!25282 (reg!16766 (regOne!33386 r!7292)) (Concat!25282 lt!2405790 (regTwo!33386 r!7292))) s!2326))))

(declare-fun lt!2405999 () Unit!159083)

(declare-fun choose!48946 (Regex!16437 Regex!16437 Regex!16437 List!65610) Unit!159083)

(assert (=> d!2058380 (= lt!2405999 (choose!48946 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (regTwo!33386 r!7292) s!2326))))

(declare-fun e!3971623 () Bool)

(assert (=> d!2058380 e!3971623))

(declare-fun res!2692143 () Bool)

(assert (=> d!2058380 (=> (not res!2692143) (not e!3971623))))

(assert (=> d!2058380 (= res!2692143 (validRegex!8173 (reg!16766 (regOne!33386 r!7292))))))

(assert (=> d!2058380 (= (lemmaConcatAssociative!134 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (regTwo!33386 r!7292) s!2326) lt!2405999)))

(declare-fun b!6560695 () Bool)

(declare-fun res!2692144 () Bool)

(assert (=> b!6560695 (=> (not res!2692144) (not e!3971623))))

(assert (=> b!6560695 (= res!2692144 (validRegex!8173 lt!2405790))))

(declare-fun b!6560696 () Bool)

(assert (=> b!6560696 (= e!3971623 (validRegex!8173 (regTwo!33386 r!7292)))))

(assert (= (and d!2058380 res!2692143) b!6560695))

(assert (= (and b!6560695 res!2692144) b!6560696))

(declare-fun m!7342728 () Bool)

(assert (=> d!2058380 m!7342728))

(declare-fun m!7342730 () Bool)

(assert (=> d!2058380 m!7342730))

(declare-fun m!7342732 () Bool)

(assert (=> d!2058380 m!7342732))

(assert (=> d!2058380 m!7341828))

(declare-fun m!7342734 () Bool)

(assert (=> b!6560695 m!7342734))

(declare-fun m!7342736 () Bool)

(assert (=> b!6560696 m!7342736))

(assert (=> b!6559711 d!2058380))

(declare-fun d!2058388 () Bool)

(declare-fun c!1205533 () Bool)

(assert (=> d!2058388 (= c!1205533 (isEmpty!37729 lt!2405780))))

(declare-fun e!3971624 () Bool)

(assert (=> d!2058388 (= (matchZipper!2449 (store ((as const (Array Context!11642 Bool)) false) (Context!11643 (++!14577 lt!2405784 lt!2405792)) true) lt!2405780) e!3971624)))

(declare-fun b!6560697 () Bool)

(assert (=> b!6560697 (= e!3971624 (nullableZipper!2181 (store ((as const (Array Context!11642 Bool)) false) (Context!11643 (++!14577 lt!2405784 lt!2405792)) true)))))

(declare-fun b!6560698 () Bool)

(assert (=> b!6560698 (= e!3971624 (matchZipper!2449 (derivationStepZipper!2403 (store ((as const (Array Context!11642 Bool)) false) (Context!11643 (++!14577 lt!2405784 lt!2405792)) true) (head!13324 lt!2405780)) (tail!12409 lt!2405780)))))

(assert (= (and d!2058388 c!1205533) b!6560697))

(assert (= (and d!2058388 (not c!1205533)) b!6560698))

(declare-fun m!7342738 () Bool)

(assert (=> d!2058388 m!7342738))

(assert (=> b!6560697 m!7341682))

(declare-fun m!7342740 () Bool)

(assert (=> b!6560697 m!7342740))

(declare-fun m!7342742 () Bool)

(assert (=> b!6560698 m!7342742))

(assert (=> b!6560698 m!7341682))

(assert (=> b!6560698 m!7342742))

(declare-fun m!7342744 () Bool)

(assert (=> b!6560698 m!7342744))

(declare-fun m!7342746 () Bool)

(assert (=> b!6560698 m!7342746))

(assert (=> b!6560698 m!7342744))

(assert (=> b!6560698 m!7342746))

(declare-fun m!7342748 () Bool)

(assert (=> b!6560698 m!7342748))

(assert (=> b!6559711 d!2058388))

(declare-fun d!2058390 () Bool)

(assert (=> d!2058390 (= (Exists!3507 lambda!364858) (choose!48921 lambda!364858))))

(declare-fun bs!1674461 () Bool)

(assert (= bs!1674461 d!2058390))

(declare-fun m!7342750 () Bool)

(assert (=> bs!1674461 m!7342750))

(assert (=> b!6559711 d!2058390))

(declare-fun b!6560699 () Bool)

(declare-fun e!3971630 () Bool)

(declare-fun lt!2406000 () Bool)

(assert (=> b!6560699 (= e!3971630 (not lt!2406000))))

(declare-fun b!6560700 () Bool)

(declare-fun e!3971629 () Bool)

(declare-fun e!3971625 () Bool)

(assert (=> b!6560700 (= e!3971629 e!3971625)))

(declare-fun res!2692149 () Bool)

(assert (=> b!6560700 (=> (not res!2692149) (not e!3971625))))

(assert (=> b!6560700 (= res!2692149 (not lt!2406000))))

(declare-fun b!6560701 () Bool)

(declare-fun e!3971628 () Bool)

(declare-fun call!570630 () Bool)

(assert (=> b!6560701 (= e!3971628 (= lt!2406000 call!570630))))

(declare-fun b!6560702 () Bool)

(declare-fun res!2692150 () Bool)

(declare-fun e!3971626 () Bool)

(assert (=> b!6560702 (=> (not res!2692150) (not e!3971626))))

(assert (=> b!6560702 (= res!2692150 (isEmpty!37729 (tail!12409 (_2!36719 lt!2405802))))))

(declare-fun b!6560703 () Bool)

(assert (=> b!6560703 (= e!3971626 (= (head!13324 (_2!36719 lt!2405802)) (c!1205274 lt!2405759)))))

(declare-fun b!6560704 () Bool)

(declare-fun e!3971627 () Bool)

(assert (=> b!6560704 (= e!3971627 (not (= (head!13324 (_2!36719 lt!2405802)) (c!1205274 lt!2405759))))))

(declare-fun b!6560705 () Bool)

(declare-fun e!3971631 () Bool)

(assert (=> b!6560705 (= e!3971631 (matchR!8620 (derivativeStep!5121 lt!2405759 (head!13324 (_2!36719 lt!2405802))) (tail!12409 (_2!36719 lt!2405802))))))

(declare-fun b!6560706 () Bool)

(declare-fun res!2692147 () Bool)

(assert (=> b!6560706 (=> (not res!2692147) (not e!3971626))))

(assert (=> b!6560706 (= res!2692147 (not call!570630))))

(declare-fun b!6560707 () Bool)

(assert (=> b!6560707 (= e!3971625 e!3971627)))

(declare-fun res!2692148 () Bool)

(assert (=> b!6560707 (=> res!2692148 e!3971627)))

(assert (=> b!6560707 (= res!2692148 call!570630)))

(declare-fun b!6560708 () Bool)

(assert (=> b!6560708 (= e!3971631 (nullable!6430 lt!2405759))))

(declare-fun b!6560709 () Bool)

(declare-fun res!2692152 () Bool)

(assert (=> b!6560709 (=> res!2692152 e!3971629)))

(assert (=> b!6560709 (= res!2692152 e!3971626)))

(declare-fun res!2692146 () Bool)

(assert (=> b!6560709 (=> (not res!2692146) (not e!3971626))))

(assert (=> b!6560709 (= res!2692146 lt!2406000)))

(declare-fun b!6560710 () Bool)

(assert (=> b!6560710 (= e!3971628 e!3971630)))

(declare-fun c!1205536 () Bool)

(assert (=> b!6560710 (= c!1205536 ((_ is EmptyLang!16437) lt!2405759))))

(declare-fun d!2058392 () Bool)

(assert (=> d!2058392 e!3971628))

(declare-fun c!1205534 () Bool)

(assert (=> d!2058392 (= c!1205534 ((_ is EmptyExpr!16437) lt!2405759))))

(assert (=> d!2058392 (= lt!2406000 e!3971631)))

(declare-fun c!1205535 () Bool)

(assert (=> d!2058392 (= c!1205535 (isEmpty!37729 (_2!36719 lt!2405802)))))

(assert (=> d!2058392 (validRegex!8173 lt!2405759)))

(assert (=> d!2058392 (= (matchR!8620 lt!2405759 (_2!36719 lt!2405802)) lt!2406000)))

(declare-fun bm!570625 () Bool)

(assert (=> bm!570625 (= call!570630 (isEmpty!37729 (_2!36719 lt!2405802)))))

(declare-fun b!6560711 () Bool)

(declare-fun res!2692151 () Bool)

(assert (=> b!6560711 (=> res!2692151 e!3971629)))

(assert (=> b!6560711 (= res!2692151 (not ((_ is ElementMatch!16437) lt!2405759)))))

(assert (=> b!6560711 (= e!3971630 e!3971629)))

(declare-fun b!6560712 () Bool)

(declare-fun res!2692145 () Bool)

(assert (=> b!6560712 (=> res!2692145 e!3971627)))

(assert (=> b!6560712 (= res!2692145 (not (isEmpty!37729 (tail!12409 (_2!36719 lt!2405802)))))))

(assert (= (and d!2058392 c!1205535) b!6560708))

(assert (= (and d!2058392 (not c!1205535)) b!6560705))

(assert (= (and d!2058392 c!1205534) b!6560701))

(assert (= (and d!2058392 (not c!1205534)) b!6560710))

(assert (= (and b!6560710 c!1205536) b!6560699))

(assert (= (and b!6560710 (not c!1205536)) b!6560711))

(assert (= (and b!6560711 (not res!2692151)) b!6560709))

(assert (= (and b!6560709 res!2692146) b!6560706))

(assert (= (and b!6560706 res!2692147) b!6560702))

(assert (= (and b!6560702 res!2692150) b!6560703))

(assert (= (and b!6560709 (not res!2692152)) b!6560700))

(assert (= (and b!6560700 res!2692149) b!6560707))

(assert (= (and b!6560707 (not res!2692148)) b!6560712))

(assert (= (and b!6560712 (not res!2692145)) b!6560704))

(assert (= (or b!6560701 b!6560706 b!6560707) bm!570625))

(declare-fun m!7342752 () Bool)

(assert (=> d!2058392 m!7342752))

(assert (=> d!2058392 m!7342694))

(declare-fun m!7342754 () Bool)

(assert (=> b!6560708 m!7342754))

(declare-fun m!7342756 () Bool)

(assert (=> b!6560712 m!7342756))

(assert (=> b!6560712 m!7342756))

(declare-fun m!7342758 () Bool)

(assert (=> b!6560712 m!7342758))

(declare-fun m!7342760 () Bool)

(assert (=> b!6560705 m!7342760))

(assert (=> b!6560705 m!7342760))

(declare-fun m!7342762 () Bool)

(assert (=> b!6560705 m!7342762))

(assert (=> b!6560705 m!7342756))

(assert (=> b!6560705 m!7342762))

(assert (=> b!6560705 m!7342756))

(declare-fun m!7342764 () Bool)

(assert (=> b!6560705 m!7342764))

(assert (=> b!6560702 m!7342756))

(assert (=> b!6560702 m!7342756))

(assert (=> b!6560702 m!7342758))

(assert (=> b!6560704 m!7342760))

(assert (=> bm!570625 m!7342752))

(assert (=> b!6560703 m!7342760))

(assert (=> b!6559711 d!2058392))

(declare-fun bs!1674462 () Bool)

(declare-fun b!6560723 () Bool)

(assert (= bs!1674462 (and b!6560723 b!6559726)))

(declare-fun lambda!364948 () Int)

(assert (=> bs!1674462 (not (= lambda!364948 lambda!364854))))

(declare-fun bs!1674463 () Bool)

(assert (= bs!1674463 (and b!6560723 b!6560559)))

(assert (=> bs!1674463 (= (and (= (reg!16766 lt!2405787) (reg!16766 r!7292)) (= lt!2405787 r!7292)) (= lambda!364948 lambda!364940))))

(declare-fun bs!1674464 () Bool)

(assert (= bs!1674464 (and b!6560723 b!6559709)))

(assert (=> bs!1674464 (not (= lambda!364948 lambda!364860))))

(declare-fun bs!1674465 () Bool)

(assert (= bs!1674465 (and b!6560723 b!6559711)))

(assert (=> bs!1674465 (not (= lambda!364948 lambda!364858))))

(assert (=> bs!1674465 (not (= lambda!364948 lambda!364859))))

(declare-fun bs!1674466 () Bool)

(assert (= bs!1674466 (and b!6560723 d!2058162)))

(assert (=> bs!1674466 (not (= lambda!364948 lambda!364903))))

(assert (=> bs!1674462 (not (= lambda!364948 lambda!364853))))

(declare-fun bs!1674467 () Bool)

(assert (= bs!1674467 (and b!6560723 b!6560558)))

(assert (=> bs!1674467 (not (= lambda!364948 lambda!364941))))

(assert (=> bs!1674466 (not (= lambda!364948 lambda!364898))))

(declare-fun bs!1674468 () Bool)

(assert (= bs!1674468 (and b!6560723 d!2058152)))

(assert (=> bs!1674468 (not (= lambda!364948 lambda!364892))))

(declare-fun bs!1674469 () Bool)

(assert (= bs!1674469 (and b!6560723 b!6560151)))

(assert (=> bs!1674469 (not (= lambda!364948 lambda!364910))))

(declare-fun bs!1674470 () Bool)

(assert (= bs!1674470 (and b!6560723 b!6560152)))

(assert (=> bs!1674470 (= (and (= (reg!16766 lt!2405787) (reg!16766 lt!2405801)) (= lt!2405787 lt!2405801)) (= lambda!364948 lambda!364909))))

(assert (=> bs!1674464 (not (= lambda!364948 lambda!364861))))

(assert (=> b!6560723 true))

(assert (=> b!6560723 true))

(declare-fun bs!1674471 () Bool)

(declare-fun b!6560722 () Bool)

(assert (= bs!1674471 (and b!6560722 b!6559726)))

(declare-fun lambda!364949 () Int)

(assert (=> bs!1674471 (= (and (= (regOne!33386 lt!2405787) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405787) (regTwo!33386 r!7292))) (= lambda!364949 lambda!364854))))

(declare-fun bs!1674472 () Bool)

(assert (= bs!1674472 (and b!6560722 b!6560559)))

(assert (=> bs!1674472 (not (= lambda!364949 lambda!364940))))

(declare-fun bs!1674473 () Bool)

(assert (= bs!1674473 (and b!6560722 b!6559709)))

(assert (=> bs!1674473 (not (= lambda!364949 lambda!364860))))

(declare-fun bs!1674474 () Bool)

(assert (= bs!1674474 (and b!6560722 b!6559711)))

(assert (=> bs!1674474 (not (= lambda!364949 lambda!364858))))

(declare-fun bs!1674475 () Bool)

(assert (= bs!1674475 (and b!6560722 d!2058162)))

(assert (=> bs!1674475 (= (and (= (regOne!33386 lt!2405787) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405787) (regTwo!33386 r!7292))) (= lambda!364949 lambda!364903))))

(assert (=> bs!1674471 (not (= lambda!364949 lambda!364853))))

(declare-fun bs!1674476 () Bool)

(assert (= bs!1674476 (and b!6560722 b!6560558)))

(assert (=> bs!1674476 (= (and (= (regOne!33386 lt!2405787) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405787) (regTwo!33386 r!7292))) (= lambda!364949 lambda!364941))))

(assert (=> bs!1674475 (not (= lambda!364949 lambda!364898))))

(declare-fun bs!1674477 () Bool)

(assert (= bs!1674477 (and b!6560722 d!2058152)))

(assert (=> bs!1674477 (not (= lambda!364949 lambda!364892))))

(declare-fun bs!1674478 () Bool)

(assert (= bs!1674478 (and b!6560722 b!6560151)))

(assert (=> bs!1674478 (= (and (= (regOne!33386 lt!2405787) (regOne!33386 lt!2405801)) (= (regTwo!33386 lt!2405787) (regTwo!33386 lt!2405801))) (= lambda!364949 lambda!364910))))

(declare-fun bs!1674479 () Bool)

(assert (= bs!1674479 (and b!6560722 b!6560152)))

(assert (=> bs!1674479 (not (= lambda!364949 lambda!364909))))

(assert (=> bs!1674473 (= (and (= s!2326 (_1!36719 lt!2405757)) (= (regOne!33386 lt!2405787) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 lt!2405787) lt!2405790)) (= lambda!364949 lambda!364861))))

(assert (=> bs!1674474 (= (and (= (regOne!33386 lt!2405787) lt!2405774) (= (regTwo!33386 lt!2405787) (regTwo!33386 r!7292))) (= lambda!364949 lambda!364859))))

(declare-fun bs!1674480 () Bool)

(assert (= bs!1674480 (and b!6560722 b!6560723)))

(assert (=> bs!1674480 (not (= lambda!364949 lambda!364948))))

(assert (=> b!6560722 true))

(assert (=> b!6560722 true))

(declare-fun b!6560713 () Bool)

(declare-fun c!1205538 () Bool)

(assert (=> b!6560713 (= c!1205538 ((_ is ElementMatch!16437) lt!2405787))))

(declare-fun e!3971636 () Bool)

(declare-fun e!3971638 () Bool)

(assert (=> b!6560713 (= e!3971636 e!3971638)))

(declare-fun bm!570626 () Bool)

(declare-fun call!570631 () Bool)

(assert (=> bm!570626 (= call!570631 (isEmpty!37729 s!2326))))

(declare-fun b!6560714 () Bool)

(declare-fun c!1205537 () Bool)

(assert (=> b!6560714 (= c!1205537 ((_ is Union!16437) lt!2405787))))

(declare-fun e!3971632 () Bool)

(assert (=> b!6560714 (= e!3971638 e!3971632)))

(declare-fun b!6560715 () Bool)

(declare-fun e!3971637 () Bool)

(assert (=> b!6560715 (= e!3971632 e!3971637)))

(declare-fun res!2692153 () Bool)

(assert (=> b!6560715 (= res!2692153 (matchRSpec!3538 (regOne!33387 lt!2405787) s!2326))))

(assert (=> b!6560715 (=> res!2692153 e!3971637)))

(declare-fun b!6560716 () Bool)

(assert (=> b!6560716 (= e!3971637 (matchRSpec!3538 (regTwo!33387 lt!2405787) s!2326))))

(declare-fun c!1205539 () Bool)

(declare-fun call!570632 () Bool)

(declare-fun bm!570627 () Bool)

(assert (=> bm!570627 (= call!570632 (Exists!3507 (ite c!1205539 lambda!364948 lambda!364949)))))

(declare-fun b!6560717 () Bool)

(declare-fun e!3971633 () Bool)

(assert (=> b!6560717 (= e!3971633 call!570631)))

(declare-fun b!6560718 () Bool)

(declare-fun res!2692155 () Bool)

(declare-fun e!3971634 () Bool)

(assert (=> b!6560718 (=> res!2692155 e!3971634)))

(assert (=> b!6560718 (= res!2692155 call!570631)))

(declare-fun e!3971635 () Bool)

(assert (=> b!6560718 (= e!3971635 e!3971634)))

(declare-fun b!6560719 () Bool)

(assert (=> b!6560719 (= e!3971632 e!3971635)))

(assert (=> b!6560719 (= c!1205539 ((_ is Star!16437) lt!2405787))))

(declare-fun b!6560720 () Bool)

(assert (=> b!6560720 (= e!3971638 (= s!2326 (Cons!65486 (c!1205274 lt!2405787) Nil!65486)))))

(declare-fun b!6560721 () Bool)

(assert (=> b!6560721 (= e!3971633 e!3971636)))

(declare-fun res!2692154 () Bool)

(assert (=> b!6560721 (= res!2692154 (not ((_ is EmptyLang!16437) lt!2405787)))))

(assert (=> b!6560721 (=> (not res!2692154) (not e!3971636))))

(declare-fun d!2058394 () Bool)

(declare-fun c!1205540 () Bool)

(assert (=> d!2058394 (= c!1205540 ((_ is EmptyExpr!16437) lt!2405787))))

(assert (=> d!2058394 (= (matchRSpec!3538 lt!2405787 s!2326) e!3971633)))

(assert (=> b!6560722 (= e!3971635 call!570632)))

(assert (=> b!6560723 (= e!3971634 call!570632)))

(assert (= (and d!2058394 c!1205540) b!6560717))

(assert (= (and d!2058394 (not c!1205540)) b!6560721))

(assert (= (and b!6560721 res!2692154) b!6560713))

(assert (= (and b!6560713 c!1205538) b!6560720))

(assert (= (and b!6560713 (not c!1205538)) b!6560714))

(assert (= (and b!6560714 c!1205537) b!6560715))

(assert (= (and b!6560714 (not c!1205537)) b!6560719))

(assert (= (and b!6560715 (not res!2692153)) b!6560716))

(assert (= (and b!6560719 c!1205539) b!6560718))

(assert (= (and b!6560719 (not c!1205539)) b!6560722))

(assert (= (and b!6560718 (not res!2692155)) b!6560723))

(assert (= (or b!6560723 b!6560722) bm!570627))

(assert (= (or b!6560717 b!6560718) bm!570626))

(assert (=> bm!570626 m!7342178))

(declare-fun m!7342766 () Bool)

(assert (=> b!6560715 m!7342766))

(declare-fun m!7342768 () Bool)

(assert (=> b!6560716 m!7342768))

(declare-fun m!7342770 () Bool)

(assert (=> bm!570627 m!7342770))

(assert (=> b!6559711 d!2058394))

(declare-fun d!2058396 () Bool)

(assert (=> d!2058396 (= (matchR!8620 (reg!16766 (regOne!33386 r!7292)) (_1!36719 lt!2405802)) (matchZipper!2449 lt!2405782 (_1!36719 lt!2405802)))))

(declare-fun lt!2406003 () Unit!159083)

(declare-fun choose!48947 ((InoxSet Context!11642) List!65612 Regex!16437 List!65610) Unit!159083)

(assert (=> d!2058396 (= lt!2406003 (choose!48947 lt!2405782 lt!2405797 (reg!16766 (regOne!33386 r!7292)) (_1!36719 lt!2405802)))))

(assert (=> d!2058396 (validRegex!8173 (reg!16766 (regOne!33386 r!7292)))))

(assert (=> d!2058396 (= (theoremZipperRegexEquiv!873 lt!2405782 lt!2405797 (reg!16766 (regOne!33386 r!7292)) (_1!36719 lt!2405802)) lt!2406003)))

(declare-fun bs!1674481 () Bool)

(assert (= bs!1674481 d!2058396))

(assert (=> bs!1674481 m!7341692))

(assert (=> bs!1674481 m!7341742))

(declare-fun m!7342772 () Bool)

(assert (=> bs!1674481 m!7342772))

(assert (=> bs!1674481 m!7341828))

(assert (=> b!6559711 d!2058396))

(declare-fun bs!1674482 () Bool)

(declare-fun d!2058398 () Bool)

(assert (= bs!1674482 (and d!2058398 b!6559726)))

(declare-fun lambda!364950 () Int)

(assert (=> bs!1674482 (not (= lambda!364950 lambda!364854))))

(declare-fun bs!1674483 () Bool)

(assert (= bs!1674483 (and d!2058398 b!6560559)))

(assert (=> bs!1674483 (not (= lambda!364950 lambda!364940))))

(declare-fun bs!1674484 () Bool)

(assert (= bs!1674484 (and d!2058398 b!6559709)))

(assert (=> bs!1674484 (= (and (= s!2326 (_1!36719 lt!2405757)) (= lt!2405774 (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 r!7292) lt!2405790)) (= lambda!364950 lambda!364860))))

(declare-fun bs!1674485 () Bool)

(assert (= bs!1674485 (and d!2058398 b!6560722)))

(assert (=> bs!1674485 (not (= lambda!364950 lambda!364949))))

(declare-fun bs!1674486 () Bool)

(assert (= bs!1674486 (and d!2058398 b!6559711)))

(assert (=> bs!1674486 (= lambda!364950 lambda!364858)))

(declare-fun bs!1674487 () Bool)

(assert (= bs!1674487 (and d!2058398 d!2058162)))

(assert (=> bs!1674487 (not (= lambda!364950 lambda!364903))))

(assert (=> bs!1674482 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364950 lambda!364853))))

(declare-fun bs!1674488 () Bool)

(assert (= bs!1674488 (and d!2058398 b!6560558)))

(assert (=> bs!1674488 (not (= lambda!364950 lambda!364941))))

(assert (=> bs!1674487 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364950 lambda!364898))))

(declare-fun bs!1674489 () Bool)

(assert (= bs!1674489 (and d!2058398 d!2058152)))

(assert (=> bs!1674489 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364950 lambda!364892))))

(declare-fun bs!1674490 () Bool)

(assert (= bs!1674490 (and d!2058398 b!6560151)))

(assert (=> bs!1674490 (not (= lambda!364950 lambda!364910))))

(declare-fun bs!1674491 () Bool)

(assert (= bs!1674491 (and d!2058398 b!6560152)))

(assert (=> bs!1674491 (not (= lambda!364950 lambda!364909))))

(assert (=> bs!1674484 (not (= lambda!364950 lambda!364861))))

(assert (=> bs!1674486 (not (= lambda!364950 lambda!364859))))

(declare-fun bs!1674492 () Bool)

(assert (= bs!1674492 (and d!2058398 b!6560723)))

(assert (=> bs!1674492 (not (= lambda!364950 lambda!364948))))

(assert (=> d!2058398 true))

(assert (=> d!2058398 true))

(assert (=> d!2058398 true))

(assert (=> d!2058398 (= (isDefined!13031 (findConcatSeparation!2742 lt!2405774 (regTwo!33386 r!7292) Nil!65486 s!2326 s!2326)) (Exists!3507 lambda!364950))))

(declare-fun lt!2406004 () Unit!159083)

(assert (=> d!2058398 (= lt!2406004 (choose!48922 lt!2405774 (regTwo!33386 r!7292) s!2326))))

(assert (=> d!2058398 (validRegex!8173 lt!2405774)))

(assert (=> d!2058398 (= (lemmaFindConcatSeparationEquivalentToExists!2506 lt!2405774 (regTwo!33386 r!7292) s!2326) lt!2406004)))

(declare-fun bs!1674493 () Bool)

(assert (= bs!1674493 d!2058398))

(assert (=> bs!1674493 m!7342710))

(assert (=> bs!1674493 m!7341662))

(declare-fun m!7342774 () Bool)

(assert (=> bs!1674493 m!7342774))

(assert (=> bs!1674493 m!7341662))

(declare-fun m!7342776 () Bool)

(assert (=> bs!1674493 m!7342776))

(declare-fun m!7342778 () Bool)

(assert (=> bs!1674493 m!7342778))

(assert (=> b!6559711 d!2058398))

(declare-fun d!2058400 () Bool)

(assert (=> d!2058400 (= (matchR!8620 lt!2405787 s!2326) (matchRSpec!3538 lt!2405787 s!2326))))

(declare-fun lt!2406005 () Unit!159083)

(assert (=> d!2058400 (= lt!2406005 (choose!48927 lt!2405787 s!2326))))

(assert (=> d!2058400 (validRegex!8173 lt!2405787)))

(assert (=> d!2058400 (= (mainMatchTheorem!3538 lt!2405787 s!2326) lt!2406005)))

(declare-fun bs!1674494 () Bool)

(assert (= bs!1674494 d!2058400))

(assert (=> bs!1674494 m!7341684))

(assert (=> bs!1674494 m!7341704))

(declare-fun m!7342780 () Bool)

(assert (=> bs!1674494 m!7342780))

(assert (=> bs!1674494 m!7342716))

(assert (=> b!6559711 d!2058400))

(declare-fun d!2058402 () Bool)

(assert (=> d!2058402 (= (matchR!8620 lt!2405759 (_2!36719 lt!2405802)) (matchZipper!2449 lt!2405758 (_2!36719 lt!2405802)))))

(declare-fun lt!2406006 () Unit!159083)

(assert (=> d!2058402 (= lt!2406006 (choose!48947 lt!2405758 lt!2405805 lt!2405759 (_2!36719 lt!2405802)))))

(assert (=> d!2058402 (validRegex!8173 lt!2405759)))

(assert (=> d!2058402 (= (theoremZipperRegexEquiv!873 lt!2405758 lt!2405805 lt!2405759 (_2!36719 lt!2405802)) lt!2406006)))

(declare-fun bs!1674495 () Bool)

(assert (= bs!1674495 d!2058402))

(assert (=> bs!1674495 m!7341676))

(assert (=> bs!1674495 m!7341840))

(declare-fun m!7342782 () Bool)

(assert (=> bs!1674495 m!7342782))

(assert (=> bs!1674495 m!7342694))

(assert (=> b!6559711 d!2058402))

(declare-fun bs!1674496 () Bool)

(declare-fun d!2058404 () Bool)

(assert (= bs!1674496 (and d!2058404 d!2058398)))

(declare-fun lambda!364951 () Int)

(assert (=> bs!1674496 (= lambda!364951 lambda!364950)))

(declare-fun bs!1674497 () Bool)

(assert (= bs!1674497 (and d!2058404 b!6559726)))

(assert (=> bs!1674497 (not (= lambda!364951 lambda!364854))))

(declare-fun bs!1674498 () Bool)

(assert (= bs!1674498 (and d!2058404 b!6560559)))

(assert (=> bs!1674498 (not (= lambda!364951 lambda!364940))))

(declare-fun bs!1674499 () Bool)

(assert (= bs!1674499 (and d!2058404 b!6559709)))

(assert (=> bs!1674499 (= (and (= s!2326 (_1!36719 lt!2405757)) (= lt!2405774 (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 r!7292) lt!2405790)) (= lambda!364951 lambda!364860))))

(declare-fun bs!1674500 () Bool)

(assert (= bs!1674500 (and d!2058404 b!6560722)))

(assert (=> bs!1674500 (not (= lambda!364951 lambda!364949))))

(declare-fun bs!1674501 () Bool)

(assert (= bs!1674501 (and d!2058404 b!6559711)))

(assert (=> bs!1674501 (= lambda!364951 lambda!364858)))

(declare-fun bs!1674502 () Bool)

(assert (= bs!1674502 (and d!2058404 d!2058162)))

(assert (=> bs!1674502 (not (= lambda!364951 lambda!364903))))

(assert (=> bs!1674497 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364951 lambda!364853))))

(declare-fun bs!1674503 () Bool)

(assert (= bs!1674503 (and d!2058404 b!6560558)))

(assert (=> bs!1674503 (not (= lambda!364951 lambda!364941))))

(assert (=> bs!1674502 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364951 lambda!364898))))

(declare-fun bs!1674504 () Bool)

(assert (= bs!1674504 (and d!2058404 d!2058152)))

(assert (=> bs!1674504 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364951 lambda!364892))))

(declare-fun bs!1674505 () Bool)

(assert (= bs!1674505 (and d!2058404 b!6560151)))

(assert (=> bs!1674505 (not (= lambda!364951 lambda!364910))))

(declare-fun bs!1674506 () Bool)

(assert (= bs!1674506 (and d!2058404 b!6560152)))

(assert (=> bs!1674506 (not (= lambda!364951 lambda!364909))))

(assert (=> bs!1674499 (not (= lambda!364951 lambda!364861))))

(assert (=> bs!1674501 (not (= lambda!364951 lambda!364859))))

(declare-fun bs!1674507 () Bool)

(assert (= bs!1674507 (and d!2058404 b!6560723)))

(assert (=> bs!1674507 (not (= lambda!364951 lambda!364948))))

(assert (=> d!2058404 true))

(assert (=> d!2058404 true))

(assert (=> d!2058404 true))

(declare-fun lambda!364952 () Int)

(assert (=> bs!1674496 (not (= lambda!364952 lambda!364950))))

(declare-fun bs!1674508 () Bool)

(assert (= bs!1674508 d!2058404))

(assert (=> bs!1674508 (not (= lambda!364952 lambda!364951))))

(assert (=> bs!1674497 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364952 lambda!364854))))

(assert (=> bs!1674498 (not (= lambda!364952 lambda!364940))))

(assert (=> bs!1674499 (not (= lambda!364952 lambda!364860))))

(assert (=> bs!1674500 (= (and (= lt!2405774 (regOne!33386 lt!2405787)) (= (regTwo!33386 r!7292) (regTwo!33386 lt!2405787))) (= lambda!364952 lambda!364949))))

(assert (=> bs!1674501 (not (= lambda!364952 lambda!364858))))

(assert (=> bs!1674502 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364952 lambda!364903))))

(assert (=> bs!1674497 (not (= lambda!364952 lambda!364853))))

(assert (=> bs!1674503 (= (= lt!2405774 (regOne!33386 r!7292)) (= lambda!364952 lambda!364941))))

(assert (=> bs!1674502 (not (= lambda!364952 lambda!364898))))

(assert (=> bs!1674504 (not (= lambda!364952 lambda!364892))))

(assert (=> bs!1674505 (= (and (= lt!2405774 (regOne!33386 lt!2405801)) (= (regTwo!33386 r!7292) (regTwo!33386 lt!2405801))) (= lambda!364952 lambda!364910))))

(assert (=> bs!1674506 (not (= lambda!364952 lambda!364909))))

(assert (=> bs!1674499 (= (and (= s!2326 (_1!36719 lt!2405757)) (= lt!2405774 (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 r!7292) lt!2405790)) (= lambda!364952 lambda!364861))))

(assert (=> bs!1674501 (= lambda!364952 lambda!364859)))

(assert (=> bs!1674507 (not (= lambda!364952 lambda!364948))))

(assert (=> d!2058404 true))

(assert (=> d!2058404 true))

(assert (=> d!2058404 true))

(assert (=> d!2058404 (= (Exists!3507 lambda!364951) (Exists!3507 lambda!364952))))

(declare-fun lt!2406007 () Unit!159083)

(assert (=> d!2058404 (= lt!2406007 (choose!48924 lt!2405774 (regTwo!33386 r!7292) s!2326))))

(assert (=> d!2058404 (validRegex!8173 lt!2405774)))

(assert (=> d!2058404 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2044 lt!2405774 (regTwo!33386 r!7292) s!2326) lt!2406007)))

(declare-fun m!7342784 () Bool)

(assert (=> bs!1674508 m!7342784))

(declare-fun m!7342786 () Bool)

(assert (=> bs!1674508 m!7342786))

(declare-fun m!7342788 () Bool)

(assert (=> bs!1674508 m!7342788))

(assert (=> bs!1674508 m!7342710))

(assert (=> b!6559711 d!2058404))

(declare-fun d!2058406 () Bool)

(assert (=> d!2058406 (= (Exists!3507 lambda!364859) (choose!48921 lambda!364859))))

(declare-fun bs!1674509 () Bool)

(assert (= bs!1674509 d!2058406))

(declare-fun m!7342790 () Bool)

(assert (=> bs!1674509 m!7342790))

(assert (=> b!6559711 d!2058406))

(declare-fun d!2058408 () Bool)

(assert (=> d!2058408 (= (isDefined!13031 lt!2405793) (not (isEmpty!37730 lt!2405793)))))

(declare-fun bs!1674510 () Bool)

(assert (= bs!1674510 d!2058408))

(declare-fun m!7342792 () Bool)

(assert (=> bs!1674510 m!7342792))

(assert (=> b!6559711 d!2058408))

(declare-fun d!2058410 () Bool)

(assert (=> d!2058410 (= (get!22737 lt!2405793) (v!52512 lt!2405793))))

(assert (=> b!6559711 d!2058410))

(declare-fun b!6560724 () Bool)

(declare-fun e!3971644 () Bool)

(declare-fun lt!2406008 () Bool)

(assert (=> b!6560724 (= e!3971644 (not lt!2406008))))

(declare-fun b!6560725 () Bool)

(declare-fun e!3971643 () Bool)

(declare-fun e!3971639 () Bool)

(assert (=> b!6560725 (= e!3971643 e!3971639)))

(declare-fun res!2692160 () Bool)

(assert (=> b!6560725 (=> (not res!2692160) (not e!3971639))))

(assert (=> b!6560725 (= res!2692160 (not lt!2406008))))

(declare-fun b!6560726 () Bool)

(declare-fun e!3971642 () Bool)

(declare-fun call!570633 () Bool)

(assert (=> b!6560726 (= e!3971642 (= lt!2406008 call!570633))))

(declare-fun b!6560727 () Bool)

(declare-fun res!2692161 () Bool)

(declare-fun e!3971640 () Bool)

(assert (=> b!6560727 (=> (not res!2692161) (not e!3971640))))

(assert (=> b!6560727 (= res!2692161 (isEmpty!37729 (tail!12409 (_1!36719 lt!2405802))))))

(declare-fun b!6560728 () Bool)

(assert (=> b!6560728 (= e!3971640 (= (head!13324 (_1!36719 lt!2405802)) (c!1205274 (reg!16766 (regOne!33386 r!7292)))))))

(declare-fun b!6560729 () Bool)

(declare-fun e!3971641 () Bool)

(assert (=> b!6560729 (= e!3971641 (not (= (head!13324 (_1!36719 lt!2405802)) (c!1205274 (reg!16766 (regOne!33386 r!7292))))))))

(declare-fun b!6560730 () Bool)

(declare-fun e!3971645 () Bool)

(assert (=> b!6560730 (= e!3971645 (matchR!8620 (derivativeStep!5121 (reg!16766 (regOne!33386 r!7292)) (head!13324 (_1!36719 lt!2405802))) (tail!12409 (_1!36719 lt!2405802))))))

(declare-fun b!6560731 () Bool)

(declare-fun res!2692158 () Bool)

(assert (=> b!6560731 (=> (not res!2692158) (not e!3971640))))

(assert (=> b!6560731 (= res!2692158 (not call!570633))))

(declare-fun b!6560732 () Bool)

(assert (=> b!6560732 (= e!3971639 e!3971641)))

(declare-fun res!2692159 () Bool)

(assert (=> b!6560732 (=> res!2692159 e!3971641)))

(assert (=> b!6560732 (= res!2692159 call!570633)))

(declare-fun b!6560733 () Bool)

(assert (=> b!6560733 (= e!3971645 (nullable!6430 (reg!16766 (regOne!33386 r!7292))))))

(declare-fun b!6560734 () Bool)

(declare-fun res!2692163 () Bool)

(assert (=> b!6560734 (=> res!2692163 e!3971643)))

(assert (=> b!6560734 (= res!2692163 e!3971640)))

(declare-fun res!2692157 () Bool)

(assert (=> b!6560734 (=> (not res!2692157) (not e!3971640))))

(assert (=> b!6560734 (= res!2692157 lt!2406008)))

(declare-fun b!6560735 () Bool)

(assert (=> b!6560735 (= e!3971642 e!3971644)))

(declare-fun c!1205543 () Bool)

(assert (=> b!6560735 (= c!1205543 ((_ is EmptyLang!16437) (reg!16766 (regOne!33386 r!7292))))))

(declare-fun d!2058412 () Bool)

(assert (=> d!2058412 e!3971642))

(declare-fun c!1205541 () Bool)

(assert (=> d!2058412 (= c!1205541 ((_ is EmptyExpr!16437) (reg!16766 (regOne!33386 r!7292))))))

(assert (=> d!2058412 (= lt!2406008 e!3971645)))

(declare-fun c!1205542 () Bool)

(assert (=> d!2058412 (= c!1205542 (isEmpty!37729 (_1!36719 lt!2405802)))))

(assert (=> d!2058412 (validRegex!8173 (reg!16766 (regOne!33386 r!7292)))))

(assert (=> d!2058412 (= (matchR!8620 (reg!16766 (regOne!33386 r!7292)) (_1!36719 lt!2405802)) lt!2406008)))

(declare-fun bm!570628 () Bool)

(assert (=> bm!570628 (= call!570633 (isEmpty!37729 (_1!36719 lt!2405802)))))

(declare-fun b!6560736 () Bool)

(declare-fun res!2692162 () Bool)

(assert (=> b!6560736 (=> res!2692162 e!3971643)))

(assert (=> b!6560736 (= res!2692162 (not ((_ is ElementMatch!16437) (reg!16766 (regOne!33386 r!7292)))))))

(assert (=> b!6560736 (= e!3971644 e!3971643)))

(declare-fun b!6560737 () Bool)

(declare-fun res!2692156 () Bool)

(assert (=> b!6560737 (=> res!2692156 e!3971641)))

(assert (=> b!6560737 (= res!2692156 (not (isEmpty!37729 (tail!12409 (_1!36719 lt!2405802)))))))

(assert (= (and d!2058412 c!1205542) b!6560733))

(assert (= (and d!2058412 (not c!1205542)) b!6560730))

(assert (= (and d!2058412 c!1205541) b!6560726))

(assert (= (and d!2058412 (not c!1205541)) b!6560735))

(assert (= (and b!6560735 c!1205543) b!6560724))

(assert (= (and b!6560735 (not c!1205543)) b!6560736))

(assert (= (and b!6560736 (not res!2692162)) b!6560734))

(assert (= (and b!6560734 res!2692157) b!6560731))

(assert (= (and b!6560731 res!2692158) b!6560727))

(assert (= (and b!6560727 res!2692161) b!6560728))

(assert (= (and b!6560734 (not res!2692163)) b!6560725))

(assert (= (and b!6560725 res!2692160) b!6560732))

(assert (= (and b!6560732 (not res!2692159)) b!6560737))

(assert (= (and b!6560737 (not res!2692156)) b!6560729))

(assert (= (or b!6560726 b!6560731 b!6560732) bm!570628))

(assert (=> d!2058412 m!7341874))

(assert (=> d!2058412 m!7341828))

(declare-fun m!7342794 () Bool)

(assert (=> b!6560733 m!7342794))

(assert (=> b!6560737 m!7341882))

(assert (=> b!6560737 m!7341882))

(declare-fun m!7342796 () Bool)

(assert (=> b!6560737 m!7342796))

(assert (=> b!6560730 m!7341878))

(assert (=> b!6560730 m!7341878))

(declare-fun m!7342798 () Bool)

(assert (=> b!6560730 m!7342798))

(assert (=> b!6560730 m!7341882))

(assert (=> b!6560730 m!7342798))

(assert (=> b!6560730 m!7341882))

(declare-fun m!7342800 () Bool)

(assert (=> b!6560730 m!7342800))

(assert (=> b!6560727 m!7341882))

(assert (=> b!6560727 m!7341882))

(assert (=> b!6560727 m!7342796))

(assert (=> b!6560729 m!7341878))

(assert (=> bm!570628 m!7341874))

(assert (=> b!6560728 m!7341878))

(assert (=> b!6559711 d!2058412))

(declare-fun b!6560738 () Bool)

(declare-fun e!3971651 () Bool)

(declare-fun lt!2406009 () Bool)

(assert (=> b!6560738 (= e!3971651 (not lt!2406009))))

(declare-fun b!6560739 () Bool)

(declare-fun e!3971650 () Bool)

(declare-fun e!3971646 () Bool)

(assert (=> b!6560739 (= e!3971650 e!3971646)))

(declare-fun res!2692168 () Bool)

(assert (=> b!6560739 (=> (not res!2692168) (not e!3971646))))

(assert (=> b!6560739 (= res!2692168 (not lt!2406009))))

(declare-fun b!6560740 () Bool)

(declare-fun e!3971649 () Bool)

(declare-fun call!570634 () Bool)

(assert (=> b!6560740 (= e!3971649 (= lt!2406009 call!570634))))

(declare-fun b!6560741 () Bool)

(declare-fun res!2692169 () Bool)

(declare-fun e!3971647 () Bool)

(assert (=> b!6560741 (=> (not res!2692169) (not e!3971647))))

(assert (=> b!6560741 (= res!2692169 (isEmpty!37729 (tail!12409 lt!2405780)))))

(declare-fun b!6560742 () Bool)

(assert (=> b!6560742 (= e!3971647 (= (head!13324 lt!2405780) (c!1205274 lt!2405801)))))

(declare-fun b!6560743 () Bool)

(declare-fun e!3971648 () Bool)

(assert (=> b!6560743 (= e!3971648 (not (= (head!13324 lt!2405780) (c!1205274 lt!2405801))))))

(declare-fun b!6560744 () Bool)

(declare-fun e!3971652 () Bool)

(assert (=> b!6560744 (= e!3971652 (matchR!8620 (derivativeStep!5121 lt!2405801 (head!13324 lt!2405780)) (tail!12409 lt!2405780)))))

(declare-fun b!6560745 () Bool)

(declare-fun res!2692166 () Bool)

(assert (=> b!6560745 (=> (not res!2692166) (not e!3971647))))

(assert (=> b!6560745 (= res!2692166 (not call!570634))))

(declare-fun b!6560746 () Bool)

(assert (=> b!6560746 (= e!3971646 e!3971648)))

(declare-fun res!2692167 () Bool)

(assert (=> b!6560746 (=> res!2692167 e!3971648)))

(assert (=> b!6560746 (= res!2692167 call!570634)))

(declare-fun b!6560747 () Bool)

(assert (=> b!6560747 (= e!3971652 (nullable!6430 lt!2405801))))

(declare-fun b!6560748 () Bool)

(declare-fun res!2692171 () Bool)

(assert (=> b!6560748 (=> res!2692171 e!3971650)))

(assert (=> b!6560748 (= res!2692171 e!3971647)))

(declare-fun res!2692165 () Bool)

(assert (=> b!6560748 (=> (not res!2692165) (not e!3971647))))

(assert (=> b!6560748 (= res!2692165 lt!2406009)))

(declare-fun b!6560749 () Bool)

(assert (=> b!6560749 (= e!3971649 e!3971651)))

(declare-fun c!1205546 () Bool)

(assert (=> b!6560749 (= c!1205546 ((_ is EmptyLang!16437) lt!2405801))))

(declare-fun d!2058414 () Bool)

(assert (=> d!2058414 e!3971649))

(declare-fun c!1205544 () Bool)

(assert (=> d!2058414 (= c!1205544 ((_ is EmptyExpr!16437) lt!2405801))))

(assert (=> d!2058414 (= lt!2406009 e!3971652)))

(declare-fun c!1205545 () Bool)

(assert (=> d!2058414 (= c!1205545 (isEmpty!37729 lt!2405780))))

(assert (=> d!2058414 (validRegex!8173 lt!2405801)))

(assert (=> d!2058414 (= (matchR!8620 lt!2405801 lt!2405780) lt!2406009)))

(declare-fun bm!570629 () Bool)

(assert (=> bm!570629 (= call!570634 (isEmpty!37729 lt!2405780))))

(declare-fun b!6560750 () Bool)

(declare-fun res!2692170 () Bool)

(assert (=> b!6560750 (=> res!2692170 e!3971650)))

(assert (=> b!6560750 (= res!2692170 (not ((_ is ElementMatch!16437) lt!2405801)))))

(assert (=> b!6560750 (= e!3971651 e!3971650)))

(declare-fun b!6560751 () Bool)

(declare-fun res!2692164 () Bool)

(assert (=> b!6560751 (=> res!2692164 e!3971648)))

(assert (=> b!6560751 (= res!2692164 (not (isEmpty!37729 (tail!12409 lt!2405780))))))

(assert (= (and d!2058414 c!1205545) b!6560747))

(assert (= (and d!2058414 (not c!1205545)) b!6560744))

(assert (= (and d!2058414 c!1205544) b!6560740))

(assert (= (and d!2058414 (not c!1205544)) b!6560749))

(assert (= (and b!6560749 c!1205546) b!6560738))

(assert (= (and b!6560749 (not c!1205546)) b!6560750))

(assert (= (and b!6560750 (not res!2692170)) b!6560748))

(assert (= (and b!6560748 res!2692165) b!6560745))

(assert (= (and b!6560745 res!2692166) b!6560741))

(assert (= (and b!6560741 res!2692169) b!6560742))

(assert (= (and b!6560748 (not res!2692171)) b!6560739))

(assert (= (and b!6560739 res!2692168) b!6560746))

(assert (= (and b!6560746 (not res!2692167)) b!6560751))

(assert (= (and b!6560751 (not res!2692164)) b!6560743))

(assert (= (or b!6560740 b!6560745 b!6560746) bm!570629))

(assert (=> d!2058414 m!7342738))

(assert (=> d!2058414 m!7342208))

(assert (=> b!6560747 m!7342210))

(assert (=> b!6560751 m!7342746))

(assert (=> b!6560751 m!7342746))

(declare-fun m!7342802 () Bool)

(assert (=> b!6560751 m!7342802))

(assert (=> b!6560744 m!7342742))

(assert (=> b!6560744 m!7342742))

(declare-fun m!7342804 () Bool)

(assert (=> b!6560744 m!7342804))

(assert (=> b!6560744 m!7342746))

(assert (=> b!6560744 m!7342804))

(assert (=> b!6560744 m!7342746))

(declare-fun m!7342806 () Bool)

(assert (=> b!6560744 m!7342806))

(assert (=> b!6560741 m!7342746))

(assert (=> b!6560741 m!7342746))

(assert (=> b!6560741 m!7342802))

(assert (=> b!6560743 m!7342742))

(assert (=> bm!570629 m!7342738))

(assert (=> b!6560742 m!7342742))

(assert (=> b!6559711 d!2058414))

(assert (=> b!6559711 d!2058220))

(declare-fun b!6560752 () Bool)

(declare-fun e!3971658 () Bool)

(declare-fun lt!2406010 () Bool)

(assert (=> b!6560752 (= e!3971658 (not lt!2406010))))

(declare-fun b!6560753 () Bool)

(declare-fun e!3971657 () Bool)

(declare-fun e!3971653 () Bool)

(assert (=> b!6560753 (= e!3971657 e!3971653)))

(declare-fun res!2692176 () Bool)

(assert (=> b!6560753 (=> (not res!2692176) (not e!3971653))))

(assert (=> b!6560753 (= res!2692176 (not lt!2406010))))

(declare-fun b!6560754 () Bool)

(declare-fun e!3971656 () Bool)

(declare-fun call!570635 () Bool)

(assert (=> b!6560754 (= e!3971656 (= lt!2406010 call!570635))))

(declare-fun b!6560755 () Bool)

(declare-fun res!2692177 () Bool)

(declare-fun e!3971654 () Bool)

(assert (=> b!6560755 (=> (not res!2692177) (not e!3971654))))

(assert (=> b!6560755 (= res!2692177 (isEmpty!37729 (tail!12409 (_1!36719 lt!2405757))))))

(declare-fun b!6560756 () Bool)

(assert (=> b!6560756 (= e!3971654 (= (head!13324 (_1!36719 lt!2405757)) (c!1205274 lt!2405774)))))

(declare-fun b!6560757 () Bool)

(declare-fun e!3971655 () Bool)

(assert (=> b!6560757 (= e!3971655 (not (= (head!13324 (_1!36719 lt!2405757)) (c!1205274 lt!2405774))))))

(declare-fun b!6560758 () Bool)

(declare-fun e!3971659 () Bool)

(assert (=> b!6560758 (= e!3971659 (matchR!8620 (derivativeStep!5121 lt!2405774 (head!13324 (_1!36719 lt!2405757))) (tail!12409 (_1!36719 lt!2405757))))))

(declare-fun b!6560759 () Bool)

(declare-fun res!2692174 () Bool)

(assert (=> b!6560759 (=> (not res!2692174) (not e!3971654))))

(assert (=> b!6560759 (= res!2692174 (not call!570635))))

(declare-fun b!6560760 () Bool)

(assert (=> b!6560760 (= e!3971653 e!3971655)))

(declare-fun res!2692175 () Bool)

(assert (=> b!6560760 (=> res!2692175 e!3971655)))

(assert (=> b!6560760 (= res!2692175 call!570635)))

(declare-fun b!6560761 () Bool)

(assert (=> b!6560761 (= e!3971659 (nullable!6430 lt!2405774))))

(declare-fun b!6560762 () Bool)

(declare-fun res!2692179 () Bool)

(assert (=> b!6560762 (=> res!2692179 e!3971657)))

(assert (=> b!6560762 (= res!2692179 e!3971654)))

(declare-fun res!2692173 () Bool)

(assert (=> b!6560762 (=> (not res!2692173) (not e!3971654))))

(assert (=> b!6560762 (= res!2692173 lt!2406010)))

(declare-fun b!6560763 () Bool)

(assert (=> b!6560763 (= e!3971656 e!3971658)))

(declare-fun c!1205549 () Bool)

(assert (=> b!6560763 (= c!1205549 ((_ is EmptyLang!16437) lt!2405774))))

(declare-fun d!2058416 () Bool)

(assert (=> d!2058416 e!3971656))

(declare-fun c!1205547 () Bool)

(assert (=> d!2058416 (= c!1205547 ((_ is EmptyExpr!16437) lt!2405774))))

(assert (=> d!2058416 (= lt!2406010 e!3971659)))

(declare-fun c!1205548 () Bool)

(assert (=> d!2058416 (= c!1205548 (isEmpty!37729 (_1!36719 lt!2405757)))))

(assert (=> d!2058416 (validRegex!8173 lt!2405774)))

(assert (=> d!2058416 (= (matchR!8620 lt!2405774 (_1!36719 lt!2405757)) lt!2406010)))

(declare-fun bm!570630 () Bool)

(assert (=> bm!570630 (= call!570635 (isEmpty!37729 (_1!36719 lt!2405757)))))

(declare-fun b!6560764 () Bool)

(declare-fun res!2692178 () Bool)

(assert (=> b!6560764 (=> res!2692178 e!3971657)))

(assert (=> b!6560764 (= res!2692178 (not ((_ is ElementMatch!16437) lt!2405774)))))

(assert (=> b!6560764 (= e!3971658 e!3971657)))

(declare-fun b!6560765 () Bool)

(declare-fun res!2692172 () Bool)

(assert (=> b!6560765 (=> res!2692172 e!3971655)))

(assert (=> b!6560765 (= res!2692172 (not (isEmpty!37729 (tail!12409 (_1!36719 lt!2405757)))))))

(assert (= (and d!2058416 c!1205548) b!6560761))

(assert (= (and d!2058416 (not c!1205548)) b!6560758))

(assert (= (and d!2058416 c!1205547) b!6560754))

(assert (= (and d!2058416 (not c!1205547)) b!6560763))

(assert (= (and b!6560763 c!1205549) b!6560752))

(assert (= (and b!6560763 (not c!1205549)) b!6560764))

(assert (= (and b!6560764 (not res!2692178)) b!6560762))

(assert (= (and b!6560762 res!2692173) b!6560759))

(assert (= (and b!6560759 res!2692174) b!6560755))

(assert (= (and b!6560755 res!2692177) b!6560756))

(assert (= (and b!6560762 (not res!2692179)) b!6560753))

(assert (= (and b!6560753 res!2692176) b!6560760))

(assert (= (and b!6560760 (not res!2692175)) b!6560765))

(assert (= (and b!6560765 (not res!2692172)) b!6560757))

(assert (= (or b!6560754 b!6560759 b!6560760) bm!570630))

(declare-fun m!7342808 () Bool)

(assert (=> d!2058416 m!7342808))

(assert (=> d!2058416 m!7342710))

(declare-fun m!7342810 () Bool)

(assert (=> b!6560761 m!7342810))

(declare-fun m!7342812 () Bool)

(assert (=> b!6560765 m!7342812))

(assert (=> b!6560765 m!7342812))

(declare-fun m!7342814 () Bool)

(assert (=> b!6560765 m!7342814))

(declare-fun m!7342816 () Bool)

(assert (=> b!6560758 m!7342816))

(assert (=> b!6560758 m!7342816))

(declare-fun m!7342818 () Bool)

(assert (=> b!6560758 m!7342818))

(assert (=> b!6560758 m!7342812))

(assert (=> b!6560758 m!7342818))

(assert (=> b!6560758 m!7342812))

(declare-fun m!7342820 () Bool)

(assert (=> b!6560758 m!7342820))

(assert (=> b!6560755 m!7342812))

(assert (=> b!6560755 m!7342812))

(assert (=> b!6560755 m!7342814))

(assert (=> b!6560757 m!7342816))

(assert (=> bm!570630 m!7342808))

(assert (=> b!6560756 m!7342816))

(assert (=> b!6559711 d!2058416))

(declare-fun d!2058418 () Bool)

(declare-fun c!1205550 () Bool)

(assert (=> d!2058418 (= c!1205550 (isEmpty!37729 (t!379252 s!2326)))))

(declare-fun e!3971660 () Bool)

(assert (=> d!2058418 (= (matchZipper!2449 lt!2405778 (t!379252 s!2326)) e!3971660)))

(declare-fun b!6560766 () Bool)

(assert (=> b!6560766 (= e!3971660 (nullableZipper!2181 lt!2405778))))

(declare-fun b!6560767 () Bool)

(assert (=> b!6560767 (= e!3971660 (matchZipper!2449 (derivationStepZipper!2403 lt!2405778 (head!13324 (t!379252 s!2326))) (tail!12409 (t!379252 s!2326))))))

(assert (= (and d!2058418 c!1205550) b!6560766))

(assert (= (and d!2058418 (not c!1205550)) b!6560767))

(assert (=> d!2058418 m!7342306))

(declare-fun m!7342822 () Bool)

(assert (=> b!6560766 m!7342822))

(assert (=> b!6560767 m!7342310))

(assert (=> b!6560767 m!7342310))

(declare-fun m!7342824 () Bool)

(assert (=> b!6560767 m!7342824))

(assert (=> b!6560767 m!7342314))

(assert (=> b!6560767 m!7342824))

(assert (=> b!6560767 m!7342314))

(declare-fun m!7342826 () Bool)

(assert (=> b!6560767 m!7342826))

(assert (=> b!6559692 d!2058418))

(declare-fun d!2058420 () Bool)

(declare-fun c!1205551 () Bool)

(assert (=> d!2058420 (= c!1205551 (isEmpty!37729 s!2326))))

(declare-fun e!3971661 () Bool)

(assert (=> d!2058420 (= (matchZipper!2449 lt!2405771 s!2326) e!3971661)))

(declare-fun b!6560768 () Bool)

(assert (=> b!6560768 (= e!3971661 (nullableZipper!2181 lt!2405771))))

(declare-fun b!6560769 () Bool)

(assert (=> b!6560769 (= e!3971661 (matchZipper!2449 (derivationStepZipper!2403 lt!2405771 (head!13324 s!2326)) (tail!12409 s!2326)))))

(assert (= (and d!2058420 c!1205551) b!6560768))

(assert (= (and d!2058420 (not c!1205551)) b!6560769))

(assert (=> d!2058420 m!7342178))

(declare-fun m!7342828 () Bool)

(assert (=> b!6560768 m!7342828))

(assert (=> b!6560769 m!7342218))

(assert (=> b!6560769 m!7342218))

(declare-fun m!7342830 () Bool)

(assert (=> b!6560769 m!7342830))

(assert (=> b!6560769 m!7342212))

(assert (=> b!6560769 m!7342830))

(assert (=> b!6560769 m!7342212))

(declare-fun m!7342832 () Bool)

(assert (=> b!6560769 m!7342832))

(assert (=> b!6559692 d!2058420))

(declare-fun d!2058422 () Bool)

(declare-fun lt!2406011 () Regex!16437)

(assert (=> d!2058422 (validRegex!8173 lt!2406011)))

(assert (=> d!2058422 (= lt!2406011 (generalisedUnion!2281 (unfocusZipperList!1858 zl!343)))))

(assert (=> d!2058422 (= (unfocusZipper!2179 zl!343) lt!2406011)))

(declare-fun bs!1674511 () Bool)

(assert (= bs!1674511 d!2058422))

(declare-fun m!7342834 () Bool)

(assert (=> bs!1674511 m!7342834))

(assert (=> bs!1674511 m!7341794))

(assert (=> bs!1674511 m!7341794))

(assert (=> bs!1674511 m!7341796))

(assert (=> b!6559691 d!2058422))

(declare-fun b!6560770 () Bool)

(declare-fun e!3971662 () Bool)

(assert (=> b!6560770 (= e!3971662 (nullable!6430 (h!71935 (exprs!6321 lt!2405775))))))

(declare-fun b!6560771 () Bool)

(declare-fun e!3971664 () (InoxSet Context!11642))

(assert (=> b!6560771 (= e!3971664 ((as const (Array Context!11642 Bool)) false))))

(declare-fun b!6560772 () Bool)

(declare-fun e!3971663 () (InoxSet Context!11642))

(assert (=> b!6560772 (= e!3971663 e!3971664)))

(declare-fun c!1205552 () Bool)

(assert (=> b!6560772 (= c!1205552 ((_ is Cons!65487) (exprs!6321 lt!2405775)))))

(declare-fun b!6560773 () Bool)

(declare-fun call!570636 () (InoxSet Context!11642))

(assert (=> b!6560773 (= e!3971663 ((_ map or) call!570636 (derivationStepZipperUp!1611 (Context!11643 (t!379253 (exprs!6321 lt!2405775))) (h!71934 s!2326))))))

(declare-fun b!6560774 () Bool)

(assert (=> b!6560774 (= e!3971664 call!570636)))

(declare-fun d!2058424 () Bool)

(declare-fun c!1205553 () Bool)

(assert (=> d!2058424 (= c!1205553 e!3971662)))

(declare-fun res!2692180 () Bool)

(assert (=> d!2058424 (=> (not res!2692180) (not e!3971662))))

(assert (=> d!2058424 (= res!2692180 ((_ is Cons!65487) (exprs!6321 lt!2405775)))))

(assert (=> d!2058424 (= (derivationStepZipperUp!1611 lt!2405775 (h!71934 s!2326)) e!3971663)))

(declare-fun bm!570631 () Bool)

(assert (=> bm!570631 (= call!570636 (derivationStepZipperDown!1685 (h!71935 (exprs!6321 lt!2405775)) (Context!11643 (t!379253 (exprs!6321 lt!2405775))) (h!71934 s!2326)))))

(assert (= (and d!2058424 res!2692180) b!6560770))

(assert (= (and d!2058424 c!1205553) b!6560773))

(assert (= (and d!2058424 (not c!1205553)) b!6560772))

(assert (= (and b!6560772 c!1205552) b!6560774))

(assert (= (and b!6560772 (not c!1205552)) b!6560771))

(assert (= (or b!6560773 b!6560774) bm!570631))

(declare-fun m!7342836 () Bool)

(assert (=> b!6560770 m!7342836))

(declare-fun m!7342838 () Bool)

(assert (=> b!6560773 m!7342838))

(declare-fun m!7342840 () Bool)

(assert (=> bm!570631 m!7342840))

(assert (=> b!6559732 d!2058424))

(declare-fun d!2058426 () Bool)

(assert (=> d!2058426 (= (flatMap!1942 lt!2405758 lambda!364855) (choose!48936 lt!2405758 lambda!364855))))

(declare-fun bs!1674512 () Bool)

(assert (= bs!1674512 d!2058426))

(declare-fun m!7342842 () Bool)

(assert (=> bs!1674512 m!7342842))

(assert (=> b!6559732 d!2058426))

(declare-fun d!2058428 () Bool)

(assert (=> d!2058428 (= (flatMap!1942 lt!2405782 lambda!364855) (choose!48936 lt!2405782 lambda!364855))))

(declare-fun bs!1674513 () Bool)

(assert (= bs!1674513 d!2058428))

(declare-fun m!7342844 () Bool)

(assert (=> bs!1674513 m!7342844))

(assert (=> b!6559732 d!2058428))

(declare-fun d!2058430 () Bool)

(assert (=> d!2058430 (= (flatMap!1942 lt!2405758 lambda!364855) (dynLambda!26046 lambda!364855 lt!2405750))))

(declare-fun lt!2406012 () Unit!159083)

(assert (=> d!2058430 (= lt!2406012 (choose!48937 lt!2405758 lt!2405750 lambda!364855))))

(assert (=> d!2058430 (= lt!2405758 (store ((as const (Array Context!11642 Bool)) false) lt!2405750 true))))

(assert (=> d!2058430 (= (lemmaFlatMapOnSingletonSet!1468 lt!2405758 lt!2405750 lambda!364855) lt!2406012)))

(declare-fun b_lambda!248185 () Bool)

(assert (=> (not b_lambda!248185) (not d!2058430)))

(declare-fun bs!1674514 () Bool)

(assert (= bs!1674514 d!2058430))

(assert (=> bs!1674514 m!7341808))

(declare-fun m!7342846 () Bool)

(assert (=> bs!1674514 m!7342846))

(declare-fun m!7342848 () Bool)

(assert (=> bs!1674514 m!7342848))

(assert (=> bs!1674514 m!7341798))

(assert (=> b!6559732 d!2058430))

(declare-fun d!2058432 () Bool)

(assert (=> d!2058432 (= (flatMap!1942 lt!2405782 lambda!364855) (dynLambda!26046 lambda!364855 lt!2405775))))

(declare-fun lt!2406013 () Unit!159083)

(assert (=> d!2058432 (= lt!2406013 (choose!48937 lt!2405782 lt!2405775 lambda!364855))))

(assert (=> d!2058432 (= lt!2405782 (store ((as const (Array Context!11642 Bool)) false) lt!2405775 true))))

(assert (=> d!2058432 (= (lemmaFlatMapOnSingletonSet!1468 lt!2405782 lt!2405775 lambda!364855) lt!2406013)))

(declare-fun b_lambda!248187 () Bool)

(assert (=> (not b_lambda!248187) (not d!2058432)))

(declare-fun bs!1674515 () Bool)

(assert (= bs!1674515 d!2058432))

(assert (=> bs!1674515 m!7341812))

(declare-fun m!7342850 () Bool)

(assert (=> bs!1674515 m!7342850))

(declare-fun m!7342852 () Bool)

(assert (=> bs!1674515 m!7342852))

(assert (=> bs!1674515 m!7341810))

(assert (=> b!6559732 d!2058432))

(declare-fun b!6560775 () Bool)

(declare-fun e!3971665 () Bool)

(assert (=> b!6560775 (= e!3971665 (nullable!6430 (h!71935 (exprs!6321 lt!2405750))))))

(declare-fun b!6560776 () Bool)

(declare-fun e!3971667 () (InoxSet Context!11642))

(assert (=> b!6560776 (= e!3971667 ((as const (Array Context!11642 Bool)) false))))

(declare-fun b!6560777 () Bool)

(declare-fun e!3971666 () (InoxSet Context!11642))

(assert (=> b!6560777 (= e!3971666 e!3971667)))

(declare-fun c!1205554 () Bool)

(assert (=> b!6560777 (= c!1205554 ((_ is Cons!65487) (exprs!6321 lt!2405750)))))

(declare-fun call!570637 () (InoxSet Context!11642))

(declare-fun b!6560778 () Bool)

(assert (=> b!6560778 (= e!3971666 ((_ map or) call!570637 (derivationStepZipperUp!1611 (Context!11643 (t!379253 (exprs!6321 lt!2405750))) (h!71934 s!2326))))))

(declare-fun b!6560779 () Bool)

(assert (=> b!6560779 (= e!3971667 call!570637)))

(declare-fun d!2058434 () Bool)

(declare-fun c!1205555 () Bool)

(assert (=> d!2058434 (= c!1205555 e!3971665)))

(declare-fun res!2692181 () Bool)

(assert (=> d!2058434 (=> (not res!2692181) (not e!3971665))))

(assert (=> d!2058434 (= res!2692181 ((_ is Cons!65487) (exprs!6321 lt!2405750)))))

(assert (=> d!2058434 (= (derivationStepZipperUp!1611 lt!2405750 (h!71934 s!2326)) e!3971666)))

(declare-fun bm!570632 () Bool)

(assert (=> bm!570632 (= call!570637 (derivationStepZipperDown!1685 (h!71935 (exprs!6321 lt!2405750)) (Context!11643 (t!379253 (exprs!6321 lt!2405750))) (h!71934 s!2326)))))

(assert (= (and d!2058434 res!2692181) b!6560775))

(assert (= (and d!2058434 c!1205555) b!6560778))

(assert (= (and d!2058434 (not c!1205555)) b!6560777))

(assert (= (and b!6560777 c!1205554) b!6560779))

(assert (= (and b!6560777 (not c!1205554)) b!6560776))

(assert (= (or b!6560778 b!6560779) bm!570632))

(declare-fun m!7342854 () Bool)

(assert (=> b!6560775 m!7342854))

(declare-fun m!7342856 () Bool)

(assert (=> b!6560778 m!7342856))

(declare-fun m!7342858 () Bool)

(assert (=> bm!570632 m!7342858))

(assert (=> b!6559732 d!2058434))

(declare-fun d!2058436 () Bool)

(declare-fun lt!2406014 () Regex!16437)

(assert (=> d!2058436 (validRegex!8173 lt!2406014)))

(assert (=> d!2058436 (= lt!2406014 (generalisedUnion!2281 (unfocusZipperList!1858 lt!2405797)))))

(assert (=> d!2058436 (= (unfocusZipper!2179 lt!2405797) lt!2406014)))

(declare-fun bs!1674516 () Bool)

(assert (= bs!1674516 d!2058436))

(declare-fun m!7342860 () Bool)

(assert (=> bs!1674516 m!7342860))

(declare-fun m!7342862 () Bool)

(assert (=> bs!1674516 m!7342862))

(assert (=> bs!1674516 m!7342862))

(declare-fun m!7342864 () Bool)

(assert (=> bs!1674516 m!7342864))

(assert (=> b!6559732 d!2058436))

(declare-fun d!2058438 () Bool)

(assert (=> d!2058438 (= (nullable!6430 (h!71935 (exprs!6321 (h!71936 zl!343)))) (nullableFct!2355 (h!71935 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun bs!1674517 () Bool)

(assert (= bs!1674517 d!2058438))

(declare-fun m!7342866 () Bool)

(assert (=> bs!1674517 m!7342866))

(assert (=> b!6559731 d!2058438))

(declare-fun b!6560780 () Bool)

(declare-fun e!3971668 () Bool)

(assert (=> b!6560780 (= e!3971668 (nullable!6430 (h!71935 (exprs!6321 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343)))))))))))

(declare-fun b!6560781 () Bool)

(declare-fun e!3971670 () (InoxSet Context!11642))

(assert (=> b!6560781 (= e!3971670 ((as const (Array Context!11642 Bool)) false))))

(declare-fun b!6560782 () Bool)

(declare-fun e!3971669 () (InoxSet Context!11642))

(assert (=> b!6560782 (= e!3971669 e!3971670)))

(declare-fun c!1205556 () Bool)

(assert (=> b!6560782 (= c!1205556 ((_ is Cons!65487) (exprs!6321 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343))))))))))

(declare-fun b!6560783 () Bool)

(declare-fun call!570638 () (InoxSet Context!11642))

(assert (=> b!6560783 (= e!3971669 ((_ map or) call!570638 (derivationStepZipperUp!1611 (Context!11643 (t!379253 (exprs!6321 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343)))))))) (h!71934 s!2326))))))

(declare-fun b!6560784 () Bool)

(assert (=> b!6560784 (= e!3971670 call!570638)))

(declare-fun d!2058440 () Bool)

(declare-fun c!1205557 () Bool)

(assert (=> d!2058440 (= c!1205557 e!3971668)))

(declare-fun res!2692182 () Bool)

(assert (=> d!2058440 (=> (not res!2692182) (not e!3971668))))

(assert (=> d!2058440 (= res!2692182 ((_ is Cons!65487) (exprs!6321 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343))))))))))

(assert (=> d!2058440 (= (derivationStepZipperUp!1611 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343))))) (h!71934 s!2326)) e!3971669)))

(declare-fun bm!570633 () Bool)

(assert (=> bm!570633 (= call!570638 (derivationStepZipperDown!1685 (h!71935 (exprs!6321 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343))))))) (Context!11643 (t!379253 (exprs!6321 (Context!11643 (Cons!65487 (h!71935 (exprs!6321 (h!71936 zl!343))) (t!379253 (exprs!6321 (h!71936 zl!343)))))))) (h!71934 s!2326)))))

(assert (= (and d!2058440 res!2692182) b!6560780))

(assert (= (and d!2058440 c!1205557) b!6560783))

(assert (= (and d!2058440 (not c!1205557)) b!6560782))

(assert (= (and b!6560782 c!1205556) b!6560784))

(assert (= (and b!6560782 (not c!1205556)) b!6560781))

(assert (= (or b!6560783 b!6560784) bm!570633))

(declare-fun m!7342868 () Bool)

(assert (=> b!6560780 m!7342868))

(declare-fun m!7342870 () Bool)

(assert (=> b!6560783 m!7342870))

(declare-fun m!7342872 () Bool)

(assert (=> bm!570633 m!7342872))

(assert (=> b!6559731 d!2058440))

(declare-fun d!2058442 () Bool)

(assert (=> d!2058442 (= (flatMap!1942 z!1189 lambda!364855) (dynLambda!26046 lambda!364855 (h!71936 zl!343)))))

(declare-fun lt!2406015 () Unit!159083)

(assert (=> d!2058442 (= lt!2406015 (choose!48937 z!1189 (h!71936 zl!343) lambda!364855))))

(assert (=> d!2058442 (= z!1189 (store ((as const (Array Context!11642 Bool)) false) (h!71936 zl!343) true))))

(assert (=> d!2058442 (= (lemmaFlatMapOnSingletonSet!1468 z!1189 (h!71936 zl!343) lambda!364855) lt!2406015)))

(declare-fun b_lambda!248189 () Bool)

(assert (=> (not b_lambda!248189) (not d!2058442)))

(declare-fun bs!1674518 () Bool)

(assert (= bs!1674518 d!2058442))

(assert (=> bs!1674518 m!7341782))

(declare-fun m!7342874 () Bool)

(assert (=> bs!1674518 m!7342874))

(declare-fun m!7342876 () Bool)

(assert (=> bs!1674518 m!7342876))

(declare-fun m!7342878 () Bool)

(assert (=> bs!1674518 m!7342878))

(assert (=> b!6559731 d!2058442))

(declare-fun b!6560785 () Bool)

(declare-fun e!3971671 () Bool)

(assert (=> b!6560785 (= e!3971671 (nullable!6430 (h!71935 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun b!6560786 () Bool)

(declare-fun e!3971673 () (InoxSet Context!11642))

(assert (=> b!6560786 (= e!3971673 ((as const (Array Context!11642 Bool)) false))))

(declare-fun b!6560787 () Bool)

(declare-fun e!3971672 () (InoxSet Context!11642))

(assert (=> b!6560787 (= e!3971672 e!3971673)))

(declare-fun c!1205558 () Bool)

(assert (=> b!6560787 (= c!1205558 ((_ is Cons!65487) (exprs!6321 (h!71936 zl!343))))))

(declare-fun call!570639 () (InoxSet Context!11642))

(declare-fun b!6560788 () Bool)

(assert (=> b!6560788 (= e!3971672 ((_ map or) call!570639 (derivationStepZipperUp!1611 (Context!11643 (t!379253 (exprs!6321 (h!71936 zl!343)))) (h!71934 s!2326))))))

(declare-fun b!6560789 () Bool)

(assert (=> b!6560789 (= e!3971673 call!570639)))

(declare-fun d!2058444 () Bool)

(declare-fun c!1205559 () Bool)

(assert (=> d!2058444 (= c!1205559 e!3971671)))

(declare-fun res!2692183 () Bool)

(assert (=> d!2058444 (=> (not res!2692183) (not e!3971671))))

(assert (=> d!2058444 (= res!2692183 ((_ is Cons!65487) (exprs!6321 (h!71936 zl!343))))))

(assert (=> d!2058444 (= (derivationStepZipperUp!1611 (h!71936 zl!343) (h!71934 s!2326)) e!3971672)))

(declare-fun bm!570634 () Bool)

(assert (=> bm!570634 (= call!570639 (derivationStepZipperDown!1685 (h!71935 (exprs!6321 (h!71936 zl!343))) (Context!11643 (t!379253 (exprs!6321 (h!71936 zl!343)))) (h!71934 s!2326)))))

(assert (= (and d!2058444 res!2692183) b!6560785))

(assert (= (and d!2058444 c!1205559) b!6560788))

(assert (= (and d!2058444 (not c!1205559)) b!6560787))

(assert (= (and b!6560787 c!1205558) b!6560789))

(assert (= (and b!6560787 (not c!1205558)) b!6560786))

(assert (= (or b!6560788 b!6560789) bm!570634))

(assert (=> b!6560785 m!7341778))

(declare-fun m!7342880 () Bool)

(assert (=> b!6560788 m!7342880))

(declare-fun m!7342882 () Bool)

(assert (=> bm!570634 m!7342882))

(assert (=> b!6559731 d!2058444))

(declare-fun d!2058446 () Bool)

(assert (=> d!2058446 (= (flatMap!1942 z!1189 lambda!364855) (choose!48936 z!1189 lambda!364855))))

(declare-fun bs!1674519 () Bool)

(assert (= bs!1674519 d!2058446))

(declare-fun m!7342884 () Bool)

(assert (=> bs!1674519 m!7342884))

(assert (=> b!6559731 d!2058446))

(declare-fun bm!570635 () Bool)

(declare-fun call!570645 () (InoxSet Context!11642))

(declare-fun call!570644 () (InoxSet Context!11642))

(assert (=> bm!570635 (= call!570645 call!570644)))

(declare-fun b!6560790 () Bool)

(declare-fun e!3971678 () (InoxSet Context!11642))

(declare-fun call!570643 () (InoxSet Context!11642))

(assert (=> b!6560790 (= e!3971678 call!570643)))

(declare-fun b!6560791 () Bool)

(declare-fun e!3971677 () (InoxSet Context!11642))

(declare-fun e!3971679 () (InoxSet Context!11642))

(assert (=> b!6560791 (= e!3971677 e!3971679)))

(declare-fun c!1205560 () Bool)

(assert (=> b!6560791 (= c!1205560 ((_ is Union!16437) (h!71935 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun b!6560792 () Bool)

(declare-fun e!3971674 () (InoxSet Context!11642))

(assert (=> b!6560792 (= e!3971674 call!570643)))

(declare-fun b!6560793 () Bool)

(declare-fun c!1205563 () Bool)

(declare-fun e!3971675 () Bool)

(assert (=> b!6560793 (= c!1205563 e!3971675)))

(declare-fun res!2692184 () Bool)

(assert (=> b!6560793 (=> (not res!2692184) (not e!3971675))))

(assert (=> b!6560793 (= res!2692184 ((_ is Concat!25282) (h!71935 (exprs!6321 (h!71936 zl!343)))))))

(declare-fun e!3971676 () (InoxSet Context!11642))

(assert (=> b!6560793 (= e!3971679 e!3971676)))

(declare-fun bm!570636 () Bool)

(declare-fun call!570641 () List!65611)

(declare-fun call!570642 () List!65611)

(assert (=> bm!570636 (= call!570641 call!570642)))

(declare-fun b!6560794 () Bool)

(assert (=> b!6560794 (= e!3971677 (store ((as const (Array Context!11642 Bool)) false) lt!2405806 true))))

(declare-fun call!570640 () (InoxSet Context!11642))

(declare-fun bm!570637 () Bool)

(assert (=> bm!570637 (= call!570640 (derivationStepZipperDown!1685 (ite c!1205560 (regTwo!33387 (h!71935 (exprs!6321 (h!71936 zl!343)))) (regOne!33386 (h!71935 (exprs!6321 (h!71936 zl!343))))) (ite c!1205560 lt!2405806 (Context!11643 call!570642)) (h!71934 s!2326)))))

(declare-fun b!6560795 () Bool)

(assert (=> b!6560795 (= e!3971675 (nullable!6430 (regOne!33386 (h!71935 (exprs!6321 (h!71936 zl!343))))))))

(declare-fun b!6560796 () Bool)

(assert (=> b!6560796 (= e!3971676 ((_ map or) call!570640 call!570645))))

(declare-fun bm!570638 () Bool)

(assert (=> bm!570638 (= call!570643 call!570645)))

(declare-fun d!2058448 () Bool)

(declare-fun c!1205562 () Bool)

(assert (=> d!2058448 (= c!1205562 (and ((_ is ElementMatch!16437) (h!71935 (exprs!6321 (h!71936 zl!343)))) (= (c!1205274 (h!71935 (exprs!6321 (h!71936 zl!343)))) (h!71934 s!2326))))))

(assert (=> d!2058448 (= (derivationStepZipperDown!1685 (h!71935 (exprs!6321 (h!71936 zl!343))) lt!2405806 (h!71934 s!2326)) e!3971677)))

(declare-fun b!6560797 () Bool)

(assert (=> b!6560797 (= e!3971679 ((_ map or) call!570644 call!570640))))

(declare-fun b!6560798 () Bool)

(assert (=> b!6560798 (= e!3971674 ((as const (Array Context!11642 Bool)) false))))

(declare-fun c!1205561 () Bool)

(declare-fun bm!570639 () Bool)

(assert (=> bm!570639 (= call!570642 ($colon$colon!2277 (exprs!6321 lt!2405806) (ite (or c!1205563 c!1205561) (regTwo!33386 (h!71935 (exprs!6321 (h!71936 zl!343)))) (h!71935 (exprs!6321 (h!71936 zl!343))))))))

(declare-fun b!6560799 () Bool)

(declare-fun c!1205564 () Bool)

(assert (=> b!6560799 (= c!1205564 ((_ is Star!16437) (h!71935 (exprs!6321 (h!71936 zl!343)))))))

(assert (=> b!6560799 (= e!3971678 e!3971674)))

(declare-fun bm!570640 () Bool)

(assert (=> bm!570640 (= call!570644 (derivationStepZipperDown!1685 (ite c!1205560 (regOne!33387 (h!71935 (exprs!6321 (h!71936 zl!343)))) (ite c!1205563 (regTwo!33386 (h!71935 (exprs!6321 (h!71936 zl!343)))) (ite c!1205561 (regOne!33386 (h!71935 (exprs!6321 (h!71936 zl!343)))) (reg!16766 (h!71935 (exprs!6321 (h!71936 zl!343))))))) (ite (or c!1205560 c!1205563) lt!2405806 (Context!11643 call!570641)) (h!71934 s!2326)))))

(declare-fun b!6560800 () Bool)

(assert (=> b!6560800 (= e!3971676 e!3971678)))

(assert (=> b!6560800 (= c!1205561 ((_ is Concat!25282) (h!71935 (exprs!6321 (h!71936 zl!343)))))))

(assert (= (and d!2058448 c!1205562) b!6560794))

(assert (= (and d!2058448 (not c!1205562)) b!6560791))

(assert (= (and b!6560791 c!1205560) b!6560797))

(assert (= (and b!6560791 (not c!1205560)) b!6560793))

(assert (= (and b!6560793 res!2692184) b!6560795))

(assert (= (and b!6560793 c!1205563) b!6560796))

(assert (= (and b!6560793 (not c!1205563)) b!6560800))

(assert (= (and b!6560800 c!1205561) b!6560790))

(assert (= (and b!6560800 (not c!1205561)) b!6560799))

(assert (= (and b!6560799 c!1205564) b!6560792))

(assert (= (and b!6560799 (not c!1205564)) b!6560798))

(assert (= (or b!6560790 b!6560792) bm!570636))

(assert (= (or b!6560790 b!6560792) bm!570638))

(assert (= (or b!6560796 bm!570636) bm!570639))

(assert (= (or b!6560796 bm!570638) bm!570635))

(assert (= (or b!6560797 b!6560796) bm!570637))

(assert (= (or b!6560797 bm!570635) bm!570640))

(declare-fun m!7342886 () Bool)

(assert (=> b!6560795 m!7342886))

(declare-fun m!7342888 () Bool)

(assert (=> b!6560794 m!7342888))

(declare-fun m!7342890 () Bool)

(assert (=> bm!570637 m!7342890))

(declare-fun m!7342892 () Bool)

(assert (=> bm!570640 m!7342892))

(declare-fun m!7342894 () Bool)

(assert (=> bm!570639 m!7342894))

(assert (=> b!6559731 d!2058448))

(declare-fun b!6560801 () Bool)

(declare-fun e!3971680 () Bool)

(assert (=> b!6560801 (= e!3971680 (nullable!6430 (h!71935 (exprs!6321 lt!2405806))))))

(declare-fun b!6560802 () Bool)

(declare-fun e!3971682 () (InoxSet Context!11642))

(assert (=> b!6560802 (= e!3971682 ((as const (Array Context!11642 Bool)) false))))

(declare-fun b!6560803 () Bool)

(declare-fun e!3971681 () (InoxSet Context!11642))

(assert (=> b!6560803 (= e!3971681 e!3971682)))

(declare-fun c!1205565 () Bool)

(assert (=> b!6560803 (= c!1205565 ((_ is Cons!65487) (exprs!6321 lt!2405806)))))

(declare-fun call!570646 () (InoxSet Context!11642))

(declare-fun b!6560804 () Bool)

(assert (=> b!6560804 (= e!3971681 ((_ map or) call!570646 (derivationStepZipperUp!1611 (Context!11643 (t!379253 (exprs!6321 lt!2405806))) (h!71934 s!2326))))))

(declare-fun b!6560805 () Bool)

(assert (=> b!6560805 (= e!3971682 call!570646)))

(declare-fun d!2058450 () Bool)

(declare-fun c!1205566 () Bool)

(assert (=> d!2058450 (= c!1205566 e!3971680)))

(declare-fun res!2692185 () Bool)

(assert (=> d!2058450 (=> (not res!2692185) (not e!3971680))))

(assert (=> d!2058450 (= res!2692185 ((_ is Cons!65487) (exprs!6321 lt!2405806)))))

(assert (=> d!2058450 (= (derivationStepZipperUp!1611 lt!2405806 (h!71934 s!2326)) e!3971681)))

(declare-fun bm!570641 () Bool)

(assert (=> bm!570641 (= call!570646 (derivationStepZipperDown!1685 (h!71935 (exprs!6321 lt!2405806)) (Context!11643 (t!379253 (exprs!6321 lt!2405806))) (h!71934 s!2326)))))

(assert (= (and d!2058450 res!2692185) b!6560801))

(assert (= (and d!2058450 c!1205566) b!6560804))

(assert (= (and d!2058450 (not c!1205566)) b!6560803))

(assert (= (and b!6560803 c!1205565) b!6560805))

(assert (= (and b!6560803 (not c!1205565)) b!6560802))

(assert (= (or b!6560804 b!6560805) bm!570641))

(declare-fun m!7342896 () Bool)

(assert (=> b!6560801 m!7342896))

(declare-fun m!7342898 () Bool)

(assert (=> b!6560804 m!7342898))

(declare-fun m!7342900 () Bool)

(assert (=> bm!570641 m!7342900))

(assert (=> b!6559731 d!2058450))

(declare-fun call!570648 () Bool)

(declare-fun c!1205568 () Bool)

(declare-fun bm!570642 () Bool)

(declare-fun c!1205567 () Bool)

(assert (=> bm!570642 (= call!570648 (validRegex!8173 (ite c!1205567 (reg!16766 (reg!16766 (regOne!33386 r!7292))) (ite c!1205568 (regTwo!33387 (reg!16766 (regOne!33386 r!7292))) (regTwo!33386 (reg!16766 (regOne!33386 r!7292)))))))))

(declare-fun b!6560806 () Bool)

(declare-fun e!3971685 () Bool)

(assert (=> b!6560806 (= e!3971685 call!570648)))

(declare-fun d!2058452 () Bool)

(declare-fun res!2692189 () Bool)

(declare-fun e!3971689 () Bool)

(assert (=> d!2058452 (=> res!2692189 e!3971689)))

(assert (=> d!2058452 (= res!2692189 ((_ is ElementMatch!16437) (reg!16766 (regOne!33386 r!7292))))))

(assert (=> d!2058452 (= (validRegex!8173 (reg!16766 (regOne!33386 r!7292))) e!3971689)))

(declare-fun b!6560807 () Bool)

(declare-fun res!2692190 () Bool)

(declare-fun e!3971683 () Bool)

(assert (=> b!6560807 (=> res!2692190 e!3971683)))

(assert (=> b!6560807 (= res!2692190 (not ((_ is Concat!25282) (reg!16766 (regOne!33386 r!7292)))))))

(declare-fun e!3971687 () Bool)

(assert (=> b!6560807 (= e!3971687 e!3971683)))

(declare-fun bm!570643 () Bool)

(declare-fun call!570647 () Bool)

(assert (=> bm!570643 (= call!570647 call!570648)))

(declare-fun b!6560808 () Bool)

(declare-fun res!2692187 () Bool)

(declare-fun e!3971684 () Bool)

(assert (=> b!6560808 (=> (not res!2692187) (not e!3971684))))

(declare-fun call!570649 () Bool)

(assert (=> b!6560808 (= res!2692187 call!570649)))

(assert (=> b!6560808 (= e!3971687 e!3971684)))

(declare-fun b!6560809 () Bool)

(declare-fun e!3971686 () Bool)

(assert (=> b!6560809 (= e!3971686 e!3971685)))

(declare-fun res!2692188 () Bool)

(assert (=> b!6560809 (= res!2692188 (not (nullable!6430 (reg!16766 (reg!16766 (regOne!33386 r!7292))))))))

(assert (=> b!6560809 (=> (not res!2692188) (not e!3971685))))

(declare-fun b!6560810 () Bool)

(assert (=> b!6560810 (= e!3971689 e!3971686)))

(assert (=> b!6560810 (= c!1205567 ((_ is Star!16437) (reg!16766 (regOne!33386 r!7292))))))

(declare-fun bm!570644 () Bool)

(assert (=> bm!570644 (= call!570649 (validRegex!8173 (ite c!1205568 (regOne!33387 (reg!16766 (regOne!33386 r!7292))) (regOne!33386 (reg!16766 (regOne!33386 r!7292))))))))

(declare-fun b!6560811 () Bool)

(assert (=> b!6560811 (= e!3971684 call!570647)))

(declare-fun b!6560812 () Bool)

(declare-fun e!3971688 () Bool)

(assert (=> b!6560812 (= e!3971683 e!3971688)))

(declare-fun res!2692186 () Bool)

(assert (=> b!6560812 (=> (not res!2692186) (not e!3971688))))

(assert (=> b!6560812 (= res!2692186 call!570649)))

(declare-fun b!6560813 () Bool)

(assert (=> b!6560813 (= e!3971686 e!3971687)))

(assert (=> b!6560813 (= c!1205568 ((_ is Union!16437) (reg!16766 (regOne!33386 r!7292))))))

(declare-fun b!6560814 () Bool)

(assert (=> b!6560814 (= e!3971688 call!570647)))

(assert (= (and d!2058452 (not res!2692189)) b!6560810))

(assert (= (and b!6560810 c!1205567) b!6560809))

(assert (= (and b!6560810 (not c!1205567)) b!6560813))

(assert (= (and b!6560809 res!2692188) b!6560806))

(assert (= (and b!6560813 c!1205568) b!6560808))

(assert (= (and b!6560813 (not c!1205568)) b!6560807))

(assert (= (and b!6560808 res!2692187) b!6560811))

(assert (= (and b!6560807 (not res!2692190)) b!6560812))

(assert (= (and b!6560812 res!2692186) b!6560814))

(assert (= (or b!6560811 b!6560814) bm!570643))

(assert (= (or b!6560808 b!6560812) bm!570644))

(assert (= (or b!6560806 bm!570643) bm!570642))

(declare-fun m!7342902 () Bool)

(assert (=> bm!570642 m!7342902))

(declare-fun m!7342904 () Bool)

(assert (=> b!6560809 m!7342904))

(declare-fun m!7342906 () Bool)

(assert (=> bm!570644 m!7342906))

(assert (=> b!6559709 d!2058452))

(declare-fun b!6560815 () Bool)

(declare-fun e!3971690 () Bool)

(assert (=> b!6560815 (= e!3971690 (matchR!8620 lt!2405790 (_1!36719 lt!2405757)))))

(declare-fun b!6560816 () Bool)

(declare-fun e!3971694 () Bool)

(declare-fun lt!2406018 () Option!16328)

(assert (=> b!6560816 (= e!3971694 (= (++!14576 (_1!36719 (get!22737 lt!2406018)) (_2!36719 (get!22737 lt!2406018))) (_1!36719 lt!2405757)))))

(declare-fun b!6560817 () Bool)

(declare-fun e!3971692 () Option!16328)

(assert (=> b!6560817 (= e!3971692 None!16327)))

(declare-fun b!6560818 () Bool)

(declare-fun e!3971691 () Bool)

(assert (=> b!6560818 (= e!3971691 (not (isDefined!13031 lt!2406018)))))

(declare-fun b!6560819 () Bool)

(declare-fun res!2692193 () Bool)

(assert (=> b!6560819 (=> (not res!2692193) (not e!3971694))))

(assert (=> b!6560819 (= res!2692193 (matchR!8620 (reg!16766 (regOne!33386 r!7292)) (_1!36719 (get!22737 lt!2406018))))))

(declare-fun b!6560820 () Bool)

(declare-fun lt!2406017 () Unit!159083)

(declare-fun lt!2406016 () Unit!159083)

(assert (=> b!6560820 (= lt!2406017 lt!2406016)))

(assert (=> b!6560820 (= (++!14576 (++!14576 Nil!65486 (Cons!65486 (h!71934 (_1!36719 lt!2405757)) Nil!65486)) (t!379252 (_1!36719 lt!2405757))) (_1!36719 lt!2405757))))

(assert (=> b!6560820 (= lt!2406016 (lemmaMoveElementToOtherListKeepsConcatEq!2580 Nil!65486 (h!71934 (_1!36719 lt!2405757)) (t!379252 (_1!36719 lt!2405757)) (_1!36719 lt!2405757)))))

(assert (=> b!6560820 (= e!3971692 (findConcatSeparation!2742 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (++!14576 Nil!65486 (Cons!65486 (h!71934 (_1!36719 lt!2405757)) Nil!65486)) (t!379252 (_1!36719 lt!2405757)) (_1!36719 lt!2405757)))))

(declare-fun d!2058454 () Bool)

(assert (=> d!2058454 e!3971691))

(declare-fun res!2692194 () Bool)

(assert (=> d!2058454 (=> res!2692194 e!3971691)))

(assert (=> d!2058454 (= res!2692194 e!3971694)))

(declare-fun res!2692192 () Bool)

(assert (=> d!2058454 (=> (not res!2692192) (not e!3971694))))

(assert (=> d!2058454 (= res!2692192 (isDefined!13031 lt!2406018))))

(declare-fun e!3971693 () Option!16328)

(assert (=> d!2058454 (= lt!2406018 e!3971693)))

(declare-fun c!1205569 () Bool)

(assert (=> d!2058454 (= c!1205569 e!3971690)))

(declare-fun res!2692195 () Bool)

(assert (=> d!2058454 (=> (not res!2692195) (not e!3971690))))

(assert (=> d!2058454 (= res!2692195 (matchR!8620 (reg!16766 (regOne!33386 r!7292)) Nil!65486))))

(assert (=> d!2058454 (validRegex!8173 (reg!16766 (regOne!33386 r!7292)))))

(assert (=> d!2058454 (= (findConcatSeparation!2742 (reg!16766 (regOne!33386 r!7292)) lt!2405790 Nil!65486 (_1!36719 lt!2405757) (_1!36719 lt!2405757)) lt!2406018)))

(declare-fun b!6560821 () Bool)

(assert (=> b!6560821 (= e!3971693 e!3971692)))

(declare-fun c!1205570 () Bool)

(assert (=> b!6560821 (= c!1205570 ((_ is Nil!65486) (_1!36719 lt!2405757)))))

(declare-fun b!6560822 () Bool)

(declare-fun res!2692191 () Bool)

(assert (=> b!6560822 (=> (not res!2692191) (not e!3971694))))

(assert (=> b!6560822 (= res!2692191 (matchR!8620 lt!2405790 (_2!36719 (get!22737 lt!2406018))))))

(declare-fun b!6560823 () Bool)

(assert (=> b!6560823 (= e!3971693 (Some!16327 (tuple2!66833 Nil!65486 (_1!36719 lt!2405757))))))

(assert (= (and d!2058454 res!2692195) b!6560815))

(assert (= (and d!2058454 c!1205569) b!6560823))

(assert (= (and d!2058454 (not c!1205569)) b!6560821))

(assert (= (and b!6560821 c!1205570) b!6560817))

(assert (= (and b!6560821 (not c!1205570)) b!6560820))

(assert (= (and d!2058454 res!2692192) b!6560819))

(assert (= (and b!6560819 res!2692193) b!6560822))

(assert (= (and b!6560822 res!2692191) b!6560816))

(assert (= (and d!2058454 (not res!2692194)) b!6560818))

(declare-fun m!7342908 () Bool)

(assert (=> b!6560820 m!7342908))

(assert (=> b!6560820 m!7342908))

(declare-fun m!7342910 () Bool)

(assert (=> b!6560820 m!7342910))

(declare-fun m!7342912 () Bool)

(assert (=> b!6560820 m!7342912))

(assert (=> b!6560820 m!7342908))

(declare-fun m!7342914 () Bool)

(assert (=> b!6560820 m!7342914))

(declare-fun m!7342916 () Bool)

(assert (=> b!6560816 m!7342916))

(declare-fun m!7342918 () Bool)

(assert (=> b!6560816 m!7342918))

(assert (=> b!6560822 m!7342916))

(declare-fun m!7342920 () Bool)

(assert (=> b!6560822 m!7342920))

(declare-fun m!7342922 () Bool)

(assert (=> d!2058454 m!7342922))

(declare-fun m!7342924 () Bool)

(assert (=> d!2058454 m!7342924))

(assert (=> d!2058454 m!7341828))

(assert (=> b!6560819 m!7342916))

(declare-fun m!7342926 () Bool)

(assert (=> b!6560819 m!7342926))

(assert (=> b!6560818 m!7342922))

(declare-fun m!7342928 () Bool)

(assert (=> b!6560815 m!7342928))

(assert (=> b!6559709 d!2058454))

(declare-fun d!2058456 () Bool)

(assert (=> d!2058456 (= (Exists!3507 lambda!364861) (choose!48921 lambda!364861))))

(declare-fun bs!1674520 () Bool)

(assert (= bs!1674520 d!2058456))

(declare-fun m!7342930 () Bool)

(assert (=> bs!1674520 m!7342930))

(assert (=> b!6559709 d!2058456))

(declare-fun bs!1674521 () Bool)

(declare-fun d!2058458 () Bool)

(assert (= bs!1674521 (and d!2058458 d!2058398)))

(declare-fun lambda!364953 () Int)

(assert (=> bs!1674521 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364953 lambda!364950))))

(declare-fun bs!1674522 () Bool)

(assert (= bs!1674522 (and d!2058458 d!2058404)))

(assert (=> bs!1674522 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364953 lambda!364951))))

(declare-fun bs!1674523 () Bool)

(assert (= bs!1674523 (and d!2058458 b!6559726)))

(assert (=> bs!1674523 (not (= lambda!364953 lambda!364854))))

(assert (=> bs!1674522 (not (= lambda!364953 lambda!364952))))

(declare-fun bs!1674524 () Bool)

(assert (= bs!1674524 (and d!2058458 b!6560559)))

(assert (=> bs!1674524 (not (= lambda!364953 lambda!364940))))

(declare-fun bs!1674525 () Bool)

(assert (= bs!1674525 (and d!2058458 b!6559709)))

(assert (=> bs!1674525 (= lambda!364953 lambda!364860)))

(declare-fun bs!1674526 () Bool)

(assert (= bs!1674526 (and d!2058458 b!6560722)))

(assert (=> bs!1674526 (not (= lambda!364953 lambda!364949))))

(declare-fun bs!1674527 () Bool)

(assert (= bs!1674527 (and d!2058458 b!6559711)))

(assert (=> bs!1674527 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364953 lambda!364858))))

(declare-fun bs!1674528 () Bool)

(assert (= bs!1674528 (and d!2058458 d!2058162)))

(assert (=> bs!1674528 (not (= lambda!364953 lambda!364903))))

(assert (=> bs!1674523 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364953 lambda!364853))))

(declare-fun bs!1674529 () Bool)

(assert (= bs!1674529 (and d!2058458 b!6560558)))

(assert (=> bs!1674529 (not (= lambda!364953 lambda!364941))))

(assert (=> bs!1674528 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364953 lambda!364898))))

(declare-fun bs!1674530 () Bool)

(assert (= bs!1674530 (and d!2058458 d!2058152)))

(assert (=> bs!1674530 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364953 lambda!364892))))

(declare-fun bs!1674531 () Bool)

(assert (= bs!1674531 (and d!2058458 b!6560151)))

(assert (=> bs!1674531 (not (= lambda!364953 lambda!364910))))

(declare-fun bs!1674532 () Bool)

(assert (= bs!1674532 (and d!2058458 b!6560152)))

(assert (=> bs!1674532 (not (= lambda!364953 lambda!364909))))

(assert (=> bs!1674525 (not (= lambda!364953 lambda!364861))))

(assert (=> bs!1674527 (not (= lambda!364953 lambda!364859))))

(declare-fun bs!1674533 () Bool)

(assert (= bs!1674533 (and d!2058458 b!6560723)))

(assert (=> bs!1674533 (not (= lambda!364953 lambda!364948))))

(assert (=> d!2058458 true))

(assert (=> d!2058458 true))

(assert (=> d!2058458 true))

(declare-fun lambda!364954 () Int)

(assert (=> bs!1674521 (not (= lambda!364954 lambda!364950))))

(assert (=> bs!1674522 (not (= lambda!364954 lambda!364951))))

(assert (=> bs!1674523 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364954 lambda!364854))))

(assert (=> bs!1674522 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364954 lambda!364952))))

(assert (=> bs!1674524 (not (= lambda!364954 lambda!364940))))

(assert (=> bs!1674525 (not (= lambda!364954 lambda!364860))))

(assert (=> bs!1674526 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 lt!2405787)) (= lt!2405790 (regTwo!33386 lt!2405787))) (= lambda!364954 lambda!364949))))

(assert (=> bs!1674528 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364954 lambda!364903))))

(assert (=> bs!1674523 (not (= lambda!364954 lambda!364853))))

(assert (=> bs!1674529 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364954 lambda!364941))))

(assert (=> bs!1674528 (not (= lambda!364954 lambda!364898))))

(assert (=> bs!1674530 (not (= lambda!364954 lambda!364892))))

(assert (=> bs!1674531 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 lt!2405801)) (= lt!2405790 (regTwo!33386 lt!2405801))) (= lambda!364954 lambda!364910))))

(assert (=> bs!1674527 (not (= lambda!364954 lambda!364858))))

(declare-fun bs!1674534 () Bool)

(assert (= bs!1674534 d!2058458))

(assert (=> bs!1674534 (not (= lambda!364954 lambda!364953))))

(assert (=> bs!1674532 (not (= lambda!364954 lambda!364909))))

(assert (=> bs!1674525 (= lambda!364954 lambda!364861)))

(assert (=> bs!1674527 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364954 lambda!364859))))

(assert (=> bs!1674533 (not (= lambda!364954 lambda!364948))))

(assert (=> d!2058458 true))

(assert (=> d!2058458 true))

(assert (=> d!2058458 true))

(assert (=> d!2058458 (= (Exists!3507 lambda!364953) (Exists!3507 lambda!364954))))

(declare-fun lt!2406019 () Unit!159083)

(assert (=> d!2058458 (= lt!2406019 (choose!48924 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (_1!36719 lt!2405757)))))

(assert (=> d!2058458 (validRegex!8173 (reg!16766 (regOne!33386 r!7292)))))

(assert (=> d!2058458 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2044 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (_1!36719 lt!2405757)) lt!2406019)))

(declare-fun m!7342932 () Bool)

(assert (=> bs!1674534 m!7342932))

(declare-fun m!7342934 () Bool)

(assert (=> bs!1674534 m!7342934))

(declare-fun m!7342936 () Bool)

(assert (=> bs!1674534 m!7342936))

(assert (=> bs!1674534 m!7341828))

(assert (=> b!6559709 d!2058458))

(declare-fun d!2058460 () Bool)

(assert (=> d!2058460 (= (isDefined!13031 (findConcatSeparation!2742 (reg!16766 (regOne!33386 r!7292)) lt!2405790 Nil!65486 (_1!36719 lt!2405757) (_1!36719 lt!2405757))) (not (isEmpty!37730 (findConcatSeparation!2742 (reg!16766 (regOne!33386 r!7292)) lt!2405790 Nil!65486 (_1!36719 lt!2405757) (_1!36719 lt!2405757)))))))

(declare-fun bs!1674535 () Bool)

(assert (= bs!1674535 d!2058460))

(assert (=> bs!1674535 m!7341824))

(declare-fun m!7342938 () Bool)

(assert (=> bs!1674535 m!7342938))

(assert (=> b!6559709 d!2058460))

(declare-fun bs!1674536 () Bool)

(declare-fun b!6560834 () Bool)

(assert (= bs!1674536 (and b!6560834 d!2058398)))

(declare-fun lambda!364955 () Int)

(assert (=> bs!1674536 (not (= lambda!364955 lambda!364950))))

(declare-fun bs!1674537 () Bool)

(assert (= bs!1674537 (and b!6560834 d!2058404)))

(assert (=> bs!1674537 (not (= lambda!364955 lambda!364951))))

(declare-fun bs!1674538 () Bool)

(assert (= bs!1674538 (and b!6560834 b!6559726)))

(assert (=> bs!1674538 (not (= lambda!364955 lambda!364854))))

(assert (=> bs!1674537 (not (= lambda!364955 lambda!364952))))

(declare-fun bs!1674539 () Bool)

(assert (= bs!1674539 (and b!6560834 b!6560559)))

(assert (=> bs!1674539 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 lt!2405774) (reg!16766 r!7292)) (= lt!2405774 r!7292)) (= lambda!364955 lambda!364940))))

(declare-fun bs!1674540 () Bool)

(assert (= bs!1674540 (and b!6560834 b!6559709)))

(assert (=> bs!1674540 (not (= lambda!364955 lambda!364860))))

(declare-fun bs!1674541 () Bool)

(assert (= bs!1674541 (and b!6560834 d!2058458)))

(assert (=> bs!1674541 (not (= lambda!364955 lambda!364954))))

(declare-fun bs!1674542 () Bool)

(assert (= bs!1674542 (and b!6560834 b!6560722)))

(assert (=> bs!1674542 (not (= lambda!364955 lambda!364949))))

(declare-fun bs!1674543 () Bool)

(assert (= bs!1674543 (and b!6560834 d!2058162)))

(assert (=> bs!1674543 (not (= lambda!364955 lambda!364903))))

(assert (=> bs!1674538 (not (= lambda!364955 lambda!364853))))

(declare-fun bs!1674544 () Bool)

(assert (= bs!1674544 (and b!6560834 b!6560558)))

(assert (=> bs!1674544 (not (= lambda!364955 lambda!364941))))

(assert (=> bs!1674543 (not (= lambda!364955 lambda!364898))))

(declare-fun bs!1674545 () Bool)

(assert (= bs!1674545 (and b!6560834 d!2058152)))

(assert (=> bs!1674545 (not (= lambda!364955 lambda!364892))))

(declare-fun bs!1674546 () Bool)

(assert (= bs!1674546 (and b!6560834 b!6560151)))

(assert (=> bs!1674546 (not (= lambda!364955 lambda!364910))))

(declare-fun bs!1674547 () Bool)

(assert (= bs!1674547 (and b!6560834 b!6559711)))

(assert (=> bs!1674547 (not (= lambda!364955 lambda!364858))))

(assert (=> bs!1674541 (not (= lambda!364955 lambda!364953))))

(declare-fun bs!1674548 () Bool)

(assert (= bs!1674548 (and b!6560834 b!6560152)))

(assert (=> bs!1674548 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 lt!2405774) (reg!16766 lt!2405801)) (= lt!2405774 lt!2405801)) (= lambda!364955 lambda!364909))))

(assert (=> bs!1674540 (not (= lambda!364955 lambda!364861))))

(assert (=> bs!1674547 (not (= lambda!364955 lambda!364859))))

(declare-fun bs!1674549 () Bool)

(assert (= bs!1674549 (and b!6560834 b!6560723)))

(assert (=> bs!1674549 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 lt!2405774) (reg!16766 lt!2405787)) (= lt!2405774 lt!2405787)) (= lambda!364955 lambda!364948))))

(assert (=> b!6560834 true))

(assert (=> b!6560834 true))

(declare-fun bs!1674550 () Bool)

(declare-fun b!6560833 () Bool)

(assert (= bs!1674550 (and b!6560833 d!2058398)))

(declare-fun lambda!364956 () Int)

(assert (=> bs!1674550 (not (= lambda!364956 lambda!364950))))

(declare-fun bs!1674551 () Bool)

(assert (= bs!1674551 (and b!6560833 d!2058404)))

(assert (=> bs!1674551 (not (= lambda!364956 lambda!364951))))

(declare-fun bs!1674552 () Bool)

(assert (= bs!1674552 (and b!6560833 b!6559726)))

(assert (=> bs!1674552 (= (and (= (_1!36719 lt!2405757) s!2326) (= (regOne!33386 lt!2405774) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405774) (regTwo!33386 r!7292))) (= lambda!364956 lambda!364854))))

(assert (=> bs!1674551 (= (and (= (_1!36719 lt!2405757) s!2326) (= (regOne!33386 lt!2405774) lt!2405774) (= (regTwo!33386 lt!2405774) (regTwo!33386 r!7292))) (= lambda!364956 lambda!364952))))

(declare-fun bs!1674553 () Bool)

(assert (= bs!1674553 (and b!6560833 b!6560559)))

(assert (=> bs!1674553 (not (= lambda!364956 lambda!364940))))

(declare-fun bs!1674554 () Bool)

(assert (= bs!1674554 (and b!6560833 b!6559709)))

(assert (=> bs!1674554 (not (= lambda!364956 lambda!364860))))

(declare-fun bs!1674555 () Bool)

(assert (= bs!1674555 (and b!6560833 d!2058458)))

(assert (=> bs!1674555 (= (and (= (regOne!33386 lt!2405774) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 lt!2405774) lt!2405790)) (= lambda!364956 lambda!364954))))

(declare-fun bs!1674556 () Bool)

(assert (= bs!1674556 (and b!6560833 d!2058162)))

(assert (=> bs!1674556 (= (and (= (_1!36719 lt!2405757) s!2326) (= (regOne!33386 lt!2405774) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405774) (regTwo!33386 r!7292))) (= lambda!364956 lambda!364903))))

(assert (=> bs!1674552 (not (= lambda!364956 lambda!364853))))

(declare-fun bs!1674557 () Bool)

(assert (= bs!1674557 (and b!6560833 b!6560558)))

(assert (=> bs!1674557 (= (and (= (_1!36719 lt!2405757) s!2326) (= (regOne!33386 lt!2405774) (regOne!33386 r!7292)) (= (regTwo!33386 lt!2405774) (regTwo!33386 r!7292))) (= lambda!364956 lambda!364941))))

(assert (=> bs!1674556 (not (= lambda!364956 lambda!364898))))

(declare-fun bs!1674558 () Bool)

(assert (= bs!1674558 (and b!6560833 d!2058152)))

(assert (=> bs!1674558 (not (= lambda!364956 lambda!364892))))

(declare-fun bs!1674559 () Bool)

(assert (= bs!1674559 (and b!6560833 b!6560151)))

(assert (=> bs!1674559 (= (and (= (_1!36719 lt!2405757) s!2326) (= (regOne!33386 lt!2405774) (regOne!33386 lt!2405801)) (= (regTwo!33386 lt!2405774) (regTwo!33386 lt!2405801))) (= lambda!364956 lambda!364910))))

(declare-fun bs!1674560 () Bool)

(assert (= bs!1674560 (and b!6560833 b!6560834)))

(assert (=> bs!1674560 (not (= lambda!364956 lambda!364955))))

(declare-fun bs!1674561 () Bool)

(assert (= bs!1674561 (and b!6560833 b!6560722)))

(assert (=> bs!1674561 (= (and (= (_1!36719 lt!2405757) s!2326) (= (regOne!33386 lt!2405774) (regOne!33386 lt!2405787)) (= (regTwo!33386 lt!2405774) (regTwo!33386 lt!2405787))) (= lambda!364956 lambda!364949))))

(declare-fun bs!1674562 () Bool)

(assert (= bs!1674562 (and b!6560833 b!6559711)))

(assert (=> bs!1674562 (not (= lambda!364956 lambda!364858))))

(assert (=> bs!1674555 (not (= lambda!364956 lambda!364953))))

(declare-fun bs!1674563 () Bool)

(assert (= bs!1674563 (and b!6560833 b!6560152)))

(assert (=> bs!1674563 (not (= lambda!364956 lambda!364909))))

(assert (=> bs!1674554 (= (and (= (regOne!33386 lt!2405774) (reg!16766 (regOne!33386 r!7292))) (= (regTwo!33386 lt!2405774) lt!2405790)) (= lambda!364956 lambda!364861))))

(assert (=> bs!1674562 (= (and (= (_1!36719 lt!2405757) s!2326) (= (regOne!33386 lt!2405774) lt!2405774) (= (regTwo!33386 lt!2405774) (regTwo!33386 r!7292))) (= lambda!364956 lambda!364859))))

(declare-fun bs!1674564 () Bool)

(assert (= bs!1674564 (and b!6560833 b!6560723)))

(assert (=> bs!1674564 (not (= lambda!364956 lambda!364948))))

(assert (=> b!6560833 true))

(assert (=> b!6560833 true))

(declare-fun b!6560824 () Bool)

(declare-fun c!1205572 () Bool)

(assert (=> b!6560824 (= c!1205572 ((_ is ElementMatch!16437) lt!2405774))))

(declare-fun e!3971699 () Bool)

(declare-fun e!3971701 () Bool)

(assert (=> b!6560824 (= e!3971699 e!3971701)))

(declare-fun bm!570645 () Bool)

(declare-fun call!570650 () Bool)

(assert (=> bm!570645 (= call!570650 (isEmpty!37729 (_1!36719 lt!2405757)))))

(declare-fun b!6560825 () Bool)

(declare-fun c!1205571 () Bool)

(assert (=> b!6560825 (= c!1205571 ((_ is Union!16437) lt!2405774))))

(declare-fun e!3971695 () Bool)

(assert (=> b!6560825 (= e!3971701 e!3971695)))

(declare-fun b!6560826 () Bool)

(declare-fun e!3971700 () Bool)

(assert (=> b!6560826 (= e!3971695 e!3971700)))

(declare-fun res!2692196 () Bool)

(assert (=> b!6560826 (= res!2692196 (matchRSpec!3538 (regOne!33387 lt!2405774) (_1!36719 lt!2405757)))))

(assert (=> b!6560826 (=> res!2692196 e!3971700)))

(declare-fun b!6560827 () Bool)

(assert (=> b!6560827 (= e!3971700 (matchRSpec!3538 (regTwo!33387 lt!2405774) (_1!36719 lt!2405757)))))

(declare-fun bm!570646 () Bool)

(declare-fun call!570651 () Bool)

(declare-fun c!1205573 () Bool)

(assert (=> bm!570646 (= call!570651 (Exists!3507 (ite c!1205573 lambda!364955 lambda!364956)))))

(declare-fun b!6560828 () Bool)

(declare-fun e!3971696 () Bool)

(assert (=> b!6560828 (= e!3971696 call!570650)))

(declare-fun b!6560829 () Bool)

(declare-fun res!2692198 () Bool)

(declare-fun e!3971697 () Bool)

(assert (=> b!6560829 (=> res!2692198 e!3971697)))

(assert (=> b!6560829 (= res!2692198 call!570650)))

(declare-fun e!3971698 () Bool)

(assert (=> b!6560829 (= e!3971698 e!3971697)))

(declare-fun b!6560830 () Bool)

(assert (=> b!6560830 (= e!3971695 e!3971698)))

(assert (=> b!6560830 (= c!1205573 ((_ is Star!16437) lt!2405774))))

(declare-fun b!6560831 () Bool)

(assert (=> b!6560831 (= e!3971701 (= (_1!36719 lt!2405757) (Cons!65486 (c!1205274 lt!2405774) Nil!65486)))))

(declare-fun b!6560832 () Bool)

(assert (=> b!6560832 (= e!3971696 e!3971699)))

(declare-fun res!2692197 () Bool)

(assert (=> b!6560832 (= res!2692197 (not ((_ is EmptyLang!16437) lt!2405774)))))

(assert (=> b!6560832 (=> (not res!2692197) (not e!3971699))))

(declare-fun d!2058462 () Bool)

(declare-fun c!1205574 () Bool)

(assert (=> d!2058462 (= c!1205574 ((_ is EmptyExpr!16437) lt!2405774))))

(assert (=> d!2058462 (= (matchRSpec!3538 lt!2405774 (_1!36719 lt!2405757)) e!3971696)))

(assert (=> b!6560833 (= e!3971698 call!570651)))

(assert (=> b!6560834 (= e!3971697 call!570651)))

(assert (= (and d!2058462 c!1205574) b!6560828))

(assert (= (and d!2058462 (not c!1205574)) b!6560832))

(assert (= (and b!6560832 res!2692197) b!6560824))

(assert (= (and b!6560824 c!1205572) b!6560831))

(assert (= (and b!6560824 (not c!1205572)) b!6560825))

(assert (= (and b!6560825 c!1205571) b!6560826))

(assert (= (and b!6560825 (not c!1205571)) b!6560830))

(assert (= (and b!6560826 (not res!2692196)) b!6560827))

(assert (= (and b!6560830 c!1205573) b!6560829))

(assert (= (and b!6560830 (not c!1205573)) b!6560833))

(assert (= (and b!6560829 (not res!2692198)) b!6560834))

(assert (= (or b!6560834 b!6560833) bm!570646))

(assert (= (or b!6560828 b!6560829) bm!570645))

(assert (=> bm!570645 m!7342808))

(declare-fun m!7342940 () Bool)

(assert (=> b!6560826 m!7342940))

(declare-fun m!7342942 () Bool)

(assert (=> b!6560827 m!7342942))

(declare-fun m!7342944 () Bool)

(assert (=> bm!570646 m!7342944))

(assert (=> b!6559709 d!2058462))

(declare-fun bs!1674565 () Bool)

(declare-fun d!2058464 () Bool)

(assert (= bs!1674565 (and d!2058464 d!2058398)))

(declare-fun lambda!364957 () Int)

(assert (=> bs!1674565 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364957 lambda!364950))))

(declare-fun bs!1674566 () Bool)

(assert (= bs!1674566 (and d!2058464 d!2058404)))

(assert (=> bs!1674566 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364957 lambda!364951))))

(declare-fun bs!1674567 () Bool)

(assert (= bs!1674567 (and d!2058464 b!6560833)))

(assert (=> bs!1674567 (not (= lambda!364957 lambda!364956))))

(declare-fun bs!1674568 () Bool)

(assert (= bs!1674568 (and d!2058464 b!6559726)))

(assert (=> bs!1674568 (not (= lambda!364957 lambda!364854))))

(assert (=> bs!1674566 (not (= lambda!364957 lambda!364952))))

(declare-fun bs!1674569 () Bool)

(assert (= bs!1674569 (and d!2058464 b!6560559)))

(assert (=> bs!1674569 (not (= lambda!364957 lambda!364940))))

(declare-fun bs!1674570 () Bool)

(assert (= bs!1674570 (and d!2058464 b!6559709)))

(assert (=> bs!1674570 (= lambda!364957 lambda!364860)))

(declare-fun bs!1674571 () Bool)

(assert (= bs!1674571 (and d!2058464 d!2058458)))

(assert (=> bs!1674571 (not (= lambda!364957 lambda!364954))))

(declare-fun bs!1674572 () Bool)

(assert (= bs!1674572 (and d!2058464 d!2058162)))

(assert (=> bs!1674572 (not (= lambda!364957 lambda!364903))))

(assert (=> bs!1674568 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364957 lambda!364853))))

(declare-fun bs!1674573 () Bool)

(assert (= bs!1674573 (and d!2058464 b!6560558)))

(assert (=> bs!1674573 (not (= lambda!364957 lambda!364941))))

(assert (=> bs!1674572 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364957 lambda!364898))))

(declare-fun bs!1674574 () Bool)

(assert (= bs!1674574 (and d!2058464 d!2058152)))

(assert (=> bs!1674574 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) (regOne!33386 r!7292)) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364957 lambda!364892))))

(declare-fun bs!1674575 () Bool)

(assert (= bs!1674575 (and d!2058464 b!6560151)))

(assert (=> bs!1674575 (not (= lambda!364957 lambda!364910))))

(declare-fun bs!1674576 () Bool)

(assert (= bs!1674576 (and d!2058464 b!6560834)))

(assert (=> bs!1674576 (not (= lambda!364957 lambda!364955))))

(declare-fun bs!1674577 () Bool)

(assert (= bs!1674577 (and d!2058464 b!6560722)))

(assert (=> bs!1674577 (not (= lambda!364957 lambda!364949))))

(declare-fun bs!1674578 () Bool)

(assert (= bs!1674578 (and d!2058464 b!6559711)))

(assert (=> bs!1674578 (= (and (= (_1!36719 lt!2405757) s!2326) (= (reg!16766 (regOne!33386 r!7292)) lt!2405774) (= lt!2405790 (regTwo!33386 r!7292))) (= lambda!364957 lambda!364858))))

(assert (=> bs!1674571 (= lambda!364957 lambda!364953)))

(declare-fun bs!1674579 () Bool)

(assert (= bs!1674579 (and d!2058464 b!6560152)))

(assert (=> bs!1674579 (not (= lambda!364957 lambda!364909))))

(assert (=> bs!1674570 (not (= lambda!364957 lambda!364861))))

(assert (=> bs!1674578 (not (= lambda!364957 lambda!364859))))

(declare-fun bs!1674580 () Bool)

(assert (= bs!1674580 (and d!2058464 b!6560723)))

(assert (=> bs!1674580 (not (= lambda!364957 lambda!364948))))

(assert (=> d!2058464 true))

(assert (=> d!2058464 true))

(assert (=> d!2058464 true))

(assert (=> d!2058464 (= (isDefined!13031 (findConcatSeparation!2742 (reg!16766 (regOne!33386 r!7292)) lt!2405790 Nil!65486 (_1!36719 lt!2405757) (_1!36719 lt!2405757))) (Exists!3507 lambda!364957))))

(declare-fun lt!2406020 () Unit!159083)

(assert (=> d!2058464 (= lt!2406020 (choose!48922 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (_1!36719 lt!2405757)))))

(assert (=> d!2058464 (validRegex!8173 (reg!16766 (regOne!33386 r!7292)))))

(assert (=> d!2058464 (= (lemmaFindConcatSeparationEquivalentToExists!2506 (reg!16766 (regOne!33386 r!7292)) lt!2405790 (_1!36719 lt!2405757)) lt!2406020)))

(declare-fun bs!1674581 () Bool)

(assert (= bs!1674581 d!2058464))

(assert (=> bs!1674581 m!7341828))

(assert (=> bs!1674581 m!7341824))

(declare-fun m!7342946 () Bool)

(assert (=> bs!1674581 m!7342946))

(assert (=> bs!1674581 m!7341824))

(assert (=> bs!1674581 m!7341830))

(declare-fun m!7342948 () Bool)

(assert (=> bs!1674581 m!7342948))

(assert (=> b!6559709 d!2058464))

(declare-fun d!2058466 () Bool)

(assert (=> d!2058466 (= (Exists!3507 lambda!364860) (choose!48921 lambda!364860))))

(declare-fun bs!1674582 () Bool)

(assert (= bs!1674582 d!2058466))

(declare-fun m!7342950 () Bool)

(assert (=> bs!1674582 m!7342950))

(assert (=> b!6559709 d!2058466))

(declare-fun d!2058468 () Bool)

(assert (=> d!2058468 (= (matchR!8620 lt!2405774 (_1!36719 lt!2405757)) (matchRSpec!3538 lt!2405774 (_1!36719 lt!2405757)))))

(declare-fun lt!2406021 () Unit!159083)

(assert (=> d!2058468 (= lt!2406021 (choose!48927 lt!2405774 (_1!36719 lt!2405757)))))

(assert (=> d!2058468 (validRegex!8173 lt!2405774)))

(assert (=> d!2058468 (= (mainMatchTheorem!3538 lt!2405774 (_1!36719 lt!2405757)) lt!2406021)))

(declare-fun bs!1674583 () Bool)

(assert (= bs!1674583 d!2058468))

(assert (=> bs!1674583 m!7341696))

(assert (=> bs!1674583 m!7341822))

(declare-fun m!7342952 () Bool)

(assert (=> bs!1674583 m!7342952))

(assert (=> bs!1674583 m!7342710))

(assert (=> b!6559709 d!2058468))

(assert (=> b!6559690 d!2058266))

(declare-fun bs!1674584 () Bool)

(declare-fun d!2058470 () Bool)

(assert (= bs!1674584 (and d!2058470 b!6559722)))

(declare-fun lambda!364960 () Int)

(assert (=> bs!1674584 (= lambda!364960 lambda!364857)))

(declare-fun bs!1674585 () Bool)

(assert (= bs!1674585 (and d!2058470 d!2058132)))

(assert (=> bs!1674585 (= lambda!364960 lambda!364879)))

(declare-fun bs!1674586 () Bool)

(assert (= bs!1674586 (and d!2058470 d!2058270)))

(assert (=> bs!1674586 (= lambda!364960 lambda!364929)))

(declare-fun bs!1674587 () Bool)

(assert (= bs!1674587 (and d!2058470 d!2058360)))

(assert (=> bs!1674587 (= lambda!364960 lambda!364947)))

(declare-fun bs!1674588 () Bool)

(assert (= bs!1674588 (and d!2058470 d!2058126)))

(assert (=> bs!1674588 (= lambda!364960 lambda!364874)))

(declare-fun b!6560855 () Bool)

(declare-fun e!3971715 () Regex!16437)

(declare-fun e!3971718 () Regex!16437)

(assert (=> b!6560855 (= e!3971715 e!3971718)))

(declare-fun c!1205585 () Bool)

(assert (=> b!6560855 (= c!1205585 ((_ is Cons!65487) (unfocusZipperList!1858 zl!343)))))

(declare-fun e!3971717 () Bool)

(assert (=> d!2058470 e!3971717))

(declare-fun res!2692204 () Bool)

(assert (=> d!2058470 (=> (not res!2692204) (not e!3971717))))

(declare-fun lt!2406024 () Regex!16437)

(assert (=> d!2058470 (= res!2692204 (validRegex!8173 lt!2406024))))

(assert (=> d!2058470 (= lt!2406024 e!3971715)))

(declare-fun c!1205584 () Bool)

(declare-fun e!3971714 () Bool)

(assert (=> d!2058470 (= c!1205584 e!3971714)))

(declare-fun res!2692203 () Bool)

(assert (=> d!2058470 (=> (not res!2692203) (not e!3971714))))

(assert (=> d!2058470 (= res!2692203 ((_ is Cons!65487) (unfocusZipperList!1858 zl!343)))))

(assert (=> d!2058470 (forall!15608 (unfocusZipperList!1858 zl!343) lambda!364960)))

(assert (=> d!2058470 (= (generalisedUnion!2281 (unfocusZipperList!1858 zl!343)) lt!2406024)))

(declare-fun b!6560856 () Bool)

(assert (=> b!6560856 (= e!3971714 (isEmpty!37726 (t!379253 (unfocusZipperList!1858 zl!343))))))

(declare-fun b!6560857 () Bool)

(assert (=> b!6560857 (= e!3971718 EmptyLang!16437)))

(declare-fun b!6560858 () Bool)

(declare-fun e!3971716 () Bool)

(declare-fun e!3971719 () Bool)

(assert (=> b!6560858 (= e!3971716 e!3971719)))

(declare-fun c!1205586 () Bool)

(assert (=> b!6560858 (= c!1205586 (isEmpty!37726 (tail!12410 (unfocusZipperList!1858 zl!343))))))

(declare-fun b!6560859 () Bool)

(assert (=> b!6560859 (= e!3971717 e!3971716)))

(declare-fun c!1205583 () Bool)

(assert (=> b!6560859 (= c!1205583 (isEmpty!37726 (unfocusZipperList!1858 zl!343)))))

(declare-fun b!6560860 () Bool)

(declare-fun isEmptyLang!1824 (Regex!16437) Bool)

(assert (=> b!6560860 (= e!3971716 (isEmptyLang!1824 lt!2406024))))

(declare-fun b!6560861 () Bool)

(assert (=> b!6560861 (= e!3971715 (h!71935 (unfocusZipperList!1858 zl!343)))))

(declare-fun b!6560862 () Bool)

(assert (=> b!6560862 (= e!3971719 (= lt!2406024 (head!13325 (unfocusZipperList!1858 zl!343))))))

(declare-fun b!6560863 () Bool)

(declare-fun isUnion!1254 (Regex!16437) Bool)

(assert (=> b!6560863 (= e!3971719 (isUnion!1254 lt!2406024))))

(declare-fun b!6560864 () Bool)

(assert (=> b!6560864 (= e!3971718 (Union!16437 (h!71935 (unfocusZipperList!1858 zl!343)) (generalisedUnion!2281 (t!379253 (unfocusZipperList!1858 zl!343)))))))

(assert (= (and d!2058470 res!2692203) b!6560856))

(assert (= (and d!2058470 c!1205584) b!6560861))

(assert (= (and d!2058470 (not c!1205584)) b!6560855))

(assert (= (and b!6560855 c!1205585) b!6560864))

(assert (= (and b!6560855 (not c!1205585)) b!6560857))

(assert (= (and d!2058470 res!2692204) b!6560859))

(assert (= (and b!6560859 c!1205583) b!6560860))

(assert (= (and b!6560859 (not c!1205583)) b!6560858))

(assert (= (and b!6560858 c!1205586) b!6560862))

(assert (= (and b!6560858 (not c!1205586)) b!6560863))

(declare-fun m!7342954 () Bool)

(assert (=> b!6560860 m!7342954))

(assert (=> b!6560858 m!7341794))

(declare-fun m!7342956 () Bool)

(assert (=> b!6560858 m!7342956))

(assert (=> b!6560858 m!7342956))

(declare-fun m!7342958 () Bool)

(assert (=> b!6560858 m!7342958))

(assert (=> b!6560859 m!7341794))

(declare-fun m!7342960 () Bool)

(assert (=> b!6560859 m!7342960))

(declare-fun m!7342962 () Bool)

(assert (=> b!6560856 m!7342962))

(assert (=> b!6560862 m!7341794))

(declare-fun m!7342964 () Bool)

(assert (=> b!6560862 m!7342964))

(declare-fun m!7342966 () Bool)

(assert (=> d!2058470 m!7342966))

(assert (=> d!2058470 m!7341794))

(declare-fun m!7342968 () Bool)

(assert (=> d!2058470 m!7342968))

(declare-fun m!7342970 () Bool)

(assert (=> b!6560864 m!7342970))

(declare-fun m!7342972 () Bool)

(assert (=> b!6560863 m!7342972))

(assert (=> b!6559729 d!2058470))

(declare-fun bs!1674589 () Bool)

(declare-fun d!2058472 () Bool)

(assert (= bs!1674589 (and d!2058472 b!6559722)))

(declare-fun lambda!364963 () Int)

(assert (=> bs!1674589 (= lambda!364963 lambda!364857)))

(declare-fun bs!1674590 () Bool)

(assert (= bs!1674590 (and d!2058472 d!2058470)))

(assert (=> bs!1674590 (= lambda!364963 lambda!364960)))

(declare-fun bs!1674591 () Bool)

(assert (= bs!1674591 (and d!2058472 d!2058132)))

(assert (=> bs!1674591 (= lambda!364963 lambda!364879)))

(declare-fun bs!1674592 () Bool)

(assert (= bs!1674592 (and d!2058472 d!2058270)))

(assert (=> bs!1674592 (= lambda!364963 lambda!364929)))

(declare-fun bs!1674593 () Bool)

(assert (= bs!1674593 (and d!2058472 d!2058360)))

(assert (=> bs!1674593 (= lambda!364963 lambda!364947)))

(declare-fun bs!1674594 () Bool)

(assert (= bs!1674594 (and d!2058472 d!2058126)))

(assert (=> bs!1674594 (= lambda!364963 lambda!364874)))

(declare-fun lt!2406027 () List!65611)

(assert (=> d!2058472 (forall!15608 lt!2406027 lambda!364963)))

(declare-fun e!3971722 () List!65611)

(assert (=> d!2058472 (= lt!2406027 e!3971722)))

(declare-fun c!1205589 () Bool)

(assert (=> d!2058472 (= c!1205589 ((_ is Cons!65488) zl!343))))

(assert (=> d!2058472 (= (unfocusZipperList!1858 zl!343) lt!2406027)))

(declare-fun b!6560869 () Bool)

(assert (=> b!6560869 (= e!3971722 (Cons!65487 (generalisedConcat!2034 (exprs!6321 (h!71936 zl!343))) (unfocusZipperList!1858 (t!379254 zl!343))))))

(declare-fun b!6560870 () Bool)

(assert (=> b!6560870 (= e!3971722 Nil!65487)))

(assert (= (and d!2058472 c!1205589) b!6560869))

(assert (= (and d!2058472 (not c!1205589)) b!6560870))

(declare-fun m!7342974 () Bool)

(assert (=> d!2058472 m!7342974))

(assert (=> b!6560869 m!7341746))

(declare-fun m!7342976 () Bool)

(assert (=> b!6560869 m!7342976))

(assert (=> b!6559729 d!2058472))

(declare-fun d!2058474 () Bool)

(declare-fun c!1205590 () Bool)

(assert (=> d!2058474 (= c!1205590 (isEmpty!37729 (_2!36719 lt!2405802)))))

(declare-fun e!3971723 () Bool)

(assert (=> d!2058474 (= (matchZipper!2449 lt!2405758 (_2!36719 lt!2405802)) e!3971723)))

(declare-fun b!6560871 () Bool)

(assert (=> b!6560871 (= e!3971723 (nullableZipper!2181 lt!2405758))))

(declare-fun b!6560872 () Bool)

(assert (=> b!6560872 (= e!3971723 (matchZipper!2449 (derivationStepZipper!2403 lt!2405758 (head!13324 (_2!36719 lt!2405802))) (tail!12409 (_2!36719 lt!2405802))))))

(assert (= (and d!2058474 c!1205590) b!6560871))

(assert (= (and d!2058474 (not c!1205590)) b!6560872))

(assert (=> d!2058474 m!7342752))

(declare-fun m!7342978 () Bool)

(assert (=> b!6560871 m!7342978))

(assert (=> b!6560872 m!7342760))

(assert (=> b!6560872 m!7342760))

(declare-fun m!7342980 () Bool)

(assert (=> b!6560872 m!7342980))

(assert (=> b!6560872 m!7342756))

(assert (=> b!6560872 m!7342980))

(assert (=> b!6560872 m!7342756))

(declare-fun m!7342982 () Bool)

(assert (=> b!6560872 m!7342982))

(assert (=> b!6559708 d!2058474))

(declare-fun b!6560880 () Bool)

(declare-fun e!3971729 () Bool)

(declare-fun tp!1812534 () Bool)

(assert (=> b!6560880 (= e!3971729 tp!1812534)))

(declare-fun b!6560879 () Bool)

(declare-fun tp!1812535 () Bool)

(declare-fun e!3971728 () Bool)

(assert (=> b!6560879 (= e!3971728 (and (inv!84339 (h!71936 (t!379254 zl!343))) e!3971729 tp!1812535))))

(assert (=> b!6559717 (= tp!1812464 e!3971728)))

(assert (= b!6560879 b!6560880))

(assert (= (and b!6559717 ((_ is Cons!65488) (t!379254 zl!343))) b!6560879))

(declare-fun m!7342984 () Bool)

(assert (=> b!6560879 m!7342984))

(declare-fun b!6560885 () Bool)

(declare-fun e!3971732 () Bool)

(declare-fun tp!1812538 () Bool)

(assert (=> b!6560885 (= e!3971732 (and tp_is_empty!42127 tp!1812538))))

(assert (=> b!6559712 (= tp!1812467 e!3971732)))

(assert (= (and b!6559712 ((_ is Cons!65486) (t!379252 s!2326))) b!6560885))

(declare-fun b!6560890 () Bool)

(declare-fun e!3971735 () Bool)

(declare-fun tp!1812543 () Bool)

(declare-fun tp!1812544 () Bool)

(assert (=> b!6560890 (= e!3971735 (and tp!1812543 tp!1812544))))

(assert (=> b!6559727 (= tp!1812462 e!3971735)))

(assert (= (and b!6559727 ((_ is Cons!65487) (exprs!6321 setElem!44778))) b!6560890))

(declare-fun b!6560904 () Bool)

(declare-fun e!3971738 () Bool)

(declare-fun tp!1812556 () Bool)

(declare-fun tp!1812557 () Bool)

(assert (=> b!6560904 (= e!3971738 (and tp!1812556 tp!1812557))))

(declare-fun b!6560902 () Bool)

(declare-fun tp!1812558 () Bool)

(declare-fun tp!1812555 () Bool)

(assert (=> b!6560902 (= e!3971738 (and tp!1812558 tp!1812555))))

(declare-fun b!6560901 () Bool)

(assert (=> b!6560901 (= e!3971738 tp_is_empty!42127)))

(declare-fun b!6560903 () Bool)

(declare-fun tp!1812559 () Bool)

(assert (=> b!6560903 (= e!3971738 tp!1812559)))

(assert (=> b!6559697 (= tp!1812469 e!3971738)))

(assert (= (and b!6559697 ((_ is ElementMatch!16437) (regOne!33386 r!7292))) b!6560901))

(assert (= (and b!6559697 ((_ is Concat!25282) (regOne!33386 r!7292))) b!6560902))

(assert (= (and b!6559697 ((_ is Star!16437) (regOne!33386 r!7292))) b!6560903))

(assert (= (and b!6559697 ((_ is Union!16437) (regOne!33386 r!7292))) b!6560904))

(declare-fun b!6560908 () Bool)

(declare-fun e!3971739 () Bool)

(declare-fun tp!1812561 () Bool)

(declare-fun tp!1812562 () Bool)

(assert (=> b!6560908 (= e!3971739 (and tp!1812561 tp!1812562))))

(declare-fun b!6560906 () Bool)

(declare-fun tp!1812563 () Bool)

(declare-fun tp!1812560 () Bool)

(assert (=> b!6560906 (= e!3971739 (and tp!1812563 tp!1812560))))

(declare-fun b!6560905 () Bool)

(assert (=> b!6560905 (= e!3971739 tp_is_empty!42127)))

(declare-fun b!6560907 () Bool)

(declare-fun tp!1812564 () Bool)

(assert (=> b!6560907 (= e!3971739 tp!1812564)))

(assert (=> b!6559697 (= tp!1812465 e!3971739)))

(assert (= (and b!6559697 ((_ is ElementMatch!16437) (regTwo!33386 r!7292))) b!6560905))

(assert (= (and b!6559697 ((_ is Concat!25282) (regTwo!33386 r!7292))) b!6560906))

(assert (= (and b!6559697 ((_ is Star!16437) (regTwo!33386 r!7292))) b!6560907))

(assert (= (and b!6559697 ((_ is Union!16437) (regTwo!33386 r!7292))) b!6560908))

(declare-fun condSetEmpty!44784 () Bool)

(assert (=> setNonEmpty!44778 (= condSetEmpty!44784 (= setRest!44778 ((as const (Array Context!11642 Bool)) false)))))

(declare-fun setRes!44784 () Bool)

(assert (=> setNonEmpty!44778 (= tp!1812468 setRes!44784)))

(declare-fun setIsEmpty!44784 () Bool)

(assert (=> setIsEmpty!44784 setRes!44784))

(declare-fun setElem!44784 () Context!11642)

(declare-fun e!3971742 () Bool)

(declare-fun setNonEmpty!44784 () Bool)

(declare-fun tp!1812569 () Bool)

(assert (=> setNonEmpty!44784 (= setRes!44784 (and tp!1812569 (inv!84339 setElem!44784) e!3971742))))

(declare-fun setRest!44784 () (InoxSet Context!11642))

(assert (=> setNonEmpty!44784 (= setRest!44778 ((_ map or) (store ((as const (Array Context!11642 Bool)) false) setElem!44784 true) setRest!44784))))

(declare-fun b!6560913 () Bool)

(declare-fun tp!1812570 () Bool)

(assert (=> b!6560913 (= e!3971742 tp!1812570)))

(assert (= (and setNonEmpty!44778 condSetEmpty!44784) setIsEmpty!44784))

(assert (= (and setNonEmpty!44778 (not condSetEmpty!44784)) setNonEmpty!44784))

(assert (= setNonEmpty!44784 b!6560913))

(declare-fun m!7342986 () Bool)

(assert (=> setNonEmpty!44784 m!7342986))

(declare-fun b!6560914 () Bool)

(declare-fun e!3971743 () Bool)

(declare-fun tp!1812571 () Bool)

(declare-fun tp!1812572 () Bool)

(assert (=> b!6560914 (= e!3971743 (and tp!1812571 tp!1812572))))

(assert (=> b!6559720 (= tp!1812471 e!3971743)))

(assert (= (and b!6559720 ((_ is Cons!65487) (exprs!6321 (h!71936 zl!343)))) b!6560914))

(declare-fun b!6560918 () Bool)

(declare-fun e!3971744 () Bool)

(declare-fun tp!1812574 () Bool)

(declare-fun tp!1812575 () Bool)

(assert (=> b!6560918 (= e!3971744 (and tp!1812574 tp!1812575))))

(declare-fun b!6560916 () Bool)

(declare-fun tp!1812576 () Bool)

(declare-fun tp!1812573 () Bool)

(assert (=> b!6560916 (= e!3971744 (and tp!1812576 tp!1812573))))

(declare-fun b!6560915 () Bool)

(assert (=> b!6560915 (= e!3971744 tp_is_empty!42127)))

(declare-fun b!6560917 () Bool)

(declare-fun tp!1812577 () Bool)

(assert (=> b!6560917 (= e!3971744 tp!1812577)))

(assert (=> b!6559699 (= tp!1812466 e!3971744)))

(assert (= (and b!6559699 ((_ is ElementMatch!16437) (reg!16766 r!7292))) b!6560915))

(assert (= (and b!6559699 ((_ is Concat!25282) (reg!16766 r!7292))) b!6560916))

(assert (= (and b!6559699 ((_ is Star!16437) (reg!16766 r!7292))) b!6560917))

(assert (= (and b!6559699 ((_ is Union!16437) (reg!16766 r!7292))) b!6560918))

(declare-fun b!6560922 () Bool)

(declare-fun e!3971745 () Bool)

(declare-fun tp!1812579 () Bool)

(declare-fun tp!1812580 () Bool)

(assert (=> b!6560922 (= e!3971745 (and tp!1812579 tp!1812580))))

(declare-fun b!6560920 () Bool)

(declare-fun tp!1812581 () Bool)

(declare-fun tp!1812578 () Bool)

(assert (=> b!6560920 (= e!3971745 (and tp!1812581 tp!1812578))))

(declare-fun b!6560919 () Bool)

(assert (=> b!6560919 (= e!3971745 tp_is_empty!42127)))

(declare-fun b!6560921 () Bool)

(declare-fun tp!1812582 () Bool)

(assert (=> b!6560921 (= e!3971745 tp!1812582)))

(assert (=> b!6559723 (= tp!1812470 e!3971745)))

(assert (= (and b!6559723 ((_ is ElementMatch!16437) (regOne!33387 r!7292))) b!6560919))

(assert (= (and b!6559723 ((_ is Concat!25282) (regOne!33387 r!7292))) b!6560920))

(assert (= (and b!6559723 ((_ is Star!16437) (regOne!33387 r!7292))) b!6560921))

(assert (= (and b!6559723 ((_ is Union!16437) (regOne!33387 r!7292))) b!6560922))

(declare-fun b!6560926 () Bool)

(declare-fun e!3971746 () Bool)

(declare-fun tp!1812584 () Bool)

(declare-fun tp!1812585 () Bool)

(assert (=> b!6560926 (= e!3971746 (and tp!1812584 tp!1812585))))

(declare-fun b!6560924 () Bool)

(declare-fun tp!1812586 () Bool)

(declare-fun tp!1812583 () Bool)

(assert (=> b!6560924 (= e!3971746 (and tp!1812586 tp!1812583))))

(declare-fun b!6560923 () Bool)

(assert (=> b!6560923 (= e!3971746 tp_is_empty!42127)))

(declare-fun b!6560925 () Bool)

(declare-fun tp!1812587 () Bool)

(assert (=> b!6560925 (= e!3971746 tp!1812587)))

(assert (=> b!6559723 (= tp!1812463 e!3971746)))

(assert (= (and b!6559723 ((_ is ElementMatch!16437) (regTwo!33387 r!7292))) b!6560923))

(assert (= (and b!6559723 ((_ is Concat!25282) (regTwo!33387 r!7292))) b!6560924))

(assert (= (and b!6559723 ((_ is Star!16437) (regTwo!33387 r!7292))) b!6560925))

(assert (= (and b!6559723 ((_ is Union!16437) (regTwo!33387 r!7292))) b!6560926))

(declare-fun b_lambda!248191 () Bool)

(assert (= b_lambda!248165 (or b!6559731 b_lambda!248191)))

(declare-fun bs!1674595 () Bool)

(declare-fun d!2058476 () Bool)

(assert (= bs!1674595 (and d!2058476 b!6559731)))

(assert (=> bs!1674595 (= (dynLambda!26046 lambda!364855 lt!2405765) (derivationStepZipperUp!1611 lt!2405765 (h!71934 s!2326)))))

(assert (=> bs!1674595 m!7341722))

(assert (=> d!2058258 d!2058476))

(declare-fun b_lambda!248193 () Bool)

(assert (= b_lambda!248189 (or b!6559731 b_lambda!248193)))

(declare-fun bs!1674596 () Bool)

(declare-fun d!2058478 () Bool)

(assert (= bs!1674596 (and d!2058478 b!6559731)))

(assert (=> bs!1674596 (= (dynLambda!26046 lambda!364855 (h!71936 zl!343)) (derivationStepZipperUp!1611 (h!71936 zl!343) (h!71934 s!2326)))))

(assert (=> bs!1674596 m!7341784))

(assert (=> d!2058442 d!2058478))

(declare-fun b_lambda!248195 () Bool)

(assert (= b_lambda!248187 (or b!6559731 b_lambda!248195)))

(declare-fun bs!1674597 () Bool)

(declare-fun d!2058480 () Bool)

(assert (= bs!1674597 (and d!2058480 b!6559731)))

(assert (=> bs!1674597 (= (dynLambda!26046 lambda!364855 lt!2405775) (derivationStepZipperUp!1611 lt!2405775 (h!71934 s!2326)))))

(assert (=> bs!1674597 m!7341814))

(assert (=> d!2058432 d!2058480))

(declare-fun b_lambda!248197 () Bool)

(assert (= b_lambda!248163 (or b!6559722 b_lambda!248197)))

(declare-fun bs!1674598 () Bool)

(declare-fun d!2058482 () Bool)

(assert (= bs!1674598 (and d!2058482 b!6559722)))

(declare-fun lt!2406028 () Unit!159083)

(assert (=> bs!1674598 (= lt!2406028 (lemmaConcatPreservesForall!410 (exprs!6321 lt!2405775) lt!2405792 lambda!364857))))

(assert (=> bs!1674598 (= (dynLambda!26044 lambda!364856 lt!2405775) (Context!11643 (++!14577 (exprs!6321 lt!2405775) lt!2405792)))))

(declare-fun m!7342988 () Bool)

(assert (=> bs!1674598 m!7342988))

(declare-fun m!7342990 () Bool)

(assert (=> bs!1674598 m!7342990))

(assert (=> d!2058210 d!2058482))

(declare-fun b_lambda!248199 () Bool)

(assert (= b_lambda!248185 (or b!6559731 b_lambda!248199)))

(declare-fun bs!1674599 () Bool)

(declare-fun d!2058484 () Bool)

(assert (= bs!1674599 (and d!2058484 b!6559731)))

(assert (=> bs!1674599 (= (dynLambda!26046 lambda!364855 lt!2405750) (derivationStepZipperUp!1611 lt!2405750 (h!71934 s!2326)))))

(assert (=> bs!1674599 m!7341802))

(assert (=> d!2058430 d!2058484))

(check-sat (not b!6560920) (not b_lambda!248199) (not b!6560020) (not b!6560493) (not b!6560653) (not b!6560601) (not d!2058136) (not d!2058454) (not d!2058134) (not b!6560767) (not b!6560863) (not d!2058372) (not bm!570608) (not b!6560647) (not b!6559981) tp_is_empty!42127 (not b!6560880) (not b!6560300) (not b!6560733) (not d!2058396) (not d!2058474) (not d!2058458) (not b!6560783) (not b!6560804) (not d!2058228) (not b!6560427) (not d!2058354) (not b!6560600) (not d!2058432) (not b!6560820) (not b!6560925) (not d!2058406) (not d!2058240) (not d!2058398) (not bm!570639) (not b!6560294) (not bm!570628) (not bm!570612) (not bs!1674598) (not b!6560907) (not b!6560903) (not bm!570627) (not b!6560906) (not d!2058258) (not bm!570567) (not b!6560705) (not d!2058126) (not d!2058422) (not b!6560869) (not bm!570555) (not bm!570625) (not b!6560795) (not d!2058466) (not d!2058412) (not b!6560429) (not b!6560552) (not b!6560019) (not b!6560856) (not bm!570610) (not setNonEmpty!44784) (not b!6560646) (not b!6560229) (not d!2058266) (not b!6560741) (not b!6560815) (not d!2058218) (not d!2058392) (not bm!570546) (not b!6559976) (not b!6560770) (not b!6560751) (not b!6560921) (not d!2058388) (not d!2058356) (not b!6560702) (not b!6560537) (not d!2058278) (not b!6560716) (not b!6560697) (not b!6559977) (not b!6560715) (not d!2058132) (not b!6560890) (not bm!570623) (not b!6560766) (not b!6560144) (not b!6560712) (not b!6560145) (not b!6560913) (not b!6560703) (not b!6560432) (not d!2058374) (not d!2058360) (not bm!570645) (not d!2058472) (not d!2058436) (not bm!570644) (not b!6560871) (not bm!570637) (not bs!1674596) (not b!6560743) (not b!6560226) (not b!6560775) (not b!6560363) (not b!6560729) (not d!2058420) (not b!6560924) (not b!6560809) (not d!2058464) (not b!6560918) (not b!6560758) (not d!2058380) (not d!2058260) (not b!6560285) (not bm!570632) (not d!2058220) (not b!6560860) (not b!6560671) (not b!6560292) (not b!6560816) (not d!2058468) (not b!6560778) (not b!6560864) (not b!6560827) (not b_lambda!248193) (not bm!570560) (not d!2058238) (not b!6560761) (not b!6560704) (not bm!570554) (not b!6560325) (not d!2058270) (not b!6560768) (not b!6560769) (not d!2058456) (not b!6560674) (not b!6560757) (not b!6560695) (not d!2058254) (not bm!570624) (not b_lambda!248195) (not bm!570611) (not d!2058242) (not b!6560755) (not b!6560364) (not b!6559979) (not b!6560670) (not bm!570548) (not d!2058196) (not b!6560862) (not d!2058318) (not b!6560433) (not b!6560682) (not bm!570633) (not b!6560301) (not b!6560819) (not b!6560744) (not b!6560610) (not d!2058210) (not b!6560299) (not bm!570626) (not bm!570634) (not b!6559974) (not b!6560650) (not d!2058438) (not b!6560730) (not b!6559835) (not d!2058294) (not bm!570631) (not d!2058400) (not d!2058404) (not b!6560302) (not d!2058206) (not b!6560708) (not d!2058244) (not d!2058230) (not b!6560914) (not b!6560024) (not bs!1674597) (not b!6560822) (not b!6560602) (not bm!570646) (not bm!570642) (not b!6560367) (not b!6560022) (not b!6560728) (not b!6560227) (not b!6560232) (not b!6559834) (not b!6560926) (not b!6560902) (not b!6560651) (not bs!1674599) (not d!2058170) (not b!6560236) (not b!6560603) (not b!6560328) (not b!6559920) (not bm!570641) (not b!6560773) (not bm!570630) (not b!6560023) (not b!6560885) (not b!6560672) (not b_lambda!248197) (not d!2058390) (not b!6560780) (not b!6560801) (not b!6560908) (not b!6560872) (not b!6560756) (not b!6560678) (not d!2058426) (not b!6560742) (not d!2058150) (not d!2058162) (not b!6560293) (not bm!570629) (not b!6560428) (not b!6560649) (not b!6560696) (not b!6560826) (not b!6560698) (not b!6559980) (not b!6560747) (not bm!570640) (not b!6560916) (not b!6560858) (not b!6559973) (not b!6560228) (not d!2058172) (not d!2058316) (not d!2058226) (not b!6560818) (not b!6560917) (not d!2058416) (not b!6560635) (not d!2058470) (not d!2058102) (not b!6560765) (not b!6560606) (not d!2058418) (not b!6560551) (not d!2058442) (not d!2058460) (not b!6560785) (not b!6560286) (not d!2058430) (not b!6560026) (not b!6560727) (not d!2058414) (not b!6560879) (not d!2058428) (not b!6560494) (not b!6560430) (not b_lambda!248191) (not bm!570613) (not d!2058402) (not d!2058272) (not b!6560788) (not d!2058368) (not b!6560737) (not d!2058446) (not b!6560859) (not d!2058152) (not bs!1674595) (not b!6560904) (not d!2058408) (not b!6560922) (not d!2058276))
(check-sat)
