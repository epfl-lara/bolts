; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558030 () Bool)

(assert start!558030)

(declare-fun b!5285855 () Bool)

(assert (=> b!5285855 true))

(assert (=> b!5285855 true))

(declare-fun lambda!267295 () Int)

(declare-fun lambda!267294 () Int)

(assert (=> b!5285855 (not (= lambda!267295 lambda!267294))))

(assert (=> b!5285855 true))

(assert (=> b!5285855 true))

(declare-fun b!5285853 () Bool)

(assert (=> b!5285853 true))

(declare-fun bs!1224960 () Bool)

(declare-fun b!5285860 () Bool)

(assert (= bs!1224960 (and b!5285860 b!5285855)))

(declare-datatypes ((C!30100 0))(
  ( (C!30101 (val!24752 Int)) )
))
(declare-datatypes ((Regex!14915 0))(
  ( (ElementMatch!14915 (c!916595 C!30100)) (Concat!23760 (regOne!30342 Regex!14915) (regTwo!30342 Regex!14915)) (EmptyExpr!14915) (Star!14915 (reg!15244 Regex!14915)) (EmptyLang!14915) (Union!14915 (regOne!30343 Regex!14915) (regTwo!30343 Regex!14915)) )
))
(declare-fun r!7292 () Regex!14915)

(declare-fun lt!2160404 () Regex!14915)

(declare-fun lambda!267297 () Int)

(assert (=> bs!1224960 (= (and (= (regOne!30342 (regOne!30342 r!7292)) (regOne!30342 r!7292)) (= lt!2160404 (regTwo!30342 r!7292))) (= lambda!267297 lambda!267294))))

(assert (=> bs!1224960 (not (= lambda!267297 lambda!267295))))

(assert (=> b!5285860 true))

(assert (=> b!5285860 true))

(assert (=> b!5285860 true))

(declare-fun b!5285848 () Bool)

(declare-fun res!2241823 () Bool)

(declare-fun e!3286383 () Bool)

(assert (=> b!5285848 (=> res!2241823 e!3286383)))

(declare-datatypes ((List!61044 0))(
  ( (Nil!60920) (Cons!60920 (h!67368 Regex!14915) (t!374247 List!61044)) )
))
(declare-datatypes ((Context!8598 0))(
  ( (Context!8599 (exprs!4799 List!61044)) )
))
(declare-fun lt!2160416 () Context!8598)

(declare-datatypes ((List!61045 0))(
  ( (Nil!60921) (Cons!60921 (h!67369 Context!8598) (t!374248 List!61045)) )
))
(declare-fun zl!343 () List!61045)

(declare-fun contextDepthTotal!56 (Context!8598) Int)

(assert (=> b!5285848 (= res!2241823 (>= (contextDepthTotal!56 lt!2160416) (contextDepthTotal!56 (h!67369 zl!343))))))

(declare-fun b!5285849 () Bool)

(declare-fun res!2241814 () Bool)

(declare-fun e!3286381 () Bool)

(assert (=> b!5285849 (=> res!2241814 e!3286381)))

(declare-fun generalisedUnion!844 (List!61044) Regex!14915)

(declare-fun unfocusZipperList!357 (List!61045) List!61044)

(assert (=> b!5285849 (= res!2241814 (not (= r!7292 (generalisedUnion!844 (unfocusZipperList!357 zl!343)))))))

(declare-fun b!5285850 () Bool)

(declare-fun res!2241822 () Bool)

(declare-fun e!3286380 () Bool)

(assert (=> b!5285850 (=> (not res!2241822) (not e!3286380))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8598))

(declare-fun toList!8699 ((InoxSet Context!8598)) List!61045)

(assert (=> b!5285850 (= res!2241822 (= (toList!8699 z!1189) zl!343))))

(declare-fun b!5285851 () Bool)

(assert (=> b!5285851 (= e!3286380 (not e!3286381))))

(declare-fun res!2241838 () Bool)

(assert (=> b!5285851 (=> res!2241838 e!3286381)))

(get-info :version)

(assert (=> b!5285851 (= res!2241838 (not ((_ is Cons!60921) zl!343)))))

(declare-fun lt!2160402 () Bool)

(declare-datatypes ((List!61046 0))(
  ( (Nil!60922) (Cons!60922 (h!67370 C!30100) (t!374249 List!61046)) )
))
(declare-fun s!2326 () List!61046)

(declare-fun matchRSpec!2018 (Regex!14915 List!61046) Bool)

(assert (=> b!5285851 (= lt!2160402 (matchRSpec!2018 r!7292 s!2326))))

(declare-fun matchR!7100 (Regex!14915 List!61046) Bool)

(assert (=> b!5285851 (= lt!2160402 (matchR!7100 r!7292 s!2326))))

(declare-datatypes ((Unit!153178 0))(
  ( (Unit!153179) )
))
(declare-fun lt!2160408 () Unit!153178)

(declare-fun mainMatchTheorem!2018 (Regex!14915 List!61046) Unit!153178)

