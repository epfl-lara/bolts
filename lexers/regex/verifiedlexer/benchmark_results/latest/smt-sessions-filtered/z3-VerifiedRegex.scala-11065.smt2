; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573550 () Bool)

(assert start!573550)

(declare-fun b!5484021 () Bool)

(assert (=> b!5484021 true))

(assert (=> b!5484021 true))

(declare-fun lambda!293007 () Int)

(declare-fun lambda!293006 () Int)

(assert (=> b!5484021 (not (= lambda!293007 lambda!293006))))

(assert (=> b!5484021 true))

(assert (=> b!5484021 true))

(declare-fun lambda!293008 () Int)

(assert (=> b!5484021 (not (= lambda!293008 lambda!293006))))

(assert (=> b!5484021 (not (= lambda!293008 lambda!293007))))

(assert (=> b!5484021 true))

(assert (=> b!5484021 true))

(declare-fun b!5484004 () Bool)

(assert (=> b!5484004 true))

(declare-fun b!5484009 () Bool)

(assert (=> b!5484009 true))

(declare-fun b!5484000 () Bool)

(declare-fun e!3393738 () Bool)

(declare-fun e!3393747 () Bool)

(assert (=> b!5484000 (= e!3393738 e!3393747)))

(declare-fun res!2338272 () Bool)

(assert (=> b!5484000 (=> res!2338272 e!3393747)))

(declare-datatypes ((C!31024 0))(
  ( (C!31025 (val!25214 Int)) )
))
(declare-datatypes ((Regex!15377 0))(
  ( (ElementMatch!15377 (c!958245 C!31024)) (Concat!24222 (regOne!31266 Regex!15377) (regTwo!31266 Regex!15377)) (EmptyExpr!15377) (Star!15377 (reg!15706 Regex!15377)) (EmptyLang!15377) (Union!15377 (regOne!31267 Regex!15377) (regTwo!31267 Regex!15377)) )
))
(declare-datatypes ((List!62430 0))(
  ( (Nil!62306) (Cons!62306 (h!68754 Regex!15377) (t!375661 List!62430)) )
))
(declare-datatypes ((Context!9522 0))(
  ( (Context!9523 (exprs!5261 List!62430)) )
))
(declare-datatypes ((List!62431 0))(
  ( (Nil!62307) (Cons!62307 (h!68755 Context!9522) (t!375662 List!62431)) )
))
(declare-fun lt!2239895 () List!62431)

(declare-fun r!7292 () Regex!15377)

(declare-fun unfocusZipper!1119 (List!62431) Regex!15377)

(assert (=> b!5484000 (= res!2338272 (not (= (unfocusZipper!1119 lt!2239895) r!7292)))))

(declare-fun lt!2239911 () Context!9522)

(assert (=> b!5484000 (= lt!2239895 (Cons!62307 lt!2239911 Nil!62307))))

(declare-fun b!5484001 () Bool)

(declare-fun e!3393749 () Bool)

(declare-fun e!3393742 () Bool)

(assert (=> b!5484001 (= e!3393749 e!3393742)))

(declare-fun res!2338271 () Bool)

(assert (=> b!5484001 (=> res!2338271 e!3393742)))

(declare-datatypes ((List!62432 0))(
  ( (Nil!62308) (Cons!62308 (h!68756 C!31024) (t!375663 List!62432)) )
))
(declare-fun s!2326 () List!62432)

(declare-fun lt!2239914 () List!62432)

(assert (=> b!5484001 (= res!2338271 (not (= s!2326 lt!2239914)))))

(declare-datatypes ((tuple2!65148 0))(
  ( (tuple2!65149 (_1!35877 List!62432) (_2!35877 List!62432)) )
))
(declare-fun lt!2239920 () tuple2!65148)

(declare-fun ++!13727 (List!62432 List!62432) List!62432)

(assert (=> b!5484001 (= lt!2239914 (++!13727 (_1!35877 lt!2239920) (_2!35877 lt!2239920)))))

(declare-datatypes ((Option!15486 0))(
  ( (None!15485) (Some!15485 (v!51514 tuple2!65148)) )
))
(declare-fun lt!2239918 () Option!15486)

(declare-fun get!21490 (Option!15486) tuple2!65148)

(assert (=> b!5484001 (= lt!2239920 (get!21490 lt!2239918))))

(declare-fun isDefined!12189 (Option!15486) Bool)

(assert (=> b!5484001 (isDefined!12189 lt!2239918)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2239910 () (InoxSet Context!9522))

(declare-fun lt!2239903 () (InoxSet Context!9522))

(declare-fun findConcatSeparationZippers!104 ((InoxSet Context!9522) (InoxSet Context!9522) List!62432 List!62432 List!62432) Option!15486)

(assert (=> b!5484001 (= lt!2239918 (findConcatSeparationZippers!104 lt!2239903 lt!2239910 Nil!62308 s!2326 s!2326))))

(declare-datatypes ((Unit!155204 0))(
  ( (Unit!155205) )
))
(declare-fun lt!2239893 () Unit!155204)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!104 ((InoxSet Context!9522) Context!9522 List!62432) Unit!155204)

