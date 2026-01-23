; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573554 () Bool)

(assert start!573554)

(declare-fun b!5484281 () Bool)

(assert (=> b!5484281 true))

(assert (=> b!5484281 true))

(declare-fun lambda!293071 () Int)

(declare-fun lambda!293070 () Int)

(assert (=> b!5484281 (not (= lambda!293071 lambda!293070))))

(assert (=> b!5484281 true))

(assert (=> b!5484281 true))

(declare-fun lambda!293072 () Int)

(assert (=> b!5484281 (not (= lambda!293072 lambda!293070))))

(assert (=> b!5484281 (not (= lambda!293072 lambda!293071))))

(assert (=> b!5484281 true))

(assert (=> b!5484281 true))

(declare-fun b!5484272 () Bool)

(assert (=> b!5484272 true))

(declare-fun b!5484270 () Bool)

(assert (=> b!5484270 true))

(declare-fun e!3393885 () Bool)

(declare-fun e!3393883 () Bool)

(assert (=> b!5484270 (= e!3393885 e!3393883)))

(declare-fun res!2338468 () Bool)

(assert (=> b!5484270 (=> res!2338468 e!3393883)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31028 0))(
  ( (C!31029 (val!25216 Int)) )
))
(declare-datatypes ((Regex!15379 0))(
  ( (ElementMatch!15379 (c!958269 C!31028)) (Concat!24224 (regOne!31270 Regex!15379) (regTwo!31270 Regex!15379)) (EmptyExpr!15379) (Star!15379 (reg!15708 Regex!15379)) (EmptyLang!15379) (Union!15379 (regOne!31271 Regex!15379) (regTwo!31271 Regex!15379)) )
))
(declare-datatypes ((List!62436 0))(
  ( (Nil!62312) (Cons!62312 (h!68760 Regex!15379) (t!375667 List!62436)) )
))
(declare-datatypes ((Context!9526 0))(
  ( (Context!9527 (exprs!5263 List!62436)) )
))
(declare-fun lt!2240162 () (InoxSet Context!9526))

(declare-fun lt!2240149 () Context!9526)

(declare-fun lt!2240136 () (InoxSet Context!9526))

(declare-fun appendTo!98 ((InoxSet Context!9526) Context!9526) (InoxSet Context!9526))

(assert (=> b!5484270 (= res!2338468 (not (= (appendTo!98 lt!2240162 lt!2240149) lt!2240136)))))

(declare-fun lt!2240158 () List!62436)

(declare-fun lt!2240169 () List!62436)

(declare-fun lambda!293074 () Int)

(declare-fun map!14325 ((InoxSet Context!9526) Int) (InoxSet Context!9526))

(declare-fun ++!13731 (List!62436 List!62436) List!62436)

(assert (=> b!5484270 (= (map!14325 lt!2240162 lambda!293074) (store ((as const (Array Context!9526 Bool)) false) (Context!9527 (++!13731 lt!2240169 lt!2240158)) true))))

(declare-datatypes ((Unit!155208 0))(
  ( (Unit!155209) )
))
(declare-fun lt!2240175 () Unit!155208)

(declare-fun lambda!293075 () Int)

(declare-fun lemmaConcatPreservesForall!280 (List!62436 List!62436 Int) Unit!155208)

(assert (=> b!5484270 (= lt!2240175 (lemmaConcatPreservesForall!280 lt!2240169 lt!2240158 lambda!293075))))

(declare-fun lt!2240150 () Context!9526)

(declare-fun lt!2240140 () Unit!155208)

(declare-fun lemmaMapOnSingletonSet!110 ((InoxSet Context!9526) Context!9526 Int) Unit!155208)

(assert (=> b!5484270 (= lt!2240140 (lemmaMapOnSingletonSet!110 lt!2240162 lt!2240150 lambda!293074))))

(declare-fun b!5484271 () Bool)

(declare-fun e!3393880 () Bool)

(assert (=> b!5484271 (= e!3393880 e!3393885)))

(declare-fun res!2338494 () Bool)

(assert (=> b!5484271 (=> res!2338494 e!3393885)))

(declare-fun lt!2240153 () Bool)

(assert (=> b!5484271 (= res!2338494 lt!2240153)))

(declare-fun lt!2240146 () Regex!15379)

(declare-datatypes ((List!62437 0))(
  ( (Nil!62313) (Cons!62313 (h!68761 C!31028) (t!375668 List!62437)) )
))
(declare-fun s!2326 () List!62437)

(declare-fun matchRSpec!2482 (Regex!15379 List!62437) Bool)

(assert (=> b!5484271 (= lt!2240153 (matchRSpec!2482 lt!2240146 s!2326))))

(declare-fun matchR!7564 (Regex!15379 List!62437) Bool)

(assert (=> b!5484271 (= lt!2240153 (matchR!7564 lt!2240146 s!2326))))

(declare-fun lt!2240171 () Unit!155208)

