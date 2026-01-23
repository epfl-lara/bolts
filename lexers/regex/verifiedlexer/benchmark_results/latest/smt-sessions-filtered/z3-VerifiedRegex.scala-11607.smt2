; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645078 () Bool)

(assert start!645078)

(declare-fun b!6596186 () Bool)

(assert (=> b!6596186 true))

(assert (=> b!6596186 true))

(declare-fun lambda!367498 () Int)

(declare-fun lambda!367497 () Int)

(assert (=> b!6596186 (not (= lambda!367498 lambda!367497))))

(assert (=> b!6596186 true))

(assert (=> b!6596186 true))

(declare-fun b!6596190 () Bool)

(assert (=> b!6596190 true))

(declare-fun b!6596150 () Bool)

(declare-fun e!3991468 () Bool)

(declare-fun e!3991472 () Bool)

(assert (=> b!6596150 (= e!3991468 e!3991472)))

(declare-fun res!2704672 () Bool)

(assert (=> b!6596150 (=> res!2704672 e!3991472)))

(declare-datatypes ((C!33192 0))(
  ( (C!33193 (val!26298 Int)) )
))
(declare-datatypes ((Regex!16461 0))(
  ( (ElementMatch!16461 (c!1214690 C!33192)) (Concat!25306 (regOne!33434 Regex!16461) (regTwo!33434 Regex!16461)) (EmptyExpr!16461) (Star!16461 (reg!16790 Regex!16461)) (EmptyLang!16461) (Union!16461 (regOne!33435 Regex!16461) (regTwo!33435 Regex!16461)) )
))
(declare-fun r!7292 () Regex!16461)

(declare-fun lt!2412225 () Regex!16461)

(declare-fun regexDepth!358 (Regex!16461) Int)

(assert (=> b!6596150 (= res!2704672 (< (regexDepth!358 r!7292) (regexDepth!358 lt!2412225)))))

(declare-datatypes ((List!65682 0))(
  ( (Nil!65558) (Cons!65558 (h!72006 Regex!16461) (t!379334 List!65682)) )
))
(declare-datatypes ((Context!11690 0))(
  ( (Context!11691 (exprs!6345 List!65682)) )
))
(declare-datatypes ((List!65683 0))(
  ( (Nil!65559) (Cons!65559 (h!72007 Context!11690) (t!379335 List!65683)) )
))
(declare-fun zl!343 () List!65683)

(declare-fun generalisedConcat!2058 (List!65682) Regex!16461)

