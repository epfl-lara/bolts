; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!654720 () Bool)

(assert start!654720)

(declare-fun b!6750749 () Bool)

(assert (=> b!6750749 true))

(assert (=> b!6750749 true))

(declare-fun lambda!379727 () Int)

(declare-fun lambda!379726 () Int)

(assert (=> b!6750749 (not (= lambda!379727 lambda!379726))))

(assert (=> b!6750749 true))

(assert (=> b!6750749 true))

(declare-fun lambda!379728 () Int)

(assert (=> b!6750749 (not (= lambda!379728 lambda!379726))))

(assert (=> b!6750749 (not (= lambda!379728 lambda!379727))))

(assert (=> b!6750749 true))

(assert (=> b!6750749 true))

(declare-fun b!6750745 () Bool)

(assert (=> b!6750745 true))

(declare-fun res!2761410 () Bool)

(declare-fun e!4077011 () Bool)

(assert (=> start!654720 (=> (not res!2761410) (not e!4077011))))

(declare-datatypes ((C!33436 0))(
  ( (C!33437 (val!26420 Int)) )
))
(declare-datatypes ((Regex!16583 0))(
  ( (ElementMatch!16583 (c!1252663 C!33436)) (Concat!25428 (regOne!33678 Regex!16583) (regTwo!33678 Regex!16583)) (EmptyExpr!16583) (Star!16583 (reg!16912 Regex!16583)) (EmptyLang!16583) (Union!16583 (regOne!33679 Regex!16583) (regTwo!33679 Regex!16583)) )
))
(declare-fun r!7292 () Regex!16583)

(declare-fun validRegex!8319 (Regex!16583) Bool)

(assert (=> start!654720 (= res!2761410 (validRegex!8319 r!7292))))

(assert (=> start!654720 e!4077011))

(declare-fun e!4077008 () Bool)

(assert (=> start!654720 e!4077008))

(declare-fun condSetEmpty!46143 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66048 0))(
  ( (Nil!65924) (Cons!65924 (h!72372 Regex!16583) (t!379751 List!66048)) )
))
(declare-datatypes ((Context!11934 0))(
  ( (Context!11935 (exprs!6467 List!66048)) )
))
(declare-fun z!1189 () (InoxSet Context!11934))

(assert (=> start!654720 (= condSetEmpty!46143 (= z!1189 ((as const (Array Context!11934 Bool)) false)))))

(declare-fun setRes!46143 () Bool)

(assert (=> start!654720 setRes!46143))

(declare-fun e!4077020 () Bool)

(assert (=> start!654720 e!4077020))

(declare-fun e!4077015 () Bool)

(assert (=> start!654720 e!4077015))

(declare-fun b!6750738 () Bool)

(declare-fun res!2761421 () Bool)

(assert (=> b!6750738 (=> (not res!2761421) (not e!4077011))))

(declare-datatypes ((List!66049 0))(
  ( (Nil!65925) (Cons!65925 (h!72373 Context!11934) (t!379752 List!66049)) )
))
(declare-fun zl!343 () List!66049)

(declare-fun toList!10367 ((InoxSet Context!11934)) List!66049)

(assert (=> b!6750738 (= res!2761421 (= (toList!10367 z!1189) zl!343))))

(declare-fun b!6750739 () Bool)

(declare-fun tp!1849942 () Bool)

(assert (=> b!6750739 (= e!4077008 tp!1849942)))

(declare-fun b!6750740 () Bool)

(declare-fun e!4077016 () Bool)

(declare-fun e!4077014 () Bool)

(assert (=> b!6750740 (= e!4077016 e!4077014)))

(declare-fun res!2761400 () Bool)

(assert (=> b!6750740 (=> res!2761400 e!4077014)))

(declare-fun lt!2441056 () (InoxSet Context!11934))

(declare-fun lt!2441060 () (InoxSet Context!11934))

(assert (=> b!6750740 (= res!2761400 (not (= lt!2441056 lt!2441060)))))

(declare-datatypes ((List!66050 0))(
  ( (Nil!65926) (Cons!65926 (h!72374 C!33436) (t!379753 List!66050)) )
))
(declare-fun s!2326 () List!66050)

(declare-fun derivationStepZipperDown!1811 (Regex!16583 Context!11934 C!33436) (InoxSet Context!11934))

(assert (=> b!6750740 (= lt!2441060 (derivationStepZipperDown!1811 r!7292 (Context!11935 Nil!65924) (h!72374 s!2326)))))

(declare-fun derivationStepZipperUp!1737 (Context!11934 C!33436) (InoxSet Context!11934))

(assert (=> b!6750740 (= lt!2441056 (derivationStepZipperUp!1737 (Context!11935 (Cons!65924 r!7292 Nil!65924)) (h!72374 s!2326)))))

(declare-fun lt!2441054 () (InoxSet Context!11934))

(declare-fun derivationStepZipper!2527 ((InoxSet Context!11934) C!33436) (InoxSet Context!11934))

(assert (=> b!6750740 (= lt!2441054 (derivationStepZipper!2527 z!1189 (h!72374 s!2326)))))

(declare-fun b!6750741 () Bool)

(declare-fun res!2761409 () Bool)

(declare-fun e!4077024 () Bool)

(assert (=> b!6750741 (=> res!2761409 e!4077024)))

(declare-fun lt!2441050 () Context!11934)

(declare-fun unfocusZipper!2325 (List!66049) Regex!16583)

(assert (=> b!6750741 (= res!2761409 (not (= (unfocusZipper!2325 (Cons!65925 lt!2441050 Nil!65925)) r!7292)))))

(declare-fun b!6750742 () Bool)

(declare-fun e!4077013 () Bool)

(declare-fun e!4077019 () Bool)

(assert (=> b!6750742 (= e!4077013 e!4077019)))

(declare-fun res!2761401 () Bool)

(assert (=> b!6750742 (=> res!2761401 e!4077019)))

(declare-datatypes ((tuple2!67116 0))(
  ( (tuple2!67117 (_1!36861 List!66050) (_2!36861 List!66050)) )
))
(declare-fun lt!2441063 () tuple2!67116)

(declare-fun ++!14737 (List!66050 List!66050) List!66050)

(assert (=> b!6750742 (= res!2761401 (not (= s!2326 (++!14737 (_1!36861 lt!2441063) (_2!36861 lt!2441063)))))))

(declare-datatypes ((Option!16470 0))(
  ( (None!16469) (Some!16469 (v!52669 tuple2!67116)) )
))
(declare-fun lt!2441049 () Option!16470)

(declare-fun get!22944 (Option!16470) tuple2!67116)

(assert (=> b!6750742 (= lt!2441063 (get!22944 lt!2441049))))

(declare-fun b!6750743 () Bool)

(declare-fun e!4077021 () Bool)

(declare-fun lt!2441066 () Bool)

(declare-fun Exists!3651 (Int) Bool)

(assert (=> b!6750743 (= e!4077021 (= lt!2441066 (Exists!3651 lambda!379726)))))

(declare-fun b!6750744 () Bool)

(declare-fun e!4077022 () Bool)

(assert (=> b!6750744 (= e!4077022 e!4077021)))

(declare-fun res!2761417 () Bool)

(assert (=> b!6750744 (=> (not res!2761417) (not e!4077021))))

(assert (=> b!6750744 (= res!2761417 (= (Exists!3651 lambda!379726) (Exists!3651 lambda!379727)))))

(declare-fun e!4077010 () Bool)

(assert (=> b!6750745 (= e!4077014 e!4077010)))

(declare-fun res!2761399 () Bool)

(assert (=> b!6750745 (=> res!2761399 e!4077010)))

(assert (=> b!6750745 (= res!2761399 (not (= lt!2441054 lt!2441060)))))

(declare-fun lambda!379729 () Int)

(declare-fun flatMap!2064 ((InoxSet Context!11934) Int) (InoxSet Context!11934))

(assert (=> b!6750745 (= (flatMap!2064 z!1189 lambda!379729) (derivationStepZipperUp!1737 (h!72373 zl!343) (h!72374 s!2326)))))

(declare-datatypes ((Unit!159857 0))(
  ( (Unit!159858) )
))
(declare-fun lt!2441071 () Unit!159857)

(declare-fun lemmaFlatMapOnSingletonSet!1590 ((InoxSet Context!11934) Context!11934 Int) Unit!159857)

(assert (=> b!6750745 (= lt!2441071 (lemmaFlatMapOnSingletonSet!1590 z!1189 (h!72373 zl!343) lambda!379729))))

(declare-fun b!6750746 () Bool)

(declare-fun e!4077026 () Bool)

(declare-fun e!4077007 () Bool)

(assert (=> b!6750746 (= e!4077026 e!4077007)))

(declare-fun res!2761403 () Bool)

(assert (=> b!6750746 (=> res!2761403 e!4077007)))

(declare-fun lt!2441068 () Context!11934)

(declare-fun lt!2441076 () Regex!16583)

(assert (=> b!6750746 (= res!2761403 (not (= (unfocusZipper!2325 (Cons!65925 lt!2441068 Nil!65925)) lt!2441076)))))

(assert (=> b!6750746 (= lt!2441076 (Concat!25428 (reg!16912 r!7292) r!7292))))

(declare-fun b!6750747 () Bool)

(declare-fun res!2761412 () Bool)

(declare-fun e!4077017 () Bool)

(assert (=> b!6750747 (=> res!2761412 e!4077017)))

(get-info :version)

(assert (=> b!6750747 (= res!2761412 (not ((_ is Cons!65924) (exprs!6467 (h!72373 zl!343)))))))

(declare-fun b!6750748 () Bool)

(declare-fun e!4077009 () Bool)

(assert (=> b!6750748 (= e!4077009 e!4077022)))

(declare-fun res!2761422 () Bool)

(assert (=> b!6750748 (=> res!2761422 e!4077022)))

(declare-fun lt!2441069 () Bool)

(assert (=> b!6750748 (= res!2761422 (not lt!2441069))))

(assert (=> b!6750749 (= e!4077017 e!4077016)))

(declare-fun res!2761406 () Bool)

(assert (=> b!6750749 (=> res!2761406 e!4077016)))

(declare-fun lt!2441074 () Bool)

(declare-fun e!4077025 () Bool)

(assert (=> b!6750749 (= res!2761406 (not (= lt!2441074 e!4077025)))))

(declare-fun res!2761397 () Bool)

(assert (=> b!6750749 (=> res!2761397 e!4077025)))

(declare-fun isEmpty!38277 (List!66050) Bool)

(assert (=> b!6750749 (= res!2761397 (isEmpty!38277 s!2326))))

(assert (=> b!6750749 (= (Exists!3651 lambda!379726) (Exists!3651 lambda!379728))))

(declare-fun lt!2441053 () Unit!159857)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2178 (Regex!16583 Regex!16583 List!66050) Unit!159857)

(assert (=> b!6750749 (= lt!2441053 (lemmaExistCutMatchRandMatchRSpecEquivalent!2178 (reg!16912 r!7292) r!7292 s!2326))))

(assert (=> b!6750749 (= (Exists!3651 lambda!379726) (Exists!3651 lambda!379727))))

(declare-fun lt!2441073 () Unit!159857)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!742 (Regex!16583 List!66050) Unit!159857)

(assert (=> b!6750749 (= lt!2441073 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!742 (reg!16912 r!7292) s!2326))))

(assert (=> b!6750749 (= lt!2441066 (Exists!3651 lambda!379726))))

(declare-fun isDefined!13173 (Option!16470) Bool)

(assert (=> b!6750749 (= lt!2441066 (isDefined!13173 lt!2441049))))

(declare-fun findConcatSeparation!2884 (Regex!16583 Regex!16583 List!66050 List!66050 List!66050) Option!16470)

(assert (=> b!6750749 (= lt!2441049 (findConcatSeparation!2884 (reg!16912 r!7292) r!7292 Nil!65926 s!2326 s!2326))))

(declare-fun lt!2441067 () Unit!159857)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2648 (Regex!16583 Regex!16583 List!66050) Unit!159857)

(assert (=> b!6750749 (= lt!2441067 (lemmaFindConcatSeparationEquivalentToExists!2648 (reg!16912 r!7292) r!7292 s!2326))))

(declare-fun b!6750750 () Bool)

(declare-fun res!2761414 () Bool)

(assert (=> b!6750750 (=> res!2761414 e!4077019)))

(declare-fun matchR!8766 (Regex!16583 List!66050) Bool)

(assert (=> b!6750750 (= res!2761414 (not (matchR!8766 (reg!16912 r!7292) (_1!36861 lt!2441063))))))

(declare-fun b!6750751 () Bool)

(declare-fun tp!1849945 () Bool)

(declare-fun tp!1849941 () Bool)

(assert (=> b!6750751 (= e!4077008 (and tp!1849945 tp!1849941))))

(declare-fun b!6750752 () Bool)

(declare-fun res!2761407 () Bool)

(assert (=> b!6750752 (=> res!2761407 e!4077017)))

(declare-fun isEmpty!38278 (List!66049) Bool)

(assert (=> b!6750752 (= res!2761407 (not (isEmpty!38278 (t!379752 zl!343))))))

(declare-fun b!6750753 () Bool)

(declare-fun res!2761418 () Bool)

(assert (=> b!6750753 (=> res!2761418 e!4077016)))

(assert (=> b!6750753 (= res!2761418 ((_ is Nil!65926) s!2326))))

(declare-fun b!6750754 () Bool)

(declare-fun e!4077012 () Bool)

(declare-fun tp!1849943 () Bool)

(assert (=> b!6750754 (= e!4077012 tp!1849943)))

(declare-fun b!6750755 () Bool)

(declare-fun res!2761396 () Bool)

(assert (=> b!6750755 (=> res!2761396 e!4077019)))

(assert (=> b!6750755 (= res!2761396 (not (matchR!8766 r!7292 (_2!36861 lt!2441063))))))

(declare-fun b!6750756 () Bool)

(declare-fun res!2761404 () Bool)

(assert (=> b!6750756 (=> res!2761404 e!4077017)))

(declare-fun generalisedConcat!2180 (List!66048) Regex!16583)

(assert (=> b!6750756 (= res!2761404 (not (= r!7292 (generalisedConcat!2180 (exprs!6467 (h!72373 zl!343))))))))

(declare-fun b!6750757 () Bool)

(declare-fun tp!1849938 () Bool)

(declare-fun tp!1849939 () Bool)

(assert (=> b!6750757 (= e!4077008 (and tp!1849938 tp!1849939))))

(declare-fun setIsEmpty!46143 () Bool)

(assert (=> setIsEmpty!46143 setRes!46143))

(declare-fun b!6750758 () Bool)

(declare-fun tp_is_empty!42419 () Bool)

(declare-fun tp!1849936 () Bool)

(assert (=> b!6750758 (= e!4077015 (and tp_is_empty!42419 tp!1849936))))

(declare-fun b!6750759 () Bool)

(declare-fun res!2761405 () Bool)

(assert (=> b!6750759 (=> res!2761405 e!4077017)))

(assert (=> b!6750759 (= res!2761405 (or ((_ is EmptyExpr!16583) r!7292) ((_ is EmptyLang!16583) r!7292) ((_ is ElementMatch!16583) r!7292) ((_ is Union!16583) r!7292) ((_ is Concat!25428) r!7292)))))

(declare-fun b!6750760 () Bool)

(assert (=> b!6750760 (= e!4077025 lt!2441066)))

(declare-fun b!6750761 () Bool)

(assert (=> b!6750761 (= e!4077007 e!4077024)))

(declare-fun res!2761420 () Bool)

(assert (=> b!6750761 (=> res!2761420 e!4077024)))

(declare-fun lt!2441055 () (InoxSet Context!11934))

(assert (=> b!6750761 (= res!2761420 (not (= lt!2441054 (derivationStepZipper!2527 lt!2441055 (h!72374 s!2326)))))))

(assert (=> b!6750761 (= (flatMap!2064 lt!2441055 lambda!379729) (derivationStepZipperUp!1737 lt!2441050 (h!72374 s!2326)))))

(declare-fun lt!2441065 () Unit!159857)

(assert (=> b!6750761 (= lt!2441065 (lemmaFlatMapOnSingletonSet!1590 lt!2441055 lt!2441050 lambda!379729))))

(declare-fun lt!2441058 () Context!11934)

(declare-fun lt!2441064 () (InoxSet Context!11934))

(assert (=> b!6750761 (= (flatMap!2064 lt!2441064 lambda!379729) (derivationStepZipperUp!1737 lt!2441058 (h!72374 s!2326)))))

(declare-fun lt!2441052 () Unit!159857)

(assert (=> b!6750761 (= lt!2441052 (lemmaFlatMapOnSingletonSet!1590 lt!2441064 lt!2441058 lambda!379729))))

(declare-fun lt!2441059 () (InoxSet Context!11934))

(assert (=> b!6750761 (= lt!2441059 (derivationStepZipperUp!1737 lt!2441050 (h!72374 s!2326)))))

(declare-fun lt!2441048 () (InoxSet Context!11934))

(assert (=> b!6750761 (= lt!2441048 (derivationStepZipperUp!1737 lt!2441058 (h!72374 s!2326)))))

(assert (=> b!6750761 (= lt!2441055 (store ((as const (Array Context!11934 Bool)) false) lt!2441050 true))))

(assert (=> b!6750761 (= lt!2441064 (store ((as const (Array Context!11934 Bool)) false) lt!2441058 true))))

(assert (=> b!6750761 (= lt!2441058 (Context!11935 (Cons!65924 (reg!16912 r!7292) Nil!65924)))))

(declare-fun b!6750762 () Bool)

(declare-fun res!2761402 () Bool)

(assert (=> b!6750762 (=> res!2761402 e!4077026)))

(declare-fun lt!2441057 () Regex!16583)