(assert (=> b!5484001 (= lt!2239893 (lemmaConcatZipperMatchesStringThenFindConcatDefined!104 lt!2239903 lt!2239911 s!2326))))

(declare-fun b!5484002 () Bool)

(declare-fun res!2338288 () Bool)

(declare-fun e!3393737 () Bool)

(assert (=> b!5484002 (=> res!2338288 e!3393737)))

(declare-fun zl!343 () List!62431)

(declare-fun generalisedUnion!1306 (List!62430) Regex!15377)

(declare-fun unfocusZipperList!819 (List!62431) List!62430)

(assert (=> b!5484002 (= res!2338288 (not (= r!7292 (generalisedUnion!1306 (unfocusZipperList!819 zl!343)))))))

(declare-fun b!5484003 () Bool)

(declare-fun e!3393741 () Bool)

(assert (=> b!5484003 (= e!3393747 e!3393741)))

(declare-fun res!2338287 () Bool)

(assert (=> b!5484003 (=> res!2338287 e!3393741)))

(declare-fun lt!2239902 () Bool)

(assert (=> b!5484003 (= res!2338287 lt!2239902)))

(declare-fun lt!2239915 () Regex!15377)

(declare-fun matchRSpec!2480 (Regex!15377 List!62432) Bool)

(assert (=> b!5484003 (= lt!2239902 (matchRSpec!2480 lt!2239915 s!2326))))

(declare-fun matchR!7562 (Regex!15377 List!62432) Bool)

(assert (=> b!5484003 (= lt!2239902 (matchR!7562 lt!2239915 s!2326))))

(declare-fun lt!2239916 () Unit!155204)

(declare-fun mainMatchTheorem!2480 (Regex!15377 List!62432) Unit!155204)

(assert (=> b!5484003 (= lt!2239916 (mainMatchTheorem!2480 lt!2239915 s!2326))))

(declare-fun e!3393752 () Bool)

(declare-fun e!3393739 () Bool)

(assert (=> b!5484004 (= e!3393752 e!3393739)))

(declare-fun res!2338279 () Bool)

(assert (=> b!5484004 (=> res!2338279 e!3393739)))

(declare-fun lt!2239892 () (InoxSet Context!9522))

(declare-fun lt!2239925 () (InoxSet Context!9522))

(assert (=> b!5484004 (= res!2338279 (not (= lt!2239892 lt!2239925)))))

(declare-fun z!1189 () (InoxSet Context!9522))

(declare-fun lambda!293009 () Int)

(declare-fun flatMap!1080 ((InoxSet Context!9522) Int) (InoxSet Context!9522))

(declare-fun derivationStepZipperUp!729 (Context!9522 C!31024) (InoxSet Context!9522))

(assert (=> b!5484004 (= (flatMap!1080 z!1189 lambda!293009) (derivationStepZipperUp!729 (h!68755 zl!343) (h!68756 s!2326)))))

(declare-fun lt!2239908 () Unit!155204)

(declare-fun lemmaFlatMapOnSingletonSet!612 ((InoxSet Context!9522) Context!9522 Int) Unit!155204)

(assert (=> b!5484004 (= lt!2239908 (lemmaFlatMapOnSingletonSet!612 z!1189 (h!68755 zl!343) lambda!293009))))

(declare-fun b!5484005 () Bool)

(declare-fun e!3393755 () Bool)

(assert (=> b!5484005 (= e!3393755 e!3393752)))

(declare-fun res!2338277 () Bool)

(assert (=> b!5484005 (=> res!2338277 e!3393752)))

(declare-fun lt!2239928 () (InoxSet Context!9522))

(assert (=> b!5484005 (= res!2338277 (not (= lt!2239928 lt!2239925)))))

(declare-fun derivationStepZipperDown!803 (Regex!15377 Context!9522 C!31024) (InoxSet Context!9522))

(assert (=> b!5484005 (= lt!2239925 (derivationStepZipperDown!803 r!7292 (Context!9523 Nil!62306) (h!68756 s!2326)))))

(assert (=> b!5484005 (= lt!2239928 (derivationStepZipperUp!729 (Context!9523 (Cons!62306 r!7292 Nil!62306)) (h!68756 s!2326)))))

(declare-fun derivationStepZipper!1572 ((InoxSet Context!9522) C!31024) (InoxSet Context!9522))

(assert (=> b!5484005 (= lt!2239892 (derivationStepZipper!1572 z!1189 (h!68756 s!2326)))))

(declare-fun setIsEmpty!36087 () Bool)

(declare-fun setRes!36087 () Bool)

(assert (=> setIsEmpty!36087 setRes!36087))

(declare-fun b!5484006 () Bool)

(declare-fun res!2338268 () Bool)