(assert (=> b!5285851 (= lt!2160408 (mainMatchTheorem!2018 r!7292 s!2326))))

(declare-fun b!5285852 () Bool)

(declare-fun res!2241819 () Bool)

(declare-fun e!3286377 () Bool)

(assert (=> b!5285852 (=> res!2241819 e!3286377)))

(declare-fun lt!2160397 () List!61045)

(declare-fun zipperDepth!32 (List!61045) Int)

(assert (=> b!5285852 (= res!2241819 (> (zipperDepth!32 lt!2160397) (zipperDepth!32 zl!343)))))

(declare-fun e!3286390 () Bool)

(declare-fun e!3286386 () Bool)

(assert (=> b!5285853 (= e!3286390 e!3286386)))

(declare-fun res!2241833 () Bool)

(assert (=> b!5285853 (=> res!2241833 e!3286386)))

(assert (=> b!5285853 (= res!2241833 (or (and ((_ is ElementMatch!14915) (regOne!30342 r!7292)) (= (c!916595 (regOne!30342 r!7292)) (h!67370 s!2326))) ((_ is Union!14915) (regOne!30342 r!7292)) (not ((_ is Concat!23760) (regOne!30342 r!7292)))))))

(declare-fun lt!2160410 () Unit!153178)

(declare-fun e!3286384 () Unit!153178)

(assert (=> b!5285853 (= lt!2160410 e!3286384)))

(declare-fun c!916594 () Bool)

(declare-fun nullable!5084 (Regex!14915) Bool)

(assert (=> b!5285853 (= c!916594 (nullable!5084 (h!67368 (exprs!4799 (h!67369 zl!343)))))))

(declare-fun lambda!267296 () Int)

(declare-fun flatMap!642 ((InoxSet Context!8598) Int) (InoxSet Context!8598))

(declare-fun derivationStepZipperUp!287 (Context!8598 C!30100) (InoxSet Context!8598))

(assert (=> b!5285853 (= (flatMap!642 z!1189 lambda!267296) (derivationStepZipperUp!287 (h!67369 zl!343) (h!67370 s!2326)))))

(declare-fun lt!2160396 () Unit!153178)

(declare-fun lemmaFlatMapOnSingletonSet!174 ((InoxSet Context!8598) Context!8598 Int) Unit!153178)

(assert (=> b!5285853 (= lt!2160396 (lemmaFlatMapOnSingletonSet!174 z!1189 (h!67369 zl!343) lambda!267296))))

(declare-fun lt!2160418 () (InoxSet Context!8598))

(declare-fun lt!2160414 () Context!8598)

(assert (=> b!5285853 (= lt!2160418 (derivationStepZipperUp!287 lt!2160414 (h!67370 s!2326)))))

(declare-fun lt!2160386 () (InoxSet Context!8598))

(declare-fun derivationStepZipperDown!363 (Regex!14915 Context!8598 C!30100) (InoxSet Context!8598))

(assert (=> b!5285853 (= lt!2160386 (derivationStepZipperDown!363 (h!67368 (exprs!4799 (h!67369 zl!343))) lt!2160414 (h!67370 s!2326)))))

(assert (=> b!5285853 (= lt!2160414 (Context!8599 (t!374247 (exprs!4799 (h!67369 zl!343)))))))

(declare-fun lt!2160389 () (InoxSet Context!8598))

(assert (=> b!5285853 (= lt!2160389 (derivationStepZipperUp!287 (Context!8599 (Cons!60920 (h!67368 (exprs!4799 (h!67369 zl!343))) (t!374247 (exprs!4799 (h!67369 zl!343))))) (h!67370 s!2326)))))

(declare-fun b!5285854 () Bool)

(declare-fun res!2241820 () Bool)

(assert (=> b!5285854 (=> res!2241820 e!3286381)))

(declare-fun generalisedConcat!584 (List!61044) Regex!14915)

(assert (=> b!5285854 (= res!2241820 (not (= r!7292 (generalisedConcat!584 (exprs!4799 (h!67369 zl!343))))))))

(assert (=> b!5285855 (= e!3286381 e!3286390)))

(declare-fun res!2241828 () Bool)

(assert (=> b!5285855 (=> res!2241828 e!3286390)))

(declare-fun lt!2160394 () Bool)

(assert (=> b!5285855 (= res!2241828 (or (not (= lt!2160402 lt!2160394)) ((_ is Nil!60922) s!2326)))))

(declare-fun Exists!2096 (Int) Bool)

(assert (=> b!5285855 (= (Exists!2096 lambda!267294) (Exists!2096 lambda!267295))))

(declare-fun lt!2160403 () Unit!153178)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!750 (Regex!14915 Regex!14915 List!61046) Unit!153178)

(assert (=> b!5285855 (= lt!2160403 (lemmaExistCutMatchRandMatchRSpecEquivalent!750 (regOne!30342 r!7292) (regTwo!30342 r!7292) s!2326))))

