; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562730 () Bool)

(assert start!562730)

(declare-fun b!5341603 () Bool)

(assert (=> b!5341603 true))

(assert (=> b!5341603 true))

(declare-fun lambda!273870 () Int)

(declare-fun lambda!273869 () Int)

(assert (=> b!5341603 (not (= lambda!273870 lambda!273869))))

(assert (=> b!5341603 true))

(assert (=> b!5341603 true))

(declare-fun b!5341590 () Bool)

(assert (=> b!5341590 true))

(declare-fun bs!1238584 () Bool)

(declare-fun b!5341617 () Bool)

(assert (= bs!1238584 (and b!5341617 b!5341603)))

(declare-datatypes ((C!30312 0))(
  ( (C!30313 (val!24858 Int)) )
))
(declare-datatypes ((Regex!15021 0))(
  ( (ElementMatch!15021 (c!929453 C!30312)) (Concat!23866 (regOne!30554 Regex!15021) (regTwo!30554 Regex!15021)) (EmptyExpr!15021) (Star!15021 (reg!15350 Regex!15021)) (EmptyLang!15021) (Union!15021 (regOne!30555 Regex!15021) (regTwo!30555 Regex!15021)) )
))
(declare-fun r!7292 () Regex!15021)

(declare-fun lambda!273872 () Int)

(declare-fun lt!2178138 () Regex!15021)

(assert (=> bs!1238584 (= (and (= (regOne!30554 (regOne!30554 r!7292)) (regOne!30554 r!7292)) (= lt!2178138 (regTwo!30554 r!7292))) (= lambda!273872 lambda!273869))))

(assert (=> bs!1238584 (not (= lambda!273872 lambda!273870))))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(declare-fun lambda!273873 () Int)

(assert (=> bs!1238584 (not (= lambda!273873 lambda!273869))))

(assert (=> bs!1238584 (= (and (= (regOne!30554 (regOne!30554 r!7292)) (regOne!30554 r!7292)) (= lt!2178138 (regTwo!30554 r!7292))) (= lambda!273873 lambda!273870))))

(assert (=> b!5341617 (not (= lambda!273873 lambda!273872))))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(declare-fun lambda!273874 () Int)

(declare-fun lt!2178136 () Regex!15021)

(assert (=> bs!1238584 (= (and (= (regTwo!30554 (regOne!30554 r!7292)) (regOne!30554 r!7292)) (= lt!2178136 (regTwo!30554 r!7292))) (= lambda!273874 lambda!273869))))

(assert (=> bs!1238584 (not (= lambda!273874 lambda!273870))))

(assert (=> b!5341617 (= (and (= (regTwo!30554 (regOne!30554 r!7292)) (regOne!30554 (regOne!30554 r!7292))) (= lt!2178136 lt!2178138)) (= lambda!273874 lambda!273872))))

(assert (=> b!5341617 (not (= lambda!273874 lambda!273873))))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(declare-fun lambda!273875 () Int)

(assert (=> b!5341617 (not (= lambda!273875 lambda!273874))))

(assert (=> b!5341617 (not (= lambda!273875 lambda!273872))))

(assert (=> bs!1238584 (= (and (= (regTwo!30554 (regOne!30554 r!7292)) (regOne!30554 r!7292)) (= lt!2178136 (regTwo!30554 r!7292))) (= lambda!273875 lambda!273870))))

(assert (=> bs!1238584 (not (= lambda!273875 lambda!273869))))

(assert (=> b!5341617 (= (and (= (regTwo!30554 (regOne!30554 r!7292)) (regOne!30554 (regOne!30554 r!7292))) (= lt!2178136 lt!2178138)) (= lambda!273875 lambda!273873))))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(assert (=> b!5341617 true))

(declare-fun b!5341587 () Bool)

(declare-fun e!3316770 () Bool)

(declare-fun tp!1485158 () Bool)

(assert (=> b!5341587 (= e!3316770 tp!1485158)))

(declare-fun b!5341588 () Bool)

(declare-fun e!3316762 () Bool)

(declare-fun e!3316760 () Bool)

(assert (=> b!5341588 (= e!3316762 e!3316760)))

(declare-fun res!2266030 () Bool)

(assert (=> b!5341588 (=> res!2266030 e!3316760)))

(declare-datatypes ((List!61362 0))(
  ( (Nil!61238) (Cons!61238 (h!67686 C!30312) (t!374579 List!61362)) )
))
(declare-fun s!2326 () List!61362)

(declare-fun lt!2178123 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61363 0))(
  ( (Nil!61239) (Cons!61239 (h!67687 Regex!15021) (t!374580 List!61363)) )
))
(declare-datatypes ((Context!8810 0))(
  ( (Context!8811 (exprs!4905 List!61363)) )
))
(declare-fun lt!2178134 () (InoxSet Context!8810))

(declare-fun matchZipper!1265 ((InoxSet Context!8810) List!61362) Bool)

(assert (=> b!5341588 (= res!2266030 (not (= lt!2178123 (matchZipper!1265 lt!2178134 (t!374579 s!2326)))))))