(assert (=> b!5484006 (=> res!2338268 e!3393737)))

(get-info :version)

(assert (=> b!5484006 (= res!2338268 (or ((_ is EmptyExpr!15377) r!7292) ((_ is EmptyLang!15377) r!7292) ((_ is ElementMatch!15377) r!7292) ((_ is Union!15377) r!7292) ((_ is Concat!24222) r!7292)))))

(declare-fun b!5484007 () Bool)

(declare-fun res!2338283 () Bool)

(assert (=> b!5484007 (=> res!2338283 e!3393737)))

(declare-fun generalisedConcat!1046 (List!62430) Regex!15377)

(assert (=> b!5484007 (= res!2338283 (not (= r!7292 (generalisedConcat!1046 (exprs!5261 (h!68755 zl!343))))))))

(declare-fun b!5484008 () Bool)

(declare-fun res!2338264 () Bool)

(declare-fun e!3393743 () Bool)

(assert (=> b!5484008 (=> (not res!2338264) (not e!3393743))))

(declare-fun toList!9161 ((InoxSet Context!9522)) List!62431)

(assert (=> b!5484008 (= res!2338264 (= (toList!9161 z!1189) zl!343))))

(assert (=> b!5484009 (= e!3393741 e!3393749)))

(declare-fun res!2338286 () Bool)

(assert (=> b!5484009 (=> res!2338286 e!3393749)))

(declare-fun lt!2239913 () (InoxSet Context!9522))

(declare-fun appendTo!96 ((InoxSet Context!9522) Context!9522) (InoxSet Context!9522))

(assert (=> b!5484009 (= res!2338286 (not (= (appendTo!96 lt!2239903 lt!2239911) lt!2239913)))))

(declare-fun lt!2239922 () List!62430)

(declare-fun lambda!293010 () Int)

(declare-fun lt!2239896 () List!62430)

(declare-fun map!14322 ((InoxSet Context!9522) Int) (InoxSet Context!9522))

(declare-fun ++!13728 (List!62430 List!62430) List!62430)

(assert (=> b!5484009 (= (map!14322 lt!2239903 lambda!293010) (store ((as const (Array Context!9522 Bool)) false) (Context!9523 (++!13728 lt!2239922 lt!2239896)) true))))

(declare-fun lambda!293011 () Int)

(declare-fun lt!2239919 () Unit!155204)

(declare-fun lemmaConcatPreservesForall!278 (List!62430 List!62430 Int) Unit!155204)

(assert (=> b!5484009 (= lt!2239919 (lemmaConcatPreservesForall!278 lt!2239922 lt!2239896 lambda!293011))))

(declare-fun lt!2239894 () Unit!155204)

(declare-fun lt!2239899 () Context!9522)

(declare-fun lemmaMapOnSingletonSet!108 ((InoxSet Context!9522) Context!9522 Int) Unit!155204)

(assert (=> b!5484009 (= lt!2239894 (lemmaMapOnSingletonSet!108 lt!2239903 lt!2239899 lambda!293010))))

(declare-fun b!5484010 () Bool)

(declare-fun validRegex!7113 (Regex!15377) Bool)

(assert (=> b!5484010 (= e!3393742 (validRegex!7113 r!7292))))

(assert (=> b!5484010 (matchR!7562 r!7292 (_2!35877 lt!2239920))))

(declare-fun lt!2239900 () Unit!155204)

(declare-fun theoremZipperRegexEquiv!585 ((InoxSet Context!9522) List!62431 Regex!15377 List!62432) Unit!155204)

(assert (=> b!5484010 (= lt!2239900 (theoremZipperRegexEquiv!585 lt!2239910 lt!2239895 r!7292 (_2!35877 lt!2239920)))))

(assert (=> b!5484010 (matchR!7562 (reg!15706 r!7292) (_1!35877 lt!2239920))))

(declare-fun lt!2239930 () Unit!155204)

(declare-fun lt!2239909 () List!62431)

(assert (=> b!5484010 (= lt!2239930 (theoremZipperRegexEquiv!585 lt!2239903 lt!2239909 (reg!15706 r!7292) (_1!35877 lt!2239920)))))

(declare-fun matchZipper!1595 ((InoxSet Context!9522) List!62432) Bool)

(assert (=> b!5484010 (matchZipper!1595 (store ((as const (Array Context!9522 Bool)) false) (Context!9523 (++!13728 lt!2239922 lt!2239896)) true) lt!2239914)))

(declare-fun lt!2239921 () Unit!155204)

(assert (=> b!5484010 (= lt!2239921 (lemmaConcatPreservesForall!278 lt!2239922 lt!2239896 lambda!293011))))

(declare-fun lt!2239912 () Unit!155204)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!118 (Context!9522 Context!9522 List!62432 List!62432) Unit!155204)

(assert (=> b!5484010 (= lt!2239912 (lemmaConcatenateContextMatchesConcatOfStrings!118 lt!2239899 lt!2239911 (_1!35877 lt!2239920) (_2!35877 lt!2239920)))))