(assert (=> b!5285855 (= lt!2160394 (Exists!2096 lambda!267294))))

(declare-datatypes ((tuple2!64228 0))(
  ( (tuple2!64229 (_1!35417 List!61046) (_2!35417 List!61046)) )
))
(declare-datatypes ((Option!15026 0))(
  ( (None!15025) (Some!15025 (v!51054 tuple2!64228)) )
))
(declare-fun isDefined!11729 (Option!15026) Bool)

(declare-fun findConcatSeparation!1440 (Regex!14915 Regex!14915 List!61046 List!61046 List!61046) Option!15026)

(assert (=> b!5285855 (= lt!2160394 (isDefined!11729 (findConcatSeparation!1440 (regOne!30342 r!7292) (regTwo!30342 r!7292) Nil!60922 s!2326 s!2326)))))

(declare-fun lt!2160391 () Unit!153178)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1204 (Regex!14915 Regex!14915 List!61046) Unit!153178)

(assert (=> b!5285855 (= lt!2160391 (lemmaFindConcatSeparationEquivalentToExists!1204 (regOne!30342 r!7292) (regTwo!30342 r!7292) s!2326))))

(declare-fun b!5285856 () Bool)

(declare-fun e!3286389 () Bool)

(declare-fun lt!2160392 () (InoxSet Context!8598))

(declare-fun matchZipper!1159 ((InoxSet Context!8598) List!61046) Bool)

(assert (=> b!5285856 (= e!3286389 (matchZipper!1159 lt!2160392 (t!374249 s!2326)))))

(declare-fun b!5285857 () Bool)

(declare-fun e!3286375 () Bool)

(declare-fun tp_is_empty!39083 () Bool)

(assert (=> b!5285857 (= e!3286375 tp_is_empty!39083)))

(declare-fun b!5285858 () Bool)

(declare-fun Unit!153180 () Unit!153178)

(assert (=> b!5285858 (= e!3286384 Unit!153180)))

(declare-fun b!5285859 () Bool)

(declare-fun e!3286392 () Bool)

(declare-fun e!3286374 () Bool)

(assert (=> b!5285859 (= e!3286392 e!3286374)))

(declare-fun res!2241825 () Bool)

(assert (=> b!5285859 (=> res!2241825 e!3286374)))

(declare-fun e!3286378 () Bool)

(assert (=> b!5285859 (= res!2241825 e!3286378)))

(declare-fun res!2241830 () Bool)

(assert (=> b!5285859 (=> (not res!2241830) (not e!3286378))))

(declare-fun lt!2160385 () Bool)

(declare-fun lt!2160409 () Bool)

(assert (=> b!5285859 (= res!2241830 (not (= lt!2160385 lt!2160409)))))

(assert (=> b!5285859 (= lt!2160385 (matchZipper!1159 lt!2160386 (t!374249 s!2326)))))

(declare-fun lt!2160381 () (InoxSet Context!8598))

(assert (=> b!5285859 (= (matchZipper!1159 lt!2160381 (t!374249 s!2326)) e!3286389)))

(declare-fun res!2241827 () Bool)

(assert (=> b!5285859 (=> res!2241827 e!3286389)))

(assert (=> b!5285859 (= res!2241827 lt!2160409)))

(declare-fun lt!2160400 () (InoxSet Context!8598))

(assert (=> b!5285859 (= lt!2160409 (matchZipper!1159 lt!2160400 (t!374249 s!2326)))))

(declare-fun lt!2160395 () Unit!153178)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!152 ((InoxSet Context!8598) (InoxSet Context!8598) List!61046) Unit!153178)

(assert (=> b!5285859 (= lt!2160395 (lemmaZipperConcatMatchesSameAsBothZippers!152 lt!2160400 lt!2160392 (t!374249 s!2326)))))

(assert (=> b!5285860 (= e!3286377 true)))

(assert (=> b!5285860 (= (isDefined!11729 (findConcatSeparation!1440 (regOne!30342 (regOne!30342 r!7292)) lt!2160404 Nil!60922 s!2326 s!2326)) (Exists!2096 lambda!267297))))

(declare-fun lt!2160387 () Unit!153178)

(assert (=> b!5285860 (= lt!2160387 (lemmaFindConcatSeparationEquivalentToExists!1204 (regOne!30342 (regOne!30342 r!7292)) lt!2160404 s!2326))))

(declare-fun lt!2160388 () Bool)

(declare-fun lt!2160383 () Regex!14915)

(assert (=> b!5285860 (= lt!2160388 (matchRSpec!2018 lt!2160383 s!2326))))

(declare-fun lt!2160399 () Unit!153178)

(assert (=> b!5285860 (= lt!2160399 (mainMatchTheorem!2018 lt!2160383 s!2326))))

(declare-fun lt!2160406 () (InoxSet Context!8598))

(assert (=> b!5285860 (= (matchR!7100 lt!2160404 s!2326) (matchZipper!1159 lt!2160406 s!2326))))