(declare-fun mainMatchTheorem!2482 (Regex!15379 List!62437) Unit!155208)

(assert (=> b!5484271 (= lt!2240171 (mainMatchTheorem!2482 lt!2240146 s!2326))))

(declare-fun e!3393877 () Bool)

(declare-fun e!3393893 () Bool)

(assert (=> b!5484272 (= e!3393877 e!3393893)))

(declare-fun res!2338486 () Bool)

(assert (=> b!5484272 (=> res!2338486 e!3393893)))

(declare-fun lt!2240152 () (InoxSet Context!9526))

(declare-fun lt!2240173 () (InoxSet Context!9526))

(assert (=> b!5484272 (= res!2338486 (not (= lt!2240152 lt!2240173)))))

(declare-fun z!1189 () (InoxSet Context!9526))

(declare-fun lambda!293073 () Int)

(declare-datatypes ((List!62438 0))(
  ( (Nil!62314) (Cons!62314 (h!68762 Context!9526) (t!375669 List!62438)) )
))
(declare-fun zl!343 () List!62438)

(declare-fun flatMap!1082 ((InoxSet Context!9526) Int) (InoxSet Context!9526))

(declare-fun derivationStepZipperUp!731 (Context!9526 C!31028) (InoxSet Context!9526))

(assert (=> b!5484272 (= (flatMap!1082 z!1189 lambda!293073) (derivationStepZipperUp!731 (h!68762 zl!343) (h!68761 s!2326)))))

(declare-fun lt!2240151 () Unit!155208)

(declare-fun lemmaFlatMapOnSingletonSet!614 ((InoxSet Context!9526) Context!9526 Int) Unit!155208)

(assert (=> b!5484272 (= lt!2240151 (lemmaFlatMapOnSingletonSet!614 z!1189 (h!68762 zl!343) lambda!293073))))

(declare-fun b!5484273 () Bool)

(declare-fun e!3393889 () Bool)

(declare-fun e!3393884 () Bool)

(assert (=> b!5484273 (= e!3393889 e!3393884)))

(declare-fun res!2338493 () Bool)

(assert (=> b!5484273 (=> (not res!2338493) (not e!3393884))))

(declare-fun r!7292 () Regex!15379)

(declare-fun lt!2240168 () Regex!15379)

(assert (=> b!5484273 (= res!2338493 (= r!7292 lt!2240168))))

(declare-fun unfocusZipper!1121 (List!62438) Regex!15379)

(assert (=> b!5484273 (= lt!2240168 (unfocusZipper!1121 zl!343))))

(declare-fun setRes!36093 () Bool)

(declare-fun tp!1506860 () Bool)

(declare-fun setNonEmpty!36093 () Bool)

(declare-fun setElem!36093 () Context!9526)

(declare-fun e!3393896 () Bool)

(declare-fun inv!81694 (Context!9526) Bool)

(assert (=> setNonEmpty!36093 (= setRes!36093 (and tp!1506860 (inv!81694 setElem!36093) e!3393896))))

(declare-fun setRest!36093 () (InoxSet Context!9526))

(assert (=> setNonEmpty!36093 (= z!1189 ((_ map or) (store ((as const (Array Context!9526 Bool)) false) setElem!36093 true) setRest!36093))))

(declare-fun b!5484274 () Bool)

(declare-fun e!3393892 () Bool)

(assert (=> b!5484274 (= e!3393883 e!3393892)))

(declare-fun res!2338490 () Bool)

(assert (=> b!5484274 (=> res!2338490 e!3393892)))

(declare-fun lt!2240174 () List!62437)

(assert (=> b!5484274 (= res!2338490 (not (= s!2326 lt!2240174)))))

(declare-datatypes ((tuple2!65152 0))(
  ( (tuple2!65153 (_1!35879 List!62437) (_2!35879 List!62437)) )
))
(declare-fun lt!2240170 () tuple2!65152)

(declare-fun ++!13732 (List!62437 List!62437) List!62437)

(assert (=> b!5484274 (= lt!2240174 (++!13732 (_1!35879 lt!2240170) (_2!35879 lt!2240170)))))

(declare-datatypes ((Option!15488 0))(
  ( (None!15487) (Some!15487 (v!51516 tuple2!65152)) )
))
(declare-fun lt!2240163 () Option!15488)

(declare-fun get!21493 (Option!15488) tuple2!65152)

(assert (=> b!5484274 (= lt!2240170 (get!21493 lt!2240163))))

(declare-fun isDefined!12191 (Option!15488) Bool)

(assert (=> b!5484274 (isDefined!12191 lt!2240163)))

(declare-fun lt!2240145 () (InoxSet Context!9526))

(declare-fun findConcatSeparationZippers!106 ((InoxSet Context!9526) (InoxSet Context!9526) List!62437 List!62437 List!62437) Option!15488)

