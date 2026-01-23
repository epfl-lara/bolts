; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!641580 () Bool)

(assert start!641580)

(declare-fun b!6547559 () Bool)

(assert (=> b!6547559 true))

(assert (=> b!6547559 true))

(declare-fun lambda!363521 () Int)

(declare-fun lambda!363520 () Int)

(assert (=> b!6547559 (not (= lambda!363521 lambda!363520))))

(assert (=> b!6547559 true))

(assert (=> b!6547559 true))

(declare-fun b!6547595 () Bool)

(assert (=> b!6547595 true))

(declare-fun b!6547598 () Bool)

(assert (=> b!6547598 true))

(declare-fun b!6547557 () Bool)

(declare-fun e!3964346 () Bool)

(declare-fun e!3964350 () Bool)

(assert (=> b!6547557 (= e!3964346 e!3964350)))

(declare-fun res!2685997 () Bool)

(assert (=> b!6547557 (=> res!2685997 e!3964350)))

(declare-datatypes ((C!33110 0))(
  ( (C!33111 (val!26257 Int)) )
))
(declare-datatypes ((Regex!16420 0))(
  ( (ElementMatch!16420 (c!1202553 C!33110)) (Concat!25265 (regOne!33352 Regex!16420) (regTwo!33352 Regex!16420)) (EmptyExpr!16420) (Star!16420 (reg!16749 Regex!16420)) (EmptyLang!16420) (Union!16420 (regOne!33353 Regex!16420) (regTwo!33353 Regex!16420)) )
))
(declare-fun lt!2401110 () Regex!16420)

(declare-fun validRegex!8156 (Regex!16420) Bool)

(assert (=> b!6547557 (= res!2685997 (not (validRegex!8156 lt!2401110)))))

(declare-fun lt!2401144 () Regex!16420)

(declare-datatypes ((List!65559 0))(
  ( (Nil!65435) (Cons!65435 (h!71883 C!33110) (t!379201 List!65559)) )
))
(declare-fun s!2326 () List!65559)

(declare-fun matchRSpec!3521 (Regex!16420 List!65559) Bool)

(assert (=> b!6547557 (matchRSpec!3521 lt!2401144 s!2326)))

(declare-datatypes ((Unit!159015 0))(
  ( (Unit!159016) )
))
(declare-fun lt!2401129 () Unit!159015)

(declare-fun mainMatchTheorem!3521 (Regex!16420 List!65559) Unit!159015)

(assert (=> b!6547557 (= lt!2401129 (mainMatchTheorem!3521 lt!2401144 s!2326))))

(declare-fun matchR!8603 (Regex!16420 List!65559) Bool)

(assert (=> b!6547557 (matchR!8603 lt!2401144 s!2326)))

(declare-fun r!7292 () Regex!16420)

(assert (=> b!6547557 (= lt!2401144 (Concat!25265 lt!2401110 (regTwo!33352 r!7292)))))

(declare-fun lt!2401148 () Regex!16420)

(assert (=> b!6547557 (= lt!2401110 (Concat!25265 (reg!16749 (regOne!33352 r!7292)) lt!2401148))))

(declare-fun lt!2401095 () Unit!159015)

(declare-fun lemmaConcatAssociative!117 (Regex!16420 Regex!16420 Regex!16420 List!65559) Unit!159015)

(assert (=> b!6547557 (= lt!2401095 (lemmaConcatAssociative!117 (reg!16749 (regOne!33352 r!7292)) lt!2401148 (regTwo!33352 r!7292) s!2326))))

(declare-fun e!3964368 () Bool)

(assert (=> b!6547557 e!3964368))

(declare-fun res!2686016 () Bool)

(assert (=> b!6547557 (=> (not res!2686016) (not e!3964368))))

(declare-fun lt!2401146 () Regex!16420)

(declare-fun lt!2401101 () List!65559)

(assert (=> b!6547557 (= res!2686016 (matchR!8603 lt!2401146 lt!2401101))))

(declare-fun lt!2401134 () Unit!159015)

(declare-datatypes ((tuple2!66798 0))(
  ( (tuple2!66799 (_1!36702 List!65559) (_2!36702 List!65559)) )
))
(declare-fun lt!2401103 () tuple2!66798)

(declare-fun lt!2401126 () Regex!16420)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!341 (Regex!16420 Regex!16420 List!65559 List!65559) Unit!159015)

(assert (=> b!6547557 (= lt!2401134 (lemmaTwoRegexMatchThenConcatMatchesConcatString!341 (reg!16749 (regOne!33352 r!7292)) lt!2401126 (_1!36702 lt!2401103) (_2!36702 lt!2401103)))))

(assert (=> b!6547557 (matchR!8603 lt!2401126 (_2!36702 lt!2401103))))

(declare-fun lt!2401105 () Unit!159015)

(declare-datatypes ((List!65560 0))(
  ( (Nil!65436) (Cons!65436 (h!71884 Regex!16420) (t!379202 List!65560)) )
))
(declare-datatypes ((Context!11608 0))(
  ( (Context!11609 (exprs!6304 List!65560)) )
))
(declare-datatypes ((List!65561 0))(
  ( (Nil!65437) (Cons!65437 (h!71885 Context!11608) (t!379203 List!65561)) )
))
(declare-fun lt!2401142 () List!65561)

(declare-fun lt!2401116 () (Set Context!11608))

(declare-fun theoremZipperRegexEquiv!856 ((Set Context!11608) List!65561 Regex!16420 List!65559) Unit!159015)

(assert (=> b!6547557 (= lt!2401105 (theoremZipperRegexEquiv!856 lt!2401116 lt!2401142 lt!2401126 (_2!36702 lt!2401103)))))

(assert (=> b!6547557 (matchR!8603 (reg!16749 (regOne!33352 r!7292)) (_1!36702 lt!2401103))))

(declare-fun lt!2401147 () Unit!159015)

(declare-fun lt!2401135 () List!65561)

(declare-fun lt!2401106 () (Set Context!11608))

(assert (=> b!6547557 (= lt!2401147 (theoremZipperRegexEquiv!856 lt!2401106 lt!2401135 (reg!16749 (regOne!33352 r!7292)) (_1!36702 lt!2401103)))))

(declare-fun lt!2401125 () List!65560)

(declare-fun lt!2401120 () List!65560)

(declare-fun matchZipper!2432 ((Set Context!11608) List!65559) Bool)

(declare-fun ++!14542 (List!65560 List!65560) List!65560)

(assert (=> b!6547557 (matchZipper!2432 (set.insert (Context!11609 (++!14542 lt!2401125 lt!2401120)) (as set.empty (Set Context!11608))) lt!2401101)))

(declare-fun lt!2401115 () Unit!159015)

(declare-fun lambda!363524 () Int)

(declare-fun lemmaConcatPreservesForall!393 (List!65560 List!65560 Int) Unit!159015)

(assert (=> b!6547557 (= lt!2401115 (lemmaConcatPreservesForall!393 lt!2401125 lt!2401120 lambda!363524))))

(declare-fun lt!2401097 () Context!11608)

(declare-fun lt!2401122 () Unit!159015)

(declare-fun lt!2401141 () Context!11608)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!201 (Context!11608 Context!11608 List!65559 List!65559) Unit!159015)

(assert (=> b!6547557 (= lt!2401122 (lemmaConcatenateContextMatchesConcatOfStrings!201 lt!2401097 lt!2401141 (_1!36702 lt!2401103) (_2!36702 lt!2401103)))))

(declare-fun b!6547558 () Bool)

(declare-fun e!3964354 () Bool)

(declare-fun lt!2401108 () (Set Context!11608))

(assert (=> b!6547558 (= e!3964354 (not (matchZipper!2432 lt!2401108 (t!379201 s!2326))))))

(declare-fun e!3964351 () Bool)

(declare-fun e!3964345 () Bool)

(assert (=> b!6547559 (= e!3964351 e!3964345)))

(declare-fun res!2686025 () Bool)

(assert (=> b!6547559 (=> res!2686025 e!3964345)))

(declare-fun lt!2401121 () Bool)

(declare-fun lt!2401124 () Bool)

(assert (=> b!6547559 (= res!2686025 (or (not (= lt!2401124 lt!2401121)) (is-Nil!65435 s!2326)))))

(declare-fun Exists!3490 (Int) Bool)

(assert (=> b!6547559 (= (Exists!3490 lambda!363520) (Exists!3490 lambda!363521))))

(declare-fun lt!2401096 () Unit!159015)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2027 (Regex!16420 Regex!16420 List!65559) Unit!159015)

(assert (=> b!6547559 (= lt!2401096 (lemmaExistCutMatchRandMatchRSpecEquivalent!2027 (regOne!33352 r!7292) (regTwo!33352 r!7292) s!2326))))

(assert (=> b!6547559 (= lt!2401121 (Exists!3490 lambda!363520))))

(declare-datatypes ((Option!16311 0))(
  ( (None!16310) (Some!16310 (v!52495 tuple2!66798)) )
))
(declare-fun isDefined!13014 (Option!16311) Bool)

(declare-fun findConcatSeparation!2725 (Regex!16420 Regex!16420 List!65559 List!65559 List!65559) Option!16311)

(assert (=> b!6547559 (= lt!2401121 (isDefined!13014 (findConcatSeparation!2725 (regOne!33352 r!7292) (regTwo!33352 r!7292) Nil!65435 s!2326 s!2326)))))

(declare-fun lt!2401111 () Unit!159015)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2489 (Regex!16420 Regex!16420 List!65559) Unit!159015)

(assert (=> b!6547559 (= lt!2401111 (lemmaFindConcatSeparationEquivalentToExists!2489 (regOne!33352 r!7292) (regTwo!33352 r!7292) s!2326))))

(declare-fun b!6547560 () Bool)

(declare-fun e!3964352 () Bool)

(declare-fun tp_is_empty!42093 () Bool)

(declare-fun tp!1811031 () Bool)

(assert (=> b!6547560 (= e!3964352 (and tp_is_empty!42093 tp!1811031))))

(declare-fun b!6547561 () Bool)

(declare-fun e!3964348 () Bool)

(declare-fun e!3964360 () Bool)

(assert (=> b!6547561 (= e!3964348 e!3964360)))

(declare-fun res!2686021 () Bool)

(assert (=> b!6547561 (=> res!2686021 e!3964360)))

(assert (=> b!6547561 (= res!2686021 (not (= r!7292 lt!2401126)))))

(assert (=> b!6547561 (= lt!2401126 (Concat!25265 lt!2401148 (regTwo!33352 r!7292)))))

(declare-fun b!6547562 () Bool)

(declare-fun e!3964357 () Bool)

(assert (=> b!6547562 (= e!3964357 (matchZipper!2432 lt!2401108 (t!379201 s!2326)))))

(declare-fun b!6547563 () Bool)

(declare-fun e!3964364 () Bool)

(declare-fun e!3964353 () Bool)

(assert (=> b!6547563 (= e!3964364 e!3964353)))

(declare-fun res!2686019 () Bool)

(assert (=> b!6547563 (=> res!2686019 e!3964353)))

(declare-fun unfocusZipper!2162 (List!65561) Regex!16420)

(assert (=> b!6547563 (= res!2686019 (not (= (unfocusZipper!2162 lt!2401135) (reg!16749 (regOne!33352 r!7292)))))))

(assert (=> b!6547563 (= lt!2401135 (Cons!65437 lt!2401097 Nil!65437))))

(declare-fun lambda!363522 () Int)

(declare-fun flatMap!1925 ((Set Context!11608) Int) (Set Context!11608))

(declare-fun derivationStepZipperUp!1594 (Context!11608 C!33110) (Set Context!11608))

(assert (=> b!6547563 (= (flatMap!1925 lt!2401116 lambda!363522) (derivationStepZipperUp!1594 lt!2401141 (h!71883 s!2326)))))

(declare-fun lt!2401130 () Unit!159015)

(declare-fun lemmaFlatMapOnSingletonSet!1451 ((Set Context!11608) Context!11608 Int) Unit!159015)

(assert (=> b!6547563 (= lt!2401130 (lemmaFlatMapOnSingletonSet!1451 lt!2401116 lt!2401141 lambda!363522))))

(assert (=> b!6547563 (= (flatMap!1925 lt!2401106 lambda!363522) (derivationStepZipperUp!1594 lt!2401097 (h!71883 s!2326)))))

(declare-fun lt!2401140 () Unit!159015)

(assert (=> b!6547563 (= lt!2401140 (lemmaFlatMapOnSingletonSet!1451 lt!2401106 lt!2401097 lambda!363522))))

(declare-fun lt!2401139 () (Set Context!11608))

(assert (=> b!6547563 (= lt!2401139 (derivationStepZipperUp!1594 lt!2401141 (h!71883 s!2326)))))

(declare-fun lt!2401132 () (Set Context!11608))

(assert (=> b!6547563 (= lt!2401132 (derivationStepZipperUp!1594 lt!2401097 (h!71883 s!2326)))))

(assert (=> b!6547563 (= lt!2401116 (set.insert lt!2401141 (as set.empty (Set Context!11608))))))

(assert (=> b!6547563 (= lt!2401106 (set.insert lt!2401097 (as set.empty (Set Context!11608))))))

(assert (=> b!6547563 (= lt!2401097 (Context!11609 lt!2401125))))

(assert (=> b!6547563 (= lt!2401125 (Cons!65436 (reg!16749 (regOne!33352 r!7292)) Nil!65436))))

(declare-fun res!2685998 () Bool)

(declare-fun e!3964359 () Bool)

(assert (=> start!641580 (=> (not res!2685998) (not e!3964359))))

(assert (=> start!641580 (= res!2685998 (validRegex!8156 r!7292))))

(assert (=> start!641580 e!3964359))

(declare-fun e!3964343 () Bool)

(assert (=> start!641580 e!3964343))

(declare-fun condSetEmpty!44679 () Bool)

(declare-fun z!1189 () (Set Context!11608))

(assert (=> start!641580 (= condSetEmpty!44679 (= z!1189 (as set.empty (Set Context!11608))))))

(declare-fun setRes!44679 () Bool)

(assert (=> start!641580 setRes!44679))

(declare-fun e!3964347 () Bool)

(assert (=> start!641580 e!3964347))

(assert (=> start!641580 e!3964352))

(declare-fun e!3964366 () Bool)

(declare-fun setElem!44679 () Context!11608)

(declare-fun setNonEmpty!44679 () Bool)

(declare-fun tp!1811027 () Bool)

(declare-fun inv!84298 (Context!11608) Bool)

(assert (=> setNonEmpty!44679 (= setRes!44679 (and tp!1811027 (inv!84298 setElem!44679) e!3964366))))

(declare-fun setRest!44679 () (Set Context!11608))

(assert (=> setNonEmpty!44679 (= z!1189 (set.union (set.insert setElem!44679 (as set.empty (Set Context!11608))) setRest!44679))))

(declare-fun b!6547564 () Bool)

(declare-fun lt!2401099 () Bool)

(assert (=> b!6547564 (= e!3964368 lt!2401099)))

(declare-fun b!6547565 () Bool)

(declare-fun e!3964369 () Bool)

(declare-fun e!3964361 () Bool)

(assert (=> b!6547565 (= e!3964369 e!3964361)))

(declare-fun res!2686024 () Bool)

(assert (=> b!6547565 (=> res!2686024 e!3964361)))

(assert (=> b!6547565 (= res!2686024 e!3964354)))

(declare-fun res!2686010 () Bool)

(assert (=> b!6547565 (=> (not res!2686010) (not e!3964354))))

(declare-fun lt!2401100 () Bool)

(assert (=> b!6547565 (= res!2686010 (not lt!2401100))))

(declare-fun lt!2401128 () (Set Context!11608))

(assert (=> b!6547565 (= lt!2401100 (matchZipper!2432 lt!2401128 (t!379201 s!2326)))))

(declare-fun b!6547566 () Bool)

(declare-fun e!3964367 () Unit!159015)

(declare-fun Unit!159017 () Unit!159015)

(assert (=> b!6547566 (= e!3964367 Unit!159017)))

(declare-fun lt!2401145 () Unit!159015)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1251 ((Set Context!11608) (Set Context!11608) List!65559) Unit!159015)

(assert (=> b!6547566 (= lt!2401145 (lemmaZipperConcatMatchesSameAsBothZippers!1251 lt!2401128 lt!2401108 (t!379201 s!2326)))))

(declare-fun res!2685994 () Bool)

(assert (=> b!6547566 (= res!2685994 (matchZipper!2432 lt!2401128 (t!379201 s!2326)))))

(assert (=> b!6547566 (=> res!2685994 e!3964357)))

(assert (=> b!6547566 (= (matchZipper!2432 (set.union lt!2401128 lt!2401108) (t!379201 s!2326)) e!3964357)))

(declare-fun b!6547567 () Bool)

(declare-fun res!2686002 () Bool)

(assert (=> b!6547567 (=> res!2686002 e!3964351)))

(declare-fun zl!343 () List!65561)

(declare-fun generalisedConcat!2017 (List!65560) Regex!16420)

(assert (=> b!6547567 (= res!2686002 (not (= r!7292 (generalisedConcat!2017 (exprs!6304 (h!71885 zl!343))))))))

(declare-fun b!6547568 () Bool)

(declare-fun e!3964362 () Bool)

(declare-fun e!3964365 () Bool)

(assert (=> b!6547568 (= e!3964362 e!3964365)))

(declare-fun res!2686017 () Bool)

(assert (=> b!6547568 (=> res!2686017 e!3964365)))

(declare-fun lt!2401118 () (Set Context!11608))

(assert (=> b!6547568 (= res!2686017 (not (= lt!2401128 lt!2401118)))))

(declare-fun derivationStepZipperDown!1668 (Regex!16420 Context!11608 C!33110) (Set Context!11608))

(assert (=> b!6547568 (= lt!2401118 (derivationStepZipperDown!1668 (reg!16749 (regOne!33352 r!7292)) lt!2401141 (h!71883 s!2326)))))

(assert (=> b!6547568 (= lt!2401141 (Context!11609 lt!2401120))))

(assert (=> b!6547568 (= lt!2401120 (Cons!65436 lt!2401148 (t!379202 (exprs!6304 (h!71885 zl!343)))))))

(assert (=> b!6547568 (= lt!2401148 (Star!16420 (reg!16749 (regOne!33352 r!7292))))))

(declare-fun b!6547569 () Bool)

(declare-fun tp!1811032 () Bool)

(declare-fun tp!1811033 () Bool)

(assert (=> b!6547569 (= e!3964343 (and tp!1811032 tp!1811033))))

(declare-fun b!6547570 () Bool)

(declare-fun e!3964344 () Bool)

(declare-fun nullable!6413 (Regex!16420) Bool)

(assert (=> b!6547570 (= e!3964344 (nullable!6413 (regOne!33352 (regOne!33352 r!7292))))))

(declare-fun setIsEmpty!44679 () Bool)

(assert (=> setIsEmpty!44679 setRes!44679))

(declare-fun b!6547571 () Bool)

(assert (=> b!6547571 (= e!3964360 e!3964364)))

(declare-fun res!2686028 () Bool)

(assert (=> b!6547571 (=> res!2686028 e!3964364)))

(declare-fun lt!2401114 () Context!11608)

(assert (=> b!6547571 (= res!2686028 (not (= (unfocusZipper!2162 (Cons!65437 lt!2401114 Nil!65437)) lt!2401146)))))

(assert (=> b!6547571 (= lt!2401146 (Concat!25265 (reg!16749 (regOne!33352 r!7292)) lt!2401126))))

(declare-fun b!6547572 () Bool)

(declare-fun e!3964349 () Bool)

(assert (=> b!6547572 (= e!3964353 e!3964349)))

(declare-fun res!2686007 () Bool)

(assert (=> b!6547572 (=> res!2686007 e!3964349)))

(assert (=> b!6547572 (= res!2686007 (not (= (unfocusZipper!2162 lt!2401142) lt!2401126)))))

(assert (=> b!6547572 (= lt!2401142 (Cons!65437 lt!2401141 Nil!65437))))

(declare-fun b!6547573 () Bool)

(declare-fun res!2686013 () Bool)

(assert (=> b!6547573 (=> (not res!2686013) (not e!3964359))))

(declare-fun toList!10204 ((Set Context!11608)) List!65561)

(assert (=> b!6547573 (= res!2686013 (= (toList!10204 z!1189) zl!343))))

(declare-fun b!6547574 () Bool)

(declare-fun e!3964355 () Bool)

(assert (=> b!6547574 (= e!3964359 e!3964355)))

(declare-fun res!2686006 () Bool)

(assert (=> b!6547574 (=> (not res!2686006) (not e!3964355))))

(declare-fun lt!2401107 () Regex!16420)

(assert (=> b!6547574 (= res!2686006 (= r!7292 lt!2401107))))

(assert (=> b!6547574 (= lt!2401107 (unfocusZipper!2162 zl!343))))

(declare-fun b!6547575 () Bool)

(declare-fun tp!1811026 () Bool)

(declare-fun tp!1811028 () Bool)

(assert (=> b!6547575 (= e!3964343 (and tp!1811026 tp!1811028))))

(declare-fun b!6547576 () Bool)

(declare-fun res!2686009 () Bool)

(assert (=> b!6547576 (=> res!2686009 e!3964346)))

(assert (=> b!6547576 (= res!2686009 (not (matchZipper!2432 lt!2401116 (_2!36702 lt!2401103))))))

(declare-fun b!6547577 () Bool)

(declare-fun e!3964363 () Bool)

(assert (=> b!6547577 (= e!3964365 e!3964363)))

(declare-fun res!2685999 () Bool)

(assert (=> b!6547577 (=> res!2685999 e!3964363)))

(declare-fun lt!2401113 () (Set Context!11608))

(assert (=> b!6547577 (= res!2685999 (not (= lt!2401113 lt!2401118)))))

(declare-fun lt!2401137 () (Set Context!11608))

(assert (=> b!6547577 (= (flatMap!1925 lt!2401137 lambda!363522) (derivationStepZipperUp!1594 lt!2401114 (h!71883 s!2326)))))

(declare-fun lt!2401133 () Unit!159015)

(assert (=> b!6547577 (= lt!2401133 (lemmaFlatMapOnSingletonSet!1451 lt!2401137 lt!2401114 lambda!363522))))

(declare-fun lt!2401104 () (Set Context!11608))

(assert (=> b!6547577 (= lt!2401104 (derivationStepZipperUp!1594 lt!2401114 (h!71883 s!2326)))))

(declare-fun derivationStepZipper!2386 ((Set Context!11608) C!33110) (Set Context!11608))

(assert (=> b!6547577 (= lt!2401113 (derivationStepZipper!2386 lt!2401137 (h!71883 s!2326)))))

(assert (=> b!6547577 (= lt!2401137 (set.insert lt!2401114 (as set.empty (Set Context!11608))))))

(assert (=> b!6547577 (= lt!2401114 (Context!11609 (Cons!65436 (reg!16749 (regOne!33352 r!7292)) lt!2401120)))))

(declare-fun b!6547578 () Bool)

(declare-fun e!3964358 () Bool)

(declare-fun tp!1811024 () Bool)

(assert (=> b!6547578 (= e!3964358 tp!1811024)))

(declare-fun b!6547579 () Bool)

(declare-fun res!2686015 () Bool)

(assert (=> b!6547579 (=> res!2686015 e!3964369)))

(assert (=> b!6547579 (= res!2686015 (not (matchZipper!2432 z!1189 s!2326)))))

(declare-fun b!6547580 () Bool)

(assert (=> b!6547580 (= e!3964363 e!3964348)))

(declare-fun res!2686008 () Bool)

(assert (=> b!6547580 (=> res!2686008 e!3964348)))

(declare-fun lt!2401098 () Bool)

(assert (=> b!6547580 (= res!2686008 (not (= lt!2401098 (matchZipper!2432 lt!2401113 (t!379201 s!2326)))))))

(assert (=> b!6547580 (= lt!2401098 (matchZipper!2432 lt!2401137 s!2326))))

(declare-fun b!6547581 () Bool)

(declare-fun res!2686004 () Bool)

(assert (=> b!6547581 (=> res!2686004 e!3964351)))

(assert (=> b!6547581 (= res!2686004 (or (is-EmptyExpr!16420 r!7292) (is-EmptyLang!16420 r!7292) (is-ElementMatch!16420 r!7292) (is-Union!16420 r!7292) (not (is-Concat!25265 r!7292))))))

(declare-fun b!6547582 () Bool)

(assert (=> b!6547582 (= e!3964343 tp_is_empty!42093)))

(declare-fun b!6547583 () Bool)

(declare-fun res!2686023 () Bool)

(assert (=> b!6547583 (=> res!2686023 e!3964351)))

(declare-fun isEmpty!37659 (List!65561) Bool)

(assert (=> b!6547583 (= res!2686023 (not (isEmpty!37659 (t!379203 zl!343))))))

(declare-fun b!6547584 () Bool)

(assert (=> b!6547584 (= e!3964349 e!3964369)))

(declare-fun res!2686026 () Bool)

(assert (=> b!6547584 (=> res!2686026 e!3964369)))

(assert (=> b!6547584 (= res!2686026 lt!2401124)))

(assert (=> b!6547584 (= lt!2401099 (matchRSpec!3521 lt!2401146 s!2326))))

(assert (=> b!6547584 (= lt!2401099 (matchR!8603 lt!2401146 s!2326))))

(declare-fun lt!2401131 () Unit!159015)

(assert (=> b!6547584 (= lt!2401131 (mainMatchTheorem!3521 lt!2401146 s!2326))))

(declare-fun b!6547585 () Bool)

(declare-fun res!2686000 () Bool)

(assert (=> b!6547585 (=> res!2686000 e!3964351)))

(declare-fun generalisedUnion!2264 (List!65560) Regex!16420)

(declare-fun unfocusZipperList!1841 (List!65561) List!65560)

(assert (=> b!6547585 (= res!2686000 (not (= r!7292 (generalisedUnion!2264 (unfocusZipperList!1841 zl!343)))))))

(declare-fun b!6547586 () Bool)

(declare-fun tp!1811025 () Bool)

(assert (=> b!6547586 (= e!3964366 tp!1811025)))

(declare-fun b!6547587 () Bool)

(declare-fun Unit!159018 () Unit!159015)

(assert (=> b!6547587 (= e!3964367 Unit!159018)))

(declare-fun b!6547588 () Bool)

(assert (=> b!6547588 (= e!3964350 (validRegex!8156 (regTwo!33352 r!7292)))))

(declare-fun b!6547589 () Bool)

(declare-fun res!2685993 () Bool)

(assert (=> b!6547589 (=> res!2685993 e!3964351)))