(declare-fun lt!2160393 () Context!8598)

(declare-fun lt!2160380 () Unit!153178)

(declare-fun theoremZipperRegexEquiv!325 ((InoxSet Context!8598) List!61045 Regex!14915 List!61046) Unit!153178)

(assert (=> b!5285860 (= lt!2160380 (theoremZipperRegexEquiv!325 lt!2160406 (Cons!60921 lt!2160393 Nil!60921) lt!2160404 s!2326))))

(declare-fun lt!2160384 () List!61044)

(assert (=> b!5285860 (= lt!2160404 (generalisedConcat!584 lt!2160384))))

(declare-fun lt!2160407 () (InoxSet Context!8598))

(assert (=> b!5285860 (= lt!2160388 (matchZipper!1159 lt!2160407 s!2326))))

(assert (=> b!5285860 (= lt!2160388 (matchR!7100 lt!2160383 s!2326))))

(declare-fun lt!2160411 () Unit!153178)

(assert (=> b!5285860 (= lt!2160411 (theoremZipperRegexEquiv!325 lt!2160407 lt!2160397 lt!2160383 s!2326))))

(declare-fun lt!2160413 () List!61044)

(assert (=> b!5285860 (= lt!2160383 (generalisedConcat!584 lt!2160413))))

(declare-fun b!5285861 () Bool)

(declare-fun res!2241835 () Bool)

(assert (=> b!5285861 (=> (not res!2241835) (not e!3286380))))

(declare-fun unfocusZipper!657 (List!61045) Regex!14915)

(assert (=> b!5285861 (= res!2241835 (= r!7292 (unfocusZipper!657 zl!343)))))

(declare-fun setIsEmpty!33905 () Bool)

(declare-fun setRes!33905 () Bool)

(assert (=> setIsEmpty!33905 setRes!33905))

(declare-fun b!5285862 () Bool)

(declare-fun tp!1476117 () Bool)

(declare-fun tp!1476125 () Bool)

(assert (=> b!5285862 (= e!3286375 (and tp!1476117 tp!1476125))))

(declare-fun b!5285863 () Bool)

(assert (=> b!5285863 (= e!3286386 e!3286392)))

(declare-fun res!2241818 () Bool)

(assert (=> b!5285863 (=> res!2241818 e!3286392)))

(assert (=> b!5285863 (= res!2241818 (not (= lt!2160386 lt!2160381)))))

(assert (=> b!5285863 (= lt!2160381 ((_ map or) lt!2160400 lt!2160392))))

(assert (=> b!5285863 (= lt!2160392 (derivationStepZipperDown!363 (regTwo!30342 (regOne!30342 r!7292)) lt!2160414 (h!67370 s!2326)))))

(assert (=> b!5285863 (= lt!2160400 (derivationStepZipperDown!363 (regOne!30342 (regOne!30342 r!7292)) lt!2160393 (h!67370 s!2326)))))

(assert (=> b!5285863 (= lt!2160393 (Context!8599 lt!2160384))))

(assert (=> b!5285863 (= lt!2160384 (Cons!60920 (regTwo!30342 (regOne!30342 r!7292)) (t!374247 (exprs!4799 (h!67369 zl!343)))))))

(declare-fun b!5285864 () Bool)

(declare-fun tp!1476124 () Bool)

(declare-fun tp!1476118 () Bool)

(assert (=> b!5285864 (= e!3286375 (and tp!1476124 tp!1476118))))

(declare-fun b!5285865 () Bool)

(declare-fun e!3286385 () Bool)

(assert (=> b!5285865 (= e!3286374 e!3286385)))

(declare-fun res!2241839 () Bool)

(assert (=> b!5285865 (=> res!2241839 e!3286385)))

(declare-fun lt!2160382 () (InoxSet Context!8598))

(declare-fun lt!2160415 () (InoxSet Context!8598))

(assert (=> b!5285865 (= res!2241839 (not (= lt!2160382 lt!2160415)))))

(declare-fun lt!2160417 () (InoxSet Context!8598))

(assert (=> b!5285865 (= lt!2160415 ((_ map or) lt!2160400 lt!2160417))))

(assert (=> b!5285865 (= lt!2160417 (derivationStepZipperUp!287 lt!2160393 (h!67370 s!2326)))))

(assert (=> b!5285865 (= (flatMap!642 lt!2160407 lambda!267296) (derivationStepZipperUp!287 lt!2160416 (h!67370 s!2326)))))

(declare-fun lt!2160412 () Unit!153178)

(assert (=> b!5285865 (= lt!2160412 (lemmaFlatMapOnSingletonSet!174 lt!2160407 lt!2160416 lambda!267296))))

(declare-fun lt!2160390 () (InoxSet Context!8598))

(assert (=> b!5285865 (= lt!2160390 (derivationStepZipperUp!287 lt!2160416 (h!67370 s!2326)))))

(declare-fun derivationStepZipper!1158 ((InoxSet Context!8598) C!30100) (InoxSet Context!8598))

