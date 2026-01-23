; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!629346 () Bool)

(assert start!629346)

(declare-fun b!6352310 () Bool)

(assert (=> b!6352310 true))

(assert (=> b!6352310 true))

(declare-fun lambda!349505 () Int)

(declare-fun lambda!349504 () Int)

(assert (=> b!6352310 (not (= lambda!349505 lambda!349504))))

(assert (=> b!6352310 true))

(assert (=> b!6352310 true))

(declare-fun b!6352296 () Bool)

(assert (=> b!6352296 true))

(declare-fun bs!1591079 () Bool)

(declare-fun b!6352292 () Bool)

(assert (= bs!1591079 (and b!6352292 b!6352310)))

(declare-datatypes ((C!32788 0))(
  ( (C!32789 (val!26096 Int)) )
))
(declare-datatypes ((Regex!16259 0))(
  ( (ElementMatch!16259 (c!1155726 C!32788)) (Concat!25104 (regOne!33030 Regex!16259) (regTwo!33030 Regex!16259)) (EmptyExpr!16259) (Star!16259 (reg!16588 Regex!16259)) (EmptyLang!16259) (Union!16259 (regOne!33031 Regex!16259) (regTwo!33031 Regex!16259)) )
))
(declare-fun r!7292 () Regex!16259)

(declare-fun lt!2365008 () Regex!16259)

(declare-fun lambda!349507 () Int)

(assert (=> bs!1591079 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365008 (regTwo!33030 r!7292))) (= lambda!349507 lambda!349504))))

(assert (=> bs!1591079 (not (= lambda!349507 lambda!349505))))

(assert (=> b!6352292 true))

(assert (=> b!6352292 true))

(assert (=> b!6352292 true))

(declare-fun lambda!349508 () Int)

(assert (=> bs!1591079 (not (= lambda!349508 lambda!349504))))

(assert (=> bs!1591079 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365008 (regTwo!33030 r!7292))) (= lambda!349508 lambda!349505))))

(assert (=> b!6352292 (not (= lambda!349508 lambda!349507))))

(assert (=> b!6352292 true))

(assert (=> b!6352292 true))

(assert (=> b!6352292 true))

(declare-fun lambda!349509 () Int)

(declare-fun lt!2365025 () Regex!16259)

(assert (=> bs!1591079 (= (and (= (regTwo!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365025 (regTwo!33030 r!7292))) (= lambda!349509 lambda!349504))))

(assert (=> bs!1591079 (not (= lambda!349509 lambda!349505))))

(assert (=> b!6352292 (= (and (= (regTwo!33030 (regOne!33030 r!7292)) (regOne!33030 (regOne!33030 r!7292))) (= lt!2365025 lt!2365008)) (= lambda!349509 lambda!349507))))

(assert (=> b!6352292 (not (= lambda!349509 lambda!349508))))

(assert (=> b!6352292 true))

(assert (=> b!6352292 true))

(assert (=> b!6352292 true))

(declare-fun b!6352282 () Bool)

(declare-fun e!3857749 () Bool)

(declare-fun e!3857748 () Bool)

(assert (=> b!6352282 (= e!3857749 e!3857748)))

(declare-fun res!2613829 () Bool)

(assert (=> b!6352282 (=> res!2613829 e!3857748)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65076 0))(
  ( (Nil!64952) (Cons!64952 (h!71400 Regex!16259) (t!378666 List!65076)) )
))
(declare-datatypes ((Context!11286 0))(
  ( (Context!11287 (exprs!6143 List!65076)) )
))
(declare-fun lt!2365016 () (InoxSet Context!11286))

(declare-fun lt!2365011 () (InoxSet Context!11286))

(assert (=> b!6352282 (= res!2613829 (not (= lt!2365016 lt!2365011)))))

(declare-datatypes ((List!65077 0))(
  ( (Nil!64953) (Cons!64953 (h!71401 C!32788) (t!378667 List!65077)) )
))
(declare-fun s!2326 () List!65077)

(declare-fun lt!2365031 () List!65076)

(declare-fun derivationStepZipperDown!1507 (Regex!16259 Context!11286 C!32788) (InoxSet Context!11286))

(assert (=> b!6352282 (= lt!2365011 (derivationStepZipperDown!1507 (regOne!33030 (regOne!33030 r!7292)) (Context!11287 lt!2365031) (h!71401 s!2326)))))

(declare-datatypes ((List!65078 0))(
  ( (Nil!64954) (Cons!64954 (h!71402 Context!11286) (t!378668 List!65078)) )
))
(declare-fun zl!343 () List!65078)