(assert (=> b!6596150 (= lt!2412225 (generalisedConcat!2058 (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596151 () Bool)

(declare-fun e!3991467 () Bool)

(declare-fun tp!1819255 () Bool)

(assert (=> b!6596151 (= e!3991467 tp!1819255)))

(declare-fun b!6596152 () Bool)

(declare-fun res!2704675 () Bool)

(declare-fun e!3991465 () Bool)

(assert (=> b!6596152 (=> res!2704675 e!3991465)))

(get-info :version)

(assert (=> b!6596152 (= res!2704675 (or ((_ is Concat!25306) (regOne!33434 r!7292)) (not ((_ is Star!16461) (regOne!33434 r!7292)))))))

(declare-fun b!6596153 () Bool)

(declare-fun e!3991454 () Bool)

(declare-fun validRegex!8197 (Regex!16461) Bool)

(assert (=> b!6596153 (= e!3991454 (validRegex!8197 (reg!16790 (regOne!33434 r!7292))))))

(declare-fun lt!2412199 () Regex!16461)

(declare-datatypes ((List!65684 0))(
  ( (Nil!65560) (Cons!65560 (h!72008 C!33192) (t!379336 List!65684)) )
))
(declare-fun matchR!8644 (Regex!16461 List!65684) Bool)

(declare-fun matchRSpec!3562 (Regex!16461 List!65684) Bool)

(assert (=> b!6596153 (= (matchR!8644 lt!2412199 Nil!65560) (matchRSpec!3562 lt!2412199 Nil!65560))))

(declare-datatypes ((Unit!159179 0))(
  ( (Unit!159180) )
))
(declare-fun lt!2412215 () Unit!159179)

(declare-fun mainMatchTheorem!3562 (Regex!16461 List!65684) Unit!159179)

(assert (=> b!6596153 (= lt!2412215 (mainMatchTheorem!3562 lt!2412199 Nil!65560))))

(declare-fun b!6596154 () Bool)

(declare-fun e!3991476 () Bool)

(declare-fun e!3991462 () Bool)

(assert (=> b!6596154 (= e!3991476 (not e!3991462))))

(declare-fun res!2704650 () Bool)

(assert (=> b!6596154 (=> res!2704650 e!3991462)))

(assert (=> b!6596154 (= res!2704650 (not ((_ is Cons!65559) zl!343)))))

(declare-fun lt!2412227 () Bool)

(declare-fun s!2326 () List!65684)

(assert (=> b!6596154 (= lt!2412227 (matchRSpec!3562 r!7292 s!2326))))

(assert (=> b!6596154 (= lt!2412227 (matchR!8644 r!7292 s!2326))))

(declare-fun lt!2412207 () Unit!159179)

(assert (=> b!6596154 (= lt!2412207 (mainMatchTheorem!3562 r!7292 s!2326))))

(declare-fun b!6596155 () Bool)

(declare-fun res!2704667 () Bool)

(declare-fun e!3991475 () Bool)

(assert (=> b!6596155 (=> (not res!2704667) (not e!3991475))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11690))

(declare-fun toList!10245 ((InoxSet Context!11690)) List!65683)

(assert (=> b!6596155 (= res!2704667 (= (toList!10245 z!1189) zl!343))))

(declare-fun b!6596156 () Bool)

(declare-fun e!3991459 () Unit!159179)

(declare-fun Unit!159181 () Unit!159179)

(assert (=> b!6596156 (= e!3991459 Unit!159181)))

(declare-fun e!3991469 () Bool)

(declare-fun setNonEmpty!45036 () Bool)

(declare-fun tp!1819251 () Bool)

(declare-fun setElem!45036 () Context!11690)

(declare-fun setRes!45036 () Bool)

(declare-fun inv!84399 (Context!11690) Bool)

(assert (=> setNonEmpty!45036 (= setRes!45036 (and tp!1819251 (inv!84399 setElem!45036) e!3991469))))

(declare-fun setRest!45036 () (InoxSet Context!11690))

(assert (=> setNonEmpty!45036 (= z!1189 ((_ map or) (store ((as const (Array Context!11690 Bool)) false) setElem!45036 true) setRest!45036))))

(declare-fun b!6596157 () Bool)

(declare-fun e!3991474 () Bool)

(declare-fun e!3991471 () Bool)

(assert (=> b!6596157 (= e!3991474 e!3991471)))

(declare-fun res!2704658 () Bool)

(assert (=> b!6596157 (=> res!2704658 e!3991471)))

(declare-fun lt!2412200 () Context!11690)

(declare-fun unfocusZipper!2203 (List!65683) Regex!16461)

(assert (=> b!6596157 (= res!2704658 (not (= (unfocusZipper!2203 (Cons!65559 lt!2412200 Nil!65559)) (reg!16790 (regOne!33434 r!7292)))))))

(declare-fun lambda!367499 () Int)

(declare-fun lt!2412218 () Context!11690)

(declare-fun lt!2412205 () (InoxSet Context!11690))

(declare-fun flatMap!1966 ((InoxSet Context!11690) Int) (InoxSet Context!11690))

(declare-fun derivationStepZipperUp!1635 (Context!11690 C!33192) (InoxSet Context!11690))

(assert (=> b!6596157 (= (flatMap!1966 lt!2412205 lambda!367499) (derivationStepZipperUp!1635 lt!2412218 (h!72008 s!2326)))))

(declare-fun lt!2412208 () Unit!159179)

(declare-fun lemmaFlatMapOnSingletonSet!1492 ((InoxSet Context!11690) Context!11690 Int) Unit!159179)

(assert (=> b!6596157 (= lt!2412208 (lemmaFlatMapOnSingletonSet!1492 lt!2412205 lt!2412218 lambda!367499))))

(declare-fun lt!2412210 () (InoxSet Context!11690))

(assert (=> b!6596157 (= (flatMap!1966 lt!2412210 lambda!367499) (derivationStepZipperUp!1635 lt!2412200 (h!72008 s!2326)))))

(declare-fun lt!2412219 () Unit!159179)

(assert (=> b!6596157 (= lt!2412219 (lemmaFlatMapOnSingletonSet!1492 lt!2412210 lt!2412200 lambda!367499))))

(declare-fun lt!2412232 () (InoxSet Context!11690))

(assert (=> b!6596157 (= lt!2412232 (derivationStepZipperUp!1635 lt!2412218 (h!72008 s!2326)))))

(declare-fun lt!2412206 () (InoxSet Context!11690))

(assert (=> b!6596157 (= lt!2412206 (derivationStepZipperUp!1635 lt!2412200 (h!72008 s!2326)))))

(assert (=> b!6596157 (= lt!2412205 (store ((as const (Array Context!11690 Bool)) false) lt!2412218 true))))

(assert (=> b!6596157 (= lt!2412210 (store ((as const (Array Context!11690 Bool)) false) lt!2412200 true))))

(assert (=> b!6596157 (= lt!2412200 (Context!11691 (Cons!65558 (reg!16790 (regOne!33434 r!7292)) Nil!65558)))))

(declare-fun b!6596159 () Bool)

(declare-fun e!3991463 () Bool)

(declare-fun e!3991455 () Bool)

(assert (=> b!6596159 (= e!3991463 e!3991455)))

(declare-fun res!2704680 () Bool)

(assert (=> b!6596159 (=> res!2704680 e!3991455)))

(declare-fun e!3991458 () Bool)

(assert (=> b!6596159 (= res!2704680 e!3991458)))

(declare-fun res!2704652 () Bool)

(assert (=> b!6596159 (=> (not res!2704652) (not e!3991458))))

(declare-fun lt!2412233 () Bool)

(assert (=> b!6596159 (= res!2704652 (not lt!2412233))))

(declare-fun lt!2412234 () (InoxSet Context!11690))

(declare-fun matchZipper!2473 ((InoxSet Context!11690) List!65684) Bool)

(assert (=> b!6596159 (= lt!2412233 (matchZipper!2473 lt!2412234 (t!379336 s!2326)))))

(declare-fun b!6596160 () Bool)

(declare-fun tp!1819247 () Bool)

(assert (=> b!6596160 (= e!3991469 tp!1819247)))

(declare-fun b!6596161 () Bool)

(declare-fun e!3991460 () Bool)

(assert (=> b!6596161 (= e!3991472 e!3991460)))

(declare-fun res!2704648 () Bool)

(assert (=> b!6596161 (=> res!2704648 e!3991460)))

(declare-fun lt!2412204 () List!65683)

(declare-fun zipperDepth!398 (List!65683) Int)

(assert (=> b!6596161 (= res!2704648 (< (zipperDepth!398 zl!343) (zipperDepth!398 lt!2412204)))))

(declare-fun lt!2412212 () Context!11690)

(assert (=> b!6596161 (= lt!2412204 (Cons!65559 lt!2412212 Nil!65559))))

(declare-fun setIsEmpty!45036 () Bool)

(assert (=> setIsEmpty!45036 setRes!45036))

(declare-fun b!6596162 () Bool)

(declare-fun lt!2412224 () (InoxSet Context!11690))

(assert (=> b!6596162 (= e!3991458 (not (matchZipper!2473 lt!2412224 (t!379336 s!2326))))))

(declare-fun b!6596163 () Bool)

(declare-fun res!2704655 () Bool)

(assert (=> b!6596163 (=> res!2704655 e!3991462)))

(declare-fun generalisedUnion!2305 (List!65682) Regex!16461)

(declare-fun unfocusZipperList!1882 (List!65683) List!65682)

(assert (=> b!6596163 (= res!2704655 (not (= r!7292 (generalisedUnion!2305 (unfocusZipperList!1882 zl!343)))))))

(declare-fun b!6596164 () Bool)

(declare-fun res!2704646 () Bool)

(assert (=> b!6596164 (=> res!2704646 e!3991462)))

(assert (=> b!6596164 (= res!2704646 (or ((_ is EmptyExpr!16461) r!7292) ((_ is EmptyLang!16461) r!7292) ((_ is ElementMatch!16461) r!7292) ((_ is Union!16461) r!7292) (not ((_ is Concat!25306) r!7292))))))

(declare-fun b!6596165 () Bool)

(declare-fun tp!1819248 () Bool)

(declare-fun tp!1819252 () Bool)

(assert (=> b!6596165 (= e!3991467 (and tp!1819248 tp!1819252))))

(declare-fun b!6596166 () Bool)

(assert (=> b!6596166 (= e!3991455 e!3991468)))

(declare-fun res!2704660 () Bool)

(assert (=> b!6596166 (=> res!2704660 e!3991468)))

(declare-fun lt!2412209 () (InoxSet Context!11690))

(declare-fun derivationStepZipper!2427 ((InoxSet Context!11690) C!33192) (InoxSet Context!11690))

(assert (=> b!6596166 (= res!2704660 (not (= lt!2412224 (derivationStepZipper!2427 lt!2412209 (h!72008 s!2326)))))))

(assert (=> b!6596166 (= (flatMap!1966 lt!2412209 lambda!367499) (derivationStepZipperUp!1635 lt!2412212 (h!72008 s!2326)))))

(declare-fun lt!2412223 () Unit!159179)

(assert (=> b!6596166 (= lt!2412223 (lemmaFlatMapOnSingletonSet!1492 lt!2412209 lt!2412212 lambda!367499))))

(assert (=> b!6596166 (= lt!2412209 (store ((as const (Array Context!11690 Bool)) false) lt!2412212 true))))

(declare-fun b!6596167 () Bool)

(declare-fun Unit!159182 () Unit!159179)

(assert (=> b!6596167 (= e!3991459 Unit!159182)))

(declare-fun lt!2412220 () Unit!159179)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1292 ((InoxSet Context!11690) (InoxSet Context!11690) List!65684) Unit!159179)

(assert (=> b!6596167 (= lt!2412220 (lemmaZipperConcatMatchesSameAsBothZippers!1292 lt!2412234 lt!2412224 (t!379336 s!2326)))))

(declare-fun res!2704665 () Bool)

(assert (=> b!6596167 (= res!2704665 (matchZipper!2473 lt!2412234 (t!379336 s!2326)))))

(declare-fun e!3991457 () Bool)

(assert (=> b!6596167 (=> res!2704665 e!3991457)))

(assert (=> b!6596167 (= (matchZipper!2473 ((_ map or) lt!2412234 lt!2412224) (t!379336 s!2326)) e!3991457)))

(declare-fun b!6596168 () Bool)

(declare-fun res!2704647 () Bool)

(declare-fun e!3991453 () Bool)

(assert (=> b!6596168 (=> res!2704647 e!3991453)))

(declare-fun lt!2412235 () (InoxSet Context!11690))

(declare-fun lt!2412221 () (InoxSet Context!11690))

(assert (=> b!6596168 (= res!2704647 (not (= (matchZipper!2473 lt!2412221 s!2326) (matchZipper!2473 lt!2412235 (t!379336 s!2326)))))))

(declare-fun tp!1819254 () Bool)

(declare-fun e!3991464 () Bool)

(declare-fun e!3991456 () Bool)

(declare-fun b!6596169 () Bool)

(assert (=> b!6596169 (= e!3991456 (and (inv!84399 (h!72007 zl!343)) e!3991464 tp!1819254))))

(declare-fun b!6596170 () Bool)

(declare-fun e!3991470 () Bool)

(assert (=> b!6596170 (= e!3991465 e!3991470)))

(declare-fun res!2704678 () Bool)

(assert (=> b!6596170 (=> res!2704678 e!3991470)))

(declare-fun lt!2412222 () (InoxSet Context!11690))

(assert (=> b!6596170 (= res!2704678 (not (= lt!2412234 lt!2412222)))))

(declare-fun derivationStepZipperDown!1709 (Regex!16461 Context!11690 C!33192) (InoxSet Context!11690))

(assert (=> b!6596170 (= lt!2412222 (derivationStepZipperDown!1709 (reg!16790 (regOne!33434 r!7292)) lt!2412218 (h!72008 s!2326)))))

(declare-fun lt!2412211 () List!65682)

(assert (=> b!6596170 (= lt!2412218 (Context!11691 lt!2412211))))

(assert (=> b!6596170 (= lt!2412211 (Cons!65558 lt!2412199 (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(assert (=> b!6596170 (= lt!2412199 (Star!16461 (reg!16790 (regOne!33434 r!7292))))))

(declare-fun b!6596171 () Bool)

(declare-fun res!2704654 () Bool)

(declare-fun e!3991461 () Bool)

(assert (=> b!6596171 (=> res!2704654 e!3991461)))

(declare-fun isEmpty!37821 (List!65682) Bool)

(assert (=> b!6596171 (= res!2704654 (isEmpty!37821 (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596172 () Bool)

(declare-fun e!3991466 () Bool)

(assert (=> b!6596172 (= e!3991453 e!3991466)))

(declare-fun res!2704662 () Bool)

(assert (=> b!6596172 (=> res!2704662 e!3991466)))

(declare-fun lt!2412229 () Regex!16461)

(assert (=> b!6596172 (= res!2704662 (not (= r!7292 lt!2412229)))))

(assert (=> b!6596172 (= lt!2412229 (Concat!25306 lt!2412199 (regTwo!33434 r!7292)))))

(declare-fun b!6596173 () Bool)

(assert (=> b!6596173 (= e!3991471 e!3991463)))

(declare-fun res!2704661 () Bool)

(assert (=> b!6596173 (=> res!2704661 e!3991463)))

(assert (=> b!6596173 (= res!2704661 lt!2412227)))

(declare-fun lt!2412236 () Regex!16461)

(assert (=> b!6596173 (= (matchR!8644 lt!2412236 s!2326) (matchRSpec!3562 lt!2412236 s!2326))))

(declare-fun lt!2412203 () Unit!159179)

(assert (=> b!6596173 (= lt!2412203 (mainMatchTheorem!3562 lt!2412236 s!2326))))

(declare-fun b!6596174 () Bool)

(declare-fun tp_is_empty!42175 () Bool)

(assert (=> b!6596174 (= e!3991467 tp_is_empty!42175)))

(declare-fun b!6596175 () Bool)

(assert (=> b!6596175 (= e!3991475 e!3991476)))

(declare-fun res!2704676 () Bool)

(assert (=> b!6596175 (=> (not res!2704676) (not e!3991476))))

(declare-fun lt!2412214 () Regex!16461)

(assert (=> b!6596175 (= res!2704676 (= r!7292 lt!2412214))))

(assert (=> b!6596175 (= lt!2412214 (unfocusZipper!2203 zl!343))))

(declare-fun b!6596176 () Bool)

(declare-fun res!2704668 () Bool)

(assert (=> b!6596176 (=> res!2704668 e!3991463)))

(declare-fun lt!2412202 () Bool)

(assert (=> b!6596176 (= res!2704668 (not lt!2412202))))

(declare-fun b!6596177 () Bool)

(declare-fun e!3991473 () Bool)

(declare-fun nullable!6454 (Regex!16461) Bool)

(assert (=> b!6596177 (= e!3991473 (nullable!6454 (regOne!33434 (regOne!33434 r!7292))))))

(declare-fun b!6596178 () Bool)

(declare-fun tp!1819250 () Bool)

(assert (=> b!6596178 (= e!3991464 tp!1819250)))

(declare-fun b!6596179 () Bool)

(declare-fun res!2704651 () Bool)

(assert (=> b!6596179 (=> res!2704651 e!3991465)))

(assert (=> b!6596179 (= res!2704651 e!3991473)))

(declare-fun res!2704663 () Bool)

(assert (=> b!6596179 (=> (not res!2704663) (not e!3991473))))

(assert (=> b!6596179 (= res!2704663 ((_ is Concat!25306) (regOne!33434 r!7292)))))

(declare-fun b!6596180 () Bool)

(declare-fun res!2704674 () Bool)

(assert (=> b!6596180 (=> res!2704674 e!3991455)))

(assert (=> b!6596180 (= res!2704674 lt!2412233)))

(declare-fun b!6596181 () Bool)

(declare-fun res!2704671 () Bool)

(assert (=> b!6596181 (=> res!2704671 e!3991471)))

(assert (=> b!6596181 (= res!2704671 (not (= (unfocusZipper!2203 (Cons!65559 lt!2412218 Nil!65559)) lt!2412229)))))

(declare-fun b!6596182 () Bool)

(assert (=> b!6596182 (= e!3991470 e!3991453)))

(declare-fun res!2704666 () Bool)

(assert (=> b!6596182 (=> res!2704666 e!3991453)))

(assert (=> b!6596182 (= res!2704666 (not (= lt!2412235 lt!2412222)))))

(declare-fun lt!2412226 () Context!11690)

(assert (=> b!6596182 (= (flatMap!1966 lt!2412221 lambda!367499) (derivationStepZipperUp!1635 lt!2412226 (h!72008 s!2326)))))

(declare-fun lt!2412216 () Unit!159179)

(assert (=> b!6596182 (= lt!2412216 (lemmaFlatMapOnSingletonSet!1492 lt!2412221 lt!2412226 lambda!367499))))

(declare-fun lt!2412228 () (InoxSet Context!11690))

(assert (=> b!6596182 (= lt!2412228 (derivationStepZipperUp!1635 lt!2412226 (h!72008 s!2326)))))

(assert (=> b!6596182 (= lt!2412235 (derivationStepZipper!2427 lt!2412221 (h!72008 s!2326)))))

(assert (=> b!6596182 (= lt!2412221 (store ((as const (Array Context!11690 Bool)) false) lt!2412226 true))))

(assert (=> b!6596182 (= lt!2412226 (Context!11691 (Cons!65558 (reg!16790 (regOne!33434 r!7292)) lt!2412211)))))

(declare-fun b!6596183 () Bool)

(declare-fun res!2704657 () Bool)

(assert (=> b!6596183 (=> res!2704657 e!3991455)))

(assert (=> b!6596183 (= res!2704657 (not (matchZipper!2473 lt!2412224 (t!379336 s!2326))))))

(declare-fun b!6596184 () Bool)

(declare-fun tp!1819253 () Bool)

(declare-fun tp!1819249 () Bool)

(assert (=> b!6596184 (= e!3991467 (and tp!1819253 tp!1819249))))

(declare-fun b!6596185 () Bool)

(declare-fun res!2704649 () Bool)

(assert (=> b!6596185 (=> res!2704649 e!3991462)))

(declare-fun isEmpty!37822 (List!65683) Bool)

(assert (=> b!6596185 (= res!2704649 (not (isEmpty!37822 (t!379335 zl!343))))))

(assert (=> b!6596186 (= e!3991462 e!3991461)))

(declare-fun res!2704659 () Bool)

(assert (=> b!6596186 (=> res!2704659 e!3991461)))

(declare-fun lt!2412213 () Bool)

(assert (=> b!6596186 (= res!2704659 (or (not (= lt!2412227 lt!2412213)) ((_ is Nil!65560) s!2326)))))

(declare-fun Exists!3531 (Int) Bool)

(assert (=> b!6596186 (= (Exists!3531 lambda!367497) (Exists!3531 lambda!367498))))

(declare-fun lt!2412230 () Unit!159179)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2068 (Regex!16461 Regex!16461 List!65684) Unit!159179)

(assert (=> b!6596186 (= lt!2412230 (lemmaExistCutMatchRandMatchRSpecEquivalent!2068 (regOne!33434 r!7292) (regTwo!33434 r!7292) s!2326))))

(assert (=> b!6596186 (= lt!2412213 (Exists!3531 lambda!367497))))

(declare-datatypes ((tuple2!66880 0))(
  ( (tuple2!66881 (_1!36743 List!65684) (_2!36743 List!65684)) )
))
(declare-datatypes ((Option!16352 0))(
  ( (None!16351) (Some!16351 (v!52540 tuple2!66880)) )
))
(declare-fun isDefined!13055 (Option!16352) Bool)

(declare-fun findConcatSeparation!2766 (Regex!16461 Regex!16461 List!65684 List!65684 List!65684) Option!16352)

(assert (=> b!6596186 (= lt!2412213 (isDefined!13055 (findConcatSeparation!2766 (regOne!33434 r!7292) (regTwo!33434 r!7292) Nil!65560 s!2326 s!2326)))))

(declare-fun lt!2412231 () Unit!159179)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2530 (Regex!16461 Regex!16461 List!65684) Unit!159179)

(assert (=> b!6596186 (= lt!2412231 (lemmaFindConcatSeparationEquivalentToExists!2530 (regOne!33434 r!7292) (regTwo!33434 r!7292) s!2326))))

(declare-fun b!6596187 () Bool)

(declare-fun res!2704679 () Bool)

(assert (=> b!6596187 (=> res!2704679 e!3991462)))

(assert (=> b!6596187 (= res!2704679 (not ((_ is Cons!65558) (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596188 () Bool)

(declare-fun res!2704669 () Bool)

(assert (=> b!6596188 (=> res!2704669 e!3991463)))

(assert (=> b!6596188 (= res!2704669 (not (matchZipper!2473 z!1189 s!2326)))))

(declare-fun res!2704677 () Bool)

(assert (=> start!645078 (=> (not res!2704677) (not e!3991475))))

(assert (=> start!645078 (= res!2704677 (validRegex!8197 r!7292))))

(assert (=> start!645078 e!3991475))

(assert (=> start!645078 e!3991467))

(declare-fun condSetEmpty!45036 () Bool)

(assert (=> start!645078 (= condSetEmpty!45036 (= z!1189 ((as const (Array Context!11690 Bool)) false)))))

(assert (=> start!645078 setRes!45036))

(assert (=> start!645078 e!3991456))

(declare-fun e!3991452 () Bool)

(assert (=> start!645078 e!3991452))

(declare-fun b!6596158 () Bool)

(assert (=> b!6596158 (= e!3991466 e!3991474)))

(declare-fun res!2704673 () Bool)

(assert (=> b!6596158 (=> res!2704673 e!3991474)))

(assert (=> b!6596158 (= res!2704673 (not (= (unfocusZipper!2203 (Cons!65559 lt!2412226 Nil!65559)) lt!2412236)))))

(assert (=> b!6596158 (= lt!2412236 (Concat!25306 (reg!16790 (regOne!33434 r!7292)) lt!2412229))))

(declare-fun b!6596189 () Bool)

(assert (=> b!6596189 (= e!3991460 e!3991454)))

(declare-fun res!2704653 () Bool)

(assert (=> b!6596189 (=> res!2704653 e!3991454)))

(assert (=> b!6596189 (= res!2704653 (not (matchR!8644 (regTwo!33434 r!7292) s!2326)))))

(assert (=> b!6596189 (= (matchR!8644 lt!2412225 s!2326) (matchZipper!2473 lt!2412209 s!2326))))

(declare-fun lt!2412237 () Unit!159179)

(declare-fun theoremZipperRegexEquiv!883 ((InoxSet Context!11690) List!65683 Regex!16461 List!65684) Unit!159179)

(assert (=> b!6596189 (= lt!2412237 (theoremZipperRegexEquiv!883 lt!2412209 lt!2412204 lt!2412225 s!2326))))

(assert (=> b!6596190 (= e!3991461 e!3991465)))

(declare-fun res!2704670 () Bool)

(assert (=> b!6596190 (=> res!2704670 e!3991465)))

(assert (=> b!6596190 (= res!2704670 (or (and ((_ is ElementMatch!16461) (regOne!33434 r!7292)) (= (c!1214690 (regOne!33434 r!7292)) (h!72008 s!2326))) ((_ is Union!16461) (regOne!33434 r!7292))))))

(declare-fun lt!2412201 () Unit!159179)

(assert (=> b!6596190 (= lt!2412201 e!3991459)))

(declare-fun c!1214689 () Bool)

(assert (=> b!6596190 (= c!1214689 lt!2412202)))

(assert (=> b!6596190 (= lt!2412202 (nullable!6454 (h!72006 (exprs!6345 (h!72007 zl!343)))))))

(assert (=> b!6596190 (= (flatMap!1966 z!1189 lambda!367499) (derivationStepZipperUp!1635 (h!72007 zl!343) (h!72008 s!2326)))))

(declare-fun lt!2412217 () Unit!159179)

(assert (=> b!6596190 (= lt!2412217 (lemmaFlatMapOnSingletonSet!1492 z!1189 (h!72007 zl!343) lambda!367499))))

(assert (=> b!6596190 (= lt!2412224 (derivationStepZipperUp!1635 lt!2412212 (h!72008 s!2326)))))

(assert (=> b!6596190 (= lt!2412234 (derivationStepZipperDown!1709 (h!72006 (exprs!6345 (h!72007 zl!343))) lt!2412212 (h!72008 s!2326)))))

(assert (=> b!6596190 (= lt!2412212 (Context!11691 (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun lt!2412238 () (InoxSet Context!11690))

(assert (=> b!6596190 (= lt!2412238 (derivationStepZipperUp!1635 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343))))) (h!72008 s!2326)))))

(declare-fun b!6596191 () Bool)

(assert (=> b!6596191 (= e!3991457 (matchZipper!2473 lt!2412224 (t!379336 s!2326)))))

(declare-fun b!6596192 () Bool)

(declare-fun tp!1819246 () Bool)

(assert (=> b!6596192 (= e!3991452 (and tp_is_empty!42175 tp!1819246))))

(declare-fun b!6596193 () Bool)

(declare-fun res!2704664 () Bool)

(assert (=> b!6596193 (=> res!2704664 e!3991462)))

(assert (=> b!6596193 (= res!2704664 (not (= r!7292 (generalisedConcat!2058 (exprs!6345 (h!72007 zl!343))))))))

(declare-fun b!6596194 () Bool)

(declare-fun res!2704656 () Bool)

(assert (=> b!6596194 (=> res!2704656 e!3991453)))

(assert (=> b!6596194 (= res!2704656 (not (= lt!2412214 r!7292)))))

(assert (= (and start!645078 res!2704677) b!6596155))

(assert (= (and b!6596155 res!2704667) b!6596175))

(assert (= (and b!6596175 res!2704676) b!6596154))

(assert (= (and b!6596154 (not res!2704650)) b!6596185))

(assert (= (and b!6596185 (not res!2704649)) b!6596193))

(assert (= (and b!6596193 (not res!2704664)) b!6596187))

(assert (= (and b!6596187 (not res!2704679)) b!6596163))

(assert (= (and b!6596163 (not res!2704655)) b!6596164))

(assert (= (and b!6596164 (not res!2704646)) b!6596186))

(assert (= (and b!6596186 (not res!2704659)) b!6596171))

(assert (= (and b!6596171 (not res!2704654)) b!6596190))

(assert (= (and b!6596190 c!1214689) b!6596167))

(assert (= (and b!6596190 (not c!1214689)) b!6596156))

(assert (= (and b!6596167 (not res!2704665)) b!6596191))

(assert (= (and b!6596190 (not res!2704670)) b!6596179))

(assert (= (and b!6596179 res!2704663) b!6596177))

(assert (= (and b!6596179 (not res!2704651)) b!6596152))

(assert (= (and b!6596152 (not res!2704675)) b!6596170))

(assert (= (and b!6596170 (not res!2704678)) b!6596182))

(assert (= (and b!6596182 (not res!2704666)) b!6596168))

(assert (= (and b!6596168 (not res!2704647)) b!6596194))

(assert (= (and b!6596194 (not res!2704656)) b!6596172))

(assert (= (and b!6596172 (not res!2704662)) b!6596158))

(assert (= (and b!6596158 (not res!2704673)) b!6596157))

(assert (= (and b!6596157 (not res!2704658)) b!6596181))

(assert (= (and b!6596181 (not res!2704671)) b!6596173))

(assert (= (and b!6596173 (not res!2704661)) b!6596188))

(assert (= (and b!6596188 (not res!2704669)) b!6596176))

(assert (= (and b!6596176 (not res!2704668)) b!6596159))

(assert (= (and b!6596159 res!2704652) b!6596162))

(assert (= (and b!6596159 (not res!2704680)) b!6596180))

(assert (= (and b!6596180 (not res!2704674)) b!6596183))

(assert (= (and b!6596183 (not res!2704657)) b!6596166))

(assert (= (and b!6596166 (not res!2704660)) b!6596150))

(assert (= (and b!6596150 (not res!2704672)) b!6596161))

(assert (= (and b!6596161 (not res!2704648)) b!6596189))

(assert (= (and b!6596189 (not res!2704653)) b!6596153))

(assert (= (and start!645078 ((_ is ElementMatch!16461) r!7292)) b!6596174))

(assert (= (and start!645078 ((_ is Concat!25306) r!7292)) b!6596184))

(assert (= (and start!645078 ((_ is Star!16461) r!7292)) b!6596151))

(assert (= (and start!645078 ((_ is Union!16461) r!7292)) b!6596165))

(assert (= (and start!645078 condSetEmpty!45036) setIsEmpty!45036))

(assert (= (and start!645078 (not condSetEmpty!45036)) setNonEmpty!45036))

(assert (= setNonEmpty!45036 b!6596160))

(assert (= b!6596169 b!6596178))

(assert (= (and start!645078 ((_ is Cons!65559) zl!343)) b!6596169))

(assert (= (and start!645078 ((_ is Cons!65560) s!2326)) b!6596192))

(declare-fun m!7373382 () Bool)

(assert (=> b!6596150 m!7373382))

(declare-fun m!7373384 () Bool)

(assert (=> b!6596150 m!7373384))

(declare-fun m!7373386 () Bool)

(assert (=> b!6596150 m!7373386))

(declare-fun m!7373388 () Bool)

(assert (=> b!6596161 m!7373388))

(declare-fun m!7373390 () Bool)

(assert (=> b!6596161 m!7373390))

(declare-fun m!7373392 () Bool)

(assert (=> b!6596153 m!7373392))

(declare-fun m!7373394 () Bool)

(assert (=> b!6596153 m!7373394))

(declare-fun m!7373396 () Bool)

(assert (=> b!6596153 m!7373396))

(declare-fun m!7373398 () Bool)

(assert (=> b!6596153 m!7373398))

(declare-fun m!7373400 () Bool)

(assert (=> b!6596185 m!7373400))

(declare-fun m!7373402 () Bool)

(assert (=> b!6596177 m!7373402))

(declare-fun m!7373404 () Bool)

(assert (=> b!6596169 m!7373404))

(declare-fun m!7373406 () Bool)

(assert (=> b!6596162 m!7373406))

(declare-fun m!7373408 () Bool)

(assert (=> b!6596163 m!7373408))

(assert (=> b!6596163 m!7373408))

(declare-fun m!7373410 () Bool)

(assert (=> b!6596163 m!7373410))

(declare-fun m!7373412 () Bool)

(assert (=> b!6596155 m!7373412))

(declare-fun m!7373414 () Bool)

(assert (=> b!6596189 m!7373414))

(declare-fun m!7373416 () Bool)

(assert (=> b!6596189 m!7373416))

(declare-fun m!7373418 () Bool)

(assert (=> b!6596189 m!7373418))

(declare-fun m!7373420 () Bool)

(assert (=> b!6596189 m!7373420))

(declare-fun m!7373422 () Bool)

(assert (=> b!6596193 m!7373422))

(assert (=> b!6596191 m!7373406))

(declare-fun m!7373424 () Bool)

(assert (=> setNonEmpty!45036 m!7373424))

(declare-fun m!7373426 () Bool)

(assert (=> start!645078 m!7373426))

(declare-fun m!7373428 () Bool)

(assert (=> b!6596173 m!7373428))

(declare-fun m!7373430 () Bool)

(assert (=> b!6596173 m!7373430))

(declare-fun m!7373432 () Bool)

(assert (=> b!6596173 m!7373432))

(assert (=> b!6596183 m!7373406))

(declare-fun m!7373434 () Bool)

(assert (=> b!6596158 m!7373434))

(declare-fun m!7373436 () Bool)

(assert (=> b!6596168 m!7373436))

(declare-fun m!7373438 () Bool)

(assert (=> b!6596168 m!7373438))

(declare-fun m!7373440 () Bool)

(assert (=> b!6596157 m!7373440))

(declare-fun m!7373442 () Bool)

(assert (=> b!6596157 m!7373442))

(declare-fun m!7373444 () Bool)

(assert (=> b!6596157 m!7373444))

(declare-fun m!7373446 () Bool)

(assert (=> b!6596157 m!7373446))

(declare-fun m!7373448 () Bool)

(assert (=> b!6596157 m!7373448))

(declare-fun m!7373450 () Bool)

(assert (=> b!6596157 m!7373450))

(declare-fun m!7373452 () Bool)

(assert (=> b!6596157 m!7373452))

(declare-fun m!7373454 () Bool)

(assert (=> b!6596157 m!7373454))

(declare-fun m!7373456 () Bool)

(assert (=> b!6596157 m!7373456))

(declare-fun m!7373458 () Bool)

(assert (=> b!6596167 m!7373458))

(declare-fun m!7373460 () Bool)

(assert (=> b!6596167 m!7373460))

(declare-fun m!7373462 () Bool)

(assert (=> b!6596167 m!7373462))

(declare-fun m!7373464 () Bool)

(assert (=> b!6596170 m!7373464))

(declare-fun m!7373466 () Bool)

(assert (=> b!6596186 m!7373466))

(declare-fun m!7373468 () Bool)

(assert (=> b!6596186 m!7373468))

(declare-fun m!7373470 () Bool)

(assert (=> b!6596186 m!7373470))

(declare-fun m!7373472 () Bool)

(assert (=> b!6596186 m!7373472))

(declare-fun m!7373474 () Bool)

(assert (=> b!6596186 m!7373474))

(assert (=> b!6596186 m!7373474))

(assert (=> b!6596186 m!7373466))

(declare-fun m!7373476 () Bool)

(assert (=> b!6596186 m!7373476))

(declare-fun m!7373478 () Bool)

(assert (=> b!6596188 m!7373478))

(declare-fun m!7373480 () Bool)

(assert (=> b!6596181 m!7373480))

(declare-fun m!7373482 () Bool)

(assert (=> b!6596154 m!7373482))

(declare-fun m!7373484 () Bool)

(assert (=> b!6596154 m!7373484))

(declare-fun m!7373486 () Bool)

(assert (=> b!6596154 m!7373486))

(assert (=> b!6596159 m!7373460))

(declare-fun m!7373488 () Bool)

(assert (=> b!6596182 m!7373488))

(declare-fun m!7373490 () Bool)

(assert (=> b!6596182 m!7373490))

(declare-fun m!7373492 () Bool)

(assert (=> b!6596182 m!7373492))

(declare-fun m!7373494 () Bool)

(assert (=> b!6596182 m!7373494))

(declare-fun m!7373496 () Bool)

(assert (=> b!6596182 m!7373496))

(declare-fun m!7373498 () Bool)

(assert (=> b!6596175 m!7373498))

(declare-fun m!7373500 () Bool)

(assert (=> b!6596171 m!7373500))

(declare-fun m!7373502 () Bool)

(assert (=> b!6596166 m!7373502))

(declare-fun m!7373504 () Bool)

(assert (=> b!6596166 m!7373504))

(declare-fun m!7373506 () Bool)

(assert (=> b!6596166 m!7373506))

(declare-fun m!7373508 () Bool)

(assert (=> b!6596166 m!7373508))

(declare-fun m!7373510 () Bool)

(assert (=> b!6596166 m!7373510))

(declare-fun m!7373512 () Bool)

(assert (=> b!6596190 m!7373512))

(declare-fun m!7373514 () Bool)

(assert (=> b!6596190 m!7373514))

(declare-fun m!7373516 () Bool)

(assert (=> b!6596190 m!7373516))

(declare-fun m!7373518 () Bool)

(assert (=> b!6596190 m!7373518))

(declare-fun m!7373520 () Bool)

(assert (=> b!6596190 m!7373520))

(declare-fun m!7373522 () Bool)

(assert (=> b!6596190 m!7373522))

(assert (=> b!6596190 m!7373510))

(check-sat (not b!6596170) (not start!645078) (not b!6596182) (not b!6596181) (not b!6596178) (not b!6596163) (not b!6596183) (not b!6596159) (not b!6596151) (not setNonEmpty!45036) (not b!6596158) (not b!6596166) (not b!6596169) tp_is_empty!42175 (not b!6596171) (not b!6596161) (not b!6596192) (not b!6596154) (not b!6596191) (not b!6596165) (not b!6596177) (not b!6596190) (not b!6596175) (not b!6596157) (not b!6596160) (not b!6596162) (not b!6596193) (not b!6596189) (not b!6596173) (not b!6596155) (not b!6596188) (not b!6596153) (not b!6596185) (not b!6596150) (not b!6596167) (not b!6596184) (not b!6596186) (not b!6596168))
(check-sat)
(get-model)

(declare-fun d!2069460 () Bool)

(declare-fun lt!2412263 () Regex!16461)

(assert (=> d!2069460 (validRegex!8197 lt!2412263)))

(assert (=> d!2069460 (= lt!2412263 (generalisedUnion!2305 (unfocusZipperList!1882 (Cons!65559 lt!2412218 Nil!65559))))))

(assert (=> d!2069460 (= (unfocusZipper!2203 (Cons!65559 lt!2412218 Nil!65559)) lt!2412263)))

(declare-fun bs!1691673 () Bool)

(assert (= bs!1691673 d!2069460))

(declare-fun m!7373592 () Bool)

(assert (=> bs!1691673 m!7373592))

(declare-fun m!7373594 () Bool)

(assert (=> bs!1691673 m!7373594))

(assert (=> bs!1691673 m!7373594))

(declare-fun m!7373596 () Bool)

(assert (=> bs!1691673 m!7373596))

(assert (=> b!6596181 d!2069460))

(declare-fun b!6596365 () Bool)

(assert (=> b!6596365 true))

(declare-fun bs!1691674 () Bool)

(declare-fun b!6596367 () Bool)

(assert (= bs!1691674 (and b!6596367 b!6596365)))

(declare-fun lt!2412275 () Int)

(declare-fun lambda!367526 () Int)

(declare-fun lt!2412277 () Int)

(declare-fun lambda!367525 () Int)

(assert (=> bs!1691674 (= (= lt!2412275 lt!2412277) (= lambda!367526 lambda!367525))))

(assert (=> b!6596367 true))

(declare-fun d!2069464 () Bool)

(declare-fun e!3991574 () Bool)

(assert (=> d!2069464 e!3991574))

(declare-fun res!2704735 () Bool)

(assert (=> d!2069464 (=> (not res!2704735) (not e!3991574))))

(assert (=> d!2069464 (= res!2704735 (>= lt!2412275 0))))

(declare-fun e!3991573 () Int)

(assert (=> d!2069464 (= lt!2412275 e!3991573)))

(declare-fun c!1214757 () Bool)

(assert (=> d!2069464 (= c!1214757 ((_ is Cons!65559) zl!343))))

(assert (=> d!2069464 (= (zipperDepth!398 zl!343) lt!2412275)))

(assert (=> b!6596365 (= e!3991573 lt!2412277)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!287 (Context!11690) Int)

(assert (=> b!6596365 (= lt!2412277 (maxBigInt!0 (contextDepth!287 (h!72007 zl!343)) (zipperDepth!398 (t!379335 zl!343))))))

(declare-fun lambda!367524 () Int)

(declare-fun lt!2412278 () Unit!159179)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!271 (List!65683 Int Int Int) Unit!159179)

(assert (=> b!6596365 (= lt!2412278 (lemmaForallContextDepthBiggerThanTransitive!271 (t!379335 zl!343) lt!2412277 (zipperDepth!398 (t!379335 zl!343)) lambda!367524))))

(declare-fun forall!15646 (List!65683 Int) Bool)

(assert (=> b!6596365 (forall!15646 (t!379335 zl!343) lambda!367525)))

(declare-fun lt!2412276 () Unit!159179)

(assert (=> b!6596365 (= lt!2412276 lt!2412278)))

(declare-fun b!6596366 () Bool)

(assert (=> b!6596366 (= e!3991573 0)))

(assert (=> b!6596367 (= e!3991574 (forall!15646 zl!343 lambda!367526))))

(assert (= (and d!2069464 c!1214757) b!6596365))

(assert (= (and d!2069464 (not c!1214757)) b!6596366))

(assert (= (and d!2069464 res!2704735) b!6596367))

(declare-fun m!7373620 () Bool)

(assert (=> b!6596365 m!7373620))

(declare-fun m!7373622 () Bool)

(assert (=> b!6596365 m!7373622))

(declare-fun m!7373624 () Bool)

(assert (=> b!6596365 m!7373624))

(declare-fun m!7373626 () Bool)

(assert (=> b!6596365 m!7373626))

(assert (=> b!6596365 m!7373622))

(declare-fun m!7373628 () Bool)

(assert (=> b!6596365 m!7373628))

(assert (=> b!6596365 m!7373622))

(assert (=> b!6596365 m!7373626))

(declare-fun m!7373630 () Bool)

(assert (=> b!6596367 m!7373630))

(assert (=> b!6596161 d!2069464))

(declare-fun bs!1691675 () Bool)

(declare-fun b!6596370 () Bool)

(assert (= bs!1691675 (and b!6596370 b!6596365)))

(declare-fun lambda!367527 () Int)

(assert (=> bs!1691675 (= lambda!367527 lambda!367524)))

(declare-fun lt!2412281 () Int)

(declare-fun lambda!367528 () Int)

(assert (=> bs!1691675 (= (= lt!2412281 lt!2412277) (= lambda!367528 lambda!367525))))

(declare-fun bs!1691676 () Bool)

(assert (= bs!1691676 (and b!6596370 b!6596367)))

(assert (=> bs!1691676 (= (= lt!2412281 lt!2412275) (= lambda!367528 lambda!367526))))

(assert (=> b!6596370 true))

(declare-fun bs!1691677 () Bool)

(declare-fun b!6596372 () Bool)

(assert (= bs!1691677 (and b!6596372 b!6596365)))

(declare-fun lt!2412279 () Int)

(declare-fun lambda!367529 () Int)

(assert (=> bs!1691677 (= (= lt!2412279 lt!2412277) (= lambda!367529 lambda!367525))))

(declare-fun bs!1691678 () Bool)

(assert (= bs!1691678 (and b!6596372 b!6596367)))

(assert (=> bs!1691678 (= (= lt!2412279 lt!2412275) (= lambda!367529 lambda!367526))))

(declare-fun bs!1691679 () Bool)

(assert (= bs!1691679 (and b!6596372 b!6596370)))

(assert (=> bs!1691679 (= (= lt!2412279 lt!2412281) (= lambda!367529 lambda!367528))))

(assert (=> b!6596372 true))

(declare-fun d!2069470 () Bool)

(declare-fun e!3991576 () Bool)

(assert (=> d!2069470 e!3991576))

(declare-fun res!2704736 () Bool)

(assert (=> d!2069470 (=> (not res!2704736) (not e!3991576))))

(assert (=> d!2069470 (= res!2704736 (>= lt!2412279 0))))

(declare-fun e!3991575 () Int)

(assert (=> d!2069470 (= lt!2412279 e!3991575)))

(declare-fun c!1214758 () Bool)

(assert (=> d!2069470 (= c!1214758 ((_ is Cons!65559) lt!2412204))))

(assert (=> d!2069470 (= (zipperDepth!398 lt!2412204) lt!2412279)))

(assert (=> b!6596370 (= e!3991575 lt!2412281)))

(assert (=> b!6596370 (= lt!2412281 (maxBigInt!0 (contextDepth!287 (h!72007 lt!2412204)) (zipperDepth!398 (t!379335 lt!2412204))))))

(declare-fun lt!2412282 () Unit!159179)

(assert (=> b!6596370 (= lt!2412282 (lemmaForallContextDepthBiggerThanTransitive!271 (t!379335 lt!2412204) lt!2412281 (zipperDepth!398 (t!379335 lt!2412204)) lambda!367527))))

(assert (=> b!6596370 (forall!15646 (t!379335 lt!2412204) lambda!367528)))

(declare-fun lt!2412280 () Unit!159179)

(assert (=> b!6596370 (= lt!2412280 lt!2412282)))

(declare-fun b!6596371 () Bool)

(assert (=> b!6596371 (= e!3991575 0)))

(assert (=> b!6596372 (= e!3991576 (forall!15646 lt!2412204 lambda!367529))))

(assert (= (and d!2069470 c!1214758) b!6596370))

(assert (= (and d!2069470 (not c!1214758)) b!6596371))

(assert (= (and d!2069470 res!2704736) b!6596372))

(declare-fun m!7373632 () Bool)

(assert (=> b!6596370 m!7373632))

(declare-fun m!7373634 () Bool)

(assert (=> b!6596370 m!7373634))

(declare-fun m!7373636 () Bool)

(assert (=> b!6596370 m!7373636))

(declare-fun m!7373638 () Bool)

(assert (=> b!6596370 m!7373638))

(assert (=> b!6596370 m!7373634))

(declare-fun m!7373640 () Bool)

(assert (=> b!6596370 m!7373640))

(assert (=> b!6596370 m!7373634))

(assert (=> b!6596370 m!7373638))

(declare-fun m!7373642 () Bool)

(assert (=> b!6596372 m!7373642))

(assert (=> b!6596161 d!2069470))

(declare-fun d!2069472 () Bool)

(declare-fun choose!49211 ((InoxSet Context!11690) Int) (InoxSet Context!11690))

(assert (=> d!2069472 (= (flatMap!1966 lt!2412221 lambda!367499) (choose!49211 lt!2412221 lambda!367499))))

(declare-fun bs!1691680 () Bool)

(assert (= bs!1691680 d!2069472))

(declare-fun m!7373644 () Bool)

(assert (=> bs!1691680 m!7373644))

(assert (=> b!6596182 d!2069472))

(declare-fun call!576712 () (InoxSet Context!11690))

(declare-fun e!3991609 () (InoxSet Context!11690))

(declare-fun b!6596426 () Bool)

(assert (=> b!6596426 (= e!3991609 ((_ map or) call!576712 (derivationStepZipperUp!1635 (Context!11691 (t!379334 (exprs!6345 lt!2412226))) (h!72008 s!2326))))))

(declare-fun b!6596427 () Bool)

(declare-fun e!3991610 () (InoxSet Context!11690))

(assert (=> b!6596427 (= e!3991609 e!3991610)))

(declare-fun c!1214776 () Bool)

(assert (=> b!6596427 (= c!1214776 ((_ is Cons!65558) (exprs!6345 lt!2412226)))))

(declare-fun b!6596428 () Bool)

(declare-fun e!3991608 () Bool)

(assert (=> b!6596428 (= e!3991608 (nullable!6454 (h!72006 (exprs!6345 lt!2412226))))))

(declare-fun b!6596429 () Bool)

(assert (=> b!6596429 (= e!3991610 call!576712)))

(declare-fun d!2069474 () Bool)

(declare-fun c!1214775 () Bool)

(assert (=> d!2069474 (= c!1214775 e!3991608)))

(declare-fun res!2704758 () Bool)

(assert (=> d!2069474 (=> (not res!2704758) (not e!3991608))))

(assert (=> d!2069474 (= res!2704758 ((_ is Cons!65558) (exprs!6345 lt!2412226)))))

(assert (=> d!2069474 (= (derivationStepZipperUp!1635 lt!2412226 (h!72008 s!2326)) e!3991609)))

(declare-fun b!6596430 () Bool)

(assert (=> b!6596430 (= e!3991610 ((as const (Array Context!11690 Bool)) false))))

(declare-fun bm!576707 () Bool)

(assert (=> bm!576707 (= call!576712 (derivationStepZipperDown!1709 (h!72006 (exprs!6345 lt!2412226)) (Context!11691 (t!379334 (exprs!6345 lt!2412226))) (h!72008 s!2326)))))

(assert (= (and d!2069474 res!2704758) b!6596428))

(assert (= (and d!2069474 c!1214775) b!6596426))

(assert (= (and d!2069474 (not c!1214775)) b!6596427))

(assert (= (and b!6596427 c!1214776) b!6596429))

(assert (= (and b!6596427 (not c!1214776)) b!6596430))

(assert (= (or b!6596426 b!6596429) bm!576707))

(declare-fun m!7373646 () Bool)

(assert (=> b!6596426 m!7373646))

(declare-fun m!7373648 () Bool)

(assert (=> b!6596428 m!7373648))

(declare-fun m!7373650 () Bool)

(assert (=> bm!576707 m!7373650))

(assert (=> b!6596182 d!2069474))

(declare-fun d!2069476 () Bool)

(declare-fun dynLambda!26107 (Int Context!11690) (InoxSet Context!11690))

(assert (=> d!2069476 (= (flatMap!1966 lt!2412221 lambda!367499) (dynLambda!26107 lambda!367499 lt!2412226))))

(declare-fun lt!2412287 () Unit!159179)

(declare-fun choose!49212 ((InoxSet Context!11690) Context!11690 Int) Unit!159179)

(assert (=> d!2069476 (= lt!2412287 (choose!49212 lt!2412221 lt!2412226 lambda!367499))))

(assert (=> d!2069476 (= lt!2412221 (store ((as const (Array Context!11690 Bool)) false) lt!2412226 true))))

(assert (=> d!2069476 (= (lemmaFlatMapOnSingletonSet!1492 lt!2412221 lt!2412226 lambda!367499) lt!2412287)))

(declare-fun b_lambda!249697 () Bool)

(assert (=> (not b_lambda!249697) (not d!2069476)))

(declare-fun bs!1691685 () Bool)

(assert (= bs!1691685 d!2069476))

(assert (=> bs!1691685 m!7373496))

(declare-fun m!7373660 () Bool)

(assert (=> bs!1691685 m!7373660))

(declare-fun m!7373662 () Bool)

(assert (=> bs!1691685 m!7373662))

(assert (=> bs!1691685 m!7373494))

(assert (=> b!6596182 d!2069476))

(declare-fun bs!1691688 () Bool)

(declare-fun d!2069482 () Bool)

(assert (= bs!1691688 (and d!2069482 b!6596190)))

(declare-fun lambda!367538 () Int)

(assert (=> bs!1691688 (= lambda!367538 lambda!367499)))

(assert (=> d!2069482 true))

(assert (=> d!2069482 (= (derivationStepZipper!2427 lt!2412221 (h!72008 s!2326)) (flatMap!1966 lt!2412221 lambda!367538))))

(declare-fun bs!1691689 () Bool)

(assert (= bs!1691689 d!2069482))

(declare-fun m!7373668 () Bool)

(assert (=> bs!1691689 m!7373668))

(assert (=> b!6596182 d!2069482))

(declare-fun d!2069488 () Bool)

(declare-fun c!1214796 () Bool)

(declare-fun isEmpty!37824 (List!65684) Bool)

(assert (=> d!2069488 (= c!1214796 (isEmpty!37824 (t!379336 s!2326)))))

(declare-fun e!3991634 () Bool)

(assert (=> d!2069488 (= (matchZipper!2473 lt!2412224 (t!379336 s!2326)) e!3991634)))

(declare-fun b!6596473 () Bool)

(declare-fun nullableZipper!2206 ((InoxSet Context!11690)) Bool)

(assert (=> b!6596473 (= e!3991634 (nullableZipper!2206 lt!2412224))))

(declare-fun b!6596474 () Bool)

(declare-fun head!13373 (List!65684) C!33192)

(declare-fun tail!12458 (List!65684) List!65684)

(assert (=> b!6596474 (= e!3991634 (matchZipper!2473 (derivationStepZipper!2427 lt!2412224 (head!13373 (t!379336 s!2326))) (tail!12458 (t!379336 s!2326))))))

(assert (= (and d!2069488 c!1214796) b!6596473))

(assert (= (and d!2069488 (not c!1214796)) b!6596474))

(declare-fun m!7373694 () Bool)

(assert (=> d!2069488 m!7373694))

(declare-fun m!7373696 () Bool)

(assert (=> b!6596473 m!7373696))

(declare-fun m!7373698 () Bool)

(assert (=> b!6596474 m!7373698))

(assert (=> b!6596474 m!7373698))

(declare-fun m!7373700 () Bool)

(assert (=> b!6596474 m!7373700))

(declare-fun m!7373702 () Bool)

(assert (=> b!6596474 m!7373702))

(assert (=> b!6596474 m!7373700))

(assert (=> b!6596474 m!7373702))

(declare-fun m!7373704 () Bool)

(assert (=> b!6596474 m!7373704))

(assert (=> b!6596183 d!2069488))

(assert (=> b!6596162 d!2069488))

(declare-fun b!6596517 () Bool)

(declare-fun e!3991663 () Bool)

(declare-fun lt!2412303 () Regex!16461)

(declare-fun isEmptyLang!1848 (Regex!16461) Bool)

(assert (=> b!6596517 (= e!3991663 (isEmptyLang!1848 lt!2412303))))

(declare-fun b!6596518 () Bool)

(declare-fun e!3991662 () Bool)

(assert (=> b!6596518 (= e!3991662 (isEmpty!37821 (t!379334 (unfocusZipperList!1882 zl!343))))))

(declare-fun d!2069498 () Bool)

(declare-fun e!3991659 () Bool)

(assert (=> d!2069498 e!3991659))

(declare-fun res!2704779 () Bool)

(assert (=> d!2069498 (=> (not res!2704779) (not e!3991659))))

(assert (=> d!2069498 (= res!2704779 (validRegex!8197 lt!2412303))))

(declare-fun e!3991661 () Regex!16461)

(assert (=> d!2069498 (= lt!2412303 e!3991661)))

(declare-fun c!1214811 () Bool)

(assert (=> d!2069498 (= c!1214811 e!3991662)))

(declare-fun res!2704780 () Bool)

(assert (=> d!2069498 (=> (not res!2704780) (not e!3991662))))

(assert (=> d!2069498 (= res!2704780 ((_ is Cons!65558) (unfocusZipperList!1882 zl!343)))))

(declare-fun lambda!367541 () Int)

(declare-fun forall!15647 (List!65682 Int) Bool)

(assert (=> d!2069498 (forall!15647 (unfocusZipperList!1882 zl!343) lambda!367541)))

(assert (=> d!2069498 (= (generalisedUnion!2305 (unfocusZipperList!1882 zl!343)) lt!2412303)))

(declare-fun b!6596519 () Bool)

(declare-fun e!3991664 () Bool)

(declare-fun isUnion!1278 (Regex!16461) Bool)

(assert (=> b!6596519 (= e!3991664 (isUnion!1278 lt!2412303))))

(declare-fun b!6596520 () Bool)

(declare-fun e!3991660 () Regex!16461)

(assert (=> b!6596520 (= e!3991661 e!3991660)))

(declare-fun c!1214813 () Bool)

(assert (=> b!6596520 (= c!1214813 ((_ is Cons!65558) (unfocusZipperList!1882 zl!343)))))

(declare-fun b!6596521 () Bool)

(assert (=> b!6596521 (= e!3991659 e!3991663)))

(declare-fun c!1214812 () Bool)

(assert (=> b!6596521 (= c!1214812 (isEmpty!37821 (unfocusZipperList!1882 zl!343)))))

(declare-fun b!6596522 () Bool)

(assert (=> b!6596522 (= e!3991660 EmptyLang!16461)))

(declare-fun b!6596523 () Bool)

(assert (=> b!6596523 (= e!3991661 (h!72006 (unfocusZipperList!1882 zl!343)))))

(declare-fun b!6596524 () Bool)

(assert (=> b!6596524 (= e!3991660 (Union!16461 (h!72006 (unfocusZipperList!1882 zl!343)) (generalisedUnion!2305 (t!379334 (unfocusZipperList!1882 zl!343)))))))

(declare-fun b!6596525 () Bool)

(declare-fun head!13374 (List!65682) Regex!16461)

(assert (=> b!6596525 (= e!3991664 (= lt!2412303 (head!13374 (unfocusZipperList!1882 zl!343))))))

(declare-fun b!6596526 () Bool)

(assert (=> b!6596526 (= e!3991663 e!3991664)))

(declare-fun c!1214814 () Bool)

(declare-fun tail!12459 (List!65682) List!65682)

(assert (=> b!6596526 (= c!1214814 (isEmpty!37821 (tail!12459 (unfocusZipperList!1882 zl!343))))))

(assert (= (and d!2069498 res!2704780) b!6596518))

(assert (= (and d!2069498 c!1214811) b!6596523))

(assert (= (and d!2069498 (not c!1214811)) b!6596520))

(assert (= (and b!6596520 c!1214813) b!6596524))

(assert (= (and b!6596520 (not c!1214813)) b!6596522))

(assert (= (and d!2069498 res!2704779) b!6596521))

(assert (= (and b!6596521 c!1214812) b!6596517))

(assert (= (and b!6596521 (not c!1214812)) b!6596526))

(assert (= (and b!6596526 c!1214814) b!6596525))

(assert (= (and b!6596526 (not c!1214814)) b!6596519))

(assert (=> b!6596526 m!7373408))

(declare-fun m!7373732 () Bool)

(assert (=> b!6596526 m!7373732))

(assert (=> b!6596526 m!7373732))

(declare-fun m!7373734 () Bool)

(assert (=> b!6596526 m!7373734))

(declare-fun m!7373736 () Bool)

(assert (=> b!6596524 m!7373736))

(declare-fun m!7373738 () Bool)

(assert (=> b!6596517 m!7373738))

(assert (=> b!6596525 m!7373408))

(declare-fun m!7373740 () Bool)

(assert (=> b!6596525 m!7373740))

(declare-fun m!7373742 () Bool)

(assert (=> b!6596519 m!7373742))

(declare-fun m!7373744 () Bool)

(assert (=> d!2069498 m!7373744))

(assert (=> d!2069498 m!7373408))

(declare-fun m!7373746 () Bool)

(assert (=> d!2069498 m!7373746))

(declare-fun m!7373748 () Bool)

(assert (=> b!6596518 m!7373748))

(assert (=> b!6596521 m!7373408))

(declare-fun m!7373750 () Bool)

(assert (=> b!6596521 m!7373750))

(assert (=> b!6596163 d!2069498))

(declare-fun bs!1691694 () Bool)

(declare-fun d!2069508 () Bool)

(assert (= bs!1691694 (and d!2069508 d!2069498)))

(declare-fun lambda!367544 () Int)

(assert (=> bs!1691694 (= lambda!367544 lambda!367541)))

(declare-fun lt!2412309 () List!65682)

(assert (=> d!2069508 (forall!15647 lt!2412309 lambda!367544)))

(declare-fun e!3991672 () List!65682)

(assert (=> d!2069508 (= lt!2412309 e!3991672)))

(declare-fun c!1214819 () Bool)

(assert (=> d!2069508 (= c!1214819 ((_ is Cons!65559) zl!343))))

(assert (=> d!2069508 (= (unfocusZipperList!1882 zl!343) lt!2412309)))

(declare-fun b!6596540 () Bool)

(assert (=> b!6596540 (= e!3991672 (Cons!65558 (generalisedConcat!2058 (exprs!6345 (h!72007 zl!343))) (unfocusZipperList!1882 (t!379335 zl!343))))))

(declare-fun b!6596541 () Bool)

(assert (=> b!6596541 (= e!3991672 Nil!65558)))

(assert (= (and d!2069508 c!1214819) b!6596540))

(assert (= (and d!2069508 (not c!1214819)) b!6596541))

(declare-fun m!7373778 () Bool)

(assert (=> d!2069508 m!7373778))

(assert (=> b!6596540 m!7373422))

(declare-fun m!7373780 () Bool)

(assert (=> b!6596540 m!7373780))

(assert (=> b!6596163 d!2069508))

(declare-fun d!2069516 () Bool)

(declare-fun e!3991677 () Bool)

(assert (=> d!2069516 e!3991677))

(declare-fun res!2704792 () Bool)

(assert (=> d!2069516 (=> (not res!2704792) (not e!3991677))))

(declare-fun lt!2412315 () List!65683)

(declare-fun noDuplicate!2265 (List!65683) Bool)

(assert (=> d!2069516 (= res!2704792 (noDuplicate!2265 lt!2412315))))

(declare-fun choose!49215 ((InoxSet Context!11690)) List!65683)

(assert (=> d!2069516 (= lt!2412315 (choose!49215 z!1189))))

(assert (=> d!2069516 (= (toList!10245 z!1189) lt!2412315)))

(declare-fun b!6596548 () Bool)

(declare-fun content!12637 (List!65683) (InoxSet Context!11690))

(assert (=> b!6596548 (= e!3991677 (= (content!12637 lt!2412315) z!1189))))

(assert (= (and d!2069516 res!2704792) b!6596548))

(declare-fun m!7373782 () Bool)

(assert (=> d!2069516 m!7373782))

(declare-fun m!7373784 () Bool)

(assert (=> d!2069516 m!7373784))

(declare-fun m!7373786 () Bool)

(assert (=> b!6596548 m!7373786))

(assert (=> b!6596155 d!2069516))

(declare-fun d!2069518 () Bool)

(declare-fun lt!2412316 () Regex!16461)

(assert (=> d!2069518 (validRegex!8197 lt!2412316)))

(assert (=> d!2069518 (= lt!2412316 (generalisedUnion!2305 (unfocusZipperList!1882 zl!343)))))

(assert (=> d!2069518 (= (unfocusZipper!2203 zl!343) lt!2412316)))

(declare-fun bs!1691696 () Bool)

(assert (= bs!1691696 d!2069518))

(declare-fun m!7373788 () Bool)

(assert (=> bs!1691696 m!7373788))

(assert (=> bs!1691696 m!7373408))

(assert (=> bs!1691696 m!7373408))

(assert (=> bs!1691696 m!7373410))

(assert (=> b!6596175 d!2069518))

(declare-fun b!6596575 () Bool)

(declare-fun res!2704813 () Bool)

(declare-fun e!3991698 () Bool)

(assert (=> b!6596575 (=> res!2704813 e!3991698)))

(assert (=> b!6596575 (= res!2704813 (not ((_ is Concat!25306) r!7292)))))

(declare-fun e!3991700 () Bool)

(assert (=> b!6596575 (= e!3991700 e!3991698)))

(declare-fun b!6596576 () Bool)

(declare-fun e!3991699 () Bool)

(declare-fun e!3991702 () Bool)

(assert (=> b!6596576 (= e!3991699 e!3991702)))

(declare-fun c!1214825 () Bool)

(assert (=> b!6596576 (= c!1214825 ((_ is Star!16461) r!7292))))

(declare-fun b!6596577 () Bool)

(declare-fun e!3991697 () Bool)

(declare-fun call!576730 () Bool)

(assert (=> b!6596577 (= e!3991697 call!576730)))

(declare-fun bm!576725 () Bool)

(declare-fun c!1214824 () Bool)

(assert (=> bm!576725 (= call!576730 (validRegex!8197 (ite c!1214824 (regTwo!33435 r!7292) (regTwo!33434 r!7292))))))

(declare-fun b!6596578 () Bool)

(declare-fun e!3991696 () Bool)

(declare-fun call!576732 () Bool)

(assert (=> b!6596578 (= e!3991696 call!576732)))

(declare-fun b!6596579 () Bool)

(declare-fun e!3991701 () Bool)

(assert (=> b!6596579 (= e!3991701 call!576730)))

(declare-fun b!6596580 () Bool)

(assert (=> b!6596580 (= e!3991698 e!3991697)))

(declare-fun res!2704815 () Bool)

(assert (=> b!6596580 (=> (not res!2704815) (not e!3991697))))

(declare-fun call!576731 () Bool)

(assert (=> b!6596580 (= res!2704815 call!576731)))

(declare-fun b!6596581 () Bool)

(declare-fun res!2704811 () Bool)

(assert (=> b!6596581 (=> (not res!2704811) (not e!3991701))))

(assert (=> b!6596581 (= res!2704811 call!576731)))

(assert (=> b!6596581 (= e!3991700 e!3991701)))

(declare-fun b!6596582 () Bool)

(assert (=> b!6596582 (= e!3991702 e!3991696)))

(declare-fun res!2704812 () Bool)

(assert (=> b!6596582 (= res!2704812 (not (nullable!6454 (reg!16790 r!7292))))))

(assert (=> b!6596582 (=> (not res!2704812) (not e!3991696))))

(declare-fun d!2069520 () Bool)

(declare-fun res!2704814 () Bool)

(assert (=> d!2069520 (=> res!2704814 e!3991699)))

(assert (=> d!2069520 (= res!2704814 ((_ is ElementMatch!16461) r!7292))))

(assert (=> d!2069520 (= (validRegex!8197 r!7292) e!3991699)))

(declare-fun bm!576726 () Bool)

(assert (=> bm!576726 (= call!576732 (validRegex!8197 (ite c!1214825 (reg!16790 r!7292) (ite c!1214824 (regOne!33435 r!7292) (regOne!33434 r!7292)))))))

(declare-fun bm!576727 () Bool)

(assert (=> bm!576727 (= call!576731 call!576732)))

(declare-fun b!6596583 () Bool)

(assert (=> b!6596583 (= e!3991702 e!3991700)))

(assert (=> b!6596583 (= c!1214824 ((_ is Union!16461) r!7292))))

(assert (= (and d!2069520 (not res!2704814)) b!6596576))

(assert (= (and b!6596576 c!1214825) b!6596582))

(assert (= (and b!6596576 (not c!1214825)) b!6596583))

(assert (= (and b!6596582 res!2704812) b!6596578))

(assert (= (and b!6596583 c!1214824) b!6596581))

(assert (= (and b!6596583 (not c!1214824)) b!6596575))

(assert (= (and b!6596581 res!2704811) b!6596579))

(assert (= (and b!6596575 (not res!2704813)) b!6596580))

(assert (= (and b!6596580 res!2704815) b!6596577))

(assert (= (or b!6596579 b!6596577) bm!576725))

(assert (= (or b!6596581 b!6596580) bm!576727))

(assert (= (or b!6596578 bm!576727) bm!576726))

(declare-fun m!7373794 () Bool)

(assert (=> bm!576725 m!7373794))

(declare-fun m!7373796 () Bool)

(assert (=> b!6596582 m!7373796))

(declare-fun m!7373798 () Bool)

(assert (=> bm!576726 m!7373798))

(assert (=> start!645078 d!2069520))

(declare-fun bs!1691704 () Bool)

(declare-fun d!2069524 () Bool)

(assert (= bs!1691704 (and d!2069524 d!2069498)))

(declare-fun lambda!367555 () Int)

(assert (=> bs!1691704 (= lambda!367555 lambda!367541)))

(declare-fun bs!1691705 () Bool)

(assert (= bs!1691705 (and d!2069524 d!2069508)))

(assert (=> bs!1691705 (= lambda!367555 lambda!367544)))

(assert (=> d!2069524 (= (inv!84399 setElem!45036) (forall!15647 (exprs!6345 setElem!45036) lambda!367555))))

(declare-fun bs!1691706 () Bool)

(assert (= bs!1691706 d!2069524))

(declare-fun m!7373800 () Bool)

(assert (=> bs!1691706 m!7373800))

(assert (=> setNonEmpty!45036 d!2069524))

(declare-fun d!2069526 () Bool)

(declare-fun nullableFct!2380 (Regex!16461) Bool)

(assert (=> d!2069526 (= (nullable!6454 (regOne!33434 (regOne!33434 r!7292))) (nullableFct!2380 (regOne!33434 (regOne!33434 r!7292))))))

(declare-fun bs!1691708 () Bool)

(assert (= bs!1691708 d!2069526))

(declare-fun m!7373802 () Bool)

(assert (=> bs!1691708 m!7373802))

(assert (=> b!6596177 d!2069526))

(declare-fun d!2069528 () Bool)

(assert (=> d!2069528 (= (flatMap!1966 lt!2412205 lambda!367499) (dynLambda!26107 lambda!367499 lt!2412218))))

(declare-fun lt!2412320 () Unit!159179)

(assert (=> d!2069528 (= lt!2412320 (choose!49212 lt!2412205 lt!2412218 lambda!367499))))

(assert (=> d!2069528 (= lt!2412205 (store ((as const (Array Context!11690 Bool)) false) lt!2412218 true))))

(assert (=> d!2069528 (= (lemmaFlatMapOnSingletonSet!1492 lt!2412205 lt!2412218 lambda!367499) lt!2412320)))

(declare-fun b_lambda!249701 () Bool)

(assert (=> (not b_lambda!249701) (not d!2069528)))

(declare-fun bs!1691709 () Bool)

(assert (= bs!1691709 d!2069528))

(assert (=> bs!1691709 m!7373452))

(declare-fun m!7373804 () Bool)

(assert (=> bs!1691709 m!7373804))

(declare-fun m!7373806 () Bool)

(assert (=> bs!1691709 m!7373806))

(assert (=> bs!1691709 m!7373450))

(assert (=> b!6596157 d!2069528))

(declare-fun d!2069530 () Bool)

(assert (=> d!2069530 (= (flatMap!1966 lt!2412205 lambda!367499) (choose!49211 lt!2412205 lambda!367499))))

(declare-fun bs!1691710 () Bool)

(assert (= bs!1691710 d!2069530))

(declare-fun m!7373808 () Bool)

(assert (=> bs!1691710 m!7373808))

(assert (=> b!6596157 d!2069530))

(declare-fun call!576733 () (InoxSet Context!11690))

(declare-fun b!6596584 () Bool)

(declare-fun e!3991704 () (InoxSet Context!11690))

(assert (=> b!6596584 (= e!3991704 ((_ map or) call!576733 (derivationStepZipperUp!1635 (Context!11691 (t!379334 (exprs!6345 lt!2412218))) (h!72008 s!2326))))))

(declare-fun b!6596585 () Bool)

(declare-fun e!3991705 () (InoxSet Context!11690))

(assert (=> b!6596585 (= e!3991704 e!3991705)))

(declare-fun c!1214827 () Bool)

(assert (=> b!6596585 (= c!1214827 ((_ is Cons!65558) (exprs!6345 lt!2412218)))))

(declare-fun b!6596586 () Bool)

(declare-fun e!3991703 () Bool)

(assert (=> b!6596586 (= e!3991703 (nullable!6454 (h!72006 (exprs!6345 lt!2412218))))))

(declare-fun b!6596587 () Bool)

(assert (=> b!6596587 (= e!3991705 call!576733)))

(declare-fun d!2069532 () Bool)

(declare-fun c!1214826 () Bool)

(assert (=> d!2069532 (= c!1214826 e!3991703)))

(declare-fun res!2704816 () Bool)

(assert (=> d!2069532 (=> (not res!2704816) (not e!3991703))))

(assert (=> d!2069532 (= res!2704816 ((_ is Cons!65558) (exprs!6345 lt!2412218)))))

(assert (=> d!2069532 (= (derivationStepZipperUp!1635 lt!2412218 (h!72008 s!2326)) e!3991704)))

(declare-fun b!6596588 () Bool)

(assert (=> b!6596588 (= e!3991705 ((as const (Array Context!11690 Bool)) false))))

(declare-fun bm!576728 () Bool)

(assert (=> bm!576728 (= call!576733 (derivationStepZipperDown!1709 (h!72006 (exprs!6345 lt!2412218)) (Context!11691 (t!379334 (exprs!6345 lt!2412218))) (h!72008 s!2326)))))

(assert (= (and d!2069532 res!2704816) b!6596586))

(assert (= (and d!2069532 c!1214826) b!6596584))

(assert (= (and d!2069532 (not c!1214826)) b!6596585))

(assert (= (and b!6596585 c!1214827) b!6596587))

(assert (= (and b!6596585 (not c!1214827)) b!6596588))

(assert (= (or b!6596584 b!6596587) bm!576728))

(declare-fun m!7373816 () Bool)

(assert (=> b!6596584 m!7373816))

(declare-fun m!7373818 () Bool)

(assert (=> b!6596586 m!7373818))

(declare-fun m!7373820 () Bool)

(assert (=> bm!576728 m!7373820))

(assert (=> b!6596157 d!2069532))

(declare-fun d!2069536 () Bool)

(declare-fun lt!2412321 () Regex!16461)

(assert (=> d!2069536 (validRegex!8197 lt!2412321)))

(assert (=> d!2069536 (= lt!2412321 (generalisedUnion!2305 (unfocusZipperList!1882 (Cons!65559 lt!2412200 Nil!65559))))))

(assert (=> d!2069536 (= (unfocusZipper!2203 (Cons!65559 lt!2412200 Nil!65559)) lt!2412321)))

(declare-fun bs!1691711 () Bool)

(assert (= bs!1691711 d!2069536))

(declare-fun m!7373822 () Bool)

(assert (=> bs!1691711 m!7373822))

(declare-fun m!7373824 () Bool)

(assert (=> bs!1691711 m!7373824))

(assert (=> bs!1691711 m!7373824))

(declare-fun m!7373826 () Bool)

(assert (=> bs!1691711 m!7373826))

(assert (=> b!6596157 d!2069536))

(declare-fun d!2069538 () Bool)

(assert (=> d!2069538 (= (flatMap!1966 lt!2412210 lambda!367499) (choose!49211 lt!2412210 lambda!367499))))

(declare-fun bs!1691712 () Bool)

(assert (= bs!1691712 d!2069538))

(declare-fun m!7373828 () Bool)

(assert (=> bs!1691712 m!7373828))

(assert (=> b!6596157 d!2069538))

(declare-fun d!2069540 () Bool)

(assert (=> d!2069540 (= (flatMap!1966 lt!2412210 lambda!367499) (dynLambda!26107 lambda!367499 lt!2412200))))

(declare-fun lt!2412322 () Unit!159179)

(assert (=> d!2069540 (= lt!2412322 (choose!49212 lt!2412210 lt!2412200 lambda!367499))))

(assert (=> d!2069540 (= lt!2412210 (store ((as const (Array Context!11690 Bool)) false) lt!2412200 true))))

(assert (=> d!2069540 (= (lemmaFlatMapOnSingletonSet!1492 lt!2412210 lt!2412200 lambda!367499) lt!2412322)))

(declare-fun b_lambda!249703 () Bool)

(assert (=> (not b_lambda!249703) (not d!2069540)))

(declare-fun bs!1691714 () Bool)

(assert (= bs!1691714 d!2069540))

(assert (=> bs!1691714 m!7373448))

(declare-fun m!7373832 () Bool)

(assert (=> bs!1691714 m!7373832))

(declare-fun m!7373834 () Bool)

(assert (=> bs!1691714 m!7373834))

(assert (=> bs!1691714 m!7373454))

(assert (=> b!6596157 d!2069540))

(declare-fun b!6596589 () Bool)

(declare-fun e!3991707 () (InoxSet Context!11690))

(declare-fun call!576734 () (InoxSet Context!11690))

(assert (=> b!6596589 (= e!3991707 ((_ map or) call!576734 (derivationStepZipperUp!1635 (Context!11691 (t!379334 (exprs!6345 lt!2412200))) (h!72008 s!2326))))))

(declare-fun b!6596590 () Bool)

(declare-fun e!3991708 () (InoxSet Context!11690))

(assert (=> b!6596590 (= e!3991707 e!3991708)))

(declare-fun c!1214829 () Bool)

(assert (=> b!6596590 (= c!1214829 ((_ is Cons!65558) (exprs!6345 lt!2412200)))))

(declare-fun b!6596591 () Bool)

(declare-fun e!3991706 () Bool)

(assert (=> b!6596591 (= e!3991706 (nullable!6454 (h!72006 (exprs!6345 lt!2412200))))))

(declare-fun b!6596592 () Bool)

(assert (=> b!6596592 (= e!3991708 call!576734)))

(declare-fun d!2069544 () Bool)

(declare-fun c!1214828 () Bool)

(assert (=> d!2069544 (= c!1214828 e!3991706)))

(declare-fun res!2704817 () Bool)

(assert (=> d!2069544 (=> (not res!2704817) (not e!3991706))))

(assert (=> d!2069544 (= res!2704817 ((_ is Cons!65558) (exprs!6345 lt!2412200)))))

(assert (=> d!2069544 (= (derivationStepZipperUp!1635 lt!2412200 (h!72008 s!2326)) e!3991707)))

(declare-fun b!6596593 () Bool)

(assert (=> b!6596593 (= e!3991708 ((as const (Array Context!11690 Bool)) false))))

(declare-fun bm!576729 () Bool)

(assert (=> bm!576729 (= call!576734 (derivationStepZipperDown!1709 (h!72006 (exprs!6345 lt!2412200)) (Context!11691 (t!379334 (exprs!6345 lt!2412200))) (h!72008 s!2326)))))

(assert (= (and d!2069544 res!2704817) b!6596591))

(assert (= (and d!2069544 c!1214828) b!6596589))

(assert (= (and d!2069544 (not c!1214828)) b!6596590))

(assert (= (and b!6596590 c!1214829) b!6596592))

(assert (= (and b!6596590 (not c!1214829)) b!6596593))

(assert (= (or b!6596589 b!6596592) bm!576729))

(declare-fun m!7373836 () Bool)

(assert (=> b!6596589 m!7373836))

(declare-fun m!7373838 () Bool)

(assert (=> b!6596591 m!7373838))

(declare-fun m!7373840 () Bool)

(assert (=> bm!576729 m!7373840))

(assert (=> b!6596157 d!2069544))

(declare-fun d!2069546 () Bool)

(declare-fun lt!2412323 () Regex!16461)

(assert (=> d!2069546 (validRegex!8197 lt!2412323)))

(assert (=> d!2069546 (= lt!2412323 (generalisedUnion!2305 (unfocusZipperList!1882 (Cons!65559 lt!2412226 Nil!65559))))))

(assert (=> d!2069546 (= (unfocusZipper!2203 (Cons!65559 lt!2412226 Nil!65559)) lt!2412323)))

(declare-fun bs!1691715 () Bool)

(assert (= bs!1691715 d!2069546))

(declare-fun m!7373842 () Bool)

(assert (=> bs!1691715 m!7373842))

(declare-fun m!7373844 () Bool)

(assert (=> bs!1691715 m!7373844))

(assert (=> bs!1691715 m!7373844))

(declare-fun m!7373846 () Bool)

(assert (=> bs!1691715 m!7373846))

(assert (=> b!6596158 d!2069546))

(declare-fun d!2069548 () Bool)

(declare-fun c!1214830 () Bool)

(assert (=> d!2069548 (= c!1214830 (isEmpty!37824 (t!379336 s!2326)))))

(declare-fun e!3991709 () Bool)

(assert (=> d!2069548 (= (matchZipper!2473 lt!2412234 (t!379336 s!2326)) e!3991709)))

(declare-fun b!6596594 () Bool)

(assert (=> b!6596594 (= e!3991709 (nullableZipper!2206 lt!2412234))))

(declare-fun b!6596595 () Bool)

(assert (=> b!6596595 (= e!3991709 (matchZipper!2473 (derivationStepZipper!2427 lt!2412234 (head!13373 (t!379336 s!2326))) (tail!12458 (t!379336 s!2326))))))

(assert (= (and d!2069548 c!1214830) b!6596594))

(assert (= (and d!2069548 (not c!1214830)) b!6596595))

(assert (=> d!2069548 m!7373694))

(declare-fun m!7373848 () Bool)

(assert (=> b!6596594 m!7373848))

(assert (=> b!6596595 m!7373698))

(assert (=> b!6596595 m!7373698))

(declare-fun m!7373850 () Bool)

(assert (=> b!6596595 m!7373850))

(assert (=> b!6596595 m!7373702))

(assert (=> b!6596595 m!7373850))

(assert (=> b!6596595 m!7373702))

(declare-fun m!7373852 () Bool)

(assert (=> b!6596595 m!7373852))

(assert (=> b!6596159 d!2069548))

(declare-fun bs!1691716 () Bool)

(declare-fun d!2069550 () Bool)

(assert (= bs!1691716 (and d!2069550 d!2069498)))

(declare-fun lambda!367557 () Int)

(assert (=> bs!1691716 (= lambda!367557 lambda!367541)))

(declare-fun bs!1691717 () Bool)

(assert (= bs!1691717 (and d!2069550 d!2069508)))

(assert (=> bs!1691717 (= lambda!367557 lambda!367544)))

(declare-fun bs!1691718 () Bool)

(assert (= bs!1691718 (and d!2069550 d!2069524)))

(assert (=> bs!1691718 (= lambda!367557 lambda!367555)))

(assert (=> d!2069550 (= (inv!84399 (h!72007 zl!343)) (forall!15647 (exprs!6345 (h!72007 zl!343)) lambda!367557))))

(declare-fun bs!1691719 () Bool)

(assert (= bs!1691719 d!2069550))

(declare-fun m!7373854 () Bool)

(assert (=> bs!1691719 m!7373854))

(assert (=> b!6596169 d!2069550))

(declare-fun d!2069552 () Bool)

(declare-fun e!3991767 () Bool)

(assert (=> d!2069552 e!3991767))

(declare-fun res!2704840 () Bool)

(assert (=> d!2069552 (=> (not res!2704840) (not e!3991767))))

(declare-fun lt!2412332 () Int)

(assert (=> d!2069552 (= res!2704840 (> lt!2412332 0))))

(declare-fun e!3991759 () Int)

(assert (=> d!2069552 (= lt!2412332 e!3991759)))

(declare-fun c!1214863 () Bool)

(assert (=> d!2069552 (= c!1214863 ((_ is ElementMatch!16461) r!7292))))

(assert (=> d!2069552 (= (regexDepth!358 r!7292) lt!2412332)))

(declare-fun b!6596672 () Bool)

(declare-fun e!3991761 () Int)

(declare-fun call!576753 () Int)

(assert (=> b!6596672 (= e!3991761 (+ 1 call!576753))))

(declare-fun b!6596673 () Bool)

(declare-fun e!3991758 () Int)

(assert (=> b!6596673 (= e!3991758 1)))

(declare-fun b!6596674 () Bool)

(declare-fun e!3991764 () Bool)

(assert (=> b!6596674 (= e!3991767 e!3991764)))

(declare-fun c!1214864 () Bool)

(assert (=> b!6596674 (= c!1214864 ((_ is Union!16461) r!7292))))

(declare-fun bm!576747 () Bool)

(declare-fun call!576757 () Int)

(declare-fun c!1214866 () Bool)

(assert (=> bm!576747 (= call!576757 (regexDepth!358 (ite c!1214866 (regOne!33435 r!7292) (regTwo!33434 r!7292))))))

(declare-fun bm!576748 () Bool)

(declare-fun call!576754 () Int)

(assert (=> bm!576748 (= call!576754 (regexDepth!358 (ite c!1214864 (regOne!33435 r!7292) (regTwo!33434 r!7292))))))

(declare-fun b!6596675 () Bool)

(declare-fun e!3991765 () Bool)

(assert (=> b!6596675 (= e!3991764 e!3991765)))

(declare-fun c!1214862 () Bool)

(assert (=> b!6596675 (= c!1214862 ((_ is Concat!25306) r!7292))))

(declare-fun call!576756 () Int)

(declare-fun bm!576749 () Bool)

(assert (=> bm!576749 (= call!576756 (regexDepth!358 (ite c!1214864 (regTwo!33435 r!7292) (ite c!1214862 (regOne!33434 r!7292) (reg!16790 r!7292)))))))

(declare-fun b!6596676 () Bool)

(declare-fun e!3991760 () Int)

(assert (=> b!6596676 (= e!3991760 e!3991758)))

(declare-fun c!1214865 () Bool)

(assert (=> b!6596676 (= c!1214865 ((_ is Concat!25306) r!7292))))

(declare-fun b!6596677 () Bool)

(declare-fun e!3991763 () Bool)

(assert (=> b!6596677 (= e!3991764 e!3991763)))

(declare-fun res!2704839 () Bool)

(assert (=> b!6596677 (= res!2704839 (> lt!2412332 call!576754))))

(assert (=> b!6596677 (=> (not res!2704839) (not e!3991763))))

(declare-fun b!6596678 () Bool)

(assert (=> b!6596678 (= e!3991759 1)))

(declare-fun bm!576750 () Bool)

(declare-fun c!1214867 () Bool)

(assert (=> bm!576750 (= call!576753 (regexDepth!358 (ite c!1214867 (reg!16790 r!7292) (ite c!1214866 (regTwo!33435 r!7292) (regOne!33434 r!7292)))))))

(declare-fun b!6596679 () Bool)

(assert (=> b!6596679 (= e!3991759 e!3991761)))

(assert (=> b!6596679 (= c!1214867 ((_ is Star!16461) r!7292))))

(declare-fun bm!576751 () Bool)

(declare-fun call!576755 () Int)

(assert (=> bm!576751 (= call!576755 call!576756)))

(declare-fun b!6596680 () Bool)

(declare-fun e!3991762 () Bool)

(assert (=> b!6596680 (= e!3991762 (> lt!2412332 call!576754))))

(declare-fun b!6596681 () Bool)

(declare-fun c!1214861 () Bool)

(assert (=> b!6596681 (= c!1214861 ((_ is Star!16461) r!7292))))

(declare-fun e!3991766 () Bool)

(assert (=> b!6596681 (= e!3991765 e!3991766)))

(declare-fun bm!576752 () Bool)

(declare-fun call!576758 () Int)

(assert (=> bm!576752 (= call!576758 call!576753)))

(declare-fun b!6596682 () Bool)

(assert (=> b!6596682 (= e!3991766 (> lt!2412332 call!576755))))

(declare-fun b!6596683 () Bool)

(assert (=> b!6596683 (= e!3991766 (= lt!2412332 1))))

(declare-fun b!6596684 () Bool)

(assert (=> b!6596684 (= e!3991763 (> lt!2412332 call!576756))))

(declare-fun b!6596685 () Bool)

(assert (=> b!6596685 (= c!1214866 ((_ is Union!16461) r!7292))))

(assert (=> b!6596685 (= e!3991761 e!3991760)))

(declare-fun b!6596686 () Bool)

(declare-fun res!2704838 () Bool)

(assert (=> b!6596686 (=> (not res!2704838) (not e!3991762))))

(assert (=> b!6596686 (= res!2704838 (> lt!2412332 call!576755))))

(assert (=> b!6596686 (= e!3991765 e!3991762)))

(declare-fun b!6596687 () Bool)

(declare-fun call!576752 () Int)

(assert (=> b!6596687 (= e!3991760 (+ 1 call!576752))))

(declare-fun b!6596688 () Bool)

(assert (=> b!6596688 (= e!3991758 (+ 1 call!576752))))

(declare-fun bm!576753 () Bool)

(assert (=> bm!576753 (= call!576752 (maxBigInt!0 (ite c!1214866 call!576757 call!576758) (ite c!1214866 call!576758 call!576757)))))

(assert (= (and d!2069552 c!1214863) b!6596678))

(assert (= (and d!2069552 (not c!1214863)) b!6596679))

(assert (= (and b!6596679 c!1214867) b!6596672))

(assert (= (and b!6596679 (not c!1214867)) b!6596685))

(assert (= (and b!6596685 c!1214866) b!6596687))

(assert (= (and b!6596685 (not c!1214866)) b!6596676))

(assert (= (and b!6596676 c!1214865) b!6596688))

(assert (= (and b!6596676 (not c!1214865)) b!6596673))

(assert (= (or b!6596687 b!6596688) bm!576752))

(assert (= (or b!6596687 b!6596688) bm!576747))

(assert (= (or b!6596687 b!6596688) bm!576753))

(assert (= (or b!6596672 bm!576752) bm!576750))

(assert (= (and d!2069552 res!2704840) b!6596674))

(assert (= (and b!6596674 c!1214864) b!6596677))

(assert (= (and b!6596674 (not c!1214864)) b!6596675))

(assert (= (and b!6596677 res!2704839) b!6596684))

(assert (= (and b!6596675 c!1214862) b!6596686))

(assert (= (and b!6596675 (not c!1214862)) b!6596681))

(assert (= (and b!6596686 res!2704838) b!6596680))

(assert (= (and b!6596681 c!1214861) b!6596682))

(assert (= (and b!6596681 (not c!1214861)) b!6596683))

(assert (= (or b!6596686 b!6596682) bm!576751))

(assert (= (or b!6596684 bm!576751) bm!576749))

(assert (= (or b!6596677 b!6596680) bm!576748))

(declare-fun m!7373890 () Bool)

(assert (=> bm!576753 m!7373890))

(declare-fun m!7373892 () Bool)

(assert (=> bm!576748 m!7373892))

(declare-fun m!7373896 () Bool)

(assert (=> bm!576750 m!7373896))

(declare-fun m!7373900 () Bool)

(assert (=> bm!576749 m!7373900))

(declare-fun m!7373902 () Bool)

(assert (=> bm!576747 m!7373902))

(assert (=> b!6596150 d!2069552))

(declare-fun d!2069568 () Bool)

(declare-fun e!3991777 () Bool)

(assert (=> d!2069568 e!3991777))

(declare-fun res!2704843 () Bool)

(assert (=> d!2069568 (=> (not res!2704843) (not e!3991777))))

(declare-fun lt!2412334 () Int)

(assert (=> d!2069568 (= res!2704843 (> lt!2412334 0))))

(declare-fun e!3991769 () Int)

(assert (=> d!2069568 (= lt!2412334 e!3991769)))

(declare-fun c!1214870 () Bool)

(assert (=> d!2069568 (= c!1214870 ((_ is ElementMatch!16461) lt!2412225))))

(assert (=> d!2069568 (= (regexDepth!358 lt!2412225) lt!2412334)))

(declare-fun b!6596691 () Bool)

(declare-fun e!3991771 () Int)

(declare-fun call!576760 () Int)

(assert (=> b!6596691 (= e!3991771 (+ 1 call!576760))))

(declare-fun b!6596692 () Bool)

(declare-fun e!3991768 () Int)

(assert (=> b!6596692 (= e!3991768 1)))

(declare-fun b!6596693 () Bool)

(declare-fun e!3991774 () Bool)

(assert (=> b!6596693 (= e!3991777 e!3991774)))

(declare-fun c!1214871 () Bool)

(assert (=> b!6596693 (= c!1214871 ((_ is Union!16461) lt!2412225))))

(declare-fun bm!576754 () Bool)

(declare-fun call!576764 () Int)

(declare-fun c!1214873 () Bool)

(assert (=> bm!576754 (= call!576764 (regexDepth!358 (ite c!1214873 (regOne!33435 lt!2412225) (regTwo!33434 lt!2412225))))))

(declare-fun bm!576755 () Bool)

(declare-fun call!576761 () Int)

(assert (=> bm!576755 (= call!576761 (regexDepth!358 (ite c!1214871 (regOne!33435 lt!2412225) (regTwo!33434 lt!2412225))))))

(declare-fun b!6596694 () Bool)

(declare-fun e!3991775 () Bool)

(assert (=> b!6596694 (= e!3991774 e!3991775)))

(declare-fun c!1214869 () Bool)

(assert (=> b!6596694 (= c!1214869 ((_ is Concat!25306) lt!2412225))))

(declare-fun bm!576756 () Bool)

(declare-fun call!576763 () Int)

(assert (=> bm!576756 (= call!576763 (regexDepth!358 (ite c!1214871 (regTwo!33435 lt!2412225) (ite c!1214869 (regOne!33434 lt!2412225) (reg!16790 lt!2412225)))))))

(declare-fun b!6596695 () Bool)

(declare-fun e!3991770 () Int)

(assert (=> b!6596695 (= e!3991770 e!3991768)))

(declare-fun c!1214872 () Bool)

(assert (=> b!6596695 (= c!1214872 ((_ is Concat!25306) lt!2412225))))

(declare-fun b!6596696 () Bool)

(declare-fun e!3991773 () Bool)

(assert (=> b!6596696 (= e!3991774 e!3991773)))

(declare-fun res!2704842 () Bool)

(assert (=> b!6596696 (= res!2704842 (> lt!2412334 call!576761))))

(assert (=> b!6596696 (=> (not res!2704842) (not e!3991773))))

(declare-fun b!6596697 () Bool)

(assert (=> b!6596697 (= e!3991769 1)))

(declare-fun bm!576757 () Bool)

(declare-fun c!1214874 () Bool)

(assert (=> bm!576757 (= call!576760 (regexDepth!358 (ite c!1214874 (reg!16790 lt!2412225) (ite c!1214873 (regTwo!33435 lt!2412225) (regOne!33434 lt!2412225)))))))

(declare-fun b!6596698 () Bool)

(assert (=> b!6596698 (= e!3991769 e!3991771)))

(assert (=> b!6596698 (= c!1214874 ((_ is Star!16461) lt!2412225))))

(declare-fun bm!576758 () Bool)

(declare-fun call!576762 () Int)

(assert (=> bm!576758 (= call!576762 call!576763)))

(declare-fun b!6596699 () Bool)

(declare-fun e!3991772 () Bool)

(assert (=> b!6596699 (= e!3991772 (> lt!2412334 call!576761))))

(declare-fun b!6596700 () Bool)

(declare-fun c!1214868 () Bool)

(assert (=> b!6596700 (= c!1214868 ((_ is Star!16461) lt!2412225))))

(declare-fun e!3991776 () Bool)

(assert (=> b!6596700 (= e!3991775 e!3991776)))

(declare-fun bm!576759 () Bool)

(declare-fun call!576765 () Int)

(assert (=> bm!576759 (= call!576765 call!576760)))

(declare-fun b!6596701 () Bool)

(assert (=> b!6596701 (= e!3991776 (> lt!2412334 call!576762))))

(declare-fun b!6596702 () Bool)

(assert (=> b!6596702 (= e!3991776 (= lt!2412334 1))))

(declare-fun b!6596703 () Bool)

(assert (=> b!6596703 (= e!3991773 (> lt!2412334 call!576763))))

(declare-fun b!6596704 () Bool)

(assert (=> b!6596704 (= c!1214873 ((_ is Union!16461) lt!2412225))))

(assert (=> b!6596704 (= e!3991771 e!3991770)))

(declare-fun b!6596705 () Bool)

(declare-fun res!2704841 () Bool)

(assert (=> b!6596705 (=> (not res!2704841) (not e!3991772))))

(assert (=> b!6596705 (= res!2704841 (> lt!2412334 call!576762))))

(assert (=> b!6596705 (= e!3991775 e!3991772)))

(declare-fun b!6596706 () Bool)

(declare-fun call!576759 () Int)

(assert (=> b!6596706 (= e!3991770 (+ 1 call!576759))))

(declare-fun b!6596707 () Bool)

(assert (=> b!6596707 (= e!3991768 (+ 1 call!576759))))

(declare-fun bm!576760 () Bool)

(assert (=> bm!576760 (= call!576759 (maxBigInt!0 (ite c!1214873 call!576764 call!576765) (ite c!1214873 call!576765 call!576764)))))

(assert (= (and d!2069568 c!1214870) b!6596697))

(assert (= (and d!2069568 (not c!1214870)) b!6596698))

(assert (= (and b!6596698 c!1214874) b!6596691))

(assert (= (and b!6596698 (not c!1214874)) b!6596704))

(assert (= (and b!6596704 c!1214873) b!6596706))

(assert (= (and b!6596704 (not c!1214873)) b!6596695))

(assert (= (and b!6596695 c!1214872) b!6596707))

(assert (= (and b!6596695 (not c!1214872)) b!6596692))

(assert (= (or b!6596706 b!6596707) bm!576759))

(assert (= (or b!6596706 b!6596707) bm!576754))

(assert (= (or b!6596706 b!6596707) bm!576760))

(assert (= (or b!6596691 bm!576759) bm!576757))

(assert (= (and d!2069568 res!2704843) b!6596693))

(assert (= (and b!6596693 c!1214871) b!6596696))

(assert (= (and b!6596693 (not c!1214871)) b!6596694))

(assert (= (and b!6596696 res!2704842) b!6596703))

(assert (= (and b!6596694 c!1214869) b!6596705))

(assert (= (and b!6596694 (not c!1214869)) b!6596700))

(assert (= (and b!6596705 res!2704841) b!6596699))

(assert (= (and b!6596700 c!1214868) b!6596701))

(assert (= (and b!6596700 (not c!1214868)) b!6596702))

(assert (= (or b!6596705 b!6596701) bm!576758))

(assert (= (or b!6596703 bm!576758) bm!576756))

(assert (= (or b!6596696 b!6596699) bm!576755))

(declare-fun m!7373912 () Bool)

(assert (=> bm!576760 m!7373912))

(declare-fun m!7373916 () Bool)

(assert (=> bm!576755 m!7373916))

(declare-fun m!7373920 () Bool)

(assert (=> bm!576757 m!7373920))

(declare-fun m!7373922 () Bool)

(assert (=> bm!576756 m!7373922))

(declare-fun m!7373924 () Bool)

(assert (=> bm!576754 m!7373924))

(assert (=> b!6596150 d!2069568))

(declare-fun bs!1691746 () Bool)

(declare-fun d!2069576 () Bool)

(assert (= bs!1691746 (and d!2069576 d!2069498)))

(declare-fun lambda!367568 () Int)

(assert (=> bs!1691746 (= lambda!367568 lambda!367541)))

(declare-fun bs!1691747 () Bool)

(assert (= bs!1691747 (and d!2069576 d!2069508)))

(assert (=> bs!1691747 (= lambda!367568 lambda!367544)))

(declare-fun bs!1691748 () Bool)

(assert (= bs!1691748 (and d!2069576 d!2069524)))

(assert (=> bs!1691748 (= lambda!367568 lambda!367555)))

(declare-fun bs!1691749 () Bool)

(assert (= bs!1691749 (and d!2069576 d!2069550)))

(assert (=> bs!1691749 (= lambda!367568 lambda!367557)))

(declare-fun b!6596767 () Bool)

(declare-fun e!3991814 () Bool)

(declare-fun e!3991812 () Bool)

(assert (=> b!6596767 (= e!3991814 e!3991812)))

(declare-fun c!1214898 () Bool)

(assert (=> b!6596767 (= c!1214898 (isEmpty!37821 (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596768 () Bool)

(declare-fun e!3991817 () Bool)

(assert (=> b!6596768 (= e!3991812 e!3991817)))

(declare-fun c!1214897 () Bool)

(assert (=> b!6596768 (= c!1214897 (isEmpty!37821 (tail!12459 (t!379334 (exprs!6345 (h!72007 zl!343))))))))

(assert (=> d!2069576 e!3991814))

(declare-fun res!2704862 () Bool)

(assert (=> d!2069576 (=> (not res!2704862) (not e!3991814))))

(declare-fun lt!2412344 () Regex!16461)

(assert (=> d!2069576 (= res!2704862 (validRegex!8197 lt!2412344))))

(declare-fun e!3991816 () Regex!16461)

(assert (=> d!2069576 (= lt!2412344 e!3991816)))

(declare-fun c!1214896 () Bool)

(declare-fun e!3991813 () Bool)

(assert (=> d!2069576 (= c!1214896 e!3991813)))

(declare-fun res!2704861 () Bool)

(assert (=> d!2069576 (=> (not res!2704861) (not e!3991813))))

(assert (=> d!2069576 (= res!2704861 ((_ is Cons!65558) (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(assert (=> d!2069576 (forall!15647 (t!379334 (exprs!6345 (h!72007 zl!343))) lambda!367568)))

(assert (=> d!2069576 (= (generalisedConcat!2058 (t!379334 (exprs!6345 (h!72007 zl!343)))) lt!2412344)))

(declare-fun b!6596769 () Bool)

(declare-fun e!3991815 () Regex!16461)

(assert (=> b!6596769 (= e!3991815 (Concat!25306 (h!72006 (t!379334 (exprs!6345 (h!72007 zl!343)))) (generalisedConcat!2058 (t!379334 (t!379334 (exprs!6345 (h!72007 zl!343)))))))))

(declare-fun b!6596770 () Bool)

(assert (=> b!6596770 (= e!3991815 EmptyExpr!16461)))

(declare-fun b!6596771 () Bool)

(assert (=> b!6596771 (= e!3991813 (isEmpty!37821 (t!379334 (t!379334 (exprs!6345 (h!72007 zl!343))))))))

(declare-fun b!6596772 () Bool)

(assert (=> b!6596772 (= e!3991817 (= lt!2412344 (head!13374 (t!379334 (exprs!6345 (h!72007 zl!343))))))))

(declare-fun b!6596773 () Bool)

(declare-fun isConcat!1361 (Regex!16461) Bool)

(assert (=> b!6596773 (= e!3991817 (isConcat!1361 lt!2412344))))

(declare-fun b!6596774 () Bool)

(assert (=> b!6596774 (= e!3991816 (h!72006 (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596775 () Bool)

(assert (=> b!6596775 (= e!3991816 e!3991815)))

(declare-fun c!1214899 () Bool)

(assert (=> b!6596775 (= c!1214899 ((_ is Cons!65558) (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596776 () Bool)

(declare-fun isEmptyExpr!1839 (Regex!16461) Bool)

(assert (=> b!6596776 (= e!3991812 (isEmptyExpr!1839 lt!2412344))))

(assert (= (and d!2069576 res!2704861) b!6596771))

(assert (= (and d!2069576 c!1214896) b!6596774))

(assert (= (and d!2069576 (not c!1214896)) b!6596775))

(assert (= (and b!6596775 c!1214899) b!6596769))

(assert (= (and b!6596775 (not c!1214899)) b!6596770))

(assert (= (and d!2069576 res!2704862) b!6596767))

(assert (= (and b!6596767 c!1214898) b!6596776))

(assert (= (and b!6596767 (not c!1214898)) b!6596768))

(assert (= (and b!6596768 c!1214897) b!6596772))

(assert (= (and b!6596768 (not c!1214897)) b!6596773))

(declare-fun m!7373986 () Bool)

(assert (=> b!6596768 m!7373986))

(assert (=> b!6596768 m!7373986))

(declare-fun m!7373988 () Bool)

(assert (=> b!6596768 m!7373988))

(declare-fun m!7373990 () Bool)

(assert (=> b!6596776 m!7373990))

(declare-fun m!7373992 () Bool)

(assert (=> b!6596772 m!7373992))

(declare-fun m!7373994 () Bool)

(assert (=> b!6596769 m!7373994))

(declare-fun m!7373996 () Bool)

(assert (=> b!6596773 m!7373996))

(assert (=> b!6596767 m!7373500))

(declare-fun m!7373998 () Bool)

(assert (=> b!6596771 m!7373998))

(declare-fun m!7374000 () Bool)

(assert (=> d!2069576 m!7374000))

(declare-fun m!7374002 () Bool)

(assert (=> d!2069576 m!7374002))

(assert (=> b!6596150 d!2069576))

(assert (=> b!6596191 d!2069488))

(declare-fun c!1214935 () Bool)

(declare-fun c!1214933 () Bool)

(declare-fun call!576806 () List!65682)

(declare-fun c!1214934 () Bool)

(declare-fun bm!576799 () Bool)

(declare-fun call!576805 () (InoxSet Context!11690))

(assert (=> bm!576799 (= call!576805 (derivationStepZipperDown!1709 (ite c!1214934 (regTwo!33435 (reg!16790 (regOne!33434 r!7292))) (ite c!1214935 (regTwo!33434 (reg!16790 (regOne!33434 r!7292))) (ite c!1214933 (regOne!33434 (reg!16790 (regOne!33434 r!7292))) (reg!16790 (reg!16790 (regOne!33434 r!7292)))))) (ite (or c!1214934 c!1214935) lt!2412218 (Context!11691 call!576806)) (h!72008 s!2326)))))

(declare-fun b!6596850 () Bool)

(declare-fun e!3991864 () (InoxSet Context!11690))

(declare-fun call!576807 () (InoxSet Context!11690))

(assert (=> b!6596850 (= e!3991864 call!576807)))

(declare-fun bm!576800 () Bool)

(declare-fun call!576804 () (InoxSet Context!11690))

(assert (=> bm!576800 (= call!576804 call!576805)))

(declare-fun b!6596851 () Bool)

(declare-fun e!3991862 () (InoxSet Context!11690))

(declare-fun e!3991865 () (InoxSet Context!11690))

(assert (=> b!6596851 (= e!3991862 e!3991865)))

(assert (=> b!6596851 (= c!1214934 ((_ is Union!16461) (reg!16790 (regOne!33434 r!7292))))))

(declare-fun call!576808 () (InoxSet Context!11690))

(declare-fun bm!576801 () Bool)

(declare-fun call!576809 () List!65682)

(assert (=> bm!576801 (= call!576808 (derivationStepZipperDown!1709 (ite c!1214934 (regOne!33435 (reg!16790 (regOne!33434 r!7292))) (regOne!33434 (reg!16790 (regOne!33434 r!7292)))) (ite c!1214934 lt!2412218 (Context!11691 call!576809)) (h!72008 s!2326)))))

(declare-fun b!6596852 () Bool)

(declare-fun e!3991863 () (InoxSet Context!11690))

(assert (=> b!6596852 (= e!3991863 ((_ map or) call!576808 call!576804))))

(declare-fun d!2069602 () Bool)

(declare-fun c!1214932 () Bool)

(assert (=> d!2069602 (= c!1214932 (and ((_ is ElementMatch!16461) (reg!16790 (regOne!33434 r!7292))) (= (c!1214690 (reg!16790 (regOne!33434 r!7292))) (h!72008 s!2326))))))

(assert (=> d!2069602 (= (derivationStepZipperDown!1709 (reg!16790 (regOne!33434 r!7292)) lt!2412218 (h!72008 s!2326)) e!3991862)))

(declare-fun b!6596853 () Bool)

(assert (=> b!6596853 (= e!3991864 ((as const (Array Context!11690 Bool)) false))))

(declare-fun b!6596854 () Bool)

(declare-fun e!3991860 () (InoxSet Context!11690))

(assert (=> b!6596854 (= e!3991860 call!576807)))

(declare-fun b!6596855 () Bool)

(declare-fun e!3991861 () Bool)

(assert (=> b!6596855 (= c!1214935 e!3991861)))

(declare-fun res!2704874 () Bool)

(assert (=> b!6596855 (=> (not res!2704874) (not e!3991861))))

(assert (=> b!6596855 (= res!2704874 ((_ is Concat!25306) (reg!16790 (regOne!33434 r!7292))))))

(assert (=> b!6596855 (= e!3991865 e!3991863)))

(declare-fun b!6596856 () Bool)

(assert (=> b!6596856 (= e!3991862 (store ((as const (Array Context!11690 Bool)) false) lt!2412218 true))))

(declare-fun b!6596857 () Bool)

(assert (=> b!6596857 (= e!3991861 (nullable!6454 (regOne!33434 (reg!16790 (regOne!33434 r!7292)))))))

(declare-fun bm!576802 () Bool)

(assert (=> bm!576802 (= call!576806 call!576809)))

(declare-fun b!6596858 () Bool)

(declare-fun c!1214931 () Bool)

(assert (=> b!6596858 (= c!1214931 ((_ is Star!16461) (reg!16790 (regOne!33434 r!7292))))))

(assert (=> b!6596858 (= e!3991860 e!3991864)))

(declare-fun b!6596859 () Bool)

(assert (=> b!6596859 (= e!3991863 e!3991860)))

(assert (=> b!6596859 (= c!1214933 ((_ is Concat!25306) (reg!16790 (regOne!33434 r!7292))))))

(declare-fun bm!576803 () Bool)

(declare-fun $colon$colon!2302 (List!65682 Regex!16461) List!65682)

(assert (=> bm!576803 (= call!576809 ($colon$colon!2302 (exprs!6345 lt!2412218) (ite (or c!1214935 c!1214933) (regTwo!33434 (reg!16790 (regOne!33434 r!7292))) (reg!16790 (regOne!33434 r!7292)))))))

(declare-fun bm!576804 () Bool)

(assert (=> bm!576804 (= call!576807 call!576804)))

(declare-fun b!6596860 () Bool)

(assert (=> b!6596860 (= e!3991865 ((_ map or) call!576808 call!576805))))

(assert (= (and d!2069602 c!1214932) b!6596856))

(assert (= (and d!2069602 (not c!1214932)) b!6596851))

(assert (= (and b!6596851 c!1214934) b!6596860))

(assert (= (and b!6596851 (not c!1214934)) b!6596855))

(assert (= (and b!6596855 res!2704874) b!6596857))

(assert (= (and b!6596855 c!1214935) b!6596852))

(assert (= (and b!6596855 (not c!1214935)) b!6596859))

(assert (= (and b!6596859 c!1214933) b!6596854))

(assert (= (and b!6596859 (not c!1214933)) b!6596858))

(assert (= (and b!6596858 c!1214931) b!6596850))

(assert (= (and b!6596858 (not c!1214931)) b!6596853))

(assert (= (or b!6596854 b!6596850) bm!576802))

(assert (= (or b!6596854 b!6596850) bm!576804))

(assert (= (or b!6596852 bm!576802) bm!576803))

(assert (= (or b!6596852 bm!576804) bm!576800))

(assert (= (or b!6596860 bm!576800) bm!576799))

(assert (= (or b!6596860 b!6596852) bm!576801))

(assert (=> b!6596856 m!7373450))

(declare-fun m!7374014 () Bool)

(assert (=> bm!576803 m!7374014))

(declare-fun m!7374016 () Bool)

(assert (=> bm!576799 m!7374016))

(declare-fun m!7374018 () Bool)

(assert (=> b!6596857 m!7374018))

(declare-fun m!7374020 () Bool)

(assert (=> bm!576801 m!7374020))

(assert (=> b!6596170 d!2069602))

(declare-fun d!2069606 () Bool)

(assert (=> d!2069606 (= (isEmpty!37821 (t!379334 (exprs!6345 (h!72007 zl!343)))) ((_ is Nil!65558) (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(assert (=> b!6596171 d!2069606))

(declare-fun bs!1691750 () Bool)

(declare-fun d!2069608 () Bool)

(assert (= bs!1691750 (and d!2069608 d!2069576)))

(declare-fun lambda!367569 () Int)

(assert (=> bs!1691750 (= lambda!367569 lambda!367568)))

(declare-fun bs!1691751 () Bool)

(assert (= bs!1691751 (and d!2069608 d!2069524)))

(assert (=> bs!1691751 (= lambda!367569 lambda!367555)))

(declare-fun bs!1691752 () Bool)

(assert (= bs!1691752 (and d!2069608 d!2069508)))

(assert (=> bs!1691752 (= lambda!367569 lambda!367544)))

(declare-fun bs!1691753 () Bool)

(assert (= bs!1691753 (and d!2069608 d!2069498)))

(assert (=> bs!1691753 (= lambda!367569 lambda!367541)))

(declare-fun bs!1691755 () Bool)

(assert (= bs!1691755 (and d!2069608 d!2069550)))

(assert (=> bs!1691755 (= lambda!367569 lambda!367557)))

(declare-fun b!6596878 () Bool)

(declare-fun e!3991878 () Bool)

(declare-fun e!3991876 () Bool)

(assert (=> b!6596878 (= e!3991878 e!3991876)))

(declare-fun c!1214945 () Bool)

(assert (=> b!6596878 (= c!1214945 (isEmpty!37821 (exprs!6345 (h!72007 zl!343))))))

(declare-fun b!6596879 () Bool)

(declare-fun e!3991881 () Bool)

(assert (=> b!6596879 (= e!3991876 e!3991881)))

(declare-fun c!1214944 () Bool)

(assert (=> b!6596879 (= c!1214944 (isEmpty!37821 (tail!12459 (exprs!6345 (h!72007 zl!343)))))))

(assert (=> d!2069608 e!3991878))

(declare-fun res!2704879 () Bool)

(assert (=> d!2069608 (=> (not res!2704879) (not e!3991878))))

(declare-fun lt!2412349 () Regex!16461)

(assert (=> d!2069608 (= res!2704879 (validRegex!8197 lt!2412349))))

(declare-fun e!3991880 () Regex!16461)

(assert (=> d!2069608 (= lt!2412349 e!3991880)))

(declare-fun c!1214943 () Bool)

(declare-fun e!3991877 () Bool)

(assert (=> d!2069608 (= c!1214943 e!3991877)))

(declare-fun res!2704878 () Bool)

(assert (=> d!2069608 (=> (not res!2704878) (not e!3991877))))

(assert (=> d!2069608 (= res!2704878 ((_ is Cons!65558) (exprs!6345 (h!72007 zl!343))))))

(assert (=> d!2069608 (forall!15647 (exprs!6345 (h!72007 zl!343)) lambda!367569)))

(assert (=> d!2069608 (= (generalisedConcat!2058 (exprs!6345 (h!72007 zl!343))) lt!2412349)))

(declare-fun b!6596880 () Bool)

(declare-fun e!3991879 () Regex!16461)

(assert (=> b!6596880 (= e!3991879 (Concat!25306 (h!72006 (exprs!6345 (h!72007 zl!343))) (generalisedConcat!2058 (t!379334 (exprs!6345 (h!72007 zl!343))))))))

(declare-fun b!6596881 () Bool)

(assert (=> b!6596881 (= e!3991879 EmptyExpr!16461)))

(declare-fun b!6596882 () Bool)

(assert (=> b!6596882 (= e!3991877 (isEmpty!37821 (t!379334 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596883 () Bool)

(assert (=> b!6596883 (= e!3991881 (= lt!2412349 (head!13374 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6596884 () Bool)

(assert (=> b!6596884 (= e!3991881 (isConcat!1361 lt!2412349))))

(declare-fun b!6596885 () Bool)

(assert (=> b!6596885 (= e!3991880 (h!72006 (exprs!6345 (h!72007 zl!343))))))

(declare-fun b!6596886 () Bool)

(assert (=> b!6596886 (= e!3991880 e!3991879)))

(declare-fun c!1214946 () Bool)

(assert (=> b!6596886 (= c!1214946 ((_ is Cons!65558) (exprs!6345 (h!72007 zl!343))))))

(declare-fun b!6596887 () Bool)

(assert (=> b!6596887 (= e!3991876 (isEmptyExpr!1839 lt!2412349))))

(assert (= (and d!2069608 res!2704878) b!6596882))

(assert (= (and d!2069608 c!1214943) b!6596885))

(assert (= (and d!2069608 (not c!1214943)) b!6596886))

(assert (= (and b!6596886 c!1214946) b!6596880))

(assert (= (and b!6596886 (not c!1214946)) b!6596881))

(assert (= (and d!2069608 res!2704879) b!6596878))

(assert (= (and b!6596878 c!1214945) b!6596887))

(assert (= (and b!6596878 (not c!1214945)) b!6596879))

(assert (= (and b!6596879 c!1214944) b!6596883))

(assert (= (and b!6596879 (not c!1214944)) b!6596884))

(declare-fun m!7374032 () Bool)

(assert (=> b!6596879 m!7374032))

(assert (=> b!6596879 m!7374032))

(declare-fun m!7374034 () Bool)

(assert (=> b!6596879 m!7374034))

(declare-fun m!7374036 () Bool)

(assert (=> b!6596887 m!7374036))

(declare-fun m!7374038 () Bool)

(assert (=> b!6596883 m!7374038))

(assert (=> b!6596880 m!7373386))

(declare-fun m!7374040 () Bool)

(assert (=> b!6596884 m!7374040))

(declare-fun m!7374044 () Bool)

(assert (=> b!6596878 m!7374044))

(assert (=> b!6596882 m!7373500))

(declare-fun m!7374048 () Bool)

(assert (=> d!2069608 m!7374048))

(declare-fun m!7374052 () Bool)

(assert (=> d!2069608 m!7374052))

(assert (=> b!6596193 d!2069608))

(declare-fun b!6596898 () Bool)

(declare-fun res!2704884 () Bool)

(declare-fun e!3991890 () Bool)

(assert (=> b!6596898 (=> res!2704884 e!3991890)))

(assert (=> b!6596898 (= res!2704884 (not ((_ is Concat!25306) (reg!16790 (regOne!33434 r!7292)))))))

(declare-fun e!3991892 () Bool)

(assert (=> b!6596898 (= e!3991892 e!3991890)))

(declare-fun b!6596899 () Bool)

(declare-fun e!3991891 () Bool)

(declare-fun e!3991894 () Bool)

(assert (=> b!6596899 (= e!3991891 e!3991894)))

(declare-fun c!1214952 () Bool)

(assert (=> b!6596899 (= c!1214952 ((_ is Star!16461) (reg!16790 (regOne!33434 r!7292))))))

(declare-fun b!6596900 () Bool)

(declare-fun e!3991889 () Bool)

(declare-fun call!576817 () Bool)

(assert (=> b!6596900 (= e!3991889 call!576817)))

(declare-fun bm!576812 () Bool)

(declare-fun c!1214951 () Bool)

(assert (=> bm!576812 (= call!576817 (validRegex!8197 (ite c!1214951 (regTwo!33435 (reg!16790 (regOne!33434 r!7292))) (regTwo!33434 (reg!16790 (regOne!33434 r!7292))))))))

(declare-fun b!6596901 () Bool)

(declare-fun e!3991888 () Bool)

(declare-fun call!576819 () Bool)

(assert (=> b!6596901 (= e!3991888 call!576819)))

(declare-fun b!6596902 () Bool)

(declare-fun e!3991893 () Bool)

(assert (=> b!6596902 (= e!3991893 call!576817)))

(declare-fun b!6596903 () Bool)

(assert (=> b!6596903 (= e!3991890 e!3991889)))

(declare-fun res!2704886 () Bool)

(assert (=> b!6596903 (=> (not res!2704886) (not e!3991889))))

(declare-fun call!576818 () Bool)

(assert (=> b!6596903 (= res!2704886 call!576818)))

(declare-fun b!6596904 () Bool)

(declare-fun res!2704882 () Bool)

(assert (=> b!6596904 (=> (not res!2704882) (not e!3991893))))

(assert (=> b!6596904 (= res!2704882 call!576818)))

(assert (=> b!6596904 (= e!3991892 e!3991893)))

(declare-fun b!6596905 () Bool)

(assert (=> b!6596905 (= e!3991894 e!3991888)))

(declare-fun res!2704883 () Bool)

(assert (=> b!6596905 (= res!2704883 (not (nullable!6454 (reg!16790 (reg!16790 (regOne!33434 r!7292))))))))

(assert (=> b!6596905 (=> (not res!2704883) (not e!3991888))))

(declare-fun d!2069612 () Bool)

(declare-fun res!2704885 () Bool)

(assert (=> d!2069612 (=> res!2704885 e!3991891)))

(assert (=> d!2069612 (= res!2704885 ((_ is ElementMatch!16461) (reg!16790 (regOne!33434 r!7292))))))

(assert (=> d!2069612 (= (validRegex!8197 (reg!16790 (regOne!33434 r!7292))) e!3991891)))

(declare-fun bm!576813 () Bool)

(assert (=> bm!576813 (= call!576819 (validRegex!8197 (ite c!1214952 (reg!16790 (reg!16790 (regOne!33434 r!7292))) (ite c!1214951 (regOne!33435 (reg!16790 (regOne!33434 r!7292))) (regOne!33434 (reg!16790 (regOne!33434 r!7292)))))))))

(declare-fun bm!576814 () Bool)

(assert (=> bm!576814 (= call!576818 call!576819)))

(declare-fun b!6596906 () Bool)

(assert (=> b!6596906 (= e!3991894 e!3991892)))

(assert (=> b!6596906 (= c!1214951 ((_ is Union!16461) (reg!16790 (regOne!33434 r!7292))))))

(assert (= (and d!2069612 (not res!2704885)) b!6596899))

(assert (= (and b!6596899 c!1214952) b!6596905))

(assert (= (and b!6596899 (not c!1214952)) b!6596906))

(assert (= (and b!6596905 res!2704883) b!6596901))

(assert (= (and b!6596906 c!1214951) b!6596904))

(assert (= (and b!6596906 (not c!1214951)) b!6596898))

(assert (= (and b!6596904 res!2704882) b!6596902))

(assert (= (and b!6596898 (not res!2704884)) b!6596903))

(assert (= (and b!6596903 res!2704886) b!6596900))

(assert (= (or b!6596902 b!6596900) bm!576812))

(assert (= (or b!6596904 b!6596903) bm!576814))

(assert (= (or b!6596901 bm!576814) bm!576813))

(declare-fun m!7374066 () Bool)

(assert (=> bm!576812 m!7374066))

(declare-fun m!7374068 () Bool)

(assert (=> b!6596905 m!7374068))

(declare-fun m!7374070 () Bool)

(assert (=> bm!576813 m!7374070))

(assert (=> b!6596153 d!2069612))

(declare-fun b!6596967 () Bool)

(declare-fun e!3991928 () Bool)

(assert (=> b!6596967 (= e!3991928 (= (head!13373 Nil!65560) (c!1214690 lt!2412199)))))

(declare-fun b!6596968 () Bool)

(declare-fun res!2704922 () Bool)

(assert (=> b!6596968 (=> (not res!2704922) (not e!3991928))))

(assert (=> b!6596968 (= res!2704922 (isEmpty!37824 (tail!12458 Nil!65560)))))

(declare-fun b!6596969 () Bool)

(declare-fun e!3991930 () Bool)

(assert (=> b!6596969 (= e!3991930 (not (= (head!13373 Nil!65560) (c!1214690 lt!2412199))))))

(declare-fun b!6596970 () Bool)

(declare-fun res!2704921 () Bool)

(declare-fun e!3991927 () Bool)

(assert (=> b!6596970 (=> res!2704921 e!3991927)))

(assert (=> b!6596970 (= res!2704921 e!3991928)))

(declare-fun res!2704924 () Bool)

(assert (=> b!6596970 (=> (not res!2704924) (not e!3991928))))

(declare-fun lt!2412360 () Bool)

(assert (=> b!6596970 (= res!2704924 lt!2412360)))

(declare-fun d!2069616 () Bool)

(declare-fun e!3991932 () Bool)

(assert (=> d!2069616 e!3991932))

(declare-fun c!1214968 () Bool)

(assert (=> d!2069616 (= c!1214968 ((_ is EmptyExpr!16461) lt!2412199))))

(declare-fun e!3991931 () Bool)

(assert (=> d!2069616 (= lt!2412360 e!3991931)))

(declare-fun c!1214966 () Bool)

(assert (=> d!2069616 (= c!1214966 (isEmpty!37824 Nil!65560))))

(assert (=> d!2069616 (validRegex!8197 lt!2412199)))

(assert (=> d!2069616 (= (matchR!8644 lt!2412199 Nil!65560) lt!2412360)))

(declare-fun b!6596971 () Bool)

(declare-fun e!3991926 () Bool)

(assert (=> b!6596971 (= e!3991927 e!3991926)))

(declare-fun res!2704927 () Bool)

(assert (=> b!6596971 (=> (not res!2704927) (not e!3991926))))

(assert (=> b!6596971 (= res!2704927 (not lt!2412360))))

(declare-fun b!6596972 () Bool)

(declare-fun e!3991929 () Bool)

(assert (=> b!6596972 (= e!3991932 e!3991929)))

(declare-fun c!1214967 () Bool)

(assert (=> b!6596972 (= c!1214967 ((_ is EmptyLang!16461) lt!2412199))))

(declare-fun b!6596973 () Bool)

(assert (=> b!6596973 (= e!3991931 (nullable!6454 lt!2412199))))

(declare-fun b!6596974 () Bool)

(declare-fun res!2704923 () Bool)

(assert (=> b!6596974 (=> (not res!2704923) (not e!3991928))))

(declare-fun call!576824 () Bool)

(assert (=> b!6596974 (= res!2704923 (not call!576824))))

(declare-fun bm!576819 () Bool)

(assert (=> bm!576819 (= call!576824 (isEmpty!37824 Nil!65560))))

(declare-fun b!6596975 () Bool)

(assert (=> b!6596975 (= e!3991929 (not lt!2412360))))

(declare-fun b!6596976 () Bool)

(declare-fun res!2704926 () Bool)

(assert (=> b!6596976 (=> res!2704926 e!3991930)))

(assert (=> b!6596976 (= res!2704926 (not (isEmpty!37824 (tail!12458 Nil!65560))))))

(declare-fun b!6596977 () Bool)

(assert (=> b!6596977 (= e!3991932 (= lt!2412360 call!576824))))

(declare-fun b!6596978 () Bool)

(declare-fun res!2704925 () Bool)

(assert (=> b!6596978 (=> res!2704925 e!3991927)))

(assert (=> b!6596978 (= res!2704925 (not ((_ is ElementMatch!16461) lt!2412199)))))

(assert (=> b!6596978 (= e!3991929 e!3991927)))

(declare-fun b!6596979 () Bool)

(declare-fun derivativeStep!5145 (Regex!16461 C!33192) Regex!16461)

(assert (=> b!6596979 (= e!3991931 (matchR!8644 (derivativeStep!5145 lt!2412199 (head!13373 Nil!65560)) (tail!12458 Nil!65560)))))

(declare-fun b!6596980 () Bool)

(assert (=> b!6596980 (= e!3991926 e!3991930)))

(declare-fun res!2704928 () Bool)

(assert (=> b!6596980 (=> res!2704928 e!3991930)))

(assert (=> b!6596980 (= res!2704928 call!576824)))

(assert (= (and d!2069616 c!1214966) b!6596973))

(assert (= (and d!2069616 (not c!1214966)) b!6596979))

(assert (= (and d!2069616 c!1214968) b!6596977))

(assert (= (and d!2069616 (not c!1214968)) b!6596972))

(assert (= (and b!6596972 c!1214967) b!6596975))

(assert (= (and b!6596972 (not c!1214967)) b!6596978))

(assert (= (and b!6596978 (not res!2704925)) b!6596970))

(assert (= (and b!6596970 res!2704924) b!6596974))

(assert (= (and b!6596974 res!2704923) b!6596968))

(assert (= (and b!6596968 res!2704922) b!6596967))

(assert (= (and b!6596970 (not res!2704921)) b!6596971))

(assert (= (and b!6596971 res!2704927) b!6596980))

(assert (= (and b!6596980 (not res!2704928)) b!6596976))

(assert (= (and b!6596976 (not res!2704926)) b!6596969))

(assert (= (or b!6596977 b!6596974 b!6596980) bm!576819))

(declare-fun m!7374098 () Bool)

(assert (=> b!6596979 m!7374098))

(assert (=> b!6596979 m!7374098))

(declare-fun m!7374100 () Bool)

(assert (=> b!6596979 m!7374100))

(declare-fun m!7374102 () Bool)

(assert (=> b!6596979 m!7374102))

(assert (=> b!6596979 m!7374100))

(assert (=> b!6596979 m!7374102))

(declare-fun m!7374108 () Bool)

(assert (=> b!6596979 m!7374108))

(declare-fun m!7374110 () Bool)

(assert (=> bm!576819 m!7374110))

(assert (=> b!6596969 m!7374098))

(assert (=> b!6596968 m!7374102))

(assert (=> b!6596968 m!7374102))

(declare-fun m!7374114 () Bool)

(assert (=> b!6596968 m!7374114))

(declare-fun m!7374116 () Bool)

(assert (=> b!6596973 m!7374116))

(assert (=> d!2069616 m!7374110))

(declare-fun m!7374118 () Bool)

(assert (=> d!2069616 m!7374118))

(assert (=> b!6596967 m!7374098))

(assert (=> b!6596976 m!7374102))

(assert (=> b!6596976 m!7374102))

(assert (=> b!6596976 m!7374114))

(assert (=> b!6596153 d!2069616))

(declare-fun bs!1691791 () Bool)

(declare-fun b!6597093 () Bool)

(assert (= bs!1691791 (and b!6597093 b!6596186)))

(declare-fun lambda!367582 () Int)

(assert (=> bs!1691791 (not (= lambda!367582 lambda!367497))))

(assert (=> bs!1691791 (not (= lambda!367582 lambda!367498))))

(assert (=> b!6597093 true))

(assert (=> b!6597093 true))

(declare-fun bs!1691797 () Bool)

(declare-fun b!6597089 () Bool)

(assert (= bs!1691797 (and b!6597089 b!6596186)))

(declare-fun lambda!367583 () Int)

(assert (=> bs!1691797 (not (= lambda!367583 lambda!367497))))

(assert (=> bs!1691797 (= (and (= Nil!65560 s!2326) (= (regOne!33434 lt!2412199) (regOne!33434 r!7292)) (= (regTwo!33434 lt!2412199) (regTwo!33434 r!7292))) (= lambda!367583 lambda!367498))))

(declare-fun bs!1691798 () Bool)

(assert (= bs!1691798 (and b!6597089 b!6597093)))

(assert (=> bs!1691798 (not (= lambda!367583 lambda!367582))))

(assert (=> b!6597089 true))

(assert (=> b!6597089 true))

(declare-fun b!6597090 () Bool)

(declare-fun e!3991992 () Bool)

(declare-fun e!3991994 () Bool)

(assert (=> b!6597090 (= e!3991992 e!3991994)))

(declare-fun c!1214987 () Bool)

(assert (=> b!6597090 (= c!1214987 ((_ is Star!16461) lt!2412199))))

(declare-fun b!6597091 () Bool)

(declare-fun e!3991991 () Bool)

(declare-fun call!576833 () Bool)

(assert (=> b!6597091 (= e!3991991 call!576833)))

(declare-fun bm!576828 () Bool)

(assert (=> bm!576828 (= call!576833 (isEmpty!37824 Nil!65560))))

(declare-fun b!6597092 () Bool)

(declare-fun e!3991993 () Bool)

(assert (=> b!6597092 (= e!3991993 (= Nil!65560 (Cons!65560 (c!1214690 lt!2412199) Nil!65560)))))

(declare-fun e!3991989 () Bool)

(declare-fun call!576834 () Bool)

(assert (=> b!6597093 (= e!3991989 call!576834)))

(declare-fun b!6597094 () Bool)

(declare-fun c!1214990 () Bool)

(assert (=> b!6597094 (= c!1214990 ((_ is ElementMatch!16461) lt!2412199))))

(declare-fun e!3991988 () Bool)

(assert (=> b!6597094 (= e!3991988 e!3991993)))

(declare-fun b!6597095 () Bool)

(declare-fun e!3991990 () Bool)

(assert (=> b!6597095 (= e!3991990 (matchRSpec!3562 (regTwo!33435 lt!2412199) Nil!65560))))

(declare-fun b!6597096 () Bool)

(declare-fun c!1214989 () Bool)

(assert (=> b!6597096 (= c!1214989 ((_ is Union!16461) lt!2412199))))

(assert (=> b!6597096 (= e!3991993 e!3991992)))

(assert (=> b!6597089 (= e!3991994 call!576834)))

(declare-fun d!2069630 () Bool)

(declare-fun c!1214988 () Bool)

(assert (=> d!2069630 (= c!1214988 ((_ is EmptyExpr!16461) lt!2412199))))

(assert (=> d!2069630 (= (matchRSpec!3562 lt!2412199 Nil!65560) e!3991991)))

(declare-fun b!6597097 () Bool)

(declare-fun res!2704959 () Bool)

(assert (=> b!6597097 (=> res!2704959 e!3991989)))

(assert (=> b!6597097 (= res!2704959 call!576833)))

(assert (=> b!6597097 (= e!3991994 e!3991989)))

(declare-fun b!6597098 () Bool)

(assert (=> b!6597098 (= e!3991991 e!3991988)))

(declare-fun res!2704960 () Bool)

(assert (=> b!6597098 (= res!2704960 (not ((_ is EmptyLang!16461) lt!2412199)))))

(assert (=> b!6597098 (=> (not res!2704960) (not e!3991988))))

(declare-fun bm!576829 () Bool)

(assert (=> bm!576829 (= call!576834 (Exists!3531 (ite c!1214987 lambda!367582 lambda!367583)))))

(declare-fun b!6597099 () Bool)

(assert (=> b!6597099 (= e!3991992 e!3991990)))

(declare-fun res!2704958 () Bool)

(assert (=> b!6597099 (= res!2704958 (matchRSpec!3562 (regOne!33435 lt!2412199) Nil!65560))))

(assert (=> b!6597099 (=> res!2704958 e!3991990)))

(assert (= (and d!2069630 c!1214988) b!6597091))

(assert (= (and d!2069630 (not c!1214988)) b!6597098))

(assert (= (and b!6597098 res!2704960) b!6597094))

(assert (= (and b!6597094 c!1214990) b!6597092))

(assert (= (and b!6597094 (not c!1214990)) b!6597096))

(assert (= (and b!6597096 c!1214989) b!6597099))

(assert (= (and b!6597096 (not c!1214989)) b!6597090))

(assert (= (and b!6597099 (not res!2704958)) b!6597095))

(assert (= (and b!6597090 c!1214987) b!6597097))

(assert (= (and b!6597090 (not c!1214987)) b!6597089))

(assert (= (and b!6597097 (not res!2704959)) b!6597093))

(assert (= (or b!6597093 b!6597089) bm!576829))

(assert (= (or b!6597091 b!6597097) bm!576828))

(assert (=> bm!576828 m!7374110))

(declare-fun m!7374156 () Bool)

(assert (=> b!6597095 m!7374156))

(declare-fun m!7374158 () Bool)

(assert (=> bm!576829 m!7374158))

(declare-fun m!7374160 () Bool)

(assert (=> b!6597099 m!7374160))

(assert (=> b!6596153 d!2069630))

(declare-fun d!2069658 () Bool)

(assert (=> d!2069658 (= (matchR!8644 lt!2412199 Nil!65560) (matchRSpec!3562 lt!2412199 Nil!65560))))

(declare-fun lt!2412367 () Unit!159179)

(declare-fun choose!49221 (Regex!16461 List!65684) Unit!159179)

(assert (=> d!2069658 (= lt!2412367 (choose!49221 lt!2412199 Nil!65560))))

(assert (=> d!2069658 (validRegex!8197 lt!2412199)))

(assert (=> d!2069658 (= (mainMatchTheorem!3562 lt!2412199 Nil!65560) lt!2412367)))

(declare-fun bs!1691799 () Bool)

(assert (= bs!1691799 d!2069658))

(assert (=> bs!1691799 m!7373394))

(assert (=> bs!1691799 m!7373396))

(declare-fun m!7374162 () Bool)

(assert (=> bs!1691799 m!7374162))

(assert (=> bs!1691799 m!7374118))

(assert (=> b!6596153 d!2069658))

(declare-fun b!6597111 () Bool)

(declare-fun e!3992002 () Bool)

(assert (=> b!6597111 (= e!3992002 (= (head!13373 s!2326) (c!1214690 lt!2412236)))))

(declare-fun b!6597112 () Bool)

(declare-fun res!2704962 () Bool)

(assert (=> b!6597112 (=> (not res!2704962) (not e!3992002))))

(assert (=> b!6597112 (= res!2704962 (isEmpty!37824 (tail!12458 s!2326)))))

(declare-fun b!6597113 () Bool)

(declare-fun e!3992004 () Bool)

(assert (=> b!6597113 (= e!3992004 (not (= (head!13373 s!2326) (c!1214690 lt!2412236))))))

(declare-fun b!6597114 () Bool)

(declare-fun res!2704961 () Bool)

(declare-fun e!3992001 () Bool)

(assert (=> b!6597114 (=> res!2704961 e!3992001)))

(assert (=> b!6597114 (= res!2704961 e!3992002)))

(declare-fun res!2704964 () Bool)

(assert (=> b!6597114 (=> (not res!2704964) (not e!3992002))))

(declare-fun lt!2412368 () Bool)

(assert (=> b!6597114 (= res!2704964 lt!2412368)))

(declare-fun d!2069660 () Bool)

(declare-fun e!3992006 () Bool)

(assert (=> d!2069660 e!3992006))

(declare-fun c!1214993 () Bool)

(assert (=> d!2069660 (= c!1214993 ((_ is EmptyExpr!16461) lt!2412236))))

(declare-fun e!3992005 () Bool)

(assert (=> d!2069660 (= lt!2412368 e!3992005)))

(declare-fun c!1214991 () Bool)

(assert (=> d!2069660 (= c!1214991 (isEmpty!37824 s!2326))))

(assert (=> d!2069660 (validRegex!8197 lt!2412236)))

(assert (=> d!2069660 (= (matchR!8644 lt!2412236 s!2326) lt!2412368)))

(declare-fun b!6597115 () Bool)

(declare-fun e!3992000 () Bool)

(assert (=> b!6597115 (= e!3992001 e!3992000)))

(declare-fun res!2704967 () Bool)

(assert (=> b!6597115 (=> (not res!2704967) (not e!3992000))))

(assert (=> b!6597115 (= res!2704967 (not lt!2412368))))

(declare-fun b!6597116 () Bool)

(declare-fun e!3992003 () Bool)

(assert (=> b!6597116 (= e!3992006 e!3992003)))

(declare-fun c!1214992 () Bool)

(assert (=> b!6597116 (= c!1214992 ((_ is EmptyLang!16461) lt!2412236))))

(declare-fun b!6597117 () Bool)

(assert (=> b!6597117 (= e!3992005 (nullable!6454 lt!2412236))))

(declare-fun b!6597118 () Bool)

(declare-fun res!2704963 () Bool)

(assert (=> b!6597118 (=> (not res!2704963) (not e!3992002))))

(declare-fun call!576835 () Bool)

(assert (=> b!6597118 (= res!2704963 (not call!576835))))

(declare-fun bm!576830 () Bool)

(assert (=> bm!576830 (= call!576835 (isEmpty!37824 s!2326))))

(declare-fun b!6597119 () Bool)

(assert (=> b!6597119 (= e!3992003 (not lt!2412368))))

(declare-fun b!6597120 () Bool)

(declare-fun res!2704966 () Bool)

(assert (=> b!6597120 (=> res!2704966 e!3992004)))

(assert (=> b!6597120 (= res!2704966 (not (isEmpty!37824 (tail!12458 s!2326))))))

(declare-fun b!6597121 () Bool)

(assert (=> b!6597121 (= e!3992006 (= lt!2412368 call!576835))))

(declare-fun b!6597122 () Bool)

(declare-fun res!2704965 () Bool)

(assert (=> b!6597122 (=> res!2704965 e!3992001)))

(assert (=> b!6597122 (= res!2704965 (not ((_ is ElementMatch!16461) lt!2412236)))))

(assert (=> b!6597122 (= e!3992003 e!3992001)))

(declare-fun b!6597123 () Bool)

(assert (=> b!6597123 (= e!3992005 (matchR!8644 (derivativeStep!5145 lt!2412236 (head!13373 s!2326)) (tail!12458 s!2326)))))

(declare-fun b!6597124 () Bool)

(assert (=> b!6597124 (= e!3992000 e!3992004)))

(declare-fun res!2704968 () Bool)

(assert (=> b!6597124 (=> res!2704968 e!3992004)))

(assert (=> b!6597124 (= res!2704968 call!576835)))

(assert (= (and d!2069660 c!1214991) b!6597117))

(assert (= (and d!2069660 (not c!1214991)) b!6597123))

(assert (= (and d!2069660 c!1214993) b!6597121))

(assert (= (and d!2069660 (not c!1214993)) b!6597116))

(assert (= (and b!6597116 c!1214992) b!6597119))

(assert (= (and b!6597116 (not c!1214992)) b!6597122))

(assert (= (and b!6597122 (not res!2704965)) b!6597114))

(assert (= (and b!6597114 res!2704964) b!6597118))

(assert (= (and b!6597118 res!2704963) b!6597112))

(assert (= (and b!6597112 res!2704962) b!6597111))

(assert (= (and b!6597114 (not res!2704961)) b!6597115))

(assert (= (and b!6597115 res!2704967) b!6597124))

(assert (= (and b!6597124 (not res!2704968)) b!6597120))

(assert (= (and b!6597120 (not res!2704966)) b!6597113))

(assert (= (or b!6597121 b!6597118 b!6597124) bm!576830))

(declare-fun m!7374164 () Bool)

(assert (=> b!6597123 m!7374164))

(assert (=> b!6597123 m!7374164))

(declare-fun m!7374166 () Bool)

(assert (=> b!6597123 m!7374166))

(declare-fun m!7374168 () Bool)

(assert (=> b!6597123 m!7374168))

(assert (=> b!6597123 m!7374166))

(assert (=> b!6597123 m!7374168))

(declare-fun m!7374170 () Bool)

(assert (=> b!6597123 m!7374170))

(declare-fun m!7374172 () Bool)

(assert (=> bm!576830 m!7374172))

(assert (=> b!6597113 m!7374164))

(assert (=> b!6597112 m!7374168))

(assert (=> b!6597112 m!7374168))

(declare-fun m!7374174 () Bool)

(assert (=> b!6597112 m!7374174))

(declare-fun m!7374176 () Bool)

(assert (=> b!6597117 m!7374176))

(assert (=> d!2069660 m!7374172))

(declare-fun m!7374178 () Bool)

(assert (=> d!2069660 m!7374178))

(assert (=> b!6597111 m!7374164))

(assert (=> b!6597120 m!7374168))

(assert (=> b!6597120 m!7374168))

(assert (=> b!6597120 m!7374174))

(assert (=> b!6596173 d!2069660))

(declare-fun bs!1691800 () Bool)

(declare-fun b!6597129 () Bool)

(assert (= bs!1691800 (and b!6597129 b!6596186)))

(declare-fun lambda!367584 () Int)

(assert (=> bs!1691800 (not (= lambda!367584 lambda!367497))))

(assert (=> bs!1691800 (not (= lambda!367584 lambda!367498))))

(declare-fun bs!1691801 () Bool)

(assert (= bs!1691801 (and b!6597129 b!6597093)))

(assert (=> bs!1691801 (= (and (= s!2326 Nil!65560) (= (reg!16790 lt!2412236) (reg!16790 lt!2412199)) (= lt!2412236 lt!2412199)) (= lambda!367584 lambda!367582))))

(declare-fun bs!1691802 () Bool)

(assert (= bs!1691802 (and b!6597129 b!6597089)))

(assert (=> bs!1691802 (not (= lambda!367584 lambda!367583))))

(assert (=> b!6597129 true))

(assert (=> b!6597129 true))

(declare-fun bs!1691803 () Bool)

(declare-fun b!6597125 () Bool)

(assert (= bs!1691803 (and b!6597125 b!6596186)))

(declare-fun lambda!367585 () Int)

(assert (=> bs!1691803 (not (= lambda!367585 lambda!367497))))

(declare-fun bs!1691804 () Bool)

(assert (= bs!1691804 (and b!6597125 b!6597129)))

(assert (=> bs!1691804 (not (= lambda!367585 lambda!367584))))

(assert (=> bs!1691803 (= (and (= (regOne!33434 lt!2412236) (regOne!33434 r!7292)) (= (regTwo!33434 lt!2412236) (regTwo!33434 r!7292))) (= lambda!367585 lambda!367498))))

(declare-fun bs!1691805 () Bool)

(assert (= bs!1691805 (and b!6597125 b!6597089)))

(assert (=> bs!1691805 (= (and (= s!2326 Nil!65560) (= (regOne!33434 lt!2412236) (regOne!33434 lt!2412199)) (= (regTwo!33434 lt!2412236) (regTwo!33434 lt!2412199))) (= lambda!367585 lambda!367583))))

(declare-fun bs!1691806 () Bool)

(assert (= bs!1691806 (and b!6597125 b!6597093)))

(assert (=> bs!1691806 (not (= lambda!367585 lambda!367582))))

(assert (=> b!6597125 true))

(assert (=> b!6597125 true))

(declare-fun b!6597126 () Bool)

(declare-fun e!3992011 () Bool)

(declare-fun e!3992013 () Bool)

(assert (=> b!6597126 (= e!3992011 e!3992013)))

(declare-fun c!1214994 () Bool)

(assert (=> b!6597126 (= c!1214994 ((_ is Star!16461) lt!2412236))))

(declare-fun b!6597127 () Bool)

(declare-fun e!3992010 () Bool)

(declare-fun call!576836 () Bool)

(assert (=> b!6597127 (= e!3992010 call!576836)))

(declare-fun bm!576831 () Bool)

(assert (=> bm!576831 (= call!576836 (isEmpty!37824 s!2326))))

(declare-fun b!6597128 () Bool)

(declare-fun e!3992012 () Bool)

(assert (=> b!6597128 (= e!3992012 (= s!2326 (Cons!65560 (c!1214690 lt!2412236) Nil!65560)))))

(declare-fun e!3992008 () Bool)

(declare-fun call!576837 () Bool)

(assert (=> b!6597129 (= e!3992008 call!576837)))

(declare-fun b!6597130 () Bool)

(declare-fun c!1214997 () Bool)

(assert (=> b!6597130 (= c!1214997 ((_ is ElementMatch!16461) lt!2412236))))

(declare-fun e!3992007 () Bool)

(assert (=> b!6597130 (= e!3992007 e!3992012)))

(declare-fun b!6597131 () Bool)

(declare-fun e!3992009 () Bool)

(assert (=> b!6597131 (= e!3992009 (matchRSpec!3562 (regTwo!33435 lt!2412236) s!2326))))

(declare-fun b!6597132 () Bool)

(declare-fun c!1214996 () Bool)

(assert (=> b!6597132 (= c!1214996 ((_ is Union!16461) lt!2412236))))

(assert (=> b!6597132 (= e!3992012 e!3992011)))

(assert (=> b!6597125 (= e!3992013 call!576837)))

(declare-fun d!2069662 () Bool)

(declare-fun c!1214995 () Bool)

(assert (=> d!2069662 (= c!1214995 ((_ is EmptyExpr!16461) lt!2412236))))

(assert (=> d!2069662 (= (matchRSpec!3562 lt!2412236 s!2326) e!3992010)))

(declare-fun b!6597133 () Bool)

(declare-fun res!2704970 () Bool)

(assert (=> b!6597133 (=> res!2704970 e!3992008)))

(assert (=> b!6597133 (= res!2704970 call!576836)))

(assert (=> b!6597133 (= e!3992013 e!3992008)))

(declare-fun b!6597134 () Bool)

(assert (=> b!6597134 (= e!3992010 e!3992007)))

(declare-fun res!2704971 () Bool)

(assert (=> b!6597134 (= res!2704971 (not ((_ is EmptyLang!16461) lt!2412236)))))

(assert (=> b!6597134 (=> (not res!2704971) (not e!3992007))))

(declare-fun bm!576832 () Bool)

(assert (=> bm!576832 (= call!576837 (Exists!3531 (ite c!1214994 lambda!367584 lambda!367585)))))

(declare-fun b!6597135 () Bool)

(assert (=> b!6597135 (= e!3992011 e!3992009)))

(declare-fun res!2704969 () Bool)

(assert (=> b!6597135 (= res!2704969 (matchRSpec!3562 (regOne!33435 lt!2412236) s!2326))))

(assert (=> b!6597135 (=> res!2704969 e!3992009)))

(assert (= (and d!2069662 c!1214995) b!6597127))

(assert (= (and d!2069662 (not c!1214995)) b!6597134))

(assert (= (and b!6597134 res!2704971) b!6597130))

(assert (= (and b!6597130 c!1214997) b!6597128))

(assert (= (and b!6597130 (not c!1214997)) b!6597132))

(assert (= (and b!6597132 c!1214996) b!6597135))

(assert (= (and b!6597132 (not c!1214996)) b!6597126))

(assert (= (and b!6597135 (not res!2704969)) b!6597131))

(assert (= (and b!6597126 c!1214994) b!6597133))

(assert (= (and b!6597126 (not c!1214994)) b!6597125))

(assert (= (and b!6597133 (not res!2704970)) b!6597129))

(assert (= (or b!6597129 b!6597125) bm!576832))

(assert (= (or b!6597127 b!6597133) bm!576831))

(assert (=> bm!576831 m!7374172))

(declare-fun m!7374180 () Bool)

(assert (=> b!6597131 m!7374180))

(declare-fun m!7374182 () Bool)

(assert (=> bm!576832 m!7374182))

(declare-fun m!7374184 () Bool)

(assert (=> b!6597135 m!7374184))

(assert (=> b!6596173 d!2069662))

(declare-fun d!2069664 () Bool)

(assert (=> d!2069664 (= (matchR!8644 lt!2412236 s!2326) (matchRSpec!3562 lt!2412236 s!2326))))

(declare-fun lt!2412369 () Unit!159179)

(assert (=> d!2069664 (= lt!2412369 (choose!49221 lt!2412236 s!2326))))

(assert (=> d!2069664 (validRegex!8197 lt!2412236)))

(assert (=> d!2069664 (= (mainMatchTheorem!3562 lt!2412236 s!2326) lt!2412369)))

(declare-fun bs!1691807 () Bool)

(assert (= bs!1691807 d!2069664))

(assert (=> bs!1691807 m!7373428))

(assert (=> bs!1691807 m!7373430))

(declare-fun m!7374186 () Bool)

(assert (=> bs!1691807 m!7374186))

(assert (=> bs!1691807 m!7374178))

(assert (=> b!6596173 d!2069664))

(declare-fun bs!1691808 () Bool)

(declare-fun b!6597140 () Bool)

(assert (= bs!1691808 (and b!6597140 b!6596186)))

(declare-fun lambda!367586 () Int)

(assert (=> bs!1691808 (not (= lambda!367586 lambda!367497))))

(declare-fun bs!1691809 () Bool)

(assert (= bs!1691809 (and b!6597140 b!6597129)))

(assert (=> bs!1691809 (= (and (= (reg!16790 r!7292) (reg!16790 lt!2412236)) (= r!7292 lt!2412236)) (= lambda!367586 lambda!367584))))

(assert (=> bs!1691808 (not (= lambda!367586 lambda!367498))))

(declare-fun bs!1691810 () Bool)

(assert (= bs!1691810 (and b!6597140 b!6597089)))

(assert (=> bs!1691810 (not (= lambda!367586 lambda!367583))))

(declare-fun bs!1691811 () Bool)

(assert (= bs!1691811 (and b!6597140 b!6597125)))

(assert (=> bs!1691811 (not (= lambda!367586 lambda!367585))))

(declare-fun bs!1691812 () Bool)

(assert (= bs!1691812 (and b!6597140 b!6597093)))

(assert (=> bs!1691812 (= (and (= s!2326 Nil!65560) (= (reg!16790 r!7292) (reg!16790 lt!2412199)) (= r!7292 lt!2412199)) (= lambda!367586 lambda!367582))))

(assert (=> b!6597140 true))

(assert (=> b!6597140 true))

(declare-fun bs!1691813 () Bool)

(declare-fun b!6597136 () Bool)

(assert (= bs!1691813 (and b!6597136 b!6597140)))

(declare-fun lambda!367587 () Int)

(assert (=> bs!1691813 (not (= lambda!367587 lambda!367586))))

(declare-fun bs!1691814 () Bool)

(assert (= bs!1691814 (and b!6597136 b!6596186)))

(assert (=> bs!1691814 (not (= lambda!367587 lambda!367497))))

(declare-fun bs!1691815 () Bool)

(assert (= bs!1691815 (and b!6597136 b!6597129)))

(assert (=> bs!1691815 (not (= lambda!367587 lambda!367584))))

(assert (=> bs!1691814 (= lambda!367587 lambda!367498)))

(declare-fun bs!1691816 () Bool)

(assert (= bs!1691816 (and b!6597136 b!6597089)))

(assert (=> bs!1691816 (= (and (= s!2326 Nil!65560) (= (regOne!33434 r!7292) (regOne!33434 lt!2412199)) (= (regTwo!33434 r!7292) (regTwo!33434 lt!2412199))) (= lambda!367587 lambda!367583))))

(declare-fun bs!1691817 () Bool)

(assert (= bs!1691817 (and b!6597136 b!6597125)))

(assert (=> bs!1691817 (= (and (= (regOne!33434 r!7292) (regOne!33434 lt!2412236)) (= (regTwo!33434 r!7292) (regTwo!33434 lt!2412236))) (= lambda!367587 lambda!367585))))

(declare-fun bs!1691818 () Bool)

(assert (= bs!1691818 (and b!6597136 b!6597093)))

(assert (=> bs!1691818 (not (= lambda!367587 lambda!367582))))

(assert (=> b!6597136 true))

(assert (=> b!6597136 true))

(declare-fun b!6597137 () Bool)

(declare-fun e!3992018 () Bool)

(declare-fun e!3992020 () Bool)

(assert (=> b!6597137 (= e!3992018 e!3992020)))

(declare-fun c!1214998 () Bool)

(assert (=> b!6597137 (= c!1214998 ((_ is Star!16461) r!7292))))

(declare-fun b!6597138 () Bool)

(declare-fun e!3992017 () Bool)

(declare-fun call!576838 () Bool)

(assert (=> b!6597138 (= e!3992017 call!576838)))

(declare-fun bm!576833 () Bool)

(assert (=> bm!576833 (= call!576838 (isEmpty!37824 s!2326))))

(declare-fun b!6597139 () Bool)

(declare-fun e!3992019 () Bool)

(assert (=> b!6597139 (= e!3992019 (= s!2326 (Cons!65560 (c!1214690 r!7292) Nil!65560)))))

(declare-fun e!3992015 () Bool)

(declare-fun call!576839 () Bool)

(assert (=> b!6597140 (= e!3992015 call!576839)))

(declare-fun b!6597141 () Bool)

(declare-fun c!1215001 () Bool)

(assert (=> b!6597141 (= c!1215001 ((_ is ElementMatch!16461) r!7292))))

(declare-fun e!3992014 () Bool)

(assert (=> b!6597141 (= e!3992014 e!3992019)))

(declare-fun b!6597142 () Bool)

(declare-fun e!3992016 () Bool)

(assert (=> b!6597142 (= e!3992016 (matchRSpec!3562 (regTwo!33435 r!7292) s!2326))))

(declare-fun b!6597143 () Bool)

(declare-fun c!1215000 () Bool)

(assert (=> b!6597143 (= c!1215000 ((_ is Union!16461) r!7292))))

(assert (=> b!6597143 (= e!3992019 e!3992018)))

(assert (=> b!6597136 (= e!3992020 call!576839)))

(declare-fun d!2069666 () Bool)

(declare-fun c!1214999 () Bool)

(assert (=> d!2069666 (= c!1214999 ((_ is EmptyExpr!16461) r!7292))))

(assert (=> d!2069666 (= (matchRSpec!3562 r!7292 s!2326) e!3992017)))

(declare-fun b!6597144 () Bool)

(declare-fun res!2704973 () Bool)

(assert (=> b!6597144 (=> res!2704973 e!3992015)))

(assert (=> b!6597144 (= res!2704973 call!576838)))

(assert (=> b!6597144 (= e!3992020 e!3992015)))

(declare-fun b!6597145 () Bool)

(assert (=> b!6597145 (= e!3992017 e!3992014)))

(declare-fun res!2704974 () Bool)

(assert (=> b!6597145 (= res!2704974 (not ((_ is EmptyLang!16461) r!7292)))))

(assert (=> b!6597145 (=> (not res!2704974) (not e!3992014))))

(declare-fun bm!576834 () Bool)

(assert (=> bm!576834 (= call!576839 (Exists!3531 (ite c!1214998 lambda!367586 lambda!367587)))))

(declare-fun b!6597146 () Bool)

(assert (=> b!6597146 (= e!3992018 e!3992016)))

(declare-fun res!2704972 () Bool)

(assert (=> b!6597146 (= res!2704972 (matchRSpec!3562 (regOne!33435 r!7292) s!2326))))

(assert (=> b!6597146 (=> res!2704972 e!3992016)))

(assert (= (and d!2069666 c!1214999) b!6597138))

(assert (= (and d!2069666 (not c!1214999)) b!6597145))

(assert (= (and b!6597145 res!2704974) b!6597141))

(assert (= (and b!6597141 c!1215001) b!6597139))

(assert (= (and b!6597141 (not c!1215001)) b!6597143))

(assert (= (and b!6597143 c!1215000) b!6597146))

(assert (= (and b!6597143 (not c!1215000)) b!6597137))

(assert (= (and b!6597146 (not res!2704972)) b!6597142))

(assert (= (and b!6597137 c!1214998) b!6597144))

(assert (= (and b!6597137 (not c!1214998)) b!6597136))

(assert (= (and b!6597144 (not res!2704973)) b!6597140))

(assert (= (or b!6597140 b!6597136) bm!576834))

(assert (= (or b!6597138 b!6597144) bm!576833))

(assert (=> bm!576833 m!7374172))

(declare-fun m!7374188 () Bool)

(assert (=> b!6597142 m!7374188))

(declare-fun m!7374190 () Bool)

(assert (=> bm!576834 m!7374190))

(declare-fun m!7374192 () Bool)

(assert (=> b!6597146 m!7374192))

(assert (=> b!6596154 d!2069666))

(declare-fun b!6597147 () Bool)

(declare-fun e!3992023 () Bool)

(assert (=> b!6597147 (= e!3992023 (= (head!13373 s!2326) (c!1214690 r!7292)))))

(declare-fun b!6597148 () Bool)

(declare-fun res!2704976 () Bool)

(assert (=> b!6597148 (=> (not res!2704976) (not e!3992023))))

(assert (=> b!6597148 (= res!2704976 (isEmpty!37824 (tail!12458 s!2326)))))

(declare-fun b!6597149 () Bool)

(declare-fun e!3992025 () Bool)

(assert (=> b!6597149 (= e!3992025 (not (= (head!13373 s!2326) (c!1214690 r!7292))))))

(declare-fun b!6597150 () Bool)

(declare-fun res!2704975 () Bool)

(declare-fun e!3992022 () Bool)

(assert (=> b!6597150 (=> res!2704975 e!3992022)))

(assert (=> b!6597150 (= res!2704975 e!3992023)))

(declare-fun res!2704978 () Bool)

(assert (=> b!6597150 (=> (not res!2704978) (not e!3992023))))

(declare-fun lt!2412370 () Bool)

(assert (=> b!6597150 (= res!2704978 lt!2412370)))

(declare-fun d!2069668 () Bool)

(declare-fun e!3992027 () Bool)

(assert (=> d!2069668 e!3992027))

(declare-fun c!1215004 () Bool)

(assert (=> d!2069668 (= c!1215004 ((_ is EmptyExpr!16461) r!7292))))

(declare-fun e!3992026 () Bool)

(assert (=> d!2069668 (= lt!2412370 e!3992026)))

(declare-fun c!1215002 () Bool)

(assert (=> d!2069668 (= c!1215002 (isEmpty!37824 s!2326))))

(assert (=> d!2069668 (validRegex!8197 r!7292)))

(assert (=> d!2069668 (= (matchR!8644 r!7292 s!2326) lt!2412370)))

(declare-fun b!6597151 () Bool)

(declare-fun e!3992021 () Bool)

(assert (=> b!6597151 (= e!3992022 e!3992021)))

(declare-fun res!2704981 () Bool)

(assert (=> b!6597151 (=> (not res!2704981) (not e!3992021))))

(assert (=> b!6597151 (= res!2704981 (not lt!2412370))))

(declare-fun b!6597152 () Bool)

(declare-fun e!3992024 () Bool)

(assert (=> b!6597152 (= e!3992027 e!3992024)))

(declare-fun c!1215003 () Bool)

(assert (=> b!6597152 (= c!1215003 ((_ is EmptyLang!16461) r!7292))))

(declare-fun b!6597153 () Bool)

(assert (=> b!6597153 (= e!3992026 (nullable!6454 r!7292))))

(declare-fun b!6597154 () Bool)

(declare-fun res!2704977 () Bool)

(assert (=> b!6597154 (=> (not res!2704977) (not e!3992023))))

(declare-fun call!576840 () Bool)

(assert (=> b!6597154 (= res!2704977 (not call!576840))))

(declare-fun bm!576835 () Bool)

(assert (=> bm!576835 (= call!576840 (isEmpty!37824 s!2326))))

(declare-fun b!6597155 () Bool)

(assert (=> b!6597155 (= e!3992024 (not lt!2412370))))

(declare-fun b!6597156 () Bool)

(declare-fun res!2704980 () Bool)

(assert (=> b!6597156 (=> res!2704980 e!3992025)))

(assert (=> b!6597156 (= res!2704980 (not (isEmpty!37824 (tail!12458 s!2326))))))

(declare-fun b!6597157 () Bool)

(assert (=> b!6597157 (= e!3992027 (= lt!2412370 call!576840))))

(declare-fun b!6597158 () Bool)

(declare-fun res!2704979 () Bool)

(assert (=> b!6597158 (=> res!2704979 e!3992022)))

(assert (=> b!6597158 (= res!2704979 (not ((_ is ElementMatch!16461) r!7292)))))

(assert (=> b!6597158 (= e!3992024 e!3992022)))

(declare-fun b!6597159 () Bool)

(assert (=> b!6597159 (= e!3992026 (matchR!8644 (derivativeStep!5145 r!7292 (head!13373 s!2326)) (tail!12458 s!2326)))))

(declare-fun b!6597160 () Bool)

(assert (=> b!6597160 (= e!3992021 e!3992025)))

(declare-fun res!2704982 () Bool)

(assert (=> b!6597160 (=> res!2704982 e!3992025)))

(assert (=> b!6597160 (= res!2704982 call!576840)))

(assert (= (and d!2069668 c!1215002) b!6597153))

(assert (= (and d!2069668 (not c!1215002)) b!6597159))

(assert (= (and d!2069668 c!1215004) b!6597157))

(assert (= (and d!2069668 (not c!1215004)) b!6597152))

(assert (= (and b!6597152 c!1215003) b!6597155))

(assert (= (and b!6597152 (not c!1215003)) b!6597158))

(assert (= (and b!6597158 (not res!2704979)) b!6597150))

(assert (= (and b!6597150 res!2704978) b!6597154))

(assert (= (and b!6597154 res!2704977) b!6597148))

(assert (= (and b!6597148 res!2704976) b!6597147))

(assert (= (and b!6597150 (not res!2704975)) b!6597151))

(assert (= (and b!6597151 res!2704981) b!6597160))

(assert (= (and b!6597160 (not res!2704982)) b!6597156))

(assert (= (and b!6597156 (not res!2704980)) b!6597149))

(assert (= (or b!6597157 b!6597154 b!6597160) bm!576835))

(assert (=> b!6597159 m!7374164))

(assert (=> b!6597159 m!7374164))

(declare-fun m!7374194 () Bool)

(assert (=> b!6597159 m!7374194))

(assert (=> b!6597159 m!7374168))

(assert (=> b!6597159 m!7374194))

(assert (=> b!6597159 m!7374168))

(declare-fun m!7374196 () Bool)

(assert (=> b!6597159 m!7374196))

(assert (=> bm!576835 m!7374172))

(assert (=> b!6597149 m!7374164))

(assert (=> b!6597148 m!7374168))

(assert (=> b!6597148 m!7374168))

(assert (=> b!6597148 m!7374174))

(declare-fun m!7374198 () Bool)

(assert (=> b!6597153 m!7374198))

(assert (=> d!2069668 m!7374172))

(assert (=> d!2069668 m!7373426))

(assert (=> b!6597147 m!7374164))

(assert (=> b!6597156 m!7374168))

(assert (=> b!6597156 m!7374168))

(assert (=> b!6597156 m!7374174))

(assert (=> b!6596154 d!2069668))

(declare-fun d!2069670 () Bool)

(assert (=> d!2069670 (= (matchR!8644 r!7292 s!2326) (matchRSpec!3562 r!7292 s!2326))))

(declare-fun lt!2412371 () Unit!159179)

(assert (=> d!2069670 (= lt!2412371 (choose!49221 r!7292 s!2326))))

(assert (=> d!2069670 (validRegex!8197 r!7292)))

(assert (=> d!2069670 (= (mainMatchTheorem!3562 r!7292 s!2326) lt!2412371)))

(declare-fun bs!1691819 () Bool)

(assert (= bs!1691819 d!2069670))

(assert (=> bs!1691819 m!7373484))

(assert (=> bs!1691819 m!7373482))

(declare-fun m!7374200 () Bool)

(assert (=> bs!1691819 m!7374200))

(assert (=> bs!1691819 m!7373426))

(assert (=> b!6596154 d!2069670))

(declare-fun d!2069672 () Bool)

(assert (=> d!2069672 (= (isEmpty!37822 (t!379335 zl!343)) ((_ is Nil!65559) (t!379335 zl!343)))))

(assert (=> b!6596185 d!2069672))

(declare-fun d!2069674 () Bool)

(declare-fun choose!49222 (Int) Bool)

(assert (=> d!2069674 (= (Exists!3531 lambda!367498) (choose!49222 lambda!367498))))

(declare-fun bs!1691820 () Bool)

(assert (= bs!1691820 d!2069674))

(declare-fun m!7374202 () Bool)

(assert (=> bs!1691820 m!7374202))

(assert (=> b!6596186 d!2069674))

(declare-fun bs!1691821 () Bool)

(declare-fun d!2069676 () Bool)

(assert (= bs!1691821 (and d!2069676 b!6597140)))

(declare-fun lambda!367590 () Int)

(assert (=> bs!1691821 (not (= lambda!367590 lambda!367586))))

(declare-fun bs!1691822 () Bool)

(assert (= bs!1691822 (and d!2069676 b!6596186)))

(assert (=> bs!1691822 (= lambda!367590 lambda!367497)))

(declare-fun bs!1691823 () Bool)

(assert (= bs!1691823 (and d!2069676 b!6597129)))

(assert (=> bs!1691823 (not (= lambda!367590 lambda!367584))))

(assert (=> bs!1691822 (not (= lambda!367590 lambda!367498))))

(declare-fun bs!1691824 () Bool)

(assert (= bs!1691824 (and d!2069676 b!6597089)))

(assert (=> bs!1691824 (not (= lambda!367590 lambda!367583))))

(declare-fun bs!1691825 () Bool)

(assert (= bs!1691825 (and d!2069676 b!6597136)))

(assert (=> bs!1691825 (not (= lambda!367590 lambda!367587))))

(declare-fun bs!1691826 () Bool)

(assert (= bs!1691826 (and d!2069676 b!6597125)))

(assert (=> bs!1691826 (not (= lambda!367590 lambda!367585))))

(declare-fun bs!1691827 () Bool)

(assert (= bs!1691827 (and d!2069676 b!6597093)))

(assert (=> bs!1691827 (not (= lambda!367590 lambda!367582))))

(assert (=> d!2069676 true))

(assert (=> d!2069676 true))

(assert (=> d!2069676 true))

(assert (=> d!2069676 (= (isDefined!13055 (findConcatSeparation!2766 (regOne!33434 r!7292) (regTwo!33434 r!7292) Nil!65560 s!2326 s!2326)) (Exists!3531 lambda!367590))))

(declare-fun lt!2412374 () Unit!159179)

(declare-fun choose!49223 (Regex!16461 Regex!16461 List!65684) Unit!159179)

(assert (=> d!2069676 (= lt!2412374 (choose!49223 (regOne!33434 r!7292) (regTwo!33434 r!7292) s!2326))))

(assert (=> d!2069676 (validRegex!8197 (regOne!33434 r!7292))))

(assert (=> d!2069676 (= (lemmaFindConcatSeparationEquivalentToExists!2530 (regOne!33434 r!7292) (regTwo!33434 r!7292) s!2326) lt!2412374)))

(declare-fun bs!1691828 () Bool)

(assert (= bs!1691828 d!2069676))

(assert (=> bs!1691828 m!7373466))

(declare-fun m!7374204 () Bool)

(assert (=> bs!1691828 m!7374204))

(declare-fun m!7374206 () Bool)

(assert (=> bs!1691828 m!7374206))

(declare-fun m!7374208 () Bool)

(assert (=> bs!1691828 m!7374208))

(assert (=> bs!1691828 m!7373466))

(assert (=> bs!1691828 m!7373468))

(assert (=> b!6596186 d!2069676))

(declare-fun d!2069678 () Bool)

(assert (=> d!2069678 (= (Exists!3531 lambda!367497) (choose!49222 lambda!367497))))

(declare-fun bs!1691829 () Bool)

(assert (= bs!1691829 d!2069678))

(declare-fun m!7374210 () Bool)

(assert (=> bs!1691829 m!7374210))

(assert (=> b!6596186 d!2069678))

(declare-fun b!6597183 () Bool)

(declare-fun e!3992041 () Option!16352)

(declare-fun e!3992040 () Option!16352)

(assert (=> b!6597183 (= e!3992041 e!3992040)))

(declare-fun c!1215010 () Bool)

(assert (=> b!6597183 (= c!1215010 ((_ is Nil!65560) s!2326))))

(declare-fun b!6597184 () Bool)

(declare-fun e!3992043 () Bool)

(declare-fun lt!2412382 () Option!16352)

(declare-fun ++!14607 (List!65684 List!65684) List!65684)

(declare-fun get!22773 (Option!16352) tuple2!66880)

(assert (=> b!6597184 (= e!3992043 (= (++!14607 (_1!36743 (get!22773 lt!2412382)) (_2!36743 (get!22773 lt!2412382))) s!2326))))

(declare-fun b!6597186 () Bool)

(declare-fun lt!2412381 () Unit!159179)

(declare-fun lt!2412383 () Unit!159179)

(assert (=> b!6597186 (= lt!2412381 lt!2412383)))

(assert (=> b!6597186 (= (++!14607 (++!14607 Nil!65560 (Cons!65560 (h!72008 s!2326) Nil!65560)) (t!379336 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2604 (List!65684 C!33192 List!65684 List!65684) Unit!159179)

(assert (=> b!6597186 (= lt!2412383 (lemmaMoveElementToOtherListKeepsConcatEq!2604 Nil!65560 (h!72008 s!2326) (t!379336 s!2326) s!2326))))

(assert (=> b!6597186 (= e!3992040 (findConcatSeparation!2766 (regOne!33434 r!7292) (regTwo!33434 r!7292) (++!14607 Nil!65560 (Cons!65560 (h!72008 s!2326) Nil!65560)) (t!379336 s!2326) s!2326))))

(declare-fun b!6597187 () Bool)

(assert (=> b!6597187 (= e!3992041 (Some!16351 (tuple2!66881 Nil!65560 s!2326)))))

(declare-fun b!6597188 () Bool)

(declare-fun e!3992044 () Bool)

(assert (=> b!6597188 (= e!3992044 (not (isDefined!13055 lt!2412382)))))

(declare-fun b!6597189 () Bool)

(declare-fun e!3992042 () Bool)

(assert (=> b!6597189 (= e!3992042 (matchR!8644 (regTwo!33434 r!7292) s!2326))))

(declare-fun b!6597190 () Bool)

(assert (=> b!6597190 (= e!3992040 None!16351)))

(declare-fun b!6597191 () Bool)

(declare-fun res!2704999 () Bool)

(assert (=> b!6597191 (=> (not res!2704999) (not e!3992043))))

(assert (=> b!6597191 (= res!2704999 (matchR!8644 (regTwo!33434 r!7292) (_2!36743 (get!22773 lt!2412382))))))

(declare-fun b!6597185 () Bool)

(declare-fun res!2704997 () Bool)

(assert (=> b!6597185 (=> (not res!2704997) (not e!3992043))))

(assert (=> b!6597185 (= res!2704997 (matchR!8644 (regOne!33434 r!7292) (_1!36743 (get!22773 lt!2412382))))))

(declare-fun d!2069680 () Bool)

(assert (=> d!2069680 e!3992044))

(declare-fun res!2705001 () Bool)

(assert (=> d!2069680 (=> res!2705001 e!3992044)))

(assert (=> d!2069680 (= res!2705001 e!3992043)))

(declare-fun res!2705000 () Bool)

(assert (=> d!2069680 (=> (not res!2705000) (not e!3992043))))

(assert (=> d!2069680 (= res!2705000 (isDefined!13055 lt!2412382))))

(assert (=> d!2069680 (= lt!2412382 e!3992041)))

(declare-fun c!1215009 () Bool)

(assert (=> d!2069680 (= c!1215009 e!3992042)))

(declare-fun res!2704998 () Bool)

(assert (=> d!2069680 (=> (not res!2704998) (not e!3992042))))

(assert (=> d!2069680 (= res!2704998 (matchR!8644 (regOne!33434 r!7292) Nil!65560))))

(assert (=> d!2069680 (validRegex!8197 (regOne!33434 r!7292))))

(assert (=> d!2069680 (= (findConcatSeparation!2766 (regOne!33434 r!7292) (regTwo!33434 r!7292) Nil!65560 s!2326 s!2326) lt!2412382)))

(assert (= (and d!2069680 res!2704998) b!6597189))

(assert (= (and d!2069680 c!1215009) b!6597187))

(assert (= (and d!2069680 (not c!1215009)) b!6597183))

(assert (= (and b!6597183 c!1215010) b!6597190))

(assert (= (and b!6597183 (not c!1215010)) b!6597186))

(assert (= (and d!2069680 res!2705000) b!6597185))

(assert (= (and b!6597185 res!2704997) b!6597191))

(assert (= (and b!6597191 res!2704999) b!6597184))

(assert (= (and d!2069680 (not res!2705001)) b!6597188))

(declare-fun m!7374212 () Bool)

(assert (=> d!2069680 m!7374212))

(declare-fun m!7374214 () Bool)

(assert (=> d!2069680 m!7374214))

(assert (=> d!2069680 m!7374208))

(declare-fun m!7374216 () Bool)

(assert (=> b!6597186 m!7374216))

(assert (=> b!6597186 m!7374216))

(declare-fun m!7374218 () Bool)

(assert (=> b!6597186 m!7374218))

(declare-fun m!7374220 () Bool)

(assert (=> b!6597186 m!7374220))

(assert (=> b!6597186 m!7374216))

(declare-fun m!7374222 () Bool)

(assert (=> b!6597186 m!7374222))

(declare-fun m!7374224 () Bool)

(assert (=> b!6597191 m!7374224))

(declare-fun m!7374226 () Bool)

(assert (=> b!6597191 m!7374226))

(assert (=> b!6597185 m!7374224))

(declare-fun m!7374228 () Bool)

(assert (=> b!6597185 m!7374228))

(assert (=> b!6597189 m!7373414))

(assert (=> b!6597188 m!7374212))

(assert (=> b!6597184 m!7374224))

(declare-fun m!7374230 () Bool)

(assert (=> b!6597184 m!7374230))

(assert (=> b!6596186 d!2069680))

(declare-fun bs!1691830 () Bool)

(declare-fun d!2069682 () Bool)

(assert (= bs!1691830 (and d!2069682 b!6597140)))

(declare-fun lambda!367595 () Int)

(assert (=> bs!1691830 (not (= lambda!367595 lambda!367586))))

(declare-fun bs!1691831 () Bool)

(assert (= bs!1691831 (and d!2069682 b!6596186)))

(assert (=> bs!1691831 (= lambda!367595 lambda!367497)))

(declare-fun bs!1691832 () Bool)

(assert (= bs!1691832 (and d!2069682 b!6597129)))

(assert (=> bs!1691832 (not (= lambda!367595 lambda!367584))))

(declare-fun bs!1691833 () Bool)

(assert (= bs!1691833 (and d!2069682 d!2069676)))

(assert (=> bs!1691833 (= lambda!367595 lambda!367590)))

(assert (=> bs!1691831 (not (= lambda!367595 lambda!367498))))

(declare-fun bs!1691834 () Bool)

(assert (= bs!1691834 (and d!2069682 b!6597089)))

(assert (=> bs!1691834 (not (= lambda!367595 lambda!367583))))

(declare-fun bs!1691835 () Bool)

(assert (= bs!1691835 (and d!2069682 b!6597136)))

(assert (=> bs!1691835 (not (= lambda!367595 lambda!367587))))

(declare-fun bs!1691836 () Bool)

(assert (= bs!1691836 (and d!2069682 b!6597125)))

(assert (=> bs!1691836 (not (= lambda!367595 lambda!367585))))

(declare-fun bs!1691837 () Bool)

(assert (= bs!1691837 (and d!2069682 b!6597093)))

(assert (=> bs!1691837 (not (= lambda!367595 lambda!367582))))

(assert (=> d!2069682 true))

(assert (=> d!2069682 true))

(assert (=> d!2069682 true))

(declare-fun lambda!367596 () Int)

(assert (=> bs!1691830 (not (= lambda!367596 lambda!367586))))

(assert (=> bs!1691831 (not (= lambda!367596 lambda!367497))))

(assert (=> bs!1691832 (not (= lambda!367596 lambda!367584))))

(assert (=> bs!1691833 (not (= lambda!367596 lambda!367590))))

(assert (=> bs!1691831 (= lambda!367596 lambda!367498)))

(declare-fun bs!1691838 () Bool)

(assert (= bs!1691838 d!2069682))

(assert (=> bs!1691838 (not (= lambda!367596 lambda!367595))))

(assert (=> bs!1691834 (= (and (= s!2326 Nil!65560) (= (regOne!33434 r!7292) (regOne!33434 lt!2412199)) (= (regTwo!33434 r!7292) (regTwo!33434 lt!2412199))) (= lambda!367596 lambda!367583))))

(assert (=> bs!1691835 (= lambda!367596 lambda!367587)))

(assert (=> bs!1691836 (= (and (= (regOne!33434 r!7292) (regOne!33434 lt!2412236)) (= (regTwo!33434 r!7292) (regTwo!33434 lt!2412236))) (= lambda!367596 lambda!367585))))

(assert (=> bs!1691837 (not (= lambda!367596 lambda!367582))))

(assert (=> d!2069682 true))

(assert (=> d!2069682 true))

(assert (=> d!2069682 true))

(assert (=> d!2069682 (= (Exists!3531 lambda!367595) (Exists!3531 lambda!367596))))

(declare-fun lt!2412386 () Unit!159179)

(declare-fun choose!49224 (Regex!16461 Regex!16461 List!65684) Unit!159179)

(assert (=> d!2069682 (= lt!2412386 (choose!49224 (regOne!33434 r!7292) (regTwo!33434 r!7292) s!2326))))

(assert (=> d!2069682 (validRegex!8197 (regOne!33434 r!7292))))

(assert (=> d!2069682 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2068 (regOne!33434 r!7292) (regTwo!33434 r!7292) s!2326) lt!2412386)))

(declare-fun m!7374232 () Bool)

(assert (=> bs!1691838 m!7374232))

(declare-fun m!7374234 () Bool)

(assert (=> bs!1691838 m!7374234))

(declare-fun m!7374236 () Bool)

(assert (=> bs!1691838 m!7374236))

(assert (=> bs!1691838 m!7374208))

(assert (=> b!6596186 d!2069682))

(declare-fun d!2069684 () Bool)

(declare-fun isEmpty!37826 (Option!16352) Bool)

(assert (=> d!2069684 (= (isDefined!13055 (findConcatSeparation!2766 (regOne!33434 r!7292) (regTwo!33434 r!7292) Nil!65560 s!2326 s!2326)) (not (isEmpty!37826 (findConcatSeparation!2766 (regOne!33434 r!7292) (regTwo!33434 r!7292) Nil!65560 s!2326 s!2326))))))

(declare-fun bs!1691839 () Bool)

(assert (= bs!1691839 d!2069684))

(assert (=> bs!1691839 m!7373466))

(declare-fun m!7374238 () Bool)

(assert (=> bs!1691839 m!7374238))

(assert (=> b!6596186 d!2069684))

(declare-fun bs!1691840 () Bool)

(declare-fun d!2069686 () Bool)

(assert (= bs!1691840 (and d!2069686 b!6596190)))

(declare-fun lambda!367597 () Int)

(assert (=> bs!1691840 (= lambda!367597 lambda!367499)))

(declare-fun bs!1691841 () Bool)

(assert (= bs!1691841 (and d!2069686 d!2069482)))

(assert (=> bs!1691841 (= lambda!367597 lambda!367538)))

(assert (=> d!2069686 true))

(assert (=> d!2069686 (= (derivationStepZipper!2427 lt!2412209 (h!72008 s!2326)) (flatMap!1966 lt!2412209 lambda!367597))))

(declare-fun bs!1691842 () Bool)

(assert (= bs!1691842 d!2069686))

(declare-fun m!7374240 () Bool)

(assert (=> bs!1691842 m!7374240))

(assert (=> b!6596166 d!2069686))

(declare-fun d!2069688 () Bool)

(assert (=> d!2069688 (= (flatMap!1966 lt!2412209 lambda!367499) (choose!49211 lt!2412209 lambda!367499))))

(declare-fun bs!1691843 () Bool)

(assert (= bs!1691843 d!2069688))

(declare-fun m!7374242 () Bool)

(assert (=> bs!1691843 m!7374242))

(assert (=> b!6596166 d!2069688))

(declare-fun call!576841 () (InoxSet Context!11690))

(declare-fun b!6597200 () Bool)

(declare-fun e!3992050 () (InoxSet Context!11690))

(assert (=> b!6597200 (= e!3992050 ((_ map or) call!576841 (derivationStepZipperUp!1635 (Context!11691 (t!379334 (exprs!6345 lt!2412212))) (h!72008 s!2326))))))

(declare-fun b!6597201 () Bool)

(declare-fun e!3992051 () (InoxSet Context!11690))

(assert (=> b!6597201 (= e!3992050 e!3992051)))

(declare-fun c!1215012 () Bool)

(assert (=> b!6597201 (= c!1215012 ((_ is Cons!65558) (exprs!6345 lt!2412212)))))

(declare-fun b!6597202 () Bool)

(declare-fun e!3992049 () Bool)

(assert (=> b!6597202 (= e!3992049 (nullable!6454 (h!72006 (exprs!6345 lt!2412212))))))

(declare-fun b!6597203 () Bool)

(assert (=> b!6597203 (= e!3992051 call!576841)))

(declare-fun d!2069690 () Bool)

(declare-fun c!1215011 () Bool)

(assert (=> d!2069690 (= c!1215011 e!3992049)))

(declare-fun res!2705010 () Bool)

(assert (=> d!2069690 (=> (not res!2705010) (not e!3992049))))

(assert (=> d!2069690 (= res!2705010 ((_ is Cons!65558) (exprs!6345 lt!2412212)))))

(assert (=> d!2069690 (= (derivationStepZipperUp!1635 lt!2412212 (h!72008 s!2326)) e!3992050)))

(declare-fun b!6597204 () Bool)

(assert (=> b!6597204 (= e!3992051 ((as const (Array Context!11690 Bool)) false))))

(declare-fun bm!576836 () Bool)

(assert (=> bm!576836 (= call!576841 (derivationStepZipperDown!1709 (h!72006 (exprs!6345 lt!2412212)) (Context!11691 (t!379334 (exprs!6345 lt!2412212))) (h!72008 s!2326)))))

(assert (= (and d!2069690 res!2705010) b!6597202))

(assert (= (and d!2069690 c!1215011) b!6597200))

(assert (= (and d!2069690 (not c!1215011)) b!6597201))

(assert (= (and b!6597201 c!1215012) b!6597203))

(assert (= (and b!6597201 (not c!1215012)) b!6597204))

(assert (= (or b!6597200 b!6597203) bm!576836))

(declare-fun m!7374244 () Bool)

(assert (=> b!6597200 m!7374244))

(declare-fun m!7374246 () Bool)

(assert (=> b!6597202 m!7374246))

(declare-fun m!7374248 () Bool)

(assert (=> bm!576836 m!7374248))

(assert (=> b!6596166 d!2069690))

(declare-fun d!2069692 () Bool)

(assert (=> d!2069692 (= (flatMap!1966 lt!2412209 lambda!367499) (dynLambda!26107 lambda!367499 lt!2412212))))

(declare-fun lt!2412387 () Unit!159179)

(assert (=> d!2069692 (= lt!2412387 (choose!49212 lt!2412209 lt!2412212 lambda!367499))))

(assert (=> d!2069692 (= lt!2412209 (store ((as const (Array Context!11690 Bool)) false) lt!2412212 true))))

(assert (=> d!2069692 (= (lemmaFlatMapOnSingletonSet!1492 lt!2412209 lt!2412212 lambda!367499) lt!2412387)))

(declare-fun b_lambda!249723 () Bool)

(assert (=> (not b_lambda!249723) (not d!2069692)))

(declare-fun bs!1691844 () Bool)

(assert (= bs!1691844 d!2069692))

(assert (=> bs!1691844 m!7373502))

(declare-fun m!7374250 () Bool)

(assert (=> bs!1691844 m!7374250))

(declare-fun m!7374252 () Bool)

(assert (=> bs!1691844 m!7374252))

(assert (=> bs!1691844 m!7373508))

(assert (=> b!6596166 d!2069692))

(declare-fun d!2069694 () Bool)

(declare-fun c!1215013 () Bool)

(assert (=> d!2069694 (= c!1215013 (isEmpty!37824 s!2326))))

(declare-fun e!3992052 () Bool)

(assert (=> d!2069694 (= (matchZipper!2473 z!1189 s!2326) e!3992052)))

(declare-fun b!6597205 () Bool)

(assert (=> b!6597205 (= e!3992052 (nullableZipper!2206 z!1189))))

(declare-fun b!6597206 () Bool)

(assert (=> b!6597206 (= e!3992052 (matchZipper!2473 (derivationStepZipper!2427 z!1189 (head!13373 s!2326)) (tail!12458 s!2326)))))

(assert (= (and d!2069694 c!1215013) b!6597205))

(assert (= (and d!2069694 (not c!1215013)) b!6597206))

(assert (=> d!2069694 m!7374172))

(declare-fun m!7374254 () Bool)

(assert (=> b!6597205 m!7374254))

(assert (=> b!6597206 m!7374164))

(assert (=> b!6597206 m!7374164))

(declare-fun m!7374256 () Bool)

(assert (=> b!6597206 m!7374256))

(assert (=> b!6597206 m!7374168))

(assert (=> b!6597206 m!7374256))

(assert (=> b!6597206 m!7374168))

(declare-fun m!7374258 () Bool)

(assert (=> b!6597206 m!7374258))

(assert (=> b!6596188 d!2069694))

(declare-fun e!3992055 () Bool)

(declare-fun d!2069696 () Bool)

(assert (=> d!2069696 (= (matchZipper!2473 ((_ map or) lt!2412234 lt!2412224) (t!379336 s!2326)) e!3992055)))

(declare-fun res!2705013 () Bool)

(assert (=> d!2069696 (=> res!2705013 e!3992055)))

(assert (=> d!2069696 (= res!2705013 (matchZipper!2473 lt!2412234 (t!379336 s!2326)))))

(declare-fun lt!2412390 () Unit!159179)

(declare-fun choose!49225 ((InoxSet Context!11690) (InoxSet Context!11690) List!65684) Unit!159179)

(assert (=> d!2069696 (= lt!2412390 (choose!49225 lt!2412234 lt!2412224 (t!379336 s!2326)))))

(assert (=> d!2069696 (= (lemmaZipperConcatMatchesSameAsBothZippers!1292 lt!2412234 lt!2412224 (t!379336 s!2326)) lt!2412390)))

(declare-fun b!6597209 () Bool)

(assert (=> b!6597209 (= e!3992055 (matchZipper!2473 lt!2412224 (t!379336 s!2326)))))

(assert (= (and d!2069696 (not res!2705013)) b!6597209))

(assert (=> d!2069696 m!7373462))

(assert (=> d!2069696 m!7373460))

(declare-fun m!7374260 () Bool)

(assert (=> d!2069696 m!7374260))

(assert (=> b!6597209 m!7373406))

(assert (=> b!6596167 d!2069696))

(assert (=> b!6596167 d!2069548))

(declare-fun d!2069698 () Bool)

(declare-fun c!1215014 () Bool)

(assert (=> d!2069698 (= c!1215014 (isEmpty!37824 (t!379336 s!2326)))))

(declare-fun e!3992056 () Bool)

(assert (=> d!2069698 (= (matchZipper!2473 ((_ map or) lt!2412234 lt!2412224) (t!379336 s!2326)) e!3992056)))

(declare-fun b!6597210 () Bool)

(assert (=> b!6597210 (= e!3992056 (nullableZipper!2206 ((_ map or) lt!2412234 lt!2412224)))))

(declare-fun b!6597211 () Bool)

(assert (=> b!6597211 (= e!3992056 (matchZipper!2473 (derivationStepZipper!2427 ((_ map or) lt!2412234 lt!2412224) (head!13373 (t!379336 s!2326))) (tail!12458 (t!379336 s!2326))))))

(assert (= (and d!2069698 c!1215014) b!6597210))

(assert (= (and d!2069698 (not c!1215014)) b!6597211))

(assert (=> d!2069698 m!7373694))

(declare-fun m!7374262 () Bool)

(assert (=> b!6597210 m!7374262))

(assert (=> b!6597211 m!7373698))

(assert (=> b!6597211 m!7373698))

(declare-fun m!7374264 () Bool)

(assert (=> b!6597211 m!7374264))

(assert (=> b!6597211 m!7373702))

(assert (=> b!6597211 m!7374264))

(assert (=> b!6597211 m!7373702))

(declare-fun m!7374266 () Bool)

(assert (=> b!6597211 m!7374266))

(assert (=> b!6596167 d!2069698))

(declare-fun b!6597212 () Bool)

(declare-fun e!3992059 () Bool)

(assert (=> b!6597212 (= e!3992059 (= (head!13373 s!2326) (c!1214690 (regTwo!33434 r!7292))))))

(declare-fun b!6597213 () Bool)

(declare-fun res!2705015 () Bool)

(assert (=> b!6597213 (=> (not res!2705015) (not e!3992059))))

(assert (=> b!6597213 (= res!2705015 (isEmpty!37824 (tail!12458 s!2326)))))

(declare-fun b!6597214 () Bool)

(declare-fun e!3992061 () Bool)

(assert (=> b!6597214 (= e!3992061 (not (= (head!13373 s!2326) (c!1214690 (regTwo!33434 r!7292)))))))

(declare-fun b!6597215 () Bool)

(declare-fun res!2705014 () Bool)

(declare-fun e!3992058 () Bool)

(assert (=> b!6597215 (=> res!2705014 e!3992058)))

(assert (=> b!6597215 (= res!2705014 e!3992059)))

(declare-fun res!2705017 () Bool)

(assert (=> b!6597215 (=> (not res!2705017) (not e!3992059))))

(declare-fun lt!2412391 () Bool)

(assert (=> b!6597215 (= res!2705017 lt!2412391)))

(declare-fun d!2069700 () Bool)

(declare-fun e!3992063 () Bool)

(assert (=> d!2069700 e!3992063))

(declare-fun c!1215017 () Bool)

(assert (=> d!2069700 (= c!1215017 ((_ is EmptyExpr!16461) (regTwo!33434 r!7292)))))

(declare-fun e!3992062 () Bool)

(assert (=> d!2069700 (= lt!2412391 e!3992062)))

(declare-fun c!1215015 () Bool)

(assert (=> d!2069700 (= c!1215015 (isEmpty!37824 s!2326))))

(assert (=> d!2069700 (validRegex!8197 (regTwo!33434 r!7292))))

(assert (=> d!2069700 (= (matchR!8644 (regTwo!33434 r!7292) s!2326) lt!2412391)))

(declare-fun b!6597216 () Bool)

(declare-fun e!3992057 () Bool)

(assert (=> b!6597216 (= e!3992058 e!3992057)))

(declare-fun res!2705020 () Bool)

(assert (=> b!6597216 (=> (not res!2705020) (not e!3992057))))

(assert (=> b!6597216 (= res!2705020 (not lt!2412391))))

(declare-fun b!6597217 () Bool)

(declare-fun e!3992060 () Bool)

(assert (=> b!6597217 (= e!3992063 e!3992060)))

(declare-fun c!1215016 () Bool)

(assert (=> b!6597217 (= c!1215016 ((_ is EmptyLang!16461) (regTwo!33434 r!7292)))))

(declare-fun b!6597218 () Bool)

(assert (=> b!6597218 (= e!3992062 (nullable!6454 (regTwo!33434 r!7292)))))

(declare-fun b!6597219 () Bool)

(declare-fun res!2705016 () Bool)

(assert (=> b!6597219 (=> (not res!2705016) (not e!3992059))))

(declare-fun call!576842 () Bool)

(assert (=> b!6597219 (= res!2705016 (not call!576842))))

(declare-fun bm!576837 () Bool)

(assert (=> bm!576837 (= call!576842 (isEmpty!37824 s!2326))))

(declare-fun b!6597220 () Bool)

(assert (=> b!6597220 (= e!3992060 (not lt!2412391))))

(declare-fun b!6597221 () Bool)

(declare-fun res!2705019 () Bool)

(assert (=> b!6597221 (=> res!2705019 e!3992061)))

(assert (=> b!6597221 (= res!2705019 (not (isEmpty!37824 (tail!12458 s!2326))))))

(declare-fun b!6597222 () Bool)

(assert (=> b!6597222 (= e!3992063 (= lt!2412391 call!576842))))

(declare-fun b!6597223 () Bool)

(declare-fun res!2705018 () Bool)

(assert (=> b!6597223 (=> res!2705018 e!3992058)))

(assert (=> b!6597223 (= res!2705018 (not ((_ is ElementMatch!16461) (regTwo!33434 r!7292))))))

(assert (=> b!6597223 (= e!3992060 e!3992058)))

(declare-fun b!6597224 () Bool)

(assert (=> b!6597224 (= e!3992062 (matchR!8644 (derivativeStep!5145 (regTwo!33434 r!7292) (head!13373 s!2326)) (tail!12458 s!2326)))))

(declare-fun b!6597225 () Bool)

(assert (=> b!6597225 (= e!3992057 e!3992061)))

(declare-fun res!2705021 () Bool)

(assert (=> b!6597225 (=> res!2705021 e!3992061)))

(assert (=> b!6597225 (= res!2705021 call!576842)))

(assert (= (and d!2069700 c!1215015) b!6597218))

(assert (= (and d!2069700 (not c!1215015)) b!6597224))

(assert (= (and d!2069700 c!1215017) b!6597222))

(assert (= (and d!2069700 (not c!1215017)) b!6597217))

(assert (= (and b!6597217 c!1215016) b!6597220))

(assert (= (and b!6597217 (not c!1215016)) b!6597223))

(assert (= (and b!6597223 (not res!2705018)) b!6597215))

(assert (= (and b!6597215 res!2705017) b!6597219))

(assert (= (and b!6597219 res!2705016) b!6597213))

(assert (= (and b!6597213 res!2705015) b!6597212))

(assert (= (and b!6597215 (not res!2705014)) b!6597216))

(assert (= (and b!6597216 res!2705020) b!6597225))

(assert (= (and b!6597225 (not res!2705021)) b!6597221))

(assert (= (and b!6597221 (not res!2705019)) b!6597214))

(assert (= (or b!6597222 b!6597219 b!6597225) bm!576837))

(assert (=> b!6597224 m!7374164))

(assert (=> b!6597224 m!7374164))

(declare-fun m!7374268 () Bool)

(assert (=> b!6597224 m!7374268))

(assert (=> b!6597224 m!7374168))

(assert (=> b!6597224 m!7374268))

(assert (=> b!6597224 m!7374168))

(declare-fun m!7374270 () Bool)

(assert (=> b!6597224 m!7374270))

(assert (=> bm!576837 m!7374172))

(assert (=> b!6597214 m!7374164))

(assert (=> b!6597213 m!7374168))

(assert (=> b!6597213 m!7374168))

(assert (=> b!6597213 m!7374174))

(declare-fun m!7374272 () Bool)

(assert (=> b!6597218 m!7374272))

(assert (=> d!2069700 m!7374172))

(declare-fun m!7374274 () Bool)

(assert (=> d!2069700 m!7374274))

(assert (=> b!6597212 m!7374164))

(assert (=> b!6597221 m!7374168))

(assert (=> b!6597221 m!7374168))

(assert (=> b!6597221 m!7374174))

(assert (=> b!6596189 d!2069700))

(declare-fun b!6597226 () Bool)

(declare-fun e!3992066 () Bool)

(assert (=> b!6597226 (= e!3992066 (= (head!13373 s!2326) (c!1214690 lt!2412225)))))

(declare-fun b!6597227 () Bool)

(declare-fun res!2705023 () Bool)

(assert (=> b!6597227 (=> (not res!2705023) (not e!3992066))))

(assert (=> b!6597227 (= res!2705023 (isEmpty!37824 (tail!12458 s!2326)))))

(declare-fun b!6597228 () Bool)

(declare-fun e!3992068 () Bool)

(assert (=> b!6597228 (= e!3992068 (not (= (head!13373 s!2326) (c!1214690 lt!2412225))))))

(declare-fun b!6597229 () Bool)

(declare-fun res!2705022 () Bool)

(declare-fun e!3992065 () Bool)

(assert (=> b!6597229 (=> res!2705022 e!3992065)))

(assert (=> b!6597229 (= res!2705022 e!3992066)))

(declare-fun res!2705025 () Bool)

(assert (=> b!6597229 (=> (not res!2705025) (not e!3992066))))

(declare-fun lt!2412392 () Bool)

(assert (=> b!6597229 (= res!2705025 lt!2412392)))

(declare-fun d!2069702 () Bool)

(declare-fun e!3992070 () Bool)

(assert (=> d!2069702 e!3992070))

(declare-fun c!1215020 () Bool)

(assert (=> d!2069702 (= c!1215020 ((_ is EmptyExpr!16461) lt!2412225))))

(declare-fun e!3992069 () Bool)

(assert (=> d!2069702 (= lt!2412392 e!3992069)))

(declare-fun c!1215018 () Bool)

(assert (=> d!2069702 (= c!1215018 (isEmpty!37824 s!2326))))

(assert (=> d!2069702 (validRegex!8197 lt!2412225)))

(assert (=> d!2069702 (= (matchR!8644 lt!2412225 s!2326) lt!2412392)))

(declare-fun b!6597230 () Bool)

(declare-fun e!3992064 () Bool)

(assert (=> b!6597230 (= e!3992065 e!3992064)))

(declare-fun res!2705028 () Bool)

(assert (=> b!6597230 (=> (not res!2705028) (not e!3992064))))

(assert (=> b!6597230 (= res!2705028 (not lt!2412392))))

(declare-fun b!6597231 () Bool)

(declare-fun e!3992067 () Bool)

(assert (=> b!6597231 (= e!3992070 e!3992067)))

(declare-fun c!1215019 () Bool)

(assert (=> b!6597231 (= c!1215019 ((_ is EmptyLang!16461) lt!2412225))))

(declare-fun b!6597232 () Bool)

(assert (=> b!6597232 (= e!3992069 (nullable!6454 lt!2412225))))

(declare-fun b!6597233 () Bool)

(declare-fun res!2705024 () Bool)

(assert (=> b!6597233 (=> (not res!2705024) (not e!3992066))))

(declare-fun call!576843 () Bool)

(assert (=> b!6597233 (= res!2705024 (not call!576843))))

(declare-fun bm!576838 () Bool)

(assert (=> bm!576838 (= call!576843 (isEmpty!37824 s!2326))))

(declare-fun b!6597234 () Bool)

(assert (=> b!6597234 (= e!3992067 (not lt!2412392))))

(declare-fun b!6597235 () Bool)

(declare-fun res!2705027 () Bool)

(assert (=> b!6597235 (=> res!2705027 e!3992068)))

(assert (=> b!6597235 (= res!2705027 (not (isEmpty!37824 (tail!12458 s!2326))))))

(declare-fun b!6597236 () Bool)

(assert (=> b!6597236 (= e!3992070 (= lt!2412392 call!576843))))

(declare-fun b!6597237 () Bool)

(declare-fun res!2705026 () Bool)

(assert (=> b!6597237 (=> res!2705026 e!3992065)))

(assert (=> b!6597237 (= res!2705026 (not ((_ is ElementMatch!16461) lt!2412225)))))

(assert (=> b!6597237 (= e!3992067 e!3992065)))

(declare-fun b!6597238 () Bool)

(assert (=> b!6597238 (= e!3992069 (matchR!8644 (derivativeStep!5145 lt!2412225 (head!13373 s!2326)) (tail!12458 s!2326)))))

(declare-fun b!6597239 () Bool)

(assert (=> b!6597239 (= e!3992064 e!3992068)))

(declare-fun res!2705029 () Bool)

(assert (=> b!6597239 (=> res!2705029 e!3992068)))

(assert (=> b!6597239 (= res!2705029 call!576843)))

(assert (= (and d!2069702 c!1215018) b!6597232))

(assert (= (and d!2069702 (not c!1215018)) b!6597238))

(assert (= (and d!2069702 c!1215020) b!6597236))

(assert (= (and d!2069702 (not c!1215020)) b!6597231))

(assert (= (and b!6597231 c!1215019) b!6597234))

(assert (= (and b!6597231 (not c!1215019)) b!6597237))

(assert (= (and b!6597237 (not res!2705026)) b!6597229))

(assert (= (and b!6597229 res!2705025) b!6597233))

(assert (= (and b!6597233 res!2705024) b!6597227))

(assert (= (and b!6597227 res!2705023) b!6597226))

(assert (= (and b!6597229 (not res!2705022)) b!6597230))

(assert (= (and b!6597230 res!2705028) b!6597239))

(assert (= (and b!6597239 (not res!2705029)) b!6597235))

(assert (= (and b!6597235 (not res!2705027)) b!6597228))

(assert (= (or b!6597236 b!6597233 b!6597239) bm!576838))

(assert (=> b!6597238 m!7374164))

(assert (=> b!6597238 m!7374164))

(declare-fun m!7374276 () Bool)

(assert (=> b!6597238 m!7374276))

(assert (=> b!6597238 m!7374168))

(assert (=> b!6597238 m!7374276))

(assert (=> b!6597238 m!7374168))

(declare-fun m!7374278 () Bool)

(assert (=> b!6597238 m!7374278))

(assert (=> bm!576838 m!7374172))

(assert (=> b!6597228 m!7374164))

(assert (=> b!6597227 m!7374168))

(assert (=> b!6597227 m!7374168))

(assert (=> b!6597227 m!7374174))

(declare-fun m!7374280 () Bool)

(assert (=> b!6597232 m!7374280))

(assert (=> d!2069702 m!7374172))

(declare-fun m!7374282 () Bool)

(assert (=> d!2069702 m!7374282))

(assert (=> b!6597226 m!7374164))

(assert (=> b!6597235 m!7374168))

(assert (=> b!6597235 m!7374168))

(assert (=> b!6597235 m!7374174))

(assert (=> b!6596189 d!2069702))

(declare-fun d!2069704 () Bool)

(declare-fun c!1215021 () Bool)

(assert (=> d!2069704 (= c!1215021 (isEmpty!37824 s!2326))))

(declare-fun e!3992071 () Bool)

(assert (=> d!2069704 (= (matchZipper!2473 lt!2412209 s!2326) e!3992071)))

(declare-fun b!6597240 () Bool)

(assert (=> b!6597240 (= e!3992071 (nullableZipper!2206 lt!2412209))))

(declare-fun b!6597241 () Bool)

(assert (=> b!6597241 (= e!3992071 (matchZipper!2473 (derivationStepZipper!2427 lt!2412209 (head!13373 s!2326)) (tail!12458 s!2326)))))

(assert (= (and d!2069704 c!1215021) b!6597240))

(assert (= (and d!2069704 (not c!1215021)) b!6597241))

(assert (=> d!2069704 m!7374172))

(declare-fun m!7374284 () Bool)

(assert (=> b!6597240 m!7374284))

(assert (=> b!6597241 m!7374164))

(assert (=> b!6597241 m!7374164))

(declare-fun m!7374286 () Bool)

(assert (=> b!6597241 m!7374286))

(assert (=> b!6597241 m!7374168))

(assert (=> b!6597241 m!7374286))

(assert (=> b!6597241 m!7374168))

(declare-fun m!7374288 () Bool)

(assert (=> b!6597241 m!7374288))

(assert (=> b!6596189 d!2069704))

(declare-fun d!2069706 () Bool)

(assert (=> d!2069706 (= (matchR!8644 lt!2412225 s!2326) (matchZipper!2473 lt!2412209 s!2326))))

(declare-fun lt!2412395 () Unit!159179)

(declare-fun choose!49228 ((InoxSet Context!11690) List!65683 Regex!16461 List!65684) Unit!159179)

(assert (=> d!2069706 (= lt!2412395 (choose!49228 lt!2412209 lt!2412204 lt!2412225 s!2326))))

(assert (=> d!2069706 (validRegex!8197 lt!2412225)))

(assert (=> d!2069706 (= (theoremZipperRegexEquiv!883 lt!2412209 lt!2412204 lt!2412225 s!2326) lt!2412395)))

(declare-fun bs!1691845 () Bool)

(assert (= bs!1691845 d!2069706))

(assert (=> bs!1691845 m!7373416))

(assert (=> bs!1691845 m!7373418))

(declare-fun m!7374290 () Bool)

(assert (=> bs!1691845 m!7374290))

(assert (=> bs!1691845 m!7374282))

(assert (=> b!6596189 d!2069706))

(declare-fun d!2069708 () Bool)

(declare-fun c!1215022 () Bool)

(assert (=> d!2069708 (= c!1215022 (isEmpty!37824 s!2326))))

(declare-fun e!3992072 () Bool)

(assert (=> d!2069708 (= (matchZipper!2473 lt!2412221 s!2326) e!3992072)))

(declare-fun b!6597242 () Bool)

(assert (=> b!6597242 (= e!3992072 (nullableZipper!2206 lt!2412221))))

(declare-fun b!6597243 () Bool)

(assert (=> b!6597243 (= e!3992072 (matchZipper!2473 (derivationStepZipper!2427 lt!2412221 (head!13373 s!2326)) (tail!12458 s!2326)))))

(assert (= (and d!2069708 c!1215022) b!6597242))

(assert (= (and d!2069708 (not c!1215022)) b!6597243))

(assert (=> d!2069708 m!7374172))

(declare-fun m!7374292 () Bool)

(assert (=> b!6597242 m!7374292))

(assert (=> b!6597243 m!7374164))

(assert (=> b!6597243 m!7374164))

(declare-fun m!7374294 () Bool)

(assert (=> b!6597243 m!7374294))

(assert (=> b!6597243 m!7374168))

(assert (=> b!6597243 m!7374294))

(assert (=> b!6597243 m!7374168))

(declare-fun m!7374296 () Bool)

(assert (=> b!6597243 m!7374296))

(assert (=> b!6596168 d!2069708))

(declare-fun d!2069710 () Bool)

(declare-fun c!1215023 () Bool)

(assert (=> d!2069710 (= c!1215023 (isEmpty!37824 (t!379336 s!2326)))))

(declare-fun e!3992073 () Bool)

(assert (=> d!2069710 (= (matchZipper!2473 lt!2412235 (t!379336 s!2326)) e!3992073)))

(declare-fun b!6597244 () Bool)

(assert (=> b!6597244 (= e!3992073 (nullableZipper!2206 lt!2412235))))

(declare-fun b!6597245 () Bool)

(assert (=> b!6597245 (= e!3992073 (matchZipper!2473 (derivationStepZipper!2427 lt!2412235 (head!13373 (t!379336 s!2326))) (tail!12458 (t!379336 s!2326))))))

(assert (= (and d!2069710 c!1215023) b!6597244))

(assert (= (and d!2069710 (not c!1215023)) b!6597245))

(assert (=> d!2069710 m!7373694))

(declare-fun m!7374298 () Bool)

(assert (=> b!6597244 m!7374298))

(assert (=> b!6597245 m!7373698))

(assert (=> b!6597245 m!7373698))

(declare-fun m!7374300 () Bool)

(assert (=> b!6597245 m!7374300))

(assert (=> b!6597245 m!7373702))

(assert (=> b!6597245 m!7374300))

(assert (=> b!6597245 m!7373702))

(declare-fun m!7374302 () Bool)

(assert (=> b!6597245 m!7374302))

(assert (=> b!6596168 d!2069710))

(assert (=> b!6596190 d!2069690))

(declare-fun c!1215027 () Bool)

(declare-fun c!1215026 () Bool)

(declare-fun call!576846 () List!65682)

(declare-fun c!1215028 () Bool)

(declare-fun call!576845 () (InoxSet Context!11690))

(declare-fun bm!576839 () Bool)

(assert (=> bm!576839 (= call!576845 (derivationStepZipperDown!1709 (ite c!1215027 (regTwo!33435 (h!72006 (exprs!6345 (h!72007 zl!343)))) (ite c!1215028 (regTwo!33434 (h!72006 (exprs!6345 (h!72007 zl!343)))) (ite c!1215026 (regOne!33434 (h!72006 (exprs!6345 (h!72007 zl!343)))) (reg!16790 (h!72006 (exprs!6345 (h!72007 zl!343))))))) (ite (or c!1215027 c!1215028) lt!2412212 (Context!11691 call!576846)) (h!72008 s!2326)))))

(declare-fun b!6597246 () Bool)

(declare-fun e!3992078 () (InoxSet Context!11690))

(declare-fun call!576847 () (InoxSet Context!11690))

(assert (=> b!6597246 (= e!3992078 call!576847)))

(declare-fun bm!576840 () Bool)

(declare-fun call!576844 () (InoxSet Context!11690))

(assert (=> bm!576840 (= call!576844 call!576845)))

(declare-fun b!6597247 () Bool)

(declare-fun e!3992076 () (InoxSet Context!11690))

(declare-fun e!3992079 () (InoxSet Context!11690))

(assert (=> b!6597247 (= e!3992076 e!3992079)))

(assert (=> b!6597247 (= c!1215027 ((_ is Union!16461) (h!72006 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun call!576849 () List!65682)

(declare-fun bm!576841 () Bool)

(declare-fun call!576848 () (InoxSet Context!11690))

(assert (=> bm!576841 (= call!576848 (derivationStepZipperDown!1709 (ite c!1215027 (regOne!33435 (h!72006 (exprs!6345 (h!72007 zl!343)))) (regOne!33434 (h!72006 (exprs!6345 (h!72007 zl!343))))) (ite c!1215027 lt!2412212 (Context!11691 call!576849)) (h!72008 s!2326)))))

(declare-fun b!6597248 () Bool)

(declare-fun e!3992077 () (InoxSet Context!11690))

(assert (=> b!6597248 (= e!3992077 ((_ map or) call!576848 call!576844))))

(declare-fun d!2069712 () Bool)

(declare-fun c!1215025 () Bool)

(assert (=> d!2069712 (= c!1215025 (and ((_ is ElementMatch!16461) (h!72006 (exprs!6345 (h!72007 zl!343)))) (= (c!1214690 (h!72006 (exprs!6345 (h!72007 zl!343)))) (h!72008 s!2326))))))

(assert (=> d!2069712 (= (derivationStepZipperDown!1709 (h!72006 (exprs!6345 (h!72007 zl!343))) lt!2412212 (h!72008 s!2326)) e!3992076)))

(declare-fun b!6597249 () Bool)

(assert (=> b!6597249 (= e!3992078 ((as const (Array Context!11690 Bool)) false))))

(declare-fun b!6597250 () Bool)

(declare-fun e!3992074 () (InoxSet Context!11690))

(assert (=> b!6597250 (= e!3992074 call!576847)))

(declare-fun b!6597251 () Bool)

(declare-fun e!3992075 () Bool)

(assert (=> b!6597251 (= c!1215028 e!3992075)))

(declare-fun res!2705030 () Bool)

(assert (=> b!6597251 (=> (not res!2705030) (not e!3992075))))

(assert (=> b!6597251 (= res!2705030 ((_ is Concat!25306) (h!72006 (exprs!6345 (h!72007 zl!343)))))))

(assert (=> b!6597251 (= e!3992079 e!3992077)))

(declare-fun b!6597252 () Bool)

(assert (=> b!6597252 (= e!3992076 (store ((as const (Array Context!11690 Bool)) false) lt!2412212 true))))

(declare-fun b!6597253 () Bool)

(assert (=> b!6597253 (= e!3992075 (nullable!6454 (regOne!33434 (h!72006 (exprs!6345 (h!72007 zl!343))))))))

(declare-fun bm!576842 () Bool)

(assert (=> bm!576842 (= call!576846 call!576849)))

(declare-fun b!6597254 () Bool)

(declare-fun c!1215024 () Bool)

(assert (=> b!6597254 (= c!1215024 ((_ is Star!16461) (h!72006 (exprs!6345 (h!72007 zl!343)))))))

(assert (=> b!6597254 (= e!3992074 e!3992078)))

(declare-fun b!6597255 () Bool)

(assert (=> b!6597255 (= e!3992077 e!3992074)))

(assert (=> b!6597255 (= c!1215026 ((_ is Concat!25306) (h!72006 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun bm!576843 () Bool)

(assert (=> bm!576843 (= call!576849 ($colon$colon!2302 (exprs!6345 lt!2412212) (ite (or c!1215028 c!1215026) (regTwo!33434 (h!72006 (exprs!6345 (h!72007 zl!343)))) (h!72006 (exprs!6345 (h!72007 zl!343))))))))

(declare-fun bm!576844 () Bool)

(assert (=> bm!576844 (= call!576847 call!576844)))

(declare-fun b!6597256 () Bool)

(assert (=> b!6597256 (= e!3992079 ((_ map or) call!576848 call!576845))))

(assert (= (and d!2069712 c!1215025) b!6597252))

(assert (= (and d!2069712 (not c!1215025)) b!6597247))

(assert (= (and b!6597247 c!1215027) b!6597256))

(assert (= (and b!6597247 (not c!1215027)) b!6597251))

(assert (= (and b!6597251 res!2705030) b!6597253))

(assert (= (and b!6597251 c!1215028) b!6597248))

(assert (= (and b!6597251 (not c!1215028)) b!6597255))

(assert (= (and b!6597255 c!1215026) b!6597250))

(assert (= (and b!6597255 (not c!1215026)) b!6597254))

(assert (= (and b!6597254 c!1215024) b!6597246))

(assert (= (and b!6597254 (not c!1215024)) b!6597249))

(assert (= (or b!6597250 b!6597246) bm!576842))

(assert (= (or b!6597250 b!6597246) bm!576844))

(assert (= (or b!6597248 bm!576842) bm!576843))

(assert (= (or b!6597248 bm!576844) bm!576840))

(assert (= (or b!6597256 bm!576840) bm!576839))

(assert (= (or b!6597256 b!6597248) bm!576841))

(assert (=> b!6597252 m!7373508))

(declare-fun m!7374304 () Bool)

(assert (=> bm!576843 m!7374304))

(declare-fun m!7374306 () Bool)

(assert (=> bm!576839 m!7374306))

(declare-fun m!7374308 () Bool)

(assert (=> b!6597253 m!7374308))

(declare-fun m!7374310 () Bool)

(assert (=> bm!576841 m!7374310))

(assert (=> b!6596190 d!2069712))

(declare-fun d!2069714 () Bool)

(assert (=> d!2069714 (= (nullable!6454 (h!72006 (exprs!6345 (h!72007 zl!343)))) (nullableFct!2380 (h!72006 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun bs!1691846 () Bool)

(assert (= bs!1691846 d!2069714))

(declare-fun m!7374312 () Bool)

(assert (=> bs!1691846 m!7374312))

(assert (=> b!6596190 d!2069714))

(declare-fun b!6597257 () Bool)

(declare-fun call!576850 () (InoxSet Context!11690))

(declare-fun e!3992081 () (InoxSet Context!11690))

(assert (=> b!6597257 (= e!3992081 ((_ map or) call!576850 (derivationStepZipperUp!1635 (Context!11691 (t!379334 (exprs!6345 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343)))))))) (h!72008 s!2326))))))

(declare-fun b!6597258 () Bool)

(declare-fun e!3992082 () (InoxSet Context!11690))

(assert (=> b!6597258 (= e!3992081 e!3992082)))

(declare-fun c!1215030 () Bool)

(assert (=> b!6597258 (= c!1215030 ((_ is Cons!65558) (exprs!6345 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343))))))))))

(declare-fun b!6597259 () Bool)

(declare-fun e!3992080 () Bool)

(assert (=> b!6597259 (= e!3992080 (nullable!6454 (h!72006 (exprs!6345 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343)))))))))))

(declare-fun b!6597260 () Bool)

(assert (=> b!6597260 (= e!3992082 call!576850)))

(declare-fun d!2069716 () Bool)

(declare-fun c!1215029 () Bool)

(assert (=> d!2069716 (= c!1215029 e!3992080)))

(declare-fun res!2705031 () Bool)

(assert (=> d!2069716 (=> (not res!2705031) (not e!3992080))))

(assert (=> d!2069716 (= res!2705031 ((_ is Cons!65558) (exprs!6345 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343))))))))))

(assert (=> d!2069716 (= (derivationStepZipperUp!1635 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343))))) (h!72008 s!2326)) e!3992081)))

(declare-fun b!6597261 () Bool)

(assert (=> b!6597261 (= e!3992082 ((as const (Array Context!11690 Bool)) false))))

(declare-fun bm!576845 () Bool)

(assert (=> bm!576845 (= call!576850 (derivationStepZipperDown!1709 (h!72006 (exprs!6345 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343))))))) (Context!11691 (t!379334 (exprs!6345 (Context!11691 (Cons!65558 (h!72006 (exprs!6345 (h!72007 zl!343))) (t!379334 (exprs!6345 (h!72007 zl!343)))))))) (h!72008 s!2326)))))

(assert (= (and d!2069716 res!2705031) b!6597259))

(assert (= (and d!2069716 c!1215029) b!6597257))

(assert (= (and d!2069716 (not c!1215029)) b!6597258))

(assert (= (and b!6597258 c!1215030) b!6597260))

(assert (= (and b!6597258 (not c!1215030)) b!6597261))

(assert (= (or b!6597257 b!6597260) bm!576845))

(declare-fun m!7374314 () Bool)

(assert (=> b!6597257 m!7374314))

(declare-fun m!7374316 () Bool)

(assert (=> b!6597259 m!7374316))

(declare-fun m!7374318 () Bool)

(assert (=> bm!576845 m!7374318))

(assert (=> b!6596190 d!2069716))

(declare-fun d!2069718 () Bool)

(assert (=> d!2069718 (= (flatMap!1966 z!1189 lambda!367499) (dynLambda!26107 lambda!367499 (h!72007 zl!343)))))

(declare-fun lt!2412396 () Unit!159179)

(assert (=> d!2069718 (= lt!2412396 (choose!49212 z!1189 (h!72007 zl!343) lambda!367499))))

(assert (=> d!2069718 (= z!1189 (store ((as const (Array Context!11690 Bool)) false) (h!72007 zl!343) true))))

(assert (=> d!2069718 (= (lemmaFlatMapOnSingletonSet!1492 z!1189 (h!72007 zl!343) lambda!367499) lt!2412396)))

(declare-fun b_lambda!249725 () Bool)

(assert (=> (not b_lambda!249725) (not d!2069718)))

(declare-fun bs!1691847 () Bool)

(assert (= bs!1691847 d!2069718))

(assert (=> bs!1691847 m!7373514))

(declare-fun m!7374320 () Bool)

(assert (=> bs!1691847 m!7374320))

(declare-fun m!7374322 () Bool)

(assert (=> bs!1691847 m!7374322))

(declare-fun m!7374324 () Bool)

(assert (=> bs!1691847 m!7374324))

(assert (=> b!6596190 d!2069718))

(declare-fun call!576851 () (InoxSet Context!11690))

(declare-fun e!3992084 () (InoxSet Context!11690))

(declare-fun b!6597262 () Bool)

(assert (=> b!6597262 (= e!3992084 ((_ map or) call!576851 (derivationStepZipperUp!1635 (Context!11691 (t!379334 (exprs!6345 (h!72007 zl!343)))) (h!72008 s!2326))))))

(declare-fun b!6597263 () Bool)

(declare-fun e!3992085 () (InoxSet Context!11690))

(assert (=> b!6597263 (= e!3992084 e!3992085)))

(declare-fun c!1215032 () Bool)

(assert (=> b!6597263 (= c!1215032 ((_ is Cons!65558) (exprs!6345 (h!72007 zl!343))))))

(declare-fun b!6597264 () Bool)

(declare-fun e!3992083 () Bool)

(assert (=> b!6597264 (= e!3992083 (nullable!6454 (h!72006 (exprs!6345 (h!72007 zl!343)))))))

(declare-fun b!6597265 () Bool)

(assert (=> b!6597265 (= e!3992085 call!576851)))

(declare-fun d!2069720 () Bool)

(declare-fun c!1215031 () Bool)

(assert (=> d!2069720 (= c!1215031 e!3992083)))

(declare-fun res!2705032 () Bool)

(assert (=> d!2069720 (=> (not res!2705032) (not e!3992083))))

(assert (=> d!2069720 (= res!2705032 ((_ is Cons!65558) (exprs!6345 (h!72007 zl!343))))))

(assert (=> d!2069720 (= (derivationStepZipperUp!1635 (h!72007 zl!343) (h!72008 s!2326)) e!3992084)))

(declare-fun b!6597266 () Bool)

(assert (=> b!6597266 (= e!3992085 ((as const (Array Context!11690 Bool)) false))))

(declare-fun bm!576846 () Bool)

(assert (=> bm!576846 (= call!576851 (derivationStepZipperDown!1709 (h!72006 (exprs!6345 (h!72007 zl!343))) (Context!11691 (t!379334 (exprs!6345 (h!72007 zl!343)))) (h!72008 s!2326)))))

(assert (= (and d!2069720 res!2705032) b!6597264))

(assert (= (and d!2069720 c!1215031) b!6597262))

(assert (= (and d!2069720 (not c!1215031)) b!6597263))

(assert (= (and b!6597263 c!1215032) b!6597265))

(assert (= (and b!6597263 (not c!1215032)) b!6597266))

(assert (= (or b!6597262 b!6597265) bm!576846))

(declare-fun m!7374326 () Bool)

(assert (=> b!6597262 m!7374326))

(assert (=> b!6597264 m!7373522))

(declare-fun m!7374328 () Bool)

(assert (=> bm!576846 m!7374328))

(assert (=> b!6596190 d!2069720))

(declare-fun d!2069722 () Bool)

(assert (=> d!2069722 (= (flatMap!1966 z!1189 lambda!367499) (choose!49211 z!1189 lambda!367499))))

(declare-fun bs!1691848 () Bool)

(assert (= bs!1691848 d!2069722))

(declare-fun m!7374330 () Bool)

(assert (=> bs!1691848 m!7374330))

(assert (=> b!6596190 d!2069722))

(declare-fun b!6597274 () Bool)

(declare-fun e!3992091 () Bool)

(declare-fun tp!1819318 () Bool)

(assert (=> b!6597274 (= e!3992091 tp!1819318)))

(declare-fun tp!1819319 () Bool)

(declare-fun b!6597273 () Bool)

(declare-fun e!3992090 () Bool)

(assert (=> b!6597273 (= e!3992090 (and (inv!84399 (h!72007 (t!379335 zl!343))) e!3992091 tp!1819319))))

(assert (=> b!6596169 (= tp!1819254 e!3992090)))

(assert (= b!6597273 b!6597274))

(assert (= (and b!6596169 ((_ is Cons!65559) (t!379335 zl!343))) b!6597273))

(declare-fun m!7374332 () Bool)

(assert (=> b!6597273 m!7374332))

(declare-fun b!6597279 () Bool)

(declare-fun e!3992094 () Bool)

(declare-fun tp!1819324 () Bool)

(declare-fun tp!1819325 () Bool)

(assert (=> b!6597279 (= e!3992094 (and tp!1819324 tp!1819325))))

(assert (=> b!6596160 (= tp!1819247 e!3992094)))

(assert (= (and b!6596160 ((_ is Cons!65558) (exprs!6345 setElem!45036))) b!6597279))

(declare-fun e!3992097 () Bool)

(assert (=> b!6596151 (= tp!1819255 e!3992097)))

(declare-fun b!6597291 () Bool)

(declare-fun tp!1819336 () Bool)

(declare-fun tp!1819339 () Bool)

(assert (=> b!6597291 (= e!3992097 (and tp!1819336 tp!1819339))))

(declare-fun b!6597293 () Bool)

(declare-fun tp!1819337 () Bool)

(declare-fun tp!1819338 () Bool)

(assert (=> b!6597293 (= e!3992097 (and tp!1819337 tp!1819338))))

(declare-fun b!6597292 () Bool)

(declare-fun tp!1819340 () Bool)

(assert (=> b!6597292 (= e!3992097 tp!1819340)))

(declare-fun b!6597290 () Bool)

(assert (=> b!6597290 (= e!3992097 tp_is_empty!42175)))

(assert (= (and b!6596151 ((_ is ElementMatch!16461) (reg!16790 r!7292))) b!6597290))

(assert (= (and b!6596151 ((_ is Concat!25306) (reg!16790 r!7292))) b!6597291))

(assert (= (and b!6596151 ((_ is Star!16461) (reg!16790 r!7292))) b!6597292))

(assert (= (and b!6596151 ((_ is Union!16461) (reg!16790 r!7292))) b!6597293))

(declare-fun e!3992098 () Bool)

(assert (=> b!6596165 (= tp!1819248 e!3992098)))

(declare-fun b!6597295 () Bool)

(declare-fun tp!1819341 () Bool)

(declare-fun tp!1819344 () Bool)

(assert (=> b!6597295 (= e!3992098 (and tp!1819341 tp!1819344))))

(declare-fun b!6597297 () Bool)

(declare-fun tp!1819342 () Bool)

(declare-fun tp!1819343 () Bool)

(assert (=> b!6597297 (= e!3992098 (and tp!1819342 tp!1819343))))

(declare-fun b!6597296 () Bool)

(declare-fun tp!1819345 () Bool)

(assert (=> b!6597296 (= e!3992098 tp!1819345)))

(declare-fun b!6597294 () Bool)

(assert (=> b!6597294 (= e!3992098 tp_is_empty!42175)))

(assert (= (and b!6596165 ((_ is ElementMatch!16461) (regOne!33435 r!7292))) b!6597294))

(assert (= (and b!6596165 ((_ is Concat!25306) (regOne!33435 r!7292))) b!6597295))

(assert (= (and b!6596165 ((_ is Star!16461) (regOne!33435 r!7292))) b!6597296))

(assert (= (and b!6596165 ((_ is Union!16461) (regOne!33435 r!7292))) b!6597297))

(declare-fun e!3992099 () Bool)

(assert (=> b!6596165 (= tp!1819252 e!3992099)))

(declare-fun b!6597299 () Bool)

(declare-fun tp!1819346 () Bool)

(declare-fun tp!1819349 () Bool)

(assert (=> b!6597299 (= e!3992099 (and tp!1819346 tp!1819349))))

(declare-fun b!6597301 () Bool)

(declare-fun tp!1819347 () Bool)

(declare-fun tp!1819348 () Bool)

(assert (=> b!6597301 (= e!3992099 (and tp!1819347 tp!1819348))))

(declare-fun b!6597300 () Bool)

(declare-fun tp!1819350 () Bool)

(assert (=> b!6597300 (= e!3992099 tp!1819350)))

(declare-fun b!6597298 () Bool)

(assert (=> b!6597298 (= e!3992099 tp_is_empty!42175)))

(assert (= (and b!6596165 ((_ is ElementMatch!16461) (regTwo!33435 r!7292))) b!6597298))

(assert (= (and b!6596165 ((_ is Concat!25306) (regTwo!33435 r!7292))) b!6597299))

(assert (= (and b!6596165 ((_ is Star!16461) (regTwo!33435 r!7292))) b!6597300))

(assert (= (and b!6596165 ((_ is Union!16461) (regTwo!33435 r!7292))) b!6597301))

(declare-fun b!6597306 () Bool)

(declare-fun e!3992102 () Bool)

(declare-fun tp!1819353 () Bool)

(assert (=> b!6597306 (= e!3992102 (and tp_is_empty!42175 tp!1819353))))

(assert (=> b!6596192 (= tp!1819246 e!3992102)))

(assert (= (and b!6596192 ((_ is Cons!65560) (t!379336 s!2326))) b!6597306))

(declare-fun condSetEmpty!45042 () Bool)

(assert (=> setNonEmpty!45036 (= condSetEmpty!45042 (= setRest!45036 ((as const (Array Context!11690 Bool)) false)))))

(declare-fun setRes!45042 () Bool)

(assert (=> setNonEmpty!45036 (= tp!1819251 setRes!45042)))

(declare-fun setIsEmpty!45042 () Bool)

(assert (=> setIsEmpty!45042 setRes!45042))

(declare-fun tp!1819359 () Bool)

(declare-fun setElem!45042 () Context!11690)

(declare-fun e!3992105 () Bool)

(declare-fun setNonEmpty!45042 () Bool)

(assert (=> setNonEmpty!45042 (= setRes!45042 (and tp!1819359 (inv!84399 setElem!45042) e!3992105))))

(declare-fun setRest!45042 () (InoxSet Context!11690))

(assert (=> setNonEmpty!45042 (= setRest!45036 ((_ map or) (store ((as const (Array Context!11690 Bool)) false) setElem!45042 true) setRest!45042))))

(declare-fun b!6597311 () Bool)

(declare-fun tp!1819358 () Bool)

(assert (=> b!6597311 (= e!3992105 tp!1819358)))

(assert (= (and setNonEmpty!45036 condSetEmpty!45042) setIsEmpty!45042))

(assert (= (and setNonEmpty!45036 (not condSetEmpty!45042)) setNonEmpty!45042))

(assert (= setNonEmpty!45042 b!6597311))

(declare-fun m!7374334 () Bool)

(assert (=> setNonEmpty!45042 m!7374334))

(declare-fun b!6597312 () Bool)

(declare-fun e!3992106 () Bool)

(declare-fun tp!1819360 () Bool)

(declare-fun tp!1819361 () Bool)

(assert (=> b!6597312 (= e!3992106 (and tp!1819360 tp!1819361))))

(assert (=> b!6596178 (= tp!1819250 e!3992106)))

(assert (= (and b!6596178 ((_ is Cons!65558) (exprs!6345 (h!72007 zl!343)))) b!6597312))

(declare-fun e!3992107 () Bool)

(assert (=> b!6596184 (= tp!1819253 e!3992107)))

(declare-fun b!6597314 () Bool)

(declare-fun tp!1819362 () Bool)

(declare-fun tp!1819365 () Bool)

(assert (=> b!6597314 (= e!3992107 (and tp!1819362 tp!1819365))))

(declare-fun b!6597316 () Bool)

(declare-fun tp!1819363 () Bool)

(declare-fun tp!1819364 () Bool)

(assert (=> b!6597316 (= e!3992107 (and tp!1819363 tp!1819364))))

(declare-fun b!6597315 () Bool)

(declare-fun tp!1819366 () Bool)

(assert (=> b!6597315 (= e!3992107 tp!1819366)))

(declare-fun b!6597313 () Bool)

(assert (=> b!6597313 (= e!3992107 tp_is_empty!42175)))

(assert (= (and b!6596184 ((_ is ElementMatch!16461) (regOne!33434 r!7292))) b!6597313))

(assert (= (and b!6596184 ((_ is Concat!25306) (regOne!33434 r!7292))) b!6597314))

(assert (= (and b!6596184 ((_ is Star!16461) (regOne!33434 r!7292))) b!6597315))

(assert (= (and b!6596184 ((_ is Union!16461) (regOne!33434 r!7292))) b!6597316))

(declare-fun e!3992108 () Bool)

(assert (=> b!6596184 (= tp!1819249 e!3992108)))

(declare-fun b!6597318 () Bool)

(declare-fun tp!1819367 () Bool)

(declare-fun tp!1819370 () Bool)

(assert (=> b!6597318 (= e!3992108 (and tp!1819367 tp!1819370))))

(declare-fun b!6597320 () Bool)

(declare-fun tp!1819368 () Bool)

(declare-fun tp!1819369 () Bool)

(assert (=> b!6597320 (= e!3992108 (and tp!1819368 tp!1819369))))

(declare-fun b!6597319 () Bool)

(declare-fun tp!1819371 () Bool)

(assert (=> b!6597319 (= e!3992108 tp!1819371)))

(declare-fun b!6597317 () Bool)

(assert (=> b!6597317 (= e!3992108 tp_is_empty!42175)))

(assert (= (and b!6596184 ((_ is ElementMatch!16461) (regTwo!33434 r!7292))) b!6597317))

(assert (= (and b!6596184 ((_ is Concat!25306) (regTwo!33434 r!7292))) b!6597318))

(assert (= (and b!6596184 ((_ is Star!16461) (regTwo!33434 r!7292))) b!6597319))

(assert (= (and b!6596184 ((_ is Union!16461) (regTwo!33434 r!7292))) b!6597320))

(declare-fun b_lambda!249727 () Bool)

(assert (= b_lambda!249725 (or b!6596190 b_lambda!249727)))

(declare-fun bs!1691849 () Bool)

(declare-fun d!2069724 () Bool)

(assert (= bs!1691849 (and d!2069724 b!6596190)))

(assert (=> bs!1691849 (= (dynLambda!26107 lambda!367499 (h!72007 zl!343)) (derivationStepZipperUp!1635 (h!72007 zl!343) (h!72008 s!2326)))))

(assert (=> bs!1691849 m!7373516))

(assert (=> d!2069718 d!2069724))

(declare-fun b_lambda!249729 () Bool)

(assert (= b_lambda!249697 (or b!6596190 b_lambda!249729)))

(declare-fun bs!1691850 () Bool)

(declare-fun d!2069726 () Bool)

(assert (= bs!1691850 (and d!2069726 b!6596190)))

(assert (=> bs!1691850 (= (dynLambda!26107 lambda!367499 lt!2412226) (derivationStepZipperUp!1635 lt!2412226 (h!72008 s!2326)))))

(assert (=> bs!1691850 m!7373492))

(assert (=> d!2069476 d!2069726))

(declare-fun b_lambda!249731 () Bool)

(assert (= b_lambda!249701 (or b!6596190 b_lambda!249731)))

(declare-fun bs!1691851 () Bool)

(declare-fun d!2069728 () Bool)

(assert (= bs!1691851 (and d!2069728 b!6596190)))

(assert (=> bs!1691851 (= (dynLambda!26107 lambda!367499 lt!2412218) (derivationStepZipperUp!1635 lt!2412218 (h!72008 s!2326)))))

(assert (=> bs!1691851 m!7373456))

(assert (=> d!2069528 d!2069728))

(declare-fun b_lambda!249733 () Bool)

(assert (= b_lambda!249723 (or b!6596190 b_lambda!249733)))

(declare-fun bs!1691852 () Bool)

(declare-fun d!2069730 () Bool)

(assert (= bs!1691852 (and d!2069730 b!6596190)))

(assert (=> bs!1691852 (= (dynLambda!26107 lambda!367499 lt!2412212) (derivationStepZipperUp!1635 lt!2412212 (h!72008 s!2326)))))

(assert (=> bs!1691852 m!7373510))

(assert (=> d!2069692 d!2069730))

(declare-fun b_lambda!249735 () Bool)

(assert (= b_lambda!249703 (or b!6596190 b_lambda!249735)))

(declare-fun bs!1691853 () Bool)

(declare-fun d!2069732 () Bool)

(assert (= bs!1691853 (and d!2069732 b!6596190)))

(assert (=> bs!1691853 (= (dynLambda!26107 lambda!367499 lt!2412200) (derivationStepZipperUp!1635 lt!2412200 (h!72008 s!2326)))))

(assert (=> bs!1691853 m!7373442))

(assert (=> d!2069540 d!2069732))

(check-sat (not b!6596772) (not b!6597214) (not b!6597245) (not b!6597316) (not d!2069688) (not bm!576836) (not d!2069694) (not bm!576757) (not b!6597205) (not bm!576829) (not d!2069536) (not b!6597159) (not d!2069550) (not b!6597318) (not bm!576755) (not d!2069668) (not d!2069658) (not d!2069700) (not b!6597189) (not bm!576729) (not d!2069508) (not d!2069576) (not b!6597295) (not b!6596969) (not d!2069498) (not b!6596584) (not d!2069706) (not d!2069714) (not b!6597241) (not d!2069516) (not b!6597146) (not bs!1691852) (not bm!576726) (not b!6597153) (not b!6597117) (not b!6597312) (not d!2069684) (not d!2069476) (not b!6596428) (not d!2069674) (not b!6596372) (not bm!576839) (not b!6596367) (not b!6597279) (not bm!576830) (not bm!576812) tp_is_empty!42175 (not b!6596365) (not b_lambda!249735) (not b!6596517) (not b!6596769) (not d!2069548) (not b!6597292) (not b!6597191) (not b!6597274) (not bm!576837) (not b!6597301) (not b!6597149) (not d!2069528) (not b!6596878) (not b!6597244) (not d!2069722) (not b!6596884) (not b!6597099) (not b!6596474) (not bm!576801) (not b!6596768) (not d!2069616) (not b!6596883) (not b!6597131) (not b!6597314) (not b!6596426) (not bm!576846) (not b!6596857) (not b!6597123) (not b!6597202) (not b!6597291) (not b!6597262) (not d!2069686) (not setNonEmpty!45042) (not b!6597296) (not b!6597142) (not b!6597212) (not b!6596589) (not bm!576819) (not b!6597135) (not b!6596518) (not b!6596595) (not b!6597221) (not b!6597211) (not b!6597210) (not d!2069546) (not b_lambda!249731) (not b!6596880) (not b!6597224) (not bs!1691849) (not bm!576728) (not d!2069518) (not b!6597319) (not d!2069704) (not d!2069696) (not b!6597228) (not bm!576725) (not b!6597147) (not d!2069538) (not b!6597300) (not d!2069530) (not b!6597186) (not b!6597148) (not bm!576756) (not b!6597253) (not b!6597095) (not b!6596591) (not bm!576834) (not d!2069708) (not d!2069472) (not d!2069664) (not b!6596973) (not d!2069670) (not b!6596967) (not d!2069702) (not b!6597320) (not d!2069460) (not b!6597111) (not bm!576841) (not bm!576845) (not d!2069540) (not b!6597297) (not b_lambda!249733) (not b!6596767) (not d!2069682) (not b!6597113) (not b!6596525) (not b!6597185) (not b!6597311) (not bm!576750) (not b!6597156) (not bm!576843) (not b!6596548) (not b!6597213) (not bm!576799) (not b!6596519) (not d!2069488) (not d!2069678) (not b!6596887) (not bm!576748) (not b!6597293) (not bm!576828) (not bs!1691850) (not bm!576749) (not b!6597209) (not b!6597240) (not b!6597232) (not bm!576753) (not b!6596526) (not b!6596773) (not bm!576832) (not bs!1691853) (not b!6597259) (not b!6597315) (not b!6596879) (not b!6597273) (not bm!576754) (not b_lambda!249729) (not b!6597299) (not d!2069692) (not b!6596594) (not b!6596540) (not b!6596586) (not d!2069608) (not b!6596370) (not bm!576747) (not d!2069524) (not bm!576831) (not b!6597264) (not b!6596524) (not b!6597188) (not d!2069698) (not d!2069676) (not b!6596968) (not b!6597200) (not bm!576835) (not b!6596582) (not b!6597184) (not b!6597120) (not d!2069718) (not b!6597218) (not b!6597206) (not b!6597306) (not bm!576833) (not d!2069660) (not bm!576707) (not d!2069710) (not b!6597243) (not b!6597226) (not b!6596979) (not b!6597242) (not bm!576813) (not b!6596473) (not b!6596776) (not bm!576838) (not bm!576803) (not b!6597238) (not d!2069680) (not b!6596882) (not b!6596521) (not b!6597235) (not b!6597112) (not b!6596771) (not bs!1691851) (not d!2069482) (not b_lambda!249727) (not d!2069526) (not b!6596905) (not bm!576760) (not b!6596976) (not b!6597257) (not b!6597227))
(check-sat)