(declare-fun b!5484011 () Bool)

(declare-fun e!3393748 () Bool)

(assert (=> b!5484011 (= e!3393748 e!3393738)))

(declare-fun res!2338269 () Bool)

(assert (=> b!5484011 (=> res!2338269 e!3393738)))

(assert (=> b!5484011 (= res!2338269 (not (= (unfocusZipper!1119 lt!2239909) (reg!15706 r!7292))))))

(assert (=> b!5484011 (= lt!2239909 (Cons!62307 lt!2239899 Nil!62307))))

(declare-fun b!5484013 () Bool)

(declare-fun res!2338276 () Bool)

(declare-fun e!3393753 () Bool)

(assert (=> b!5484013 (=> res!2338276 e!3393753)))

(assert (=> b!5484013 (= res!2338276 (not (= (matchZipper!1595 lt!2239913 s!2326) (matchZipper!1595 (derivationStepZipper!1572 lt!2239913 (h!68756 s!2326)) (t!375663 s!2326)))))))

(declare-fun b!5484014 () Bool)

(declare-fun res!2338275 () Bool)

(assert (=> b!5484014 (=> res!2338275 e!3393742)))

(assert (=> b!5484014 (= res!2338275 (not (matchZipper!1595 lt!2239903 (_1!35877 lt!2239920))))))

(declare-fun b!5484015 () Bool)

(declare-fun res!2338284 () Bool)

(assert (=> b!5484015 (=> res!2338284 e!3393741)))

(assert (=> b!5484015 (= res!2338284 (not (matchZipper!1595 z!1189 s!2326)))))

(declare-fun b!5484016 () Bool)

(declare-fun e!3393744 () Bool)

(assert (=> b!5484016 (= e!3393753 e!3393744)))

(declare-fun res!2338270 () Bool)

(assert (=> b!5484016 (=> res!2338270 e!3393744)))

(declare-fun lt!2239924 () Context!9522)

(assert (=> b!5484016 (= res!2338270 (not (= (unfocusZipper!1119 (Cons!62307 lt!2239924 Nil!62307)) lt!2239915)))))

(assert (=> b!5484016 (= lt!2239915 (Concat!24222 (reg!15706 r!7292) r!7292))))

(declare-fun b!5484017 () Bool)

(declare-fun res!2338285 () Bool)

(assert (=> b!5484017 (=> res!2338285 e!3393737)))

(declare-fun isEmpty!34254 (List!62431) Bool)

(assert (=> b!5484017 (= res!2338285 (not (isEmpty!34254 (t!375662 zl!343))))))

(declare-fun b!5484018 () Bool)

(declare-fun e!3393754 () Bool)

(declare-fun tp!1506804 () Bool)

(assert (=> b!5484018 (= e!3393754 tp!1506804)))

(declare-fun b!5484019 () Bool)

(declare-fun e!3393756 () Bool)

(declare-fun lt!2239931 () Bool)

(assert (=> b!5484019 (= e!3393756 lt!2239931)))

(declare-fun b!5484020 () Bool)

(declare-fun e!3393750 () Bool)

(declare-fun tp_is_empty!40007 () Bool)

(declare-fun tp!1506807 () Bool)

(assert (=> b!5484020 (= e!3393750 (and tp_is_empty!40007 tp!1506807))))

(assert (=> b!5484021 (= e!3393737 e!3393755)))

(declare-fun res!2338274 () Bool)

(assert (=> b!5484021 (=> res!2338274 e!3393755)))

(declare-fun lt!2239904 () Bool)

(assert (=> b!5484021 (= res!2338274 (not (= lt!2239904 e!3393756)))))

(declare-fun res!2338266 () Bool)

(assert (=> b!5484021 (=> res!2338266 e!3393756)))

(declare-fun isEmpty!34255 (List!62432) Bool)

(assert (=> b!5484021 (= res!2338266 (isEmpty!34255 s!2326))))

(declare-fun Exists!2556 (Int) Bool)

(assert (=> b!5484021 (= (Exists!2556 lambda!293006) (Exists!2556 lambda!293008))))

(declare-fun lt!2239905 () Unit!155204)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1206 (Regex!15377 Regex!15377 List!62432) Unit!155204)

(assert (=> b!5484021 (= lt!2239905 (lemmaExistCutMatchRandMatchRSpecEquivalent!1206 (reg!15706 r!7292) r!7292 s!2326))))

(assert (=> b!5484021 (= (Exists!2556 lambda!293006) (Exists!2556 lambda!293007))))

(declare-fun lt!2239923 () Unit!155204)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!530 (Regex!15377 List!62432) Unit!155204)

(assert (=> b!5484021 (= lt!2239923 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!530 (reg!15706 r!7292) s!2326))))

(assert (=> b!5484021 (= lt!2239931 (Exists!2556 lambda!293006))))