(assert (=> b!6352282 (= lt!2365031 (Cons!64952 (regTwo!33030 (regOne!33030 r!7292)) (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6352283 () Bool)

(declare-fun res!2613840 () Bool)

(declare-fun e!3857750 () Bool)

(assert (=> b!6352283 (=> res!2613840 e!3857750)))

(declare-fun generalisedUnion!2103 (List!65076) Regex!16259)

(declare-fun unfocusZipperList!1680 (List!65078) List!65076)

(assert (=> b!6352283 (= res!2613840 (not (= r!7292 (generalisedUnion!2103 (unfocusZipperList!1680 zl!343)))))))

(declare-fun tp!1770176 () Bool)

(declare-fun b!6352284 () Bool)

(declare-fun e!3857739 () Bool)

(declare-fun e!3857742 () Bool)

(declare-fun inv!83894 (Context!11286) Bool)

(assert (=> b!6352284 (= e!3857739 (and (inv!83894 (h!71402 zl!343)) e!3857742 tp!1770176))))

(declare-fun b!6352285 () Bool)

(declare-fun res!2613841 () Bool)

(declare-fun e!3857745 () Bool)

(assert (=> b!6352285 (=> res!2613841 e!3857745)))

(declare-fun lt!2365035 () (InoxSet Context!11286))

(declare-fun lt!2365015 () Bool)

(declare-fun matchZipper!2271 ((InoxSet Context!11286) List!65077) Bool)

(assert (=> b!6352285 (= res!2613841 (not (= lt!2365015 (matchZipper!2271 lt!2365035 (t!378667 s!2326)))))))

(declare-fun b!6352286 () Bool)

(declare-fun res!2613835 () Bool)

(assert (=> b!6352286 (=> res!2613835 e!3857749)))

(declare-fun e!3857738 () Bool)

(assert (=> b!6352286 (= res!2613835 e!3857738)))

(declare-fun res!2613831 () Bool)

(assert (=> b!6352286 (=> (not res!2613831) (not e!3857738))))

(get-info :version)

(assert (=> b!6352286 (= res!2613831 ((_ is Concat!25104) (regOne!33030 r!7292)))))

(declare-fun b!6352287 () Bool)

(declare-datatypes ((Unit!158367 0))(
  ( (Unit!158368) )
))
(declare-fun e!3857751 () Unit!158367)

(declare-fun Unit!158369 () Unit!158367)

(assert (=> b!6352287 (= e!3857751 Unit!158369)))

(declare-fun lt!2365017 () Unit!158367)

(declare-fun lt!2365021 () (InoxSet Context!11286))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1090 ((InoxSet Context!11286) (InoxSet Context!11286) List!65077) Unit!158367)

(assert (=> b!6352287 (= lt!2365017 (lemmaZipperConcatMatchesSameAsBothZippers!1090 lt!2365016 lt!2365021 (t!378667 s!2326)))))

(declare-fun res!2613842 () Bool)

(assert (=> b!6352287 (= res!2613842 (matchZipper!2271 lt!2365016 (t!378667 s!2326)))))

(declare-fun e!3857744 () Bool)

(assert (=> b!6352287 (=> res!2613842 e!3857744)))

(assert (=> b!6352287 (= (matchZipper!2271 ((_ map or) lt!2365016 lt!2365021) (t!378667 s!2326)) e!3857744)))

(declare-fun e!3857741 () Bool)

(declare-fun tp!1770173 () Bool)

(declare-fun setElem!43258 () Context!11286)

(declare-fun setNonEmpty!43258 () Bool)

(declare-fun setRes!43258 () Bool)

(assert (=> setNonEmpty!43258 (= setRes!43258 (and tp!1770173 (inv!83894 setElem!43258) e!3857741))))

(declare-fun z!1189 () (InoxSet Context!11286))

(declare-fun setRest!43258 () (InoxSet Context!11286))

(assert (=> setNonEmpty!43258 (= z!1189 ((_ map or) (store ((as const (Array Context!11286 Bool)) false) setElem!43258 true) setRest!43258))))

(declare-fun b!6352289 () Bool)

(declare-fun e!3857752 () Bool)

(declare-fun tp!1770178 () Bool)

(assert (=> b!6352289 (= e!3857752 tp!1770178)))

(declare-fun b!6352290 () Bool)

(declare-fun res!2613828 () Bool)

(assert (=> b!6352290 (=> res!2613828 e!3857750)))

(declare-fun generalisedConcat!1856 (List!65076) Regex!16259)

(assert (=> b!6352290 (= res!2613828 (not (= r!7292 (generalisedConcat!1856 (exprs!6143 (h!71402 zl!343))))))))

(declare-fun b!6352291 () Bool)

(declare-fun res!2613834 () Bool)

(declare-fun e!3857747 () Bool)

(assert (=> b!6352291 (=> res!2613834 e!3857747)))

(declare-fun lt!2365018 () List!65078)

(declare-fun zipperDepth!366 (List!65078) Int)

(assert (=> b!6352291 (= res!2613834 (> (zipperDepth!366 lt!2365018) (zipperDepth!366 zl!343)))))

(declare-fun validRegex!7995 (Regex!16259) Bool)

(assert (=> b!6352292 (= e!3857747 (validRegex!7995 (regTwo!33030 (regOne!33030 r!7292))))))

(declare-datatypes ((tuple2!66476 0))(
  ( (tuple2!66477 (_1!36541 List!65077) (_2!36541 List!65077)) )
))
(declare-datatypes ((Option!16150 0))(
  ( (None!16149) (Some!16149 (v!52318 tuple2!66476)) )
))
(declare-fun isDefined!12853 (Option!16150) Bool)

(declare-fun findConcatSeparation!2564 (Regex!16259 Regex!16259 List!65077 List!65077 List!65077) Option!16150)

(declare-fun Exists!3329 (Int) Bool)

(assert (=> b!6352292 (= (isDefined!12853 (findConcatSeparation!2564 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 Nil!64953 s!2326 s!2326)) (Exists!3329 lambda!349509))))

(declare-fun lt!2365027 () Unit!158367)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2328 (Regex!16259 Regex!16259 List!65077) Unit!158367)

(assert (=> b!6352292 (= lt!2365027 (lemmaFindConcatSeparationEquivalentToExists!2328 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 s!2326))))

(assert (=> b!6352292 (= lt!2365025 (generalisedConcat!1856 (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun matchR!8442 (Regex!16259 List!65077) Bool)

(declare-fun matchRSpec!3360 (Regex!16259 List!65077) Bool)

(assert (=> b!6352292 (= (matchR!8442 lt!2365008 s!2326) (matchRSpec!3360 lt!2365008 s!2326))))

(declare-fun lt!2365032 () Unit!158367)

(declare-fun mainMatchTheorem!3360 (Regex!16259 List!65077) Unit!158367)

(assert (=> b!6352292 (= lt!2365032 (mainMatchTheorem!3360 lt!2365008 s!2326))))

(assert (=> b!6352292 (= (Exists!3329 lambda!349507) (Exists!3329 lambda!349508))))

(declare-fun lt!2365006 () Unit!158367)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1866 (Regex!16259 Regex!16259 List!65077) Unit!158367)

(assert (=> b!6352292 (= lt!2365006 (lemmaExistCutMatchRandMatchRSpecEquivalent!1866 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 s!2326))))

(assert (=> b!6352292 (= (isDefined!12853 (findConcatSeparation!2564 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 Nil!64953 s!2326 s!2326)) (Exists!3329 lambda!349507))))

(declare-fun lt!2365028 () Unit!158367)

(assert (=> b!6352292 (= lt!2365028 (lemmaFindConcatSeparationEquivalentToExists!2328 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 s!2326))))

(assert (=> b!6352292 (= lt!2365008 (generalisedConcat!1856 lt!2365031))))

(declare-fun lt!2365026 () Bool)

(declare-fun lt!2365033 () Regex!16259)

(assert (=> b!6352292 (= lt!2365026 (matchRSpec!3360 lt!2365033 s!2326))))

(declare-fun lt!2365036 () Unit!158367)

(assert (=> b!6352292 (= lt!2365036 (mainMatchTheorem!3360 lt!2365033 s!2326))))

(declare-fun lt!2365012 () (InoxSet Context!11286))

(assert (=> b!6352292 (= lt!2365026 (matchZipper!2271 lt!2365012 s!2326))))

(assert (=> b!6352292 (= lt!2365026 (matchR!8442 lt!2365033 s!2326))))

(declare-fun lt!2365034 () Unit!158367)

(declare-fun theoremZipperRegexEquiv!801 ((InoxSet Context!11286) List!65078 Regex!16259 List!65077) Unit!158367)

(assert (=> b!6352292 (= lt!2365034 (theoremZipperRegexEquiv!801 lt!2365012 lt!2365018 lt!2365033 s!2326))))

(declare-fun lt!2365009 () List!65076)

(assert (=> b!6352292 (= lt!2365033 (generalisedConcat!1856 lt!2365009))))

(declare-fun b!6352293 () Bool)

(assert (=> b!6352293 (= e!3857744 (matchZipper!2271 lt!2365021 (t!378667 s!2326)))))

(declare-fun b!6352294 () Bool)

(declare-fun tp!1770174 () Bool)

(declare-fun tp!1770175 () Bool)

(assert (=> b!6352294 (= e!3857752 (and tp!1770174 tp!1770175))))

(declare-fun b!6352295 () Bool)

(declare-fun res!2613838 () Bool)

(declare-fun e!3857746 () Bool)

(assert (=> b!6352295 (=> (not res!2613838) (not e!3857746))))

(declare-fun toList!10043 ((InoxSet Context!11286)) List!65078)

(assert (=> b!6352295 (= res!2613838 (= (toList!10043 z!1189) zl!343))))

(declare-fun e!3857737 () Bool)

(assert (=> b!6352296 (= e!3857737 e!3857749)))

(declare-fun res!2613826 () Bool)

(assert (=> b!6352296 (=> res!2613826 e!3857749)))

(assert (=> b!6352296 (= res!2613826 (or (and ((_ is ElementMatch!16259) (regOne!33030 r!7292)) (= (c!1155726 (regOne!33030 r!7292)) (h!71401 s!2326))) ((_ is Union!16259) (regOne!33030 r!7292))))))

(declare-fun lt!2365010 () Unit!158367)

(assert (=> b!6352296 (= lt!2365010 e!3857751)))

(declare-fun c!1155725 () Bool)

(declare-fun nullable!6252 (Regex!16259) Bool)

(assert (=> b!6352296 (= c!1155725 (nullable!6252 (h!71400 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun lambda!349506 () Int)

(declare-fun flatMap!1764 ((InoxSet Context!11286) Int) (InoxSet Context!11286))

(declare-fun derivationStepZipperUp!1433 (Context!11286 C!32788) (InoxSet Context!11286))

(assert (=> b!6352296 (= (flatMap!1764 z!1189 lambda!349506) (derivationStepZipperUp!1433 (h!71402 zl!343) (h!71401 s!2326)))))

(declare-fun lt!2365019 () Unit!158367)

(declare-fun lemmaFlatMapOnSingletonSet!1290 ((InoxSet Context!11286) Context!11286 Int) Unit!158367)

(assert (=> b!6352296 (= lt!2365019 (lemmaFlatMapOnSingletonSet!1290 z!1189 (h!71402 zl!343) lambda!349506))))

(declare-fun lt!2365023 () Context!11286)

(assert (=> b!6352296 (= lt!2365021 (derivationStepZipperUp!1433 lt!2365023 (h!71401 s!2326)))))

(assert (=> b!6352296 (= lt!2365016 (derivationStepZipperDown!1507 (h!71400 (exprs!6143 (h!71402 zl!343))) lt!2365023 (h!71401 s!2326)))))

(assert (=> b!6352296 (= lt!2365023 (Context!11287 (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun lt!2365014 () (InoxSet Context!11286))

(assert (=> b!6352296 (= lt!2365014 (derivationStepZipperUp!1433 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343))))) (h!71401 s!2326)))))

(declare-fun b!6352297 () Bool)

(declare-fun res!2613836 () Bool)

(assert (=> b!6352297 (=> res!2613836 e!3857750)))

(assert (=> b!6352297 (= res!2613836 (not ((_ is Cons!64952) (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6352298 () Bool)

(declare-fun res!2613839 () Bool)

(assert (=> b!6352298 (=> res!2613839 e!3857750)))

(assert (=> b!6352298 (= res!2613839 (or ((_ is EmptyExpr!16259) r!7292) ((_ is EmptyLang!16259) r!7292) ((_ is ElementMatch!16259) r!7292) ((_ is Union!16259) r!7292) (not ((_ is Concat!25104) r!7292))))))

(declare-fun b!6352299 () Bool)

(declare-fun e!3857740 () Bool)

(assert (=> b!6352299 (= e!3857748 e!3857740)))

(declare-fun res!2613823 () Bool)

(assert (=> b!6352299 (=> res!2613823 e!3857740)))

(assert (=> b!6352299 (= res!2613823 (not (= lt!2365015 (matchZipper!2271 lt!2365011 (t!378667 s!2326)))))))

(assert (=> b!6352299 (= lt!2365015 (matchZipper!2271 lt!2365016 (t!378667 s!2326)))))

(declare-fun b!6352300 () Bool)

(declare-fun tp!1770171 () Bool)

(assert (=> b!6352300 (= e!3857742 tp!1770171)))

(declare-fun b!6352301 () Bool)

(declare-fun tp_is_empty!41771 () Bool)

(assert (=> b!6352301 (= e!3857752 tp_is_empty!41771)))

(declare-fun b!6352302 () Bool)

(declare-fun res!2613833 () Bool)

(assert (=> b!6352302 (=> res!2613833 e!3857745)))

(declare-fun lt!2365005 () Context!11286)

(declare-fun contextDepthTotal!368 (Context!11286) Int)

(assert (=> b!6352302 (= res!2613833 (>= (contextDepthTotal!368 lt!2365005) (contextDepthTotal!368 (h!71402 zl!343))))))

(declare-fun b!6352303 () Bool)

(declare-fun res!2613830 () Bool)

(assert (=> b!6352303 (=> res!2613830 e!3857750)))

(declare-fun isEmpty!37045 (List!65078) Bool)

(assert (=> b!6352303 (= res!2613830 (not (isEmpty!37045 (t!378668 zl!343))))))

(declare-fun b!6352304 () Bool)

(declare-fun e!3857743 () Bool)

(declare-fun tp!1770177 () Bool)

(assert (=> b!6352304 (= e!3857743 (and tp_is_empty!41771 tp!1770177))))

(declare-fun res!2613819 () Bool)

(assert (=> start!629346 (=> (not res!2613819) (not e!3857746))))

(assert (=> start!629346 (= res!2613819 (validRegex!7995 r!7292))))

(assert (=> start!629346 e!3857746))

(assert (=> start!629346 e!3857752))

(declare-fun condSetEmpty!43258 () Bool)

(assert (=> start!629346 (= condSetEmpty!43258 (= z!1189 ((as const (Array Context!11286 Bool)) false)))))

(assert (=> start!629346 setRes!43258))

(assert (=> start!629346 e!3857739))

(assert (=> start!629346 e!3857743))

(declare-fun b!6352288 () Bool)

(declare-fun res!2613821 () Bool)

(assert (=> b!6352288 (=> res!2613821 e!3857749)))

(assert (=> b!6352288 (= res!2613821 (not ((_ is Concat!25104) (regOne!33030 r!7292))))))

(declare-fun b!6352305 () Bool)

(declare-fun Unit!158370 () Unit!158367)

(assert (=> b!6352305 (= e!3857751 Unit!158370)))

(declare-fun b!6352306 () Bool)

(assert (=> b!6352306 (= e!3857740 e!3857745)))

(declare-fun res!2613827 () Bool)

(assert (=> b!6352306 (=> res!2613827 e!3857745)))

(assert (=> b!6352306 (= res!2613827 (not (= lt!2365035 lt!2365011)))))

(assert (=> b!6352306 (= (flatMap!1764 lt!2365012 lambda!349506) (derivationStepZipperUp!1433 lt!2365005 (h!71401 s!2326)))))

(declare-fun lt!2365024 () Unit!158367)

(assert (=> b!6352306 (= lt!2365024 (lemmaFlatMapOnSingletonSet!1290 lt!2365012 lt!2365005 lambda!349506))))

(declare-fun lt!2365020 () (InoxSet Context!11286))

(assert (=> b!6352306 (= lt!2365020 (derivationStepZipperUp!1433 lt!2365005 (h!71401 s!2326)))))

(declare-fun derivationStepZipper!2225 ((InoxSet Context!11286) C!32788) (InoxSet Context!11286))

(assert (=> b!6352306 (= lt!2365035 (derivationStepZipper!2225 lt!2365012 (h!71401 s!2326)))))

(assert (=> b!6352306 (= lt!2365012 (store ((as const (Array Context!11286 Bool)) false) lt!2365005 true))))

(assert (=> b!6352306 (= lt!2365005 (Context!11287 lt!2365009))))

(assert (=> b!6352306 (= lt!2365009 (Cons!64952 (regOne!33030 (regOne!33030 r!7292)) lt!2365031))))

(declare-fun b!6352307 () Bool)

(declare-fun tp!1770170 () Bool)

(assert (=> b!6352307 (= e!3857741 tp!1770170)))

(declare-fun b!6352308 () Bool)

(assert (=> b!6352308 (= e!3857746 (not e!3857750))))

(declare-fun res!2613825 () Bool)

(assert (=> b!6352308 (=> res!2613825 e!3857750)))

(assert (=> b!6352308 (= res!2613825 (not ((_ is Cons!64954) zl!343)))))

(declare-fun lt!2365029 () Bool)

(assert (=> b!6352308 (= lt!2365029 (matchRSpec!3360 r!7292 s!2326))))

(assert (=> b!6352308 (= lt!2365029 (matchR!8442 r!7292 s!2326))))

(declare-fun lt!2365030 () Unit!158367)

(assert (=> b!6352308 (= lt!2365030 (mainMatchTheorem!3360 r!7292 s!2326))))

(declare-fun b!6352309 () Bool)

(assert (=> b!6352309 (= e!3857745 e!3857747)))

(declare-fun res!2613837 () Bool)

(assert (=> b!6352309 (=> res!2613837 e!3857747)))

(declare-fun zipperDepthTotal!396 (List!65078) Int)

(assert (=> b!6352309 (= res!2613837 (>= (zipperDepthTotal!396 lt!2365018) (zipperDepthTotal!396 zl!343)))))

(assert (=> b!6352309 (= lt!2365018 (Cons!64954 lt!2365005 Nil!64954))))

(assert (=> b!6352310 (= e!3857750 e!3857737)))

(declare-fun res!2613820 () Bool)

(assert (=> b!6352310 (=> res!2613820 e!3857737)))

(declare-fun lt!2365022 () Bool)

(assert (=> b!6352310 (= res!2613820 (or (not (= lt!2365029 lt!2365022)) ((_ is Nil!64953) s!2326)))))

(assert (=> b!6352310 (= (Exists!3329 lambda!349504) (Exists!3329 lambda!349505))))

(declare-fun lt!2365013 () Unit!158367)

(assert (=> b!6352310 (= lt!2365013 (lemmaExistCutMatchRandMatchRSpecEquivalent!1866 (regOne!33030 r!7292) (regTwo!33030 r!7292) s!2326))))

(assert (=> b!6352310 (= lt!2365022 (Exists!3329 lambda!349504))))

(assert (=> b!6352310 (= lt!2365022 (isDefined!12853 (findConcatSeparation!2564 (regOne!33030 r!7292) (regTwo!33030 r!7292) Nil!64953 s!2326 s!2326)))))

(declare-fun lt!2365007 () Unit!158367)

(assert (=> b!6352310 (= lt!2365007 (lemmaFindConcatSeparationEquivalentToExists!2328 (regOne!33030 r!7292) (regTwo!33030 r!7292) s!2326))))

(declare-fun b!6352311 () Bool)

(declare-fun res!2613824 () Bool)

(assert (=> b!6352311 (=> res!2613824 e!3857745)))

(assert (=> b!6352311 (= res!2613824 (not (= (exprs!6143 (h!71402 zl!343)) (Cons!64952 (Concat!25104 (regOne!33030 (regOne!33030 r!7292)) (regTwo!33030 (regOne!33030 r!7292))) (t!378666 (exprs!6143 (h!71402 zl!343)))))))))

(declare-fun b!6352312 () Bool)

(assert (=> b!6352312 (= e!3857738 (nullable!6252 (regOne!33030 (regOne!33030 r!7292))))))

(declare-fun b!6352313 () Bool)

(declare-fun res!2613822 () Bool)

(assert (=> b!6352313 (=> res!2613822 e!3857737)))

(declare-fun isEmpty!37046 (List!65076) Bool)

(assert (=> b!6352313 (= res!2613822 (isEmpty!37046 (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6352314 () Bool)

(declare-fun tp!1770172 () Bool)

(declare-fun tp!1770169 () Bool)

(assert (=> b!6352314 (= e!3857752 (and tp!1770172 tp!1770169))))

(declare-fun setIsEmpty!43258 () Bool)

(assert (=> setIsEmpty!43258 setRes!43258))

(declare-fun b!6352315 () Bool)

(declare-fun res!2613832 () Bool)

(assert (=> b!6352315 (=> (not res!2613832) (not e!3857746))))

(declare-fun unfocusZipper!2001 (List!65078) Regex!16259)

(assert (=> b!6352315 (= res!2613832 (= r!7292 (unfocusZipper!2001 zl!343)))))

(assert (= (and start!629346 res!2613819) b!6352295))

(assert (= (and b!6352295 res!2613838) b!6352315))

(assert (= (and b!6352315 res!2613832) b!6352308))

(assert (= (and b!6352308 (not res!2613825)) b!6352303))

(assert (= (and b!6352303 (not res!2613830)) b!6352290))

(assert (= (and b!6352290 (not res!2613828)) b!6352297))

(assert (= (and b!6352297 (not res!2613836)) b!6352283))

(assert (= (and b!6352283 (not res!2613840)) b!6352298))

(assert (= (and b!6352298 (not res!2613839)) b!6352310))

(assert (= (and b!6352310 (not res!2613820)) b!6352313))

(assert (= (and b!6352313 (not res!2613822)) b!6352296))

(assert (= (and b!6352296 c!1155725) b!6352287))

(assert (= (and b!6352296 (not c!1155725)) b!6352305))

(assert (= (and b!6352287 (not res!2613842)) b!6352293))

(assert (= (and b!6352296 (not res!2613826)) b!6352286))

(assert (= (and b!6352286 res!2613831) b!6352312))

(assert (= (and b!6352286 (not res!2613835)) b!6352288))

(assert (= (and b!6352288 (not res!2613821)) b!6352282))

(assert (= (and b!6352282 (not res!2613829)) b!6352299))

(assert (= (and b!6352299 (not res!2613823)) b!6352306))

(assert (= (and b!6352306 (not res!2613827)) b!6352285))

(assert (= (and b!6352285 (not res!2613841)) b!6352311))

(assert (= (and b!6352311 (not res!2613824)) b!6352302))

(assert (= (and b!6352302 (not res!2613833)) b!6352309))

(assert (= (and b!6352309 (not res!2613837)) b!6352291))

(assert (= (and b!6352291 (not res!2613834)) b!6352292))

(assert (= (and start!629346 ((_ is ElementMatch!16259) r!7292)) b!6352301))

(assert (= (and start!629346 ((_ is Concat!25104) r!7292)) b!6352294))

(assert (= (and start!629346 ((_ is Star!16259) r!7292)) b!6352289))

(assert (= (and start!629346 ((_ is Union!16259) r!7292)) b!6352314))

(assert (= (and start!629346 condSetEmpty!43258) setIsEmpty!43258))

(assert (= (and start!629346 (not condSetEmpty!43258)) setNonEmpty!43258))

(assert (= setNonEmpty!43258 b!6352307))

(assert (= b!6352284 b!6352300))

(assert (= (and start!629346 ((_ is Cons!64954) zl!343)) b!6352284))

(assert (= (and start!629346 ((_ is Cons!64953) s!2326)) b!6352304))

(declare-fun m!7159026 () Bool)

(assert (=> b!6352303 m!7159026))

(declare-fun m!7159028 () Bool)

(assert (=> setNonEmpty!43258 m!7159028))

(declare-fun m!7159030 () Bool)

(assert (=> b!6352287 m!7159030))

(declare-fun m!7159032 () Bool)

(assert (=> b!6352287 m!7159032))

(declare-fun m!7159034 () Bool)

(assert (=> b!6352287 m!7159034))

(declare-fun m!7159036 () Bool)

(assert (=> b!6352302 m!7159036))

(declare-fun m!7159038 () Bool)

(assert (=> b!6352302 m!7159038))

(declare-fun m!7159040 () Bool)

(assert (=> b!6352282 m!7159040))

(declare-fun m!7159042 () Bool)

(assert (=> b!6352290 m!7159042))

(declare-fun m!7159044 () Bool)

(assert (=> b!6352285 m!7159044))

(declare-fun m!7159046 () Bool)

(assert (=> b!6352295 m!7159046))

(declare-fun m!7159048 () Bool)

(assert (=> b!6352310 m!7159048))

(declare-fun m!7159050 () Bool)

(assert (=> b!6352310 m!7159050))

(declare-fun m!7159052 () Bool)

(assert (=> b!6352310 m!7159052))

(declare-fun m!7159054 () Bool)

(assert (=> b!6352310 m!7159054))

(declare-fun m!7159056 () Bool)

(assert (=> b!6352310 m!7159056))

(assert (=> b!6352310 m!7159052))

(assert (=> b!6352310 m!7159048))

(declare-fun m!7159058 () Bool)

(assert (=> b!6352310 m!7159058))

(declare-fun m!7159060 () Bool)

(assert (=> b!6352293 m!7159060))

(declare-fun m!7159062 () Bool)

(assert (=> b!6352283 m!7159062))

(assert (=> b!6352283 m!7159062))

(declare-fun m!7159064 () Bool)

(assert (=> b!6352283 m!7159064))

(declare-fun m!7159066 () Bool)

(assert (=> b!6352291 m!7159066))

(declare-fun m!7159068 () Bool)

(assert (=> b!6352291 m!7159068))

(declare-fun m!7159070 () Bool)

(assert (=> b!6352296 m!7159070))

(declare-fun m!7159072 () Bool)

(assert (=> b!6352296 m!7159072))

(declare-fun m!7159074 () Bool)

(assert (=> b!6352296 m!7159074))

(declare-fun m!7159076 () Bool)

(assert (=> b!6352296 m!7159076))

(declare-fun m!7159078 () Bool)

(assert (=> b!6352296 m!7159078))

(declare-fun m!7159080 () Bool)

(assert (=> b!6352296 m!7159080))

(declare-fun m!7159082 () Bool)

(assert (=> b!6352296 m!7159082))

(declare-fun m!7159084 () Bool)

(assert (=> b!6352299 m!7159084))

(assert (=> b!6352299 m!7159032))

(declare-fun m!7159086 () Bool)

(assert (=> start!629346 m!7159086))

(declare-fun m!7159088 () Bool)

(assert (=> b!6352315 m!7159088))

(declare-fun m!7159090 () Bool)

(assert (=> b!6352292 m!7159090))

(declare-fun m!7159092 () Bool)

(assert (=> b!6352292 m!7159092))

(declare-fun m!7159094 () Bool)

(assert (=> b!6352292 m!7159094))

(declare-fun m!7159096 () Bool)

(assert (=> b!6352292 m!7159096))

(declare-fun m!7159098 () Bool)

(assert (=> b!6352292 m!7159098))

(declare-fun m!7159100 () Bool)

(assert (=> b!6352292 m!7159100))

(declare-fun m!7159102 () Bool)

(assert (=> b!6352292 m!7159102))

(declare-fun m!7159104 () Bool)

(assert (=> b!6352292 m!7159104))

(assert (=> b!6352292 m!7159098))

(declare-fun m!7159106 () Bool)

(assert (=> b!6352292 m!7159106))

(declare-fun m!7159108 () Bool)

(assert (=> b!6352292 m!7159108))

(declare-fun m!7159110 () Bool)

(assert (=> b!6352292 m!7159110))

(declare-fun m!7159112 () Bool)

(assert (=> b!6352292 m!7159112))

(declare-fun m!7159114 () Bool)

(assert (=> b!6352292 m!7159114))

(declare-fun m!7159116 () Bool)

(assert (=> b!6352292 m!7159116))

(declare-fun m!7159118 () Bool)

(assert (=> b!6352292 m!7159118))

(assert (=> b!6352292 m!7159114))

(declare-fun m!7159120 () Bool)

(assert (=> b!6352292 m!7159120))

(declare-fun m!7159122 () Bool)

(assert (=> b!6352292 m!7159122))

(declare-fun m!7159124 () Bool)

(assert (=> b!6352292 m!7159124))

(declare-fun m!7159126 () Bool)

(assert (=> b!6352292 m!7159126))

(declare-fun m!7159128 () Bool)

(assert (=> b!6352292 m!7159128))

(declare-fun m!7159130 () Bool)

(assert (=> b!6352292 m!7159130))

(declare-fun m!7159132 () Bool)

(assert (=> b!6352292 m!7159132))

(assert (=> b!6352292 m!7159112))

(declare-fun m!7159134 () Bool)

(assert (=> b!6352284 m!7159134))

(declare-fun m!7159136 () Bool)

(assert (=> b!6352308 m!7159136))

(declare-fun m!7159138 () Bool)

(assert (=> b!6352308 m!7159138))

(declare-fun m!7159140 () Bool)

(assert (=> b!6352308 m!7159140))

(declare-fun m!7159142 () Bool)

(assert (=> b!6352312 m!7159142))

(declare-fun m!7159144 () Bool)

(assert (=> b!6352313 m!7159144))

(declare-fun m!7159146 () Bool)

(assert (=> b!6352306 m!7159146))

(declare-fun m!7159148 () Bool)

(assert (=> b!6352306 m!7159148))

(declare-fun m!7159150 () Bool)

(assert (=> b!6352306 m!7159150))

(declare-fun m!7159152 () Bool)

(assert (=> b!6352306 m!7159152))

(declare-fun m!7159154 () Bool)

(assert (=> b!6352306 m!7159154))

(declare-fun m!7159156 () Bool)

(assert (=> b!6352309 m!7159156))

(declare-fun m!7159158 () Bool)

(assert (=> b!6352309 m!7159158))

(check-sat (not setNonEmpty!43258) (not b!6352284) (not b!6352302) (not b!6352299) (not b!6352315) (not b!6352310) (not b!6352287) (not b!6352283) (not b!6352314) (not b!6352296) (not b!6352295) (not b!6352294) (not b!6352313) (not b!6352307) (not b!6352293) (not b!6352300) (not start!629346) tp_is_empty!41771 (not b!6352282) (not b!6352306) (not b!6352308) (not b!6352291) (not b!6352289) (not b!6352309) (not b!6352304) (not b!6352285) (not b!6352312) (not b!6352292) (not b!6352303) (not b!6352290))
(check-sat)
(get-model)

(declare-fun bs!1591121 () Bool)

(declare-fun b!6352619 () Bool)

(assert (= bs!1591121 (and b!6352619 b!6352292)))

(declare-fun lambda!349541 () Int)

(assert (=> bs!1591121 (not (= lambda!349541 lambda!349507))))

(assert (=> bs!1591121 (not (= lambda!349541 lambda!349509))))

(declare-fun bs!1591122 () Bool)

(assert (= bs!1591122 (and b!6352619 b!6352310)))

(assert (=> bs!1591122 (not (= lambda!349541 lambda!349504))))

(assert (=> bs!1591121 (not (= lambda!349541 lambda!349508))))

(assert (=> bs!1591122 (not (= lambda!349541 lambda!349505))))

(assert (=> b!6352619 true))

(assert (=> b!6352619 true))

(declare-fun bs!1591130 () Bool)

(declare-fun b!6352618 () Bool)

(assert (= bs!1591130 (and b!6352618 b!6352292)))

(declare-fun lambda!349543 () Int)

(assert (=> bs!1591130 (not (= lambda!349543 lambda!349507))))

(assert (=> bs!1591130 (not (= lambda!349543 lambda!349509))))

(declare-fun bs!1591136 () Bool)

(assert (= bs!1591136 (and b!6352618 b!6352310)))

(assert (=> bs!1591136 (not (= lambda!349543 lambda!349504))))

(declare-fun bs!1591137 () Bool)

(assert (= bs!1591137 (and b!6352618 b!6352619)))

(assert (=> bs!1591137 (not (= lambda!349543 lambda!349541))))

(assert (=> bs!1591130 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349543 lambda!349508))))

(assert (=> bs!1591136 (= lambda!349543 lambda!349505)))

(assert (=> b!6352618 true))

(assert (=> b!6352618 true))

(declare-fun call!541710 () Bool)

(declare-fun c!1155809 () Bool)

(declare-fun bm!541704 () Bool)

(assert (=> bm!541704 (= call!541710 (Exists!3329 (ite c!1155809 lambda!349541 lambda!349543)))))

(declare-fun d!1993207 () Bool)

(declare-fun c!1155810 () Bool)

(assert (=> d!1993207 (= c!1155810 ((_ is EmptyExpr!16259) r!7292))))

(declare-fun e!3857924 () Bool)

(assert (=> d!1993207 (= (matchRSpec!3360 r!7292 s!2326) e!3857924)))

(declare-fun b!6352610 () Bool)

(declare-fun res!2613973 () Bool)

(declare-fun e!3857920 () Bool)

(assert (=> b!6352610 (=> res!2613973 e!3857920)))

(declare-fun call!541709 () Bool)

(assert (=> b!6352610 (= res!2613973 call!541709)))

(declare-fun e!3857925 () Bool)

(assert (=> b!6352610 (= e!3857925 e!3857920)))

(declare-fun b!6352611 () Bool)

(declare-fun c!1155808 () Bool)

(assert (=> b!6352611 (= c!1155808 ((_ is Union!16259) r!7292))))

(declare-fun e!3857923 () Bool)

(declare-fun e!3857919 () Bool)

(assert (=> b!6352611 (= e!3857923 e!3857919)))

(declare-fun b!6352612 () Bool)

(assert (=> b!6352612 (= e!3857919 e!3857925)))

(assert (=> b!6352612 (= c!1155809 ((_ is Star!16259) r!7292))))

(declare-fun b!6352613 () Bool)

(declare-fun e!3857921 () Bool)

(assert (=> b!6352613 (= e!3857924 e!3857921)))

(declare-fun res!2613974 () Bool)

(assert (=> b!6352613 (= res!2613974 (not ((_ is EmptyLang!16259) r!7292)))))

(assert (=> b!6352613 (=> (not res!2613974) (not e!3857921))))

(declare-fun b!6352614 () Bool)

(declare-fun e!3857922 () Bool)

(assert (=> b!6352614 (= e!3857919 e!3857922)))

(declare-fun res!2613975 () Bool)

(assert (=> b!6352614 (= res!2613975 (matchRSpec!3360 (regOne!33031 r!7292) s!2326))))

(assert (=> b!6352614 (=> res!2613975 e!3857922)))

(declare-fun b!6352615 () Bool)

(assert (=> b!6352615 (= e!3857924 call!541709)))

(declare-fun b!6352616 () Bool)

(assert (=> b!6352616 (= e!3857923 (= s!2326 (Cons!64953 (c!1155726 r!7292) Nil!64953)))))

(declare-fun bm!541705 () Bool)

(declare-fun isEmpty!37049 (List!65077) Bool)

(assert (=> bm!541705 (= call!541709 (isEmpty!37049 s!2326))))

(declare-fun b!6352617 () Bool)

(assert (=> b!6352617 (= e!3857922 (matchRSpec!3360 (regTwo!33031 r!7292) s!2326))))

(assert (=> b!6352618 (= e!3857925 call!541710)))

(assert (=> b!6352619 (= e!3857920 call!541710)))

(declare-fun b!6352620 () Bool)

(declare-fun c!1155807 () Bool)

(assert (=> b!6352620 (= c!1155807 ((_ is ElementMatch!16259) r!7292))))

(assert (=> b!6352620 (= e!3857921 e!3857923)))

(assert (= (and d!1993207 c!1155810) b!6352615))

(assert (= (and d!1993207 (not c!1155810)) b!6352613))

(assert (= (and b!6352613 res!2613974) b!6352620))

(assert (= (and b!6352620 c!1155807) b!6352616))

(assert (= (and b!6352620 (not c!1155807)) b!6352611))

(assert (= (and b!6352611 c!1155808) b!6352614))

(assert (= (and b!6352611 (not c!1155808)) b!6352612))

(assert (= (and b!6352614 (not res!2613975)) b!6352617))

(assert (= (and b!6352612 c!1155809) b!6352610))

(assert (= (and b!6352612 (not c!1155809)) b!6352618))

(assert (= (and b!6352610 (not res!2613973)) b!6352619))

(assert (= (or b!6352619 b!6352618) bm!541704))

(assert (= (or b!6352615 b!6352610) bm!541705))

(declare-fun m!7159378 () Bool)

(assert (=> bm!541704 m!7159378))

(declare-fun m!7159380 () Bool)

(assert (=> b!6352614 m!7159380))

(declare-fun m!7159382 () Bool)

(assert (=> bm!541705 m!7159382))

(declare-fun m!7159384 () Bool)

(assert (=> b!6352617 m!7159384))

(assert (=> b!6352308 d!1993207))

(declare-fun b!6352714 () Bool)

(declare-fun res!2614021 () Bool)

(declare-fun e!3857981 () Bool)

(assert (=> b!6352714 (=> (not res!2614021) (not e!3857981))))

(declare-fun call!541721 () Bool)

(assert (=> b!6352714 (= res!2614021 (not call!541721))))

(declare-fun b!6352715 () Bool)

(declare-fun res!2614017 () Bool)

(declare-fun e!3857983 () Bool)

(assert (=> b!6352715 (=> res!2614017 e!3857983)))

(assert (=> b!6352715 (= res!2614017 (not ((_ is ElementMatch!16259) r!7292)))))

(declare-fun e!3857980 () Bool)

(assert (=> b!6352715 (= e!3857980 e!3857983)))

(declare-fun b!6352716 () Bool)

(declare-fun e!3857984 () Bool)

(assert (=> b!6352716 (= e!3857984 (nullable!6252 r!7292))))

(declare-fun b!6352717 () Bool)

(declare-fun e!3857985 () Bool)

(declare-fun lt!2365084 () Bool)

(assert (=> b!6352717 (= e!3857985 (= lt!2365084 call!541721))))

(declare-fun b!6352718 () Bool)

(assert (=> b!6352718 (= e!3857980 (not lt!2365084))))

(declare-fun b!6352719 () Bool)

(declare-fun e!3857982 () Bool)

(declare-fun head!13010 (List!65077) C!32788)

(assert (=> b!6352719 (= e!3857982 (not (= (head!13010 s!2326) (c!1155726 r!7292))))))

(declare-fun d!1993231 () Bool)

(assert (=> d!1993231 e!3857985))

(declare-fun c!1155840 () Bool)

(assert (=> d!1993231 (= c!1155840 ((_ is EmptyExpr!16259) r!7292))))

(assert (=> d!1993231 (= lt!2365084 e!3857984)))

(declare-fun c!1155839 () Bool)

(assert (=> d!1993231 (= c!1155839 (isEmpty!37049 s!2326))))

(assert (=> d!1993231 (validRegex!7995 r!7292)))

(assert (=> d!1993231 (= (matchR!8442 r!7292 s!2326) lt!2365084)))

(declare-fun b!6352720 () Bool)

(declare-fun res!2614019 () Bool)

(assert (=> b!6352720 (=> res!2614019 e!3857982)))

(declare-fun tail!12095 (List!65077) List!65077)

(assert (=> b!6352720 (= res!2614019 (not (isEmpty!37049 (tail!12095 s!2326))))))

(declare-fun bm!541716 () Bool)

(assert (=> bm!541716 (= call!541721 (isEmpty!37049 s!2326))))

(declare-fun b!6352721 () Bool)

(declare-fun res!2614022 () Bool)

(assert (=> b!6352721 (=> (not res!2614022) (not e!3857981))))

(assert (=> b!6352721 (= res!2614022 (isEmpty!37049 (tail!12095 s!2326)))))

(declare-fun b!6352722 () Bool)

(declare-fun e!3857986 () Bool)

(assert (=> b!6352722 (= e!3857986 e!3857982)))

(declare-fun res!2614020 () Bool)

(assert (=> b!6352722 (=> res!2614020 e!3857982)))

(assert (=> b!6352722 (= res!2614020 call!541721)))

(declare-fun b!6352723 () Bool)

(assert (=> b!6352723 (= e!3857985 e!3857980)))

(declare-fun c!1155838 () Bool)

(assert (=> b!6352723 (= c!1155838 ((_ is EmptyLang!16259) r!7292))))

(declare-fun b!6352724 () Bool)

(assert (=> b!6352724 (= e!3857981 (= (head!13010 s!2326) (c!1155726 r!7292)))))

(declare-fun b!6352725 () Bool)

(declare-fun derivativeStep!4964 (Regex!16259 C!32788) Regex!16259)

(assert (=> b!6352725 (= e!3857984 (matchR!8442 (derivativeStep!4964 r!7292 (head!13010 s!2326)) (tail!12095 s!2326)))))

(declare-fun b!6352726 () Bool)

(declare-fun res!2614016 () Bool)

(assert (=> b!6352726 (=> res!2614016 e!3857983)))

(assert (=> b!6352726 (= res!2614016 e!3857981)))

(declare-fun res!2614018 () Bool)

(assert (=> b!6352726 (=> (not res!2614018) (not e!3857981))))

(assert (=> b!6352726 (= res!2614018 lt!2365084)))

(declare-fun b!6352727 () Bool)

(assert (=> b!6352727 (= e!3857983 e!3857986)))

(declare-fun res!2614015 () Bool)

(assert (=> b!6352727 (=> (not res!2614015) (not e!3857986))))

(assert (=> b!6352727 (= res!2614015 (not lt!2365084))))

(assert (= (and d!1993231 c!1155839) b!6352716))

(assert (= (and d!1993231 (not c!1155839)) b!6352725))

(assert (= (and d!1993231 c!1155840) b!6352717))

(assert (= (and d!1993231 (not c!1155840)) b!6352723))

(assert (= (and b!6352723 c!1155838) b!6352718))

(assert (= (and b!6352723 (not c!1155838)) b!6352715))

(assert (= (and b!6352715 (not res!2614017)) b!6352726))

(assert (= (and b!6352726 res!2614018) b!6352714))

(assert (= (and b!6352714 res!2614021) b!6352721))

(assert (= (and b!6352721 res!2614022) b!6352724))

(assert (= (and b!6352726 (not res!2614016)) b!6352727))

(assert (= (and b!6352727 res!2614015) b!6352722))

(assert (= (and b!6352722 (not res!2614020)) b!6352720))

(assert (= (and b!6352720 (not res!2614019)) b!6352719))

(assert (= (or b!6352717 b!6352714 b!6352722) bm!541716))

(declare-fun m!7159418 () Bool)

(assert (=> b!6352724 m!7159418))

(declare-fun m!7159424 () Bool)

(assert (=> b!6352720 m!7159424))

(assert (=> b!6352720 m!7159424))

(declare-fun m!7159430 () Bool)

(assert (=> b!6352720 m!7159430))

(assert (=> d!1993231 m!7159382))

(assert (=> d!1993231 m!7159086))

(declare-fun m!7159436 () Bool)

(assert (=> b!6352716 m!7159436))

(assert (=> b!6352719 m!7159418))

(assert (=> b!6352725 m!7159418))

(assert (=> b!6352725 m!7159418))

(declare-fun m!7159438 () Bool)

(assert (=> b!6352725 m!7159438))

(assert (=> b!6352725 m!7159424))

(assert (=> b!6352725 m!7159438))

(assert (=> b!6352725 m!7159424))

(declare-fun m!7159440 () Bool)

(assert (=> b!6352725 m!7159440))

(assert (=> b!6352721 m!7159424))

(assert (=> b!6352721 m!7159424))

(assert (=> b!6352721 m!7159430))

(assert (=> bm!541716 m!7159382))

(assert (=> b!6352308 d!1993231))

(declare-fun d!1993247 () Bool)

(assert (=> d!1993247 (= (matchR!8442 r!7292 s!2326) (matchRSpec!3360 r!7292 s!2326))))

(declare-fun lt!2365092 () Unit!158367)

(declare-fun choose!47149 (Regex!16259 List!65077) Unit!158367)

(assert (=> d!1993247 (= lt!2365092 (choose!47149 r!7292 s!2326))))

(assert (=> d!1993247 (validRegex!7995 r!7292)))

(assert (=> d!1993247 (= (mainMatchTheorem!3360 r!7292 s!2326) lt!2365092)))

(declare-fun bs!1591178 () Bool)

(assert (= bs!1591178 d!1993247))

(assert (=> bs!1591178 m!7159138))

(assert (=> bs!1591178 m!7159136))

(declare-fun m!7159462 () Bool)

(assert (=> bs!1591178 m!7159462))

(assert (=> bs!1591178 m!7159086))

(assert (=> b!6352308 d!1993247))

(declare-fun e!3858008 () Bool)

(declare-fun d!1993253 () Bool)

(assert (=> d!1993253 (= (matchZipper!2271 ((_ map or) lt!2365016 lt!2365021) (t!378667 s!2326)) e!3858008)))

(declare-fun res!2614031 () Bool)

(assert (=> d!1993253 (=> res!2614031 e!3858008)))

(assert (=> d!1993253 (= res!2614031 (matchZipper!2271 lt!2365016 (t!378667 s!2326)))))

(declare-fun lt!2365103 () Unit!158367)

(declare-fun choose!47150 ((InoxSet Context!11286) (InoxSet Context!11286) List!65077) Unit!158367)

(assert (=> d!1993253 (= lt!2365103 (choose!47150 lt!2365016 lt!2365021 (t!378667 s!2326)))))

(assert (=> d!1993253 (= (lemmaZipperConcatMatchesSameAsBothZippers!1090 lt!2365016 lt!2365021 (t!378667 s!2326)) lt!2365103)))

(declare-fun b!6352762 () Bool)

(assert (=> b!6352762 (= e!3858008 (matchZipper!2271 lt!2365021 (t!378667 s!2326)))))

(assert (= (and d!1993253 (not res!2614031)) b!6352762))

(assert (=> d!1993253 m!7159034))

(assert (=> d!1993253 m!7159032))

(declare-fun m!7159464 () Bool)

(assert (=> d!1993253 m!7159464))

(assert (=> b!6352762 m!7159060))

(assert (=> b!6352287 d!1993253))

(declare-fun d!1993255 () Bool)

(declare-fun c!1155867 () Bool)

(assert (=> d!1993255 (= c!1155867 (isEmpty!37049 (t!378667 s!2326)))))

(declare-fun e!3858021 () Bool)

(assert (=> d!1993255 (= (matchZipper!2271 lt!2365016 (t!378667 s!2326)) e!3858021)))

(declare-fun b!6352786 () Bool)

(declare-fun nullableZipper!2025 ((InoxSet Context!11286)) Bool)

(assert (=> b!6352786 (= e!3858021 (nullableZipper!2025 lt!2365016))))

(declare-fun b!6352787 () Bool)

(assert (=> b!6352787 (= e!3858021 (matchZipper!2271 (derivationStepZipper!2225 lt!2365016 (head!13010 (t!378667 s!2326))) (tail!12095 (t!378667 s!2326))))))

(assert (= (and d!1993255 c!1155867) b!6352786))

(assert (= (and d!1993255 (not c!1155867)) b!6352787))

(declare-fun m!7159516 () Bool)

(assert (=> d!1993255 m!7159516))

(declare-fun m!7159518 () Bool)

(assert (=> b!6352786 m!7159518))

(declare-fun m!7159520 () Bool)

(assert (=> b!6352787 m!7159520))

(assert (=> b!6352787 m!7159520))

(declare-fun m!7159522 () Bool)

(assert (=> b!6352787 m!7159522))

(declare-fun m!7159524 () Bool)

(assert (=> b!6352787 m!7159524))

(assert (=> b!6352787 m!7159522))

(assert (=> b!6352787 m!7159524))

(declare-fun m!7159526 () Bool)

(assert (=> b!6352787 m!7159526))

(assert (=> b!6352287 d!1993255))

(declare-fun d!1993267 () Bool)

(declare-fun c!1155868 () Bool)

(assert (=> d!1993267 (= c!1155868 (isEmpty!37049 (t!378667 s!2326)))))

(declare-fun e!3858022 () Bool)

(assert (=> d!1993267 (= (matchZipper!2271 ((_ map or) lt!2365016 lt!2365021) (t!378667 s!2326)) e!3858022)))

(declare-fun b!6352788 () Bool)

(assert (=> b!6352788 (= e!3858022 (nullableZipper!2025 ((_ map or) lt!2365016 lt!2365021)))))

(declare-fun b!6352789 () Bool)

(assert (=> b!6352789 (= e!3858022 (matchZipper!2271 (derivationStepZipper!2225 ((_ map or) lt!2365016 lt!2365021) (head!13010 (t!378667 s!2326))) (tail!12095 (t!378667 s!2326))))))

(assert (= (and d!1993267 c!1155868) b!6352788))

(assert (= (and d!1993267 (not c!1155868)) b!6352789))

(assert (=> d!1993267 m!7159516))

(declare-fun m!7159528 () Bool)

(assert (=> b!6352788 m!7159528))

(assert (=> b!6352789 m!7159520))

(assert (=> b!6352789 m!7159520))

(declare-fun m!7159530 () Bool)

(assert (=> b!6352789 m!7159530))

(assert (=> b!6352789 m!7159524))

(assert (=> b!6352789 m!7159530))

(assert (=> b!6352789 m!7159524))

(declare-fun m!7159532 () Bool)

(assert (=> b!6352789 m!7159532))

(assert (=> b!6352287 d!1993267))

(declare-fun d!1993269 () Bool)

(declare-fun lt!2365119 () Int)

(assert (=> d!1993269 (>= lt!2365119 0)))

(declare-fun e!3858025 () Int)

(assert (=> d!1993269 (= lt!2365119 e!3858025)))

(declare-fun c!1155871 () Bool)

(assert (=> d!1993269 (= c!1155871 ((_ is Cons!64954) lt!2365018))))

(assert (=> d!1993269 (= (zipperDepthTotal!396 lt!2365018) lt!2365119)))

(declare-fun b!6352794 () Bool)

(assert (=> b!6352794 (= e!3858025 (+ (contextDepthTotal!368 (h!71402 lt!2365018)) (zipperDepthTotal!396 (t!378668 lt!2365018))))))

(declare-fun b!6352795 () Bool)

(assert (=> b!6352795 (= e!3858025 0)))

(assert (= (and d!1993269 c!1155871) b!6352794))

(assert (= (and d!1993269 (not c!1155871)) b!6352795))

(declare-fun m!7159538 () Bool)

(assert (=> b!6352794 m!7159538))

(declare-fun m!7159540 () Bool)

(assert (=> b!6352794 m!7159540))

(assert (=> b!6352309 d!1993269))

(declare-fun d!1993273 () Bool)

(declare-fun lt!2365120 () Int)

(assert (=> d!1993273 (>= lt!2365120 0)))

(declare-fun e!3858026 () Int)

(assert (=> d!1993273 (= lt!2365120 e!3858026)))

(declare-fun c!1155872 () Bool)

(assert (=> d!1993273 (= c!1155872 ((_ is Cons!64954) zl!343))))

(assert (=> d!1993273 (= (zipperDepthTotal!396 zl!343) lt!2365120)))

(declare-fun b!6352796 () Bool)

(assert (=> b!6352796 (= e!3858026 (+ (contextDepthTotal!368 (h!71402 zl!343)) (zipperDepthTotal!396 (t!378668 zl!343))))))

(declare-fun b!6352797 () Bool)

(assert (=> b!6352797 (= e!3858026 0)))

(assert (= (and d!1993273 c!1155872) b!6352796))

(assert (= (and d!1993273 (not c!1155872)) b!6352797))

(assert (=> b!6352796 m!7159038))

(declare-fun m!7159542 () Bool)

(assert (=> b!6352796 m!7159542))

(assert (=> b!6352309 d!1993273))

(declare-fun bm!541723 () Bool)

(declare-fun call!541728 () Bool)

(declare-fun call!541729 () Bool)

(assert (=> bm!541723 (= call!541728 call!541729)))

(declare-fun b!6352829 () Bool)

(declare-fun res!2614055 () Bool)

(declare-fun e!3858053 () Bool)

(assert (=> b!6352829 (=> res!2614055 e!3858053)))

(assert (=> b!6352829 (= res!2614055 (not ((_ is Concat!25104) r!7292)))))

(declare-fun e!3858052 () Bool)

(assert (=> b!6352829 (= e!3858052 e!3858053)))

(declare-fun b!6352830 () Bool)

(declare-fun e!3858054 () Bool)

(assert (=> b!6352830 (= e!3858054 e!3858052)))

(declare-fun c!1155884 () Bool)

(assert (=> b!6352830 (= c!1155884 ((_ is Union!16259) r!7292))))

(declare-fun bm!541724 () Bool)

(declare-fun call!541730 () Bool)

(assert (=> bm!541724 (= call!541730 (validRegex!7995 (ite c!1155884 (regOne!33031 r!7292) (regOne!33030 r!7292))))))

(declare-fun b!6352831 () Bool)

(declare-fun e!3858050 () Bool)

(assert (=> b!6352831 (= e!3858050 call!541728)))

(declare-fun b!6352832 () Bool)

(declare-fun e!3858055 () Bool)

(assert (=> b!6352832 (= e!3858055 call!541729)))

(declare-fun c!1155883 () Bool)

(declare-fun bm!541725 () Bool)

(assert (=> bm!541725 (= call!541729 (validRegex!7995 (ite c!1155883 (reg!16588 r!7292) (ite c!1155884 (regTwo!33031 r!7292) (regTwo!33030 r!7292)))))))

(declare-fun b!6352833 () Bool)

(assert (=> b!6352833 (= e!3858054 e!3858055)))

(declare-fun res!2614053 () Bool)

(assert (=> b!6352833 (= res!2614053 (not (nullable!6252 (reg!16588 r!7292))))))

(assert (=> b!6352833 (=> (not res!2614053) (not e!3858055))))

(declare-fun d!1993275 () Bool)

(declare-fun res!2614056 () Bool)

(declare-fun e!3858051 () Bool)

(assert (=> d!1993275 (=> res!2614056 e!3858051)))

(assert (=> d!1993275 (= res!2614056 ((_ is ElementMatch!16259) r!7292))))

(assert (=> d!1993275 (= (validRegex!7995 r!7292) e!3858051)))

(declare-fun b!6352834 () Bool)

(assert (=> b!6352834 (= e!3858053 e!3858050)))

(declare-fun res!2614052 () Bool)

(assert (=> b!6352834 (=> (not res!2614052) (not e!3858050))))

(assert (=> b!6352834 (= res!2614052 call!541730)))

(declare-fun b!6352835 () Bool)

(declare-fun res!2614054 () Bool)

(declare-fun e!3858049 () Bool)

(assert (=> b!6352835 (=> (not res!2614054) (not e!3858049))))

(assert (=> b!6352835 (= res!2614054 call!541730)))

(assert (=> b!6352835 (= e!3858052 e!3858049)))

(declare-fun b!6352836 () Bool)

(assert (=> b!6352836 (= e!3858051 e!3858054)))

(assert (=> b!6352836 (= c!1155883 ((_ is Star!16259) r!7292))))

(declare-fun b!6352837 () Bool)

(assert (=> b!6352837 (= e!3858049 call!541728)))

(assert (= (and d!1993275 (not res!2614056)) b!6352836))

(assert (= (and b!6352836 c!1155883) b!6352833))

(assert (= (and b!6352836 (not c!1155883)) b!6352830))

(assert (= (and b!6352833 res!2614053) b!6352832))

(assert (= (and b!6352830 c!1155884) b!6352835))

(assert (= (and b!6352830 (not c!1155884)) b!6352829))

(assert (= (and b!6352835 res!2614054) b!6352837))

(assert (= (and b!6352829 (not res!2614055)) b!6352834))

(assert (= (and b!6352834 res!2614052) b!6352831))

(assert (= (or b!6352837 b!6352831) bm!541723))

(assert (= (or b!6352835 b!6352834) bm!541724))

(assert (= (or b!6352832 bm!541723) bm!541725))

(declare-fun m!7159572 () Bool)

(assert (=> bm!541724 m!7159572))

(declare-fun m!7159574 () Bool)

(assert (=> bm!541725 m!7159574))

(declare-fun m!7159576 () Bool)

(assert (=> b!6352833 m!7159576))

(assert (=> start!629346 d!1993275))

(declare-fun d!1993293 () Bool)

(declare-fun lambda!349571 () Int)

(declare-fun forall!15429 (List!65076 Int) Bool)

(assert (=> d!1993293 (= (inv!83894 setElem!43258) (forall!15429 (exprs!6143 setElem!43258) lambda!349571))))

(declare-fun bs!1591214 () Bool)

(assert (= bs!1591214 d!1993293))

(declare-fun m!7159584 () Bool)

(assert (=> bs!1591214 m!7159584))

(assert (=> setNonEmpty!43258 d!1993293))

(declare-fun d!1993299 () Bool)

(declare-fun lt!2365137 () Regex!16259)

(assert (=> d!1993299 (validRegex!7995 lt!2365137)))

(assert (=> d!1993299 (= lt!2365137 (generalisedUnion!2103 (unfocusZipperList!1680 zl!343)))))

(assert (=> d!1993299 (= (unfocusZipper!2001 zl!343) lt!2365137)))

(declare-fun bs!1591215 () Bool)

(assert (= bs!1591215 d!1993299))

(declare-fun m!7159586 () Bool)

(assert (=> bs!1591215 m!7159586))

(assert (=> bs!1591215 m!7159062))

(assert (=> bs!1591215 m!7159062))

(assert (=> bs!1591215 m!7159064))

(assert (=> b!6352315 d!1993299))

(declare-fun d!1993301 () Bool)

(declare-fun c!1155899 () Bool)

(assert (=> d!1993301 (= c!1155899 (isEmpty!37049 (t!378667 s!2326)))))

(declare-fun e!3858072 () Bool)

(assert (=> d!1993301 (= (matchZipper!2271 lt!2365035 (t!378667 s!2326)) e!3858072)))

(declare-fun b!6352868 () Bool)

(assert (=> b!6352868 (= e!3858072 (nullableZipper!2025 lt!2365035))))

(declare-fun b!6352869 () Bool)

(assert (=> b!6352869 (= e!3858072 (matchZipper!2271 (derivationStepZipper!2225 lt!2365035 (head!13010 (t!378667 s!2326))) (tail!12095 (t!378667 s!2326))))))

(assert (= (and d!1993301 c!1155899) b!6352868))

(assert (= (and d!1993301 (not c!1155899)) b!6352869))

(assert (=> d!1993301 m!7159516))

(declare-fun m!7159588 () Bool)

(assert (=> b!6352868 m!7159588))

(assert (=> b!6352869 m!7159520))

(assert (=> b!6352869 m!7159520))

(declare-fun m!7159590 () Bool)

(assert (=> b!6352869 m!7159590))

(assert (=> b!6352869 m!7159524))

(assert (=> b!6352869 m!7159590))

(assert (=> b!6352869 m!7159524))

(declare-fun m!7159592 () Bool)

(assert (=> b!6352869 m!7159592))

(assert (=> b!6352285 d!1993301))

(declare-fun bs!1591216 () Bool)

(declare-fun d!1993303 () Bool)

(assert (= bs!1591216 (and d!1993303 d!1993293)))

(declare-fun lambda!349572 () Int)

(assert (=> bs!1591216 (= lambda!349572 lambda!349571)))

(assert (=> d!1993303 (= (inv!83894 (h!71402 zl!343)) (forall!15429 (exprs!6143 (h!71402 zl!343)) lambda!349572))))

(declare-fun bs!1591217 () Bool)

(assert (= bs!1591217 d!1993303))

(declare-fun m!7159594 () Bool)

(assert (=> bs!1591217 m!7159594))

(assert (=> b!6352284 d!1993303))

(declare-fun d!1993305 () Bool)

(declare-fun dynLambda!25757 (Int Context!11286) (InoxSet Context!11286))

(assert (=> d!1993305 (= (flatMap!1764 z!1189 lambda!349506) (dynLambda!25757 lambda!349506 (h!71402 zl!343)))))

(declare-fun lt!2365140 () Unit!158367)

(declare-fun choose!47151 ((InoxSet Context!11286) Context!11286 Int) Unit!158367)

(assert (=> d!1993305 (= lt!2365140 (choose!47151 z!1189 (h!71402 zl!343) lambda!349506))))

(assert (=> d!1993305 (= z!1189 (store ((as const (Array Context!11286 Bool)) false) (h!71402 zl!343) true))))

(assert (=> d!1993305 (= (lemmaFlatMapOnSingletonSet!1290 z!1189 (h!71402 zl!343) lambda!349506) lt!2365140)))

(declare-fun b_lambda!241623 () Bool)

(assert (=> (not b_lambda!241623) (not d!1993305)))

(declare-fun bs!1591218 () Bool)

(assert (= bs!1591218 d!1993305))

(assert (=> bs!1591218 m!7159072))

(declare-fun m!7159596 () Bool)

(assert (=> bs!1591218 m!7159596))

(declare-fun m!7159598 () Bool)

(assert (=> bs!1591218 m!7159598))

(declare-fun m!7159600 () Bool)

(assert (=> bs!1591218 m!7159600))

(assert (=> b!6352296 d!1993305))

(declare-fun bm!541765 () Bool)

(declare-fun call!541772 () List!65076)

(declare-fun call!541771 () List!65076)

(assert (=> bm!541765 (= call!541772 call!541771)))

(declare-fun b!6352963 () Bool)

(declare-fun e!3858118 () (InoxSet Context!11286))

(declare-fun e!3858120 () (InoxSet Context!11286))

(assert (=> b!6352963 (= e!3858118 e!3858120)))

(declare-fun c!1155927 () Bool)

(assert (=> b!6352963 (= c!1155927 ((_ is Union!16259) (h!71400 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6352964 () Bool)

(declare-fun e!3858123 () (InoxSet Context!11286))

(declare-fun e!3858122 () (InoxSet Context!11286))

(assert (=> b!6352964 (= e!3858123 e!3858122)))

(declare-fun c!1155929 () Bool)

(assert (=> b!6352964 (= c!1155929 ((_ is Concat!25104) (h!71400 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6352965 () Bool)

(declare-fun call!541774 () (InoxSet Context!11286))

(declare-fun call!541773 () (InoxSet Context!11286))

(assert (=> b!6352965 (= e!3858120 ((_ map or) call!541774 call!541773))))

(declare-fun bm!541766 () Bool)

(declare-fun c!1155930 () Bool)

(assert (=> bm!541766 (= call!541774 (derivationStepZipperDown!1507 (ite c!1155927 (regOne!33031 (h!71400 (exprs!6143 (h!71402 zl!343)))) (ite c!1155930 (regTwo!33030 (h!71400 (exprs!6143 (h!71402 zl!343)))) (ite c!1155929 (regOne!33030 (h!71400 (exprs!6143 (h!71402 zl!343)))) (reg!16588 (h!71400 (exprs!6143 (h!71402 zl!343))))))) (ite (or c!1155927 c!1155930) lt!2365023 (Context!11287 call!541772)) (h!71401 s!2326)))))

(declare-fun b!6352966 () Bool)

(declare-fun c!1155928 () Bool)

(assert (=> b!6352966 (= c!1155928 ((_ is Star!16259) (h!71400 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun e!3858121 () (InoxSet Context!11286))

(assert (=> b!6352966 (= e!3858122 e!3858121)))

(declare-fun d!1993307 () Bool)

(declare-fun c!1155926 () Bool)

(assert (=> d!1993307 (= c!1155926 (and ((_ is ElementMatch!16259) (h!71400 (exprs!6143 (h!71402 zl!343)))) (= (c!1155726 (h!71400 (exprs!6143 (h!71402 zl!343)))) (h!71401 s!2326))))))

(assert (=> d!1993307 (= (derivationStepZipperDown!1507 (h!71400 (exprs!6143 (h!71402 zl!343))) lt!2365023 (h!71401 s!2326)) e!3858118)))

(declare-fun b!6352967 () Bool)

(declare-fun call!541770 () (InoxSet Context!11286))

(assert (=> b!6352967 (= e!3858123 ((_ map or) call!541773 call!541770))))

(declare-fun b!6352968 () Bool)

(assert (=> b!6352968 (= e!3858121 ((as const (Array Context!11286 Bool)) false))))

(declare-fun bm!541767 () Bool)

(assert (=> bm!541767 (= call!541773 (derivationStepZipperDown!1507 (ite c!1155927 (regTwo!33031 (h!71400 (exprs!6143 (h!71402 zl!343)))) (regOne!33030 (h!71400 (exprs!6143 (h!71402 zl!343))))) (ite c!1155927 lt!2365023 (Context!11287 call!541771)) (h!71401 s!2326)))))

(declare-fun bm!541768 () Bool)

(declare-fun $colon$colon!2119 (List!65076 Regex!16259) List!65076)

(assert (=> bm!541768 (= call!541771 ($colon$colon!2119 (exprs!6143 lt!2365023) (ite (or c!1155930 c!1155929) (regTwo!33030 (h!71400 (exprs!6143 (h!71402 zl!343)))) (h!71400 (exprs!6143 (h!71402 zl!343))))))))

(declare-fun b!6352969 () Bool)

(declare-fun call!541775 () (InoxSet Context!11286))

(assert (=> b!6352969 (= e!3858122 call!541775)))

(declare-fun bm!541769 () Bool)

(assert (=> bm!541769 (= call!541775 call!541770)))

(declare-fun b!6352970 () Bool)

(declare-fun e!3858119 () Bool)

(assert (=> b!6352970 (= e!3858119 (nullable!6252 (regOne!33030 (h!71400 (exprs!6143 (h!71402 zl!343))))))))

(declare-fun b!6352971 () Bool)

(assert (=> b!6352971 (= c!1155930 e!3858119)))

(declare-fun res!2614066 () Bool)

(assert (=> b!6352971 (=> (not res!2614066) (not e!3858119))))

(assert (=> b!6352971 (= res!2614066 ((_ is Concat!25104) (h!71400 (exprs!6143 (h!71402 zl!343)))))))

(assert (=> b!6352971 (= e!3858120 e!3858123)))

(declare-fun b!6352972 () Bool)

(assert (=> b!6352972 (= e!3858118 (store ((as const (Array Context!11286 Bool)) false) lt!2365023 true))))

(declare-fun b!6352973 () Bool)

(assert (=> b!6352973 (= e!3858121 call!541775)))

(declare-fun bm!541770 () Bool)

(assert (=> bm!541770 (= call!541770 call!541774)))

(assert (= (and d!1993307 c!1155926) b!6352972))

(assert (= (and d!1993307 (not c!1155926)) b!6352963))

(assert (= (and b!6352963 c!1155927) b!6352965))

(assert (= (and b!6352963 (not c!1155927)) b!6352971))

(assert (= (and b!6352971 res!2614066) b!6352970))

(assert (= (and b!6352971 c!1155930) b!6352967))

(assert (= (and b!6352971 (not c!1155930)) b!6352964))

(assert (= (and b!6352964 c!1155929) b!6352969))

(assert (= (and b!6352964 (not c!1155929)) b!6352966))

(assert (= (and b!6352966 c!1155928) b!6352973))

(assert (= (and b!6352966 (not c!1155928)) b!6352968))

(assert (= (or b!6352969 b!6352973) bm!541765))

(assert (= (or b!6352969 b!6352973) bm!541769))

(assert (= (or b!6352967 bm!541765) bm!541768))

(assert (= (or b!6352967 bm!541769) bm!541770))

(assert (= (or b!6352965 b!6352967) bm!541767))

(assert (= (or b!6352965 bm!541770) bm!541766))

(declare-fun m!7159652 () Bool)

(assert (=> b!6352972 m!7159652))

(declare-fun m!7159654 () Bool)

(assert (=> bm!541768 m!7159654))

(declare-fun m!7159656 () Bool)

(assert (=> b!6352970 m!7159656))

(declare-fun m!7159660 () Bool)

(assert (=> bm!541766 m!7159660))

(declare-fun m!7159662 () Bool)

(assert (=> bm!541767 m!7159662))

(assert (=> b!6352296 d!1993307))

(declare-fun d!1993329 () Bool)

(declare-fun nullableFct!2199 (Regex!16259) Bool)

(assert (=> d!1993329 (= (nullable!6252 (h!71400 (exprs!6143 (h!71402 zl!343)))) (nullableFct!2199 (h!71400 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun bs!1591230 () Bool)

(assert (= bs!1591230 d!1993329))

(declare-fun m!7159664 () Bool)

(assert (=> bs!1591230 m!7159664))

(assert (=> b!6352296 d!1993329))

(declare-fun b!6353004 () Bool)

(declare-fun e!3858141 () (InoxSet Context!11286))

(declare-fun e!3858143 () (InoxSet Context!11286))

(assert (=> b!6353004 (= e!3858141 e!3858143)))

(declare-fun c!1155936 () Bool)

(assert (=> b!6353004 (= c!1155936 ((_ is Cons!64952) (exprs!6143 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343))))))))))

(declare-fun d!1993331 () Bool)

(declare-fun c!1155935 () Bool)

(declare-fun e!3858142 () Bool)

(assert (=> d!1993331 (= c!1155935 e!3858142)))

(declare-fun res!2614069 () Bool)

(assert (=> d!1993331 (=> (not res!2614069) (not e!3858142))))

(assert (=> d!1993331 (= res!2614069 ((_ is Cons!64952) (exprs!6143 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343))))))))))

(assert (=> d!1993331 (= (derivationStepZipperUp!1433 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343))))) (h!71401 s!2326)) e!3858141)))

(declare-fun b!6353005 () Bool)

(declare-fun call!541778 () (InoxSet Context!11286))

(assert (=> b!6353005 (= e!3858141 ((_ map or) call!541778 (derivationStepZipperUp!1433 (Context!11287 (t!378666 (exprs!6143 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343)))))))) (h!71401 s!2326))))))

(declare-fun bm!541773 () Bool)

(assert (=> bm!541773 (= call!541778 (derivationStepZipperDown!1507 (h!71400 (exprs!6143 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343))))))) (Context!11287 (t!378666 (exprs!6143 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343)))))))) (h!71401 s!2326)))))

(declare-fun b!6353006 () Bool)

(assert (=> b!6353006 (= e!3858143 call!541778)))

(declare-fun b!6353007 () Bool)

(assert (=> b!6353007 (= e!3858142 (nullable!6252 (h!71400 (exprs!6143 (Context!11287 (Cons!64952 (h!71400 (exprs!6143 (h!71402 zl!343))) (t!378666 (exprs!6143 (h!71402 zl!343)))))))))))

(declare-fun b!6353008 () Bool)

(assert (=> b!6353008 (= e!3858143 ((as const (Array Context!11286 Bool)) false))))

(assert (= (and d!1993331 res!2614069) b!6353007))

(assert (= (and d!1993331 c!1155935) b!6353005))

(assert (= (and d!1993331 (not c!1155935)) b!6353004))

(assert (= (and b!6353004 c!1155936) b!6353006))

(assert (= (and b!6353004 (not c!1155936)) b!6353008))

(assert (= (or b!6353005 b!6353006) bm!541773))

(declare-fun m!7159666 () Bool)

(assert (=> b!6353005 m!7159666))

(declare-fun m!7159668 () Bool)

(assert (=> bm!541773 m!7159668))

(declare-fun m!7159670 () Bool)

(assert (=> b!6353007 m!7159670))

(assert (=> b!6352296 d!1993331))

(declare-fun d!1993337 () Bool)

(declare-fun choose!47152 ((InoxSet Context!11286) Int) (InoxSet Context!11286))

(assert (=> d!1993337 (= (flatMap!1764 z!1189 lambda!349506) (choose!47152 z!1189 lambda!349506))))

(declare-fun bs!1591233 () Bool)

(assert (= bs!1591233 d!1993337))

(declare-fun m!7159672 () Bool)

(assert (=> bs!1591233 m!7159672))

(assert (=> b!6352296 d!1993337))

(declare-fun b!6353009 () Bool)

(declare-fun e!3858144 () (InoxSet Context!11286))

(declare-fun e!3858146 () (InoxSet Context!11286))

(assert (=> b!6353009 (= e!3858144 e!3858146)))

(declare-fun c!1155938 () Bool)

(assert (=> b!6353009 (= c!1155938 ((_ is Cons!64952) (exprs!6143 (h!71402 zl!343))))))

(declare-fun d!1993339 () Bool)

(declare-fun c!1155937 () Bool)

(declare-fun e!3858145 () Bool)

(assert (=> d!1993339 (= c!1155937 e!3858145)))

(declare-fun res!2614070 () Bool)

(assert (=> d!1993339 (=> (not res!2614070) (not e!3858145))))

(assert (=> d!1993339 (= res!2614070 ((_ is Cons!64952) (exprs!6143 (h!71402 zl!343))))))

(assert (=> d!1993339 (= (derivationStepZipperUp!1433 (h!71402 zl!343) (h!71401 s!2326)) e!3858144)))

(declare-fun call!541779 () (InoxSet Context!11286))

(declare-fun b!6353010 () Bool)

(assert (=> b!6353010 (= e!3858144 ((_ map or) call!541779 (derivationStepZipperUp!1433 (Context!11287 (t!378666 (exprs!6143 (h!71402 zl!343)))) (h!71401 s!2326))))))

(declare-fun bm!541774 () Bool)

(assert (=> bm!541774 (= call!541779 (derivationStepZipperDown!1507 (h!71400 (exprs!6143 (h!71402 zl!343))) (Context!11287 (t!378666 (exprs!6143 (h!71402 zl!343)))) (h!71401 s!2326)))))

(declare-fun b!6353011 () Bool)

(assert (=> b!6353011 (= e!3858146 call!541779)))

(declare-fun b!6353012 () Bool)

(assert (=> b!6353012 (= e!3858145 (nullable!6252 (h!71400 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6353013 () Bool)

(assert (=> b!6353013 (= e!3858146 ((as const (Array Context!11286 Bool)) false))))

(assert (= (and d!1993339 res!2614070) b!6353012))

(assert (= (and d!1993339 c!1155937) b!6353010))

(assert (= (and d!1993339 (not c!1155937)) b!6353009))

(assert (= (and b!6353009 c!1155938) b!6353011))

(assert (= (and b!6353009 (not c!1155938)) b!6353013))

(assert (= (or b!6353010 b!6353011) bm!541774))

(declare-fun m!7159674 () Bool)

(assert (=> b!6353010 m!7159674))

(declare-fun m!7159676 () Bool)

(assert (=> bm!541774 m!7159676))

(assert (=> b!6353012 m!7159080))

(assert (=> b!6352296 d!1993339))

(declare-fun b!6353014 () Bool)

(declare-fun e!3858147 () (InoxSet Context!11286))

(declare-fun e!3858149 () (InoxSet Context!11286))

(assert (=> b!6353014 (= e!3858147 e!3858149)))

(declare-fun c!1155940 () Bool)

(assert (=> b!6353014 (= c!1155940 ((_ is Cons!64952) (exprs!6143 lt!2365023)))))

(declare-fun d!1993341 () Bool)

(declare-fun c!1155939 () Bool)

(declare-fun e!3858148 () Bool)

(assert (=> d!1993341 (= c!1155939 e!3858148)))

(declare-fun res!2614071 () Bool)

(assert (=> d!1993341 (=> (not res!2614071) (not e!3858148))))

(assert (=> d!1993341 (= res!2614071 ((_ is Cons!64952) (exprs!6143 lt!2365023)))))

(assert (=> d!1993341 (= (derivationStepZipperUp!1433 lt!2365023 (h!71401 s!2326)) e!3858147)))

(declare-fun b!6353015 () Bool)

(declare-fun call!541780 () (InoxSet Context!11286))

(assert (=> b!6353015 (= e!3858147 ((_ map or) call!541780 (derivationStepZipperUp!1433 (Context!11287 (t!378666 (exprs!6143 lt!2365023))) (h!71401 s!2326))))))

(declare-fun bm!541775 () Bool)

(assert (=> bm!541775 (= call!541780 (derivationStepZipperDown!1507 (h!71400 (exprs!6143 lt!2365023)) (Context!11287 (t!378666 (exprs!6143 lt!2365023))) (h!71401 s!2326)))))

(declare-fun b!6353016 () Bool)

(assert (=> b!6353016 (= e!3858149 call!541780)))

(declare-fun b!6353017 () Bool)

(assert (=> b!6353017 (= e!3858148 (nullable!6252 (h!71400 (exprs!6143 lt!2365023))))))

(declare-fun b!6353018 () Bool)

(assert (=> b!6353018 (= e!3858149 ((as const (Array Context!11286 Bool)) false))))

(assert (= (and d!1993341 res!2614071) b!6353017))

(assert (= (and d!1993341 c!1155939) b!6353015))

(assert (= (and d!1993341 (not c!1155939)) b!6353014))

(assert (= (and b!6353014 c!1155940) b!6353016))

(assert (= (and b!6353014 (not c!1155940)) b!6353018))

(assert (= (or b!6353015 b!6353016) bm!541775))

(declare-fun m!7159678 () Bool)

(assert (=> b!6353015 m!7159678))

(declare-fun m!7159680 () Bool)

(assert (=> bm!541775 m!7159680))

(declare-fun m!7159682 () Bool)

(assert (=> b!6353017 m!7159682))

(assert (=> b!6352296 d!1993341))

(declare-fun d!1993343 () Bool)

(assert (=> d!1993343 (= (flatMap!1764 lt!2365012 lambda!349506) (choose!47152 lt!2365012 lambda!349506))))

(declare-fun bs!1591234 () Bool)

(assert (= bs!1591234 d!1993343))

(declare-fun m!7159684 () Bool)

(assert (=> bs!1591234 m!7159684))

(assert (=> b!6352306 d!1993343))

(declare-fun b!6353019 () Bool)

(declare-fun e!3858150 () (InoxSet Context!11286))

(declare-fun e!3858152 () (InoxSet Context!11286))

(assert (=> b!6353019 (= e!3858150 e!3858152)))

(declare-fun c!1155942 () Bool)

(assert (=> b!6353019 (= c!1155942 ((_ is Cons!64952) (exprs!6143 lt!2365005)))))

(declare-fun d!1993345 () Bool)

(declare-fun c!1155941 () Bool)

(declare-fun e!3858151 () Bool)

(assert (=> d!1993345 (= c!1155941 e!3858151)))

(declare-fun res!2614072 () Bool)

(assert (=> d!1993345 (=> (not res!2614072) (not e!3858151))))

(assert (=> d!1993345 (= res!2614072 ((_ is Cons!64952) (exprs!6143 lt!2365005)))))

(assert (=> d!1993345 (= (derivationStepZipperUp!1433 lt!2365005 (h!71401 s!2326)) e!3858150)))

(declare-fun call!541781 () (InoxSet Context!11286))

(declare-fun b!6353020 () Bool)

(assert (=> b!6353020 (= e!3858150 ((_ map or) call!541781 (derivationStepZipperUp!1433 (Context!11287 (t!378666 (exprs!6143 lt!2365005))) (h!71401 s!2326))))))

(declare-fun bm!541776 () Bool)

(assert (=> bm!541776 (= call!541781 (derivationStepZipperDown!1507 (h!71400 (exprs!6143 lt!2365005)) (Context!11287 (t!378666 (exprs!6143 lt!2365005))) (h!71401 s!2326)))))

(declare-fun b!6353021 () Bool)

(assert (=> b!6353021 (= e!3858152 call!541781)))

(declare-fun b!6353022 () Bool)

(assert (=> b!6353022 (= e!3858151 (nullable!6252 (h!71400 (exprs!6143 lt!2365005))))))

(declare-fun b!6353023 () Bool)

(assert (=> b!6353023 (= e!3858152 ((as const (Array Context!11286 Bool)) false))))

(assert (= (and d!1993345 res!2614072) b!6353022))

(assert (= (and d!1993345 c!1155941) b!6353020))

(assert (= (and d!1993345 (not c!1155941)) b!6353019))

(assert (= (and b!6353019 c!1155942) b!6353021))

(assert (= (and b!6353019 (not c!1155942)) b!6353023))

(assert (= (or b!6353020 b!6353021) bm!541776))

(declare-fun m!7159686 () Bool)

(assert (=> b!6353020 m!7159686))

(declare-fun m!7159688 () Bool)

(assert (=> bm!541776 m!7159688))

(declare-fun m!7159690 () Bool)

(assert (=> b!6353022 m!7159690))

(assert (=> b!6352306 d!1993345))

(declare-fun d!1993347 () Bool)

(assert (=> d!1993347 (= (flatMap!1764 lt!2365012 lambda!349506) (dynLambda!25757 lambda!349506 lt!2365005))))

(declare-fun lt!2365142 () Unit!158367)

(assert (=> d!1993347 (= lt!2365142 (choose!47151 lt!2365012 lt!2365005 lambda!349506))))

(assert (=> d!1993347 (= lt!2365012 (store ((as const (Array Context!11286 Bool)) false) lt!2365005 true))))

(assert (=> d!1993347 (= (lemmaFlatMapOnSingletonSet!1290 lt!2365012 lt!2365005 lambda!349506) lt!2365142)))

(declare-fun b_lambda!241631 () Bool)

(assert (=> (not b_lambda!241631) (not d!1993347)))

(declare-fun bs!1591235 () Bool)

(assert (= bs!1591235 d!1993347))

(assert (=> bs!1591235 m!7159148))

(declare-fun m!7159692 () Bool)

(assert (=> bs!1591235 m!7159692))

(declare-fun m!7159694 () Bool)

(assert (=> bs!1591235 m!7159694))

(assert (=> bs!1591235 m!7159150))

(assert (=> b!6352306 d!1993347))

(declare-fun bs!1591236 () Bool)

(declare-fun d!1993349 () Bool)

(assert (= bs!1591236 (and d!1993349 b!6352296)))

(declare-fun lambda!349576 () Int)

(assert (=> bs!1591236 (= lambda!349576 lambda!349506)))

(assert (=> d!1993349 true))

(assert (=> d!1993349 (= (derivationStepZipper!2225 lt!2365012 (h!71401 s!2326)) (flatMap!1764 lt!2365012 lambda!349576))))

(declare-fun bs!1591237 () Bool)

(assert (= bs!1591237 d!1993349))

(declare-fun m!7159696 () Bool)

(assert (=> bs!1591237 m!7159696))

(assert (=> b!6352306 d!1993349))

(declare-fun d!1993351 () Bool)

(declare-fun e!3858155 () Bool)

(assert (=> d!1993351 e!3858155))

(declare-fun res!2614075 () Bool)

(assert (=> d!1993351 (=> (not res!2614075) (not e!3858155))))

(declare-fun lt!2365145 () List!65078)

(declare-fun noDuplicate!2089 (List!65078) Bool)

(assert (=> d!1993351 (= res!2614075 (noDuplicate!2089 lt!2365145))))

(declare-fun choose!47153 ((InoxSet Context!11286)) List!65078)

(assert (=> d!1993351 (= lt!2365145 (choose!47153 z!1189))))

(assert (=> d!1993351 (= (toList!10043 z!1189) lt!2365145)))

(declare-fun b!6353028 () Bool)

(declare-fun content!12260 (List!65078) (InoxSet Context!11286))

(assert (=> b!6353028 (= e!3858155 (= (content!12260 lt!2365145) z!1189))))

(assert (= (and d!1993351 res!2614075) b!6353028))

(declare-fun m!7159698 () Bool)

(assert (=> d!1993351 m!7159698))

(declare-fun m!7159700 () Bool)

(assert (=> d!1993351 m!7159700))

(declare-fun m!7159702 () Bool)

(assert (=> b!6353028 m!7159702))

(assert (=> b!6352295 d!1993351))

(declare-fun bs!1591238 () Bool)

(declare-fun d!1993353 () Bool)

(assert (= bs!1591238 (and d!1993353 d!1993293)))

(declare-fun lambda!349579 () Int)

(assert (=> bs!1591238 (= lambda!349579 lambda!349571)))

(declare-fun bs!1591239 () Bool)

(assert (= bs!1591239 (and d!1993353 d!1993303)))

(assert (=> bs!1591239 (= lambda!349579 lambda!349572)))

(declare-fun b!6353049 () Bool)

(declare-fun e!3858171 () Bool)

(assert (=> b!6353049 (= e!3858171 (isEmpty!37046 (t!378666 lt!2365009)))))

(declare-fun b!6353050 () Bool)

(declare-fun e!3858170 () Regex!16259)

(assert (=> b!6353050 (= e!3858170 (h!71400 lt!2365009))))

(declare-fun b!6353051 () Bool)

(declare-fun e!3858172 () Regex!16259)

(assert (=> b!6353051 (= e!3858170 e!3858172)))

(declare-fun c!1155955 () Bool)

(assert (=> b!6353051 (= c!1155955 ((_ is Cons!64952) lt!2365009))))

(declare-fun b!6353052 () Bool)

(declare-fun e!3858168 () Bool)

(declare-fun e!3858169 () Bool)

(assert (=> b!6353052 (= e!3858168 e!3858169)))

(declare-fun c!1155956 () Bool)

(declare-fun tail!12096 (List!65076) List!65076)

(assert (=> b!6353052 (= c!1155956 (isEmpty!37046 (tail!12096 lt!2365009)))))

(declare-fun b!6353053 () Bool)

(declare-fun lt!2365148 () Regex!16259)

(declare-fun isEmptyExpr!1661 (Regex!16259) Bool)

(assert (=> b!6353053 (= e!3858168 (isEmptyExpr!1661 lt!2365148))))

(declare-fun b!6353054 () Bool)

(declare-fun isConcat!1184 (Regex!16259) Bool)

(assert (=> b!6353054 (= e!3858169 (isConcat!1184 lt!2365148))))

(declare-fun b!6353055 () Bool)

(assert (=> b!6353055 (= e!3858172 (Concat!25104 (h!71400 lt!2365009) (generalisedConcat!1856 (t!378666 lt!2365009))))))

(declare-fun b!6353056 () Bool)

(assert (=> b!6353056 (= e!3858172 EmptyExpr!16259)))

(declare-fun e!3858173 () Bool)

(assert (=> d!1993353 e!3858173))

(declare-fun res!2614080 () Bool)

(assert (=> d!1993353 (=> (not res!2614080) (not e!3858173))))

(assert (=> d!1993353 (= res!2614080 (validRegex!7995 lt!2365148))))

(assert (=> d!1993353 (= lt!2365148 e!3858170)))

(declare-fun c!1155953 () Bool)

(assert (=> d!1993353 (= c!1155953 e!3858171)))

(declare-fun res!2614081 () Bool)

(assert (=> d!1993353 (=> (not res!2614081) (not e!3858171))))

(assert (=> d!1993353 (= res!2614081 ((_ is Cons!64952) lt!2365009))))

(assert (=> d!1993353 (forall!15429 lt!2365009 lambda!349579)))

(assert (=> d!1993353 (= (generalisedConcat!1856 lt!2365009) lt!2365148)))

(declare-fun b!6353057 () Bool)

(declare-fun head!13011 (List!65076) Regex!16259)

(assert (=> b!6353057 (= e!3858169 (= lt!2365148 (head!13011 lt!2365009)))))

(declare-fun b!6353058 () Bool)

(assert (=> b!6353058 (= e!3858173 e!3858168)))

(declare-fun c!1155954 () Bool)

(assert (=> b!6353058 (= c!1155954 (isEmpty!37046 lt!2365009))))

(assert (= (and d!1993353 res!2614081) b!6353049))

(assert (= (and d!1993353 c!1155953) b!6353050))

(assert (= (and d!1993353 (not c!1155953)) b!6353051))

(assert (= (and b!6353051 c!1155955) b!6353055))

(assert (= (and b!6353051 (not c!1155955)) b!6353056))

(assert (= (and d!1993353 res!2614080) b!6353058))

(assert (= (and b!6353058 c!1155954) b!6353053))

(assert (= (and b!6353058 (not c!1155954)) b!6353052))

(assert (= (and b!6353052 c!1155956) b!6353057))

(assert (= (and b!6353052 (not c!1155956)) b!6353054))

(declare-fun m!7159704 () Bool)

(assert (=> b!6353054 m!7159704))

(declare-fun m!7159706 () Bool)

(assert (=> b!6353052 m!7159706))

(assert (=> b!6353052 m!7159706))

(declare-fun m!7159708 () Bool)

(assert (=> b!6353052 m!7159708))

(declare-fun m!7159710 () Bool)

(assert (=> b!6353058 m!7159710))

(declare-fun m!7159712 () Bool)

(assert (=> b!6353055 m!7159712))

(declare-fun m!7159714 () Bool)

(assert (=> b!6353053 m!7159714))

(declare-fun m!7159716 () Bool)

(assert (=> d!1993353 m!7159716))

(declare-fun m!7159718 () Bool)

(assert (=> d!1993353 m!7159718))

(declare-fun m!7159720 () Bool)

(assert (=> b!6353057 m!7159720))

(declare-fun m!7159722 () Bool)

(assert (=> b!6353049 m!7159722))

(assert (=> b!6352292 d!1993353))

(declare-fun b!6353077 () Bool)

(declare-fun res!2614096 () Bool)

(declare-fun e!3858186 () Bool)

(assert (=> b!6353077 (=> (not res!2614096) (not e!3858186))))

(declare-fun lt!2365156 () Option!16150)

(declare-fun get!22473 (Option!16150) tuple2!66476)

(assert (=> b!6353077 (= res!2614096 (matchR!8442 lt!2365008 (_2!36541 (get!22473 lt!2365156))))))

(declare-fun b!6353078 () Bool)

(declare-fun e!3858185 () Option!16150)

(declare-fun e!3858184 () Option!16150)

(assert (=> b!6353078 (= e!3858185 e!3858184)))

(declare-fun c!1155962 () Bool)

(assert (=> b!6353078 (= c!1155962 ((_ is Nil!64953) s!2326))))

(declare-fun b!6353079 () Bool)

(assert (=> b!6353079 (= e!3858184 None!16149)))

(declare-fun b!6353080 () Bool)

(declare-fun lt!2365157 () Unit!158367)

(declare-fun lt!2365155 () Unit!158367)

(assert (=> b!6353080 (= lt!2365157 lt!2365155)))

(declare-fun ++!14328 (List!65077 List!65077) List!65077)

(assert (=> b!6353080 (= (++!14328 (++!14328 Nil!64953 (Cons!64953 (h!71401 s!2326) Nil!64953)) (t!378667 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2423 (List!65077 C!32788 List!65077 List!65077) Unit!158367)

(assert (=> b!6353080 (= lt!2365155 (lemmaMoveElementToOtherListKeepsConcatEq!2423 Nil!64953 (h!71401 s!2326) (t!378667 s!2326) s!2326))))

(assert (=> b!6353080 (= e!3858184 (findConcatSeparation!2564 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 (++!14328 Nil!64953 (Cons!64953 (h!71401 s!2326) Nil!64953)) (t!378667 s!2326) s!2326))))

(declare-fun d!1993355 () Bool)

(declare-fun e!3858188 () Bool)

(assert (=> d!1993355 e!3858188))

(declare-fun res!2614093 () Bool)

(assert (=> d!1993355 (=> res!2614093 e!3858188)))

(assert (=> d!1993355 (= res!2614093 e!3858186)))

(declare-fun res!2614092 () Bool)

(assert (=> d!1993355 (=> (not res!2614092) (not e!3858186))))

(assert (=> d!1993355 (= res!2614092 (isDefined!12853 lt!2365156))))

(assert (=> d!1993355 (= lt!2365156 e!3858185)))

(declare-fun c!1155961 () Bool)

(declare-fun e!3858187 () Bool)

(assert (=> d!1993355 (= c!1155961 e!3858187)))

(declare-fun res!2614094 () Bool)

(assert (=> d!1993355 (=> (not res!2614094) (not e!3858187))))

(assert (=> d!1993355 (= res!2614094 (matchR!8442 (regOne!33030 (regOne!33030 r!7292)) Nil!64953))))

(assert (=> d!1993355 (validRegex!7995 (regOne!33030 (regOne!33030 r!7292)))))

(assert (=> d!1993355 (= (findConcatSeparation!2564 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 Nil!64953 s!2326 s!2326) lt!2365156)))

(declare-fun b!6353081 () Bool)

(assert (=> b!6353081 (= e!3858185 (Some!16149 (tuple2!66477 Nil!64953 s!2326)))))

(declare-fun b!6353082 () Bool)

(assert (=> b!6353082 (= e!3858188 (not (isDefined!12853 lt!2365156)))))

(declare-fun b!6353083 () Bool)

(declare-fun res!2614095 () Bool)

(assert (=> b!6353083 (=> (not res!2614095) (not e!3858186))))

(assert (=> b!6353083 (= res!2614095 (matchR!8442 (regOne!33030 (regOne!33030 r!7292)) (_1!36541 (get!22473 lt!2365156))))))

(declare-fun b!6353084 () Bool)

(assert (=> b!6353084 (= e!3858187 (matchR!8442 lt!2365008 s!2326))))

(declare-fun b!6353085 () Bool)

(assert (=> b!6353085 (= e!3858186 (= (++!14328 (_1!36541 (get!22473 lt!2365156)) (_2!36541 (get!22473 lt!2365156))) s!2326))))

(assert (= (and d!1993355 res!2614094) b!6353084))

(assert (= (and d!1993355 c!1155961) b!6353081))

(assert (= (and d!1993355 (not c!1155961)) b!6353078))

(assert (= (and b!6353078 c!1155962) b!6353079))

(assert (= (and b!6353078 (not c!1155962)) b!6353080))

(assert (= (and d!1993355 res!2614092) b!6353083))

(assert (= (and b!6353083 res!2614095) b!6353077))

(assert (= (and b!6353077 res!2614096) b!6353085))

(assert (= (and d!1993355 (not res!2614093)) b!6353082))

(declare-fun m!7159724 () Bool)

(assert (=> d!1993355 m!7159724))

(declare-fun m!7159726 () Bool)

(assert (=> d!1993355 m!7159726))

(declare-fun m!7159728 () Bool)

(assert (=> d!1993355 m!7159728))

(assert (=> b!6353082 m!7159724))

(declare-fun m!7159730 () Bool)

(assert (=> b!6353085 m!7159730))

(declare-fun m!7159732 () Bool)

(assert (=> b!6353085 m!7159732))

(assert (=> b!6353077 m!7159730))

(declare-fun m!7159734 () Bool)

(assert (=> b!6353077 m!7159734))

(assert (=> b!6353083 m!7159730))

(declare-fun m!7159736 () Bool)

(assert (=> b!6353083 m!7159736))

(declare-fun m!7159738 () Bool)

(assert (=> b!6353080 m!7159738))

(assert (=> b!6353080 m!7159738))

(declare-fun m!7159740 () Bool)

(assert (=> b!6353080 m!7159740))

(declare-fun m!7159742 () Bool)

(assert (=> b!6353080 m!7159742))

(assert (=> b!6353080 m!7159738))

(declare-fun m!7159744 () Bool)

(assert (=> b!6353080 m!7159744))

(assert (=> b!6353084 m!7159106))

(assert (=> b!6352292 d!1993355))

(declare-fun b!6353086 () Bool)

(declare-fun res!2614103 () Bool)

(declare-fun e!3858190 () Bool)

(assert (=> b!6353086 (=> (not res!2614103) (not e!3858190))))

(declare-fun call!541782 () Bool)

(assert (=> b!6353086 (= res!2614103 (not call!541782))))

(declare-fun b!6353087 () Bool)

(declare-fun res!2614099 () Bool)

(declare-fun e!3858192 () Bool)

(assert (=> b!6353087 (=> res!2614099 e!3858192)))

(assert (=> b!6353087 (= res!2614099 (not ((_ is ElementMatch!16259) lt!2365033)))))

(declare-fun e!3858189 () Bool)

(assert (=> b!6353087 (= e!3858189 e!3858192)))

(declare-fun b!6353088 () Bool)

(declare-fun e!3858193 () Bool)

(assert (=> b!6353088 (= e!3858193 (nullable!6252 lt!2365033))))

(declare-fun b!6353089 () Bool)

(declare-fun e!3858194 () Bool)

(declare-fun lt!2365158 () Bool)

(assert (=> b!6353089 (= e!3858194 (= lt!2365158 call!541782))))

(declare-fun b!6353090 () Bool)

(assert (=> b!6353090 (= e!3858189 (not lt!2365158))))

(declare-fun b!6353091 () Bool)

(declare-fun e!3858191 () Bool)

(assert (=> b!6353091 (= e!3858191 (not (= (head!13010 s!2326) (c!1155726 lt!2365033))))))

(declare-fun d!1993357 () Bool)

(assert (=> d!1993357 e!3858194))

(declare-fun c!1155965 () Bool)

(assert (=> d!1993357 (= c!1155965 ((_ is EmptyExpr!16259) lt!2365033))))

(assert (=> d!1993357 (= lt!2365158 e!3858193)))

(declare-fun c!1155964 () Bool)

(assert (=> d!1993357 (= c!1155964 (isEmpty!37049 s!2326))))

(assert (=> d!1993357 (validRegex!7995 lt!2365033)))

(assert (=> d!1993357 (= (matchR!8442 lt!2365033 s!2326) lt!2365158)))

(declare-fun b!6353092 () Bool)

(declare-fun res!2614101 () Bool)

(assert (=> b!6353092 (=> res!2614101 e!3858191)))

(assert (=> b!6353092 (= res!2614101 (not (isEmpty!37049 (tail!12095 s!2326))))))

(declare-fun bm!541777 () Bool)

(assert (=> bm!541777 (= call!541782 (isEmpty!37049 s!2326))))

(declare-fun b!6353093 () Bool)

(declare-fun res!2614104 () Bool)

(assert (=> b!6353093 (=> (not res!2614104) (not e!3858190))))

(assert (=> b!6353093 (= res!2614104 (isEmpty!37049 (tail!12095 s!2326)))))

(declare-fun b!6353094 () Bool)

(declare-fun e!3858195 () Bool)

(assert (=> b!6353094 (= e!3858195 e!3858191)))

(declare-fun res!2614102 () Bool)

(assert (=> b!6353094 (=> res!2614102 e!3858191)))

(assert (=> b!6353094 (= res!2614102 call!541782)))

(declare-fun b!6353095 () Bool)

(assert (=> b!6353095 (= e!3858194 e!3858189)))

(declare-fun c!1155963 () Bool)

(assert (=> b!6353095 (= c!1155963 ((_ is EmptyLang!16259) lt!2365033))))

(declare-fun b!6353096 () Bool)

(assert (=> b!6353096 (= e!3858190 (= (head!13010 s!2326) (c!1155726 lt!2365033)))))

(declare-fun b!6353097 () Bool)

(assert (=> b!6353097 (= e!3858193 (matchR!8442 (derivativeStep!4964 lt!2365033 (head!13010 s!2326)) (tail!12095 s!2326)))))

(declare-fun b!6353098 () Bool)

(declare-fun res!2614098 () Bool)

(assert (=> b!6353098 (=> res!2614098 e!3858192)))

(assert (=> b!6353098 (= res!2614098 e!3858190)))

(declare-fun res!2614100 () Bool)

(assert (=> b!6353098 (=> (not res!2614100) (not e!3858190))))

(assert (=> b!6353098 (= res!2614100 lt!2365158)))

(declare-fun b!6353099 () Bool)

(assert (=> b!6353099 (= e!3858192 e!3858195)))

(declare-fun res!2614097 () Bool)

(assert (=> b!6353099 (=> (not res!2614097) (not e!3858195))))

(assert (=> b!6353099 (= res!2614097 (not lt!2365158))))

(assert (= (and d!1993357 c!1155964) b!6353088))

(assert (= (and d!1993357 (not c!1155964)) b!6353097))

(assert (= (and d!1993357 c!1155965) b!6353089))

(assert (= (and d!1993357 (not c!1155965)) b!6353095))

(assert (= (and b!6353095 c!1155963) b!6353090))

(assert (= (and b!6353095 (not c!1155963)) b!6353087))

(assert (= (and b!6353087 (not res!2614099)) b!6353098))

(assert (= (and b!6353098 res!2614100) b!6353086))

(assert (= (and b!6353086 res!2614103) b!6353093))

(assert (= (and b!6353093 res!2614104) b!6353096))

(assert (= (and b!6353098 (not res!2614098)) b!6353099))

(assert (= (and b!6353099 res!2614097) b!6353094))

(assert (= (and b!6353094 (not res!2614102)) b!6353092))

(assert (= (and b!6353092 (not res!2614101)) b!6353091))

(assert (= (or b!6353089 b!6353086 b!6353094) bm!541777))

(assert (=> b!6353096 m!7159418))

(assert (=> b!6353092 m!7159424))

(assert (=> b!6353092 m!7159424))

(assert (=> b!6353092 m!7159430))

(assert (=> d!1993357 m!7159382))

(declare-fun m!7159746 () Bool)

(assert (=> d!1993357 m!7159746))

(declare-fun m!7159748 () Bool)

(assert (=> b!6353088 m!7159748))

(assert (=> b!6353091 m!7159418))

(assert (=> b!6353097 m!7159418))

(assert (=> b!6353097 m!7159418))

(declare-fun m!7159750 () Bool)

(assert (=> b!6353097 m!7159750))

(assert (=> b!6353097 m!7159424))

(assert (=> b!6353097 m!7159750))

(assert (=> b!6353097 m!7159424))

(declare-fun m!7159752 () Bool)

(assert (=> b!6353097 m!7159752))

(assert (=> b!6353093 m!7159424))

(assert (=> b!6353093 m!7159424))

(assert (=> b!6353093 m!7159430))

(assert (=> bm!541777 m!7159382))

(assert (=> b!6352292 d!1993357))

(declare-fun bs!1591240 () Bool)

(declare-fun d!1993359 () Bool)

(assert (= bs!1591240 (and d!1993359 d!1993293)))

(declare-fun lambda!349580 () Int)

(assert (=> bs!1591240 (= lambda!349580 lambda!349571)))

(declare-fun bs!1591241 () Bool)

(assert (= bs!1591241 (and d!1993359 d!1993303)))

(assert (=> bs!1591241 (= lambda!349580 lambda!349572)))

(declare-fun bs!1591242 () Bool)

(assert (= bs!1591242 (and d!1993359 d!1993353)))

(assert (=> bs!1591242 (= lambda!349580 lambda!349579)))

(declare-fun b!6353100 () Bool)

(declare-fun e!3858199 () Bool)

(assert (=> b!6353100 (= e!3858199 (isEmpty!37046 (t!378666 (t!378666 (exprs!6143 (h!71402 zl!343))))))))

(declare-fun b!6353101 () Bool)

(declare-fun e!3858198 () Regex!16259)

(assert (=> b!6353101 (= e!3858198 (h!71400 (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6353102 () Bool)

(declare-fun e!3858200 () Regex!16259)

(assert (=> b!6353102 (= e!3858198 e!3858200)))

(declare-fun c!1155968 () Bool)

(assert (=> b!6353102 (= c!1155968 ((_ is Cons!64952) (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6353103 () Bool)

(declare-fun e!3858196 () Bool)

(declare-fun e!3858197 () Bool)

(assert (=> b!6353103 (= e!3858196 e!3858197)))

(declare-fun c!1155969 () Bool)

(assert (=> b!6353103 (= c!1155969 (isEmpty!37046 (tail!12096 (t!378666 (exprs!6143 (h!71402 zl!343))))))))

(declare-fun b!6353104 () Bool)

(declare-fun lt!2365159 () Regex!16259)

(assert (=> b!6353104 (= e!3858196 (isEmptyExpr!1661 lt!2365159))))

(declare-fun b!6353105 () Bool)

(assert (=> b!6353105 (= e!3858197 (isConcat!1184 lt!2365159))))

(declare-fun b!6353106 () Bool)

(assert (=> b!6353106 (= e!3858200 (Concat!25104 (h!71400 (t!378666 (exprs!6143 (h!71402 zl!343)))) (generalisedConcat!1856 (t!378666 (t!378666 (exprs!6143 (h!71402 zl!343)))))))))

(declare-fun b!6353107 () Bool)

(assert (=> b!6353107 (= e!3858200 EmptyExpr!16259)))

(declare-fun e!3858201 () Bool)

(assert (=> d!1993359 e!3858201))

(declare-fun res!2614105 () Bool)

(assert (=> d!1993359 (=> (not res!2614105) (not e!3858201))))

(assert (=> d!1993359 (= res!2614105 (validRegex!7995 lt!2365159))))

(assert (=> d!1993359 (= lt!2365159 e!3858198)))

(declare-fun c!1155966 () Bool)

(assert (=> d!1993359 (= c!1155966 e!3858199)))

(declare-fun res!2614106 () Bool)

(assert (=> d!1993359 (=> (not res!2614106) (not e!3858199))))

(assert (=> d!1993359 (= res!2614106 ((_ is Cons!64952) (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(assert (=> d!1993359 (forall!15429 (t!378666 (exprs!6143 (h!71402 zl!343))) lambda!349580)))

(assert (=> d!1993359 (= (generalisedConcat!1856 (t!378666 (exprs!6143 (h!71402 zl!343)))) lt!2365159)))

(declare-fun b!6353108 () Bool)

(assert (=> b!6353108 (= e!3858197 (= lt!2365159 (head!13011 (t!378666 (exprs!6143 (h!71402 zl!343))))))))

(declare-fun b!6353109 () Bool)

(assert (=> b!6353109 (= e!3858201 e!3858196)))

(declare-fun c!1155967 () Bool)

(assert (=> b!6353109 (= c!1155967 (isEmpty!37046 (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(assert (= (and d!1993359 res!2614106) b!6353100))

(assert (= (and d!1993359 c!1155966) b!6353101))

(assert (= (and d!1993359 (not c!1155966)) b!6353102))

(assert (= (and b!6353102 c!1155968) b!6353106))

(assert (= (and b!6353102 (not c!1155968)) b!6353107))

(assert (= (and d!1993359 res!2614105) b!6353109))

(assert (= (and b!6353109 c!1155967) b!6353104))

(assert (= (and b!6353109 (not c!1155967)) b!6353103))

(assert (= (and b!6353103 c!1155969) b!6353108))

(assert (= (and b!6353103 (not c!1155969)) b!6353105))

(declare-fun m!7159754 () Bool)

(assert (=> b!6353105 m!7159754))

(declare-fun m!7159756 () Bool)

(assert (=> b!6353103 m!7159756))

(assert (=> b!6353103 m!7159756))

(declare-fun m!7159758 () Bool)

(assert (=> b!6353103 m!7159758))

(assert (=> b!6353109 m!7159144))

(declare-fun m!7159760 () Bool)

(assert (=> b!6353106 m!7159760))

(declare-fun m!7159762 () Bool)

(assert (=> b!6353104 m!7159762))

(declare-fun m!7159764 () Bool)

(assert (=> d!1993359 m!7159764))

(declare-fun m!7159766 () Bool)

(assert (=> d!1993359 m!7159766))

(declare-fun m!7159768 () Bool)

(assert (=> b!6353108 m!7159768))

(declare-fun m!7159770 () Bool)

(assert (=> b!6353100 m!7159770))

(assert (=> b!6352292 d!1993359))

(declare-fun d!1993361 () Bool)

(declare-fun isEmpty!37050 (Option!16150) Bool)

(assert (=> d!1993361 (= (isDefined!12853 (findConcatSeparation!2564 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 Nil!64953 s!2326 s!2326)) (not (isEmpty!37050 (findConcatSeparation!2564 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 Nil!64953 s!2326 s!2326))))))

(declare-fun bs!1591243 () Bool)

(assert (= bs!1591243 d!1993361))

(assert (=> bs!1591243 m!7159114))

(declare-fun m!7159772 () Bool)

(assert (=> bs!1591243 m!7159772))

(assert (=> b!6352292 d!1993361))

(declare-fun d!1993363 () Bool)

(declare-fun c!1155970 () Bool)

(assert (=> d!1993363 (= c!1155970 (isEmpty!37049 s!2326))))

(declare-fun e!3858202 () Bool)

(assert (=> d!1993363 (= (matchZipper!2271 lt!2365012 s!2326) e!3858202)))

(declare-fun b!6353110 () Bool)

(assert (=> b!6353110 (= e!3858202 (nullableZipper!2025 lt!2365012))))

(declare-fun b!6353111 () Bool)

(assert (=> b!6353111 (= e!3858202 (matchZipper!2271 (derivationStepZipper!2225 lt!2365012 (head!13010 s!2326)) (tail!12095 s!2326)))))

(assert (= (and d!1993363 c!1155970) b!6353110))

(assert (= (and d!1993363 (not c!1155970)) b!6353111))

(assert (=> d!1993363 m!7159382))

(declare-fun m!7159774 () Bool)

(assert (=> b!6353110 m!7159774))

(assert (=> b!6353111 m!7159418))

(assert (=> b!6353111 m!7159418))

(declare-fun m!7159776 () Bool)

(assert (=> b!6353111 m!7159776))

(assert (=> b!6353111 m!7159424))

(assert (=> b!6353111 m!7159776))

(assert (=> b!6353111 m!7159424))

(declare-fun m!7159778 () Bool)

(assert (=> b!6353111 m!7159778))

(assert (=> b!6352292 d!1993363))

(declare-fun bs!1591244 () Bool)

(declare-fun b!6353121 () Bool)

(assert (= bs!1591244 (and b!6353121 b!6352618)))

(declare-fun lambda!349581 () Int)

(assert (=> bs!1591244 (not (= lambda!349581 lambda!349543))))

(declare-fun bs!1591245 () Bool)

(assert (= bs!1591245 (and b!6353121 b!6352292)))

(assert (=> bs!1591245 (not (= lambda!349581 lambda!349507))))

(assert (=> bs!1591245 (not (= lambda!349581 lambda!349509))))

(declare-fun bs!1591246 () Bool)

(assert (= bs!1591246 (and b!6353121 b!6352310)))

(assert (=> bs!1591246 (not (= lambda!349581 lambda!349504))))

(declare-fun bs!1591247 () Bool)

(assert (= bs!1591247 (and b!6353121 b!6352619)))

(assert (=> bs!1591247 (= (and (= (reg!16588 lt!2365033) (reg!16588 r!7292)) (= lt!2365033 r!7292)) (= lambda!349581 lambda!349541))))

(assert (=> bs!1591245 (not (= lambda!349581 lambda!349508))))

(assert (=> bs!1591246 (not (= lambda!349581 lambda!349505))))

(assert (=> b!6353121 true))

(assert (=> b!6353121 true))

(declare-fun bs!1591248 () Bool)

(declare-fun b!6353120 () Bool)

(assert (= bs!1591248 (and b!6353120 b!6352618)))

(declare-fun lambda!349582 () Int)

(assert (=> bs!1591248 (= (and (= (regOne!33030 lt!2365033) (regOne!33030 r!7292)) (= (regTwo!33030 lt!2365033) (regTwo!33030 r!7292))) (= lambda!349582 lambda!349543))))

(declare-fun bs!1591249 () Bool)

(assert (= bs!1591249 (and b!6353120 b!6352292)))

(assert (=> bs!1591249 (not (= lambda!349582 lambda!349507))))

(declare-fun bs!1591250 () Bool)

(assert (= bs!1591250 (and b!6353120 b!6353121)))

(assert (=> bs!1591250 (not (= lambda!349582 lambda!349581))))

(assert (=> bs!1591249 (not (= lambda!349582 lambda!349509))))

(declare-fun bs!1591251 () Bool)

(assert (= bs!1591251 (and b!6353120 b!6352310)))

(assert (=> bs!1591251 (not (= lambda!349582 lambda!349504))))

(declare-fun bs!1591252 () Bool)

(assert (= bs!1591252 (and b!6353120 b!6352619)))

(assert (=> bs!1591252 (not (= lambda!349582 lambda!349541))))

(assert (=> bs!1591249 (= (and (= (regOne!33030 lt!2365033) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 lt!2365033) lt!2365008)) (= lambda!349582 lambda!349508))))

(assert (=> bs!1591251 (= (and (= (regOne!33030 lt!2365033) (regOne!33030 r!7292)) (= (regTwo!33030 lt!2365033) (regTwo!33030 r!7292))) (= lambda!349582 lambda!349505))))

(assert (=> b!6353120 true))

(assert (=> b!6353120 true))

(declare-fun c!1155973 () Bool)

(declare-fun bm!541778 () Bool)

(declare-fun call!541784 () Bool)

(assert (=> bm!541778 (= call!541784 (Exists!3329 (ite c!1155973 lambda!349581 lambda!349582)))))

(declare-fun d!1993365 () Bool)

(declare-fun c!1155974 () Bool)

(assert (=> d!1993365 (= c!1155974 ((_ is EmptyExpr!16259) lt!2365033))))

(declare-fun e!3858208 () Bool)

(assert (=> d!1993365 (= (matchRSpec!3360 lt!2365033 s!2326) e!3858208)))

(declare-fun b!6353112 () Bool)

(declare-fun res!2614107 () Bool)

(declare-fun e!3858204 () Bool)

(assert (=> b!6353112 (=> res!2614107 e!3858204)))

(declare-fun call!541783 () Bool)

(assert (=> b!6353112 (= res!2614107 call!541783)))

(declare-fun e!3858209 () Bool)

(assert (=> b!6353112 (= e!3858209 e!3858204)))

(declare-fun b!6353113 () Bool)

(declare-fun c!1155972 () Bool)

(assert (=> b!6353113 (= c!1155972 ((_ is Union!16259) lt!2365033))))

(declare-fun e!3858207 () Bool)

(declare-fun e!3858203 () Bool)

(assert (=> b!6353113 (= e!3858207 e!3858203)))

(declare-fun b!6353114 () Bool)

(assert (=> b!6353114 (= e!3858203 e!3858209)))

(assert (=> b!6353114 (= c!1155973 ((_ is Star!16259) lt!2365033))))

(declare-fun b!6353115 () Bool)

(declare-fun e!3858205 () Bool)

(assert (=> b!6353115 (= e!3858208 e!3858205)))

(declare-fun res!2614108 () Bool)

(assert (=> b!6353115 (= res!2614108 (not ((_ is EmptyLang!16259) lt!2365033)))))

(assert (=> b!6353115 (=> (not res!2614108) (not e!3858205))))

(declare-fun b!6353116 () Bool)

(declare-fun e!3858206 () Bool)

(assert (=> b!6353116 (= e!3858203 e!3858206)))

(declare-fun res!2614109 () Bool)

(assert (=> b!6353116 (= res!2614109 (matchRSpec!3360 (regOne!33031 lt!2365033) s!2326))))

(assert (=> b!6353116 (=> res!2614109 e!3858206)))

(declare-fun b!6353117 () Bool)

(assert (=> b!6353117 (= e!3858208 call!541783)))

(declare-fun b!6353118 () Bool)

(assert (=> b!6353118 (= e!3858207 (= s!2326 (Cons!64953 (c!1155726 lt!2365033) Nil!64953)))))

(declare-fun bm!541779 () Bool)

(assert (=> bm!541779 (= call!541783 (isEmpty!37049 s!2326))))

(declare-fun b!6353119 () Bool)

(assert (=> b!6353119 (= e!3858206 (matchRSpec!3360 (regTwo!33031 lt!2365033) s!2326))))

(assert (=> b!6353120 (= e!3858209 call!541784)))

(assert (=> b!6353121 (= e!3858204 call!541784)))

(declare-fun b!6353122 () Bool)

(declare-fun c!1155971 () Bool)

(assert (=> b!6353122 (= c!1155971 ((_ is ElementMatch!16259) lt!2365033))))

(assert (=> b!6353122 (= e!3858205 e!3858207)))

(assert (= (and d!1993365 c!1155974) b!6353117))

(assert (= (and d!1993365 (not c!1155974)) b!6353115))

(assert (= (and b!6353115 res!2614108) b!6353122))

(assert (= (and b!6353122 c!1155971) b!6353118))

(assert (= (and b!6353122 (not c!1155971)) b!6353113))

(assert (= (and b!6353113 c!1155972) b!6353116))

(assert (= (and b!6353113 (not c!1155972)) b!6353114))

(assert (= (and b!6353116 (not res!2614109)) b!6353119))

(assert (= (and b!6353114 c!1155973) b!6353112))

(assert (= (and b!6353114 (not c!1155973)) b!6353120))

(assert (= (and b!6353112 (not res!2614107)) b!6353121))

(assert (= (or b!6353121 b!6353120) bm!541778))

(assert (= (or b!6353117 b!6353112) bm!541779))

(declare-fun m!7159780 () Bool)

(assert (=> bm!541778 m!7159780))

(declare-fun m!7159782 () Bool)

(assert (=> b!6353116 m!7159782))

(assert (=> bm!541779 m!7159382))

(declare-fun m!7159784 () Bool)

(assert (=> b!6353119 m!7159784))

(assert (=> b!6352292 d!1993365))

(declare-fun bs!1591253 () Bool)

(declare-fun d!1993367 () Bool)

(assert (= bs!1591253 (and d!1993367 b!6352618)))

(declare-fun lambda!349585 () Int)

(assert (=> bs!1591253 (not (= lambda!349585 lambda!349543))))

(declare-fun bs!1591254 () Bool)

(assert (= bs!1591254 (and d!1993367 b!6352292)))

(assert (=> bs!1591254 (= lambda!349585 lambda!349507)))

(declare-fun bs!1591255 () Bool)

(assert (= bs!1591255 (and d!1993367 b!6353121)))

(assert (=> bs!1591255 (not (= lambda!349585 lambda!349581))))

(assert (=> bs!1591254 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regTwo!33030 (regOne!33030 r!7292))) (= lt!2365008 lt!2365025)) (= lambda!349585 lambda!349509))))

(declare-fun bs!1591256 () Bool)

(assert (= bs!1591256 (and d!1993367 b!6353120)))

(assert (=> bs!1591256 (not (= lambda!349585 lambda!349582))))

(declare-fun bs!1591257 () Bool)

(assert (= bs!1591257 (and d!1993367 b!6352310)))

(assert (=> bs!1591257 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365008 (regTwo!33030 r!7292))) (= lambda!349585 lambda!349504))))

(declare-fun bs!1591258 () Bool)

(assert (= bs!1591258 (and d!1993367 b!6352619)))

(assert (=> bs!1591258 (not (= lambda!349585 lambda!349541))))

(assert (=> bs!1591254 (not (= lambda!349585 lambda!349508))))

(assert (=> bs!1591257 (not (= lambda!349585 lambda!349505))))

(assert (=> d!1993367 true))

(assert (=> d!1993367 true))

(assert (=> d!1993367 true))

(assert (=> d!1993367 (= (isDefined!12853 (findConcatSeparation!2564 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 Nil!64953 s!2326 s!2326)) (Exists!3329 lambda!349585))))

(declare-fun lt!2365162 () Unit!158367)

(declare-fun choose!47155 (Regex!16259 Regex!16259 List!65077) Unit!158367)

(assert (=> d!1993367 (= lt!2365162 (choose!47155 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 s!2326))))

(assert (=> d!1993367 (validRegex!7995 (regOne!33030 (regOne!33030 r!7292)))))

(assert (=> d!1993367 (= (lemmaFindConcatSeparationEquivalentToExists!2328 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 s!2326) lt!2365162)))

(declare-fun bs!1591259 () Bool)

(assert (= bs!1591259 d!1993367))

(assert (=> bs!1591259 m!7159114))

(declare-fun m!7159786 () Bool)

(assert (=> bs!1591259 m!7159786))

(declare-fun m!7159788 () Bool)

(assert (=> bs!1591259 m!7159788))

(assert (=> bs!1591259 m!7159728))

(assert (=> bs!1591259 m!7159114))

(assert (=> bs!1591259 m!7159116))

(assert (=> b!6352292 d!1993367))

(declare-fun d!1993369 () Bool)

(assert (=> d!1993369 (= (matchR!8442 lt!2365033 s!2326) (matchRSpec!3360 lt!2365033 s!2326))))

(declare-fun lt!2365163 () Unit!158367)

(assert (=> d!1993369 (= lt!2365163 (choose!47149 lt!2365033 s!2326))))

(assert (=> d!1993369 (validRegex!7995 lt!2365033)))

(assert (=> d!1993369 (= (mainMatchTheorem!3360 lt!2365033 s!2326) lt!2365163)))

(declare-fun bs!1591260 () Bool)

(assert (= bs!1591260 d!1993369))

(assert (=> bs!1591260 m!7159124))

(assert (=> bs!1591260 m!7159094))

(declare-fun m!7159790 () Bool)

(assert (=> bs!1591260 m!7159790))

(assert (=> bs!1591260 m!7159746))

(assert (=> b!6352292 d!1993369))

(declare-fun d!1993371 () Bool)

(assert (=> d!1993371 (= (isDefined!12853 (findConcatSeparation!2564 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 Nil!64953 s!2326 s!2326)) (not (isEmpty!37050 (findConcatSeparation!2564 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 Nil!64953 s!2326 s!2326))))))

(declare-fun bs!1591261 () Bool)

(assert (= bs!1591261 d!1993371))

(assert (=> bs!1591261 m!7159098))

(declare-fun m!7159792 () Bool)

(assert (=> bs!1591261 m!7159792))

(assert (=> b!6352292 d!1993371))

(declare-fun d!1993373 () Bool)

(declare-fun choose!47156 (Int) Bool)

(assert (=> d!1993373 (= (Exists!3329 lambda!349509) (choose!47156 lambda!349509))))

(declare-fun bs!1591262 () Bool)

(assert (= bs!1591262 d!1993373))

(declare-fun m!7159794 () Bool)

(assert (=> bs!1591262 m!7159794))

(assert (=> b!6352292 d!1993373))

(declare-fun d!1993375 () Bool)

(assert (=> d!1993375 (= (matchR!8442 lt!2365033 s!2326) (matchZipper!2271 lt!2365012 s!2326))))

(declare-fun lt!2365166 () Unit!158367)

(declare-fun choose!47157 ((InoxSet Context!11286) List!65078 Regex!16259 List!65077) Unit!158367)

(assert (=> d!1993375 (= lt!2365166 (choose!47157 lt!2365012 lt!2365018 lt!2365033 s!2326))))

(assert (=> d!1993375 (validRegex!7995 lt!2365033)))

(assert (=> d!1993375 (= (theoremZipperRegexEquiv!801 lt!2365012 lt!2365018 lt!2365033 s!2326) lt!2365166)))

(declare-fun bs!1591263 () Bool)

(assert (= bs!1591263 d!1993375))

(assert (=> bs!1591263 m!7159124))

(assert (=> bs!1591263 m!7159128))

(declare-fun m!7159796 () Bool)

(assert (=> bs!1591263 m!7159796))

(assert (=> bs!1591263 m!7159746))

(assert (=> b!6352292 d!1993375))

(declare-fun d!1993377 () Bool)

(assert (=> d!1993377 (= (Exists!3329 lambda!349507) (choose!47156 lambda!349507))))

(declare-fun bs!1591264 () Bool)

(assert (= bs!1591264 d!1993377))

(declare-fun m!7159798 () Bool)

(assert (=> bs!1591264 m!7159798))

(assert (=> b!6352292 d!1993377))

(declare-fun b!6353127 () Bool)

(declare-fun res!2614118 () Bool)

(declare-fun e!3858214 () Bool)

(assert (=> b!6353127 (=> (not res!2614118) (not e!3858214))))

(declare-fun lt!2365168 () Option!16150)

(assert (=> b!6353127 (= res!2614118 (matchR!8442 lt!2365025 (_2!36541 (get!22473 lt!2365168))))))

(declare-fun b!6353128 () Bool)

(declare-fun e!3858213 () Option!16150)

(declare-fun e!3858212 () Option!16150)

(assert (=> b!6353128 (= e!3858213 e!3858212)))

(declare-fun c!1155976 () Bool)

(assert (=> b!6353128 (= c!1155976 ((_ is Nil!64953) s!2326))))

(declare-fun b!6353129 () Bool)

(assert (=> b!6353129 (= e!3858212 None!16149)))

(declare-fun b!6353130 () Bool)

(declare-fun lt!2365169 () Unit!158367)

(declare-fun lt!2365167 () Unit!158367)

(assert (=> b!6353130 (= lt!2365169 lt!2365167)))

(assert (=> b!6353130 (= (++!14328 (++!14328 Nil!64953 (Cons!64953 (h!71401 s!2326) Nil!64953)) (t!378667 s!2326)) s!2326)))

(assert (=> b!6353130 (= lt!2365167 (lemmaMoveElementToOtherListKeepsConcatEq!2423 Nil!64953 (h!71401 s!2326) (t!378667 s!2326) s!2326))))

(assert (=> b!6353130 (= e!3858212 (findConcatSeparation!2564 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 (++!14328 Nil!64953 (Cons!64953 (h!71401 s!2326) Nil!64953)) (t!378667 s!2326) s!2326))))

(declare-fun d!1993379 () Bool)

(declare-fun e!3858216 () Bool)

(assert (=> d!1993379 e!3858216))

(declare-fun res!2614115 () Bool)

(assert (=> d!1993379 (=> res!2614115 e!3858216)))

(assert (=> d!1993379 (= res!2614115 e!3858214)))

(declare-fun res!2614114 () Bool)

(assert (=> d!1993379 (=> (not res!2614114) (not e!3858214))))

(assert (=> d!1993379 (= res!2614114 (isDefined!12853 lt!2365168))))

(assert (=> d!1993379 (= lt!2365168 e!3858213)))

(declare-fun c!1155975 () Bool)

(declare-fun e!3858215 () Bool)

(assert (=> d!1993379 (= c!1155975 e!3858215)))

(declare-fun res!2614116 () Bool)

(assert (=> d!1993379 (=> (not res!2614116) (not e!3858215))))

(assert (=> d!1993379 (= res!2614116 (matchR!8442 (regTwo!33030 (regOne!33030 r!7292)) Nil!64953))))

(assert (=> d!1993379 (validRegex!7995 (regTwo!33030 (regOne!33030 r!7292)))))

(assert (=> d!1993379 (= (findConcatSeparation!2564 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 Nil!64953 s!2326 s!2326) lt!2365168)))

(declare-fun b!6353131 () Bool)

(assert (=> b!6353131 (= e!3858213 (Some!16149 (tuple2!66477 Nil!64953 s!2326)))))

(declare-fun b!6353132 () Bool)

(assert (=> b!6353132 (= e!3858216 (not (isDefined!12853 lt!2365168)))))

(declare-fun b!6353133 () Bool)

(declare-fun res!2614117 () Bool)

(assert (=> b!6353133 (=> (not res!2614117) (not e!3858214))))

(assert (=> b!6353133 (= res!2614117 (matchR!8442 (regTwo!33030 (regOne!33030 r!7292)) (_1!36541 (get!22473 lt!2365168))))))

(declare-fun b!6353134 () Bool)

(assert (=> b!6353134 (= e!3858215 (matchR!8442 lt!2365025 s!2326))))

(declare-fun b!6353135 () Bool)

(assert (=> b!6353135 (= e!3858214 (= (++!14328 (_1!36541 (get!22473 lt!2365168)) (_2!36541 (get!22473 lt!2365168))) s!2326))))

(assert (= (and d!1993379 res!2614116) b!6353134))

(assert (= (and d!1993379 c!1155975) b!6353131))

(assert (= (and d!1993379 (not c!1155975)) b!6353128))

(assert (= (and b!6353128 c!1155976) b!6353129))

(assert (= (and b!6353128 (not c!1155976)) b!6353130))

(assert (= (and d!1993379 res!2614114) b!6353133))

(assert (= (and b!6353133 res!2614117) b!6353127))

(assert (= (and b!6353127 res!2614118) b!6353135))

(assert (= (and d!1993379 (not res!2614115)) b!6353132))

(declare-fun m!7159800 () Bool)

(assert (=> d!1993379 m!7159800))

(declare-fun m!7159802 () Bool)

(assert (=> d!1993379 m!7159802))

(assert (=> d!1993379 m!7159122))

(assert (=> b!6353132 m!7159800))

(declare-fun m!7159804 () Bool)

(assert (=> b!6353135 m!7159804))

(declare-fun m!7159806 () Bool)

(assert (=> b!6353135 m!7159806))

(assert (=> b!6353127 m!7159804))

(declare-fun m!7159808 () Bool)

(assert (=> b!6353127 m!7159808))

(assert (=> b!6353133 m!7159804))

(declare-fun m!7159810 () Bool)

(assert (=> b!6353133 m!7159810))

(assert (=> b!6353130 m!7159738))

(assert (=> b!6353130 m!7159738))

(assert (=> b!6353130 m!7159740))

(assert (=> b!6353130 m!7159742))

(assert (=> b!6353130 m!7159738))

(declare-fun m!7159812 () Bool)

(assert (=> b!6353130 m!7159812))

(declare-fun m!7159814 () Bool)

(assert (=> b!6353134 m!7159814))

(assert (=> b!6352292 d!1993379))

(declare-fun d!1993381 () Bool)

(assert (=> d!1993381 (= (matchR!8442 lt!2365008 s!2326) (matchRSpec!3360 lt!2365008 s!2326))))

(declare-fun lt!2365170 () Unit!158367)

(assert (=> d!1993381 (= lt!2365170 (choose!47149 lt!2365008 s!2326))))

(assert (=> d!1993381 (validRegex!7995 lt!2365008)))

(assert (=> d!1993381 (= (mainMatchTheorem!3360 lt!2365008 s!2326) lt!2365170)))

(declare-fun bs!1591265 () Bool)

(assert (= bs!1591265 d!1993381))

(assert (=> bs!1591265 m!7159106))

(assert (=> bs!1591265 m!7159102))

(declare-fun m!7159816 () Bool)

(assert (=> bs!1591265 m!7159816))

(declare-fun m!7159818 () Bool)

(assert (=> bs!1591265 m!7159818))

(assert (=> b!6352292 d!1993381))

(declare-fun b!6353136 () Bool)

(declare-fun res!2614125 () Bool)

(declare-fun e!3858218 () Bool)

(assert (=> b!6353136 (=> (not res!2614125) (not e!3858218))))

(declare-fun call!541785 () Bool)

(assert (=> b!6353136 (= res!2614125 (not call!541785))))

(declare-fun b!6353137 () Bool)

(declare-fun res!2614121 () Bool)

(declare-fun e!3858220 () Bool)

(assert (=> b!6353137 (=> res!2614121 e!3858220)))

(assert (=> b!6353137 (= res!2614121 (not ((_ is ElementMatch!16259) lt!2365008)))))

(declare-fun e!3858217 () Bool)

(assert (=> b!6353137 (= e!3858217 e!3858220)))

(declare-fun b!6353138 () Bool)

(declare-fun e!3858221 () Bool)

(assert (=> b!6353138 (= e!3858221 (nullable!6252 lt!2365008))))

(declare-fun b!6353139 () Bool)

(declare-fun e!3858222 () Bool)

(declare-fun lt!2365171 () Bool)

(assert (=> b!6353139 (= e!3858222 (= lt!2365171 call!541785))))

(declare-fun b!6353140 () Bool)

(assert (=> b!6353140 (= e!3858217 (not lt!2365171))))

(declare-fun b!6353141 () Bool)

(declare-fun e!3858219 () Bool)

(assert (=> b!6353141 (= e!3858219 (not (= (head!13010 s!2326) (c!1155726 lt!2365008))))))

(declare-fun d!1993383 () Bool)

(assert (=> d!1993383 e!3858222))

(declare-fun c!1155979 () Bool)

(assert (=> d!1993383 (= c!1155979 ((_ is EmptyExpr!16259) lt!2365008))))

(assert (=> d!1993383 (= lt!2365171 e!3858221)))

(declare-fun c!1155978 () Bool)

(assert (=> d!1993383 (= c!1155978 (isEmpty!37049 s!2326))))

(assert (=> d!1993383 (validRegex!7995 lt!2365008)))

(assert (=> d!1993383 (= (matchR!8442 lt!2365008 s!2326) lt!2365171)))

(declare-fun b!6353142 () Bool)

(declare-fun res!2614123 () Bool)

(assert (=> b!6353142 (=> res!2614123 e!3858219)))

(assert (=> b!6353142 (= res!2614123 (not (isEmpty!37049 (tail!12095 s!2326))))))

(declare-fun bm!541780 () Bool)

(assert (=> bm!541780 (= call!541785 (isEmpty!37049 s!2326))))

(declare-fun b!6353143 () Bool)

(declare-fun res!2614126 () Bool)

(assert (=> b!6353143 (=> (not res!2614126) (not e!3858218))))

(assert (=> b!6353143 (= res!2614126 (isEmpty!37049 (tail!12095 s!2326)))))

(declare-fun b!6353144 () Bool)

(declare-fun e!3858223 () Bool)

(assert (=> b!6353144 (= e!3858223 e!3858219)))

(declare-fun res!2614124 () Bool)

(assert (=> b!6353144 (=> res!2614124 e!3858219)))

(assert (=> b!6353144 (= res!2614124 call!541785)))

(declare-fun b!6353145 () Bool)

(assert (=> b!6353145 (= e!3858222 e!3858217)))

(declare-fun c!1155977 () Bool)

(assert (=> b!6353145 (= c!1155977 ((_ is EmptyLang!16259) lt!2365008))))

(declare-fun b!6353146 () Bool)

(assert (=> b!6353146 (= e!3858218 (= (head!13010 s!2326) (c!1155726 lt!2365008)))))

(declare-fun b!6353147 () Bool)

(assert (=> b!6353147 (= e!3858221 (matchR!8442 (derivativeStep!4964 lt!2365008 (head!13010 s!2326)) (tail!12095 s!2326)))))

(declare-fun b!6353148 () Bool)

(declare-fun res!2614120 () Bool)

(assert (=> b!6353148 (=> res!2614120 e!3858220)))

(assert (=> b!6353148 (= res!2614120 e!3858218)))

(declare-fun res!2614122 () Bool)

(assert (=> b!6353148 (=> (not res!2614122) (not e!3858218))))

(assert (=> b!6353148 (= res!2614122 lt!2365171)))

(declare-fun b!6353149 () Bool)

(assert (=> b!6353149 (= e!3858220 e!3858223)))

(declare-fun res!2614119 () Bool)

(assert (=> b!6353149 (=> (not res!2614119) (not e!3858223))))

(assert (=> b!6353149 (= res!2614119 (not lt!2365171))))

(assert (= (and d!1993383 c!1155978) b!6353138))

(assert (= (and d!1993383 (not c!1155978)) b!6353147))

(assert (= (and d!1993383 c!1155979) b!6353139))

(assert (= (and d!1993383 (not c!1155979)) b!6353145))

(assert (= (and b!6353145 c!1155977) b!6353140))

(assert (= (and b!6353145 (not c!1155977)) b!6353137))

(assert (= (and b!6353137 (not res!2614121)) b!6353148))

(assert (= (and b!6353148 res!2614122) b!6353136))

(assert (= (and b!6353136 res!2614125) b!6353143))

(assert (= (and b!6353143 res!2614126) b!6353146))

(assert (= (and b!6353148 (not res!2614120)) b!6353149))

(assert (= (and b!6353149 res!2614119) b!6353144))

(assert (= (and b!6353144 (not res!2614124)) b!6353142))

(assert (= (and b!6353142 (not res!2614123)) b!6353141))

(assert (= (or b!6353139 b!6353136 b!6353144) bm!541780))

(assert (=> b!6353146 m!7159418))

(assert (=> b!6353142 m!7159424))

(assert (=> b!6353142 m!7159424))

(assert (=> b!6353142 m!7159430))

(assert (=> d!1993383 m!7159382))

(assert (=> d!1993383 m!7159818))

(declare-fun m!7159820 () Bool)

(assert (=> b!6353138 m!7159820))

(assert (=> b!6353141 m!7159418))

(assert (=> b!6353147 m!7159418))

(assert (=> b!6353147 m!7159418))

(declare-fun m!7159822 () Bool)

(assert (=> b!6353147 m!7159822))

(assert (=> b!6353147 m!7159424))

(assert (=> b!6353147 m!7159822))

(assert (=> b!6353147 m!7159424))

(declare-fun m!7159824 () Bool)

(assert (=> b!6353147 m!7159824))

(assert (=> b!6353143 m!7159424))

(assert (=> b!6353143 m!7159424))

(assert (=> b!6353143 m!7159430))

(assert (=> bm!541780 m!7159382))

(assert (=> b!6352292 d!1993383))

(declare-fun bs!1591266 () Bool)

(declare-fun b!6353159 () Bool)

(assert (= bs!1591266 (and b!6353159 b!6352618)))

(declare-fun lambda!349586 () Int)

(assert (=> bs!1591266 (not (= lambda!349586 lambda!349543))))

(declare-fun bs!1591267 () Bool)

(assert (= bs!1591267 (and b!6353159 d!1993367)))

(assert (=> bs!1591267 (not (= lambda!349586 lambda!349585))))

(declare-fun bs!1591268 () Bool)

(assert (= bs!1591268 (and b!6353159 b!6352292)))

(assert (=> bs!1591268 (not (= lambda!349586 lambda!349507))))

(declare-fun bs!1591269 () Bool)

(assert (= bs!1591269 (and b!6353159 b!6353121)))

(assert (=> bs!1591269 (= (and (= (reg!16588 lt!2365008) (reg!16588 lt!2365033)) (= lt!2365008 lt!2365033)) (= lambda!349586 lambda!349581))))

(assert (=> bs!1591268 (not (= lambda!349586 lambda!349509))))

(declare-fun bs!1591270 () Bool)

(assert (= bs!1591270 (and b!6353159 b!6353120)))

(assert (=> bs!1591270 (not (= lambda!349586 lambda!349582))))

(declare-fun bs!1591271 () Bool)

(assert (= bs!1591271 (and b!6353159 b!6352310)))

(assert (=> bs!1591271 (not (= lambda!349586 lambda!349504))))

(declare-fun bs!1591272 () Bool)

(assert (= bs!1591272 (and b!6353159 b!6352619)))

(assert (=> bs!1591272 (= (and (= (reg!16588 lt!2365008) (reg!16588 r!7292)) (= lt!2365008 r!7292)) (= lambda!349586 lambda!349541))))

(assert (=> bs!1591268 (not (= lambda!349586 lambda!349508))))

(assert (=> bs!1591271 (not (= lambda!349586 lambda!349505))))

(assert (=> b!6353159 true))

(assert (=> b!6353159 true))

(declare-fun bs!1591273 () Bool)

(declare-fun b!6353158 () Bool)

(assert (= bs!1591273 (and b!6353158 b!6352618)))

(declare-fun lambda!349587 () Int)

(assert (=> bs!1591273 (= (and (= (regOne!33030 lt!2365008) (regOne!33030 r!7292)) (= (regTwo!33030 lt!2365008) (regTwo!33030 r!7292))) (= lambda!349587 lambda!349543))))

(declare-fun bs!1591274 () Bool)

(assert (= bs!1591274 (and b!6353158 d!1993367)))

(assert (=> bs!1591274 (not (= lambda!349587 lambda!349585))))

(declare-fun bs!1591275 () Bool)

(assert (= bs!1591275 (and b!6353158 b!6352292)))

(assert (=> bs!1591275 (not (= lambda!349587 lambda!349507))))

(declare-fun bs!1591276 () Bool)

(assert (= bs!1591276 (and b!6353158 b!6353121)))

(assert (=> bs!1591276 (not (= lambda!349587 lambda!349581))))

(assert (=> bs!1591275 (not (= lambda!349587 lambda!349509))))

(declare-fun bs!1591277 () Bool)

(assert (= bs!1591277 (and b!6353158 b!6353120)))

(assert (=> bs!1591277 (= (and (= (regOne!33030 lt!2365008) (regOne!33030 lt!2365033)) (= (regTwo!33030 lt!2365008) (regTwo!33030 lt!2365033))) (= lambda!349587 lambda!349582))))

(declare-fun bs!1591278 () Bool)

(assert (= bs!1591278 (and b!6353158 b!6352310)))

(assert (=> bs!1591278 (not (= lambda!349587 lambda!349504))))

(declare-fun bs!1591279 () Bool)

(assert (= bs!1591279 (and b!6353158 b!6352619)))

(assert (=> bs!1591279 (not (= lambda!349587 lambda!349541))))

(assert (=> bs!1591275 (= (and (= (regOne!33030 lt!2365008) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 lt!2365008) lt!2365008)) (= lambda!349587 lambda!349508))))

(declare-fun bs!1591280 () Bool)

(assert (= bs!1591280 (and b!6353158 b!6353159)))

(assert (=> bs!1591280 (not (= lambda!349587 lambda!349586))))

(assert (=> bs!1591278 (= (and (= (regOne!33030 lt!2365008) (regOne!33030 r!7292)) (= (regTwo!33030 lt!2365008) (regTwo!33030 r!7292))) (= lambda!349587 lambda!349505))))

(assert (=> b!6353158 true))

(assert (=> b!6353158 true))

(declare-fun c!1155982 () Bool)

(declare-fun bm!541781 () Bool)

(declare-fun call!541787 () Bool)

(assert (=> bm!541781 (= call!541787 (Exists!3329 (ite c!1155982 lambda!349586 lambda!349587)))))

(declare-fun d!1993385 () Bool)

(declare-fun c!1155983 () Bool)

(assert (=> d!1993385 (= c!1155983 ((_ is EmptyExpr!16259) lt!2365008))))

(declare-fun e!3858229 () Bool)

(assert (=> d!1993385 (= (matchRSpec!3360 lt!2365008 s!2326) e!3858229)))

(declare-fun b!6353150 () Bool)

(declare-fun res!2614127 () Bool)

(declare-fun e!3858225 () Bool)

(assert (=> b!6353150 (=> res!2614127 e!3858225)))

(declare-fun call!541786 () Bool)

(assert (=> b!6353150 (= res!2614127 call!541786)))

(declare-fun e!3858230 () Bool)

(assert (=> b!6353150 (= e!3858230 e!3858225)))

(declare-fun b!6353151 () Bool)

(declare-fun c!1155981 () Bool)

(assert (=> b!6353151 (= c!1155981 ((_ is Union!16259) lt!2365008))))

(declare-fun e!3858228 () Bool)

(declare-fun e!3858224 () Bool)

(assert (=> b!6353151 (= e!3858228 e!3858224)))

(declare-fun b!6353152 () Bool)

(assert (=> b!6353152 (= e!3858224 e!3858230)))

(assert (=> b!6353152 (= c!1155982 ((_ is Star!16259) lt!2365008))))

(declare-fun b!6353153 () Bool)

(declare-fun e!3858226 () Bool)

(assert (=> b!6353153 (= e!3858229 e!3858226)))

(declare-fun res!2614128 () Bool)

(assert (=> b!6353153 (= res!2614128 (not ((_ is EmptyLang!16259) lt!2365008)))))

(assert (=> b!6353153 (=> (not res!2614128) (not e!3858226))))

(declare-fun b!6353154 () Bool)

(declare-fun e!3858227 () Bool)

(assert (=> b!6353154 (= e!3858224 e!3858227)))

(declare-fun res!2614129 () Bool)

(assert (=> b!6353154 (= res!2614129 (matchRSpec!3360 (regOne!33031 lt!2365008) s!2326))))

(assert (=> b!6353154 (=> res!2614129 e!3858227)))

(declare-fun b!6353155 () Bool)

(assert (=> b!6353155 (= e!3858229 call!541786)))

(declare-fun b!6353156 () Bool)

(assert (=> b!6353156 (= e!3858228 (= s!2326 (Cons!64953 (c!1155726 lt!2365008) Nil!64953)))))

(declare-fun bm!541782 () Bool)

(assert (=> bm!541782 (= call!541786 (isEmpty!37049 s!2326))))

(declare-fun b!6353157 () Bool)

(assert (=> b!6353157 (= e!3858227 (matchRSpec!3360 (regTwo!33031 lt!2365008) s!2326))))

(assert (=> b!6353158 (= e!3858230 call!541787)))

(assert (=> b!6353159 (= e!3858225 call!541787)))

(declare-fun b!6353160 () Bool)

(declare-fun c!1155980 () Bool)

(assert (=> b!6353160 (= c!1155980 ((_ is ElementMatch!16259) lt!2365008))))

(assert (=> b!6353160 (= e!3858226 e!3858228)))

(assert (= (and d!1993385 c!1155983) b!6353155))

(assert (= (and d!1993385 (not c!1155983)) b!6353153))

(assert (= (and b!6353153 res!2614128) b!6353160))

(assert (= (and b!6353160 c!1155980) b!6353156))

(assert (= (and b!6353160 (not c!1155980)) b!6353151))

(assert (= (and b!6353151 c!1155981) b!6353154))

(assert (= (and b!6353151 (not c!1155981)) b!6353152))

(assert (= (and b!6353154 (not res!2614129)) b!6353157))

(assert (= (and b!6353152 c!1155982) b!6353150))

(assert (= (and b!6353152 (not c!1155982)) b!6353158))

(assert (= (and b!6353150 (not res!2614127)) b!6353159))

(assert (= (or b!6353159 b!6353158) bm!541781))

(assert (= (or b!6353155 b!6353150) bm!541782))

(declare-fun m!7159826 () Bool)

(assert (=> bm!541781 m!7159826))

(declare-fun m!7159828 () Bool)

(assert (=> b!6353154 m!7159828))

(assert (=> bm!541782 m!7159382))

(declare-fun m!7159830 () Bool)

(assert (=> b!6353157 m!7159830))

(assert (=> b!6352292 d!1993385))

(declare-fun d!1993387 () Bool)

(assert (=> d!1993387 (= (Exists!3329 lambda!349508) (choose!47156 lambda!349508))))

(declare-fun bs!1591281 () Bool)

(assert (= bs!1591281 d!1993387))

(declare-fun m!7159832 () Bool)

(assert (=> bs!1591281 m!7159832))

(assert (=> b!6352292 d!1993387))

(declare-fun bm!541783 () Bool)

(declare-fun call!541788 () Bool)

(declare-fun call!541789 () Bool)

(assert (=> bm!541783 (= call!541788 call!541789)))

(declare-fun b!6353161 () Bool)

(declare-fun res!2614133 () Bool)

(declare-fun e!3858235 () Bool)

(assert (=> b!6353161 (=> res!2614133 e!3858235)))

(assert (=> b!6353161 (= res!2614133 (not ((_ is Concat!25104) (regTwo!33030 (regOne!33030 r!7292)))))))

(declare-fun e!3858234 () Bool)

(assert (=> b!6353161 (= e!3858234 e!3858235)))

(declare-fun b!6353162 () Bool)

(declare-fun e!3858236 () Bool)

(assert (=> b!6353162 (= e!3858236 e!3858234)))

(declare-fun c!1155985 () Bool)

(assert (=> b!6353162 (= c!1155985 ((_ is Union!16259) (regTwo!33030 (regOne!33030 r!7292))))))

(declare-fun bm!541784 () Bool)

(declare-fun call!541790 () Bool)

(assert (=> bm!541784 (= call!541790 (validRegex!7995 (ite c!1155985 (regOne!33031 (regTwo!33030 (regOne!33030 r!7292))) (regOne!33030 (regTwo!33030 (regOne!33030 r!7292))))))))

(declare-fun b!6353163 () Bool)

(declare-fun e!3858232 () Bool)

(assert (=> b!6353163 (= e!3858232 call!541788)))

(declare-fun b!6353164 () Bool)

(declare-fun e!3858237 () Bool)

(assert (=> b!6353164 (= e!3858237 call!541789)))

(declare-fun c!1155984 () Bool)

(declare-fun bm!541785 () Bool)

(assert (=> bm!541785 (= call!541789 (validRegex!7995 (ite c!1155984 (reg!16588 (regTwo!33030 (regOne!33030 r!7292))) (ite c!1155985 (regTwo!33031 (regTwo!33030 (regOne!33030 r!7292))) (regTwo!33030 (regTwo!33030 (regOne!33030 r!7292)))))))))

(declare-fun b!6353165 () Bool)

(assert (=> b!6353165 (= e!3858236 e!3858237)))

(declare-fun res!2614131 () Bool)

(assert (=> b!6353165 (= res!2614131 (not (nullable!6252 (reg!16588 (regTwo!33030 (regOne!33030 r!7292))))))))

(assert (=> b!6353165 (=> (not res!2614131) (not e!3858237))))

(declare-fun d!1993389 () Bool)

(declare-fun res!2614134 () Bool)

(declare-fun e!3858233 () Bool)

(assert (=> d!1993389 (=> res!2614134 e!3858233)))

(assert (=> d!1993389 (= res!2614134 ((_ is ElementMatch!16259) (regTwo!33030 (regOne!33030 r!7292))))))

(assert (=> d!1993389 (= (validRegex!7995 (regTwo!33030 (regOne!33030 r!7292))) e!3858233)))

(declare-fun b!6353166 () Bool)

(assert (=> b!6353166 (= e!3858235 e!3858232)))

(declare-fun res!2614130 () Bool)

(assert (=> b!6353166 (=> (not res!2614130) (not e!3858232))))

(assert (=> b!6353166 (= res!2614130 call!541790)))

(declare-fun b!6353167 () Bool)

(declare-fun res!2614132 () Bool)

(declare-fun e!3858231 () Bool)

(assert (=> b!6353167 (=> (not res!2614132) (not e!3858231))))

(assert (=> b!6353167 (= res!2614132 call!541790)))

(assert (=> b!6353167 (= e!3858234 e!3858231)))

(declare-fun b!6353168 () Bool)

(assert (=> b!6353168 (= e!3858233 e!3858236)))

(assert (=> b!6353168 (= c!1155984 ((_ is Star!16259) (regTwo!33030 (regOne!33030 r!7292))))))

(declare-fun b!6353169 () Bool)

(assert (=> b!6353169 (= e!3858231 call!541788)))

(assert (= (and d!1993389 (not res!2614134)) b!6353168))

(assert (= (and b!6353168 c!1155984) b!6353165))

(assert (= (and b!6353168 (not c!1155984)) b!6353162))

(assert (= (and b!6353165 res!2614131) b!6353164))

(assert (= (and b!6353162 c!1155985) b!6353167))

(assert (= (and b!6353162 (not c!1155985)) b!6353161))

(assert (= (and b!6353167 res!2614132) b!6353169))

(assert (= (and b!6353161 (not res!2614133)) b!6353166))

(assert (= (and b!6353166 res!2614130) b!6353163))

(assert (= (or b!6353169 b!6353163) bm!541783))

(assert (= (or b!6353167 b!6353166) bm!541784))

(assert (= (or b!6353164 bm!541783) bm!541785))

(declare-fun m!7159834 () Bool)

(assert (=> bm!541784 m!7159834))

(declare-fun m!7159836 () Bool)

(assert (=> bm!541785 m!7159836))

(declare-fun m!7159838 () Bool)

(assert (=> b!6353165 m!7159838))

(assert (=> b!6352292 d!1993389))

(declare-fun bs!1591282 () Bool)

(declare-fun d!1993391 () Bool)

(assert (= bs!1591282 (and d!1993391 b!6353158)))

(declare-fun lambda!349588 () Int)

(assert (=> bs!1591282 (not (= lambda!349588 lambda!349587))))

(declare-fun bs!1591283 () Bool)

(assert (= bs!1591283 (and d!1993391 b!6352618)))

(assert (=> bs!1591283 (not (= lambda!349588 lambda!349543))))

(declare-fun bs!1591284 () Bool)

(assert (= bs!1591284 (and d!1993391 d!1993367)))

(assert (=> bs!1591284 (= (and (= (regTwo!33030 (regOne!33030 r!7292)) (regOne!33030 (regOne!33030 r!7292))) (= lt!2365025 lt!2365008)) (= lambda!349588 lambda!349585))))

(declare-fun bs!1591285 () Bool)

(assert (= bs!1591285 (and d!1993391 b!6352292)))

(assert (=> bs!1591285 (= (and (= (regTwo!33030 (regOne!33030 r!7292)) (regOne!33030 (regOne!33030 r!7292))) (= lt!2365025 lt!2365008)) (= lambda!349588 lambda!349507))))

(declare-fun bs!1591286 () Bool)

(assert (= bs!1591286 (and d!1993391 b!6353121)))

(assert (=> bs!1591286 (not (= lambda!349588 lambda!349581))))

(assert (=> bs!1591285 (= lambda!349588 lambda!349509)))

(declare-fun bs!1591287 () Bool)

(assert (= bs!1591287 (and d!1993391 b!6353120)))

(assert (=> bs!1591287 (not (= lambda!349588 lambda!349582))))

(declare-fun bs!1591288 () Bool)

(assert (= bs!1591288 (and d!1993391 b!6352310)))

(assert (=> bs!1591288 (= (and (= (regTwo!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365025 (regTwo!33030 r!7292))) (= lambda!349588 lambda!349504))))

(declare-fun bs!1591289 () Bool)

(assert (= bs!1591289 (and d!1993391 b!6352619)))

(assert (=> bs!1591289 (not (= lambda!349588 lambda!349541))))

(assert (=> bs!1591285 (not (= lambda!349588 lambda!349508))))

(declare-fun bs!1591290 () Bool)

(assert (= bs!1591290 (and d!1993391 b!6353159)))

(assert (=> bs!1591290 (not (= lambda!349588 lambda!349586))))

(assert (=> bs!1591288 (not (= lambda!349588 lambda!349505))))

(assert (=> d!1993391 true))

(assert (=> d!1993391 true))

(assert (=> d!1993391 true))

(assert (=> d!1993391 (= (isDefined!12853 (findConcatSeparation!2564 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 Nil!64953 s!2326 s!2326)) (Exists!3329 lambda!349588))))

(declare-fun lt!2365172 () Unit!158367)

(assert (=> d!1993391 (= lt!2365172 (choose!47155 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 s!2326))))

(assert (=> d!1993391 (validRegex!7995 (regTwo!33030 (regOne!33030 r!7292)))))

(assert (=> d!1993391 (= (lemmaFindConcatSeparationEquivalentToExists!2328 (regTwo!33030 (regOne!33030 r!7292)) lt!2365025 s!2326) lt!2365172)))

(declare-fun bs!1591291 () Bool)

(assert (= bs!1591291 d!1993391))

(assert (=> bs!1591291 m!7159098))

(declare-fun m!7159840 () Bool)

(assert (=> bs!1591291 m!7159840))

(declare-fun m!7159842 () Bool)

(assert (=> bs!1591291 m!7159842))

(assert (=> bs!1591291 m!7159122))

(assert (=> bs!1591291 m!7159098))

(assert (=> bs!1591291 m!7159100))

(assert (=> b!6352292 d!1993391))

(declare-fun bs!1591292 () Bool)

(declare-fun d!1993393 () Bool)

(assert (= bs!1591292 (and d!1993393 d!1993293)))

(declare-fun lambda!349589 () Int)

(assert (=> bs!1591292 (= lambda!349589 lambda!349571)))

(declare-fun bs!1591293 () Bool)

(assert (= bs!1591293 (and d!1993393 d!1993303)))

(assert (=> bs!1591293 (= lambda!349589 lambda!349572)))

(declare-fun bs!1591294 () Bool)

(assert (= bs!1591294 (and d!1993393 d!1993353)))

(assert (=> bs!1591294 (= lambda!349589 lambda!349579)))

(declare-fun bs!1591295 () Bool)

(assert (= bs!1591295 (and d!1993393 d!1993359)))

(assert (=> bs!1591295 (= lambda!349589 lambda!349580)))

(declare-fun b!6353170 () Bool)

(declare-fun e!3858241 () Bool)

(assert (=> b!6353170 (= e!3858241 (isEmpty!37046 (t!378666 lt!2365031)))))

(declare-fun b!6353171 () Bool)

(declare-fun e!3858240 () Regex!16259)

(assert (=> b!6353171 (= e!3858240 (h!71400 lt!2365031))))

(declare-fun b!6353172 () Bool)

(declare-fun e!3858242 () Regex!16259)

(assert (=> b!6353172 (= e!3858240 e!3858242)))

(declare-fun c!1155988 () Bool)

(assert (=> b!6353172 (= c!1155988 ((_ is Cons!64952) lt!2365031))))

(declare-fun b!6353173 () Bool)

(declare-fun e!3858238 () Bool)

(declare-fun e!3858239 () Bool)

(assert (=> b!6353173 (= e!3858238 e!3858239)))

(declare-fun c!1155989 () Bool)

(assert (=> b!6353173 (= c!1155989 (isEmpty!37046 (tail!12096 lt!2365031)))))

(declare-fun b!6353174 () Bool)

(declare-fun lt!2365173 () Regex!16259)

(assert (=> b!6353174 (= e!3858238 (isEmptyExpr!1661 lt!2365173))))

(declare-fun b!6353175 () Bool)

(assert (=> b!6353175 (= e!3858239 (isConcat!1184 lt!2365173))))

(declare-fun b!6353176 () Bool)

(assert (=> b!6353176 (= e!3858242 (Concat!25104 (h!71400 lt!2365031) (generalisedConcat!1856 (t!378666 lt!2365031))))))

(declare-fun b!6353177 () Bool)

(assert (=> b!6353177 (= e!3858242 EmptyExpr!16259)))

(declare-fun e!3858243 () Bool)

(assert (=> d!1993393 e!3858243))

(declare-fun res!2614135 () Bool)

(assert (=> d!1993393 (=> (not res!2614135) (not e!3858243))))

(assert (=> d!1993393 (= res!2614135 (validRegex!7995 lt!2365173))))

(assert (=> d!1993393 (= lt!2365173 e!3858240)))

(declare-fun c!1155986 () Bool)

(assert (=> d!1993393 (= c!1155986 e!3858241)))

(declare-fun res!2614136 () Bool)

(assert (=> d!1993393 (=> (not res!2614136) (not e!3858241))))

(assert (=> d!1993393 (= res!2614136 ((_ is Cons!64952) lt!2365031))))

(assert (=> d!1993393 (forall!15429 lt!2365031 lambda!349589)))

(assert (=> d!1993393 (= (generalisedConcat!1856 lt!2365031) lt!2365173)))

(declare-fun b!6353178 () Bool)

(assert (=> b!6353178 (= e!3858239 (= lt!2365173 (head!13011 lt!2365031)))))

(declare-fun b!6353179 () Bool)

(assert (=> b!6353179 (= e!3858243 e!3858238)))

(declare-fun c!1155987 () Bool)

(assert (=> b!6353179 (= c!1155987 (isEmpty!37046 lt!2365031))))

(assert (= (and d!1993393 res!2614136) b!6353170))

(assert (= (and d!1993393 c!1155986) b!6353171))

(assert (= (and d!1993393 (not c!1155986)) b!6353172))

(assert (= (and b!6353172 c!1155988) b!6353176))

(assert (= (and b!6353172 (not c!1155988)) b!6353177))

(assert (= (and d!1993393 res!2614135) b!6353179))

(assert (= (and b!6353179 c!1155987) b!6353174))

(assert (= (and b!6353179 (not c!1155987)) b!6353173))

(assert (= (and b!6353173 c!1155989) b!6353178))

(assert (= (and b!6353173 (not c!1155989)) b!6353175))

(declare-fun m!7159844 () Bool)

(assert (=> b!6353175 m!7159844))

(declare-fun m!7159846 () Bool)

(assert (=> b!6353173 m!7159846))

(assert (=> b!6353173 m!7159846))

(declare-fun m!7159848 () Bool)

(assert (=> b!6353173 m!7159848))

(declare-fun m!7159850 () Bool)

(assert (=> b!6353179 m!7159850))

(declare-fun m!7159852 () Bool)

(assert (=> b!6353176 m!7159852))

(declare-fun m!7159854 () Bool)

(assert (=> b!6353174 m!7159854))

(declare-fun m!7159856 () Bool)

(assert (=> d!1993393 m!7159856))

(declare-fun m!7159858 () Bool)

(assert (=> d!1993393 m!7159858))

(declare-fun m!7159860 () Bool)

(assert (=> b!6353178 m!7159860))

(declare-fun m!7159862 () Bool)

(assert (=> b!6353170 m!7159862))

(assert (=> b!6352292 d!1993393))

(declare-fun bs!1591296 () Bool)

(declare-fun d!1993395 () Bool)

(assert (= bs!1591296 (and d!1993395 d!1993391)))

(declare-fun lambda!349594 () Int)

(assert (=> bs!1591296 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regTwo!33030 (regOne!33030 r!7292))) (= lt!2365008 lt!2365025)) (= lambda!349594 lambda!349588))))

(declare-fun bs!1591297 () Bool)

(assert (= bs!1591297 (and d!1993395 b!6353158)))

(assert (=> bs!1591297 (not (= lambda!349594 lambda!349587))))

(declare-fun bs!1591298 () Bool)

(assert (= bs!1591298 (and d!1993395 b!6352618)))

(assert (=> bs!1591298 (not (= lambda!349594 lambda!349543))))

(declare-fun bs!1591299 () Bool)

(assert (= bs!1591299 (and d!1993395 d!1993367)))

(assert (=> bs!1591299 (= lambda!349594 lambda!349585)))

(declare-fun bs!1591300 () Bool)

(assert (= bs!1591300 (and d!1993395 b!6352292)))

(assert (=> bs!1591300 (= lambda!349594 lambda!349507)))

(declare-fun bs!1591301 () Bool)

(assert (= bs!1591301 (and d!1993395 b!6353121)))

(assert (=> bs!1591301 (not (= lambda!349594 lambda!349581))))

(assert (=> bs!1591300 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regTwo!33030 (regOne!33030 r!7292))) (= lt!2365008 lt!2365025)) (= lambda!349594 lambda!349509))))

(declare-fun bs!1591302 () Bool)

(assert (= bs!1591302 (and d!1993395 b!6353120)))

(assert (=> bs!1591302 (not (= lambda!349594 lambda!349582))))

(declare-fun bs!1591303 () Bool)

(assert (= bs!1591303 (and d!1993395 b!6352310)))

(assert (=> bs!1591303 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365008 (regTwo!33030 r!7292))) (= lambda!349594 lambda!349504))))

(declare-fun bs!1591304 () Bool)

(assert (= bs!1591304 (and d!1993395 b!6352619)))

(assert (=> bs!1591304 (not (= lambda!349594 lambda!349541))))

(assert (=> bs!1591300 (not (= lambda!349594 lambda!349508))))

(declare-fun bs!1591305 () Bool)

(assert (= bs!1591305 (and d!1993395 b!6353159)))

(assert (=> bs!1591305 (not (= lambda!349594 lambda!349586))))

(assert (=> bs!1591303 (not (= lambda!349594 lambda!349505))))

(assert (=> d!1993395 true))

(assert (=> d!1993395 true))

(assert (=> d!1993395 true))

(declare-fun lambda!349595 () Int)

(assert (=> bs!1591296 (not (= lambda!349595 lambda!349588))))

(assert (=> bs!1591297 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 lt!2365008)) (= lt!2365008 (regTwo!33030 lt!2365008))) (= lambda!349595 lambda!349587))))

(assert (=> bs!1591298 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365008 (regTwo!33030 r!7292))) (= lambda!349595 lambda!349543))))

(assert (=> bs!1591299 (not (= lambda!349595 lambda!349585))))

(declare-fun bs!1591306 () Bool)

(assert (= bs!1591306 d!1993395))

(assert (=> bs!1591306 (not (= lambda!349595 lambda!349594))))

(assert (=> bs!1591300 (not (= lambda!349595 lambda!349507))))

(assert (=> bs!1591301 (not (= lambda!349595 lambda!349581))))

(assert (=> bs!1591300 (not (= lambda!349595 lambda!349509))))

(assert (=> bs!1591302 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 lt!2365033)) (= lt!2365008 (regTwo!33030 lt!2365033))) (= lambda!349595 lambda!349582))))