(assert (=> b!6547589 (= res!2685993 (not (is-Cons!65436 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun b!6547590 () Bool)

(declare-fun res!2686011 () Bool)

(assert (=> b!6547590 (=> res!2686011 e!3964345)))

(declare-fun isEmpty!37660 (List!65560) Bool)

(assert (=> b!6547590 (= res!2686011 (isEmpty!37660 (t!379202 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun b!6547591 () Bool)

(declare-fun res!2686003 () Bool)

(assert (=> b!6547591 (=> res!2686003 e!3964369)))

(declare-fun lt!2401138 () Bool)

(assert (=> b!6547591 (= res!2686003 (not lt!2401138))))

(declare-fun b!6547592 () Bool)

(declare-fun res!2686018 () Bool)

(assert (=> b!6547592 (=> res!2686018 e!3964361)))

(assert (=> b!6547592 (= res!2686018 (or (not lt!2401100) (not lt!2401098)))))

(declare-fun b!6547593 () Bool)

(assert (=> b!6547593 (= e!3964355 (not e!3964351))))

(declare-fun res!2686012 () Bool)

(assert (=> b!6547593 (=> res!2686012 e!3964351)))

(assert (=> b!6547593 (= res!2686012 (not (is-Cons!65437 zl!343)))))

(assert (=> b!6547593 (= lt!2401124 (matchRSpec!3521 r!7292 s!2326))))

(assert (=> b!6547593 (= lt!2401124 (matchR!8603 r!7292 s!2326))))

(declare-fun lt!2401136 () Unit!159015)

(assert (=> b!6547593 (= lt!2401136 (mainMatchTheorem!3521 r!7292 s!2326))))

(declare-fun b!6547594 () Bool)

(declare-fun res!2686001 () Bool)

(assert (=> b!6547594 (=> res!2686001 e!3964362)))

(assert (=> b!6547594 (= res!2686001 (or (is-Concat!25265 (regOne!33352 r!7292)) (not (is-Star!16420 (regOne!33352 r!7292)))))))

(assert (=> b!6547595 (= e!3964345 e!3964362)))

(declare-fun res!2686005 () Bool)

(assert (=> b!6547595 (=> res!2686005 e!3964362)))

(assert (=> b!6547595 (= res!2686005 (or (and (is-ElementMatch!16420 (regOne!33352 r!7292)) (= (c!1202553 (regOne!33352 r!7292)) (h!71883 s!2326))) (is-Union!16420 (regOne!33352 r!7292))))))

(declare-fun lt!2401112 () Unit!159015)

(assert (=> b!6547595 (= lt!2401112 e!3964367)))

(declare-fun c!1202552 () Bool)

(assert (=> b!6547595 (= c!1202552 lt!2401138)))

(assert (=> b!6547595 (= lt!2401138 (nullable!6413 (h!71884 (exprs!6304 (h!71885 zl!343)))))))

(assert (=> b!6547595 (= (flatMap!1925 z!1189 lambda!363522) (derivationStepZipperUp!1594 (h!71885 zl!343) (h!71883 s!2326)))))

(declare-fun lt!2401119 () Unit!159015)

(assert (=> b!6547595 (= lt!2401119 (lemmaFlatMapOnSingletonSet!1451 z!1189 (h!71885 zl!343) lambda!363522))))

(declare-fun lt!2401109 () Context!11608)

(assert (=> b!6547595 (= lt!2401108 (derivationStepZipperUp!1594 lt!2401109 (h!71883 s!2326)))))

(assert (=> b!6547595 (= lt!2401128 (derivationStepZipperDown!1668 (h!71884 (exprs!6304 (h!71885 zl!343))) lt!2401109 (h!71883 s!2326)))))

(assert (=> b!6547595 (= lt!2401109 (Context!11609 (t!379202 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun lt!2401102 () (Set Context!11608))

(assert (=> b!6547595 (= lt!2401102 (derivationStepZipperUp!1594 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343))))) (h!71883 s!2326)))))

(declare-fun b!6547596 () Bool)

(declare-fun tp!1811030 () Bool)

(assert (=> b!6547596 (= e!3964343 tp!1811030)))

(declare-fun b!6547597 () Bool)

(declare-fun res!2686027 () Bool)

(assert (=> b!6547597 (=> res!2686027 e!3964362)))

(assert (=> b!6547597 (= res!2686027 e!3964344)))

(declare-fun res!2685996 () Bool)

(assert (=> b!6547597 (=> (not res!2685996) (not e!3964344))))

(assert (=> b!6547597 (= res!2685996 (is-Concat!25265 (regOne!33352 r!7292)))))

(declare-fun e!3964356 () Bool)

(assert (=> b!6547598 (= e!3964361 e!3964356)))

(declare-fun res!2685995 () Bool)

(assert (=> b!6547598 (=> res!2685995 e!3964356)))

(declare-fun appendTo!181 ((Set Context!11608) Context!11608) (Set Context!11608))

(assert (=> b!6547598 (= res!2685995 (not (= (appendTo!181 lt!2401106 lt!2401141) lt!2401137)))))

(declare-fun lambda!363523 () Int)

(declare-fun map!14939 ((Set Context!11608) Int) (Set Context!11608))

(assert (=> b!6547598 (= (map!14939 lt!2401106 lambda!363523) (set.insert (Context!11609 (++!14542 lt!2401125 lt!2401120)) (as set.empty (Set Context!11608))))))

(declare-fun lt!2401123 () Unit!159015)

(assert (=> b!6547598 (= lt!2401123 (lemmaConcatPreservesForall!393 lt!2401125 lt!2401120 lambda!363524))))

(declare-fun lt!2401127 () Unit!159015)

(declare-fun lemmaMapOnSingletonSet!203 ((Set Context!11608) Context!11608 Int) Unit!159015)

(assert (=> b!6547598 (= lt!2401127 (lemmaMapOnSingletonSet!203 lt!2401106 lt!2401097 lambda!363523))))

(declare-fun b!6547599 () Bool)

(declare-fun res!2686020 () Bool)

(assert (=> b!6547599 (=> res!2686020 e!3964348)))

(assert (=> b!6547599 (= res!2686020 (not (= lt!2401107 r!7292)))))

(declare-fun b!6547600 () Bool)

(declare-fun tp!1811029 () Bool)

(assert (=> b!6547600 (= e!3964347 (and (inv!84298 (h!71885 zl!343)) e!3964358 tp!1811029))))

(declare-fun b!6547601 () Bool)

(assert (=> b!6547601 (= e!3964356 e!3964346)))

(declare-fun res!2686022 () Bool)

(assert (=> b!6547601 (=> res!2686022 e!3964346)))

(assert (=> b!6547601 (= res!2686022 (not (= s!2326 lt!2401101)))))

(declare-fun ++!14543 (List!65559 List!65559) List!65559)

(assert (=> b!6547601 (= lt!2401101 (++!14543 (_1!36702 lt!2401103) (_2!36702 lt!2401103)))))

(declare-fun lt!2401143 () Option!16311)

(declare-fun get!22712 (Option!16311) tuple2!66798)

(assert (=> b!6547601 (= lt!2401103 (get!22712 lt!2401143))))

(assert (=> b!6547601 (isDefined!13014 lt!2401143)))

(declare-fun findConcatSeparationZippers!185 ((Set Context!11608) (Set Context!11608) List!65559 List!65559 List!65559) Option!16311)

(assert (=> b!6547601 (= lt!2401143 (findConcatSeparationZippers!185 lt!2401106 lt!2401116 Nil!65435 s!2326 s!2326))))

(declare-fun lt!2401117 () Unit!159015)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!185 ((Set Context!11608) Context!11608 List!65559) Unit!159015)

(assert (=> b!6547601 (= lt!2401117 (lemmaConcatZipperMatchesStringThenFindConcatDefined!185 lt!2401106 lt!2401141 s!2326))))

(declare-fun b!6547602 () Bool)

(declare-fun res!2686014 () Bool)

(assert (=> b!6547602 (=> res!2686014 e!3964346)))

(assert (=> b!6547602 (= res!2686014 (not (matchZipper!2432 lt!2401106 (_1!36702 lt!2401103))))))

(assert (= (and start!641580 res!2685998) b!6547573))

(assert (= (and b!6547573 res!2686013) b!6547574))

(assert (= (and b!6547574 res!2686006) b!6547593))

(assert (= (and b!6547593 (not res!2686012)) b!6547583))

(assert (= (and b!6547583 (not res!2686023)) b!6547567))

(assert (= (and b!6547567 (not res!2686002)) b!6547589))

(assert (= (and b!6547589 (not res!2685993)) b!6547585))

(assert (= (and b!6547585 (not res!2686000)) b!6547581))

(assert (= (and b!6547581 (not res!2686004)) b!6547559))

(assert (= (and b!6547559 (not res!2686025)) b!6547590))

(assert (= (and b!6547590 (not res!2686011)) b!6547595))

(assert (= (and b!6547595 c!1202552) b!6547566))

(assert (= (and b!6547595 (not c!1202552)) b!6547587))

(assert (= (and b!6547566 (not res!2685994)) b!6547562))

(assert (= (and b!6547595 (not res!2686005)) b!6547597))

(assert (= (and b!6547597 res!2685996) b!6547570))

(assert (= (and b!6547597 (not res!2686027)) b!6547594))

(assert (= (and b!6547594 (not res!2686001)) b!6547568))

(assert (= (and b!6547568 (not res!2686017)) b!6547577))

(assert (= (and b!6547577 (not res!2685999)) b!6547580))

(assert (= (and b!6547580 (not res!2686008)) b!6547599))

(assert (= (and b!6547599 (not res!2686020)) b!6547561))

(assert (= (and b!6547561 (not res!2686021)) b!6547571))

(assert (= (and b!6547571 (not res!2686028)) b!6547563))

(assert (= (and b!6547563 (not res!2686019)) b!6547572))

(assert (= (and b!6547572 (not res!2686007)) b!6547584))

(assert (= (and b!6547584 (not res!2686026)) b!6547579))

(assert (= (and b!6547579 (not res!2686015)) b!6547591))

(assert (= (and b!6547591 (not res!2686003)) b!6547565))

(assert (= (and b!6547565 res!2686010) b!6547558))

(assert (= (and b!6547565 (not res!2686024)) b!6547592))

(assert (= (and b!6547592 (not res!2686018)) b!6547598))

(assert (= (and b!6547598 (not res!2685995)) b!6547601))

(assert (= (and b!6547601 (not res!2686022)) b!6547602))

(assert (= (and b!6547602 (not res!2686014)) b!6547576))

(assert (= (and b!6547576 (not res!2686009)) b!6547557))

(assert (= (and b!6547557 res!2686016) b!6547564))

(assert (= (and b!6547557 (not res!2685997)) b!6547588))

(assert (= (and start!641580 (is-ElementMatch!16420 r!7292)) b!6547582))

(assert (= (and start!641580 (is-Concat!25265 r!7292)) b!6547575))

(assert (= (and start!641580 (is-Star!16420 r!7292)) b!6547596))

(assert (= (and start!641580 (is-Union!16420 r!7292)) b!6547569))

(assert (= (and start!641580 condSetEmpty!44679) setIsEmpty!44679))

(assert (= (and start!641580 (not condSetEmpty!44679)) setNonEmpty!44679))

(assert (= setNonEmpty!44679 b!6547586))

(assert (= b!6547600 b!6547578))

(assert (= (and start!641580 (is-Cons!65437 zl!343)) b!6547600))

(assert (= (and start!641580 (is-Cons!65435 s!2326)) b!6547560))

(declare-fun m!7330224 () Bool)

(assert (=> b!6547601 m!7330224))

(declare-fun m!7330226 () Bool)

(assert (=> b!6547601 m!7330226))

(declare-fun m!7330228 () Bool)

(assert (=> b!6547601 m!7330228))

(declare-fun m!7330230 () Bool)

(assert (=> b!6547601 m!7330230))

(declare-fun m!7330232 () Bool)

(assert (=> b!6547601 m!7330232))

(declare-fun m!7330234 () Bool)

(assert (=> b!6547562 m!7330234))

(declare-fun m!7330236 () Bool)

(assert (=> start!641580 m!7330236))

(declare-fun m!7330238 () Bool)

(assert (=> b!6547574 m!7330238))

(declare-fun m!7330240 () Bool)

(assert (=> b!6547595 m!7330240))

(declare-fun m!7330242 () Bool)

(assert (=> b!6547595 m!7330242))

(declare-fun m!7330244 () Bool)

(assert (=> b!6547595 m!7330244))

(declare-fun m!7330246 () Bool)

(assert (=> b!6547595 m!7330246))

(declare-fun m!7330248 () Bool)

(assert (=> b!6547595 m!7330248))

(declare-fun m!7330250 () Bool)

(assert (=> b!6547595 m!7330250))

(declare-fun m!7330252 () Bool)

(assert (=> b!6547595 m!7330252))

(declare-fun m!7330254 () Bool)

(assert (=> b!6547577 m!7330254))

(declare-fun m!7330256 () Bool)

(assert (=> b!6547577 m!7330256))

(declare-fun m!7330258 () Bool)

(assert (=> b!6547577 m!7330258))

(declare-fun m!7330260 () Bool)

(assert (=> b!6547577 m!7330260))

(declare-fun m!7330262 () Bool)

(assert (=> b!6547577 m!7330262))

(declare-fun m!7330264 () Bool)

(assert (=> b!6547566 m!7330264))

(declare-fun m!7330266 () Bool)

(assert (=> b!6547566 m!7330266))

(declare-fun m!7330268 () Bool)

(assert (=> b!6547566 m!7330268))

(declare-fun m!7330270 () Bool)

(assert (=> b!6547602 m!7330270))

(declare-fun m!7330272 () Bool)

(assert (=> b!6547570 m!7330272))

(declare-fun m!7330274 () Bool)

(assert (=> b!6547600 m!7330274))

(declare-fun m!7330276 () Bool)

(assert (=> b!6547557 m!7330276))

(declare-fun m!7330278 () Bool)

(assert (=> b!6547557 m!7330278))

(declare-fun m!7330280 () Bool)

(assert (=> b!6547557 m!7330280))

(declare-fun m!7330282 () Bool)

(assert (=> b!6547557 m!7330282))

(declare-fun m!7330284 () Bool)

(assert (=> b!6547557 m!7330284))

(declare-fun m!7330286 () Bool)

(assert (=> b!6547557 m!7330286))

(declare-fun m!7330288 () Bool)

(assert (=> b!6547557 m!7330288))

(declare-fun m!7330290 () Bool)

(assert (=> b!6547557 m!7330290))

(declare-fun m!7330292 () Bool)

(assert (=> b!6547557 m!7330292))

(declare-fun m!7330294 () Bool)

(assert (=> b!6547557 m!7330294))

(declare-fun m!7330296 () Bool)

(assert (=> b!6547557 m!7330296))

(declare-fun m!7330298 () Bool)

(assert (=> b!6547557 m!7330298))

(declare-fun m!7330300 () Bool)

(assert (=> b!6547557 m!7330300))

(declare-fun m!7330302 () Bool)

(assert (=> b!6547557 m!7330302))

(declare-fun m!7330304 () Bool)

(assert (=> b!6547557 m!7330304))

(assert (=> b!6547557 m!7330296))

(declare-fun m!7330306 () Bool)

(assert (=> b!6547557 m!7330306))

(declare-fun m!7330308 () Bool)

(assert (=> b!6547572 m!7330308))

(declare-fun m!7330310 () Bool)

(assert (=> b!6547571 m!7330310))

(declare-fun m!7330312 () Bool)

(assert (=> b!6547593 m!7330312))

(declare-fun m!7330314 () Bool)

(assert (=> b!6547593 m!7330314))

(declare-fun m!7330316 () Bool)

(assert (=> b!6547593 m!7330316))

(declare-fun m!7330318 () Bool)

(assert (=> b!6547576 m!7330318))

(declare-fun m!7330320 () Bool)

(assert (=> b!6547598 m!7330320))

(assert (=> b!6547598 m!7330280))

(assert (=> b!6547598 m!7330276))

(declare-fun m!7330322 () Bool)

(assert (=> b!6547598 m!7330322))

(declare-fun m!7330324 () Bool)

(assert (=> b!6547598 m!7330324))

(assert (=> b!6547598 m!7330296))

(declare-fun m!7330326 () Bool)

(assert (=> b!6547585 m!7330326))

(assert (=> b!6547585 m!7330326))

(declare-fun m!7330328 () Bool)

(assert (=> b!6547585 m!7330328))

(declare-fun m!7330330 () Bool)

(assert (=> b!6547588 m!7330330))

(declare-fun m!7330332 () Bool)

(assert (=> setNonEmpty!44679 m!7330332))

(declare-fun m!7330334 () Bool)

(assert (=> b!6547563 m!7330334))

(declare-fun m!7330336 () Bool)

(assert (=> b!6547563 m!7330336))

(declare-fun m!7330338 () Bool)

(assert (=> b!6547563 m!7330338))

(declare-fun m!7330340 () Bool)

(assert (=> b!6547563 m!7330340))

(declare-fun m!7330342 () Bool)

(assert (=> b!6547563 m!7330342))

(declare-fun m!7330344 () Bool)

(assert (=> b!6547563 m!7330344))

(declare-fun m!7330346 () Bool)

(assert (=> b!6547563 m!7330346))

(declare-fun m!7330348 () Bool)

(assert (=> b!6547563 m!7330348))

(declare-fun m!7330350 () Bool)

(assert (=> b!6547563 m!7330350))

(declare-fun m!7330352 () Bool)

(assert (=> b!6547583 m!7330352))

(assert (=> b!6547565 m!7330266))

(declare-fun m!7330354 () Bool)

(assert (=> b!6547559 m!7330354))

(declare-fun m!7330356 () Bool)

(assert (=> b!6547559 m!7330356))

(declare-fun m!7330358 () Bool)

(assert (=> b!6547559 m!7330358))

(declare-fun m!7330360 () Bool)

(assert (=> b!6547559 m!7330360))

(assert (=> b!6547559 m!7330354))

(declare-fun m!7330362 () Bool)

(assert (=> b!6547559 m!7330362))

(assert (=> b!6547559 m!7330358))

(declare-fun m!7330364 () Bool)

(assert (=> b!6547559 m!7330364))

(declare-fun m!7330366 () Bool)

(assert (=> b!6547567 m!7330366))

(declare-fun m!7330368 () Bool)

(assert (=> b!6547568 m!7330368))

(declare-fun m!7330370 () Bool)

(assert (=> b!6547590 m!7330370))

(declare-fun m!7330372 () Bool)

(assert (=> b!6547573 m!7330372))

(assert (=> b!6547558 m!7330234))

(declare-fun m!7330374 () Bool)

(assert (=> b!6547584 m!7330374))

(declare-fun m!7330376 () Bool)

(assert (=> b!6547584 m!7330376))

(declare-fun m!7330378 () Bool)

(assert (=> b!6547584 m!7330378))

(declare-fun m!7330380 () Bool)

(assert (=> b!6547579 m!7330380))

(declare-fun m!7330382 () Bool)

(assert (=> b!6547580 m!7330382))

(declare-fun m!7330384 () Bool)

(assert (=> b!6547580 m!7330384))

(push 1)

(assert (not b!6547593))

(assert (not b!6547588))

(assert (not b!6547576))

(assert (not b!6547565))

(assert (not b!6547568))

(assert (not b!6547577))

(assert (not b!6547590))

(assert (not start!641580))

(assert (not b!6547601))

(assert (not setNonEmpty!44679))

(assert (not b!6547566))

(assert (not b!6547570))

(assert (not b!6547562))

(assert (not b!6547598))

(assert (not b!6547600))

(assert (not b!6547578))

(assert (not b!6547569))

(assert (not b!6547574))

(assert (not b!6547584))

(assert (not b!6547571))

(assert (not b!6547575))

(assert (not b!6547572))

(assert (not b!6547583))

(assert (not b!6547602))

(assert (not b!6547558))

(assert (not b!6547573))

(assert (not b!6547559))

(assert (not b!6547585))

(assert (not b!6547596))

(assert tp_is_empty!42093)

(assert (not b!6547580))

(assert (not b!6547563))

(assert (not b!6547560))

(assert (not b!6547586))

(assert (not b!6547595))

(assert (not b!6547557))

(assert (not b!6547567))

(assert (not b!6547579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2055226 () Bool)

(declare-fun c!1202571 () Bool)

(declare-fun isEmpty!37663 (List!65559) Bool)

(assert (=> d!2055226 (= c!1202571 (isEmpty!37663 (t!379201 s!2326)))))

(declare-fun e!3964459 () Bool)

(assert (=> d!2055226 (= (matchZipper!2432 lt!2401128 (t!379201 s!2326)) e!3964459)))

(declare-fun b!6547773 () Bool)

(declare-fun nullableZipper!2165 ((Set Context!11608)) Bool)

(assert (=> b!6547773 (= e!3964459 (nullableZipper!2165 lt!2401128))))

(declare-fun b!6547774 () Bool)

(declare-fun head!13291 (List!65559) C!33110)

(declare-fun tail!12376 (List!65559) List!65559)

(assert (=> b!6547774 (= e!3964459 (matchZipper!2432 (derivationStepZipper!2386 lt!2401128 (head!13291 (t!379201 s!2326))) (tail!12376 (t!379201 s!2326))))))

(assert (= (and d!2055226 c!1202571) b!6547773))

(assert (= (and d!2055226 (not c!1202571)) b!6547774))

(declare-fun m!7330548 () Bool)

(assert (=> d!2055226 m!7330548))

(declare-fun m!7330550 () Bool)

(assert (=> b!6547773 m!7330550))

(declare-fun m!7330552 () Bool)

(assert (=> b!6547774 m!7330552))

(assert (=> b!6547774 m!7330552))

(declare-fun m!7330554 () Bool)

(assert (=> b!6547774 m!7330554))

(declare-fun m!7330556 () Bool)

(assert (=> b!6547774 m!7330556))

(assert (=> b!6547774 m!7330554))

(assert (=> b!6547774 m!7330556))

(declare-fun m!7330558 () Bool)

(assert (=> b!6547774 m!7330558))

(assert (=> b!6547565 d!2055226))

(declare-fun bs!1671824 () Bool)

(declare-fun d!2055228 () Bool)

(assert (= bs!1671824 (and d!2055228 b!6547598)))

(declare-fun lambda!363554 () Int)

(assert (=> bs!1671824 (= lambda!363554 lambda!363524)))

(declare-fun b!6547795 () Bool)

(declare-fun e!3964477 () Bool)

(declare-fun lt!2401315 () Regex!16420)

(declare-fun isEmptyLang!1807 (Regex!16420) Bool)

(assert (=> b!6547795 (= e!3964477 (isEmptyLang!1807 lt!2401315))))

(declare-fun e!3964474 () Bool)

(assert (=> d!2055228 e!3964474))

(declare-fun res!2686155 () Bool)

(assert (=> d!2055228 (=> (not res!2686155) (not e!3964474))))

(assert (=> d!2055228 (= res!2686155 (validRegex!8156 lt!2401315))))

(declare-fun e!3964472 () Regex!16420)

(assert (=> d!2055228 (= lt!2401315 e!3964472)))

(declare-fun c!1202580 () Bool)

(declare-fun e!3964476 () Bool)

(assert (=> d!2055228 (= c!1202580 e!3964476)))

(declare-fun res!2686154 () Bool)

(assert (=> d!2055228 (=> (not res!2686154) (not e!3964476))))

(assert (=> d!2055228 (= res!2686154 (is-Cons!65436 (unfocusZipperList!1841 zl!343)))))

(declare-fun forall!15592 (List!65560 Int) Bool)

(assert (=> d!2055228 (forall!15592 (unfocusZipperList!1841 zl!343) lambda!363554)))

(assert (=> d!2055228 (= (generalisedUnion!2264 (unfocusZipperList!1841 zl!343)) lt!2401315)))

(declare-fun b!6547796 () Bool)

(assert (=> b!6547796 (= e!3964476 (isEmpty!37660 (t!379202 (unfocusZipperList!1841 zl!343))))))

(declare-fun b!6547797 () Bool)

(declare-fun e!3964475 () Regex!16420)

(assert (=> b!6547797 (= e!3964475 EmptyLang!16420)))

(declare-fun b!6547798 () Bool)

(assert (=> b!6547798 (= e!3964474 e!3964477)))

(declare-fun c!1202581 () Bool)

(assert (=> b!6547798 (= c!1202581 (isEmpty!37660 (unfocusZipperList!1841 zl!343)))))

(declare-fun b!6547799 () Bool)

(declare-fun e!3964473 () Bool)

(assert (=> b!6547799 (= e!3964477 e!3964473)))

(declare-fun c!1202583 () Bool)

(declare-fun tail!12377 (List!65560) List!65560)

(assert (=> b!6547799 (= c!1202583 (isEmpty!37660 (tail!12377 (unfocusZipperList!1841 zl!343))))))

(declare-fun b!6547800 () Bool)

(assert (=> b!6547800 (= e!3964475 (Union!16420 (h!71884 (unfocusZipperList!1841 zl!343)) (generalisedUnion!2264 (t!379202 (unfocusZipperList!1841 zl!343)))))))

(declare-fun b!6547801 () Bool)

(declare-fun head!13292 (List!65560) Regex!16420)

(assert (=> b!6547801 (= e!3964473 (= lt!2401315 (head!13292 (unfocusZipperList!1841 zl!343))))))

(declare-fun b!6547802 () Bool)

(declare-fun isUnion!1237 (Regex!16420) Bool)

(assert (=> b!6547802 (= e!3964473 (isUnion!1237 lt!2401315))))

(declare-fun b!6547803 () Bool)

(assert (=> b!6547803 (= e!3964472 (h!71884 (unfocusZipperList!1841 zl!343)))))

(declare-fun b!6547804 () Bool)

(assert (=> b!6547804 (= e!3964472 e!3964475)))

(declare-fun c!1202582 () Bool)

(assert (=> b!6547804 (= c!1202582 (is-Cons!65436 (unfocusZipperList!1841 zl!343)))))

(assert (= (and d!2055228 res!2686154) b!6547796))

(assert (= (and d!2055228 c!1202580) b!6547803))

(assert (= (and d!2055228 (not c!1202580)) b!6547804))

(assert (= (and b!6547804 c!1202582) b!6547800))

(assert (= (and b!6547804 (not c!1202582)) b!6547797))

(assert (= (and d!2055228 res!2686155) b!6547798))

(assert (= (and b!6547798 c!1202581) b!6547795))

(assert (= (and b!6547798 (not c!1202581)) b!6547799))

(assert (= (and b!6547799 c!1202583) b!6547801))

(assert (= (and b!6547799 (not c!1202583)) b!6547802))

(declare-fun m!7330560 () Bool)

(assert (=> b!6547795 m!7330560))

(assert (=> b!6547799 m!7330326))

(declare-fun m!7330562 () Bool)

(assert (=> b!6547799 m!7330562))

(assert (=> b!6547799 m!7330562))

(declare-fun m!7330564 () Bool)

(assert (=> b!6547799 m!7330564))

(declare-fun m!7330566 () Bool)

(assert (=> d!2055228 m!7330566))

(assert (=> d!2055228 m!7330326))

(declare-fun m!7330568 () Bool)

(assert (=> d!2055228 m!7330568))

(declare-fun m!7330570 () Bool)

(assert (=> b!6547796 m!7330570))

(assert (=> b!6547801 m!7330326))

(declare-fun m!7330572 () Bool)

(assert (=> b!6547801 m!7330572))

(assert (=> b!6547798 m!7330326))

(declare-fun m!7330574 () Bool)

(assert (=> b!6547798 m!7330574))

(declare-fun m!7330576 () Bool)

(assert (=> b!6547800 m!7330576))

(declare-fun m!7330578 () Bool)

(assert (=> b!6547802 m!7330578))

(assert (=> b!6547585 d!2055228))

(declare-fun bs!1671825 () Bool)

(declare-fun d!2055230 () Bool)

(assert (= bs!1671825 (and d!2055230 b!6547598)))

(declare-fun lambda!363557 () Int)

(assert (=> bs!1671825 (= lambda!363557 lambda!363524)))

(declare-fun bs!1671826 () Bool)

(assert (= bs!1671826 (and d!2055230 d!2055228)))

(assert (=> bs!1671826 (= lambda!363557 lambda!363554)))

(declare-fun lt!2401318 () List!65560)

(assert (=> d!2055230 (forall!15592 lt!2401318 lambda!363557)))

(declare-fun e!3964480 () List!65560)

(assert (=> d!2055230 (= lt!2401318 e!3964480)))

(declare-fun c!1202586 () Bool)

(assert (=> d!2055230 (= c!1202586 (is-Cons!65437 zl!343))))

(assert (=> d!2055230 (= (unfocusZipperList!1841 zl!343) lt!2401318)))

(declare-fun b!6547809 () Bool)

(assert (=> b!6547809 (= e!3964480 (Cons!65436 (generalisedConcat!2017 (exprs!6304 (h!71885 zl!343))) (unfocusZipperList!1841 (t!379203 zl!343))))))

(declare-fun b!6547810 () Bool)

(assert (=> b!6547810 (= e!3964480 Nil!65436)))

(assert (= (and d!2055230 c!1202586) b!6547809))

(assert (= (and d!2055230 (not c!1202586)) b!6547810))

(declare-fun m!7330580 () Bool)

(assert (=> d!2055230 m!7330580))

(assert (=> b!6547809 m!7330366))

(declare-fun m!7330582 () Bool)

(assert (=> b!6547809 m!7330582))

(assert (=> b!6547585 d!2055230))

(declare-fun e!3964483 () Bool)

(declare-fun d!2055232 () Bool)

(assert (=> d!2055232 (= (matchZipper!2432 (set.union lt!2401128 lt!2401108) (t!379201 s!2326)) e!3964483)))

(declare-fun res!2686158 () Bool)

(assert (=> d!2055232 (=> res!2686158 e!3964483)))

(assert (=> d!2055232 (= res!2686158 (matchZipper!2432 lt!2401128 (t!379201 s!2326)))))

(declare-fun lt!2401321 () Unit!159015)

(declare-fun choose!48669 ((Set Context!11608) (Set Context!11608) List!65559) Unit!159015)

(assert (=> d!2055232 (= lt!2401321 (choose!48669 lt!2401128 lt!2401108 (t!379201 s!2326)))))

(assert (=> d!2055232 (= (lemmaZipperConcatMatchesSameAsBothZippers!1251 lt!2401128 lt!2401108 (t!379201 s!2326)) lt!2401321)))

(declare-fun b!6547813 () Bool)

(assert (=> b!6547813 (= e!3964483 (matchZipper!2432 lt!2401108 (t!379201 s!2326)))))

(assert (= (and d!2055232 (not res!2686158)) b!6547813))

(assert (=> d!2055232 m!7330268))

(assert (=> d!2055232 m!7330266))

(declare-fun m!7330584 () Bool)

(assert (=> d!2055232 m!7330584))

(assert (=> b!6547813 m!7330234))

(assert (=> b!6547566 d!2055232))

(assert (=> b!6547566 d!2055226))

(declare-fun d!2055234 () Bool)

(declare-fun c!1202587 () Bool)

(assert (=> d!2055234 (= c!1202587 (isEmpty!37663 (t!379201 s!2326)))))

(declare-fun e!3964484 () Bool)

(assert (=> d!2055234 (= (matchZipper!2432 (set.union lt!2401128 lt!2401108) (t!379201 s!2326)) e!3964484)))

(declare-fun b!6547814 () Bool)

(assert (=> b!6547814 (= e!3964484 (nullableZipper!2165 (set.union lt!2401128 lt!2401108)))))

(declare-fun b!6547815 () Bool)

(assert (=> b!6547815 (= e!3964484 (matchZipper!2432 (derivationStepZipper!2386 (set.union lt!2401128 lt!2401108) (head!13291 (t!379201 s!2326))) (tail!12376 (t!379201 s!2326))))))

(assert (= (and d!2055234 c!1202587) b!6547814))

(assert (= (and d!2055234 (not c!1202587)) b!6547815))

(assert (=> d!2055234 m!7330548))

(declare-fun m!7330586 () Bool)

(assert (=> b!6547814 m!7330586))

(assert (=> b!6547815 m!7330552))

(assert (=> b!6547815 m!7330552))

(declare-fun m!7330588 () Bool)

(assert (=> b!6547815 m!7330588))

(assert (=> b!6547815 m!7330556))

(assert (=> b!6547815 m!7330588))

(assert (=> b!6547815 m!7330556))

(declare-fun m!7330590 () Bool)

(assert (=> b!6547815 m!7330590))

(assert (=> b!6547566 d!2055234))

(declare-fun bs!1671827 () Bool)

(declare-fun d!2055236 () Bool)

(assert (= bs!1671827 (and d!2055236 b!6547598)))

(declare-fun lambda!363560 () Int)

(assert (=> bs!1671827 (= lambda!363560 lambda!363524)))

(declare-fun bs!1671828 () Bool)

(assert (= bs!1671828 (and d!2055236 d!2055228)))

(assert (=> bs!1671828 (= lambda!363560 lambda!363554)))

(declare-fun bs!1671829 () Bool)

(assert (= bs!1671829 (and d!2055236 d!2055230)))

(assert (=> bs!1671829 (= lambda!363560 lambda!363557)))

(declare-fun b!6547836 () Bool)

(declare-fun e!3964499 () Regex!16420)

(assert (=> b!6547836 (= e!3964499 (h!71884 (exprs!6304 (h!71885 zl!343))))))

(declare-fun b!6547837 () Bool)

(declare-fun e!3964500 () Bool)

(declare-fun lt!2401324 () Regex!16420)

(assert (=> b!6547837 (= e!3964500 (= lt!2401324 (head!13292 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun b!6547838 () Bool)

(declare-fun e!3964497 () Bool)

(assert (=> b!6547838 (= e!3964497 e!3964500)))

(declare-fun c!1202598 () Bool)

(assert (=> b!6547838 (= c!1202598 (isEmpty!37660 (tail!12377 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun b!6547839 () Bool)

(declare-fun isConcat!1322 (Regex!16420) Bool)

(assert (=> b!6547839 (= e!3964500 (isConcat!1322 lt!2401324))))

(declare-fun b!6547840 () Bool)

(declare-fun e!3964498 () Bool)

(assert (=> b!6547840 (= e!3964498 e!3964497)))

(declare-fun c!1202597 () Bool)

(assert (=> b!6547840 (= c!1202597 (isEmpty!37660 (exprs!6304 (h!71885 zl!343))))))

(declare-fun b!6547841 () Bool)

(declare-fun isEmptyExpr!1799 (Regex!16420) Bool)

(assert (=> b!6547841 (= e!3964497 (isEmptyExpr!1799 lt!2401324))))

(assert (=> d!2055236 e!3964498))

(declare-fun res!2686164 () Bool)

(assert (=> d!2055236 (=> (not res!2686164) (not e!3964498))))

(assert (=> d!2055236 (= res!2686164 (validRegex!8156 lt!2401324))))

(assert (=> d!2055236 (= lt!2401324 e!3964499)))

(declare-fun c!1202599 () Bool)

(declare-fun e!3964501 () Bool)

(assert (=> d!2055236 (= c!1202599 e!3964501)))

(declare-fun res!2686163 () Bool)

(assert (=> d!2055236 (=> (not res!2686163) (not e!3964501))))

(assert (=> d!2055236 (= res!2686163 (is-Cons!65436 (exprs!6304 (h!71885 zl!343))))))

(assert (=> d!2055236 (forall!15592 (exprs!6304 (h!71885 zl!343)) lambda!363560)))

(assert (=> d!2055236 (= (generalisedConcat!2017 (exprs!6304 (h!71885 zl!343))) lt!2401324)))

(declare-fun b!6547842 () Bool)

(declare-fun e!3964502 () Regex!16420)

(assert (=> b!6547842 (= e!3964502 EmptyExpr!16420)))

(declare-fun b!6547843 () Bool)

(assert (=> b!6547843 (= e!3964499 e!3964502)))

(declare-fun c!1202596 () Bool)

(assert (=> b!6547843 (= c!1202596 (is-Cons!65436 (exprs!6304 (h!71885 zl!343))))))

(declare-fun b!6547844 () Bool)

(assert (=> b!6547844 (= e!3964502 (Concat!25265 (h!71884 (exprs!6304 (h!71885 zl!343))) (generalisedConcat!2017 (t!379202 (exprs!6304 (h!71885 zl!343))))))))

(declare-fun b!6547845 () Bool)

(assert (=> b!6547845 (= e!3964501 (isEmpty!37660 (t!379202 (exprs!6304 (h!71885 zl!343)))))))

(assert (= (and d!2055236 res!2686163) b!6547845))

(assert (= (and d!2055236 c!1202599) b!6547836))

(assert (= (and d!2055236 (not c!1202599)) b!6547843))

(assert (= (and b!6547843 c!1202596) b!6547844))

(assert (= (and b!6547843 (not c!1202596)) b!6547842))

(assert (= (and d!2055236 res!2686164) b!6547840))

(assert (= (and b!6547840 c!1202597) b!6547841))

(assert (= (and b!6547840 (not c!1202597)) b!6547838))

(assert (= (and b!6547838 c!1202598) b!6547837))

(assert (= (and b!6547838 (not c!1202598)) b!6547839))

(declare-fun m!7330592 () Bool)

(assert (=> d!2055236 m!7330592))

(declare-fun m!7330594 () Bool)

(assert (=> d!2055236 m!7330594))

(assert (=> b!6547845 m!7330370))

(declare-fun m!7330596 () Bool)

(assert (=> b!6547837 m!7330596))

(declare-fun m!7330598 () Bool)

(assert (=> b!6547838 m!7330598))

(assert (=> b!6547838 m!7330598))

(declare-fun m!7330600 () Bool)

(assert (=> b!6547838 m!7330600))

(declare-fun m!7330602 () Bool)

(assert (=> b!6547839 m!7330602))

(declare-fun m!7330604 () Bool)

(assert (=> b!6547844 m!7330604))

(declare-fun m!7330606 () Bool)

(assert (=> b!6547841 m!7330606))

(declare-fun m!7330608 () Bool)

(assert (=> b!6547840 m!7330608))

(assert (=> b!6547567 d!2055236))

(declare-fun d!2055238 () Bool)

(declare-fun choose!48670 ((Set Context!11608) Int) (Set Context!11608))

(assert (=> d!2055238 (= (flatMap!1925 lt!2401106 lambda!363522) (choose!48670 lt!2401106 lambda!363522))))

(declare-fun bs!1671830 () Bool)

(assert (= bs!1671830 d!2055238))

(declare-fun m!7330610 () Bool)

(assert (=> bs!1671830 m!7330610))

(assert (=> b!6547563 d!2055238))

(declare-fun b!6547856 () Bool)

(declare-fun e!3964509 () (Set Context!11608))

(declare-fun e!3964510 () (Set Context!11608))

(assert (=> b!6547856 (= e!3964509 e!3964510)))

(declare-fun c!1202605 () Bool)

(assert (=> b!6547856 (= c!1202605 (is-Cons!65436 (exprs!6304 lt!2401141)))))

(declare-fun b!6547857 () Bool)

(declare-fun e!3964511 () Bool)

(assert (=> b!6547857 (= e!3964511 (nullable!6413 (h!71884 (exprs!6304 lt!2401141))))))

(declare-fun bm!569477 () Bool)

(declare-fun call!569482 () (Set Context!11608))

(assert (=> bm!569477 (= call!569482 (derivationStepZipperDown!1668 (h!71884 (exprs!6304 lt!2401141)) (Context!11609 (t!379202 (exprs!6304 lt!2401141))) (h!71883 s!2326)))))

(declare-fun b!6547859 () Bool)

(assert (=> b!6547859 (= e!3964510 call!569482)))

(declare-fun b!6547860 () Bool)

(assert (=> b!6547860 (= e!3964510 (as set.empty (Set Context!11608)))))

(declare-fun b!6547858 () Bool)

(assert (=> b!6547858 (= e!3964509 (set.union call!569482 (derivationStepZipperUp!1594 (Context!11609 (t!379202 (exprs!6304 lt!2401141))) (h!71883 s!2326))))))

(declare-fun d!2055240 () Bool)

(declare-fun c!1202604 () Bool)

(assert (=> d!2055240 (= c!1202604 e!3964511)))

(declare-fun res!2686167 () Bool)

(assert (=> d!2055240 (=> (not res!2686167) (not e!3964511))))

(assert (=> d!2055240 (= res!2686167 (is-Cons!65436 (exprs!6304 lt!2401141)))))

(assert (=> d!2055240 (= (derivationStepZipperUp!1594 lt!2401141 (h!71883 s!2326)) e!3964509)))

(assert (= (and d!2055240 res!2686167) b!6547857))

(assert (= (and d!2055240 c!1202604) b!6547858))

(assert (= (and d!2055240 (not c!1202604)) b!6547856))

(assert (= (and b!6547856 c!1202605) b!6547859))

(assert (= (and b!6547856 (not c!1202605)) b!6547860))

(assert (= (or b!6547858 b!6547859) bm!569477))

(declare-fun m!7330612 () Bool)

(assert (=> b!6547857 m!7330612))

(declare-fun m!7330614 () Bool)

(assert (=> bm!569477 m!7330614))

(declare-fun m!7330616 () Bool)

(assert (=> b!6547858 m!7330616))

(assert (=> b!6547563 d!2055240))

(declare-fun b!6547861 () Bool)

(declare-fun e!3964512 () (Set Context!11608))

(declare-fun e!3964513 () (Set Context!11608))

(assert (=> b!6547861 (= e!3964512 e!3964513)))

(declare-fun c!1202607 () Bool)

(assert (=> b!6547861 (= c!1202607 (is-Cons!65436 (exprs!6304 lt!2401097)))))

(declare-fun b!6547862 () Bool)

(declare-fun e!3964514 () Bool)

(assert (=> b!6547862 (= e!3964514 (nullable!6413 (h!71884 (exprs!6304 lt!2401097))))))

(declare-fun bm!569478 () Bool)

(declare-fun call!569483 () (Set Context!11608))

(assert (=> bm!569478 (= call!569483 (derivationStepZipperDown!1668 (h!71884 (exprs!6304 lt!2401097)) (Context!11609 (t!379202 (exprs!6304 lt!2401097))) (h!71883 s!2326)))))

(declare-fun b!6547864 () Bool)

(assert (=> b!6547864 (= e!3964513 call!569483)))

(declare-fun b!6547865 () Bool)

(assert (=> b!6547865 (= e!3964513 (as set.empty (Set Context!11608)))))

(declare-fun b!6547863 () Bool)

(assert (=> b!6547863 (= e!3964512 (set.union call!569483 (derivationStepZipperUp!1594 (Context!11609 (t!379202 (exprs!6304 lt!2401097))) (h!71883 s!2326))))))

(declare-fun d!2055242 () Bool)

(declare-fun c!1202606 () Bool)

(assert (=> d!2055242 (= c!1202606 e!3964514)))

(declare-fun res!2686168 () Bool)

(assert (=> d!2055242 (=> (not res!2686168) (not e!3964514))))

(assert (=> d!2055242 (= res!2686168 (is-Cons!65436 (exprs!6304 lt!2401097)))))

(assert (=> d!2055242 (= (derivationStepZipperUp!1594 lt!2401097 (h!71883 s!2326)) e!3964512)))

(assert (= (and d!2055242 res!2686168) b!6547862))

(assert (= (and d!2055242 c!1202606) b!6547863))

(assert (= (and d!2055242 (not c!1202606)) b!6547861))

(assert (= (and b!6547861 c!1202607) b!6547864))

(assert (= (and b!6547861 (not c!1202607)) b!6547865))

(assert (= (or b!6547863 b!6547864) bm!569478))

(declare-fun m!7330618 () Bool)

(assert (=> b!6547862 m!7330618))

(declare-fun m!7330620 () Bool)

(assert (=> bm!569478 m!7330620))

(declare-fun m!7330622 () Bool)

(assert (=> b!6547863 m!7330622))

(assert (=> b!6547563 d!2055242))

(declare-fun d!2055244 () Bool)

(declare-fun lt!2401327 () Regex!16420)

(assert (=> d!2055244 (validRegex!8156 lt!2401327)))

(assert (=> d!2055244 (= lt!2401327 (generalisedUnion!2264 (unfocusZipperList!1841 lt!2401135)))))

(assert (=> d!2055244 (= (unfocusZipper!2162 lt!2401135) lt!2401327)))

(declare-fun bs!1671831 () Bool)

(assert (= bs!1671831 d!2055244))

(declare-fun m!7330624 () Bool)

(assert (=> bs!1671831 m!7330624))

(declare-fun m!7330626 () Bool)

(assert (=> bs!1671831 m!7330626))

(assert (=> bs!1671831 m!7330626))

(declare-fun m!7330628 () Bool)

(assert (=> bs!1671831 m!7330628))

(assert (=> b!6547563 d!2055244))

(declare-fun d!2055246 () Bool)

(declare-fun dynLambda!26012 (Int Context!11608) (Set Context!11608))

(assert (=> d!2055246 (= (flatMap!1925 lt!2401116 lambda!363522) (dynLambda!26012 lambda!363522 lt!2401141))))

(declare-fun lt!2401330 () Unit!159015)

(declare-fun choose!48671 ((Set Context!11608) Context!11608 Int) Unit!159015)

(assert (=> d!2055246 (= lt!2401330 (choose!48671 lt!2401116 lt!2401141 lambda!363522))))

(assert (=> d!2055246 (= lt!2401116 (set.insert lt!2401141 (as set.empty (Set Context!11608))))))

(assert (=> d!2055246 (= (lemmaFlatMapOnSingletonSet!1451 lt!2401116 lt!2401141 lambda!363522) lt!2401330)))

(declare-fun b_lambda!247841 () Bool)

(assert (=> (not b_lambda!247841) (not d!2055246)))

(declare-fun bs!1671832 () Bool)

(assert (= bs!1671832 d!2055246))

(assert (=> bs!1671832 m!7330350))

(declare-fun m!7330630 () Bool)

(assert (=> bs!1671832 m!7330630))

(declare-fun m!7330632 () Bool)

(assert (=> bs!1671832 m!7330632))

(assert (=> bs!1671832 m!7330348))

(assert (=> b!6547563 d!2055246))

(declare-fun d!2055248 () Bool)

(assert (=> d!2055248 (= (flatMap!1925 lt!2401106 lambda!363522) (dynLambda!26012 lambda!363522 lt!2401097))))

(declare-fun lt!2401331 () Unit!159015)

(assert (=> d!2055248 (= lt!2401331 (choose!48671 lt!2401106 lt!2401097 lambda!363522))))

(assert (=> d!2055248 (= lt!2401106 (set.insert lt!2401097 (as set.empty (Set Context!11608))))))

(assert (=> d!2055248 (= (lemmaFlatMapOnSingletonSet!1451 lt!2401106 lt!2401097 lambda!363522) lt!2401331)))

(declare-fun b_lambda!247843 () Bool)

(assert (=> (not b_lambda!247843) (not d!2055248)))

(declare-fun bs!1671833 () Bool)

(assert (= bs!1671833 d!2055248))

(assert (=> bs!1671833 m!7330334))

(declare-fun m!7330634 () Bool)

(assert (=> bs!1671833 m!7330634))

(declare-fun m!7330636 () Bool)

(assert (=> bs!1671833 m!7330636))

(assert (=> bs!1671833 m!7330340))

(assert (=> b!6547563 d!2055248))

(declare-fun d!2055250 () Bool)

(assert (=> d!2055250 (= (flatMap!1925 lt!2401116 lambda!363522) (choose!48670 lt!2401116 lambda!363522))))

(declare-fun bs!1671834 () Bool)

(assert (= bs!1671834 d!2055250))

(declare-fun m!7330638 () Bool)

(assert (=> bs!1671834 m!7330638))

(assert (=> b!6547563 d!2055250))

(declare-fun bs!1671835 () Bool)

(declare-fun d!2055252 () Bool)

(assert (= bs!1671835 (and d!2055252 b!6547598)))

(declare-fun lambda!363563 () Int)

(assert (=> bs!1671835 (= lambda!363563 lambda!363524)))

(declare-fun bs!1671836 () Bool)

(assert (= bs!1671836 (and d!2055252 d!2055228)))

(assert (=> bs!1671836 (= lambda!363563 lambda!363554)))

(declare-fun bs!1671837 () Bool)

(assert (= bs!1671837 (and d!2055252 d!2055230)))

(assert (=> bs!1671837 (= lambda!363563 lambda!363557)))

(declare-fun bs!1671838 () Bool)

(assert (= bs!1671838 (and d!2055252 d!2055236)))

(assert (=> bs!1671838 (= lambda!363563 lambda!363560)))

(assert (=> d!2055252 (= (inv!84298 setElem!44679) (forall!15592 (exprs!6304 setElem!44679) lambda!363563))))

(declare-fun bs!1671839 () Bool)

(assert (= bs!1671839 d!2055252))

(declare-fun m!7330640 () Bool)

(assert (=> bs!1671839 m!7330640))

(assert (=> setNonEmpty!44679 d!2055252))

(declare-fun d!2055254 () Bool)

(assert (=> d!2055254 (= (isEmpty!37659 (t!379203 zl!343)) (is-Nil!65437 (t!379203 zl!343)))))

(assert (=> b!6547583 d!2055254))

(declare-fun bs!1671840 () Bool)

(declare-fun b!6547900 () Bool)

(assert (= bs!1671840 (and b!6547900 b!6547559)))

(declare-fun lambda!363568 () Int)

(assert (=> bs!1671840 (not (= lambda!363568 lambda!363520))))

(assert (=> bs!1671840 (not (= lambda!363568 lambda!363521))))

(assert (=> b!6547900 true))

(assert (=> b!6547900 true))

(declare-fun bs!1671841 () Bool)

(declare-fun b!6547905 () Bool)

(assert (= bs!1671841 (and b!6547905 b!6547559)))

(declare-fun lambda!363569 () Int)

(assert (=> bs!1671841 (not (= lambda!363569 lambda!363520))))

(assert (=> bs!1671841 (= (and (= (regOne!33352 lt!2401146) (regOne!33352 r!7292)) (= (regTwo!33352 lt!2401146) (regTwo!33352 r!7292))) (= lambda!363569 lambda!363521))))

(declare-fun bs!1671842 () Bool)

(assert (= bs!1671842 (and b!6547905 b!6547900)))

(assert (=> bs!1671842 (not (= lambda!363569 lambda!363568))))

(assert (=> b!6547905 true))

(assert (=> b!6547905 true))

(declare-fun b!6547898 () Bool)

(declare-fun e!3964536 () Bool)

(assert (=> b!6547898 (= e!3964536 (matchRSpec!3521 (regTwo!33353 lt!2401146) s!2326))))

(declare-fun b!6547899 () Bool)

(declare-fun e!3964534 () Bool)

(declare-fun e!3964539 () Bool)

(assert (=> b!6547899 (= e!3964534 e!3964539)))

(declare-fun res!2686186 () Bool)

(assert (=> b!6547899 (= res!2686186 (not (is-EmptyLang!16420 lt!2401146)))))

(assert (=> b!6547899 (=> (not res!2686186) (not e!3964539))))

(declare-fun e!3964537 () Bool)

(declare-fun call!569488 () Bool)

(assert (=> b!6547900 (= e!3964537 call!569488)))

(declare-fun b!6547901 () Bool)

(declare-fun call!569489 () Bool)

(assert (=> b!6547901 (= e!3964534 call!569489)))

(declare-fun b!6547902 () Bool)

(declare-fun c!1202617 () Bool)

(assert (=> b!6547902 (= c!1202617 (is-ElementMatch!16420 lt!2401146))))

(declare-fun e!3964533 () Bool)

(assert (=> b!6547902 (= e!3964539 e!3964533)))

(declare-fun b!6547903 () Bool)

(declare-fun c!1202616 () Bool)

(assert (=> b!6547903 (= c!1202616 (is-Union!16420 lt!2401146))))

(declare-fun e!3964535 () Bool)

(assert (=> b!6547903 (= e!3964533 e!3964535)))

(declare-fun b!6547904 () Bool)

(declare-fun res!2686188 () Bool)

(assert (=> b!6547904 (=> res!2686188 e!3964537)))

(assert (=> b!6547904 (= res!2686188 call!569489)))

(declare-fun e!3964538 () Bool)

(assert (=> b!6547904 (= e!3964538 e!3964537)))

(assert (=> b!6547905 (= e!3964538 call!569488)))

(declare-fun bm!569484 () Bool)

(assert (=> bm!569484 (= call!569489 (isEmpty!37663 s!2326))))

(declare-fun b!6547906 () Bool)

(assert (=> b!6547906 (= e!3964533 (= s!2326 (Cons!65435 (c!1202553 lt!2401146) Nil!65435)))))

(declare-fun b!6547907 () Bool)

(assert (=> b!6547907 (= e!3964535 e!3964536)))

(declare-fun res!2686187 () Bool)

(assert (=> b!6547907 (= res!2686187 (matchRSpec!3521 (regOne!33353 lt!2401146) s!2326))))

(assert (=> b!6547907 (=> res!2686187 e!3964536)))

(declare-fun b!6547908 () Bool)

(assert (=> b!6547908 (= e!3964535 e!3964538)))

(declare-fun c!1202618 () Bool)

(assert (=> b!6547908 (= c!1202618 (is-Star!16420 lt!2401146))))

(declare-fun d!2055256 () Bool)

(declare-fun c!1202619 () Bool)

(assert (=> d!2055256 (= c!1202619 (is-EmptyExpr!16420 lt!2401146))))

(assert (=> d!2055256 (= (matchRSpec!3521 lt!2401146 s!2326) e!3964534)))

(declare-fun bm!569483 () Bool)

(assert (=> bm!569483 (= call!569488 (Exists!3490 (ite c!1202618 lambda!363568 lambda!363569)))))

(assert (= (and d!2055256 c!1202619) b!6547901))

(assert (= (and d!2055256 (not c!1202619)) b!6547899))

(assert (= (and b!6547899 res!2686186) b!6547902))

(assert (= (and b!6547902 c!1202617) b!6547906))

(assert (= (and b!6547902 (not c!1202617)) b!6547903))

(assert (= (and b!6547903 c!1202616) b!6547907))

(assert (= (and b!6547903 (not c!1202616)) b!6547908))

(assert (= (and b!6547907 (not res!2686187)) b!6547898))

(assert (= (and b!6547908 c!1202618) b!6547904))

(assert (= (and b!6547908 (not c!1202618)) b!6547905))

(assert (= (and b!6547904 (not res!2686188)) b!6547900))

(assert (= (or b!6547900 b!6547905) bm!569483))

(assert (= (or b!6547901 b!6547904) bm!569484))

(declare-fun m!7330642 () Bool)

(assert (=> b!6547898 m!7330642))

(declare-fun m!7330644 () Bool)

(assert (=> bm!569484 m!7330644))

(declare-fun m!7330646 () Bool)

(assert (=> b!6547907 m!7330646))

(declare-fun m!7330648 () Bool)

(assert (=> bm!569483 m!7330648))

(assert (=> b!6547584 d!2055256))

(declare-fun d!2055258 () Bool)

(declare-fun e!3964556 () Bool)

(assert (=> d!2055258 e!3964556))

(declare-fun c!1202627 () Bool)

(assert (=> d!2055258 (= c!1202627 (is-EmptyExpr!16420 lt!2401146))))

(declare-fun lt!2401334 () Bool)

(declare-fun e!3964558 () Bool)

(assert (=> d!2055258 (= lt!2401334 e!3964558)))

(declare-fun c!1202628 () Bool)

(assert (=> d!2055258 (= c!1202628 (isEmpty!37663 s!2326))))

(assert (=> d!2055258 (validRegex!8156 lt!2401146)))

(assert (=> d!2055258 (= (matchR!8603 lt!2401146 s!2326) lt!2401334)))

(declare-fun b!6547937 () Bool)

(declare-fun e!3964554 () Bool)

(assert (=> b!6547937 (= e!3964556 e!3964554)))

(declare-fun c!1202626 () Bool)

(assert (=> b!6547937 (= c!1202626 (is-EmptyLang!16420 lt!2401146))))

(declare-fun b!6547938 () Bool)

(declare-fun res!2686210 () Bool)

(declare-fun e!3964560 () Bool)

(assert (=> b!6547938 (=> res!2686210 e!3964560)))

(assert (=> b!6547938 (= res!2686210 (not (is-ElementMatch!16420 lt!2401146)))))

(assert (=> b!6547938 (= e!3964554 e!3964560)))

(declare-fun b!6547939 () Bool)

(declare-fun res!2686211 () Bool)

(declare-fun e!3964557 () Bool)

(assert (=> b!6547939 (=> (not res!2686211) (not e!3964557))))

(assert (=> b!6547939 (= res!2686211 (isEmpty!37663 (tail!12376 s!2326)))))

(declare-fun b!6547940 () Bool)

(declare-fun e!3964559 () Bool)

(assert (=> b!6547940 (= e!3964560 e!3964559)))

(declare-fun res!2686209 () Bool)

(assert (=> b!6547940 (=> (not res!2686209) (not e!3964559))))

(assert (=> b!6547940 (= res!2686209 (not lt!2401334))))

(declare-fun b!6547941 () Bool)

(declare-fun derivativeStep!5104 (Regex!16420 C!33110) Regex!16420)

(assert (=> b!6547941 (= e!3964558 (matchR!8603 (derivativeStep!5104 lt!2401146 (head!13291 s!2326)) (tail!12376 s!2326)))))

(declare-fun b!6547942 () Bool)

(assert (=> b!6547942 (= e!3964558 (nullable!6413 lt!2401146))))

(declare-fun b!6547943 () Bool)

(assert (=> b!6547943 (= e!3964554 (not lt!2401334))))

(declare-fun b!6547944 () Bool)

(declare-fun e!3964555 () Bool)

(assert (=> b!6547944 (= e!3964559 e!3964555)))

(declare-fun res!2686208 () Bool)

(assert (=> b!6547944 (=> res!2686208 e!3964555)))

(declare-fun call!569492 () Bool)

(assert (=> b!6547944 (= res!2686208 call!569492)))

(declare-fun b!6547945 () Bool)

(declare-fun res!2686205 () Bool)

(assert (=> b!6547945 (=> (not res!2686205) (not e!3964557))))

(assert (=> b!6547945 (= res!2686205 (not call!569492))))

(declare-fun b!6547946 () Bool)

(declare-fun res!2686212 () Bool)

(assert (=> b!6547946 (=> res!2686212 e!3964555)))

(assert (=> b!6547946 (= res!2686212 (not (isEmpty!37663 (tail!12376 s!2326))))))

(declare-fun b!6547947 () Bool)

(assert (=> b!6547947 (= e!3964556 (= lt!2401334 call!569492))))

(declare-fun b!6547948 () Bool)

(assert (=> b!6547948 (= e!3964557 (= (head!13291 s!2326) (c!1202553 lt!2401146)))))

(declare-fun b!6547949 () Bool)

(assert (=> b!6547949 (= e!3964555 (not (= (head!13291 s!2326) (c!1202553 lt!2401146))))))

(declare-fun b!6547950 () Bool)

(declare-fun res!2686206 () Bool)

(assert (=> b!6547950 (=> res!2686206 e!3964560)))

(assert (=> b!6547950 (= res!2686206 e!3964557)))

(declare-fun res!2686207 () Bool)

(assert (=> b!6547950 (=> (not res!2686207) (not e!3964557))))

(assert (=> b!6547950 (= res!2686207 lt!2401334)))

(declare-fun bm!569487 () Bool)

(assert (=> bm!569487 (= call!569492 (isEmpty!37663 s!2326))))

(assert (= (and d!2055258 c!1202628) b!6547942))

(assert (= (and d!2055258 (not c!1202628)) b!6547941))

(assert (= (and d!2055258 c!1202627) b!6547947))

(assert (= (and d!2055258 (not c!1202627)) b!6547937))

(assert (= (and b!6547937 c!1202626) b!6547943))

(assert (= (and b!6547937 (not c!1202626)) b!6547938))

(assert (= (and b!6547938 (not res!2686210)) b!6547950))

(assert (= (and b!6547950 res!2686207) b!6547945))

(assert (= (and b!6547945 res!2686205) b!6547939))

(assert (= (and b!6547939 res!2686211) b!6547948))

(assert (= (and b!6547950 (not res!2686206)) b!6547940))

(assert (= (and b!6547940 res!2686209) b!6547944))

(assert (= (and b!6547944 (not res!2686208)) b!6547946))

(assert (= (and b!6547946 (not res!2686212)) b!6547949))

(assert (= (or b!6547947 b!6547944 b!6547945) bm!569487))

(declare-fun m!7330650 () Bool)

(assert (=> b!6547949 m!7330650))

(assert (=> d!2055258 m!7330644))

(declare-fun m!7330652 () Bool)

(assert (=> d!2055258 m!7330652))

(assert (=> b!6547948 m!7330650))

(assert (=> bm!569487 m!7330644))

(declare-fun m!7330654 () Bool)

(assert (=> b!6547946 m!7330654))

(assert (=> b!6547946 m!7330654))

(declare-fun m!7330656 () Bool)

(assert (=> b!6547946 m!7330656))

(assert (=> b!6547939 m!7330654))

(assert (=> b!6547939 m!7330654))

(assert (=> b!6547939 m!7330656))

(declare-fun m!7330658 () Bool)

(assert (=> b!6547942 m!7330658))

(assert (=> b!6547941 m!7330650))

(assert (=> b!6547941 m!7330650))

(declare-fun m!7330660 () Bool)

(assert (=> b!6547941 m!7330660))

(assert (=> b!6547941 m!7330654))

(assert (=> b!6547941 m!7330660))

(assert (=> b!6547941 m!7330654))

(declare-fun m!7330662 () Bool)

(assert (=> b!6547941 m!7330662))

(assert (=> b!6547584 d!2055258))

(declare-fun d!2055260 () Bool)

(assert (=> d!2055260 (= (matchR!8603 lt!2401146 s!2326) (matchRSpec!3521 lt!2401146 s!2326))))

(declare-fun lt!2401337 () Unit!159015)

(declare-fun choose!48672 (Regex!16420 List!65559) Unit!159015)

(assert (=> d!2055260 (= lt!2401337 (choose!48672 lt!2401146 s!2326))))

(assert (=> d!2055260 (validRegex!8156 lt!2401146)))

(assert (=> d!2055260 (= (mainMatchTheorem!3521 lt!2401146 s!2326) lt!2401337)))

(declare-fun bs!1671843 () Bool)

(assert (= bs!1671843 d!2055260))

(assert (=> bs!1671843 m!7330376))

(assert (=> bs!1671843 m!7330374))

(declare-fun m!7330664 () Bool)

(assert (=> bs!1671843 m!7330664))

(assert (=> bs!1671843 m!7330652))

(assert (=> b!6547584 d!2055260))

(declare-fun d!2055262 () Bool)

(declare-fun c!1202629 () Bool)

(assert (=> d!2055262 (= c!1202629 (isEmpty!37663 (t!379201 s!2326)))))

(declare-fun e!3964561 () Bool)

(assert (=> d!2055262 (= (matchZipper!2432 lt!2401113 (t!379201 s!2326)) e!3964561)))

(declare-fun b!6547951 () Bool)

(assert (=> b!6547951 (= e!3964561 (nullableZipper!2165 lt!2401113))))

(declare-fun b!6547952 () Bool)

(assert (=> b!6547952 (= e!3964561 (matchZipper!2432 (derivationStepZipper!2386 lt!2401113 (head!13291 (t!379201 s!2326))) (tail!12376 (t!379201 s!2326))))))

(assert (= (and d!2055262 c!1202629) b!6547951))

(assert (= (and d!2055262 (not c!1202629)) b!6547952))

(assert (=> d!2055262 m!7330548))

(declare-fun m!7330666 () Bool)

(assert (=> b!6547951 m!7330666))

(assert (=> b!6547952 m!7330552))

(assert (=> b!6547952 m!7330552))

(declare-fun m!7330668 () Bool)

(assert (=> b!6547952 m!7330668))

(assert (=> b!6547952 m!7330556))

(assert (=> b!6547952 m!7330668))

(assert (=> b!6547952 m!7330556))

(declare-fun m!7330670 () Bool)

(assert (=> b!6547952 m!7330670))

(assert (=> b!6547580 d!2055262))

(declare-fun d!2055264 () Bool)

(declare-fun c!1202630 () Bool)

(assert (=> d!2055264 (= c!1202630 (isEmpty!37663 s!2326))))

(declare-fun e!3964562 () Bool)

(assert (=> d!2055264 (= (matchZipper!2432 lt!2401137 s!2326) e!3964562)))

(declare-fun b!6547953 () Bool)

(assert (=> b!6547953 (= e!3964562 (nullableZipper!2165 lt!2401137))))

(declare-fun b!6547954 () Bool)

(assert (=> b!6547954 (= e!3964562 (matchZipper!2432 (derivationStepZipper!2386 lt!2401137 (head!13291 s!2326)) (tail!12376 s!2326)))))

(assert (= (and d!2055264 c!1202630) b!6547953))

(assert (= (and d!2055264 (not c!1202630)) b!6547954))

(assert (=> d!2055264 m!7330644))

(declare-fun m!7330672 () Bool)

(assert (=> b!6547953 m!7330672))

(assert (=> b!6547954 m!7330650))

(assert (=> b!6547954 m!7330650))

(declare-fun m!7330674 () Bool)

(assert (=> b!6547954 m!7330674))

(assert (=> b!6547954 m!7330654))

(assert (=> b!6547954 m!7330674))

(assert (=> b!6547954 m!7330654))

(declare-fun m!7330676 () Bool)

(assert (=> b!6547954 m!7330676))

(assert (=> b!6547580 d!2055264))

(declare-fun b!6547973 () Bool)

(declare-fun e!3964575 () Bool)

(declare-fun lt!2401344 () Option!16311)

(assert (=> b!6547973 (= e!3964575 (not (isDefined!13014 lt!2401344)))))

(declare-fun b!6547974 () Bool)

(declare-fun e!3964574 () Bool)

(assert (=> b!6547974 (= e!3964574 (matchZipper!2432 lt!2401116 s!2326))))

(declare-fun b!6547975 () Bool)

(declare-fun res!2686225 () Bool)

(declare-fun e!3964577 () Bool)

(assert (=> b!6547975 (=> (not res!2686225) (not e!3964577))))

(assert (=> b!6547975 (= res!2686225 (matchZipper!2432 lt!2401116 (_2!36702 (get!22712 lt!2401344))))))

(declare-fun b!6547976 () Bool)

(declare-fun e!3964576 () Option!16311)

(declare-fun e!3964573 () Option!16311)

(assert (=> b!6547976 (= e!3964576 e!3964573)))

(declare-fun c!1202635 () Bool)

(assert (=> b!6547976 (= c!1202635 (is-Nil!65435 s!2326))))

(declare-fun b!6547977 () Bool)

(assert (=> b!6547977 (= e!3964576 (Some!16310 (tuple2!66799 Nil!65435 s!2326)))))

(declare-fun b!6547978 () Bool)

(declare-fun res!2686226 () Bool)

(assert (=> b!6547978 (=> (not res!2686226) (not e!3964577))))

(assert (=> b!6547978 (= res!2686226 (matchZipper!2432 lt!2401106 (_1!36702 (get!22712 lt!2401344))))))

(declare-fun b!6547979 () Bool)

(assert (=> b!6547979 (= e!3964577 (= (++!14543 (_1!36702 (get!22712 lt!2401344)) (_2!36702 (get!22712 lt!2401344))) s!2326))))

(declare-fun d!2055266 () Bool)

(assert (=> d!2055266 e!3964575))

(declare-fun res!2686224 () Bool)

(assert (=> d!2055266 (=> res!2686224 e!3964575)))

(assert (=> d!2055266 (= res!2686224 e!3964577)))

(declare-fun res!2686223 () Bool)

(assert (=> d!2055266 (=> (not res!2686223) (not e!3964577))))

(assert (=> d!2055266 (= res!2686223 (isDefined!13014 lt!2401344))))

(assert (=> d!2055266 (= lt!2401344 e!3964576)))

(declare-fun c!1202636 () Bool)

(assert (=> d!2055266 (= c!1202636 e!3964574)))

(declare-fun res!2686227 () Bool)

(assert (=> d!2055266 (=> (not res!2686227) (not e!3964574))))

(assert (=> d!2055266 (= res!2686227 (matchZipper!2432 lt!2401106 Nil!65435))))

(assert (=> d!2055266 (= (++!14543 Nil!65435 s!2326) s!2326)))

(assert (=> d!2055266 (= (findConcatSeparationZippers!185 lt!2401106 lt!2401116 Nil!65435 s!2326 s!2326) lt!2401344)))

(declare-fun b!6547980 () Bool)

(declare-fun lt!2401345 () Unit!159015)

(declare-fun lt!2401346 () Unit!159015)

(assert (=> b!6547980 (= lt!2401345 lt!2401346)))

(assert (=> b!6547980 (= (++!14543 (++!14543 Nil!65435 (Cons!65435 (h!71883 s!2326) Nil!65435)) (t!379201 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2563 (List!65559 C!33110 List!65559 List!65559) Unit!159015)

(assert (=> b!6547980 (= lt!2401346 (lemmaMoveElementToOtherListKeepsConcatEq!2563 Nil!65435 (h!71883 s!2326) (t!379201 s!2326) s!2326))))

(assert (=> b!6547980 (= e!3964573 (findConcatSeparationZippers!185 lt!2401106 lt!2401116 (++!14543 Nil!65435 (Cons!65435 (h!71883 s!2326) Nil!65435)) (t!379201 s!2326) s!2326))))

(declare-fun b!6547981 () Bool)

(assert (=> b!6547981 (= e!3964573 None!16310)))

(assert (= (and d!2055266 res!2686227) b!6547974))

(assert (= (and d!2055266 c!1202636) b!6547977))

(assert (= (and d!2055266 (not c!1202636)) b!6547976))

(assert (= (and b!6547976 c!1202635) b!6547981))

(assert (= (and b!6547976 (not c!1202635)) b!6547980))

(assert (= (and d!2055266 res!2686223) b!6547978))

(assert (= (and b!6547978 res!2686226) b!6547975))

(assert (= (and b!6547975 res!2686225) b!6547979))

(assert (= (and d!2055266 (not res!2686224)) b!6547973))

(declare-fun m!7330678 () Bool)

(assert (=> b!6547978 m!7330678))

(declare-fun m!7330680 () Bool)

(assert (=> b!6547978 m!7330680))

(declare-fun m!7330682 () Bool)

(assert (=> b!6547974 m!7330682))

(assert (=> b!6547975 m!7330678))

(declare-fun m!7330684 () Bool)

(assert (=> b!6547975 m!7330684))

(declare-fun m!7330686 () Bool)

(assert (=> b!6547980 m!7330686))

(assert (=> b!6547980 m!7330686))

(declare-fun m!7330688 () Bool)

(assert (=> b!6547980 m!7330688))

(declare-fun m!7330690 () Bool)

(assert (=> b!6547980 m!7330690))

(assert (=> b!6547980 m!7330686))

(declare-fun m!7330692 () Bool)

(assert (=> b!6547980 m!7330692))

(assert (=> b!6547979 m!7330678))

(declare-fun m!7330694 () Bool)

(assert (=> b!6547979 m!7330694))

(declare-fun m!7330696 () Bool)

(assert (=> b!6547973 m!7330696))

(assert (=> d!2055266 m!7330696))

(declare-fun m!7330698 () Bool)

(assert (=> d!2055266 m!7330698))

(declare-fun m!7330700 () Bool)

(assert (=> d!2055266 m!7330700))

(assert (=> b!6547601 d!2055266))

(declare-fun b!6547993 () Bool)

(declare-fun e!3964582 () Bool)

(declare-fun lt!2401349 () List!65559)

(assert (=> b!6547993 (= e!3964582 (or (not (= (_2!36702 lt!2401103) Nil!65435)) (= lt!2401349 (_1!36702 lt!2401103))))))

(declare-fun b!6547992 () Bool)

(declare-fun res!2686233 () Bool)

(assert (=> b!6547992 (=> (not res!2686233) (not e!3964582))))

(declare-fun size!40490 (List!65559) Int)

(assert (=> b!6547992 (= res!2686233 (= (size!40490 lt!2401349) (+ (size!40490 (_1!36702 lt!2401103)) (size!40490 (_2!36702 lt!2401103)))))))

(declare-fun d!2055268 () Bool)

(assert (=> d!2055268 e!3964582))

(declare-fun res!2686232 () Bool)

(assert (=> d!2055268 (=> (not res!2686232) (not e!3964582))))

(declare-fun content!12543 (List!65559) (Set C!33110))

(assert (=> d!2055268 (= res!2686232 (= (content!12543 lt!2401349) (set.union (content!12543 (_1!36702 lt!2401103)) (content!12543 (_2!36702 lt!2401103)))))))

(declare-fun e!3964583 () List!65559)

(assert (=> d!2055268 (= lt!2401349 e!3964583)))

(declare-fun c!1202639 () Bool)

(assert (=> d!2055268 (= c!1202639 (is-Nil!65435 (_1!36702 lt!2401103)))))

(assert (=> d!2055268 (= (++!14543 (_1!36702 lt!2401103) (_2!36702 lt!2401103)) lt!2401349)))

(declare-fun b!6547990 () Bool)

(assert (=> b!6547990 (= e!3964583 (_2!36702 lt!2401103))))

(declare-fun b!6547991 () Bool)

(assert (=> b!6547991 (= e!3964583 (Cons!65435 (h!71883 (_1!36702 lt!2401103)) (++!14543 (t!379201 (_1!36702 lt!2401103)) (_2!36702 lt!2401103))))))

(assert (= (and d!2055268 c!1202639) b!6547990))

(assert (= (and d!2055268 (not c!1202639)) b!6547991))

(assert (= (and d!2055268 res!2686232) b!6547992))

(assert (= (and b!6547992 res!2686233) b!6547993))

(declare-fun m!7330702 () Bool)

(assert (=> b!6547992 m!7330702))

(declare-fun m!7330704 () Bool)

(assert (=> b!6547992 m!7330704))

(declare-fun m!7330706 () Bool)

(assert (=> b!6547992 m!7330706))

(declare-fun m!7330708 () Bool)

(assert (=> d!2055268 m!7330708))

(declare-fun m!7330710 () Bool)

(assert (=> d!2055268 m!7330710))

(declare-fun m!7330712 () Bool)

(assert (=> d!2055268 m!7330712))

(declare-fun m!7330714 () Bool)

(assert (=> b!6547991 m!7330714))

(assert (=> b!6547601 d!2055268))

(declare-fun d!2055270 () Bool)

(assert (=> d!2055270 (= (get!22712 lt!2401143) (v!52495 lt!2401143))))

(assert (=> b!6547601 d!2055270))

(declare-fun d!2055274 () Bool)

(assert (=> d!2055274 (isDefined!13014 (findConcatSeparationZippers!185 lt!2401106 (set.insert lt!2401141 (as set.empty (Set Context!11608))) Nil!65435 s!2326 s!2326))))

(declare-fun lt!2401352 () Unit!159015)

(declare-fun choose!48673 ((Set Context!11608) Context!11608 List!65559) Unit!159015)

(assert (=> d!2055274 (= lt!2401352 (choose!48673 lt!2401106 lt!2401141 s!2326))))

(assert (=> d!2055274 (matchZipper!2432 (appendTo!181 lt!2401106 lt!2401141) s!2326)))

(assert (=> d!2055274 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!185 lt!2401106 lt!2401141 s!2326) lt!2401352)))

(declare-fun bs!1671844 () Bool)

(assert (= bs!1671844 d!2055274))

(declare-fun m!7330716 () Bool)

(assert (=> bs!1671844 m!7330716))

(declare-fun m!7330718 () Bool)

(assert (=> bs!1671844 m!7330718))

(assert (=> bs!1671844 m!7330348))

(assert (=> bs!1671844 m!7330348))

(assert (=> bs!1671844 m!7330716))

(assert (=> bs!1671844 m!7330324))

(declare-fun m!7330720 () Bool)

(assert (=> bs!1671844 m!7330720))

(assert (=> bs!1671844 m!7330324))

(declare-fun m!7330722 () Bool)

(assert (=> bs!1671844 m!7330722))

(assert (=> b!6547601 d!2055274))

(declare-fun d!2055276 () Bool)

(declare-fun isEmpty!37664 (Option!16311) Bool)

(assert (=> d!2055276 (= (isDefined!13014 lt!2401143) (not (isEmpty!37664 lt!2401143)))))

(declare-fun bs!1671845 () Bool)

(assert (= bs!1671845 d!2055276))

(declare-fun m!7330724 () Bool)

(assert (=> bs!1671845 m!7330724))

(assert (=> b!6547601 d!2055276))

(declare-fun d!2055278 () Bool)

(declare-fun c!1202640 () Bool)

(assert (=> d!2055278 (= c!1202640 (isEmpty!37663 (_1!36702 lt!2401103)))))

(declare-fun e!3964584 () Bool)

(assert (=> d!2055278 (= (matchZipper!2432 lt!2401106 (_1!36702 lt!2401103)) e!3964584)))

(declare-fun b!6547994 () Bool)

(assert (=> b!6547994 (= e!3964584 (nullableZipper!2165 lt!2401106))))

(declare-fun b!6547995 () Bool)

(assert (=> b!6547995 (= e!3964584 (matchZipper!2432 (derivationStepZipper!2386 lt!2401106 (head!13291 (_1!36702 lt!2401103))) (tail!12376 (_1!36702 lt!2401103))))))

(assert (= (and d!2055278 c!1202640) b!6547994))

(assert (= (and d!2055278 (not c!1202640)) b!6547995))

(declare-fun m!7330726 () Bool)

(assert (=> d!2055278 m!7330726))

(declare-fun m!7330728 () Bool)

(assert (=> b!6547994 m!7330728))

(declare-fun m!7330730 () Bool)

(assert (=> b!6547995 m!7330730))

(assert (=> b!6547995 m!7330730))

(declare-fun m!7330732 () Bool)

(assert (=> b!6547995 m!7330732))

(declare-fun m!7330734 () Bool)

(assert (=> b!6547995 m!7330734))

(assert (=> b!6547995 m!7330732))

(assert (=> b!6547995 m!7330734))

(declare-fun m!7330736 () Bool)

(assert (=> b!6547995 m!7330736))

(assert (=> b!6547602 d!2055278))

(declare-fun d!2055280 () Bool)

(declare-fun c!1202641 () Bool)

(assert (=> d!2055280 (= c!1202641 (isEmpty!37663 (t!379201 s!2326)))))

(declare-fun e!3964585 () Bool)

(assert (=> d!2055280 (= (matchZipper!2432 lt!2401108 (t!379201 s!2326)) e!3964585)))

(declare-fun b!6547996 () Bool)

(assert (=> b!6547996 (= e!3964585 (nullableZipper!2165 lt!2401108))))

(declare-fun b!6547997 () Bool)

(assert (=> b!6547997 (= e!3964585 (matchZipper!2432 (derivationStepZipper!2386 lt!2401108 (head!13291 (t!379201 s!2326))) (tail!12376 (t!379201 s!2326))))))

(assert (= (and d!2055280 c!1202641) b!6547996))

(assert (= (and d!2055280 (not c!1202641)) b!6547997))

(assert (=> d!2055280 m!7330548))

(declare-fun m!7330738 () Bool)

(assert (=> b!6547996 m!7330738))

(assert (=> b!6547997 m!7330552))

(assert (=> b!6547997 m!7330552))

(declare-fun m!7330740 () Bool)

(assert (=> b!6547997 m!7330740))

(assert (=> b!6547997 m!7330556))

(assert (=> b!6547997 m!7330740))

(assert (=> b!6547997 m!7330556))

(declare-fun m!7330742 () Bool)

(assert (=> b!6547997 m!7330742))

(assert (=> b!6547562 d!2055280))

(assert (=> b!6547558 d!2055280))

(declare-fun d!2055282 () Bool)

(assert (=> d!2055282 (= (flatMap!1925 lt!2401137 lambda!363522) (choose!48670 lt!2401137 lambda!363522))))

(declare-fun bs!1671846 () Bool)

(assert (= bs!1671846 d!2055282))

(declare-fun m!7330744 () Bool)

(assert (=> bs!1671846 m!7330744))

(assert (=> b!6547577 d!2055282))

(declare-fun b!6547998 () Bool)

(declare-fun e!3964586 () (Set Context!11608))

(declare-fun e!3964587 () (Set Context!11608))

(assert (=> b!6547998 (= e!3964586 e!3964587)))

(declare-fun c!1202643 () Bool)

(assert (=> b!6547998 (= c!1202643 (is-Cons!65436 (exprs!6304 lt!2401114)))))

(declare-fun b!6547999 () Bool)

(declare-fun e!3964588 () Bool)

(assert (=> b!6547999 (= e!3964588 (nullable!6413 (h!71884 (exprs!6304 lt!2401114))))))

(declare-fun bm!569488 () Bool)

(declare-fun call!569493 () (Set Context!11608))

(assert (=> bm!569488 (= call!569493 (derivationStepZipperDown!1668 (h!71884 (exprs!6304 lt!2401114)) (Context!11609 (t!379202 (exprs!6304 lt!2401114))) (h!71883 s!2326)))))

(declare-fun b!6548001 () Bool)

(assert (=> b!6548001 (= e!3964587 call!569493)))

(declare-fun b!6548002 () Bool)

(assert (=> b!6548002 (= e!3964587 (as set.empty (Set Context!11608)))))

(declare-fun b!6548000 () Bool)

(assert (=> b!6548000 (= e!3964586 (set.union call!569493 (derivationStepZipperUp!1594 (Context!11609 (t!379202 (exprs!6304 lt!2401114))) (h!71883 s!2326))))))

(declare-fun d!2055284 () Bool)

(declare-fun c!1202642 () Bool)

(assert (=> d!2055284 (= c!1202642 e!3964588)))

(declare-fun res!2686234 () Bool)

(assert (=> d!2055284 (=> (not res!2686234) (not e!3964588))))

(assert (=> d!2055284 (= res!2686234 (is-Cons!65436 (exprs!6304 lt!2401114)))))

(assert (=> d!2055284 (= (derivationStepZipperUp!1594 lt!2401114 (h!71883 s!2326)) e!3964586)))

(assert (= (and d!2055284 res!2686234) b!6547999))

(assert (= (and d!2055284 c!1202642) b!6548000))

(assert (= (and d!2055284 (not c!1202642)) b!6547998))

(assert (= (and b!6547998 c!1202643) b!6548001))

(assert (= (and b!6547998 (not c!1202643)) b!6548002))

(assert (= (or b!6548000 b!6548001) bm!569488))

(declare-fun m!7330746 () Bool)

(assert (=> b!6547999 m!7330746))

(declare-fun m!7330748 () Bool)

(assert (=> bm!569488 m!7330748))

(declare-fun m!7330750 () Bool)

(assert (=> b!6548000 m!7330750))

(assert (=> b!6547577 d!2055284))

(declare-fun d!2055286 () Bool)

(assert (=> d!2055286 (= (flatMap!1925 lt!2401137 lambda!363522) (dynLambda!26012 lambda!363522 lt!2401114))))

(declare-fun lt!2401353 () Unit!159015)

(assert (=> d!2055286 (= lt!2401353 (choose!48671 lt!2401137 lt!2401114 lambda!363522))))

(assert (=> d!2055286 (= lt!2401137 (set.insert lt!2401114 (as set.empty (Set Context!11608))))))

(assert (=> d!2055286 (= (lemmaFlatMapOnSingletonSet!1451 lt!2401137 lt!2401114 lambda!363522) lt!2401353)))

(declare-fun b_lambda!247845 () Bool)

(assert (=> (not b_lambda!247845) (not d!2055286)))

(declare-fun bs!1671847 () Bool)

(assert (= bs!1671847 d!2055286))

(assert (=> bs!1671847 m!7330262))

(declare-fun m!7330752 () Bool)

(assert (=> bs!1671847 m!7330752))

(declare-fun m!7330754 () Bool)

(assert (=> bs!1671847 m!7330754))

(assert (=> bs!1671847 m!7330258))

(assert (=> b!6547577 d!2055286))

(declare-fun bs!1671848 () Bool)

(declare-fun d!2055288 () Bool)

(assert (= bs!1671848 (and d!2055288 b!6547595)))

(declare-fun lambda!363572 () Int)

(assert (=> bs!1671848 (= lambda!363572 lambda!363522)))

(assert (=> d!2055288 true))

(assert (=> d!2055288 (= (derivationStepZipper!2386 lt!2401137 (h!71883 s!2326)) (flatMap!1925 lt!2401137 lambda!363572))))

(declare-fun bs!1671849 () Bool)

(assert (= bs!1671849 d!2055288))

(declare-fun m!7330756 () Bool)

(assert (=> bs!1671849 m!7330756))

(assert (=> b!6547577 d!2055288))

(declare-fun bs!1671850 () Bool)

(declare-fun d!2055290 () Bool)

(assert (= bs!1671850 (and d!2055290 d!2055230)))

(declare-fun lambda!363573 () Int)

(assert (=> bs!1671850 (= lambda!363573 lambda!363557)))

(declare-fun bs!1671851 () Bool)

(assert (= bs!1671851 (and d!2055290 d!2055236)))

(assert (=> bs!1671851 (= lambda!363573 lambda!363560)))

(declare-fun bs!1671852 () Bool)

(assert (= bs!1671852 (and d!2055290 d!2055252)))

(assert (=> bs!1671852 (= lambda!363573 lambda!363563)))

(declare-fun bs!1671853 () Bool)

(assert (= bs!1671853 (and d!2055290 b!6547598)))

(assert (=> bs!1671853 (= lambda!363573 lambda!363524)))

(declare-fun bs!1671854 () Bool)

(assert (= bs!1671854 (and d!2055290 d!2055228)))

(assert (=> bs!1671854 (= lambda!363573 lambda!363554)))

(assert (=> d!2055290 (= (inv!84298 (h!71885 zl!343)) (forall!15592 (exprs!6304 (h!71885 zl!343)) lambda!363573))))

(declare-fun bs!1671855 () Bool)

(assert (= bs!1671855 d!2055290))

(declare-fun m!7330758 () Bool)

(assert (=> bs!1671855 m!7330758))

(assert (=> b!6547600 d!2055290))

(declare-fun b!6548045 () Bool)

(declare-fun e!3964612 () Bool)

(declare-fun lt!2401361 () Option!16311)

(assert (=> b!6548045 (= e!3964612 (not (isDefined!13014 lt!2401361)))))

(declare-fun b!6548046 () Bool)

(declare-fun e!3964615 () Option!16311)

(declare-fun e!3964613 () Option!16311)

(assert (=> b!6548046 (= e!3964615 e!3964613)))

(declare-fun c!1202661 () Bool)

(assert (=> b!6548046 (= c!1202661 (is-Nil!65435 s!2326))))

(declare-fun b!6548047 () Bool)

(assert (=> b!6548047 (= e!3964615 (Some!16310 (tuple2!66799 Nil!65435 s!2326)))))

(declare-fun b!6548048 () Bool)

(assert (=> b!6548048 (= e!3964613 None!16310)))

(declare-fun b!6548050 () Bool)

(declare-fun lt!2401362 () Unit!159015)

(declare-fun lt!2401360 () Unit!159015)

(assert (=> b!6548050 (= lt!2401362 lt!2401360)))

(assert (=> b!6548050 (= (++!14543 (++!14543 Nil!65435 (Cons!65435 (h!71883 s!2326) Nil!65435)) (t!379201 s!2326)) s!2326)))

(assert (=> b!6548050 (= lt!2401360 (lemmaMoveElementToOtherListKeepsConcatEq!2563 Nil!65435 (h!71883 s!2326) (t!379201 s!2326) s!2326))))

(assert (=> b!6548050 (= e!3964613 (findConcatSeparation!2725 (regOne!33352 r!7292) (regTwo!33352 r!7292) (++!14543 Nil!65435 (Cons!65435 (h!71883 s!2326) Nil!65435)) (t!379201 s!2326) s!2326))))

(declare-fun b!6548051 () Bool)

(declare-fun res!2686249 () Bool)

(declare-fun e!3964611 () Bool)

(assert (=> b!6548051 (=> (not res!2686249) (not e!3964611))))

(assert (=> b!6548051 (= res!2686249 (matchR!8603 (regOne!33352 r!7292) (_1!36702 (get!22712 lt!2401361))))))

(declare-fun b!6548052 () Bool)

(declare-fun e!3964614 () Bool)

(assert (=> b!6548052 (= e!3964614 (matchR!8603 (regTwo!33352 r!7292) s!2326))))

(declare-fun b!6548053 () Bool)

(assert (=> b!6548053 (= e!3964611 (= (++!14543 (_1!36702 (get!22712 lt!2401361)) (_2!36702 (get!22712 lt!2401361))) s!2326))))

(declare-fun d!2055292 () Bool)

(assert (=> d!2055292 e!3964612))

(declare-fun res!2686250 () Bool)

(assert (=> d!2055292 (=> res!2686250 e!3964612)))

(assert (=> d!2055292 (= res!2686250 e!3964611)))

(declare-fun res!2686247 () Bool)

(assert (=> d!2055292 (=> (not res!2686247) (not e!3964611))))

(assert (=> d!2055292 (= res!2686247 (isDefined!13014 lt!2401361))))

(assert (=> d!2055292 (= lt!2401361 e!3964615)))

(declare-fun c!1202660 () Bool)

(assert (=> d!2055292 (= c!1202660 e!3964614)))

(declare-fun res!2686248 () Bool)

(assert (=> d!2055292 (=> (not res!2686248) (not e!3964614))))

(assert (=> d!2055292 (= res!2686248 (matchR!8603 (regOne!33352 r!7292) Nil!65435))))

(assert (=> d!2055292 (validRegex!8156 (regOne!33352 r!7292))))

(assert (=> d!2055292 (= (findConcatSeparation!2725 (regOne!33352 r!7292) (regTwo!33352 r!7292) Nil!65435 s!2326 s!2326) lt!2401361)))

(declare-fun b!6548049 () Bool)

(declare-fun res!2686251 () Bool)

(assert (=> b!6548049 (=> (not res!2686251) (not e!3964611))))

(assert (=> b!6548049 (= res!2686251 (matchR!8603 (regTwo!33352 r!7292) (_2!36702 (get!22712 lt!2401361))))))

(assert (= (and d!2055292 res!2686248) b!6548052))

(assert (= (and d!2055292 c!1202660) b!6548047))

(assert (= (and d!2055292 (not c!1202660)) b!6548046))

(assert (= (and b!6548046 c!1202661) b!6548048))

(assert (= (and b!6548046 (not c!1202661)) b!6548050))

(assert (= (and d!2055292 res!2686247) b!6548051))

(assert (= (and b!6548051 res!2686249) b!6548049))

(assert (= (and b!6548049 res!2686251) b!6548053))

(assert (= (and d!2055292 (not res!2686250)) b!6548045))

(declare-fun m!7330760 () Bool)

(assert (=> d!2055292 m!7330760))

(declare-fun m!7330762 () Bool)

(assert (=> d!2055292 m!7330762))

(declare-fun m!7330764 () Bool)

(assert (=> d!2055292 m!7330764))

(declare-fun m!7330766 () Bool)

(assert (=> b!6548052 m!7330766))

(assert (=> b!6548050 m!7330686))

(assert (=> b!6548050 m!7330686))

(assert (=> b!6548050 m!7330688))

(assert (=> b!6548050 m!7330690))

(assert (=> b!6548050 m!7330686))

(declare-fun m!7330768 () Bool)

(assert (=> b!6548050 m!7330768))

(declare-fun m!7330770 () Bool)

(assert (=> b!6548051 m!7330770))

(declare-fun m!7330772 () Bool)

(assert (=> b!6548051 m!7330772))

(assert (=> b!6548053 m!7330770))

(declare-fun m!7330774 () Bool)

(assert (=> b!6548053 m!7330774))

(assert (=> b!6548045 m!7330760))

(assert (=> b!6548049 m!7330770))

(declare-fun m!7330776 () Bool)

(assert (=> b!6548049 m!7330776))

(assert (=> b!6547559 d!2055292))

(declare-fun d!2055294 () Bool)

(declare-fun choose!48674 (Int) Bool)

(assert (=> d!2055294 (= (Exists!3490 lambda!363521) (choose!48674 lambda!363521))))

(declare-fun bs!1671856 () Bool)

(assert (= bs!1671856 d!2055294))

(declare-fun m!7330778 () Bool)

(assert (=> bs!1671856 m!7330778))

(assert (=> b!6547559 d!2055294))

(declare-fun d!2055296 () Bool)

(assert (=> d!2055296 (= (Exists!3490 lambda!363520) (choose!48674 lambda!363520))))

(declare-fun bs!1671857 () Bool)

(assert (= bs!1671857 d!2055296))

(declare-fun m!7330780 () Bool)

(assert (=> bs!1671857 m!7330780))

(assert (=> b!6547559 d!2055296))

(declare-fun bs!1671858 () Bool)

(declare-fun d!2055298 () Bool)

(assert (= bs!1671858 (and d!2055298 b!6547559)))

(declare-fun lambda!363576 () Int)

(assert (=> bs!1671858 (= lambda!363576 lambda!363520)))

(assert (=> bs!1671858 (not (= lambda!363576 lambda!363521))))

(declare-fun bs!1671859 () Bool)

(assert (= bs!1671859 (and d!2055298 b!6547900)))

(assert (=> bs!1671859 (not (= lambda!363576 lambda!363568))))

(declare-fun bs!1671860 () Bool)

(assert (= bs!1671860 (and d!2055298 b!6547905)))

(assert (=> bs!1671860 (not (= lambda!363576 lambda!363569))))

(assert (=> d!2055298 true))

(assert (=> d!2055298 true))

(assert (=> d!2055298 true))

(assert (=> d!2055298 (= (isDefined!13014 (findConcatSeparation!2725 (regOne!33352 r!7292) (regTwo!33352 r!7292) Nil!65435 s!2326 s!2326)) (Exists!3490 lambda!363576))))

(declare-fun lt!2401365 () Unit!159015)

(declare-fun choose!48675 (Regex!16420 Regex!16420 List!65559) Unit!159015)

(assert (=> d!2055298 (= lt!2401365 (choose!48675 (regOne!33352 r!7292) (regTwo!33352 r!7292) s!2326))))

(assert (=> d!2055298 (validRegex!8156 (regOne!33352 r!7292))))

(assert (=> d!2055298 (= (lemmaFindConcatSeparationEquivalentToExists!2489 (regOne!33352 r!7292) (regTwo!33352 r!7292) s!2326) lt!2401365)))

(declare-fun bs!1671861 () Bool)

(assert (= bs!1671861 d!2055298))

(assert (=> bs!1671861 m!7330358))

(assert (=> bs!1671861 m!7330360))

(assert (=> bs!1671861 m!7330764))

(declare-fun m!7330790 () Bool)

(assert (=> bs!1671861 m!7330790))

(declare-fun m!7330792 () Bool)

(assert (=> bs!1671861 m!7330792))

(assert (=> bs!1671861 m!7330358))

(assert (=> b!6547559 d!2055298))

(declare-fun bs!1671864 () Bool)

(declare-fun d!2055302 () Bool)

(assert (= bs!1671864 (and d!2055302 b!6547559)))

(declare-fun lambda!363584 () Int)

(assert (=> bs!1671864 (not (= lambda!363584 lambda!363521))))

(assert (=> bs!1671864 (= lambda!363584 lambda!363520)))

(declare-fun bs!1671865 () Bool)

(assert (= bs!1671865 (and d!2055302 d!2055298)))

(assert (=> bs!1671865 (= lambda!363584 lambda!363576)))

(declare-fun bs!1671866 () Bool)

(assert (= bs!1671866 (and d!2055302 b!6547900)))

(assert (=> bs!1671866 (not (= lambda!363584 lambda!363568))))

(declare-fun bs!1671867 () Bool)

(assert (= bs!1671867 (and d!2055302 b!6547905)))

(assert (=> bs!1671867 (not (= lambda!363584 lambda!363569))))

(assert (=> d!2055302 true))

(assert (=> d!2055302 true))

(assert (=> d!2055302 true))

(declare-fun lambda!363585 () Int)

(assert (=> bs!1671864 (= lambda!363585 lambda!363521)))

(declare-fun bs!1671868 () Bool)

(assert (= bs!1671868 d!2055302))

(assert (=> bs!1671868 (not (= lambda!363585 lambda!363584))))

(assert (=> bs!1671864 (not (= lambda!363585 lambda!363520))))

(assert (=> bs!1671865 (not (= lambda!363585 lambda!363576))))

(assert (=> bs!1671866 (not (= lambda!363585 lambda!363568))))

(assert (=> bs!1671867 (= (and (= (regOne!33352 r!7292) (regOne!33352 lt!2401146)) (= (regTwo!33352 r!7292) (regTwo!33352 lt!2401146))) (= lambda!363585 lambda!363569))))

(assert (=> d!2055302 true))

(assert (=> d!2055302 true))

(assert (=> d!2055302 true))

(assert (=> d!2055302 (= (Exists!3490 lambda!363584) (Exists!3490 lambda!363585))))

(declare-fun lt!2401368 () Unit!159015)

(declare-fun choose!48676 (Regex!16420 Regex!16420 List!65559) Unit!159015)

(assert (=> d!2055302 (= lt!2401368 (choose!48676 (regOne!33352 r!7292) (regTwo!33352 r!7292) s!2326))))

(assert (=> d!2055302 (validRegex!8156 (regOne!33352 r!7292))))

(assert (=> d!2055302 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2027 (regOne!33352 r!7292) (regTwo!33352 r!7292) s!2326) lt!2401368)))

(declare-fun m!7330820 () Bool)

(assert (=> bs!1671868 m!7330820))

(declare-fun m!7330822 () Bool)

(assert (=> bs!1671868 m!7330822))

(declare-fun m!7330824 () Bool)

(assert (=> bs!1671868 m!7330824))

(assert (=> bs!1671868 m!7330764))

(assert (=> b!6547559 d!2055302))

(declare-fun d!2055310 () Bool)

(assert (=> d!2055310 (= (isDefined!13014 (findConcatSeparation!2725 (regOne!33352 r!7292) (regTwo!33352 r!7292) Nil!65435 s!2326 s!2326)) (not (isEmpty!37664 (findConcatSeparation!2725 (regOne!33352 r!7292) (regTwo!33352 r!7292) Nil!65435 s!2326 s!2326))))))

(declare-fun bs!1671869 () Bool)

(assert (= bs!1671869 d!2055310))

(assert (=> bs!1671869 m!7330358))

(declare-fun m!7330826 () Bool)

(assert (=> bs!1671869 m!7330826))

(assert (=> b!6547559 d!2055310))

(declare-fun d!2055312 () Bool)

(declare-fun c!1202671 () Bool)

(assert (=> d!2055312 (= c!1202671 (isEmpty!37663 s!2326))))

(declare-fun e!3964632 () Bool)

(assert (=> d!2055312 (= (matchZipper!2432 z!1189 s!2326) e!3964632)))

(declare-fun b!6548085 () Bool)

(assert (=> b!6548085 (= e!3964632 (nullableZipper!2165 z!1189))))

(declare-fun b!6548086 () Bool)

(assert (=> b!6548086 (= e!3964632 (matchZipper!2432 (derivationStepZipper!2386 z!1189 (head!13291 s!2326)) (tail!12376 s!2326)))))

(assert (= (and d!2055312 c!1202671) b!6548085))

(assert (= (and d!2055312 (not c!1202671)) b!6548086))

(assert (=> d!2055312 m!7330644))

(declare-fun m!7330828 () Bool)

(assert (=> b!6548085 m!7330828))

(assert (=> b!6548086 m!7330650))

(assert (=> b!6548086 m!7330650))

(declare-fun m!7330830 () Bool)

(assert (=> b!6548086 m!7330830))

(assert (=> b!6548086 m!7330654))

(assert (=> b!6548086 m!7330830))

(assert (=> b!6548086 m!7330654))

(declare-fun m!7330832 () Bool)

(assert (=> b!6548086 m!7330832))

(assert (=> b!6547579 d!2055312))

(declare-fun d!2055314 () Bool)

(declare-fun c!1202672 () Bool)

(assert (=> d!2055314 (= c!1202672 (isEmpty!37663 (_2!36702 lt!2401103)))))

(declare-fun e!3964633 () Bool)

(assert (=> d!2055314 (= (matchZipper!2432 lt!2401116 (_2!36702 lt!2401103)) e!3964633)))

(declare-fun b!6548087 () Bool)

(assert (=> b!6548087 (= e!3964633 (nullableZipper!2165 lt!2401116))))

(declare-fun b!6548088 () Bool)

(assert (=> b!6548088 (= e!3964633 (matchZipper!2432 (derivationStepZipper!2386 lt!2401116 (head!13291 (_2!36702 lt!2401103))) (tail!12376 (_2!36702 lt!2401103))))))

(assert (= (and d!2055314 c!1202672) b!6548087))

(assert (= (and d!2055314 (not c!1202672)) b!6548088))

(declare-fun m!7330834 () Bool)

(assert (=> d!2055314 m!7330834))

(declare-fun m!7330836 () Bool)

(assert (=> b!6548087 m!7330836))

(declare-fun m!7330838 () Bool)

(assert (=> b!6548088 m!7330838))

(assert (=> b!6548088 m!7330838))

(declare-fun m!7330840 () Bool)

(assert (=> b!6548088 m!7330840))

(declare-fun m!7330842 () Bool)

(assert (=> b!6548088 m!7330842))

(assert (=> b!6548088 m!7330840))

(assert (=> b!6548088 m!7330842))

(declare-fun m!7330844 () Bool)

(assert (=> b!6548088 m!7330844))

(assert (=> b!6547576 d!2055314))

(declare-fun d!2055316 () Bool)

(declare-fun choose!48677 ((Set Context!11608) Int) (Set Context!11608))

(assert (=> d!2055316 (= (map!14939 lt!2401106 lambda!363523) (choose!48677 lt!2401106 lambda!363523))))

(declare-fun bs!1671870 () Bool)

(assert (= bs!1671870 d!2055316))

(declare-fun m!7330846 () Bool)

(assert (=> bs!1671870 m!7330846))

(assert (=> b!6547598 d!2055316))

(declare-fun d!2055318 () Bool)

(assert (=> d!2055318 (forall!15592 (++!14542 lt!2401125 lt!2401120) lambda!363524)))

(declare-fun lt!2401371 () Unit!159015)

(declare-fun choose!48678 (List!65560 List!65560 Int) Unit!159015)

(assert (=> d!2055318 (= lt!2401371 (choose!48678 lt!2401125 lt!2401120 lambda!363524))))

(assert (=> d!2055318 (forall!15592 lt!2401125 lambda!363524)))

(assert (=> d!2055318 (= (lemmaConcatPreservesForall!393 lt!2401125 lt!2401120 lambda!363524) lt!2401371)))

(declare-fun bs!1671871 () Bool)

(assert (= bs!1671871 d!2055318))

(assert (=> bs!1671871 m!7330276))

(assert (=> bs!1671871 m!7330276))

(declare-fun m!7330848 () Bool)

(assert (=> bs!1671871 m!7330848))

(declare-fun m!7330850 () Bool)

(assert (=> bs!1671871 m!7330850))

(declare-fun m!7330852 () Bool)

(assert (=> bs!1671871 m!7330852))

(assert (=> b!6547598 d!2055318))

(declare-fun d!2055320 () Bool)

(declare-fun dynLambda!26013 (Int Context!11608) Context!11608)

(assert (=> d!2055320 (= (map!14939 lt!2401106 lambda!363523) (set.insert (dynLambda!26013 lambda!363523 lt!2401097) (as set.empty (Set Context!11608))))))

(declare-fun lt!2401374 () Unit!159015)

(declare-fun choose!48679 ((Set Context!11608) Context!11608 Int) Unit!159015)

(assert (=> d!2055320 (= lt!2401374 (choose!48679 lt!2401106 lt!2401097 lambda!363523))))

(assert (=> d!2055320 (= lt!2401106 (set.insert lt!2401097 (as set.empty (Set Context!11608))))))

(assert (=> d!2055320 (= (lemmaMapOnSingletonSet!203 lt!2401106 lt!2401097 lambda!363523) lt!2401374)))

(declare-fun b_lambda!247847 () Bool)

(assert (=> (not b_lambda!247847) (not d!2055320)))

(declare-fun bs!1671872 () Bool)

(assert (= bs!1671872 d!2055320))

(assert (=> bs!1671872 m!7330340))

(declare-fun m!7330854 () Bool)

(assert (=> bs!1671872 m!7330854))

(declare-fun m!7330856 () Bool)

(assert (=> bs!1671872 m!7330856))

(assert (=> bs!1671872 m!7330854))

(assert (=> bs!1671872 m!7330320))

(declare-fun m!7330858 () Bool)

(assert (=> bs!1671872 m!7330858))

(assert (=> b!6547598 d!2055320))

(declare-fun bs!1671873 () Bool)

(declare-fun d!2055322 () Bool)

(assert (= bs!1671873 (and d!2055322 b!6547598)))

(declare-fun lambda!363590 () Int)

(assert (=> bs!1671873 (= (= (exprs!6304 lt!2401141) lt!2401120) (= lambda!363590 lambda!363523))))

(assert (=> d!2055322 true))

(assert (=> d!2055322 (= (appendTo!181 lt!2401106 lt!2401141) (map!14939 lt!2401106 lambda!363590))))

(declare-fun bs!1671874 () Bool)

(assert (= bs!1671874 d!2055322))

(declare-fun m!7330860 () Bool)

(assert (=> bs!1671874 m!7330860))

(assert (=> b!6547598 d!2055322))

(declare-fun d!2055324 () Bool)

(declare-fun e!3964660 () Bool)

(assert (=> d!2055324 e!3964660))

(declare-fun res!2686284 () Bool)

(assert (=> d!2055324 (=> (not res!2686284) (not e!3964660))))

(declare-fun lt!2401379 () List!65560)

(declare-fun content!12544 (List!65560) (Set Regex!16420))

(assert (=> d!2055324 (= res!2686284 (= (content!12544 lt!2401379) (set.union (content!12544 lt!2401125) (content!12544 lt!2401120))))))

(declare-fun e!3964659 () List!65560)

(assert (=> d!2055324 (= lt!2401379 e!3964659)))

(declare-fun c!1202682 () Bool)

(assert (=> d!2055324 (= c!1202682 (is-Nil!65436 lt!2401125))))

(assert (=> d!2055324 (= (++!14542 lt!2401125 lt!2401120) lt!2401379)))

(declare-fun b!6548126 () Bool)

(assert (=> b!6548126 (= e!3964659 lt!2401120)))

(declare-fun b!6548129 () Bool)

(assert (=> b!6548129 (= e!3964660 (or (not (= lt!2401120 Nil!65436)) (= lt!2401379 lt!2401125)))))

(declare-fun b!6548127 () Bool)

(assert (=> b!6548127 (= e!3964659 (Cons!65436 (h!71884 lt!2401125) (++!14542 (t!379202 lt!2401125) lt!2401120)))))

(declare-fun b!6548128 () Bool)

(declare-fun res!2686285 () Bool)

(assert (=> b!6548128 (=> (not res!2686285) (not e!3964660))))

(declare-fun size!40491 (List!65560) Int)

(assert (=> b!6548128 (= res!2686285 (= (size!40491 lt!2401379) (+ (size!40491 lt!2401125) (size!40491 lt!2401120))))))

(assert (= (and d!2055324 c!1202682) b!6548126))

(assert (= (and d!2055324 (not c!1202682)) b!6548127))

(assert (= (and d!2055324 res!2686284) b!6548128))

(assert (= (and b!6548128 res!2686285) b!6548129))

(declare-fun m!7330870 () Bool)

(assert (=> d!2055324 m!7330870))

(declare-fun m!7330872 () Bool)

(assert (=> d!2055324 m!7330872))

(declare-fun m!7330874 () Bool)

(assert (=> d!2055324 m!7330874))

(declare-fun m!7330876 () Bool)

(assert (=> b!6548127 m!7330876))

(declare-fun m!7330878 () Bool)

(assert (=> b!6548128 m!7330878))

(declare-fun m!7330880 () Bool)

(assert (=> b!6548128 m!7330880))

(declare-fun m!7330882 () Bool)

(assert (=> b!6548128 m!7330882))

(assert (=> b!6547598 d!2055324))

(declare-fun bs!1671876 () Bool)

(declare-fun d!2055330 () Bool)

(assert (= bs!1671876 (and d!2055330 d!2055230)))

(declare-fun lambda!363593 () Int)

(assert (=> bs!1671876 (= lambda!363593 lambda!363557)))

(declare-fun bs!1671877 () Bool)

(assert (= bs!1671877 (and d!2055330 d!2055236)))

(assert (=> bs!1671877 (= lambda!363593 lambda!363560)))

(declare-fun bs!1671878 () Bool)

(assert (= bs!1671878 (and d!2055330 d!2055252)))

(assert (=> bs!1671878 (= lambda!363593 lambda!363563)))

(declare-fun bs!1671879 () Bool)

(assert (= bs!1671879 (and d!2055330 d!2055228)))

(assert (=> bs!1671879 (= lambda!363593 lambda!363554)))

(declare-fun bs!1671880 () Bool)

(assert (= bs!1671880 (and d!2055330 b!6547598)))

(assert (=> bs!1671880 (= lambda!363593 lambda!363524)))

(declare-fun bs!1671881 () Bool)

(assert (= bs!1671881 (and d!2055330 d!2055290)))

(assert (=> bs!1671881 (= lambda!363593 lambda!363573)))

(assert (=> d!2055330 (matchZipper!2432 (set.insert (Context!11609 (++!14542 (exprs!6304 lt!2401097) (exprs!6304 lt!2401141))) (as set.empty (Set Context!11608))) (++!14543 (_1!36702 lt!2401103) (_2!36702 lt!2401103)))))

(declare-fun lt!2401385 () Unit!159015)

(assert (=> d!2055330 (= lt!2401385 (lemmaConcatPreservesForall!393 (exprs!6304 lt!2401097) (exprs!6304 lt!2401141) lambda!363593))))

(declare-fun lt!2401384 () Unit!159015)

(declare-fun choose!48680 (Context!11608 Context!11608 List!65559 List!65559) Unit!159015)

(assert (=> d!2055330 (= lt!2401384 (choose!48680 lt!2401097 lt!2401141 (_1!36702 lt!2401103) (_2!36702 lt!2401103)))))

(assert (=> d!2055330 (matchZipper!2432 (set.insert lt!2401097 (as set.empty (Set Context!11608))) (_1!36702 lt!2401103))))

(assert (=> d!2055330 (= (lemmaConcatenateContextMatchesConcatOfStrings!201 lt!2401097 lt!2401141 (_1!36702 lt!2401103) (_2!36702 lt!2401103)) lt!2401384)))

(declare-fun bs!1671882 () Bool)

(assert (= bs!1671882 d!2055330))

(declare-fun m!7330890 () Bool)

(assert (=> bs!1671882 m!7330890))

(declare-fun m!7330892 () Bool)

(assert (=> bs!1671882 m!7330892))

(assert (=> bs!1671882 m!7330228))

(declare-fun m!7330894 () Bool)

(assert (=> bs!1671882 m!7330894))

(assert (=> bs!1671882 m!7330228))

(declare-fun m!7330896 () Bool)

(assert (=> bs!1671882 m!7330896))

(assert (=> bs!1671882 m!7330340))

(declare-fun m!7330898 () Bool)

(assert (=> bs!1671882 m!7330898))

(assert (=> bs!1671882 m!7330892))

(assert (=> bs!1671882 m!7330340))

(declare-fun m!7330900 () Bool)

(assert (=> bs!1671882 m!7330900))

(assert (=> b!6547557 d!2055330))

(declare-fun d!2055334 () Bool)

(assert (=> d!2055334 (= (matchR!8603 lt!2401126 (_2!36702 lt!2401103)) (matchZipper!2432 lt!2401116 (_2!36702 lt!2401103)))))

(declare-fun lt!2401391 () Unit!159015)

(declare-fun choose!48681 ((Set Context!11608) List!65561 Regex!16420 List!65559) Unit!159015)

(assert (=> d!2055334 (= lt!2401391 (choose!48681 lt!2401116 lt!2401142 lt!2401126 (_2!36702 lt!2401103)))))

(assert (=> d!2055334 (validRegex!8156 lt!2401126)))

(assert (=> d!2055334 (= (theoremZipperRegexEquiv!856 lt!2401116 lt!2401142 lt!2401126 (_2!36702 lt!2401103)) lt!2401391)))

(declare-fun bs!1671884 () Bool)

(assert (= bs!1671884 d!2055334))

(assert (=> bs!1671884 m!7330284))

(assert (=> bs!1671884 m!7330318))

(declare-fun m!7330906 () Bool)

(assert (=> bs!1671884 m!7330906))

(declare-fun m!7330908 () Bool)

(assert (=> bs!1671884 m!7330908))

(assert (=> b!6547557 d!2055334))

(declare-fun bs!1671887 () Bool)

(declare-fun b!6548149 () Bool)

(assert (= bs!1671887 (and b!6548149 b!6547559)))

(declare-fun lambda!363597 () Int)

(assert (=> bs!1671887 (not (= lambda!363597 lambda!363521))))

(declare-fun bs!1671888 () Bool)

(assert (= bs!1671888 (and b!6548149 d!2055302)))

(assert (=> bs!1671888 (not (= lambda!363597 lambda!363584))))

(assert (=> bs!1671887 (not (= lambda!363597 lambda!363520))))

(declare-fun bs!1671889 () Bool)

(assert (= bs!1671889 (and b!6548149 d!2055298)))

(assert (=> bs!1671889 (not (= lambda!363597 lambda!363576))))

(declare-fun bs!1671890 () Bool)

(assert (= bs!1671890 (and b!6548149 b!6547905)))

(assert (=> bs!1671890 (not (= lambda!363597 lambda!363569))))

(assert (=> bs!1671888 (not (= lambda!363597 lambda!363585))))

(declare-fun bs!1671891 () Bool)

(assert (= bs!1671891 (and b!6548149 b!6547900)))

(assert (=> bs!1671891 (= (and (= (reg!16749 lt!2401144) (reg!16749 lt!2401146)) (= lt!2401144 lt!2401146)) (= lambda!363597 lambda!363568))))

(assert (=> b!6548149 true))

(assert (=> b!6548149 true))

(declare-fun bs!1671892 () Bool)

(declare-fun b!6548154 () Bool)

(assert (= bs!1671892 (and b!6548154 d!2055302)))

(declare-fun lambda!363598 () Int)

(assert (=> bs!1671892 (not (= lambda!363598 lambda!363584))))

(declare-fun bs!1671893 () Bool)

(assert (= bs!1671893 (and b!6548154 b!6547559)))

(assert (=> bs!1671893 (not (= lambda!363598 lambda!363520))))

(declare-fun bs!1671894 () Bool)

(assert (= bs!1671894 (and b!6548154 d!2055298)))

(assert (=> bs!1671894 (not (= lambda!363598 lambda!363576))))

(declare-fun bs!1671895 () Bool)

(assert (= bs!1671895 (and b!6548154 b!6547905)))

(assert (=> bs!1671895 (= (and (= (regOne!33352 lt!2401144) (regOne!33352 lt!2401146)) (= (regTwo!33352 lt!2401144) (regTwo!33352 lt!2401146))) (= lambda!363598 lambda!363569))))

(assert (=> bs!1671893 (= (and (= (regOne!33352 lt!2401144) (regOne!33352 r!7292)) (= (regTwo!33352 lt!2401144) (regTwo!33352 r!7292))) (= lambda!363598 lambda!363521))))

(declare-fun bs!1671896 () Bool)

(assert (= bs!1671896 (and b!6548154 b!6548149)))

(assert (=> bs!1671896 (not (= lambda!363598 lambda!363597))))

(assert (=> bs!1671892 (= (and (= (regOne!33352 lt!2401144) (regOne!33352 r!7292)) (= (regTwo!33352 lt!2401144) (regTwo!33352 r!7292))) (= lambda!363598 lambda!363585))))

(declare-fun bs!1671897 () Bool)

(assert (= bs!1671897 (and b!6548154 b!6547900)))

(assert (=> bs!1671897 (not (= lambda!363598 lambda!363568))))

(assert (=> b!6548154 true))

(assert (=> b!6548154 true))

(declare-fun b!6548147 () Bool)

(declare-fun e!3964673 () Bool)

(assert (=> b!6548147 (= e!3964673 (matchRSpec!3521 (regTwo!33353 lt!2401144) s!2326))))

(declare-fun b!6548148 () Bool)

(declare-fun e!3964671 () Bool)

(declare-fun e!3964676 () Bool)

(assert (=> b!6548148 (= e!3964671 e!3964676)))

(declare-fun res!2686289 () Bool)

(assert (=> b!6548148 (= res!2686289 (not (is-EmptyLang!16420 lt!2401144)))))

(assert (=> b!6548148 (=> (not res!2686289) (not e!3964676))))

(declare-fun e!3964674 () Bool)

(declare-fun call!569524 () Bool)

(assert (=> b!6548149 (= e!3964674 call!569524)))

(declare-fun b!6548150 () Bool)

(declare-fun call!569525 () Bool)

(assert (=> b!6548150 (= e!3964671 call!569525)))

(declare-fun b!6548151 () Bool)

(declare-fun c!1202692 () Bool)

(assert (=> b!6548151 (= c!1202692 (is-ElementMatch!16420 lt!2401144))))

(declare-fun e!3964670 () Bool)

(assert (=> b!6548151 (= e!3964676 e!3964670)))

(declare-fun b!6548152 () Bool)

(declare-fun c!1202691 () Bool)

(assert (=> b!6548152 (= c!1202691 (is-Union!16420 lt!2401144))))

(declare-fun e!3964672 () Bool)

(assert (=> b!6548152 (= e!3964670 e!3964672)))

(declare-fun b!6548153 () Bool)

(declare-fun res!2686291 () Bool)

(assert (=> b!6548153 (=> res!2686291 e!3964674)))

(assert (=> b!6548153 (= res!2686291 call!569525)))

(declare-fun e!3964675 () Bool)

(assert (=> b!6548153 (= e!3964675 e!3964674)))

(assert (=> b!6548154 (= e!3964675 call!569524)))

(declare-fun bm!569520 () Bool)

(assert (=> bm!569520 (= call!569525 (isEmpty!37663 s!2326))))

(declare-fun b!6548155 () Bool)

(assert (=> b!6548155 (= e!3964670 (= s!2326 (Cons!65435 (c!1202553 lt!2401144) Nil!65435)))))

(declare-fun b!6548156 () Bool)

(assert (=> b!6548156 (= e!3964672 e!3964673)))

(declare-fun res!2686290 () Bool)

(assert (=> b!6548156 (= res!2686290 (matchRSpec!3521 (regOne!33353 lt!2401144) s!2326))))

(assert (=> b!6548156 (=> res!2686290 e!3964673)))

(declare-fun b!6548157 () Bool)

(assert (=> b!6548157 (= e!3964672 e!3964675)))

(declare-fun c!1202693 () Bool)

(assert (=> b!6548157 (= c!1202693 (is-Star!16420 lt!2401144))))

(declare-fun d!2055338 () Bool)

(declare-fun c!1202694 () Bool)

(assert (=> d!2055338 (= c!1202694 (is-EmptyExpr!16420 lt!2401144))))

(assert (=> d!2055338 (= (matchRSpec!3521 lt!2401144 s!2326) e!3964671)))

(declare-fun bm!569519 () Bool)

(assert (=> bm!569519 (= call!569524 (Exists!3490 (ite c!1202693 lambda!363597 lambda!363598)))))

(assert (= (and d!2055338 c!1202694) b!6548150))

(assert (= (and d!2055338 (not c!1202694)) b!6548148))

(assert (= (and b!6548148 res!2686289) b!6548151))

(assert (= (and b!6548151 c!1202692) b!6548155))

(assert (= (and b!6548151 (not c!1202692)) b!6548152))

(assert (= (and b!6548152 c!1202691) b!6548156))

(assert (= (and b!6548152 (not c!1202691)) b!6548157))

(assert (= (and b!6548156 (not res!2686290)) b!6548147))

(assert (= (and b!6548157 c!1202693) b!6548153))

(assert (= (and b!6548157 (not c!1202693)) b!6548154))

(assert (= (and b!6548153 (not res!2686291)) b!6548149))

(assert (= (or b!6548149 b!6548154) bm!569519))

(assert (= (or b!6548150 b!6548153) bm!569520))

(declare-fun m!7330912 () Bool)

(assert (=> b!6548147 m!7330912))

(assert (=> bm!569520 m!7330644))

(declare-fun m!7330914 () Bool)

(assert (=> b!6548156 m!7330914))

(declare-fun m!7330916 () Bool)

(assert (=> bm!569519 m!7330916))

(assert (=> b!6547557 d!2055338))

(declare-fun d!2055342 () Bool)

(assert (=> d!2055342 (= (matchR!8603 (reg!16749 (regOne!33352 r!7292)) (_1!36702 lt!2401103)) (matchZipper!2432 lt!2401106 (_1!36702 lt!2401103)))))

(declare-fun lt!2401395 () Unit!159015)

(assert (=> d!2055342 (= lt!2401395 (choose!48681 lt!2401106 lt!2401135 (reg!16749 (regOne!33352 r!7292)) (_1!36702 lt!2401103)))))

(assert (=> d!2055342 (validRegex!8156 (reg!16749 (regOne!33352 r!7292)))))

(assert (=> d!2055342 (= (theoremZipperRegexEquiv!856 lt!2401106 lt!2401135 (reg!16749 (regOne!33352 r!7292)) (_1!36702 lt!2401103)) lt!2401395)))

(declare-fun bs!1671899 () Bool)

(assert (= bs!1671899 d!2055342))

(assert (=> bs!1671899 m!7330294))

(assert (=> bs!1671899 m!7330270))

(declare-fun m!7330920 () Bool)

(assert (=> bs!1671899 m!7330920))

(declare-fun m!7330922 () Bool)

(assert (=> bs!1671899 m!7330922))

(assert (=> b!6547557 d!2055342))

(declare-fun d!2055346 () Bool)

(declare-fun e!3964679 () Bool)

(assert (=> d!2055346 e!3964679))

(declare-fun c!1202696 () Bool)

(assert (=> d!2055346 (= c!1202696 (is-EmptyExpr!16420 (reg!16749 (regOne!33352 r!7292))))))

(declare-fun lt!2401396 () Bool)

(declare-fun e!3964681 () Bool)

(assert (=> d!2055346 (= lt!2401396 e!3964681)))

(declare-fun c!1202697 () Bool)

(assert (=> d!2055346 (= c!1202697 (isEmpty!37663 (_1!36702 lt!2401103)))))

(assert (=> d!2055346 (validRegex!8156 (reg!16749 (regOne!33352 r!7292)))))

(assert (=> d!2055346 (= (matchR!8603 (reg!16749 (regOne!33352 r!7292)) (_1!36702 lt!2401103)) lt!2401396)))

(declare-fun b!6548158 () Bool)

(declare-fun e!3964677 () Bool)

(assert (=> b!6548158 (= e!3964679 e!3964677)))

(declare-fun c!1202695 () Bool)

(assert (=> b!6548158 (= c!1202695 (is-EmptyLang!16420 (reg!16749 (regOne!33352 r!7292))))))

(declare-fun b!6548159 () Bool)

(declare-fun res!2686297 () Bool)

(declare-fun e!3964683 () Bool)

(assert (=> b!6548159 (=> res!2686297 e!3964683)))

(assert (=> b!6548159 (= res!2686297 (not (is-ElementMatch!16420 (reg!16749 (regOne!33352 r!7292)))))))

(assert (=> b!6548159 (= e!3964677 e!3964683)))

(declare-fun b!6548160 () Bool)

(declare-fun res!2686298 () Bool)

(declare-fun e!3964680 () Bool)

(assert (=> b!6548160 (=> (not res!2686298) (not e!3964680))))

(assert (=> b!6548160 (= res!2686298 (isEmpty!37663 (tail!12376 (_1!36702 lt!2401103))))))

(declare-fun b!6548161 () Bool)

(declare-fun e!3964682 () Bool)

(assert (=> b!6548161 (= e!3964683 e!3964682)))

(declare-fun res!2686296 () Bool)

(assert (=> b!6548161 (=> (not res!2686296) (not e!3964682))))

(assert (=> b!6548161 (= res!2686296 (not lt!2401396))))

(declare-fun b!6548162 () Bool)

(assert (=> b!6548162 (= e!3964681 (matchR!8603 (derivativeStep!5104 (reg!16749 (regOne!33352 r!7292)) (head!13291 (_1!36702 lt!2401103))) (tail!12376 (_1!36702 lt!2401103))))))

(declare-fun b!6548163 () Bool)

(assert (=> b!6548163 (= e!3964681 (nullable!6413 (reg!16749 (regOne!33352 r!7292))))))

(declare-fun b!6548164 () Bool)

(assert (=> b!6548164 (= e!3964677 (not lt!2401396))))

(declare-fun b!6548165 () Bool)

(declare-fun e!3964678 () Bool)

(assert (=> b!6548165 (= e!3964682 e!3964678)))

(declare-fun res!2686295 () Bool)

(assert (=> b!6548165 (=> res!2686295 e!3964678)))

(declare-fun call!569526 () Bool)

(assert (=> b!6548165 (= res!2686295 call!569526)))

(declare-fun b!6548166 () Bool)

(declare-fun res!2686292 () Bool)

(assert (=> b!6548166 (=> (not res!2686292) (not e!3964680))))

(assert (=> b!6548166 (= res!2686292 (not call!569526))))

(declare-fun b!6548167 () Bool)

(declare-fun res!2686299 () Bool)

(assert (=> b!6548167 (=> res!2686299 e!3964678)))

(assert (=> b!6548167 (= res!2686299 (not (isEmpty!37663 (tail!12376 (_1!36702 lt!2401103)))))))

(declare-fun b!6548168 () Bool)

(assert (=> b!6548168 (= e!3964679 (= lt!2401396 call!569526))))

(declare-fun b!6548169 () Bool)

(assert (=> b!6548169 (= e!3964680 (= (head!13291 (_1!36702 lt!2401103)) (c!1202553 (reg!16749 (regOne!33352 r!7292)))))))

(declare-fun b!6548170 () Bool)

(assert (=> b!6548170 (= e!3964678 (not (= (head!13291 (_1!36702 lt!2401103)) (c!1202553 (reg!16749 (regOne!33352 r!7292))))))))

(declare-fun b!6548171 () Bool)

(declare-fun res!2686293 () Bool)

(assert (=> b!6548171 (=> res!2686293 e!3964683)))

(assert (=> b!6548171 (= res!2686293 e!3964680)))

(declare-fun res!2686294 () Bool)

(assert (=> b!6548171 (=> (not res!2686294) (not e!3964680))))

(assert (=> b!6548171 (= res!2686294 lt!2401396)))

(declare-fun bm!569521 () Bool)

(assert (=> bm!569521 (= call!569526 (isEmpty!37663 (_1!36702 lt!2401103)))))

(assert (= (and d!2055346 c!1202697) b!6548163))

(assert (= (and d!2055346 (not c!1202697)) b!6548162))

(assert (= (and d!2055346 c!1202696) b!6548168))

(assert (= (and d!2055346 (not c!1202696)) b!6548158))

(assert (= (and b!6548158 c!1202695) b!6548164))

(assert (= (and b!6548158 (not c!1202695)) b!6548159))

(assert (= (and b!6548159 (not res!2686297)) b!6548171))

(assert (= (and b!6548171 res!2686294) b!6548166))

(assert (= (and b!6548166 res!2686292) b!6548160))

(assert (= (and b!6548160 res!2686298) b!6548169))

(assert (= (and b!6548171 (not res!2686293)) b!6548161))

(assert (= (and b!6548161 res!2686296) b!6548165))

(assert (= (and b!6548165 (not res!2686295)) b!6548167))

(assert (= (and b!6548167 (not res!2686299)) b!6548170))

(assert (= (or b!6548168 b!6548165 b!6548166) bm!569521))

(assert (=> b!6548170 m!7330730))

(assert (=> d!2055346 m!7330726))

(assert (=> d!2055346 m!7330922))

(assert (=> b!6548169 m!7330730))

(assert (=> bm!569521 m!7330726))

(assert (=> b!6548167 m!7330734))

(assert (=> b!6548167 m!7330734))

(declare-fun m!7330924 () Bool)

(assert (=> b!6548167 m!7330924))

(assert (=> b!6548160 m!7330734))

(assert (=> b!6548160 m!7330734))

(assert (=> b!6548160 m!7330924))

(declare-fun m!7330926 () Bool)

(assert (=> b!6548163 m!7330926))

(assert (=> b!6548162 m!7330730))

(assert (=> b!6548162 m!7330730))

(declare-fun m!7330928 () Bool)

(assert (=> b!6548162 m!7330928))

(assert (=> b!6548162 m!7330734))

(assert (=> b!6548162 m!7330928))

(assert (=> b!6548162 m!7330734))

(declare-fun m!7330930 () Bool)

(assert (=> b!6548162 m!7330930))

(assert (=> b!6547557 d!2055346))

(declare-fun d!2055348 () Bool)

(declare-fun c!1202698 () Bool)

(assert (=> d!2055348 (= c!1202698 (isEmpty!37663 lt!2401101))))

(declare-fun e!3964684 () Bool)

(assert (=> d!2055348 (= (matchZipper!2432 (set.insert (Context!11609 (++!14542 lt!2401125 lt!2401120)) (as set.empty (Set Context!11608))) lt!2401101) e!3964684)))

(declare-fun b!6548172 () Bool)

(assert (=> b!6548172 (= e!3964684 (nullableZipper!2165 (set.insert (Context!11609 (++!14542 lt!2401125 lt!2401120)) (as set.empty (Set Context!11608)))))))

(declare-fun b!6548173 () Bool)

(assert (=> b!6548173 (= e!3964684 (matchZipper!2432 (derivationStepZipper!2386 (set.insert (Context!11609 (++!14542 lt!2401125 lt!2401120)) (as set.empty (Set Context!11608))) (head!13291 lt!2401101)) (tail!12376 lt!2401101)))))

(assert (= (and d!2055348 c!1202698) b!6548172))

(assert (= (and d!2055348 (not c!1202698)) b!6548173))

(declare-fun m!7330932 () Bool)

(assert (=> d!2055348 m!7330932))

(assert (=> b!6548172 m!7330296))

(declare-fun m!7330934 () Bool)

(assert (=> b!6548172 m!7330934))

(declare-fun m!7330936 () Bool)

(assert (=> b!6548173 m!7330936))

(assert (=> b!6548173 m!7330296))

(assert (=> b!6548173 m!7330936))

(declare-fun m!7330938 () Bool)

(assert (=> b!6548173 m!7330938))

(declare-fun m!7330940 () Bool)

(assert (=> b!6548173 m!7330940))

(assert (=> b!6548173 m!7330938))

(assert (=> b!6548173 m!7330940))

(declare-fun m!7330942 () Bool)

(assert (=> b!6548173 m!7330942))

(assert (=> b!6547557 d!2055348))

(declare-fun d!2055350 () Bool)

(assert (=> d!2055350 (= (matchR!8603 lt!2401144 s!2326) (matchRSpec!3521 lt!2401144 s!2326))))

(declare-fun lt!2401397 () Unit!159015)

(assert (=> d!2055350 (= lt!2401397 (choose!48672 lt!2401144 s!2326))))

(assert (=> d!2055350 (validRegex!8156 lt!2401144)))

(assert (=> d!2055350 (= (mainMatchTheorem!3521 lt!2401144 s!2326) lt!2401397)))

(declare-fun bs!1671900 () Bool)

(assert (= bs!1671900 d!2055350))

(assert (=> bs!1671900 m!7330288))

(assert (=> bs!1671900 m!7330300))

(declare-fun m!7330944 () Bool)

(assert (=> bs!1671900 m!7330944))

(declare-fun m!7330946 () Bool)

(assert (=> bs!1671900 m!7330946))

(assert (=> b!6547557 d!2055350))

(declare-fun bm!569528 () Bool)

(declare-fun call!569533 () Bool)

(declare-fun call!569535 () Bool)

(assert (=> bm!569528 (= call!569533 call!569535)))

(declare-fun b!6548197 () Bool)

(declare-fun e!3964707 () Bool)

(declare-fun e!3964703 () Bool)

(assert (=> b!6548197 (= e!3964707 e!3964703)))

(declare-fun c!1202704 () Bool)

(assert (=> b!6548197 (= c!1202704 (is-Union!16420 lt!2401110))))

(declare-fun b!6548198 () Bool)

(declare-fun e!3964705 () Bool)

(assert (=> b!6548198 (= e!3964705 call!569533)))

(declare-fun b!6548199 () Bool)

(declare-fun e!3964709 () Bool)

(assert (=> b!6548199 (= e!3964709 call!569535)))

(declare-fun b!6548200 () Bool)

(declare-fun e!3964704 () Bool)

(assert (=> b!6548200 (= e!3964704 e!3964707)))

(declare-fun c!1202705 () Bool)

(assert (=> b!6548200 (= c!1202705 (is-Star!16420 lt!2401110))))

(declare-fun d!2055352 () Bool)

(declare-fun res!2686315 () Bool)

(assert (=> d!2055352 (=> res!2686315 e!3964704)))

(assert (=> d!2055352 (= res!2686315 (is-ElementMatch!16420 lt!2401110))))

(assert (=> d!2055352 (= (validRegex!8156 lt!2401110) e!3964704)))

(declare-fun b!6548201 () Bool)

(declare-fun res!2686313 () Bool)

(declare-fun e!3964706 () Bool)

(assert (=> b!6548201 (=> (not res!2686313) (not e!3964706))))

(declare-fun call!569534 () Bool)

(assert (=> b!6548201 (= res!2686313 call!569534)))

(assert (=> b!6548201 (= e!3964703 e!3964706)))

(declare-fun b!6548202 () Bool)

(assert (=> b!6548202 (= e!3964707 e!3964709)))

(declare-fun res!2686316 () Bool)

(assert (=> b!6548202 (= res!2686316 (not (nullable!6413 (reg!16749 lt!2401110))))))

(assert (=> b!6548202 (=> (not res!2686316) (not e!3964709))))

(declare-fun bm!569529 () Bool)

(assert (=> bm!569529 (= call!569535 (validRegex!8156 (ite c!1202705 (reg!16749 lt!2401110) (ite c!1202704 (regTwo!33353 lt!2401110) (regTwo!33352 lt!2401110)))))))

(declare-fun b!6548203 () Bool)

(declare-fun res!2686317 () Bool)

(declare-fun e!3964708 () Bool)

(assert (=> b!6548203 (=> res!2686317 e!3964708)))

(assert (=> b!6548203 (= res!2686317 (not (is-Concat!25265 lt!2401110)))))

(assert (=> b!6548203 (= e!3964703 e!3964708)))

(declare-fun b!6548204 () Bool)

(assert (=> b!6548204 (= e!3964706 call!569533)))

(declare-fun bm!569530 () Bool)

(assert (=> bm!569530 (= call!569534 (validRegex!8156 (ite c!1202704 (regOne!33353 lt!2401110) (regOne!33352 lt!2401110))))))

(declare-fun b!6548205 () Bool)

(assert (=> b!6548205 (= e!3964708 e!3964705)))

(declare-fun res!2686314 () Bool)

(assert (=> b!6548205 (=> (not res!2686314) (not e!3964705))))

(assert (=> b!6548205 (= res!2686314 call!569534)))

(assert (= (and d!2055352 (not res!2686315)) b!6548200))

(assert (= (and b!6548200 c!1202705) b!6548202))

(assert (= (and b!6548200 (not c!1202705)) b!6548197))

(assert (= (and b!6548202 res!2686316) b!6548199))

(assert (= (and b!6548197 c!1202704) b!6548201))

(assert (= (and b!6548197 (not c!1202704)) b!6548203))

(assert (= (and b!6548201 res!2686313) b!6548204))

(assert (= (and b!6548203 (not res!2686317)) b!6548205))

(assert (= (and b!6548205 res!2686314) b!6548198))

(assert (= (or b!6548204 b!6548198) bm!569528))

(assert (= (or b!6548201 b!6548205) bm!569530))

(assert (= (or b!6548199 bm!569528) bm!569529))

(declare-fun m!7330956 () Bool)

(assert (=> b!6548202 m!7330956))

(declare-fun m!7330958 () Bool)

(assert (=> bm!569529 m!7330958))

(declare-fun m!7330960 () Bool)

(assert (=> bm!569530 m!7330960))

(assert (=> b!6547557 d!2055352))

(declare-fun d!2055358 () Bool)

(assert (=> d!2055358 (= (matchR!8603 (Concat!25265 (Concat!25265 (reg!16749 (regOne!33352 r!7292)) lt!2401148) (regTwo!33352 r!7292)) s!2326) (matchR!8603 (Concat!25265 (reg!16749 (regOne!33352 r!7292)) (Concat!25265 lt!2401148 (regTwo!33352 r!7292))) s!2326))))

(declare-fun lt!2401406 () Unit!159015)

(declare-fun choose!48683 (Regex!16420 Regex!16420 Regex!16420 List!65559) Unit!159015)

(assert (=> d!2055358 (= lt!2401406 (choose!48683 (reg!16749 (regOne!33352 r!7292)) lt!2401148 (regTwo!33352 r!7292) s!2326))))

(declare-fun e!3964712 () Bool)

(assert (=> d!2055358 e!3964712))

(declare-fun res!2686322 () Bool)

(assert (=> d!2055358 (=> (not res!2686322) (not e!3964712))))

(assert (=> d!2055358 (= res!2686322 (validRegex!8156 (reg!16749 (regOne!33352 r!7292))))))

(assert (=> d!2055358 (= (lemmaConcatAssociative!117 (reg!16749 (regOne!33352 r!7292)) lt!2401148 (regTwo!33352 r!7292) s!2326) lt!2401406)))

(declare-fun b!6548210 () Bool)

(declare-fun res!2686323 () Bool)

(assert (=> b!6548210 (=> (not res!2686323) (not e!3964712))))

(assert (=> b!6548210 (= res!2686323 (validRegex!8156 lt!2401148))))

(declare-fun b!6548211 () Bool)

(assert (=> b!6548211 (= e!3964712 (validRegex!8156 (regTwo!33352 r!7292)))))

(assert (= (and d!2055358 res!2686322) b!6548210))

(assert (= (and b!6548210 res!2686323) b!6548211))

(declare-fun m!7330968 () Bool)

(assert (=> d!2055358 m!7330968))

(declare-fun m!7330970 () Bool)

(assert (=> d!2055358 m!7330970))

(declare-fun m!7330972 () Bool)

(assert (=> d!2055358 m!7330972))

(assert (=> d!2055358 m!7330922))

(declare-fun m!7330974 () Bool)

(assert (=> b!6548210 m!7330974))

(assert (=> b!6548211 m!7330330))

(assert (=> b!6547557 d!2055358))

(declare-fun d!2055362 () Bool)

(declare-fun e!3964715 () Bool)

(assert (=> d!2055362 e!3964715))

(declare-fun c!1202707 () Bool)

(assert (=> d!2055362 (= c!1202707 (is-EmptyExpr!16420 lt!2401144))))

(declare-fun lt!2401407 () Bool)

(declare-fun e!3964717 () Bool)

(assert (=> d!2055362 (= lt!2401407 e!3964717)))

(declare-fun c!1202708 () Bool)

(assert (=> d!2055362 (= c!1202708 (isEmpty!37663 s!2326))))

(assert (=> d!2055362 (validRegex!8156 lt!2401144)))

(assert (=> d!2055362 (= (matchR!8603 lt!2401144 s!2326) lt!2401407)))

(declare-fun b!6548212 () Bool)

(declare-fun e!3964713 () Bool)

(assert (=> b!6548212 (= e!3964715 e!3964713)))

(declare-fun c!1202706 () Bool)

(assert (=> b!6548212 (= c!1202706 (is-EmptyLang!16420 lt!2401144))))

(declare-fun b!6548213 () Bool)

(declare-fun res!2686329 () Bool)

(declare-fun e!3964719 () Bool)

(assert (=> b!6548213 (=> res!2686329 e!3964719)))

(assert (=> b!6548213 (= res!2686329 (not (is-ElementMatch!16420 lt!2401144)))))

(assert (=> b!6548213 (= e!3964713 e!3964719)))

(declare-fun b!6548214 () Bool)

(declare-fun res!2686330 () Bool)

(declare-fun e!3964716 () Bool)

(assert (=> b!6548214 (=> (not res!2686330) (not e!3964716))))

(assert (=> b!6548214 (= res!2686330 (isEmpty!37663 (tail!12376 s!2326)))))

(declare-fun b!6548215 () Bool)

(declare-fun e!3964718 () Bool)

(assert (=> b!6548215 (= e!3964719 e!3964718)))

(declare-fun res!2686328 () Bool)

(assert (=> b!6548215 (=> (not res!2686328) (not e!3964718))))

(assert (=> b!6548215 (= res!2686328 (not lt!2401407))))

(declare-fun b!6548216 () Bool)

(assert (=> b!6548216 (= e!3964717 (matchR!8603 (derivativeStep!5104 lt!2401144 (head!13291 s!2326)) (tail!12376 s!2326)))))

(declare-fun b!6548217 () Bool)

(assert (=> b!6548217 (= e!3964717 (nullable!6413 lt!2401144))))

(declare-fun b!6548218 () Bool)

(assert (=> b!6548218 (= e!3964713 (not lt!2401407))))

(declare-fun b!6548219 () Bool)

(declare-fun e!3964714 () Bool)

(assert (=> b!6548219 (= e!3964718 e!3964714)))

(declare-fun res!2686327 () Bool)

(assert (=> b!6548219 (=> res!2686327 e!3964714)))

(declare-fun call!569536 () Bool)

(assert (=> b!6548219 (= res!2686327 call!569536)))

(declare-fun b!6548220 () Bool)

(declare-fun res!2686324 () Bool)

(assert (=> b!6548220 (=> (not res!2686324) (not e!3964716))))

(assert (=> b!6548220 (= res!2686324 (not call!569536))))

(declare-fun b!6548221 () Bool)

(declare-fun res!2686331 () Bool)

(assert (=> b!6548221 (=> res!2686331 e!3964714)))

(assert (=> b!6548221 (= res!2686331 (not (isEmpty!37663 (tail!12376 s!2326))))))

(declare-fun b!6548222 () Bool)

(assert (=> b!6548222 (= e!3964715 (= lt!2401407 call!569536))))

(declare-fun b!6548223 () Bool)

(assert (=> b!6548223 (= e!3964716 (= (head!13291 s!2326) (c!1202553 lt!2401144)))))

(declare-fun b!6548224 () Bool)

(assert (=> b!6548224 (= e!3964714 (not (= (head!13291 s!2326) (c!1202553 lt!2401144))))))

(declare-fun b!6548225 () Bool)

(declare-fun res!2686325 () Bool)

(assert (=> b!6548225 (=> res!2686325 e!3964719)))

(assert (=> b!6548225 (= res!2686325 e!3964716)))

(declare-fun res!2686326 () Bool)

(assert (=> b!6548225 (=> (not res!2686326) (not e!3964716))))

(assert (=> b!6548225 (= res!2686326 lt!2401407)))

(declare-fun bm!569531 () Bool)

(assert (=> bm!569531 (= call!569536 (isEmpty!37663 s!2326))))

(assert (= (and d!2055362 c!1202708) b!6548217))

(assert (= (and d!2055362 (not c!1202708)) b!6548216))

(assert (= (and d!2055362 c!1202707) b!6548222))

(assert (= (and d!2055362 (not c!1202707)) b!6548212))

(assert (= (and b!6548212 c!1202706) b!6548218))

(assert (= (and b!6548212 (not c!1202706)) b!6548213))

(assert (= (and b!6548213 (not res!2686329)) b!6548225))

(assert (= (and b!6548225 res!2686326) b!6548220))

(assert (= (and b!6548220 res!2686324) b!6548214))

(assert (= (and b!6548214 res!2686330) b!6548223))

(assert (= (and b!6548225 (not res!2686325)) b!6548215))

(assert (= (and b!6548215 res!2686328) b!6548219))

(assert (= (and b!6548219 (not res!2686327)) b!6548221))

(assert (= (and b!6548221 (not res!2686331)) b!6548224))

(assert (= (or b!6548222 b!6548219 b!6548220) bm!569531))

(assert (=> b!6548224 m!7330650))

(assert (=> d!2055362 m!7330644))

(assert (=> d!2055362 m!7330946))

(assert (=> b!6548223 m!7330650))

(assert (=> bm!569531 m!7330644))

(assert (=> b!6548221 m!7330654))

(assert (=> b!6548221 m!7330654))

(assert (=> b!6548221 m!7330656))

(assert (=> b!6548214 m!7330654))

(assert (=> b!6548214 m!7330654))

(assert (=> b!6548214 m!7330656))

(declare-fun m!7330976 () Bool)

(assert (=> b!6548217 m!7330976))

(assert (=> b!6548216 m!7330650))

(assert (=> b!6548216 m!7330650))

(declare-fun m!7330978 () Bool)

(assert (=> b!6548216 m!7330978))

(assert (=> b!6548216 m!7330654))

(assert (=> b!6548216 m!7330978))

(assert (=> b!6548216 m!7330654))

(declare-fun m!7330980 () Bool)

(assert (=> b!6548216 m!7330980))

(assert (=> b!6547557 d!2055362))

(assert (=> b!6547557 d!2055318))

(declare-fun d!2055364 () Bool)

(assert (=> d!2055364 (matchR!8603 (Concat!25265 (reg!16749 (regOne!33352 r!7292)) lt!2401126) (++!14543 (_1!36702 lt!2401103) (_2!36702 lt!2401103)))))

(declare-fun lt!2401412 () Unit!159015)

(declare-fun choose!48687 (Regex!16420 Regex!16420 List!65559 List!65559) Unit!159015)

(assert (=> d!2055364 (= lt!2401412 (choose!48687 (reg!16749 (regOne!33352 r!7292)) lt!2401126 (_1!36702 lt!2401103) (_2!36702 lt!2401103)))))

(declare-fun e!3964726 () Bool)

(assert (=> d!2055364 e!3964726))

(declare-fun res!2686338 () Bool)

(assert (=> d!2055364 (=> (not res!2686338) (not e!3964726))))

(assert (=> d!2055364 (= res!2686338 (validRegex!8156 (reg!16749 (regOne!33352 r!7292))))))

(assert (=> d!2055364 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!341 (reg!16749 (regOne!33352 r!7292)) lt!2401126 (_1!36702 lt!2401103) (_2!36702 lt!2401103)) lt!2401412)))

(declare-fun b!6548236 () Bool)

(assert (=> b!6548236 (= e!3964726 (validRegex!8156 lt!2401126))))

(assert (= (and d!2055364 res!2686338) b!6548236))

(assert (=> d!2055364 m!7330228))

(assert (=> d!2055364 m!7330228))

(declare-fun m!7330982 () Bool)

(assert (=> d!2055364 m!7330982))

(declare-fun m!7330984 () Bool)

(assert (=> d!2055364 m!7330984))

(assert (=> d!2055364 m!7330922))

(assert (=> b!6548236 m!7330908))

(assert (=> b!6547557 d!2055364))

(declare-fun d!2055366 () Bool)

(declare-fun e!3964729 () Bool)

(assert (=> d!2055366 e!3964729))

(declare-fun c!1202712 () Bool)

(assert (=> d!2055366 (= c!1202712 (is-EmptyExpr!16420 lt!2401126))))

(declare-fun lt!2401413 () Bool)

(declare-fun e!3964731 () Bool)

(assert (=> d!2055366 (= lt!2401413 e!3964731)))

(declare-fun c!1202713 () Bool)

(assert (=> d!2055366 (= c!1202713 (isEmpty!37663 (_2!36702 lt!2401103)))))

(assert (=> d!2055366 (validRegex!8156 lt!2401126)))

(assert (=> d!2055366 (= (matchR!8603 lt!2401126 (_2!36702 lt!2401103)) lt!2401413)))

(declare-fun b!6548237 () Bool)

(declare-fun e!3964727 () Bool)

(assert (=> b!6548237 (= e!3964729 e!3964727)))

(declare-fun c!1202711 () Bool)

(assert (=> b!6548237 (= c!1202711 (is-EmptyLang!16420 lt!2401126))))

(declare-fun b!6548238 () Bool)

(declare-fun res!2686344 () Bool)

(declare-fun e!3964733 () Bool)

(assert (=> b!6548238 (=> res!2686344 e!3964733)))

(assert (=> b!6548238 (= res!2686344 (not (is-ElementMatch!16420 lt!2401126)))))

(assert (=> b!6548238 (= e!3964727 e!3964733)))

(declare-fun b!6548239 () Bool)

(declare-fun res!2686345 () Bool)

(declare-fun e!3964730 () Bool)

(assert (=> b!6548239 (=> (not res!2686345) (not e!3964730))))

(assert (=> b!6548239 (= res!2686345 (isEmpty!37663 (tail!12376 (_2!36702 lt!2401103))))))

(declare-fun b!6548240 () Bool)

(declare-fun e!3964732 () Bool)

(assert (=> b!6548240 (= e!3964733 e!3964732)))

(declare-fun res!2686343 () Bool)

(assert (=> b!6548240 (=> (not res!2686343) (not e!3964732))))

(assert (=> b!6548240 (= res!2686343 (not lt!2401413))))

(declare-fun b!6548241 () Bool)

(assert (=> b!6548241 (= e!3964731 (matchR!8603 (derivativeStep!5104 lt!2401126 (head!13291 (_2!36702 lt!2401103))) (tail!12376 (_2!36702 lt!2401103))))))

(declare-fun b!6548242 () Bool)

(assert (=> b!6548242 (= e!3964731 (nullable!6413 lt!2401126))))

(declare-fun b!6548243 () Bool)

(assert (=> b!6548243 (= e!3964727 (not lt!2401413))))

(declare-fun b!6548244 () Bool)

(declare-fun e!3964728 () Bool)

(assert (=> b!6548244 (= e!3964732 e!3964728)))

(declare-fun res!2686342 () Bool)

(assert (=> b!6548244 (=> res!2686342 e!3964728)))

(declare-fun call!569537 () Bool)

(assert (=> b!6548244 (= res!2686342 call!569537)))

(declare-fun b!6548245 () Bool)

(declare-fun res!2686339 () Bool)

(assert (=> b!6548245 (=> (not res!2686339) (not e!3964730))))

(assert (=> b!6548245 (= res!2686339 (not call!569537))))

(declare-fun b!6548246 () Bool)

(declare-fun res!2686346 () Bool)

(assert (=> b!6548246 (=> res!2686346 e!3964728)))

(assert (=> b!6548246 (= res!2686346 (not (isEmpty!37663 (tail!12376 (_2!36702 lt!2401103)))))))

(declare-fun b!6548247 () Bool)

(assert (=> b!6548247 (= e!3964729 (= lt!2401413 call!569537))))

(declare-fun b!6548248 () Bool)

(assert (=> b!6548248 (= e!3964730 (= (head!13291 (_2!36702 lt!2401103)) (c!1202553 lt!2401126)))))

(declare-fun b!6548249 () Bool)

(assert (=> b!6548249 (= e!3964728 (not (= (head!13291 (_2!36702 lt!2401103)) (c!1202553 lt!2401126))))))

(declare-fun b!6548250 () Bool)

(declare-fun res!2686340 () Bool)

(assert (=> b!6548250 (=> res!2686340 e!3964733)))

(assert (=> b!6548250 (= res!2686340 e!3964730)))

(declare-fun res!2686341 () Bool)

(assert (=> b!6548250 (=> (not res!2686341) (not e!3964730))))

(assert (=> b!6548250 (= res!2686341 lt!2401413)))

(declare-fun bm!569532 () Bool)

(assert (=> bm!569532 (= call!569537 (isEmpty!37663 (_2!36702 lt!2401103)))))

(assert (= (and d!2055366 c!1202713) b!6548242))

(assert (= (and d!2055366 (not c!1202713)) b!6548241))

(assert (= (and d!2055366 c!1202712) b!6548247))

(assert (= (and d!2055366 (not c!1202712)) b!6548237))

(assert (= (and b!6548237 c!1202711) b!6548243))

(assert (= (and b!6548237 (not c!1202711)) b!6548238))

(assert (= (and b!6548238 (not res!2686344)) b!6548250))

(assert (= (and b!6548250 res!2686341) b!6548245))

(assert (= (and b!6548245 res!2686339) b!6548239))

(assert (= (and b!6548239 res!2686345) b!6548248))

(assert (= (and b!6548250 (not res!2686340)) b!6548240))

(assert (= (and b!6548240 res!2686343) b!6548244))

(assert (= (and b!6548244 (not res!2686342)) b!6548246))

(assert (= (and b!6548246 (not res!2686346)) b!6548249))

(assert (= (or b!6548247 b!6548244 b!6548245) bm!569532))

(assert (=> b!6548249 m!7330838))

(assert (=> d!2055366 m!7330834))

(assert (=> d!2055366 m!7330908))

(assert (=> b!6548248 m!7330838))

(assert (=> bm!569532 m!7330834))

(assert (=> b!6548246 m!7330842))

(assert (=> b!6548246 m!7330842))

(declare-fun m!7330992 () Bool)

(assert (=> b!6548246 m!7330992))

(assert (=> b!6548239 m!7330842))

(assert (=> b!6548239 m!7330842))

(assert (=> b!6548239 m!7330992))

(declare-fun m!7331000 () Bool)

(assert (=> b!6548242 m!7331000))

(assert (=> b!6548241 m!7330838))

(assert (=> b!6548241 m!7330838))

(declare-fun m!7331004 () Bool)

(assert (=> b!6548241 m!7331004))

(assert (=> b!6548241 m!7330842))

(assert (=> b!6548241 m!7331004))

(assert (=> b!6548241 m!7330842))

(declare-fun m!7331006 () Bool)

(assert (=> b!6548241 m!7331006))

(assert (=> b!6547557 d!2055366))

(declare-fun d!2055370 () Bool)

(declare-fun e!3964738 () Bool)

(assert (=> d!2055370 e!3964738))

(declare-fun c!1202716 () Bool)

(assert (=> d!2055370 (= c!1202716 (is-EmptyExpr!16420 lt!2401146))))

(declare-fun lt!2401415 () Bool)

(declare-fun e!3964740 () Bool)

(assert (=> d!2055370 (= lt!2401415 e!3964740)))

(declare-fun c!1202717 () Bool)

(assert (=> d!2055370 (= c!1202717 (isEmpty!37663 lt!2401101))))

(assert (=> d!2055370 (validRegex!8156 lt!2401146)))

(assert (=> d!2055370 (= (matchR!8603 lt!2401146 lt!2401101) lt!2401415)))

(declare-fun b!6548255 () Bool)

(declare-fun e!3964736 () Bool)

(assert (=> b!6548255 (= e!3964738 e!3964736)))

(declare-fun c!1202715 () Bool)

(assert (=> b!6548255 (= c!1202715 (is-EmptyLang!16420 lt!2401146))))

(declare-fun b!6548256 () Bool)

(declare-fun res!2686354 () Bool)

(declare-fun e!3964742 () Bool)

(assert (=> b!6548256 (=> res!2686354 e!3964742)))

(assert (=> b!6548256 (= res!2686354 (not (is-ElementMatch!16420 lt!2401146)))))

(assert (=> b!6548256 (= e!3964736 e!3964742)))

(declare-fun b!6548257 () Bool)

(declare-fun res!2686355 () Bool)

(declare-fun e!3964739 () Bool)

(assert (=> b!6548257 (=> (not res!2686355) (not e!3964739))))

(assert (=> b!6548257 (= res!2686355 (isEmpty!37663 (tail!12376 lt!2401101)))))

(declare-fun b!6548258 () Bool)

(declare-fun e!3964741 () Bool)

(assert (=> b!6548258 (= e!3964742 e!3964741)))

(declare-fun res!2686353 () Bool)

(assert (=> b!6548258 (=> (not res!2686353) (not e!3964741))))

(assert (=> b!6548258 (= res!2686353 (not lt!2401415))))

(declare-fun b!6548259 () Bool)

(assert (=> b!6548259 (= e!3964740 (matchR!8603 (derivativeStep!5104 lt!2401146 (head!13291 lt!2401101)) (tail!12376 lt!2401101)))))

(declare-fun b!6548260 () Bool)

(assert (=> b!6548260 (= e!3964740 (nullable!6413 lt!2401146))))

(declare-fun b!6548261 () Bool)

(assert (=> b!6548261 (= e!3964736 (not lt!2401415))))

(declare-fun b!6548262 () Bool)

(declare-fun e!3964737 () Bool)

(assert (=> b!6548262 (= e!3964741 e!3964737)))

(declare-fun res!2686352 () Bool)

(assert (=> b!6548262 (=> res!2686352 e!3964737)))

(declare-fun call!569538 () Bool)

(assert (=> b!6548262 (= res!2686352 call!569538)))

(declare-fun b!6548263 () Bool)

(declare-fun res!2686349 () Bool)

(assert (=> b!6548263 (=> (not res!2686349) (not e!3964739))))

(assert (=> b!6548263 (= res!2686349 (not call!569538))))

(declare-fun b!6548264 () Bool)

(declare-fun res!2686356 () Bool)

(assert (=> b!6548264 (=> res!2686356 e!3964737)))

(assert (=> b!6548264 (= res!2686356 (not (isEmpty!37663 (tail!12376 lt!2401101))))))

(declare-fun b!6548265 () Bool)

(assert (=> b!6548265 (= e!3964738 (= lt!2401415 call!569538))))

(declare-fun b!6548266 () Bool)

(assert (=> b!6548266 (= e!3964739 (= (head!13291 lt!2401101) (c!1202553 lt!2401146)))))

(declare-fun b!6548267 () Bool)

(assert (=> b!6548267 (= e!3964737 (not (= (head!13291 lt!2401101) (c!1202553 lt!2401146))))))

(declare-fun b!6548268 () Bool)

(declare-fun res!2686350 () Bool)

(assert (=> b!6548268 (=> res!2686350 e!3964742)))

(assert (=> b!6548268 (= res!2686350 e!3964739)))

(declare-fun res!2686351 () Bool)

(assert (=> b!6548268 (=> (not res!2686351) (not e!3964739))))

(assert (=> b!6548268 (= res!2686351 lt!2401415)))

(declare-fun bm!569533 () Bool)

(assert (=> bm!569533 (= call!569538 (isEmpty!37663 lt!2401101))))

(assert (= (and d!2055370 c!1202717) b!6548260))

(assert (= (and d!2055370 (not c!1202717)) b!6548259))

(assert (= (and d!2055370 c!1202716) b!6548265))

(assert (= (and d!2055370 (not c!1202716)) b!6548255))

(assert (= (and b!6548255 c!1202715) b!6548261))

(assert (= (and b!6548255 (not c!1202715)) b!6548256))

(assert (= (and b!6548256 (not res!2686354)) b!6548268))

(assert (= (and b!6548268 res!2686351) b!6548263))

(assert (= (and b!6548263 res!2686349) b!6548257))

(assert (= (and b!6548257 res!2686355) b!6548266))

(assert (= (and b!6548268 (not res!2686350)) b!6548258))

(assert (= (and b!6548258 res!2686353) b!6548262))

(assert (= (and b!6548262 (not res!2686352)) b!6548264))

(assert (= (and b!6548264 (not res!2686356)) b!6548267))

(assert (= (or b!6548265 b!6548262 b!6548263) bm!569533))

(assert (=> b!6548267 m!7330936))

(assert (=> d!2055370 m!7330932))

(assert (=> d!2055370 m!7330652))

(assert (=> b!6548266 m!7330936))

(assert (=> bm!569533 m!7330932))

(assert (=> b!6548264 m!7330940))

(assert (=> b!6548264 m!7330940))

(declare-fun m!7331008 () Bool)

(assert (=> b!6548264 m!7331008))

(assert (=> b!6548257 m!7330940))

(assert (=> b!6548257 m!7330940))

(assert (=> b!6548257 m!7331008))

(assert (=> b!6548260 m!7330658))

(assert (=> b!6548259 m!7330936))

(assert (=> b!6548259 m!7330936))

(declare-fun m!7331010 () Bool)

(assert (=> b!6548259 m!7331010))

(assert (=> b!6548259 m!7330940))

(assert (=> b!6548259 m!7331010))

(assert (=> b!6548259 m!7330940))

(declare-fun m!7331012 () Bool)

(assert (=> b!6548259 m!7331012))

(assert (=> b!6547557 d!2055370))

(assert (=> b!6547557 d!2055324))

(declare-fun d!2055372 () Bool)

(declare-fun lt!2401416 () Regex!16420)

(assert (=> d!2055372 (validRegex!8156 lt!2401416)))

(assert (=> d!2055372 (= lt!2401416 (generalisedUnion!2264 (unfocusZipperList!1841 lt!2401142)))))

(assert (=> d!2055372 (= (unfocusZipper!2162 lt!2401142) lt!2401416)))

(declare-fun bs!1671902 () Bool)

(assert (= bs!1671902 d!2055372))

(declare-fun m!7331014 () Bool)

(assert (=> bs!1671902 m!7331014))

(declare-fun m!7331016 () Bool)

(assert (=> bs!1671902 m!7331016))

(assert (=> bs!1671902 m!7331016))

(declare-fun m!7331018 () Bool)

(assert (=> bs!1671902 m!7331018))

(assert (=> b!6547572 d!2055372))

(declare-fun bs!1671903 () Bool)

(declare-fun b!6548271 () Bool)

(assert (= bs!1671903 (and b!6548271 d!2055302)))

(declare-fun lambda!363599 () Int)

(assert (=> bs!1671903 (not (= lambda!363599 lambda!363584))))

(declare-fun bs!1671904 () Bool)

(assert (= bs!1671904 (and b!6548271 b!6547559)))

(assert (=> bs!1671904 (not (= lambda!363599 lambda!363520))))

(declare-fun bs!1671905 () Bool)

(assert (= bs!1671905 (and b!6548271 b!6548154)))

(assert (=> bs!1671905 (not (= lambda!363599 lambda!363598))))

(declare-fun bs!1671906 () Bool)

(assert (= bs!1671906 (and b!6548271 d!2055298)))

(assert (=> bs!1671906 (not (= lambda!363599 lambda!363576))))

(declare-fun bs!1671907 () Bool)

(assert (= bs!1671907 (and b!6548271 b!6547905)))

(assert (=> bs!1671907 (not (= lambda!363599 lambda!363569))))

(assert (=> bs!1671904 (not (= lambda!363599 lambda!363521))))

(declare-fun bs!1671908 () Bool)

(assert (= bs!1671908 (and b!6548271 b!6548149)))

(assert (=> bs!1671908 (= (and (= (reg!16749 r!7292) (reg!16749 lt!2401144)) (= r!7292 lt!2401144)) (= lambda!363599 lambda!363597))))

(assert (=> bs!1671903 (not (= lambda!363599 lambda!363585))))

(declare-fun bs!1671909 () Bool)

(assert (= bs!1671909 (and b!6548271 b!6547900)))

(assert (=> bs!1671909 (= (and (= (reg!16749 r!7292) (reg!16749 lt!2401146)) (= r!7292 lt!2401146)) (= lambda!363599 lambda!363568))))

(assert (=> b!6548271 true))

(assert (=> b!6548271 true))

(declare-fun bs!1671910 () Bool)

(declare-fun b!6548276 () Bool)

(assert (= bs!1671910 (and b!6548276 d!2055302)))

(declare-fun lambda!363600 () Int)

(assert (=> bs!1671910 (not (= lambda!363600 lambda!363584))))

(declare-fun bs!1671911 () Bool)

(assert (= bs!1671911 (and b!6548276 b!6547559)))

(assert (=> bs!1671911 (not (= lambda!363600 lambda!363520))))

(declare-fun bs!1671912 () Bool)

(assert (= bs!1671912 (and b!6548276 b!6548154)))

(assert (=> bs!1671912 (= (and (= (regOne!33352 r!7292) (regOne!33352 lt!2401144)) (= (regTwo!33352 r!7292) (regTwo!33352 lt!2401144))) (= lambda!363600 lambda!363598))))

(declare-fun bs!1671913 () Bool)

(assert (= bs!1671913 (and b!6548276 d!2055298)))

(assert (=> bs!1671913 (not (= lambda!363600 lambda!363576))))

(declare-fun bs!1671914 () Bool)

(assert (= bs!1671914 (and b!6548276 b!6548271)))

(assert (=> bs!1671914 (not (= lambda!363600 lambda!363599))))

(declare-fun bs!1671915 () Bool)

(assert (= bs!1671915 (and b!6548276 b!6547905)))

(assert (=> bs!1671915 (= (and (= (regOne!33352 r!7292) (regOne!33352 lt!2401146)) (= (regTwo!33352 r!7292) (regTwo!33352 lt!2401146))) (= lambda!363600 lambda!363569))))

(assert (=> bs!1671911 (= lambda!363600 lambda!363521)))

(declare-fun bs!1671916 () Bool)

(assert (= bs!1671916 (and b!6548276 b!6548149)))

(assert (=> bs!1671916 (not (= lambda!363600 lambda!363597))))

(assert (=> bs!1671910 (= lambda!363600 lambda!363585)))

(declare-fun bs!1671917 () Bool)

(assert (= bs!1671917 (and b!6548276 b!6547900)))

(assert (=> bs!1671917 (not (= lambda!363600 lambda!363568))))

(assert (=> b!6548276 true))

(assert (=> b!6548276 true))

(declare-fun b!6548269 () Bool)

(declare-fun e!3964746 () Bool)

(assert (=> b!6548269 (= e!3964746 (matchRSpec!3521 (regTwo!33353 r!7292) s!2326))))

(declare-fun b!6548270 () Bool)

(declare-fun e!3964744 () Bool)

(declare-fun e!3964749 () Bool)

(assert (=> b!6548270 (= e!3964744 e!3964749)))

(declare-fun res!2686357 () Bool)

(assert (=> b!6548270 (= res!2686357 (not (is-EmptyLang!16420 r!7292)))))

(assert (=> b!6548270 (=> (not res!2686357) (not e!3964749))))

(declare-fun e!3964747 () Bool)

(declare-fun call!569539 () Bool)

(assert (=> b!6548271 (= e!3964747 call!569539)))

(declare-fun b!6548272 () Bool)

(declare-fun call!569540 () Bool)

(assert (=> b!6548272 (= e!3964744 call!569540)))

(declare-fun b!6548273 () Bool)

(declare-fun c!1202719 () Bool)

(assert (=> b!6548273 (= c!1202719 (is-ElementMatch!16420 r!7292))))

(declare-fun e!3964743 () Bool)

(assert (=> b!6548273 (= e!3964749 e!3964743)))

(declare-fun b!6548274 () Bool)

(declare-fun c!1202718 () Bool)

(assert (=> b!6548274 (= c!1202718 (is-Union!16420 r!7292))))

(declare-fun e!3964745 () Bool)

(assert (=> b!6548274 (= e!3964743 e!3964745)))

(declare-fun b!6548275 () Bool)

(declare-fun res!2686359 () Bool)

(assert (=> b!6548275 (=> res!2686359 e!3964747)))

(assert (=> b!6548275 (= res!2686359 call!569540)))

(declare-fun e!3964748 () Bool)

(assert (=> b!6548275 (= e!3964748 e!3964747)))

(assert (=> b!6548276 (= e!3964748 call!569539)))

(declare-fun bm!569535 () Bool)

(assert (=> bm!569535 (= call!569540 (isEmpty!37663 s!2326))))

(declare-fun b!6548277 () Bool)

(assert (=> b!6548277 (= e!3964743 (= s!2326 (Cons!65435 (c!1202553 r!7292) Nil!65435)))))

(declare-fun b!6548278 () Bool)

(assert (=> b!6548278 (= e!3964745 e!3964746)))

(declare-fun res!2686358 () Bool)

(assert (=> b!6548278 (= res!2686358 (matchRSpec!3521 (regOne!33353 r!7292) s!2326))))

(assert (=> b!6548278 (=> res!2686358 e!3964746)))

(declare-fun b!6548279 () Bool)

(assert (=> b!6548279 (= e!3964745 e!3964748)))

(declare-fun c!1202720 () Bool)

(assert (=> b!6548279 (= c!1202720 (is-Star!16420 r!7292))))

(declare-fun d!2055374 () Bool)

(declare-fun c!1202721 () Bool)

(assert (=> d!2055374 (= c!1202721 (is-EmptyExpr!16420 r!7292))))

(assert (=> d!2055374 (= (matchRSpec!3521 r!7292 s!2326) e!3964744)))

(declare-fun bm!569534 () Bool)

(assert (=> bm!569534 (= call!569539 (Exists!3490 (ite c!1202720 lambda!363599 lambda!363600)))))

(assert (= (and d!2055374 c!1202721) b!6548272))

(assert (= (and d!2055374 (not c!1202721)) b!6548270))

(assert (= (and b!6548270 res!2686357) b!6548273))

(assert (= (and b!6548273 c!1202719) b!6548277))

(assert (= (and b!6548273 (not c!1202719)) b!6548274))

(assert (= (and b!6548274 c!1202718) b!6548278))

(assert (= (and b!6548274 (not c!1202718)) b!6548279))

(assert (= (and b!6548278 (not res!2686358)) b!6548269))

(assert (= (and b!6548279 c!1202720) b!6548275))

(assert (= (and b!6548279 (not c!1202720)) b!6548276))

(assert (= (and b!6548275 (not res!2686359)) b!6548271))

(assert (= (or b!6548271 b!6548276) bm!569534))

(assert (= (or b!6548272 b!6548275) bm!569535))

(declare-fun m!7331020 () Bool)

(assert (=> b!6548269 m!7331020))

(assert (=> bm!569535 m!7330644))

(declare-fun m!7331022 () Bool)

(assert (=> b!6548278 m!7331022))

(declare-fun m!7331024 () Bool)

(assert (=> bm!569534 m!7331024))

(assert (=> b!6547593 d!2055374))

(declare-fun d!2055376 () Bool)

(declare-fun e!3964752 () Bool)

(assert (=> d!2055376 e!3964752))

(declare-fun c!1202723 () Bool)

(assert (=> d!2055376 (= c!1202723 (is-EmptyExpr!16420 r!7292))))

(declare-fun lt!2401417 () Bool)

(declare-fun e!3964754 () Bool)

(assert (=> d!2055376 (= lt!2401417 e!3964754)))

(declare-fun c!1202724 () Bool)

(assert (=> d!2055376 (= c!1202724 (isEmpty!37663 s!2326))))

(assert (=> d!2055376 (validRegex!8156 r!7292)))

(assert (=> d!2055376 (= (matchR!8603 r!7292 s!2326) lt!2401417)))

(declare-fun b!6548280 () Bool)

(declare-fun e!3964750 () Bool)

(assert (=> b!6548280 (= e!3964752 e!3964750)))

(declare-fun c!1202722 () Bool)

(assert (=> b!6548280 (= c!1202722 (is-EmptyLang!16420 r!7292))))

(declare-fun b!6548281 () Bool)

(declare-fun res!2686365 () Bool)

(declare-fun e!3964756 () Bool)

(assert (=> b!6548281 (=> res!2686365 e!3964756)))

(assert (=> b!6548281 (= res!2686365 (not (is-ElementMatch!16420 r!7292)))))

(assert (=> b!6548281 (= e!3964750 e!3964756)))

(declare-fun b!6548282 () Bool)

(declare-fun res!2686366 () Bool)

(declare-fun e!3964753 () Bool)

(assert (=> b!6548282 (=> (not res!2686366) (not e!3964753))))

(assert (=> b!6548282 (= res!2686366 (isEmpty!37663 (tail!12376 s!2326)))))

(declare-fun b!6548283 () Bool)

(declare-fun e!3964755 () Bool)

(assert (=> b!6548283 (= e!3964756 e!3964755)))

(declare-fun res!2686364 () Bool)

(assert (=> b!6548283 (=> (not res!2686364) (not e!3964755))))

(assert (=> b!6548283 (= res!2686364 (not lt!2401417))))

(declare-fun b!6548284 () Bool)

(assert (=> b!6548284 (= e!3964754 (matchR!8603 (derivativeStep!5104 r!7292 (head!13291 s!2326)) (tail!12376 s!2326)))))

(declare-fun b!6548285 () Bool)

(assert (=> b!6548285 (= e!3964754 (nullable!6413 r!7292))))

(declare-fun b!6548286 () Bool)

(assert (=> b!6548286 (= e!3964750 (not lt!2401417))))

(declare-fun b!6548287 () Bool)

(declare-fun e!3964751 () Bool)

(assert (=> b!6548287 (= e!3964755 e!3964751)))

(declare-fun res!2686363 () Bool)

(assert (=> b!6548287 (=> res!2686363 e!3964751)))

(declare-fun call!569541 () Bool)

(assert (=> b!6548287 (= res!2686363 call!569541)))

(declare-fun b!6548288 () Bool)

(declare-fun res!2686360 () Bool)

(assert (=> b!6548288 (=> (not res!2686360) (not e!3964753))))

(assert (=> b!6548288 (= res!2686360 (not call!569541))))

(declare-fun b!6548289 () Bool)

(declare-fun res!2686367 () Bool)

(assert (=> b!6548289 (=> res!2686367 e!3964751)))

(assert (=> b!6548289 (= res!2686367 (not (isEmpty!37663 (tail!12376 s!2326))))))

(declare-fun b!6548290 () Bool)

(assert (=> b!6548290 (= e!3964752 (= lt!2401417 call!569541))))

(declare-fun b!6548291 () Bool)

(assert (=> b!6548291 (= e!3964753 (= (head!13291 s!2326) (c!1202553 r!7292)))))

(declare-fun b!6548292 () Bool)

(assert (=> b!6548292 (= e!3964751 (not (= (head!13291 s!2326) (c!1202553 r!7292))))))

(declare-fun b!6548293 () Bool)

(declare-fun res!2686361 () Bool)

(assert (=> b!6548293 (=> res!2686361 e!3964756)))

(assert (=> b!6548293 (= res!2686361 e!3964753)))

(declare-fun res!2686362 () Bool)

(assert (=> b!6548293 (=> (not res!2686362) (not e!3964753))))

(assert (=> b!6548293 (= res!2686362 lt!2401417)))

(declare-fun bm!569536 () Bool)

(assert (=> bm!569536 (= call!569541 (isEmpty!37663 s!2326))))

(assert (= (and d!2055376 c!1202724) b!6548285))

(assert (= (and d!2055376 (not c!1202724)) b!6548284))

(assert (= (and d!2055376 c!1202723) b!6548290))

(assert (= (and d!2055376 (not c!1202723)) b!6548280))

(assert (= (and b!6548280 c!1202722) b!6548286))

(assert (= (and b!6548280 (not c!1202722)) b!6548281))

(assert (= (and b!6548281 (not res!2686365)) b!6548293))

(assert (= (and b!6548293 res!2686362) b!6548288))

(assert (= (and b!6548288 res!2686360) b!6548282))

(assert (= (and b!6548282 res!2686366) b!6548291))

(assert (= (and b!6548293 (not res!2686361)) b!6548283))

(assert (= (and b!6548283 res!2686364) b!6548287))

(assert (= (and b!6548287 (not res!2686363)) b!6548289))

(assert (= (and b!6548289 (not res!2686367)) b!6548292))

(assert (= (or b!6548290 b!6548287 b!6548288) bm!569536))

(assert (=> b!6548292 m!7330650))

(assert (=> d!2055376 m!7330644))

(assert (=> d!2055376 m!7330236))

(assert (=> b!6548291 m!7330650))

(assert (=> bm!569536 m!7330644))

(assert (=> b!6548289 m!7330654))

(assert (=> b!6548289 m!7330654))

(assert (=> b!6548289 m!7330656))

(assert (=> b!6548282 m!7330654))

(assert (=> b!6548282 m!7330654))

(assert (=> b!6548282 m!7330656))

(declare-fun m!7331026 () Bool)

(assert (=> b!6548285 m!7331026))

(assert (=> b!6548284 m!7330650))

(assert (=> b!6548284 m!7330650))

(declare-fun m!7331028 () Bool)

(assert (=> b!6548284 m!7331028))

(assert (=> b!6548284 m!7330654))

(assert (=> b!6548284 m!7331028))

(assert (=> b!6548284 m!7330654))

(declare-fun m!7331030 () Bool)

(assert (=> b!6548284 m!7331030))

(assert (=> b!6547593 d!2055376))

(declare-fun d!2055378 () Bool)

(assert (=> d!2055378 (= (matchR!8603 r!7292 s!2326) (matchRSpec!3521 r!7292 s!2326))))

(declare-fun lt!2401418 () Unit!159015)

(assert (=> d!2055378 (= lt!2401418 (choose!48672 r!7292 s!2326))))

(assert (=> d!2055378 (validRegex!8156 r!7292)))

(assert (=> d!2055378 (= (mainMatchTheorem!3521 r!7292 s!2326) lt!2401418)))

(declare-fun bs!1671918 () Bool)

(assert (= bs!1671918 d!2055378))

(assert (=> bs!1671918 m!7330314))

(assert (=> bs!1671918 m!7330312))

(declare-fun m!7331032 () Bool)

(assert (=> bs!1671918 m!7331032))

(assert (=> bs!1671918 m!7330236))

(assert (=> b!6547593 d!2055378))

(declare-fun d!2055380 () Bool)

(declare-fun e!3964773 () Bool)

(assert (=> d!2055380 e!3964773))

(declare-fun res!2686386 () Bool)

(assert (=> d!2055380 (=> (not res!2686386) (not e!3964773))))

(declare-fun lt!2401423 () List!65561)

(declare-fun noDuplicate!2226 (List!65561) Bool)

(assert (=> d!2055380 (= res!2686386 (noDuplicate!2226 lt!2401423))))

(declare-fun choose!48690 ((Set Context!11608)) List!65561)

(assert (=> d!2055380 (= lt!2401423 (choose!48690 z!1189))))

(assert (=> d!2055380 (= (toList!10204 z!1189) lt!2401423)))

(declare-fun b!6548324 () Bool)

(declare-fun content!12546 (List!65561) (Set Context!11608))

(assert (=> b!6548324 (= e!3964773 (= (content!12546 lt!2401423) z!1189))))

(assert (= (and d!2055380 res!2686386) b!6548324))

(declare-fun m!7331034 () Bool)

(assert (=> d!2055380 m!7331034))

(declare-fun m!7331036 () Bool)

(assert (=> d!2055380 m!7331036))

(declare-fun m!7331038 () Bool)

(assert (=> b!6548324 m!7331038))

(assert (=> b!6547573 d!2055380))

(declare-fun d!2055382 () Bool)

(declare-fun lt!2401424 () Regex!16420)

(assert (=> d!2055382 (validRegex!8156 lt!2401424)))

(assert (=> d!2055382 (= lt!2401424 (generalisedUnion!2264 (unfocusZipperList!1841 zl!343)))))

(assert (=> d!2055382 (= (unfocusZipper!2162 zl!343) lt!2401424)))

(declare-fun bs!1671919 () Bool)

(assert (= bs!1671919 d!2055382))

(declare-fun m!7331040 () Bool)

(assert (=> bs!1671919 m!7331040))

(assert (=> bs!1671919 m!7330326))

(assert (=> bs!1671919 m!7330326))

(assert (=> bs!1671919 m!7330328))

(assert (=> b!6547574 d!2055382))

(declare-fun b!6548325 () Bool)

(declare-fun e!3964774 () (Set Context!11608))

(declare-fun e!3964775 () (Set Context!11608))

(assert (=> b!6548325 (= e!3964774 e!3964775)))

(declare-fun c!1202732 () Bool)

(assert (=> b!6548325 (= c!1202732 (is-Cons!65436 (exprs!6304 lt!2401109)))))

(declare-fun b!6548326 () Bool)

(declare-fun e!3964776 () Bool)

(assert (=> b!6548326 (= e!3964776 (nullable!6413 (h!71884 (exprs!6304 lt!2401109))))))

(declare-fun bm!569539 () Bool)

(declare-fun call!569544 () (Set Context!11608))

(assert (=> bm!569539 (= call!569544 (derivationStepZipperDown!1668 (h!71884 (exprs!6304 lt!2401109)) (Context!11609 (t!379202 (exprs!6304 lt!2401109))) (h!71883 s!2326)))))

(declare-fun b!6548328 () Bool)

(assert (=> b!6548328 (= e!3964775 call!569544)))

(declare-fun b!6548329 () Bool)

(assert (=> b!6548329 (= e!3964775 (as set.empty (Set Context!11608)))))

(declare-fun b!6548327 () Bool)

(assert (=> b!6548327 (= e!3964774 (set.union call!569544 (derivationStepZipperUp!1594 (Context!11609 (t!379202 (exprs!6304 lt!2401109))) (h!71883 s!2326))))))

(declare-fun d!2055384 () Bool)

(declare-fun c!1202731 () Bool)

(assert (=> d!2055384 (= c!1202731 e!3964776)))

(declare-fun res!2686387 () Bool)

(assert (=> d!2055384 (=> (not res!2686387) (not e!3964776))))

(assert (=> d!2055384 (= res!2686387 (is-Cons!65436 (exprs!6304 lt!2401109)))))

(assert (=> d!2055384 (= (derivationStepZipperUp!1594 lt!2401109 (h!71883 s!2326)) e!3964774)))

(assert (= (and d!2055384 res!2686387) b!6548326))

(assert (= (and d!2055384 c!1202731) b!6548327))

(assert (= (and d!2055384 (not c!1202731)) b!6548325))

(assert (= (and b!6548325 c!1202732) b!6548328))

(assert (= (and b!6548325 (not c!1202732)) b!6548329))

(assert (= (or b!6548327 b!6548328) bm!569539))

(declare-fun m!7331042 () Bool)

(assert (=> b!6548326 m!7331042))

(declare-fun m!7331044 () Bool)

(assert (=> bm!569539 m!7331044))

(declare-fun m!7331046 () Bool)

(assert (=> b!6548327 m!7331046))

(assert (=> b!6547595 d!2055384))

(declare-fun d!2055386 () Bool)

(declare-fun nullableFct!2339 (Regex!16420) Bool)

(assert (=> d!2055386 (= (nullable!6413 (h!71884 (exprs!6304 (h!71885 zl!343)))) (nullableFct!2339 (h!71884 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun bs!1671920 () Bool)

(assert (= bs!1671920 d!2055386))

(declare-fun m!7331048 () Bool)

(assert (=> bs!1671920 m!7331048))

(assert (=> b!6547595 d!2055386))

(declare-fun b!6548330 () Bool)

(declare-fun e!3964777 () (Set Context!11608))

(declare-fun e!3964778 () (Set Context!11608))

(assert (=> b!6548330 (= e!3964777 e!3964778)))

(declare-fun c!1202734 () Bool)

(assert (=> b!6548330 (= c!1202734 (is-Cons!65436 (exprs!6304 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343))))))))))

(declare-fun b!6548331 () Bool)

(declare-fun e!3964779 () Bool)

(assert (=> b!6548331 (= e!3964779 (nullable!6413 (h!71884 (exprs!6304 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343)))))))))))

(declare-fun bm!569540 () Bool)

(declare-fun call!569545 () (Set Context!11608))

(assert (=> bm!569540 (= call!569545 (derivationStepZipperDown!1668 (h!71884 (exprs!6304 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343))))))) (Context!11609 (t!379202 (exprs!6304 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343)))))))) (h!71883 s!2326)))))

