; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632194 () Bool)

(assert start!632194)

(declare-fun b!6381287 () Bool)

(assert (=> b!6381287 true))

(assert (=> b!6381287 true))

(declare-fun lambda!352011 () Int)

(declare-fun lambda!352010 () Int)

(assert (=> b!6381287 (not (= lambda!352011 lambda!352010))))

(assert (=> b!6381287 true))

(assert (=> b!6381287 true))

(declare-fun b!6381278 () Bool)

(assert (=> b!6381278 true))

(declare-fun bs!1597177 () Bool)

(declare-fun b!6381302 () Bool)

(assert (= bs!1597177 (and b!6381302 b!6381287)))

(declare-datatypes ((C!32864 0))(
  ( (C!32865 (val!26134 Int)) )
))
(declare-datatypes ((Regex!16297 0))(
  ( (ElementMatch!16297 (c!1162662 C!32864)) (Concat!25142 (regOne!33106 Regex!16297) (regTwo!33106 Regex!16297)) (EmptyExpr!16297) (Star!16297 (reg!16626 Regex!16297)) (EmptyLang!16297) (Union!16297 (regOne!33107 Regex!16297) (regTwo!33107 Regex!16297)) )
))
(declare-fun r!7292 () Regex!16297)

(declare-fun lambda!352013 () Int)

(declare-fun lt!2370530 () Regex!16297)

(assert (=> bs!1597177 (= (= lt!2370530 (regOne!33106 r!7292)) (= lambda!352013 lambda!352010))))

(assert (=> bs!1597177 (not (= lambda!352013 lambda!352011))))

(assert (=> b!6381302 true))

(assert (=> b!6381302 true))

(assert (=> b!6381302 true))

(declare-fun b!6381274 () Bool)

(declare-fun res!2624910 () Bool)

(declare-fun e!3873664 () Bool)

(assert (=> b!6381274 (=> res!2624910 e!3873664)))

(declare-datatypes ((List!65190 0))(
  ( (Nil!65066) (Cons!65066 (h!71514 C!32864) (t!378794 List!65190)) )
))
(declare-fun s!2326 () List!65190)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65191 0))(
  ( (Nil!65067) (Cons!65067 (h!71515 Regex!16297) (t!378795 List!65191)) )
))
(declare-datatypes ((Context!11362 0))(
  ( (Context!11363 (exprs!6181 List!65191)) )
))
(declare-fun lt!2370539 () (InoxSet Context!11362))

(declare-fun lt!2370520 () (InoxSet Context!11362))

(declare-fun matchZipper!2309 ((InoxSet Context!11362) List!65190) Bool)

(assert (=> b!6381274 (= res!2624910 (not (= (matchZipper!2309 lt!2370539 s!2326) (matchZipper!2309 lt!2370520 (t!378794 s!2326)))))))

(declare-fun b!6381275 () Bool)

(declare-fun e!3873672 () Bool)

(declare-fun tp!1775784 () Bool)

(declare-fun tp!1775787 () Bool)

(assert (=> b!6381275 (= e!3873672 (and tp!1775784 tp!1775787))))

(declare-fun b!6381276 () Bool)

(declare-fun e!3873669 () Bool)

(assert (=> b!6381276 (= e!3873664 e!3873669)))

(declare-fun res!2624924 () Bool)

(assert (=> b!6381276 (=> res!2624924 e!3873669)))

(declare-fun lt!2370516 () Regex!16297)

(assert (=> b!6381276 (= res!2624924 (not (= r!7292 lt!2370516)))))

(assert (=> b!6381276 (= lt!2370516 (Concat!25142 lt!2370530 (regTwo!33106 r!7292)))))

(declare-fun b!6381277 () Bool)

(declare-fun res!2624911 () Bool)

(declare-fun e!3873677 () Bool)

(assert (=> b!6381277 (=> (not res!2624911) (not e!3873677))))

(declare-fun z!1189 () (InoxSet Context!11362))

(declare-datatypes ((List!65192 0))(
  ( (Nil!65068) (Cons!65068 (h!71516 Context!11362) (t!378796 List!65192)) )
))
(declare-fun zl!343 () List!65192)

(declare-fun toList!10081 ((InoxSet Context!11362)) List!65192)

(assert (=> b!6381277 (= res!2624911 (= (toList!10081 z!1189) zl!343))))

(declare-fun e!3873670 () Bool)

(declare-fun e!3873675 () Bool)

(assert (=> b!6381278 (= e!3873670 e!3873675)))

(declare-fun res!2624925 () Bool)

(assert (=> b!6381278 (=> res!2624925 e!3873675)))

(get-info :version)

(assert (=> b!6381278 (= res!2624925 (or (and ((_ is ElementMatch!16297) (regOne!33106 r!7292)) (= (c!1162662 (regOne!33106 r!7292)) (h!71514 s!2326))) ((_ is Union!16297) (regOne!33106 r!7292))))))

(declare-datatypes ((Unit!158519 0))(
  ( (Unit!158520) )
))
(declare-fun lt!2370528 () Unit!158519)

(declare-fun e!3873681 () Unit!158519)

(assert (=> b!6381278 (= lt!2370528 e!3873681)))

(declare-fun c!1162661 () Bool)

(declare-fun nullable!6290 (Regex!16297) Bool)