(assert (=> b!6750762 (= res!2761402 (or (not (= lt!2441057 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6750763 () Bool)

(assert (=> b!6750763 (= e!4077010 e!4077026)))

(declare-fun res!2761408 () Bool)

(assert (=> b!6750763 (=> res!2761408 e!4077026)))

(assert (=> b!6750763 (= res!2761408 (not (= lt!2441054 (derivationStepZipperDown!1811 (reg!16912 r!7292) lt!2441050 (h!72374 s!2326)))))))

(declare-fun lt!2441051 () List!66048)

(assert (=> b!6750763 (= lt!2441050 (Context!11935 lt!2441051))))

(declare-fun lt!2441072 () (InoxSet Context!11934))

(assert (=> b!6750763 (= (flatMap!2064 lt!2441072 lambda!379729) (derivationStepZipperUp!1737 lt!2441068 (h!72374 s!2326)))))

(declare-fun lt!2441061 () Unit!159857)

(assert (=> b!6750763 (= lt!2441061 (lemmaFlatMapOnSingletonSet!1590 lt!2441072 lt!2441068 lambda!379729))))

(declare-fun lt!2441062 () (InoxSet Context!11934))

(assert (=> b!6750763 (= lt!2441062 (derivationStepZipperUp!1737 lt!2441068 (h!72374 s!2326)))))

(assert (=> b!6750763 (= lt!2441072 (store ((as const (Array Context!11934 Bool)) false) lt!2441068 true))))

(assert (=> b!6750763 (= lt!2441068 (Context!11935 (Cons!65924 (reg!16912 r!7292) lt!2441051)))))

(assert (=> b!6750763 (= lt!2441051 (Cons!65924 r!7292 Nil!65924))))

(declare-fun tp!1849944 () Bool)

(declare-fun e!4077023 () Bool)

(declare-fun b!6750764 () Bool)

(declare-fun inv!84704 (Context!11934) Bool)

(assert (=> b!6750764 (= e!4077020 (and (inv!84704 (h!72373 zl!343)) e!4077023 tp!1849944))))

(declare-fun b!6750765 () Bool)

(declare-fun res!2761415 () Bool)

(assert (=> b!6750765 (=> res!2761415 e!4077024)))

(assert (=> b!6750765 (= res!2761415 (not (= (unfocusZipper!2325 (Cons!65925 lt!2441058 Nil!65925)) (reg!16912 r!7292))))))

(declare-fun b!6750766 () Bool)

(declare-fun e!4077018 () Bool)

(assert (=> b!6750766 (= e!4077018 (not e!4077017))))

(declare-fun res!2761395 () Bool)

(assert (=> b!6750766 (=> res!2761395 e!4077017)))

(assert (=> b!6750766 (= res!2761395 (not ((_ is Cons!65925) zl!343)))))

(declare-fun matchRSpec!3684 (Regex!16583 List!66050) Bool)

(assert (=> b!6750766 (= lt!2441074 (matchRSpec!3684 r!7292 s!2326))))

(assert (=> b!6750766 (= lt!2441074 (matchR!8766 r!7292 s!2326))))

(declare-fun lt!2441070 () Unit!159857)

(declare-fun mainMatchTheorem!3684 (Regex!16583 List!66050) Unit!159857)

(assert (=> b!6750766 (= lt!2441070 (mainMatchTheorem!3684 r!7292 s!2326))))

(declare-fun b!6750767 () Bool)

(assert (=> b!6750767 (= e!4077019 (validRegex!8319 (reg!16912 r!7292)))))

(declare-fun setElem!46143 () Context!11934)

(declare-fun setNonEmpty!46143 () Bool)

(declare-fun tp!1849937 () Bool)

(assert (=> setNonEmpty!46143 (= setRes!46143 (and tp!1849937 (inv!84704 setElem!46143) e!4077012))))

(declare-fun setRest!46143 () (InoxSet Context!11934))

(assert (=> setNonEmpty!46143 (= z!1189 ((_ map or) (store ((as const (Array Context!11934 Bool)) false) setElem!46143 true) setRest!46143))))

(declare-fun b!6750768 () Bool)

(assert (=> b!6750768 (= e!4077024 e!4077013)))

(declare-fun res!2761398 () Bool)

(assert (=> b!6750768 (=> res!2761398 e!4077013)))

(assert (=> b!6750768 (= res!2761398 (not lt!2441069))))

(assert (=> b!6750768 e!4077009))

(declare-fun res!2761416 () Bool)

(assert (=> b!6750768 (=> (not res!2761416) (not e!4077009))))

(assert (=> b!6750768 (= res!2761416 (= lt!2441069 (matchRSpec!3684 lt!2441076 s!2326)))))

(assert (=> b!6750768 (= lt!2441069 (matchR!8766 lt!2441076 s!2326))))

(declare-fun lt!2441075 () Unit!159857)

(assert (=> b!6750768 (= lt!2441075 (mainMatchTheorem!3684 lt!2441076 s!2326))))

(declare-fun b!6750769 () Bool)

(declare-fun res!2761411 () Bool)

(assert (=> b!6750769 (=> res!2761411 e!4077026)))

(declare-fun matchZipper!2569 ((InoxSet Context!11934) List!66050) Bool)

(assert (=> b!6750769 (= res!2761411 (not (= (matchZipper!2569 lt!2441072 s!2326) (matchZipper!2569 (derivationStepZipper!2527 lt!2441072 (h!72374 s!2326)) (t!379753 s!2326)))))))

(declare-fun b!6750770 () Bool)

(assert (=> b!6750770 (= e!4077011 e!4077018)))

(declare-fun res!2761419 () Bool)

(assert (=> b!6750770 (=> (not res!2761419) (not e!4077018))))

(assert (=> b!6750770 (= res!2761419 (= r!7292 lt!2441057))))

(assert (=> b!6750770 (= lt!2441057 (unfocusZipper!2325 zl!343))))

(declare-fun b!6750771 () Bool)

(declare-fun tp!1849940 () Bool)

(assert (=> b!6750771 (= e!4077023 tp!1849940)))

(declare-fun b!6750772 () Bool)

(declare-fun res!2761413 () Bool)

(assert (=> b!6750772 (=> res!2761413 e!4077017)))

(declare-fun generalisedUnion!2427 (List!66048) Regex!16583)

(declare-fun unfocusZipperList!2004 (List!66049) List!66048)

(assert (=> b!6750772 (= res!2761413 (not (= r!7292 (generalisedUnion!2427 (unfocusZipperList!2004 zl!343)))))))

(declare-fun b!6750773 () Bool)

(assert (=> b!6750773 (= e!4077008 tp_is_empty!42419)))

(assert (= (and start!654720 res!2761410) b!6750738))

(assert (= (and b!6750738 res!2761421) b!6750770))

(assert (= (and b!6750770 res!2761419) b!6750766))

(assert (= (and b!6750766 (not res!2761395)) b!6750752))

(assert (= (and b!6750752 (not res!2761407)) b!6750756))

(assert (= (and b!6750756 (not res!2761404)) b!6750747))

(assert (= (and b!6750747 (not res!2761412)) b!6750772))

(assert (= (and b!6750772 (not res!2761413)) b!6750759))

(assert (= (and b!6750759 (not res!2761405)) b!6750749))

(assert (= (and b!6750749 (not res!2761397)) b!6750760))

(assert (= (and b!6750749 (not res!2761406)) b!6750753))

(assert (= (and b!6750753 (not res!2761418)) b!6750740))

(assert (= (and b!6750740 (not res!2761400)) b!6750745))

(assert (= (and b!6750745 (not res!2761399)) b!6750763))

(assert (= (and b!6750763 (not res!2761408)) b!6750769))

(assert (= (and b!6750769 (not res!2761411)) b!6750762))

(assert (= (and b!6750762 (not res!2761402)) b!6750746))

(assert (= (and b!6750746 (not res!2761403)) b!6750761))

(assert (= (and b!6750761 (not res!2761420)) b!6750765))

(assert (= (and b!6750765 (not res!2761415)) b!6750741))

(assert (= (and b!6750741 (not res!2761409)) b!6750768))

(assert (= (and b!6750768 res!2761416) b!6750748))

(assert (= (and b!6750748 (not res!2761422)) b!6750744))

(assert (= (and b!6750744 res!2761417) b!6750743))

(assert (= (and b!6750768 (not res!2761398)) b!6750742))

(assert (= (and b!6750742 (not res!2761401)) b!6750750))

(assert (= (and b!6750750 (not res!2761414)) b!6750755))

(assert (= (and b!6750755 (not res!2761396)) b!6750767))

(assert (= (and start!654720 ((_ is ElementMatch!16583) r!7292)) b!6750773))

(assert (= (and start!654720 ((_ is Concat!25428) r!7292)) b!6750751))

(assert (= (and start!654720 ((_ is Star!16583) r!7292)) b!6750739))

(assert (= (and start!654720 ((_ is Union!16583) r!7292)) b!6750757))

(assert (= (and start!654720 condSetEmpty!46143) setIsEmpty!46143))

(assert (= (and start!654720 (not condSetEmpty!46143)) setNonEmpty!46143))

(assert (= setNonEmpty!46143 b!6750754))

(assert (= b!6750764 b!6750771))

(assert (= (and start!654720 ((_ is Cons!65925) zl!343)) b!6750764))

(assert (= (and start!654720 ((_ is Cons!65926) s!2326)) b!6750758))

(declare-fun m!7504990 () Bool)

(assert (=> b!6750765 m!7504990))

(declare-fun m!7504992 () Bool)

(assert (=> b!6750743 m!7504992))

(declare-fun m!7504994 () Bool)

(assert (=> b!6750738 m!7504994))

(declare-fun m!7504996 () Bool)

(assert (=> b!6750741 m!7504996))

(declare-fun m!7504998 () Bool)

(assert (=> b!6750746 m!7504998))

(declare-fun m!7505000 () Bool)

(assert (=> b!6750770 m!7505000))

(declare-fun m!7505002 () Bool)

(assert (=> start!654720 m!7505002))

(declare-fun m!7505004 () Bool)

(assert (=> b!6750764 m!7505004))

(declare-fun m!7505006 () Bool)

(assert (=> b!6750767 m!7505006))

(declare-fun m!7505008 () Bool)

(assert (=> b!6750749 m!7505008))

(assert (=> b!6750749 m!7504992))

(declare-fun m!7505010 () Bool)

(assert (=> b!6750749 m!7505010))

(declare-fun m!7505012 () Bool)

(assert (=> b!6750749 m!7505012))

(assert (=> b!6750749 m!7504992))

(declare-fun m!7505014 () Bool)

(assert (=> b!6750749 m!7505014))

(assert (=> b!6750749 m!7504992))

(declare-fun m!7505016 () Bool)

(assert (=> b!6750749 m!7505016))

(declare-fun m!7505018 () Bool)

(assert (=> b!6750749 m!7505018))

(declare-fun m!7505020 () Bool)

(assert (=> b!6750749 m!7505020))

(declare-fun m!7505022 () Bool)

(assert (=> b!6750749 m!7505022))

(declare-fun m!7505024 () Bool)

(assert (=> b!6750756 m!7505024))

(declare-fun m!7505026 () Bool)

(assert (=> b!6750752 m!7505026))

(declare-fun m!7505028 () Bool)

(assert (=> b!6750772 m!7505028))

(assert (=> b!6750772 m!7505028))

(declare-fun m!7505030 () Bool)

(assert (=> b!6750772 m!7505030))

(declare-fun m!7505032 () Bool)

(assert (=> b!6750740 m!7505032))

(declare-fun m!7505034 () Bool)

(assert (=> b!6750740 m!7505034))

(declare-fun m!7505036 () Bool)

(assert (=> b!6750740 m!7505036))

(declare-fun m!7505038 () Bool)

(assert (=> b!6750768 m!7505038))

(declare-fun m!7505040 () Bool)

(assert (=> b!6750768 m!7505040))

(declare-fun m!7505042 () Bool)

(assert (=> b!6750768 m!7505042))

(assert (=> b!6750744 m!7504992))

(assert (=> b!6750744 m!7505018))

(declare-fun m!7505044 () Bool)

(assert (=> b!6750745 m!7505044))

(declare-fun m!7505046 () Bool)

(assert (=> b!6750745 m!7505046))

(declare-fun m!7505048 () Bool)

(assert (=> b!6750745 m!7505048))

(declare-fun m!7505050 () Bool)

(assert (=> b!6750750 m!7505050))

(declare-fun m!7505052 () Bool)

(assert (=> b!6750755 m!7505052))

(declare-fun m!7505054 () Bool)

(assert (=> setNonEmpty!46143 m!7505054))

(declare-fun m!7505056 () Bool)

(assert (=> b!6750761 m!7505056))

(declare-fun m!7505058 () Bool)

(assert (=> b!6750761 m!7505058))

(declare-fun m!7505060 () Bool)

(assert (=> b!6750761 m!7505060))

(declare-fun m!7505062 () Bool)

(assert (=> b!6750761 m!7505062))

(declare-fun m!7505064 () Bool)

(assert (=> b!6750761 m!7505064))

(declare-fun m!7505066 () Bool)

(assert (=> b!6750761 m!7505066))

(declare-fun m!7505068 () Bool)

(assert (=> b!6750761 m!7505068))

(declare-fun m!7505070 () Bool)

(assert (=> b!6750761 m!7505070))

(declare-fun m!7505072 () Bool)

(assert (=> b!6750761 m!7505072))

(declare-fun m!7505074 () Bool)

(assert (=> b!6750766 m!7505074))

(declare-fun m!7505076 () Bool)

(assert (=> b!6750766 m!7505076))

(declare-fun m!7505078 () Bool)

(assert (=> b!6750766 m!7505078))

(declare-fun m!7505080 () Bool)

(assert (=> b!6750763 m!7505080))

(declare-fun m!7505082 () Bool)

(assert (=> b!6750763 m!7505082))

(declare-fun m!7505084 () Bool)

(assert (=> b!6750763 m!7505084))

(declare-fun m!7505086 () Bool)

(assert (=> b!6750763 m!7505086))

(declare-fun m!7505088 () Bool)

(assert (=> b!6750763 m!7505088))

(declare-fun m!7505090 () Bool)

(assert (=> b!6750769 m!7505090))

(declare-fun m!7505092 () Bool)

(assert (=> b!6750769 m!7505092))

(assert (=> b!6750769 m!7505092))

(declare-fun m!7505094 () Bool)

(assert (=> b!6750769 m!7505094))

(declare-fun m!7505096 () Bool)

(assert (=> b!6750742 m!7505096))

(declare-fun m!7505098 () Bool)

(assert (=> b!6750742 m!7505098))

(check-sat (not b!6750768) (not start!654720) (not b!6750764) (not b!6750746) tp_is_empty!42419 (not b!6750769) (not b!6750741) (not b!6750770) (not b!6750752) (not b!6750756) (not setNonEmpty!46143) (not b!6750742) (not b!6750766) (not b!6750738) (not b!6750772) (not b!6750771) (not b!6750758) (not b!6750751) (not b!6750765) (not b!6750749) (not b!6750739) (not b!6750750) (not b!6750740) (not b!6750755) (not b!6750754) (not b!6750757) (not b!6750761) (not b!6750745) (not b!6750744) (not b!6750763) (not b!6750767) (not b!6750743))
(check-sat)
(get-model)

(declare-fun d!2120509 () Bool)

(declare-fun lambda!379732 () Int)

(declare-fun forall!15781 (List!66048 Int) Bool)

(assert (=> d!2120509 (= (inv!84704 setElem!46143) (forall!15781 (exprs!6467 setElem!46143) lambda!379732))))

(declare-fun bs!1794428 () Bool)

(assert (= bs!1794428 d!2120509))

(declare-fun m!7505100 () Bool)

(assert (=> bs!1794428 m!7505100))

(assert (=> setNonEmpty!46143 d!2120509))

(declare-fun d!2120513 () Bool)

(declare-fun isEmpty!38280 (Option!16470) Bool)

(assert (=> d!2120513 (= (isDefined!13173 lt!2441049) (not (isEmpty!38280 lt!2441049)))))

(declare-fun bs!1794429 () Bool)

(assert (= bs!1794429 d!2120513))

(declare-fun m!7505102 () Bool)

(assert (=> bs!1794429 m!7505102))

(assert (=> b!6750749 d!2120513))

(declare-fun bs!1794430 () Bool)

(declare-fun d!2120515 () Bool)

(assert (= bs!1794430 (and d!2120515 b!6750749)))

(declare-fun lambda!379737 () Int)

(assert (=> bs!1794430 (= lambda!379737 lambda!379726)))

(assert (=> bs!1794430 (not (= lambda!379737 lambda!379727))))

(assert (=> bs!1794430 (not (= lambda!379737 lambda!379728))))

(assert (=> d!2120515 true))

(assert (=> d!2120515 true))

(assert (=> d!2120515 true))

(declare-fun lambda!379741 () Int)

(assert (=> bs!1794430 (not (= lambda!379741 lambda!379726))))

(assert (=> bs!1794430 (not (= lambda!379741 lambda!379727))))

(assert (=> bs!1794430 (= lambda!379741 lambda!379728)))

(declare-fun bs!1794433 () Bool)

(assert (= bs!1794433 d!2120515))

(assert (=> bs!1794433 (not (= lambda!379741 lambda!379737))))

(assert (=> d!2120515 true))

(assert (=> d!2120515 true))

(assert (=> d!2120515 true))

(assert (=> d!2120515 (= (Exists!3651 lambda!379737) (Exists!3651 lambda!379741))))

(declare-fun lt!2441079 () Unit!159857)

(declare-fun choose!50353 (Regex!16583 Regex!16583 List!66050) Unit!159857)

(assert (=> d!2120515 (= lt!2441079 (choose!50353 (reg!16912 r!7292) r!7292 s!2326))))

(assert (=> d!2120515 (validRegex!8319 (reg!16912 r!7292))))

(assert (=> d!2120515 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2178 (reg!16912 r!7292) r!7292 s!2326) lt!2441079)))

(declare-fun m!7505122 () Bool)

(assert (=> bs!1794433 m!7505122))

(declare-fun m!7505124 () Bool)

(assert (=> bs!1794433 m!7505124))

(declare-fun m!7505126 () Bool)

(assert (=> bs!1794433 m!7505126))

(assert (=> bs!1794433 m!7505006))

(assert (=> b!6750749 d!2120515))

(declare-fun bs!1794435 () Bool)

(declare-fun d!2120523 () Bool)

(assert (= bs!1794435 (and d!2120523 d!2120515)))

(declare-fun lambda!379749 () Int)

(assert (=> bs!1794435 (not (= lambda!379749 lambda!379741))))

(declare-fun bs!1794436 () Bool)

(assert (= bs!1794436 (and d!2120523 b!6750749)))

(assert (=> bs!1794436 (= (= (Star!16583 (reg!16912 r!7292)) r!7292) (= lambda!379749 lambda!379726))))

(assert (=> bs!1794436 (not (= lambda!379749 lambda!379728))))

(assert (=> bs!1794436 (not (= lambda!379749 lambda!379727))))

(assert (=> bs!1794435 (= (= (Star!16583 (reg!16912 r!7292)) r!7292) (= lambda!379749 lambda!379737))))

(assert (=> d!2120523 true))

(assert (=> d!2120523 true))

(declare-fun bs!1794437 () Bool)

(assert (= bs!1794437 d!2120523))

(declare-fun lambda!379750 () Int)

(assert (=> bs!1794437 (not (= lambda!379750 lambda!379749))))

(assert (=> bs!1794435 (not (= lambda!379750 lambda!379741))))

(assert (=> bs!1794436 (not (= lambda!379750 lambda!379726))))

(assert (=> bs!1794436 (not (= lambda!379750 lambda!379728))))

(assert (=> bs!1794436 (= (= (Star!16583 (reg!16912 r!7292)) r!7292) (= lambda!379750 lambda!379727))))

(assert (=> bs!1794435 (not (= lambda!379750 lambda!379737))))

(assert (=> d!2120523 true))

(assert (=> d!2120523 true))

(assert (=> d!2120523 (= (Exists!3651 lambda!379749) (Exists!3651 lambda!379750))))

(declare-fun lt!2441088 () Unit!159857)

(declare-fun choose!50355 (Regex!16583 List!66050) Unit!159857)

(assert (=> d!2120523 (= lt!2441088 (choose!50355 (reg!16912 r!7292) s!2326))))

(assert (=> d!2120523 (validRegex!8319 (reg!16912 r!7292))))

(assert (=> d!2120523 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!742 (reg!16912 r!7292) s!2326) lt!2441088)))

(declare-fun m!7505190 () Bool)

(assert (=> bs!1794437 m!7505190))

(declare-fun m!7505192 () Bool)

(assert (=> bs!1794437 m!7505192))

(declare-fun m!7505194 () Bool)

(assert (=> bs!1794437 m!7505194))

(assert (=> bs!1794437 m!7505006))

(assert (=> b!6750749 d!2120523))

(declare-fun d!2120535 () Bool)

(assert (=> d!2120535 (= (isEmpty!38277 s!2326) ((_ is Nil!65926) s!2326))))

(assert (=> b!6750749 d!2120535))

(declare-fun d!2120541 () Bool)

(declare-fun choose!50356 (Int) Bool)

(assert (=> d!2120541 (= (Exists!3651 lambda!379728) (choose!50356 lambda!379728))))

(declare-fun bs!1794442 () Bool)

(assert (= bs!1794442 d!2120541))

(declare-fun m!7505204 () Bool)

(assert (=> bs!1794442 m!7505204))

(assert (=> b!6750749 d!2120541))

(declare-fun d!2120543 () Bool)

(assert (=> d!2120543 (= (Exists!3651 lambda!379727) (choose!50356 lambda!379727))))

(declare-fun bs!1794443 () Bool)

(assert (= bs!1794443 d!2120543))

(declare-fun m!7505206 () Bool)

(assert (=> bs!1794443 m!7505206))

(assert (=> b!6750749 d!2120543))

(declare-fun b!6751007 () Bool)

(declare-fun e!4077151 () Option!16470)

(assert (=> b!6751007 (= e!4077151 (Some!16469 (tuple2!67117 Nil!65926 s!2326)))))

(declare-fun b!6751008 () Bool)

(declare-fun e!4077153 () Bool)

(assert (=> b!6751008 (= e!4077153 (matchR!8766 r!7292 s!2326))))

(declare-fun b!6751009 () Bool)

(declare-fun e!4077149 () Bool)

(declare-fun lt!2441105 () Option!16470)

(assert (=> b!6751009 (= e!4077149 (not (isDefined!13173 lt!2441105)))))

(declare-fun b!6751010 () Bool)

(declare-fun e!4077152 () Option!16470)

(assert (=> b!6751010 (= e!4077151 e!4077152)))

(declare-fun c!1252731 () Bool)

(assert (=> b!6751010 (= c!1252731 ((_ is Nil!65926) s!2326))))

(declare-fun b!6751011 () Bool)

(declare-fun e!4077150 () Bool)

(assert (=> b!6751011 (= e!4077150 (= (++!14737 (_1!36861 (get!22944 lt!2441105)) (_2!36861 (get!22944 lt!2441105))) s!2326))))

(declare-fun d!2120545 () Bool)

(assert (=> d!2120545 e!4077149))

(declare-fun res!2761520 () Bool)

(assert (=> d!2120545 (=> res!2761520 e!4077149)))

(assert (=> d!2120545 (= res!2761520 e!4077150)))

(declare-fun res!2761519 () Bool)

(assert (=> d!2120545 (=> (not res!2761519) (not e!4077150))))

(assert (=> d!2120545 (= res!2761519 (isDefined!13173 lt!2441105))))

(assert (=> d!2120545 (= lt!2441105 e!4077151)))

(declare-fun c!1252732 () Bool)

(assert (=> d!2120545 (= c!1252732 e!4077153)))

(declare-fun res!2761518 () Bool)

(assert (=> d!2120545 (=> (not res!2761518) (not e!4077153))))

(assert (=> d!2120545 (= res!2761518 (matchR!8766 (reg!16912 r!7292) Nil!65926))))

(assert (=> d!2120545 (validRegex!8319 (reg!16912 r!7292))))

(assert (=> d!2120545 (= (findConcatSeparation!2884 (reg!16912 r!7292) r!7292 Nil!65926 s!2326 s!2326) lt!2441105)))

(declare-fun b!6751012 () Bool)

(declare-fun res!2761522 () Bool)

(assert (=> b!6751012 (=> (not res!2761522) (not e!4077150))))

(assert (=> b!6751012 (= res!2761522 (matchR!8766 r!7292 (_2!36861 (get!22944 lt!2441105))))))

(declare-fun b!6751013 () Bool)

(declare-fun res!2761521 () Bool)

(assert (=> b!6751013 (=> (not res!2761521) (not e!4077150))))

(assert (=> b!6751013 (= res!2761521 (matchR!8766 (reg!16912 r!7292) (_1!36861 (get!22944 lt!2441105))))))

(declare-fun b!6751014 () Bool)

(assert (=> b!6751014 (= e!4077152 None!16469)))

(declare-fun b!6751015 () Bool)

(declare-fun lt!2441107 () Unit!159857)

(declare-fun lt!2441106 () Unit!159857)

(assert (=> b!6751015 (= lt!2441107 lt!2441106)))

(assert (=> b!6751015 (= (++!14737 (++!14737 Nil!65926 (Cons!65926 (h!72374 s!2326) Nil!65926)) (t!379753 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2709 (List!66050 C!33436 List!66050 List!66050) Unit!159857)

(assert (=> b!6751015 (= lt!2441106 (lemmaMoveElementToOtherListKeepsConcatEq!2709 Nil!65926 (h!72374 s!2326) (t!379753 s!2326) s!2326))))

(assert (=> b!6751015 (= e!4077152 (findConcatSeparation!2884 (reg!16912 r!7292) r!7292 (++!14737 Nil!65926 (Cons!65926 (h!72374 s!2326) Nil!65926)) (t!379753 s!2326) s!2326))))

(assert (= (and d!2120545 res!2761518) b!6751008))

(assert (= (and d!2120545 c!1252732) b!6751007))

(assert (= (and d!2120545 (not c!1252732)) b!6751010))

(assert (= (and b!6751010 c!1252731) b!6751014))

(assert (= (and b!6751010 (not c!1252731)) b!6751015))

(assert (= (and d!2120545 res!2761519) b!6751013))

(assert (= (and b!6751013 res!2761521) b!6751012))

(assert (= (and b!6751012 res!2761522) b!6751011))

(assert (= (and d!2120545 (not res!2761520)) b!6751009))

(declare-fun m!7505228 () Bool)

(assert (=> b!6751009 m!7505228))

(declare-fun m!7505230 () Bool)

(assert (=> b!6751013 m!7505230))

(declare-fun m!7505232 () Bool)

(assert (=> b!6751013 m!7505232))

(declare-fun m!7505234 () Bool)

(assert (=> b!6751015 m!7505234))

(assert (=> b!6751015 m!7505234))

(declare-fun m!7505236 () Bool)

(assert (=> b!6751015 m!7505236))

(declare-fun m!7505238 () Bool)

(assert (=> b!6751015 m!7505238))

(assert (=> b!6751015 m!7505234))

(declare-fun m!7505240 () Bool)

(assert (=> b!6751015 m!7505240))

(assert (=> d!2120545 m!7505228))

(declare-fun m!7505242 () Bool)

(assert (=> d!2120545 m!7505242))

(assert (=> d!2120545 m!7505006))

(assert (=> b!6751011 m!7505230))

(declare-fun m!7505244 () Bool)

(assert (=> b!6751011 m!7505244))

(assert (=> b!6751012 m!7505230))

(declare-fun m!7505246 () Bool)

(assert (=> b!6751012 m!7505246))

(assert (=> b!6751008 m!7505076))

(assert (=> b!6750749 d!2120545))

(declare-fun bs!1794457 () Bool)

(declare-fun d!2120555 () Bool)

(assert (= bs!1794457 (and d!2120555 d!2120523)))

(declare-fun lambda!379771 () Int)

(assert (=> bs!1794457 (= (= r!7292 (Star!16583 (reg!16912 r!7292))) (= lambda!379771 lambda!379749))))

(declare-fun bs!1794458 () Bool)

(assert (= bs!1794458 (and d!2120555 d!2120515)))

(assert (=> bs!1794458 (not (= lambda!379771 lambda!379741))))

(declare-fun bs!1794460 () Bool)

(assert (= bs!1794460 (and d!2120555 b!6750749)))

(assert (=> bs!1794460 (= lambda!379771 lambda!379726)))

(assert (=> bs!1794460 (not (= lambda!379771 lambda!379728))))

(assert (=> bs!1794457 (not (= lambda!379771 lambda!379750))))

(assert (=> bs!1794460 (not (= lambda!379771 lambda!379727))))

(assert (=> bs!1794458 (= lambda!379771 lambda!379737)))

(assert (=> d!2120555 true))

(assert (=> d!2120555 true))

(assert (=> d!2120555 true))

(assert (=> d!2120555 (= (isDefined!13173 (findConcatSeparation!2884 (reg!16912 r!7292) r!7292 Nil!65926 s!2326 s!2326)) (Exists!3651 lambda!379771))))

(declare-fun lt!2441114 () Unit!159857)

(declare-fun choose!50359 (Regex!16583 Regex!16583 List!66050) Unit!159857)

(assert (=> d!2120555 (= lt!2441114 (choose!50359 (reg!16912 r!7292) r!7292 s!2326))))

(assert (=> d!2120555 (validRegex!8319 (reg!16912 r!7292))))

(assert (=> d!2120555 (= (lemmaFindConcatSeparationEquivalentToExists!2648 (reg!16912 r!7292) r!7292 s!2326) lt!2441114)))

(declare-fun bs!1794461 () Bool)

(assert (= bs!1794461 d!2120555))

(assert (=> bs!1794461 m!7505014))

(assert (=> bs!1794461 m!7505006))

(declare-fun m!7505260 () Bool)

(assert (=> bs!1794461 m!7505260))

(assert (=> bs!1794461 m!7505014))

(declare-fun m!7505264 () Bool)

(assert (=> bs!1794461 m!7505264))

(declare-fun m!7505268 () Bool)

(assert (=> bs!1794461 m!7505268))

(assert (=> b!6750749 d!2120555))

(declare-fun d!2120565 () Bool)

(assert (=> d!2120565 (= (Exists!3651 lambda!379726) (choose!50356 lambda!379726))))

(declare-fun bs!1794464 () Bool)

(assert (= bs!1794464 d!2120565))

(declare-fun m!7505270 () Bool)

(assert (=> bs!1794464 m!7505270))

(assert (=> b!6750749 d!2120565))

(declare-fun bs!1794473 () Bool)

(declare-fun b!6751107 () Bool)

(assert (= bs!1794473 (and b!6751107 d!2120523)))

(declare-fun lambda!379780 () Int)

(assert (=> bs!1794473 (not (= lambda!379780 lambda!379749))))

(declare-fun bs!1794474 () Bool)

(assert (= bs!1794474 (and b!6751107 d!2120515)))

(assert (=> bs!1794474 (not (= lambda!379780 lambda!379741))))

(declare-fun bs!1794475 () Bool)

(assert (= bs!1794475 (and b!6751107 b!6750749)))

(assert (=> bs!1794475 (not (= lambda!379780 lambda!379726))))

(assert (=> bs!1794475 (not (= lambda!379780 lambda!379728))))

(assert (=> bs!1794473 (= (and (= (reg!16912 lt!2441076) (reg!16912 r!7292)) (= lt!2441076 (Star!16583 (reg!16912 r!7292)))) (= lambda!379780 lambda!379750))))

(assert (=> bs!1794474 (not (= lambda!379780 lambda!379737))))

(assert (=> bs!1794475 (= (and (= (reg!16912 lt!2441076) (reg!16912 r!7292)) (= lt!2441076 r!7292)) (= lambda!379780 lambda!379727))))

(declare-fun bs!1794477 () Bool)

(assert (= bs!1794477 (and b!6751107 d!2120555)))

(assert (=> bs!1794477 (not (= lambda!379780 lambda!379771))))

(assert (=> b!6751107 true))

(assert (=> b!6751107 true))

(declare-fun bs!1794478 () Bool)

(declare-fun b!6751102 () Bool)

(assert (= bs!1794478 (and b!6751102 d!2120523)))

(declare-fun lambda!379781 () Int)

(assert (=> bs!1794478 (not (= lambda!379781 lambda!379749))))

(declare-fun bs!1794479 () Bool)

(assert (= bs!1794479 (and b!6751102 d!2120515)))

(assert (=> bs!1794479 (= (and (= (regOne!33678 lt!2441076) (reg!16912 r!7292)) (= (regTwo!33678 lt!2441076) r!7292)) (= lambda!379781 lambda!379741))))

(declare-fun bs!1794480 () Bool)

(assert (= bs!1794480 (and b!6751102 b!6750749)))

(assert (=> bs!1794480 (not (= lambda!379781 lambda!379726))))

(declare-fun bs!1794482 () Bool)

(assert (= bs!1794482 (and b!6751102 b!6751107)))

(assert (=> bs!1794482 (not (= lambda!379781 lambda!379780))))

(assert (=> bs!1794480 (= (and (= (regOne!33678 lt!2441076) (reg!16912 r!7292)) (= (regTwo!33678 lt!2441076) r!7292)) (= lambda!379781 lambda!379728))))

(assert (=> bs!1794478 (not (= lambda!379781 lambda!379750))))

(assert (=> bs!1794479 (not (= lambda!379781 lambda!379737))))

(assert (=> bs!1794480 (not (= lambda!379781 lambda!379727))))

(declare-fun bs!1794484 () Bool)

(assert (= bs!1794484 (and b!6751102 d!2120555)))

(assert (=> bs!1794484 (not (= lambda!379781 lambda!379771))))

(assert (=> b!6751102 true))

(assert (=> b!6751102 true))

(declare-fun bm!610570 () Bool)

(declare-fun call!610575 () Bool)

(assert (=> bm!610570 (= call!610575 (isEmpty!38277 s!2326))))

(declare-fun b!6751097 () Bool)

(declare-fun c!1252749 () Bool)

(assert (=> b!6751097 (= c!1252749 ((_ is ElementMatch!16583) lt!2441076))))

(declare-fun e!4077203 () Bool)

(declare-fun e!4077198 () Bool)

(assert (=> b!6751097 (= e!4077203 e!4077198)))

(declare-fun d!2120567 () Bool)

(declare-fun c!1252747 () Bool)

(assert (=> d!2120567 (= c!1252747 ((_ is EmptyExpr!16583) lt!2441076))))

(declare-fun e!4077200 () Bool)

(assert (=> d!2120567 (= (matchRSpec!3684 lt!2441076 s!2326) e!4077200)))

(declare-fun call!610576 () Bool)

(declare-fun c!1252748 () Bool)

(declare-fun bm!610571 () Bool)

(assert (=> bm!610571 (= call!610576 (Exists!3651 (ite c!1252748 lambda!379780 lambda!379781)))))

(declare-fun b!6751098 () Bool)

(assert (=> b!6751098 (= e!4077200 call!610575)))

(declare-fun b!6751099 () Bool)

(declare-fun res!2761578 () Bool)

(declare-fun e!4077197 () Bool)

(assert (=> b!6751099 (=> res!2761578 e!4077197)))

(assert (=> b!6751099 (= res!2761578 call!610575)))

(declare-fun e!4077202 () Bool)

(assert (=> b!6751099 (= e!4077202 e!4077197)))

(declare-fun b!6751100 () Bool)

(assert (=> b!6751100 (= e!4077198 (= s!2326 (Cons!65926 (c!1252663 lt!2441076) Nil!65926)))))

(declare-fun b!6751101 () Bool)

(declare-fun c!1252750 () Bool)

(assert (=> b!6751101 (= c!1252750 ((_ is Union!16583) lt!2441076))))

(declare-fun e!4077201 () Bool)

(assert (=> b!6751101 (= e!4077198 e!4077201)))

(assert (=> b!6751102 (= e!4077202 call!610576)))

(declare-fun b!6751103 () Bool)

(assert (=> b!6751103 (= e!4077201 e!4077202)))

(assert (=> b!6751103 (= c!1252748 ((_ is Star!16583) lt!2441076))))

(declare-fun b!6751104 () Bool)

(assert (=> b!6751104 (= e!4077200 e!4077203)))

(declare-fun res!2761577 () Bool)

(assert (=> b!6751104 (= res!2761577 (not ((_ is EmptyLang!16583) lt!2441076)))))

(assert (=> b!6751104 (=> (not res!2761577) (not e!4077203))))

(declare-fun b!6751105 () Bool)

(declare-fun e!4077199 () Bool)

(assert (=> b!6751105 (= e!4077201 e!4077199)))

(declare-fun res!2761576 () Bool)

(assert (=> b!6751105 (= res!2761576 (matchRSpec!3684 (regOne!33679 lt!2441076) s!2326))))

(assert (=> b!6751105 (=> res!2761576 e!4077199)))

(declare-fun b!6751106 () Bool)

(assert (=> b!6751106 (= e!4077199 (matchRSpec!3684 (regTwo!33679 lt!2441076) s!2326))))

(assert (=> b!6751107 (= e!4077197 call!610576)))

(assert (= (and d!2120567 c!1252747) b!6751098))

(assert (= (and d!2120567 (not c!1252747)) b!6751104))

(assert (= (and b!6751104 res!2761577) b!6751097))

(assert (= (and b!6751097 c!1252749) b!6751100))

(assert (= (and b!6751097 (not c!1252749)) b!6751101))

(assert (= (and b!6751101 c!1252750) b!6751105))

(assert (= (and b!6751101 (not c!1252750)) b!6751103))

(assert (= (and b!6751105 (not res!2761576)) b!6751106))

(assert (= (and b!6751103 c!1252748) b!6751099))

(assert (= (and b!6751103 (not c!1252748)) b!6751102))

(assert (= (and b!6751099 (not res!2761578)) b!6751107))

(assert (= (or b!6751107 b!6751102) bm!610571))

(assert (= (or b!6751098 b!6751099) bm!610570))

(assert (=> bm!610570 m!7505008))

(declare-fun m!7505328 () Bool)

(assert (=> bm!610571 m!7505328))

(declare-fun m!7505330 () Bool)

(assert (=> b!6751105 m!7505330))

(declare-fun m!7505332 () Bool)

(assert (=> b!6751106 m!7505332))

(assert (=> b!6750768 d!2120567))

(declare-fun b!6751201 () Bool)

(declare-fun res!2761627 () Bool)

(declare-fun e!4077263 () Bool)

(assert (=> b!6751201 (=> (not res!2761627) (not e!4077263))))

(declare-fun call!610592 () Bool)

(assert (=> b!6751201 (= res!2761627 (not call!610592))))

(declare-fun bm!610587 () Bool)

(assert (=> bm!610587 (= call!610592 (isEmpty!38277 s!2326))))

(declare-fun b!6751202 () Bool)

(declare-fun e!4077264 () Bool)

(declare-fun lt!2441142 () Bool)

(assert (=> b!6751202 (= e!4077264 (not lt!2441142))))

(declare-fun b!6751203 () Bool)

(declare-fun e!4077268 () Bool)

(declare-fun head!13589 (List!66050) C!33436)

(assert (=> b!6751203 (= e!4077268 (not (= (head!13589 s!2326) (c!1252663 lt!2441076))))))

(declare-fun b!6751204 () Bool)

(declare-fun e!4077267 () Bool)

(assert (=> b!6751204 (= e!4077267 e!4077268)))

(declare-fun res!2761631 () Bool)

(assert (=> b!6751204 (=> res!2761631 e!4077268)))

(assert (=> b!6751204 (= res!2761631 call!610592)))

(declare-fun b!6751205 () Bool)

(declare-fun e!4077262 () Bool)

(assert (=> b!6751205 (= e!4077262 e!4077267)))

(declare-fun res!2761633 () Bool)

(assert (=> b!6751205 (=> (not res!2761633) (not e!4077267))))

(assert (=> b!6751205 (= res!2761633 (not lt!2441142))))

(declare-fun b!6751207 () Bool)

(declare-fun e!4077265 () Bool)

(assert (=> b!6751207 (= e!4077265 (= lt!2441142 call!610592))))

(declare-fun b!6751208 () Bool)

(assert (=> b!6751208 (= e!4077265 e!4077264)))

(declare-fun c!1252775 () Bool)

(assert (=> b!6751208 (= c!1252775 ((_ is EmptyLang!16583) lt!2441076))))

(declare-fun b!6751209 () Bool)

(declare-fun res!2761630 () Bool)

(assert (=> b!6751209 (=> res!2761630 e!4077268)))

(declare-fun tail!12674 (List!66050) List!66050)

(assert (=> b!6751209 (= res!2761630 (not (isEmpty!38277 (tail!12674 s!2326))))))

(declare-fun b!6751210 () Bool)

(assert (=> b!6751210 (= e!4077263 (= (head!13589 s!2326) (c!1252663 lt!2441076)))))

(declare-fun b!6751211 () Bool)

(declare-fun res!2761629 () Bool)

(assert (=> b!6751211 (=> (not res!2761629) (not e!4077263))))

(assert (=> b!6751211 (= res!2761629 (isEmpty!38277 (tail!12674 s!2326)))))

(declare-fun b!6751212 () Bool)

(declare-fun e!4077266 () Bool)

(declare-fun derivativeStep!5253 (Regex!16583 C!33436) Regex!16583)

(assert (=> b!6751212 (= e!4077266 (matchR!8766 (derivativeStep!5253 lt!2441076 (head!13589 s!2326)) (tail!12674 s!2326)))))

(declare-fun d!2120589 () Bool)

(assert (=> d!2120589 e!4077265))

(declare-fun c!1252776 () Bool)

(assert (=> d!2120589 (= c!1252776 ((_ is EmptyExpr!16583) lt!2441076))))

(assert (=> d!2120589 (= lt!2441142 e!4077266)))

(declare-fun c!1252774 () Bool)

(assert (=> d!2120589 (= c!1252774 (isEmpty!38277 s!2326))))

(assert (=> d!2120589 (validRegex!8319 lt!2441076)))

(assert (=> d!2120589 (= (matchR!8766 lt!2441076 s!2326) lt!2441142)))

(declare-fun b!6751206 () Bool)

(declare-fun res!2761628 () Bool)

(assert (=> b!6751206 (=> res!2761628 e!4077262)))

(assert (=> b!6751206 (= res!2761628 (not ((_ is ElementMatch!16583) lt!2441076)))))

(assert (=> b!6751206 (= e!4077264 e!4077262)))

(declare-fun b!6751213 () Bool)

(declare-fun nullable!6568 (Regex!16583) Bool)

(assert (=> b!6751213 (= e!4077266 (nullable!6568 lt!2441076))))

(declare-fun b!6751214 () Bool)

(declare-fun res!2761632 () Bool)

(assert (=> b!6751214 (=> res!2761632 e!4077262)))

(assert (=> b!6751214 (= res!2761632 e!4077263)))

(declare-fun res!2761626 () Bool)

(assert (=> b!6751214 (=> (not res!2761626) (not e!4077263))))

(assert (=> b!6751214 (= res!2761626 lt!2441142)))

(assert (= (and d!2120589 c!1252774) b!6751213))

(assert (= (and d!2120589 (not c!1252774)) b!6751212))

(assert (= (and d!2120589 c!1252776) b!6751207))

(assert (= (and d!2120589 (not c!1252776)) b!6751208))

(assert (= (and b!6751208 c!1252775) b!6751202))

(assert (= (and b!6751208 (not c!1252775)) b!6751206))

(assert (= (and b!6751206 (not res!2761628)) b!6751214))

(assert (= (and b!6751214 res!2761626) b!6751201))

(assert (= (and b!6751201 res!2761627) b!6751211))

(assert (= (and b!6751211 res!2761629) b!6751210))

(assert (= (and b!6751214 (not res!2761632)) b!6751205))

(assert (= (and b!6751205 res!2761633) b!6751204))

(assert (= (and b!6751204 (not res!2761631)) b!6751209))

(assert (= (and b!6751209 (not res!2761630)) b!6751203))

(assert (= (or b!6751207 b!6751201 b!6751204) bm!610587))

(assert (=> bm!610587 m!7505008))

(declare-fun m!7505378 () Bool)

(assert (=> b!6751210 m!7505378))

(declare-fun m!7505380 () Bool)

(assert (=> b!6751209 m!7505380))

(assert (=> b!6751209 m!7505380))

(declare-fun m!7505382 () Bool)

(assert (=> b!6751209 m!7505382))

(declare-fun m!7505384 () Bool)

(assert (=> b!6751213 m!7505384))

(assert (=> b!6751211 m!7505380))

(assert (=> b!6751211 m!7505380))

(assert (=> b!6751211 m!7505382))

(assert (=> b!6751212 m!7505378))

(assert (=> b!6751212 m!7505378))

(declare-fun m!7505386 () Bool)

(assert (=> b!6751212 m!7505386))

(assert (=> b!6751212 m!7505380))

(assert (=> b!6751212 m!7505386))

(assert (=> b!6751212 m!7505380))

(declare-fun m!7505388 () Bool)

(assert (=> b!6751212 m!7505388))

(assert (=> d!2120589 m!7505008))

(declare-fun m!7505390 () Bool)

(assert (=> d!2120589 m!7505390))

(assert (=> b!6751203 m!7505378))

(assert (=> b!6750768 d!2120589))

(declare-fun d!2120611 () Bool)

(assert (=> d!2120611 (= (matchR!8766 lt!2441076 s!2326) (matchRSpec!3684 lt!2441076 s!2326))))

(declare-fun lt!2441146 () Unit!159857)

(declare-fun choose!50364 (Regex!16583 List!66050) Unit!159857)

(assert (=> d!2120611 (= lt!2441146 (choose!50364 lt!2441076 s!2326))))

(assert (=> d!2120611 (validRegex!8319 lt!2441076)))

(assert (=> d!2120611 (= (mainMatchTheorem!3684 lt!2441076 s!2326) lt!2441146)))

(declare-fun bs!1794494 () Bool)

(assert (= bs!1794494 d!2120611))

(assert (=> bs!1794494 m!7505040))

(assert (=> bs!1794494 m!7505038))

(declare-fun m!7505412 () Bool)

(assert (=> bs!1794494 m!7505412))

(assert (=> bs!1794494 m!7505390))

(assert (=> b!6750768 d!2120611))

(declare-fun d!2120615 () Bool)

(declare-fun lt!2441151 () Regex!16583)

(assert (=> d!2120615 (validRegex!8319 lt!2441151)))

(assert (=> d!2120615 (= lt!2441151 (generalisedUnion!2427 (unfocusZipperList!2004 zl!343)))))

(assert (=> d!2120615 (= (unfocusZipper!2325 zl!343) lt!2441151)))

(declare-fun bs!1794495 () Bool)

(assert (= bs!1794495 d!2120615))

(declare-fun m!7505414 () Bool)

(assert (=> bs!1794495 m!7505414))

(assert (=> bs!1794495 m!7505028))

(assert (=> bs!1794495 m!7505028))

(assert (=> bs!1794495 m!7505030))

(assert (=> b!6750770 d!2120615))

(declare-fun b!6751243 () Bool)

(declare-fun res!2761639 () Bool)

(declare-fun e!4077286 () Bool)

(assert (=> b!6751243 (=> (not res!2761639) (not e!4077286))))

(declare-fun call!610593 () Bool)

(assert (=> b!6751243 (= res!2761639 (not call!610593))))

(declare-fun bm!610588 () Bool)

(assert (=> bm!610588 (= call!610593 (isEmpty!38277 (_1!36861 lt!2441063)))))

(declare-fun b!6751244 () Bool)

(declare-fun e!4077287 () Bool)

(declare-fun lt!2441152 () Bool)

(assert (=> b!6751244 (= e!4077287 (not lt!2441152))))

(declare-fun b!6751245 () Bool)

(declare-fun e!4077291 () Bool)

(assert (=> b!6751245 (= e!4077291 (not (= (head!13589 (_1!36861 lt!2441063)) (c!1252663 (reg!16912 r!7292)))))))

(declare-fun b!6751246 () Bool)

(declare-fun e!4077290 () Bool)

(assert (=> b!6751246 (= e!4077290 e!4077291)))

(declare-fun res!2761643 () Bool)

(assert (=> b!6751246 (=> res!2761643 e!4077291)))

(assert (=> b!6751246 (= res!2761643 call!610593)))

(declare-fun b!6751247 () Bool)

(declare-fun e!4077285 () Bool)

(assert (=> b!6751247 (= e!4077285 e!4077290)))

(declare-fun res!2761645 () Bool)

(assert (=> b!6751247 (=> (not res!2761645) (not e!4077290))))

(assert (=> b!6751247 (= res!2761645 (not lt!2441152))))

(declare-fun b!6751249 () Bool)

(declare-fun e!4077288 () Bool)

(assert (=> b!6751249 (= e!4077288 (= lt!2441152 call!610593))))

(declare-fun b!6751250 () Bool)

(assert (=> b!6751250 (= e!4077288 e!4077287)))

(declare-fun c!1252790 () Bool)

(assert (=> b!6751250 (= c!1252790 ((_ is EmptyLang!16583) (reg!16912 r!7292)))))

(declare-fun b!6751251 () Bool)

(declare-fun res!2761642 () Bool)

(assert (=> b!6751251 (=> res!2761642 e!4077291)))

(assert (=> b!6751251 (= res!2761642 (not (isEmpty!38277 (tail!12674 (_1!36861 lt!2441063)))))))

(declare-fun b!6751252 () Bool)

(assert (=> b!6751252 (= e!4077286 (= (head!13589 (_1!36861 lt!2441063)) (c!1252663 (reg!16912 r!7292))))))

(declare-fun b!6751253 () Bool)

(declare-fun res!2761641 () Bool)

(assert (=> b!6751253 (=> (not res!2761641) (not e!4077286))))

(assert (=> b!6751253 (= res!2761641 (isEmpty!38277 (tail!12674 (_1!36861 lt!2441063))))))

(declare-fun b!6751254 () Bool)

(declare-fun e!4077289 () Bool)

(assert (=> b!6751254 (= e!4077289 (matchR!8766 (derivativeStep!5253 (reg!16912 r!7292) (head!13589 (_1!36861 lt!2441063))) (tail!12674 (_1!36861 lt!2441063))))))

(declare-fun d!2120617 () Bool)

(assert (=> d!2120617 e!4077288))

(declare-fun c!1252791 () Bool)

(assert (=> d!2120617 (= c!1252791 ((_ is EmptyExpr!16583) (reg!16912 r!7292)))))

(assert (=> d!2120617 (= lt!2441152 e!4077289)))

(declare-fun c!1252789 () Bool)

(assert (=> d!2120617 (= c!1252789 (isEmpty!38277 (_1!36861 lt!2441063)))))

(assert (=> d!2120617 (validRegex!8319 (reg!16912 r!7292))))

(assert (=> d!2120617 (= (matchR!8766 (reg!16912 r!7292) (_1!36861 lt!2441063)) lt!2441152)))

(declare-fun b!6751248 () Bool)

(declare-fun res!2761640 () Bool)

(assert (=> b!6751248 (=> res!2761640 e!4077285)))

(assert (=> b!6751248 (= res!2761640 (not ((_ is ElementMatch!16583) (reg!16912 r!7292))))))

(assert (=> b!6751248 (= e!4077287 e!4077285)))

(declare-fun b!6751255 () Bool)

(assert (=> b!6751255 (= e!4077289 (nullable!6568 (reg!16912 r!7292)))))

(declare-fun b!6751256 () Bool)

(declare-fun res!2761644 () Bool)

(assert (=> b!6751256 (=> res!2761644 e!4077285)))

(assert (=> b!6751256 (= res!2761644 e!4077286)))

(declare-fun res!2761638 () Bool)

(assert (=> b!6751256 (=> (not res!2761638) (not e!4077286))))

(assert (=> b!6751256 (= res!2761638 lt!2441152)))

(assert (= (and d!2120617 c!1252789) b!6751255))

(assert (= (and d!2120617 (not c!1252789)) b!6751254))

(assert (= (and d!2120617 c!1252791) b!6751249))

(assert (= (and d!2120617 (not c!1252791)) b!6751250))

(assert (= (and b!6751250 c!1252790) b!6751244))

(assert (= (and b!6751250 (not c!1252790)) b!6751248))

(assert (= (and b!6751248 (not res!2761640)) b!6751256))

(assert (= (and b!6751256 res!2761638) b!6751243))

(assert (= (and b!6751243 res!2761639) b!6751253))

(assert (= (and b!6751253 res!2761641) b!6751252))

(assert (= (and b!6751256 (not res!2761644)) b!6751247))

(assert (= (and b!6751247 res!2761645) b!6751246))

(assert (= (and b!6751246 (not res!2761643)) b!6751251))

(assert (= (and b!6751251 (not res!2761642)) b!6751245))

(assert (= (or b!6751249 b!6751243 b!6751246) bm!610588))

(declare-fun m!7505416 () Bool)

(assert (=> bm!610588 m!7505416))

(declare-fun m!7505418 () Bool)

(assert (=> b!6751252 m!7505418))

(declare-fun m!7505420 () Bool)

(assert (=> b!6751251 m!7505420))

(assert (=> b!6751251 m!7505420))

(declare-fun m!7505422 () Bool)

(assert (=> b!6751251 m!7505422))

(declare-fun m!7505424 () Bool)

(assert (=> b!6751255 m!7505424))

(assert (=> b!6751253 m!7505420))

(assert (=> b!6751253 m!7505420))

(assert (=> b!6751253 m!7505422))

(assert (=> b!6751254 m!7505418))

(assert (=> b!6751254 m!7505418))

(declare-fun m!7505426 () Bool)

(assert (=> b!6751254 m!7505426))

(assert (=> b!6751254 m!7505420))

(assert (=> b!6751254 m!7505426))

(assert (=> b!6751254 m!7505420))

(declare-fun m!7505428 () Bool)

(assert (=> b!6751254 m!7505428))

(assert (=> d!2120617 m!7505416))

(assert (=> d!2120617 m!7505006))

(assert (=> b!6751245 m!7505418))

(assert (=> b!6750750 d!2120617))

(declare-fun d!2120619 () Bool)

(declare-fun c!1252799 () Bool)

(assert (=> d!2120619 (= c!1252799 (isEmpty!38277 s!2326))))

(declare-fun e!4077302 () Bool)

(assert (=> d!2120619 (= (matchZipper!2569 lt!2441072 s!2326) e!4077302)))

(declare-fun b!6751274 () Bool)

(declare-fun nullableZipper!2296 ((InoxSet Context!11934)) Bool)

(assert (=> b!6751274 (= e!4077302 (nullableZipper!2296 lt!2441072))))

(declare-fun b!6751275 () Bool)

(assert (=> b!6751275 (= e!4077302 (matchZipper!2569 (derivationStepZipper!2527 lt!2441072 (head!13589 s!2326)) (tail!12674 s!2326)))))

(assert (= (and d!2120619 c!1252799) b!6751274))

(assert (= (and d!2120619 (not c!1252799)) b!6751275))

(assert (=> d!2120619 m!7505008))

(declare-fun m!7505434 () Bool)

(assert (=> b!6751274 m!7505434))

(assert (=> b!6751275 m!7505378))

(assert (=> b!6751275 m!7505378))

(declare-fun m!7505436 () Bool)

(assert (=> b!6751275 m!7505436))

(assert (=> b!6751275 m!7505380))

(assert (=> b!6751275 m!7505436))

(assert (=> b!6751275 m!7505380))

(declare-fun m!7505438 () Bool)

(assert (=> b!6751275 m!7505438))

(assert (=> b!6750769 d!2120619))

(declare-fun d!2120623 () Bool)

(declare-fun c!1252800 () Bool)

(assert (=> d!2120623 (= c!1252800 (isEmpty!38277 (t!379753 s!2326)))))

(declare-fun e!4077303 () Bool)

(assert (=> d!2120623 (= (matchZipper!2569 (derivationStepZipper!2527 lt!2441072 (h!72374 s!2326)) (t!379753 s!2326)) e!4077303)))

(declare-fun b!6751276 () Bool)

(assert (=> b!6751276 (= e!4077303 (nullableZipper!2296 (derivationStepZipper!2527 lt!2441072 (h!72374 s!2326))))))

(declare-fun b!6751277 () Bool)

(assert (=> b!6751277 (= e!4077303 (matchZipper!2569 (derivationStepZipper!2527 (derivationStepZipper!2527 lt!2441072 (h!72374 s!2326)) (head!13589 (t!379753 s!2326))) (tail!12674 (t!379753 s!2326))))))

(assert (= (and d!2120623 c!1252800) b!6751276))

(assert (= (and d!2120623 (not c!1252800)) b!6751277))

(declare-fun m!7505440 () Bool)

(assert (=> d!2120623 m!7505440))

(assert (=> b!6751276 m!7505092))

(declare-fun m!7505442 () Bool)

(assert (=> b!6751276 m!7505442))

(declare-fun m!7505444 () Bool)

(assert (=> b!6751277 m!7505444))

(assert (=> b!6751277 m!7505092))

(assert (=> b!6751277 m!7505444))

(declare-fun m!7505446 () Bool)

(assert (=> b!6751277 m!7505446))

(declare-fun m!7505448 () Bool)

(assert (=> b!6751277 m!7505448))

(assert (=> b!6751277 m!7505446))

(assert (=> b!6751277 m!7505448))

(declare-fun m!7505450 () Bool)

(assert (=> b!6751277 m!7505450))

(assert (=> b!6750769 d!2120623))

(declare-fun bs!1794511 () Bool)

(declare-fun d!2120625 () Bool)

(assert (= bs!1794511 (and d!2120625 b!6750745)))

(declare-fun lambda!379793 () Int)

(assert (=> bs!1794511 (= lambda!379793 lambda!379729)))

(assert (=> d!2120625 true))

(assert (=> d!2120625 (= (derivationStepZipper!2527 lt!2441072 (h!72374 s!2326)) (flatMap!2064 lt!2441072 lambda!379793))))

(declare-fun bs!1794512 () Bool)

(assert (= bs!1794512 d!2120625))

(declare-fun m!7505458 () Bool)

(assert (=> bs!1794512 m!7505458))

(assert (=> b!6750769 d!2120625))

(declare-fun d!2120629 () Bool)

(assert (=> d!2120629 (= (isEmpty!38278 (t!379752 zl!343)) ((_ is Nil!65925) (t!379752 zl!343)))))

(assert (=> b!6750752 d!2120629))

(declare-fun bs!1794525 () Bool)

(declare-fun d!2120635 () Bool)

(assert (= bs!1794525 (and d!2120635 d!2120509)))

(declare-fun lambda!379800 () Int)

(assert (=> bs!1794525 (= lambda!379800 lambda!379732)))

(declare-fun b!6751341 () Bool)

(declare-fun e!4077341 () Bool)

(declare-fun lt!2441161 () Regex!16583)

(declare-fun isEmptyLang!1954 (Regex!16583) Bool)

(assert (=> b!6751341 (= e!4077341 (isEmptyLang!1954 lt!2441161))))

(declare-fun b!6751343 () Bool)

(declare-fun e!4077344 () Regex!16583)

(assert (=> b!6751343 (= e!4077344 (h!72372 (unfocusZipperList!2004 zl!343)))))

(declare-fun b!6751345 () Bool)

(declare-fun e!4077342 () Regex!16583)

(assert (=> b!6751345 (= e!4077344 e!4077342)))

(declare-fun c!1252826 () Bool)

(assert (=> b!6751345 (= c!1252826 ((_ is Cons!65924) (unfocusZipperList!2004 zl!343)))))

(declare-fun b!6751346 () Bool)

(assert (=> b!6751346 (= e!4077342 (Union!16583 (h!72372 (unfocusZipperList!2004 zl!343)) (generalisedUnion!2427 (t!379751 (unfocusZipperList!2004 zl!343)))))))

(declare-fun b!6751347 () Bool)

(declare-fun e!4077339 () Bool)

(declare-fun head!13590 (List!66048) Regex!16583)

(assert (=> b!6751347 (= e!4077339 (= lt!2441161 (head!13590 (unfocusZipperList!2004 zl!343))))))

(declare-fun b!6751349 () Bool)

(declare-fun e!4077343 () Bool)

(assert (=> b!6751349 (= e!4077343 e!4077341)))

(declare-fun c!1252823 () Bool)

(declare-fun isEmpty!38282 (List!66048) Bool)

(assert (=> b!6751349 (= c!1252823 (isEmpty!38282 (unfocusZipperList!2004 zl!343)))))

(declare-fun b!6751350 () Bool)

(declare-fun e!4077340 () Bool)

(assert (=> b!6751350 (= e!4077340 (isEmpty!38282 (t!379751 (unfocusZipperList!2004 zl!343))))))

(declare-fun b!6751348 () Bool)

(assert (=> b!6751348 (= e!4077341 e!4077339)))

(declare-fun c!1252824 () Bool)

(declare-fun tail!12675 (List!66048) List!66048)

(assert (=> b!6751348 (= c!1252824 (isEmpty!38282 (tail!12675 (unfocusZipperList!2004 zl!343))))))

(assert (=> d!2120635 e!4077343))

(declare-fun res!2761668 () Bool)

(assert (=> d!2120635 (=> (not res!2761668) (not e!4077343))))

(assert (=> d!2120635 (= res!2761668 (validRegex!8319 lt!2441161))))

(assert (=> d!2120635 (= lt!2441161 e!4077344)))

(declare-fun c!1252825 () Bool)

(assert (=> d!2120635 (= c!1252825 e!4077340)))

(declare-fun res!2761669 () Bool)

(assert (=> d!2120635 (=> (not res!2761669) (not e!4077340))))

(assert (=> d!2120635 (= res!2761669 ((_ is Cons!65924) (unfocusZipperList!2004 zl!343)))))

(assert (=> d!2120635 (forall!15781 (unfocusZipperList!2004 zl!343) lambda!379800)))

(assert (=> d!2120635 (= (generalisedUnion!2427 (unfocusZipperList!2004 zl!343)) lt!2441161)))

(declare-fun b!6751351 () Bool)

(assert (=> b!6751351 (= e!4077342 EmptyLang!16583)))

(declare-fun b!6751352 () Bool)

(declare-fun isUnion!1384 (Regex!16583) Bool)

(assert (=> b!6751352 (= e!4077339 (isUnion!1384 lt!2441161))))

(assert (= (and d!2120635 res!2761669) b!6751350))

(assert (= (and d!2120635 c!1252825) b!6751343))

(assert (= (and d!2120635 (not c!1252825)) b!6751345))

(assert (= (and b!6751345 c!1252826) b!6751346))

(assert (= (and b!6751345 (not c!1252826)) b!6751351))

(assert (= (and d!2120635 res!2761668) b!6751349))

(assert (= (and b!6751349 c!1252823) b!6751341))

(assert (= (and b!6751349 (not c!1252823)) b!6751348))

(assert (= (and b!6751348 c!1252824) b!6751347))

(assert (= (and b!6751348 (not c!1252824)) b!6751352))

(declare-fun m!7505496 () Bool)

(assert (=> b!6751352 m!7505496))

(declare-fun m!7505498 () Bool)

(assert (=> b!6751346 m!7505498))

(declare-fun m!7505500 () Bool)

(assert (=> b!6751350 m!7505500))

(assert (=> b!6751347 m!7505028))

(declare-fun m!7505502 () Bool)

(assert (=> b!6751347 m!7505502))

(assert (=> b!6751349 m!7505028))

(declare-fun m!7505504 () Bool)

(assert (=> b!6751349 m!7505504))

(assert (=> b!6751348 m!7505028))

(declare-fun m!7505506 () Bool)

(assert (=> b!6751348 m!7505506))

(assert (=> b!6751348 m!7505506))

(declare-fun m!7505508 () Bool)

(assert (=> b!6751348 m!7505508))

(declare-fun m!7505510 () Bool)

(assert (=> b!6751341 m!7505510))

(declare-fun m!7505512 () Bool)

(assert (=> d!2120635 m!7505512))

(assert (=> d!2120635 m!7505028))

(declare-fun m!7505514 () Bool)

(assert (=> d!2120635 m!7505514))

(assert (=> b!6750772 d!2120635))

(declare-fun bs!1794526 () Bool)

(declare-fun d!2120651 () Bool)

(assert (= bs!1794526 (and d!2120651 d!2120509)))

(declare-fun lambda!379803 () Int)

(assert (=> bs!1794526 (= lambda!379803 lambda!379732)))

(declare-fun bs!1794527 () Bool)

(assert (= bs!1794527 (and d!2120651 d!2120635)))

(assert (=> bs!1794527 (= lambda!379803 lambda!379800)))

(declare-fun lt!2441165 () List!66048)

(assert (=> d!2120651 (forall!15781 lt!2441165 lambda!379803)))

(declare-fun e!4077360 () List!66048)

(assert (=> d!2120651 (= lt!2441165 e!4077360)))

(declare-fun c!1252832 () Bool)

(assert (=> d!2120651 (= c!1252832 ((_ is Cons!65925) zl!343))))

(assert (=> d!2120651 (= (unfocusZipperList!2004 zl!343) lt!2441165)))

(declare-fun b!6751376 () Bool)

(assert (=> b!6751376 (= e!4077360 (Cons!65924 (generalisedConcat!2180 (exprs!6467 (h!72373 zl!343))) (unfocusZipperList!2004 (t!379752 zl!343))))))

(declare-fun b!6751377 () Bool)

(assert (=> b!6751377 (= e!4077360 Nil!65924)))

(assert (= (and d!2120651 c!1252832) b!6751376))

(assert (= (and d!2120651 (not c!1252832)) b!6751377))

(declare-fun m!7505532 () Bool)

(assert (=> d!2120651 m!7505532))

(assert (=> b!6751376 m!7505024))

(declare-fun m!7505534 () Bool)

(assert (=> b!6751376 m!7505534))

(assert (=> b!6750772 d!2120651))

(declare-fun bs!1794532 () Bool)

(declare-fun d!2120655 () Bool)

(assert (= bs!1794532 (and d!2120655 d!2120509)))

(declare-fun lambda!379806 () Int)

(assert (=> bs!1794532 (= lambda!379806 lambda!379732)))

(declare-fun bs!1794533 () Bool)

(assert (= bs!1794533 (and d!2120655 d!2120635)))

(assert (=> bs!1794533 (= lambda!379806 lambda!379800)))

(declare-fun bs!1794534 () Bool)

(assert (= bs!1794534 (and d!2120655 d!2120651)))

(assert (=> bs!1794534 (= lambda!379806 lambda!379803)))

(declare-fun e!4077392 () Bool)

(assert (=> d!2120655 e!4077392))

(declare-fun res!2761681 () Bool)

(assert (=> d!2120655 (=> (not res!2761681) (not e!4077392))))

(declare-fun lt!2441168 () Regex!16583)

(assert (=> d!2120655 (= res!2761681 (validRegex!8319 lt!2441168))))

(declare-fun e!4077393 () Regex!16583)

(assert (=> d!2120655 (= lt!2441168 e!4077393)))

(declare-fun c!1252844 () Bool)

(declare-fun e!4077390 () Bool)

(assert (=> d!2120655 (= c!1252844 e!4077390)))

(declare-fun res!2761680 () Bool)

(assert (=> d!2120655 (=> (not res!2761680) (not e!4077390))))

(assert (=> d!2120655 (= res!2761680 ((_ is Cons!65924) (exprs!6467 (h!72373 zl!343))))))

(assert (=> d!2120655 (forall!15781 (exprs!6467 (h!72373 zl!343)) lambda!379806)))

(assert (=> d!2120655 (= (generalisedConcat!2180 (exprs!6467 (h!72373 zl!343))) lt!2441168)))

(declare-fun b!6751441 () Bool)

(declare-fun e!4077391 () Bool)

(declare-fun isConcat!1470 (Regex!16583) Bool)

(assert (=> b!6751441 (= e!4077391 (isConcat!1470 lt!2441168))))

(declare-fun b!6751442 () Bool)

(assert (=> b!6751442 (= e!4077393 (h!72372 (exprs!6467 (h!72373 zl!343))))))

(declare-fun b!6751443 () Bool)

(declare-fun e!4077389 () Bool)

(assert (=> b!6751443 (= e!4077389 e!4077391)))

(declare-fun c!1252843 () Bool)

(assert (=> b!6751443 (= c!1252843 (isEmpty!38282 (tail!12675 (exprs!6467 (h!72373 zl!343)))))))

(declare-fun b!6751444 () Bool)

(declare-fun e!4077394 () Regex!16583)

(assert (=> b!6751444 (= e!4077393 e!4077394)))

(declare-fun c!1252842 () Bool)

(assert (=> b!6751444 (= c!1252842 ((_ is Cons!65924) (exprs!6467 (h!72373 zl!343))))))

(declare-fun b!6751445 () Bool)

(assert (=> b!6751445 (= e!4077394 EmptyExpr!16583)))

(declare-fun b!6751446 () Bool)

(declare-fun isEmptyExpr!1947 (Regex!16583) Bool)

(assert (=> b!6751446 (= e!4077389 (isEmptyExpr!1947 lt!2441168))))

(declare-fun b!6751447 () Bool)

(assert (=> b!6751447 (= e!4077394 (Concat!25428 (h!72372 (exprs!6467 (h!72373 zl!343))) (generalisedConcat!2180 (t!379751 (exprs!6467 (h!72373 zl!343))))))))

(declare-fun b!6751448 () Bool)

(assert (=> b!6751448 (= e!4077391 (= lt!2441168 (head!13590 (exprs!6467 (h!72373 zl!343)))))))

(declare-fun b!6751449 () Bool)

(assert (=> b!6751449 (= e!4077392 e!4077389)))

(declare-fun c!1252841 () Bool)

(assert (=> b!6751449 (= c!1252841 (isEmpty!38282 (exprs!6467 (h!72373 zl!343))))))

(declare-fun b!6751450 () Bool)

(assert (=> b!6751450 (= e!4077390 (isEmpty!38282 (t!379751 (exprs!6467 (h!72373 zl!343)))))))

(assert (= (and d!2120655 res!2761680) b!6751450))

(assert (= (and d!2120655 c!1252844) b!6751442))

(assert (= (and d!2120655 (not c!1252844)) b!6751444))

(assert (= (and b!6751444 c!1252842) b!6751447))

(assert (= (and b!6751444 (not c!1252842)) b!6751445))

(assert (= (and d!2120655 res!2761681) b!6751449))

(assert (= (and b!6751449 c!1252841) b!6751446))

(assert (= (and b!6751449 (not c!1252841)) b!6751443))

(assert (= (and b!6751443 c!1252843) b!6751448))

(assert (= (and b!6751443 (not c!1252843)) b!6751441))

(declare-fun m!7505538 () Bool)

(assert (=> b!6751446 m!7505538))

(declare-fun m!7505540 () Bool)

(assert (=> b!6751447 m!7505540))

(declare-fun m!7505542 () Bool)

(assert (=> b!6751441 m!7505542))

(declare-fun m!7505544 () Bool)

(assert (=> d!2120655 m!7505544))

(declare-fun m!7505546 () Bool)

(assert (=> d!2120655 m!7505546))

(declare-fun m!7505548 () Bool)

(assert (=> b!6751450 m!7505548))

(declare-fun m!7505550 () Bool)

(assert (=> b!6751448 m!7505550))

(declare-fun m!7505552 () Bool)

(assert (=> b!6751449 m!7505552))

(declare-fun m!7505554 () Bool)

(assert (=> b!6751443 m!7505554))

(assert (=> b!6751443 m!7505554))

(declare-fun m!7505556 () Bool)

(assert (=> b!6751443 m!7505556))

(assert (=> b!6750756 d!2120655))

(declare-fun b!6751451 () Bool)

(declare-fun res!2761683 () Bool)

(declare-fun e!4077396 () Bool)

(assert (=> b!6751451 (=> (not res!2761683) (not e!4077396))))

(declare-fun call!610607 () Bool)

(assert (=> b!6751451 (= res!2761683 (not call!610607))))

(declare-fun bm!610602 () Bool)

(assert (=> bm!610602 (= call!610607 (isEmpty!38277 (_2!36861 lt!2441063)))))

(declare-fun b!6751452 () Bool)

(declare-fun e!4077397 () Bool)

(declare-fun lt!2441169 () Bool)

(assert (=> b!6751452 (= e!4077397 (not lt!2441169))))

(declare-fun b!6751453 () Bool)

(declare-fun e!4077401 () Bool)

(assert (=> b!6751453 (= e!4077401 (not (= (head!13589 (_2!36861 lt!2441063)) (c!1252663 r!7292))))))

(declare-fun b!6751454 () Bool)

(declare-fun e!4077400 () Bool)

(assert (=> b!6751454 (= e!4077400 e!4077401)))

(declare-fun res!2761687 () Bool)

(assert (=> b!6751454 (=> res!2761687 e!4077401)))

(assert (=> b!6751454 (= res!2761687 call!610607)))

(declare-fun b!6751455 () Bool)

(declare-fun e!4077395 () Bool)

(assert (=> b!6751455 (= e!4077395 e!4077400)))

(declare-fun res!2761689 () Bool)

(assert (=> b!6751455 (=> (not res!2761689) (not e!4077400))))

(assert (=> b!6751455 (= res!2761689 (not lt!2441169))))

(declare-fun b!6751457 () Bool)

(declare-fun e!4077398 () Bool)

(assert (=> b!6751457 (= e!4077398 (= lt!2441169 call!610607))))

(declare-fun b!6751458 () Bool)

(assert (=> b!6751458 (= e!4077398 e!4077397)))

(declare-fun c!1252846 () Bool)

(assert (=> b!6751458 (= c!1252846 ((_ is EmptyLang!16583) r!7292))))

(declare-fun b!6751459 () Bool)

(declare-fun res!2761686 () Bool)

(assert (=> b!6751459 (=> res!2761686 e!4077401)))

(assert (=> b!6751459 (= res!2761686 (not (isEmpty!38277 (tail!12674 (_2!36861 lt!2441063)))))))

(declare-fun b!6751460 () Bool)

(assert (=> b!6751460 (= e!4077396 (= (head!13589 (_2!36861 lt!2441063)) (c!1252663 r!7292)))))

(declare-fun b!6751461 () Bool)

(declare-fun res!2761685 () Bool)

(assert (=> b!6751461 (=> (not res!2761685) (not e!4077396))))

(assert (=> b!6751461 (= res!2761685 (isEmpty!38277 (tail!12674 (_2!36861 lt!2441063))))))

(declare-fun b!6751462 () Bool)

(declare-fun e!4077399 () Bool)

(assert (=> b!6751462 (= e!4077399 (matchR!8766 (derivativeStep!5253 r!7292 (head!13589 (_2!36861 lt!2441063))) (tail!12674 (_2!36861 lt!2441063))))))

(declare-fun d!2120665 () Bool)

(assert (=> d!2120665 e!4077398))

(declare-fun c!1252847 () Bool)

(assert (=> d!2120665 (= c!1252847 ((_ is EmptyExpr!16583) r!7292))))

(assert (=> d!2120665 (= lt!2441169 e!4077399)))

(declare-fun c!1252845 () Bool)

(assert (=> d!2120665 (= c!1252845 (isEmpty!38277 (_2!36861 lt!2441063)))))

(assert (=> d!2120665 (validRegex!8319 r!7292)))

(assert (=> d!2120665 (= (matchR!8766 r!7292 (_2!36861 lt!2441063)) lt!2441169)))

(declare-fun b!6751456 () Bool)

(declare-fun res!2761684 () Bool)

(assert (=> b!6751456 (=> res!2761684 e!4077395)))

(assert (=> b!6751456 (= res!2761684 (not ((_ is ElementMatch!16583) r!7292)))))

(assert (=> b!6751456 (= e!4077397 e!4077395)))

(declare-fun b!6751463 () Bool)

(assert (=> b!6751463 (= e!4077399 (nullable!6568 r!7292))))

(declare-fun b!6751464 () Bool)

(declare-fun res!2761688 () Bool)

(assert (=> b!6751464 (=> res!2761688 e!4077395)))

(assert (=> b!6751464 (= res!2761688 e!4077396)))

(declare-fun res!2761682 () Bool)

(assert (=> b!6751464 (=> (not res!2761682) (not e!4077396))))

(assert (=> b!6751464 (= res!2761682 lt!2441169)))

(assert (= (and d!2120665 c!1252845) b!6751463))

(assert (= (and d!2120665 (not c!1252845)) b!6751462))

(assert (= (and d!2120665 c!1252847) b!6751457))

(assert (= (and d!2120665 (not c!1252847)) b!6751458))

(assert (= (and b!6751458 c!1252846) b!6751452))

(assert (= (and b!6751458 (not c!1252846)) b!6751456))

(assert (= (and b!6751456 (not res!2761684)) b!6751464))

(assert (= (and b!6751464 res!2761682) b!6751451))

(assert (= (and b!6751451 res!2761683) b!6751461))

(assert (= (and b!6751461 res!2761685) b!6751460))

(assert (= (and b!6751464 (not res!2761688)) b!6751455))

(assert (= (and b!6751455 res!2761689) b!6751454))

(assert (= (and b!6751454 (not res!2761687)) b!6751459))

(assert (= (and b!6751459 (not res!2761686)) b!6751453))

(assert (= (or b!6751457 b!6751451 b!6751454) bm!610602))

(declare-fun m!7505558 () Bool)

(assert (=> bm!610602 m!7505558))

(declare-fun m!7505560 () Bool)

(assert (=> b!6751460 m!7505560))

(declare-fun m!7505562 () Bool)

(assert (=> b!6751459 m!7505562))

(assert (=> b!6751459 m!7505562))

(declare-fun m!7505564 () Bool)

(assert (=> b!6751459 m!7505564))

(declare-fun m!7505566 () Bool)

(assert (=> b!6751463 m!7505566))

(assert (=> b!6751461 m!7505562))

(assert (=> b!6751461 m!7505562))

(assert (=> b!6751461 m!7505564))

(assert (=> b!6751462 m!7505560))

(assert (=> b!6751462 m!7505560))

(declare-fun m!7505568 () Bool)

(assert (=> b!6751462 m!7505568))

(assert (=> b!6751462 m!7505562))

(assert (=> b!6751462 m!7505568))

(assert (=> b!6751462 m!7505562))

(declare-fun m!7505570 () Bool)

(assert (=> b!6751462 m!7505570))

(assert (=> d!2120665 m!7505558))

(assert (=> d!2120665 m!7505002))

(assert (=> b!6751453 m!7505560))

(assert (=> b!6750755 d!2120665))

(declare-fun d!2120667 () Bool)

(declare-fun e!4077404 () Bool)

(assert (=> d!2120667 e!4077404))

(declare-fun res!2761692 () Bool)

(assert (=> d!2120667 (=> (not res!2761692) (not e!4077404))))

(declare-fun lt!2441172 () List!66049)

(declare-fun noDuplicate!2374 (List!66049) Bool)

(assert (=> d!2120667 (= res!2761692 (noDuplicate!2374 lt!2441172))))

(declare-fun choose!50365 ((InoxSet Context!11934)) List!66049)

(assert (=> d!2120667 (= lt!2441172 (choose!50365 z!1189))))

(assert (=> d!2120667 (= (toList!10367 z!1189) lt!2441172)))

(declare-fun b!6751467 () Bool)

(declare-fun content!12823 (List!66049) (InoxSet Context!11934))

(assert (=> b!6751467 (= e!4077404 (= (content!12823 lt!2441172) z!1189))))

(assert (= (and d!2120667 res!2761692) b!6751467))

(declare-fun m!7505572 () Bool)

(assert (=> d!2120667 m!7505572))

(declare-fun m!7505574 () Bool)

(assert (=> d!2120667 m!7505574))

(declare-fun m!7505576 () Bool)

(assert (=> b!6751467 m!7505576))

(assert (=> b!6750738 d!2120667))

(declare-fun bm!610615 () Bool)

(declare-fun c!1252860 () Bool)

(declare-fun call!610624 () List!66048)

(declare-fun call!610622 () (InoxSet Context!11934))

(assert (=> bm!610615 (= call!610622 (derivationStepZipperDown!1811 (ite c!1252860 (regOne!33679 r!7292) (regOne!33678 r!7292)) (ite c!1252860 (Context!11935 Nil!65924) (Context!11935 call!610624)) (h!72374 s!2326)))))

(declare-fun bm!610616 () Bool)

(declare-fun call!610625 () (InoxSet Context!11934))

(declare-fun call!610621 () (InoxSet Context!11934))

(assert (=> bm!610616 (= call!610625 call!610621)))

(declare-fun b!6751490 () Bool)

(declare-fun e!4077418 () (InoxSet Context!11934))

(declare-fun call!610623 () (InoxSet Context!11934))

(assert (=> b!6751490 (= e!4077418 ((_ map or) call!610622 call!610623))))

(declare-fun b!6751491 () Bool)

(declare-fun e!4077420 () (InoxSet Context!11934))

(assert (=> b!6751491 (= e!4077420 ((_ map or) call!610622 call!610621))))

(declare-fun bm!610617 () Bool)

(declare-fun call!610620 () List!66048)

(assert (=> bm!610617 (= call!610620 call!610624)))

(declare-fun c!1252858 () Bool)

(declare-fun c!1252861 () Bool)

(declare-fun bm!610618 () Bool)

(assert (=> bm!610618 (= call!610623 (derivationStepZipperDown!1811 (ite c!1252860 (regTwo!33679 r!7292) (ite c!1252861 (regTwo!33678 r!7292) (ite c!1252858 (regOne!33678 r!7292) (reg!16912 r!7292)))) (ite (or c!1252860 c!1252861) (Context!11935 Nil!65924) (Context!11935 call!610620)) (h!72374 s!2326)))))

(declare-fun b!6751492 () Bool)

(declare-fun e!4077417 () (InoxSet Context!11934))

(assert (=> b!6751492 (= e!4077417 call!610625)))

(declare-fun b!6751493 () Bool)

(declare-fun e!4077421 () (InoxSet Context!11934))

(assert (=> b!6751493 (= e!4077421 e!4077418)))

(assert (=> b!6751493 (= c!1252860 ((_ is Union!16583) r!7292))))

(declare-fun b!6751494 () Bool)

(declare-fun e!4077419 () (InoxSet Context!11934))

(assert (=> b!6751494 (= e!4077419 call!610625)))

(declare-fun b!6751495 () Bool)

(assert (=> b!6751495 (= e!4077419 ((as const (Array Context!11934 Bool)) false))))

(declare-fun b!6751496 () Bool)

(assert (=> b!6751496 (= e!4077420 e!4077417)))

(assert (=> b!6751496 (= c!1252858 ((_ is Concat!25428) r!7292))))

(declare-fun b!6751497 () Bool)

(assert (=> b!6751497 (= e!4077421 (store ((as const (Array Context!11934 Bool)) false) (Context!11935 Nil!65924) true))))

(declare-fun bm!610619 () Bool)

(assert (=> bm!610619 (= call!610621 call!610623)))

(declare-fun b!6751498 () Bool)

(declare-fun e!4077422 () Bool)

(assert (=> b!6751498 (= c!1252861 e!4077422)))

(declare-fun res!2761695 () Bool)

(assert (=> b!6751498 (=> (not res!2761695) (not e!4077422))))

(assert (=> b!6751498 (= res!2761695 ((_ is Concat!25428) r!7292))))

(assert (=> b!6751498 (= e!4077418 e!4077420)))

(declare-fun bm!610620 () Bool)

(declare-fun $colon$colon!2398 (List!66048 Regex!16583) List!66048)

(assert (=> bm!610620 (= call!610624 ($colon$colon!2398 (exprs!6467 (Context!11935 Nil!65924)) (ite (or c!1252861 c!1252858) (regTwo!33678 r!7292) r!7292)))))

(declare-fun b!6751499 () Bool)

(assert (=> b!6751499 (= e!4077422 (nullable!6568 (regOne!33678 r!7292)))))

(declare-fun b!6751500 () Bool)

(declare-fun c!1252862 () Bool)

(assert (=> b!6751500 (= c!1252862 ((_ is Star!16583) r!7292))))

(assert (=> b!6751500 (= e!4077417 e!4077419)))

(declare-fun d!2120669 () Bool)

(declare-fun c!1252859 () Bool)

(assert (=> d!2120669 (= c!1252859 (and ((_ is ElementMatch!16583) r!7292) (= (c!1252663 r!7292) (h!72374 s!2326))))))

(assert (=> d!2120669 (= (derivationStepZipperDown!1811 r!7292 (Context!11935 Nil!65924) (h!72374 s!2326)) e!4077421)))

(assert (= (and d!2120669 c!1252859) b!6751497))

(assert (= (and d!2120669 (not c!1252859)) b!6751493))

(assert (= (and b!6751493 c!1252860) b!6751490))

(assert (= (and b!6751493 (not c!1252860)) b!6751498))

(assert (= (and b!6751498 res!2761695) b!6751499))

(assert (= (and b!6751498 c!1252861) b!6751491))

(assert (= (and b!6751498 (not c!1252861)) b!6751496))

(assert (= (and b!6751496 c!1252858) b!6751492))

(assert (= (and b!6751496 (not c!1252858)) b!6751500))

(assert (= (and b!6751500 c!1252862) b!6751494))

(assert (= (and b!6751500 (not c!1252862)) b!6751495))

(assert (= (or b!6751492 b!6751494) bm!610617))

(assert (= (or b!6751492 b!6751494) bm!610616))

(assert (= (or b!6751491 bm!610617) bm!610620))

(assert (= (or b!6751491 bm!610616) bm!610619))

(assert (= (or b!6751490 bm!610619) bm!610618))

(assert (= (or b!6751490 b!6751491) bm!610615))

(declare-fun m!7505578 () Bool)

(assert (=> bm!610618 m!7505578))

(declare-fun m!7505580 () Bool)

(assert (=> b!6751497 m!7505580))

(declare-fun m!7505582 () Bool)

(assert (=> bm!610615 m!7505582))

(declare-fun m!7505584 () Bool)

(assert (=> b!6751499 m!7505584))

(declare-fun m!7505586 () Bool)

(assert (=> bm!610620 m!7505586))

(assert (=> b!6750740 d!2120669))

(declare-fun bm!610623 () Bool)

(declare-fun call!610628 () (InoxSet Context!11934))

(assert (=> bm!610623 (= call!610628 (derivationStepZipperDown!1811 (h!72372 (exprs!6467 (Context!11935 (Cons!65924 r!7292 Nil!65924)))) (Context!11935 (t!379751 (exprs!6467 (Context!11935 (Cons!65924 r!7292 Nil!65924))))) (h!72374 s!2326)))))

(declare-fun d!2120671 () Bool)

(declare-fun c!1252868 () Bool)

(declare-fun e!4077430 () Bool)

(assert (=> d!2120671 (= c!1252868 e!4077430)))

(declare-fun res!2761698 () Bool)

(assert (=> d!2120671 (=> (not res!2761698) (not e!4077430))))

(assert (=> d!2120671 (= res!2761698 ((_ is Cons!65924) (exprs!6467 (Context!11935 (Cons!65924 r!7292 Nil!65924)))))))

(declare-fun e!4077429 () (InoxSet Context!11934))

(assert (=> d!2120671 (= (derivationStepZipperUp!1737 (Context!11935 (Cons!65924 r!7292 Nil!65924)) (h!72374 s!2326)) e!4077429)))

(declare-fun b!6751511 () Bool)

(assert (=> b!6751511 (= e!4077429 ((_ map or) call!610628 (derivationStepZipperUp!1737 (Context!11935 (t!379751 (exprs!6467 (Context!11935 (Cons!65924 r!7292 Nil!65924))))) (h!72374 s!2326))))))

(declare-fun b!6751512 () Bool)

(assert (=> b!6751512 (= e!4077430 (nullable!6568 (h!72372 (exprs!6467 (Context!11935 (Cons!65924 r!7292 Nil!65924))))))))

(declare-fun b!6751513 () Bool)

(declare-fun e!4077431 () (InoxSet Context!11934))

(assert (=> b!6751513 (= e!4077431 ((as const (Array Context!11934 Bool)) false))))

(declare-fun b!6751514 () Bool)

(assert (=> b!6751514 (= e!4077429 e!4077431)))

(declare-fun c!1252867 () Bool)

(assert (=> b!6751514 (= c!1252867 ((_ is Cons!65924) (exprs!6467 (Context!11935 (Cons!65924 r!7292 Nil!65924)))))))

(declare-fun b!6751515 () Bool)

(assert (=> b!6751515 (= e!4077431 call!610628)))

(assert (= (and d!2120671 res!2761698) b!6751512))

(assert (= (and d!2120671 c!1252868) b!6751511))

(assert (= (and d!2120671 (not c!1252868)) b!6751514))

(assert (= (and b!6751514 c!1252867) b!6751515))

(assert (= (and b!6751514 (not c!1252867)) b!6751513))

(assert (= (or b!6751511 b!6751515) bm!610623))

(declare-fun m!7505588 () Bool)

(assert (=> bm!610623 m!7505588))

(declare-fun m!7505590 () Bool)

(assert (=> b!6751511 m!7505590))

(declare-fun m!7505592 () Bool)

(assert (=> b!6751512 m!7505592))

(assert (=> b!6750740 d!2120671))

(declare-fun bs!1794535 () Bool)

(declare-fun d!2120673 () Bool)

(assert (= bs!1794535 (and d!2120673 b!6750745)))

(declare-fun lambda!379807 () Int)

(assert (=> bs!1794535 (= lambda!379807 lambda!379729)))

(declare-fun bs!1794536 () Bool)

(assert (= bs!1794536 (and d!2120673 d!2120625)))

(assert (=> bs!1794536 (= lambda!379807 lambda!379793)))

(assert (=> d!2120673 true))

(assert (=> d!2120673 (= (derivationStepZipper!2527 z!1189 (h!72374 s!2326)) (flatMap!2064 z!1189 lambda!379807))))

(declare-fun bs!1794537 () Bool)

(assert (= bs!1794537 d!2120673))

(declare-fun m!7505594 () Bool)

(assert (=> bs!1794537 m!7505594))

(assert (=> b!6750740 d!2120673))

(declare-fun d!2120675 () Bool)

(declare-fun lt!2441173 () Regex!16583)

(assert (=> d!2120675 (validRegex!8319 lt!2441173)))

(assert (=> d!2120675 (= lt!2441173 (generalisedUnion!2427 (unfocusZipperList!2004 (Cons!65925 lt!2441050 Nil!65925))))))

(assert (=> d!2120675 (= (unfocusZipper!2325 (Cons!65925 lt!2441050 Nil!65925)) lt!2441173)))

(declare-fun bs!1794538 () Bool)

(assert (= bs!1794538 d!2120675))

(declare-fun m!7505596 () Bool)

(assert (=> bs!1794538 m!7505596))

(declare-fun m!7505598 () Bool)

(assert (=> bs!1794538 m!7505598))

(assert (=> bs!1794538 m!7505598))

(declare-fun m!7505600 () Bool)

(assert (=> bs!1794538 m!7505600))

(assert (=> b!6750741 d!2120675))

(declare-fun d!2120677 () Bool)

(declare-fun dynLambda!26304 (Int Context!11934) (InoxSet Context!11934))

(assert (=> d!2120677 (= (flatMap!2064 lt!2441064 lambda!379729) (dynLambda!26304 lambda!379729 lt!2441058))))

(declare-fun lt!2441176 () Unit!159857)

(declare-fun choose!50366 ((InoxSet Context!11934) Context!11934 Int) Unit!159857)

(assert (=> d!2120677 (= lt!2441176 (choose!50366 lt!2441064 lt!2441058 lambda!379729))))

(assert (=> d!2120677 (= lt!2441064 (store ((as const (Array Context!11934 Bool)) false) lt!2441058 true))))

(assert (=> d!2120677 (= (lemmaFlatMapOnSingletonSet!1590 lt!2441064 lt!2441058 lambda!379729) lt!2441176)))

(declare-fun b_lambda!254267 () Bool)

(assert (=> (not b_lambda!254267) (not d!2120677)))

(declare-fun bs!1794539 () Bool)

(assert (= bs!1794539 d!2120677))

(assert (=> bs!1794539 m!7505066))

(declare-fun m!7505602 () Bool)

(assert (=> bs!1794539 m!7505602))

(declare-fun m!7505604 () Bool)

(assert (=> bs!1794539 m!7505604))

(assert (=> bs!1794539 m!7505058))

(assert (=> b!6750761 d!2120677))

(declare-fun d!2120679 () Bool)

(assert (=> d!2120679 (= (flatMap!2064 lt!2441055 lambda!379729) (dynLambda!26304 lambda!379729 lt!2441050))))

(declare-fun lt!2441177 () Unit!159857)

(assert (=> d!2120679 (= lt!2441177 (choose!50366 lt!2441055 lt!2441050 lambda!379729))))

(assert (=> d!2120679 (= lt!2441055 (store ((as const (Array Context!11934 Bool)) false) lt!2441050 true))))

(assert (=> d!2120679 (= (lemmaFlatMapOnSingletonSet!1590 lt!2441055 lt!2441050 lambda!379729) lt!2441177)))

(declare-fun b_lambda!254269 () Bool)

(assert (=> (not b_lambda!254269) (not d!2120679)))

(declare-fun bs!1794540 () Bool)

(assert (= bs!1794540 d!2120679))

(assert (=> bs!1794540 m!7505060))

(declare-fun m!7505606 () Bool)

(assert (=> bs!1794540 m!7505606))

(declare-fun m!7505608 () Bool)

(assert (=> bs!1794540 m!7505608))

(assert (=> bs!1794540 m!7505064))

(assert (=> b!6750761 d!2120679))

(declare-fun bm!610624 () Bool)

(declare-fun call!610629 () (InoxSet Context!11934))

(assert (=> bm!610624 (= call!610629 (derivationStepZipperDown!1811 (h!72372 (exprs!6467 lt!2441058)) (Context!11935 (t!379751 (exprs!6467 lt!2441058))) (h!72374 s!2326)))))

(declare-fun d!2120681 () Bool)

(declare-fun c!1252870 () Bool)

(declare-fun e!4077433 () Bool)

(assert (=> d!2120681 (= c!1252870 e!4077433)))

(declare-fun res!2761699 () Bool)

(assert (=> d!2120681 (=> (not res!2761699) (not e!4077433))))

(assert (=> d!2120681 (= res!2761699 ((_ is Cons!65924) (exprs!6467 lt!2441058)))))

(declare-fun e!4077432 () (InoxSet Context!11934))

(assert (=> d!2120681 (= (derivationStepZipperUp!1737 lt!2441058 (h!72374 s!2326)) e!4077432)))

(declare-fun b!6751516 () Bool)

(assert (=> b!6751516 (= e!4077432 ((_ map or) call!610629 (derivationStepZipperUp!1737 (Context!11935 (t!379751 (exprs!6467 lt!2441058))) (h!72374 s!2326))))))

(declare-fun b!6751517 () Bool)

(assert (=> b!6751517 (= e!4077433 (nullable!6568 (h!72372 (exprs!6467 lt!2441058))))))

(declare-fun b!6751518 () Bool)

(declare-fun e!4077434 () (InoxSet Context!11934))

(assert (=> b!6751518 (= e!4077434 ((as const (Array Context!11934 Bool)) false))))

(declare-fun b!6751519 () Bool)

(assert (=> b!6751519 (= e!4077432 e!4077434)))

(declare-fun c!1252869 () Bool)

(assert (=> b!6751519 (= c!1252869 ((_ is Cons!65924) (exprs!6467 lt!2441058)))))

(declare-fun b!6751520 () Bool)

(assert (=> b!6751520 (= e!4077434 call!610629)))

(assert (= (and d!2120681 res!2761699) b!6751517))

(assert (= (and d!2120681 c!1252870) b!6751516))

(assert (= (and d!2120681 (not c!1252870)) b!6751519))

(assert (= (and b!6751519 c!1252869) b!6751520))

(assert (= (and b!6751519 (not c!1252869)) b!6751518))

(assert (= (or b!6751516 b!6751520) bm!610624))

(declare-fun m!7505610 () Bool)

(assert (=> bm!610624 m!7505610))

(declare-fun m!7505612 () Bool)

(assert (=> b!6751516 m!7505612))

(declare-fun m!7505614 () Bool)

(assert (=> b!6751517 m!7505614))

(assert (=> b!6750761 d!2120681))

(declare-fun d!2120683 () Bool)

(declare-fun choose!50367 ((InoxSet Context!11934) Int) (InoxSet Context!11934))

(assert (=> d!2120683 (= (flatMap!2064 lt!2441055 lambda!379729) (choose!50367 lt!2441055 lambda!379729))))

(declare-fun bs!1794541 () Bool)

(assert (= bs!1794541 d!2120683))

(declare-fun m!7505616 () Bool)

(assert (=> bs!1794541 m!7505616))

(assert (=> b!6750761 d!2120683))

(declare-fun bm!610625 () Bool)

(declare-fun call!610630 () (InoxSet Context!11934))

(assert (=> bm!610625 (= call!610630 (derivationStepZipperDown!1811 (h!72372 (exprs!6467 lt!2441050)) (Context!11935 (t!379751 (exprs!6467 lt!2441050))) (h!72374 s!2326)))))

(declare-fun d!2120685 () Bool)

(declare-fun c!1252872 () Bool)

(declare-fun e!4077436 () Bool)

(assert (=> d!2120685 (= c!1252872 e!4077436)))

(declare-fun res!2761700 () Bool)

(assert (=> d!2120685 (=> (not res!2761700) (not e!4077436))))

(assert (=> d!2120685 (= res!2761700 ((_ is Cons!65924) (exprs!6467 lt!2441050)))))

(declare-fun e!4077435 () (InoxSet Context!11934))

(assert (=> d!2120685 (= (derivationStepZipperUp!1737 lt!2441050 (h!72374 s!2326)) e!4077435)))

(declare-fun b!6751521 () Bool)

(assert (=> b!6751521 (= e!4077435 ((_ map or) call!610630 (derivationStepZipperUp!1737 (Context!11935 (t!379751 (exprs!6467 lt!2441050))) (h!72374 s!2326))))))

(declare-fun b!6751522 () Bool)

(assert (=> b!6751522 (= e!4077436 (nullable!6568 (h!72372 (exprs!6467 lt!2441050))))))

(declare-fun b!6751523 () Bool)

(declare-fun e!4077437 () (InoxSet Context!11934))

(assert (=> b!6751523 (= e!4077437 ((as const (Array Context!11934 Bool)) false))))

(declare-fun b!6751524 () Bool)

(assert (=> b!6751524 (= e!4077435 e!4077437)))

(declare-fun c!1252871 () Bool)

(assert (=> b!6751524 (= c!1252871 ((_ is Cons!65924) (exprs!6467 lt!2441050)))))

(declare-fun b!6751525 () Bool)

(assert (=> b!6751525 (= e!4077437 call!610630)))

(assert (= (and d!2120685 res!2761700) b!6751522))

(assert (= (and d!2120685 c!1252872) b!6751521))

(assert (= (and d!2120685 (not c!1252872)) b!6751524))

(assert (= (and b!6751524 c!1252871) b!6751525))

(assert (= (and b!6751524 (not c!1252871)) b!6751523))

(assert (= (or b!6751521 b!6751525) bm!610625))

(declare-fun m!7505618 () Bool)

(assert (=> bm!610625 m!7505618))

(declare-fun m!7505620 () Bool)

(assert (=> b!6751521 m!7505620))

(declare-fun m!7505622 () Bool)

(assert (=> b!6751522 m!7505622))

(assert (=> b!6750761 d!2120685))

(declare-fun bs!1794542 () Bool)

(declare-fun d!2120687 () Bool)

(assert (= bs!1794542 (and d!2120687 b!6750745)))

(declare-fun lambda!379808 () Int)

(assert (=> bs!1794542 (= lambda!379808 lambda!379729)))

(declare-fun bs!1794543 () Bool)

(assert (= bs!1794543 (and d!2120687 d!2120625)))

(assert (=> bs!1794543 (= lambda!379808 lambda!379793)))

(declare-fun bs!1794544 () Bool)

(assert (= bs!1794544 (and d!2120687 d!2120673)))

(assert (=> bs!1794544 (= lambda!379808 lambda!379807)))

(assert (=> d!2120687 true))

(assert (=> d!2120687 (= (derivationStepZipper!2527 lt!2441055 (h!72374 s!2326)) (flatMap!2064 lt!2441055 lambda!379808))))

(declare-fun bs!1794545 () Bool)

(assert (= bs!1794545 d!2120687))

(declare-fun m!7505624 () Bool)

(assert (=> bs!1794545 m!7505624))

(assert (=> b!6750761 d!2120687))

(declare-fun d!2120689 () Bool)

(assert (=> d!2120689 (= (flatMap!2064 lt!2441064 lambda!379729) (choose!50367 lt!2441064 lambda!379729))))

(declare-fun bs!1794546 () Bool)

(assert (= bs!1794546 d!2120689))

(declare-fun m!7505626 () Bool)

(assert (=> bs!1794546 m!7505626))

(assert (=> b!6750761 d!2120689))

(declare-fun call!610635 () List!66048)

(declare-fun call!610633 () (InoxSet Context!11934))

(declare-fun c!1252875 () Bool)

(declare-fun bm!610626 () Bool)

(assert (=> bm!610626 (= call!610633 (derivationStepZipperDown!1811 (ite c!1252875 (regOne!33679 (reg!16912 r!7292)) (regOne!33678 (reg!16912 r!7292))) (ite c!1252875 lt!2441050 (Context!11935 call!610635)) (h!72374 s!2326)))))

(declare-fun bm!610627 () Bool)

(declare-fun call!610636 () (InoxSet Context!11934))

(declare-fun call!610632 () (InoxSet Context!11934))

(assert (=> bm!610627 (= call!610636 call!610632)))

(declare-fun b!6751526 () Bool)

(declare-fun e!4077439 () (InoxSet Context!11934))

(declare-fun call!610634 () (InoxSet Context!11934))

(assert (=> b!6751526 (= e!4077439 ((_ map or) call!610633 call!610634))))

(declare-fun b!6751527 () Bool)

(declare-fun e!4077441 () (InoxSet Context!11934))

(assert (=> b!6751527 (= e!4077441 ((_ map or) call!610633 call!610632))))

(declare-fun bm!610628 () Bool)

(declare-fun call!610631 () List!66048)

(assert (=> bm!610628 (= call!610631 call!610635)))

(declare-fun c!1252873 () Bool)

(declare-fun c!1252876 () Bool)

(declare-fun bm!610629 () Bool)

(assert (=> bm!610629 (= call!610634 (derivationStepZipperDown!1811 (ite c!1252875 (regTwo!33679 (reg!16912 r!7292)) (ite c!1252876 (regTwo!33678 (reg!16912 r!7292)) (ite c!1252873 (regOne!33678 (reg!16912 r!7292)) (reg!16912 (reg!16912 r!7292))))) (ite (or c!1252875 c!1252876) lt!2441050 (Context!11935 call!610631)) (h!72374 s!2326)))))

(declare-fun b!6751528 () Bool)

(declare-fun e!4077438 () (InoxSet Context!11934))

(assert (=> b!6751528 (= e!4077438 call!610636)))

(declare-fun b!6751529 () Bool)

(declare-fun e!4077442 () (InoxSet Context!11934))

(assert (=> b!6751529 (= e!4077442 e!4077439)))

(assert (=> b!6751529 (= c!1252875 ((_ is Union!16583) (reg!16912 r!7292)))))

(declare-fun b!6751530 () Bool)

(declare-fun e!4077440 () (InoxSet Context!11934))

(assert (=> b!6751530 (= e!4077440 call!610636)))

(declare-fun b!6751531 () Bool)

(assert (=> b!6751531 (= e!4077440 ((as const (Array Context!11934 Bool)) false))))

(declare-fun b!6751532 () Bool)

(assert (=> b!6751532 (= e!4077441 e!4077438)))

(assert (=> b!6751532 (= c!1252873 ((_ is Concat!25428) (reg!16912 r!7292)))))

(declare-fun b!6751533 () Bool)

(assert (=> b!6751533 (= e!4077442 (store ((as const (Array Context!11934 Bool)) false) lt!2441050 true))))

(declare-fun bm!610630 () Bool)

(assert (=> bm!610630 (= call!610632 call!610634)))

(declare-fun b!6751534 () Bool)

(declare-fun e!4077443 () Bool)

(assert (=> b!6751534 (= c!1252876 e!4077443)))

(declare-fun res!2761701 () Bool)

(assert (=> b!6751534 (=> (not res!2761701) (not e!4077443))))

(assert (=> b!6751534 (= res!2761701 ((_ is Concat!25428) (reg!16912 r!7292)))))

(assert (=> b!6751534 (= e!4077439 e!4077441)))

(declare-fun bm!610631 () Bool)

(assert (=> bm!610631 (= call!610635 ($colon$colon!2398 (exprs!6467 lt!2441050) (ite (or c!1252876 c!1252873) (regTwo!33678 (reg!16912 r!7292)) (reg!16912 r!7292))))))

(declare-fun b!6751535 () Bool)

(assert (=> b!6751535 (= e!4077443 (nullable!6568 (regOne!33678 (reg!16912 r!7292))))))

(declare-fun b!6751536 () Bool)

(declare-fun c!1252877 () Bool)

(assert (=> b!6751536 (= c!1252877 ((_ is Star!16583) (reg!16912 r!7292)))))

(assert (=> b!6751536 (= e!4077438 e!4077440)))

(declare-fun d!2120691 () Bool)

(declare-fun c!1252874 () Bool)

(assert (=> d!2120691 (= c!1252874 (and ((_ is ElementMatch!16583) (reg!16912 r!7292)) (= (c!1252663 (reg!16912 r!7292)) (h!72374 s!2326))))))

(assert (=> d!2120691 (= (derivationStepZipperDown!1811 (reg!16912 r!7292) lt!2441050 (h!72374 s!2326)) e!4077442)))

(assert (= (and d!2120691 c!1252874) b!6751533))

(assert (= (and d!2120691 (not c!1252874)) b!6751529))

(assert (= (and b!6751529 c!1252875) b!6751526))

(assert (= (and b!6751529 (not c!1252875)) b!6751534))

(assert (= (and b!6751534 res!2761701) b!6751535))

(assert (= (and b!6751534 c!1252876) b!6751527))

(assert (= (and b!6751534 (not c!1252876)) b!6751532))

(assert (= (and b!6751532 c!1252873) b!6751528))

(assert (= (and b!6751532 (not c!1252873)) b!6751536))

(assert (= (and b!6751536 c!1252877) b!6751530))

(assert (= (and b!6751536 (not c!1252877)) b!6751531))

(assert (= (or b!6751528 b!6751530) bm!610628))

(assert (= (or b!6751528 b!6751530) bm!610627))

(assert (= (or b!6751527 bm!610628) bm!610631))

(assert (= (or b!6751527 bm!610627) bm!610630))

(assert (= (or b!6751526 bm!610630) bm!610629))

(assert (= (or b!6751526 b!6751527) bm!610626))

(declare-fun m!7505628 () Bool)

(assert (=> bm!610629 m!7505628))

(assert (=> b!6751533 m!7505064))

(declare-fun m!7505630 () Bool)

(assert (=> bm!610626 m!7505630))

(declare-fun m!7505632 () Bool)

(assert (=> b!6751535 m!7505632))

(declare-fun m!7505634 () Bool)

(assert (=> bm!610631 m!7505634))

(assert (=> b!6750763 d!2120691))

(declare-fun d!2120693 () Bool)

(assert (=> d!2120693 (= (flatMap!2064 lt!2441072 lambda!379729) (choose!50367 lt!2441072 lambda!379729))))

(declare-fun bs!1794547 () Bool)

(assert (= bs!1794547 d!2120693))

(declare-fun m!7505636 () Bool)

(assert (=> bs!1794547 m!7505636))

(assert (=> b!6750763 d!2120693))

(declare-fun bm!610632 () Bool)

(declare-fun call!610637 () (InoxSet Context!11934))

(assert (=> bm!610632 (= call!610637 (derivationStepZipperDown!1811 (h!72372 (exprs!6467 lt!2441068)) (Context!11935 (t!379751 (exprs!6467 lt!2441068))) (h!72374 s!2326)))))

(declare-fun d!2120695 () Bool)

(declare-fun c!1252879 () Bool)

(declare-fun e!4077445 () Bool)

(assert (=> d!2120695 (= c!1252879 e!4077445)))

(declare-fun res!2761702 () Bool)

(assert (=> d!2120695 (=> (not res!2761702) (not e!4077445))))

(assert (=> d!2120695 (= res!2761702 ((_ is Cons!65924) (exprs!6467 lt!2441068)))))

(declare-fun e!4077444 () (InoxSet Context!11934))

(assert (=> d!2120695 (= (derivationStepZipperUp!1737 lt!2441068 (h!72374 s!2326)) e!4077444)))

(declare-fun b!6751537 () Bool)

(assert (=> b!6751537 (= e!4077444 ((_ map or) call!610637 (derivationStepZipperUp!1737 (Context!11935 (t!379751 (exprs!6467 lt!2441068))) (h!72374 s!2326))))))

(declare-fun b!6751538 () Bool)

(assert (=> b!6751538 (= e!4077445 (nullable!6568 (h!72372 (exprs!6467 lt!2441068))))))

(declare-fun b!6751539 () Bool)

(declare-fun e!4077446 () (InoxSet Context!11934))

(assert (=> b!6751539 (= e!4077446 ((as const (Array Context!11934 Bool)) false))))

(declare-fun b!6751540 () Bool)

(assert (=> b!6751540 (= e!4077444 e!4077446)))

(declare-fun c!1252878 () Bool)

(assert (=> b!6751540 (= c!1252878 ((_ is Cons!65924) (exprs!6467 lt!2441068)))))

(declare-fun b!6751541 () Bool)

(assert (=> b!6751541 (= e!4077446 call!610637)))

(assert (= (and d!2120695 res!2761702) b!6751538))

(assert (= (and d!2120695 c!1252879) b!6751537))

(assert (= (and d!2120695 (not c!1252879)) b!6751540))

(assert (= (and b!6751540 c!1252878) b!6751541))

(assert (= (and b!6751540 (not c!1252878)) b!6751539))

(assert (= (or b!6751537 b!6751541) bm!610632))

(declare-fun m!7505638 () Bool)

(assert (=> bm!610632 m!7505638))

(declare-fun m!7505640 () Bool)

(assert (=> b!6751537 m!7505640))

(declare-fun m!7505642 () Bool)

(assert (=> b!6751538 m!7505642))

(assert (=> b!6750763 d!2120695))

(declare-fun d!2120697 () Bool)

(assert (=> d!2120697 (= (flatMap!2064 lt!2441072 lambda!379729) (dynLambda!26304 lambda!379729 lt!2441068))))

(declare-fun lt!2441178 () Unit!159857)

(assert (=> d!2120697 (= lt!2441178 (choose!50366 lt!2441072 lt!2441068 lambda!379729))))

(assert (=> d!2120697 (= lt!2441072 (store ((as const (Array Context!11934 Bool)) false) lt!2441068 true))))

(assert (=> d!2120697 (= (lemmaFlatMapOnSingletonSet!1590 lt!2441072 lt!2441068 lambda!379729) lt!2441178)))

(declare-fun b_lambda!254271 () Bool)

(assert (=> (not b_lambda!254271) (not d!2120697)))

(declare-fun bs!1794548 () Bool)

(assert (= bs!1794548 d!2120697))

(assert (=> bs!1794548 m!7505086))

(declare-fun m!7505644 () Bool)

(assert (=> bs!1794548 m!7505644))

(declare-fun m!7505646 () Bool)

(assert (=> bs!1794548 m!7505646))

(assert (=> bs!1794548 m!7505088))

(assert (=> b!6750763 d!2120697))

(declare-fun b!6751560 () Bool)

(declare-fun e!4077461 () Bool)

(declare-fun e!4077465 () Bool)

(assert (=> b!6751560 (= e!4077461 e!4077465)))

(declare-fun res!2761714 () Bool)

(assert (=> b!6751560 (=> (not res!2761714) (not e!4077465))))

(declare-fun call!610644 () Bool)

(assert (=> b!6751560 (= res!2761714 call!610644)))

(declare-fun b!6751561 () Bool)

(declare-fun call!610645 () Bool)

(assert (=> b!6751561 (= e!4077465 call!610645)))

(declare-fun d!2120699 () Bool)

(declare-fun res!2761715 () Bool)

(declare-fun e!4077463 () Bool)

(assert (=> d!2120699 (=> res!2761715 e!4077463)))

(assert (=> d!2120699 (= res!2761715 ((_ is ElementMatch!16583) r!7292))))

(assert (=> d!2120699 (= (validRegex!8319 r!7292) e!4077463)))

(declare-fun b!6751562 () Bool)

(declare-fun e!4077466 () Bool)

(declare-fun call!610646 () Bool)

(assert (=> b!6751562 (= e!4077466 call!610646)))

(declare-fun b!6751563 () Bool)

(declare-fun e!4077464 () Bool)

(assert (=> b!6751563 (= e!4077464 call!610645)))

(declare-fun b!6751564 () Bool)

(declare-fun e!4077467 () Bool)

(declare-fun e!4077462 () Bool)

(assert (=> b!6751564 (= e!4077467 e!4077462)))

(declare-fun c!1252884 () Bool)

(assert (=> b!6751564 (= c!1252884 ((_ is Union!16583) r!7292))))

(declare-fun bm!610639 () Bool)

(assert (=> bm!610639 (= call!610645 (validRegex!8319 (ite c!1252884 (regTwo!33679 r!7292) (regTwo!33678 r!7292))))))

(declare-fun b!6751565 () Bool)

(assert (=> b!6751565 (= e!4077463 e!4077467)))

(declare-fun c!1252885 () Bool)

(assert (=> b!6751565 (= c!1252885 ((_ is Star!16583) r!7292))))

(declare-fun b!6751566 () Bool)

(declare-fun res!2761717 () Bool)

(assert (=> b!6751566 (=> (not res!2761717) (not e!4077464))))

(assert (=> b!6751566 (= res!2761717 call!610644)))

(assert (=> b!6751566 (= e!4077462 e!4077464)))

(declare-fun b!6751567 () Bool)

(assert (=> b!6751567 (= e!4077467 e!4077466)))

(declare-fun res!2761716 () Bool)

(assert (=> b!6751567 (= res!2761716 (not (nullable!6568 (reg!16912 r!7292))))))

(assert (=> b!6751567 (=> (not res!2761716) (not e!4077466))))

(declare-fun bm!610640 () Bool)

(assert (=> bm!610640 (= call!610644 call!610646)))

(declare-fun bm!610641 () Bool)

(assert (=> bm!610641 (= call!610646 (validRegex!8319 (ite c!1252885 (reg!16912 r!7292) (ite c!1252884 (regOne!33679 r!7292) (regOne!33678 r!7292)))))))

(declare-fun b!6751568 () Bool)

(declare-fun res!2761713 () Bool)

(assert (=> b!6751568 (=> res!2761713 e!4077461)))

(assert (=> b!6751568 (= res!2761713 (not ((_ is Concat!25428) r!7292)))))

(assert (=> b!6751568 (= e!4077462 e!4077461)))

(assert (= (and d!2120699 (not res!2761715)) b!6751565))

(assert (= (and b!6751565 c!1252885) b!6751567))

(assert (= (and b!6751565 (not c!1252885)) b!6751564))

(assert (= (and b!6751567 res!2761716) b!6751562))

(assert (= (and b!6751564 c!1252884) b!6751566))

(assert (= (and b!6751564 (not c!1252884)) b!6751568))

(assert (= (and b!6751566 res!2761717) b!6751563))

(assert (= (and b!6751568 (not res!2761713)) b!6751560))

(assert (= (and b!6751560 res!2761714) b!6751561))

(assert (= (or b!6751563 b!6751561) bm!610639))

(assert (= (or b!6751566 b!6751560) bm!610640))

(assert (= (or b!6751562 bm!610640) bm!610641))

(declare-fun m!7505648 () Bool)

(assert (=> bm!610639 m!7505648))

(assert (=> b!6751567 m!7505424))

(declare-fun m!7505650 () Bool)

(assert (=> bm!610641 m!7505650))

(assert (=> start!654720 d!2120699))

(declare-fun b!6751580 () Bool)

(declare-fun e!4077473 () Bool)

(declare-fun lt!2441181 () List!66050)

(assert (=> b!6751580 (= e!4077473 (or (not (= (_2!36861 lt!2441063) Nil!65926)) (= lt!2441181 (_1!36861 lt!2441063))))))

(declare-fun b!6751577 () Bool)

(declare-fun e!4077472 () List!66050)

(assert (=> b!6751577 (= e!4077472 (_2!36861 lt!2441063))))

(declare-fun b!6751578 () Bool)

(assert (=> b!6751578 (= e!4077472 (Cons!65926 (h!72374 (_1!36861 lt!2441063)) (++!14737 (t!379753 (_1!36861 lt!2441063)) (_2!36861 lt!2441063))))))

(declare-fun d!2120701 () Bool)

(assert (=> d!2120701 e!4077473))

(declare-fun res!2761722 () Bool)

(assert (=> d!2120701 (=> (not res!2761722) (not e!4077473))))

(declare-fun content!12825 (List!66050) (InoxSet C!33436))

(assert (=> d!2120701 (= res!2761722 (= (content!12825 lt!2441181) ((_ map or) (content!12825 (_1!36861 lt!2441063)) (content!12825 (_2!36861 lt!2441063)))))))

(assert (=> d!2120701 (= lt!2441181 e!4077472)))

(declare-fun c!1252888 () Bool)

(assert (=> d!2120701 (= c!1252888 ((_ is Nil!65926) (_1!36861 lt!2441063)))))

(assert (=> d!2120701 (= (++!14737 (_1!36861 lt!2441063) (_2!36861 lt!2441063)) lt!2441181)))

(declare-fun b!6751579 () Bool)

(declare-fun res!2761723 () Bool)

(assert (=> b!6751579 (=> (not res!2761723) (not e!4077473))))

(declare-fun size!40623 (List!66050) Int)

(assert (=> b!6751579 (= res!2761723 (= (size!40623 lt!2441181) (+ (size!40623 (_1!36861 lt!2441063)) (size!40623 (_2!36861 lt!2441063)))))))

(assert (= (and d!2120701 c!1252888) b!6751577))

(assert (= (and d!2120701 (not c!1252888)) b!6751578))

(assert (= (and d!2120701 res!2761722) b!6751579))

(assert (= (and b!6751579 res!2761723) b!6751580))

(declare-fun m!7505652 () Bool)

(assert (=> b!6751578 m!7505652))

(declare-fun m!7505654 () Bool)

(assert (=> d!2120701 m!7505654))

(declare-fun m!7505656 () Bool)

(assert (=> d!2120701 m!7505656))

(declare-fun m!7505658 () Bool)

(assert (=> d!2120701 m!7505658))

(declare-fun m!7505660 () Bool)

(assert (=> b!6751579 m!7505660))

(declare-fun m!7505662 () Bool)

(assert (=> b!6751579 m!7505662))

(declare-fun m!7505664 () Bool)

(assert (=> b!6751579 m!7505664))

(assert (=> b!6750742 d!2120701))

(declare-fun d!2120703 () Bool)

(assert (=> d!2120703 (= (get!22944 lt!2441049) (v!52669 lt!2441049))))

(assert (=> b!6750742 d!2120703))

(assert (=> b!6750744 d!2120565))

(assert (=> b!6750744 d!2120543))

(declare-fun bs!1794549 () Bool)

(declare-fun d!2120705 () Bool)

(assert (= bs!1794549 (and d!2120705 d!2120509)))

(declare-fun lambda!379809 () Int)

(assert (=> bs!1794549 (= lambda!379809 lambda!379732)))

(declare-fun bs!1794550 () Bool)

(assert (= bs!1794550 (and d!2120705 d!2120635)))

(assert (=> bs!1794550 (= lambda!379809 lambda!379800)))

(declare-fun bs!1794551 () Bool)

(assert (= bs!1794551 (and d!2120705 d!2120651)))

(assert (=> bs!1794551 (= lambda!379809 lambda!379803)))

(declare-fun bs!1794552 () Bool)

(assert (= bs!1794552 (and d!2120705 d!2120655)))

(assert (=> bs!1794552 (= lambda!379809 lambda!379806)))

(assert (=> d!2120705 (= (inv!84704 (h!72373 zl!343)) (forall!15781 (exprs!6467 (h!72373 zl!343)) lambda!379809))))

(declare-fun bs!1794553 () Bool)

(assert (= bs!1794553 d!2120705))

(declare-fun m!7505666 () Bool)

(assert (=> bs!1794553 m!7505666))

(assert (=> b!6750764 d!2120705))

(assert (=> b!6750743 d!2120565))

(declare-fun d!2120707 () Bool)

(assert (=> d!2120707 (= (flatMap!2064 z!1189 lambda!379729) (choose!50367 z!1189 lambda!379729))))

(declare-fun bs!1794554 () Bool)

(assert (= bs!1794554 d!2120707))

(declare-fun m!7505668 () Bool)

(assert (=> bs!1794554 m!7505668))

(assert (=> b!6750745 d!2120707))

(declare-fun bm!610642 () Bool)

(declare-fun call!610647 () (InoxSet Context!11934))

(assert (=> bm!610642 (= call!610647 (derivationStepZipperDown!1811 (h!72372 (exprs!6467 (h!72373 zl!343))) (Context!11935 (t!379751 (exprs!6467 (h!72373 zl!343)))) (h!72374 s!2326)))))

(declare-fun d!2120709 () Bool)

(declare-fun c!1252890 () Bool)

(declare-fun e!4077475 () Bool)

(assert (=> d!2120709 (= c!1252890 e!4077475)))

(declare-fun res!2761724 () Bool)

(assert (=> d!2120709 (=> (not res!2761724) (not e!4077475))))

(assert (=> d!2120709 (= res!2761724 ((_ is Cons!65924) (exprs!6467 (h!72373 zl!343))))))

(declare-fun e!4077474 () (InoxSet Context!11934))

(assert (=> d!2120709 (= (derivationStepZipperUp!1737 (h!72373 zl!343) (h!72374 s!2326)) e!4077474)))

(declare-fun b!6751581 () Bool)

(assert (=> b!6751581 (= e!4077474 ((_ map or) call!610647 (derivationStepZipperUp!1737 (Context!11935 (t!379751 (exprs!6467 (h!72373 zl!343)))) (h!72374 s!2326))))))

(declare-fun b!6751582 () Bool)

(assert (=> b!6751582 (= e!4077475 (nullable!6568 (h!72372 (exprs!6467 (h!72373 zl!343)))))))

(declare-fun b!6751583 () Bool)

(declare-fun e!4077476 () (InoxSet Context!11934))

(assert (=> b!6751583 (= e!4077476 ((as const (Array Context!11934 Bool)) false))))

(declare-fun b!6751584 () Bool)

(assert (=> b!6751584 (= e!4077474 e!4077476)))

(declare-fun c!1252889 () Bool)

(assert (=> b!6751584 (= c!1252889 ((_ is Cons!65924) (exprs!6467 (h!72373 zl!343))))))

(declare-fun b!6751585 () Bool)

(assert (=> b!6751585 (= e!4077476 call!610647)))

(assert (= (and d!2120709 res!2761724) b!6751582))

(assert (= (and d!2120709 c!1252890) b!6751581))

(assert (= (and d!2120709 (not c!1252890)) b!6751584))

(assert (= (and b!6751584 c!1252889) b!6751585))

(assert (= (and b!6751584 (not c!1252889)) b!6751583))

(assert (= (or b!6751581 b!6751585) bm!610642))

(declare-fun m!7505670 () Bool)

(assert (=> bm!610642 m!7505670))

(declare-fun m!7505672 () Bool)

(assert (=> b!6751581 m!7505672))

(declare-fun m!7505674 () Bool)

(assert (=> b!6751582 m!7505674))

(assert (=> b!6750745 d!2120709))

(declare-fun d!2120711 () Bool)

(assert (=> d!2120711 (= (flatMap!2064 z!1189 lambda!379729) (dynLambda!26304 lambda!379729 (h!72373 zl!343)))))

(declare-fun lt!2441182 () Unit!159857)

(assert (=> d!2120711 (= lt!2441182 (choose!50366 z!1189 (h!72373 zl!343) lambda!379729))))

(assert (=> d!2120711 (= z!1189 (store ((as const (Array Context!11934 Bool)) false) (h!72373 zl!343) true))))

(assert (=> d!2120711 (= (lemmaFlatMapOnSingletonSet!1590 z!1189 (h!72373 zl!343) lambda!379729) lt!2441182)))

(declare-fun b_lambda!254273 () Bool)

(assert (=> (not b_lambda!254273) (not d!2120711)))

(declare-fun bs!1794555 () Bool)

(assert (= bs!1794555 d!2120711))

(assert (=> bs!1794555 m!7505044))

(declare-fun m!7505676 () Bool)

(assert (=> bs!1794555 m!7505676))

(declare-fun m!7505678 () Bool)

(assert (=> bs!1794555 m!7505678))

(declare-fun m!7505680 () Bool)

(assert (=> bs!1794555 m!7505680))

(assert (=> b!6750745 d!2120711))

(declare-fun d!2120713 () Bool)

(declare-fun lt!2441183 () Regex!16583)

(assert (=> d!2120713 (validRegex!8319 lt!2441183)))

(assert (=> d!2120713 (= lt!2441183 (generalisedUnion!2427 (unfocusZipperList!2004 (Cons!65925 lt!2441058 Nil!65925))))))

(assert (=> d!2120713 (= (unfocusZipper!2325 (Cons!65925 lt!2441058 Nil!65925)) lt!2441183)))

(declare-fun bs!1794556 () Bool)

(assert (= bs!1794556 d!2120713))

(declare-fun m!7505682 () Bool)

(assert (=> bs!1794556 m!7505682))

(declare-fun m!7505684 () Bool)

(assert (=> bs!1794556 m!7505684))

(assert (=> bs!1794556 m!7505684))

(declare-fun m!7505686 () Bool)

(assert (=> bs!1794556 m!7505686))

(assert (=> b!6750765 d!2120713))

(declare-fun b!6751586 () Bool)

(declare-fun e!4077477 () Bool)

(declare-fun e!4077481 () Bool)

(assert (=> b!6751586 (= e!4077477 e!4077481)))

(declare-fun res!2761726 () Bool)

(assert (=> b!6751586 (=> (not res!2761726) (not e!4077481))))

(declare-fun call!610648 () Bool)

(assert (=> b!6751586 (= res!2761726 call!610648)))

(declare-fun b!6751587 () Bool)

(declare-fun call!610649 () Bool)

(assert (=> b!6751587 (= e!4077481 call!610649)))

(declare-fun d!2120715 () Bool)

(declare-fun res!2761727 () Bool)

(declare-fun e!4077479 () Bool)

(assert (=> d!2120715 (=> res!2761727 e!4077479)))

(assert (=> d!2120715 (= res!2761727 ((_ is ElementMatch!16583) (reg!16912 r!7292)))))

(assert (=> d!2120715 (= (validRegex!8319 (reg!16912 r!7292)) e!4077479)))

(declare-fun b!6751588 () Bool)

(declare-fun e!4077482 () Bool)

(declare-fun call!610650 () Bool)

(assert (=> b!6751588 (= e!4077482 call!610650)))

(declare-fun b!6751589 () Bool)

(declare-fun e!4077480 () Bool)

(assert (=> b!6751589 (= e!4077480 call!610649)))

(declare-fun b!6751590 () Bool)

(declare-fun e!4077483 () Bool)

(declare-fun e!4077478 () Bool)

(assert (=> b!6751590 (= e!4077483 e!4077478)))

(declare-fun c!1252891 () Bool)

(assert (=> b!6751590 (= c!1252891 ((_ is Union!16583) (reg!16912 r!7292)))))

(declare-fun bm!610643 () Bool)

(assert (=> bm!610643 (= call!610649 (validRegex!8319 (ite c!1252891 (regTwo!33679 (reg!16912 r!7292)) (regTwo!33678 (reg!16912 r!7292)))))))

(declare-fun b!6751591 () Bool)

(assert (=> b!6751591 (= e!4077479 e!4077483)))

(declare-fun c!1252892 () Bool)

(assert (=> b!6751591 (= c!1252892 ((_ is Star!16583) (reg!16912 r!7292)))))

(declare-fun b!6751592 () Bool)

(declare-fun res!2761729 () Bool)

(assert (=> b!6751592 (=> (not res!2761729) (not e!4077480))))

(assert (=> b!6751592 (= res!2761729 call!610648)))

(assert (=> b!6751592 (= e!4077478 e!4077480)))

(declare-fun b!6751593 () Bool)

(assert (=> b!6751593 (= e!4077483 e!4077482)))

(declare-fun res!2761728 () Bool)

(assert (=> b!6751593 (= res!2761728 (not (nullable!6568 (reg!16912 (reg!16912 r!7292)))))))

(assert (=> b!6751593 (=> (not res!2761728) (not e!4077482))))

(declare-fun bm!610644 () Bool)

(assert (=> bm!610644 (= call!610648 call!610650)))

(declare-fun bm!610645 () Bool)

(assert (=> bm!610645 (= call!610650 (validRegex!8319 (ite c!1252892 (reg!16912 (reg!16912 r!7292)) (ite c!1252891 (regOne!33679 (reg!16912 r!7292)) (regOne!33678 (reg!16912 r!7292))))))))

(declare-fun b!6751594 () Bool)

(declare-fun res!2761725 () Bool)

(assert (=> b!6751594 (=> res!2761725 e!4077477)))

(assert (=> b!6751594 (= res!2761725 (not ((_ is Concat!25428) (reg!16912 r!7292))))))

(assert (=> b!6751594 (= e!4077478 e!4077477)))

(assert (= (and d!2120715 (not res!2761727)) b!6751591))

(assert (= (and b!6751591 c!1252892) b!6751593))

(assert (= (and b!6751591 (not c!1252892)) b!6751590))

(assert (= (and b!6751593 res!2761728) b!6751588))

(assert (= (and b!6751590 c!1252891) b!6751592))

(assert (= (and b!6751590 (not c!1252891)) b!6751594))

(assert (= (and b!6751592 res!2761729) b!6751589))

(assert (= (and b!6751594 (not res!2761725)) b!6751586))

(assert (= (and b!6751586 res!2761726) b!6751587))

(assert (= (or b!6751589 b!6751587) bm!610643))

(assert (= (or b!6751592 b!6751586) bm!610644))

(assert (= (or b!6751588 bm!610644) bm!610645))

(declare-fun m!7505688 () Bool)

(assert (=> bm!610643 m!7505688))

(declare-fun m!7505690 () Bool)

(assert (=> b!6751593 m!7505690))

(declare-fun m!7505692 () Bool)

(assert (=> bm!610645 m!7505692))

(assert (=> b!6750767 d!2120715))

(declare-fun d!2120717 () Bool)

(declare-fun lt!2441184 () Regex!16583)

(assert (=> d!2120717 (validRegex!8319 lt!2441184)))

(assert (=> d!2120717 (= lt!2441184 (generalisedUnion!2427 (unfocusZipperList!2004 (Cons!65925 lt!2441068 Nil!65925))))))

(assert (=> d!2120717 (= (unfocusZipper!2325 (Cons!65925 lt!2441068 Nil!65925)) lt!2441184)))

(declare-fun bs!1794557 () Bool)

(assert (= bs!1794557 d!2120717))

(declare-fun m!7505694 () Bool)

(assert (=> bs!1794557 m!7505694))

(declare-fun m!7505696 () Bool)

(assert (=> bs!1794557 m!7505696))

(assert (=> bs!1794557 m!7505696))

(declare-fun m!7505698 () Bool)

(assert (=> bs!1794557 m!7505698))

(assert (=> b!6750746 d!2120717))

(declare-fun bs!1794558 () Bool)

(declare-fun b!6751605 () Bool)

(assert (= bs!1794558 (and b!6751605 d!2120523)))

(declare-fun lambda!379810 () Int)

(assert (=> bs!1794558 (not (= lambda!379810 lambda!379749))))

(declare-fun bs!1794559 () Bool)

(assert (= bs!1794559 (and b!6751605 d!2120515)))

(assert (=> bs!1794559 (not (= lambda!379810 lambda!379741))))

(declare-fun bs!1794560 () Bool)

(assert (= bs!1794560 (and b!6751605 b!6750749)))

(assert (=> bs!1794560 (not (= lambda!379810 lambda!379726))))

(declare-fun bs!1794561 () Bool)

(assert (= bs!1794561 (and b!6751605 b!6751107)))

(assert (=> bs!1794561 (= (and (= (reg!16912 r!7292) (reg!16912 lt!2441076)) (= r!7292 lt!2441076)) (= lambda!379810 lambda!379780))))

(assert (=> bs!1794560 (not (= lambda!379810 lambda!379728))))

(assert (=> bs!1794558 (= (= r!7292 (Star!16583 (reg!16912 r!7292))) (= lambda!379810 lambda!379750))))

(declare-fun bs!1794562 () Bool)

(assert (= bs!1794562 (and b!6751605 b!6751102)))

(assert (=> bs!1794562 (not (= lambda!379810 lambda!379781))))

(assert (=> bs!1794559 (not (= lambda!379810 lambda!379737))))

(assert (=> bs!1794560 (= lambda!379810 lambda!379727)))

(declare-fun bs!1794563 () Bool)

(assert (= bs!1794563 (and b!6751605 d!2120555)))

(assert (=> bs!1794563 (not (= lambda!379810 lambda!379771))))

(assert (=> b!6751605 true))

(assert (=> b!6751605 true))

(declare-fun bs!1794564 () Bool)

(declare-fun b!6751600 () Bool)

(assert (= bs!1794564 (and b!6751600 d!2120523)))

(declare-fun lambda!379811 () Int)

(assert (=> bs!1794564 (not (= lambda!379811 lambda!379749))))

(declare-fun bs!1794565 () Bool)

(assert (= bs!1794565 (and b!6751600 b!6750749)))

(assert (=> bs!1794565 (not (= lambda!379811 lambda!379726))))

(declare-fun bs!1794566 () Bool)

(assert (= bs!1794566 (and b!6751600 b!6751107)))

(assert (=> bs!1794566 (not (= lambda!379811 lambda!379780))))

(assert (=> bs!1794565 (= (and (= (regOne!33678 r!7292) (reg!16912 r!7292)) (= (regTwo!33678 r!7292) r!7292)) (= lambda!379811 lambda!379728))))

(assert (=> bs!1794564 (not (= lambda!379811 lambda!379750))))

(declare-fun bs!1794567 () Bool)

(assert (= bs!1794567 (and b!6751600 b!6751102)))

(assert (=> bs!1794567 (= (and (= (regOne!33678 r!7292) (regOne!33678 lt!2441076)) (= (regTwo!33678 r!7292) (regTwo!33678 lt!2441076))) (= lambda!379811 lambda!379781))))

(declare-fun bs!1794568 () Bool)

(assert (= bs!1794568 (and b!6751600 d!2120515)))

(assert (=> bs!1794568 (not (= lambda!379811 lambda!379737))))

(declare-fun bs!1794569 () Bool)

(assert (= bs!1794569 (and b!6751600 b!6751605)))

(assert (=> bs!1794569 (not (= lambda!379811 lambda!379810))))

(assert (=> bs!1794568 (= (and (= (regOne!33678 r!7292) (reg!16912 r!7292)) (= (regTwo!33678 r!7292) r!7292)) (= lambda!379811 lambda!379741))))

(assert (=> bs!1794565 (not (= lambda!379811 lambda!379727))))

(declare-fun bs!1794570 () Bool)

(assert (= bs!1794570 (and b!6751600 d!2120555)))

(assert (=> bs!1794570 (not (= lambda!379811 lambda!379771))))

(assert (=> b!6751600 true))

(assert (=> b!6751600 true))

(declare-fun bm!610646 () Bool)

(declare-fun call!610651 () Bool)

(assert (=> bm!610646 (= call!610651 (isEmpty!38277 s!2326))))

(declare-fun b!6751595 () Bool)

(declare-fun c!1252895 () Bool)

(assert (=> b!6751595 (= c!1252895 ((_ is ElementMatch!16583) r!7292))))

(declare-fun e!4077490 () Bool)

(declare-fun e!4077485 () Bool)

(assert (=> b!6751595 (= e!4077490 e!4077485)))

(declare-fun d!2120719 () Bool)

(declare-fun c!1252893 () Bool)

(assert (=> d!2120719 (= c!1252893 ((_ is EmptyExpr!16583) r!7292))))

(declare-fun e!4077487 () Bool)

(assert (=> d!2120719 (= (matchRSpec!3684 r!7292 s!2326) e!4077487)))

(declare-fun call!610652 () Bool)

(declare-fun bm!610647 () Bool)

(declare-fun c!1252894 () Bool)

(assert (=> bm!610647 (= call!610652 (Exists!3651 (ite c!1252894 lambda!379810 lambda!379811)))))

(declare-fun b!6751596 () Bool)

(assert (=> b!6751596 (= e!4077487 call!610651)))

(declare-fun b!6751597 () Bool)

(declare-fun res!2761732 () Bool)

(declare-fun e!4077484 () Bool)

(assert (=> b!6751597 (=> res!2761732 e!4077484)))

(assert (=> b!6751597 (= res!2761732 call!610651)))

(declare-fun e!4077489 () Bool)

(assert (=> b!6751597 (= e!4077489 e!4077484)))

(declare-fun b!6751598 () Bool)

(assert (=> b!6751598 (= e!4077485 (= s!2326 (Cons!65926 (c!1252663 r!7292) Nil!65926)))))

(declare-fun b!6751599 () Bool)

(declare-fun c!1252896 () Bool)

(assert (=> b!6751599 (= c!1252896 ((_ is Union!16583) r!7292))))

(declare-fun e!4077488 () Bool)

(assert (=> b!6751599 (= e!4077485 e!4077488)))

(assert (=> b!6751600 (= e!4077489 call!610652)))

(declare-fun b!6751601 () Bool)

(assert (=> b!6751601 (= e!4077488 e!4077489)))

(assert (=> b!6751601 (= c!1252894 ((_ is Star!16583) r!7292))))

(declare-fun b!6751602 () Bool)

(assert (=> b!6751602 (= e!4077487 e!4077490)))

(declare-fun res!2761731 () Bool)

(assert (=> b!6751602 (= res!2761731 (not ((_ is EmptyLang!16583) r!7292)))))

(assert (=> b!6751602 (=> (not res!2761731) (not e!4077490))))

(declare-fun b!6751603 () Bool)

(declare-fun e!4077486 () Bool)

(assert (=> b!6751603 (= e!4077488 e!4077486)))

(declare-fun res!2761730 () Bool)

(assert (=> b!6751603 (= res!2761730 (matchRSpec!3684 (regOne!33679 r!7292) s!2326))))

(assert (=> b!6751603 (=> res!2761730 e!4077486)))

(declare-fun b!6751604 () Bool)

(assert (=> b!6751604 (= e!4077486 (matchRSpec!3684 (regTwo!33679 r!7292) s!2326))))

(assert (=> b!6751605 (= e!4077484 call!610652)))

(assert (= (and d!2120719 c!1252893) b!6751596))

(assert (= (and d!2120719 (not c!1252893)) b!6751602))

(assert (= (and b!6751602 res!2761731) b!6751595))

(assert (= (and b!6751595 c!1252895) b!6751598))

(assert (= (and b!6751595 (not c!1252895)) b!6751599))

(assert (= (and b!6751599 c!1252896) b!6751603))

(assert (= (and b!6751599 (not c!1252896)) b!6751601))

(assert (= (and b!6751603 (not res!2761730)) b!6751604))

(assert (= (and b!6751601 c!1252894) b!6751597))

(assert (= (and b!6751601 (not c!1252894)) b!6751600))

(assert (= (and b!6751597 (not res!2761732)) b!6751605))

(assert (= (or b!6751605 b!6751600) bm!610647))

(assert (= (or b!6751596 b!6751597) bm!610646))

(assert (=> bm!610646 m!7505008))

(declare-fun m!7505700 () Bool)

(assert (=> bm!610647 m!7505700))

(declare-fun m!7505702 () Bool)

(assert (=> b!6751603 m!7505702))

(declare-fun m!7505704 () Bool)

(assert (=> b!6751604 m!7505704))

(assert (=> b!6750766 d!2120719))

(declare-fun b!6751606 () Bool)

(declare-fun res!2761734 () Bool)

(declare-fun e!4077492 () Bool)

(assert (=> b!6751606 (=> (not res!2761734) (not e!4077492))))

(declare-fun call!610653 () Bool)

(assert (=> b!6751606 (= res!2761734 (not call!610653))))

(declare-fun bm!610648 () Bool)

(assert (=> bm!610648 (= call!610653 (isEmpty!38277 s!2326))))

(declare-fun b!6751607 () Bool)

(declare-fun e!4077493 () Bool)

(declare-fun lt!2441185 () Bool)

(assert (=> b!6751607 (= e!4077493 (not lt!2441185))))

(declare-fun b!6751608 () Bool)

(declare-fun e!4077497 () Bool)

(assert (=> b!6751608 (= e!4077497 (not (= (head!13589 s!2326) (c!1252663 r!7292))))))

(declare-fun b!6751609 () Bool)

(declare-fun e!4077496 () Bool)

(assert (=> b!6751609 (= e!4077496 e!4077497)))

(declare-fun res!2761738 () Bool)

(assert (=> b!6751609 (=> res!2761738 e!4077497)))

(assert (=> b!6751609 (= res!2761738 call!610653)))

(declare-fun b!6751610 () Bool)

(declare-fun e!4077491 () Bool)

(assert (=> b!6751610 (= e!4077491 e!4077496)))

(declare-fun res!2761740 () Bool)

(assert (=> b!6751610 (=> (not res!2761740) (not e!4077496))))

(assert (=> b!6751610 (= res!2761740 (not lt!2441185))))

(declare-fun b!6751612 () Bool)

(declare-fun e!4077494 () Bool)

(assert (=> b!6751612 (= e!4077494 (= lt!2441185 call!610653))))

(declare-fun b!6751613 () Bool)

(assert (=> b!6751613 (= e!4077494 e!4077493)))

(declare-fun c!1252898 () Bool)

(assert (=> b!6751613 (= c!1252898 ((_ is EmptyLang!16583) r!7292))))

(declare-fun b!6751614 () Bool)

(declare-fun res!2761737 () Bool)

(assert (=> b!6751614 (=> res!2761737 e!4077497)))

(assert (=> b!6751614 (= res!2761737 (not (isEmpty!38277 (tail!12674 s!2326))))))

(declare-fun b!6751615 () Bool)

(assert (=> b!6751615 (= e!4077492 (= (head!13589 s!2326) (c!1252663 r!7292)))))

(declare-fun b!6751616 () Bool)

(declare-fun res!2761736 () Bool)

(assert (=> b!6751616 (=> (not res!2761736) (not e!4077492))))

(assert (=> b!6751616 (= res!2761736 (isEmpty!38277 (tail!12674 s!2326)))))

(declare-fun b!6751617 () Bool)

(declare-fun e!4077495 () Bool)

(assert (=> b!6751617 (= e!4077495 (matchR!8766 (derivativeStep!5253 r!7292 (head!13589 s!2326)) (tail!12674 s!2326)))))

(declare-fun d!2120721 () Bool)

(assert (=> d!2120721 e!4077494))

(declare-fun c!1252899 () Bool)

(assert (=> d!2120721 (= c!1252899 ((_ is EmptyExpr!16583) r!7292))))

(assert (=> d!2120721 (= lt!2441185 e!4077495)))

(declare-fun c!1252897 () Bool)

(assert (=> d!2120721 (= c!1252897 (isEmpty!38277 s!2326))))

(assert (=> d!2120721 (validRegex!8319 r!7292)))

(assert (=> d!2120721 (= (matchR!8766 r!7292 s!2326) lt!2441185)))

(declare-fun b!6751611 () Bool)

(declare-fun res!2761735 () Bool)

(assert (=> b!6751611 (=> res!2761735 e!4077491)))

(assert (=> b!6751611 (= res!2761735 (not ((_ is ElementMatch!16583) r!7292)))))

(assert (=> b!6751611 (= e!4077493 e!4077491)))

(declare-fun b!6751618 () Bool)

(assert (=> b!6751618 (= e!4077495 (nullable!6568 r!7292))))

(declare-fun b!6751619 () Bool)

(declare-fun res!2761739 () Bool)

(assert (=> b!6751619 (=> res!2761739 e!4077491)))

(assert (=> b!6751619 (= res!2761739 e!4077492)))

(declare-fun res!2761733 () Bool)

(assert (=> b!6751619 (=> (not res!2761733) (not e!4077492))))

(assert (=> b!6751619 (= res!2761733 lt!2441185)))

(assert (= (and d!2120721 c!1252897) b!6751618))

(assert (= (and d!2120721 (not c!1252897)) b!6751617))

(assert (= (and d!2120721 c!1252899) b!6751612))

(assert (= (and d!2120721 (not c!1252899)) b!6751613))

(assert (= (and b!6751613 c!1252898) b!6751607))

(assert (= (and b!6751613 (not c!1252898)) b!6751611))

(assert (= (and b!6751611 (not res!2761735)) b!6751619))

(assert (= (and b!6751619 res!2761733) b!6751606))

(assert (= (and b!6751606 res!2761734) b!6751616))

(assert (= (and b!6751616 res!2761736) b!6751615))

(assert (= (and b!6751619 (not res!2761739)) b!6751610))

(assert (= (and b!6751610 res!2761740) b!6751609))

(assert (= (and b!6751609 (not res!2761738)) b!6751614))

(assert (= (and b!6751614 (not res!2761737)) b!6751608))

(assert (= (or b!6751612 b!6751606 b!6751609) bm!610648))

(assert (=> bm!610648 m!7505008))

(assert (=> b!6751615 m!7505378))

(assert (=> b!6751614 m!7505380))

(assert (=> b!6751614 m!7505380))

(assert (=> b!6751614 m!7505382))

(assert (=> b!6751618 m!7505566))

(assert (=> b!6751616 m!7505380))

(assert (=> b!6751616 m!7505380))

(assert (=> b!6751616 m!7505382))

(assert (=> b!6751617 m!7505378))

(assert (=> b!6751617 m!7505378))

(declare-fun m!7505706 () Bool)

(assert (=> b!6751617 m!7505706))

(assert (=> b!6751617 m!7505380))

(assert (=> b!6751617 m!7505706))

(assert (=> b!6751617 m!7505380))

(declare-fun m!7505708 () Bool)

(assert (=> b!6751617 m!7505708))

(assert (=> d!2120721 m!7505008))

(assert (=> d!2120721 m!7505002))

(assert (=> b!6751608 m!7505378))

(assert (=> b!6750766 d!2120721))

(declare-fun d!2120723 () Bool)

(assert (=> d!2120723 (= (matchR!8766 r!7292 s!2326) (matchRSpec!3684 r!7292 s!2326))))

(declare-fun lt!2441186 () Unit!159857)

(assert (=> d!2120723 (= lt!2441186 (choose!50364 r!7292 s!2326))))

(assert (=> d!2120723 (validRegex!8319 r!7292)))

(assert (=> d!2120723 (= (mainMatchTheorem!3684 r!7292 s!2326) lt!2441186)))

(declare-fun bs!1794571 () Bool)

(assert (= bs!1794571 d!2120723))

(assert (=> bs!1794571 m!7505076))

(assert (=> bs!1794571 m!7505074))

(declare-fun m!7505710 () Bool)

(assert (=> bs!1794571 m!7505710))

(assert (=> bs!1794571 m!7505002))

(assert (=> b!6750766 d!2120723))

(declare-fun condSetEmpty!46149 () Bool)

(assert (=> setNonEmpty!46143 (= condSetEmpty!46149 (= setRest!46143 ((as const (Array Context!11934 Bool)) false)))))

(declare-fun setRes!46149 () Bool)

(assert (=> setNonEmpty!46143 (= tp!1849937 setRes!46149)))

(declare-fun setIsEmpty!46149 () Bool)

(assert (=> setIsEmpty!46149 setRes!46149))

(declare-fun e!4077500 () Bool)

(declare-fun setNonEmpty!46149 () Bool)

(declare-fun setElem!46149 () Context!11934)

(declare-fun tp!1850009 () Bool)

(assert (=> setNonEmpty!46149 (= setRes!46149 (and tp!1850009 (inv!84704 setElem!46149) e!4077500))))

(declare-fun setRest!46149 () (InoxSet Context!11934))

(assert (=> setNonEmpty!46149 (= setRest!46143 ((_ map or) (store ((as const (Array Context!11934 Bool)) false) setElem!46149 true) setRest!46149))))

(declare-fun b!6751624 () Bool)

(declare-fun tp!1850008 () Bool)

(assert (=> b!6751624 (= e!4077500 tp!1850008)))

(assert (= (and setNonEmpty!46143 condSetEmpty!46149) setIsEmpty!46149))

(assert (= (and setNonEmpty!46143 (not condSetEmpty!46149)) setNonEmpty!46149))

(assert (= setNonEmpty!46149 b!6751624))

(declare-fun m!7505712 () Bool)

(assert (=> setNonEmpty!46149 m!7505712))

(declare-fun b!6751632 () Bool)

(declare-fun e!4077506 () Bool)

(declare-fun tp!1850014 () Bool)

(assert (=> b!6751632 (= e!4077506 tp!1850014)))

(declare-fun b!6751631 () Bool)

(declare-fun tp!1850015 () Bool)

(declare-fun e!4077505 () Bool)

(assert (=> b!6751631 (= e!4077505 (and (inv!84704 (h!72373 (t!379752 zl!343))) e!4077506 tp!1850015))))

(assert (=> b!6750764 (= tp!1849944 e!4077505)))

(assert (= b!6751631 b!6751632))

(assert (= (and b!6750764 ((_ is Cons!65925) (t!379752 zl!343))) b!6751631))

(declare-fun m!7505714 () Bool)

(assert (=> b!6751631 m!7505714))

(declare-fun b!6751637 () Bool)

(declare-fun e!4077509 () Bool)

(declare-fun tp!1850020 () Bool)

(declare-fun tp!1850021 () Bool)

(assert (=> b!6751637 (= e!4077509 (and tp!1850020 tp!1850021))))

(assert (=> b!6750754 (= tp!1849943 e!4077509)))

(assert (= (and b!6750754 ((_ is Cons!65924) (exprs!6467 setElem!46143))) b!6751637))

(declare-fun b!6751642 () Bool)

(declare-fun e!4077512 () Bool)

(declare-fun tp!1850024 () Bool)

(assert (=> b!6751642 (= e!4077512 (and tp_is_empty!42419 tp!1850024))))

(assert (=> b!6750758 (= tp!1849936 e!4077512)))

(assert (= (and b!6750758 ((_ is Cons!65926) (t!379753 s!2326))) b!6751642))

(declare-fun b!6751654 () Bool)

(declare-fun e!4077515 () Bool)

(declare-fun tp!1850035 () Bool)

(declare-fun tp!1850036 () Bool)

(assert (=> b!6751654 (= e!4077515 (and tp!1850035 tp!1850036))))

(declare-fun b!6751656 () Bool)

(declare-fun tp!1850037 () Bool)

(declare-fun tp!1850039 () Bool)

(assert (=> b!6751656 (= e!4077515 (and tp!1850037 tp!1850039))))

(declare-fun b!6751653 () Bool)

(assert (=> b!6751653 (= e!4077515 tp_is_empty!42419)))

(declare-fun b!6751655 () Bool)

(declare-fun tp!1850038 () Bool)

(assert (=> b!6751655 (= e!4077515 tp!1850038)))

(assert (=> b!6750739 (= tp!1849942 e!4077515)))

(assert (= (and b!6750739 ((_ is ElementMatch!16583) (reg!16912 r!7292))) b!6751653))

(assert (= (and b!6750739 ((_ is Concat!25428) (reg!16912 r!7292))) b!6751654))

(assert (= (and b!6750739 ((_ is Star!16583) (reg!16912 r!7292))) b!6751655))

(assert (= (and b!6750739 ((_ is Union!16583) (reg!16912 r!7292))) b!6751656))

(declare-fun b!6751658 () Bool)

(declare-fun e!4077516 () Bool)

(declare-fun tp!1850040 () Bool)

(declare-fun tp!1850041 () Bool)

(assert (=> b!6751658 (= e!4077516 (and tp!1850040 tp!1850041))))

(declare-fun b!6751660 () Bool)

(declare-fun tp!1850042 () Bool)

(declare-fun tp!1850044 () Bool)

(assert (=> b!6751660 (= e!4077516 (and tp!1850042 tp!1850044))))

(declare-fun b!6751657 () Bool)

(assert (=> b!6751657 (= e!4077516 tp_is_empty!42419)))

(declare-fun b!6751659 () Bool)

(declare-fun tp!1850043 () Bool)

(assert (=> b!6751659 (= e!4077516 tp!1850043)))

(assert (=> b!6750757 (= tp!1849938 e!4077516)))

(assert (= (and b!6750757 ((_ is ElementMatch!16583) (regOne!33679 r!7292))) b!6751657))

(assert (= (and b!6750757 ((_ is Concat!25428) (regOne!33679 r!7292))) b!6751658))

(assert (= (and b!6750757 ((_ is Star!16583) (regOne!33679 r!7292))) b!6751659))

(assert (= (and b!6750757 ((_ is Union!16583) (regOne!33679 r!7292))) b!6751660))

(declare-fun b!6751662 () Bool)

(declare-fun e!4077517 () Bool)

(declare-fun tp!1850045 () Bool)

(declare-fun tp!1850046 () Bool)

(assert (=> b!6751662 (= e!4077517 (and tp!1850045 tp!1850046))))

(declare-fun b!6751664 () Bool)

(declare-fun tp!1850047 () Bool)

(declare-fun tp!1850049 () Bool)

(assert (=> b!6751664 (= e!4077517 (and tp!1850047 tp!1850049))))

(declare-fun b!6751661 () Bool)

(assert (=> b!6751661 (= e!4077517 tp_is_empty!42419)))

(declare-fun b!6751663 () Bool)

(declare-fun tp!1850048 () Bool)

(assert (=> b!6751663 (= e!4077517 tp!1850048)))

(assert (=> b!6750757 (= tp!1849939 e!4077517)))

(assert (= (and b!6750757 ((_ is ElementMatch!16583) (regTwo!33679 r!7292))) b!6751661))

(assert (= (and b!6750757 ((_ is Concat!25428) (regTwo!33679 r!7292))) b!6751662))

(assert (= (and b!6750757 ((_ is Star!16583) (regTwo!33679 r!7292))) b!6751663))

(assert (= (and b!6750757 ((_ is Union!16583) (regTwo!33679 r!7292))) b!6751664))

(declare-fun b!6751665 () Bool)

(declare-fun e!4077518 () Bool)

(declare-fun tp!1850050 () Bool)

(declare-fun tp!1850051 () Bool)

(assert (=> b!6751665 (= e!4077518 (and tp!1850050 tp!1850051))))

(assert (=> b!6750771 (= tp!1849940 e!4077518)))

(assert (= (and b!6750771 ((_ is Cons!65924) (exprs!6467 (h!72373 zl!343)))) b!6751665))

(declare-fun b!6751667 () Bool)

(declare-fun e!4077519 () Bool)

(declare-fun tp!1850052 () Bool)

(declare-fun tp!1850053 () Bool)

(assert (=> b!6751667 (= e!4077519 (and tp!1850052 tp!1850053))))

(declare-fun b!6751669 () Bool)

(declare-fun tp!1850054 () Bool)

(declare-fun tp!1850056 () Bool)

(assert (=> b!6751669 (= e!4077519 (and tp!1850054 tp!1850056))))

(declare-fun b!6751666 () Bool)

(assert (=> b!6751666 (= e!4077519 tp_is_empty!42419)))

(declare-fun b!6751668 () Bool)

(declare-fun tp!1850055 () Bool)

(assert (=> b!6751668 (= e!4077519 tp!1850055)))

(assert (=> b!6750751 (= tp!1849945 e!4077519)))

(assert (= (and b!6750751 ((_ is ElementMatch!16583) (regOne!33678 r!7292))) b!6751666))

(assert (= (and b!6750751 ((_ is Concat!25428) (regOne!33678 r!7292))) b!6751667))

(assert (= (and b!6750751 ((_ is Star!16583) (regOne!33678 r!7292))) b!6751668))

(assert (= (and b!6750751 ((_ is Union!16583) (regOne!33678 r!7292))) b!6751669))

(declare-fun b!6751671 () Bool)

(declare-fun e!4077520 () Bool)

(declare-fun tp!1850057 () Bool)

(declare-fun tp!1850058 () Bool)

(assert (=> b!6751671 (= e!4077520 (and tp!1850057 tp!1850058))))

(declare-fun b!6751673 () Bool)

(declare-fun tp!1850059 () Bool)

(declare-fun tp!1850061 () Bool)

(assert (=> b!6751673 (= e!4077520 (and tp!1850059 tp!1850061))))

(declare-fun b!6751670 () Bool)

(assert (=> b!6751670 (= e!4077520 tp_is_empty!42419)))

(declare-fun b!6751672 () Bool)

(declare-fun tp!1850060 () Bool)

(assert (=> b!6751672 (= e!4077520 tp!1850060)))

(assert (=> b!6750751 (= tp!1849941 e!4077520)))

(assert (= (and b!6750751 ((_ is ElementMatch!16583) (regTwo!33678 r!7292))) b!6751670))

(assert (= (and b!6750751 ((_ is Concat!25428) (regTwo!33678 r!7292))) b!6751671))

(assert (= (and b!6750751 ((_ is Star!16583) (regTwo!33678 r!7292))) b!6751672))

(assert (= (and b!6750751 ((_ is Union!16583) (regTwo!33678 r!7292))) b!6751673))

(declare-fun b_lambda!254275 () Bool)

(assert (= b_lambda!254269 (or b!6750745 b_lambda!254275)))

(declare-fun bs!1794572 () Bool)

(declare-fun d!2120725 () Bool)

(assert (= bs!1794572 (and d!2120725 b!6750745)))

(assert (=> bs!1794572 (= (dynLambda!26304 lambda!379729 lt!2441050) (derivationStepZipperUp!1737 lt!2441050 (h!72374 s!2326)))))

(assert (=> bs!1794572 m!7505072))

(assert (=> d!2120679 d!2120725))

(declare-fun b_lambda!254277 () Bool)

(assert (= b_lambda!254271 (or b!6750745 b_lambda!254277)))

(declare-fun bs!1794573 () Bool)

(declare-fun d!2120727 () Bool)

(assert (= bs!1794573 (and d!2120727 b!6750745)))

(assert (=> bs!1794573 (= (dynLambda!26304 lambda!379729 lt!2441068) (derivationStepZipperUp!1737 lt!2441068 (h!72374 s!2326)))))

(assert (=> bs!1794573 m!7505084))

(assert (=> d!2120697 d!2120727))

(declare-fun b_lambda!254279 () Bool)

(assert (= b_lambda!254273 (or b!6750745 b_lambda!254279)))

(declare-fun bs!1794574 () Bool)

(declare-fun d!2120729 () Bool)

(assert (= bs!1794574 (and d!2120729 b!6750745)))

(assert (=> bs!1794574 (= (dynLambda!26304 lambda!379729 (h!72373 zl!343)) (derivationStepZipperUp!1737 (h!72373 zl!343) (h!72374 s!2326)))))

(assert (=> bs!1794574 m!7505046))

(assert (=> d!2120711 d!2120729))

(declare-fun b_lambda!254281 () Bool)

(assert (= b_lambda!254267 (or b!6750745 b_lambda!254281)))

(declare-fun bs!1794575 () Bool)

(declare-fun d!2120731 () Bool)

(assert (= bs!1794575 (and d!2120731 b!6750745)))

(assert (=> bs!1794575 (= (dynLambda!26304 lambda!379729 lt!2441058) (derivationStepZipperUp!1737 lt!2441058 (h!72374 s!2326)))))

(assert (=> bs!1794575 m!7505056))

(assert (=> d!2120677 d!2120731))

(check-sat (not bm!610645) (not b!6751254) (not b!6751253) (not b!6751618) (not bm!610632) (not b!6751632) (not bm!610646) (not b!6751668) (not b!6751579) (not d!2120697) (not b!6751346) (not setNonEmpty!46149) (not bm!610647) (not b!6751521) (not b!6751582) (not b!6751637) (not b!6751251) (not d!2120623) (not bm!610642) (not b!6751671) (not b!6751350) (not d!2120589) (not b!6751615) (not d!2120683) (not b!6751462) (not b!6751499) (not d!2120717) (not d!2120625) (not d!2120693) (not b!6751341) (not d!2120673) (not b!6751450) (not d!2120707) (not d!2120617) (not b!6751210) (not b!6751624) (not b!6751213) (not b!6751667) (not b!6751212) (not b!6751252) (not b!6751441) (not b_lambda!254281) (not d!2120509) (not d!2120565) (not b!6751631) (not bm!610588) (not bm!610626) (not d!2120677) (not b!6751614) (not b!6751449) (not b!6751673) (not b!6751567) (not b!6751015) (not b!6751459) tp_is_empty!42419 (not d!2120655) (not b!6751593) (not bm!610587) (not d!2120713) (not d!2120705) (not b!6751011) (not b!6751616) (not b!6751276) (not d!2120665) (not bm!610618) (not b!6751662) (not b!6751209) (not b!6751669) (not b!6751663) (not d!2120543) (not b!6751443) (not b!6751537) (not b!6751603) (not b!6751347) (not d!2120651) (not d!2120523) (not b!6751538) (not d!2120635) (not d!2120675) (not bm!610629) (not b!6751106) (not b_lambda!254279) (not b!6751578) (not b!6751203) (not d!2120545) (not b!6751008) (not b!6751655) (not d!2120541) (not d!2120711) (not bm!610571) (not b!6751245) (not bm!610623) (not b!6751672) (not d!2120687) (not b!6751277) (not b!6751349) (not d!2120667) (not d!2120723) (not bm!610620) (not b!6751461) (not b!6751658) (not b!6751516) (not b!6751522) (not b!6751012) (not b!6751659) (not d!2120515) (not b!6751348) (not bm!610570) (not d!2120611) (not d!2120513) (not b!6751608) (not bm!610615) (not bm!610648) (not d!2120555) (not b_lambda!254275) (not b!6751617) (not bm!610631) (not bm!610639) (not bm!610624) (not d!2120701) (not b_lambda!254277) (not b!6751105) (not b!6751656) (not b!6751512) (not d!2120619) (not bs!1794573) (not b!6751446) (not b!6751581) (not b!6751535) (not bm!610602) (not bs!1794574) (not b!6751604) (not b!6751448) (not bs!1794575) (not bm!610641) (not bs!1794572) (not d!2120679) (not b!6751463) (not b!6751447) (not b!6751275) (not b!6751517) (not b!6751467) (not b!6751654) (not b!6751376) (not b!6751665) (not b!6751460) (not b!6751352) (not d!2120615) (not b!6751255) (not d!2120721) (not d!2120689) (not b!6751009) (not b!6751211) (not b!6751274) (not bm!610625) (not b!6751511) (not b!6751642) (not b!6751660) (not b!6751013) (not bm!610643) (not b!6751453) (not b!6751664))
(check-sat)