(assert (=> bs!1591303 (not (= lambda!349595 lambda!349504))))

(assert (=> bs!1591304 (not (= lambda!349595 lambda!349541))))

(assert (=> bs!1591300 (= lambda!349595 lambda!349508)))

(assert (=> bs!1591305 (not (= lambda!349595 lambda!349586))))

(assert (=> bs!1591303 (= (and (= (regOne!33030 (regOne!33030 r!7292)) (regOne!33030 r!7292)) (= lt!2365008 (regTwo!33030 r!7292))) (= lambda!349595 lambda!349505))))

(assert (=> d!1993395 true))

(assert (=> d!1993395 true))

(assert (=> d!1993395 true))

(assert (=> d!1993395 (= (Exists!3329 lambda!349594) (Exists!3329 lambda!349595))))

(declare-fun lt!2365176 () Unit!158367)

(declare-fun choose!47158 (Regex!16259 Regex!16259 List!65077) Unit!158367)

(assert (=> d!1993395 (= lt!2365176 (choose!47158 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 s!2326))))

(assert (=> d!1993395 (validRegex!7995 (regOne!33030 (regOne!33030 r!7292)))))

(assert (=> d!1993395 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1866 (regOne!33030 (regOne!33030 r!7292)) lt!2365008 s!2326) lt!2365176)))