(declare-fun lt!2178111 () (InoxSet Context!8810))

(assert (=> b!5341588 (= lt!2178123 (matchZipper!1265 lt!2178111 (t!374579 s!2326)))))

(declare-fun e!3316756 () Bool)

(declare-fun b!5341589 () Bool)

(declare-datatypes ((List!61364 0))(
  ( (Nil!61240) (Cons!61240 (h!67688 Context!8810) (t!374581 List!61364)) )
))
(declare-fun zl!343 () List!61364)

(declare-fun tp!1485163 () Bool)

(declare-fun inv!80799 (Context!8810) Bool)

(assert (=> b!5341589 (= e!3316756 (and (inv!80799 (h!67688 zl!343)) e!3316770 tp!1485163))))

(declare-fun e!3316771 () Bool)

(declare-fun e!3316755 () Bool)

(assert (=> b!5341590 (= e!3316771 e!3316755)))

(declare-fun res!2266025 () Bool)

(assert (=> b!5341590 (=> res!2266025 e!3316755)))

(get-info :version)

(assert (=> b!5341590 (= res!2266025 (or (and ((_ is ElementMatch!15021) (regOne!30554 r!7292)) (= (c!929453 (regOne!30554 r!7292)) (h!67686 s!2326))) ((_ is Union!15021) (regOne!30554 r!7292))))))

(declare-datatypes ((Unit!153602 0))(
  ( (Unit!153603) )
))
(declare-fun lt!2178125 () Unit!153602)

(declare-fun e!3316757 () Unit!153602)

(assert (=> b!5341590 (= lt!2178125 e!3316757)))

(declare-fun c!929452 () Bool)

(declare-fun nullable!5190 (Regex!15021) Bool)

