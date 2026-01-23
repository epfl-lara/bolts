; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558546 () Bool)

(assert start!558546)

(declare-fun b!5292448 () Bool)

(assert (=> b!5292448 true))

(assert (=> b!5292448 true))

(declare-fun lambda!268067 () Int)

(declare-fun lambda!268066 () Int)

(assert (=> b!5292448 (not (= lambda!268067 lambda!268066))))

(assert (=> b!5292448 true))

(assert (=> b!5292448 true))

(declare-fun b!5292428 () Bool)

(assert (=> b!5292428 true))

(declare-fun bs!1227508 () Bool)

(declare-fun b!5292446 () Bool)

(assert (= bs!1227508 (and b!5292446 b!5292448)))

(declare-datatypes ((C!30124 0))(
  ( (C!30125 (val!24764 Int)) )
))
(declare-datatypes ((Regex!14927 0))(
  ( (ElementMatch!14927 (c!918175 C!30124)) (Concat!23772 (regOne!30366 Regex!14927) (regTwo!30366 Regex!14927)) (EmptyExpr!14927) (Star!14927 (reg!15256 Regex!14927)) (EmptyLang!14927) (Union!14927 (regOne!30367 Regex!14927) (regTwo!30367 Regex!14927)) )
))
(declare-fun r!7292 () Regex!14927)

(declare-fun lambda!268069 () Int)

(declare-fun lt!2162558 () Regex!14927)

(assert (=> bs!1227508 (= (and (= (regOne!30366 (regOne!30366 r!7292)) (regOne!30366 r!7292)) (= lt!2162558 (regTwo!30366 r!7292))) (= lambda!268069 lambda!268066))))

(assert (=> bs!1227508 (not (= lambda!268069 lambda!268067))))

(assert (=> b!5292446 true))

(assert (=> b!5292446 true))

(assert (=> b!5292446 true))

(declare-fun lambda!268070 () Int)

(assert (=> bs!1227508 (not (= lambda!268070 lambda!268066))))

(assert (=> bs!1227508 (= (and (= (regOne!30366 (regOne!30366 r!7292)) (regOne!30366 r!7292)) (= lt!2162558 (regTwo!30366 r!7292))) (= lambda!268070 lambda!268067))))

(assert (=> b!5292446 (not (= lambda!268070 lambda!268069))))

(assert (=> b!5292446 true))

(assert (=> b!5292446 true))

(assert (=> b!5292446 true))

(declare-fun lt!2162563 () Regex!14927)

(declare-fun lambda!268071 () Int)

(assert (=> bs!1227508 (= (and (= (regTwo!30366 (regOne!30366 r!7292)) (regOne!30366 r!7292)) (= lt!2162563 (regTwo!30366 r!7292))) (= lambda!268071 lambda!268066))))

(assert (=> bs!1227508 (not (= lambda!268071 lambda!268067))))

(assert (=> b!5292446 (= (and (= (regTwo!30366 (regOne!30366 r!7292)) (regOne!30366 (regOne!30366 r!7292))) (= lt!2162563 lt!2162558)) (= lambda!268071 lambda!268069))))

(assert (=> b!5292446 (not (= lambda!268071 lambda!268070))))

(assert (=> b!5292446 true))

(assert (=> b!5292446 true))

(assert (=> b!5292446 true))

(declare-fun b!5292426 () Bool)

(declare-fun e!3290029 () Bool)

(declare-fun tp!1477161 () Bool)

(declare-fun tp!1477155 () Bool)

(assert (=> b!5292426 (= e!3290029 (and tp!1477161 tp!1477155))))

(declare-fun b!5292427 () Bool)

(declare-fun e!3290038 () Bool)

(declare-fun e!3290040 () Bool)

(assert (=> b!5292427 (= e!3290038 e!3290040)))

(declare-fun res!2244628 () Bool)

(assert (=> b!5292427 (=> res!2244628 e!3290040)))

(declare-fun e!3290037 () Bool)

(assert (=> b!5292427 (= res!2244628 e!3290037)))

(declare-fun res!2244624 () Bool)

(assert (=> b!5292427 (=> (not res!2244624) (not e!3290037))))

(declare-datatypes ((List!61080 0))(
  ( (Nil!60956) (Cons!60956 (h!67404 C!30124) (t!374285 List!61080)) )
))
(declare-fun s!2326 () List!61080)

(declare-fun lt!2162585 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61081 0))(
  ( (Nil!60957) (Cons!60957 (h!67405 Regex!14927) (t!374286 List!61081)) )
))
(declare-datatypes ((Context!8622 0))(
  ( (Context!8623 (exprs!4811 List!61081)) )
))
(declare-fun lt!2162580 () (InoxSet Context!8622))

(declare-fun matchZipper!1171 ((InoxSet Context!8622) List!61080) Bool)

(assert (=> b!5292427 (= res!2244624 (not (= lt!2162585 (matchZipper!1171 lt!2162580 (t!374285 s!2326)))))))

(declare-fun lt!2162595 () (InoxSet Context!8622))

(declare-fun e!3290033 () Bool)

(assert (=> b!5292427 (= (matchZipper!1171 lt!2162595 (t!374285 s!2326)) e!3290033)))

(declare-fun res!2244616 () Bool)

(assert (=> b!5292427 (=> res!2244616 e!3290033)))

(declare-fun lt!2162590 () Bool)

(assert (=> b!5292427 (= res!2244616 lt!2162590)))