(assert (=> b!5285865 (= lt!2160382 (derivationStepZipper!1158 lt!2160407 (h!67370 s!2326)))))

(assert (=> b!5285865 (= lt!2160406 (store ((as const (Array Context!8598 Bool)) false) lt!2160393 true))))

(assert (=> b!5285865 (= lt!2160407 (store ((as const (Array Context!8598 Bool)) false) lt!2160416 true))))

(assert (=> b!5285865 (= lt!2160416 (Context!8599 lt!2160413))))

(assert (=> b!5285865 (= lt!2160413 (Cons!60920 (regOne!30342 (regOne!30342 r!7292)) lt!2160384))))

(declare-fun b!5285866 () Bool)

(declare-fun res!2241832 () Bool)

(assert (=> b!5285866 (=> res!2241832 e!3286381)))

(assert (=> b!5285866 (= res!2241832 (not ((_ is Cons!60920) (exprs!4799 (h!67369 zl!343)))))))

(declare-fun b!5285867 () Bool)

(declare-fun e!3286387 () Bool)

(declare-fun tp!1476122 () Bool)

(assert (=> b!5285867 (= e!3286387 tp!1476122)))

(declare-fun setElem!33905 () Context!8598)

(declare-fun setNonEmpty!33905 () Bool)

(declare-fun e!3286388 () Bool)

(declare-fun tp!1476116 () Bool)

(declare-fun inv!80534 (Context!8598) Bool)

(assert (=> setNonEmpty!33905 (= setRes!33905 (and tp!1476116 (inv!80534 setElem!33905) e!3286388))))

(declare-fun setRest!33905 () (InoxSet Context!8598))

(assert (=> setNonEmpty!33905 (= z!1189 ((_ map or) (store ((as const (Array Context!8598 Bool)) false) setElem!33905 true) setRest!33905))))

(declare-fun res!2241824 () Bool)

(assert (=> start!558030 (=> (not res!2241824) (not e!3286380))))

(declare-fun validRegex!6651 (Regex!14915) Bool)

(assert (=> start!558030 (= res!2241824 (validRegex!6651 r!7292))))

(assert (=> start!558030 e!3286380))

(assert (=> start!558030 e!3286375))

(declare-fun condSetEmpty!33905 () Bool)

(assert (=> start!558030 (= condSetEmpty!33905 (= z!1189 ((as const (Array Context!8598 Bool)) false)))))

(assert (=> start!558030 setRes!33905))

(declare-fun e!3286379 () Bool)

(assert (=> start!558030 e!3286379))

(declare-fun e!3286376 () Bool)

(assert (=> start!558030 e!3286376))

(declare-fun b!5285868 () Bool)

(assert (=> b!5285868 (= e!3286385 e!3286383)))

(declare-fun res!2241816 () Bool)

(assert (=> b!5285868 (=> res!2241816 e!3286383)))

(declare-fun e!3286373 () Bool)

(assert (=> b!5285868 (= res!2241816 e!3286373)))

(declare-fun res!2241826 () Bool)

(assert (=> b!5285868 (=> (not res!2241826) (not e!3286373))))

(assert (=> b!5285868 (= res!2241826 (not (= lt!2160385 (matchZipper!1159 lt!2160382 (t!374249 s!2326)))))))

(declare-fun e!3286391 () Bool)

(assert (=> b!5285868 (= (matchZipper!1159 lt!2160415 (t!374249 s!2326)) e!3286391)))

(declare-fun res!2241831 () Bool)

(assert (=> b!5285868 (=> res!2241831 e!3286391)))

(assert (=> b!5285868 (= res!2241831 lt!2160409)))

(declare-fun lt!2160405 () Unit!153178)

(assert (=> b!5285868 (= lt!2160405 (lemmaZipperConcatMatchesSameAsBothZippers!152 lt!2160400 lt!2160417 (t!374249 s!2326)))))

(assert (=> b!5285868 (= (flatMap!642 lt!2160406 lambda!267296) (derivationStepZipperUp!287 lt!2160393 (h!67370 s!2326)))))

(declare-fun lt!2160401 () Unit!153178)

(assert (=> b!5285868 (= lt!2160401 (lemmaFlatMapOnSingletonSet!174 lt!2160406 lt!2160393 lambda!267296))))

(declare-fun b!5285869 () Bool)

(assert (=> b!5285869 (= e!3286383 e!3286377)))

(declare-fun res!2241817 () Bool)

(assert (=> b!5285869 (=> res!2241817 e!3286377)))

(declare-fun zipperDepthTotal!76 (List!61045) Int)

(assert (=> b!5285869 (= res!2241817 (>= (zipperDepthTotal!76 lt!2160397) (zipperDepthTotal!76 zl!343)))))

(assert (=> b!5285869 (= lt!2160397 (Cons!60921 lt!2160416 Nil!60921))))

(declare-fun b!5285870 () Bool)

(declare-fun res!2241837 () Bool)

(assert (=> b!5285870 (=> res!2241837 e!3286386)))