(declare-fun m!7159864 () Bool)

(assert (=> bs!1591306 m!7159864))

(declare-fun m!7159866 () Bool)

(assert (=> bs!1591306 m!7159866))

(declare-fun m!7159868 () Bool)

(assert (=> bs!1591306 m!7159868))

(assert (=> bs!1591306 m!7159728))

(assert (=> b!6352292 d!1993395))

(declare-fun d!1993397 () Bool)

(assert (=> d!1993397 (= (isEmpty!37046 (t!378666 (exprs!6143 (h!71402 zl!343)))) ((_ is Nil!64952) (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(assert (=> b!6352313 d!1993397))

(declare-fun bm!541786 () Bool)

(declare-fun call!541793 () List!65076)

(declare-fun call!541792 () List!65076)

(assert (=> bm!541786 (= call!541793 call!541792)))

(declare-fun b!6353188 () Bool)

(declare-fun e!3858248 () (InoxSet Context!11286))

(declare-fun e!3858250 () (InoxSet Context!11286))

(assert (=> b!6353188 (= e!3858248 e!3858250)))

(declare-fun c!1155991 () Bool)

(assert (=> b!6353188 (= c!1155991 ((_ is Union!16259) (regOne!33030 (regOne!33030 r!7292))))))

(declare-fun b!6353189 () Bool)

(declare-fun e!3858253 () (InoxSet Context!11286))

(declare-fun e!3858252 () (InoxSet Context!11286))

(assert (=> b!6353189 (= e!3858253 e!3858252)))

(declare-fun c!1155993 () Bool)

(assert (=> b!6353189 (= c!1155993 ((_ is Concat!25104) (regOne!33030 (regOne!33030 r!7292))))))

(declare-fun b!6353190 () Bool)

(declare-fun call!541795 () (InoxSet Context!11286))

(declare-fun call!541794 () (InoxSet Context!11286))

(assert (=> b!6353190 (= e!3858250 ((_ map or) call!541795 call!541794))))

(declare-fun bm!541787 () Bool)

(declare-fun c!1155994 () Bool)

(assert (=> bm!541787 (= call!541795 (derivationStepZipperDown!1507 (ite c!1155991 (regOne!33031 (regOne!33030 (regOne!33030 r!7292))) (ite c!1155994 (regTwo!33030 (regOne!33030 (regOne!33030 r!7292))) (ite c!1155993 (regOne!33030 (regOne!33030 (regOne!33030 r!7292))) (reg!16588 (regOne!33030 (regOne!33030 r!7292)))))) (ite (or c!1155991 c!1155994) (Context!11287 lt!2365031) (Context!11287 call!541793)) (h!71401 s!2326)))))

(declare-fun b!6353191 () Bool)

(declare-fun c!1155992 () Bool)

(assert (=> b!6353191 (= c!1155992 ((_ is Star!16259) (regOne!33030 (regOne!33030 r!7292))))))

(declare-fun e!3858251 () (InoxSet Context!11286))

(assert (=> b!6353191 (= e!3858252 e!3858251)))

(declare-fun d!1993399 () Bool)

(declare-fun c!1155990 () Bool)

(assert (=> d!1993399 (= c!1155990 (and ((_ is ElementMatch!16259) (regOne!33030 (regOne!33030 r!7292))) (= (c!1155726 (regOne!33030 (regOne!33030 r!7292))) (h!71401 s!2326))))))

(assert (=> d!1993399 (= (derivationStepZipperDown!1507 (regOne!33030 (regOne!33030 r!7292)) (Context!11287 lt!2365031) (h!71401 s!2326)) e!3858248)))

(declare-fun b!6353192 () Bool)

(declare-fun call!541791 () (InoxSet Context!11286))

(assert (=> b!6353192 (= e!3858253 ((_ map or) call!541794 call!541791))))

(declare-fun b!6353193 () Bool)

(assert (=> b!6353193 (= e!3858251 ((as const (Array Context!11286 Bool)) false))))

(declare-fun bm!541788 () Bool)

(assert (=> bm!541788 (= call!541794 (derivationStepZipperDown!1507 (ite c!1155991 (regTwo!33031 (regOne!33030 (regOne!33030 r!7292))) (regOne!33030 (regOne!33030 (regOne!33030 r!7292)))) (ite c!1155991 (Context!11287 lt!2365031) (Context!11287 call!541792)) (h!71401 s!2326)))))

(declare-fun bm!541789 () Bool)

(assert (=> bm!541789 (= call!541792 ($colon$colon!2119 (exprs!6143 (Context!11287 lt!2365031)) (ite (or c!1155994 c!1155993) (regTwo!33030 (regOne!33030 (regOne!33030 r!7292))) (regOne!33030 (regOne!33030 r!7292)))))))

(declare-fun b!6353194 () Bool)

(declare-fun call!541796 () (InoxSet Context!11286))

(assert (=> b!6353194 (= e!3858252 call!541796)))

(declare-fun bm!541790 () Bool)

(assert (=> bm!541790 (= call!541796 call!541791)))

(declare-fun b!6353195 () Bool)

(declare-fun e!3858249 () Bool)

(assert (=> b!6353195 (= e!3858249 (nullable!6252 (regOne!33030 (regOne!33030 (regOne!33030 r!7292)))))))

(declare-fun b!6353196 () Bool)

(assert (=> b!6353196 (= c!1155994 e!3858249)))

(declare-fun res!2614145 () Bool)

(assert (=> b!6353196 (=> (not res!2614145) (not e!3858249))))

(assert (=> b!6353196 (= res!2614145 ((_ is Concat!25104) (regOne!33030 (regOne!33030 r!7292))))))

(assert (=> b!6353196 (= e!3858250 e!3858253)))

(declare-fun b!6353197 () Bool)

(assert (=> b!6353197 (= e!3858248 (store ((as const (Array Context!11286 Bool)) false) (Context!11287 lt!2365031) true))))

(declare-fun b!6353198 () Bool)

(assert (=> b!6353198 (= e!3858251 call!541796)))

(declare-fun bm!541791 () Bool)

(assert (=> bm!541791 (= call!541791 call!541795)))

(assert (= (and d!1993399 c!1155990) b!6353197))

(assert (= (and d!1993399 (not c!1155990)) b!6353188))

(assert (= (and b!6353188 c!1155991) b!6353190))

(assert (= (and b!6353188 (not c!1155991)) b!6353196))

(assert (= (and b!6353196 res!2614145) b!6353195))

(assert (= (and b!6353196 c!1155994) b!6353192))

(assert (= (and b!6353196 (not c!1155994)) b!6353189))

(assert (= (and b!6353189 c!1155993) b!6353194))

(assert (= (and b!6353189 (not c!1155993)) b!6353191))

(assert (= (and b!6353191 c!1155992) b!6353198))

(assert (= (and b!6353191 (not c!1155992)) b!6353193))

(assert (= (or b!6353194 b!6353198) bm!541786))

(assert (= (or b!6353194 b!6353198) bm!541790))

(assert (= (or b!6353192 bm!541786) bm!541789))

(assert (= (or b!6353192 bm!541790) bm!541791))

(assert (= (or b!6353190 b!6353192) bm!541788))

(assert (= (or b!6353190 bm!541791) bm!541787))

(declare-fun m!7159870 () Bool)

(assert (=> b!6353197 m!7159870))

(declare-fun m!7159872 () Bool)

(assert (=> bm!541789 m!7159872))

(declare-fun m!7159874 () Bool)

(assert (=> b!6353195 m!7159874))

(declare-fun m!7159876 () Bool)

(assert (=> bm!541787 m!7159876))

(declare-fun m!7159878 () Bool)

(assert (=> bm!541788 m!7159878))

(assert (=> b!6352282 d!1993399))

(declare-fun d!1993401 () Bool)

(declare-fun lt!2365179 () Int)

(assert (=> d!1993401 (>= lt!2365179 0)))

(declare-fun e!3858256 () Int)

(assert (=> d!1993401 (= lt!2365179 e!3858256)))

(declare-fun c!1155998 () Bool)

(assert (=> d!1993401 (= c!1155998 ((_ is Cons!64952) (exprs!6143 lt!2365005)))))

(assert (=> d!1993401 (= (contextDepthTotal!368 lt!2365005) lt!2365179)))

(declare-fun b!6353203 () Bool)

(declare-fun regexDepthTotal!217 (Regex!16259) Int)

(assert (=> b!6353203 (= e!3858256 (+ (regexDepthTotal!217 (h!71400 (exprs!6143 lt!2365005))) (contextDepthTotal!368 (Context!11287 (t!378666 (exprs!6143 lt!2365005))))))))

(declare-fun b!6353204 () Bool)

(assert (=> b!6353204 (= e!3858256 1)))

(assert (= (and d!1993401 c!1155998) b!6353203))

(assert (= (and d!1993401 (not c!1155998)) b!6353204))

(declare-fun m!7159880 () Bool)

(assert (=> b!6353203 m!7159880))

(declare-fun m!7159882 () Bool)

(assert (=> b!6353203 m!7159882))

(assert (=> b!6352302 d!1993401))

(declare-fun d!1993403 () Bool)

(declare-fun lt!2365180 () Int)

(assert (=> d!1993403 (>= lt!2365180 0)))

(declare-fun e!3858257 () Int)

(assert (=> d!1993403 (= lt!2365180 e!3858257)))

(declare-fun c!1155999 () Bool)

(assert (=> d!1993403 (= c!1155999 ((_ is Cons!64952) (exprs!6143 (h!71402 zl!343))))))

(assert (=> d!1993403 (= (contextDepthTotal!368 (h!71402 zl!343)) lt!2365180)))

(declare-fun b!6353205 () Bool)

(assert (=> b!6353205 (= e!3858257 (+ (regexDepthTotal!217 (h!71400 (exprs!6143 (h!71402 zl!343)))) (contextDepthTotal!368 (Context!11287 (t!378666 (exprs!6143 (h!71402 zl!343)))))))))

(declare-fun b!6353206 () Bool)

(assert (=> b!6353206 (= e!3858257 1)))

(assert (= (and d!1993403 c!1155999) b!6353205))

(assert (= (and d!1993403 (not c!1155999)) b!6353206))

(declare-fun m!7159884 () Bool)

(assert (=> b!6353205 m!7159884))

(declare-fun m!7159886 () Bool)

(assert (=> b!6353205 m!7159886))

(assert (=> b!6352302 d!1993403))

(declare-fun b!6353213 () Bool)

(assert (=> b!6353213 true))

(declare-fun bs!1591307 () Bool)

(declare-fun b!6353215 () Bool)

(assert (= bs!1591307 (and b!6353215 b!6353213)))

(declare-fun lambda!349604 () Int)

(declare-fun lt!2365191 () Int)

(declare-fun lambda!349603 () Int)

(declare-fun lt!2365190 () Int)

(assert (=> bs!1591307 (= (= lt!2365191 lt!2365190) (= lambda!349604 lambda!349603))))

(assert (=> b!6353215 true))

(declare-fun d!1993405 () Bool)

(declare-fun e!3858262 () Bool)

(assert (=> d!1993405 e!3858262))

(declare-fun res!2614148 () Bool)

(assert (=> d!1993405 (=> (not res!2614148) (not e!3858262))))

(assert (=> d!1993405 (= res!2614148 (>= lt!2365191 0))))

(declare-fun e!3858263 () Int)

(assert (=> d!1993405 (= lt!2365191 e!3858263)))

(declare-fun c!1156008 () Bool)

(assert (=> d!1993405 (= c!1156008 ((_ is Cons!64954) lt!2365018))))

(assert (=> d!1993405 (= (zipperDepth!366 lt!2365018) lt!2365191)))

(assert (=> b!6353213 (= e!3858263 lt!2365190)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!255 (Context!11286) Int)

(assert (=> b!6353213 (= lt!2365190 (maxBigInt!0 (contextDepth!255 (h!71402 lt!2365018)) (zipperDepth!366 (t!378668 lt!2365018))))))

(declare-fun lambda!349602 () Int)

(declare-fun lt!2365192 () Unit!158367)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!239 (List!65078 Int Int Int) Unit!158367)

(assert (=> b!6353213 (= lt!2365192 (lemmaForallContextDepthBiggerThanTransitive!239 (t!378668 lt!2365018) lt!2365190 (zipperDepth!366 (t!378668 lt!2365018)) lambda!349602))))

(declare-fun forall!15431 (List!65078 Int) Bool)

(assert (=> b!6353213 (forall!15431 (t!378668 lt!2365018) lambda!349603)))

(declare-fun lt!2365189 () Unit!158367)

(assert (=> b!6353213 (= lt!2365189 lt!2365192)))

(declare-fun b!6353214 () Bool)

(assert (=> b!6353214 (= e!3858263 0)))

(assert (=> b!6353215 (= e!3858262 (forall!15431 lt!2365018 lambda!349604))))

(assert (= (and d!1993405 c!1156008) b!6353213))

(assert (= (and d!1993405 (not c!1156008)) b!6353214))

(assert (= (and d!1993405 res!2614148) b!6353215))

(declare-fun m!7159888 () Bool)

(assert (=> b!6353213 m!7159888))

(declare-fun m!7159890 () Bool)

(assert (=> b!6353213 m!7159890))

(assert (=> b!6353213 m!7159888))

(declare-fun m!7159892 () Bool)

(assert (=> b!6353213 m!7159892))

(declare-fun m!7159894 () Bool)

(assert (=> b!6353213 m!7159894))

(assert (=> b!6353213 m!7159888))

(declare-fun m!7159896 () Bool)

(assert (=> b!6353213 m!7159896))

(assert (=> b!6353213 m!7159890))

(declare-fun m!7159898 () Bool)

(assert (=> b!6353215 m!7159898))

(assert (=> b!6352291 d!1993405))

(declare-fun bs!1591308 () Bool)

(declare-fun b!6353218 () Bool)

(assert (= bs!1591308 (and b!6353218 b!6353213)))

(declare-fun lambda!349605 () Int)

(assert (=> bs!1591308 (= lambda!349605 lambda!349602)))

(declare-fun lambda!349606 () Int)

(declare-fun lt!2365194 () Int)

(assert (=> bs!1591308 (= (= lt!2365194 lt!2365190) (= lambda!349606 lambda!349603))))

(declare-fun bs!1591309 () Bool)

(assert (= bs!1591309 (and b!6353218 b!6353215)))

(assert (=> bs!1591309 (= (= lt!2365194 lt!2365191) (= lambda!349606 lambda!349604))))

(assert (=> b!6353218 true))

(declare-fun bs!1591310 () Bool)

(declare-fun b!6353220 () Bool)

(assert (= bs!1591310 (and b!6353220 b!6353213)))

(declare-fun lambda!349607 () Int)

(declare-fun lt!2365195 () Int)

(assert (=> bs!1591310 (= (= lt!2365195 lt!2365190) (= lambda!349607 lambda!349603))))

(declare-fun bs!1591311 () Bool)

(assert (= bs!1591311 (and b!6353220 b!6353215)))

(assert (=> bs!1591311 (= (= lt!2365195 lt!2365191) (= lambda!349607 lambda!349604))))

(declare-fun bs!1591312 () Bool)

(assert (= bs!1591312 (and b!6353220 b!6353218)))

(assert (=> bs!1591312 (= (= lt!2365195 lt!2365194) (= lambda!349607 lambda!349606))))

(assert (=> b!6353220 true))

(declare-fun d!1993407 () Bool)

(declare-fun e!3858264 () Bool)

(assert (=> d!1993407 e!3858264))

(declare-fun res!2614149 () Bool)

(assert (=> d!1993407 (=> (not res!2614149) (not e!3858264))))

(assert (=> d!1993407 (= res!2614149 (>= lt!2365195 0))))

(declare-fun e!3858265 () Int)

(assert (=> d!1993407 (= lt!2365195 e!3858265)))

(declare-fun c!1156009 () Bool)

(assert (=> d!1993407 (= c!1156009 ((_ is Cons!64954) zl!343))))

(assert (=> d!1993407 (= (zipperDepth!366 zl!343) lt!2365195)))

(assert (=> b!6353218 (= e!3858265 lt!2365194)))

(assert (=> b!6353218 (= lt!2365194 (maxBigInt!0 (contextDepth!255 (h!71402 zl!343)) (zipperDepth!366 (t!378668 zl!343))))))

(declare-fun lt!2365196 () Unit!158367)

(assert (=> b!6353218 (= lt!2365196 (lemmaForallContextDepthBiggerThanTransitive!239 (t!378668 zl!343) lt!2365194 (zipperDepth!366 (t!378668 zl!343)) lambda!349605))))

(assert (=> b!6353218 (forall!15431 (t!378668 zl!343) lambda!349606)))

(declare-fun lt!2365193 () Unit!158367)

(assert (=> b!6353218 (= lt!2365193 lt!2365196)))

(declare-fun b!6353219 () Bool)

(assert (=> b!6353219 (= e!3858265 0)))

(assert (=> b!6353220 (= e!3858264 (forall!15431 zl!343 lambda!349607))))

(assert (= (and d!1993407 c!1156009) b!6353218))

(assert (= (and d!1993407 (not c!1156009)) b!6353219))

(assert (= (and d!1993407 res!2614149) b!6353220))

(declare-fun m!7159900 () Bool)

(assert (=> b!6353218 m!7159900))

(declare-fun m!7159902 () Bool)

(assert (=> b!6353218 m!7159902))

(assert (=> b!6353218 m!7159900))

(declare-fun m!7159904 () Bool)

(assert (=> b!6353218 m!7159904))

(declare-fun m!7159906 () Bool)

(assert (=> b!6353218 m!7159906))

(assert (=> b!6353218 m!7159900))

(declare-fun m!7159908 () Bool)

(assert (=> b!6353218 m!7159908))

(assert (=> b!6353218 m!7159902))

(declare-fun m!7159910 () Bool)

(assert (=> b!6353220 m!7159910))

(assert (=> b!6352291 d!1993407))

(declare-fun d!1993409 () Bool)

(declare-fun c!1156010 () Bool)

(assert (=> d!1993409 (= c!1156010 (isEmpty!37049 (t!378667 s!2326)))))

(declare-fun e!3858266 () Bool)

(assert (=> d!1993409 (= (matchZipper!2271 lt!2365021 (t!378667 s!2326)) e!3858266)))

(declare-fun b!6353221 () Bool)

(assert (=> b!6353221 (= e!3858266 (nullableZipper!2025 lt!2365021))))

(declare-fun b!6353222 () Bool)

(assert (=> b!6353222 (= e!3858266 (matchZipper!2271 (derivationStepZipper!2225 lt!2365021 (head!13010 (t!378667 s!2326))) (tail!12095 (t!378667 s!2326))))))

(assert (= (and d!1993409 c!1156010) b!6353221))

(assert (= (and d!1993409 (not c!1156010)) b!6353222))

(assert (=> d!1993409 m!7159516))

(declare-fun m!7159912 () Bool)

(assert (=> b!6353221 m!7159912))

(assert (=> b!6353222 m!7159520))

(assert (=> b!6353222 m!7159520))

(declare-fun m!7159914 () Bool)

(assert (=> b!6353222 m!7159914))

(assert (=> b!6353222 m!7159524))

(assert (=> b!6353222 m!7159914))

(assert (=> b!6353222 m!7159524))

(declare-fun m!7159916 () Bool)

(assert (=> b!6353222 m!7159916))

(assert (=> b!6352293 d!1993409))

(declare-fun bs!1591313 () Bool)

(declare-fun d!1993411 () Bool)

(assert (= bs!1591313 (and d!1993411 d!1993303)))

(declare-fun lambda!349610 () Int)

(assert (=> bs!1591313 (= lambda!349610 lambda!349572)))

(declare-fun bs!1591314 () Bool)

(assert (= bs!1591314 (and d!1993411 d!1993353)))

(assert (=> bs!1591314 (= lambda!349610 lambda!349579)))

(declare-fun bs!1591315 () Bool)

(assert (= bs!1591315 (and d!1993411 d!1993393)))

(assert (=> bs!1591315 (= lambda!349610 lambda!349589)))

(declare-fun bs!1591316 () Bool)

(assert (= bs!1591316 (and d!1993411 d!1993359)))

(assert (=> bs!1591316 (= lambda!349610 lambda!349580)))

(declare-fun bs!1591317 () Bool)

(assert (= bs!1591317 (and d!1993411 d!1993293)))

(assert (=> bs!1591317 (= lambda!349610 lambda!349571)))

(declare-fun b!6353243 () Bool)

(declare-fun e!3858279 () Bool)

(declare-fun e!3858284 () Bool)

(assert (=> b!6353243 (= e!3858279 e!3858284)))

(declare-fun c!1156022 () Bool)

(assert (=> b!6353243 (= c!1156022 (isEmpty!37046 (unfocusZipperList!1680 zl!343)))))

(declare-fun b!6353244 () Bool)

(declare-fun e!3858282 () Regex!16259)

(declare-fun e!3858281 () Regex!16259)

(assert (=> b!6353244 (= e!3858282 e!3858281)))

(declare-fun c!1156019 () Bool)

(assert (=> b!6353244 (= c!1156019 ((_ is Cons!64952) (unfocusZipperList!1680 zl!343)))))

(declare-fun b!6353245 () Bool)

(declare-fun e!3858283 () Bool)

(declare-fun lt!2365199 () Regex!16259)

(assert (=> b!6353245 (= e!3858283 (= lt!2365199 (head!13011 (unfocusZipperList!1680 zl!343))))))

(declare-fun b!6353247 () Bool)

(declare-fun isEmptyLang!1668 (Regex!16259) Bool)

(assert (=> b!6353247 (= e!3858284 (isEmptyLang!1668 lt!2365199))))

(declare-fun b!6353248 () Bool)

(assert (=> b!6353248 (= e!3858281 EmptyLang!16259)))

(declare-fun b!6353249 () Bool)

(assert (=> b!6353249 (= e!3858282 (h!71400 (unfocusZipperList!1680 zl!343)))))

(declare-fun b!6353250 () Bool)

(assert (=> b!6353250 (= e!3858284 e!3858283)))

(declare-fun c!1156020 () Bool)

(assert (=> b!6353250 (= c!1156020 (isEmpty!37046 (tail!12096 (unfocusZipperList!1680 zl!343))))))

(declare-fun b!6353251 () Bool)

(declare-fun e!3858280 () Bool)

(assert (=> b!6353251 (= e!3858280 (isEmpty!37046 (t!378666 (unfocusZipperList!1680 zl!343))))))

(declare-fun b!6353252 () Bool)

(declare-fun isUnion!1098 (Regex!16259) Bool)

(assert (=> b!6353252 (= e!3858283 (isUnion!1098 lt!2365199))))

(declare-fun b!6353246 () Bool)

(assert (=> b!6353246 (= e!3858281 (Union!16259 (h!71400 (unfocusZipperList!1680 zl!343)) (generalisedUnion!2103 (t!378666 (unfocusZipperList!1680 zl!343)))))))

(assert (=> d!1993411 e!3858279))

(declare-fun res!2614154 () Bool)

(assert (=> d!1993411 (=> (not res!2614154) (not e!3858279))))

(assert (=> d!1993411 (= res!2614154 (validRegex!7995 lt!2365199))))

(assert (=> d!1993411 (= lt!2365199 e!3858282)))

(declare-fun c!1156021 () Bool)

(assert (=> d!1993411 (= c!1156021 e!3858280)))

(declare-fun res!2614155 () Bool)

(assert (=> d!1993411 (=> (not res!2614155) (not e!3858280))))

(assert (=> d!1993411 (= res!2614155 ((_ is Cons!64952) (unfocusZipperList!1680 zl!343)))))

(assert (=> d!1993411 (forall!15429 (unfocusZipperList!1680 zl!343) lambda!349610)))

(assert (=> d!1993411 (= (generalisedUnion!2103 (unfocusZipperList!1680 zl!343)) lt!2365199)))

(assert (= (and d!1993411 res!2614155) b!6353251))

(assert (= (and d!1993411 c!1156021) b!6353249))

(assert (= (and d!1993411 (not c!1156021)) b!6353244))

(assert (= (and b!6353244 c!1156019) b!6353246))

(assert (= (and b!6353244 (not c!1156019)) b!6353248))

(assert (= (and d!1993411 res!2614154) b!6353243))

(assert (= (and b!6353243 c!1156022) b!6353247))

(assert (= (and b!6353243 (not c!1156022)) b!6353250))

(assert (= (and b!6353250 c!1156020) b!6353245))

(assert (= (and b!6353250 (not c!1156020)) b!6353252))

(declare-fun m!7159918 () Bool)

(assert (=> b!6353246 m!7159918))

(assert (=> b!6353250 m!7159062))

(declare-fun m!7159920 () Bool)

(assert (=> b!6353250 m!7159920))

(assert (=> b!6353250 m!7159920))

(declare-fun m!7159922 () Bool)

(assert (=> b!6353250 m!7159922))

(declare-fun m!7159924 () Bool)

(assert (=> b!6353252 m!7159924))

(assert (=> b!6353243 m!7159062))

(declare-fun m!7159926 () Bool)

(assert (=> b!6353243 m!7159926))

(declare-fun m!7159928 () Bool)

(assert (=> b!6353247 m!7159928))

(declare-fun m!7159930 () Bool)

(assert (=> d!1993411 m!7159930))

(assert (=> d!1993411 m!7159062))

(declare-fun m!7159932 () Bool)

(assert (=> d!1993411 m!7159932))

(declare-fun m!7159934 () Bool)

(assert (=> b!6353251 m!7159934))

(assert (=> b!6353245 m!7159062))

(declare-fun m!7159936 () Bool)

(assert (=> b!6353245 m!7159936))

(assert (=> b!6352283 d!1993411))

(declare-fun bs!1591318 () Bool)

(declare-fun d!1993413 () Bool)

(assert (= bs!1591318 (and d!1993413 d!1993303)))

(declare-fun lambda!349613 () Int)

(assert (=> bs!1591318 (= lambda!349613 lambda!349572)))

(declare-fun bs!1591319 () Bool)

(assert (= bs!1591319 (and d!1993413 d!1993353)))

(assert (=> bs!1591319 (= lambda!349613 lambda!349579)))

(declare-fun bs!1591320 () Bool)

(assert (= bs!1591320 (and d!1993413 d!1993359)))

(assert (=> bs!1591320 (= lambda!349613 lambda!349580)))

(declare-fun bs!1591321 () Bool)

(assert (= bs!1591321 (and d!1993413 d!1993293)))

(assert (=> bs!1591321 (= lambda!349613 lambda!349571)))

(declare-fun bs!1591322 () Bool)

(assert (= bs!1591322 (and d!1993413 d!1993411)))

(assert (=> bs!1591322 (= lambda!349613 lambda!349610)))

(declare-fun bs!1591323 () Bool)

(assert (= bs!1591323 (and d!1993413 d!1993393)))

(assert (=> bs!1591323 (= lambda!349613 lambda!349589)))

(declare-fun lt!2365202 () List!65076)

(assert (=> d!1993413 (forall!15429 lt!2365202 lambda!349613)))

(declare-fun e!3858287 () List!65076)

(assert (=> d!1993413 (= lt!2365202 e!3858287)))

(declare-fun c!1156025 () Bool)

(assert (=> d!1993413 (= c!1156025 ((_ is Cons!64954) zl!343))))

(assert (=> d!1993413 (= (unfocusZipperList!1680 zl!343) lt!2365202)))

(declare-fun b!6353257 () Bool)

(assert (=> b!6353257 (= e!3858287 (Cons!64952 (generalisedConcat!1856 (exprs!6143 (h!71402 zl!343))) (unfocusZipperList!1680 (t!378668 zl!343))))))

(declare-fun b!6353258 () Bool)

(assert (=> b!6353258 (= e!3858287 Nil!64952)))

(assert (= (and d!1993413 c!1156025) b!6353257))

(assert (= (and d!1993413 (not c!1156025)) b!6353258))

(declare-fun m!7159938 () Bool)

(assert (=> d!1993413 m!7159938))

(assert (=> b!6353257 m!7159042))

(declare-fun m!7159940 () Bool)

(assert (=> b!6353257 m!7159940))

(assert (=> b!6352283 d!1993413))

(declare-fun d!1993415 () Bool)

(assert (=> d!1993415 (= (isEmpty!37045 (t!378668 zl!343)) ((_ is Nil!64954) (t!378668 zl!343)))))

(assert (=> b!6352303 d!1993415))

(declare-fun b!6353259 () Bool)

(declare-fun res!2614160 () Bool)

(declare-fun e!3858290 () Bool)

(assert (=> b!6353259 (=> (not res!2614160) (not e!3858290))))

(declare-fun lt!2365204 () Option!16150)

(assert (=> b!6353259 (= res!2614160 (matchR!8442 (regTwo!33030 r!7292) (_2!36541 (get!22473 lt!2365204))))))

(declare-fun b!6353260 () Bool)

(declare-fun e!3858289 () Option!16150)

(declare-fun e!3858288 () Option!16150)

(assert (=> b!6353260 (= e!3858289 e!3858288)))

(declare-fun c!1156027 () Bool)

(assert (=> b!6353260 (= c!1156027 ((_ is Nil!64953) s!2326))))

(declare-fun b!6353261 () Bool)

(assert (=> b!6353261 (= e!3858288 None!16149)))

(declare-fun b!6353262 () Bool)

(declare-fun lt!2365205 () Unit!158367)

(declare-fun lt!2365203 () Unit!158367)

(assert (=> b!6353262 (= lt!2365205 lt!2365203)))

(assert (=> b!6353262 (= (++!14328 (++!14328 Nil!64953 (Cons!64953 (h!71401 s!2326) Nil!64953)) (t!378667 s!2326)) s!2326)))

(assert (=> b!6353262 (= lt!2365203 (lemmaMoveElementToOtherListKeepsConcatEq!2423 Nil!64953 (h!71401 s!2326) (t!378667 s!2326) s!2326))))

(assert (=> b!6353262 (= e!3858288 (findConcatSeparation!2564 (regOne!33030 r!7292) (regTwo!33030 r!7292) (++!14328 Nil!64953 (Cons!64953 (h!71401 s!2326) Nil!64953)) (t!378667 s!2326) s!2326))))

(declare-fun d!1993417 () Bool)

(declare-fun e!3858292 () Bool)

(assert (=> d!1993417 e!3858292))

(declare-fun res!2614157 () Bool)

(assert (=> d!1993417 (=> res!2614157 e!3858292)))

(assert (=> d!1993417 (= res!2614157 e!3858290)))

(declare-fun res!2614156 () Bool)

(assert (=> d!1993417 (=> (not res!2614156) (not e!3858290))))

(assert (=> d!1993417 (= res!2614156 (isDefined!12853 lt!2365204))))

(assert (=> d!1993417 (= lt!2365204 e!3858289)))

(declare-fun c!1156026 () Bool)

(declare-fun e!3858291 () Bool)

(assert (=> d!1993417 (= c!1156026 e!3858291)))

(declare-fun res!2614158 () Bool)

(assert (=> d!1993417 (=> (not res!2614158) (not e!3858291))))

(assert (=> d!1993417 (= res!2614158 (matchR!8442 (regOne!33030 r!7292) Nil!64953))))

(assert (=> d!1993417 (validRegex!7995 (regOne!33030 r!7292))))

(assert (=> d!1993417 (= (findConcatSeparation!2564 (regOne!33030 r!7292) (regTwo!33030 r!7292) Nil!64953 s!2326 s!2326) lt!2365204)))

(declare-fun b!6353263 () Bool)

(assert (=> b!6353263 (= e!3858289 (Some!16149 (tuple2!66477 Nil!64953 s!2326)))))

(declare-fun b!6353264 () Bool)

(assert (=> b!6353264 (= e!3858292 (not (isDefined!12853 lt!2365204)))))

(declare-fun b!6353265 () Bool)

(declare-fun res!2614159 () Bool)

(assert (=> b!6353265 (=> (not res!2614159) (not e!3858290))))

(assert (=> b!6353265 (= res!2614159 (matchR!8442 (regOne!33030 r!7292) (_1!36541 (get!22473 lt!2365204))))))

(declare-fun b!6353266 () Bool)

(assert (=> b!6353266 (= e!3858291 (matchR!8442 (regTwo!33030 r!7292) s!2326))))

(declare-fun b!6353267 () Bool)

(assert (=> b!6353267 (= e!3858290 (= (++!14328 (_1!36541 (get!22473 lt!2365204)) (_2!36541 (get!22473 lt!2365204))) s!2326))))

(assert (= (and d!1993417 res!2614158) b!6353266))

(assert (= (and d!1993417 c!1156026) b!6353263))

(assert (= (and d!1993417 (not c!1156026)) b!6353260))

(assert (= (and b!6353260 c!1156027) b!6353261))

(assert (= (and b!6353260 (not c!1156027)) b!6353262))

(assert (= (and d!1993417 res!2614156) b!6353265))

(assert (= (and b!6353265 res!2614159) b!6353259))

(assert (= (and b!6353259 res!2614160) b!6353267))

(assert (= (and d!1993417 (not res!2614157)) b!6353264))

(declare-fun m!7159942 () Bool)

(assert (=> d!1993417 m!7159942))

(declare-fun m!7159944 () Bool)

(assert (=> d!1993417 m!7159944))

(declare-fun m!7159946 () Bool)

(assert (=> d!1993417 m!7159946))

(assert (=> b!6353264 m!7159942))

(declare-fun m!7159948 () Bool)

(assert (=> b!6353267 m!7159948))

(declare-fun m!7159950 () Bool)

(assert (=> b!6353267 m!7159950))

(assert (=> b!6353259 m!7159948))

(declare-fun m!7159952 () Bool)

(assert (=> b!6353259 m!7159952))

(assert (=> b!6353265 m!7159948))

(declare-fun m!7159954 () Bool)

(assert (=> b!6353265 m!7159954))

(assert (=> b!6353262 m!7159738))

(assert (=> b!6353262 m!7159738))

(assert (=> b!6353262 m!7159740))

(assert (=> b!6353262 m!7159742))

(assert (=> b!6353262 m!7159738))

(declare-fun m!7159956 () Bool)

(assert (=> b!6353262 m!7159956))

(declare-fun m!7159958 () Bool)

(assert (=> b!6353266 m!7159958))

(assert (=> b!6352310 d!1993417))

(declare-fun d!1993419 () Bool)

(assert (=> d!1993419 (= (Exists!3329 lambda!349505) (choose!47156 lambda!349505))))

(declare-fun bs!1591324 () Bool)

(assert (= bs!1591324 d!1993419))

(declare-fun m!7159960 () Bool)

(assert (=> bs!1591324 m!7159960))

(assert (=> b!6352310 d!1993419))

(declare-fun d!1993421 () Bool)

(assert (=> d!1993421 (= (Exists!3329 lambda!349504) (choose!47156 lambda!349504))))

(declare-fun bs!1591325 () Bool)

(assert (= bs!1591325 d!1993421))

(declare-fun m!7159962 () Bool)

(assert (=> bs!1591325 m!7159962))

(assert (=> b!6352310 d!1993421))

(declare-fun bs!1591326 () Bool)

(declare-fun d!1993423 () Bool)

(assert (= bs!1591326 (and d!1993423 d!1993391)))

(declare-fun lambda!349614 () Int)

(assert (=> bs!1591326 (= (and (= (regOne!33030 r!7292) (regTwo!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365025)) (= lambda!349614 lambda!349588))))

(declare-fun bs!1591327 () Bool)

(assert (= bs!1591327 (and d!1993423 b!6353158)))

(assert (=> bs!1591327 (not (= lambda!349614 lambda!349587))))

(declare-fun bs!1591328 () Bool)

(assert (= bs!1591328 (and d!1993423 b!6352618)))

(assert (=> bs!1591328 (not (= lambda!349614 lambda!349543))))

(declare-fun bs!1591329 () Bool)

(assert (= bs!1591329 (and d!1993423 d!1993367)))

(assert (=> bs!1591329 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349614 lambda!349585))))

(declare-fun bs!1591330 () Bool)

(assert (= bs!1591330 (and d!1993423 d!1993395)))

(assert (=> bs!1591330 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349614 lambda!349594))))

(declare-fun bs!1591331 () Bool)

(assert (= bs!1591331 (and d!1993423 b!6352292)))

(assert (=> bs!1591331 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349614 lambda!349507))))

