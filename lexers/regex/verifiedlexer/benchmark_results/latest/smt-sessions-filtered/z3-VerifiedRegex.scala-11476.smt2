; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!624094 () Bool)

(assert start!624094)

(declare-fun b!6278367 () Bool)

(assert (=> b!6278367 true))

(assert (=> b!6278367 true))

(declare-fun lambda!344217 () Int)

(declare-fun lambda!344216 () Int)

(assert (=> b!6278367 (not (= lambda!344217 lambda!344216))))

(assert (=> b!6278367 true))

(assert (=> b!6278367 true))

(declare-fun b!6278357 () Bool)

(assert (=> b!6278357 true))

(declare-fun bs!1568421 () Bool)

(declare-fun b!6278370 () Bool)

(assert (= bs!1568421 (and b!6278370 b!6278367)))

(declare-fun lambda!344219 () Int)

(declare-datatypes ((C!32668 0))(
  ( (C!32669 (val!26036 Int)) )
))
(declare-datatypes ((Regex!16199 0))(
  ( (ElementMatch!16199 (c!1138310 C!32668)) (Concat!25044 (regOne!32910 Regex!16199) (regTwo!32910 Regex!16199)) (EmptyExpr!16199) (Star!16199 (reg!16528 Regex!16199)) (EmptyLang!16199) (Union!16199 (regOne!32911 Regex!16199) (regTwo!32911 Regex!16199)) )
))
(declare-fun lt!2353844 () Regex!16199)

(declare-fun r!7292 () Regex!16199)

(assert (=> bs!1568421 (= (and (= (regOne!32910 (regOne!32910 r!7292)) (regOne!32910 r!7292)) (= lt!2353844 (regTwo!32910 r!7292))) (= lambda!344219 lambda!344216))))

(assert (=> bs!1568421 (not (= lambda!344219 lambda!344217))))

(assert (=> b!6278370 true))

(assert (=> b!6278370 true))

(assert (=> b!6278370 true))

(declare-fun b!6278347 () Bool)

(declare-fun res!2589488 () Bool)

(declare-fun e!3818209 () Bool)

(assert (=> b!6278347 (=> res!2589488 e!3818209)))

(declare-datatypes ((List!64896 0))(
  ( (Nil!64772) (Cons!64772 (h!71220 Regex!16199) (t!378456 List!64896)) )
))
(declare-datatypes ((Context!11166 0))(
  ( (Context!11167 (exprs!6083 List!64896)) )
))
(declare-fun lt!2353829 () Context!11166)

(declare-datatypes ((List!64897 0))(
  ( (Nil!64773) (Cons!64773 (h!71221 Context!11166) (t!378457 List!64897)) )
))
(declare-fun zl!343 () List!64897)

(declare-fun contextDepthTotal!322 (Context!11166) Int)

(assert (=> b!6278347 (= res!2589488 (>= (contextDepthTotal!322 lt!2353829) (contextDepthTotal!322 (h!71221 zl!343))))))

(declare-fun b!6278348 () Bool)

(declare-fun e!3818226 () Bool)

(declare-fun tp_is_empty!41651 () Bool)

(declare-fun tp!1750116 () Bool)

(assert (=> b!6278348 (= e!3818226 (and tp_is_empty!41651 tp!1750116))))

(declare-fun b!6278350 () Bool)

(declare-fun res!2589485 () Bool)

(declare-fun e!3818208 () Bool)

(assert (=> b!6278350 (=> res!2589485 e!3818208)))

(declare-fun generalisedUnion!2043 (List!64896) Regex!16199)

(declare-fun unfocusZipperList!1620 (List!64897) List!64896)

(assert (=> b!6278350 (= res!2589485 (not (= r!7292 (generalisedUnion!2043 (unfocusZipperList!1620 zl!343)))))))

(declare-fun b!6278351 () Bool)

(declare-fun res!2589484 () Bool)

(assert (=> b!6278351 (=> res!2589484 e!3818208)))

(get-info :version)

(assert (=> b!6278351 (= res!2589484 (not ((_ is Cons!64772) (exprs!6083 (h!71221 zl!343)))))))

(declare-fun tp!1750120 () Bool)

(declare-fun e!3818210 () Bool)

(declare-fun setNonEmpty!42716 () Bool)

(declare-fun setRes!42716 () Bool)

(declare-fun setElem!42716 () Context!11166)

(declare-fun inv!83744 (Context!11166) Bool)

(assert (=> setNonEmpty!42716 (= setRes!42716 (and tp!1750120 (inv!83744 setElem!42716) e!3818210))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11166))

(declare-fun setRest!42716 () (InoxSet Context!11166))

(assert (=> setNonEmpty!42716 (= z!1189 ((_ map or) (store ((as const (Array Context!11166 Bool)) false) setElem!42716 true) setRest!42716))))

(declare-fun b!6278352 () Bool)

(declare-fun res!2589492 () Bool)

(declare-fun e!3818215 () Bool)

(assert (=> b!6278352 (=> (not res!2589492) (not e!3818215))))

(declare-fun toList!9983 ((InoxSet Context!11166)) List!64897)

(assert (=> b!6278352 (= res!2589492 (= (toList!9983 z!1189) zl!343))))

(declare-fun b!6278353 () Bool)

(declare-fun e!3818225 () Bool)

(declare-fun tp!1750119 () Bool)

(declare-fun tp!1750114 () Bool)

(assert (=> b!6278353 (= e!3818225 (and tp!1750119 tp!1750114))))

(declare-fun b!6278354 () Bool)

(declare-fun e!3818221 () Bool)

(declare-fun lt!2353819 () (InoxSet Context!11166))

(declare-datatypes ((List!64898 0))(
  ( (Nil!64774) (Cons!64774 (h!71222 C!32668) (t!378458 List!64898)) )
))
(declare-fun s!2326 () List!64898)

(declare-fun matchZipper!2211 ((InoxSet Context!11166) List!64898) Bool)

(assert (=> b!6278354 (= e!3818221 (matchZipper!2211 lt!2353819 (t!378458 s!2326)))))

(declare-fun b!6278355 () Bool)

(declare-fun tp!1750121 () Bool)

(declare-fun tp!1750113 () Bool)

(assert (=> b!6278355 (= e!3818225 (and tp!1750121 tp!1750113))))

(declare-fun b!6278356 () Bool)

(declare-fun e!3818224 () Bool)

(declare-fun e!3818220 () Bool)

(assert (=> b!6278356 (= e!3818224 e!3818220)))

(declare-fun res!2589470 () Bool)

(assert (=> b!6278356 (=> res!2589470 e!3818220)))

(declare-fun e!3818216 () Bool)

(assert (=> b!6278356 (= res!2589470 e!3818216)))

(declare-fun res!2589474 () Bool)

(assert (=> b!6278356 (=> (not res!2589474) (not e!3818216))))

(declare-fun lt!2353843 () Bool)

(declare-fun lt!2353839 () Bool)

(assert (=> b!6278356 (= res!2589474 (not (= lt!2353843 lt!2353839)))))

(declare-fun lt!2353837 () (InoxSet Context!11166))

(assert (=> b!6278356 (= lt!2353843 (matchZipper!2211 lt!2353837 (t!378458 s!2326)))))

(declare-fun lt!2353826 () (InoxSet Context!11166))

(declare-fun e!3818212 () Bool)

(assert (=> b!6278356 (= (matchZipper!2211 lt!2353826 (t!378458 s!2326)) e!3818212)))

(declare-fun res!2589476 () Bool)

(assert (=> b!6278356 (=> res!2589476 e!3818212)))

(assert (=> b!6278356 (= res!2589476 lt!2353839)))

(declare-fun lt!2353812 () (InoxSet Context!11166))

(assert (=> b!6278356 (= lt!2353839 (matchZipper!2211 lt!2353812 (t!378458 s!2326)))))

(declare-fun lt!2353807 () (InoxSet Context!11166))

(declare-datatypes ((Unit!158127 0))(
  ( (Unit!158128) )
))
(declare-fun lt!2353814 () Unit!158127)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1030 ((InoxSet Context!11166) (InoxSet Context!11166) List!64898) Unit!158127)

(assert (=> b!6278356 (= lt!2353814 (lemmaZipperConcatMatchesSameAsBothZippers!1030 lt!2353812 lt!2353807 (t!378458 s!2326)))))

(declare-fun e!3818218 () Bool)

(declare-fun e!3818214 () Bool)

(assert (=> b!6278357 (= e!3818218 e!3818214)))

(declare-fun res!2589473 () Bool)

(assert (=> b!6278357 (=> res!2589473 e!3818214)))

(assert (=> b!6278357 (= res!2589473 (or (and ((_ is ElementMatch!16199) (regOne!32910 r!7292)) (= (c!1138310 (regOne!32910 r!7292)) (h!71222 s!2326))) ((_ is Union!16199) (regOne!32910 r!7292)) (not ((_ is Concat!25044) (regOne!32910 r!7292)))))))

(declare-fun lt!2353817 () Unit!158127)

(declare-fun e!3818211 () Unit!158127)

(assert (=> b!6278357 (= lt!2353817 e!3818211)))

(declare-fun c!1138309 () Bool)

(declare-fun nullable!6192 (Regex!16199) Bool)