(declare-fun b!6548333 () Bool)

(assert (=> b!6548333 (= e!3964778 call!569545)))

(declare-fun b!6548334 () Bool)

(assert (=> b!6548334 (= e!3964778 (as set.empty (Set Context!11608)))))

(declare-fun b!6548332 () Bool)

(assert (=> b!6548332 (= e!3964777 (set.union call!569545 (derivationStepZipperUp!1594 (Context!11609 (t!379202 (exprs!6304 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343)))))))) (h!71883 s!2326))))))

(declare-fun d!2055388 () Bool)

(declare-fun c!1202733 () Bool)

(assert (=> d!2055388 (= c!1202733 e!3964779)))

(declare-fun res!2686388 () Bool)

(assert (=> d!2055388 (=> (not res!2686388) (not e!3964779))))

(assert (=> d!2055388 (= res!2686388 (is-Cons!65436 (exprs!6304 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343))))))))))

(assert (=> d!2055388 (= (derivationStepZipperUp!1594 (Context!11609 (Cons!65436 (h!71884 (exprs!6304 (h!71885 zl!343))) (t!379202 (exprs!6304 (h!71885 zl!343))))) (h!71883 s!2326)) e!3964777)))

(assert (= (and d!2055388 res!2686388) b!6548331))

(assert (= (and d!2055388 c!1202733) b!6548332))