(declare-fun findConcatSeparation!1900 (Regex!15377 Regex!15377 List!62432 List!62432 List!62432) Option!15486)

(assert (=> b!5484021 (= lt!2239931 (isDefined!12189 (findConcatSeparation!1900 (reg!15706 r!7292) r!7292 Nil!62308 s!2326 s!2326)))))

(declare-fun lt!2239917 () Unit!155204)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1664 (Regex!15377 Regex!15377 List!62432) Unit!155204)

(assert (=> b!5484021 (= lt!2239917 (lemmaFindConcatSeparationEquivalentToExists!1664 (reg!15706 r!7292) r!7292 s!2326))))

(declare-fun b!5484022 () Bool)

(declare-fun e!3393745 () Bool)

(assert (=> b!5484022 (= e!3393743 e!3393745)))

(declare-fun res!2338265 () Bool)

(assert (=> b!5484022 (=> (not res!2338265) (not e!3393745))))

(declare-fun lt!2239927 () Regex!15377)

(assert (=> b!5484022 (= res!2338265 (= r!7292 lt!2239927))))

(assert (=> b!5484022 (= lt!2239927 (unfocusZipper!1119 zl!343))))

(declare-fun b!5484023 () Bool)

(assert (=> b!5484023 (= e!3393744 e!3393748)))

(declare-fun res!2338267 () Bool)

(assert (=> b!5484023 (=> res!2338267 e!3393748)))

(assert (=> b!5484023 (= res!2338267 (not (= lt!2239892 (derivationStepZipper!1572 lt!2239910 (h!68756 s!2326)))))))

(assert (=> b!5484023 (= (flatMap!1080 lt!2239910 lambda!293009) (derivationStepZipperUp!729 lt!2239911 (h!68756 s!2326)))))

(declare-fun lt!2239897 () Unit!155204)

(assert (=> b!5484023 (= lt!2239897 (lemmaFlatMapOnSingletonSet!612 lt!2239910 lt!2239911 lambda!293009))))

(assert (=> b!5484023 (= (flatMap!1080 lt!2239903 lambda!293009) (derivationStepZipperUp!729 lt!2239899 (h!68756 s!2326)))))

(declare-fun lt!2239926 () Unit!155204)

(assert (=> b!5484023 (= lt!2239926 (lemmaFlatMapOnSingletonSet!612 lt!2239903 lt!2239899 lambda!293009))))

(declare-fun lt!2239907 () (InoxSet Context!9522))

(assert (=> b!5484023 (= lt!2239907 (derivationStepZipperUp!729 lt!2239911 (h!68756 s!2326)))))

(declare-fun lt!2239906 () (InoxSet Context!9522))

(assert (=> b!5484023 (= lt!2239906 (derivationStepZipperUp!729 lt!2239899 (h!68756 s!2326)))))

(assert (=> b!5484023 (= lt!2239910 (store ((as const (Array Context!9522 Bool)) false) lt!2239911 true))))

(assert (=> b!5484023 (= lt!2239903 (store ((as const (Array Context!9522 Bool)) false) lt!2239899 true))))

(assert (=> b!5484023 (= lt!2239899 (Context!9523 lt!2239922))))

(assert (=> b!5484023 (= lt!2239922 (Cons!62306 (reg!15706 r!7292) Nil!62306))))

(declare-fun b!5484024 () Bool)

(assert (=> b!5484024 (= e!3393754 tp_is_empty!40007)))

(declare-fun b!5484025 () Bool)

(declare-fun e!3393751 () Bool)

(declare-fun tp!1506798 () Bool)

(assert (=> b!5484025 (= e!3393751 tp!1506798)))

(declare-fun b!5484026 () Bool)

(assert (=> b!5484026 (= e!3393739 e!3393753)))

(declare-fun res!2338262 () Bool)

(assert (=> b!5484026 (=> res!2338262 e!3393753)))

(assert (=> b!5484026 (= res!2338262 (not (= lt!2239892 (derivationStepZipperDown!803 (reg!15706 r!7292) lt!2239911 (h!68756 s!2326)))))))

(assert (=> b!5484026 (= lt!2239911 (Context!9523 lt!2239896))))

(assert (=> b!5484026 (= (flatMap!1080 lt!2239913 lambda!293009) (derivationStepZipperUp!729 lt!2239924 (h!68756 s!2326)))))

(declare-fun lt!2239901 () Unit!155204)

(assert (=> b!5484026 (= lt!2239901 (lemmaFlatMapOnSingletonSet!612 lt!2239913 lt!2239924 lambda!293009))))

(declare-fun lt!2239929 () (InoxSet Context!9522))

(assert (=> b!5484026 (= lt!2239929 (derivationStepZipperUp!729 lt!2239924 (h!68756 s!2326)))))

(assert (=> b!5484026 (= lt!2239913 (store ((as const (Array Context!9522 Bool)) false) lt!2239924 true))))