(assert (=> b!5285870 (= res!2241837 (not (nullable!5084 (regOne!30342 (regOne!30342 r!7292)))))))

(declare-fun b!5285871 () Bool)

(declare-fun res!2241821 () Bool)

(assert (=> b!5285871 (=> res!2241821 e!3286381)))

(assert (=> b!5285871 (= res!2241821 (or ((_ is EmptyExpr!14915) r!7292) ((_ is EmptyLang!14915) r!7292) ((_ is ElementMatch!14915) r!7292) ((_ is Union!14915) r!7292) (not ((_ is Concat!23760) r!7292))))))

(declare-fun b!5285872 () Bool)

(declare-fun tp!1476121 () Bool)

(assert (=> b!5285872 (= e!3286376 (and tp_is_empty!39083 tp!1476121))))

(declare-fun b!5285873 () Bool)

(assert (=> b!5285873 (= e!3286373 (not (matchZipper!1159 (derivationStepZipper!1158 lt!2160406 (h!67370 s!2326)) (t!374249 s!2326))))))

(declare-fun b!5285874 () Bool)

(declare-fun Unit!153181 () Unit!153178)

(assert (=> b!5285874 (= e!3286384 Unit!153181)))

(declare-fun lt!2160398 () Unit!153178)

(assert (=> b!5285874 (= lt!2160398 (lemmaZipperConcatMatchesSameAsBothZippers!152 lt!2160386 lt!2160418 (t!374249 s!2326)))))

(declare-fun res!2241836 () Bool)

(assert (=> b!5285874 (= res!2241836 (matchZipper!1159 lt!2160386 (t!374249 s!2326)))))

(declare-fun e!3286382 () Bool)

(assert (=> b!5285874 (=> res!2241836 e!3286382)))

(assert (=> b!5285874 (= (matchZipper!1159 ((_ map or) lt!2160386 lt!2160418) (t!374249 s!2326)) e!3286382)))

(declare-fun b!5285875 () Bool)

(assert (=> b!5285875 (= e!3286391 (matchZipper!1159 lt!2160417 (t!374249 s!2326)))))

(declare-fun b!5285876 () Bool)

(declare-fun tp!1476120 () Bool)

(assert (=> b!5285876 (= e!3286379 (and (inv!80534 (h!67369 zl!343)) e!3286387 tp!1476120))))

(declare-fun b!5285877 () Bool)

(assert (=> b!5285877 (= e!3286378 (not (matchZipper!1159 lt!2160392 (t!374249 s!2326))))))

(declare-fun b!5285878 () Bool)

(declare-fun tp!1476119 () Bool)

(assert (=> b!5285878 (= e!3286375 tp!1476119)))

(declare-fun b!5285879 () Bool)

(declare-fun res!2241815 () Bool)

(assert (=> b!5285879 (=> res!2241815 e!3286381)))

(declare-fun isEmpty!32875 (List!61045) Bool)

(assert (=> b!5285879 (= res!2241815 (not (isEmpty!32875 (t!374248 zl!343))))))

(declare-fun b!5285880 () Bool)

(declare-fun res!2241829 () Bool)

(assert (=> b!5285880 (=> res!2241829 e!3286383)))

(assert (=> b!5285880 (= res!2241829 (not (= (exprs!4799 (h!67369 zl!343)) (Cons!60920 (Concat!23760 (regOne!30342 (regOne!30342 r!7292)) (regTwo!30342 (regOne!30342 r!7292))) (t!374247 (exprs!4799 (h!67369 zl!343)))))))))

(declare-fun b!5285881 () Bool)

(declare-fun res!2241834 () Bool)

(assert (=> b!5285881 (=> res!2241834 e!3286390)))

(declare-fun isEmpty!32876 (List!61044) Bool)

(assert (=> b!5285881 (= res!2241834 (isEmpty!32876 (t!374247 (exprs!4799 (h!67369 zl!343)))))))

(declare-fun b!5285882 () Bool)

(assert (=> b!5285882 (= e!3286382 (matchZipper!1159 lt!2160418 (t!374249 s!2326)))))

(declare-fun b!5285883 () Bool)

(declare-fun tp!1476123 () Bool)

(assert (=> b!5285883 (= e!3286388 tp!1476123)))

(assert (= (and start!558030 res!2241824) b!5285850))

(assert (= (and b!5285850 res!2241822) b!5285861))

(assert (= (and b!5285861 res!2241835) b!5285851))

(assert (= (and b!5285851 (not res!2241838)) b!5285879))

(assert (= (and b!5285879 (not res!2241815)) b!5285854))

(assert (= (and b!5285854 (not res!2241820)) b!5285866))

(assert (= (and b!5285866 (not res!2241832)) b!5285849))

(assert (= (and b!5285849 (not res!2241814)) b!5285871))

(assert (= (and b!5285871 (not res!2241821)) b!5285855))

(assert (= (and b!5285855 (not res!2241828)) b!5285881))