(assert (=> b!5484274 (= lt!2240163 (findConcatSeparationZippers!106 lt!2240162 lt!2240145 Nil!62313 s!2326 s!2326))))

(declare-fun lt!2240155 () Unit!155208)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!106 ((InoxSet Context!9526) Context!9526 List!62437) Unit!155208)

(assert (=> b!5484274 (= lt!2240155 (lemmaConcatZipperMatchesStringThenFindConcatDefined!106 lt!2240162 lt!2240149 s!2326))))

(declare-fun b!5484275 () Bool)

(declare-fun e!3393890 () Bool)

(assert (=> b!5484275 (= e!3393890 e!3393880)))

(declare-fun res!2338479 () Bool)

(assert (=> b!5484275 (=> res!2338479 e!3393880)))

(declare-fun lt!2240144 () List!62438)

(assert (=> b!5484275 (= res!2338479 (not (= (unfocusZipper!1121 lt!2240144) r!7292)))))

(assert (=> b!5484275 (= lt!2240144 (Cons!62314 lt!2240149 Nil!62314))))

(declare-fun b!5484276 () Bool)

(declare-fun e!3393891 () Bool)

(declare-fun e!3393878 () Bool)

(assert (=> b!5484276 (= e!3393891 e!3393878)))

(declare-fun res!2338488 () Bool)

(assert (=> b!5484276 (=> res!2338488 e!3393878)))

(declare-fun lt!2240164 () Context!9526)

(assert (=> b!5484276 (= res!2338488 (not (= (unfocusZipper!1121 (Cons!62314 lt!2240164 Nil!62314)) lt!2240146)))))

(assert (=> b!5484276 (= lt!2240146 (Concat!24224 (reg!15708 r!7292) r!7292))))

(declare-fun b!5484277 () Bool)

(assert (=> b!5484277 (= e!3393893 e!3393891)))

(declare-fun res!2338492 () Bool)

(assert (=> b!5484277 (=> res!2338492 e!3393891)))

(declare-fun derivationStepZipperDown!805 (Regex!15379 Context!9526 C!31028) (InoxSet Context!9526))

(assert (=> b!5484277 (= res!2338492 (not (= lt!2240152 (derivationStepZipperDown!805 (reg!15708 r!7292) lt!2240149 (h!68761 s!2326)))))))

(assert (=> b!5484277 (= lt!2240149 (Context!9527 lt!2240158))))

(assert (=> b!5484277 (= (flatMap!1082 lt!2240136 lambda!293073) (derivationStepZipperUp!731 lt!2240164 (h!68761 s!2326)))))

(declare-fun lt!2240154 () Unit!155208)

(assert (=> b!5484277 (= lt!2240154 (lemmaFlatMapOnSingletonSet!614 lt!2240136 lt!2240164 lambda!293073))))

(declare-fun lt!2240156 () (InoxSet Context!9526))

(assert (=> b!5484277 (= lt!2240156 (derivationStepZipperUp!731 lt!2240164 (h!68761 s!2326)))))

(assert (=> b!5484277 (= lt!2240136 (store ((as const (Array Context!9526 Bool)) false) lt!2240164 true))))

(assert (=> b!5484277 (= lt!2240164 (Context!9527 (Cons!62312 (reg!15708 r!7292) lt!2240158)))))

(assert (=> b!5484277 (= lt!2240158 (Cons!62312 r!7292 Nil!62312))))

(declare-fun b!5484278 () Bool)

(declare-fun e!3393879 () Bool)

(assert (=> b!5484278 (= e!3393878 e!3393879)))

(declare-fun res!2338484 () Bool)

(assert (=> b!5484278 (=> res!2338484 e!3393879)))

(declare-fun derivationStepZipper!1574 ((InoxSet Context!9526) C!31028) (InoxSet Context!9526))

(assert (=> b!5484278 (= res!2338484 (not (= lt!2240152 (derivationStepZipper!1574 lt!2240145 (h!68761 s!2326)))))))

(assert (=> b!5484278 (= (flatMap!1082 lt!2240145 lambda!293073) (derivationStepZipperUp!731 lt!2240149 (h!68761 s!2326)))))

(declare-fun lt!2240142 () Unit!155208)

(assert (=> b!5484278 (= lt!2240142 (lemmaFlatMapOnSingletonSet!614 lt!2240145 lt!2240149 lambda!293073))))

(assert (=> b!5484278 (= (flatMap!1082 lt!2240162 lambda!293073) (derivationStepZipperUp!731 lt!2240150 (h!68761 s!2326)))))

(declare-fun lt!2240137 () Unit!155208)

(assert (=> b!5484278 (= lt!2240137 (lemmaFlatMapOnSingletonSet!614 lt!2240162 lt!2240150 lambda!293073))))

(declare-fun lt!2240172 () (InoxSet Context!9526))

(assert (=> b!5484278 (= lt!2240172 (derivationStepZipperUp!731 lt!2240149 (h!68761 s!2326)))))