(declare-fun lt!2162597 () (InoxSet Context!8622))

(declare-fun lt!2162571 () (InoxSet Context!8622))

(declare-datatypes ((Unit!153226 0))(
  ( (Unit!153227) )
))
(declare-fun lt!2162573 () Unit!153226)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!164 ((InoxSet Context!8622) (InoxSet Context!8622) List!61080) Unit!153226)

(assert (=> b!5292427 (= lt!2162573 (lemmaZipperConcatMatchesSameAsBothZippers!164 lt!2162571 lt!2162597 (t!374285 s!2326)))))

(declare-fun lt!2162598 () Context!8622)

(declare-fun lambda!268068 () Int)

(declare-fun lt!2162584 () (InoxSet Context!8622))

(declare-fun flatMap!654 ((InoxSet Context!8622) Int) (InoxSet Context!8622))

(declare-fun derivationStepZipperUp!299 (Context!8622 C!30124) (InoxSet Context!8622))

(assert (=> b!5292427 (= (flatMap!654 lt!2162584 lambda!268068) (derivationStepZipperUp!299 lt!2162598 (h!67404 s!2326)))))

(declare-fun lt!2162568 () Unit!153226)

(declare-fun lemmaFlatMapOnSingletonSet!186 ((InoxSet Context!8622) Context!8622 Int) Unit!153226)

(assert (=> b!5292427 (= lt!2162568 (lemmaFlatMapOnSingletonSet!186 lt!2162584 lt!2162598 lambda!268068))))

(declare-fun e!3290041 () Bool)

(declare-fun e!3290042 () Bool)

(assert (=> b!5292428 (= e!3290041 e!3290042)))

(declare-fun res!2244614 () Bool)

(assert (=> b!5292428 (=> res!2244614 e!3290042)))

(get-info :version)

(assert (=> b!5292428 (= res!2244614 (or (and ((_ is ElementMatch!14927) (regOne!30366 r!7292)) (= (c!918175 (regOne!30366 r!7292)) (h!67404 s!2326))) ((_ is Union!14927) (regOne!30366 r!7292)) (not ((_ is Concat!23772) (regOne!30366 r!7292)))))))

(declare-fun lt!2162557 () Unit!153226)

(declare-fun e!3290035 () Unit!153226)

(assert (=> b!5292428 (= lt!2162557 e!3290035)))

(declare-fun c!918174 () Bool)

(declare-datatypes ((List!61082 0))(
  ( (Nil!60958) (Cons!60958 (h!67406 Context!8622) (t!374287 List!61082)) )
))
(declare-fun zl!343 () List!61082)

(declare-fun nullable!5096 (Regex!14927) Bool)