(assert (= (and b!5285881 (not res!2241834)) b!5285853))

(assert (= (and b!5285853 c!916594) b!5285874))

(assert (= (and b!5285853 (not c!916594)) b!5285858))

(assert (= (and b!5285874 (not res!2241836)) b!5285882))

(assert (= (and b!5285853 (not res!2241833)) b!5285870))

(assert (= (and b!5285870 (not res!2241837)) b!5285863))

(assert (= (and b!5285863 (not res!2241818)) b!5285859))

(assert (= (and b!5285859 (not res!2241827)) b!5285856))

(assert (= (and b!5285859 res!2241830) b!5285877))

(assert (= (and b!5285859 (not res!2241825)) b!5285865))

(assert (= (and b!5285865 (not res!2241839)) b!5285868))

(assert (= (and b!5285868 (not res!2241831)) b!5285875))

(assert (= (and b!5285868 res!2241826) b!5285873))

(assert (= (and b!5285868 (not res!2241816)) b!5285880))

(assert (= (and b!5285880 (not res!2241829)) b!5285848))

(assert (= (and b!5285848 (not res!2241823)) b!5285869))

(assert (= (and b!5285869 (not res!2241817)) b!5285852))

(assert (= (and b!5285852 (not res!2241819)) b!5285860))

(assert (= (and start!558030 ((_ is ElementMatch!14915) r!7292)) b!5285857))

(assert (= (and start!558030 ((_ is Concat!23760) r!7292)) b!5285864))

(assert (= (and start!558030 ((_ is Star!14915) r!7292)) b!5285878))

(assert (= (and start!558030 ((_ is Union!14915) r!7292)) b!5285862))

(assert (= (and start!558030 condSetEmpty!33905) setIsEmpty!33905))

(assert (= (and start!558030 (not condSetEmpty!33905)) setNonEmpty!33905))

(assert (= setNonEmpty!33905 b!5285883))

(assert (= b!5285876 b!5285867))

(assert (= (and start!558030 ((_ is Cons!60921) zl!343)) b!5285876))

(assert (= (and start!558030 ((_ is Cons!60922) s!2326)) b!5285872))

(declare-fun m!6323372 () Bool)

(assert (=> b!5285868 m!6323372))

(declare-fun m!6323374 () Bool)

(assert (=> b!5285868 m!6323374))

(declare-fun m!6323376 () Bool)

(assert (=> b!5285868 m!6323376))

(declare-fun m!6323378 () Bool)

(assert (=> b!5285868 m!6323378))

(declare-fun m!6323380 () Bool)

(assert (=> b!5285868 m!6323380))

(declare-fun m!6323382 () Bool)

(assert (=> b!5285868 m!6323382))

(declare-fun m!6323384 () Bool)

(assert (=> b!5285855 m!6323384))

(assert (=> b!5285855 m!6323384))

(declare-fun m!6323386 () Bool)

(assert (=> b!5285855 m!6323386))

(declare-fun m!6323388 () Bool)

(assert (=> b!5285855 m!6323388))

(declare-fun m!6323390 () Bool)

(assert (=> b!5285855 m!6323390))

(declare-fun m!6323392 () Bool)

(assert (=> b!5285855 m!6323392))

(assert (=> b!5285855 m!6323386))

(declare-fun m!6323394 () Bool)

(assert (=> b!5285855 m!6323394))

(declare-fun m!6323396 () Bool)

(assert (=> b!5285870 m!6323396))

(declare-fun m!6323398 () Bool)

(assert (=> b!5285861 m!6323398))

(declare-fun m!6323400 () Bool)

(assert (=> b!5285865 m!6323400))

(declare-fun m!6323402 () Bool)

(assert (=> b!5285865 m!6323402))

(declare-fun m!6323404 () Bool)

(assert (=> b!5285865 m!6323404))

(declare-fun m!6323406 () Bool)

(assert (=> b!5285865 m!6323406))

(declare-fun m!6323408 () Bool)

(assert (=> b!5285865 m!6323408))

(declare-fun m!6323410 () Bool)

(assert (=> b!5285865 m!6323410))

(assert (=> b!5285865 m!6323382))

(declare-fun m!6323412 () Bool)

(assert (=> b!5285873 m!6323412))

(assert (=> b!5285873 m!6323412))

(declare-fun m!6323414 () Bool)

(assert (=> b!5285873 m!6323414))

(declare-fun m!6323416 () Bool)

(assert (=> b!5285874 m!6323416))

(declare-fun m!6323418 () Bool)

(assert (=> b!5285874 m!6323418))

(declare-fun m!6323420 () Bool)

(assert (=> b!5285874 m!6323420))

(assert (=> b!5285859 m!6323418))

(declare-fun m!6323422 () Bool)

(assert (=> b!5285859 m!6323422))

(declare-fun m!6323424 () Bool)

(assert (=> b!5285859 m!6323424))

(declare-fun m!6323426 () Bool)

(assert (=> b!5285859 m!6323426))