(declare-fun bs!1591332 () Bool)

(assert (= bs!1591332 (and d!1993423 b!6353121)))

(assert (=> bs!1591332 (not (= lambda!349614 lambda!349581))))

(assert (=> bs!1591331 (= (and (= (regOne!33030 r!7292) (regTwo!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365025)) (= lambda!349614 lambda!349509))))

(declare-fun bs!1591333 () Bool)

(assert (= bs!1591333 (and d!1993423 b!6353120)))

(assert (=> bs!1591333 (not (= lambda!349614 lambda!349582))))

(declare-fun bs!1591334 () Bool)

(assert (= bs!1591334 (and d!1993423 b!6352310)))

(assert (=> bs!1591334 (= lambda!349614 lambda!349504)))

(declare-fun bs!1591335 () Bool)

(assert (= bs!1591335 (and d!1993423 b!6352619)))

(assert (=> bs!1591335 (not (= lambda!349614 lambda!349541))))

(assert (=> bs!1591330 (not (= lambda!349614 lambda!349595))))

(assert (=> bs!1591331 (not (= lambda!349614 lambda!349508))))

(declare-fun bs!1591336 () Bool)

(assert (= bs!1591336 (and d!1993423 b!6353159)))

(assert (=> bs!1591336 (not (= lambda!349614 lambda!349586))))

(assert (=> bs!1591334 (not (= lambda!349614 lambda!349505))))

(assert (=> d!1993423 true))

(assert (=> d!1993423 true))

(assert (=> d!1993423 true))

(assert (=> d!1993423 (= (isDefined!12853 (findConcatSeparation!2564 (regOne!33030 r!7292) (regTwo!33030 r!7292) Nil!64953 s!2326 s!2326)) (Exists!3329 lambda!349614))))

(declare-fun lt!2365206 () Unit!158367)

(assert (=> d!1993423 (= lt!2365206 (choose!47155 (regOne!33030 r!7292) (regTwo!33030 r!7292) s!2326))))

(assert (=> d!1993423 (validRegex!7995 (regOne!33030 r!7292))))

(assert (=> d!1993423 (= (lemmaFindConcatSeparationEquivalentToExists!2328 (regOne!33030 r!7292) (regTwo!33030 r!7292) s!2326) lt!2365206)))

(declare-fun bs!1591337 () Bool)

(assert (= bs!1591337 d!1993423))

(assert (=> bs!1591337 m!7159048))

(declare-fun m!7159964 () Bool)

(assert (=> bs!1591337 m!7159964))

(declare-fun m!7159966 () Bool)

(assert (=> bs!1591337 m!7159966))

(assert (=> bs!1591337 m!7159946))

(assert (=> bs!1591337 m!7159048))

(assert (=> bs!1591337 m!7159050))

(assert (=> b!6352310 d!1993423))

(declare-fun bs!1591338 () Bool)

(declare-fun d!1993425 () Bool)

(assert (= bs!1591338 (and d!1993425 d!1993391)))

(declare-fun lambda!349615 () Int)

(assert (=> bs!1591338 (= (and (= (regOne!33030 r!7292) (regTwo!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365025)) (= lambda!349615 lambda!349588))))

(declare-fun bs!1591339 () Bool)

(assert (= bs!1591339 (and d!1993425 d!1993423)))

(assert (=> bs!1591339 (= lambda!349615 lambda!349614)))

(declare-fun bs!1591340 () Bool)

(assert (= bs!1591340 (and d!1993425 b!6353158)))

(assert (=> bs!1591340 (not (= lambda!349615 lambda!349587))))

(declare-fun bs!1591341 () Bool)

(assert (= bs!1591341 (and d!1993425 b!6352618)))

(assert (=> bs!1591341 (not (= lambda!349615 lambda!349543))))

(declare-fun bs!1591342 () Bool)

(assert (= bs!1591342 (and d!1993425 d!1993367)))

(assert (=> bs!1591342 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349615 lambda!349585))))