(declare-fun lt!2240165 () (InoxSet Context!9526))

(assert (=> b!5484278 (= lt!2240165 (derivationStepZipperUp!731 lt!2240150 (h!68761 s!2326)))))

(assert (=> b!5484278 (= lt!2240145 (store ((as const (Array Context!9526 Bool)) false) lt!2240149 true))))

(assert (=> b!5484278 (= lt!2240162 (store ((as const (Array Context!9526 Bool)) false) lt!2240150 true))))

(assert (=> b!5484278 (= lt!2240150 (Context!9527 lt!2240169))))

(assert (=> b!5484278 (= lt!2240169 (Cons!62312 (reg!15708 r!7292) Nil!62312))))

(declare-fun res!2338469 () Bool)

(assert (=> start!573554 (=> (not res!2338469) (not e!3393889))))

(declare-fun validRegex!7115 (Regex!15379) Bool)

(assert (=> start!573554 (= res!2338469 (validRegex!7115 r!7292))))

(assert (=> start!573554 e!3393889))

(declare-fun e!3393881 () Bool)

(assert (=> start!573554 e!3393881))

(declare-fun condSetEmpty!36093 () Bool)

(assert (=> start!573554 (= condSetEmpty!36093 (= z!1189 ((as const (Array Context!9526 Bool)) false)))))

(assert (=> start!573554 setRes!36093))

(declare-fun e!3393886 () Bool)

(assert (=> start!573554 e!3393886))

(declare-fun e!3393882 () Bool)

(assert (=> start!573554 e!3393882))

(declare-fun b!5484279 () Bool)

(declare-fun tp!1506859 () Bool)

(declare-fun tp!1506858 () Bool)

(assert (=> b!5484279 (= e!3393881 (and tp!1506859 tp!1506858))))

(declare-fun b!5484280 () Bool)

(declare-fun res!2338473 () Bool)

(assert (=> b!5484280 (=> res!2338473 e!3393891)))