(declare-fun m!6323428 () Bool)

(assert (=> b!5285879 m!6323428))

(declare-fun m!6323430 () Bool)

(assert (=> b!5285876 m!6323430))

(declare-fun m!6323432 () Bool)

(assert (=> b!5285860 m!6323432))

(declare-fun m!6323434 () Bool)

(assert (=> b!5285860 m!6323434))

(declare-fun m!6323436 () Bool)

(assert (=> b!5285860 m!6323436))

(declare-fun m!6323438 () Bool)

(assert (=> b!5285860 m!6323438))

(declare-fun m!6323440 () Bool)

(assert (=> b!5285860 m!6323440))

(assert (=> b!5285860 m!6323438))

(declare-fun m!6323442 () Bool)

(assert (=> b!5285860 m!6323442))

(declare-fun m!6323444 () Bool)

(assert (=> b!5285860 m!6323444))

(declare-fun m!6323446 () Bool)

(assert (=> b!5285860 m!6323446))

(declare-fun m!6323448 () Bool)

(assert (=> b!5285860 m!6323448))

(declare-fun m!6323450 () Bool)

(assert (=> b!5285860 m!6323450))

(declare-fun m!6323452 () Bool)

(assert (=> b!5285860 m!6323452))

(declare-fun m!6323454 () Bool)

(assert (=> b!5285860 m!6323454))

(declare-fun m!6323456 () Bool)

(assert (=> b!5285860 m!6323456))

(declare-fun m!6323458 () Bool)

(assert (=> b!5285860 m!6323458))

(declare-fun m!6323460 () Bool)

(assert (=> b!5285853 m!6323460))

(declare-fun m!6323462 () Bool)

(assert (=> b!5285853 m!6323462))

(declare-fun m!6323464 () Bool)

(assert (=> b!5285853 m!6323464))

(declare-fun m!6323466 () Bool)

(assert (=> b!5285853 m!6323466))

(declare-fun m!6323468 () Bool)

(assert (=> b!5285853 m!6323468))

(declare-fun m!6323470 () Bool)

(assert (=> b!5285853 m!6323470))

(declare-fun m!6323472 () Bool)

(assert (=> b!5285853 m!6323472))

(declare-fun m!6323474 () Bool)

(assert (=> b!5285852 m!6323474))

(declare-fun m!6323476 () Bool)

(assert (=> b!5285852 m!6323476))

(declare-fun m!6323478 () Bool)

(assert (=> b!5285856 m!6323478))

(declare-fun m!6323480 () Bool)

(assert (=> b!5285882 m!6323480))

(declare-fun m!6323482 () Bool)

(assert (=> b!5285848 m!6323482))

(declare-fun m!6323484 () Bool)

(assert (=> b!5285848 m!6323484))

(declare-fun m!6323486 () Bool)

(assert (=> b!5285875 m!6323486))

(declare-fun m!6323488 () Bool)

(assert (=> b!5285854 m!6323488))

(declare-fun m!6323490 () Bool)

(assert (=> b!5285881 m!6323490))

(declare-fun m!6323492 () Bool)

(assert (=> b!5285849 m!6323492))

(assert (=> b!5285849 m!6323492))

(declare-fun m!6323494 () Bool)

(assert (=> b!5285849 m!6323494))

(declare-fun m!6323496 () Bool)

(assert (=> b!5285869 m!6323496))

(declare-fun m!6323498 () Bool)

(assert (=> b!5285869 m!6323498))

(declare-fun m!6323500 () Bool)

(assert (=> b!5285863 m!6323500))

(declare-fun m!6323502 () Bool)

(assert (=> b!5285863 m!6323502))

(declare-fun m!6323504 () Bool)

(assert (=> start!558030 m!6323504))

(assert (=> b!5285877 m!6323478))

(declare-fun m!6323506 () Bool)

(assert (=> setNonEmpty!33905 m!6323506))

(declare-fun m!6323508 () Bool)

(assert (=> b!5285851 m!6323508))

(declare-fun m!6323510 () Bool)

(assert (=> b!5285851 m!6323510))

(declare-fun m!6323512 () Bool)

(assert (=> b!5285851 m!6323512))

(declare-fun m!6323514 () Bool)

(assert (=> b!5285850 m!6323514))

(check-sat (not b!5285876) (not b!5285851) (not b!5285852) (not b!5285860) (not b!5285872) (not b!5285862) (not b!5285874) (not setNonEmpty!33905) (not b!5285853) (not b!5285878) (not b!5285867) (not b!5285861) (not b!5285856) (not b!5285865) (not b!5285875) (not b!5285863) (not b!5285854) (not b!5285879) (not b!5285873) (not b!5285883) (not b!5285855) tp_is_empty!39083 (not b!5285868) (not b!5285864) (not b!5285870) (not b!5285848) (not b!5285849) (not b!5285882) (not b!5285881) (not b!5285869) (not b!5285877) (not b!5285859) (not start!558030) (not b!5285850))
(check-sat)