(declare-fun bs!1591343 () Bool)

(assert (= bs!1591343 (and d!1993425 d!1993395)))

(assert (=> bs!1591343 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349615 lambda!349594))))

(declare-fun bs!1591344 () Bool)

(assert (= bs!1591344 (and d!1993425 b!6352292)))

(assert (=> bs!1591344 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349615 lambda!349507))))

(declare-fun bs!1591345 () Bool)

(assert (= bs!1591345 (and d!1993425 b!6353121)))

(assert (=> bs!1591345 (not (= lambda!349615 lambda!349581))))

(assert (=> bs!1591344 (= (and (= (regOne!33030 r!7292) (regTwo!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365025)) (= lambda!349615 lambda!349509))))

(declare-fun bs!1591346 () Bool)

(assert (= bs!1591346 (and d!1993425 b!6353120)))

(assert (=> bs!1591346 (not (= lambda!349615 lambda!349582))))

(declare-fun bs!1591347 () Bool)

(assert (= bs!1591347 (and d!1993425 b!6352310)))

(assert (=> bs!1591347 (= lambda!349615 lambda!349504)))

(declare-fun bs!1591348 () Bool)

(assert (= bs!1591348 (and d!1993425 b!6352619)))

(assert (=> bs!1591348 (not (= lambda!349615 lambda!349541))))

(assert (=> bs!1591343 (not (= lambda!349615 lambda!349595))))

(assert (=> bs!1591344 (not (= lambda!349615 lambda!349508))))

(declare-fun bs!1591349 () Bool)

(assert (= bs!1591349 (and d!1993425 b!6353159)))

(assert (=> bs!1591349 (not (= lambda!349615 lambda!349586))))

(assert (=> bs!1591347 (not (= lambda!349615 lambda!349505))))

(assert (=> d!1993425 true))

(assert (=> d!1993425 true))

(assert (=> d!1993425 true))

(declare-fun lambda!349616 () Int)

(assert (=> bs!1591338 (not (= lambda!349616 lambda!349588))))

(declare-fun bs!1591350 () Bool)

(assert (= bs!1591350 d!1993425))

(assert (=> bs!1591350 (not (= lambda!349616 lambda!349615))))

(assert (=> bs!1591339 (not (= lambda!349616 lambda!349614))))

(assert (=> bs!1591340 (= (and (= (regOne!33030 r!7292) (regOne!33030 lt!2365008)) (= (regTwo!33030 r!7292) (regTwo!33030 lt!2365008))) (= lambda!349616 lambda!349587))))

(assert (=> bs!1591341 (= lambda!349616 lambda!349543)))

(assert (=> bs!1591342 (not (= lambda!349616 lambda!349585))))

(assert (=> bs!1591343 (not (= lambda!349616 lambda!349594))))

(assert (=> bs!1591344 (not (= lambda!349616 lambda!349507))))

(assert (=> bs!1591345 (not (= lambda!349616 lambda!349581))))

(assert (=> bs!1591344 (not (= lambda!349616 lambda!349509))))

(assert (=> bs!1591346 (= (and (= (regOne!33030 r!7292) (regOne!33030 lt!2365033)) (= (regTwo!33030 r!7292) (regTwo!33030 lt!2365033))) (= lambda!349616 lambda!349582))))

(assert (=> bs!1591347 (not (= lambda!349616 lambda!349504))))

(assert (=> bs!1591348 (not (= lambda!349616 lambda!349541))))

(assert (=> bs!1591343 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349616 lambda!349595))))