(assert (=> b!5484280 (= res!2338473 (or (not (= lt!2240168 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun e!3393888 () Bool)

(declare-fun e!3393895 () Bool)

(assert (=> b!5484281 (= e!3393888 e!3393895)))

(declare-fun res!2338480 () Bool)

(assert (=> b!5484281 (=> res!2338480 e!3393895)))

(declare-fun lt!2240161 () Bool)

(declare-fun e!3393894 () Bool)

(assert (=> b!5484281 (= res!2338480 (not (= lt!2240161 e!3393894)))))

(declare-fun res!2338489 () Bool)

(assert (=> b!5484281 (=> res!2338489 e!3393894)))

(declare-fun isEmpty!34258 (List!62437) Bool)

(assert (=> b!5484281 (= res!2338489 (isEmpty!34258 s!2326))))

(declare-fun Exists!2558 (Int) Bool)

(assert (=> b!5484281 (= (Exists!2558 lambda!293070) (Exists!2558 lambda!293072))))

(declare-fun lt!2240159 () Unit!155208)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1208 (Regex!15379 Regex!15379 List!62437) Unit!155208)

(assert (=> b!5484281 (= lt!2240159 (lemmaExistCutMatchRandMatchRSpecEquivalent!1208 (reg!15708 r!7292) r!7292 s!2326))))

(assert (=> b!5484281 (= (Exists!2558 lambda!293070) (Exists!2558 lambda!293071))))

(declare-fun lt!2240138 () Unit!155208)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!532 (Regex!15379 List!62437) Unit!155208)

(assert (=> b!5484281 (= lt!2240138 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!532 (reg!15708 r!7292) s!2326))))

(declare-fun lt!2240166 () Bool)

(assert (=> b!5484281 (= lt!2240166 (Exists!2558 lambda!293070))))

(declare-fun findConcatSeparation!1902 (Regex!15379 Regex!15379 List!62437 List!62437 List!62437) Option!15488)

(assert (=> b!5484281 (= lt!2240166 (isDefined!12191 (findConcatSeparation!1902 (reg!15708 r!7292) r!7292 Nil!62313 s!2326 s!2326)))))

(declare-fun lt!2240141 () Unit!155208)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1666 (Regex!15379 Regex!15379 List!62437) Unit!155208)

(assert (=> b!5484281 (= lt!2240141 (lemmaFindConcatSeparationEquivalentToExists!1666 (reg!15708 r!7292) r!7292 s!2326))))

(declare-fun b!5484282 () Bool)

(declare-fun res!2338472 () Bool)

(assert (=> b!5484282 (=> res!2338472 e!3393888)))

(declare-fun isEmpty!34259 (List!62438) Bool)

(assert (=> b!5484282 (= res!2338472 (not (isEmpty!34259 (t!375669 zl!343))))))

(declare-fun b!5484283 () Bool)

(declare-fun tp!1506866 () Bool)

(declare-fun tp!1506863 () Bool)

(assert (=> b!5484283 (= e!3393881 (and tp!1506866 tp!1506863))))

(declare-fun e!3393887 () Bool)

(declare-fun tp!1506864 () Bool)

(declare-fun b!5484284 () Bool)

(assert (=> b!5484284 (= e!3393886 (and (inv!81694 (h!68762 zl!343)) e!3393887 tp!1506864))))

(declare-fun b!5484285 () Bool)

(assert (=> b!5484285 (= e!3393895 e!3393877)))

(declare-fun res!2338477 () Bool)

(assert (=> b!5484285 (=> res!2338477 e!3393877)))

(declare-fun lt!2240143 () (InoxSet Context!9526))

(assert (=> b!5484285 (= res!2338477 (not (= lt!2240143 lt!2240173)))))

(assert (=> b!5484285 (= lt!2240173 (derivationStepZipperDown!805 r!7292 (Context!9527 Nil!62312) (h!68761 s!2326)))))

(assert (=> b!5484285 (= lt!2240143 (derivationStepZipperUp!731 (Context!9527 (Cons!62312 r!7292 Nil!62312)) (h!68761 s!2326)))))

(assert (=> b!5484285 (= lt!2240152 (derivationStepZipper!1574 z!1189 (h!68761 s!2326)))))

(declare-fun b!5484286 () Bool)

(declare-fun res!2338481 () Bool)

(assert (=> b!5484286 (=> res!2338481 e!3393892)))

(declare-fun matchZipper!1597 ((InoxSet Context!9526) List!62437) Bool)

(assert (=> b!5484286 (= res!2338481 (not (matchZipper!1597 lt!2240162 (_1!35879 lt!2240170))))))

(declare-fun b!5484287 () Bool)

(declare-fun tp!1506861 () Bool)

(assert (=> b!5484287 (= e!3393887 tp!1506861)))

(declare-fun b!5484288 () Bool)

(declare-fun res!2338476 () Bool)

(assert (=> b!5484288 (=> res!2338476 e!3393895)))

(get-info :version)

(assert (=> b!5484288 (= res!2338476 ((_ is Nil!62313) s!2326))))

(declare-fun b!5484289 () Bool)

(declare-fun res!2338491 () Bool)

(assert (=> b!5484289 (=> res!2338491 e!3393888)))

(declare-fun generalisedUnion!1308 (List!62436) Regex!15379)

(declare-fun unfocusZipperList!821 (List!62438) List!62436)

(assert (=> b!5484289 (= res!2338491 (not (= r!7292 (generalisedUnion!1308 (unfocusZipperList!821 zl!343)))))))

(declare-fun b!5484290 () Bool)

(declare-fun tp!1506867 () Bool)

(assert (=> b!5484290 (= e!3393881 tp!1506867)))

(declare-fun b!5484291 () Bool)

(declare-fun tp_is_empty!40011 () Bool)

(declare-fun tp!1506865 () Bool)

(assert (=> b!5484291 (= e!3393882 (and tp_is_empty!40011 tp!1506865))))

(declare-fun b!5484292 () Bool)

(assert (=> b!5484292 (= e!3393892 true)))

(assert (=> b!5484292 (matchR!7564 r!7292 (_2!35879 lt!2240170))))

(declare-fun lt!2240160 () Unit!155208)

(declare-fun theoremZipperRegexEquiv!587 ((InoxSet Context!9526) List!62438 Regex!15379 List!62437) Unit!155208)

(assert (=> b!5484292 (= lt!2240160 (theoremZipperRegexEquiv!587 lt!2240145 lt!2240144 r!7292 (_2!35879 lt!2240170)))))

(assert (=> b!5484292 (matchR!7564 (reg!15708 r!7292) (_1!35879 lt!2240170))))

(declare-fun lt!2240157 () Unit!155208)

(declare-fun lt!2240148 () List!62438)

(assert (=> b!5484292 (= lt!2240157 (theoremZipperRegexEquiv!587 lt!2240162 lt!2240148 (reg!15708 r!7292) (_1!35879 lt!2240170)))))

(assert (=> b!5484292 (matchZipper!1597 (store ((as const (Array Context!9526 Bool)) false) (Context!9527 (++!13731 lt!2240169 lt!2240158)) true) lt!2240174)))

(declare-fun lt!2240139 () Unit!155208)

(assert (=> b!5484292 (= lt!2240139 (lemmaConcatPreservesForall!280 lt!2240169 lt!2240158 lambda!293075))))

(declare-fun lt!2240147 () Unit!155208)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!120 (Context!9526 Context!9526 List!62437 List!62437) Unit!155208)

(assert (=> b!5484292 (= lt!2240147 (lemmaConcatenateContextMatchesConcatOfStrings!120 lt!2240150 lt!2240149 (_1!35879 lt!2240170) (_2!35879 lt!2240170)))))

(declare-fun b!5484293 () Bool)