(assert (=> b!6278357 (= c!1138309 (nullable!6192 (h!71220 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun lambda!344218 () Int)

(declare-fun flatMap!1704 ((InoxSet Context!11166) Int) (InoxSet Context!11166))

(declare-fun derivationStepZipperUp!1373 (Context!11166 C!32668) (InoxSet Context!11166))

(assert (=> b!6278357 (= (flatMap!1704 z!1189 lambda!344218) (derivationStepZipperUp!1373 (h!71221 zl!343) (h!71222 s!2326)))))

(declare-fun lt!2353835 () Unit!158127)

(declare-fun lemmaFlatMapOnSingletonSet!1230 ((InoxSet Context!11166) Context!11166 Int) Unit!158127)

(assert (=> b!6278357 (= lt!2353835 (lemmaFlatMapOnSingletonSet!1230 z!1189 (h!71221 zl!343) lambda!344218))))

(declare-fun lt!2353841 () Context!11166)

(assert (=> b!6278357 (= lt!2353819 (derivationStepZipperUp!1373 lt!2353841 (h!71222 s!2326)))))

(declare-fun derivationStepZipperDown!1447 (Regex!16199 Context!11166 C!32668) (InoxSet Context!11166))

(assert (=> b!6278357 (= lt!2353837 (derivationStepZipperDown!1447 (h!71220 (exprs!6083 (h!71221 zl!343))) lt!2353841 (h!71222 s!2326)))))

(assert (=> b!6278357 (= lt!2353841 (Context!11167 (t!378456 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun lt!2353810 () (InoxSet Context!11166))

(assert (=> b!6278357 (= lt!2353810 (derivationStepZipperUp!1373 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343))))) (h!71222 s!2326)))))

(declare-fun b!6278358 () Bool)

(declare-fun e!3818206 () Bool)

(assert (=> b!6278358 (= e!3818220 e!3818206)))

(declare-fun res!2589481 () Bool)

(assert (=> b!6278358 (=> res!2589481 e!3818206)))

(declare-fun lt!2353809 () (InoxSet Context!11166))

(declare-fun lt!2353818 () (InoxSet Context!11166))

(assert (=> b!6278358 (= res!2589481 (not (= lt!2353809 lt!2353818)))))

(declare-fun lt!2353823 () (InoxSet Context!11166))

(assert (=> b!6278358 (= lt!2353818 ((_ map or) lt!2353812 lt!2353823))))

(declare-fun lt!2353825 () Context!11166)

(assert (=> b!6278358 (= lt!2353823 (derivationStepZipperUp!1373 lt!2353825 (h!71222 s!2326)))))

(declare-fun lt!2353838 () (InoxSet Context!11166))

(assert (=> b!6278358 (= (flatMap!1704 lt!2353838 lambda!344218) (derivationStepZipperUp!1373 lt!2353829 (h!71222 s!2326)))))

(declare-fun lt!2353840 () Unit!158127)

(assert (=> b!6278358 (= lt!2353840 (lemmaFlatMapOnSingletonSet!1230 lt!2353838 lt!2353829 lambda!344218))))

(declare-fun lt!2353820 () (InoxSet Context!11166))

(assert (=> b!6278358 (= lt!2353820 (derivationStepZipperUp!1373 lt!2353829 (h!71222 s!2326)))))

(declare-fun derivationStepZipper!2165 ((InoxSet Context!11166) C!32668) (InoxSet Context!11166))

(assert (=> b!6278358 (= lt!2353809 (derivationStepZipper!2165 lt!2353838 (h!71222 s!2326)))))

(declare-fun lt!2353834 () (InoxSet Context!11166))

(assert (=> b!6278358 (= lt!2353834 (store ((as const (Array Context!11166 Bool)) false) lt!2353825 true))))

(assert (=> b!6278358 (= lt!2353838 (store ((as const (Array Context!11166 Bool)) false) lt!2353829 true))))

(declare-fun lt!2353832 () List!64896)

(assert (=> b!6278358 (= lt!2353829 (Context!11167 lt!2353832))))

(declare-fun lt!2353821 () List!64896)

(assert (=> b!6278358 (= lt!2353832 (Cons!64772 (regOne!32910 (regOne!32910 r!7292)) lt!2353821))))

(declare-fun b!6278359 () Bool)

(declare-fun e!3818223 () Bool)

(assert (=> b!6278359 (= e!3818223 (not (matchZipper!2211 (derivationStepZipper!2165 lt!2353834 (h!71222 s!2326)) (t!378458 s!2326))))))

(declare-fun setIsEmpty!42716 () Bool)

(assert (=> setIsEmpty!42716 setRes!42716))

(declare-fun b!6278349 () Bool)

(declare-fun e!3818222 () Bool)

(assert (=> b!6278349 (= e!3818209 e!3818222)))

(declare-fun res!2589487 () Bool)

(assert (=> b!6278349 (=> res!2589487 e!3818222)))

(declare-fun lt!2353813 () List!64897)

(declare-fun zipperDepthTotal!352 (List!64897) Int)

(assert (=> b!6278349 (= res!2589487 (>= (zipperDepthTotal!352 lt!2353813) (zipperDepthTotal!352 zl!343)))))

(assert (=> b!6278349 (= lt!2353813 (Cons!64773 lt!2353829 Nil!64773))))

(declare-fun res!2589496 () Bool)

(assert (=> start!624094 (=> (not res!2589496) (not e!3818215))))

(declare-fun validRegex!7935 (Regex!16199) Bool)

(assert (=> start!624094 (= res!2589496 (validRegex!7935 r!7292))))

(assert (=> start!624094 e!3818215))

(assert (=> start!624094 e!3818225))

(declare-fun condSetEmpty!42716 () Bool)

(assert (=> start!624094 (= condSetEmpty!42716 (= z!1189 ((as const (Array Context!11166 Bool)) false)))))

(assert (=> start!624094 setRes!42716))

(declare-fun e!3818213 () Bool)

(assert (=> start!624094 e!3818213))

(assert (=> start!624094 e!3818226))

(declare-fun b!6278360 () Bool)

(declare-fun res!2589477 () Bool)

(assert (=> b!6278360 (=> res!2589477 e!3818209)))

(assert (=> b!6278360 (= res!2589477 (not (= (exprs!6083 (h!71221 zl!343)) (Cons!64772 (Concat!25044 (regOne!32910 (regOne!32910 r!7292)) (regTwo!32910 (regOne!32910 r!7292))) (t!378456 (exprs!6083 (h!71221 zl!343)))))))))

(declare-fun b!6278361 () Bool)

(declare-fun Unit!158129 () Unit!158127)

(assert (=> b!6278361 (= e!3818211 Unit!158129)))

(declare-fun lt!2353808 () Unit!158127)

(assert (=> b!6278361 (= lt!2353808 (lemmaZipperConcatMatchesSameAsBothZippers!1030 lt!2353837 lt!2353819 (t!378458 s!2326)))))

(declare-fun res!2589491 () Bool)

(assert (=> b!6278361 (= res!2589491 (matchZipper!2211 lt!2353837 (t!378458 s!2326)))))

(assert (=> b!6278361 (=> res!2589491 e!3818221)))

(assert (=> b!6278361 (= (matchZipper!2211 ((_ map or) lt!2353837 lt!2353819) (t!378458 s!2326)) e!3818221)))

(declare-fun b!6278362 () Bool)

(declare-fun res!2589494 () Bool)

(assert (=> b!6278362 (=> res!2589494 e!3818208)))

(declare-fun generalisedConcat!1796 (List!64896) Regex!16199)

(assert (=> b!6278362 (= res!2589494 (not (= r!7292 (generalisedConcat!1796 (exprs!6083 (h!71221 zl!343))))))))

(declare-fun b!6278363 () Bool)

(declare-fun Unit!158130 () Unit!158127)

(assert (=> b!6278363 (= e!3818211 Unit!158130)))

(declare-fun b!6278364 () Bool)

(assert (=> b!6278364 (= e!3818216 (not (matchZipper!2211 lt!2353807 (t!378458 s!2326))))))

(declare-fun b!6278365 () Bool)

(declare-fun res!2589495 () Bool)

(assert (=> b!6278365 (=> res!2589495 e!3818208)))

(declare-fun isEmpty!36813 (List!64897) Bool)

(assert (=> b!6278365 (= res!2589495 (not (isEmpty!36813 (t!378457 zl!343))))))

(declare-fun b!6278366 () Bool)

(assert (=> b!6278366 (= e!3818225 tp_is_empty!41651)))

(assert (=> b!6278367 (= e!3818208 e!3818218)))

(declare-fun res!2589493 () Bool)

(assert (=> b!6278367 (=> res!2589493 e!3818218)))

(declare-fun lt!2353811 () Bool)

(declare-fun lt!2353822 () Bool)

(assert (=> b!6278367 (= res!2589493 (or (not (= lt!2353811 lt!2353822)) ((_ is Nil!64774) s!2326)))))

(declare-fun Exists!3269 (Int) Bool)

(assert (=> b!6278367 (= (Exists!3269 lambda!344216) (Exists!3269 lambda!344217))))

(declare-fun lt!2353836 () Unit!158127)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1806 (Regex!16199 Regex!16199 List!64898) Unit!158127)

(assert (=> b!6278367 (= lt!2353836 (lemmaExistCutMatchRandMatchRSpecEquivalent!1806 (regOne!32910 r!7292) (regTwo!32910 r!7292) s!2326))))

(assert (=> b!6278367 (= lt!2353822 (Exists!3269 lambda!344216))))

(declare-datatypes ((tuple2!66356 0))(
  ( (tuple2!66357 (_1!36481 List!64898) (_2!36481 List!64898)) )
))
(declare-datatypes ((Option!16090 0))(
  ( (None!16089) (Some!16089 (v!52244 tuple2!66356)) )
))
(declare-fun isDefined!12793 (Option!16090) Bool)

(declare-fun findConcatSeparation!2504 (Regex!16199 Regex!16199 List!64898 List!64898 List!64898) Option!16090)

(assert (=> b!6278367 (= lt!2353822 (isDefined!12793 (findConcatSeparation!2504 (regOne!32910 r!7292) (regTwo!32910 r!7292) Nil!64774 s!2326 s!2326)))))

(declare-fun lt!2353815 () Unit!158127)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2268 (Regex!16199 Regex!16199 List!64898) Unit!158127)

(assert (=> b!6278367 (= lt!2353815 (lemmaFindConcatSeparationEquivalentToExists!2268 (regOne!32910 r!7292) (regTwo!32910 r!7292) s!2326))))

(declare-fun b!6278368 () Bool)

(declare-fun res!2589471 () Bool)

(assert (=> b!6278368 (=> res!2589471 e!3818214)))

(assert (=> b!6278368 (= res!2589471 (not (nullable!6192 (regOne!32910 (regOne!32910 r!7292)))))))

(declare-fun tp!1750115 () Bool)

(declare-fun e!3818217 () Bool)

(declare-fun b!6278369 () Bool)

(assert (=> b!6278369 (= e!3818213 (and (inv!83744 (h!71221 zl!343)) e!3818217 tp!1750115))))

(declare-fun e!3818207 () Bool)

(assert (=> b!6278370 (= e!3818222 e!3818207)))

(declare-fun res!2589482 () Bool)

(assert (=> b!6278370 (=> res!2589482 e!3818207)))

(assert (=> b!6278370 (= res!2589482 (not (validRegex!7935 (regOne!32910 (regOne!32910 r!7292)))))))

(assert (=> b!6278370 (= (isDefined!12793 (findConcatSeparation!2504 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 Nil!64774 s!2326 s!2326)) (Exists!3269 lambda!344219))))

(declare-fun lt!2353830 () Unit!158127)

(assert (=> b!6278370 (= lt!2353830 (lemmaFindConcatSeparationEquivalentToExists!2268 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 s!2326))))

(declare-fun lt!2353806 () Bool)

(declare-fun lt!2353824 () Regex!16199)

(declare-fun matchRSpec!3300 (Regex!16199 List!64898) Bool)

(assert (=> b!6278370 (= lt!2353806 (matchRSpec!3300 lt!2353824 s!2326))))

(declare-fun lt!2353816 () Unit!158127)

(declare-fun mainMatchTheorem!3300 (Regex!16199 List!64898) Unit!158127)

(assert (=> b!6278370 (= lt!2353816 (mainMatchTheorem!3300 lt!2353824 s!2326))))

(declare-fun matchR!8382 (Regex!16199 List!64898) Bool)

(assert (=> b!6278370 (= (matchR!8382 lt!2353844 s!2326) (matchZipper!2211 lt!2353834 s!2326))))

(declare-fun lt!2353828 () Unit!158127)

(declare-fun theoremZipperRegexEquiv!769 ((InoxSet Context!11166) List!64897 Regex!16199 List!64898) Unit!158127)

(assert (=> b!6278370 (= lt!2353828 (theoremZipperRegexEquiv!769 lt!2353834 (Cons!64773 lt!2353825 Nil!64773) lt!2353844 s!2326))))

(assert (=> b!6278370 (= lt!2353844 (generalisedConcat!1796 lt!2353821))))

(assert (=> b!6278370 (= lt!2353806 (matchZipper!2211 lt!2353838 s!2326))))

(assert (=> b!6278370 (= lt!2353806 (matchR!8382 lt!2353824 s!2326))))

(declare-fun lt!2353827 () Unit!158127)

(assert (=> b!6278370 (= lt!2353827 (theoremZipperRegexEquiv!769 lt!2353838 lt!2353813 lt!2353824 s!2326))))

(assert (=> b!6278370 (= lt!2353824 (generalisedConcat!1796 lt!2353832))))

(declare-fun b!6278371 () Bool)

(declare-fun tp!1750117 () Bool)

(assert (=> b!6278371 (= e!3818210 tp!1750117)))

(declare-fun b!6278372 () Bool)

(declare-fun res!2589486 () Bool)

(assert (=> b!6278372 (=> (not res!2589486) (not e!3818215))))

(declare-fun unfocusZipper!1941 (List!64897) Regex!16199)

(assert (=> b!6278372 (= res!2589486 (= r!7292 (unfocusZipper!1941 zl!343)))))

(declare-fun b!6278373 () Bool)

(declare-fun res!2589472 () Bool)

(assert (=> b!6278373 (=> res!2589472 e!3818222)))

(declare-fun zipperDepth!324 (List!64897) Int)

(assert (=> b!6278373 (= res!2589472 (> (zipperDepth!324 lt!2353813) (zipperDepth!324 zl!343)))))

(declare-fun b!6278374 () Bool)

(assert (=> b!6278374 (= e!3818212 (matchZipper!2211 lt!2353807 (t!378458 s!2326)))))

(declare-fun b!6278375 () Bool)

(declare-fun e!3818219 () Bool)

(assert (=> b!6278375 (= e!3818219 (matchZipper!2211 lt!2353823 (t!378458 s!2326)))))

(declare-fun b!6278376 () Bool)

(declare-fun tp!1750122 () Bool)

(assert (=> b!6278376 (= e!3818225 tp!1750122)))

(declare-fun b!6278377 () Bool)

(assert (=> b!6278377 (= e!3818214 e!3818224)))

(declare-fun res!2589489 () Bool)

(assert (=> b!6278377 (=> res!2589489 e!3818224)))

(assert (=> b!6278377 (= res!2589489 (not (= lt!2353837 lt!2353826)))))

(assert (=> b!6278377 (= lt!2353826 ((_ map or) lt!2353812 lt!2353807))))

(assert (=> b!6278377 (= lt!2353807 (derivationStepZipperDown!1447 (regTwo!32910 (regOne!32910 r!7292)) lt!2353841 (h!71222 s!2326)))))

(assert (=> b!6278377 (= lt!2353812 (derivationStepZipperDown!1447 (regOne!32910 (regOne!32910 r!7292)) lt!2353825 (h!71222 s!2326)))))

(assert (=> b!6278377 (= lt!2353825 (Context!11167 lt!2353821))))

(assert (=> b!6278377 (= lt!2353821 (Cons!64772 (regTwo!32910 (regOne!32910 r!7292)) (t!378456 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun b!6278378 () Bool)

(assert (=> b!6278378 (= e!3818207 (validRegex!7935 lt!2353844))))

(declare-fun b!6278379 () Bool)

(declare-fun res!2589483 () Bool)

(assert (=> b!6278379 (=> res!2589483 e!3818218)))

(declare-fun isEmpty!36814 (List!64896) Bool)

(assert (=> b!6278379 (= res!2589483 (isEmpty!36814 (t!378456 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun b!6278380 () Bool)

(assert (=> b!6278380 (= e!3818215 (not e!3818208))))

(declare-fun res!2589478 () Bool)

(assert (=> b!6278380 (=> res!2589478 e!3818208)))

(assert (=> b!6278380 (= res!2589478 (not ((_ is Cons!64773) zl!343)))))

(assert (=> b!6278380 (= lt!2353811 (matchRSpec!3300 r!7292 s!2326))))

(assert (=> b!6278380 (= lt!2353811 (matchR!8382 r!7292 s!2326))))

(declare-fun lt!2353833 () Unit!158127)

(assert (=> b!6278380 (= lt!2353833 (mainMatchTheorem!3300 r!7292 s!2326))))

(declare-fun b!6278381 () Bool)

(assert (=> b!6278381 (= e!3818206 e!3818209)))

(declare-fun res!2589480 () Bool)

(assert (=> b!6278381 (=> res!2589480 e!3818209)))

(assert (=> b!6278381 (= res!2589480 e!3818223)))

(declare-fun res!2589479 () Bool)

(assert (=> b!6278381 (=> (not res!2589479) (not e!3818223))))

(assert (=> b!6278381 (= res!2589479 (not (= lt!2353843 (matchZipper!2211 lt!2353809 (t!378458 s!2326)))))))

(assert (=> b!6278381 (= (matchZipper!2211 lt!2353818 (t!378458 s!2326)) e!3818219)))

(declare-fun res!2589490 () Bool)

(assert (=> b!6278381 (=> res!2589490 e!3818219)))

(assert (=> b!6278381 (= res!2589490 lt!2353839)))

(declare-fun lt!2353831 () Unit!158127)

(assert (=> b!6278381 (= lt!2353831 (lemmaZipperConcatMatchesSameAsBothZippers!1030 lt!2353812 lt!2353823 (t!378458 s!2326)))))

(assert (=> b!6278381 (= (flatMap!1704 lt!2353834 lambda!344218) (derivationStepZipperUp!1373 lt!2353825 (h!71222 s!2326)))))

(declare-fun lt!2353842 () Unit!158127)

(assert (=> b!6278381 (= lt!2353842 (lemmaFlatMapOnSingletonSet!1230 lt!2353834 lt!2353825 lambda!344218))))

(declare-fun b!6278382 () Bool)

(declare-fun res!2589475 () Bool)

(assert (=> b!6278382 (=> res!2589475 e!3818208)))

(assert (=> b!6278382 (= res!2589475 (or ((_ is EmptyExpr!16199) r!7292) ((_ is EmptyLang!16199) r!7292) ((_ is ElementMatch!16199) r!7292) ((_ is Union!16199) r!7292) (not ((_ is Concat!25044) r!7292))))))

(declare-fun b!6278383 () Bool)

(declare-fun tp!1750118 () Bool)

(assert (=> b!6278383 (= e!3818217 tp!1750118)))

(assert (= (and start!624094 res!2589496) b!6278352))

(assert (= (and b!6278352 res!2589492) b!6278372))

(assert (= (and b!6278372 res!2589486) b!6278380))

(assert (= (and b!6278380 (not res!2589478)) b!6278365))

(assert (= (and b!6278365 (not res!2589495)) b!6278362))

(assert (= (and b!6278362 (not res!2589494)) b!6278351))

(assert (= (and b!6278351 (not res!2589484)) b!6278350))

(assert (= (and b!6278350 (not res!2589485)) b!6278382))

(assert (= (and b!6278382 (not res!2589475)) b!6278367))

(assert (= (and b!6278367 (not res!2589493)) b!6278379))

(assert (= (and b!6278379 (not res!2589483)) b!6278357))

(assert (= (and b!6278357 c!1138309) b!6278361))

(assert (= (and b!6278357 (not c!1138309)) b!6278363))

(assert (= (and b!6278361 (not res!2589491)) b!6278354))

(assert (= (and b!6278357 (not res!2589473)) b!6278368))

(assert (= (and b!6278368 (not res!2589471)) b!6278377))

(assert (= (and b!6278377 (not res!2589489)) b!6278356))

(assert (= (and b!6278356 (not res!2589476)) b!6278374))

(assert (= (and b!6278356 res!2589474) b!6278364))

(assert (= (and b!6278356 (not res!2589470)) b!6278358))

(assert (= (and b!6278358 (not res!2589481)) b!6278381))

(assert (= (and b!6278381 (not res!2589490)) b!6278375))

(assert (= (and b!6278381 res!2589479) b!6278359))

(assert (= (and b!6278381 (not res!2589480)) b!6278360))

(assert (= (and b!6278360 (not res!2589477)) b!6278347))

(assert (= (and b!6278347 (not res!2589488)) b!6278349))

(assert (= (and b!6278349 (not res!2589487)) b!6278373))

(assert (= (and b!6278373 (not res!2589472)) b!6278370))

(assert (= (and b!6278370 (not res!2589482)) b!6278378))

(assert (= (and start!624094 ((_ is ElementMatch!16199) r!7292)) b!6278366))

(assert (= (and start!624094 ((_ is Concat!25044) r!7292)) b!6278353))

(assert (= (and start!624094 ((_ is Star!16199) r!7292)) b!6278376))

(assert (= (and start!624094 ((_ is Union!16199) r!7292)) b!6278355))

(assert (= (and start!624094 condSetEmpty!42716) setIsEmpty!42716))

(assert (= (and start!624094 (not condSetEmpty!42716)) setNonEmpty!42716))

(assert (= setNonEmpty!42716 b!6278371))

(assert (= b!6278369 b!6278383))

(assert (= (and start!624094 ((_ is Cons!64773) zl!343)) b!6278369))

(assert (= (and start!624094 ((_ is Cons!64774) s!2326)) b!6278348))

(declare-fun m!7099524 () Bool)

(assert (=> start!624094 m!7099524))

(declare-fun m!7099526 () Bool)

(assert (=> b!6278352 m!7099526))

(declare-fun m!7099528 () Bool)

(assert (=> b!6278377 m!7099528))

(declare-fun m!7099530 () Bool)

(assert (=> b!6278377 m!7099530))

(declare-fun m!7099532 () Bool)

(assert (=> b!6278358 m!7099532))

(declare-fun m!7099534 () Bool)

(assert (=> b!6278358 m!7099534))

(declare-fun m!7099536 () Bool)

(assert (=> b!6278358 m!7099536))

(declare-fun m!7099538 () Bool)

(assert (=> b!6278358 m!7099538))

(declare-fun m!7099540 () Bool)

(assert (=> b!6278358 m!7099540))

(declare-fun m!7099542 () Bool)

(assert (=> b!6278358 m!7099542))

(declare-fun m!7099544 () Bool)

(assert (=> b!6278358 m!7099544))

(declare-fun m!7099546 () Bool)

(assert (=> b!6278368 m!7099546))

(declare-fun m!7099548 () Bool)

(assert (=> b!6278374 m!7099548))

(declare-fun m!7099550 () Bool)

(assert (=> b!6278370 m!7099550))

(declare-fun m!7099552 () Bool)

(assert (=> b!6278370 m!7099552))

(declare-fun m!7099554 () Bool)

(assert (=> b!6278370 m!7099554))

(declare-fun m!7099556 () Bool)

(assert (=> b!6278370 m!7099556))

(declare-fun m!7099558 () Bool)

(assert (=> b!6278370 m!7099558))

(declare-fun m!7099560 () Bool)

(assert (=> b!6278370 m!7099560))

(declare-fun m!7099562 () Bool)

(assert (=> b!6278370 m!7099562))

(declare-fun m!7099564 () Bool)

(assert (=> b!6278370 m!7099564))

(declare-fun m!7099566 () Bool)

(assert (=> b!6278370 m!7099566))

(declare-fun m!7099568 () Bool)

(assert (=> b!6278370 m!7099568))

(declare-fun m!7099570 () Bool)

(assert (=> b!6278370 m!7099570))

(declare-fun m!7099572 () Bool)

(assert (=> b!6278370 m!7099572))

(declare-fun m!7099574 () Bool)

(assert (=> b!6278370 m!7099574))

(assert (=> b!6278370 m!7099570))

(declare-fun m!7099576 () Bool)

(assert (=> b!6278370 m!7099576))

(declare-fun m!7099578 () Bool)

(assert (=> b!6278370 m!7099578))

(assert (=> b!6278364 m!7099548))

(declare-fun m!7099580 () Bool)

(assert (=> b!6278359 m!7099580))

(assert (=> b!6278359 m!7099580))

(declare-fun m!7099582 () Bool)

(assert (=> b!6278359 m!7099582))

(declare-fun m!7099584 () Bool)

(assert (=> b!6278369 m!7099584))

(declare-fun m!7099586 () Bool)

(assert (=> b!6278361 m!7099586))

(declare-fun m!7099588 () Bool)

(assert (=> b!6278361 m!7099588))

(declare-fun m!7099590 () Bool)

(assert (=> b!6278361 m!7099590))

(declare-fun m!7099592 () Bool)

(assert (=> b!6278373 m!7099592))

(declare-fun m!7099594 () Bool)

(assert (=> b!6278373 m!7099594))

(declare-fun m!7099596 () Bool)

(assert (=> b!6278365 m!7099596))

(declare-fun m!7099598 () Bool)

(assert (=> b!6278380 m!7099598))

(declare-fun m!7099600 () Bool)

(assert (=> b!6278380 m!7099600))

(declare-fun m!7099602 () Bool)

(assert (=> b!6278380 m!7099602))

(declare-fun m!7099604 () Bool)

(assert (=> b!6278347 m!7099604))

(declare-fun m!7099606 () Bool)

(assert (=> b!6278347 m!7099606))

(declare-fun m!7099608 () Bool)

(assert (=> b!6278381 m!7099608))

(assert (=> b!6278381 m!7099538))

(declare-fun m!7099610 () Bool)

(assert (=> b!6278381 m!7099610))

(declare-fun m!7099612 () Bool)

(assert (=> b!6278381 m!7099612))

(declare-fun m!7099614 () Bool)

(assert (=> b!6278381 m!7099614))

(declare-fun m!7099616 () Bool)

(assert (=> b!6278381 m!7099616))

(declare-fun m!7099618 () Bool)

(assert (=> b!6278375 m!7099618))

(assert (=> b!6278356 m!7099588))

(declare-fun m!7099620 () Bool)

(assert (=> b!6278356 m!7099620))

(declare-fun m!7099622 () Bool)

(assert (=> b!6278356 m!7099622))

(declare-fun m!7099624 () Bool)

(assert (=> b!6278356 m!7099624))

(declare-fun m!7099626 () Bool)

(assert (=> setNonEmpty!42716 m!7099626))

(declare-fun m!7099628 () Bool)

(assert (=> b!6278372 m!7099628))

(declare-fun m!7099630 () Bool)

(assert (=> b!6278367 m!7099630))

(declare-fun m!7099632 () Bool)

(assert (=> b!6278367 m!7099632))

(declare-fun m!7099634 () Bool)

(assert (=> b!6278367 m!7099634))

(assert (=> b!6278367 m!7099634))

(declare-fun m!7099636 () Bool)

(assert (=> b!6278367 m!7099636))

(declare-fun m!7099638 () Bool)

(assert (=> b!6278367 m!7099638))

(assert (=> b!6278367 m!7099630))

(declare-fun m!7099640 () Bool)

(assert (=> b!6278367 m!7099640))

(declare-fun m!7099642 () Bool)

(assert (=> b!6278379 m!7099642))

(declare-fun m!7099644 () Bool)

(assert (=> b!6278357 m!7099644))

(declare-fun m!7099646 () Bool)

(assert (=> b!6278357 m!7099646))

(declare-fun m!7099648 () Bool)

(assert (=> b!6278357 m!7099648))

(declare-fun m!7099650 () Bool)

(assert (=> b!6278357 m!7099650))

(declare-fun m!7099652 () Bool)

(assert (=> b!6278357 m!7099652))

(declare-fun m!7099654 () Bool)

(assert (=> b!6278357 m!7099654))

(declare-fun m!7099656 () Bool)

(assert (=> b!6278357 m!7099656))

(declare-fun m!7099658 () Bool)

(assert (=> b!6278349 m!7099658))

(declare-fun m!7099660 () Bool)

(assert (=> b!6278349 m!7099660))

(declare-fun m!7099662 () Bool)

(assert (=> b!6278378 m!7099662))

(declare-fun m!7099664 () Bool)

(assert (=> b!6278362 m!7099664))

(declare-fun m!7099666 () Bool)

(assert (=> b!6278354 m!7099666))

(declare-fun m!7099668 () Bool)

(assert (=> b!6278350 m!7099668))

(assert (=> b!6278350 m!7099668))

(declare-fun m!7099670 () Bool)

(assert (=> b!6278350 m!7099670))

(check-sat (not b!6278364) (not b!6278381) (not b!6278347) (not b!6278370) (not b!6278369) (not b!6278361) (not b!6278378) (not b!6278355) (not b!6278350) (not b!6278372) (not b!6278349) (not b!6278353) tp_is_empty!41651 (not b!6278358) (not b!6278380) (not start!624094) (not b!6278373) (not b!6278375) (not b!6278368) (not b!6278348) (not b!6278362) (not b!6278359) (not b!6278371) (not b!6278377) (not b!6278367) (not b!6278374) (not b!6278376) (not b!6278357) (not b!6278365) (not setNonEmpty!42716) (not b!6278356) (not b!6278352) (not b!6278354) (not b!6278379) (not b!6278383))
(check-sat)
(get-model)

(declare-fun d!1970571 () Bool)

(declare-fun nullableFct!2143 (Regex!16199) Bool)

(assert (=> d!1970571 (= (nullable!6192 (regOne!32910 (regOne!32910 r!7292))) (nullableFct!2143 (regOne!32910 (regOne!32910 r!7292))))))

(declare-fun bs!1568448 () Bool)

(assert (= bs!1568448 d!1970571))

(declare-fun m!7099824 () Bool)

(assert (=> bs!1568448 m!7099824))

(assert (=> b!6278368 d!1970571))

(declare-fun d!1970573 () Bool)

(declare-fun lt!2353894 () Int)

(assert (=> d!1970573 (>= lt!2353894 0)))

(declare-fun e!3818334 () Int)

(assert (=> d!1970573 (= lt!2353894 e!3818334)))

(declare-fun c!1138389 () Bool)

(assert (=> d!1970573 (= c!1138389 ((_ is Cons!64773) lt!2353813))))

(assert (=> d!1970573 (= (zipperDepthTotal!352 lt!2353813) lt!2353894)))

(declare-fun b!6278582 () Bool)

(assert (=> b!6278582 (= e!3818334 (+ (contextDepthTotal!322 (h!71221 lt!2353813)) (zipperDepthTotal!352 (t!378457 lt!2353813))))))

(declare-fun b!6278583 () Bool)

(assert (=> b!6278583 (= e!3818334 0)))

(assert (= (and d!1970573 c!1138389) b!6278582))

(assert (= (and d!1970573 (not c!1138389)) b!6278583))

(declare-fun m!7099844 () Bool)

(assert (=> b!6278582 m!7099844))

(declare-fun m!7099846 () Bool)

(assert (=> b!6278582 m!7099846))

(assert (=> b!6278349 d!1970573))

(declare-fun d!1970579 () Bool)

(declare-fun lt!2353895 () Int)

(assert (=> d!1970579 (>= lt!2353895 0)))

(declare-fun e!3818335 () Int)

(assert (=> d!1970579 (= lt!2353895 e!3818335)))

(declare-fun c!1138390 () Bool)

(assert (=> d!1970579 (= c!1138390 ((_ is Cons!64773) zl!343))))

(assert (=> d!1970579 (= (zipperDepthTotal!352 zl!343) lt!2353895)))

(declare-fun b!6278584 () Bool)

(assert (=> b!6278584 (= e!3818335 (+ (contextDepthTotal!322 (h!71221 zl!343)) (zipperDepthTotal!352 (t!378457 zl!343))))))

(declare-fun b!6278585 () Bool)

(assert (=> b!6278585 (= e!3818335 0)))

(assert (= (and d!1970579 c!1138390) b!6278584))

(assert (= (and d!1970579 (not c!1138390)) b!6278585))

(assert (=> b!6278584 m!7099606))

(declare-fun m!7099848 () Bool)

(assert (=> b!6278584 m!7099848))

(assert (=> b!6278349 d!1970579))

(declare-fun b!6278700 () Bool)

(declare-fun e!3818403 () Bool)

(assert (=> b!6278700 (= e!3818403 (matchR!8382 (regTwo!32910 r!7292) s!2326))))

(declare-fun d!1970581 () Bool)

(declare-fun e!3818401 () Bool)

(assert (=> d!1970581 e!3818401))

(declare-fun res!2589603 () Bool)

(assert (=> d!1970581 (=> res!2589603 e!3818401)))

(declare-fun e!3818400 () Bool)

(assert (=> d!1970581 (= res!2589603 e!3818400)))

(declare-fun res!2589605 () Bool)

(assert (=> d!1970581 (=> (not res!2589605) (not e!3818400))))

(declare-fun lt!2353909 () Option!16090)

(assert (=> d!1970581 (= res!2589605 (isDefined!12793 lt!2353909))))

(declare-fun e!3818399 () Option!16090)

(assert (=> d!1970581 (= lt!2353909 e!3818399)))

(declare-fun c!1138420 () Bool)

(assert (=> d!1970581 (= c!1138420 e!3818403)))

(declare-fun res!2589607 () Bool)

(assert (=> d!1970581 (=> (not res!2589607) (not e!3818403))))

(assert (=> d!1970581 (= res!2589607 (matchR!8382 (regOne!32910 r!7292) Nil!64774))))

(assert (=> d!1970581 (validRegex!7935 (regOne!32910 r!7292))))

(assert (=> d!1970581 (= (findConcatSeparation!2504 (regOne!32910 r!7292) (regTwo!32910 r!7292) Nil!64774 s!2326 s!2326) lt!2353909)))

(declare-fun b!6278701 () Bool)

(declare-fun res!2589604 () Bool)

(assert (=> b!6278701 (=> (not res!2589604) (not e!3818400))))

(declare-fun get!22387 (Option!16090) tuple2!66356)

(assert (=> b!6278701 (= res!2589604 (matchR!8382 (regOne!32910 r!7292) (_1!36481 (get!22387 lt!2353909))))))

(declare-fun b!6278702 () Bool)

(declare-fun e!3818402 () Option!16090)

(assert (=> b!6278702 (= e!3818399 e!3818402)))

(declare-fun c!1138421 () Bool)

(assert (=> b!6278702 (= c!1138421 ((_ is Nil!64774) s!2326))))

(declare-fun b!6278703 () Bool)

(declare-fun lt!2353911 () Unit!158127)

(declare-fun lt!2353910 () Unit!158127)

(assert (=> b!6278703 (= lt!2353911 lt!2353910)))

(declare-fun ++!14272 (List!64898 List!64898) List!64898)

(assert (=> b!6278703 (= (++!14272 (++!14272 Nil!64774 (Cons!64774 (h!71222 s!2326) Nil!64774)) (t!378458 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2367 (List!64898 C!32668 List!64898 List!64898) Unit!158127)

(assert (=> b!6278703 (= lt!2353910 (lemmaMoveElementToOtherListKeepsConcatEq!2367 Nil!64774 (h!71222 s!2326) (t!378458 s!2326) s!2326))))

(assert (=> b!6278703 (= e!3818402 (findConcatSeparation!2504 (regOne!32910 r!7292) (regTwo!32910 r!7292) (++!14272 Nil!64774 (Cons!64774 (h!71222 s!2326) Nil!64774)) (t!378458 s!2326) s!2326))))

(declare-fun b!6278704 () Bool)

(assert (=> b!6278704 (= e!3818402 None!16089)))

(declare-fun b!6278705 () Bool)

(assert (=> b!6278705 (= e!3818399 (Some!16089 (tuple2!66357 Nil!64774 s!2326)))))

(declare-fun b!6278706 () Bool)

(declare-fun res!2589606 () Bool)

(assert (=> b!6278706 (=> (not res!2589606) (not e!3818400))))

(assert (=> b!6278706 (= res!2589606 (matchR!8382 (regTwo!32910 r!7292) (_2!36481 (get!22387 lt!2353909))))))

(declare-fun b!6278707 () Bool)

(assert (=> b!6278707 (= e!3818401 (not (isDefined!12793 lt!2353909)))))

(declare-fun b!6278708 () Bool)

(assert (=> b!6278708 (= e!3818400 (= (++!14272 (_1!36481 (get!22387 lt!2353909)) (_2!36481 (get!22387 lt!2353909))) s!2326))))

(assert (= (and d!1970581 res!2589607) b!6278700))

(assert (= (and d!1970581 c!1138420) b!6278705))

(assert (= (and d!1970581 (not c!1138420)) b!6278702))

(assert (= (and b!6278702 c!1138421) b!6278704))

(assert (= (and b!6278702 (not c!1138421)) b!6278703))

(assert (= (and d!1970581 res!2589605) b!6278701))

(assert (= (and b!6278701 res!2589604) b!6278706))

(assert (= (and b!6278706 res!2589606) b!6278708))

(assert (= (and d!1970581 (not res!2589603)) b!6278707))

(declare-fun m!7099890 () Bool)

(assert (=> b!6278708 m!7099890))

(declare-fun m!7099892 () Bool)

(assert (=> b!6278708 m!7099892))

(declare-fun m!7099894 () Bool)

(assert (=> b!6278707 m!7099894))

(assert (=> b!6278706 m!7099890))

(declare-fun m!7099900 () Bool)

(assert (=> b!6278706 m!7099900))

(declare-fun m!7099904 () Bool)

(assert (=> b!6278703 m!7099904))

(assert (=> b!6278703 m!7099904))

(declare-fun m!7099906 () Bool)

(assert (=> b!6278703 m!7099906))

(declare-fun m!7099908 () Bool)

(assert (=> b!6278703 m!7099908))

(assert (=> b!6278703 m!7099904))

(declare-fun m!7099910 () Bool)

(assert (=> b!6278703 m!7099910))

(assert (=> b!6278701 m!7099890))

(declare-fun m!7099912 () Bool)

(assert (=> b!6278701 m!7099912))

(assert (=> d!1970581 m!7099894))

(declare-fun m!7099914 () Bool)

(assert (=> d!1970581 m!7099914))

(declare-fun m!7099916 () Bool)

(assert (=> d!1970581 m!7099916))

(declare-fun m!7099918 () Bool)

(assert (=> b!6278700 m!7099918))

(assert (=> b!6278367 d!1970581))

(declare-fun d!1970599 () Bool)

(declare-fun choose!46606 (Int) Bool)

(assert (=> d!1970599 (= (Exists!3269 lambda!344217) (choose!46606 lambda!344217))))

(declare-fun bs!1568460 () Bool)

(assert (= bs!1568460 d!1970599))

(declare-fun m!7099920 () Bool)

(assert (=> bs!1568460 m!7099920))

(assert (=> b!6278367 d!1970599))

(declare-fun d!1970601 () Bool)

(assert (=> d!1970601 (= (Exists!3269 lambda!344216) (choose!46606 lambda!344216))))

(declare-fun bs!1568462 () Bool)

(assert (= bs!1568462 d!1970601))

(declare-fun m!7099926 () Bool)

(assert (=> bs!1568462 m!7099926))

(assert (=> b!6278367 d!1970601))

(declare-fun bs!1568474 () Bool)

(declare-fun d!1970605 () Bool)

(assert (= bs!1568474 (and d!1970605 b!6278367)))

(declare-fun lambda!344265 () Int)

(assert (=> bs!1568474 (= lambda!344265 lambda!344216)))

(assert (=> bs!1568474 (not (= lambda!344265 lambda!344217))))

(declare-fun bs!1568476 () Bool)

(assert (= bs!1568476 (and d!1970605 b!6278370)))

(assert (=> bs!1568476 (= (and (= (regOne!32910 r!7292) (regOne!32910 (regOne!32910 r!7292))) (= (regTwo!32910 r!7292) lt!2353844)) (= lambda!344265 lambda!344219))))

(assert (=> d!1970605 true))

(assert (=> d!1970605 true))

(assert (=> d!1970605 true))

(assert (=> d!1970605 (= (isDefined!12793 (findConcatSeparation!2504 (regOne!32910 r!7292) (regTwo!32910 r!7292) Nil!64774 s!2326 s!2326)) (Exists!3269 lambda!344265))))

(declare-fun lt!2353926 () Unit!158127)

(declare-fun choose!46607 (Regex!16199 Regex!16199 List!64898) Unit!158127)

(assert (=> d!1970605 (= lt!2353926 (choose!46607 (regOne!32910 r!7292) (regTwo!32910 r!7292) s!2326))))

(assert (=> d!1970605 (validRegex!7935 (regOne!32910 r!7292))))

(assert (=> d!1970605 (= (lemmaFindConcatSeparationEquivalentToExists!2268 (regOne!32910 r!7292) (regTwo!32910 r!7292) s!2326) lt!2353926)))

(declare-fun bs!1568477 () Bool)

(assert (= bs!1568477 d!1970605))

(assert (=> bs!1568477 m!7099916))

(declare-fun m!7100000 () Bool)

(assert (=> bs!1568477 m!7100000))

(declare-fun m!7100002 () Bool)

(assert (=> bs!1568477 m!7100002))

(assert (=> bs!1568477 m!7099630))

(assert (=> bs!1568477 m!7099630))

(assert (=> bs!1568477 m!7099632))

(assert (=> b!6278367 d!1970605))

(declare-fun bs!1568518 () Bool)

(declare-fun d!1970637 () Bool)

(assert (= bs!1568518 (and d!1970637 b!6278367)))

(declare-fun lambda!344276 () Int)

(assert (=> bs!1568518 (= lambda!344276 lambda!344216)))

(assert (=> bs!1568518 (not (= lambda!344276 lambda!344217))))

(declare-fun bs!1568519 () Bool)

(assert (= bs!1568519 (and d!1970637 b!6278370)))

(assert (=> bs!1568519 (= (and (= (regOne!32910 r!7292) (regOne!32910 (regOne!32910 r!7292))) (= (regTwo!32910 r!7292) lt!2353844)) (= lambda!344276 lambda!344219))))

(declare-fun bs!1568520 () Bool)

(assert (= bs!1568520 (and d!1970637 d!1970605)))

(assert (=> bs!1568520 (= lambda!344276 lambda!344265)))

(assert (=> d!1970637 true))

(assert (=> d!1970637 true))

(assert (=> d!1970637 true))

(declare-fun lambda!344277 () Int)

(assert (=> bs!1568520 (not (= lambda!344277 lambda!344265))))

(declare-fun bs!1568521 () Bool)

(assert (= bs!1568521 d!1970637))

(assert (=> bs!1568521 (not (= lambda!344277 lambda!344276))))

(assert (=> bs!1568519 (not (= lambda!344277 lambda!344219))))

(assert (=> bs!1568518 (not (= lambda!344277 lambda!344216))))

(assert (=> bs!1568518 (= lambda!344277 lambda!344217)))

(assert (=> d!1970637 true))

(assert (=> d!1970637 true))

(assert (=> d!1970637 true))

(assert (=> d!1970637 (= (Exists!3269 lambda!344276) (Exists!3269 lambda!344277))))

(declare-fun lt!2353946 () Unit!158127)

(declare-fun choose!46608 (Regex!16199 Regex!16199 List!64898) Unit!158127)

(assert (=> d!1970637 (= lt!2353946 (choose!46608 (regOne!32910 r!7292) (regTwo!32910 r!7292) s!2326))))

(assert (=> d!1970637 (validRegex!7935 (regOne!32910 r!7292))))

(assert (=> d!1970637 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1806 (regOne!32910 r!7292) (regTwo!32910 r!7292) s!2326) lt!2353946)))

(declare-fun m!7100146 () Bool)

(assert (=> bs!1568521 m!7100146))

(declare-fun m!7100148 () Bool)

(assert (=> bs!1568521 m!7100148))

(declare-fun m!7100150 () Bool)

(assert (=> bs!1568521 m!7100150))

(assert (=> bs!1568521 m!7099916))

(assert (=> b!6278367 d!1970637))

(declare-fun d!1970691 () Bool)

(declare-fun isEmpty!36817 (Option!16090) Bool)

(assert (=> d!1970691 (= (isDefined!12793 (findConcatSeparation!2504 (regOne!32910 r!7292) (regTwo!32910 r!7292) Nil!64774 s!2326 s!2326)) (not (isEmpty!36817 (findConcatSeparation!2504 (regOne!32910 r!7292) (regTwo!32910 r!7292) Nil!64774 s!2326 s!2326))))))

(declare-fun bs!1568525 () Bool)

(assert (= bs!1568525 d!1970691))

(assert (=> bs!1568525 m!7099630))

(declare-fun m!7100152 () Bool)

(assert (=> bs!1568525 m!7100152))

(assert (=> b!6278367 d!1970691))

(declare-fun d!1970693 () Bool)

(declare-fun lt!2353949 () Int)

(assert (=> d!1970693 (>= lt!2353949 0)))

(declare-fun e!3818545 () Int)

(assert (=> d!1970693 (= lt!2353949 e!3818545)))

(declare-fun c!1138482 () Bool)

(assert (=> d!1970693 (= c!1138482 ((_ is Cons!64772) (exprs!6083 lt!2353829)))))

(assert (=> d!1970693 (= (contextDepthTotal!322 lt!2353829) lt!2353949)))

(declare-fun b!6278956 () Bool)

(declare-fun regexDepthTotal!174 (Regex!16199) Int)

(assert (=> b!6278956 (= e!3818545 (+ (regexDepthTotal!174 (h!71220 (exprs!6083 lt!2353829))) (contextDepthTotal!322 (Context!11167 (t!378456 (exprs!6083 lt!2353829))))))))

(declare-fun b!6278957 () Bool)

(assert (=> b!6278957 (= e!3818545 1)))

(assert (= (and d!1970693 c!1138482) b!6278956))

(assert (= (and d!1970693 (not c!1138482)) b!6278957))

(declare-fun m!7100154 () Bool)

(assert (=> b!6278956 m!7100154))

(declare-fun m!7100156 () Bool)

(assert (=> b!6278956 m!7100156))

(assert (=> b!6278347 d!1970693))

(declare-fun d!1970695 () Bool)

(declare-fun lt!2353950 () Int)

(assert (=> d!1970695 (>= lt!2353950 0)))

(declare-fun e!3818546 () Int)

(assert (=> d!1970695 (= lt!2353950 e!3818546)))

(declare-fun c!1138483 () Bool)

(assert (=> d!1970695 (= c!1138483 ((_ is Cons!64772) (exprs!6083 (h!71221 zl!343))))))

(assert (=> d!1970695 (= (contextDepthTotal!322 (h!71221 zl!343)) lt!2353950)))

(declare-fun b!6278958 () Bool)

(assert (=> b!6278958 (= e!3818546 (+ (regexDepthTotal!174 (h!71220 (exprs!6083 (h!71221 zl!343)))) (contextDepthTotal!322 (Context!11167 (t!378456 (exprs!6083 (h!71221 zl!343)))))))))

(declare-fun b!6278959 () Bool)

(assert (=> b!6278959 (= e!3818546 1)))

(assert (= (and d!1970695 c!1138483) b!6278958))

(assert (= (and d!1970695 (not c!1138483)) b!6278959))

(declare-fun m!7100158 () Bool)

(assert (=> b!6278958 m!7100158))

(declare-fun m!7100160 () Bool)

(assert (=> b!6278958 m!7100160))

(assert (=> b!6278347 d!1970695))

(declare-fun d!1970697 () Bool)

(declare-fun c!1138486 () Bool)

(declare-fun isEmpty!36818 (List!64898) Bool)

(assert (=> d!1970697 (= c!1138486 (isEmpty!36818 s!2326))))

(declare-fun e!3818549 () Bool)

(assert (=> d!1970697 (= (matchZipper!2211 lt!2353834 s!2326) e!3818549)))

(declare-fun b!6278964 () Bool)

(declare-fun nullableZipper!1969 ((InoxSet Context!11166)) Bool)

(assert (=> b!6278964 (= e!3818549 (nullableZipper!1969 lt!2353834))))

(declare-fun b!6278965 () Bool)

(declare-fun head!12898 (List!64898) C!32668)

(declare-fun tail!11983 (List!64898) List!64898)

(assert (=> b!6278965 (= e!3818549 (matchZipper!2211 (derivationStepZipper!2165 lt!2353834 (head!12898 s!2326)) (tail!11983 s!2326)))))

(assert (= (and d!1970697 c!1138486) b!6278964))

(assert (= (and d!1970697 (not c!1138486)) b!6278965))

(declare-fun m!7100162 () Bool)

(assert (=> d!1970697 m!7100162))

(declare-fun m!7100164 () Bool)

(assert (=> b!6278964 m!7100164))

(declare-fun m!7100166 () Bool)

(assert (=> b!6278965 m!7100166))

(assert (=> b!6278965 m!7100166))

(declare-fun m!7100168 () Bool)

(assert (=> b!6278965 m!7100168))

(declare-fun m!7100170 () Bool)

(assert (=> b!6278965 m!7100170))

(assert (=> b!6278965 m!7100168))

(assert (=> b!6278965 m!7100170))

(declare-fun m!7100172 () Bool)

(assert (=> b!6278965 m!7100172))

(assert (=> b!6278370 d!1970697))

(declare-fun b!6278994 () Bool)

(declare-fun e!3818564 () Bool)

(assert (=> b!6278994 (= e!3818564 (= (head!12898 s!2326) (c!1138310 lt!2353844)))))

(declare-fun b!6278995 () Bool)

(declare-fun e!3818569 () Bool)

(declare-fun e!3818568 () Bool)

(assert (=> b!6278995 (= e!3818569 e!3818568)))

(declare-fun res!2589706 () Bool)

(assert (=> b!6278995 (=> (not res!2589706) (not e!3818568))))

(declare-fun lt!2353953 () Bool)

(assert (=> b!6278995 (= res!2589706 (not lt!2353953))))

(declare-fun b!6278996 () Bool)

(declare-fun res!2589700 () Bool)

(assert (=> b!6278996 (=> res!2589700 e!3818569)))

(assert (=> b!6278996 (= res!2589700 e!3818564)))

(declare-fun res!2589704 () Bool)

(assert (=> b!6278996 (=> (not res!2589704) (not e!3818564))))

(assert (=> b!6278996 (= res!2589704 lt!2353953)))

(declare-fun b!6278997 () Bool)

(declare-fun e!3818570 () Bool)

(assert (=> b!6278997 (= e!3818568 e!3818570)))

(declare-fun res!2589705 () Bool)

(assert (=> b!6278997 (=> res!2589705 e!3818570)))

(declare-fun call!531330 () Bool)

(assert (=> b!6278997 (= res!2589705 call!531330)))

(declare-fun b!6278998 () Bool)

(declare-fun res!2589699 () Bool)

(assert (=> b!6278998 (=> (not res!2589699) (not e!3818564))))

(assert (=> b!6278998 (= res!2589699 (not call!531330))))

(declare-fun b!6278999 () Bool)

(declare-fun res!2589701 () Bool)

(assert (=> b!6278999 (=> res!2589701 e!3818570)))

(assert (=> b!6278999 (= res!2589701 (not (isEmpty!36818 (tail!11983 s!2326))))))

(declare-fun d!1970699 () Bool)

(declare-fun e!3818565 () Bool)

(assert (=> d!1970699 e!3818565))

(declare-fun c!1138494 () Bool)

(assert (=> d!1970699 (= c!1138494 ((_ is EmptyExpr!16199) lt!2353844))))

(declare-fun e!3818566 () Bool)

(assert (=> d!1970699 (= lt!2353953 e!3818566)))

(declare-fun c!1138495 () Bool)

(assert (=> d!1970699 (= c!1138495 (isEmpty!36818 s!2326))))

(assert (=> d!1970699 (validRegex!7935 lt!2353844)))

(assert (=> d!1970699 (= (matchR!8382 lt!2353844 s!2326) lt!2353953)))

(declare-fun b!6279000 () Bool)

(declare-fun res!2589703 () Bool)

(assert (=> b!6279000 (=> res!2589703 e!3818569)))

(assert (=> b!6279000 (= res!2589703 (not ((_ is ElementMatch!16199) lt!2353844)))))

(declare-fun e!3818567 () Bool)

(assert (=> b!6279000 (= e!3818567 e!3818569)))

(declare-fun b!6279001 () Bool)

(assert (=> b!6279001 (= e!3818566 (nullable!6192 lt!2353844))))

(declare-fun b!6279002 () Bool)

(declare-fun derivativeStep!4908 (Regex!16199 C!32668) Regex!16199)

(assert (=> b!6279002 (= e!3818566 (matchR!8382 (derivativeStep!4908 lt!2353844 (head!12898 s!2326)) (tail!11983 s!2326)))))

(declare-fun b!6279003 () Bool)

(declare-fun res!2589702 () Bool)

(assert (=> b!6279003 (=> (not res!2589702) (not e!3818564))))

(assert (=> b!6279003 (= res!2589702 (isEmpty!36818 (tail!11983 s!2326)))))

(declare-fun b!6279004 () Bool)

(assert (=> b!6279004 (= e!3818565 (= lt!2353953 call!531330))))

(declare-fun b!6279005 () Bool)

(assert (=> b!6279005 (= e!3818565 e!3818567)))

(declare-fun c!1138493 () Bool)

(assert (=> b!6279005 (= c!1138493 ((_ is EmptyLang!16199) lt!2353844))))

(declare-fun b!6279006 () Bool)

(assert (=> b!6279006 (= e!3818567 (not lt!2353953))))

(declare-fun bm!531325 () Bool)

(assert (=> bm!531325 (= call!531330 (isEmpty!36818 s!2326))))

(declare-fun b!6279007 () Bool)

(assert (=> b!6279007 (= e!3818570 (not (= (head!12898 s!2326) (c!1138310 lt!2353844))))))

(assert (= (and d!1970699 c!1138495) b!6279001))

(assert (= (and d!1970699 (not c!1138495)) b!6279002))

(assert (= (and d!1970699 c!1138494) b!6279004))

(assert (= (and d!1970699 (not c!1138494)) b!6279005))

(assert (= (and b!6279005 c!1138493) b!6279006))

(assert (= (and b!6279005 (not c!1138493)) b!6279000))

(assert (= (and b!6279000 (not res!2589703)) b!6278996))

(assert (= (and b!6278996 res!2589704) b!6278998))

(assert (= (and b!6278998 res!2589699) b!6279003))

(assert (= (and b!6279003 res!2589702) b!6278994))

(assert (= (and b!6278996 (not res!2589700)) b!6278995))

(assert (= (and b!6278995 res!2589706) b!6278997))

(assert (= (and b!6278997 (not res!2589705)) b!6278999))

(assert (= (and b!6278999 (not res!2589701)) b!6279007))

(assert (= (or b!6279004 b!6278997 b!6278998) bm!531325))

(assert (=> b!6279003 m!7100170))

(assert (=> b!6279003 m!7100170))

(declare-fun m!7100174 () Bool)

(assert (=> b!6279003 m!7100174))

(assert (=> b!6278994 m!7100166))

(assert (=> b!6279007 m!7100166))

(assert (=> bm!531325 m!7100162))

(assert (=> d!1970699 m!7100162))

(assert (=> d!1970699 m!7099662))

(assert (=> b!6278999 m!7100170))

(assert (=> b!6278999 m!7100170))

(assert (=> b!6278999 m!7100174))

(declare-fun m!7100176 () Bool)

(assert (=> b!6279001 m!7100176))

(assert (=> b!6279002 m!7100166))

(assert (=> b!6279002 m!7100166))

(declare-fun m!7100178 () Bool)

(assert (=> b!6279002 m!7100178))

(assert (=> b!6279002 m!7100170))

(assert (=> b!6279002 m!7100178))

(assert (=> b!6279002 m!7100170))

(declare-fun m!7100180 () Bool)

(assert (=> b!6279002 m!7100180))

(assert (=> b!6278370 d!1970699))

(declare-fun b!6279008 () Bool)

(declare-fun e!3818575 () Bool)

(assert (=> b!6279008 (= e!3818575 (matchR!8382 lt!2353844 s!2326))))

(declare-fun d!1970701 () Bool)

(declare-fun e!3818573 () Bool)

(assert (=> d!1970701 e!3818573))

(declare-fun res!2589707 () Bool)

(assert (=> d!1970701 (=> res!2589707 e!3818573)))

(declare-fun e!3818572 () Bool)

(assert (=> d!1970701 (= res!2589707 e!3818572)))

(declare-fun res!2589709 () Bool)

(assert (=> d!1970701 (=> (not res!2589709) (not e!3818572))))

(declare-fun lt!2353954 () Option!16090)

(assert (=> d!1970701 (= res!2589709 (isDefined!12793 lt!2353954))))

(declare-fun e!3818571 () Option!16090)

(assert (=> d!1970701 (= lt!2353954 e!3818571)))

(declare-fun c!1138496 () Bool)

(assert (=> d!1970701 (= c!1138496 e!3818575)))

(declare-fun res!2589711 () Bool)

(assert (=> d!1970701 (=> (not res!2589711) (not e!3818575))))

(assert (=> d!1970701 (= res!2589711 (matchR!8382 (regOne!32910 (regOne!32910 r!7292)) Nil!64774))))

(assert (=> d!1970701 (validRegex!7935 (regOne!32910 (regOne!32910 r!7292)))))

(assert (=> d!1970701 (= (findConcatSeparation!2504 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 Nil!64774 s!2326 s!2326) lt!2353954)))

(declare-fun b!6279009 () Bool)

(declare-fun res!2589708 () Bool)

(assert (=> b!6279009 (=> (not res!2589708) (not e!3818572))))

(assert (=> b!6279009 (= res!2589708 (matchR!8382 (regOne!32910 (regOne!32910 r!7292)) (_1!36481 (get!22387 lt!2353954))))))

(declare-fun b!6279010 () Bool)

(declare-fun e!3818574 () Option!16090)

(assert (=> b!6279010 (= e!3818571 e!3818574)))

(declare-fun c!1138497 () Bool)

(assert (=> b!6279010 (= c!1138497 ((_ is Nil!64774) s!2326))))

(declare-fun b!6279011 () Bool)

(declare-fun lt!2353956 () Unit!158127)

(declare-fun lt!2353955 () Unit!158127)

(assert (=> b!6279011 (= lt!2353956 lt!2353955)))

(assert (=> b!6279011 (= (++!14272 (++!14272 Nil!64774 (Cons!64774 (h!71222 s!2326) Nil!64774)) (t!378458 s!2326)) s!2326)))

(assert (=> b!6279011 (= lt!2353955 (lemmaMoveElementToOtherListKeepsConcatEq!2367 Nil!64774 (h!71222 s!2326) (t!378458 s!2326) s!2326))))

(assert (=> b!6279011 (= e!3818574 (findConcatSeparation!2504 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 (++!14272 Nil!64774 (Cons!64774 (h!71222 s!2326) Nil!64774)) (t!378458 s!2326) s!2326))))

(declare-fun b!6279012 () Bool)

(assert (=> b!6279012 (= e!3818574 None!16089)))

(declare-fun b!6279013 () Bool)

(assert (=> b!6279013 (= e!3818571 (Some!16089 (tuple2!66357 Nil!64774 s!2326)))))

(declare-fun b!6279014 () Bool)

(declare-fun res!2589710 () Bool)

(assert (=> b!6279014 (=> (not res!2589710) (not e!3818572))))

(assert (=> b!6279014 (= res!2589710 (matchR!8382 lt!2353844 (_2!36481 (get!22387 lt!2353954))))))

(declare-fun b!6279015 () Bool)

(assert (=> b!6279015 (= e!3818573 (not (isDefined!12793 lt!2353954)))))

(declare-fun b!6279016 () Bool)

(assert (=> b!6279016 (= e!3818572 (= (++!14272 (_1!36481 (get!22387 lt!2353954)) (_2!36481 (get!22387 lt!2353954))) s!2326))))

(assert (= (and d!1970701 res!2589711) b!6279008))

(assert (= (and d!1970701 c!1138496) b!6279013))

(assert (= (and d!1970701 (not c!1138496)) b!6279010))

(assert (= (and b!6279010 c!1138497) b!6279012))

(assert (= (and b!6279010 (not c!1138497)) b!6279011))

(assert (= (and d!1970701 res!2589709) b!6279009))

(assert (= (and b!6279009 res!2589708) b!6279014))

(assert (= (and b!6279014 res!2589710) b!6279016))

(assert (= (and d!1970701 (not res!2589707)) b!6279015))

(declare-fun m!7100182 () Bool)

(assert (=> b!6279016 m!7100182))

(declare-fun m!7100184 () Bool)

(assert (=> b!6279016 m!7100184))

(declare-fun m!7100186 () Bool)

(assert (=> b!6279015 m!7100186))

(assert (=> b!6279014 m!7100182))

(declare-fun m!7100188 () Bool)

(assert (=> b!6279014 m!7100188))

(assert (=> b!6279011 m!7099904))

(assert (=> b!6279011 m!7099904))

(assert (=> b!6279011 m!7099906))

(assert (=> b!6279011 m!7099908))

(assert (=> b!6279011 m!7099904))

(declare-fun m!7100190 () Bool)

(assert (=> b!6279011 m!7100190))

(assert (=> b!6279009 m!7100182))

(declare-fun m!7100192 () Bool)

(assert (=> b!6279009 m!7100192))

(assert (=> d!1970701 m!7100186))

(declare-fun m!7100194 () Bool)

(assert (=> d!1970701 m!7100194))

(assert (=> d!1970701 m!7099566))

(assert (=> b!6279008 m!7099562))

(assert (=> b!6278370 d!1970701))

(declare-fun bs!1568526 () Bool)

(declare-fun d!1970703 () Bool)

(assert (= bs!1568526 (and d!1970703 d!1970605)))

(declare-fun lambda!344278 () Int)

(assert (=> bs!1568526 (= (and (= (regOne!32910 (regOne!32910 r!7292)) (regOne!32910 r!7292)) (= lt!2353844 (regTwo!32910 r!7292))) (= lambda!344278 lambda!344265))))

(declare-fun bs!1568527 () Bool)

(assert (= bs!1568527 (and d!1970703 d!1970637)))

(assert (=> bs!1568527 (= (and (= (regOne!32910 (regOne!32910 r!7292)) (regOne!32910 r!7292)) (= lt!2353844 (regTwo!32910 r!7292))) (= lambda!344278 lambda!344276))))

(declare-fun bs!1568528 () Bool)

(assert (= bs!1568528 (and d!1970703 b!6278370)))

(assert (=> bs!1568528 (= lambda!344278 lambda!344219)))

(assert (=> bs!1568527 (not (= lambda!344278 lambda!344277))))

(declare-fun bs!1568529 () Bool)

(assert (= bs!1568529 (and d!1970703 b!6278367)))

(assert (=> bs!1568529 (= (and (= (regOne!32910 (regOne!32910 r!7292)) (regOne!32910 r!7292)) (= lt!2353844 (regTwo!32910 r!7292))) (= lambda!344278 lambda!344216))))

(assert (=> bs!1568529 (not (= lambda!344278 lambda!344217))))

(assert (=> d!1970703 true))

(assert (=> d!1970703 true))

(assert (=> d!1970703 true))

(assert (=> d!1970703 (= (isDefined!12793 (findConcatSeparation!2504 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 Nil!64774 s!2326 s!2326)) (Exists!3269 lambda!344278))))

(declare-fun lt!2353957 () Unit!158127)

(assert (=> d!1970703 (= lt!2353957 (choose!46607 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 s!2326))))

(assert (=> d!1970703 (validRegex!7935 (regOne!32910 (regOne!32910 r!7292)))))

(assert (=> d!1970703 (= (lemmaFindConcatSeparationEquivalentToExists!2268 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 s!2326) lt!2353957)))

(declare-fun bs!1568530 () Bool)

(assert (= bs!1568530 d!1970703))

(assert (=> bs!1568530 m!7099566))

(declare-fun m!7100196 () Bool)

(assert (=> bs!1568530 m!7100196))

(declare-fun m!7100198 () Bool)

(assert (=> bs!1568530 m!7100198))

(assert (=> bs!1568530 m!7099570))

(assert (=> bs!1568530 m!7099570))

(assert (=> bs!1568530 m!7099572))

(assert (=> b!6278370 d!1970703))

(declare-fun b!6279035 () Bool)

(declare-fun e!3818596 () Bool)

(declare-fun e!3818591 () Bool)

(assert (=> b!6279035 (= e!3818596 e!3818591)))

(declare-fun res!2589724 () Bool)

(assert (=> b!6279035 (= res!2589724 (not (nullable!6192 (reg!16528 (regOne!32910 (regOne!32910 r!7292))))))))

(assert (=> b!6279035 (=> (not res!2589724) (not e!3818591))))

(declare-fun bm!531332 () Bool)

(declare-fun call!531339 () Bool)

(declare-fun call!531338 () Bool)

(assert (=> bm!531332 (= call!531339 call!531338)))

(declare-fun b!6279036 () Bool)

(declare-fun e!3818593 () Bool)

(assert (=> b!6279036 (= e!3818593 call!531339)))

(declare-fun b!6279037 () Bool)

(assert (=> b!6279037 (= e!3818591 call!531338)))

(declare-fun bm!531333 () Bool)

(declare-fun c!1138502 () Bool)

(declare-fun c!1138503 () Bool)

(assert (=> bm!531333 (= call!531338 (validRegex!7935 (ite c!1138502 (reg!16528 (regOne!32910 (regOne!32910 r!7292))) (ite c!1138503 (regTwo!32911 (regOne!32910 (regOne!32910 r!7292))) (regTwo!32910 (regOne!32910 (regOne!32910 r!7292)))))))))

(declare-fun b!6279038 () Bool)

(declare-fun res!2589722 () Bool)

(declare-fun e!3818595 () Bool)

(assert (=> b!6279038 (=> (not res!2589722) (not e!3818595))))

(declare-fun call!531337 () Bool)

(assert (=> b!6279038 (= res!2589722 call!531337)))

(declare-fun e!3818594 () Bool)

(assert (=> b!6279038 (= e!3818594 e!3818595)))

(declare-fun d!1970705 () Bool)

(declare-fun res!2589725 () Bool)

(declare-fun e!3818590 () Bool)

(assert (=> d!1970705 (=> res!2589725 e!3818590)))

(assert (=> d!1970705 (= res!2589725 ((_ is ElementMatch!16199) (regOne!32910 (regOne!32910 r!7292))))))

(assert (=> d!1970705 (= (validRegex!7935 (regOne!32910 (regOne!32910 r!7292))) e!3818590)))

(declare-fun b!6279039 () Bool)

(assert (=> b!6279039 (= e!3818590 e!3818596)))

(assert (=> b!6279039 (= c!1138502 ((_ is Star!16199) (regOne!32910 (regOne!32910 r!7292))))))

(declare-fun b!6279040 () Bool)

(assert (=> b!6279040 (= e!3818596 e!3818594)))

(assert (=> b!6279040 (= c!1138503 ((_ is Union!16199) (regOne!32910 (regOne!32910 r!7292))))))

(declare-fun b!6279041 () Bool)

(declare-fun e!3818592 () Bool)

(assert (=> b!6279041 (= e!3818592 e!3818593)))

(declare-fun res!2589726 () Bool)

(assert (=> b!6279041 (=> (not res!2589726) (not e!3818593))))

(assert (=> b!6279041 (= res!2589726 call!531337)))

(declare-fun b!6279042 () Bool)

(assert (=> b!6279042 (= e!3818595 call!531339)))

(declare-fun bm!531334 () Bool)

(assert (=> bm!531334 (= call!531337 (validRegex!7935 (ite c!1138503 (regOne!32911 (regOne!32910 (regOne!32910 r!7292))) (regOne!32910 (regOne!32910 (regOne!32910 r!7292))))))))

(declare-fun b!6279043 () Bool)

(declare-fun res!2589723 () Bool)

(assert (=> b!6279043 (=> res!2589723 e!3818592)))

(assert (=> b!6279043 (= res!2589723 (not ((_ is Concat!25044) (regOne!32910 (regOne!32910 r!7292)))))))

(assert (=> b!6279043 (= e!3818594 e!3818592)))

(assert (= (and d!1970705 (not res!2589725)) b!6279039))

(assert (= (and b!6279039 c!1138502) b!6279035))

(assert (= (and b!6279039 (not c!1138502)) b!6279040))

(assert (= (and b!6279035 res!2589724) b!6279037))

(assert (= (and b!6279040 c!1138503) b!6279038))

(assert (= (and b!6279040 (not c!1138503)) b!6279043))

(assert (= (and b!6279038 res!2589722) b!6279042))

(assert (= (and b!6279043 (not res!2589723)) b!6279041))

(assert (= (and b!6279041 res!2589726) b!6279036))

(assert (= (or b!6279042 b!6279036) bm!531332))

(assert (= (or b!6279038 b!6279041) bm!531334))

(assert (= (or b!6279037 bm!531332) bm!531333))

(declare-fun m!7100200 () Bool)

(assert (=> b!6279035 m!7100200))

(declare-fun m!7100202 () Bool)

(assert (=> bm!531333 m!7100202))

(declare-fun m!7100204 () Bool)

(assert (=> bm!531334 m!7100204))

(assert (=> b!6278370 d!1970705))

(declare-fun d!1970707 () Bool)

(assert (=> d!1970707 (= (matchR!8382 lt!2353844 s!2326) (matchZipper!2211 lt!2353834 s!2326))))

(declare-fun lt!2353960 () Unit!158127)

(declare-fun choose!46609 ((InoxSet Context!11166) List!64897 Regex!16199 List!64898) Unit!158127)

(assert (=> d!1970707 (= lt!2353960 (choose!46609 lt!2353834 (Cons!64773 lt!2353825 Nil!64773) lt!2353844 s!2326))))

(assert (=> d!1970707 (validRegex!7935 lt!2353844)))

(assert (=> d!1970707 (= (theoremZipperRegexEquiv!769 lt!2353834 (Cons!64773 lt!2353825 Nil!64773) lt!2353844 s!2326) lt!2353960)))

(declare-fun bs!1568531 () Bool)

(assert (= bs!1568531 d!1970707))

(assert (=> bs!1568531 m!7099562))

(assert (=> bs!1568531 m!7099564))

(declare-fun m!7100206 () Bool)

(assert (=> bs!1568531 m!7100206))

(assert (=> bs!1568531 m!7099662))

(assert (=> b!6278370 d!1970707))

(declare-fun bs!1568532 () Bool)

(declare-fun b!6279077 () Bool)

(assert (= bs!1568532 (and b!6279077 d!1970605)))

(declare-fun lambda!344283 () Int)

(assert (=> bs!1568532 (not (= lambda!344283 lambda!344265))))

(declare-fun bs!1568533 () Bool)

(assert (= bs!1568533 (and b!6279077 d!1970703)))

(assert (=> bs!1568533 (not (= lambda!344283 lambda!344278))))

(declare-fun bs!1568534 () Bool)

(assert (= bs!1568534 (and b!6279077 d!1970637)))

(assert (=> bs!1568534 (not (= lambda!344283 lambda!344276))))

(declare-fun bs!1568535 () Bool)

(assert (= bs!1568535 (and b!6279077 b!6278370)))

(assert (=> bs!1568535 (not (= lambda!344283 lambda!344219))))

(assert (=> bs!1568534 (not (= lambda!344283 lambda!344277))))

(declare-fun bs!1568536 () Bool)

(assert (= bs!1568536 (and b!6279077 b!6278367)))

(assert (=> bs!1568536 (not (= lambda!344283 lambda!344216))))

(assert (=> bs!1568536 (not (= lambda!344283 lambda!344217))))

(assert (=> b!6279077 true))

(assert (=> b!6279077 true))

(declare-fun bs!1568537 () Bool)

(declare-fun b!6279081 () Bool)

(assert (= bs!1568537 (and b!6279081 d!1970605)))

(declare-fun lambda!344284 () Int)

(assert (=> bs!1568537 (not (= lambda!344284 lambda!344265))))

(declare-fun bs!1568538 () Bool)

(assert (= bs!1568538 (and b!6279081 b!6279077)))

(assert (=> bs!1568538 (not (= lambda!344284 lambda!344283))))

(declare-fun bs!1568539 () Bool)

(assert (= bs!1568539 (and b!6279081 d!1970703)))

(assert (=> bs!1568539 (not (= lambda!344284 lambda!344278))))

(declare-fun bs!1568540 () Bool)

(assert (= bs!1568540 (and b!6279081 d!1970637)))

(assert (=> bs!1568540 (not (= lambda!344284 lambda!344276))))

(declare-fun bs!1568541 () Bool)

(assert (= bs!1568541 (and b!6279081 b!6278370)))

(assert (=> bs!1568541 (not (= lambda!344284 lambda!344219))))

(assert (=> bs!1568540 (= (and (= (regOne!32910 lt!2353824) (regOne!32910 r!7292)) (= (regTwo!32910 lt!2353824) (regTwo!32910 r!7292))) (= lambda!344284 lambda!344277))))

(declare-fun bs!1568542 () Bool)

(assert (= bs!1568542 (and b!6279081 b!6278367)))

(assert (=> bs!1568542 (not (= lambda!344284 lambda!344216))))

(assert (=> bs!1568542 (= (and (= (regOne!32910 lt!2353824) (regOne!32910 r!7292)) (= (regTwo!32910 lt!2353824) (regTwo!32910 r!7292))) (= lambda!344284 lambda!344217))))

(assert (=> b!6279081 true))

(assert (=> b!6279081 true))

(declare-fun b!6279076 () Bool)

(declare-fun e!3818617 () Bool)

(declare-fun e!3818620 () Bool)

(assert (=> b!6279076 (= e!3818617 e!3818620)))

(declare-fun res!2589743 () Bool)

(assert (=> b!6279076 (= res!2589743 (not ((_ is EmptyLang!16199) lt!2353824)))))

(assert (=> b!6279076 (=> (not res!2589743) (not e!3818620))))

(declare-fun e!3818621 () Bool)

(declare-fun call!531345 () Bool)

(assert (=> b!6279077 (= e!3818621 call!531345)))

(declare-fun b!6279078 () Bool)

(declare-fun c!1138513 () Bool)

(assert (=> b!6279078 (= c!1138513 ((_ is Union!16199) lt!2353824))))

(declare-fun e!3818615 () Bool)

(declare-fun e!3818616 () Bool)

(assert (=> b!6279078 (= e!3818615 e!3818616)))

(declare-fun bm!531339 () Bool)

(declare-fun call!531344 () Bool)

(assert (=> bm!531339 (= call!531344 (isEmpty!36818 s!2326))))

(declare-fun b!6279080 () Bool)

(declare-fun e!3818618 () Bool)

(assert (=> b!6279080 (= e!3818616 e!3818618)))

(declare-fun res!2589745 () Bool)

(assert (=> b!6279080 (= res!2589745 (matchRSpec!3300 (regOne!32911 lt!2353824) s!2326))))

(assert (=> b!6279080 (=> res!2589745 e!3818618)))

(declare-fun e!3818619 () Bool)

(assert (=> b!6279081 (= e!3818619 call!531345)))

(declare-fun b!6279082 () Bool)

(assert (=> b!6279082 (= e!3818615 (= s!2326 (Cons!64774 (c!1138310 lt!2353824) Nil!64774)))))

(declare-fun b!6279083 () Bool)

(assert (=> b!6279083 (= e!3818616 e!3818619)))

(declare-fun c!1138515 () Bool)

(assert (=> b!6279083 (= c!1138515 ((_ is Star!16199) lt!2353824))))

(declare-fun b!6279084 () Bool)

(declare-fun res!2589744 () Bool)

(assert (=> b!6279084 (=> res!2589744 e!3818621)))

(assert (=> b!6279084 (= res!2589744 call!531344)))

(assert (=> b!6279084 (= e!3818619 e!3818621)))

(declare-fun b!6279085 () Bool)

(assert (=> b!6279085 (= e!3818617 call!531344)))

(declare-fun b!6279079 () Bool)

(declare-fun c!1138512 () Bool)

(assert (=> b!6279079 (= c!1138512 ((_ is ElementMatch!16199) lt!2353824))))

(assert (=> b!6279079 (= e!3818620 e!3818615)))

(declare-fun d!1970709 () Bool)

(declare-fun c!1138514 () Bool)

(assert (=> d!1970709 (= c!1138514 ((_ is EmptyExpr!16199) lt!2353824))))

(assert (=> d!1970709 (= (matchRSpec!3300 lt!2353824 s!2326) e!3818617)))

(declare-fun bm!531340 () Bool)

(assert (=> bm!531340 (= call!531345 (Exists!3269 (ite c!1138515 lambda!344283 lambda!344284)))))

(declare-fun b!6279086 () Bool)

(assert (=> b!6279086 (= e!3818618 (matchRSpec!3300 (regTwo!32911 lt!2353824) s!2326))))

(assert (= (and d!1970709 c!1138514) b!6279085))

(assert (= (and d!1970709 (not c!1138514)) b!6279076))

(assert (= (and b!6279076 res!2589743) b!6279079))

(assert (= (and b!6279079 c!1138512) b!6279082))

(assert (= (and b!6279079 (not c!1138512)) b!6279078))

(assert (= (and b!6279078 c!1138513) b!6279080))

(assert (= (and b!6279078 (not c!1138513)) b!6279083))

(assert (= (and b!6279080 (not res!2589745)) b!6279086))

(assert (= (and b!6279083 c!1138515) b!6279084))

(assert (= (and b!6279083 (not c!1138515)) b!6279081))

(assert (= (and b!6279084 (not res!2589744)) b!6279077))

(assert (= (or b!6279077 b!6279081) bm!531340))

(assert (= (or b!6279085 b!6279084) bm!531339))

(assert (=> bm!531339 m!7100162))

(declare-fun m!7100208 () Bool)

(assert (=> b!6279080 m!7100208))

(declare-fun m!7100210 () Bool)

(assert (=> bm!531340 m!7100210))

(declare-fun m!7100212 () Bool)

(assert (=> b!6279086 m!7100212))

(assert (=> b!6278370 d!1970709))

(declare-fun b!6279087 () Bool)

(declare-fun e!3818622 () Bool)

(assert (=> b!6279087 (= e!3818622 (= (head!12898 s!2326) (c!1138310 lt!2353824)))))

(declare-fun b!6279088 () Bool)

(declare-fun e!3818627 () Bool)

(declare-fun e!3818626 () Bool)

(assert (=> b!6279088 (= e!3818627 e!3818626)))

(declare-fun res!2589753 () Bool)

(assert (=> b!6279088 (=> (not res!2589753) (not e!3818626))))

(declare-fun lt!2353961 () Bool)

(assert (=> b!6279088 (= res!2589753 (not lt!2353961))))

(declare-fun b!6279089 () Bool)

(declare-fun res!2589747 () Bool)

(assert (=> b!6279089 (=> res!2589747 e!3818627)))

(assert (=> b!6279089 (= res!2589747 e!3818622)))

(declare-fun res!2589751 () Bool)

(assert (=> b!6279089 (=> (not res!2589751) (not e!3818622))))

(assert (=> b!6279089 (= res!2589751 lt!2353961)))

(declare-fun b!6279090 () Bool)

(declare-fun e!3818628 () Bool)

(assert (=> b!6279090 (= e!3818626 e!3818628)))

(declare-fun res!2589752 () Bool)

(assert (=> b!6279090 (=> res!2589752 e!3818628)))

(declare-fun call!531346 () Bool)

(assert (=> b!6279090 (= res!2589752 call!531346)))

(declare-fun b!6279091 () Bool)

(declare-fun res!2589746 () Bool)

(assert (=> b!6279091 (=> (not res!2589746) (not e!3818622))))

(assert (=> b!6279091 (= res!2589746 (not call!531346))))

(declare-fun b!6279092 () Bool)

(declare-fun res!2589748 () Bool)

(assert (=> b!6279092 (=> res!2589748 e!3818628)))

(assert (=> b!6279092 (= res!2589748 (not (isEmpty!36818 (tail!11983 s!2326))))))

(declare-fun d!1970711 () Bool)

(declare-fun e!3818623 () Bool)

(assert (=> d!1970711 e!3818623))

(declare-fun c!1138517 () Bool)

(assert (=> d!1970711 (= c!1138517 ((_ is EmptyExpr!16199) lt!2353824))))

(declare-fun e!3818624 () Bool)

(assert (=> d!1970711 (= lt!2353961 e!3818624)))

(declare-fun c!1138518 () Bool)

(assert (=> d!1970711 (= c!1138518 (isEmpty!36818 s!2326))))

(assert (=> d!1970711 (validRegex!7935 lt!2353824)))

(assert (=> d!1970711 (= (matchR!8382 lt!2353824 s!2326) lt!2353961)))

(declare-fun b!6279093 () Bool)

(declare-fun res!2589750 () Bool)

(assert (=> b!6279093 (=> res!2589750 e!3818627)))

(assert (=> b!6279093 (= res!2589750 (not ((_ is ElementMatch!16199) lt!2353824)))))

(declare-fun e!3818625 () Bool)

(assert (=> b!6279093 (= e!3818625 e!3818627)))

(declare-fun b!6279094 () Bool)

(assert (=> b!6279094 (= e!3818624 (nullable!6192 lt!2353824))))

(declare-fun b!6279095 () Bool)

(assert (=> b!6279095 (= e!3818624 (matchR!8382 (derivativeStep!4908 lt!2353824 (head!12898 s!2326)) (tail!11983 s!2326)))))

(declare-fun b!6279096 () Bool)

(declare-fun res!2589749 () Bool)

(assert (=> b!6279096 (=> (not res!2589749) (not e!3818622))))

(assert (=> b!6279096 (= res!2589749 (isEmpty!36818 (tail!11983 s!2326)))))

(declare-fun b!6279097 () Bool)

(assert (=> b!6279097 (= e!3818623 (= lt!2353961 call!531346))))

(declare-fun b!6279098 () Bool)

(assert (=> b!6279098 (= e!3818623 e!3818625)))

(declare-fun c!1138516 () Bool)

(assert (=> b!6279098 (= c!1138516 ((_ is EmptyLang!16199) lt!2353824))))

(declare-fun b!6279099 () Bool)

(assert (=> b!6279099 (= e!3818625 (not lt!2353961))))

(declare-fun bm!531341 () Bool)

(assert (=> bm!531341 (= call!531346 (isEmpty!36818 s!2326))))

(declare-fun b!6279100 () Bool)

(assert (=> b!6279100 (= e!3818628 (not (= (head!12898 s!2326) (c!1138310 lt!2353824))))))

(assert (= (and d!1970711 c!1138518) b!6279094))

(assert (= (and d!1970711 (not c!1138518)) b!6279095))

(assert (= (and d!1970711 c!1138517) b!6279097))

(assert (= (and d!1970711 (not c!1138517)) b!6279098))

(assert (= (and b!6279098 c!1138516) b!6279099))

(assert (= (and b!6279098 (not c!1138516)) b!6279093))

(assert (= (and b!6279093 (not res!2589750)) b!6279089))

(assert (= (and b!6279089 res!2589751) b!6279091))

(assert (= (and b!6279091 res!2589746) b!6279096))

(assert (= (and b!6279096 res!2589749) b!6279087))

(assert (= (and b!6279089 (not res!2589747)) b!6279088))

(assert (= (and b!6279088 res!2589753) b!6279090))

(assert (= (and b!6279090 (not res!2589752)) b!6279092))

(assert (= (and b!6279092 (not res!2589748)) b!6279100))

(assert (= (or b!6279097 b!6279090 b!6279091) bm!531341))

(assert (=> b!6279096 m!7100170))

(assert (=> b!6279096 m!7100170))

(assert (=> b!6279096 m!7100174))

(assert (=> b!6279087 m!7100166))

(assert (=> b!6279100 m!7100166))

(assert (=> bm!531341 m!7100162))

(assert (=> d!1970711 m!7100162))

(declare-fun m!7100214 () Bool)

(assert (=> d!1970711 m!7100214))

(assert (=> b!6279092 m!7100170))

(assert (=> b!6279092 m!7100170))

(assert (=> b!6279092 m!7100174))

(declare-fun m!7100216 () Bool)

(assert (=> b!6279094 m!7100216))

(assert (=> b!6279095 m!7100166))

(assert (=> b!6279095 m!7100166))

(declare-fun m!7100218 () Bool)

(assert (=> b!6279095 m!7100218))

(assert (=> b!6279095 m!7100170))

(assert (=> b!6279095 m!7100218))

(assert (=> b!6279095 m!7100170))

(declare-fun m!7100220 () Bool)

(assert (=> b!6279095 m!7100220))

(assert (=> b!6278370 d!1970711))

(declare-fun d!1970713 () Bool)

(assert (=> d!1970713 (= (isDefined!12793 (findConcatSeparation!2504 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 Nil!64774 s!2326 s!2326)) (not (isEmpty!36817 (findConcatSeparation!2504 (regOne!32910 (regOne!32910 r!7292)) lt!2353844 Nil!64774 s!2326 s!2326))))))

(declare-fun bs!1568543 () Bool)

(assert (= bs!1568543 d!1970713))

(assert (=> bs!1568543 m!7099570))

(declare-fun m!7100222 () Bool)

(assert (=> bs!1568543 m!7100222))

(assert (=> b!6278370 d!1970713))

(declare-fun d!1970715 () Bool)

(assert (=> d!1970715 (= (matchR!8382 lt!2353824 s!2326) (matchRSpec!3300 lt!2353824 s!2326))))

(declare-fun lt!2353964 () Unit!158127)

(declare-fun choose!46610 (Regex!16199 List!64898) Unit!158127)

(assert (=> d!1970715 (= lt!2353964 (choose!46610 lt!2353824 s!2326))))

(assert (=> d!1970715 (validRegex!7935 lt!2353824)))

(assert (=> d!1970715 (= (mainMatchTheorem!3300 lt!2353824 s!2326) lt!2353964)))

(declare-fun bs!1568544 () Bool)

(assert (= bs!1568544 d!1970715))

(assert (=> bs!1568544 m!7099578))

(assert (=> bs!1568544 m!7099550))

(declare-fun m!7100224 () Bool)

(assert (=> bs!1568544 m!7100224))

(assert (=> bs!1568544 m!7100214))

(assert (=> b!6278370 d!1970715))

(declare-fun d!1970717 () Bool)

(assert (=> d!1970717 (= (Exists!3269 lambda!344219) (choose!46606 lambda!344219))))

(declare-fun bs!1568545 () Bool)

(assert (= bs!1568545 d!1970717))

(declare-fun m!7100226 () Bool)

(assert (=> bs!1568545 m!7100226))

(assert (=> b!6278370 d!1970717))

(declare-fun d!1970719 () Bool)

(assert (=> d!1970719 (= (matchR!8382 lt!2353824 s!2326) (matchZipper!2211 lt!2353838 s!2326))))

(declare-fun lt!2353965 () Unit!158127)

(assert (=> d!1970719 (= lt!2353965 (choose!46609 lt!2353838 lt!2353813 lt!2353824 s!2326))))

(assert (=> d!1970719 (validRegex!7935 lt!2353824)))

(assert (=> d!1970719 (= (theoremZipperRegexEquiv!769 lt!2353838 lt!2353813 lt!2353824 s!2326) lt!2353965)))

(declare-fun bs!1568546 () Bool)

(assert (= bs!1568546 d!1970719))

(assert (=> bs!1568546 m!7099578))

(assert (=> bs!1568546 m!7099576))

(declare-fun m!7100228 () Bool)

(assert (=> bs!1568546 m!7100228))

(assert (=> bs!1568546 m!7100214))

(assert (=> b!6278370 d!1970719))

(declare-fun b!6279121 () Bool)

(declare-fun e!3818644 () Regex!16199)

(assert (=> b!6279121 (= e!3818644 EmptyExpr!16199)))

(declare-fun b!6279122 () Bool)

(declare-fun e!3818641 () Bool)

(declare-fun lt!2353968 () Regex!16199)

(declare-fun isEmptyExpr!1605 (Regex!16199) Bool)

(assert (=> b!6279122 (= e!3818641 (isEmptyExpr!1605 lt!2353968))))

(declare-fun d!1970721 () Bool)

(declare-fun e!3818642 () Bool)

(assert (=> d!1970721 e!3818642))

(declare-fun res!2589759 () Bool)

(assert (=> d!1970721 (=> (not res!2589759) (not e!3818642))))

(assert (=> d!1970721 (= res!2589759 (validRegex!7935 lt!2353968))))

(declare-fun e!3818646 () Regex!16199)

(assert (=> d!1970721 (= lt!2353968 e!3818646)))

(declare-fun c!1138529 () Bool)

(declare-fun e!3818643 () Bool)

(assert (=> d!1970721 (= c!1138529 e!3818643)))

(declare-fun res!2589758 () Bool)

(assert (=> d!1970721 (=> (not res!2589758) (not e!3818643))))

(assert (=> d!1970721 (= res!2589758 ((_ is Cons!64772) lt!2353821))))

(declare-fun lambda!344287 () Int)

(declare-fun forall!15335 (List!64896 Int) Bool)

(assert (=> d!1970721 (forall!15335 lt!2353821 lambda!344287)))

(assert (=> d!1970721 (= (generalisedConcat!1796 lt!2353821) lt!2353968)))

(declare-fun b!6279123 () Bool)

(declare-fun e!3818645 () Bool)

(declare-fun head!12899 (List!64896) Regex!16199)

(assert (=> b!6279123 (= e!3818645 (= lt!2353968 (head!12899 lt!2353821)))))

(declare-fun b!6279124 () Bool)

(declare-fun isConcat!1128 (Regex!16199) Bool)

(assert (=> b!6279124 (= e!3818645 (isConcat!1128 lt!2353968))))

(declare-fun b!6279125 () Bool)

(assert (=> b!6279125 (= e!3818646 (h!71220 lt!2353821))))

(declare-fun b!6279126 () Bool)

(assert (=> b!6279126 (= e!3818643 (isEmpty!36814 (t!378456 lt!2353821)))))

(declare-fun b!6279127 () Bool)

(assert (=> b!6279127 (= e!3818642 e!3818641)))

(declare-fun c!1138530 () Bool)

(assert (=> b!6279127 (= c!1138530 (isEmpty!36814 lt!2353821))))

(declare-fun b!6279128 () Bool)

(assert (=> b!6279128 (= e!3818644 (Concat!25044 (h!71220 lt!2353821) (generalisedConcat!1796 (t!378456 lt!2353821))))))

(declare-fun b!6279129 () Bool)

(assert (=> b!6279129 (= e!3818646 e!3818644)))

(declare-fun c!1138528 () Bool)

(assert (=> b!6279129 (= c!1138528 ((_ is Cons!64772) lt!2353821))))

(declare-fun b!6279130 () Bool)

(assert (=> b!6279130 (= e!3818641 e!3818645)))

(declare-fun c!1138527 () Bool)

(declare-fun tail!11984 (List!64896) List!64896)

(assert (=> b!6279130 (= c!1138527 (isEmpty!36814 (tail!11984 lt!2353821)))))

(assert (= (and d!1970721 res!2589758) b!6279126))

(assert (= (and d!1970721 c!1138529) b!6279125))

(assert (= (and d!1970721 (not c!1138529)) b!6279129))

(assert (= (and b!6279129 c!1138528) b!6279128))

(assert (= (and b!6279129 (not c!1138528)) b!6279121))

(assert (= (and d!1970721 res!2589759) b!6279127))

(assert (= (and b!6279127 c!1138530) b!6279122))

(assert (= (and b!6279127 (not c!1138530)) b!6279130))

(assert (= (and b!6279130 c!1138527) b!6279123))

(assert (= (and b!6279130 (not c!1138527)) b!6279124))

(declare-fun m!7100230 () Bool)

(assert (=> b!6279128 m!7100230))

(declare-fun m!7100232 () Bool)

(assert (=> b!6279124 m!7100232))

(declare-fun m!7100234 () Bool)

(assert (=> b!6279126 m!7100234))

(declare-fun m!7100236 () Bool)

(assert (=> b!6279123 m!7100236))

(declare-fun m!7100238 () Bool)

(assert (=> d!1970721 m!7100238))

(declare-fun m!7100240 () Bool)

(assert (=> d!1970721 m!7100240))

(declare-fun m!7100242 () Bool)

(assert (=> b!6279122 m!7100242))

(declare-fun m!7100244 () Bool)

(assert (=> b!6279130 m!7100244))

(assert (=> b!6279130 m!7100244))

(declare-fun m!7100246 () Bool)

(assert (=> b!6279130 m!7100246))

(declare-fun m!7100248 () Bool)

(assert (=> b!6279127 m!7100248))

(assert (=> b!6278370 d!1970721))

(declare-fun bs!1568547 () Bool)

(declare-fun d!1970723 () Bool)

(assert (= bs!1568547 (and d!1970723 d!1970721)))

(declare-fun lambda!344288 () Int)

(assert (=> bs!1568547 (= lambda!344288 lambda!344287)))

(declare-fun b!6279131 () Bool)

(declare-fun e!3818650 () Regex!16199)

(assert (=> b!6279131 (= e!3818650 EmptyExpr!16199)))

(declare-fun b!6279132 () Bool)

(declare-fun e!3818647 () Bool)

(declare-fun lt!2353969 () Regex!16199)

(assert (=> b!6279132 (= e!3818647 (isEmptyExpr!1605 lt!2353969))))

(declare-fun e!3818648 () Bool)

(assert (=> d!1970723 e!3818648))

(declare-fun res!2589761 () Bool)

(assert (=> d!1970723 (=> (not res!2589761) (not e!3818648))))

(assert (=> d!1970723 (= res!2589761 (validRegex!7935 lt!2353969))))

(declare-fun e!3818652 () Regex!16199)

(assert (=> d!1970723 (= lt!2353969 e!3818652)))

(declare-fun c!1138533 () Bool)

(declare-fun e!3818649 () Bool)

(assert (=> d!1970723 (= c!1138533 e!3818649)))

(declare-fun res!2589760 () Bool)

(assert (=> d!1970723 (=> (not res!2589760) (not e!3818649))))

(assert (=> d!1970723 (= res!2589760 ((_ is Cons!64772) lt!2353832))))

(assert (=> d!1970723 (forall!15335 lt!2353832 lambda!344288)))

(assert (=> d!1970723 (= (generalisedConcat!1796 lt!2353832) lt!2353969)))

(declare-fun b!6279133 () Bool)

(declare-fun e!3818651 () Bool)

(assert (=> b!6279133 (= e!3818651 (= lt!2353969 (head!12899 lt!2353832)))))

(declare-fun b!6279134 () Bool)

(assert (=> b!6279134 (= e!3818651 (isConcat!1128 lt!2353969))))

(declare-fun b!6279135 () Bool)

(assert (=> b!6279135 (= e!3818652 (h!71220 lt!2353832))))

(declare-fun b!6279136 () Bool)

(assert (=> b!6279136 (= e!3818649 (isEmpty!36814 (t!378456 lt!2353832)))))

(declare-fun b!6279137 () Bool)

(assert (=> b!6279137 (= e!3818648 e!3818647)))

(declare-fun c!1138534 () Bool)

(assert (=> b!6279137 (= c!1138534 (isEmpty!36814 lt!2353832))))

(declare-fun b!6279138 () Bool)

(assert (=> b!6279138 (= e!3818650 (Concat!25044 (h!71220 lt!2353832) (generalisedConcat!1796 (t!378456 lt!2353832))))))

(declare-fun b!6279139 () Bool)

(assert (=> b!6279139 (= e!3818652 e!3818650)))

(declare-fun c!1138532 () Bool)

(assert (=> b!6279139 (= c!1138532 ((_ is Cons!64772) lt!2353832))))

(declare-fun b!6279140 () Bool)

(assert (=> b!6279140 (= e!3818647 e!3818651)))

(declare-fun c!1138531 () Bool)

(assert (=> b!6279140 (= c!1138531 (isEmpty!36814 (tail!11984 lt!2353832)))))

(assert (= (and d!1970723 res!2589760) b!6279136))

(assert (= (and d!1970723 c!1138533) b!6279135))

(assert (= (and d!1970723 (not c!1138533)) b!6279139))

(assert (= (and b!6279139 c!1138532) b!6279138))

(assert (= (and b!6279139 (not c!1138532)) b!6279131))

(assert (= (and d!1970723 res!2589761) b!6279137))

(assert (= (and b!6279137 c!1138534) b!6279132))

(assert (= (and b!6279137 (not c!1138534)) b!6279140))

(assert (= (and b!6279140 c!1138531) b!6279133))

(assert (= (and b!6279140 (not c!1138531)) b!6279134))

(declare-fun m!7100250 () Bool)

(assert (=> b!6279138 m!7100250))

(declare-fun m!7100252 () Bool)

(assert (=> b!6279134 m!7100252))

(declare-fun m!7100254 () Bool)

(assert (=> b!6279136 m!7100254))

(declare-fun m!7100256 () Bool)

(assert (=> b!6279133 m!7100256))

(declare-fun m!7100258 () Bool)

(assert (=> d!1970723 m!7100258))

(declare-fun m!7100260 () Bool)

(assert (=> d!1970723 m!7100260))

(declare-fun m!7100262 () Bool)

(assert (=> b!6279132 m!7100262))

(declare-fun m!7100264 () Bool)

(assert (=> b!6279140 m!7100264))

(assert (=> b!6279140 m!7100264))

(declare-fun m!7100266 () Bool)

(assert (=> b!6279140 m!7100266))

(declare-fun m!7100268 () Bool)

(assert (=> b!6279137 m!7100268))

(assert (=> b!6278370 d!1970723))

(declare-fun d!1970725 () Bool)

(declare-fun c!1138535 () Bool)

(assert (=> d!1970725 (= c!1138535 (isEmpty!36818 s!2326))))

(declare-fun e!3818653 () Bool)

(assert (=> d!1970725 (= (matchZipper!2211 lt!2353838 s!2326) e!3818653)))

(declare-fun b!6279141 () Bool)

(assert (=> b!6279141 (= e!3818653 (nullableZipper!1969 lt!2353838))))

(declare-fun b!6279142 () Bool)

(assert (=> b!6279142 (= e!3818653 (matchZipper!2211 (derivationStepZipper!2165 lt!2353838 (head!12898 s!2326)) (tail!11983 s!2326)))))

(assert (= (and d!1970725 c!1138535) b!6279141))

(assert (= (and d!1970725 (not c!1138535)) b!6279142))

(assert (=> d!1970725 m!7100162))

(declare-fun m!7100270 () Bool)

(assert (=> b!6279141 m!7100270))

(assert (=> b!6279142 m!7100166))

(assert (=> b!6279142 m!7100166))

(declare-fun m!7100272 () Bool)

(assert (=> b!6279142 m!7100272))

(assert (=> b!6279142 m!7100170))

(assert (=> b!6279142 m!7100272))

(assert (=> b!6279142 m!7100170))

(declare-fun m!7100274 () Bool)

(assert (=> b!6279142 m!7100274))

(assert (=> b!6278370 d!1970725))

(declare-fun bs!1568548 () Bool)

(declare-fun d!1970727 () Bool)

(assert (= bs!1568548 (and d!1970727 d!1970721)))

(declare-fun lambda!344291 () Int)

(assert (=> bs!1568548 (= lambda!344291 lambda!344287)))

(declare-fun bs!1568549 () Bool)

(assert (= bs!1568549 (and d!1970727 d!1970723)))

(assert (=> bs!1568549 (= lambda!344291 lambda!344288)))

(declare-fun b!6279163 () Bool)

(declare-fun e!3818667 () Bool)

(declare-fun lt!2353972 () Regex!16199)

(declare-fun isUnion!1042 (Regex!16199) Bool)

(assert (=> b!6279163 (= e!3818667 (isUnion!1042 lt!2353972))))

(declare-fun b!6279164 () Bool)

(declare-fun e!3818668 () Bool)

(declare-fun e!3818669 () Bool)

(assert (=> b!6279164 (= e!3818668 e!3818669)))

(declare-fun c!1138544 () Bool)

(assert (=> b!6279164 (= c!1138544 (isEmpty!36814 (unfocusZipperList!1620 zl!343)))))

(declare-fun b!6279165 () Bool)

(declare-fun e!3818666 () Regex!16199)

(assert (=> b!6279165 (= e!3818666 EmptyLang!16199)))

(declare-fun b!6279166 () Bool)

(declare-fun isEmptyLang!1612 (Regex!16199) Bool)

(assert (=> b!6279166 (= e!3818669 (isEmptyLang!1612 lt!2353972))))

(assert (=> d!1970727 e!3818668))

(declare-fun res!2589767 () Bool)

(assert (=> d!1970727 (=> (not res!2589767) (not e!3818668))))

(assert (=> d!1970727 (= res!2589767 (validRegex!7935 lt!2353972))))

(declare-fun e!3818670 () Regex!16199)

(assert (=> d!1970727 (= lt!2353972 e!3818670)))

(declare-fun c!1138547 () Bool)

(declare-fun e!3818671 () Bool)

(assert (=> d!1970727 (= c!1138547 e!3818671)))

(declare-fun res!2589766 () Bool)

(assert (=> d!1970727 (=> (not res!2589766) (not e!3818671))))

(assert (=> d!1970727 (= res!2589766 ((_ is Cons!64772) (unfocusZipperList!1620 zl!343)))))

(assert (=> d!1970727 (forall!15335 (unfocusZipperList!1620 zl!343) lambda!344291)))

(assert (=> d!1970727 (= (generalisedUnion!2043 (unfocusZipperList!1620 zl!343)) lt!2353972)))

(declare-fun b!6279167 () Bool)

(assert (=> b!6279167 (= e!3818670 e!3818666)))

(declare-fun c!1138545 () Bool)

(assert (=> b!6279167 (= c!1138545 ((_ is Cons!64772) (unfocusZipperList!1620 zl!343)))))

(declare-fun b!6279168 () Bool)

(assert (=> b!6279168 (= e!3818667 (= lt!2353972 (head!12899 (unfocusZipperList!1620 zl!343))))))

(declare-fun b!6279169 () Bool)

(assert (=> b!6279169 (= e!3818670 (h!71220 (unfocusZipperList!1620 zl!343)))))

(declare-fun b!6279170 () Bool)

(assert (=> b!6279170 (= e!3818669 e!3818667)))

(declare-fun c!1138546 () Bool)

(assert (=> b!6279170 (= c!1138546 (isEmpty!36814 (tail!11984 (unfocusZipperList!1620 zl!343))))))

(declare-fun b!6279171 () Bool)

(assert (=> b!6279171 (= e!3818666 (Union!16199 (h!71220 (unfocusZipperList!1620 zl!343)) (generalisedUnion!2043 (t!378456 (unfocusZipperList!1620 zl!343)))))))

(declare-fun b!6279172 () Bool)

(assert (=> b!6279172 (= e!3818671 (isEmpty!36814 (t!378456 (unfocusZipperList!1620 zl!343))))))

(assert (= (and d!1970727 res!2589766) b!6279172))

(assert (= (and d!1970727 c!1138547) b!6279169))

(assert (= (and d!1970727 (not c!1138547)) b!6279167))

(assert (= (and b!6279167 c!1138545) b!6279171))

(assert (= (and b!6279167 (not c!1138545)) b!6279165))

(assert (= (and d!1970727 res!2589767) b!6279164))

(assert (= (and b!6279164 c!1138544) b!6279166))

(assert (= (and b!6279164 (not c!1138544)) b!6279170))

(assert (= (and b!6279170 c!1138546) b!6279168))

(assert (= (and b!6279170 (not c!1138546)) b!6279163))

(declare-fun m!7100276 () Bool)

(assert (=> b!6279163 m!7100276))

(declare-fun m!7100278 () Bool)

(assert (=> b!6279166 m!7100278))

(assert (=> b!6279170 m!7099668))

(declare-fun m!7100280 () Bool)

(assert (=> b!6279170 m!7100280))

(assert (=> b!6279170 m!7100280))

(declare-fun m!7100282 () Bool)

(assert (=> b!6279170 m!7100282))

(declare-fun m!7100284 () Bool)

(assert (=> b!6279171 m!7100284))

(assert (=> b!6279164 m!7099668))

(declare-fun m!7100286 () Bool)

(assert (=> b!6279164 m!7100286))

(declare-fun m!7100288 () Bool)

(assert (=> b!6279172 m!7100288))

(declare-fun m!7100290 () Bool)

(assert (=> d!1970727 m!7100290))

(assert (=> d!1970727 m!7099668))

(declare-fun m!7100292 () Bool)

(assert (=> d!1970727 m!7100292))

(assert (=> b!6279168 m!7099668))

(declare-fun m!7100294 () Bool)

(assert (=> b!6279168 m!7100294))

(assert (=> b!6278350 d!1970727))

(declare-fun bs!1568550 () Bool)

(declare-fun d!1970729 () Bool)

(assert (= bs!1568550 (and d!1970729 d!1970721)))

(declare-fun lambda!344294 () Int)

(assert (=> bs!1568550 (= lambda!344294 lambda!344287)))

(declare-fun bs!1568551 () Bool)

(assert (= bs!1568551 (and d!1970729 d!1970723)))

(assert (=> bs!1568551 (= lambda!344294 lambda!344288)))

(declare-fun bs!1568552 () Bool)

(assert (= bs!1568552 (and d!1970729 d!1970727)))

(assert (=> bs!1568552 (= lambda!344294 lambda!344291)))

(declare-fun lt!2353975 () List!64896)

(assert (=> d!1970729 (forall!15335 lt!2353975 lambda!344294)))

(declare-fun e!3818674 () List!64896)

(assert (=> d!1970729 (= lt!2353975 e!3818674)))

(declare-fun c!1138550 () Bool)

(assert (=> d!1970729 (= c!1138550 ((_ is Cons!64773) zl!343))))

(assert (=> d!1970729 (= (unfocusZipperList!1620 zl!343) lt!2353975)))

(declare-fun b!6279177 () Bool)

(assert (=> b!6279177 (= e!3818674 (Cons!64772 (generalisedConcat!1796 (exprs!6083 (h!71221 zl!343))) (unfocusZipperList!1620 (t!378457 zl!343))))))

(declare-fun b!6279178 () Bool)

(assert (=> b!6279178 (= e!3818674 Nil!64772)))

(assert (= (and d!1970729 c!1138550) b!6279177))

(assert (= (and d!1970729 (not c!1138550)) b!6279178))

(declare-fun m!7100296 () Bool)

(assert (=> d!1970729 m!7100296))

(assert (=> b!6279177 m!7099664))

(declare-fun m!7100298 () Bool)

(assert (=> b!6279177 m!7100298))

(assert (=> b!6278350 d!1970729))

(declare-fun bs!1568553 () Bool)

(declare-fun d!1970731 () Bool)

(assert (= bs!1568553 (and d!1970731 d!1970721)))

(declare-fun lambda!344297 () Int)

(assert (=> bs!1568553 (= lambda!344297 lambda!344287)))

(declare-fun bs!1568554 () Bool)

(assert (= bs!1568554 (and d!1970731 d!1970723)))

(assert (=> bs!1568554 (= lambda!344297 lambda!344288)))

(declare-fun bs!1568555 () Bool)

(assert (= bs!1568555 (and d!1970731 d!1970727)))

(assert (=> bs!1568555 (= lambda!344297 lambda!344291)))

(declare-fun bs!1568556 () Bool)

(assert (= bs!1568556 (and d!1970731 d!1970729)))

(assert (=> bs!1568556 (= lambda!344297 lambda!344294)))

(assert (=> d!1970731 (= (inv!83744 (h!71221 zl!343)) (forall!15335 (exprs!6083 (h!71221 zl!343)) lambda!344297))))

(declare-fun bs!1568557 () Bool)

(assert (= bs!1568557 d!1970731))

(declare-fun m!7100300 () Bool)

(assert (=> bs!1568557 m!7100300))

(assert (=> b!6278369 d!1970731))

(declare-fun bs!1568558 () Bool)

(declare-fun d!1970733 () Bool)

(assert (= bs!1568558 (and d!1970733 d!1970727)))

(declare-fun lambda!344298 () Int)

(assert (=> bs!1568558 (= lambda!344298 lambda!344291)))

(declare-fun bs!1568559 () Bool)

(assert (= bs!1568559 (and d!1970733 d!1970731)))

(assert (=> bs!1568559 (= lambda!344298 lambda!344297)))

(declare-fun bs!1568560 () Bool)

(assert (= bs!1568560 (and d!1970733 d!1970723)))

(assert (=> bs!1568560 (= lambda!344298 lambda!344288)))

(declare-fun bs!1568561 () Bool)

(assert (= bs!1568561 (and d!1970733 d!1970729)))

(assert (=> bs!1568561 (= lambda!344298 lambda!344294)))

(declare-fun bs!1568562 () Bool)

(assert (= bs!1568562 (and d!1970733 d!1970721)))

(assert (=> bs!1568562 (= lambda!344298 lambda!344287)))

(declare-fun b!6279179 () Bool)

(declare-fun e!3818678 () Regex!16199)

(assert (=> b!6279179 (= e!3818678 EmptyExpr!16199)))

(declare-fun b!6279180 () Bool)

(declare-fun e!3818675 () Bool)

(declare-fun lt!2353976 () Regex!16199)

(assert (=> b!6279180 (= e!3818675 (isEmptyExpr!1605 lt!2353976))))

(declare-fun e!3818676 () Bool)

(assert (=> d!1970733 e!3818676))

(declare-fun res!2589769 () Bool)

(assert (=> d!1970733 (=> (not res!2589769) (not e!3818676))))

(assert (=> d!1970733 (= res!2589769 (validRegex!7935 lt!2353976))))

(declare-fun e!3818680 () Regex!16199)

(assert (=> d!1970733 (= lt!2353976 e!3818680)))

(declare-fun c!1138553 () Bool)

(declare-fun e!3818677 () Bool)

(assert (=> d!1970733 (= c!1138553 e!3818677)))

(declare-fun res!2589768 () Bool)

(assert (=> d!1970733 (=> (not res!2589768) (not e!3818677))))

(assert (=> d!1970733 (= res!2589768 ((_ is Cons!64772) (exprs!6083 (h!71221 zl!343))))))

(assert (=> d!1970733 (forall!15335 (exprs!6083 (h!71221 zl!343)) lambda!344298)))

(assert (=> d!1970733 (= (generalisedConcat!1796 (exprs!6083 (h!71221 zl!343))) lt!2353976)))

(declare-fun b!6279181 () Bool)

(declare-fun e!3818679 () Bool)

(assert (=> b!6279181 (= e!3818679 (= lt!2353976 (head!12899 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun b!6279182 () Bool)

(assert (=> b!6279182 (= e!3818679 (isConcat!1128 lt!2353976))))

(declare-fun b!6279183 () Bool)

(assert (=> b!6279183 (= e!3818680 (h!71220 (exprs!6083 (h!71221 zl!343))))))

(declare-fun b!6279184 () Bool)

(assert (=> b!6279184 (= e!3818677 (isEmpty!36814 (t!378456 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun b!6279185 () Bool)

(assert (=> b!6279185 (= e!3818676 e!3818675)))

(declare-fun c!1138554 () Bool)

(assert (=> b!6279185 (= c!1138554 (isEmpty!36814 (exprs!6083 (h!71221 zl!343))))))

(declare-fun b!6279186 () Bool)

(assert (=> b!6279186 (= e!3818678 (Concat!25044 (h!71220 (exprs!6083 (h!71221 zl!343))) (generalisedConcat!1796 (t!378456 (exprs!6083 (h!71221 zl!343))))))))

(declare-fun b!6279187 () Bool)

(assert (=> b!6279187 (= e!3818680 e!3818678)))

(declare-fun c!1138552 () Bool)

(assert (=> b!6279187 (= c!1138552 ((_ is Cons!64772) (exprs!6083 (h!71221 zl!343))))))

(declare-fun b!6279188 () Bool)

(assert (=> b!6279188 (= e!3818675 e!3818679)))

(declare-fun c!1138551 () Bool)

(assert (=> b!6279188 (= c!1138551 (isEmpty!36814 (tail!11984 (exprs!6083 (h!71221 zl!343)))))))

(assert (= (and d!1970733 res!2589768) b!6279184))

(assert (= (and d!1970733 c!1138553) b!6279183))

(assert (= (and d!1970733 (not c!1138553)) b!6279187))

(assert (= (and b!6279187 c!1138552) b!6279186))

(assert (= (and b!6279187 (not c!1138552)) b!6279179))

(assert (= (and d!1970733 res!2589769) b!6279185))

(assert (= (and b!6279185 c!1138554) b!6279180))

(assert (= (and b!6279185 (not c!1138554)) b!6279188))

(assert (= (and b!6279188 c!1138551) b!6279181))

(assert (= (and b!6279188 (not c!1138551)) b!6279182))

(declare-fun m!7100302 () Bool)

(assert (=> b!6279186 m!7100302))

(declare-fun m!7100304 () Bool)

(assert (=> b!6279182 m!7100304))

(assert (=> b!6279184 m!7099642))

(declare-fun m!7100306 () Bool)

(assert (=> b!6279181 m!7100306))

(declare-fun m!7100308 () Bool)

(assert (=> d!1970733 m!7100308))

(declare-fun m!7100310 () Bool)

(assert (=> d!1970733 m!7100310))

(declare-fun m!7100312 () Bool)

(assert (=> b!6279180 m!7100312))

(declare-fun m!7100314 () Bool)

(assert (=> b!6279188 m!7100314))

(assert (=> b!6279188 m!7100314))

(declare-fun m!7100316 () Bool)

(assert (=> b!6279188 m!7100316))

(declare-fun m!7100318 () Bool)

(assert (=> b!6279185 m!7100318))

(assert (=> b!6278362 d!1970733))

(declare-fun e!3818683 () Bool)

(declare-fun d!1970735 () Bool)

(assert (=> d!1970735 (= (matchZipper!2211 ((_ map or) lt!2353837 lt!2353819) (t!378458 s!2326)) e!3818683)))

(declare-fun res!2589772 () Bool)

(assert (=> d!1970735 (=> res!2589772 e!3818683)))

(assert (=> d!1970735 (= res!2589772 (matchZipper!2211 lt!2353837 (t!378458 s!2326)))))

(declare-fun lt!2353979 () Unit!158127)

(declare-fun choose!46611 ((InoxSet Context!11166) (InoxSet Context!11166) List!64898) Unit!158127)

(assert (=> d!1970735 (= lt!2353979 (choose!46611 lt!2353837 lt!2353819 (t!378458 s!2326)))))

(assert (=> d!1970735 (= (lemmaZipperConcatMatchesSameAsBothZippers!1030 lt!2353837 lt!2353819 (t!378458 s!2326)) lt!2353979)))

(declare-fun b!6279191 () Bool)

(assert (=> b!6279191 (= e!3818683 (matchZipper!2211 lt!2353819 (t!378458 s!2326)))))

(assert (= (and d!1970735 (not res!2589772)) b!6279191))

(assert (=> d!1970735 m!7099590))

(assert (=> d!1970735 m!7099588))

(declare-fun m!7100320 () Bool)

(assert (=> d!1970735 m!7100320))

(assert (=> b!6279191 m!7099666))

(assert (=> b!6278361 d!1970735))

(declare-fun d!1970737 () Bool)

(declare-fun c!1138555 () Bool)

(assert (=> d!1970737 (= c!1138555 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818684 () Bool)

(assert (=> d!1970737 (= (matchZipper!2211 lt!2353837 (t!378458 s!2326)) e!3818684)))

(declare-fun b!6279192 () Bool)

(assert (=> b!6279192 (= e!3818684 (nullableZipper!1969 lt!2353837))))

(declare-fun b!6279193 () Bool)

(assert (=> b!6279193 (= e!3818684 (matchZipper!2211 (derivationStepZipper!2165 lt!2353837 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970737 c!1138555) b!6279192))

(assert (= (and d!1970737 (not c!1138555)) b!6279193))

(declare-fun m!7100322 () Bool)

(assert (=> d!1970737 m!7100322))

(declare-fun m!7100324 () Bool)

(assert (=> b!6279192 m!7100324))

(declare-fun m!7100326 () Bool)

(assert (=> b!6279193 m!7100326))

(assert (=> b!6279193 m!7100326))

(declare-fun m!7100328 () Bool)

(assert (=> b!6279193 m!7100328))

(declare-fun m!7100330 () Bool)

(assert (=> b!6279193 m!7100330))

(assert (=> b!6279193 m!7100328))

(assert (=> b!6279193 m!7100330))

(declare-fun m!7100332 () Bool)

(assert (=> b!6279193 m!7100332))

(assert (=> b!6278361 d!1970737))

(declare-fun d!1970739 () Bool)

(declare-fun c!1138556 () Bool)

(assert (=> d!1970739 (= c!1138556 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818685 () Bool)

(assert (=> d!1970739 (= (matchZipper!2211 ((_ map or) lt!2353837 lt!2353819) (t!378458 s!2326)) e!3818685)))

(declare-fun b!6279194 () Bool)

(assert (=> b!6279194 (= e!3818685 (nullableZipper!1969 ((_ map or) lt!2353837 lt!2353819)))))

(declare-fun b!6279195 () Bool)

(assert (=> b!6279195 (= e!3818685 (matchZipper!2211 (derivationStepZipper!2165 ((_ map or) lt!2353837 lt!2353819) (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970739 c!1138556) b!6279194))

(assert (= (and d!1970739 (not c!1138556)) b!6279195))

(assert (=> d!1970739 m!7100322))

(declare-fun m!7100334 () Bool)

(assert (=> b!6279194 m!7100334))

(assert (=> b!6279195 m!7100326))

(assert (=> b!6279195 m!7100326))

(declare-fun m!7100336 () Bool)

(assert (=> b!6279195 m!7100336))

(assert (=> b!6279195 m!7100330))

(assert (=> b!6279195 m!7100336))

(assert (=> b!6279195 m!7100330))

(declare-fun m!7100338 () Bool)

(assert (=> b!6279195 m!7100338))

(assert (=> b!6278361 d!1970739))

(declare-fun d!1970741 () Bool)

(assert (=> d!1970741 (= (isEmpty!36813 (t!378457 zl!343)) ((_ is Nil!64773) (t!378457 zl!343)))))

(assert (=> b!6278365 d!1970741))

(declare-fun d!1970743 () Bool)

(declare-fun c!1138557 () Bool)

(assert (=> d!1970743 (= c!1138557 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818686 () Bool)

(assert (=> d!1970743 (= (matchZipper!2211 lt!2353807 (t!378458 s!2326)) e!3818686)))

(declare-fun b!6279196 () Bool)

(assert (=> b!6279196 (= e!3818686 (nullableZipper!1969 lt!2353807))))

(declare-fun b!6279197 () Bool)

(assert (=> b!6279197 (= e!3818686 (matchZipper!2211 (derivationStepZipper!2165 lt!2353807 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970743 c!1138557) b!6279196))

(assert (= (and d!1970743 (not c!1138557)) b!6279197))

(assert (=> d!1970743 m!7100322))

(declare-fun m!7100340 () Bool)

(assert (=> b!6279196 m!7100340))

(assert (=> b!6279197 m!7100326))

(assert (=> b!6279197 m!7100326))

(declare-fun m!7100342 () Bool)

(assert (=> b!6279197 m!7100342))

(assert (=> b!6279197 m!7100330))

(assert (=> b!6279197 m!7100342))

(assert (=> b!6279197 m!7100330))

(declare-fun m!7100344 () Bool)

(assert (=> b!6279197 m!7100344))

(assert (=> b!6278364 d!1970743))

(declare-fun d!1970745 () Bool)

(assert (=> d!1970745 (= (isEmpty!36814 (t!378456 (exprs!6083 (h!71221 zl!343)))) ((_ is Nil!64772) (t!378456 (exprs!6083 (h!71221 zl!343)))))))

(assert (=> b!6278379 d!1970745))

(declare-fun b!6279198 () Bool)

(declare-fun e!3818693 () Bool)

(declare-fun e!3818688 () Bool)

(assert (=> b!6279198 (= e!3818693 e!3818688)))

(declare-fun res!2589775 () Bool)

(assert (=> b!6279198 (= res!2589775 (not (nullable!6192 (reg!16528 lt!2353844))))))

(assert (=> b!6279198 (=> (not res!2589775) (not e!3818688))))

(declare-fun bm!531342 () Bool)

(declare-fun call!531349 () Bool)

(declare-fun call!531348 () Bool)

(assert (=> bm!531342 (= call!531349 call!531348)))

(declare-fun b!6279199 () Bool)

(declare-fun e!3818690 () Bool)

(assert (=> b!6279199 (= e!3818690 call!531349)))

(declare-fun b!6279200 () Bool)

(assert (=> b!6279200 (= e!3818688 call!531348)))

(declare-fun c!1138559 () Bool)

(declare-fun bm!531343 () Bool)

(declare-fun c!1138558 () Bool)

(assert (=> bm!531343 (= call!531348 (validRegex!7935 (ite c!1138558 (reg!16528 lt!2353844) (ite c!1138559 (regTwo!32911 lt!2353844) (regTwo!32910 lt!2353844)))))))

(declare-fun b!6279201 () Bool)

(declare-fun res!2589773 () Bool)

(declare-fun e!3818692 () Bool)

(assert (=> b!6279201 (=> (not res!2589773) (not e!3818692))))

(declare-fun call!531347 () Bool)

(assert (=> b!6279201 (= res!2589773 call!531347)))

(declare-fun e!3818691 () Bool)

(assert (=> b!6279201 (= e!3818691 e!3818692)))

(declare-fun d!1970747 () Bool)

(declare-fun res!2589776 () Bool)

(declare-fun e!3818687 () Bool)

(assert (=> d!1970747 (=> res!2589776 e!3818687)))

(assert (=> d!1970747 (= res!2589776 ((_ is ElementMatch!16199) lt!2353844))))

(assert (=> d!1970747 (= (validRegex!7935 lt!2353844) e!3818687)))

(declare-fun b!6279202 () Bool)

(assert (=> b!6279202 (= e!3818687 e!3818693)))

(assert (=> b!6279202 (= c!1138558 ((_ is Star!16199) lt!2353844))))

(declare-fun b!6279203 () Bool)

(assert (=> b!6279203 (= e!3818693 e!3818691)))

(assert (=> b!6279203 (= c!1138559 ((_ is Union!16199) lt!2353844))))

(declare-fun b!6279204 () Bool)

(declare-fun e!3818689 () Bool)

(assert (=> b!6279204 (= e!3818689 e!3818690)))

(declare-fun res!2589777 () Bool)

(assert (=> b!6279204 (=> (not res!2589777) (not e!3818690))))

(assert (=> b!6279204 (= res!2589777 call!531347)))

(declare-fun b!6279205 () Bool)

(assert (=> b!6279205 (= e!3818692 call!531349)))

(declare-fun bm!531344 () Bool)

(assert (=> bm!531344 (= call!531347 (validRegex!7935 (ite c!1138559 (regOne!32911 lt!2353844) (regOne!32910 lt!2353844))))))

(declare-fun b!6279206 () Bool)

(declare-fun res!2589774 () Bool)

(assert (=> b!6279206 (=> res!2589774 e!3818689)))

(assert (=> b!6279206 (= res!2589774 (not ((_ is Concat!25044) lt!2353844)))))

(assert (=> b!6279206 (= e!3818691 e!3818689)))

(assert (= (and d!1970747 (not res!2589776)) b!6279202))

(assert (= (and b!6279202 c!1138558) b!6279198))

(assert (= (and b!6279202 (not c!1138558)) b!6279203))

(assert (= (and b!6279198 res!2589775) b!6279200))

(assert (= (and b!6279203 c!1138559) b!6279201))

(assert (= (and b!6279203 (not c!1138559)) b!6279206))

(assert (= (and b!6279201 res!2589773) b!6279205))

(assert (= (and b!6279206 (not res!2589774)) b!6279204))

(assert (= (and b!6279204 res!2589777) b!6279199))

(assert (= (or b!6279205 b!6279199) bm!531342))

(assert (= (or b!6279201 b!6279204) bm!531344))

(assert (= (or b!6279200 bm!531342) bm!531343))

(declare-fun m!7100346 () Bool)

(assert (=> b!6279198 m!7100346))

(declare-fun m!7100348 () Bool)

(assert (=> bm!531343 m!7100348))

(declare-fun m!7100350 () Bool)

(assert (=> bm!531344 m!7100350))

(assert (=> b!6278378 d!1970747))

(declare-fun b!6279207 () Bool)

(declare-fun e!3818700 () Bool)

(declare-fun e!3818695 () Bool)

(assert (=> b!6279207 (= e!3818700 e!3818695)))

(declare-fun res!2589780 () Bool)

(assert (=> b!6279207 (= res!2589780 (not (nullable!6192 (reg!16528 r!7292))))))

(assert (=> b!6279207 (=> (not res!2589780) (not e!3818695))))

(declare-fun bm!531345 () Bool)

(declare-fun call!531352 () Bool)

(declare-fun call!531351 () Bool)

(assert (=> bm!531345 (= call!531352 call!531351)))

(declare-fun b!6279208 () Bool)

(declare-fun e!3818697 () Bool)

(assert (=> b!6279208 (= e!3818697 call!531352)))

(declare-fun b!6279209 () Bool)

(assert (=> b!6279209 (= e!3818695 call!531351)))

(declare-fun bm!531346 () Bool)

(declare-fun c!1138560 () Bool)

(declare-fun c!1138561 () Bool)

(assert (=> bm!531346 (= call!531351 (validRegex!7935 (ite c!1138560 (reg!16528 r!7292) (ite c!1138561 (regTwo!32911 r!7292) (regTwo!32910 r!7292)))))))

(declare-fun b!6279210 () Bool)

(declare-fun res!2589778 () Bool)

(declare-fun e!3818699 () Bool)

(assert (=> b!6279210 (=> (not res!2589778) (not e!3818699))))

(declare-fun call!531350 () Bool)

(assert (=> b!6279210 (= res!2589778 call!531350)))

(declare-fun e!3818698 () Bool)

(assert (=> b!6279210 (= e!3818698 e!3818699)))

(declare-fun d!1970749 () Bool)

(declare-fun res!2589781 () Bool)

(declare-fun e!3818694 () Bool)

(assert (=> d!1970749 (=> res!2589781 e!3818694)))

(assert (=> d!1970749 (= res!2589781 ((_ is ElementMatch!16199) r!7292))))

(assert (=> d!1970749 (= (validRegex!7935 r!7292) e!3818694)))

(declare-fun b!6279211 () Bool)

(assert (=> b!6279211 (= e!3818694 e!3818700)))

(assert (=> b!6279211 (= c!1138560 ((_ is Star!16199) r!7292))))

(declare-fun b!6279212 () Bool)

(assert (=> b!6279212 (= e!3818700 e!3818698)))

(assert (=> b!6279212 (= c!1138561 ((_ is Union!16199) r!7292))))

(declare-fun b!6279213 () Bool)

(declare-fun e!3818696 () Bool)

(assert (=> b!6279213 (= e!3818696 e!3818697)))

(declare-fun res!2589782 () Bool)

(assert (=> b!6279213 (=> (not res!2589782) (not e!3818697))))

(assert (=> b!6279213 (= res!2589782 call!531350)))

(declare-fun b!6279214 () Bool)

(assert (=> b!6279214 (= e!3818699 call!531352)))

(declare-fun bm!531347 () Bool)

(assert (=> bm!531347 (= call!531350 (validRegex!7935 (ite c!1138561 (regOne!32911 r!7292) (regOne!32910 r!7292))))))

(declare-fun b!6279215 () Bool)

(declare-fun res!2589779 () Bool)

(assert (=> b!6279215 (=> res!2589779 e!3818696)))

(assert (=> b!6279215 (= res!2589779 (not ((_ is Concat!25044) r!7292)))))

(assert (=> b!6279215 (= e!3818698 e!3818696)))

(assert (= (and d!1970749 (not res!2589781)) b!6279211))

(assert (= (and b!6279211 c!1138560) b!6279207))

(assert (= (and b!6279211 (not c!1138560)) b!6279212))

(assert (= (and b!6279207 res!2589780) b!6279209))

(assert (= (and b!6279212 c!1138561) b!6279210))

(assert (= (and b!6279212 (not c!1138561)) b!6279215))

(assert (= (and b!6279210 res!2589778) b!6279214))

(assert (= (and b!6279215 (not res!2589779)) b!6279213))

(assert (= (and b!6279213 res!2589782) b!6279208))

(assert (= (or b!6279214 b!6279208) bm!531345))

(assert (= (or b!6279210 b!6279213) bm!531347))

(assert (= (or b!6279209 bm!531345) bm!531346))

(declare-fun m!7100352 () Bool)

(assert (=> b!6279207 m!7100352))

(declare-fun m!7100354 () Bool)

(assert (=> bm!531346 m!7100354))

(declare-fun m!7100356 () Bool)

(assert (=> bm!531347 m!7100356))

(assert (=> start!624094 d!1970749))

(declare-fun bs!1568563 () Bool)

(declare-fun d!1970751 () Bool)

(assert (= bs!1568563 (and d!1970751 b!6278357)))

(declare-fun lambda!344301 () Int)

(assert (=> bs!1568563 (= lambda!344301 lambda!344218)))

(assert (=> d!1970751 true))

(assert (=> d!1970751 (= (derivationStepZipper!2165 lt!2353838 (h!71222 s!2326)) (flatMap!1704 lt!2353838 lambda!344301))))

(declare-fun bs!1568564 () Bool)

(assert (= bs!1568564 d!1970751))

(declare-fun m!7100358 () Bool)

(assert (=> bs!1568564 m!7100358))

(assert (=> b!6278358 d!1970751))

(declare-fun d!1970753 () Bool)

(declare-fun dynLambda!25625 (Int Context!11166) (InoxSet Context!11166))

(assert (=> d!1970753 (= (flatMap!1704 lt!2353838 lambda!344218) (dynLambda!25625 lambda!344218 lt!2353829))))

(declare-fun lt!2353982 () Unit!158127)

(declare-fun choose!46613 ((InoxSet Context!11166) Context!11166 Int) Unit!158127)

(assert (=> d!1970753 (= lt!2353982 (choose!46613 lt!2353838 lt!2353829 lambda!344218))))

(assert (=> d!1970753 (= lt!2353838 (store ((as const (Array Context!11166 Bool)) false) lt!2353829 true))))

(assert (=> d!1970753 (= (lemmaFlatMapOnSingletonSet!1230 lt!2353838 lt!2353829 lambda!344218) lt!2353982)))

(declare-fun b_lambda!239065 () Bool)

(assert (=> (not b_lambda!239065) (not d!1970753)))

(declare-fun bs!1568565 () Bool)

(assert (= bs!1568565 d!1970753))

(assert (=> bs!1568565 m!7099536))

(declare-fun m!7100360 () Bool)

(assert (=> bs!1568565 m!7100360))

(declare-fun m!7100362 () Bool)

(assert (=> bs!1568565 m!7100362))

(assert (=> bs!1568565 m!7099532))

(assert (=> b!6278358 d!1970753))

(declare-fun b!6279228 () Bool)

(declare-fun e!3818708 () (InoxSet Context!11166))

(declare-fun e!3818709 () (InoxSet Context!11166))

(assert (=> b!6279228 (= e!3818708 e!3818709)))

(declare-fun c!1138568 () Bool)

(assert (=> b!6279228 (= c!1138568 ((_ is Cons!64772) (exprs!6083 lt!2353825)))))

(declare-fun b!6279229 () Bool)

(assert (=> b!6279229 (= e!3818709 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279230 () Bool)

(declare-fun e!3818707 () Bool)

(assert (=> b!6279230 (= e!3818707 (nullable!6192 (h!71220 (exprs!6083 lt!2353825))))))

(declare-fun d!1970755 () Bool)

(declare-fun c!1138569 () Bool)

(assert (=> d!1970755 (= c!1138569 e!3818707)))

(declare-fun res!2589785 () Bool)

(assert (=> d!1970755 (=> (not res!2589785) (not e!3818707))))

(assert (=> d!1970755 (= res!2589785 ((_ is Cons!64772) (exprs!6083 lt!2353825)))))

(assert (=> d!1970755 (= (derivationStepZipperUp!1373 lt!2353825 (h!71222 s!2326)) e!3818708)))

(declare-fun bm!531350 () Bool)

(declare-fun call!531355 () (InoxSet Context!11166))

(assert (=> bm!531350 (= call!531355 (derivationStepZipperDown!1447 (h!71220 (exprs!6083 lt!2353825)) (Context!11167 (t!378456 (exprs!6083 lt!2353825))) (h!71222 s!2326)))))

(declare-fun b!6279231 () Bool)

(assert (=> b!6279231 (= e!3818709 call!531355)))

(declare-fun b!6279232 () Bool)

(assert (=> b!6279232 (= e!3818708 ((_ map or) call!531355 (derivationStepZipperUp!1373 (Context!11167 (t!378456 (exprs!6083 lt!2353825))) (h!71222 s!2326))))))

(assert (= (and d!1970755 res!2589785) b!6279230))

(assert (= (and d!1970755 c!1138569) b!6279232))

(assert (= (and d!1970755 (not c!1138569)) b!6279228))

(assert (= (and b!6279228 c!1138568) b!6279231))

(assert (= (and b!6279228 (not c!1138568)) b!6279229))

(assert (= (or b!6279232 b!6279231) bm!531350))

(declare-fun m!7100364 () Bool)

(assert (=> b!6279230 m!7100364))

(declare-fun m!7100366 () Bool)

(assert (=> bm!531350 m!7100366))

(declare-fun m!7100368 () Bool)

(assert (=> b!6279232 m!7100368))

(assert (=> b!6278358 d!1970755))

(declare-fun d!1970757 () Bool)

(declare-fun choose!46614 ((InoxSet Context!11166) Int) (InoxSet Context!11166))

(assert (=> d!1970757 (= (flatMap!1704 lt!2353838 lambda!344218) (choose!46614 lt!2353838 lambda!344218))))

(declare-fun bs!1568566 () Bool)

(assert (= bs!1568566 d!1970757))

(declare-fun m!7100370 () Bool)

(assert (=> bs!1568566 m!7100370))

(assert (=> b!6278358 d!1970757))

(declare-fun b!6279233 () Bool)

(declare-fun e!3818711 () (InoxSet Context!11166))

(declare-fun e!3818712 () (InoxSet Context!11166))

(assert (=> b!6279233 (= e!3818711 e!3818712)))

(declare-fun c!1138570 () Bool)

(assert (=> b!6279233 (= c!1138570 ((_ is Cons!64772) (exprs!6083 lt!2353829)))))

(declare-fun b!6279234 () Bool)

(assert (=> b!6279234 (= e!3818712 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279235 () Bool)

(declare-fun e!3818710 () Bool)

(assert (=> b!6279235 (= e!3818710 (nullable!6192 (h!71220 (exprs!6083 lt!2353829))))))

(declare-fun d!1970759 () Bool)

(declare-fun c!1138571 () Bool)

(assert (=> d!1970759 (= c!1138571 e!3818710)))

(declare-fun res!2589786 () Bool)

(assert (=> d!1970759 (=> (not res!2589786) (not e!3818710))))

(assert (=> d!1970759 (= res!2589786 ((_ is Cons!64772) (exprs!6083 lt!2353829)))))

(assert (=> d!1970759 (= (derivationStepZipperUp!1373 lt!2353829 (h!71222 s!2326)) e!3818711)))

(declare-fun bm!531351 () Bool)

(declare-fun call!531356 () (InoxSet Context!11166))

(assert (=> bm!531351 (= call!531356 (derivationStepZipperDown!1447 (h!71220 (exprs!6083 lt!2353829)) (Context!11167 (t!378456 (exprs!6083 lt!2353829))) (h!71222 s!2326)))))

(declare-fun b!6279236 () Bool)

(assert (=> b!6279236 (= e!3818712 call!531356)))

(declare-fun b!6279237 () Bool)

(assert (=> b!6279237 (= e!3818711 ((_ map or) call!531356 (derivationStepZipperUp!1373 (Context!11167 (t!378456 (exprs!6083 lt!2353829))) (h!71222 s!2326))))))

(assert (= (and d!1970759 res!2589786) b!6279235))

(assert (= (and d!1970759 c!1138571) b!6279237))

(assert (= (and d!1970759 (not c!1138571)) b!6279233))

(assert (= (and b!6279233 c!1138570) b!6279236))

(assert (= (and b!6279233 (not c!1138570)) b!6279234))

(assert (= (or b!6279237 b!6279236) bm!531351))

(declare-fun m!7100372 () Bool)

(assert (=> b!6279235 m!7100372))

(declare-fun m!7100374 () Bool)

(assert (=> bm!531351 m!7100374))

(declare-fun m!7100376 () Bool)

(assert (=> b!6279237 m!7100376))

(assert (=> b!6278358 d!1970759))

(declare-fun d!1970761 () Bool)

(assert (=> d!1970761 (= (flatMap!1704 z!1189 lambda!344218) (dynLambda!25625 lambda!344218 (h!71221 zl!343)))))

(declare-fun lt!2353983 () Unit!158127)

(assert (=> d!1970761 (= lt!2353983 (choose!46613 z!1189 (h!71221 zl!343) lambda!344218))))

(assert (=> d!1970761 (= z!1189 (store ((as const (Array Context!11166 Bool)) false) (h!71221 zl!343) true))))

(assert (=> d!1970761 (= (lemmaFlatMapOnSingletonSet!1230 z!1189 (h!71221 zl!343) lambda!344218) lt!2353983)))

(declare-fun b_lambda!239067 () Bool)

(assert (=> (not b_lambda!239067) (not d!1970761)))

(declare-fun bs!1568567 () Bool)

(assert (= bs!1568567 d!1970761))

(assert (=> bs!1568567 m!7099652))

(declare-fun m!7100378 () Bool)

(assert (=> bs!1568567 m!7100378))

(declare-fun m!7100380 () Bool)

(assert (=> bs!1568567 m!7100380))

(declare-fun m!7100382 () Bool)

(assert (=> bs!1568567 m!7100382))

(assert (=> b!6278357 d!1970761))

(declare-fun b!6279238 () Bool)

(declare-fun e!3818714 () (InoxSet Context!11166))

(declare-fun e!3818715 () (InoxSet Context!11166))

(assert (=> b!6279238 (= e!3818714 e!3818715)))

(declare-fun c!1138572 () Bool)

(assert (=> b!6279238 (= c!1138572 ((_ is Cons!64772) (exprs!6083 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343))))))))))

(declare-fun b!6279239 () Bool)

(assert (=> b!6279239 (= e!3818715 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279240 () Bool)

(declare-fun e!3818713 () Bool)

(assert (=> b!6279240 (= e!3818713 (nullable!6192 (h!71220 (exprs!6083 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343)))))))))))

(declare-fun d!1970763 () Bool)

(declare-fun c!1138573 () Bool)

(assert (=> d!1970763 (= c!1138573 e!3818713)))

(declare-fun res!2589787 () Bool)

(assert (=> d!1970763 (=> (not res!2589787) (not e!3818713))))

(assert (=> d!1970763 (= res!2589787 ((_ is Cons!64772) (exprs!6083 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343))))))))))

(assert (=> d!1970763 (= (derivationStepZipperUp!1373 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343))))) (h!71222 s!2326)) e!3818714)))

(declare-fun bm!531352 () Bool)

(declare-fun call!531357 () (InoxSet Context!11166))

(assert (=> bm!531352 (= call!531357 (derivationStepZipperDown!1447 (h!71220 (exprs!6083 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343))))))) (Context!11167 (t!378456 (exprs!6083 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343)))))))) (h!71222 s!2326)))))

(declare-fun b!6279241 () Bool)

(assert (=> b!6279241 (= e!3818715 call!531357)))

(declare-fun b!6279242 () Bool)

(assert (=> b!6279242 (= e!3818714 ((_ map or) call!531357 (derivationStepZipperUp!1373 (Context!11167 (t!378456 (exprs!6083 (Context!11167 (Cons!64772 (h!71220 (exprs!6083 (h!71221 zl!343))) (t!378456 (exprs!6083 (h!71221 zl!343)))))))) (h!71222 s!2326))))))

(assert (= (and d!1970763 res!2589787) b!6279240))

(assert (= (and d!1970763 c!1138573) b!6279242))

(assert (= (and d!1970763 (not c!1138573)) b!6279238))

(assert (= (and b!6279238 c!1138572) b!6279241))

(assert (= (and b!6279238 (not c!1138572)) b!6279239))

(assert (= (or b!6279242 b!6279241) bm!531352))

(declare-fun m!7100384 () Bool)

(assert (=> b!6279240 m!7100384))

(declare-fun m!7100386 () Bool)

(assert (=> bm!531352 m!7100386))

(declare-fun m!7100388 () Bool)

(assert (=> b!6279242 m!7100388))

(assert (=> b!6278357 d!1970763))

(declare-fun b!6279243 () Bool)

(declare-fun e!3818717 () (InoxSet Context!11166))

(declare-fun e!3818718 () (InoxSet Context!11166))

(assert (=> b!6279243 (= e!3818717 e!3818718)))

(declare-fun c!1138574 () Bool)

(assert (=> b!6279243 (= c!1138574 ((_ is Cons!64772) (exprs!6083 lt!2353841)))))

(declare-fun b!6279244 () Bool)

(assert (=> b!6279244 (= e!3818718 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279245 () Bool)

(declare-fun e!3818716 () Bool)

(assert (=> b!6279245 (= e!3818716 (nullable!6192 (h!71220 (exprs!6083 lt!2353841))))))

(declare-fun d!1970765 () Bool)

(declare-fun c!1138575 () Bool)

(assert (=> d!1970765 (= c!1138575 e!3818716)))

(declare-fun res!2589788 () Bool)

(assert (=> d!1970765 (=> (not res!2589788) (not e!3818716))))

(assert (=> d!1970765 (= res!2589788 ((_ is Cons!64772) (exprs!6083 lt!2353841)))))

(assert (=> d!1970765 (= (derivationStepZipperUp!1373 lt!2353841 (h!71222 s!2326)) e!3818717)))

(declare-fun bm!531353 () Bool)

(declare-fun call!531358 () (InoxSet Context!11166))

(assert (=> bm!531353 (= call!531358 (derivationStepZipperDown!1447 (h!71220 (exprs!6083 lt!2353841)) (Context!11167 (t!378456 (exprs!6083 lt!2353841))) (h!71222 s!2326)))))

(declare-fun b!6279246 () Bool)

(assert (=> b!6279246 (= e!3818718 call!531358)))

(declare-fun b!6279247 () Bool)

(assert (=> b!6279247 (= e!3818717 ((_ map or) call!531358 (derivationStepZipperUp!1373 (Context!11167 (t!378456 (exprs!6083 lt!2353841))) (h!71222 s!2326))))))

(assert (= (and d!1970765 res!2589788) b!6279245))

(assert (= (and d!1970765 c!1138575) b!6279247))

(assert (= (and d!1970765 (not c!1138575)) b!6279243))

(assert (= (and b!6279243 c!1138574) b!6279246))

(assert (= (and b!6279243 (not c!1138574)) b!6279244))

(assert (= (or b!6279247 b!6279246) bm!531353))

(declare-fun m!7100390 () Bool)

(assert (=> b!6279245 m!7100390))

(declare-fun m!7100392 () Bool)

(assert (=> bm!531353 m!7100392))

(declare-fun m!7100394 () Bool)

(assert (=> b!6279247 m!7100394))

(assert (=> b!6278357 d!1970765))

(declare-fun b!6279248 () Bool)

(declare-fun e!3818720 () (InoxSet Context!11166))

(declare-fun e!3818721 () (InoxSet Context!11166))

(assert (=> b!6279248 (= e!3818720 e!3818721)))

(declare-fun c!1138576 () Bool)

(assert (=> b!6279248 (= c!1138576 ((_ is Cons!64772) (exprs!6083 (h!71221 zl!343))))))

(declare-fun b!6279249 () Bool)

(assert (=> b!6279249 (= e!3818721 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279250 () Bool)

(declare-fun e!3818719 () Bool)

(assert (=> b!6279250 (= e!3818719 (nullable!6192 (h!71220 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun d!1970767 () Bool)

(declare-fun c!1138577 () Bool)

(assert (=> d!1970767 (= c!1138577 e!3818719)))

(declare-fun res!2589789 () Bool)

(assert (=> d!1970767 (=> (not res!2589789) (not e!3818719))))

(assert (=> d!1970767 (= res!2589789 ((_ is Cons!64772) (exprs!6083 (h!71221 zl!343))))))

(assert (=> d!1970767 (= (derivationStepZipperUp!1373 (h!71221 zl!343) (h!71222 s!2326)) e!3818720)))

(declare-fun bm!531354 () Bool)

(declare-fun call!531359 () (InoxSet Context!11166))

(assert (=> bm!531354 (= call!531359 (derivationStepZipperDown!1447 (h!71220 (exprs!6083 (h!71221 zl!343))) (Context!11167 (t!378456 (exprs!6083 (h!71221 zl!343)))) (h!71222 s!2326)))))

(declare-fun b!6279251 () Bool)

(assert (=> b!6279251 (= e!3818721 call!531359)))

(declare-fun b!6279252 () Bool)

(assert (=> b!6279252 (= e!3818720 ((_ map or) call!531359 (derivationStepZipperUp!1373 (Context!11167 (t!378456 (exprs!6083 (h!71221 zl!343)))) (h!71222 s!2326))))))

(assert (= (and d!1970767 res!2589789) b!6279250))

(assert (= (and d!1970767 c!1138577) b!6279252))

(assert (= (and d!1970767 (not c!1138577)) b!6279248))

(assert (= (and b!6279248 c!1138576) b!6279251))

(assert (= (and b!6279248 (not c!1138576)) b!6279249))

(assert (= (or b!6279252 b!6279251) bm!531354))

(assert (=> b!6279250 m!7099648))

(declare-fun m!7100396 () Bool)

(assert (=> bm!531354 m!7100396))

(declare-fun m!7100398 () Bool)

(assert (=> b!6279252 m!7100398))

(assert (=> b!6278357 d!1970767))

(declare-fun d!1970769 () Bool)

(assert (=> d!1970769 (= (flatMap!1704 z!1189 lambda!344218) (choose!46614 z!1189 lambda!344218))))

(declare-fun bs!1568568 () Bool)

(assert (= bs!1568568 d!1970769))

(declare-fun m!7100400 () Bool)

(assert (=> bs!1568568 m!7100400))

(assert (=> b!6278357 d!1970769))

(declare-fun d!1970771 () Bool)

(assert (=> d!1970771 (= (nullable!6192 (h!71220 (exprs!6083 (h!71221 zl!343)))) (nullableFct!2143 (h!71220 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun bs!1568569 () Bool)

(assert (= bs!1568569 d!1970771))

(declare-fun m!7100402 () Bool)

(assert (=> bs!1568569 m!7100402))

(assert (=> b!6278357 d!1970771))

(declare-fun b!6279275 () Bool)

(declare-fun e!3818737 () (InoxSet Context!11166))

(assert (=> b!6279275 (= e!3818737 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279276 () Bool)

(declare-fun e!3818735 () (InoxSet Context!11166))

(declare-fun call!531377 () (InoxSet Context!11166))

(declare-fun call!531374 () (InoxSet Context!11166))

(assert (=> b!6279276 (= e!3818735 ((_ map or) call!531377 call!531374))))

(declare-fun bm!531368 () Bool)

(declare-fun call!531372 () List!64896)

(declare-fun call!531373 () List!64896)

(assert (=> bm!531368 (= call!531372 call!531373)))

(declare-fun b!6279277 () Bool)

(declare-fun e!3818734 () Bool)

(assert (=> b!6279277 (= e!3818734 (nullable!6192 (regOne!32910 (h!71220 (exprs!6083 (h!71221 zl!343))))))))

(declare-fun b!6279278 () Bool)

(declare-fun c!1138588 () Bool)

(assert (=> b!6279278 (= c!1138588 ((_ is Star!16199) (h!71220 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun e!3818739 () (InoxSet Context!11166))

(assert (=> b!6279278 (= e!3818739 e!3818737)))

(declare-fun b!6279279 () Bool)

(declare-fun e!3818736 () (InoxSet Context!11166))

(assert (=> b!6279279 (= e!3818736 (store ((as const (Array Context!11166 Bool)) false) lt!2353841 true))))

(declare-fun c!1138589 () Bool)

(declare-fun bm!531369 () Bool)

(assert (=> bm!531369 (= call!531377 (derivationStepZipperDown!1447 (ite c!1138589 (regTwo!32911 (h!71220 (exprs!6083 (h!71221 zl!343)))) (regOne!32910 (h!71220 (exprs!6083 (h!71221 zl!343))))) (ite c!1138589 lt!2353841 (Context!11167 call!531373)) (h!71222 s!2326)))))

(declare-fun b!6279280 () Bool)

(declare-fun call!531375 () (InoxSet Context!11166))

(assert (=> b!6279280 (= e!3818737 call!531375)))

(declare-fun b!6279281 () Bool)

(declare-fun e!3818738 () (InoxSet Context!11166))

(declare-fun call!531376 () (InoxSet Context!11166))

(assert (=> b!6279281 (= e!3818738 ((_ map or) call!531376 call!531377))))

(declare-fun c!1138590 () Bool)

(declare-fun bm!531370 () Bool)

(declare-fun c!1138592 () Bool)

(declare-fun $colon$colon!2064 (List!64896 Regex!16199) List!64896)

(assert (=> bm!531370 (= call!531373 ($colon$colon!2064 (exprs!6083 lt!2353841) (ite (or c!1138590 c!1138592) (regTwo!32910 (h!71220 (exprs!6083 (h!71221 zl!343)))) (h!71220 (exprs!6083 (h!71221 zl!343))))))))

(declare-fun b!6279282 () Bool)

(assert (=> b!6279282 (= e!3818739 call!531375)))

(declare-fun b!6279283 () Bool)

(assert (=> b!6279283 (= c!1138590 e!3818734)))

(declare-fun res!2589792 () Bool)

(assert (=> b!6279283 (=> (not res!2589792) (not e!3818734))))

(assert (=> b!6279283 (= res!2589792 ((_ is Concat!25044) (h!71220 (exprs!6083 (h!71221 zl!343)))))))

(assert (=> b!6279283 (= e!3818738 e!3818735)))

(declare-fun bm!531367 () Bool)

(assert (=> bm!531367 (= call!531374 call!531376)))

(declare-fun d!1970773 () Bool)

(declare-fun c!1138591 () Bool)

(assert (=> d!1970773 (= c!1138591 (and ((_ is ElementMatch!16199) (h!71220 (exprs!6083 (h!71221 zl!343)))) (= (c!1138310 (h!71220 (exprs!6083 (h!71221 zl!343)))) (h!71222 s!2326))))))

(assert (=> d!1970773 (= (derivationStepZipperDown!1447 (h!71220 (exprs!6083 (h!71221 zl!343))) lt!2353841 (h!71222 s!2326)) e!3818736)))

(declare-fun bm!531371 () Bool)

(assert (=> bm!531371 (= call!531375 call!531374)))

(declare-fun b!6279284 () Bool)

(assert (=> b!6279284 (= e!3818736 e!3818738)))

(assert (=> b!6279284 (= c!1138589 ((_ is Union!16199) (h!71220 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun b!6279285 () Bool)

(assert (=> b!6279285 (= e!3818735 e!3818739)))

(assert (=> b!6279285 (= c!1138592 ((_ is Concat!25044) (h!71220 (exprs!6083 (h!71221 zl!343)))))))

(declare-fun bm!531372 () Bool)

(assert (=> bm!531372 (= call!531376 (derivationStepZipperDown!1447 (ite c!1138589 (regOne!32911 (h!71220 (exprs!6083 (h!71221 zl!343)))) (ite c!1138590 (regTwo!32910 (h!71220 (exprs!6083 (h!71221 zl!343)))) (ite c!1138592 (regOne!32910 (h!71220 (exprs!6083 (h!71221 zl!343)))) (reg!16528 (h!71220 (exprs!6083 (h!71221 zl!343))))))) (ite (or c!1138589 c!1138590) lt!2353841 (Context!11167 call!531372)) (h!71222 s!2326)))))

(assert (= (and d!1970773 c!1138591) b!6279279))

(assert (= (and d!1970773 (not c!1138591)) b!6279284))

(assert (= (and b!6279284 c!1138589) b!6279281))

(assert (= (and b!6279284 (not c!1138589)) b!6279283))

(assert (= (and b!6279283 res!2589792) b!6279277))

(assert (= (and b!6279283 c!1138590) b!6279276))

(assert (= (and b!6279283 (not c!1138590)) b!6279285))

(assert (= (and b!6279285 c!1138592) b!6279282))

(assert (= (and b!6279285 (not c!1138592)) b!6279278))

(assert (= (and b!6279278 c!1138588) b!6279280))

(assert (= (and b!6279278 (not c!1138588)) b!6279275))

(assert (= (or b!6279282 b!6279280) bm!531368))

(assert (= (or b!6279282 b!6279280) bm!531371))

(assert (= (or b!6279276 bm!531368) bm!531370))

(assert (= (or b!6279276 bm!531371) bm!531367))

(assert (= (or b!6279281 b!6279276) bm!531369))

(assert (= (or b!6279281 bm!531367) bm!531372))

(declare-fun m!7100404 () Bool)

(assert (=> b!6279277 m!7100404))

(declare-fun m!7100406 () Bool)

(assert (=> bm!531370 m!7100406))

(declare-fun m!7100408 () Bool)

(assert (=> bm!531369 m!7100408))

(declare-fun m!7100410 () Bool)

(assert (=> b!6279279 m!7100410))

(declare-fun m!7100412 () Bool)

(assert (=> bm!531372 m!7100412))

(assert (=> b!6278357 d!1970773))

(declare-fun b!6279286 () Bool)

(declare-fun e!3818743 () (InoxSet Context!11166))

(assert (=> b!6279286 (= e!3818743 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279287 () Bool)

(declare-fun e!3818741 () (InoxSet Context!11166))

(declare-fun call!531383 () (InoxSet Context!11166))

(declare-fun call!531380 () (InoxSet Context!11166))

(assert (=> b!6279287 (= e!3818741 ((_ map or) call!531383 call!531380))))

(declare-fun bm!531374 () Bool)

(declare-fun call!531378 () List!64896)

(declare-fun call!531379 () List!64896)

(assert (=> bm!531374 (= call!531378 call!531379)))

(declare-fun b!6279288 () Bool)

(declare-fun e!3818740 () Bool)

(assert (=> b!6279288 (= e!3818740 (nullable!6192 (regOne!32910 (regTwo!32910 (regOne!32910 r!7292)))))))

(declare-fun b!6279289 () Bool)

(declare-fun c!1138593 () Bool)

(assert (=> b!6279289 (= c!1138593 ((_ is Star!16199) (regTwo!32910 (regOne!32910 r!7292))))))

(declare-fun e!3818745 () (InoxSet Context!11166))

(assert (=> b!6279289 (= e!3818745 e!3818743)))

(declare-fun b!6279290 () Bool)

(declare-fun e!3818742 () (InoxSet Context!11166))

(assert (=> b!6279290 (= e!3818742 (store ((as const (Array Context!11166 Bool)) false) lt!2353841 true))))

(declare-fun c!1138594 () Bool)

(declare-fun bm!531375 () Bool)

(assert (=> bm!531375 (= call!531383 (derivationStepZipperDown!1447 (ite c!1138594 (regTwo!32911 (regTwo!32910 (regOne!32910 r!7292))) (regOne!32910 (regTwo!32910 (regOne!32910 r!7292)))) (ite c!1138594 lt!2353841 (Context!11167 call!531379)) (h!71222 s!2326)))))

(declare-fun b!6279291 () Bool)

(declare-fun call!531381 () (InoxSet Context!11166))

(assert (=> b!6279291 (= e!3818743 call!531381)))

(declare-fun b!6279292 () Bool)

(declare-fun e!3818744 () (InoxSet Context!11166))

(declare-fun call!531382 () (InoxSet Context!11166))

(assert (=> b!6279292 (= e!3818744 ((_ map or) call!531382 call!531383))))

(declare-fun bm!531376 () Bool)

(declare-fun c!1138595 () Bool)

(declare-fun c!1138597 () Bool)

(assert (=> bm!531376 (= call!531379 ($colon$colon!2064 (exprs!6083 lt!2353841) (ite (or c!1138595 c!1138597) (regTwo!32910 (regTwo!32910 (regOne!32910 r!7292))) (regTwo!32910 (regOne!32910 r!7292)))))))

(declare-fun b!6279293 () Bool)

(assert (=> b!6279293 (= e!3818745 call!531381)))

(declare-fun b!6279294 () Bool)

(assert (=> b!6279294 (= c!1138595 e!3818740)))

(declare-fun res!2589793 () Bool)

(assert (=> b!6279294 (=> (not res!2589793) (not e!3818740))))

(assert (=> b!6279294 (= res!2589793 ((_ is Concat!25044) (regTwo!32910 (regOne!32910 r!7292))))))

(assert (=> b!6279294 (= e!3818744 e!3818741)))

(declare-fun bm!531373 () Bool)

(assert (=> bm!531373 (= call!531380 call!531382)))

(declare-fun d!1970775 () Bool)

(declare-fun c!1138596 () Bool)

(assert (=> d!1970775 (= c!1138596 (and ((_ is ElementMatch!16199) (regTwo!32910 (regOne!32910 r!7292))) (= (c!1138310 (regTwo!32910 (regOne!32910 r!7292))) (h!71222 s!2326))))))

(assert (=> d!1970775 (= (derivationStepZipperDown!1447 (regTwo!32910 (regOne!32910 r!7292)) lt!2353841 (h!71222 s!2326)) e!3818742)))

(declare-fun bm!531377 () Bool)

(assert (=> bm!531377 (= call!531381 call!531380)))

(declare-fun b!6279295 () Bool)

(assert (=> b!6279295 (= e!3818742 e!3818744)))

(assert (=> b!6279295 (= c!1138594 ((_ is Union!16199) (regTwo!32910 (regOne!32910 r!7292))))))

(declare-fun b!6279296 () Bool)

(assert (=> b!6279296 (= e!3818741 e!3818745)))

(assert (=> b!6279296 (= c!1138597 ((_ is Concat!25044) (regTwo!32910 (regOne!32910 r!7292))))))

(declare-fun bm!531378 () Bool)

(assert (=> bm!531378 (= call!531382 (derivationStepZipperDown!1447 (ite c!1138594 (regOne!32911 (regTwo!32910 (regOne!32910 r!7292))) (ite c!1138595 (regTwo!32910 (regTwo!32910 (regOne!32910 r!7292))) (ite c!1138597 (regOne!32910 (regTwo!32910 (regOne!32910 r!7292))) (reg!16528 (regTwo!32910 (regOne!32910 r!7292)))))) (ite (or c!1138594 c!1138595) lt!2353841 (Context!11167 call!531378)) (h!71222 s!2326)))))

(assert (= (and d!1970775 c!1138596) b!6279290))

(assert (= (and d!1970775 (not c!1138596)) b!6279295))

(assert (= (and b!6279295 c!1138594) b!6279292))

(assert (= (and b!6279295 (not c!1138594)) b!6279294))

(assert (= (and b!6279294 res!2589793) b!6279288))

(assert (= (and b!6279294 c!1138595) b!6279287))

(assert (= (and b!6279294 (not c!1138595)) b!6279296))

(assert (= (and b!6279296 c!1138597) b!6279293))

(assert (= (and b!6279296 (not c!1138597)) b!6279289))

(assert (= (and b!6279289 c!1138593) b!6279291))

(assert (= (and b!6279289 (not c!1138593)) b!6279286))

(assert (= (or b!6279293 b!6279291) bm!531374))

(assert (= (or b!6279293 b!6279291) bm!531377))

(assert (= (or b!6279287 bm!531374) bm!531376))

(assert (= (or b!6279287 bm!531377) bm!531373))

(assert (= (or b!6279292 b!6279287) bm!531375))

(assert (= (or b!6279292 bm!531373) bm!531378))

(declare-fun m!7100414 () Bool)

(assert (=> b!6279288 m!7100414))

(declare-fun m!7100416 () Bool)

(assert (=> bm!531376 m!7100416))

(declare-fun m!7100418 () Bool)

(assert (=> bm!531375 m!7100418))

(assert (=> b!6279290 m!7100410))

(declare-fun m!7100420 () Bool)

(assert (=> bm!531378 m!7100420))

(assert (=> b!6278377 d!1970775))

(declare-fun b!6279297 () Bool)

(declare-fun e!3818749 () (InoxSet Context!11166))

(assert (=> b!6279297 (= e!3818749 ((as const (Array Context!11166 Bool)) false))))

(declare-fun b!6279298 () Bool)

(declare-fun e!3818747 () (InoxSet Context!11166))

(declare-fun call!531389 () (InoxSet Context!11166))

(declare-fun call!531386 () (InoxSet Context!11166))

(assert (=> b!6279298 (= e!3818747 ((_ map or) call!531389 call!531386))))

(declare-fun bm!531380 () Bool)

(declare-fun call!531384 () List!64896)

(declare-fun call!531385 () List!64896)

(assert (=> bm!531380 (= call!531384 call!531385)))

(declare-fun b!6279299 () Bool)

(declare-fun e!3818746 () Bool)

(assert (=> b!6279299 (= e!3818746 (nullable!6192 (regOne!32910 (regOne!32910 (regOne!32910 r!7292)))))))

(declare-fun b!6279300 () Bool)

(declare-fun c!1138598 () Bool)

(assert (=> b!6279300 (= c!1138598 ((_ is Star!16199) (regOne!32910 (regOne!32910 r!7292))))))

(declare-fun e!3818751 () (InoxSet Context!11166))

(assert (=> b!6279300 (= e!3818751 e!3818749)))

(declare-fun b!6279301 () Bool)

(declare-fun e!3818748 () (InoxSet Context!11166))

(assert (=> b!6279301 (= e!3818748 (store ((as const (Array Context!11166 Bool)) false) lt!2353825 true))))

(declare-fun bm!531381 () Bool)

(declare-fun c!1138599 () Bool)

(assert (=> bm!531381 (= call!531389 (derivationStepZipperDown!1447 (ite c!1138599 (regTwo!32911 (regOne!32910 (regOne!32910 r!7292))) (regOne!32910 (regOne!32910 (regOne!32910 r!7292)))) (ite c!1138599 lt!2353825 (Context!11167 call!531385)) (h!71222 s!2326)))))

(declare-fun b!6279302 () Bool)

(declare-fun call!531387 () (InoxSet Context!11166))

(assert (=> b!6279302 (= e!3818749 call!531387)))

(declare-fun b!6279303 () Bool)

(declare-fun e!3818750 () (InoxSet Context!11166))

(declare-fun call!531388 () (InoxSet Context!11166))

(assert (=> b!6279303 (= e!3818750 ((_ map or) call!531388 call!531389))))

(declare-fun c!1138600 () Bool)

(declare-fun c!1138602 () Bool)

(declare-fun bm!531382 () Bool)

(assert (=> bm!531382 (= call!531385 ($colon$colon!2064 (exprs!6083 lt!2353825) (ite (or c!1138600 c!1138602) (regTwo!32910 (regOne!32910 (regOne!32910 r!7292))) (regOne!32910 (regOne!32910 r!7292)))))))

(declare-fun b!6279304 () Bool)

(assert (=> b!6279304 (= e!3818751 call!531387)))

(declare-fun b!6279305 () Bool)

(assert (=> b!6279305 (= c!1138600 e!3818746)))

(declare-fun res!2589794 () Bool)

(assert (=> b!6279305 (=> (not res!2589794) (not e!3818746))))

(assert (=> b!6279305 (= res!2589794 ((_ is Concat!25044) (regOne!32910 (regOne!32910 r!7292))))))

(assert (=> b!6279305 (= e!3818750 e!3818747)))

(declare-fun bm!531379 () Bool)

(assert (=> bm!531379 (= call!531386 call!531388)))

(declare-fun d!1970777 () Bool)

(declare-fun c!1138601 () Bool)

(assert (=> d!1970777 (= c!1138601 (and ((_ is ElementMatch!16199) (regOne!32910 (regOne!32910 r!7292))) (= (c!1138310 (regOne!32910 (regOne!32910 r!7292))) (h!71222 s!2326))))))

(assert (=> d!1970777 (= (derivationStepZipperDown!1447 (regOne!32910 (regOne!32910 r!7292)) lt!2353825 (h!71222 s!2326)) e!3818748)))

(declare-fun bm!531383 () Bool)

(assert (=> bm!531383 (= call!531387 call!531386)))

(declare-fun b!6279306 () Bool)

(assert (=> b!6279306 (= e!3818748 e!3818750)))

(assert (=> b!6279306 (= c!1138599 ((_ is Union!16199) (regOne!32910 (regOne!32910 r!7292))))))

(declare-fun b!6279307 () Bool)

(assert (=> b!6279307 (= e!3818747 e!3818751)))

(assert (=> b!6279307 (= c!1138602 ((_ is Concat!25044) (regOne!32910 (regOne!32910 r!7292))))))

(declare-fun bm!531384 () Bool)

(assert (=> bm!531384 (= call!531388 (derivationStepZipperDown!1447 (ite c!1138599 (regOne!32911 (regOne!32910 (regOne!32910 r!7292))) (ite c!1138600 (regTwo!32910 (regOne!32910 (regOne!32910 r!7292))) (ite c!1138602 (regOne!32910 (regOne!32910 (regOne!32910 r!7292))) (reg!16528 (regOne!32910 (regOne!32910 r!7292)))))) (ite (or c!1138599 c!1138600) lt!2353825 (Context!11167 call!531384)) (h!71222 s!2326)))))

(assert (= (and d!1970777 c!1138601) b!6279301))

(assert (= (and d!1970777 (not c!1138601)) b!6279306))

(assert (= (and b!6279306 c!1138599) b!6279303))

(assert (= (and b!6279306 (not c!1138599)) b!6279305))

(assert (= (and b!6279305 res!2589794) b!6279299))

(assert (= (and b!6279305 c!1138600) b!6279298))

(assert (= (and b!6279305 (not c!1138600)) b!6279307))

(assert (= (and b!6279307 c!1138602) b!6279304))

(assert (= (and b!6279307 (not c!1138602)) b!6279300))

(assert (= (and b!6279300 c!1138598) b!6279302))

(assert (= (and b!6279300 (not c!1138598)) b!6279297))

(assert (= (or b!6279304 b!6279302) bm!531380))

(assert (= (or b!6279304 b!6279302) bm!531383))

(assert (= (or b!6279298 bm!531380) bm!531382))

(assert (= (or b!6279298 bm!531383) bm!531379))

(assert (= (or b!6279303 b!6279298) bm!531381))

(assert (= (or b!6279303 bm!531379) bm!531384))

(declare-fun m!7100422 () Bool)

(assert (=> b!6279299 m!7100422))

(declare-fun m!7100424 () Bool)

(assert (=> bm!531382 m!7100424))

(declare-fun m!7100426 () Bool)

(assert (=> bm!531381 m!7100426))

(assert (=> b!6279301 m!7099540))

(declare-fun m!7100428 () Bool)

(assert (=> bm!531384 m!7100428))

(assert (=> b!6278377 d!1970777))

(declare-fun d!1970779 () Bool)

(declare-fun e!3818752 () Bool)

(assert (=> d!1970779 (= (matchZipper!2211 ((_ map or) lt!2353812 lt!2353823) (t!378458 s!2326)) e!3818752)))

(declare-fun res!2589795 () Bool)

(assert (=> d!1970779 (=> res!2589795 e!3818752)))

(assert (=> d!1970779 (= res!2589795 (matchZipper!2211 lt!2353812 (t!378458 s!2326)))))

(declare-fun lt!2353984 () Unit!158127)

(assert (=> d!1970779 (= lt!2353984 (choose!46611 lt!2353812 lt!2353823 (t!378458 s!2326)))))

(assert (=> d!1970779 (= (lemmaZipperConcatMatchesSameAsBothZippers!1030 lt!2353812 lt!2353823 (t!378458 s!2326)) lt!2353984)))

(declare-fun b!6279308 () Bool)

(assert (=> b!6279308 (= e!3818752 (matchZipper!2211 lt!2353823 (t!378458 s!2326)))))

(assert (= (and d!1970779 (not res!2589795)) b!6279308))

(declare-fun m!7100430 () Bool)

(assert (=> d!1970779 m!7100430))

(assert (=> d!1970779 m!7099622))

(declare-fun m!7100432 () Bool)

(assert (=> d!1970779 m!7100432))

(assert (=> b!6279308 m!7099618))

(assert (=> b!6278381 d!1970779))

(declare-fun d!1970781 () Bool)

(assert (=> d!1970781 (= (flatMap!1704 lt!2353834 lambda!344218) (dynLambda!25625 lambda!344218 lt!2353825))))

(declare-fun lt!2353985 () Unit!158127)

(assert (=> d!1970781 (= lt!2353985 (choose!46613 lt!2353834 lt!2353825 lambda!344218))))

(assert (=> d!1970781 (= lt!2353834 (store ((as const (Array Context!11166 Bool)) false) lt!2353825 true))))

(assert (=> d!1970781 (= (lemmaFlatMapOnSingletonSet!1230 lt!2353834 lt!2353825 lambda!344218) lt!2353985)))

(declare-fun b_lambda!239069 () Bool)

(assert (=> (not b_lambda!239069) (not d!1970781)))

(declare-fun bs!1568570 () Bool)

(assert (= bs!1568570 d!1970781))

(assert (=> bs!1568570 m!7099608))

(declare-fun m!7100434 () Bool)

(assert (=> bs!1568570 m!7100434))

(declare-fun m!7100436 () Bool)

(assert (=> bs!1568570 m!7100436))

(assert (=> bs!1568570 m!7099540))

(assert (=> b!6278381 d!1970781))

(declare-fun d!1970783 () Bool)

(declare-fun c!1138603 () Bool)

(assert (=> d!1970783 (= c!1138603 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818753 () Bool)

(assert (=> d!1970783 (= (matchZipper!2211 lt!2353818 (t!378458 s!2326)) e!3818753)))

(declare-fun b!6279309 () Bool)

(assert (=> b!6279309 (= e!3818753 (nullableZipper!1969 lt!2353818))))

(declare-fun b!6279310 () Bool)

(assert (=> b!6279310 (= e!3818753 (matchZipper!2211 (derivationStepZipper!2165 lt!2353818 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970783 c!1138603) b!6279309))

(assert (= (and d!1970783 (not c!1138603)) b!6279310))

(assert (=> d!1970783 m!7100322))

(declare-fun m!7100438 () Bool)

(assert (=> b!6279309 m!7100438))

(assert (=> b!6279310 m!7100326))

(assert (=> b!6279310 m!7100326))

(declare-fun m!7100440 () Bool)

(assert (=> b!6279310 m!7100440))

(assert (=> b!6279310 m!7100330))

(assert (=> b!6279310 m!7100440))

(assert (=> b!6279310 m!7100330))

(declare-fun m!7100442 () Bool)

(assert (=> b!6279310 m!7100442))

(assert (=> b!6278381 d!1970783))

(declare-fun d!1970785 () Bool)

(assert (=> d!1970785 (= (flatMap!1704 lt!2353834 lambda!344218) (choose!46614 lt!2353834 lambda!344218))))

(declare-fun bs!1568571 () Bool)

(assert (= bs!1568571 d!1970785))

(declare-fun m!7100444 () Bool)

(assert (=> bs!1568571 m!7100444))

(assert (=> b!6278381 d!1970785))

(assert (=> b!6278381 d!1970755))

(declare-fun d!1970787 () Bool)

(declare-fun c!1138604 () Bool)

(assert (=> d!1970787 (= c!1138604 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818754 () Bool)

(assert (=> d!1970787 (= (matchZipper!2211 lt!2353809 (t!378458 s!2326)) e!3818754)))

(declare-fun b!6279311 () Bool)

(assert (=> b!6279311 (= e!3818754 (nullableZipper!1969 lt!2353809))))

(declare-fun b!6279312 () Bool)

(assert (=> b!6279312 (= e!3818754 (matchZipper!2211 (derivationStepZipper!2165 lt!2353809 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970787 c!1138604) b!6279311))

(assert (= (and d!1970787 (not c!1138604)) b!6279312))

(assert (=> d!1970787 m!7100322))

(declare-fun m!7100446 () Bool)

(assert (=> b!6279311 m!7100446))

(assert (=> b!6279312 m!7100326))

(assert (=> b!6279312 m!7100326))

(declare-fun m!7100448 () Bool)

(assert (=> b!6279312 m!7100448))

(assert (=> b!6279312 m!7100330))

(assert (=> b!6279312 m!7100448))

(assert (=> b!6279312 m!7100330))

(declare-fun m!7100450 () Bool)

(assert (=> b!6279312 m!7100450))

(assert (=> b!6278381 d!1970787))

(declare-fun bs!1568572 () Bool)

(declare-fun b!6279314 () Bool)

(assert (= bs!1568572 (and b!6279314 d!1970605)))

(declare-fun lambda!344302 () Int)

(assert (=> bs!1568572 (not (= lambda!344302 lambda!344265))))

(declare-fun bs!1568573 () Bool)

(assert (= bs!1568573 (and b!6279314 b!6279077)))

(assert (=> bs!1568573 (= (and (= (reg!16528 r!7292) (reg!16528 lt!2353824)) (= r!7292 lt!2353824)) (= lambda!344302 lambda!344283))))

(declare-fun bs!1568574 () Bool)

(assert (= bs!1568574 (and b!6279314 d!1970637)))

(assert (=> bs!1568574 (not (= lambda!344302 lambda!344276))))

(declare-fun bs!1568575 () Bool)

(assert (= bs!1568575 (and b!6279314 b!6278370)))

(assert (=> bs!1568575 (not (= lambda!344302 lambda!344219))))

(assert (=> bs!1568574 (not (= lambda!344302 lambda!344277))))

(declare-fun bs!1568576 () Bool)

(assert (= bs!1568576 (and b!6279314 b!6278367)))

(assert (=> bs!1568576 (not (= lambda!344302 lambda!344216))))

(assert (=> bs!1568576 (not (= lambda!344302 lambda!344217))))

(declare-fun bs!1568577 () Bool)

(assert (= bs!1568577 (and b!6279314 d!1970703)))

(assert (=> bs!1568577 (not (= lambda!344302 lambda!344278))))

(declare-fun bs!1568578 () Bool)

(assert (= bs!1568578 (and b!6279314 b!6279081)))

(assert (=> bs!1568578 (not (= lambda!344302 lambda!344284))))

(assert (=> b!6279314 true))

(assert (=> b!6279314 true))

(declare-fun bs!1568579 () Bool)

(declare-fun b!6279318 () Bool)

(assert (= bs!1568579 (and b!6279318 d!1970605)))

(declare-fun lambda!344303 () Int)

(assert (=> bs!1568579 (not (= lambda!344303 lambda!344265))))

(declare-fun bs!1568580 () Bool)

(assert (= bs!1568580 (and b!6279318 b!6279077)))

(assert (=> bs!1568580 (not (= lambda!344303 lambda!344283))))

(declare-fun bs!1568581 () Bool)

(assert (= bs!1568581 (and b!6279318 b!6279314)))

(assert (=> bs!1568581 (not (= lambda!344303 lambda!344302))))

(declare-fun bs!1568582 () Bool)

(assert (= bs!1568582 (and b!6279318 d!1970637)))

(assert (=> bs!1568582 (not (= lambda!344303 lambda!344276))))

(declare-fun bs!1568583 () Bool)

(assert (= bs!1568583 (and b!6279318 b!6278370)))

(assert (=> bs!1568583 (not (= lambda!344303 lambda!344219))))

(assert (=> bs!1568582 (= lambda!344303 lambda!344277)))

(declare-fun bs!1568584 () Bool)

(assert (= bs!1568584 (and b!6279318 b!6278367)))

(assert (=> bs!1568584 (not (= lambda!344303 lambda!344216))))

(assert (=> bs!1568584 (= lambda!344303 lambda!344217)))

(declare-fun bs!1568585 () Bool)

(assert (= bs!1568585 (and b!6279318 d!1970703)))

(assert (=> bs!1568585 (not (= lambda!344303 lambda!344278))))

(declare-fun bs!1568586 () Bool)

(assert (= bs!1568586 (and b!6279318 b!6279081)))

(assert (=> bs!1568586 (= (and (= (regOne!32910 r!7292) (regOne!32910 lt!2353824)) (= (regTwo!32910 r!7292) (regTwo!32910 lt!2353824))) (= lambda!344303 lambda!344284))))

(assert (=> b!6279318 true))

(assert (=> b!6279318 true))

(declare-fun b!6279313 () Bool)

(declare-fun e!3818757 () Bool)

(declare-fun e!3818760 () Bool)

(assert (=> b!6279313 (= e!3818757 e!3818760)))

(declare-fun res!2589796 () Bool)

(assert (=> b!6279313 (= res!2589796 (not ((_ is EmptyLang!16199) r!7292)))))

(assert (=> b!6279313 (=> (not res!2589796) (not e!3818760))))

(declare-fun e!3818761 () Bool)

(declare-fun call!531391 () Bool)

(assert (=> b!6279314 (= e!3818761 call!531391)))

(declare-fun b!6279315 () Bool)

(declare-fun c!1138606 () Bool)

(assert (=> b!6279315 (= c!1138606 ((_ is Union!16199) r!7292))))

(declare-fun e!3818755 () Bool)

(declare-fun e!3818756 () Bool)

(assert (=> b!6279315 (= e!3818755 e!3818756)))

(declare-fun bm!531385 () Bool)

(declare-fun call!531390 () Bool)

(assert (=> bm!531385 (= call!531390 (isEmpty!36818 s!2326))))

(declare-fun b!6279317 () Bool)

(declare-fun e!3818758 () Bool)

(assert (=> b!6279317 (= e!3818756 e!3818758)))

(declare-fun res!2589798 () Bool)

(assert (=> b!6279317 (= res!2589798 (matchRSpec!3300 (regOne!32911 r!7292) s!2326))))

(assert (=> b!6279317 (=> res!2589798 e!3818758)))

(declare-fun e!3818759 () Bool)

(assert (=> b!6279318 (= e!3818759 call!531391)))

(declare-fun b!6279319 () Bool)

(assert (=> b!6279319 (= e!3818755 (= s!2326 (Cons!64774 (c!1138310 r!7292) Nil!64774)))))

(declare-fun b!6279320 () Bool)

(assert (=> b!6279320 (= e!3818756 e!3818759)))

(declare-fun c!1138608 () Bool)

(assert (=> b!6279320 (= c!1138608 ((_ is Star!16199) r!7292))))

(declare-fun b!6279321 () Bool)

(declare-fun res!2589797 () Bool)

(assert (=> b!6279321 (=> res!2589797 e!3818761)))

(assert (=> b!6279321 (= res!2589797 call!531390)))

(assert (=> b!6279321 (= e!3818759 e!3818761)))

(declare-fun b!6279322 () Bool)

(assert (=> b!6279322 (= e!3818757 call!531390)))

(declare-fun b!6279316 () Bool)

(declare-fun c!1138605 () Bool)

(assert (=> b!6279316 (= c!1138605 ((_ is ElementMatch!16199) r!7292))))

(assert (=> b!6279316 (= e!3818760 e!3818755)))

(declare-fun d!1970789 () Bool)

(declare-fun c!1138607 () Bool)

(assert (=> d!1970789 (= c!1138607 ((_ is EmptyExpr!16199) r!7292))))

(assert (=> d!1970789 (= (matchRSpec!3300 r!7292 s!2326) e!3818757)))

(declare-fun bm!531386 () Bool)

(assert (=> bm!531386 (= call!531391 (Exists!3269 (ite c!1138608 lambda!344302 lambda!344303)))))

(declare-fun b!6279323 () Bool)

(assert (=> b!6279323 (= e!3818758 (matchRSpec!3300 (regTwo!32911 r!7292) s!2326))))

(assert (= (and d!1970789 c!1138607) b!6279322))

(assert (= (and d!1970789 (not c!1138607)) b!6279313))

(assert (= (and b!6279313 res!2589796) b!6279316))

(assert (= (and b!6279316 c!1138605) b!6279319))

(assert (= (and b!6279316 (not c!1138605)) b!6279315))

(assert (= (and b!6279315 c!1138606) b!6279317))

(assert (= (and b!6279315 (not c!1138606)) b!6279320))

(assert (= (and b!6279317 (not res!2589798)) b!6279323))

(assert (= (and b!6279320 c!1138608) b!6279321))

(assert (= (and b!6279320 (not c!1138608)) b!6279318))

(assert (= (and b!6279321 (not res!2589797)) b!6279314))

(assert (= (or b!6279314 b!6279318) bm!531386))

(assert (= (or b!6279322 b!6279321) bm!531385))

(assert (=> bm!531385 m!7100162))

(declare-fun m!7100452 () Bool)

(assert (=> b!6279317 m!7100452))

(declare-fun m!7100454 () Bool)

(assert (=> bm!531386 m!7100454))

(declare-fun m!7100456 () Bool)

(assert (=> b!6279323 m!7100456))

(assert (=> b!6278380 d!1970789))

(declare-fun b!6279324 () Bool)

(declare-fun e!3818762 () Bool)

(assert (=> b!6279324 (= e!3818762 (= (head!12898 s!2326) (c!1138310 r!7292)))))

(declare-fun b!6279325 () Bool)

(declare-fun e!3818767 () Bool)

(declare-fun e!3818766 () Bool)

(assert (=> b!6279325 (= e!3818767 e!3818766)))

(declare-fun res!2589806 () Bool)

(assert (=> b!6279325 (=> (not res!2589806) (not e!3818766))))

(declare-fun lt!2353986 () Bool)

(assert (=> b!6279325 (= res!2589806 (not lt!2353986))))

(declare-fun b!6279326 () Bool)

(declare-fun res!2589800 () Bool)

(assert (=> b!6279326 (=> res!2589800 e!3818767)))

(assert (=> b!6279326 (= res!2589800 e!3818762)))

(declare-fun res!2589804 () Bool)

(assert (=> b!6279326 (=> (not res!2589804) (not e!3818762))))

(assert (=> b!6279326 (= res!2589804 lt!2353986)))

(declare-fun b!6279327 () Bool)

(declare-fun e!3818768 () Bool)

(assert (=> b!6279327 (= e!3818766 e!3818768)))

(declare-fun res!2589805 () Bool)

(assert (=> b!6279327 (=> res!2589805 e!3818768)))

(declare-fun call!531392 () Bool)

(assert (=> b!6279327 (= res!2589805 call!531392)))

(declare-fun b!6279328 () Bool)

(declare-fun res!2589799 () Bool)

(assert (=> b!6279328 (=> (not res!2589799) (not e!3818762))))

(assert (=> b!6279328 (= res!2589799 (not call!531392))))

(declare-fun b!6279329 () Bool)

(declare-fun res!2589801 () Bool)

(assert (=> b!6279329 (=> res!2589801 e!3818768)))

(assert (=> b!6279329 (= res!2589801 (not (isEmpty!36818 (tail!11983 s!2326))))))

(declare-fun d!1970791 () Bool)

(declare-fun e!3818763 () Bool)

(assert (=> d!1970791 e!3818763))

(declare-fun c!1138610 () Bool)

(assert (=> d!1970791 (= c!1138610 ((_ is EmptyExpr!16199) r!7292))))

(declare-fun e!3818764 () Bool)

(assert (=> d!1970791 (= lt!2353986 e!3818764)))

(declare-fun c!1138611 () Bool)

(assert (=> d!1970791 (= c!1138611 (isEmpty!36818 s!2326))))

(assert (=> d!1970791 (validRegex!7935 r!7292)))

(assert (=> d!1970791 (= (matchR!8382 r!7292 s!2326) lt!2353986)))

(declare-fun b!6279330 () Bool)

(declare-fun res!2589803 () Bool)

(assert (=> b!6279330 (=> res!2589803 e!3818767)))

(assert (=> b!6279330 (= res!2589803 (not ((_ is ElementMatch!16199) r!7292)))))

(declare-fun e!3818765 () Bool)

(assert (=> b!6279330 (= e!3818765 e!3818767)))

(declare-fun b!6279331 () Bool)

(assert (=> b!6279331 (= e!3818764 (nullable!6192 r!7292))))

(declare-fun b!6279332 () Bool)

(assert (=> b!6279332 (= e!3818764 (matchR!8382 (derivativeStep!4908 r!7292 (head!12898 s!2326)) (tail!11983 s!2326)))))

(declare-fun b!6279333 () Bool)

(declare-fun res!2589802 () Bool)

(assert (=> b!6279333 (=> (not res!2589802) (not e!3818762))))

(assert (=> b!6279333 (= res!2589802 (isEmpty!36818 (tail!11983 s!2326)))))

(declare-fun b!6279334 () Bool)

(assert (=> b!6279334 (= e!3818763 (= lt!2353986 call!531392))))

(declare-fun b!6279335 () Bool)

(assert (=> b!6279335 (= e!3818763 e!3818765)))

(declare-fun c!1138609 () Bool)

(assert (=> b!6279335 (= c!1138609 ((_ is EmptyLang!16199) r!7292))))

(declare-fun b!6279336 () Bool)

(assert (=> b!6279336 (= e!3818765 (not lt!2353986))))

(declare-fun bm!531387 () Bool)

(assert (=> bm!531387 (= call!531392 (isEmpty!36818 s!2326))))

(declare-fun b!6279337 () Bool)

(assert (=> b!6279337 (= e!3818768 (not (= (head!12898 s!2326) (c!1138310 r!7292))))))

(assert (= (and d!1970791 c!1138611) b!6279331))

(assert (= (and d!1970791 (not c!1138611)) b!6279332))

(assert (= (and d!1970791 c!1138610) b!6279334))

(assert (= (and d!1970791 (not c!1138610)) b!6279335))

(assert (= (and b!6279335 c!1138609) b!6279336))

(assert (= (and b!6279335 (not c!1138609)) b!6279330))

(assert (= (and b!6279330 (not res!2589803)) b!6279326))

(assert (= (and b!6279326 res!2589804) b!6279328))

(assert (= (and b!6279328 res!2589799) b!6279333))

(assert (= (and b!6279333 res!2589802) b!6279324))

(assert (= (and b!6279326 (not res!2589800)) b!6279325))

(assert (= (and b!6279325 res!2589806) b!6279327))

(assert (= (and b!6279327 (not res!2589805)) b!6279329))

(assert (= (and b!6279329 (not res!2589801)) b!6279337))

(assert (= (or b!6279334 b!6279327 b!6279328) bm!531387))

(assert (=> b!6279333 m!7100170))

(assert (=> b!6279333 m!7100170))

(assert (=> b!6279333 m!7100174))

(assert (=> b!6279324 m!7100166))

(assert (=> b!6279337 m!7100166))

(assert (=> bm!531387 m!7100162))

(assert (=> d!1970791 m!7100162))

(assert (=> d!1970791 m!7099524))

(assert (=> b!6279329 m!7100170))

(assert (=> b!6279329 m!7100170))

(assert (=> b!6279329 m!7100174))

(declare-fun m!7100458 () Bool)

(assert (=> b!6279331 m!7100458))

(assert (=> b!6279332 m!7100166))

(assert (=> b!6279332 m!7100166))

(declare-fun m!7100460 () Bool)

(assert (=> b!6279332 m!7100460))

(assert (=> b!6279332 m!7100170))

(assert (=> b!6279332 m!7100460))

(assert (=> b!6279332 m!7100170))

(declare-fun m!7100462 () Bool)

(assert (=> b!6279332 m!7100462))

(assert (=> b!6278380 d!1970791))

(declare-fun d!1970793 () Bool)

(assert (=> d!1970793 (= (matchR!8382 r!7292 s!2326) (matchRSpec!3300 r!7292 s!2326))))

(declare-fun lt!2353987 () Unit!158127)

(assert (=> d!1970793 (= lt!2353987 (choose!46610 r!7292 s!2326))))

(assert (=> d!1970793 (validRegex!7935 r!7292)))

(assert (=> d!1970793 (= (mainMatchTheorem!3300 r!7292 s!2326) lt!2353987)))

(declare-fun bs!1568587 () Bool)

(assert (= bs!1568587 d!1970793))

(assert (=> bs!1568587 m!7099600))

(assert (=> bs!1568587 m!7099598))

(declare-fun m!7100464 () Bool)

(assert (=> bs!1568587 m!7100464))

(assert (=> bs!1568587 m!7099524))

(assert (=> b!6278380 d!1970793))

(declare-fun d!1970795 () Bool)

(declare-fun c!1138612 () Bool)

(assert (=> d!1970795 (= c!1138612 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818769 () Bool)

(assert (=> d!1970795 (= (matchZipper!2211 (derivationStepZipper!2165 lt!2353834 (h!71222 s!2326)) (t!378458 s!2326)) e!3818769)))

(declare-fun b!6279338 () Bool)

(assert (=> b!6279338 (= e!3818769 (nullableZipper!1969 (derivationStepZipper!2165 lt!2353834 (h!71222 s!2326))))))

(declare-fun b!6279339 () Bool)

(assert (=> b!6279339 (= e!3818769 (matchZipper!2211 (derivationStepZipper!2165 (derivationStepZipper!2165 lt!2353834 (h!71222 s!2326)) (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970795 c!1138612) b!6279338))

(assert (= (and d!1970795 (not c!1138612)) b!6279339))

(assert (=> d!1970795 m!7100322))

(assert (=> b!6279338 m!7099580))

(declare-fun m!7100466 () Bool)

(assert (=> b!6279338 m!7100466))

(assert (=> b!6279339 m!7100326))

(assert (=> b!6279339 m!7099580))

(assert (=> b!6279339 m!7100326))

(declare-fun m!7100468 () Bool)

(assert (=> b!6279339 m!7100468))

(assert (=> b!6279339 m!7100330))

(assert (=> b!6279339 m!7100468))

(assert (=> b!6279339 m!7100330))

(declare-fun m!7100470 () Bool)

(assert (=> b!6279339 m!7100470))

(assert (=> b!6278359 d!1970795))

(declare-fun bs!1568588 () Bool)

(declare-fun d!1970797 () Bool)

(assert (= bs!1568588 (and d!1970797 b!6278357)))

(declare-fun lambda!344304 () Int)

(assert (=> bs!1568588 (= lambda!344304 lambda!344218)))

(declare-fun bs!1568589 () Bool)

(assert (= bs!1568589 (and d!1970797 d!1970751)))

(assert (=> bs!1568589 (= lambda!344304 lambda!344301)))

(assert (=> d!1970797 true))

(assert (=> d!1970797 (= (derivationStepZipper!2165 lt!2353834 (h!71222 s!2326)) (flatMap!1704 lt!2353834 lambda!344304))))

(declare-fun bs!1568590 () Bool)

(assert (= bs!1568590 d!1970797))

(declare-fun m!7100472 () Bool)

(assert (=> bs!1568590 m!7100472))

(assert (=> b!6278359 d!1970797))

(declare-fun b!6279346 () Bool)

(assert (=> b!6279346 true))

(declare-fun bs!1568591 () Bool)

(declare-fun b!6279348 () Bool)

(assert (= bs!1568591 (and b!6279348 b!6279346)))

(declare-fun lt!2353997 () Int)

(declare-fun lambda!344312 () Int)

(declare-fun lambda!344313 () Int)

(declare-fun lt!2353999 () Int)

(assert (=> bs!1568591 (= (= lt!2353997 lt!2353999) (= lambda!344313 lambda!344312))))

(assert (=> b!6279348 true))

(declare-fun d!1970799 () Bool)

(declare-fun e!3818775 () Bool)

(assert (=> d!1970799 e!3818775))

(declare-fun res!2589809 () Bool)

(assert (=> d!1970799 (=> (not res!2589809) (not e!3818775))))

(assert (=> d!1970799 (= res!2589809 (>= lt!2353997 0))))

(declare-fun e!3818774 () Int)

(assert (=> d!1970799 (= lt!2353997 e!3818774)))

(declare-fun c!1138621 () Bool)

(assert (=> d!1970799 (= c!1138621 ((_ is Cons!64773) lt!2353813))))

(assert (=> d!1970799 (= (zipperDepth!324 lt!2353813) lt!2353997)))

(assert (=> b!6279346 (= e!3818774 lt!2353999)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!216 (Context!11166) Int)

(assert (=> b!6279346 (= lt!2353999 (maxBigInt!0 (contextDepth!216 (h!71221 lt!2353813)) (zipperDepth!324 (t!378457 lt!2353813))))))

(declare-fun lt!2353998 () Unit!158127)

(declare-fun lambda!344311 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!200 (List!64897 Int Int Int) Unit!158127)

(assert (=> b!6279346 (= lt!2353998 (lemmaForallContextDepthBiggerThanTransitive!200 (t!378457 lt!2353813) lt!2353999 (zipperDepth!324 (t!378457 lt!2353813)) lambda!344311))))

(declare-fun forall!15336 (List!64897 Int) Bool)

(assert (=> b!6279346 (forall!15336 (t!378457 lt!2353813) lambda!344312)))

(declare-fun lt!2353996 () Unit!158127)

(assert (=> b!6279346 (= lt!2353996 lt!2353998)))

(declare-fun b!6279347 () Bool)

(assert (=> b!6279347 (= e!3818774 0)))

(assert (=> b!6279348 (= e!3818775 (forall!15336 lt!2353813 lambda!344313))))

(assert (= (and d!1970799 c!1138621) b!6279346))

(assert (= (and d!1970799 (not c!1138621)) b!6279347))

(assert (= (and d!1970799 res!2589809) b!6279348))

(declare-fun m!7100474 () Bool)

(assert (=> b!6279346 m!7100474))

(declare-fun m!7100476 () Bool)

(assert (=> b!6279346 m!7100476))

(declare-fun m!7100478 () Bool)

(assert (=> b!6279346 m!7100478))

(assert (=> b!6279346 m!7100474))

(declare-fun m!7100480 () Bool)

(assert (=> b!6279346 m!7100480))

(declare-fun m!7100482 () Bool)

(assert (=> b!6279346 m!7100482))

(assert (=> b!6279346 m!7100474))

(assert (=> b!6279346 m!7100478))

(declare-fun m!7100484 () Bool)

(assert (=> b!6279348 m!7100484))

(assert (=> b!6278373 d!1970799))

(declare-fun bs!1568592 () Bool)

(declare-fun b!6279351 () Bool)

(assert (= bs!1568592 (and b!6279351 b!6279346)))

(declare-fun lambda!344314 () Int)

(assert (=> bs!1568592 (= lambda!344314 lambda!344311)))

(declare-fun lt!2354003 () Int)

(declare-fun lambda!344315 () Int)

(assert (=> bs!1568592 (= (= lt!2354003 lt!2353999) (= lambda!344315 lambda!344312))))

(declare-fun bs!1568593 () Bool)

(assert (= bs!1568593 (and b!6279351 b!6279348)))

(assert (=> bs!1568593 (= (= lt!2354003 lt!2353997) (= lambda!344315 lambda!344313))))

(assert (=> b!6279351 true))

(declare-fun bs!1568594 () Bool)

(declare-fun b!6279353 () Bool)

(assert (= bs!1568594 (and b!6279353 b!6279346)))

(declare-fun lt!2354001 () Int)

(declare-fun lambda!344316 () Int)

(assert (=> bs!1568594 (= (= lt!2354001 lt!2353999) (= lambda!344316 lambda!344312))))

(declare-fun bs!1568595 () Bool)

(assert (= bs!1568595 (and b!6279353 b!6279348)))

(assert (=> bs!1568595 (= (= lt!2354001 lt!2353997) (= lambda!344316 lambda!344313))))

(declare-fun bs!1568596 () Bool)

(assert (= bs!1568596 (and b!6279353 b!6279351)))

(assert (=> bs!1568596 (= (= lt!2354001 lt!2354003) (= lambda!344316 lambda!344315))))

(assert (=> b!6279353 true))

(declare-fun d!1970801 () Bool)

(declare-fun e!3818777 () Bool)

(assert (=> d!1970801 e!3818777))

(declare-fun res!2589810 () Bool)

(assert (=> d!1970801 (=> (not res!2589810) (not e!3818777))))

(assert (=> d!1970801 (= res!2589810 (>= lt!2354001 0))))

(declare-fun e!3818776 () Int)

(assert (=> d!1970801 (= lt!2354001 e!3818776)))

(declare-fun c!1138622 () Bool)

(assert (=> d!1970801 (= c!1138622 ((_ is Cons!64773) zl!343))))

(assert (=> d!1970801 (= (zipperDepth!324 zl!343) lt!2354001)))

(assert (=> b!6279351 (= e!3818776 lt!2354003)))

(assert (=> b!6279351 (= lt!2354003 (maxBigInt!0 (contextDepth!216 (h!71221 zl!343)) (zipperDepth!324 (t!378457 zl!343))))))

(declare-fun lt!2354002 () Unit!158127)

(assert (=> b!6279351 (= lt!2354002 (lemmaForallContextDepthBiggerThanTransitive!200 (t!378457 zl!343) lt!2354003 (zipperDepth!324 (t!378457 zl!343)) lambda!344314))))

(assert (=> b!6279351 (forall!15336 (t!378457 zl!343) lambda!344315)))

(declare-fun lt!2354000 () Unit!158127)

(assert (=> b!6279351 (= lt!2354000 lt!2354002)))

(declare-fun b!6279352 () Bool)

(assert (=> b!6279352 (= e!3818776 0)))

(assert (=> b!6279353 (= e!3818777 (forall!15336 zl!343 lambda!344316))))

(assert (= (and d!1970801 c!1138622) b!6279351))

(assert (= (and d!1970801 (not c!1138622)) b!6279352))

(assert (= (and d!1970801 res!2589810) b!6279353))

(declare-fun m!7100486 () Bool)

(assert (=> b!6279351 m!7100486))

(declare-fun m!7100488 () Bool)

(assert (=> b!6279351 m!7100488))

(declare-fun m!7100490 () Bool)

(assert (=> b!6279351 m!7100490))

(assert (=> b!6279351 m!7100486))

(declare-fun m!7100492 () Bool)

(assert (=> b!6279351 m!7100492))

(declare-fun m!7100494 () Bool)

(assert (=> b!6279351 m!7100494))

(assert (=> b!6279351 m!7100486))

(assert (=> b!6279351 m!7100490))

(declare-fun m!7100496 () Bool)

(assert (=> b!6279353 m!7100496))

(assert (=> b!6278373 d!1970801))

(declare-fun d!1970803 () Bool)

(declare-fun lt!2354006 () Regex!16199)

(assert (=> d!1970803 (validRegex!7935 lt!2354006)))

(assert (=> d!1970803 (= lt!2354006 (generalisedUnion!2043 (unfocusZipperList!1620 zl!343)))))

(assert (=> d!1970803 (= (unfocusZipper!1941 zl!343) lt!2354006)))

(declare-fun bs!1568597 () Bool)

(assert (= bs!1568597 d!1970803))

(declare-fun m!7100498 () Bool)

(assert (=> bs!1568597 m!7100498))

(assert (=> bs!1568597 m!7099668))

(assert (=> bs!1568597 m!7099668))

(assert (=> bs!1568597 m!7099670))

(assert (=> b!6278372 d!1970803))

(declare-fun d!1970805 () Bool)

(declare-fun e!3818780 () Bool)

(assert (=> d!1970805 e!3818780))

(declare-fun res!2589813 () Bool)

(assert (=> d!1970805 (=> (not res!2589813) (not e!3818780))))

(declare-fun lt!2354009 () List!64897)

(declare-fun noDuplicate!2033 (List!64897) Bool)

(assert (=> d!1970805 (= res!2589813 (noDuplicate!2033 lt!2354009))))

(declare-fun choose!46615 ((InoxSet Context!11166)) List!64897)

(assert (=> d!1970805 (= lt!2354009 (choose!46615 z!1189))))

(assert (=> d!1970805 (= (toList!9983 z!1189) lt!2354009)))

(declare-fun b!6279356 () Bool)

(declare-fun content!12174 (List!64897) (InoxSet Context!11166))

(assert (=> b!6279356 (= e!3818780 (= (content!12174 lt!2354009) z!1189))))

(assert (= (and d!1970805 res!2589813) b!6279356))

(declare-fun m!7100500 () Bool)

(assert (=> d!1970805 m!7100500))

(declare-fun m!7100502 () Bool)

(assert (=> d!1970805 m!7100502))

(declare-fun m!7100504 () Bool)

(assert (=> b!6279356 m!7100504))

(assert (=> b!6278352 d!1970805))

(declare-fun bs!1568598 () Bool)

(declare-fun d!1970807 () Bool)

(assert (= bs!1568598 (and d!1970807 d!1970727)))

(declare-fun lambda!344317 () Int)

(assert (=> bs!1568598 (= lambda!344317 lambda!344291)))

(declare-fun bs!1568599 () Bool)

(assert (= bs!1568599 (and d!1970807 d!1970731)))

(assert (=> bs!1568599 (= lambda!344317 lambda!344297)))

(declare-fun bs!1568600 () Bool)

(assert (= bs!1568600 (and d!1970807 d!1970723)))

(assert (=> bs!1568600 (= lambda!344317 lambda!344288)))

(declare-fun bs!1568601 () Bool)

(assert (= bs!1568601 (and d!1970807 d!1970733)))

(assert (=> bs!1568601 (= lambda!344317 lambda!344298)))

(declare-fun bs!1568602 () Bool)

(assert (= bs!1568602 (and d!1970807 d!1970729)))

(assert (=> bs!1568602 (= lambda!344317 lambda!344294)))

(declare-fun bs!1568603 () Bool)

(assert (= bs!1568603 (and d!1970807 d!1970721)))

(assert (=> bs!1568603 (= lambda!344317 lambda!344287)))

(assert (=> d!1970807 (= (inv!83744 setElem!42716) (forall!15335 (exprs!6083 setElem!42716) lambda!344317))))

(declare-fun bs!1568604 () Bool)

(assert (= bs!1568604 d!1970807))

(declare-fun m!7100506 () Bool)

(assert (=> bs!1568604 m!7100506))

(assert (=> setNonEmpty!42716 d!1970807))

(assert (=> b!6278356 d!1970737))

(declare-fun d!1970809 () Bool)

(declare-fun c!1138623 () Bool)

(assert (=> d!1970809 (= c!1138623 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818781 () Bool)

(assert (=> d!1970809 (= (matchZipper!2211 lt!2353826 (t!378458 s!2326)) e!3818781)))

(declare-fun b!6279357 () Bool)

(assert (=> b!6279357 (= e!3818781 (nullableZipper!1969 lt!2353826))))

(declare-fun b!6279358 () Bool)

(assert (=> b!6279358 (= e!3818781 (matchZipper!2211 (derivationStepZipper!2165 lt!2353826 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970809 c!1138623) b!6279357))

(assert (= (and d!1970809 (not c!1138623)) b!6279358))

(assert (=> d!1970809 m!7100322))

(declare-fun m!7100508 () Bool)

(assert (=> b!6279357 m!7100508))

(assert (=> b!6279358 m!7100326))

(assert (=> b!6279358 m!7100326))

(declare-fun m!7100510 () Bool)

(assert (=> b!6279358 m!7100510))

(assert (=> b!6279358 m!7100330))

(assert (=> b!6279358 m!7100510))

(assert (=> b!6279358 m!7100330))

(declare-fun m!7100512 () Bool)

(assert (=> b!6279358 m!7100512))

(assert (=> b!6278356 d!1970809))

(declare-fun d!1970811 () Bool)

(declare-fun c!1138624 () Bool)

(assert (=> d!1970811 (= c!1138624 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818782 () Bool)

(assert (=> d!1970811 (= (matchZipper!2211 lt!2353812 (t!378458 s!2326)) e!3818782)))

(declare-fun b!6279359 () Bool)

(assert (=> b!6279359 (= e!3818782 (nullableZipper!1969 lt!2353812))))

(declare-fun b!6279360 () Bool)

(assert (=> b!6279360 (= e!3818782 (matchZipper!2211 (derivationStepZipper!2165 lt!2353812 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970811 c!1138624) b!6279359))

(assert (= (and d!1970811 (not c!1138624)) b!6279360))

(assert (=> d!1970811 m!7100322))

(declare-fun m!7100514 () Bool)

(assert (=> b!6279359 m!7100514))

(assert (=> b!6279360 m!7100326))

(assert (=> b!6279360 m!7100326))

(declare-fun m!7100516 () Bool)

(assert (=> b!6279360 m!7100516))

(assert (=> b!6279360 m!7100330))

(assert (=> b!6279360 m!7100516))

(assert (=> b!6279360 m!7100330))

(declare-fun m!7100518 () Bool)

(assert (=> b!6279360 m!7100518))

(assert (=> b!6278356 d!1970811))

(declare-fun e!3818783 () Bool)

(declare-fun d!1970813 () Bool)

(assert (=> d!1970813 (= (matchZipper!2211 ((_ map or) lt!2353812 lt!2353807) (t!378458 s!2326)) e!3818783)))

(declare-fun res!2589814 () Bool)

(assert (=> d!1970813 (=> res!2589814 e!3818783)))

(assert (=> d!1970813 (= res!2589814 (matchZipper!2211 lt!2353812 (t!378458 s!2326)))))

(declare-fun lt!2354010 () Unit!158127)

(assert (=> d!1970813 (= lt!2354010 (choose!46611 lt!2353812 lt!2353807 (t!378458 s!2326)))))

(assert (=> d!1970813 (= (lemmaZipperConcatMatchesSameAsBothZippers!1030 lt!2353812 lt!2353807 (t!378458 s!2326)) lt!2354010)))

(declare-fun b!6279361 () Bool)

(assert (=> b!6279361 (= e!3818783 (matchZipper!2211 lt!2353807 (t!378458 s!2326)))))

(assert (= (and d!1970813 (not res!2589814)) b!6279361))

(declare-fun m!7100520 () Bool)

(assert (=> d!1970813 m!7100520))

(assert (=> d!1970813 m!7099622))

(declare-fun m!7100522 () Bool)

(assert (=> d!1970813 m!7100522))

(assert (=> b!6279361 m!7099548))

(assert (=> b!6278356 d!1970813))

(declare-fun d!1970815 () Bool)

(declare-fun c!1138625 () Bool)

(assert (=> d!1970815 (= c!1138625 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818784 () Bool)

(assert (=> d!1970815 (= (matchZipper!2211 lt!2353823 (t!378458 s!2326)) e!3818784)))

(declare-fun b!6279362 () Bool)

(assert (=> b!6279362 (= e!3818784 (nullableZipper!1969 lt!2353823))))

(declare-fun b!6279363 () Bool)

(assert (=> b!6279363 (= e!3818784 (matchZipper!2211 (derivationStepZipper!2165 lt!2353823 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970815 c!1138625) b!6279362))

(assert (= (and d!1970815 (not c!1138625)) b!6279363))

(assert (=> d!1970815 m!7100322))

(declare-fun m!7100524 () Bool)

(assert (=> b!6279362 m!7100524))

(assert (=> b!6279363 m!7100326))

(assert (=> b!6279363 m!7100326))

(declare-fun m!7100526 () Bool)

(assert (=> b!6279363 m!7100526))

(assert (=> b!6279363 m!7100330))

(assert (=> b!6279363 m!7100526))

(assert (=> b!6279363 m!7100330))

(declare-fun m!7100528 () Bool)

(assert (=> b!6279363 m!7100528))

(assert (=> b!6278375 d!1970815))

(assert (=> b!6278374 d!1970743))

(declare-fun d!1970817 () Bool)

(declare-fun c!1138626 () Bool)

(assert (=> d!1970817 (= c!1138626 (isEmpty!36818 (t!378458 s!2326)))))

(declare-fun e!3818785 () Bool)

(assert (=> d!1970817 (= (matchZipper!2211 lt!2353819 (t!378458 s!2326)) e!3818785)))

(declare-fun b!6279364 () Bool)

(assert (=> b!6279364 (= e!3818785 (nullableZipper!1969 lt!2353819))))

(declare-fun b!6279365 () Bool)

(assert (=> b!6279365 (= e!3818785 (matchZipper!2211 (derivationStepZipper!2165 lt!2353819 (head!12898 (t!378458 s!2326))) (tail!11983 (t!378458 s!2326))))))

(assert (= (and d!1970817 c!1138626) b!6279364))

(assert (= (and d!1970817 (not c!1138626)) b!6279365))

(assert (=> d!1970817 m!7100322))

(declare-fun m!7100530 () Bool)

(assert (=> b!6279364 m!7100530))

(assert (=> b!6279365 m!7100326))

(assert (=> b!6279365 m!7100326))

(declare-fun m!7100532 () Bool)

(assert (=> b!6279365 m!7100532))

(assert (=> b!6279365 m!7100330))

(assert (=> b!6279365 m!7100532))

(assert (=> b!6279365 m!7100330))

(declare-fun m!7100534 () Bool)

(assert (=> b!6279365 m!7100534))

(assert (=> b!6278354 d!1970817))

(declare-fun b!6279376 () Bool)

(declare-fun e!3818788 () Bool)

(assert (=> b!6279376 (= e!3818788 tp_is_empty!41651)))

(declare-fun b!6279377 () Bool)

(declare-fun tp!1750192 () Bool)

(declare-fun tp!1750191 () Bool)

(assert (=> b!6279377 (= e!3818788 (and tp!1750192 tp!1750191))))

(declare-fun b!6279378 () Bool)

(declare-fun tp!1750194 () Bool)

(assert (=> b!6279378 (= e!3818788 tp!1750194)))

(declare-fun b!6279379 () Bool)

(declare-fun tp!1750193 () Bool)

(declare-fun tp!1750195 () Bool)

(assert (=> b!6279379 (= e!3818788 (and tp!1750193 tp!1750195))))

(assert (=> b!6278353 (= tp!1750119 e!3818788)))

(assert (= (and b!6278353 ((_ is ElementMatch!16199) (regOne!32910 r!7292))) b!6279376))

(assert (= (and b!6278353 ((_ is Concat!25044) (regOne!32910 r!7292))) b!6279377))

(assert (= (and b!6278353 ((_ is Star!16199) (regOne!32910 r!7292))) b!6279378))

(assert (= (and b!6278353 ((_ is Union!16199) (regOne!32910 r!7292))) b!6279379))

(declare-fun b!6279380 () Bool)

(declare-fun e!3818789 () Bool)

(assert (=> b!6279380 (= e!3818789 tp_is_empty!41651)))

(declare-fun b!6279381 () Bool)

(declare-fun tp!1750197 () Bool)

(declare-fun tp!1750196 () Bool)

(assert (=> b!6279381 (= e!3818789 (and tp!1750197 tp!1750196))))

(declare-fun b!6279382 () Bool)

(declare-fun tp!1750199 () Bool)

(assert (=> b!6279382 (= e!3818789 tp!1750199)))

(declare-fun b!6279383 () Bool)

(declare-fun tp!1750198 () Bool)

(declare-fun tp!1750200 () Bool)

(assert (=> b!6279383 (= e!3818789 (and tp!1750198 tp!1750200))))

(assert (=> b!6278353 (= tp!1750114 e!3818789)))

(assert (= (and b!6278353 ((_ is ElementMatch!16199) (regTwo!32910 r!7292))) b!6279380))

(assert (= (and b!6278353 ((_ is Concat!25044) (regTwo!32910 r!7292))) b!6279381))

(assert (= (and b!6278353 ((_ is Star!16199) (regTwo!32910 r!7292))) b!6279382))

(assert (= (and b!6278353 ((_ is Union!16199) (regTwo!32910 r!7292))) b!6279383))

(declare-fun b!6279388 () Bool)

(declare-fun e!3818792 () Bool)

(declare-fun tp!1750203 () Bool)

(assert (=> b!6279388 (= e!3818792 (and tp_is_empty!41651 tp!1750203))))

(assert (=> b!6278348 (= tp!1750116 e!3818792)))

(assert (= (and b!6278348 ((_ is Cons!64774) (t!378458 s!2326))) b!6279388))

(declare-fun b!6279393 () Bool)

(declare-fun e!3818795 () Bool)

(declare-fun tp!1750208 () Bool)

(declare-fun tp!1750209 () Bool)

(assert (=> b!6279393 (= e!3818795 (and tp!1750208 tp!1750209))))

(assert (=> b!6278383 (= tp!1750118 e!3818795)))

(assert (= (and b!6278383 ((_ is Cons!64772) (exprs!6083 (h!71221 zl!343)))) b!6279393))

(declare-fun condSetEmpty!42722 () Bool)

(assert (=> setNonEmpty!42716 (= condSetEmpty!42722 (= setRest!42716 ((as const (Array Context!11166 Bool)) false)))))

(declare-fun setRes!42722 () Bool)

(assert (=> setNonEmpty!42716 (= tp!1750120 setRes!42722)))

(declare-fun setIsEmpty!42722 () Bool)

(assert (=> setIsEmpty!42722 setRes!42722))

(declare-fun setNonEmpty!42722 () Bool)

(declare-fun setElem!42722 () Context!11166)

(declare-fun e!3818798 () Bool)

(declare-fun tp!1750214 () Bool)

(assert (=> setNonEmpty!42722 (= setRes!42722 (and tp!1750214 (inv!83744 setElem!42722) e!3818798))))

(declare-fun setRest!42722 () (InoxSet Context!11166))

(assert (=> setNonEmpty!42722 (= setRest!42716 ((_ map or) (store ((as const (Array Context!11166 Bool)) false) setElem!42722 true) setRest!42722))))

(declare-fun b!6279398 () Bool)

(declare-fun tp!1750215 () Bool)

(assert (=> b!6279398 (= e!3818798 tp!1750215)))

(assert (= (and setNonEmpty!42716 condSetEmpty!42722) setIsEmpty!42722))

(assert (= (and setNonEmpty!42716 (not condSetEmpty!42722)) setNonEmpty!42722))

(assert (= setNonEmpty!42722 b!6279398))

(declare-fun m!7100536 () Bool)

(assert (=> setNonEmpty!42722 m!7100536))

(declare-fun b!6279399 () Bool)

(declare-fun e!3818799 () Bool)

(assert (=> b!6279399 (= e!3818799 tp_is_empty!41651)))

(declare-fun b!6279400 () Bool)

(declare-fun tp!1750217 () Bool)

(declare-fun tp!1750216 () Bool)

(assert (=> b!6279400 (= e!3818799 (and tp!1750217 tp!1750216))))

(declare-fun b!6279401 () Bool)

(declare-fun tp!1750219 () Bool)

(assert (=> b!6279401 (= e!3818799 tp!1750219)))

(declare-fun b!6279402 () Bool)

(declare-fun tp!1750218 () Bool)

(declare-fun tp!1750220 () Bool)

(assert (=> b!6279402 (= e!3818799 (and tp!1750218 tp!1750220))))

(assert (=> b!6278376 (= tp!1750122 e!3818799)))

(assert (= (and b!6278376 ((_ is ElementMatch!16199) (reg!16528 r!7292))) b!6279399))

(assert (= (and b!6278376 ((_ is Concat!25044) (reg!16528 r!7292))) b!6279400))

(assert (= (and b!6278376 ((_ is Star!16199) (reg!16528 r!7292))) b!6279401))

(assert (= (and b!6278376 ((_ is Union!16199) (reg!16528 r!7292))) b!6279402))

(declare-fun b!6279403 () Bool)

(declare-fun e!3818800 () Bool)

(declare-fun tp!1750221 () Bool)

(declare-fun tp!1750222 () Bool)

(assert (=> b!6279403 (= e!3818800 (and tp!1750221 tp!1750222))))

(assert (=> b!6278371 (= tp!1750117 e!3818800)))

(assert (= (and b!6278371 ((_ is Cons!64772) (exprs!6083 setElem!42716))) b!6279403))

(declare-fun b!6279404 () Bool)

(declare-fun e!3818801 () Bool)

(assert (=> b!6279404 (= e!3818801 tp_is_empty!41651)))

(declare-fun b!6279405 () Bool)

(declare-fun tp!1750224 () Bool)

(declare-fun tp!1750223 () Bool)

(assert (=> b!6279405 (= e!3818801 (and tp!1750224 tp!1750223))))

(declare-fun b!6279406 () Bool)

(declare-fun tp!1750226 () Bool)

(assert (=> b!6279406 (= e!3818801 tp!1750226)))

(declare-fun b!6279407 () Bool)

(declare-fun tp!1750225 () Bool)

(declare-fun tp!1750227 () Bool)

(assert (=> b!6279407 (= e!3818801 (and tp!1750225 tp!1750227))))

(assert (=> b!6278355 (= tp!1750121 e!3818801)))

(assert (= (and b!6278355 ((_ is ElementMatch!16199) (regOne!32911 r!7292))) b!6279404))

(assert (= (and b!6278355 ((_ is Concat!25044) (regOne!32911 r!7292))) b!6279405))

(assert (= (and b!6278355 ((_ is Star!16199) (regOne!32911 r!7292))) b!6279406))

(assert (= (and b!6278355 ((_ is Union!16199) (regOne!32911 r!7292))) b!6279407))

(declare-fun b!6279408 () Bool)

(declare-fun e!3818802 () Bool)

(assert (=> b!6279408 (= e!3818802 tp_is_empty!41651)))

(declare-fun b!6279409 () Bool)

(declare-fun tp!1750229 () Bool)

(declare-fun tp!1750228 () Bool)

(assert (=> b!6279409 (= e!3818802 (and tp!1750229 tp!1750228))))

(declare-fun b!6279410 () Bool)

(declare-fun tp!1750231 () Bool)

(assert (=> b!6279410 (= e!3818802 tp!1750231)))

(declare-fun b!6279411 () Bool)

(declare-fun tp!1750230 () Bool)

(declare-fun tp!1750232 () Bool)

(assert (=> b!6279411 (= e!3818802 (and tp!1750230 tp!1750232))))

(assert (=> b!6278355 (= tp!1750113 e!3818802)))

(assert (= (and b!6278355 ((_ is ElementMatch!16199) (regTwo!32911 r!7292))) b!6279408))

(assert (= (and b!6278355 ((_ is Concat!25044) (regTwo!32911 r!7292))) b!6279409))

(assert (= (and b!6278355 ((_ is Star!16199) (regTwo!32911 r!7292))) b!6279410))

(assert (= (and b!6278355 ((_ is Union!16199) (regTwo!32911 r!7292))) b!6279411))

(declare-fun b!6279419 () Bool)

(declare-fun e!3818808 () Bool)

(declare-fun tp!1750237 () Bool)

(assert (=> b!6279419 (= e!3818808 tp!1750237)))

(declare-fun e!3818807 () Bool)

(declare-fun tp!1750238 () Bool)

(declare-fun b!6279418 () Bool)

(assert (=> b!6279418 (= e!3818807 (and (inv!83744 (h!71221 (t!378457 zl!343))) e!3818808 tp!1750238))))

(assert (=> b!6278369 (= tp!1750115 e!3818807)))

(assert (= b!6279418 b!6279419))

(assert (= (and b!6278369 ((_ is Cons!64773) (t!378457 zl!343))) b!6279418))

(declare-fun m!7100538 () Bool)

(assert (=> b!6279418 m!7100538))

(declare-fun b_lambda!239071 () Bool)

(assert (= b_lambda!239067 (or b!6278357 b_lambda!239071)))

(declare-fun bs!1568605 () Bool)

(declare-fun d!1970819 () Bool)

(assert (= bs!1568605 (and d!1970819 b!6278357)))

(assert (=> bs!1568605 (= (dynLambda!25625 lambda!344218 (h!71221 zl!343)) (derivationStepZipperUp!1373 (h!71221 zl!343) (h!71222 s!2326)))))

(assert (=> bs!1568605 m!7099656))

(assert (=> d!1970761 d!1970819))

(declare-fun b_lambda!239073 () Bool)

(assert (= b_lambda!239065 (or b!6278357 b_lambda!239073)))

(declare-fun bs!1568606 () Bool)

(declare-fun d!1970821 () Bool)

(assert (= bs!1568606 (and d!1970821 b!6278357)))

(assert (=> bs!1568606 (= (dynLambda!25625 lambda!344218 lt!2353829) (derivationStepZipperUp!1373 lt!2353829 (h!71222 s!2326)))))

(assert (=> bs!1568606 m!7099544))

(assert (=> d!1970753 d!1970821))

(declare-fun b_lambda!239075 () Bool)

(assert (= b_lambda!239069 (or b!6278357 b_lambda!239075)))

(declare-fun bs!1568607 () Bool)

(declare-fun d!1970823 () Bool)

(assert (= bs!1568607 (and d!1970823 b!6278357)))

(assert (=> bs!1568607 (= (dynLambda!25625 lambda!344218 lt!2353825) (derivationStepZipperUp!1373 lt!2353825 (h!71222 s!2326)))))

(assert (=> bs!1568607 m!7099538))

(assert (=> d!1970781 d!1970823))

(check-sat (not d!1970713) (not b!6279407) (not b!6279401) (not d!1970783) (not b!6279123) (not b!6279379) (not b!6279332) (not b_lambda!239071) (not d!1970723) (not b!6279003) (not b!6278700) (not bm!531385) (not bs!1568605) (not d!1970701) (not b!6279250) (not d!1970731) (not d!1970781) (not bm!531382) (not b!6279308) (not d!1970719) (not bm!531354) (not b!6279009) (not b!6279337) (not b!6279184) (not b!6278703) (not b!6278584) (not b!6279277) (not b!6279230) (not d!1970787) (not b!6279193) (not b!6279393) (not b!6278707) (not d!1970703) (not bm!531370) (not bm!531353) (not b!6278999) (not b!6279348) (not b!6279185) (not b!6279362) (not d!1970699) (not b!6279197) (not d!1970791) (not b!6279168) (not b!6279323) (not b!6279398) (not d!1970707) (not d!1970811) (not b!6279002) (not d!1970733) (not d!1970711) (not b!6279409) (not d!1970717) (not b!6279194) (not b!6278964) (not b!6279035) (not bm!531346) (not b!6279247) (not b!6279346) (not b!6279309) (not bm!531344) (not d!1970739) (not bm!531375) (not b!6279312) (not b!6279356) (not bm!531340) (not bs!1568607) (not b!6279406) (not b!6279365) (not d!1970771) (not d!1970785) (not b!6279127) (not b!6279086) (not b!6279180) (not b!6279378) (not d!1970727) (not bm!531372) (not b!6279014) (not b!6279359) (not b!6279338) (not b!6279007) (not b!6279317) (not d!1970725) (not setNonEmpty!42722) (not b!6279126) (not b!6279100) (not b!6279166) (not d!1970757) (not d!1970803) (not d!1970737) (not b!6279016) (not b!6279333) (not b!6279353) (not b!6279351) (not b!6279128) (not bm!531376) (not bm!531386) (not d!1970599) (not bm!531350) (not b!6279191) (not b!6279172) (not b!6279136) (not b!6279403) (not b!6279132) (not d!1970715) (not b!6279122) (not bm!531347) (not b!6279237) (not bm!531343) (not d!1970581) (not b!6279140) (not b!6278708) (not d!1970809) (not b!6279410) (not b!6279133) (not d!1970815) (not d!1970743) (not b!6279142) (not d!1970813) (not b!6279015) (not b!6279087) (not d!1970637) (not bm!531333) (not b!6279092) (not b!6279138) (not bm!531384) (not b!6279357) (not b!6279008) (not b!6279164) (not bm!531381) (not b!6279358) (not b!6279170) (not b!6279181) (not b!6279182) (not b!6279198) (not b!6279252) (not d!1970817) (not b!6279134) (not b!6279363) (not b!6279124) (not b!6279311) (not b!6279177) (not b!6279329) (not b!6279288) (not b!6279331) (not b!6279339) (not d!1970793) (not b!6279361) (not bm!531378) (not b!6278994) (not b!6278965) (not d!1970601) (not b!6279360) (not d!1970721) (not b!6278956) (not b!6279196) (not b!6279411) (not b!6278706) (not b!6278582) (not bm!531351) (not b!6279188) (not b!6279405) (not b!6279299) (not b!6279094) (not d!1970735) (not b!6279207) (not b!6279171) (not b_lambda!239075) (not d!1970751) (not b!6279235) (not b!6279186) (not b!6279011) (not bm!531334) (not b!6279195) (not d!1970729) (not b!6279382) (not d!1970797) (not d!1970753) (not b!6279377) (not b_lambda!239073) (not b!6279096) (not bm!531369) (not d!1970795) (not d!1970571) (not b!6279402) (not b!6279240) (not b!6279324) (not b!6279388) (not d!1970779) (not b!6279242) (not bm!531339) (not d!1970761) (not d!1970697) (not b!6279383) (not b!6279418) (not b!6278701) (not bm!531352) (not b!6279137) (not b!6279192) (not b!6279364) (not b!6279130) (not b!6279163) (not d!1970805) (not b!6279141) (not b!6279080) (not b!6279232) (not b!6279245) (not d!1970691) (not d!1970807) tp_is_empty!41651 (not b!6279095) (not bm!531325) (not b!6279001) (not bm!531341) (not bm!531387) (not b!6279400) (not bs!1568606) (not b!6279419) (not d!1970605) (not b!6279381) (not d!1970769) (not b!6279310) (not b!6278958))
(check-sat)