(assert (= (and d!2055388 (not c!1202733)) b!6548330))

(assert (= (and b!6548330 c!1202734) b!6548333))

(assert (= (and b!6548330 (not c!1202734)) b!6548334))

(assert (= (or b!6548332 b!6548333) bm!569540))

(declare-fun m!7331050 () Bool)

(assert (=> b!6548331 m!7331050))

(declare-fun m!7331052 () Bool)

(assert (=> bm!569540 m!7331052))

(declare-fun m!7331054 () Bool)

(assert (=> b!6548332 m!7331054))

(assert (=> b!6547595 d!2055388))

(declare-fun b!6548335 () Bool)

(declare-fun e!3964780 () (Set Context!11608))

(declare-fun e!3964781 () (Set Context!11608))

(assert (=> b!6548335 (= e!3964780 e!3964781)))

(declare-fun c!1202736 () Bool)

(assert (=> b!6548335 (= c!1202736 (is-Cons!65436 (exprs!6304 (h!71885 zl!343))))))

(declare-fun b!6548336 () Bool)

(declare-fun e!3964782 () Bool)

(assert (=> b!6548336 (= e!3964782 (nullable!6413 (h!71884 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun bm!569541 () Bool)

(declare-fun call!569546 () (Set Context!11608))

(assert (=> bm!569541 (= call!569546 (derivationStepZipperDown!1668 (h!71884 (exprs!6304 (h!71885 zl!343))) (Context!11609 (t!379202 (exprs!6304 (h!71885 zl!343)))) (h!71883 s!2326)))))

(declare-fun b!6548338 () Bool)

(assert (=> b!6548338 (= e!3964781 call!569546)))

(declare-fun b!6548339 () Bool)

(assert (=> b!6548339 (= e!3964781 (as set.empty (Set Context!11608)))))

(declare-fun b!6548337 () Bool)

(assert (=> b!6548337 (= e!3964780 (set.union call!569546 (derivationStepZipperUp!1594 (Context!11609 (t!379202 (exprs!6304 (h!71885 zl!343)))) (h!71883 s!2326))))))

(declare-fun d!2055390 () Bool)

(declare-fun c!1202735 () Bool)

(assert (=> d!2055390 (= c!1202735 e!3964782)))

(declare-fun res!2686389 () Bool)

(assert (=> d!2055390 (=> (not res!2686389) (not e!3964782))))

(assert (=> d!2055390 (= res!2686389 (is-Cons!65436 (exprs!6304 (h!71885 zl!343))))))

(assert (=> d!2055390 (= (derivationStepZipperUp!1594 (h!71885 zl!343) (h!71883 s!2326)) e!3964780)))

(assert (= (and d!2055390 res!2686389) b!6548336))

(assert (= (and d!2055390 c!1202735) b!6548337))

(assert (= (and d!2055390 (not c!1202735)) b!6548335))

(assert (= (and b!6548335 c!1202736) b!6548338))

(assert (= (and b!6548335 (not c!1202736)) b!6548339))

(assert (= (or b!6548337 b!6548338) bm!569541))

(assert (=> b!6548336 m!7330244))

(declare-fun m!7331056 () Bool)

(assert (=> bm!569541 m!7331056))

(declare-fun m!7331058 () Bool)

(assert (=> b!6548337 m!7331058))

(assert (=> b!6547595 d!2055390))

(declare-fun d!2055392 () Bool)

(assert (=> d!2055392 (= (flatMap!1925 z!1189 lambda!363522) (dynLambda!26012 lambda!363522 (h!71885 zl!343)))))

(declare-fun lt!2401425 () Unit!159015)

(assert (=> d!2055392 (= lt!2401425 (choose!48671 z!1189 (h!71885 zl!343) lambda!363522))))

(assert (=> d!2055392 (= z!1189 (set.insert (h!71885 zl!343) (as set.empty (Set Context!11608))))))

(assert (=> d!2055392 (= (lemmaFlatMapOnSingletonSet!1451 z!1189 (h!71885 zl!343) lambda!363522) lt!2401425)))

(declare-fun b_lambda!247851 () Bool)

(assert (=> (not b_lambda!247851) (not d!2055392)))

(declare-fun bs!1671921 () Bool)

(assert (= bs!1671921 d!2055392))

(assert (=> bs!1671921 m!7330250))

(declare-fun m!7331060 () Bool)

(assert (=> bs!1671921 m!7331060))

(declare-fun m!7331062 () Bool)

(assert (=> bs!1671921 m!7331062))

(declare-fun m!7331064 () Bool)

(assert (=> bs!1671921 m!7331064))

(assert (=> b!6547595 d!2055392))

(declare-fun d!2055394 () Bool)

(assert (=> d!2055394 (= (flatMap!1925 z!1189 lambda!363522) (choose!48670 z!1189 lambda!363522))))

(declare-fun bs!1671922 () Bool)

(assert (= bs!1671922 d!2055394))

(declare-fun m!7331066 () Bool)

(assert (=> bs!1671922 m!7331066))

(assert (=> b!6547595 d!2055394))

(declare-fun d!2055396 () Bool)

(declare-fun c!1202759 () Bool)

(assert (=> d!2055396 (= c!1202759 (and (is-ElementMatch!16420 (h!71884 (exprs!6304 (h!71885 zl!343)))) (= (c!1202553 (h!71884 (exprs!6304 (h!71885 zl!343)))) (h!71883 s!2326))))))

(declare-fun e!3964820 () (Set Context!11608))

(assert (=> d!2055396 (= (derivationStepZipperDown!1668 (h!71884 (exprs!6304 (h!71885 zl!343))) lt!2401109 (h!71883 s!2326)) e!3964820)))

(declare-fun call!569567 () (Set Context!11608))

(declare-fun bm!569557 () Bool)

(declare-fun call!569564 () List!65560)

(declare-fun c!1202757 () Bool)

(assert (=> bm!569557 (= call!569567 (derivationStepZipperDown!1668 (ite c!1202757 (regTwo!33353 (h!71884 (exprs!6304 (h!71885 zl!343)))) (regOne!33352 (h!71884 (exprs!6304 (h!71885 zl!343))))) (ite c!1202757 lt!2401109 (Context!11609 call!569564)) (h!71883 s!2326)))))

(declare-fun b!6548404 () Bool)

(declare-fun e!3964817 () Bool)

(assert (=> b!6548404 (= e!3964817 (nullable!6413 (regOne!33352 (h!71884 (exprs!6304 (h!71885 zl!343))))))))

(declare-fun b!6548405 () Bool)

(declare-fun e!3964821 () (Set Context!11608))

(declare-fun call!569562 () (Set Context!11608))

(assert (=> b!6548405 (= e!3964821 call!569562)))

(declare-fun b!6548406 () Bool)

(declare-fun e!3964816 () (Set Context!11608))

(declare-fun call!569563 () (Set Context!11608))

(assert (=> b!6548406 (= e!3964816 (set.union call!569567 call!569563))))

(declare-fun b!6548407 () Bool)

(declare-fun e!3964819 () (Set Context!11608))

(assert (=> b!6548407 (= e!3964820 e!3964819)))

(assert (=> b!6548407 (= c!1202757 (is-Union!16420 (h!71884 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun bm!569558 () Bool)

(assert (=> bm!569558 (= call!569562 call!569563)))

(declare-fun bm!569559 () Bool)

(declare-fun c!1202758 () Bool)

(declare-fun call!569565 () List!65560)

(declare-fun call!569566 () (Set Context!11608))

(declare-fun c!1202756 () Bool)

(assert (=> bm!569559 (= call!569566 (derivationStepZipperDown!1668 (ite c!1202757 (regOne!33353 (h!71884 (exprs!6304 (h!71885 zl!343)))) (ite c!1202756 (regTwo!33352 (h!71884 (exprs!6304 (h!71885 zl!343)))) (ite c!1202758 (regOne!33352 (h!71884 (exprs!6304 (h!71885 zl!343)))) (reg!16749 (h!71884 (exprs!6304 (h!71885 zl!343))))))) (ite (or c!1202757 c!1202756) lt!2401109 (Context!11609 call!569565)) (h!71883 s!2326)))))

(declare-fun b!6548408 () Bool)

(declare-fun c!1202760 () Bool)

(assert (=> b!6548408 (= c!1202760 (is-Star!16420 (h!71884 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun e!3964818 () (Set Context!11608))

(assert (=> b!6548408 (= e!3964821 e!3964818)))

(declare-fun b!6548409 () Bool)

(assert (=> b!6548409 (= e!3964816 e!3964821)))

(assert (=> b!6548409 (= c!1202758 (is-Concat!25265 (h!71884 (exprs!6304 (h!71885 zl!343)))))))

(declare-fun b!6548410 () Bool)

(assert (=> b!6548410 (= e!3964819 (set.union call!569566 call!569567))))

(declare-fun b!6548411 () Bool)

(assert (=> b!6548411 (= c!1202756 e!3964817)))

(declare-fun res!2686416 () Bool)

(assert (=> b!6548411 (=> (not res!2686416) (not e!3964817))))

(assert (=> b!6548411 (= res!2686416 (is-Concat!25265 (h!71884 (exprs!6304 (h!71885 zl!343)))))))

(assert (=> b!6548411 (= e!3964819 e!3964816)))

(declare-fun b!6548412 () Bool)

(assert (=> b!6548412 (= e!3964818 (as set.empty (Set Context!11608)))))

(declare-fun bm!569560 () Bool)

(assert (=> bm!569560 (= call!569563 call!569566)))

(declare-fun bm!569561 () Bool)

(declare-fun $colon$colon!2262 (List!65560 Regex!16420) List!65560)

(assert (=> bm!569561 (= call!569564 ($colon$colon!2262 (exprs!6304 lt!2401109) (ite (or c!1202756 c!1202758) (regTwo!33352 (h!71884 (exprs!6304 (h!71885 zl!343)))) (h!71884 (exprs!6304 (h!71885 zl!343))))))))

(declare-fun bm!569562 () Bool)

(assert (=> bm!569562 (= call!569565 call!569564)))

(declare-fun b!6548413 () Bool)

(assert (=> b!6548413 (= e!3964820 (set.insert lt!2401109 (as set.empty (Set Context!11608))))))

(declare-fun b!6548414 () Bool)

(assert (=> b!6548414 (= e!3964818 call!569562)))

(assert (= (and d!2055396 c!1202759) b!6548413))

(assert (= (and d!2055396 (not c!1202759)) b!6548407))

(assert (= (and b!6548407 c!1202757) b!6548410))

(assert (= (and b!6548407 (not c!1202757)) b!6548411))

(assert (= (and b!6548411 res!2686416) b!6548404))

(assert (= (and b!6548411 c!1202756) b!6548406))

(assert (= (and b!6548411 (not c!1202756)) b!6548409))

(assert (= (and b!6548409 c!1202758) b!6548405))

(assert (= (and b!6548409 (not c!1202758)) b!6548408))

(assert (= (and b!6548408 c!1202760) b!6548414))

(assert (= (and b!6548408 (not c!1202760)) b!6548412))

(assert (= (or b!6548405 b!6548414) bm!569562))

(assert (= (or b!6548405 b!6548414) bm!569558))

(assert (= (or b!6548406 bm!569562) bm!569561))

(assert (= (or b!6548406 bm!569558) bm!569560))

(assert (= (or b!6548410 b!6548406) bm!569557))

(assert (= (or b!6548410 bm!569560) bm!569559))

(declare-fun m!7331118 () Bool)

(assert (=> bm!569561 m!7331118))

(declare-fun m!7331120 () Bool)

(assert (=> b!6548413 m!7331120))

(declare-fun m!7331122 () Bool)

(assert (=> bm!569559 m!7331122))

(declare-fun m!7331124 () Bool)

(assert (=> bm!569557 m!7331124))

(declare-fun m!7331126 () Bool)

(assert (=> b!6548404 m!7331126))

(assert (=> b!6547595 d!2055396))

(declare-fun d!2055406 () Bool)

(assert (=> d!2055406 (= (nullable!6413 (regOne!33352 (regOne!33352 r!7292))) (nullableFct!2339 (regOne!33352 (regOne!33352 r!7292))))))

(declare-fun bs!1671924 () Bool)

(assert (= bs!1671924 d!2055406))

(declare-fun m!7331128 () Bool)

(assert (=> bs!1671924 m!7331128))

(assert (=> b!6547570 d!2055406))

(declare-fun d!2055408 () Bool)

(declare-fun lt!2401436 () Regex!16420)

(assert (=> d!2055408 (validRegex!8156 lt!2401436)))

(assert (=> d!2055408 (= lt!2401436 (generalisedUnion!2264 (unfocusZipperList!1841 (Cons!65437 lt!2401114 Nil!65437))))))

(assert (=> d!2055408 (= (unfocusZipper!2162 (Cons!65437 lt!2401114 Nil!65437)) lt!2401436)))

(declare-fun bs!1671925 () Bool)

(assert (= bs!1671925 d!2055408))

(declare-fun m!7331130 () Bool)

(assert (=> bs!1671925 m!7331130))

(declare-fun m!7331132 () Bool)

(assert (=> bs!1671925 m!7331132))

(assert (=> bs!1671925 m!7331132))

(declare-fun m!7331134 () Bool)

(assert (=> bs!1671925 m!7331134))

(assert (=> b!6547571 d!2055408))

(declare-fun bm!569563 () Bool)

(declare-fun call!569568 () Bool)

(declare-fun call!569570 () Bool)

(assert (=> bm!569563 (= call!569568 call!569570)))

(declare-fun b!6548415 () Bool)

(declare-fun e!3964826 () Bool)

(declare-fun e!3964822 () Bool)

(assert (=> b!6548415 (= e!3964826 e!3964822)))

(declare-fun c!1202761 () Bool)

(assert (=> b!6548415 (= c!1202761 (is-Union!16420 (regTwo!33352 r!7292)))))

(declare-fun b!6548416 () Bool)

(declare-fun e!3964824 () Bool)

(assert (=> b!6548416 (= e!3964824 call!569568)))

(declare-fun b!6548417 () Bool)

(declare-fun e!3964828 () Bool)

(assert (=> b!6548417 (= e!3964828 call!569570)))

(declare-fun b!6548418 () Bool)

(declare-fun e!3964823 () Bool)

(assert (=> b!6548418 (= e!3964823 e!3964826)))

(declare-fun c!1202762 () Bool)

(assert (=> b!6548418 (= c!1202762 (is-Star!16420 (regTwo!33352 r!7292)))))

(declare-fun d!2055410 () Bool)

(declare-fun res!2686419 () Bool)

(assert (=> d!2055410 (=> res!2686419 e!3964823)))

(assert (=> d!2055410 (= res!2686419 (is-ElementMatch!16420 (regTwo!33352 r!7292)))))

(assert (=> d!2055410 (= (validRegex!8156 (regTwo!33352 r!7292)) e!3964823)))

(declare-fun b!6548419 () Bool)

(declare-fun res!2686417 () Bool)

(declare-fun e!3964825 () Bool)

(assert (=> b!6548419 (=> (not res!2686417) (not e!3964825))))

(declare-fun call!569569 () Bool)

(assert (=> b!6548419 (= res!2686417 call!569569)))

(assert (=> b!6548419 (= e!3964822 e!3964825)))

(declare-fun b!6548420 () Bool)

(assert (=> b!6548420 (= e!3964826 e!3964828)))

(declare-fun res!2686420 () Bool)

(assert (=> b!6548420 (= res!2686420 (not (nullable!6413 (reg!16749 (regTwo!33352 r!7292)))))))

(assert (=> b!6548420 (=> (not res!2686420) (not e!3964828))))

(declare-fun bm!569564 () Bool)

(assert (=> bm!569564 (= call!569570 (validRegex!8156 (ite c!1202762 (reg!16749 (regTwo!33352 r!7292)) (ite c!1202761 (regTwo!33353 (regTwo!33352 r!7292)) (regTwo!33352 (regTwo!33352 r!7292))))))))

(declare-fun b!6548421 () Bool)

(declare-fun res!2686421 () Bool)

(declare-fun e!3964827 () Bool)

(assert (=> b!6548421 (=> res!2686421 e!3964827)))

(assert (=> b!6548421 (= res!2686421 (not (is-Concat!25265 (regTwo!33352 r!7292))))))

(assert (=> b!6548421 (= e!3964822 e!3964827)))

(declare-fun b!6548422 () Bool)

(assert (=> b!6548422 (= e!3964825 call!569568)))

(declare-fun bm!569565 () Bool)

(assert (=> bm!569565 (= call!569569 (validRegex!8156 (ite c!1202761 (regOne!33353 (regTwo!33352 r!7292)) (regOne!33352 (regTwo!33352 r!7292)))))))

(declare-fun b!6548423 () Bool)

(assert (=> b!6548423 (= e!3964827 e!3964824)))

(declare-fun res!2686418 () Bool)

(assert (=> b!6548423 (=> (not res!2686418) (not e!3964824))))

(assert (=> b!6548423 (= res!2686418 call!569569)))

(assert (= (and d!2055410 (not res!2686419)) b!6548418))

(assert (= (and b!6548418 c!1202762) b!6548420))

(assert (= (and b!6548418 (not c!1202762)) b!6548415))

(assert (= (and b!6548420 res!2686420) b!6548417))

(assert (= (and b!6548415 c!1202761) b!6548419))

(assert (= (and b!6548415 (not c!1202761)) b!6548421))

(assert (= (and b!6548419 res!2686417) b!6548422))

(assert (= (and b!6548421 (not res!2686421)) b!6548423))

(assert (= (and b!6548423 res!2686418) b!6548416))

(assert (= (or b!6548422 b!6548416) bm!569563))

(assert (= (or b!6548419 b!6548423) bm!569565))

(assert (= (or b!6548417 bm!569563) bm!569564))

(declare-fun m!7331136 () Bool)

(assert (=> b!6548420 m!7331136))

(declare-fun m!7331138 () Bool)

(assert (=> bm!569564 m!7331138))

(declare-fun m!7331140 () Bool)

(assert (=> bm!569565 m!7331140))

(assert (=> b!6547588 d!2055410))

(declare-fun d!2055412 () Bool)

(declare-fun c!1202766 () Bool)

(assert (=> d!2055412 (= c!1202766 (and (is-ElementMatch!16420 (reg!16749 (regOne!33352 r!7292))) (= (c!1202553 (reg!16749 (regOne!33352 r!7292))) (h!71883 s!2326))))))

(declare-fun e!3964833 () (Set Context!11608))

(assert (=> d!2055412 (= (derivationStepZipperDown!1668 (reg!16749 (regOne!33352 r!7292)) lt!2401141 (h!71883 s!2326)) e!3964833)))

(declare-fun c!1202764 () Bool)

(declare-fun call!569576 () (Set Context!11608))

(declare-fun call!569573 () List!65560)

(declare-fun bm!569566 () Bool)

(assert (=> bm!569566 (= call!569576 (derivationStepZipperDown!1668 (ite c!1202764 (regTwo!33353 (reg!16749 (regOne!33352 r!7292))) (regOne!33352 (reg!16749 (regOne!33352 r!7292)))) (ite c!1202764 lt!2401141 (Context!11609 call!569573)) (h!71883 s!2326)))))

(declare-fun b!6548424 () Bool)

(declare-fun e!3964830 () Bool)

(assert (=> b!6548424 (= e!3964830 (nullable!6413 (regOne!33352 (reg!16749 (regOne!33352 r!7292)))))))

(declare-fun b!6548425 () Bool)

(declare-fun e!3964834 () (Set Context!11608))

(declare-fun call!569571 () (Set Context!11608))

(assert (=> b!6548425 (= e!3964834 call!569571)))

(declare-fun b!6548426 () Bool)

(declare-fun e!3964829 () (Set Context!11608))

(declare-fun call!569572 () (Set Context!11608))

(assert (=> b!6548426 (= e!3964829 (set.union call!569576 call!569572))))

(declare-fun b!6548427 () Bool)

(declare-fun e!3964832 () (Set Context!11608))

(assert (=> b!6548427 (= e!3964833 e!3964832)))

(assert (=> b!6548427 (= c!1202764 (is-Union!16420 (reg!16749 (regOne!33352 r!7292))))))

(declare-fun bm!569567 () Bool)

(assert (=> bm!569567 (= call!569571 call!569572)))

(declare-fun call!569575 () (Set Context!11608))

(declare-fun c!1202763 () Bool)

(declare-fun call!569574 () List!65560)

(declare-fun c!1202765 () Bool)

(declare-fun bm!569568 () Bool)

(assert (=> bm!569568 (= call!569575 (derivationStepZipperDown!1668 (ite c!1202764 (regOne!33353 (reg!16749 (regOne!33352 r!7292))) (ite c!1202763 (regTwo!33352 (reg!16749 (regOne!33352 r!7292))) (ite c!1202765 (regOne!33352 (reg!16749 (regOne!33352 r!7292))) (reg!16749 (reg!16749 (regOne!33352 r!7292)))))) (ite (or c!1202764 c!1202763) lt!2401141 (Context!11609 call!569574)) (h!71883 s!2326)))))

(declare-fun b!6548428 () Bool)

(declare-fun c!1202767 () Bool)

(assert (=> b!6548428 (= c!1202767 (is-Star!16420 (reg!16749 (regOne!33352 r!7292))))))

(declare-fun e!3964831 () (Set Context!11608))

(assert (=> b!6548428 (= e!3964834 e!3964831)))

(declare-fun b!6548429 () Bool)

(assert (=> b!6548429 (= e!3964829 e!3964834)))

(assert (=> b!6548429 (= c!1202765 (is-Concat!25265 (reg!16749 (regOne!33352 r!7292))))))

(declare-fun b!6548430 () Bool)

(assert (=> b!6548430 (= e!3964832 (set.union call!569575 call!569576))))

(declare-fun b!6548431 () Bool)

(assert (=> b!6548431 (= c!1202763 e!3964830)))

(declare-fun res!2686422 () Bool)

(assert (=> b!6548431 (=> (not res!2686422) (not e!3964830))))

(assert (=> b!6548431 (= res!2686422 (is-Concat!25265 (reg!16749 (regOne!33352 r!7292))))))

(assert (=> b!6548431 (= e!3964832 e!3964829)))

(declare-fun b!6548432 () Bool)

(assert (=> b!6548432 (= e!3964831 (as set.empty (Set Context!11608)))))

(declare-fun bm!569569 () Bool)

(assert (=> bm!569569 (= call!569572 call!569575)))

(declare-fun bm!569570 () Bool)

(assert (=> bm!569570 (= call!569573 ($colon$colon!2262 (exprs!6304 lt!2401141) (ite (or c!1202763 c!1202765) (regTwo!33352 (reg!16749 (regOne!33352 r!7292))) (reg!16749 (regOne!33352 r!7292)))))))

(declare-fun bm!569571 () Bool)

(assert (=> bm!569571 (= call!569574 call!569573)))

(declare-fun b!6548433 () Bool)

(assert (=> b!6548433 (= e!3964833 (set.insert lt!2401141 (as set.empty (Set Context!11608))))))

(declare-fun b!6548434 () Bool)

(assert (=> b!6548434 (= e!3964831 call!569571)))

(assert (= (and d!2055412 c!1202766) b!6548433))

(assert (= (and d!2055412 (not c!1202766)) b!6548427))

(assert (= (and b!6548427 c!1202764) b!6548430))

(assert (= (and b!6548427 (not c!1202764)) b!6548431))

(assert (= (and b!6548431 res!2686422) b!6548424))

(assert (= (and b!6548431 c!1202763) b!6548426))

(assert (= (and b!6548431 (not c!1202763)) b!6548429))

(assert (= (and b!6548429 c!1202765) b!6548425))

(assert (= (and b!6548429 (not c!1202765)) b!6548428))

(assert (= (and b!6548428 c!1202767) b!6548434))

(assert (= (and b!6548428 (not c!1202767)) b!6548432))

(assert (= (or b!6548425 b!6548434) bm!569571))

(assert (= (or b!6548425 b!6548434) bm!569567))

(assert (= (or b!6548426 bm!569571) bm!569570))

(assert (= (or b!6548426 bm!569567) bm!569569))

(assert (= (or b!6548430 b!6548426) bm!569566))

(assert (= (or b!6548430 bm!569569) bm!569568))

(declare-fun m!7331148 () Bool)

(assert (=> bm!569570 m!7331148))

(assert (=> b!6548433 m!7330348))

(declare-fun m!7331154 () Bool)

(assert (=> bm!569568 m!7331154))

(declare-fun m!7331158 () Bool)

(assert (=> bm!569566 m!7331158))

(declare-fun m!7331160 () Bool)

(assert (=> b!6548424 m!7331160))

(assert (=> b!6547568 d!2055412))

(declare-fun bm!569572 () Bool)

(declare-fun call!569577 () Bool)

(declare-fun call!569579 () Bool)

(assert (=> bm!569572 (= call!569577 call!569579)))

(declare-fun b!6548435 () Bool)

(declare-fun e!3964839 () Bool)

(declare-fun e!3964835 () Bool)

(assert (=> b!6548435 (= e!3964839 e!3964835)))

(declare-fun c!1202768 () Bool)

(assert (=> b!6548435 (= c!1202768 (is-Union!16420 r!7292))))

(declare-fun b!6548436 () Bool)

(declare-fun e!3964837 () Bool)

(assert (=> b!6548436 (= e!3964837 call!569577)))

(declare-fun b!6548437 () Bool)

(declare-fun e!3964841 () Bool)

(assert (=> b!6548437 (= e!3964841 call!569579)))

(declare-fun b!6548438 () Bool)

(declare-fun e!3964836 () Bool)

(assert (=> b!6548438 (= e!3964836 e!3964839)))

(declare-fun c!1202769 () Bool)

(assert (=> b!6548438 (= c!1202769 (is-Star!16420 r!7292))))

(declare-fun d!2055416 () Bool)

(declare-fun res!2686425 () Bool)

(assert (=> d!2055416 (=> res!2686425 e!3964836)))

(assert (=> d!2055416 (= res!2686425 (is-ElementMatch!16420 r!7292))))

(assert (=> d!2055416 (= (validRegex!8156 r!7292) e!3964836)))

(declare-fun b!6548439 () Bool)

(declare-fun res!2686423 () Bool)

(declare-fun e!3964838 () Bool)

(assert (=> b!6548439 (=> (not res!2686423) (not e!3964838))))

(declare-fun call!569578 () Bool)

(assert (=> b!6548439 (= res!2686423 call!569578)))

(assert (=> b!6548439 (= e!3964835 e!3964838)))

(declare-fun b!6548440 () Bool)

(assert (=> b!6548440 (= e!3964839 e!3964841)))

(declare-fun res!2686426 () Bool)

(assert (=> b!6548440 (= res!2686426 (not (nullable!6413 (reg!16749 r!7292))))))

(assert (=> b!6548440 (=> (not res!2686426) (not e!3964841))))

(declare-fun bm!569573 () Bool)

(assert (=> bm!569573 (= call!569579 (validRegex!8156 (ite c!1202769 (reg!16749 r!7292) (ite c!1202768 (regTwo!33353 r!7292) (regTwo!33352 r!7292)))))))

(declare-fun b!6548441 () Bool)

(declare-fun res!2686427 () Bool)

(declare-fun e!3964840 () Bool)

(assert (=> b!6548441 (=> res!2686427 e!3964840)))

(assert (=> b!6548441 (= res!2686427 (not (is-Concat!25265 r!7292)))))

(assert (=> b!6548441 (= e!3964835 e!3964840)))

(declare-fun b!6548442 () Bool)

(assert (=> b!6548442 (= e!3964838 call!569577)))

(declare-fun bm!569574 () Bool)

(assert (=> bm!569574 (= call!569578 (validRegex!8156 (ite c!1202768 (regOne!33353 r!7292) (regOne!33352 r!7292))))))

(declare-fun b!6548443 () Bool)

(assert (=> b!6548443 (= e!3964840 e!3964837)))

(declare-fun res!2686424 () Bool)

(assert (=> b!6548443 (=> (not res!2686424) (not e!3964837))))

(assert (=> b!6548443 (= res!2686424 call!569578)))

(assert (= (and d!2055416 (not res!2686425)) b!6548438))

(assert (= (and b!6548438 c!1202769) b!6548440))

(assert (= (and b!6548438 (not c!1202769)) b!6548435))

(assert (= (and b!6548440 res!2686426) b!6548437))

(assert (= (and b!6548435 c!1202768) b!6548439))

(assert (= (and b!6548435 (not c!1202768)) b!6548441))

(assert (= (and b!6548439 res!2686423) b!6548442))

(assert (= (and b!6548441 (not res!2686427)) b!6548443))

(assert (= (and b!6548443 res!2686424) b!6548436))

(assert (= (or b!6548442 b!6548436) bm!569572))

(assert (= (or b!6548439 b!6548443) bm!569574))

(assert (= (or b!6548437 bm!569572) bm!569573))

(declare-fun m!7331162 () Bool)

(assert (=> b!6548440 m!7331162))

(declare-fun m!7331164 () Bool)

(assert (=> bm!569573 m!7331164))

(declare-fun m!7331166 () Bool)

(assert (=> bm!569574 m!7331166))

(assert (=> start!641580 d!2055416))

(declare-fun d!2055418 () Bool)

(assert (=> d!2055418 (= (isEmpty!37660 (t!379202 (exprs!6304 (h!71885 zl!343)))) (is-Nil!65436 (t!379202 (exprs!6304 (h!71885 zl!343)))))))

(assert (=> b!6547590 d!2055418))

(declare-fun b!6548457 () Bool)

(declare-fun e!3964844 () Bool)

(declare-fun tp!1811076 () Bool)

(declare-fun tp!1811075 () Bool)

(assert (=> b!6548457 (= e!3964844 (and tp!1811076 tp!1811075))))

(declare-fun b!6548454 () Bool)

(assert (=> b!6548454 (= e!3964844 tp_is_empty!42093)))

(declare-fun b!6548455 () Bool)

(declare-fun tp!1811074 () Bool)

(declare-fun tp!1811078 () Bool)

(assert (=> b!6548455 (= e!3964844 (and tp!1811074 tp!1811078))))

(declare-fun b!6548456 () Bool)

(declare-fun tp!1811077 () Bool)

(assert (=> b!6548456 (= e!3964844 tp!1811077)))

(assert (=> b!6547596 (= tp!1811030 e!3964844)))

(assert (= (and b!6547596 (is-ElementMatch!16420 (reg!16749 r!7292))) b!6548454))

(assert (= (and b!6547596 (is-Concat!25265 (reg!16749 r!7292))) b!6548455))

(assert (= (and b!6547596 (is-Star!16420 (reg!16749 r!7292))) b!6548456))

(assert (= (and b!6547596 (is-Union!16420 (reg!16749 r!7292))) b!6548457))

(declare-fun b!6548466 () Bool)

(declare-fun e!3964849 () Bool)

(declare-fun tp!1811083 () Bool)

(declare-fun tp!1811084 () Bool)

(assert (=> b!6548466 (= e!3964849 (and tp!1811083 tp!1811084))))

(assert (=> b!6547586 (= tp!1811025 e!3964849)))

(assert (= (and b!6547586 (is-Cons!65436 (exprs!6304 setElem!44679))) b!6548466))

(declare-fun b!6548470 () Bool)

(declare-fun e!3964850 () Bool)

(declare-fun tp!1811087 () Bool)

(declare-fun tp!1811086 () Bool)

(assert (=> b!6548470 (= e!3964850 (and tp!1811087 tp!1811086))))

(declare-fun b!6548467 () Bool)

(assert (=> b!6548467 (= e!3964850 tp_is_empty!42093)))

(declare-fun b!6548468 () Bool)

(declare-fun tp!1811085 () Bool)

(declare-fun tp!1811089 () Bool)

(assert (=> b!6548468 (= e!3964850 (and tp!1811085 tp!1811089))))

(declare-fun b!6548469 () Bool)

(declare-fun tp!1811088 () Bool)

(assert (=> b!6548469 (= e!3964850 tp!1811088)))

(assert (=> b!6547575 (= tp!1811026 e!3964850)))

(assert (= (and b!6547575 (is-ElementMatch!16420 (regOne!33352 r!7292))) b!6548467))

(assert (= (and b!6547575 (is-Concat!25265 (regOne!33352 r!7292))) b!6548468))

(assert (= (and b!6547575 (is-Star!16420 (regOne!33352 r!7292))) b!6548469))

(assert (= (and b!6547575 (is-Union!16420 (regOne!33352 r!7292))) b!6548470))

(declare-fun b!6548474 () Bool)

(declare-fun e!3964851 () Bool)

(declare-fun tp!1811092 () Bool)

(declare-fun tp!1811091 () Bool)

(assert (=> b!6548474 (= e!3964851 (and tp!1811092 tp!1811091))))

(declare-fun b!6548471 () Bool)

(assert (=> b!6548471 (= e!3964851 tp_is_empty!42093)))

(declare-fun b!6548472 () Bool)

(declare-fun tp!1811090 () Bool)

(declare-fun tp!1811094 () Bool)

(assert (=> b!6548472 (= e!3964851 (and tp!1811090 tp!1811094))))

(declare-fun b!6548473 () Bool)

(declare-fun tp!1811093 () Bool)

(assert (=> b!6548473 (= e!3964851 tp!1811093)))

(assert (=> b!6547575 (= tp!1811028 e!3964851)))

(assert (= (and b!6547575 (is-ElementMatch!16420 (regTwo!33352 r!7292))) b!6548471))

(assert (= (and b!6547575 (is-Concat!25265 (regTwo!33352 r!7292))) b!6548472))

(assert (= (and b!6547575 (is-Star!16420 (regTwo!33352 r!7292))) b!6548473))

(assert (= (and b!6547575 (is-Union!16420 (regTwo!33352 r!7292))) b!6548474))

(declare-fun b!6548475 () Bool)

(declare-fun e!3964852 () Bool)

(declare-fun tp!1811095 () Bool)

(declare-fun tp!1811096 () Bool)

(assert (=> b!6548475 (= e!3964852 (and tp!1811095 tp!1811096))))

(assert (=> b!6547578 (= tp!1811024 e!3964852)))

(assert (= (and b!6547578 (is-Cons!65436 (exprs!6304 (h!71885 zl!343)))) b!6548475))

(declare-fun condSetEmpty!44685 () Bool)

(assert (=> setNonEmpty!44679 (= condSetEmpty!44685 (= setRest!44679 (as set.empty (Set Context!11608))))))

(declare-fun setRes!44685 () Bool)

(assert (=> setNonEmpty!44679 (= tp!1811027 setRes!44685)))

(declare-fun setIsEmpty!44685 () Bool)

(assert (=> setIsEmpty!44685 setRes!44685))

(declare-fun setNonEmpty!44685 () Bool)

(declare-fun e!3964856 () Bool)

(declare-fun tp!1811101 () Bool)

(declare-fun setElem!44685 () Context!11608)

(assert (=> setNonEmpty!44685 (= setRes!44685 (and tp!1811101 (inv!84298 setElem!44685) e!3964856))))

(declare-fun setRest!44685 () (Set Context!11608))

(assert (=> setNonEmpty!44685 (= setRest!44679 (set.union (set.insert setElem!44685 (as set.empty (Set Context!11608))) setRest!44685))))

(declare-fun b!6548482 () Bool)

(declare-fun tp!1811102 () Bool)

(assert (=> b!6548482 (= e!3964856 tp!1811102)))

(assert (= (and setNonEmpty!44679 condSetEmpty!44685) setIsEmpty!44685))

(assert (= (and setNonEmpty!44679 (not condSetEmpty!44685)) setNonEmpty!44685))

(assert (= setNonEmpty!44685 b!6548482))

(declare-fun m!7331176 () Bool)

(assert (=> setNonEmpty!44685 m!7331176))

(declare-fun b!6548504 () Bool)

(declare-fun e!3964869 () Bool)

(declare-fun tp!1811107 () Bool)

(assert (=> b!6548504 (= e!3964869 tp!1811107)))

(declare-fun b!6548503 () Bool)

(declare-fun e!3964868 () Bool)

(declare-fun tp!1811108 () Bool)

(assert (=> b!6548503 (= e!3964868 (and (inv!84298 (h!71885 (t!379203 zl!343))) e!3964869 tp!1811108))))

(assert (=> b!6547600 (= tp!1811029 e!3964868)))

(assert (= b!6548503 b!6548504))

(assert (= (and b!6547600 (is-Cons!65437 (t!379203 zl!343))) b!6548503))

(declare-fun m!7331180 () Bool)

(assert (=> b!6548503 m!7331180))

(declare-fun b!6548508 () Bool)

(declare-fun e!3964870 () Bool)

(declare-fun tp!1811111 () Bool)

(declare-fun tp!1811110 () Bool)

(assert (=> b!6548508 (= e!3964870 (and tp!1811111 tp!1811110))))

(declare-fun b!6548505 () Bool)

(assert (=> b!6548505 (= e!3964870 tp_is_empty!42093)))

(declare-fun b!6548506 () Bool)

(declare-fun tp!1811109 () Bool)

(declare-fun tp!1811113 () Bool)

(assert (=> b!6548506 (= e!3964870 (and tp!1811109 tp!1811113))))

(declare-fun b!6548507 () Bool)

(declare-fun tp!1811112 () Bool)

(assert (=> b!6548507 (= e!3964870 tp!1811112)))

(assert (=> b!6547569 (= tp!1811032 e!3964870)))

(assert (= (and b!6547569 (is-ElementMatch!16420 (regOne!33353 r!7292))) b!6548505))

(assert (= (and b!6547569 (is-Concat!25265 (regOne!33353 r!7292))) b!6548506))

(assert (= (and b!6547569 (is-Star!16420 (regOne!33353 r!7292))) b!6548507))

(assert (= (and b!6547569 (is-Union!16420 (regOne!33353 r!7292))) b!6548508))

(declare-fun b!6548512 () Bool)

(declare-fun e!3964871 () Bool)

(declare-fun tp!1811116 () Bool)

(declare-fun tp!1811115 () Bool)

(assert (=> b!6548512 (= e!3964871 (and tp!1811116 tp!1811115))))

(declare-fun b!6548509 () Bool)

(assert (=> b!6548509 (= e!3964871 tp_is_empty!42093)))

(declare-fun b!6548510 () Bool)

(declare-fun tp!1811114 () Bool)

(declare-fun tp!1811118 () Bool)

(assert (=> b!6548510 (= e!3964871 (and tp!1811114 tp!1811118))))

(declare-fun b!6548511 () Bool)

(declare-fun tp!1811117 () Bool)

(assert (=> b!6548511 (= e!3964871 tp!1811117)))

(assert (=> b!6547569 (= tp!1811033 e!3964871)))

(assert (= (and b!6547569 (is-ElementMatch!16420 (regTwo!33353 r!7292))) b!6548509))

(assert (= (and b!6547569 (is-Concat!25265 (regTwo!33353 r!7292))) b!6548510))

(assert (= (and b!6547569 (is-Star!16420 (regTwo!33353 r!7292))) b!6548511))

(assert (= (and b!6547569 (is-Union!16420 (regTwo!33353 r!7292))) b!6548512))

(declare-fun b!6548526 () Bool)

(declare-fun e!3964881 () Bool)

(declare-fun tp!1811121 () Bool)

(assert (=> b!6548526 (= e!3964881 (and tp_is_empty!42093 tp!1811121))))

(assert (=> b!6547560 (= tp!1811031 e!3964881)))

(assert (= (and b!6547560 (is-Cons!65435 (t!379201 s!2326))) b!6548526))

(declare-fun b_lambda!247853 () Bool)

(assert (= b_lambda!247845 (or b!6547595 b_lambda!247853)))

(declare-fun bs!1671929 () Bool)

(declare-fun d!2055426 () Bool)

(assert (= bs!1671929 (and d!2055426 b!6547595)))

(assert (=> bs!1671929 (= (dynLambda!26012 lambda!363522 lt!2401114) (derivationStepZipperUp!1594 lt!2401114 (h!71883 s!2326)))))

(assert (=> bs!1671929 m!7330254))

(assert (=> d!2055286 d!2055426))

(declare-fun b_lambda!247855 () Bool)

(assert (= b_lambda!247841 (or b!6547595 b_lambda!247855)))

(declare-fun bs!1671930 () Bool)

(declare-fun d!2055428 () Bool)

(assert (= bs!1671930 (and d!2055428 b!6547595)))

(assert (=> bs!1671930 (= (dynLambda!26012 lambda!363522 lt!2401141) (derivationStepZipperUp!1594 lt!2401141 (h!71883 s!2326)))))

(assert (=> bs!1671930 m!7330342))

(assert (=> d!2055246 d!2055428))

(declare-fun b_lambda!247857 () Bool)

(assert (= b_lambda!247847 (or b!6547598 b_lambda!247857)))

(declare-fun bs!1671931 () Bool)

(declare-fun d!2055430 () Bool)

(assert (= bs!1671931 (and d!2055430 b!6547598)))

(declare-fun lt!2401443 () Unit!159015)

(assert (=> bs!1671931 (= lt!2401443 (lemmaConcatPreservesForall!393 (exprs!6304 lt!2401097) lt!2401120 lambda!363524))))

(assert (=> bs!1671931 (= (dynLambda!26013 lambda!363523 lt!2401097) (Context!11609 (++!14542 (exprs!6304 lt!2401097) lt!2401120)))))

(declare-fun m!7331196 () Bool)

(assert (=> bs!1671931 m!7331196))

(declare-fun m!7331198 () Bool)

(assert (=> bs!1671931 m!7331198))

(assert (=> d!2055320 d!2055430))

(declare-fun b_lambda!247859 () Bool)

(assert (= b_lambda!247843 (or b!6547595 b_lambda!247859)))

(declare-fun bs!1671932 () Bool)

(declare-fun d!2055432 () Bool)

(assert (= bs!1671932 (and d!2055432 b!6547595)))

(assert (=> bs!1671932 (= (dynLambda!26012 lambda!363522 lt!2401097) (derivationStepZipperUp!1594 lt!2401097 (h!71883 s!2326)))))

(assert (=> bs!1671932 m!7330346))

(assert (=> d!2055248 d!2055432))

(declare-fun b_lambda!247861 () Bool)

(assert (= b_lambda!247851 (or b!6547595 b_lambda!247861)))

(declare-fun bs!1671933 () Bool)

(declare-fun d!2055434 () Bool)

(assert (= bs!1671933 (and d!2055434 b!6547595)))

(assert (=> bs!1671933 (= (dynLambda!26012 lambda!363522 (h!71885 zl!343)) (derivationStepZipperUp!1594 (h!71885 zl!343) (h!71883 s!2326)))))

(assert (=> bs!1671933 m!7330240))

(assert (=> d!2055392 d!2055434))

(push 1)

(assert (not b!6548332))

(assert (not b!6547839))

(assert (not bm!569534))

(assert (not b!6548508))

(assert (not b_lambda!247857))

(assert (not d!2055378))

(assert (not b!6548284))

(assert (not b!6548000))

(assert (not d!2055276))

(assert (not b!6548264))

(assert (not b!6548052))

(assert (not b!6548512))

(assert (not b!6547949))

(assert (not b_lambda!247853))

(assert (not b!6548260))

(assert (not bm!569478))

(assert (not bm!569533))

(assert (not d!2055248))

(assert (not b!6547941))

(assert (not d!2055246))

(assert (not d!2055320))

(assert (not b!6548526))

(assert (not d!2055278))

(assert (not d!2055372))

(assert (not d!2055252))

(assert (not d!2055286))

(assert (not b!6548466))

(assert (not b!6547862))

(assert (not d!2055386))

(assert (not b!6548223))

(assert (not d!2055310))

(assert (not d!2055382))

(assert (not b!6548170))

(assert (not b!6548327))

(assert (not b!6548163))

(assert (not b!6547980))

(assert (not bm!569477))

(assert (not b!6548475))

(assert (not b!6548503))

(assert (not d!2055318))

(assert (not b!6548292))

(assert (not bm!569557))

(assert (not b!6548507))

(assert (not d!2055268))

(assert (not b!6547975))

(assert (not b!6548051))

(assert (not d!2055394))

(assert (not b!6548172))

(assert (not d!2055334))

(assert (not bm!569568))

(assert (not bm!569536))

(assert (not d!2055348))

(assert (not b!6548160))

(assert (not d!2055294))

(assert (not b!6547841))

(assert (not b!6547979))

(assert (not b!6547795))

(assert (not b!6548214))

(assert (not b!6548087))

(assert (not b!6548266))

(assert (not bm!569565))

(assert (not b!6548086))

(assert (not b!6548511))

(assert (not b!6547907))

(assert (not b!6547802))

(assert (not bm!569566))

(assert (not b!6547948))

(assert (not d!2055342))

(assert (not d!2055232))

(assert (not b!6548326))

(assert (not b!6548049))

(assert (not bs!1671930))

(assert (not d!2055266))

(assert (not b!6548468))

(assert (not b!6548456))

(assert (not bm!569484))

(assert (not b!6548504))

(assert (not b!6547946))

(assert (not b!6547840))

(assert (not b!6548241))

(assert (not b!6548088))

(assert (not b!6548211))

(assert (not d!2055316))

(assert (not b!6548440))

(assert (not d!2055260))

(assert (not b!6548173))

(assert (not b!6548291))

(assert (not b!6548336))

(assert (not b!6548210))

(assert (not bm!569521))

(assert (not b!6547953))

(assert (not bm!569573))

(assert (not b!6548246))

(assert (not bm!569532))

(assert (not bm!569519))

(assert (not b!6548472))

(assert (not d!2055314))

(assert (not bm!569541))

(assert (not d!2055228))

(assert (not b!6547978))

(assert (not b!6548420))

(assert (not b!6548510))

(assert (not d!2055296))

(assert (not bs!1671929))

(assert (not b!6548147))

(assert (not b!6547857))

(assert (not b!6547838))

(assert (not b!6547863))

(assert (not b!6548470))

(assert (not b!6548457))

(assert (not bm!569530))

(assert (not b!6548289))

(assert (not bm!569564))

(assert (not b!6548162))

(assert (not b!6548053))

(assert (not d!2055370))

(assert (not b!6547997))

(assert (not b!6547798))

(assert (not b!6548167))

(assert (not d!2055262))

(assert (not b!6548127))

(assert (not bm!569531))

(assert (not d!2055346))

(assert (not b!6548404))

(assert (not b!6547801))

(assert (not b!6548331))

(assert (not d!2055280))

(assert (not d!2055238))

(assert (not b_lambda!247855))

(assert (not d!2055366))

(assert (not d!2055264))

(assert (not b_lambda!247859))

(assert (not d!2055362))

(assert (not b!6548267))

(assert (not b!6547774))

(assert (not b!6547837))

(assert (not bs!1671931))

(assert (not b!6548169))

(assert (not bm!569561))

(assert (not b!6547796))

(assert (not b!6548085))

(assert (not b!6548324))

(assert (not d!2055244))

(assert (not b!6548469))

(assert (not d!2055408))

(assert (not b!6547952))

(assert (not b!6548249))

(assert (not b!6547992))

(assert (not b!6548506))

(assert (not b!6548156))

(assert (not b!6548242))

(assert (not b!6548045))

(assert (not b!6547991))

(assert (not bm!569483))

(assert (not d!2055364))

(assert (not b!6547954))

(assert (not b!6547973))

(assert tp_is_empty!42093)

(assert (not b!6548239))

(assert (not d!2055258))

(assert (not b!6548482))

(assert (not bs!1671932))

(assert (not b!6548216))

(assert (not d!2055376))

(assert (not bm!569520))

(assert (not b!6548278))

(assert (not d!2055290))

(assert (not d!2055226))

(assert (not b!6548424))

(assert (not d!2055230))

(assert (not b!6548473))

(assert (not b!6547773))

(assert (not b!6547996))

(assert (not d!2055380))

(assert (not b!6548236))

(assert (not b!6547814))

(assert (not bm!569535))

(assert (not d!2055282))

(assert (not b!6548050))

(assert (not d!2055358))

(assert (not d!2055302))

(assert (not b!6547951))

(assert (not b!6548128))

(assert (not d!2055274))

(assert (not b!6547813))

(assert (not b!6548248))

(assert (not b!6547994))

(assert (not d!2055292))

(assert (not d!2055312))

(assert (not b!6547845))

(assert (not b!6547939))

(assert (not b!6547898))

(assert (not d!2055350))

(assert (not b!6548282))

(assert (not bm!569487))

(assert (not bm!569539))

(assert (not b!6547974))

(assert (not bm!569559))

(assert (not d!2055322))

(assert (not d!2055234))

(assert (not b!6548285))

(assert (not bm!569540))

(assert (not b!6548269))

(assert (not b!6547858))

(assert (not b!6548224))

(assert (not b!6548217))

(assert (not b!6548337))

(assert (not b!6547815))

(assert (not setNonEmpty!44685))

(assert (not bm!569570))

(assert (not d!2055330))

(assert (not bs!1671933))

(assert (not b!6548455))

(assert (not b!6547844))

(assert (not b!6548474))

(assert (not b!6547942))

(assert (not b!6547995))

(assert (not d!2055392))

(assert (not bm!569488))

(assert (not b!6548221))

(assert (not b!6547800))

(assert (not d!2055324))

(assert (not b!6547799))

(assert (not b_lambda!247861))

(assert (not b!6547809))

(assert (not b!6547999))

(assert (not b!6548259))

(assert (not d!2055406))

(assert (not bm!569529))

(assert (not b!6548257))

(assert (not bm!569574))

(assert (not d!2055250))

(assert (not d!2055298))

(assert (not d!2055288))

(assert (not b!6548202))

(assert (not d!2055236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