(declare-fun res!2338471 () Bool)

(assert (=> b!5484293 (=> (not res!2338471) (not e!3393889))))

(declare-fun toList!9163 ((InoxSet Context!9526)) List!62438)

(assert (=> b!5484293 (= res!2338471 (= (toList!9163 z!1189) zl!343))))

(declare-fun b!5484294 () Bool)

(declare-fun res!2338487 () Bool)

(assert (=> b!5484294 (=> res!2338487 e!3393891)))

(assert (=> b!5484294 (= res!2338487 (not (= (matchZipper!1597 lt!2240136 s!2326) (matchZipper!1597 (derivationStepZipper!1574 lt!2240136 (h!68761 s!2326)) (t!375668 s!2326)))))))

(declare-fun b!5484295 () Bool)

(declare-fun res!2338474 () Bool)

(assert (=> b!5484295 (=> res!2338474 e!3393885)))

(assert (=> b!5484295 (= res!2338474 (not (matchZipper!1597 z!1189 s!2326)))))

(declare-fun b!5484296 () Bool)

(assert (=> b!5484296 (= e!3393884 (not e!3393888))))

(declare-fun res!2338483 () Bool)

(assert (=> b!5484296 (=> res!2338483 e!3393888)))

(assert (=> b!5484296 (= res!2338483 (not ((_ is Cons!62314) zl!343)))))

(assert (=> b!5484296 (= lt!2240161 (matchRSpec!2482 r!7292 s!2326))))

(assert (=> b!5484296 (= lt!2240161 (matchR!7564 r!7292 s!2326))))

(declare-fun lt!2240167 () Unit!155208)

(assert (=> b!5484296 (= lt!2240167 (mainMatchTheorem!2482 r!7292 s!2326))))

(declare-fun b!5484297 () Bool)

(assert (=> b!5484297 (= e!3393881 tp_is_empty!40011)))

(declare-fun b!5484298 () Bool)

(declare-fun tp!1506862 () Bool)

(assert (=> b!5484298 (= e!3393896 tp!1506862)))

(declare-fun b!5484299 () Bool)

(declare-fun res!2338475 () Bool)

(assert (=> b!5484299 (=> res!2338475 e!3393888)))

(assert (=> b!5484299 (= res!2338475 (or ((_ is EmptyExpr!15379) r!7292) ((_ is EmptyLang!15379) r!7292) ((_ is ElementMatch!15379) r!7292) ((_ is Union!15379) r!7292) ((_ is Concat!24224) r!7292)))))

(declare-fun b!5484300 () Bool)

(assert (=> b!5484300 (= e!3393894 lt!2240166)))

(declare-fun b!5484301 () Bool)

(declare-fun res!2338485 () Bool)

(assert (=> b!5484301 (=> res!2338485 e!3393888)))

(declare-fun generalisedConcat!1048 (List!62436) Regex!15379)

(assert (=> b!5484301 (= res!2338485 (not (= r!7292 (generalisedConcat!1048 (exprs!5263 (h!68762 zl!343))))))))

(declare-fun setIsEmpty!36093 () Bool)

(assert (=> setIsEmpty!36093 setRes!36093))

(declare-fun b!5484302 () Bool)

(assert (=> b!5484302 (= e!3393879 e!3393890)))

(declare-fun res!2338470 () Bool)

(assert (=> b!5484302 (=> res!2338470 e!3393890)))

(assert (=> b!5484302 (= res!2338470 (not (= (unfocusZipper!1121 lt!2240148) (reg!15708 r!7292))))))

(assert (=> b!5484302 (= lt!2240148 (Cons!62314 lt!2240150 Nil!62314))))

(declare-fun b!5484303 () Bool)

(declare-fun res!2338478 () Bool)

(assert (=> b!5484303 (=> res!2338478 e!3393892)))

(assert (=> b!5484303 (= res!2338478 (not (matchZipper!1597 lt!2240145 (_2!35879 lt!2240170))))))

(declare-fun b!5484304 () Bool)

(declare-fun res!2338482 () Bool)

(assert (=> b!5484304 (=> res!2338482 e!3393888)))

(assert (=> b!5484304 (= res!2338482 (not ((_ is Cons!62312) (exprs!5263 (h!68762 zl!343)))))))

(assert (= (and start!573554 res!2338469) b!5484293))

(assert (= (and b!5484293 res!2338471) b!5484273))

(assert (= (and b!5484273 res!2338493) b!5484296))

(assert (= (and b!5484296 (not res!2338483)) b!5484282))

(assert (= (and b!5484282 (not res!2338472)) b!5484301))

(assert (= (and b!5484301 (not res!2338485)) b!5484304))

(assert (= (and b!5484304 (not res!2338482)) b!5484289))

(assert (= (and b!5484289 (not res!2338491)) b!5484299))

(assert (= (and b!5484299 (not res!2338475)) b!5484281))