(assert (=> b!6381278 (= c!1162661 (nullable!6290 (h!71515 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun lambda!352012 () Int)

(declare-fun flatMap!1802 ((InoxSet Context!11362) Int) (InoxSet Context!11362))

(declare-fun derivationStepZipperUp!1471 (Context!11362 C!32864) (InoxSet Context!11362))

(assert (=> b!6381278 (= (flatMap!1802 z!1189 lambda!352012) (derivationStepZipperUp!1471 (h!71516 zl!343) (h!71514 s!2326)))))

(declare-fun lt!2370519 () Unit!158519)

(declare-fun lemmaFlatMapOnSingletonSet!1328 ((InoxSet Context!11362) Context!11362 Int) Unit!158519)

(assert (=> b!6381278 (= lt!2370519 (lemmaFlatMapOnSingletonSet!1328 z!1189 (h!71516 zl!343) lambda!352012))))

(declare-fun lt!2370536 () (InoxSet Context!11362))

(declare-fun lt!2370515 () Context!11362)

(assert (=> b!6381278 (= lt!2370536 (derivationStepZipperUp!1471 lt!2370515 (h!71514 s!2326)))))

(declare-fun lt!2370525 () (InoxSet Context!11362))

(declare-fun derivationStepZipperDown!1545 (Regex!16297 Context!11362 C!32864) (InoxSet Context!11362))

(assert (=> b!6381278 (= lt!2370525 (derivationStepZipperDown!1545 (h!71515 (exprs!6181 (h!71516 zl!343))) lt!2370515 (h!71514 s!2326)))))

(assert (=> b!6381278 (= lt!2370515 (Context!11363 (t!378795 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun lt!2370543 () (InoxSet Context!11362))

(assert (=> b!6381278 (= lt!2370543 (derivationStepZipperUp!1471 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343))))) (h!71514 s!2326)))))

(declare-fun b!6381279 () Bool)

(declare-fun res!2624913 () Bool)

(declare-fun e!3873666 () Bool)

(assert (=> b!6381279 (=> res!2624913 e!3873666)))

(declare-fun generalisedUnion!2141 (List!65191) Regex!16297)

(declare-fun unfocusZipperList!1718 (List!65192) List!65191)

(assert (=> b!6381279 (= res!2624913 (not (= r!7292 (generalisedUnion!2141 (unfocusZipperList!1718 zl!343)))))))

(declare-fun b!6381280 () Bool)

(declare-fun res!2624909 () Bool)

(assert (=> b!6381280 (=> res!2624909 e!3873670)))

(declare-fun isEmpty!37195 (List!65191) Bool)

(assert (=> b!6381280 (= res!2624909 (isEmpty!37195 (t!378795 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun b!6381281 () Bool)

(declare-fun e!3873667 () Bool)

(assert (=> b!6381281 (= e!3873667 e!3873664)))

(declare-fun res!2624907 () Bool)

(assert (=> b!6381281 (=> res!2624907 e!3873664)))

(declare-fun lt!2370521 () (InoxSet Context!11362))

(assert (=> b!6381281 (= res!2624907 (not (= lt!2370520 lt!2370521)))))

(declare-fun lt!2370511 () Context!11362)

(assert (=> b!6381281 (= (flatMap!1802 lt!2370539 lambda!352012) (derivationStepZipperUp!1471 lt!2370511 (h!71514 s!2326)))))

(declare-fun lt!2370524 () Unit!158519)

(assert (=> b!6381281 (= lt!2370524 (lemmaFlatMapOnSingletonSet!1328 lt!2370539 lt!2370511 lambda!352012))))

(declare-fun lt!2370533 () (InoxSet Context!11362))

(assert (=> b!6381281 (= lt!2370533 (derivationStepZipperUp!1471 lt!2370511 (h!71514 s!2326)))))

(declare-fun derivationStepZipper!2263 ((InoxSet Context!11362) C!32864) (InoxSet Context!11362))

(assert (=> b!6381281 (= lt!2370520 (derivationStepZipper!2263 lt!2370539 (h!71514 s!2326)))))

(assert (=> b!6381281 (= lt!2370539 (store ((as const (Array Context!11362 Bool)) false) lt!2370511 true))))

(declare-fun lt!2370529 () List!65191)

(assert (=> b!6381281 (= lt!2370511 (Context!11363 (Cons!65067 (reg!16626 (regOne!33106 r!7292)) lt!2370529)))))

(declare-fun b!6381282 () Bool)

(declare-fun e!3873671 () Bool)

(declare-fun tp!1775789 () Bool)

(declare-fun e!3873665 () Bool)

(declare-fun inv!83989 (Context!11362) Bool)

(assert (=> b!6381282 (= e!3873671 (and (inv!83989 (h!71516 zl!343)) e!3873665 tp!1775789))))

(declare-fun b!6381283 () Bool)

(declare-fun Unit!158521 () Unit!158519)

(assert (=> b!6381283 (= e!3873681 Unit!158521)))

(declare-fun b!6381284 () Bool)

(declare-fun Unit!158522 () Unit!158519)

(assert (=> b!6381284 (= e!3873681 Unit!158522)))

(declare-fun lt!2370531 () Unit!158519)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1128 ((InoxSet Context!11362) (InoxSet Context!11362) List!65190) Unit!158519)

(assert (=> b!6381284 (= lt!2370531 (lemmaZipperConcatMatchesSameAsBothZippers!1128 lt!2370525 lt!2370536 (t!378794 s!2326)))))

(declare-fun res!2624903 () Bool)

(assert (=> b!6381284 (= res!2624903 (matchZipper!2309 lt!2370525 (t!378794 s!2326)))))

(declare-fun e!3873679 () Bool)

(assert (=> b!6381284 (=> res!2624903 e!3873679)))

(assert (=> b!6381284 (= (matchZipper!2309 ((_ map or) lt!2370525 lt!2370536) (t!378794 s!2326)) e!3873679)))

(declare-fun b!6381285 () Bool)

(declare-fun res!2624918 () Bool)

(assert (=> b!6381285 (=> res!2624918 e!3873666)))

(declare-fun isEmpty!37196 (List!65192) Bool)

(assert (=> b!6381285 (= res!2624918 (not (isEmpty!37196 (t!378796 zl!343))))))

(declare-fun b!6381286 () Bool)

(declare-fun e!3873680 () Bool)

(declare-fun e!3873682 () Bool)

(assert (=> b!6381286 (= e!3873680 e!3873682)))

(declare-fun res!2624919 () Bool)

(assert (=> b!6381286 (=> res!2624919 e!3873682)))

(declare-fun lt!2370532 () Context!11362)

(declare-fun unfocusZipper!2039 (List!65192) Regex!16297)

(assert (=> b!6381286 (= res!2624919 (not (= (unfocusZipper!2039 (Cons!65068 lt!2370532 Nil!65068)) (reg!16626 (regOne!33106 r!7292)))))))

(declare-fun lt!2370544 () Context!11362)

(declare-fun lt!2370517 () (InoxSet Context!11362))

(assert (=> b!6381286 (= (flatMap!1802 lt!2370517 lambda!352012) (derivationStepZipperUp!1471 lt!2370544 (h!71514 s!2326)))))

(declare-fun lt!2370541 () Unit!158519)

(assert (=> b!6381286 (= lt!2370541 (lemmaFlatMapOnSingletonSet!1328 lt!2370517 lt!2370544 lambda!352012))))

(declare-fun lt!2370523 () (InoxSet Context!11362))

(assert (=> b!6381286 (= (flatMap!1802 lt!2370523 lambda!352012) (derivationStepZipperUp!1471 lt!2370532 (h!71514 s!2326)))))

(declare-fun lt!2370535 () Unit!158519)

(assert (=> b!6381286 (= lt!2370535 (lemmaFlatMapOnSingletonSet!1328 lt!2370523 lt!2370532 lambda!352012))))

(declare-fun lt!2370512 () (InoxSet Context!11362))

(assert (=> b!6381286 (= lt!2370512 (derivationStepZipperUp!1471 lt!2370544 (h!71514 s!2326)))))

(declare-fun lt!2370542 () (InoxSet Context!11362))

(assert (=> b!6381286 (= lt!2370542 (derivationStepZipperUp!1471 lt!2370532 (h!71514 s!2326)))))

(assert (=> b!6381286 (= lt!2370517 (store ((as const (Array Context!11362 Bool)) false) lt!2370544 true))))

(assert (=> b!6381286 (= lt!2370523 (store ((as const (Array Context!11362 Bool)) false) lt!2370532 true))))

(assert (=> b!6381286 (= lt!2370532 (Context!11363 (Cons!65067 (reg!16626 (regOne!33106 r!7292)) Nil!65067)))))

(assert (=> b!6381287 (= e!3873666 e!3873670)))

(declare-fun res!2624917 () Bool)

(assert (=> b!6381287 (=> res!2624917 e!3873670)))

(declare-fun lt!2370522 () Bool)

(declare-fun lt!2370513 () Bool)

(assert (=> b!6381287 (= res!2624917 (or (not (= lt!2370513 lt!2370522)) ((_ is Nil!65066) s!2326)))))

(declare-fun Exists!3367 (Int) Bool)

(assert (=> b!6381287 (= (Exists!3367 lambda!352010) (Exists!3367 lambda!352011))))

(declare-fun lt!2370526 () Unit!158519)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1904 (Regex!16297 Regex!16297 List!65190) Unit!158519)

(assert (=> b!6381287 (= lt!2370526 (lemmaExistCutMatchRandMatchRSpecEquivalent!1904 (regOne!33106 r!7292) (regTwo!33106 r!7292) s!2326))))

(assert (=> b!6381287 (= lt!2370522 (Exists!3367 lambda!352010))))

(declare-datatypes ((tuple2!66552 0))(
  ( (tuple2!66553 (_1!36579 List!65190) (_2!36579 List!65190)) )
))
(declare-datatypes ((Option!16188 0))(
  ( (None!16187) (Some!16187 (v!52356 tuple2!66552)) )
))
(declare-fun isDefined!12891 (Option!16188) Bool)

(declare-fun findConcatSeparation!2602 (Regex!16297 Regex!16297 List!65190 List!65190 List!65190) Option!16188)

(assert (=> b!6381287 (= lt!2370522 (isDefined!12891 (findConcatSeparation!2602 (regOne!33106 r!7292) (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326)))))

(declare-fun lt!2370514 () Unit!158519)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2366 (Regex!16297 Regex!16297 List!65190) Unit!158519)

(assert (=> b!6381287 (= lt!2370514 (lemmaFindConcatSeparationEquivalentToExists!2366 (regOne!33106 r!7292) (regTwo!33106 r!7292) s!2326))))

(declare-fun res!2624923 () Bool)

(assert (=> start!632194 (=> (not res!2624923) (not e!3873677))))

(declare-fun validRegex!8033 (Regex!16297) Bool)

(assert (=> start!632194 (= res!2624923 (validRegex!8033 r!7292))))

(assert (=> start!632194 e!3873677))

(assert (=> start!632194 e!3873672))

(declare-fun condSetEmpty!43556 () Bool)

(assert (=> start!632194 (= condSetEmpty!43556 (= z!1189 ((as const (Array Context!11362 Bool)) false)))))

(declare-fun setRes!43556 () Bool)

(assert (=> start!632194 setRes!43556))

(assert (=> start!632194 e!3873671))

(declare-fun e!3873663 () Bool)

(assert (=> start!632194 e!3873663))

(declare-fun b!6381288 () Bool)

(declare-fun e!3873676 () Bool)

(declare-fun tp!1775785 () Bool)

(assert (=> b!6381288 (= e!3873676 tp!1775785)))

(declare-fun b!6381289 () Bool)

(declare-fun res!2624912 () Bool)

(assert (=> b!6381289 (=> res!2624912 e!3873682)))

(assert (=> b!6381289 (= res!2624912 (not (= (unfocusZipper!2039 (Cons!65068 lt!2370544 Nil!65068)) lt!2370516)))))

(declare-fun b!6381290 () Bool)

(declare-fun res!2624916 () Bool)

(assert (=> b!6381290 (=> res!2624916 e!3873666)))

(declare-fun generalisedConcat!1894 (List!65191) Regex!16297)

(assert (=> b!6381290 (= res!2624916 (not (= r!7292 (generalisedConcat!1894 (exprs!6181 (h!71516 zl!343))))))))

(declare-fun b!6381291 () Bool)

(declare-fun tp_is_empty!41847 () Bool)

(assert (=> b!6381291 (= e!3873672 tp_is_empty!41847)))

(declare-fun setElem!43556 () Context!11362)

(declare-fun setNonEmpty!43556 () Bool)

(declare-fun tp!1775781 () Bool)

(assert (=> setNonEmpty!43556 (= setRes!43556 (and tp!1775781 (inv!83989 setElem!43556) e!3873676))))

(declare-fun setRest!43556 () (InoxSet Context!11362))

(assert (=> setNonEmpty!43556 (= z!1189 ((_ map or) (store ((as const (Array Context!11362 Bool)) false) setElem!43556 true) setRest!43556))))

(declare-fun b!6381292 () Bool)

(declare-fun e!3873674 () Bool)

(assert (=> b!6381292 (= e!3873674 (not e!3873666))))

(declare-fun res!2624922 () Bool)

(assert (=> b!6381292 (=> res!2624922 e!3873666)))

(assert (=> b!6381292 (= res!2624922 (not ((_ is Cons!65068) zl!343)))))

(declare-fun lt!2370540 () Bool)

(assert (=> b!6381292 (= lt!2370513 lt!2370540)))

(declare-fun matchRSpec!3398 (Regex!16297 List!65190) Bool)

(assert (=> b!6381292 (= lt!2370540 (matchRSpec!3398 r!7292 s!2326))))

(declare-fun matchR!8480 (Regex!16297 List!65190) Bool)

(assert (=> b!6381292 (= lt!2370513 (matchR!8480 r!7292 s!2326))))

(declare-fun lt!2370518 () Unit!158519)

(declare-fun mainMatchTheorem!3398 (Regex!16297 List!65190) Unit!158519)

(assert (=> b!6381292 (= lt!2370518 (mainMatchTheorem!3398 r!7292 s!2326))))

(declare-fun b!6381293 () Bool)

(declare-fun res!2624906 () Bool)

(assert (=> b!6381293 (=> res!2624906 e!3873675)))

(assert (=> b!6381293 (= res!2624906 (or ((_ is Concat!25142) (regOne!33106 r!7292)) (not ((_ is Star!16297) (regOne!33106 r!7292)))))))

(declare-fun b!6381294 () Bool)

(declare-fun tp!1775783 () Bool)

(assert (=> b!6381294 (= e!3873672 tp!1775783)))

(declare-fun b!6381295 () Bool)

(declare-fun tp!1775786 () Bool)

(assert (=> b!6381295 (= e!3873663 (and tp_is_empty!41847 tp!1775786))))

(declare-fun b!6381296 () Bool)

(declare-fun res!2624904 () Bool)

(assert (=> b!6381296 (=> res!2624904 e!3873666)))

(assert (=> b!6381296 (= res!2624904 (not ((_ is Cons!65067) (exprs!6181 (h!71516 zl!343)))))))

(declare-fun setIsEmpty!43556 () Bool)

(assert (=> setIsEmpty!43556 setRes!43556))

(declare-fun b!6381297 () Bool)

(declare-fun e!3873668 () Bool)

(assert (=> b!6381297 (= e!3873668 (nullable!6290 (regOne!33106 (regOne!33106 r!7292))))))

(declare-fun b!6381298 () Bool)

(declare-fun res!2624921 () Bool)

(assert (=> b!6381298 (=> res!2624921 e!3873675)))

(assert (=> b!6381298 (= res!2624921 e!3873668)))

(declare-fun res!2624914 () Bool)

(assert (=> b!6381298 (=> (not res!2624914) (not e!3873668))))

(assert (=> b!6381298 (= res!2624914 ((_ is Concat!25142) (regOne!33106 r!7292)))))

(declare-fun b!6381299 () Bool)

(declare-fun tp!1775782 () Bool)

(declare-fun tp!1775790 () Bool)

(assert (=> b!6381299 (= e!3873672 (and tp!1775782 tp!1775790))))

(declare-fun b!6381300 () Bool)

(declare-fun tp!1775788 () Bool)

(assert (=> b!6381300 (= e!3873665 tp!1775788)))

(declare-fun b!6381301 () Bool)

(assert (=> b!6381301 (= e!3873669 e!3873680)))

(declare-fun res!2624926 () Bool)

(assert (=> b!6381301 (=> res!2624926 e!3873680)))

(declare-fun lt!2370537 () Regex!16297)

(assert (=> b!6381301 (= res!2624926 (not (= (unfocusZipper!2039 (Cons!65068 lt!2370511 Nil!65068)) lt!2370537)))))

(assert (=> b!6381301 (= lt!2370537 (Concat!25142 (reg!16626 (regOne!33106 r!7292)) lt!2370516))))

(declare-fun e!3873673 () Bool)

(assert (=> b!6381302 (= e!3873673 (validRegex!8033 lt!2370530))))

(assert (=> b!6381302 (= (isDefined!12891 (findConcatSeparation!2602 lt!2370530 (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326)) (Exists!3367 lambda!352013))))

(declare-fun lt!2370527 () Unit!158519)

(assert (=> b!6381302 (= lt!2370527 (lemmaFindConcatSeparationEquivalentToExists!2366 lt!2370530 (regTwo!33106 r!7292) s!2326))))

(declare-fun b!6381303 () Bool)

(declare-fun e!3873678 () Bool)

(assert (=> b!6381303 (= e!3873678 (or (not lt!2370513) lt!2370540))))

(declare-fun b!6381304 () Bool)

(assert (=> b!6381304 (= e!3873677 e!3873674)))

(declare-fun res!2624901 () Bool)

(assert (=> b!6381304 (=> (not res!2624901) (not e!3873674))))

(declare-fun lt!2370534 () Regex!16297)

(assert (=> b!6381304 (= res!2624901 (= r!7292 lt!2370534))))

(assert (=> b!6381304 (= lt!2370534 (unfocusZipper!2039 zl!343))))

(declare-fun b!6381305 () Bool)

(assert (=> b!6381305 (= e!3873679 (matchZipper!2309 lt!2370536 (t!378794 s!2326)))))

(declare-fun b!6381306 () Bool)

(declare-fun res!2624905 () Bool)

(assert (=> b!6381306 (=> res!2624905 e!3873664)))

(assert (=> b!6381306 (= res!2624905 (not (= lt!2370534 r!7292)))))

(declare-fun b!6381307 () Bool)

(assert (=> b!6381307 (= e!3873675 e!3873667)))

(declare-fun res!2624915 () Bool)

(assert (=> b!6381307 (=> res!2624915 e!3873667)))

(assert (=> b!6381307 (= res!2624915 (not (= lt!2370525 lt!2370521)))))

(assert (=> b!6381307 (= lt!2370521 (derivationStepZipperDown!1545 (reg!16626 (regOne!33106 r!7292)) lt!2370544 (h!71514 s!2326)))))

(assert (=> b!6381307 (= lt!2370544 (Context!11363 lt!2370529))))

(assert (=> b!6381307 (= lt!2370529 (Cons!65067 lt!2370530 (t!378795 (exprs!6181 (h!71516 zl!343)))))))

(assert (=> b!6381307 (= lt!2370530 (Star!16297 (reg!16626 (regOne!33106 r!7292))))))

(declare-fun b!6381308 () Bool)

(assert (=> b!6381308 (= e!3873682 e!3873673)))

(declare-fun res!2624908 () Bool)

(assert (=> b!6381308 (=> res!2624908 e!3873673)))

(assert (=> b!6381308 (= res!2624908 (not lt!2370513))))

(assert (=> b!6381308 e!3873678))

(declare-fun res!2624920 () Bool)

(assert (=> b!6381308 (=> (not res!2624920) (not e!3873678))))

(assert (=> b!6381308 (= res!2624920 (= (matchR!8480 lt!2370537 s!2326) (matchRSpec!3398 lt!2370537 s!2326)))))

(declare-fun lt!2370538 () Unit!158519)

(assert (=> b!6381308 (= lt!2370538 (mainMatchTheorem!3398 lt!2370537 s!2326))))

(declare-fun b!6381309 () Bool)

(declare-fun res!2624902 () Bool)

(assert (=> b!6381309 (=> res!2624902 e!3873666)))

(assert (=> b!6381309 (= res!2624902 (or ((_ is EmptyExpr!16297) r!7292) ((_ is EmptyLang!16297) r!7292) ((_ is ElementMatch!16297) r!7292) ((_ is Union!16297) r!7292) (not ((_ is Concat!25142) r!7292))))))

(assert (= (and start!632194 res!2624923) b!6381277))

(assert (= (and b!6381277 res!2624911) b!6381304))

(assert (= (and b!6381304 res!2624901) b!6381292))

(assert (= (and b!6381292 (not res!2624922)) b!6381285))

(assert (= (and b!6381285 (not res!2624918)) b!6381290))

(assert (= (and b!6381290 (not res!2624916)) b!6381296))

(assert (= (and b!6381296 (not res!2624904)) b!6381279))

(assert (= (and b!6381279 (not res!2624913)) b!6381309))

(assert (= (and b!6381309 (not res!2624902)) b!6381287))

(assert (= (and b!6381287 (not res!2624917)) b!6381280))

(assert (= (and b!6381280 (not res!2624909)) b!6381278))

(assert (= (and b!6381278 c!1162661) b!6381284))

(assert (= (and b!6381278 (not c!1162661)) b!6381283))

(assert (= (and b!6381284 (not res!2624903)) b!6381305))

(assert (= (and b!6381278 (not res!2624925)) b!6381298))

(assert (= (and b!6381298 res!2624914) b!6381297))

(assert (= (and b!6381298 (not res!2624921)) b!6381293))

(assert (= (and b!6381293 (not res!2624906)) b!6381307))

(assert (= (and b!6381307 (not res!2624915)) b!6381281))

(assert (= (and b!6381281 (not res!2624907)) b!6381274))

(assert (= (and b!6381274 (not res!2624910)) b!6381306))

(assert (= (and b!6381306 (not res!2624905)) b!6381276))

(assert (= (and b!6381276 (not res!2624924)) b!6381301))

(assert (= (and b!6381301 (not res!2624926)) b!6381286))

(assert (= (and b!6381286 (not res!2624919)) b!6381289))

(assert (= (and b!6381289 (not res!2624912)) b!6381308))

(assert (= (and b!6381308 res!2624920) b!6381303))

(assert (= (and b!6381308 (not res!2624908)) b!6381302))

(assert (= (and start!632194 ((_ is ElementMatch!16297) r!7292)) b!6381291))

(assert (= (and start!632194 ((_ is Concat!25142) r!7292)) b!6381275))

(assert (= (and start!632194 ((_ is Star!16297) r!7292)) b!6381294))

(assert (= (and start!632194 ((_ is Union!16297) r!7292)) b!6381299))

(assert (= (and start!632194 condSetEmpty!43556) setIsEmpty!43556))

(assert (= (and start!632194 (not condSetEmpty!43556)) setNonEmpty!43556))

(assert (= setNonEmpty!43556 b!6381288))

(assert (= b!6381282 b!6381300))

(assert (= (and start!632194 ((_ is Cons!65068) zl!343)) b!6381282))

(assert (= (and start!632194 ((_ is Cons!65066) s!2326)) b!6381295))

(declare-fun m!7181592 () Bool)

(assert (=> setNonEmpty!43556 m!7181592))

(declare-fun m!7181594 () Bool)

(assert (=> b!6381307 m!7181594))

(declare-fun m!7181596 () Bool)

(assert (=> b!6381285 m!7181596))

(declare-fun m!7181598 () Bool)

(assert (=> b!6381308 m!7181598))

(declare-fun m!7181600 () Bool)

(assert (=> b!6381308 m!7181600))

(declare-fun m!7181602 () Bool)

(assert (=> b!6381308 m!7181602))

(declare-fun m!7181604 () Bool)

(assert (=> b!6381287 m!7181604))

(declare-fun m!7181606 () Bool)

(assert (=> b!6381287 m!7181606))

(declare-fun m!7181608 () Bool)

(assert (=> b!6381287 m!7181608))

(assert (=> b!6381287 m!7181604))

(declare-fun m!7181610 () Bool)

(assert (=> b!6381287 m!7181610))

(declare-fun m!7181612 () Bool)

(assert (=> b!6381287 m!7181612))

(assert (=> b!6381287 m!7181606))

(declare-fun m!7181614 () Bool)

(assert (=> b!6381287 m!7181614))

(declare-fun m!7181616 () Bool)

(assert (=> b!6381286 m!7181616))

(declare-fun m!7181618 () Bool)

(assert (=> b!6381286 m!7181618))

(declare-fun m!7181620 () Bool)

(assert (=> b!6381286 m!7181620))

(declare-fun m!7181622 () Bool)

(assert (=> b!6381286 m!7181622))

(declare-fun m!7181624 () Bool)

(assert (=> b!6381286 m!7181624))

(declare-fun m!7181626 () Bool)

(assert (=> b!6381286 m!7181626))

(declare-fun m!7181628 () Bool)

(assert (=> b!6381286 m!7181628))

(declare-fun m!7181630 () Bool)

(assert (=> b!6381286 m!7181630))

(declare-fun m!7181632 () Bool)

(assert (=> b!6381286 m!7181632))

(declare-fun m!7181634 () Bool)

(assert (=> b!6381292 m!7181634))

(declare-fun m!7181636 () Bool)

(assert (=> b!6381292 m!7181636))

(declare-fun m!7181638 () Bool)

(assert (=> b!6381292 m!7181638))

(declare-fun m!7181640 () Bool)

(assert (=> b!6381301 m!7181640))

(declare-fun m!7181642 () Bool)

(assert (=> b!6381304 m!7181642))

(declare-fun m!7181644 () Bool)

(assert (=> b!6381302 m!7181644))

(declare-fun m!7181646 () Bool)

(assert (=> b!6381302 m!7181646))

(declare-fun m!7181648 () Bool)

(assert (=> b!6381302 m!7181648))

(declare-fun m!7181650 () Bool)

(assert (=> b!6381302 m!7181650))

(assert (=> b!6381302 m!7181646))

(declare-fun m!7181652 () Bool)

(assert (=> b!6381302 m!7181652))

(declare-fun m!7181654 () Bool)

(assert (=> b!6381289 m!7181654))

(declare-fun m!7181656 () Bool)

(assert (=> b!6381278 m!7181656))

(declare-fun m!7181658 () Bool)

(assert (=> b!6381278 m!7181658))

(declare-fun m!7181660 () Bool)

(assert (=> b!6381278 m!7181660))

(declare-fun m!7181662 () Bool)

(assert (=> b!6381278 m!7181662))

(declare-fun m!7181664 () Bool)

(assert (=> b!6381278 m!7181664))

(declare-fun m!7181666 () Bool)

(assert (=> b!6381278 m!7181666))

(declare-fun m!7181668 () Bool)

(assert (=> b!6381278 m!7181668))

(declare-fun m!7181670 () Bool)

(assert (=> b!6381297 m!7181670))

(declare-fun m!7181672 () Bool)

(assert (=> b!6381277 m!7181672))

(declare-fun m!7181674 () Bool)

(assert (=> b!6381279 m!7181674))

(assert (=> b!6381279 m!7181674))

(declare-fun m!7181676 () Bool)

(assert (=> b!6381279 m!7181676))

(declare-fun m!7181678 () Bool)

(assert (=> b!6381280 m!7181678))

(declare-fun m!7181680 () Bool)

(assert (=> b!6381282 m!7181680))

(declare-fun m!7181682 () Bool)

(assert (=> b!6381305 m!7181682))

(declare-fun m!7181684 () Bool)

(assert (=> b!6381274 m!7181684))

(declare-fun m!7181686 () Bool)

(assert (=> b!6381274 m!7181686))

(declare-fun m!7181688 () Bool)

(assert (=> b!6381290 m!7181688))

(declare-fun m!7181690 () Bool)

(assert (=> start!632194 m!7181690))

(declare-fun m!7181692 () Bool)

(assert (=> b!6381284 m!7181692))

(declare-fun m!7181694 () Bool)

(assert (=> b!6381284 m!7181694))

(declare-fun m!7181696 () Bool)

(assert (=> b!6381284 m!7181696))

(declare-fun m!7181698 () Bool)

(assert (=> b!6381281 m!7181698))

(declare-fun m!7181700 () Bool)

(assert (=> b!6381281 m!7181700))

(declare-fun m!7181702 () Bool)

(assert (=> b!6381281 m!7181702))

(declare-fun m!7181704 () Bool)

(assert (=> b!6381281 m!7181704))

(declare-fun m!7181706 () Bool)

(assert (=> b!6381281 m!7181706))

(check-sat (not b!6381281) (not b!6381294) (not b!6381304) (not b!6381308) (not b!6381275) (not b!6381284) (not start!632194) (not b!6381292) (not b!6381285) (not b!6381280) (not b!6381305) (not b!6381288) (not b!6381301) (not b!6381302) (not b!6381286) (not setNonEmpty!43556) (not b!6381300) (not b!6381287) (not b!6381299) tp_is_empty!41847 (not b!6381289) (not b!6381279) (not b!6381295) (not b!6381278) (not b!6381297) (not b!6381277) (not b!6381290) (not b!6381274) (not b!6381307) (not b!6381282))
(check-sat)
(get-model)

(declare-fun d!2000768 () Bool)

(declare-fun lt!2370571 () Regex!16297)

(assert (=> d!2000768 (validRegex!8033 lt!2370571)))

(assert (=> d!2000768 (= lt!2370571 (generalisedUnion!2141 (unfocusZipperList!1718 (Cons!65068 lt!2370544 Nil!65068))))))

(assert (=> d!2000768 (= (unfocusZipper!2039 (Cons!65068 lt!2370544 Nil!65068)) lt!2370571)))

(declare-fun bs!1597196 () Bool)

(assert (= bs!1597196 d!2000768))

(declare-fun m!7181820 () Bool)

(assert (=> bs!1597196 m!7181820))

(declare-fun m!7181822 () Bool)

(assert (=> bs!1597196 m!7181822))

(assert (=> bs!1597196 m!7181822))

(declare-fun m!7181824 () Bool)

(assert (=> bs!1597196 m!7181824))

(assert (=> b!6381289 d!2000768))

(declare-fun b!6381587 () Bool)

(declare-fun e!3873836 () Bool)

(declare-fun lt!2370583 () Regex!16297)

(declare-fun isEmptyExpr!1698 (Regex!16297) Bool)

(assert (=> b!6381587 (= e!3873836 (isEmptyExpr!1698 lt!2370583))))

(declare-fun b!6381588 () Bool)

(declare-fun e!3873837 () Regex!16297)

(assert (=> b!6381588 (= e!3873837 (h!71515 (exprs!6181 (h!71516 zl!343))))))

(declare-fun b!6381589 () Bool)

(declare-fun e!3873842 () Regex!16297)

(assert (=> b!6381589 (= e!3873837 e!3873842)))

(declare-fun c!1162754 () Bool)

(assert (=> b!6381589 (= c!1162754 ((_ is Cons!65067) (exprs!6181 (h!71516 zl!343))))))

(declare-fun b!6381590 () Bool)

(assert (=> b!6381590 (= e!3873842 EmptyExpr!16297)))

(declare-fun d!2000772 () Bool)

(declare-fun e!3873840 () Bool)

(assert (=> d!2000772 e!3873840))

(declare-fun res!2625019 () Bool)

(assert (=> d!2000772 (=> (not res!2625019) (not e!3873840))))

(assert (=> d!2000772 (= res!2625019 (validRegex!8033 lt!2370583))))

(assert (=> d!2000772 (= lt!2370583 e!3873837)))

(declare-fun c!1162756 () Bool)

(declare-fun e!3873835 () Bool)

(assert (=> d!2000772 (= c!1162756 e!3873835)))

(declare-fun res!2625018 () Bool)

(assert (=> d!2000772 (=> (not res!2625018) (not e!3873835))))

(assert (=> d!2000772 (= res!2625018 ((_ is Cons!65067) (exprs!6181 (h!71516 zl!343))))))

(declare-fun lambda!352037 () Int)

(declare-fun forall!15475 (List!65191 Int) Bool)

(assert (=> d!2000772 (forall!15475 (exprs!6181 (h!71516 zl!343)) lambda!352037)))

(assert (=> d!2000772 (= (generalisedConcat!1894 (exprs!6181 (h!71516 zl!343))) lt!2370583)))

(declare-fun b!6381591 () Bool)

(declare-fun e!3873841 () Bool)

(declare-fun isConcat!1221 (Regex!16297) Bool)

(assert (=> b!6381591 (= e!3873841 (isConcat!1221 lt!2370583))))

(declare-fun b!6381592 () Bool)

(assert (=> b!6381592 (= e!3873842 (Concat!25142 (h!71515 (exprs!6181 (h!71516 zl!343))) (generalisedConcat!1894 (t!378795 (exprs!6181 (h!71516 zl!343))))))))

(declare-fun b!6381593 () Bool)

(assert (=> b!6381593 (= e!3873840 e!3873836)))

(declare-fun c!1162757 () Bool)

(assert (=> b!6381593 (= c!1162757 (isEmpty!37195 (exprs!6181 (h!71516 zl!343))))))

(declare-fun b!6381594 () Bool)

(declare-fun head!13085 (List!65191) Regex!16297)

(assert (=> b!6381594 (= e!3873841 (= lt!2370583 (head!13085 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun b!6381595 () Bool)

(assert (=> b!6381595 (= e!3873835 (isEmpty!37195 (t!378795 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun b!6381596 () Bool)

(assert (=> b!6381596 (= e!3873836 e!3873841)))

(declare-fun c!1162755 () Bool)

(declare-fun tail!12170 (List!65191) List!65191)

(assert (=> b!6381596 (= c!1162755 (isEmpty!37195 (tail!12170 (exprs!6181 (h!71516 zl!343)))))))

(assert (= (and d!2000772 res!2625018) b!6381595))

(assert (= (and d!2000772 c!1162756) b!6381588))

(assert (= (and d!2000772 (not c!1162756)) b!6381589))

(assert (= (and b!6381589 c!1162754) b!6381592))

(assert (= (and b!6381589 (not c!1162754)) b!6381590))

(assert (= (and d!2000772 res!2625019) b!6381593))

(assert (= (and b!6381593 c!1162757) b!6381587))

(assert (= (and b!6381593 (not c!1162757)) b!6381596))

(assert (= (and b!6381596 c!1162755) b!6381594))

(assert (= (and b!6381596 (not c!1162755)) b!6381591))

(declare-fun m!7181848 () Bool)

(assert (=> b!6381593 m!7181848))

(assert (=> b!6381595 m!7181678))

(declare-fun m!7181850 () Bool)

(assert (=> b!6381591 m!7181850))

(declare-fun m!7181852 () Bool)

(assert (=> b!6381594 m!7181852))

(declare-fun m!7181854 () Bool)

(assert (=> b!6381592 m!7181854))

(declare-fun m!7181856 () Bool)

(assert (=> d!2000772 m!7181856))

(declare-fun m!7181858 () Bool)

(assert (=> d!2000772 m!7181858))

(declare-fun m!7181860 () Bool)

(assert (=> b!6381587 m!7181860))

(declare-fun m!7181862 () Bool)

(assert (=> b!6381596 m!7181862))

(assert (=> b!6381596 m!7181862))

(declare-fun m!7181864 () Bool)

(assert (=> b!6381596 m!7181864))

(assert (=> b!6381290 d!2000772))

(declare-fun b!6381683 () Bool)

(declare-fun e!3873898 () Option!16188)

(declare-fun e!3873899 () Option!16188)

(assert (=> b!6381683 (= e!3873898 e!3873899)))

(declare-fun c!1162782 () Bool)

(assert (=> b!6381683 (= c!1162782 ((_ is Nil!65066) s!2326))))

(declare-fun b!6381684 () Bool)

(declare-fun e!3873900 () Bool)

(assert (=> b!6381684 (= e!3873900 (matchR!8480 (regTwo!33106 r!7292) s!2326))))

(declare-fun b!6381685 () Bool)

(declare-fun lt!2370603 () Unit!158519)

(declare-fun lt!2370605 () Unit!158519)

(assert (=> b!6381685 (= lt!2370603 lt!2370605)))

(declare-fun ++!14365 (List!65190 List!65190) List!65190)

(assert (=> b!6381685 (= (++!14365 (++!14365 Nil!65066 (Cons!65066 (h!71514 s!2326) Nil!65066)) (t!378794 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2460 (List!65190 C!32864 List!65190 List!65190) Unit!158519)

(assert (=> b!6381685 (= lt!2370605 (lemmaMoveElementToOtherListKeepsConcatEq!2460 Nil!65066 (h!71514 s!2326) (t!378794 s!2326) s!2326))))

(assert (=> b!6381685 (= e!3873899 (findConcatSeparation!2602 (regOne!33106 r!7292) (regTwo!33106 r!7292) (++!14365 Nil!65066 (Cons!65066 (h!71514 s!2326) Nil!65066)) (t!378794 s!2326) s!2326))))

(declare-fun d!2000776 () Bool)

(declare-fun e!3873901 () Bool)

(assert (=> d!2000776 e!3873901))

(declare-fun res!2625061 () Bool)

(assert (=> d!2000776 (=> res!2625061 e!3873901)))

(declare-fun e!3873897 () Bool)

(assert (=> d!2000776 (= res!2625061 e!3873897)))

(declare-fun res!2625059 () Bool)

(assert (=> d!2000776 (=> (not res!2625059) (not e!3873897))))

(declare-fun lt!2370604 () Option!16188)

(assert (=> d!2000776 (= res!2625059 (isDefined!12891 lt!2370604))))

(assert (=> d!2000776 (= lt!2370604 e!3873898)))

(declare-fun c!1162783 () Bool)

(assert (=> d!2000776 (= c!1162783 e!3873900)))

(declare-fun res!2625060 () Bool)

(assert (=> d!2000776 (=> (not res!2625060) (not e!3873900))))

(assert (=> d!2000776 (= res!2625060 (matchR!8480 (regOne!33106 r!7292) Nil!65066))))

(assert (=> d!2000776 (validRegex!8033 (regOne!33106 r!7292))))

(assert (=> d!2000776 (= (findConcatSeparation!2602 (regOne!33106 r!7292) (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326) lt!2370604)))

(declare-fun b!6381686 () Bool)

(assert (=> b!6381686 (= e!3873899 None!16187)))

(declare-fun b!6381687 () Bool)

(declare-fun res!2625062 () Bool)

(assert (=> b!6381687 (=> (not res!2625062) (not e!3873897))))

(declare-fun get!22529 (Option!16188) tuple2!66552)

(assert (=> b!6381687 (= res!2625062 (matchR!8480 (regTwo!33106 r!7292) (_2!36579 (get!22529 lt!2370604))))))

(declare-fun b!6381688 () Bool)

(declare-fun res!2625058 () Bool)

(assert (=> b!6381688 (=> (not res!2625058) (not e!3873897))))

(assert (=> b!6381688 (= res!2625058 (matchR!8480 (regOne!33106 r!7292) (_1!36579 (get!22529 lt!2370604))))))

(declare-fun b!6381689 () Bool)

(assert (=> b!6381689 (= e!3873901 (not (isDefined!12891 lt!2370604)))))

(declare-fun b!6381690 () Bool)

(assert (=> b!6381690 (= e!3873897 (= (++!14365 (_1!36579 (get!22529 lt!2370604)) (_2!36579 (get!22529 lt!2370604))) s!2326))))

(declare-fun b!6381691 () Bool)

(assert (=> b!6381691 (= e!3873898 (Some!16187 (tuple2!66553 Nil!65066 s!2326)))))

(assert (= (and d!2000776 res!2625060) b!6381684))

(assert (= (and d!2000776 c!1162783) b!6381691))

(assert (= (and d!2000776 (not c!1162783)) b!6381683))

(assert (= (and b!6381683 c!1162782) b!6381686))

(assert (= (and b!6381683 (not c!1162782)) b!6381685))

(assert (= (and d!2000776 res!2625059) b!6381688))

(assert (= (and b!6381688 res!2625058) b!6381687))

(assert (= (and b!6381687 res!2625062) b!6381690))

(assert (= (and d!2000776 (not res!2625061)) b!6381689))

(declare-fun m!7181974 () Bool)

(assert (=> b!6381688 m!7181974))

(declare-fun m!7181976 () Bool)

(assert (=> b!6381688 m!7181976))

(declare-fun m!7181978 () Bool)

(assert (=> b!6381685 m!7181978))

(assert (=> b!6381685 m!7181978))

(declare-fun m!7181980 () Bool)

(assert (=> b!6381685 m!7181980))

(declare-fun m!7181982 () Bool)

(assert (=> b!6381685 m!7181982))

(assert (=> b!6381685 m!7181978))

(declare-fun m!7181984 () Bool)

(assert (=> b!6381685 m!7181984))

(declare-fun m!7181986 () Bool)

(assert (=> b!6381689 m!7181986))

(assert (=> b!6381687 m!7181974))

(declare-fun m!7181988 () Bool)

(assert (=> b!6381687 m!7181988))

(assert (=> d!2000776 m!7181986))

(declare-fun m!7181990 () Bool)

(assert (=> d!2000776 m!7181990))

(declare-fun m!7181992 () Bool)

(assert (=> d!2000776 m!7181992))

(declare-fun m!7181994 () Bool)

(assert (=> b!6381684 m!7181994))

(assert (=> b!6381690 m!7181974))

(declare-fun m!7181996 () Bool)

(assert (=> b!6381690 m!7181996))

(assert (=> b!6381287 d!2000776))

(declare-fun d!2000830 () Bool)

(declare-fun choose!47470 (Int) Bool)

(assert (=> d!2000830 (= (Exists!3367 lambda!352010) (choose!47470 lambda!352010))))

(declare-fun bs!1597232 () Bool)

(assert (= bs!1597232 d!2000830))

(declare-fun m!7182010 () Bool)

(assert (=> bs!1597232 m!7182010))

(assert (=> b!6381287 d!2000830))

(declare-fun d!2000834 () Bool)

(assert (=> d!2000834 (= (Exists!3367 lambda!352011) (choose!47470 lambda!352011))))

(declare-fun bs!1597233 () Bool)

(assert (= bs!1597233 d!2000834))

(declare-fun m!7182016 () Bool)

(assert (=> bs!1597233 m!7182016))

(assert (=> b!6381287 d!2000834))

(declare-fun bs!1597235 () Bool)

(declare-fun d!2000838 () Bool)

(assert (= bs!1597235 (and d!2000838 b!6381287)))

(declare-fun lambda!352046 () Int)

(assert (=> bs!1597235 (= lambda!352046 lambda!352010)))

(assert (=> bs!1597235 (not (= lambda!352046 lambda!352011))))

(declare-fun bs!1597236 () Bool)

(assert (= bs!1597236 (and d!2000838 b!6381302)))

(assert (=> bs!1597236 (= (= (regOne!33106 r!7292) lt!2370530) (= lambda!352046 lambda!352013))))

(assert (=> d!2000838 true))

(assert (=> d!2000838 true))

(assert (=> d!2000838 true))

(assert (=> d!2000838 (= (isDefined!12891 (findConcatSeparation!2602 (regOne!33106 r!7292) (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326)) (Exists!3367 lambda!352046))))

(declare-fun lt!2370612 () Unit!158519)

(declare-fun choose!47471 (Regex!16297 Regex!16297 List!65190) Unit!158519)

(assert (=> d!2000838 (= lt!2370612 (choose!47471 (regOne!33106 r!7292) (regTwo!33106 r!7292) s!2326))))

(assert (=> d!2000838 (validRegex!8033 (regOne!33106 r!7292))))

(assert (=> d!2000838 (= (lemmaFindConcatSeparationEquivalentToExists!2366 (regOne!33106 r!7292) (regTwo!33106 r!7292) s!2326) lt!2370612)))

(declare-fun bs!1597237 () Bool)

(assert (= bs!1597237 d!2000838))

(assert (=> bs!1597237 m!7181606))

(assert (=> bs!1597237 m!7181608))

(assert (=> bs!1597237 m!7181992))

(declare-fun m!7182046 () Bool)

(assert (=> bs!1597237 m!7182046))

(assert (=> bs!1597237 m!7181606))

(declare-fun m!7182048 () Bool)

(assert (=> bs!1597237 m!7182048))

(assert (=> b!6381287 d!2000838))

(declare-fun bs!1597257 () Bool)

(declare-fun d!2000848 () Bool)

(assert (= bs!1597257 (and d!2000848 b!6381287)))

(declare-fun lambda!352058 () Int)

(assert (=> bs!1597257 (= lambda!352058 lambda!352010)))

(assert (=> bs!1597257 (not (= lambda!352058 lambda!352011))))

(declare-fun bs!1597258 () Bool)

(assert (= bs!1597258 (and d!2000848 b!6381302)))

(assert (=> bs!1597258 (= (= (regOne!33106 r!7292) lt!2370530) (= lambda!352058 lambda!352013))))

(declare-fun bs!1597259 () Bool)

(assert (= bs!1597259 (and d!2000848 d!2000838)))

(assert (=> bs!1597259 (= lambda!352058 lambda!352046)))

(assert (=> d!2000848 true))

(assert (=> d!2000848 true))

(assert (=> d!2000848 true))

(declare-fun lambda!352059 () Int)

(assert (=> bs!1597257 (not (= lambda!352059 lambda!352010))))

(assert (=> bs!1597259 (not (= lambda!352059 lambda!352046))))

(assert (=> bs!1597258 (not (= lambda!352059 lambda!352013))))

(declare-fun bs!1597260 () Bool)

(assert (= bs!1597260 d!2000848))

(assert (=> bs!1597260 (not (= lambda!352059 lambda!352058))))

(assert (=> bs!1597257 (= lambda!352059 lambda!352011)))

(assert (=> d!2000848 true))

(assert (=> d!2000848 true))

(assert (=> d!2000848 true))

(assert (=> d!2000848 (= (Exists!3367 lambda!352058) (Exists!3367 lambda!352059))))

(declare-fun lt!2370619 () Unit!158519)

(declare-fun choose!47472 (Regex!16297 Regex!16297 List!65190) Unit!158519)

(assert (=> d!2000848 (= lt!2370619 (choose!47472 (regOne!33106 r!7292) (regTwo!33106 r!7292) s!2326))))

(assert (=> d!2000848 (validRegex!8033 (regOne!33106 r!7292))))

(assert (=> d!2000848 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1904 (regOne!33106 r!7292) (regTwo!33106 r!7292) s!2326) lt!2370619)))

(declare-fun m!7182072 () Bool)

(assert (=> bs!1597260 m!7182072))

(declare-fun m!7182074 () Bool)

(assert (=> bs!1597260 m!7182074))

(declare-fun m!7182076 () Bool)

(assert (=> bs!1597260 m!7182076))

(assert (=> bs!1597260 m!7181992))

(assert (=> b!6381287 d!2000848))

(declare-fun d!2000858 () Bool)

(declare-fun isEmpty!37199 (Option!16188) Bool)

(assert (=> d!2000858 (= (isDefined!12891 (findConcatSeparation!2602 (regOne!33106 r!7292) (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326)) (not (isEmpty!37199 (findConcatSeparation!2602 (regOne!33106 r!7292) (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326))))))

(declare-fun bs!1597261 () Bool)

(assert (= bs!1597261 d!2000858))

(assert (=> bs!1597261 m!7181606))

(declare-fun m!7182078 () Bool)

(assert (=> bs!1597261 m!7182078))

(assert (=> b!6381287 d!2000858))

(declare-fun c!1162810 () Bool)

(declare-fun c!1162811 () Bool)

(declare-fun bm!545352 () Bool)

(declare-fun call!545358 () List!65191)

(declare-fun $colon$colon!2158 (List!65191 Regex!16297) List!65191)

(assert (=> bm!545352 (= call!545358 ($colon$colon!2158 (exprs!6181 lt!2370544) (ite (or c!1162810 c!1162811) (regTwo!33106 (reg!16626 (regOne!33106 r!7292))) (reg!16626 (regOne!33106 r!7292)))))))

(declare-fun b!6381827 () Bool)

(declare-fun e!3873971 () (InoxSet Context!11362))

(declare-fun call!545362 () (InoxSet Context!11362))

(assert (=> b!6381827 (= e!3873971 call!545362)))

(declare-fun b!6381828 () Bool)

(declare-fun e!3873973 () (InoxSet Context!11362))

(declare-fun call!545360 () (InoxSet Context!11362))

(declare-fun call!545359 () (InoxSet Context!11362))

(assert (=> b!6381828 (= e!3873973 ((_ map or) call!545360 call!545359))))

(declare-fun b!6381829 () Bool)

(declare-fun e!3873976 () (InoxSet Context!11362))

(declare-fun call!545361 () (InoxSet Context!11362))

(assert (=> b!6381829 (= e!3873976 ((_ map or) call!545359 call!545361))))

(declare-fun bm!545353 () Bool)

(declare-fun call!545357 () List!65191)

(assert (=> bm!545353 (= call!545357 call!545358)))

(declare-fun b!6381830 () Bool)

(declare-fun e!3873975 () Bool)

(assert (=> b!6381830 (= c!1162810 e!3873975)))

(declare-fun res!2625098 () Bool)

(assert (=> b!6381830 (=> (not res!2625098) (not e!3873975))))

(assert (=> b!6381830 (= res!2625098 ((_ is Concat!25142) (reg!16626 (regOne!33106 r!7292))))))

(assert (=> b!6381830 (= e!3873973 e!3873976)))

(declare-fun b!6381831 () Bool)

(declare-fun e!3873972 () (InoxSet Context!11362))

(assert (=> b!6381831 (= e!3873972 call!545362)))

(declare-fun b!6381832 () Bool)

(assert (=> b!6381832 (= e!3873976 e!3873972)))

(assert (=> b!6381832 (= c!1162811 ((_ is Concat!25142) (reg!16626 (regOne!33106 r!7292))))))

(declare-fun bm!545354 () Bool)

(assert (=> bm!545354 (= call!545362 call!545361)))

(declare-fun b!6381833 () Bool)

(assert (=> b!6381833 (= e!3873971 ((as const (Array Context!11362 Bool)) false))))

(declare-fun bm!545355 () Bool)

(declare-fun c!1162809 () Bool)

(assert (=> bm!545355 (= call!545359 (derivationStepZipperDown!1545 (ite c!1162809 (regTwo!33107 (reg!16626 (regOne!33106 r!7292))) (regOne!33106 (reg!16626 (regOne!33106 r!7292)))) (ite c!1162809 lt!2370544 (Context!11363 call!545358)) (h!71514 s!2326)))))

(declare-fun d!2000860 () Bool)

(declare-fun c!1162808 () Bool)

(assert (=> d!2000860 (= c!1162808 (and ((_ is ElementMatch!16297) (reg!16626 (regOne!33106 r!7292))) (= (c!1162662 (reg!16626 (regOne!33106 r!7292))) (h!71514 s!2326))))))

(declare-fun e!3873974 () (InoxSet Context!11362))

(assert (=> d!2000860 (= (derivationStepZipperDown!1545 (reg!16626 (regOne!33106 r!7292)) lt!2370544 (h!71514 s!2326)) e!3873974)))

(declare-fun b!6381834 () Bool)

(assert (=> b!6381834 (= e!3873974 (store ((as const (Array Context!11362 Bool)) false) lt!2370544 true))))

(declare-fun bm!545356 () Bool)

(assert (=> bm!545356 (= call!545360 (derivationStepZipperDown!1545 (ite c!1162809 (regOne!33107 (reg!16626 (regOne!33106 r!7292))) (ite c!1162810 (regTwo!33106 (reg!16626 (regOne!33106 r!7292))) (ite c!1162811 (regOne!33106 (reg!16626 (regOne!33106 r!7292))) (reg!16626 (reg!16626 (regOne!33106 r!7292)))))) (ite (or c!1162809 c!1162810) lt!2370544 (Context!11363 call!545357)) (h!71514 s!2326)))))

(declare-fun b!6381835 () Bool)

(assert (=> b!6381835 (= e!3873974 e!3873973)))

(assert (=> b!6381835 (= c!1162809 ((_ is Union!16297) (reg!16626 (regOne!33106 r!7292))))))

(declare-fun b!6381836 () Bool)

(assert (=> b!6381836 (= e!3873975 (nullable!6290 (regOne!33106 (reg!16626 (regOne!33106 r!7292)))))))

(declare-fun b!6381837 () Bool)

(declare-fun c!1162807 () Bool)

(assert (=> b!6381837 (= c!1162807 ((_ is Star!16297) (reg!16626 (regOne!33106 r!7292))))))

(assert (=> b!6381837 (= e!3873972 e!3873971)))

(declare-fun bm!545357 () Bool)

(assert (=> bm!545357 (= call!545361 call!545360)))

(assert (= (and d!2000860 c!1162808) b!6381834))

(assert (= (and d!2000860 (not c!1162808)) b!6381835))

(assert (= (and b!6381835 c!1162809) b!6381828))

(assert (= (and b!6381835 (not c!1162809)) b!6381830))

(assert (= (and b!6381830 res!2625098) b!6381836))

(assert (= (and b!6381830 c!1162810) b!6381829))

(assert (= (and b!6381830 (not c!1162810)) b!6381832))

(assert (= (and b!6381832 c!1162811) b!6381831))

(assert (= (and b!6381832 (not c!1162811)) b!6381837))

(assert (= (and b!6381837 c!1162807) b!6381827))

(assert (= (and b!6381837 (not c!1162807)) b!6381833))

(assert (= (or b!6381831 b!6381827) bm!545353))

(assert (= (or b!6381831 b!6381827) bm!545354))

(assert (= (or b!6381829 bm!545353) bm!545352))

(assert (= (or b!6381829 bm!545354) bm!545357))

(assert (= (or b!6381828 b!6381829) bm!545355))

(assert (= (or b!6381828 bm!545357) bm!545356))

(assert (=> b!6381834 m!7181622))

(declare-fun m!7182082 () Bool)

(assert (=> bm!545355 m!7182082))

(declare-fun m!7182084 () Bool)

(assert (=> b!6381836 m!7182084))

(declare-fun m!7182086 () Bool)

(assert (=> bm!545356 m!7182086))

(declare-fun m!7182088 () Bool)

(assert (=> bm!545352 m!7182088))

(assert (=> b!6381307 d!2000860))

(declare-fun b!6381866 () Bool)

(declare-fun e!3873997 () Bool)

(declare-fun head!13086 (List!65190) C!32864)

(assert (=> b!6381866 (= e!3873997 (= (head!13086 s!2326) (c!1162662 lt!2370537)))))

(declare-fun b!6381867 () Bool)

(declare-fun res!2625121 () Bool)

(assert (=> b!6381867 (=> (not res!2625121) (not e!3873997))))

(declare-fun isEmpty!37200 (List!65190) Bool)

(declare-fun tail!12171 (List!65190) List!65190)

(assert (=> b!6381867 (= res!2625121 (isEmpty!37200 (tail!12171 s!2326)))))

(declare-fun b!6381868 () Bool)

(declare-fun res!2625116 () Bool)

(declare-fun e!3873996 () Bool)

(assert (=> b!6381868 (=> res!2625116 e!3873996)))

(assert (=> b!6381868 (= res!2625116 e!3873997)))

(declare-fun res!2625120 () Bool)

(assert (=> b!6381868 (=> (not res!2625120) (not e!3873997))))

(declare-fun lt!2370622 () Bool)

(assert (=> b!6381868 (= res!2625120 lt!2370622)))

(declare-fun b!6381869 () Bool)

(declare-fun res!2625122 () Bool)

(assert (=> b!6381869 (=> (not res!2625122) (not e!3873997))))

(declare-fun call!545365 () Bool)

(assert (=> b!6381869 (= res!2625122 (not call!545365))))

(declare-fun b!6381870 () Bool)

(declare-fun e!3873992 () Bool)

(assert (=> b!6381870 (= e!3873992 (not lt!2370622))))

(declare-fun b!6381871 () Bool)

(declare-fun e!3873995 () Bool)

(assert (=> b!6381871 (= e!3873995 (not (= (head!13086 s!2326) (c!1162662 lt!2370537))))))

(declare-fun b!6381872 () Bool)

(declare-fun e!3873991 () Bool)

(declare-fun derivativeStep!5001 (Regex!16297 C!32864) Regex!16297)

(assert (=> b!6381872 (= e!3873991 (matchR!8480 (derivativeStep!5001 lt!2370537 (head!13086 s!2326)) (tail!12171 s!2326)))))

(declare-fun b!6381873 () Bool)

(declare-fun e!3873994 () Bool)

(assert (=> b!6381873 (= e!3873996 e!3873994)))

(declare-fun res!2625115 () Bool)

(assert (=> b!6381873 (=> (not res!2625115) (not e!3873994))))

(assert (=> b!6381873 (= res!2625115 (not lt!2370622))))

(declare-fun b!6381874 () Bool)

(declare-fun e!3873993 () Bool)

(assert (=> b!6381874 (= e!3873993 e!3873992)))

(declare-fun c!1162819 () Bool)

(assert (=> b!6381874 (= c!1162819 ((_ is EmptyLang!16297) lt!2370537))))

(declare-fun b!6381875 () Bool)

(declare-fun res!2625118 () Bool)

(assert (=> b!6381875 (=> res!2625118 e!3873996)))

(assert (=> b!6381875 (= res!2625118 (not ((_ is ElementMatch!16297) lt!2370537)))))

(assert (=> b!6381875 (= e!3873992 e!3873996)))

(declare-fun b!6381876 () Bool)

(declare-fun res!2625119 () Bool)

(assert (=> b!6381876 (=> res!2625119 e!3873995)))

(assert (=> b!6381876 (= res!2625119 (not (isEmpty!37200 (tail!12171 s!2326))))))

(declare-fun b!6381877 () Bool)

(assert (=> b!6381877 (= e!3873994 e!3873995)))

(declare-fun res!2625117 () Bool)

(assert (=> b!6381877 (=> res!2625117 e!3873995)))

(assert (=> b!6381877 (= res!2625117 call!545365)))

(declare-fun bm!545360 () Bool)

(assert (=> bm!545360 (= call!545365 (isEmpty!37200 s!2326))))

(declare-fun d!2000870 () Bool)

(assert (=> d!2000870 e!3873993))

(declare-fun c!1162818 () Bool)

(assert (=> d!2000870 (= c!1162818 ((_ is EmptyExpr!16297) lt!2370537))))

(assert (=> d!2000870 (= lt!2370622 e!3873991)))

(declare-fun c!1162820 () Bool)

(assert (=> d!2000870 (= c!1162820 (isEmpty!37200 s!2326))))

(assert (=> d!2000870 (validRegex!8033 lt!2370537)))

(assert (=> d!2000870 (= (matchR!8480 lt!2370537 s!2326) lt!2370622)))

(declare-fun b!6381878 () Bool)

(assert (=> b!6381878 (= e!3873991 (nullable!6290 lt!2370537))))

(declare-fun b!6381879 () Bool)

(assert (=> b!6381879 (= e!3873993 (= lt!2370622 call!545365))))

(assert (= (and d!2000870 c!1162820) b!6381878))

(assert (= (and d!2000870 (not c!1162820)) b!6381872))

(assert (= (and d!2000870 c!1162818) b!6381879))

(assert (= (and d!2000870 (not c!1162818)) b!6381874))

(assert (= (and b!6381874 c!1162819) b!6381870))

(assert (= (and b!6381874 (not c!1162819)) b!6381875))

(assert (= (and b!6381875 (not res!2625118)) b!6381868))

(assert (= (and b!6381868 res!2625120) b!6381869))

(assert (= (and b!6381869 res!2625122) b!6381867))

(assert (= (and b!6381867 res!2625121) b!6381866))

(assert (= (and b!6381868 (not res!2625116)) b!6381873))

(assert (= (and b!6381873 res!2625115) b!6381877))

(assert (= (and b!6381877 (not res!2625117)) b!6381876))

(assert (= (and b!6381876 (not res!2625119)) b!6381871))

(assert (= (or b!6381879 b!6381869 b!6381877) bm!545360))

(declare-fun m!7182090 () Bool)

(assert (=> b!6381871 m!7182090))

(declare-fun m!7182092 () Bool)

(assert (=> d!2000870 m!7182092))

(declare-fun m!7182094 () Bool)

(assert (=> d!2000870 m!7182094))

(declare-fun m!7182096 () Bool)

(assert (=> b!6381867 m!7182096))

(assert (=> b!6381867 m!7182096))

(declare-fun m!7182098 () Bool)

(assert (=> b!6381867 m!7182098))

(declare-fun m!7182100 () Bool)

(assert (=> b!6381878 m!7182100))

(assert (=> bm!545360 m!7182092))

(assert (=> b!6381872 m!7182090))

(assert (=> b!6381872 m!7182090))

(declare-fun m!7182102 () Bool)

(assert (=> b!6381872 m!7182102))

(assert (=> b!6381872 m!7182096))

(assert (=> b!6381872 m!7182102))

(assert (=> b!6381872 m!7182096))

(declare-fun m!7182104 () Bool)

(assert (=> b!6381872 m!7182104))

(assert (=> b!6381876 m!7182096))

(assert (=> b!6381876 m!7182096))

(assert (=> b!6381876 m!7182098))

(assert (=> b!6381866 m!7182090))

(assert (=> b!6381308 d!2000870))

(declare-fun bs!1597266 () Bool)

(declare-fun b!6381919 () Bool)

(assert (= bs!1597266 (and b!6381919 b!6381287)))

(declare-fun lambda!352064 () Int)

(assert (=> bs!1597266 (not (= lambda!352064 lambda!352010))))

(declare-fun bs!1597267 () Bool)

(assert (= bs!1597267 (and b!6381919 d!2000838)))

(assert (=> bs!1597267 (not (= lambda!352064 lambda!352046))))

(declare-fun bs!1597268 () Bool)

(assert (= bs!1597268 (and b!6381919 b!6381302)))

(assert (=> bs!1597268 (not (= lambda!352064 lambda!352013))))

(declare-fun bs!1597269 () Bool)

(assert (= bs!1597269 (and b!6381919 d!2000848)))

(assert (=> bs!1597269 (not (= lambda!352064 lambda!352058))))

(assert (=> bs!1597269 (not (= lambda!352064 lambda!352059))))

(assert (=> bs!1597266 (not (= lambda!352064 lambda!352011))))

(assert (=> b!6381919 true))

(assert (=> b!6381919 true))

(declare-fun bs!1597270 () Bool)

(declare-fun b!6381916 () Bool)

(assert (= bs!1597270 (and b!6381916 b!6381287)))

(declare-fun lambda!352065 () Int)

(assert (=> bs!1597270 (not (= lambda!352065 lambda!352010))))

(declare-fun bs!1597271 () Bool)

(assert (= bs!1597271 (and b!6381916 d!2000838)))

(assert (=> bs!1597271 (not (= lambda!352065 lambda!352046))))

(declare-fun bs!1597272 () Bool)

(assert (= bs!1597272 (and b!6381916 d!2000848)))

(assert (=> bs!1597272 (not (= lambda!352065 lambda!352058))))

(assert (=> bs!1597272 (= (and (= (regOne!33106 lt!2370537) (regOne!33106 r!7292)) (= (regTwo!33106 lt!2370537) (regTwo!33106 r!7292))) (= lambda!352065 lambda!352059))))

(assert (=> bs!1597270 (= (and (= (regOne!33106 lt!2370537) (regOne!33106 r!7292)) (= (regTwo!33106 lt!2370537) (regTwo!33106 r!7292))) (= lambda!352065 lambda!352011))))

(declare-fun bs!1597273 () Bool)

(assert (= bs!1597273 (and b!6381916 b!6381919)))

(assert (=> bs!1597273 (not (= lambda!352065 lambda!352064))))

(declare-fun bs!1597274 () Bool)

(assert (= bs!1597274 (and b!6381916 b!6381302)))

(assert (=> bs!1597274 (not (= lambda!352065 lambda!352013))))

(assert (=> b!6381916 true))

(assert (=> b!6381916 true))

(declare-fun b!6381912 () Bool)

(declare-fun e!3874021 () Bool)

(assert (=> b!6381912 (= e!3874021 (matchRSpec!3398 (regTwo!33107 lt!2370537) s!2326))))

(declare-fun b!6381913 () Bool)

(declare-fun e!3874018 () Bool)

(declare-fun e!3874019 () Bool)

(assert (=> b!6381913 (= e!3874018 e!3874019)))

(declare-fun c!1162832 () Bool)

(assert (=> b!6381913 (= c!1162832 ((_ is Star!16297) lt!2370537))))

(declare-fun b!6381914 () Bool)

(declare-fun c!1162829 () Bool)

(assert (=> b!6381914 (= c!1162829 ((_ is ElementMatch!16297) lt!2370537))))

(declare-fun e!3874020 () Bool)

(declare-fun e!3874016 () Bool)

(assert (=> b!6381914 (= e!3874020 e!3874016)))

(declare-fun b!6381915 () Bool)

(declare-fun e!3874022 () Bool)

(assert (=> b!6381915 (= e!3874022 e!3874020)))

(declare-fun res!2625140 () Bool)

(assert (=> b!6381915 (= res!2625140 (not ((_ is EmptyLang!16297) lt!2370537)))))

(assert (=> b!6381915 (=> (not res!2625140) (not e!3874020))))

(declare-fun call!545370 () Bool)

(assert (=> b!6381916 (= e!3874019 call!545370)))

(declare-fun b!6381917 () Bool)

(assert (=> b!6381917 (= e!3874016 (= s!2326 (Cons!65066 (c!1162662 lt!2370537) Nil!65066)))))

(declare-fun b!6381918 () Bool)

(declare-fun c!1162830 () Bool)

(assert (=> b!6381918 (= c!1162830 ((_ is Union!16297) lt!2370537))))

(assert (=> b!6381918 (= e!3874016 e!3874018)))

(declare-fun bm!545366 () Bool)

(declare-fun call!545371 () Bool)

(assert (=> bm!545366 (= call!545371 (isEmpty!37200 s!2326))))

(declare-fun e!3874017 () Bool)

(assert (=> b!6381919 (= e!3874017 call!545370)))

(declare-fun d!2000872 () Bool)

(declare-fun c!1162831 () Bool)

(assert (=> d!2000872 (= c!1162831 ((_ is EmptyExpr!16297) lt!2370537))))

(assert (=> d!2000872 (= (matchRSpec!3398 lt!2370537 s!2326) e!3874022)))

(declare-fun bm!545365 () Bool)

(assert (=> bm!545365 (= call!545370 (Exists!3367 (ite c!1162832 lambda!352064 lambda!352065)))))

(declare-fun b!6381920 () Bool)

(assert (=> b!6381920 (= e!3874018 e!3874021)))

(declare-fun res!2625141 () Bool)

(assert (=> b!6381920 (= res!2625141 (matchRSpec!3398 (regOne!33107 lt!2370537) s!2326))))

(assert (=> b!6381920 (=> res!2625141 e!3874021)))

(declare-fun b!6381921 () Bool)

(declare-fun res!2625139 () Bool)

(assert (=> b!6381921 (=> res!2625139 e!3874017)))

(assert (=> b!6381921 (= res!2625139 call!545371)))

(assert (=> b!6381921 (= e!3874019 e!3874017)))

(declare-fun b!6381922 () Bool)

(assert (=> b!6381922 (= e!3874022 call!545371)))

(assert (= (and d!2000872 c!1162831) b!6381922))

(assert (= (and d!2000872 (not c!1162831)) b!6381915))

(assert (= (and b!6381915 res!2625140) b!6381914))

(assert (= (and b!6381914 c!1162829) b!6381917))

(assert (= (and b!6381914 (not c!1162829)) b!6381918))

(assert (= (and b!6381918 c!1162830) b!6381920))

(assert (= (and b!6381918 (not c!1162830)) b!6381913))

(assert (= (and b!6381920 (not res!2625141)) b!6381912))

(assert (= (and b!6381913 c!1162832) b!6381921))

(assert (= (and b!6381913 (not c!1162832)) b!6381916))

(assert (= (and b!6381921 (not res!2625139)) b!6381919))

(assert (= (or b!6381919 b!6381916) bm!545365))

(assert (= (or b!6381922 b!6381921) bm!545366))

(declare-fun m!7182106 () Bool)

(assert (=> b!6381912 m!7182106))

(assert (=> bm!545366 m!7182092))

(declare-fun m!7182108 () Bool)

(assert (=> bm!545365 m!7182108))

(declare-fun m!7182110 () Bool)

(assert (=> b!6381920 m!7182110))

(assert (=> b!6381308 d!2000872))

(declare-fun d!2000874 () Bool)

(assert (=> d!2000874 (= (matchR!8480 lt!2370537 s!2326) (matchRSpec!3398 lt!2370537 s!2326))))

(declare-fun lt!2370625 () Unit!158519)

(declare-fun choose!47473 (Regex!16297 List!65190) Unit!158519)

(assert (=> d!2000874 (= lt!2370625 (choose!47473 lt!2370537 s!2326))))

(assert (=> d!2000874 (validRegex!8033 lt!2370537)))

(assert (=> d!2000874 (= (mainMatchTheorem!3398 lt!2370537 s!2326) lt!2370625)))

(declare-fun bs!1597275 () Bool)

(assert (= bs!1597275 d!2000874))

(assert (=> bs!1597275 m!7181598))

(assert (=> bs!1597275 m!7181600))

(declare-fun m!7182112 () Bool)

(assert (=> bs!1597275 m!7182112))

(assert (=> bs!1597275 m!7182094))

(assert (=> b!6381308 d!2000874))

(declare-fun d!2000876 () Bool)

(declare-fun c!1162835 () Bool)

(assert (=> d!2000876 (= c!1162835 (isEmpty!37200 s!2326))))

(declare-fun e!3874025 () Bool)

(assert (=> d!2000876 (= (matchZipper!2309 lt!2370539 s!2326) e!3874025)))

(declare-fun b!6381927 () Bool)

(declare-fun nullableZipper!2062 ((InoxSet Context!11362)) Bool)

(assert (=> b!6381927 (= e!3874025 (nullableZipper!2062 lt!2370539))))

(declare-fun b!6381928 () Bool)

(assert (=> b!6381928 (= e!3874025 (matchZipper!2309 (derivationStepZipper!2263 lt!2370539 (head!13086 s!2326)) (tail!12171 s!2326)))))

(assert (= (and d!2000876 c!1162835) b!6381927))

(assert (= (and d!2000876 (not c!1162835)) b!6381928))

(assert (=> d!2000876 m!7182092))

(declare-fun m!7182114 () Bool)

(assert (=> b!6381927 m!7182114))

(assert (=> b!6381928 m!7182090))

(assert (=> b!6381928 m!7182090))

(declare-fun m!7182116 () Bool)

(assert (=> b!6381928 m!7182116))

(assert (=> b!6381928 m!7182096))

(assert (=> b!6381928 m!7182116))

(assert (=> b!6381928 m!7182096))

(declare-fun m!7182118 () Bool)

(assert (=> b!6381928 m!7182118))

(assert (=> b!6381274 d!2000876))

(declare-fun d!2000878 () Bool)

(declare-fun c!1162836 () Bool)

(assert (=> d!2000878 (= c!1162836 (isEmpty!37200 (t!378794 s!2326)))))

(declare-fun e!3874026 () Bool)

(assert (=> d!2000878 (= (matchZipper!2309 lt!2370520 (t!378794 s!2326)) e!3874026)))

(declare-fun b!6381929 () Bool)

(assert (=> b!6381929 (= e!3874026 (nullableZipper!2062 lt!2370520))))

(declare-fun b!6381930 () Bool)

(assert (=> b!6381930 (= e!3874026 (matchZipper!2309 (derivationStepZipper!2263 lt!2370520 (head!13086 (t!378794 s!2326))) (tail!12171 (t!378794 s!2326))))))

(assert (= (and d!2000878 c!1162836) b!6381929))

(assert (= (and d!2000878 (not c!1162836)) b!6381930))

(declare-fun m!7182120 () Bool)

(assert (=> d!2000878 m!7182120))

(declare-fun m!7182122 () Bool)

(assert (=> b!6381929 m!7182122))

(declare-fun m!7182124 () Bool)

(assert (=> b!6381930 m!7182124))

(assert (=> b!6381930 m!7182124))

(declare-fun m!7182126 () Bool)

(assert (=> b!6381930 m!7182126))

(declare-fun m!7182128 () Bool)

(assert (=> b!6381930 m!7182128))

(assert (=> b!6381930 m!7182126))

(assert (=> b!6381930 m!7182128))

(declare-fun m!7182130 () Bool)

(assert (=> b!6381930 m!7182130))

(assert (=> b!6381274 d!2000878))

(declare-fun bs!1597276 () Bool)

(declare-fun d!2000880 () Bool)

(assert (= bs!1597276 (and d!2000880 d!2000772)))

(declare-fun lambda!352068 () Int)

(assert (=> bs!1597276 (= lambda!352068 lambda!352037)))

(assert (=> d!2000880 (= (inv!83989 setElem!43556) (forall!15475 (exprs!6181 setElem!43556) lambda!352068))))

(declare-fun bs!1597277 () Bool)

(assert (= bs!1597277 d!2000880))

(declare-fun m!7182132 () Bool)

(assert (=> bs!1597277 m!7182132))

(assert (=> setNonEmpty!43556 d!2000880))

(declare-fun bs!1597278 () Bool)

(declare-fun b!6381938 () Bool)

(assert (= bs!1597278 (and b!6381938 b!6381287)))

(declare-fun lambda!352069 () Int)

(assert (=> bs!1597278 (not (= lambda!352069 lambda!352010))))

(declare-fun bs!1597279 () Bool)

(assert (= bs!1597279 (and b!6381938 d!2000838)))

(assert (=> bs!1597279 (not (= lambda!352069 lambda!352046))))

(declare-fun bs!1597280 () Bool)

(assert (= bs!1597280 (and b!6381938 d!2000848)))

(assert (=> bs!1597280 (not (= lambda!352069 lambda!352058))))

(assert (=> bs!1597278 (not (= lambda!352069 lambda!352011))))

(declare-fun bs!1597281 () Bool)

(assert (= bs!1597281 (and b!6381938 b!6381919)))

(assert (=> bs!1597281 (= (and (= (reg!16626 r!7292) (reg!16626 lt!2370537)) (= r!7292 lt!2370537)) (= lambda!352069 lambda!352064))))

(declare-fun bs!1597282 () Bool)

(assert (= bs!1597282 (and b!6381938 b!6381302)))

(assert (=> bs!1597282 (not (= lambda!352069 lambda!352013))))

(assert (=> bs!1597280 (not (= lambda!352069 lambda!352059))))

(declare-fun bs!1597283 () Bool)

(assert (= bs!1597283 (and b!6381938 b!6381916)))

(assert (=> bs!1597283 (not (= lambda!352069 lambda!352065))))

(assert (=> b!6381938 true))

(assert (=> b!6381938 true))

(declare-fun bs!1597284 () Bool)

(declare-fun b!6381935 () Bool)

(assert (= bs!1597284 (and b!6381935 b!6381287)))

(declare-fun lambda!352070 () Int)

(assert (=> bs!1597284 (not (= lambda!352070 lambda!352010))))

(declare-fun bs!1597285 () Bool)

(assert (= bs!1597285 (and b!6381935 d!2000838)))

(assert (=> bs!1597285 (not (= lambda!352070 lambda!352046))))

(declare-fun bs!1597286 () Bool)

(assert (= bs!1597286 (and b!6381935 b!6381938)))

(assert (=> bs!1597286 (not (= lambda!352070 lambda!352069))))

(declare-fun bs!1597287 () Bool)

(assert (= bs!1597287 (and b!6381935 d!2000848)))

(assert (=> bs!1597287 (not (= lambda!352070 lambda!352058))))

(assert (=> bs!1597284 (= lambda!352070 lambda!352011)))

(declare-fun bs!1597288 () Bool)

(assert (= bs!1597288 (and b!6381935 b!6381919)))

(assert (=> bs!1597288 (not (= lambda!352070 lambda!352064))))

(declare-fun bs!1597289 () Bool)

(assert (= bs!1597289 (and b!6381935 b!6381302)))

(assert (=> bs!1597289 (not (= lambda!352070 lambda!352013))))

(assert (=> bs!1597287 (= lambda!352070 lambda!352059)))

(declare-fun bs!1597290 () Bool)

(assert (= bs!1597290 (and b!6381935 b!6381916)))

(assert (=> bs!1597290 (= (and (= (regOne!33106 r!7292) (regOne!33106 lt!2370537)) (= (regTwo!33106 r!7292) (regTwo!33106 lt!2370537))) (= lambda!352070 lambda!352065))))

(assert (=> b!6381935 true))

(assert (=> b!6381935 true))

(declare-fun b!6381931 () Bool)

(declare-fun e!3874032 () Bool)

(assert (=> b!6381931 (= e!3874032 (matchRSpec!3398 (regTwo!33107 r!7292) s!2326))))

(declare-fun b!6381932 () Bool)

(declare-fun e!3874029 () Bool)

(declare-fun e!3874030 () Bool)

(assert (=> b!6381932 (= e!3874029 e!3874030)))

(declare-fun c!1162840 () Bool)

(assert (=> b!6381932 (= c!1162840 ((_ is Star!16297) r!7292))))

(declare-fun b!6381933 () Bool)

(declare-fun c!1162837 () Bool)

(assert (=> b!6381933 (= c!1162837 ((_ is ElementMatch!16297) r!7292))))

(declare-fun e!3874031 () Bool)

(declare-fun e!3874027 () Bool)

(assert (=> b!6381933 (= e!3874031 e!3874027)))

(declare-fun b!6381934 () Bool)

(declare-fun e!3874033 () Bool)

(assert (=> b!6381934 (= e!3874033 e!3874031)))

(declare-fun res!2625143 () Bool)

(assert (=> b!6381934 (= res!2625143 (not ((_ is EmptyLang!16297) r!7292)))))

(assert (=> b!6381934 (=> (not res!2625143) (not e!3874031))))

(declare-fun call!545372 () Bool)

(assert (=> b!6381935 (= e!3874030 call!545372)))

(declare-fun b!6381936 () Bool)

(assert (=> b!6381936 (= e!3874027 (= s!2326 (Cons!65066 (c!1162662 r!7292) Nil!65066)))))

(declare-fun b!6381937 () Bool)

(declare-fun c!1162838 () Bool)

(assert (=> b!6381937 (= c!1162838 ((_ is Union!16297) r!7292))))

(assert (=> b!6381937 (= e!3874027 e!3874029)))

(declare-fun bm!545368 () Bool)

(declare-fun call!545373 () Bool)

(assert (=> bm!545368 (= call!545373 (isEmpty!37200 s!2326))))

(declare-fun e!3874028 () Bool)

(assert (=> b!6381938 (= e!3874028 call!545372)))

(declare-fun d!2000882 () Bool)

(declare-fun c!1162839 () Bool)

(assert (=> d!2000882 (= c!1162839 ((_ is EmptyExpr!16297) r!7292))))

(assert (=> d!2000882 (= (matchRSpec!3398 r!7292 s!2326) e!3874033)))

(declare-fun bm!545367 () Bool)

(assert (=> bm!545367 (= call!545372 (Exists!3367 (ite c!1162840 lambda!352069 lambda!352070)))))

(declare-fun b!6381939 () Bool)

(assert (=> b!6381939 (= e!3874029 e!3874032)))

(declare-fun res!2625144 () Bool)

(assert (=> b!6381939 (= res!2625144 (matchRSpec!3398 (regOne!33107 r!7292) s!2326))))

(assert (=> b!6381939 (=> res!2625144 e!3874032)))

(declare-fun b!6381940 () Bool)

(declare-fun res!2625142 () Bool)

(assert (=> b!6381940 (=> res!2625142 e!3874028)))

(assert (=> b!6381940 (= res!2625142 call!545373)))

(assert (=> b!6381940 (= e!3874030 e!3874028)))

(declare-fun b!6381941 () Bool)

(assert (=> b!6381941 (= e!3874033 call!545373)))

(assert (= (and d!2000882 c!1162839) b!6381941))

(assert (= (and d!2000882 (not c!1162839)) b!6381934))

(assert (= (and b!6381934 res!2625143) b!6381933))

(assert (= (and b!6381933 c!1162837) b!6381936))

(assert (= (and b!6381933 (not c!1162837)) b!6381937))

(assert (= (and b!6381937 c!1162838) b!6381939))

(assert (= (and b!6381937 (not c!1162838)) b!6381932))

(assert (= (and b!6381939 (not res!2625144)) b!6381931))

(assert (= (and b!6381932 c!1162840) b!6381940))

(assert (= (and b!6381932 (not c!1162840)) b!6381935))

(assert (= (and b!6381940 (not res!2625142)) b!6381938))

(assert (= (or b!6381938 b!6381935) bm!545367))

(assert (= (or b!6381941 b!6381940) bm!545368))

(declare-fun m!7182134 () Bool)

(assert (=> b!6381931 m!7182134))

(assert (=> bm!545368 m!7182092))

(declare-fun m!7182136 () Bool)

(assert (=> bm!545367 m!7182136))

(declare-fun m!7182138 () Bool)

(assert (=> b!6381939 m!7182138))

(assert (=> b!6381292 d!2000882))

(declare-fun b!6381942 () Bool)

(declare-fun e!3874040 () Bool)

(assert (=> b!6381942 (= e!3874040 (= (head!13086 s!2326) (c!1162662 r!7292)))))

(declare-fun b!6381943 () Bool)

(declare-fun res!2625151 () Bool)

(assert (=> b!6381943 (=> (not res!2625151) (not e!3874040))))

(assert (=> b!6381943 (= res!2625151 (isEmpty!37200 (tail!12171 s!2326)))))

(declare-fun b!6381944 () Bool)

(declare-fun res!2625146 () Bool)

(declare-fun e!3874039 () Bool)

(assert (=> b!6381944 (=> res!2625146 e!3874039)))

(assert (=> b!6381944 (= res!2625146 e!3874040)))

(declare-fun res!2625150 () Bool)

(assert (=> b!6381944 (=> (not res!2625150) (not e!3874040))))

(declare-fun lt!2370626 () Bool)

(assert (=> b!6381944 (= res!2625150 lt!2370626)))

(declare-fun b!6381945 () Bool)

(declare-fun res!2625152 () Bool)

(assert (=> b!6381945 (=> (not res!2625152) (not e!3874040))))

(declare-fun call!545374 () Bool)

(assert (=> b!6381945 (= res!2625152 (not call!545374))))

(declare-fun b!6381946 () Bool)

(declare-fun e!3874035 () Bool)

(assert (=> b!6381946 (= e!3874035 (not lt!2370626))))

(declare-fun b!6381947 () Bool)

(declare-fun e!3874038 () Bool)

(assert (=> b!6381947 (= e!3874038 (not (= (head!13086 s!2326) (c!1162662 r!7292))))))

(declare-fun b!6381948 () Bool)

(declare-fun e!3874034 () Bool)

(assert (=> b!6381948 (= e!3874034 (matchR!8480 (derivativeStep!5001 r!7292 (head!13086 s!2326)) (tail!12171 s!2326)))))

(declare-fun b!6381949 () Bool)

(declare-fun e!3874037 () Bool)

(assert (=> b!6381949 (= e!3874039 e!3874037)))

(declare-fun res!2625145 () Bool)

(assert (=> b!6381949 (=> (not res!2625145) (not e!3874037))))

(assert (=> b!6381949 (= res!2625145 (not lt!2370626))))

(declare-fun b!6381950 () Bool)

(declare-fun e!3874036 () Bool)

(assert (=> b!6381950 (= e!3874036 e!3874035)))

(declare-fun c!1162842 () Bool)

(assert (=> b!6381950 (= c!1162842 ((_ is EmptyLang!16297) r!7292))))

(declare-fun b!6381951 () Bool)

(declare-fun res!2625148 () Bool)

(assert (=> b!6381951 (=> res!2625148 e!3874039)))

(assert (=> b!6381951 (= res!2625148 (not ((_ is ElementMatch!16297) r!7292)))))

(assert (=> b!6381951 (= e!3874035 e!3874039)))

(declare-fun b!6381952 () Bool)

(declare-fun res!2625149 () Bool)

(assert (=> b!6381952 (=> res!2625149 e!3874038)))

(assert (=> b!6381952 (= res!2625149 (not (isEmpty!37200 (tail!12171 s!2326))))))

(declare-fun b!6381953 () Bool)

(assert (=> b!6381953 (= e!3874037 e!3874038)))

(declare-fun res!2625147 () Bool)

(assert (=> b!6381953 (=> res!2625147 e!3874038)))

(assert (=> b!6381953 (= res!2625147 call!545374)))

(declare-fun bm!545369 () Bool)

(assert (=> bm!545369 (= call!545374 (isEmpty!37200 s!2326))))

(declare-fun d!2000884 () Bool)

(assert (=> d!2000884 e!3874036))

(declare-fun c!1162841 () Bool)

(assert (=> d!2000884 (= c!1162841 ((_ is EmptyExpr!16297) r!7292))))

(assert (=> d!2000884 (= lt!2370626 e!3874034)))

(declare-fun c!1162843 () Bool)

(assert (=> d!2000884 (= c!1162843 (isEmpty!37200 s!2326))))

(assert (=> d!2000884 (validRegex!8033 r!7292)))

(assert (=> d!2000884 (= (matchR!8480 r!7292 s!2326) lt!2370626)))

(declare-fun b!6381954 () Bool)

(assert (=> b!6381954 (= e!3874034 (nullable!6290 r!7292))))

(declare-fun b!6381955 () Bool)

(assert (=> b!6381955 (= e!3874036 (= lt!2370626 call!545374))))

(assert (= (and d!2000884 c!1162843) b!6381954))

(assert (= (and d!2000884 (not c!1162843)) b!6381948))

(assert (= (and d!2000884 c!1162841) b!6381955))

(assert (= (and d!2000884 (not c!1162841)) b!6381950))

(assert (= (and b!6381950 c!1162842) b!6381946))

(assert (= (and b!6381950 (not c!1162842)) b!6381951))

(assert (= (and b!6381951 (not res!2625148)) b!6381944))

(assert (= (and b!6381944 res!2625150) b!6381945))

(assert (= (and b!6381945 res!2625152) b!6381943))

(assert (= (and b!6381943 res!2625151) b!6381942))

(assert (= (and b!6381944 (not res!2625146)) b!6381949))

(assert (= (and b!6381949 res!2625145) b!6381953))

(assert (= (and b!6381953 (not res!2625147)) b!6381952))

(assert (= (and b!6381952 (not res!2625149)) b!6381947))

(assert (= (or b!6381955 b!6381945 b!6381953) bm!545369))

(assert (=> b!6381947 m!7182090))

(assert (=> d!2000884 m!7182092))

(assert (=> d!2000884 m!7181690))

(assert (=> b!6381943 m!7182096))

(assert (=> b!6381943 m!7182096))

(assert (=> b!6381943 m!7182098))

(declare-fun m!7182140 () Bool)

(assert (=> b!6381954 m!7182140))

(assert (=> bm!545369 m!7182092))

(assert (=> b!6381948 m!7182090))

(assert (=> b!6381948 m!7182090))

(declare-fun m!7182142 () Bool)

(assert (=> b!6381948 m!7182142))

(assert (=> b!6381948 m!7182096))

(assert (=> b!6381948 m!7182142))

(assert (=> b!6381948 m!7182096))

(declare-fun m!7182144 () Bool)

(assert (=> b!6381948 m!7182144))

(assert (=> b!6381952 m!7182096))

(assert (=> b!6381952 m!7182096))

(assert (=> b!6381952 m!7182098))

(assert (=> b!6381942 m!7182090))

(assert (=> b!6381292 d!2000884))

(declare-fun d!2000886 () Bool)

(assert (=> d!2000886 (= (matchR!8480 r!7292 s!2326) (matchRSpec!3398 r!7292 s!2326))))

(declare-fun lt!2370627 () Unit!158519)

(assert (=> d!2000886 (= lt!2370627 (choose!47473 r!7292 s!2326))))

(assert (=> d!2000886 (validRegex!8033 r!7292)))

(assert (=> d!2000886 (= (mainMatchTheorem!3398 r!7292 s!2326) lt!2370627)))

(declare-fun bs!1597291 () Bool)

(assert (= bs!1597291 d!2000886))

(assert (=> bs!1597291 m!7181636))

(assert (=> bs!1597291 m!7181634))

(declare-fun m!7182146 () Bool)

(assert (=> bs!1597291 m!7182146))

(assert (=> bs!1597291 m!7181690))

(assert (=> b!6381292 d!2000886))

(declare-fun bs!1597292 () Bool)

(declare-fun d!2000888 () Bool)

(assert (= bs!1597292 (and d!2000888 d!2000772)))

(declare-fun lambda!352073 () Int)

(assert (=> bs!1597292 (= lambda!352073 lambda!352037)))

(declare-fun bs!1597293 () Bool)

(assert (= bs!1597293 (and d!2000888 d!2000880)))

(assert (=> bs!1597293 (= lambda!352073 lambda!352068)))

(declare-fun b!6381976 () Bool)

(declare-fun e!3874057 () Regex!16297)

(assert (=> b!6381976 (= e!3874057 (h!71515 (unfocusZipperList!1718 zl!343)))))

(declare-fun b!6381977 () Bool)

(declare-fun e!3874058 () Bool)

(declare-fun lt!2370630 () Regex!16297)

(declare-fun isEmptyLang!1705 (Regex!16297) Bool)

(assert (=> b!6381977 (= e!3874058 (isEmptyLang!1705 lt!2370630))))

(declare-fun b!6381978 () Bool)

(declare-fun e!3874055 () Bool)

(declare-fun isUnion!1135 (Regex!16297) Bool)

(assert (=> b!6381978 (= e!3874055 (isUnion!1135 lt!2370630))))

(declare-fun b!6381979 () Bool)

(declare-fun e!3874054 () Regex!16297)

(assert (=> b!6381979 (= e!3874054 EmptyLang!16297)))

(declare-fun b!6381980 () Bool)

(assert (=> b!6381980 (= e!3874055 (= lt!2370630 (head!13085 (unfocusZipperList!1718 zl!343))))))

(declare-fun b!6381981 () Bool)

(assert (=> b!6381981 (= e!3874057 e!3874054)))

(declare-fun c!1162854 () Bool)

(assert (=> b!6381981 (= c!1162854 ((_ is Cons!65067) (unfocusZipperList!1718 zl!343)))))

(declare-fun b!6381982 () Bool)

(assert (=> b!6381982 (= e!3874054 (Union!16297 (h!71515 (unfocusZipperList!1718 zl!343)) (generalisedUnion!2141 (t!378795 (unfocusZipperList!1718 zl!343)))))))

(declare-fun e!3874056 () Bool)

(assert (=> d!2000888 e!3874056))

(declare-fun res!2625158 () Bool)

(assert (=> d!2000888 (=> (not res!2625158) (not e!3874056))))

(assert (=> d!2000888 (= res!2625158 (validRegex!8033 lt!2370630))))

(assert (=> d!2000888 (= lt!2370630 e!3874057)))

(declare-fun c!1162855 () Bool)

(declare-fun e!3874053 () Bool)

(assert (=> d!2000888 (= c!1162855 e!3874053)))

(declare-fun res!2625157 () Bool)

(assert (=> d!2000888 (=> (not res!2625157) (not e!3874053))))

(assert (=> d!2000888 (= res!2625157 ((_ is Cons!65067) (unfocusZipperList!1718 zl!343)))))

(assert (=> d!2000888 (forall!15475 (unfocusZipperList!1718 zl!343) lambda!352073)))

(assert (=> d!2000888 (= (generalisedUnion!2141 (unfocusZipperList!1718 zl!343)) lt!2370630)))

(declare-fun b!6381983 () Bool)

(assert (=> b!6381983 (= e!3874056 e!3874058)))

(declare-fun c!1162853 () Bool)

(assert (=> b!6381983 (= c!1162853 (isEmpty!37195 (unfocusZipperList!1718 zl!343)))))

(declare-fun b!6381984 () Bool)

(assert (=> b!6381984 (= e!3874058 e!3874055)))

(declare-fun c!1162852 () Bool)

(assert (=> b!6381984 (= c!1162852 (isEmpty!37195 (tail!12170 (unfocusZipperList!1718 zl!343))))))

(declare-fun b!6381985 () Bool)

(assert (=> b!6381985 (= e!3874053 (isEmpty!37195 (t!378795 (unfocusZipperList!1718 zl!343))))))

(assert (= (and d!2000888 res!2625157) b!6381985))

(assert (= (and d!2000888 c!1162855) b!6381976))

(assert (= (and d!2000888 (not c!1162855)) b!6381981))

(assert (= (and b!6381981 c!1162854) b!6381982))

(assert (= (and b!6381981 (not c!1162854)) b!6381979))

(assert (= (and d!2000888 res!2625158) b!6381983))

(assert (= (and b!6381983 c!1162853) b!6381977))

(assert (= (and b!6381983 (not c!1162853)) b!6381984))

(assert (= (and b!6381984 c!1162852) b!6381980))

(assert (= (and b!6381984 (not c!1162852)) b!6381978))

(assert (=> b!6381984 m!7181674))

(declare-fun m!7182148 () Bool)

(assert (=> b!6381984 m!7182148))

(assert (=> b!6381984 m!7182148))

(declare-fun m!7182150 () Bool)

(assert (=> b!6381984 m!7182150))

(declare-fun m!7182152 () Bool)

(assert (=> b!6381982 m!7182152))

(assert (=> b!6381983 m!7181674))

(declare-fun m!7182154 () Bool)

(assert (=> b!6381983 m!7182154))

(declare-fun m!7182156 () Bool)

(assert (=> b!6381985 m!7182156))

(assert (=> b!6381980 m!7181674))

(declare-fun m!7182158 () Bool)

(assert (=> b!6381980 m!7182158))

(declare-fun m!7182160 () Bool)

(assert (=> d!2000888 m!7182160))

(assert (=> d!2000888 m!7181674))

(declare-fun m!7182162 () Bool)

(assert (=> d!2000888 m!7182162))

(declare-fun m!7182164 () Bool)

(assert (=> b!6381978 m!7182164))

(declare-fun m!7182166 () Bool)

(assert (=> b!6381977 m!7182166))

(assert (=> b!6381279 d!2000888))

(declare-fun bs!1597294 () Bool)

(declare-fun d!2000890 () Bool)

(assert (= bs!1597294 (and d!2000890 d!2000772)))

(declare-fun lambda!352076 () Int)

(assert (=> bs!1597294 (= lambda!352076 lambda!352037)))

(declare-fun bs!1597295 () Bool)

(assert (= bs!1597295 (and d!2000890 d!2000880)))

(assert (=> bs!1597295 (= lambda!352076 lambda!352068)))

(declare-fun bs!1597296 () Bool)

(assert (= bs!1597296 (and d!2000890 d!2000888)))

(assert (=> bs!1597296 (= lambda!352076 lambda!352073)))

(declare-fun lt!2370633 () List!65191)

(assert (=> d!2000890 (forall!15475 lt!2370633 lambda!352076)))

(declare-fun e!3874061 () List!65191)

(assert (=> d!2000890 (= lt!2370633 e!3874061)))

(declare-fun c!1162858 () Bool)

(assert (=> d!2000890 (= c!1162858 ((_ is Cons!65068) zl!343))))

(assert (=> d!2000890 (= (unfocusZipperList!1718 zl!343) lt!2370633)))

(declare-fun b!6381990 () Bool)

(assert (=> b!6381990 (= e!3874061 (Cons!65067 (generalisedConcat!1894 (exprs!6181 (h!71516 zl!343))) (unfocusZipperList!1718 (t!378796 zl!343))))))

(declare-fun b!6381991 () Bool)

(assert (=> b!6381991 (= e!3874061 Nil!65067)))

(assert (= (and d!2000890 c!1162858) b!6381990))

(assert (= (and d!2000890 (not c!1162858)) b!6381991))

(declare-fun m!7182168 () Bool)

(assert (=> d!2000890 m!7182168))

(assert (=> b!6381990 m!7181688))

(declare-fun m!7182170 () Bool)

(assert (=> b!6381990 m!7182170))

(assert (=> b!6381279 d!2000890))

(declare-fun d!2000892 () Bool)

(assert (=> d!2000892 (= (isEmpty!37195 (t!378795 (exprs!6181 (h!71516 zl!343)))) ((_ is Nil!65067) (t!378795 (exprs!6181 (h!71516 zl!343)))))))

(assert (=> b!6381280 d!2000892))

(declare-fun d!2000894 () Bool)

(declare-fun e!3874064 () Bool)

(assert (=> d!2000894 e!3874064))

(declare-fun res!2625161 () Bool)

(assert (=> d!2000894 (=> (not res!2625161) (not e!3874064))))

(declare-fun lt!2370636 () List!65192)

(declare-fun noDuplicate!2126 (List!65192) Bool)

(assert (=> d!2000894 (= res!2625161 (noDuplicate!2126 lt!2370636))))

(declare-fun choose!47475 ((InoxSet Context!11362)) List!65192)

(assert (=> d!2000894 (= lt!2370636 (choose!47475 z!1189))))

(assert (=> d!2000894 (= (toList!10081 z!1189) lt!2370636)))

(declare-fun b!6381994 () Bool)

(declare-fun content!12311 (List!65192) (InoxSet Context!11362))

(assert (=> b!6381994 (= e!3874064 (= (content!12311 lt!2370636) z!1189))))

(assert (= (and d!2000894 res!2625161) b!6381994))

(declare-fun m!7182172 () Bool)

(assert (=> d!2000894 m!7182172))

(declare-fun m!7182174 () Bool)

(assert (=> d!2000894 m!7182174))

(declare-fun m!7182176 () Bool)

(assert (=> b!6381994 m!7182176))

(assert (=> b!6381277 d!2000894))

(declare-fun d!2000896 () Bool)

(declare-fun nullableFct!2236 (Regex!16297) Bool)

(assert (=> d!2000896 (= (nullable!6290 (regOne!33106 (regOne!33106 r!7292))) (nullableFct!2236 (regOne!33106 (regOne!33106 r!7292))))))

(declare-fun bs!1597297 () Bool)

(assert (= bs!1597297 d!2000896))

(declare-fun m!7182178 () Bool)

(assert (=> bs!1597297 m!7182178))

(assert (=> b!6381297 d!2000896))

(declare-fun d!2000898 () Bool)

(declare-fun dynLambda!25815 (Int Context!11362) (InoxSet Context!11362))

(assert (=> d!2000898 (= (flatMap!1802 z!1189 lambda!352012) (dynLambda!25815 lambda!352012 (h!71516 zl!343)))))

(declare-fun lt!2370639 () Unit!158519)

(declare-fun choose!47476 ((InoxSet Context!11362) Context!11362 Int) Unit!158519)

(assert (=> d!2000898 (= lt!2370639 (choose!47476 z!1189 (h!71516 zl!343) lambda!352012))))

(assert (=> d!2000898 (= z!1189 (store ((as const (Array Context!11362 Bool)) false) (h!71516 zl!343) true))))

(assert (=> d!2000898 (= (lemmaFlatMapOnSingletonSet!1328 z!1189 (h!71516 zl!343) lambda!352012) lt!2370639)))

(declare-fun b_lambda!242501 () Bool)

(assert (=> (not b_lambda!242501) (not d!2000898)))

(declare-fun bs!1597298 () Bool)

(assert (= bs!1597298 d!2000898))

(assert (=> bs!1597298 m!7181666))

(declare-fun m!7182180 () Bool)

(assert (=> bs!1597298 m!7182180))

(declare-fun m!7182182 () Bool)

(assert (=> bs!1597298 m!7182182))

(declare-fun m!7182184 () Bool)

(assert (=> bs!1597298 m!7182184))

(assert (=> b!6381278 d!2000898))

(declare-fun c!1162863 () Bool)

(declare-fun bm!545370 () Bool)

(declare-fun call!545376 () List!65191)

(declare-fun c!1162862 () Bool)

(assert (=> bm!545370 (= call!545376 ($colon$colon!2158 (exprs!6181 lt!2370515) (ite (or c!1162862 c!1162863) (regTwo!33106 (h!71515 (exprs!6181 (h!71516 zl!343)))) (h!71515 (exprs!6181 (h!71516 zl!343))))))))

(declare-fun b!6381995 () Bool)

(declare-fun e!3874065 () (InoxSet Context!11362))

(declare-fun call!545380 () (InoxSet Context!11362))

(assert (=> b!6381995 (= e!3874065 call!545380)))

(declare-fun b!6381996 () Bool)

(declare-fun e!3874067 () (InoxSet Context!11362))

(declare-fun call!545378 () (InoxSet Context!11362))

(declare-fun call!545377 () (InoxSet Context!11362))

(assert (=> b!6381996 (= e!3874067 ((_ map or) call!545378 call!545377))))

(declare-fun b!6381997 () Bool)

(declare-fun e!3874070 () (InoxSet Context!11362))

(declare-fun call!545379 () (InoxSet Context!11362))

(assert (=> b!6381997 (= e!3874070 ((_ map or) call!545377 call!545379))))

(declare-fun bm!545371 () Bool)

(declare-fun call!545375 () List!65191)

(assert (=> bm!545371 (= call!545375 call!545376)))

(declare-fun b!6381998 () Bool)

(declare-fun e!3874069 () Bool)

(assert (=> b!6381998 (= c!1162862 e!3874069)))

(declare-fun res!2625162 () Bool)

(assert (=> b!6381998 (=> (not res!2625162) (not e!3874069))))

(assert (=> b!6381998 (= res!2625162 ((_ is Concat!25142) (h!71515 (exprs!6181 (h!71516 zl!343)))))))

(assert (=> b!6381998 (= e!3874067 e!3874070)))

(declare-fun b!6381999 () Bool)

(declare-fun e!3874066 () (InoxSet Context!11362))

(assert (=> b!6381999 (= e!3874066 call!545380)))

(declare-fun b!6382000 () Bool)

(assert (=> b!6382000 (= e!3874070 e!3874066)))

(assert (=> b!6382000 (= c!1162863 ((_ is Concat!25142) (h!71515 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun bm!545372 () Bool)

(assert (=> bm!545372 (= call!545380 call!545379)))

(declare-fun b!6382001 () Bool)

(assert (=> b!6382001 (= e!3874065 ((as const (Array Context!11362 Bool)) false))))

(declare-fun bm!545373 () Bool)

(declare-fun c!1162861 () Bool)

(assert (=> bm!545373 (= call!545377 (derivationStepZipperDown!1545 (ite c!1162861 (regTwo!33107 (h!71515 (exprs!6181 (h!71516 zl!343)))) (regOne!33106 (h!71515 (exprs!6181 (h!71516 zl!343))))) (ite c!1162861 lt!2370515 (Context!11363 call!545376)) (h!71514 s!2326)))))

(declare-fun d!2000900 () Bool)

(declare-fun c!1162860 () Bool)

(assert (=> d!2000900 (= c!1162860 (and ((_ is ElementMatch!16297) (h!71515 (exprs!6181 (h!71516 zl!343)))) (= (c!1162662 (h!71515 (exprs!6181 (h!71516 zl!343)))) (h!71514 s!2326))))))

(declare-fun e!3874068 () (InoxSet Context!11362))

(assert (=> d!2000900 (= (derivationStepZipperDown!1545 (h!71515 (exprs!6181 (h!71516 zl!343))) lt!2370515 (h!71514 s!2326)) e!3874068)))

(declare-fun b!6382002 () Bool)

(assert (=> b!6382002 (= e!3874068 (store ((as const (Array Context!11362 Bool)) false) lt!2370515 true))))

(declare-fun bm!545374 () Bool)

(assert (=> bm!545374 (= call!545378 (derivationStepZipperDown!1545 (ite c!1162861 (regOne!33107 (h!71515 (exprs!6181 (h!71516 zl!343)))) (ite c!1162862 (regTwo!33106 (h!71515 (exprs!6181 (h!71516 zl!343)))) (ite c!1162863 (regOne!33106 (h!71515 (exprs!6181 (h!71516 zl!343)))) (reg!16626 (h!71515 (exprs!6181 (h!71516 zl!343))))))) (ite (or c!1162861 c!1162862) lt!2370515 (Context!11363 call!545375)) (h!71514 s!2326)))))

(declare-fun b!6382003 () Bool)

(assert (=> b!6382003 (= e!3874068 e!3874067)))

(assert (=> b!6382003 (= c!1162861 ((_ is Union!16297) (h!71515 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun b!6382004 () Bool)

(assert (=> b!6382004 (= e!3874069 (nullable!6290 (regOne!33106 (h!71515 (exprs!6181 (h!71516 zl!343))))))))

(declare-fun b!6382005 () Bool)

(declare-fun c!1162859 () Bool)

(assert (=> b!6382005 (= c!1162859 ((_ is Star!16297) (h!71515 (exprs!6181 (h!71516 zl!343)))))))

(assert (=> b!6382005 (= e!3874066 e!3874065)))

(declare-fun bm!545375 () Bool)

(assert (=> bm!545375 (= call!545379 call!545378)))

(assert (= (and d!2000900 c!1162860) b!6382002))

(assert (= (and d!2000900 (not c!1162860)) b!6382003))

(assert (= (and b!6382003 c!1162861) b!6381996))

(assert (= (and b!6382003 (not c!1162861)) b!6381998))

(assert (= (and b!6381998 res!2625162) b!6382004))

(assert (= (and b!6381998 c!1162862) b!6381997))

(assert (= (and b!6381998 (not c!1162862)) b!6382000))

(assert (= (and b!6382000 c!1162863) b!6381999))

(assert (= (and b!6382000 (not c!1162863)) b!6382005))

(assert (= (and b!6382005 c!1162859) b!6381995))

(assert (= (and b!6382005 (not c!1162859)) b!6382001))

(assert (= (or b!6381999 b!6381995) bm!545371))

(assert (= (or b!6381999 b!6381995) bm!545372))

(assert (= (or b!6381997 bm!545371) bm!545370))

(assert (= (or b!6381997 bm!545372) bm!545375))

(assert (= (or b!6381996 b!6381997) bm!545373))

(assert (= (or b!6381996 bm!545375) bm!545374))

(declare-fun m!7182186 () Bool)

(assert (=> b!6382002 m!7182186))

(declare-fun m!7182188 () Bool)

(assert (=> bm!545373 m!7182188))

(declare-fun m!7182190 () Bool)

(assert (=> b!6382004 m!7182190))

(declare-fun m!7182192 () Bool)

(assert (=> bm!545374 m!7182192))

(declare-fun m!7182194 () Bool)

(assert (=> bm!545370 m!7182194))

(assert (=> b!6381278 d!2000900))

(declare-fun d!2000902 () Bool)

(assert (=> d!2000902 (= (nullable!6290 (h!71515 (exprs!6181 (h!71516 zl!343)))) (nullableFct!2236 (h!71515 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun bs!1597299 () Bool)

(assert (= bs!1597299 d!2000902))

(declare-fun m!7182196 () Bool)

(assert (=> bs!1597299 m!7182196))

(assert (=> b!6381278 d!2000902))

(declare-fun b!6382016 () Bool)

(declare-fun e!3874079 () (InoxSet Context!11362))

(declare-fun call!545383 () (InoxSet Context!11362))

(assert (=> b!6382016 (= e!3874079 call!545383)))

(declare-fun bm!545378 () Bool)

(assert (=> bm!545378 (= call!545383 (derivationStepZipperDown!1545 (h!71515 (exprs!6181 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343))))))) (Context!11363 (t!378795 (exprs!6181 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343)))))))) (h!71514 s!2326)))))

(declare-fun b!6382017 () Bool)

(declare-fun e!3874078 () (InoxSet Context!11362))

(assert (=> b!6382017 (= e!3874078 e!3874079)))

(declare-fun c!1162869 () Bool)

(assert (=> b!6382017 (= c!1162869 ((_ is Cons!65067) (exprs!6181 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343))))))))))

(declare-fun b!6382018 () Bool)

(assert (=> b!6382018 (= e!3874079 ((as const (Array Context!11362 Bool)) false))))

(declare-fun d!2000904 () Bool)

(declare-fun c!1162868 () Bool)

(declare-fun e!3874077 () Bool)

(assert (=> d!2000904 (= c!1162868 e!3874077)))

(declare-fun res!2625165 () Bool)

(assert (=> d!2000904 (=> (not res!2625165) (not e!3874077))))

(assert (=> d!2000904 (= res!2625165 ((_ is Cons!65067) (exprs!6181 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343))))))))))

(assert (=> d!2000904 (= (derivationStepZipperUp!1471 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343))))) (h!71514 s!2326)) e!3874078)))

(declare-fun b!6382019 () Bool)

(assert (=> b!6382019 (= e!3874077 (nullable!6290 (h!71515 (exprs!6181 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343)))))))))))

(declare-fun b!6382020 () Bool)

(assert (=> b!6382020 (= e!3874078 ((_ map or) call!545383 (derivationStepZipperUp!1471 (Context!11363 (t!378795 (exprs!6181 (Context!11363 (Cons!65067 (h!71515 (exprs!6181 (h!71516 zl!343))) (t!378795 (exprs!6181 (h!71516 zl!343)))))))) (h!71514 s!2326))))))

(assert (= (and d!2000904 res!2625165) b!6382019))

(assert (= (and d!2000904 c!1162868) b!6382020))

(assert (= (and d!2000904 (not c!1162868)) b!6382017))

(assert (= (and b!6382017 c!1162869) b!6382016))

(assert (= (and b!6382017 (not c!1162869)) b!6382018))

(assert (= (or b!6382020 b!6382016) bm!545378))

(declare-fun m!7182198 () Bool)

(assert (=> bm!545378 m!7182198))

(declare-fun m!7182200 () Bool)

(assert (=> b!6382019 m!7182200))

(declare-fun m!7182202 () Bool)

(assert (=> b!6382020 m!7182202))

(assert (=> b!6381278 d!2000904))

(declare-fun b!6382021 () Bool)

(declare-fun e!3874082 () (InoxSet Context!11362))

(declare-fun call!545384 () (InoxSet Context!11362))

(assert (=> b!6382021 (= e!3874082 call!545384)))

(declare-fun bm!545379 () Bool)

(assert (=> bm!545379 (= call!545384 (derivationStepZipperDown!1545 (h!71515 (exprs!6181 lt!2370515)) (Context!11363 (t!378795 (exprs!6181 lt!2370515))) (h!71514 s!2326)))))

(declare-fun b!6382022 () Bool)

(declare-fun e!3874081 () (InoxSet Context!11362))

(assert (=> b!6382022 (= e!3874081 e!3874082)))

(declare-fun c!1162871 () Bool)

(assert (=> b!6382022 (= c!1162871 ((_ is Cons!65067) (exprs!6181 lt!2370515)))))

(declare-fun b!6382023 () Bool)

(assert (=> b!6382023 (= e!3874082 ((as const (Array Context!11362 Bool)) false))))

(declare-fun d!2000906 () Bool)

(declare-fun c!1162870 () Bool)

(declare-fun e!3874080 () Bool)

(assert (=> d!2000906 (= c!1162870 e!3874080)))

(declare-fun res!2625166 () Bool)

(assert (=> d!2000906 (=> (not res!2625166) (not e!3874080))))

(assert (=> d!2000906 (= res!2625166 ((_ is Cons!65067) (exprs!6181 lt!2370515)))))

(assert (=> d!2000906 (= (derivationStepZipperUp!1471 lt!2370515 (h!71514 s!2326)) e!3874081)))

(declare-fun b!6382024 () Bool)

(assert (=> b!6382024 (= e!3874080 (nullable!6290 (h!71515 (exprs!6181 lt!2370515))))))

(declare-fun b!6382025 () Bool)

(assert (=> b!6382025 (= e!3874081 ((_ map or) call!545384 (derivationStepZipperUp!1471 (Context!11363 (t!378795 (exprs!6181 lt!2370515))) (h!71514 s!2326))))))

(assert (= (and d!2000906 res!2625166) b!6382024))

(assert (= (and d!2000906 c!1162870) b!6382025))

(assert (= (and d!2000906 (not c!1162870)) b!6382022))

(assert (= (and b!6382022 c!1162871) b!6382021))

(assert (= (and b!6382022 (not c!1162871)) b!6382023))

(assert (= (or b!6382025 b!6382021) bm!545379))

(declare-fun m!7182204 () Bool)

(assert (=> bm!545379 m!7182204))

(declare-fun m!7182206 () Bool)

(assert (=> b!6382024 m!7182206))

(declare-fun m!7182208 () Bool)

(assert (=> b!6382025 m!7182208))

(assert (=> b!6381278 d!2000906))

(declare-fun d!2000908 () Bool)

(declare-fun choose!47477 ((InoxSet Context!11362) Int) (InoxSet Context!11362))

(assert (=> d!2000908 (= (flatMap!1802 z!1189 lambda!352012) (choose!47477 z!1189 lambda!352012))))

(declare-fun bs!1597300 () Bool)

(assert (= bs!1597300 d!2000908))

(declare-fun m!7182210 () Bool)

(assert (=> bs!1597300 m!7182210))

(assert (=> b!6381278 d!2000908))

(declare-fun b!6382026 () Bool)

(declare-fun e!3874085 () (InoxSet Context!11362))

(declare-fun call!545385 () (InoxSet Context!11362))

(assert (=> b!6382026 (= e!3874085 call!545385)))

(declare-fun bm!545380 () Bool)

(assert (=> bm!545380 (= call!545385 (derivationStepZipperDown!1545 (h!71515 (exprs!6181 (h!71516 zl!343))) (Context!11363 (t!378795 (exprs!6181 (h!71516 zl!343)))) (h!71514 s!2326)))))

(declare-fun b!6382027 () Bool)

(declare-fun e!3874084 () (InoxSet Context!11362))

(assert (=> b!6382027 (= e!3874084 e!3874085)))

(declare-fun c!1162873 () Bool)

(assert (=> b!6382027 (= c!1162873 ((_ is Cons!65067) (exprs!6181 (h!71516 zl!343))))))

(declare-fun b!6382028 () Bool)

(assert (=> b!6382028 (= e!3874085 ((as const (Array Context!11362 Bool)) false))))

(declare-fun d!2000910 () Bool)

(declare-fun c!1162872 () Bool)

(declare-fun e!3874083 () Bool)

(assert (=> d!2000910 (= c!1162872 e!3874083)))

(declare-fun res!2625167 () Bool)

(assert (=> d!2000910 (=> (not res!2625167) (not e!3874083))))

(assert (=> d!2000910 (= res!2625167 ((_ is Cons!65067) (exprs!6181 (h!71516 zl!343))))))

(assert (=> d!2000910 (= (derivationStepZipperUp!1471 (h!71516 zl!343) (h!71514 s!2326)) e!3874084)))

(declare-fun b!6382029 () Bool)

(assert (=> b!6382029 (= e!3874083 (nullable!6290 (h!71515 (exprs!6181 (h!71516 zl!343)))))))

(declare-fun b!6382030 () Bool)

(assert (=> b!6382030 (= e!3874084 ((_ map or) call!545385 (derivationStepZipperUp!1471 (Context!11363 (t!378795 (exprs!6181 (h!71516 zl!343)))) (h!71514 s!2326))))))

(assert (= (and d!2000910 res!2625167) b!6382029))

(assert (= (and d!2000910 c!1162872) b!6382030))

(assert (= (and d!2000910 (not c!1162872)) b!6382027))

(assert (= (and b!6382027 c!1162873) b!6382026))

(assert (= (and b!6382027 (not c!1162873)) b!6382028))

(assert (= (or b!6382030 b!6382026) bm!545380))

(declare-fun m!7182212 () Bool)

(assert (=> bm!545380 m!7182212))

(assert (=> b!6382029 m!7181664))

(declare-fun m!7182214 () Bool)

(assert (=> b!6382030 m!7182214))

(assert (=> b!6381278 d!2000910))

(declare-fun e!3874088 () Bool)

(declare-fun d!2000912 () Bool)

(assert (=> d!2000912 (= (matchZipper!2309 ((_ map or) lt!2370525 lt!2370536) (t!378794 s!2326)) e!3874088)))

(declare-fun res!2625170 () Bool)

(assert (=> d!2000912 (=> res!2625170 e!3874088)))

(assert (=> d!2000912 (= res!2625170 (matchZipper!2309 lt!2370525 (t!378794 s!2326)))))

(declare-fun lt!2370642 () Unit!158519)

(declare-fun choose!47478 ((InoxSet Context!11362) (InoxSet Context!11362) List!65190) Unit!158519)

(assert (=> d!2000912 (= lt!2370642 (choose!47478 lt!2370525 lt!2370536 (t!378794 s!2326)))))

(assert (=> d!2000912 (= (lemmaZipperConcatMatchesSameAsBothZippers!1128 lt!2370525 lt!2370536 (t!378794 s!2326)) lt!2370642)))

(declare-fun b!6382033 () Bool)

(assert (=> b!6382033 (= e!3874088 (matchZipper!2309 lt!2370536 (t!378794 s!2326)))))

(assert (= (and d!2000912 (not res!2625170)) b!6382033))

(assert (=> d!2000912 m!7181696))

(assert (=> d!2000912 m!7181694))

(declare-fun m!7182216 () Bool)

(assert (=> d!2000912 m!7182216))

(assert (=> b!6382033 m!7181682))

(assert (=> b!6381284 d!2000912))

(declare-fun d!2000914 () Bool)

(declare-fun c!1162874 () Bool)

(assert (=> d!2000914 (= c!1162874 (isEmpty!37200 (t!378794 s!2326)))))

(declare-fun e!3874089 () Bool)

(assert (=> d!2000914 (= (matchZipper!2309 lt!2370525 (t!378794 s!2326)) e!3874089)))

(declare-fun b!6382034 () Bool)

(assert (=> b!6382034 (= e!3874089 (nullableZipper!2062 lt!2370525))))

(declare-fun b!6382035 () Bool)

(assert (=> b!6382035 (= e!3874089 (matchZipper!2309 (derivationStepZipper!2263 lt!2370525 (head!13086 (t!378794 s!2326))) (tail!12171 (t!378794 s!2326))))))

(assert (= (and d!2000914 c!1162874) b!6382034))

(assert (= (and d!2000914 (not c!1162874)) b!6382035))

(assert (=> d!2000914 m!7182120))

(declare-fun m!7182218 () Bool)

(assert (=> b!6382034 m!7182218))

(assert (=> b!6382035 m!7182124))

(assert (=> b!6382035 m!7182124))

(declare-fun m!7182220 () Bool)

(assert (=> b!6382035 m!7182220))

(assert (=> b!6382035 m!7182128))

(assert (=> b!6382035 m!7182220))

(assert (=> b!6382035 m!7182128))

(declare-fun m!7182222 () Bool)

(assert (=> b!6382035 m!7182222))

(assert (=> b!6381284 d!2000914))

(declare-fun d!2000916 () Bool)

(declare-fun c!1162875 () Bool)

(assert (=> d!2000916 (= c!1162875 (isEmpty!37200 (t!378794 s!2326)))))

(declare-fun e!3874090 () Bool)

(assert (=> d!2000916 (= (matchZipper!2309 ((_ map or) lt!2370525 lt!2370536) (t!378794 s!2326)) e!3874090)))

(declare-fun b!6382036 () Bool)

(assert (=> b!6382036 (= e!3874090 (nullableZipper!2062 ((_ map or) lt!2370525 lt!2370536)))))

(declare-fun b!6382037 () Bool)

(assert (=> b!6382037 (= e!3874090 (matchZipper!2309 (derivationStepZipper!2263 ((_ map or) lt!2370525 lt!2370536) (head!13086 (t!378794 s!2326))) (tail!12171 (t!378794 s!2326))))))

(assert (= (and d!2000916 c!1162875) b!6382036))

(assert (= (and d!2000916 (not c!1162875)) b!6382037))

(assert (=> d!2000916 m!7182120))

(declare-fun m!7182224 () Bool)

(assert (=> b!6382036 m!7182224))

(assert (=> b!6382037 m!7182124))

(assert (=> b!6382037 m!7182124))

(declare-fun m!7182226 () Bool)

(assert (=> b!6382037 m!7182226))

(assert (=> b!6382037 m!7182128))

(assert (=> b!6382037 m!7182226))

(assert (=> b!6382037 m!7182128))

(declare-fun m!7182228 () Bool)

(assert (=> b!6382037 m!7182228))

(assert (=> b!6381284 d!2000916))

(declare-fun d!2000918 () Bool)

(declare-fun lt!2370643 () Regex!16297)

(assert (=> d!2000918 (validRegex!8033 lt!2370643)))

(assert (=> d!2000918 (= lt!2370643 (generalisedUnion!2141 (unfocusZipperList!1718 zl!343)))))

(assert (=> d!2000918 (= (unfocusZipper!2039 zl!343) lt!2370643)))

(declare-fun bs!1597301 () Bool)

(assert (= bs!1597301 d!2000918))

(declare-fun m!7182230 () Bool)

(assert (=> bs!1597301 m!7182230))

(assert (=> bs!1597301 m!7181674))

(assert (=> bs!1597301 m!7181674))

(assert (=> bs!1597301 m!7181676))

(assert (=> b!6381304 d!2000918))

(declare-fun d!2000920 () Bool)

(assert (=> d!2000920 (= (isEmpty!37196 (t!378796 zl!343)) ((_ is Nil!65068) (t!378796 zl!343)))))

(assert (=> b!6381285 d!2000920))

(declare-fun d!2000922 () Bool)

(declare-fun c!1162876 () Bool)

(assert (=> d!2000922 (= c!1162876 (isEmpty!37200 (t!378794 s!2326)))))

(declare-fun e!3874091 () Bool)

(assert (=> d!2000922 (= (matchZipper!2309 lt!2370536 (t!378794 s!2326)) e!3874091)))

(declare-fun b!6382038 () Bool)

(assert (=> b!6382038 (= e!3874091 (nullableZipper!2062 lt!2370536))))

(declare-fun b!6382039 () Bool)

(assert (=> b!6382039 (= e!3874091 (matchZipper!2309 (derivationStepZipper!2263 lt!2370536 (head!13086 (t!378794 s!2326))) (tail!12171 (t!378794 s!2326))))))

(assert (= (and d!2000922 c!1162876) b!6382038))

(assert (= (and d!2000922 (not c!1162876)) b!6382039))

(assert (=> d!2000922 m!7182120))

(declare-fun m!7182232 () Bool)

(assert (=> b!6382038 m!7182232))

(assert (=> b!6382039 m!7182124))

(assert (=> b!6382039 m!7182124))

(declare-fun m!7182234 () Bool)

(assert (=> b!6382039 m!7182234))

(assert (=> b!6382039 m!7182128))

(assert (=> b!6382039 m!7182234))

(assert (=> b!6382039 m!7182128))

(declare-fun m!7182236 () Bool)

(assert (=> b!6382039 m!7182236))

(assert (=> b!6381305 d!2000922))

(declare-fun b!6382040 () Bool)

(declare-fun e!3874094 () (InoxSet Context!11362))

(declare-fun call!545386 () (InoxSet Context!11362))

(assert (=> b!6382040 (= e!3874094 call!545386)))

(declare-fun bm!545381 () Bool)

(assert (=> bm!545381 (= call!545386 (derivationStepZipperDown!1545 (h!71515 (exprs!6181 lt!2370532)) (Context!11363 (t!378795 (exprs!6181 lt!2370532))) (h!71514 s!2326)))))

(declare-fun b!6382041 () Bool)

(declare-fun e!3874093 () (InoxSet Context!11362))

(assert (=> b!6382041 (= e!3874093 e!3874094)))

(declare-fun c!1162878 () Bool)

(assert (=> b!6382041 (= c!1162878 ((_ is Cons!65067) (exprs!6181 lt!2370532)))))

(declare-fun b!6382042 () Bool)

(assert (=> b!6382042 (= e!3874094 ((as const (Array Context!11362 Bool)) false))))

(declare-fun d!2000924 () Bool)

(declare-fun c!1162877 () Bool)

(declare-fun e!3874092 () Bool)

(assert (=> d!2000924 (= c!1162877 e!3874092)))

(declare-fun res!2625171 () Bool)

(assert (=> d!2000924 (=> (not res!2625171) (not e!3874092))))

(assert (=> d!2000924 (= res!2625171 ((_ is Cons!65067) (exprs!6181 lt!2370532)))))

(assert (=> d!2000924 (= (derivationStepZipperUp!1471 lt!2370532 (h!71514 s!2326)) e!3874093)))

(declare-fun b!6382043 () Bool)

(assert (=> b!6382043 (= e!3874092 (nullable!6290 (h!71515 (exprs!6181 lt!2370532))))))

(declare-fun b!6382044 () Bool)

(assert (=> b!6382044 (= e!3874093 ((_ map or) call!545386 (derivationStepZipperUp!1471 (Context!11363 (t!378795 (exprs!6181 lt!2370532))) (h!71514 s!2326))))))

(assert (= (and d!2000924 res!2625171) b!6382043))

(assert (= (and d!2000924 c!1162877) b!6382044))

(assert (= (and d!2000924 (not c!1162877)) b!6382041))

(assert (= (and b!6382041 c!1162878) b!6382040))

(assert (= (and b!6382041 (not c!1162878)) b!6382042))

(assert (= (or b!6382044 b!6382040) bm!545381))

(declare-fun m!7182238 () Bool)

(assert (=> bm!545381 m!7182238))

(declare-fun m!7182240 () Bool)

(assert (=> b!6382043 m!7182240))

(declare-fun m!7182242 () Bool)

(assert (=> b!6382044 m!7182242))

(assert (=> b!6381286 d!2000924))

(declare-fun d!2000926 () Bool)

(assert (=> d!2000926 (= (flatMap!1802 lt!2370517 lambda!352012) (choose!47477 lt!2370517 lambda!352012))))

(declare-fun bs!1597302 () Bool)

(assert (= bs!1597302 d!2000926))

(declare-fun m!7182244 () Bool)

(assert (=> bs!1597302 m!7182244))

(assert (=> b!6381286 d!2000926))

(declare-fun d!2000928 () Bool)

(assert (=> d!2000928 (= (flatMap!1802 lt!2370523 lambda!352012) (dynLambda!25815 lambda!352012 lt!2370532))))

(declare-fun lt!2370644 () Unit!158519)

(assert (=> d!2000928 (= lt!2370644 (choose!47476 lt!2370523 lt!2370532 lambda!352012))))

(assert (=> d!2000928 (= lt!2370523 (store ((as const (Array Context!11362 Bool)) false) lt!2370532 true))))

(assert (=> d!2000928 (= (lemmaFlatMapOnSingletonSet!1328 lt!2370523 lt!2370532 lambda!352012) lt!2370644)))

(declare-fun b_lambda!242503 () Bool)

(assert (=> (not b_lambda!242503) (not d!2000928)))

(declare-fun bs!1597303 () Bool)

(assert (= bs!1597303 d!2000928))

(assert (=> bs!1597303 m!7181630))

(declare-fun m!7182246 () Bool)

(assert (=> bs!1597303 m!7182246))

(declare-fun m!7182248 () Bool)

(assert (=> bs!1597303 m!7182248))

(assert (=> bs!1597303 m!7181626))

(assert (=> b!6381286 d!2000928))

(declare-fun b!6382045 () Bool)

(declare-fun e!3874097 () (InoxSet Context!11362))

(declare-fun call!545387 () (InoxSet Context!11362))

(assert (=> b!6382045 (= e!3874097 call!545387)))

(declare-fun bm!545382 () Bool)

(assert (=> bm!545382 (= call!545387 (derivationStepZipperDown!1545 (h!71515 (exprs!6181 lt!2370544)) (Context!11363 (t!378795 (exprs!6181 lt!2370544))) (h!71514 s!2326)))))

(declare-fun b!6382046 () Bool)

(declare-fun e!3874096 () (InoxSet Context!11362))

(assert (=> b!6382046 (= e!3874096 e!3874097)))

(declare-fun c!1162880 () Bool)

(assert (=> b!6382046 (= c!1162880 ((_ is Cons!65067) (exprs!6181 lt!2370544)))))

(declare-fun b!6382047 () Bool)

(assert (=> b!6382047 (= e!3874097 ((as const (Array Context!11362 Bool)) false))))

(declare-fun d!2000930 () Bool)

(declare-fun c!1162879 () Bool)

(declare-fun e!3874095 () Bool)

(assert (=> d!2000930 (= c!1162879 e!3874095)))

(declare-fun res!2625172 () Bool)

(assert (=> d!2000930 (=> (not res!2625172) (not e!3874095))))

(assert (=> d!2000930 (= res!2625172 ((_ is Cons!65067) (exprs!6181 lt!2370544)))))

(assert (=> d!2000930 (= (derivationStepZipperUp!1471 lt!2370544 (h!71514 s!2326)) e!3874096)))

(declare-fun b!6382048 () Bool)

(assert (=> b!6382048 (= e!3874095 (nullable!6290 (h!71515 (exprs!6181 lt!2370544))))))

(declare-fun b!6382049 () Bool)

(assert (=> b!6382049 (= e!3874096 ((_ map or) call!545387 (derivationStepZipperUp!1471 (Context!11363 (t!378795 (exprs!6181 lt!2370544))) (h!71514 s!2326))))))

(assert (= (and d!2000930 res!2625172) b!6382048))

(assert (= (and d!2000930 c!1162879) b!6382049))

(assert (= (and d!2000930 (not c!1162879)) b!6382046))

(assert (= (and b!6382046 c!1162880) b!6382045))

(assert (= (and b!6382046 (not c!1162880)) b!6382047))

(assert (= (or b!6382049 b!6382045) bm!545382))

(declare-fun m!7182250 () Bool)

(assert (=> bm!545382 m!7182250))

(declare-fun m!7182252 () Bool)

(assert (=> b!6382048 m!7182252))

(declare-fun m!7182254 () Bool)

(assert (=> b!6382049 m!7182254))

(assert (=> b!6381286 d!2000930))

(declare-fun d!2000932 () Bool)

(declare-fun lt!2370645 () Regex!16297)

(assert (=> d!2000932 (validRegex!8033 lt!2370645)))

(assert (=> d!2000932 (= lt!2370645 (generalisedUnion!2141 (unfocusZipperList!1718 (Cons!65068 lt!2370532 Nil!65068))))))

(assert (=> d!2000932 (= (unfocusZipper!2039 (Cons!65068 lt!2370532 Nil!65068)) lt!2370645)))

(declare-fun bs!1597304 () Bool)

(assert (= bs!1597304 d!2000932))

(declare-fun m!7182256 () Bool)

(assert (=> bs!1597304 m!7182256))

(declare-fun m!7182258 () Bool)

(assert (=> bs!1597304 m!7182258))

(assert (=> bs!1597304 m!7182258))

(declare-fun m!7182260 () Bool)

(assert (=> bs!1597304 m!7182260))

(assert (=> b!6381286 d!2000932))

(declare-fun d!2000934 () Bool)

(assert (=> d!2000934 (= (flatMap!1802 lt!2370523 lambda!352012) (choose!47477 lt!2370523 lambda!352012))))

(declare-fun bs!1597305 () Bool)

(assert (= bs!1597305 d!2000934))

(declare-fun m!7182262 () Bool)

(assert (=> bs!1597305 m!7182262))

(assert (=> b!6381286 d!2000934))

(declare-fun d!2000936 () Bool)

(assert (=> d!2000936 (= (flatMap!1802 lt!2370517 lambda!352012) (dynLambda!25815 lambda!352012 lt!2370544))))

(declare-fun lt!2370646 () Unit!158519)

(assert (=> d!2000936 (= lt!2370646 (choose!47476 lt!2370517 lt!2370544 lambda!352012))))

(assert (=> d!2000936 (= lt!2370517 (store ((as const (Array Context!11362 Bool)) false) lt!2370544 true))))

(assert (=> d!2000936 (= (lemmaFlatMapOnSingletonSet!1328 lt!2370517 lt!2370544 lambda!352012) lt!2370646)))

(declare-fun b_lambda!242505 () Bool)

(assert (=> (not b_lambda!242505) (not d!2000936)))

(declare-fun bs!1597306 () Bool)

(assert (= bs!1597306 d!2000936))

(assert (=> bs!1597306 m!7181616))

(declare-fun m!7182264 () Bool)

(assert (=> bs!1597306 m!7182264))

(declare-fun m!7182266 () Bool)

(assert (=> bs!1597306 m!7182266))

(assert (=> bs!1597306 m!7181622))

(assert (=> b!6381286 d!2000936))

(declare-fun d!2000938 () Bool)

(assert (=> d!2000938 (= (flatMap!1802 lt!2370539 lambda!352012) (choose!47477 lt!2370539 lambda!352012))))

(declare-fun bs!1597307 () Bool)

(assert (= bs!1597307 d!2000938))

(declare-fun m!7182268 () Bool)

(assert (=> bs!1597307 m!7182268))

(assert (=> b!6381281 d!2000938))

(declare-fun b!6382050 () Bool)

(declare-fun e!3874100 () (InoxSet Context!11362))

(declare-fun call!545388 () (InoxSet Context!11362))

(assert (=> b!6382050 (= e!3874100 call!545388)))

(declare-fun bm!545383 () Bool)

(assert (=> bm!545383 (= call!545388 (derivationStepZipperDown!1545 (h!71515 (exprs!6181 lt!2370511)) (Context!11363 (t!378795 (exprs!6181 lt!2370511))) (h!71514 s!2326)))))

(declare-fun b!6382051 () Bool)

(declare-fun e!3874099 () (InoxSet Context!11362))

(assert (=> b!6382051 (= e!3874099 e!3874100)))

(declare-fun c!1162882 () Bool)

(assert (=> b!6382051 (= c!1162882 ((_ is Cons!65067) (exprs!6181 lt!2370511)))))

(declare-fun b!6382052 () Bool)

(assert (=> b!6382052 (= e!3874100 ((as const (Array Context!11362 Bool)) false))))

(declare-fun d!2000940 () Bool)

(declare-fun c!1162881 () Bool)

(declare-fun e!3874098 () Bool)

(assert (=> d!2000940 (= c!1162881 e!3874098)))

(declare-fun res!2625173 () Bool)

(assert (=> d!2000940 (=> (not res!2625173) (not e!3874098))))

(assert (=> d!2000940 (= res!2625173 ((_ is Cons!65067) (exprs!6181 lt!2370511)))))

(assert (=> d!2000940 (= (derivationStepZipperUp!1471 lt!2370511 (h!71514 s!2326)) e!3874099)))

(declare-fun b!6382053 () Bool)

(assert (=> b!6382053 (= e!3874098 (nullable!6290 (h!71515 (exprs!6181 lt!2370511))))))

(declare-fun b!6382054 () Bool)

(assert (=> b!6382054 (= e!3874099 ((_ map or) call!545388 (derivationStepZipperUp!1471 (Context!11363 (t!378795 (exprs!6181 lt!2370511))) (h!71514 s!2326))))))

(assert (= (and d!2000940 res!2625173) b!6382053))

(assert (= (and d!2000940 c!1162881) b!6382054))

(assert (= (and d!2000940 (not c!1162881)) b!6382051))

(assert (= (and b!6382051 c!1162882) b!6382050))

(assert (= (and b!6382051 (not c!1162882)) b!6382052))

(assert (= (or b!6382054 b!6382050) bm!545383))

(declare-fun m!7182270 () Bool)

(assert (=> bm!545383 m!7182270))

(declare-fun m!7182272 () Bool)

(assert (=> b!6382053 m!7182272))

(declare-fun m!7182274 () Bool)

(assert (=> b!6382054 m!7182274))

(assert (=> b!6381281 d!2000940))

(declare-fun d!2000942 () Bool)

(assert (=> d!2000942 (= (flatMap!1802 lt!2370539 lambda!352012) (dynLambda!25815 lambda!352012 lt!2370511))))

(declare-fun lt!2370647 () Unit!158519)

(assert (=> d!2000942 (= lt!2370647 (choose!47476 lt!2370539 lt!2370511 lambda!352012))))

(assert (=> d!2000942 (= lt!2370539 (store ((as const (Array Context!11362 Bool)) false) lt!2370511 true))))

(assert (=> d!2000942 (= (lemmaFlatMapOnSingletonSet!1328 lt!2370539 lt!2370511 lambda!352012) lt!2370647)))

(declare-fun b_lambda!242507 () Bool)

(assert (=> (not b_lambda!242507) (not d!2000942)))

(declare-fun bs!1597308 () Bool)

(assert (= bs!1597308 d!2000942))

(assert (=> bs!1597308 m!7181698))

(declare-fun m!7182276 () Bool)

(assert (=> bs!1597308 m!7182276))

(declare-fun m!7182278 () Bool)

(assert (=> bs!1597308 m!7182278))

(assert (=> bs!1597308 m!7181702))

(assert (=> b!6381281 d!2000942))

(declare-fun bs!1597309 () Bool)

(declare-fun d!2000944 () Bool)

(assert (= bs!1597309 (and d!2000944 b!6381278)))

(declare-fun lambda!352079 () Int)

(assert (=> bs!1597309 (= lambda!352079 lambda!352012)))

(assert (=> d!2000944 true))

(assert (=> d!2000944 (= (derivationStepZipper!2263 lt!2370539 (h!71514 s!2326)) (flatMap!1802 lt!2370539 lambda!352079))))

(declare-fun bs!1597310 () Bool)

(assert (= bs!1597310 d!2000944))

(declare-fun m!7182280 () Bool)

(assert (=> bs!1597310 m!7182280))

(assert (=> b!6381281 d!2000944))

(declare-fun d!2000946 () Bool)

(declare-fun lt!2370648 () Regex!16297)

(assert (=> d!2000946 (validRegex!8033 lt!2370648)))

(assert (=> d!2000946 (= lt!2370648 (generalisedUnion!2141 (unfocusZipperList!1718 (Cons!65068 lt!2370511 Nil!65068))))))

(assert (=> d!2000946 (= (unfocusZipper!2039 (Cons!65068 lt!2370511 Nil!65068)) lt!2370648)))

(declare-fun bs!1597311 () Bool)

(assert (= bs!1597311 d!2000946))

(declare-fun m!7182282 () Bool)

(assert (=> bs!1597311 m!7182282))

(declare-fun m!7182284 () Bool)

(assert (=> bs!1597311 m!7182284))

(assert (=> bs!1597311 m!7182284))

(declare-fun m!7182286 () Bool)

(assert (=> bs!1597311 m!7182286))

(assert (=> b!6381301 d!2000946))

(declare-fun bs!1597312 () Bool)

(declare-fun d!2000948 () Bool)

(assert (= bs!1597312 (and d!2000948 d!2000772)))

(declare-fun lambda!352080 () Int)

(assert (=> bs!1597312 (= lambda!352080 lambda!352037)))

(declare-fun bs!1597313 () Bool)

(assert (= bs!1597313 (and d!2000948 d!2000880)))

(assert (=> bs!1597313 (= lambda!352080 lambda!352068)))

(declare-fun bs!1597314 () Bool)

(assert (= bs!1597314 (and d!2000948 d!2000888)))

(assert (=> bs!1597314 (= lambda!352080 lambda!352073)))

(declare-fun bs!1597315 () Bool)

(assert (= bs!1597315 (and d!2000948 d!2000890)))

(assert (=> bs!1597315 (= lambda!352080 lambda!352076)))

(assert (=> d!2000948 (= (inv!83989 (h!71516 zl!343)) (forall!15475 (exprs!6181 (h!71516 zl!343)) lambda!352080))))

(declare-fun bs!1597316 () Bool)

(assert (= bs!1597316 d!2000948))

(declare-fun m!7182288 () Bool)

(assert (=> bs!1597316 m!7182288))

(assert (=> b!6381282 d!2000948))

(declare-fun b!6382075 () Bool)

(declare-fun e!3874115 () Bool)

(declare-fun call!545395 () Bool)

(assert (=> b!6382075 (= e!3874115 call!545395)))

(declare-fun b!6382076 () Bool)

(declare-fun e!3874121 () Bool)

(declare-fun e!3874120 () Bool)

(assert (=> b!6382076 (= e!3874121 e!3874120)))

(declare-fun c!1162890 () Bool)

(assert (=> b!6382076 (= c!1162890 ((_ is Star!16297) r!7292))))

(declare-fun b!6382077 () Bool)

(declare-fun e!3874117 () Bool)

(assert (=> b!6382077 (= e!3874120 e!3874117)))

(declare-fun res!2625187 () Bool)

(assert (=> b!6382077 (= res!2625187 (not (nullable!6290 (reg!16626 r!7292))))))

(assert (=> b!6382077 (=> (not res!2625187) (not e!3874117))))

(declare-fun b!6382078 () Bool)

(declare-fun e!3874116 () Bool)

(assert (=> b!6382078 (= e!3874116 call!545395)))

(declare-fun bm!545390 () Bool)

(declare-fun call!545396 () Bool)

(assert (=> bm!545390 (= call!545395 call!545396)))

(declare-fun b!6382079 () Bool)

(declare-fun e!3874119 () Bool)

(assert (=> b!6382079 (= e!3874119 e!3874115)))

(declare-fun res!2625186 () Bool)

(assert (=> b!6382079 (=> (not res!2625186) (not e!3874115))))

(declare-fun call!545397 () Bool)

(assert (=> b!6382079 (= res!2625186 call!545397)))

(declare-fun b!6382080 () Bool)

(declare-fun res!2625184 () Bool)

(assert (=> b!6382080 (=> res!2625184 e!3874119)))

(assert (=> b!6382080 (= res!2625184 (not ((_ is Concat!25142) r!7292)))))

(declare-fun e!3874118 () Bool)

(assert (=> b!6382080 (= e!3874118 e!3874119)))

(declare-fun d!2000950 () Bool)

(declare-fun res!2625188 () Bool)

(assert (=> d!2000950 (=> res!2625188 e!3874121)))

(assert (=> d!2000950 (= res!2625188 ((_ is ElementMatch!16297) r!7292))))

(assert (=> d!2000950 (= (validRegex!8033 r!7292) e!3874121)))

(declare-fun b!6382081 () Bool)

(assert (=> b!6382081 (= e!3874117 call!545396)))

(declare-fun b!6382082 () Bool)

(assert (=> b!6382082 (= e!3874120 e!3874118)))

(declare-fun c!1162889 () Bool)

(assert (=> b!6382082 (= c!1162889 ((_ is Union!16297) r!7292))))

(declare-fun bm!545391 () Bool)

(assert (=> bm!545391 (= call!545397 (validRegex!8033 (ite c!1162889 (regOne!33107 r!7292) (regOne!33106 r!7292))))))

(declare-fun bm!545392 () Bool)

(assert (=> bm!545392 (= call!545396 (validRegex!8033 (ite c!1162890 (reg!16626 r!7292) (ite c!1162889 (regTwo!33107 r!7292) (regTwo!33106 r!7292)))))))

(declare-fun b!6382083 () Bool)

(declare-fun res!2625185 () Bool)

(assert (=> b!6382083 (=> (not res!2625185) (not e!3874116))))

(assert (=> b!6382083 (= res!2625185 call!545397)))

(assert (=> b!6382083 (= e!3874118 e!3874116)))

(assert (= (and d!2000950 (not res!2625188)) b!6382076))

(assert (= (and b!6382076 c!1162890) b!6382077))

(assert (= (and b!6382076 (not c!1162890)) b!6382082))

(assert (= (and b!6382077 res!2625187) b!6382081))

(assert (= (and b!6382082 c!1162889) b!6382083))

(assert (= (and b!6382082 (not c!1162889)) b!6382080))

(assert (= (and b!6382083 res!2625185) b!6382078))

(assert (= (and b!6382080 (not res!2625184)) b!6382079))

(assert (= (and b!6382079 res!2625186) b!6382075))

(assert (= (or b!6382078 b!6382075) bm!545390))

(assert (= (or b!6382083 b!6382079) bm!545391))

(assert (= (or b!6382081 bm!545390) bm!545392))

(declare-fun m!7182290 () Bool)

(assert (=> b!6382077 m!7182290))

(declare-fun m!7182292 () Bool)

(assert (=> bm!545391 m!7182292))

(declare-fun m!7182294 () Bool)

(assert (=> bm!545392 m!7182294))

(assert (=> start!632194 d!2000950))

(declare-fun d!2000952 () Bool)

(assert (=> d!2000952 (= (isDefined!12891 (findConcatSeparation!2602 lt!2370530 (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326)) (not (isEmpty!37199 (findConcatSeparation!2602 lt!2370530 (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326))))))

(declare-fun bs!1597317 () Bool)

(assert (= bs!1597317 d!2000952))

(assert (=> bs!1597317 m!7181646))

(declare-fun m!7182296 () Bool)

(assert (=> bs!1597317 m!7182296))

(assert (=> b!6381302 d!2000952))

(declare-fun bs!1597318 () Bool)

(declare-fun d!2000954 () Bool)

(assert (= bs!1597318 (and d!2000954 b!6381287)))

(declare-fun lambda!352081 () Int)

(assert (=> bs!1597318 (= (= lt!2370530 (regOne!33106 r!7292)) (= lambda!352081 lambda!352010))))

(declare-fun bs!1597319 () Bool)

(assert (= bs!1597319 (and d!2000954 d!2000838)))

(assert (=> bs!1597319 (= (= lt!2370530 (regOne!33106 r!7292)) (= lambda!352081 lambda!352046))))

(declare-fun bs!1597320 () Bool)

(assert (= bs!1597320 (and d!2000954 b!6381938)))

(assert (=> bs!1597320 (not (= lambda!352081 lambda!352069))))

(declare-fun bs!1597321 () Bool)

(assert (= bs!1597321 (and d!2000954 d!2000848)))

(assert (=> bs!1597321 (= (= lt!2370530 (regOne!33106 r!7292)) (= lambda!352081 lambda!352058))))

(declare-fun bs!1597322 () Bool)

(assert (= bs!1597322 (and d!2000954 b!6381919)))

(assert (=> bs!1597322 (not (= lambda!352081 lambda!352064))))

(declare-fun bs!1597323 () Bool)

(assert (= bs!1597323 (and d!2000954 b!6381302)))

(assert (=> bs!1597323 (= lambda!352081 lambda!352013)))

(assert (=> bs!1597321 (not (= lambda!352081 lambda!352059))))

(declare-fun bs!1597324 () Bool)

(assert (= bs!1597324 (and d!2000954 b!6381916)))

(assert (=> bs!1597324 (not (= lambda!352081 lambda!352065))))

(declare-fun bs!1597325 () Bool)

(assert (= bs!1597325 (and d!2000954 b!6381935)))

(assert (=> bs!1597325 (not (= lambda!352081 lambda!352070))))

(assert (=> bs!1597318 (not (= lambda!352081 lambda!352011))))

(assert (=> d!2000954 true))

(assert (=> d!2000954 true))

(assert (=> d!2000954 true))

(assert (=> d!2000954 (= (isDefined!12891 (findConcatSeparation!2602 lt!2370530 (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326)) (Exists!3367 lambda!352081))))

(declare-fun lt!2370649 () Unit!158519)

(assert (=> d!2000954 (= lt!2370649 (choose!47471 lt!2370530 (regTwo!33106 r!7292) s!2326))))

(assert (=> d!2000954 (validRegex!8033 lt!2370530)))

(assert (=> d!2000954 (= (lemmaFindConcatSeparationEquivalentToExists!2366 lt!2370530 (regTwo!33106 r!7292) s!2326) lt!2370649)))

(declare-fun bs!1597326 () Bool)

(assert (= bs!1597326 d!2000954))

(assert (=> bs!1597326 m!7181646))

(assert (=> bs!1597326 m!7181652))

(assert (=> bs!1597326 m!7181650))

(declare-fun m!7182298 () Bool)

(assert (=> bs!1597326 m!7182298))

(assert (=> bs!1597326 m!7181646))

(declare-fun m!7182300 () Bool)

(assert (=> bs!1597326 m!7182300))

(assert (=> b!6381302 d!2000954))

(declare-fun d!2000956 () Bool)

(assert (=> d!2000956 (= (Exists!3367 lambda!352013) (choose!47470 lambda!352013))))

(declare-fun bs!1597327 () Bool)

(assert (= bs!1597327 d!2000956))

(declare-fun m!7182302 () Bool)

(assert (=> bs!1597327 m!7182302))

(assert (=> b!6381302 d!2000956))

(declare-fun b!6382084 () Bool)

(declare-fun e!3874123 () Option!16188)

(declare-fun e!3874124 () Option!16188)

(assert (=> b!6382084 (= e!3874123 e!3874124)))

(declare-fun c!1162891 () Bool)

(assert (=> b!6382084 (= c!1162891 ((_ is Nil!65066) s!2326))))

(declare-fun b!6382085 () Bool)

(declare-fun e!3874125 () Bool)

(assert (=> b!6382085 (= e!3874125 (matchR!8480 (regTwo!33106 r!7292) s!2326))))

(declare-fun b!6382086 () Bool)

(declare-fun lt!2370650 () Unit!158519)

(declare-fun lt!2370652 () Unit!158519)

(assert (=> b!6382086 (= lt!2370650 lt!2370652)))

(assert (=> b!6382086 (= (++!14365 (++!14365 Nil!65066 (Cons!65066 (h!71514 s!2326) Nil!65066)) (t!378794 s!2326)) s!2326)))

(assert (=> b!6382086 (= lt!2370652 (lemmaMoveElementToOtherListKeepsConcatEq!2460 Nil!65066 (h!71514 s!2326) (t!378794 s!2326) s!2326))))

(assert (=> b!6382086 (= e!3874124 (findConcatSeparation!2602 lt!2370530 (regTwo!33106 r!7292) (++!14365 Nil!65066 (Cons!65066 (h!71514 s!2326) Nil!65066)) (t!378794 s!2326) s!2326))))

(declare-fun d!2000958 () Bool)

(declare-fun e!3874126 () Bool)

(assert (=> d!2000958 e!3874126))

(declare-fun res!2625192 () Bool)

(assert (=> d!2000958 (=> res!2625192 e!3874126)))

(declare-fun e!3874122 () Bool)

(assert (=> d!2000958 (= res!2625192 e!3874122)))

(declare-fun res!2625190 () Bool)

(assert (=> d!2000958 (=> (not res!2625190) (not e!3874122))))

(declare-fun lt!2370651 () Option!16188)

(assert (=> d!2000958 (= res!2625190 (isDefined!12891 lt!2370651))))

(assert (=> d!2000958 (= lt!2370651 e!3874123)))

(declare-fun c!1162892 () Bool)

(assert (=> d!2000958 (= c!1162892 e!3874125)))

(declare-fun res!2625191 () Bool)

(assert (=> d!2000958 (=> (not res!2625191) (not e!3874125))))

(assert (=> d!2000958 (= res!2625191 (matchR!8480 lt!2370530 Nil!65066))))

(assert (=> d!2000958 (validRegex!8033 lt!2370530)))

(assert (=> d!2000958 (= (findConcatSeparation!2602 lt!2370530 (regTwo!33106 r!7292) Nil!65066 s!2326 s!2326) lt!2370651)))

(declare-fun b!6382087 () Bool)

(assert (=> b!6382087 (= e!3874124 None!16187)))

(declare-fun b!6382088 () Bool)

(declare-fun res!2625193 () Bool)

(assert (=> b!6382088 (=> (not res!2625193) (not e!3874122))))

(assert (=> b!6382088 (= res!2625193 (matchR!8480 (regTwo!33106 r!7292) (_2!36579 (get!22529 lt!2370651))))))

(declare-fun b!6382089 () Bool)

(declare-fun res!2625189 () Bool)

(assert (=> b!6382089 (=> (not res!2625189) (not e!3874122))))

(assert (=> b!6382089 (= res!2625189 (matchR!8480 lt!2370530 (_1!36579 (get!22529 lt!2370651))))))

(declare-fun b!6382090 () Bool)

(assert (=> b!6382090 (= e!3874126 (not (isDefined!12891 lt!2370651)))))

(declare-fun b!6382091 () Bool)

(assert (=> b!6382091 (= e!3874122 (= (++!14365 (_1!36579 (get!22529 lt!2370651)) (_2!36579 (get!22529 lt!2370651))) s!2326))))

(declare-fun b!6382092 () Bool)

(assert (=> b!6382092 (= e!3874123 (Some!16187 (tuple2!66553 Nil!65066 s!2326)))))

(assert (= (and d!2000958 res!2625191) b!6382085))

(assert (= (and d!2000958 c!1162892) b!6382092))

(assert (= (and d!2000958 (not c!1162892)) b!6382084))

(assert (= (and b!6382084 c!1162891) b!6382087))

(assert (= (and b!6382084 (not c!1162891)) b!6382086))

(assert (= (and d!2000958 res!2625190) b!6382089))

(assert (= (and b!6382089 res!2625189) b!6382088))

(assert (= (and b!6382088 res!2625193) b!6382091))

(assert (= (and d!2000958 (not res!2625192)) b!6382090))

(declare-fun m!7182304 () Bool)

(assert (=> b!6382089 m!7182304))

(declare-fun m!7182306 () Bool)

(assert (=> b!6382089 m!7182306))

(assert (=> b!6382086 m!7181978))

(assert (=> b!6382086 m!7181978))

(assert (=> b!6382086 m!7181980))

(assert (=> b!6382086 m!7181982))

(assert (=> b!6382086 m!7181978))

(declare-fun m!7182308 () Bool)

(assert (=> b!6382086 m!7182308))

(declare-fun m!7182310 () Bool)

(assert (=> b!6382090 m!7182310))

(assert (=> b!6382088 m!7182304))

(declare-fun m!7182312 () Bool)

(assert (=> b!6382088 m!7182312))

(assert (=> d!2000958 m!7182310))

(declare-fun m!7182314 () Bool)

(assert (=> d!2000958 m!7182314))

(assert (=> d!2000958 m!7181650))

(assert (=> b!6382085 m!7181994))

(assert (=> b!6382091 m!7182304))

(declare-fun m!7182316 () Bool)

(assert (=> b!6382091 m!7182316))

(assert (=> b!6381302 d!2000958))

(declare-fun b!6382093 () Bool)

(declare-fun e!3874127 () Bool)

(declare-fun call!545398 () Bool)

(assert (=> b!6382093 (= e!3874127 call!545398)))

(declare-fun b!6382094 () Bool)

(declare-fun e!3874133 () Bool)

(declare-fun e!3874132 () Bool)

(assert (=> b!6382094 (= e!3874133 e!3874132)))

(declare-fun c!1162894 () Bool)

(assert (=> b!6382094 (= c!1162894 ((_ is Star!16297) lt!2370530))))

(declare-fun b!6382095 () Bool)

(declare-fun e!3874129 () Bool)

(assert (=> b!6382095 (= e!3874132 e!3874129)))

(declare-fun res!2625197 () Bool)

(assert (=> b!6382095 (= res!2625197 (not (nullable!6290 (reg!16626 lt!2370530))))))

(assert (=> b!6382095 (=> (not res!2625197) (not e!3874129))))

(declare-fun b!6382096 () Bool)

(declare-fun e!3874128 () Bool)

(assert (=> b!6382096 (= e!3874128 call!545398)))

(declare-fun bm!545393 () Bool)

(declare-fun call!545399 () Bool)

(assert (=> bm!545393 (= call!545398 call!545399)))

(declare-fun b!6382097 () Bool)

(declare-fun e!3874131 () Bool)

(assert (=> b!6382097 (= e!3874131 e!3874127)))

(declare-fun res!2625196 () Bool)

(assert (=> b!6382097 (=> (not res!2625196) (not e!3874127))))

(declare-fun call!545400 () Bool)

(assert (=> b!6382097 (= res!2625196 call!545400)))

(declare-fun b!6382098 () Bool)

(declare-fun res!2625194 () Bool)

(assert (=> b!6382098 (=> res!2625194 e!3874131)))

(assert (=> b!6382098 (= res!2625194 (not ((_ is Concat!25142) lt!2370530)))))

(declare-fun e!3874130 () Bool)

(assert (=> b!6382098 (= e!3874130 e!3874131)))

(declare-fun d!2000960 () Bool)

(declare-fun res!2625198 () Bool)

(assert (=> d!2000960 (=> res!2625198 e!3874133)))

(assert (=> d!2000960 (= res!2625198 ((_ is ElementMatch!16297) lt!2370530))))

(assert (=> d!2000960 (= (validRegex!8033 lt!2370530) e!3874133)))

(declare-fun b!6382099 () Bool)

(assert (=> b!6382099 (= e!3874129 call!545399)))

(declare-fun b!6382100 () Bool)

(assert (=> b!6382100 (= e!3874132 e!3874130)))

(declare-fun c!1162893 () Bool)

(assert (=> b!6382100 (= c!1162893 ((_ is Union!16297) lt!2370530))))

(declare-fun bm!545394 () Bool)

(assert (=> bm!545394 (= call!545400 (validRegex!8033 (ite c!1162893 (regOne!33107 lt!2370530) (regOne!33106 lt!2370530))))))

(declare-fun bm!545395 () Bool)

(assert (=> bm!545395 (= call!545399 (validRegex!8033 (ite c!1162894 (reg!16626 lt!2370530) (ite c!1162893 (regTwo!33107 lt!2370530) (regTwo!33106 lt!2370530)))))))

(declare-fun b!6382101 () Bool)

(declare-fun res!2625195 () Bool)

(assert (=> b!6382101 (=> (not res!2625195) (not e!3874128))))

(assert (=> b!6382101 (= res!2625195 call!545400)))

(assert (=> b!6382101 (= e!3874130 e!3874128)))

(assert (= (and d!2000960 (not res!2625198)) b!6382094))

(assert (= (and b!6382094 c!1162894) b!6382095))

(assert (= (and b!6382094 (not c!1162894)) b!6382100))

(assert (= (and b!6382095 res!2625197) b!6382099))

(assert (= (and b!6382100 c!1162893) b!6382101))

(assert (= (and b!6382100 (not c!1162893)) b!6382098))

(assert (= (and b!6382101 res!2625195) b!6382096))

(assert (= (and b!6382098 (not res!2625194)) b!6382097))

(assert (= (and b!6382097 res!2625196) b!6382093))

(assert (= (or b!6382096 b!6382093) bm!545393))

(assert (= (or b!6382101 b!6382097) bm!545394))

(assert (= (or b!6382099 bm!545393) bm!545395))

(declare-fun m!7182318 () Bool)

(assert (=> b!6382095 m!7182318))

(declare-fun m!7182320 () Bool)

(assert (=> bm!545394 m!7182320))

(declare-fun m!7182322 () Bool)

(assert (=> bm!545395 m!7182322))

(assert (=> b!6381302 d!2000960))

(declare-fun b!6382113 () Bool)

(declare-fun e!3874136 () Bool)

(declare-fun tp!1775861 () Bool)

(declare-fun tp!1775863 () Bool)

(assert (=> b!6382113 (= e!3874136 (and tp!1775861 tp!1775863))))

(declare-fun b!6382114 () Bool)

(declare-fun tp!1775862 () Bool)

(assert (=> b!6382114 (= e!3874136 tp!1775862)))

(declare-fun b!6382115 () Bool)

(declare-fun tp!1775859 () Bool)

(declare-fun tp!1775860 () Bool)

(assert (=> b!6382115 (= e!3874136 (and tp!1775859 tp!1775860))))

(assert (=> b!6381294 (= tp!1775783 e!3874136)))

(declare-fun b!6382112 () Bool)

(assert (=> b!6382112 (= e!3874136 tp_is_empty!41847)))

(assert (= (and b!6381294 ((_ is ElementMatch!16297) (reg!16626 r!7292))) b!6382112))

(assert (= (and b!6381294 ((_ is Concat!25142) (reg!16626 r!7292))) b!6382113))

(assert (= (and b!6381294 ((_ is Star!16297) (reg!16626 r!7292))) b!6382114))

(assert (= (and b!6381294 ((_ is Union!16297) (reg!16626 r!7292))) b!6382115))

(declare-fun b!6382117 () Bool)

(declare-fun e!3874137 () Bool)

(declare-fun tp!1775866 () Bool)

(declare-fun tp!1775868 () Bool)

(assert (=> b!6382117 (= e!3874137 (and tp!1775866 tp!1775868))))

(declare-fun b!6382118 () Bool)

(declare-fun tp!1775867 () Bool)

(assert (=> b!6382118 (= e!3874137 tp!1775867)))

(declare-fun b!6382119 () Bool)

(declare-fun tp!1775864 () Bool)

(declare-fun tp!1775865 () Bool)

(assert (=> b!6382119 (= e!3874137 (and tp!1775864 tp!1775865))))

(assert (=> b!6381299 (= tp!1775782 e!3874137)))

(declare-fun b!6382116 () Bool)

(assert (=> b!6382116 (= e!3874137 tp_is_empty!41847)))

(assert (= (and b!6381299 ((_ is ElementMatch!16297) (regOne!33107 r!7292))) b!6382116))

(assert (= (and b!6381299 ((_ is Concat!25142) (regOne!33107 r!7292))) b!6382117))

(assert (= (and b!6381299 ((_ is Star!16297) (regOne!33107 r!7292))) b!6382118))

(assert (= (and b!6381299 ((_ is Union!16297) (regOne!33107 r!7292))) b!6382119))

(declare-fun b!6382121 () Bool)

(declare-fun e!3874138 () Bool)

(declare-fun tp!1775871 () Bool)

(declare-fun tp!1775873 () Bool)

(assert (=> b!6382121 (= e!3874138 (and tp!1775871 tp!1775873))))

(declare-fun b!6382122 () Bool)

(declare-fun tp!1775872 () Bool)

(assert (=> b!6382122 (= e!3874138 tp!1775872)))

(declare-fun b!6382123 () Bool)

(declare-fun tp!1775869 () Bool)

(declare-fun tp!1775870 () Bool)

(assert (=> b!6382123 (= e!3874138 (and tp!1775869 tp!1775870))))

(assert (=> b!6381299 (= tp!1775790 e!3874138)))

(declare-fun b!6382120 () Bool)

(assert (=> b!6382120 (= e!3874138 tp_is_empty!41847)))

(assert (= (and b!6381299 ((_ is ElementMatch!16297) (regTwo!33107 r!7292))) b!6382120))

(assert (= (and b!6381299 ((_ is Concat!25142) (regTwo!33107 r!7292))) b!6382121))

(assert (= (and b!6381299 ((_ is Star!16297) (regTwo!33107 r!7292))) b!6382122))

(assert (= (and b!6381299 ((_ is Union!16297) (regTwo!33107 r!7292))) b!6382123))

(declare-fun b!6382128 () Bool)

(declare-fun e!3874141 () Bool)

(declare-fun tp!1775876 () Bool)

(assert (=> b!6382128 (= e!3874141 (and tp_is_empty!41847 tp!1775876))))

(assert (=> b!6381295 (= tp!1775786 e!3874141)))

(assert (= (and b!6381295 ((_ is Cons!65066) (t!378794 s!2326))) b!6382128))

(declare-fun b!6382130 () Bool)

(declare-fun e!3874142 () Bool)

(declare-fun tp!1775879 () Bool)

(declare-fun tp!1775881 () Bool)

(assert (=> b!6382130 (= e!3874142 (and tp!1775879 tp!1775881))))

(declare-fun b!6382131 () Bool)

(declare-fun tp!1775880 () Bool)

(assert (=> b!6382131 (= e!3874142 tp!1775880)))

(declare-fun b!6382132 () Bool)

(declare-fun tp!1775877 () Bool)

(declare-fun tp!1775878 () Bool)

(assert (=> b!6382132 (= e!3874142 (and tp!1775877 tp!1775878))))

(assert (=> b!6381275 (= tp!1775784 e!3874142)))

(declare-fun b!6382129 () Bool)

(assert (=> b!6382129 (= e!3874142 tp_is_empty!41847)))

(assert (= (and b!6381275 ((_ is ElementMatch!16297) (regOne!33106 r!7292))) b!6382129))

(assert (= (and b!6381275 ((_ is Concat!25142) (regOne!33106 r!7292))) b!6382130))

(assert (= (and b!6381275 ((_ is Star!16297) (regOne!33106 r!7292))) b!6382131))

(assert (= (and b!6381275 ((_ is Union!16297) (regOne!33106 r!7292))) b!6382132))

(declare-fun b!6382134 () Bool)

(declare-fun e!3874143 () Bool)

(declare-fun tp!1775884 () Bool)

(declare-fun tp!1775886 () Bool)

(assert (=> b!6382134 (= e!3874143 (and tp!1775884 tp!1775886))))

(declare-fun b!6382135 () Bool)

(declare-fun tp!1775885 () Bool)

(assert (=> b!6382135 (= e!3874143 tp!1775885)))

(declare-fun b!6382136 () Bool)

(declare-fun tp!1775882 () Bool)

(declare-fun tp!1775883 () Bool)

(assert (=> b!6382136 (= e!3874143 (and tp!1775882 tp!1775883))))

(assert (=> b!6381275 (= tp!1775787 e!3874143)))

(declare-fun b!6382133 () Bool)

(assert (=> b!6382133 (= e!3874143 tp_is_empty!41847)))

(assert (= (and b!6381275 ((_ is ElementMatch!16297) (regTwo!33106 r!7292))) b!6382133))

(assert (= (and b!6381275 ((_ is Concat!25142) (regTwo!33106 r!7292))) b!6382134))

(assert (= (and b!6381275 ((_ is Star!16297) (regTwo!33106 r!7292))) b!6382135))

(assert (= (and b!6381275 ((_ is Union!16297) (regTwo!33106 r!7292))) b!6382136))

(declare-fun b!6382141 () Bool)

(declare-fun e!3874146 () Bool)

(declare-fun tp!1775891 () Bool)

(declare-fun tp!1775892 () Bool)

(assert (=> b!6382141 (= e!3874146 (and tp!1775891 tp!1775892))))

(assert (=> b!6381300 (= tp!1775788 e!3874146)))

(assert (= (and b!6381300 ((_ is Cons!65067) (exprs!6181 (h!71516 zl!343)))) b!6382141))

(declare-fun condSetEmpty!43562 () Bool)

(assert (=> setNonEmpty!43556 (= condSetEmpty!43562 (= setRest!43556 ((as const (Array Context!11362 Bool)) false)))))

(declare-fun setRes!43562 () Bool)

(assert (=> setNonEmpty!43556 (= tp!1775781 setRes!43562)))

(declare-fun setIsEmpty!43562 () Bool)

(assert (=> setIsEmpty!43562 setRes!43562))

(declare-fun setNonEmpty!43562 () Bool)

(declare-fun setElem!43562 () Context!11362)

(declare-fun e!3874149 () Bool)

(declare-fun tp!1775898 () Bool)

(assert (=> setNonEmpty!43562 (= setRes!43562 (and tp!1775898 (inv!83989 setElem!43562) e!3874149))))

(declare-fun setRest!43562 () (InoxSet Context!11362))

(assert (=> setNonEmpty!43562 (= setRest!43556 ((_ map or) (store ((as const (Array Context!11362 Bool)) false) setElem!43562 true) setRest!43562))))

(declare-fun b!6382146 () Bool)

(declare-fun tp!1775897 () Bool)

(assert (=> b!6382146 (= e!3874149 tp!1775897)))

(assert (= (and setNonEmpty!43556 condSetEmpty!43562) setIsEmpty!43562))

(assert (= (and setNonEmpty!43556 (not condSetEmpty!43562)) setNonEmpty!43562))

(assert (= setNonEmpty!43562 b!6382146))

(declare-fun m!7182324 () Bool)

(assert (=> setNonEmpty!43562 m!7182324))

(declare-fun b!6382154 () Bool)

(declare-fun e!3874155 () Bool)

(declare-fun tp!1775903 () Bool)

(assert (=> b!6382154 (= e!3874155 tp!1775903)))

(declare-fun e!3874154 () Bool)

(declare-fun b!6382153 () Bool)

(declare-fun tp!1775904 () Bool)

(assert (=> b!6382153 (= e!3874154 (and (inv!83989 (h!71516 (t!378796 zl!343))) e!3874155 tp!1775904))))

(assert (=> b!6381282 (= tp!1775789 e!3874154)))

(assert (= b!6382153 b!6382154))

(assert (= (and b!6381282 ((_ is Cons!65068) (t!378796 zl!343))) b!6382153))

(declare-fun m!7182326 () Bool)

(assert (=> b!6382153 m!7182326))

(declare-fun b!6382155 () Bool)

(declare-fun e!3874156 () Bool)

(declare-fun tp!1775905 () Bool)

(declare-fun tp!1775906 () Bool)

(assert (=> b!6382155 (= e!3874156 (and tp!1775905 tp!1775906))))

(assert (=> b!6381288 (= tp!1775785 e!3874156)))

(assert (= (and b!6381288 ((_ is Cons!65067) (exprs!6181 setElem!43556))) b!6382155))

(declare-fun b_lambda!242509 () Bool)

(assert (= b_lambda!242505 (or b!6381278 b_lambda!242509)))

(declare-fun bs!1597328 () Bool)

(declare-fun d!2000962 () Bool)

(assert (= bs!1597328 (and d!2000962 b!6381278)))

(assert (=> bs!1597328 (= (dynLambda!25815 lambda!352012 lt!2370544) (derivationStepZipperUp!1471 lt!2370544 (h!71514 s!2326)))))

(assert (=> bs!1597328 m!7181620))

(assert (=> d!2000936 d!2000962))

(declare-fun b_lambda!242511 () Bool)

(assert (= b_lambda!242501 (or b!6381278 b_lambda!242511)))

(declare-fun bs!1597329 () Bool)

(declare-fun d!2000964 () Bool)

(assert (= bs!1597329 (and d!2000964 b!6381278)))

(assert (=> bs!1597329 (= (dynLambda!25815 lambda!352012 (h!71516 zl!343)) (derivationStepZipperUp!1471 (h!71516 zl!343) (h!71514 s!2326)))))

(assert (=> bs!1597329 m!7181660))

(assert (=> d!2000898 d!2000964))

(declare-fun b_lambda!242513 () Bool)

(assert (= b_lambda!242503 (or b!6381278 b_lambda!242513)))

(declare-fun bs!1597330 () Bool)

(declare-fun d!2000966 () Bool)

(assert (= bs!1597330 (and d!2000966 b!6381278)))

(assert (=> bs!1597330 (= (dynLambda!25815 lambda!352012 lt!2370532) (derivationStepZipperUp!1471 lt!2370532 (h!71514 s!2326)))))

(assert (=> bs!1597330 m!7181624))

(assert (=> d!2000928 d!2000966))

(declare-fun b_lambda!242515 () Bool)

(assert (= b_lambda!242507 (or b!6381278 b_lambda!242515)))

(declare-fun bs!1597331 () Bool)

(declare-fun d!2000968 () Bool)

(assert (= bs!1597331 (and d!2000968 b!6381278)))

(assert (=> bs!1597331 (= (dynLambda!25815 lambda!352012 lt!2370511) (derivationStepZipperUp!1471 lt!2370511 (h!71514 s!2326)))))

(assert (=> bs!1597331 m!7181704))

(assert (=> d!2000942 d!2000968))

(check-sat (not b!6381947) (not b!6381977) (not d!2000948) (not b!6381690) (not b!6381867) (not d!2000928) (not bs!1597330) (not d!2000896) (not b!6381684) (not b!6382146) (not d!2000914) (not d!2000942) (not d!2000946) (not b!6382034) (not bm!545379) (not b!6381978) (not d!2000890) (not b!6381928) (not b!6382054) (not b!6381985) (not bm!545394) (not b!6382091) (not b!6382131) (not b!6381592) (not bm!545367) (not bm!545368) (not b!6381990) (not b!6382128) (not bs!1597329) (not b!6382029) (not b_lambda!242515) (not b!6381688) (not d!2000870) (not b!6382024) (not b!6382044) (not b!6382095) (not b!6382090) (not d!2000874) (not b!6382123) (not b!6382153) (not d!2000876) (not b!6382119) (not b!6382154) (not d!2000834) (not b!6382025) (not b!6381836) (not b!6381939) (not d!2000954) (not b!6381912) (not b!6381872) (not d!2000768) (not d!2000938) (not d!2000926) (not b!6381942) (not b!6382039) (not bm!545382) (not bm!545370) (not b!6381948) (not bm!545365) (not b!6381594) (not d!2000884) (not b!6382048) (not d!2000936) (not bs!1597328) (not bm!545392) (not d!2000776) tp_is_empty!41847 (not d!2000830) (not bm!545381) (not b!6381591) (not d!2000908) (not b!6382043) (not bm!545360) (not b!6381994) (not b!6382121) (not bm!545373) (not b!6382135) (not d!2000902) (not d!2000912) (not b!6382113) (not b!6382088) (not b!6382141) (not b!6382035) (not b!6381866) (not bm!545356) (not b!6382030) (not bm!545395) (not b!6382118) (not d!2000916) (not b!6381920) (not b!6382117) (not bm!545378) (not b!6382130) (not bm!545366) (not b!6382114) (not b!6381984) (not b!6381931) (not b!6382037) (not b!6381878) (not d!2000956) (not b!6381929) (not b!6381930) (not d!2000944) (not b!6382036) (not bm!545352) (not d!2000886) (not b!6381982) (not d!2000880) (not d!2000888) (not d!2000958) (not b!6382155) (not b!6382033) (not d!2000932) (not d!2000772) (not b!6381596) (not d!2000838) (not b!6382053) (not setNonEmpty!43562) (not b!6381876) (not d!2000894) (not b!6381927) (not b!6381595) (not bm!545380) (not b_lambda!242509) (not b!6381954) (not b!6381943) (not b!6381980) (not d!2000934) (not d!2000898) (not b!6381587) (not b!6382136) (not bm!545374) (not b!6382122) (not bm!545383) (not b!6382086) (not b!6381871) (not d!2000858) (not b!6382020) (not d!2000922) (not b!6381593) (not b!6381952) (not bs!1597331) (not b!6382132) (not b!6382089) (not b!6381983) (not b!6381687) (not b!6382134) (not b!6382038) (not b!6382049) (not bm!545355) (not b_lambda!242513) (not bm!545369) (not b!6381685) (not d!2000918) (not d!2000952) (not d!2000848) (not b!6382019) (not b!6382115) (not b!6381689) (not b!6382085) (not d!2000878) (not b!6382077) (not b!6382004) (not bm!545391) (not b_lambda!242511))
(check-sat)