(assert (=> b!5292428 (= c!918174 (nullable!5096 (h!67405 (exprs!4811 (h!67406 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!8622))

(assert (=> b!5292428 (= (flatMap!654 z!1189 lambda!268068) (derivationStepZipperUp!299 (h!67406 zl!343) (h!67404 s!2326)))))

(declare-fun lt!2162586 () Unit!153226)

(assert (=> b!5292428 (= lt!2162586 (lemmaFlatMapOnSingletonSet!186 z!1189 (h!67406 zl!343) lambda!268068))))

(declare-fun lt!2162578 () (InoxSet Context!8622))

(declare-fun lt!2162576 () Context!8622)

(assert (=> b!5292428 (= lt!2162578 (derivationStepZipperUp!299 lt!2162576 (h!67404 s!2326)))))

(declare-fun lt!2162583 () (InoxSet Context!8622))

(declare-fun derivationStepZipperDown!375 (Regex!14927 Context!8622 C!30124) (InoxSet Context!8622))

(assert (=> b!5292428 (= lt!2162583 (derivationStepZipperDown!375 (h!67405 (exprs!4811 (h!67406 zl!343))) lt!2162576 (h!67404 s!2326)))))

(assert (=> b!5292428 (= lt!2162576 (Context!8623 (t!374286 (exprs!4811 (h!67406 zl!343)))))))

(declare-fun lt!2162572 () (InoxSet Context!8622))

(assert (=> b!5292428 (= lt!2162572 (derivationStepZipperUp!299 (Context!8623 (Cons!60957 (h!67405 (exprs!4811 (h!67406 zl!343))) (t!374286 (exprs!4811 (h!67406 zl!343))))) (h!67404 s!2326)))))

(declare-fun b!5292429 () Bool)

(declare-fun Unit!153228 () Unit!153226)

(assert (=> b!5292429 (= e!3290035 Unit!153228)))

(declare-fun setIsEmpty!33971 () Bool)

(declare-fun setRes!33971 () Bool)

(assert (=> setIsEmpty!33971 setRes!33971))

(declare-fun b!5292430 () Bool)

(declare-fun res!2244607 () Bool)

(assert (=> b!5292430 (=> res!2244607 e!3290040)))

(assert (=> b!5292430 (= res!2244607 (not (= (exprs!4811 (h!67406 zl!343)) (Cons!60957 (Concat!23772 (regOne!30366 (regOne!30366 r!7292)) (regTwo!30366 (regOne!30366 r!7292))) (t!374286 (exprs!4811 (h!67406 zl!343)))))))))

(declare-fun b!5292431 () Bool)

(declare-fun e!3290043 () Bool)

(assert (=> b!5292431 (= e!3290040 e!3290043)))

(declare-fun res!2244613 () Bool)

(assert (=> b!5292431 (=> res!2244613 e!3290043)))

(declare-fun lt!2162581 () List!61082)

(declare-fun zipperDepthTotal!88 (List!61082) Int)

(assert (=> b!5292431 (= res!2244613 (>= (zipperDepthTotal!88 lt!2162581) (zipperDepthTotal!88 zl!343)))))

(declare-fun lt!2162596 () Context!8622)

(assert (=> b!5292431 (= lt!2162581 (Cons!60958 lt!2162596 Nil!60958))))

(declare-fun res!2244620 () Bool)

(declare-fun e!3290027 () Bool)

(assert (=> start!558546 (=> (not res!2244620) (not e!3290027))))

(declare-fun validRegex!6663 (Regex!14927) Bool)

(assert (=> start!558546 (= res!2244620 (validRegex!6663 r!7292))))

(assert (=> start!558546 e!3290027))

(assert (=> start!558546 e!3290029))

(declare-fun condSetEmpty!33971 () Bool)

(assert (=> start!558546 (= condSetEmpty!33971 (= z!1189 ((as const (Array Context!8622 Bool)) false)))))

(assert (=> start!558546 setRes!33971))

(declare-fun e!3290046 () Bool)

(assert (=> start!558546 e!3290046))

(declare-fun e!3290034 () Bool)

(assert (=> start!558546 e!3290034))

(declare-fun b!5292432 () Bool)

(declare-fun e!3290039 () Bool)

(assert (=> b!5292432 (= e!3290027 (not e!3290039))))

(declare-fun res!2244626 () Bool)

(assert (=> b!5292432 (=> res!2244626 e!3290039)))

(assert (=> b!5292432 (= res!2244626 (not ((_ is Cons!60958) zl!343)))))

(declare-fun lt!2162589 () Bool)

(declare-fun matchRSpec!2030 (Regex!14927 List!61080) Bool)

(assert (=> b!5292432 (= lt!2162589 (matchRSpec!2030 r!7292 s!2326))))

(declare-fun matchR!7112 (Regex!14927 List!61080) Bool)

(assert (=> b!5292432 (= lt!2162589 (matchR!7112 r!7292 s!2326))))

(declare-fun lt!2162593 () Unit!153226)

(declare-fun mainMatchTheorem!2030 (Regex!14927 List!61080) Unit!153226)

(assert (=> b!5292432 (= lt!2162593 (mainMatchTheorem!2030 r!7292 s!2326))))

(declare-fun b!5292433 () Bool)

(declare-fun res!2244631 () Bool)

(assert (=> b!5292433 (=> res!2244631 e!3290039)))

(declare-fun isEmpty!32911 (List!61082) Bool)

(assert (=> b!5292433 (= res!2244631 (not (isEmpty!32911 (t!374287 zl!343))))))

(declare-fun b!5292434 () Bool)

(declare-fun e!3290028 () Bool)

(assert (=> b!5292434 (= e!3290042 e!3290028)))

(declare-fun res!2244608 () Bool)

(assert (=> b!5292434 (=> res!2244608 e!3290028)))

(declare-fun lt!2162569 () (InoxSet Context!8622))

(assert (=> b!5292434 (= res!2244608 (not (= lt!2162583 lt!2162569)))))

(declare-fun lt!2162582 () (InoxSet Context!8622))

(assert (=> b!5292434 (= lt!2162569 ((_ map or) lt!2162571 lt!2162582))))

(assert (=> b!5292434 (= lt!2162582 (derivationStepZipperDown!375 (regTwo!30366 (regOne!30366 r!7292)) lt!2162576 (h!67404 s!2326)))))

(assert (=> b!5292434 (= lt!2162571 (derivationStepZipperDown!375 (regOne!30366 (regOne!30366 r!7292)) lt!2162598 (h!67404 s!2326)))))

(declare-fun lt!2162562 () List!61081)

(assert (=> b!5292434 (= lt!2162598 (Context!8623 lt!2162562))))

(assert (=> b!5292434 (= lt!2162562 (Cons!60957 (regTwo!30366 (regOne!30366 r!7292)) (t!374286 (exprs!4811 (h!67406 zl!343)))))))

(declare-fun tp!1477154 () Bool)

(declare-fun e!3290032 () Bool)

(declare-fun b!5292435 () Bool)

(declare-fun inv!80564 (Context!8622) Bool)

(assert (=> b!5292435 (= e!3290046 (and (inv!80564 (h!67406 zl!343)) e!3290032 tp!1477154))))

(declare-fun b!5292436 () Bool)

(declare-fun res!2244629 () Bool)

(assert (=> b!5292436 (=> res!2244629 e!3290041)))

(declare-fun isEmpty!32912 (List!61081) Bool)

(assert (=> b!5292436 (= res!2244629 (isEmpty!32912 (t!374286 (exprs!4811 (h!67406 zl!343)))))))

(declare-fun b!5292437 () Bool)

(declare-fun derivationStepZipper!1170 ((InoxSet Context!8622) C!30124) (InoxSet Context!8622))

(assert (=> b!5292437 (= e!3290037 (not (matchZipper!1171 (derivationStepZipper!1170 lt!2162584 (h!67404 s!2326)) (t!374285 s!2326))))))

(declare-fun b!5292438 () Bool)

(declare-fun e!3290031 () Bool)

(declare-fun tp!1477160 () Bool)

(assert (=> b!5292438 (= e!3290031 tp!1477160)))

(declare-fun setElem!33971 () Context!8622)

(declare-fun tp!1477158 () Bool)

(declare-fun setNonEmpty!33971 () Bool)

(assert (=> setNonEmpty!33971 (= setRes!33971 (and tp!1477158 (inv!80564 setElem!33971) e!3290031))))

(declare-fun setRest!33971 () (InoxSet Context!8622))

(assert (=> setNonEmpty!33971 (= z!1189 ((_ map or) (store ((as const (Array Context!8622 Bool)) false) setElem!33971 true) setRest!33971))))

(declare-fun b!5292439 () Bool)

(declare-fun e!3290030 () Bool)

(assert (=> b!5292439 (= e!3290030 (not (matchZipper!1171 lt!2162582 (t!374285 s!2326))))))

(declare-fun b!5292440 () Bool)

(declare-fun res!2244625 () Bool)

(assert (=> b!5292440 (=> (not res!2244625) (not e!3290027))))

(declare-fun unfocusZipper!669 (List!61082) Regex!14927)

(assert (=> b!5292440 (= res!2244625 (= r!7292 (unfocusZipper!669 zl!343)))))

(declare-fun b!5292441 () Bool)

(declare-fun e!3290045 () Bool)

(assert (=> b!5292441 (= e!3290045 (matchZipper!1171 lt!2162578 (t!374285 s!2326)))))

(declare-fun b!5292442 () Bool)

(declare-fun tp!1477159 () Bool)

(assert (=> b!5292442 (= e!3290032 tp!1477159)))

(declare-fun b!5292443 () Bool)

(declare-fun e!3290044 () Bool)

(assert (=> b!5292443 (= e!3290044 e!3290038)))

(declare-fun res!2244623 () Bool)

(assert (=> b!5292443 (=> res!2244623 e!3290038)))

(assert (=> b!5292443 (= res!2244623 (not (= lt!2162580 lt!2162595)))))

(assert (=> b!5292443 (= lt!2162595 ((_ map or) lt!2162571 lt!2162597))))

(assert (=> b!5292443 (= lt!2162597 (derivationStepZipperUp!299 lt!2162598 (h!67404 s!2326)))))

(declare-fun lt!2162579 () (InoxSet Context!8622))

(assert (=> b!5292443 (= (flatMap!654 lt!2162579 lambda!268068) (derivationStepZipperUp!299 lt!2162596 (h!67404 s!2326)))))

(declare-fun lt!2162587 () Unit!153226)

(assert (=> b!5292443 (= lt!2162587 (lemmaFlatMapOnSingletonSet!186 lt!2162579 lt!2162596 lambda!268068))))

(declare-fun lt!2162577 () (InoxSet Context!8622))

(assert (=> b!5292443 (= lt!2162577 (derivationStepZipperUp!299 lt!2162596 (h!67404 s!2326)))))

(assert (=> b!5292443 (= lt!2162580 (derivationStepZipper!1170 lt!2162579 (h!67404 s!2326)))))

(assert (=> b!5292443 (= lt!2162584 (store ((as const (Array Context!8622 Bool)) false) lt!2162598 true))))

(assert (=> b!5292443 (= lt!2162579 (store ((as const (Array Context!8622 Bool)) false) lt!2162596 true))))

(declare-fun lt!2162574 () List!61081)

(assert (=> b!5292443 (= lt!2162596 (Context!8623 lt!2162574))))

(assert (=> b!5292443 (= lt!2162574 (Cons!60957 (regOne!30366 (regOne!30366 r!7292)) lt!2162562))))

(declare-fun b!5292444 () Bool)

(declare-fun res!2244612 () Bool)

(assert (=> b!5292444 (=> res!2244612 e!3290042)))

(assert (=> b!5292444 (= res!2244612 (not (nullable!5096 (regOne!30366 (regOne!30366 r!7292)))))))

(declare-fun b!5292445 () Bool)

(declare-fun res!2244617 () Bool)

(assert (=> b!5292445 (=> res!2244617 e!3290040)))

(declare-fun contextDepthTotal!68 (Context!8622) Int)

(assert (=> b!5292445 (= res!2244617 (>= (contextDepthTotal!68 lt!2162596) (contextDepthTotal!68 (h!67406 zl!343))))))

(assert (=> b!5292446 (= e!3290043 true)))

(declare-datatypes ((tuple2!64252 0))(
  ( (tuple2!64253 (_1!35429 List!61080) (_2!35429 List!61080)) )
))
(declare-datatypes ((Option!15038 0))(
  ( (None!15037) (Some!15037 (v!51066 tuple2!64252)) )
))
(declare-fun isDefined!11741 (Option!15038) Bool)

(declare-fun findConcatSeparation!1452 (Regex!14927 Regex!14927 List!61080 List!61080 List!61080) Option!15038)

(declare-fun Exists!2108 (Int) Bool)

(assert (=> b!5292446 (= (isDefined!11741 (findConcatSeparation!1452 (regTwo!30366 (regOne!30366 r!7292)) lt!2162563 Nil!60956 s!2326 s!2326)) (Exists!2108 lambda!268071))))

(declare-fun lt!2162564 () Unit!153226)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1216 (Regex!14927 Regex!14927 List!61080) Unit!153226)

(assert (=> b!5292446 (= lt!2162564 (lemmaFindConcatSeparationEquivalentToExists!1216 (regTwo!30366 (regOne!30366 r!7292)) lt!2162563 s!2326))))

(declare-fun generalisedConcat!596 (List!61081) Regex!14927)

(assert (=> b!5292446 (= lt!2162563 (generalisedConcat!596 (t!374286 (exprs!4811 (h!67406 zl!343)))))))

(declare-fun lt!2162561 () Bool)

(assert (=> b!5292446 (= lt!2162561 (matchRSpec!2030 lt!2162558 s!2326))))

(declare-fun lt!2162556 () Unit!153226)

(assert (=> b!5292446 (= lt!2162556 (mainMatchTheorem!2030 lt!2162558 s!2326))))

(assert (=> b!5292446 (= (Exists!2108 lambda!268069) (Exists!2108 lambda!268070))))

(declare-fun lt!2162566 () Unit!153226)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!762 (Regex!14927 Regex!14927 List!61080) Unit!153226)

(assert (=> b!5292446 (= lt!2162566 (lemmaExistCutMatchRandMatchRSpecEquivalent!762 (regOne!30366 (regOne!30366 r!7292)) lt!2162558 s!2326))))

(assert (=> b!5292446 (= (isDefined!11741 (findConcatSeparation!1452 (regOne!30366 (regOne!30366 r!7292)) lt!2162558 Nil!60956 s!2326 s!2326)) (Exists!2108 lambda!268069))))

(declare-fun lt!2162591 () Unit!153226)

(assert (=> b!5292446 (= lt!2162591 (lemmaFindConcatSeparationEquivalentToExists!1216 (regOne!30366 (regOne!30366 r!7292)) lt!2162558 s!2326))))

(declare-fun lt!2162559 () Bool)

(declare-fun lt!2162594 () Regex!14927)

(assert (=> b!5292446 (= lt!2162559 (matchRSpec!2030 lt!2162594 s!2326))))

(declare-fun lt!2162592 () Unit!153226)

(assert (=> b!5292446 (= lt!2162592 (mainMatchTheorem!2030 lt!2162594 s!2326))))

(assert (=> b!5292446 (= lt!2162561 (matchZipper!1171 lt!2162584 s!2326))))

(assert (=> b!5292446 (= lt!2162561 (matchR!7112 lt!2162558 s!2326))))

(declare-fun lt!2162570 () Unit!153226)

(declare-fun theoremZipperRegexEquiv!337 ((InoxSet Context!8622) List!61082 Regex!14927 List!61080) Unit!153226)

(assert (=> b!5292446 (= lt!2162570 (theoremZipperRegexEquiv!337 lt!2162584 (Cons!60958 lt!2162598 Nil!60958) lt!2162558 s!2326))))

(assert (=> b!5292446 (= lt!2162558 (generalisedConcat!596 lt!2162562))))

(assert (=> b!5292446 (= lt!2162559 (matchZipper!1171 lt!2162579 s!2326))))

(assert (=> b!5292446 (= lt!2162559 (matchR!7112 lt!2162594 s!2326))))

(declare-fun lt!2162555 () Unit!153226)

(assert (=> b!5292446 (= lt!2162555 (theoremZipperRegexEquiv!337 lt!2162579 lt!2162581 lt!2162594 s!2326))))

(assert (=> b!5292446 (= lt!2162594 (generalisedConcat!596 lt!2162574))))

(declare-fun b!5292447 () Bool)

(declare-fun Unit!153229 () Unit!153226)

(assert (=> b!5292447 (= e!3290035 Unit!153229)))

(declare-fun lt!2162588 () Unit!153226)

(assert (=> b!5292447 (= lt!2162588 (lemmaZipperConcatMatchesSameAsBothZippers!164 lt!2162583 lt!2162578 (t!374285 s!2326)))))

(declare-fun res!2244621 () Bool)

(assert (=> b!5292447 (= res!2244621 (matchZipper!1171 lt!2162583 (t!374285 s!2326)))))

(assert (=> b!5292447 (=> res!2244621 e!3290045)))

(assert (=> b!5292447 (= (matchZipper!1171 ((_ map or) lt!2162583 lt!2162578) (t!374285 s!2326)) e!3290045)))

(assert (=> b!5292448 (= e!3290039 e!3290041)))

(declare-fun res!2244618 () Bool)

(assert (=> b!5292448 (=> res!2244618 e!3290041)))

(declare-fun lt!2162575 () Bool)

(assert (=> b!5292448 (= res!2244618 (or (not (= lt!2162589 lt!2162575)) ((_ is Nil!60956) s!2326)))))

(assert (=> b!5292448 (= (Exists!2108 lambda!268066) (Exists!2108 lambda!268067))))

(declare-fun lt!2162567 () Unit!153226)

(assert (=> b!5292448 (= lt!2162567 (lemmaExistCutMatchRandMatchRSpecEquivalent!762 (regOne!30366 r!7292) (regTwo!30366 r!7292) s!2326))))

(assert (=> b!5292448 (= lt!2162575 (Exists!2108 lambda!268066))))

(assert (=> b!5292448 (= lt!2162575 (isDefined!11741 (findConcatSeparation!1452 (regOne!30366 r!7292) (regTwo!30366 r!7292) Nil!60956 s!2326 s!2326)))))

(declare-fun lt!2162565 () Unit!153226)

(assert (=> b!5292448 (= lt!2162565 (lemmaFindConcatSeparationEquivalentToExists!1216 (regOne!30366 r!7292) (regTwo!30366 r!7292) s!2326))))

(declare-fun b!5292449 () Bool)

(declare-fun res!2244606 () Bool)

(assert (=> b!5292449 (=> res!2244606 e!3290043)))

(declare-fun zipperDepth!44 (List!61082) Int)

(assert (=> b!5292449 (= res!2244606 (> (zipperDepth!44 lt!2162581) (zipperDepth!44 zl!343)))))

(declare-fun b!5292450 () Bool)

(declare-fun tp_is_empty!39107 () Bool)

(declare-fun tp!1477157 () Bool)

(assert (=> b!5292450 (= e!3290034 (and tp_is_empty!39107 tp!1477157))))

(declare-fun b!5292451 () Bool)

(declare-fun e!3290036 () Bool)

(assert (=> b!5292451 (= e!3290036 (matchZipper!1171 lt!2162582 (t!374285 s!2326)))))

(declare-fun b!5292452 () Bool)

(declare-fun tp!1477152 () Bool)

(declare-fun tp!1477156 () Bool)

(assert (=> b!5292452 (= e!3290029 (and tp!1477152 tp!1477156))))

(declare-fun b!5292453 () Bool)

(assert (=> b!5292453 (= e!3290033 (matchZipper!1171 lt!2162597 (t!374285 s!2326)))))

(declare-fun b!5292454 () Bool)

(declare-fun res!2244619 () Bool)

(assert (=> b!5292454 (=> res!2244619 e!3290039)))

(declare-fun generalisedUnion!856 (List!61081) Regex!14927)

(declare-fun unfocusZipperList!369 (List!61082) List!61081)

(assert (=> b!5292454 (= res!2244619 (not (= r!7292 (generalisedUnion!856 (unfocusZipperList!369 zl!343)))))))

(declare-fun b!5292455 () Bool)

(assert (=> b!5292455 (= e!3290029 tp_is_empty!39107)))

(declare-fun b!5292456 () Bool)

(declare-fun res!2244609 () Bool)

(assert (=> b!5292456 (=> (not res!2244609) (not e!3290027))))

(declare-fun toList!8711 ((InoxSet Context!8622)) List!61082)

(assert (=> b!5292456 (= res!2244609 (= (toList!8711 z!1189) zl!343))))

(declare-fun b!5292457 () Bool)

(declare-fun res!2244622 () Bool)

(assert (=> b!5292457 (=> res!2244622 e!3290039)))

(assert (=> b!5292457 (= res!2244622 (not ((_ is Cons!60957) (exprs!4811 (h!67406 zl!343)))))))

(declare-fun b!5292458 () Bool)

(assert (=> b!5292458 (= e!3290028 e!3290044)))

(declare-fun res!2244615 () Bool)

(assert (=> b!5292458 (=> res!2244615 e!3290044)))

(assert (=> b!5292458 (= res!2244615 e!3290030)))

(declare-fun res!2244627 () Bool)

(assert (=> b!5292458 (=> (not res!2244627) (not e!3290030))))

(assert (=> b!5292458 (= res!2244627 (not (= lt!2162585 lt!2162590)))))

(assert (=> b!5292458 (= lt!2162585 (matchZipper!1171 lt!2162583 (t!374285 s!2326)))))

(assert (=> b!5292458 (= (matchZipper!1171 lt!2162569 (t!374285 s!2326)) e!3290036)))

(declare-fun res!2244610 () Bool)

(assert (=> b!5292458 (=> res!2244610 e!3290036)))

(assert (=> b!5292458 (= res!2244610 lt!2162590)))

(assert (=> b!5292458 (= lt!2162590 (matchZipper!1171 lt!2162571 (t!374285 s!2326)))))

(declare-fun lt!2162560 () Unit!153226)

(assert (=> b!5292458 (= lt!2162560 (lemmaZipperConcatMatchesSameAsBothZippers!164 lt!2162571 lt!2162582 (t!374285 s!2326)))))

(declare-fun b!5292459 () Bool)

(declare-fun res!2244630 () Bool)

(assert (=> b!5292459 (=> res!2244630 e!3290039)))

(assert (=> b!5292459 (= res!2244630 (or ((_ is EmptyExpr!14927) r!7292) ((_ is EmptyLang!14927) r!7292) ((_ is ElementMatch!14927) r!7292) ((_ is Union!14927) r!7292) (not ((_ is Concat!23772) r!7292))))))

(declare-fun b!5292460 () Bool)

(declare-fun res!2244611 () Bool)

(assert (=> b!5292460 (=> res!2244611 e!3290039)))

(assert (=> b!5292460 (= res!2244611 (not (= r!7292 (generalisedConcat!596 (exprs!4811 (h!67406 zl!343))))))))

(declare-fun b!5292461 () Bool)

(declare-fun tp!1477153 () Bool)

(assert (=> b!5292461 (= e!3290029 tp!1477153)))

(assert (= (and start!558546 res!2244620) b!5292456))

(assert (= (and b!5292456 res!2244609) b!5292440))

(assert (= (and b!5292440 res!2244625) b!5292432))

(assert (= (and b!5292432 (not res!2244626)) b!5292433))

(assert (= (and b!5292433 (not res!2244631)) b!5292460))

(assert (= (and b!5292460 (not res!2244611)) b!5292457))

(assert (= (and b!5292457 (not res!2244622)) b!5292454))

(assert (= (and b!5292454 (not res!2244619)) b!5292459))

(assert (= (and b!5292459 (not res!2244630)) b!5292448))

(assert (= (and b!5292448 (not res!2244618)) b!5292436))

(assert (= (and b!5292436 (not res!2244629)) b!5292428))

(assert (= (and b!5292428 c!918174) b!5292447))

(assert (= (and b!5292428 (not c!918174)) b!5292429))

(assert (= (and b!5292447 (not res!2244621)) b!5292441))

(assert (= (and b!5292428 (not res!2244614)) b!5292444))

(assert (= (and b!5292444 (not res!2244612)) b!5292434))

(assert (= (and b!5292434 (not res!2244608)) b!5292458))

(assert (= (and b!5292458 (not res!2244610)) b!5292451))

(assert (= (and b!5292458 res!2244627) b!5292439))

(assert (= (and b!5292458 (not res!2244615)) b!5292443))

(assert (= (and b!5292443 (not res!2244623)) b!5292427))

(assert (= (and b!5292427 (not res!2244616)) b!5292453))

(assert (= (and b!5292427 res!2244624) b!5292437))

(assert (= (and b!5292427 (not res!2244628)) b!5292430))

(assert (= (and b!5292430 (not res!2244607)) b!5292445))

(assert (= (and b!5292445 (not res!2244617)) b!5292431))

(assert (= (and b!5292431 (not res!2244613)) b!5292449))

(assert (= (and b!5292449 (not res!2244606)) b!5292446))

(assert (= (and start!558546 ((_ is ElementMatch!14927) r!7292)) b!5292455))

(assert (= (and start!558546 ((_ is Concat!23772) r!7292)) b!5292426))

(assert (= (and start!558546 ((_ is Star!14927) r!7292)) b!5292461))

(assert (= (and start!558546 ((_ is Union!14927) r!7292)) b!5292452))

(assert (= (and start!558546 condSetEmpty!33971) setIsEmpty!33971))

(assert (= (and start!558546 (not condSetEmpty!33971)) setNonEmpty!33971))

(assert (= setNonEmpty!33971 b!5292438))

(assert (= b!5292435 b!5292442))

(assert (= (and start!558546 ((_ is Cons!60958) zl!343)) b!5292435))

(assert (= (and start!558546 ((_ is Cons!60956) s!2326)) b!5292450))

(declare-fun m!6329830 () Bool)

(assert (=> b!5292431 m!6329830))

(declare-fun m!6329832 () Bool)

(assert (=> b!5292431 m!6329832))

(declare-fun m!6329834 () Bool)

(assert (=> b!5292454 m!6329834))

(assert (=> b!5292454 m!6329834))

(declare-fun m!6329836 () Bool)

(assert (=> b!5292454 m!6329836))

(declare-fun m!6329838 () Bool)

(assert (=> b!5292446 m!6329838))

(declare-fun m!6329840 () Bool)

(assert (=> b!5292446 m!6329840))

(declare-fun m!6329842 () Bool)

(assert (=> b!5292446 m!6329842))

(declare-fun m!6329844 () Bool)

(assert (=> b!5292446 m!6329844))

(declare-fun m!6329846 () Bool)

(assert (=> b!5292446 m!6329846))

(declare-fun m!6329848 () Bool)

(assert (=> b!5292446 m!6329848))

(declare-fun m!6329850 () Bool)

(assert (=> b!5292446 m!6329850))

(declare-fun m!6329852 () Bool)

(assert (=> b!5292446 m!6329852))

(declare-fun m!6329854 () Bool)

(assert (=> b!5292446 m!6329854))

(declare-fun m!6329856 () Bool)

(assert (=> b!5292446 m!6329856))

(declare-fun m!6329858 () Bool)

(assert (=> b!5292446 m!6329858))

(declare-fun m!6329860 () Bool)

(assert (=> b!5292446 m!6329860))

(assert (=> b!5292446 m!6329840))

(declare-fun m!6329862 () Bool)

(assert (=> b!5292446 m!6329862))

(declare-fun m!6329864 () Bool)

(assert (=> b!5292446 m!6329864))

(declare-fun m!6329866 () Bool)

(assert (=> b!5292446 m!6329866))

(declare-fun m!6329868 () Bool)

(assert (=> b!5292446 m!6329868))

(declare-fun m!6329870 () Bool)

(assert (=> b!5292446 m!6329870))

(declare-fun m!6329872 () Bool)

(assert (=> b!5292446 m!6329872))

(declare-fun m!6329874 () Bool)

(assert (=> b!5292446 m!6329874))

(declare-fun m!6329876 () Bool)

(assert (=> b!5292446 m!6329876))

(assert (=> b!5292446 m!6329872))

(declare-fun m!6329878 () Bool)

(assert (=> b!5292446 m!6329878))

(declare-fun m!6329880 () Bool)

(assert (=> b!5292446 m!6329880))

(declare-fun m!6329882 () Bool)

(assert (=> b!5292446 m!6329882))

(assert (=> b!5292446 m!6329854))

(declare-fun m!6329884 () Bool)

(assert (=> b!5292439 m!6329884))

(assert (=> b!5292451 m!6329884))

(declare-fun m!6329886 () Bool)

(assert (=> b!5292427 m!6329886))

(declare-fun m!6329888 () Bool)

(assert (=> b!5292427 m!6329888))

(declare-fun m!6329890 () Bool)

(assert (=> b!5292427 m!6329890))

(declare-fun m!6329892 () Bool)

(assert (=> b!5292427 m!6329892))

(declare-fun m!6329894 () Bool)

(assert (=> b!5292427 m!6329894))

(declare-fun m!6329896 () Bool)

(assert (=> b!5292427 m!6329896))

(declare-fun m!6329898 () Bool)

(assert (=> b!5292435 m!6329898))

(declare-fun m!6329900 () Bool)

(assert (=> b!5292449 m!6329900))

(declare-fun m!6329902 () Bool)

(assert (=> b!5292449 m!6329902))

(declare-fun m!6329904 () Bool)

(assert (=> b!5292460 m!6329904))

(declare-fun m!6329906 () Bool)

(assert (=> b!5292432 m!6329906))

(declare-fun m!6329908 () Bool)

(assert (=> b!5292432 m!6329908))

(declare-fun m!6329910 () Bool)

(assert (=> b!5292432 m!6329910))

(declare-fun m!6329912 () Bool)

(assert (=> b!5292447 m!6329912))

(declare-fun m!6329914 () Bool)

(assert (=> b!5292447 m!6329914))

(declare-fun m!6329916 () Bool)

(assert (=> b!5292447 m!6329916))

(declare-fun m!6329918 () Bool)

(assert (=> setNonEmpty!33971 m!6329918))

(declare-fun m!6329920 () Bool)

(assert (=> b!5292434 m!6329920))

(declare-fun m!6329922 () Bool)

(assert (=> b!5292434 m!6329922))

(declare-fun m!6329924 () Bool)

(assert (=> b!5292428 m!6329924))

(declare-fun m!6329926 () Bool)

(assert (=> b!5292428 m!6329926))

(declare-fun m!6329928 () Bool)

(assert (=> b!5292428 m!6329928))

(declare-fun m!6329930 () Bool)

(assert (=> b!5292428 m!6329930))

(declare-fun m!6329932 () Bool)

(assert (=> b!5292428 m!6329932))

(declare-fun m!6329934 () Bool)

(assert (=> b!5292428 m!6329934))

(declare-fun m!6329936 () Bool)

(assert (=> b!5292428 m!6329936))

(declare-fun m!6329938 () Bool)

(assert (=> b!5292433 m!6329938))

(declare-fun m!6329940 () Bool)

(assert (=> b!5292441 m!6329940))

(declare-fun m!6329942 () Bool)

(assert (=> b!5292444 m!6329942))

(declare-fun m!6329944 () Bool)

(assert (=> b!5292443 m!6329944))

(declare-fun m!6329946 () Bool)

(assert (=> b!5292443 m!6329946))

(declare-fun m!6329948 () Bool)

(assert (=> b!5292443 m!6329948))

(declare-fun m!6329950 () Bool)

(assert (=> b!5292443 m!6329950))

(declare-fun m!6329952 () Bool)

(assert (=> b!5292443 m!6329952))

(declare-fun m!6329954 () Bool)

(assert (=> b!5292443 m!6329954))

(assert (=> b!5292443 m!6329886))

(declare-fun m!6329956 () Bool)

(assert (=> b!5292445 m!6329956))

(declare-fun m!6329958 () Bool)

(assert (=> b!5292445 m!6329958))

(declare-fun m!6329960 () Bool)

(assert (=> b!5292437 m!6329960))

(assert (=> b!5292437 m!6329960))

(declare-fun m!6329962 () Bool)

(assert (=> b!5292437 m!6329962))

(declare-fun m!6329964 () Bool)

(assert (=> b!5292440 m!6329964))

(declare-fun m!6329966 () Bool)

(assert (=> start!558546 m!6329966))

(declare-fun m!6329968 () Bool)

(assert (=> b!5292436 m!6329968))

(assert (=> b!5292458 m!6329914))

(declare-fun m!6329970 () Bool)

(assert (=> b!5292458 m!6329970))

(declare-fun m!6329972 () Bool)

(assert (=> b!5292458 m!6329972))

(declare-fun m!6329974 () Bool)

(assert (=> b!5292458 m!6329974))

(declare-fun m!6329976 () Bool)

(assert (=> b!5292456 m!6329976))

(declare-fun m!6329978 () Bool)

(assert (=> b!5292453 m!6329978))

(declare-fun m!6329980 () Bool)

(assert (=> b!5292448 m!6329980))

(declare-fun m!6329982 () Bool)

(assert (=> b!5292448 m!6329982))

(declare-fun m!6329984 () Bool)

(assert (=> b!5292448 m!6329984))

(declare-fun m!6329986 () Bool)

(assert (=> b!5292448 m!6329986))

(declare-fun m!6329988 () Bool)

(assert (=> b!5292448 m!6329988))

(assert (=> b!5292448 m!6329980))

(assert (=> b!5292448 m!6329982))

(declare-fun m!6329990 () Bool)

(assert (=> b!5292448 m!6329990))

(check-sat (not b!5292450) (not b!5292447) (not b!5292449) tp_is_empty!39107 (not b!5292446) (not b!5292439) (not b!5292433) (not b!5292452) (not b!5292432) (not b!5292458) (not b!5292441) (not b!5292436) (not b!5292443) (not start!558546) (not b!5292445) (not b!5292431) (not b!5292460) (not b!5292451) (not b!5292442) (not b!5292437) (not setNonEmpty!33971) (not b!5292435) (not b!5292461) (not b!5292426) (not b!5292448) (not b!5292428) (not b!5292456) (not b!5292434) (not b!5292444) (not b!5292438) (not b!5292454) (not b!5292440) (not b!5292427) (not b!5292453))
(check-sat)