(assert (= (and b!5484281 (not res!2338489)) b!5484300))

(assert (= (and b!5484281 (not res!2338480)) b!5484288))

(assert (= (and b!5484288 (not res!2338476)) b!5484285))

(assert (= (and b!5484285 (not res!2338477)) b!5484272))

(assert (= (and b!5484272 (not res!2338486)) b!5484277))

(assert (= (and b!5484277 (not res!2338492)) b!5484294))

(assert (= (and b!5484294 (not res!2338487)) b!5484280))

(assert (= (and b!5484280 (not res!2338473)) b!5484276))

(assert (= (and b!5484276 (not res!2338488)) b!5484278))

(assert (= (and b!5484278 (not res!2338484)) b!5484302))

(assert (= (and b!5484302 (not res!2338470)) b!5484275))

(assert (= (and b!5484275 (not res!2338479)) b!5484271))

(assert (= (and b!5484271 (not res!2338494)) b!5484295))

(assert (= (and b!5484295 (not res!2338474)) b!5484270))

(assert (= (and b!5484270 (not res!2338468)) b!5484274))

(assert (= (and b!5484274 (not res!2338490)) b!5484286))

(assert (= (and b!5484286 (not res!2338481)) b!5484303))

(assert (= (and b!5484303 (not res!2338478)) b!5484292))

(assert (= (and start!573554 ((_ is ElementMatch!15379) r!7292)) b!5484297))

(assert (= (and start!573554 ((_ is Concat!24224) r!7292)) b!5484279))

(assert (= (and start!573554 ((_ is Star!15379) r!7292)) b!5484290))

(assert (= (and start!573554 ((_ is Union!15379) r!7292)) b!5484283))

(assert (= (and start!573554 condSetEmpty!36093) setIsEmpty!36093))

(assert (= (and start!573554 (not condSetEmpty!36093)) setNonEmpty!36093))

(assert (= setNonEmpty!36093 b!5484298))

(assert (= b!5484284 b!5484287))

(assert (= (and start!573554 ((_ is Cons!62314) zl!343)) b!5484284))

(assert (= (and start!573554 ((_ is Cons!62313) s!2326)) b!5484291))

(declare-fun m!6499728 () Bool)

(assert (=> b!5484277 m!6499728))

(declare-fun m!6499730 () Bool)

(assert (=> b!5484277 m!6499730))

(declare-fun m!6499732 () Bool)

(assert (=> b!5484277 m!6499732))

(declare-fun m!6499734 () Bool)

(assert (=> b!5484277 m!6499734))

(declare-fun m!6499736 () Bool)

(assert (=> b!5484277 m!6499736))

(declare-fun m!6499738 () Bool)

(assert (=> setNonEmpty!36093 m!6499738))

(declare-fun m!6499740 () Bool)

(assert (=> b!5484270 m!6499740))

(declare-fun m!6499742 () Bool)

(assert (=> b!5484270 m!6499742))

(declare-fun m!6499744 () Bool)

(assert (=> b!5484270 m!6499744))

(declare-fun m!6499746 () Bool)

(assert (=> b!5484270 m!6499746))

(declare-fun m!6499748 () Bool)

(assert (=> b!5484270 m!6499748))

(declare-fun m!6499750 () Bool)

(assert (=> b!5484270 m!6499750))

(declare-fun m!6499752 () Bool)

(assert (=> b!5484294 m!6499752))

(declare-fun m!6499754 () Bool)

(assert (=> b!5484294 m!6499754))

(assert (=> b!5484294 m!6499754))

(declare-fun m!6499756 () Bool)

(assert (=> b!5484294 m!6499756))

(declare-fun m!6499758 () Bool)

(assert (=> b!5484302 m!6499758))

(declare-fun m!6499760 () Bool)

(assert (=> b!5484275 m!6499760))

(declare-fun m!6499762 () Bool)

(assert (=> b!5484273 m!6499762))

(declare-fun m!6499764 () Bool)

(assert (=> b!5484285 m!6499764))

(declare-fun m!6499766 () Bool)

(assert (=> b!5484285 m!6499766))

(declare-fun m!6499768 () Bool)

(assert (=> b!5484285 m!6499768))

(declare-fun m!6499770 () Bool)

(assert (=> b!5484278 m!6499770))

(declare-fun m!6499772 () Bool)

(assert (=> b!5484278 m!6499772))

(declare-fun m!6499774 () Bool)

(assert (=> b!5484278 m!6499774))

(declare-fun m!6499776 () Bool)

(assert (=> b!5484278 m!6499776))

(declare-fun m!6499778 () Bool)

(assert (=> b!5484278 m!6499778))

(declare-fun m!6499780 () Bool)

(assert (=> b!5484278 m!6499780))

(declare-fun m!6499782 () Bool)

(assert (=> b!5484278 m!6499782))

(declare-fun m!6499784 () Bool)

(assert (=> b!5484278 m!6499784))