(assert (=> b!5341590 (= c!929452 (nullable!5190 (h!67687 (exprs!4905 (h!67688 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8810))

(declare-fun lambda!273871 () Int)

(declare-fun flatMap!748 ((InoxSet Context!8810) Int) (InoxSet Context!8810))

(declare-fun derivationStepZipperUp!393 (Context!8810 C!30312) (InoxSet Context!8810))

(assert (=> b!5341590 (= (flatMap!748 z!1189 lambda!273871) (derivationStepZipperUp!393 (h!67688 zl!343) (h!67686 s!2326)))))

(declare-fun lt!2178131 () Unit!153602)

(declare-fun lemmaFlatMapOnSingletonSet!280 ((InoxSet Context!8810) Context!8810 Int) Unit!153602)

(assert (=> b!5341590 (= lt!2178131 (lemmaFlatMapOnSingletonSet!280 z!1189 (h!67688 zl!343) lambda!273871))))

(declare-fun lt!2178121 () (InoxSet Context!8810))

(declare-fun lt!2178119 () Context!8810)

(assert (=> b!5341590 (= lt!2178121 (derivationStepZipperUp!393 lt!2178119 (h!67686 s!2326)))))

(declare-fun derivationStepZipperDown!469 (Regex!15021 Context!8810 C!30312) (InoxSet Context!8810))

(assert (=> b!5341590 (= lt!2178111 (derivationStepZipperDown!469 (h!67687 (exprs!4905 (h!67688 zl!343))) lt!2178119 (h!67686 s!2326)))))

(assert (=> b!5341590 (= lt!2178119 (Context!8811 (t!374580 (exprs!4905 (h!67688 zl!343)))))))

(declare-fun lt!2178105 () (InoxSet Context!8810))

(assert (=> b!5341590 (= lt!2178105 (derivationStepZipperUp!393 (Context!8811 (Cons!61239 (h!67687 (exprs!4905 (h!67688 zl!343))) (t!374580 (exprs!4905 (h!67688 zl!343))))) (h!67686 s!2326)))))

(declare-fun b!5341591 () Bool)

(declare-fun res!2266026 () Bool)

(declare-fun e!3316769 () Bool)

(assert (=> b!5341591 (=> (not res!2266026) (not e!3316769))))

(declare-fun unfocusZipper!763 (List!61364) Regex!15021)

(assert (=> b!5341591 (= res!2266026 (= r!7292 (unfocusZipper!763 zl!343)))))

(declare-fun b!5341592 () Bool)

(declare-fun e!3316764 () Bool)

(declare-fun e!3316758 () Bool)

(assert (=> b!5341592 (= e!3316764 e!3316758)))

(declare-fun res!2266031 () Bool)

(assert (=> b!5341592 (=> res!2266031 e!3316758)))

(declare-fun lt!2178115 () Regex!15021)

(assert (=> b!5341592 (= res!2266031 (not (= (exprs!4905 (h!67688 zl!343)) (Cons!61239 lt!2178115 (t!374580 (exprs!4905 (h!67688 zl!343)))))))))

(assert (=> b!5341592 (= lt!2178115 (Concat!23866 (regOne!30554 (regOne!30554 r!7292)) (regTwo!30554 (regOne!30554 r!7292))))))

(declare-fun res!2266035 () Bool)

(assert (=> start!562730 (=> (not res!2266035) (not e!3316769))))

(declare-fun validRegex!6757 (Regex!15021) Bool)

(assert (=> start!562730 (= res!2266035 (validRegex!6757 r!7292))))

(assert (=> start!562730 e!3316769))

(declare-fun e!3316772 () Bool)

(assert (=> start!562730 e!3316772))

(declare-fun condSetEmpty!34477 () Bool)

(assert (=> start!562730 (= condSetEmpty!34477 (= z!1189 ((as const (Array Context!8810 Bool)) false)))))

(declare-fun setRes!34477 () Bool)

(assert (=> start!562730 setRes!34477))

(assert (=> start!562730 e!3316756))

(declare-fun e!3316759 () Bool)

(assert (=> start!562730 e!3316759))

(declare-fun b!5341586 () Bool)

(declare-fun e!3316765 () Bool)

(assert (=> b!5341586 (= e!3316765 (nullable!5190 (regOne!30554 (regOne!30554 r!7292))))))

(declare-fun b!5341593 () Bool)

(declare-fun res!2266027 () Bool)

(assert (=> b!5341593 (=> res!2266027 e!3316755)))

(assert (=> b!5341593 (= res!2266027 (not ((_ is Concat!23866) (regOne!30554 r!7292))))))

(declare-fun setIsEmpty!34477 () Bool)

(assert (=> setIsEmpty!34477 setRes!34477))

(declare-fun b!5341594 () Bool)

(declare-fun e!3316768 () Bool)

(assert (=> b!5341594 (= e!3316769 (not e!3316768))))

(declare-fun res!2266020 () Bool)

(assert (=> b!5341594 (=> res!2266020 e!3316768)))

(assert (=> b!5341594 (= res!2266020 (not ((_ is Cons!61240) zl!343)))))

(declare-fun lt!2178132 () Bool)

(declare-fun matchRSpec!2124 (Regex!15021 List!61362) Bool)

(assert (=> b!5341594 (= lt!2178132 (matchRSpec!2124 r!7292 s!2326))))

(declare-fun matchR!7206 (Regex!15021 List!61362) Bool)

(assert (=> b!5341594 (= lt!2178132 (matchR!7206 r!7292 s!2326))))

(declare-fun lt!2178120 () Unit!153602)

(declare-fun mainMatchTheorem!2124 (Regex!15021 List!61362) Unit!153602)

(assert (=> b!5341594 (= lt!2178120 (mainMatchTheorem!2124 r!7292 s!2326))))

(declare-fun b!5341595 () Bool)

(declare-fun res!2266028 () Bool)

(assert (=> b!5341595 (=> res!2266028 e!3316768)))

(assert (=> b!5341595 (= res!2266028 (or ((_ is EmptyExpr!15021) r!7292) ((_ is EmptyLang!15021) r!7292) ((_ is ElementMatch!15021) r!7292) ((_ is Union!15021) r!7292) (not ((_ is Concat!23866) r!7292))))))

(declare-fun b!5341596 () Bool)

(declare-fun e!3316761 () Bool)

(declare-fun tp!1485165 () Bool)

(assert (=> b!5341596 (= e!3316761 tp!1485165)))

(declare-fun b!5341597 () Bool)

(declare-fun tp!1485164 () Bool)

(declare-fun tp!1485162 () Bool)

(assert (=> b!5341597 (= e!3316772 (and tp!1485164 tp!1485162))))

(declare-fun b!5341598 () Bool)

(declare-fun tp_is_empty!39295 () Bool)

(assert (=> b!5341598 (= e!3316772 tp_is_empty!39295)))

(declare-fun b!5341599 () Bool)

(declare-fun res!2266018 () Bool)

(assert (=> b!5341599 (=> (not res!2266018) (not e!3316769))))

(declare-fun toList!8805 ((InoxSet Context!8810)) List!61364)

(assert (=> b!5341599 (= res!2266018 (= (toList!8805 z!1189) zl!343))))

(declare-fun setNonEmpty!34477 () Bool)

(declare-fun setElem!34477 () Context!8810)

(declare-fun tp!1485161 () Bool)

(assert (=> setNonEmpty!34477 (= setRes!34477 (and tp!1485161 (inv!80799 setElem!34477) e!3316761))))

(declare-fun setRest!34477 () (InoxSet Context!8810))

(assert (=> setNonEmpty!34477 (= z!1189 ((_ map or) (store ((as const (Array Context!8810 Bool)) false) setElem!34477 true) setRest!34477))))

(declare-fun b!5341600 () Bool)

(declare-fun res!2266033 () Bool)

(assert (=> b!5341600 (=> res!2266033 e!3316758)))

(declare-fun lt!2178128 () Context!8810)

(declare-fun contextDepthTotal!154 (Context!8810) Int)

(assert (=> b!5341600 (= res!2266033 (>= (contextDepthTotal!154 lt!2178128) (contextDepthTotal!154 (h!67688 zl!343))))))

(declare-fun b!5341601 () Bool)

(declare-fun e!3316763 () Bool)

(assert (=> b!5341601 (= e!3316763 (validRegex!6757 (Concat!23866 lt!2178115 (regTwo!30554 r!7292))))))

(declare-fun b!5341602 () Bool)

(declare-fun res!2266023 () Bool)

(assert (=> b!5341602 (=> res!2266023 e!3316768)))

(declare-fun generalisedConcat!690 (List!61363) Regex!15021)

(assert (=> b!5341602 (= res!2266023 (not (= r!7292 (generalisedConcat!690 (exprs!4905 (h!67688 zl!343))))))))

(assert (=> b!5341603 (= e!3316768 e!3316771)))

(declare-fun res!2266016 () Bool)

(assert (=> b!5341603 (=> res!2266016 e!3316771)))

(declare-fun lt!2178104 () Bool)

(assert (=> b!5341603 (= res!2266016 (or (not (= lt!2178132 lt!2178104)) ((_ is Nil!61238) s!2326)))))

(declare-fun Exists!2202 (Int) Bool)

(assert (=> b!5341603 (= (Exists!2202 lambda!273869) (Exists!2202 lambda!273870))))

(declare-fun lt!2178124 () Unit!153602)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!856 (Regex!15021 Regex!15021 List!61362) Unit!153602)

(assert (=> b!5341603 (= lt!2178124 (lemmaExistCutMatchRandMatchRSpecEquivalent!856 (regOne!30554 r!7292) (regTwo!30554 r!7292) s!2326))))

(assert (=> b!5341603 (= lt!2178104 (Exists!2202 lambda!273869))))

(declare-datatypes ((tuple2!64440 0))(
  ( (tuple2!64441 (_1!35523 List!61362) (_2!35523 List!61362)) )
))
(declare-datatypes ((Option!15132 0))(
  ( (None!15131) (Some!15131 (v!51160 tuple2!64440)) )
))
(declare-fun isDefined!11835 (Option!15132) Bool)

(declare-fun findConcatSeparation!1546 (Regex!15021 Regex!15021 List!61362 List!61362 List!61362) Option!15132)

(assert (=> b!5341603 (= lt!2178104 (isDefined!11835 (findConcatSeparation!1546 (regOne!30554 r!7292) (regTwo!30554 r!7292) Nil!61238 s!2326 s!2326)))))

(declare-fun lt!2178122 () Unit!153602)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1310 (Regex!15021 Regex!15021 List!61362) Unit!153602)

(assert (=> b!5341603 (= lt!2178122 (lemmaFindConcatSeparationEquivalentToExists!1310 (regOne!30554 r!7292) (regTwo!30554 r!7292) s!2326))))

(declare-fun b!5341604 () Bool)

(declare-fun e!3316767 () Bool)

(assert (=> b!5341604 (= e!3316767 (matchZipper!1265 lt!2178121 (t!374579 s!2326)))))

(declare-fun b!5341605 () Bool)

(declare-fun res!2266015 () Bool)

(assert (=> b!5341605 (=> res!2266015 e!3316763)))

(assert (=> b!5341605 (= res!2266015 (not (= lt!2178132 (matchR!7206 (Concat!23866 (regOne!30554 r!7292) (regTwo!30554 r!7292)) s!2326))))))

(declare-fun b!5341606 () Bool)

(declare-fun Unit!153604 () Unit!153602)

(assert (=> b!5341606 (= e!3316757 Unit!153604)))

(declare-fun lt!2178127 () Unit!153602)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!258 ((InoxSet Context!8810) (InoxSet Context!8810) List!61362) Unit!153602)

(assert (=> b!5341606 (= lt!2178127 (lemmaZipperConcatMatchesSameAsBothZippers!258 lt!2178111 lt!2178121 (t!374579 s!2326)))))

(declare-fun res!2266021 () Bool)

(assert (=> b!5341606 (= res!2266021 (matchZipper!1265 lt!2178111 (t!374579 s!2326)))))

(assert (=> b!5341606 (=> res!2266021 e!3316767)))

(assert (=> b!5341606 (= (matchZipper!1265 ((_ map or) lt!2178111 lt!2178121) (t!374579 s!2326)) e!3316767)))

(declare-fun b!5341607 () Bool)

(declare-fun e!3316766 () Bool)

(assert (=> b!5341607 (= e!3316758 e!3316766)))

(declare-fun res!2266017 () Bool)

(assert (=> b!5341607 (=> res!2266017 e!3316766)))

(declare-fun lt!2178107 () List!61364)

(declare-fun zipperDepthTotal!174 (List!61364) Int)

(assert (=> b!5341607 (= res!2266017 (>= (zipperDepthTotal!174 lt!2178107) (zipperDepthTotal!174 zl!343)))))

(assert (=> b!5341607 (= lt!2178107 (Cons!61240 lt!2178128 Nil!61240))))

(declare-fun b!5341608 () Bool)

(declare-fun res!2266037 () Bool)

(assert (=> b!5341608 (=> res!2266037 e!3316764)))

(declare-fun lt!2178114 () (InoxSet Context!8810))

(assert (=> b!5341608 (= res!2266037 (not (= lt!2178123 (matchZipper!1265 lt!2178114 (t!374579 s!2326)))))))

(declare-fun b!5341609 () Bool)

(declare-fun res!2266034 () Bool)

(assert (=> b!5341609 (=> res!2266034 e!3316755)))

(assert (=> b!5341609 (= res!2266034 e!3316765)))

(declare-fun res!2266019 () Bool)

(assert (=> b!5341609 (=> (not res!2266019) (not e!3316765))))

(assert (=> b!5341609 (= res!2266019 ((_ is Concat!23866) (regOne!30554 r!7292)))))

(declare-fun b!5341610 () Bool)

(declare-fun res!2266029 () Bool)

(assert (=> b!5341610 (=> res!2266029 e!3316768)))

(declare-fun isEmpty!33211 (List!61364) Bool)

(assert (=> b!5341610 (= res!2266029 (not (isEmpty!33211 (t!374581 zl!343))))))

(declare-fun b!5341611 () Bool)

(assert (=> b!5341611 (= e!3316755 e!3316762)))

(declare-fun res!2266014 () Bool)

(assert (=> b!5341611 (=> res!2266014 e!3316762)))

(assert (=> b!5341611 (= res!2266014 (not (= lt!2178111 lt!2178134)))))

(declare-fun lt!2178109 () List!61363)

(assert (=> b!5341611 (= lt!2178134 (derivationStepZipperDown!469 (regOne!30554 (regOne!30554 r!7292)) (Context!8811 lt!2178109) (h!67686 s!2326)))))

(assert (=> b!5341611 (= lt!2178109 (Cons!61239 (regTwo!30554 (regOne!30554 r!7292)) (t!374580 (exprs!4905 (h!67688 zl!343)))))))

(declare-fun b!5341612 () Bool)

(assert (=> b!5341612 (= e!3316760 e!3316764)))

(declare-fun res!2266024 () Bool)

(assert (=> b!5341612 (=> res!2266024 e!3316764)))

(assert (=> b!5341612 (= res!2266024 (not (= lt!2178114 lt!2178134)))))

(declare-fun lt!2178126 () (InoxSet Context!8810))

(assert (=> b!5341612 (= (flatMap!748 lt!2178126 lambda!273871) (derivationStepZipperUp!393 lt!2178128 (h!67686 s!2326)))))

(declare-fun lt!2178133 () Unit!153602)

(assert (=> b!5341612 (= lt!2178133 (lemmaFlatMapOnSingletonSet!280 lt!2178126 lt!2178128 lambda!273871))))

(declare-fun lt!2178110 () (InoxSet Context!8810))

(assert (=> b!5341612 (= lt!2178110 (derivationStepZipperUp!393 lt!2178128 (h!67686 s!2326)))))

(declare-fun derivationStepZipper!1262 ((InoxSet Context!8810) C!30312) (InoxSet Context!8810))

(assert (=> b!5341612 (= lt!2178114 (derivationStepZipper!1262 lt!2178126 (h!67686 s!2326)))))

(assert (=> b!5341612 (= lt!2178126 (store ((as const (Array Context!8810 Bool)) false) lt!2178128 true))))

(declare-fun lt!2178135 () List!61363)

(assert (=> b!5341612 (= lt!2178128 (Context!8811 lt!2178135))))

(assert (=> b!5341612 (= lt!2178135 (Cons!61239 (regOne!30554 (regOne!30554 r!7292)) lt!2178109))))

(declare-fun b!5341613 () Bool)

(declare-fun res!2266022 () Bool)

(assert (=> b!5341613 (=> res!2266022 e!3316768)))

(declare-fun generalisedUnion!950 (List!61363) Regex!15021)

(declare-fun unfocusZipperList!463 (List!61364) List!61363)

(assert (=> b!5341613 (= res!2266022 (not (= r!7292 (generalisedUnion!950 (unfocusZipperList!463 zl!343)))))))

(declare-fun b!5341614 () Bool)

(declare-fun res!2266036 () Bool)

(assert (=> b!5341614 (=> res!2266036 e!3316768)))

(assert (=> b!5341614 (= res!2266036 (not ((_ is Cons!61239) (exprs!4905 (h!67688 zl!343)))))))

(declare-fun b!5341615 () Bool)

(declare-fun res!2266032 () Bool)

(assert (=> b!5341615 (=> res!2266032 e!3316766)))

(declare-fun zipperDepth!130 (List!61364) Int)

(assert (=> b!5341615 (= res!2266032 (> (zipperDepth!130 lt!2178107) (zipperDepth!130 zl!343)))))

(declare-fun b!5341616 () Bool)

(declare-fun tp!1485159 () Bool)

(assert (=> b!5341616 (= e!3316772 tp!1485159)))

(assert (=> b!5341617 (= e!3316766 e!3316763)))

(declare-fun res!2266039 () Bool)

(assert (=> b!5341617 (=> res!2266039 e!3316763)))

(declare-fun lt!2178112 () Bool)

(declare-fun lt!2178106 () Bool)

(declare-fun lt!2178113 () Bool)

(assert (=> b!5341617 (= res!2266039 (or (not (= lt!2178106 lt!2178113)) (not (= lt!2178106 lt!2178112))))))

(assert (=> b!5341617 (= lt!2178106 (matchZipper!1265 z!1189 s!2326))))

(assert (=> b!5341617 (= (Exists!2202 lambda!273874) (Exists!2202 lambda!273875))))

(declare-fun lt!2178129 () Unit!153602)

(assert (=> b!5341617 (= lt!2178129 (lemmaExistCutMatchRandMatchRSpecEquivalent!856 (regTwo!30554 (regOne!30554 r!7292)) lt!2178136 s!2326))))

(assert (=> b!5341617 (= (isDefined!11835 (findConcatSeparation!1546 (regTwo!30554 (regOne!30554 r!7292)) lt!2178136 Nil!61238 s!2326 s!2326)) (Exists!2202 lambda!273874))))

(declare-fun lt!2178130 () Unit!153602)

(assert (=> b!5341617 (= lt!2178130 (lemmaFindConcatSeparationEquivalentToExists!1310 (regTwo!30554 (regOne!30554 r!7292)) lt!2178136 s!2326))))

(assert (=> b!5341617 (= lt!2178136 (generalisedConcat!690 (t!374580 (exprs!4905 (h!67688 zl!343)))))))

(assert (=> b!5341617 (= (matchR!7206 lt!2178138 s!2326) (matchRSpec!2124 lt!2178138 s!2326))))

(declare-fun lt!2178103 () Unit!153602)

(assert (=> b!5341617 (= lt!2178103 (mainMatchTheorem!2124 lt!2178138 s!2326))))

(assert (=> b!5341617 (= (Exists!2202 lambda!273872) (Exists!2202 lambda!273873))))

(declare-fun lt!2178116 () Unit!153602)

(assert (=> b!5341617 (= lt!2178116 (lemmaExistCutMatchRandMatchRSpecEquivalent!856 (regOne!30554 (regOne!30554 r!7292)) lt!2178138 s!2326))))

(assert (=> b!5341617 (= (isDefined!11835 (findConcatSeparation!1546 (regOne!30554 (regOne!30554 r!7292)) lt!2178138 Nil!61238 s!2326 s!2326)) (Exists!2202 lambda!273872))))

(declare-fun lt!2178108 () Unit!153602)

(assert (=> b!5341617 (= lt!2178108 (lemmaFindConcatSeparationEquivalentToExists!1310 (regOne!30554 (regOne!30554 r!7292)) lt!2178138 s!2326))))

(assert (=> b!5341617 (= lt!2178138 (generalisedConcat!690 lt!2178109))))

(declare-fun lt!2178137 () Regex!15021)

(assert (=> b!5341617 (= lt!2178112 (matchRSpec!2124 lt!2178137 s!2326))))

(declare-fun lt!2178117 () Unit!153602)

(assert (=> b!5341617 (= lt!2178117 (mainMatchTheorem!2124 lt!2178137 s!2326))))

(assert (=> b!5341617 (= lt!2178112 lt!2178113)))

(assert (=> b!5341617 (= lt!2178113 (matchZipper!1265 lt!2178126 s!2326))))

(assert (=> b!5341617 (= lt!2178112 (matchR!7206 lt!2178137 s!2326))))

(declare-fun lt!2178118 () Unit!153602)

(declare-fun theoremZipperRegexEquiv!419 ((InoxSet Context!8810) List!61364 Regex!15021 List!61362) Unit!153602)

(assert (=> b!5341617 (= lt!2178118 (theoremZipperRegexEquiv!419 lt!2178126 lt!2178107 lt!2178137 s!2326))))

(assert (=> b!5341617 (= lt!2178137 (generalisedConcat!690 lt!2178135))))

(declare-fun b!5341618 () Bool)

(declare-fun Unit!153605 () Unit!153602)

(assert (=> b!5341618 (= e!3316757 Unit!153605)))

(declare-fun b!5341619 () Bool)

(declare-fun tp!1485160 () Bool)

(assert (=> b!5341619 (= e!3316759 (and tp_is_empty!39295 tp!1485160))))

(declare-fun b!5341620 () Bool)

(declare-fun tp!1485157 () Bool)

(declare-fun tp!1485156 () Bool)

(assert (=> b!5341620 (= e!3316772 (and tp!1485157 tp!1485156))))

(declare-fun b!5341621 () Bool)

(declare-fun res!2266038 () Bool)

(assert (=> b!5341621 (=> res!2266038 e!3316771)))

(declare-fun isEmpty!33212 (List!61363) Bool)

(assert (=> b!5341621 (= res!2266038 (isEmpty!33212 (t!374580 (exprs!4905 (h!67688 zl!343)))))))

(assert (= (and start!562730 res!2266035) b!5341599))

(assert (= (and b!5341599 res!2266018) b!5341591))

(assert (= (and b!5341591 res!2266026) b!5341594))

(assert (= (and b!5341594 (not res!2266020)) b!5341610))

(assert (= (and b!5341610 (not res!2266029)) b!5341602))

(assert (= (and b!5341602 (not res!2266023)) b!5341614))

(assert (= (and b!5341614 (not res!2266036)) b!5341613))

(assert (= (and b!5341613 (not res!2266022)) b!5341595))

(assert (= (and b!5341595 (not res!2266028)) b!5341603))

(assert (= (and b!5341603 (not res!2266016)) b!5341621))

(assert (= (and b!5341621 (not res!2266038)) b!5341590))

(assert (= (and b!5341590 c!929452) b!5341606))

(assert (= (and b!5341590 (not c!929452)) b!5341618))

(assert (= (and b!5341606 (not res!2266021)) b!5341604))

(assert (= (and b!5341590 (not res!2266025)) b!5341609))

(assert (= (and b!5341609 res!2266019) b!5341586))

(assert (= (and b!5341609 (not res!2266034)) b!5341593))

(assert (= (and b!5341593 (not res!2266027)) b!5341611))

(assert (= (and b!5341611 (not res!2266014)) b!5341588))

(assert (= (and b!5341588 (not res!2266030)) b!5341612))

(assert (= (and b!5341612 (not res!2266024)) b!5341608))

(assert (= (and b!5341608 (not res!2266037)) b!5341592))

(assert (= (and b!5341592 (not res!2266031)) b!5341600))

(assert (= (and b!5341600 (not res!2266033)) b!5341607))

(assert (= (and b!5341607 (not res!2266017)) b!5341615))

(assert (= (and b!5341615 (not res!2266032)) b!5341617))

(assert (= (and b!5341617 (not res!2266039)) b!5341605))

(assert (= (and b!5341605 (not res!2266015)) b!5341601))

(assert (= (and start!562730 ((_ is ElementMatch!15021) r!7292)) b!5341598))

(assert (= (and start!562730 ((_ is Concat!23866) r!7292)) b!5341597))

(assert (= (and start!562730 ((_ is Star!15021) r!7292)) b!5341616))

(assert (= (and start!562730 ((_ is Union!15021) r!7292)) b!5341620))

(assert (= (and start!562730 condSetEmpty!34477) setIsEmpty!34477))

(assert (= (and start!562730 (not condSetEmpty!34477)) setNonEmpty!34477))

(assert (= setNonEmpty!34477 b!5341596))

(assert (= b!5341589 b!5341587))

(assert (= (and start!562730 ((_ is Cons!61240) zl!343)) b!5341589))

(assert (= (and start!562730 ((_ is Cons!61238) s!2326)) b!5341619))

(declare-fun m!6373822 () Bool)

(assert (=> b!5341605 m!6373822))

(declare-fun m!6373824 () Bool)

(assert (=> b!5341601 m!6373824))

(declare-fun m!6373826 () Bool)

(assert (=> start!562730 m!6373826))

(declare-fun m!6373828 () Bool)

(assert (=> b!5341600 m!6373828))

(declare-fun m!6373830 () Bool)

(assert (=> b!5341600 m!6373830))

(declare-fun m!6373832 () Bool)

(assert (=> b!5341586 m!6373832))

(declare-fun m!6373834 () Bool)

(assert (=> b!5341588 m!6373834))

(declare-fun m!6373836 () Bool)

(assert (=> b!5341588 m!6373836))

(declare-fun m!6373838 () Bool)

(assert (=> b!5341621 m!6373838))

(declare-fun m!6373840 () Bool)

(assert (=> b!5341594 m!6373840))

(declare-fun m!6373842 () Bool)

(assert (=> b!5341594 m!6373842))

(declare-fun m!6373844 () Bool)

(assert (=> b!5341594 m!6373844))

(declare-fun m!6373846 () Bool)

(assert (=> setNonEmpty!34477 m!6373846))

(declare-fun m!6373848 () Bool)

(assert (=> b!5341610 m!6373848))

(declare-fun m!6373850 () Bool)

(assert (=> b!5341603 m!6373850))

(declare-fun m!6373852 () Bool)

(assert (=> b!5341603 m!6373852))

(declare-fun m!6373854 () Bool)

(assert (=> b!5341603 m!6373854))

(declare-fun m!6373856 () Bool)

(assert (=> b!5341603 m!6373856))

(assert (=> b!5341603 m!6373850))

(declare-fun m!6373858 () Bool)

(assert (=> b!5341603 m!6373858))

(declare-fun m!6373860 () Bool)

(assert (=> b!5341603 m!6373860))

(assert (=> b!5341603 m!6373854))

(declare-fun m!6373862 () Bool)

(assert (=> b!5341611 m!6373862))

(declare-fun m!6373864 () Bool)

(assert (=> b!5341608 m!6373864))

(declare-fun m!6373866 () Bool)

(assert (=> b!5341606 m!6373866))

(assert (=> b!5341606 m!6373836))

(declare-fun m!6373868 () Bool)

(assert (=> b!5341606 m!6373868))

(declare-fun m!6373870 () Bool)

(assert (=> b!5341591 m!6373870))

(declare-fun m!6373872 () Bool)

(assert (=> b!5341599 m!6373872))

(declare-fun m!6373874 () Bool)

(assert (=> b!5341612 m!6373874))

(declare-fun m!6373876 () Bool)

(assert (=> b!5341612 m!6373876))

(declare-fun m!6373878 () Bool)

(assert (=> b!5341612 m!6373878))

(declare-fun m!6373880 () Bool)

(assert (=> b!5341612 m!6373880))

(declare-fun m!6373882 () Bool)

(assert (=> b!5341612 m!6373882))

(declare-fun m!6373884 () Bool)

(assert (=> b!5341604 m!6373884))

(declare-fun m!6373886 () Bool)

(assert (=> b!5341589 m!6373886))

(declare-fun m!6373888 () Bool)

(assert (=> b!5341617 m!6373888))

(declare-fun m!6373890 () Bool)

(assert (=> b!5341617 m!6373890))

(declare-fun m!6373892 () Bool)

(assert (=> b!5341617 m!6373892))

(declare-fun m!6373894 () Bool)

(assert (=> b!5341617 m!6373894))

(declare-fun m!6373896 () Bool)

(assert (=> b!5341617 m!6373896))

(declare-fun m!6373898 () Bool)

(assert (=> b!5341617 m!6373898))

(declare-fun m!6373900 () Bool)

(assert (=> b!5341617 m!6373900))

(declare-fun m!6373902 () Bool)

(assert (=> b!5341617 m!6373902))

(declare-fun m!6373904 () Bool)

(assert (=> b!5341617 m!6373904))

(declare-fun m!6373906 () Bool)

(assert (=> b!5341617 m!6373906))

(declare-fun m!6373908 () Bool)

(assert (=> b!5341617 m!6373908))

(declare-fun m!6373910 () Bool)

(assert (=> b!5341617 m!6373910))

(declare-fun m!6373912 () Bool)

(assert (=> b!5341617 m!6373912))

(declare-fun m!6373914 () Bool)

(assert (=> b!5341617 m!6373914))

(declare-fun m!6373916 () Bool)

(assert (=> b!5341617 m!6373916))

(assert (=> b!5341617 m!6373914))

(declare-fun m!6373918 () Bool)

(assert (=> b!5341617 m!6373918))

(assert (=> b!5341617 m!6373900))

(declare-fun m!6373920 () Bool)

(assert (=> b!5341617 m!6373920))

(assert (=> b!5341617 m!6373898))

(declare-fun m!6373922 () Bool)

(assert (=> b!5341617 m!6373922))

(declare-fun m!6373924 () Bool)

(assert (=> b!5341617 m!6373924))

(assert (=> b!5341617 m!6373896))

(declare-fun m!6373926 () Bool)

(assert (=> b!5341617 m!6373926))

(declare-fun m!6373928 () Bool)

(assert (=> b!5341617 m!6373928))

(declare-fun m!6373930 () Bool)

(assert (=> b!5341617 m!6373930))

(declare-fun m!6373932 () Bool)

(assert (=> b!5341617 m!6373932))

(declare-fun m!6373934 () Bool)

(assert (=> b!5341617 m!6373934))

(declare-fun m!6373936 () Bool)

(assert (=> b!5341590 m!6373936))

(declare-fun m!6373938 () Bool)

(assert (=> b!5341590 m!6373938))

(declare-fun m!6373940 () Bool)

(assert (=> b!5341590 m!6373940))

(declare-fun m!6373942 () Bool)

(assert (=> b!5341590 m!6373942))

(declare-fun m!6373944 () Bool)

(assert (=> b!5341590 m!6373944))

(declare-fun m!6373946 () Bool)

(assert (=> b!5341590 m!6373946))

(declare-fun m!6373948 () Bool)

(assert (=> b!5341590 m!6373948))

(declare-fun m!6373950 () Bool)

(assert (=> b!5341607 m!6373950))

(declare-fun m!6373952 () Bool)

(assert (=> b!5341607 m!6373952))

(declare-fun m!6373954 () Bool)

(assert (=> b!5341615 m!6373954))

(declare-fun m!6373956 () Bool)

(assert (=> b!5341615 m!6373956))

(declare-fun m!6373958 () Bool)

(assert (=> b!5341602 m!6373958))

(declare-fun m!6373960 () Bool)

(assert (=> b!5341613 m!6373960))

(assert (=> b!5341613 m!6373960))

(declare-fun m!6373962 () Bool)

(assert (=> b!5341613 m!6373962))

(check-sat (not b!5341612) (not b!5341601) (not b!5341613) (not b!5341608) (not b!5341599) (not b!5341620) (not b!5341597) (not b!5341587) (not b!5341600) (not b!5341607) tp_is_empty!39295 (not setNonEmpty!34477) (not b!5341602) (not b!5341596) (not b!5341619) (not b!5341606) (not b!5341590) (not b!5341588) (not b!5341610) (not b!5341603) (not b!5341591) (not b!5341594) (not b!5341617) (not b!5341611) (not b!5341604) (not b!5341621) (not b!5341586) (not b!5341605) (not start!562730) (not b!5341616) (not b!5341589) (not b!5341615))
(check-sat)