(assert (=> b!5484026 (= lt!2239924 (Context!9523 (Cons!62306 (reg!15706 r!7292) lt!2239896)))))

(assert (=> b!5484026 (= lt!2239896 (Cons!62306 r!7292 Nil!62306))))

(declare-fun b!5484027 () Bool)

(declare-fun tp!1506802 () Bool)

(declare-fun tp!1506806 () Bool)

(assert (=> b!5484027 (= e!3393754 (and tp!1506802 tp!1506806))))

(declare-fun b!5484028 () Bool)

(declare-fun res!2338278 () Bool)

(assert (=> b!5484028 (=> res!2338278 e!3393742)))

(assert (=> b!5484028 (= res!2338278 (not (matchZipper!1595 lt!2239910 (_2!35877 lt!2239920))))))

(declare-fun b!5484029 () Bool)

(declare-fun res!2338280 () Bool)

(assert (=> b!5484029 (=> res!2338280 e!3393737)))

(assert (=> b!5484029 (= res!2338280 (not ((_ is Cons!62306) (exprs!5261 (h!68755 zl!343)))))))

(declare-fun b!5484012 () Bool)

(declare-fun e!3393740 () Bool)

(declare-fun tp!1506803 () Bool)

(assert (=> b!5484012 (= e!3393740 tp!1506803)))

(declare-fun res!2338263 () Bool)

(assert (=> start!573550 (=> (not res!2338263) (not e!3393743))))

(assert (=> start!573550 (= res!2338263 (validRegex!7113 r!7292))))

(assert (=> start!573550 e!3393743))

(assert (=> start!573550 e!3393754))

(declare-fun condSetEmpty!36087 () Bool)

(assert (=> start!573550 (= condSetEmpty!36087 (= z!1189 ((as const (Array Context!9522 Bool)) false)))))

(assert (=> start!573550 setRes!36087))

(declare-fun e!3393746 () Bool)

(assert (=> start!573550 e!3393746))

(assert (=> start!573550 e!3393750))

(declare-fun b!5484030 () Bool)

(assert (=> b!5484030 (= e!3393745 (not e!3393737))))

(declare-fun res!2338273 () Bool)

(assert (=> b!5484030 (=> res!2338273 e!3393737)))

(assert (=> b!5484030 (= res!2338273 (not ((_ is Cons!62307) zl!343)))))

(assert (=> b!5484030 (= lt!2239904 (matchRSpec!2480 r!7292 s!2326))))

(assert (=> b!5484030 (= lt!2239904 (matchR!7562 r!7292 s!2326))))

(declare-fun lt!2239898 () Unit!155204)

(assert (=> b!5484030 (= lt!2239898 (mainMatchTheorem!2480 r!7292 s!2326))))

(declare-fun b!5484031 () Bool)

(declare-fun res!2338281 () Bool)

(assert (=> b!5484031 (=> res!2338281 e!3393755)))

(assert (=> b!5484031 (= res!2338281 ((_ is Nil!62308) s!2326))))

(declare-fun b!5484032 () Bool)

(declare-fun tp!1506805 () Bool)

(declare-fun tp!1506800 () Bool)

(assert (=> b!5484032 (= e!3393754 (and tp!1506805 tp!1506800))))

(declare-fun setElem!36087 () Context!9522)

(declare-fun setNonEmpty!36087 () Bool)

(declare-fun tp!1506801 () Bool)

(declare-fun inv!81689 (Context!9522) Bool)

(assert (=> setNonEmpty!36087 (= setRes!36087 (and tp!1506801 (inv!81689 setElem!36087) e!3393751))))

(declare-fun setRest!36087 () (InoxSet Context!9522))

(assert (=> setNonEmpty!36087 (= z!1189 ((_ map or) (store ((as const (Array Context!9522 Bool)) false) setElem!36087 true) setRest!36087))))

(declare-fun b!5484033 () Bool)

(declare-fun tp!1506799 () Bool)

(assert (=> b!5484033 (= e!3393746 (and (inv!81689 (h!68755 zl!343)) e!3393740 tp!1506799))))

(declare-fun b!5484034 () Bool)

(declare-fun res!2338282 () Bool)

(assert (=> b!5484034 (=> res!2338282 e!3393753)))

(assert (=> b!5484034 (= res!2338282 (or (not (= lt!2239927 r!7292)) (not (= r!7292 r!7292))))))

(assert (= (and start!573550 res!2338263) b!5484008))

(assert (= (and b!5484008 res!2338264) b!5484022))

(assert (= (and b!5484022 res!2338265) b!5484030))

(assert (= (and b!5484030 (not res!2338273)) b!5484017))

(assert (= (and b!5484017 (not res!2338285)) b!5484007))

(assert (= (and b!5484007 (not res!2338283)) b!5484029))

(assert (= (and b!5484029 (not res!2338280)) b!5484002))

(assert (= (and b!5484002 (not res!2338288)) b!5484006))

(assert (= (and b!5484006 (not res!2338268)) b!5484021))