(declare-fun m!6499786 () Bool)

(assert (=> b!5484278 m!6499786))

(declare-fun m!6499788 () Bool)

(assert (=> b!5484274 m!6499788))

(declare-fun m!6499790 () Bool)

(assert (=> b!5484274 m!6499790))

(declare-fun m!6499792 () Bool)

(assert (=> b!5484274 m!6499792))

(declare-fun m!6499794 () Bool)

(assert (=> b!5484274 m!6499794))

(declare-fun m!6499796 () Bool)

(assert (=> b!5484274 m!6499796))

(declare-fun m!6499798 () Bool)

(assert (=> b!5484286 m!6499798))

(declare-fun m!6499800 () Bool)

(assert (=> b!5484282 m!6499800))

(declare-fun m!6499802 () Bool)

(assert (=> b!5484281 m!6499802))

(declare-fun m!6499804 () Bool)

(assert (=> b!5484281 m!6499804))

(declare-fun m!6499806 () Bool)

(assert (=> b!5484281 m!6499806))

(declare-fun m!6499808 () Bool)

(assert (=> b!5484281 m!6499808))

(assert (=> b!5484281 m!6499808))

(assert (=> b!5484281 m!6499808))

(declare-fun m!6499810 () Bool)

(assert (=> b!5484281 m!6499810))

(declare-fun m!6499812 () Bool)

(assert (=> b!5484281 m!6499812))

(declare-fun m!6499814 () Bool)

(assert (=> b!5484281 m!6499814))

(assert (=> b!5484281 m!6499812))

(declare-fun m!6499816 () Bool)

(assert (=> b!5484281 m!6499816))

(declare-fun m!6499818 () Bool)

(assert (=> b!5484281 m!6499818))

(declare-fun m!6499820 () Bool)

(assert (=> b!5484301 m!6499820))

(declare-fun m!6499822 () Bool)

(assert (=> b!5484296 m!6499822))

(declare-fun m!6499824 () Bool)

(assert (=> b!5484296 m!6499824))

(declare-fun m!6499826 () Bool)

(assert (=> b!5484296 m!6499826))

(declare-fun m!6499828 () Bool)

(assert (=> b!5484303 m!6499828))

(declare-fun m!6499830 () Bool)

(assert (=> start!573554 m!6499830))

(declare-fun m!6499832 () Bool)

(assert (=> b!5484276 m!6499832))

(declare-fun m!6499834 () Bool)

(assert (=> b!5484292 m!6499834))

(assert (=> b!5484292 m!6499740))

(assert (=> b!5484292 m!6499742))

(declare-fun m!6499836 () Bool)

(assert (=> b!5484292 m!6499836))

(assert (=> b!5484292 m!6499742))

(declare-fun m!6499838 () Bool)

(assert (=> b!5484292 m!6499838))

(declare-fun m!6499840 () Bool)

(assert (=> b!5484292 m!6499840))

(declare-fun m!6499842 () Bool)

(assert (=> b!5484292 m!6499842))

(declare-fun m!6499844 () Bool)

(assert (=> b!5484292 m!6499844))

(assert (=> b!5484292 m!6499750))

(declare-fun m!6499846 () Bool)

(assert (=> b!5484271 m!6499846))

(declare-fun m!6499848 () Bool)

(assert (=> b!5484271 m!6499848))

(declare-fun m!6499850 () Bool)

(assert (=> b!5484271 m!6499850))

(declare-fun m!6499852 () Bool)

(assert (=> b!5484289 m!6499852))

(assert (=> b!5484289 m!6499852))

(declare-fun m!6499854 () Bool)

(assert (=> b!5484289 m!6499854))

(declare-fun m!6499856 () Bool)

(assert (=> b!5484295 m!6499856))

(declare-fun m!6499858 () Bool)

(assert (=> b!5484272 m!6499858))

(declare-fun m!6499860 () Bool)

(assert (=> b!5484272 m!6499860))

(declare-fun m!6499862 () Bool)

(assert (=> b!5484272 m!6499862))

(declare-fun m!6499864 () Bool)

(assert (=> b!5484293 m!6499864))

(declare-fun m!6499866 () Bool)

(assert (=> b!5484284 m!6499866))

(check-sat (not b!5484285) (not b!5484270) (not b!5484273) (not start!573554) (not setNonEmpty!36093) (not b!5484302) (not b!5484289) (not b!5484291) (not b!5484278) (not b!5484286) (not b!5484281) (not b!5484271) (not b!5484298) (not b!5484282) (not b!5484274) tp_is_empty!40011 (not b!5484295) (not b!5484276) (not b!5484284) (not b!5484277) (not b!5484296) (not b!5484287) (not b!5484272) (not b!5484279) (not b!5484283) (not b!5484293) (not b!5484290) (not b!5484294) (not b!5484292) (not b!5484275) (not b!5484303) (not b!5484301))
(check-sat)