(assert (=> bs!1591344 (= (and (= (regOne!33030 r!7292) (regOne!33030 (regOne!33030 r!7292))) (= (regTwo!33030 r!7292) lt!2365008)) (= lambda!349616 lambda!349508))))

(assert (=> bs!1591349 (not (= lambda!349616 lambda!349586))))

(assert (=> bs!1591347 (= lambda!349616 lambda!349505)))

(assert (=> d!1993425 true))

(assert (=> d!1993425 true))

(assert (=> d!1993425 true))

(assert (=> d!1993425 (= (Exists!3329 lambda!349615) (Exists!3329 lambda!349616))))

(declare-fun lt!2365207 () Unit!158367)

(assert (=> d!1993425 (= lt!2365207 (choose!47158 (regOne!33030 r!7292) (regTwo!33030 r!7292) s!2326))))

(assert (=> d!1993425 (validRegex!7995 (regOne!33030 r!7292))))

(assert (=> d!1993425 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1866 (regOne!33030 r!7292) (regTwo!33030 r!7292) s!2326) lt!2365207)))

(declare-fun m!7159968 () Bool)

(assert (=> bs!1591350 m!7159968))

(declare-fun m!7159970 () Bool)

(assert (=> bs!1591350 m!7159970))

(declare-fun m!7159972 () Bool)