(assert (= (and b!5484021 (not res!2338266)) b!5484019))

(assert (= (and b!5484021 (not res!2338274)) b!5484031))

(assert (= (and b!5484031 (not res!2338281)) b!5484005))

(assert (= (and b!5484005 (not res!2338277)) b!5484004))

(assert (= (and b!5484004 (not res!2338279)) b!5484026))

(assert (= (and b!5484026 (not res!2338262)) b!5484013))

(assert (= (and b!5484013 (not res!2338276)) b!5484034))

(assert (= (and b!5484034 (not res!2338282)) b!5484016))

(assert (= (and b!5484016 (not res!2338270)) b!5484023))

(assert (= (and b!5484023 (not res!2338267)) b!5484011))

(assert (= (and b!5484011 (not res!2338269)) b!5484000))

(assert (= (and b!5484000 (not res!2338272)) b!5484003))

(assert (= (and b!5484003 (not res!2338287)) b!5484015))

(assert (= (and b!5484015 (not res!2338284)) b!5484009))

(assert (= (and b!5484009 (not res!2338286)) b!5484001))

(assert (= (and b!5484001 (not res!2338271)) b!5484014))

(assert (= (and b!5484014 (not res!2338275)) b!5484028))

(assert (= (and b!5484028 (not res!2338278)) b!5484010))

(assert (= (and start!573550 ((_ is ElementMatch!15377) r!7292)) b!5484024))

(assert (= (and start!573550 ((_ is Concat!24222) r!7292)) b!5484027))

(assert (= (and start!573550 ((_ is Star!15377) r!7292)) b!5484018))

(assert (= (and start!573550 ((_ is Union!15377) r!7292)) b!5484032))

(assert (= (and start!573550 condSetEmpty!36087) setIsEmpty!36087))

(assert (= (and start!573550 (not condSetEmpty!36087)) setNonEmpty!36087))

(assert (= setNonEmpty!36087 b!5484025))

(assert (= b!5484033 b!5484012))

(assert (= (and start!573550 ((_ is Cons!62307) zl!343)) b!5484033))

(assert (= (and start!573550 ((_ is Cons!62308) s!2326)) b!5484020))

(declare-fun m!6499448 () Bool)

(assert (=> b!5484030 m!6499448))

(declare-fun m!6499450 () Bool)

(assert (=> b!5484030 m!6499450))

(declare-fun m!6499452 () Bool)

(assert (=> b!5484030 m!6499452))

(declare-fun m!6499454 () Bool)

(assert (=> b!5484005 m!6499454))

(declare-fun m!6499456 () Bool)

(assert (=> b!5484005 m!6499456))

(declare-fun m!6499458 () Bool)

(assert (=> b!5484005 m!6499458))

(declare-fun m!6499460 () Bool)

(assert (=> b!5484013 m!6499460))

(declare-fun m!6499462 () Bool)

(assert (=> b!5484013 m!6499462))

(assert (=> b!5484013 m!6499462))

(declare-fun m!6499464 () Bool)

(assert (=> b!5484013 m!6499464))

(declare-fun m!6499466 () Bool)

(assert (=> start!573550 m!6499466))

(declare-fun m!6499468 () Bool)

(assert (=> b!5484021 m!6499468))

(declare-fun m!6499470 () Bool)

(assert (=> b!5484021 m!6499470))

(declare-fun m!6499472 () Bool)

(assert (=> b!5484021 m!6499472))

(declare-fun m!6499474 () Bool)

(assert (=> b!5484021 m!6499474))

(declare-fun m!6499476 () Bool)

(assert (=> b!5484021 m!6499476))

(declare-fun m!6499478 () Bool)

(assert (=> b!5484021 m!6499478))

(declare-fun m!6499480 () Bool)

(assert (=> b!5484021 m!6499480))

(assert (=> b!5484021 m!6499480))

(declare-fun m!6499482 () Bool)

(assert (=> b!5484021 m!6499482))

(declare-fun m!6499484 () Bool)

(assert (=> b!5484021 m!6499484))

(assert (=> b!5484021 m!6499472))

(assert (=> b!5484021 m!6499472))

(declare-fun m!6499486 () Bool)

(assert (=> b!5484014 m!6499486))

(declare-fun m!6499488 () Bool)

(assert (=> b!5484026 m!6499488))

(declare-fun m!6499490 () Bool)

(assert (=> b!5484026 m!6499490))

(declare-fun m!6499492 () Bool)

(assert (=> b!5484026 m!6499492))

(declare-fun m!6499494 () Bool)

(assert (=> b!5484026 m!6499494))

(declare-fun m!6499496 () Bool)

(assert (=> b!5484026 m!6499496))

(declare-fun m!6499498 () Bool)

(assert (=> b!5484003 m!6499498))

(declare-fun m!6499500 () Bool)

(assert (=> b!5484003 m!6499500))

(declare-fun m!6499502 () Bool)

(assert (=> b!5484003 m!6499502))

(declare-fun m!6499504 () Bool)

(assert (=> b!5484017 m!6499504))

(declare-fun m!6499506 () Bool)

(assert (=> b!5484001 m!6499506))

(declare-fun m!6499508 () Bool)

(assert (=> b!5484001 m!6499508))

(declare-fun m!6499510 () Bool)

(assert (=> b!5484001 m!6499510))

(declare-fun m!6499512 () Bool)

(assert (=> b!5484001 m!6499512))

(declare-fun m!6499514 () Bool)

(assert (=> b!5484001 m!6499514))

(declare-fun m!6499516 () Bool)

(assert (=> b!5484022 m!6499516))

(declare-fun m!6499518 () Bool)

(assert (=> b!5484004 m!6499518))

(declare-fun m!6499520 () Bool)

(assert (=> b!5484004 m!6499520))

(declare-fun m!6499522 () Bool)

(assert (=> b!5484004 m!6499522))

(declare-fun m!6499524 () Bool)

(assert (=> b!5484011 m!6499524))

(declare-fun m!6499526 () Bool)

(assert (=> b!5484010 m!6499526))

(declare-fun m!6499528 () Bool)

(assert (=> b!5484010 m!6499528))

(declare-fun m!6499530 () Bool)

(assert (=> b!5484010 m!6499530))

(declare-fun m!6499532 () Bool)

(assert (=> b!5484010 m!6499532))

(declare-fun m!6499534 () Bool)

(assert (=> b!5484010 m!6499534))

(declare-fun m!6499536 () Bool)

(assert (=> b!5484010 m!6499536))

(declare-fun m!6499538 () Bool)

(assert (=> b!5484010 m!6499538))

(assert (=> b!5484010 m!6499536))

(declare-fun m!6499540 () Bool)

(assert (=> b!5484010 m!6499540))

(assert (=> b!5484010 m!6499466))

(declare-fun m!6499542 () Bool)

(assert (=> b!5484010 m!6499542))

(declare-fun m!6499544 () Bool)

(assert (=> b!5484016 m!6499544))

(declare-fun m!6499546 () Bool)

(assert (=> b!5484008 m!6499546))

(declare-fun m!6499548 () Bool)

(assert (=> b!5484028 m!6499548))

(declare-fun m!6499550 () Bool)

(assert (=> b!5484033 m!6499550))

(declare-fun m!6499552 () Bool)

(assert (=> b!5484002 m!6499552))

(assert (=> b!5484002 m!6499552))

(declare-fun m!6499554 () Bool)

(assert (=> b!5484002 m!6499554))

(declare-fun m!6499556 () Bool)

(assert (=> b!5484023 m!6499556))

(declare-fun m!6499558 () Bool)

(assert (=> b!5484023 m!6499558))

(declare-fun m!6499560 () Bool)

(assert (=> b!5484023 m!6499560))

(declare-fun m!6499562 () Bool)

(assert (=> b!5484023 m!6499562))

(declare-fun m!6499564 () Bool)

(assert (=> b!5484023 m!6499564))

(declare-fun m!6499566 () Bool)

(assert (=> b!5484023 m!6499566))

(declare-fun m!6499568 () Bool)

(assert (=> b!5484023 m!6499568))

(declare-fun m!6499570 () Bool)

(assert (=> b!5484023 m!6499570))

(declare-fun m!6499572 () Bool)

(assert (=> b!5484023 m!6499572))

(declare-fun m!6499574 () Bool)

(assert (=> setNonEmpty!36087 m!6499574))

(declare-fun m!6499576 () Bool)

(assert (=> b!5484007 m!6499576))

(declare-fun m!6499578 () Bool)

(assert (=> b!5484015 m!6499578))

(declare-fun m!6499580 () Bool)

(assert (=> b!5484000 m!6499580))

(declare-fun m!6499582 () Bool)

(assert (=> b!5484009 m!6499582))

(assert (=> b!5484009 m!6499532))

(declare-fun m!6499584 () Bool)

(assert (=> b!5484009 m!6499584))

(declare-fun m!6499586 () Bool)

(assert (=> b!5484009 m!6499586))

(assert (=> b!5484009 m!6499536))

(assert (=> b!5484009 m!6499530))

(check-sat (not b!5484028) (not b!5484001) (not b!5484011) (not b!5484007) (not b!5484020) (not b!5484000) (not b!5484010) (not b!5484022) (not b!5484002) (not b!5484032) (not b!5484015) (not b!5484016) (not b!5484014) (not b!5484027) (not b!5484009) (not b!5484012) (not b!5484025) (not b!5484023) (not b!5484030) (not b!5484004) tp_is_empty!40007 (not b!5484033) (not setNonEmpty!36087) (not b!5484013) (not start!573550) (not b!5484005) (not b!5484026) (not b!5484003) (not b!5484008) (not b!5484017) (not b!5484021) (not b!5484018))
(check-sat)