(assert (=> bs!1591350 m!7159972))

(assert (=> bs!1591350 m!7159946))

(assert (=> b!6352310 d!1993425))

(declare-fun d!1993427 () Bool)

(assert (=> d!1993427 (= (isDefined!12853 (findConcatSeparation!2564 (regOne!33030 r!7292) (regTwo!33030 r!7292) Nil!64953 s!2326 s!2326)) (not (isEmpty!37050 (findConcatSeparation!2564 (regOne!33030 r!7292) (regTwo!33030 r!7292) Nil!64953 s!2326 s!2326))))))

(declare-fun bs!1591351 () Bool)

(assert (= bs!1591351 d!1993427))

(assert (=> bs!1591351 m!7159048))

(declare-fun m!7159974 () Bool)

(assert (=> bs!1591351 m!7159974))

(assert (=> b!6352310 d!1993427))

(declare-fun d!1993429 () Bool)

(declare-fun c!1156028 () Bool)

(assert (=> d!1993429 (= c!1156028 (isEmpty!37049 (t!378667 s!2326)))))

(declare-fun e!3858293 () Bool)

(assert (=> d!1993429 (= (matchZipper!2271 lt!2365011 (t!378667 s!2326)) e!3858293)))

(declare-fun b!6353268 () Bool)

(assert (=> b!6353268 (= e!3858293 (nullableZipper!2025 lt!2365011))))

(declare-fun b!6353269 () Bool)

(assert (=> b!6353269 (= e!3858293 (matchZipper!2271 (derivationStepZipper!2225 lt!2365011 (head!13010 (t!378667 s!2326))) (tail!12095 (t!378667 s!2326))))))

(assert (= (and d!1993429 c!1156028) b!6353268))

(assert (= (and d!1993429 (not c!1156028)) b!6353269))

(assert (=> d!1993429 m!7159516))

(declare-fun m!7159976 () Bool)

(assert (=> b!6353268 m!7159976))

(assert (=> b!6353269 m!7159520))

(assert (=> b!6353269 m!7159520))

(declare-fun m!7159978 () Bool)

(assert (=> b!6353269 m!7159978))

(assert (=> b!6353269 m!7159524))

(assert (=> b!6353269 m!7159978))

(assert (=> b!6353269 m!7159524))

(declare-fun m!7159980 () Bool)

(assert (=> b!6353269 m!7159980))

(assert (=> b!6352299 d!1993429))

(assert (=> b!6352299 d!1993255))

(declare-fun d!1993431 () Bool)

(assert (=> d!1993431 (= (nullable!6252 (regOne!33030 (regOne!33030 r!7292))) (nullableFct!2199 (regOne!33030 (regOne!33030 r!7292))))))

(declare-fun bs!1591352 () Bool)

(assert (= bs!1591352 d!1993431))

(declare-fun m!7159982 () Bool)

(assert (=> bs!1591352 m!7159982))

(assert (=> b!6352312 d!1993431))

(declare-fun bs!1591353 () Bool)

(declare-fun d!1993433 () Bool)

(assert (= bs!1591353 (and d!1993433 d!1993413)))

(declare-fun lambda!349617 () Int)

(assert (=> bs!1591353 (= lambda!349617 lambda!349613)))

(declare-fun bs!1591354 () Bool)

(assert (= bs!1591354 (and d!1993433 d!1993303)))

(assert (=> bs!1591354 (= lambda!349617 lambda!349572)))

(declare-fun bs!1591355 () Bool)

(assert (= bs!1591355 (and d!1993433 d!1993353)))

(assert (=> bs!1591355 (= lambda!349617 lambda!349579)))

(declare-fun bs!1591356 () Bool)

(assert (= bs!1591356 (and d!1993433 d!1993359)))

(assert (=> bs!1591356 (= lambda!349617 lambda!349580)))

(declare-fun bs!1591357 () Bool)

(assert (= bs!1591357 (and d!1993433 d!1993293)))

(assert (=> bs!1591357 (= lambda!349617 lambda!349571)))

(declare-fun bs!1591358 () Bool)

(assert (= bs!1591358 (and d!1993433 d!1993411)))

(assert (=> bs!1591358 (= lambda!349617 lambda!349610)))

(declare-fun bs!1591359 () Bool)

(assert (= bs!1591359 (and d!1993433 d!1993393)))

(assert (=> bs!1591359 (= lambda!349617 lambda!349589)))

(declare-fun b!6353270 () Bool)

(declare-fun e!3858297 () Bool)

(assert (=> b!6353270 (= e!3858297 (isEmpty!37046 (t!378666 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6353271 () Bool)

(declare-fun e!3858296 () Regex!16259)

(assert (=> b!6353271 (= e!3858296 (h!71400 (exprs!6143 (h!71402 zl!343))))))

(declare-fun b!6353272 () Bool)

(declare-fun e!3858298 () Regex!16259)

(assert (=> b!6353272 (= e!3858296 e!3858298)))

(declare-fun c!1156031 () Bool)

(assert (=> b!6353272 (= c!1156031 ((_ is Cons!64952) (exprs!6143 (h!71402 zl!343))))))

(declare-fun b!6353273 () Bool)

(declare-fun e!3858294 () Bool)

(declare-fun e!3858295 () Bool)

(assert (=> b!6353273 (= e!3858294 e!3858295)))

(declare-fun c!1156032 () Bool)

(assert (=> b!6353273 (= c!1156032 (isEmpty!37046 (tail!12096 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6353274 () Bool)

(declare-fun lt!2365208 () Regex!16259)

(assert (=> b!6353274 (= e!3858294 (isEmptyExpr!1661 lt!2365208))))

(declare-fun b!6353275 () Bool)

(assert (=> b!6353275 (= e!3858295 (isConcat!1184 lt!2365208))))

(declare-fun b!6353276 () Bool)

(assert (=> b!6353276 (= e!3858298 (Concat!25104 (h!71400 (exprs!6143 (h!71402 zl!343))) (generalisedConcat!1856 (t!378666 (exprs!6143 (h!71402 zl!343))))))))

(declare-fun b!6353277 () Bool)

(assert (=> b!6353277 (= e!3858298 EmptyExpr!16259)))

(declare-fun e!3858299 () Bool)

(assert (=> d!1993433 e!3858299))

(declare-fun res!2614161 () Bool)

(assert (=> d!1993433 (=> (not res!2614161) (not e!3858299))))

(assert (=> d!1993433 (= res!2614161 (validRegex!7995 lt!2365208))))

(assert (=> d!1993433 (= lt!2365208 e!3858296)))

(declare-fun c!1156029 () Bool)

(assert (=> d!1993433 (= c!1156029 e!3858297)))

(declare-fun res!2614162 () Bool)

(assert (=> d!1993433 (=> (not res!2614162) (not e!3858297))))

(assert (=> d!1993433 (= res!2614162 ((_ is Cons!64952) (exprs!6143 (h!71402 zl!343))))))

(assert (=> d!1993433 (forall!15429 (exprs!6143 (h!71402 zl!343)) lambda!349617)))

(assert (=> d!1993433 (= (generalisedConcat!1856 (exprs!6143 (h!71402 zl!343))) lt!2365208)))

(declare-fun b!6353278 () Bool)

(assert (=> b!6353278 (= e!3858295 (= lt!2365208 (head!13011 (exprs!6143 (h!71402 zl!343)))))))

(declare-fun b!6353279 () Bool)

(assert (=> b!6353279 (= e!3858299 e!3858294)))

(declare-fun c!1156030 () Bool)

(assert (=> b!6353279 (= c!1156030 (isEmpty!37046 (exprs!6143 (h!71402 zl!343))))))

(assert (= (and d!1993433 res!2614162) b!6353270))

(assert (= (and d!1993433 c!1156029) b!6353271))

(assert (= (and d!1993433 (not c!1156029)) b!6353272))

(assert (= (and b!6353272 c!1156031) b!6353276))

(assert (= (and b!6353272 (not c!1156031)) b!6353277))

(assert (= (and d!1993433 res!2614161) b!6353279))

(assert (= (and b!6353279 c!1156030) b!6353274))

(assert (= (and b!6353279 (not c!1156030)) b!6353273))

(assert (= (and b!6353273 c!1156032) b!6353278))

(assert (= (and b!6353273 (not c!1156032)) b!6353275))

(declare-fun m!7159984 () Bool)

(assert (=> b!6353275 m!7159984))

(declare-fun m!7159986 () Bool)

(assert (=> b!6353273 m!7159986))

(assert (=> b!6353273 m!7159986))

(declare-fun m!7159988 () Bool)

(assert (=> b!6353273 m!7159988))

(declare-fun m!7159990 () Bool)

(assert (=> b!6353279 m!7159990))

(assert (=> b!6353276 m!7159130))

(declare-fun m!7159992 () Bool)

(assert (=> b!6353274 m!7159992))

(declare-fun m!7159994 () Bool)

(assert (=> d!1993433 m!7159994))

(declare-fun m!7159996 () Bool)

(assert (=> d!1993433 m!7159996))

(declare-fun m!7159998 () Bool)

(assert (=> b!6353278 m!7159998))

(assert (=> b!6353270 m!7159144))

(assert (=> b!6352290 d!1993433))

(declare-fun b!6353284 () Bool)

(declare-fun e!3858302 () Bool)

(declare-fun tp!1770241 () Bool)

(declare-fun tp!1770242 () Bool)

(assert (=> b!6353284 (= e!3858302 (and tp!1770241 tp!1770242))))

(assert (=> b!6352307 (= tp!1770170 e!3858302)))

(assert (= (and b!6352307 ((_ is Cons!64952) (exprs!6143 setElem!43258))) b!6353284))

(declare-fun b!6353289 () Bool)

(declare-fun e!3858305 () Bool)

(declare-fun tp!1770245 () Bool)

(assert (=> b!6353289 (= e!3858305 (and tp_is_empty!41771 tp!1770245))))

(assert (=> b!6352304 (= tp!1770177 e!3858305)))

(assert (= (and b!6352304 ((_ is Cons!64953) (t!378667 s!2326))) b!6353289))

(declare-fun b!6353300 () Bool)

(declare-fun e!3858308 () Bool)

(assert (=> b!6353300 (= e!3858308 tp_is_empty!41771)))

(declare-fun b!6353301 () Bool)

(declare-fun tp!1770260 () Bool)

(declare-fun tp!1770258 () Bool)

(assert (=> b!6353301 (= e!3858308 (and tp!1770260 tp!1770258))))

(assert (=> b!6352314 (= tp!1770172 e!3858308)))

(declare-fun b!6353303 () Bool)

(declare-fun tp!1770259 () Bool)

(declare-fun tp!1770256 () Bool)

(assert (=> b!6353303 (= e!3858308 (and tp!1770259 tp!1770256))))

(declare-fun b!6353302 () Bool)

(declare-fun tp!1770257 () Bool)

(assert (=> b!6353302 (= e!3858308 tp!1770257)))

(assert (= (and b!6352314 ((_ is ElementMatch!16259) (regOne!33031 r!7292))) b!6353300))

(assert (= (and b!6352314 ((_ is Concat!25104) (regOne!33031 r!7292))) b!6353301))

(assert (= (and b!6352314 ((_ is Star!16259) (regOne!33031 r!7292))) b!6353302))

(assert (= (and b!6352314 ((_ is Union!16259) (regOne!33031 r!7292))) b!6353303))

(declare-fun b!6353304 () Bool)

(declare-fun e!3858309 () Bool)

(assert (=> b!6353304 (= e!3858309 tp_is_empty!41771)))

(declare-fun b!6353305 () Bool)

(declare-fun tp!1770265 () Bool)

(declare-fun tp!1770263 () Bool)

(assert (=> b!6353305 (= e!3858309 (and tp!1770265 tp!1770263))))

(assert (=> b!6352314 (= tp!1770169 e!3858309)))

(declare-fun b!6353307 () Bool)

(declare-fun tp!1770264 () Bool)

(declare-fun tp!1770261 () Bool)

(assert (=> b!6353307 (= e!3858309 (and tp!1770264 tp!1770261))))

(declare-fun b!6353306 () Bool)

(declare-fun tp!1770262 () Bool)

(assert (=> b!6353306 (= e!3858309 tp!1770262)))

(assert (= (and b!6352314 ((_ is ElementMatch!16259) (regTwo!33031 r!7292))) b!6353304))

(assert (= (and b!6352314 ((_ is Concat!25104) (regTwo!33031 r!7292))) b!6353305))

(assert (= (and b!6352314 ((_ is Star!16259) (regTwo!33031 r!7292))) b!6353306))

(assert (= (and b!6352314 ((_ is Union!16259) (regTwo!33031 r!7292))) b!6353307))

(declare-fun condSetEmpty!43264 () Bool)

(assert (=> setNonEmpty!43258 (= condSetEmpty!43264 (= setRest!43258 ((as const (Array Context!11286 Bool)) false)))))

(declare-fun setRes!43264 () Bool)

(assert (=> setNonEmpty!43258 (= tp!1770173 setRes!43264)))

(declare-fun setIsEmpty!43264 () Bool)

(assert (=> setIsEmpty!43264 setRes!43264))

(declare-fun setNonEmpty!43264 () Bool)

(declare-fun tp!1770271 () Bool)

(declare-fun e!3858312 () Bool)

(declare-fun setElem!43264 () Context!11286)

(assert (=> setNonEmpty!43264 (= setRes!43264 (and tp!1770271 (inv!83894 setElem!43264) e!3858312))))

(declare-fun setRest!43264 () (InoxSet Context!11286))

(assert (=> setNonEmpty!43264 (= setRest!43258 ((_ map or) (store ((as const (Array Context!11286 Bool)) false) setElem!43264 true) setRest!43264))))

(declare-fun b!6353312 () Bool)

(declare-fun tp!1770270 () Bool)

(assert (=> b!6353312 (= e!3858312 tp!1770270)))

(assert (= (and setNonEmpty!43258 condSetEmpty!43264) setIsEmpty!43264))

(assert (= (and setNonEmpty!43258 (not condSetEmpty!43264)) setNonEmpty!43264))

(assert (= setNonEmpty!43264 b!6353312))

(declare-fun m!7160000 () Bool)

(assert (=> setNonEmpty!43264 m!7160000))

(declare-fun b!6353313 () Bool)

(declare-fun e!3858313 () Bool)

(declare-fun tp!1770272 () Bool)

(declare-fun tp!1770273 () Bool)

(assert (=> b!6353313 (= e!3858313 (and tp!1770272 tp!1770273))))

(assert (=> b!6352300 (= tp!1770171 e!3858313)))

(assert (= (and b!6352300 ((_ is Cons!64952) (exprs!6143 (h!71402 zl!343)))) b!6353313))

(declare-fun b!6353314 () Bool)

(declare-fun e!3858314 () Bool)

(assert (=> b!6353314 (= e!3858314 tp_is_empty!41771)))

(declare-fun b!6353315 () Bool)

(declare-fun tp!1770278 () Bool)

(declare-fun tp!1770276 () Bool)

(assert (=> b!6353315 (= e!3858314 (and tp!1770278 tp!1770276))))

(assert (=> b!6352289 (= tp!1770178 e!3858314)))

(declare-fun b!6353317 () Bool)

(declare-fun tp!1770277 () Bool)

(declare-fun tp!1770274 () Bool)

(assert (=> b!6353317 (= e!3858314 (and tp!1770277 tp!1770274))))

(declare-fun b!6353316 () Bool)

(declare-fun tp!1770275 () Bool)

(assert (=> b!6353316 (= e!3858314 tp!1770275)))

(assert (= (and b!6352289 ((_ is ElementMatch!16259) (reg!16588 r!7292))) b!6353314))

(assert (= (and b!6352289 ((_ is Concat!25104) (reg!16588 r!7292))) b!6353315))

(assert (= (and b!6352289 ((_ is Star!16259) (reg!16588 r!7292))) b!6353316))

(assert (= (and b!6352289 ((_ is Union!16259) (reg!16588 r!7292))) b!6353317))

(declare-fun b!6353318 () Bool)

(declare-fun e!3858315 () Bool)

(assert (=> b!6353318 (= e!3858315 tp_is_empty!41771)))

(declare-fun b!6353319 () Bool)

(declare-fun tp!1770283 () Bool)

(declare-fun tp!1770281 () Bool)

(assert (=> b!6353319 (= e!3858315 (and tp!1770283 tp!1770281))))

(assert (=> b!6352294 (= tp!1770174 e!3858315)))

(declare-fun b!6353321 () Bool)

(declare-fun tp!1770282 () Bool)

(declare-fun tp!1770279 () Bool)

(assert (=> b!6353321 (= e!3858315 (and tp!1770282 tp!1770279))))

(declare-fun b!6353320 () Bool)

(declare-fun tp!1770280 () Bool)

(assert (=> b!6353320 (= e!3858315 tp!1770280)))

(assert (= (and b!6352294 ((_ is ElementMatch!16259) (regOne!33030 r!7292))) b!6353318))

(assert (= (and b!6352294 ((_ is Concat!25104) (regOne!33030 r!7292))) b!6353319))

(assert (= (and b!6352294 ((_ is Star!16259) (regOne!33030 r!7292))) b!6353320))

(assert (= (and b!6352294 ((_ is Union!16259) (regOne!33030 r!7292))) b!6353321))

(declare-fun b!6353322 () Bool)

(declare-fun e!3858316 () Bool)

(assert (=> b!6353322 (= e!3858316 tp_is_empty!41771)))

(declare-fun b!6353323 () Bool)

(declare-fun tp!1770288 () Bool)

(declare-fun tp!1770286 () Bool)

(assert (=> b!6353323 (= e!3858316 (and tp!1770288 tp!1770286))))

(assert (=> b!6352294 (= tp!1770175 e!3858316)))

(declare-fun b!6353325 () Bool)

(declare-fun tp!1770287 () Bool)

(declare-fun tp!1770284 () Bool)

(assert (=> b!6353325 (= e!3858316 (and tp!1770287 tp!1770284))))

(declare-fun b!6353324 () Bool)

(declare-fun tp!1770285 () Bool)

(assert (=> b!6353324 (= e!3858316 tp!1770285)))

(assert (= (and b!6352294 ((_ is ElementMatch!16259) (regTwo!33030 r!7292))) b!6353322))

(assert (= (and b!6352294 ((_ is Concat!25104) (regTwo!33030 r!7292))) b!6353323))

(assert (= (and b!6352294 ((_ is Star!16259) (regTwo!33030 r!7292))) b!6353324))

(assert (= (and b!6352294 ((_ is Union!16259) (regTwo!33030 r!7292))) b!6353325))

(declare-fun b!6353333 () Bool)

(declare-fun e!3858322 () Bool)

(declare-fun tp!1770293 () Bool)

(assert (=> b!6353333 (= e!3858322 tp!1770293)))

(declare-fun e!3858321 () Bool)

(declare-fun tp!1770294 () Bool)

(declare-fun b!6353332 () Bool)

(assert (=> b!6353332 (= e!3858321 (and (inv!83894 (h!71402 (t!378668 zl!343))) e!3858322 tp!1770294))))

(assert (=> b!6352284 (= tp!1770176 e!3858321)))

(assert (= b!6353332 b!6353333))

(assert (= (and b!6352284 ((_ is Cons!64954) (t!378668 zl!343))) b!6353332))

(declare-fun m!7160002 () Bool)

(assert (=> b!6353332 m!7160002))

(declare-fun b_lambda!241633 () Bool)

(assert (= b_lambda!241623 (or b!6352296 b_lambda!241633)))

(declare-fun bs!1591360 () Bool)

(declare-fun d!1993435 () Bool)

(assert (= bs!1591360 (and d!1993435 b!6352296)))

(assert (=> bs!1591360 (= (dynLambda!25757 lambda!349506 (h!71402 zl!343)) (derivationStepZipperUp!1433 (h!71402 zl!343) (h!71401 s!2326)))))

(assert (=> bs!1591360 m!7159078))

(assert (=> d!1993305 d!1993435))

(declare-fun b_lambda!241635 () Bool)

(assert (= b_lambda!241631 (or b!6352296 b_lambda!241635)))

(declare-fun bs!1591361 () Bool)

(declare-fun d!1993437 () Bool)

(assert (= bs!1591361 (and d!1993437 b!6352296)))

(assert (=> bs!1591361 (= (dynLambda!25757 lambda!349506 lt!2365005) (derivationStepZipperUp!1433 lt!2365005 (h!71401 s!2326)))))

(assert (=> bs!1591361 m!7159152))

(assert (=> d!1993347 d!1993437))

(check-sat (not d!1993337) (not d!1993375) (not bm!541779) (not b!6353165) (not b!6352794) (not d!1993423) (not bm!541705) (not d!1993371) (not bs!1591360) (not b!6353317) (not b!6353279) (not b!6353245) (not b!6352833) (not b_lambda!241635) (not b!6353028) (not b!6353143) (not b!6353054) (not b!6353022) (not b!6353178) (not d!1993247) (not d!1993299) (not b!6353092) (not d!1993355) (not d!1993387) (not b!6353195) (not b!6353135) (not b!6353265) (not b!6353246) (not d!1993343) (not b!6353109) (not b!6353082) (not b!6353015) (not b!6353270) (not b!6353325) (not bm!541768) (not b!6353307) (not b!6353273) (not d!1993367) (not b!6353289) (not bm!541787) (not b!6353142) (not b!6353278) (not d!1993329) (not b!6353321) (not b!6353132) (not b!6353175) (not b!6353007) (not b!6353119) (not d!1993267) (not b!6353262) (not b!6353110) (not b!6353093) (not b!6353154) (not b!6353213) (not d!1993373) (not b!6352789) (not b!6352786) (not b!6353332) (not d!1993361) (not b!6353049) (not b!6352868) (not b!6353266) (not b!6353053) (not b!6353141) (not bs!1591361) (not b!6353275) (not b!6353080) (not b!6353243) (not bm!541780) (not bm!541782) (not b!6352869) (not b!6353203) (not b!6352725) (not d!1993417) (not b!6352721) (not d!1993419) (not b!6353091) (not d!1993391) (not b!6352716) (not d!1993425) (not d!1993427) (not bm!541775) (not b!6353306) (not b!6353100) (not b!6353221) (not d!1993379) (not b!6353105) (not b!6353302) (not d!1993393) (not b!6353106) (not b!6353170) (not b!6353012) (not bm!541776) (not b!6353274) (not b!6353130) (not b!6353333) (not b!6353320) (not bm!541767) (not d!1993231) (not b!6353316) (not d!1993429) (not b!6353133) (not bm!541725) (not b!6353174) (not d!1993301) (not b!6353103) (not b!6353005) (not b!6353319) (not b!6353247) (not b!6353215) (not bm!541773) (not b!6353312) (not b!6353057) tp_is_empty!41771 (not b!6352617) (not b!6353147) (not b!6353251) (not b!6353116) (not b!6353010) (not d!1993409) (not b!6353252) (not d!1993377) (not b!6352970) (not b!6353083) (not b!6353259) (not bm!541777) (not d!1993381) (not bm!541774) (not b!6353250) (not b!6353222) (not b!6353264) (not b!6353276) (not bm!541724) (not b!6353088) (not b!6353084) (not b!6353176) (not b!6353077) (not b!6353257) (not d!1993363) (not b!6352788) (not bm!541789) (not b!6353218) (not b!6353303) (not d!1993351) (not b!6353111) (not b!6353173) (not b!6352614) (not b!6352787) (not b!6352762) (not d!1993359) (not b!6353017) (not b!6353085) (not b!6353323) (not d!1993305) (not d!1993395) (not b!6353268) (not bm!541716) (not b!6353205) (not d!1993293) (not d!1993347) (not b!6353127) (not bm!541781) (not b!6353269) (not b!6353315) (not d!1993303) (not d!1993431) (not b!6353324) (not b!6353104) (not d!1993383) (not d!1993349) (not b!6353055) (not d!1993357) (not b!6353097) (not b!6353096) (not b!6353020) (not b!6353284) (not b!6353267) (not bm!541784) (not b!6353305) (not b!6353108) (not bm!541704) (not b!6353058) (not d!1993411) (not setNonEmpty!43264) (not d!1993255) (not b!6352796) (not b!6353220) (not d!1993413) (not d!1993369) (not b!6353179) (not b!6353313) (not d!1993353) (not d!1993253) (not b!6352724) (not bm!541766) (not b!6352719) (not bm!541778) (not b_lambda!241633) (not bm!541788) (not d!1993421) (not b!6353146) (not b!6353301) (not b!6352720) (not b!6353052) (not d!1993433) (not b!6353157) (not bm!541785) (not b!6353138) (not b!6353134))
(check-sat)
